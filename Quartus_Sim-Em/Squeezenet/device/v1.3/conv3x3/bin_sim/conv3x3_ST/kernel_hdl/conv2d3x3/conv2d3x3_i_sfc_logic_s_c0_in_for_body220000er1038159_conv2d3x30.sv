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

// SystemVerilog created from conv2d3x3_i_sfc_logic_s_c0_in_for_body220000er1038159_conv2d3x30
// SystemVerilog created on Tue May 30 12:33:16 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2d3x3_i_sfc_logic_s_c0_in_for_body220000er1038159_conv2d3x30 (
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_conv2d3x38_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_conv2d3x38_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [63:0] in_input_im,
    input wire [31:0] in_input_size,
    output wire [0:0] out_c0_exi56_0_tpl,
    output wire [0:0] out_c0_exi56_1_tpl,
    output wire [63:0] out_c0_exi56_2_tpl,
    output wire [0:0] out_c0_exi56_3_tpl,
    output wire [0:0] out_c0_exi56_4_tpl,
    output wire [0:0] out_c0_exi56_5_tpl,
    output wire [0:0] out_c0_exi56_6_tpl,
    output wire [0:0] out_c0_exi56_7_tpl,
    output wire [63:0] out_c0_exi56_8_tpl,
    output wire [63:0] out_c0_exi56_9_tpl,
    output wire [0:0] out_c0_exi56_10_tpl,
    output wire [63:0] out_c0_exi56_11_tpl,
    output wire [63:0] out_c0_exi56_12_tpl,
    output wire [31:0] out_c0_exi56_13_tpl,
    output wire [31:0] out_c0_exi56_14_tpl,
    output wire [0:0] out_c0_exi56_15_tpl,
    output wire [0:0] out_c0_exi56_16_tpl,
    output wire [31:0] out_c0_exi56_17_tpl,
    output wire [31:0] out_c0_exi56_18_tpl,
    output wire [31:0] out_c0_exi56_19_tpl,
    output wire [0:0] out_c0_exi56_20_tpl,
    output wire [0:0] out_c0_exi56_21_tpl,
    output wire [31:0] out_c0_exi56_22_tpl,
    output wire [0:0] out_c0_exi56_23_tpl,
    output wire [0:0] out_c0_exi56_24_tpl,
    output wire [31:0] out_c0_exi56_25_tpl,
    output wire [0:0] out_c0_exi56_26_tpl,
    output wire [0:0] out_c0_exi56_27_tpl,
    output wire [31:0] out_c0_exi56_28_tpl,
    output wire [31:0] out_c0_exi56_29_tpl,
    output wire [0:0] out_c0_exi56_30_tpl,
    output wire [0:0] out_c0_exi56_31_tpl,
    output wire [31:0] out_c0_exi56_32_tpl,
    output wire [31:0] out_c0_exi56_33_tpl,
    output wire [31:0] out_c0_exi56_34_tpl,
    output wire [0:0] out_c0_exi56_35_tpl,
    output wire [0:0] out_c0_exi56_36_tpl,
    output wire [63:0] out_c0_exi56_37_tpl,
    output wire [63:0] out_c0_exi56_38_tpl,
    output wire [31:0] out_c0_exi56_39_tpl,
    output wire [0:0] out_c0_exi56_40_tpl,
    output wire [31:0] out_c0_exi56_41_tpl,
    output wire [31:0] out_c0_exi56_42_tpl,
    output wire [0:0] out_c0_exi56_43_tpl,
    output wire [0:0] out_c0_exi56_44_tpl,
    output wire [31:0] out_c0_exi56_45_tpl,
    output wire [0:0] out_c0_exi56_46_tpl,
    output wire [0:0] out_c0_exi56_47_tpl,
    output wire [31:0] out_c0_exi56_48_tpl,
    output wire [0:0] out_c0_exi56_49_tpl,
    output wire [0:0] out_c0_exi56_50_tpl,
    output wire [0:0] out_c0_exi56_51_tpl,
    output wire [63:0] out_c0_exi56_52_tpl,
    output wire [63:0] out_c0_exi56_53_tpl,
    output wire [31:0] out_c0_exi56_54_tpl,
    output wire [0:0] out_c0_exi56_55_tpl,
    output wire [31:0] out_c0_exi56_56_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_conv2d3x311,
    input wire [0:0] in_c0_eni461037_0_tpl,
    input wire [0:0] in_c0_eni461037_1_tpl,
    input wire [31:0] in_c0_eni461037_2_tpl,
    input wire [31:0] in_c0_eni461037_3_tpl,
    input wire [0:0] in_c0_eni461037_4_tpl,
    input wire [0:0] in_c0_eni461037_5_tpl,
    input wire [0:0] in_c0_eni461037_6_tpl,
    input wire [31:0] in_c0_eni461037_7_tpl,
    input wire [63:0] in_c0_eni461037_8_tpl,
    input wire [63:0] in_c0_eni461037_9_tpl,
    input wire [31:0] in_c0_eni461037_10_tpl,
    input wire [0:0] in_c0_eni461037_11_tpl,
    input wire [31:0] in_c0_eni461037_12_tpl,
    input wire [31:0] in_c0_eni461037_13_tpl,
    input wire [0:0] in_c0_eni461037_14_tpl,
    input wire [0:0] in_c0_eni461037_15_tpl,
    input wire [31:0] in_c0_eni461037_16_tpl,
    input wire [0:0] in_c0_eni461037_17_tpl,
    input wire [0:0] in_c0_eni461037_18_tpl,
    input wire [31:0] in_c0_eni461037_19_tpl,
    input wire [0:0] in_c0_eni461037_20_tpl,
    input wire [31:0] in_c0_eni461037_21_tpl,
    input wire [31:0] in_c0_eni461037_22_tpl,
    input wire [0:0] in_c0_eni461037_23_tpl,
    input wire [31:0] in_c0_eni461037_24_tpl,
    input wire [31:0] in_c0_eni461037_25_tpl,
    input wire [0:0] in_c0_eni461037_26_tpl,
    input wire [63:0] in_c0_eni461037_27_tpl,
    input wire [63:0] in_c0_eni461037_28_tpl,
    input wire [31:0] in_c0_eni461037_29_tpl,
    input wire [0:0] in_c0_eni461037_30_tpl,
    input wire [31:0] in_c0_eni461037_31_tpl,
    input wire [31:0] in_c0_eni461037_32_tpl,
    input wire [0:0] in_c0_eni461037_33_tpl,
    input wire [0:0] in_c0_eni461037_34_tpl,
    input wire [31:0] in_c0_eni461037_35_tpl,
    input wire [0:0] in_c0_eni461037_36_tpl,
    input wire [0:0] in_c0_eni461037_37_tpl,
    input wire [31:0] in_c0_eni461037_38_tpl,
    input wire [0:0] in_c0_eni461037_39_tpl,
    input wire [0:0] in_c0_eni461037_40_tpl,
    input wire [0:0] in_c0_eni461037_41_tpl,
    input wire [63:0] in_c0_eni461037_42_tpl,
    input wire [63:0] in_c0_eni461037_43_tpl,
    input wire [31:0] in_c0_eni461037_44_tpl,
    input wire [0:0] in_c0_eni461037_45_tpl,
    input wire [31:0] in_c0_eni461037_46_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [1:0] c_i2_1164_q;
    wire [31:0] c_i32_0166_q;
    wire [31:0] c_i32_1168_q;
    wire [2:0] c_i3_1169_q;
    wire [2:0] c_i3_1171_q;
    wire [32:0] i_add36_2_conv2d3x327_a;
    wire [32:0] i_add36_2_conv2d3x327_b;
    logic [32:0] i_add36_2_conv2d3x327_o;
    wire [32:0] i_add36_2_conv2d3x327_q;
    wire [32:0] i_add42_2_conv2d3x345_a;
    wire [32:0] i_add42_2_conv2d3x345_b;
    logic [32:0] i_add42_2_conv2d3x345_o;
    wire [32:0] i_add42_2_conv2d3x345_q;
    wire [1:0] i_arrayidx38_23_conv2d3x330_vt_const_1_q;
    wire [63:0] i_arrayidx38_23_conv2d3x330_vt_join_q;
    wire [61:0] i_arrayidx38_23_conv2d3x330_vt_select_63_b;
    wire [1:0] i_cleanups_shl_conv2d3x37_vt_join_q;
    wire [0:0] i_cleanups_shl_conv2d3x37_vt_select_1_b;
    wire [33:0] i_cmp29_2_conv2d3x320_a;
    wire [33:0] i_cmp29_2_conv2d3x320_b;
    logic [33:0] i_cmp29_2_conv2d3x320_o;
    wire [0:0] i_cmp29_2_conv2d3x320_c;
    wire [33:0] i_cmp31_2_conv2d3x323_a;
    wire [33:0] i_cmp31_2_conv2d3x323_b;
    logic [33:0] i_cmp31_2_conv2d3x323_o;
    wire [0:0] i_cmp31_2_conv2d3x323_c;
    wire [0:0] i_first_cleanup_xor_conv2d3x36_q;
    wire [0:0] i_first_cleanup_xor_or_conv2d3x342_q;
    wire [3:0] i_fpga_indvars_iv_next92_conv2d3x355_a;
    wire [3:0] i_fpga_indvars_iv_next92_conv2d3x355_b;
    logic [3:0] i_fpga_indvars_iv_next92_conv2d3x355_o;
    wire [3:0] i_fpga_indvars_iv_next92_conv2d3x355_q;
    wire [63:0] i_idxprom43_2_conv2d3x346_vt_join_q;
    wire [31:0] i_idxprom43_2_conv2d3x346_vt_select_31_b;
    wire [32:0] i_inc_2_conv2d3x350_a;
    wire [32:0] i_inc_2_conv2d3x350_b;
    logic [32:0] i_inc_2_conv2d3x350_o;
    wire [32:0] i_inc_2_conv2d3x350_q;
    (* dont_merge *) reg [0:0] i_llvm_fpga_fanout_i1_c0_ene11039_fanout_adaptor1210_conv2d3x32_q;
    (* dont_merge *) reg [0:0] i_llvm_fpga_fanout_i1_c0_ene11039_fanout_adaptor_conv2d3x33_q;
    (* dont_merge *) reg [0:0] i_llvm_fpga_fanout_i1_keep_going_fanout_adaptor1211_conv2d3x39_q;
    (* dont_merge *) reg [0:0] i_llvm_fpga_fanout_i1_keep_going_fanout_adaptor_conv2d3x310_q;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_conv2d3x38_out_data_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_conv2d3x38_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_conv2d3x38_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_conv2d3x38_out_initeration_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_conv2d3x38_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_conv2d3x38_out_pipeline_valid_out;
    wire [31:0] i_llvm_fpga_pop_f32_lm25102_pop108_conv2d3x366_out_data_out;
    wire [0:0] i_llvm_fpga_pop_f32_lm25102_pop108_conv2d3x366_out_feedback_stall_out_108;
    wire [0:0] i_llvm_fpga_pop_i1_cmp26123_pop112_conv2d3x374_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_cmp26123_pop112_conv2d3x374_out_feedback_stall_out_112;
    wire [0:0] i_llvm_fpga_pop_i1_cmp26_1138_pop115_conv2d3x380_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_cmp26_1138_pop115_conv2d3x380_out_feedback_stall_out_115;
    wire [0:0] i_llvm_fpga_pop_i1_cmp26_2153_pop118_conv2d3x331_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_cmp26_2153_pop118_conv2d3x331_out_feedback_stall_out_118;
    wire [0:0] i_llvm_fpga_pop_i1_cmp27128_pop113_conv2d3x376_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_cmp27128_pop113_conv2d3x376_out_feedback_stall_out_113;
    wire [0:0] i_llvm_fpga_pop_i1_cmp27_1143_pop116_conv2d3x382_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_cmp27_1143_pop116_conv2d3x382_out_feedback_stall_out_116;
    wire [0:0] i_llvm_fpga_pop_i1_cmp27_2158_pop119_conv2d3x334_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_cmp27_2158_pop119_conv2d3x334_out_feedback_stall_out_119;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp73174_pop123_conv2d3x392_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp73174_pop123_conv2d3x392_out_feedback_stall_out_123;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp77163_pop120_conv2d3x386_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp77163_pop120_conv2d3x386_out_feedback_stall_out_120;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp81108_pop109_conv2d3x368_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp81108_pop109_conv2d3x368_out_feedback_stall_out_109;
    wire [0:0] i_llvm_fpga_pop_i1_pop125_conv2d3x338_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_pop125_conv2d3x338_out_feedback_stall_out_125;
    wire [0:0] i_llvm_fpga_pop_i1_pop127_conv2d3x398_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_pop127_conv2d3x398_out_feedback_stall_out_127;
    wire [1:0] i_llvm_fpga_pop_i2_cleanups_pop105_conv2d3x34_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i2_cleanups_pop105_conv2d3x34_out_feedback_stall_out_105;
    wire [1:0] i_llvm_fpga_pop_i2_initerations_pop104_conv2d3x311_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i2_initerations_pop104_conv2d3x311_out_feedback_stall_out_104;
    wire [31:0] i_llvm_fpga_pop_i32_add113_pop110_conv2d3x370_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_add113_pop110_conv2d3x370_out_feedback_stall_out_110;
    wire [31:0] i_llvm_fpga_pop_i32_add24190_pop128_conv2d3x317_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_add24190_pop128_conv2d3x317_out_feedback_stall_out_128;
    wire [31:0] i_llvm_fpga_pop_i32_add35_2191_pop129_conv2d3x325_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_add35_2191_pop129_conv2d3x325_out_feedback_stall_out_129;
    wire [31:0] i_llvm_fpga_pop_i32_add41_2192_pop130_conv2d3x343_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_add41_2192_pop130_conv2d3x343_out_feedback_stall_out_130;
    wire [31:0] i_llvm_fpga_pop_i32_inc50186_pop126_conv2d3x396_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_inc50186_pop126_conv2d3x396_out_feedback_stall_out_126;
    wire [31:0] i_llvm_fpga_pop_i32_j_061_pop24178_pop124_conv2d3x394_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_j_061_pop24178_pop124_conv2d3x394_out_feedback_stall_out_124;
    wire [31:0] i_llvm_fpga_pop_i32_m_053_2_pop102_conv2d3x316_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_m_053_2_pop102_conv2d3x316_out_feedback_stall_out_102;
    wire [31:0] i_llvm_fpga_pop_i32_mul56118_pop111_conv2d3x372_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_mul56118_pop111_conv2d3x372_out_feedback_stall_out_111;
    wire [31:0] i_llvm_fpga_pop_i32_pad_sync_buffer170_pop122_conv2d3x390_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_pad_sync_buffer170_pop122_conv2d3x390_out_feedback_stall_out_122;
    wire [31:0] i_llvm_fpga_pop_i32_stride_sync_buffer166_pop121_conv2d3x388_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_stride_sync_buffer166_pop121_conv2d3x388_out_feedback_stall_out_121;
    wire [31:0] i_llvm_fpga_pop_i32_sub_1133_pop114_conv2d3x378_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_sub_1133_pop114_conv2d3x378_out_feedback_stall_out_114;
    wire [31:0] i_llvm_fpga_pop_i32_sub_2148_pop117_conv2d3x384_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_sub_2148_pop117_conv2d3x384_out_feedback_stall_out_117;
    wire [2:0] i_llvm_fpga_pop_i3_fpga_indvars_iv91_pop101_conv2d3x352_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i3_fpga_indvars_iv91_pop101_conv2d3x352_out_feedback_stall_out_101;
    wire [63:0] i_llvm_fpga_pop_p1024f32_filter_weight_addr_067_replace_phi90_pop106_conv2d3x347_out_data_out;
    wire [0:0] i_llvm_fpga_pop_p1024f32_filter_weight_addr_067_replace_phi90_pop106_conv2d3x347_out_feedback_stall_out_106;
    wire [63:0] i_llvm_fpga_pop_p1024f32_output_im_addr_068_replace_phi96_pop107_conv2d3x364_out_data_out;
    wire [0:0] i_llvm_fpga_pop_p1024f32_output_im_addr_068_replace_phi96_pop107_conv2d3x364_out_feedback_stall_out_107;
    wire [31:0] i_llvm_fpga_push_f32_lm25102_push108_conv2d3x367_out_data_out;
    wire [31:0] i_llvm_fpga_push_f32_lm25102_push108_conv2d3x367_out_feedback_out_108;
    wire [0:0] i_llvm_fpga_push_f32_lm25102_push108_conv2d3x367_out_feedback_valid_out_108;
    wire [0:0] i_llvm_fpga_push_i1_cmp26123_push112_conv2d3x375_out_data_out;
    wire [0:0] i_llvm_fpga_push_i1_cmp26123_push112_conv2d3x375_out_feedback_out_112;
    wire [0:0] i_llvm_fpga_push_i1_cmp26123_push112_conv2d3x375_out_feedback_valid_out_112;
    wire [0:0] i_llvm_fpga_push_i1_cmp26_1138_push115_conv2d3x381_out_data_out;
    wire [0:0] i_llvm_fpga_push_i1_cmp26_1138_push115_conv2d3x381_out_feedback_out_115;
    wire [0:0] i_llvm_fpga_push_i1_cmp26_1138_push115_conv2d3x381_out_feedback_valid_out_115;
    wire [0:0] i_llvm_fpga_push_i1_cmp26_2153_push118_conv2d3x332_out_data_out;
    wire [0:0] i_llvm_fpga_push_i1_cmp26_2153_push118_conv2d3x332_out_feedback_out_118;
    wire [0:0] i_llvm_fpga_push_i1_cmp26_2153_push118_conv2d3x332_out_feedback_valid_out_118;
    wire [0:0] i_llvm_fpga_push_i1_cmp27128_push113_conv2d3x377_out_data_out;
    wire [0:0] i_llvm_fpga_push_i1_cmp27128_push113_conv2d3x377_out_feedback_out_113;
    wire [0:0] i_llvm_fpga_push_i1_cmp27128_push113_conv2d3x377_out_feedback_valid_out_113;
    wire [0:0] i_llvm_fpga_push_i1_cmp27_1143_push116_conv2d3x383_out_data_out;
    wire [0:0] i_llvm_fpga_push_i1_cmp27_1143_push116_conv2d3x383_out_feedback_out_116;
    wire [0:0] i_llvm_fpga_push_i1_cmp27_1143_push116_conv2d3x383_out_feedback_valid_out_116;
    wire [0:0] i_llvm_fpga_push_i1_cmp27_2158_push119_conv2d3x335_out_data_out;
    wire [0:0] i_llvm_fpga_push_i1_cmp27_2158_push119_conv2d3x335_out_feedback_out_119;
    wire [0:0] i_llvm_fpga_push_i1_cmp27_2158_push119_conv2d3x335_out_feedback_valid_out_119;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_conv2d3x315_out_feedback_out_1;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_conv2d3x315_out_feedback_valid_out_1;
    wire [0:0] i_llvm_fpga_push_i1_notcmp73174_push123_conv2d3x393_out_data_out;
    wire [0:0] i_llvm_fpga_push_i1_notcmp73174_push123_conv2d3x393_out_feedback_out_123;
    wire [0:0] i_llvm_fpga_push_i1_notcmp73174_push123_conv2d3x393_out_feedback_valid_out_123;
    wire [0:0] i_llvm_fpga_push_i1_notcmp77163_push120_conv2d3x387_out_data_out;
    wire [0:0] i_llvm_fpga_push_i1_notcmp77163_push120_conv2d3x387_out_feedback_out_120;
    wire [0:0] i_llvm_fpga_push_i1_notcmp77163_push120_conv2d3x387_out_feedback_valid_out_120;
    wire [0:0] i_llvm_fpga_push_i1_notcmp81108_push109_conv2d3x369_out_data_out;
    wire [0:0] i_llvm_fpga_push_i1_notcmp81108_push109_conv2d3x369_out_feedback_out_109;
    wire [0:0] i_llvm_fpga_push_i1_notcmp81108_push109_conv2d3x369_out_feedback_valid_out_109;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_conv2d3x359_out_feedback_out_2;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_conv2d3x359_out_feedback_valid_out_2;
    wire [0:0] i_llvm_fpga_push_i1_push125_conv2d3x339_out_feedback_out_125;
    wire [0:0] i_llvm_fpga_push_i1_push125_conv2d3x339_out_feedback_valid_out_125;
    wire [0:0] i_llvm_fpga_push_i1_push127_conv2d3x399_out_feedback_out_127;
    wire [0:0] i_llvm_fpga_push_i1_push127_conv2d3x399_out_feedback_valid_out_127;
    wire [7:0] i_llvm_fpga_push_i2_cleanups_push105_conv2d3x362_out_feedback_out_105;
    wire [0:0] i_llvm_fpga_push_i2_cleanups_push105_conv2d3x362_out_feedback_valid_out_105;
    wire [7:0] i_llvm_fpga_push_i2_initerations_push104_conv2d3x313_out_feedback_out_104;
    wire [0:0] i_llvm_fpga_push_i2_initerations_push104_conv2d3x313_out_feedback_valid_out_104;
    wire [31:0] i_llvm_fpga_push_i32_add113_push110_conv2d3x371_out_data_out;
    wire [31:0] i_llvm_fpga_push_i32_add113_push110_conv2d3x371_out_feedback_out_110;
    wire [0:0] i_llvm_fpga_push_i32_add113_push110_conv2d3x371_out_feedback_valid_out_110;
    wire [31:0] i_llvm_fpga_push_i32_add24190_push128_conv2d3x318_out_feedback_out_128;
    wire [0:0] i_llvm_fpga_push_i32_add24190_push128_conv2d3x318_out_feedback_valid_out_128;
    wire [31:0] i_llvm_fpga_push_i32_add35_2191_push129_conv2d3x326_out_feedback_out_129;
    wire [0:0] i_llvm_fpga_push_i32_add35_2191_push129_conv2d3x326_out_feedback_valid_out_129;
    wire [31:0] i_llvm_fpga_push_i32_add41_2192_push130_conv2d3x344_out_feedback_out_130;
    wire [0:0] i_llvm_fpga_push_i32_add41_2192_push130_conv2d3x344_out_feedback_valid_out_130;
    wire [31:0] i_llvm_fpga_push_i32_inc50186_push126_conv2d3x397_out_data_out;
    wire [31:0] i_llvm_fpga_push_i32_inc50186_push126_conv2d3x397_out_feedback_out_126;
    wire [0:0] i_llvm_fpga_push_i32_inc50186_push126_conv2d3x397_out_feedback_valid_out_126;
    wire [31:0] i_llvm_fpga_push_i32_j_061_pop24178_push124_conv2d3x395_out_data_out;
    wire [31:0] i_llvm_fpga_push_i32_j_061_pop24178_push124_conv2d3x395_out_feedback_out_124;
    wire [0:0] i_llvm_fpga_push_i32_j_061_pop24178_push124_conv2d3x395_out_feedback_valid_out_124;
    wire [31:0] i_llvm_fpga_push_i32_m_053_2_push102_conv2d3x351_out_feedback_out_102;
    wire [0:0] i_llvm_fpga_push_i32_m_053_2_push102_conv2d3x351_out_feedback_valid_out_102;
    wire [31:0] i_llvm_fpga_push_i32_mul56118_push111_conv2d3x373_out_data_out;
    wire [31:0] i_llvm_fpga_push_i32_mul56118_push111_conv2d3x373_out_feedback_out_111;
    wire [0:0] i_llvm_fpga_push_i32_mul56118_push111_conv2d3x373_out_feedback_valid_out_111;
    wire [31:0] i_llvm_fpga_push_i32_pad_sync_buffer170_push122_conv2d3x391_out_data_out;
    wire [31:0] i_llvm_fpga_push_i32_pad_sync_buffer170_push122_conv2d3x391_out_feedback_out_122;
    wire [0:0] i_llvm_fpga_push_i32_pad_sync_buffer170_push122_conv2d3x391_out_feedback_valid_out_122;
    wire [31:0] i_llvm_fpga_push_i32_stride_sync_buffer166_push121_conv2d3x389_out_data_out;
    wire [31:0] i_llvm_fpga_push_i32_stride_sync_buffer166_push121_conv2d3x389_out_feedback_out_121;
    wire [0:0] i_llvm_fpga_push_i32_stride_sync_buffer166_push121_conv2d3x389_out_feedback_valid_out_121;
    wire [31:0] i_llvm_fpga_push_i32_sub_1133_push114_conv2d3x379_out_data_out;
    wire [31:0] i_llvm_fpga_push_i32_sub_1133_push114_conv2d3x379_out_feedback_out_114;
    wire [0:0] i_llvm_fpga_push_i32_sub_1133_push114_conv2d3x379_out_feedback_valid_out_114;
    wire [31:0] i_llvm_fpga_push_i32_sub_2148_push117_conv2d3x385_out_data_out;
    wire [31:0] i_llvm_fpga_push_i32_sub_2148_push117_conv2d3x385_out_feedback_out_117;
    wire [0:0] i_llvm_fpga_push_i32_sub_2148_push117_conv2d3x385_out_feedback_valid_out_117;
    wire [7:0] i_llvm_fpga_push_i3_fpga_indvars_iv91_push101_conv2d3x356_out_feedback_out_101;
    wire [0:0] i_llvm_fpga_push_i3_fpga_indvars_iv91_push101_conv2d3x356_out_feedback_valid_out_101;
    wire [63:0] i_llvm_fpga_push_p1024f32_filter_weight_addr_067_replace_phi90_push106_conv2d3x348_out_data_out;
    wire [63:0] i_llvm_fpga_push_p1024f32_filter_weight_addr_067_replace_phi90_push106_conv2d3x348_out_feedback_out_106;
    wire [0:0] i_llvm_fpga_push_p1024f32_filter_weight_addr_067_replace_phi90_push106_conv2d3x348_out_feedback_valid_out_106;
    wire [63:0] i_llvm_fpga_push_p1024f32_output_im_addr_068_replace_phi96_push107_conv2d3x365_out_data_out;
    wire [63:0] i_llvm_fpga_push_p1024f32_output_im_addr_068_replace_phi96_push107_conv2d3x365_out_feedback_out_107;
    wire [0:0] i_llvm_fpga_push_p1024f32_output_im_addr_068_replace_phi96_push107_conv2d3x365_out_feedback_valid_out_107;
    wire [31:0] i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer_conv2d3x322_out_buffer_out;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer_conv2d3x329_out_buffer_out;
    wire [9:0] i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer_conv2d3x329_vt_const_9_q;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer_conv2d3x329_vt_join_q;
    wire [53:0] i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer_conv2d3x329_vt_select_63_b;
    wire [0:0] i_masked_conv2d3x363_q;
    wire [0:0] i_next_cleanups_conv2d3x361_s;
    reg [1:0] i_next_cleanups_conv2d3x361_q;
    wire [1:0] i_next_initerations_conv2d3x312_vt_join_q;
    wire [0:0] i_next_initerations_conv2d3x312_vt_select_0_b;
    wire [0:0] i_notcmp_conv2d3x358_q;
    wire [0:0] i_or_conv2d3x360_q;
    wire [0:0] i_phi_decision49_and_i0_conv2d3x340_q;
    wire [0:0] i_reduction_conv2d3x3_6_conv2d3x333_q;
    wire [0:0] i_reduction_conv2d3x3_7_conv2d3x336_q;
    wire [0:0] i_reduction_conv2d3x3_8_conv2d3x337_q;
    wire [32:0] i_sub25_2_conv2d3x319_a;
    wire [32:0] i_sub25_2_conv2d3x319_b;
    logic [32:0] i_sub25_2_conv2d3x319_o;
    wire [32:0] i_sub25_2_conv2d3x319_q;
    wire [0:0] i_unnamed_conv2d3x341_q;
    wire [0:0] i_unnamed_conv2d3x357_q;
    wire [31:0] bgTrunc_i_add36_2_conv2d3x327_sel_x_b;
    wire [31:0] bgTrunc_i_add42_2_conv2d3x345_sel_x_b;
    wire [2:0] bgTrunc_i_fpga_indvars_iv_next92_conv2d3x355_sel_x_b;
    wire [31:0] bgTrunc_i_inc_2_conv2d3x350_sel_x_b;
    wire [31:0] bgTrunc_i_sub25_2_conv2d3x319_sel_x_b;
    wire [31:0] c_i32_1167_recast_x_q;
    wire [64:0] i_arrayidx38_23_conv2d3x30_add_x_a;
    wire [64:0] i_arrayidx38_23_conv2d3x30_add_x_b;
    logic [64:0] i_arrayidx38_23_conv2d3x30_add_x_o;
    wire [64:0] i_arrayidx38_23_conv2d3x30_add_x_q;
    wire [61:0] i_arrayidx38_23_conv2d3x30_narrow_x_b;
    wire [63:0] i_arrayidx38_23_conv2d3x30_shift_join_x_q;
    wire [63:0] i_arrayidx38_23_conv2d3x30_dupName_0_trunc_sel_x_b;
    wire [64:0] i_arrayidx44_2_conv2d3x30_add_x_a;
    wire [64:0] i_arrayidx44_2_conv2d3x30_add_x_b;
    logic [64:0] i_arrayidx44_2_conv2d3x30_add_x_o;
    wire [64:0] i_arrayidx44_2_conv2d3x30_add_x_q;
    wire [61:0] i_arrayidx44_2_conv2d3x30_narrow_x_b;
    wire [63:0] i_arrayidx44_2_conv2d3x30_shift_join_x_q;
    wire [63:0] i_arrayidx44_2_conv2d3x30_dupName_0_trunc_sel_x_b;
    wire [0:0] i_first_cleanup_conv2d3x35_sel_x_b;
    wire [63:0] i_idxprom37_2_conv2d3x328_sel_x_b;
    wire [63:0] i_idxprom43_2_conv2d3x346_sel_x_b;
    wire [0:0] i_last_initeration_conv2d3x314_sel_x_b;
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
    wire [0:0] i_exitcond93_conv2d3x353_cmp_nsign_q;
    wire [0:0] leftShiftStage0Idx1Rng1_uid300_i_cleanups_shl_conv2d3x30_shift_x_in;
    wire [0:0] leftShiftStage0Idx1Rng1_uid300_i_cleanups_shl_conv2d3x30_shift_x_b;
    wire [1:0] leftShiftStage0Idx1_uid301_i_cleanups_shl_conv2d3x30_shift_x_q;
    wire [0:0] leftShiftStage0_uid303_i_cleanups_shl_conv2d3x30_shift_x_s;
    reg [1:0] leftShiftStage0_uid303_i_cleanups_shl_conv2d3x30_shift_x_q;
    wire [0:0] rightShiftStage0Idx1Rng1_uid307_i_next_initerations_conv2d3x30_shift_x_b;
    wire [1:0] rightShiftStage0Idx1_uid309_i_next_initerations_conv2d3x30_shift_x_q;
    wire [0:0] rightShiftStage0_uid311_i_next_initerations_conv2d3x30_shift_x_s;
    reg [1:0] rightShiftStage0_uid311_i_next_initerations_conv2d3x30_shift_x_q;
    reg [0:0] redist0_sync_together238_aunroll_x_in_c0_eni461037_1_tpl_1_q;
    reg [0:0] redist1_sync_together238_aunroll_x_in_c0_eni461037_1_tpl_3_q;
    reg [0:0] redist1_sync_together238_aunroll_x_in_c0_eni461037_1_tpl_3_delay_0;
    reg [0:0] redist2_sync_together238_aunroll_x_in_c0_eni461037_1_tpl_4_q;
    reg [31:0] redist3_sync_together238_aunroll_x_in_c0_eni461037_2_tpl_1_q;
    reg [31:0] redist4_sync_together238_aunroll_x_in_c0_eni461037_3_tpl_1_q;
    reg [0:0] redist5_sync_together238_aunroll_x_in_c0_eni461037_4_tpl_2_q;
    reg [0:0] redist5_sync_together238_aunroll_x_in_c0_eni461037_4_tpl_2_delay_0;
    reg [0:0] redist6_sync_together238_aunroll_x_in_c0_eni461037_5_tpl_2_q;
    reg [0:0] redist6_sync_together238_aunroll_x_in_c0_eni461037_5_tpl_2_delay_0;
    reg [0:0] redist7_sync_together238_aunroll_x_in_c0_eni461037_6_tpl_3_q;
    reg [0:0] redist7_sync_together238_aunroll_x_in_c0_eni461037_6_tpl_3_delay_0;
    reg [0:0] redist7_sync_together238_aunroll_x_in_c0_eni461037_6_tpl_3_delay_1;
    reg [31:0] redist8_sync_together238_aunroll_x_in_c0_eni461037_7_tpl_1_q;
    reg [63:0] redist9_sync_together238_aunroll_x_in_c0_eni461037_8_tpl_2_q;
    reg [63:0] redist9_sync_together238_aunroll_x_in_c0_eni461037_8_tpl_2_delay_0;
    reg [63:0] redist10_sync_together238_aunroll_x_in_c0_eni461037_9_tpl_2_q;
    reg [63:0] redist10_sync_together238_aunroll_x_in_c0_eni461037_9_tpl_2_delay_0;
    reg [31:0] redist11_sync_together238_aunroll_x_in_c0_eni461037_10_tpl_2_q;
    reg [31:0] redist11_sync_together238_aunroll_x_in_c0_eni461037_10_tpl_2_delay_0;
    reg [0:0] redist12_sync_together238_aunroll_x_in_c0_eni461037_11_tpl_2_q;
    reg [0:0] redist12_sync_together238_aunroll_x_in_c0_eni461037_11_tpl_2_delay_0;
    reg [31:0] redist13_sync_together238_aunroll_x_in_c0_eni461037_12_tpl_2_q;
    reg [31:0] redist13_sync_together238_aunroll_x_in_c0_eni461037_12_tpl_2_delay_0;
    reg [31:0] redist14_sync_together238_aunroll_x_in_c0_eni461037_13_tpl_2_q;
    reg [31:0] redist14_sync_together238_aunroll_x_in_c0_eni461037_13_tpl_2_delay_0;
    reg [0:0] redist15_sync_together238_aunroll_x_in_c0_eni461037_14_tpl_2_q;
    reg [0:0] redist15_sync_together238_aunroll_x_in_c0_eni461037_14_tpl_2_delay_0;
    reg [0:0] redist16_sync_together238_aunroll_x_in_c0_eni461037_15_tpl_2_q;
    reg [0:0] redist16_sync_together238_aunroll_x_in_c0_eni461037_15_tpl_2_delay_0;
    reg [31:0] redist17_sync_together238_aunroll_x_in_c0_eni461037_16_tpl_2_q;
    reg [31:0] redist17_sync_together238_aunroll_x_in_c0_eni461037_16_tpl_2_delay_0;
    reg [0:0] redist18_sync_together238_aunroll_x_in_c0_eni461037_17_tpl_2_q;
    reg [0:0] redist18_sync_together238_aunroll_x_in_c0_eni461037_17_tpl_2_delay_0;
    reg [0:0] redist19_sync_together238_aunroll_x_in_c0_eni461037_18_tpl_2_q;
    reg [0:0] redist19_sync_together238_aunroll_x_in_c0_eni461037_18_tpl_2_delay_0;
    reg [31:0] redist20_sync_together238_aunroll_x_in_c0_eni461037_19_tpl_2_q;
    reg [31:0] redist20_sync_together238_aunroll_x_in_c0_eni461037_19_tpl_2_delay_0;
    reg [0:0] redist21_sync_together238_aunroll_x_in_c0_eni461037_20_tpl_2_q;
    reg [0:0] redist21_sync_together238_aunroll_x_in_c0_eni461037_20_tpl_2_delay_0;
    reg [31:0] redist22_sync_together238_aunroll_x_in_c0_eni461037_21_tpl_2_q;
    reg [31:0] redist22_sync_together238_aunroll_x_in_c0_eni461037_21_tpl_2_delay_0;
    reg [31:0] redist23_sync_together238_aunroll_x_in_c0_eni461037_22_tpl_2_q;
    reg [31:0] redist23_sync_together238_aunroll_x_in_c0_eni461037_22_tpl_2_delay_0;
    reg [0:0] redist24_sync_together238_aunroll_x_in_c0_eni461037_23_tpl_1_q;
    reg [31:0] redist25_sync_together238_aunroll_x_in_c0_eni461037_24_tpl_1_q;
    reg [31:0] redist26_sync_together238_aunroll_x_in_c0_eni461037_25_tpl_1_q;
    reg [0:0] redist27_sync_together238_aunroll_x_in_c0_eni461037_26_tpl_1_q;
    reg [0:0] redist31_sync_together238_aunroll_x_in_c0_eni461037_30_tpl_4_q;
    reg [0:0] redist31_sync_together238_aunroll_x_in_c0_eni461037_30_tpl_4_delay_0;
    reg [0:0] redist31_sync_together238_aunroll_x_in_c0_eni461037_30_tpl_4_delay_1;
    reg [0:0] redist31_sync_together238_aunroll_x_in_c0_eni461037_30_tpl_4_delay_2;
    reg [0:0] redist34_sync_together238_aunroll_x_in_c0_eni461037_33_tpl_4_q;
    reg [0:0] redist34_sync_together238_aunroll_x_in_c0_eni461037_33_tpl_4_delay_0;
    reg [0:0] redist34_sync_together238_aunroll_x_in_c0_eni461037_33_tpl_4_delay_1;
    reg [0:0] redist34_sync_together238_aunroll_x_in_c0_eni461037_33_tpl_4_delay_2;
    reg [0:0] redist35_sync_together238_aunroll_x_in_c0_eni461037_34_tpl_4_q;
    reg [0:0] redist35_sync_together238_aunroll_x_in_c0_eni461037_34_tpl_4_delay_0;
    reg [0:0] redist35_sync_together238_aunroll_x_in_c0_eni461037_34_tpl_4_delay_1;
    reg [0:0] redist35_sync_together238_aunroll_x_in_c0_eni461037_34_tpl_4_delay_2;
    reg [0:0] redist37_sync_together238_aunroll_x_in_c0_eni461037_36_tpl_4_q;
    reg [0:0] redist37_sync_together238_aunroll_x_in_c0_eni461037_36_tpl_4_delay_0;
    reg [0:0] redist37_sync_together238_aunroll_x_in_c0_eni461037_36_tpl_4_delay_1;
    reg [0:0] redist37_sync_together238_aunroll_x_in_c0_eni461037_36_tpl_4_delay_2;
    reg [0:0] redist38_sync_together238_aunroll_x_in_c0_eni461037_37_tpl_4_q;
    reg [0:0] redist38_sync_together238_aunroll_x_in_c0_eni461037_37_tpl_4_delay_0;
    reg [0:0] redist38_sync_together238_aunroll_x_in_c0_eni461037_37_tpl_4_delay_1;
    reg [0:0] redist38_sync_together238_aunroll_x_in_c0_eni461037_37_tpl_4_delay_2;
    reg [0:0] redist40_sync_together238_aunroll_x_in_c0_eni461037_39_tpl_4_q;
    reg [0:0] redist40_sync_together238_aunroll_x_in_c0_eni461037_39_tpl_4_delay_0;
    reg [0:0] redist40_sync_together238_aunroll_x_in_c0_eni461037_39_tpl_4_delay_1;
    reg [0:0] redist40_sync_together238_aunroll_x_in_c0_eni461037_39_tpl_4_delay_2;
    reg [0:0] redist41_sync_together238_aunroll_x_in_c0_eni461037_40_tpl_4_q;
    reg [0:0] redist41_sync_together238_aunroll_x_in_c0_eni461037_40_tpl_4_delay_0;
    reg [0:0] redist41_sync_together238_aunroll_x_in_c0_eni461037_40_tpl_4_delay_1;
    reg [0:0] redist41_sync_together238_aunroll_x_in_c0_eni461037_40_tpl_4_delay_2;
    reg [0:0] redist42_sync_together238_aunroll_x_in_c0_eni461037_41_tpl_4_q;
    reg [0:0] redist42_sync_together238_aunroll_x_in_c0_eni461037_41_tpl_4_delay_0;
    reg [0:0] redist42_sync_together238_aunroll_x_in_c0_eni461037_41_tpl_4_delay_1;
    reg [0:0] redist42_sync_together238_aunroll_x_in_c0_eni461037_41_tpl_4_delay_2;
    reg [0:0] redist46_sync_together238_aunroll_x_in_c0_eni461037_45_tpl_4_q;
    reg [0:0] redist46_sync_together238_aunroll_x_in_c0_eni461037_45_tpl_4_delay_0;
    reg [0:0] redist46_sync_together238_aunroll_x_in_c0_eni461037_45_tpl_4_delay_1;
    reg [0:0] redist46_sync_together238_aunroll_x_in_c0_eni461037_45_tpl_4_delay_2;
    reg [0:0] redist48_sync_together238_aunroll_x_in_i_valid_1_q;
    reg [0:0] redist49_sync_together238_aunroll_x_in_i_valid_2_q;
    reg [0:0] redist50_sync_together238_aunroll_x_in_i_valid_3_q;
    reg [0:0] redist51_sync_together238_aunroll_x_in_i_valid_4_q;
    reg [31:0] redist52_bgTrunc_i_sub25_2_conv2d3x319_sel_x_b_1_q;
    reg [63:0] redist53_i_llvm_fpga_pop_p1024f32_output_im_addr_068_replace_phi96_pop107_conv2d3x364_out_data_out_2_q;
    reg [63:0] redist53_i_llvm_fpga_pop_p1024f32_output_im_addr_068_replace_phi96_pop107_conv2d3x364_out_data_out_2_delay_0;
    reg [63:0] redist54_i_llvm_fpga_pop_p1024f32_filter_weight_addr_067_replace_phi90_pop106_conv2d3x347_out_data_out_2_q;
    reg [63:0] redist54_i_llvm_fpga_pop_p1024f32_filter_weight_addr_067_replace_phi90_pop106_conv2d3x347_out_data_out_2_delay_0;
    reg [31:0] redist55_i_llvm_fpga_pop_i32_sub_2148_pop117_conv2d3x384_out_data_out_2_q;
    reg [31:0] redist55_i_llvm_fpga_pop_i32_sub_2148_pop117_conv2d3x384_out_data_out_2_delay_0;
    reg [31:0] redist56_i_llvm_fpga_pop_i32_sub_1133_pop114_conv2d3x378_out_data_out_2_q;
    reg [31:0] redist56_i_llvm_fpga_pop_i32_sub_1133_pop114_conv2d3x378_out_data_out_2_delay_0;
    reg [31:0] redist57_i_llvm_fpga_pop_i32_stride_sync_buffer166_pop121_conv2d3x388_out_data_out_2_q;
    reg [31:0] redist57_i_llvm_fpga_pop_i32_stride_sync_buffer166_pop121_conv2d3x388_out_data_out_2_delay_0;
    reg [31:0] redist58_i_llvm_fpga_pop_i32_pad_sync_buffer170_pop122_conv2d3x390_out_data_out_2_q;
    reg [31:0] redist58_i_llvm_fpga_pop_i32_pad_sync_buffer170_pop122_conv2d3x390_out_data_out_2_delay_0;
    reg [31:0] redist59_i_llvm_fpga_pop_i32_mul56118_pop111_conv2d3x372_out_data_out_2_q;
    reg [31:0] redist59_i_llvm_fpga_pop_i32_mul56118_pop111_conv2d3x372_out_data_out_2_delay_0;
    reg [31:0] redist60_i_llvm_fpga_pop_i32_m_053_2_pop102_conv2d3x316_out_data_out_1_q;
    reg [31:0] redist61_i_llvm_fpga_pop_i32_m_053_2_pop102_conv2d3x316_out_data_out_2_q;
    reg [31:0] redist64_i_llvm_fpga_pop_i32_add41_2192_pop130_conv2d3x343_out_data_out_3_q;
    reg [31:0] redist64_i_llvm_fpga_pop_i32_add41_2192_pop130_conv2d3x343_out_data_out_3_delay_0;
    reg [31:0] redist65_i_llvm_fpga_pop_i32_add35_2191_pop129_conv2d3x325_out_data_out_3_q;
    reg [31:0] redist65_i_llvm_fpga_pop_i32_add35_2191_pop129_conv2d3x325_out_data_out_3_delay_0;
    reg [31:0] redist66_i_llvm_fpga_pop_i32_add24190_pop128_conv2d3x317_out_data_out_2_q;
    reg [31:0] redist66_i_llvm_fpga_pop_i32_add24190_pop128_conv2d3x317_out_data_out_2_delay_0;
    reg [31:0] redist67_i_llvm_fpga_pop_i32_add24190_pop128_conv2d3x317_out_data_out_3_q;
    reg [31:0] redist68_i_llvm_fpga_pop_i32_add113_pop110_conv2d3x370_out_data_out_2_q;
    reg [31:0] redist68_i_llvm_fpga_pop_i32_add113_pop110_conv2d3x370_out_data_out_2_delay_0;
    reg [0:0] redist69_i_llvm_fpga_pop_i1_pop127_conv2d3x398_out_data_out_3_q;
    reg [0:0] redist69_i_llvm_fpga_pop_i1_pop127_conv2d3x398_out_data_out_3_delay_0;
    reg [0:0] redist69_i_llvm_fpga_pop_i1_pop127_conv2d3x398_out_data_out_3_delay_1;
    reg [0:0] redist70_i_llvm_fpga_pop_i1_pop125_conv2d3x338_out_data_out_1_q;
    reg [0:0] redist71_i_llvm_fpga_pop_i1_notcmp81108_pop109_conv2d3x368_out_data_out_2_q;
    reg [0:0] redist71_i_llvm_fpga_pop_i1_notcmp81108_pop109_conv2d3x368_out_data_out_2_delay_0;
    reg [0:0] redist72_i_llvm_fpga_pop_i1_notcmp77163_pop120_conv2d3x386_out_data_out_2_q;
    reg [0:0] redist72_i_llvm_fpga_pop_i1_notcmp77163_pop120_conv2d3x386_out_data_out_2_delay_0;
    reg [0:0] redist73_i_llvm_fpga_pop_i1_notcmp73174_pop123_conv2d3x392_out_data_out_3_q;
    reg [0:0] redist73_i_llvm_fpga_pop_i1_notcmp73174_pop123_conv2d3x392_out_data_out_3_delay_0;
    reg [0:0] redist73_i_llvm_fpga_pop_i1_notcmp73174_pop123_conv2d3x392_out_data_out_3_delay_1;
    reg [0:0] redist74_i_llvm_fpga_pop_i1_cmp27_2158_pop119_conv2d3x334_out_data_out_2_q;
    reg [0:0] redist74_i_llvm_fpga_pop_i1_cmp27_2158_pop119_conv2d3x334_out_data_out_2_delay_0;
    reg [0:0] redist75_i_llvm_fpga_pop_i1_cmp27_1143_pop116_conv2d3x382_out_data_out_2_q;
    reg [0:0] redist75_i_llvm_fpga_pop_i1_cmp27_1143_pop116_conv2d3x382_out_data_out_2_delay_0;
    reg [0:0] redist76_i_llvm_fpga_pop_i1_cmp27128_pop113_conv2d3x376_out_data_out_2_q;
    reg [0:0] redist76_i_llvm_fpga_pop_i1_cmp27128_pop113_conv2d3x376_out_data_out_2_delay_0;
    reg [0:0] redist77_i_llvm_fpga_pop_i1_cmp26_2153_pop118_conv2d3x331_out_data_out_2_q;
    reg [0:0] redist77_i_llvm_fpga_pop_i1_cmp26_2153_pop118_conv2d3x331_out_data_out_2_delay_0;
    reg [0:0] redist78_i_llvm_fpga_pop_i1_cmp26_1138_pop115_conv2d3x380_out_data_out_2_q;
    reg [0:0] redist78_i_llvm_fpga_pop_i1_cmp26_1138_pop115_conv2d3x380_out_data_out_2_delay_0;
    reg [0:0] redist79_i_llvm_fpga_pop_i1_cmp26123_pop112_conv2d3x374_out_data_out_2_q;
    reg [0:0] redist79_i_llvm_fpga_pop_i1_cmp26123_pop112_conv2d3x374_out_data_out_2_delay_0;
    reg [31:0] redist80_i_llvm_fpga_pop_f32_lm25102_pop108_conv2d3x366_out_data_out_2_q;
    reg [31:0] redist80_i_llvm_fpga_pop_f32_lm25102_pop108_conv2d3x366_out_data_out_2_delay_0;
    reg [0:0] redist81_i_llvm_fpga_pipeline_keep_going_conv2d3x38_out_data_out_1_q;
    wire redist28_sync_together238_aunroll_x_in_c0_eni461037_27_tpl_4_mem_reset0;
    wire [63:0] redist28_sync_together238_aunroll_x_in_c0_eni461037_27_tpl_4_mem_ia;
    wire [1:0] redist28_sync_together238_aunroll_x_in_c0_eni461037_27_tpl_4_mem_aa;
    wire [1:0] redist28_sync_together238_aunroll_x_in_c0_eni461037_27_tpl_4_mem_ab;
    wire [63:0] redist28_sync_together238_aunroll_x_in_c0_eni461037_27_tpl_4_mem_iq;
    wire [63:0] redist28_sync_together238_aunroll_x_in_c0_eni461037_27_tpl_4_mem_q;
    wire [1:0] redist28_sync_together238_aunroll_x_in_c0_eni461037_27_tpl_4_rdcnt_q;
    (* preserve *) reg [1:0] redist28_sync_together238_aunroll_x_in_c0_eni461037_27_tpl_4_rdcnt_i;
    (* preserve *) reg redist28_sync_together238_aunroll_x_in_c0_eni461037_27_tpl_4_rdcnt_eq;
    reg [1:0] redist28_sync_together238_aunroll_x_in_c0_eni461037_27_tpl_4_wraddr_q;
    wire [1:0] redist28_sync_together238_aunroll_x_in_c0_eni461037_27_tpl_4_mem_last_q;
    wire [0:0] redist28_sync_together238_aunroll_x_in_c0_eni461037_27_tpl_4_cmp_q;
    (* dont_merge *) reg [0:0] redist28_sync_together238_aunroll_x_in_c0_eni461037_27_tpl_4_cmpReg_q;
    wire [0:0] redist28_sync_together238_aunroll_x_in_c0_eni461037_27_tpl_4_notEnable_q;
    wire [0:0] redist28_sync_together238_aunroll_x_in_c0_eni461037_27_tpl_4_nor_q;
    (* dont_merge *) reg [0:0] redist28_sync_together238_aunroll_x_in_c0_eni461037_27_tpl_4_sticky_ena_q;
    wire [0:0] redist28_sync_together238_aunroll_x_in_c0_eni461037_27_tpl_4_enaAnd_q;
    wire redist29_sync_together238_aunroll_x_in_c0_eni461037_28_tpl_4_mem_reset0;
    wire [63:0] redist29_sync_together238_aunroll_x_in_c0_eni461037_28_tpl_4_mem_ia;
    wire [1:0] redist29_sync_together238_aunroll_x_in_c0_eni461037_28_tpl_4_mem_aa;
    wire [1:0] redist29_sync_together238_aunroll_x_in_c0_eni461037_28_tpl_4_mem_ab;
    wire [63:0] redist29_sync_together238_aunroll_x_in_c0_eni461037_28_tpl_4_mem_iq;
    wire [63:0] redist29_sync_together238_aunroll_x_in_c0_eni461037_28_tpl_4_mem_q;
    wire [1:0] redist29_sync_together238_aunroll_x_in_c0_eni461037_28_tpl_4_rdcnt_q;
    (* preserve *) reg [1:0] redist29_sync_together238_aunroll_x_in_c0_eni461037_28_tpl_4_rdcnt_i;
    (* preserve *) reg redist29_sync_together238_aunroll_x_in_c0_eni461037_28_tpl_4_rdcnt_eq;
    reg [1:0] redist29_sync_together238_aunroll_x_in_c0_eni461037_28_tpl_4_wraddr_q;
    wire [1:0] redist29_sync_together238_aunroll_x_in_c0_eni461037_28_tpl_4_mem_last_q;
    wire [0:0] redist29_sync_together238_aunroll_x_in_c0_eni461037_28_tpl_4_cmp_q;
    (* dont_merge *) reg [0:0] redist29_sync_together238_aunroll_x_in_c0_eni461037_28_tpl_4_cmpReg_q;
    wire [0:0] redist29_sync_together238_aunroll_x_in_c0_eni461037_28_tpl_4_notEnable_q;
    wire [0:0] redist29_sync_together238_aunroll_x_in_c0_eni461037_28_tpl_4_nor_q;
    (* dont_merge *) reg [0:0] redist29_sync_together238_aunroll_x_in_c0_eni461037_28_tpl_4_sticky_ena_q;
    wire [0:0] redist29_sync_together238_aunroll_x_in_c0_eni461037_28_tpl_4_enaAnd_q;
    wire redist30_sync_together238_aunroll_x_in_c0_eni461037_29_tpl_4_mem_reset0;
    wire [31:0] redist30_sync_together238_aunroll_x_in_c0_eni461037_29_tpl_4_mem_ia;
    wire [1:0] redist30_sync_together238_aunroll_x_in_c0_eni461037_29_tpl_4_mem_aa;
    wire [1:0] redist30_sync_together238_aunroll_x_in_c0_eni461037_29_tpl_4_mem_ab;
    wire [31:0] redist30_sync_together238_aunroll_x_in_c0_eni461037_29_tpl_4_mem_iq;
    wire [31:0] redist30_sync_together238_aunroll_x_in_c0_eni461037_29_tpl_4_mem_q;
    wire [1:0] redist30_sync_together238_aunroll_x_in_c0_eni461037_29_tpl_4_rdcnt_q;
    (* preserve *) reg [1:0] redist30_sync_together238_aunroll_x_in_c0_eni461037_29_tpl_4_rdcnt_i;
    (* preserve *) reg redist30_sync_together238_aunroll_x_in_c0_eni461037_29_tpl_4_rdcnt_eq;
    reg [1:0] redist30_sync_together238_aunroll_x_in_c0_eni461037_29_tpl_4_wraddr_q;
    wire [1:0] redist30_sync_together238_aunroll_x_in_c0_eni461037_29_tpl_4_mem_last_q;
    wire [0:0] redist30_sync_together238_aunroll_x_in_c0_eni461037_29_tpl_4_cmp_q;
    (* dont_merge *) reg [0:0] redist30_sync_together238_aunroll_x_in_c0_eni461037_29_tpl_4_cmpReg_q;
    wire [0:0] redist30_sync_together238_aunroll_x_in_c0_eni461037_29_tpl_4_notEnable_q;
    wire [0:0] redist30_sync_together238_aunroll_x_in_c0_eni461037_29_tpl_4_nor_q;
    (* dont_merge *) reg [0:0] redist30_sync_together238_aunroll_x_in_c0_eni461037_29_tpl_4_sticky_ena_q;
    wire [0:0] redist30_sync_together238_aunroll_x_in_c0_eni461037_29_tpl_4_enaAnd_q;
    wire redist32_sync_together238_aunroll_x_in_c0_eni461037_31_tpl_4_mem_reset0;
    wire [31:0] redist32_sync_together238_aunroll_x_in_c0_eni461037_31_tpl_4_mem_ia;
    wire [1:0] redist32_sync_together238_aunroll_x_in_c0_eni461037_31_tpl_4_mem_aa;
    wire [1:0] redist32_sync_together238_aunroll_x_in_c0_eni461037_31_tpl_4_mem_ab;
    wire [31:0] redist32_sync_together238_aunroll_x_in_c0_eni461037_31_tpl_4_mem_iq;
    wire [31:0] redist32_sync_together238_aunroll_x_in_c0_eni461037_31_tpl_4_mem_q;
    wire [1:0] redist32_sync_together238_aunroll_x_in_c0_eni461037_31_tpl_4_rdcnt_q;
    (* preserve *) reg [1:0] redist32_sync_together238_aunroll_x_in_c0_eni461037_31_tpl_4_rdcnt_i;
    (* preserve *) reg redist32_sync_together238_aunroll_x_in_c0_eni461037_31_tpl_4_rdcnt_eq;
    reg [1:0] redist32_sync_together238_aunroll_x_in_c0_eni461037_31_tpl_4_wraddr_q;
    wire [1:0] redist32_sync_together238_aunroll_x_in_c0_eni461037_31_tpl_4_mem_last_q;
    wire [0:0] redist32_sync_together238_aunroll_x_in_c0_eni461037_31_tpl_4_cmp_q;
    (* dont_merge *) reg [0:0] redist32_sync_together238_aunroll_x_in_c0_eni461037_31_tpl_4_cmpReg_q;
    wire [0:0] redist32_sync_together238_aunroll_x_in_c0_eni461037_31_tpl_4_notEnable_q;
    wire [0:0] redist32_sync_together238_aunroll_x_in_c0_eni461037_31_tpl_4_nor_q;
    (* dont_merge *) reg [0:0] redist32_sync_together238_aunroll_x_in_c0_eni461037_31_tpl_4_sticky_ena_q;
    wire [0:0] redist32_sync_together238_aunroll_x_in_c0_eni461037_31_tpl_4_enaAnd_q;
    wire redist33_sync_together238_aunroll_x_in_c0_eni461037_32_tpl_4_mem_reset0;
    wire [31:0] redist33_sync_together238_aunroll_x_in_c0_eni461037_32_tpl_4_mem_ia;
    wire [1:0] redist33_sync_together238_aunroll_x_in_c0_eni461037_32_tpl_4_mem_aa;
    wire [1:0] redist33_sync_together238_aunroll_x_in_c0_eni461037_32_tpl_4_mem_ab;
    wire [31:0] redist33_sync_together238_aunroll_x_in_c0_eni461037_32_tpl_4_mem_iq;
    wire [31:0] redist33_sync_together238_aunroll_x_in_c0_eni461037_32_tpl_4_mem_q;
    wire [1:0] redist33_sync_together238_aunroll_x_in_c0_eni461037_32_tpl_4_rdcnt_q;
    (* preserve *) reg [1:0] redist33_sync_together238_aunroll_x_in_c0_eni461037_32_tpl_4_rdcnt_i;
    (* preserve *) reg redist33_sync_together238_aunroll_x_in_c0_eni461037_32_tpl_4_rdcnt_eq;
    reg [1:0] redist33_sync_together238_aunroll_x_in_c0_eni461037_32_tpl_4_wraddr_q;
    wire [1:0] redist33_sync_together238_aunroll_x_in_c0_eni461037_32_tpl_4_mem_last_q;
    wire [0:0] redist33_sync_together238_aunroll_x_in_c0_eni461037_32_tpl_4_cmp_q;
    (* dont_merge *) reg [0:0] redist33_sync_together238_aunroll_x_in_c0_eni461037_32_tpl_4_cmpReg_q;
    wire [0:0] redist33_sync_together238_aunroll_x_in_c0_eni461037_32_tpl_4_notEnable_q;
    wire [0:0] redist33_sync_together238_aunroll_x_in_c0_eni461037_32_tpl_4_nor_q;
    (* dont_merge *) reg [0:0] redist33_sync_together238_aunroll_x_in_c0_eni461037_32_tpl_4_sticky_ena_q;
    wire [0:0] redist33_sync_together238_aunroll_x_in_c0_eni461037_32_tpl_4_enaAnd_q;
    wire redist36_sync_together238_aunroll_x_in_c0_eni461037_35_tpl_4_mem_reset0;
    wire [31:0] redist36_sync_together238_aunroll_x_in_c0_eni461037_35_tpl_4_mem_ia;
    wire [1:0] redist36_sync_together238_aunroll_x_in_c0_eni461037_35_tpl_4_mem_aa;
    wire [1:0] redist36_sync_together238_aunroll_x_in_c0_eni461037_35_tpl_4_mem_ab;
    wire [31:0] redist36_sync_together238_aunroll_x_in_c0_eni461037_35_tpl_4_mem_iq;
    wire [31:0] redist36_sync_together238_aunroll_x_in_c0_eni461037_35_tpl_4_mem_q;
    wire [1:0] redist36_sync_together238_aunroll_x_in_c0_eni461037_35_tpl_4_rdcnt_q;
    (* preserve *) reg [1:0] redist36_sync_together238_aunroll_x_in_c0_eni461037_35_tpl_4_rdcnt_i;
    (* preserve *) reg redist36_sync_together238_aunroll_x_in_c0_eni461037_35_tpl_4_rdcnt_eq;
    reg [1:0] redist36_sync_together238_aunroll_x_in_c0_eni461037_35_tpl_4_wraddr_q;
    wire [1:0] redist36_sync_together238_aunroll_x_in_c0_eni461037_35_tpl_4_mem_last_q;
    wire [0:0] redist36_sync_together238_aunroll_x_in_c0_eni461037_35_tpl_4_cmp_q;
    (* dont_merge *) reg [0:0] redist36_sync_together238_aunroll_x_in_c0_eni461037_35_tpl_4_cmpReg_q;
    wire [0:0] redist36_sync_together238_aunroll_x_in_c0_eni461037_35_tpl_4_notEnable_q;
    wire [0:0] redist36_sync_together238_aunroll_x_in_c0_eni461037_35_tpl_4_nor_q;
    (* dont_merge *) reg [0:0] redist36_sync_together238_aunroll_x_in_c0_eni461037_35_tpl_4_sticky_ena_q;
    wire [0:0] redist36_sync_together238_aunroll_x_in_c0_eni461037_35_tpl_4_enaAnd_q;
    wire redist39_sync_together238_aunroll_x_in_c0_eni461037_38_tpl_4_mem_reset0;
    wire [31:0] redist39_sync_together238_aunroll_x_in_c0_eni461037_38_tpl_4_mem_ia;
    wire [1:0] redist39_sync_together238_aunroll_x_in_c0_eni461037_38_tpl_4_mem_aa;
    wire [1:0] redist39_sync_together238_aunroll_x_in_c0_eni461037_38_tpl_4_mem_ab;
    wire [31:0] redist39_sync_together238_aunroll_x_in_c0_eni461037_38_tpl_4_mem_iq;
    wire [31:0] redist39_sync_together238_aunroll_x_in_c0_eni461037_38_tpl_4_mem_q;
    wire [1:0] redist39_sync_together238_aunroll_x_in_c0_eni461037_38_tpl_4_rdcnt_q;
    (* preserve *) reg [1:0] redist39_sync_together238_aunroll_x_in_c0_eni461037_38_tpl_4_rdcnt_i;
    (* preserve *) reg redist39_sync_together238_aunroll_x_in_c0_eni461037_38_tpl_4_rdcnt_eq;
    reg [1:0] redist39_sync_together238_aunroll_x_in_c0_eni461037_38_tpl_4_wraddr_q;
    wire [1:0] redist39_sync_together238_aunroll_x_in_c0_eni461037_38_tpl_4_mem_last_q;
    wire [0:0] redist39_sync_together238_aunroll_x_in_c0_eni461037_38_tpl_4_cmp_q;
    (* dont_merge *) reg [0:0] redist39_sync_together238_aunroll_x_in_c0_eni461037_38_tpl_4_cmpReg_q;
    wire [0:0] redist39_sync_together238_aunroll_x_in_c0_eni461037_38_tpl_4_notEnable_q;
    wire [0:0] redist39_sync_together238_aunroll_x_in_c0_eni461037_38_tpl_4_nor_q;
    (* dont_merge *) reg [0:0] redist39_sync_together238_aunroll_x_in_c0_eni461037_38_tpl_4_sticky_ena_q;
    wire [0:0] redist39_sync_together238_aunroll_x_in_c0_eni461037_38_tpl_4_enaAnd_q;
    wire redist43_sync_together238_aunroll_x_in_c0_eni461037_42_tpl_4_mem_reset0;
    wire [63:0] redist43_sync_together238_aunroll_x_in_c0_eni461037_42_tpl_4_mem_ia;
    wire [1:0] redist43_sync_together238_aunroll_x_in_c0_eni461037_42_tpl_4_mem_aa;
    wire [1:0] redist43_sync_together238_aunroll_x_in_c0_eni461037_42_tpl_4_mem_ab;
    wire [63:0] redist43_sync_together238_aunroll_x_in_c0_eni461037_42_tpl_4_mem_iq;
    wire [63:0] redist43_sync_together238_aunroll_x_in_c0_eni461037_42_tpl_4_mem_q;
    wire [1:0] redist43_sync_together238_aunroll_x_in_c0_eni461037_42_tpl_4_rdcnt_q;
    (* preserve *) reg [1:0] redist43_sync_together238_aunroll_x_in_c0_eni461037_42_tpl_4_rdcnt_i;
    (* preserve *) reg redist43_sync_together238_aunroll_x_in_c0_eni461037_42_tpl_4_rdcnt_eq;
    reg [1:0] redist43_sync_together238_aunroll_x_in_c0_eni461037_42_tpl_4_wraddr_q;
    wire [1:0] redist43_sync_together238_aunroll_x_in_c0_eni461037_42_tpl_4_mem_last_q;
    wire [0:0] redist43_sync_together238_aunroll_x_in_c0_eni461037_42_tpl_4_cmp_q;
    (* dont_merge *) reg [0:0] redist43_sync_together238_aunroll_x_in_c0_eni461037_42_tpl_4_cmpReg_q;
    wire [0:0] redist43_sync_together238_aunroll_x_in_c0_eni461037_42_tpl_4_notEnable_q;
    wire [0:0] redist43_sync_together238_aunroll_x_in_c0_eni461037_42_tpl_4_nor_q;
    (* dont_merge *) reg [0:0] redist43_sync_together238_aunroll_x_in_c0_eni461037_42_tpl_4_sticky_ena_q;
    wire [0:0] redist43_sync_together238_aunroll_x_in_c0_eni461037_42_tpl_4_enaAnd_q;
    wire redist44_sync_together238_aunroll_x_in_c0_eni461037_43_tpl_4_mem_reset0;
    wire [63:0] redist44_sync_together238_aunroll_x_in_c0_eni461037_43_tpl_4_mem_ia;
    wire [1:0] redist44_sync_together238_aunroll_x_in_c0_eni461037_43_tpl_4_mem_aa;
    wire [1:0] redist44_sync_together238_aunroll_x_in_c0_eni461037_43_tpl_4_mem_ab;
    wire [63:0] redist44_sync_together238_aunroll_x_in_c0_eni461037_43_tpl_4_mem_iq;
    wire [63:0] redist44_sync_together238_aunroll_x_in_c0_eni461037_43_tpl_4_mem_q;
    wire [1:0] redist44_sync_together238_aunroll_x_in_c0_eni461037_43_tpl_4_rdcnt_q;
    (* preserve *) reg [1:0] redist44_sync_together238_aunroll_x_in_c0_eni461037_43_tpl_4_rdcnt_i;
    (* preserve *) reg redist44_sync_together238_aunroll_x_in_c0_eni461037_43_tpl_4_rdcnt_eq;
    reg [1:0] redist44_sync_together238_aunroll_x_in_c0_eni461037_43_tpl_4_wraddr_q;
    wire [1:0] redist44_sync_together238_aunroll_x_in_c0_eni461037_43_tpl_4_mem_last_q;
    wire [0:0] redist44_sync_together238_aunroll_x_in_c0_eni461037_43_tpl_4_cmp_q;
    (* dont_merge *) reg [0:0] redist44_sync_together238_aunroll_x_in_c0_eni461037_43_tpl_4_cmpReg_q;
    wire [0:0] redist44_sync_together238_aunroll_x_in_c0_eni461037_43_tpl_4_notEnable_q;
    wire [0:0] redist44_sync_together238_aunroll_x_in_c0_eni461037_43_tpl_4_nor_q;
    (* dont_merge *) reg [0:0] redist44_sync_together238_aunroll_x_in_c0_eni461037_43_tpl_4_sticky_ena_q;
    wire [0:0] redist44_sync_together238_aunroll_x_in_c0_eni461037_43_tpl_4_enaAnd_q;
    wire redist45_sync_together238_aunroll_x_in_c0_eni461037_44_tpl_4_mem_reset0;
    wire [31:0] redist45_sync_together238_aunroll_x_in_c0_eni461037_44_tpl_4_mem_ia;
    wire [1:0] redist45_sync_together238_aunroll_x_in_c0_eni461037_44_tpl_4_mem_aa;
    wire [1:0] redist45_sync_together238_aunroll_x_in_c0_eni461037_44_tpl_4_mem_ab;
    wire [31:0] redist45_sync_together238_aunroll_x_in_c0_eni461037_44_tpl_4_mem_iq;
    wire [31:0] redist45_sync_together238_aunroll_x_in_c0_eni461037_44_tpl_4_mem_q;
    wire [1:0] redist45_sync_together238_aunroll_x_in_c0_eni461037_44_tpl_4_rdcnt_q;
    (* preserve *) reg [1:0] redist45_sync_together238_aunroll_x_in_c0_eni461037_44_tpl_4_rdcnt_i;
    (* preserve *) reg redist45_sync_together238_aunroll_x_in_c0_eni461037_44_tpl_4_rdcnt_eq;
    reg [1:0] redist45_sync_together238_aunroll_x_in_c0_eni461037_44_tpl_4_wraddr_q;
    wire [1:0] redist45_sync_together238_aunroll_x_in_c0_eni461037_44_tpl_4_mem_last_q;
    wire [0:0] redist45_sync_together238_aunroll_x_in_c0_eni461037_44_tpl_4_cmp_q;
    (* dont_merge *) reg [0:0] redist45_sync_together238_aunroll_x_in_c0_eni461037_44_tpl_4_cmpReg_q;
    wire [0:0] redist45_sync_together238_aunroll_x_in_c0_eni461037_44_tpl_4_notEnable_q;
    wire [0:0] redist45_sync_together238_aunroll_x_in_c0_eni461037_44_tpl_4_nor_q;
    (* dont_merge *) reg [0:0] redist45_sync_together238_aunroll_x_in_c0_eni461037_44_tpl_4_sticky_ena_q;
    wire [0:0] redist45_sync_together238_aunroll_x_in_c0_eni461037_44_tpl_4_enaAnd_q;
    wire redist47_sync_together238_aunroll_x_in_c0_eni461037_46_tpl_4_mem_reset0;
    wire [31:0] redist47_sync_together238_aunroll_x_in_c0_eni461037_46_tpl_4_mem_ia;
    wire [1:0] redist47_sync_together238_aunroll_x_in_c0_eni461037_46_tpl_4_mem_aa;
    wire [1:0] redist47_sync_together238_aunroll_x_in_c0_eni461037_46_tpl_4_mem_ab;
    wire [31:0] redist47_sync_together238_aunroll_x_in_c0_eni461037_46_tpl_4_mem_iq;
    wire [31:0] redist47_sync_together238_aunroll_x_in_c0_eni461037_46_tpl_4_mem_q;
    wire [1:0] redist47_sync_together238_aunroll_x_in_c0_eni461037_46_tpl_4_rdcnt_q;
    (* preserve *) reg [1:0] redist47_sync_together238_aunroll_x_in_c0_eni461037_46_tpl_4_rdcnt_i;
    (* preserve *) reg redist47_sync_together238_aunroll_x_in_c0_eni461037_46_tpl_4_rdcnt_eq;
    reg [1:0] redist47_sync_together238_aunroll_x_in_c0_eni461037_46_tpl_4_wraddr_q;
    wire [1:0] redist47_sync_together238_aunroll_x_in_c0_eni461037_46_tpl_4_mem_last_q;
    wire [0:0] redist47_sync_together238_aunroll_x_in_c0_eni461037_46_tpl_4_cmp_q;
    (* dont_merge *) reg [0:0] redist47_sync_together238_aunroll_x_in_c0_eni461037_46_tpl_4_cmpReg_q;
    wire [0:0] redist47_sync_together238_aunroll_x_in_c0_eni461037_46_tpl_4_notEnable_q;
    wire [0:0] redist47_sync_together238_aunroll_x_in_c0_eni461037_46_tpl_4_nor_q;
    (* dont_merge *) reg [0:0] redist47_sync_together238_aunroll_x_in_c0_eni461037_46_tpl_4_sticky_ena_q;
    wire [0:0] redist47_sync_together238_aunroll_x_in_c0_eni461037_46_tpl_4_enaAnd_q;
    wire redist62_i_llvm_fpga_pop_i32_j_061_pop24178_pop124_conv2d3x394_out_data_out_3_mem_reset0;
    wire [31:0] redist62_i_llvm_fpga_pop_i32_j_061_pop24178_pop124_conv2d3x394_out_data_out_3_mem_ia;
    wire [0:0] redist62_i_llvm_fpga_pop_i32_j_061_pop24178_pop124_conv2d3x394_out_data_out_3_mem_aa;
    wire [0:0] redist62_i_llvm_fpga_pop_i32_j_061_pop24178_pop124_conv2d3x394_out_data_out_3_mem_ab;
    wire [31:0] redist62_i_llvm_fpga_pop_i32_j_061_pop24178_pop124_conv2d3x394_out_data_out_3_mem_iq;
    wire [31:0] redist62_i_llvm_fpga_pop_i32_j_061_pop24178_pop124_conv2d3x394_out_data_out_3_mem_q;
    wire [0:0] redist62_i_llvm_fpga_pop_i32_j_061_pop24178_pop124_conv2d3x394_out_data_out_3_rdcnt_q;
    (* preserve *) reg [0:0] redist62_i_llvm_fpga_pop_i32_j_061_pop24178_pop124_conv2d3x394_out_data_out_3_rdcnt_i;
    reg [0:0] redist62_i_llvm_fpga_pop_i32_j_061_pop24178_pop124_conv2d3x394_out_data_out_3_wraddr_q;
    (* dont_merge *) reg [0:0] redist62_i_llvm_fpga_pop_i32_j_061_pop24178_pop124_conv2d3x394_out_data_out_3_cmpReg_q;
    wire [0:0] redist62_i_llvm_fpga_pop_i32_j_061_pop24178_pop124_conv2d3x394_out_data_out_3_notEnable_q;
    wire [0:0] redist62_i_llvm_fpga_pop_i32_j_061_pop24178_pop124_conv2d3x394_out_data_out_3_nor_q;
    (* dont_merge *) reg [0:0] redist62_i_llvm_fpga_pop_i32_j_061_pop24178_pop124_conv2d3x394_out_data_out_3_sticky_ena_q;
    wire [0:0] redist62_i_llvm_fpga_pop_i32_j_061_pop24178_pop124_conv2d3x394_out_data_out_3_enaAnd_q;
    wire redist63_i_llvm_fpga_pop_i32_inc50186_pop126_conv2d3x396_out_data_out_3_mem_reset0;
    wire [31:0] redist63_i_llvm_fpga_pop_i32_inc50186_pop126_conv2d3x396_out_data_out_3_mem_ia;
    wire [0:0] redist63_i_llvm_fpga_pop_i32_inc50186_pop126_conv2d3x396_out_data_out_3_mem_aa;
    wire [0:0] redist63_i_llvm_fpga_pop_i32_inc50186_pop126_conv2d3x396_out_data_out_3_mem_ab;
    wire [31:0] redist63_i_llvm_fpga_pop_i32_inc50186_pop126_conv2d3x396_out_data_out_3_mem_iq;
    wire [31:0] redist63_i_llvm_fpga_pop_i32_inc50186_pop126_conv2d3x396_out_data_out_3_mem_q;
    wire [0:0] redist63_i_llvm_fpga_pop_i32_inc50186_pop126_conv2d3x396_out_data_out_3_rdcnt_q;
    (* preserve *) reg [0:0] redist63_i_llvm_fpga_pop_i32_inc50186_pop126_conv2d3x396_out_data_out_3_rdcnt_i;
    reg [0:0] redist63_i_llvm_fpga_pop_i32_inc50186_pop126_conv2d3x396_out_data_out_3_wraddr_q;
    (* dont_merge *) reg [0:0] redist63_i_llvm_fpga_pop_i32_inc50186_pop126_conv2d3x396_out_data_out_3_cmpReg_q;
    wire [0:0] redist63_i_llvm_fpga_pop_i32_inc50186_pop126_conv2d3x396_out_data_out_3_notEnable_q;
    wire [0:0] redist63_i_llvm_fpga_pop_i32_inc50186_pop126_conv2d3x396_out_data_out_3_nor_q;
    (* dont_merge *) reg [0:0] redist63_i_llvm_fpga_pop_i32_inc50186_pop126_conv2d3x396_out_data_out_3_sticky_ena_q;
    wire [0:0] redist63_i_llvm_fpga_pop_i32_inc50186_pop126_conv2d3x396_out_data_out_3_enaAnd_q;
    reg [31:0] redist64_i_llvm_fpga_pop_i32_add41_2192_pop130_conv2d3x343_out_data_out_3_outputreg0_q;
    reg [31:0] redist65_i_llvm_fpga_pop_i32_add35_2191_pop129_conv2d3x325_out_data_out_3_outputreg0_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist48_sync_together238_aunroll_x_in_i_valid_1(DELAY,360)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist48_sync_together238_aunroll_x_in_i_valid_1_q <= '0;
        end
        else
        begin
            redist48_sync_together238_aunroll_x_in_i_valid_1_q <= $unsigned(in_i_valid);
        end
    end

    // redist49_sync_together238_aunroll_x_in_i_valid_2(DELAY,361)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist49_sync_together238_aunroll_x_in_i_valid_2_q <= '0;
        end
        else
        begin
            redist49_sync_together238_aunroll_x_in_i_valid_2_q <= $unsigned(redist48_sync_together238_aunroll_x_in_i_valid_1_q);
        end
    end

    // redist50_sync_together238_aunroll_x_in_i_valid_3(DELAY,362)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist50_sync_together238_aunroll_x_in_i_valid_3_q <= '0;
        end
        else
        begin
            redist50_sync_together238_aunroll_x_in_i_valid_3_q <= $unsigned(redist49_sync_together238_aunroll_x_in_i_valid_2_q);
        end
    end

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // redist51_sync_together238_aunroll_x_in_i_valid_4(DELAY,363)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist51_sync_together238_aunroll_x_in_i_valid_4_q <= '0;
        end
        else
        begin
            redist51_sync_together238_aunroll_x_in_i_valid_4_q <= $unsigned(redist50_sync_together238_aunroll_x_in_i_valid_3_q);
        end
    end

    // redist81_i_llvm_fpga_pipeline_keep_going_conv2d3x38_out_data_out_1(DELAY,393)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist81_i_llvm_fpga_pipeline_keep_going_conv2d3x38_out_data_out_1_q <= '0;
        end
        else
        begin
            redist81_i_llvm_fpga_pipeline_keep_going_conv2d3x38_out_data_out_1_q <= $unsigned(i_llvm_fpga_pipeline_keep_going_conv2d3x38_out_data_out);
        end
    end

    // leftShiftStage0Idx1Rng1_uid300_i_cleanups_shl_conv2d3x30_shift_x(BITSELECT,299)@5
    assign leftShiftStage0Idx1Rng1_uid300_i_cleanups_shl_conv2d3x30_shift_x_in = i_llvm_fpga_pop_i2_cleanups_pop105_conv2d3x34_out_data_out[0:0];
    assign leftShiftStage0Idx1Rng1_uid300_i_cleanups_shl_conv2d3x30_shift_x_b = leftShiftStage0Idx1Rng1_uid300_i_cleanups_shl_conv2d3x30_shift_x_in[0:0];

    // leftShiftStage0Idx1_uid301_i_cleanups_shl_conv2d3x30_shift_x(BITJOIN,300)@5
    assign leftShiftStage0Idx1_uid301_i_cleanups_shl_conv2d3x30_shift_x_q = {leftShiftStage0Idx1Rng1_uid300_i_cleanups_shl_conv2d3x30_shift_x_b, GND_q};

    // leftShiftStage0_uid303_i_cleanups_shl_conv2d3x30_shift_x(MUX,302)@5
    assign leftShiftStage0_uid303_i_cleanups_shl_conv2d3x30_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid303_i_cleanups_shl_conv2d3x30_shift_x_s or i_llvm_fpga_pop_i2_cleanups_pop105_conv2d3x34_out_data_out or leftShiftStage0Idx1_uid301_i_cleanups_shl_conv2d3x30_shift_x_q)
    begin
        unique case (leftShiftStage0_uid303_i_cleanups_shl_conv2d3x30_shift_x_s)
            1'b0 : leftShiftStage0_uid303_i_cleanups_shl_conv2d3x30_shift_x_q = i_llvm_fpga_pop_i2_cleanups_pop105_conv2d3x34_out_data_out;
            1'b1 : leftShiftStage0_uid303_i_cleanups_shl_conv2d3x30_shift_x_q = leftShiftStage0Idx1_uid301_i_cleanups_shl_conv2d3x30_shift_x_q;
            default : leftShiftStage0_uid303_i_cleanups_shl_conv2d3x30_shift_x_q = 2'b0;
        endcase
    end

    // i_cleanups_shl_conv2d3x37_vt_select_1(BITSELECT,84)@5
    assign i_cleanups_shl_conv2d3x37_vt_select_1_b = leftShiftStage0_uid303_i_cleanups_shl_conv2d3x30_shift_x_q[1:1];

    // i_cleanups_shl_conv2d3x37_vt_join(BITJOIN,83)@5
    assign i_cleanups_shl_conv2d3x37_vt_join_q = {i_cleanups_shl_conv2d3x37_vt_select_1_b, GND_q};

    // i_first_cleanup_xor_conv2d3x36(LOGICAL,89)@5
    assign i_first_cleanup_xor_conv2d3x36_q = i_first_cleanup_conv2d3x35_sel_x_b ^ VCC_q;

    // i_notcmp_conv2d3x358(LOGICAL,175)@5
    assign i_notcmp_conv2d3x358_q = i_unnamed_conv2d3x357_q ^ VCC_q;

    // i_or_conv2d3x360(LOGICAL,176)@5
    assign i_or_conv2d3x360_q = i_notcmp_conv2d3x358_q | i_first_cleanup_xor_conv2d3x36_q;

    // i_next_cleanups_conv2d3x361(MUX,171)@5
    assign i_next_cleanups_conv2d3x361_s = i_or_conv2d3x360_q;
    always @(i_next_cleanups_conv2d3x361_s or i_llvm_fpga_pop_i2_cleanups_pop105_conv2d3x34_out_data_out or i_cleanups_shl_conv2d3x37_vt_join_q)
    begin
        unique case (i_next_cleanups_conv2d3x361_s)
            1'b0 : i_next_cleanups_conv2d3x361_q = i_llvm_fpga_pop_i2_cleanups_pop105_conv2d3x34_out_data_out;
            1'b1 : i_next_cleanups_conv2d3x361_q = i_cleanups_shl_conv2d3x37_vt_join_q;
            default : i_next_cleanups_conv2d3x361_q = 2'b0;
        endcase
    end

    // i_llvm_fpga_push_i2_cleanups_push105_conv2d3x362(BLACKBOX,148)@5
    // out out_feedback_out_105@20000000
    // out out_feedback_valid_out_105@20000000
    conv2d3x3_i_llvm_fpga_push_i2_cleanups_push105_0 thei_llvm_fpga_push_i2_cleanups_push105_conv2d3x362 (
        .in_data_in(i_next_cleanups_conv2d3x361_q),
        .in_feedback_stall_in_105(i_llvm_fpga_pop_i2_cleanups_pop105_conv2d3x34_out_feedback_stall_out_105),
        .in_keep_going(redist81_i_llvm_fpga_pipeline_keep_going_conv2d3x38_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist51_sync_together238_aunroll_x_in_i_valid_4_q),
        .out_data_out(),
        .out_feedback_out_105(i_llvm_fpga_push_i2_cleanups_push105_conv2d3x362_out_feedback_out_105),
        .out_feedback_valid_out_105(i_llvm_fpga_push_i2_cleanups_push105_conv2d3x362_out_feedback_valid_out_105),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist2_sync_together238_aunroll_x_in_c0_eni461037_1_tpl_4(DELAY,314)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_sync_together238_aunroll_x_in_c0_eni461037_1_tpl_4_q <= '0;
        end
        else
        begin
            redist2_sync_together238_aunroll_x_in_c0_eni461037_1_tpl_4_q <= $unsigned(redist1_sync_together238_aunroll_x_in_c0_eni461037_1_tpl_3_q);
        end
    end

    // c_i2_1164(CONSTANT,71)
    assign c_i2_1164_q = $unsigned(2'b01);

    // i_llvm_fpga_pop_i2_cleanups_pop105_conv2d3x34(BLACKBOX,117)@5
    // out out_feedback_stall_out_105@20000000
    conv2d3x3_i_llvm_fpga_pop_i2_cleanups_pop105_0 thei_llvm_fpga_pop_i2_cleanups_pop105_conv2d3x34 (
        .in_data_in(c_i2_1164_q),
        .in_dir(redist2_sync_together238_aunroll_x_in_c0_eni461037_1_tpl_4_q),
        .in_feedback_in_105(i_llvm_fpga_push_i2_cleanups_push105_conv2d3x362_out_feedback_out_105),
        .in_feedback_valid_in_105(i_llvm_fpga_push_i2_cleanups_push105_conv2d3x362_out_feedback_valid_out_105),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist51_sync_together238_aunroll_x_in_i_valid_4_q),
        .out_data_out(i_llvm_fpga_pop_i2_cleanups_pop105_conv2d3x34_out_data_out),
        .out_feedback_stall_out_105(i_llvm_fpga_pop_i2_cleanups_pop105_conv2d3x34_out_feedback_stall_out_105),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_first_cleanup_conv2d3x35_sel_x(BITSELECT,217)@5
    assign i_first_cleanup_conv2d3x35_sel_x_b = i_llvm_fpga_pop_i2_cleanups_pop105_conv2d3x34_out_data_out[0:0];

    // c_i3_1171(CONSTANT,75)
    assign c_i3_1171_q = $unsigned(3'b111);

    // i_fpga_indvars_iv_next92_conv2d3x355(ADD,91)@5
    assign i_fpga_indvars_iv_next92_conv2d3x355_a = {1'b0, i_llvm_fpga_pop_i3_fpga_indvars_iv91_pop101_conv2d3x352_out_data_out};
    assign i_fpga_indvars_iv_next92_conv2d3x355_b = {1'b0, c_i3_1171_q};
    assign i_fpga_indvars_iv_next92_conv2d3x355_o = $unsigned(i_fpga_indvars_iv_next92_conv2d3x355_a) + $unsigned(i_fpga_indvars_iv_next92_conv2d3x355_b);
    assign i_fpga_indvars_iv_next92_conv2d3x355_q = i_fpga_indvars_iv_next92_conv2d3x355_o[3:0];

    // bgTrunc_i_fpga_indvars_iv_next92_conv2d3x355_sel_x(BITSELECT,196)@5
    assign bgTrunc_i_fpga_indvars_iv_next92_conv2d3x355_sel_x_b = i_fpga_indvars_iv_next92_conv2d3x355_q[2:0];

    // i_llvm_fpga_push_i3_fpga_indvars_iv91_push101_conv2d3x356(BLACKBOX,162)@5
    // out out_feedback_out_101@20000000
    // out out_feedback_valid_out_101@20000000
    conv2d3x3_i_llvm_fpga_push_i3_fpga_indvars_iv91_push101_0 thei_llvm_fpga_push_i3_fpga_indvars_iv91_push101_conv2d3x356 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next92_conv2d3x355_sel_x_b),
        .in_feedback_stall_in_101(i_llvm_fpga_pop_i3_fpga_indvars_iv91_pop101_conv2d3x352_out_feedback_stall_out_101),
        .in_keep_going(redist81_i_llvm_fpga_pipeline_keep_going_conv2d3x38_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist51_sync_together238_aunroll_x_in_i_valid_4_q),
        .out_data_out(),
        .out_feedback_out_101(i_llvm_fpga_push_i3_fpga_indvars_iv91_push101_conv2d3x356_out_feedback_out_101),
        .out_feedback_valid_out_101(i_llvm_fpga_push_i3_fpga_indvars_iv91_push101_conv2d3x356_out_feedback_valid_out_101),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i3_1169(CONSTANT,74)
    assign c_i3_1169_q = $unsigned(3'b001);

    // i_llvm_fpga_pop_i3_fpga_indvars_iv91_pop101_conv2d3x352(BLACKBOX,131)@5
    // out out_feedback_stall_out_101@20000000
    conv2d3x3_i_llvm_fpga_pop_i3_fpga_indvars_iv91_pop101_0 thei_llvm_fpga_pop_i3_fpga_indvars_iv91_pop101_conv2d3x352 (
        .in_data_in(c_i3_1169_q),
        .in_dir(redist2_sync_together238_aunroll_x_in_c0_eni461037_1_tpl_4_q),
        .in_feedback_in_101(i_llvm_fpga_push_i3_fpga_indvars_iv91_push101_conv2d3x356_out_feedback_out_101),
        .in_feedback_valid_in_101(i_llvm_fpga_push_i3_fpga_indvars_iv91_push101_conv2d3x356_out_feedback_valid_out_101),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist51_sync_together238_aunroll_x_in_i_valid_4_q),
        .out_data_out(i_llvm_fpga_pop_i3_fpga_indvars_iv91_pop101_conv2d3x352_out_data_out),
        .out_feedback_stall_out_101(i_llvm_fpga_pop_i3_fpga_indvars_iv91_pop101_conv2d3x352_out_feedback_stall_out_101),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_exitcond93_conv2d3x353_cmp_nsign(LOGICAL,295)@5
    assign i_exitcond93_conv2d3x353_cmp_nsign_q = $unsigned(~ (i_llvm_fpga_pop_i3_fpga_indvars_iv91_pop101_conv2d3x352_out_data_out[2:2]));

    // i_llvm_fpga_push_i1_push125_conv2d3x339(BLACKBOX,146)@4
    // out out_feedback_out_125@20000000
    // out out_feedback_valid_out_125@20000000
    conv2d3x3_i_llvm_fpga_push_i1_push125_0 thei_llvm_fpga_push_i1_push125_conv2d3x339 (
        .in_data_in(i_llvm_fpga_pop_i1_pop125_conv2d3x338_out_data_out),
        .in_feedback_stall_in_125(i_llvm_fpga_pop_i1_pop125_conv2d3x338_out_feedback_stall_out_125),
        .in_keep_going(i_llvm_fpga_pipeline_keep_going_conv2d3x38_out_data_out),
        .in_stall_in(GND_q),
        .in_valid_in(redist50_sync_together238_aunroll_x_in_i_valid_3_q),
        .out_data_out(),
        .out_feedback_out_125(i_llvm_fpga_push_i1_push125_conv2d3x339_out_feedback_out_125),
        .out_feedback_valid_out_125(i_llvm_fpga_push_i1_push125_conv2d3x339_out_feedback_valid_out_125),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist7_sync_together238_aunroll_x_in_c0_eni461037_6_tpl_3(DELAY,319)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_sync_together238_aunroll_x_in_c0_eni461037_6_tpl_3_delay_0 <= '0;
            redist7_sync_together238_aunroll_x_in_c0_eni461037_6_tpl_3_delay_1 <= '0;
            redist7_sync_together238_aunroll_x_in_c0_eni461037_6_tpl_3_q <= '0;
        end
        else
        begin
            redist7_sync_together238_aunroll_x_in_c0_eni461037_6_tpl_3_delay_0 <= $unsigned(in_c0_eni461037_6_tpl);
            redist7_sync_together238_aunroll_x_in_c0_eni461037_6_tpl_3_delay_1 <= redist7_sync_together238_aunroll_x_in_c0_eni461037_6_tpl_3_delay_0;
            redist7_sync_together238_aunroll_x_in_c0_eni461037_6_tpl_3_q <= redist7_sync_together238_aunroll_x_in_c0_eni461037_6_tpl_3_delay_1;
        end
    end

    // i_llvm_fpga_pop_i1_pop125_conv2d3x338(BLACKBOX,115)@4
    // out out_feedback_stall_out_125@20000000
    conv2d3x3_i_llvm_fpga_pop_i1_pop125_0 thei_llvm_fpga_pop_i1_pop125_conv2d3x338 (
        .in_data_in(redist7_sync_together238_aunroll_x_in_c0_eni461037_6_tpl_3_q),
        .in_dir(redist1_sync_together238_aunroll_x_in_c0_eni461037_1_tpl_3_q),
        .in_feedback_in_125(i_llvm_fpga_push_i1_push125_conv2d3x339_out_feedback_out_125),
        .in_feedback_valid_in_125(i_llvm_fpga_push_i1_push125_conv2d3x339_out_feedback_valid_out_125),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist50_sync_together238_aunroll_x_in_i_valid_3_q),
        .out_data_out(i_llvm_fpga_pop_i1_pop125_conv2d3x338_out_data_out),
        .out_feedback_stall_out_125(i_llvm_fpga_pop_i1_pop125_conv2d3x338_out_feedback_stall_out_125),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist70_i_llvm_fpga_pop_i1_pop125_conv2d3x338_out_data_out_1(DELAY,382)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist70_i_llvm_fpga_pop_i1_pop125_conv2d3x338_out_data_out_1_q <= '0;
        end
        else
        begin
            redist70_i_llvm_fpga_pop_i1_pop125_conv2d3x338_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i1_pop125_conv2d3x338_out_data_out);
        end
    end

    // i_unnamed_conv2d3x357(LOGICAL,183)@5
    assign i_unnamed_conv2d3x357_q = redist70_i_llvm_fpga_pop_i1_pop125_conv2d3x338_out_data_out_1_q & i_exitcond93_conv2d3x353_cmp_nsign_q;

    // i_llvm_fpga_push_i1_notexitcond_conv2d3x359(BLACKBOX,145)@5
    // out out_feedback_out_2@20000000
    // out out_feedback_valid_out_2@20000000
    conv2d3x3_i_llvm_fpga_push_i1_notexitcond_0 thei_llvm_fpga_push_i1_notexitcond_conv2d3x359 (
        .in_data_in(i_unnamed_conv2d3x357_q),
        .in_feedback_stall_in_2(i_llvm_fpga_pipeline_keep_going_conv2d3x38_out_not_exitcond_stall_out),
        .in_first_cleanup(i_first_cleanup_conv2d3x35_sel_x_b),
        .in_stall_in(GND_q),
        .in_valid_in(redist51_sync_together238_aunroll_x_in_i_valid_4_q),
        .out_data_out(),
        .out_feedback_out_2(i_llvm_fpga_push_i1_notexitcond_conv2d3x359_out_feedback_out_2),
        .out_feedback_valid_out_2(i_llvm_fpga_push_i1_notexitcond_conv2d3x359_out_feedback_valid_out_2),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg3(REG,230)@3 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg3_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg3_q <= $unsigned(redist49_sync_together238_aunroll_x_in_i_valid_2_q);
        end
    end

    // rightShiftStage0Idx1Rng1_uid307_i_next_initerations_conv2d3x30_shift_x(BITSELECT,306)@4
    assign rightShiftStage0Idx1Rng1_uid307_i_next_initerations_conv2d3x30_shift_x_b = i_llvm_fpga_pop_i2_initerations_pop104_conv2d3x311_out_data_out[1:1];

    // rightShiftStage0Idx1_uid309_i_next_initerations_conv2d3x30_shift_x(BITJOIN,308)@4
    assign rightShiftStage0Idx1_uid309_i_next_initerations_conv2d3x30_shift_x_q = {GND_q, rightShiftStage0Idx1Rng1_uid307_i_next_initerations_conv2d3x30_shift_x_b};

    // valid_fanout_reg1(REG,228)@3 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg1_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg1_q <= $unsigned(redist49_sync_together238_aunroll_x_in_i_valid_2_q);
        end
    end

    // valid_fanout_reg2(REG,229)@3 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg2_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg2_q <= $unsigned(redist49_sync_together238_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_push_i2_initerations_push104_conv2d3x313(BLACKBOX,149)@4
    // out out_feedback_out_104@20000000
    // out out_feedback_valid_out_104@20000000
    conv2d3x3_i_llvm_fpga_push_i2_initerations_push104_0 thei_llvm_fpga_push_i2_initerations_push104_conv2d3x313 (
        .in_data_in(i_next_initerations_conv2d3x312_vt_join_q),
        .in_feedback_stall_in_104(i_llvm_fpga_pop_i2_initerations_pop104_conv2d3x311_out_feedback_stall_out_104),
        .in_keep_going(i_llvm_fpga_pipeline_keep_going_conv2d3x38_out_data_out),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(),
        .out_feedback_out_104(i_llvm_fpga_push_i2_initerations_push104_conv2d3x313_out_feedback_out_104),
        .out_feedback_valid_out_104(i_llvm_fpga_push_i2_initerations_push104_conv2d3x313_out_feedback_valid_out_104),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i2_initerations_pop104_conv2d3x311(BLACKBOX,118)@4
    // out out_feedback_stall_out_104@20000000
    conv2d3x3_i_llvm_fpga_pop_i2_initerations_pop104_0 thei_llvm_fpga_pop_i2_initerations_pop104_conv2d3x311 (
        .in_data_in(c_i2_1164_q),
        .in_dir(redist1_sync_together238_aunroll_x_in_c0_eni461037_1_tpl_3_q),
        .in_feedback_in_104(i_llvm_fpga_push_i2_initerations_push104_conv2d3x313_out_feedback_out_104),
        .in_feedback_valid_in_104(i_llvm_fpga_push_i2_initerations_push104_conv2d3x313_out_feedback_valid_out_104),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_data_out(i_llvm_fpga_pop_i2_initerations_pop104_conv2d3x311_out_data_out),
        .out_feedback_stall_out_104(i_llvm_fpga_pop_i2_initerations_pop104_conv2d3x311_out_feedback_stall_out_104),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // rightShiftStage0_uid311_i_next_initerations_conv2d3x30_shift_x(MUX,310)@4
    assign rightShiftStage0_uid311_i_next_initerations_conv2d3x30_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid311_i_next_initerations_conv2d3x30_shift_x_s or i_llvm_fpga_pop_i2_initerations_pop104_conv2d3x311_out_data_out or rightShiftStage0Idx1_uid309_i_next_initerations_conv2d3x30_shift_x_q)
    begin
        unique case (rightShiftStage0_uid311_i_next_initerations_conv2d3x30_shift_x_s)
            1'b0 : rightShiftStage0_uid311_i_next_initerations_conv2d3x30_shift_x_q = i_llvm_fpga_pop_i2_initerations_pop104_conv2d3x311_out_data_out;
            1'b1 : rightShiftStage0_uid311_i_next_initerations_conv2d3x30_shift_x_q = rightShiftStage0Idx1_uid309_i_next_initerations_conv2d3x30_shift_x_q;
            default : rightShiftStage0_uid311_i_next_initerations_conv2d3x30_shift_x_q = 2'b0;
        endcase
    end

    // i_next_initerations_conv2d3x312_vt_select_0(BITSELECT,174)@4
    assign i_next_initerations_conv2d3x312_vt_select_0_b = rightShiftStage0_uid311_i_next_initerations_conv2d3x30_shift_x_q[0:0];

    // i_next_initerations_conv2d3x312_vt_join(BITJOIN,173)@4
    assign i_next_initerations_conv2d3x312_vt_join_q = {GND_q, i_next_initerations_conv2d3x312_vt_select_0_b};

    // i_last_initeration_conv2d3x314_sel_x(BITSELECT,220)@4
    assign i_last_initeration_conv2d3x314_sel_x_b = i_next_initerations_conv2d3x312_vt_join_q[0:0];

    // i_llvm_fpga_push_i1_lastiniteration_conv2d3x315(BLACKBOX,141)@4
    // out out_feedback_out_1@20000000
    // out out_feedback_valid_out_1@20000000
    conv2d3x3_i_llvm_fpga_push_i1_lastiniteration_0 thei_llvm_fpga_push_i1_lastiniteration_conv2d3x315 (
        .in_data_in(i_last_initeration_conv2d3x314_sel_x_b),
        .in_feedback_stall_in_1(i_llvm_fpga_pipeline_keep_going_conv2d3x38_out_initeration_stall_out),
        .in_keep_going(i_llvm_fpga_pipeline_keep_going_conv2d3x38_out_data_out),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_data_out(),
        .out_feedback_out_1(i_llvm_fpga_push_i1_lastiniteration_conv2d3x315_out_feedback_out_1),
        .out_feedback_valid_out_1(i_llvm_fpga_push_i1_lastiniteration_conv2d3x315_out_feedback_valid_out_1),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist0_sync_together238_aunroll_x_in_c0_eni461037_1_tpl_1(DELAY,312)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_sync_together238_aunroll_x_in_c0_eni461037_1_tpl_1_q <= '0;
        end
        else
        begin
            redist0_sync_together238_aunroll_x_in_c0_eni461037_1_tpl_1_q <= $unsigned(in_c0_eni461037_1_tpl);
        end
    end

    // redist1_sync_together238_aunroll_x_in_c0_eni461037_1_tpl_3(DELAY,313)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together238_aunroll_x_in_c0_eni461037_1_tpl_3_delay_0 <= '0;
            redist1_sync_together238_aunroll_x_in_c0_eni461037_1_tpl_3_q <= '0;
        end
        else
        begin
            redist1_sync_together238_aunroll_x_in_c0_eni461037_1_tpl_3_delay_0 <= $unsigned(redist0_sync_together238_aunroll_x_in_c0_eni461037_1_tpl_1_q);
            redist1_sync_together238_aunroll_x_in_c0_eni461037_1_tpl_3_q <= redist1_sync_together238_aunroll_x_in_c0_eni461037_1_tpl_3_delay_0;
        end
    end

    // i_llvm_fpga_pipeline_keep_going_conv2d3x38(BLACKBOX,104)@4
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    conv2d3x3_i_llvm_fpga_pipeline_keep_going_0 thei_llvm_fpga_pipeline_keep_going_conv2d3x38 (
        .in_data_in(redist1_sync_together238_aunroll_x_in_c0_eni461037_1_tpl_3_q),
        .in_initeration_in(i_llvm_fpga_push_i1_lastiniteration_conv2d3x315_out_feedback_out_1),
        .in_initeration_valid_in(i_llvm_fpga_push_i1_lastiniteration_conv2d3x315_out_feedback_valid_out_1),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond_conv2d3x359_out_feedback_out_2),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond_conv2d3x359_out_feedback_valid_out_2),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(GND_q),
        .in_valid_in(redist50_sync_together238_aunroll_x_in_i_valid_3_q),
        .out_data_out(i_llvm_fpga_pipeline_keep_going_conv2d3x38_out_data_out),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going_conv2d3x38_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going_conv2d3x38_out_exiting_valid_out),
        .out_initeration_stall_out(i_llvm_fpga_pipeline_keep_going_conv2d3x38_out_initeration_stall_out),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going_conv2d3x38_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going_conv2d3x38_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,76)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_conv2d3x38_exiting_valid_out = i_llvm_fpga_pipeline_keep_going_conv2d3x38_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_conv2d3x38_exiting_stall_out = i_llvm_fpga_pipeline_keep_going_conv2d3x38_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,189)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going_conv2d3x38_out_pipeline_valid_out;

    // valid_fanout_reg0(REG,227)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist50_sync_together238_aunroll_x_in_i_valid_3_q);
        end
    end

    // redist47_sync_together238_aunroll_x_in_c0_eni461037_46_tpl_4_notEnable(LOGICAL,500)
    assign redist47_sync_together238_aunroll_x_in_c0_eni461037_46_tpl_4_notEnable_q = $unsigned(~ (VCC_q));

    // redist47_sync_together238_aunroll_x_in_c0_eni461037_46_tpl_4_nor(LOGICAL,501)
    assign redist47_sync_together238_aunroll_x_in_c0_eni461037_46_tpl_4_nor_q = ~ (redist47_sync_together238_aunroll_x_in_c0_eni461037_46_tpl_4_notEnable_q | redist47_sync_together238_aunroll_x_in_c0_eni461037_46_tpl_4_sticky_ena_q);

    // redist47_sync_together238_aunroll_x_in_c0_eni461037_46_tpl_4_mem_last(CONSTANT,497)
    assign redist47_sync_together238_aunroll_x_in_c0_eni461037_46_tpl_4_mem_last_q = $unsigned(2'b01);

    // redist47_sync_together238_aunroll_x_in_c0_eni461037_46_tpl_4_cmp(LOGICAL,498)
    assign redist47_sync_together238_aunroll_x_in_c0_eni461037_46_tpl_4_cmp_q = $unsigned(redist47_sync_together238_aunroll_x_in_c0_eni461037_46_tpl_4_mem_last_q == redist47_sync_together238_aunroll_x_in_c0_eni461037_46_tpl_4_rdcnt_q ? 1'b1 : 1'b0);

    // redist47_sync_together238_aunroll_x_in_c0_eni461037_46_tpl_4_cmpReg(REG,499)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist47_sync_together238_aunroll_x_in_c0_eni461037_46_tpl_4_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist47_sync_together238_aunroll_x_in_c0_eni461037_46_tpl_4_cmpReg_q <= $unsigned(redist47_sync_together238_aunroll_x_in_c0_eni461037_46_tpl_4_cmp_q);
        end
    end

    // redist47_sync_together238_aunroll_x_in_c0_eni461037_46_tpl_4_sticky_ena(REG,502)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist47_sync_together238_aunroll_x_in_c0_eni461037_46_tpl_4_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist47_sync_together238_aunroll_x_in_c0_eni461037_46_tpl_4_nor_q == 1'b1)
        begin
            redist47_sync_together238_aunroll_x_in_c0_eni461037_46_tpl_4_sticky_ena_q <= $unsigned(redist47_sync_together238_aunroll_x_in_c0_eni461037_46_tpl_4_cmpReg_q);
        end
    end

    // redist47_sync_together238_aunroll_x_in_c0_eni461037_46_tpl_4_enaAnd(LOGICAL,503)
    assign redist47_sync_together238_aunroll_x_in_c0_eni461037_46_tpl_4_enaAnd_q = redist47_sync_together238_aunroll_x_in_c0_eni461037_46_tpl_4_sticky_ena_q & VCC_q;

    // redist47_sync_together238_aunroll_x_in_c0_eni461037_46_tpl_4_rdcnt(COUNTER,495)
    // low=0, high=2, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist47_sync_together238_aunroll_x_in_c0_eni461037_46_tpl_4_rdcnt_i <= 2'd0;
            redist47_sync_together238_aunroll_x_in_c0_eni461037_46_tpl_4_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist47_sync_together238_aunroll_x_in_c0_eni461037_46_tpl_4_rdcnt_i == 2'd1)
            begin
                redist47_sync_together238_aunroll_x_in_c0_eni461037_46_tpl_4_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist47_sync_together238_aunroll_x_in_c0_eni461037_46_tpl_4_rdcnt_eq <= 1'b0;
            end
            if (redist47_sync_together238_aunroll_x_in_c0_eni461037_46_tpl_4_rdcnt_eq == 1'b1)
            begin
                redist47_sync_together238_aunroll_x_in_c0_eni461037_46_tpl_4_rdcnt_i <= $unsigned(redist47_sync_together238_aunroll_x_in_c0_eni461037_46_tpl_4_rdcnt_i) + $unsigned(2'd2);
            end
            else
            begin
                redist47_sync_together238_aunroll_x_in_c0_eni461037_46_tpl_4_rdcnt_i <= $unsigned(redist47_sync_together238_aunroll_x_in_c0_eni461037_46_tpl_4_rdcnt_i) + $unsigned(2'd1);
            end
        end
    end
    assign redist47_sync_together238_aunroll_x_in_c0_eni461037_46_tpl_4_rdcnt_q = redist47_sync_together238_aunroll_x_in_c0_eni461037_46_tpl_4_rdcnt_i[1:0];

    // redist47_sync_together238_aunroll_x_in_c0_eni461037_46_tpl_4_wraddr(REG,496)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist47_sync_together238_aunroll_x_in_c0_eni461037_46_tpl_4_wraddr_q <= $unsigned(2'b10);
        end
        else
        begin
            redist47_sync_together238_aunroll_x_in_c0_eni461037_46_tpl_4_wraddr_q <= $unsigned(redist47_sync_together238_aunroll_x_in_c0_eni461037_46_tpl_4_rdcnt_q);
        end
    end

    // redist47_sync_together238_aunroll_x_in_c0_eni461037_46_tpl_4_mem(DUALMEM,494)
    assign redist47_sync_together238_aunroll_x_in_c0_eni461037_46_tpl_4_mem_ia = $unsigned(in_c0_eni461037_46_tpl);
    assign redist47_sync_together238_aunroll_x_in_c0_eni461037_46_tpl_4_mem_aa = redist47_sync_together238_aunroll_x_in_c0_eni461037_46_tpl_4_wraddr_q;
    assign redist47_sync_together238_aunroll_x_in_c0_eni461037_46_tpl_4_mem_ab = redist47_sync_together238_aunroll_x_in_c0_eni461037_46_tpl_4_rdcnt_q;
    assign redist47_sync_together238_aunroll_x_in_c0_eni461037_46_tpl_4_mem_reset0 = ~ (resetn);
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
    ) redist47_sync_together238_aunroll_x_in_c0_eni461037_46_tpl_4_mem_dmem (
        .clocken1(redist47_sync_together238_aunroll_x_in_c0_eni461037_46_tpl_4_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist47_sync_together238_aunroll_x_in_c0_eni461037_46_tpl_4_mem_reset0),
        .clock1(clock),
        .address_a(redist47_sync_together238_aunroll_x_in_c0_eni461037_46_tpl_4_mem_aa),
        .data_a(redist47_sync_together238_aunroll_x_in_c0_eni461037_46_tpl_4_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist47_sync_together238_aunroll_x_in_c0_eni461037_46_tpl_4_mem_ab),
        .q_b(redist47_sync_together238_aunroll_x_in_c0_eni461037_46_tpl_4_mem_iq),
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
    assign redist47_sync_together238_aunroll_x_in_c0_eni461037_46_tpl_4_mem_q = redist47_sync_together238_aunroll_x_in_c0_eni461037_46_tpl_4_mem_iq[31:0];

    // redist46_sync_together238_aunroll_x_in_c0_eni461037_45_tpl_4(DELAY,358)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist46_sync_together238_aunroll_x_in_c0_eni461037_45_tpl_4_delay_0 <= '0;
            redist46_sync_together238_aunroll_x_in_c0_eni461037_45_tpl_4_delay_1 <= '0;
            redist46_sync_together238_aunroll_x_in_c0_eni461037_45_tpl_4_delay_2 <= '0;
            redist46_sync_together238_aunroll_x_in_c0_eni461037_45_tpl_4_q <= '0;
        end
        else
        begin
            redist46_sync_together238_aunroll_x_in_c0_eni461037_45_tpl_4_delay_0 <= $unsigned(in_c0_eni461037_45_tpl);
            redist46_sync_together238_aunroll_x_in_c0_eni461037_45_tpl_4_delay_1 <= redist46_sync_together238_aunroll_x_in_c0_eni461037_45_tpl_4_delay_0;
            redist46_sync_together238_aunroll_x_in_c0_eni461037_45_tpl_4_delay_2 <= redist46_sync_together238_aunroll_x_in_c0_eni461037_45_tpl_4_delay_1;
            redist46_sync_together238_aunroll_x_in_c0_eni461037_45_tpl_4_q <= redist46_sync_together238_aunroll_x_in_c0_eni461037_45_tpl_4_delay_2;
        end
    end

    // redist45_sync_together238_aunroll_x_in_c0_eni461037_44_tpl_4_notEnable(LOGICAL,490)
    assign redist45_sync_together238_aunroll_x_in_c0_eni461037_44_tpl_4_notEnable_q = $unsigned(~ (VCC_q));

    // redist45_sync_together238_aunroll_x_in_c0_eni461037_44_tpl_4_nor(LOGICAL,491)
    assign redist45_sync_together238_aunroll_x_in_c0_eni461037_44_tpl_4_nor_q = ~ (redist45_sync_together238_aunroll_x_in_c0_eni461037_44_tpl_4_notEnable_q | redist45_sync_together238_aunroll_x_in_c0_eni461037_44_tpl_4_sticky_ena_q);

    // redist45_sync_together238_aunroll_x_in_c0_eni461037_44_tpl_4_mem_last(CONSTANT,487)
    assign redist45_sync_together238_aunroll_x_in_c0_eni461037_44_tpl_4_mem_last_q = $unsigned(2'b01);

    // redist45_sync_together238_aunroll_x_in_c0_eni461037_44_tpl_4_cmp(LOGICAL,488)
    assign redist45_sync_together238_aunroll_x_in_c0_eni461037_44_tpl_4_cmp_q = $unsigned(redist45_sync_together238_aunroll_x_in_c0_eni461037_44_tpl_4_mem_last_q == redist45_sync_together238_aunroll_x_in_c0_eni461037_44_tpl_4_rdcnt_q ? 1'b1 : 1'b0);

    // redist45_sync_together238_aunroll_x_in_c0_eni461037_44_tpl_4_cmpReg(REG,489)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist45_sync_together238_aunroll_x_in_c0_eni461037_44_tpl_4_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist45_sync_together238_aunroll_x_in_c0_eni461037_44_tpl_4_cmpReg_q <= $unsigned(redist45_sync_together238_aunroll_x_in_c0_eni461037_44_tpl_4_cmp_q);
        end
    end

    // redist45_sync_together238_aunroll_x_in_c0_eni461037_44_tpl_4_sticky_ena(REG,492)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist45_sync_together238_aunroll_x_in_c0_eni461037_44_tpl_4_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist45_sync_together238_aunroll_x_in_c0_eni461037_44_tpl_4_nor_q == 1'b1)
        begin
            redist45_sync_together238_aunroll_x_in_c0_eni461037_44_tpl_4_sticky_ena_q <= $unsigned(redist45_sync_together238_aunroll_x_in_c0_eni461037_44_tpl_4_cmpReg_q);
        end
    end

    // redist45_sync_together238_aunroll_x_in_c0_eni461037_44_tpl_4_enaAnd(LOGICAL,493)
    assign redist45_sync_together238_aunroll_x_in_c0_eni461037_44_tpl_4_enaAnd_q = redist45_sync_together238_aunroll_x_in_c0_eni461037_44_tpl_4_sticky_ena_q & VCC_q;

    // redist45_sync_together238_aunroll_x_in_c0_eni461037_44_tpl_4_rdcnt(COUNTER,485)
    // low=0, high=2, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist45_sync_together238_aunroll_x_in_c0_eni461037_44_tpl_4_rdcnt_i <= 2'd0;
            redist45_sync_together238_aunroll_x_in_c0_eni461037_44_tpl_4_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist45_sync_together238_aunroll_x_in_c0_eni461037_44_tpl_4_rdcnt_i == 2'd1)
            begin
                redist45_sync_together238_aunroll_x_in_c0_eni461037_44_tpl_4_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist45_sync_together238_aunroll_x_in_c0_eni461037_44_tpl_4_rdcnt_eq <= 1'b0;
            end
            if (redist45_sync_together238_aunroll_x_in_c0_eni461037_44_tpl_4_rdcnt_eq == 1'b1)
            begin
                redist45_sync_together238_aunroll_x_in_c0_eni461037_44_tpl_4_rdcnt_i <= $unsigned(redist45_sync_together238_aunroll_x_in_c0_eni461037_44_tpl_4_rdcnt_i) + $unsigned(2'd2);
            end
            else
            begin
                redist45_sync_together238_aunroll_x_in_c0_eni461037_44_tpl_4_rdcnt_i <= $unsigned(redist45_sync_together238_aunroll_x_in_c0_eni461037_44_tpl_4_rdcnt_i) + $unsigned(2'd1);
            end
        end
    end
    assign redist45_sync_together238_aunroll_x_in_c0_eni461037_44_tpl_4_rdcnt_q = redist45_sync_together238_aunroll_x_in_c0_eni461037_44_tpl_4_rdcnt_i[1:0];

    // redist45_sync_together238_aunroll_x_in_c0_eni461037_44_tpl_4_wraddr(REG,486)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist45_sync_together238_aunroll_x_in_c0_eni461037_44_tpl_4_wraddr_q <= $unsigned(2'b10);
        end
        else
        begin
            redist45_sync_together238_aunroll_x_in_c0_eni461037_44_tpl_4_wraddr_q <= $unsigned(redist45_sync_together238_aunroll_x_in_c0_eni461037_44_tpl_4_rdcnt_q);
        end
    end

    // redist45_sync_together238_aunroll_x_in_c0_eni461037_44_tpl_4_mem(DUALMEM,484)
    assign redist45_sync_together238_aunroll_x_in_c0_eni461037_44_tpl_4_mem_ia = $unsigned(in_c0_eni461037_44_tpl);
    assign redist45_sync_together238_aunroll_x_in_c0_eni461037_44_tpl_4_mem_aa = redist45_sync_together238_aunroll_x_in_c0_eni461037_44_tpl_4_wraddr_q;
    assign redist45_sync_together238_aunroll_x_in_c0_eni461037_44_tpl_4_mem_ab = redist45_sync_together238_aunroll_x_in_c0_eni461037_44_tpl_4_rdcnt_q;
    assign redist45_sync_together238_aunroll_x_in_c0_eni461037_44_tpl_4_mem_reset0 = ~ (resetn);
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
    ) redist45_sync_together238_aunroll_x_in_c0_eni461037_44_tpl_4_mem_dmem (
        .clocken1(redist45_sync_together238_aunroll_x_in_c0_eni461037_44_tpl_4_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist45_sync_together238_aunroll_x_in_c0_eni461037_44_tpl_4_mem_reset0),
        .clock1(clock),
        .address_a(redist45_sync_together238_aunroll_x_in_c0_eni461037_44_tpl_4_mem_aa),
        .data_a(redist45_sync_together238_aunroll_x_in_c0_eni461037_44_tpl_4_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist45_sync_together238_aunroll_x_in_c0_eni461037_44_tpl_4_mem_ab),
        .q_b(redist45_sync_together238_aunroll_x_in_c0_eni461037_44_tpl_4_mem_iq),
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
    assign redist45_sync_together238_aunroll_x_in_c0_eni461037_44_tpl_4_mem_q = redist45_sync_together238_aunroll_x_in_c0_eni461037_44_tpl_4_mem_iq[31:0];

    // redist44_sync_together238_aunroll_x_in_c0_eni461037_43_tpl_4_notEnable(LOGICAL,480)
    assign redist44_sync_together238_aunroll_x_in_c0_eni461037_43_tpl_4_notEnable_q = $unsigned(~ (VCC_q));

    // redist44_sync_together238_aunroll_x_in_c0_eni461037_43_tpl_4_nor(LOGICAL,481)
    assign redist44_sync_together238_aunroll_x_in_c0_eni461037_43_tpl_4_nor_q = ~ (redist44_sync_together238_aunroll_x_in_c0_eni461037_43_tpl_4_notEnable_q | redist44_sync_together238_aunroll_x_in_c0_eni461037_43_tpl_4_sticky_ena_q);

    // redist44_sync_together238_aunroll_x_in_c0_eni461037_43_tpl_4_mem_last(CONSTANT,477)
    assign redist44_sync_together238_aunroll_x_in_c0_eni461037_43_tpl_4_mem_last_q = $unsigned(2'b01);

    // redist44_sync_together238_aunroll_x_in_c0_eni461037_43_tpl_4_cmp(LOGICAL,478)
    assign redist44_sync_together238_aunroll_x_in_c0_eni461037_43_tpl_4_cmp_q = $unsigned(redist44_sync_together238_aunroll_x_in_c0_eni461037_43_tpl_4_mem_last_q == redist44_sync_together238_aunroll_x_in_c0_eni461037_43_tpl_4_rdcnt_q ? 1'b1 : 1'b0);

    // redist44_sync_together238_aunroll_x_in_c0_eni461037_43_tpl_4_cmpReg(REG,479)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist44_sync_together238_aunroll_x_in_c0_eni461037_43_tpl_4_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist44_sync_together238_aunroll_x_in_c0_eni461037_43_tpl_4_cmpReg_q <= $unsigned(redist44_sync_together238_aunroll_x_in_c0_eni461037_43_tpl_4_cmp_q);
        end
    end

    // redist44_sync_together238_aunroll_x_in_c0_eni461037_43_tpl_4_sticky_ena(REG,482)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist44_sync_together238_aunroll_x_in_c0_eni461037_43_tpl_4_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist44_sync_together238_aunroll_x_in_c0_eni461037_43_tpl_4_nor_q == 1'b1)
        begin
            redist44_sync_together238_aunroll_x_in_c0_eni461037_43_tpl_4_sticky_ena_q <= $unsigned(redist44_sync_together238_aunroll_x_in_c0_eni461037_43_tpl_4_cmpReg_q);
        end
    end

    // redist44_sync_together238_aunroll_x_in_c0_eni461037_43_tpl_4_enaAnd(LOGICAL,483)
    assign redist44_sync_together238_aunroll_x_in_c0_eni461037_43_tpl_4_enaAnd_q = redist44_sync_together238_aunroll_x_in_c0_eni461037_43_tpl_4_sticky_ena_q & VCC_q;

    // redist44_sync_together238_aunroll_x_in_c0_eni461037_43_tpl_4_rdcnt(COUNTER,475)
    // low=0, high=2, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist44_sync_together238_aunroll_x_in_c0_eni461037_43_tpl_4_rdcnt_i <= 2'd0;
            redist44_sync_together238_aunroll_x_in_c0_eni461037_43_tpl_4_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist44_sync_together238_aunroll_x_in_c0_eni461037_43_tpl_4_rdcnt_i == 2'd1)
            begin
                redist44_sync_together238_aunroll_x_in_c0_eni461037_43_tpl_4_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist44_sync_together238_aunroll_x_in_c0_eni461037_43_tpl_4_rdcnt_eq <= 1'b0;
            end
            if (redist44_sync_together238_aunroll_x_in_c0_eni461037_43_tpl_4_rdcnt_eq == 1'b1)
            begin
                redist44_sync_together238_aunroll_x_in_c0_eni461037_43_tpl_4_rdcnt_i <= $unsigned(redist44_sync_together238_aunroll_x_in_c0_eni461037_43_tpl_4_rdcnt_i) + $unsigned(2'd2);
            end
            else
            begin
                redist44_sync_together238_aunroll_x_in_c0_eni461037_43_tpl_4_rdcnt_i <= $unsigned(redist44_sync_together238_aunroll_x_in_c0_eni461037_43_tpl_4_rdcnt_i) + $unsigned(2'd1);
            end
        end
    end
    assign redist44_sync_together238_aunroll_x_in_c0_eni461037_43_tpl_4_rdcnt_q = redist44_sync_together238_aunroll_x_in_c0_eni461037_43_tpl_4_rdcnt_i[1:0];

    // redist44_sync_together238_aunroll_x_in_c0_eni461037_43_tpl_4_wraddr(REG,476)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist44_sync_together238_aunroll_x_in_c0_eni461037_43_tpl_4_wraddr_q <= $unsigned(2'b10);
        end
        else
        begin
            redist44_sync_together238_aunroll_x_in_c0_eni461037_43_tpl_4_wraddr_q <= $unsigned(redist44_sync_together238_aunroll_x_in_c0_eni461037_43_tpl_4_rdcnt_q);
        end
    end

    // redist44_sync_together238_aunroll_x_in_c0_eni461037_43_tpl_4_mem(DUALMEM,474)
    assign redist44_sync_together238_aunroll_x_in_c0_eni461037_43_tpl_4_mem_ia = $unsigned(in_c0_eni461037_43_tpl);
    assign redist44_sync_together238_aunroll_x_in_c0_eni461037_43_tpl_4_mem_aa = redist44_sync_together238_aunroll_x_in_c0_eni461037_43_tpl_4_wraddr_q;
    assign redist44_sync_together238_aunroll_x_in_c0_eni461037_43_tpl_4_mem_ab = redist44_sync_together238_aunroll_x_in_c0_eni461037_43_tpl_4_rdcnt_q;
    assign redist44_sync_together238_aunroll_x_in_c0_eni461037_43_tpl_4_mem_reset0 = ~ (resetn);
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
    ) redist44_sync_together238_aunroll_x_in_c0_eni461037_43_tpl_4_mem_dmem (
        .clocken1(redist44_sync_together238_aunroll_x_in_c0_eni461037_43_tpl_4_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist44_sync_together238_aunroll_x_in_c0_eni461037_43_tpl_4_mem_reset0),
        .clock1(clock),
        .address_a(redist44_sync_together238_aunroll_x_in_c0_eni461037_43_tpl_4_mem_aa),
        .data_a(redist44_sync_together238_aunroll_x_in_c0_eni461037_43_tpl_4_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist44_sync_together238_aunroll_x_in_c0_eni461037_43_tpl_4_mem_ab),
        .q_b(redist44_sync_together238_aunroll_x_in_c0_eni461037_43_tpl_4_mem_iq),
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
    assign redist44_sync_together238_aunroll_x_in_c0_eni461037_43_tpl_4_mem_q = redist44_sync_together238_aunroll_x_in_c0_eni461037_43_tpl_4_mem_iq[63:0];

    // redist43_sync_together238_aunroll_x_in_c0_eni461037_42_tpl_4_notEnable(LOGICAL,470)
    assign redist43_sync_together238_aunroll_x_in_c0_eni461037_42_tpl_4_notEnable_q = $unsigned(~ (VCC_q));

    // redist43_sync_together238_aunroll_x_in_c0_eni461037_42_tpl_4_nor(LOGICAL,471)
    assign redist43_sync_together238_aunroll_x_in_c0_eni461037_42_tpl_4_nor_q = ~ (redist43_sync_together238_aunroll_x_in_c0_eni461037_42_tpl_4_notEnable_q | redist43_sync_together238_aunroll_x_in_c0_eni461037_42_tpl_4_sticky_ena_q);

    // redist43_sync_together238_aunroll_x_in_c0_eni461037_42_tpl_4_mem_last(CONSTANT,467)
    assign redist43_sync_together238_aunroll_x_in_c0_eni461037_42_tpl_4_mem_last_q = $unsigned(2'b01);

    // redist43_sync_together238_aunroll_x_in_c0_eni461037_42_tpl_4_cmp(LOGICAL,468)
    assign redist43_sync_together238_aunroll_x_in_c0_eni461037_42_tpl_4_cmp_q = $unsigned(redist43_sync_together238_aunroll_x_in_c0_eni461037_42_tpl_4_mem_last_q == redist43_sync_together238_aunroll_x_in_c0_eni461037_42_tpl_4_rdcnt_q ? 1'b1 : 1'b0);

    // redist43_sync_together238_aunroll_x_in_c0_eni461037_42_tpl_4_cmpReg(REG,469)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist43_sync_together238_aunroll_x_in_c0_eni461037_42_tpl_4_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist43_sync_together238_aunroll_x_in_c0_eni461037_42_tpl_4_cmpReg_q <= $unsigned(redist43_sync_together238_aunroll_x_in_c0_eni461037_42_tpl_4_cmp_q);
        end
    end

    // redist43_sync_together238_aunroll_x_in_c0_eni461037_42_tpl_4_sticky_ena(REG,472)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist43_sync_together238_aunroll_x_in_c0_eni461037_42_tpl_4_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist43_sync_together238_aunroll_x_in_c0_eni461037_42_tpl_4_nor_q == 1'b1)
        begin
            redist43_sync_together238_aunroll_x_in_c0_eni461037_42_tpl_4_sticky_ena_q <= $unsigned(redist43_sync_together238_aunroll_x_in_c0_eni461037_42_tpl_4_cmpReg_q);
        end
    end

    // redist43_sync_together238_aunroll_x_in_c0_eni461037_42_tpl_4_enaAnd(LOGICAL,473)
    assign redist43_sync_together238_aunroll_x_in_c0_eni461037_42_tpl_4_enaAnd_q = redist43_sync_together238_aunroll_x_in_c0_eni461037_42_tpl_4_sticky_ena_q & VCC_q;

    // redist43_sync_together238_aunroll_x_in_c0_eni461037_42_tpl_4_rdcnt(COUNTER,465)
    // low=0, high=2, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist43_sync_together238_aunroll_x_in_c0_eni461037_42_tpl_4_rdcnt_i <= 2'd0;
            redist43_sync_together238_aunroll_x_in_c0_eni461037_42_tpl_4_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist43_sync_together238_aunroll_x_in_c0_eni461037_42_tpl_4_rdcnt_i == 2'd1)
            begin
                redist43_sync_together238_aunroll_x_in_c0_eni461037_42_tpl_4_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist43_sync_together238_aunroll_x_in_c0_eni461037_42_tpl_4_rdcnt_eq <= 1'b0;
            end
            if (redist43_sync_together238_aunroll_x_in_c0_eni461037_42_tpl_4_rdcnt_eq == 1'b1)
            begin
                redist43_sync_together238_aunroll_x_in_c0_eni461037_42_tpl_4_rdcnt_i <= $unsigned(redist43_sync_together238_aunroll_x_in_c0_eni461037_42_tpl_4_rdcnt_i) + $unsigned(2'd2);
            end
            else
            begin
                redist43_sync_together238_aunroll_x_in_c0_eni461037_42_tpl_4_rdcnt_i <= $unsigned(redist43_sync_together238_aunroll_x_in_c0_eni461037_42_tpl_4_rdcnt_i) + $unsigned(2'd1);
            end
        end
    end
    assign redist43_sync_together238_aunroll_x_in_c0_eni461037_42_tpl_4_rdcnt_q = redist43_sync_together238_aunroll_x_in_c0_eni461037_42_tpl_4_rdcnt_i[1:0];

    // redist43_sync_together238_aunroll_x_in_c0_eni461037_42_tpl_4_wraddr(REG,466)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist43_sync_together238_aunroll_x_in_c0_eni461037_42_tpl_4_wraddr_q <= $unsigned(2'b10);
        end
        else
        begin
            redist43_sync_together238_aunroll_x_in_c0_eni461037_42_tpl_4_wraddr_q <= $unsigned(redist43_sync_together238_aunroll_x_in_c0_eni461037_42_tpl_4_rdcnt_q);
        end
    end

    // redist43_sync_together238_aunroll_x_in_c0_eni461037_42_tpl_4_mem(DUALMEM,464)
    assign redist43_sync_together238_aunroll_x_in_c0_eni461037_42_tpl_4_mem_ia = $unsigned(in_c0_eni461037_42_tpl);
    assign redist43_sync_together238_aunroll_x_in_c0_eni461037_42_tpl_4_mem_aa = redist43_sync_together238_aunroll_x_in_c0_eni461037_42_tpl_4_wraddr_q;
    assign redist43_sync_together238_aunroll_x_in_c0_eni461037_42_tpl_4_mem_ab = redist43_sync_together238_aunroll_x_in_c0_eni461037_42_tpl_4_rdcnt_q;
    assign redist43_sync_together238_aunroll_x_in_c0_eni461037_42_tpl_4_mem_reset0 = ~ (resetn);
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
    ) redist43_sync_together238_aunroll_x_in_c0_eni461037_42_tpl_4_mem_dmem (
        .clocken1(redist43_sync_together238_aunroll_x_in_c0_eni461037_42_tpl_4_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist43_sync_together238_aunroll_x_in_c0_eni461037_42_tpl_4_mem_reset0),
        .clock1(clock),
        .address_a(redist43_sync_together238_aunroll_x_in_c0_eni461037_42_tpl_4_mem_aa),
        .data_a(redist43_sync_together238_aunroll_x_in_c0_eni461037_42_tpl_4_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist43_sync_together238_aunroll_x_in_c0_eni461037_42_tpl_4_mem_ab),
        .q_b(redist43_sync_together238_aunroll_x_in_c0_eni461037_42_tpl_4_mem_iq),
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
    assign redist43_sync_together238_aunroll_x_in_c0_eni461037_42_tpl_4_mem_q = redist43_sync_together238_aunroll_x_in_c0_eni461037_42_tpl_4_mem_iq[63:0];

    // redist42_sync_together238_aunroll_x_in_c0_eni461037_41_tpl_4(DELAY,354)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist42_sync_together238_aunroll_x_in_c0_eni461037_41_tpl_4_delay_0 <= '0;
            redist42_sync_together238_aunroll_x_in_c0_eni461037_41_tpl_4_delay_1 <= '0;
            redist42_sync_together238_aunroll_x_in_c0_eni461037_41_tpl_4_delay_2 <= '0;
            redist42_sync_together238_aunroll_x_in_c0_eni461037_41_tpl_4_q <= '0;
        end
        else
        begin
            redist42_sync_together238_aunroll_x_in_c0_eni461037_41_tpl_4_delay_0 <= $unsigned(in_c0_eni461037_41_tpl);
            redist42_sync_together238_aunroll_x_in_c0_eni461037_41_tpl_4_delay_1 <= redist42_sync_together238_aunroll_x_in_c0_eni461037_41_tpl_4_delay_0;
            redist42_sync_together238_aunroll_x_in_c0_eni461037_41_tpl_4_delay_2 <= redist42_sync_together238_aunroll_x_in_c0_eni461037_41_tpl_4_delay_1;
            redist42_sync_together238_aunroll_x_in_c0_eni461037_41_tpl_4_q <= redist42_sync_together238_aunroll_x_in_c0_eni461037_41_tpl_4_delay_2;
        end
    end

    // redist41_sync_together238_aunroll_x_in_c0_eni461037_40_tpl_4(DELAY,353)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist41_sync_together238_aunroll_x_in_c0_eni461037_40_tpl_4_delay_0 <= '0;
            redist41_sync_together238_aunroll_x_in_c0_eni461037_40_tpl_4_delay_1 <= '0;
            redist41_sync_together238_aunroll_x_in_c0_eni461037_40_tpl_4_delay_2 <= '0;
            redist41_sync_together238_aunroll_x_in_c0_eni461037_40_tpl_4_q <= '0;
        end
        else
        begin
            redist41_sync_together238_aunroll_x_in_c0_eni461037_40_tpl_4_delay_0 <= $unsigned(in_c0_eni461037_40_tpl);
            redist41_sync_together238_aunroll_x_in_c0_eni461037_40_tpl_4_delay_1 <= redist41_sync_together238_aunroll_x_in_c0_eni461037_40_tpl_4_delay_0;
            redist41_sync_together238_aunroll_x_in_c0_eni461037_40_tpl_4_delay_2 <= redist41_sync_together238_aunroll_x_in_c0_eni461037_40_tpl_4_delay_1;
            redist41_sync_together238_aunroll_x_in_c0_eni461037_40_tpl_4_q <= redist41_sync_together238_aunroll_x_in_c0_eni461037_40_tpl_4_delay_2;
        end
    end

    // redist40_sync_together238_aunroll_x_in_c0_eni461037_39_tpl_4(DELAY,352)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist40_sync_together238_aunroll_x_in_c0_eni461037_39_tpl_4_delay_0 <= '0;
            redist40_sync_together238_aunroll_x_in_c0_eni461037_39_tpl_4_delay_1 <= '0;
            redist40_sync_together238_aunroll_x_in_c0_eni461037_39_tpl_4_delay_2 <= '0;
            redist40_sync_together238_aunroll_x_in_c0_eni461037_39_tpl_4_q <= '0;
        end
        else
        begin
            redist40_sync_together238_aunroll_x_in_c0_eni461037_39_tpl_4_delay_0 <= $unsigned(in_c0_eni461037_39_tpl);
            redist40_sync_together238_aunroll_x_in_c0_eni461037_39_tpl_4_delay_1 <= redist40_sync_together238_aunroll_x_in_c0_eni461037_39_tpl_4_delay_0;
            redist40_sync_together238_aunroll_x_in_c0_eni461037_39_tpl_4_delay_2 <= redist40_sync_together238_aunroll_x_in_c0_eni461037_39_tpl_4_delay_1;
            redist40_sync_together238_aunroll_x_in_c0_eni461037_39_tpl_4_q <= redist40_sync_together238_aunroll_x_in_c0_eni461037_39_tpl_4_delay_2;
        end
    end

    // redist39_sync_together238_aunroll_x_in_c0_eni461037_38_tpl_4_notEnable(LOGICAL,460)
    assign redist39_sync_together238_aunroll_x_in_c0_eni461037_38_tpl_4_notEnable_q = $unsigned(~ (VCC_q));

    // redist39_sync_together238_aunroll_x_in_c0_eni461037_38_tpl_4_nor(LOGICAL,461)
    assign redist39_sync_together238_aunroll_x_in_c0_eni461037_38_tpl_4_nor_q = ~ (redist39_sync_together238_aunroll_x_in_c0_eni461037_38_tpl_4_notEnable_q | redist39_sync_together238_aunroll_x_in_c0_eni461037_38_tpl_4_sticky_ena_q);

    // redist39_sync_together238_aunroll_x_in_c0_eni461037_38_tpl_4_mem_last(CONSTANT,457)
    assign redist39_sync_together238_aunroll_x_in_c0_eni461037_38_tpl_4_mem_last_q = $unsigned(2'b01);

    // redist39_sync_together238_aunroll_x_in_c0_eni461037_38_tpl_4_cmp(LOGICAL,458)
    assign redist39_sync_together238_aunroll_x_in_c0_eni461037_38_tpl_4_cmp_q = $unsigned(redist39_sync_together238_aunroll_x_in_c0_eni461037_38_tpl_4_mem_last_q == redist39_sync_together238_aunroll_x_in_c0_eni461037_38_tpl_4_rdcnt_q ? 1'b1 : 1'b0);

    // redist39_sync_together238_aunroll_x_in_c0_eni461037_38_tpl_4_cmpReg(REG,459)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist39_sync_together238_aunroll_x_in_c0_eni461037_38_tpl_4_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist39_sync_together238_aunroll_x_in_c0_eni461037_38_tpl_4_cmpReg_q <= $unsigned(redist39_sync_together238_aunroll_x_in_c0_eni461037_38_tpl_4_cmp_q);
        end
    end

    // redist39_sync_together238_aunroll_x_in_c0_eni461037_38_tpl_4_sticky_ena(REG,462)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist39_sync_together238_aunroll_x_in_c0_eni461037_38_tpl_4_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist39_sync_together238_aunroll_x_in_c0_eni461037_38_tpl_4_nor_q == 1'b1)
        begin
            redist39_sync_together238_aunroll_x_in_c0_eni461037_38_tpl_4_sticky_ena_q <= $unsigned(redist39_sync_together238_aunroll_x_in_c0_eni461037_38_tpl_4_cmpReg_q);
        end
    end

    // redist39_sync_together238_aunroll_x_in_c0_eni461037_38_tpl_4_enaAnd(LOGICAL,463)
    assign redist39_sync_together238_aunroll_x_in_c0_eni461037_38_tpl_4_enaAnd_q = redist39_sync_together238_aunroll_x_in_c0_eni461037_38_tpl_4_sticky_ena_q & VCC_q;

    // redist39_sync_together238_aunroll_x_in_c0_eni461037_38_tpl_4_rdcnt(COUNTER,455)
    // low=0, high=2, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist39_sync_together238_aunroll_x_in_c0_eni461037_38_tpl_4_rdcnt_i <= 2'd0;
            redist39_sync_together238_aunroll_x_in_c0_eni461037_38_tpl_4_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist39_sync_together238_aunroll_x_in_c0_eni461037_38_tpl_4_rdcnt_i == 2'd1)
            begin
                redist39_sync_together238_aunroll_x_in_c0_eni461037_38_tpl_4_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist39_sync_together238_aunroll_x_in_c0_eni461037_38_tpl_4_rdcnt_eq <= 1'b0;
            end
            if (redist39_sync_together238_aunroll_x_in_c0_eni461037_38_tpl_4_rdcnt_eq == 1'b1)
            begin
                redist39_sync_together238_aunroll_x_in_c0_eni461037_38_tpl_4_rdcnt_i <= $unsigned(redist39_sync_together238_aunroll_x_in_c0_eni461037_38_tpl_4_rdcnt_i) + $unsigned(2'd2);
            end
            else
            begin
                redist39_sync_together238_aunroll_x_in_c0_eni461037_38_tpl_4_rdcnt_i <= $unsigned(redist39_sync_together238_aunroll_x_in_c0_eni461037_38_tpl_4_rdcnt_i) + $unsigned(2'd1);
            end
        end
    end
    assign redist39_sync_together238_aunroll_x_in_c0_eni461037_38_tpl_4_rdcnt_q = redist39_sync_together238_aunroll_x_in_c0_eni461037_38_tpl_4_rdcnt_i[1:0];

    // redist39_sync_together238_aunroll_x_in_c0_eni461037_38_tpl_4_wraddr(REG,456)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist39_sync_together238_aunroll_x_in_c0_eni461037_38_tpl_4_wraddr_q <= $unsigned(2'b10);
        end
        else
        begin
            redist39_sync_together238_aunroll_x_in_c0_eni461037_38_tpl_4_wraddr_q <= $unsigned(redist39_sync_together238_aunroll_x_in_c0_eni461037_38_tpl_4_rdcnt_q);
        end
    end

    // redist39_sync_together238_aunroll_x_in_c0_eni461037_38_tpl_4_mem(DUALMEM,454)
    assign redist39_sync_together238_aunroll_x_in_c0_eni461037_38_tpl_4_mem_ia = $unsigned(in_c0_eni461037_38_tpl);
    assign redist39_sync_together238_aunroll_x_in_c0_eni461037_38_tpl_4_mem_aa = redist39_sync_together238_aunroll_x_in_c0_eni461037_38_tpl_4_wraddr_q;
    assign redist39_sync_together238_aunroll_x_in_c0_eni461037_38_tpl_4_mem_ab = redist39_sync_together238_aunroll_x_in_c0_eni461037_38_tpl_4_rdcnt_q;
    assign redist39_sync_together238_aunroll_x_in_c0_eni461037_38_tpl_4_mem_reset0 = ~ (resetn);
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
    ) redist39_sync_together238_aunroll_x_in_c0_eni461037_38_tpl_4_mem_dmem (
        .clocken1(redist39_sync_together238_aunroll_x_in_c0_eni461037_38_tpl_4_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist39_sync_together238_aunroll_x_in_c0_eni461037_38_tpl_4_mem_reset0),
        .clock1(clock),
        .address_a(redist39_sync_together238_aunroll_x_in_c0_eni461037_38_tpl_4_mem_aa),
        .data_a(redist39_sync_together238_aunroll_x_in_c0_eni461037_38_tpl_4_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist39_sync_together238_aunroll_x_in_c0_eni461037_38_tpl_4_mem_ab),
        .q_b(redist39_sync_together238_aunroll_x_in_c0_eni461037_38_tpl_4_mem_iq),
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
    assign redist39_sync_together238_aunroll_x_in_c0_eni461037_38_tpl_4_mem_q = redist39_sync_together238_aunroll_x_in_c0_eni461037_38_tpl_4_mem_iq[31:0];

    // redist38_sync_together238_aunroll_x_in_c0_eni461037_37_tpl_4(DELAY,350)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist38_sync_together238_aunroll_x_in_c0_eni461037_37_tpl_4_delay_0 <= '0;
            redist38_sync_together238_aunroll_x_in_c0_eni461037_37_tpl_4_delay_1 <= '0;
            redist38_sync_together238_aunroll_x_in_c0_eni461037_37_tpl_4_delay_2 <= '0;
            redist38_sync_together238_aunroll_x_in_c0_eni461037_37_tpl_4_q <= '0;
        end
        else
        begin
            redist38_sync_together238_aunroll_x_in_c0_eni461037_37_tpl_4_delay_0 <= $unsigned(in_c0_eni461037_37_tpl);
            redist38_sync_together238_aunroll_x_in_c0_eni461037_37_tpl_4_delay_1 <= redist38_sync_together238_aunroll_x_in_c0_eni461037_37_tpl_4_delay_0;
            redist38_sync_together238_aunroll_x_in_c0_eni461037_37_tpl_4_delay_2 <= redist38_sync_together238_aunroll_x_in_c0_eni461037_37_tpl_4_delay_1;
            redist38_sync_together238_aunroll_x_in_c0_eni461037_37_tpl_4_q <= redist38_sync_together238_aunroll_x_in_c0_eni461037_37_tpl_4_delay_2;
        end
    end

    // redist37_sync_together238_aunroll_x_in_c0_eni461037_36_tpl_4(DELAY,349)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist37_sync_together238_aunroll_x_in_c0_eni461037_36_tpl_4_delay_0 <= '0;
            redist37_sync_together238_aunroll_x_in_c0_eni461037_36_tpl_4_delay_1 <= '0;
            redist37_sync_together238_aunroll_x_in_c0_eni461037_36_tpl_4_delay_2 <= '0;
            redist37_sync_together238_aunroll_x_in_c0_eni461037_36_tpl_4_q <= '0;
        end
        else
        begin
            redist37_sync_together238_aunroll_x_in_c0_eni461037_36_tpl_4_delay_0 <= $unsigned(in_c0_eni461037_36_tpl);
            redist37_sync_together238_aunroll_x_in_c0_eni461037_36_tpl_4_delay_1 <= redist37_sync_together238_aunroll_x_in_c0_eni461037_36_tpl_4_delay_0;
            redist37_sync_together238_aunroll_x_in_c0_eni461037_36_tpl_4_delay_2 <= redist37_sync_together238_aunroll_x_in_c0_eni461037_36_tpl_4_delay_1;
            redist37_sync_together238_aunroll_x_in_c0_eni461037_36_tpl_4_q <= redist37_sync_together238_aunroll_x_in_c0_eni461037_36_tpl_4_delay_2;
        end
    end

    // redist36_sync_together238_aunroll_x_in_c0_eni461037_35_tpl_4_notEnable(LOGICAL,450)
    assign redist36_sync_together238_aunroll_x_in_c0_eni461037_35_tpl_4_notEnable_q = $unsigned(~ (VCC_q));

    // redist36_sync_together238_aunroll_x_in_c0_eni461037_35_tpl_4_nor(LOGICAL,451)
    assign redist36_sync_together238_aunroll_x_in_c0_eni461037_35_tpl_4_nor_q = ~ (redist36_sync_together238_aunroll_x_in_c0_eni461037_35_tpl_4_notEnable_q | redist36_sync_together238_aunroll_x_in_c0_eni461037_35_tpl_4_sticky_ena_q);

    // redist36_sync_together238_aunroll_x_in_c0_eni461037_35_tpl_4_mem_last(CONSTANT,447)
    assign redist36_sync_together238_aunroll_x_in_c0_eni461037_35_tpl_4_mem_last_q = $unsigned(2'b01);

    // redist36_sync_together238_aunroll_x_in_c0_eni461037_35_tpl_4_cmp(LOGICAL,448)
    assign redist36_sync_together238_aunroll_x_in_c0_eni461037_35_tpl_4_cmp_q = $unsigned(redist36_sync_together238_aunroll_x_in_c0_eni461037_35_tpl_4_mem_last_q == redist36_sync_together238_aunroll_x_in_c0_eni461037_35_tpl_4_rdcnt_q ? 1'b1 : 1'b0);

    // redist36_sync_together238_aunroll_x_in_c0_eni461037_35_tpl_4_cmpReg(REG,449)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist36_sync_together238_aunroll_x_in_c0_eni461037_35_tpl_4_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist36_sync_together238_aunroll_x_in_c0_eni461037_35_tpl_4_cmpReg_q <= $unsigned(redist36_sync_together238_aunroll_x_in_c0_eni461037_35_tpl_4_cmp_q);
        end
    end

    // redist36_sync_together238_aunroll_x_in_c0_eni461037_35_tpl_4_sticky_ena(REG,452)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist36_sync_together238_aunroll_x_in_c0_eni461037_35_tpl_4_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist36_sync_together238_aunroll_x_in_c0_eni461037_35_tpl_4_nor_q == 1'b1)
        begin
            redist36_sync_together238_aunroll_x_in_c0_eni461037_35_tpl_4_sticky_ena_q <= $unsigned(redist36_sync_together238_aunroll_x_in_c0_eni461037_35_tpl_4_cmpReg_q);
        end
    end

    // redist36_sync_together238_aunroll_x_in_c0_eni461037_35_tpl_4_enaAnd(LOGICAL,453)
    assign redist36_sync_together238_aunroll_x_in_c0_eni461037_35_tpl_4_enaAnd_q = redist36_sync_together238_aunroll_x_in_c0_eni461037_35_tpl_4_sticky_ena_q & VCC_q;

    // redist36_sync_together238_aunroll_x_in_c0_eni461037_35_tpl_4_rdcnt(COUNTER,445)
    // low=0, high=2, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist36_sync_together238_aunroll_x_in_c0_eni461037_35_tpl_4_rdcnt_i <= 2'd0;
            redist36_sync_together238_aunroll_x_in_c0_eni461037_35_tpl_4_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist36_sync_together238_aunroll_x_in_c0_eni461037_35_tpl_4_rdcnt_i == 2'd1)
            begin
                redist36_sync_together238_aunroll_x_in_c0_eni461037_35_tpl_4_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist36_sync_together238_aunroll_x_in_c0_eni461037_35_tpl_4_rdcnt_eq <= 1'b0;
            end
            if (redist36_sync_together238_aunroll_x_in_c0_eni461037_35_tpl_4_rdcnt_eq == 1'b1)
            begin
                redist36_sync_together238_aunroll_x_in_c0_eni461037_35_tpl_4_rdcnt_i <= $unsigned(redist36_sync_together238_aunroll_x_in_c0_eni461037_35_tpl_4_rdcnt_i) + $unsigned(2'd2);
            end
            else
            begin
                redist36_sync_together238_aunroll_x_in_c0_eni461037_35_tpl_4_rdcnt_i <= $unsigned(redist36_sync_together238_aunroll_x_in_c0_eni461037_35_tpl_4_rdcnt_i) + $unsigned(2'd1);
            end
        end
    end
    assign redist36_sync_together238_aunroll_x_in_c0_eni461037_35_tpl_4_rdcnt_q = redist36_sync_together238_aunroll_x_in_c0_eni461037_35_tpl_4_rdcnt_i[1:0];

    // redist36_sync_together238_aunroll_x_in_c0_eni461037_35_tpl_4_wraddr(REG,446)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist36_sync_together238_aunroll_x_in_c0_eni461037_35_tpl_4_wraddr_q <= $unsigned(2'b10);
        end
        else
        begin
            redist36_sync_together238_aunroll_x_in_c0_eni461037_35_tpl_4_wraddr_q <= $unsigned(redist36_sync_together238_aunroll_x_in_c0_eni461037_35_tpl_4_rdcnt_q);
        end
    end

    // redist36_sync_together238_aunroll_x_in_c0_eni461037_35_tpl_4_mem(DUALMEM,444)
    assign redist36_sync_together238_aunroll_x_in_c0_eni461037_35_tpl_4_mem_ia = $unsigned(in_c0_eni461037_35_tpl);
    assign redist36_sync_together238_aunroll_x_in_c0_eni461037_35_tpl_4_mem_aa = redist36_sync_together238_aunroll_x_in_c0_eni461037_35_tpl_4_wraddr_q;
    assign redist36_sync_together238_aunroll_x_in_c0_eni461037_35_tpl_4_mem_ab = redist36_sync_together238_aunroll_x_in_c0_eni461037_35_tpl_4_rdcnt_q;
    assign redist36_sync_together238_aunroll_x_in_c0_eni461037_35_tpl_4_mem_reset0 = ~ (resetn);
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
    ) redist36_sync_together238_aunroll_x_in_c0_eni461037_35_tpl_4_mem_dmem (
        .clocken1(redist36_sync_together238_aunroll_x_in_c0_eni461037_35_tpl_4_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist36_sync_together238_aunroll_x_in_c0_eni461037_35_tpl_4_mem_reset0),
        .clock1(clock),
        .address_a(redist36_sync_together238_aunroll_x_in_c0_eni461037_35_tpl_4_mem_aa),
        .data_a(redist36_sync_together238_aunroll_x_in_c0_eni461037_35_tpl_4_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist36_sync_together238_aunroll_x_in_c0_eni461037_35_tpl_4_mem_ab),
        .q_b(redist36_sync_together238_aunroll_x_in_c0_eni461037_35_tpl_4_mem_iq),
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
    assign redist36_sync_together238_aunroll_x_in_c0_eni461037_35_tpl_4_mem_q = redist36_sync_together238_aunroll_x_in_c0_eni461037_35_tpl_4_mem_iq[31:0];

    // redist35_sync_together238_aunroll_x_in_c0_eni461037_34_tpl_4(DELAY,347)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist35_sync_together238_aunroll_x_in_c0_eni461037_34_tpl_4_delay_0 <= '0;
            redist35_sync_together238_aunroll_x_in_c0_eni461037_34_tpl_4_delay_1 <= '0;
            redist35_sync_together238_aunroll_x_in_c0_eni461037_34_tpl_4_delay_2 <= '0;
            redist35_sync_together238_aunroll_x_in_c0_eni461037_34_tpl_4_q <= '0;
        end
        else
        begin
            redist35_sync_together238_aunroll_x_in_c0_eni461037_34_tpl_4_delay_0 <= $unsigned(in_c0_eni461037_34_tpl);
            redist35_sync_together238_aunroll_x_in_c0_eni461037_34_tpl_4_delay_1 <= redist35_sync_together238_aunroll_x_in_c0_eni461037_34_tpl_4_delay_0;
            redist35_sync_together238_aunroll_x_in_c0_eni461037_34_tpl_4_delay_2 <= redist35_sync_together238_aunroll_x_in_c0_eni461037_34_tpl_4_delay_1;
            redist35_sync_together238_aunroll_x_in_c0_eni461037_34_tpl_4_q <= redist35_sync_together238_aunroll_x_in_c0_eni461037_34_tpl_4_delay_2;
        end
    end

    // redist34_sync_together238_aunroll_x_in_c0_eni461037_33_tpl_4(DELAY,346)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist34_sync_together238_aunroll_x_in_c0_eni461037_33_tpl_4_delay_0 <= '0;
            redist34_sync_together238_aunroll_x_in_c0_eni461037_33_tpl_4_delay_1 <= '0;
            redist34_sync_together238_aunroll_x_in_c0_eni461037_33_tpl_4_delay_2 <= '0;
            redist34_sync_together238_aunroll_x_in_c0_eni461037_33_tpl_4_q <= '0;
        end
        else
        begin
            redist34_sync_together238_aunroll_x_in_c0_eni461037_33_tpl_4_delay_0 <= $unsigned(in_c0_eni461037_33_tpl);
            redist34_sync_together238_aunroll_x_in_c0_eni461037_33_tpl_4_delay_1 <= redist34_sync_together238_aunroll_x_in_c0_eni461037_33_tpl_4_delay_0;
            redist34_sync_together238_aunroll_x_in_c0_eni461037_33_tpl_4_delay_2 <= redist34_sync_together238_aunroll_x_in_c0_eni461037_33_tpl_4_delay_1;
            redist34_sync_together238_aunroll_x_in_c0_eni461037_33_tpl_4_q <= redist34_sync_together238_aunroll_x_in_c0_eni461037_33_tpl_4_delay_2;
        end
    end

    // redist33_sync_together238_aunroll_x_in_c0_eni461037_32_tpl_4_notEnable(LOGICAL,440)
    assign redist33_sync_together238_aunroll_x_in_c0_eni461037_32_tpl_4_notEnable_q = $unsigned(~ (VCC_q));

    // redist33_sync_together238_aunroll_x_in_c0_eni461037_32_tpl_4_nor(LOGICAL,441)
    assign redist33_sync_together238_aunroll_x_in_c0_eni461037_32_tpl_4_nor_q = ~ (redist33_sync_together238_aunroll_x_in_c0_eni461037_32_tpl_4_notEnable_q | redist33_sync_together238_aunroll_x_in_c0_eni461037_32_tpl_4_sticky_ena_q);

    // redist33_sync_together238_aunroll_x_in_c0_eni461037_32_tpl_4_mem_last(CONSTANT,437)
    assign redist33_sync_together238_aunroll_x_in_c0_eni461037_32_tpl_4_mem_last_q = $unsigned(2'b01);

    // redist33_sync_together238_aunroll_x_in_c0_eni461037_32_tpl_4_cmp(LOGICAL,438)
    assign redist33_sync_together238_aunroll_x_in_c0_eni461037_32_tpl_4_cmp_q = $unsigned(redist33_sync_together238_aunroll_x_in_c0_eni461037_32_tpl_4_mem_last_q == redist33_sync_together238_aunroll_x_in_c0_eni461037_32_tpl_4_rdcnt_q ? 1'b1 : 1'b0);

    // redist33_sync_together238_aunroll_x_in_c0_eni461037_32_tpl_4_cmpReg(REG,439)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist33_sync_together238_aunroll_x_in_c0_eni461037_32_tpl_4_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist33_sync_together238_aunroll_x_in_c0_eni461037_32_tpl_4_cmpReg_q <= $unsigned(redist33_sync_together238_aunroll_x_in_c0_eni461037_32_tpl_4_cmp_q);
        end
    end

    // redist33_sync_together238_aunroll_x_in_c0_eni461037_32_tpl_4_sticky_ena(REG,442)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist33_sync_together238_aunroll_x_in_c0_eni461037_32_tpl_4_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist33_sync_together238_aunroll_x_in_c0_eni461037_32_tpl_4_nor_q == 1'b1)
        begin
            redist33_sync_together238_aunroll_x_in_c0_eni461037_32_tpl_4_sticky_ena_q <= $unsigned(redist33_sync_together238_aunroll_x_in_c0_eni461037_32_tpl_4_cmpReg_q);
        end
    end

    // redist33_sync_together238_aunroll_x_in_c0_eni461037_32_tpl_4_enaAnd(LOGICAL,443)
    assign redist33_sync_together238_aunroll_x_in_c0_eni461037_32_tpl_4_enaAnd_q = redist33_sync_together238_aunroll_x_in_c0_eni461037_32_tpl_4_sticky_ena_q & VCC_q;

    // redist33_sync_together238_aunroll_x_in_c0_eni461037_32_tpl_4_rdcnt(COUNTER,435)
    // low=0, high=2, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist33_sync_together238_aunroll_x_in_c0_eni461037_32_tpl_4_rdcnt_i <= 2'd0;
            redist33_sync_together238_aunroll_x_in_c0_eni461037_32_tpl_4_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist33_sync_together238_aunroll_x_in_c0_eni461037_32_tpl_4_rdcnt_i == 2'd1)
            begin
                redist33_sync_together238_aunroll_x_in_c0_eni461037_32_tpl_4_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist33_sync_together238_aunroll_x_in_c0_eni461037_32_tpl_4_rdcnt_eq <= 1'b0;
            end
            if (redist33_sync_together238_aunroll_x_in_c0_eni461037_32_tpl_4_rdcnt_eq == 1'b1)
            begin
                redist33_sync_together238_aunroll_x_in_c0_eni461037_32_tpl_4_rdcnt_i <= $unsigned(redist33_sync_together238_aunroll_x_in_c0_eni461037_32_tpl_4_rdcnt_i) + $unsigned(2'd2);
            end
            else
            begin
                redist33_sync_together238_aunroll_x_in_c0_eni461037_32_tpl_4_rdcnt_i <= $unsigned(redist33_sync_together238_aunroll_x_in_c0_eni461037_32_tpl_4_rdcnt_i) + $unsigned(2'd1);
            end
        end
    end
    assign redist33_sync_together238_aunroll_x_in_c0_eni461037_32_tpl_4_rdcnt_q = redist33_sync_together238_aunroll_x_in_c0_eni461037_32_tpl_4_rdcnt_i[1:0];

    // redist33_sync_together238_aunroll_x_in_c0_eni461037_32_tpl_4_wraddr(REG,436)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist33_sync_together238_aunroll_x_in_c0_eni461037_32_tpl_4_wraddr_q <= $unsigned(2'b10);
        end
        else
        begin
            redist33_sync_together238_aunroll_x_in_c0_eni461037_32_tpl_4_wraddr_q <= $unsigned(redist33_sync_together238_aunroll_x_in_c0_eni461037_32_tpl_4_rdcnt_q);
        end
    end

    // redist33_sync_together238_aunroll_x_in_c0_eni461037_32_tpl_4_mem(DUALMEM,434)
    assign redist33_sync_together238_aunroll_x_in_c0_eni461037_32_tpl_4_mem_ia = $unsigned(in_c0_eni461037_32_tpl);
    assign redist33_sync_together238_aunroll_x_in_c0_eni461037_32_tpl_4_mem_aa = redist33_sync_together238_aunroll_x_in_c0_eni461037_32_tpl_4_wraddr_q;
    assign redist33_sync_together238_aunroll_x_in_c0_eni461037_32_tpl_4_mem_ab = redist33_sync_together238_aunroll_x_in_c0_eni461037_32_tpl_4_rdcnt_q;
    assign redist33_sync_together238_aunroll_x_in_c0_eni461037_32_tpl_4_mem_reset0 = ~ (resetn);
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
    ) redist33_sync_together238_aunroll_x_in_c0_eni461037_32_tpl_4_mem_dmem (
        .clocken1(redist33_sync_together238_aunroll_x_in_c0_eni461037_32_tpl_4_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist33_sync_together238_aunroll_x_in_c0_eni461037_32_tpl_4_mem_reset0),
        .clock1(clock),
        .address_a(redist33_sync_together238_aunroll_x_in_c0_eni461037_32_tpl_4_mem_aa),
        .data_a(redist33_sync_together238_aunroll_x_in_c0_eni461037_32_tpl_4_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist33_sync_together238_aunroll_x_in_c0_eni461037_32_tpl_4_mem_ab),
        .q_b(redist33_sync_together238_aunroll_x_in_c0_eni461037_32_tpl_4_mem_iq),
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
    assign redist33_sync_together238_aunroll_x_in_c0_eni461037_32_tpl_4_mem_q = redist33_sync_together238_aunroll_x_in_c0_eni461037_32_tpl_4_mem_iq[31:0];

    // redist32_sync_together238_aunroll_x_in_c0_eni461037_31_tpl_4_notEnable(LOGICAL,430)
    assign redist32_sync_together238_aunroll_x_in_c0_eni461037_31_tpl_4_notEnable_q = $unsigned(~ (VCC_q));

    // redist32_sync_together238_aunroll_x_in_c0_eni461037_31_tpl_4_nor(LOGICAL,431)
    assign redist32_sync_together238_aunroll_x_in_c0_eni461037_31_tpl_4_nor_q = ~ (redist32_sync_together238_aunroll_x_in_c0_eni461037_31_tpl_4_notEnable_q | redist32_sync_together238_aunroll_x_in_c0_eni461037_31_tpl_4_sticky_ena_q);

    // redist32_sync_together238_aunroll_x_in_c0_eni461037_31_tpl_4_mem_last(CONSTANT,427)
    assign redist32_sync_together238_aunroll_x_in_c0_eni461037_31_tpl_4_mem_last_q = $unsigned(2'b01);

    // redist32_sync_together238_aunroll_x_in_c0_eni461037_31_tpl_4_cmp(LOGICAL,428)
    assign redist32_sync_together238_aunroll_x_in_c0_eni461037_31_tpl_4_cmp_q = $unsigned(redist32_sync_together238_aunroll_x_in_c0_eni461037_31_tpl_4_mem_last_q == redist32_sync_together238_aunroll_x_in_c0_eni461037_31_tpl_4_rdcnt_q ? 1'b1 : 1'b0);

    // redist32_sync_together238_aunroll_x_in_c0_eni461037_31_tpl_4_cmpReg(REG,429)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist32_sync_together238_aunroll_x_in_c0_eni461037_31_tpl_4_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist32_sync_together238_aunroll_x_in_c0_eni461037_31_tpl_4_cmpReg_q <= $unsigned(redist32_sync_together238_aunroll_x_in_c0_eni461037_31_tpl_4_cmp_q);
        end
    end

    // redist32_sync_together238_aunroll_x_in_c0_eni461037_31_tpl_4_sticky_ena(REG,432)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist32_sync_together238_aunroll_x_in_c0_eni461037_31_tpl_4_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist32_sync_together238_aunroll_x_in_c0_eni461037_31_tpl_4_nor_q == 1'b1)
        begin
            redist32_sync_together238_aunroll_x_in_c0_eni461037_31_tpl_4_sticky_ena_q <= $unsigned(redist32_sync_together238_aunroll_x_in_c0_eni461037_31_tpl_4_cmpReg_q);
        end
    end

    // redist32_sync_together238_aunroll_x_in_c0_eni461037_31_tpl_4_enaAnd(LOGICAL,433)
    assign redist32_sync_together238_aunroll_x_in_c0_eni461037_31_tpl_4_enaAnd_q = redist32_sync_together238_aunroll_x_in_c0_eni461037_31_tpl_4_sticky_ena_q & VCC_q;

    // redist32_sync_together238_aunroll_x_in_c0_eni461037_31_tpl_4_rdcnt(COUNTER,425)
    // low=0, high=2, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist32_sync_together238_aunroll_x_in_c0_eni461037_31_tpl_4_rdcnt_i <= 2'd0;
            redist32_sync_together238_aunroll_x_in_c0_eni461037_31_tpl_4_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist32_sync_together238_aunroll_x_in_c0_eni461037_31_tpl_4_rdcnt_i == 2'd1)
            begin
                redist32_sync_together238_aunroll_x_in_c0_eni461037_31_tpl_4_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist32_sync_together238_aunroll_x_in_c0_eni461037_31_tpl_4_rdcnt_eq <= 1'b0;
            end
            if (redist32_sync_together238_aunroll_x_in_c0_eni461037_31_tpl_4_rdcnt_eq == 1'b1)
            begin
                redist32_sync_together238_aunroll_x_in_c0_eni461037_31_tpl_4_rdcnt_i <= $unsigned(redist32_sync_together238_aunroll_x_in_c0_eni461037_31_tpl_4_rdcnt_i) + $unsigned(2'd2);
            end
            else
            begin
                redist32_sync_together238_aunroll_x_in_c0_eni461037_31_tpl_4_rdcnt_i <= $unsigned(redist32_sync_together238_aunroll_x_in_c0_eni461037_31_tpl_4_rdcnt_i) + $unsigned(2'd1);
            end
        end
    end
    assign redist32_sync_together238_aunroll_x_in_c0_eni461037_31_tpl_4_rdcnt_q = redist32_sync_together238_aunroll_x_in_c0_eni461037_31_tpl_4_rdcnt_i[1:0];

    // redist32_sync_together238_aunroll_x_in_c0_eni461037_31_tpl_4_wraddr(REG,426)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist32_sync_together238_aunroll_x_in_c0_eni461037_31_tpl_4_wraddr_q <= $unsigned(2'b10);
        end
        else
        begin
            redist32_sync_together238_aunroll_x_in_c0_eni461037_31_tpl_4_wraddr_q <= $unsigned(redist32_sync_together238_aunroll_x_in_c0_eni461037_31_tpl_4_rdcnt_q);
        end
    end

    // redist32_sync_together238_aunroll_x_in_c0_eni461037_31_tpl_4_mem(DUALMEM,424)
    assign redist32_sync_together238_aunroll_x_in_c0_eni461037_31_tpl_4_mem_ia = $unsigned(in_c0_eni461037_31_tpl);
    assign redist32_sync_together238_aunroll_x_in_c0_eni461037_31_tpl_4_mem_aa = redist32_sync_together238_aunroll_x_in_c0_eni461037_31_tpl_4_wraddr_q;
    assign redist32_sync_together238_aunroll_x_in_c0_eni461037_31_tpl_4_mem_ab = redist32_sync_together238_aunroll_x_in_c0_eni461037_31_tpl_4_rdcnt_q;
    assign redist32_sync_together238_aunroll_x_in_c0_eni461037_31_tpl_4_mem_reset0 = ~ (resetn);
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
    ) redist32_sync_together238_aunroll_x_in_c0_eni461037_31_tpl_4_mem_dmem (
        .clocken1(redist32_sync_together238_aunroll_x_in_c0_eni461037_31_tpl_4_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist32_sync_together238_aunroll_x_in_c0_eni461037_31_tpl_4_mem_reset0),
        .clock1(clock),
        .address_a(redist32_sync_together238_aunroll_x_in_c0_eni461037_31_tpl_4_mem_aa),
        .data_a(redist32_sync_together238_aunroll_x_in_c0_eni461037_31_tpl_4_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist32_sync_together238_aunroll_x_in_c0_eni461037_31_tpl_4_mem_ab),
        .q_b(redist32_sync_together238_aunroll_x_in_c0_eni461037_31_tpl_4_mem_iq),
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
    assign redist32_sync_together238_aunroll_x_in_c0_eni461037_31_tpl_4_mem_q = redist32_sync_together238_aunroll_x_in_c0_eni461037_31_tpl_4_mem_iq[31:0];

    // redist31_sync_together238_aunroll_x_in_c0_eni461037_30_tpl_4(DELAY,343)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist31_sync_together238_aunroll_x_in_c0_eni461037_30_tpl_4_delay_0 <= '0;
            redist31_sync_together238_aunroll_x_in_c0_eni461037_30_tpl_4_delay_1 <= '0;
            redist31_sync_together238_aunroll_x_in_c0_eni461037_30_tpl_4_delay_2 <= '0;
            redist31_sync_together238_aunroll_x_in_c0_eni461037_30_tpl_4_q <= '0;
        end
        else
        begin
            redist31_sync_together238_aunroll_x_in_c0_eni461037_30_tpl_4_delay_0 <= $unsigned(in_c0_eni461037_30_tpl);
            redist31_sync_together238_aunroll_x_in_c0_eni461037_30_tpl_4_delay_1 <= redist31_sync_together238_aunroll_x_in_c0_eni461037_30_tpl_4_delay_0;
            redist31_sync_together238_aunroll_x_in_c0_eni461037_30_tpl_4_delay_2 <= redist31_sync_together238_aunroll_x_in_c0_eni461037_30_tpl_4_delay_1;
            redist31_sync_together238_aunroll_x_in_c0_eni461037_30_tpl_4_q <= redist31_sync_together238_aunroll_x_in_c0_eni461037_30_tpl_4_delay_2;
        end
    end

    // redist30_sync_together238_aunroll_x_in_c0_eni461037_29_tpl_4_notEnable(LOGICAL,420)
    assign redist30_sync_together238_aunroll_x_in_c0_eni461037_29_tpl_4_notEnable_q = $unsigned(~ (VCC_q));

    // redist30_sync_together238_aunroll_x_in_c0_eni461037_29_tpl_4_nor(LOGICAL,421)
    assign redist30_sync_together238_aunroll_x_in_c0_eni461037_29_tpl_4_nor_q = ~ (redist30_sync_together238_aunroll_x_in_c0_eni461037_29_tpl_4_notEnable_q | redist30_sync_together238_aunroll_x_in_c0_eni461037_29_tpl_4_sticky_ena_q);

    // redist30_sync_together238_aunroll_x_in_c0_eni461037_29_tpl_4_mem_last(CONSTANT,417)
    assign redist30_sync_together238_aunroll_x_in_c0_eni461037_29_tpl_4_mem_last_q = $unsigned(2'b01);

    // redist30_sync_together238_aunroll_x_in_c0_eni461037_29_tpl_4_cmp(LOGICAL,418)
    assign redist30_sync_together238_aunroll_x_in_c0_eni461037_29_tpl_4_cmp_q = $unsigned(redist30_sync_together238_aunroll_x_in_c0_eni461037_29_tpl_4_mem_last_q == redist30_sync_together238_aunroll_x_in_c0_eni461037_29_tpl_4_rdcnt_q ? 1'b1 : 1'b0);

    // redist30_sync_together238_aunroll_x_in_c0_eni461037_29_tpl_4_cmpReg(REG,419)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist30_sync_together238_aunroll_x_in_c0_eni461037_29_tpl_4_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist30_sync_together238_aunroll_x_in_c0_eni461037_29_tpl_4_cmpReg_q <= $unsigned(redist30_sync_together238_aunroll_x_in_c0_eni461037_29_tpl_4_cmp_q);
        end
    end

    // redist30_sync_together238_aunroll_x_in_c0_eni461037_29_tpl_4_sticky_ena(REG,422)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist30_sync_together238_aunroll_x_in_c0_eni461037_29_tpl_4_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist30_sync_together238_aunroll_x_in_c0_eni461037_29_tpl_4_nor_q == 1'b1)
        begin
            redist30_sync_together238_aunroll_x_in_c0_eni461037_29_tpl_4_sticky_ena_q <= $unsigned(redist30_sync_together238_aunroll_x_in_c0_eni461037_29_tpl_4_cmpReg_q);
        end
    end

    // redist30_sync_together238_aunroll_x_in_c0_eni461037_29_tpl_4_enaAnd(LOGICAL,423)
    assign redist30_sync_together238_aunroll_x_in_c0_eni461037_29_tpl_4_enaAnd_q = redist30_sync_together238_aunroll_x_in_c0_eni461037_29_tpl_4_sticky_ena_q & VCC_q;

    // redist30_sync_together238_aunroll_x_in_c0_eni461037_29_tpl_4_rdcnt(COUNTER,415)
    // low=0, high=2, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist30_sync_together238_aunroll_x_in_c0_eni461037_29_tpl_4_rdcnt_i <= 2'd0;
            redist30_sync_together238_aunroll_x_in_c0_eni461037_29_tpl_4_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist30_sync_together238_aunroll_x_in_c0_eni461037_29_tpl_4_rdcnt_i == 2'd1)
            begin
                redist30_sync_together238_aunroll_x_in_c0_eni461037_29_tpl_4_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist30_sync_together238_aunroll_x_in_c0_eni461037_29_tpl_4_rdcnt_eq <= 1'b0;
            end
            if (redist30_sync_together238_aunroll_x_in_c0_eni461037_29_tpl_4_rdcnt_eq == 1'b1)
            begin
                redist30_sync_together238_aunroll_x_in_c0_eni461037_29_tpl_4_rdcnt_i <= $unsigned(redist30_sync_together238_aunroll_x_in_c0_eni461037_29_tpl_4_rdcnt_i) + $unsigned(2'd2);
            end
            else
            begin
                redist30_sync_together238_aunroll_x_in_c0_eni461037_29_tpl_4_rdcnt_i <= $unsigned(redist30_sync_together238_aunroll_x_in_c0_eni461037_29_tpl_4_rdcnt_i) + $unsigned(2'd1);
            end
        end
    end
    assign redist30_sync_together238_aunroll_x_in_c0_eni461037_29_tpl_4_rdcnt_q = redist30_sync_together238_aunroll_x_in_c0_eni461037_29_tpl_4_rdcnt_i[1:0];

    // redist30_sync_together238_aunroll_x_in_c0_eni461037_29_tpl_4_wraddr(REG,416)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist30_sync_together238_aunroll_x_in_c0_eni461037_29_tpl_4_wraddr_q <= $unsigned(2'b10);
        end
        else
        begin
            redist30_sync_together238_aunroll_x_in_c0_eni461037_29_tpl_4_wraddr_q <= $unsigned(redist30_sync_together238_aunroll_x_in_c0_eni461037_29_tpl_4_rdcnt_q);
        end
    end

    // redist30_sync_together238_aunroll_x_in_c0_eni461037_29_tpl_4_mem(DUALMEM,414)
    assign redist30_sync_together238_aunroll_x_in_c0_eni461037_29_tpl_4_mem_ia = $unsigned(in_c0_eni461037_29_tpl);
    assign redist30_sync_together238_aunroll_x_in_c0_eni461037_29_tpl_4_mem_aa = redist30_sync_together238_aunroll_x_in_c0_eni461037_29_tpl_4_wraddr_q;
    assign redist30_sync_together238_aunroll_x_in_c0_eni461037_29_tpl_4_mem_ab = redist30_sync_together238_aunroll_x_in_c0_eni461037_29_tpl_4_rdcnt_q;
    assign redist30_sync_together238_aunroll_x_in_c0_eni461037_29_tpl_4_mem_reset0 = ~ (resetn);
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
    ) redist30_sync_together238_aunroll_x_in_c0_eni461037_29_tpl_4_mem_dmem (
        .clocken1(redist30_sync_together238_aunroll_x_in_c0_eni461037_29_tpl_4_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist30_sync_together238_aunroll_x_in_c0_eni461037_29_tpl_4_mem_reset0),
        .clock1(clock),
        .address_a(redist30_sync_together238_aunroll_x_in_c0_eni461037_29_tpl_4_mem_aa),
        .data_a(redist30_sync_together238_aunroll_x_in_c0_eni461037_29_tpl_4_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist30_sync_together238_aunroll_x_in_c0_eni461037_29_tpl_4_mem_ab),
        .q_b(redist30_sync_together238_aunroll_x_in_c0_eni461037_29_tpl_4_mem_iq),
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
    assign redist30_sync_together238_aunroll_x_in_c0_eni461037_29_tpl_4_mem_q = redist30_sync_together238_aunroll_x_in_c0_eni461037_29_tpl_4_mem_iq[31:0];

    // redist29_sync_together238_aunroll_x_in_c0_eni461037_28_tpl_4_notEnable(LOGICAL,410)
    assign redist29_sync_together238_aunroll_x_in_c0_eni461037_28_tpl_4_notEnable_q = $unsigned(~ (VCC_q));

    // redist29_sync_together238_aunroll_x_in_c0_eni461037_28_tpl_4_nor(LOGICAL,411)
    assign redist29_sync_together238_aunroll_x_in_c0_eni461037_28_tpl_4_nor_q = ~ (redist29_sync_together238_aunroll_x_in_c0_eni461037_28_tpl_4_notEnable_q | redist29_sync_together238_aunroll_x_in_c0_eni461037_28_tpl_4_sticky_ena_q);

    // redist29_sync_together238_aunroll_x_in_c0_eni461037_28_tpl_4_mem_last(CONSTANT,407)
    assign redist29_sync_together238_aunroll_x_in_c0_eni461037_28_tpl_4_mem_last_q = $unsigned(2'b01);

    // redist29_sync_together238_aunroll_x_in_c0_eni461037_28_tpl_4_cmp(LOGICAL,408)
    assign redist29_sync_together238_aunroll_x_in_c0_eni461037_28_tpl_4_cmp_q = $unsigned(redist29_sync_together238_aunroll_x_in_c0_eni461037_28_tpl_4_mem_last_q == redist29_sync_together238_aunroll_x_in_c0_eni461037_28_tpl_4_rdcnt_q ? 1'b1 : 1'b0);

    // redist29_sync_together238_aunroll_x_in_c0_eni461037_28_tpl_4_cmpReg(REG,409)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist29_sync_together238_aunroll_x_in_c0_eni461037_28_tpl_4_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist29_sync_together238_aunroll_x_in_c0_eni461037_28_tpl_4_cmpReg_q <= $unsigned(redist29_sync_together238_aunroll_x_in_c0_eni461037_28_tpl_4_cmp_q);
        end
    end

    // redist29_sync_together238_aunroll_x_in_c0_eni461037_28_tpl_4_sticky_ena(REG,412)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist29_sync_together238_aunroll_x_in_c0_eni461037_28_tpl_4_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist29_sync_together238_aunroll_x_in_c0_eni461037_28_tpl_4_nor_q == 1'b1)
        begin
            redist29_sync_together238_aunroll_x_in_c0_eni461037_28_tpl_4_sticky_ena_q <= $unsigned(redist29_sync_together238_aunroll_x_in_c0_eni461037_28_tpl_4_cmpReg_q);
        end
    end

    // redist29_sync_together238_aunroll_x_in_c0_eni461037_28_tpl_4_enaAnd(LOGICAL,413)
    assign redist29_sync_together238_aunroll_x_in_c0_eni461037_28_tpl_4_enaAnd_q = redist29_sync_together238_aunroll_x_in_c0_eni461037_28_tpl_4_sticky_ena_q & VCC_q;

    // redist29_sync_together238_aunroll_x_in_c0_eni461037_28_tpl_4_rdcnt(COUNTER,405)
    // low=0, high=2, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist29_sync_together238_aunroll_x_in_c0_eni461037_28_tpl_4_rdcnt_i <= 2'd0;
            redist29_sync_together238_aunroll_x_in_c0_eni461037_28_tpl_4_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist29_sync_together238_aunroll_x_in_c0_eni461037_28_tpl_4_rdcnt_i == 2'd1)
            begin
                redist29_sync_together238_aunroll_x_in_c0_eni461037_28_tpl_4_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist29_sync_together238_aunroll_x_in_c0_eni461037_28_tpl_4_rdcnt_eq <= 1'b0;
            end
            if (redist29_sync_together238_aunroll_x_in_c0_eni461037_28_tpl_4_rdcnt_eq == 1'b1)
            begin
                redist29_sync_together238_aunroll_x_in_c0_eni461037_28_tpl_4_rdcnt_i <= $unsigned(redist29_sync_together238_aunroll_x_in_c0_eni461037_28_tpl_4_rdcnt_i) + $unsigned(2'd2);
            end
            else
            begin
                redist29_sync_together238_aunroll_x_in_c0_eni461037_28_tpl_4_rdcnt_i <= $unsigned(redist29_sync_together238_aunroll_x_in_c0_eni461037_28_tpl_4_rdcnt_i) + $unsigned(2'd1);
            end
        end
    end
    assign redist29_sync_together238_aunroll_x_in_c0_eni461037_28_tpl_4_rdcnt_q = redist29_sync_together238_aunroll_x_in_c0_eni461037_28_tpl_4_rdcnt_i[1:0];

    // redist29_sync_together238_aunroll_x_in_c0_eni461037_28_tpl_4_wraddr(REG,406)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist29_sync_together238_aunroll_x_in_c0_eni461037_28_tpl_4_wraddr_q <= $unsigned(2'b10);
        end
        else
        begin
            redist29_sync_together238_aunroll_x_in_c0_eni461037_28_tpl_4_wraddr_q <= $unsigned(redist29_sync_together238_aunroll_x_in_c0_eni461037_28_tpl_4_rdcnt_q);
        end
    end

    // redist29_sync_together238_aunroll_x_in_c0_eni461037_28_tpl_4_mem(DUALMEM,404)
    assign redist29_sync_together238_aunroll_x_in_c0_eni461037_28_tpl_4_mem_ia = $unsigned(in_c0_eni461037_28_tpl);
    assign redist29_sync_together238_aunroll_x_in_c0_eni461037_28_tpl_4_mem_aa = redist29_sync_together238_aunroll_x_in_c0_eni461037_28_tpl_4_wraddr_q;
    assign redist29_sync_together238_aunroll_x_in_c0_eni461037_28_tpl_4_mem_ab = redist29_sync_together238_aunroll_x_in_c0_eni461037_28_tpl_4_rdcnt_q;
    assign redist29_sync_together238_aunroll_x_in_c0_eni461037_28_tpl_4_mem_reset0 = ~ (resetn);
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
    ) redist29_sync_together238_aunroll_x_in_c0_eni461037_28_tpl_4_mem_dmem (
        .clocken1(redist29_sync_together238_aunroll_x_in_c0_eni461037_28_tpl_4_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist29_sync_together238_aunroll_x_in_c0_eni461037_28_tpl_4_mem_reset0),
        .clock1(clock),
        .address_a(redist29_sync_together238_aunroll_x_in_c0_eni461037_28_tpl_4_mem_aa),
        .data_a(redist29_sync_together238_aunroll_x_in_c0_eni461037_28_tpl_4_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist29_sync_together238_aunroll_x_in_c0_eni461037_28_tpl_4_mem_ab),
        .q_b(redist29_sync_together238_aunroll_x_in_c0_eni461037_28_tpl_4_mem_iq),
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
    assign redist29_sync_together238_aunroll_x_in_c0_eni461037_28_tpl_4_mem_q = redist29_sync_together238_aunroll_x_in_c0_eni461037_28_tpl_4_mem_iq[63:0];

    // redist28_sync_together238_aunroll_x_in_c0_eni461037_27_tpl_4_notEnable(LOGICAL,400)
    assign redist28_sync_together238_aunroll_x_in_c0_eni461037_27_tpl_4_notEnable_q = $unsigned(~ (VCC_q));

    // redist28_sync_together238_aunroll_x_in_c0_eni461037_27_tpl_4_nor(LOGICAL,401)
    assign redist28_sync_together238_aunroll_x_in_c0_eni461037_27_tpl_4_nor_q = ~ (redist28_sync_together238_aunroll_x_in_c0_eni461037_27_tpl_4_notEnable_q | redist28_sync_together238_aunroll_x_in_c0_eni461037_27_tpl_4_sticky_ena_q);

    // redist28_sync_together238_aunroll_x_in_c0_eni461037_27_tpl_4_mem_last(CONSTANT,397)
    assign redist28_sync_together238_aunroll_x_in_c0_eni461037_27_tpl_4_mem_last_q = $unsigned(2'b01);

    // redist28_sync_together238_aunroll_x_in_c0_eni461037_27_tpl_4_cmp(LOGICAL,398)
    assign redist28_sync_together238_aunroll_x_in_c0_eni461037_27_tpl_4_cmp_q = $unsigned(redist28_sync_together238_aunroll_x_in_c0_eni461037_27_tpl_4_mem_last_q == redist28_sync_together238_aunroll_x_in_c0_eni461037_27_tpl_4_rdcnt_q ? 1'b1 : 1'b0);

    // redist28_sync_together238_aunroll_x_in_c0_eni461037_27_tpl_4_cmpReg(REG,399)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist28_sync_together238_aunroll_x_in_c0_eni461037_27_tpl_4_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist28_sync_together238_aunroll_x_in_c0_eni461037_27_tpl_4_cmpReg_q <= $unsigned(redist28_sync_together238_aunroll_x_in_c0_eni461037_27_tpl_4_cmp_q);
        end
    end

    // redist28_sync_together238_aunroll_x_in_c0_eni461037_27_tpl_4_sticky_ena(REG,402)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist28_sync_together238_aunroll_x_in_c0_eni461037_27_tpl_4_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist28_sync_together238_aunroll_x_in_c0_eni461037_27_tpl_4_nor_q == 1'b1)
        begin
            redist28_sync_together238_aunroll_x_in_c0_eni461037_27_tpl_4_sticky_ena_q <= $unsigned(redist28_sync_together238_aunroll_x_in_c0_eni461037_27_tpl_4_cmpReg_q);
        end
    end

    // redist28_sync_together238_aunroll_x_in_c0_eni461037_27_tpl_4_enaAnd(LOGICAL,403)
    assign redist28_sync_together238_aunroll_x_in_c0_eni461037_27_tpl_4_enaAnd_q = redist28_sync_together238_aunroll_x_in_c0_eni461037_27_tpl_4_sticky_ena_q & VCC_q;

    // redist28_sync_together238_aunroll_x_in_c0_eni461037_27_tpl_4_rdcnt(COUNTER,395)
    // low=0, high=2, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist28_sync_together238_aunroll_x_in_c0_eni461037_27_tpl_4_rdcnt_i <= 2'd0;
            redist28_sync_together238_aunroll_x_in_c0_eni461037_27_tpl_4_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist28_sync_together238_aunroll_x_in_c0_eni461037_27_tpl_4_rdcnt_i == 2'd1)
            begin
                redist28_sync_together238_aunroll_x_in_c0_eni461037_27_tpl_4_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist28_sync_together238_aunroll_x_in_c0_eni461037_27_tpl_4_rdcnt_eq <= 1'b0;
            end
            if (redist28_sync_together238_aunroll_x_in_c0_eni461037_27_tpl_4_rdcnt_eq == 1'b1)
            begin
                redist28_sync_together238_aunroll_x_in_c0_eni461037_27_tpl_4_rdcnt_i <= $unsigned(redist28_sync_together238_aunroll_x_in_c0_eni461037_27_tpl_4_rdcnt_i) + $unsigned(2'd2);
            end
            else
            begin
                redist28_sync_together238_aunroll_x_in_c0_eni461037_27_tpl_4_rdcnt_i <= $unsigned(redist28_sync_together238_aunroll_x_in_c0_eni461037_27_tpl_4_rdcnt_i) + $unsigned(2'd1);
            end
        end
    end
    assign redist28_sync_together238_aunroll_x_in_c0_eni461037_27_tpl_4_rdcnt_q = redist28_sync_together238_aunroll_x_in_c0_eni461037_27_tpl_4_rdcnt_i[1:0];

    // redist28_sync_together238_aunroll_x_in_c0_eni461037_27_tpl_4_wraddr(REG,396)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist28_sync_together238_aunroll_x_in_c0_eni461037_27_tpl_4_wraddr_q <= $unsigned(2'b10);
        end
        else
        begin
            redist28_sync_together238_aunroll_x_in_c0_eni461037_27_tpl_4_wraddr_q <= $unsigned(redist28_sync_together238_aunroll_x_in_c0_eni461037_27_tpl_4_rdcnt_q);
        end
    end

    // redist28_sync_together238_aunroll_x_in_c0_eni461037_27_tpl_4_mem(DUALMEM,394)
    assign redist28_sync_together238_aunroll_x_in_c0_eni461037_27_tpl_4_mem_ia = $unsigned(in_c0_eni461037_27_tpl);
    assign redist28_sync_together238_aunroll_x_in_c0_eni461037_27_tpl_4_mem_aa = redist28_sync_together238_aunroll_x_in_c0_eni461037_27_tpl_4_wraddr_q;
    assign redist28_sync_together238_aunroll_x_in_c0_eni461037_27_tpl_4_mem_ab = redist28_sync_together238_aunroll_x_in_c0_eni461037_27_tpl_4_rdcnt_q;
    assign redist28_sync_together238_aunroll_x_in_c0_eni461037_27_tpl_4_mem_reset0 = ~ (resetn);
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
    ) redist28_sync_together238_aunroll_x_in_c0_eni461037_27_tpl_4_mem_dmem (
        .clocken1(redist28_sync_together238_aunroll_x_in_c0_eni461037_27_tpl_4_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist28_sync_together238_aunroll_x_in_c0_eni461037_27_tpl_4_mem_reset0),
        .clock1(clock),
        .address_a(redist28_sync_together238_aunroll_x_in_c0_eni461037_27_tpl_4_mem_aa),
        .data_a(redist28_sync_together238_aunroll_x_in_c0_eni461037_27_tpl_4_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist28_sync_together238_aunroll_x_in_c0_eni461037_27_tpl_4_mem_ab),
        .q_b(redist28_sync_together238_aunroll_x_in_c0_eni461037_27_tpl_4_mem_iq),
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
    assign redist28_sync_together238_aunroll_x_in_c0_eni461037_27_tpl_4_mem_q = redist28_sync_together238_aunroll_x_in_c0_eni461037_27_tpl_4_mem_iq[63:0];

    // valid_fanout_reg54(REG,281)@1 + 1
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

    // valid_fanout_reg55(REG,282)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg55_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg55_q <= $unsigned(redist50_sync_together238_aunroll_x_in_i_valid_3_q);
        end
    end

    // i_llvm_fpga_fanout_i1_keep_going_fanout_adaptor_conv2d3x310(REG,103)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_llvm_fpga_fanout_i1_keep_going_fanout_adaptor_conv2d3x310_q <= $unsigned(1'b0);
        end
        else
        begin
            i_llvm_fpga_fanout_i1_keep_going_fanout_adaptor_conv2d3x310_q <= i_llvm_fpga_pipeline_keep_going_conv2d3x38_out_data_out;
        end
    end

    // i_llvm_fpga_push_i1_push127_conv2d3x399(BLACKBOX,147)@5
    // out out_feedback_out_127@20000000
    // out out_feedback_valid_out_127@20000000
    conv2d3x3_i_llvm_fpga_push_i1_push127_0 thei_llvm_fpga_push_i1_push127_conv2d3x399 (
        .in_data_in(redist69_i_llvm_fpga_pop_i1_pop127_conv2d3x398_out_data_out_3_q),
        .in_feedback_stall_in_127(i_llvm_fpga_pop_i1_pop127_conv2d3x398_out_feedback_stall_out_127),
        .in_keep_going_fanout_adaptor(i_llvm_fpga_fanout_i1_keep_going_fanout_adaptor_conv2d3x310_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg55_q),
        .out_data_out(),
        .out_feedback_out_127(i_llvm_fpga_push_i1_push127_conv2d3x399_out_feedback_out_127),
        .out_feedback_valid_out_127(i_llvm_fpga_push_i1_push127_conv2d3x399_out_feedback_valid_out_127),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_fanout_i1_c0_ene11039_fanout_adaptor1210_conv2d3x32(REG,100)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_llvm_fpga_fanout_i1_c0_ene11039_fanout_adaptor1210_conv2d3x32_q <= $unsigned(1'b0);
        end
        else
        begin
            i_llvm_fpga_fanout_i1_c0_ene11039_fanout_adaptor1210_conv2d3x32_q <= in_c0_eni461037_1_tpl;
        end
    end

    // redist27_sync_together238_aunroll_x_in_c0_eni461037_26_tpl_1(DELAY,339)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist27_sync_together238_aunroll_x_in_c0_eni461037_26_tpl_1_q <= '0;
        end
        else
        begin
            redist27_sync_together238_aunroll_x_in_c0_eni461037_26_tpl_1_q <= $unsigned(in_c0_eni461037_26_tpl);
        end
    end

    // i_llvm_fpga_pop_i1_pop127_conv2d3x398(BLACKBOX,116)@2
    // out out_feedback_stall_out_127@20000000
    conv2d3x3_i_llvm_fpga_pop_i1_pop127_0 thei_llvm_fpga_pop_i1_pop127_conv2d3x398 (
        .in_data_in(redist27_sync_together238_aunroll_x_in_c0_eni461037_26_tpl_1_q),
        .in_dir(i_llvm_fpga_fanout_i1_c0_ene11039_fanout_adaptor1210_conv2d3x32_q),
        .in_feedback_in_127(i_llvm_fpga_push_i1_push127_conv2d3x399_out_feedback_out_127),
        .in_feedback_valid_in_127(i_llvm_fpga_push_i1_push127_conv2d3x399_out_feedback_valid_out_127),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg54_q),
        .out_data_out(i_llvm_fpga_pop_i1_pop127_conv2d3x398_out_data_out),
        .out_feedback_stall_out_127(i_llvm_fpga_pop_i1_pop127_conv2d3x398_out_feedback_stall_out_127),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist69_i_llvm_fpga_pop_i1_pop127_conv2d3x398_out_data_out_3(DELAY,381)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist69_i_llvm_fpga_pop_i1_pop127_conv2d3x398_out_data_out_3_delay_0 <= '0;
            redist69_i_llvm_fpga_pop_i1_pop127_conv2d3x398_out_data_out_3_delay_1 <= '0;
            redist69_i_llvm_fpga_pop_i1_pop127_conv2d3x398_out_data_out_3_q <= '0;
        end
        else
        begin
            redist69_i_llvm_fpga_pop_i1_pop127_conv2d3x398_out_data_out_3_delay_0 <= $unsigned(i_llvm_fpga_pop_i1_pop127_conv2d3x398_out_data_out);
            redist69_i_llvm_fpga_pop_i1_pop127_conv2d3x398_out_data_out_3_delay_1 <= redist69_i_llvm_fpga_pop_i1_pop127_conv2d3x398_out_data_out_3_delay_0;
            redist69_i_llvm_fpga_pop_i1_pop127_conv2d3x398_out_data_out_3_q <= redist69_i_llvm_fpga_pop_i1_pop127_conv2d3x398_out_data_out_3_delay_1;
        end
    end

    // valid_fanout_reg53(REG,280)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg53_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg53_q <= $unsigned(redist50_sync_together238_aunroll_x_in_i_valid_3_q);
        end
    end

    // valid_fanout_reg52(REG,279)@1 + 1
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

    // redist26_sync_together238_aunroll_x_in_c0_eni461037_25_tpl_1(DELAY,338)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist26_sync_together238_aunroll_x_in_c0_eni461037_25_tpl_1_q <= '0;
        end
        else
        begin
            redist26_sync_together238_aunroll_x_in_c0_eni461037_25_tpl_1_q <= $unsigned(in_c0_eni461037_25_tpl);
        end
    end

    // i_llvm_fpga_pop_i32_inc50186_pop126_conv2d3x396(BLACKBOX,123)@2
    // out out_feedback_stall_out_126@20000000
    conv2d3x3_i_llvm_fpga_pop_i32_inc50186_pop126_0 thei_llvm_fpga_pop_i32_inc50186_pop126_conv2d3x396 (
        .in_data_in(redist26_sync_together238_aunroll_x_in_c0_eni461037_25_tpl_1_q),
        .in_dir(i_llvm_fpga_fanout_i1_c0_ene11039_fanout_adaptor1210_conv2d3x32_q),
        .in_feedback_in_126(i_llvm_fpga_push_i32_inc50186_push126_conv2d3x397_out_feedback_out_126),
        .in_feedback_valid_in_126(i_llvm_fpga_push_i32_inc50186_push126_conv2d3x397_out_feedback_valid_out_126),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg52_q),
        .out_data_out(i_llvm_fpga_pop_i32_inc50186_pop126_conv2d3x396_out_data_out),
        .out_feedback_stall_out_126(i_llvm_fpga_pop_i32_inc50186_pop126_conv2d3x396_out_feedback_stall_out_126),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist63_i_llvm_fpga_pop_i32_inc50186_pop126_conv2d3x396_out_data_out_3_notEnable(LOGICAL,516)
    assign redist63_i_llvm_fpga_pop_i32_inc50186_pop126_conv2d3x396_out_data_out_3_notEnable_q = $unsigned(~ (VCC_q));

    // redist63_i_llvm_fpga_pop_i32_inc50186_pop126_conv2d3x396_out_data_out_3_nor(LOGICAL,517)
    assign redist63_i_llvm_fpga_pop_i32_inc50186_pop126_conv2d3x396_out_data_out_3_nor_q = ~ (redist63_i_llvm_fpga_pop_i32_inc50186_pop126_conv2d3x396_out_data_out_3_notEnable_q | redist63_i_llvm_fpga_pop_i32_inc50186_pop126_conv2d3x396_out_data_out_3_sticky_ena_q);

    // redist63_i_llvm_fpga_pop_i32_inc50186_pop126_conv2d3x396_out_data_out_3_cmpReg(REG,515)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist63_i_llvm_fpga_pop_i32_inc50186_pop126_conv2d3x396_out_data_out_3_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist63_i_llvm_fpga_pop_i32_inc50186_pop126_conv2d3x396_out_data_out_3_cmpReg_q <= $unsigned(VCC_q);
        end
    end

    // redist63_i_llvm_fpga_pop_i32_inc50186_pop126_conv2d3x396_out_data_out_3_sticky_ena(REG,518)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist63_i_llvm_fpga_pop_i32_inc50186_pop126_conv2d3x396_out_data_out_3_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist63_i_llvm_fpga_pop_i32_inc50186_pop126_conv2d3x396_out_data_out_3_nor_q == 1'b1)
        begin
            redist63_i_llvm_fpga_pop_i32_inc50186_pop126_conv2d3x396_out_data_out_3_sticky_ena_q <= $unsigned(redist63_i_llvm_fpga_pop_i32_inc50186_pop126_conv2d3x396_out_data_out_3_cmpReg_q);
        end
    end

    // redist63_i_llvm_fpga_pop_i32_inc50186_pop126_conv2d3x396_out_data_out_3_enaAnd(LOGICAL,519)
    assign redist63_i_llvm_fpga_pop_i32_inc50186_pop126_conv2d3x396_out_data_out_3_enaAnd_q = redist63_i_llvm_fpga_pop_i32_inc50186_pop126_conv2d3x396_out_data_out_3_sticky_ena_q & VCC_q;

    // redist63_i_llvm_fpga_pop_i32_inc50186_pop126_conv2d3x396_out_data_out_3_rdcnt(COUNTER,513)
    // low=0, high=1, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist63_i_llvm_fpga_pop_i32_inc50186_pop126_conv2d3x396_out_data_out_3_rdcnt_i <= 1'd0;
        end
        else
        begin
            redist63_i_llvm_fpga_pop_i32_inc50186_pop126_conv2d3x396_out_data_out_3_rdcnt_i <= $unsigned(redist63_i_llvm_fpga_pop_i32_inc50186_pop126_conv2d3x396_out_data_out_3_rdcnt_i) + $unsigned(1'd1);
        end
    end
    assign redist63_i_llvm_fpga_pop_i32_inc50186_pop126_conv2d3x396_out_data_out_3_rdcnt_q = redist63_i_llvm_fpga_pop_i32_inc50186_pop126_conv2d3x396_out_data_out_3_rdcnt_i[0:0];

    // redist63_i_llvm_fpga_pop_i32_inc50186_pop126_conv2d3x396_out_data_out_3_wraddr(REG,514)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist63_i_llvm_fpga_pop_i32_inc50186_pop126_conv2d3x396_out_data_out_3_wraddr_q <= $unsigned(1'b1);
        end
        else
        begin
            redist63_i_llvm_fpga_pop_i32_inc50186_pop126_conv2d3x396_out_data_out_3_wraddr_q <= $unsigned(redist63_i_llvm_fpga_pop_i32_inc50186_pop126_conv2d3x396_out_data_out_3_rdcnt_q);
        end
    end

    // redist63_i_llvm_fpga_pop_i32_inc50186_pop126_conv2d3x396_out_data_out_3_mem(DUALMEM,512)
    assign redist63_i_llvm_fpga_pop_i32_inc50186_pop126_conv2d3x396_out_data_out_3_mem_ia = $unsigned(i_llvm_fpga_pop_i32_inc50186_pop126_conv2d3x396_out_data_out);
    assign redist63_i_llvm_fpga_pop_i32_inc50186_pop126_conv2d3x396_out_data_out_3_mem_aa = redist63_i_llvm_fpga_pop_i32_inc50186_pop126_conv2d3x396_out_data_out_3_wraddr_q;
    assign redist63_i_llvm_fpga_pop_i32_inc50186_pop126_conv2d3x396_out_data_out_3_mem_ab = redist63_i_llvm_fpga_pop_i32_inc50186_pop126_conv2d3x396_out_data_out_3_rdcnt_q;
    assign redist63_i_llvm_fpga_pop_i32_inc50186_pop126_conv2d3x396_out_data_out_3_mem_reset0 = ~ (resetn);
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
    ) redist63_i_llvm_fpga_pop_i32_inc50186_pop126_conv2d3x396_out_data_out_3_mem_dmem (
        .clocken1(redist63_i_llvm_fpga_pop_i32_inc50186_pop126_conv2d3x396_out_data_out_3_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist63_i_llvm_fpga_pop_i32_inc50186_pop126_conv2d3x396_out_data_out_3_mem_reset0),
        .clock1(clock),
        .address_a(redist63_i_llvm_fpga_pop_i32_inc50186_pop126_conv2d3x396_out_data_out_3_mem_aa),
        .data_a(redist63_i_llvm_fpga_pop_i32_inc50186_pop126_conv2d3x396_out_data_out_3_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist63_i_llvm_fpga_pop_i32_inc50186_pop126_conv2d3x396_out_data_out_3_mem_ab),
        .q_b(redist63_i_llvm_fpga_pop_i32_inc50186_pop126_conv2d3x396_out_data_out_3_mem_iq),
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
    assign redist63_i_llvm_fpga_pop_i32_inc50186_pop126_conv2d3x396_out_data_out_3_mem_q = redist63_i_llvm_fpga_pop_i32_inc50186_pop126_conv2d3x396_out_data_out_3_mem_iq[31:0];

    // i_llvm_fpga_push_i32_inc50186_push126_conv2d3x397(BLACKBOX,154)@5
    // out out_feedback_out_126@20000000
    // out out_feedback_valid_out_126@20000000
    conv2d3x3_i_llvm_fpga_push_i32_inc50186_push126_0 thei_llvm_fpga_push_i32_inc50186_push126_conv2d3x397 (
        .in_data_in(redist63_i_llvm_fpga_pop_i32_inc50186_pop126_conv2d3x396_out_data_out_3_mem_q),
        .in_feedback_stall_in_126(i_llvm_fpga_pop_i32_inc50186_pop126_conv2d3x396_out_feedback_stall_out_126),
        .in_keep_going_fanout_adaptor(i_llvm_fpga_fanout_i1_keep_going_fanout_adaptor_conv2d3x310_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg53_q),
        .out_data_out(i_llvm_fpga_push_i32_inc50186_push126_conv2d3x397_out_data_out),
        .out_feedback_out_126(i_llvm_fpga_push_i32_inc50186_push126_conv2d3x397_out_feedback_out_126),
        .out_feedback_valid_out_126(i_llvm_fpga_push_i32_inc50186_push126_conv2d3x397_out_feedback_valid_out_126),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg51(REG,278)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg51_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg51_q <= $unsigned(redist50_sync_together238_aunroll_x_in_i_valid_3_q);
        end
    end

    // valid_fanout_reg50(REG,277)@1 + 1
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

    // redist25_sync_together238_aunroll_x_in_c0_eni461037_24_tpl_1(DELAY,337)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist25_sync_together238_aunroll_x_in_c0_eni461037_24_tpl_1_q <= '0;
        end
        else
        begin
            redist25_sync_together238_aunroll_x_in_c0_eni461037_24_tpl_1_q <= $unsigned(in_c0_eni461037_24_tpl);
        end
    end

    // i_llvm_fpga_pop_i32_j_061_pop24178_pop124_conv2d3x394(BLACKBOX,124)@2
    // out out_feedback_stall_out_124@20000000
    conv2d3x3_i_llvm_fpga_pop_i32_j_061_pop24178_pop124_0 thei_llvm_fpga_pop_i32_j_061_pop24178_pop124_conv2d3x394 (
        .in_data_in(redist25_sync_together238_aunroll_x_in_c0_eni461037_24_tpl_1_q),
        .in_dir(i_llvm_fpga_fanout_i1_c0_ene11039_fanout_adaptor1210_conv2d3x32_q),
        .in_feedback_in_124(i_llvm_fpga_push_i32_j_061_pop24178_push124_conv2d3x395_out_feedback_out_124),
        .in_feedback_valid_in_124(i_llvm_fpga_push_i32_j_061_pop24178_push124_conv2d3x395_out_feedback_valid_out_124),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg50_q),
        .out_data_out(i_llvm_fpga_pop_i32_j_061_pop24178_pop124_conv2d3x394_out_data_out),
        .out_feedback_stall_out_124(i_llvm_fpga_pop_i32_j_061_pop24178_pop124_conv2d3x394_out_feedback_stall_out_124),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i32_j_061_pop24178_push124_conv2d3x395(BLACKBOX,155)@5
    // out out_feedback_out_124@20000000
    // out out_feedback_valid_out_124@20000000
    conv2d3x3_i_llvm_fpga_push_i32_j_061_pop24178_push124_0 thei_llvm_fpga_push_i32_j_061_pop24178_push124_conv2d3x395 (
        .in_data_in(redist62_i_llvm_fpga_pop_i32_j_061_pop24178_pop124_conv2d3x394_out_data_out_3_mem_q),
        .in_feedback_stall_in_124(i_llvm_fpga_pop_i32_j_061_pop24178_pop124_conv2d3x394_out_feedback_stall_out_124),
        .in_keep_going_fanout_adaptor(i_llvm_fpga_fanout_i1_keep_going_fanout_adaptor_conv2d3x310_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg51_q),
        .out_data_out(i_llvm_fpga_push_i32_j_061_pop24178_push124_conv2d3x395_out_data_out),
        .out_feedback_out_124(i_llvm_fpga_push_i32_j_061_pop24178_push124_conv2d3x395_out_feedback_out_124),
        .out_feedback_valid_out_124(i_llvm_fpga_push_i32_j_061_pop24178_push124_conv2d3x395_out_feedback_valid_out_124),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist62_i_llvm_fpga_pop_i32_j_061_pop24178_pop124_conv2d3x394_out_data_out_3_notEnable(LOGICAL,508)
    assign redist62_i_llvm_fpga_pop_i32_j_061_pop24178_pop124_conv2d3x394_out_data_out_3_notEnable_q = $unsigned(~ (VCC_q));

    // redist62_i_llvm_fpga_pop_i32_j_061_pop24178_pop124_conv2d3x394_out_data_out_3_nor(LOGICAL,509)
    assign redist62_i_llvm_fpga_pop_i32_j_061_pop24178_pop124_conv2d3x394_out_data_out_3_nor_q = ~ (redist62_i_llvm_fpga_pop_i32_j_061_pop24178_pop124_conv2d3x394_out_data_out_3_notEnable_q | redist62_i_llvm_fpga_pop_i32_j_061_pop24178_pop124_conv2d3x394_out_data_out_3_sticky_ena_q);

    // redist62_i_llvm_fpga_pop_i32_j_061_pop24178_pop124_conv2d3x394_out_data_out_3_cmpReg(REG,507)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist62_i_llvm_fpga_pop_i32_j_061_pop24178_pop124_conv2d3x394_out_data_out_3_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist62_i_llvm_fpga_pop_i32_j_061_pop24178_pop124_conv2d3x394_out_data_out_3_cmpReg_q <= $unsigned(VCC_q);
        end
    end

    // redist62_i_llvm_fpga_pop_i32_j_061_pop24178_pop124_conv2d3x394_out_data_out_3_sticky_ena(REG,510)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist62_i_llvm_fpga_pop_i32_j_061_pop24178_pop124_conv2d3x394_out_data_out_3_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist62_i_llvm_fpga_pop_i32_j_061_pop24178_pop124_conv2d3x394_out_data_out_3_nor_q == 1'b1)
        begin
            redist62_i_llvm_fpga_pop_i32_j_061_pop24178_pop124_conv2d3x394_out_data_out_3_sticky_ena_q <= $unsigned(redist62_i_llvm_fpga_pop_i32_j_061_pop24178_pop124_conv2d3x394_out_data_out_3_cmpReg_q);
        end
    end

    // redist62_i_llvm_fpga_pop_i32_j_061_pop24178_pop124_conv2d3x394_out_data_out_3_enaAnd(LOGICAL,511)
    assign redist62_i_llvm_fpga_pop_i32_j_061_pop24178_pop124_conv2d3x394_out_data_out_3_enaAnd_q = redist62_i_llvm_fpga_pop_i32_j_061_pop24178_pop124_conv2d3x394_out_data_out_3_sticky_ena_q & VCC_q;

    // redist62_i_llvm_fpga_pop_i32_j_061_pop24178_pop124_conv2d3x394_out_data_out_3_rdcnt(COUNTER,505)
    // low=0, high=1, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist62_i_llvm_fpga_pop_i32_j_061_pop24178_pop124_conv2d3x394_out_data_out_3_rdcnt_i <= 1'd0;
        end
        else
        begin
            redist62_i_llvm_fpga_pop_i32_j_061_pop24178_pop124_conv2d3x394_out_data_out_3_rdcnt_i <= $unsigned(redist62_i_llvm_fpga_pop_i32_j_061_pop24178_pop124_conv2d3x394_out_data_out_3_rdcnt_i) + $unsigned(1'd1);
        end
    end
    assign redist62_i_llvm_fpga_pop_i32_j_061_pop24178_pop124_conv2d3x394_out_data_out_3_rdcnt_q = redist62_i_llvm_fpga_pop_i32_j_061_pop24178_pop124_conv2d3x394_out_data_out_3_rdcnt_i[0:0];

    // redist62_i_llvm_fpga_pop_i32_j_061_pop24178_pop124_conv2d3x394_out_data_out_3_wraddr(REG,506)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist62_i_llvm_fpga_pop_i32_j_061_pop24178_pop124_conv2d3x394_out_data_out_3_wraddr_q <= $unsigned(1'b1);
        end
        else
        begin
            redist62_i_llvm_fpga_pop_i32_j_061_pop24178_pop124_conv2d3x394_out_data_out_3_wraddr_q <= $unsigned(redist62_i_llvm_fpga_pop_i32_j_061_pop24178_pop124_conv2d3x394_out_data_out_3_rdcnt_q);
        end
    end

    // redist62_i_llvm_fpga_pop_i32_j_061_pop24178_pop124_conv2d3x394_out_data_out_3_mem(DUALMEM,504)
    assign redist62_i_llvm_fpga_pop_i32_j_061_pop24178_pop124_conv2d3x394_out_data_out_3_mem_ia = $unsigned(i_llvm_fpga_pop_i32_j_061_pop24178_pop124_conv2d3x394_out_data_out);
    assign redist62_i_llvm_fpga_pop_i32_j_061_pop24178_pop124_conv2d3x394_out_data_out_3_mem_aa = redist62_i_llvm_fpga_pop_i32_j_061_pop24178_pop124_conv2d3x394_out_data_out_3_wraddr_q;
    assign redist62_i_llvm_fpga_pop_i32_j_061_pop24178_pop124_conv2d3x394_out_data_out_3_mem_ab = redist62_i_llvm_fpga_pop_i32_j_061_pop24178_pop124_conv2d3x394_out_data_out_3_rdcnt_q;
    assign redist62_i_llvm_fpga_pop_i32_j_061_pop24178_pop124_conv2d3x394_out_data_out_3_mem_reset0 = ~ (resetn);
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
    ) redist62_i_llvm_fpga_pop_i32_j_061_pop24178_pop124_conv2d3x394_out_data_out_3_mem_dmem (
        .clocken1(redist62_i_llvm_fpga_pop_i32_j_061_pop24178_pop124_conv2d3x394_out_data_out_3_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist62_i_llvm_fpga_pop_i32_j_061_pop24178_pop124_conv2d3x394_out_data_out_3_mem_reset0),
        .clock1(clock),
        .address_a(redist62_i_llvm_fpga_pop_i32_j_061_pop24178_pop124_conv2d3x394_out_data_out_3_mem_aa),
        .data_a(redist62_i_llvm_fpga_pop_i32_j_061_pop24178_pop124_conv2d3x394_out_data_out_3_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist62_i_llvm_fpga_pop_i32_j_061_pop24178_pop124_conv2d3x394_out_data_out_3_mem_ab),
        .q_b(redist62_i_llvm_fpga_pop_i32_j_061_pop24178_pop124_conv2d3x394_out_data_out_3_mem_iq),
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
    assign redist62_i_llvm_fpga_pop_i32_j_061_pop24178_pop124_conv2d3x394_out_data_out_3_mem_q = redist62_i_llvm_fpga_pop_i32_j_061_pop24178_pop124_conv2d3x394_out_data_out_3_mem_iq[31:0];

    // valid_fanout_reg49(REG,276)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg49_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg49_q <= $unsigned(redist50_sync_together238_aunroll_x_in_i_valid_3_q);
        end
    end

    // valid_fanout_reg48(REG,275)@1 + 1
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

    // redist24_sync_together238_aunroll_x_in_c0_eni461037_23_tpl_1(DELAY,336)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist24_sync_together238_aunroll_x_in_c0_eni461037_23_tpl_1_q <= '0;
        end
        else
        begin
            redist24_sync_together238_aunroll_x_in_c0_eni461037_23_tpl_1_q <= $unsigned(in_c0_eni461037_23_tpl);
        end
    end

    // i_llvm_fpga_pop_i1_notcmp73174_pop123_conv2d3x392(BLACKBOX,112)@2
    // out out_feedback_stall_out_123@20000000
    conv2d3x3_i_llvm_fpga_pop_i1_notcmp73174_pop123_0 thei_llvm_fpga_pop_i1_notcmp73174_pop123_conv2d3x392 (
        .in_data_in(redist24_sync_together238_aunroll_x_in_c0_eni461037_23_tpl_1_q),
        .in_dir(i_llvm_fpga_fanout_i1_c0_ene11039_fanout_adaptor1210_conv2d3x32_q),
        .in_feedback_in_123(i_llvm_fpga_push_i1_notcmp73174_push123_conv2d3x393_out_feedback_out_123),
        .in_feedback_valid_in_123(i_llvm_fpga_push_i1_notcmp73174_push123_conv2d3x393_out_feedback_valid_out_123),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg48_q),
        .out_data_out(i_llvm_fpga_pop_i1_notcmp73174_pop123_conv2d3x392_out_data_out),
        .out_feedback_stall_out_123(i_llvm_fpga_pop_i1_notcmp73174_pop123_conv2d3x392_out_feedback_stall_out_123),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i1_notcmp73174_push123_conv2d3x393(BLACKBOX,142)@5
    // out out_feedback_out_123@20000000
    // out out_feedback_valid_out_123@20000000
    conv2d3x3_i_llvm_fpga_push_i1_notcmp73174_push123_0 thei_llvm_fpga_push_i1_notcmp73174_push123_conv2d3x393 (
        .in_data_in(redist73_i_llvm_fpga_pop_i1_notcmp73174_pop123_conv2d3x392_out_data_out_3_q),
        .in_feedback_stall_in_123(i_llvm_fpga_pop_i1_notcmp73174_pop123_conv2d3x392_out_feedback_stall_out_123),
        .in_keep_going_fanout_adaptor(i_llvm_fpga_fanout_i1_keep_going_fanout_adaptor_conv2d3x310_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg49_q),
        .out_data_out(i_llvm_fpga_push_i1_notcmp73174_push123_conv2d3x393_out_data_out),
        .out_feedback_out_123(i_llvm_fpga_push_i1_notcmp73174_push123_conv2d3x393_out_feedback_out_123),
        .out_feedback_valid_out_123(i_llvm_fpga_push_i1_notcmp73174_push123_conv2d3x393_out_feedback_valid_out_123),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist73_i_llvm_fpga_pop_i1_notcmp73174_pop123_conv2d3x392_out_data_out_3(DELAY,385)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist73_i_llvm_fpga_pop_i1_notcmp73174_pop123_conv2d3x392_out_data_out_3_delay_0 <= '0;
            redist73_i_llvm_fpga_pop_i1_notcmp73174_pop123_conv2d3x392_out_data_out_3_delay_1 <= '0;
            redist73_i_llvm_fpga_pop_i1_notcmp73174_pop123_conv2d3x392_out_data_out_3_q <= '0;
        end
        else
        begin
            redist73_i_llvm_fpga_pop_i1_notcmp73174_pop123_conv2d3x392_out_data_out_3_delay_0 <= $unsigned(i_llvm_fpga_pop_i1_notcmp73174_pop123_conv2d3x392_out_data_out);
            redist73_i_llvm_fpga_pop_i1_notcmp73174_pop123_conv2d3x392_out_data_out_3_delay_1 <= redist73_i_llvm_fpga_pop_i1_notcmp73174_pop123_conv2d3x392_out_data_out_3_delay_0;
            redist73_i_llvm_fpga_pop_i1_notcmp73174_pop123_conv2d3x392_out_data_out_3_q <= redist73_i_llvm_fpga_pop_i1_notcmp73174_pop123_conv2d3x392_out_data_out_3_delay_1;
        end
    end

    // valid_fanout_reg47(REG,274)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg47_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg47_q <= $unsigned(redist50_sync_together238_aunroll_x_in_i_valid_3_q);
        end
    end

    // valid_fanout_reg46(REG,273)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg46_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg46_q <= $unsigned(redist48_sync_together238_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_fanout_i1_c0_ene11039_fanout_adaptor_conv2d3x33(REG,101)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_llvm_fpga_fanout_i1_c0_ene11039_fanout_adaptor_conv2d3x33_q <= $unsigned(1'b0);
        end
        else
        begin
            i_llvm_fpga_fanout_i1_c0_ene11039_fanout_adaptor_conv2d3x33_q <= redist0_sync_together238_aunroll_x_in_c0_eni461037_1_tpl_1_q;
        end
    end

    // redist23_sync_together238_aunroll_x_in_c0_eni461037_22_tpl_2(DELAY,335)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist23_sync_together238_aunroll_x_in_c0_eni461037_22_tpl_2_delay_0 <= '0;
            redist23_sync_together238_aunroll_x_in_c0_eni461037_22_tpl_2_q <= '0;
        end
        else
        begin
            redist23_sync_together238_aunroll_x_in_c0_eni461037_22_tpl_2_delay_0 <= $unsigned(in_c0_eni461037_22_tpl);
            redist23_sync_together238_aunroll_x_in_c0_eni461037_22_tpl_2_q <= redist23_sync_together238_aunroll_x_in_c0_eni461037_22_tpl_2_delay_0;
        end
    end

    // i_llvm_fpga_pop_i32_pad_sync_buffer170_pop122_conv2d3x390(BLACKBOX,127)@3
    // out out_feedback_stall_out_122@20000000
    conv2d3x3_i_llvm_fpga_pop_i32_pad_sync_buffer170_pop122_0 thei_llvm_fpga_pop_i32_pad_sync_buffer170_pop122_conv2d3x390 (
        .in_data_in(redist23_sync_together238_aunroll_x_in_c0_eni461037_22_tpl_2_q),
        .in_dir(i_llvm_fpga_fanout_i1_c0_ene11039_fanout_adaptor_conv2d3x33_q),
        .in_feedback_in_122(i_llvm_fpga_push_i32_pad_sync_buffer170_push122_conv2d3x391_out_feedback_out_122),
        .in_feedback_valid_in_122(i_llvm_fpga_push_i32_pad_sync_buffer170_push122_conv2d3x391_out_feedback_valid_out_122),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg46_q),
        .out_data_out(i_llvm_fpga_pop_i32_pad_sync_buffer170_pop122_conv2d3x390_out_data_out),
        .out_feedback_stall_out_122(i_llvm_fpga_pop_i32_pad_sync_buffer170_pop122_conv2d3x390_out_feedback_stall_out_122),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist58_i_llvm_fpga_pop_i32_pad_sync_buffer170_pop122_conv2d3x390_out_data_out_2(DELAY,370)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist58_i_llvm_fpga_pop_i32_pad_sync_buffer170_pop122_conv2d3x390_out_data_out_2_delay_0 <= '0;
            redist58_i_llvm_fpga_pop_i32_pad_sync_buffer170_pop122_conv2d3x390_out_data_out_2_q <= '0;
        end
        else
        begin
            redist58_i_llvm_fpga_pop_i32_pad_sync_buffer170_pop122_conv2d3x390_out_data_out_2_delay_0 <= $unsigned(i_llvm_fpga_pop_i32_pad_sync_buffer170_pop122_conv2d3x390_out_data_out);
            redist58_i_llvm_fpga_pop_i32_pad_sync_buffer170_pop122_conv2d3x390_out_data_out_2_q <= redist58_i_llvm_fpga_pop_i32_pad_sync_buffer170_pop122_conv2d3x390_out_data_out_2_delay_0;
        end
    end

    // i_llvm_fpga_push_i32_pad_sync_buffer170_push122_conv2d3x391(BLACKBOX,158)@5
    // out out_feedback_out_122@20000000
    // out out_feedback_valid_out_122@20000000
    conv2d3x3_i_llvm_fpga_push_i32_pad_sync_buffer170_push122_0 thei_llvm_fpga_push_i32_pad_sync_buffer170_push122_conv2d3x391 (
        .in_data_in(redist58_i_llvm_fpga_pop_i32_pad_sync_buffer170_pop122_conv2d3x390_out_data_out_2_q),
        .in_feedback_stall_in_122(i_llvm_fpga_pop_i32_pad_sync_buffer170_pop122_conv2d3x390_out_feedback_stall_out_122),
        .in_keep_going_fanout_adaptor(i_llvm_fpga_fanout_i1_keep_going_fanout_adaptor_conv2d3x310_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg47_q),
        .out_data_out(i_llvm_fpga_push_i32_pad_sync_buffer170_push122_conv2d3x391_out_data_out),
        .out_feedback_out_122(i_llvm_fpga_push_i32_pad_sync_buffer170_push122_conv2d3x391_out_feedback_out_122),
        .out_feedback_valid_out_122(i_llvm_fpga_push_i32_pad_sync_buffer170_push122_conv2d3x391_out_feedback_valid_out_122),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg45(REG,272)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg45_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg45_q <= $unsigned(redist50_sync_together238_aunroll_x_in_i_valid_3_q);
        end
    end

    // valid_fanout_reg44(REG,271)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg44_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg44_q <= $unsigned(redist48_sync_together238_aunroll_x_in_i_valid_1_q);
        end
    end

    // redist22_sync_together238_aunroll_x_in_c0_eni461037_21_tpl_2(DELAY,334)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist22_sync_together238_aunroll_x_in_c0_eni461037_21_tpl_2_delay_0 <= '0;
            redist22_sync_together238_aunroll_x_in_c0_eni461037_21_tpl_2_q <= '0;
        end
        else
        begin
            redist22_sync_together238_aunroll_x_in_c0_eni461037_21_tpl_2_delay_0 <= $unsigned(in_c0_eni461037_21_tpl);
            redist22_sync_together238_aunroll_x_in_c0_eni461037_21_tpl_2_q <= redist22_sync_together238_aunroll_x_in_c0_eni461037_21_tpl_2_delay_0;
        end
    end

    // i_llvm_fpga_pop_i32_stride_sync_buffer166_pop121_conv2d3x388(BLACKBOX,128)@3
    // out out_feedback_stall_out_121@20000000
    conv2d3x3_i_llvm_fpga_pop_i32_stride_sync_buffer166_pop121_0 thei_llvm_fpga_pop_i32_stride_sync_buffer166_pop121_conv2d3x388 (
        .in_data_in(redist22_sync_together238_aunroll_x_in_c0_eni461037_21_tpl_2_q),
        .in_dir(i_llvm_fpga_fanout_i1_c0_ene11039_fanout_adaptor_conv2d3x33_q),
        .in_feedback_in_121(i_llvm_fpga_push_i32_stride_sync_buffer166_push121_conv2d3x389_out_feedback_out_121),
        .in_feedback_valid_in_121(i_llvm_fpga_push_i32_stride_sync_buffer166_push121_conv2d3x389_out_feedback_valid_out_121),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg44_q),
        .out_data_out(i_llvm_fpga_pop_i32_stride_sync_buffer166_pop121_conv2d3x388_out_data_out),
        .out_feedback_stall_out_121(i_llvm_fpga_pop_i32_stride_sync_buffer166_pop121_conv2d3x388_out_feedback_stall_out_121),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist57_i_llvm_fpga_pop_i32_stride_sync_buffer166_pop121_conv2d3x388_out_data_out_2(DELAY,369)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist57_i_llvm_fpga_pop_i32_stride_sync_buffer166_pop121_conv2d3x388_out_data_out_2_delay_0 <= '0;
            redist57_i_llvm_fpga_pop_i32_stride_sync_buffer166_pop121_conv2d3x388_out_data_out_2_q <= '0;
        end
        else
        begin
            redist57_i_llvm_fpga_pop_i32_stride_sync_buffer166_pop121_conv2d3x388_out_data_out_2_delay_0 <= $unsigned(i_llvm_fpga_pop_i32_stride_sync_buffer166_pop121_conv2d3x388_out_data_out);
            redist57_i_llvm_fpga_pop_i32_stride_sync_buffer166_pop121_conv2d3x388_out_data_out_2_q <= redist57_i_llvm_fpga_pop_i32_stride_sync_buffer166_pop121_conv2d3x388_out_data_out_2_delay_0;
        end
    end

    // i_llvm_fpga_push_i32_stride_sync_buffer166_push121_conv2d3x389(BLACKBOX,159)@5
    // out out_feedback_out_121@20000000
    // out out_feedback_valid_out_121@20000000
    conv2d3x3_i_llvm_fpga_push_i32_stride_sync_buffer166_push121_0 thei_llvm_fpga_push_i32_stride_sync_buffer166_push121_conv2d3x389 (
        .in_data_in(redist57_i_llvm_fpga_pop_i32_stride_sync_buffer166_pop121_conv2d3x388_out_data_out_2_q),
        .in_feedback_stall_in_121(i_llvm_fpga_pop_i32_stride_sync_buffer166_pop121_conv2d3x388_out_feedback_stall_out_121),
        .in_keep_going_fanout_adaptor(i_llvm_fpga_fanout_i1_keep_going_fanout_adaptor_conv2d3x310_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg45_q),
        .out_data_out(i_llvm_fpga_push_i32_stride_sync_buffer166_push121_conv2d3x389_out_data_out),
        .out_feedback_out_121(i_llvm_fpga_push_i32_stride_sync_buffer166_push121_conv2d3x389_out_feedback_out_121),
        .out_feedback_valid_out_121(i_llvm_fpga_push_i32_stride_sync_buffer166_push121_conv2d3x389_out_feedback_valid_out_121),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg43(REG,270)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg43_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg43_q <= $unsigned(redist50_sync_together238_aunroll_x_in_i_valid_3_q);
        end
    end

    // valid_fanout_reg42(REG,269)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg42_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg42_q <= $unsigned(redist48_sync_together238_aunroll_x_in_i_valid_1_q);
        end
    end

    // redist21_sync_together238_aunroll_x_in_c0_eni461037_20_tpl_2(DELAY,333)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist21_sync_together238_aunroll_x_in_c0_eni461037_20_tpl_2_delay_0 <= '0;
            redist21_sync_together238_aunroll_x_in_c0_eni461037_20_tpl_2_q <= '0;
        end
        else
        begin
            redist21_sync_together238_aunroll_x_in_c0_eni461037_20_tpl_2_delay_0 <= $unsigned(in_c0_eni461037_20_tpl);
            redist21_sync_together238_aunroll_x_in_c0_eni461037_20_tpl_2_q <= redist21_sync_together238_aunroll_x_in_c0_eni461037_20_tpl_2_delay_0;
        end
    end

    // i_llvm_fpga_pop_i1_notcmp77163_pop120_conv2d3x386(BLACKBOX,113)@3
    // out out_feedback_stall_out_120@20000000
    conv2d3x3_i_llvm_fpga_pop_i1_notcmp77163_pop120_0 thei_llvm_fpga_pop_i1_notcmp77163_pop120_conv2d3x386 (
        .in_data_in(redist21_sync_together238_aunroll_x_in_c0_eni461037_20_tpl_2_q),
        .in_dir(i_llvm_fpga_fanout_i1_c0_ene11039_fanout_adaptor_conv2d3x33_q),
        .in_feedback_in_120(i_llvm_fpga_push_i1_notcmp77163_push120_conv2d3x387_out_feedback_out_120),
        .in_feedback_valid_in_120(i_llvm_fpga_push_i1_notcmp77163_push120_conv2d3x387_out_feedback_valid_out_120),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg42_q),
        .out_data_out(i_llvm_fpga_pop_i1_notcmp77163_pop120_conv2d3x386_out_data_out),
        .out_feedback_stall_out_120(i_llvm_fpga_pop_i1_notcmp77163_pop120_conv2d3x386_out_feedback_stall_out_120),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i1_notcmp77163_push120_conv2d3x387(BLACKBOX,143)@5
    // out out_feedback_out_120@20000000
    // out out_feedback_valid_out_120@20000000
    conv2d3x3_i_llvm_fpga_push_i1_notcmp77163_push120_0 thei_llvm_fpga_push_i1_notcmp77163_push120_conv2d3x387 (
        .in_data_in(redist72_i_llvm_fpga_pop_i1_notcmp77163_pop120_conv2d3x386_out_data_out_2_q),
        .in_feedback_stall_in_120(i_llvm_fpga_pop_i1_notcmp77163_pop120_conv2d3x386_out_feedback_stall_out_120),
        .in_keep_going_fanout_adaptor(i_llvm_fpga_fanout_i1_keep_going_fanout_adaptor_conv2d3x310_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg43_q),
        .out_data_out(i_llvm_fpga_push_i1_notcmp77163_push120_conv2d3x387_out_data_out),
        .out_feedback_out_120(i_llvm_fpga_push_i1_notcmp77163_push120_conv2d3x387_out_feedback_out_120),
        .out_feedback_valid_out_120(i_llvm_fpga_push_i1_notcmp77163_push120_conv2d3x387_out_feedback_valid_out_120),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist72_i_llvm_fpga_pop_i1_notcmp77163_pop120_conv2d3x386_out_data_out_2(DELAY,384)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist72_i_llvm_fpga_pop_i1_notcmp77163_pop120_conv2d3x386_out_data_out_2_delay_0 <= '0;
            redist72_i_llvm_fpga_pop_i1_notcmp77163_pop120_conv2d3x386_out_data_out_2_q <= '0;
        end
        else
        begin
            redist72_i_llvm_fpga_pop_i1_notcmp77163_pop120_conv2d3x386_out_data_out_2_delay_0 <= $unsigned(i_llvm_fpga_pop_i1_notcmp77163_pop120_conv2d3x386_out_data_out);
            redist72_i_llvm_fpga_pop_i1_notcmp77163_pop120_conv2d3x386_out_data_out_2_q <= redist72_i_llvm_fpga_pop_i1_notcmp77163_pop120_conv2d3x386_out_data_out_2_delay_0;
        end
    end

    // valid_fanout_reg41(REG,268)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg41_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg41_q <= $unsigned(redist50_sync_together238_aunroll_x_in_i_valid_3_q);
        end
    end

    // valid_fanout_reg40(REG,267)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg40_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg40_q <= $unsigned(redist48_sync_together238_aunroll_x_in_i_valid_1_q);
        end
    end

    // redist20_sync_together238_aunroll_x_in_c0_eni461037_19_tpl_2(DELAY,332)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist20_sync_together238_aunroll_x_in_c0_eni461037_19_tpl_2_delay_0 <= '0;
            redist20_sync_together238_aunroll_x_in_c0_eni461037_19_tpl_2_q <= '0;
        end
        else
        begin
            redist20_sync_together238_aunroll_x_in_c0_eni461037_19_tpl_2_delay_0 <= $unsigned(in_c0_eni461037_19_tpl);
            redist20_sync_together238_aunroll_x_in_c0_eni461037_19_tpl_2_q <= redist20_sync_together238_aunroll_x_in_c0_eni461037_19_tpl_2_delay_0;
        end
    end

    // i_llvm_fpga_pop_i32_sub_2148_pop117_conv2d3x384(BLACKBOX,130)@3
    // out out_feedback_stall_out_117@20000000
    conv2d3x3_i_llvm_fpga_pop_i32_sub_2148_pop117_0 thei_llvm_fpga_pop_i32_sub_2148_pop117_conv2d3x384 (
        .in_data_in(redist20_sync_together238_aunroll_x_in_c0_eni461037_19_tpl_2_q),
        .in_dir(i_llvm_fpga_fanout_i1_c0_ene11039_fanout_adaptor_conv2d3x33_q),
        .in_feedback_in_117(i_llvm_fpga_push_i32_sub_2148_push117_conv2d3x385_out_feedback_out_117),
        .in_feedback_valid_in_117(i_llvm_fpga_push_i32_sub_2148_push117_conv2d3x385_out_feedback_valid_out_117),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg40_q),
        .out_data_out(i_llvm_fpga_pop_i32_sub_2148_pop117_conv2d3x384_out_data_out),
        .out_feedback_stall_out_117(i_llvm_fpga_pop_i32_sub_2148_pop117_conv2d3x384_out_feedback_stall_out_117),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist55_i_llvm_fpga_pop_i32_sub_2148_pop117_conv2d3x384_out_data_out_2(DELAY,367)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist55_i_llvm_fpga_pop_i32_sub_2148_pop117_conv2d3x384_out_data_out_2_delay_0 <= '0;
            redist55_i_llvm_fpga_pop_i32_sub_2148_pop117_conv2d3x384_out_data_out_2_q <= '0;
        end
        else
        begin
            redist55_i_llvm_fpga_pop_i32_sub_2148_pop117_conv2d3x384_out_data_out_2_delay_0 <= $unsigned(i_llvm_fpga_pop_i32_sub_2148_pop117_conv2d3x384_out_data_out);
            redist55_i_llvm_fpga_pop_i32_sub_2148_pop117_conv2d3x384_out_data_out_2_q <= redist55_i_llvm_fpga_pop_i32_sub_2148_pop117_conv2d3x384_out_data_out_2_delay_0;
        end
    end

    // i_llvm_fpga_push_i32_sub_2148_push117_conv2d3x385(BLACKBOX,161)@5
    // out out_feedback_out_117@20000000
    // out out_feedback_valid_out_117@20000000
    conv2d3x3_i_llvm_fpga_push_i32_sub_2148_push117_0 thei_llvm_fpga_push_i32_sub_2148_push117_conv2d3x385 (
        .in_data_in(redist55_i_llvm_fpga_pop_i32_sub_2148_pop117_conv2d3x384_out_data_out_2_q),
        .in_feedback_stall_in_117(i_llvm_fpga_pop_i32_sub_2148_pop117_conv2d3x384_out_feedback_stall_out_117),
        .in_keep_going_fanout_adaptor(i_llvm_fpga_fanout_i1_keep_going_fanout_adaptor_conv2d3x310_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg41_q),
        .out_data_out(i_llvm_fpga_push_i32_sub_2148_push117_conv2d3x385_out_data_out),
        .out_feedback_out_117(i_llvm_fpga_push_i32_sub_2148_push117_conv2d3x385_out_feedback_out_117),
        .out_feedback_valid_out_117(i_llvm_fpga_push_i32_sub_2148_push117_conv2d3x385_out_feedback_valid_out_117),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg39(REG,266)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg39_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg39_q <= $unsigned(redist50_sync_together238_aunroll_x_in_i_valid_3_q);
        end
    end

    // valid_fanout_reg38(REG,265)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg38_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg38_q <= $unsigned(redist48_sync_together238_aunroll_x_in_i_valid_1_q);
        end
    end

    // redist19_sync_together238_aunroll_x_in_c0_eni461037_18_tpl_2(DELAY,331)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist19_sync_together238_aunroll_x_in_c0_eni461037_18_tpl_2_delay_0 <= '0;
            redist19_sync_together238_aunroll_x_in_c0_eni461037_18_tpl_2_q <= '0;
        end
        else
        begin
            redist19_sync_together238_aunroll_x_in_c0_eni461037_18_tpl_2_delay_0 <= $unsigned(in_c0_eni461037_18_tpl);
            redist19_sync_together238_aunroll_x_in_c0_eni461037_18_tpl_2_q <= redist19_sync_together238_aunroll_x_in_c0_eni461037_18_tpl_2_delay_0;
        end
    end

    // i_llvm_fpga_pop_i1_cmp27_1143_pop116_conv2d3x382(BLACKBOX,110)@3
    // out out_feedback_stall_out_116@20000000
    conv2d3x3_i_llvm_fpga_pop_i1_cmp27_1143_pop116_0 thei_llvm_fpga_pop_i1_cmp27_1143_pop116_conv2d3x382 (
        .in_data_in(redist19_sync_together238_aunroll_x_in_c0_eni461037_18_tpl_2_q),
        .in_dir(i_llvm_fpga_fanout_i1_c0_ene11039_fanout_adaptor_conv2d3x33_q),
        .in_feedback_in_116(i_llvm_fpga_push_i1_cmp27_1143_push116_conv2d3x383_out_feedback_out_116),
        .in_feedback_valid_in_116(i_llvm_fpga_push_i1_cmp27_1143_push116_conv2d3x383_out_feedback_valid_out_116),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg38_q),
        .out_data_out(i_llvm_fpga_pop_i1_cmp27_1143_pop116_conv2d3x382_out_data_out),
        .out_feedback_stall_out_116(i_llvm_fpga_pop_i1_cmp27_1143_pop116_conv2d3x382_out_feedback_stall_out_116),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist75_i_llvm_fpga_pop_i1_cmp27_1143_pop116_conv2d3x382_out_data_out_2(DELAY,387)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist75_i_llvm_fpga_pop_i1_cmp27_1143_pop116_conv2d3x382_out_data_out_2_delay_0 <= '0;
            redist75_i_llvm_fpga_pop_i1_cmp27_1143_pop116_conv2d3x382_out_data_out_2_q <= '0;
        end
        else
        begin
            redist75_i_llvm_fpga_pop_i1_cmp27_1143_pop116_conv2d3x382_out_data_out_2_delay_0 <= $unsigned(i_llvm_fpga_pop_i1_cmp27_1143_pop116_conv2d3x382_out_data_out);
            redist75_i_llvm_fpga_pop_i1_cmp27_1143_pop116_conv2d3x382_out_data_out_2_q <= redist75_i_llvm_fpga_pop_i1_cmp27_1143_pop116_conv2d3x382_out_data_out_2_delay_0;
        end
    end

    // i_llvm_fpga_push_i1_cmp27_1143_push116_conv2d3x383(BLACKBOX,139)@5
    // out out_feedback_out_116@20000000
    // out out_feedback_valid_out_116@20000000
    conv2d3x3_i_llvm_fpga_push_i1_cmp27_1143_push116_0 thei_llvm_fpga_push_i1_cmp27_1143_push116_conv2d3x383 (
        .in_data_in(redist75_i_llvm_fpga_pop_i1_cmp27_1143_pop116_conv2d3x382_out_data_out_2_q),
        .in_feedback_stall_in_116(i_llvm_fpga_pop_i1_cmp27_1143_pop116_conv2d3x382_out_feedback_stall_out_116),
        .in_keep_going_fanout_adaptor(i_llvm_fpga_fanout_i1_keep_going_fanout_adaptor_conv2d3x310_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg39_q),
        .out_data_out(i_llvm_fpga_push_i1_cmp27_1143_push116_conv2d3x383_out_data_out),
        .out_feedback_out_116(i_llvm_fpga_push_i1_cmp27_1143_push116_conv2d3x383_out_feedback_out_116),
        .out_feedback_valid_out_116(i_llvm_fpga_push_i1_cmp27_1143_push116_conv2d3x383_out_feedback_valid_out_116),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg37(REG,264)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg37_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg37_q <= $unsigned(redist50_sync_together238_aunroll_x_in_i_valid_3_q);
        end
    end

    // valid_fanout_reg36(REG,263)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg36_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg36_q <= $unsigned(redist48_sync_together238_aunroll_x_in_i_valid_1_q);
        end
    end

    // redist18_sync_together238_aunroll_x_in_c0_eni461037_17_tpl_2(DELAY,330)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist18_sync_together238_aunroll_x_in_c0_eni461037_17_tpl_2_delay_0 <= '0;
            redist18_sync_together238_aunroll_x_in_c0_eni461037_17_tpl_2_q <= '0;
        end
        else
        begin
            redist18_sync_together238_aunroll_x_in_c0_eni461037_17_tpl_2_delay_0 <= $unsigned(in_c0_eni461037_17_tpl);
            redist18_sync_together238_aunroll_x_in_c0_eni461037_17_tpl_2_q <= redist18_sync_together238_aunroll_x_in_c0_eni461037_17_tpl_2_delay_0;
        end
    end

    // i_llvm_fpga_pop_i1_cmp26_1138_pop115_conv2d3x380(BLACKBOX,107)@3
    // out out_feedback_stall_out_115@20000000
    conv2d3x3_i_llvm_fpga_pop_i1_cmp26_1138_pop115_0 thei_llvm_fpga_pop_i1_cmp26_1138_pop115_conv2d3x380 (
        .in_data_in(redist18_sync_together238_aunroll_x_in_c0_eni461037_17_tpl_2_q),
        .in_dir(i_llvm_fpga_fanout_i1_c0_ene11039_fanout_adaptor_conv2d3x33_q),
        .in_feedback_in_115(i_llvm_fpga_push_i1_cmp26_1138_push115_conv2d3x381_out_feedback_out_115),
        .in_feedback_valid_in_115(i_llvm_fpga_push_i1_cmp26_1138_push115_conv2d3x381_out_feedback_valid_out_115),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg36_q),
        .out_data_out(i_llvm_fpga_pop_i1_cmp26_1138_pop115_conv2d3x380_out_data_out),
        .out_feedback_stall_out_115(i_llvm_fpga_pop_i1_cmp26_1138_pop115_conv2d3x380_out_feedback_stall_out_115),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist78_i_llvm_fpga_pop_i1_cmp26_1138_pop115_conv2d3x380_out_data_out_2(DELAY,390)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist78_i_llvm_fpga_pop_i1_cmp26_1138_pop115_conv2d3x380_out_data_out_2_delay_0 <= '0;
            redist78_i_llvm_fpga_pop_i1_cmp26_1138_pop115_conv2d3x380_out_data_out_2_q <= '0;
        end
        else
        begin
            redist78_i_llvm_fpga_pop_i1_cmp26_1138_pop115_conv2d3x380_out_data_out_2_delay_0 <= $unsigned(i_llvm_fpga_pop_i1_cmp26_1138_pop115_conv2d3x380_out_data_out);
            redist78_i_llvm_fpga_pop_i1_cmp26_1138_pop115_conv2d3x380_out_data_out_2_q <= redist78_i_llvm_fpga_pop_i1_cmp26_1138_pop115_conv2d3x380_out_data_out_2_delay_0;
        end
    end

    // i_llvm_fpga_push_i1_cmp26_1138_push115_conv2d3x381(BLACKBOX,136)@5
    // out out_feedback_out_115@20000000
    // out out_feedback_valid_out_115@20000000
    conv2d3x3_i_llvm_fpga_push_i1_cmp26_1138_push115_0 thei_llvm_fpga_push_i1_cmp26_1138_push115_conv2d3x381 (
        .in_data_in(redist78_i_llvm_fpga_pop_i1_cmp26_1138_pop115_conv2d3x380_out_data_out_2_q),
        .in_feedback_stall_in_115(i_llvm_fpga_pop_i1_cmp26_1138_pop115_conv2d3x380_out_feedback_stall_out_115),
        .in_keep_going_fanout_adaptor(i_llvm_fpga_fanout_i1_keep_going_fanout_adaptor_conv2d3x310_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg37_q),
        .out_data_out(i_llvm_fpga_push_i1_cmp26_1138_push115_conv2d3x381_out_data_out),
        .out_feedback_out_115(i_llvm_fpga_push_i1_cmp26_1138_push115_conv2d3x381_out_feedback_out_115),
        .out_feedback_valid_out_115(i_llvm_fpga_push_i1_cmp26_1138_push115_conv2d3x381_out_feedback_valid_out_115),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg35(REG,262)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg35_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg35_q <= $unsigned(redist50_sync_together238_aunroll_x_in_i_valid_3_q);
        end
    end

    // valid_fanout_reg34(REG,261)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg34_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg34_q <= $unsigned(redist48_sync_together238_aunroll_x_in_i_valid_1_q);
        end
    end

    // redist17_sync_together238_aunroll_x_in_c0_eni461037_16_tpl_2(DELAY,329)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist17_sync_together238_aunroll_x_in_c0_eni461037_16_tpl_2_delay_0 <= '0;
            redist17_sync_together238_aunroll_x_in_c0_eni461037_16_tpl_2_q <= '0;
        end
        else
        begin
            redist17_sync_together238_aunroll_x_in_c0_eni461037_16_tpl_2_delay_0 <= $unsigned(in_c0_eni461037_16_tpl);
            redist17_sync_together238_aunroll_x_in_c0_eni461037_16_tpl_2_q <= redist17_sync_together238_aunroll_x_in_c0_eni461037_16_tpl_2_delay_0;
        end
    end

    // i_llvm_fpga_pop_i32_sub_1133_pop114_conv2d3x378(BLACKBOX,129)@3
    // out out_feedback_stall_out_114@20000000
    conv2d3x3_i_llvm_fpga_pop_i32_sub_1133_pop114_0 thei_llvm_fpga_pop_i32_sub_1133_pop114_conv2d3x378 (
        .in_data_in(redist17_sync_together238_aunroll_x_in_c0_eni461037_16_tpl_2_q),
        .in_dir(i_llvm_fpga_fanout_i1_c0_ene11039_fanout_adaptor_conv2d3x33_q),
        .in_feedback_in_114(i_llvm_fpga_push_i32_sub_1133_push114_conv2d3x379_out_feedback_out_114),
        .in_feedback_valid_in_114(i_llvm_fpga_push_i32_sub_1133_push114_conv2d3x379_out_feedback_valid_out_114),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg34_q),
        .out_data_out(i_llvm_fpga_pop_i32_sub_1133_pop114_conv2d3x378_out_data_out),
        .out_feedback_stall_out_114(i_llvm_fpga_pop_i32_sub_1133_pop114_conv2d3x378_out_feedback_stall_out_114),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist56_i_llvm_fpga_pop_i32_sub_1133_pop114_conv2d3x378_out_data_out_2(DELAY,368)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist56_i_llvm_fpga_pop_i32_sub_1133_pop114_conv2d3x378_out_data_out_2_delay_0 <= '0;
            redist56_i_llvm_fpga_pop_i32_sub_1133_pop114_conv2d3x378_out_data_out_2_q <= '0;
        end
        else
        begin
            redist56_i_llvm_fpga_pop_i32_sub_1133_pop114_conv2d3x378_out_data_out_2_delay_0 <= $unsigned(i_llvm_fpga_pop_i32_sub_1133_pop114_conv2d3x378_out_data_out);
            redist56_i_llvm_fpga_pop_i32_sub_1133_pop114_conv2d3x378_out_data_out_2_q <= redist56_i_llvm_fpga_pop_i32_sub_1133_pop114_conv2d3x378_out_data_out_2_delay_0;
        end
    end

    // i_llvm_fpga_push_i32_sub_1133_push114_conv2d3x379(BLACKBOX,160)@5
    // out out_feedback_out_114@20000000
    // out out_feedback_valid_out_114@20000000
    conv2d3x3_i_llvm_fpga_push_i32_sub_1133_push114_0 thei_llvm_fpga_push_i32_sub_1133_push114_conv2d3x379 (
        .in_data_in(redist56_i_llvm_fpga_pop_i32_sub_1133_pop114_conv2d3x378_out_data_out_2_q),
        .in_feedback_stall_in_114(i_llvm_fpga_pop_i32_sub_1133_pop114_conv2d3x378_out_feedback_stall_out_114),
        .in_keep_going_fanout_adaptor(i_llvm_fpga_fanout_i1_keep_going_fanout_adaptor_conv2d3x310_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg35_q),
        .out_data_out(i_llvm_fpga_push_i32_sub_1133_push114_conv2d3x379_out_data_out),
        .out_feedback_out_114(i_llvm_fpga_push_i32_sub_1133_push114_conv2d3x379_out_feedback_out_114),
        .out_feedback_valid_out_114(i_llvm_fpga_push_i32_sub_1133_push114_conv2d3x379_out_feedback_valid_out_114),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg33(REG,260)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg33_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg33_q <= $unsigned(redist50_sync_together238_aunroll_x_in_i_valid_3_q);
        end
    end

    // valid_fanout_reg32(REG,259)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg32_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg32_q <= $unsigned(redist48_sync_together238_aunroll_x_in_i_valid_1_q);
        end
    end

    // redist16_sync_together238_aunroll_x_in_c0_eni461037_15_tpl_2(DELAY,328)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist16_sync_together238_aunroll_x_in_c0_eni461037_15_tpl_2_delay_0 <= '0;
            redist16_sync_together238_aunroll_x_in_c0_eni461037_15_tpl_2_q <= '0;
        end
        else
        begin
            redist16_sync_together238_aunroll_x_in_c0_eni461037_15_tpl_2_delay_0 <= $unsigned(in_c0_eni461037_15_tpl);
            redist16_sync_together238_aunroll_x_in_c0_eni461037_15_tpl_2_q <= redist16_sync_together238_aunroll_x_in_c0_eni461037_15_tpl_2_delay_0;
        end
    end

    // i_llvm_fpga_pop_i1_cmp27128_pop113_conv2d3x376(BLACKBOX,109)@3
    // out out_feedback_stall_out_113@20000000
    conv2d3x3_i_llvm_fpga_pop_i1_cmp27128_pop113_0 thei_llvm_fpga_pop_i1_cmp27128_pop113_conv2d3x376 (
        .in_data_in(redist16_sync_together238_aunroll_x_in_c0_eni461037_15_tpl_2_q),
        .in_dir(i_llvm_fpga_fanout_i1_c0_ene11039_fanout_adaptor_conv2d3x33_q),
        .in_feedback_in_113(i_llvm_fpga_push_i1_cmp27128_push113_conv2d3x377_out_feedback_out_113),
        .in_feedback_valid_in_113(i_llvm_fpga_push_i1_cmp27128_push113_conv2d3x377_out_feedback_valid_out_113),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg32_q),
        .out_data_out(i_llvm_fpga_pop_i1_cmp27128_pop113_conv2d3x376_out_data_out),
        .out_feedback_stall_out_113(i_llvm_fpga_pop_i1_cmp27128_pop113_conv2d3x376_out_feedback_stall_out_113),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist76_i_llvm_fpga_pop_i1_cmp27128_pop113_conv2d3x376_out_data_out_2(DELAY,388)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist76_i_llvm_fpga_pop_i1_cmp27128_pop113_conv2d3x376_out_data_out_2_delay_0 <= '0;
            redist76_i_llvm_fpga_pop_i1_cmp27128_pop113_conv2d3x376_out_data_out_2_q <= '0;
        end
        else
        begin
            redist76_i_llvm_fpga_pop_i1_cmp27128_pop113_conv2d3x376_out_data_out_2_delay_0 <= $unsigned(i_llvm_fpga_pop_i1_cmp27128_pop113_conv2d3x376_out_data_out);
            redist76_i_llvm_fpga_pop_i1_cmp27128_pop113_conv2d3x376_out_data_out_2_q <= redist76_i_llvm_fpga_pop_i1_cmp27128_pop113_conv2d3x376_out_data_out_2_delay_0;
        end
    end

    // i_llvm_fpga_push_i1_cmp27128_push113_conv2d3x377(BLACKBOX,138)@5
    // out out_feedback_out_113@20000000
    // out out_feedback_valid_out_113@20000000
    conv2d3x3_i_llvm_fpga_push_i1_cmp27128_push113_0 thei_llvm_fpga_push_i1_cmp27128_push113_conv2d3x377 (
        .in_data_in(redist76_i_llvm_fpga_pop_i1_cmp27128_pop113_conv2d3x376_out_data_out_2_q),
        .in_feedback_stall_in_113(i_llvm_fpga_pop_i1_cmp27128_pop113_conv2d3x376_out_feedback_stall_out_113),
        .in_keep_going_fanout_adaptor(i_llvm_fpga_fanout_i1_keep_going_fanout_adaptor_conv2d3x310_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg33_q),
        .out_data_out(i_llvm_fpga_push_i1_cmp27128_push113_conv2d3x377_out_data_out),
        .out_feedback_out_113(i_llvm_fpga_push_i1_cmp27128_push113_conv2d3x377_out_feedback_out_113),
        .out_feedback_valid_out_113(i_llvm_fpga_push_i1_cmp27128_push113_conv2d3x377_out_feedback_valid_out_113),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg31(REG,258)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg31_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg31_q <= $unsigned(redist50_sync_together238_aunroll_x_in_i_valid_3_q);
        end
    end

    // valid_fanout_reg30(REG,257)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg30_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg30_q <= $unsigned(redist48_sync_together238_aunroll_x_in_i_valid_1_q);
        end
    end

    // redist15_sync_together238_aunroll_x_in_c0_eni461037_14_tpl_2(DELAY,327)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist15_sync_together238_aunroll_x_in_c0_eni461037_14_tpl_2_delay_0 <= '0;
            redist15_sync_together238_aunroll_x_in_c0_eni461037_14_tpl_2_q <= '0;
        end
        else
        begin
            redist15_sync_together238_aunroll_x_in_c0_eni461037_14_tpl_2_delay_0 <= $unsigned(in_c0_eni461037_14_tpl);
            redist15_sync_together238_aunroll_x_in_c0_eni461037_14_tpl_2_q <= redist15_sync_together238_aunroll_x_in_c0_eni461037_14_tpl_2_delay_0;
        end
    end

    // i_llvm_fpga_pop_i1_cmp26123_pop112_conv2d3x374(BLACKBOX,106)@3
    // out out_feedback_stall_out_112@20000000
    conv2d3x3_i_llvm_fpga_pop_i1_cmp26123_pop112_0 thei_llvm_fpga_pop_i1_cmp26123_pop112_conv2d3x374 (
        .in_data_in(redist15_sync_together238_aunroll_x_in_c0_eni461037_14_tpl_2_q),
        .in_dir(i_llvm_fpga_fanout_i1_c0_ene11039_fanout_adaptor_conv2d3x33_q),
        .in_feedback_in_112(i_llvm_fpga_push_i1_cmp26123_push112_conv2d3x375_out_feedback_out_112),
        .in_feedback_valid_in_112(i_llvm_fpga_push_i1_cmp26123_push112_conv2d3x375_out_feedback_valid_out_112),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg30_q),
        .out_data_out(i_llvm_fpga_pop_i1_cmp26123_pop112_conv2d3x374_out_data_out),
        .out_feedback_stall_out_112(i_llvm_fpga_pop_i1_cmp26123_pop112_conv2d3x374_out_feedback_stall_out_112),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist79_i_llvm_fpga_pop_i1_cmp26123_pop112_conv2d3x374_out_data_out_2(DELAY,391)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist79_i_llvm_fpga_pop_i1_cmp26123_pop112_conv2d3x374_out_data_out_2_delay_0 <= '0;
            redist79_i_llvm_fpga_pop_i1_cmp26123_pop112_conv2d3x374_out_data_out_2_q <= '0;
        end
        else
        begin
            redist79_i_llvm_fpga_pop_i1_cmp26123_pop112_conv2d3x374_out_data_out_2_delay_0 <= $unsigned(i_llvm_fpga_pop_i1_cmp26123_pop112_conv2d3x374_out_data_out);
            redist79_i_llvm_fpga_pop_i1_cmp26123_pop112_conv2d3x374_out_data_out_2_q <= redist79_i_llvm_fpga_pop_i1_cmp26123_pop112_conv2d3x374_out_data_out_2_delay_0;
        end
    end

    // i_llvm_fpga_push_i1_cmp26123_push112_conv2d3x375(BLACKBOX,135)@5
    // out out_feedback_out_112@20000000
    // out out_feedback_valid_out_112@20000000
    conv2d3x3_i_llvm_fpga_push_i1_cmp26123_push112_0 thei_llvm_fpga_push_i1_cmp26123_push112_conv2d3x375 (
        .in_data_in(redist79_i_llvm_fpga_pop_i1_cmp26123_pop112_conv2d3x374_out_data_out_2_q),
        .in_feedback_stall_in_112(i_llvm_fpga_pop_i1_cmp26123_pop112_conv2d3x374_out_feedback_stall_out_112),
        .in_keep_going_fanout_adaptor(i_llvm_fpga_fanout_i1_keep_going_fanout_adaptor_conv2d3x310_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg31_q),
        .out_data_out(i_llvm_fpga_push_i1_cmp26123_push112_conv2d3x375_out_data_out),
        .out_feedback_out_112(i_llvm_fpga_push_i1_cmp26123_push112_conv2d3x375_out_feedback_out_112),
        .out_feedback_valid_out_112(i_llvm_fpga_push_i1_cmp26123_push112_conv2d3x375_out_feedback_valid_out_112),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg29(REG,256)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg29_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg29_q <= $unsigned(redist50_sync_together238_aunroll_x_in_i_valid_3_q);
        end
    end

    // valid_fanout_reg28(REG,255)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg28_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg28_q <= $unsigned(redist48_sync_together238_aunroll_x_in_i_valid_1_q);
        end
    end

    // redist14_sync_together238_aunroll_x_in_c0_eni461037_13_tpl_2(DELAY,326)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_sync_together238_aunroll_x_in_c0_eni461037_13_tpl_2_delay_0 <= '0;
            redist14_sync_together238_aunroll_x_in_c0_eni461037_13_tpl_2_q <= '0;
        end
        else
        begin
            redist14_sync_together238_aunroll_x_in_c0_eni461037_13_tpl_2_delay_0 <= $unsigned(in_c0_eni461037_13_tpl);
            redist14_sync_together238_aunroll_x_in_c0_eni461037_13_tpl_2_q <= redist14_sync_together238_aunroll_x_in_c0_eni461037_13_tpl_2_delay_0;
        end
    end

    // i_llvm_fpga_pop_i32_mul56118_pop111_conv2d3x372(BLACKBOX,126)@3
    // out out_feedback_stall_out_111@20000000
    conv2d3x3_i_llvm_fpga_pop_i32_mul56118_pop111_0 thei_llvm_fpga_pop_i32_mul56118_pop111_conv2d3x372 (
        .in_data_in(redist14_sync_together238_aunroll_x_in_c0_eni461037_13_tpl_2_q),
        .in_dir(i_llvm_fpga_fanout_i1_c0_ene11039_fanout_adaptor_conv2d3x33_q),
        .in_feedback_in_111(i_llvm_fpga_push_i32_mul56118_push111_conv2d3x373_out_feedback_out_111),
        .in_feedback_valid_in_111(i_llvm_fpga_push_i32_mul56118_push111_conv2d3x373_out_feedback_valid_out_111),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg28_q),
        .out_data_out(i_llvm_fpga_pop_i32_mul56118_pop111_conv2d3x372_out_data_out),
        .out_feedback_stall_out_111(i_llvm_fpga_pop_i32_mul56118_pop111_conv2d3x372_out_feedback_stall_out_111),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i32_mul56118_push111_conv2d3x373(BLACKBOX,157)@5
    // out out_feedback_out_111@20000000
    // out out_feedback_valid_out_111@20000000
    conv2d3x3_i_llvm_fpga_push_i32_mul56118_push111_0 thei_llvm_fpga_push_i32_mul56118_push111_conv2d3x373 (
        .in_data_in(redist59_i_llvm_fpga_pop_i32_mul56118_pop111_conv2d3x372_out_data_out_2_q),
        .in_feedback_stall_in_111(i_llvm_fpga_pop_i32_mul56118_pop111_conv2d3x372_out_feedback_stall_out_111),
        .in_keep_going_fanout_adaptor(i_llvm_fpga_fanout_i1_keep_going_fanout_adaptor_conv2d3x310_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg29_q),
        .out_data_out(i_llvm_fpga_push_i32_mul56118_push111_conv2d3x373_out_data_out),
        .out_feedback_out_111(i_llvm_fpga_push_i32_mul56118_push111_conv2d3x373_out_feedback_out_111),
        .out_feedback_valid_out_111(i_llvm_fpga_push_i32_mul56118_push111_conv2d3x373_out_feedback_valid_out_111),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist59_i_llvm_fpga_pop_i32_mul56118_pop111_conv2d3x372_out_data_out_2(DELAY,371)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist59_i_llvm_fpga_pop_i32_mul56118_pop111_conv2d3x372_out_data_out_2_delay_0 <= '0;
            redist59_i_llvm_fpga_pop_i32_mul56118_pop111_conv2d3x372_out_data_out_2_q <= '0;
        end
        else
        begin
            redist59_i_llvm_fpga_pop_i32_mul56118_pop111_conv2d3x372_out_data_out_2_delay_0 <= $unsigned(i_llvm_fpga_pop_i32_mul56118_pop111_conv2d3x372_out_data_out);
            redist59_i_llvm_fpga_pop_i32_mul56118_pop111_conv2d3x372_out_data_out_2_q <= redist59_i_llvm_fpga_pop_i32_mul56118_pop111_conv2d3x372_out_data_out_2_delay_0;
        end
    end

    // valid_fanout_reg27(REG,254)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg27_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg27_q <= $unsigned(redist50_sync_together238_aunroll_x_in_i_valid_3_q);
        end
    end

    // valid_fanout_reg26(REG,253)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg26_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg26_q <= $unsigned(redist48_sync_together238_aunroll_x_in_i_valid_1_q);
        end
    end

    // redist13_sync_together238_aunroll_x_in_c0_eni461037_12_tpl_2(DELAY,325)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_sync_together238_aunroll_x_in_c0_eni461037_12_tpl_2_delay_0 <= '0;
            redist13_sync_together238_aunroll_x_in_c0_eni461037_12_tpl_2_q <= '0;
        end
        else
        begin
            redist13_sync_together238_aunroll_x_in_c0_eni461037_12_tpl_2_delay_0 <= $unsigned(in_c0_eni461037_12_tpl);
            redist13_sync_together238_aunroll_x_in_c0_eni461037_12_tpl_2_q <= redist13_sync_together238_aunroll_x_in_c0_eni461037_12_tpl_2_delay_0;
        end
    end

    // i_llvm_fpga_pop_i32_add113_pop110_conv2d3x370(BLACKBOX,119)@3
    // out out_feedback_stall_out_110@20000000
    conv2d3x3_i_llvm_fpga_pop_i32_add113_pop110_0 thei_llvm_fpga_pop_i32_add113_pop110_conv2d3x370 (
        .in_data_in(redist13_sync_together238_aunroll_x_in_c0_eni461037_12_tpl_2_q),
        .in_dir(i_llvm_fpga_fanout_i1_c0_ene11039_fanout_adaptor_conv2d3x33_q),
        .in_feedback_in_110(i_llvm_fpga_push_i32_add113_push110_conv2d3x371_out_feedback_out_110),
        .in_feedback_valid_in_110(i_llvm_fpga_push_i32_add113_push110_conv2d3x371_out_feedback_valid_out_110),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg26_q),
        .out_data_out(i_llvm_fpga_pop_i32_add113_pop110_conv2d3x370_out_data_out),
        .out_feedback_stall_out_110(i_llvm_fpga_pop_i32_add113_pop110_conv2d3x370_out_feedback_stall_out_110),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist68_i_llvm_fpga_pop_i32_add113_pop110_conv2d3x370_out_data_out_2(DELAY,380)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist68_i_llvm_fpga_pop_i32_add113_pop110_conv2d3x370_out_data_out_2_delay_0 <= '0;
            redist68_i_llvm_fpga_pop_i32_add113_pop110_conv2d3x370_out_data_out_2_q <= '0;
        end
        else
        begin
            redist68_i_llvm_fpga_pop_i32_add113_pop110_conv2d3x370_out_data_out_2_delay_0 <= $unsigned(i_llvm_fpga_pop_i32_add113_pop110_conv2d3x370_out_data_out);
            redist68_i_llvm_fpga_pop_i32_add113_pop110_conv2d3x370_out_data_out_2_q <= redist68_i_llvm_fpga_pop_i32_add113_pop110_conv2d3x370_out_data_out_2_delay_0;
        end
    end

    // i_llvm_fpga_push_i32_add113_push110_conv2d3x371(BLACKBOX,150)@5
    // out out_feedback_out_110@20000000
    // out out_feedback_valid_out_110@20000000
    conv2d3x3_i_llvm_fpga_push_i32_add113_push110_0 thei_llvm_fpga_push_i32_add113_push110_conv2d3x371 (
        .in_data_in(redist68_i_llvm_fpga_pop_i32_add113_pop110_conv2d3x370_out_data_out_2_q),
        .in_feedback_stall_in_110(i_llvm_fpga_pop_i32_add113_pop110_conv2d3x370_out_feedback_stall_out_110),
        .in_keep_going_fanout_adaptor(i_llvm_fpga_fanout_i1_keep_going_fanout_adaptor_conv2d3x310_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg27_q),
        .out_data_out(i_llvm_fpga_push_i32_add113_push110_conv2d3x371_out_data_out),
        .out_feedback_out_110(i_llvm_fpga_push_i32_add113_push110_conv2d3x371_out_feedback_out_110),
        .out_feedback_valid_out_110(i_llvm_fpga_push_i32_add113_push110_conv2d3x371_out_feedback_valid_out_110),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg25(REG,252)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg25_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg25_q <= $unsigned(redist50_sync_together238_aunroll_x_in_i_valid_3_q);
        end
    end

    // valid_fanout_reg24(REG,251)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg24_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg24_q <= $unsigned(redist48_sync_together238_aunroll_x_in_i_valid_1_q);
        end
    end

    // redist12_sync_together238_aunroll_x_in_c0_eni461037_11_tpl_2(DELAY,324)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_sync_together238_aunroll_x_in_c0_eni461037_11_tpl_2_delay_0 <= '0;
            redist12_sync_together238_aunroll_x_in_c0_eni461037_11_tpl_2_q <= '0;
        end
        else
        begin
            redist12_sync_together238_aunroll_x_in_c0_eni461037_11_tpl_2_delay_0 <= $unsigned(in_c0_eni461037_11_tpl);
            redist12_sync_together238_aunroll_x_in_c0_eni461037_11_tpl_2_q <= redist12_sync_together238_aunroll_x_in_c0_eni461037_11_tpl_2_delay_0;
        end
    end

    // i_llvm_fpga_pop_i1_notcmp81108_pop109_conv2d3x368(BLACKBOX,114)@3
    // out out_feedback_stall_out_109@20000000
    conv2d3x3_i_llvm_fpga_pop_i1_notcmp81108_pop109_0 thei_llvm_fpga_pop_i1_notcmp81108_pop109_conv2d3x368 (
        .in_data_in(redist12_sync_together238_aunroll_x_in_c0_eni461037_11_tpl_2_q),
        .in_dir(i_llvm_fpga_fanout_i1_c0_ene11039_fanout_adaptor_conv2d3x33_q),
        .in_feedback_in_109(i_llvm_fpga_push_i1_notcmp81108_push109_conv2d3x369_out_feedback_out_109),
        .in_feedback_valid_in_109(i_llvm_fpga_push_i1_notcmp81108_push109_conv2d3x369_out_feedback_valid_out_109),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg24_q),
        .out_data_out(i_llvm_fpga_pop_i1_notcmp81108_pop109_conv2d3x368_out_data_out),
        .out_feedback_stall_out_109(i_llvm_fpga_pop_i1_notcmp81108_pop109_conv2d3x368_out_feedback_stall_out_109),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i1_notcmp81108_push109_conv2d3x369(BLACKBOX,144)@5
    // out out_feedback_out_109@20000000
    // out out_feedback_valid_out_109@20000000
    conv2d3x3_i_llvm_fpga_push_i1_notcmp81108_push109_0 thei_llvm_fpga_push_i1_notcmp81108_push109_conv2d3x369 (
        .in_data_in(redist71_i_llvm_fpga_pop_i1_notcmp81108_pop109_conv2d3x368_out_data_out_2_q),
        .in_feedback_stall_in_109(i_llvm_fpga_pop_i1_notcmp81108_pop109_conv2d3x368_out_feedback_stall_out_109),
        .in_keep_going_fanout_adaptor(i_llvm_fpga_fanout_i1_keep_going_fanout_adaptor_conv2d3x310_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg25_q),
        .out_data_out(i_llvm_fpga_push_i1_notcmp81108_push109_conv2d3x369_out_data_out),
        .out_feedback_out_109(i_llvm_fpga_push_i1_notcmp81108_push109_conv2d3x369_out_feedback_out_109),
        .out_feedback_valid_out_109(i_llvm_fpga_push_i1_notcmp81108_push109_conv2d3x369_out_feedback_valid_out_109),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist71_i_llvm_fpga_pop_i1_notcmp81108_pop109_conv2d3x368_out_data_out_2(DELAY,383)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist71_i_llvm_fpga_pop_i1_notcmp81108_pop109_conv2d3x368_out_data_out_2_delay_0 <= '0;
            redist71_i_llvm_fpga_pop_i1_notcmp81108_pop109_conv2d3x368_out_data_out_2_q <= '0;
        end
        else
        begin
            redist71_i_llvm_fpga_pop_i1_notcmp81108_pop109_conv2d3x368_out_data_out_2_delay_0 <= $unsigned(i_llvm_fpga_pop_i1_notcmp81108_pop109_conv2d3x368_out_data_out);
            redist71_i_llvm_fpga_pop_i1_notcmp81108_pop109_conv2d3x368_out_data_out_2_q <= redist71_i_llvm_fpga_pop_i1_notcmp81108_pop109_conv2d3x368_out_data_out_2_delay_0;
        end
    end

    // valid_fanout_reg23(REG,250)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg23_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg23_q <= $unsigned(redist50_sync_together238_aunroll_x_in_i_valid_3_q);
        end
    end

    // valid_fanout_reg22(REG,249)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg22_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg22_q <= $unsigned(redist48_sync_together238_aunroll_x_in_i_valid_1_q);
        end
    end

    // redist11_sync_together238_aunroll_x_in_c0_eni461037_10_tpl_2(DELAY,323)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_sync_together238_aunroll_x_in_c0_eni461037_10_tpl_2_delay_0 <= '0;
            redist11_sync_together238_aunroll_x_in_c0_eni461037_10_tpl_2_q <= '0;
        end
        else
        begin
            redist11_sync_together238_aunroll_x_in_c0_eni461037_10_tpl_2_delay_0 <= $unsigned(in_c0_eni461037_10_tpl);
            redist11_sync_together238_aunroll_x_in_c0_eni461037_10_tpl_2_q <= redist11_sync_together238_aunroll_x_in_c0_eni461037_10_tpl_2_delay_0;
        end
    end

    // i_llvm_fpga_pop_f32_lm25102_pop108_conv2d3x366(BLACKBOX,105)@3
    // out out_feedback_stall_out_108@20000000
    conv2d3x3_i_llvm_fpga_pop_f32_lm25102_pop108_0 thei_llvm_fpga_pop_f32_lm25102_pop108_conv2d3x366 (
        .in_data_in(redist11_sync_together238_aunroll_x_in_c0_eni461037_10_tpl_2_q),
        .in_dir(i_llvm_fpga_fanout_i1_c0_ene11039_fanout_adaptor_conv2d3x33_q),
        .in_feedback_in_108(i_llvm_fpga_push_f32_lm25102_push108_conv2d3x367_out_feedback_out_108),
        .in_feedback_valid_in_108(i_llvm_fpga_push_f32_lm25102_push108_conv2d3x367_out_feedback_valid_out_108),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg22_q),
        .out_data_out(i_llvm_fpga_pop_f32_lm25102_pop108_conv2d3x366_out_data_out),
        .out_feedback_stall_out_108(i_llvm_fpga_pop_f32_lm25102_pop108_conv2d3x366_out_feedback_stall_out_108),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_f32_lm25102_push108_conv2d3x367(BLACKBOX,134)@5
    // out out_feedback_out_108@20000000
    // out out_feedback_valid_out_108@20000000
    conv2d3x3_i_llvm_fpga_push_f32_lm25102_push108_0 thei_llvm_fpga_push_f32_lm25102_push108_conv2d3x367 (
        .in_data_in(redist80_i_llvm_fpga_pop_f32_lm25102_pop108_conv2d3x366_out_data_out_2_q),
        .in_feedback_stall_in_108(i_llvm_fpga_pop_f32_lm25102_pop108_conv2d3x366_out_feedback_stall_out_108),
        .in_keep_going_fanout_adaptor(i_llvm_fpga_fanout_i1_keep_going_fanout_adaptor_conv2d3x310_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg23_q),
        .out_data_out(i_llvm_fpga_push_f32_lm25102_push108_conv2d3x367_out_data_out),
        .out_feedback_out_108(i_llvm_fpga_push_f32_lm25102_push108_conv2d3x367_out_feedback_out_108),
        .out_feedback_valid_out_108(i_llvm_fpga_push_f32_lm25102_push108_conv2d3x367_out_feedback_valid_out_108),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist80_i_llvm_fpga_pop_f32_lm25102_pop108_conv2d3x366_out_data_out_2(DELAY,392)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist80_i_llvm_fpga_pop_f32_lm25102_pop108_conv2d3x366_out_data_out_2_delay_0 <= '0;
            redist80_i_llvm_fpga_pop_f32_lm25102_pop108_conv2d3x366_out_data_out_2_q <= '0;
        end
        else
        begin
            redist80_i_llvm_fpga_pop_f32_lm25102_pop108_conv2d3x366_out_data_out_2_delay_0 <= $unsigned(i_llvm_fpga_pop_f32_lm25102_pop108_conv2d3x366_out_data_out);
            redist80_i_llvm_fpga_pop_f32_lm25102_pop108_conv2d3x366_out_data_out_2_q <= redist80_i_llvm_fpga_pop_f32_lm25102_pop108_conv2d3x366_out_data_out_2_delay_0;
        end
    end

    // valid_fanout_reg21(REG,248)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg21_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg21_q <= $unsigned(redist50_sync_together238_aunroll_x_in_i_valid_3_q);
        end
    end

    // i_llvm_fpga_fanout_i1_keep_going_fanout_adaptor1211_conv2d3x39(REG,102)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_llvm_fpga_fanout_i1_keep_going_fanout_adaptor1211_conv2d3x39_q <= $unsigned(1'b0);
        end
        else
        begin
            i_llvm_fpga_fanout_i1_keep_going_fanout_adaptor1211_conv2d3x39_q <= i_llvm_fpga_pipeline_keep_going_conv2d3x38_out_data_out;
        end
    end

    // valid_fanout_reg20(REG,247)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg20_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg20_q <= $unsigned(redist48_sync_together238_aunroll_x_in_i_valid_1_q);
        end
    end

    // redist10_sync_together238_aunroll_x_in_c0_eni461037_9_tpl_2(DELAY,322)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_sync_together238_aunroll_x_in_c0_eni461037_9_tpl_2_delay_0 <= '0;
            redist10_sync_together238_aunroll_x_in_c0_eni461037_9_tpl_2_q <= '0;
        end
        else
        begin
            redist10_sync_together238_aunroll_x_in_c0_eni461037_9_tpl_2_delay_0 <= $unsigned(in_c0_eni461037_9_tpl);
            redist10_sync_together238_aunroll_x_in_c0_eni461037_9_tpl_2_q <= redist10_sync_together238_aunroll_x_in_c0_eni461037_9_tpl_2_delay_0;
        end
    end

    // i_llvm_fpga_pop_p1024f32_output_im_addr_068_replace_phi96_pop107_conv2d3x364(BLACKBOX,133)@3
    // out out_feedback_stall_out_107@20000000
    conv2d3x3_i_llvm_fpga_pop_p1024f32_outpu0000place_phi96_pop107_0 thei_llvm_fpga_pop_p1024f32_output_im_addr_068_replace_phi96_pop107_conv2d3x364 (
        .in_data_in(redist10_sync_together238_aunroll_x_in_c0_eni461037_9_tpl_2_q),
        .in_dir(i_llvm_fpga_fanout_i1_c0_ene11039_fanout_adaptor_conv2d3x33_q),
        .in_feedback_in_107(i_llvm_fpga_push_p1024f32_output_im_addr_068_replace_phi96_push107_conv2d3x365_out_feedback_out_107),
        .in_feedback_valid_in_107(i_llvm_fpga_push_p1024f32_output_im_addr_068_replace_phi96_push107_conv2d3x365_out_feedback_valid_out_107),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg20_q),
        .out_data_out(i_llvm_fpga_pop_p1024f32_output_im_addr_068_replace_phi96_pop107_conv2d3x364_out_data_out),
        .out_feedback_stall_out_107(i_llvm_fpga_pop_p1024f32_output_im_addr_068_replace_phi96_pop107_conv2d3x364_out_feedback_stall_out_107),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_p1024f32_output_im_addr_068_replace_phi96_push107_conv2d3x365(BLACKBOX,164)@5
    // out out_feedback_out_107@20000000
    // out out_feedback_valid_out_107@20000000
    conv2d3x3_i_llvm_fpga_push_p1024f32_outp0000lace_phi96_push107_0 thei_llvm_fpga_push_p1024f32_output_im_addr_068_replace_phi96_push107_conv2d3x365 (
        .in_data_in(redist53_i_llvm_fpga_pop_p1024f32_output_im_addr_068_replace_phi96_pop107_conv2d3x364_out_data_out_2_q),
        .in_feedback_stall_in_107(i_llvm_fpga_pop_p1024f32_output_im_addr_068_replace_phi96_pop107_conv2d3x364_out_feedback_stall_out_107),
        .in_keep_going_fanout_adaptor1211(i_llvm_fpga_fanout_i1_keep_going_fanout_adaptor1211_conv2d3x39_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg21_q),
        .out_data_out(i_llvm_fpga_push_p1024f32_output_im_addr_068_replace_phi96_push107_conv2d3x365_out_data_out),
        .out_feedback_out_107(i_llvm_fpga_push_p1024f32_output_im_addr_068_replace_phi96_push107_conv2d3x365_out_feedback_out_107),
        .out_feedback_valid_out_107(i_llvm_fpga_push_p1024f32_output_im_addr_068_replace_phi96_push107_conv2d3x365_out_feedback_valid_out_107),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist53_i_llvm_fpga_pop_p1024f32_output_im_addr_068_replace_phi96_pop107_conv2d3x364_out_data_out_2(DELAY,365)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist53_i_llvm_fpga_pop_p1024f32_output_im_addr_068_replace_phi96_pop107_conv2d3x364_out_data_out_2_delay_0 <= '0;
            redist53_i_llvm_fpga_pop_p1024f32_output_im_addr_068_replace_phi96_pop107_conv2d3x364_out_data_out_2_q <= '0;
        end
        else
        begin
            redist53_i_llvm_fpga_pop_p1024f32_output_im_addr_068_replace_phi96_pop107_conv2d3x364_out_data_out_2_delay_0 <= $unsigned(i_llvm_fpga_pop_p1024f32_output_im_addr_068_replace_phi96_pop107_conv2d3x364_out_data_out);
            redist53_i_llvm_fpga_pop_p1024f32_output_im_addr_068_replace_phi96_pop107_conv2d3x364_out_data_out_2_q <= redist53_i_llvm_fpga_pop_p1024f32_output_im_addr_068_replace_phi96_pop107_conv2d3x364_out_data_out_2_delay_0;
        end
    end

    // i_masked_conv2d3x363(LOGICAL,170)@5
    assign i_masked_conv2d3x363_q = i_notcmp_conv2d3x358_q & i_first_cleanup_conv2d3x35_sel_x_b;

    // c_i32_0166(CONSTANT,72)
    assign c_i32_0166_q = $unsigned(32'b00000000000000000000000000000000);

    // valid_fanout_reg4(REG,231)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg4_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg4_q <= $unsigned(redist48_sync_together238_aunroll_x_in_i_valid_1_q);
        end
    end

    // valid_fanout_reg19(REG,246)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg19_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg19_q <= $unsigned(redist50_sync_together238_aunroll_x_in_i_valid_3_q);
        end
    end

    // c_i32_1168(CONSTANT,73)
    assign c_i32_1168_q = $unsigned(32'b00000000000000000000000000000001);

    // i_inc_2_conv2d3x350(ADD,98)@5
    assign i_inc_2_conv2d3x350_a = {1'b0, redist61_i_llvm_fpga_pop_i32_m_053_2_pop102_conv2d3x316_out_data_out_2_q};
    assign i_inc_2_conv2d3x350_b = {1'b0, c_i32_1168_q};
    assign i_inc_2_conv2d3x350_o = $unsigned(i_inc_2_conv2d3x350_a) + $unsigned(i_inc_2_conv2d3x350_b);
    assign i_inc_2_conv2d3x350_q = i_inc_2_conv2d3x350_o[32:0];

    // bgTrunc_i_inc_2_conv2d3x350_sel_x(BITSELECT,197)@5
    assign bgTrunc_i_inc_2_conv2d3x350_sel_x_b = i_inc_2_conv2d3x350_q[31:0];

    // i_llvm_fpga_push_i32_m_053_2_push102_conv2d3x351(BLACKBOX,156)@5
    // out out_feedback_out_102@20000000
    // out out_feedback_valid_out_102@20000000
    conv2d3x3_i_llvm_fpga_push_i32_m_053_2_push102_0 thei_llvm_fpga_push_i32_m_053_2_push102_conv2d3x351 (
        .in_data_in(bgTrunc_i_inc_2_conv2d3x350_sel_x_b),
        .in_feedback_stall_in_102(i_llvm_fpga_pop_i32_m_053_2_pop102_conv2d3x316_out_feedback_stall_out_102),
        .in_keep_going_fanout_adaptor1211(i_llvm_fpga_fanout_i1_keep_going_fanout_adaptor1211_conv2d3x39_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg19_q),
        .out_data_out(),
        .out_feedback_out_102(i_llvm_fpga_push_i32_m_053_2_push102_conv2d3x351_out_feedback_out_102),
        .out_feedback_valid_out_102(i_llvm_fpga_push_i32_m_053_2_push102_conv2d3x351_out_feedback_valid_out_102),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_m_053_2_pop102_conv2d3x316(BLACKBOX,125)@3
    // out out_feedback_stall_out_102@20000000
    conv2d3x3_i_llvm_fpga_pop_i32_m_053_2_pop102_0 thei_llvm_fpga_pop_i32_m_053_2_pop102_conv2d3x316 (
        .in_data_in(c_i32_0166_q),
        .in_dir(i_llvm_fpga_fanout_i1_c0_ene11039_fanout_adaptor_conv2d3x33_q),
        .in_feedback_in_102(i_llvm_fpga_push_i32_m_053_2_push102_conv2d3x351_out_feedback_out_102),
        .in_feedback_valid_in_102(i_llvm_fpga_push_i32_m_053_2_push102_conv2d3x351_out_feedback_valid_out_102),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_data_out(i_llvm_fpga_pop_i32_m_053_2_pop102_conv2d3x316_out_data_out),
        .out_feedback_stall_out_102(i_llvm_fpga_pop_i32_m_053_2_pop102_conv2d3x316_out_feedback_stall_out_102),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist60_i_llvm_fpga_pop_i32_m_053_2_pop102_conv2d3x316_out_data_out_1(DELAY,372)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist60_i_llvm_fpga_pop_i32_m_053_2_pop102_conv2d3x316_out_data_out_1_q <= '0;
        end
        else
        begin
            redist60_i_llvm_fpga_pop_i32_m_053_2_pop102_conv2d3x316_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i32_m_053_2_pop102_conv2d3x316_out_data_out);
        end
    end

    // redist61_i_llvm_fpga_pop_i32_m_053_2_pop102_conv2d3x316_out_data_out_2(DELAY,373)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist61_i_llvm_fpga_pop_i32_m_053_2_pop102_conv2d3x316_out_data_out_2_q <= '0;
        end
        else
        begin
            redist61_i_llvm_fpga_pop_i32_m_053_2_pop102_conv2d3x316_out_data_out_2_q <= $unsigned(redist60_i_llvm_fpga_pop_i32_m_053_2_pop102_conv2d3x316_out_data_out_1_q);
        end
    end

    // valid_fanout_reg15(REG,242)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg15_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg15_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg16(REG,243)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg16_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg16_q <= $unsigned(redist50_sync_together238_aunroll_x_in_i_valid_3_q);
        end
    end

    // i_llvm_fpga_push_i32_add41_2192_push130_conv2d3x344(BLACKBOX,153)@5
    // out out_feedback_out_130@20000000
    // out out_feedback_valid_out_130@20000000
    conv2d3x3_i_llvm_fpga_push_i32_add41_2192_push130_0 thei_llvm_fpga_push_i32_add41_2192_push130_conv2d3x344 (
        .in_data_in(redist64_i_llvm_fpga_pop_i32_add41_2192_pop130_conv2d3x343_out_data_out_3_outputreg0_q),
        .in_feedback_stall_in_130(i_llvm_fpga_pop_i32_add41_2192_pop130_conv2d3x343_out_feedback_stall_out_130),
        .in_keep_going_fanout_adaptor(i_llvm_fpga_fanout_i1_keep_going_fanout_adaptor_conv2d3x310_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg16_q),
        .out_data_out(),
        .out_feedback_out_130(i_llvm_fpga_push_i32_add41_2192_push130_conv2d3x344_out_feedback_out_130),
        .out_feedback_valid_out_130(i_llvm_fpga_push_i32_add41_2192_push130_conv2d3x344_out_feedback_valid_out_130),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist8_sync_together238_aunroll_x_in_c0_eni461037_7_tpl_1(DELAY,320)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_sync_together238_aunroll_x_in_c0_eni461037_7_tpl_1_q <= '0;
        end
        else
        begin
            redist8_sync_together238_aunroll_x_in_c0_eni461037_7_tpl_1_q <= $unsigned(in_c0_eni461037_7_tpl);
        end
    end

    // i_llvm_fpga_pop_i32_add41_2192_pop130_conv2d3x343(BLACKBOX,122)@2
    // out out_feedback_stall_out_130@20000000
    conv2d3x3_i_llvm_fpga_pop_i32_add41_2192_pop130_0 thei_llvm_fpga_pop_i32_add41_2192_pop130_conv2d3x343 (
        .in_data_in(redist8_sync_together238_aunroll_x_in_c0_eni461037_7_tpl_1_q),
        .in_dir(i_llvm_fpga_fanout_i1_c0_ene11039_fanout_adaptor1210_conv2d3x32_q),
        .in_feedback_in_130(i_llvm_fpga_push_i32_add41_2192_push130_conv2d3x344_out_feedback_out_130),
        .in_feedback_valid_in_130(i_llvm_fpga_push_i32_add41_2192_push130_conv2d3x344_out_feedback_valid_out_130),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg15_q),
        .out_data_out(i_llvm_fpga_pop_i32_add41_2192_pop130_conv2d3x343_out_data_out),
        .out_feedback_stall_out_130(i_llvm_fpga_pop_i32_add41_2192_pop130_conv2d3x343_out_feedback_stall_out_130),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist64_i_llvm_fpga_pop_i32_add41_2192_pop130_conv2d3x343_out_data_out_3(DELAY,376)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist64_i_llvm_fpga_pop_i32_add41_2192_pop130_conv2d3x343_out_data_out_3_delay_0 <= '0;
            redist64_i_llvm_fpga_pop_i32_add41_2192_pop130_conv2d3x343_out_data_out_3_q <= '0;
        end
        else
        begin
            redist64_i_llvm_fpga_pop_i32_add41_2192_pop130_conv2d3x343_out_data_out_3_delay_0 <= $unsigned(i_llvm_fpga_pop_i32_add41_2192_pop130_conv2d3x343_out_data_out);
            redist64_i_llvm_fpga_pop_i32_add41_2192_pop130_conv2d3x343_out_data_out_3_q <= redist64_i_llvm_fpga_pop_i32_add41_2192_pop130_conv2d3x343_out_data_out_3_delay_0;
        end
    end

    // redist64_i_llvm_fpga_pop_i32_add41_2192_pop130_conv2d3x343_out_data_out_3_outputreg0(DELAY,520)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist64_i_llvm_fpga_pop_i32_add41_2192_pop130_conv2d3x343_out_data_out_3_outputreg0_q <= '0;
        end
        else
        begin
            redist64_i_llvm_fpga_pop_i32_add41_2192_pop130_conv2d3x343_out_data_out_3_outputreg0_q <= $unsigned(redist64_i_llvm_fpga_pop_i32_add41_2192_pop130_conv2d3x343_out_data_out_3_q);
        end
    end

    // i_add42_2_conv2d3x345(ADD,78)@5
    assign i_add42_2_conv2d3x345_a = {1'b0, redist64_i_llvm_fpga_pop_i32_add41_2192_pop130_conv2d3x343_out_data_out_3_outputreg0_q};
    assign i_add42_2_conv2d3x345_b = {1'b0, redist61_i_llvm_fpga_pop_i32_m_053_2_pop102_conv2d3x316_out_data_out_2_q};
    assign i_add42_2_conv2d3x345_o = $unsigned(i_add42_2_conv2d3x345_a) + $unsigned(i_add42_2_conv2d3x345_b);
    assign i_add42_2_conv2d3x345_q = i_add42_2_conv2d3x345_o[32:0];

    // bgTrunc_i_add42_2_conv2d3x345_sel_x(BITSELECT,195)@5
    assign bgTrunc_i_add42_2_conv2d3x345_sel_x_b = i_add42_2_conv2d3x345_q[31:0];

    // i_idxprom43_2_conv2d3x346_sel_x(BITSELECT,219)@5
    assign i_idxprom43_2_conv2d3x346_sel_x_b = {32'b00000000000000000000000000000000, bgTrunc_i_add42_2_conv2d3x345_sel_x_b[31:0]};

    // i_idxprom43_2_conv2d3x346_vt_select_31(BITSELECT,97)@5
    assign i_idxprom43_2_conv2d3x346_vt_select_31_b = i_idxprom43_2_conv2d3x346_sel_x_b[31:0];

    // i_idxprom43_2_conv2d3x346_vt_join(BITJOIN,96)@5
    assign i_idxprom43_2_conv2d3x346_vt_join_q = {c_i32_0166_q, i_idxprom43_2_conv2d3x346_vt_select_31_b};

    // i_arrayidx44_2_conv2d3x30_narrow_x(BITSELECT,209)@5
    assign i_arrayidx44_2_conv2d3x30_narrow_x_b = i_idxprom43_2_conv2d3x346_vt_join_q[61:0];

    // i_arrayidx38_23_conv2d3x330_vt_const_1(CONSTANT,79)
    assign i_arrayidx38_23_conv2d3x330_vt_const_1_q = $unsigned(2'b00);

    // i_arrayidx44_2_conv2d3x30_shift_join_x(BITJOIN,210)@5
    assign i_arrayidx44_2_conv2d3x30_shift_join_x_q = {i_arrayidx44_2_conv2d3x30_narrow_x_b, i_arrayidx38_23_conv2d3x330_vt_const_1_q};

    // valid_fanout_reg17(REG,244)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg17_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg17_q <= $unsigned(redist48_sync_together238_aunroll_x_in_i_valid_1_q);
        end
    end

    // redist9_sync_together238_aunroll_x_in_c0_eni461037_8_tpl_2(DELAY,321)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_sync_together238_aunroll_x_in_c0_eni461037_8_tpl_2_delay_0 <= '0;
            redist9_sync_together238_aunroll_x_in_c0_eni461037_8_tpl_2_q <= '0;
        end
        else
        begin
            redist9_sync_together238_aunroll_x_in_c0_eni461037_8_tpl_2_delay_0 <= $unsigned(in_c0_eni461037_8_tpl);
            redist9_sync_together238_aunroll_x_in_c0_eni461037_8_tpl_2_q <= redist9_sync_together238_aunroll_x_in_c0_eni461037_8_tpl_2_delay_0;
        end
    end

    // i_llvm_fpga_pop_p1024f32_filter_weight_addr_067_replace_phi90_pop106_conv2d3x347(BLACKBOX,132)@3
    // out out_feedback_stall_out_106@20000000
    conv2d3x3_i_llvm_fpga_pop_p1024f32_filte0000place_phi90_pop106_0 thei_llvm_fpga_pop_p1024f32_filter_weight_addr_067_replace_phi90_pop106_conv2d3x347 (
        .in_data_in(redist9_sync_together238_aunroll_x_in_c0_eni461037_8_tpl_2_q),
        .in_dir(i_llvm_fpga_fanout_i1_c0_ene11039_fanout_adaptor_conv2d3x33_q),
        .in_feedback_in_106(i_llvm_fpga_push_p1024f32_filter_weight_addr_067_replace_phi90_push106_conv2d3x348_out_feedback_out_106),
        .in_feedback_valid_in_106(i_llvm_fpga_push_p1024f32_filter_weight_addr_067_replace_phi90_push106_conv2d3x348_out_feedback_valid_out_106),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg17_q),
        .out_data_out(i_llvm_fpga_pop_p1024f32_filter_weight_addr_067_replace_phi90_pop106_conv2d3x347_out_data_out),
        .out_feedback_stall_out_106(i_llvm_fpga_pop_p1024f32_filter_weight_addr_067_replace_phi90_pop106_conv2d3x347_out_feedback_stall_out_106),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist54_i_llvm_fpga_pop_p1024f32_filter_weight_addr_067_replace_phi90_pop106_conv2d3x347_out_data_out_2(DELAY,366)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist54_i_llvm_fpga_pop_p1024f32_filter_weight_addr_067_replace_phi90_pop106_conv2d3x347_out_data_out_2_delay_0 <= '0;
            redist54_i_llvm_fpga_pop_p1024f32_filter_weight_addr_067_replace_phi90_pop106_conv2d3x347_out_data_out_2_q <= '0;
        end
        else
        begin
            redist54_i_llvm_fpga_pop_p1024f32_filter_weight_addr_067_replace_phi90_pop106_conv2d3x347_out_data_out_2_delay_0 <= $unsigned(i_llvm_fpga_pop_p1024f32_filter_weight_addr_067_replace_phi90_pop106_conv2d3x347_out_data_out);
            redist54_i_llvm_fpga_pop_p1024f32_filter_weight_addr_067_replace_phi90_pop106_conv2d3x347_out_data_out_2_q <= redist54_i_llvm_fpga_pop_p1024f32_filter_weight_addr_067_replace_phi90_pop106_conv2d3x347_out_data_out_2_delay_0;
        end
    end

    // i_arrayidx44_2_conv2d3x30_add_x(ADD,207)@5
    assign i_arrayidx44_2_conv2d3x30_add_x_a = {1'b0, redist54_i_llvm_fpga_pop_p1024f32_filter_weight_addr_067_replace_phi90_pop106_conv2d3x347_out_data_out_2_q};
    assign i_arrayidx44_2_conv2d3x30_add_x_b = {1'b0, i_arrayidx44_2_conv2d3x30_shift_join_x_q};
    assign i_arrayidx44_2_conv2d3x30_add_x_o = $unsigned(i_arrayidx44_2_conv2d3x30_add_x_a) + $unsigned(i_arrayidx44_2_conv2d3x30_add_x_b);
    assign i_arrayidx44_2_conv2d3x30_add_x_q = i_arrayidx44_2_conv2d3x30_add_x_o[64:0];

    // i_arrayidx44_2_conv2d3x30_dupName_0_trunc_sel_x(BITSELECT,212)@5
    assign i_arrayidx44_2_conv2d3x30_dupName_0_trunc_sel_x_b = i_arrayidx44_2_conv2d3x30_add_x_q[63:0];

    // valid_fanout_reg18(REG,245)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg18_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg18_q <= $unsigned(redist50_sync_together238_aunroll_x_in_i_valid_3_q);
        end
    end

    // i_llvm_fpga_push_p1024f32_filter_weight_addr_067_replace_phi90_push106_conv2d3x348(BLACKBOX,163)@5
    // out out_feedback_out_106@20000000
    // out out_feedback_valid_out_106@20000000
    conv2d3x3_i_llvm_fpga_push_p1024f32_filt0000lace_phi90_push106_0 thei_llvm_fpga_push_p1024f32_filter_weight_addr_067_replace_phi90_push106_conv2d3x348 (
        .in_data_in(redist54_i_llvm_fpga_pop_p1024f32_filter_weight_addr_067_replace_phi90_pop106_conv2d3x347_out_data_out_2_q),
        .in_feedback_stall_in_106(i_llvm_fpga_pop_p1024f32_filter_weight_addr_067_replace_phi90_pop106_conv2d3x347_out_feedback_stall_out_106),
        .in_keep_going_fanout_adaptor1211(i_llvm_fpga_fanout_i1_keep_going_fanout_adaptor1211_conv2d3x39_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg18_q),
        .out_data_out(i_llvm_fpga_push_p1024f32_filter_weight_addr_067_replace_phi90_push106_conv2d3x348_out_data_out),
        .out_feedback_out_106(i_llvm_fpga_push_p1024f32_filter_weight_addr_067_replace_phi90_push106_conv2d3x348_out_feedback_out_106),
        .out_feedback_valid_out_106(i_llvm_fpga_push_p1024f32_filter_weight_addr_067_replace_phi90_push106_conv2d3x348_out_feedback_valid_out_106),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_phi_decision49_and_i0_conv2d3x340(LOGICAL,177)@5
    assign i_phi_decision49_and_i0_conv2d3x340_q = redist70_i_llvm_fpga_pop_i1_pop125_conv2d3x338_out_data_out_1_q & i_reduction_conv2d3x3_8_conv2d3x337_q;

    // i_unnamed_conv2d3x341(LOGICAL,182)@5
    assign i_unnamed_conv2d3x341_q = i_phi_decision49_and_i0_conv2d3x340_q ^ VCC_q;

    // i_first_cleanup_xor_or_conv2d3x342(LOGICAL,90)@5
    assign i_first_cleanup_xor_or_conv2d3x342_q = i_unnamed_conv2d3x341_q | i_first_cleanup_xor_conv2d3x36_q;

    // valid_fanout_reg5(REG,232)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg5_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg5_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg6(REG,233)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg6_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg6_q <= $unsigned(redist50_sync_together238_aunroll_x_in_i_valid_3_q);
        end
    end

    // redist67_i_llvm_fpga_pop_i32_add24190_pop128_conv2d3x317_out_data_out_3(DELAY,379)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist67_i_llvm_fpga_pop_i32_add24190_pop128_conv2d3x317_out_data_out_3_q <= '0;
        end
        else
        begin
            redist67_i_llvm_fpga_pop_i32_add24190_pop128_conv2d3x317_out_data_out_3_q <= $unsigned(redist66_i_llvm_fpga_pop_i32_add24190_pop128_conv2d3x317_out_data_out_2_q);
        end
    end

    // i_llvm_fpga_push_i32_add24190_push128_conv2d3x318(BLACKBOX,151)@5
    // out out_feedback_out_128@20000000
    // out out_feedback_valid_out_128@20000000
    conv2d3x3_i_llvm_fpga_push_i32_add24190_push128_0 thei_llvm_fpga_push_i32_add24190_push128_conv2d3x318 (
        .in_data_in(redist67_i_llvm_fpga_pop_i32_add24190_pop128_conv2d3x317_out_data_out_3_q),
        .in_feedback_stall_in_128(i_llvm_fpga_pop_i32_add24190_pop128_conv2d3x317_out_feedback_stall_out_128),
        .in_keep_going_fanout_adaptor(i_llvm_fpga_fanout_i1_keep_going_fanout_adaptor_conv2d3x310_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg6_q),
        .out_data_out(),
        .out_feedback_out_128(i_llvm_fpga_push_i32_add24190_push128_conv2d3x318_out_feedback_out_128),
        .out_feedback_valid_out_128(i_llvm_fpga_push_i32_add24190_push128_conv2d3x318_out_feedback_valid_out_128),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist3_sync_together238_aunroll_x_in_c0_eni461037_2_tpl_1(DELAY,315)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_sync_together238_aunroll_x_in_c0_eni461037_2_tpl_1_q <= '0;
        end
        else
        begin
            redist3_sync_together238_aunroll_x_in_c0_eni461037_2_tpl_1_q <= $unsigned(in_c0_eni461037_2_tpl);
        end
    end

    // i_llvm_fpga_pop_i32_add24190_pop128_conv2d3x317(BLACKBOX,120)@2
    // out out_feedback_stall_out_128@20000000
    conv2d3x3_i_llvm_fpga_pop_i32_add24190_pop128_0 thei_llvm_fpga_pop_i32_add24190_pop128_conv2d3x317 (
        .in_data_in(redist3_sync_together238_aunroll_x_in_c0_eni461037_2_tpl_1_q),
        .in_dir(i_llvm_fpga_fanout_i1_c0_ene11039_fanout_adaptor1210_conv2d3x32_q),
        .in_feedback_in_128(i_llvm_fpga_push_i32_add24190_push128_conv2d3x318_out_feedback_out_128),
        .in_feedback_valid_in_128(i_llvm_fpga_push_i32_add24190_push128_conv2d3x318_out_feedback_valid_out_128),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_data_out(i_llvm_fpga_pop_i32_add24190_pop128_conv2d3x317_out_data_out),
        .out_feedback_stall_out_128(i_llvm_fpga_pop_i32_add24190_pop128_conv2d3x317_out_feedback_stall_out_128),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist66_i_llvm_fpga_pop_i32_add24190_pop128_conv2d3x317_out_data_out_2(DELAY,378)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist66_i_llvm_fpga_pop_i32_add24190_pop128_conv2d3x317_out_data_out_2_delay_0 <= '0;
            redist66_i_llvm_fpga_pop_i32_add24190_pop128_conv2d3x317_out_data_out_2_q <= '0;
        end
        else
        begin
            redist66_i_llvm_fpga_pop_i32_add24190_pop128_conv2d3x317_out_data_out_2_delay_0 <= $unsigned(i_llvm_fpga_pop_i32_add24190_pop128_conv2d3x317_out_data_out);
            redist66_i_llvm_fpga_pop_i32_add24190_pop128_conv2d3x317_out_data_out_2_q <= redist66_i_llvm_fpga_pop_i32_add24190_pop128_conv2d3x317_out_data_out_2_delay_0;
        end
    end

    // i_sub25_2_conv2d3x319(ADD,181)@4
    assign i_sub25_2_conv2d3x319_a = {1'b0, redist66_i_llvm_fpga_pop_i32_add24190_pop128_conv2d3x317_out_data_out_2_q};
    assign i_sub25_2_conv2d3x319_b = {1'b0, redist60_i_llvm_fpga_pop_i32_m_053_2_pop102_conv2d3x316_out_data_out_1_q};
    assign i_sub25_2_conv2d3x319_o = $unsigned(i_sub25_2_conv2d3x319_a) + $unsigned(i_sub25_2_conv2d3x319_b);
    assign i_sub25_2_conv2d3x319_q = i_sub25_2_conv2d3x319_o[32:0];

    // bgTrunc_i_sub25_2_conv2d3x319_sel_x(BITSELECT,198)@4
    assign bgTrunc_i_sub25_2_conv2d3x319_sel_x_b = i_sub25_2_conv2d3x319_q[31:0];

    // c_i32_1167_recast_x(CONSTANT,199)
    assign c_i32_1167_recast_x_q = $unsigned(32'b11111111111111111111111111111111);

    // i_cmp29_2_conv2d3x320(COMPARE,85)@4 + 1
    assign i_cmp29_2_conv2d3x320_a = $unsigned({{2{c_i32_1167_recast_x_q[31]}}, c_i32_1167_recast_x_q});
    assign i_cmp29_2_conv2d3x320_b = $unsigned({{2{bgTrunc_i_sub25_2_conv2d3x319_sel_x_b[31]}}, bgTrunc_i_sub25_2_conv2d3x319_sel_x_b});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_cmp29_2_conv2d3x320_o <= 34'b0;
        end
        else
        begin
            i_cmp29_2_conv2d3x320_o <= $unsigned($signed(i_cmp29_2_conv2d3x320_a) - $signed(i_cmp29_2_conv2d3x320_b));
        end
    end
    assign i_cmp29_2_conv2d3x320_c[0] = i_cmp29_2_conv2d3x320_o[33];

    // valid_fanout_reg13(REG,240)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg13_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg13_q <= $unsigned(redist48_sync_together238_aunroll_x_in_i_valid_1_q);
        end
    end

    // redist6_sync_together238_aunroll_x_in_c0_eni461037_5_tpl_2(DELAY,318)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_sync_together238_aunroll_x_in_c0_eni461037_5_tpl_2_delay_0 <= '0;
            redist6_sync_together238_aunroll_x_in_c0_eni461037_5_tpl_2_q <= '0;
        end
        else
        begin
            redist6_sync_together238_aunroll_x_in_c0_eni461037_5_tpl_2_delay_0 <= $unsigned(in_c0_eni461037_5_tpl);
            redist6_sync_together238_aunroll_x_in_c0_eni461037_5_tpl_2_q <= redist6_sync_together238_aunroll_x_in_c0_eni461037_5_tpl_2_delay_0;
        end
    end

    // i_llvm_fpga_pop_i1_cmp27_2158_pop119_conv2d3x334(BLACKBOX,111)@3
    // out out_feedback_stall_out_119@20000000
    conv2d3x3_i_llvm_fpga_pop_i1_cmp27_2158_pop119_0 thei_llvm_fpga_pop_i1_cmp27_2158_pop119_conv2d3x334 (
        .in_data_in(redist6_sync_together238_aunroll_x_in_c0_eni461037_5_tpl_2_q),
        .in_dir(i_llvm_fpga_fanout_i1_c0_ene11039_fanout_adaptor_conv2d3x33_q),
        .in_feedback_in_119(i_llvm_fpga_push_i1_cmp27_2158_push119_conv2d3x335_out_feedback_out_119),
        .in_feedback_valid_in_119(i_llvm_fpga_push_i1_cmp27_2158_push119_conv2d3x335_out_feedback_valid_out_119),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg13_q),
        .out_data_out(i_llvm_fpga_pop_i1_cmp27_2158_pop119_conv2d3x334_out_data_out),
        .out_feedback_stall_out_119(i_llvm_fpga_pop_i1_cmp27_2158_pop119_conv2d3x334_out_feedback_stall_out_119),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist74_i_llvm_fpga_pop_i1_cmp27_2158_pop119_conv2d3x334_out_data_out_2(DELAY,386)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist74_i_llvm_fpga_pop_i1_cmp27_2158_pop119_conv2d3x334_out_data_out_2_delay_0 <= '0;
            redist74_i_llvm_fpga_pop_i1_cmp27_2158_pop119_conv2d3x334_out_data_out_2_q <= '0;
        end
        else
        begin
            redist74_i_llvm_fpga_pop_i1_cmp27_2158_pop119_conv2d3x334_out_data_out_2_delay_0 <= $unsigned(i_llvm_fpga_pop_i1_cmp27_2158_pop119_conv2d3x334_out_data_out);
            redist74_i_llvm_fpga_pop_i1_cmp27_2158_pop119_conv2d3x334_out_data_out_2_q <= redist74_i_llvm_fpga_pop_i1_cmp27_2158_pop119_conv2d3x334_out_data_out_2_delay_0;
        end
    end

    // i_reduction_conv2d3x3_7_conv2d3x336(LOGICAL,179)@5
    assign i_reduction_conv2d3x3_7_conv2d3x336_q = redist74_i_llvm_fpga_pop_i1_cmp27_2158_pop119_conv2d3x334_out_data_out_2_q & i_cmp29_2_conv2d3x320_c;

    // valid_fanout_reg7(REG,234)@3 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg7_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg7_q <= $unsigned(redist49_sync_together238_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer_conv2d3x322(BLACKBOX,165)@0
    // in in_i_dependence@4
    // in in_valid_in@4
    // out out_buffer_out@4
    // out out_valid_out@4
    conv2d3x3_i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer_0 thei_llvm_fpga_sync_buffer_i32_input_size_sync_buffer_conv2d3x322 (
        .in_buffer_in(in_input_size),
        .in_i_dependence(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg7_q),
        .out_buffer_out(i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer_conv2d3x322_out_buffer_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_cmp31_2_conv2d3x323(COMPARE,86)@4 + 1
    assign i_cmp31_2_conv2d3x323_a = $unsigned({{2{bgTrunc_i_sub25_2_conv2d3x319_sel_x_b[31]}}, bgTrunc_i_sub25_2_conv2d3x319_sel_x_b});
    assign i_cmp31_2_conv2d3x323_b = $unsigned({{2{i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer_conv2d3x322_out_buffer_out[31]}}, i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer_conv2d3x322_out_buffer_out});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_cmp31_2_conv2d3x323_o <= 34'b0;
        end
        else
        begin
            i_cmp31_2_conv2d3x323_o <= $unsigned($signed(i_cmp31_2_conv2d3x323_a) - $signed(i_cmp31_2_conv2d3x323_b));
        end
    end
    assign i_cmp31_2_conv2d3x323_c[0] = i_cmp31_2_conv2d3x323_o[33];

    // valid_fanout_reg11(REG,238)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg11_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg11_q <= $unsigned(redist48_sync_together238_aunroll_x_in_i_valid_1_q);
        end
    end

    // redist5_sync_together238_aunroll_x_in_c0_eni461037_4_tpl_2(DELAY,317)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_sync_together238_aunroll_x_in_c0_eni461037_4_tpl_2_delay_0 <= '0;
            redist5_sync_together238_aunroll_x_in_c0_eni461037_4_tpl_2_q <= '0;
        end
        else
        begin
            redist5_sync_together238_aunroll_x_in_c0_eni461037_4_tpl_2_delay_0 <= $unsigned(in_c0_eni461037_4_tpl);
            redist5_sync_together238_aunroll_x_in_c0_eni461037_4_tpl_2_q <= redist5_sync_together238_aunroll_x_in_c0_eni461037_4_tpl_2_delay_0;
        end
    end

    // i_llvm_fpga_pop_i1_cmp26_2153_pop118_conv2d3x331(BLACKBOX,108)@3
    // out out_feedback_stall_out_118@20000000
    conv2d3x3_i_llvm_fpga_pop_i1_cmp26_2153_pop118_0 thei_llvm_fpga_pop_i1_cmp26_2153_pop118_conv2d3x331 (
        .in_data_in(redist5_sync_together238_aunroll_x_in_c0_eni461037_4_tpl_2_q),
        .in_dir(i_llvm_fpga_fanout_i1_c0_ene11039_fanout_adaptor_conv2d3x33_q),
        .in_feedback_in_118(i_llvm_fpga_push_i1_cmp26_2153_push118_conv2d3x332_out_feedback_out_118),
        .in_feedback_valid_in_118(i_llvm_fpga_push_i1_cmp26_2153_push118_conv2d3x332_out_feedback_valid_out_118),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg11_q),
        .out_data_out(i_llvm_fpga_pop_i1_cmp26_2153_pop118_conv2d3x331_out_data_out),
        .out_feedback_stall_out_118(i_llvm_fpga_pop_i1_cmp26_2153_pop118_conv2d3x331_out_feedback_stall_out_118),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist77_i_llvm_fpga_pop_i1_cmp26_2153_pop118_conv2d3x331_out_data_out_2(DELAY,389)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist77_i_llvm_fpga_pop_i1_cmp26_2153_pop118_conv2d3x331_out_data_out_2_delay_0 <= '0;
            redist77_i_llvm_fpga_pop_i1_cmp26_2153_pop118_conv2d3x331_out_data_out_2_q <= '0;
        end
        else
        begin
            redist77_i_llvm_fpga_pop_i1_cmp26_2153_pop118_conv2d3x331_out_data_out_2_delay_0 <= $unsigned(i_llvm_fpga_pop_i1_cmp26_2153_pop118_conv2d3x331_out_data_out);
            redist77_i_llvm_fpga_pop_i1_cmp26_2153_pop118_conv2d3x331_out_data_out_2_q <= redist77_i_llvm_fpga_pop_i1_cmp26_2153_pop118_conv2d3x331_out_data_out_2_delay_0;
        end
    end

    // i_reduction_conv2d3x3_6_conv2d3x333(LOGICAL,178)@5
    assign i_reduction_conv2d3x3_6_conv2d3x333_q = redist77_i_llvm_fpga_pop_i1_cmp26_2153_pop118_conv2d3x331_out_data_out_2_q & i_cmp31_2_conv2d3x323_c;

    // i_reduction_conv2d3x3_8_conv2d3x337(LOGICAL,180)@5
    assign i_reduction_conv2d3x3_8_conv2d3x337_q = i_reduction_conv2d3x3_6_conv2d3x333_q & i_reduction_conv2d3x3_7_conv2d3x336_q;

    // valid_fanout_reg14(REG,241)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg14_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg14_q <= $unsigned(redist50_sync_together238_aunroll_x_in_i_valid_3_q);
        end
    end

    // i_llvm_fpga_push_i1_cmp27_2158_push119_conv2d3x335(BLACKBOX,140)@5
    // out out_feedback_out_119@20000000
    // out out_feedback_valid_out_119@20000000
    conv2d3x3_i_llvm_fpga_push_i1_cmp27_2158_push119_0 thei_llvm_fpga_push_i1_cmp27_2158_push119_conv2d3x335 (
        .in_data_in(redist74_i_llvm_fpga_pop_i1_cmp27_2158_pop119_conv2d3x334_out_data_out_2_q),
        .in_feedback_stall_in_119(i_llvm_fpga_pop_i1_cmp27_2158_pop119_conv2d3x334_out_feedback_stall_out_119),
        .in_keep_going_fanout_adaptor(i_llvm_fpga_fanout_i1_keep_going_fanout_adaptor_conv2d3x310_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg14_q),
        .out_data_out(i_llvm_fpga_push_i1_cmp27_2158_push119_conv2d3x335_out_data_out),
        .out_feedback_out_119(i_llvm_fpga_push_i1_cmp27_2158_push119_conv2d3x335_out_feedback_out_119),
        .out_feedback_valid_out_119(i_llvm_fpga_push_i1_cmp27_2158_push119_conv2d3x335_out_feedback_valid_out_119),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg12(REG,239)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg12_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg12_q <= $unsigned(redist50_sync_together238_aunroll_x_in_i_valid_3_q);
        end
    end

    // i_llvm_fpga_push_i1_cmp26_2153_push118_conv2d3x332(BLACKBOX,137)@5
    // out out_feedback_out_118@20000000
    // out out_feedback_valid_out_118@20000000
    conv2d3x3_i_llvm_fpga_push_i1_cmp26_2153_push118_0 thei_llvm_fpga_push_i1_cmp26_2153_push118_conv2d3x332 (
        .in_data_in(redist77_i_llvm_fpga_pop_i1_cmp26_2153_pop118_conv2d3x331_out_data_out_2_q),
        .in_feedback_stall_in_118(i_llvm_fpga_pop_i1_cmp26_2153_pop118_conv2d3x331_out_feedback_stall_out_118),
        .in_keep_going_fanout_adaptor(i_llvm_fpga_fanout_i1_keep_going_fanout_adaptor_conv2d3x310_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg12_q),
        .out_data_out(i_llvm_fpga_push_i1_cmp26_2153_push118_conv2d3x332_out_data_out),
        .out_feedback_out_118(i_llvm_fpga_push_i1_cmp26_2153_push118_conv2d3x332_out_feedback_out_118),
        .out_feedback_valid_out_118(i_llvm_fpga_push_i1_cmp26_2153_push118_conv2d3x332_out_feedback_valid_out_118),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg8(REG,235)@1 + 1
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

    // valid_fanout_reg9(REG,236)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg9_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg9_q <= $unsigned(redist50_sync_together238_aunroll_x_in_i_valid_3_q);
        end
    end

    // i_llvm_fpga_push_i32_add35_2191_push129_conv2d3x326(BLACKBOX,152)@5
    // out out_feedback_out_129@20000000
    // out out_feedback_valid_out_129@20000000
    conv2d3x3_i_llvm_fpga_push_i32_add35_2191_push129_0 thei_llvm_fpga_push_i32_add35_2191_push129_conv2d3x326 (
        .in_data_in(redist65_i_llvm_fpga_pop_i32_add35_2191_pop129_conv2d3x325_out_data_out_3_outputreg0_q),
        .in_feedback_stall_in_129(i_llvm_fpga_pop_i32_add35_2191_pop129_conv2d3x325_out_feedback_stall_out_129),
        .in_keep_going_fanout_adaptor(i_llvm_fpga_fanout_i1_keep_going_fanout_adaptor_conv2d3x310_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg9_q),
        .out_data_out(),
        .out_feedback_out_129(i_llvm_fpga_push_i32_add35_2191_push129_conv2d3x326_out_feedback_out_129),
        .out_feedback_valid_out_129(i_llvm_fpga_push_i32_add35_2191_push129_conv2d3x326_out_feedback_valid_out_129),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist4_sync_together238_aunroll_x_in_c0_eni461037_3_tpl_1(DELAY,316)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_sync_together238_aunroll_x_in_c0_eni461037_3_tpl_1_q <= '0;
        end
        else
        begin
            redist4_sync_together238_aunroll_x_in_c0_eni461037_3_tpl_1_q <= $unsigned(in_c0_eni461037_3_tpl);
        end
    end

    // i_llvm_fpga_pop_i32_add35_2191_pop129_conv2d3x325(BLACKBOX,121)@2
    // out out_feedback_stall_out_129@20000000
    conv2d3x3_i_llvm_fpga_pop_i32_add35_2191_pop129_0 thei_llvm_fpga_pop_i32_add35_2191_pop129_conv2d3x325 (
        .in_data_in(redist4_sync_together238_aunroll_x_in_c0_eni461037_3_tpl_1_q),
        .in_dir(i_llvm_fpga_fanout_i1_c0_ene11039_fanout_adaptor1210_conv2d3x32_q),
        .in_feedback_in_129(i_llvm_fpga_push_i32_add35_2191_push129_conv2d3x326_out_feedback_out_129),
        .in_feedback_valid_in_129(i_llvm_fpga_push_i32_add35_2191_push129_conv2d3x326_out_feedback_valid_out_129),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg8_q),
        .out_data_out(i_llvm_fpga_pop_i32_add35_2191_pop129_conv2d3x325_out_data_out),
        .out_feedback_stall_out_129(i_llvm_fpga_pop_i32_add35_2191_pop129_conv2d3x325_out_feedback_stall_out_129),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist65_i_llvm_fpga_pop_i32_add35_2191_pop129_conv2d3x325_out_data_out_3(DELAY,377)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist65_i_llvm_fpga_pop_i32_add35_2191_pop129_conv2d3x325_out_data_out_3_delay_0 <= '0;
            redist65_i_llvm_fpga_pop_i32_add35_2191_pop129_conv2d3x325_out_data_out_3_q <= '0;
        end
        else
        begin
            redist65_i_llvm_fpga_pop_i32_add35_2191_pop129_conv2d3x325_out_data_out_3_delay_0 <= $unsigned(i_llvm_fpga_pop_i32_add35_2191_pop129_conv2d3x325_out_data_out);
            redist65_i_llvm_fpga_pop_i32_add35_2191_pop129_conv2d3x325_out_data_out_3_q <= redist65_i_llvm_fpga_pop_i32_add35_2191_pop129_conv2d3x325_out_data_out_3_delay_0;
        end
    end

    // redist65_i_llvm_fpga_pop_i32_add35_2191_pop129_conv2d3x325_out_data_out_3_outputreg0(DELAY,521)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist65_i_llvm_fpga_pop_i32_add35_2191_pop129_conv2d3x325_out_data_out_3_outputreg0_q <= '0;
        end
        else
        begin
            redist65_i_llvm_fpga_pop_i32_add35_2191_pop129_conv2d3x325_out_data_out_3_outputreg0_q <= $unsigned(redist65_i_llvm_fpga_pop_i32_add35_2191_pop129_conv2d3x325_out_data_out_3_q);
        end
    end

    // redist52_bgTrunc_i_sub25_2_conv2d3x319_sel_x_b_1(DELAY,364)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist52_bgTrunc_i_sub25_2_conv2d3x319_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist52_bgTrunc_i_sub25_2_conv2d3x319_sel_x_b_1_q <= $unsigned(bgTrunc_i_sub25_2_conv2d3x319_sel_x_b);
        end
    end

    // i_add36_2_conv2d3x327(ADD,77)@5
    assign i_add36_2_conv2d3x327_a = {1'b0, redist52_bgTrunc_i_sub25_2_conv2d3x319_sel_x_b_1_q};
    assign i_add36_2_conv2d3x327_b = {1'b0, redist65_i_llvm_fpga_pop_i32_add35_2191_pop129_conv2d3x325_out_data_out_3_outputreg0_q};
    assign i_add36_2_conv2d3x327_o = $unsigned(i_add36_2_conv2d3x327_a) + $unsigned(i_add36_2_conv2d3x327_b);
    assign i_add36_2_conv2d3x327_q = i_add36_2_conv2d3x327_o[32:0];

    // bgTrunc_i_add36_2_conv2d3x327_sel_x(BITSELECT,194)@5
    assign bgTrunc_i_add36_2_conv2d3x327_sel_x_b = i_add36_2_conv2d3x327_q[31:0];

    // i_idxprom37_2_conv2d3x328_sel_x(BITSELECT,218)@5
    assign i_idxprom37_2_conv2d3x328_sel_x_b = $unsigned({{32{bgTrunc_i_add36_2_conv2d3x327_sel_x_b[31]}}, bgTrunc_i_add36_2_conv2d3x327_sel_x_b[31:0]});

    // i_arrayidx38_23_conv2d3x30_narrow_x(BITSELECT,203)@5
    assign i_arrayidx38_23_conv2d3x30_narrow_x_b = i_idxprom37_2_conv2d3x328_sel_x_b[61:0];

    // i_arrayidx38_23_conv2d3x30_shift_join_x(BITJOIN,204)@5
    assign i_arrayidx38_23_conv2d3x30_shift_join_x_q = {i_arrayidx38_23_conv2d3x30_narrow_x_b, i_arrayidx38_23_conv2d3x330_vt_const_1_q};

    // valid_fanout_reg10(REG,237)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg10_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg10_q <= $unsigned(redist50_sync_together238_aunroll_x_in_i_valid_3_q);
        end
    end

    // i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer_conv2d3x329(BLACKBOX,166)@0
    // in in_i_dependence@5
    // in in_valid_in@5
    // out out_buffer_out@5
    // out out_valid_out@5
    conv2d3x3_i_llvm_fpga_sync_buffer_p1024f0001put_im_sync_buffer_0 thei_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer_conv2d3x329 (
        .in_buffer_in(in_input_im),
        .in_i_dependence(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg10_q),
        .out_buffer_out(i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer_conv2d3x329_out_buffer_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer_conv2d3x329_vt_select_63(BITSELECT,169)@5
    assign i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer_conv2d3x329_vt_select_63_b = i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer_conv2d3x329_out_buffer_out[63:10];

    // i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer_conv2d3x329_vt_const_9(CONSTANT,167)
    assign i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer_conv2d3x329_vt_const_9_q = $unsigned(10'b0000000000);

    // i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer_conv2d3x329_vt_join(BITJOIN,168)@5
    assign i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer_conv2d3x329_vt_join_q = {i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer_conv2d3x329_vt_select_63_b, i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer_conv2d3x329_vt_const_9_q};

    // i_arrayidx38_23_conv2d3x30_add_x(ADD,201)@5
    assign i_arrayidx38_23_conv2d3x30_add_x_a = {1'b0, i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer_conv2d3x329_vt_join_q};
    assign i_arrayidx38_23_conv2d3x30_add_x_b = {1'b0, i_arrayidx38_23_conv2d3x30_shift_join_x_q};
    assign i_arrayidx38_23_conv2d3x30_add_x_o = $unsigned(i_arrayidx38_23_conv2d3x30_add_x_a) + $unsigned(i_arrayidx38_23_conv2d3x30_add_x_b);
    assign i_arrayidx38_23_conv2d3x30_add_x_q = i_arrayidx38_23_conv2d3x30_add_x_o[64:0];

    // i_arrayidx38_23_conv2d3x30_dupName_0_trunc_sel_x(BITSELECT,206)@5
    assign i_arrayidx38_23_conv2d3x30_dupName_0_trunc_sel_x_b = i_arrayidx38_23_conv2d3x30_add_x_q[63:0];

    // i_arrayidx38_23_conv2d3x330_vt_select_63(BITSELECT,81)@5
    assign i_arrayidx38_23_conv2d3x330_vt_select_63_b = i_arrayidx38_23_conv2d3x30_dupName_0_trunc_sel_x_b[63:2];

    // i_arrayidx38_23_conv2d3x330_vt_join(BITJOIN,80)@5
    assign i_arrayidx38_23_conv2d3x330_vt_join_q = {i_arrayidx38_23_conv2d3x330_vt_select_63_b, i_arrayidx38_23_conv2d3x330_vt_const_1_q};

    // sync_out_aunroll_x(GPOUT,225)@5
    assign out_c0_exi56_0_tpl = GND_q;
    assign out_c0_exi56_1_tpl = redist81_i_llvm_fpga_pipeline_keep_going_conv2d3x38_out_data_out_1_q;
    assign out_c0_exi56_2_tpl = i_arrayidx38_23_conv2d3x330_vt_join_q;
    assign out_c0_exi56_3_tpl = i_llvm_fpga_push_i1_cmp26_2153_push118_conv2d3x332_out_data_out;
    assign out_c0_exi56_4_tpl = i_llvm_fpga_push_i1_cmp27_2158_push119_conv2d3x335_out_data_out;
    assign out_c0_exi56_5_tpl = i_reduction_conv2d3x3_8_conv2d3x337_q;
    assign out_c0_exi56_6_tpl = redist70_i_llvm_fpga_pop_i1_pop125_conv2d3x338_out_data_out_1_q;
    assign out_c0_exi56_7_tpl = i_first_cleanup_xor_or_conv2d3x342_q;
    assign out_c0_exi56_8_tpl = i_llvm_fpga_push_p1024f32_filter_weight_addr_067_replace_phi90_push106_conv2d3x348_out_data_out;
    assign out_c0_exi56_9_tpl = i_arrayidx44_2_conv2d3x30_dupName_0_trunc_sel_x_b;
    assign out_c0_exi56_10_tpl = i_masked_conv2d3x363_q;
    assign out_c0_exi56_11_tpl = redist53_i_llvm_fpga_pop_p1024f32_output_im_addr_068_replace_phi96_pop107_conv2d3x364_out_data_out_2_q;
    assign out_c0_exi56_12_tpl = i_llvm_fpga_push_p1024f32_output_im_addr_068_replace_phi96_push107_conv2d3x365_out_data_out;
    assign out_c0_exi56_13_tpl = redist80_i_llvm_fpga_pop_f32_lm25102_pop108_conv2d3x366_out_data_out_2_q;
    assign out_c0_exi56_14_tpl = i_llvm_fpga_push_f32_lm25102_push108_conv2d3x367_out_data_out;
    assign out_c0_exi56_15_tpl = redist71_i_llvm_fpga_pop_i1_notcmp81108_pop109_conv2d3x368_out_data_out_2_q;
    assign out_c0_exi56_16_tpl = i_llvm_fpga_push_i1_notcmp81108_push109_conv2d3x369_out_data_out;
    assign out_c0_exi56_17_tpl = i_llvm_fpga_push_i32_add113_push110_conv2d3x371_out_data_out;
    assign out_c0_exi56_18_tpl = redist59_i_llvm_fpga_pop_i32_mul56118_pop111_conv2d3x372_out_data_out_2_q;
    assign out_c0_exi56_19_tpl = i_llvm_fpga_push_i32_mul56118_push111_conv2d3x373_out_data_out;
    assign out_c0_exi56_20_tpl = i_llvm_fpga_push_i1_cmp26123_push112_conv2d3x375_out_data_out;
    assign out_c0_exi56_21_tpl = i_llvm_fpga_push_i1_cmp27128_push113_conv2d3x377_out_data_out;
    assign out_c0_exi56_22_tpl = i_llvm_fpga_push_i32_sub_1133_push114_conv2d3x379_out_data_out;
    assign out_c0_exi56_23_tpl = i_llvm_fpga_push_i1_cmp26_1138_push115_conv2d3x381_out_data_out;
    assign out_c0_exi56_24_tpl = i_llvm_fpga_push_i1_cmp27_1143_push116_conv2d3x383_out_data_out;
    assign out_c0_exi56_25_tpl = i_llvm_fpga_push_i32_sub_2148_push117_conv2d3x385_out_data_out;
    assign out_c0_exi56_26_tpl = redist72_i_llvm_fpga_pop_i1_notcmp77163_pop120_conv2d3x386_out_data_out_2_q;
    assign out_c0_exi56_27_tpl = i_llvm_fpga_push_i1_notcmp77163_push120_conv2d3x387_out_data_out;
    assign out_c0_exi56_28_tpl = i_llvm_fpga_push_i32_stride_sync_buffer166_push121_conv2d3x389_out_data_out;
    assign out_c0_exi56_29_tpl = i_llvm_fpga_push_i32_pad_sync_buffer170_push122_conv2d3x391_out_data_out;
    assign out_c0_exi56_30_tpl = redist73_i_llvm_fpga_pop_i1_notcmp73174_pop123_conv2d3x392_out_data_out_3_q;
    assign out_c0_exi56_31_tpl = i_llvm_fpga_push_i1_notcmp73174_push123_conv2d3x393_out_data_out;
    assign out_c0_exi56_32_tpl = redist62_i_llvm_fpga_pop_i32_j_061_pop24178_pop124_conv2d3x394_out_data_out_3_mem_q;
    assign out_c0_exi56_33_tpl = i_llvm_fpga_push_i32_j_061_pop24178_push124_conv2d3x395_out_data_out;
    assign out_c0_exi56_34_tpl = i_llvm_fpga_push_i32_inc50186_push126_conv2d3x397_out_data_out;
    assign out_c0_exi56_35_tpl = redist69_i_llvm_fpga_pop_i1_pop127_conv2d3x398_out_data_out_3_q;
    assign out_c0_exi56_36_tpl = redist2_sync_together238_aunroll_x_in_c0_eni461037_1_tpl_4_q;
    assign out_c0_exi56_37_tpl = redist28_sync_together238_aunroll_x_in_c0_eni461037_27_tpl_4_mem_q;
    assign out_c0_exi56_38_tpl = redist29_sync_together238_aunroll_x_in_c0_eni461037_28_tpl_4_mem_q;
    assign out_c0_exi56_39_tpl = redist30_sync_together238_aunroll_x_in_c0_eni461037_29_tpl_4_mem_q;
    assign out_c0_exi56_40_tpl = redist31_sync_together238_aunroll_x_in_c0_eni461037_30_tpl_4_q;
    assign out_c0_exi56_41_tpl = redist32_sync_together238_aunroll_x_in_c0_eni461037_31_tpl_4_mem_q;
    assign out_c0_exi56_42_tpl = redist33_sync_together238_aunroll_x_in_c0_eni461037_32_tpl_4_mem_q;
    assign out_c0_exi56_43_tpl = redist34_sync_together238_aunroll_x_in_c0_eni461037_33_tpl_4_q;
    assign out_c0_exi56_44_tpl = redist35_sync_together238_aunroll_x_in_c0_eni461037_34_tpl_4_q;
    assign out_c0_exi56_45_tpl = redist36_sync_together238_aunroll_x_in_c0_eni461037_35_tpl_4_mem_q;
    assign out_c0_exi56_46_tpl = redist37_sync_together238_aunroll_x_in_c0_eni461037_36_tpl_4_q;
    assign out_c0_exi56_47_tpl = redist38_sync_together238_aunroll_x_in_c0_eni461037_37_tpl_4_q;
    assign out_c0_exi56_48_tpl = redist39_sync_together238_aunroll_x_in_c0_eni461037_38_tpl_4_mem_q;
    assign out_c0_exi56_49_tpl = redist40_sync_together238_aunroll_x_in_c0_eni461037_39_tpl_4_q;
    assign out_c0_exi56_50_tpl = redist41_sync_together238_aunroll_x_in_c0_eni461037_40_tpl_4_q;
    assign out_c0_exi56_51_tpl = redist42_sync_together238_aunroll_x_in_c0_eni461037_41_tpl_4_q;
    assign out_c0_exi56_52_tpl = redist43_sync_together238_aunroll_x_in_c0_eni461037_42_tpl_4_mem_q;
    assign out_c0_exi56_53_tpl = redist44_sync_together238_aunroll_x_in_c0_eni461037_43_tpl_4_mem_q;
    assign out_c0_exi56_54_tpl = redist45_sync_together238_aunroll_x_in_c0_eni461037_44_tpl_4_mem_q;
    assign out_c0_exi56_55_tpl = redist46_sync_together238_aunroll_x_in_c0_eni461037_45_tpl_4_q;
    assign out_c0_exi56_56_tpl = redist47_sync_together238_aunroll_x_in_c0_eni461037_46_tpl_4_mem_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_conv2d3x311 = GND_q;

endmodule
