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

// SystemVerilog created from conv2d3x3_i_sfc_logic_s_c0_in_for_body220000ter670157_conv2d3x30
// SystemVerilog created on Tue May 30 12:33:16 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2d3x3_i_sfc_logic_s_c0_in_for_body220000ter670157_conv2d3x30 (
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going60_conv2d3x38_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going60_conv2d3x38_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [63:0] in_input_im,
    input wire [31:0] in_input_size,
    output wire [0:0] out_c0_exi52_0_tpl,
    output wire [0:0] out_c0_exi52_1_tpl,
    output wire [31:0] out_c0_exi52_2_tpl,
    output wire [31:0] out_c0_exi52_3_tpl,
    output wire [31:0] out_c0_exi52_4_tpl,
    output wire [31:0] out_c0_exi52_5_tpl,
    output wire [31:0] out_c0_exi52_6_tpl,
    output wire [63:0] out_c0_exi52_7_tpl,
    output wire [0:0] out_c0_exi52_8_tpl,
    output wire [0:0] out_c0_exi52_9_tpl,
    output wire [0:0] out_c0_exi52_10_tpl,
    output wire [0:0] out_c0_exi52_11_tpl,
    output wire [0:0] out_c0_exi52_12_tpl,
    output wire [63:0] out_c0_exi52_13_tpl,
    output wire [63:0] out_c0_exi52_14_tpl,
    output wire [0:0] out_c0_exi52_15_tpl,
    output wire [63:0] out_c0_exi52_16_tpl,
    output wire [31:0] out_c0_exi52_17_tpl,
    output wire [0:0] out_c0_exi52_18_tpl,
    output wire [31:0] out_c0_exi52_19_tpl,
    output wire [31:0] out_c0_exi52_20_tpl,
    output wire [31:0] out_c0_exi52_21_tpl,
    output wire [0:0] out_c0_exi52_22_tpl,
    output wire [0:0] out_c0_exi52_23_tpl,
    output wire [31:0] out_c0_exi52_24_tpl,
    output wire [0:0] out_c0_exi52_25_tpl,
    output wire [0:0] out_c0_exi52_26_tpl,
    output wire [0:0] out_c0_exi52_27_tpl,
    output wire [0:0] out_c0_exi52_28_tpl,
    output wire [31:0] out_c0_exi52_29_tpl,
    output wire [31:0] out_c0_exi52_30_tpl,
    output wire [0:0] out_c0_exi52_31_tpl,
    output wire [0:0] out_c0_exi52_32_tpl,
    output wire [63:0] out_c0_exi52_33_tpl,
    output wire [63:0] out_c0_exi52_34_tpl,
    output wire [31:0] out_c0_exi52_35_tpl,
    output wire [0:0] out_c0_exi52_36_tpl,
    output wire [31:0] out_c0_exi52_37_tpl,
    output wire [31:0] out_c0_exi52_38_tpl,
    output wire [0:0] out_c0_exi52_39_tpl,
    output wire [0:0] out_c0_exi52_40_tpl,
    output wire [31:0] out_c0_exi52_41_tpl,
    output wire [0:0] out_c0_exi52_42_tpl,
    output wire [0:0] out_c0_exi52_43_tpl,
    output wire [31:0] out_c0_exi52_44_tpl,
    output wire [0:0] out_c0_exi52_45_tpl,
    output wire [0:0] out_c0_exi52_46_tpl,
    output wire [0:0] out_c0_exi52_47_tpl,
    output wire [63:0] out_c0_exi52_48_tpl,
    output wire [63:0] out_c0_exi52_49_tpl,
    output wire [31:0] out_c0_exi52_50_tpl,
    output wire [0:0] out_c0_exi52_51_tpl,
    output wire [31:0] out_c0_exi52_52_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_conv2d3x311,
    input wire [0:0] in_c0_eni46_0_tpl,
    input wire [0:0] in_c0_eni46_1_tpl,
    input wire [31:0] in_c0_eni46_2_tpl,
    input wire [31:0] in_c0_eni46_3_tpl,
    input wire [31:0] in_c0_eni46_4_tpl,
    input wire [31:0] in_c0_eni46_5_tpl,
    input wire [31:0] in_c0_eni46_6_tpl,
    input wire [0:0] in_c0_eni46_7_tpl,
    input wire [0:0] in_c0_eni46_8_tpl,
    input wire [0:0] in_c0_eni46_9_tpl,
    input wire [63:0] in_c0_eni46_10_tpl,
    input wire [63:0] in_c0_eni46_11_tpl,
    input wire [31:0] in_c0_eni46_12_tpl,
    input wire [0:0] in_c0_eni46_13_tpl,
    input wire [31:0] in_c0_eni46_14_tpl,
    input wire [31:0] in_c0_eni46_15_tpl,
    input wire [31:0] in_c0_eni46_16_tpl,
    input wire [0:0] in_c0_eni46_17_tpl,
    input wire [0:0] in_c0_eni46_18_tpl,
    input wire [31:0] in_c0_eni46_19_tpl,
    input wire [0:0] in_c0_eni46_20_tpl,
    input wire [0:0] in_c0_eni46_21_tpl,
    input wire [0:0] in_c0_eni46_22_tpl,
    input wire [0:0] in_c0_eni46_23_tpl,
    input wire [31:0] in_c0_eni46_24_tpl,
    input wire [31:0] in_c0_eni46_25_tpl,
    input wire [0:0] in_c0_eni46_26_tpl,
    input wire [63:0] in_c0_eni46_27_tpl,
    input wire [63:0] in_c0_eni46_28_tpl,
    input wire [31:0] in_c0_eni46_29_tpl,
    input wire [0:0] in_c0_eni46_30_tpl,
    input wire [31:0] in_c0_eni46_31_tpl,
    input wire [31:0] in_c0_eni46_32_tpl,
    input wire [0:0] in_c0_eni46_33_tpl,
    input wire [0:0] in_c0_eni46_34_tpl,
    input wire [31:0] in_c0_eni46_35_tpl,
    input wire [0:0] in_c0_eni46_36_tpl,
    input wire [0:0] in_c0_eni46_37_tpl,
    input wire [31:0] in_c0_eni46_38_tpl,
    input wire [0:0] in_c0_eni46_39_tpl,
    input wire [0:0] in_c0_eni46_40_tpl,
    input wire [0:0] in_c0_eni46_41_tpl,
    input wire [63:0] in_c0_eni46_42_tpl,
    input wire [63:0] in_c0_eni46_43_tpl,
    input wire [31:0] in_c0_eni46_44_tpl,
    input wire [0:0] in_c0_eni46_45_tpl,
    input wire [31:0] in_c0_eni46_46_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [1:0] c_i2_1168_q;
    wire [31:0] c_i32_0171_q;
    wire [31:0] c_i32_1173_q;
    wire [2:0] c_i3_1174_q;
    wire [2:0] c_i3_1176_q;
    wire [32:0] i_add24_conv2d3x327_a;
    wire [32:0] i_add24_conv2d3x327_b;
    logic [32:0] i_add24_conv2d3x327_o;
    wire [32:0] i_add24_conv2d3x327_q;
    wire [32:0] i_add36_conv2d3x337_a;
    wire [32:0] i_add36_conv2d3x337_b;
    logic [32:0] i_add36_conv2d3x337_o;
    wire [32:0] i_add36_conv2d3x337_q;
    wire [32:0] i_add42_conv2d3x353_a;
    wire [32:0] i_add42_conv2d3x353_b;
    logic [32:0] i_add42_conv2d3x353_o;
    wire [32:0] i_add42_conv2d3x353_q;
    wire [1:0] i_arrayidx385_conv2d3x340_vt_const_1_q;
    wire [63:0] i_arrayidx385_conv2d3x340_vt_join_q;
    wire [61:0] i_arrayidx385_conv2d3x340_vt_select_63_b;
    wire [1:0] i_cleanups_shl64_conv2d3x37_vt_join_q;
    wire [0:0] i_cleanups_shl64_conv2d3x37_vt_select_1_b;
    wire [33:0] i_cmp29_conv2d3x330_a;
    wire [33:0] i_cmp29_conv2d3x330_b;
    logic [33:0] i_cmp29_conv2d3x330_o;
    wire [0:0] i_cmp29_conv2d3x330_c;
    wire [33:0] i_cmp31_conv2d3x333_a;
    wire [33:0] i_cmp31_conv2d3x333_b;
    logic [33:0] i_cmp31_conv2d3x333_o;
    wire [0:0] i_cmp31_conv2d3x333_c;
    wire [0:0] i_first_cleanup_xor66_conv2d3x36_q;
    wire [0:0] i_first_cleanup_xor66_or_conv2d3x352_q;
    wire [3:0] i_fpga_indvars_iv_next_conv2d3x363_a;
    wire [3:0] i_fpga_indvars_iv_next_conv2d3x363_b;
    logic [3:0] i_fpga_indvars_iv_next_conv2d3x363_o;
    wire [3:0] i_fpga_indvars_iv_next_conv2d3x363_q;
    wire [63:0] i_idxprom43_conv2d3x354_vt_join_q;
    wire [31:0] i_idxprom43_conv2d3x354_vt_select_31_b;
    wire [32:0] i_inc_conv2d3x358_a;
    wire [32:0] i_inc_conv2d3x358_b;
    logic [32:0] i_inc_conv2d3x358_o;
    wire [32:0] i_inc_conv2d3x358_q;
    (* dont_merge *) reg [0:0] i_llvm_fpga_fanout_i1_c0_ene1671_fanout_adaptor1206_conv2d3x32_q;
    (* dont_merge *) reg [0:0] i_llvm_fpga_fanout_i1_c0_ene1671_fanout_adaptor_conv2d3x33_q;
    (* dont_merge *) reg [0:0] i_llvm_fpga_fanout_i1_keep_going60_fanout_adaptor1207_conv2d3x39_q;
    (* dont_merge *) reg [0:0] i_llvm_fpga_fanout_i1_keep_going60_fanout_adaptor_conv2d3x310_q;
    wire [0:0] i_llvm_fpga_pipeline_keep_going60_conv2d3x38_out_data_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going60_conv2d3x38_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going60_conv2d3x38_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going60_conv2d3x38_out_initeration_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going60_conv2d3x38_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going60_conv2d3x38_out_pipeline_valid_out;
    wire [31:0] i_llvm_fpga_pop_f32_lm25100_pop47_conv2d3x374_out_data_out;
    wire [0:0] i_llvm_fpga_pop_f32_lm25100_pop47_conv2d3x374_out_feedback_stall_out_47;
    wire [0:0] i_llvm_fpga_pop_i1_cmp26121_pop51_conv2d3x341_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_cmp26121_pop51_conv2d3x341_out_feedback_stall_out_51;
    wire [0:0] i_llvm_fpga_pop_i1_cmp26_1136_pop54_conv2d3x384_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_cmp26_1136_pop54_conv2d3x384_out_feedback_stall_out_54;
    wire [0:0] i_llvm_fpga_pop_i1_cmp26_2151_pop57_conv2d3x390_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_cmp26_2151_pop57_conv2d3x390_out_feedback_stall_out_57;
    wire [0:0] i_llvm_fpga_pop_i1_cmp27126_pop52_conv2d3x344_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_cmp27126_pop52_conv2d3x344_out_feedback_stall_out_52;
    wire [0:0] i_llvm_fpga_pop_i1_cmp27_1141_pop55_conv2d3x386_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_cmp27_1141_pop55_conv2d3x386_out_feedback_stall_out_55;
    wire [0:0] i_llvm_fpga_pop_i1_cmp27_2156_pop58_conv2d3x392_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_cmp27_2156_pop58_conv2d3x392_out_feedback_stall_out_58;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp73172_pop62_conv2d3x396_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp73172_pop62_conv2d3x396_out_feedback_stall_out_62;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp77161_pop59_conv2d3x394_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp77161_pop59_conv2d3x394_out_feedback_stall_out_59;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp81106_pop48_conv2d3x376_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp81106_pop48_conv2d3x376_out_feedback_stall_out_48;
    wire [0:0] i_llvm_fpga_pop_i1_pop65_conv2d3x348_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_pop65_conv2d3x348_out_feedback_stall_out_65;
    wire [0:0] i_llvm_fpga_pop_i1_pop69_conv2d3x3102_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_pop69_conv2d3x3102_out_feedback_stall_out_69;
    wire [1:0] i_llvm_fpga_pop_i2_cleanups63_pop44_conv2d3x34_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i2_cleanups63_pop44_conv2d3x34_out_feedback_stall_out_44;
    wire [1:0] i_llvm_fpga_pop_i2_initerations58_pop43_conv2d3x311_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i2_initerations58_pop43_conv2d3x311_out_feedback_stall_out_43;
    wire [31:0] i_llvm_fpga_pop_i32_add111_pop49_conv2d3x378_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_add111_pop49_conv2d3x378_out_feedback_stall_out_49;
    wire [31:0] i_llvm_fpga_pop_i32_add35183_pop67_conv2d3x335_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_add35183_pop67_conv2d3x335_out_feedback_stall_out_67;
    wire [31:0] i_llvm_fpga_pop_i32_inc50184_pop68_conv2d3x3100_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_inc50184_pop68_conv2d3x3100_out_feedback_stall_out_68;
    wire [31:0] i_llvm_fpga_pop_i32_j_061_pop24176_pop63_conv2d3x322_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_j_061_pop24176_pop63_conv2d3x322_out_feedback_stall_out_63;
    wire [31:0] i_llvm_fpga_pop_i32_k_059180_pop64_conv2d3x316_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_k_059180_pop64_conv2d3x316_out_feedback_stall_out_64;
    wire [31:0] i_llvm_fpga_pop_i32_m_053_pop41_conv2d3x328_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_m_053_pop41_conv2d3x328_out_feedback_stall_out_41;
    wire [31:0] i_llvm_fpga_pop_i32_mul32181_pop66_conv2d3x398_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_mul32181_pop66_conv2d3x398_out_feedback_stall_out_66;
    wire [31:0] i_llvm_fpga_pop_i32_mul56116_pop50_conv2d3x380_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_mul56116_pop50_conv2d3x380_out_feedback_stall_out_50;
    wire [31:0] i_llvm_fpga_pop_i32_pad_sync_buffer168_pop61_conv2d3x325_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_pad_sync_buffer168_pop61_conv2d3x325_out_feedback_stall_out_61;
    wire [31:0] i_llvm_fpga_pop_i32_stride_sync_buffer164_pop60_conv2d3x320_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_stride_sync_buffer164_pop60_conv2d3x320_out_feedback_stall_out_60;
    wire [31:0] i_llvm_fpga_pop_i32_sub_1131_pop53_conv2d3x382_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_sub_1131_pop53_conv2d3x382_out_feedback_stall_out_53;
    wire [31:0] i_llvm_fpga_pop_i32_sub_2146_pop56_conv2d3x388_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_sub_2146_pop56_conv2d3x388_out_feedback_stall_out_56;
    wire [2:0] i_llvm_fpga_pop_i3_fpga_indvars_iv_pop40_conv2d3x360_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i3_fpga_indvars_iv_pop40_conv2d3x360_out_feedback_stall_out_40;
    wire [63:0] i_llvm_fpga_pop_p1024f32_filter_weight_addr_067_replace_phi88_pop45_conv2d3x355_out_data_out;
    wire [0:0] i_llvm_fpga_pop_p1024f32_filter_weight_addr_067_replace_phi88_pop45_conv2d3x355_out_feedback_stall_out_45;
    wire [63:0] i_llvm_fpga_pop_p1024f32_output_im_addr_068_replace_phi94_pop46_conv2d3x372_out_data_out;
    wire [0:0] i_llvm_fpga_pop_p1024f32_output_im_addr_068_replace_phi94_pop46_conv2d3x372_out_feedback_stall_out_46;
    wire [31:0] i_llvm_fpga_push_f32_lm25100_push47_conv2d3x375_out_feedback_out_47;
    wire [0:0] i_llvm_fpga_push_f32_lm25100_push47_conv2d3x375_out_feedback_valid_out_47;
    wire [0:0] i_llvm_fpga_push_i1_cmp26121_push51_conv2d3x342_out_feedback_out_51;
    wire [0:0] i_llvm_fpga_push_i1_cmp26121_push51_conv2d3x342_out_feedback_valid_out_51;
    wire [0:0] i_llvm_fpga_push_i1_cmp26_1136_push54_conv2d3x385_out_feedback_out_54;
    wire [0:0] i_llvm_fpga_push_i1_cmp26_1136_push54_conv2d3x385_out_feedback_valid_out_54;
    wire [0:0] i_llvm_fpga_push_i1_cmp26_2151_push57_conv2d3x391_out_feedback_out_57;
    wire [0:0] i_llvm_fpga_push_i1_cmp26_2151_push57_conv2d3x391_out_feedback_valid_out_57;
    wire [0:0] i_llvm_fpga_push_i1_cmp27126_push52_conv2d3x345_out_feedback_out_52;
    wire [0:0] i_llvm_fpga_push_i1_cmp27126_push52_conv2d3x345_out_feedback_valid_out_52;
    wire [0:0] i_llvm_fpga_push_i1_cmp27_1141_push55_conv2d3x387_out_feedback_out_55;
    wire [0:0] i_llvm_fpga_push_i1_cmp27_1141_push55_conv2d3x387_out_feedback_valid_out_55;
    wire [0:0] i_llvm_fpga_push_i1_cmp27_2156_push58_conv2d3x393_out_feedback_out_58;
    wire [0:0] i_llvm_fpga_push_i1_cmp27_2156_push58_conv2d3x393_out_feedback_valid_out_58;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration62_conv2d3x315_out_feedback_out_5;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration62_conv2d3x315_out_feedback_valid_out_5;
    wire [0:0] i_llvm_fpga_push_i1_notcmp73172_push62_conv2d3x397_out_feedback_out_62;
    wire [0:0] i_llvm_fpga_push_i1_notcmp73172_push62_conv2d3x397_out_feedback_valid_out_62;
    wire [0:0] i_llvm_fpga_push_i1_notcmp77161_push59_conv2d3x395_out_feedback_out_59;
    wire [0:0] i_llvm_fpga_push_i1_notcmp77161_push59_conv2d3x395_out_feedback_valid_out_59;
    wire [0:0] i_llvm_fpga_push_i1_notcmp81106_push48_conv2d3x377_out_feedback_out_48;
    wire [0:0] i_llvm_fpga_push_i1_notcmp81106_push48_conv2d3x377_out_feedback_valid_out_48;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond70_conv2d3x367_out_feedback_out_6;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond70_conv2d3x367_out_feedback_valid_out_6;
    wire [0:0] i_llvm_fpga_push_i1_push65_conv2d3x349_out_feedback_out_65;
    wire [0:0] i_llvm_fpga_push_i1_push65_conv2d3x349_out_feedback_valid_out_65;
    wire [0:0] i_llvm_fpga_push_i1_push69_conv2d3x3103_out_feedback_out_69;
    wire [0:0] i_llvm_fpga_push_i1_push69_conv2d3x3103_out_feedback_valid_out_69;
    wire [7:0] i_llvm_fpga_push_i2_cleanups63_push44_conv2d3x370_out_feedback_out_44;
    wire [0:0] i_llvm_fpga_push_i2_cleanups63_push44_conv2d3x370_out_feedback_valid_out_44;
    wire [7:0] i_llvm_fpga_push_i2_initerations58_push43_conv2d3x313_out_feedback_out_43;
    wire [0:0] i_llvm_fpga_push_i2_initerations58_push43_conv2d3x313_out_feedback_valid_out_43;
    wire [31:0] i_llvm_fpga_push_i32_add111_push49_conv2d3x379_out_feedback_out_49;
    wire [0:0] i_llvm_fpga_push_i32_add111_push49_conv2d3x379_out_feedback_valid_out_49;
    wire [31:0] i_llvm_fpga_push_i32_add35183_push67_conv2d3x336_out_feedback_out_67;
    wire [0:0] i_llvm_fpga_push_i32_add35183_push67_conv2d3x336_out_feedback_valid_out_67;
    wire [31:0] i_llvm_fpga_push_i32_inc50184_push68_conv2d3x3101_out_feedback_out_68;
    wire [0:0] i_llvm_fpga_push_i32_inc50184_push68_conv2d3x3101_out_feedback_valid_out_68;
    wire [31:0] i_llvm_fpga_push_i32_j_061_pop24176_push63_conv2d3x323_out_feedback_out_63;
    wire [0:0] i_llvm_fpga_push_i32_j_061_pop24176_push63_conv2d3x323_out_feedback_valid_out_63;
    wire [31:0] i_llvm_fpga_push_i32_k_059180_push64_conv2d3x317_out_feedback_out_64;
    wire [0:0] i_llvm_fpga_push_i32_k_059180_push64_conv2d3x317_out_feedback_valid_out_64;
    wire [31:0] i_llvm_fpga_push_i32_m_053_push41_conv2d3x359_out_feedback_out_41;
    wire [0:0] i_llvm_fpga_push_i32_m_053_push41_conv2d3x359_out_feedback_valid_out_41;
    wire [31:0] i_llvm_fpga_push_i32_mul32181_push66_conv2d3x399_out_feedback_out_66;
    wire [0:0] i_llvm_fpga_push_i32_mul32181_push66_conv2d3x399_out_feedback_valid_out_66;
    wire [31:0] i_llvm_fpga_push_i32_mul56116_push50_conv2d3x381_out_feedback_out_50;
    wire [0:0] i_llvm_fpga_push_i32_mul56116_push50_conv2d3x381_out_feedback_valid_out_50;
    wire [31:0] i_llvm_fpga_push_i32_pad_sync_buffer168_push61_conv2d3x326_out_feedback_out_61;
    wire [0:0] i_llvm_fpga_push_i32_pad_sync_buffer168_push61_conv2d3x326_out_feedback_valid_out_61;
    wire [31:0] i_llvm_fpga_push_i32_stride_sync_buffer164_push60_conv2d3x321_out_feedback_out_60;
    wire [0:0] i_llvm_fpga_push_i32_stride_sync_buffer164_push60_conv2d3x321_out_feedback_valid_out_60;
    wire [31:0] i_llvm_fpga_push_i32_sub_1131_push53_conv2d3x383_out_feedback_out_53;
    wire [0:0] i_llvm_fpga_push_i32_sub_1131_push53_conv2d3x383_out_feedback_valid_out_53;
    wire [31:0] i_llvm_fpga_push_i32_sub_2146_push56_conv2d3x389_out_feedback_out_56;
    wire [0:0] i_llvm_fpga_push_i32_sub_2146_push56_conv2d3x389_out_feedback_valid_out_56;
    wire [7:0] i_llvm_fpga_push_i3_fpga_indvars_iv_push40_conv2d3x364_out_feedback_out_40;
    wire [0:0] i_llvm_fpga_push_i3_fpga_indvars_iv_push40_conv2d3x364_out_feedback_valid_out_40;
    wire [63:0] i_llvm_fpga_push_p1024f32_filter_weight_addr_067_replace_phi88_push45_conv2d3x356_out_feedback_out_45;
    wire [0:0] i_llvm_fpga_push_p1024f32_filter_weight_addr_067_replace_phi88_push45_conv2d3x356_out_feedback_valid_out_45;
    wire [63:0] i_llvm_fpga_push_p1024f32_output_im_addr_068_replace_phi94_push46_conv2d3x373_out_feedback_out_46;
    wire [0:0] i_llvm_fpga_push_p1024f32_output_im_addr_068_replace_phi94_push46_conv2d3x373_out_feedback_valid_out_46;
    wire [31:0] i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer15_conv2d3x332_out_buffer_out;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer28_conv2d3x339_out_buffer_out;
    wire [9:0] i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer28_conv2d3x339_vt_const_9_q;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer28_conv2d3x339_vt_join_q;
    wire [53:0] i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer28_conv2d3x339_vt_select_63_b;
    wire [0:0] i_masked69_conv2d3x371_q;
    wire [32:0] i_mul39_add4_conv2d3x319_a;
    wire [32:0] i_mul39_add4_conv2d3x319_b;
    logic [32:0] i_mul39_add4_conv2d3x319_o;
    wire [32:0] i_mul39_add4_conv2d3x319_q;
    wire [0:0] i_next_cleanups68_conv2d3x369_s;
    reg [1:0] i_next_cleanups68_conv2d3x369_q;
    wire [1:0] i_next_initerations59_conv2d3x312_vt_join_q;
    wire [0:0] i_next_initerations59_conv2d3x312_vt_select_0_b;
    wire [0:0] i_notcmp56_conv2d3x366_q;
    wire [0:0] i_or67_conv2d3x368_q;
    wire [0:0] i_phi_decision43_and_i0_conv2d3x350_q;
    wire [0:0] i_reduction_conv2d3x3_0_conv2d3x343_q;
    wire [0:0] i_reduction_conv2d3x3_1_conv2d3x346_q;
    wire [0:0] i_reduction_conv2d3x3_2_conv2d3x347_q;
    wire [32:0] i_sub25_conv2d3x329_a;
    wire [32:0] i_sub25_conv2d3x329_b;
    logic [32:0] i_sub25_conv2d3x329_o;
    wire [32:0] i_sub25_conv2d3x329_q;
    wire [2:0] i_unnamed_conv2d3x318_vt_const_2_q;
    wire [31:0] i_unnamed_conv2d3x318_vt_join_q;
    wire [28:0] i_unnamed_conv2d3x318_vt_select_31_b;
    wire [0:0] i_unnamed_conv2d3x351_q;
    wire [0:0] i_unnamed_conv2d3x365_q;
    wire [31:0] bgTrunc_i_add24_conv2d3x327_sel_x_b;
    wire [31:0] bgTrunc_i_add36_conv2d3x337_sel_x_b;
    wire [31:0] bgTrunc_i_add42_conv2d3x353_sel_x_b;
    wire [2:0] bgTrunc_i_fpga_indvars_iv_next_conv2d3x363_sel_x_b;
    wire [31:0] bgTrunc_i_inc_conv2d3x358_sel_x_b;
    wire [63:0] bgTrunc_i_mul23_conv2d3x324_sel_x_in;
    wire [31:0] bgTrunc_i_mul23_conv2d3x324_sel_x_b;
    wire [31:0] bgTrunc_i_mul39_add4_conv2d3x319_sel_x_b;
    wire [31:0] bgTrunc_i_sub25_conv2d3x329_sel_x_b;
    wire [31:0] c_i32_1172_recast_x_q;
    wire [64:0] i_arrayidx385_conv2d3x30_add_x_a;
    wire [64:0] i_arrayidx385_conv2d3x30_add_x_b;
    logic [64:0] i_arrayidx385_conv2d3x30_add_x_o;
    wire [64:0] i_arrayidx385_conv2d3x30_add_x_q;
    wire [61:0] i_arrayidx385_conv2d3x30_narrow_x_b;
    wire [63:0] i_arrayidx385_conv2d3x30_shift_join_x_q;
    wire [63:0] i_arrayidx385_conv2d3x30_dupName_0_trunc_sel_x_b;
    wire [64:0] i_arrayidx44_conv2d3x30_add_x_a;
    wire [64:0] i_arrayidx44_conv2d3x30_add_x_b;
    logic [64:0] i_arrayidx44_conv2d3x30_add_x_o;
    wire [64:0] i_arrayidx44_conv2d3x30_add_x_q;
    wire [61:0] i_arrayidx44_conv2d3x30_narrow_x_b;
    wire [63:0] i_arrayidx44_conv2d3x30_shift_join_x_q;
    wire [63:0] i_arrayidx44_conv2d3x30_dupName_0_trunc_sel_x_b;
    wire [0:0] i_first_cleanup65_conv2d3x35_sel_x_b;
    wire [63:0] i_idxprom37_conv2d3x338_sel_x_b;
    wire [63:0] i_idxprom43_conv2d3x354_sel_x_b;
    wire [0:0] i_last_initeration61_conv2d3x314_sel_x_b;
    (* dont_merge *) reg [0:0] valid_fanout_reg0_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg1_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg2_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg3_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg4_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg5_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg6_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg7_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg8_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg9_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg10_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg11_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg12_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg13_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg14_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg15_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg16_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg17_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg18_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg19_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg20_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg21_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg22_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg23_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg24_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg25_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg26_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg27_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg28_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg29_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg30_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg31_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg32_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg33_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg34_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg35_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg36_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg37_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg38_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg39_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg40_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg41_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg42_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg43_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg44_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg45_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg46_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg47_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg48_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg49_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg50_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg51_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg52_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg53_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg54_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg55_q;
    wire [0:0] i_exitcond_conv2d3x361_cmp_nsign_q;
    wire [63:0] i_mul23_conv2d3x324_sums_join_0_q;
    wire [50:0] i_mul23_conv2d3x324_sums_align_1_q;
    wire [50:0] i_mul23_conv2d3x324_sums_align_1_qint;
    wire [64:0] i_mul23_conv2d3x324_sums_result_add_0_0_a;
    wire [64:0] i_mul23_conv2d3x324_sums_result_add_0_0_b;
    logic [64:0] i_mul23_conv2d3x324_sums_result_add_0_0_o;
    wire [64:0] i_mul23_conv2d3x324_sums_result_add_0_0_q;
    wire [0:0] leftShiftStage0Idx1Rng1_uid336_i_cleanups_shl64_conv2d3x30_shift_x_in;
    wire [0:0] leftShiftStage0Idx1Rng1_uid336_i_cleanups_shl64_conv2d3x30_shift_x_b;
    wire [1:0] leftShiftStage0Idx1_uid337_i_cleanups_shl64_conv2d3x30_shift_x_q;
    wire [0:0] leftShiftStage0_uid339_i_cleanups_shl64_conv2d3x30_shift_x_s;
    reg [1:0] leftShiftStage0_uid339_i_cleanups_shl64_conv2d3x30_shift_x_q;
    wire [0:0] rightShiftStage0Idx1Rng1_uid343_i_next_initerations59_conv2d3x30_shift_x_b;
    wire [1:0] rightShiftStage0Idx1_uid345_i_next_initerations59_conv2d3x30_shift_x_q;
    wire [0:0] rightShiftStage0_uid347_i_next_initerations59_conv2d3x30_shift_x_s;
    reg [1:0] rightShiftStage0_uid347_i_next_initerations59_conv2d3x30_shift_x_q;
    wire [30:0] leftShiftStage0Idx1Rng1_uid352_dupName_0_i_unnamed_conv2d3x30_shift_x_in;
    wire [30:0] leftShiftStage0Idx1Rng1_uid352_dupName_0_i_unnamed_conv2d3x30_shift_x_b;
    wire [31:0] leftShiftStage0Idx1_uid353_dupName_0_i_unnamed_conv2d3x30_shift_x_q;
    wire [0:0] leftShiftStage0_uid355_dupName_0_i_unnamed_conv2d3x30_shift_x_s;
    reg [31:0] leftShiftStage0_uid355_dupName_0_i_unnamed_conv2d3x30_shift_x_q;
    wire [29:0] leftShiftStage1Idx1Rng2_uid357_dupName_0_i_unnamed_conv2d3x30_shift_x_in;
    wire [29:0] leftShiftStage1Idx1Rng2_uid357_dupName_0_i_unnamed_conv2d3x30_shift_x_b;
    wire [31:0] leftShiftStage1Idx1_uid358_dupName_0_i_unnamed_conv2d3x30_shift_x_q;
    wire [0:0] leftShiftStage1_uid360_dupName_0_i_unnamed_conv2d3x30_shift_x_s;
    reg [31:0] leftShiftStage1_uid360_dupName_0_i_unnamed_conv2d3x30_shift_x_q;
    wire i_mul23_conv2d3x324_im0_cma_reset;
    wire [13:0] i_mul23_conv2d3x324_im0_cma_a0;
    wire [13:0] i_mul23_conv2d3x324_im0_cma_c0;
    wire [27:0] i_mul23_conv2d3x324_im0_cma_s0;
    wire [27:0] i_mul23_conv2d3x324_im0_cma_qq;
    wire [27:0] i_mul23_conv2d3x324_im0_cma_q;
    wire i_mul23_conv2d3x324_im0_cma_ena0;
    wire i_mul23_conv2d3x324_im0_cma_ena1;
    wire i_mul23_conv2d3x324_im0_cma_ena2;
    wire i_mul23_conv2d3x324_im8_cma_reset;
    wire [17:0] i_mul23_conv2d3x324_im8_cma_a0;
    wire [17:0] i_mul23_conv2d3x324_im8_cma_c0;
    wire [35:0] i_mul23_conv2d3x324_im8_cma_s0;
    wire [35:0] i_mul23_conv2d3x324_im8_cma_qq;
    wire [35:0] i_mul23_conv2d3x324_im8_cma_q;
    wire i_mul23_conv2d3x324_im8_cma_ena0;
    wire i_mul23_conv2d3x324_im8_cma_ena1;
    wire i_mul23_conv2d3x324_im8_cma_ena2;
    wire i_mul23_conv2d3x324_ma3_cma_reset;
    wire [13:0] i_mul23_conv2d3x324_ma3_cma_a0;
    wire [17:0] i_mul23_conv2d3x324_ma3_cma_c0;
    wire [13:0] i_mul23_conv2d3x324_ma3_cma_a1;
    wire [17:0] i_mul23_conv2d3x324_ma3_cma_c1;
    wire [32:0] i_mul23_conv2d3x324_ma3_cma_s0;
    wire [32:0] i_mul23_conv2d3x324_ma3_cma_qq;
    wire [32:0] i_mul23_conv2d3x324_ma3_cma_q;
    wire i_mul23_conv2d3x324_ma3_cma_ena0;
    wire i_mul23_conv2d3x324_ma3_cma_ena1;
    wire i_mul23_conv2d3x324_ma3_cma_ena2;
    wire [13:0] i_mul23_conv2d3x324_bs1_merged_bit_select_b;
    wire [17:0] i_mul23_conv2d3x324_bs1_merged_bit_select_c;
    wire [13:0] i_mul23_conv2d3x324_bs2_merged_bit_select_b;
    wire [17:0] i_mul23_conv2d3x324_bs2_merged_bit_select_c;
    reg [0:0] redist0_sync_together243_aunroll_x_in_c0_eni46_1_tpl_3_q;
    reg [0:0] redist0_sync_together243_aunroll_x_in_c0_eni46_1_tpl_3_delay_0;
    reg [0:0] redist0_sync_together243_aunroll_x_in_c0_eni46_1_tpl_3_delay_1;
    reg [0:0] redist1_sync_together243_aunroll_x_in_c0_eni46_1_tpl_7_q;
    reg [0:0] redist1_sync_together243_aunroll_x_in_c0_eni46_1_tpl_7_delay_0;
    reg [0:0] redist1_sync_together243_aunroll_x_in_c0_eni46_1_tpl_7_delay_1;
    reg [0:0] redist1_sync_together243_aunroll_x_in_c0_eni46_1_tpl_7_delay_2;
    reg [31:0] redist2_sync_together243_aunroll_x_in_c0_eni46_2_tpl_1_q;
    reg [31:0] redist3_sync_together243_aunroll_x_in_c0_eni46_3_tpl_1_q;
    reg [31:0] redist4_sync_together243_aunroll_x_in_c0_eni46_4_tpl_1_q;
    reg [31:0] redist6_sync_together243_aunroll_x_in_c0_eni46_6_tpl_1_q;
    reg [0:0] redist7_sync_together243_aunroll_x_in_c0_eni46_7_tpl_4_q;
    reg [0:0] redist7_sync_together243_aunroll_x_in_c0_eni46_7_tpl_4_delay_0;
    reg [0:0] redist7_sync_together243_aunroll_x_in_c0_eni46_7_tpl_4_delay_1;
    reg [0:0] redist7_sync_together243_aunroll_x_in_c0_eni46_7_tpl_4_delay_2;
    reg [0:0] redist8_sync_together243_aunroll_x_in_c0_eni46_8_tpl_4_q;
    reg [0:0] redist8_sync_together243_aunroll_x_in_c0_eni46_8_tpl_4_delay_0;
    reg [0:0] redist8_sync_together243_aunroll_x_in_c0_eni46_8_tpl_4_delay_1;
    reg [0:0] redist8_sync_together243_aunroll_x_in_c0_eni46_8_tpl_4_delay_2;
    reg [0:0] redist9_sync_together243_aunroll_x_in_c0_eni46_9_tpl_7_q;
    reg [63:0] redist10_sync_together243_aunroll_x_in_c0_eni46_10_tpl_1_q;
    reg [63:0] redist11_sync_together243_aunroll_x_in_c0_eni46_11_tpl_1_q;
    reg [0:0] redist13_sync_together243_aunroll_x_in_c0_eni46_13_tpl_4_q;
    reg [0:0] redist13_sync_together243_aunroll_x_in_c0_eni46_13_tpl_4_delay_0;
    reg [0:0] redist13_sync_together243_aunroll_x_in_c0_eni46_13_tpl_4_delay_1;
    reg [0:0] redist13_sync_together243_aunroll_x_in_c0_eni46_13_tpl_4_delay_2;
    reg [31:0] redist14_sync_together243_aunroll_x_in_c0_eni46_14_tpl_1_q;
    reg [31:0] redist15_sync_together243_aunroll_x_in_c0_eni46_15_tpl_1_q;
    reg [31:0] redist16_sync_together243_aunroll_x_in_c0_eni46_16_tpl_1_q;
    reg [0:0] redist17_sync_together243_aunroll_x_in_c0_eni46_17_tpl_4_q;
    reg [0:0] redist17_sync_together243_aunroll_x_in_c0_eni46_17_tpl_4_delay_0;
    reg [0:0] redist17_sync_together243_aunroll_x_in_c0_eni46_17_tpl_4_delay_1;
    reg [0:0] redist17_sync_together243_aunroll_x_in_c0_eni46_17_tpl_4_delay_2;
    reg [0:0] redist18_sync_together243_aunroll_x_in_c0_eni46_18_tpl_4_q;
    reg [0:0] redist18_sync_together243_aunroll_x_in_c0_eni46_18_tpl_4_delay_0;
    reg [0:0] redist18_sync_together243_aunroll_x_in_c0_eni46_18_tpl_4_delay_1;
    reg [0:0] redist18_sync_together243_aunroll_x_in_c0_eni46_18_tpl_4_delay_2;
    reg [31:0] redist19_sync_together243_aunroll_x_in_c0_eni46_19_tpl_1_q;
    reg [0:0] redist20_sync_together243_aunroll_x_in_c0_eni46_20_tpl_4_q;
    reg [0:0] redist20_sync_together243_aunroll_x_in_c0_eni46_20_tpl_4_delay_0;
    reg [0:0] redist20_sync_together243_aunroll_x_in_c0_eni46_20_tpl_4_delay_1;
    reg [0:0] redist20_sync_together243_aunroll_x_in_c0_eni46_20_tpl_4_delay_2;
    reg [0:0] redist21_sync_together243_aunroll_x_in_c0_eni46_21_tpl_4_q;
    reg [0:0] redist21_sync_together243_aunroll_x_in_c0_eni46_21_tpl_4_delay_0;
    reg [0:0] redist21_sync_together243_aunroll_x_in_c0_eni46_21_tpl_4_delay_1;
    reg [0:0] redist21_sync_together243_aunroll_x_in_c0_eni46_21_tpl_4_delay_2;
    reg [0:0] redist22_sync_together243_aunroll_x_in_c0_eni46_22_tpl_4_q;
    reg [0:0] redist22_sync_together243_aunroll_x_in_c0_eni46_22_tpl_4_delay_0;
    reg [0:0] redist22_sync_together243_aunroll_x_in_c0_eni46_22_tpl_4_delay_1;
    reg [0:0] redist22_sync_together243_aunroll_x_in_c0_eni46_22_tpl_4_delay_2;
    reg [0:0] redist23_sync_together243_aunroll_x_in_c0_eni46_23_tpl_1_q;
    reg [31:0] redist24_sync_together243_aunroll_x_in_c0_eni46_24_tpl_1_q;
    reg [31:0] redist25_sync_together243_aunroll_x_in_c0_eni46_25_tpl_1_q;
    reg [0:0] redist26_sync_together243_aunroll_x_in_c0_eni46_26_tpl_1_q;
    reg [0:0] redist30_sync_together243_aunroll_x_in_c0_eni46_30_tpl_7_q;
    reg [0:0] redist33_sync_together243_aunroll_x_in_c0_eni46_33_tpl_7_q;
    reg [0:0] redist34_sync_together243_aunroll_x_in_c0_eni46_34_tpl_7_q;
    reg [0:0] redist36_sync_together243_aunroll_x_in_c0_eni46_36_tpl_7_q;
    reg [0:0] redist37_sync_together243_aunroll_x_in_c0_eni46_37_tpl_7_q;
    reg [0:0] redist39_sync_together243_aunroll_x_in_c0_eni46_39_tpl_7_q;
    reg [0:0] redist40_sync_together243_aunroll_x_in_c0_eni46_40_tpl_7_q;
    reg [0:0] redist41_sync_together243_aunroll_x_in_c0_eni46_41_tpl_7_q;
    reg [0:0] redist45_sync_together243_aunroll_x_in_c0_eni46_45_tpl_7_q;
    reg [0:0] redist47_sync_together243_aunroll_x_in_i_valid_2_q;
    reg [0:0] redist47_sync_together243_aunroll_x_in_i_valid_2_delay_0;
    reg [0:0] redist48_sync_together243_aunroll_x_in_i_valid_3_q;
    reg [0:0] redist49_sync_together243_aunroll_x_in_i_valid_4_q;
    reg [0:0] redist50_sync_together243_aunroll_x_in_i_valid_5_q;
    reg [0:0] redist51_sync_together243_aunroll_x_in_i_valid_6_q;
    reg [0:0] redist52_sync_together243_aunroll_x_in_i_valid_7_q;
    reg [31:0] redist53_bgTrunc_i_mul39_add4_conv2d3x319_sel_x_b_3_q;
    reg [31:0] redist53_bgTrunc_i_mul39_add4_conv2d3x319_sel_x_b_3_delay_0;
    reg [31:0] redist54_bgTrunc_i_mul23_conv2d3x324_sel_x_b_1_q;
    reg [31:0] redist55_bgTrunc_i_add36_conv2d3x337_sel_x_b_1_q;
    reg [31:0] redist56_bgTrunc_i_add24_conv2d3x327_sel_x_b_1_q;
    reg [31:0] redist57_bgTrunc_i_add24_conv2d3x327_sel_x_b_2_q;
    reg [63:0] redist59_i_llvm_fpga_pop_p1024f32_output_im_addr_068_replace_phi94_pop46_conv2d3x372_out_data_out_6_q;
    reg [63:0] redist59_i_llvm_fpga_pop_p1024f32_output_im_addr_068_replace_phi94_pop46_conv2d3x372_out_data_out_6_delay_0;
    reg [63:0] redist61_i_llvm_fpga_pop_p1024f32_filter_weight_addr_067_replace_phi88_pop45_conv2d3x355_out_data_out_6_q;
    reg [63:0] redist61_i_llvm_fpga_pop_p1024f32_filter_weight_addr_067_replace_phi88_pop45_conv2d3x355_out_data_out_6_delay_0;
    reg [31:0] redist68_i_llvm_fpga_pop_i32_pad_sync_buffer168_pop61_conv2d3x325_out_data_out_1_q;
    reg [31:0] redist69_i_llvm_fpga_pop_i32_pad_sync_buffer168_pop61_conv2d3x325_out_data_out_3_q;
    reg [31:0] redist69_i_llvm_fpga_pop_i32_pad_sync_buffer168_pop61_conv2d3x325_out_data_out_3_delay_0;
    reg [31:0] redist74_i_llvm_fpga_pop_i32_m_053_pop41_conv2d3x328_out_data_out_1_q;
    reg [31:0] redist75_i_llvm_fpga_pop_i32_m_053_pop41_conv2d3x328_out_data_out_2_q;
    reg [31:0] redist76_i_llvm_fpga_pop_i32_k_059180_pop64_conv2d3x316_out_data_out_3_q;
    reg [31:0] redist76_i_llvm_fpga_pop_i32_k_059180_pop64_conv2d3x316_out_data_out_3_delay_0;
    reg [31:0] redist82_i_llvm_fpga_pop_i32_add35183_pop67_conv2d3x335_out_data_out_5_q;
    reg [31:0] redist82_i_llvm_fpga_pop_i32_add35183_pop67_conv2d3x335_out_data_out_5_delay_0;
    reg [0:0] redist85_i_llvm_fpga_pop_i1_pop69_conv2d3x3102_out_data_out_3_q;
    reg [0:0] redist85_i_llvm_fpga_pop_i1_pop69_conv2d3x3102_out_data_out_3_delay_0;
    reg [0:0] redist85_i_llvm_fpga_pop_i1_pop69_conv2d3x3102_out_data_out_3_delay_1;
    reg [0:0] redist86_i_llvm_fpga_pop_i1_pop69_conv2d3x3102_out_data_out_6_q;
    reg [0:0] redist86_i_llvm_fpga_pop_i1_pop69_conv2d3x3102_out_data_out_6_delay_0;
    reg [0:0] redist86_i_llvm_fpga_pop_i1_pop69_conv2d3x3102_out_data_out_6_delay_1;
    reg [0:0] redist87_i_llvm_fpga_pop_i1_notcmp81106_pop48_conv2d3x376_out_data_out_3_q;
    reg [0:0] redist87_i_llvm_fpga_pop_i1_notcmp81106_pop48_conv2d3x376_out_data_out_3_delay_0;
    reg [0:0] redist87_i_llvm_fpga_pop_i1_notcmp81106_pop48_conv2d3x376_out_data_out_3_delay_1;
    reg [0:0] redist88_i_llvm_fpga_pop_i1_notcmp77161_pop59_conv2d3x394_out_data_out_3_q;
    reg [0:0] redist88_i_llvm_fpga_pop_i1_notcmp77161_pop59_conv2d3x394_out_data_out_3_delay_0;
    reg [0:0] redist88_i_llvm_fpga_pop_i1_notcmp77161_pop59_conv2d3x394_out_data_out_3_delay_1;
    reg [0:0] redist89_i_llvm_fpga_pop_i1_notcmp73172_pop62_conv2d3x396_out_data_out_3_q;
    reg [0:0] redist89_i_llvm_fpga_pop_i1_notcmp73172_pop62_conv2d3x396_out_data_out_3_delay_0;
    reg [0:0] redist89_i_llvm_fpga_pop_i1_notcmp73172_pop62_conv2d3x396_out_data_out_3_delay_1;
    reg [0:0] redist90_i_llvm_fpga_pop_i1_notcmp73172_pop62_conv2d3x396_out_data_out_6_q;
    reg [0:0] redist90_i_llvm_fpga_pop_i1_notcmp73172_pop62_conv2d3x396_out_data_out_6_delay_0;
    reg [0:0] redist90_i_llvm_fpga_pop_i1_notcmp73172_pop62_conv2d3x396_out_data_out_6_delay_1;
    reg [0:0] redist91_i_llvm_fpga_pop_i1_cmp27_2156_pop58_conv2d3x392_out_data_out_3_q;
    reg [0:0] redist91_i_llvm_fpga_pop_i1_cmp27_2156_pop58_conv2d3x392_out_data_out_3_delay_0;
    reg [0:0] redist91_i_llvm_fpga_pop_i1_cmp27_2156_pop58_conv2d3x392_out_data_out_3_delay_1;
    reg [0:0] redist92_i_llvm_fpga_pop_i1_cmp27_1141_pop55_conv2d3x386_out_data_out_3_q;
    reg [0:0] redist92_i_llvm_fpga_pop_i1_cmp27_1141_pop55_conv2d3x386_out_data_out_3_delay_0;
    reg [0:0] redist92_i_llvm_fpga_pop_i1_cmp27_1141_pop55_conv2d3x386_out_data_out_3_delay_1;
    reg [0:0] redist93_i_llvm_fpga_pop_i1_cmp27126_pop52_conv2d3x344_out_data_out_3_q;
    reg [0:0] redist93_i_llvm_fpga_pop_i1_cmp27126_pop52_conv2d3x344_out_data_out_3_delay_0;
    reg [0:0] redist93_i_llvm_fpga_pop_i1_cmp27126_pop52_conv2d3x344_out_data_out_3_delay_1;
    reg [0:0] redist94_i_llvm_fpga_pop_i1_cmp26_2151_pop57_conv2d3x390_out_data_out_3_q;
    reg [0:0] redist94_i_llvm_fpga_pop_i1_cmp26_2151_pop57_conv2d3x390_out_data_out_3_delay_0;
    reg [0:0] redist94_i_llvm_fpga_pop_i1_cmp26_2151_pop57_conv2d3x390_out_data_out_3_delay_1;
    reg [0:0] redist95_i_llvm_fpga_pop_i1_cmp26_1136_pop54_conv2d3x384_out_data_out_3_q;
    reg [0:0] redist95_i_llvm_fpga_pop_i1_cmp26_1136_pop54_conv2d3x384_out_data_out_3_delay_0;
    reg [0:0] redist95_i_llvm_fpga_pop_i1_cmp26_1136_pop54_conv2d3x384_out_data_out_3_delay_1;
    reg [0:0] redist96_i_llvm_fpga_pop_i1_cmp26121_pop51_conv2d3x341_out_data_out_3_q;
    reg [0:0] redist96_i_llvm_fpga_pop_i1_cmp26121_pop51_conv2d3x341_out_data_out_3_delay_0;
    reg [0:0] redist96_i_llvm_fpga_pop_i1_cmp26121_pop51_conv2d3x341_out_data_out_3_delay_1;
    reg [0:0] redist98_i_llvm_fpga_pipeline_keep_going60_conv2d3x38_out_data_out_1_q;
    reg [0:0] redist99_i_llvm_fpga_pipeline_keep_going60_conv2d3x38_out_data_out_4_q;
    reg [0:0] redist99_i_llvm_fpga_pipeline_keep_going60_conv2d3x38_out_data_out_4_delay_0;
    reg [0:0] redist99_i_llvm_fpga_pipeline_keep_going60_conv2d3x38_out_data_out_4_delay_1;
    reg [0:0] redist100_i_llvm_fpga_fanout_i1_c0_ene1671_fanout_adaptor_conv2d3x33_q_3_q;
    reg [0:0] redist100_i_llvm_fpga_fanout_i1_c0_ene1671_fanout_adaptor_conv2d3x33_q_3_delay_0;
    reg [0:0] redist100_i_llvm_fpga_fanout_i1_c0_ene1671_fanout_adaptor_conv2d3x33_q_3_delay_1;
    reg [0:0] redist101_i_llvm_fpga_fanout_i1_c0_ene1671_fanout_adaptor_conv2d3x33_q_4_q;
    wire redist5_sync_together243_aunroll_x_in_c0_eni46_5_tpl_4_mem_reset0;
    wire [31:0] redist5_sync_together243_aunroll_x_in_c0_eni46_5_tpl_4_mem_ia;
    wire [1:0] redist5_sync_together243_aunroll_x_in_c0_eni46_5_tpl_4_mem_aa;
    wire [1:0] redist5_sync_together243_aunroll_x_in_c0_eni46_5_tpl_4_mem_ab;
    wire [31:0] redist5_sync_together243_aunroll_x_in_c0_eni46_5_tpl_4_mem_iq;
    wire [31:0] redist5_sync_together243_aunroll_x_in_c0_eni46_5_tpl_4_mem_q;
    wire [1:0] redist5_sync_together243_aunroll_x_in_c0_eni46_5_tpl_4_rdcnt_q;
    (* preserve *) reg [1:0] redist5_sync_together243_aunroll_x_in_c0_eni46_5_tpl_4_rdcnt_i;
    (* preserve *) reg redist5_sync_together243_aunroll_x_in_c0_eni46_5_tpl_4_rdcnt_eq;
    reg [1:0] redist5_sync_together243_aunroll_x_in_c0_eni46_5_tpl_4_wraddr_q;
    wire [1:0] redist5_sync_together243_aunroll_x_in_c0_eni46_5_tpl_4_mem_last_q;
    wire [0:0] redist5_sync_together243_aunroll_x_in_c0_eni46_5_tpl_4_cmp_q;
    (* dont_merge *) reg [0:0] redist5_sync_together243_aunroll_x_in_c0_eni46_5_tpl_4_cmpReg_q;
    wire [0:0] redist5_sync_together243_aunroll_x_in_c0_eni46_5_tpl_4_notEnable_q;
    wire [0:0] redist5_sync_together243_aunroll_x_in_c0_eni46_5_tpl_4_nor_q;
    (* dont_merge *) reg [0:0] redist5_sync_together243_aunroll_x_in_c0_eni46_5_tpl_4_sticky_ena_q;
    wire [0:0] redist5_sync_together243_aunroll_x_in_c0_eni46_5_tpl_4_enaAnd_q;
    wire redist12_sync_together243_aunroll_x_in_c0_eni46_12_tpl_4_mem_reset0;
    wire [31:0] redist12_sync_together243_aunroll_x_in_c0_eni46_12_tpl_4_mem_ia;
    wire [1:0] redist12_sync_together243_aunroll_x_in_c0_eni46_12_tpl_4_mem_aa;
    wire [1:0] redist12_sync_together243_aunroll_x_in_c0_eni46_12_tpl_4_mem_ab;
    wire [31:0] redist12_sync_together243_aunroll_x_in_c0_eni46_12_tpl_4_mem_iq;
    wire [31:0] redist12_sync_together243_aunroll_x_in_c0_eni46_12_tpl_4_mem_q;
    wire [1:0] redist12_sync_together243_aunroll_x_in_c0_eni46_12_tpl_4_rdcnt_q;
    (* preserve *) reg [1:0] redist12_sync_together243_aunroll_x_in_c0_eni46_12_tpl_4_rdcnt_i;
    (* preserve *) reg redist12_sync_together243_aunroll_x_in_c0_eni46_12_tpl_4_rdcnt_eq;
    reg [1:0] redist12_sync_together243_aunroll_x_in_c0_eni46_12_tpl_4_wraddr_q;
    wire [1:0] redist12_sync_together243_aunroll_x_in_c0_eni46_12_tpl_4_mem_last_q;
    wire [0:0] redist12_sync_together243_aunroll_x_in_c0_eni46_12_tpl_4_cmp_q;
    (* dont_merge *) reg [0:0] redist12_sync_together243_aunroll_x_in_c0_eni46_12_tpl_4_cmpReg_q;
    wire [0:0] redist12_sync_together243_aunroll_x_in_c0_eni46_12_tpl_4_notEnable_q;
    wire [0:0] redist12_sync_together243_aunroll_x_in_c0_eni46_12_tpl_4_nor_q;
    (* dont_merge *) reg [0:0] redist12_sync_together243_aunroll_x_in_c0_eni46_12_tpl_4_sticky_ena_q;
    wire [0:0] redist12_sync_together243_aunroll_x_in_c0_eni46_12_tpl_4_enaAnd_q;
    wire redist27_sync_together243_aunroll_x_in_c0_eni46_27_tpl_7_mem_reset0;
    wire [63:0] redist27_sync_together243_aunroll_x_in_c0_eni46_27_tpl_7_mem_ia;
    wire [2:0] redist27_sync_together243_aunroll_x_in_c0_eni46_27_tpl_7_mem_aa;
    wire [2:0] redist27_sync_together243_aunroll_x_in_c0_eni46_27_tpl_7_mem_ab;
    wire [63:0] redist27_sync_together243_aunroll_x_in_c0_eni46_27_tpl_7_mem_iq;
    wire [63:0] redist27_sync_together243_aunroll_x_in_c0_eni46_27_tpl_7_mem_q;
    wire [2:0] redist27_sync_together243_aunroll_x_in_c0_eni46_27_tpl_7_rdcnt_q;
    (* preserve *) reg [2:0] redist27_sync_together243_aunroll_x_in_c0_eni46_27_tpl_7_rdcnt_i;
    (* preserve *) reg redist27_sync_together243_aunroll_x_in_c0_eni46_27_tpl_7_rdcnt_eq;
    reg [2:0] redist27_sync_together243_aunroll_x_in_c0_eni46_27_tpl_7_wraddr_q;
    wire [3:0] redist27_sync_together243_aunroll_x_in_c0_eni46_27_tpl_7_mem_last_q;
    wire [3:0] redist27_sync_together243_aunroll_x_in_c0_eni46_27_tpl_7_cmp_b;
    wire [0:0] redist27_sync_together243_aunroll_x_in_c0_eni46_27_tpl_7_cmp_q;
    (* dont_merge *) reg [0:0] redist27_sync_together243_aunroll_x_in_c0_eni46_27_tpl_7_cmpReg_q;
    wire [0:0] redist27_sync_together243_aunroll_x_in_c0_eni46_27_tpl_7_notEnable_q;
    wire [0:0] redist27_sync_together243_aunroll_x_in_c0_eni46_27_tpl_7_nor_q;
    (* dont_merge *) reg [0:0] redist27_sync_together243_aunroll_x_in_c0_eni46_27_tpl_7_sticky_ena_q;
    wire [0:0] redist27_sync_together243_aunroll_x_in_c0_eni46_27_tpl_7_enaAnd_q;
    wire redist28_sync_together243_aunroll_x_in_c0_eni46_28_tpl_7_mem_reset0;
    wire [63:0] redist28_sync_together243_aunroll_x_in_c0_eni46_28_tpl_7_mem_ia;
    wire [2:0] redist28_sync_together243_aunroll_x_in_c0_eni46_28_tpl_7_mem_aa;
    wire [2:0] redist28_sync_together243_aunroll_x_in_c0_eni46_28_tpl_7_mem_ab;
    wire [63:0] redist28_sync_together243_aunroll_x_in_c0_eni46_28_tpl_7_mem_iq;
    wire [63:0] redist28_sync_together243_aunroll_x_in_c0_eni46_28_tpl_7_mem_q;
    wire [2:0] redist28_sync_together243_aunroll_x_in_c0_eni46_28_tpl_7_rdcnt_q;
    (* preserve *) reg [2:0] redist28_sync_together243_aunroll_x_in_c0_eni46_28_tpl_7_rdcnt_i;
    (* preserve *) reg redist28_sync_together243_aunroll_x_in_c0_eni46_28_tpl_7_rdcnt_eq;
    reg [2:0] redist28_sync_together243_aunroll_x_in_c0_eni46_28_tpl_7_wraddr_q;
    wire [3:0] redist28_sync_together243_aunroll_x_in_c0_eni46_28_tpl_7_mem_last_q;
    wire [3:0] redist28_sync_together243_aunroll_x_in_c0_eni46_28_tpl_7_cmp_b;
    wire [0:0] redist28_sync_together243_aunroll_x_in_c0_eni46_28_tpl_7_cmp_q;
    (* dont_merge *) reg [0:0] redist28_sync_together243_aunroll_x_in_c0_eni46_28_tpl_7_cmpReg_q;
    wire [0:0] redist28_sync_together243_aunroll_x_in_c0_eni46_28_tpl_7_notEnable_q;
    wire [0:0] redist28_sync_together243_aunroll_x_in_c0_eni46_28_tpl_7_nor_q;
    (* dont_merge *) reg [0:0] redist28_sync_together243_aunroll_x_in_c0_eni46_28_tpl_7_sticky_ena_q;
    wire [0:0] redist28_sync_together243_aunroll_x_in_c0_eni46_28_tpl_7_enaAnd_q;
    wire redist29_sync_together243_aunroll_x_in_c0_eni46_29_tpl_7_mem_reset0;
    wire [31:0] redist29_sync_together243_aunroll_x_in_c0_eni46_29_tpl_7_mem_ia;
    wire [2:0] redist29_sync_together243_aunroll_x_in_c0_eni46_29_tpl_7_mem_aa;
    wire [2:0] redist29_sync_together243_aunroll_x_in_c0_eni46_29_tpl_7_mem_ab;
    wire [31:0] redist29_sync_together243_aunroll_x_in_c0_eni46_29_tpl_7_mem_iq;
    wire [31:0] redist29_sync_together243_aunroll_x_in_c0_eni46_29_tpl_7_mem_q;
    wire [2:0] redist29_sync_together243_aunroll_x_in_c0_eni46_29_tpl_7_rdcnt_q;
    (* preserve *) reg [2:0] redist29_sync_together243_aunroll_x_in_c0_eni46_29_tpl_7_rdcnt_i;
    (* preserve *) reg redist29_sync_together243_aunroll_x_in_c0_eni46_29_tpl_7_rdcnt_eq;
    reg [2:0] redist29_sync_together243_aunroll_x_in_c0_eni46_29_tpl_7_wraddr_q;
    wire [3:0] redist29_sync_together243_aunroll_x_in_c0_eni46_29_tpl_7_mem_last_q;
    wire [3:0] redist29_sync_together243_aunroll_x_in_c0_eni46_29_tpl_7_cmp_b;
    wire [0:0] redist29_sync_together243_aunroll_x_in_c0_eni46_29_tpl_7_cmp_q;
    (* dont_merge *) reg [0:0] redist29_sync_together243_aunroll_x_in_c0_eni46_29_tpl_7_cmpReg_q;
    wire [0:0] redist29_sync_together243_aunroll_x_in_c0_eni46_29_tpl_7_notEnable_q;
    wire [0:0] redist29_sync_together243_aunroll_x_in_c0_eni46_29_tpl_7_nor_q;
    (* dont_merge *) reg [0:0] redist29_sync_together243_aunroll_x_in_c0_eni46_29_tpl_7_sticky_ena_q;
    wire [0:0] redist29_sync_together243_aunroll_x_in_c0_eni46_29_tpl_7_enaAnd_q;
    wire redist31_sync_together243_aunroll_x_in_c0_eni46_31_tpl_7_mem_reset0;
    wire [31:0] redist31_sync_together243_aunroll_x_in_c0_eni46_31_tpl_7_mem_ia;
    wire [2:0] redist31_sync_together243_aunroll_x_in_c0_eni46_31_tpl_7_mem_aa;
    wire [2:0] redist31_sync_together243_aunroll_x_in_c0_eni46_31_tpl_7_mem_ab;
    wire [31:0] redist31_sync_together243_aunroll_x_in_c0_eni46_31_tpl_7_mem_iq;
    wire [31:0] redist31_sync_together243_aunroll_x_in_c0_eni46_31_tpl_7_mem_q;
    wire [2:0] redist31_sync_together243_aunroll_x_in_c0_eni46_31_tpl_7_rdcnt_q;
    (* preserve *) reg [2:0] redist31_sync_together243_aunroll_x_in_c0_eni46_31_tpl_7_rdcnt_i;
    (* preserve *) reg redist31_sync_together243_aunroll_x_in_c0_eni46_31_tpl_7_rdcnt_eq;
    reg [2:0] redist31_sync_together243_aunroll_x_in_c0_eni46_31_tpl_7_wraddr_q;
    wire [3:0] redist31_sync_together243_aunroll_x_in_c0_eni46_31_tpl_7_mem_last_q;
    wire [3:0] redist31_sync_together243_aunroll_x_in_c0_eni46_31_tpl_7_cmp_b;
    wire [0:0] redist31_sync_together243_aunroll_x_in_c0_eni46_31_tpl_7_cmp_q;
    (* dont_merge *) reg [0:0] redist31_sync_together243_aunroll_x_in_c0_eni46_31_tpl_7_cmpReg_q;
    wire [0:0] redist31_sync_together243_aunroll_x_in_c0_eni46_31_tpl_7_notEnable_q;
    wire [0:0] redist31_sync_together243_aunroll_x_in_c0_eni46_31_tpl_7_nor_q;
    (* dont_merge *) reg [0:0] redist31_sync_together243_aunroll_x_in_c0_eni46_31_tpl_7_sticky_ena_q;
    wire [0:0] redist31_sync_together243_aunroll_x_in_c0_eni46_31_tpl_7_enaAnd_q;
    wire redist32_sync_together243_aunroll_x_in_c0_eni46_32_tpl_7_mem_reset0;
    wire [31:0] redist32_sync_together243_aunroll_x_in_c0_eni46_32_tpl_7_mem_ia;
    wire [2:0] redist32_sync_together243_aunroll_x_in_c0_eni46_32_tpl_7_mem_aa;
    wire [2:0] redist32_sync_together243_aunroll_x_in_c0_eni46_32_tpl_7_mem_ab;
    wire [31:0] redist32_sync_together243_aunroll_x_in_c0_eni46_32_tpl_7_mem_iq;
    wire [31:0] redist32_sync_together243_aunroll_x_in_c0_eni46_32_tpl_7_mem_q;
    wire [2:0] redist32_sync_together243_aunroll_x_in_c0_eni46_32_tpl_7_rdcnt_q;
    (* preserve *) reg [2:0] redist32_sync_together243_aunroll_x_in_c0_eni46_32_tpl_7_rdcnt_i;
    (* preserve *) reg redist32_sync_together243_aunroll_x_in_c0_eni46_32_tpl_7_rdcnt_eq;
    reg [2:0] redist32_sync_together243_aunroll_x_in_c0_eni46_32_tpl_7_wraddr_q;
    wire [3:0] redist32_sync_together243_aunroll_x_in_c0_eni46_32_tpl_7_mem_last_q;
    wire [3:0] redist32_sync_together243_aunroll_x_in_c0_eni46_32_tpl_7_cmp_b;
    wire [0:0] redist32_sync_together243_aunroll_x_in_c0_eni46_32_tpl_7_cmp_q;
    (* dont_merge *) reg [0:0] redist32_sync_together243_aunroll_x_in_c0_eni46_32_tpl_7_cmpReg_q;
    wire [0:0] redist32_sync_together243_aunroll_x_in_c0_eni46_32_tpl_7_notEnable_q;
    wire [0:0] redist32_sync_together243_aunroll_x_in_c0_eni46_32_tpl_7_nor_q;
    (* dont_merge *) reg [0:0] redist32_sync_together243_aunroll_x_in_c0_eni46_32_tpl_7_sticky_ena_q;
    wire [0:0] redist32_sync_together243_aunroll_x_in_c0_eni46_32_tpl_7_enaAnd_q;
    wire redist35_sync_together243_aunroll_x_in_c0_eni46_35_tpl_7_mem_reset0;
    wire [31:0] redist35_sync_together243_aunroll_x_in_c0_eni46_35_tpl_7_mem_ia;
    wire [2:0] redist35_sync_together243_aunroll_x_in_c0_eni46_35_tpl_7_mem_aa;
    wire [2:0] redist35_sync_together243_aunroll_x_in_c0_eni46_35_tpl_7_mem_ab;
    wire [31:0] redist35_sync_together243_aunroll_x_in_c0_eni46_35_tpl_7_mem_iq;
    wire [31:0] redist35_sync_together243_aunroll_x_in_c0_eni46_35_tpl_7_mem_q;
    wire [2:0] redist35_sync_together243_aunroll_x_in_c0_eni46_35_tpl_7_rdcnt_q;
    (* preserve *) reg [2:0] redist35_sync_together243_aunroll_x_in_c0_eni46_35_tpl_7_rdcnt_i;
    (* preserve *) reg redist35_sync_together243_aunroll_x_in_c0_eni46_35_tpl_7_rdcnt_eq;
    reg [2:0] redist35_sync_together243_aunroll_x_in_c0_eni46_35_tpl_7_wraddr_q;
    wire [3:0] redist35_sync_together243_aunroll_x_in_c0_eni46_35_tpl_7_mem_last_q;
    wire [3:0] redist35_sync_together243_aunroll_x_in_c0_eni46_35_tpl_7_cmp_b;
    wire [0:0] redist35_sync_together243_aunroll_x_in_c0_eni46_35_tpl_7_cmp_q;
    (* dont_merge *) reg [0:0] redist35_sync_together243_aunroll_x_in_c0_eni46_35_tpl_7_cmpReg_q;
    wire [0:0] redist35_sync_together243_aunroll_x_in_c0_eni46_35_tpl_7_notEnable_q;
    wire [0:0] redist35_sync_together243_aunroll_x_in_c0_eni46_35_tpl_7_nor_q;
    (* dont_merge *) reg [0:0] redist35_sync_together243_aunroll_x_in_c0_eni46_35_tpl_7_sticky_ena_q;
    wire [0:0] redist35_sync_together243_aunroll_x_in_c0_eni46_35_tpl_7_enaAnd_q;
    wire redist38_sync_together243_aunroll_x_in_c0_eni46_38_tpl_7_mem_reset0;
    wire [31:0] redist38_sync_together243_aunroll_x_in_c0_eni46_38_tpl_7_mem_ia;
    wire [2:0] redist38_sync_together243_aunroll_x_in_c0_eni46_38_tpl_7_mem_aa;
    wire [2:0] redist38_sync_together243_aunroll_x_in_c0_eni46_38_tpl_7_mem_ab;
    wire [31:0] redist38_sync_together243_aunroll_x_in_c0_eni46_38_tpl_7_mem_iq;
    wire [31:0] redist38_sync_together243_aunroll_x_in_c0_eni46_38_tpl_7_mem_q;
    wire [2:0] redist38_sync_together243_aunroll_x_in_c0_eni46_38_tpl_7_rdcnt_q;
    (* preserve *) reg [2:0] redist38_sync_together243_aunroll_x_in_c0_eni46_38_tpl_7_rdcnt_i;
    (* preserve *) reg redist38_sync_together243_aunroll_x_in_c0_eni46_38_tpl_7_rdcnt_eq;
    reg [2:0] redist38_sync_together243_aunroll_x_in_c0_eni46_38_tpl_7_wraddr_q;
    wire [3:0] redist38_sync_together243_aunroll_x_in_c0_eni46_38_tpl_7_mem_last_q;
    wire [3:0] redist38_sync_together243_aunroll_x_in_c0_eni46_38_tpl_7_cmp_b;
    wire [0:0] redist38_sync_together243_aunroll_x_in_c0_eni46_38_tpl_7_cmp_q;
    (* dont_merge *) reg [0:0] redist38_sync_together243_aunroll_x_in_c0_eni46_38_tpl_7_cmpReg_q;
    wire [0:0] redist38_sync_together243_aunroll_x_in_c0_eni46_38_tpl_7_notEnable_q;
    wire [0:0] redist38_sync_together243_aunroll_x_in_c0_eni46_38_tpl_7_nor_q;
    (* dont_merge *) reg [0:0] redist38_sync_together243_aunroll_x_in_c0_eni46_38_tpl_7_sticky_ena_q;
    wire [0:0] redist38_sync_together243_aunroll_x_in_c0_eni46_38_tpl_7_enaAnd_q;
    wire redist42_sync_together243_aunroll_x_in_c0_eni46_42_tpl_7_mem_reset0;
    wire [63:0] redist42_sync_together243_aunroll_x_in_c0_eni46_42_tpl_7_mem_ia;
    wire [2:0] redist42_sync_together243_aunroll_x_in_c0_eni46_42_tpl_7_mem_aa;
    wire [2:0] redist42_sync_together243_aunroll_x_in_c0_eni46_42_tpl_7_mem_ab;
    wire [63:0] redist42_sync_together243_aunroll_x_in_c0_eni46_42_tpl_7_mem_iq;
    wire [63:0] redist42_sync_together243_aunroll_x_in_c0_eni46_42_tpl_7_mem_q;
    wire [2:0] redist42_sync_together243_aunroll_x_in_c0_eni46_42_tpl_7_rdcnt_q;
    (* preserve *) reg [2:0] redist42_sync_together243_aunroll_x_in_c0_eni46_42_tpl_7_rdcnt_i;
    (* preserve *) reg redist42_sync_together243_aunroll_x_in_c0_eni46_42_tpl_7_rdcnt_eq;
    reg [2:0] redist42_sync_together243_aunroll_x_in_c0_eni46_42_tpl_7_wraddr_q;
    wire [3:0] redist42_sync_together243_aunroll_x_in_c0_eni46_42_tpl_7_mem_last_q;
    wire [3:0] redist42_sync_together243_aunroll_x_in_c0_eni46_42_tpl_7_cmp_b;
    wire [0:0] redist42_sync_together243_aunroll_x_in_c0_eni46_42_tpl_7_cmp_q;
    (* dont_merge *) reg [0:0] redist42_sync_together243_aunroll_x_in_c0_eni46_42_tpl_7_cmpReg_q;
    wire [0:0] redist42_sync_together243_aunroll_x_in_c0_eni46_42_tpl_7_notEnable_q;
    wire [0:0] redist42_sync_together243_aunroll_x_in_c0_eni46_42_tpl_7_nor_q;
    (* dont_merge *) reg [0:0] redist42_sync_together243_aunroll_x_in_c0_eni46_42_tpl_7_sticky_ena_q;
    wire [0:0] redist42_sync_together243_aunroll_x_in_c0_eni46_42_tpl_7_enaAnd_q;
    wire redist43_sync_together243_aunroll_x_in_c0_eni46_43_tpl_7_mem_reset0;
    wire [63:0] redist43_sync_together243_aunroll_x_in_c0_eni46_43_tpl_7_mem_ia;
    wire [2:0] redist43_sync_together243_aunroll_x_in_c0_eni46_43_tpl_7_mem_aa;
    wire [2:0] redist43_sync_together243_aunroll_x_in_c0_eni46_43_tpl_7_mem_ab;
    wire [63:0] redist43_sync_together243_aunroll_x_in_c0_eni46_43_tpl_7_mem_iq;
    wire [63:0] redist43_sync_together243_aunroll_x_in_c0_eni46_43_tpl_7_mem_q;
    wire [2:0] redist43_sync_together243_aunroll_x_in_c0_eni46_43_tpl_7_rdcnt_q;
    (* preserve *) reg [2:0] redist43_sync_together243_aunroll_x_in_c0_eni46_43_tpl_7_rdcnt_i;
    (* preserve *) reg redist43_sync_together243_aunroll_x_in_c0_eni46_43_tpl_7_rdcnt_eq;
    reg [2:0] redist43_sync_together243_aunroll_x_in_c0_eni46_43_tpl_7_wraddr_q;
    wire [3:0] redist43_sync_together243_aunroll_x_in_c0_eni46_43_tpl_7_mem_last_q;
    wire [3:0] redist43_sync_together243_aunroll_x_in_c0_eni46_43_tpl_7_cmp_b;
    wire [0:0] redist43_sync_together243_aunroll_x_in_c0_eni46_43_tpl_7_cmp_q;
    (* dont_merge *) reg [0:0] redist43_sync_together243_aunroll_x_in_c0_eni46_43_tpl_7_cmpReg_q;
    wire [0:0] redist43_sync_together243_aunroll_x_in_c0_eni46_43_tpl_7_notEnable_q;
    wire [0:0] redist43_sync_together243_aunroll_x_in_c0_eni46_43_tpl_7_nor_q;
    (* dont_merge *) reg [0:0] redist43_sync_together243_aunroll_x_in_c0_eni46_43_tpl_7_sticky_ena_q;
    wire [0:0] redist43_sync_together243_aunroll_x_in_c0_eni46_43_tpl_7_enaAnd_q;
    wire redist44_sync_together243_aunroll_x_in_c0_eni46_44_tpl_7_mem_reset0;
    wire [31:0] redist44_sync_together243_aunroll_x_in_c0_eni46_44_tpl_7_mem_ia;
    wire [2:0] redist44_sync_together243_aunroll_x_in_c0_eni46_44_tpl_7_mem_aa;
    wire [2:0] redist44_sync_together243_aunroll_x_in_c0_eni46_44_tpl_7_mem_ab;
    wire [31:0] redist44_sync_together243_aunroll_x_in_c0_eni46_44_tpl_7_mem_iq;
    wire [31:0] redist44_sync_together243_aunroll_x_in_c0_eni46_44_tpl_7_mem_q;
    wire [2:0] redist44_sync_together243_aunroll_x_in_c0_eni46_44_tpl_7_rdcnt_q;
    (* preserve *) reg [2:0] redist44_sync_together243_aunroll_x_in_c0_eni46_44_tpl_7_rdcnt_i;
    (* preserve *) reg redist44_sync_together243_aunroll_x_in_c0_eni46_44_tpl_7_rdcnt_eq;
    reg [2:0] redist44_sync_together243_aunroll_x_in_c0_eni46_44_tpl_7_wraddr_q;
    wire [3:0] redist44_sync_together243_aunroll_x_in_c0_eni46_44_tpl_7_mem_last_q;
    wire [3:0] redist44_sync_together243_aunroll_x_in_c0_eni46_44_tpl_7_cmp_b;
    wire [0:0] redist44_sync_together243_aunroll_x_in_c0_eni46_44_tpl_7_cmp_q;
    (* dont_merge *) reg [0:0] redist44_sync_together243_aunroll_x_in_c0_eni46_44_tpl_7_cmpReg_q;
    wire [0:0] redist44_sync_together243_aunroll_x_in_c0_eni46_44_tpl_7_notEnable_q;
    wire [0:0] redist44_sync_together243_aunroll_x_in_c0_eni46_44_tpl_7_nor_q;
    (* dont_merge *) reg [0:0] redist44_sync_together243_aunroll_x_in_c0_eni46_44_tpl_7_sticky_ena_q;
    wire [0:0] redist44_sync_together243_aunroll_x_in_c0_eni46_44_tpl_7_enaAnd_q;
    wire redist46_sync_together243_aunroll_x_in_c0_eni46_46_tpl_7_mem_reset0;
    wire [31:0] redist46_sync_together243_aunroll_x_in_c0_eni46_46_tpl_7_mem_ia;
    wire [2:0] redist46_sync_together243_aunroll_x_in_c0_eni46_46_tpl_7_mem_aa;
    wire [2:0] redist46_sync_together243_aunroll_x_in_c0_eni46_46_tpl_7_mem_ab;
    wire [31:0] redist46_sync_together243_aunroll_x_in_c0_eni46_46_tpl_7_mem_iq;
    wire [31:0] redist46_sync_together243_aunroll_x_in_c0_eni46_46_tpl_7_mem_q;
    wire [2:0] redist46_sync_together243_aunroll_x_in_c0_eni46_46_tpl_7_rdcnt_q;
    (* preserve *) reg [2:0] redist46_sync_together243_aunroll_x_in_c0_eni46_46_tpl_7_rdcnt_i;
    (* preserve *) reg redist46_sync_together243_aunroll_x_in_c0_eni46_46_tpl_7_rdcnt_eq;
    reg [2:0] redist46_sync_together243_aunroll_x_in_c0_eni46_46_tpl_7_wraddr_q;
    wire [3:0] redist46_sync_together243_aunroll_x_in_c0_eni46_46_tpl_7_mem_last_q;
    wire [3:0] redist46_sync_together243_aunroll_x_in_c0_eni46_46_tpl_7_cmp_b;
    wire [0:0] redist46_sync_together243_aunroll_x_in_c0_eni46_46_tpl_7_cmp_q;
    (* dont_merge *) reg [0:0] redist46_sync_together243_aunroll_x_in_c0_eni46_46_tpl_7_cmpReg_q;
    wire [0:0] redist46_sync_together243_aunroll_x_in_c0_eni46_46_tpl_7_notEnable_q;
    wire [0:0] redist46_sync_together243_aunroll_x_in_c0_eni46_46_tpl_7_nor_q;
    (* dont_merge *) reg [0:0] redist46_sync_together243_aunroll_x_in_c0_eni46_46_tpl_7_sticky_ena_q;
    wire [0:0] redist46_sync_together243_aunroll_x_in_c0_eni46_46_tpl_7_enaAnd_q;
    reg [31:0] redist53_bgTrunc_i_mul39_add4_conv2d3x319_sel_x_b_3_inputreg0_q;
    wire redist58_i_llvm_fpga_pop_p1024f32_output_im_addr_068_replace_phi94_pop46_conv2d3x372_out_data_out_4_mem_reset0;
    wire [63:0] redist58_i_llvm_fpga_pop_p1024f32_output_im_addr_068_replace_phi94_pop46_conv2d3x372_out_data_out_4_mem_ia;
    wire [1:0] redist58_i_llvm_fpga_pop_p1024f32_output_im_addr_068_replace_phi94_pop46_conv2d3x372_out_data_out_4_mem_aa;
    wire [1:0] redist58_i_llvm_fpga_pop_p1024f32_output_im_addr_068_replace_phi94_pop46_conv2d3x372_out_data_out_4_mem_ab;
    wire [63:0] redist58_i_llvm_fpga_pop_p1024f32_output_im_addr_068_replace_phi94_pop46_conv2d3x372_out_data_out_4_mem_iq;
    wire [63:0] redist58_i_llvm_fpga_pop_p1024f32_output_im_addr_068_replace_phi94_pop46_conv2d3x372_out_data_out_4_mem_q;
    wire [1:0] redist58_i_llvm_fpga_pop_p1024f32_output_im_addr_068_replace_phi94_pop46_conv2d3x372_out_data_out_4_rdcnt_q;
    (* preserve *) reg [1:0] redist58_i_llvm_fpga_pop_p1024f32_output_im_addr_068_replace_phi94_pop46_conv2d3x372_out_data_out_4_rdcnt_i;
    (* preserve *) reg redist58_i_llvm_fpga_pop_p1024f32_output_im_addr_068_replace_phi94_pop46_conv2d3x372_out_data_out_4_rdcnt_eq;
    reg [1:0] redist58_i_llvm_fpga_pop_p1024f32_output_im_addr_068_replace_phi94_pop46_conv2d3x372_out_data_out_4_wraddr_q;
    wire [1:0] redist58_i_llvm_fpga_pop_p1024f32_output_im_addr_068_replace_phi94_pop46_conv2d3x372_out_data_out_4_mem_last_q;
    wire [0:0] redist58_i_llvm_fpga_pop_p1024f32_output_im_addr_068_replace_phi94_pop46_conv2d3x372_out_data_out_4_cmp_q;
    (* dont_merge *) reg [0:0] redist58_i_llvm_fpga_pop_p1024f32_output_im_addr_068_replace_phi94_pop46_conv2d3x372_out_data_out_4_cmpReg_q;
    wire [0:0] redist58_i_llvm_fpga_pop_p1024f32_output_im_addr_068_replace_phi94_pop46_conv2d3x372_out_data_out_4_notEnable_q;
    wire [0:0] redist58_i_llvm_fpga_pop_p1024f32_output_im_addr_068_replace_phi94_pop46_conv2d3x372_out_data_out_4_nor_q;
    (* dont_merge *) reg [0:0] redist58_i_llvm_fpga_pop_p1024f32_output_im_addr_068_replace_phi94_pop46_conv2d3x372_out_data_out_4_sticky_ena_q;
    wire [0:0] redist58_i_llvm_fpga_pop_p1024f32_output_im_addr_068_replace_phi94_pop46_conv2d3x372_out_data_out_4_enaAnd_q;
    wire redist60_i_llvm_fpga_pop_p1024f32_filter_weight_addr_067_replace_phi88_pop45_conv2d3x355_out_data_out_4_mem_reset0;
    wire [63:0] redist60_i_llvm_fpga_pop_p1024f32_filter_weight_addr_067_replace_phi88_pop45_conv2d3x355_out_data_out_4_mem_ia;
    wire [1:0] redist60_i_llvm_fpga_pop_p1024f32_filter_weight_addr_067_replace_phi88_pop45_conv2d3x355_out_data_out_4_mem_aa;
    wire [1:0] redist60_i_llvm_fpga_pop_p1024f32_filter_weight_addr_067_replace_phi88_pop45_conv2d3x355_out_data_out_4_mem_ab;
    wire [63:0] redist60_i_llvm_fpga_pop_p1024f32_filter_weight_addr_067_replace_phi88_pop45_conv2d3x355_out_data_out_4_mem_iq;
    wire [63:0] redist60_i_llvm_fpga_pop_p1024f32_filter_weight_addr_067_replace_phi88_pop45_conv2d3x355_out_data_out_4_mem_q;
    wire [1:0] redist60_i_llvm_fpga_pop_p1024f32_filter_weight_addr_067_replace_phi88_pop45_conv2d3x355_out_data_out_4_rdcnt_q;
    (* preserve *) reg [1:0] redist60_i_llvm_fpga_pop_p1024f32_filter_weight_addr_067_replace_phi88_pop45_conv2d3x355_out_data_out_4_rdcnt_i;
    (* preserve *) reg redist60_i_llvm_fpga_pop_p1024f32_filter_weight_addr_067_replace_phi88_pop45_conv2d3x355_out_data_out_4_rdcnt_eq;
    reg [1:0] redist60_i_llvm_fpga_pop_p1024f32_filter_weight_addr_067_replace_phi88_pop45_conv2d3x355_out_data_out_4_wraddr_q;
    wire [1:0] redist60_i_llvm_fpga_pop_p1024f32_filter_weight_addr_067_replace_phi88_pop45_conv2d3x355_out_data_out_4_mem_last_q;
    wire [0:0] redist60_i_llvm_fpga_pop_p1024f32_filter_weight_addr_067_replace_phi88_pop45_conv2d3x355_out_data_out_4_cmp_q;
    (* dont_merge *) reg [0:0] redist60_i_llvm_fpga_pop_p1024f32_filter_weight_addr_067_replace_phi88_pop45_conv2d3x355_out_data_out_4_cmpReg_q;
    wire [0:0] redist60_i_llvm_fpga_pop_p1024f32_filter_weight_addr_067_replace_phi88_pop45_conv2d3x355_out_data_out_4_notEnable_q;
    wire [0:0] redist60_i_llvm_fpga_pop_p1024f32_filter_weight_addr_067_replace_phi88_pop45_conv2d3x355_out_data_out_4_nor_q;
    (* dont_merge *) reg [0:0] redist60_i_llvm_fpga_pop_p1024f32_filter_weight_addr_067_replace_phi88_pop45_conv2d3x355_out_data_out_4_sticky_ena_q;
    wire [0:0] redist60_i_llvm_fpga_pop_p1024f32_filter_weight_addr_067_replace_phi88_pop45_conv2d3x355_out_data_out_4_enaAnd_q;
    wire redist62_i_llvm_fpga_pop_i32_sub_2146_pop56_conv2d3x388_out_data_out_3_mem_reset0;
    wire [31:0] redist62_i_llvm_fpga_pop_i32_sub_2146_pop56_conv2d3x388_out_data_out_3_mem_ia;
    wire [0:0] redist62_i_llvm_fpga_pop_i32_sub_2146_pop56_conv2d3x388_out_data_out_3_mem_aa;
    wire [0:0] redist62_i_llvm_fpga_pop_i32_sub_2146_pop56_conv2d3x388_out_data_out_3_mem_ab;
    wire [31:0] redist62_i_llvm_fpga_pop_i32_sub_2146_pop56_conv2d3x388_out_data_out_3_mem_iq;
    wire [31:0] redist62_i_llvm_fpga_pop_i32_sub_2146_pop56_conv2d3x388_out_data_out_3_mem_q;
    wire [0:0] redist62_i_llvm_fpga_pop_i32_sub_2146_pop56_conv2d3x388_out_data_out_3_rdcnt_q;
    (* preserve *) reg [0:0] redist62_i_llvm_fpga_pop_i32_sub_2146_pop56_conv2d3x388_out_data_out_3_rdcnt_i;
    reg [0:0] redist62_i_llvm_fpga_pop_i32_sub_2146_pop56_conv2d3x388_out_data_out_3_wraddr_q;
    (* dont_merge *) reg [0:0] redist62_i_llvm_fpga_pop_i32_sub_2146_pop56_conv2d3x388_out_data_out_3_cmpReg_q;
    wire [0:0] redist62_i_llvm_fpga_pop_i32_sub_2146_pop56_conv2d3x388_out_data_out_3_notEnable_q;
    wire [0:0] redist62_i_llvm_fpga_pop_i32_sub_2146_pop56_conv2d3x388_out_data_out_3_nor_q;
    (* dont_merge *) reg [0:0] redist62_i_llvm_fpga_pop_i32_sub_2146_pop56_conv2d3x388_out_data_out_3_sticky_ena_q;
    wire [0:0] redist62_i_llvm_fpga_pop_i32_sub_2146_pop56_conv2d3x388_out_data_out_3_enaAnd_q;
    wire redist63_i_llvm_fpga_pop_i32_sub_2146_pop56_conv2d3x388_out_data_out_6_mem_reset0;
    wire [31:0] redist63_i_llvm_fpga_pop_i32_sub_2146_pop56_conv2d3x388_out_data_out_6_mem_ia;
    wire [0:0] redist63_i_llvm_fpga_pop_i32_sub_2146_pop56_conv2d3x388_out_data_out_6_mem_aa;
    wire [0:0] redist63_i_llvm_fpga_pop_i32_sub_2146_pop56_conv2d3x388_out_data_out_6_mem_ab;
    wire [31:0] redist63_i_llvm_fpga_pop_i32_sub_2146_pop56_conv2d3x388_out_data_out_6_mem_iq;
    wire [31:0] redist63_i_llvm_fpga_pop_i32_sub_2146_pop56_conv2d3x388_out_data_out_6_mem_q;
    wire [0:0] redist63_i_llvm_fpga_pop_i32_sub_2146_pop56_conv2d3x388_out_data_out_6_rdcnt_q;
    (* preserve *) reg [0:0] redist63_i_llvm_fpga_pop_i32_sub_2146_pop56_conv2d3x388_out_data_out_6_rdcnt_i;
    reg [0:0] redist63_i_llvm_fpga_pop_i32_sub_2146_pop56_conv2d3x388_out_data_out_6_wraddr_q;
    (* dont_merge *) reg [0:0] redist63_i_llvm_fpga_pop_i32_sub_2146_pop56_conv2d3x388_out_data_out_6_cmpReg_q;
    wire [0:0] redist63_i_llvm_fpga_pop_i32_sub_2146_pop56_conv2d3x388_out_data_out_6_notEnable_q;
    wire [0:0] redist63_i_llvm_fpga_pop_i32_sub_2146_pop56_conv2d3x388_out_data_out_6_nor_q;
    (* dont_merge *) reg [0:0] redist63_i_llvm_fpga_pop_i32_sub_2146_pop56_conv2d3x388_out_data_out_6_sticky_ena_q;
    wire [0:0] redist63_i_llvm_fpga_pop_i32_sub_2146_pop56_conv2d3x388_out_data_out_6_enaAnd_q;
    wire redist64_i_llvm_fpga_pop_i32_sub_1131_pop53_conv2d3x382_out_data_out_3_mem_reset0;
    wire [31:0] redist64_i_llvm_fpga_pop_i32_sub_1131_pop53_conv2d3x382_out_data_out_3_mem_ia;
    wire [0:0] redist64_i_llvm_fpga_pop_i32_sub_1131_pop53_conv2d3x382_out_data_out_3_mem_aa;
    wire [0:0] redist64_i_llvm_fpga_pop_i32_sub_1131_pop53_conv2d3x382_out_data_out_3_mem_ab;
    wire [31:0] redist64_i_llvm_fpga_pop_i32_sub_1131_pop53_conv2d3x382_out_data_out_3_mem_iq;
    wire [31:0] redist64_i_llvm_fpga_pop_i32_sub_1131_pop53_conv2d3x382_out_data_out_3_mem_q;
    wire [0:0] redist64_i_llvm_fpga_pop_i32_sub_1131_pop53_conv2d3x382_out_data_out_3_rdcnt_q;
    (* preserve *) reg [0:0] redist64_i_llvm_fpga_pop_i32_sub_1131_pop53_conv2d3x382_out_data_out_3_rdcnt_i;
    reg [0:0] redist64_i_llvm_fpga_pop_i32_sub_1131_pop53_conv2d3x382_out_data_out_3_wraddr_q;
    (* dont_merge *) reg [0:0] redist64_i_llvm_fpga_pop_i32_sub_1131_pop53_conv2d3x382_out_data_out_3_cmpReg_q;
    wire [0:0] redist64_i_llvm_fpga_pop_i32_sub_1131_pop53_conv2d3x382_out_data_out_3_notEnable_q;
    wire [0:0] redist64_i_llvm_fpga_pop_i32_sub_1131_pop53_conv2d3x382_out_data_out_3_nor_q;
    (* dont_merge *) reg [0:0] redist64_i_llvm_fpga_pop_i32_sub_1131_pop53_conv2d3x382_out_data_out_3_sticky_ena_q;
    wire [0:0] redist64_i_llvm_fpga_pop_i32_sub_1131_pop53_conv2d3x382_out_data_out_3_enaAnd_q;
    wire redist65_i_llvm_fpga_pop_i32_sub_1131_pop53_conv2d3x382_out_data_out_6_mem_reset0;
    wire [31:0] redist65_i_llvm_fpga_pop_i32_sub_1131_pop53_conv2d3x382_out_data_out_6_mem_ia;
    wire [0:0] redist65_i_llvm_fpga_pop_i32_sub_1131_pop53_conv2d3x382_out_data_out_6_mem_aa;
    wire [0:0] redist65_i_llvm_fpga_pop_i32_sub_1131_pop53_conv2d3x382_out_data_out_6_mem_ab;
    wire [31:0] redist65_i_llvm_fpga_pop_i32_sub_1131_pop53_conv2d3x382_out_data_out_6_mem_iq;
    wire [31:0] redist65_i_llvm_fpga_pop_i32_sub_1131_pop53_conv2d3x382_out_data_out_6_mem_q;
    wire [0:0] redist65_i_llvm_fpga_pop_i32_sub_1131_pop53_conv2d3x382_out_data_out_6_rdcnt_q;
    (* preserve *) reg [0:0] redist65_i_llvm_fpga_pop_i32_sub_1131_pop53_conv2d3x382_out_data_out_6_rdcnt_i;
    reg [0:0] redist65_i_llvm_fpga_pop_i32_sub_1131_pop53_conv2d3x382_out_data_out_6_wraddr_q;
    (* dont_merge *) reg [0:0] redist65_i_llvm_fpga_pop_i32_sub_1131_pop53_conv2d3x382_out_data_out_6_cmpReg_q;
    wire [0:0] redist65_i_llvm_fpga_pop_i32_sub_1131_pop53_conv2d3x382_out_data_out_6_notEnable_q;
    wire [0:0] redist65_i_llvm_fpga_pop_i32_sub_1131_pop53_conv2d3x382_out_data_out_6_nor_q;
    (* dont_merge *) reg [0:0] redist65_i_llvm_fpga_pop_i32_sub_1131_pop53_conv2d3x382_out_data_out_6_sticky_ena_q;
    wire [0:0] redist65_i_llvm_fpga_pop_i32_sub_1131_pop53_conv2d3x382_out_data_out_6_enaAnd_q;
    wire redist66_i_llvm_fpga_pop_i32_stride_sync_buffer164_pop60_conv2d3x320_out_data_out_3_mem_reset0;
    wire [31:0] redist66_i_llvm_fpga_pop_i32_stride_sync_buffer164_pop60_conv2d3x320_out_data_out_3_mem_ia;
    wire [0:0] redist66_i_llvm_fpga_pop_i32_stride_sync_buffer164_pop60_conv2d3x320_out_data_out_3_mem_aa;
    wire [0:0] redist66_i_llvm_fpga_pop_i32_stride_sync_buffer164_pop60_conv2d3x320_out_data_out_3_mem_ab;
    wire [31:0] redist66_i_llvm_fpga_pop_i32_stride_sync_buffer164_pop60_conv2d3x320_out_data_out_3_mem_iq;
    wire [31:0] redist66_i_llvm_fpga_pop_i32_stride_sync_buffer164_pop60_conv2d3x320_out_data_out_3_mem_q;
    wire [0:0] redist66_i_llvm_fpga_pop_i32_stride_sync_buffer164_pop60_conv2d3x320_out_data_out_3_rdcnt_q;
    (* preserve *) reg [0:0] redist66_i_llvm_fpga_pop_i32_stride_sync_buffer164_pop60_conv2d3x320_out_data_out_3_rdcnt_i;
    reg [0:0] redist66_i_llvm_fpga_pop_i32_stride_sync_buffer164_pop60_conv2d3x320_out_data_out_3_wraddr_q;
    (* dont_merge *) reg [0:0] redist66_i_llvm_fpga_pop_i32_stride_sync_buffer164_pop60_conv2d3x320_out_data_out_3_cmpReg_q;
    wire [0:0] redist66_i_llvm_fpga_pop_i32_stride_sync_buffer164_pop60_conv2d3x320_out_data_out_3_notEnable_q;
    wire [0:0] redist66_i_llvm_fpga_pop_i32_stride_sync_buffer164_pop60_conv2d3x320_out_data_out_3_nor_q;
    (* dont_merge *) reg [0:0] redist66_i_llvm_fpga_pop_i32_stride_sync_buffer164_pop60_conv2d3x320_out_data_out_3_sticky_ena_q;
    wire [0:0] redist66_i_llvm_fpga_pop_i32_stride_sync_buffer164_pop60_conv2d3x320_out_data_out_3_enaAnd_q;
    wire redist67_i_llvm_fpga_pop_i32_stride_sync_buffer164_pop60_conv2d3x320_out_data_out_6_mem_reset0;
    wire [31:0] redist67_i_llvm_fpga_pop_i32_stride_sync_buffer164_pop60_conv2d3x320_out_data_out_6_mem_ia;
    wire [0:0] redist67_i_llvm_fpga_pop_i32_stride_sync_buffer164_pop60_conv2d3x320_out_data_out_6_mem_aa;
    wire [0:0] redist67_i_llvm_fpga_pop_i32_stride_sync_buffer164_pop60_conv2d3x320_out_data_out_6_mem_ab;
    wire [31:0] redist67_i_llvm_fpga_pop_i32_stride_sync_buffer164_pop60_conv2d3x320_out_data_out_6_mem_iq;
    wire [31:0] redist67_i_llvm_fpga_pop_i32_stride_sync_buffer164_pop60_conv2d3x320_out_data_out_6_mem_q;
    wire [0:0] redist67_i_llvm_fpga_pop_i32_stride_sync_buffer164_pop60_conv2d3x320_out_data_out_6_rdcnt_q;
    (* preserve *) reg [0:0] redist67_i_llvm_fpga_pop_i32_stride_sync_buffer164_pop60_conv2d3x320_out_data_out_6_rdcnt_i;
    reg [0:0] redist67_i_llvm_fpga_pop_i32_stride_sync_buffer164_pop60_conv2d3x320_out_data_out_6_wraddr_q;
    (* dont_merge *) reg [0:0] redist67_i_llvm_fpga_pop_i32_stride_sync_buffer164_pop60_conv2d3x320_out_data_out_6_cmpReg_q;
    wire [0:0] redist67_i_llvm_fpga_pop_i32_stride_sync_buffer164_pop60_conv2d3x320_out_data_out_6_notEnable_q;
    wire [0:0] redist67_i_llvm_fpga_pop_i32_stride_sync_buffer164_pop60_conv2d3x320_out_data_out_6_nor_q;
    (* dont_merge *) reg [0:0] redist67_i_llvm_fpga_pop_i32_stride_sync_buffer164_pop60_conv2d3x320_out_data_out_6_sticky_ena_q;
    wire [0:0] redist67_i_llvm_fpga_pop_i32_stride_sync_buffer164_pop60_conv2d3x320_out_data_out_6_enaAnd_q;
    wire redist70_i_llvm_fpga_pop_i32_mul56116_pop50_conv2d3x380_out_data_out_3_mem_reset0;
    wire [31:0] redist70_i_llvm_fpga_pop_i32_mul56116_pop50_conv2d3x380_out_data_out_3_mem_ia;
    wire [0:0] redist70_i_llvm_fpga_pop_i32_mul56116_pop50_conv2d3x380_out_data_out_3_mem_aa;
    wire [0:0] redist70_i_llvm_fpga_pop_i32_mul56116_pop50_conv2d3x380_out_data_out_3_mem_ab;
    wire [31:0] redist70_i_llvm_fpga_pop_i32_mul56116_pop50_conv2d3x380_out_data_out_3_mem_iq;
    wire [31:0] redist70_i_llvm_fpga_pop_i32_mul56116_pop50_conv2d3x380_out_data_out_3_mem_q;
    wire [0:0] redist70_i_llvm_fpga_pop_i32_mul56116_pop50_conv2d3x380_out_data_out_3_rdcnt_q;
    (* preserve *) reg [0:0] redist70_i_llvm_fpga_pop_i32_mul56116_pop50_conv2d3x380_out_data_out_3_rdcnt_i;
    reg [0:0] redist70_i_llvm_fpga_pop_i32_mul56116_pop50_conv2d3x380_out_data_out_3_wraddr_q;
    (* dont_merge *) reg [0:0] redist70_i_llvm_fpga_pop_i32_mul56116_pop50_conv2d3x380_out_data_out_3_cmpReg_q;
    wire [0:0] redist70_i_llvm_fpga_pop_i32_mul56116_pop50_conv2d3x380_out_data_out_3_notEnable_q;
    wire [0:0] redist70_i_llvm_fpga_pop_i32_mul56116_pop50_conv2d3x380_out_data_out_3_nor_q;
    (* dont_merge *) reg [0:0] redist70_i_llvm_fpga_pop_i32_mul56116_pop50_conv2d3x380_out_data_out_3_sticky_ena_q;
    wire [0:0] redist70_i_llvm_fpga_pop_i32_mul56116_pop50_conv2d3x380_out_data_out_3_enaAnd_q;
    wire redist71_i_llvm_fpga_pop_i32_mul56116_pop50_conv2d3x380_out_data_out_6_mem_reset0;
    wire [31:0] redist71_i_llvm_fpga_pop_i32_mul56116_pop50_conv2d3x380_out_data_out_6_mem_ia;
    wire [0:0] redist71_i_llvm_fpga_pop_i32_mul56116_pop50_conv2d3x380_out_data_out_6_mem_aa;
    wire [0:0] redist71_i_llvm_fpga_pop_i32_mul56116_pop50_conv2d3x380_out_data_out_6_mem_ab;
    wire [31:0] redist71_i_llvm_fpga_pop_i32_mul56116_pop50_conv2d3x380_out_data_out_6_mem_iq;
    wire [31:0] redist71_i_llvm_fpga_pop_i32_mul56116_pop50_conv2d3x380_out_data_out_6_mem_q;
    wire [0:0] redist71_i_llvm_fpga_pop_i32_mul56116_pop50_conv2d3x380_out_data_out_6_rdcnt_q;
    (* preserve *) reg [0:0] redist71_i_llvm_fpga_pop_i32_mul56116_pop50_conv2d3x380_out_data_out_6_rdcnt_i;
    reg [0:0] redist71_i_llvm_fpga_pop_i32_mul56116_pop50_conv2d3x380_out_data_out_6_wraddr_q;
    (* dont_merge *) reg [0:0] redist71_i_llvm_fpga_pop_i32_mul56116_pop50_conv2d3x380_out_data_out_6_cmpReg_q;
    wire [0:0] redist71_i_llvm_fpga_pop_i32_mul56116_pop50_conv2d3x380_out_data_out_6_notEnable_q;
    wire [0:0] redist71_i_llvm_fpga_pop_i32_mul56116_pop50_conv2d3x380_out_data_out_6_nor_q;
    (* dont_merge *) reg [0:0] redist71_i_llvm_fpga_pop_i32_mul56116_pop50_conv2d3x380_out_data_out_6_sticky_ena_q;
    wire [0:0] redist71_i_llvm_fpga_pop_i32_mul56116_pop50_conv2d3x380_out_data_out_6_enaAnd_q;
    wire redist72_i_llvm_fpga_pop_i32_mul32181_pop66_conv2d3x398_out_data_out_3_mem_reset0;
    wire [31:0] redist72_i_llvm_fpga_pop_i32_mul32181_pop66_conv2d3x398_out_data_out_3_mem_ia;
    wire [0:0] redist72_i_llvm_fpga_pop_i32_mul32181_pop66_conv2d3x398_out_data_out_3_mem_aa;
    wire [0:0] redist72_i_llvm_fpga_pop_i32_mul32181_pop66_conv2d3x398_out_data_out_3_mem_ab;
    wire [31:0] redist72_i_llvm_fpga_pop_i32_mul32181_pop66_conv2d3x398_out_data_out_3_mem_iq;
    wire [31:0] redist72_i_llvm_fpga_pop_i32_mul32181_pop66_conv2d3x398_out_data_out_3_mem_q;
    wire [0:0] redist72_i_llvm_fpga_pop_i32_mul32181_pop66_conv2d3x398_out_data_out_3_rdcnt_q;
    (* preserve *) reg [0:0] redist72_i_llvm_fpga_pop_i32_mul32181_pop66_conv2d3x398_out_data_out_3_rdcnt_i;
    reg [0:0] redist72_i_llvm_fpga_pop_i32_mul32181_pop66_conv2d3x398_out_data_out_3_wraddr_q;
    (* dont_merge *) reg [0:0] redist72_i_llvm_fpga_pop_i32_mul32181_pop66_conv2d3x398_out_data_out_3_cmpReg_q;
    wire [0:0] redist72_i_llvm_fpga_pop_i32_mul32181_pop66_conv2d3x398_out_data_out_3_notEnable_q;
    wire [0:0] redist72_i_llvm_fpga_pop_i32_mul32181_pop66_conv2d3x398_out_data_out_3_nor_q;
    (* dont_merge *) reg [0:0] redist72_i_llvm_fpga_pop_i32_mul32181_pop66_conv2d3x398_out_data_out_3_sticky_ena_q;
    wire [0:0] redist72_i_llvm_fpga_pop_i32_mul32181_pop66_conv2d3x398_out_data_out_3_enaAnd_q;
    wire redist73_i_llvm_fpga_pop_i32_mul32181_pop66_conv2d3x398_out_data_out_6_mem_reset0;
    wire [31:0] redist73_i_llvm_fpga_pop_i32_mul32181_pop66_conv2d3x398_out_data_out_6_mem_ia;
    wire [0:0] redist73_i_llvm_fpga_pop_i32_mul32181_pop66_conv2d3x398_out_data_out_6_mem_aa;
    wire [0:0] redist73_i_llvm_fpga_pop_i32_mul32181_pop66_conv2d3x398_out_data_out_6_mem_ab;
    wire [31:0] redist73_i_llvm_fpga_pop_i32_mul32181_pop66_conv2d3x398_out_data_out_6_mem_iq;
    wire [31:0] redist73_i_llvm_fpga_pop_i32_mul32181_pop66_conv2d3x398_out_data_out_6_mem_q;
    wire [0:0] redist73_i_llvm_fpga_pop_i32_mul32181_pop66_conv2d3x398_out_data_out_6_rdcnt_q;
    (* preserve *) reg [0:0] redist73_i_llvm_fpga_pop_i32_mul32181_pop66_conv2d3x398_out_data_out_6_rdcnt_i;
    reg [0:0] redist73_i_llvm_fpga_pop_i32_mul32181_pop66_conv2d3x398_out_data_out_6_wraddr_q;
    (* dont_merge *) reg [0:0] redist73_i_llvm_fpga_pop_i32_mul32181_pop66_conv2d3x398_out_data_out_6_cmpReg_q;
    wire [0:0] redist73_i_llvm_fpga_pop_i32_mul32181_pop66_conv2d3x398_out_data_out_6_notEnable_q;
    wire [0:0] redist73_i_llvm_fpga_pop_i32_mul32181_pop66_conv2d3x398_out_data_out_6_nor_q;
    (* dont_merge *) reg [0:0] redist73_i_llvm_fpga_pop_i32_mul32181_pop66_conv2d3x398_out_data_out_6_sticky_ena_q;
    wire [0:0] redist73_i_llvm_fpga_pop_i32_mul32181_pop66_conv2d3x398_out_data_out_6_enaAnd_q;
    reg [31:0] redist76_i_llvm_fpga_pop_i32_k_059180_pop64_conv2d3x316_out_data_out_3_outputreg0_q;
    wire redist77_i_llvm_fpga_pop_i32_j_061_pop24176_pop63_conv2d3x322_out_data_out_3_mem_reset0;
    wire [31:0] redist77_i_llvm_fpga_pop_i32_j_061_pop24176_pop63_conv2d3x322_out_data_out_3_mem_ia;
    wire [0:0] redist77_i_llvm_fpga_pop_i32_j_061_pop24176_pop63_conv2d3x322_out_data_out_3_mem_aa;
    wire [0:0] redist77_i_llvm_fpga_pop_i32_j_061_pop24176_pop63_conv2d3x322_out_data_out_3_mem_ab;
    wire [31:0] redist77_i_llvm_fpga_pop_i32_j_061_pop24176_pop63_conv2d3x322_out_data_out_3_mem_iq;
    wire [31:0] redist77_i_llvm_fpga_pop_i32_j_061_pop24176_pop63_conv2d3x322_out_data_out_3_mem_q;
    wire [0:0] redist77_i_llvm_fpga_pop_i32_j_061_pop24176_pop63_conv2d3x322_out_data_out_3_rdcnt_q;
    (* preserve *) reg [0:0] redist77_i_llvm_fpga_pop_i32_j_061_pop24176_pop63_conv2d3x322_out_data_out_3_rdcnt_i;
    reg [0:0] redist77_i_llvm_fpga_pop_i32_j_061_pop24176_pop63_conv2d3x322_out_data_out_3_wraddr_q;
    (* dont_merge *) reg [0:0] redist77_i_llvm_fpga_pop_i32_j_061_pop24176_pop63_conv2d3x322_out_data_out_3_cmpReg_q;
    wire [0:0] redist77_i_llvm_fpga_pop_i32_j_061_pop24176_pop63_conv2d3x322_out_data_out_3_notEnable_q;
    wire [0:0] redist77_i_llvm_fpga_pop_i32_j_061_pop24176_pop63_conv2d3x322_out_data_out_3_nor_q;
    (* dont_merge *) reg [0:0] redist77_i_llvm_fpga_pop_i32_j_061_pop24176_pop63_conv2d3x322_out_data_out_3_sticky_ena_q;
    wire [0:0] redist77_i_llvm_fpga_pop_i32_j_061_pop24176_pop63_conv2d3x322_out_data_out_3_enaAnd_q;
    wire redist78_i_llvm_fpga_pop_i32_j_061_pop24176_pop63_conv2d3x322_out_data_out_6_mem_reset0;
    wire [31:0] redist78_i_llvm_fpga_pop_i32_j_061_pop24176_pop63_conv2d3x322_out_data_out_6_mem_ia;
    wire [0:0] redist78_i_llvm_fpga_pop_i32_j_061_pop24176_pop63_conv2d3x322_out_data_out_6_mem_aa;
    wire [0:0] redist78_i_llvm_fpga_pop_i32_j_061_pop24176_pop63_conv2d3x322_out_data_out_6_mem_ab;
    wire [31:0] redist78_i_llvm_fpga_pop_i32_j_061_pop24176_pop63_conv2d3x322_out_data_out_6_mem_iq;
    wire [31:0] redist78_i_llvm_fpga_pop_i32_j_061_pop24176_pop63_conv2d3x322_out_data_out_6_mem_q;
    wire [0:0] redist78_i_llvm_fpga_pop_i32_j_061_pop24176_pop63_conv2d3x322_out_data_out_6_rdcnt_q;
    (* preserve *) reg [0:0] redist78_i_llvm_fpga_pop_i32_j_061_pop24176_pop63_conv2d3x322_out_data_out_6_rdcnt_i;
    reg [0:0] redist78_i_llvm_fpga_pop_i32_j_061_pop24176_pop63_conv2d3x322_out_data_out_6_wraddr_q;
    (* dont_merge *) reg [0:0] redist78_i_llvm_fpga_pop_i32_j_061_pop24176_pop63_conv2d3x322_out_data_out_6_cmpReg_q;
    wire [0:0] redist78_i_llvm_fpga_pop_i32_j_061_pop24176_pop63_conv2d3x322_out_data_out_6_notEnable_q;
    wire [0:0] redist78_i_llvm_fpga_pop_i32_j_061_pop24176_pop63_conv2d3x322_out_data_out_6_nor_q;
    (* dont_merge *) reg [0:0] redist78_i_llvm_fpga_pop_i32_j_061_pop24176_pop63_conv2d3x322_out_data_out_6_sticky_ena_q;
    wire [0:0] redist78_i_llvm_fpga_pop_i32_j_061_pop24176_pop63_conv2d3x322_out_data_out_6_enaAnd_q;
    wire redist79_i_llvm_fpga_pop_i32_inc50184_pop68_conv2d3x3100_out_data_out_3_mem_reset0;
    wire [31:0] redist79_i_llvm_fpga_pop_i32_inc50184_pop68_conv2d3x3100_out_data_out_3_mem_ia;
    wire [0:0] redist79_i_llvm_fpga_pop_i32_inc50184_pop68_conv2d3x3100_out_data_out_3_mem_aa;
    wire [0:0] redist79_i_llvm_fpga_pop_i32_inc50184_pop68_conv2d3x3100_out_data_out_3_mem_ab;
    wire [31:0] redist79_i_llvm_fpga_pop_i32_inc50184_pop68_conv2d3x3100_out_data_out_3_mem_iq;
    wire [31:0] redist79_i_llvm_fpga_pop_i32_inc50184_pop68_conv2d3x3100_out_data_out_3_mem_q;
    wire [0:0] redist79_i_llvm_fpga_pop_i32_inc50184_pop68_conv2d3x3100_out_data_out_3_rdcnt_q;
    (* preserve *) reg [0:0] redist79_i_llvm_fpga_pop_i32_inc50184_pop68_conv2d3x3100_out_data_out_3_rdcnt_i;
    reg [0:0] redist79_i_llvm_fpga_pop_i32_inc50184_pop68_conv2d3x3100_out_data_out_3_wraddr_q;
    (* dont_merge *) reg [0:0] redist79_i_llvm_fpga_pop_i32_inc50184_pop68_conv2d3x3100_out_data_out_3_cmpReg_q;
    wire [0:0] redist79_i_llvm_fpga_pop_i32_inc50184_pop68_conv2d3x3100_out_data_out_3_notEnable_q;
    wire [0:0] redist79_i_llvm_fpga_pop_i32_inc50184_pop68_conv2d3x3100_out_data_out_3_nor_q;
    (* dont_merge *) reg [0:0] redist79_i_llvm_fpga_pop_i32_inc50184_pop68_conv2d3x3100_out_data_out_3_sticky_ena_q;
    wire [0:0] redist79_i_llvm_fpga_pop_i32_inc50184_pop68_conv2d3x3100_out_data_out_3_enaAnd_q;
    wire redist80_i_llvm_fpga_pop_i32_inc50184_pop68_conv2d3x3100_out_data_out_6_mem_reset0;
    wire [31:0] redist80_i_llvm_fpga_pop_i32_inc50184_pop68_conv2d3x3100_out_data_out_6_mem_ia;
    wire [0:0] redist80_i_llvm_fpga_pop_i32_inc50184_pop68_conv2d3x3100_out_data_out_6_mem_aa;
    wire [0:0] redist80_i_llvm_fpga_pop_i32_inc50184_pop68_conv2d3x3100_out_data_out_6_mem_ab;
    wire [31:0] redist80_i_llvm_fpga_pop_i32_inc50184_pop68_conv2d3x3100_out_data_out_6_mem_iq;
    wire [31:0] redist80_i_llvm_fpga_pop_i32_inc50184_pop68_conv2d3x3100_out_data_out_6_mem_q;
    wire [0:0] redist80_i_llvm_fpga_pop_i32_inc50184_pop68_conv2d3x3100_out_data_out_6_rdcnt_q;
    (* preserve *) reg [0:0] redist80_i_llvm_fpga_pop_i32_inc50184_pop68_conv2d3x3100_out_data_out_6_rdcnt_i;
    reg [0:0] redist80_i_llvm_fpga_pop_i32_inc50184_pop68_conv2d3x3100_out_data_out_6_wraddr_q;
    (* dont_merge *) reg [0:0] redist80_i_llvm_fpga_pop_i32_inc50184_pop68_conv2d3x3100_out_data_out_6_cmpReg_q;
    wire [0:0] redist80_i_llvm_fpga_pop_i32_inc50184_pop68_conv2d3x3100_out_data_out_6_notEnable_q;
    wire [0:0] redist80_i_llvm_fpga_pop_i32_inc50184_pop68_conv2d3x3100_out_data_out_6_nor_q;
    (* dont_merge *) reg [0:0] redist80_i_llvm_fpga_pop_i32_inc50184_pop68_conv2d3x3100_out_data_out_6_sticky_ena_q;
    wire [0:0] redist80_i_llvm_fpga_pop_i32_inc50184_pop68_conv2d3x3100_out_data_out_6_enaAnd_q;
    wire redist81_i_llvm_fpga_pop_i32_add35183_pop67_conv2d3x335_out_data_out_3_mem_reset0;
    wire [31:0] redist81_i_llvm_fpga_pop_i32_add35183_pop67_conv2d3x335_out_data_out_3_mem_ia;
    wire [0:0] redist81_i_llvm_fpga_pop_i32_add35183_pop67_conv2d3x335_out_data_out_3_mem_aa;
    wire [0:0] redist81_i_llvm_fpga_pop_i32_add35183_pop67_conv2d3x335_out_data_out_3_mem_ab;
    wire [31:0] redist81_i_llvm_fpga_pop_i32_add35183_pop67_conv2d3x335_out_data_out_3_mem_iq;
    wire [31:0] redist81_i_llvm_fpga_pop_i32_add35183_pop67_conv2d3x335_out_data_out_3_mem_q;
    wire [0:0] redist81_i_llvm_fpga_pop_i32_add35183_pop67_conv2d3x335_out_data_out_3_rdcnt_q;
    (* preserve *) reg [0:0] redist81_i_llvm_fpga_pop_i32_add35183_pop67_conv2d3x335_out_data_out_3_rdcnt_i;
    reg [0:0] redist81_i_llvm_fpga_pop_i32_add35183_pop67_conv2d3x335_out_data_out_3_wraddr_q;
    (* dont_merge *) reg [0:0] redist81_i_llvm_fpga_pop_i32_add35183_pop67_conv2d3x335_out_data_out_3_cmpReg_q;
    wire [0:0] redist81_i_llvm_fpga_pop_i32_add35183_pop67_conv2d3x335_out_data_out_3_notEnable_q;
    wire [0:0] redist81_i_llvm_fpga_pop_i32_add35183_pop67_conv2d3x335_out_data_out_3_nor_q;
    (* dont_merge *) reg [0:0] redist81_i_llvm_fpga_pop_i32_add35183_pop67_conv2d3x335_out_data_out_3_sticky_ena_q;
    wire [0:0] redist81_i_llvm_fpga_pop_i32_add35183_pop67_conv2d3x335_out_data_out_3_enaAnd_q;
    wire redist83_i_llvm_fpga_pop_i32_add111_pop49_conv2d3x378_out_data_out_3_mem_reset0;
    wire [31:0] redist83_i_llvm_fpga_pop_i32_add111_pop49_conv2d3x378_out_data_out_3_mem_ia;
    wire [0:0] redist83_i_llvm_fpga_pop_i32_add111_pop49_conv2d3x378_out_data_out_3_mem_aa;
    wire [0:0] redist83_i_llvm_fpga_pop_i32_add111_pop49_conv2d3x378_out_data_out_3_mem_ab;
    wire [31:0] redist83_i_llvm_fpga_pop_i32_add111_pop49_conv2d3x378_out_data_out_3_mem_iq;
    wire [31:0] redist83_i_llvm_fpga_pop_i32_add111_pop49_conv2d3x378_out_data_out_3_mem_q;
    wire [0:0] redist83_i_llvm_fpga_pop_i32_add111_pop49_conv2d3x378_out_data_out_3_rdcnt_q;
    (* preserve *) reg [0:0] redist83_i_llvm_fpga_pop_i32_add111_pop49_conv2d3x378_out_data_out_3_rdcnt_i;
    reg [0:0] redist83_i_llvm_fpga_pop_i32_add111_pop49_conv2d3x378_out_data_out_3_wraddr_q;
    (* dont_merge *) reg [0:0] redist83_i_llvm_fpga_pop_i32_add111_pop49_conv2d3x378_out_data_out_3_cmpReg_q;
    wire [0:0] redist83_i_llvm_fpga_pop_i32_add111_pop49_conv2d3x378_out_data_out_3_notEnable_q;
    wire [0:0] redist83_i_llvm_fpga_pop_i32_add111_pop49_conv2d3x378_out_data_out_3_nor_q;
    (* dont_merge *) reg [0:0] redist83_i_llvm_fpga_pop_i32_add111_pop49_conv2d3x378_out_data_out_3_sticky_ena_q;
    wire [0:0] redist83_i_llvm_fpga_pop_i32_add111_pop49_conv2d3x378_out_data_out_3_enaAnd_q;
    wire redist84_i_llvm_fpga_pop_i32_add111_pop49_conv2d3x378_out_data_out_6_mem_reset0;
    wire [31:0] redist84_i_llvm_fpga_pop_i32_add111_pop49_conv2d3x378_out_data_out_6_mem_ia;
    wire [0:0] redist84_i_llvm_fpga_pop_i32_add111_pop49_conv2d3x378_out_data_out_6_mem_aa;
    wire [0:0] redist84_i_llvm_fpga_pop_i32_add111_pop49_conv2d3x378_out_data_out_6_mem_ab;
    wire [31:0] redist84_i_llvm_fpga_pop_i32_add111_pop49_conv2d3x378_out_data_out_6_mem_iq;
    wire [31:0] redist84_i_llvm_fpga_pop_i32_add111_pop49_conv2d3x378_out_data_out_6_mem_q;
    wire [0:0] redist84_i_llvm_fpga_pop_i32_add111_pop49_conv2d3x378_out_data_out_6_rdcnt_q;
    (* preserve *) reg [0:0] redist84_i_llvm_fpga_pop_i32_add111_pop49_conv2d3x378_out_data_out_6_rdcnt_i;
    reg [0:0] redist84_i_llvm_fpga_pop_i32_add111_pop49_conv2d3x378_out_data_out_6_wraddr_q;
    (* dont_merge *) reg [0:0] redist84_i_llvm_fpga_pop_i32_add111_pop49_conv2d3x378_out_data_out_6_cmpReg_q;
    wire [0:0] redist84_i_llvm_fpga_pop_i32_add111_pop49_conv2d3x378_out_data_out_6_notEnable_q;
    wire [0:0] redist84_i_llvm_fpga_pop_i32_add111_pop49_conv2d3x378_out_data_out_6_nor_q;
    (* dont_merge *) reg [0:0] redist84_i_llvm_fpga_pop_i32_add111_pop49_conv2d3x378_out_data_out_6_sticky_ena_q;
    wire [0:0] redist84_i_llvm_fpga_pop_i32_add111_pop49_conv2d3x378_out_data_out_6_enaAnd_q;
    wire redist97_i_llvm_fpga_pop_f32_lm25100_pop47_conv2d3x374_out_data_out_3_mem_reset0;
    wire [31:0] redist97_i_llvm_fpga_pop_f32_lm25100_pop47_conv2d3x374_out_data_out_3_mem_ia;
    wire [0:0] redist97_i_llvm_fpga_pop_f32_lm25100_pop47_conv2d3x374_out_data_out_3_mem_aa;
    wire [0:0] redist97_i_llvm_fpga_pop_f32_lm25100_pop47_conv2d3x374_out_data_out_3_mem_ab;
    wire [31:0] redist97_i_llvm_fpga_pop_f32_lm25100_pop47_conv2d3x374_out_data_out_3_mem_iq;
    wire [31:0] redist97_i_llvm_fpga_pop_f32_lm25100_pop47_conv2d3x374_out_data_out_3_mem_q;
    wire [0:0] redist97_i_llvm_fpga_pop_f32_lm25100_pop47_conv2d3x374_out_data_out_3_rdcnt_q;
    (* preserve *) reg [0:0] redist97_i_llvm_fpga_pop_f32_lm25100_pop47_conv2d3x374_out_data_out_3_rdcnt_i;
    reg [0:0] redist97_i_llvm_fpga_pop_f32_lm25100_pop47_conv2d3x374_out_data_out_3_wraddr_q;
    (* dont_merge *) reg [0:0] redist97_i_llvm_fpga_pop_f32_lm25100_pop47_conv2d3x374_out_data_out_3_cmpReg_q;
    wire [0:0] redist97_i_llvm_fpga_pop_f32_lm25100_pop47_conv2d3x374_out_data_out_3_notEnable_q;
    wire [0:0] redist97_i_llvm_fpga_pop_f32_lm25100_pop47_conv2d3x374_out_data_out_3_nor_q;
    (* dont_merge *) reg [0:0] redist97_i_llvm_fpga_pop_f32_lm25100_pop47_conv2d3x374_out_data_out_3_sticky_ena_q;
    wire [0:0] redist97_i_llvm_fpga_pop_f32_lm25100_pop47_conv2d3x374_out_data_out_3_enaAnd_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist47_sync_together243_aunroll_x_in_i_valid_2(DELAY,413)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist47_sync_together243_aunroll_x_in_i_valid_2_delay_0 <= '0;
            redist47_sync_together243_aunroll_x_in_i_valid_2_q <= '0;
        end
        else
        begin
            redist47_sync_together243_aunroll_x_in_i_valid_2_delay_0 <= $unsigned(in_i_valid);
            redist47_sync_together243_aunroll_x_in_i_valid_2_q <= redist47_sync_together243_aunroll_x_in_i_valid_2_delay_0;
        end
    end

    // redist48_sync_together243_aunroll_x_in_i_valid_3(DELAY,414)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist48_sync_together243_aunroll_x_in_i_valid_3_q <= '0;
        end
        else
        begin
            redist48_sync_together243_aunroll_x_in_i_valid_3_q <= $unsigned(redist47_sync_together243_aunroll_x_in_i_valid_2_q);
        end
    end

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // redist49_sync_together243_aunroll_x_in_i_valid_4(DELAY,415)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist49_sync_together243_aunroll_x_in_i_valid_4_q <= '0;
        end
        else
        begin
            redist49_sync_together243_aunroll_x_in_i_valid_4_q <= $unsigned(redist48_sync_together243_aunroll_x_in_i_valid_3_q);
        end
    end

    // redist50_sync_together243_aunroll_x_in_i_valid_5(DELAY,416)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist50_sync_together243_aunroll_x_in_i_valid_5_q <= '0;
        end
        else
        begin
            redist50_sync_together243_aunroll_x_in_i_valid_5_q <= $unsigned(redist49_sync_together243_aunroll_x_in_i_valid_4_q);
        end
    end

    // redist51_sync_together243_aunroll_x_in_i_valid_6(DELAY,417)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist51_sync_together243_aunroll_x_in_i_valid_6_q <= '0;
        end
        else
        begin
            redist51_sync_together243_aunroll_x_in_i_valid_6_q <= $unsigned(redist50_sync_together243_aunroll_x_in_i_valid_5_q);
        end
    end

    // redist52_sync_together243_aunroll_x_in_i_valid_7(DELAY,418)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist52_sync_together243_aunroll_x_in_i_valid_7_q <= '0;
        end
        else
        begin
            redist52_sync_together243_aunroll_x_in_i_valid_7_q <= $unsigned(redist51_sync_together243_aunroll_x_in_i_valid_6_q);
        end
    end

    // redist98_i_llvm_fpga_pipeline_keep_going60_conv2d3x38_out_data_out_1(DELAY,464)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist98_i_llvm_fpga_pipeline_keep_going60_conv2d3x38_out_data_out_1_q <= '0;
        end
        else
        begin
            redist98_i_llvm_fpga_pipeline_keep_going60_conv2d3x38_out_data_out_1_q <= $unsigned(i_llvm_fpga_pipeline_keep_going60_conv2d3x38_out_data_out);
        end
    end

    // redist99_i_llvm_fpga_pipeline_keep_going60_conv2d3x38_out_data_out_4(DELAY,465)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist99_i_llvm_fpga_pipeline_keep_going60_conv2d3x38_out_data_out_4_delay_0 <= '0;
            redist99_i_llvm_fpga_pipeline_keep_going60_conv2d3x38_out_data_out_4_delay_1 <= '0;
            redist99_i_llvm_fpga_pipeline_keep_going60_conv2d3x38_out_data_out_4_q <= '0;
        end
        else
        begin
            redist99_i_llvm_fpga_pipeline_keep_going60_conv2d3x38_out_data_out_4_delay_0 <= $unsigned(redist98_i_llvm_fpga_pipeline_keep_going60_conv2d3x38_out_data_out_1_q);
            redist99_i_llvm_fpga_pipeline_keep_going60_conv2d3x38_out_data_out_4_delay_1 <= redist99_i_llvm_fpga_pipeline_keep_going60_conv2d3x38_out_data_out_4_delay_0;
            redist99_i_llvm_fpga_pipeline_keep_going60_conv2d3x38_out_data_out_4_q <= redist99_i_llvm_fpga_pipeline_keep_going60_conv2d3x38_out_data_out_4_delay_1;
        end
    end

    // leftShiftStage0Idx1Rng1_uid336_i_cleanups_shl64_conv2d3x30_shift_x(BITSELECT,335)@8
    assign leftShiftStage0Idx1Rng1_uid336_i_cleanups_shl64_conv2d3x30_shift_x_in = i_llvm_fpga_pop_i2_cleanups63_pop44_conv2d3x34_out_data_out[0:0];
    assign leftShiftStage0Idx1Rng1_uid336_i_cleanups_shl64_conv2d3x30_shift_x_b = leftShiftStage0Idx1Rng1_uid336_i_cleanups_shl64_conv2d3x30_shift_x_in[0:0];

    // leftShiftStage0Idx1_uid337_i_cleanups_shl64_conv2d3x30_shift_x(BITJOIN,336)@8
    assign leftShiftStage0Idx1_uid337_i_cleanups_shl64_conv2d3x30_shift_x_q = {leftShiftStage0Idx1Rng1_uid336_i_cleanups_shl64_conv2d3x30_shift_x_b, GND_q};

    // leftShiftStage0_uid339_i_cleanups_shl64_conv2d3x30_shift_x(MUX,338)@8
    assign leftShiftStage0_uid339_i_cleanups_shl64_conv2d3x30_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid339_i_cleanups_shl64_conv2d3x30_shift_x_s or i_llvm_fpga_pop_i2_cleanups63_pop44_conv2d3x34_out_data_out or leftShiftStage0Idx1_uid337_i_cleanups_shl64_conv2d3x30_shift_x_q)
    begin
        unique case (leftShiftStage0_uid339_i_cleanups_shl64_conv2d3x30_shift_x_s)
            1'b0 : leftShiftStage0_uid339_i_cleanups_shl64_conv2d3x30_shift_x_q = i_llvm_fpga_pop_i2_cleanups63_pop44_conv2d3x34_out_data_out;
            1'b1 : leftShiftStage0_uid339_i_cleanups_shl64_conv2d3x30_shift_x_q = leftShiftStage0Idx1_uid337_i_cleanups_shl64_conv2d3x30_shift_x_q;
            default : leftShiftStage0_uid339_i_cleanups_shl64_conv2d3x30_shift_x_q = 2'b0;
        endcase
    end

    // i_cleanups_shl64_conv2d3x37_vt_select_1(BITSELECT,89)@8
    assign i_cleanups_shl64_conv2d3x37_vt_select_1_b = leftShiftStage0_uid339_i_cleanups_shl64_conv2d3x30_shift_x_q[1:1];

    // i_cleanups_shl64_conv2d3x37_vt_join(BITJOIN,88)@8
    assign i_cleanups_shl64_conv2d3x37_vt_join_q = {i_cleanups_shl64_conv2d3x37_vt_select_1_b, GND_q};

    // i_first_cleanup_xor66_conv2d3x36(LOGICAL,94)@8
    assign i_first_cleanup_xor66_conv2d3x36_q = i_first_cleanup65_conv2d3x35_sel_x_b ^ VCC_q;

    // i_notcmp56_conv2d3x366(LOGICAL,182)@8
    assign i_notcmp56_conv2d3x366_q = i_unnamed_conv2d3x365_q ^ VCC_q;

    // i_or67_conv2d3x368(LOGICAL,183)@8
    assign i_or67_conv2d3x368_q = i_notcmp56_conv2d3x366_q | i_first_cleanup_xor66_conv2d3x36_q;

    // i_next_cleanups68_conv2d3x369(MUX,178)@8
    assign i_next_cleanups68_conv2d3x369_s = i_or67_conv2d3x368_q;
    always @(i_next_cleanups68_conv2d3x369_s or i_llvm_fpga_pop_i2_cleanups63_pop44_conv2d3x34_out_data_out or i_cleanups_shl64_conv2d3x37_vt_join_q)
    begin
        unique case (i_next_cleanups68_conv2d3x369_s)
            1'b0 : i_next_cleanups68_conv2d3x369_q = i_llvm_fpga_pop_i2_cleanups63_pop44_conv2d3x34_out_data_out;
            1'b1 : i_next_cleanups68_conv2d3x369_q = i_cleanups_shl64_conv2d3x37_vt_join_q;
            default : i_next_cleanups68_conv2d3x369_q = 2'b0;
        endcase
    end

    // i_llvm_fpga_push_i2_cleanups63_push44_conv2d3x370(BLACKBOX,153)@8
    // out out_feedback_out_44@20000000
    // out out_feedback_valid_out_44@20000000
    conv2d3x3_i_llvm_fpga_push_i2_cleanups63_push44_0 thei_llvm_fpga_push_i2_cleanups63_push44_conv2d3x370 (
        .in_data_in(i_next_cleanups68_conv2d3x369_q),
        .in_feedback_stall_in_44(i_llvm_fpga_pop_i2_cleanups63_pop44_conv2d3x34_out_feedback_stall_out_44),
        .in_keep_going60(redist99_i_llvm_fpga_pipeline_keep_going60_conv2d3x38_out_data_out_4_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist52_sync_together243_aunroll_x_in_i_valid_7_q),
        .out_data_out(),
        .out_feedback_out_44(i_llvm_fpga_push_i2_cleanups63_push44_conv2d3x370_out_feedback_out_44),
        .out_feedback_valid_out_44(i_llvm_fpga_push_i2_cleanups63_push44_conv2d3x370_out_feedback_valid_out_44),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist1_sync_together243_aunroll_x_in_c0_eni46_1_tpl_7(DELAY,367)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together243_aunroll_x_in_c0_eni46_1_tpl_7_delay_0 <= '0;
            redist1_sync_together243_aunroll_x_in_c0_eni46_1_tpl_7_delay_1 <= '0;
            redist1_sync_together243_aunroll_x_in_c0_eni46_1_tpl_7_delay_2 <= '0;
            redist1_sync_together243_aunroll_x_in_c0_eni46_1_tpl_7_q <= '0;
        end
        else
        begin
            redist1_sync_together243_aunroll_x_in_c0_eni46_1_tpl_7_delay_0 <= $unsigned(redist0_sync_together243_aunroll_x_in_c0_eni46_1_tpl_3_q);
            redist1_sync_together243_aunroll_x_in_c0_eni46_1_tpl_7_delay_1 <= redist1_sync_together243_aunroll_x_in_c0_eni46_1_tpl_7_delay_0;
            redist1_sync_together243_aunroll_x_in_c0_eni46_1_tpl_7_delay_2 <= redist1_sync_together243_aunroll_x_in_c0_eni46_1_tpl_7_delay_1;
            redist1_sync_together243_aunroll_x_in_c0_eni46_1_tpl_7_q <= redist1_sync_together243_aunroll_x_in_c0_eni46_1_tpl_7_delay_2;
        end
    end

    // c_i2_1168(CONSTANT,74)
    assign c_i2_1168_q = $unsigned(2'b01);

    // i_llvm_fpga_pop_i2_cleanups63_pop44_conv2d3x34(BLACKBOX,122)@8
    // out out_feedback_stall_out_44@20000000
    conv2d3x3_i_llvm_fpga_pop_i2_cleanups63_pop44_0 thei_llvm_fpga_pop_i2_cleanups63_pop44_conv2d3x34 (
        .in_data_in(c_i2_1168_q),
        .in_dir(redist1_sync_together243_aunroll_x_in_c0_eni46_1_tpl_7_q),
        .in_feedback_in_44(i_llvm_fpga_push_i2_cleanups63_push44_conv2d3x370_out_feedback_out_44),
        .in_feedback_valid_in_44(i_llvm_fpga_push_i2_cleanups63_push44_conv2d3x370_out_feedback_valid_out_44),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist52_sync_together243_aunroll_x_in_i_valid_7_q),
        .out_data_out(i_llvm_fpga_pop_i2_cleanups63_pop44_conv2d3x34_out_data_out),
        .out_feedback_stall_out_44(i_llvm_fpga_pop_i2_cleanups63_pop44_conv2d3x34_out_feedback_stall_out_44),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_first_cleanup65_conv2d3x35_sel_x(BITSELECT,230)@8
    assign i_first_cleanup65_conv2d3x35_sel_x_b = i_llvm_fpga_pop_i2_cleanups63_pop44_conv2d3x34_out_data_out[0:0];

    // c_i3_1176(CONSTANT,79)
    assign c_i3_1176_q = $unsigned(3'b111);

    // i_fpga_indvars_iv_next_conv2d3x363(ADD,96)@8
    assign i_fpga_indvars_iv_next_conv2d3x363_a = {1'b0, i_llvm_fpga_pop_i3_fpga_indvars_iv_pop40_conv2d3x360_out_data_out};
    assign i_fpga_indvars_iv_next_conv2d3x363_b = {1'b0, c_i3_1176_q};
    assign i_fpga_indvars_iv_next_conv2d3x363_o = $unsigned(i_fpga_indvars_iv_next_conv2d3x363_a) + $unsigned(i_fpga_indvars_iv_next_conv2d3x363_b);
    assign i_fpga_indvars_iv_next_conv2d3x363_q = i_fpga_indvars_iv_next_conv2d3x363_o[3:0];

    // bgTrunc_i_fpga_indvars_iv_next_conv2d3x363_sel_x(BITSELECT,207)@8
    assign bgTrunc_i_fpga_indvars_iv_next_conv2d3x363_sel_x_b = i_fpga_indvars_iv_next_conv2d3x363_q[2:0];

    // i_llvm_fpga_push_i3_fpga_indvars_iv_push40_conv2d3x364(BLACKBOX,167)@8
    // out out_feedback_out_40@20000000
    // out out_feedback_valid_out_40@20000000
    conv2d3x3_i_llvm_fpga_push_i3_fpga_indvars_iv_push40_0 thei_llvm_fpga_push_i3_fpga_indvars_iv_push40_conv2d3x364 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next_conv2d3x363_sel_x_b),
        .in_feedback_stall_in_40(i_llvm_fpga_pop_i3_fpga_indvars_iv_pop40_conv2d3x360_out_feedback_stall_out_40),
        .in_keep_going60(redist99_i_llvm_fpga_pipeline_keep_going60_conv2d3x38_out_data_out_4_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist52_sync_together243_aunroll_x_in_i_valid_7_q),
        .out_data_out(),
        .out_feedback_out_40(i_llvm_fpga_push_i3_fpga_indvars_iv_push40_conv2d3x364_out_feedback_out_40),
        .out_feedback_valid_out_40(i_llvm_fpga_push_i3_fpga_indvars_iv_push40_conv2d3x364_out_feedback_valid_out_40),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i3_1174(CONSTANT,78)
    assign c_i3_1174_q = $unsigned(3'b001);

    // i_llvm_fpga_pop_i3_fpga_indvars_iv_pop40_conv2d3x360(BLACKBOX,136)@8
    // out out_feedback_stall_out_40@20000000
    conv2d3x3_i_llvm_fpga_pop_i3_fpga_indvars_iv_pop40_0 thei_llvm_fpga_pop_i3_fpga_indvars_iv_pop40_conv2d3x360 (
        .in_data_in(c_i3_1174_q),
        .in_dir(redist1_sync_together243_aunroll_x_in_c0_eni46_1_tpl_7_q),
        .in_feedback_in_40(i_llvm_fpga_push_i3_fpga_indvars_iv_push40_conv2d3x364_out_feedback_out_40),
        .in_feedback_valid_in_40(i_llvm_fpga_push_i3_fpga_indvars_iv_push40_conv2d3x364_out_feedback_valid_out_40),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist52_sync_together243_aunroll_x_in_i_valid_7_q),
        .out_data_out(i_llvm_fpga_pop_i3_fpga_indvars_iv_pop40_conv2d3x360_out_data_out),
        .out_feedback_stall_out_40(i_llvm_fpga_pop_i3_fpga_indvars_iv_pop40_conv2d3x360_out_feedback_stall_out_40),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_exitcond_conv2d3x361_cmp_nsign(LOGICAL,316)@8
    assign i_exitcond_conv2d3x361_cmp_nsign_q = $unsigned(~ (i_llvm_fpga_pop_i3_fpga_indvars_iv_pop40_conv2d3x360_out_data_out[2:2]));

    // i_llvm_fpga_push_i1_push65_conv2d3x349(BLACKBOX,151)@8
    // out out_feedback_out_65@20000000
    // out out_feedback_valid_out_65@20000000
    conv2d3x3_i_llvm_fpga_push_i1_push65_0 thei_llvm_fpga_push_i1_push65_conv2d3x349 (
        .in_data_in(i_llvm_fpga_pop_i1_pop65_conv2d3x348_out_data_out),
        .in_feedback_stall_in_65(i_llvm_fpga_pop_i1_pop65_conv2d3x348_out_feedback_stall_out_65),
        .in_keep_going60(redist99_i_llvm_fpga_pipeline_keep_going60_conv2d3x38_out_data_out_4_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist52_sync_together243_aunroll_x_in_i_valid_7_q),
        .out_data_out(),
        .out_feedback_out_65(i_llvm_fpga_push_i1_push65_conv2d3x349_out_feedback_out_65),
        .out_feedback_valid_out_65(i_llvm_fpga_push_i1_push65_conv2d3x349_out_feedback_valid_out_65),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist9_sync_together243_aunroll_x_in_c0_eni46_9_tpl_7(DELAY,375)
    dspba_delay_ver #( .width(1), .depth(7), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist9_sync_together243_aunroll_x_in_c0_eni46_9_tpl_7 ( .xin(in_c0_eni46_9_tpl), .xout(redist9_sync_together243_aunroll_x_in_c0_eni46_9_tpl_7_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_llvm_fpga_pop_i1_pop65_conv2d3x348(BLACKBOX,120)@8
    // out out_feedback_stall_out_65@20000000
    conv2d3x3_i_llvm_fpga_pop_i1_pop65_0 thei_llvm_fpga_pop_i1_pop65_conv2d3x348 (
        .in_data_in(redist9_sync_together243_aunroll_x_in_c0_eni46_9_tpl_7_q),
        .in_dir(redist1_sync_together243_aunroll_x_in_c0_eni46_1_tpl_7_q),
        .in_feedback_in_65(i_llvm_fpga_push_i1_push65_conv2d3x349_out_feedback_out_65),
        .in_feedback_valid_in_65(i_llvm_fpga_push_i1_push65_conv2d3x349_out_feedback_valid_out_65),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist52_sync_together243_aunroll_x_in_i_valid_7_q),
        .out_data_out(i_llvm_fpga_pop_i1_pop65_conv2d3x348_out_data_out),
        .out_feedback_stall_out_65(i_llvm_fpga_pop_i1_pop65_conv2d3x348_out_feedback_stall_out_65),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_conv2d3x365(LOGICAL,193)@8
    assign i_unnamed_conv2d3x365_q = i_llvm_fpga_pop_i1_pop65_conv2d3x348_out_data_out & i_exitcond_conv2d3x361_cmp_nsign_q;

    // i_llvm_fpga_push_i1_notexitcond70_conv2d3x367(BLACKBOX,150)@8
    // out out_feedback_out_6@20000000
    // out out_feedback_valid_out_6@20000000
    conv2d3x3_i_llvm_fpga_push_i1_notexitcond70_0 thei_llvm_fpga_push_i1_notexitcond70_conv2d3x367 (
        .in_data_in(i_unnamed_conv2d3x365_q),
        .in_feedback_stall_in_6(i_llvm_fpga_pipeline_keep_going60_conv2d3x38_out_not_exitcond_stall_out),
        .in_first_cleanup65(i_first_cleanup65_conv2d3x35_sel_x_b),
        .in_stall_in(GND_q),
        .in_valid_in(redist52_sync_together243_aunroll_x_in_i_valid_7_q),
        .out_data_out(),
        .out_feedback_out_6(i_llvm_fpga_push_i1_notexitcond70_conv2d3x367_out_feedback_out_6),
        .out_feedback_valid_out_6(i_llvm_fpga_push_i1_notexitcond70_conv2d3x367_out_feedback_valid_out_6),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg3(REG,247)@3 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg3_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg3_q <= $unsigned(redist47_sync_together243_aunroll_x_in_i_valid_2_q);
        end
    end

    // rightShiftStage0Idx1Rng1_uid343_i_next_initerations59_conv2d3x30_shift_x(BITSELECT,342)@4
    assign rightShiftStage0Idx1Rng1_uid343_i_next_initerations59_conv2d3x30_shift_x_b = i_llvm_fpga_pop_i2_initerations58_pop43_conv2d3x311_out_data_out[1:1];

    // rightShiftStage0Idx1_uid345_i_next_initerations59_conv2d3x30_shift_x(BITJOIN,344)@4
    assign rightShiftStage0Idx1_uid345_i_next_initerations59_conv2d3x30_shift_x_q = {GND_q, rightShiftStage0Idx1Rng1_uid343_i_next_initerations59_conv2d3x30_shift_x_b};

    // valid_fanout_reg1(REG,245)@3 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg1_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg1_q <= $unsigned(redist47_sync_together243_aunroll_x_in_i_valid_2_q);
        end
    end

    // valid_fanout_reg2(REG,246)@3 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg2_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg2_q <= $unsigned(redist47_sync_together243_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_push_i2_initerations58_push43_conv2d3x313(BLACKBOX,154)@4
    // out out_feedback_out_43@20000000
    // out out_feedback_valid_out_43@20000000
    conv2d3x3_i_llvm_fpga_push_i2_initerations58_push43_0 thei_llvm_fpga_push_i2_initerations58_push43_conv2d3x313 (
        .in_data_in(i_next_initerations59_conv2d3x312_vt_join_q),
        .in_feedback_stall_in_43(i_llvm_fpga_pop_i2_initerations58_pop43_conv2d3x311_out_feedback_stall_out_43),
        .in_keep_going60(i_llvm_fpga_pipeline_keep_going60_conv2d3x38_out_data_out),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(),
        .out_feedback_out_43(i_llvm_fpga_push_i2_initerations58_push43_conv2d3x313_out_feedback_out_43),
        .out_feedback_valid_out_43(i_llvm_fpga_push_i2_initerations58_push43_conv2d3x313_out_feedback_valid_out_43),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i2_initerations58_pop43_conv2d3x311(BLACKBOX,123)@4
    // out out_feedback_stall_out_43@20000000
    conv2d3x3_i_llvm_fpga_pop_i2_initerations58_pop43_0 thei_llvm_fpga_pop_i2_initerations58_pop43_conv2d3x311 (
        .in_data_in(c_i2_1168_q),
        .in_dir(redist0_sync_together243_aunroll_x_in_c0_eni46_1_tpl_3_q),
        .in_feedback_in_43(i_llvm_fpga_push_i2_initerations58_push43_conv2d3x313_out_feedback_out_43),
        .in_feedback_valid_in_43(i_llvm_fpga_push_i2_initerations58_push43_conv2d3x313_out_feedback_valid_out_43),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_data_out(i_llvm_fpga_pop_i2_initerations58_pop43_conv2d3x311_out_data_out),
        .out_feedback_stall_out_43(i_llvm_fpga_pop_i2_initerations58_pop43_conv2d3x311_out_feedback_stall_out_43),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // rightShiftStage0_uid347_i_next_initerations59_conv2d3x30_shift_x(MUX,346)@4
    assign rightShiftStage0_uid347_i_next_initerations59_conv2d3x30_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid347_i_next_initerations59_conv2d3x30_shift_x_s or i_llvm_fpga_pop_i2_initerations58_pop43_conv2d3x311_out_data_out or rightShiftStage0Idx1_uid345_i_next_initerations59_conv2d3x30_shift_x_q)
    begin
        unique case (rightShiftStage0_uid347_i_next_initerations59_conv2d3x30_shift_x_s)
            1'b0 : rightShiftStage0_uid347_i_next_initerations59_conv2d3x30_shift_x_q = i_llvm_fpga_pop_i2_initerations58_pop43_conv2d3x311_out_data_out;
            1'b1 : rightShiftStage0_uid347_i_next_initerations59_conv2d3x30_shift_x_q = rightShiftStage0Idx1_uid345_i_next_initerations59_conv2d3x30_shift_x_q;
            default : rightShiftStage0_uid347_i_next_initerations59_conv2d3x30_shift_x_q = 2'b0;
        endcase
    end

    // i_next_initerations59_conv2d3x312_vt_select_0(BITSELECT,181)@4
    assign i_next_initerations59_conv2d3x312_vt_select_0_b = rightShiftStage0_uid347_i_next_initerations59_conv2d3x30_shift_x_q[0:0];

    // i_next_initerations59_conv2d3x312_vt_join(BITJOIN,180)@4
    assign i_next_initerations59_conv2d3x312_vt_join_q = {GND_q, i_next_initerations59_conv2d3x312_vt_select_0_b};

    // i_last_initeration61_conv2d3x314_sel_x(BITSELECT,233)@4
    assign i_last_initeration61_conv2d3x314_sel_x_b = i_next_initerations59_conv2d3x312_vt_join_q[0:0];

    // i_llvm_fpga_push_i1_lastiniteration62_conv2d3x315(BLACKBOX,146)@4
    // out out_feedback_out_5@20000000
    // out out_feedback_valid_out_5@20000000
    conv2d3x3_i_llvm_fpga_push_i1_lastiniteration62_0 thei_llvm_fpga_push_i1_lastiniteration62_conv2d3x315 (
        .in_data_in(i_last_initeration61_conv2d3x314_sel_x_b),
        .in_feedback_stall_in_5(i_llvm_fpga_pipeline_keep_going60_conv2d3x38_out_initeration_stall_out),
        .in_keep_going60(i_llvm_fpga_pipeline_keep_going60_conv2d3x38_out_data_out),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_data_out(),
        .out_feedback_out_5(i_llvm_fpga_push_i1_lastiniteration62_conv2d3x315_out_feedback_out_5),
        .out_feedback_valid_out_5(i_llvm_fpga_push_i1_lastiniteration62_conv2d3x315_out_feedback_valid_out_5),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist0_sync_together243_aunroll_x_in_c0_eni46_1_tpl_3(DELAY,366)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_sync_together243_aunroll_x_in_c0_eni46_1_tpl_3_delay_0 <= '0;
            redist0_sync_together243_aunroll_x_in_c0_eni46_1_tpl_3_delay_1 <= '0;
            redist0_sync_together243_aunroll_x_in_c0_eni46_1_tpl_3_q <= '0;
        end
        else
        begin
            redist0_sync_together243_aunroll_x_in_c0_eni46_1_tpl_3_delay_0 <= $unsigned(in_c0_eni46_1_tpl);
            redist0_sync_together243_aunroll_x_in_c0_eni46_1_tpl_3_delay_1 <= redist0_sync_together243_aunroll_x_in_c0_eni46_1_tpl_3_delay_0;
            redist0_sync_together243_aunroll_x_in_c0_eni46_1_tpl_3_q <= redist0_sync_together243_aunroll_x_in_c0_eni46_1_tpl_3_delay_1;
        end
    end

    // i_llvm_fpga_pipeline_keep_going60_conv2d3x38(BLACKBOX,109)@4
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    conv2d3x3_i_llvm_fpga_pipeline_keep_going60_0 thei_llvm_fpga_pipeline_keep_going60_conv2d3x38 (
        .in_data_in(redist0_sync_together243_aunroll_x_in_c0_eni46_1_tpl_3_q),
        .in_initeration_in(i_llvm_fpga_push_i1_lastiniteration62_conv2d3x315_out_feedback_out_5),
        .in_initeration_valid_in(i_llvm_fpga_push_i1_lastiniteration62_conv2d3x315_out_feedback_valid_out_5),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond70_conv2d3x367_out_feedback_out_6),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond70_conv2d3x367_out_feedback_valid_out_6),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(GND_q),
        .in_valid_in(redist48_sync_together243_aunroll_x_in_i_valid_3_q),
        .out_data_out(i_llvm_fpga_pipeline_keep_going60_conv2d3x38_out_data_out),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going60_conv2d3x38_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going60_conv2d3x38_out_exiting_valid_out),
        .out_initeration_stall_out(i_llvm_fpga_pipeline_keep_going60_conv2d3x38_out_initeration_stall_out),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going60_conv2d3x38_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going60_conv2d3x38_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,80)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going60_conv2d3x38_exiting_valid_out = i_llvm_fpga_pipeline_keep_going60_conv2d3x38_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going60_conv2d3x38_exiting_stall_out = i_llvm_fpga_pipeline_keep_going60_conv2d3x38_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,199)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going60_conv2d3x38_out_pipeline_valid_out;

    // valid_fanout_reg0(REG,244)@7 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist51_sync_together243_aunroll_x_in_i_valid_6_q);
        end
    end

    // redist46_sync_together243_aunroll_x_in_c0_eni46_46_tpl_7_notEnable(LOGICAL,594)
    assign redist46_sync_together243_aunroll_x_in_c0_eni46_46_tpl_7_notEnable_q = $unsigned(~ (VCC_q));

    // redist46_sync_together243_aunroll_x_in_c0_eni46_46_tpl_7_nor(LOGICAL,595)
    assign redist46_sync_together243_aunroll_x_in_c0_eni46_46_tpl_7_nor_q = ~ (redist46_sync_together243_aunroll_x_in_c0_eni46_46_tpl_7_notEnable_q | redist46_sync_together243_aunroll_x_in_c0_eni46_46_tpl_7_sticky_ena_q);

    // redist46_sync_together243_aunroll_x_in_c0_eni46_46_tpl_7_mem_last(CONSTANT,591)
    assign redist46_sync_together243_aunroll_x_in_c0_eni46_46_tpl_7_mem_last_q = $unsigned(4'b0100);

    // redist46_sync_together243_aunroll_x_in_c0_eni46_46_tpl_7_cmp(LOGICAL,592)
    assign redist46_sync_together243_aunroll_x_in_c0_eni46_46_tpl_7_cmp_b = {1'b0, redist46_sync_together243_aunroll_x_in_c0_eni46_46_tpl_7_rdcnt_q};
    assign redist46_sync_together243_aunroll_x_in_c0_eni46_46_tpl_7_cmp_q = $unsigned(redist46_sync_together243_aunroll_x_in_c0_eni46_46_tpl_7_mem_last_q == redist46_sync_together243_aunroll_x_in_c0_eni46_46_tpl_7_cmp_b ? 1'b1 : 1'b0);

    // redist46_sync_together243_aunroll_x_in_c0_eni46_46_tpl_7_cmpReg(REG,593)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist46_sync_together243_aunroll_x_in_c0_eni46_46_tpl_7_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist46_sync_together243_aunroll_x_in_c0_eni46_46_tpl_7_cmpReg_q <= $unsigned(redist46_sync_together243_aunroll_x_in_c0_eni46_46_tpl_7_cmp_q);
        end
    end

    // redist46_sync_together243_aunroll_x_in_c0_eni46_46_tpl_7_sticky_ena(REG,596)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist46_sync_together243_aunroll_x_in_c0_eni46_46_tpl_7_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist46_sync_together243_aunroll_x_in_c0_eni46_46_tpl_7_nor_q == 1'b1)
        begin
            redist46_sync_together243_aunroll_x_in_c0_eni46_46_tpl_7_sticky_ena_q <= $unsigned(redist46_sync_together243_aunroll_x_in_c0_eni46_46_tpl_7_cmpReg_q);
        end
    end

    // redist46_sync_together243_aunroll_x_in_c0_eni46_46_tpl_7_enaAnd(LOGICAL,597)
    assign redist46_sync_together243_aunroll_x_in_c0_eni46_46_tpl_7_enaAnd_q = redist46_sync_together243_aunroll_x_in_c0_eni46_46_tpl_7_sticky_ena_q & VCC_q;

    // redist46_sync_together243_aunroll_x_in_c0_eni46_46_tpl_7_rdcnt(COUNTER,589)
    // low=0, high=5, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist46_sync_together243_aunroll_x_in_c0_eni46_46_tpl_7_rdcnt_i <= 3'd0;
            redist46_sync_together243_aunroll_x_in_c0_eni46_46_tpl_7_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist46_sync_together243_aunroll_x_in_c0_eni46_46_tpl_7_rdcnt_i == 3'd4)
            begin
                redist46_sync_together243_aunroll_x_in_c0_eni46_46_tpl_7_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist46_sync_together243_aunroll_x_in_c0_eni46_46_tpl_7_rdcnt_eq <= 1'b0;
            end
            if (redist46_sync_together243_aunroll_x_in_c0_eni46_46_tpl_7_rdcnt_eq == 1'b1)
            begin
                redist46_sync_together243_aunroll_x_in_c0_eni46_46_tpl_7_rdcnt_i <= $unsigned(redist46_sync_together243_aunroll_x_in_c0_eni46_46_tpl_7_rdcnt_i) + $unsigned(3'd3);
            end
            else
            begin
                redist46_sync_together243_aunroll_x_in_c0_eni46_46_tpl_7_rdcnt_i <= $unsigned(redist46_sync_together243_aunroll_x_in_c0_eni46_46_tpl_7_rdcnt_i) + $unsigned(3'd1);
            end
        end
    end
    assign redist46_sync_together243_aunroll_x_in_c0_eni46_46_tpl_7_rdcnt_q = redist46_sync_together243_aunroll_x_in_c0_eni46_46_tpl_7_rdcnt_i[2:0];

    // redist46_sync_together243_aunroll_x_in_c0_eni46_46_tpl_7_wraddr(REG,590)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist46_sync_together243_aunroll_x_in_c0_eni46_46_tpl_7_wraddr_q <= $unsigned(3'b101);
        end
        else
        begin
            redist46_sync_together243_aunroll_x_in_c0_eni46_46_tpl_7_wraddr_q <= $unsigned(redist46_sync_together243_aunroll_x_in_c0_eni46_46_tpl_7_rdcnt_q);
        end
    end

    // redist46_sync_together243_aunroll_x_in_c0_eni46_46_tpl_7_mem(DUALMEM,588)
    assign redist46_sync_together243_aunroll_x_in_c0_eni46_46_tpl_7_mem_ia = $unsigned(in_c0_eni46_46_tpl);
    assign redist46_sync_together243_aunroll_x_in_c0_eni46_46_tpl_7_mem_aa = redist46_sync_together243_aunroll_x_in_c0_eni46_46_tpl_7_wraddr_q;
    assign redist46_sync_together243_aunroll_x_in_c0_eni46_46_tpl_7_mem_ab = redist46_sync_together243_aunroll_x_in_c0_eni46_46_tpl_7_rdcnt_q;
    assign redist46_sync_together243_aunroll_x_in_c0_eni46_46_tpl_7_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(3),
        .numwords_a(6),
        .width_b(32),
        .widthad_b(3),
        .numwords_b(6),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .address_reg_b("CLOCK0"),
        .indata_reg_b("CLOCK0"),
        .rdcontrol_reg_b("CLOCK0"),
        .byteena_reg_b("CLOCK0"),
        .outdata_reg_b("CLOCK1"),
        .outdata_aclr_b("CLEAR1"),
        .clock_enable_input_a("NORMAL"),
        .clock_enable_input_b("NORMAL"),
        .clock_enable_output_b("NORMAL"),
        .read_during_write_mode_mixed_ports("DONT_CARE"),
        .power_up_uninitialized("TRUE"),
        .intended_device_family("Arria 10")
    ) redist46_sync_together243_aunroll_x_in_c0_eni46_46_tpl_7_mem_dmem (
        .clocken1(redist46_sync_together243_aunroll_x_in_c0_eni46_46_tpl_7_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist46_sync_together243_aunroll_x_in_c0_eni46_46_tpl_7_mem_reset0),
        .clock1(clock),
        .address_a(redist46_sync_together243_aunroll_x_in_c0_eni46_46_tpl_7_mem_aa),
        .data_a(redist46_sync_together243_aunroll_x_in_c0_eni46_46_tpl_7_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist46_sync_together243_aunroll_x_in_c0_eni46_46_tpl_7_mem_ab),
        .q_b(redist46_sync_together243_aunroll_x_in_c0_eni46_46_tpl_7_mem_iq),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_b(),
        .clocken2(),
        .clocken3(),
        .aclr0(),
        .addressstall_a(),
        .addressstall_b(),
        .byteena_a(),
        .byteena_b(),
        .eccencbypass(),
        .eccencparity(),
        .sclr(),
        .address2_a(),
        .address2_b(),
        .q_a(),
        .eccstatus()
    );
    assign redist46_sync_together243_aunroll_x_in_c0_eni46_46_tpl_7_mem_q = redist46_sync_together243_aunroll_x_in_c0_eni46_46_tpl_7_mem_iq[31:0];

    // redist45_sync_together243_aunroll_x_in_c0_eni46_45_tpl_7(DELAY,411)
    dspba_delay_ver #( .width(1), .depth(7), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist45_sync_together243_aunroll_x_in_c0_eni46_45_tpl_7 ( .xin(in_c0_eni46_45_tpl), .xout(redist45_sync_together243_aunroll_x_in_c0_eni46_45_tpl_7_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist44_sync_together243_aunroll_x_in_c0_eni46_44_tpl_7_notEnable(LOGICAL,584)
    assign redist44_sync_together243_aunroll_x_in_c0_eni46_44_tpl_7_notEnable_q = $unsigned(~ (VCC_q));

    // redist44_sync_together243_aunroll_x_in_c0_eni46_44_tpl_7_nor(LOGICAL,585)
    assign redist44_sync_together243_aunroll_x_in_c0_eni46_44_tpl_7_nor_q = ~ (redist44_sync_together243_aunroll_x_in_c0_eni46_44_tpl_7_notEnable_q | redist44_sync_together243_aunroll_x_in_c0_eni46_44_tpl_7_sticky_ena_q);

    // redist44_sync_together243_aunroll_x_in_c0_eni46_44_tpl_7_mem_last(CONSTANT,581)
    assign redist44_sync_together243_aunroll_x_in_c0_eni46_44_tpl_7_mem_last_q = $unsigned(4'b0100);

    // redist44_sync_together243_aunroll_x_in_c0_eni46_44_tpl_7_cmp(LOGICAL,582)
    assign redist44_sync_together243_aunroll_x_in_c0_eni46_44_tpl_7_cmp_b = {1'b0, redist44_sync_together243_aunroll_x_in_c0_eni46_44_tpl_7_rdcnt_q};
    assign redist44_sync_together243_aunroll_x_in_c0_eni46_44_tpl_7_cmp_q = $unsigned(redist44_sync_together243_aunroll_x_in_c0_eni46_44_tpl_7_mem_last_q == redist44_sync_together243_aunroll_x_in_c0_eni46_44_tpl_7_cmp_b ? 1'b1 : 1'b0);

    // redist44_sync_together243_aunroll_x_in_c0_eni46_44_tpl_7_cmpReg(REG,583)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist44_sync_together243_aunroll_x_in_c0_eni46_44_tpl_7_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist44_sync_together243_aunroll_x_in_c0_eni46_44_tpl_7_cmpReg_q <= $unsigned(redist44_sync_together243_aunroll_x_in_c0_eni46_44_tpl_7_cmp_q);
        end
    end

    // redist44_sync_together243_aunroll_x_in_c0_eni46_44_tpl_7_sticky_ena(REG,586)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist44_sync_together243_aunroll_x_in_c0_eni46_44_tpl_7_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist44_sync_together243_aunroll_x_in_c0_eni46_44_tpl_7_nor_q == 1'b1)
        begin
            redist44_sync_together243_aunroll_x_in_c0_eni46_44_tpl_7_sticky_ena_q <= $unsigned(redist44_sync_together243_aunroll_x_in_c0_eni46_44_tpl_7_cmpReg_q);
        end
    end

    // redist44_sync_together243_aunroll_x_in_c0_eni46_44_tpl_7_enaAnd(LOGICAL,587)
    assign redist44_sync_together243_aunroll_x_in_c0_eni46_44_tpl_7_enaAnd_q = redist44_sync_together243_aunroll_x_in_c0_eni46_44_tpl_7_sticky_ena_q & VCC_q;

    // redist44_sync_together243_aunroll_x_in_c0_eni46_44_tpl_7_rdcnt(COUNTER,579)
    // low=0, high=5, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist44_sync_together243_aunroll_x_in_c0_eni46_44_tpl_7_rdcnt_i <= 3'd0;
            redist44_sync_together243_aunroll_x_in_c0_eni46_44_tpl_7_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist44_sync_together243_aunroll_x_in_c0_eni46_44_tpl_7_rdcnt_i == 3'd4)
            begin
                redist44_sync_together243_aunroll_x_in_c0_eni46_44_tpl_7_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist44_sync_together243_aunroll_x_in_c0_eni46_44_tpl_7_rdcnt_eq <= 1'b0;
            end
            if (redist44_sync_together243_aunroll_x_in_c0_eni46_44_tpl_7_rdcnt_eq == 1'b1)
            begin
                redist44_sync_together243_aunroll_x_in_c0_eni46_44_tpl_7_rdcnt_i <= $unsigned(redist44_sync_together243_aunroll_x_in_c0_eni46_44_tpl_7_rdcnt_i) + $unsigned(3'd3);
            end
            else
            begin
                redist44_sync_together243_aunroll_x_in_c0_eni46_44_tpl_7_rdcnt_i <= $unsigned(redist44_sync_together243_aunroll_x_in_c0_eni46_44_tpl_7_rdcnt_i) + $unsigned(3'd1);
            end
        end
    end
    assign redist44_sync_together243_aunroll_x_in_c0_eni46_44_tpl_7_rdcnt_q = redist44_sync_together243_aunroll_x_in_c0_eni46_44_tpl_7_rdcnt_i[2:0];

    // redist44_sync_together243_aunroll_x_in_c0_eni46_44_tpl_7_wraddr(REG,580)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist44_sync_together243_aunroll_x_in_c0_eni46_44_tpl_7_wraddr_q <= $unsigned(3'b101);
        end
        else
        begin
            redist44_sync_together243_aunroll_x_in_c0_eni46_44_tpl_7_wraddr_q <= $unsigned(redist44_sync_together243_aunroll_x_in_c0_eni46_44_tpl_7_rdcnt_q);
        end
    end

    // redist44_sync_together243_aunroll_x_in_c0_eni46_44_tpl_7_mem(DUALMEM,578)
    assign redist44_sync_together243_aunroll_x_in_c0_eni46_44_tpl_7_mem_ia = $unsigned(in_c0_eni46_44_tpl);
    assign redist44_sync_together243_aunroll_x_in_c0_eni46_44_tpl_7_mem_aa = redist44_sync_together243_aunroll_x_in_c0_eni46_44_tpl_7_wraddr_q;
    assign redist44_sync_together243_aunroll_x_in_c0_eni46_44_tpl_7_mem_ab = redist44_sync_together243_aunroll_x_in_c0_eni46_44_tpl_7_rdcnt_q;
    assign redist44_sync_together243_aunroll_x_in_c0_eni46_44_tpl_7_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(3),
        .numwords_a(6),
        .width_b(32),
        .widthad_b(3),
        .numwords_b(6),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .address_reg_b("CLOCK0"),
        .indata_reg_b("CLOCK0"),
        .rdcontrol_reg_b("CLOCK0"),
        .byteena_reg_b("CLOCK0"),
        .outdata_reg_b("CLOCK1"),
        .outdata_aclr_b("CLEAR1"),
        .clock_enable_input_a("NORMAL"),
        .clock_enable_input_b("NORMAL"),
        .clock_enable_output_b("NORMAL"),
        .read_during_write_mode_mixed_ports("DONT_CARE"),
        .power_up_uninitialized("TRUE"),
        .intended_device_family("Arria 10")
    ) redist44_sync_together243_aunroll_x_in_c0_eni46_44_tpl_7_mem_dmem (
        .clocken1(redist44_sync_together243_aunroll_x_in_c0_eni46_44_tpl_7_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist44_sync_together243_aunroll_x_in_c0_eni46_44_tpl_7_mem_reset0),
        .clock1(clock),
        .address_a(redist44_sync_together243_aunroll_x_in_c0_eni46_44_tpl_7_mem_aa),
        .data_a(redist44_sync_together243_aunroll_x_in_c0_eni46_44_tpl_7_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist44_sync_together243_aunroll_x_in_c0_eni46_44_tpl_7_mem_ab),
        .q_b(redist44_sync_together243_aunroll_x_in_c0_eni46_44_tpl_7_mem_iq),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_b(),
        .clocken2(),
        .clocken3(),
        .aclr0(),
        .addressstall_a(),
        .addressstall_b(),
        .byteena_a(),
        .byteena_b(),
        .eccencbypass(),
        .eccencparity(),
        .sclr(),
        .address2_a(),
        .address2_b(),
        .q_a(),
        .eccstatus()
    );
    assign redist44_sync_together243_aunroll_x_in_c0_eni46_44_tpl_7_mem_q = redist44_sync_together243_aunroll_x_in_c0_eni46_44_tpl_7_mem_iq[31:0];

    // redist43_sync_together243_aunroll_x_in_c0_eni46_43_tpl_7_notEnable(LOGICAL,574)
    assign redist43_sync_together243_aunroll_x_in_c0_eni46_43_tpl_7_notEnable_q = $unsigned(~ (VCC_q));

    // redist43_sync_together243_aunroll_x_in_c0_eni46_43_tpl_7_nor(LOGICAL,575)
    assign redist43_sync_together243_aunroll_x_in_c0_eni46_43_tpl_7_nor_q = ~ (redist43_sync_together243_aunroll_x_in_c0_eni46_43_tpl_7_notEnable_q | redist43_sync_together243_aunroll_x_in_c0_eni46_43_tpl_7_sticky_ena_q);

    // redist43_sync_together243_aunroll_x_in_c0_eni46_43_tpl_7_mem_last(CONSTANT,571)
    assign redist43_sync_together243_aunroll_x_in_c0_eni46_43_tpl_7_mem_last_q = $unsigned(4'b0100);

    // redist43_sync_together243_aunroll_x_in_c0_eni46_43_tpl_7_cmp(LOGICAL,572)
    assign redist43_sync_together243_aunroll_x_in_c0_eni46_43_tpl_7_cmp_b = {1'b0, redist43_sync_together243_aunroll_x_in_c0_eni46_43_tpl_7_rdcnt_q};
    assign redist43_sync_together243_aunroll_x_in_c0_eni46_43_tpl_7_cmp_q = $unsigned(redist43_sync_together243_aunroll_x_in_c0_eni46_43_tpl_7_mem_last_q == redist43_sync_together243_aunroll_x_in_c0_eni46_43_tpl_7_cmp_b ? 1'b1 : 1'b0);

    // redist43_sync_together243_aunroll_x_in_c0_eni46_43_tpl_7_cmpReg(REG,573)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist43_sync_together243_aunroll_x_in_c0_eni46_43_tpl_7_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist43_sync_together243_aunroll_x_in_c0_eni46_43_tpl_7_cmpReg_q <= $unsigned(redist43_sync_together243_aunroll_x_in_c0_eni46_43_tpl_7_cmp_q);
        end
    end

    // redist43_sync_together243_aunroll_x_in_c0_eni46_43_tpl_7_sticky_ena(REG,576)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist43_sync_together243_aunroll_x_in_c0_eni46_43_tpl_7_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist43_sync_together243_aunroll_x_in_c0_eni46_43_tpl_7_nor_q == 1'b1)
        begin
            redist43_sync_together243_aunroll_x_in_c0_eni46_43_tpl_7_sticky_ena_q <= $unsigned(redist43_sync_together243_aunroll_x_in_c0_eni46_43_tpl_7_cmpReg_q);
        end
    end

    // redist43_sync_together243_aunroll_x_in_c0_eni46_43_tpl_7_enaAnd(LOGICAL,577)
    assign redist43_sync_together243_aunroll_x_in_c0_eni46_43_tpl_7_enaAnd_q = redist43_sync_together243_aunroll_x_in_c0_eni46_43_tpl_7_sticky_ena_q & VCC_q;

    // redist43_sync_together243_aunroll_x_in_c0_eni46_43_tpl_7_rdcnt(COUNTER,569)
    // low=0, high=5, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist43_sync_together243_aunroll_x_in_c0_eni46_43_tpl_7_rdcnt_i <= 3'd0;
            redist43_sync_together243_aunroll_x_in_c0_eni46_43_tpl_7_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist43_sync_together243_aunroll_x_in_c0_eni46_43_tpl_7_rdcnt_i == 3'd4)
            begin
                redist43_sync_together243_aunroll_x_in_c0_eni46_43_tpl_7_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist43_sync_together243_aunroll_x_in_c0_eni46_43_tpl_7_rdcnt_eq <= 1'b0;
            end
            if (redist43_sync_together243_aunroll_x_in_c0_eni46_43_tpl_7_rdcnt_eq == 1'b1)
            begin
                redist43_sync_together243_aunroll_x_in_c0_eni46_43_tpl_7_rdcnt_i <= $unsigned(redist43_sync_together243_aunroll_x_in_c0_eni46_43_tpl_7_rdcnt_i) + $unsigned(3'd3);
            end
            else
            begin
                redist43_sync_together243_aunroll_x_in_c0_eni46_43_tpl_7_rdcnt_i <= $unsigned(redist43_sync_together243_aunroll_x_in_c0_eni46_43_tpl_7_rdcnt_i) + $unsigned(3'd1);
            end
        end
    end
    assign redist43_sync_together243_aunroll_x_in_c0_eni46_43_tpl_7_rdcnt_q = redist43_sync_together243_aunroll_x_in_c0_eni46_43_tpl_7_rdcnt_i[2:0];

    // redist43_sync_together243_aunroll_x_in_c0_eni46_43_tpl_7_wraddr(REG,570)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist43_sync_together243_aunroll_x_in_c0_eni46_43_tpl_7_wraddr_q <= $unsigned(3'b101);
        end
        else
        begin
            redist43_sync_together243_aunroll_x_in_c0_eni46_43_tpl_7_wraddr_q <= $unsigned(redist43_sync_together243_aunroll_x_in_c0_eni46_43_tpl_7_rdcnt_q);
        end
    end

    // redist43_sync_together243_aunroll_x_in_c0_eni46_43_tpl_7_mem(DUALMEM,568)
    assign redist43_sync_together243_aunroll_x_in_c0_eni46_43_tpl_7_mem_ia = $unsigned(in_c0_eni46_43_tpl);
    assign redist43_sync_together243_aunroll_x_in_c0_eni46_43_tpl_7_mem_aa = redist43_sync_together243_aunroll_x_in_c0_eni46_43_tpl_7_wraddr_q;
    assign redist43_sync_together243_aunroll_x_in_c0_eni46_43_tpl_7_mem_ab = redist43_sync_together243_aunroll_x_in_c0_eni46_43_tpl_7_rdcnt_q;
    assign redist43_sync_together243_aunroll_x_in_c0_eni46_43_tpl_7_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(64),
        .widthad_a(3),
        .numwords_a(6),
        .width_b(64),
        .widthad_b(3),
        .numwords_b(6),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .address_reg_b("CLOCK0"),
        .indata_reg_b("CLOCK0"),
        .rdcontrol_reg_b("CLOCK0"),
        .byteena_reg_b("CLOCK0"),
        .outdata_reg_b("CLOCK1"),
        .outdata_aclr_b("CLEAR1"),
        .clock_enable_input_a("NORMAL"),
        .clock_enable_input_b("NORMAL"),
        .clock_enable_output_b("NORMAL"),
        .read_during_write_mode_mixed_ports("DONT_CARE"),
        .power_up_uninitialized("TRUE"),
        .intended_device_family("Arria 10")
    ) redist43_sync_together243_aunroll_x_in_c0_eni46_43_tpl_7_mem_dmem (
        .clocken1(redist43_sync_together243_aunroll_x_in_c0_eni46_43_tpl_7_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist43_sync_together243_aunroll_x_in_c0_eni46_43_tpl_7_mem_reset0),
        .clock1(clock),
        .address_a(redist43_sync_together243_aunroll_x_in_c0_eni46_43_tpl_7_mem_aa),
        .data_a(redist43_sync_together243_aunroll_x_in_c0_eni46_43_tpl_7_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist43_sync_together243_aunroll_x_in_c0_eni46_43_tpl_7_mem_ab),
        .q_b(redist43_sync_together243_aunroll_x_in_c0_eni46_43_tpl_7_mem_iq),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_b(),
        .clocken2(),
        .clocken3(),
        .aclr0(),
        .addressstall_a(),
        .addressstall_b(),
        .byteena_a(),
        .byteena_b(),
        .eccencbypass(),
        .eccencparity(),
        .sclr(),
        .address2_a(),
        .address2_b(),
        .q_a(),
        .eccstatus()
    );
    assign redist43_sync_together243_aunroll_x_in_c0_eni46_43_tpl_7_mem_q = redist43_sync_together243_aunroll_x_in_c0_eni46_43_tpl_7_mem_iq[63:0];

    // redist42_sync_together243_aunroll_x_in_c0_eni46_42_tpl_7_notEnable(LOGICAL,564)
    assign redist42_sync_together243_aunroll_x_in_c0_eni46_42_tpl_7_notEnable_q = $unsigned(~ (VCC_q));

    // redist42_sync_together243_aunroll_x_in_c0_eni46_42_tpl_7_nor(LOGICAL,565)
    assign redist42_sync_together243_aunroll_x_in_c0_eni46_42_tpl_7_nor_q = ~ (redist42_sync_together243_aunroll_x_in_c0_eni46_42_tpl_7_notEnable_q | redist42_sync_together243_aunroll_x_in_c0_eni46_42_tpl_7_sticky_ena_q);

    // redist42_sync_together243_aunroll_x_in_c0_eni46_42_tpl_7_mem_last(CONSTANT,561)
    assign redist42_sync_together243_aunroll_x_in_c0_eni46_42_tpl_7_mem_last_q = $unsigned(4'b0100);

    // redist42_sync_together243_aunroll_x_in_c0_eni46_42_tpl_7_cmp(LOGICAL,562)
    assign redist42_sync_together243_aunroll_x_in_c0_eni46_42_tpl_7_cmp_b = {1'b0, redist42_sync_together243_aunroll_x_in_c0_eni46_42_tpl_7_rdcnt_q};
    assign redist42_sync_together243_aunroll_x_in_c0_eni46_42_tpl_7_cmp_q = $unsigned(redist42_sync_together243_aunroll_x_in_c0_eni46_42_tpl_7_mem_last_q == redist42_sync_together243_aunroll_x_in_c0_eni46_42_tpl_7_cmp_b ? 1'b1 : 1'b0);

    // redist42_sync_together243_aunroll_x_in_c0_eni46_42_tpl_7_cmpReg(REG,563)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist42_sync_together243_aunroll_x_in_c0_eni46_42_tpl_7_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist42_sync_together243_aunroll_x_in_c0_eni46_42_tpl_7_cmpReg_q <= $unsigned(redist42_sync_together243_aunroll_x_in_c0_eni46_42_tpl_7_cmp_q);
        end
    end

    // redist42_sync_together243_aunroll_x_in_c0_eni46_42_tpl_7_sticky_ena(REG,566)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist42_sync_together243_aunroll_x_in_c0_eni46_42_tpl_7_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist42_sync_together243_aunroll_x_in_c0_eni46_42_tpl_7_nor_q == 1'b1)
        begin
            redist42_sync_together243_aunroll_x_in_c0_eni46_42_tpl_7_sticky_ena_q <= $unsigned(redist42_sync_together243_aunroll_x_in_c0_eni46_42_tpl_7_cmpReg_q);
        end
    end

    // redist42_sync_together243_aunroll_x_in_c0_eni46_42_tpl_7_enaAnd(LOGICAL,567)
    assign redist42_sync_together243_aunroll_x_in_c0_eni46_42_tpl_7_enaAnd_q = redist42_sync_together243_aunroll_x_in_c0_eni46_42_tpl_7_sticky_ena_q & VCC_q;

    // redist42_sync_together243_aunroll_x_in_c0_eni46_42_tpl_7_rdcnt(COUNTER,559)
    // low=0, high=5, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist42_sync_together243_aunroll_x_in_c0_eni46_42_tpl_7_rdcnt_i <= 3'd0;
            redist42_sync_together243_aunroll_x_in_c0_eni46_42_tpl_7_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist42_sync_together243_aunroll_x_in_c0_eni46_42_tpl_7_rdcnt_i == 3'd4)
            begin
                redist42_sync_together243_aunroll_x_in_c0_eni46_42_tpl_7_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist42_sync_together243_aunroll_x_in_c0_eni46_42_tpl_7_rdcnt_eq <= 1'b0;
            end
            if (redist42_sync_together243_aunroll_x_in_c0_eni46_42_tpl_7_rdcnt_eq == 1'b1)
            begin
                redist42_sync_together243_aunroll_x_in_c0_eni46_42_tpl_7_rdcnt_i <= $unsigned(redist42_sync_together243_aunroll_x_in_c0_eni46_42_tpl_7_rdcnt_i) + $unsigned(3'd3);
            end
            else
            begin
                redist42_sync_together243_aunroll_x_in_c0_eni46_42_tpl_7_rdcnt_i <= $unsigned(redist42_sync_together243_aunroll_x_in_c0_eni46_42_tpl_7_rdcnt_i) + $unsigned(3'd1);
            end
        end
    end
    assign redist42_sync_together243_aunroll_x_in_c0_eni46_42_tpl_7_rdcnt_q = redist42_sync_together243_aunroll_x_in_c0_eni46_42_tpl_7_rdcnt_i[2:0];

    // redist42_sync_together243_aunroll_x_in_c0_eni46_42_tpl_7_wraddr(REG,560)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist42_sync_together243_aunroll_x_in_c0_eni46_42_tpl_7_wraddr_q <= $unsigned(3'b101);
        end
        else
        begin
            redist42_sync_together243_aunroll_x_in_c0_eni46_42_tpl_7_wraddr_q <= $unsigned(redist42_sync_together243_aunroll_x_in_c0_eni46_42_tpl_7_rdcnt_q);
        end
    end

    // redist42_sync_together243_aunroll_x_in_c0_eni46_42_tpl_7_mem(DUALMEM,558)
    assign redist42_sync_together243_aunroll_x_in_c0_eni46_42_tpl_7_mem_ia = $unsigned(in_c0_eni46_42_tpl);
    assign redist42_sync_together243_aunroll_x_in_c0_eni46_42_tpl_7_mem_aa = redist42_sync_together243_aunroll_x_in_c0_eni46_42_tpl_7_wraddr_q;
    assign redist42_sync_together243_aunroll_x_in_c0_eni46_42_tpl_7_mem_ab = redist42_sync_together243_aunroll_x_in_c0_eni46_42_tpl_7_rdcnt_q;
    assign redist42_sync_together243_aunroll_x_in_c0_eni46_42_tpl_7_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(64),
        .widthad_a(3),
        .numwords_a(6),
        .width_b(64),
        .widthad_b(3),
        .numwords_b(6),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .address_reg_b("CLOCK0"),
        .indata_reg_b("CLOCK0"),
        .rdcontrol_reg_b("CLOCK0"),
        .byteena_reg_b("CLOCK0"),
        .outdata_reg_b("CLOCK1"),
        .outdata_aclr_b("CLEAR1"),
        .clock_enable_input_a("NORMAL"),
        .clock_enable_input_b("NORMAL"),
        .clock_enable_output_b("NORMAL"),
        .read_during_write_mode_mixed_ports("DONT_CARE"),
        .power_up_uninitialized("TRUE"),
        .intended_device_family("Arria 10")
    ) redist42_sync_together243_aunroll_x_in_c0_eni46_42_tpl_7_mem_dmem (
        .clocken1(redist42_sync_together243_aunroll_x_in_c0_eni46_42_tpl_7_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist42_sync_together243_aunroll_x_in_c0_eni46_42_tpl_7_mem_reset0),
        .clock1(clock),
        .address_a(redist42_sync_together243_aunroll_x_in_c0_eni46_42_tpl_7_mem_aa),
        .data_a(redist42_sync_together243_aunroll_x_in_c0_eni46_42_tpl_7_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist42_sync_together243_aunroll_x_in_c0_eni46_42_tpl_7_mem_ab),
        .q_b(redist42_sync_together243_aunroll_x_in_c0_eni46_42_tpl_7_mem_iq),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_b(),
        .clocken2(),
        .clocken3(),
        .aclr0(),
        .addressstall_a(),
        .addressstall_b(),
        .byteena_a(),
        .byteena_b(),
        .eccencbypass(),
        .eccencparity(),
        .sclr(),
        .address2_a(),
        .address2_b(),
        .q_a(),
        .eccstatus()
    );
    assign redist42_sync_together243_aunroll_x_in_c0_eni46_42_tpl_7_mem_q = redist42_sync_together243_aunroll_x_in_c0_eni46_42_tpl_7_mem_iq[63:0];

    // redist41_sync_together243_aunroll_x_in_c0_eni46_41_tpl_7(DELAY,407)
    dspba_delay_ver #( .width(1), .depth(7), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist41_sync_together243_aunroll_x_in_c0_eni46_41_tpl_7 ( .xin(in_c0_eni46_41_tpl), .xout(redist41_sync_together243_aunroll_x_in_c0_eni46_41_tpl_7_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist40_sync_together243_aunroll_x_in_c0_eni46_40_tpl_7(DELAY,406)
    dspba_delay_ver #( .width(1), .depth(7), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist40_sync_together243_aunroll_x_in_c0_eni46_40_tpl_7 ( .xin(in_c0_eni46_40_tpl), .xout(redist40_sync_together243_aunroll_x_in_c0_eni46_40_tpl_7_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist39_sync_together243_aunroll_x_in_c0_eni46_39_tpl_7(DELAY,405)
    dspba_delay_ver #( .width(1), .depth(7), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist39_sync_together243_aunroll_x_in_c0_eni46_39_tpl_7 ( .xin(in_c0_eni46_39_tpl), .xout(redist39_sync_together243_aunroll_x_in_c0_eni46_39_tpl_7_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist38_sync_together243_aunroll_x_in_c0_eni46_38_tpl_7_notEnable(LOGICAL,554)
    assign redist38_sync_together243_aunroll_x_in_c0_eni46_38_tpl_7_notEnable_q = $unsigned(~ (VCC_q));

    // redist38_sync_together243_aunroll_x_in_c0_eni46_38_tpl_7_nor(LOGICAL,555)
    assign redist38_sync_together243_aunroll_x_in_c0_eni46_38_tpl_7_nor_q = ~ (redist38_sync_together243_aunroll_x_in_c0_eni46_38_tpl_7_notEnable_q | redist38_sync_together243_aunroll_x_in_c0_eni46_38_tpl_7_sticky_ena_q);

    // redist38_sync_together243_aunroll_x_in_c0_eni46_38_tpl_7_mem_last(CONSTANT,551)
    assign redist38_sync_together243_aunroll_x_in_c0_eni46_38_tpl_7_mem_last_q = $unsigned(4'b0100);

    // redist38_sync_together243_aunroll_x_in_c0_eni46_38_tpl_7_cmp(LOGICAL,552)
    assign redist38_sync_together243_aunroll_x_in_c0_eni46_38_tpl_7_cmp_b = {1'b0, redist38_sync_together243_aunroll_x_in_c0_eni46_38_tpl_7_rdcnt_q};
    assign redist38_sync_together243_aunroll_x_in_c0_eni46_38_tpl_7_cmp_q = $unsigned(redist38_sync_together243_aunroll_x_in_c0_eni46_38_tpl_7_mem_last_q == redist38_sync_together243_aunroll_x_in_c0_eni46_38_tpl_7_cmp_b ? 1'b1 : 1'b0);

    // redist38_sync_together243_aunroll_x_in_c0_eni46_38_tpl_7_cmpReg(REG,553)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist38_sync_together243_aunroll_x_in_c0_eni46_38_tpl_7_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist38_sync_together243_aunroll_x_in_c0_eni46_38_tpl_7_cmpReg_q <= $unsigned(redist38_sync_together243_aunroll_x_in_c0_eni46_38_tpl_7_cmp_q);
        end
    end

    // redist38_sync_together243_aunroll_x_in_c0_eni46_38_tpl_7_sticky_ena(REG,556)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist38_sync_together243_aunroll_x_in_c0_eni46_38_tpl_7_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist38_sync_together243_aunroll_x_in_c0_eni46_38_tpl_7_nor_q == 1'b1)
        begin
            redist38_sync_together243_aunroll_x_in_c0_eni46_38_tpl_7_sticky_ena_q <= $unsigned(redist38_sync_together243_aunroll_x_in_c0_eni46_38_tpl_7_cmpReg_q);
        end
    end

    // redist38_sync_together243_aunroll_x_in_c0_eni46_38_tpl_7_enaAnd(LOGICAL,557)
    assign redist38_sync_together243_aunroll_x_in_c0_eni46_38_tpl_7_enaAnd_q = redist38_sync_together243_aunroll_x_in_c0_eni46_38_tpl_7_sticky_ena_q & VCC_q;

    // redist38_sync_together243_aunroll_x_in_c0_eni46_38_tpl_7_rdcnt(COUNTER,549)
    // low=0, high=5, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist38_sync_together243_aunroll_x_in_c0_eni46_38_tpl_7_rdcnt_i <= 3'd0;
            redist38_sync_together243_aunroll_x_in_c0_eni46_38_tpl_7_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist38_sync_together243_aunroll_x_in_c0_eni46_38_tpl_7_rdcnt_i == 3'd4)
            begin
                redist38_sync_together243_aunroll_x_in_c0_eni46_38_tpl_7_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist38_sync_together243_aunroll_x_in_c0_eni46_38_tpl_7_rdcnt_eq <= 1'b0;
            end
            if (redist38_sync_together243_aunroll_x_in_c0_eni46_38_tpl_7_rdcnt_eq == 1'b1)
            begin
                redist38_sync_together243_aunroll_x_in_c0_eni46_38_tpl_7_rdcnt_i <= $unsigned(redist38_sync_together243_aunroll_x_in_c0_eni46_38_tpl_7_rdcnt_i) + $unsigned(3'd3);
            end
            else
            begin
                redist38_sync_together243_aunroll_x_in_c0_eni46_38_tpl_7_rdcnt_i <= $unsigned(redist38_sync_together243_aunroll_x_in_c0_eni46_38_tpl_7_rdcnt_i) + $unsigned(3'd1);
            end
        end
    end
    assign redist38_sync_together243_aunroll_x_in_c0_eni46_38_tpl_7_rdcnt_q = redist38_sync_together243_aunroll_x_in_c0_eni46_38_tpl_7_rdcnt_i[2:0];

    // redist38_sync_together243_aunroll_x_in_c0_eni46_38_tpl_7_wraddr(REG,550)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist38_sync_together243_aunroll_x_in_c0_eni46_38_tpl_7_wraddr_q <= $unsigned(3'b101);
        end
        else
        begin
            redist38_sync_together243_aunroll_x_in_c0_eni46_38_tpl_7_wraddr_q <= $unsigned(redist38_sync_together243_aunroll_x_in_c0_eni46_38_tpl_7_rdcnt_q);
        end
    end

    // redist38_sync_together243_aunroll_x_in_c0_eni46_38_tpl_7_mem(DUALMEM,548)
    assign redist38_sync_together243_aunroll_x_in_c0_eni46_38_tpl_7_mem_ia = $unsigned(in_c0_eni46_38_tpl);
    assign redist38_sync_together243_aunroll_x_in_c0_eni46_38_tpl_7_mem_aa = redist38_sync_together243_aunroll_x_in_c0_eni46_38_tpl_7_wraddr_q;
    assign redist38_sync_together243_aunroll_x_in_c0_eni46_38_tpl_7_mem_ab = redist38_sync_together243_aunroll_x_in_c0_eni46_38_tpl_7_rdcnt_q;
    assign redist38_sync_together243_aunroll_x_in_c0_eni46_38_tpl_7_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(3),
        .numwords_a(6),
        .width_b(32),
        .widthad_b(3),
        .numwords_b(6),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .address_reg_b("CLOCK0"),
        .indata_reg_b("CLOCK0"),
        .rdcontrol_reg_b("CLOCK0"),
        .byteena_reg_b("CLOCK0"),
        .outdata_reg_b("CLOCK1"),
        .outdata_aclr_b("CLEAR1"),
        .clock_enable_input_a("NORMAL"),
        .clock_enable_input_b("NORMAL"),
        .clock_enable_output_b("NORMAL"),
        .read_during_write_mode_mixed_ports("DONT_CARE"),
        .power_up_uninitialized("TRUE"),
        .intended_device_family("Arria 10")
    ) redist38_sync_together243_aunroll_x_in_c0_eni46_38_tpl_7_mem_dmem (
        .clocken1(redist38_sync_together243_aunroll_x_in_c0_eni46_38_tpl_7_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist38_sync_together243_aunroll_x_in_c0_eni46_38_tpl_7_mem_reset0),
        .clock1(clock),
        .address_a(redist38_sync_together243_aunroll_x_in_c0_eni46_38_tpl_7_mem_aa),
        .data_a(redist38_sync_together243_aunroll_x_in_c0_eni46_38_tpl_7_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist38_sync_together243_aunroll_x_in_c0_eni46_38_tpl_7_mem_ab),
        .q_b(redist38_sync_together243_aunroll_x_in_c0_eni46_38_tpl_7_mem_iq),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_b(),
        .clocken2(),
        .clocken3(),
        .aclr0(),
        .addressstall_a(),
        .addressstall_b(),
        .byteena_a(),
        .byteena_b(),
        .eccencbypass(),
        .eccencparity(),
        .sclr(),
        .address2_a(),
        .address2_b(),
        .q_a(),
        .eccstatus()
    );
    assign redist38_sync_together243_aunroll_x_in_c0_eni46_38_tpl_7_mem_q = redist38_sync_together243_aunroll_x_in_c0_eni46_38_tpl_7_mem_iq[31:0];

    // redist37_sync_together243_aunroll_x_in_c0_eni46_37_tpl_7(DELAY,403)
    dspba_delay_ver #( .width(1), .depth(7), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist37_sync_together243_aunroll_x_in_c0_eni46_37_tpl_7 ( .xin(in_c0_eni46_37_tpl), .xout(redist37_sync_together243_aunroll_x_in_c0_eni46_37_tpl_7_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist36_sync_together243_aunroll_x_in_c0_eni46_36_tpl_7(DELAY,402)
    dspba_delay_ver #( .width(1), .depth(7), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist36_sync_together243_aunroll_x_in_c0_eni46_36_tpl_7 ( .xin(in_c0_eni46_36_tpl), .xout(redist36_sync_together243_aunroll_x_in_c0_eni46_36_tpl_7_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist35_sync_together243_aunroll_x_in_c0_eni46_35_tpl_7_notEnable(LOGICAL,544)
    assign redist35_sync_together243_aunroll_x_in_c0_eni46_35_tpl_7_notEnable_q = $unsigned(~ (VCC_q));

    // redist35_sync_together243_aunroll_x_in_c0_eni46_35_tpl_7_nor(LOGICAL,545)
    assign redist35_sync_together243_aunroll_x_in_c0_eni46_35_tpl_7_nor_q = ~ (redist35_sync_together243_aunroll_x_in_c0_eni46_35_tpl_7_notEnable_q | redist35_sync_together243_aunroll_x_in_c0_eni46_35_tpl_7_sticky_ena_q);

    // redist35_sync_together243_aunroll_x_in_c0_eni46_35_tpl_7_mem_last(CONSTANT,541)
    assign redist35_sync_together243_aunroll_x_in_c0_eni46_35_tpl_7_mem_last_q = $unsigned(4'b0100);

    // redist35_sync_together243_aunroll_x_in_c0_eni46_35_tpl_7_cmp(LOGICAL,542)
    assign redist35_sync_together243_aunroll_x_in_c0_eni46_35_tpl_7_cmp_b = {1'b0, redist35_sync_together243_aunroll_x_in_c0_eni46_35_tpl_7_rdcnt_q};
    assign redist35_sync_together243_aunroll_x_in_c0_eni46_35_tpl_7_cmp_q = $unsigned(redist35_sync_together243_aunroll_x_in_c0_eni46_35_tpl_7_mem_last_q == redist35_sync_together243_aunroll_x_in_c0_eni46_35_tpl_7_cmp_b ? 1'b1 : 1'b0);

    // redist35_sync_together243_aunroll_x_in_c0_eni46_35_tpl_7_cmpReg(REG,543)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist35_sync_together243_aunroll_x_in_c0_eni46_35_tpl_7_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist35_sync_together243_aunroll_x_in_c0_eni46_35_tpl_7_cmpReg_q <= $unsigned(redist35_sync_together243_aunroll_x_in_c0_eni46_35_tpl_7_cmp_q);
        end
    end

    // redist35_sync_together243_aunroll_x_in_c0_eni46_35_tpl_7_sticky_ena(REG,546)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist35_sync_together243_aunroll_x_in_c0_eni46_35_tpl_7_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist35_sync_together243_aunroll_x_in_c0_eni46_35_tpl_7_nor_q == 1'b1)
        begin
            redist35_sync_together243_aunroll_x_in_c0_eni46_35_tpl_7_sticky_ena_q <= $unsigned(redist35_sync_together243_aunroll_x_in_c0_eni46_35_tpl_7_cmpReg_q);
        end
    end

    // redist35_sync_together243_aunroll_x_in_c0_eni46_35_tpl_7_enaAnd(LOGICAL,547)
    assign redist35_sync_together243_aunroll_x_in_c0_eni46_35_tpl_7_enaAnd_q = redist35_sync_together243_aunroll_x_in_c0_eni46_35_tpl_7_sticky_ena_q & VCC_q;

    // redist35_sync_together243_aunroll_x_in_c0_eni46_35_tpl_7_rdcnt(COUNTER,539)
    // low=0, high=5, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist35_sync_together243_aunroll_x_in_c0_eni46_35_tpl_7_rdcnt_i <= 3'd0;
            redist35_sync_together243_aunroll_x_in_c0_eni46_35_tpl_7_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist35_sync_together243_aunroll_x_in_c0_eni46_35_tpl_7_rdcnt_i == 3'd4)
            begin
                redist35_sync_together243_aunroll_x_in_c0_eni46_35_tpl_7_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist35_sync_together243_aunroll_x_in_c0_eni46_35_tpl_7_rdcnt_eq <= 1'b0;
            end
            if (redist35_sync_together243_aunroll_x_in_c0_eni46_35_tpl_7_rdcnt_eq == 1'b1)
            begin
                redist35_sync_together243_aunroll_x_in_c0_eni46_35_tpl_7_rdcnt_i <= $unsigned(redist35_sync_together243_aunroll_x_in_c0_eni46_35_tpl_7_rdcnt_i) + $unsigned(3'd3);
            end
            else
            begin
                redist35_sync_together243_aunroll_x_in_c0_eni46_35_tpl_7_rdcnt_i <= $unsigned(redist35_sync_together243_aunroll_x_in_c0_eni46_35_tpl_7_rdcnt_i) + $unsigned(3'd1);
            end
        end
    end
    assign redist35_sync_together243_aunroll_x_in_c0_eni46_35_tpl_7_rdcnt_q = redist35_sync_together243_aunroll_x_in_c0_eni46_35_tpl_7_rdcnt_i[2:0];

    // redist35_sync_together243_aunroll_x_in_c0_eni46_35_tpl_7_wraddr(REG,540)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist35_sync_together243_aunroll_x_in_c0_eni46_35_tpl_7_wraddr_q <= $unsigned(3'b101);
        end
        else
        begin
            redist35_sync_together243_aunroll_x_in_c0_eni46_35_tpl_7_wraddr_q <= $unsigned(redist35_sync_together243_aunroll_x_in_c0_eni46_35_tpl_7_rdcnt_q);
        end
    end

    // redist35_sync_together243_aunroll_x_in_c0_eni46_35_tpl_7_mem(DUALMEM,538)
    assign redist35_sync_together243_aunroll_x_in_c0_eni46_35_tpl_7_mem_ia = $unsigned(in_c0_eni46_35_tpl);
    assign redist35_sync_together243_aunroll_x_in_c0_eni46_35_tpl_7_mem_aa = redist35_sync_together243_aunroll_x_in_c0_eni46_35_tpl_7_wraddr_q;
    assign redist35_sync_together243_aunroll_x_in_c0_eni46_35_tpl_7_mem_ab = redist35_sync_together243_aunroll_x_in_c0_eni46_35_tpl_7_rdcnt_q;
    assign redist35_sync_together243_aunroll_x_in_c0_eni46_35_tpl_7_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(3),
        .numwords_a(6),
        .width_b(32),
        .widthad_b(3),
        .numwords_b(6),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .address_reg_b("CLOCK0"),
        .indata_reg_b("CLOCK0"),
        .rdcontrol_reg_b("CLOCK0"),
        .byteena_reg_b("CLOCK0"),
        .outdata_reg_b("CLOCK1"),
        .outdata_aclr_b("CLEAR1"),
        .clock_enable_input_a("NORMAL"),
        .clock_enable_input_b("NORMAL"),
        .clock_enable_output_b("NORMAL"),
        .read_during_write_mode_mixed_ports("DONT_CARE"),
        .power_up_uninitialized("TRUE"),
        .intended_device_family("Arria 10")
    ) redist35_sync_together243_aunroll_x_in_c0_eni46_35_tpl_7_mem_dmem (
        .clocken1(redist35_sync_together243_aunroll_x_in_c0_eni46_35_tpl_7_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist35_sync_together243_aunroll_x_in_c0_eni46_35_tpl_7_mem_reset0),
        .clock1(clock),
        .address_a(redist35_sync_together243_aunroll_x_in_c0_eni46_35_tpl_7_mem_aa),
        .data_a(redist35_sync_together243_aunroll_x_in_c0_eni46_35_tpl_7_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist35_sync_together243_aunroll_x_in_c0_eni46_35_tpl_7_mem_ab),
        .q_b(redist35_sync_together243_aunroll_x_in_c0_eni46_35_tpl_7_mem_iq),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_b(),
        .clocken2(),
        .clocken3(),
        .aclr0(),
        .addressstall_a(),
        .addressstall_b(),
        .byteena_a(),
        .byteena_b(),
        .eccencbypass(),
        .eccencparity(),
        .sclr(),
        .address2_a(),
        .address2_b(),
        .q_a(),
        .eccstatus()
    );
    assign redist35_sync_together243_aunroll_x_in_c0_eni46_35_tpl_7_mem_q = redist35_sync_together243_aunroll_x_in_c0_eni46_35_tpl_7_mem_iq[31:0];

    // redist34_sync_together243_aunroll_x_in_c0_eni46_34_tpl_7(DELAY,400)
    dspba_delay_ver #( .width(1), .depth(7), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist34_sync_together243_aunroll_x_in_c0_eni46_34_tpl_7 ( .xin(in_c0_eni46_34_tpl), .xout(redist34_sync_together243_aunroll_x_in_c0_eni46_34_tpl_7_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist33_sync_together243_aunroll_x_in_c0_eni46_33_tpl_7(DELAY,399)
    dspba_delay_ver #( .width(1), .depth(7), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist33_sync_together243_aunroll_x_in_c0_eni46_33_tpl_7 ( .xin(in_c0_eni46_33_tpl), .xout(redist33_sync_together243_aunroll_x_in_c0_eni46_33_tpl_7_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist32_sync_together243_aunroll_x_in_c0_eni46_32_tpl_7_notEnable(LOGICAL,534)
    assign redist32_sync_together243_aunroll_x_in_c0_eni46_32_tpl_7_notEnable_q = $unsigned(~ (VCC_q));

    // redist32_sync_together243_aunroll_x_in_c0_eni46_32_tpl_7_nor(LOGICAL,535)
    assign redist32_sync_together243_aunroll_x_in_c0_eni46_32_tpl_7_nor_q = ~ (redist32_sync_together243_aunroll_x_in_c0_eni46_32_tpl_7_notEnable_q | redist32_sync_together243_aunroll_x_in_c0_eni46_32_tpl_7_sticky_ena_q);

    // redist32_sync_together243_aunroll_x_in_c0_eni46_32_tpl_7_mem_last(CONSTANT,531)
    assign redist32_sync_together243_aunroll_x_in_c0_eni46_32_tpl_7_mem_last_q = $unsigned(4'b0100);

    // redist32_sync_together243_aunroll_x_in_c0_eni46_32_tpl_7_cmp(LOGICAL,532)
    assign redist32_sync_together243_aunroll_x_in_c0_eni46_32_tpl_7_cmp_b = {1'b0, redist32_sync_together243_aunroll_x_in_c0_eni46_32_tpl_7_rdcnt_q};
    assign redist32_sync_together243_aunroll_x_in_c0_eni46_32_tpl_7_cmp_q = $unsigned(redist32_sync_together243_aunroll_x_in_c0_eni46_32_tpl_7_mem_last_q == redist32_sync_together243_aunroll_x_in_c0_eni46_32_tpl_7_cmp_b ? 1'b1 : 1'b0);

    // redist32_sync_together243_aunroll_x_in_c0_eni46_32_tpl_7_cmpReg(REG,533)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist32_sync_together243_aunroll_x_in_c0_eni46_32_tpl_7_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist32_sync_together243_aunroll_x_in_c0_eni46_32_tpl_7_cmpReg_q <= $unsigned(redist32_sync_together243_aunroll_x_in_c0_eni46_32_tpl_7_cmp_q);
        end
    end

    // redist32_sync_together243_aunroll_x_in_c0_eni46_32_tpl_7_sticky_ena(REG,536)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist32_sync_together243_aunroll_x_in_c0_eni46_32_tpl_7_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist32_sync_together243_aunroll_x_in_c0_eni46_32_tpl_7_nor_q == 1'b1)
        begin
            redist32_sync_together243_aunroll_x_in_c0_eni46_32_tpl_7_sticky_ena_q <= $unsigned(redist32_sync_together243_aunroll_x_in_c0_eni46_32_tpl_7_cmpReg_q);
        end
    end

    // redist32_sync_together243_aunroll_x_in_c0_eni46_32_tpl_7_enaAnd(LOGICAL,537)
    assign redist32_sync_together243_aunroll_x_in_c0_eni46_32_tpl_7_enaAnd_q = redist32_sync_together243_aunroll_x_in_c0_eni46_32_tpl_7_sticky_ena_q & VCC_q;

    // redist32_sync_together243_aunroll_x_in_c0_eni46_32_tpl_7_rdcnt(COUNTER,529)
    // low=0, high=5, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist32_sync_together243_aunroll_x_in_c0_eni46_32_tpl_7_rdcnt_i <= 3'd0;
            redist32_sync_together243_aunroll_x_in_c0_eni46_32_tpl_7_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist32_sync_together243_aunroll_x_in_c0_eni46_32_tpl_7_rdcnt_i == 3'd4)
            begin
                redist32_sync_together243_aunroll_x_in_c0_eni46_32_tpl_7_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist32_sync_together243_aunroll_x_in_c0_eni46_32_tpl_7_rdcnt_eq <= 1'b0;
            end
            if (redist32_sync_together243_aunroll_x_in_c0_eni46_32_tpl_7_rdcnt_eq == 1'b1)
            begin
                redist32_sync_together243_aunroll_x_in_c0_eni46_32_tpl_7_rdcnt_i <= $unsigned(redist32_sync_together243_aunroll_x_in_c0_eni46_32_tpl_7_rdcnt_i) + $unsigned(3'd3);
            end
            else
            begin
                redist32_sync_together243_aunroll_x_in_c0_eni46_32_tpl_7_rdcnt_i <= $unsigned(redist32_sync_together243_aunroll_x_in_c0_eni46_32_tpl_7_rdcnt_i) + $unsigned(3'd1);
            end
        end
    end
    assign redist32_sync_together243_aunroll_x_in_c0_eni46_32_tpl_7_rdcnt_q = redist32_sync_together243_aunroll_x_in_c0_eni46_32_tpl_7_rdcnt_i[2:0];

    // redist32_sync_together243_aunroll_x_in_c0_eni46_32_tpl_7_wraddr(REG,530)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist32_sync_together243_aunroll_x_in_c0_eni46_32_tpl_7_wraddr_q <= $unsigned(3'b101);
        end
        else
        begin
            redist32_sync_together243_aunroll_x_in_c0_eni46_32_tpl_7_wraddr_q <= $unsigned(redist32_sync_together243_aunroll_x_in_c0_eni46_32_tpl_7_rdcnt_q);
        end
    end

    // redist32_sync_together243_aunroll_x_in_c0_eni46_32_tpl_7_mem(DUALMEM,528)
    assign redist32_sync_together243_aunroll_x_in_c0_eni46_32_tpl_7_mem_ia = $unsigned(in_c0_eni46_32_tpl);
    assign redist32_sync_together243_aunroll_x_in_c0_eni46_32_tpl_7_mem_aa = redist32_sync_together243_aunroll_x_in_c0_eni46_32_tpl_7_wraddr_q;
    assign redist32_sync_together243_aunroll_x_in_c0_eni46_32_tpl_7_mem_ab = redist32_sync_together243_aunroll_x_in_c0_eni46_32_tpl_7_rdcnt_q;
    assign redist32_sync_together243_aunroll_x_in_c0_eni46_32_tpl_7_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(3),
        .numwords_a(6),
        .width_b(32),
        .widthad_b(3),
        .numwords_b(6),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .address_reg_b("CLOCK0"),
        .indata_reg_b("CLOCK0"),
        .rdcontrol_reg_b("CLOCK0"),
        .byteena_reg_b("CLOCK0"),
        .outdata_reg_b("CLOCK1"),
        .outdata_aclr_b("CLEAR1"),
        .clock_enable_input_a("NORMAL"),
        .clock_enable_input_b("NORMAL"),
        .clock_enable_output_b("NORMAL"),
        .read_during_write_mode_mixed_ports("DONT_CARE"),
        .power_up_uninitialized("TRUE"),
        .intended_device_family("Arria 10")
    ) redist32_sync_together243_aunroll_x_in_c0_eni46_32_tpl_7_mem_dmem (
        .clocken1(redist32_sync_together243_aunroll_x_in_c0_eni46_32_tpl_7_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist32_sync_together243_aunroll_x_in_c0_eni46_32_tpl_7_mem_reset0),
        .clock1(clock),
        .address_a(redist32_sync_together243_aunroll_x_in_c0_eni46_32_tpl_7_mem_aa),
        .data_a(redist32_sync_together243_aunroll_x_in_c0_eni46_32_tpl_7_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist32_sync_together243_aunroll_x_in_c0_eni46_32_tpl_7_mem_ab),
        .q_b(redist32_sync_together243_aunroll_x_in_c0_eni46_32_tpl_7_mem_iq),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_b(),
        .clocken2(),
        .clocken3(),
        .aclr0(),
        .addressstall_a(),
        .addressstall_b(),
        .byteena_a(),
        .byteena_b(),
        .eccencbypass(),
        .eccencparity(),
        .sclr(),
        .address2_a(),
        .address2_b(),
        .q_a(),
        .eccstatus()
    );
    assign redist32_sync_together243_aunroll_x_in_c0_eni46_32_tpl_7_mem_q = redist32_sync_together243_aunroll_x_in_c0_eni46_32_tpl_7_mem_iq[31:0];

    // redist31_sync_together243_aunroll_x_in_c0_eni46_31_tpl_7_notEnable(LOGICAL,524)
    assign redist31_sync_together243_aunroll_x_in_c0_eni46_31_tpl_7_notEnable_q = $unsigned(~ (VCC_q));

    // redist31_sync_together243_aunroll_x_in_c0_eni46_31_tpl_7_nor(LOGICAL,525)
    assign redist31_sync_together243_aunroll_x_in_c0_eni46_31_tpl_7_nor_q = ~ (redist31_sync_together243_aunroll_x_in_c0_eni46_31_tpl_7_notEnable_q | redist31_sync_together243_aunroll_x_in_c0_eni46_31_tpl_7_sticky_ena_q);

    // redist31_sync_together243_aunroll_x_in_c0_eni46_31_tpl_7_mem_last(CONSTANT,521)
    assign redist31_sync_together243_aunroll_x_in_c0_eni46_31_tpl_7_mem_last_q = $unsigned(4'b0100);

    // redist31_sync_together243_aunroll_x_in_c0_eni46_31_tpl_7_cmp(LOGICAL,522)
    assign redist31_sync_together243_aunroll_x_in_c0_eni46_31_tpl_7_cmp_b = {1'b0, redist31_sync_together243_aunroll_x_in_c0_eni46_31_tpl_7_rdcnt_q};
    assign redist31_sync_together243_aunroll_x_in_c0_eni46_31_tpl_7_cmp_q = $unsigned(redist31_sync_together243_aunroll_x_in_c0_eni46_31_tpl_7_mem_last_q == redist31_sync_together243_aunroll_x_in_c0_eni46_31_tpl_7_cmp_b ? 1'b1 : 1'b0);

    // redist31_sync_together243_aunroll_x_in_c0_eni46_31_tpl_7_cmpReg(REG,523)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist31_sync_together243_aunroll_x_in_c0_eni46_31_tpl_7_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist31_sync_together243_aunroll_x_in_c0_eni46_31_tpl_7_cmpReg_q <= $unsigned(redist31_sync_together243_aunroll_x_in_c0_eni46_31_tpl_7_cmp_q);
        end
    end

    // redist31_sync_together243_aunroll_x_in_c0_eni46_31_tpl_7_sticky_ena(REG,526)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist31_sync_together243_aunroll_x_in_c0_eni46_31_tpl_7_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist31_sync_together243_aunroll_x_in_c0_eni46_31_tpl_7_nor_q == 1'b1)
        begin
            redist31_sync_together243_aunroll_x_in_c0_eni46_31_tpl_7_sticky_ena_q <= $unsigned(redist31_sync_together243_aunroll_x_in_c0_eni46_31_tpl_7_cmpReg_q);
        end
    end

    // redist31_sync_together243_aunroll_x_in_c0_eni46_31_tpl_7_enaAnd(LOGICAL,527)
    assign redist31_sync_together243_aunroll_x_in_c0_eni46_31_tpl_7_enaAnd_q = redist31_sync_together243_aunroll_x_in_c0_eni46_31_tpl_7_sticky_ena_q & VCC_q;

    // redist31_sync_together243_aunroll_x_in_c0_eni46_31_tpl_7_rdcnt(COUNTER,519)
    // low=0, high=5, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist31_sync_together243_aunroll_x_in_c0_eni46_31_tpl_7_rdcnt_i <= 3'd0;
            redist31_sync_together243_aunroll_x_in_c0_eni46_31_tpl_7_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist31_sync_together243_aunroll_x_in_c0_eni46_31_tpl_7_rdcnt_i == 3'd4)
            begin
                redist31_sync_together243_aunroll_x_in_c0_eni46_31_tpl_7_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist31_sync_together243_aunroll_x_in_c0_eni46_31_tpl_7_rdcnt_eq <= 1'b0;
            end
            if (redist31_sync_together243_aunroll_x_in_c0_eni46_31_tpl_7_rdcnt_eq == 1'b1)
            begin
                redist31_sync_together243_aunroll_x_in_c0_eni46_31_tpl_7_rdcnt_i <= $unsigned(redist31_sync_together243_aunroll_x_in_c0_eni46_31_tpl_7_rdcnt_i) + $unsigned(3'd3);
            end
            else
            begin
                redist31_sync_together243_aunroll_x_in_c0_eni46_31_tpl_7_rdcnt_i <= $unsigned(redist31_sync_together243_aunroll_x_in_c0_eni46_31_tpl_7_rdcnt_i) + $unsigned(3'd1);
            end
        end
    end
    assign redist31_sync_together243_aunroll_x_in_c0_eni46_31_tpl_7_rdcnt_q = redist31_sync_together243_aunroll_x_in_c0_eni46_31_tpl_7_rdcnt_i[2:0];

    // redist31_sync_together243_aunroll_x_in_c0_eni46_31_tpl_7_wraddr(REG,520)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist31_sync_together243_aunroll_x_in_c0_eni46_31_tpl_7_wraddr_q <= $unsigned(3'b101);
        end
        else
        begin
            redist31_sync_together243_aunroll_x_in_c0_eni46_31_tpl_7_wraddr_q <= $unsigned(redist31_sync_together243_aunroll_x_in_c0_eni46_31_tpl_7_rdcnt_q);
        end
    end

    // redist31_sync_together243_aunroll_x_in_c0_eni46_31_tpl_7_mem(DUALMEM,518)
    assign redist31_sync_together243_aunroll_x_in_c0_eni46_31_tpl_7_mem_ia = $unsigned(in_c0_eni46_31_tpl);
    assign redist31_sync_together243_aunroll_x_in_c0_eni46_31_tpl_7_mem_aa = redist31_sync_together243_aunroll_x_in_c0_eni46_31_tpl_7_wraddr_q;
    assign redist31_sync_together243_aunroll_x_in_c0_eni46_31_tpl_7_mem_ab = redist31_sync_together243_aunroll_x_in_c0_eni46_31_tpl_7_rdcnt_q;
    assign redist31_sync_together243_aunroll_x_in_c0_eni46_31_tpl_7_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(3),
        .numwords_a(6),
        .width_b(32),
        .widthad_b(3),
        .numwords_b(6),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .address_reg_b("CLOCK0"),
        .indata_reg_b("CLOCK0"),
        .rdcontrol_reg_b("CLOCK0"),
        .byteena_reg_b("CLOCK0"),
        .outdata_reg_b("CLOCK1"),
        .outdata_aclr_b("CLEAR1"),
        .clock_enable_input_a("NORMAL"),
        .clock_enable_input_b("NORMAL"),
        .clock_enable_output_b("NORMAL"),
        .read_during_write_mode_mixed_ports("DONT_CARE"),
        .power_up_uninitialized("TRUE"),
        .intended_device_family("Arria 10")
    ) redist31_sync_together243_aunroll_x_in_c0_eni46_31_tpl_7_mem_dmem (
        .clocken1(redist31_sync_together243_aunroll_x_in_c0_eni46_31_tpl_7_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist31_sync_together243_aunroll_x_in_c0_eni46_31_tpl_7_mem_reset0),
        .clock1(clock),
        .address_a(redist31_sync_together243_aunroll_x_in_c0_eni46_31_tpl_7_mem_aa),
        .data_a(redist31_sync_together243_aunroll_x_in_c0_eni46_31_tpl_7_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist31_sync_together243_aunroll_x_in_c0_eni46_31_tpl_7_mem_ab),
        .q_b(redist31_sync_together243_aunroll_x_in_c0_eni46_31_tpl_7_mem_iq),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_b(),
        .clocken2(),
        .clocken3(),
        .aclr0(),
        .addressstall_a(),
        .addressstall_b(),
        .byteena_a(),
        .byteena_b(),
        .eccencbypass(),
        .eccencparity(),
        .sclr(),
        .address2_a(),
        .address2_b(),
        .q_a(),
        .eccstatus()
    );
    assign redist31_sync_together243_aunroll_x_in_c0_eni46_31_tpl_7_mem_q = redist31_sync_together243_aunroll_x_in_c0_eni46_31_tpl_7_mem_iq[31:0];

    // redist30_sync_together243_aunroll_x_in_c0_eni46_30_tpl_7(DELAY,396)
    dspba_delay_ver #( .width(1), .depth(7), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist30_sync_together243_aunroll_x_in_c0_eni46_30_tpl_7 ( .xin(in_c0_eni46_30_tpl), .xout(redist30_sync_together243_aunroll_x_in_c0_eni46_30_tpl_7_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist29_sync_together243_aunroll_x_in_c0_eni46_29_tpl_7_notEnable(LOGICAL,514)
    assign redist29_sync_together243_aunroll_x_in_c0_eni46_29_tpl_7_notEnable_q = $unsigned(~ (VCC_q));

    // redist29_sync_together243_aunroll_x_in_c0_eni46_29_tpl_7_nor(LOGICAL,515)
    assign redist29_sync_together243_aunroll_x_in_c0_eni46_29_tpl_7_nor_q = ~ (redist29_sync_together243_aunroll_x_in_c0_eni46_29_tpl_7_notEnable_q | redist29_sync_together243_aunroll_x_in_c0_eni46_29_tpl_7_sticky_ena_q);

    // redist29_sync_together243_aunroll_x_in_c0_eni46_29_tpl_7_mem_last(CONSTANT,511)
    assign redist29_sync_together243_aunroll_x_in_c0_eni46_29_tpl_7_mem_last_q = $unsigned(4'b0100);

    // redist29_sync_together243_aunroll_x_in_c0_eni46_29_tpl_7_cmp(LOGICAL,512)
    assign redist29_sync_together243_aunroll_x_in_c0_eni46_29_tpl_7_cmp_b = {1'b0, redist29_sync_together243_aunroll_x_in_c0_eni46_29_tpl_7_rdcnt_q};
    assign redist29_sync_together243_aunroll_x_in_c0_eni46_29_tpl_7_cmp_q = $unsigned(redist29_sync_together243_aunroll_x_in_c0_eni46_29_tpl_7_mem_last_q == redist29_sync_together243_aunroll_x_in_c0_eni46_29_tpl_7_cmp_b ? 1'b1 : 1'b0);

    // redist29_sync_together243_aunroll_x_in_c0_eni46_29_tpl_7_cmpReg(REG,513)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist29_sync_together243_aunroll_x_in_c0_eni46_29_tpl_7_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist29_sync_together243_aunroll_x_in_c0_eni46_29_tpl_7_cmpReg_q <= $unsigned(redist29_sync_together243_aunroll_x_in_c0_eni46_29_tpl_7_cmp_q);
        end
    end

    // redist29_sync_together243_aunroll_x_in_c0_eni46_29_tpl_7_sticky_ena(REG,516)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist29_sync_together243_aunroll_x_in_c0_eni46_29_tpl_7_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist29_sync_together243_aunroll_x_in_c0_eni46_29_tpl_7_nor_q == 1'b1)
        begin
            redist29_sync_together243_aunroll_x_in_c0_eni46_29_tpl_7_sticky_ena_q <= $unsigned(redist29_sync_together243_aunroll_x_in_c0_eni46_29_tpl_7_cmpReg_q);
        end
    end

    // redist29_sync_together243_aunroll_x_in_c0_eni46_29_tpl_7_enaAnd(LOGICAL,517)
    assign redist29_sync_together243_aunroll_x_in_c0_eni46_29_tpl_7_enaAnd_q = redist29_sync_together243_aunroll_x_in_c0_eni46_29_tpl_7_sticky_ena_q & VCC_q;

    // redist29_sync_together243_aunroll_x_in_c0_eni46_29_tpl_7_rdcnt(COUNTER,509)
    // low=0, high=5, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist29_sync_together243_aunroll_x_in_c0_eni46_29_tpl_7_rdcnt_i <= 3'd0;
            redist29_sync_together243_aunroll_x_in_c0_eni46_29_tpl_7_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist29_sync_together243_aunroll_x_in_c0_eni46_29_tpl_7_rdcnt_i == 3'd4)
            begin
                redist29_sync_together243_aunroll_x_in_c0_eni46_29_tpl_7_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist29_sync_together243_aunroll_x_in_c0_eni46_29_tpl_7_rdcnt_eq <= 1'b0;
            end
            if (redist29_sync_together243_aunroll_x_in_c0_eni46_29_tpl_7_rdcnt_eq == 1'b1)
            begin
                redist29_sync_together243_aunroll_x_in_c0_eni46_29_tpl_7_rdcnt_i <= $unsigned(redist29_sync_together243_aunroll_x_in_c0_eni46_29_tpl_7_rdcnt_i) + $unsigned(3'd3);
            end
            else
            begin
                redist29_sync_together243_aunroll_x_in_c0_eni46_29_tpl_7_rdcnt_i <= $unsigned(redist29_sync_together243_aunroll_x_in_c0_eni46_29_tpl_7_rdcnt_i) + $unsigned(3'd1);
            end
        end
    end
    assign redist29_sync_together243_aunroll_x_in_c0_eni46_29_tpl_7_rdcnt_q = redist29_sync_together243_aunroll_x_in_c0_eni46_29_tpl_7_rdcnt_i[2:0];

    // redist29_sync_together243_aunroll_x_in_c0_eni46_29_tpl_7_wraddr(REG,510)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist29_sync_together243_aunroll_x_in_c0_eni46_29_tpl_7_wraddr_q <= $unsigned(3'b101);
        end
        else
        begin
            redist29_sync_together243_aunroll_x_in_c0_eni46_29_tpl_7_wraddr_q <= $unsigned(redist29_sync_together243_aunroll_x_in_c0_eni46_29_tpl_7_rdcnt_q);
        end
    end

    // redist29_sync_together243_aunroll_x_in_c0_eni46_29_tpl_7_mem(DUALMEM,508)
    assign redist29_sync_together243_aunroll_x_in_c0_eni46_29_tpl_7_mem_ia = $unsigned(in_c0_eni46_29_tpl);
    assign redist29_sync_together243_aunroll_x_in_c0_eni46_29_tpl_7_mem_aa = redist29_sync_together243_aunroll_x_in_c0_eni46_29_tpl_7_wraddr_q;
    assign redist29_sync_together243_aunroll_x_in_c0_eni46_29_tpl_7_mem_ab = redist29_sync_together243_aunroll_x_in_c0_eni46_29_tpl_7_rdcnt_q;
    assign redist29_sync_together243_aunroll_x_in_c0_eni46_29_tpl_7_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(3),
        .numwords_a(6),
        .width_b(32),
        .widthad_b(3),
        .numwords_b(6),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .address_reg_b("CLOCK0"),
        .indata_reg_b("CLOCK0"),
        .rdcontrol_reg_b("CLOCK0"),
        .byteena_reg_b("CLOCK0"),
        .outdata_reg_b("CLOCK1"),
        .outdata_aclr_b("CLEAR1"),
        .clock_enable_input_a("NORMAL"),
        .clock_enable_input_b("NORMAL"),
        .clock_enable_output_b("NORMAL"),
        .read_during_write_mode_mixed_ports("DONT_CARE"),
        .power_up_uninitialized("TRUE"),
        .intended_device_family("Arria 10")
    ) redist29_sync_together243_aunroll_x_in_c0_eni46_29_tpl_7_mem_dmem (
        .clocken1(redist29_sync_together243_aunroll_x_in_c0_eni46_29_tpl_7_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist29_sync_together243_aunroll_x_in_c0_eni46_29_tpl_7_mem_reset0),
        .clock1(clock),
        .address_a(redist29_sync_together243_aunroll_x_in_c0_eni46_29_tpl_7_mem_aa),
        .data_a(redist29_sync_together243_aunroll_x_in_c0_eni46_29_tpl_7_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist29_sync_together243_aunroll_x_in_c0_eni46_29_tpl_7_mem_ab),
        .q_b(redist29_sync_together243_aunroll_x_in_c0_eni46_29_tpl_7_mem_iq),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_b(),
        .clocken2(),
        .clocken3(),
        .aclr0(),
        .addressstall_a(),
        .addressstall_b(),
        .byteena_a(),
        .byteena_b(),
        .eccencbypass(),
        .eccencparity(),
        .sclr(),
        .address2_a(),
        .address2_b(),
        .q_a(),
        .eccstatus()
    );
    assign redist29_sync_together243_aunroll_x_in_c0_eni46_29_tpl_7_mem_q = redist29_sync_together243_aunroll_x_in_c0_eni46_29_tpl_7_mem_iq[31:0];

    // redist28_sync_together243_aunroll_x_in_c0_eni46_28_tpl_7_notEnable(LOGICAL,504)
    assign redist28_sync_together243_aunroll_x_in_c0_eni46_28_tpl_7_notEnable_q = $unsigned(~ (VCC_q));

    // redist28_sync_together243_aunroll_x_in_c0_eni46_28_tpl_7_nor(LOGICAL,505)
    assign redist28_sync_together243_aunroll_x_in_c0_eni46_28_tpl_7_nor_q = ~ (redist28_sync_together243_aunroll_x_in_c0_eni46_28_tpl_7_notEnable_q | redist28_sync_together243_aunroll_x_in_c0_eni46_28_tpl_7_sticky_ena_q);

    // redist28_sync_together243_aunroll_x_in_c0_eni46_28_tpl_7_mem_last(CONSTANT,501)
    assign redist28_sync_together243_aunroll_x_in_c0_eni46_28_tpl_7_mem_last_q = $unsigned(4'b0100);

    // redist28_sync_together243_aunroll_x_in_c0_eni46_28_tpl_7_cmp(LOGICAL,502)
    assign redist28_sync_together243_aunroll_x_in_c0_eni46_28_tpl_7_cmp_b = {1'b0, redist28_sync_together243_aunroll_x_in_c0_eni46_28_tpl_7_rdcnt_q};
    assign redist28_sync_together243_aunroll_x_in_c0_eni46_28_tpl_7_cmp_q = $unsigned(redist28_sync_together243_aunroll_x_in_c0_eni46_28_tpl_7_mem_last_q == redist28_sync_together243_aunroll_x_in_c0_eni46_28_tpl_7_cmp_b ? 1'b1 : 1'b0);

    // redist28_sync_together243_aunroll_x_in_c0_eni46_28_tpl_7_cmpReg(REG,503)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist28_sync_together243_aunroll_x_in_c0_eni46_28_tpl_7_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist28_sync_together243_aunroll_x_in_c0_eni46_28_tpl_7_cmpReg_q <= $unsigned(redist28_sync_together243_aunroll_x_in_c0_eni46_28_tpl_7_cmp_q);
        end
    end

    // redist28_sync_together243_aunroll_x_in_c0_eni46_28_tpl_7_sticky_ena(REG,506)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist28_sync_together243_aunroll_x_in_c0_eni46_28_tpl_7_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist28_sync_together243_aunroll_x_in_c0_eni46_28_tpl_7_nor_q == 1'b1)
        begin
            redist28_sync_together243_aunroll_x_in_c0_eni46_28_tpl_7_sticky_ena_q <= $unsigned(redist28_sync_together243_aunroll_x_in_c0_eni46_28_tpl_7_cmpReg_q);
        end
    end

    // redist28_sync_together243_aunroll_x_in_c0_eni46_28_tpl_7_enaAnd(LOGICAL,507)
    assign redist28_sync_together243_aunroll_x_in_c0_eni46_28_tpl_7_enaAnd_q = redist28_sync_together243_aunroll_x_in_c0_eni46_28_tpl_7_sticky_ena_q & VCC_q;

    // redist28_sync_together243_aunroll_x_in_c0_eni46_28_tpl_7_rdcnt(COUNTER,499)
    // low=0, high=5, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist28_sync_together243_aunroll_x_in_c0_eni46_28_tpl_7_rdcnt_i <= 3'd0;
            redist28_sync_together243_aunroll_x_in_c0_eni46_28_tpl_7_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist28_sync_together243_aunroll_x_in_c0_eni46_28_tpl_7_rdcnt_i == 3'd4)
            begin
                redist28_sync_together243_aunroll_x_in_c0_eni46_28_tpl_7_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist28_sync_together243_aunroll_x_in_c0_eni46_28_tpl_7_rdcnt_eq <= 1'b0;
            end
            if (redist28_sync_together243_aunroll_x_in_c0_eni46_28_tpl_7_rdcnt_eq == 1'b1)
            begin
                redist28_sync_together243_aunroll_x_in_c0_eni46_28_tpl_7_rdcnt_i <= $unsigned(redist28_sync_together243_aunroll_x_in_c0_eni46_28_tpl_7_rdcnt_i) + $unsigned(3'd3);
            end
            else
            begin
                redist28_sync_together243_aunroll_x_in_c0_eni46_28_tpl_7_rdcnt_i <= $unsigned(redist28_sync_together243_aunroll_x_in_c0_eni46_28_tpl_7_rdcnt_i) + $unsigned(3'd1);
            end
        end
    end
    assign redist28_sync_together243_aunroll_x_in_c0_eni46_28_tpl_7_rdcnt_q = redist28_sync_together243_aunroll_x_in_c0_eni46_28_tpl_7_rdcnt_i[2:0];

    // redist28_sync_together243_aunroll_x_in_c0_eni46_28_tpl_7_wraddr(REG,500)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist28_sync_together243_aunroll_x_in_c0_eni46_28_tpl_7_wraddr_q <= $unsigned(3'b101);
        end
        else
        begin
            redist28_sync_together243_aunroll_x_in_c0_eni46_28_tpl_7_wraddr_q <= $unsigned(redist28_sync_together243_aunroll_x_in_c0_eni46_28_tpl_7_rdcnt_q);
        end
    end

    // redist28_sync_together243_aunroll_x_in_c0_eni46_28_tpl_7_mem(DUALMEM,498)
    assign redist28_sync_together243_aunroll_x_in_c0_eni46_28_tpl_7_mem_ia = $unsigned(in_c0_eni46_28_tpl);
    assign redist28_sync_together243_aunroll_x_in_c0_eni46_28_tpl_7_mem_aa = redist28_sync_together243_aunroll_x_in_c0_eni46_28_tpl_7_wraddr_q;
    assign redist28_sync_together243_aunroll_x_in_c0_eni46_28_tpl_7_mem_ab = redist28_sync_together243_aunroll_x_in_c0_eni46_28_tpl_7_rdcnt_q;
    assign redist28_sync_together243_aunroll_x_in_c0_eni46_28_tpl_7_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(64),
        .widthad_a(3),
        .numwords_a(6),
        .width_b(64),
        .widthad_b(3),
        .numwords_b(6),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .address_reg_b("CLOCK0"),
        .indata_reg_b("CLOCK0"),
        .rdcontrol_reg_b("CLOCK0"),
        .byteena_reg_b("CLOCK0"),
        .outdata_reg_b("CLOCK1"),
        .outdata_aclr_b("CLEAR1"),
        .clock_enable_input_a("NORMAL"),
        .clock_enable_input_b("NORMAL"),
        .clock_enable_output_b("NORMAL"),
        .read_during_write_mode_mixed_ports("DONT_CARE"),
        .power_up_uninitialized("TRUE"),
        .intended_device_family("Arria 10")
    ) redist28_sync_together243_aunroll_x_in_c0_eni46_28_tpl_7_mem_dmem (
        .clocken1(redist28_sync_together243_aunroll_x_in_c0_eni46_28_tpl_7_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist28_sync_together243_aunroll_x_in_c0_eni46_28_tpl_7_mem_reset0),
        .clock1(clock),
        .address_a(redist28_sync_together243_aunroll_x_in_c0_eni46_28_tpl_7_mem_aa),
        .data_a(redist28_sync_together243_aunroll_x_in_c0_eni46_28_tpl_7_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist28_sync_together243_aunroll_x_in_c0_eni46_28_tpl_7_mem_ab),
        .q_b(redist28_sync_together243_aunroll_x_in_c0_eni46_28_tpl_7_mem_iq),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_b(),
        .clocken2(),
        .clocken3(),
        .aclr0(),
        .addressstall_a(),
        .addressstall_b(),
        .byteena_a(),
        .byteena_b(),
        .eccencbypass(),
        .eccencparity(),
        .sclr(),
        .address2_a(),
        .address2_b(),
        .q_a(),
        .eccstatus()
    );
    assign redist28_sync_together243_aunroll_x_in_c0_eni46_28_tpl_7_mem_q = redist28_sync_together243_aunroll_x_in_c0_eni46_28_tpl_7_mem_iq[63:0];

    // redist27_sync_together243_aunroll_x_in_c0_eni46_27_tpl_7_notEnable(LOGICAL,494)
    assign redist27_sync_together243_aunroll_x_in_c0_eni46_27_tpl_7_notEnable_q = $unsigned(~ (VCC_q));

    // redist27_sync_together243_aunroll_x_in_c0_eni46_27_tpl_7_nor(LOGICAL,495)
    assign redist27_sync_together243_aunroll_x_in_c0_eni46_27_tpl_7_nor_q = ~ (redist27_sync_together243_aunroll_x_in_c0_eni46_27_tpl_7_notEnable_q | redist27_sync_together243_aunroll_x_in_c0_eni46_27_tpl_7_sticky_ena_q);

    // redist27_sync_together243_aunroll_x_in_c0_eni46_27_tpl_7_mem_last(CONSTANT,491)
    assign redist27_sync_together243_aunroll_x_in_c0_eni46_27_tpl_7_mem_last_q = $unsigned(4'b0100);

    // redist27_sync_together243_aunroll_x_in_c0_eni46_27_tpl_7_cmp(LOGICAL,492)
    assign redist27_sync_together243_aunroll_x_in_c0_eni46_27_tpl_7_cmp_b = {1'b0, redist27_sync_together243_aunroll_x_in_c0_eni46_27_tpl_7_rdcnt_q};
    assign redist27_sync_together243_aunroll_x_in_c0_eni46_27_tpl_7_cmp_q = $unsigned(redist27_sync_together243_aunroll_x_in_c0_eni46_27_tpl_7_mem_last_q == redist27_sync_together243_aunroll_x_in_c0_eni46_27_tpl_7_cmp_b ? 1'b1 : 1'b0);

    // redist27_sync_together243_aunroll_x_in_c0_eni46_27_tpl_7_cmpReg(REG,493)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist27_sync_together243_aunroll_x_in_c0_eni46_27_tpl_7_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist27_sync_together243_aunroll_x_in_c0_eni46_27_tpl_7_cmpReg_q <= $unsigned(redist27_sync_together243_aunroll_x_in_c0_eni46_27_tpl_7_cmp_q);
        end
    end

    // redist27_sync_together243_aunroll_x_in_c0_eni46_27_tpl_7_sticky_ena(REG,496)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist27_sync_together243_aunroll_x_in_c0_eni46_27_tpl_7_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist27_sync_together243_aunroll_x_in_c0_eni46_27_tpl_7_nor_q == 1'b1)
        begin
            redist27_sync_together243_aunroll_x_in_c0_eni46_27_tpl_7_sticky_ena_q <= $unsigned(redist27_sync_together243_aunroll_x_in_c0_eni46_27_tpl_7_cmpReg_q);
        end
    end

    // redist27_sync_together243_aunroll_x_in_c0_eni46_27_tpl_7_enaAnd(LOGICAL,497)
    assign redist27_sync_together243_aunroll_x_in_c0_eni46_27_tpl_7_enaAnd_q = redist27_sync_together243_aunroll_x_in_c0_eni46_27_tpl_7_sticky_ena_q & VCC_q;

    // redist27_sync_together243_aunroll_x_in_c0_eni46_27_tpl_7_rdcnt(COUNTER,489)
    // low=0, high=5, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist27_sync_together243_aunroll_x_in_c0_eni46_27_tpl_7_rdcnt_i <= 3'd0;
            redist27_sync_together243_aunroll_x_in_c0_eni46_27_tpl_7_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist27_sync_together243_aunroll_x_in_c0_eni46_27_tpl_7_rdcnt_i == 3'd4)
            begin
                redist27_sync_together243_aunroll_x_in_c0_eni46_27_tpl_7_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist27_sync_together243_aunroll_x_in_c0_eni46_27_tpl_7_rdcnt_eq <= 1'b0;
            end
            if (redist27_sync_together243_aunroll_x_in_c0_eni46_27_tpl_7_rdcnt_eq == 1'b1)
            begin
                redist27_sync_together243_aunroll_x_in_c0_eni46_27_tpl_7_rdcnt_i <= $unsigned(redist27_sync_together243_aunroll_x_in_c0_eni46_27_tpl_7_rdcnt_i) + $unsigned(3'd3);
            end
            else
            begin
                redist27_sync_together243_aunroll_x_in_c0_eni46_27_tpl_7_rdcnt_i <= $unsigned(redist27_sync_together243_aunroll_x_in_c0_eni46_27_tpl_7_rdcnt_i) + $unsigned(3'd1);
            end
        end
    end
    assign redist27_sync_together243_aunroll_x_in_c0_eni46_27_tpl_7_rdcnt_q = redist27_sync_together243_aunroll_x_in_c0_eni46_27_tpl_7_rdcnt_i[2:0];

    // redist27_sync_together243_aunroll_x_in_c0_eni46_27_tpl_7_wraddr(REG,490)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist27_sync_together243_aunroll_x_in_c0_eni46_27_tpl_7_wraddr_q <= $unsigned(3'b101);
        end
        else
        begin
            redist27_sync_together243_aunroll_x_in_c0_eni46_27_tpl_7_wraddr_q <= $unsigned(redist27_sync_together243_aunroll_x_in_c0_eni46_27_tpl_7_rdcnt_q);
        end
    end

    // redist27_sync_together243_aunroll_x_in_c0_eni46_27_tpl_7_mem(DUALMEM,488)
    assign redist27_sync_together243_aunroll_x_in_c0_eni46_27_tpl_7_mem_ia = $unsigned(in_c0_eni46_27_tpl);
    assign redist27_sync_together243_aunroll_x_in_c0_eni46_27_tpl_7_mem_aa = redist27_sync_together243_aunroll_x_in_c0_eni46_27_tpl_7_wraddr_q;
    assign redist27_sync_together243_aunroll_x_in_c0_eni46_27_tpl_7_mem_ab = redist27_sync_together243_aunroll_x_in_c0_eni46_27_tpl_7_rdcnt_q;
    assign redist27_sync_together243_aunroll_x_in_c0_eni46_27_tpl_7_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(64),
        .widthad_a(3),
        .numwords_a(6),
        .width_b(64),
        .widthad_b(3),
        .numwords_b(6),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .address_reg_b("CLOCK0"),
        .indata_reg_b("CLOCK0"),
        .rdcontrol_reg_b("CLOCK0"),
        .byteena_reg_b("CLOCK0"),
        .outdata_reg_b("CLOCK1"),
        .outdata_aclr_b("CLEAR1"),
        .clock_enable_input_a("NORMAL"),
        .clock_enable_input_b("NORMAL"),
        .clock_enable_output_b("NORMAL"),
        .read_during_write_mode_mixed_ports("DONT_CARE"),
        .power_up_uninitialized("TRUE"),
        .intended_device_family("Arria 10")
    ) redist27_sync_together243_aunroll_x_in_c0_eni46_27_tpl_7_mem_dmem (
        .clocken1(redist27_sync_together243_aunroll_x_in_c0_eni46_27_tpl_7_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist27_sync_together243_aunroll_x_in_c0_eni46_27_tpl_7_mem_reset0),
        .clock1(clock),
        .address_a(redist27_sync_together243_aunroll_x_in_c0_eni46_27_tpl_7_mem_aa),
        .data_a(redist27_sync_together243_aunroll_x_in_c0_eni46_27_tpl_7_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist27_sync_together243_aunroll_x_in_c0_eni46_27_tpl_7_mem_ab),
        .q_b(redist27_sync_together243_aunroll_x_in_c0_eni46_27_tpl_7_mem_iq),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_b(),
        .clocken2(),
        .clocken3(),
        .aclr0(),
        .addressstall_a(),
        .addressstall_b(),
        .byteena_a(),
        .byteena_b(),
        .eccencbypass(),
        .eccencparity(),
        .sclr(),
        .address2_a(),
        .address2_b(),
        .q_a(),
        .eccstatus()
    );
    assign redist27_sync_together243_aunroll_x_in_c0_eni46_27_tpl_7_mem_q = redist27_sync_together243_aunroll_x_in_c0_eni46_27_tpl_7_mem_iq[63:0];

    // valid_fanout_reg54(REG,298)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg54_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg54_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg55(REG,299)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg55_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg55_q <= $unsigned(redist48_sync_together243_aunroll_x_in_i_valid_3_q);
        end
    end

    // i_llvm_fpga_fanout_i1_keep_going60_fanout_adaptor_conv2d3x310(REG,108)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_llvm_fpga_fanout_i1_keep_going60_fanout_adaptor_conv2d3x310_q <= $unsigned(1'b0);
        end
        else
        begin
            i_llvm_fpga_fanout_i1_keep_going60_fanout_adaptor_conv2d3x310_q <= i_llvm_fpga_pipeline_keep_going60_conv2d3x38_out_data_out;
        end
    end

    // i_llvm_fpga_push_i1_push69_conv2d3x3103(BLACKBOX,152)@5
    // out out_feedback_out_69@20000000
    // out out_feedback_valid_out_69@20000000
    conv2d3x3_i_llvm_fpga_push_i1_push69_0 thei_llvm_fpga_push_i1_push69_conv2d3x3103 (
        .in_data_in(redist85_i_llvm_fpga_pop_i1_pop69_conv2d3x3102_out_data_out_3_q),
        .in_feedback_stall_in_69(i_llvm_fpga_pop_i1_pop69_conv2d3x3102_out_feedback_stall_out_69),
        .in_keep_going60_fanout_adaptor(i_llvm_fpga_fanout_i1_keep_going60_fanout_adaptor_conv2d3x310_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg55_q),
        .out_data_out(),
        .out_feedback_out_69(i_llvm_fpga_push_i1_push69_conv2d3x3103_out_feedback_out_69),
        .out_feedback_valid_out_69(i_llvm_fpga_push_i1_push69_conv2d3x3103_out_feedback_valid_out_69),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_fanout_i1_c0_ene1671_fanout_adaptor1206_conv2d3x32(REG,105)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_llvm_fpga_fanout_i1_c0_ene1671_fanout_adaptor1206_conv2d3x32_q <= $unsigned(1'b0);
        end
        else
        begin
            i_llvm_fpga_fanout_i1_c0_ene1671_fanout_adaptor1206_conv2d3x32_q <= in_c0_eni46_1_tpl;
        end
    end

    // redist26_sync_together243_aunroll_x_in_c0_eni46_26_tpl_1(DELAY,392)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist26_sync_together243_aunroll_x_in_c0_eni46_26_tpl_1_q <= '0;
        end
        else
        begin
            redist26_sync_together243_aunroll_x_in_c0_eni46_26_tpl_1_q <= $unsigned(in_c0_eni46_26_tpl);
        end
    end

    // i_llvm_fpga_pop_i1_pop69_conv2d3x3102(BLACKBOX,121)@2
    // out out_feedback_stall_out_69@20000000
    conv2d3x3_i_llvm_fpga_pop_i1_pop69_0 thei_llvm_fpga_pop_i1_pop69_conv2d3x3102 (
        .in_data_in(redist26_sync_together243_aunroll_x_in_c0_eni46_26_tpl_1_q),
        .in_dir(i_llvm_fpga_fanout_i1_c0_ene1671_fanout_adaptor1206_conv2d3x32_q),
        .in_feedback_in_69(i_llvm_fpga_push_i1_push69_conv2d3x3103_out_feedback_out_69),
        .in_feedback_valid_in_69(i_llvm_fpga_push_i1_push69_conv2d3x3103_out_feedback_valid_out_69),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg54_q),
        .out_data_out(i_llvm_fpga_pop_i1_pop69_conv2d3x3102_out_data_out),
        .out_feedback_stall_out_69(i_llvm_fpga_pop_i1_pop69_conv2d3x3102_out_feedback_stall_out_69),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist85_i_llvm_fpga_pop_i1_pop69_conv2d3x3102_out_data_out_3(DELAY,451)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist85_i_llvm_fpga_pop_i1_pop69_conv2d3x3102_out_data_out_3_delay_0 <= '0;
            redist85_i_llvm_fpga_pop_i1_pop69_conv2d3x3102_out_data_out_3_delay_1 <= '0;
            redist85_i_llvm_fpga_pop_i1_pop69_conv2d3x3102_out_data_out_3_q <= '0;
        end
        else
        begin
            redist85_i_llvm_fpga_pop_i1_pop69_conv2d3x3102_out_data_out_3_delay_0 <= $unsigned(i_llvm_fpga_pop_i1_pop69_conv2d3x3102_out_data_out);
            redist85_i_llvm_fpga_pop_i1_pop69_conv2d3x3102_out_data_out_3_delay_1 <= redist85_i_llvm_fpga_pop_i1_pop69_conv2d3x3102_out_data_out_3_delay_0;
            redist85_i_llvm_fpga_pop_i1_pop69_conv2d3x3102_out_data_out_3_q <= redist85_i_llvm_fpga_pop_i1_pop69_conv2d3x3102_out_data_out_3_delay_1;
        end
    end

    // redist86_i_llvm_fpga_pop_i1_pop69_conv2d3x3102_out_data_out_6(DELAY,452)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist86_i_llvm_fpga_pop_i1_pop69_conv2d3x3102_out_data_out_6_delay_0 <= '0;
            redist86_i_llvm_fpga_pop_i1_pop69_conv2d3x3102_out_data_out_6_delay_1 <= '0;
            redist86_i_llvm_fpga_pop_i1_pop69_conv2d3x3102_out_data_out_6_q <= '0;
        end
        else
        begin
            redist86_i_llvm_fpga_pop_i1_pop69_conv2d3x3102_out_data_out_6_delay_0 <= $unsigned(redist85_i_llvm_fpga_pop_i1_pop69_conv2d3x3102_out_data_out_3_q);
            redist86_i_llvm_fpga_pop_i1_pop69_conv2d3x3102_out_data_out_6_delay_1 <= redist86_i_llvm_fpga_pop_i1_pop69_conv2d3x3102_out_data_out_6_delay_0;
            redist86_i_llvm_fpga_pop_i1_pop69_conv2d3x3102_out_data_out_6_q <= redist86_i_llvm_fpga_pop_i1_pop69_conv2d3x3102_out_data_out_6_delay_1;
        end
    end

    // redist80_i_llvm_fpga_pop_i32_inc50184_pop68_conv2d3x3100_out_data_out_6_notEnable(LOGICAL,728)
    assign redist80_i_llvm_fpga_pop_i32_inc50184_pop68_conv2d3x3100_out_data_out_6_notEnable_q = $unsigned(~ (VCC_q));

    // redist80_i_llvm_fpga_pop_i32_inc50184_pop68_conv2d3x3100_out_data_out_6_nor(LOGICAL,729)
    assign redist80_i_llvm_fpga_pop_i32_inc50184_pop68_conv2d3x3100_out_data_out_6_nor_q = ~ (redist80_i_llvm_fpga_pop_i32_inc50184_pop68_conv2d3x3100_out_data_out_6_notEnable_q | redist80_i_llvm_fpga_pop_i32_inc50184_pop68_conv2d3x3100_out_data_out_6_sticky_ena_q);

    // redist80_i_llvm_fpga_pop_i32_inc50184_pop68_conv2d3x3100_out_data_out_6_cmpReg(REG,727)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist80_i_llvm_fpga_pop_i32_inc50184_pop68_conv2d3x3100_out_data_out_6_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist80_i_llvm_fpga_pop_i32_inc50184_pop68_conv2d3x3100_out_data_out_6_cmpReg_q <= $unsigned(VCC_q);
        end
    end

    // redist80_i_llvm_fpga_pop_i32_inc50184_pop68_conv2d3x3100_out_data_out_6_sticky_ena(REG,730)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist80_i_llvm_fpga_pop_i32_inc50184_pop68_conv2d3x3100_out_data_out_6_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist80_i_llvm_fpga_pop_i32_inc50184_pop68_conv2d3x3100_out_data_out_6_nor_q == 1'b1)
        begin
            redist80_i_llvm_fpga_pop_i32_inc50184_pop68_conv2d3x3100_out_data_out_6_sticky_ena_q <= $unsigned(redist80_i_llvm_fpga_pop_i32_inc50184_pop68_conv2d3x3100_out_data_out_6_cmpReg_q);
        end
    end

    // redist80_i_llvm_fpga_pop_i32_inc50184_pop68_conv2d3x3100_out_data_out_6_enaAnd(LOGICAL,731)
    assign redist80_i_llvm_fpga_pop_i32_inc50184_pop68_conv2d3x3100_out_data_out_6_enaAnd_q = redist80_i_llvm_fpga_pop_i32_inc50184_pop68_conv2d3x3100_out_data_out_6_sticky_ena_q & VCC_q;

    // redist80_i_llvm_fpga_pop_i32_inc50184_pop68_conv2d3x3100_out_data_out_6_rdcnt(COUNTER,725)
    // low=0, high=1, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist80_i_llvm_fpga_pop_i32_inc50184_pop68_conv2d3x3100_out_data_out_6_rdcnt_i <= 1'd0;
        end
        else
        begin
            redist80_i_llvm_fpga_pop_i32_inc50184_pop68_conv2d3x3100_out_data_out_6_rdcnt_i <= $unsigned(redist80_i_llvm_fpga_pop_i32_inc50184_pop68_conv2d3x3100_out_data_out_6_rdcnt_i) + $unsigned(1'd1);
        end
    end
    assign redist80_i_llvm_fpga_pop_i32_inc50184_pop68_conv2d3x3100_out_data_out_6_rdcnt_q = redist80_i_llvm_fpga_pop_i32_inc50184_pop68_conv2d3x3100_out_data_out_6_rdcnt_i[0:0];

    // redist79_i_llvm_fpga_pop_i32_inc50184_pop68_conv2d3x3100_out_data_out_3_notEnable(LOGICAL,720)
    assign redist79_i_llvm_fpga_pop_i32_inc50184_pop68_conv2d3x3100_out_data_out_3_notEnable_q = $unsigned(~ (VCC_q));

    // redist79_i_llvm_fpga_pop_i32_inc50184_pop68_conv2d3x3100_out_data_out_3_nor(LOGICAL,721)
    assign redist79_i_llvm_fpga_pop_i32_inc50184_pop68_conv2d3x3100_out_data_out_3_nor_q = ~ (redist79_i_llvm_fpga_pop_i32_inc50184_pop68_conv2d3x3100_out_data_out_3_notEnable_q | redist79_i_llvm_fpga_pop_i32_inc50184_pop68_conv2d3x3100_out_data_out_3_sticky_ena_q);

    // redist79_i_llvm_fpga_pop_i32_inc50184_pop68_conv2d3x3100_out_data_out_3_cmpReg(REG,719)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist79_i_llvm_fpga_pop_i32_inc50184_pop68_conv2d3x3100_out_data_out_3_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist79_i_llvm_fpga_pop_i32_inc50184_pop68_conv2d3x3100_out_data_out_3_cmpReg_q <= $unsigned(VCC_q);
        end
    end

    // redist79_i_llvm_fpga_pop_i32_inc50184_pop68_conv2d3x3100_out_data_out_3_sticky_ena(REG,722)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist79_i_llvm_fpga_pop_i32_inc50184_pop68_conv2d3x3100_out_data_out_3_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist79_i_llvm_fpga_pop_i32_inc50184_pop68_conv2d3x3100_out_data_out_3_nor_q == 1'b1)
        begin
            redist79_i_llvm_fpga_pop_i32_inc50184_pop68_conv2d3x3100_out_data_out_3_sticky_ena_q <= $unsigned(redist79_i_llvm_fpga_pop_i32_inc50184_pop68_conv2d3x3100_out_data_out_3_cmpReg_q);
        end
    end

    // redist79_i_llvm_fpga_pop_i32_inc50184_pop68_conv2d3x3100_out_data_out_3_enaAnd(LOGICAL,723)
    assign redist79_i_llvm_fpga_pop_i32_inc50184_pop68_conv2d3x3100_out_data_out_3_enaAnd_q = redist79_i_llvm_fpga_pop_i32_inc50184_pop68_conv2d3x3100_out_data_out_3_sticky_ena_q & VCC_q;

    // redist79_i_llvm_fpga_pop_i32_inc50184_pop68_conv2d3x3100_out_data_out_3_rdcnt(COUNTER,717)
    // low=0, high=1, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist79_i_llvm_fpga_pop_i32_inc50184_pop68_conv2d3x3100_out_data_out_3_rdcnt_i <= 1'd0;
        end
        else
        begin
            redist79_i_llvm_fpga_pop_i32_inc50184_pop68_conv2d3x3100_out_data_out_3_rdcnt_i <= $unsigned(redist79_i_llvm_fpga_pop_i32_inc50184_pop68_conv2d3x3100_out_data_out_3_rdcnt_i) + $unsigned(1'd1);
        end
    end
    assign redist79_i_llvm_fpga_pop_i32_inc50184_pop68_conv2d3x3100_out_data_out_3_rdcnt_q = redist79_i_llvm_fpga_pop_i32_inc50184_pop68_conv2d3x3100_out_data_out_3_rdcnt_i[0:0];

    // valid_fanout_reg52(REG,296)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg52_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg52_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg53(REG,297)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg53_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg53_q <= $unsigned(redist48_sync_together243_aunroll_x_in_i_valid_3_q);
        end
    end

    // i_llvm_fpga_push_i32_inc50184_push68_conv2d3x3101(BLACKBOX,157)@5
    // out out_feedback_out_68@20000000
    // out out_feedback_valid_out_68@20000000
    conv2d3x3_i_llvm_fpga_push_i32_inc50184_push68_0 thei_llvm_fpga_push_i32_inc50184_push68_conv2d3x3101 (
        .in_data_in(redist79_i_llvm_fpga_pop_i32_inc50184_pop68_conv2d3x3100_out_data_out_3_mem_q),
        .in_feedback_stall_in_68(i_llvm_fpga_pop_i32_inc50184_pop68_conv2d3x3100_out_feedback_stall_out_68),
        .in_keep_going60_fanout_adaptor(i_llvm_fpga_fanout_i1_keep_going60_fanout_adaptor_conv2d3x310_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg53_q),
        .out_data_out(),
        .out_feedback_out_68(i_llvm_fpga_push_i32_inc50184_push68_conv2d3x3101_out_feedback_out_68),
        .out_feedback_valid_out_68(i_llvm_fpga_push_i32_inc50184_push68_conv2d3x3101_out_feedback_valid_out_68),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist25_sync_together243_aunroll_x_in_c0_eni46_25_tpl_1(DELAY,391)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist25_sync_together243_aunroll_x_in_c0_eni46_25_tpl_1_q <= '0;
        end
        else
        begin
            redist25_sync_together243_aunroll_x_in_c0_eni46_25_tpl_1_q <= $unsigned(in_c0_eni46_25_tpl);
        end
    end

    // i_llvm_fpga_pop_i32_inc50184_pop68_conv2d3x3100(BLACKBOX,126)@2
    // out out_feedback_stall_out_68@20000000
    conv2d3x3_i_llvm_fpga_pop_i32_inc50184_pop68_0 thei_llvm_fpga_pop_i32_inc50184_pop68_conv2d3x3100 (
        .in_data_in(redist25_sync_together243_aunroll_x_in_c0_eni46_25_tpl_1_q),
        .in_dir(i_llvm_fpga_fanout_i1_c0_ene1671_fanout_adaptor1206_conv2d3x32_q),
        .in_feedback_in_68(i_llvm_fpga_push_i32_inc50184_push68_conv2d3x3101_out_feedback_out_68),
        .in_feedback_valid_in_68(i_llvm_fpga_push_i32_inc50184_push68_conv2d3x3101_out_feedback_valid_out_68),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg52_q),
        .out_data_out(i_llvm_fpga_pop_i32_inc50184_pop68_conv2d3x3100_out_data_out),
        .out_feedback_stall_out_68(i_llvm_fpga_pop_i32_inc50184_pop68_conv2d3x3100_out_feedback_stall_out_68),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist79_i_llvm_fpga_pop_i32_inc50184_pop68_conv2d3x3100_out_data_out_3_wraddr(REG,718)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist79_i_llvm_fpga_pop_i32_inc50184_pop68_conv2d3x3100_out_data_out_3_wraddr_q <= $unsigned(1'b1);
        end
        else
        begin
            redist79_i_llvm_fpga_pop_i32_inc50184_pop68_conv2d3x3100_out_data_out_3_wraddr_q <= $unsigned(redist79_i_llvm_fpga_pop_i32_inc50184_pop68_conv2d3x3100_out_data_out_3_rdcnt_q);
        end
    end

    // redist79_i_llvm_fpga_pop_i32_inc50184_pop68_conv2d3x3100_out_data_out_3_mem(DUALMEM,716)
    assign redist79_i_llvm_fpga_pop_i32_inc50184_pop68_conv2d3x3100_out_data_out_3_mem_ia = $unsigned(i_llvm_fpga_pop_i32_inc50184_pop68_conv2d3x3100_out_data_out);
    assign redist79_i_llvm_fpga_pop_i32_inc50184_pop68_conv2d3x3100_out_data_out_3_mem_aa = redist79_i_llvm_fpga_pop_i32_inc50184_pop68_conv2d3x3100_out_data_out_3_wraddr_q;
    assign redist79_i_llvm_fpga_pop_i32_inc50184_pop68_conv2d3x3100_out_data_out_3_mem_ab = redist79_i_llvm_fpga_pop_i32_inc50184_pop68_conv2d3x3100_out_data_out_3_rdcnt_q;
    assign redist79_i_llvm_fpga_pop_i32_inc50184_pop68_conv2d3x3100_out_data_out_3_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(1),
        .numwords_a(2),
        .width_b(32),
        .widthad_b(1),
        .numwords_b(2),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .address_reg_b("CLOCK0"),
        .indata_reg_b("CLOCK0"),
        .rdcontrol_reg_b("CLOCK0"),
        .byteena_reg_b("CLOCK0"),
        .outdata_reg_b("CLOCK1"),
        .outdata_aclr_b("CLEAR1"),
        .clock_enable_input_a("NORMAL"),
        .clock_enable_input_b("NORMAL"),
        .clock_enable_output_b("NORMAL"),
        .read_during_write_mode_mixed_ports("DONT_CARE"),
        .power_up_uninitialized("TRUE"),
        .intended_device_family("Arria 10")
    ) redist79_i_llvm_fpga_pop_i32_inc50184_pop68_conv2d3x3100_out_data_out_3_mem_dmem (
        .clocken1(redist79_i_llvm_fpga_pop_i32_inc50184_pop68_conv2d3x3100_out_data_out_3_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist79_i_llvm_fpga_pop_i32_inc50184_pop68_conv2d3x3100_out_data_out_3_mem_reset0),
        .clock1(clock),
        .address_a(redist79_i_llvm_fpga_pop_i32_inc50184_pop68_conv2d3x3100_out_data_out_3_mem_aa),
        .data_a(redist79_i_llvm_fpga_pop_i32_inc50184_pop68_conv2d3x3100_out_data_out_3_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist79_i_llvm_fpga_pop_i32_inc50184_pop68_conv2d3x3100_out_data_out_3_mem_ab),
        .q_b(redist79_i_llvm_fpga_pop_i32_inc50184_pop68_conv2d3x3100_out_data_out_3_mem_iq),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_b(),
        .clocken2(),
        .clocken3(),
        .aclr0(),
        .addressstall_a(),
        .addressstall_b(),
        .byteena_a(),
        .byteena_b(),
        .eccencbypass(),
        .eccencparity(),
        .sclr(),
        .address2_a(),
        .address2_b(),
        .q_a(),
        .eccstatus()
    );
    assign redist79_i_llvm_fpga_pop_i32_inc50184_pop68_conv2d3x3100_out_data_out_3_mem_q = redist79_i_llvm_fpga_pop_i32_inc50184_pop68_conv2d3x3100_out_data_out_3_mem_iq[31:0];

    // redist80_i_llvm_fpga_pop_i32_inc50184_pop68_conv2d3x3100_out_data_out_6_wraddr(REG,726)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist80_i_llvm_fpga_pop_i32_inc50184_pop68_conv2d3x3100_out_data_out_6_wraddr_q <= $unsigned(1'b1);
        end
        else
        begin
            redist80_i_llvm_fpga_pop_i32_inc50184_pop68_conv2d3x3100_out_data_out_6_wraddr_q <= $unsigned(redist80_i_llvm_fpga_pop_i32_inc50184_pop68_conv2d3x3100_out_data_out_6_rdcnt_q);
        end
    end

    // redist80_i_llvm_fpga_pop_i32_inc50184_pop68_conv2d3x3100_out_data_out_6_mem(DUALMEM,724)
    assign redist80_i_llvm_fpga_pop_i32_inc50184_pop68_conv2d3x3100_out_data_out_6_mem_ia = $unsigned(redist79_i_llvm_fpga_pop_i32_inc50184_pop68_conv2d3x3100_out_data_out_3_mem_q);
    assign redist80_i_llvm_fpga_pop_i32_inc50184_pop68_conv2d3x3100_out_data_out_6_mem_aa = redist80_i_llvm_fpga_pop_i32_inc50184_pop68_conv2d3x3100_out_data_out_6_wraddr_q;
    assign redist80_i_llvm_fpga_pop_i32_inc50184_pop68_conv2d3x3100_out_data_out_6_mem_ab = redist80_i_llvm_fpga_pop_i32_inc50184_pop68_conv2d3x3100_out_data_out_6_rdcnt_q;
    assign redist80_i_llvm_fpga_pop_i32_inc50184_pop68_conv2d3x3100_out_data_out_6_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(1),
        .numwords_a(2),
        .width_b(32),
        .widthad_b(1),
        .numwords_b(2),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .address_reg_b("CLOCK0"),
        .indata_reg_b("CLOCK0"),
        .rdcontrol_reg_b("CLOCK0"),
        .byteena_reg_b("CLOCK0"),
        .outdata_reg_b("CLOCK1"),
        .outdata_aclr_b("CLEAR1"),
        .clock_enable_input_a("NORMAL"),
        .clock_enable_input_b("NORMAL"),
        .clock_enable_output_b("NORMAL"),
        .read_during_write_mode_mixed_ports("DONT_CARE"),
        .power_up_uninitialized("TRUE"),
        .intended_device_family("Arria 10")
    ) redist80_i_llvm_fpga_pop_i32_inc50184_pop68_conv2d3x3100_out_data_out_6_mem_dmem (
        .clocken1(redist80_i_llvm_fpga_pop_i32_inc50184_pop68_conv2d3x3100_out_data_out_6_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist80_i_llvm_fpga_pop_i32_inc50184_pop68_conv2d3x3100_out_data_out_6_mem_reset0),
        .clock1(clock),
        .address_a(redist80_i_llvm_fpga_pop_i32_inc50184_pop68_conv2d3x3100_out_data_out_6_mem_aa),
        .data_a(redist80_i_llvm_fpga_pop_i32_inc50184_pop68_conv2d3x3100_out_data_out_6_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist80_i_llvm_fpga_pop_i32_inc50184_pop68_conv2d3x3100_out_data_out_6_mem_ab),
        .q_b(redist80_i_llvm_fpga_pop_i32_inc50184_pop68_conv2d3x3100_out_data_out_6_mem_iq),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_b(),
        .clocken2(),
        .clocken3(),
        .aclr0(),
        .addressstall_a(),
        .addressstall_b(),
        .byteena_a(),
        .byteena_b(),
        .eccencbypass(),
        .eccencparity(),
        .sclr(),
        .address2_a(),
        .address2_b(),
        .q_a(),
        .eccstatus()
    );
    assign redist80_i_llvm_fpga_pop_i32_inc50184_pop68_conv2d3x3100_out_data_out_6_mem_q = redist80_i_llvm_fpga_pop_i32_inc50184_pop68_conv2d3x3100_out_data_out_6_mem_iq[31:0];

    // redist73_i_llvm_fpga_pop_i32_mul32181_pop66_conv2d3x398_out_data_out_6_notEnable(LOGICAL,695)
    assign redist73_i_llvm_fpga_pop_i32_mul32181_pop66_conv2d3x398_out_data_out_6_notEnable_q = $unsigned(~ (VCC_q));

    // redist73_i_llvm_fpga_pop_i32_mul32181_pop66_conv2d3x398_out_data_out_6_nor(LOGICAL,696)
    assign redist73_i_llvm_fpga_pop_i32_mul32181_pop66_conv2d3x398_out_data_out_6_nor_q = ~ (redist73_i_llvm_fpga_pop_i32_mul32181_pop66_conv2d3x398_out_data_out_6_notEnable_q | redist73_i_llvm_fpga_pop_i32_mul32181_pop66_conv2d3x398_out_data_out_6_sticky_ena_q);

    // redist73_i_llvm_fpga_pop_i32_mul32181_pop66_conv2d3x398_out_data_out_6_cmpReg(REG,694)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist73_i_llvm_fpga_pop_i32_mul32181_pop66_conv2d3x398_out_data_out_6_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist73_i_llvm_fpga_pop_i32_mul32181_pop66_conv2d3x398_out_data_out_6_cmpReg_q <= $unsigned(VCC_q);
        end
    end

    // redist73_i_llvm_fpga_pop_i32_mul32181_pop66_conv2d3x398_out_data_out_6_sticky_ena(REG,697)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist73_i_llvm_fpga_pop_i32_mul32181_pop66_conv2d3x398_out_data_out_6_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist73_i_llvm_fpga_pop_i32_mul32181_pop66_conv2d3x398_out_data_out_6_nor_q == 1'b1)
        begin
            redist73_i_llvm_fpga_pop_i32_mul32181_pop66_conv2d3x398_out_data_out_6_sticky_ena_q <= $unsigned(redist73_i_llvm_fpga_pop_i32_mul32181_pop66_conv2d3x398_out_data_out_6_cmpReg_q);
        end
    end

    // redist73_i_llvm_fpga_pop_i32_mul32181_pop66_conv2d3x398_out_data_out_6_enaAnd(LOGICAL,698)
    assign redist73_i_llvm_fpga_pop_i32_mul32181_pop66_conv2d3x398_out_data_out_6_enaAnd_q = redist73_i_llvm_fpga_pop_i32_mul32181_pop66_conv2d3x398_out_data_out_6_sticky_ena_q & VCC_q;

    // redist73_i_llvm_fpga_pop_i32_mul32181_pop66_conv2d3x398_out_data_out_6_rdcnt(COUNTER,692)
    // low=0, high=1, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist73_i_llvm_fpga_pop_i32_mul32181_pop66_conv2d3x398_out_data_out_6_rdcnt_i <= 1'd0;
        end
        else
        begin
            redist73_i_llvm_fpga_pop_i32_mul32181_pop66_conv2d3x398_out_data_out_6_rdcnt_i <= $unsigned(redist73_i_llvm_fpga_pop_i32_mul32181_pop66_conv2d3x398_out_data_out_6_rdcnt_i) + $unsigned(1'd1);
        end
    end
    assign redist73_i_llvm_fpga_pop_i32_mul32181_pop66_conv2d3x398_out_data_out_6_rdcnt_q = redist73_i_llvm_fpga_pop_i32_mul32181_pop66_conv2d3x398_out_data_out_6_rdcnt_i[0:0];

    // redist72_i_llvm_fpga_pop_i32_mul32181_pop66_conv2d3x398_out_data_out_3_notEnable(LOGICAL,687)
    assign redist72_i_llvm_fpga_pop_i32_mul32181_pop66_conv2d3x398_out_data_out_3_notEnable_q = $unsigned(~ (VCC_q));

    // redist72_i_llvm_fpga_pop_i32_mul32181_pop66_conv2d3x398_out_data_out_3_nor(LOGICAL,688)
    assign redist72_i_llvm_fpga_pop_i32_mul32181_pop66_conv2d3x398_out_data_out_3_nor_q = ~ (redist72_i_llvm_fpga_pop_i32_mul32181_pop66_conv2d3x398_out_data_out_3_notEnable_q | redist72_i_llvm_fpga_pop_i32_mul32181_pop66_conv2d3x398_out_data_out_3_sticky_ena_q);

    // redist72_i_llvm_fpga_pop_i32_mul32181_pop66_conv2d3x398_out_data_out_3_cmpReg(REG,686)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist72_i_llvm_fpga_pop_i32_mul32181_pop66_conv2d3x398_out_data_out_3_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist72_i_llvm_fpga_pop_i32_mul32181_pop66_conv2d3x398_out_data_out_3_cmpReg_q <= $unsigned(VCC_q);
        end
    end

    // redist72_i_llvm_fpga_pop_i32_mul32181_pop66_conv2d3x398_out_data_out_3_sticky_ena(REG,689)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist72_i_llvm_fpga_pop_i32_mul32181_pop66_conv2d3x398_out_data_out_3_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist72_i_llvm_fpga_pop_i32_mul32181_pop66_conv2d3x398_out_data_out_3_nor_q == 1'b1)
        begin
            redist72_i_llvm_fpga_pop_i32_mul32181_pop66_conv2d3x398_out_data_out_3_sticky_ena_q <= $unsigned(redist72_i_llvm_fpga_pop_i32_mul32181_pop66_conv2d3x398_out_data_out_3_cmpReg_q);
        end
    end

    // redist72_i_llvm_fpga_pop_i32_mul32181_pop66_conv2d3x398_out_data_out_3_enaAnd(LOGICAL,690)
    assign redist72_i_llvm_fpga_pop_i32_mul32181_pop66_conv2d3x398_out_data_out_3_enaAnd_q = redist72_i_llvm_fpga_pop_i32_mul32181_pop66_conv2d3x398_out_data_out_3_sticky_ena_q & VCC_q;

    // redist72_i_llvm_fpga_pop_i32_mul32181_pop66_conv2d3x398_out_data_out_3_rdcnt(COUNTER,684)
    // low=0, high=1, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist72_i_llvm_fpga_pop_i32_mul32181_pop66_conv2d3x398_out_data_out_3_rdcnt_i <= 1'd0;
        end
        else
        begin
            redist72_i_llvm_fpga_pop_i32_mul32181_pop66_conv2d3x398_out_data_out_3_rdcnt_i <= $unsigned(redist72_i_llvm_fpga_pop_i32_mul32181_pop66_conv2d3x398_out_data_out_3_rdcnt_i) + $unsigned(1'd1);
        end
    end
    assign redist72_i_llvm_fpga_pop_i32_mul32181_pop66_conv2d3x398_out_data_out_3_rdcnt_q = redist72_i_llvm_fpga_pop_i32_mul32181_pop66_conv2d3x398_out_data_out_3_rdcnt_i[0:0];

    // valid_fanout_reg50(REG,294)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg50_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg50_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg51(REG,295)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg51_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg51_q <= $unsigned(redist48_sync_together243_aunroll_x_in_i_valid_3_q);
        end
    end

    // i_llvm_fpga_push_i32_mul32181_push66_conv2d3x399(BLACKBOX,161)@5
    // out out_feedback_out_66@20000000
    // out out_feedback_valid_out_66@20000000
    conv2d3x3_i_llvm_fpga_push_i32_mul32181_push66_0 thei_llvm_fpga_push_i32_mul32181_push66_conv2d3x399 (
        .in_data_in(redist72_i_llvm_fpga_pop_i32_mul32181_pop66_conv2d3x398_out_data_out_3_mem_q),
        .in_feedback_stall_in_66(i_llvm_fpga_pop_i32_mul32181_pop66_conv2d3x398_out_feedback_stall_out_66),
        .in_keep_going60_fanout_adaptor(i_llvm_fpga_fanout_i1_keep_going60_fanout_adaptor_conv2d3x310_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg51_q),
        .out_data_out(),
        .out_feedback_out_66(i_llvm_fpga_push_i32_mul32181_push66_conv2d3x399_out_feedback_out_66),
        .out_feedback_valid_out_66(i_llvm_fpga_push_i32_mul32181_push66_conv2d3x399_out_feedback_valid_out_66),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist24_sync_together243_aunroll_x_in_c0_eni46_24_tpl_1(DELAY,390)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist24_sync_together243_aunroll_x_in_c0_eni46_24_tpl_1_q <= '0;
        end
        else
        begin
            redist24_sync_together243_aunroll_x_in_c0_eni46_24_tpl_1_q <= $unsigned(in_c0_eni46_24_tpl);
        end
    end

    // i_llvm_fpga_pop_i32_mul32181_pop66_conv2d3x398(BLACKBOX,130)@2
    // out out_feedback_stall_out_66@20000000
    conv2d3x3_i_llvm_fpga_pop_i32_mul32181_pop66_0 thei_llvm_fpga_pop_i32_mul32181_pop66_conv2d3x398 (
        .in_data_in(redist24_sync_together243_aunroll_x_in_c0_eni46_24_tpl_1_q),
        .in_dir(i_llvm_fpga_fanout_i1_c0_ene1671_fanout_adaptor1206_conv2d3x32_q),
        .in_feedback_in_66(i_llvm_fpga_push_i32_mul32181_push66_conv2d3x399_out_feedback_out_66),
        .in_feedback_valid_in_66(i_llvm_fpga_push_i32_mul32181_push66_conv2d3x399_out_feedback_valid_out_66),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg50_q),
        .out_data_out(i_llvm_fpga_pop_i32_mul32181_pop66_conv2d3x398_out_data_out),
        .out_feedback_stall_out_66(i_llvm_fpga_pop_i32_mul32181_pop66_conv2d3x398_out_feedback_stall_out_66),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist72_i_llvm_fpga_pop_i32_mul32181_pop66_conv2d3x398_out_data_out_3_wraddr(REG,685)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist72_i_llvm_fpga_pop_i32_mul32181_pop66_conv2d3x398_out_data_out_3_wraddr_q <= $unsigned(1'b1);
        end
        else
        begin
            redist72_i_llvm_fpga_pop_i32_mul32181_pop66_conv2d3x398_out_data_out_3_wraddr_q <= $unsigned(redist72_i_llvm_fpga_pop_i32_mul32181_pop66_conv2d3x398_out_data_out_3_rdcnt_q);
        end
    end

    // redist72_i_llvm_fpga_pop_i32_mul32181_pop66_conv2d3x398_out_data_out_3_mem(DUALMEM,683)
    assign redist72_i_llvm_fpga_pop_i32_mul32181_pop66_conv2d3x398_out_data_out_3_mem_ia = $unsigned(i_llvm_fpga_pop_i32_mul32181_pop66_conv2d3x398_out_data_out);
    assign redist72_i_llvm_fpga_pop_i32_mul32181_pop66_conv2d3x398_out_data_out_3_mem_aa = redist72_i_llvm_fpga_pop_i32_mul32181_pop66_conv2d3x398_out_data_out_3_wraddr_q;
    assign redist72_i_llvm_fpga_pop_i32_mul32181_pop66_conv2d3x398_out_data_out_3_mem_ab = redist72_i_llvm_fpga_pop_i32_mul32181_pop66_conv2d3x398_out_data_out_3_rdcnt_q;
    assign redist72_i_llvm_fpga_pop_i32_mul32181_pop66_conv2d3x398_out_data_out_3_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(1),
        .numwords_a(2),
        .width_b(32),
        .widthad_b(1),
        .numwords_b(2),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .address_reg_b("CLOCK0"),
        .indata_reg_b("CLOCK0"),
        .rdcontrol_reg_b("CLOCK0"),
        .byteena_reg_b("CLOCK0"),
        .outdata_reg_b("CLOCK1"),
        .outdata_aclr_b("CLEAR1"),
        .clock_enable_input_a("NORMAL"),
        .clock_enable_input_b("NORMAL"),
        .clock_enable_output_b("NORMAL"),
        .read_during_write_mode_mixed_ports("DONT_CARE"),
        .power_up_uninitialized("TRUE"),
        .intended_device_family("Arria 10")
    ) redist72_i_llvm_fpga_pop_i32_mul32181_pop66_conv2d3x398_out_data_out_3_mem_dmem (
        .clocken1(redist72_i_llvm_fpga_pop_i32_mul32181_pop66_conv2d3x398_out_data_out_3_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist72_i_llvm_fpga_pop_i32_mul32181_pop66_conv2d3x398_out_data_out_3_mem_reset0),
        .clock1(clock),
        .address_a(redist72_i_llvm_fpga_pop_i32_mul32181_pop66_conv2d3x398_out_data_out_3_mem_aa),
        .data_a(redist72_i_llvm_fpga_pop_i32_mul32181_pop66_conv2d3x398_out_data_out_3_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist72_i_llvm_fpga_pop_i32_mul32181_pop66_conv2d3x398_out_data_out_3_mem_ab),
        .q_b(redist72_i_llvm_fpga_pop_i32_mul32181_pop66_conv2d3x398_out_data_out_3_mem_iq),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_b(),
        .clocken2(),
        .clocken3(),
        .aclr0(),
        .addressstall_a(),
        .addressstall_b(),
        .byteena_a(),
        .byteena_b(),
        .eccencbypass(),
        .eccencparity(),
        .sclr(),
        .address2_a(),
        .address2_b(),
        .q_a(),
        .eccstatus()
    );
    assign redist72_i_llvm_fpga_pop_i32_mul32181_pop66_conv2d3x398_out_data_out_3_mem_q = redist72_i_llvm_fpga_pop_i32_mul32181_pop66_conv2d3x398_out_data_out_3_mem_iq[31:0];

    // redist73_i_llvm_fpga_pop_i32_mul32181_pop66_conv2d3x398_out_data_out_6_wraddr(REG,693)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist73_i_llvm_fpga_pop_i32_mul32181_pop66_conv2d3x398_out_data_out_6_wraddr_q <= $unsigned(1'b1);
        end
        else
        begin
            redist73_i_llvm_fpga_pop_i32_mul32181_pop66_conv2d3x398_out_data_out_6_wraddr_q <= $unsigned(redist73_i_llvm_fpga_pop_i32_mul32181_pop66_conv2d3x398_out_data_out_6_rdcnt_q);
        end
    end

    // redist73_i_llvm_fpga_pop_i32_mul32181_pop66_conv2d3x398_out_data_out_6_mem(DUALMEM,691)
    assign redist73_i_llvm_fpga_pop_i32_mul32181_pop66_conv2d3x398_out_data_out_6_mem_ia = $unsigned(redist72_i_llvm_fpga_pop_i32_mul32181_pop66_conv2d3x398_out_data_out_3_mem_q);
    assign redist73_i_llvm_fpga_pop_i32_mul32181_pop66_conv2d3x398_out_data_out_6_mem_aa = redist73_i_llvm_fpga_pop_i32_mul32181_pop66_conv2d3x398_out_data_out_6_wraddr_q;
    assign redist73_i_llvm_fpga_pop_i32_mul32181_pop66_conv2d3x398_out_data_out_6_mem_ab = redist73_i_llvm_fpga_pop_i32_mul32181_pop66_conv2d3x398_out_data_out_6_rdcnt_q;
    assign redist73_i_llvm_fpga_pop_i32_mul32181_pop66_conv2d3x398_out_data_out_6_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(1),
        .numwords_a(2),
        .width_b(32),
        .widthad_b(1),
        .numwords_b(2),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .address_reg_b("CLOCK0"),
        .indata_reg_b("CLOCK0"),
        .rdcontrol_reg_b("CLOCK0"),
        .byteena_reg_b("CLOCK0"),
        .outdata_reg_b("CLOCK1"),
        .outdata_aclr_b("CLEAR1"),
        .clock_enable_input_a("NORMAL"),
        .clock_enable_input_b("NORMAL"),
        .clock_enable_output_b("NORMAL"),
        .read_during_write_mode_mixed_ports("DONT_CARE"),
        .power_up_uninitialized("TRUE"),
        .intended_device_family("Arria 10")
    ) redist73_i_llvm_fpga_pop_i32_mul32181_pop66_conv2d3x398_out_data_out_6_mem_dmem (
        .clocken1(redist73_i_llvm_fpga_pop_i32_mul32181_pop66_conv2d3x398_out_data_out_6_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist73_i_llvm_fpga_pop_i32_mul32181_pop66_conv2d3x398_out_data_out_6_mem_reset0),
        .clock1(clock),
        .address_a(redist73_i_llvm_fpga_pop_i32_mul32181_pop66_conv2d3x398_out_data_out_6_mem_aa),
        .data_a(redist73_i_llvm_fpga_pop_i32_mul32181_pop66_conv2d3x398_out_data_out_6_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist73_i_llvm_fpga_pop_i32_mul32181_pop66_conv2d3x398_out_data_out_6_mem_ab),
        .q_b(redist73_i_llvm_fpga_pop_i32_mul32181_pop66_conv2d3x398_out_data_out_6_mem_iq),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_b(),
        .clocken2(),
        .clocken3(),
        .aclr0(),
        .addressstall_a(),
        .addressstall_b(),
        .byteena_a(),
        .byteena_b(),
        .eccencbypass(),
        .eccencparity(),
        .sclr(),
        .address2_a(),
        .address2_b(),
        .q_a(),
        .eccstatus()
    );
    assign redist73_i_llvm_fpga_pop_i32_mul32181_pop66_conv2d3x398_out_data_out_6_mem_q = redist73_i_llvm_fpga_pop_i32_mul32181_pop66_conv2d3x398_out_data_out_6_mem_iq[31:0];

    // valid_fanout_reg48(REG,292)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg48_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg48_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg49(REG,293)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg49_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg49_q <= $unsigned(redist48_sync_together243_aunroll_x_in_i_valid_3_q);
        end
    end

    // i_llvm_fpga_push_i1_notcmp73172_push62_conv2d3x397(BLACKBOX,147)@5
    // out out_feedback_out_62@20000000
    // out out_feedback_valid_out_62@20000000
    conv2d3x3_i_llvm_fpga_push_i1_notcmp73172_push62_0 thei_llvm_fpga_push_i1_notcmp73172_push62_conv2d3x397 (
        .in_data_in(redist89_i_llvm_fpga_pop_i1_notcmp73172_pop62_conv2d3x396_out_data_out_3_q),
        .in_feedback_stall_in_62(i_llvm_fpga_pop_i1_notcmp73172_pop62_conv2d3x396_out_feedback_stall_out_62),
        .in_keep_going60_fanout_adaptor(i_llvm_fpga_fanout_i1_keep_going60_fanout_adaptor_conv2d3x310_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg49_q),
        .out_data_out(),
        .out_feedback_out_62(i_llvm_fpga_push_i1_notcmp73172_push62_conv2d3x397_out_feedback_out_62),
        .out_feedback_valid_out_62(i_llvm_fpga_push_i1_notcmp73172_push62_conv2d3x397_out_feedback_valid_out_62),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist23_sync_together243_aunroll_x_in_c0_eni46_23_tpl_1(DELAY,389)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist23_sync_together243_aunroll_x_in_c0_eni46_23_tpl_1_q <= '0;
        end
        else
        begin
            redist23_sync_together243_aunroll_x_in_c0_eni46_23_tpl_1_q <= $unsigned(in_c0_eni46_23_tpl);
        end
    end

    // i_llvm_fpga_pop_i1_notcmp73172_pop62_conv2d3x396(BLACKBOX,117)@2
    // out out_feedback_stall_out_62@20000000
    conv2d3x3_i_llvm_fpga_pop_i1_notcmp73172_pop62_0 thei_llvm_fpga_pop_i1_notcmp73172_pop62_conv2d3x396 (
        .in_data_in(redist23_sync_together243_aunroll_x_in_c0_eni46_23_tpl_1_q),
        .in_dir(i_llvm_fpga_fanout_i1_c0_ene1671_fanout_adaptor1206_conv2d3x32_q),
        .in_feedback_in_62(i_llvm_fpga_push_i1_notcmp73172_push62_conv2d3x397_out_feedback_out_62),
        .in_feedback_valid_in_62(i_llvm_fpga_push_i1_notcmp73172_push62_conv2d3x397_out_feedback_valid_out_62),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg48_q),
        .out_data_out(i_llvm_fpga_pop_i1_notcmp73172_pop62_conv2d3x396_out_data_out),
        .out_feedback_stall_out_62(i_llvm_fpga_pop_i1_notcmp73172_pop62_conv2d3x396_out_feedback_stall_out_62),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist89_i_llvm_fpga_pop_i1_notcmp73172_pop62_conv2d3x396_out_data_out_3(DELAY,455)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist89_i_llvm_fpga_pop_i1_notcmp73172_pop62_conv2d3x396_out_data_out_3_delay_0 <= '0;
            redist89_i_llvm_fpga_pop_i1_notcmp73172_pop62_conv2d3x396_out_data_out_3_delay_1 <= '0;
            redist89_i_llvm_fpga_pop_i1_notcmp73172_pop62_conv2d3x396_out_data_out_3_q <= '0;
        end
        else
        begin
            redist89_i_llvm_fpga_pop_i1_notcmp73172_pop62_conv2d3x396_out_data_out_3_delay_0 <= $unsigned(i_llvm_fpga_pop_i1_notcmp73172_pop62_conv2d3x396_out_data_out);
            redist89_i_llvm_fpga_pop_i1_notcmp73172_pop62_conv2d3x396_out_data_out_3_delay_1 <= redist89_i_llvm_fpga_pop_i1_notcmp73172_pop62_conv2d3x396_out_data_out_3_delay_0;
            redist89_i_llvm_fpga_pop_i1_notcmp73172_pop62_conv2d3x396_out_data_out_3_q <= redist89_i_llvm_fpga_pop_i1_notcmp73172_pop62_conv2d3x396_out_data_out_3_delay_1;
        end
    end

    // redist90_i_llvm_fpga_pop_i1_notcmp73172_pop62_conv2d3x396_out_data_out_6(DELAY,456)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist90_i_llvm_fpga_pop_i1_notcmp73172_pop62_conv2d3x396_out_data_out_6_delay_0 <= '0;
            redist90_i_llvm_fpga_pop_i1_notcmp73172_pop62_conv2d3x396_out_data_out_6_delay_1 <= '0;
            redist90_i_llvm_fpga_pop_i1_notcmp73172_pop62_conv2d3x396_out_data_out_6_q <= '0;
        end
        else
        begin
            redist90_i_llvm_fpga_pop_i1_notcmp73172_pop62_conv2d3x396_out_data_out_6_delay_0 <= $unsigned(redist89_i_llvm_fpga_pop_i1_notcmp73172_pop62_conv2d3x396_out_data_out_3_q);
            redist90_i_llvm_fpga_pop_i1_notcmp73172_pop62_conv2d3x396_out_data_out_6_delay_1 <= redist90_i_llvm_fpga_pop_i1_notcmp73172_pop62_conv2d3x396_out_data_out_6_delay_0;
            redist90_i_llvm_fpga_pop_i1_notcmp73172_pop62_conv2d3x396_out_data_out_6_q <= redist90_i_llvm_fpga_pop_i1_notcmp73172_pop62_conv2d3x396_out_data_out_6_delay_1;
        end
    end

    // valid_fanout_reg46(REG,290)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg46_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg46_q <= $unsigned(redist48_sync_together243_aunroll_x_in_i_valid_3_q);
        end
    end

    // valid_fanout_reg47(REG,291)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg47_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg47_q <= $unsigned(redist48_sync_together243_aunroll_x_in_i_valid_3_q);
        end
    end

    // i_llvm_fpga_push_i1_notcmp77161_push59_conv2d3x395(BLACKBOX,148)@5
    // out out_feedback_out_59@20000000
    // out out_feedback_valid_out_59@20000000
    conv2d3x3_i_llvm_fpga_push_i1_notcmp77161_push59_0 thei_llvm_fpga_push_i1_notcmp77161_push59_conv2d3x395 (
        .in_data_in(i_llvm_fpga_pop_i1_notcmp77161_pop59_conv2d3x394_out_data_out),
        .in_feedback_stall_in_59(i_llvm_fpga_pop_i1_notcmp77161_pop59_conv2d3x394_out_feedback_stall_out_59),
        .in_keep_going60_fanout_adaptor(i_llvm_fpga_fanout_i1_keep_going60_fanout_adaptor_conv2d3x310_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg47_q),
        .out_data_out(),
        .out_feedback_out_59(i_llvm_fpga_push_i1_notcmp77161_push59_conv2d3x395_out_feedback_out_59),
        .out_feedback_valid_out_59(i_llvm_fpga_push_i1_notcmp77161_push59_conv2d3x395_out_feedback_valid_out_59),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_fanout_i1_c0_ene1671_fanout_adaptor_conv2d3x33(REG,106)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_llvm_fpga_fanout_i1_c0_ene1671_fanout_adaptor_conv2d3x33_q <= $unsigned(1'b0);
        end
        else
        begin
            i_llvm_fpga_fanout_i1_c0_ene1671_fanout_adaptor_conv2d3x33_q <= in_c0_eni46_1_tpl;
        end
    end

    // redist100_i_llvm_fpga_fanout_i1_c0_ene1671_fanout_adaptor_conv2d3x33_q_3(DELAY,466)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist100_i_llvm_fpga_fanout_i1_c0_ene1671_fanout_adaptor_conv2d3x33_q_3_delay_0 <= '0;
            redist100_i_llvm_fpga_fanout_i1_c0_ene1671_fanout_adaptor_conv2d3x33_q_3_delay_1 <= '0;
            redist100_i_llvm_fpga_fanout_i1_c0_ene1671_fanout_adaptor_conv2d3x33_q_3_q <= '0;
        end
        else
        begin
            redist100_i_llvm_fpga_fanout_i1_c0_ene1671_fanout_adaptor_conv2d3x33_q_3_delay_0 <= $unsigned(i_llvm_fpga_fanout_i1_c0_ene1671_fanout_adaptor_conv2d3x33_q);
            redist100_i_llvm_fpga_fanout_i1_c0_ene1671_fanout_adaptor_conv2d3x33_q_3_delay_1 <= redist100_i_llvm_fpga_fanout_i1_c0_ene1671_fanout_adaptor_conv2d3x33_q_3_delay_0;
            redist100_i_llvm_fpga_fanout_i1_c0_ene1671_fanout_adaptor_conv2d3x33_q_3_q <= redist100_i_llvm_fpga_fanout_i1_c0_ene1671_fanout_adaptor_conv2d3x33_q_3_delay_1;
        end
    end

    // redist22_sync_together243_aunroll_x_in_c0_eni46_22_tpl_4(DELAY,388)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist22_sync_together243_aunroll_x_in_c0_eni46_22_tpl_4_delay_0 <= '0;
            redist22_sync_together243_aunroll_x_in_c0_eni46_22_tpl_4_delay_1 <= '0;
            redist22_sync_together243_aunroll_x_in_c0_eni46_22_tpl_4_delay_2 <= '0;
            redist22_sync_together243_aunroll_x_in_c0_eni46_22_tpl_4_q <= '0;
        end
        else
        begin
            redist22_sync_together243_aunroll_x_in_c0_eni46_22_tpl_4_delay_0 <= $unsigned(in_c0_eni46_22_tpl);
            redist22_sync_together243_aunroll_x_in_c0_eni46_22_tpl_4_delay_1 <= redist22_sync_together243_aunroll_x_in_c0_eni46_22_tpl_4_delay_0;
            redist22_sync_together243_aunroll_x_in_c0_eni46_22_tpl_4_delay_2 <= redist22_sync_together243_aunroll_x_in_c0_eni46_22_tpl_4_delay_1;
            redist22_sync_together243_aunroll_x_in_c0_eni46_22_tpl_4_q <= redist22_sync_together243_aunroll_x_in_c0_eni46_22_tpl_4_delay_2;
        end
    end

    // i_llvm_fpga_pop_i1_notcmp77161_pop59_conv2d3x394(BLACKBOX,118)@5
    // out out_feedback_stall_out_59@20000000
    conv2d3x3_i_llvm_fpga_pop_i1_notcmp77161_pop59_0 thei_llvm_fpga_pop_i1_notcmp77161_pop59_conv2d3x394 (
        .in_data_in(redist22_sync_together243_aunroll_x_in_c0_eni46_22_tpl_4_q),
        .in_dir(redist100_i_llvm_fpga_fanout_i1_c0_ene1671_fanout_adaptor_conv2d3x33_q_3_q),
        .in_feedback_in_59(i_llvm_fpga_push_i1_notcmp77161_push59_conv2d3x395_out_feedback_out_59),
        .in_feedback_valid_in_59(i_llvm_fpga_push_i1_notcmp77161_push59_conv2d3x395_out_feedback_valid_out_59),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg46_q),
        .out_data_out(i_llvm_fpga_pop_i1_notcmp77161_pop59_conv2d3x394_out_data_out),
        .out_feedback_stall_out_59(i_llvm_fpga_pop_i1_notcmp77161_pop59_conv2d3x394_out_feedback_stall_out_59),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist88_i_llvm_fpga_pop_i1_notcmp77161_pop59_conv2d3x394_out_data_out_3(DELAY,454)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist88_i_llvm_fpga_pop_i1_notcmp77161_pop59_conv2d3x394_out_data_out_3_delay_0 <= '0;
            redist88_i_llvm_fpga_pop_i1_notcmp77161_pop59_conv2d3x394_out_data_out_3_delay_1 <= '0;
            redist88_i_llvm_fpga_pop_i1_notcmp77161_pop59_conv2d3x394_out_data_out_3_q <= '0;
        end
        else
        begin
            redist88_i_llvm_fpga_pop_i1_notcmp77161_pop59_conv2d3x394_out_data_out_3_delay_0 <= $unsigned(i_llvm_fpga_pop_i1_notcmp77161_pop59_conv2d3x394_out_data_out);
            redist88_i_llvm_fpga_pop_i1_notcmp77161_pop59_conv2d3x394_out_data_out_3_delay_1 <= redist88_i_llvm_fpga_pop_i1_notcmp77161_pop59_conv2d3x394_out_data_out_3_delay_0;
            redist88_i_llvm_fpga_pop_i1_notcmp77161_pop59_conv2d3x394_out_data_out_3_q <= redist88_i_llvm_fpga_pop_i1_notcmp77161_pop59_conv2d3x394_out_data_out_3_delay_1;
        end
    end

    // valid_fanout_reg44(REG,288)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg44_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg44_q <= $unsigned(redist48_sync_together243_aunroll_x_in_i_valid_3_q);
        end
    end

    // valid_fanout_reg45(REG,289)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg45_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg45_q <= $unsigned(redist48_sync_together243_aunroll_x_in_i_valid_3_q);
        end
    end

    // i_llvm_fpga_push_i1_cmp27_2156_push58_conv2d3x393(BLACKBOX,145)@5
    // out out_feedback_out_58@20000000
    // out out_feedback_valid_out_58@20000000
    conv2d3x3_i_llvm_fpga_push_i1_cmp27_2156_push58_0 thei_llvm_fpga_push_i1_cmp27_2156_push58_conv2d3x393 (
        .in_data_in(i_llvm_fpga_pop_i1_cmp27_2156_pop58_conv2d3x392_out_data_out),
        .in_feedback_stall_in_58(i_llvm_fpga_pop_i1_cmp27_2156_pop58_conv2d3x392_out_feedback_stall_out_58),
        .in_keep_going60_fanout_adaptor(i_llvm_fpga_fanout_i1_keep_going60_fanout_adaptor_conv2d3x310_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg45_q),
        .out_data_out(),
        .out_feedback_out_58(i_llvm_fpga_push_i1_cmp27_2156_push58_conv2d3x393_out_feedback_out_58),
        .out_feedback_valid_out_58(i_llvm_fpga_push_i1_cmp27_2156_push58_conv2d3x393_out_feedback_valid_out_58),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist21_sync_together243_aunroll_x_in_c0_eni46_21_tpl_4(DELAY,387)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist21_sync_together243_aunroll_x_in_c0_eni46_21_tpl_4_delay_0 <= '0;
            redist21_sync_together243_aunroll_x_in_c0_eni46_21_tpl_4_delay_1 <= '0;
            redist21_sync_together243_aunroll_x_in_c0_eni46_21_tpl_4_delay_2 <= '0;
            redist21_sync_together243_aunroll_x_in_c0_eni46_21_tpl_4_q <= '0;
        end
        else
        begin
            redist21_sync_together243_aunroll_x_in_c0_eni46_21_tpl_4_delay_0 <= $unsigned(in_c0_eni46_21_tpl);
            redist21_sync_together243_aunroll_x_in_c0_eni46_21_tpl_4_delay_1 <= redist21_sync_together243_aunroll_x_in_c0_eni46_21_tpl_4_delay_0;
            redist21_sync_together243_aunroll_x_in_c0_eni46_21_tpl_4_delay_2 <= redist21_sync_together243_aunroll_x_in_c0_eni46_21_tpl_4_delay_1;
            redist21_sync_together243_aunroll_x_in_c0_eni46_21_tpl_4_q <= redist21_sync_together243_aunroll_x_in_c0_eni46_21_tpl_4_delay_2;
        end
    end

    // i_llvm_fpga_pop_i1_cmp27_2156_pop58_conv2d3x392(BLACKBOX,116)@5
    // out out_feedback_stall_out_58@20000000
    conv2d3x3_i_llvm_fpga_pop_i1_cmp27_2156_pop58_0 thei_llvm_fpga_pop_i1_cmp27_2156_pop58_conv2d3x392 (
        .in_data_in(redist21_sync_together243_aunroll_x_in_c0_eni46_21_tpl_4_q),
        .in_dir(redist100_i_llvm_fpga_fanout_i1_c0_ene1671_fanout_adaptor_conv2d3x33_q_3_q),
        .in_feedback_in_58(i_llvm_fpga_push_i1_cmp27_2156_push58_conv2d3x393_out_feedback_out_58),
        .in_feedback_valid_in_58(i_llvm_fpga_push_i1_cmp27_2156_push58_conv2d3x393_out_feedback_valid_out_58),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg44_q),
        .out_data_out(i_llvm_fpga_pop_i1_cmp27_2156_pop58_conv2d3x392_out_data_out),
        .out_feedback_stall_out_58(i_llvm_fpga_pop_i1_cmp27_2156_pop58_conv2d3x392_out_feedback_stall_out_58),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist91_i_llvm_fpga_pop_i1_cmp27_2156_pop58_conv2d3x392_out_data_out_3(DELAY,457)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist91_i_llvm_fpga_pop_i1_cmp27_2156_pop58_conv2d3x392_out_data_out_3_delay_0 <= '0;
            redist91_i_llvm_fpga_pop_i1_cmp27_2156_pop58_conv2d3x392_out_data_out_3_delay_1 <= '0;
            redist91_i_llvm_fpga_pop_i1_cmp27_2156_pop58_conv2d3x392_out_data_out_3_q <= '0;
        end
        else
        begin
            redist91_i_llvm_fpga_pop_i1_cmp27_2156_pop58_conv2d3x392_out_data_out_3_delay_0 <= $unsigned(i_llvm_fpga_pop_i1_cmp27_2156_pop58_conv2d3x392_out_data_out);
            redist91_i_llvm_fpga_pop_i1_cmp27_2156_pop58_conv2d3x392_out_data_out_3_delay_1 <= redist91_i_llvm_fpga_pop_i1_cmp27_2156_pop58_conv2d3x392_out_data_out_3_delay_0;
            redist91_i_llvm_fpga_pop_i1_cmp27_2156_pop58_conv2d3x392_out_data_out_3_q <= redist91_i_llvm_fpga_pop_i1_cmp27_2156_pop58_conv2d3x392_out_data_out_3_delay_1;
        end
    end

    // valid_fanout_reg42(REG,286)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg42_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg42_q <= $unsigned(redist48_sync_together243_aunroll_x_in_i_valid_3_q);
        end
    end

    // valid_fanout_reg43(REG,287)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg43_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg43_q <= $unsigned(redist48_sync_together243_aunroll_x_in_i_valid_3_q);
        end
    end

    // i_llvm_fpga_push_i1_cmp26_2151_push57_conv2d3x391(BLACKBOX,142)@5
    // out out_feedback_out_57@20000000
    // out out_feedback_valid_out_57@20000000
    conv2d3x3_i_llvm_fpga_push_i1_cmp26_2151_push57_0 thei_llvm_fpga_push_i1_cmp26_2151_push57_conv2d3x391 (
        .in_data_in(i_llvm_fpga_pop_i1_cmp26_2151_pop57_conv2d3x390_out_data_out),
        .in_feedback_stall_in_57(i_llvm_fpga_pop_i1_cmp26_2151_pop57_conv2d3x390_out_feedback_stall_out_57),
        .in_keep_going60_fanout_adaptor(i_llvm_fpga_fanout_i1_keep_going60_fanout_adaptor_conv2d3x310_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg43_q),
        .out_data_out(),
        .out_feedback_out_57(i_llvm_fpga_push_i1_cmp26_2151_push57_conv2d3x391_out_feedback_out_57),
        .out_feedback_valid_out_57(i_llvm_fpga_push_i1_cmp26_2151_push57_conv2d3x391_out_feedback_valid_out_57),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist20_sync_together243_aunroll_x_in_c0_eni46_20_tpl_4(DELAY,386)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist20_sync_together243_aunroll_x_in_c0_eni46_20_tpl_4_delay_0 <= '0;
            redist20_sync_together243_aunroll_x_in_c0_eni46_20_tpl_4_delay_1 <= '0;
            redist20_sync_together243_aunroll_x_in_c0_eni46_20_tpl_4_delay_2 <= '0;
            redist20_sync_together243_aunroll_x_in_c0_eni46_20_tpl_4_q <= '0;
        end
        else
        begin
            redist20_sync_together243_aunroll_x_in_c0_eni46_20_tpl_4_delay_0 <= $unsigned(in_c0_eni46_20_tpl);
            redist20_sync_together243_aunroll_x_in_c0_eni46_20_tpl_4_delay_1 <= redist20_sync_together243_aunroll_x_in_c0_eni46_20_tpl_4_delay_0;
            redist20_sync_together243_aunroll_x_in_c0_eni46_20_tpl_4_delay_2 <= redist20_sync_together243_aunroll_x_in_c0_eni46_20_tpl_4_delay_1;
            redist20_sync_together243_aunroll_x_in_c0_eni46_20_tpl_4_q <= redist20_sync_together243_aunroll_x_in_c0_eni46_20_tpl_4_delay_2;
        end
    end

    // i_llvm_fpga_pop_i1_cmp26_2151_pop57_conv2d3x390(BLACKBOX,113)@5
    // out out_feedback_stall_out_57@20000000
    conv2d3x3_i_llvm_fpga_pop_i1_cmp26_2151_pop57_0 thei_llvm_fpga_pop_i1_cmp26_2151_pop57_conv2d3x390 (
        .in_data_in(redist20_sync_together243_aunroll_x_in_c0_eni46_20_tpl_4_q),
        .in_dir(redist100_i_llvm_fpga_fanout_i1_c0_ene1671_fanout_adaptor_conv2d3x33_q_3_q),
        .in_feedback_in_57(i_llvm_fpga_push_i1_cmp26_2151_push57_conv2d3x391_out_feedback_out_57),
        .in_feedback_valid_in_57(i_llvm_fpga_push_i1_cmp26_2151_push57_conv2d3x391_out_feedback_valid_out_57),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg42_q),
        .out_data_out(i_llvm_fpga_pop_i1_cmp26_2151_pop57_conv2d3x390_out_data_out),
        .out_feedback_stall_out_57(i_llvm_fpga_pop_i1_cmp26_2151_pop57_conv2d3x390_out_feedback_stall_out_57),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist94_i_llvm_fpga_pop_i1_cmp26_2151_pop57_conv2d3x390_out_data_out_3(DELAY,460)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist94_i_llvm_fpga_pop_i1_cmp26_2151_pop57_conv2d3x390_out_data_out_3_delay_0 <= '0;
            redist94_i_llvm_fpga_pop_i1_cmp26_2151_pop57_conv2d3x390_out_data_out_3_delay_1 <= '0;
            redist94_i_llvm_fpga_pop_i1_cmp26_2151_pop57_conv2d3x390_out_data_out_3_q <= '0;
        end
        else
        begin
            redist94_i_llvm_fpga_pop_i1_cmp26_2151_pop57_conv2d3x390_out_data_out_3_delay_0 <= $unsigned(i_llvm_fpga_pop_i1_cmp26_2151_pop57_conv2d3x390_out_data_out);
            redist94_i_llvm_fpga_pop_i1_cmp26_2151_pop57_conv2d3x390_out_data_out_3_delay_1 <= redist94_i_llvm_fpga_pop_i1_cmp26_2151_pop57_conv2d3x390_out_data_out_3_delay_0;
            redist94_i_llvm_fpga_pop_i1_cmp26_2151_pop57_conv2d3x390_out_data_out_3_q <= redist94_i_llvm_fpga_pop_i1_cmp26_2151_pop57_conv2d3x390_out_data_out_3_delay_1;
        end
    end

    // redist63_i_llvm_fpga_pop_i32_sub_2146_pop56_conv2d3x388_out_data_out_6_notEnable(LOGICAL,631)
    assign redist63_i_llvm_fpga_pop_i32_sub_2146_pop56_conv2d3x388_out_data_out_6_notEnable_q = $unsigned(~ (VCC_q));

    // redist63_i_llvm_fpga_pop_i32_sub_2146_pop56_conv2d3x388_out_data_out_6_nor(LOGICAL,632)
    assign redist63_i_llvm_fpga_pop_i32_sub_2146_pop56_conv2d3x388_out_data_out_6_nor_q = ~ (redist63_i_llvm_fpga_pop_i32_sub_2146_pop56_conv2d3x388_out_data_out_6_notEnable_q | redist63_i_llvm_fpga_pop_i32_sub_2146_pop56_conv2d3x388_out_data_out_6_sticky_ena_q);

    // redist63_i_llvm_fpga_pop_i32_sub_2146_pop56_conv2d3x388_out_data_out_6_cmpReg(REG,630)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist63_i_llvm_fpga_pop_i32_sub_2146_pop56_conv2d3x388_out_data_out_6_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist63_i_llvm_fpga_pop_i32_sub_2146_pop56_conv2d3x388_out_data_out_6_cmpReg_q <= $unsigned(VCC_q);
        end
    end

    // redist63_i_llvm_fpga_pop_i32_sub_2146_pop56_conv2d3x388_out_data_out_6_sticky_ena(REG,633)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist63_i_llvm_fpga_pop_i32_sub_2146_pop56_conv2d3x388_out_data_out_6_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist63_i_llvm_fpga_pop_i32_sub_2146_pop56_conv2d3x388_out_data_out_6_nor_q == 1'b1)
        begin
            redist63_i_llvm_fpga_pop_i32_sub_2146_pop56_conv2d3x388_out_data_out_6_sticky_ena_q <= $unsigned(redist63_i_llvm_fpga_pop_i32_sub_2146_pop56_conv2d3x388_out_data_out_6_cmpReg_q);
        end
    end

    // redist63_i_llvm_fpga_pop_i32_sub_2146_pop56_conv2d3x388_out_data_out_6_enaAnd(LOGICAL,634)
    assign redist63_i_llvm_fpga_pop_i32_sub_2146_pop56_conv2d3x388_out_data_out_6_enaAnd_q = redist63_i_llvm_fpga_pop_i32_sub_2146_pop56_conv2d3x388_out_data_out_6_sticky_ena_q & VCC_q;

    // redist63_i_llvm_fpga_pop_i32_sub_2146_pop56_conv2d3x388_out_data_out_6_rdcnt(COUNTER,628)
    // low=0, high=1, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist63_i_llvm_fpga_pop_i32_sub_2146_pop56_conv2d3x388_out_data_out_6_rdcnt_i <= 1'd0;
        end
        else
        begin
            redist63_i_llvm_fpga_pop_i32_sub_2146_pop56_conv2d3x388_out_data_out_6_rdcnt_i <= $unsigned(redist63_i_llvm_fpga_pop_i32_sub_2146_pop56_conv2d3x388_out_data_out_6_rdcnt_i) + $unsigned(1'd1);
        end
    end
    assign redist63_i_llvm_fpga_pop_i32_sub_2146_pop56_conv2d3x388_out_data_out_6_rdcnt_q = redist63_i_llvm_fpga_pop_i32_sub_2146_pop56_conv2d3x388_out_data_out_6_rdcnt_i[0:0];

    // redist62_i_llvm_fpga_pop_i32_sub_2146_pop56_conv2d3x388_out_data_out_3_notEnable(LOGICAL,623)
    assign redist62_i_llvm_fpga_pop_i32_sub_2146_pop56_conv2d3x388_out_data_out_3_notEnable_q = $unsigned(~ (VCC_q));

    // redist62_i_llvm_fpga_pop_i32_sub_2146_pop56_conv2d3x388_out_data_out_3_nor(LOGICAL,624)
    assign redist62_i_llvm_fpga_pop_i32_sub_2146_pop56_conv2d3x388_out_data_out_3_nor_q = ~ (redist62_i_llvm_fpga_pop_i32_sub_2146_pop56_conv2d3x388_out_data_out_3_notEnable_q | redist62_i_llvm_fpga_pop_i32_sub_2146_pop56_conv2d3x388_out_data_out_3_sticky_ena_q);

    // redist62_i_llvm_fpga_pop_i32_sub_2146_pop56_conv2d3x388_out_data_out_3_cmpReg(REG,622)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist62_i_llvm_fpga_pop_i32_sub_2146_pop56_conv2d3x388_out_data_out_3_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist62_i_llvm_fpga_pop_i32_sub_2146_pop56_conv2d3x388_out_data_out_3_cmpReg_q <= $unsigned(VCC_q);
        end
    end

    // redist62_i_llvm_fpga_pop_i32_sub_2146_pop56_conv2d3x388_out_data_out_3_sticky_ena(REG,625)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist62_i_llvm_fpga_pop_i32_sub_2146_pop56_conv2d3x388_out_data_out_3_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist62_i_llvm_fpga_pop_i32_sub_2146_pop56_conv2d3x388_out_data_out_3_nor_q == 1'b1)
        begin
            redist62_i_llvm_fpga_pop_i32_sub_2146_pop56_conv2d3x388_out_data_out_3_sticky_ena_q <= $unsigned(redist62_i_llvm_fpga_pop_i32_sub_2146_pop56_conv2d3x388_out_data_out_3_cmpReg_q);
        end
    end

    // redist62_i_llvm_fpga_pop_i32_sub_2146_pop56_conv2d3x388_out_data_out_3_enaAnd(LOGICAL,626)
    assign redist62_i_llvm_fpga_pop_i32_sub_2146_pop56_conv2d3x388_out_data_out_3_enaAnd_q = redist62_i_llvm_fpga_pop_i32_sub_2146_pop56_conv2d3x388_out_data_out_3_sticky_ena_q & VCC_q;

    // redist62_i_llvm_fpga_pop_i32_sub_2146_pop56_conv2d3x388_out_data_out_3_rdcnt(COUNTER,620)
    // low=0, high=1, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist62_i_llvm_fpga_pop_i32_sub_2146_pop56_conv2d3x388_out_data_out_3_rdcnt_i <= 1'd0;
        end
        else
        begin
            redist62_i_llvm_fpga_pop_i32_sub_2146_pop56_conv2d3x388_out_data_out_3_rdcnt_i <= $unsigned(redist62_i_llvm_fpga_pop_i32_sub_2146_pop56_conv2d3x388_out_data_out_3_rdcnt_i) + $unsigned(1'd1);
        end
    end
    assign redist62_i_llvm_fpga_pop_i32_sub_2146_pop56_conv2d3x388_out_data_out_3_rdcnt_q = redist62_i_llvm_fpga_pop_i32_sub_2146_pop56_conv2d3x388_out_data_out_3_rdcnt_i[0:0];

    // valid_fanout_reg40(REG,284)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg40_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg40_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg41(REG,285)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg41_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg41_q <= $unsigned(redist48_sync_together243_aunroll_x_in_i_valid_3_q);
        end
    end

    // i_llvm_fpga_push_i32_sub_2146_push56_conv2d3x389(BLACKBOX,166)@5
    // out out_feedback_out_56@20000000
    // out out_feedback_valid_out_56@20000000
    conv2d3x3_i_llvm_fpga_push_i32_sub_2146_push56_0 thei_llvm_fpga_push_i32_sub_2146_push56_conv2d3x389 (
        .in_data_in(redist62_i_llvm_fpga_pop_i32_sub_2146_pop56_conv2d3x388_out_data_out_3_mem_q),
        .in_feedback_stall_in_56(i_llvm_fpga_pop_i32_sub_2146_pop56_conv2d3x388_out_feedback_stall_out_56),
        .in_keep_going60_fanout_adaptor(i_llvm_fpga_fanout_i1_keep_going60_fanout_adaptor_conv2d3x310_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg41_q),
        .out_data_out(),
        .out_feedback_out_56(i_llvm_fpga_push_i32_sub_2146_push56_conv2d3x389_out_feedback_out_56),
        .out_feedback_valid_out_56(i_llvm_fpga_push_i32_sub_2146_push56_conv2d3x389_out_feedback_valid_out_56),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist19_sync_together243_aunroll_x_in_c0_eni46_19_tpl_1(DELAY,385)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist19_sync_together243_aunroll_x_in_c0_eni46_19_tpl_1_q <= '0;
        end
        else
        begin
            redist19_sync_together243_aunroll_x_in_c0_eni46_19_tpl_1_q <= $unsigned(in_c0_eni46_19_tpl);
        end
    end

    // i_llvm_fpga_pop_i32_sub_2146_pop56_conv2d3x388(BLACKBOX,135)@2
    // out out_feedback_stall_out_56@20000000
    conv2d3x3_i_llvm_fpga_pop_i32_sub_2146_pop56_0 thei_llvm_fpga_pop_i32_sub_2146_pop56_conv2d3x388 (
        .in_data_in(redist19_sync_together243_aunroll_x_in_c0_eni46_19_tpl_1_q),
        .in_dir(i_llvm_fpga_fanout_i1_c0_ene1671_fanout_adaptor_conv2d3x33_q),
        .in_feedback_in_56(i_llvm_fpga_push_i32_sub_2146_push56_conv2d3x389_out_feedback_out_56),
        .in_feedback_valid_in_56(i_llvm_fpga_push_i32_sub_2146_push56_conv2d3x389_out_feedback_valid_out_56),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg40_q),
        .out_data_out(i_llvm_fpga_pop_i32_sub_2146_pop56_conv2d3x388_out_data_out),
        .out_feedback_stall_out_56(i_llvm_fpga_pop_i32_sub_2146_pop56_conv2d3x388_out_feedback_stall_out_56),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist62_i_llvm_fpga_pop_i32_sub_2146_pop56_conv2d3x388_out_data_out_3_wraddr(REG,621)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist62_i_llvm_fpga_pop_i32_sub_2146_pop56_conv2d3x388_out_data_out_3_wraddr_q <= $unsigned(1'b1);
        end
        else
        begin
            redist62_i_llvm_fpga_pop_i32_sub_2146_pop56_conv2d3x388_out_data_out_3_wraddr_q <= $unsigned(redist62_i_llvm_fpga_pop_i32_sub_2146_pop56_conv2d3x388_out_data_out_3_rdcnt_q);
        end
    end

    // redist62_i_llvm_fpga_pop_i32_sub_2146_pop56_conv2d3x388_out_data_out_3_mem(DUALMEM,619)
    assign redist62_i_llvm_fpga_pop_i32_sub_2146_pop56_conv2d3x388_out_data_out_3_mem_ia = $unsigned(i_llvm_fpga_pop_i32_sub_2146_pop56_conv2d3x388_out_data_out);
    assign redist62_i_llvm_fpga_pop_i32_sub_2146_pop56_conv2d3x388_out_data_out_3_mem_aa = redist62_i_llvm_fpga_pop_i32_sub_2146_pop56_conv2d3x388_out_data_out_3_wraddr_q;
    assign redist62_i_llvm_fpga_pop_i32_sub_2146_pop56_conv2d3x388_out_data_out_3_mem_ab = redist62_i_llvm_fpga_pop_i32_sub_2146_pop56_conv2d3x388_out_data_out_3_rdcnt_q;
    assign redist62_i_llvm_fpga_pop_i32_sub_2146_pop56_conv2d3x388_out_data_out_3_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(1),
        .numwords_a(2),
        .width_b(32),
        .widthad_b(1),
        .numwords_b(2),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .address_reg_b("CLOCK0"),
        .indata_reg_b("CLOCK0"),
        .rdcontrol_reg_b("CLOCK0"),
        .byteena_reg_b("CLOCK0"),
        .outdata_reg_b("CLOCK1"),
        .outdata_aclr_b("CLEAR1"),
        .clock_enable_input_a("NORMAL"),
        .clock_enable_input_b("NORMAL"),
        .clock_enable_output_b("NORMAL"),
        .read_during_write_mode_mixed_ports("DONT_CARE"),
        .power_up_uninitialized("TRUE"),
        .intended_device_family("Arria 10")
    ) redist62_i_llvm_fpga_pop_i32_sub_2146_pop56_conv2d3x388_out_data_out_3_mem_dmem (
        .clocken1(redist62_i_llvm_fpga_pop_i32_sub_2146_pop56_conv2d3x388_out_data_out_3_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist62_i_llvm_fpga_pop_i32_sub_2146_pop56_conv2d3x388_out_data_out_3_mem_reset0),
        .clock1(clock),
        .address_a(redist62_i_llvm_fpga_pop_i32_sub_2146_pop56_conv2d3x388_out_data_out_3_mem_aa),
        .data_a(redist62_i_llvm_fpga_pop_i32_sub_2146_pop56_conv2d3x388_out_data_out_3_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist62_i_llvm_fpga_pop_i32_sub_2146_pop56_conv2d3x388_out_data_out_3_mem_ab),
        .q_b(redist62_i_llvm_fpga_pop_i32_sub_2146_pop56_conv2d3x388_out_data_out_3_mem_iq),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_b(),
        .clocken2(),
        .clocken3(),
        .aclr0(),
        .addressstall_a(),
        .addressstall_b(),
        .byteena_a(),
        .byteena_b(),
        .eccencbypass(),
        .eccencparity(),
        .sclr(),
        .address2_a(),
        .address2_b(),
        .q_a(),
        .eccstatus()
    );
    assign redist62_i_llvm_fpga_pop_i32_sub_2146_pop56_conv2d3x388_out_data_out_3_mem_q = redist62_i_llvm_fpga_pop_i32_sub_2146_pop56_conv2d3x388_out_data_out_3_mem_iq[31:0];

    // redist63_i_llvm_fpga_pop_i32_sub_2146_pop56_conv2d3x388_out_data_out_6_wraddr(REG,629)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist63_i_llvm_fpga_pop_i32_sub_2146_pop56_conv2d3x388_out_data_out_6_wraddr_q <= $unsigned(1'b1);
        end
        else
        begin
            redist63_i_llvm_fpga_pop_i32_sub_2146_pop56_conv2d3x388_out_data_out_6_wraddr_q <= $unsigned(redist63_i_llvm_fpga_pop_i32_sub_2146_pop56_conv2d3x388_out_data_out_6_rdcnt_q);
        end
    end

    // redist63_i_llvm_fpga_pop_i32_sub_2146_pop56_conv2d3x388_out_data_out_6_mem(DUALMEM,627)
    assign redist63_i_llvm_fpga_pop_i32_sub_2146_pop56_conv2d3x388_out_data_out_6_mem_ia = $unsigned(redist62_i_llvm_fpga_pop_i32_sub_2146_pop56_conv2d3x388_out_data_out_3_mem_q);
    assign redist63_i_llvm_fpga_pop_i32_sub_2146_pop56_conv2d3x388_out_data_out_6_mem_aa = redist63_i_llvm_fpga_pop_i32_sub_2146_pop56_conv2d3x388_out_data_out_6_wraddr_q;
    assign redist63_i_llvm_fpga_pop_i32_sub_2146_pop56_conv2d3x388_out_data_out_6_mem_ab = redist63_i_llvm_fpga_pop_i32_sub_2146_pop56_conv2d3x388_out_data_out_6_rdcnt_q;
    assign redist63_i_llvm_fpga_pop_i32_sub_2146_pop56_conv2d3x388_out_data_out_6_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(1),
        .numwords_a(2),
        .width_b(32),
        .widthad_b(1),
        .numwords_b(2),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .address_reg_b("CLOCK0"),
        .indata_reg_b("CLOCK0"),
        .rdcontrol_reg_b("CLOCK0"),
        .byteena_reg_b("CLOCK0"),
        .outdata_reg_b("CLOCK1"),
        .outdata_aclr_b("CLEAR1"),
        .clock_enable_input_a("NORMAL"),
        .clock_enable_input_b("NORMAL"),
        .clock_enable_output_b("NORMAL"),
        .read_during_write_mode_mixed_ports("DONT_CARE"),
        .power_up_uninitialized("TRUE"),
        .intended_device_family("Arria 10")
    ) redist63_i_llvm_fpga_pop_i32_sub_2146_pop56_conv2d3x388_out_data_out_6_mem_dmem (
        .clocken1(redist63_i_llvm_fpga_pop_i32_sub_2146_pop56_conv2d3x388_out_data_out_6_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist63_i_llvm_fpga_pop_i32_sub_2146_pop56_conv2d3x388_out_data_out_6_mem_reset0),
        .clock1(clock),
        .address_a(redist63_i_llvm_fpga_pop_i32_sub_2146_pop56_conv2d3x388_out_data_out_6_mem_aa),
        .data_a(redist63_i_llvm_fpga_pop_i32_sub_2146_pop56_conv2d3x388_out_data_out_6_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist63_i_llvm_fpga_pop_i32_sub_2146_pop56_conv2d3x388_out_data_out_6_mem_ab),
        .q_b(redist63_i_llvm_fpga_pop_i32_sub_2146_pop56_conv2d3x388_out_data_out_6_mem_iq),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_b(),
        .clocken2(),
        .clocken3(),
        .aclr0(),
        .addressstall_a(),
        .addressstall_b(),
        .byteena_a(),
        .byteena_b(),
        .eccencbypass(),
        .eccencparity(),
        .sclr(),
        .address2_a(),
        .address2_b(),
        .q_a(),
        .eccstatus()
    );
    assign redist63_i_llvm_fpga_pop_i32_sub_2146_pop56_conv2d3x388_out_data_out_6_mem_q = redist63_i_llvm_fpga_pop_i32_sub_2146_pop56_conv2d3x388_out_data_out_6_mem_iq[31:0];

    // valid_fanout_reg38(REG,282)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg38_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg38_q <= $unsigned(redist48_sync_together243_aunroll_x_in_i_valid_3_q);
        end
    end

    // valid_fanout_reg39(REG,283)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg39_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg39_q <= $unsigned(redist48_sync_together243_aunroll_x_in_i_valid_3_q);
        end
    end

    // i_llvm_fpga_push_i1_cmp27_1141_push55_conv2d3x387(BLACKBOX,144)@5
    // out out_feedback_out_55@20000000
    // out out_feedback_valid_out_55@20000000
    conv2d3x3_i_llvm_fpga_push_i1_cmp27_1141_push55_0 thei_llvm_fpga_push_i1_cmp27_1141_push55_conv2d3x387 (
        .in_data_in(i_llvm_fpga_pop_i1_cmp27_1141_pop55_conv2d3x386_out_data_out),
        .in_feedback_stall_in_55(i_llvm_fpga_pop_i1_cmp27_1141_pop55_conv2d3x386_out_feedback_stall_out_55),
        .in_keep_going60_fanout_adaptor(i_llvm_fpga_fanout_i1_keep_going60_fanout_adaptor_conv2d3x310_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg39_q),
        .out_data_out(),
        .out_feedback_out_55(i_llvm_fpga_push_i1_cmp27_1141_push55_conv2d3x387_out_feedback_out_55),
        .out_feedback_valid_out_55(i_llvm_fpga_push_i1_cmp27_1141_push55_conv2d3x387_out_feedback_valid_out_55),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist18_sync_together243_aunroll_x_in_c0_eni46_18_tpl_4(DELAY,384)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist18_sync_together243_aunroll_x_in_c0_eni46_18_tpl_4_delay_0 <= '0;
            redist18_sync_together243_aunroll_x_in_c0_eni46_18_tpl_4_delay_1 <= '0;
            redist18_sync_together243_aunroll_x_in_c0_eni46_18_tpl_4_delay_2 <= '0;
            redist18_sync_together243_aunroll_x_in_c0_eni46_18_tpl_4_q <= '0;
        end
        else
        begin
            redist18_sync_together243_aunroll_x_in_c0_eni46_18_tpl_4_delay_0 <= $unsigned(in_c0_eni46_18_tpl);
            redist18_sync_together243_aunroll_x_in_c0_eni46_18_tpl_4_delay_1 <= redist18_sync_together243_aunroll_x_in_c0_eni46_18_tpl_4_delay_0;
            redist18_sync_together243_aunroll_x_in_c0_eni46_18_tpl_4_delay_2 <= redist18_sync_together243_aunroll_x_in_c0_eni46_18_tpl_4_delay_1;
            redist18_sync_together243_aunroll_x_in_c0_eni46_18_tpl_4_q <= redist18_sync_together243_aunroll_x_in_c0_eni46_18_tpl_4_delay_2;
        end
    end

    // i_llvm_fpga_pop_i1_cmp27_1141_pop55_conv2d3x386(BLACKBOX,115)@5
    // out out_feedback_stall_out_55@20000000
    conv2d3x3_i_llvm_fpga_pop_i1_cmp27_1141_pop55_0 thei_llvm_fpga_pop_i1_cmp27_1141_pop55_conv2d3x386 (
        .in_data_in(redist18_sync_together243_aunroll_x_in_c0_eni46_18_tpl_4_q),
        .in_dir(redist100_i_llvm_fpga_fanout_i1_c0_ene1671_fanout_adaptor_conv2d3x33_q_3_q),
        .in_feedback_in_55(i_llvm_fpga_push_i1_cmp27_1141_push55_conv2d3x387_out_feedback_out_55),
        .in_feedback_valid_in_55(i_llvm_fpga_push_i1_cmp27_1141_push55_conv2d3x387_out_feedback_valid_out_55),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg38_q),
        .out_data_out(i_llvm_fpga_pop_i1_cmp27_1141_pop55_conv2d3x386_out_data_out),
        .out_feedback_stall_out_55(i_llvm_fpga_pop_i1_cmp27_1141_pop55_conv2d3x386_out_feedback_stall_out_55),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist92_i_llvm_fpga_pop_i1_cmp27_1141_pop55_conv2d3x386_out_data_out_3(DELAY,458)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist92_i_llvm_fpga_pop_i1_cmp27_1141_pop55_conv2d3x386_out_data_out_3_delay_0 <= '0;
            redist92_i_llvm_fpga_pop_i1_cmp27_1141_pop55_conv2d3x386_out_data_out_3_delay_1 <= '0;
            redist92_i_llvm_fpga_pop_i1_cmp27_1141_pop55_conv2d3x386_out_data_out_3_q <= '0;
        end
        else
        begin
            redist92_i_llvm_fpga_pop_i1_cmp27_1141_pop55_conv2d3x386_out_data_out_3_delay_0 <= $unsigned(i_llvm_fpga_pop_i1_cmp27_1141_pop55_conv2d3x386_out_data_out);
            redist92_i_llvm_fpga_pop_i1_cmp27_1141_pop55_conv2d3x386_out_data_out_3_delay_1 <= redist92_i_llvm_fpga_pop_i1_cmp27_1141_pop55_conv2d3x386_out_data_out_3_delay_0;
            redist92_i_llvm_fpga_pop_i1_cmp27_1141_pop55_conv2d3x386_out_data_out_3_q <= redist92_i_llvm_fpga_pop_i1_cmp27_1141_pop55_conv2d3x386_out_data_out_3_delay_1;
        end
    end

    // valid_fanout_reg36(REG,280)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg36_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg36_q <= $unsigned(redist48_sync_together243_aunroll_x_in_i_valid_3_q);
        end
    end

    // valid_fanout_reg37(REG,281)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg37_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg37_q <= $unsigned(redist48_sync_together243_aunroll_x_in_i_valid_3_q);
        end
    end

    // i_llvm_fpga_push_i1_cmp26_1136_push54_conv2d3x385(BLACKBOX,141)@5
    // out out_feedback_out_54@20000000
    // out out_feedback_valid_out_54@20000000
    conv2d3x3_i_llvm_fpga_push_i1_cmp26_1136_push54_0 thei_llvm_fpga_push_i1_cmp26_1136_push54_conv2d3x385 (
        .in_data_in(i_llvm_fpga_pop_i1_cmp26_1136_pop54_conv2d3x384_out_data_out),
        .in_feedback_stall_in_54(i_llvm_fpga_pop_i1_cmp26_1136_pop54_conv2d3x384_out_feedback_stall_out_54),
        .in_keep_going60_fanout_adaptor(i_llvm_fpga_fanout_i1_keep_going60_fanout_adaptor_conv2d3x310_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg37_q),
        .out_data_out(),
        .out_feedback_out_54(i_llvm_fpga_push_i1_cmp26_1136_push54_conv2d3x385_out_feedback_out_54),
        .out_feedback_valid_out_54(i_llvm_fpga_push_i1_cmp26_1136_push54_conv2d3x385_out_feedback_valid_out_54),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist17_sync_together243_aunroll_x_in_c0_eni46_17_tpl_4(DELAY,383)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist17_sync_together243_aunroll_x_in_c0_eni46_17_tpl_4_delay_0 <= '0;
            redist17_sync_together243_aunroll_x_in_c0_eni46_17_tpl_4_delay_1 <= '0;
            redist17_sync_together243_aunroll_x_in_c0_eni46_17_tpl_4_delay_2 <= '0;
            redist17_sync_together243_aunroll_x_in_c0_eni46_17_tpl_4_q <= '0;
        end
        else
        begin
            redist17_sync_together243_aunroll_x_in_c0_eni46_17_tpl_4_delay_0 <= $unsigned(in_c0_eni46_17_tpl);
            redist17_sync_together243_aunroll_x_in_c0_eni46_17_tpl_4_delay_1 <= redist17_sync_together243_aunroll_x_in_c0_eni46_17_tpl_4_delay_0;
            redist17_sync_together243_aunroll_x_in_c0_eni46_17_tpl_4_delay_2 <= redist17_sync_together243_aunroll_x_in_c0_eni46_17_tpl_4_delay_1;
            redist17_sync_together243_aunroll_x_in_c0_eni46_17_tpl_4_q <= redist17_sync_together243_aunroll_x_in_c0_eni46_17_tpl_4_delay_2;
        end
    end

    // i_llvm_fpga_pop_i1_cmp26_1136_pop54_conv2d3x384(BLACKBOX,112)@5
    // out out_feedback_stall_out_54@20000000
    conv2d3x3_i_llvm_fpga_pop_i1_cmp26_1136_pop54_0 thei_llvm_fpga_pop_i1_cmp26_1136_pop54_conv2d3x384 (
        .in_data_in(redist17_sync_together243_aunroll_x_in_c0_eni46_17_tpl_4_q),
        .in_dir(redist100_i_llvm_fpga_fanout_i1_c0_ene1671_fanout_adaptor_conv2d3x33_q_3_q),
        .in_feedback_in_54(i_llvm_fpga_push_i1_cmp26_1136_push54_conv2d3x385_out_feedback_out_54),
        .in_feedback_valid_in_54(i_llvm_fpga_push_i1_cmp26_1136_push54_conv2d3x385_out_feedback_valid_out_54),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg36_q),
        .out_data_out(i_llvm_fpga_pop_i1_cmp26_1136_pop54_conv2d3x384_out_data_out),
        .out_feedback_stall_out_54(i_llvm_fpga_pop_i1_cmp26_1136_pop54_conv2d3x384_out_feedback_stall_out_54),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist95_i_llvm_fpga_pop_i1_cmp26_1136_pop54_conv2d3x384_out_data_out_3(DELAY,461)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist95_i_llvm_fpga_pop_i1_cmp26_1136_pop54_conv2d3x384_out_data_out_3_delay_0 <= '0;
            redist95_i_llvm_fpga_pop_i1_cmp26_1136_pop54_conv2d3x384_out_data_out_3_delay_1 <= '0;
            redist95_i_llvm_fpga_pop_i1_cmp26_1136_pop54_conv2d3x384_out_data_out_3_q <= '0;
        end
        else
        begin
            redist95_i_llvm_fpga_pop_i1_cmp26_1136_pop54_conv2d3x384_out_data_out_3_delay_0 <= $unsigned(i_llvm_fpga_pop_i1_cmp26_1136_pop54_conv2d3x384_out_data_out);
            redist95_i_llvm_fpga_pop_i1_cmp26_1136_pop54_conv2d3x384_out_data_out_3_delay_1 <= redist95_i_llvm_fpga_pop_i1_cmp26_1136_pop54_conv2d3x384_out_data_out_3_delay_0;
            redist95_i_llvm_fpga_pop_i1_cmp26_1136_pop54_conv2d3x384_out_data_out_3_q <= redist95_i_llvm_fpga_pop_i1_cmp26_1136_pop54_conv2d3x384_out_data_out_3_delay_1;
        end
    end

    // redist65_i_llvm_fpga_pop_i32_sub_1131_pop53_conv2d3x382_out_data_out_6_notEnable(LOGICAL,647)
    assign redist65_i_llvm_fpga_pop_i32_sub_1131_pop53_conv2d3x382_out_data_out_6_notEnable_q = $unsigned(~ (VCC_q));

    // redist65_i_llvm_fpga_pop_i32_sub_1131_pop53_conv2d3x382_out_data_out_6_nor(LOGICAL,648)
    assign redist65_i_llvm_fpga_pop_i32_sub_1131_pop53_conv2d3x382_out_data_out_6_nor_q = ~ (redist65_i_llvm_fpga_pop_i32_sub_1131_pop53_conv2d3x382_out_data_out_6_notEnable_q | redist65_i_llvm_fpga_pop_i32_sub_1131_pop53_conv2d3x382_out_data_out_6_sticky_ena_q);

    // redist65_i_llvm_fpga_pop_i32_sub_1131_pop53_conv2d3x382_out_data_out_6_cmpReg(REG,646)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist65_i_llvm_fpga_pop_i32_sub_1131_pop53_conv2d3x382_out_data_out_6_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist65_i_llvm_fpga_pop_i32_sub_1131_pop53_conv2d3x382_out_data_out_6_cmpReg_q <= $unsigned(VCC_q);
        end
    end

    // redist65_i_llvm_fpga_pop_i32_sub_1131_pop53_conv2d3x382_out_data_out_6_sticky_ena(REG,649)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist65_i_llvm_fpga_pop_i32_sub_1131_pop53_conv2d3x382_out_data_out_6_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist65_i_llvm_fpga_pop_i32_sub_1131_pop53_conv2d3x382_out_data_out_6_nor_q == 1'b1)
        begin
            redist65_i_llvm_fpga_pop_i32_sub_1131_pop53_conv2d3x382_out_data_out_6_sticky_ena_q <= $unsigned(redist65_i_llvm_fpga_pop_i32_sub_1131_pop53_conv2d3x382_out_data_out_6_cmpReg_q);
        end
    end

    // redist65_i_llvm_fpga_pop_i32_sub_1131_pop53_conv2d3x382_out_data_out_6_enaAnd(LOGICAL,650)
    assign redist65_i_llvm_fpga_pop_i32_sub_1131_pop53_conv2d3x382_out_data_out_6_enaAnd_q = redist65_i_llvm_fpga_pop_i32_sub_1131_pop53_conv2d3x382_out_data_out_6_sticky_ena_q & VCC_q;

    // redist65_i_llvm_fpga_pop_i32_sub_1131_pop53_conv2d3x382_out_data_out_6_rdcnt(COUNTER,644)
    // low=0, high=1, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist65_i_llvm_fpga_pop_i32_sub_1131_pop53_conv2d3x382_out_data_out_6_rdcnt_i <= 1'd0;
        end
        else
        begin
            redist65_i_llvm_fpga_pop_i32_sub_1131_pop53_conv2d3x382_out_data_out_6_rdcnt_i <= $unsigned(redist65_i_llvm_fpga_pop_i32_sub_1131_pop53_conv2d3x382_out_data_out_6_rdcnt_i) + $unsigned(1'd1);
        end
    end
    assign redist65_i_llvm_fpga_pop_i32_sub_1131_pop53_conv2d3x382_out_data_out_6_rdcnt_q = redist65_i_llvm_fpga_pop_i32_sub_1131_pop53_conv2d3x382_out_data_out_6_rdcnt_i[0:0];

    // redist64_i_llvm_fpga_pop_i32_sub_1131_pop53_conv2d3x382_out_data_out_3_notEnable(LOGICAL,639)
    assign redist64_i_llvm_fpga_pop_i32_sub_1131_pop53_conv2d3x382_out_data_out_3_notEnable_q = $unsigned(~ (VCC_q));

    // redist64_i_llvm_fpga_pop_i32_sub_1131_pop53_conv2d3x382_out_data_out_3_nor(LOGICAL,640)
    assign redist64_i_llvm_fpga_pop_i32_sub_1131_pop53_conv2d3x382_out_data_out_3_nor_q = ~ (redist64_i_llvm_fpga_pop_i32_sub_1131_pop53_conv2d3x382_out_data_out_3_notEnable_q | redist64_i_llvm_fpga_pop_i32_sub_1131_pop53_conv2d3x382_out_data_out_3_sticky_ena_q);

    // redist64_i_llvm_fpga_pop_i32_sub_1131_pop53_conv2d3x382_out_data_out_3_cmpReg(REG,638)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist64_i_llvm_fpga_pop_i32_sub_1131_pop53_conv2d3x382_out_data_out_3_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist64_i_llvm_fpga_pop_i32_sub_1131_pop53_conv2d3x382_out_data_out_3_cmpReg_q <= $unsigned(VCC_q);
        end
    end

    // redist64_i_llvm_fpga_pop_i32_sub_1131_pop53_conv2d3x382_out_data_out_3_sticky_ena(REG,641)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist64_i_llvm_fpga_pop_i32_sub_1131_pop53_conv2d3x382_out_data_out_3_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist64_i_llvm_fpga_pop_i32_sub_1131_pop53_conv2d3x382_out_data_out_3_nor_q == 1'b1)
        begin
            redist64_i_llvm_fpga_pop_i32_sub_1131_pop53_conv2d3x382_out_data_out_3_sticky_ena_q <= $unsigned(redist64_i_llvm_fpga_pop_i32_sub_1131_pop53_conv2d3x382_out_data_out_3_cmpReg_q);
        end
    end

    // redist64_i_llvm_fpga_pop_i32_sub_1131_pop53_conv2d3x382_out_data_out_3_enaAnd(LOGICAL,642)
    assign redist64_i_llvm_fpga_pop_i32_sub_1131_pop53_conv2d3x382_out_data_out_3_enaAnd_q = redist64_i_llvm_fpga_pop_i32_sub_1131_pop53_conv2d3x382_out_data_out_3_sticky_ena_q & VCC_q;

    // redist64_i_llvm_fpga_pop_i32_sub_1131_pop53_conv2d3x382_out_data_out_3_rdcnt(COUNTER,636)
    // low=0, high=1, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist64_i_llvm_fpga_pop_i32_sub_1131_pop53_conv2d3x382_out_data_out_3_rdcnt_i <= 1'd0;
        end
        else
        begin
            redist64_i_llvm_fpga_pop_i32_sub_1131_pop53_conv2d3x382_out_data_out_3_rdcnt_i <= $unsigned(redist64_i_llvm_fpga_pop_i32_sub_1131_pop53_conv2d3x382_out_data_out_3_rdcnt_i) + $unsigned(1'd1);
        end
    end
    assign redist64_i_llvm_fpga_pop_i32_sub_1131_pop53_conv2d3x382_out_data_out_3_rdcnt_q = redist64_i_llvm_fpga_pop_i32_sub_1131_pop53_conv2d3x382_out_data_out_3_rdcnt_i[0:0];

    // valid_fanout_reg34(REG,278)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg34_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg34_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg35(REG,279)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg35_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg35_q <= $unsigned(redist48_sync_together243_aunroll_x_in_i_valid_3_q);
        end
    end

    // i_llvm_fpga_push_i32_sub_1131_push53_conv2d3x383(BLACKBOX,165)@5
    // out out_feedback_out_53@20000000
    // out out_feedback_valid_out_53@20000000
    conv2d3x3_i_llvm_fpga_push_i32_sub_1131_push53_0 thei_llvm_fpga_push_i32_sub_1131_push53_conv2d3x383 (
        .in_data_in(redist64_i_llvm_fpga_pop_i32_sub_1131_pop53_conv2d3x382_out_data_out_3_mem_q),
        .in_feedback_stall_in_53(i_llvm_fpga_pop_i32_sub_1131_pop53_conv2d3x382_out_feedback_stall_out_53),
        .in_keep_going60_fanout_adaptor(i_llvm_fpga_fanout_i1_keep_going60_fanout_adaptor_conv2d3x310_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg35_q),
        .out_data_out(),
        .out_feedback_out_53(i_llvm_fpga_push_i32_sub_1131_push53_conv2d3x383_out_feedback_out_53),
        .out_feedback_valid_out_53(i_llvm_fpga_push_i32_sub_1131_push53_conv2d3x383_out_feedback_valid_out_53),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist16_sync_together243_aunroll_x_in_c0_eni46_16_tpl_1(DELAY,382)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist16_sync_together243_aunroll_x_in_c0_eni46_16_tpl_1_q <= '0;
        end
        else
        begin
            redist16_sync_together243_aunroll_x_in_c0_eni46_16_tpl_1_q <= $unsigned(in_c0_eni46_16_tpl);
        end
    end

    // i_llvm_fpga_pop_i32_sub_1131_pop53_conv2d3x382(BLACKBOX,134)@2
    // out out_feedback_stall_out_53@20000000
    conv2d3x3_i_llvm_fpga_pop_i32_sub_1131_pop53_0 thei_llvm_fpga_pop_i32_sub_1131_pop53_conv2d3x382 (
        .in_data_in(redist16_sync_together243_aunroll_x_in_c0_eni46_16_tpl_1_q),
        .in_dir(i_llvm_fpga_fanout_i1_c0_ene1671_fanout_adaptor_conv2d3x33_q),
        .in_feedback_in_53(i_llvm_fpga_push_i32_sub_1131_push53_conv2d3x383_out_feedback_out_53),
        .in_feedback_valid_in_53(i_llvm_fpga_push_i32_sub_1131_push53_conv2d3x383_out_feedback_valid_out_53),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg34_q),
        .out_data_out(i_llvm_fpga_pop_i32_sub_1131_pop53_conv2d3x382_out_data_out),
        .out_feedback_stall_out_53(i_llvm_fpga_pop_i32_sub_1131_pop53_conv2d3x382_out_feedback_stall_out_53),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist64_i_llvm_fpga_pop_i32_sub_1131_pop53_conv2d3x382_out_data_out_3_wraddr(REG,637)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist64_i_llvm_fpga_pop_i32_sub_1131_pop53_conv2d3x382_out_data_out_3_wraddr_q <= $unsigned(1'b1);
        end
        else
        begin
            redist64_i_llvm_fpga_pop_i32_sub_1131_pop53_conv2d3x382_out_data_out_3_wraddr_q <= $unsigned(redist64_i_llvm_fpga_pop_i32_sub_1131_pop53_conv2d3x382_out_data_out_3_rdcnt_q);
        end
    end

    // redist64_i_llvm_fpga_pop_i32_sub_1131_pop53_conv2d3x382_out_data_out_3_mem(DUALMEM,635)
    assign redist64_i_llvm_fpga_pop_i32_sub_1131_pop53_conv2d3x382_out_data_out_3_mem_ia = $unsigned(i_llvm_fpga_pop_i32_sub_1131_pop53_conv2d3x382_out_data_out);
    assign redist64_i_llvm_fpga_pop_i32_sub_1131_pop53_conv2d3x382_out_data_out_3_mem_aa = redist64_i_llvm_fpga_pop_i32_sub_1131_pop53_conv2d3x382_out_data_out_3_wraddr_q;
    assign redist64_i_llvm_fpga_pop_i32_sub_1131_pop53_conv2d3x382_out_data_out_3_mem_ab = redist64_i_llvm_fpga_pop_i32_sub_1131_pop53_conv2d3x382_out_data_out_3_rdcnt_q;
    assign redist64_i_llvm_fpga_pop_i32_sub_1131_pop53_conv2d3x382_out_data_out_3_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(1),
        .numwords_a(2),
        .width_b(32),
        .widthad_b(1),
        .numwords_b(2),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .address_reg_b("CLOCK0"),
        .indata_reg_b("CLOCK0"),
        .rdcontrol_reg_b("CLOCK0"),
        .byteena_reg_b("CLOCK0"),
        .outdata_reg_b("CLOCK1"),
        .outdata_aclr_b("CLEAR1"),
        .clock_enable_input_a("NORMAL"),
        .clock_enable_input_b("NORMAL"),
        .clock_enable_output_b("NORMAL"),
        .read_during_write_mode_mixed_ports("DONT_CARE"),
        .power_up_uninitialized("TRUE"),
        .intended_device_family("Arria 10")
    ) redist64_i_llvm_fpga_pop_i32_sub_1131_pop53_conv2d3x382_out_data_out_3_mem_dmem (
        .clocken1(redist64_i_llvm_fpga_pop_i32_sub_1131_pop53_conv2d3x382_out_data_out_3_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist64_i_llvm_fpga_pop_i32_sub_1131_pop53_conv2d3x382_out_data_out_3_mem_reset0),
        .clock1(clock),
        .address_a(redist64_i_llvm_fpga_pop_i32_sub_1131_pop53_conv2d3x382_out_data_out_3_mem_aa),
        .data_a(redist64_i_llvm_fpga_pop_i32_sub_1131_pop53_conv2d3x382_out_data_out_3_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist64_i_llvm_fpga_pop_i32_sub_1131_pop53_conv2d3x382_out_data_out_3_mem_ab),
        .q_b(redist64_i_llvm_fpga_pop_i32_sub_1131_pop53_conv2d3x382_out_data_out_3_mem_iq),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_b(),
        .clocken2(),
        .clocken3(),
        .aclr0(),
        .addressstall_a(),
        .addressstall_b(),
        .byteena_a(),
        .byteena_b(),
        .eccencbypass(),
        .eccencparity(),
        .sclr(),
        .address2_a(),
        .address2_b(),
        .q_a(),
        .eccstatus()
    );
    assign redist64_i_llvm_fpga_pop_i32_sub_1131_pop53_conv2d3x382_out_data_out_3_mem_q = redist64_i_llvm_fpga_pop_i32_sub_1131_pop53_conv2d3x382_out_data_out_3_mem_iq[31:0];

    // redist65_i_llvm_fpga_pop_i32_sub_1131_pop53_conv2d3x382_out_data_out_6_wraddr(REG,645)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist65_i_llvm_fpga_pop_i32_sub_1131_pop53_conv2d3x382_out_data_out_6_wraddr_q <= $unsigned(1'b1);
        end
        else
        begin
            redist65_i_llvm_fpga_pop_i32_sub_1131_pop53_conv2d3x382_out_data_out_6_wraddr_q <= $unsigned(redist65_i_llvm_fpga_pop_i32_sub_1131_pop53_conv2d3x382_out_data_out_6_rdcnt_q);
        end
    end

    // redist65_i_llvm_fpga_pop_i32_sub_1131_pop53_conv2d3x382_out_data_out_6_mem(DUALMEM,643)
    assign redist65_i_llvm_fpga_pop_i32_sub_1131_pop53_conv2d3x382_out_data_out_6_mem_ia = $unsigned(redist64_i_llvm_fpga_pop_i32_sub_1131_pop53_conv2d3x382_out_data_out_3_mem_q);
    assign redist65_i_llvm_fpga_pop_i32_sub_1131_pop53_conv2d3x382_out_data_out_6_mem_aa = redist65_i_llvm_fpga_pop_i32_sub_1131_pop53_conv2d3x382_out_data_out_6_wraddr_q;
    assign redist65_i_llvm_fpga_pop_i32_sub_1131_pop53_conv2d3x382_out_data_out_6_mem_ab = redist65_i_llvm_fpga_pop_i32_sub_1131_pop53_conv2d3x382_out_data_out_6_rdcnt_q;
    assign redist65_i_llvm_fpga_pop_i32_sub_1131_pop53_conv2d3x382_out_data_out_6_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(1),
        .numwords_a(2),
        .width_b(32),
        .widthad_b(1),
        .numwords_b(2),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .address_reg_b("CLOCK0"),
        .indata_reg_b("CLOCK0"),
        .rdcontrol_reg_b("CLOCK0"),
        .byteena_reg_b("CLOCK0"),
        .outdata_reg_b("CLOCK1"),
        .outdata_aclr_b("CLEAR1"),
        .clock_enable_input_a("NORMAL"),
        .clock_enable_input_b("NORMAL"),
        .clock_enable_output_b("NORMAL"),
        .read_during_write_mode_mixed_ports("DONT_CARE"),
        .power_up_uninitialized("TRUE"),
        .intended_device_family("Arria 10")
    ) redist65_i_llvm_fpga_pop_i32_sub_1131_pop53_conv2d3x382_out_data_out_6_mem_dmem (
        .clocken1(redist65_i_llvm_fpga_pop_i32_sub_1131_pop53_conv2d3x382_out_data_out_6_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist65_i_llvm_fpga_pop_i32_sub_1131_pop53_conv2d3x382_out_data_out_6_mem_reset0),
        .clock1(clock),
        .address_a(redist65_i_llvm_fpga_pop_i32_sub_1131_pop53_conv2d3x382_out_data_out_6_mem_aa),
        .data_a(redist65_i_llvm_fpga_pop_i32_sub_1131_pop53_conv2d3x382_out_data_out_6_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist65_i_llvm_fpga_pop_i32_sub_1131_pop53_conv2d3x382_out_data_out_6_mem_ab),
        .q_b(redist65_i_llvm_fpga_pop_i32_sub_1131_pop53_conv2d3x382_out_data_out_6_mem_iq),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_b(),
        .clocken2(),
        .clocken3(),
        .aclr0(),
        .addressstall_a(),
        .addressstall_b(),
        .byteena_a(),
        .byteena_b(),
        .eccencbypass(),
        .eccencparity(),
        .sclr(),
        .address2_a(),
        .address2_b(),
        .q_a(),
        .eccstatus()
    );
    assign redist65_i_llvm_fpga_pop_i32_sub_1131_pop53_conv2d3x382_out_data_out_6_mem_q = redist65_i_llvm_fpga_pop_i32_sub_1131_pop53_conv2d3x382_out_data_out_6_mem_iq[31:0];

    // redist71_i_llvm_fpga_pop_i32_mul56116_pop50_conv2d3x380_out_data_out_6_notEnable(LOGICAL,679)
    assign redist71_i_llvm_fpga_pop_i32_mul56116_pop50_conv2d3x380_out_data_out_6_notEnable_q = $unsigned(~ (VCC_q));

    // redist71_i_llvm_fpga_pop_i32_mul56116_pop50_conv2d3x380_out_data_out_6_nor(LOGICAL,680)
    assign redist71_i_llvm_fpga_pop_i32_mul56116_pop50_conv2d3x380_out_data_out_6_nor_q = ~ (redist71_i_llvm_fpga_pop_i32_mul56116_pop50_conv2d3x380_out_data_out_6_notEnable_q | redist71_i_llvm_fpga_pop_i32_mul56116_pop50_conv2d3x380_out_data_out_6_sticky_ena_q);

    // redist71_i_llvm_fpga_pop_i32_mul56116_pop50_conv2d3x380_out_data_out_6_cmpReg(REG,678)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist71_i_llvm_fpga_pop_i32_mul56116_pop50_conv2d3x380_out_data_out_6_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist71_i_llvm_fpga_pop_i32_mul56116_pop50_conv2d3x380_out_data_out_6_cmpReg_q <= $unsigned(VCC_q);
        end
    end

    // redist71_i_llvm_fpga_pop_i32_mul56116_pop50_conv2d3x380_out_data_out_6_sticky_ena(REG,681)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist71_i_llvm_fpga_pop_i32_mul56116_pop50_conv2d3x380_out_data_out_6_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist71_i_llvm_fpga_pop_i32_mul56116_pop50_conv2d3x380_out_data_out_6_nor_q == 1'b1)
        begin
            redist71_i_llvm_fpga_pop_i32_mul56116_pop50_conv2d3x380_out_data_out_6_sticky_ena_q <= $unsigned(redist71_i_llvm_fpga_pop_i32_mul56116_pop50_conv2d3x380_out_data_out_6_cmpReg_q);
        end
    end

    // redist71_i_llvm_fpga_pop_i32_mul56116_pop50_conv2d3x380_out_data_out_6_enaAnd(LOGICAL,682)
    assign redist71_i_llvm_fpga_pop_i32_mul56116_pop50_conv2d3x380_out_data_out_6_enaAnd_q = redist71_i_llvm_fpga_pop_i32_mul56116_pop50_conv2d3x380_out_data_out_6_sticky_ena_q & VCC_q;

    // redist71_i_llvm_fpga_pop_i32_mul56116_pop50_conv2d3x380_out_data_out_6_rdcnt(COUNTER,676)
    // low=0, high=1, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist71_i_llvm_fpga_pop_i32_mul56116_pop50_conv2d3x380_out_data_out_6_rdcnt_i <= 1'd0;
        end
        else
        begin
            redist71_i_llvm_fpga_pop_i32_mul56116_pop50_conv2d3x380_out_data_out_6_rdcnt_i <= $unsigned(redist71_i_llvm_fpga_pop_i32_mul56116_pop50_conv2d3x380_out_data_out_6_rdcnt_i) + $unsigned(1'd1);
        end
    end
    assign redist71_i_llvm_fpga_pop_i32_mul56116_pop50_conv2d3x380_out_data_out_6_rdcnt_q = redist71_i_llvm_fpga_pop_i32_mul56116_pop50_conv2d3x380_out_data_out_6_rdcnt_i[0:0];

    // redist70_i_llvm_fpga_pop_i32_mul56116_pop50_conv2d3x380_out_data_out_3_notEnable(LOGICAL,671)
    assign redist70_i_llvm_fpga_pop_i32_mul56116_pop50_conv2d3x380_out_data_out_3_notEnable_q = $unsigned(~ (VCC_q));

    // redist70_i_llvm_fpga_pop_i32_mul56116_pop50_conv2d3x380_out_data_out_3_nor(LOGICAL,672)
    assign redist70_i_llvm_fpga_pop_i32_mul56116_pop50_conv2d3x380_out_data_out_3_nor_q = ~ (redist70_i_llvm_fpga_pop_i32_mul56116_pop50_conv2d3x380_out_data_out_3_notEnable_q | redist70_i_llvm_fpga_pop_i32_mul56116_pop50_conv2d3x380_out_data_out_3_sticky_ena_q);

    // redist70_i_llvm_fpga_pop_i32_mul56116_pop50_conv2d3x380_out_data_out_3_cmpReg(REG,670)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist70_i_llvm_fpga_pop_i32_mul56116_pop50_conv2d3x380_out_data_out_3_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist70_i_llvm_fpga_pop_i32_mul56116_pop50_conv2d3x380_out_data_out_3_cmpReg_q <= $unsigned(VCC_q);
        end
    end

    // redist70_i_llvm_fpga_pop_i32_mul56116_pop50_conv2d3x380_out_data_out_3_sticky_ena(REG,673)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist70_i_llvm_fpga_pop_i32_mul56116_pop50_conv2d3x380_out_data_out_3_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist70_i_llvm_fpga_pop_i32_mul56116_pop50_conv2d3x380_out_data_out_3_nor_q == 1'b1)
        begin
            redist70_i_llvm_fpga_pop_i32_mul56116_pop50_conv2d3x380_out_data_out_3_sticky_ena_q <= $unsigned(redist70_i_llvm_fpga_pop_i32_mul56116_pop50_conv2d3x380_out_data_out_3_cmpReg_q);
        end
    end

    // redist70_i_llvm_fpga_pop_i32_mul56116_pop50_conv2d3x380_out_data_out_3_enaAnd(LOGICAL,674)
    assign redist70_i_llvm_fpga_pop_i32_mul56116_pop50_conv2d3x380_out_data_out_3_enaAnd_q = redist70_i_llvm_fpga_pop_i32_mul56116_pop50_conv2d3x380_out_data_out_3_sticky_ena_q & VCC_q;

    // redist70_i_llvm_fpga_pop_i32_mul56116_pop50_conv2d3x380_out_data_out_3_rdcnt(COUNTER,668)
    // low=0, high=1, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist70_i_llvm_fpga_pop_i32_mul56116_pop50_conv2d3x380_out_data_out_3_rdcnt_i <= 1'd0;
        end
        else
        begin
            redist70_i_llvm_fpga_pop_i32_mul56116_pop50_conv2d3x380_out_data_out_3_rdcnt_i <= $unsigned(redist70_i_llvm_fpga_pop_i32_mul56116_pop50_conv2d3x380_out_data_out_3_rdcnt_i) + $unsigned(1'd1);
        end
    end
    assign redist70_i_llvm_fpga_pop_i32_mul56116_pop50_conv2d3x380_out_data_out_3_rdcnt_q = redist70_i_llvm_fpga_pop_i32_mul56116_pop50_conv2d3x380_out_data_out_3_rdcnt_i[0:0];

    // valid_fanout_reg32(REG,276)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg32_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg32_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg33(REG,277)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg33_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg33_q <= $unsigned(redist48_sync_together243_aunroll_x_in_i_valid_3_q);
        end
    end

    // i_llvm_fpga_push_i32_mul56116_push50_conv2d3x381(BLACKBOX,162)@5
    // out out_feedback_out_50@20000000
    // out out_feedback_valid_out_50@20000000
    conv2d3x3_i_llvm_fpga_push_i32_mul56116_push50_0 thei_llvm_fpga_push_i32_mul56116_push50_conv2d3x381 (
        .in_data_in(redist70_i_llvm_fpga_pop_i32_mul56116_pop50_conv2d3x380_out_data_out_3_mem_q),
        .in_feedback_stall_in_50(i_llvm_fpga_pop_i32_mul56116_pop50_conv2d3x380_out_feedback_stall_out_50),
        .in_keep_going60_fanout_adaptor(i_llvm_fpga_fanout_i1_keep_going60_fanout_adaptor_conv2d3x310_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg33_q),
        .out_data_out(),
        .out_feedback_out_50(i_llvm_fpga_push_i32_mul56116_push50_conv2d3x381_out_feedback_out_50),
        .out_feedback_valid_out_50(i_llvm_fpga_push_i32_mul56116_push50_conv2d3x381_out_feedback_valid_out_50),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist15_sync_together243_aunroll_x_in_c0_eni46_15_tpl_1(DELAY,381)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist15_sync_together243_aunroll_x_in_c0_eni46_15_tpl_1_q <= '0;
        end
        else
        begin
            redist15_sync_together243_aunroll_x_in_c0_eni46_15_tpl_1_q <= $unsigned(in_c0_eni46_15_tpl);
        end
    end

    // i_llvm_fpga_pop_i32_mul56116_pop50_conv2d3x380(BLACKBOX,131)@2
    // out out_feedback_stall_out_50@20000000
    conv2d3x3_i_llvm_fpga_pop_i32_mul56116_pop50_0 thei_llvm_fpga_pop_i32_mul56116_pop50_conv2d3x380 (
        .in_data_in(redist15_sync_together243_aunroll_x_in_c0_eni46_15_tpl_1_q),
        .in_dir(i_llvm_fpga_fanout_i1_c0_ene1671_fanout_adaptor_conv2d3x33_q),
        .in_feedback_in_50(i_llvm_fpga_push_i32_mul56116_push50_conv2d3x381_out_feedback_out_50),
        .in_feedback_valid_in_50(i_llvm_fpga_push_i32_mul56116_push50_conv2d3x381_out_feedback_valid_out_50),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg32_q),
        .out_data_out(i_llvm_fpga_pop_i32_mul56116_pop50_conv2d3x380_out_data_out),
        .out_feedback_stall_out_50(i_llvm_fpga_pop_i32_mul56116_pop50_conv2d3x380_out_feedback_stall_out_50),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist70_i_llvm_fpga_pop_i32_mul56116_pop50_conv2d3x380_out_data_out_3_wraddr(REG,669)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist70_i_llvm_fpga_pop_i32_mul56116_pop50_conv2d3x380_out_data_out_3_wraddr_q <= $unsigned(1'b1);
        end
        else
        begin
            redist70_i_llvm_fpga_pop_i32_mul56116_pop50_conv2d3x380_out_data_out_3_wraddr_q <= $unsigned(redist70_i_llvm_fpga_pop_i32_mul56116_pop50_conv2d3x380_out_data_out_3_rdcnt_q);
        end
    end

    // redist70_i_llvm_fpga_pop_i32_mul56116_pop50_conv2d3x380_out_data_out_3_mem(DUALMEM,667)
    assign redist70_i_llvm_fpga_pop_i32_mul56116_pop50_conv2d3x380_out_data_out_3_mem_ia = $unsigned(i_llvm_fpga_pop_i32_mul56116_pop50_conv2d3x380_out_data_out);
    assign redist70_i_llvm_fpga_pop_i32_mul56116_pop50_conv2d3x380_out_data_out_3_mem_aa = redist70_i_llvm_fpga_pop_i32_mul56116_pop50_conv2d3x380_out_data_out_3_wraddr_q;
    assign redist70_i_llvm_fpga_pop_i32_mul56116_pop50_conv2d3x380_out_data_out_3_mem_ab = redist70_i_llvm_fpga_pop_i32_mul56116_pop50_conv2d3x380_out_data_out_3_rdcnt_q;
    assign redist70_i_llvm_fpga_pop_i32_mul56116_pop50_conv2d3x380_out_data_out_3_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(1),
        .numwords_a(2),
        .width_b(32),
        .widthad_b(1),
        .numwords_b(2),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .address_reg_b("CLOCK0"),
        .indata_reg_b("CLOCK0"),
        .rdcontrol_reg_b("CLOCK0"),
        .byteena_reg_b("CLOCK0"),
        .outdata_reg_b("CLOCK1"),
        .outdata_aclr_b("CLEAR1"),
        .clock_enable_input_a("NORMAL"),
        .clock_enable_input_b("NORMAL"),
        .clock_enable_output_b("NORMAL"),
        .read_during_write_mode_mixed_ports("DONT_CARE"),
        .power_up_uninitialized("TRUE"),
        .intended_device_family("Arria 10")
    ) redist70_i_llvm_fpga_pop_i32_mul56116_pop50_conv2d3x380_out_data_out_3_mem_dmem (
        .clocken1(redist70_i_llvm_fpga_pop_i32_mul56116_pop50_conv2d3x380_out_data_out_3_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist70_i_llvm_fpga_pop_i32_mul56116_pop50_conv2d3x380_out_data_out_3_mem_reset0),
        .clock1(clock),
        .address_a(redist70_i_llvm_fpga_pop_i32_mul56116_pop50_conv2d3x380_out_data_out_3_mem_aa),
        .data_a(redist70_i_llvm_fpga_pop_i32_mul56116_pop50_conv2d3x380_out_data_out_3_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist70_i_llvm_fpga_pop_i32_mul56116_pop50_conv2d3x380_out_data_out_3_mem_ab),
        .q_b(redist70_i_llvm_fpga_pop_i32_mul56116_pop50_conv2d3x380_out_data_out_3_mem_iq),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_b(),
        .clocken2(),
        .clocken3(),
        .aclr0(),
        .addressstall_a(),
        .addressstall_b(),
        .byteena_a(),
        .byteena_b(),
        .eccencbypass(),
        .eccencparity(),
        .sclr(),
        .address2_a(),
        .address2_b(),
        .q_a(),
        .eccstatus()
    );
    assign redist70_i_llvm_fpga_pop_i32_mul56116_pop50_conv2d3x380_out_data_out_3_mem_q = redist70_i_llvm_fpga_pop_i32_mul56116_pop50_conv2d3x380_out_data_out_3_mem_iq[31:0];

    // redist71_i_llvm_fpga_pop_i32_mul56116_pop50_conv2d3x380_out_data_out_6_wraddr(REG,677)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist71_i_llvm_fpga_pop_i32_mul56116_pop50_conv2d3x380_out_data_out_6_wraddr_q <= $unsigned(1'b1);
        end
        else
        begin
            redist71_i_llvm_fpga_pop_i32_mul56116_pop50_conv2d3x380_out_data_out_6_wraddr_q <= $unsigned(redist71_i_llvm_fpga_pop_i32_mul56116_pop50_conv2d3x380_out_data_out_6_rdcnt_q);
        end
    end

    // redist71_i_llvm_fpga_pop_i32_mul56116_pop50_conv2d3x380_out_data_out_6_mem(DUALMEM,675)
    assign redist71_i_llvm_fpga_pop_i32_mul56116_pop50_conv2d3x380_out_data_out_6_mem_ia = $unsigned(redist70_i_llvm_fpga_pop_i32_mul56116_pop50_conv2d3x380_out_data_out_3_mem_q);
    assign redist71_i_llvm_fpga_pop_i32_mul56116_pop50_conv2d3x380_out_data_out_6_mem_aa = redist71_i_llvm_fpga_pop_i32_mul56116_pop50_conv2d3x380_out_data_out_6_wraddr_q;
    assign redist71_i_llvm_fpga_pop_i32_mul56116_pop50_conv2d3x380_out_data_out_6_mem_ab = redist71_i_llvm_fpga_pop_i32_mul56116_pop50_conv2d3x380_out_data_out_6_rdcnt_q;
    assign redist71_i_llvm_fpga_pop_i32_mul56116_pop50_conv2d3x380_out_data_out_6_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(1),
        .numwords_a(2),
        .width_b(32),
        .widthad_b(1),
        .numwords_b(2),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .address_reg_b("CLOCK0"),
        .indata_reg_b("CLOCK0"),
        .rdcontrol_reg_b("CLOCK0"),
        .byteena_reg_b("CLOCK0"),
        .outdata_reg_b("CLOCK1"),
        .outdata_aclr_b("CLEAR1"),
        .clock_enable_input_a("NORMAL"),
        .clock_enable_input_b("NORMAL"),
        .clock_enable_output_b("NORMAL"),
        .read_during_write_mode_mixed_ports("DONT_CARE"),
        .power_up_uninitialized("TRUE"),
        .intended_device_family("Arria 10")
    ) redist71_i_llvm_fpga_pop_i32_mul56116_pop50_conv2d3x380_out_data_out_6_mem_dmem (
        .clocken1(redist71_i_llvm_fpga_pop_i32_mul56116_pop50_conv2d3x380_out_data_out_6_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist71_i_llvm_fpga_pop_i32_mul56116_pop50_conv2d3x380_out_data_out_6_mem_reset0),
        .clock1(clock),
        .address_a(redist71_i_llvm_fpga_pop_i32_mul56116_pop50_conv2d3x380_out_data_out_6_mem_aa),
        .data_a(redist71_i_llvm_fpga_pop_i32_mul56116_pop50_conv2d3x380_out_data_out_6_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist71_i_llvm_fpga_pop_i32_mul56116_pop50_conv2d3x380_out_data_out_6_mem_ab),
        .q_b(redist71_i_llvm_fpga_pop_i32_mul56116_pop50_conv2d3x380_out_data_out_6_mem_iq),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_b(),
        .clocken2(),
        .clocken3(),
        .aclr0(),
        .addressstall_a(),
        .addressstall_b(),
        .byteena_a(),
        .byteena_b(),
        .eccencbypass(),
        .eccencparity(),
        .sclr(),
        .address2_a(),
        .address2_b(),
        .q_a(),
        .eccstatus()
    );
    assign redist71_i_llvm_fpga_pop_i32_mul56116_pop50_conv2d3x380_out_data_out_6_mem_q = redist71_i_llvm_fpga_pop_i32_mul56116_pop50_conv2d3x380_out_data_out_6_mem_iq[31:0];

    // redist84_i_llvm_fpga_pop_i32_add111_pop49_conv2d3x378_out_data_out_6_notEnable(LOGICAL,752)
    assign redist84_i_llvm_fpga_pop_i32_add111_pop49_conv2d3x378_out_data_out_6_notEnable_q = $unsigned(~ (VCC_q));

    // redist84_i_llvm_fpga_pop_i32_add111_pop49_conv2d3x378_out_data_out_6_nor(LOGICAL,753)
    assign redist84_i_llvm_fpga_pop_i32_add111_pop49_conv2d3x378_out_data_out_6_nor_q = ~ (redist84_i_llvm_fpga_pop_i32_add111_pop49_conv2d3x378_out_data_out_6_notEnable_q | redist84_i_llvm_fpga_pop_i32_add111_pop49_conv2d3x378_out_data_out_6_sticky_ena_q);

    // redist84_i_llvm_fpga_pop_i32_add111_pop49_conv2d3x378_out_data_out_6_cmpReg(REG,751)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist84_i_llvm_fpga_pop_i32_add111_pop49_conv2d3x378_out_data_out_6_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist84_i_llvm_fpga_pop_i32_add111_pop49_conv2d3x378_out_data_out_6_cmpReg_q <= $unsigned(VCC_q);
        end
    end

    // redist84_i_llvm_fpga_pop_i32_add111_pop49_conv2d3x378_out_data_out_6_sticky_ena(REG,754)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist84_i_llvm_fpga_pop_i32_add111_pop49_conv2d3x378_out_data_out_6_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist84_i_llvm_fpga_pop_i32_add111_pop49_conv2d3x378_out_data_out_6_nor_q == 1'b1)
        begin
            redist84_i_llvm_fpga_pop_i32_add111_pop49_conv2d3x378_out_data_out_6_sticky_ena_q <= $unsigned(redist84_i_llvm_fpga_pop_i32_add111_pop49_conv2d3x378_out_data_out_6_cmpReg_q);
        end
    end

    // redist84_i_llvm_fpga_pop_i32_add111_pop49_conv2d3x378_out_data_out_6_enaAnd(LOGICAL,755)
    assign redist84_i_llvm_fpga_pop_i32_add111_pop49_conv2d3x378_out_data_out_6_enaAnd_q = redist84_i_llvm_fpga_pop_i32_add111_pop49_conv2d3x378_out_data_out_6_sticky_ena_q & VCC_q;

    // redist84_i_llvm_fpga_pop_i32_add111_pop49_conv2d3x378_out_data_out_6_rdcnt(COUNTER,749)
    // low=0, high=1, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist84_i_llvm_fpga_pop_i32_add111_pop49_conv2d3x378_out_data_out_6_rdcnt_i <= 1'd0;
        end
        else
        begin
            redist84_i_llvm_fpga_pop_i32_add111_pop49_conv2d3x378_out_data_out_6_rdcnt_i <= $unsigned(redist84_i_llvm_fpga_pop_i32_add111_pop49_conv2d3x378_out_data_out_6_rdcnt_i) + $unsigned(1'd1);
        end
    end
    assign redist84_i_llvm_fpga_pop_i32_add111_pop49_conv2d3x378_out_data_out_6_rdcnt_q = redist84_i_llvm_fpga_pop_i32_add111_pop49_conv2d3x378_out_data_out_6_rdcnt_i[0:0];

    // redist83_i_llvm_fpga_pop_i32_add111_pop49_conv2d3x378_out_data_out_3_notEnable(LOGICAL,744)
    assign redist83_i_llvm_fpga_pop_i32_add111_pop49_conv2d3x378_out_data_out_3_notEnable_q = $unsigned(~ (VCC_q));

    // redist83_i_llvm_fpga_pop_i32_add111_pop49_conv2d3x378_out_data_out_3_nor(LOGICAL,745)
    assign redist83_i_llvm_fpga_pop_i32_add111_pop49_conv2d3x378_out_data_out_3_nor_q = ~ (redist83_i_llvm_fpga_pop_i32_add111_pop49_conv2d3x378_out_data_out_3_notEnable_q | redist83_i_llvm_fpga_pop_i32_add111_pop49_conv2d3x378_out_data_out_3_sticky_ena_q);

    // redist83_i_llvm_fpga_pop_i32_add111_pop49_conv2d3x378_out_data_out_3_cmpReg(REG,743)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist83_i_llvm_fpga_pop_i32_add111_pop49_conv2d3x378_out_data_out_3_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist83_i_llvm_fpga_pop_i32_add111_pop49_conv2d3x378_out_data_out_3_cmpReg_q <= $unsigned(VCC_q);
        end
    end

    // redist83_i_llvm_fpga_pop_i32_add111_pop49_conv2d3x378_out_data_out_3_sticky_ena(REG,746)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist83_i_llvm_fpga_pop_i32_add111_pop49_conv2d3x378_out_data_out_3_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist83_i_llvm_fpga_pop_i32_add111_pop49_conv2d3x378_out_data_out_3_nor_q == 1'b1)
        begin
            redist83_i_llvm_fpga_pop_i32_add111_pop49_conv2d3x378_out_data_out_3_sticky_ena_q <= $unsigned(redist83_i_llvm_fpga_pop_i32_add111_pop49_conv2d3x378_out_data_out_3_cmpReg_q);
        end
    end

    // redist83_i_llvm_fpga_pop_i32_add111_pop49_conv2d3x378_out_data_out_3_enaAnd(LOGICAL,747)
    assign redist83_i_llvm_fpga_pop_i32_add111_pop49_conv2d3x378_out_data_out_3_enaAnd_q = redist83_i_llvm_fpga_pop_i32_add111_pop49_conv2d3x378_out_data_out_3_sticky_ena_q & VCC_q;

    // redist83_i_llvm_fpga_pop_i32_add111_pop49_conv2d3x378_out_data_out_3_rdcnt(COUNTER,741)
    // low=0, high=1, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist83_i_llvm_fpga_pop_i32_add111_pop49_conv2d3x378_out_data_out_3_rdcnt_i <= 1'd0;
        end
        else
        begin
            redist83_i_llvm_fpga_pop_i32_add111_pop49_conv2d3x378_out_data_out_3_rdcnt_i <= $unsigned(redist83_i_llvm_fpga_pop_i32_add111_pop49_conv2d3x378_out_data_out_3_rdcnt_i) + $unsigned(1'd1);
        end
    end
    assign redist83_i_llvm_fpga_pop_i32_add111_pop49_conv2d3x378_out_data_out_3_rdcnt_q = redist83_i_llvm_fpga_pop_i32_add111_pop49_conv2d3x378_out_data_out_3_rdcnt_i[0:0];

    // valid_fanout_reg30(REG,274)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg30_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg30_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg31(REG,275)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg31_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg31_q <= $unsigned(redist48_sync_together243_aunroll_x_in_i_valid_3_q);
        end
    end

    // i_llvm_fpga_push_i32_add111_push49_conv2d3x379(BLACKBOX,155)@5
    // out out_feedback_out_49@20000000
    // out out_feedback_valid_out_49@20000000
    conv2d3x3_i_llvm_fpga_push_i32_add111_push49_0 thei_llvm_fpga_push_i32_add111_push49_conv2d3x379 (
        .in_data_in(redist83_i_llvm_fpga_pop_i32_add111_pop49_conv2d3x378_out_data_out_3_mem_q),
        .in_feedback_stall_in_49(i_llvm_fpga_pop_i32_add111_pop49_conv2d3x378_out_feedback_stall_out_49),
        .in_keep_going60_fanout_adaptor(i_llvm_fpga_fanout_i1_keep_going60_fanout_adaptor_conv2d3x310_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg31_q),
        .out_data_out(),
        .out_feedback_out_49(i_llvm_fpga_push_i32_add111_push49_conv2d3x379_out_feedback_out_49),
        .out_feedback_valid_out_49(i_llvm_fpga_push_i32_add111_push49_conv2d3x379_out_feedback_valid_out_49),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist14_sync_together243_aunroll_x_in_c0_eni46_14_tpl_1(DELAY,380)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_sync_together243_aunroll_x_in_c0_eni46_14_tpl_1_q <= '0;
        end
        else
        begin
            redist14_sync_together243_aunroll_x_in_c0_eni46_14_tpl_1_q <= $unsigned(in_c0_eni46_14_tpl);
        end
    end

    // i_llvm_fpga_pop_i32_add111_pop49_conv2d3x378(BLACKBOX,124)@2
    // out out_feedback_stall_out_49@20000000
    conv2d3x3_i_llvm_fpga_pop_i32_add111_pop49_0 thei_llvm_fpga_pop_i32_add111_pop49_conv2d3x378 (
        .in_data_in(redist14_sync_together243_aunroll_x_in_c0_eni46_14_tpl_1_q),
        .in_dir(i_llvm_fpga_fanout_i1_c0_ene1671_fanout_adaptor_conv2d3x33_q),
        .in_feedback_in_49(i_llvm_fpga_push_i32_add111_push49_conv2d3x379_out_feedback_out_49),
        .in_feedback_valid_in_49(i_llvm_fpga_push_i32_add111_push49_conv2d3x379_out_feedback_valid_out_49),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg30_q),
        .out_data_out(i_llvm_fpga_pop_i32_add111_pop49_conv2d3x378_out_data_out),
        .out_feedback_stall_out_49(i_llvm_fpga_pop_i32_add111_pop49_conv2d3x378_out_feedback_stall_out_49),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist83_i_llvm_fpga_pop_i32_add111_pop49_conv2d3x378_out_data_out_3_wraddr(REG,742)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist83_i_llvm_fpga_pop_i32_add111_pop49_conv2d3x378_out_data_out_3_wraddr_q <= $unsigned(1'b1);
        end
        else
        begin
            redist83_i_llvm_fpga_pop_i32_add111_pop49_conv2d3x378_out_data_out_3_wraddr_q <= $unsigned(redist83_i_llvm_fpga_pop_i32_add111_pop49_conv2d3x378_out_data_out_3_rdcnt_q);
        end
    end

    // redist83_i_llvm_fpga_pop_i32_add111_pop49_conv2d3x378_out_data_out_3_mem(DUALMEM,740)
    assign redist83_i_llvm_fpga_pop_i32_add111_pop49_conv2d3x378_out_data_out_3_mem_ia = $unsigned(i_llvm_fpga_pop_i32_add111_pop49_conv2d3x378_out_data_out);
    assign redist83_i_llvm_fpga_pop_i32_add111_pop49_conv2d3x378_out_data_out_3_mem_aa = redist83_i_llvm_fpga_pop_i32_add111_pop49_conv2d3x378_out_data_out_3_wraddr_q;
    assign redist83_i_llvm_fpga_pop_i32_add111_pop49_conv2d3x378_out_data_out_3_mem_ab = redist83_i_llvm_fpga_pop_i32_add111_pop49_conv2d3x378_out_data_out_3_rdcnt_q;
    assign redist83_i_llvm_fpga_pop_i32_add111_pop49_conv2d3x378_out_data_out_3_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(1),
        .numwords_a(2),
        .width_b(32),
        .widthad_b(1),
        .numwords_b(2),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .address_reg_b("CLOCK0"),
        .indata_reg_b("CLOCK0"),
        .rdcontrol_reg_b("CLOCK0"),
        .byteena_reg_b("CLOCK0"),
        .outdata_reg_b("CLOCK1"),
        .outdata_aclr_b("CLEAR1"),
        .clock_enable_input_a("NORMAL"),
        .clock_enable_input_b("NORMAL"),
        .clock_enable_output_b("NORMAL"),
        .read_during_write_mode_mixed_ports("DONT_CARE"),
        .power_up_uninitialized("TRUE"),
        .intended_device_family("Arria 10")
    ) redist83_i_llvm_fpga_pop_i32_add111_pop49_conv2d3x378_out_data_out_3_mem_dmem (
        .clocken1(redist83_i_llvm_fpga_pop_i32_add111_pop49_conv2d3x378_out_data_out_3_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist83_i_llvm_fpga_pop_i32_add111_pop49_conv2d3x378_out_data_out_3_mem_reset0),
        .clock1(clock),
        .address_a(redist83_i_llvm_fpga_pop_i32_add111_pop49_conv2d3x378_out_data_out_3_mem_aa),
        .data_a(redist83_i_llvm_fpga_pop_i32_add111_pop49_conv2d3x378_out_data_out_3_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist83_i_llvm_fpga_pop_i32_add111_pop49_conv2d3x378_out_data_out_3_mem_ab),
        .q_b(redist83_i_llvm_fpga_pop_i32_add111_pop49_conv2d3x378_out_data_out_3_mem_iq),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_b(),
        .clocken2(),
        .clocken3(),
        .aclr0(),
        .addressstall_a(),
        .addressstall_b(),
        .byteena_a(),
        .byteena_b(),
        .eccencbypass(),
        .eccencparity(),
        .sclr(),
        .address2_a(),
        .address2_b(),
        .q_a(),
        .eccstatus()
    );
    assign redist83_i_llvm_fpga_pop_i32_add111_pop49_conv2d3x378_out_data_out_3_mem_q = redist83_i_llvm_fpga_pop_i32_add111_pop49_conv2d3x378_out_data_out_3_mem_iq[31:0];

    // redist84_i_llvm_fpga_pop_i32_add111_pop49_conv2d3x378_out_data_out_6_wraddr(REG,750)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist84_i_llvm_fpga_pop_i32_add111_pop49_conv2d3x378_out_data_out_6_wraddr_q <= $unsigned(1'b1);
        end
        else
        begin
            redist84_i_llvm_fpga_pop_i32_add111_pop49_conv2d3x378_out_data_out_6_wraddr_q <= $unsigned(redist84_i_llvm_fpga_pop_i32_add111_pop49_conv2d3x378_out_data_out_6_rdcnt_q);
        end
    end

    // redist84_i_llvm_fpga_pop_i32_add111_pop49_conv2d3x378_out_data_out_6_mem(DUALMEM,748)
    assign redist84_i_llvm_fpga_pop_i32_add111_pop49_conv2d3x378_out_data_out_6_mem_ia = $unsigned(redist83_i_llvm_fpga_pop_i32_add111_pop49_conv2d3x378_out_data_out_3_mem_q);
    assign redist84_i_llvm_fpga_pop_i32_add111_pop49_conv2d3x378_out_data_out_6_mem_aa = redist84_i_llvm_fpga_pop_i32_add111_pop49_conv2d3x378_out_data_out_6_wraddr_q;
    assign redist84_i_llvm_fpga_pop_i32_add111_pop49_conv2d3x378_out_data_out_6_mem_ab = redist84_i_llvm_fpga_pop_i32_add111_pop49_conv2d3x378_out_data_out_6_rdcnt_q;
    assign redist84_i_llvm_fpga_pop_i32_add111_pop49_conv2d3x378_out_data_out_6_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(1),
        .numwords_a(2),
        .width_b(32),
        .widthad_b(1),
        .numwords_b(2),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .address_reg_b("CLOCK0"),
        .indata_reg_b("CLOCK0"),
        .rdcontrol_reg_b("CLOCK0"),
        .byteena_reg_b("CLOCK0"),
        .outdata_reg_b("CLOCK1"),
        .outdata_aclr_b("CLEAR1"),
        .clock_enable_input_a("NORMAL"),
        .clock_enable_input_b("NORMAL"),
        .clock_enable_output_b("NORMAL"),
        .read_during_write_mode_mixed_ports("DONT_CARE"),
        .power_up_uninitialized("TRUE"),
        .intended_device_family("Arria 10")
    ) redist84_i_llvm_fpga_pop_i32_add111_pop49_conv2d3x378_out_data_out_6_mem_dmem (
        .clocken1(redist84_i_llvm_fpga_pop_i32_add111_pop49_conv2d3x378_out_data_out_6_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist84_i_llvm_fpga_pop_i32_add111_pop49_conv2d3x378_out_data_out_6_mem_reset0),
        .clock1(clock),
        .address_a(redist84_i_llvm_fpga_pop_i32_add111_pop49_conv2d3x378_out_data_out_6_mem_aa),
        .data_a(redist84_i_llvm_fpga_pop_i32_add111_pop49_conv2d3x378_out_data_out_6_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist84_i_llvm_fpga_pop_i32_add111_pop49_conv2d3x378_out_data_out_6_mem_ab),
        .q_b(redist84_i_llvm_fpga_pop_i32_add111_pop49_conv2d3x378_out_data_out_6_mem_iq),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_b(),
        .clocken2(),
        .clocken3(),
        .aclr0(),
        .addressstall_a(),
        .addressstall_b(),
        .byteena_a(),
        .byteena_b(),
        .eccencbypass(),
        .eccencparity(),
        .sclr(),
        .address2_a(),
        .address2_b(),
        .q_a(),
        .eccstatus()
    );
    assign redist84_i_llvm_fpga_pop_i32_add111_pop49_conv2d3x378_out_data_out_6_mem_q = redist84_i_llvm_fpga_pop_i32_add111_pop49_conv2d3x378_out_data_out_6_mem_iq[31:0];

    // valid_fanout_reg28(REG,272)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg28_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg28_q <= $unsigned(redist48_sync_together243_aunroll_x_in_i_valid_3_q);
        end
    end

    // valid_fanout_reg29(REG,273)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg29_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg29_q <= $unsigned(redist48_sync_together243_aunroll_x_in_i_valid_3_q);
        end
    end

    // i_llvm_fpga_push_i1_notcmp81106_push48_conv2d3x377(BLACKBOX,149)@5
    // out out_feedback_out_48@20000000
    // out out_feedback_valid_out_48@20000000
    conv2d3x3_i_llvm_fpga_push_i1_notcmp81106_push48_0 thei_llvm_fpga_push_i1_notcmp81106_push48_conv2d3x377 (
        .in_data_in(i_llvm_fpga_pop_i1_notcmp81106_pop48_conv2d3x376_out_data_out),
        .in_feedback_stall_in_48(i_llvm_fpga_pop_i1_notcmp81106_pop48_conv2d3x376_out_feedback_stall_out_48),
        .in_keep_going60_fanout_adaptor(i_llvm_fpga_fanout_i1_keep_going60_fanout_adaptor_conv2d3x310_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg29_q),
        .out_data_out(),
        .out_feedback_out_48(i_llvm_fpga_push_i1_notcmp81106_push48_conv2d3x377_out_feedback_out_48),
        .out_feedback_valid_out_48(i_llvm_fpga_push_i1_notcmp81106_push48_conv2d3x377_out_feedback_valid_out_48),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist13_sync_together243_aunroll_x_in_c0_eni46_13_tpl_4(DELAY,379)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_sync_together243_aunroll_x_in_c0_eni46_13_tpl_4_delay_0 <= '0;
            redist13_sync_together243_aunroll_x_in_c0_eni46_13_tpl_4_delay_1 <= '0;
            redist13_sync_together243_aunroll_x_in_c0_eni46_13_tpl_4_delay_2 <= '0;
            redist13_sync_together243_aunroll_x_in_c0_eni46_13_tpl_4_q <= '0;
        end
        else
        begin
            redist13_sync_together243_aunroll_x_in_c0_eni46_13_tpl_4_delay_0 <= $unsigned(in_c0_eni46_13_tpl);
            redist13_sync_together243_aunroll_x_in_c0_eni46_13_tpl_4_delay_1 <= redist13_sync_together243_aunroll_x_in_c0_eni46_13_tpl_4_delay_0;
            redist13_sync_together243_aunroll_x_in_c0_eni46_13_tpl_4_delay_2 <= redist13_sync_together243_aunroll_x_in_c0_eni46_13_tpl_4_delay_1;
            redist13_sync_together243_aunroll_x_in_c0_eni46_13_tpl_4_q <= redist13_sync_together243_aunroll_x_in_c0_eni46_13_tpl_4_delay_2;
        end
    end

    // i_llvm_fpga_pop_i1_notcmp81106_pop48_conv2d3x376(BLACKBOX,119)@5
    // out out_feedback_stall_out_48@20000000
    conv2d3x3_i_llvm_fpga_pop_i1_notcmp81106_pop48_0 thei_llvm_fpga_pop_i1_notcmp81106_pop48_conv2d3x376 (
        .in_data_in(redist13_sync_together243_aunroll_x_in_c0_eni46_13_tpl_4_q),
        .in_dir(redist100_i_llvm_fpga_fanout_i1_c0_ene1671_fanout_adaptor_conv2d3x33_q_3_q),
        .in_feedback_in_48(i_llvm_fpga_push_i1_notcmp81106_push48_conv2d3x377_out_feedback_out_48),
        .in_feedback_valid_in_48(i_llvm_fpga_push_i1_notcmp81106_push48_conv2d3x377_out_feedback_valid_out_48),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg28_q),
        .out_data_out(i_llvm_fpga_pop_i1_notcmp81106_pop48_conv2d3x376_out_data_out),
        .out_feedback_stall_out_48(i_llvm_fpga_pop_i1_notcmp81106_pop48_conv2d3x376_out_feedback_stall_out_48),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist87_i_llvm_fpga_pop_i1_notcmp81106_pop48_conv2d3x376_out_data_out_3(DELAY,453)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist87_i_llvm_fpga_pop_i1_notcmp81106_pop48_conv2d3x376_out_data_out_3_delay_0 <= '0;
            redist87_i_llvm_fpga_pop_i1_notcmp81106_pop48_conv2d3x376_out_data_out_3_delay_1 <= '0;
            redist87_i_llvm_fpga_pop_i1_notcmp81106_pop48_conv2d3x376_out_data_out_3_q <= '0;
        end
        else
        begin
            redist87_i_llvm_fpga_pop_i1_notcmp81106_pop48_conv2d3x376_out_data_out_3_delay_0 <= $unsigned(i_llvm_fpga_pop_i1_notcmp81106_pop48_conv2d3x376_out_data_out);
            redist87_i_llvm_fpga_pop_i1_notcmp81106_pop48_conv2d3x376_out_data_out_3_delay_1 <= redist87_i_llvm_fpga_pop_i1_notcmp81106_pop48_conv2d3x376_out_data_out_3_delay_0;
            redist87_i_llvm_fpga_pop_i1_notcmp81106_pop48_conv2d3x376_out_data_out_3_q <= redist87_i_llvm_fpga_pop_i1_notcmp81106_pop48_conv2d3x376_out_data_out_3_delay_1;
        end
    end

    // redist97_i_llvm_fpga_pop_f32_lm25100_pop47_conv2d3x374_out_data_out_3_notEnable(LOGICAL,760)
    assign redist97_i_llvm_fpga_pop_f32_lm25100_pop47_conv2d3x374_out_data_out_3_notEnable_q = $unsigned(~ (VCC_q));

    // redist97_i_llvm_fpga_pop_f32_lm25100_pop47_conv2d3x374_out_data_out_3_nor(LOGICAL,761)
    assign redist97_i_llvm_fpga_pop_f32_lm25100_pop47_conv2d3x374_out_data_out_3_nor_q = ~ (redist97_i_llvm_fpga_pop_f32_lm25100_pop47_conv2d3x374_out_data_out_3_notEnable_q | redist97_i_llvm_fpga_pop_f32_lm25100_pop47_conv2d3x374_out_data_out_3_sticky_ena_q);

    // redist97_i_llvm_fpga_pop_f32_lm25100_pop47_conv2d3x374_out_data_out_3_cmpReg(REG,759)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist97_i_llvm_fpga_pop_f32_lm25100_pop47_conv2d3x374_out_data_out_3_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist97_i_llvm_fpga_pop_f32_lm25100_pop47_conv2d3x374_out_data_out_3_cmpReg_q <= $unsigned(VCC_q);
        end
    end

    // redist97_i_llvm_fpga_pop_f32_lm25100_pop47_conv2d3x374_out_data_out_3_sticky_ena(REG,762)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist97_i_llvm_fpga_pop_f32_lm25100_pop47_conv2d3x374_out_data_out_3_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist97_i_llvm_fpga_pop_f32_lm25100_pop47_conv2d3x374_out_data_out_3_nor_q == 1'b1)
        begin
            redist97_i_llvm_fpga_pop_f32_lm25100_pop47_conv2d3x374_out_data_out_3_sticky_ena_q <= $unsigned(redist97_i_llvm_fpga_pop_f32_lm25100_pop47_conv2d3x374_out_data_out_3_cmpReg_q);
        end
    end

    // redist97_i_llvm_fpga_pop_f32_lm25100_pop47_conv2d3x374_out_data_out_3_enaAnd(LOGICAL,763)
    assign redist97_i_llvm_fpga_pop_f32_lm25100_pop47_conv2d3x374_out_data_out_3_enaAnd_q = redist97_i_llvm_fpga_pop_f32_lm25100_pop47_conv2d3x374_out_data_out_3_sticky_ena_q & VCC_q;

    // redist97_i_llvm_fpga_pop_f32_lm25100_pop47_conv2d3x374_out_data_out_3_rdcnt(COUNTER,757)
    // low=0, high=1, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist97_i_llvm_fpga_pop_f32_lm25100_pop47_conv2d3x374_out_data_out_3_rdcnt_i <= 1'd0;
        end
        else
        begin
            redist97_i_llvm_fpga_pop_f32_lm25100_pop47_conv2d3x374_out_data_out_3_rdcnt_i <= $unsigned(redist97_i_llvm_fpga_pop_f32_lm25100_pop47_conv2d3x374_out_data_out_3_rdcnt_i) + $unsigned(1'd1);
        end
    end
    assign redist97_i_llvm_fpga_pop_f32_lm25100_pop47_conv2d3x374_out_data_out_3_rdcnt_q = redist97_i_llvm_fpga_pop_f32_lm25100_pop47_conv2d3x374_out_data_out_3_rdcnt_i[0:0];

    // valid_fanout_reg26(REG,270)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg26_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg26_q <= $unsigned(redist48_sync_together243_aunroll_x_in_i_valid_3_q);
        end
    end

    // valid_fanout_reg27(REG,271)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg27_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg27_q <= $unsigned(redist48_sync_together243_aunroll_x_in_i_valid_3_q);
        end
    end

    // i_llvm_fpga_push_f32_lm25100_push47_conv2d3x375(BLACKBOX,139)@5
    // out out_feedback_out_47@20000000
    // out out_feedback_valid_out_47@20000000
    conv2d3x3_i_llvm_fpga_push_f32_lm25100_push47_0 thei_llvm_fpga_push_f32_lm25100_push47_conv2d3x375 (
        .in_data_in(i_llvm_fpga_pop_f32_lm25100_pop47_conv2d3x374_out_data_out),
        .in_feedback_stall_in_47(i_llvm_fpga_pop_f32_lm25100_pop47_conv2d3x374_out_feedback_stall_out_47),
        .in_keep_going60_fanout_adaptor(i_llvm_fpga_fanout_i1_keep_going60_fanout_adaptor_conv2d3x310_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg27_q),
        .out_data_out(),
        .out_feedback_out_47(i_llvm_fpga_push_f32_lm25100_push47_conv2d3x375_out_feedback_out_47),
        .out_feedback_valid_out_47(i_llvm_fpga_push_f32_lm25100_push47_conv2d3x375_out_feedback_valid_out_47),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist12_sync_together243_aunroll_x_in_c0_eni46_12_tpl_4_notEnable(LOGICAL,484)
    assign redist12_sync_together243_aunroll_x_in_c0_eni46_12_tpl_4_notEnable_q = $unsigned(~ (VCC_q));

    // redist12_sync_together243_aunroll_x_in_c0_eni46_12_tpl_4_nor(LOGICAL,485)
    assign redist12_sync_together243_aunroll_x_in_c0_eni46_12_tpl_4_nor_q = ~ (redist12_sync_together243_aunroll_x_in_c0_eni46_12_tpl_4_notEnable_q | redist12_sync_together243_aunroll_x_in_c0_eni46_12_tpl_4_sticky_ena_q);

    // redist12_sync_together243_aunroll_x_in_c0_eni46_12_tpl_4_mem_last(CONSTANT,481)
    assign redist12_sync_together243_aunroll_x_in_c0_eni46_12_tpl_4_mem_last_q = $unsigned(2'b01);

    // redist12_sync_together243_aunroll_x_in_c0_eni46_12_tpl_4_cmp(LOGICAL,482)
    assign redist12_sync_together243_aunroll_x_in_c0_eni46_12_tpl_4_cmp_q = $unsigned(redist12_sync_together243_aunroll_x_in_c0_eni46_12_tpl_4_mem_last_q == redist12_sync_together243_aunroll_x_in_c0_eni46_12_tpl_4_rdcnt_q ? 1'b1 : 1'b0);

    // redist12_sync_together243_aunroll_x_in_c0_eni46_12_tpl_4_cmpReg(REG,483)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_sync_together243_aunroll_x_in_c0_eni46_12_tpl_4_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist12_sync_together243_aunroll_x_in_c0_eni46_12_tpl_4_cmpReg_q <= $unsigned(redist12_sync_together243_aunroll_x_in_c0_eni46_12_tpl_4_cmp_q);
        end
    end

    // redist12_sync_together243_aunroll_x_in_c0_eni46_12_tpl_4_sticky_ena(REG,486)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_sync_together243_aunroll_x_in_c0_eni46_12_tpl_4_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist12_sync_together243_aunroll_x_in_c0_eni46_12_tpl_4_nor_q == 1'b1)
        begin
            redist12_sync_together243_aunroll_x_in_c0_eni46_12_tpl_4_sticky_ena_q <= $unsigned(redist12_sync_together243_aunroll_x_in_c0_eni46_12_tpl_4_cmpReg_q);
        end
    end

    // redist12_sync_together243_aunroll_x_in_c0_eni46_12_tpl_4_enaAnd(LOGICAL,487)
    assign redist12_sync_together243_aunroll_x_in_c0_eni46_12_tpl_4_enaAnd_q = redist12_sync_together243_aunroll_x_in_c0_eni46_12_tpl_4_sticky_ena_q & VCC_q;

    // redist12_sync_together243_aunroll_x_in_c0_eni46_12_tpl_4_rdcnt(COUNTER,479)
    // low=0, high=2, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_sync_together243_aunroll_x_in_c0_eni46_12_tpl_4_rdcnt_i <= 2'd0;
            redist12_sync_together243_aunroll_x_in_c0_eni46_12_tpl_4_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist12_sync_together243_aunroll_x_in_c0_eni46_12_tpl_4_rdcnt_i == 2'd1)
            begin
                redist12_sync_together243_aunroll_x_in_c0_eni46_12_tpl_4_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist12_sync_together243_aunroll_x_in_c0_eni46_12_tpl_4_rdcnt_eq <= 1'b0;
            end
            if (redist12_sync_together243_aunroll_x_in_c0_eni46_12_tpl_4_rdcnt_eq == 1'b1)
            begin
                redist12_sync_together243_aunroll_x_in_c0_eni46_12_tpl_4_rdcnt_i <= $unsigned(redist12_sync_together243_aunroll_x_in_c0_eni46_12_tpl_4_rdcnt_i) + $unsigned(2'd2);
            end
            else
            begin
                redist12_sync_together243_aunroll_x_in_c0_eni46_12_tpl_4_rdcnt_i <= $unsigned(redist12_sync_together243_aunroll_x_in_c0_eni46_12_tpl_4_rdcnt_i) + $unsigned(2'd1);
            end
        end
    end
    assign redist12_sync_together243_aunroll_x_in_c0_eni46_12_tpl_4_rdcnt_q = redist12_sync_together243_aunroll_x_in_c0_eni46_12_tpl_4_rdcnt_i[1:0];

    // redist12_sync_together243_aunroll_x_in_c0_eni46_12_tpl_4_wraddr(REG,480)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_sync_together243_aunroll_x_in_c0_eni46_12_tpl_4_wraddr_q <= $unsigned(2'b10);
        end
        else
        begin
            redist12_sync_together243_aunroll_x_in_c0_eni46_12_tpl_4_wraddr_q <= $unsigned(redist12_sync_together243_aunroll_x_in_c0_eni46_12_tpl_4_rdcnt_q);
        end
    end

    // redist12_sync_together243_aunroll_x_in_c0_eni46_12_tpl_4_mem(DUALMEM,478)
    assign redist12_sync_together243_aunroll_x_in_c0_eni46_12_tpl_4_mem_ia = $unsigned(in_c0_eni46_12_tpl);
    assign redist12_sync_together243_aunroll_x_in_c0_eni46_12_tpl_4_mem_aa = redist12_sync_together243_aunroll_x_in_c0_eni46_12_tpl_4_wraddr_q;
    assign redist12_sync_together243_aunroll_x_in_c0_eni46_12_tpl_4_mem_ab = redist12_sync_together243_aunroll_x_in_c0_eni46_12_tpl_4_rdcnt_q;
    assign redist12_sync_together243_aunroll_x_in_c0_eni46_12_tpl_4_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(2),
        .numwords_a(3),
        .width_b(32),
        .widthad_b(2),
        .numwords_b(3),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .address_reg_b("CLOCK0"),
        .indata_reg_b("CLOCK0"),
        .rdcontrol_reg_b("CLOCK0"),
        .byteena_reg_b("CLOCK0"),
        .outdata_reg_b("CLOCK1"),
        .outdata_aclr_b("CLEAR1"),
        .clock_enable_input_a("NORMAL"),
        .clock_enable_input_b("NORMAL"),
        .clock_enable_output_b("NORMAL"),
        .read_during_write_mode_mixed_ports("DONT_CARE"),
        .power_up_uninitialized("TRUE"),
        .intended_device_family("Arria 10")
    ) redist12_sync_together243_aunroll_x_in_c0_eni46_12_tpl_4_mem_dmem (
        .clocken1(redist12_sync_together243_aunroll_x_in_c0_eni46_12_tpl_4_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist12_sync_together243_aunroll_x_in_c0_eni46_12_tpl_4_mem_reset0),
        .clock1(clock),
        .address_a(redist12_sync_together243_aunroll_x_in_c0_eni46_12_tpl_4_mem_aa),
        .data_a(redist12_sync_together243_aunroll_x_in_c0_eni46_12_tpl_4_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist12_sync_together243_aunroll_x_in_c0_eni46_12_tpl_4_mem_ab),
        .q_b(redist12_sync_together243_aunroll_x_in_c0_eni46_12_tpl_4_mem_iq),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_b(),
        .clocken2(),
        .clocken3(),
        .aclr0(),
        .addressstall_a(),
        .addressstall_b(),
        .byteena_a(),
        .byteena_b(),
        .eccencbypass(),
        .eccencparity(),
        .sclr(),
        .address2_a(),
        .address2_b(),
        .q_a(),
        .eccstatus()
    );
    assign redist12_sync_together243_aunroll_x_in_c0_eni46_12_tpl_4_mem_q = redist12_sync_together243_aunroll_x_in_c0_eni46_12_tpl_4_mem_iq[31:0];

    // i_llvm_fpga_pop_f32_lm25100_pop47_conv2d3x374(BLACKBOX,110)@5
    // out out_feedback_stall_out_47@20000000
    conv2d3x3_i_llvm_fpga_pop_f32_lm25100_pop47_0 thei_llvm_fpga_pop_f32_lm25100_pop47_conv2d3x374 (
        .in_data_in(redist12_sync_together243_aunroll_x_in_c0_eni46_12_tpl_4_mem_q),
        .in_dir(redist100_i_llvm_fpga_fanout_i1_c0_ene1671_fanout_adaptor_conv2d3x33_q_3_q),
        .in_feedback_in_47(i_llvm_fpga_push_f32_lm25100_push47_conv2d3x375_out_feedback_out_47),
        .in_feedback_valid_in_47(i_llvm_fpga_push_f32_lm25100_push47_conv2d3x375_out_feedback_valid_out_47),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg26_q),
        .out_data_out(i_llvm_fpga_pop_f32_lm25100_pop47_conv2d3x374_out_data_out),
        .out_feedback_stall_out_47(i_llvm_fpga_pop_f32_lm25100_pop47_conv2d3x374_out_feedback_stall_out_47),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist97_i_llvm_fpga_pop_f32_lm25100_pop47_conv2d3x374_out_data_out_3_wraddr(REG,758)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist97_i_llvm_fpga_pop_f32_lm25100_pop47_conv2d3x374_out_data_out_3_wraddr_q <= $unsigned(1'b1);
        end
        else
        begin
            redist97_i_llvm_fpga_pop_f32_lm25100_pop47_conv2d3x374_out_data_out_3_wraddr_q <= $unsigned(redist97_i_llvm_fpga_pop_f32_lm25100_pop47_conv2d3x374_out_data_out_3_rdcnt_q);
        end
    end

    // redist97_i_llvm_fpga_pop_f32_lm25100_pop47_conv2d3x374_out_data_out_3_mem(DUALMEM,756)
    assign redist97_i_llvm_fpga_pop_f32_lm25100_pop47_conv2d3x374_out_data_out_3_mem_ia = $unsigned(i_llvm_fpga_pop_f32_lm25100_pop47_conv2d3x374_out_data_out);
    assign redist97_i_llvm_fpga_pop_f32_lm25100_pop47_conv2d3x374_out_data_out_3_mem_aa = redist97_i_llvm_fpga_pop_f32_lm25100_pop47_conv2d3x374_out_data_out_3_wraddr_q;
    assign redist97_i_llvm_fpga_pop_f32_lm25100_pop47_conv2d3x374_out_data_out_3_mem_ab = redist97_i_llvm_fpga_pop_f32_lm25100_pop47_conv2d3x374_out_data_out_3_rdcnt_q;
    assign redist97_i_llvm_fpga_pop_f32_lm25100_pop47_conv2d3x374_out_data_out_3_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(1),
        .numwords_a(2),
        .width_b(32),
        .widthad_b(1),
        .numwords_b(2),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .address_reg_b("CLOCK0"),
        .indata_reg_b("CLOCK0"),
        .rdcontrol_reg_b("CLOCK0"),
        .byteena_reg_b("CLOCK0"),
        .outdata_reg_b("CLOCK1"),
        .outdata_aclr_b("CLEAR1"),
        .clock_enable_input_a("NORMAL"),
        .clock_enable_input_b("NORMAL"),
        .clock_enable_output_b("NORMAL"),
        .read_during_write_mode_mixed_ports("DONT_CARE"),
        .power_up_uninitialized("TRUE"),
        .intended_device_family("Arria 10")
    ) redist97_i_llvm_fpga_pop_f32_lm25100_pop47_conv2d3x374_out_data_out_3_mem_dmem (
        .clocken1(redist97_i_llvm_fpga_pop_f32_lm25100_pop47_conv2d3x374_out_data_out_3_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist97_i_llvm_fpga_pop_f32_lm25100_pop47_conv2d3x374_out_data_out_3_mem_reset0),
        .clock1(clock),
        .address_a(redist97_i_llvm_fpga_pop_f32_lm25100_pop47_conv2d3x374_out_data_out_3_mem_aa),
        .data_a(redist97_i_llvm_fpga_pop_f32_lm25100_pop47_conv2d3x374_out_data_out_3_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist97_i_llvm_fpga_pop_f32_lm25100_pop47_conv2d3x374_out_data_out_3_mem_ab),
        .q_b(redist97_i_llvm_fpga_pop_f32_lm25100_pop47_conv2d3x374_out_data_out_3_mem_iq),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_b(),
        .clocken2(),
        .clocken3(),
        .aclr0(),
        .addressstall_a(),
        .addressstall_b(),
        .byteena_a(),
        .byteena_b(),
        .eccencbypass(),
        .eccencparity(),
        .sclr(),
        .address2_a(),
        .address2_b(),
        .q_a(),
        .eccstatus()
    );
    assign redist97_i_llvm_fpga_pop_f32_lm25100_pop47_conv2d3x374_out_data_out_3_mem_q = redist97_i_llvm_fpga_pop_f32_lm25100_pop47_conv2d3x374_out_data_out_3_mem_iq[31:0];

    // redist58_i_llvm_fpga_pop_p1024f32_output_im_addr_068_replace_phi94_pop46_conv2d3x372_out_data_out_4_notEnable(LOGICAL,605)
    assign redist58_i_llvm_fpga_pop_p1024f32_output_im_addr_068_replace_phi94_pop46_conv2d3x372_out_data_out_4_notEnable_q = $unsigned(~ (VCC_q));

    // redist58_i_llvm_fpga_pop_p1024f32_output_im_addr_068_replace_phi94_pop46_conv2d3x372_out_data_out_4_nor(LOGICAL,606)
    assign redist58_i_llvm_fpga_pop_p1024f32_output_im_addr_068_replace_phi94_pop46_conv2d3x372_out_data_out_4_nor_q = ~ (redist58_i_llvm_fpga_pop_p1024f32_output_im_addr_068_replace_phi94_pop46_conv2d3x372_out_data_out_4_notEnable_q | redist58_i_llvm_fpga_pop_p1024f32_output_im_addr_068_replace_phi94_pop46_conv2d3x372_out_data_out_4_sticky_ena_q);

    // redist58_i_llvm_fpga_pop_p1024f32_output_im_addr_068_replace_phi94_pop46_conv2d3x372_out_data_out_4_mem_last(CONSTANT,602)
    assign redist58_i_llvm_fpga_pop_p1024f32_output_im_addr_068_replace_phi94_pop46_conv2d3x372_out_data_out_4_mem_last_q = $unsigned(2'b01);

    // redist58_i_llvm_fpga_pop_p1024f32_output_im_addr_068_replace_phi94_pop46_conv2d3x372_out_data_out_4_cmp(LOGICAL,603)
    assign redist58_i_llvm_fpga_pop_p1024f32_output_im_addr_068_replace_phi94_pop46_conv2d3x372_out_data_out_4_cmp_q = $unsigned(redist58_i_llvm_fpga_pop_p1024f32_output_im_addr_068_replace_phi94_pop46_conv2d3x372_out_data_out_4_mem_last_q == redist58_i_llvm_fpga_pop_p1024f32_output_im_addr_068_replace_phi94_pop46_conv2d3x372_out_data_out_4_rdcnt_q ? 1'b1 : 1'b0);

    // redist58_i_llvm_fpga_pop_p1024f32_output_im_addr_068_replace_phi94_pop46_conv2d3x372_out_data_out_4_cmpReg(REG,604)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist58_i_llvm_fpga_pop_p1024f32_output_im_addr_068_replace_phi94_pop46_conv2d3x372_out_data_out_4_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist58_i_llvm_fpga_pop_p1024f32_output_im_addr_068_replace_phi94_pop46_conv2d3x372_out_data_out_4_cmpReg_q <= $unsigned(redist58_i_llvm_fpga_pop_p1024f32_output_im_addr_068_replace_phi94_pop46_conv2d3x372_out_data_out_4_cmp_q);
        end
    end

    // redist58_i_llvm_fpga_pop_p1024f32_output_im_addr_068_replace_phi94_pop46_conv2d3x372_out_data_out_4_sticky_ena(REG,607)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist58_i_llvm_fpga_pop_p1024f32_output_im_addr_068_replace_phi94_pop46_conv2d3x372_out_data_out_4_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist58_i_llvm_fpga_pop_p1024f32_output_im_addr_068_replace_phi94_pop46_conv2d3x372_out_data_out_4_nor_q == 1'b1)
        begin
            redist58_i_llvm_fpga_pop_p1024f32_output_im_addr_068_replace_phi94_pop46_conv2d3x372_out_data_out_4_sticky_ena_q <= $unsigned(redist58_i_llvm_fpga_pop_p1024f32_output_im_addr_068_replace_phi94_pop46_conv2d3x372_out_data_out_4_cmpReg_q);
        end
    end

    // redist58_i_llvm_fpga_pop_p1024f32_output_im_addr_068_replace_phi94_pop46_conv2d3x372_out_data_out_4_enaAnd(LOGICAL,608)
    assign redist58_i_llvm_fpga_pop_p1024f32_output_im_addr_068_replace_phi94_pop46_conv2d3x372_out_data_out_4_enaAnd_q = redist58_i_llvm_fpga_pop_p1024f32_output_im_addr_068_replace_phi94_pop46_conv2d3x372_out_data_out_4_sticky_ena_q & VCC_q;

    // redist58_i_llvm_fpga_pop_p1024f32_output_im_addr_068_replace_phi94_pop46_conv2d3x372_out_data_out_4_rdcnt(COUNTER,600)
    // low=0, high=2, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist58_i_llvm_fpga_pop_p1024f32_output_im_addr_068_replace_phi94_pop46_conv2d3x372_out_data_out_4_rdcnt_i <= 2'd0;
            redist58_i_llvm_fpga_pop_p1024f32_output_im_addr_068_replace_phi94_pop46_conv2d3x372_out_data_out_4_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist58_i_llvm_fpga_pop_p1024f32_output_im_addr_068_replace_phi94_pop46_conv2d3x372_out_data_out_4_rdcnt_i == 2'd1)
            begin
                redist58_i_llvm_fpga_pop_p1024f32_output_im_addr_068_replace_phi94_pop46_conv2d3x372_out_data_out_4_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist58_i_llvm_fpga_pop_p1024f32_output_im_addr_068_replace_phi94_pop46_conv2d3x372_out_data_out_4_rdcnt_eq <= 1'b0;
            end
            if (redist58_i_llvm_fpga_pop_p1024f32_output_im_addr_068_replace_phi94_pop46_conv2d3x372_out_data_out_4_rdcnt_eq == 1'b1)
            begin
                redist58_i_llvm_fpga_pop_p1024f32_output_im_addr_068_replace_phi94_pop46_conv2d3x372_out_data_out_4_rdcnt_i <= $unsigned(redist58_i_llvm_fpga_pop_p1024f32_output_im_addr_068_replace_phi94_pop46_conv2d3x372_out_data_out_4_rdcnt_i) + $unsigned(2'd2);
            end
            else
            begin
                redist58_i_llvm_fpga_pop_p1024f32_output_im_addr_068_replace_phi94_pop46_conv2d3x372_out_data_out_4_rdcnt_i <= $unsigned(redist58_i_llvm_fpga_pop_p1024f32_output_im_addr_068_replace_phi94_pop46_conv2d3x372_out_data_out_4_rdcnt_i) + $unsigned(2'd1);
            end
        end
    end
    assign redist58_i_llvm_fpga_pop_p1024f32_output_im_addr_068_replace_phi94_pop46_conv2d3x372_out_data_out_4_rdcnt_q = redist58_i_llvm_fpga_pop_p1024f32_output_im_addr_068_replace_phi94_pop46_conv2d3x372_out_data_out_4_rdcnt_i[1:0];

    // valid_fanout_reg24(REG,268)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg24_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg24_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg25(REG,269)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg25_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg25_q <= $unsigned(redist49_sync_together243_aunroll_x_in_i_valid_4_q);
        end
    end

    // i_llvm_fpga_fanout_i1_keep_going60_fanout_adaptor1207_conv2d3x39(REG,107)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_llvm_fpga_fanout_i1_keep_going60_fanout_adaptor1207_conv2d3x39_q <= $unsigned(1'b0);
        end
        else
        begin
            i_llvm_fpga_fanout_i1_keep_going60_fanout_adaptor1207_conv2d3x39_q <= redist98_i_llvm_fpga_pipeline_keep_going60_conv2d3x38_out_data_out_1_q;
        end
    end

    // i_llvm_fpga_push_p1024f32_output_im_addr_068_replace_phi94_push46_conv2d3x373(BLACKBOX,169)@6
    // out out_feedback_out_46@20000000
    // out out_feedback_valid_out_46@20000000
    conv2d3x3_i_llvm_fpga_push_p1024f32_outp0000place_phi94_push46_0 thei_llvm_fpga_push_p1024f32_output_im_addr_068_replace_phi94_push46_conv2d3x373 (
        .in_data_in(redist58_i_llvm_fpga_pop_p1024f32_output_im_addr_068_replace_phi94_pop46_conv2d3x372_out_data_out_4_mem_q),
        .in_feedback_stall_in_46(i_llvm_fpga_pop_p1024f32_output_im_addr_068_replace_phi94_pop46_conv2d3x372_out_feedback_stall_out_46),
        .in_keep_going60_fanout_adaptor1207(i_llvm_fpga_fanout_i1_keep_going60_fanout_adaptor1207_conv2d3x39_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg25_q),
        .out_data_out(),
        .out_feedback_out_46(i_llvm_fpga_push_p1024f32_output_im_addr_068_replace_phi94_push46_conv2d3x373_out_feedback_out_46),
        .out_feedback_valid_out_46(i_llvm_fpga_push_p1024f32_output_im_addr_068_replace_phi94_push46_conv2d3x373_out_feedback_valid_out_46),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist11_sync_together243_aunroll_x_in_c0_eni46_11_tpl_1(DELAY,377)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_sync_together243_aunroll_x_in_c0_eni46_11_tpl_1_q <= '0;
        end
        else
        begin
            redist11_sync_together243_aunroll_x_in_c0_eni46_11_tpl_1_q <= $unsigned(in_c0_eni46_11_tpl);
        end
    end

    // i_llvm_fpga_pop_p1024f32_output_im_addr_068_replace_phi94_pop46_conv2d3x372(BLACKBOX,138)@2
    // out out_feedback_stall_out_46@20000000
    conv2d3x3_i_llvm_fpga_pop_p1024f32_outpu0000eplace_phi94_pop46_0 thei_llvm_fpga_pop_p1024f32_output_im_addr_068_replace_phi94_pop46_conv2d3x372 (
        .in_data_in(redist11_sync_together243_aunroll_x_in_c0_eni46_11_tpl_1_q),
        .in_dir(i_llvm_fpga_fanout_i1_c0_ene1671_fanout_adaptor_conv2d3x33_q),
        .in_feedback_in_46(i_llvm_fpga_push_p1024f32_output_im_addr_068_replace_phi94_push46_conv2d3x373_out_feedback_out_46),
        .in_feedback_valid_in_46(i_llvm_fpga_push_p1024f32_output_im_addr_068_replace_phi94_push46_conv2d3x373_out_feedback_valid_out_46),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg24_q),
        .out_data_out(i_llvm_fpga_pop_p1024f32_output_im_addr_068_replace_phi94_pop46_conv2d3x372_out_data_out),
        .out_feedback_stall_out_46(i_llvm_fpga_pop_p1024f32_output_im_addr_068_replace_phi94_pop46_conv2d3x372_out_feedback_stall_out_46),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist58_i_llvm_fpga_pop_p1024f32_output_im_addr_068_replace_phi94_pop46_conv2d3x372_out_data_out_4_wraddr(REG,601)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist58_i_llvm_fpga_pop_p1024f32_output_im_addr_068_replace_phi94_pop46_conv2d3x372_out_data_out_4_wraddr_q <= $unsigned(2'b10);
        end
        else
        begin
            redist58_i_llvm_fpga_pop_p1024f32_output_im_addr_068_replace_phi94_pop46_conv2d3x372_out_data_out_4_wraddr_q <= $unsigned(redist58_i_llvm_fpga_pop_p1024f32_output_im_addr_068_replace_phi94_pop46_conv2d3x372_out_data_out_4_rdcnt_q);
        end
    end

    // redist58_i_llvm_fpga_pop_p1024f32_output_im_addr_068_replace_phi94_pop46_conv2d3x372_out_data_out_4_mem(DUALMEM,599)
    assign redist58_i_llvm_fpga_pop_p1024f32_output_im_addr_068_replace_phi94_pop46_conv2d3x372_out_data_out_4_mem_ia = $unsigned(i_llvm_fpga_pop_p1024f32_output_im_addr_068_replace_phi94_pop46_conv2d3x372_out_data_out);
    assign redist58_i_llvm_fpga_pop_p1024f32_output_im_addr_068_replace_phi94_pop46_conv2d3x372_out_data_out_4_mem_aa = redist58_i_llvm_fpga_pop_p1024f32_output_im_addr_068_replace_phi94_pop46_conv2d3x372_out_data_out_4_wraddr_q;
    assign redist58_i_llvm_fpga_pop_p1024f32_output_im_addr_068_replace_phi94_pop46_conv2d3x372_out_data_out_4_mem_ab = redist58_i_llvm_fpga_pop_p1024f32_output_im_addr_068_replace_phi94_pop46_conv2d3x372_out_data_out_4_rdcnt_q;
    assign redist58_i_llvm_fpga_pop_p1024f32_output_im_addr_068_replace_phi94_pop46_conv2d3x372_out_data_out_4_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(64),
        .widthad_a(2),
        .numwords_a(3),
        .width_b(64),
        .widthad_b(2),
        .numwords_b(3),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .address_reg_b("CLOCK0"),
        .indata_reg_b("CLOCK0"),
        .rdcontrol_reg_b("CLOCK0"),
        .byteena_reg_b("CLOCK0"),
        .outdata_reg_b("CLOCK1"),
        .outdata_aclr_b("CLEAR1"),
        .clock_enable_input_a("NORMAL"),
        .clock_enable_input_b("NORMAL"),
        .clock_enable_output_b("NORMAL"),
        .read_during_write_mode_mixed_ports("DONT_CARE"),
        .power_up_uninitialized("TRUE"),
        .intended_device_family("Arria 10")
    ) redist58_i_llvm_fpga_pop_p1024f32_output_im_addr_068_replace_phi94_pop46_conv2d3x372_out_data_out_4_mem_dmem (
        .clocken1(redist58_i_llvm_fpga_pop_p1024f32_output_im_addr_068_replace_phi94_pop46_conv2d3x372_out_data_out_4_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist58_i_llvm_fpga_pop_p1024f32_output_im_addr_068_replace_phi94_pop46_conv2d3x372_out_data_out_4_mem_reset0),
        .clock1(clock),
        .address_a(redist58_i_llvm_fpga_pop_p1024f32_output_im_addr_068_replace_phi94_pop46_conv2d3x372_out_data_out_4_mem_aa),
        .data_a(redist58_i_llvm_fpga_pop_p1024f32_output_im_addr_068_replace_phi94_pop46_conv2d3x372_out_data_out_4_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist58_i_llvm_fpga_pop_p1024f32_output_im_addr_068_replace_phi94_pop46_conv2d3x372_out_data_out_4_mem_ab),
        .q_b(redist58_i_llvm_fpga_pop_p1024f32_output_im_addr_068_replace_phi94_pop46_conv2d3x372_out_data_out_4_mem_iq),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_b(),
        .clocken2(),
        .clocken3(),
        .aclr0(),
        .addressstall_a(),
        .addressstall_b(),
        .byteena_a(),
        .byteena_b(),
        .eccencbypass(),
        .eccencparity(),
        .sclr(),
        .address2_a(),
        .address2_b(),
        .q_a(),
        .eccstatus()
    );
    assign redist58_i_llvm_fpga_pop_p1024f32_output_im_addr_068_replace_phi94_pop46_conv2d3x372_out_data_out_4_mem_q = redist58_i_llvm_fpga_pop_p1024f32_output_im_addr_068_replace_phi94_pop46_conv2d3x372_out_data_out_4_mem_iq[63:0];

    // redist59_i_llvm_fpga_pop_p1024f32_output_im_addr_068_replace_phi94_pop46_conv2d3x372_out_data_out_6(DELAY,425)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist59_i_llvm_fpga_pop_p1024f32_output_im_addr_068_replace_phi94_pop46_conv2d3x372_out_data_out_6_delay_0 <= '0;
            redist59_i_llvm_fpga_pop_p1024f32_output_im_addr_068_replace_phi94_pop46_conv2d3x372_out_data_out_6_q <= '0;
        end
        else
        begin
            redist59_i_llvm_fpga_pop_p1024f32_output_im_addr_068_replace_phi94_pop46_conv2d3x372_out_data_out_6_delay_0 <= $unsigned(redist58_i_llvm_fpga_pop_p1024f32_output_im_addr_068_replace_phi94_pop46_conv2d3x372_out_data_out_4_mem_q);
            redist59_i_llvm_fpga_pop_p1024f32_output_im_addr_068_replace_phi94_pop46_conv2d3x372_out_data_out_6_q <= redist59_i_llvm_fpga_pop_p1024f32_output_im_addr_068_replace_phi94_pop46_conv2d3x372_out_data_out_6_delay_0;
        end
    end

    // i_masked69_conv2d3x371(LOGICAL,175)@8
    assign i_masked69_conv2d3x371_q = i_notcmp56_conv2d3x366_q & i_first_cleanup65_conv2d3x35_sel_x_b;

    // c_i32_0171(CONSTANT,75)
    assign c_i32_0171_q = $unsigned(32'b00000000000000000000000000000000);

    // valid_fanout_reg12(REG,256)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg12_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg12_q <= $unsigned(redist49_sync_together243_aunroll_x_in_i_valid_4_q);
        end
    end

    // valid_fanout_reg23(REG,267)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg23_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg23_q <= $unsigned(redist49_sync_together243_aunroll_x_in_i_valid_4_q);
        end
    end

    // c_i32_1173(CONSTANT,76)
    assign c_i32_1173_q = $unsigned(32'b00000000000000000000000000000001);

    // i_inc_conv2d3x358(ADD,103)@6
    assign i_inc_conv2d3x358_a = {1'b0, i_llvm_fpga_pop_i32_m_053_pop41_conv2d3x328_out_data_out};
    assign i_inc_conv2d3x358_b = {1'b0, c_i32_1173_q};
    assign i_inc_conv2d3x358_o = $unsigned(i_inc_conv2d3x358_a) + $unsigned(i_inc_conv2d3x358_b);
    assign i_inc_conv2d3x358_q = i_inc_conv2d3x358_o[32:0];

    // bgTrunc_i_inc_conv2d3x358_sel_x(BITSELECT,208)@6
    assign bgTrunc_i_inc_conv2d3x358_sel_x_b = i_inc_conv2d3x358_q[31:0];

    // i_llvm_fpga_push_i32_m_053_push41_conv2d3x359(BLACKBOX,160)@6
    // out out_feedback_out_41@20000000
    // out out_feedback_valid_out_41@20000000
    conv2d3x3_i_llvm_fpga_push_i32_m_053_push41_0 thei_llvm_fpga_push_i32_m_053_push41_conv2d3x359 (
        .in_data_in(bgTrunc_i_inc_conv2d3x358_sel_x_b),
        .in_feedback_stall_in_41(i_llvm_fpga_pop_i32_m_053_pop41_conv2d3x328_out_feedback_stall_out_41),
        .in_keep_going60_fanout_adaptor1207(i_llvm_fpga_fanout_i1_keep_going60_fanout_adaptor1207_conv2d3x39_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg23_q),
        .out_data_out(),
        .out_feedback_out_41(i_llvm_fpga_push_i32_m_053_push41_conv2d3x359_out_feedback_out_41),
        .out_feedback_valid_out_41(i_llvm_fpga_push_i32_m_053_push41_conv2d3x359_out_feedback_valid_out_41),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist101_i_llvm_fpga_fanout_i1_c0_ene1671_fanout_adaptor_conv2d3x33_q_4(DELAY,467)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist101_i_llvm_fpga_fanout_i1_c0_ene1671_fanout_adaptor_conv2d3x33_q_4_q <= '0;
        end
        else
        begin
            redist101_i_llvm_fpga_fanout_i1_c0_ene1671_fanout_adaptor_conv2d3x33_q_4_q <= $unsigned(redist100_i_llvm_fpga_fanout_i1_c0_ene1671_fanout_adaptor_conv2d3x33_q_3_q);
        end
    end

    // i_llvm_fpga_pop_i32_m_053_pop41_conv2d3x328(BLACKBOX,129)@6
    // out out_feedback_stall_out_41@20000000
    conv2d3x3_i_llvm_fpga_pop_i32_m_053_pop41_0 thei_llvm_fpga_pop_i32_m_053_pop41_conv2d3x328 (
        .in_data_in(c_i32_0171_q),
        .in_dir(redist101_i_llvm_fpga_fanout_i1_c0_ene1671_fanout_adaptor_conv2d3x33_q_4_q),
        .in_feedback_in_41(i_llvm_fpga_push_i32_m_053_push41_conv2d3x359_out_feedback_out_41),
        .in_feedback_valid_in_41(i_llvm_fpga_push_i32_m_053_push41_conv2d3x359_out_feedback_valid_out_41),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg12_q),
        .out_data_out(i_llvm_fpga_pop_i32_m_053_pop41_conv2d3x328_out_data_out),
        .out_feedback_stall_out_41(i_llvm_fpga_pop_i32_m_053_pop41_conv2d3x328_out_feedback_stall_out_41),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist74_i_llvm_fpga_pop_i32_m_053_pop41_conv2d3x328_out_data_out_1(DELAY,440)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist74_i_llvm_fpga_pop_i32_m_053_pop41_conv2d3x328_out_data_out_1_q <= '0;
        end
        else
        begin
            redist74_i_llvm_fpga_pop_i32_m_053_pop41_conv2d3x328_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i32_m_053_pop41_conv2d3x328_out_data_out);
        end
    end

    // redist75_i_llvm_fpga_pop_i32_m_053_pop41_conv2d3x328_out_data_out_2(DELAY,441)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist75_i_llvm_fpga_pop_i32_m_053_pop41_conv2d3x328_out_data_out_2_q <= '0;
        end
        else
        begin
            redist75_i_llvm_fpga_pop_i32_m_053_pop41_conv2d3x328_out_data_out_2_q <= $unsigned(redist74_i_llvm_fpga_pop_i32_m_053_pop41_conv2d3x328_out_data_out_1_q);
        end
    end

    // i_add42_conv2d3x353(ADD,83)@8
    assign i_add42_conv2d3x353_a = {1'b0, redist53_bgTrunc_i_mul39_add4_conv2d3x319_sel_x_b_3_q};
    assign i_add42_conv2d3x353_b = {1'b0, redist75_i_llvm_fpga_pop_i32_m_053_pop41_conv2d3x328_out_data_out_2_q};
    assign i_add42_conv2d3x353_o = $unsigned(i_add42_conv2d3x353_a) + $unsigned(i_add42_conv2d3x353_b);
    assign i_add42_conv2d3x353_q = i_add42_conv2d3x353_o[32:0];

    // bgTrunc_i_add42_conv2d3x353_sel_x(BITSELECT,206)@8
    assign bgTrunc_i_add42_conv2d3x353_sel_x_b = i_add42_conv2d3x353_q[31:0];

    // i_idxprom43_conv2d3x354_sel_x(BITSELECT,232)@8
    assign i_idxprom43_conv2d3x354_sel_x_b = {32'b00000000000000000000000000000000, bgTrunc_i_add42_conv2d3x353_sel_x_b[31:0]};

    // i_idxprom43_conv2d3x354_vt_select_31(BITSELECT,102)@8
    assign i_idxprom43_conv2d3x354_vt_select_31_b = i_idxprom43_conv2d3x354_sel_x_b[31:0];

    // i_idxprom43_conv2d3x354_vt_join(BITJOIN,101)@8
    assign i_idxprom43_conv2d3x354_vt_join_q = {c_i32_0171_q, i_idxprom43_conv2d3x354_vt_select_31_b};

    // i_arrayidx44_conv2d3x30_narrow_x(BITSELECT,222)@8
    assign i_arrayidx44_conv2d3x30_narrow_x_b = i_idxprom43_conv2d3x354_vt_join_q[61:0];

    // i_arrayidx385_conv2d3x340_vt_const_1(CONSTANT,84)
    assign i_arrayidx385_conv2d3x340_vt_const_1_q = $unsigned(2'b00);

    // i_arrayidx44_conv2d3x30_shift_join_x(BITJOIN,223)@8
    assign i_arrayidx44_conv2d3x30_shift_join_x_q = {i_arrayidx44_conv2d3x30_narrow_x_b, i_arrayidx385_conv2d3x340_vt_const_1_q};

    // i_arrayidx44_conv2d3x30_add_x(ADD,220)@8
    assign i_arrayidx44_conv2d3x30_add_x_a = {1'b0, redist61_i_llvm_fpga_pop_p1024f32_filter_weight_addr_067_replace_phi88_pop45_conv2d3x355_out_data_out_6_q};
    assign i_arrayidx44_conv2d3x30_add_x_b = {1'b0, i_arrayidx44_conv2d3x30_shift_join_x_q};
    assign i_arrayidx44_conv2d3x30_add_x_o = $unsigned(i_arrayidx44_conv2d3x30_add_x_a) + $unsigned(i_arrayidx44_conv2d3x30_add_x_b);
    assign i_arrayidx44_conv2d3x30_add_x_q = i_arrayidx44_conv2d3x30_add_x_o[64:0];

    // i_arrayidx44_conv2d3x30_dupName_0_trunc_sel_x(BITSELECT,225)@8
    assign i_arrayidx44_conv2d3x30_dupName_0_trunc_sel_x_b = i_arrayidx44_conv2d3x30_add_x_q[63:0];

    // redist60_i_llvm_fpga_pop_p1024f32_filter_weight_addr_067_replace_phi88_pop45_conv2d3x355_out_data_out_4_notEnable(LOGICAL,615)
    assign redist60_i_llvm_fpga_pop_p1024f32_filter_weight_addr_067_replace_phi88_pop45_conv2d3x355_out_data_out_4_notEnable_q = $unsigned(~ (VCC_q));

    // redist60_i_llvm_fpga_pop_p1024f32_filter_weight_addr_067_replace_phi88_pop45_conv2d3x355_out_data_out_4_nor(LOGICAL,616)
    assign redist60_i_llvm_fpga_pop_p1024f32_filter_weight_addr_067_replace_phi88_pop45_conv2d3x355_out_data_out_4_nor_q = ~ (redist60_i_llvm_fpga_pop_p1024f32_filter_weight_addr_067_replace_phi88_pop45_conv2d3x355_out_data_out_4_notEnable_q | redist60_i_llvm_fpga_pop_p1024f32_filter_weight_addr_067_replace_phi88_pop45_conv2d3x355_out_data_out_4_sticky_ena_q);

    // redist60_i_llvm_fpga_pop_p1024f32_filter_weight_addr_067_replace_phi88_pop45_conv2d3x355_out_data_out_4_mem_last(CONSTANT,612)
    assign redist60_i_llvm_fpga_pop_p1024f32_filter_weight_addr_067_replace_phi88_pop45_conv2d3x355_out_data_out_4_mem_last_q = $unsigned(2'b01);

    // redist60_i_llvm_fpga_pop_p1024f32_filter_weight_addr_067_replace_phi88_pop45_conv2d3x355_out_data_out_4_cmp(LOGICAL,613)
    assign redist60_i_llvm_fpga_pop_p1024f32_filter_weight_addr_067_replace_phi88_pop45_conv2d3x355_out_data_out_4_cmp_q = $unsigned(redist60_i_llvm_fpga_pop_p1024f32_filter_weight_addr_067_replace_phi88_pop45_conv2d3x355_out_data_out_4_mem_last_q == redist60_i_llvm_fpga_pop_p1024f32_filter_weight_addr_067_replace_phi88_pop45_conv2d3x355_out_data_out_4_rdcnt_q ? 1'b1 : 1'b0);

    // redist60_i_llvm_fpga_pop_p1024f32_filter_weight_addr_067_replace_phi88_pop45_conv2d3x355_out_data_out_4_cmpReg(REG,614)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist60_i_llvm_fpga_pop_p1024f32_filter_weight_addr_067_replace_phi88_pop45_conv2d3x355_out_data_out_4_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist60_i_llvm_fpga_pop_p1024f32_filter_weight_addr_067_replace_phi88_pop45_conv2d3x355_out_data_out_4_cmpReg_q <= $unsigned(redist60_i_llvm_fpga_pop_p1024f32_filter_weight_addr_067_replace_phi88_pop45_conv2d3x355_out_data_out_4_cmp_q);
        end
    end

    // redist60_i_llvm_fpga_pop_p1024f32_filter_weight_addr_067_replace_phi88_pop45_conv2d3x355_out_data_out_4_sticky_ena(REG,617)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist60_i_llvm_fpga_pop_p1024f32_filter_weight_addr_067_replace_phi88_pop45_conv2d3x355_out_data_out_4_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist60_i_llvm_fpga_pop_p1024f32_filter_weight_addr_067_replace_phi88_pop45_conv2d3x355_out_data_out_4_nor_q == 1'b1)
        begin
            redist60_i_llvm_fpga_pop_p1024f32_filter_weight_addr_067_replace_phi88_pop45_conv2d3x355_out_data_out_4_sticky_ena_q <= $unsigned(redist60_i_llvm_fpga_pop_p1024f32_filter_weight_addr_067_replace_phi88_pop45_conv2d3x355_out_data_out_4_cmpReg_q);
        end
    end

    // redist60_i_llvm_fpga_pop_p1024f32_filter_weight_addr_067_replace_phi88_pop45_conv2d3x355_out_data_out_4_enaAnd(LOGICAL,618)
    assign redist60_i_llvm_fpga_pop_p1024f32_filter_weight_addr_067_replace_phi88_pop45_conv2d3x355_out_data_out_4_enaAnd_q = redist60_i_llvm_fpga_pop_p1024f32_filter_weight_addr_067_replace_phi88_pop45_conv2d3x355_out_data_out_4_sticky_ena_q & VCC_q;

    // redist60_i_llvm_fpga_pop_p1024f32_filter_weight_addr_067_replace_phi88_pop45_conv2d3x355_out_data_out_4_rdcnt(COUNTER,610)
    // low=0, high=2, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist60_i_llvm_fpga_pop_p1024f32_filter_weight_addr_067_replace_phi88_pop45_conv2d3x355_out_data_out_4_rdcnt_i <= 2'd0;
            redist60_i_llvm_fpga_pop_p1024f32_filter_weight_addr_067_replace_phi88_pop45_conv2d3x355_out_data_out_4_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist60_i_llvm_fpga_pop_p1024f32_filter_weight_addr_067_replace_phi88_pop45_conv2d3x355_out_data_out_4_rdcnt_i == 2'd1)
            begin
                redist60_i_llvm_fpga_pop_p1024f32_filter_weight_addr_067_replace_phi88_pop45_conv2d3x355_out_data_out_4_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist60_i_llvm_fpga_pop_p1024f32_filter_weight_addr_067_replace_phi88_pop45_conv2d3x355_out_data_out_4_rdcnt_eq <= 1'b0;
            end
            if (redist60_i_llvm_fpga_pop_p1024f32_filter_weight_addr_067_replace_phi88_pop45_conv2d3x355_out_data_out_4_rdcnt_eq == 1'b1)
            begin
                redist60_i_llvm_fpga_pop_p1024f32_filter_weight_addr_067_replace_phi88_pop45_conv2d3x355_out_data_out_4_rdcnt_i <= $unsigned(redist60_i_llvm_fpga_pop_p1024f32_filter_weight_addr_067_replace_phi88_pop45_conv2d3x355_out_data_out_4_rdcnt_i) + $unsigned(2'd2);
            end
            else
            begin
                redist60_i_llvm_fpga_pop_p1024f32_filter_weight_addr_067_replace_phi88_pop45_conv2d3x355_out_data_out_4_rdcnt_i <= $unsigned(redist60_i_llvm_fpga_pop_p1024f32_filter_weight_addr_067_replace_phi88_pop45_conv2d3x355_out_data_out_4_rdcnt_i) + $unsigned(2'd1);
            end
        end
    end
    assign redist60_i_llvm_fpga_pop_p1024f32_filter_weight_addr_067_replace_phi88_pop45_conv2d3x355_out_data_out_4_rdcnt_q = redist60_i_llvm_fpga_pop_p1024f32_filter_weight_addr_067_replace_phi88_pop45_conv2d3x355_out_data_out_4_rdcnt_i[1:0];

    // valid_fanout_reg21(REG,265)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg21_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg21_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg22(REG,266)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg22_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg22_q <= $unsigned(redist49_sync_together243_aunroll_x_in_i_valid_4_q);
        end
    end

    // i_llvm_fpga_push_p1024f32_filter_weight_addr_067_replace_phi88_push45_conv2d3x356(BLACKBOX,168)@6
    // out out_feedback_out_45@20000000
    // out out_feedback_valid_out_45@20000000
    conv2d3x3_i_llvm_fpga_push_p1024f32_filt0000place_phi88_push45_0 thei_llvm_fpga_push_p1024f32_filter_weight_addr_067_replace_phi88_push45_conv2d3x356 (
        .in_data_in(redist60_i_llvm_fpga_pop_p1024f32_filter_weight_addr_067_replace_phi88_pop45_conv2d3x355_out_data_out_4_mem_q),
        .in_feedback_stall_in_45(i_llvm_fpga_pop_p1024f32_filter_weight_addr_067_replace_phi88_pop45_conv2d3x355_out_feedback_stall_out_45),
        .in_keep_going60_fanout_adaptor1207(i_llvm_fpga_fanout_i1_keep_going60_fanout_adaptor1207_conv2d3x39_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg22_q),
        .out_data_out(),
        .out_feedback_out_45(i_llvm_fpga_push_p1024f32_filter_weight_addr_067_replace_phi88_push45_conv2d3x356_out_feedback_out_45),
        .out_feedback_valid_out_45(i_llvm_fpga_push_p1024f32_filter_weight_addr_067_replace_phi88_push45_conv2d3x356_out_feedback_valid_out_45),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist10_sync_together243_aunroll_x_in_c0_eni46_10_tpl_1(DELAY,376)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_sync_together243_aunroll_x_in_c0_eni46_10_tpl_1_q <= '0;
        end
        else
        begin
            redist10_sync_together243_aunroll_x_in_c0_eni46_10_tpl_1_q <= $unsigned(in_c0_eni46_10_tpl);
        end
    end

    // i_llvm_fpga_pop_p1024f32_filter_weight_addr_067_replace_phi88_pop45_conv2d3x355(BLACKBOX,137)@2
    // out out_feedback_stall_out_45@20000000
    conv2d3x3_i_llvm_fpga_pop_p1024f32_filte0000eplace_phi88_pop45_0 thei_llvm_fpga_pop_p1024f32_filter_weight_addr_067_replace_phi88_pop45_conv2d3x355 (
        .in_data_in(redist10_sync_together243_aunroll_x_in_c0_eni46_10_tpl_1_q),
        .in_dir(i_llvm_fpga_fanout_i1_c0_ene1671_fanout_adaptor_conv2d3x33_q),
        .in_feedback_in_45(i_llvm_fpga_push_p1024f32_filter_weight_addr_067_replace_phi88_push45_conv2d3x356_out_feedback_out_45),
        .in_feedback_valid_in_45(i_llvm_fpga_push_p1024f32_filter_weight_addr_067_replace_phi88_push45_conv2d3x356_out_feedback_valid_out_45),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg21_q),
        .out_data_out(i_llvm_fpga_pop_p1024f32_filter_weight_addr_067_replace_phi88_pop45_conv2d3x355_out_data_out),
        .out_feedback_stall_out_45(i_llvm_fpga_pop_p1024f32_filter_weight_addr_067_replace_phi88_pop45_conv2d3x355_out_feedback_stall_out_45),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist60_i_llvm_fpga_pop_p1024f32_filter_weight_addr_067_replace_phi88_pop45_conv2d3x355_out_data_out_4_wraddr(REG,611)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist60_i_llvm_fpga_pop_p1024f32_filter_weight_addr_067_replace_phi88_pop45_conv2d3x355_out_data_out_4_wraddr_q <= $unsigned(2'b10);
        end
        else
        begin
            redist60_i_llvm_fpga_pop_p1024f32_filter_weight_addr_067_replace_phi88_pop45_conv2d3x355_out_data_out_4_wraddr_q <= $unsigned(redist60_i_llvm_fpga_pop_p1024f32_filter_weight_addr_067_replace_phi88_pop45_conv2d3x355_out_data_out_4_rdcnt_q);
        end
    end

    // redist60_i_llvm_fpga_pop_p1024f32_filter_weight_addr_067_replace_phi88_pop45_conv2d3x355_out_data_out_4_mem(DUALMEM,609)
    assign redist60_i_llvm_fpga_pop_p1024f32_filter_weight_addr_067_replace_phi88_pop45_conv2d3x355_out_data_out_4_mem_ia = $unsigned(i_llvm_fpga_pop_p1024f32_filter_weight_addr_067_replace_phi88_pop45_conv2d3x355_out_data_out);
    assign redist60_i_llvm_fpga_pop_p1024f32_filter_weight_addr_067_replace_phi88_pop45_conv2d3x355_out_data_out_4_mem_aa = redist60_i_llvm_fpga_pop_p1024f32_filter_weight_addr_067_replace_phi88_pop45_conv2d3x355_out_data_out_4_wraddr_q;
    assign redist60_i_llvm_fpga_pop_p1024f32_filter_weight_addr_067_replace_phi88_pop45_conv2d3x355_out_data_out_4_mem_ab = redist60_i_llvm_fpga_pop_p1024f32_filter_weight_addr_067_replace_phi88_pop45_conv2d3x355_out_data_out_4_rdcnt_q;
    assign redist60_i_llvm_fpga_pop_p1024f32_filter_weight_addr_067_replace_phi88_pop45_conv2d3x355_out_data_out_4_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(64),
        .widthad_a(2),
        .numwords_a(3),
        .width_b(64),
        .widthad_b(2),
        .numwords_b(3),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .address_reg_b("CLOCK0"),
        .indata_reg_b("CLOCK0"),
        .rdcontrol_reg_b("CLOCK0"),
        .byteena_reg_b("CLOCK0"),
        .outdata_reg_b("CLOCK1"),
        .outdata_aclr_b("CLEAR1"),
        .clock_enable_input_a("NORMAL"),
        .clock_enable_input_b("NORMAL"),
        .clock_enable_output_b("NORMAL"),
        .read_during_write_mode_mixed_ports("DONT_CARE"),
        .power_up_uninitialized("TRUE"),
        .intended_device_family("Arria 10")
    ) redist60_i_llvm_fpga_pop_p1024f32_filter_weight_addr_067_replace_phi88_pop45_conv2d3x355_out_data_out_4_mem_dmem (
        .clocken1(redist60_i_llvm_fpga_pop_p1024f32_filter_weight_addr_067_replace_phi88_pop45_conv2d3x355_out_data_out_4_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist60_i_llvm_fpga_pop_p1024f32_filter_weight_addr_067_replace_phi88_pop45_conv2d3x355_out_data_out_4_mem_reset0),
        .clock1(clock),
        .address_a(redist60_i_llvm_fpga_pop_p1024f32_filter_weight_addr_067_replace_phi88_pop45_conv2d3x355_out_data_out_4_mem_aa),
        .data_a(redist60_i_llvm_fpga_pop_p1024f32_filter_weight_addr_067_replace_phi88_pop45_conv2d3x355_out_data_out_4_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist60_i_llvm_fpga_pop_p1024f32_filter_weight_addr_067_replace_phi88_pop45_conv2d3x355_out_data_out_4_mem_ab),
        .q_b(redist60_i_llvm_fpga_pop_p1024f32_filter_weight_addr_067_replace_phi88_pop45_conv2d3x355_out_data_out_4_mem_iq),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_b(),
        .clocken2(),
        .clocken3(),
        .aclr0(),
        .addressstall_a(),
        .addressstall_b(),
        .byteena_a(),
        .byteena_b(),
        .eccencbypass(),
        .eccencparity(),
        .sclr(),
        .address2_a(),
        .address2_b(),
        .q_a(),
        .eccstatus()
    );
    assign redist60_i_llvm_fpga_pop_p1024f32_filter_weight_addr_067_replace_phi88_pop45_conv2d3x355_out_data_out_4_mem_q = redist60_i_llvm_fpga_pop_p1024f32_filter_weight_addr_067_replace_phi88_pop45_conv2d3x355_out_data_out_4_mem_iq[63:0];

    // redist61_i_llvm_fpga_pop_p1024f32_filter_weight_addr_067_replace_phi88_pop45_conv2d3x355_out_data_out_6(DELAY,427)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist61_i_llvm_fpga_pop_p1024f32_filter_weight_addr_067_replace_phi88_pop45_conv2d3x355_out_data_out_6_delay_0 <= '0;
            redist61_i_llvm_fpga_pop_p1024f32_filter_weight_addr_067_replace_phi88_pop45_conv2d3x355_out_data_out_6_q <= '0;
        end
        else
        begin
            redist61_i_llvm_fpga_pop_p1024f32_filter_weight_addr_067_replace_phi88_pop45_conv2d3x355_out_data_out_6_delay_0 <= $unsigned(redist60_i_llvm_fpga_pop_p1024f32_filter_weight_addr_067_replace_phi88_pop45_conv2d3x355_out_data_out_4_mem_q);
            redist61_i_llvm_fpga_pop_p1024f32_filter_weight_addr_067_replace_phi88_pop45_conv2d3x355_out_data_out_6_q <= redist61_i_llvm_fpga_pop_p1024f32_filter_weight_addr_067_replace_phi88_pop45_conv2d3x355_out_data_out_6_delay_0;
        end
    end

    // i_phi_decision43_and_i0_conv2d3x350(LOGICAL,184)@8
    assign i_phi_decision43_and_i0_conv2d3x350_q = i_llvm_fpga_pop_i1_pop65_conv2d3x348_out_data_out & i_reduction_conv2d3x3_2_conv2d3x347_q;

    // i_unnamed_conv2d3x351(LOGICAL,192)@8
    assign i_unnamed_conv2d3x351_q = i_phi_decision43_and_i0_conv2d3x350_q ^ VCC_q;

    // i_first_cleanup_xor66_or_conv2d3x352(LOGICAL,95)@8
    assign i_first_cleanup_xor66_or_conv2d3x352_q = i_unnamed_conv2d3x351_q | i_first_cleanup_xor66_conv2d3x36_q;

    // valid_fanout_reg10(REG,254)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg10_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg10_q <= $unsigned(redist48_sync_together243_aunroll_x_in_i_valid_3_q);
        end
    end

    // valid_fanout_reg11(REG,255)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg11_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg11_q <= $unsigned(redist48_sync_together243_aunroll_x_in_i_valid_3_q);
        end
    end

    // i_llvm_fpga_push_i32_pad_sync_buffer168_push61_conv2d3x326(BLACKBOX,163)@5
    // out out_feedback_out_61@20000000
    // out out_feedback_valid_out_61@20000000
    conv2d3x3_i_llvm_fpga_push_i32_pad_sync_buffer168_push61_0 thei_llvm_fpga_push_i32_pad_sync_buffer168_push61_conv2d3x326 (
        .in_data_in(i_llvm_fpga_pop_i32_pad_sync_buffer168_pop61_conv2d3x325_out_data_out),
        .in_feedback_stall_in_61(i_llvm_fpga_pop_i32_pad_sync_buffer168_pop61_conv2d3x325_out_feedback_stall_out_61),
        .in_keep_going60_fanout_adaptor(i_llvm_fpga_fanout_i1_keep_going60_fanout_adaptor_conv2d3x310_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg11_q),
        .out_data_out(),
        .out_feedback_out_61(i_llvm_fpga_push_i32_pad_sync_buffer168_push61_conv2d3x326_out_feedback_out_61),
        .out_feedback_valid_out_61(i_llvm_fpga_push_i32_pad_sync_buffer168_push61_conv2d3x326_out_feedback_valid_out_61),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist5_sync_together243_aunroll_x_in_c0_eni46_5_tpl_4_notEnable(LOGICAL,474)
    assign redist5_sync_together243_aunroll_x_in_c0_eni46_5_tpl_4_notEnable_q = $unsigned(~ (VCC_q));

    // redist5_sync_together243_aunroll_x_in_c0_eni46_5_tpl_4_nor(LOGICAL,475)
    assign redist5_sync_together243_aunroll_x_in_c0_eni46_5_tpl_4_nor_q = ~ (redist5_sync_together243_aunroll_x_in_c0_eni46_5_tpl_4_notEnable_q | redist5_sync_together243_aunroll_x_in_c0_eni46_5_tpl_4_sticky_ena_q);

    // redist5_sync_together243_aunroll_x_in_c0_eni46_5_tpl_4_mem_last(CONSTANT,471)
    assign redist5_sync_together243_aunroll_x_in_c0_eni46_5_tpl_4_mem_last_q = $unsigned(2'b01);

    // redist5_sync_together243_aunroll_x_in_c0_eni46_5_tpl_4_cmp(LOGICAL,472)
    assign redist5_sync_together243_aunroll_x_in_c0_eni46_5_tpl_4_cmp_q = $unsigned(redist5_sync_together243_aunroll_x_in_c0_eni46_5_tpl_4_mem_last_q == redist5_sync_together243_aunroll_x_in_c0_eni46_5_tpl_4_rdcnt_q ? 1'b1 : 1'b0);

    // redist5_sync_together243_aunroll_x_in_c0_eni46_5_tpl_4_cmpReg(REG,473)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_sync_together243_aunroll_x_in_c0_eni46_5_tpl_4_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist5_sync_together243_aunroll_x_in_c0_eni46_5_tpl_4_cmpReg_q <= $unsigned(redist5_sync_together243_aunroll_x_in_c0_eni46_5_tpl_4_cmp_q);
        end
    end

    // redist5_sync_together243_aunroll_x_in_c0_eni46_5_tpl_4_sticky_ena(REG,476)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_sync_together243_aunroll_x_in_c0_eni46_5_tpl_4_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist5_sync_together243_aunroll_x_in_c0_eni46_5_tpl_4_nor_q == 1'b1)
        begin
            redist5_sync_together243_aunroll_x_in_c0_eni46_5_tpl_4_sticky_ena_q <= $unsigned(redist5_sync_together243_aunroll_x_in_c0_eni46_5_tpl_4_cmpReg_q);
        end
    end

    // redist5_sync_together243_aunroll_x_in_c0_eni46_5_tpl_4_enaAnd(LOGICAL,477)
    assign redist5_sync_together243_aunroll_x_in_c0_eni46_5_tpl_4_enaAnd_q = redist5_sync_together243_aunroll_x_in_c0_eni46_5_tpl_4_sticky_ena_q & VCC_q;

    // redist5_sync_together243_aunroll_x_in_c0_eni46_5_tpl_4_rdcnt(COUNTER,469)
    // low=0, high=2, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_sync_together243_aunroll_x_in_c0_eni46_5_tpl_4_rdcnt_i <= 2'd0;
            redist5_sync_together243_aunroll_x_in_c0_eni46_5_tpl_4_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist5_sync_together243_aunroll_x_in_c0_eni46_5_tpl_4_rdcnt_i == 2'd1)
            begin
                redist5_sync_together243_aunroll_x_in_c0_eni46_5_tpl_4_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist5_sync_together243_aunroll_x_in_c0_eni46_5_tpl_4_rdcnt_eq <= 1'b0;
            end
            if (redist5_sync_together243_aunroll_x_in_c0_eni46_5_tpl_4_rdcnt_eq == 1'b1)
            begin
                redist5_sync_together243_aunroll_x_in_c0_eni46_5_tpl_4_rdcnt_i <= $unsigned(redist5_sync_together243_aunroll_x_in_c0_eni46_5_tpl_4_rdcnt_i) + $unsigned(2'd2);
            end
            else
            begin
                redist5_sync_together243_aunroll_x_in_c0_eni46_5_tpl_4_rdcnt_i <= $unsigned(redist5_sync_together243_aunroll_x_in_c0_eni46_5_tpl_4_rdcnt_i) + $unsigned(2'd1);
            end
        end
    end
    assign redist5_sync_together243_aunroll_x_in_c0_eni46_5_tpl_4_rdcnt_q = redist5_sync_together243_aunroll_x_in_c0_eni46_5_tpl_4_rdcnt_i[1:0];

    // redist5_sync_together243_aunroll_x_in_c0_eni46_5_tpl_4_wraddr(REG,470)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_sync_together243_aunroll_x_in_c0_eni46_5_tpl_4_wraddr_q <= $unsigned(2'b10);
        end
        else
        begin
            redist5_sync_together243_aunroll_x_in_c0_eni46_5_tpl_4_wraddr_q <= $unsigned(redist5_sync_together243_aunroll_x_in_c0_eni46_5_tpl_4_rdcnt_q);
        end
    end

    // redist5_sync_together243_aunroll_x_in_c0_eni46_5_tpl_4_mem(DUALMEM,468)
    assign redist5_sync_together243_aunroll_x_in_c0_eni46_5_tpl_4_mem_ia = $unsigned(in_c0_eni46_5_tpl);
    assign redist5_sync_together243_aunroll_x_in_c0_eni46_5_tpl_4_mem_aa = redist5_sync_together243_aunroll_x_in_c0_eni46_5_tpl_4_wraddr_q;
    assign redist5_sync_together243_aunroll_x_in_c0_eni46_5_tpl_4_mem_ab = redist5_sync_together243_aunroll_x_in_c0_eni46_5_tpl_4_rdcnt_q;
    assign redist5_sync_together243_aunroll_x_in_c0_eni46_5_tpl_4_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(2),
        .numwords_a(3),
        .width_b(32),
        .widthad_b(2),
        .numwords_b(3),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .address_reg_b("CLOCK0"),
        .indata_reg_b("CLOCK0"),
        .rdcontrol_reg_b("CLOCK0"),
        .byteena_reg_b("CLOCK0"),
        .outdata_reg_b("CLOCK1"),
        .outdata_aclr_b("CLEAR1"),
        .clock_enable_input_a("NORMAL"),
        .clock_enable_input_b("NORMAL"),
        .clock_enable_output_b("NORMAL"),
        .read_during_write_mode_mixed_ports("DONT_CARE"),
        .power_up_uninitialized("TRUE"),
        .intended_device_family("Arria 10")
    ) redist5_sync_together243_aunroll_x_in_c0_eni46_5_tpl_4_mem_dmem (
        .clocken1(redist5_sync_together243_aunroll_x_in_c0_eni46_5_tpl_4_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist5_sync_together243_aunroll_x_in_c0_eni46_5_tpl_4_mem_reset0),
        .clock1(clock),
        .address_a(redist5_sync_together243_aunroll_x_in_c0_eni46_5_tpl_4_mem_aa),
        .data_a(redist5_sync_together243_aunroll_x_in_c0_eni46_5_tpl_4_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist5_sync_together243_aunroll_x_in_c0_eni46_5_tpl_4_mem_ab),
        .q_b(redist5_sync_together243_aunroll_x_in_c0_eni46_5_tpl_4_mem_iq),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_b(),
        .clocken2(),
        .clocken3(),
        .aclr0(),
        .addressstall_a(),
        .addressstall_b(),
        .byteena_a(),
        .byteena_b(),
        .eccencbypass(),
        .eccencparity(),
        .sclr(),
        .address2_a(),
        .address2_b(),
        .q_a(),
        .eccstatus()
    );
    assign redist5_sync_together243_aunroll_x_in_c0_eni46_5_tpl_4_mem_q = redist5_sync_together243_aunroll_x_in_c0_eni46_5_tpl_4_mem_iq[31:0];

    // i_llvm_fpga_pop_i32_pad_sync_buffer168_pop61_conv2d3x325(BLACKBOX,132)@5
    // out out_feedback_stall_out_61@20000000
    conv2d3x3_i_llvm_fpga_pop_i32_pad_sync_buffer168_pop61_0 thei_llvm_fpga_pop_i32_pad_sync_buffer168_pop61_conv2d3x325 (
        .in_data_in(redist5_sync_together243_aunroll_x_in_c0_eni46_5_tpl_4_mem_q),
        .in_dir(redist100_i_llvm_fpga_fanout_i1_c0_ene1671_fanout_adaptor_conv2d3x33_q_3_q),
        .in_feedback_in_61(i_llvm_fpga_push_i32_pad_sync_buffer168_push61_conv2d3x326_out_feedback_out_61),
        .in_feedback_valid_in_61(i_llvm_fpga_push_i32_pad_sync_buffer168_push61_conv2d3x326_out_feedback_valid_out_61),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg10_q),
        .out_data_out(i_llvm_fpga_pop_i32_pad_sync_buffer168_pop61_conv2d3x325_out_data_out),
        .out_feedback_stall_out_61(i_llvm_fpga_pop_i32_pad_sync_buffer168_pop61_conv2d3x325_out_feedback_stall_out_61),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist68_i_llvm_fpga_pop_i32_pad_sync_buffer168_pop61_conv2d3x325_out_data_out_1(DELAY,434)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist68_i_llvm_fpga_pop_i32_pad_sync_buffer168_pop61_conv2d3x325_out_data_out_1_q <= '0;
        end
        else
        begin
            redist68_i_llvm_fpga_pop_i32_pad_sync_buffer168_pop61_conv2d3x325_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i32_pad_sync_buffer168_pop61_conv2d3x325_out_data_out);
        end
    end

    // valid_fanout_reg6(REG,250)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg6_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg6_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg7(REG,251)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg7_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg7_q <= $unsigned(redist48_sync_together243_aunroll_x_in_i_valid_3_q);
        end
    end

    // redist66_i_llvm_fpga_pop_i32_stride_sync_buffer164_pop60_conv2d3x320_out_data_out_3_notEnable(LOGICAL,655)
    assign redist66_i_llvm_fpga_pop_i32_stride_sync_buffer164_pop60_conv2d3x320_out_data_out_3_notEnable_q = $unsigned(~ (VCC_q));

    // redist66_i_llvm_fpga_pop_i32_stride_sync_buffer164_pop60_conv2d3x320_out_data_out_3_nor(LOGICAL,656)
    assign redist66_i_llvm_fpga_pop_i32_stride_sync_buffer164_pop60_conv2d3x320_out_data_out_3_nor_q = ~ (redist66_i_llvm_fpga_pop_i32_stride_sync_buffer164_pop60_conv2d3x320_out_data_out_3_notEnable_q | redist66_i_llvm_fpga_pop_i32_stride_sync_buffer164_pop60_conv2d3x320_out_data_out_3_sticky_ena_q);

    // redist66_i_llvm_fpga_pop_i32_stride_sync_buffer164_pop60_conv2d3x320_out_data_out_3_cmpReg(REG,654)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist66_i_llvm_fpga_pop_i32_stride_sync_buffer164_pop60_conv2d3x320_out_data_out_3_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist66_i_llvm_fpga_pop_i32_stride_sync_buffer164_pop60_conv2d3x320_out_data_out_3_cmpReg_q <= $unsigned(VCC_q);
        end
    end

    // redist66_i_llvm_fpga_pop_i32_stride_sync_buffer164_pop60_conv2d3x320_out_data_out_3_sticky_ena(REG,657)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist66_i_llvm_fpga_pop_i32_stride_sync_buffer164_pop60_conv2d3x320_out_data_out_3_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist66_i_llvm_fpga_pop_i32_stride_sync_buffer164_pop60_conv2d3x320_out_data_out_3_nor_q == 1'b1)
        begin
            redist66_i_llvm_fpga_pop_i32_stride_sync_buffer164_pop60_conv2d3x320_out_data_out_3_sticky_ena_q <= $unsigned(redist66_i_llvm_fpga_pop_i32_stride_sync_buffer164_pop60_conv2d3x320_out_data_out_3_cmpReg_q);
        end
    end

    // redist66_i_llvm_fpga_pop_i32_stride_sync_buffer164_pop60_conv2d3x320_out_data_out_3_enaAnd(LOGICAL,658)
    assign redist66_i_llvm_fpga_pop_i32_stride_sync_buffer164_pop60_conv2d3x320_out_data_out_3_enaAnd_q = redist66_i_llvm_fpga_pop_i32_stride_sync_buffer164_pop60_conv2d3x320_out_data_out_3_sticky_ena_q & VCC_q;

    // redist66_i_llvm_fpga_pop_i32_stride_sync_buffer164_pop60_conv2d3x320_out_data_out_3_rdcnt(COUNTER,652)
    // low=0, high=1, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist66_i_llvm_fpga_pop_i32_stride_sync_buffer164_pop60_conv2d3x320_out_data_out_3_rdcnt_i <= 1'd0;
        end
        else
        begin
            redist66_i_llvm_fpga_pop_i32_stride_sync_buffer164_pop60_conv2d3x320_out_data_out_3_rdcnt_i <= $unsigned(redist66_i_llvm_fpga_pop_i32_stride_sync_buffer164_pop60_conv2d3x320_out_data_out_3_rdcnt_i) + $unsigned(1'd1);
        end
    end
    assign redist66_i_llvm_fpga_pop_i32_stride_sync_buffer164_pop60_conv2d3x320_out_data_out_3_rdcnt_q = redist66_i_llvm_fpga_pop_i32_stride_sync_buffer164_pop60_conv2d3x320_out_data_out_3_rdcnt_i[0:0];

    // redist66_i_llvm_fpga_pop_i32_stride_sync_buffer164_pop60_conv2d3x320_out_data_out_3_wraddr(REG,653)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist66_i_llvm_fpga_pop_i32_stride_sync_buffer164_pop60_conv2d3x320_out_data_out_3_wraddr_q <= $unsigned(1'b1);
        end
        else
        begin
            redist66_i_llvm_fpga_pop_i32_stride_sync_buffer164_pop60_conv2d3x320_out_data_out_3_wraddr_q <= $unsigned(redist66_i_llvm_fpga_pop_i32_stride_sync_buffer164_pop60_conv2d3x320_out_data_out_3_rdcnt_q);
        end
    end

    // redist66_i_llvm_fpga_pop_i32_stride_sync_buffer164_pop60_conv2d3x320_out_data_out_3_mem(DUALMEM,651)
    assign redist66_i_llvm_fpga_pop_i32_stride_sync_buffer164_pop60_conv2d3x320_out_data_out_3_mem_ia = $unsigned(i_llvm_fpga_pop_i32_stride_sync_buffer164_pop60_conv2d3x320_out_data_out);
    assign redist66_i_llvm_fpga_pop_i32_stride_sync_buffer164_pop60_conv2d3x320_out_data_out_3_mem_aa = redist66_i_llvm_fpga_pop_i32_stride_sync_buffer164_pop60_conv2d3x320_out_data_out_3_wraddr_q;
    assign redist66_i_llvm_fpga_pop_i32_stride_sync_buffer164_pop60_conv2d3x320_out_data_out_3_mem_ab = redist66_i_llvm_fpga_pop_i32_stride_sync_buffer164_pop60_conv2d3x320_out_data_out_3_rdcnt_q;
    assign redist66_i_llvm_fpga_pop_i32_stride_sync_buffer164_pop60_conv2d3x320_out_data_out_3_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(1),
        .numwords_a(2),
        .width_b(32),
        .widthad_b(1),
        .numwords_b(2),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .address_reg_b("CLOCK0"),
        .indata_reg_b("CLOCK0"),
        .rdcontrol_reg_b("CLOCK0"),
        .byteena_reg_b("CLOCK0"),
        .outdata_reg_b("CLOCK1"),
        .outdata_aclr_b("CLEAR1"),
        .clock_enable_input_a("NORMAL"),
        .clock_enable_input_b("NORMAL"),
        .clock_enable_output_b("NORMAL"),
        .read_during_write_mode_mixed_ports("DONT_CARE"),
        .power_up_uninitialized("TRUE"),
        .intended_device_family("Arria 10")
    ) redist66_i_llvm_fpga_pop_i32_stride_sync_buffer164_pop60_conv2d3x320_out_data_out_3_mem_dmem (
        .clocken1(redist66_i_llvm_fpga_pop_i32_stride_sync_buffer164_pop60_conv2d3x320_out_data_out_3_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist66_i_llvm_fpga_pop_i32_stride_sync_buffer164_pop60_conv2d3x320_out_data_out_3_mem_reset0),
        .clock1(clock),
        .address_a(redist66_i_llvm_fpga_pop_i32_stride_sync_buffer164_pop60_conv2d3x320_out_data_out_3_mem_aa),
        .data_a(redist66_i_llvm_fpga_pop_i32_stride_sync_buffer164_pop60_conv2d3x320_out_data_out_3_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist66_i_llvm_fpga_pop_i32_stride_sync_buffer164_pop60_conv2d3x320_out_data_out_3_mem_ab),
        .q_b(redist66_i_llvm_fpga_pop_i32_stride_sync_buffer164_pop60_conv2d3x320_out_data_out_3_mem_iq),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_b(),
        .clocken2(),
        .clocken3(),
        .aclr0(),
        .addressstall_a(),
        .addressstall_b(),
        .byteena_a(),
        .byteena_b(),
        .eccencbypass(),
        .eccencparity(),
        .sclr(),
        .address2_a(),
        .address2_b(),
        .q_a(),
        .eccstatus()
    );
    assign redist66_i_llvm_fpga_pop_i32_stride_sync_buffer164_pop60_conv2d3x320_out_data_out_3_mem_q = redist66_i_llvm_fpga_pop_i32_stride_sync_buffer164_pop60_conv2d3x320_out_data_out_3_mem_iq[31:0];

    // i_llvm_fpga_push_i32_stride_sync_buffer164_push60_conv2d3x321(BLACKBOX,164)@5
    // out out_feedback_out_60@20000000
    // out out_feedback_valid_out_60@20000000
    conv2d3x3_i_llvm_fpga_push_i32_stride_sync_buffer164_push60_0 thei_llvm_fpga_push_i32_stride_sync_buffer164_push60_conv2d3x321 (
        .in_data_in(redist66_i_llvm_fpga_pop_i32_stride_sync_buffer164_pop60_conv2d3x320_out_data_out_3_mem_q),
        .in_feedback_stall_in_60(i_llvm_fpga_pop_i32_stride_sync_buffer164_pop60_conv2d3x320_out_feedback_stall_out_60),
        .in_keep_going60_fanout_adaptor(i_llvm_fpga_fanout_i1_keep_going60_fanout_adaptor_conv2d3x310_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg7_q),
        .out_data_out(),
        .out_feedback_out_60(i_llvm_fpga_push_i32_stride_sync_buffer164_push60_conv2d3x321_out_feedback_out_60),
        .out_feedback_valid_out_60(i_llvm_fpga_push_i32_stride_sync_buffer164_push60_conv2d3x321_out_feedback_valid_out_60),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist3_sync_together243_aunroll_x_in_c0_eni46_3_tpl_1(DELAY,369)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_sync_together243_aunroll_x_in_c0_eni46_3_tpl_1_q <= '0;
        end
        else
        begin
            redist3_sync_together243_aunroll_x_in_c0_eni46_3_tpl_1_q <= $unsigned(in_c0_eni46_3_tpl);
        end
    end

    // i_llvm_fpga_pop_i32_stride_sync_buffer164_pop60_conv2d3x320(BLACKBOX,133)@2
    // out out_feedback_stall_out_60@20000000
    conv2d3x3_i_llvm_fpga_pop_i32_stride_sync_buffer164_pop60_0 thei_llvm_fpga_pop_i32_stride_sync_buffer164_pop60_conv2d3x320 (
        .in_data_in(redist3_sync_together243_aunroll_x_in_c0_eni46_3_tpl_1_q),
        .in_dir(i_llvm_fpga_fanout_i1_c0_ene1671_fanout_adaptor_conv2d3x33_q),
        .in_feedback_in_60(i_llvm_fpga_push_i32_stride_sync_buffer164_push60_conv2d3x321_out_feedback_out_60),
        .in_feedback_valid_in_60(i_llvm_fpga_push_i32_stride_sync_buffer164_push60_conv2d3x321_out_feedback_valid_out_60),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg6_q),
        .out_data_out(i_llvm_fpga_pop_i32_stride_sync_buffer164_pop60_conv2d3x320_out_data_out),
        .out_feedback_stall_out_60(i_llvm_fpga_pop_i32_stride_sync_buffer164_pop60_conv2d3x320_out_feedback_stall_out_60),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_mul23_conv2d3x324_bs2_merged_bit_select(BITSELECT,365)@2
    assign i_mul23_conv2d3x324_bs2_merged_bit_select_b = i_llvm_fpga_pop_i32_stride_sync_buffer164_pop60_conv2d3x320_out_data_out[31:18];
    assign i_mul23_conv2d3x324_bs2_merged_bit_select_c = i_llvm_fpga_pop_i32_stride_sync_buffer164_pop60_conv2d3x320_out_data_out[17:0];

    // valid_fanout_reg8(REG,252)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg8_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg8_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg9(REG,253)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg9_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg9_q <= $unsigned(redist48_sync_together243_aunroll_x_in_i_valid_3_q);
        end
    end

    // redist77_i_llvm_fpga_pop_i32_j_061_pop24176_pop63_conv2d3x322_out_data_out_3_notEnable(LOGICAL,704)
    assign redist77_i_llvm_fpga_pop_i32_j_061_pop24176_pop63_conv2d3x322_out_data_out_3_notEnable_q = $unsigned(~ (VCC_q));

    // redist77_i_llvm_fpga_pop_i32_j_061_pop24176_pop63_conv2d3x322_out_data_out_3_nor(LOGICAL,705)
    assign redist77_i_llvm_fpga_pop_i32_j_061_pop24176_pop63_conv2d3x322_out_data_out_3_nor_q = ~ (redist77_i_llvm_fpga_pop_i32_j_061_pop24176_pop63_conv2d3x322_out_data_out_3_notEnable_q | redist77_i_llvm_fpga_pop_i32_j_061_pop24176_pop63_conv2d3x322_out_data_out_3_sticky_ena_q);

    // redist77_i_llvm_fpga_pop_i32_j_061_pop24176_pop63_conv2d3x322_out_data_out_3_cmpReg(REG,703)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist77_i_llvm_fpga_pop_i32_j_061_pop24176_pop63_conv2d3x322_out_data_out_3_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist77_i_llvm_fpga_pop_i32_j_061_pop24176_pop63_conv2d3x322_out_data_out_3_cmpReg_q <= $unsigned(VCC_q);
        end
    end

    // redist77_i_llvm_fpga_pop_i32_j_061_pop24176_pop63_conv2d3x322_out_data_out_3_sticky_ena(REG,706)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist77_i_llvm_fpga_pop_i32_j_061_pop24176_pop63_conv2d3x322_out_data_out_3_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist77_i_llvm_fpga_pop_i32_j_061_pop24176_pop63_conv2d3x322_out_data_out_3_nor_q == 1'b1)
        begin
            redist77_i_llvm_fpga_pop_i32_j_061_pop24176_pop63_conv2d3x322_out_data_out_3_sticky_ena_q <= $unsigned(redist77_i_llvm_fpga_pop_i32_j_061_pop24176_pop63_conv2d3x322_out_data_out_3_cmpReg_q);
        end
    end

    // redist77_i_llvm_fpga_pop_i32_j_061_pop24176_pop63_conv2d3x322_out_data_out_3_enaAnd(LOGICAL,707)
    assign redist77_i_llvm_fpga_pop_i32_j_061_pop24176_pop63_conv2d3x322_out_data_out_3_enaAnd_q = redist77_i_llvm_fpga_pop_i32_j_061_pop24176_pop63_conv2d3x322_out_data_out_3_sticky_ena_q & VCC_q;

    // redist77_i_llvm_fpga_pop_i32_j_061_pop24176_pop63_conv2d3x322_out_data_out_3_rdcnt(COUNTER,701)
    // low=0, high=1, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist77_i_llvm_fpga_pop_i32_j_061_pop24176_pop63_conv2d3x322_out_data_out_3_rdcnt_i <= 1'd0;
        end
        else
        begin
            redist77_i_llvm_fpga_pop_i32_j_061_pop24176_pop63_conv2d3x322_out_data_out_3_rdcnt_i <= $unsigned(redist77_i_llvm_fpga_pop_i32_j_061_pop24176_pop63_conv2d3x322_out_data_out_3_rdcnt_i) + $unsigned(1'd1);
        end
    end
    assign redist77_i_llvm_fpga_pop_i32_j_061_pop24176_pop63_conv2d3x322_out_data_out_3_rdcnt_q = redist77_i_llvm_fpga_pop_i32_j_061_pop24176_pop63_conv2d3x322_out_data_out_3_rdcnt_i[0:0];

    // redist77_i_llvm_fpga_pop_i32_j_061_pop24176_pop63_conv2d3x322_out_data_out_3_wraddr(REG,702)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist77_i_llvm_fpga_pop_i32_j_061_pop24176_pop63_conv2d3x322_out_data_out_3_wraddr_q <= $unsigned(1'b1);
        end
        else
        begin
            redist77_i_llvm_fpga_pop_i32_j_061_pop24176_pop63_conv2d3x322_out_data_out_3_wraddr_q <= $unsigned(redist77_i_llvm_fpga_pop_i32_j_061_pop24176_pop63_conv2d3x322_out_data_out_3_rdcnt_q);
        end
    end

    // redist77_i_llvm_fpga_pop_i32_j_061_pop24176_pop63_conv2d3x322_out_data_out_3_mem(DUALMEM,700)
    assign redist77_i_llvm_fpga_pop_i32_j_061_pop24176_pop63_conv2d3x322_out_data_out_3_mem_ia = $unsigned(i_llvm_fpga_pop_i32_j_061_pop24176_pop63_conv2d3x322_out_data_out);
    assign redist77_i_llvm_fpga_pop_i32_j_061_pop24176_pop63_conv2d3x322_out_data_out_3_mem_aa = redist77_i_llvm_fpga_pop_i32_j_061_pop24176_pop63_conv2d3x322_out_data_out_3_wraddr_q;
    assign redist77_i_llvm_fpga_pop_i32_j_061_pop24176_pop63_conv2d3x322_out_data_out_3_mem_ab = redist77_i_llvm_fpga_pop_i32_j_061_pop24176_pop63_conv2d3x322_out_data_out_3_rdcnt_q;
    assign redist77_i_llvm_fpga_pop_i32_j_061_pop24176_pop63_conv2d3x322_out_data_out_3_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(1),
        .numwords_a(2),
        .width_b(32),
        .widthad_b(1),
        .numwords_b(2),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .address_reg_b("CLOCK0"),
        .indata_reg_b("CLOCK0"),
        .rdcontrol_reg_b("CLOCK0"),
        .byteena_reg_b("CLOCK0"),
        .outdata_reg_b("CLOCK1"),
        .outdata_aclr_b("CLEAR1"),
        .clock_enable_input_a("NORMAL"),
        .clock_enable_input_b("NORMAL"),
        .clock_enable_output_b("NORMAL"),
        .read_during_write_mode_mixed_ports("DONT_CARE"),
        .power_up_uninitialized("TRUE"),
        .intended_device_family("Arria 10")
    ) redist77_i_llvm_fpga_pop_i32_j_061_pop24176_pop63_conv2d3x322_out_data_out_3_mem_dmem (
        .clocken1(redist77_i_llvm_fpga_pop_i32_j_061_pop24176_pop63_conv2d3x322_out_data_out_3_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist77_i_llvm_fpga_pop_i32_j_061_pop24176_pop63_conv2d3x322_out_data_out_3_mem_reset0),
        .clock1(clock),
        .address_a(redist77_i_llvm_fpga_pop_i32_j_061_pop24176_pop63_conv2d3x322_out_data_out_3_mem_aa),
        .data_a(redist77_i_llvm_fpga_pop_i32_j_061_pop24176_pop63_conv2d3x322_out_data_out_3_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist77_i_llvm_fpga_pop_i32_j_061_pop24176_pop63_conv2d3x322_out_data_out_3_mem_ab),
        .q_b(redist77_i_llvm_fpga_pop_i32_j_061_pop24176_pop63_conv2d3x322_out_data_out_3_mem_iq),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_b(),
        .clocken2(),
        .clocken3(),
        .aclr0(),
        .addressstall_a(),
        .addressstall_b(),
        .byteena_a(),
        .byteena_b(),
        .eccencbypass(),
        .eccencparity(),
        .sclr(),
        .address2_a(),
        .address2_b(),
        .q_a(),
        .eccstatus()
    );
    assign redist77_i_llvm_fpga_pop_i32_j_061_pop24176_pop63_conv2d3x322_out_data_out_3_mem_q = redist77_i_llvm_fpga_pop_i32_j_061_pop24176_pop63_conv2d3x322_out_data_out_3_mem_iq[31:0];

    // i_llvm_fpga_push_i32_j_061_pop24176_push63_conv2d3x323(BLACKBOX,158)@5
    // out out_feedback_out_63@20000000
    // out out_feedback_valid_out_63@20000000
    conv2d3x3_i_llvm_fpga_push_i32_j_061_pop24176_push63_0 thei_llvm_fpga_push_i32_j_061_pop24176_push63_conv2d3x323 (
        .in_data_in(redist77_i_llvm_fpga_pop_i32_j_061_pop24176_pop63_conv2d3x322_out_data_out_3_mem_q),
        .in_feedback_stall_in_63(i_llvm_fpga_pop_i32_j_061_pop24176_pop63_conv2d3x322_out_feedback_stall_out_63),
        .in_keep_going60_fanout_adaptor(i_llvm_fpga_fanout_i1_keep_going60_fanout_adaptor_conv2d3x310_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg9_q),
        .out_data_out(),
        .out_feedback_out_63(i_llvm_fpga_push_i32_j_061_pop24176_push63_conv2d3x323_out_feedback_out_63),
        .out_feedback_valid_out_63(i_llvm_fpga_push_i32_j_061_pop24176_push63_conv2d3x323_out_feedback_valid_out_63),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist4_sync_together243_aunroll_x_in_c0_eni46_4_tpl_1(DELAY,370)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_sync_together243_aunroll_x_in_c0_eni46_4_tpl_1_q <= '0;
        end
        else
        begin
            redist4_sync_together243_aunroll_x_in_c0_eni46_4_tpl_1_q <= $unsigned(in_c0_eni46_4_tpl);
        end
    end

    // i_llvm_fpga_pop_i32_j_061_pop24176_pop63_conv2d3x322(BLACKBOX,127)@2
    // out out_feedback_stall_out_63@20000000
    conv2d3x3_i_llvm_fpga_pop_i32_j_061_pop24176_pop63_0 thei_llvm_fpga_pop_i32_j_061_pop24176_pop63_conv2d3x322 (
        .in_data_in(redist4_sync_together243_aunroll_x_in_c0_eni46_4_tpl_1_q),
        .in_dir(i_llvm_fpga_fanout_i1_c0_ene1671_fanout_adaptor1206_conv2d3x32_q),
        .in_feedback_in_63(i_llvm_fpga_push_i32_j_061_pop24176_push63_conv2d3x323_out_feedback_out_63),
        .in_feedback_valid_in_63(i_llvm_fpga_push_i32_j_061_pop24176_push63_conv2d3x323_out_feedback_valid_out_63),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg8_q),
        .out_data_out(i_llvm_fpga_pop_i32_j_061_pop24176_pop63_conv2d3x322_out_data_out),
        .out_feedback_stall_out_63(i_llvm_fpga_pop_i32_j_061_pop24176_pop63_conv2d3x322_out_feedback_stall_out_63),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_mul23_conv2d3x324_bs1_merged_bit_select(BITSELECT,364)@2
    assign i_mul23_conv2d3x324_bs1_merged_bit_select_b = i_llvm_fpga_pop_i32_j_061_pop24176_pop63_conv2d3x322_out_data_out[31:18];
    assign i_mul23_conv2d3x324_bs1_merged_bit_select_c = i_llvm_fpga_pop_i32_j_061_pop24176_pop63_conv2d3x322_out_data_out[17:0];

    // i_mul23_conv2d3x324_ma3_cma(CHAINMULTADD,363)@2 + 3
    assign i_mul23_conv2d3x324_ma3_cma_reset = ~ (resetn);
    assign i_mul23_conv2d3x324_ma3_cma_ena0 = 1'b1;
    assign i_mul23_conv2d3x324_ma3_cma_ena1 = i_mul23_conv2d3x324_ma3_cma_ena0;
    assign i_mul23_conv2d3x324_ma3_cma_ena2 = i_mul23_conv2d3x324_ma3_cma_ena0;

    assign i_mul23_conv2d3x324_ma3_cma_a0 = i_mul23_conv2d3x324_bs1_merged_bit_select_b;
    assign i_mul23_conv2d3x324_ma3_cma_c0 = i_mul23_conv2d3x324_bs2_merged_bit_select_c;
    assign i_mul23_conv2d3x324_ma3_cma_a1 = i_mul23_conv2d3x324_bs2_merged_bit_select_b;
    assign i_mul23_conv2d3x324_ma3_cma_c1 = i_mul23_conv2d3x324_bs1_merged_bit_select_c;
    twentynm_mac #(
        .operation_mode("m18x18_sumof2"),
        .use_chainadder("false"),
        .ay_scan_in_clock("0"),
        .ay_scan_in_width(14),
        .by_clock("0"),
        .by_width(14),
        .ax_clock("0"),
        .bx_clock("0"),
        .ax_width(18),
        .bx_width(18),
        .signed_may("false"),
        .signed_mby("false"),
        .signed_max("false"),
        .signed_mbx("false"),
        .input_pipeline_clock("2"),
        .output_clock("1"),
        .result_a_width(33)
    ) i_mul23_conv2d3x324_ma3_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul23_conv2d3x324_ma3_cma_ena2, i_mul23_conv2d3x324_ma3_cma_ena1, i_mul23_conv2d3x324_ma3_cma_ena0 }),
        .aclr({ i_mul23_conv2d3x324_ma3_cma_reset, i_mul23_conv2d3x324_ma3_cma_reset }),
        .ay(i_mul23_conv2d3x324_ma3_cma_a1),
        .by(i_mul23_conv2d3x324_ma3_cma_a0),
        .ax(i_mul23_conv2d3x324_ma3_cma_c1),
        .bx(i_mul23_conv2d3x324_ma3_cma_c0),
        .resulta(i_mul23_conv2d3x324_ma3_cma_s0),
        .accumulate(),
        .loadconst(),
        .negate(),
        .sub(),
        .az(),
        .coefsela(),
        .bz(),
        .coefselb(),
        .scanin(),
        .scanout(),
        .chainin(),
        .chainout(),
        .resultb(),
        .dftout()
    );
    dspba_delay_ver #( .width(33), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_mul23_conv2d3x324_ma3_cma_delay ( .xin(i_mul23_conv2d3x324_ma3_cma_s0), .xout(i_mul23_conv2d3x324_ma3_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul23_conv2d3x324_ma3_cma_q = $unsigned(i_mul23_conv2d3x324_ma3_cma_qq[32:0]);

    // i_mul23_conv2d3x324_sums_align_1(BITSHIFT,329)@5
    assign i_mul23_conv2d3x324_sums_align_1_qint = { i_mul23_conv2d3x324_ma3_cma_q, 18'b000000000000000000 };
    assign i_mul23_conv2d3x324_sums_align_1_q = i_mul23_conv2d3x324_sums_align_1_qint[50:0];

    // i_mul23_conv2d3x324_im0_cma(CHAINMULTADD,361)@2 + 3
    assign i_mul23_conv2d3x324_im0_cma_reset = ~ (resetn);
    assign i_mul23_conv2d3x324_im0_cma_ena0 = 1'b1;
    assign i_mul23_conv2d3x324_im0_cma_ena1 = i_mul23_conv2d3x324_im0_cma_ena0;
    assign i_mul23_conv2d3x324_im0_cma_ena2 = i_mul23_conv2d3x324_im0_cma_ena0;

    assign i_mul23_conv2d3x324_im0_cma_a0 = i_mul23_conv2d3x324_bs1_merged_bit_select_b;
    assign i_mul23_conv2d3x324_im0_cma_c0 = i_mul23_conv2d3x324_bs2_merged_bit_select_b;
    twentynm_mac #(
        .operation_mode("m18x18_full"),
        .ay_scan_in_clock("0"),
        .ay_scan_in_width(14),
        .ax_clock("0"),
        .ax_width(14),
        .signed_may("false"),
        .signed_max("false"),
        .input_pipeline_clock("2"),
        .output_clock("1"),
        .result_a_width(28)
    ) i_mul23_conv2d3x324_im0_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul23_conv2d3x324_im0_cma_ena2, i_mul23_conv2d3x324_im0_cma_ena1, i_mul23_conv2d3x324_im0_cma_ena0 }),
        .aclr({ i_mul23_conv2d3x324_im0_cma_reset, i_mul23_conv2d3x324_im0_cma_reset }),
        .ay(i_mul23_conv2d3x324_im0_cma_a0),
        .ax(i_mul23_conv2d3x324_im0_cma_c0),
        .resulta(i_mul23_conv2d3x324_im0_cma_s0),
        .accumulate(),
        .loadconst(),
        .negate(),
        .sub(),
        .az(),
        .coefsela(),
        .bx(),
        .by(),
        .bz(),
        .coefselb(),
        .scanin(),
        .scanout(),
        .chainin(),
        .chainout(),
        .resultb(),
        .dftout()
    );
    dspba_delay_ver #( .width(28), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_mul23_conv2d3x324_im0_cma_delay ( .xin(i_mul23_conv2d3x324_im0_cma_s0), .xout(i_mul23_conv2d3x324_im0_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul23_conv2d3x324_im0_cma_q = $unsigned(i_mul23_conv2d3x324_im0_cma_qq[27:0]);

    // i_mul23_conv2d3x324_im8_cma(CHAINMULTADD,362)@2 + 3
    assign i_mul23_conv2d3x324_im8_cma_reset = ~ (resetn);
    assign i_mul23_conv2d3x324_im8_cma_ena0 = 1'b1;
    assign i_mul23_conv2d3x324_im8_cma_ena1 = i_mul23_conv2d3x324_im8_cma_ena0;
    assign i_mul23_conv2d3x324_im8_cma_ena2 = i_mul23_conv2d3x324_im8_cma_ena0;

    assign i_mul23_conv2d3x324_im8_cma_a0 = i_mul23_conv2d3x324_bs1_merged_bit_select_c;
    assign i_mul23_conv2d3x324_im8_cma_c0 = i_mul23_conv2d3x324_bs2_merged_bit_select_c;
    twentynm_mac #(
        .operation_mode("m18x18_full"),
        .ay_scan_in_clock("0"),
        .ay_scan_in_width(18),
        .ax_clock("0"),
        .ax_width(18),
        .signed_may("false"),
        .signed_max("false"),
        .input_pipeline_clock("2"),
        .output_clock("1"),
        .result_a_width(36)
    ) i_mul23_conv2d3x324_im8_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul23_conv2d3x324_im8_cma_ena2, i_mul23_conv2d3x324_im8_cma_ena1, i_mul23_conv2d3x324_im8_cma_ena0 }),
        .aclr({ i_mul23_conv2d3x324_im8_cma_reset, i_mul23_conv2d3x324_im8_cma_reset }),
        .ay(i_mul23_conv2d3x324_im8_cma_a0),
        .ax(i_mul23_conv2d3x324_im8_cma_c0),
        .resulta(i_mul23_conv2d3x324_im8_cma_s0),
        .accumulate(),
        .loadconst(),
        .negate(),
        .sub(),
        .az(),
        .coefsela(),
        .bx(),
        .by(),
        .bz(),
        .coefselb(),
        .scanin(),
        .scanout(),
        .chainin(),
        .chainout(),
        .resultb(),
        .dftout()
    );
    dspba_delay_ver #( .width(36), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_mul23_conv2d3x324_im8_cma_delay ( .xin(i_mul23_conv2d3x324_im8_cma_s0), .xout(i_mul23_conv2d3x324_im8_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul23_conv2d3x324_im8_cma_q = $unsigned(i_mul23_conv2d3x324_im8_cma_qq[35:0]);

    // i_mul23_conv2d3x324_sums_join_0(BITJOIN,328)@5
    assign i_mul23_conv2d3x324_sums_join_0_q = {i_mul23_conv2d3x324_im0_cma_q, i_mul23_conv2d3x324_im8_cma_q};

    // i_mul23_conv2d3x324_sums_result_add_0_0(ADD,331)@5
    assign i_mul23_conv2d3x324_sums_result_add_0_0_a = {1'b0, i_mul23_conv2d3x324_sums_join_0_q};
    assign i_mul23_conv2d3x324_sums_result_add_0_0_b = {14'b00000000000000, i_mul23_conv2d3x324_sums_align_1_q};
    assign i_mul23_conv2d3x324_sums_result_add_0_0_o = $unsigned(i_mul23_conv2d3x324_sums_result_add_0_0_a) + $unsigned(i_mul23_conv2d3x324_sums_result_add_0_0_b);
    assign i_mul23_conv2d3x324_sums_result_add_0_0_q = i_mul23_conv2d3x324_sums_result_add_0_0_o[64:0];

    // bgTrunc_i_mul23_conv2d3x324_sel_x(BITSELECT,209)@5
    assign bgTrunc_i_mul23_conv2d3x324_sel_x_in = i_mul23_conv2d3x324_sums_result_add_0_0_q[63:0];
    assign bgTrunc_i_mul23_conv2d3x324_sel_x_b = bgTrunc_i_mul23_conv2d3x324_sel_x_in[31:0];

    // redist54_bgTrunc_i_mul23_conv2d3x324_sel_x_b_1(DELAY,420)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist54_bgTrunc_i_mul23_conv2d3x324_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist54_bgTrunc_i_mul23_conv2d3x324_sel_x_b_1_q <= $unsigned(bgTrunc_i_mul23_conv2d3x324_sel_x_b);
        end
    end

    // i_add24_conv2d3x327(SUB,81)@6
    assign i_add24_conv2d3x327_a = {1'b0, redist54_bgTrunc_i_mul23_conv2d3x324_sel_x_b_1_q};
    assign i_add24_conv2d3x327_b = {1'b0, redist68_i_llvm_fpga_pop_i32_pad_sync_buffer168_pop61_conv2d3x325_out_data_out_1_q};
    assign i_add24_conv2d3x327_o = $unsigned(i_add24_conv2d3x327_a) - $unsigned(i_add24_conv2d3x327_b);
    assign i_add24_conv2d3x327_q = i_add24_conv2d3x327_o[32:0];

    // bgTrunc_i_add24_conv2d3x327_sel_x(BITSELECT,204)@6
    assign bgTrunc_i_add24_conv2d3x327_sel_x_b = $unsigned(i_add24_conv2d3x327_q[31:0]);

    // redist56_bgTrunc_i_add24_conv2d3x327_sel_x_b_1(DELAY,422)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist56_bgTrunc_i_add24_conv2d3x327_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist56_bgTrunc_i_add24_conv2d3x327_sel_x_b_1_q <= $unsigned(bgTrunc_i_add24_conv2d3x327_sel_x_b);
        end
    end

    // i_sub25_conv2d3x329(ADD,188)@7
    assign i_sub25_conv2d3x329_a = {1'b0, redist56_bgTrunc_i_add24_conv2d3x327_sel_x_b_1_q};
    assign i_sub25_conv2d3x329_b = {1'b0, redist74_i_llvm_fpga_pop_i32_m_053_pop41_conv2d3x328_out_data_out_1_q};
    assign i_sub25_conv2d3x329_o = $unsigned(i_sub25_conv2d3x329_a) + $unsigned(i_sub25_conv2d3x329_b);
    assign i_sub25_conv2d3x329_q = i_sub25_conv2d3x329_o[32:0];

    // bgTrunc_i_sub25_conv2d3x329_sel_x(BITSELECT,211)@7
    assign bgTrunc_i_sub25_conv2d3x329_sel_x_b = i_sub25_conv2d3x329_q[31:0];

    // c_i32_1172_recast_x(CONSTANT,212)
    assign c_i32_1172_recast_x_q = $unsigned(32'b11111111111111111111111111111111);

    // i_cmp29_conv2d3x330(COMPARE,90)@7 + 1
    assign i_cmp29_conv2d3x330_a = $unsigned({{2{c_i32_1172_recast_x_q[31]}}, c_i32_1172_recast_x_q});
    assign i_cmp29_conv2d3x330_b = $unsigned({{2{bgTrunc_i_sub25_conv2d3x329_sel_x_b[31]}}, bgTrunc_i_sub25_conv2d3x329_sel_x_b});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_cmp29_conv2d3x330_o <= 34'b0;
        end
        else
        begin
            i_cmp29_conv2d3x330_o <= $unsigned($signed(i_cmp29_conv2d3x330_a) - $signed(i_cmp29_conv2d3x330_b));
        end
    end
    assign i_cmp29_conv2d3x330_c[0] = i_cmp29_conv2d3x330_o[33];

    // i_reduction_conv2d3x3_1_conv2d3x346(LOGICAL,186)@8
    assign i_reduction_conv2d3x3_1_conv2d3x346_q = redist93_i_llvm_fpga_pop_i1_cmp27126_pop52_conv2d3x344_out_data_out_3_q & i_cmp29_conv2d3x330_c;

    // valid_fanout_reg13(REG,257)@6 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg13_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg13_q <= $unsigned(redist50_sync_together243_aunroll_x_in_i_valid_5_q);
        end
    end

    // i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer15_conv2d3x332(BLACKBOX,170)@0
    // in in_i_dependence@7
    // in in_valid_in@7
    // out out_buffer_out@7
    // out out_valid_out@7
    conv2d3x3_i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer15_0 thei_llvm_fpga_sync_buffer_i32_input_size_sync_buffer15_conv2d3x332 (
        .in_buffer_in(in_input_size),
        .in_i_dependence(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg13_q),
        .out_buffer_out(i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer15_conv2d3x332_out_buffer_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_cmp31_conv2d3x333(COMPARE,91)@7 + 1
    assign i_cmp31_conv2d3x333_a = $unsigned({{2{bgTrunc_i_sub25_conv2d3x329_sel_x_b[31]}}, bgTrunc_i_sub25_conv2d3x329_sel_x_b});
    assign i_cmp31_conv2d3x333_b = $unsigned({{2{i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer15_conv2d3x332_out_buffer_out[31]}}, i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer15_conv2d3x332_out_buffer_out});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_cmp31_conv2d3x333_o <= 34'b0;
        end
        else
        begin
            i_cmp31_conv2d3x333_o <= $unsigned($signed(i_cmp31_conv2d3x333_a) - $signed(i_cmp31_conv2d3x333_b));
        end
    end
    assign i_cmp31_conv2d3x333_c[0] = i_cmp31_conv2d3x333_o[33];

    // i_reduction_conv2d3x3_0_conv2d3x343(LOGICAL,185)@8
    assign i_reduction_conv2d3x3_0_conv2d3x343_q = redist96_i_llvm_fpga_pop_i1_cmp26121_pop51_conv2d3x341_out_data_out_3_q & i_cmp31_conv2d3x333_c;

    // i_reduction_conv2d3x3_2_conv2d3x347(LOGICAL,187)@8
    assign i_reduction_conv2d3x3_2_conv2d3x347_q = i_reduction_conv2d3x3_0_conv2d3x343_q & i_reduction_conv2d3x3_1_conv2d3x346_q;

    // valid_fanout_reg19(REG,263)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg19_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg19_q <= $unsigned(redist48_sync_together243_aunroll_x_in_i_valid_3_q);
        end
    end

    // valid_fanout_reg20(REG,264)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg20_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg20_q <= $unsigned(redist48_sync_together243_aunroll_x_in_i_valid_3_q);
        end
    end

    // i_llvm_fpga_push_i1_cmp27126_push52_conv2d3x345(BLACKBOX,143)@5
    // out out_feedback_out_52@20000000
    // out out_feedback_valid_out_52@20000000
    conv2d3x3_i_llvm_fpga_push_i1_cmp27126_push52_0 thei_llvm_fpga_push_i1_cmp27126_push52_conv2d3x345 (
        .in_data_in(i_llvm_fpga_pop_i1_cmp27126_pop52_conv2d3x344_out_data_out),
        .in_feedback_stall_in_52(i_llvm_fpga_pop_i1_cmp27126_pop52_conv2d3x344_out_feedback_stall_out_52),
        .in_keep_going60_fanout_adaptor(i_llvm_fpga_fanout_i1_keep_going60_fanout_adaptor_conv2d3x310_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg20_q),
        .out_data_out(),
        .out_feedback_out_52(i_llvm_fpga_push_i1_cmp27126_push52_conv2d3x345_out_feedback_out_52),
        .out_feedback_valid_out_52(i_llvm_fpga_push_i1_cmp27126_push52_conv2d3x345_out_feedback_valid_out_52),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist8_sync_together243_aunroll_x_in_c0_eni46_8_tpl_4(DELAY,374)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_sync_together243_aunroll_x_in_c0_eni46_8_tpl_4_delay_0 <= '0;
            redist8_sync_together243_aunroll_x_in_c0_eni46_8_tpl_4_delay_1 <= '0;
            redist8_sync_together243_aunroll_x_in_c0_eni46_8_tpl_4_delay_2 <= '0;
            redist8_sync_together243_aunroll_x_in_c0_eni46_8_tpl_4_q <= '0;
        end
        else
        begin
            redist8_sync_together243_aunroll_x_in_c0_eni46_8_tpl_4_delay_0 <= $unsigned(in_c0_eni46_8_tpl);
            redist8_sync_together243_aunroll_x_in_c0_eni46_8_tpl_4_delay_1 <= redist8_sync_together243_aunroll_x_in_c0_eni46_8_tpl_4_delay_0;
            redist8_sync_together243_aunroll_x_in_c0_eni46_8_tpl_4_delay_2 <= redist8_sync_together243_aunroll_x_in_c0_eni46_8_tpl_4_delay_1;
            redist8_sync_together243_aunroll_x_in_c0_eni46_8_tpl_4_q <= redist8_sync_together243_aunroll_x_in_c0_eni46_8_tpl_4_delay_2;
        end
    end

    // i_llvm_fpga_pop_i1_cmp27126_pop52_conv2d3x344(BLACKBOX,114)@5
    // out out_feedback_stall_out_52@20000000
    conv2d3x3_i_llvm_fpga_pop_i1_cmp27126_pop52_0 thei_llvm_fpga_pop_i1_cmp27126_pop52_conv2d3x344 (
        .in_data_in(redist8_sync_together243_aunroll_x_in_c0_eni46_8_tpl_4_q),
        .in_dir(redist100_i_llvm_fpga_fanout_i1_c0_ene1671_fanout_adaptor_conv2d3x33_q_3_q),
        .in_feedback_in_52(i_llvm_fpga_push_i1_cmp27126_push52_conv2d3x345_out_feedback_out_52),
        .in_feedback_valid_in_52(i_llvm_fpga_push_i1_cmp27126_push52_conv2d3x345_out_feedback_valid_out_52),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg19_q),
        .out_data_out(i_llvm_fpga_pop_i1_cmp27126_pop52_conv2d3x344_out_data_out),
        .out_feedback_stall_out_52(i_llvm_fpga_pop_i1_cmp27126_pop52_conv2d3x344_out_feedback_stall_out_52),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist93_i_llvm_fpga_pop_i1_cmp27126_pop52_conv2d3x344_out_data_out_3(DELAY,459)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist93_i_llvm_fpga_pop_i1_cmp27126_pop52_conv2d3x344_out_data_out_3_delay_0 <= '0;
            redist93_i_llvm_fpga_pop_i1_cmp27126_pop52_conv2d3x344_out_data_out_3_delay_1 <= '0;
            redist93_i_llvm_fpga_pop_i1_cmp27126_pop52_conv2d3x344_out_data_out_3_q <= '0;
        end
        else
        begin
            redist93_i_llvm_fpga_pop_i1_cmp27126_pop52_conv2d3x344_out_data_out_3_delay_0 <= $unsigned(i_llvm_fpga_pop_i1_cmp27126_pop52_conv2d3x344_out_data_out);
            redist93_i_llvm_fpga_pop_i1_cmp27126_pop52_conv2d3x344_out_data_out_3_delay_1 <= redist93_i_llvm_fpga_pop_i1_cmp27126_pop52_conv2d3x344_out_data_out_3_delay_0;
            redist93_i_llvm_fpga_pop_i1_cmp27126_pop52_conv2d3x344_out_data_out_3_q <= redist93_i_llvm_fpga_pop_i1_cmp27126_pop52_conv2d3x344_out_data_out_3_delay_1;
        end
    end

    // valid_fanout_reg17(REG,261)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg17_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg17_q <= $unsigned(redist48_sync_together243_aunroll_x_in_i_valid_3_q);
        end
    end

    // valid_fanout_reg18(REG,262)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg18_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg18_q <= $unsigned(redist48_sync_together243_aunroll_x_in_i_valid_3_q);
        end
    end

    // i_llvm_fpga_push_i1_cmp26121_push51_conv2d3x342(BLACKBOX,140)@5
    // out out_feedback_out_51@20000000
    // out out_feedback_valid_out_51@20000000
    conv2d3x3_i_llvm_fpga_push_i1_cmp26121_push51_0 thei_llvm_fpga_push_i1_cmp26121_push51_conv2d3x342 (
        .in_data_in(i_llvm_fpga_pop_i1_cmp26121_pop51_conv2d3x341_out_data_out),
        .in_feedback_stall_in_51(i_llvm_fpga_pop_i1_cmp26121_pop51_conv2d3x341_out_feedback_stall_out_51),
        .in_keep_going60_fanout_adaptor(i_llvm_fpga_fanout_i1_keep_going60_fanout_adaptor_conv2d3x310_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg18_q),
        .out_data_out(),
        .out_feedback_out_51(i_llvm_fpga_push_i1_cmp26121_push51_conv2d3x342_out_feedback_out_51),
        .out_feedback_valid_out_51(i_llvm_fpga_push_i1_cmp26121_push51_conv2d3x342_out_feedback_valid_out_51),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist7_sync_together243_aunroll_x_in_c0_eni46_7_tpl_4(DELAY,373)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_sync_together243_aunroll_x_in_c0_eni46_7_tpl_4_delay_0 <= '0;
            redist7_sync_together243_aunroll_x_in_c0_eni46_7_tpl_4_delay_1 <= '0;
            redist7_sync_together243_aunroll_x_in_c0_eni46_7_tpl_4_delay_2 <= '0;
            redist7_sync_together243_aunroll_x_in_c0_eni46_7_tpl_4_q <= '0;
        end
        else
        begin
            redist7_sync_together243_aunroll_x_in_c0_eni46_7_tpl_4_delay_0 <= $unsigned(in_c0_eni46_7_tpl);
            redist7_sync_together243_aunroll_x_in_c0_eni46_7_tpl_4_delay_1 <= redist7_sync_together243_aunroll_x_in_c0_eni46_7_tpl_4_delay_0;
            redist7_sync_together243_aunroll_x_in_c0_eni46_7_tpl_4_delay_2 <= redist7_sync_together243_aunroll_x_in_c0_eni46_7_tpl_4_delay_1;
            redist7_sync_together243_aunroll_x_in_c0_eni46_7_tpl_4_q <= redist7_sync_together243_aunroll_x_in_c0_eni46_7_tpl_4_delay_2;
        end
    end

    // i_llvm_fpga_pop_i1_cmp26121_pop51_conv2d3x341(BLACKBOX,111)@5
    // out out_feedback_stall_out_51@20000000
    conv2d3x3_i_llvm_fpga_pop_i1_cmp26121_pop51_0 thei_llvm_fpga_pop_i1_cmp26121_pop51_conv2d3x341 (
        .in_data_in(redist7_sync_together243_aunroll_x_in_c0_eni46_7_tpl_4_q),
        .in_dir(redist100_i_llvm_fpga_fanout_i1_c0_ene1671_fanout_adaptor_conv2d3x33_q_3_q),
        .in_feedback_in_51(i_llvm_fpga_push_i1_cmp26121_push51_conv2d3x342_out_feedback_out_51),
        .in_feedback_valid_in_51(i_llvm_fpga_push_i1_cmp26121_push51_conv2d3x342_out_feedback_valid_out_51),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg17_q),
        .out_data_out(i_llvm_fpga_pop_i1_cmp26121_pop51_conv2d3x341_out_data_out),
        .out_feedback_stall_out_51(i_llvm_fpga_pop_i1_cmp26121_pop51_conv2d3x341_out_feedback_stall_out_51),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist96_i_llvm_fpga_pop_i1_cmp26121_pop51_conv2d3x341_out_data_out_3(DELAY,462)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist96_i_llvm_fpga_pop_i1_cmp26121_pop51_conv2d3x341_out_data_out_3_delay_0 <= '0;
            redist96_i_llvm_fpga_pop_i1_cmp26121_pop51_conv2d3x341_out_data_out_3_delay_1 <= '0;
            redist96_i_llvm_fpga_pop_i1_cmp26121_pop51_conv2d3x341_out_data_out_3_q <= '0;
        end
        else
        begin
            redist96_i_llvm_fpga_pop_i1_cmp26121_pop51_conv2d3x341_out_data_out_3_delay_0 <= $unsigned(i_llvm_fpga_pop_i1_cmp26121_pop51_conv2d3x341_out_data_out);
            redist96_i_llvm_fpga_pop_i1_cmp26121_pop51_conv2d3x341_out_data_out_3_delay_1 <= redist96_i_llvm_fpga_pop_i1_cmp26121_pop51_conv2d3x341_out_data_out_3_delay_0;
            redist96_i_llvm_fpga_pop_i1_cmp26121_pop51_conv2d3x341_out_data_out_3_q <= redist96_i_llvm_fpga_pop_i1_cmp26121_pop51_conv2d3x341_out_data_out_3_delay_1;
        end
    end

    // redist81_i_llvm_fpga_pop_i32_add35183_pop67_conv2d3x335_out_data_out_3_notEnable(LOGICAL,736)
    assign redist81_i_llvm_fpga_pop_i32_add35183_pop67_conv2d3x335_out_data_out_3_notEnable_q = $unsigned(~ (VCC_q));

    // redist81_i_llvm_fpga_pop_i32_add35183_pop67_conv2d3x335_out_data_out_3_nor(LOGICAL,737)
    assign redist81_i_llvm_fpga_pop_i32_add35183_pop67_conv2d3x335_out_data_out_3_nor_q = ~ (redist81_i_llvm_fpga_pop_i32_add35183_pop67_conv2d3x335_out_data_out_3_notEnable_q | redist81_i_llvm_fpga_pop_i32_add35183_pop67_conv2d3x335_out_data_out_3_sticky_ena_q);

    // redist81_i_llvm_fpga_pop_i32_add35183_pop67_conv2d3x335_out_data_out_3_cmpReg(REG,735)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist81_i_llvm_fpga_pop_i32_add35183_pop67_conv2d3x335_out_data_out_3_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist81_i_llvm_fpga_pop_i32_add35183_pop67_conv2d3x335_out_data_out_3_cmpReg_q <= $unsigned(VCC_q);
        end
    end

    // redist81_i_llvm_fpga_pop_i32_add35183_pop67_conv2d3x335_out_data_out_3_sticky_ena(REG,738)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist81_i_llvm_fpga_pop_i32_add35183_pop67_conv2d3x335_out_data_out_3_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist81_i_llvm_fpga_pop_i32_add35183_pop67_conv2d3x335_out_data_out_3_nor_q == 1'b1)
        begin
            redist81_i_llvm_fpga_pop_i32_add35183_pop67_conv2d3x335_out_data_out_3_sticky_ena_q <= $unsigned(redist81_i_llvm_fpga_pop_i32_add35183_pop67_conv2d3x335_out_data_out_3_cmpReg_q);
        end
    end

    // redist81_i_llvm_fpga_pop_i32_add35183_pop67_conv2d3x335_out_data_out_3_enaAnd(LOGICAL,739)
    assign redist81_i_llvm_fpga_pop_i32_add35183_pop67_conv2d3x335_out_data_out_3_enaAnd_q = redist81_i_llvm_fpga_pop_i32_add35183_pop67_conv2d3x335_out_data_out_3_sticky_ena_q & VCC_q;

    // redist81_i_llvm_fpga_pop_i32_add35183_pop67_conv2d3x335_out_data_out_3_rdcnt(COUNTER,733)
    // low=0, high=1, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist81_i_llvm_fpga_pop_i32_add35183_pop67_conv2d3x335_out_data_out_3_rdcnt_i <= 1'd0;
        end
        else
        begin
            redist81_i_llvm_fpga_pop_i32_add35183_pop67_conv2d3x335_out_data_out_3_rdcnt_i <= $unsigned(redist81_i_llvm_fpga_pop_i32_add35183_pop67_conv2d3x335_out_data_out_3_rdcnt_i) + $unsigned(1'd1);
        end
    end
    assign redist81_i_llvm_fpga_pop_i32_add35183_pop67_conv2d3x335_out_data_out_3_rdcnt_q = redist81_i_llvm_fpga_pop_i32_add35183_pop67_conv2d3x335_out_data_out_3_rdcnt_i[0:0];

    // valid_fanout_reg14(REG,258)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg14_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg14_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg15(REG,259)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg15_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg15_q <= $unsigned(redist48_sync_together243_aunroll_x_in_i_valid_3_q);
        end
    end

    // i_llvm_fpga_push_i32_add35183_push67_conv2d3x336(BLACKBOX,156)@5
    // out out_feedback_out_67@20000000
    // out out_feedback_valid_out_67@20000000
    conv2d3x3_i_llvm_fpga_push_i32_add35183_push67_0 thei_llvm_fpga_push_i32_add35183_push67_conv2d3x336 (
        .in_data_in(redist81_i_llvm_fpga_pop_i32_add35183_pop67_conv2d3x335_out_data_out_3_mem_q),
        .in_feedback_stall_in_67(i_llvm_fpga_pop_i32_add35183_pop67_conv2d3x335_out_feedback_stall_out_67),
        .in_keep_going60_fanout_adaptor(i_llvm_fpga_fanout_i1_keep_going60_fanout_adaptor_conv2d3x310_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg15_q),
        .out_data_out(),
        .out_feedback_out_67(i_llvm_fpga_push_i32_add35183_push67_conv2d3x336_out_feedback_out_67),
        .out_feedback_valid_out_67(i_llvm_fpga_push_i32_add35183_push67_conv2d3x336_out_feedback_valid_out_67),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist6_sync_together243_aunroll_x_in_c0_eni46_6_tpl_1(DELAY,372)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_sync_together243_aunroll_x_in_c0_eni46_6_tpl_1_q <= '0;
        end
        else
        begin
            redist6_sync_together243_aunroll_x_in_c0_eni46_6_tpl_1_q <= $unsigned(in_c0_eni46_6_tpl);
        end
    end

    // i_llvm_fpga_pop_i32_add35183_pop67_conv2d3x335(BLACKBOX,125)@2
    // out out_feedback_stall_out_67@20000000
    conv2d3x3_i_llvm_fpga_pop_i32_add35183_pop67_0 thei_llvm_fpga_pop_i32_add35183_pop67_conv2d3x335 (
        .in_data_in(redist6_sync_together243_aunroll_x_in_c0_eni46_6_tpl_1_q),
        .in_dir(i_llvm_fpga_fanout_i1_c0_ene1671_fanout_adaptor1206_conv2d3x32_q),
        .in_feedback_in_67(i_llvm_fpga_push_i32_add35183_push67_conv2d3x336_out_feedback_out_67),
        .in_feedback_valid_in_67(i_llvm_fpga_push_i32_add35183_push67_conv2d3x336_out_feedback_valid_out_67),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg14_q),
        .out_data_out(i_llvm_fpga_pop_i32_add35183_pop67_conv2d3x335_out_data_out),
        .out_feedback_stall_out_67(i_llvm_fpga_pop_i32_add35183_pop67_conv2d3x335_out_feedback_stall_out_67),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist81_i_llvm_fpga_pop_i32_add35183_pop67_conv2d3x335_out_data_out_3_wraddr(REG,734)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist81_i_llvm_fpga_pop_i32_add35183_pop67_conv2d3x335_out_data_out_3_wraddr_q <= $unsigned(1'b1);
        end
        else
        begin
            redist81_i_llvm_fpga_pop_i32_add35183_pop67_conv2d3x335_out_data_out_3_wraddr_q <= $unsigned(redist81_i_llvm_fpga_pop_i32_add35183_pop67_conv2d3x335_out_data_out_3_rdcnt_q);
        end
    end

    // redist81_i_llvm_fpga_pop_i32_add35183_pop67_conv2d3x335_out_data_out_3_mem(DUALMEM,732)
    assign redist81_i_llvm_fpga_pop_i32_add35183_pop67_conv2d3x335_out_data_out_3_mem_ia = $unsigned(i_llvm_fpga_pop_i32_add35183_pop67_conv2d3x335_out_data_out);
    assign redist81_i_llvm_fpga_pop_i32_add35183_pop67_conv2d3x335_out_data_out_3_mem_aa = redist81_i_llvm_fpga_pop_i32_add35183_pop67_conv2d3x335_out_data_out_3_wraddr_q;
    assign redist81_i_llvm_fpga_pop_i32_add35183_pop67_conv2d3x335_out_data_out_3_mem_ab = redist81_i_llvm_fpga_pop_i32_add35183_pop67_conv2d3x335_out_data_out_3_rdcnt_q;
    assign redist81_i_llvm_fpga_pop_i32_add35183_pop67_conv2d3x335_out_data_out_3_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(1),
        .numwords_a(2),
        .width_b(32),
        .widthad_b(1),
        .numwords_b(2),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .address_reg_b("CLOCK0"),
        .indata_reg_b("CLOCK0"),
        .rdcontrol_reg_b("CLOCK0"),
        .byteena_reg_b("CLOCK0"),
        .outdata_reg_b("CLOCK1"),
        .outdata_aclr_b("CLEAR1"),
        .clock_enable_input_a("NORMAL"),
        .clock_enable_input_b("NORMAL"),
        .clock_enable_output_b("NORMAL"),
        .read_during_write_mode_mixed_ports("DONT_CARE"),
        .power_up_uninitialized("TRUE"),
        .intended_device_family("Arria 10")
    ) redist81_i_llvm_fpga_pop_i32_add35183_pop67_conv2d3x335_out_data_out_3_mem_dmem (
        .clocken1(redist81_i_llvm_fpga_pop_i32_add35183_pop67_conv2d3x335_out_data_out_3_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist81_i_llvm_fpga_pop_i32_add35183_pop67_conv2d3x335_out_data_out_3_mem_reset0),
        .clock1(clock),
        .address_a(redist81_i_llvm_fpga_pop_i32_add35183_pop67_conv2d3x335_out_data_out_3_mem_aa),
        .data_a(redist81_i_llvm_fpga_pop_i32_add35183_pop67_conv2d3x335_out_data_out_3_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist81_i_llvm_fpga_pop_i32_add35183_pop67_conv2d3x335_out_data_out_3_mem_ab),
        .q_b(redist81_i_llvm_fpga_pop_i32_add35183_pop67_conv2d3x335_out_data_out_3_mem_iq),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_b(),
        .clocken2(),
        .clocken3(),
        .aclr0(),
        .addressstall_a(),
        .addressstall_b(),
        .byteena_a(),
        .byteena_b(),
        .eccencbypass(),
        .eccencparity(),
        .sclr(),
        .address2_a(),
        .address2_b(),
        .q_a(),
        .eccstatus()
    );
    assign redist81_i_llvm_fpga_pop_i32_add35183_pop67_conv2d3x335_out_data_out_3_mem_q = redist81_i_llvm_fpga_pop_i32_add35183_pop67_conv2d3x335_out_data_out_3_mem_iq[31:0];

    // redist82_i_llvm_fpga_pop_i32_add35183_pop67_conv2d3x335_out_data_out_5(DELAY,448)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist82_i_llvm_fpga_pop_i32_add35183_pop67_conv2d3x335_out_data_out_5_delay_0 <= '0;
            redist82_i_llvm_fpga_pop_i32_add35183_pop67_conv2d3x335_out_data_out_5_q <= '0;
        end
        else
        begin
            redist82_i_llvm_fpga_pop_i32_add35183_pop67_conv2d3x335_out_data_out_5_delay_0 <= $unsigned(redist81_i_llvm_fpga_pop_i32_add35183_pop67_conv2d3x335_out_data_out_3_mem_q);
            redist82_i_llvm_fpga_pop_i32_add35183_pop67_conv2d3x335_out_data_out_5_q <= redist82_i_llvm_fpga_pop_i32_add35183_pop67_conv2d3x335_out_data_out_5_delay_0;
        end
    end

    // i_add36_conv2d3x337(ADD,82)@7
    assign i_add36_conv2d3x337_a = {1'b0, bgTrunc_i_sub25_conv2d3x329_sel_x_b};
    assign i_add36_conv2d3x337_b = {1'b0, redist82_i_llvm_fpga_pop_i32_add35183_pop67_conv2d3x335_out_data_out_5_q};
    assign i_add36_conv2d3x337_o = $unsigned(i_add36_conv2d3x337_a) + $unsigned(i_add36_conv2d3x337_b);
    assign i_add36_conv2d3x337_q = i_add36_conv2d3x337_o[32:0];

    // bgTrunc_i_add36_conv2d3x337_sel_x(BITSELECT,205)@7
    assign bgTrunc_i_add36_conv2d3x337_sel_x_b = i_add36_conv2d3x337_q[31:0];

    // redist55_bgTrunc_i_add36_conv2d3x337_sel_x_b_1(DELAY,421)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist55_bgTrunc_i_add36_conv2d3x337_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist55_bgTrunc_i_add36_conv2d3x337_sel_x_b_1_q <= $unsigned(bgTrunc_i_add36_conv2d3x337_sel_x_b);
        end
    end

    // i_idxprom37_conv2d3x338_sel_x(BITSELECT,231)@8
    assign i_idxprom37_conv2d3x338_sel_x_b = $unsigned({{32{redist55_bgTrunc_i_add36_conv2d3x337_sel_x_b_1_q[31]}}, redist55_bgTrunc_i_add36_conv2d3x337_sel_x_b_1_q[31:0]});

    // i_arrayidx385_conv2d3x30_narrow_x(BITSELECT,216)@8
    assign i_arrayidx385_conv2d3x30_narrow_x_b = i_idxprom37_conv2d3x338_sel_x_b[61:0];

    // i_arrayidx385_conv2d3x30_shift_join_x(BITJOIN,217)@8
    assign i_arrayidx385_conv2d3x30_shift_join_x_q = {i_arrayidx385_conv2d3x30_narrow_x_b, i_arrayidx385_conv2d3x340_vt_const_1_q};

    // valid_fanout_reg16(REG,260)@7 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg16_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg16_q <= $unsigned(redist51_sync_together243_aunroll_x_in_i_valid_6_q);
        end
    end

    // i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer28_conv2d3x339(BLACKBOX,171)@0
    // in in_i_dependence@8
    // in in_valid_in@8
    // out out_buffer_out@8
    // out out_valid_out@8
    conv2d3x3_i_llvm_fpga_sync_buffer_p1024f0000t_im_sync_buffer28_0 thei_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer28_conv2d3x339 (
        .in_buffer_in(in_input_im),
        .in_i_dependence(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg16_q),
        .out_buffer_out(i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer28_conv2d3x339_out_buffer_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer28_conv2d3x339_vt_select_63(BITSELECT,174)@8
    assign i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer28_conv2d3x339_vt_select_63_b = i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer28_conv2d3x339_out_buffer_out[63:10];

    // i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer28_conv2d3x339_vt_const_9(CONSTANT,172)
    assign i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer28_conv2d3x339_vt_const_9_q = $unsigned(10'b0000000000);

    // i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer28_conv2d3x339_vt_join(BITJOIN,173)@8
    assign i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer28_conv2d3x339_vt_join_q = {i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer28_conv2d3x339_vt_select_63_b, i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer28_conv2d3x339_vt_const_9_q};

    // i_arrayidx385_conv2d3x30_add_x(ADD,214)@8
    assign i_arrayidx385_conv2d3x30_add_x_a = {1'b0, i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer28_conv2d3x339_vt_join_q};
    assign i_arrayidx385_conv2d3x30_add_x_b = {1'b0, i_arrayidx385_conv2d3x30_shift_join_x_q};
    assign i_arrayidx385_conv2d3x30_add_x_o = $unsigned(i_arrayidx385_conv2d3x30_add_x_a) + $unsigned(i_arrayidx385_conv2d3x30_add_x_b);
    assign i_arrayidx385_conv2d3x30_add_x_q = i_arrayidx385_conv2d3x30_add_x_o[64:0];

    // i_arrayidx385_conv2d3x30_dupName_0_trunc_sel_x(BITSELECT,219)@8
    assign i_arrayidx385_conv2d3x30_dupName_0_trunc_sel_x_b = i_arrayidx385_conv2d3x30_add_x_q[63:0];

    // i_arrayidx385_conv2d3x340_vt_select_63(BITSELECT,86)@8
    assign i_arrayidx385_conv2d3x340_vt_select_63_b = i_arrayidx385_conv2d3x30_dupName_0_trunc_sel_x_b[63:2];

    // i_arrayidx385_conv2d3x340_vt_join(BITJOIN,85)@8
    assign i_arrayidx385_conv2d3x340_vt_join_q = {i_arrayidx385_conv2d3x340_vt_select_63_b, i_arrayidx385_conv2d3x340_vt_const_1_q};

    // redist57_bgTrunc_i_add24_conv2d3x327_sel_x_b_2(DELAY,423)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist57_bgTrunc_i_add24_conv2d3x327_sel_x_b_2_q <= '0;
        end
        else
        begin
            redist57_bgTrunc_i_add24_conv2d3x327_sel_x_b_2_q <= $unsigned(redist56_bgTrunc_i_add24_conv2d3x327_sel_x_b_1_q);
        end
    end

    // redist69_i_llvm_fpga_pop_i32_pad_sync_buffer168_pop61_conv2d3x325_out_data_out_3(DELAY,435)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist69_i_llvm_fpga_pop_i32_pad_sync_buffer168_pop61_conv2d3x325_out_data_out_3_delay_0 <= '0;
            redist69_i_llvm_fpga_pop_i32_pad_sync_buffer168_pop61_conv2d3x325_out_data_out_3_q <= '0;
        end
        else
        begin
            redist69_i_llvm_fpga_pop_i32_pad_sync_buffer168_pop61_conv2d3x325_out_data_out_3_delay_0 <= $unsigned(redist68_i_llvm_fpga_pop_i32_pad_sync_buffer168_pop61_conv2d3x325_out_data_out_1_q);
            redist69_i_llvm_fpga_pop_i32_pad_sync_buffer168_pop61_conv2d3x325_out_data_out_3_q <= redist69_i_llvm_fpga_pop_i32_pad_sync_buffer168_pop61_conv2d3x325_out_data_out_3_delay_0;
        end
    end

    // redist78_i_llvm_fpga_pop_i32_j_061_pop24176_pop63_conv2d3x322_out_data_out_6_notEnable(LOGICAL,712)
    assign redist78_i_llvm_fpga_pop_i32_j_061_pop24176_pop63_conv2d3x322_out_data_out_6_notEnable_q = $unsigned(~ (VCC_q));

    // redist78_i_llvm_fpga_pop_i32_j_061_pop24176_pop63_conv2d3x322_out_data_out_6_nor(LOGICAL,713)
    assign redist78_i_llvm_fpga_pop_i32_j_061_pop24176_pop63_conv2d3x322_out_data_out_6_nor_q = ~ (redist78_i_llvm_fpga_pop_i32_j_061_pop24176_pop63_conv2d3x322_out_data_out_6_notEnable_q | redist78_i_llvm_fpga_pop_i32_j_061_pop24176_pop63_conv2d3x322_out_data_out_6_sticky_ena_q);

    // redist78_i_llvm_fpga_pop_i32_j_061_pop24176_pop63_conv2d3x322_out_data_out_6_cmpReg(REG,711)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist78_i_llvm_fpga_pop_i32_j_061_pop24176_pop63_conv2d3x322_out_data_out_6_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist78_i_llvm_fpga_pop_i32_j_061_pop24176_pop63_conv2d3x322_out_data_out_6_cmpReg_q <= $unsigned(VCC_q);
        end
    end

    // redist78_i_llvm_fpga_pop_i32_j_061_pop24176_pop63_conv2d3x322_out_data_out_6_sticky_ena(REG,714)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist78_i_llvm_fpga_pop_i32_j_061_pop24176_pop63_conv2d3x322_out_data_out_6_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist78_i_llvm_fpga_pop_i32_j_061_pop24176_pop63_conv2d3x322_out_data_out_6_nor_q == 1'b1)
        begin
            redist78_i_llvm_fpga_pop_i32_j_061_pop24176_pop63_conv2d3x322_out_data_out_6_sticky_ena_q <= $unsigned(redist78_i_llvm_fpga_pop_i32_j_061_pop24176_pop63_conv2d3x322_out_data_out_6_cmpReg_q);
        end
    end

    // redist78_i_llvm_fpga_pop_i32_j_061_pop24176_pop63_conv2d3x322_out_data_out_6_enaAnd(LOGICAL,715)
    assign redist78_i_llvm_fpga_pop_i32_j_061_pop24176_pop63_conv2d3x322_out_data_out_6_enaAnd_q = redist78_i_llvm_fpga_pop_i32_j_061_pop24176_pop63_conv2d3x322_out_data_out_6_sticky_ena_q & VCC_q;

    // redist78_i_llvm_fpga_pop_i32_j_061_pop24176_pop63_conv2d3x322_out_data_out_6_rdcnt(COUNTER,709)
    // low=0, high=1, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist78_i_llvm_fpga_pop_i32_j_061_pop24176_pop63_conv2d3x322_out_data_out_6_rdcnt_i <= 1'd0;
        end
        else
        begin
            redist78_i_llvm_fpga_pop_i32_j_061_pop24176_pop63_conv2d3x322_out_data_out_6_rdcnt_i <= $unsigned(redist78_i_llvm_fpga_pop_i32_j_061_pop24176_pop63_conv2d3x322_out_data_out_6_rdcnt_i) + $unsigned(1'd1);
        end
    end
    assign redist78_i_llvm_fpga_pop_i32_j_061_pop24176_pop63_conv2d3x322_out_data_out_6_rdcnt_q = redist78_i_llvm_fpga_pop_i32_j_061_pop24176_pop63_conv2d3x322_out_data_out_6_rdcnt_i[0:0];

    // redist78_i_llvm_fpga_pop_i32_j_061_pop24176_pop63_conv2d3x322_out_data_out_6_wraddr(REG,710)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist78_i_llvm_fpga_pop_i32_j_061_pop24176_pop63_conv2d3x322_out_data_out_6_wraddr_q <= $unsigned(1'b1);
        end
        else
        begin
            redist78_i_llvm_fpga_pop_i32_j_061_pop24176_pop63_conv2d3x322_out_data_out_6_wraddr_q <= $unsigned(redist78_i_llvm_fpga_pop_i32_j_061_pop24176_pop63_conv2d3x322_out_data_out_6_rdcnt_q);
        end
    end

    // redist78_i_llvm_fpga_pop_i32_j_061_pop24176_pop63_conv2d3x322_out_data_out_6_mem(DUALMEM,708)
    assign redist78_i_llvm_fpga_pop_i32_j_061_pop24176_pop63_conv2d3x322_out_data_out_6_mem_ia = $unsigned(redist77_i_llvm_fpga_pop_i32_j_061_pop24176_pop63_conv2d3x322_out_data_out_3_mem_q);
    assign redist78_i_llvm_fpga_pop_i32_j_061_pop24176_pop63_conv2d3x322_out_data_out_6_mem_aa = redist78_i_llvm_fpga_pop_i32_j_061_pop24176_pop63_conv2d3x322_out_data_out_6_wraddr_q;
    assign redist78_i_llvm_fpga_pop_i32_j_061_pop24176_pop63_conv2d3x322_out_data_out_6_mem_ab = redist78_i_llvm_fpga_pop_i32_j_061_pop24176_pop63_conv2d3x322_out_data_out_6_rdcnt_q;
    assign redist78_i_llvm_fpga_pop_i32_j_061_pop24176_pop63_conv2d3x322_out_data_out_6_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(1),
        .numwords_a(2),
        .width_b(32),
        .widthad_b(1),
        .numwords_b(2),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .address_reg_b("CLOCK0"),
        .indata_reg_b("CLOCK0"),
        .rdcontrol_reg_b("CLOCK0"),
        .byteena_reg_b("CLOCK0"),
        .outdata_reg_b("CLOCK1"),
        .outdata_aclr_b("CLEAR1"),
        .clock_enable_input_a("NORMAL"),
        .clock_enable_input_b("NORMAL"),
        .clock_enable_output_b("NORMAL"),
        .read_during_write_mode_mixed_ports("DONT_CARE"),
        .power_up_uninitialized("TRUE"),
        .intended_device_family("Arria 10")
    ) redist78_i_llvm_fpga_pop_i32_j_061_pop24176_pop63_conv2d3x322_out_data_out_6_mem_dmem (
        .clocken1(redist78_i_llvm_fpga_pop_i32_j_061_pop24176_pop63_conv2d3x322_out_data_out_6_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist78_i_llvm_fpga_pop_i32_j_061_pop24176_pop63_conv2d3x322_out_data_out_6_mem_reset0),
        .clock1(clock),
        .address_a(redist78_i_llvm_fpga_pop_i32_j_061_pop24176_pop63_conv2d3x322_out_data_out_6_mem_aa),
        .data_a(redist78_i_llvm_fpga_pop_i32_j_061_pop24176_pop63_conv2d3x322_out_data_out_6_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist78_i_llvm_fpga_pop_i32_j_061_pop24176_pop63_conv2d3x322_out_data_out_6_mem_ab),
        .q_b(redist78_i_llvm_fpga_pop_i32_j_061_pop24176_pop63_conv2d3x322_out_data_out_6_mem_iq),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_b(),
        .clocken2(),
        .clocken3(),
        .aclr0(),
        .addressstall_a(),
        .addressstall_b(),
        .byteena_a(),
        .byteena_b(),
        .eccencbypass(),
        .eccencparity(),
        .sclr(),
        .address2_a(),
        .address2_b(),
        .q_a(),
        .eccstatus()
    );
    assign redist78_i_llvm_fpga_pop_i32_j_061_pop24176_pop63_conv2d3x322_out_data_out_6_mem_q = redist78_i_llvm_fpga_pop_i32_j_061_pop24176_pop63_conv2d3x322_out_data_out_6_mem_iq[31:0];

    // redist67_i_llvm_fpga_pop_i32_stride_sync_buffer164_pop60_conv2d3x320_out_data_out_6_notEnable(LOGICAL,663)
    assign redist67_i_llvm_fpga_pop_i32_stride_sync_buffer164_pop60_conv2d3x320_out_data_out_6_notEnable_q = $unsigned(~ (VCC_q));

    // redist67_i_llvm_fpga_pop_i32_stride_sync_buffer164_pop60_conv2d3x320_out_data_out_6_nor(LOGICAL,664)
    assign redist67_i_llvm_fpga_pop_i32_stride_sync_buffer164_pop60_conv2d3x320_out_data_out_6_nor_q = ~ (redist67_i_llvm_fpga_pop_i32_stride_sync_buffer164_pop60_conv2d3x320_out_data_out_6_notEnable_q | redist67_i_llvm_fpga_pop_i32_stride_sync_buffer164_pop60_conv2d3x320_out_data_out_6_sticky_ena_q);

    // redist67_i_llvm_fpga_pop_i32_stride_sync_buffer164_pop60_conv2d3x320_out_data_out_6_cmpReg(REG,662)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist67_i_llvm_fpga_pop_i32_stride_sync_buffer164_pop60_conv2d3x320_out_data_out_6_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist67_i_llvm_fpga_pop_i32_stride_sync_buffer164_pop60_conv2d3x320_out_data_out_6_cmpReg_q <= $unsigned(VCC_q);
        end
    end

    // redist67_i_llvm_fpga_pop_i32_stride_sync_buffer164_pop60_conv2d3x320_out_data_out_6_sticky_ena(REG,665)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist67_i_llvm_fpga_pop_i32_stride_sync_buffer164_pop60_conv2d3x320_out_data_out_6_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist67_i_llvm_fpga_pop_i32_stride_sync_buffer164_pop60_conv2d3x320_out_data_out_6_nor_q == 1'b1)
        begin
            redist67_i_llvm_fpga_pop_i32_stride_sync_buffer164_pop60_conv2d3x320_out_data_out_6_sticky_ena_q <= $unsigned(redist67_i_llvm_fpga_pop_i32_stride_sync_buffer164_pop60_conv2d3x320_out_data_out_6_cmpReg_q);
        end
    end

    // redist67_i_llvm_fpga_pop_i32_stride_sync_buffer164_pop60_conv2d3x320_out_data_out_6_enaAnd(LOGICAL,666)
    assign redist67_i_llvm_fpga_pop_i32_stride_sync_buffer164_pop60_conv2d3x320_out_data_out_6_enaAnd_q = redist67_i_llvm_fpga_pop_i32_stride_sync_buffer164_pop60_conv2d3x320_out_data_out_6_sticky_ena_q & VCC_q;

    // redist67_i_llvm_fpga_pop_i32_stride_sync_buffer164_pop60_conv2d3x320_out_data_out_6_rdcnt(COUNTER,660)
    // low=0, high=1, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist67_i_llvm_fpga_pop_i32_stride_sync_buffer164_pop60_conv2d3x320_out_data_out_6_rdcnt_i <= 1'd0;
        end
        else
        begin
            redist67_i_llvm_fpga_pop_i32_stride_sync_buffer164_pop60_conv2d3x320_out_data_out_6_rdcnt_i <= $unsigned(redist67_i_llvm_fpga_pop_i32_stride_sync_buffer164_pop60_conv2d3x320_out_data_out_6_rdcnt_i) + $unsigned(1'd1);
        end
    end
    assign redist67_i_llvm_fpga_pop_i32_stride_sync_buffer164_pop60_conv2d3x320_out_data_out_6_rdcnt_q = redist67_i_llvm_fpga_pop_i32_stride_sync_buffer164_pop60_conv2d3x320_out_data_out_6_rdcnt_i[0:0];

    // redist67_i_llvm_fpga_pop_i32_stride_sync_buffer164_pop60_conv2d3x320_out_data_out_6_wraddr(REG,661)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist67_i_llvm_fpga_pop_i32_stride_sync_buffer164_pop60_conv2d3x320_out_data_out_6_wraddr_q <= $unsigned(1'b1);
        end
        else
        begin
            redist67_i_llvm_fpga_pop_i32_stride_sync_buffer164_pop60_conv2d3x320_out_data_out_6_wraddr_q <= $unsigned(redist67_i_llvm_fpga_pop_i32_stride_sync_buffer164_pop60_conv2d3x320_out_data_out_6_rdcnt_q);
        end
    end

    // redist67_i_llvm_fpga_pop_i32_stride_sync_buffer164_pop60_conv2d3x320_out_data_out_6_mem(DUALMEM,659)
    assign redist67_i_llvm_fpga_pop_i32_stride_sync_buffer164_pop60_conv2d3x320_out_data_out_6_mem_ia = $unsigned(redist66_i_llvm_fpga_pop_i32_stride_sync_buffer164_pop60_conv2d3x320_out_data_out_3_mem_q);
    assign redist67_i_llvm_fpga_pop_i32_stride_sync_buffer164_pop60_conv2d3x320_out_data_out_6_mem_aa = redist67_i_llvm_fpga_pop_i32_stride_sync_buffer164_pop60_conv2d3x320_out_data_out_6_wraddr_q;
    assign redist67_i_llvm_fpga_pop_i32_stride_sync_buffer164_pop60_conv2d3x320_out_data_out_6_mem_ab = redist67_i_llvm_fpga_pop_i32_stride_sync_buffer164_pop60_conv2d3x320_out_data_out_6_rdcnt_q;
    assign redist67_i_llvm_fpga_pop_i32_stride_sync_buffer164_pop60_conv2d3x320_out_data_out_6_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(1),
        .numwords_a(2),
        .width_b(32),
        .widthad_b(1),
        .numwords_b(2),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .address_reg_b("CLOCK0"),
        .indata_reg_b("CLOCK0"),
        .rdcontrol_reg_b("CLOCK0"),
        .byteena_reg_b("CLOCK0"),
        .outdata_reg_b("CLOCK1"),
        .outdata_aclr_b("CLEAR1"),
        .clock_enable_input_a("NORMAL"),
        .clock_enable_input_b("NORMAL"),
        .clock_enable_output_b("NORMAL"),
        .read_during_write_mode_mixed_ports("DONT_CARE"),
        .power_up_uninitialized("TRUE"),
        .intended_device_family("Arria 10")
    ) redist67_i_llvm_fpga_pop_i32_stride_sync_buffer164_pop60_conv2d3x320_out_data_out_6_mem_dmem (
        .clocken1(redist67_i_llvm_fpga_pop_i32_stride_sync_buffer164_pop60_conv2d3x320_out_data_out_6_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist67_i_llvm_fpga_pop_i32_stride_sync_buffer164_pop60_conv2d3x320_out_data_out_6_mem_reset0),
        .clock1(clock),
        .address_a(redist67_i_llvm_fpga_pop_i32_stride_sync_buffer164_pop60_conv2d3x320_out_data_out_6_mem_aa),
        .data_a(redist67_i_llvm_fpga_pop_i32_stride_sync_buffer164_pop60_conv2d3x320_out_data_out_6_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist67_i_llvm_fpga_pop_i32_stride_sync_buffer164_pop60_conv2d3x320_out_data_out_6_mem_ab),
        .q_b(redist67_i_llvm_fpga_pop_i32_stride_sync_buffer164_pop60_conv2d3x320_out_data_out_6_mem_iq),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_b(),
        .clocken2(),
        .clocken3(),
        .aclr0(),
        .addressstall_a(),
        .addressstall_b(),
        .byteena_a(),
        .byteena_b(),
        .eccencbypass(),
        .eccencparity(),
        .sclr(),
        .address2_a(),
        .address2_b(),
        .q_a(),
        .eccstatus()
    );
    assign redist67_i_llvm_fpga_pop_i32_stride_sync_buffer164_pop60_conv2d3x320_out_data_out_6_mem_q = redist67_i_llvm_fpga_pop_i32_stride_sync_buffer164_pop60_conv2d3x320_out_data_out_6_mem_iq[31:0];

    // leftShiftStage1Idx1Rng2_uid357_dupName_0_i_unnamed_conv2d3x30_shift_x(BITSELECT,356)@5
    assign leftShiftStage1Idx1Rng2_uid357_dupName_0_i_unnamed_conv2d3x30_shift_x_in = leftShiftStage0_uid355_dupName_0_i_unnamed_conv2d3x30_shift_x_q[29:0];
    assign leftShiftStage1Idx1Rng2_uid357_dupName_0_i_unnamed_conv2d3x30_shift_x_b = leftShiftStage1Idx1Rng2_uid357_dupName_0_i_unnamed_conv2d3x30_shift_x_in[29:0];

    // leftShiftStage1Idx1_uid358_dupName_0_i_unnamed_conv2d3x30_shift_x(BITJOIN,357)@5
    assign leftShiftStage1Idx1_uid358_dupName_0_i_unnamed_conv2d3x30_shift_x_q = {leftShiftStage1Idx1Rng2_uid357_dupName_0_i_unnamed_conv2d3x30_shift_x_b, i_arrayidx385_conv2d3x340_vt_const_1_q};

    // leftShiftStage0Idx1Rng1_uid352_dupName_0_i_unnamed_conv2d3x30_shift_x(BITSELECT,351)@5
    assign leftShiftStage0Idx1Rng1_uid352_dupName_0_i_unnamed_conv2d3x30_shift_x_in = redist76_i_llvm_fpga_pop_i32_k_059180_pop64_conv2d3x316_out_data_out_3_outputreg0_q[30:0];
    assign leftShiftStage0Idx1Rng1_uid352_dupName_0_i_unnamed_conv2d3x30_shift_x_b = leftShiftStage0Idx1Rng1_uid352_dupName_0_i_unnamed_conv2d3x30_shift_x_in[30:0];

    // leftShiftStage0Idx1_uid353_dupName_0_i_unnamed_conv2d3x30_shift_x(BITJOIN,352)@5
    assign leftShiftStage0Idx1_uid353_dupName_0_i_unnamed_conv2d3x30_shift_x_q = {leftShiftStage0Idx1Rng1_uid352_dupName_0_i_unnamed_conv2d3x30_shift_x_b, GND_q};

    // leftShiftStage0_uid355_dupName_0_i_unnamed_conv2d3x30_shift_x(MUX,354)@5
    assign leftShiftStage0_uid355_dupName_0_i_unnamed_conv2d3x30_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid355_dupName_0_i_unnamed_conv2d3x30_shift_x_s or redist76_i_llvm_fpga_pop_i32_k_059180_pop64_conv2d3x316_out_data_out_3_outputreg0_q or leftShiftStage0Idx1_uid353_dupName_0_i_unnamed_conv2d3x30_shift_x_q)
    begin
        unique case (leftShiftStage0_uid355_dupName_0_i_unnamed_conv2d3x30_shift_x_s)
            1'b0 : leftShiftStage0_uid355_dupName_0_i_unnamed_conv2d3x30_shift_x_q = redist76_i_llvm_fpga_pop_i32_k_059180_pop64_conv2d3x316_out_data_out_3_outputreg0_q;
            1'b1 : leftShiftStage0_uid355_dupName_0_i_unnamed_conv2d3x30_shift_x_q = leftShiftStage0Idx1_uid353_dupName_0_i_unnamed_conv2d3x30_shift_x_q;
            default : leftShiftStage0_uid355_dupName_0_i_unnamed_conv2d3x30_shift_x_q = 32'b0;
        endcase
    end

    // leftShiftStage1_uid360_dupName_0_i_unnamed_conv2d3x30_shift_x(MUX,359)@5
    assign leftShiftStage1_uid360_dupName_0_i_unnamed_conv2d3x30_shift_x_s = VCC_q;
    always @(leftShiftStage1_uid360_dupName_0_i_unnamed_conv2d3x30_shift_x_s or leftShiftStage0_uid355_dupName_0_i_unnamed_conv2d3x30_shift_x_q or leftShiftStage1Idx1_uid358_dupName_0_i_unnamed_conv2d3x30_shift_x_q)
    begin
        unique case (leftShiftStage1_uid360_dupName_0_i_unnamed_conv2d3x30_shift_x_s)
            1'b0 : leftShiftStage1_uid360_dupName_0_i_unnamed_conv2d3x30_shift_x_q = leftShiftStage0_uid355_dupName_0_i_unnamed_conv2d3x30_shift_x_q;
            1'b1 : leftShiftStage1_uid360_dupName_0_i_unnamed_conv2d3x30_shift_x_q = leftShiftStage1Idx1_uid358_dupName_0_i_unnamed_conv2d3x30_shift_x_q;
            default : leftShiftStage1_uid360_dupName_0_i_unnamed_conv2d3x30_shift_x_q = 32'b0;
        endcase
    end

    // i_unnamed_conv2d3x318_vt_select_31(BITSELECT,191)@5
    assign i_unnamed_conv2d3x318_vt_select_31_b = leftShiftStage1_uid360_dupName_0_i_unnamed_conv2d3x30_shift_x_q[31:3];

    // i_unnamed_conv2d3x318_vt_const_2(CONSTANT,189)
    assign i_unnamed_conv2d3x318_vt_const_2_q = $unsigned(3'b000);

    // i_unnamed_conv2d3x318_vt_join(BITJOIN,190)@5
    assign i_unnamed_conv2d3x318_vt_join_q = {i_unnamed_conv2d3x318_vt_select_31_b, i_unnamed_conv2d3x318_vt_const_2_q};

    // valid_fanout_reg4(REG,248)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg4_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg4_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg5(REG,249)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg5_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg5_q <= $unsigned(redist48_sync_together243_aunroll_x_in_i_valid_3_q);
        end
    end

    // i_llvm_fpga_push_i32_k_059180_push64_conv2d3x317(BLACKBOX,159)@5
    // out out_feedback_out_64@20000000
    // out out_feedback_valid_out_64@20000000
    conv2d3x3_i_llvm_fpga_push_i32_k_059180_push64_0 thei_llvm_fpga_push_i32_k_059180_push64_conv2d3x317 (
        .in_data_in(redist76_i_llvm_fpga_pop_i32_k_059180_pop64_conv2d3x316_out_data_out_3_outputreg0_q),
        .in_feedback_stall_in_64(i_llvm_fpga_pop_i32_k_059180_pop64_conv2d3x316_out_feedback_stall_out_64),
        .in_keep_going60_fanout_adaptor(i_llvm_fpga_fanout_i1_keep_going60_fanout_adaptor_conv2d3x310_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_data_out(),
        .out_feedback_out_64(i_llvm_fpga_push_i32_k_059180_push64_conv2d3x317_out_feedback_out_64),
        .out_feedback_valid_out_64(i_llvm_fpga_push_i32_k_059180_push64_conv2d3x317_out_feedback_valid_out_64),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist2_sync_together243_aunroll_x_in_c0_eni46_2_tpl_1(DELAY,368)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_sync_together243_aunroll_x_in_c0_eni46_2_tpl_1_q <= '0;
        end
        else
        begin
            redist2_sync_together243_aunroll_x_in_c0_eni46_2_tpl_1_q <= $unsigned(in_c0_eni46_2_tpl);
        end
    end

    // i_llvm_fpga_pop_i32_k_059180_pop64_conv2d3x316(BLACKBOX,128)@2
    // out out_feedback_stall_out_64@20000000
    conv2d3x3_i_llvm_fpga_pop_i32_k_059180_pop64_0 thei_llvm_fpga_pop_i32_k_059180_pop64_conv2d3x316 (
        .in_data_in(redist2_sync_together243_aunroll_x_in_c0_eni46_2_tpl_1_q),
        .in_dir(i_llvm_fpga_fanout_i1_c0_ene1671_fanout_adaptor1206_conv2d3x32_q),
        .in_feedback_in_64(i_llvm_fpga_push_i32_k_059180_push64_conv2d3x317_out_feedback_out_64),
        .in_feedback_valid_in_64(i_llvm_fpga_push_i32_k_059180_push64_conv2d3x317_out_feedback_valid_out_64),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_data_out(i_llvm_fpga_pop_i32_k_059180_pop64_conv2d3x316_out_data_out),
        .out_feedback_stall_out_64(i_llvm_fpga_pop_i32_k_059180_pop64_conv2d3x316_out_feedback_stall_out_64),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist76_i_llvm_fpga_pop_i32_k_059180_pop64_conv2d3x316_out_data_out_3(DELAY,442)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist76_i_llvm_fpga_pop_i32_k_059180_pop64_conv2d3x316_out_data_out_3_delay_0 <= '0;
            redist76_i_llvm_fpga_pop_i32_k_059180_pop64_conv2d3x316_out_data_out_3_q <= '0;
        end
        else
        begin
            redist76_i_llvm_fpga_pop_i32_k_059180_pop64_conv2d3x316_out_data_out_3_delay_0 <= $unsigned(i_llvm_fpga_pop_i32_k_059180_pop64_conv2d3x316_out_data_out);
            redist76_i_llvm_fpga_pop_i32_k_059180_pop64_conv2d3x316_out_data_out_3_q <= redist76_i_llvm_fpga_pop_i32_k_059180_pop64_conv2d3x316_out_data_out_3_delay_0;
        end
    end

    // redist76_i_llvm_fpga_pop_i32_k_059180_pop64_conv2d3x316_out_data_out_3_outputreg0(DELAY,699)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist76_i_llvm_fpga_pop_i32_k_059180_pop64_conv2d3x316_out_data_out_3_outputreg0_q <= '0;
        end
        else
        begin
            redist76_i_llvm_fpga_pop_i32_k_059180_pop64_conv2d3x316_out_data_out_3_outputreg0_q <= $unsigned(redist76_i_llvm_fpga_pop_i32_k_059180_pop64_conv2d3x316_out_data_out_3_q);
        end
    end

    // i_mul39_add4_conv2d3x319(ADD,177)@5
    assign i_mul39_add4_conv2d3x319_a = {1'b0, redist76_i_llvm_fpga_pop_i32_k_059180_pop64_conv2d3x316_out_data_out_3_outputreg0_q};
    assign i_mul39_add4_conv2d3x319_b = {1'b0, i_unnamed_conv2d3x318_vt_join_q};
    assign i_mul39_add4_conv2d3x319_o = $unsigned(i_mul39_add4_conv2d3x319_a) + $unsigned(i_mul39_add4_conv2d3x319_b);
    assign i_mul39_add4_conv2d3x319_q = i_mul39_add4_conv2d3x319_o[32:0];

    // bgTrunc_i_mul39_add4_conv2d3x319_sel_x(BITSELECT,210)@5
    assign bgTrunc_i_mul39_add4_conv2d3x319_sel_x_b = i_mul39_add4_conv2d3x319_q[31:0];

    // redist53_bgTrunc_i_mul39_add4_conv2d3x319_sel_x_b_3_inputreg0(DELAY,598)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist53_bgTrunc_i_mul39_add4_conv2d3x319_sel_x_b_3_inputreg0_q <= '0;
        end
        else
        begin
            redist53_bgTrunc_i_mul39_add4_conv2d3x319_sel_x_b_3_inputreg0_q <= $unsigned(bgTrunc_i_mul39_add4_conv2d3x319_sel_x_b);
        end
    end

    // redist53_bgTrunc_i_mul39_add4_conv2d3x319_sel_x_b_3(DELAY,419)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist53_bgTrunc_i_mul39_add4_conv2d3x319_sel_x_b_3_delay_0 <= '0;
            redist53_bgTrunc_i_mul39_add4_conv2d3x319_sel_x_b_3_q <= '0;
        end
        else
        begin
            redist53_bgTrunc_i_mul39_add4_conv2d3x319_sel_x_b_3_delay_0 <= $unsigned(redist53_bgTrunc_i_mul39_add4_conv2d3x319_sel_x_b_3_inputreg0_q);
            redist53_bgTrunc_i_mul39_add4_conv2d3x319_sel_x_b_3_q <= redist53_bgTrunc_i_mul39_add4_conv2d3x319_sel_x_b_3_delay_0;
        end
    end

    // sync_out_aunroll_x(GPOUT,238)@8
    assign out_c0_exi52_0_tpl = GND_q;
    assign out_c0_exi52_1_tpl = redist99_i_llvm_fpga_pipeline_keep_going60_conv2d3x38_out_data_out_4_q;
    assign out_c0_exi52_2_tpl = redist53_bgTrunc_i_mul39_add4_conv2d3x319_sel_x_b_3_q;
    assign out_c0_exi52_3_tpl = redist67_i_llvm_fpga_pop_i32_stride_sync_buffer164_pop60_conv2d3x320_out_data_out_6_mem_q;
    assign out_c0_exi52_4_tpl = redist78_i_llvm_fpga_pop_i32_j_061_pop24176_pop63_conv2d3x322_out_data_out_6_mem_q;
    assign out_c0_exi52_5_tpl = redist69_i_llvm_fpga_pop_i32_pad_sync_buffer168_pop61_conv2d3x325_out_data_out_3_q;
    assign out_c0_exi52_6_tpl = redist57_bgTrunc_i_add24_conv2d3x327_sel_x_b_2_q;
    assign out_c0_exi52_7_tpl = i_arrayidx385_conv2d3x340_vt_join_q;
    assign out_c0_exi52_8_tpl = redist96_i_llvm_fpga_pop_i1_cmp26121_pop51_conv2d3x341_out_data_out_3_q;
    assign out_c0_exi52_9_tpl = redist93_i_llvm_fpga_pop_i1_cmp27126_pop52_conv2d3x344_out_data_out_3_q;
    assign out_c0_exi52_10_tpl = i_reduction_conv2d3x3_2_conv2d3x347_q;
    assign out_c0_exi52_11_tpl = i_llvm_fpga_pop_i1_pop65_conv2d3x348_out_data_out;
    assign out_c0_exi52_12_tpl = i_first_cleanup_xor66_or_conv2d3x352_q;
    assign out_c0_exi52_13_tpl = redist61_i_llvm_fpga_pop_p1024f32_filter_weight_addr_067_replace_phi88_pop45_conv2d3x355_out_data_out_6_q;
    assign out_c0_exi52_14_tpl = i_arrayidx44_conv2d3x30_dupName_0_trunc_sel_x_b;
    assign out_c0_exi52_15_tpl = i_masked69_conv2d3x371_q;
    assign out_c0_exi52_16_tpl = redist59_i_llvm_fpga_pop_p1024f32_output_im_addr_068_replace_phi94_pop46_conv2d3x372_out_data_out_6_q;
    assign out_c0_exi52_17_tpl = redist97_i_llvm_fpga_pop_f32_lm25100_pop47_conv2d3x374_out_data_out_3_mem_q;
    assign out_c0_exi52_18_tpl = redist87_i_llvm_fpga_pop_i1_notcmp81106_pop48_conv2d3x376_out_data_out_3_q;
    assign out_c0_exi52_19_tpl = redist84_i_llvm_fpga_pop_i32_add111_pop49_conv2d3x378_out_data_out_6_mem_q;
    assign out_c0_exi52_20_tpl = redist71_i_llvm_fpga_pop_i32_mul56116_pop50_conv2d3x380_out_data_out_6_mem_q;
    assign out_c0_exi52_21_tpl = redist65_i_llvm_fpga_pop_i32_sub_1131_pop53_conv2d3x382_out_data_out_6_mem_q;
    assign out_c0_exi52_22_tpl = redist95_i_llvm_fpga_pop_i1_cmp26_1136_pop54_conv2d3x384_out_data_out_3_q;
    assign out_c0_exi52_23_tpl = redist92_i_llvm_fpga_pop_i1_cmp27_1141_pop55_conv2d3x386_out_data_out_3_q;
    assign out_c0_exi52_24_tpl = redist63_i_llvm_fpga_pop_i32_sub_2146_pop56_conv2d3x388_out_data_out_6_mem_q;
    assign out_c0_exi52_25_tpl = redist94_i_llvm_fpga_pop_i1_cmp26_2151_pop57_conv2d3x390_out_data_out_3_q;
    assign out_c0_exi52_26_tpl = redist91_i_llvm_fpga_pop_i1_cmp27_2156_pop58_conv2d3x392_out_data_out_3_q;
    assign out_c0_exi52_27_tpl = redist88_i_llvm_fpga_pop_i1_notcmp77161_pop59_conv2d3x394_out_data_out_3_q;
    assign out_c0_exi52_28_tpl = redist90_i_llvm_fpga_pop_i1_notcmp73172_pop62_conv2d3x396_out_data_out_6_q;
    assign out_c0_exi52_29_tpl = redist73_i_llvm_fpga_pop_i32_mul32181_pop66_conv2d3x398_out_data_out_6_mem_q;
    assign out_c0_exi52_30_tpl = redist80_i_llvm_fpga_pop_i32_inc50184_pop68_conv2d3x3100_out_data_out_6_mem_q;
    assign out_c0_exi52_31_tpl = redist86_i_llvm_fpga_pop_i1_pop69_conv2d3x3102_out_data_out_6_q;
    assign out_c0_exi52_32_tpl = redist1_sync_together243_aunroll_x_in_c0_eni46_1_tpl_7_q;
    assign out_c0_exi52_33_tpl = redist27_sync_together243_aunroll_x_in_c0_eni46_27_tpl_7_mem_q;
    assign out_c0_exi52_34_tpl = redist28_sync_together243_aunroll_x_in_c0_eni46_28_tpl_7_mem_q;
    assign out_c0_exi52_35_tpl = redist29_sync_together243_aunroll_x_in_c0_eni46_29_tpl_7_mem_q;
    assign out_c0_exi52_36_tpl = redist30_sync_together243_aunroll_x_in_c0_eni46_30_tpl_7_q;
    assign out_c0_exi52_37_tpl = redist31_sync_together243_aunroll_x_in_c0_eni46_31_tpl_7_mem_q;
    assign out_c0_exi52_38_tpl = redist32_sync_together243_aunroll_x_in_c0_eni46_32_tpl_7_mem_q;
    assign out_c0_exi52_39_tpl = redist33_sync_together243_aunroll_x_in_c0_eni46_33_tpl_7_q;
    assign out_c0_exi52_40_tpl = redist34_sync_together243_aunroll_x_in_c0_eni46_34_tpl_7_q;
    assign out_c0_exi52_41_tpl = redist35_sync_together243_aunroll_x_in_c0_eni46_35_tpl_7_mem_q;
    assign out_c0_exi52_42_tpl = redist36_sync_together243_aunroll_x_in_c0_eni46_36_tpl_7_q;
    assign out_c0_exi52_43_tpl = redist37_sync_together243_aunroll_x_in_c0_eni46_37_tpl_7_q;
    assign out_c0_exi52_44_tpl = redist38_sync_together243_aunroll_x_in_c0_eni46_38_tpl_7_mem_q;
    assign out_c0_exi52_45_tpl = redist39_sync_together243_aunroll_x_in_c0_eni46_39_tpl_7_q;
    assign out_c0_exi52_46_tpl = redist40_sync_together243_aunroll_x_in_c0_eni46_40_tpl_7_q;
    assign out_c0_exi52_47_tpl = redist41_sync_together243_aunroll_x_in_c0_eni46_41_tpl_7_q;
    assign out_c0_exi52_48_tpl = redist42_sync_together243_aunroll_x_in_c0_eni46_42_tpl_7_mem_q;
    assign out_c0_exi52_49_tpl = redist43_sync_together243_aunroll_x_in_c0_eni46_43_tpl_7_mem_q;
    assign out_c0_exi52_50_tpl = redist44_sync_together243_aunroll_x_in_c0_eni46_44_tpl_7_mem_q;
    assign out_c0_exi52_51_tpl = redist45_sync_together243_aunroll_x_in_c0_eni46_45_tpl_7_q;
    assign out_c0_exi52_52_tpl = redist46_sync_together243_aunroll_x_in_c0_eni46_46_tpl_7_mem_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_conv2d3x311 = GND_q;

endmodule
