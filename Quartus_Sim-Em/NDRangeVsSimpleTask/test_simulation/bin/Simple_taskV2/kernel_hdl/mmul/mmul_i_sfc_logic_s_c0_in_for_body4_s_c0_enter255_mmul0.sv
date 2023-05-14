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

// SystemVerilog created from mmul_i_sfc_logic_s_c0_in_for_body4_s_c0_enter255_mmul0
// SystemVerilog created on Tue May  9 13:46:47 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module mmul_i_sfc_logic_s_c0_in_for_body4_s_c0_enter255_mmul0 (
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_mmul6_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_mmul6_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [63:0] in_A,
    input wire [63:0] in_B,
    input wire [31:0] in_N,
    input wire [0:0] in_intel_reserved_ffwd_0_0,
    input wire [32:0] in_intel_reserved_ffwd_2_0,
    output wire [0:0] out_c0_exi9_0_tpl,
    output wire [0:0] out_c0_exi9_1_tpl,
    output wire [31:0] out_c0_exi9_2_tpl,
    output wire [63:0] out_c0_exi9_3_tpl,
    output wire [0:0] out_c0_exi9_4_tpl,
    output wire [63:0] out_c0_exi9_5_tpl,
    output wire [0:0] out_c0_exi9_6_tpl,
    output wire [0:0] out_c0_exi9_7_tpl,
    output wire [0:0] out_c0_exi9_8_tpl,
    output wire [0:0] out_c0_exi9_9_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_mmul6,
    input wire [0:0] in_c0_eni4_0_tpl,
    input wire [0:0] in_c0_eni4_1_tpl,
    input wire [31:0] in_c0_eni4_2_tpl,
    input wire [31:0] in_c0_eni4_3_tpl,
    input wire [0:0] in_c0_eni4_4_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [1:0] c_i2_1245_q;
    wire [31:0] c_i32_0248_q;
    wire [31:0] c_i32_1252_q;
    wire [32:0] c_i33_1254_q;
    wire [32:0] c_i33_undef247_q;
    wire [7:0] c_i8_232_q;
    wire [0:0] i_acc_control_signal_mmul204_q;
    wire [32:0] i_add13_i_mmul187_a;
    wire [32:0] i_add13_i_mmul187_b;
    logic [32:0] i_add13_i_mmul187_o;
    wire [32:0] i_add13_i_mmul187_q;
    wire [32:0] i_add7_mmul200_a;
    wire [32:0] i_add7_mmul200_b;
    logic [32:0] i_add7_mmul200_o;
    wire [32:0] i_add7_mmul200_q;
    wire [32:0] i_add8_i_mmul25_a;
    wire [32:0] i_add8_i_mmul25_b;
    logic [32:0] i_add8_i_mmul25_o;
    wire [32:0] i_add8_i_mmul25_q;
    wire [32:0] i_add_i_mmul23_a;
    wire [32:0] i_add_i_mmul23_b;
    logic [32:0] i_add_i_mmul23_o;
    wire [32:0] i_add_i_mmul23_q;
    wire [32:0] i_add_mmul193_a;
    wire [32:0] i_add_mmul193_b;
    logic [32:0] i_add_mmul193_o;
    wire [32:0] i_add_mmul193_q;
    wire [1:0] i_arrayidx2_mmul196_vt_const_1_q;
    wire [63:0] i_arrayidx2_mmul196_vt_join_q;
    wire [61:0] i_arrayidx2_mmul196_vt_select_63_b;
    wire [63:0] i_arrayidx93_mmul203_vt_join_q;
    wire [61:0] i_arrayidx93_mmul203_vt_select_63_b;
    wire [1:0] i_cleanups_shl_mmul5_vt_join_q;
    wire [0:0] i_cleanups_shl_mmul5_vt_select_1_b;
    wire [33:0] i_cmp3_i_10_i_mmul79_a;
    wire [33:0] i_cmp3_i_10_i_mmul79_b;
    logic [33:0] i_cmp3_i_10_i_mmul79_o;
    wire [0:0] i_cmp3_i_10_i_mmul79_c;
    wire [33:0] i_cmp3_i_11_i_mmul84_a;
    wire [33:0] i_cmp3_i_11_i_mmul84_b;
    logic [33:0] i_cmp3_i_11_i_mmul84_o;
    wire [0:0] i_cmp3_i_11_i_mmul84_c;
    wire [33:0] i_cmp3_i_12_i_mmul89_a;
    wire [33:0] i_cmp3_i_12_i_mmul89_b;
    logic [33:0] i_cmp3_i_12_i_mmul89_o;
    wire [0:0] i_cmp3_i_12_i_mmul89_c;
    wire [33:0] i_cmp3_i_13_i_mmul94_a;
    wire [33:0] i_cmp3_i_13_i_mmul94_b;
    logic [33:0] i_cmp3_i_13_i_mmul94_o;
    wire [0:0] i_cmp3_i_13_i_mmul94_c;
    wire [33:0] i_cmp3_i_14_i_mmul99_a;
    wire [33:0] i_cmp3_i_14_i_mmul99_b;
    logic [33:0] i_cmp3_i_14_i_mmul99_o;
    wire [0:0] i_cmp3_i_14_i_mmul99_c;
    wire [33:0] i_cmp3_i_15_i_mmul104_a;
    wire [33:0] i_cmp3_i_15_i_mmul104_b;
    logic [33:0] i_cmp3_i_15_i_mmul104_o;
    wire [0:0] i_cmp3_i_15_i_mmul104_c;
    wire [33:0] i_cmp3_i_16_i_mmul109_a;
    wire [33:0] i_cmp3_i_16_i_mmul109_b;
    logic [33:0] i_cmp3_i_16_i_mmul109_o;
    wire [0:0] i_cmp3_i_16_i_mmul109_c;
    wire [33:0] i_cmp3_i_17_i_mmul114_a;
    wire [33:0] i_cmp3_i_17_i_mmul114_b;
    logic [33:0] i_cmp3_i_17_i_mmul114_o;
    wire [0:0] i_cmp3_i_17_i_mmul114_c;
    wire [33:0] i_cmp3_i_18_i_mmul119_a;
    wire [33:0] i_cmp3_i_18_i_mmul119_b;
    logic [33:0] i_cmp3_i_18_i_mmul119_o;
    wire [0:0] i_cmp3_i_18_i_mmul119_c;
    wire [33:0] i_cmp3_i_19_i_mmul124_a;
    wire [33:0] i_cmp3_i_19_i_mmul124_b;
    logic [33:0] i_cmp3_i_19_i_mmul124_o;
    wire [0:0] i_cmp3_i_19_i_mmul124_c;
    wire [33:0] i_cmp3_i_1_i_mmul34_a;
    wire [33:0] i_cmp3_i_1_i_mmul34_b;
    logic [33:0] i_cmp3_i_1_i_mmul34_o;
    wire [0:0] i_cmp3_i_1_i_mmul34_c;
    wire [33:0] i_cmp3_i_20_i_mmul129_a;
    wire [33:0] i_cmp3_i_20_i_mmul129_b;
    logic [33:0] i_cmp3_i_20_i_mmul129_o;
    wire [0:0] i_cmp3_i_20_i_mmul129_c;
    wire [33:0] i_cmp3_i_21_i_mmul134_a;
    wire [33:0] i_cmp3_i_21_i_mmul134_b;
    logic [33:0] i_cmp3_i_21_i_mmul134_o;
    wire [0:0] i_cmp3_i_21_i_mmul134_c;
    wire [33:0] i_cmp3_i_22_i_mmul139_a;
    wire [33:0] i_cmp3_i_22_i_mmul139_b;
    logic [33:0] i_cmp3_i_22_i_mmul139_o;
    wire [0:0] i_cmp3_i_22_i_mmul139_c;
    wire [33:0] i_cmp3_i_23_i_mmul144_a;
    wire [33:0] i_cmp3_i_23_i_mmul144_b;
    logic [33:0] i_cmp3_i_23_i_mmul144_o;
    wire [0:0] i_cmp3_i_23_i_mmul144_c;
    wire [33:0] i_cmp3_i_24_i_mmul149_a;
    wire [33:0] i_cmp3_i_24_i_mmul149_b;
    logic [33:0] i_cmp3_i_24_i_mmul149_o;
    wire [0:0] i_cmp3_i_24_i_mmul149_c;
    wire [33:0] i_cmp3_i_25_i_mmul154_a;
    wire [33:0] i_cmp3_i_25_i_mmul154_b;
    logic [33:0] i_cmp3_i_25_i_mmul154_o;
    wire [0:0] i_cmp3_i_25_i_mmul154_c;
    wire [33:0] i_cmp3_i_26_i_mmul159_a;
    wire [33:0] i_cmp3_i_26_i_mmul159_b;
    logic [33:0] i_cmp3_i_26_i_mmul159_o;
    wire [0:0] i_cmp3_i_26_i_mmul159_c;
    wire [33:0] i_cmp3_i_27_i_mmul164_a;
    wire [33:0] i_cmp3_i_27_i_mmul164_b;
    logic [33:0] i_cmp3_i_27_i_mmul164_o;
    wire [0:0] i_cmp3_i_27_i_mmul164_c;
    wire [33:0] i_cmp3_i_28_i_mmul169_a;
    wire [33:0] i_cmp3_i_28_i_mmul169_b;
    logic [33:0] i_cmp3_i_28_i_mmul169_o;
    wire [0:0] i_cmp3_i_28_i_mmul169_c;
    wire [33:0] i_cmp3_i_29_i_mmul174_a;
    wire [33:0] i_cmp3_i_29_i_mmul174_b;
    logic [33:0] i_cmp3_i_29_i_mmul174_o;
    wire [0:0] i_cmp3_i_29_i_mmul174_c;
    wire [33:0] i_cmp3_i_2_i_mmul39_a;
    wire [33:0] i_cmp3_i_2_i_mmul39_b;
    logic [33:0] i_cmp3_i_2_i_mmul39_o;
    wire [0:0] i_cmp3_i_2_i_mmul39_c;
    wire [33:0] i_cmp3_i_30_i_mmul179_a;
    wire [33:0] i_cmp3_i_30_i_mmul179_b;
    logic [33:0] i_cmp3_i_30_i_mmul179_o;
    wire [0:0] i_cmp3_i_30_i_mmul179_c;
    wire [33:0] i_cmp3_i_31_i_mmul184_a;
    wire [33:0] i_cmp3_i_31_i_mmul184_b;
    logic [33:0] i_cmp3_i_31_i_mmul184_o;
    wire [0:0] i_cmp3_i_31_i_mmul184_c;
    wire [33:0] i_cmp3_i_3_i_mmul44_a;
    wire [33:0] i_cmp3_i_3_i_mmul44_b;
    logic [33:0] i_cmp3_i_3_i_mmul44_o;
    wire [0:0] i_cmp3_i_3_i_mmul44_c;
    wire [33:0] i_cmp3_i_4_i_mmul49_a;
    wire [33:0] i_cmp3_i_4_i_mmul49_b;
    logic [33:0] i_cmp3_i_4_i_mmul49_o;
    wire [0:0] i_cmp3_i_4_i_mmul49_c;
    wire [33:0] i_cmp3_i_5_i_mmul54_a;
    wire [33:0] i_cmp3_i_5_i_mmul54_b;
    logic [33:0] i_cmp3_i_5_i_mmul54_o;
    wire [0:0] i_cmp3_i_5_i_mmul54_c;
    wire [33:0] i_cmp3_i_6_i_mmul59_a;
    wire [33:0] i_cmp3_i_6_i_mmul59_b;
    logic [33:0] i_cmp3_i_6_i_mmul59_o;
    wire [0:0] i_cmp3_i_6_i_mmul59_c;
    wire [33:0] i_cmp3_i_7_i_mmul64_a;
    wire [33:0] i_cmp3_i_7_i_mmul64_b;
    logic [33:0] i_cmp3_i_7_i_mmul64_o;
    wire [0:0] i_cmp3_i_7_i_mmul64_c;
    wire [33:0] i_cmp3_i_8_i_mmul69_a;
    wire [33:0] i_cmp3_i_8_i_mmul69_b;
    logic [33:0] i_cmp3_i_8_i_mmul69_o;
    wire [0:0] i_cmp3_i_8_i_mmul69_c;
    wire [33:0] i_cmp3_i_9_i_mmul74_a;
    wire [33:0] i_cmp3_i_9_i_mmul74_b;
    logic [33:0] i_cmp3_i_9_i_mmul74_o;
    wire [0:0] i_cmp3_i_9_i_mmul74_c;
    wire [33:0] i_cmp3_i_i_mmul28_a;
    wire [33:0] i_cmp3_i_i_mmul28_b;
    logic [33:0] i_cmp3_i_i_mmul28_o;
    wire [0:0] i_cmp3_i_i_mmul28_c;
    wire [0:0] i_first_cleanup_xor_mmul4_q;
    wire [0:0] i_first_cleanup_xor_or_mmul197_q;
    wire [33:0] i_fpga_indvars_iv_next_mmul209_a;
    wire [33:0] i_fpga_indvars_iv_next_mmul209_b;
    logic [33:0] i_fpga_indvars_iv_next_mmul209_o;
    wire [33:0] i_fpga_indvars_iv_next_mmul209_q;
    wire [0:0] i_fpga_indvars_iv_replace_phi_mmul14_s;
    reg [32:0] i_fpga_indvars_iv_replace_phi_mmul14_q;
    wire [32:0] i_inc_mmul205_a;
    wire [32:0] i_inc_mmul205_b;
    logic [32:0] i_inc_mmul205_o;
    wire [32:0] i_inc_mmul205_q;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_mmul11_mmul190_out_dest_data_out_0_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_mmul12_mmul211_out_dest_data_out_0_0;
    wire [32:0] i_llvm_fpga_ffwd_dest_i33_unnamed_mmul10_mmul12_out_dest_data_out_2_0;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_mmul6_out_data_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_mmul6_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_mmul6_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_mmul6_out_initeration_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_mmul6_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_mmul6_out_pipeline_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp914_pop13_mmul219_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp914_pop13_mmul219_out_feedback_stall_out_13;
    wire [1:0] i_llvm_fpga_pop_i2_cleanups_pop11_mmul2_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i2_cleanups_pop11_mmul2_out_feedback_stall_out_11;
    wire [1:0] i_llvm_fpga_pop_i2_initerations_pop10_mmul7_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i2_initerations_pop10_mmul7_out_feedback_stall_out_10;
    wire [31:0] i_llvm_fpga_pop_i32_i_027_pop615_pop14_mmul17_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_i_027_pop615_pop14_mmul17_out_feedback_stall_out_14;
    wire [31:0] i_llvm_fpga_pop_i32_k_024_pop8_mmul192_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_k_024_pop8_mmul192_out_feedback_stall_out_8;
    wire [31:0] i_llvm_fpga_pop_i32_n_sync_buffer313_pop12_mmul15_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_n_sync_buffer313_pop12_mmul15_out_feedback_stall_out_12;
    wire [32:0] i_llvm_fpga_pop_i33_fpga_indvars_iv_pop7_mmul13_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i33_fpga_indvars_iv_pop7_mmul13_out_feedback_stall_out_7;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_mmul11_out_feedback_out_1;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_mmul11_out_feedback_valid_out_1;
    wire [0:0] i_llvm_fpga_push_i1_notcmp914_push13_mmul220_out_feedback_out_13;
    wire [0:0] i_llvm_fpga_push_i1_notcmp914_push13_mmul220_out_feedback_valid_out_13;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_mmul214_out_feedback_out_2;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_mmul214_out_feedback_valid_out_2;
    wire [7:0] i_llvm_fpga_push_i2_cleanups_push11_mmul217_out_feedback_out_11;
    wire [0:0] i_llvm_fpga_push_i2_cleanups_push11_mmul217_out_feedback_valid_out_11;
    wire [7:0] i_llvm_fpga_push_i2_initerations_push10_mmul9_out_feedback_out_10;
    wire [0:0] i_llvm_fpga_push_i2_initerations_push10_mmul9_out_feedback_valid_out_10;
    wire [31:0] i_llvm_fpga_push_i32_i_027_pop615_push14_mmul18_out_feedback_out_14;
    wire [0:0] i_llvm_fpga_push_i32_i_027_pop615_push14_mmul18_out_feedback_valid_out_14;
    wire [31:0] i_llvm_fpga_push_i32_k_024_push8_mmul206_out_feedback_out_8;
    wire [0:0] i_llvm_fpga_push_i32_k_024_push8_mmul206_out_feedback_valid_out_8;
    wire [31:0] i_llvm_fpga_push_i32_n_sync_buffer313_push12_mmul16_out_feedback_out_12;
    wire [0:0] i_llvm_fpga_push_i32_n_sync_buffer313_push12_mmul16_out_feedback_valid_out_12;
    wire [63:0] i_llvm_fpga_push_i33_fpga_indvars_iv_push7_mmul210_out_feedback_out_7;
    wire [0:0] i_llvm_fpga_push_i33_fpga_indvars_iv_push7_mmul210_out_feedback_valid_out_7;
    wire [31:0] i_llvm_fpga_sync_buffer_i32_n_sync_buffer1_mmul198_out_buffer_out;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024f32_a_sync_buffer_mmul195_out_buffer_out;
    wire [9:0] i_llvm_fpga_sync_buffer_p1024f32_a_sync_buffer_mmul195_vt_const_9_q;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024f32_a_sync_buffer_mmul195_vt_join_q;
    wire [53:0] i_llvm_fpga_sync_buffer_p1024f32_a_sync_buffer_mmul195_vt_select_63_b;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024f32_b_sync_buffer_mmul202_out_buffer_out;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024f32_b_sync_buffer_mmul202_vt_join_q;
    wire [53:0] i_llvm_fpga_sync_buffer_p1024f32_b_sync_buffer_mmul202_vt_select_63_b;
    wire [0:0] i_masked_mmul218_qi;
    reg [0:0] i_masked_mmul218_q;
    wire [32:0] i_mul5_mmul189_a;
    wire [32:0] i_mul5_mmul189_b;
    logic [32:0] i_mul5_mmul189_o;
    wire [32:0] i_mul5_mmul189_q;
    wire [0:0] i_next_cleanups_mmul216_s;
    reg [1:0] i_next_cleanups_mmul216_q;
    wire [1:0] i_next_initerations_mmul8_vt_join_q;
    wire [0:0] i_next_initerations_mmul8_vt_select_0_b;
    wire [0:0] i_notcmp_mmul213_q;
    wire [0:0] i_or_mmul215_q;
    wire [30:0] i_shr_i_i_mmul27_vt_const_31_q;
    wire [31:0] i_shr_i_i_mmul27_vt_join_q;
    wire [0:0] i_shr_i_i_mmul27_vt_select_0_b;
    wire [0:0] i_spec_select10_i_mmul188_s;
    reg [31:0] i_spec_select10_i_mmul188_q;
    wire [0:0] i_spec_select_i_mmul24_s;
    reg [31:0] i_spec_select_i_mmul24_q;
    wire [32:0] i_sub4_i_10_i_mmul81_a;
    wire [32:0] i_sub4_i_10_i_mmul81_b;
    logic [32:0] i_sub4_i_10_i_mmul81_o;
    wire [32:0] i_sub4_i_10_i_mmul81_q;
    wire [32:0] i_sub4_i_11_i_mmul86_a;
    wire [32:0] i_sub4_i_11_i_mmul86_b;
    logic [32:0] i_sub4_i_11_i_mmul86_o;
    wire [32:0] i_sub4_i_11_i_mmul86_q;
    wire [32:0] i_sub4_i_12_i_mmul91_a;
    wire [32:0] i_sub4_i_12_i_mmul91_b;
    logic [32:0] i_sub4_i_12_i_mmul91_o;
    wire [32:0] i_sub4_i_12_i_mmul91_q;
    wire [32:0] i_sub4_i_13_i_mmul96_a;
    wire [32:0] i_sub4_i_13_i_mmul96_b;
    logic [32:0] i_sub4_i_13_i_mmul96_o;
    wire [32:0] i_sub4_i_13_i_mmul96_q;
    wire [32:0] i_sub4_i_14_i_mmul101_a;
    wire [32:0] i_sub4_i_14_i_mmul101_b;
    logic [32:0] i_sub4_i_14_i_mmul101_o;
    wire [32:0] i_sub4_i_14_i_mmul101_q;
    wire [32:0] i_sub4_i_15_i_mmul106_a;
    wire [32:0] i_sub4_i_15_i_mmul106_b;
    logic [32:0] i_sub4_i_15_i_mmul106_o;
    wire [32:0] i_sub4_i_15_i_mmul106_q;
    wire [32:0] i_sub4_i_16_i_mmul111_a;
    wire [32:0] i_sub4_i_16_i_mmul111_b;
    logic [32:0] i_sub4_i_16_i_mmul111_o;
    wire [32:0] i_sub4_i_16_i_mmul111_q;
    wire [32:0] i_sub4_i_17_i_mmul116_a;
    wire [32:0] i_sub4_i_17_i_mmul116_b;
    logic [32:0] i_sub4_i_17_i_mmul116_o;
    wire [32:0] i_sub4_i_17_i_mmul116_q;
    wire [32:0] i_sub4_i_18_i_mmul121_a;
    wire [32:0] i_sub4_i_18_i_mmul121_b;
    logic [32:0] i_sub4_i_18_i_mmul121_o;
    wire [32:0] i_sub4_i_18_i_mmul121_q;
    wire [32:0] i_sub4_i_19_i_mmul126_a;
    wire [32:0] i_sub4_i_19_i_mmul126_b;
    logic [32:0] i_sub4_i_19_i_mmul126_o;
    wire [32:0] i_sub4_i_19_i_mmul126_q;
    wire [32:0] i_sub4_i_1_i_mmul36_a;
    wire [32:0] i_sub4_i_1_i_mmul36_b;
    logic [32:0] i_sub4_i_1_i_mmul36_o;
    wire [32:0] i_sub4_i_1_i_mmul36_q;
    wire [32:0] i_sub4_i_20_i_mmul131_a;
    wire [32:0] i_sub4_i_20_i_mmul131_b;
    logic [32:0] i_sub4_i_20_i_mmul131_o;
    wire [32:0] i_sub4_i_20_i_mmul131_q;
    wire [32:0] i_sub4_i_21_i_mmul136_a;
    wire [32:0] i_sub4_i_21_i_mmul136_b;
    logic [32:0] i_sub4_i_21_i_mmul136_o;
    wire [32:0] i_sub4_i_21_i_mmul136_q;
    wire [32:0] i_sub4_i_22_i_mmul141_a;
    wire [32:0] i_sub4_i_22_i_mmul141_b;
    logic [32:0] i_sub4_i_22_i_mmul141_o;
    wire [32:0] i_sub4_i_22_i_mmul141_q;
    wire [32:0] i_sub4_i_23_i_mmul146_a;
    wire [32:0] i_sub4_i_23_i_mmul146_b;
    logic [32:0] i_sub4_i_23_i_mmul146_o;
    wire [32:0] i_sub4_i_23_i_mmul146_q;
    wire [32:0] i_sub4_i_24_i_mmul151_a;
    wire [32:0] i_sub4_i_24_i_mmul151_b;
    logic [32:0] i_sub4_i_24_i_mmul151_o;
    wire [32:0] i_sub4_i_24_i_mmul151_q;
    wire [32:0] i_sub4_i_25_i_mmul156_a;
    wire [32:0] i_sub4_i_25_i_mmul156_b;
    logic [32:0] i_sub4_i_25_i_mmul156_o;
    wire [32:0] i_sub4_i_25_i_mmul156_q;
    wire [32:0] i_sub4_i_26_i_mmul161_a;
    wire [32:0] i_sub4_i_26_i_mmul161_b;
    logic [32:0] i_sub4_i_26_i_mmul161_o;
    wire [32:0] i_sub4_i_26_i_mmul161_q;
    wire [32:0] i_sub4_i_27_i_mmul166_a;
    wire [32:0] i_sub4_i_27_i_mmul166_b;
    logic [32:0] i_sub4_i_27_i_mmul166_o;
    wire [32:0] i_sub4_i_27_i_mmul166_q;
    wire [32:0] i_sub4_i_28_i_mmul171_a;
    wire [32:0] i_sub4_i_28_i_mmul171_b;
    logic [32:0] i_sub4_i_28_i_mmul171_o;
    wire [32:0] i_sub4_i_28_i_mmul171_q;
    wire [32:0] i_sub4_i_29_i_mmul176_a;
    wire [32:0] i_sub4_i_29_i_mmul176_b;
    logic [32:0] i_sub4_i_29_i_mmul176_o;
    wire [32:0] i_sub4_i_29_i_mmul176_q;
    wire [32:0] i_sub4_i_2_i_mmul41_a;
    wire [32:0] i_sub4_i_2_i_mmul41_b;
    logic [32:0] i_sub4_i_2_i_mmul41_o;
    wire [32:0] i_sub4_i_2_i_mmul41_q;
    wire [32:0] i_sub4_i_30_i_mmul181_a;
    wire [32:0] i_sub4_i_30_i_mmul181_b;
    logic [32:0] i_sub4_i_30_i_mmul181_o;
    wire [32:0] i_sub4_i_30_i_mmul181_q;
    wire [32:0] i_sub4_i_31_i_mmul186_a;
    wire [32:0] i_sub4_i_31_i_mmul186_b;
    logic [32:0] i_sub4_i_31_i_mmul186_o;
    wire [32:0] i_sub4_i_31_i_mmul186_q;
    wire [32:0] i_sub4_i_3_i_mmul46_a;
    wire [32:0] i_sub4_i_3_i_mmul46_b;
    logic [32:0] i_sub4_i_3_i_mmul46_o;
    wire [32:0] i_sub4_i_3_i_mmul46_q;
    wire [32:0] i_sub4_i_4_i_mmul51_a;
    wire [32:0] i_sub4_i_4_i_mmul51_b;
    logic [32:0] i_sub4_i_4_i_mmul51_o;
    wire [32:0] i_sub4_i_4_i_mmul51_q;
    wire [32:0] i_sub4_i_5_i_mmul56_a;
    wire [32:0] i_sub4_i_5_i_mmul56_b;
    logic [32:0] i_sub4_i_5_i_mmul56_o;
    wire [32:0] i_sub4_i_5_i_mmul56_q;
    wire [32:0] i_sub4_i_6_i_mmul61_a;
    wire [32:0] i_sub4_i_6_i_mmul61_b;
    logic [32:0] i_sub4_i_6_i_mmul61_o;
    wire [32:0] i_sub4_i_6_i_mmul61_q;
    wire [32:0] i_sub4_i_7_i_mmul66_a;
    wire [32:0] i_sub4_i_7_i_mmul66_b;
    logic [32:0] i_sub4_i_7_i_mmul66_o;
    wire [32:0] i_sub4_i_7_i_mmul66_q;
    wire [32:0] i_sub4_i_8_i_mmul71_a;
    wire [32:0] i_sub4_i_8_i_mmul71_b;
    logic [32:0] i_sub4_i_8_i_mmul71_o;
    wire [32:0] i_sub4_i_8_i_mmul71_q;
    wire [32:0] i_sub4_i_9_i_mmul76_a;
    wire [32:0] i_sub4_i_9_i_mmul76_b;
    logic [32:0] i_sub4_i_9_i_mmul76_o;
    wire [32:0] i_sub4_i_9_i_mmul76_q;
    wire [32:0] i_sub4_i_i_mmul30_a;
    wire [32:0] i_sub4_i_i_mmul30_b;
    logic [32:0] i_sub4_i_i_mmul30_o;
    wire [32:0] i_sub4_i_i_mmul30_q;
    wire [0:0] i_unnamed_mmul100_s;
    reg [31:0] i_unnamed_mmul100_q;
    wire [0:0] i_unnamed_mmul105_s;
    reg [31:0] i_unnamed_mmul105_q;
    wire [0:0] i_unnamed_mmul110_s;
    reg [31:0] i_unnamed_mmul110_q;
    wire [0:0] i_unnamed_mmul115_s;
    reg [31:0] i_unnamed_mmul115_q;
    wire [0:0] i_unnamed_mmul120_s;
    reg [31:0] i_unnamed_mmul120_q;
    wire [0:0] i_unnamed_mmul125_s;
    reg [31:0] i_unnamed_mmul125_q;
    wire [0:0] i_unnamed_mmul130_s;
    reg [31:0] i_unnamed_mmul130_q;
    wire [0:0] i_unnamed_mmul135_s;
    reg [31:0] i_unnamed_mmul135_q;
    wire [0:0] i_unnamed_mmul140_s;
    reg [31:0] i_unnamed_mmul140_q;
    wire [0:0] i_unnamed_mmul145_s;
    reg [31:0] i_unnamed_mmul145_q;
    wire [0:0] i_unnamed_mmul150_s;
    reg [31:0] i_unnamed_mmul150_q;
    wire [0:0] i_unnamed_mmul155_s;
    reg [31:0] i_unnamed_mmul155_q;
    wire [0:0] i_unnamed_mmul160_s;
    reg [31:0] i_unnamed_mmul160_q;
    wire [0:0] i_unnamed_mmul165_s;
    reg [31:0] i_unnamed_mmul165_q;
    wire [0:0] i_unnamed_mmul170_s;
    reg [31:0] i_unnamed_mmul170_q;
    wire [0:0] i_unnamed_mmul175_s;
    reg [31:0] i_unnamed_mmul175_q;
    wire [0:0] i_unnamed_mmul180_s;
    reg [31:0] i_unnamed_mmul180_q;
    wire [0:0] i_unnamed_mmul185_s;
    reg [31:0] i_unnamed_mmul185_q;
    wire [0:0] i_unnamed_mmul191_q;
    wire [0:0] i_unnamed_mmul212_q;
    wire [0:0] i_unnamed_mmul26_s;
    reg [31:0] i_unnamed_mmul26_q;
    wire [0:0] i_unnamed_mmul29_s;
    reg [31:0] i_unnamed_mmul29_q;
    wire [0:0] i_unnamed_mmul35_s;
    reg [31:0] i_unnamed_mmul35_q;
    wire [0:0] i_unnamed_mmul40_s;
    reg [31:0] i_unnamed_mmul40_q;
    wire [0:0] i_unnamed_mmul45_s;
    reg [31:0] i_unnamed_mmul45_q;
    wire [0:0] i_unnamed_mmul50_s;
    reg [31:0] i_unnamed_mmul50_q;
    wire [0:0] i_unnamed_mmul55_s;
    reg [31:0] i_unnamed_mmul55_q;
    wire [0:0] i_unnamed_mmul60_s;
    reg [31:0] i_unnamed_mmul60_q;
    wire [0:0] i_unnamed_mmul65_s;
    reg [31:0] i_unnamed_mmul65_q;
    wire [0:0] i_unnamed_mmul70_s;
    reg [31:0] i_unnamed_mmul70_q;
    wire [0:0] i_unnamed_mmul75_s;
    reg [31:0] i_unnamed_mmul75_q;
    wire [0:0] i_unnamed_mmul80_s;
    reg [31:0] i_unnamed_mmul80_q;
    wire [0:0] i_unnamed_mmul85_s;
    reg [31:0] i_unnamed_mmul85_q;
    wire [0:0] i_unnamed_mmul90_s;
    reg [31:0] i_unnamed_mmul90_q;
    wire [0:0] i_unnamed_mmul95_s;
    reg [31:0] i_unnamed_mmul95_q;
    wire [31:0] bgTrunc_i_add13_i_mmul187_sel_x_b;
    wire [31:0] bgTrunc_i_add7_mmul200_sel_x_b;
    wire [31:0] bgTrunc_i_add8_i_mmul25_sel_x_b;
    wire [31:0] bgTrunc_i_add_i_mmul23_sel_x_b;
    wire [31:0] bgTrunc_i_add_mmul193_sel_x_b;
    wire [32:0] bgTrunc_i_fpga_indvars_iv_next_mmul209_sel_x_b;
    wire [31:0] bgTrunc_i_inc_mmul205_sel_x_b;
    wire [31:0] bgTrunc_i_mul5_mmul189_sel_x_b;
    wire [63:0] bgTrunc_i_mul6_mmul199_sel_x_in;
    wire [31:0] bgTrunc_i_mul6_mmul199_sel_x_b;
    wire [31:0] bgTrunc_i_sub4_i_10_i_mmul81_sel_x_b;
    wire [31:0] bgTrunc_i_sub4_i_11_i_mmul86_sel_x_b;
    wire [31:0] bgTrunc_i_sub4_i_12_i_mmul91_sel_x_b;
    wire [31:0] bgTrunc_i_sub4_i_13_i_mmul96_sel_x_b;
    wire [31:0] bgTrunc_i_sub4_i_14_i_mmul101_sel_x_b;
    wire [31:0] bgTrunc_i_sub4_i_15_i_mmul106_sel_x_b;
    wire [31:0] bgTrunc_i_sub4_i_16_i_mmul111_sel_x_b;
    wire [31:0] bgTrunc_i_sub4_i_17_i_mmul116_sel_x_b;
    wire [31:0] bgTrunc_i_sub4_i_18_i_mmul121_sel_x_b;
    wire [31:0] bgTrunc_i_sub4_i_19_i_mmul126_sel_x_b;
    wire [31:0] bgTrunc_i_sub4_i_1_i_mmul36_sel_x_b;
    wire [31:0] bgTrunc_i_sub4_i_20_i_mmul131_sel_x_b;
    wire [31:0] bgTrunc_i_sub4_i_21_i_mmul136_sel_x_b;
    wire [31:0] bgTrunc_i_sub4_i_22_i_mmul141_sel_x_b;
    wire [31:0] bgTrunc_i_sub4_i_23_i_mmul146_sel_x_b;
    wire [31:0] bgTrunc_i_sub4_i_24_i_mmul151_sel_x_b;
    wire [31:0] bgTrunc_i_sub4_i_25_i_mmul156_sel_x_b;
    wire [31:0] bgTrunc_i_sub4_i_26_i_mmul161_sel_x_b;
    wire [31:0] bgTrunc_i_sub4_i_27_i_mmul166_sel_x_b;
    wire [31:0] bgTrunc_i_sub4_i_28_i_mmul171_sel_x_b;
    wire [31:0] bgTrunc_i_sub4_i_29_i_mmul176_sel_x_b;
    wire [31:0] bgTrunc_i_sub4_i_2_i_mmul41_sel_x_b;
    wire [31:0] bgTrunc_i_sub4_i_30_i_mmul181_sel_x_b;
    wire [31:0] bgTrunc_i_sub4_i_31_i_mmul186_sel_x_b;
    wire [31:0] bgTrunc_i_sub4_i_3_i_mmul46_sel_x_b;
    wire [31:0] bgTrunc_i_sub4_i_4_i_mmul51_sel_x_b;
    wire [31:0] bgTrunc_i_sub4_i_5_i_mmul56_sel_x_b;
    wire [31:0] bgTrunc_i_sub4_i_6_i_mmul61_sel_x_b;
    wire [31:0] bgTrunc_i_sub4_i_7_i_mmul66_sel_x_b;
    wire [31:0] bgTrunc_i_sub4_i_8_i_mmul71_sel_x_b;
    wire [31:0] bgTrunc_i_sub4_i_9_i_mmul76_sel_x_b;
    wire [31:0] bgTrunc_i_sub4_i_i_mmul30_sel_x_b;
    wire [64:0] i_arrayidx2_mmul0_add_x_a;
    wire [64:0] i_arrayidx2_mmul0_add_x_b;
    logic [64:0] i_arrayidx2_mmul0_add_x_o;
    wire [64:0] i_arrayidx2_mmul0_add_x_q;
    wire [61:0] i_arrayidx2_mmul0_narrow_x_b;
    wire [63:0] i_arrayidx2_mmul0_shift_join_x_q;
    wire [63:0] i_arrayidx2_mmul0_dupName_0_trunc_sel_x_b;
    wire [64:0] i_arrayidx93_mmul0_add_x_a;
    wire [64:0] i_arrayidx93_mmul0_add_x_b;
    logic [64:0] i_arrayidx93_mmul0_add_x_o;
    wire [64:0] i_arrayidx93_mmul0_add_x_q;
    wire [61:0] i_arrayidx93_mmul0_narrow_x_b;
    wire [63:0] i_arrayidx93_mmul0_shift_join_x_q;
    wire [63:0] i_arrayidx93_mmul0_dupName_0_trunc_sel_x_b;
    wire [0:0] i_first_cleanup_mmul3_sel_x_b;
    wire [63:0] i_idxprom8_mmul201_sel_x_b;
    wire [63:0] i_idxprom_mmul194_sel_x_b;
    wire [0:0] i_last_initeration_mmul10_sel_x_b;
    wire [71:0] i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_10_shuffle_i_mmul0_NO_NAME_x_a;
    wire [31:0] i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_10_shuffle_i_mmul0_NO_NAME_x_q;
    wire [71:0] i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_10_shuffle_i_mmul0_dsdk_ip_adapt_bitjoin1_x_q;
    wire [71:0] i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_11_shuffle_i_mmul0_NO_NAME_x_a;
    wire [31:0] i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_11_shuffle_i_mmul0_NO_NAME_x_q;
    wire [71:0] i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_11_shuffle_i_mmul0_dsdk_ip_adapt_bitjoin1_x_q;
    wire [71:0] i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_12_shuffle_i_mmul0_NO_NAME_x_a;
    wire [31:0] i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_12_shuffle_i_mmul0_NO_NAME_x_q;
    wire [71:0] i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_12_shuffle_i_mmul0_dsdk_ip_adapt_bitjoin1_x_q;
    wire [71:0] i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_13_shuffle_i_mmul0_NO_NAME_x_a;
    wire [31:0] i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_13_shuffle_i_mmul0_NO_NAME_x_q;
    wire [71:0] i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_13_shuffle_i_mmul0_dsdk_ip_adapt_bitjoin1_x_q;
    wire [71:0] i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_14_shuffle_i_mmul0_NO_NAME_x_a;
    wire [31:0] i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_14_shuffle_i_mmul0_NO_NAME_x_q;
    wire [71:0] i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_14_shuffle_i_mmul0_dsdk_ip_adapt_bitjoin1_x_q;
    wire [71:0] i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_15_shuffle_i_mmul0_NO_NAME_x_a;
    wire [31:0] i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_15_shuffle_i_mmul0_NO_NAME_x_q;
    wire [71:0] i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_15_shuffle_i_mmul0_dsdk_ip_adapt_bitjoin1_x_q;
    wire [71:0] i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_16_shuffle_i_mmul0_NO_NAME_x_a;
    wire [31:0] i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_16_shuffle_i_mmul0_NO_NAME_x_q;
    wire [71:0] i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_16_shuffle_i_mmul0_dsdk_ip_adapt_bitjoin1_x_q;
    wire [71:0] i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_17_shuffle_i_mmul0_NO_NAME_x_a;
    wire [31:0] i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_17_shuffle_i_mmul0_NO_NAME_x_q;
    wire [71:0] i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_17_shuffle_i_mmul0_dsdk_ip_adapt_bitjoin1_x_q;
    wire [71:0] i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_18_shuffle_i_mmul0_NO_NAME_x_a;
    wire [31:0] i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_18_shuffle_i_mmul0_NO_NAME_x_q;
    wire [71:0] i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_18_shuffle_i_mmul0_dsdk_ip_adapt_bitjoin1_x_q;
    wire [71:0] i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_19_shuffle_i_mmul0_NO_NAME_x_a;
    wire [31:0] i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_19_shuffle_i_mmul0_NO_NAME_x_q;
    wire [71:0] i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_19_shuffle_i_mmul0_dsdk_ip_adapt_bitjoin1_x_q;
    wire [71:0] i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_1_shuffle_i_mmul0_NO_NAME_x_a;
    wire [31:0] i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_1_shuffle_i_mmul0_NO_NAME_x_q;
    wire [71:0] i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_1_shuffle_i_mmul0_dsdk_ip_adapt_bitjoin1_x_q;
    wire [71:0] i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_20_shuffle_i_mmul0_NO_NAME_x_a;
    wire [31:0] i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_20_shuffle_i_mmul0_NO_NAME_x_q;
    wire [71:0] i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_20_shuffle_i_mmul0_dsdk_ip_adapt_bitjoin1_x_q;
    wire [71:0] i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_21_shuffle_i_mmul0_NO_NAME_x_a;
    wire [31:0] i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_21_shuffle_i_mmul0_NO_NAME_x_q;
    wire [71:0] i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_21_shuffle_i_mmul0_dsdk_ip_adapt_bitjoin1_x_q;
    wire [71:0] i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_22_shuffle_i_mmul0_NO_NAME_x_a;
    wire [31:0] i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_22_shuffle_i_mmul0_NO_NAME_x_q;
    wire [71:0] i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_22_shuffle_i_mmul0_dsdk_ip_adapt_bitjoin1_x_q;
    wire [71:0] i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_23_shuffle_i_mmul0_NO_NAME_x_a;
    wire [31:0] i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_23_shuffle_i_mmul0_NO_NAME_x_q;
    wire [71:0] i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_23_shuffle_i_mmul0_dsdk_ip_adapt_bitjoin1_x_q;
    wire [71:0] i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_24_shuffle_i_mmul0_NO_NAME_x_a;
    wire [31:0] i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_24_shuffle_i_mmul0_NO_NAME_x_q;
    wire [71:0] i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_24_shuffle_i_mmul0_dsdk_ip_adapt_bitjoin1_x_q;
    wire [71:0] i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_25_shuffle_i_mmul0_NO_NAME_x_a;
    wire [31:0] i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_25_shuffle_i_mmul0_NO_NAME_x_q;
    wire [71:0] i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_25_shuffle_i_mmul0_dsdk_ip_adapt_bitjoin1_x_q;
    wire [71:0] i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_26_shuffle_i_mmul0_NO_NAME_x_a;
    wire [31:0] i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_26_shuffle_i_mmul0_NO_NAME_x_q;
    wire [71:0] i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_26_shuffle_i_mmul0_dsdk_ip_adapt_bitjoin1_x_q;
    wire [71:0] i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_27_shuffle_i_mmul0_NO_NAME_x_a;
    wire [31:0] i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_27_shuffle_i_mmul0_NO_NAME_x_q;
    wire [71:0] i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_27_shuffle_i_mmul0_dsdk_ip_adapt_bitjoin1_x_q;
    wire [71:0] i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_28_shuffle_i_mmul0_NO_NAME_x_a;
    wire [31:0] i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_28_shuffle_i_mmul0_NO_NAME_x_q;
    wire [71:0] i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_28_shuffle_i_mmul0_dsdk_ip_adapt_bitjoin1_x_q;
    wire [71:0] i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_29_shuffle_i_mmul0_NO_NAME_x_a;
    wire [31:0] i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_29_shuffle_i_mmul0_NO_NAME_x_q;
    wire [71:0] i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_29_shuffle_i_mmul0_dsdk_ip_adapt_bitjoin1_x_q;
    wire [71:0] i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_2_shuffle_i_mmul0_NO_NAME_x_a;
    wire [31:0] i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_2_shuffle_i_mmul0_NO_NAME_x_q;
    wire [71:0] i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_2_shuffle_i_mmul0_dsdk_ip_adapt_bitjoin1_x_q;
    wire [71:0] i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_30_shuffle_i_mmul0_NO_NAME_x_a;
    wire [31:0] i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_30_shuffle_i_mmul0_NO_NAME_x_q;
    wire [71:0] i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_30_shuffle_i_mmul0_dsdk_ip_adapt_bitjoin1_x_q;
    wire [71:0] i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_31_shuffle_i_mmul0_NO_NAME_x_a;
    wire [31:0] i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_31_shuffle_i_mmul0_NO_NAME_x_q;
    wire [71:0] i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_31_shuffle_i_mmul0_dsdk_ip_adapt_bitjoin1_x_q;
    wire [71:0] i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_3_shuffle_i_mmul0_NO_NAME_x_a;
    wire [31:0] i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_3_shuffle_i_mmul0_NO_NAME_x_q;
    wire [71:0] i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_3_shuffle_i_mmul0_dsdk_ip_adapt_bitjoin1_x_q;
    wire [71:0] i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_4_shuffle_i_mmul0_NO_NAME_x_a;
    wire [31:0] i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_4_shuffle_i_mmul0_NO_NAME_x_q;
    wire [71:0] i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_4_shuffle_i_mmul0_dsdk_ip_adapt_bitjoin1_x_q;
    wire [71:0] i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_5_shuffle_i_mmul0_NO_NAME_x_a;
    wire [31:0] i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_5_shuffle_i_mmul0_NO_NAME_x_q;
    wire [71:0] i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_5_shuffle_i_mmul0_dsdk_ip_adapt_bitjoin1_x_q;
    wire [71:0] i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_6_shuffle_i_mmul0_NO_NAME_x_a;
    wire [31:0] i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_6_shuffle_i_mmul0_NO_NAME_x_q;
    wire [71:0] i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_6_shuffle_i_mmul0_dsdk_ip_adapt_bitjoin1_x_q;
    wire [71:0] i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_7_shuffle_i_mmul0_NO_NAME_x_a;
    wire [31:0] i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_7_shuffle_i_mmul0_NO_NAME_x_q;
    wire [71:0] i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_7_shuffle_i_mmul0_dsdk_ip_adapt_bitjoin1_x_q;
    wire [71:0] i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_8_shuffle_i_mmul0_NO_NAME_x_a;
    wire [31:0] i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_8_shuffle_i_mmul0_NO_NAME_x_q;
    wire [71:0] i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_8_shuffle_i_mmul0_dsdk_ip_adapt_bitjoin1_x_q;
    wire [71:0] i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_9_shuffle_i_mmul0_NO_NAME_x_a;
    wire [31:0] i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_9_shuffle_i_mmul0_NO_NAME_x_q;
    wire [71:0] i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_9_shuffle_i_mmul0_dsdk_ip_adapt_bitjoin1_x_q;
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
    wire [0:0] i_exitcond_mmul207_cmp_nsign_q;
    wire [63:0] i_mul6_mmul199_sums_join_0_q;
    wire [50:0] i_mul6_mmul199_sums_align_1_q;
    wire [50:0] i_mul6_mmul199_sums_align_1_qint;
    wire [64:0] i_mul6_mmul199_sums_result_add_0_0_a;
    wire [64:0] i_mul6_mmul199_sums_result_add_0_0_b;
    logic [64:0] i_mul6_mmul199_sums_result_add_0_0_o;
    wire [64:0] i_mul6_mmul199_sums_result_add_0_0_q;
    wire [0:0] i_tobool2_i_mmul21_cmp_sign_q;
    wire [0:0] i_tobool_i_mmul19_cmp_sign_q;
    wire [0:0] leftShiftStage0Idx1Rng1_uid515_i_cleanups_shl_mmul0_shift_x_in;
    wire [0:0] leftShiftStage0Idx1Rng1_uid515_i_cleanups_shl_mmul0_shift_x_b;
    wire [1:0] leftShiftStage0Idx1_uid516_i_cleanups_shl_mmul0_shift_x_q;
    wire [0:0] leftShiftStage0_uid518_i_cleanups_shl_mmul0_shift_x_s;
    reg [1:0] leftShiftStage0_uid518_i_cleanups_shl_mmul0_shift_x_q;
    wire [0:0] rightShiftStage0Idx1Rng1_uid522_i_next_initerations_mmul0_shift_x_b;
    wire [1:0] rightShiftStage0Idx1_uid524_i_next_initerations_mmul0_shift_x_q;
    wire [0:0] rightShiftStage0_uid526_i_next_initerations_mmul0_shift_x_s;
    reg [1:0] rightShiftStage0_uid526_i_next_initerations_mmul0_shift_x_q;
    wire [30:0] rightShiftStage0Idx1Rng1_uid530_i_shr_i_i_mmul0_shift_x_b;
    wire [31:0] rightShiftStage0Idx1_uid532_i_shr_i_i_mmul0_shift_x_q;
    wire [0:0] rightShiftStage0_uid534_i_shr_i_i_mmul0_shift_x_s;
    reg [31:0] rightShiftStage0_uid534_i_shr_i_i_mmul0_shift_x_q;
    wire [29:0] rightShiftStage1Idx1Rng2_uid535_i_shr_i_i_mmul0_shift_x_b;
    wire [31:0] rightShiftStage1Idx1_uid537_i_shr_i_i_mmul0_shift_x_q;
    wire [0:0] rightShiftStage1_uid539_i_shr_i_i_mmul0_shift_x_s;
    reg [31:0] rightShiftStage1_uid539_i_shr_i_i_mmul0_shift_x_q;
    wire [27:0] rightShiftStage2Idx1Rng4_uid540_i_shr_i_i_mmul0_shift_x_b;
    wire [3:0] rightShiftStage2Idx1Pad4_uid541_i_shr_i_i_mmul0_shift_x_q;
    wire [31:0] rightShiftStage2Idx1_uid542_i_shr_i_i_mmul0_shift_x_q;
    wire [0:0] rightShiftStage2_uid544_i_shr_i_i_mmul0_shift_x_s;
    reg [31:0] rightShiftStage2_uid544_i_shr_i_i_mmul0_shift_x_q;
    wire [23:0] rightShiftStage3Idx1Rng8_uid545_i_shr_i_i_mmul0_shift_x_b;
    wire [7:0] rightShiftStage3Idx1Pad8_uid546_i_shr_i_i_mmul0_shift_x_q;
    wire [31:0] rightShiftStage3Idx1_uid547_i_shr_i_i_mmul0_shift_x_q;
    wire [0:0] rightShiftStage3_uid549_i_shr_i_i_mmul0_shift_x_s;
    reg [31:0] rightShiftStage3_uid549_i_shr_i_i_mmul0_shift_x_q;
    wire [15:0] rightShiftStage4Idx1Rng16_uid550_i_shr_i_i_mmul0_shift_x_b;
    wire [15:0] rightShiftStage4Idx1Pad16_uid551_i_shr_i_i_mmul0_shift_x_q;
    wire [31:0] rightShiftStage4Idx1_uid552_i_shr_i_i_mmul0_shift_x_q;
    wire [0:0] rightShiftStage4_uid554_i_shr_i_i_mmul0_shift_x_s;
    reg [31:0] rightShiftStage4_uid554_i_shr_i_i_mmul0_shift_x_q;
    wire i_mul6_mmul199_im0_cma_reset;
    wire [13:0] i_mul6_mmul199_im0_cma_a0;
    wire [13:0] i_mul6_mmul199_im0_cma_c0;
    wire [27:0] i_mul6_mmul199_im0_cma_s0;
    wire [27:0] i_mul6_mmul199_im0_cma_qq;
    wire [27:0] i_mul6_mmul199_im0_cma_q;
    wire i_mul6_mmul199_im0_cma_ena0;
    wire i_mul6_mmul199_im0_cma_ena1;
    wire i_mul6_mmul199_im0_cma_ena2;
    wire i_mul6_mmul199_im8_cma_reset;
    wire [17:0] i_mul6_mmul199_im8_cma_a0;
    wire [17:0] i_mul6_mmul199_im8_cma_c0;
    wire [35:0] i_mul6_mmul199_im8_cma_s0;
    wire [35:0] i_mul6_mmul199_im8_cma_qq;
    wire [35:0] i_mul6_mmul199_im8_cma_q;
    wire i_mul6_mmul199_im8_cma_ena0;
    wire i_mul6_mmul199_im8_cma_ena1;
    wire i_mul6_mmul199_im8_cma_ena2;
    wire i_mul6_mmul199_ma3_cma_reset;
    wire [13:0] i_mul6_mmul199_ma3_cma_a0;
    wire [17:0] i_mul6_mmul199_ma3_cma_c0;
    wire [13:0] i_mul6_mmul199_ma3_cma_a1;
    wire [17:0] i_mul6_mmul199_ma3_cma_c1;
    wire [32:0] i_mul6_mmul199_ma3_cma_s0;
    wire [32:0] i_mul6_mmul199_ma3_cma_qq;
    wire [32:0] i_mul6_mmul199_ma3_cma_q;
    wire i_mul6_mmul199_ma3_cma_ena0;
    wire i_mul6_mmul199_ma3_cma_ena1;
    wire i_mul6_mmul199_ma3_cma_ena2;
    wire [13:0] i_mul6_mmul199_bs1_merged_bit_select_b;
    wire [17:0] i_mul6_mmul199_bs1_merged_bit_select_c;
    wire [13:0] i_mul6_mmul199_bs2_merged_bit_select_b;
    wire [17:0] i_mul6_mmul199_bs2_merged_bit_select_c;
    reg [0:0] redist0_i_tobool_i_mmul19_cmp_sign_q_48_q;
    reg [0:0] redist1_sync_together279_aunroll_x_in_c0_eni4_1_tpl_1_q;
    reg [0:0] redist2_sync_together279_aunroll_x_in_c0_eni4_1_tpl_48_q;
    reg [0:0] redist3_sync_together279_aunroll_x_in_c0_eni4_1_tpl_52_q;
    reg [0:0] redist3_sync_together279_aunroll_x_in_c0_eni4_1_tpl_52_delay_0;
    reg [0:0] redist3_sync_together279_aunroll_x_in_c0_eni4_1_tpl_52_delay_1;
    reg [0:0] redist3_sync_together279_aunroll_x_in_c0_eni4_1_tpl_52_delay_2;
    reg [31:0] redist4_sync_together279_aunroll_x_in_c0_eni4_2_tpl_1_q;
    reg [31:0] redist5_sync_together279_aunroll_x_in_c0_eni4_3_tpl_1_q;
    reg [0:0] redist6_sync_together279_aunroll_x_in_c0_eni4_4_tpl_52_q;
    reg [0:0] redist7_sync_together279_aunroll_x_in_i_valid_1_q;
    reg [0:0] redist8_sync_together279_aunroll_x_in_i_valid_47_q;
    reg [0:0] redist9_sync_together279_aunroll_x_in_i_valid_48_q;
    reg [0:0] redist10_sync_together279_aunroll_x_in_i_valid_51_q;
    reg [0:0] redist10_sync_together279_aunroll_x_in_i_valid_51_delay_0;
    reg [0:0] redist10_sync_together279_aunroll_x_in_i_valid_51_delay_1;
    reg [31:0] redist11_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_9_shuffle_i_mmul0_NO_NAME_x_q_1_q;
    reg [31:0] redist12_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_8_shuffle_i_mmul0_NO_NAME_x_q_1_q;
    reg [31:0] redist13_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_8_shuffle_i_mmul0_NO_NAME_x_q_2_q;
    reg [31:0] redist14_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_7_shuffle_i_mmul0_NO_NAME_x_q_1_q;
    reg [31:0] redist15_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_6_shuffle_i_mmul0_NO_NAME_x_q_1_q;
    reg [31:0] redist16_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_5_shuffle_i_mmul0_NO_NAME_x_q_1_q;
    reg [31:0] redist17_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_4_shuffle_i_mmul0_NO_NAME_x_q_1_q;
    reg [31:0] redist18_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_4_shuffle_i_mmul0_NO_NAME_x_q_2_q;
    reg [31:0] redist19_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_3_shuffle_i_mmul0_NO_NAME_x_q_1_q;
    reg [31:0] redist20_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_31_shuffle_i_mmul0_NO_NAME_x_q_1_q;
    reg [31:0] redist21_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_30_shuffle_i_mmul0_NO_NAME_x_q_1_q;
    reg [31:0] redist22_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_2_shuffle_i_mmul0_NO_NAME_x_q_1_q;
    reg [31:0] redist23_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_2_shuffle_i_mmul0_NO_NAME_x_q_2_q;
    reg [31:0] redist24_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_29_shuffle_i_mmul0_NO_NAME_x_q_1_q;
    reg [31:0] redist25_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_28_shuffle_i_mmul0_NO_NAME_x_q_1_q;
    reg [31:0] redist26_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_27_shuffle_i_mmul0_NO_NAME_x_q_1_q;
    reg [31:0] redist27_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_26_shuffle_i_mmul0_NO_NAME_x_q_1_q;
    reg [31:0] redist28_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_25_shuffle_i_mmul0_NO_NAME_x_q_1_q;
    reg [31:0] redist29_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_24_shuffle_i_mmul0_NO_NAME_x_q_1_q;
    reg [31:0] redist30_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_23_shuffle_i_mmul0_NO_NAME_x_q_1_q;
    reg [31:0] redist31_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_22_shuffle_i_mmul0_NO_NAME_x_q_1_q;
    reg [31:0] redist32_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_21_shuffle_i_mmul0_NO_NAME_x_q_1_q;
    reg [31:0] redist33_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_20_shuffle_i_mmul0_NO_NAME_x_q_1_q;
    reg [31:0] redist34_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_1_shuffle_i_mmul0_NO_NAME_x_q_1_q;
    reg [31:0] redist35_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_19_shuffle_i_mmul0_NO_NAME_x_q_1_q;
    reg [31:0] redist36_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_18_shuffle_i_mmul0_NO_NAME_x_q_1_q;
    reg [31:0] redist37_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_17_shuffle_i_mmul0_NO_NAME_x_q_1_q;
    reg [31:0] redist38_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_16_shuffle_i_mmul0_NO_NAME_x_q_1_q;
    reg [31:0] redist39_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_15_shuffle_i_mmul0_NO_NAME_x_q_1_q;
    reg [31:0] redist40_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_14_shuffle_i_mmul0_NO_NAME_x_q_1_q;
    reg [31:0] redist41_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_13_shuffle_i_mmul0_NO_NAME_x_q_1_q;
    reg [31:0] redist42_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_12_shuffle_i_mmul0_NO_NAME_x_q_1_q;
    reg [31:0] redist43_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_11_shuffle_i_mmul0_NO_NAME_x_q_1_q;
    reg [31:0] redist44_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_10_shuffle_i_mmul0_NO_NAME_x_q_1_q;
    reg [31:0] redist45_bgTrunc_i_sub4_i_9_i_mmul76_sel_x_b_1_q;
    reg [31:0] redist46_bgTrunc_i_sub4_i_5_i_mmul56_sel_x_b_1_q;
    reg [31:0] redist47_bgTrunc_i_sub4_i_31_i_mmul186_sel_x_b_1_q;
    reg [31:0] redist48_bgTrunc_i_sub4_i_29_i_mmul176_sel_x_b_1_q;
    reg [31:0] redist49_bgTrunc_i_sub4_i_27_i_mmul166_sel_x_b_1_q;
    reg [31:0] redist50_bgTrunc_i_sub4_i_25_i_mmul156_sel_x_b_1_q;
    reg [31:0] redist51_bgTrunc_i_sub4_i_23_i_mmul146_sel_x_b_1_q;
    reg [31:0] redist52_bgTrunc_i_sub4_i_21_i_mmul136_sel_x_b_1_q;
    reg [31:0] redist53_bgTrunc_i_sub4_i_19_i_mmul126_sel_x_b_1_q;
    reg [31:0] redist54_bgTrunc_i_sub4_i_17_i_mmul116_sel_x_b_1_q;
    reg [31:0] redist55_bgTrunc_i_sub4_i_15_i_mmul106_sel_x_b_1_q;
    reg [31:0] redist56_bgTrunc_i_sub4_i_13_i_mmul96_sel_x_b_1_q;
    reg [31:0] redist57_bgTrunc_i_sub4_i_11_i_mmul86_sel_x_b_1_q;
    reg [31:0] redist58_bgTrunc_i_mul6_mmul199_sel_x_b_1_q;
    reg [31:0] redist59_bgTrunc_i_add_mmul193_sel_x_b_1_q;
    reg [31:0] redist60_bgTrunc_i_add_i_mmul23_sel_x_b_1_q;
    reg [31:0] redist61_i_unnamed_mmul26_q_2_q;
    reg [31:0] redist62_i_unnamed_mmul26_q_3_q;
    reg [31:0] redist63_i_unnamed_mmul26_q_4_q;
    reg [31:0] redist64_i_unnamed_mmul26_q_5_q;
    reg [31:0] redist65_i_unnamed_mmul26_q_6_q;
    reg [31:0] redist66_i_unnamed_mmul26_q_7_q;
    reg [31:0] redist67_i_unnamed_mmul26_q_8_q;
    reg [31:0] redist68_i_unnamed_mmul26_q_9_q;
    reg [31:0] redist69_i_unnamed_mmul26_q_10_q;
    reg [31:0] redist70_i_unnamed_mmul26_q_11_q;
    reg [31:0] redist71_i_unnamed_mmul26_q_12_q;
    reg [31:0] redist72_i_unnamed_mmul26_q_13_q;
    reg [31:0] redist73_i_unnamed_mmul26_q_14_q;
    reg [31:0] redist74_i_unnamed_mmul26_q_15_q;
    reg [31:0] redist75_i_unnamed_mmul26_q_16_q;
    reg [31:0] redist76_i_unnamed_mmul26_q_17_q;
    reg [31:0] redist77_i_unnamed_mmul26_q_18_q;
    reg [31:0] redist78_i_unnamed_mmul26_q_19_q;
    reg [31:0] redist79_i_unnamed_mmul26_q_20_q;
    reg [31:0] redist80_i_unnamed_mmul26_q_21_q;
    reg [31:0] redist81_i_unnamed_mmul26_q_22_q;
    reg [31:0] redist82_i_unnamed_mmul26_q_23_q;
    reg [31:0] redist83_i_unnamed_mmul26_q_24_q;
    reg [31:0] redist84_i_unnamed_mmul26_q_25_q;
    reg [31:0] redist85_i_unnamed_mmul26_q_26_q;
    reg [31:0] redist86_i_unnamed_mmul26_q_27_q;
    reg [31:0] redist87_i_unnamed_mmul26_q_28_q;
    reg [31:0] redist88_i_unnamed_mmul26_q_29_q;
    reg [31:0] redist89_i_unnamed_mmul26_q_30_q;
    reg [31:0] redist90_i_unnamed_mmul26_q_31_q;
    reg [31:0] redist91_i_unnamed_mmul26_q_32_q;
    reg [31:0] redist92_i_unnamed_mmul26_q_33_q;
    reg [31:0] redist93_i_unnamed_mmul26_q_34_q;
    reg [31:0] redist94_i_unnamed_mmul26_q_35_q;
    reg [31:0] redist95_i_unnamed_mmul26_q_36_q;
    reg [31:0] redist96_i_unnamed_mmul26_q_37_q;
    reg [31:0] redist97_i_unnamed_mmul26_q_38_q;
    reg [31:0] redist98_i_unnamed_mmul26_q_39_q;
    reg [31:0] redist99_i_unnamed_mmul26_q_40_q;
    reg [31:0] redist100_i_unnamed_mmul26_q_41_q;
    reg [31:0] redist101_i_unnamed_mmul26_q_42_q;
    reg [31:0] redist102_i_unnamed_mmul26_q_43_q;
    reg [31:0] redist103_i_unnamed_mmul26_q_44_q;
    reg [31:0] redist104_i_unnamed_mmul26_q_45_q;
    reg [31:0] redist105_i_unnamed_mmul26_q_46_q;
    reg [31:0] redist106_i_unnamed_mmul26_q_47_q;
    reg [31:0] redist107_i_unnamed_mmul26_q_48_q;
    reg [31:0] redist108_i_spec_select_i_mmul24_q_1_q;
    reg [31:0] redist109_i_spec_select_i_mmul24_q_2_q;
    reg [31:0] redist110_i_spec_select_i_mmul24_q_4_q;
    reg [31:0] redist110_i_spec_select_i_mmul24_q_4_delay_0;
    reg [31:0] redist111_i_spec_select_i_mmul24_q_5_q;
    reg [31:0] redist112_i_spec_select_i_mmul24_q_7_q;
    reg [31:0] redist112_i_spec_select_i_mmul24_q_7_delay_0;
    reg [31:0] redist113_i_spec_select_i_mmul24_q_9_q;
    reg [31:0] redist113_i_spec_select_i_mmul24_q_9_delay_0;
    reg [31:0] redist114_i_spec_select_i_mmul24_q_10_q;
    reg [31:0] redist115_i_spec_select_i_mmul24_q_11_q;
    reg [31:0] redist116_i_spec_select_i_mmul24_q_13_q;
    reg [31:0] redist116_i_spec_select_i_mmul24_q_13_delay_0;
    reg [31:0] redist117_i_spec_select_i_mmul24_q_15_q;
    reg [31:0] redist117_i_spec_select_i_mmul24_q_15_delay_0;
    reg [31:0] redist118_i_spec_select_i_mmul24_q_16_q;
    reg [31:0] redist119_i_spec_select_i_mmul24_q_18_q;
    reg [31:0] redist119_i_spec_select_i_mmul24_q_18_delay_0;
    reg [31:0] redist120_i_spec_select_i_mmul24_q_19_q;
    reg [31:0] redist121_i_spec_select_i_mmul24_q_21_q;
    reg [31:0] redist121_i_spec_select_i_mmul24_q_21_delay_0;
    reg [31:0] redist122_i_spec_select_i_mmul24_q_22_q;
    reg [31:0] redist123_i_spec_select_i_mmul24_q_24_q;
    reg [31:0] redist123_i_spec_select_i_mmul24_q_24_delay_0;
    reg [31:0] redist124_i_spec_select_i_mmul24_q_25_q;
    reg [31:0] redist125_i_spec_select_i_mmul24_q_27_q;
    reg [31:0] redist125_i_spec_select_i_mmul24_q_27_delay_0;
    reg [31:0] redist126_i_spec_select_i_mmul24_q_28_q;
    reg [31:0] redist127_i_spec_select_i_mmul24_q_30_q;
    reg [31:0] redist127_i_spec_select_i_mmul24_q_30_delay_0;
    reg [31:0] redist128_i_spec_select_i_mmul24_q_31_q;
    reg [31:0] redist129_i_spec_select_i_mmul24_q_33_q;
    reg [31:0] redist129_i_spec_select_i_mmul24_q_33_delay_0;
    reg [31:0] redist130_i_spec_select_i_mmul24_q_34_q;
    reg [31:0] redist131_i_spec_select_i_mmul24_q_36_q;
    reg [31:0] redist131_i_spec_select_i_mmul24_q_36_delay_0;
    reg [31:0] redist132_i_spec_select_i_mmul24_q_37_q;
    reg [31:0] redist133_i_spec_select_i_mmul24_q_39_q;
    reg [31:0] redist133_i_spec_select_i_mmul24_q_39_delay_0;
    reg [31:0] redist134_i_spec_select_i_mmul24_q_40_q;
    reg [31:0] redist135_i_spec_select_i_mmul24_q_42_q;
    reg [31:0] redist135_i_spec_select_i_mmul24_q_42_delay_0;
    reg [31:0] redist136_i_spec_select_i_mmul24_q_43_q;
    reg [31:0] redist137_i_spec_select_i_mmul24_q_45_q;
    reg [31:0] redist137_i_spec_select_i_mmul24_q_45_delay_0;
    reg [31:0] redist138_i_spec_select_i_mmul24_q_46_q;
    reg [31:0] redist139_i_spec_select10_i_mmul188_q_2_q;
    reg [31:0] redist140_i_shr_i_i_mmul27_vt_join_q_1_q;
    reg [0:0] redist141_i_masked_mmul218_q_51_q;
    reg [31:0] redist142_i_llvm_fpga_pop_i32_k_024_pop8_mmul192_out_data_out_1_q;
    reg [31:0] redist143_i_llvm_fpga_pop_i32_k_024_pop8_mmul192_out_data_out_3_q;
    reg [31:0] redist143_i_llvm_fpga_pop_i32_k_024_pop8_mmul192_out_data_out_3_delay_0;
    reg [31:0] redist144_i_llvm_fpga_pop_i32_i_027_pop615_pop14_mmul17_out_data_out_1_q;
    reg [31:0] redist146_i_llvm_fpga_pop_i32_i_027_pop615_pop14_mmul17_out_data_out_51_q;
    reg [0:0] redist147_i_llvm_fpga_pipeline_keep_going_mmul6_out_data_out_1_q;
    reg [0:0] redist148_i_llvm_fpga_pipeline_keep_going_mmul6_out_data_out_49_q;
    reg [0:0] redist149_i_llvm_fpga_pipeline_keep_going_mmul6_out_data_out_52_q;
    reg [0:0] redist149_i_llvm_fpga_pipeline_keep_going_mmul6_out_data_out_52_delay_0;
    reg [0:0] redist149_i_llvm_fpga_pipeline_keep_going_mmul6_out_data_out_52_delay_1;
    reg [0:0] redist150_i_first_cleanup_xor_mmul4_q_51_q;
    reg [31:0] redist145_i_llvm_fpga_pop_i32_i_027_pop615_pop14_mmul17_out_data_out_50_outputreg0_q;
    wire redist145_i_llvm_fpga_pop_i32_i_027_pop615_pop14_mmul17_out_data_out_50_mem_reset0;
    wire [31:0] redist145_i_llvm_fpga_pop_i32_i_027_pop615_pop14_mmul17_out_data_out_50_mem_ia;
    wire [5:0] redist145_i_llvm_fpga_pop_i32_i_027_pop615_pop14_mmul17_out_data_out_50_mem_aa;
    wire [5:0] redist145_i_llvm_fpga_pop_i32_i_027_pop615_pop14_mmul17_out_data_out_50_mem_ab;
    wire [31:0] redist145_i_llvm_fpga_pop_i32_i_027_pop615_pop14_mmul17_out_data_out_50_mem_iq;
    wire [31:0] redist145_i_llvm_fpga_pop_i32_i_027_pop615_pop14_mmul17_out_data_out_50_mem_q;
    wire [5:0] redist145_i_llvm_fpga_pop_i32_i_027_pop615_pop14_mmul17_out_data_out_50_rdcnt_q;
    (* preserve *) reg [5:0] redist145_i_llvm_fpga_pop_i32_i_027_pop615_pop14_mmul17_out_data_out_50_rdcnt_i;
    (* preserve *) reg redist145_i_llvm_fpga_pop_i32_i_027_pop615_pop14_mmul17_out_data_out_50_rdcnt_eq;
    reg [5:0] redist145_i_llvm_fpga_pop_i32_i_027_pop615_pop14_mmul17_out_data_out_50_wraddr_q;
    wire [6:0] redist145_i_llvm_fpga_pop_i32_i_027_pop615_pop14_mmul17_out_data_out_50_mem_last_q;
    wire [6:0] redist145_i_llvm_fpga_pop_i32_i_027_pop615_pop14_mmul17_out_data_out_50_cmp_b;
    wire [0:0] redist145_i_llvm_fpga_pop_i32_i_027_pop615_pop14_mmul17_out_data_out_50_cmp_q;
    reg [0:0] redist145_i_llvm_fpga_pop_i32_i_027_pop615_pop14_mmul17_out_data_out_50_cmpReg_q;
    wire [0:0] redist145_i_llvm_fpga_pop_i32_i_027_pop615_pop14_mmul17_out_data_out_50_notEnable_q;
    wire [0:0] redist145_i_llvm_fpga_pop_i32_i_027_pop615_pop14_mmul17_out_data_out_50_nor_q;
    reg [0:0] redist145_i_llvm_fpga_pop_i32_i_027_pop615_pop14_mmul17_out_data_out_50_sticky_ena_q;
    wire [0:0] redist145_i_llvm_fpga_pop_i32_i_027_pop615_pop14_mmul17_out_data_out_50_enaAnd_q;


    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist7_sync_together279_aunroll_x_in_i_valid_1(DELAY,567)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_sync_together279_aunroll_x_in_i_valid_1_q <= '0;
        end
        else
        begin
            redist7_sync_together279_aunroll_x_in_i_valid_1_q <= $unsigned(in_i_valid);
        end
    end

    // redist147_i_llvm_fpga_pipeline_keep_going_mmul6_out_data_out_1(DELAY,707)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist147_i_llvm_fpga_pipeline_keep_going_mmul6_out_data_out_1_q <= '0;
        end
        else
        begin
            redist147_i_llvm_fpga_pipeline_keep_going_mmul6_out_data_out_1_q <= $unsigned(i_llvm_fpga_pipeline_keep_going_mmul6_out_data_out);
        end
    end

    // leftShiftStage0Idx1Rng1_uid515_i_cleanups_shl_mmul0_shift_x(BITSELECT,514)@2
    assign leftShiftStage0Idx1Rng1_uid515_i_cleanups_shl_mmul0_shift_x_in = i_llvm_fpga_pop_i2_cleanups_pop11_mmul2_out_data_out[0:0];
    assign leftShiftStage0Idx1Rng1_uid515_i_cleanups_shl_mmul0_shift_x_b = leftShiftStage0Idx1Rng1_uid515_i_cleanups_shl_mmul0_shift_x_in[0:0];

    // leftShiftStage0Idx1_uid516_i_cleanups_shl_mmul0_shift_x(BITJOIN,515)@2
    assign leftShiftStage0Idx1_uid516_i_cleanups_shl_mmul0_shift_x_q = {leftShiftStage0Idx1Rng1_uid515_i_cleanups_shl_mmul0_shift_x_b, GND_q};

    // leftShiftStage0_uid518_i_cleanups_shl_mmul0_shift_x(MUX,517)@2
    assign leftShiftStage0_uid518_i_cleanups_shl_mmul0_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid518_i_cleanups_shl_mmul0_shift_x_s or i_llvm_fpga_pop_i2_cleanups_pop11_mmul2_out_data_out or leftShiftStage0Idx1_uid516_i_cleanups_shl_mmul0_shift_x_q)
    begin
        unique case (leftShiftStage0_uid518_i_cleanups_shl_mmul0_shift_x_s)
            1'b0 : leftShiftStage0_uid518_i_cleanups_shl_mmul0_shift_x_q = i_llvm_fpga_pop_i2_cleanups_pop11_mmul2_out_data_out;
            1'b1 : leftShiftStage0_uid518_i_cleanups_shl_mmul0_shift_x_q = leftShiftStage0Idx1_uid516_i_cleanups_shl_mmul0_shift_x_q;
            default : leftShiftStage0_uid518_i_cleanups_shl_mmul0_shift_x_q = 2'b0;
        endcase
    end

    // i_cleanups_shl_mmul5_vt_select_1(BITSELECT,89)@2
    assign i_cleanups_shl_mmul5_vt_select_1_b = leftShiftStage0_uid518_i_cleanups_shl_mmul0_shift_x_q[1:1];

    // i_cleanups_shl_mmul5_vt_join(BITJOIN,88)@2
    assign i_cleanups_shl_mmul5_vt_join_q = {i_cleanups_shl_mmul5_vt_select_1_b, GND_q};

    // i_first_cleanup_xor_mmul4(LOGICAL,124)@2
    assign i_first_cleanup_xor_mmul4_q = i_first_cleanup_mmul3_sel_x_b ^ VCC_q;

    // i_notcmp_mmul213(LOGICAL,170)@2
    assign i_notcmp_mmul213_q = i_unnamed_mmul212_q ^ VCC_q;

    // i_or_mmul215(LOGICAL,171)@2
    assign i_or_mmul215_q = i_notcmp_mmul213_q | i_first_cleanup_xor_mmul4_q;

    // i_next_cleanups_mmul216(MUX,166)@2
    assign i_next_cleanups_mmul216_s = i_or_mmul215_q;
    always @(i_next_cleanups_mmul216_s or i_llvm_fpga_pop_i2_cleanups_pop11_mmul2_out_data_out or i_cleanups_shl_mmul5_vt_join_q)
    begin
        unique case (i_next_cleanups_mmul216_s)
            1'b0 : i_next_cleanups_mmul216_q = i_llvm_fpga_pop_i2_cleanups_pop11_mmul2_out_data_out;
            1'b1 : i_next_cleanups_mmul216_q = i_cleanups_shl_mmul5_vt_join_q;
            default : i_next_cleanups_mmul216_q = 2'b0;
        endcase
    end

    // i_llvm_fpga_push_i2_cleanups_push11_mmul217(BLACKBOX,148)@2
    // out out_feedback_out_11@20000000
    // out out_feedback_valid_out_11@20000000
    mmul_i_llvm_fpga_push_i2_cleanups_push11_0 thei_llvm_fpga_push_i2_cleanups_push11_mmul217 (
        .in_data_in(i_next_cleanups_mmul216_q),
        .in_feedback_stall_in_11(i_llvm_fpga_pop_i2_cleanups_pop11_mmul2_out_feedback_stall_out_11),
        .in_keep_going(redist147_i_llvm_fpga_pipeline_keep_going_mmul6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist7_sync_together279_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_11(i_llvm_fpga_push_i2_cleanups_push11_mmul217_out_feedback_out_11),
        .out_feedback_valid_out_11(i_llvm_fpga_push_i2_cleanups_push11_mmul217_out_feedback_valid_out_11),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist1_sync_together279_aunroll_x_in_c0_eni4_1_tpl_1(DELAY,561)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together279_aunroll_x_in_c0_eni4_1_tpl_1_q <= '0;
        end
        else
        begin
            redist1_sync_together279_aunroll_x_in_c0_eni4_1_tpl_1_q <= $unsigned(in_c0_eni4_1_tpl);
        end
    end

    // c_i2_1245(CONSTANT,67)
    assign c_i2_1245_q = $unsigned(2'b01);

    // i_llvm_fpga_pop_i2_cleanups_pop11_mmul2(BLACKBOX,139)@2
    // out out_feedback_stall_out_11@20000000
    mmul_i_llvm_fpga_pop_i2_cleanups_pop11_0 thei_llvm_fpga_pop_i2_cleanups_pop11_mmul2 (
        .in_data_in(c_i2_1245_q),
        .in_dir(redist1_sync_together279_aunroll_x_in_c0_eni4_1_tpl_1_q),
        .in_feedback_in_11(i_llvm_fpga_push_i2_cleanups_push11_mmul217_out_feedback_out_11),
        .in_feedback_valid_in_11(i_llvm_fpga_push_i2_cleanups_push11_mmul217_out_feedback_valid_out_11),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist7_sync_together279_aunroll_x_in_i_valid_1_q),
        .out_data_out(i_llvm_fpga_pop_i2_cleanups_pop11_mmul2_out_data_out),
        .out_feedback_stall_out_11(i_llvm_fpga_pop_i2_cleanups_pop11_mmul2_out_feedback_stall_out_11),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_first_cleanup_mmul3_sel_x(BITSELECT,319)@2
    assign i_first_cleanup_mmul3_sel_x_b = i_llvm_fpga_pop_i2_cleanups_pop11_mmul2_out_data_out[0:0];

    // i_llvm_fpga_ffwd_dest_i33_unnamed_mmul10_mmul12(BLACKBOX,136)@2
    mmul_i_llvm_fpga_ffwd_dest_i33_unnamed_10_mmul0 thei_llvm_fpga_ffwd_dest_i33_unnamed_mmul10_mmul12 (
        .in_intel_reserved_ffwd_2_0(in_intel_reserved_ffwd_2_0),
        .in_stall_in(GND_q),
        .in_valid_in(redist7_sync_together279_aunroll_x_in_i_valid_1_q),
        .out_dest_data_out_2_0(i_llvm_fpga_ffwd_dest_i33_unnamed_mmul10_mmul12_out_dest_data_out_2_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i33_1254(CONSTANT,71)
    assign c_i33_1254_q = $unsigned(33'b111111111111111111111111111111111);

    // i_fpga_indvars_iv_next_mmul209(ADD,126)@2
    assign i_fpga_indvars_iv_next_mmul209_a = {1'b0, i_fpga_indvars_iv_replace_phi_mmul14_q};
    assign i_fpga_indvars_iv_next_mmul209_b = {1'b0, c_i33_1254_q};
    assign i_fpga_indvars_iv_next_mmul209_o = $unsigned(i_fpga_indvars_iv_next_mmul209_a) + $unsigned(i_fpga_indvars_iv_next_mmul209_b);
    assign i_fpga_indvars_iv_next_mmul209_q = i_fpga_indvars_iv_next_mmul209_o[33:0];

    // bgTrunc_i_fpga_indvars_iv_next_mmul209_sel_x(BITSELECT,263)@2
    assign bgTrunc_i_fpga_indvars_iv_next_mmul209_sel_x_b = i_fpga_indvars_iv_next_mmul209_q[32:0];

    // i_llvm_fpga_push_i33_fpga_indvars_iv_push7_mmul210(BLACKBOX,153)@2
    // out out_feedback_out_7@20000000
    // out out_feedback_valid_out_7@20000000
    mmul_i_llvm_fpga_push_i33_fpga_indvars_iv_push7_0 thei_llvm_fpga_push_i33_fpga_indvars_iv_push7_mmul210 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next_mmul209_sel_x_b),
        .in_feedback_stall_in_7(i_llvm_fpga_pop_i33_fpga_indvars_iv_pop7_mmul13_out_feedback_stall_out_7),
        .in_keep_going(redist147_i_llvm_fpga_pipeline_keep_going_mmul6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist7_sync_together279_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_7(i_llvm_fpga_push_i33_fpga_indvars_iv_push7_mmul210_out_feedback_out_7),
        .out_feedback_valid_out_7(i_llvm_fpga_push_i33_fpga_indvars_iv_push7_mmul210_out_feedback_valid_out_7),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i33_undef247(CONSTANT,72)
    assign c_i33_undef247_q = $unsigned(33'b000000000000000000000000000000000);

    // i_llvm_fpga_pop_i33_fpga_indvars_iv_pop7_mmul13(BLACKBOX,144)@2
    // out out_feedback_stall_out_7@20000000
    mmul_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop7_0 thei_llvm_fpga_pop_i33_fpga_indvars_iv_pop7_mmul13 (
        .in_data_in(c_i33_undef247_q),
        .in_dir(redist1_sync_together279_aunroll_x_in_c0_eni4_1_tpl_1_q),
        .in_feedback_in_7(i_llvm_fpga_push_i33_fpga_indvars_iv_push7_mmul210_out_feedback_out_7),
        .in_feedback_valid_in_7(i_llvm_fpga_push_i33_fpga_indvars_iv_push7_mmul210_out_feedback_valid_out_7),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist7_sync_together279_aunroll_x_in_i_valid_1_q),
        .out_data_out(i_llvm_fpga_pop_i33_fpga_indvars_iv_pop7_mmul13_out_data_out),
        .out_feedback_stall_out_7(i_llvm_fpga_pop_i33_fpga_indvars_iv_pop7_mmul13_out_feedback_stall_out_7),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_fpga_indvars_iv_replace_phi_mmul14(MUX,127)@2
    assign i_fpga_indvars_iv_replace_phi_mmul14_s = redist1_sync_together279_aunroll_x_in_c0_eni4_1_tpl_1_q;
    always @(i_fpga_indvars_iv_replace_phi_mmul14_s or i_llvm_fpga_pop_i33_fpga_indvars_iv_pop7_mmul13_out_data_out or i_llvm_fpga_ffwd_dest_i33_unnamed_mmul10_mmul12_out_dest_data_out_2_0)
    begin
        unique case (i_fpga_indvars_iv_replace_phi_mmul14_s)
            1'b0 : i_fpga_indvars_iv_replace_phi_mmul14_q = i_llvm_fpga_pop_i33_fpga_indvars_iv_pop7_mmul13_out_data_out;
            1'b1 : i_fpga_indvars_iv_replace_phi_mmul14_q = i_llvm_fpga_ffwd_dest_i33_unnamed_mmul10_mmul12_out_dest_data_out_2_0;
            default : i_fpga_indvars_iv_replace_phi_mmul14_q = 33'b0;
        endcase
    end

    // i_exitcond_mmul207_cmp_nsign(LOGICAL,491)@2
    assign i_exitcond_mmul207_cmp_nsign_q = $unsigned(~ (i_fpga_indvars_iv_replace_phi_mmul14_q[32:32]));

    // i_llvm_fpga_ffwd_dest_i1_unnamed_mmul12_mmul211(BLACKBOX,135)@2
    mmul_i_llvm_fpga_ffwd_dest_i1_unnamed_12_mmul0 thei_llvm_fpga_ffwd_dest_i1_unnamed_mmul12_mmul211 (
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_stall_in(GND_q),
        .in_valid_in(redist7_sync_together279_aunroll_x_in_i_valid_1_q),
        .out_dest_data_out_0_0(i_llvm_fpga_ffwd_dest_i1_unnamed_mmul12_mmul211_out_dest_data_out_0_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_mmul212(LOGICAL,230)@2
    assign i_unnamed_mmul212_q = i_llvm_fpga_ffwd_dest_i1_unnamed_mmul12_mmul211_out_dest_data_out_0_0 & i_exitcond_mmul207_cmp_nsign_q;

    // i_llvm_fpga_push_i1_notexitcond_mmul214(BLACKBOX,147)@2
    // out out_feedback_out_2@20000000
    // out out_feedback_valid_out_2@20000000
    mmul_i_llvm_fpga_push_i1_notexitcond_0 thei_llvm_fpga_push_i1_notexitcond_mmul214 (
        .in_data_in(i_unnamed_mmul212_q),
        .in_feedback_stall_in_2(i_llvm_fpga_pipeline_keep_going_mmul6_out_not_exitcond_stall_out),
        .in_first_cleanup(i_first_cleanup_mmul3_sel_x_b),
        .in_stall_in(GND_q),
        .in_valid_in(redist7_sync_together279_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_2(i_llvm_fpga_push_i1_notexitcond_mmul214_out_feedback_out_2),
        .out_feedback_valid_out_2(i_llvm_fpga_push_i1_notexitcond_mmul214_out_feedback_valid_out_2),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg3(REG,429)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg3_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg3_q <= $unsigned(in_i_valid);
        end
    end

    // rightShiftStage0Idx1Rng1_uid522_i_next_initerations_mmul0_shift_x(BITSELECT,521)@2
    assign rightShiftStage0Idx1Rng1_uid522_i_next_initerations_mmul0_shift_x_b = i_llvm_fpga_pop_i2_initerations_pop10_mmul7_out_data_out[1:1];

    // rightShiftStage0Idx1_uid524_i_next_initerations_mmul0_shift_x(BITJOIN,523)@2
    assign rightShiftStage0Idx1_uid524_i_next_initerations_mmul0_shift_x_q = {GND_q, rightShiftStage0Idx1Rng1_uid522_i_next_initerations_mmul0_shift_x_b};

    // valid_fanout_reg1(REG,427)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg1_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg1_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg2(REG,428)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg2_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg2_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_i2_initerations_push10_mmul9(BLACKBOX,149)@2
    // out out_feedback_out_10@20000000
    // out out_feedback_valid_out_10@20000000
    mmul_i_llvm_fpga_push_i2_initerations_push10_0 thei_llvm_fpga_push_i2_initerations_push10_mmul9 (
        .in_data_in(i_next_initerations_mmul8_vt_join_q),
        .in_feedback_stall_in_10(i_llvm_fpga_pop_i2_initerations_pop10_mmul7_out_feedback_stall_out_10),
        .in_keep_going(redist147_i_llvm_fpga_pipeline_keep_going_mmul6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(),
        .out_feedback_out_10(i_llvm_fpga_push_i2_initerations_push10_mmul9_out_feedback_out_10),
        .out_feedback_valid_out_10(i_llvm_fpga_push_i2_initerations_push10_mmul9_out_feedback_valid_out_10),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i2_initerations_pop10_mmul7(BLACKBOX,140)@2
    // out out_feedback_stall_out_10@20000000
    mmul_i_llvm_fpga_pop_i2_initerations_pop10_0 thei_llvm_fpga_pop_i2_initerations_pop10_mmul7 (
        .in_data_in(c_i2_1245_q),
        .in_dir(redist1_sync_together279_aunroll_x_in_c0_eni4_1_tpl_1_q),
        .in_feedback_in_10(i_llvm_fpga_push_i2_initerations_push10_mmul9_out_feedback_out_10),
        .in_feedback_valid_in_10(i_llvm_fpga_push_i2_initerations_push10_mmul9_out_feedback_valid_out_10),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_data_out(i_llvm_fpga_pop_i2_initerations_pop10_mmul7_out_data_out),
        .out_feedback_stall_out_10(i_llvm_fpga_pop_i2_initerations_pop10_mmul7_out_feedback_stall_out_10),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // rightShiftStage0_uid526_i_next_initerations_mmul0_shift_x(MUX,525)@2
    assign rightShiftStage0_uid526_i_next_initerations_mmul0_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid526_i_next_initerations_mmul0_shift_x_s or i_llvm_fpga_pop_i2_initerations_pop10_mmul7_out_data_out or rightShiftStage0Idx1_uid524_i_next_initerations_mmul0_shift_x_q)
    begin
        unique case (rightShiftStage0_uid526_i_next_initerations_mmul0_shift_x_s)
            1'b0 : rightShiftStage0_uid526_i_next_initerations_mmul0_shift_x_q = i_llvm_fpga_pop_i2_initerations_pop10_mmul7_out_data_out;
            1'b1 : rightShiftStage0_uid526_i_next_initerations_mmul0_shift_x_q = rightShiftStage0Idx1_uid524_i_next_initerations_mmul0_shift_x_q;
            default : rightShiftStage0_uid526_i_next_initerations_mmul0_shift_x_q = 2'b0;
        endcase
    end

    // i_next_initerations_mmul8_vt_select_0(BITSELECT,169)@2
    assign i_next_initerations_mmul8_vt_select_0_b = rightShiftStage0_uid526_i_next_initerations_mmul0_shift_x_q[0:0];

    // i_next_initerations_mmul8_vt_join(BITJOIN,168)@2
    assign i_next_initerations_mmul8_vt_join_q = {GND_q, i_next_initerations_mmul8_vt_select_0_b};

    // i_last_initeration_mmul10_sel_x(BITSELECT,322)@2
    assign i_last_initeration_mmul10_sel_x_b = i_next_initerations_mmul8_vt_join_q[0:0];

    // i_llvm_fpga_push_i1_lastiniteration_mmul11(BLACKBOX,145)@2
    // out out_feedback_out_1@20000000
    // out out_feedback_valid_out_1@20000000
    mmul_i_llvm_fpga_push_i1_lastiniteration_0 thei_llvm_fpga_push_i1_lastiniteration_mmul11 (
        .in_data_in(i_last_initeration_mmul10_sel_x_b),
        .in_feedback_stall_in_1(i_llvm_fpga_pipeline_keep_going_mmul6_out_initeration_stall_out),
        .in_keep_going(redist147_i_llvm_fpga_pipeline_keep_going_mmul6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_data_out(),
        .out_feedback_out_1(i_llvm_fpga_push_i1_lastiniteration_mmul11_out_feedback_out_1),
        .out_feedback_valid_out_1(i_llvm_fpga_push_i1_lastiniteration_mmul11_out_feedback_valid_out_1),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going_mmul6(BLACKBOX,137)@1
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    mmul_i_llvm_fpga_pipeline_keep_going_0 thei_llvm_fpga_pipeline_keep_going_mmul6 (
        .in_data_in(in_c0_eni4_1_tpl),
        .in_initeration_in(i_llvm_fpga_push_i1_lastiniteration_mmul11_out_feedback_out_1),
        .in_initeration_valid_in(i_llvm_fpga_push_i1_lastiniteration_mmul11_out_feedback_valid_out_1),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond_mmul214_out_feedback_out_2),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond_mmul214_out_feedback_valid_out_2),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(i_llvm_fpga_pipeline_keep_going_mmul6_out_data_out),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going_mmul6_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going_mmul6_out_exiting_valid_out),
        .out_initeration_stall_out(i_llvm_fpga_pipeline_keep_going_mmul6_out_initeration_stall_out),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going_mmul6_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going_mmul6_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,74)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_mmul6_exiting_valid_out = i_llvm_fpga_pipeline_keep_going_mmul6_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_mmul6_exiting_stall_out = i_llvm_fpga_pipeline_keep_going_mmul6_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,251)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going_mmul6_out_pipeline_valid_out;

    // redist8_sync_together279_aunroll_x_in_i_valid_47(DELAY,568)
    dspba_delay_ver #( .width(1), .depth(46), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist8_sync_together279_aunroll_x_in_i_valid_47 ( .xin(redist7_sync_together279_aunroll_x_in_i_valid_1_q), .xout(redist8_sync_together279_aunroll_x_in_i_valid_47_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist9_sync_together279_aunroll_x_in_i_valid_48(DELAY,569)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_sync_together279_aunroll_x_in_i_valid_48_q <= '0;
        end
        else
        begin
            redist9_sync_together279_aunroll_x_in_i_valid_48_q <= $unsigned(redist8_sync_together279_aunroll_x_in_i_valid_47_q);
        end
    end

    // redist10_sync_together279_aunroll_x_in_i_valid_51(DELAY,570)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_sync_together279_aunroll_x_in_i_valid_51_delay_0 <= '0;
            redist10_sync_together279_aunroll_x_in_i_valid_51_delay_1 <= '0;
            redist10_sync_together279_aunroll_x_in_i_valid_51_q <= '0;
        end
        else
        begin
            redist10_sync_together279_aunroll_x_in_i_valid_51_delay_0 <= $unsigned(redist9_sync_together279_aunroll_x_in_i_valid_48_q);
            redist10_sync_together279_aunroll_x_in_i_valid_51_delay_1 <= redist10_sync_together279_aunroll_x_in_i_valid_51_delay_0;
            redist10_sync_together279_aunroll_x_in_i_valid_51_q <= redist10_sync_together279_aunroll_x_in_i_valid_51_delay_1;
        end
    end

    // valid_fanout_reg0(REG,426)@52 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist10_sync_together279_aunroll_x_in_i_valid_51_q);
        end
    end

    // redist2_sync_together279_aunroll_x_in_c0_eni4_1_tpl_48(DELAY,562)
    dspba_delay_ver #( .width(1), .depth(47), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist2_sync_together279_aunroll_x_in_c0_eni4_1_tpl_48 ( .xin(redist1_sync_together279_aunroll_x_in_c0_eni4_1_tpl_1_q), .xout(redist2_sync_together279_aunroll_x_in_c0_eni4_1_tpl_48_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist3_sync_together279_aunroll_x_in_c0_eni4_1_tpl_52(DELAY,563)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_sync_together279_aunroll_x_in_c0_eni4_1_tpl_52_delay_0 <= '0;
            redist3_sync_together279_aunroll_x_in_c0_eni4_1_tpl_52_delay_1 <= '0;
            redist3_sync_together279_aunroll_x_in_c0_eni4_1_tpl_52_delay_2 <= '0;
            redist3_sync_together279_aunroll_x_in_c0_eni4_1_tpl_52_q <= '0;
        end
        else
        begin
            redist3_sync_together279_aunroll_x_in_c0_eni4_1_tpl_52_delay_0 <= $unsigned(redist2_sync_together279_aunroll_x_in_c0_eni4_1_tpl_48_q);
            redist3_sync_together279_aunroll_x_in_c0_eni4_1_tpl_52_delay_1 <= redist3_sync_together279_aunroll_x_in_c0_eni4_1_tpl_52_delay_0;
            redist3_sync_together279_aunroll_x_in_c0_eni4_1_tpl_52_delay_2 <= redist3_sync_together279_aunroll_x_in_c0_eni4_1_tpl_52_delay_1;
            redist3_sync_together279_aunroll_x_in_c0_eni4_1_tpl_52_q <= redist3_sync_together279_aunroll_x_in_c0_eni4_1_tpl_52_delay_2;
        end
    end

    // valid_fanout_reg14(REG,440)@52 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg14_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg14_q <= $unsigned(redist10_sync_together279_aunroll_x_in_i_valid_51_q);
        end
    end

    // valid_fanout_reg15(REG,441)@52 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg15_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg15_q <= $unsigned(redist10_sync_together279_aunroll_x_in_i_valid_51_q);
        end
    end

    // i_llvm_fpga_push_i1_notcmp914_push13_mmul220(BLACKBOX,146)@53
    // out out_feedback_out_13@20000000
    // out out_feedback_valid_out_13@20000000
    mmul_i_llvm_fpga_push_i1_notcmp914_push13_0 thei_llvm_fpga_push_i1_notcmp914_push13_mmul220 (
        .in_data_in(i_llvm_fpga_pop_i1_notcmp914_pop13_mmul219_out_data_out),
        .in_feedback_stall_in_13(i_llvm_fpga_pop_i1_notcmp914_pop13_mmul219_out_feedback_stall_out_13),
        .in_keep_going(redist149_i_llvm_fpga_pipeline_keep_going_mmul6_out_data_out_52_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg15_q),
        .out_data_out(),
        .out_feedback_out_13(i_llvm_fpga_push_i1_notcmp914_push13_mmul220_out_feedback_out_13),
        .out_feedback_valid_out_13(i_llvm_fpga_push_i1_notcmp914_push13_mmul220_out_feedback_valid_out_13),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist6_sync_together279_aunroll_x_in_c0_eni4_4_tpl_52(DELAY,566)
    dspba_delay_ver #( .width(1), .depth(52), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist6_sync_together279_aunroll_x_in_c0_eni4_4_tpl_52 ( .xin(in_c0_eni4_4_tpl), .xout(redist6_sync_together279_aunroll_x_in_c0_eni4_4_tpl_52_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_llvm_fpga_pop_i1_notcmp914_pop13_mmul219(BLACKBOX,138)@53
    // out out_feedback_stall_out_13@20000000
    mmul_i_llvm_fpga_pop_i1_notcmp914_pop13_0 thei_llvm_fpga_pop_i1_notcmp914_pop13_mmul219 (
        .in_data_in(redist6_sync_together279_aunroll_x_in_c0_eni4_4_tpl_52_q),
        .in_dir(redist3_sync_together279_aunroll_x_in_c0_eni4_1_tpl_52_q),
        .in_feedback_in_13(i_llvm_fpga_push_i1_notcmp914_push13_mmul220_out_feedback_out_13),
        .in_feedback_valid_in_13(i_llvm_fpga_push_i1_notcmp914_push13_mmul220_out_feedback_valid_out_13),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg14_q),
        .out_data_out(i_llvm_fpga_pop_i1_notcmp914_pop13_mmul219_out_data_out),
        .out_feedback_stall_out_13(i_llvm_fpga_pop_i1_notcmp914_pop13_mmul219_out_feedback_stall_out_13),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_masked_mmul218(LOGICAL,163)@2 + 1
    assign i_masked_mmul218_qi = i_notcmp_mmul213_q & i_first_cleanup_mmul3_sel_x_b;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_masked_mmul218_delay ( .xin(i_masked_mmul218_qi), .xout(i_masked_mmul218_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist141_i_masked_mmul218_q_51(DELAY,701)
    dspba_delay_ver #( .width(1), .depth(50), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist141_i_masked_mmul218_q_51 ( .xin(i_masked_mmul218_q), .xout(redist141_i_masked_mmul218_q_51_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acc_control_signal_mmul204(LOGICAL,75)@53
    assign i_acc_control_signal_mmul204_q = redist3_sync_together279_aunroll_x_in_c0_eni4_1_tpl_52_q ^ VCC_q;

    // c_i32_0248(CONSTANT,68)
    assign c_i32_0248_q = $unsigned(32'b00000000000000000000000000000000);

    // i_add13_i_mmul187(SUB,76)@51
    assign i_add13_i_mmul187_a = {1'b0, c_i32_0248_q};
    assign i_add13_i_mmul187_b = {1'b0, redist47_bgTrunc_i_sub4_i_31_i_mmul186_sel_x_b_1_q};
    assign i_add13_i_mmul187_o = $unsigned(i_add13_i_mmul187_a) - $unsigned(i_add13_i_mmul187_b);
    assign i_add13_i_mmul187_q = i_add13_i_mmul187_o[32:0];

    // bgTrunc_i_add13_i_mmul187_sel_x(BITSELECT,258)@51
    assign bgTrunc_i_add13_i_mmul187_sel_x_b = $unsigned(i_add13_i_mmul187_q[31:0]);

    // i_add8_i_mmul25(SUB,78)@2
    assign i_add8_i_mmul25_a = {1'b0, c_i32_0248_q};
    assign i_add8_i_mmul25_b = {1'b0, i_llvm_fpga_pop_i32_n_sync_buffer313_pop12_mmul15_out_data_out};
    assign i_add8_i_mmul25_o = $unsigned(i_add8_i_mmul25_a) - $unsigned(i_add8_i_mmul25_b);
    assign i_add8_i_mmul25_q = i_add8_i_mmul25_o[32:0];

    // bgTrunc_i_add8_i_mmul25_sel_x(BITSELECT,260)@2
    assign bgTrunc_i_add8_i_mmul25_sel_x_b = $unsigned(i_add8_i_mmul25_q[31:0]);

    // valid_fanout_reg4(REG,430)@1 + 1
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

    // valid_fanout_reg5(REG,431)@1 + 1
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

    // i_llvm_fpga_push_i32_n_sync_buffer313_push12_mmul16(BLACKBOX,152)@2
    // out out_feedback_out_12@20000000
    // out out_feedback_valid_out_12@20000000
    mmul_i_llvm_fpga_push_i32_n_sync_buffer313_push12_0 thei_llvm_fpga_push_i32_n_sync_buffer313_push12_mmul16 (
        .in_data_in(i_llvm_fpga_pop_i32_n_sync_buffer313_pop12_mmul15_out_data_out),
        .in_feedback_stall_in_12(i_llvm_fpga_pop_i32_n_sync_buffer313_pop12_mmul15_out_feedback_stall_out_12),
        .in_keep_going(redist147_i_llvm_fpga_pipeline_keep_going_mmul6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_data_out(),
        .out_feedback_out_12(i_llvm_fpga_push_i32_n_sync_buffer313_push12_mmul16_out_feedback_out_12),
        .out_feedback_valid_out_12(i_llvm_fpga_push_i32_n_sync_buffer313_push12_mmul16_out_feedback_valid_out_12),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist4_sync_together279_aunroll_x_in_c0_eni4_2_tpl_1(DELAY,564)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_sync_together279_aunroll_x_in_c0_eni4_2_tpl_1_q <= '0;
        end
        else
        begin
            redist4_sync_together279_aunroll_x_in_c0_eni4_2_tpl_1_q <= $unsigned(in_c0_eni4_2_tpl);
        end
    end

    // i_llvm_fpga_pop_i32_n_sync_buffer313_pop12_mmul15(BLACKBOX,143)@2
    // out out_feedback_stall_out_12@20000000
    mmul_i_llvm_fpga_pop_i32_n_sync_buffer313_pop12_0 thei_llvm_fpga_pop_i32_n_sync_buffer313_pop12_mmul15 (
        .in_data_in(redist4_sync_together279_aunroll_x_in_c0_eni4_2_tpl_1_q),
        .in_dir(redist1_sync_together279_aunroll_x_in_c0_eni4_1_tpl_1_q),
        .in_feedback_in_12(i_llvm_fpga_push_i32_n_sync_buffer313_push12_mmul16_out_feedback_out_12),
        .in_feedback_valid_in_12(i_llvm_fpga_push_i32_n_sync_buffer313_push12_mmul16_out_feedback_valid_out_12),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_data_out(i_llvm_fpga_pop_i32_n_sync_buffer313_pop12_mmul15_out_data_out),
        .out_feedback_stall_out_12(i_llvm_fpga_pop_i32_n_sync_buffer313_pop12_mmul15_out_feedback_stall_out_12),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_tobool2_i_mmul21_cmp_sign(LOGICAL,507)@2
    assign i_tobool2_i_mmul21_cmp_sign_q = $unsigned(i_llvm_fpga_pop_i32_n_sync_buffer313_pop12_mmul15_out_data_out[31:31]);

    // i_unnamed_mmul26(MUX,231)@2 + 1
    assign i_unnamed_mmul26_s = i_tobool2_i_mmul21_cmp_sign_q;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_unnamed_mmul26_q <= 32'b0;
        end
        else
        begin
            unique case (i_unnamed_mmul26_s)
                1'b0 : i_unnamed_mmul26_q <= i_llvm_fpga_pop_i32_n_sync_buffer313_pop12_mmul15_out_data_out;
                1'b1 : i_unnamed_mmul26_q <= bgTrunc_i_add8_i_mmul25_sel_x_b;
                default : i_unnamed_mmul26_q <= 32'b0;
            endcase
        end
    end

    // redist61_i_unnamed_mmul26_q_2(DELAY,621)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist61_i_unnamed_mmul26_q_2_q <= '0;
        end
        else
        begin
            redist61_i_unnamed_mmul26_q_2_q <= $unsigned(i_unnamed_mmul26_q);
        end
    end

    // redist62_i_unnamed_mmul26_q_3(DELAY,622)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist62_i_unnamed_mmul26_q_3_q <= '0;
        end
        else
        begin
            redist62_i_unnamed_mmul26_q_3_q <= $unsigned(redist61_i_unnamed_mmul26_q_2_q);
        end
    end

    // redist63_i_unnamed_mmul26_q_4(DELAY,623)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist63_i_unnamed_mmul26_q_4_q <= '0;
        end
        else
        begin
            redist63_i_unnamed_mmul26_q_4_q <= $unsigned(redist62_i_unnamed_mmul26_q_3_q);
        end
    end

    // redist64_i_unnamed_mmul26_q_5(DELAY,624)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist64_i_unnamed_mmul26_q_5_q <= '0;
        end
        else
        begin
            redist64_i_unnamed_mmul26_q_5_q <= $unsigned(redist63_i_unnamed_mmul26_q_4_q);
        end
    end

    // redist65_i_unnamed_mmul26_q_6(DELAY,625)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist65_i_unnamed_mmul26_q_6_q <= '0;
        end
        else
        begin
            redist65_i_unnamed_mmul26_q_6_q <= $unsigned(redist64_i_unnamed_mmul26_q_5_q);
        end
    end

    // redist66_i_unnamed_mmul26_q_7(DELAY,626)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist66_i_unnamed_mmul26_q_7_q <= '0;
        end
        else
        begin
            redist66_i_unnamed_mmul26_q_7_q <= $unsigned(redist65_i_unnamed_mmul26_q_6_q);
        end
    end

    // redist67_i_unnamed_mmul26_q_8(DELAY,627)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist67_i_unnamed_mmul26_q_8_q <= '0;
        end
        else
        begin
            redist67_i_unnamed_mmul26_q_8_q <= $unsigned(redist66_i_unnamed_mmul26_q_7_q);
        end
    end

    // redist68_i_unnamed_mmul26_q_9(DELAY,628)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist68_i_unnamed_mmul26_q_9_q <= '0;
        end
        else
        begin
            redist68_i_unnamed_mmul26_q_9_q <= $unsigned(redist67_i_unnamed_mmul26_q_8_q);
        end
    end

    // redist69_i_unnamed_mmul26_q_10(DELAY,629)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist69_i_unnamed_mmul26_q_10_q <= '0;
        end
        else
        begin
            redist69_i_unnamed_mmul26_q_10_q <= $unsigned(redist68_i_unnamed_mmul26_q_9_q);
        end
    end

    // redist70_i_unnamed_mmul26_q_11(DELAY,630)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist70_i_unnamed_mmul26_q_11_q <= '0;
        end
        else
        begin
            redist70_i_unnamed_mmul26_q_11_q <= $unsigned(redist69_i_unnamed_mmul26_q_10_q);
        end
    end

    // redist71_i_unnamed_mmul26_q_12(DELAY,631)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist71_i_unnamed_mmul26_q_12_q <= '0;
        end
        else
        begin
            redist71_i_unnamed_mmul26_q_12_q <= $unsigned(redist70_i_unnamed_mmul26_q_11_q);
        end
    end

    // redist72_i_unnamed_mmul26_q_13(DELAY,632)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist72_i_unnamed_mmul26_q_13_q <= '0;
        end
        else
        begin
            redist72_i_unnamed_mmul26_q_13_q <= $unsigned(redist71_i_unnamed_mmul26_q_12_q);
        end
    end

    // redist73_i_unnamed_mmul26_q_14(DELAY,633)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist73_i_unnamed_mmul26_q_14_q <= '0;
        end
        else
        begin
            redist73_i_unnamed_mmul26_q_14_q <= $unsigned(redist72_i_unnamed_mmul26_q_13_q);
        end
    end

    // redist74_i_unnamed_mmul26_q_15(DELAY,634)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist74_i_unnamed_mmul26_q_15_q <= '0;
        end
        else
        begin
            redist74_i_unnamed_mmul26_q_15_q <= $unsigned(redist73_i_unnamed_mmul26_q_14_q);
        end
    end

    // redist75_i_unnamed_mmul26_q_16(DELAY,635)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist75_i_unnamed_mmul26_q_16_q <= '0;
        end
        else
        begin
            redist75_i_unnamed_mmul26_q_16_q <= $unsigned(redist74_i_unnamed_mmul26_q_15_q);
        end
    end

    // redist76_i_unnamed_mmul26_q_17(DELAY,636)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist76_i_unnamed_mmul26_q_17_q <= '0;
        end
        else
        begin
            redist76_i_unnamed_mmul26_q_17_q <= $unsigned(redist75_i_unnamed_mmul26_q_16_q);
        end
    end

    // redist77_i_unnamed_mmul26_q_18(DELAY,637)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist77_i_unnamed_mmul26_q_18_q <= '0;
        end
        else
        begin
            redist77_i_unnamed_mmul26_q_18_q <= $unsigned(redist76_i_unnamed_mmul26_q_17_q);
        end
    end

    // redist78_i_unnamed_mmul26_q_19(DELAY,638)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist78_i_unnamed_mmul26_q_19_q <= '0;
        end
        else
        begin
            redist78_i_unnamed_mmul26_q_19_q <= $unsigned(redist77_i_unnamed_mmul26_q_18_q);
        end
    end

    // redist79_i_unnamed_mmul26_q_20(DELAY,639)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist79_i_unnamed_mmul26_q_20_q <= '0;
        end
        else
        begin
            redist79_i_unnamed_mmul26_q_20_q <= $unsigned(redist78_i_unnamed_mmul26_q_19_q);
        end
    end

    // redist80_i_unnamed_mmul26_q_21(DELAY,640)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist80_i_unnamed_mmul26_q_21_q <= '0;
        end
        else
        begin
            redist80_i_unnamed_mmul26_q_21_q <= $unsigned(redist79_i_unnamed_mmul26_q_20_q);
        end
    end

    // redist81_i_unnamed_mmul26_q_22(DELAY,641)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist81_i_unnamed_mmul26_q_22_q <= '0;
        end
        else
        begin
            redist81_i_unnamed_mmul26_q_22_q <= $unsigned(redist80_i_unnamed_mmul26_q_21_q);
        end
    end

    // redist82_i_unnamed_mmul26_q_23(DELAY,642)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist82_i_unnamed_mmul26_q_23_q <= '0;
        end
        else
        begin
            redist82_i_unnamed_mmul26_q_23_q <= $unsigned(redist81_i_unnamed_mmul26_q_22_q);
        end
    end

    // redist83_i_unnamed_mmul26_q_24(DELAY,643)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist83_i_unnamed_mmul26_q_24_q <= '0;
        end
        else
        begin
            redist83_i_unnamed_mmul26_q_24_q <= $unsigned(redist82_i_unnamed_mmul26_q_23_q);
        end
    end

    // redist84_i_unnamed_mmul26_q_25(DELAY,644)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist84_i_unnamed_mmul26_q_25_q <= '0;
        end
        else
        begin
            redist84_i_unnamed_mmul26_q_25_q <= $unsigned(redist83_i_unnamed_mmul26_q_24_q);
        end
    end

    // redist85_i_unnamed_mmul26_q_26(DELAY,645)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist85_i_unnamed_mmul26_q_26_q <= '0;
        end
        else
        begin
            redist85_i_unnamed_mmul26_q_26_q <= $unsigned(redist84_i_unnamed_mmul26_q_25_q);
        end
    end

    // redist86_i_unnamed_mmul26_q_27(DELAY,646)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist86_i_unnamed_mmul26_q_27_q <= '0;
        end
        else
        begin
            redist86_i_unnamed_mmul26_q_27_q <= $unsigned(redist85_i_unnamed_mmul26_q_26_q);
        end
    end

    // redist87_i_unnamed_mmul26_q_28(DELAY,647)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist87_i_unnamed_mmul26_q_28_q <= '0;
        end
        else
        begin
            redist87_i_unnamed_mmul26_q_28_q <= $unsigned(redist86_i_unnamed_mmul26_q_27_q);
        end
    end

    // redist88_i_unnamed_mmul26_q_29(DELAY,648)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist88_i_unnamed_mmul26_q_29_q <= '0;
        end
        else
        begin
            redist88_i_unnamed_mmul26_q_29_q <= $unsigned(redist87_i_unnamed_mmul26_q_28_q);
        end
    end

    // redist89_i_unnamed_mmul26_q_30(DELAY,649)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist89_i_unnamed_mmul26_q_30_q <= '0;
        end
        else
        begin
            redist89_i_unnamed_mmul26_q_30_q <= $unsigned(redist88_i_unnamed_mmul26_q_29_q);
        end
    end

    // redist90_i_unnamed_mmul26_q_31(DELAY,650)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist90_i_unnamed_mmul26_q_31_q <= '0;
        end
        else
        begin
            redist90_i_unnamed_mmul26_q_31_q <= $unsigned(redist89_i_unnamed_mmul26_q_30_q);
        end
    end

    // redist91_i_unnamed_mmul26_q_32(DELAY,651)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist91_i_unnamed_mmul26_q_32_q <= '0;
        end
        else
        begin
            redist91_i_unnamed_mmul26_q_32_q <= $unsigned(redist90_i_unnamed_mmul26_q_31_q);
        end
    end

    // redist92_i_unnamed_mmul26_q_33(DELAY,652)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist92_i_unnamed_mmul26_q_33_q <= '0;
        end
        else
        begin
            redist92_i_unnamed_mmul26_q_33_q <= $unsigned(redist91_i_unnamed_mmul26_q_32_q);
        end
    end

    // redist93_i_unnamed_mmul26_q_34(DELAY,653)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist93_i_unnamed_mmul26_q_34_q <= '0;
        end
        else
        begin
            redist93_i_unnamed_mmul26_q_34_q <= $unsigned(redist92_i_unnamed_mmul26_q_33_q);
        end
    end

    // redist94_i_unnamed_mmul26_q_35(DELAY,654)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist94_i_unnamed_mmul26_q_35_q <= '0;
        end
        else
        begin
            redist94_i_unnamed_mmul26_q_35_q <= $unsigned(redist93_i_unnamed_mmul26_q_34_q);
        end
    end

    // redist95_i_unnamed_mmul26_q_36(DELAY,655)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist95_i_unnamed_mmul26_q_36_q <= '0;
        end
        else
        begin
            redist95_i_unnamed_mmul26_q_36_q <= $unsigned(redist94_i_unnamed_mmul26_q_35_q);
        end
    end

    // redist96_i_unnamed_mmul26_q_37(DELAY,656)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist96_i_unnamed_mmul26_q_37_q <= '0;
        end
        else
        begin
            redist96_i_unnamed_mmul26_q_37_q <= $unsigned(redist95_i_unnamed_mmul26_q_36_q);
        end
    end

    // redist97_i_unnamed_mmul26_q_38(DELAY,657)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist97_i_unnamed_mmul26_q_38_q <= '0;
        end
        else
        begin
            redist97_i_unnamed_mmul26_q_38_q <= $unsigned(redist96_i_unnamed_mmul26_q_37_q);
        end
    end

    // redist98_i_unnamed_mmul26_q_39(DELAY,658)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist98_i_unnamed_mmul26_q_39_q <= '0;
        end
        else
        begin
            redist98_i_unnamed_mmul26_q_39_q <= $unsigned(redist97_i_unnamed_mmul26_q_38_q);
        end
    end

    // redist99_i_unnamed_mmul26_q_40(DELAY,659)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist99_i_unnamed_mmul26_q_40_q <= '0;
        end
        else
        begin
            redist99_i_unnamed_mmul26_q_40_q <= $unsigned(redist98_i_unnamed_mmul26_q_39_q);
        end
    end

    // redist100_i_unnamed_mmul26_q_41(DELAY,660)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist100_i_unnamed_mmul26_q_41_q <= '0;
        end
        else
        begin
            redist100_i_unnamed_mmul26_q_41_q <= $unsigned(redist99_i_unnamed_mmul26_q_40_q);
        end
    end

    // redist101_i_unnamed_mmul26_q_42(DELAY,661)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist101_i_unnamed_mmul26_q_42_q <= '0;
        end
        else
        begin
            redist101_i_unnamed_mmul26_q_42_q <= $unsigned(redist100_i_unnamed_mmul26_q_41_q);
        end
    end

    // redist102_i_unnamed_mmul26_q_43(DELAY,662)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist102_i_unnamed_mmul26_q_43_q <= '0;
        end
        else
        begin
            redist102_i_unnamed_mmul26_q_43_q <= $unsigned(redist101_i_unnamed_mmul26_q_42_q);
        end
    end

    // redist103_i_unnamed_mmul26_q_44(DELAY,663)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist103_i_unnamed_mmul26_q_44_q <= '0;
        end
        else
        begin
            redist103_i_unnamed_mmul26_q_44_q <= $unsigned(redist102_i_unnamed_mmul26_q_43_q);
        end
    end

    // redist104_i_unnamed_mmul26_q_45(DELAY,664)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist104_i_unnamed_mmul26_q_45_q <= '0;
        end
        else
        begin
            redist104_i_unnamed_mmul26_q_45_q <= $unsigned(redist103_i_unnamed_mmul26_q_44_q);
        end
    end

    // redist105_i_unnamed_mmul26_q_46(DELAY,665)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist105_i_unnamed_mmul26_q_46_q <= '0;
        end
        else
        begin
            redist105_i_unnamed_mmul26_q_46_q <= $unsigned(redist104_i_unnamed_mmul26_q_45_q);
        end
    end

    // redist106_i_unnamed_mmul26_q_47(DELAY,666)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist106_i_unnamed_mmul26_q_47_q <= '0;
        end
        else
        begin
            redist106_i_unnamed_mmul26_q_47_q <= $unsigned(redist105_i_unnamed_mmul26_q_46_q);
        end
    end

    // redist107_i_unnamed_mmul26_q_48(DELAY,667)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist107_i_unnamed_mmul26_q_48_q <= '0;
        end
        else
        begin
            redist107_i_unnamed_mmul26_q_48_q <= $unsigned(redist106_i_unnamed_mmul26_q_47_q);
        end
    end

    // c_i8_232(CONSTANT,73)
    assign c_i8_232_q = $unsigned(8'b00000010);

    // i_shr_i_i_mmul27_vt_const_31(CONSTANT,172)
    assign i_shr_i_i_mmul27_vt_const_31_q = $unsigned(31'b0000000000000000000000000000000);

    // rightShiftStage4Idx1Pad16_uid551_i_shr_i_i_mmul0_shift_x(CONSTANT,550)
    assign rightShiftStage4Idx1Pad16_uid551_i_shr_i_i_mmul0_shift_x_q = $unsigned(16'b0000000000000000);

    // rightShiftStage4Idx1Rng16_uid550_i_shr_i_i_mmul0_shift_x(BITSELECT,549)@3
    assign rightShiftStage4Idx1Rng16_uid550_i_shr_i_i_mmul0_shift_x_b = rightShiftStage3_uid549_i_shr_i_i_mmul0_shift_x_q[31:16];

    // rightShiftStage4Idx1_uid552_i_shr_i_i_mmul0_shift_x(BITJOIN,551)@3
    assign rightShiftStage4Idx1_uid552_i_shr_i_i_mmul0_shift_x_q = {rightShiftStage4Idx1Pad16_uid551_i_shr_i_i_mmul0_shift_x_q, rightShiftStage4Idx1Rng16_uid550_i_shr_i_i_mmul0_shift_x_b};

    // rightShiftStage3Idx1Pad8_uid546_i_shr_i_i_mmul0_shift_x(CONSTANT,545)
    assign rightShiftStage3Idx1Pad8_uid546_i_shr_i_i_mmul0_shift_x_q = $unsigned(8'b00000000);

    // rightShiftStage3Idx1Rng8_uid545_i_shr_i_i_mmul0_shift_x(BITSELECT,544)@3
    assign rightShiftStage3Idx1Rng8_uid545_i_shr_i_i_mmul0_shift_x_b = rightShiftStage2_uid544_i_shr_i_i_mmul0_shift_x_q[31:8];

    // rightShiftStage3Idx1_uid547_i_shr_i_i_mmul0_shift_x(BITJOIN,546)@3
    assign rightShiftStage3Idx1_uid547_i_shr_i_i_mmul0_shift_x_q = {rightShiftStage3Idx1Pad8_uid546_i_shr_i_i_mmul0_shift_x_q, rightShiftStage3Idx1Rng8_uid545_i_shr_i_i_mmul0_shift_x_b};

    // rightShiftStage2Idx1Pad4_uid541_i_shr_i_i_mmul0_shift_x(CONSTANT,540)
    assign rightShiftStage2Idx1Pad4_uid541_i_shr_i_i_mmul0_shift_x_q = $unsigned(4'b0000);

    // rightShiftStage2Idx1Rng4_uid540_i_shr_i_i_mmul0_shift_x(BITSELECT,539)@3
    assign rightShiftStage2Idx1Rng4_uid540_i_shr_i_i_mmul0_shift_x_b = rightShiftStage1_uid539_i_shr_i_i_mmul0_shift_x_q[31:4];

    // rightShiftStage2Idx1_uid542_i_shr_i_i_mmul0_shift_x(BITJOIN,541)@3
    assign rightShiftStage2Idx1_uid542_i_shr_i_i_mmul0_shift_x_q = {rightShiftStage2Idx1Pad4_uid541_i_shr_i_i_mmul0_shift_x_q, rightShiftStage2Idx1Rng4_uid540_i_shr_i_i_mmul0_shift_x_b};

    // rightShiftStage1Idx1Rng2_uid535_i_shr_i_i_mmul0_shift_x(BITSELECT,534)@3
    assign rightShiftStage1Idx1Rng2_uid535_i_shr_i_i_mmul0_shift_x_b = rightShiftStage0_uid534_i_shr_i_i_mmul0_shift_x_q[31:2];

    // rightShiftStage1Idx1_uid537_i_shr_i_i_mmul0_shift_x(BITJOIN,536)@3
    assign rightShiftStage1Idx1_uid537_i_shr_i_i_mmul0_shift_x_q = {i_arrayidx2_mmul196_vt_const_1_q, rightShiftStage1Idx1Rng2_uid535_i_shr_i_i_mmul0_shift_x_b};

    // rightShiftStage0Idx1Rng1_uid530_i_shr_i_i_mmul0_shift_x(BITSELECT,529)@3
    assign rightShiftStage0Idx1Rng1_uid530_i_shr_i_i_mmul0_shift_x_b = i_spec_select_i_mmul24_q[31:1];

    // rightShiftStage0Idx1_uid532_i_shr_i_i_mmul0_shift_x(BITJOIN,531)@3
    assign rightShiftStage0Idx1_uid532_i_shr_i_i_mmul0_shift_x_q = {GND_q, rightShiftStage0Idx1Rng1_uid530_i_shr_i_i_mmul0_shift_x_b};

    // valid_fanout_reg6(REG,432)@1 + 1
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

    // valid_fanout_reg7(REG,433)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg7_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg7_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_i32_i_027_pop615_push14_mmul18(BLACKBOX,150)@2
    // out out_feedback_out_14@20000000
    // out out_feedback_valid_out_14@20000000
    mmul_i_llvm_fpga_push_i32_i_027_pop615_push14_0 thei_llvm_fpga_push_i32_i_027_pop615_push14_mmul18 (
        .in_data_in(i_llvm_fpga_pop_i32_i_027_pop615_pop14_mmul17_out_data_out),
        .in_feedback_stall_in_14(i_llvm_fpga_pop_i32_i_027_pop615_pop14_mmul17_out_feedback_stall_out_14),
        .in_keep_going(redist147_i_llvm_fpga_pipeline_keep_going_mmul6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg7_q),
        .out_data_out(),
        .out_feedback_out_14(i_llvm_fpga_push_i32_i_027_pop615_push14_mmul18_out_feedback_out_14),
        .out_feedback_valid_out_14(i_llvm_fpga_push_i32_i_027_pop615_push14_mmul18_out_feedback_valid_out_14),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist5_sync_together279_aunroll_x_in_c0_eni4_3_tpl_1(DELAY,565)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_sync_together279_aunroll_x_in_c0_eni4_3_tpl_1_q <= '0;
        end
        else
        begin
            redist5_sync_together279_aunroll_x_in_c0_eni4_3_tpl_1_q <= $unsigned(in_c0_eni4_3_tpl);
        end
    end

    // i_llvm_fpga_pop_i32_i_027_pop615_pop14_mmul17(BLACKBOX,141)@2
    // out out_feedback_stall_out_14@20000000
    mmul_i_llvm_fpga_pop_i32_i_027_pop615_pop14_0 thei_llvm_fpga_pop_i32_i_027_pop615_pop14_mmul17 (
        .in_data_in(redist5_sync_together279_aunroll_x_in_c0_eni4_3_tpl_1_q),
        .in_dir(redist1_sync_together279_aunroll_x_in_c0_eni4_1_tpl_1_q),
        .in_feedback_in_14(i_llvm_fpga_push_i32_i_027_pop615_push14_mmul18_out_feedback_out_14),
        .in_feedback_valid_in_14(i_llvm_fpga_push_i32_i_027_pop615_push14_mmul18_out_feedback_valid_out_14),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg6_q),
        .out_data_out(i_llvm_fpga_pop_i32_i_027_pop615_pop14_mmul17_out_data_out),
        .out_feedback_stall_out_14(i_llvm_fpga_pop_i32_i_027_pop615_pop14_mmul17_out_feedback_stall_out_14),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_add_i_mmul23(SUB,79)@2
    assign i_add_i_mmul23_a = {1'b0, c_i32_0248_q};
    assign i_add_i_mmul23_b = {1'b0, i_llvm_fpga_pop_i32_i_027_pop615_pop14_mmul17_out_data_out};
    assign i_add_i_mmul23_o = $unsigned(i_add_i_mmul23_a) - $unsigned(i_add_i_mmul23_b);
    assign i_add_i_mmul23_q = i_add_i_mmul23_o[32:0];

    // bgTrunc_i_add_i_mmul23_sel_x(BITSELECT,261)@2
    assign bgTrunc_i_add_i_mmul23_sel_x_b = $unsigned(i_add_i_mmul23_q[31:0]);

    // redist60_bgTrunc_i_add_i_mmul23_sel_x_b_1(DELAY,620)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist60_bgTrunc_i_add_i_mmul23_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist60_bgTrunc_i_add_i_mmul23_sel_x_b_1_q <= $unsigned(bgTrunc_i_add_i_mmul23_sel_x_b);
        end
    end

    // redist144_i_llvm_fpga_pop_i32_i_027_pop615_pop14_mmul17_out_data_out_1(DELAY,704)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist144_i_llvm_fpga_pop_i32_i_027_pop615_pop14_mmul17_out_data_out_1_q <= '0;
        end
        else
        begin
            redist144_i_llvm_fpga_pop_i32_i_027_pop615_pop14_mmul17_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i32_i_027_pop615_pop14_mmul17_out_data_out);
        end
    end

    // i_tobool_i_mmul19_cmp_sign(LOGICAL,509)@3
    assign i_tobool_i_mmul19_cmp_sign_q = $unsigned(redist144_i_llvm_fpga_pop_i32_i_027_pop615_pop14_mmul17_out_data_out_1_q[31:31]);

    // i_spec_select_i_mmul24(MUX,176)@3
    assign i_spec_select_i_mmul24_s = i_tobool_i_mmul19_cmp_sign_q;
    always @(i_spec_select_i_mmul24_s or redist144_i_llvm_fpga_pop_i32_i_027_pop615_pop14_mmul17_out_data_out_1_q or redist60_bgTrunc_i_add_i_mmul23_sel_x_b_1_q)
    begin
        unique case (i_spec_select_i_mmul24_s)
            1'b0 : i_spec_select_i_mmul24_q = redist144_i_llvm_fpga_pop_i32_i_027_pop615_pop14_mmul17_out_data_out_1_q;
            1'b1 : i_spec_select_i_mmul24_q = redist60_bgTrunc_i_add_i_mmul23_sel_x_b_1_q;
            default : i_spec_select_i_mmul24_q = 32'b0;
        endcase
    end

    // rightShiftStage0_uid534_i_shr_i_i_mmul0_shift_x(MUX,533)@3
    assign rightShiftStage0_uid534_i_shr_i_i_mmul0_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid534_i_shr_i_i_mmul0_shift_x_s or i_spec_select_i_mmul24_q or rightShiftStage0Idx1_uid532_i_shr_i_i_mmul0_shift_x_q)
    begin
        unique case (rightShiftStage0_uid534_i_shr_i_i_mmul0_shift_x_s)
            1'b0 : rightShiftStage0_uid534_i_shr_i_i_mmul0_shift_x_q = i_spec_select_i_mmul24_q;
            1'b1 : rightShiftStage0_uid534_i_shr_i_i_mmul0_shift_x_q = rightShiftStage0Idx1_uid532_i_shr_i_i_mmul0_shift_x_q;
            default : rightShiftStage0_uid534_i_shr_i_i_mmul0_shift_x_q = 32'b0;
        endcase
    end

    // rightShiftStage1_uid539_i_shr_i_i_mmul0_shift_x(MUX,538)@3
    assign rightShiftStage1_uid539_i_shr_i_i_mmul0_shift_x_s = VCC_q;
    always @(rightShiftStage1_uid539_i_shr_i_i_mmul0_shift_x_s or rightShiftStage0_uid534_i_shr_i_i_mmul0_shift_x_q or rightShiftStage1Idx1_uid537_i_shr_i_i_mmul0_shift_x_q)
    begin
        unique case (rightShiftStage1_uid539_i_shr_i_i_mmul0_shift_x_s)
            1'b0 : rightShiftStage1_uid539_i_shr_i_i_mmul0_shift_x_q = rightShiftStage0_uid534_i_shr_i_i_mmul0_shift_x_q;
            1'b1 : rightShiftStage1_uid539_i_shr_i_i_mmul0_shift_x_q = rightShiftStage1Idx1_uid537_i_shr_i_i_mmul0_shift_x_q;
            default : rightShiftStage1_uid539_i_shr_i_i_mmul0_shift_x_q = 32'b0;
        endcase
    end

    // rightShiftStage2_uid544_i_shr_i_i_mmul0_shift_x(MUX,543)@3
    assign rightShiftStage2_uid544_i_shr_i_i_mmul0_shift_x_s = VCC_q;
    always @(rightShiftStage2_uid544_i_shr_i_i_mmul0_shift_x_s or rightShiftStage1_uid539_i_shr_i_i_mmul0_shift_x_q or rightShiftStage2Idx1_uid542_i_shr_i_i_mmul0_shift_x_q)
    begin
        unique case (rightShiftStage2_uid544_i_shr_i_i_mmul0_shift_x_s)
            1'b0 : rightShiftStage2_uid544_i_shr_i_i_mmul0_shift_x_q = rightShiftStage1_uid539_i_shr_i_i_mmul0_shift_x_q;
            1'b1 : rightShiftStage2_uid544_i_shr_i_i_mmul0_shift_x_q = rightShiftStage2Idx1_uid542_i_shr_i_i_mmul0_shift_x_q;
            default : rightShiftStage2_uid544_i_shr_i_i_mmul0_shift_x_q = 32'b0;
        endcase
    end

    // rightShiftStage3_uid549_i_shr_i_i_mmul0_shift_x(MUX,548)@3
    assign rightShiftStage3_uid549_i_shr_i_i_mmul0_shift_x_s = VCC_q;
    always @(rightShiftStage3_uid549_i_shr_i_i_mmul0_shift_x_s or rightShiftStage2_uid544_i_shr_i_i_mmul0_shift_x_q or rightShiftStage3Idx1_uid547_i_shr_i_i_mmul0_shift_x_q)
    begin
        unique case (rightShiftStage3_uid549_i_shr_i_i_mmul0_shift_x_s)
            1'b0 : rightShiftStage3_uid549_i_shr_i_i_mmul0_shift_x_q = rightShiftStage2_uid544_i_shr_i_i_mmul0_shift_x_q;
            1'b1 : rightShiftStage3_uid549_i_shr_i_i_mmul0_shift_x_q = rightShiftStage3Idx1_uid547_i_shr_i_i_mmul0_shift_x_q;
            default : rightShiftStage3_uid549_i_shr_i_i_mmul0_shift_x_q = 32'b0;
        endcase
    end

    // rightShiftStage4_uid554_i_shr_i_i_mmul0_shift_x(MUX,553)@3
    assign rightShiftStage4_uid554_i_shr_i_i_mmul0_shift_x_s = VCC_q;
    always @(rightShiftStage4_uid554_i_shr_i_i_mmul0_shift_x_s or rightShiftStage3_uid549_i_shr_i_i_mmul0_shift_x_q or rightShiftStage4Idx1_uid552_i_shr_i_i_mmul0_shift_x_q)
    begin
        unique case (rightShiftStage4_uid554_i_shr_i_i_mmul0_shift_x_s)
            1'b0 : rightShiftStage4_uid554_i_shr_i_i_mmul0_shift_x_q = rightShiftStage3_uid549_i_shr_i_i_mmul0_shift_x_q;
            1'b1 : rightShiftStage4_uid554_i_shr_i_i_mmul0_shift_x_q = rightShiftStage4Idx1_uid552_i_shr_i_i_mmul0_shift_x_q;
            default : rightShiftStage4_uid554_i_shr_i_i_mmul0_shift_x_q = 32'b0;
        endcase
    end

    // i_shr_i_i_mmul27_vt_select_0(BITSELECT,174)@3
    assign i_shr_i_i_mmul27_vt_select_0_b = rightShiftStage4_uid554_i_shr_i_i_mmul0_shift_x_q[0:0];

    // i_shr_i_i_mmul27_vt_join(BITJOIN,173)@3
    assign i_shr_i_i_mmul27_vt_join_q = {i_shr_i_i_mmul27_vt_const_31_q, i_shr_i_i_mmul27_vt_select_0_b};

    // i_cmp3_i_i_mmul28(COMPARE,121)@3
    assign i_cmp3_i_i_mmul28_a = {2'b00, i_shr_i_i_mmul27_vt_join_q};
    assign i_cmp3_i_i_mmul28_b = {2'b00, i_unnamed_mmul26_q};
    assign i_cmp3_i_i_mmul28_o = $unsigned(i_cmp3_i_i_mmul28_a) - $unsigned(i_cmp3_i_i_mmul28_b);
    assign i_cmp3_i_i_mmul28_c[0] = i_cmp3_i_i_mmul28_o[33];

    // i_unnamed_mmul29(MUX,232)@3 + 1
    assign i_unnamed_mmul29_s = i_cmp3_i_i_mmul28_c;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_unnamed_mmul29_q <= 32'b0;
        end
        else
        begin
            unique case (i_unnamed_mmul29_s)
                1'b0 : i_unnamed_mmul29_q <= i_unnamed_mmul26_q;
                1'b1 : i_unnamed_mmul29_q <= c_i32_0248_q;
                default : i_unnamed_mmul29_q <= 32'b0;
            endcase
        end
    end

    // redist140_i_shr_i_i_mmul27_vt_join_q_1(DELAY,700)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist140_i_shr_i_i_mmul27_vt_join_q_1_q <= '0;
        end
        else
        begin
            redist140_i_shr_i_i_mmul27_vt_join_q_1_q <= $unsigned(i_shr_i_i_mmul27_vt_join_q);
        end
    end

    // i_sub4_i_i_mmul30(SUB,208)@4
    assign i_sub4_i_i_mmul30_a = {1'b0, redist140_i_shr_i_i_mmul27_vt_join_q_1_q};
    assign i_sub4_i_i_mmul30_b = {1'b0, i_unnamed_mmul29_q};
    assign i_sub4_i_i_mmul30_o = $unsigned(i_sub4_i_i_mmul30_a) - $unsigned(i_sub4_i_i_mmul30_b);
    assign i_sub4_i_i_mmul30_q = i_sub4_i_i_mmul30_o[32:0];

    // bgTrunc_i_sub4_i_i_mmul30_sel_x(BITSELECT,298)@4
    assign bgTrunc_i_sub4_i_i_mmul30_sel_x_b = $unsigned(i_sub4_i_i_mmul30_q[31:0]);

    // redist108_i_spec_select_i_mmul24_q_1(DELAY,668)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist108_i_spec_select_i_mmul24_q_1_q <= '0;
        end
        else
        begin
            redist108_i_spec_select_i_mmul24_q_1_q <= $unsigned(i_spec_select_i_mmul24_q);
        end
    end

    // i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_1_shuffle_i_mmul0_dsdk_ip_adapt_bitjoin1_x(BITJOIN,354)@4
    assign i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_1_shuffle_i_mmul0_dsdk_ip_adapt_bitjoin1_x_q = {c_i8_232_q, bgTrunc_i_sub4_i_i_mmul30_sel_x_b, redist108_i_spec_select_i_mmul24_q_1_q};

    // i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_1_shuffle_i_mmul0_NO_NAME_x(CHOOSEBITS,353)@4
    assign i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_1_shuffle_i_mmul0_NO_NAME_x_a = i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_1_shuffle_i_mmul0_dsdk_ip_adapt_bitjoin1_x_q;
    assign i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_1_shuffle_i_mmul0_NO_NAME_x_q = {i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_1_shuffle_i_mmul0_NO_NAME_x_a[62:62], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_1_shuffle_i_mmul0_NO_NAME_x_a[61:61], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_1_shuffle_i_mmul0_NO_NAME_x_a[60:60], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_1_shuffle_i_mmul0_NO_NAME_x_a[59:59], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_1_shuffle_i_mmul0_NO_NAME_x_a[58:58], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_1_shuffle_i_mmul0_NO_NAME_x_a[57:57], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_1_shuffle_i_mmul0_NO_NAME_x_a[56:56], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_1_shuffle_i_mmul0_NO_NAME_x_a[55:55], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_1_shuffle_i_mmul0_NO_NAME_x_a[54:54], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_1_shuffle_i_mmul0_NO_NAME_x_a[53:53], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_1_shuffle_i_mmul0_NO_NAME_x_a[52:52], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_1_shuffle_i_mmul0_NO_NAME_x_a[51:51], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_1_shuffle_i_mmul0_NO_NAME_x_a[50:50], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_1_shuffle_i_mmul0_NO_NAME_x_a[49:49], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_1_shuffle_i_mmul0_NO_NAME_x_a[48:48], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_1_shuffle_i_mmul0_NO_NAME_x_a[47:47], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_1_shuffle_i_mmul0_NO_NAME_x_a[46:46], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_1_shuffle_i_mmul0_NO_NAME_x_a[45:45], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_1_shuffle_i_mmul0_NO_NAME_x_a[44:44], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_1_shuffle_i_mmul0_NO_NAME_x_a[43:43], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_1_shuffle_i_mmul0_NO_NAME_x_a[42:42], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_1_shuffle_i_mmul0_NO_NAME_x_a[41:41], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_1_shuffle_i_mmul0_NO_NAME_x_a[40:40], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_1_shuffle_i_mmul0_NO_NAME_x_a[39:39], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_1_shuffle_i_mmul0_NO_NAME_x_a[38:38], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_1_shuffle_i_mmul0_NO_NAME_x_a[37:37], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_1_shuffle_i_mmul0_NO_NAME_x_a[36:36], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_1_shuffle_i_mmul0_NO_NAME_x_a[35:35], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_1_shuffle_i_mmul0_NO_NAME_x_a[34:34], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_1_shuffle_i_mmul0_NO_NAME_x_a[33:33], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_1_shuffle_i_mmul0_NO_NAME_x_a[32:32], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_1_shuffle_i_mmul0_NO_NAME_x_a[30:30]};

    // i_cmp3_i_1_i_mmul34(COMPARE,100)@4 + 1
    assign i_cmp3_i_1_i_mmul34_a = {2'b00, i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_1_shuffle_i_mmul0_NO_NAME_x_q};
    assign i_cmp3_i_1_i_mmul34_b = {2'b00, redist61_i_unnamed_mmul26_q_2_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_cmp3_i_1_i_mmul34_o <= 34'b0;
        end
        else
        begin
            i_cmp3_i_1_i_mmul34_o <= $unsigned(i_cmp3_i_1_i_mmul34_a) - $unsigned(i_cmp3_i_1_i_mmul34_b);
        end
    end
    assign i_cmp3_i_1_i_mmul34_c[0] = i_cmp3_i_1_i_mmul34_o[33];

    // i_unnamed_mmul35(MUX,233)@5
    assign i_unnamed_mmul35_s = i_cmp3_i_1_i_mmul34_c;
    always @(i_unnamed_mmul35_s or redist62_i_unnamed_mmul26_q_3_q or c_i32_0248_q)
    begin
        unique case (i_unnamed_mmul35_s)
            1'b0 : i_unnamed_mmul35_q = redist62_i_unnamed_mmul26_q_3_q;
            1'b1 : i_unnamed_mmul35_q = c_i32_0248_q;
            default : i_unnamed_mmul35_q = 32'b0;
        endcase
    end

    // redist34_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_1_shuffle_i_mmul0_NO_NAME_x_q_1(DELAY,594)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist34_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_1_shuffle_i_mmul0_NO_NAME_x_q_1_q <= '0;
        end
        else
        begin
            redist34_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_1_shuffle_i_mmul0_NO_NAME_x_q_1_q <= $unsigned(i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_1_shuffle_i_mmul0_NO_NAME_x_q);
        end
    end

    // i_sub4_i_1_i_mmul36(SUB,187)@5
    assign i_sub4_i_1_i_mmul36_a = {1'b0, redist34_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_1_shuffle_i_mmul0_NO_NAME_x_q_1_q};
    assign i_sub4_i_1_i_mmul36_b = {1'b0, i_unnamed_mmul35_q};
    assign i_sub4_i_1_i_mmul36_o = $unsigned(i_sub4_i_1_i_mmul36_a) - $unsigned(i_sub4_i_1_i_mmul36_b);
    assign i_sub4_i_1_i_mmul36_q = i_sub4_i_1_i_mmul36_o[32:0];

    // bgTrunc_i_sub4_i_1_i_mmul36_sel_x(BITSELECT,277)@5
    assign bgTrunc_i_sub4_i_1_i_mmul36_sel_x_b = $unsigned(i_sub4_i_1_i_mmul36_q[31:0]);

    // redist109_i_spec_select_i_mmul24_q_2(DELAY,669)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist109_i_spec_select_i_mmul24_q_2_q <= '0;
        end
        else
        begin
            redist109_i_spec_select_i_mmul24_q_2_q <= $unsigned(redist108_i_spec_select_i_mmul24_q_1_q);
        end
    end

    // i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_2_shuffle_i_mmul0_dsdk_ip_adapt_bitjoin1_x(BITJOIN,387)@5
    assign i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_2_shuffle_i_mmul0_dsdk_ip_adapt_bitjoin1_x_q = {c_i8_232_q, bgTrunc_i_sub4_i_1_i_mmul36_sel_x_b, redist109_i_spec_select_i_mmul24_q_2_q};

    // i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_2_shuffle_i_mmul0_NO_NAME_x(CHOOSEBITS,386)@5
    assign i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_2_shuffle_i_mmul0_NO_NAME_x_a = i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_2_shuffle_i_mmul0_dsdk_ip_adapt_bitjoin1_x_q;
    assign i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_2_shuffle_i_mmul0_NO_NAME_x_q = {i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_2_shuffle_i_mmul0_NO_NAME_x_a[62:62], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_2_shuffle_i_mmul0_NO_NAME_x_a[61:61], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_2_shuffle_i_mmul0_NO_NAME_x_a[60:60], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_2_shuffle_i_mmul0_NO_NAME_x_a[59:59], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_2_shuffle_i_mmul0_NO_NAME_x_a[58:58], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_2_shuffle_i_mmul0_NO_NAME_x_a[57:57], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_2_shuffle_i_mmul0_NO_NAME_x_a[56:56], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_2_shuffle_i_mmul0_NO_NAME_x_a[55:55], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_2_shuffle_i_mmul0_NO_NAME_x_a[54:54], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_2_shuffle_i_mmul0_NO_NAME_x_a[53:53], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_2_shuffle_i_mmul0_NO_NAME_x_a[52:52], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_2_shuffle_i_mmul0_NO_NAME_x_a[51:51], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_2_shuffle_i_mmul0_NO_NAME_x_a[50:50], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_2_shuffle_i_mmul0_NO_NAME_x_a[49:49], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_2_shuffle_i_mmul0_NO_NAME_x_a[48:48], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_2_shuffle_i_mmul0_NO_NAME_x_a[47:47], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_2_shuffle_i_mmul0_NO_NAME_x_a[46:46], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_2_shuffle_i_mmul0_NO_NAME_x_a[45:45], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_2_shuffle_i_mmul0_NO_NAME_x_a[44:44], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_2_shuffle_i_mmul0_NO_NAME_x_a[43:43], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_2_shuffle_i_mmul0_NO_NAME_x_a[42:42], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_2_shuffle_i_mmul0_NO_NAME_x_a[41:41], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_2_shuffle_i_mmul0_NO_NAME_x_a[40:40], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_2_shuffle_i_mmul0_NO_NAME_x_a[39:39], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_2_shuffle_i_mmul0_NO_NAME_x_a[38:38], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_2_shuffle_i_mmul0_NO_NAME_x_a[37:37], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_2_shuffle_i_mmul0_NO_NAME_x_a[36:36], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_2_shuffle_i_mmul0_NO_NAME_x_a[35:35], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_2_shuffle_i_mmul0_NO_NAME_x_a[34:34], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_2_shuffle_i_mmul0_NO_NAME_x_a[33:33], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_2_shuffle_i_mmul0_NO_NAME_x_a[32:32], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_2_shuffle_i_mmul0_NO_NAME_x_a[29:29]};

    // redist22_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_2_shuffle_i_mmul0_NO_NAME_x_q_1(DELAY,582)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist22_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_2_shuffle_i_mmul0_NO_NAME_x_q_1_q <= '0;
        end
        else
        begin
            redist22_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_2_shuffle_i_mmul0_NO_NAME_x_q_1_q <= $unsigned(i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_2_shuffle_i_mmul0_NO_NAME_x_q);
        end
    end

    // i_cmp3_i_2_i_mmul39(COMPARE,111)@6
    assign i_cmp3_i_2_i_mmul39_a = {2'b00, redist22_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_2_shuffle_i_mmul0_NO_NAME_x_q_1_q};
    assign i_cmp3_i_2_i_mmul39_b = {2'b00, redist63_i_unnamed_mmul26_q_4_q};
    assign i_cmp3_i_2_i_mmul39_o = $unsigned(i_cmp3_i_2_i_mmul39_a) - $unsigned(i_cmp3_i_2_i_mmul39_b);
    assign i_cmp3_i_2_i_mmul39_c[0] = i_cmp3_i_2_i_mmul39_o[33];

    // i_unnamed_mmul40(MUX,234)@6 + 1
    assign i_unnamed_mmul40_s = i_cmp3_i_2_i_mmul39_c;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_unnamed_mmul40_q <= 32'b0;
        end
        else
        begin
            unique case (i_unnamed_mmul40_s)
                1'b0 : i_unnamed_mmul40_q <= redist63_i_unnamed_mmul26_q_4_q;
                1'b1 : i_unnamed_mmul40_q <= c_i32_0248_q;
                default : i_unnamed_mmul40_q <= 32'b0;
            endcase
        end
    end

    // redist23_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_2_shuffle_i_mmul0_NO_NAME_x_q_2(DELAY,583)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist23_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_2_shuffle_i_mmul0_NO_NAME_x_q_2_q <= '0;
        end
        else
        begin
            redist23_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_2_shuffle_i_mmul0_NO_NAME_x_q_2_q <= $unsigned(redist22_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_2_shuffle_i_mmul0_NO_NAME_x_q_1_q);
        end
    end

    // i_sub4_i_2_i_mmul41(SUB,198)@7
    assign i_sub4_i_2_i_mmul41_a = {1'b0, redist23_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_2_shuffle_i_mmul0_NO_NAME_x_q_2_q};
    assign i_sub4_i_2_i_mmul41_b = {1'b0, i_unnamed_mmul40_q};
    assign i_sub4_i_2_i_mmul41_o = $unsigned(i_sub4_i_2_i_mmul41_a) - $unsigned(i_sub4_i_2_i_mmul41_b);
    assign i_sub4_i_2_i_mmul41_q = i_sub4_i_2_i_mmul41_o[32:0];

    // bgTrunc_i_sub4_i_2_i_mmul41_sel_x(BITSELECT,288)@7
    assign bgTrunc_i_sub4_i_2_i_mmul41_sel_x_b = $unsigned(i_sub4_i_2_i_mmul41_q[31:0]);

    // redist110_i_spec_select_i_mmul24_q_4(DELAY,670)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist110_i_spec_select_i_mmul24_q_4_delay_0 <= '0;
            redist110_i_spec_select_i_mmul24_q_4_q <= '0;
        end
        else
        begin
            redist110_i_spec_select_i_mmul24_q_4_delay_0 <= $unsigned(redist109_i_spec_select_i_mmul24_q_2_q);
            redist110_i_spec_select_i_mmul24_q_4_q <= redist110_i_spec_select_i_mmul24_q_4_delay_0;
        end
    end

    // i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_3_shuffle_i_mmul0_dsdk_ip_adapt_bitjoin1_x(BITJOIN,396)@7
    assign i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_3_shuffle_i_mmul0_dsdk_ip_adapt_bitjoin1_x_q = {c_i8_232_q, bgTrunc_i_sub4_i_2_i_mmul41_sel_x_b, redist110_i_spec_select_i_mmul24_q_4_q};

    // i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_3_shuffle_i_mmul0_NO_NAME_x(CHOOSEBITS,395)@7
    assign i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_3_shuffle_i_mmul0_NO_NAME_x_a = i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_3_shuffle_i_mmul0_dsdk_ip_adapt_bitjoin1_x_q;
    assign i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_3_shuffle_i_mmul0_NO_NAME_x_q = {i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_3_shuffle_i_mmul0_NO_NAME_x_a[62:62], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_3_shuffle_i_mmul0_NO_NAME_x_a[61:61], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_3_shuffle_i_mmul0_NO_NAME_x_a[60:60], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_3_shuffle_i_mmul0_NO_NAME_x_a[59:59], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_3_shuffle_i_mmul0_NO_NAME_x_a[58:58], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_3_shuffle_i_mmul0_NO_NAME_x_a[57:57], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_3_shuffle_i_mmul0_NO_NAME_x_a[56:56], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_3_shuffle_i_mmul0_NO_NAME_x_a[55:55], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_3_shuffle_i_mmul0_NO_NAME_x_a[54:54], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_3_shuffle_i_mmul0_NO_NAME_x_a[53:53], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_3_shuffle_i_mmul0_NO_NAME_x_a[52:52], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_3_shuffle_i_mmul0_NO_NAME_x_a[51:51], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_3_shuffle_i_mmul0_NO_NAME_x_a[50:50], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_3_shuffle_i_mmul0_NO_NAME_x_a[49:49], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_3_shuffle_i_mmul0_NO_NAME_x_a[48:48], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_3_shuffle_i_mmul0_NO_NAME_x_a[47:47], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_3_shuffle_i_mmul0_NO_NAME_x_a[46:46], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_3_shuffle_i_mmul0_NO_NAME_x_a[45:45], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_3_shuffle_i_mmul0_NO_NAME_x_a[44:44], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_3_shuffle_i_mmul0_NO_NAME_x_a[43:43], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_3_shuffle_i_mmul0_NO_NAME_x_a[42:42], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_3_shuffle_i_mmul0_NO_NAME_x_a[41:41], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_3_shuffle_i_mmul0_NO_NAME_x_a[40:40], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_3_shuffle_i_mmul0_NO_NAME_x_a[39:39], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_3_shuffle_i_mmul0_NO_NAME_x_a[38:38], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_3_shuffle_i_mmul0_NO_NAME_x_a[37:37], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_3_shuffle_i_mmul0_NO_NAME_x_a[36:36], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_3_shuffle_i_mmul0_NO_NAME_x_a[35:35], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_3_shuffle_i_mmul0_NO_NAME_x_a[34:34], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_3_shuffle_i_mmul0_NO_NAME_x_a[33:33], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_3_shuffle_i_mmul0_NO_NAME_x_a[32:32], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_3_shuffle_i_mmul0_NO_NAME_x_a[28:28]};

    // i_cmp3_i_3_i_mmul44(COMPARE,114)@7 + 1
    assign i_cmp3_i_3_i_mmul44_a = {2'b00, i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_3_shuffle_i_mmul0_NO_NAME_x_q};
    assign i_cmp3_i_3_i_mmul44_b = {2'b00, redist64_i_unnamed_mmul26_q_5_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_cmp3_i_3_i_mmul44_o <= 34'b0;
        end
        else
        begin
            i_cmp3_i_3_i_mmul44_o <= $unsigned(i_cmp3_i_3_i_mmul44_a) - $unsigned(i_cmp3_i_3_i_mmul44_b);
        end
    end
    assign i_cmp3_i_3_i_mmul44_c[0] = i_cmp3_i_3_i_mmul44_o[33];

    // i_unnamed_mmul45(MUX,235)@8
    assign i_unnamed_mmul45_s = i_cmp3_i_3_i_mmul44_c;
    always @(i_unnamed_mmul45_s or redist65_i_unnamed_mmul26_q_6_q or c_i32_0248_q)
    begin
        unique case (i_unnamed_mmul45_s)
            1'b0 : i_unnamed_mmul45_q = redist65_i_unnamed_mmul26_q_6_q;
            1'b1 : i_unnamed_mmul45_q = c_i32_0248_q;
            default : i_unnamed_mmul45_q = 32'b0;
        endcase
    end

    // redist19_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_3_shuffle_i_mmul0_NO_NAME_x_q_1(DELAY,579)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist19_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_3_shuffle_i_mmul0_NO_NAME_x_q_1_q <= '0;
        end
        else
        begin
            redist19_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_3_shuffle_i_mmul0_NO_NAME_x_q_1_q <= $unsigned(i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_3_shuffle_i_mmul0_NO_NAME_x_q);
        end
    end

    // i_sub4_i_3_i_mmul46(SUB,201)@8
    assign i_sub4_i_3_i_mmul46_a = {1'b0, redist19_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_3_shuffle_i_mmul0_NO_NAME_x_q_1_q};
    assign i_sub4_i_3_i_mmul46_b = {1'b0, i_unnamed_mmul45_q};
    assign i_sub4_i_3_i_mmul46_o = $unsigned(i_sub4_i_3_i_mmul46_a) - $unsigned(i_sub4_i_3_i_mmul46_b);
    assign i_sub4_i_3_i_mmul46_q = i_sub4_i_3_i_mmul46_o[32:0];

    // bgTrunc_i_sub4_i_3_i_mmul46_sel_x(BITSELECT,291)@8
    assign bgTrunc_i_sub4_i_3_i_mmul46_sel_x_b = $unsigned(i_sub4_i_3_i_mmul46_q[31:0]);

    // redist111_i_spec_select_i_mmul24_q_5(DELAY,671)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist111_i_spec_select_i_mmul24_q_5_q <= '0;
        end
        else
        begin
            redist111_i_spec_select_i_mmul24_q_5_q <= $unsigned(redist110_i_spec_select_i_mmul24_q_4_q);
        end
    end

    // i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_4_shuffle_i_mmul0_dsdk_ip_adapt_bitjoin1_x(BITJOIN,399)@8
    assign i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_4_shuffle_i_mmul0_dsdk_ip_adapt_bitjoin1_x_q = {c_i8_232_q, bgTrunc_i_sub4_i_3_i_mmul46_sel_x_b, redist111_i_spec_select_i_mmul24_q_5_q};

    // i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_4_shuffle_i_mmul0_NO_NAME_x(CHOOSEBITS,398)@8
    assign i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_4_shuffle_i_mmul0_NO_NAME_x_a = i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_4_shuffle_i_mmul0_dsdk_ip_adapt_bitjoin1_x_q;
    assign i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_4_shuffle_i_mmul0_NO_NAME_x_q = {i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_4_shuffle_i_mmul0_NO_NAME_x_a[62:62], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_4_shuffle_i_mmul0_NO_NAME_x_a[61:61], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_4_shuffle_i_mmul0_NO_NAME_x_a[60:60], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_4_shuffle_i_mmul0_NO_NAME_x_a[59:59], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_4_shuffle_i_mmul0_NO_NAME_x_a[58:58], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_4_shuffle_i_mmul0_NO_NAME_x_a[57:57], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_4_shuffle_i_mmul0_NO_NAME_x_a[56:56], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_4_shuffle_i_mmul0_NO_NAME_x_a[55:55], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_4_shuffle_i_mmul0_NO_NAME_x_a[54:54], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_4_shuffle_i_mmul0_NO_NAME_x_a[53:53], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_4_shuffle_i_mmul0_NO_NAME_x_a[52:52], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_4_shuffle_i_mmul0_NO_NAME_x_a[51:51], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_4_shuffle_i_mmul0_NO_NAME_x_a[50:50], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_4_shuffle_i_mmul0_NO_NAME_x_a[49:49], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_4_shuffle_i_mmul0_NO_NAME_x_a[48:48], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_4_shuffle_i_mmul0_NO_NAME_x_a[47:47], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_4_shuffle_i_mmul0_NO_NAME_x_a[46:46], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_4_shuffle_i_mmul0_NO_NAME_x_a[45:45], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_4_shuffle_i_mmul0_NO_NAME_x_a[44:44], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_4_shuffle_i_mmul0_NO_NAME_x_a[43:43], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_4_shuffle_i_mmul0_NO_NAME_x_a[42:42], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_4_shuffle_i_mmul0_NO_NAME_x_a[41:41], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_4_shuffle_i_mmul0_NO_NAME_x_a[40:40], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_4_shuffle_i_mmul0_NO_NAME_x_a[39:39], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_4_shuffle_i_mmul0_NO_NAME_x_a[38:38], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_4_shuffle_i_mmul0_NO_NAME_x_a[37:37], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_4_shuffle_i_mmul0_NO_NAME_x_a[36:36], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_4_shuffle_i_mmul0_NO_NAME_x_a[35:35], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_4_shuffle_i_mmul0_NO_NAME_x_a[34:34], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_4_shuffle_i_mmul0_NO_NAME_x_a[33:33], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_4_shuffle_i_mmul0_NO_NAME_x_a[32:32], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_4_shuffle_i_mmul0_NO_NAME_x_a[27:27]};

    // redist17_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_4_shuffle_i_mmul0_NO_NAME_x_q_1(DELAY,577)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist17_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_4_shuffle_i_mmul0_NO_NAME_x_q_1_q <= '0;
        end
        else
        begin
            redist17_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_4_shuffle_i_mmul0_NO_NAME_x_q_1_q <= $unsigned(i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_4_shuffle_i_mmul0_NO_NAME_x_q);
        end
    end

    // i_cmp3_i_4_i_mmul49(COMPARE,115)@9
    assign i_cmp3_i_4_i_mmul49_a = {2'b00, redist17_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_4_shuffle_i_mmul0_NO_NAME_x_q_1_q};
    assign i_cmp3_i_4_i_mmul49_b = {2'b00, redist66_i_unnamed_mmul26_q_7_q};
    assign i_cmp3_i_4_i_mmul49_o = $unsigned(i_cmp3_i_4_i_mmul49_a) - $unsigned(i_cmp3_i_4_i_mmul49_b);
    assign i_cmp3_i_4_i_mmul49_c[0] = i_cmp3_i_4_i_mmul49_o[33];

    // i_unnamed_mmul50(MUX,236)@9 + 1
    assign i_unnamed_mmul50_s = i_cmp3_i_4_i_mmul49_c;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_unnamed_mmul50_q <= 32'b0;
        end
        else
        begin
            unique case (i_unnamed_mmul50_s)
                1'b0 : i_unnamed_mmul50_q <= redist66_i_unnamed_mmul26_q_7_q;
                1'b1 : i_unnamed_mmul50_q <= c_i32_0248_q;
                default : i_unnamed_mmul50_q <= 32'b0;
            endcase
        end
    end

    // redist18_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_4_shuffle_i_mmul0_NO_NAME_x_q_2(DELAY,578)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist18_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_4_shuffle_i_mmul0_NO_NAME_x_q_2_q <= '0;
        end
        else
        begin
            redist18_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_4_shuffle_i_mmul0_NO_NAME_x_q_2_q <= $unsigned(redist17_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_4_shuffle_i_mmul0_NO_NAME_x_q_1_q);
        end
    end

    // i_sub4_i_4_i_mmul51(SUB,202)@10
    assign i_sub4_i_4_i_mmul51_a = {1'b0, redist18_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_4_shuffle_i_mmul0_NO_NAME_x_q_2_q};
    assign i_sub4_i_4_i_mmul51_b = {1'b0, i_unnamed_mmul50_q};
    assign i_sub4_i_4_i_mmul51_o = $unsigned(i_sub4_i_4_i_mmul51_a) - $unsigned(i_sub4_i_4_i_mmul51_b);
    assign i_sub4_i_4_i_mmul51_q = i_sub4_i_4_i_mmul51_o[32:0];

    // bgTrunc_i_sub4_i_4_i_mmul51_sel_x(BITSELECT,292)@10
    assign bgTrunc_i_sub4_i_4_i_mmul51_sel_x_b = $unsigned(i_sub4_i_4_i_mmul51_q[31:0]);

    // redist112_i_spec_select_i_mmul24_q_7(DELAY,672)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist112_i_spec_select_i_mmul24_q_7_delay_0 <= '0;
            redist112_i_spec_select_i_mmul24_q_7_q <= '0;
        end
        else
        begin
            redist112_i_spec_select_i_mmul24_q_7_delay_0 <= $unsigned(redist111_i_spec_select_i_mmul24_q_5_q);
            redist112_i_spec_select_i_mmul24_q_7_q <= redist112_i_spec_select_i_mmul24_q_7_delay_0;
        end
    end

    // i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_5_shuffle_i_mmul0_dsdk_ip_adapt_bitjoin1_x(BITJOIN,402)@10
    assign i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_5_shuffle_i_mmul0_dsdk_ip_adapt_bitjoin1_x_q = {c_i8_232_q, bgTrunc_i_sub4_i_4_i_mmul51_sel_x_b, redist112_i_spec_select_i_mmul24_q_7_q};

    // i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_5_shuffle_i_mmul0_NO_NAME_x(CHOOSEBITS,401)@10
    assign i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_5_shuffle_i_mmul0_NO_NAME_x_a = i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_5_shuffle_i_mmul0_dsdk_ip_adapt_bitjoin1_x_q;
    assign i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_5_shuffle_i_mmul0_NO_NAME_x_q = {i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_5_shuffle_i_mmul0_NO_NAME_x_a[62:62], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_5_shuffle_i_mmul0_NO_NAME_x_a[61:61], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_5_shuffle_i_mmul0_NO_NAME_x_a[60:60], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_5_shuffle_i_mmul0_NO_NAME_x_a[59:59], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_5_shuffle_i_mmul0_NO_NAME_x_a[58:58], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_5_shuffle_i_mmul0_NO_NAME_x_a[57:57], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_5_shuffle_i_mmul0_NO_NAME_x_a[56:56], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_5_shuffle_i_mmul0_NO_NAME_x_a[55:55], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_5_shuffle_i_mmul0_NO_NAME_x_a[54:54], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_5_shuffle_i_mmul0_NO_NAME_x_a[53:53], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_5_shuffle_i_mmul0_NO_NAME_x_a[52:52], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_5_shuffle_i_mmul0_NO_NAME_x_a[51:51], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_5_shuffle_i_mmul0_NO_NAME_x_a[50:50], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_5_shuffle_i_mmul0_NO_NAME_x_a[49:49], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_5_shuffle_i_mmul0_NO_NAME_x_a[48:48], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_5_shuffle_i_mmul0_NO_NAME_x_a[47:47], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_5_shuffle_i_mmul0_NO_NAME_x_a[46:46], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_5_shuffle_i_mmul0_NO_NAME_x_a[45:45], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_5_shuffle_i_mmul0_NO_NAME_x_a[44:44], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_5_shuffle_i_mmul0_NO_NAME_x_a[43:43], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_5_shuffle_i_mmul0_NO_NAME_x_a[42:42], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_5_shuffle_i_mmul0_NO_NAME_x_a[41:41], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_5_shuffle_i_mmul0_NO_NAME_x_a[40:40], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_5_shuffle_i_mmul0_NO_NAME_x_a[39:39], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_5_shuffle_i_mmul0_NO_NAME_x_a[38:38], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_5_shuffle_i_mmul0_NO_NAME_x_a[37:37], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_5_shuffle_i_mmul0_NO_NAME_x_a[36:36], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_5_shuffle_i_mmul0_NO_NAME_x_a[35:35], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_5_shuffle_i_mmul0_NO_NAME_x_a[34:34], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_5_shuffle_i_mmul0_NO_NAME_x_a[33:33], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_5_shuffle_i_mmul0_NO_NAME_x_a[32:32], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_5_shuffle_i_mmul0_NO_NAME_x_a[26:26]};

    // i_cmp3_i_5_i_mmul54(COMPARE,116)@10 + 1
    assign i_cmp3_i_5_i_mmul54_a = {2'b00, i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_5_shuffle_i_mmul0_NO_NAME_x_q};
    assign i_cmp3_i_5_i_mmul54_b = {2'b00, redist67_i_unnamed_mmul26_q_8_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_cmp3_i_5_i_mmul54_o <= 34'b0;
        end
        else
        begin
            i_cmp3_i_5_i_mmul54_o <= $unsigned(i_cmp3_i_5_i_mmul54_a) - $unsigned(i_cmp3_i_5_i_mmul54_b);
        end
    end
    assign i_cmp3_i_5_i_mmul54_c[0] = i_cmp3_i_5_i_mmul54_o[33];

    // i_unnamed_mmul55(MUX,237)@11
    assign i_unnamed_mmul55_s = i_cmp3_i_5_i_mmul54_c;
    always @(i_unnamed_mmul55_s or redist68_i_unnamed_mmul26_q_9_q or c_i32_0248_q)
    begin
        unique case (i_unnamed_mmul55_s)
            1'b0 : i_unnamed_mmul55_q = redist68_i_unnamed_mmul26_q_9_q;
            1'b1 : i_unnamed_mmul55_q = c_i32_0248_q;
            default : i_unnamed_mmul55_q = 32'b0;
        endcase
    end

    // redist16_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_5_shuffle_i_mmul0_NO_NAME_x_q_1(DELAY,576)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist16_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_5_shuffle_i_mmul0_NO_NAME_x_q_1_q <= '0;
        end
        else
        begin
            redist16_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_5_shuffle_i_mmul0_NO_NAME_x_q_1_q <= $unsigned(i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_5_shuffle_i_mmul0_NO_NAME_x_q);
        end
    end

    // i_sub4_i_5_i_mmul56(SUB,203)@11
    assign i_sub4_i_5_i_mmul56_a = {1'b0, redist16_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_5_shuffle_i_mmul0_NO_NAME_x_q_1_q};
    assign i_sub4_i_5_i_mmul56_b = {1'b0, i_unnamed_mmul55_q};
    assign i_sub4_i_5_i_mmul56_o = $unsigned(i_sub4_i_5_i_mmul56_a) - $unsigned(i_sub4_i_5_i_mmul56_b);
    assign i_sub4_i_5_i_mmul56_q = i_sub4_i_5_i_mmul56_o[32:0];

    // bgTrunc_i_sub4_i_5_i_mmul56_sel_x(BITSELECT,293)@11
    assign bgTrunc_i_sub4_i_5_i_mmul56_sel_x_b = $unsigned(i_sub4_i_5_i_mmul56_q[31:0]);

    // redist46_bgTrunc_i_sub4_i_5_i_mmul56_sel_x_b_1(DELAY,606)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist46_bgTrunc_i_sub4_i_5_i_mmul56_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist46_bgTrunc_i_sub4_i_5_i_mmul56_sel_x_b_1_q <= $unsigned(bgTrunc_i_sub4_i_5_i_mmul56_sel_x_b);
        end
    end

    // redist113_i_spec_select_i_mmul24_q_9(DELAY,673)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist113_i_spec_select_i_mmul24_q_9_delay_0 <= '0;
            redist113_i_spec_select_i_mmul24_q_9_q <= '0;
        end
        else
        begin
            redist113_i_spec_select_i_mmul24_q_9_delay_0 <= $unsigned(redist112_i_spec_select_i_mmul24_q_7_q);
            redist113_i_spec_select_i_mmul24_q_9_q <= redist113_i_spec_select_i_mmul24_q_9_delay_0;
        end
    end

    // i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_6_shuffle_i_mmul0_dsdk_ip_adapt_bitjoin1_x(BITJOIN,405)@12
    assign i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_6_shuffle_i_mmul0_dsdk_ip_adapt_bitjoin1_x_q = {c_i8_232_q, redist46_bgTrunc_i_sub4_i_5_i_mmul56_sel_x_b_1_q, redist113_i_spec_select_i_mmul24_q_9_q};

    // i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_6_shuffle_i_mmul0_NO_NAME_x(CHOOSEBITS,404)@12
    assign i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_6_shuffle_i_mmul0_NO_NAME_x_a = i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_6_shuffle_i_mmul0_dsdk_ip_adapt_bitjoin1_x_q;
    assign i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_6_shuffle_i_mmul0_NO_NAME_x_q = {i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_6_shuffle_i_mmul0_NO_NAME_x_a[62:62], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_6_shuffle_i_mmul0_NO_NAME_x_a[61:61], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_6_shuffle_i_mmul0_NO_NAME_x_a[60:60], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_6_shuffle_i_mmul0_NO_NAME_x_a[59:59], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_6_shuffle_i_mmul0_NO_NAME_x_a[58:58], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_6_shuffle_i_mmul0_NO_NAME_x_a[57:57], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_6_shuffle_i_mmul0_NO_NAME_x_a[56:56], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_6_shuffle_i_mmul0_NO_NAME_x_a[55:55], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_6_shuffle_i_mmul0_NO_NAME_x_a[54:54], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_6_shuffle_i_mmul0_NO_NAME_x_a[53:53], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_6_shuffle_i_mmul0_NO_NAME_x_a[52:52], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_6_shuffle_i_mmul0_NO_NAME_x_a[51:51], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_6_shuffle_i_mmul0_NO_NAME_x_a[50:50], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_6_shuffle_i_mmul0_NO_NAME_x_a[49:49], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_6_shuffle_i_mmul0_NO_NAME_x_a[48:48], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_6_shuffle_i_mmul0_NO_NAME_x_a[47:47], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_6_shuffle_i_mmul0_NO_NAME_x_a[46:46], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_6_shuffle_i_mmul0_NO_NAME_x_a[45:45], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_6_shuffle_i_mmul0_NO_NAME_x_a[44:44], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_6_shuffle_i_mmul0_NO_NAME_x_a[43:43], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_6_shuffle_i_mmul0_NO_NAME_x_a[42:42], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_6_shuffle_i_mmul0_NO_NAME_x_a[41:41], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_6_shuffle_i_mmul0_NO_NAME_x_a[40:40], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_6_shuffle_i_mmul0_NO_NAME_x_a[39:39], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_6_shuffle_i_mmul0_NO_NAME_x_a[38:38], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_6_shuffle_i_mmul0_NO_NAME_x_a[37:37], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_6_shuffle_i_mmul0_NO_NAME_x_a[36:36], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_6_shuffle_i_mmul0_NO_NAME_x_a[35:35], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_6_shuffle_i_mmul0_NO_NAME_x_a[34:34], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_6_shuffle_i_mmul0_NO_NAME_x_a[33:33], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_6_shuffle_i_mmul0_NO_NAME_x_a[32:32], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_6_shuffle_i_mmul0_NO_NAME_x_a[25:25]};

    // i_cmp3_i_6_i_mmul59(COMPARE,117)@12
    assign i_cmp3_i_6_i_mmul59_a = {2'b00, i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_6_shuffle_i_mmul0_NO_NAME_x_q};
    assign i_cmp3_i_6_i_mmul59_b = {2'b00, redist69_i_unnamed_mmul26_q_10_q};
    assign i_cmp3_i_6_i_mmul59_o = $unsigned(i_cmp3_i_6_i_mmul59_a) - $unsigned(i_cmp3_i_6_i_mmul59_b);
    assign i_cmp3_i_6_i_mmul59_c[0] = i_cmp3_i_6_i_mmul59_o[33];

    // i_unnamed_mmul60(MUX,238)@12 + 1
    assign i_unnamed_mmul60_s = i_cmp3_i_6_i_mmul59_c;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_unnamed_mmul60_q <= 32'b0;
        end
        else
        begin
            unique case (i_unnamed_mmul60_s)
                1'b0 : i_unnamed_mmul60_q <= redist69_i_unnamed_mmul26_q_10_q;
                1'b1 : i_unnamed_mmul60_q <= c_i32_0248_q;
                default : i_unnamed_mmul60_q <= 32'b0;
            endcase
        end
    end

    // redist15_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_6_shuffle_i_mmul0_NO_NAME_x_q_1(DELAY,575)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist15_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_6_shuffle_i_mmul0_NO_NAME_x_q_1_q <= '0;
        end
        else
        begin
            redist15_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_6_shuffle_i_mmul0_NO_NAME_x_q_1_q <= $unsigned(i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_6_shuffle_i_mmul0_NO_NAME_x_q);
        end
    end

    // i_sub4_i_6_i_mmul61(SUB,204)@13
    assign i_sub4_i_6_i_mmul61_a = {1'b0, redist15_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_6_shuffle_i_mmul0_NO_NAME_x_q_1_q};
    assign i_sub4_i_6_i_mmul61_b = {1'b0, i_unnamed_mmul60_q};
    assign i_sub4_i_6_i_mmul61_o = $unsigned(i_sub4_i_6_i_mmul61_a) - $unsigned(i_sub4_i_6_i_mmul61_b);
    assign i_sub4_i_6_i_mmul61_q = i_sub4_i_6_i_mmul61_o[32:0];

    // bgTrunc_i_sub4_i_6_i_mmul61_sel_x(BITSELECT,294)@13
    assign bgTrunc_i_sub4_i_6_i_mmul61_sel_x_b = $unsigned(i_sub4_i_6_i_mmul61_q[31:0]);

    // redist114_i_spec_select_i_mmul24_q_10(DELAY,674)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist114_i_spec_select_i_mmul24_q_10_q <= '0;
        end
        else
        begin
            redist114_i_spec_select_i_mmul24_q_10_q <= $unsigned(redist113_i_spec_select_i_mmul24_q_9_q);
        end
    end

    // i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_7_shuffle_i_mmul0_dsdk_ip_adapt_bitjoin1_x(BITJOIN,408)@13
    assign i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_7_shuffle_i_mmul0_dsdk_ip_adapt_bitjoin1_x_q = {c_i8_232_q, bgTrunc_i_sub4_i_6_i_mmul61_sel_x_b, redist114_i_spec_select_i_mmul24_q_10_q};

    // i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_7_shuffle_i_mmul0_NO_NAME_x(CHOOSEBITS,407)@13
    assign i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_7_shuffle_i_mmul0_NO_NAME_x_a = i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_7_shuffle_i_mmul0_dsdk_ip_adapt_bitjoin1_x_q;
    assign i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_7_shuffle_i_mmul0_NO_NAME_x_q = {i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_7_shuffle_i_mmul0_NO_NAME_x_a[62:62], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_7_shuffle_i_mmul0_NO_NAME_x_a[61:61], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_7_shuffle_i_mmul0_NO_NAME_x_a[60:60], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_7_shuffle_i_mmul0_NO_NAME_x_a[59:59], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_7_shuffle_i_mmul0_NO_NAME_x_a[58:58], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_7_shuffle_i_mmul0_NO_NAME_x_a[57:57], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_7_shuffle_i_mmul0_NO_NAME_x_a[56:56], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_7_shuffle_i_mmul0_NO_NAME_x_a[55:55], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_7_shuffle_i_mmul0_NO_NAME_x_a[54:54], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_7_shuffle_i_mmul0_NO_NAME_x_a[53:53], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_7_shuffle_i_mmul0_NO_NAME_x_a[52:52], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_7_shuffle_i_mmul0_NO_NAME_x_a[51:51], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_7_shuffle_i_mmul0_NO_NAME_x_a[50:50], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_7_shuffle_i_mmul0_NO_NAME_x_a[49:49], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_7_shuffle_i_mmul0_NO_NAME_x_a[48:48], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_7_shuffle_i_mmul0_NO_NAME_x_a[47:47], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_7_shuffle_i_mmul0_NO_NAME_x_a[46:46], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_7_shuffle_i_mmul0_NO_NAME_x_a[45:45], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_7_shuffle_i_mmul0_NO_NAME_x_a[44:44], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_7_shuffle_i_mmul0_NO_NAME_x_a[43:43], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_7_shuffle_i_mmul0_NO_NAME_x_a[42:42], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_7_shuffle_i_mmul0_NO_NAME_x_a[41:41], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_7_shuffle_i_mmul0_NO_NAME_x_a[40:40], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_7_shuffle_i_mmul0_NO_NAME_x_a[39:39], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_7_shuffle_i_mmul0_NO_NAME_x_a[38:38], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_7_shuffle_i_mmul0_NO_NAME_x_a[37:37], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_7_shuffle_i_mmul0_NO_NAME_x_a[36:36], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_7_shuffle_i_mmul0_NO_NAME_x_a[35:35], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_7_shuffle_i_mmul0_NO_NAME_x_a[34:34], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_7_shuffle_i_mmul0_NO_NAME_x_a[33:33], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_7_shuffle_i_mmul0_NO_NAME_x_a[32:32], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_7_shuffle_i_mmul0_NO_NAME_x_a[24:24]};

    // i_cmp3_i_7_i_mmul64(COMPARE,118)@13 + 1
    assign i_cmp3_i_7_i_mmul64_a = {2'b00, i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_7_shuffle_i_mmul0_NO_NAME_x_q};
    assign i_cmp3_i_7_i_mmul64_b = {2'b00, redist70_i_unnamed_mmul26_q_11_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_cmp3_i_7_i_mmul64_o <= 34'b0;
        end
        else
        begin
            i_cmp3_i_7_i_mmul64_o <= $unsigned(i_cmp3_i_7_i_mmul64_a) - $unsigned(i_cmp3_i_7_i_mmul64_b);
        end
    end
    assign i_cmp3_i_7_i_mmul64_c[0] = i_cmp3_i_7_i_mmul64_o[33];

    // i_unnamed_mmul65(MUX,239)@14
    assign i_unnamed_mmul65_s = i_cmp3_i_7_i_mmul64_c;
    always @(i_unnamed_mmul65_s or redist71_i_unnamed_mmul26_q_12_q or c_i32_0248_q)
    begin
        unique case (i_unnamed_mmul65_s)
            1'b0 : i_unnamed_mmul65_q = redist71_i_unnamed_mmul26_q_12_q;
            1'b1 : i_unnamed_mmul65_q = c_i32_0248_q;
            default : i_unnamed_mmul65_q = 32'b0;
        endcase
    end

    // redist14_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_7_shuffle_i_mmul0_NO_NAME_x_q_1(DELAY,574)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_7_shuffle_i_mmul0_NO_NAME_x_q_1_q <= '0;
        end
        else
        begin
            redist14_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_7_shuffle_i_mmul0_NO_NAME_x_q_1_q <= $unsigned(i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_7_shuffle_i_mmul0_NO_NAME_x_q);
        end
    end

    // i_sub4_i_7_i_mmul66(SUB,205)@14
    assign i_sub4_i_7_i_mmul66_a = {1'b0, redist14_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_7_shuffle_i_mmul0_NO_NAME_x_q_1_q};
    assign i_sub4_i_7_i_mmul66_b = {1'b0, i_unnamed_mmul65_q};
    assign i_sub4_i_7_i_mmul66_o = $unsigned(i_sub4_i_7_i_mmul66_a) - $unsigned(i_sub4_i_7_i_mmul66_b);
    assign i_sub4_i_7_i_mmul66_q = i_sub4_i_7_i_mmul66_o[32:0];

    // bgTrunc_i_sub4_i_7_i_mmul66_sel_x(BITSELECT,295)@14
    assign bgTrunc_i_sub4_i_7_i_mmul66_sel_x_b = $unsigned(i_sub4_i_7_i_mmul66_q[31:0]);

    // redist115_i_spec_select_i_mmul24_q_11(DELAY,675)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist115_i_spec_select_i_mmul24_q_11_q <= '0;
        end
        else
        begin
            redist115_i_spec_select_i_mmul24_q_11_q <= $unsigned(redist114_i_spec_select_i_mmul24_q_10_q);
        end
    end

    // i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_8_shuffle_i_mmul0_dsdk_ip_adapt_bitjoin1_x(BITJOIN,411)@14
    assign i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_8_shuffle_i_mmul0_dsdk_ip_adapt_bitjoin1_x_q = {c_i8_232_q, bgTrunc_i_sub4_i_7_i_mmul66_sel_x_b, redist115_i_spec_select_i_mmul24_q_11_q};

    // i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_8_shuffle_i_mmul0_NO_NAME_x(CHOOSEBITS,410)@14
    assign i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_8_shuffle_i_mmul0_NO_NAME_x_a = i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_8_shuffle_i_mmul0_dsdk_ip_adapt_bitjoin1_x_q;
    assign i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_8_shuffle_i_mmul0_NO_NAME_x_q = {i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_8_shuffle_i_mmul0_NO_NAME_x_a[62:62], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_8_shuffle_i_mmul0_NO_NAME_x_a[61:61], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_8_shuffle_i_mmul0_NO_NAME_x_a[60:60], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_8_shuffle_i_mmul0_NO_NAME_x_a[59:59], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_8_shuffle_i_mmul0_NO_NAME_x_a[58:58], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_8_shuffle_i_mmul0_NO_NAME_x_a[57:57], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_8_shuffle_i_mmul0_NO_NAME_x_a[56:56], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_8_shuffle_i_mmul0_NO_NAME_x_a[55:55], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_8_shuffle_i_mmul0_NO_NAME_x_a[54:54], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_8_shuffle_i_mmul0_NO_NAME_x_a[53:53], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_8_shuffle_i_mmul0_NO_NAME_x_a[52:52], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_8_shuffle_i_mmul0_NO_NAME_x_a[51:51], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_8_shuffle_i_mmul0_NO_NAME_x_a[50:50], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_8_shuffle_i_mmul0_NO_NAME_x_a[49:49], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_8_shuffle_i_mmul0_NO_NAME_x_a[48:48], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_8_shuffle_i_mmul0_NO_NAME_x_a[47:47], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_8_shuffle_i_mmul0_NO_NAME_x_a[46:46], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_8_shuffle_i_mmul0_NO_NAME_x_a[45:45], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_8_shuffle_i_mmul0_NO_NAME_x_a[44:44], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_8_shuffle_i_mmul0_NO_NAME_x_a[43:43], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_8_shuffle_i_mmul0_NO_NAME_x_a[42:42], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_8_shuffle_i_mmul0_NO_NAME_x_a[41:41], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_8_shuffle_i_mmul0_NO_NAME_x_a[40:40], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_8_shuffle_i_mmul0_NO_NAME_x_a[39:39], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_8_shuffle_i_mmul0_NO_NAME_x_a[38:38], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_8_shuffle_i_mmul0_NO_NAME_x_a[37:37], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_8_shuffle_i_mmul0_NO_NAME_x_a[36:36], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_8_shuffle_i_mmul0_NO_NAME_x_a[35:35], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_8_shuffle_i_mmul0_NO_NAME_x_a[34:34], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_8_shuffle_i_mmul0_NO_NAME_x_a[33:33], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_8_shuffle_i_mmul0_NO_NAME_x_a[32:32], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_8_shuffle_i_mmul0_NO_NAME_x_a[23:23]};

    // redist12_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_8_shuffle_i_mmul0_NO_NAME_x_q_1(DELAY,572)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_8_shuffle_i_mmul0_NO_NAME_x_q_1_q <= '0;
        end
        else
        begin
            redist12_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_8_shuffle_i_mmul0_NO_NAME_x_q_1_q <= $unsigned(i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_8_shuffle_i_mmul0_NO_NAME_x_q);
        end
    end

    // i_cmp3_i_8_i_mmul69(COMPARE,119)@15
    assign i_cmp3_i_8_i_mmul69_a = {2'b00, redist12_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_8_shuffle_i_mmul0_NO_NAME_x_q_1_q};
    assign i_cmp3_i_8_i_mmul69_b = {2'b00, redist72_i_unnamed_mmul26_q_13_q};
    assign i_cmp3_i_8_i_mmul69_o = $unsigned(i_cmp3_i_8_i_mmul69_a) - $unsigned(i_cmp3_i_8_i_mmul69_b);
    assign i_cmp3_i_8_i_mmul69_c[0] = i_cmp3_i_8_i_mmul69_o[33];

    // i_unnamed_mmul70(MUX,240)@15 + 1
    assign i_unnamed_mmul70_s = i_cmp3_i_8_i_mmul69_c;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_unnamed_mmul70_q <= 32'b0;
        end
        else
        begin
            unique case (i_unnamed_mmul70_s)
                1'b0 : i_unnamed_mmul70_q <= redist72_i_unnamed_mmul26_q_13_q;
                1'b1 : i_unnamed_mmul70_q <= c_i32_0248_q;
                default : i_unnamed_mmul70_q <= 32'b0;
            endcase
        end
    end

    // redist13_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_8_shuffle_i_mmul0_NO_NAME_x_q_2(DELAY,573)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_8_shuffle_i_mmul0_NO_NAME_x_q_2_q <= '0;
        end
        else
        begin
            redist13_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_8_shuffle_i_mmul0_NO_NAME_x_q_2_q <= $unsigned(redist12_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_8_shuffle_i_mmul0_NO_NAME_x_q_1_q);
        end
    end

    // i_sub4_i_8_i_mmul71(SUB,206)@16
    assign i_sub4_i_8_i_mmul71_a = {1'b0, redist13_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_8_shuffle_i_mmul0_NO_NAME_x_q_2_q};
    assign i_sub4_i_8_i_mmul71_b = {1'b0, i_unnamed_mmul70_q};
    assign i_sub4_i_8_i_mmul71_o = $unsigned(i_sub4_i_8_i_mmul71_a) - $unsigned(i_sub4_i_8_i_mmul71_b);
    assign i_sub4_i_8_i_mmul71_q = i_sub4_i_8_i_mmul71_o[32:0];

    // bgTrunc_i_sub4_i_8_i_mmul71_sel_x(BITSELECT,296)@16
    assign bgTrunc_i_sub4_i_8_i_mmul71_sel_x_b = $unsigned(i_sub4_i_8_i_mmul71_q[31:0]);

    // redist116_i_spec_select_i_mmul24_q_13(DELAY,676)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist116_i_spec_select_i_mmul24_q_13_delay_0 <= '0;
            redist116_i_spec_select_i_mmul24_q_13_q <= '0;
        end
        else
        begin
            redist116_i_spec_select_i_mmul24_q_13_delay_0 <= $unsigned(redist115_i_spec_select_i_mmul24_q_11_q);
            redist116_i_spec_select_i_mmul24_q_13_q <= redist116_i_spec_select_i_mmul24_q_13_delay_0;
        end
    end

    // i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_9_shuffle_i_mmul0_dsdk_ip_adapt_bitjoin1_x(BITJOIN,414)@16
    assign i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_9_shuffle_i_mmul0_dsdk_ip_adapt_bitjoin1_x_q = {c_i8_232_q, bgTrunc_i_sub4_i_8_i_mmul71_sel_x_b, redist116_i_spec_select_i_mmul24_q_13_q};

    // i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_9_shuffle_i_mmul0_NO_NAME_x(CHOOSEBITS,413)@16
    assign i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_9_shuffle_i_mmul0_NO_NAME_x_a = i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_9_shuffle_i_mmul0_dsdk_ip_adapt_bitjoin1_x_q;
    assign i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_9_shuffle_i_mmul0_NO_NAME_x_q = {i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_9_shuffle_i_mmul0_NO_NAME_x_a[62:62], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_9_shuffle_i_mmul0_NO_NAME_x_a[61:61], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_9_shuffle_i_mmul0_NO_NAME_x_a[60:60], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_9_shuffle_i_mmul0_NO_NAME_x_a[59:59], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_9_shuffle_i_mmul0_NO_NAME_x_a[58:58], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_9_shuffle_i_mmul0_NO_NAME_x_a[57:57], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_9_shuffle_i_mmul0_NO_NAME_x_a[56:56], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_9_shuffle_i_mmul0_NO_NAME_x_a[55:55], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_9_shuffle_i_mmul0_NO_NAME_x_a[54:54], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_9_shuffle_i_mmul0_NO_NAME_x_a[53:53], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_9_shuffle_i_mmul0_NO_NAME_x_a[52:52], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_9_shuffle_i_mmul0_NO_NAME_x_a[51:51], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_9_shuffle_i_mmul0_NO_NAME_x_a[50:50], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_9_shuffle_i_mmul0_NO_NAME_x_a[49:49], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_9_shuffle_i_mmul0_NO_NAME_x_a[48:48], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_9_shuffle_i_mmul0_NO_NAME_x_a[47:47], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_9_shuffle_i_mmul0_NO_NAME_x_a[46:46], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_9_shuffle_i_mmul0_NO_NAME_x_a[45:45], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_9_shuffle_i_mmul0_NO_NAME_x_a[44:44], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_9_shuffle_i_mmul0_NO_NAME_x_a[43:43], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_9_shuffle_i_mmul0_NO_NAME_x_a[42:42], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_9_shuffle_i_mmul0_NO_NAME_x_a[41:41], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_9_shuffle_i_mmul0_NO_NAME_x_a[40:40], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_9_shuffle_i_mmul0_NO_NAME_x_a[39:39], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_9_shuffle_i_mmul0_NO_NAME_x_a[38:38], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_9_shuffle_i_mmul0_NO_NAME_x_a[37:37], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_9_shuffle_i_mmul0_NO_NAME_x_a[36:36], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_9_shuffle_i_mmul0_NO_NAME_x_a[35:35], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_9_shuffle_i_mmul0_NO_NAME_x_a[34:34], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_9_shuffle_i_mmul0_NO_NAME_x_a[33:33], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_9_shuffle_i_mmul0_NO_NAME_x_a[32:32], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_9_shuffle_i_mmul0_NO_NAME_x_a[22:22]};

    // i_cmp3_i_9_i_mmul74(COMPARE,120)@16 + 1
    assign i_cmp3_i_9_i_mmul74_a = {2'b00, i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_9_shuffle_i_mmul0_NO_NAME_x_q};
    assign i_cmp3_i_9_i_mmul74_b = {2'b00, redist73_i_unnamed_mmul26_q_14_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_cmp3_i_9_i_mmul74_o <= 34'b0;
        end
        else
        begin
            i_cmp3_i_9_i_mmul74_o <= $unsigned(i_cmp3_i_9_i_mmul74_a) - $unsigned(i_cmp3_i_9_i_mmul74_b);
        end
    end
    assign i_cmp3_i_9_i_mmul74_c[0] = i_cmp3_i_9_i_mmul74_o[33];

    // i_unnamed_mmul75(MUX,241)@17
    assign i_unnamed_mmul75_s = i_cmp3_i_9_i_mmul74_c;
    always @(i_unnamed_mmul75_s or redist74_i_unnamed_mmul26_q_15_q or c_i32_0248_q)
    begin
        unique case (i_unnamed_mmul75_s)
            1'b0 : i_unnamed_mmul75_q = redist74_i_unnamed_mmul26_q_15_q;
            1'b1 : i_unnamed_mmul75_q = c_i32_0248_q;
            default : i_unnamed_mmul75_q = 32'b0;
        endcase
    end

    // redist11_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_9_shuffle_i_mmul0_NO_NAME_x_q_1(DELAY,571)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_9_shuffle_i_mmul0_NO_NAME_x_q_1_q <= '0;
        end
        else
        begin
            redist11_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_9_shuffle_i_mmul0_NO_NAME_x_q_1_q <= $unsigned(i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_9_shuffle_i_mmul0_NO_NAME_x_q);
        end
    end

    // i_sub4_i_9_i_mmul76(SUB,207)@17
    assign i_sub4_i_9_i_mmul76_a = {1'b0, redist11_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_9_shuffle_i_mmul0_NO_NAME_x_q_1_q};
    assign i_sub4_i_9_i_mmul76_b = {1'b0, i_unnamed_mmul75_q};
    assign i_sub4_i_9_i_mmul76_o = $unsigned(i_sub4_i_9_i_mmul76_a) - $unsigned(i_sub4_i_9_i_mmul76_b);
    assign i_sub4_i_9_i_mmul76_q = i_sub4_i_9_i_mmul76_o[32:0];

    // bgTrunc_i_sub4_i_9_i_mmul76_sel_x(BITSELECT,297)@17
    assign bgTrunc_i_sub4_i_9_i_mmul76_sel_x_b = $unsigned(i_sub4_i_9_i_mmul76_q[31:0]);

    // redist45_bgTrunc_i_sub4_i_9_i_mmul76_sel_x_b_1(DELAY,605)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist45_bgTrunc_i_sub4_i_9_i_mmul76_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist45_bgTrunc_i_sub4_i_9_i_mmul76_sel_x_b_1_q <= $unsigned(bgTrunc_i_sub4_i_9_i_mmul76_sel_x_b);
        end
    end

    // redist117_i_spec_select_i_mmul24_q_15(DELAY,677)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist117_i_spec_select_i_mmul24_q_15_delay_0 <= '0;
            redist117_i_spec_select_i_mmul24_q_15_q <= '0;
        end
        else
        begin
            redist117_i_spec_select_i_mmul24_q_15_delay_0 <= $unsigned(redist116_i_spec_select_i_mmul24_q_13_q);
            redist117_i_spec_select_i_mmul24_q_15_q <= redist117_i_spec_select_i_mmul24_q_15_delay_0;
        end
    end

    // i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_10_shuffle_i_mmul0_dsdk_ip_adapt_bitjoin1_x(BITJOIN,324)@18
    assign i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_10_shuffle_i_mmul0_dsdk_ip_adapt_bitjoin1_x_q = {c_i8_232_q, redist45_bgTrunc_i_sub4_i_9_i_mmul76_sel_x_b_1_q, redist117_i_spec_select_i_mmul24_q_15_q};

    // i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_10_shuffle_i_mmul0_NO_NAME_x(CHOOSEBITS,323)@18
    assign i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_10_shuffle_i_mmul0_NO_NAME_x_a = i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_10_shuffle_i_mmul0_dsdk_ip_adapt_bitjoin1_x_q;
    assign i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_10_shuffle_i_mmul0_NO_NAME_x_q = {i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_10_shuffle_i_mmul0_NO_NAME_x_a[62:62], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_10_shuffle_i_mmul0_NO_NAME_x_a[61:61], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_10_shuffle_i_mmul0_NO_NAME_x_a[60:60], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_10_shuffle_i_mmul0_NO_NAME_x_a[59:59], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_10_shuffle_i_mmul0_NO_NAME_x_a[58:58], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_10_shuffle_i_mmul0_NO_NAME_x_a[57:57], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_10_shuffle_i_mmul0_NO_NAME_x_a[56:56], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_10_shuffle_i_mmul0_NO_NAME_x_a[55:55], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_10_shuffle_i_mmul0_NO_NAME_x_a[54:54], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_10_shuffle_i_mmul0_NO_NAME_x_a[53:53], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_10_shuffle_i_mmul0_NO_NAME_x_a[52:52], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_10_shuffle_i_mmul0_NO_NAME_x_a[51:51], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_10_shuffle_i_mmul0_NO_NAME_x_a[50:50], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_10_shuffle_i_mmul0_NO_NAME_x_a[49:49], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_10_shuffle_i_mmul0_NO_NAME_x_a[48:48], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_10_shuffle_i_mmul0_NO_NAME_x_a[47:47], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_10_shuffle_i_mmul0_NO_NAME_x_a[46:46], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_10_shuffle_i_mmul0_NO_NAME_x_a[45:45], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_10_shuffle_i_mmul0_NO_NAME_x_a[44:44], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_10_shuffle_i_mmul0_NO_NAME_x_a[43:43], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_10_shuffle_i_mmul0_NO_NAME_x_a[42:42], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_10_shuffle_i_mmul0_NO_NAME_x_a[41:41], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_10_shuffle_i_mmul0_NO_NAME_x_a[40:40], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_10_shuffle_i_mmul0_NO_NAME_x_a[39:39], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_10_shuffle_i_mmul0_NO_NAME_x_a[38:38], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_10_shuffle_i_mmul0_NO_NAME_x_a[37:37], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_10_shuffle_i_mmul0_NO_NAME_x_a[36:36], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_10_shuffle_i_mmul0_NO_NAME_x_a[35:35], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_10_shuffle_i_mmul0_NO_NAME_x_a[34:34], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_10_shuffle_i_mmul0_NO_NAME_x_a[33:33], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_10_shuffle_i_mmul0_NO_NAME_x_a[32:32], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_10_shuffle_i_mmul0_NO_NAME_x_a[21:21]};

    // i_cmp3_i_10_i_mmul79(COMPARE,90)@18
    assign i_cmp3_i_10_i_mmul79_a = {2'b00, i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_10_shuffle_i_mmul0_NO_NAME_x_q};
    assign i_cmp3_i_10_i_mmul79_b = {2'b00, redist75_i_unnamed_mmul26_q_16_q};
    assign i_cmp3_i_10_i_mmul79_o = $unsigned(i_cmp3_i_10_i_mmul79_a) - $unsigned(i_cmp3_i_10_i_mmul79_b);
    assign i_cmp3_i_10_i_mmul79_c[0] = i_cmp3_i_10_i_mmul79_o[33];

    // i_unnamed_mmul80(MUX,242)@18 + 1
    assign i_unnamed_mmul80_s = i_cmp3_i_10_i_mmul79_c;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_unnamed_mmul80_q <= 32'b0;
        end
        else
        begin
            unique case (i_unnamed_mmul80_s)
                1'b0 : i_unnamed_mmul80_q <= redist75_i_unnamed_mmul26_q_16_q;
                1'b1 : i_unnamed_mmul80_q <= c_i32_0248_q;
                default : i_unnamed_mmul80_q <= 32'b0;
            endcase
        end
    end

    // redist44_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_10_shuffle_i_mmul0_NO_NAME_x_q_1(DELAY,604)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist44_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_10_shuffle_i_mmul0_NO_NAME_x_q_1_q <= '0;
        end
        else
        begin
            redist44_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_10_shuffle_i_mmul0_NO_NAME_x_q_1_q <= $unsigned(i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_10_shuffle_i_mmul0_NO_NAME_x_q);
        end
    end

    // i_sub4_i_10_i_mmul81(SUB,177)@19
    assign i_sub4_i_10_i_mmul81_a = {1'b0, redist44_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_10_shuffle_i_mmul0_NO_NAME_x_q_1_q};
    assign i_sub4_i_10_i_mmul81_b = {1'b0, i_unnamed_mmul80_q};
    assign i_sub4_i_10_i_mmul81_o = $unsigned(i_sub4_i_10_i_mmul81_a) - $unsigned(i_sub4_i_10_i_mmul81_b);
    assign i_sub4_i_10_i_mmul81_q = i_sub4_i_10_i_mmul81_o[32:0];

    // bgTrunc_i_sub4_i_10_i_mmul81_sel_x(BITSELECT,267)@19
    assign bgTrunc_i_sub4_i_10_i_mmul81_sel_x_b = $unsigned(i_sub4_i_10_i_mmul81_q[31:0]);

    // redist118_i_spec_select_i_mmul24_q_16(DELAY,678)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist118_i_spec_select_i_mmul24_q_16_q <= '0;
        end
        else
        begin
            redist118_i_spec_select_i_mmul24_q_16_q <= $unsigned(redist117_i_spec_select_i_mmul24_q_15_q);
        end
    end

    // i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_11_shuffle_i_mmul0_dsdk_ip_adapt_bitjoin1_x(BITJOIN,327)@19
    assign i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_11_shuffle_i_mmul0_dsdk_ip_adapt_bitjoin1_x_q = {c_i8_232_q, bgTrunc_i_sub4_i_10_i_mmul81_sel_x_b, redist118_i_spec_select_i_mmul24_q_16_q};

    // i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_11_shuffle_i_mmul0_NO_NAME_x(CHOOSEBITS,326)@19
    assign i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_11_shuffle_i_mmul0_NO_NAME_x_a = i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_11_shuffle_i_mmul0_dsdk_ip_adapt_bitjoin1_x_q;
    assign i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_11_shuffle_i_mmul0_NO_NAME_x_q = {i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_11_shuffle_i_mmul0_NO_NAME_x_a[62:62], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_11_shuffle_i_mmul0_NO_NAME_x_a[61:61], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_11_shuffle_i_mmul0_NO_NAME_x_a[60:60], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_11_shuffle_i_mmul0_NO_NAME_x_a[59:59], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_11_shuffle_i_mmul0_NO_NAME_x_a[58:58], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_11_shuffle_i_mmul0_NO_NAME_x_a[57:57], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_11_shuffle_i_mmul0_NO_NAME_x_a[56:56], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_11_shuffle_i_mmul0_NO_NAME_x_a[55:55], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_11_shuffle_i_mmul0_NO_NAME_x_a[54:54], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_11_shuffle_i_mmul0_NO_NAME_x_a[53:53], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_11_shuffle_i_mmul0_NO_NAME_x_a[52:52], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_11_shuffle_i_mmul0_NO_NAME_x_a[51:51], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_11_shuffle_i_mmul0_NO_NAME_x_a[50:50], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_11_shuffle_i_mmul0_NO_NAME_x_a[49:49], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_11_shuffle_i_mmul0_NO_NAME_x_a[48:48], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_11_shuffle_i_mmul0_NO_NAME_x_a[47:47], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_11_shuffle_i_mmul0_NO_NAME_x_a[46:46], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_11_shuffle_i_mmul0_NO_NAME_x_a[45:45], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_11_shuffle_i_mmul0_NO_NAME_x_a[44:44], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_11_shuffle_i_mmul0_NO_NAME_x_a[43:43], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_11_shuffle_i_mmul0_NO_NAME_x_a[42:42], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_11_shuffle_i_mmul0_NO_NAME_x_a[41:41], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_11_shuffle_i_mmul0_NO_NAME_x_a[40:40], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_11_shuffle_i_mmul0_NO_NAME_x_a[39:39], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_11_shuffle_i_mmul0_NO_NAME_x_a[38:38], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_11_shuffle_i_mmul0_NO_NAME_x_a[37:37], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_11_shuffle_i_mmul0_NO_NAME_x_a[36:36], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_11_shuffle_i_mmul0_NO_NAME_x_a[35:35], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_11_shuffle_i_mmul0_NO_NAME_x_a[34:34], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_11_shuffle_i_mmul0_NO_NAME_x_a[33:33], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_11_shuffle_i_mmul0_NO_NAME_x_a[32:32], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_11_shuffle_i_mmul0_NO_NAME_x_a[20:20]};

    // i_cmp3_i_11_i_mmul84(COMPARE,91)@19 + 1
    assign i_cmp3_i_11_i_mmul84_a = {2'b00, i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_11_shuffle_i_mmul0_NO_NAME_x_q};
    assign i_cmp3_i_11_i_mmul84_b = {2'b00, redist76_i_unnamed_mmul26_q_17_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_cmp3_i_11_i_mmul84_o <= 34'b0;
        end
        else
        begin
            i_cmp3_i_11_i_mmul84_o <= $unsigned(i_cmp3_i_11_i_mmul84_a) - $unsigned(i_cmp3_i_11_i_mmul84_b);
        end
    end
    assign i_cmp3_i_11_i_mmul84_c[0] = i_cmp3_i_11_i_mmul84_o[33];

    // i_unnamed_mmul85(MUX,243)@20
    assign i_unnamed_mmul85_s = i_cmp3_i_11_i_mmul84_c;
    always @(i_unnamed_mmul85_s or redist77_i_unnamed_mmul26_q_18_q or c_i32_0248_q)
    begin
        unique case (i_unnamed_mmul85_s)
            1'b0 : i_unnamed_mmul85_q = redist77_i_unnamed_mmul26_q_18_q;
            1'b1 : i_unnamed_mmul85_q = c_i32_0248_q;
            default : i_unnamed_mmul85_q = 32'b0;
        endcase
    end

    // redist43_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_11_shuffle_i_mmul0_NO_NAME_x_q_1(DELAY,603)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist43_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_11_shuffle_i_mmul0_NO_NAME_x_q_1_q <= '0;
        end
        else
        begin
            redist43_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_11_shuffle_i_mmul0_NO_NAME_x_q_1_q <= $unsigned(i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_11_shuffle_i_mmul0_NO_NAME_x_q);
        end
    end

    // i_sub4_i_11_i_mmul86(SUB,178)@20
    assign i_sub4_i_11_i_mmul86_a = {1'b0, redist43_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_11_shuffle_i_mmul0_NO_NAME_x_q_1_q};
    assign i_sub4_i_11_i_mmul86_b = {1'b0, i_unnamed_mmul85_q};
    assign i_sub4_i_11_i_mmul86_o = $unsigned(i_sub4_i_11_i_mmul86_a) - $unsigned(i_sub4_i_11_i_mmul86_b);
    assign i_sub4_i_11_i_mmul86_q = i_sub4_i_11_i_mmul86_o[32:0];

    // bgTrunc_i_sub4_i_11_i_mmul86_sel_x(BITSELECT,268)@20
    assign bgTrunc_i_sub4_i_11_i_mmul86_sel_x_b = $unsigned(i_sub4_i_11_i_mmul86_q[31:0]);

    // redist57_bgTrunc_i_sub4_i_11_i_mmul86_sel_x_b_1(DELAY,617)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist57_bgTrunc_i_sub4_i_11_i_mmul86_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist57_bgTrunc_i_sub4_i_11_i_mmul86_sel_x_b_1_q <= $unsigned(bgTrunc_i_sub4_i_11_i_mmul86_sel_x_b);
        end
    end

    // redist119_i_spec_select_i_mmul24_q_18(DELAY,679)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist119_i_spec_select_i_mmul24_q_18_delay_0 <= '0;
            redist119_i_spec_select_i_mmul24_q_18_q <= '0;
        end
        else
        begin
            redist119_i_spec_select_i_mmul24_q_18_delay_0 <= $unsigned(redist118_i_spec_select_i_mmul24_q_16_q);
            redist119_i_spec_select_i_mmul24_q_18_q <= redist119_i_spec_select_i_mmul24_q_18_delay_0;
        end
    end

    // i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_12_shuffle_i_mmul0_dsdk_ip_adapt_bitjoin1_x(BITJOIN,330)@21
    assign i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_12_shuffle_i_mmul0_dsdk_ip_adapt_bitjoin1_x_q = {c_i8_232_q, redist57_bgTrunc_i_sub4_i_11_i_mmul86_sel_x_b_1_q, redist119_i_spec_select_i_mmul24_q_18_q};

    // i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_12_shuffle_i_mmul0_NO_NAME_x(CHOOSEBITS,329)@21
    assign i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_12_shuffle_i_mmul0_NO_NAME_x_a = i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_12_shuffle_i_mmul0_dsdk_ip_adapt_bitjoin1_x_q;
    assign i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_12_shuffle_i_mmul0_NO_NAME_x_q = {i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_12_shuffle_i_mmul0_NO_NAME_x_a[62:62], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_12_shuffle_i_mmul0_NO_NAME_x_a[61:61], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_12_shuffle_i_mmul0_NO_NAME_x_a[60:60], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_12_shuffle_i_mmul0_NO_NAME_x_a[59:59], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_12_shuffle_i_mmul0_NO_NAME_x_a[58:58], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_12_shuffle_i_mmul0_NO_NAME_x_a[57:57], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_12_shuffle_i_mmul0_NO_NAME_x_a[56:56], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_12_shuffle_i_mmul0_NO_NAME_x_a[55:55], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_12_shuffle_i_mmul0_NO_NAME_x_a[54:54], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_12_shuffle_i_mmul0_NO_NAME_x_a[53:53], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_12_shuffle_i_mmul0_NO_NAME_x_a[52:52], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_12_shuffle_i_mmul0_NO_NAME_x_a[51:51], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_12_shuffle_i_mmul0_NO_NAME_x_a[50:50], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_12_shuffle_i_mmul0_NO_NAME_x_a[49:49], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_12_shuffle_i_mmul0_NO_NAME_x_a[48:48], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_12_shuffle_i_mmul0_NO_NAME_x_a[47:47], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_12_shuffle_i_mmul0_NO_NAME_x_a[46:46], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_12_shuffle_i_mmul0_NO_NAME_x_a[45:45], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_12_shuffle_i_mmul0_NO_NAME_x_a[44:44], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_12_shuffle_i_mmul0_NO_NAME_x_a[43:43], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_12_shuffle_i_mmul0_NO_NAME_x_a[42:42], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_12_shuffle_i_mmul0_NO_NAME_x_a[41:41], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_12_shuffle_i_mmul0_NO_NAME_x_a[40:40], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_12_shuffle_i_mmul0_NO_NAME_x_a[39:39], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_12_shuffle_i_mmul0_NO_NAME_x_a[38:38], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_12_shuffle_i_mmul0_NO_NAME_x_a[37:37], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_12_shuffle_i_mmul0_NO_NAME_x_a[36:36], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_12_shuffle_i_mmul0_NO_NAME_x_a[35:35], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_12_shuffle_i_mmul0_NO_NAME_x_a[34:34], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_12_shuffle_i_mmul0_NO_NAME_x_a[33:33], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_12_shuffle_i_mmul0_NO_NAME_x_a[32:32], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_12_shuffle_i_mmul0_NO_NAME_x_a[19:19]};

    // i_cmp3_i_12_i_mmul89(COMPARE,92)@21
    assign i_cmp3_i_12_i_mmul89_a = {2'b00, i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_12_shuffle_i_mmul0_NO_NAME_x_q};
    assign i_cmp3_i_12_i_mmul89_b = {2'b00, redist78_i_unnamed_mmul26_q_19_q};
    assign i_cmp3_i_12_i_mmul89_o = $unsigned(i_cmp3_i_12_i_mmul89_a) - $unsigned(i_cmp3_i_12_i_mmul89_b);
    assign i_cmp3_i_12_i_mmul89_c[0] = i_cmp3_i_12_i_mmul89_o[33];

    // i_unnamed_mmul90(MUX,244)@21 + 1
    assign i_unnamed_mmul90_s = i_cmp3_i_12_i_mmul89_c;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_unnamed_mmul90_q <= 32'b0;
        end
        else
        begin
            unique case (i_unnamed_mmul90_s)
                1'b0 : i_unnamed_mmul90_q <= redist78_i_unnamed_mmul26_q_19_q;
                1'b1 : i_unnamed_mmul90_q <= c_i32_0248_q;
                default : i_unnamed_mmul90_q <= 32'b0;
            endcase
        end
    end

    // redist42_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_12_shuffle_i_mmul0_NO_NAME_x_q_1(DELAY,602)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist42_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_12_shuffle_i_mmul0_NO_NAME_x_q_1_q <= '0;
        end
        else
        begin
            redist42_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_12_shuffle_i_mmul0_NO_NAME_x_q_1_q <= $unsigned(i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_12_shuffle_i_mmul0_NO_NAME_x_q);
        end
    end

    // i_sub4_i_12_i_mmul91(SUB,179)@22
    assign i_sub4_i_12_i_mmul91_a = {1'b0, redist42_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_12_shuffle_i_mmul0_NO_NAME_x_q_1_q};
    assign i_sub4_i_12_i_mmul91_b = {1'b0, i_unnamed_mmul90_q};
    assign i_sub4_i_12_i_mmul91_o = $unsigned(i_sub4_i_12_i_mmul91_a) - $unsigned(i_sub4_i_12_i_mmul91_b);
    assign i_sub4_i_12_i_mmul91_q = i_sub4_i_12_i_mmul91_o[32:0];

    // bgTrunc_i_sub4_i_12_i_mmul91_sel_x(BITSELECT,269)@22
    assign bgTrunc_i_sub4_i_12_i_mmul91_sel_x_b = $unsigned(i_sub4_i_12_i_mmul91_q[31:0]);

    // redist120_i_spec_select_i_mmul24_q_19(DELAY,680)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist120_i_spec_select_i_mmul24_q_19_q <= '0;
        end
        else
        begin
            redist120_i_spec_select_i_mmul24_q_19_q <= $unsigned(redist119_i_spec_select_i_mmul24_q_18_q);
        end
    end

    // i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_13_shuffle_i_mmul0_dsdk_ip_adapt_bitjoin1_x(BITJOIN,333)@22
    assign i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_13_shuffle_i_mmul0_dsdk_ip_adapt_bitjoin1_x_q = {c_i8_232_q, bgTrunc_i_sub4_i_12_i_mmul91_sel_x_b, redist120_i_spec_select_i_mmul24_q_19_q};

    // i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_13_shuffle_i_mmul0_NO_NAME_x(CHOOSEBITS,332)@22
    assign i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_13_shuffle_i_mmul0_NO_NAME_x_a = i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_13_shuffle_i_mmul0_dsdk_ip_adapt_bitjoin1_x_q;
    assign i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_13_shuffle_i_mmul0_NO_NAME_x_q = {i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_13_shuffle_i_mmul0_NO_NAME_x_a[62:62], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_13_shuffle_i_mmul0_NO_NAME_x_a[61:61], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_13_shuffle_i_mmul0_NO_NAME_x_a[60:60], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_13_shuffle_i_mmul0_NO_NAME_x_a[59:59], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_13_shuffle_i_mmul0_NO_NAME_x_a[58:58], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_13_shuffle_i_mmul0_NO_NAME_x_a[57:57], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_13_shuffle_i_mmul0_NO_NAME_x_a[56:56], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_13_shuffle_i_mmul0_NO_NAME_x_a[55:55], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_13_shuffle_i_mmul0_NO_NAME_x_a[54:54], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_13_shuffle_i_mmul0_NO_NAME_x_a[53:53], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_13_shuffle_i_mmul0_NO_NAME_x_a[52:52], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_13_shuffle_i_mmul0_NO_NAME_x_a[51:51], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_13_shuffle_i_mmul0_NO_NAME_x_a[50:50], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_13_shuffle_i_mmul0_NO_NAME_x_a[49:49], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_13_shuffle_i_mmul0_NO_NAME_x_a[48:48], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_13_shuffle_i_mmul0_NO_NAME_x_a[47:47], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_13_shuffle_i_mmul0_NO_NAME_x_a[46:46], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_13_shuffle_i_mmul0_NO_NAME_x_a[45:45], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_13_shuffle_i_mmul0_NO_NAME_x_a[44:44], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_13_shuffle_i_mmul0_NO_NAME_x_a[43:43], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_13_shuffle_i_mmul0_NO_NAME_x_a[42:42], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_13_shuffle_i_mmul0_NO_NAME_x_a[41:41], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_13_shuffle_i_mmul0_NO_NAME_x_a[40:40], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_13_shuffle_i_mmul0_NO_NAME_x_a[39:39], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_13_shuffle_i_mmul0_NO_NAME_x_a[38:38], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_13_shuffle_i_mmul0_NO_NAME_x_a[37:37], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_13_shuffle_i_mmul0_NO_NAME_x_a[36:36], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_13_shuffle_i_mmul0_NO_NAME_x_a[35:35], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_13_shuffle_i_mmul0_NO_NAME_x_a[34:34], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_13_shuffle_i_mmul0_NO_NAME_x_a[33:33], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_13_shuffle_i_mmul0_NO_NAME_x_a[32:32], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_13_shuffle_i_mmul0_NO_NAME_x_a[18:18]};

    // i_cmp3_i_13_i_mmul94(COMPARE,93)@22 + 1
    assign i_cmp3_i_13_i_mmul94_a = {2'b00, i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_13_shuffle_i_mmul0_NO_NAME_x_q};
    assign i_cmp3_i_13_i_mmul94_b = {2'b00, redist79_i_unnamed_mmul26_q_20_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_cmp3_i_13_i_mmul94_o <= 34'b0;
        end
        else
        begin
            i_cmp3_i_13_i_mmul94_o <= $unsigned(i_cmp3_i_13_i_mmul94_a) - $unsigned(i_cmp3_i_13_i_mmul94_b);
        end
    end
    assign i_cmp3_i_13_i_mmul94_c[0] = i_cmp3_i_13_i_mmul94_o[33];

    // i_unnamed_mmul95(MUX,245)@23
    assign i_unnamed_mmul95_s = i_cmp3_i_13_i_mmul94_c;
    always @(i_unnamed_mmul95_s or redist80_i_unnamed_mmul26_q_21_q or c_i32_0248_q)
    begin
        unique case (i_unnamed_mmul95_s)
            1'b0 : i_unnamed_mmul95_q = redist80_i_unnamed_mmul26_q_21_q;
            1'b1 : i_unnamed_mmul95_q = c_i32_0248_q;
            default : i_unnamed_mmul95_q = 32'b0;
        endcase
    end

    // redist41_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_13_shuffle_i_mmul0_NO_NAME_x_q_1(DELAY,601)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist41_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_13_shuffle_i_mmul0_NO_NAME_x_q_1_q <= '0;
        end
        else
        begin
            redist41_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_13_shuffle_i_mmul0_NO_NAME_x_q_1_q <= $unsigned(i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_13_shuffle_i_mmul0_NO_NAME_x_q);
        end
    end

    // i_sub4_i_13_i_mmul96(SUB,180)@23
    assign i_sub4_i_13_i_mmul96_a = {1'b0, redist41_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_13_shuffle_i_mmul0_NO_NAME_x_q_1_q};
    assign i_sub4_i_13_i_mmul96_b = {1'b0, i_unnamed_mmul95_q};
    assign i_sub4_i_13_i_mmul96_o = $unsigned(i_sub4_i_13_i_mmul96_a) - $unsigned(i_sub4_i_13_i_mmul96_b);
    assign i_sub4_i_13_i_mmul96_q = i_sub4_i_13_i_mmul96_o[32:0];

    // bgTrunc_i_sub4_i_13_i_mmul96_sel_x(BITSELECT,270)@23
    assign bgTrunc_i_sub4_i_13_i_mmul96_sel_x_b = $unsigned(i_sub4_i_13_i_mmul96_q[31:0]);

    // redist56_bgTrunc_i_sub4_i_13_i_mmul96_sel_x_b_1(DELAY,616)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist56_bgTrunc_i_sub4_i_13_i_mmul96_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist56_bgTrunc_i_sub4_i_13_i_mmul96_sel_x_b_1_q <= $unsigned(bgTrunc_i_sub4_i_13_i_mmul96_sel_x_b);
        end
    end

    // redist121_i_spec_select_i_mmul24_q_21(DELAY,681)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist121_i_spec_select_i_mmul24_q_21_delay_0 <= '0;
            redist121_i_spec_select_i_mmul24_q_21_q <= '0;
        end
        else
        begin
            redist121_i_spec_select_i_mmul24_q_21_delay_0 <= $unsigned(redist120_i_spec_select_i_mmul24_q_19_q);
            redist121_i_spec_select_i_mmul24_q_21_q <= redist121_i_spec_select_i_mmul24_q_21_delay_0;
        end
    end

    // i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_14_shuffle_i_mmul0_dsdk_ip_adapt_bitjoin1_x(BITJOIN,336)@24
    assign i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_14_shuffle_i_mmul0_dsdk_ip_adapt_bitjoin1_x_q = {c_i8_232_q, redist56_bgTrunc_i_sub4_i_13_i_mmul96_sel_x_b_1_q, redist121_i_spec_select_i_mmul24_q_21_q};

    // i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_14_shuffle_i_mmul0_NO_NAME_x(CHOOSEBITS,335)@24
    assign i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_14_shuffle_i_mmul0_NO_NAME_x_a = i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_14_shuffle_i_mmul0_dsdk_ip_adapt_bitjoin1_x_q;
    assign i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_14_shuffle_i_mmul0_NO_NAME_x_q = {i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_14_shuffle_i_mmul0_NO_NAME_x_a[62:62], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_14_shuffle_i_mmul0_NO_NAME_x_a[61:61], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_14_shuffle_i_mmul0_NO_NAME_x_a[60:60], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_14_shuffle_i_mmul0_NO_NAME_x_a[59:59], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_14_shuffle_i_mmul0_NO_NAME_x_a[58:58], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_14_shuffle_i_mmul0_NO_NAME_x_a[57:57], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_14_shuffle_i_mmul0_NO_NAME_x_a[56:56], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_14_shuffle_i_mmul0_NO_NAME_x_a[55:55], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_14_shuffle_i_mmul0_NO_NAME_x_a[54:54], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_14_shuffle_i_mmul0_NO_NAME_x_a[53:53], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_14_shuffle_i_mmul0_NO_NAME_x_a[52:52], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_14_shuffle_i_mmul0_NO_NAME_x_a[51:51], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_14_shuffle_i_mmul0_NO_NAME_x_a[50:50], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_14_shuffle_i_mmul0_NO_NAME_x_a[49:49], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_14_shuffle_i_mmul0_NO_NAME_x_a[48:48], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_14_shuffle_i_mmul0_NO_NAME_x_a[47:47], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_14_shuffle_i_mmul0_NO_NAME_x_a[46:46], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_14_shuffle_i_mmul0_NO_NAME_x_a[45:45], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_14_shuffle_i_mmul0_NO_NAME_x_a[44:44], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_14_shuffle_i_mmul0_NO_NAME_x_a[43:43], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_14_shuffle_i_mmul0_NO_NAME_x_a[42:42], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_14_shuffle_i_mmul0_NO_NAME_x_a[41:41], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_14_shuffle_i_mmul0_NO_NAME_x_a[40:40], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_14_shuffle_i_mmul0_NO_NAME_x_a[39:39], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_14_shuffle_i_mmul0_NO_NAME_x_a[38:38], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_14_shuffle_i_mmul0_NO_NAME_x_a[37:37], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_14_shuffle_i_mmul0_NO_NAME_x_a[36:36], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_14_shuffle_i_mmul0_NO_NAME_x_a[35:35], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_14_shuffle_i_mmul0_NO_NAME_x_a[34:34], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_14_shuffle_i_mmul0_NO_NAME_x_a[33:33], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_14_shuffle_i_mmul0_NO_NAME_x_a[32:32], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_14_shuffle_i_mmul0_NO_NAME_x_a[17:17]};

    // i_cmp3_i_14_i_mmul99(COMPARE,94)@24
    assign i_cmp3_i_14_i_mmul99_a = {2'b00, i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_14_shuffle_i_mmul0_NO_NAME_x_q};
    assign i_cmp3_i_14_i_mmul99_b = {2'b00, redist81_i_unnamed_mmul26_q_22_q};
    assign i_cmp3_i_14_i_mmul99_o = $unsigned(i_cmp3_i_14_i_mmul99_a) - $unsigned(i_cmp3_i_14_i_mmul99_b);
    assign i_cmp3_i_14_i_mmul99_c[0] = i_cmp3_i_14_i_mmul99_o[33];

    // i_unnamed_mmul100(MUX,211)@24 + 1
    assign i_unnamed_mmul100_s = i_cmp3_i_14_i_mmul99_c;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_unnamed_mmul100_q <= 32'b0;
        end
        else
        begin
            unique case (i_unnamed_mmul100_s)
                1'b0 : i_unnamed_mmul100_q <= redist81_i_unnamed_mmul26_q_22_q;
                1'b1 : i_unnamed_mmul100_q <= c_i32_0248_q;
                default : i_unnamed_mmul100_q <= 32'b0;
            endcase
        end
    end

    // redist40_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_14_shuffle_i_mmul0_NO_NAME_x_q_1(DELAY,600)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist40_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_14_shuffle_i_mmul0_NO_NAME_x_q_1_q <= '0;
        end
        else
        begin
            redist40_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_14_shuffle_i_mmul0_NO_NAME_x_q_1_q <= $unsigned(i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_14_shuffle_i_mmul0_NO_NAME_x_q);
        end
    end

    // i_sub4_i_14_i_mmul101(SUB,181)@25
    assign i_sub4_i_14_i_mmul101_a = {1'b0, redist40_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_14_shuffle_i_mmul0_NO_NAME_x_q_1_q};
    assign i_sub4_i_14_i_mmul101_b = {1'b0, i_unnamed_mmul100_q};
    assign i_sub4_i_14_i_mmul101_o = $unsigned(i_sub4_i_14_i_mmul101_a) - $unsigned(i_sub4_i_14_i_mmul101_b);
    assign i_sub4_i_14_i_mmul101_q = i_sub4_i_14_i_mmul101_o[32:0];

    // bgTrunc_i_sub4_i_14_i_mmul101_sel_x(BITSELECT,271)@25
    assign bgTrunc_i_sub4_i_14_i_mmul101_sel_x_b = $unsigned(i_sub4_i_14_i_mmul101_q[31:0]);

    // redist122_i_spec_select_i_mmul24_q_22(DELAY,682)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist122_i_spec_select_i_mmul24_q_22_q <= '0;
        end
        else
        begin
            redist122_i_spec_select_i_mmul24_q_22_q <= $unsigned(redist121_i_spec_select_i_mmul24_q_21_q);
        end
    end

    // i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_15_shuffle_i_mmul0_dsdk_ip_adapt_bitjoin1_x(BITJOIN,339)@25
    assign i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_15_shuffle_i_mmul0_dsdk_ip_adapt_bitjoin1_x_q = {c_i8_232_q, bgTrunc_i_sub4_i_14_i_mmul101_sel_x_b, redist122_i_spec_select_i_mmul24_q_22_q};

    // i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_15_shuffle_i_mmul0_NO_NAME_x(CHOOSEBITS,338)@25
    assign i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_15_shuffle_i_mmul0_NO_NAME_x_a = i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_15_shuffle_i_mmul0_dsdk_ip_adapt_bitjoin1_x_q;
    assign i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_15_shuffle_i_mmul0_NO_NAME_x_q = {i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_15_shuffle_i_mmul0_NO_NAME_x_a[62:62], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_15_shuffle_i_mmul0_NO_NAME_x_a[61:61], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_15_shuffle_i_mmul0_NO_NAME_x_a[60:60], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_15_shuffle_i_mmul0_NO_NAME_x_a[59:59], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_15_shuffle_i_mmul0_NO_NAME_x_a[58:58], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_15_shuffle_i_mmul0_NO_NAME_x_a[57:57], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_15_shuffle_i_mmul0_NO_NAME_x_a[56:56], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_15_shuffle_i_mmul0_NO_NAME_x_a[55:55], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_15_shuffle_i_mmul0_NO_NAME_x_a[54:54], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_15_shuffle_i_mmul0_NO_NAME_x_a[53:53], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_15_shuffle_i_mmul0_NO_NAME_x_a[52:52], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_15_shuffle_i_mmul0_NO_NAME_x_a[51:51], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_15_shuffle_i_mmul0_NO_NAME_x_a[50:50], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_15_shuffle_i_mmul0_NO_NAME_x_a[49:49], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_15_shuffle_i_mmul0_NO_NAME_x_a[48:48], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_15_shuffle_i_mmul0_NO_NAME_x_a[47:47], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_15_shuffle_i_mmul0_NO_NAME_x_a[46:46], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_15_shuffle_i_mmul0_NO_NAME_x_a[45:45], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_15_shuffle_i_mmul0_NO_NAME_x_a[44:44], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_15_shuffle_i_mmul0_NO_NAME_x_a[43:43], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_15_shuffle_i_mmul0_NO_NAME_x_a[42:42], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_15_shuffle_i_mmul0_NO_NAME_x_a[41:41], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_15_shuffle_i_mmul0_NO_NAME_x_a[40:40], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_15_shuffle_i_mmul0_NO_NAME_x_a[39:39], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_15_shuffle_i_mmul0_NO_NAME_x_a[38:38], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_15_shuffle_i_mmul0_NO_NAME_x_a[37:37], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_15_shuffle_i_mmul0_NO_NAME_x_a[36:36], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_15_shuffle_i_mmul0_NO_NAME_x_a[35:35], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_15_shuffle_i_mmul0_NO_NAME_x_a[34:34], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_15_shuffle_i_mmul0_NO_NAME_x_a[33:33], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_15_shuffle_i_mmul0_NO_NAME_x_a[32:32], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_15_shuffle_i_mmul0_NO_NAME_x_a[16:16]};

    // i_cmp3_i_15_i_mmul104(COMPARE,95)@25 + 1
    assign i_cmp3_i_15_i_mmul104_a = {2'b00, i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_15_shuffle_i_mmul0_NO_NAME_x_q};
    assign i_cmp3_i_15_i_mmul104_b = {2'b00, redist82_i_unnamed_mmul26_q_23_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_cmp3_i_15_i_mmul104_o <= 34'b0;
        end
        else
        begin
            i_cmp3_i_15_i_mmul104_o <= $unsigned(i_cmp3_i_15_i_mmul104_a) - $unsigned(i_cmp3_i_15_i_mmul104_b);
        end
    end
    assign i_cmp3_i_15_i_mmul104_c[0] = i_cmp3_i_15_i_mmul104_o[33];

    // i_unnamed_mmul105(MUX,212)@26
    assign i_unnamed_mmul105_s = i_cmp3_i_15_i_mmul104_c;
    always @(i_unnamed_mmul105_s or redist83_i_unnamed_mmul26_q_24_q or c_i32_0248_q)
    begin
        unique case (i_unnamed_mmul105_s)
            1'b0 : i_unnamed_mmul105_q = redist83_i_unnamed_mmul26_q_24_q;
            1'b1 : i_unnamed_mmul105_q = c_i32_0248_q;
            default : i_unnamed_mmul105_q = 32'b0;
        endcase
    end

    // redist39_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_15_shuffle_i_mmul0_NO_NAME_x_q_1(DELAY,599)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist39_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_15_shuffle_i_mmul0_NO_NAME_x_q_1_q <= '0;
        end
        else
        begin
            redist39_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_15_shuffle_i_mmul0_NO_NAME_x_q_1_q <= $unsigned(i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_15_shuffle_i_mmul0_NO_NAME_x_q);
        end
    end

    // i_sub4_i_15_i_mmul106(SUB,182)@26
    assign i_sub4_i_15_i_mmul106_a = {1'b0, redist39_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_15_shuffle_i_mmul0_NO_NAME_x_q_1_q};
    assign i_sub4_i_15_i_mmul106_b = {1'b0, i_unnamed_mmul105_q};
    assign i_sub4_i_15_i_mmul106_o = $unsigned(i_sub4_i_15_i_mmul106_a) - $unsigned(i_sub4_i_15_i_mmul106_b);
    assign i_sub4_i_15_i_mmul106_q = i_sub4_i_15_i_mmul106_o[32:0];

    // bgTrunc_i_sub4_i_15_i_mmul106_sel_x(BITSELECT,272)@26
    assign bgTrunc_i_sub4_i_15_i_mmul106_sel_x_b = $unsigned(i_sub4_i_15_i_mmul106_q[31:0]);

    // redist55_bgTrunc_i_sub4_i_15_i_mmul106_sel_x_b_1(DELAY,615)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist55_bgTrunc_i_sub4_i_15_i_mmul106_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist55_bgTrunc_i_sub4_i_15_i_mmul106_sel_x_b_1_q <= $unsigned(bgTrunc_i_sub4_i_15_i_mmul106_sel_x_b);
        end
    end

    // redist123_i_spec_select_i_mmul24_q_24(DELAY,683)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist123_i_spec_select_i_mmul24_q_24_delay_0 <= '0;
            redist123_i_spec_select_i_mmul24_q_24_q <= '0;
        end
        else
        begin
            redist123_i_spec_select_i_mmul24_q_24_delay_0 <= $unsigned(redist122_i_spec_select_i_mmul24_q_22_q);
            redist123_i_spec_select_i_mmul24_q_24_q <= redist123_i_spec_select_i_mmul24_q_24_delay_0;
        end
    end

    // i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_16_shuffle_i_mmul0_dsdk_ip_adapt_bitjoin1_x(BITJOIN,342)@27
    assign i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_16_shuffle_i_mmul0_dsdk_ip_adapt_bitjoin1_x_q = {c_i8_232_q, redist55_bgTrunc_i_sub4_i_15_i_mmul106_sel_x_b_1_q, redist123_i_spec_select_i_mmul24_q_24_q};

    // i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_16_shuffle_i_mmul0_NO_NAME_x(CHOOSEBITS,341)@27
    assign i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_16_shuffle_i_mmul0_NO_NAME_x_a = i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_16_shuffle_i_mmul0_dsdk_ip_adapt_bitjoin1_x_q;
    assign i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_16_shuffle_i_mmul0_NO_NAME_x_q = {i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_16_shuffle_i_mmul0_NO_NAME_x_a[62:62], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_16_shuffle_i_mmul0_NO_NAME_x_a[61:61], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_16_shuffle_i_mmul0_NO_NAME_x_a[60:60], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_16_shuffle_i_mmul0_NO_NAME_x_a[59:59], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_16_shuffle_i_mmul0_NO_NAME_x_a[58:58], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_16_shuffle_i_mmul0_NO_NAME_x_a[57:57], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_16_shuffle_i_mmul0_NO_NAME_x_a[56:56], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_16_shuffle_i_mmul0_NO_NAME_x_a[55:55], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_16_shuffle_i_mmul0_NO_NAME_x_a[54:54], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_16_shuffle_i_mmul0_NO_NAME_x_a[53:53], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_16_shuffle_i_mmul0_NO_NAME_x_a[52:52], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_16_shuffle_i_mmul0_NO_NAME_x_a[51:51], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_16_shuffle_i_mmul0_NO_NAME_x_a[50:50], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_16_shuffle_i_mmul0_NO_NAME_x_a[49:49], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_16_shuffle_i_mmul0_NO_NAME_x_a[48:48], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_16_shuffle_i_mmul0_NO_NAME_x_a[47:47], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_16_shuffle_i_mmul0_NO_NAME_x_a[46:46], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_16_shuffle_i_mmul0_NO_NAME_x_a[45:45], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_16_shuffle_i_mmul0_NO_NAME_x_a[44:44], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_16_shuffle_i_mmul0_NO_NAME_x_a[43:43], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_16_shuffle_i_mmul0_NO_NAME_x_a[42:42], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_16_shuffle_i_mmul0_NO_NAME_x_a[41:41], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_16_shuffle_i_mmul0_NO_NAME_x_a[40:40], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_16_shuffle_i_mmul0_NO_NAME_x_a[39:39], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_16_shuffle_i_mmul0_NO_NAME_x_a[38:38], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_16_shuffle_i_mmul0_NO_NAME_x_a[37:37], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_16_shuffle_i_mmul0_NO_NAME_x_a[36:36], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_16_shuffle_i_mmul0_NO_NAME_x_a[35:35], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_16_shuffle_i_mmul0_NO_NAME_x_a[34:34], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_16_shuffle_i_mmul0_NO_NAME_x_a[33:33], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_16_shuffle_i_mmul0_NO_NAME_x_a[32:32], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_16_shuffle_i_mmul0_NO_NAME_x_a[15:15]};

    // i_cmp3_i_16_i_mmul109(COMPARE,96)@27
    assign i_cmp3_i_16_i_mmul109_a = {2'b00, i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_16_shuffle_i_mmul0_NO_NAME_x_q};
    assign i_cmp3_i_16_i_mmul109_b = {2'b00, redist84_i_unnamed_mmul26_q_25_q};
    assign i_cmp3_i_16_i_mmul109_o = $unsigned(i_cmp3_i_16_i_mmul109_a) - $unsigned(i_cmp3_i_16_i_mmul109_b);
    assign i_cmp3_i_16_i_mmul109_c[0] = i_cmp3_i_16_i_mmul109_o[33];

    // i_unnamed_mmul110(MUX,213)@27 + 1
    assign i_unnamed_mmul110_s = i_cmp3_i_16_i_mmul109_c;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_unnamed_mmul110_q <= 32'b0;
        end
        else
        begin
            unique case (i_unnamed_mmul110_s)
                1'b0 : i_unnamed_mmul110_q <= redist84_i_unnamed_mmul26_q_25_q;
                1'b1 : i_unnamed_mmul110_q <= c_i32_0248_q;
                default : i_unnamed_mmul110_q <= 32'b0;
            endcase
        end
    end

    // redist38_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_16_shuffle_i_mmul0_NO_NAME_x_q_1(DELAY,598)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist38_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_16_shuffle_i_mmul0_NO_NAME_x_q_1_q <= '0;
        end
        else
        begin
            redist38_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_16_shuffle_i_mmul0_NO_NAME_x_q_1_q <= $unsigned(i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_16_shuffle_i_mmul0_NO_NAME_x_q);
        end
    end

    // i_sub4_i_16_i_mmul111(SUB,183)@28
    assign i_sub4_i_16_i_mmul111_a = {1'b0, redist38_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_16_shuffle_i_mmul0_NO_NAME_x_q_1_q};
    assign i_sub4_i_16_i_mmul111_b = {1'b0, i_unnamed_mmul110_q};
    assign i_sub4_i_16_i_mmul111_o = $unsigned(i_sub4_i_16_i_mmul111_a) - $unsigned(i_sub4_i_16_i_mmul111_b);
    assign i_sub4_i_16_i_mmul111_q = i_sub4_i_16_i_mmul111_o[32:0];

    // bgTrunc_i_sub4_i_16_i_mmul111_sel_x(BITSELECT,273)@28
    assign bgTrunc_i_sub4_i_16_i_mmul111_sel_x_b = $unsigned(i_sub4_i_16_i_mmul111_q[31:0]);

    // redist124_i_spec_select_i_mmul24_q_25(DELAY,684)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist124_i_spec_select_i_mmul24_q_25_q <= '0;
        end
        else
        begin
            redist124_i_spec_select_i_mmul24_q_25_q <= $unsigned(redist123_i_spec_select_i_mmul24_q_24_q);
        end
    end

    // i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_17_shuffle_i_mmul0_dsdk_ip_adapt_bitjoin1_x(BITJOIN,345)@28
    assign i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_17_shuffle_i_mmul0_dsdk_ip_adapt_bitjoin1_x_q = {c_i8_232_q, bgTrunc_i_sub4_i_16_i_mmul111_sel_x_b, redist124_i_spec_select_i_mmul24_q_25_q};

    // i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_17_shuffle_i_mmul0_NO_NAME_x(CHOOSEBITS,344)@28
    assign i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_17_shuffle_i_mmul0_NO_NAME_x_a = i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_17_shuffle_i_mmul0_dsdk_ip_adapt_bitjoin1_x_q;
    assign i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_17_shuffle_i_mmul0_NO_NAME_x_q = {i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_17_shuffle_i_mmul0_NO_NAME_x_a[62:62], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_17_shuffle_i_mmul0_NO_NAME_x_a[61:61], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_17_shuffle_i_mmul0_NO_NAME_x_a[60:60], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_17_shuffle_i_mmul0_NO_NAME_x_a[59:59], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_17_shuffle_i_mmul0_NO_NAME_x_a[58:58], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_17_shuffle_i_mmul0_NO_NAME_x_a[57:57], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_17_shuffle_i_mmul0_NO_NAME_x_a[56:56], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_17_shuffle_i_mmul0_NO_NAME_x_a[55:55], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_17_shuffle_i_mmul0_NO_NAME_x_a[54:54], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_17_shuffle_i_mmul0_NO_NAME_x_a[53:53], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_17_shuffle_i_mmul0_NO_NAME_x_a[52:52], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_17_shuffle_i_mmul0_NO_NAME_x_a[51:51], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_17_shuffle_i_mmul0_NO_NAME_x_a[50:50], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_17_shuffle_i_mmul0_NO_NAME_x_a[49:49], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_17_shuffle_i_mmul0_NO_NAME_x_a[48:48], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_17_shuffle_i_mmul0_NO_NAME_x_a[47:47], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_17_shuffle_i_mmul0_NO_NAME_x_a[46:46], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_17_shuffle_i_mmul0_NO_NAME_x_a[45:45], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_17_shuffle_i_mmul0_NO_NAME_x_a[44:44], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_17_shuffle_i_mmul0_NO_NAME_x_a[43:43], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_17_shuffle_i_mmul0_NO_NAME_x_a[42:42], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_17_shuffle_i_mmul0_NO_NAME_x_a[41:41], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_17_shuffle_i_mmul0_NO_NAME_x_a[40:40], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_17_shuffle_i_mmul0_NO_NAME_x_a[39:39], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_17_shuffle_i_mmul0_NO_NAME_x_a[38:38], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_17_shuffle_i_mmul0_NO_NAME_x_a[37:37], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_17_shuffle_i_mmul0_NO_NAME_x_a[36:36], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_17_shuffle_i_mmul0_NO_NAME_x_a[35:35], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_17_shuffle_i_mmul0_NO_NAME_x_a[34:34], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_17_shuffle_i_mmul0_NO_NAME_x_a[33:33], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_17_shuffle_i_mmul0_NO_NAME_x_a[32:32], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_17_shuffle_i_mmul0_NO_NAME_x_a[14:14]};

    // i_cmp3_i_17_i_mmul114(COMPARE,97)@28 + 1
    assign i_cmp3_i_17_i_mmul114_a = {2'b00, i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_17_shuffle_i_mmul0_NO_NAME_x_q};
    assign i_cmp3_i_17_i_mmul114_b = {2'b00, redist85_i_unnamed_mmul26_q_26_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_cmp3_i_17_i_mmul114_o <= 34'b0;
        end
        else
        begin
            i_cmp3_i_17_i_mmul114_o <= $unsigned(i_cmp3_i_17_i_mmul114_a) - $unsigned(i_cmp3_i_17_i_mmul114_b);
        end
    end
    assign i_cmp3_i_17_i_mmul114_c[0] = i_cmp3_i_17_i_mmul114_o[33];

    // i_unnamed_mmul115(MUX,214)@29
    assign i_unnamed_mmul115_s = i_cmp3_i_17_i_mmul114_c;
    always @(i_unnamed_mmul115_s or redist86_i_unnamed_mmul26_q_27_q or c_i32_0248_q)
    begin
        unique case (i_unnamed_mmul115_s)
            1'b0 : i_unnamed_mmul115_q = redist86_i_unnamed_mmul26_q_27_q;
            1'b1 : i_unnamed_mmul115_q = c_i32_0248_q;
            default : i_unnamed_mmul115_q = 32'b0;
        endcase
    end

    // redist37_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_17_shuffle_i_mmul0_NO_NAME_x_q_1(DELAY,597)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist37_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_17_shuffle_i_mmul0_NO_NAME_x_q_1_q <= '0;
        end
        else
        begin
            redist37_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_17_shuffle_i_mmul0_NO_NAME_x_q_1_q <= $unsigned(i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_17_shuffle_i_mmul0_NO_NAME_x_q);
        end
    end

    // i_sub4_i_17_i_mmul116(SUB,184)@29
    assign i_sub4_i_17_i_mmul116_a = {1'b0, redist37_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_17_shuffle_i_mmul0_NO_NAME_x_q_1_q};
    assign i_sub4_i_17_i_mmul116_b = {1'b0, i_unnamed_mmul115_q};
    assign i_sub4_i_17_i_mmul116_o = $unsigned(i_sub4_i_17_i_mmul116_a) - $unsigned(i_sub4_i_17_i_mmul116_b);
    assign i_sub4_i_17_i_mmul116_q = i_sub4_i_17_i_mmul116_o[32:0];

    // bgTrunc_i_sub4_i_17_i_mmul116_sel_x(BITSELECT,274)@29
    assign bgTrunc_i_sub4_i_17_i_mmul116_sel_x_b = $unsigned(i_sub4_i_17_i_mmul116_q[31:0]);

    // redist54_bgTrunc_i_sub4_i_17_i_mmul116_sel_x_b_1(DELAY,614)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist54_bgTrunc_i_sub4_i_17_i_mmul116_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist54_bgTrunc_i_sub4_i_17_i_mmul116_sel_x_b_1_q <= $unsigned(bgTrunc_i_sub4_i_17_i_mmul116_sel_x_b);
        end
    end

    // redist125_i_spec_select_i_mmul24_q_27(DELAY,685)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist125_i_spec_select_i_mmul24_q_27_delay_0 <= '0;
            redist125_i_spec_select_i_mmul24_q_27_q <= '0;
        end
        else
        begin
            redist125_i_spec_select_i_mmul24_q_27_delay_0 <= $unsigned(redist124_i_spec_select_i_mmul24_q_25_q);
            redist125_i_spec_select_i_mmul24_q_27_q <= redist125_i_spec_select_i_mmul24_q_27_delay_0;
        end
    end

    // i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_18_shuffle_i_mmul0_dsdk_ip_adapt_bitjoin1_x(BITJOIN,348)@30
    assign i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_18_shuffle_i_mmul0_dsdk_ip_adapt_bitjoin1_x_q = {c_i8_232_q, redist54_bgTrunc_i_sub4_i_17_i_mmul116_sel_x_b_1_q, redist125_i_spec_select_i_mmul24_q_27_q};

    // i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_18_shuffle_i_mmul0_NO_NAME_x(CHOOSEBITS,347)@30
    assign i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_18_shuffle_i_mmul0_NO_NAME_x_a = i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_18_shuffle_i_mmul0_dsdk_ip_adapt_bitjoin1_x_q;
    assign i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_18_shuffle_i_mmul0_NO_NAME_x_q = {i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_18_shuffle_i_mmul0_NO_NAME_x_a[62:62], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_18_shuffle_i_mmul0_NO_NAME_x_a[61:61], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_18_shuffle_i_mmul0_NO_NAME_x_a[60:60], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_18_shuffle_i_mmul0_NO_NAME_x_a[59:59], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_18_shuffle_i_mmul0_NO_NAME_x_a[58:58], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_18_shuffle_i_mmul0_NO_NAME_x_a[57:57], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_18_shuffle_i_mmul0_NO_NAME_x_a[56:56], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_18_shuffle_i_mmul0_NO_NAME_x_a[55:55], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_18_shuffle_i_mmul0_NO_NAME_x_a[54:54], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_18_shuffle_i_mmul0_NO_NAME_x_a[53:53], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_18_shuffle_i_mmul0_NO_NAME_x_a[52:52], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_18_shuffle_i_mmul0_NO_NAME_x_a[51:51], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_18_shuffle_i_mmul0_NO_NAME_x_a[50:50], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_18_shuffle_i_mmul0_NO_NAME_x_a[49:49], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_18_shuffle_i_mmul0_NO_NAME_x_a[48:48], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_18_shuffle_i_mmul0_NO_NAME_x_a[47:47], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_18_shuffle_i_mmul0_NO_NAME_x_a[46:46], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_18_shuffle_i_mmul0_NO_NAME_x_a[45:45], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_18_shuffle_i_mmul0_NO_NAME_x_a[44:44], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_18_shuffle_i_mmul0_NO_NAME_x_a[43:43], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_18_shuffle_i_mmul0_NO_NAME_x_a[42:42], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_18_shuffle_i_mmul0_NO_NAME_x_a[41:41], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_18_shuffle_i_mmul0_NO_NAME_x_a[40:40], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_18_shuffle_i_mmul0_NO_NAME_x_a[39:39], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_18_shuffle_i_mmul0_NO_NAME_x_a[38:38], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_18_shuffle_i_mmul0_NO_NAME_x_a[37:37], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_18_shuffle_i_mmul0_NO_NAME_x_a[36:36], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_18_shuffle_i_mmul0_NO_NAME_x_a[35:35], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_18_shuffle_i_mmul0_NO_NAME_x_a[34:34], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_18_shuffle_i_mmul0_NO_NAME_x_a[33:33], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_18_shuffle_i_mmul0_NO_NAME_x_a[32:32], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_18_shuffle_i_mmul0_NO_NAME_x_a[13:13]};

    // i_cmp3_i_18_i_mmul119(COMPARE,98)@30
    assign i_cmp3_i_18_i_mmul119_a = {2'b00, i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_18_shuffle_i_mmul0_NO_NAME_x_q};
    assign i_cmp3_i_18_i_mmul119_b = {2'b00, redist87_i_unnamed_mmul26_q_28_q};
    assign i_cmp3_i_18_i_mmul119_o = $unsigned(i_cmp3_i_18_i_mmul119_a) - $unsigned(i_cmp3_i_18_i_mmul119_b);
    assign i_cmp3_i_18_i_mmul119_c[0] = i_cmp3_i_18_i_mmul119_o[33];

    // i_unnamed_mmul120(MUX,215)@30 + 1
    assign i_unnamed_mmul120_s = i_cmp3_i_18_i_mmul119_c;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_unnamed_mmul120_q <= 32'b0;
        end
        else
        begin
            unique case (i_unnamed_mmul120_s)
                1'b0 : i_unnamed_mmul120_q <= redist87_i_unnamed_mmul26_q_28_q;
                1'b1 : i_unnamed_mmul120_q <= c_i32_0248_q;
                default : i_unnamed_mmul120_q <= 32'b0;
            endcase
        end
    end

    // redist36_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_18_shuffle_i_mmul0_NO_NAME_x_q_1(DELAY,596)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist36_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_18_shuffle_i_mmul0_NO_NAME_x_q_1_q <= '0;
        end
        else
        begin
            redist36_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_18_shuffle_i_mmul0_NO_NAME_x_q_1_q <= $unsigned(i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_18_shuffle_i_mmul0_NO_NAME_x_q);
        end
    end

    // i_sub4_i_18_i_mmul121(SUB,185)@31
    assign i_sub4_i_18_i_mmul121_a = {1'b0, redist36_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_18_shuffle_i_mmul0_NO_NAME_x_q_1_q};
    assign i_sub4_i_18_i_mmul121_b = {1'b0, i_unnamed_mmul120_q};
    assign i_sub4_i_18_i_mmul121_o = $unsigned(i_sub4_i_18_i_mmul121_a) - $unsigned(i_sub4_i_18_i_mmul121_b);
    assign i_sub4_i_18_i_mmul121_q = i_sub4_i_18_i_mmul121_o[32:0];

    // bgTrunc_i_sub4_i_18_i_mmul121_sel_x(BITSELECT,275)@31
    assign bgTrunc_i_sub4_i_18_i_mmul121_sel_x_b = $unsigned(i_sub4_i_18_i_mmul121_q[31:0]);

    // redist126_i_spec_select_i_mmul24_q_28(DELAY,686)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist126_i_spec_select_i_mmul24_q_28_q <= '0;
        end
        else
        begin
            redist126_i_spec_select_i_mmul24_q_28_q <= $unsigned(redist125_i_spec_select_i_mmul24_q_27_q);
        end
    end

    // i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_19_shuffle_i_mmul0_dsdk_ip_adapt_bitjoin1_x(BITJOIN,351)@31
    assign i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_19_shuffle_i_mmul0_dsdk_ip_adapt_bitjoin1_x_q = {c_i8_232_q, bgTrunc_i_sub4_i_18_i_mmul121_sel_x_b, redist126_i_spec_select_i_mmul24_q_28_q};

    // i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_19_shuffle_i_mmul0_NO_NAME_x(CHOOSEBITS,350)@31
    assign i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_19_shuffle_i_mmul0_NO_NAME_x_a = i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_19_shuffle_i_mmul0_dsdk_ip_adapt_bitjoin1_x_q;
    assign i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_19_shuffle_i_mmul0_NO_NAME_x_q = {i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_19_shuffle_i_mmul0_NO_NAME_x_a[62:62], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_19_shuffle_i_mmul0_NO_NAME_x_a[61:61], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_19_shuffle_i_mmul0_NO_NAME_x_a[60:60], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_19_shuffle_i_mmul0_NO_NAME_x_a[59:59], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_19_shuffle_i_mmul0_NO_NAME_x_a[58:58], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_19_shuffle_i_mmul0_NO_NAME_x_a[57:57], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_19_shuffle_i_mmul0_NO_NAME_x_a[56:56], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_19_shuffle_i_mmul0_NO_NAME_x_a[55:55], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_19_shuffle_i_mmul0_NO_NAME_x_a[54:54], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_19_shuffle_i_mmul0_NO_NAME_x_a[53:53], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_19_shuffle_i_mmul0_NO_NAME_x_a[52:52], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_19_shuffle_i_mmul0_NO_NAME_x_a[51:51], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_19_shuffle_i_mmul0_NO_NAME_x_a[50:50], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_19_shuffle_i_mmul0_NO_NAME_x_a[49:49], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_19_shuffle_i_mmul0_NO_NAME_x_a[48:48], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_19_shuffle_i_mmul0_NO_NAME_x_a[47:47], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_19_shuffle_i_mmul0_NO_NAME_x_a[46:46], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_19_shuffle_i_mmul0_NO_NAME_x_a[45:45], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_19_shuffle_i_mmul0_NO_NAME_x_a[44:44], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_19_shuffle_i_mmul0_NO_NAME_x_a[43:43], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_19_shuffle_i_mmul0_NO_NAME_x_a[42:42], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_19_shuffle_i_mmul0_NO_NAME_x_a[41:41], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_19_shuffle_i_mmul0_NO_NAME_x_a[40:40], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_19_shuffle_i_mmul0_NO_NAME_x_a[39:39], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_19_shuffle_i_mmul0_NO_NAME_x_a[38:38], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_19_shuffle_i_mmul0_NO_NAME_x_a[37:37], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_19_shuffle_i_mmul0_NO_NAME_x_a[36:36], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_19_shuffle_i_mmul0_NO_NAME_x_a[35:35], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_19_shuffle_i_mmul0_NO_NAME_x_a[34:34], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_19_shuffle_i_mmul0_NO_NAME_x_a[33:33], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_19_shuffle_i_mmul0_NO_NAME_x_a[32:32], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_19_shuffle_i_mmul0_NO_NAME_x_a[12:12]};

    // i_cmp3_i_19_i_mmul124(COMPARE,99)@31 + 1
    assign i_cmp3_i_19_i_mmul124_a = {2'b00, i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_19_shuffle_i_mmul0_NO_NAME_x_q};
    assign i_cmp3_i_19_i_mmul124_b = {2'b00, redist88_i_unnamed_mmul26_q_29_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_cmp3_i_19_i_mmul124_o <= 34'b0;
        end
        else
        begin
            i_cmp3_i_19_i_mmul124_o <= $unsigned(i_cmp3_i_19_i_mmul124_a) - $unsigned(i_cmp3_i_19_i_mmul124_b);
        end
    end
    assign i_cmp3_i_19_i_mmul124_c[0] = i_cmp3_i_19_i_mmul124_o[33];

    // i_unnamed_mmul125(MUX,216)@32
    assign i_unnamed_mmul125_s = i_cmp3_i_19_i_mmul124_c;
    always @(i_unnamed_mmul125_s or redist89_i_unnamed_mmul26_q_30_q or c_i32_0248_q)
    begin
        unique case (i_unnamed_mmul125_s)
            1'b0 : i_unnamed_mmul125_q = redist89_i_unnamed_mmul26_q_30_q;
            1'b1 : i_unnamed_mmul125_q = c_i32_0248_q;
            default : i_unnamed_mmul125_q = 32'b0;
        endcase
    end

    // redist35_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_19_shuffle_i_mmul0_NO_NAME_x_q_1(DELAY,595)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist35_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_19_shuffle_i_mmul0_NO_NAME_x_q_1_q <= '0;
        end
        else
        begin
            redist35_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_19_shuffle_i_mmul0_NO_NAME_x_q_1_q <= $unsigned(i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_19_shuffle_i_mmul0_NO_NAME_x_q);
        end
    end

    // i_sub4_i_19_i_mmul126(SUB,186)@32
    assign i_sub4_i_19_i_mmul126_a = {1'b0, redist35_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_19_shuffle_i_mmul0_NO_NAME_x_q_1_q};
    assign i_sub4_i_19_i_mmul126_b = {1'b0, i_unnamed_mmul125_q};
    assign i_sub4_i_19_i_mmul126_o = $unsigned(i_sub4_i_19_i_mmul126_a) - $unsigned(i_sub4_i_19_i_mmul126_b);
    assign i_sub4_i_19_i_mmul126_q = i_sub4_i_19_i_mmul126_o[32:0];

    // bgTrunc_i_sub4_i_19_i_mmul126_sel_x(BITSELECT,276)@32
    assign bgTrunc_i_sub4_i_19_i_mmul126_sel_x_b = $unsigned(i_sub4_i_19_i_mmul126_q[31:0]);

    // redist53_bgTrunc_i_sub4_i_19_i_mmul126_sel_x_b_1(DELAY,613)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist53_bgTrunc_i_sub4_i_19_i_mmul126_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist53_bgTrunc_i_sub4_i_19_i_mmul126_sel_x_b_1_q <= $unsigned(bgTrunc_i_sub4_i_19_i_mmul126_sel_x_b);
        end
    end

    // redist127_i_spec_select_i_mmul24_q_30(DELAY,687)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist127_i_spec_select_i_mmul24_q_30_delay_0 <= '0;
            redist127_i_spec_select_i_mmul24_q_30_q <= '0;
        end
        else
        begin
            redist127_i_spec_select_i_mmul24_q_30_delay_0 <= $unsigned(redist126_i_spec_select_i_mmul24_q_28_q);
            redist127_i_spec_select_i_mmul24_q_30_q <= redist127_i_spec_select_i_mmul24_q_30_delay_0;
        end
    end

    // i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_20_shuffle_i_mmul0_dsdk_ip_adapt_bitjoin1_x(BITJOIN,357)@33
    assign i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_20_shuffle_i_mmul0_dsdk_ip_adapt_bitjoin1_x_q = {c_i8_232_q, redist53_bgTrunc_i_sub4_i_19_i_mmul126_sel_x_b_1_q, redist127_i_spec_select_i_mmul24_q_30_q};

    // i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_20_shuffle_i_mmul0_NO_NAME_x(CHOOSEBITS,356)@33
    assign i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_20_shuffle_i_mmul0_NO_NAME_x_a = i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_20_shuffle_i_mmul0_dsdk_ip_adapt_bitjoin1_x_q;
    assign i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_20_shuffle_i_mmul0_NO_NAME_x_q = {i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_20_shuffle_i_mmul0_NO_NAME_x_a[62:62], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_20_shuffle_i_mmul0_NO_NAME_x_a[61:61], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_20_shuffle_i_mmul0_NO_NAME_x_a[60:60], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_20_shuffle_i_mmul0_NO_NAME_x_a[59:59], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_20_shuffle_i_mmul0_NO_NAME_x_a[58:58], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_20_shuffle_i_mmul0_NO_NAME_x_a[57:57], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_20_shuffle_i_mmul0_NO_NAME_x_a[56:56], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_20_shuffle_i_mmul0_NO_NAME_x_a[55:55], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_20_shuffle_i_mmul0_NO_NAME_x_a[54:54], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_20_shuffle_i_mmul0_NO_NAME_x_a[53:53], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_20_shuffle_i_mmul0_NO_NAME_x_a[52:52], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_20_shuffle_i_mmul0_NO_NAME_x_a[51:51], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_20_shuffle_i_mmul0_NO_NAME_x_a[50:50], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_20_shuffle_i_mmul0_NO_NAME_x_a[49:49], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_20_shuffle_i_mmul0_NO_NAME_x_a[48:48], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_20_shuffle_i_mmul0_NO_NAME_x_a[47:47], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_20_shuffle_i_mmul0_NO_NAME_x_a[46:46], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_20_shuffle_i_mmul0_NO_NAME_x_a[45:45], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_20_shuffle_i_mmul0_NO_NAME_x_a[44:44], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_20_shuffle_i_mmul0_NO_NAME_x_a[43:43], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_20_shuffle_i_mmul0_NO_NAME_x_a[42:42], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_20_shuffle_i_mmul0_NO_NAME_x_a[41:41], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_20_shuffle_i_mmul0_NO_NAME_x_a[40:40], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_20_shuffle_i_mmul0_NO_NAME_x_a[39:39], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_20_shuffle_i_mmul0_NO_NAME_x_a[38:38], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_20_shuffle_i_mmul0_NO_NAME_x_a[37:37], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_20_shuffle_i_mmul0_NO_NAME_x_a[36:36], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_20_shuffle_i_mmul0_NO_NAME_x_a[35:35], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_20_shuffle_i_mmul0_NO_NAME_x_a[34:34], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_20_shuffle_i_mmul0_NO_NAME_x_a[33:33], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_20_shuffle_i_mmul0_NO_NAME_x_a[32:32], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_20_shuffle_i_mmul0_NO_NAME_x_a[11:11]};

    // i_cmp3_i_20_i_mmul129(COMPARE,101)@33
    assign i_cmp3_i_20_i_mmul129_a = {2'b00, i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_20_shuffle_i_mmul0_NO_NAME_x_q};
    assign i_cmp3_i_20_i_mmul129_b = {2'b00, redist90_i_unnamed_mmul26_q_31_q};
    assign i_cmp3_i_20_i_mmul129_o = $unsigned(i_cmp3_i_20_i_mmul129_a) - $unsigned(i_cmp3_i_20_i_mmul129_b);
    assign i_cmp3_i_20_i_mmul129_c[0] = i_cmp3_i_20_i_mmul129_o[33];

    // i_unnamed_mmul130(MUX,217)@33 + 1
    assign i_unnamed_mmul130_s = i_cmp3_i_20_i_mmul129_c;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_unnamed_mmul130_q <= 32'b0;
        end
        else
        begin
            unique case (i_unnamed_mmul130_s)
                1'b0 : i_unnamed_mmul130_q <= redist90_i_unnamed_mmul26_q_31_q;
                1'b1 : i_unnamed_mmul130_q <= c_i32_0248_q;
                default : i_unnamed_mmul130_q <= 32'b0;
            endcase
        end
    end

    // redist33_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_20_shuffle_i_mmul0_NO_NAME_x_q_1(DELAY,593)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist33_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_20_shuffle_i_mmul0_NO_NAME_x_q_1_q <= '0;
        end
        else
        begin
            redist33_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_20_shuffle_i_mmul0_NO_NAME_x_q_1_q <= $unsigned(i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_20_shuffle_i_mmul0_NO_NAME_x_q);
        end
    end

    // i_sub4_i_20_i_mmul131(SUB,188)@34
    assign i_sub4_i_20_i_mmul131_a = {1'b0, redist33_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_20_shuffle_i_mmul0_NO_NAME_x_q_1_q};
    assign i_sub4_i_20_i_mmul131_b = {1'b0, i_unnamed_mmul130_q};
    assign i_sub4_i_20_i_mmul131_o = $unsigned(i_sub4_i_20_i_mmul131_a) - $unsigned(i_sub4_i_20_i_mmul131_b);
    assign i_sub4_i_20_i_mmul131_q = i_sub4_i_20_i_mmul131_o[32:0];

    // bgTrunc_i_sub4_i_20_i_mmul131_sel_x(BITSELECT,278)@34
    assign bgTrunc_i_sub4_i_20_i_mmul131_sel_x_b = $unsigned(i_sub4_i_20_i_mmul131_q[31:0]);

    // redist128_i_spec_select_i_mmul24_q_31(DELAY,688)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist128_i_spec_select_i_mmul24_q_31_q <= '0;
        end
        else
        begin
            redist128_i_spec_select_i_mmul24_q_31_q <= $unsigned(redist127_i_spec_select_i_mmul24_q_30_q);
        end
    end

    // i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_21_shuffle_i_mmul0_dsdk_ip_adapt_bitjoin1_x(BITJOIN,360)@34
    assign i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_21_shuffle_i_mmul0_dsdk_ip_adapt_bitjoin1_x_q = {c_i8_232_q, bgTrunc_i_sub4_i_20_i_mmul131_sel_x_b, redist128_i_spec_select_i_mmul24_q_31_q};

    // i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_21_shuffle_i_mmul0_NO_NAME_x(CHOOSEBITS,359)@34
    assign i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_21_shuffle_i_mmul0_NO_NAME_x_a = i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_21_shuffle_i_mmul0_dsdk_ip_adapt_bitjoin1_x_q;
    assign i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_21_shuffle_i_mmul0_NO_NAME_x_q = {i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_21_shuffle_i_mmul0_NO_NAME_x_a[62:62], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_21_shuffle_i_mmul0_NO_NAME_x_a[61:61], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_21_shuffle_i_mmul0_NO_NAME_x_a[60:60], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_21_shuffle_i_mmul0_NO_NAME_x_a[59:59], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_21_shuffle_i_mmul0_NO_NAME_x_a[58:58], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_21_shuffle_i_mmul0_NO_NAME_x_a[57:57], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_21_shuffle_i_mmul0_NO_NAME_x_a[56:56], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_21_shuffle_i_mmul0_NO_NAME_x_a[55:55], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_21_shuffle_i_mmul0_NO_NAME_x_a[54:54], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_21_shuffle_i_mmul0_NO_NAME_x_a[53:53], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_21_shuffle_i_mmul0_NO_NAME_x_a[52:52], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_21_shuffle_i_mmul0_NO_NAME_x_a[51:51], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_21_shuffle_i_mmul0_NO_NAME_x_a[50:50], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_21_shuffle_i_mmul0_NO_NAME_x_a[49:49], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_21_shuffle_i_mmul0_NO_NAME_x_a[48:48], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_21_shuffle_i_mmul0_NO_NAME_x_a[47:47], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_21_shuffle_i_mmul0_NO_NAME_x_a[46:46], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_21_shuffle_i_mmul0_NO_NAME_x_a[45:45], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_21_shuffle_i_mmul0_NO_NAME_x_a[44:44], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_21_shuffle_i_mmul0_NO_NAME_x_a[43:43], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_21_shuffle_i_mmul0_NO_NAME_x_a[42:42], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_21_shuffle_i_mmul0_NO_NAME_x_a[41:41], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_21_shuffle_i_mmul0_NO_NAME_x_a[40:40], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_21_shuffle_i_mmul0_NO_NAME_x_a[39:39], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_21_shuffle_i_mmul0_NO_NAME_x_a[38:38], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_21_shuffle_i_mmul0_NO_NAME_x_a[37:37], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_21_shuffle_i_mmul0_NO_NAME_x_a[36:36], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_21_shuffle_i_mmul0_NO_NAME_x_a[35:35], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_21_shuffle_i_mmul0_NO_NAME_x_a[34:34], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_21_shuffle_i_mmul0_NO_NAME_x_a[33:33], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_21_shuffle_i_mmul0_NO_NAME_x_a[32:32], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_21_shuffle_i_mmul0_NO_NAME_x_a[10:10]};

    // i_cmp3_i_21_i_mmul134(COMPARE,102)@34 + 1
    assign i_cmp3_i_21_i_mmul134_a = {2'b00, i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_21_shuffle_i_mmul0_NO_NAME_x_q};
    assign i_cmp3_i_21_i_mmul134_b = {2'b00, redist91_i_unnamed_mmul26_q_32_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_cmp3_i_21_i_mmul134_o <= 34'b0;
        end
        else
        begin
            i_cmp3_i_21_i_mmul134_o <= $unsigned(i_cmp3_i_21_i_mmul134_a) - $unsigned(i_cmp3_i_21_i_mmul134_b);
        end
    end
    assign i_cmp3_i_21_i_mmul134_c[0] = i_cmp3_i_21_i_mmul134_o[33];

    // i_unnamed_mmul135(MUX,218)@35
    assign i_unnamed_mmul135_s = i_cmp3_i_21_i_mmul134_c;
    always @(i_unnamed_mmul135_s or redist92_i_unnamed_mmul26_q_33_q or c_i32_0248_q)
    begin
        unique case (i_unnamed_mmul135_s)
            1'b0 : i_unnamed_mmul135_q = redist92_i_unnamed_mmul26_q_33_q;
            1'b1 : i_unnamed_mmul135_q = c_i32_0248_q;
            default : i_unnamed_mmul135_q = 32'b0;
        endcase
    end

    // redist32_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_21_shuffle_i_mmul0_NO_NAME_x_q_1(DELAY,592)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist32_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_21_shuffle_i_mmul0_NO_NAME_x_q_1_q <= '0;
        end
        else
        begin
            redist32_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_21_shuffle_i_mmul0_NO_NAME_x_q_1_q <= $unsigned(i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_21_shuffle_i_mmul0_NO_NAME_x_q);
        end
    end

    // i_sub4_i_21_i_mmul136(SUB,189)@35
    assign i_sub4_i_21_i_mmul136_a = {1'b0, redist32_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_21_shuffle_i_mmul0_NO_NAME_x_q_1_q};
    assign i_sub4_i_21_i_mmul136_b = {1'b0, i_unnamed_mmul135_q};
    assign i_sub4_i_21_i_mmul136_o = $unsigned(i_sub4_i_21_i_mmul136_a) - $unsigned(i_sub4_i_21_i_mmul136_b);
    assign i_sub4_i_21_i_mmul136_q = i_sub4_i_21_i_mmul136_o[32:0];

    // bgTrunc_i_sub4_i_21_i_mmul136_sel_x(BITSELECT,279)@35
    assign bgTrunc_i_sub4_i_21_i_mmul136_sel_x_b = $unsigned(i_sub4_i_21_i_mmul136_q[31:0]);

    // redist52_bgTrunc_i_sub4_i_21_i_mmul136_sel_x_b_1(DELAY,612)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist52_bgTrunc_i_sub4_i_21_i_mmul136_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist52_bgTrunc_i_sub4_i_21_i_mmul136_sel_x_b_1_q <= $unsigned(bgTrunc_i_sub4_i_21_i_mmul136_sel_x_b);
        end
    end

    // redist129_i_spec_select_i_mmul24_q_33(DELAY,689)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist129_i_spec_select_i_mmul24_q_33_delay_0 <= '0;
            redist129_i_spec_select_i_mmul24_q_33_q <= '0;
        end
        else
        begin
            redist129_i_spec_select_i_mmul24_q_33_delay_0 <= $unsigned(redist128_i_spec_select_i_mmul24_q_31_q);
            redist129_i_spec_select_i_mmul24_q_33_q <= redist129_i_spec_select_i_mmul24_q_33_delay_0;
        end
    end

    // i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_22_shuffle_i_mmul0_dsdk_ip_adapt_bitjoin1_x(BITJOIN,363)@36
    assign i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_22_shuffle_i_mmul0_dsdk_ip_adapt_bitjoin1_x_q = {c_i8_232_q, redist52_bgTrunc_i_sub4_i_21_i_mmul136_sel_x_b_1_q, redist129_i_spec_select_i_mmul24_q_33_q};

    // i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_22_shuffle_i_mmul0_NO_NAME_x(CHOOSEBITS,362)@36
    assign i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_22_shuffle_i_mmul0_NO_NAME_x_a = i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_22_shuffle_i_mmul0_dsdk_ip_adapt_bitjoin1_x_q;
    assign i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_22_shuffle_i_mmul0_NO_NAME_x_q = {i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_22_shuffle_i_mmul0_NO_NAME_x_a[62:62], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_22_shuffle_i_mmul0_NO_NAME_x_a[61:61], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_22_shuffle_i_mmul0_NO_NAME_x_a[60:60], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_22_shuffle_i_mmul0_NO_NAME_x_a[59:59], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_22_shuffle_i_mmul0_NO_NAME_x_a[58:58], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_22_shuffle_i_mmul0_NO_NAME_x_a[57:57], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_22_shuffle_i_mmul0_NO_NAME_x_a[56:56], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_22_shuffle_i_mmul0_NO_NAME_x_a[55:55], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_22_shuffle_i_mmul0_NO_NAME_x_a[54:54], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_22_shuffle_i_mmul0_NO_NAME_x_a[53:53], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_22_shuffle_i_mmul0_NO_NAME_x_a[52:52], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_22_shuffle_i_mmul0_NO_NAME_x_a[51:51], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_22_shuffle_i_mmul0_NO_NAME_x_a[50:50], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_22_shuffle_i_mmul0_NO_NAME_x_a[49:49], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_22_shuffle_i_mmul0_NO_NAME_x_a[48:48], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_22_shuffle_i_mmul0_NO_NAME_x_a[47:47], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_22_shuffle_i_mmul0_NO_NAME_x_a[46:46], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_22_shuffle_i_mmul0_NO_NAME_x_a[45:45], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_22_shuffle_i_mmul0_NO_NAME_x_a[44:44], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_22_shuffle_i_mmul0_NO_NAME_x_a[43:43], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_22_shuffle_i_mmul0_NO_NAME_x_a[42:42], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_22_shuffle_i_mmul0_NO_NAME_x_a[41:41], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_22_shuffle_i_mmul0_NO_NAME_x_a[40:40], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_22_shuffle_i_mmul0_NO_NAME_x_a[39:39], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_22_shuffle_i_mmul0_NO_NAME_x_a[38:38], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_22_shuffle_i_mmul0_NO_NAME_x_a[37:37], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_22_shuffle_i_mmul0_NO_NAME_x_a[36:36], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_22_shuffle_i_mmul0_NO_NAME_x_a[35:35], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_22_shuffle_i_mmul0_NO_NAME_x_a[34:34], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_22_shuffle_i_mmul0_NO_NAME_x_a[33:33], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_22_shuffle_i_mmul0_NO_NAME_x_a[32:32], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_22_shuffle_i_mmul0_NO_NAME_x_a[9:9]};

    // i_cmp3_i_22_i_mmul139(COMPARE,103)@36
    assign i_cmp3_i_22_i_mmul139_a = {2'b00, i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_22_shuffle_i_mmul0_NO_NAME_x_q};
    assign i_cmp3_i_22_i_mmul139_b = {2'b00, redist93_i_unnamed_mmul26_q_34_q};
    assign i_cmp3_i_22_i_mmul139_o = $unsigned(i_cmp3_i_22_i_mmul139_a) - $unsigned(i_cmp3_i_22_i_mmul139_b);
    assign i_cmp3_i_22_i_mmul139_c[0] = i_cmp3_i_22_i_mmul139_o[33];

    // i_unnamed_mmul140(MUX,219)@36 + 1
    assign i_unnamed_mmul140_s = i_cmp3_i_22_i_mmul139_c;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_unnamed_mmul140_q <= 32'b0;
        end
        else
        begin
            unique case (i_unnamed_mmul140_s)
                1'b0 : i_unnamed_mmul140_q <= redist93_i_unnamed_mmul26_q_34_q;
                1'b1 : i_unnamed_mmul140_q <= c_i32_0248_q;
                default : i_unnamed_mmul140_q <= 32'b0;
            endcase
        end
    end

    // redist31_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_22_shuffle_i_mmul0_NO_NAME_x_q_1(DELAY,591)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist31_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_22_shuffle_i_mmul0_NO_NAME_x_q_1_q <= '0;
        end
        else
        begin
            redist31_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_22_shuffle_i_mmul0_NO_NAME_x_q_1_q <= $unsigned(i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_22_shuffle_i_mmul0_NO_NAME_x_q);
        end
    end

    // i_sub4_i_22_i_mmul141(SUB,190)@37
    assign i_sub4_i_22_i_mmul141_a = {1'b0, redist31_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_22_shuffle_i_mmul0_NO_NAME_x_q_1_q};
    assign i_sub4_i_22_i_mmul141_b = {1'b0, i_unnamed_mmul140_q};
    assign i_sub4_i_22_i_mmul141_o = $unsigned(i_sub4_i_22_i_mmul141_a) - $unsigned(i_sub4_i_22_i_mmul141_b);
    assign i_sub4_i_22_i_mmul141_q = i_sub4_i_22_i_mmul141_o[32:0];

    // bgTrunc_i_sub4_i_22_i_mmul141_sel_x(BITSELECT,280)@37
    assign bgTrunc_i_sub4_i_22_i_mmul141_sel_x_b = $unsigned(i_sub4_i_22_i_mmul141_q[31:0]);

    // redist130_i_spec_select_i_mmul24_q_34(DELAY,690)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist130_i_spec_select_i_mmul24_q_34_q <= '0;
        end
        else
        begin
            redist130_i_spec_select_i_mmul24_q_34_q <= $unsigned(redist129_i_spec_select_i_mmul24_q_33_q);
        end
    end

    // i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_23_shuffle_i_mmul0_dsdk_ip_adapt_bitjoin1_x(BITJOIN,366)@37
    assign i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_23_shuffle_i_mmul0_dsdk_ip_adapt_bitjoin1_x_q = {c_i8_232_q, bgTrunc_i_sub4_i_22_i_mmul141_sel_x_b, redist130_i_spec_select_i_mmul24_q_34_q};

    // i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_23_shuffle_i_mmul0_NO_NAME_x(CHOOSEBITS,365)@37
    assign i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_23_shuffle_i_mmul0_NO_NAME_x_a = i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_23_shuffle_i_mmul0_dsdk_ip_adapt_bitjoin1_x_q;
    assign i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_23_shuffle_i_mmul0_NO_NAME_x_q = {i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_23_shuffle_i_mmul0_NO_NAME_x_a[62:62], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_23_shuffle_i_mmul0_NO_NAME_x_a[61:61], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_23_shuffle_i_mmul0_NO_NAME_x_a[60:60], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_23_shuffle_i_mmul0_NO_NAME_x_a[59:59], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_23_shuffle_i_mmul0_NO_NAME_x_a[58:58], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_23_shuffle_i_mmul0_NO_NAME_x_a[57:57], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_23_shuffle_i_mmul0_NO_NAME_x_a[56:56], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_23_shuffle_i_mmul0_NO_NAME_x_a[55:55], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_23_shuffle_i_mmul0_NO_NAME_x_a[54:54], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_23_shuffle_i_mmul0_NO_NAME_x_a[53:53], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_23_shuffle_i_mmul0_NO_NAME_x_a[52:52], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_23_shuffle_i_mmul0_NO_NAME_x_a[51:51], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_23_shuffle_i_mmul0_NO_NAME_x_a[50:50], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_23_shuffle_i_mmul0_NO_NAME_x_a[49:49], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_23_shuffle_i_mmul0_NO_NAME_x_a[48:48], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_23_shuffle_i_mmul0_NO_NAME_x_a[47:47], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_23_shuffle_i_mmul0_NO_NAME_x_a[46:46], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_23_shuffle_i_mmul0_NO_NAME_x_a[45:45], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_23_shuffle_i_mmul0_NO_NAME_x_a[44:44], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_23_shuffle_i_mmul0_NO_NAME_x_a[43:43], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_23_shuffle_i_mmul0_NO_NAME_x_a[42:42], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_23_shuffle_i_mmul0_NO_NAME_x_a[41:41], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_23_shuffle_i_mmul0_NO_NAME_x_a[40:40], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_23_shuffle_i_mmul0_NO_NAME_x_a[39:39], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_23_shuffle_i_mmul0_NO_NAME_x_a[38:38], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_23_shuffle_i_mmul0_NO_NAME_x_a[37:37], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_23_shuffle_i_mmul0_NO_NAME_x_a[36:36], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_23_shuffle_i_mmul0_NO_NAME_x_a[35:35], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_23_shuffle_i_mmul0_NO_NAME_x_a[34:34], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_23_shuffle_i_mmul0_NO_NAME_x_a[33:33], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_23_shuffle_i_mmul0_NO_NAME_x_a[32:32], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_23_shuffle_i_mmul0_NO_NAME_x_a[8:8]};

    // i_cmp3_i_23_i_mmul144(COMPARE,104)@37 + 1
    assign i_cmp3_i_23_i_mmul144_a = {2'b00, i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_23_shuffle_i_mmul0_NO_NAME_x_q};
    assign i_cmp3_i_23_i_mmul144_b = {2'b00, redist94_i_unnamed_mmul26_q_35_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_cmp3_i_23_i_mmul144_o <= 34'b0;
        end
        else
        begin
            i_cmp3_i_23_i_mmul144_o <= $unsigned(i_cmp3_i_23_i_mmul144_a) - $unsigned(i_cmp3_i_23_i_mmul144_b);
        end
    end
    assign i_cmp3_i_23_i_mmul144_c[0] = i_cmp3_i_23_i_mmul144_o[33];

    // i_unnamed_mmul145(MUX,220)@38
    assign i_unnamed_mmul145_s = i_cmp3_i_23_i_mmul144_c;
    always @(i_unnamed_mmul145_s or redist95_i_unnamed_mmul26_q_36_q or c_i32_0248_q)
    begin
        unique case (i_unnamed_mmul145_s)
            1'b0 : i_unnamed_mmul145_q = redist95_i_unnamed_mmul26_q_36_q;
            1'b1 : i_unnamed_mmul145_q = c_i32_0248_q;
            default : i_unnamed_mmul145_q = 32'b0;
        endcase
    end

    // redist30_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_23_shuffle_i_mmul0_NO_NAME_x_q_1(DELAY,590)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist30_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_23_shuffle_i_mmul0_NO_NAME_x_q_1_q <= '0;
        end
        else
        begin
            redist30_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_23_shuffle_i_mmul0_NO_NAME_x_q_1_q <= $unsigned(i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_23_shuffle_i_mmul0_NO_NAME_x_q);
        end
    end

    // i_sub4_i_23_i_mmul146(SUB,191)@38
    assign i_sub4_i_23_i_mmul146_a = {1'b0, redist30_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_23_shuffle_i_mmul0_NO_NAME_x_q_1_q};
    assign i_sub4_i_23_i_mmul146_b = {1'b0, i_unnamed_mmul145_q};
    assign i_sub4_i_23_i_mmul146_o = $unsigned(i_sub4_i_23_i_mmul146_a) - $unsigned(i_sub4_i_23_i_mmul146_b);
    assign i_sub4_i_23_i_mmul146_q = i_sub4_i_23_i_mmul146_o[32:0];

    // bgTrunc_i_sub4_i_23_i_mmul146_sel_x(BITSELECT,281)@38
    assign bgTrunc_i_sub4_i_23_i_mmul146_sel_x_b = $unsigned(i_sub4_i_23_i_mmul146_q[31:0]);

    // redist51_bgTrunc_i_sub4_i_23_i_mmul146_sel_x_b_1(DELAY,611)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist51_bgTrunc_i_sub4_i_23_i_mmul146_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist51_bgTrunc_i_sub4_i_23_i_mmul146_sel_x_b_1_q <= $unsigned(bgTrunc_i_sub4_i_23_i_mmul146_sel_x_b);
        end
    end

    // redist131_i_spec_select_i_mmul24_q_36(DELAY,691)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist131_i_spec_select_i_mmul24_q_36_delay_0 <= '0;
            redist131_i_spec_select_i_mmul24_q_36_q <= '0;
        end
        else
        begin
            redist131_i_spec_select_i_mmul24_q_36_delay_0 <= $unsigned(redist130_i_spec_select_i_mmul24_q_34_q);
            redist131_i_spec_select_i_mmul24_q_36_q <= redist131_i_spec_select_i_mmul24_q_36_delay_0;
        end
    end

    // i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_24_shuffle_i_mmul0_dsdk_ip_adapt_bitjoin1_x(BITJOIN,369)@39
    assign i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_24_shuffle_i_mmul0_dsdk_ip_adapt_bitjoin1_x_q = {c_i8_232_q, redist51_bgTrunc_i_sub4_i_23_i_mmul146_sel_x_b_1_q, redist131_i_spec_select_i_mmul24_q_36_q};

    // i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_24_shuffle_i_mmul0_NO_NAME_x(CHOOSEBITS,368)@39
    assign i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_24_shuffle_i_mmul0_NO_NAME_x_a = i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_24_shuffle_i_mmul0_dsdk_ip_adapt_bitjoin1_x_q;
    assign i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_24_shuffle_i_mmul0_NO_NAME_x_q = {i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_24_shuffle_i_mmul0_NO_NAME_x_a[62:62], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_24_shuffle_i_mmul0_NO_NAME_x_a[61:61], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_24_shuffle_i_mmul0_NO_NAME_x_a[60:60], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_24_shuffle_i_mmul0_NO_NAME_x_a[59:59], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_24_shuffle_i_mmul0_NO_NAME_x_a[58:58], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_24_shuffle_i_mmul0_NO_NAME_x_a[57:57], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_24_shuffle_i_mmul0_NO_NAME_x_a[56:56], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_24_shuffle_i_mmul0_NO_NAME_x_a[55:55], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_24_shuffle_i_mmul0_NO_NAME_x_a[54:54], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_24_shuffle_i_mmul0_NO_NAME_x_a[53:53], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_24_shuffle_i_mmul0_NO_NAME_x_a[52:52], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_24_shuffle_i_mmul0_NO_NAME_x_a[51:51], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_24_shuffle_i_mmul0_NO_NAME_x_a[50:50], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_24_shuffle_i_mmul0_NO_NAME_x_a[49:49], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_24_shuffle_i_mmul0_NO_NAME_x_a[48:48], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_24_shuffle_i_mmul0_NO_NAME_x_a[47:47], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_24_shuffle_i_mmul0_NO_NAME_x_a[46:46], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_24_shuffle_i_mmul0_NO_NAME_x_a[45:45], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_24_shuffle_i_mmul0_NO_NAME_x_a[44:44], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_24_shuffle_i_mmul0_NO_NAME_x_a[43:43], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_24_shuffle_i_mmul0_NO_NAME_x_a[42:42], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_24_shuffle_i_mmul0_NO_NAME_x_a[41:41], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_24_shuffle_i_mmul0_NO_NAME_x_a[40:40], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_24_shuffle_i_mmul0_NO_NAME_x_a[39:39], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_24_shuffle_i_mmul0_NO_NAME_x_a[38:38], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_24_shuffle_i_mmul0_NO_NAME_x_a[37:37], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_24_shuffle_i_mmul0_NO_NAME_x_a[36:36], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_24_shuffle_i_mmul0_NO_NAME_x_a[35:35], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_24_shuffle_i_mmul0_NO_NAME_x_a[34:34], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_24_shuffle_i_mmul0_NO_NAME_x_a[33:33], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_24_shuffle_i_mmul0_NO_NAME_x_a[32:32], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_24_shuffle_i_mmul0_NO_NAME_x_a[7:7]};

    // i_cmp3_i_24_i_mmul149(COMPARE,105)@39
    assign i_cmp3_i_24_i_mmul149_a = {2'b00, i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_24_shuffle_i_mmul0_NO_NAME_x_q};
    assign i_cmp3_i_24_i_mmul149_b = {2'b00, redist96_i_unnamed_mmul26_q_37_q};
    assign i_cmp3_i_24_i_mmul149_o = $unsigned(i_cmp3_i_24_i_mmul149_a) - $unsigned(i_cmp3_i_24_i_mmul149_b);
    assign i_cmp3_i_24_i_mmul149_c[0] = i_cmp3_i_24_i_mmul149_o[33];

    // i_unnamed_mmul150(MUX,221)@39 + 1
    assign i_unnamed_mmul150_s = i_cmp3_i_24_i_mmul149_c;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_unnamed_mmul150_q <= 32'b0;
        end
        else
        begin
            unique case (i_unnamed_mmul150_s)
                1'b0 : i_unnamed_mmul150_q <= redist96_i_unnamed_mmul26_q_37_q;
                1'b1 : i_unnamed_mmul150_q <= c_i32_0248_q;
                default : i_unnamed_mmul150_q <= 32'b0;
            endcase
        end
    end

    // redist29_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_24_shuffle_i_mmul0_NO_NAME_x_q_1(DELAY,589)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist29_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_24_shuffle_i_mmul0_NO_NAME_x_q_1_q <= '0;
        end
        else
        begin
            redist29_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_24_shuffle_i_mmul0_NO_NAME_x_q_1_q <= $unsigned(i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_24_shuffle_i_mmul0_NO_NAME_x_q);
        end
    end

    // i_sub4_i_24_i_mmul151(SUB,192)@40
    assign i_sub4_i_24_i_mmul151_a = {1'b0, redist29_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_24_shuffle_i_mmul0_NO_NAME_x_q_1_q};
    assign i_sub4_i_24_i_mmul151_b = {1'b0, i_unnamed_mmul150_q};
    assign i_sub4_i_24_i_mmul151_o = $unsigned(i_sub4_i_24_i_mmul151_a) - $unsigned(i_sub4_i_24_i_mmul151_b);
    assign i_sub4_i_24_i_mmul151_q = i_sub4_i_24_i_mmul151_o[32:0];

    // bgTrunc_i_sub4_i_24_i_mmul151_sel_x(BITSELECT,282)@40
    assign bgTrunc_i_sub4_i_24_i_mmul151_sel_x_b = $unsigned(i_sub4_i_24_i_mmul151_q[31:0]);

    // redist132_i_spec_select_i_mmul24_q_37(DELAY,692)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist132_i_spec_select_i_mmul24_q_37_q <= '0;
        end
        else
        begin
            redist132_i_spec_select_i_mmul24_q_37_q <= $unsigned(redist131_i_spec_select_i_mmul24_q_36_q);
        end
    end

    // i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_25_shuffle_i_mmul0_dsdk_ip_adapt_bitjoin1_x(BITJOIN,372)@40
    assign i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_25_shuffle_i_mmul0_dsdk_ip_adapt_bitjoin1_x_q = {c_i8_232_q, bgTrunc_i_sub4_i_24_i_mmul151_sel_x_b, redist132_i_spec_select_i_mmul24_q_37_q};

    // i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_25_shuffle_i_mmul0_NO_NAME_x(CHOOSEBITS,371)@40
    assign i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_25_shuffle_i_mmul0_NO_NAME_x_a = i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_25_shuffle_i_mmul0_dsdk_ip_adapt_bitjoin1_x_q;
    assign i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_25_shuffle_i_mmul0_NO_NAME_x_q = {i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_25_shuffle_i_mmul0_NO_NAME_x_a[62:62], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_25_shuffle_i_mmul0_NO_NAME_x_a[61:61], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_25_shuffle_i_mmul0_NO_NAME_x_a[60:60], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_25_shuffle_i_mmul0_NO_NAME_x_a[59:59], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_25_shuffle_i_mmul0_NO_NAME_x_a[58:58], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_25_shuffle_i_mmul0_NO_NAME_x_a[57:57], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_25_shuffle_i_mmul0_NO_NAME_x_a[56:56], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_25_shuffle_i_mmul0_NO_NAME_x_a[55:55], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_25_shuffle_i_mmul0_NO_NAME_x_a[54:54], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_25_shuffle_i_mmul0_NO_NAME_x_a[53:53], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_25_shuffle_i_mmul0_NO_NAME_x_a[52:52], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_25_shuffle_i_mmul0_NO_NAME_x_a[51:51], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_25_shuffle_i_mmul0_NO_NAME_x_a[50:50], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_25_shuffle_i_mmul0_NO_NAME_x_a[49:49], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_25_shuffle_i_mmul0_NO_NAME_x_a[48:48], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_25_shuffle_i_mmul0_NO_NAME_x_a[47:47], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_25_shuffle_i_mmul0_NO_NAME_x_a[46:46], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_25_shuffle_i_mmul0_NO_NAME_x_a[45:45], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_25_shuffle_i_mmul0_NO_NAME_x_a[44:44], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_25_shuffle_i_mmul0_NO_NAME_x_a[43:43], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_25_shuffle_i_mmul0_NO_NAME_x_a[42:42], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_25_shuffle_i_mmul0_NO_NAME_x_a[41:41], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_25_shuffle_i_mmul0_NO_NAME_x_a[40:40], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_25_shuffle_i_mmul0_NO_NAME_x_a[39:39], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_25_shuffle_i_mmul0_NO_NAME_x_a[38:38], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_25_shuffle_i_mmul0_NO_NAME_x_a[37:37], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_25_shuffle_i_mmul0_NO_NAME_x_a[36:36], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_25_shuffle_i_mmul0_NO_NAME_x_a[35:35], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_25_shuffle_i_mmul0_NO_NAME_x_a[34:34], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_25_shuffle_i_mmul0_NO_NAME_x_a[33:33], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_25_shuffle_i_mmul0_NO_NAME_x_a[32:32], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_25_shuffle_i_mmul0_NO_NAME_x_a[6:6]};

    // i_cmp3_i_25_i_mmul154(COMPARE,106)@40 + 1
    assign i_cmp3_i_25_i_mmul154_a = {2'b00, i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_25_shuffle_i_mmul0_NO_NAME_x_q};
    assign i_cmp3_i_25_i_mmul154_b = {2'b00, redist97_i_unnamed_mmul26_q_38_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_cmp3_i_25_i_mmul154_o <= 34'b0;
        end
        else
        begin
            i_cmp3_i_25_i_mmul154_o <= $unsigned(i_cmp3_i_25_i_mmul154_a) - $unsigned(i_cmp3_i_25_i_mmul154_b);
        end
    end
    assign i_cmp3_i_25_i_mmul154_c[0] = i_cmp3_i_25_i_mmul154_o[33];

    // i_unnamed_mmul155(MUX,222)@41
    assign i_unnamed_mmul155_s = i_cmp3_i_25_i_mmul154_c;
    always @(i_unnamed_mmul155_s or redist98_i_unnamed_mmul26_q_39_q or c_i32_0248_q)
    begin
        unique case (i_unnamed_mmul155_s)
            1'b0 : i_unnamed_mmul155_q = redist98_i_unnamed_mmul26_q_39_q;
            1'b1 : i_unnamed_mmul155_q = c_i32_0248_q;
            default : i_unnamed_mmul155_q = 32'b0;
        endcase
    end

    // redist28_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_25_shuffle_i_mmul0_NO_NAME_x_q_1(DELAY,588)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist28_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_25_shuffle_i_mmul0_NO_NAME_x_q_1_q <= '0;
        end
        else
        begin
            redist28_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_25_shuffle_i_mmul0_NO_NAME_x_q_1_q <= $unsigned(i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_25_shuffle_i_mmul0_NO_NAME_x_q);
        end
    end

    // i_sub4_i_25_i_mmul156(SUB,193)@41
    assign i_sub4_i_25_i_mmul156_a = {1'b0, redist28_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_25_shuffle_i_mmul0_NO_NAME_x_q_1_q};
    assign i_sub4_i_25_i_mmul156_b = {1'b0, i_unnamed_mmul155_q};
    assign i_sub4_i_25_i_mmul156_o = $unsigned(i_sub4_i_25_i_mmul156_a) - $unsigned(i_sub4_i_25_i_mmul156_b);
    assign i_sub4_i_25_i_mmul156_q = i_sub4_i_25_i_mmul156_o[32:0];

    // bgTrunc_i_sub4_i_25_i_mmul156_sel_x(BITSELECT,283)@41
    assign bgTrunc_i_sub4_i_25_i_mmul156_sel_x_b = $unsigned(i_sub4_i_25_i_mmul156_q[31:0]);

    // redist50_bgTrunc_i_sub4_i_25_i_mmul156_sel_x_b_1(DELAY,610)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist50_bgTrunc_i_sub4_i_25_i_mmul156_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist50_bgTrunc_i_sub4_i_25_i_mmul156_sel_x_b_1_q <= $unsigned(bgTrunc_i_sub4_i_25_i_mmul156_sel_x_b);
        end
    end

    // redist133_i_spec_select_i_mmul24_q_39(DELAY,693)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist133_i_spec_select_i_mmul24_q_39_delay_0 <= '0;
            redist133_i_spec_select_i_mmul24_q_39_q <= '0;
        end
        else
        begin
            redist133_i_spec_select_i_mmul24_q_39_delay_0 <= $unsigned(redist132_i_spec_select_i_mmul24_q_37_q);
            redist133_i_spec_select_i_mmul24_q_39_q <= redist133_i_spec_select_i_mmul24_q_39_delay_0;
        end
    end

    // i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_26_shuffle_i_mmul0_dsdk_ip_adapt_bitjoin1_x(BITJOIN,375)@42
    assign i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_26_shuffle_i_mmul0_dsdk_ip_adapt_bitjoin1_x_q = {c_i8_232_q, redist50_bgTrunc_i_sub4_i_25_i_mmul156_sel_x_b_1_q, redist133_i_spec_select_i_mmul24_q_39_q};

    // i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_26_shuffle_i_mmul0_NO_NAME_x(CHOOSEBITS,374)@42
    assign i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_26_shuffle_i_mmul0_NO_NAME_x_a = i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_26_shuffle_i_mmul0_dsdk_ip_adapt_bitjoin1_x_q;
    assign i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_26_shuffle_i_mmul0_NO_NAME_x_q = {i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_26_shuffle_i_mmul0_NO_NAME_x_a[62:62], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_26_shuffle_i_mmul0_NO_NAME_x_a[61:61], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_26_shuffle_i_mmul0_NO_NAME_x_a[60:60], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_26_shuffle_i_mmul0_NO_NAME_x_a[59:59], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_26_shuffle_i_mmul0_NO_NAME_x_a[58:58], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_26_shuffle_i_mmul0_NO_NAME_x_a[57:57], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_26_shuffle_i_mmul0_NO_NAME_x_a[56:56], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_26_shuffle_i_mmul0_NO_NAME_x_a[55:55], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_26_shuffle_i_mmul0_NO_NAME_x_a[54:54], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_26_shuffle_i_mmul0_NO_NAME_x_a[53:53], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_26_shuffle_i_mmul0_NO_NAME_x_a[52:52], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_26_shuffle_i_mmul0_NO_NAME_x_a[51:51], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_26_shuffle_i_mmul0_NO_NAME_x_a[50:50], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_26_shuffle_i_mmul0_NO_NAME_x_a[49:49], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_26_shuffle_i_mmul0_NO_NAME_x_a[48:48], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_26_shuffle_i_mmul0_NO_NAME_x_a[47:47], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_26_shuffle_i_mmul0_NO_NAME_x_a[46:46], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_26_shuffle_i_mmul0_NO_NAME_x_a[45:45], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_26_shuffle_i_mmul0_NO_NAME_x_a[44:44], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_26_shuffle_i_mmul0_NO_NAME_x_a[43:43], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_26_shuffle_i_mmul0_NO_NAME_x_a[42:42], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_26_shuffle_i_mmul0_NO_NAME_x_a[41:41], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_26_shuffle_i_mmul0_NO_NAME_x_a[40:40], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_26_shuffle_i_mmul0_NO_NAME_x_a[39:39], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_26_shuffle_i_mmul0_NO_NAME_x_a[38:38], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_26_shuffle_i_mmul0_NO_NAME_x_a[37:37], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_26_shuffle_i_mmul0_NO_NAME_x_a[36:36], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_26_shuffle_i_mmul0_NO_NAME_x_a[35:35], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_26_shuffle_i_mmul0_NO_NAME_x_a[34:34], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_26_shuffle_i_mmul0_NO_NAME_x_a[33:33], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_26_shuffle_i_mmul0_NO_NAME_x_a[32:32], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_26_shuffle_i_mmul0_NO_NAME_x_a[5:5]};

    // i_cmp3_i_26_i_mmul159(COMPARE,107)@42
    assign i_cmp3_i_26_i_mmul159_a = {2'b00, i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_26_shuffle_i_mmul0_NO_NAME_x_q};
    assign i_cmp3_i_26_i_mmul159_b = {2'b00, redist99_i_unnamed_mmul26_q_40_q};
    assign i_cmp3_i_26_i_mmul159_o = $unsigned(i_cmp3_i_26_i_mmul159_a) - $unsigned(i_cmp3_i_26_i_mmul159_b);
    assign i_cmp3_i_26_i_mmul159_c[0] = i_cmp3_i_26_i_mmul159_o[33];

    // i_unnamed_mmul160(MUX,223)@42 + 1
    assign i_unnamed_mmul160_s = i_cmp3_i_26_i_mmul159_c;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_unnamed_mmul160_q <= 32'b0;
        end
        else
        begin
            unique case (i_unnamed_mmul160_s)
                1'b0 : i_unnamed_mmul160_q <= redist99_i_unnamed_mmul26_q_40_q;
                1'b1 : i_unnamed_mmul160_q <= c_i32_0248_q;
                default : i_unnamed_mmul160_q <= 32'b0;
            endcase
        end
    end

    // redist27_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_26_shuffle_i_mmul0_NO_NAME_x_q_1(DELAY,587)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist27_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_26_shuffle_i_mmul0_NO_NAME_x_q_1_q <= '0;
        end
        else
        begin
            redist27_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_26_shuffle_i_mmul0_NO_NAME_x_q_1_q <= $unsigned(i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_26_shuffle_i_mmul0_NO_NAME_x_q);
        end
    end

    // i_sub4_i_26_i_mmul161(SUB,194)@43
    assign i_sub4_i_26_i_mmul161_a = {1'b0, redist27_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_26_shuffle_i_mmul0_NO_NAME_x_q_1_q};
    assign i_sub4_i_26_i_mmul161_b = {1'b0, i_unnamed_mmul160_q};
    assign i_sub4_i_26_i_mmul161_o = $unsigned(i_sub4_i_26_i_mmul161_a) - $unsigned(i_sub4_i_26_i_mmul161_b);
    assign i_sub4_i_26_i_mmul161_q = i_sub4_i_26_i_mmul161_o[32:0];

    // bgTrunc_i_sub4_i_26_i_mmul161_sel_x(BITSELECT,284)@43
    assign bgTrunc_i_sub4_i_26_i_mmul161_sel_x_b = $unsigned(i_sub4_i_26_i_mmul161_q[31:0]);

    // redist134_i_spec_select_i_mmul24_q_40(DELAY,694)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist134_i_spec_select_i_mmul24_q_40_q <= '0;
        end
        else
        begin
            redist134_i_spec_select_i_mmul24_q_40_q <= $unsigned(redist133_i_spec_select_i_mmul24_q_39_q);
        end
    end

    // i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_27_shuffle_i_mmul0_dsdk_ip_adapt_bitjoin1_x(BITJOIN,378)@43
    assign i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_27_shuffle_i_mmul0_dsdk_ip_adapt_bitjoin1_x_q = {c_i8_232_q, bgTrunc_i_sub4_i_26_i_mmul161_sel_x_b, redist134_i_spec_select_i_mmul24_q_40_q};

    // i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_27_shuffle_i_mmul0_NO_NAME_x(CHOOSEBITS,377)@43
    assign i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_27_shuffle_i_mmul0_NO_NAME_x_a = i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_27_shuffle_i_mmul0_dsdk_ip_adapt_bitjoin1_x_q;
    assign i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_27_shuffle_i_mmul0_NO_NAME_x_q = {i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_27_shuffle_i_mmul0_NO_NAME_x_a[62:62], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_27_shuffle_i_mmul0_NO_NAME_x_a[61:61], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_27_shuffle_i_mmul0_NO_NAME_x_a[60:60], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_27_shuffle_i_mmul0_NO_NAME_x_a[59:59], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_27_shuffle_i_mmul0_NO_NAME_x_a[58:58], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_27_shuffle_i_mmul0_NO_NAME_x_a[57:57], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_27_shuffle_i_mmul0_NO_NAME_x_a[56:56], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_27_shuffle_i_mmul0_NO_NAME_x_a[55:55], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_27_shuffle_i_mmul0_NO_NAME_x_a[54:54], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_27_shuffle_i_mmul0_NO_NAME_x_a[53:53], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_27_shuffle_i_mmul0_NO_NAME_x_a[52:52], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_27_shuffle_i_mmul0_NO_NAME_x_a[51:51], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_27_shuffle_i_mmul0_NO_NAME_x_a[50:50], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_27_shuffle_i_mmul0_NO_NAME_x_a[49:49], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_27_shuffle_i_mmul0_NO_NAME_x_a[48:48], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_27_shuffle_i_mmul0_NO_NAME_x_a[47:47], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_27_shuffle_i_mmul0_NO_NAME_x_a[46:46], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_27_shuffle_i_mmul0_NO_NAME_x_a[45:45], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_27_shuffle_i_mmul0_NO_NAME_x_a[44:44], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_27_shuffle_i_mmul0_NO_NAME_x_a[43:43], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_27_shuffle_i_mmul0_NO_NAME_x_a[42:42], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_27_shuffle_i_mmul0_NO_NAME_x_a[41:41], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_27_shuffle_i_mmul0_NO_NAME_x_a[40:40], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_27_shuffle_i_mmul0_NO_NAME_x_a[39:39], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_27_shuffle_i_mmul0_NO_NAME_x_a[38:38], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_27_shuffle_i_mmul0_NO_NAME_x_a[37:37], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_27_shuffle_i_mmul0_NO_NAME_x_a[36:36], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_27_shuffle_i_mmul0_NO_NAME_x_a[35:35], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_27_shuffle_i_mmul0_NO_NAME_x_a[34:34], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_27_shuffle_i_mmul0_NO_NAME_x_a[33:33], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_27_shuffle_i_mmul0_NO_NAME_x_a[32:32], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_27_shuffle_i_mmul0_NO_NAME_x_a[4:4]};

    // i_cmp3_i_27_i_mmul164(COMPARE,108)@43 + 1
    assign i_cmp3_i_27_i_mmul164_a = {2'b00, i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_27_shuffle_i_mmul0_NO_NAME_x_q};
    assign i_cmp3_i_27_i_mmul164_b = {2'b00, redist100_i_unnamed_mmul26_q_41_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_cmp3_i_27_i_mmul164_o <= 34'b0;
        end
        else
        begin
            i_cmp3_i_27_i_mmul164_o <= $unsigned(i_cmp3_i_27_i_mmul164_a) - $unsigned(i_cmp3_i_27_i_mmul164_b);
        end
    end
    assign i_cmp3_i_27_i_mmul164_c[0] = i_cmp3_i_27_i_mmul164_o[33];

    // i_unnamed_mmul165(MUX,224)@44
    assign i_unnamed_mmul165_s = i_cmp3_i_27_i_mmul164_c;
    always @(i_unnamed_mmul165_s or redist101_i_unnamed_mmul26_q_42_q or c_i32_0248_q)
    begin
        unique case (i_unnamed_mmul165_s)
            1'b0 : i_unnamed_mmul165_q = redist101_i_unnamed_mmul26_q_42_q;
            1'b1 : i_unnamed_mmul165_q = c_i32_0248_q;
            default : i_unnamed_mmul165_q = 32'b0;
        endcase
    end

    // redist26_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_27_shuffle_i_mmul0_NO_NAME_x_q_1(DELAY,586)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist26_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_27_shuffle_i_mmul0_NO_NAME_x_q_1_q <= '0;
        end
        else
        begin
            redist26_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_27_shuffle_i_mmul0_NO_NAME_x_q_1_q <= $unsigned(i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_27_shuffle_i_mmul0_NO_NAME_x_q);
        end
    end

    // i_sub4_i_27_i_mmul166(SUB,195)@44
    assign i_sub4_i_27_i_mmul166_a = {1'b0, redist26_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_27_shuffle_i_mmul0_NO_NAME_x_q_1_q};
    assign i_sub4_i_27_i_mmul166_b = {1'b0, i_unnamed_mmul165_q};
    assign i_sub4_i_27_i_mmul166_o = $unsigned(i_sub4_i_27_i_mmul166_a) - $unsigned(i_sub4_i_27_i_mmul166_b);
    assign i_sub4_i_27_i_mmul166_q = i_sub4_i_27_i_mmul166_o[32:0];

    // bgTrunc_i_sub4_i_27_i_mmul166_sel_x(BITSELECT,285)@44
    assign bgTrunc_i_sub4_i_27_i_mmul166_sel_x_b = $unsigned(i_sub4_i_27_i_mmul166_q[31:0]);

    // redist49_bgTrunc_i_sub4_i_27_i_mmul166_sel_x_b_1(DELAY,609)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist49_bgTrunc_i_sub4_i_27_i_mmul166_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist49_bgTrunc_i_sub4_i_27_i_mmul166_sel_x_b_1_q <= $unsigned(bgTrunc_i_sub4_i_27_i_mmul166_sel_x_b);
        end
    end

    // redist135_i_spec_select_i_mmul24_q_42(DELAY,695)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist135_i_spec_select_i_mmul24_q_42_delay_0 <= '0;
            redist135_i_spec_select_i_mmul24_q_42_q <= '0;
        end
        else
        begin
            redist135_i_spec_select_i_mmul24_q_42_delay_0 <= $unsigned(redist134_i_spec_select_i_mmul24_q_40_q);
            redist135_i_spec_select_i_mmul24_q_42_q <= redist135_i_spec_select_i_mmul24_q_42_delay_0;
        end
    end

    // i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_28_shuffle_i_mmul0_dsdk_ip_adapt_bitjoin1_x(BITJOIN,381)@45
    assign i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_28_shuffle_i_mmul0_dsdk_ip_adapt_bitjoin1_x_q = {c_i8_232_q, redist49_bgTrunc_i_sub4_i_27_i_mmul166_sel_x_b_1_q, redist135_i_spec_select_i_mmul24_q_42_q};

    // i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_28_shuffle_i_mmul0_NO_NAME_x(CHOOSEBITS,380)@45
    assign i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_28_shuffle_i_mmul0_NO_NAME_x_a = i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_28_shuffle_i_mmul0_dsdk_ip_adapt_bitjoin1_x_q;
    assign i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_28_shuffle_i_mmul0_NO_NAME_x_q = {i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_28_shuffle_i_mmul0_NO_NAME_x_a[62:62], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_28_shuffle_i_mmul0_NO_NAME_x_a[61:61], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_28_shuffle_i_mmul0_NO_NAME_x_a[60:60], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_28_shuffle_i_mmul0_NO_NAME_x_a[59:59], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_28_shuffle_i_mmul0_NO_NAME_x_a[58:58], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_28_shuffle_i_mmul0_NO_NAME_x_a[57:57], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_28_shuffle_i_mmul0_NO_NAME_x_a[56:56], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_28_shuffle_i_mmul0_NO_NAME_x_a[55:55], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_28_shuffle_i_mmul0_NO_NAME_x_a[54:54], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_28_shuffle_i_mmul0_NO_NAME_x_a[53:53], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_28_shuffle_i_mmul0_NO_NAME_x_a[52:52], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_28_shuffle_i_mmul0_NO_NAME_x_a[51:51], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_28_shuffle_i_mmul0_NO_NAME_x_a[50:50], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_28_shuffle_i_mmul0_NO_NAME_x_a[49:49], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_28_shuffle_i_mmul0_NO_NAME_x_a[48:48], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_28_shuffle_i_mmul0_NO_NAME_x_a[47:47], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_28_shuffle_i_mmul0_NO_NAME_x_a[46:46], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_28_shuffle_i_mmul0_NO_NAME_x_a[45:45], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_28_shuffle_i_mmul0_NO_NAME_x_a[44:44], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_28_shuffle_i_mmul0_NO_NAME_x_a[43:43], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_28_shuffle_i_mmul0_NO_NAME_x_a[42:42], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_28_shuffle_i_mmul0_NO_NAME_x_a[41:41], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_28_shuffle_i_mmul0_NO_NAME_x_a[40:40], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_28_shuffle_i_mmul0_NO_NAME_x_a[39:39], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_28_shuffle_i_mmul0_NO_NAME_x_a[38:38], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_28_shuffle_i_mmul0_NO_NAME_x_a[37:37], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_28_shuffle_i_mmul0_NO_NAME_x_a[36:36], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_28_shuffle_i_mmul0_NO_NAME_x_a[35:35], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_28_shuffle_i_mmul0_NO_NAME_x_a[34:34], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_28_shuffle_i_mmul0_NO_NAME_x_a[33:33], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_28_shuffle_i_mmul0_NO_NAME_x_a[32:32], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_28_shuffle_i_mmul0_NO_NAME_x_a[3:3]};

    // i_cmp3_i_28_i_mmul169(COMPARE,109)@45
    assign i_cmp3_i_28_i_mmul169_a = {2'b00, i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_28_shuffle_i_mmul0_NO_NAME_x_q};
    assign i_cmp3_i_28_i_mmul169_b = {2'b00, redist102_i_unnamed_mmul26_q_43_q};
    assign i_cmp3_i_28_i_mmul169_o = $unsigned(i_cmp3_i_28_i_mmul169_a) - $unsigned(i_cmp3_i_28_i_mmul169_b);
    assign i_cmp3_i_28_i_mmul169_c[0] = i_cmp3_i_28_i_mmul169_o[33];

    // i_unnamed_mmul170(MUX,225)@45 + 1
    assign i_unnamed_mmul170_s = i_cmp3_i_28_i_mmul169_c;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_unnamed_mmul170_q <= 32'b0;
        end
        else
        begin
            unique case (i_unnamed_mmul170_s)
                1'b0 : i_unnamed_mmul170_q <= redist102_i_unnamed_mmul26_q_43_q;
                1'b1 : i_unnamed_mmul170_q <= c_i32_0248_q;
                default : i_unnamed_mmul170_q <= 32'b0;
            endcase
        end
    end

    // redist25_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_28_shuffle_i_mmul0_NO_NAME_x_q_1(DELAY,585)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist25_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_28_shuffle_i_mmul0_NO_NAME_x_q_1_q <= '0;
        end
        else
        begin
            redist25_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_28_shuffle_i_mmul0_NO_NAME_x_q_1_q <= $unsigned(i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_28_shuffle_i_mmul0_NO_NAME_x_q);
        end
    end

    // i_sub4_i_28_i_mmul171(SUB,196)@46
    assign i_sub4_i_28_i_mmul171_a = {1'b0, redist25_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_28_shuffle_i_mmul0_NO_NAME_x_q_1_q};
    assign i_sub4_i_28_i_mmul171_b = {1'b0, i_unnamed_mmul170_q};
    assign i_sub4_i_28_i_mmul171_o = $unsigned(i_sub4_i_28_i_mmul171_a) - $unsigned(i_sub4_i_28_i_mmul171_b);
    assign i_sub4_i_28_i_mmul171_q = i_sub4_i_28_i_mmul171_o[32:0];

    // bgTrunc_i_sub4_i_28_i_mmul171_sel_x(BITSELECT,286)@46
    assign bgTrunc_i_sub4_i_28_i_mmul171_sel_x_b = $unsigned(i_sub4_i_28_i_mmul171_q[31:0]);

    // redist136_i_spec_select_i_mmul24_q_43(DELAY,696)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist136_i_spec_select_i_mmul24_q_43_q <= '0;
        end
        else
        begin
            redist136_i_spec_select_i_mmul24_q_43_q <= $unsigned(redist135_i_spec_select_i_mmul24_q_42_q);
        end
    end

    // i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_29_shuffle_i_mmul0_dsdk_ip_adapt_bitjoin1_x(BITJOIN,384)@46
    assign i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_29_shuffle_i_mmul0_dsdk_ip_adapt_bitjoin1_x_q = {c_i8_232_q, bgTrunc_i_sub4_i_28_i_mmul171_sel_x_b, redist136_i_spec_select_i_mmul24_q_43_q};

    // i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_29_shuffle_i_mmul0_NO_NAME_x(CHOOSEBITS,383)@46
    assign i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_29_shuffle_i_mmul0_NO_NAME_x_a = i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_29_shuffle_i_mmul0_dsdk_ip_adapt_bitjoin1_x_q;
    assign i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_29_shuffle_i_mmul0_NO_NAME_x_q = {i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_29_shuffle_i_mmul0_NO_NAME_x_a[62:62], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_29_shuffle_i_mmul0_NO_NAME_x_a[61:61], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_29_shuffle_i_mmul0_NO_NAME_x_a[60:60], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_29_shuffle_i_mmul0_NO_NAME_x_a[59:59], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_29_shuffle_i_mmul0_NO_NAME_x_a[58:58], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_29_shuffle_i_mmul0_NO_NAME_x_a[57:57], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_29_shuffle_i_mmul0_NO_NAME_x_a[56:56], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_29_shuffle_i_mmul0_NO_NAME_x_a[55:55], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_29_shuffle_i_mmul0_NO_NAME_x_a[54:54], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_29_shuffle_i_mmul0_NO_NAME_x_a[53:53], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_29_shuffle_i_mmul0_NO_NAME_x_a[52:52], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_29_shuffle_i_mmul0_NO_NAME_x_a[51:51], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_29_shuffle_i_mmul0_NO_NAME_x_a[50:50], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_29_shuffle_i_mmul0_NO_NAME_x_a[49:49], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_29_shuffle_i_mmul0_NO_NAME_x_a[48:48], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_29_shuffle_i_mmul0_NO_NAME_x_a[47:47], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_29_shuffle_i_mmul0_NO_NAME_x_a[46:46], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_29_shuffle_i_mmul0_NO_NAME_x_a[45:45], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_29_shuffle_i_mmul0_NO_NAME_x_a[44:44], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_29_shuffle_i_mmul0_NO_NAME_x_a[43:43], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_29_shuffle_i_mmul0_NO_NAME_x_a[42:42], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_29_shuffle_i_mmul0_NO_NAME_x_a[41:41], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_29_shuffle_i_mmul0_NO_NAME_x_a[40:40], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_29_shuffle_i_mmul0_NO_NAME_x_a[39:39], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_29_shuffle_i_mmul0_NO_NAME_x_a[38:38], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_29_shuffle_i_mmul0_NO_NAME_x_a[37:37], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_29_shuffle_i_mmul0_NO_NAME_x_a[36:36], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_29_shuffle_i_mmul0_NO_NAME_x_a[35:35], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_29_shuffle_i_mmul0_NO_NAME_x_a[34:34], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_29_shuffle_i_mmul0_NO_NAME_x_a[33:33], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_29_shuffle_i_mmul0_NO_NAME_x_a[32:32], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_29_shuffle_i_mmul0_NO_NAME_x_a[2:2]};

    // i_cmp3_i_29_i_mmul174(COMPARE,110)@46 + 1
    assign i_cmp3_i_29_i_mmul174_a = {2'b00, i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_29_shuffle_i_mmul0_NO_NAME_x_q};
    assign i_cmp3_i_29_i_mmul174_b = {2'b00, redist103_i_unnamed_mmul26_q_44_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_cmp3_i_29_i_mmul174_o <= 34'b0;
        end
        else
        begin
            i_cmp3_i_29_i_mmul174_o <= $unsigned(i_cmp3_i_29_i_mmul174_a) - $unsigned(i_cmp3_i_29_i_mmul174_b);
        end
    end
    assign i_cmp3_i_29_i_mmul174_c[0] = i_cmp3_i_29_i_mmul174_o[33];

    // i_unnamed_mmul175(MUX,226)@47
    assign i_unnamed_mmul175_s = i_cmp3_i_29_i_mmul174_c;
    always @(i_unnamed_mmul175_s or redist104_i_unnamed_mmul26_q_45_q or c_i32_0248_q)
    begin
        unique case (i_unnamed_mmul175_s)
            1'b0 : i_unnamed_mmul175_q = redist104_i_unnamed_mmul26_q_45_q;
            1'b1 : i_unnamed_mmul175_q = c_i32_0248_q;
            default : i_unnamed_mmul175_q = 32'b0;
        endcase
    end

    // redist24_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_29_shuffle_i_mmul0_NO_NAME_x_q_1(DELAY,584)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist24_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_29_shuffle_i_mmul0_NO_NAME_x_q_1_q <= '0;
        end
        else
        begin
            redist24_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_29_shuffle_i_mmul0_NO_NAME_x_q_1_q <= $unsigned(i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_29_shuffle_i_mmul0_NO_NAME_x_q);
        end
    end

    // i_sub4_i_29_i_mmul176(SUB,197)@47
    assign i_sub4_i_29_i_mmul176_a = {1'b0, redist24_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_29_shuffle_i_mmul0_NO_NAME_x_q_1_q};
    assign i_sub4_i_29_i_mmul176_b = {1'b0, i_unnamed_mmul175_q};
    assign i_sub4_i_29_i_mmul176_o = $unsigned(i_sub4_i_29_i_mmul176_a) - $unsigned(i_sub4_i_29_i_mmul176_b);
    assign i_sub4_i_29_i_mmul176_q = i_sub4_i_29_i_mmul176_o[32:0];

    // bgTrunc_i_sub4_i_29_i_mmul176_sel_x(BITSELECT,287)@47
    assign bgTrunc_i_sub4_i_29_i_mmul176_sel_x_b = $unsigned(i_sub4_i_29_i_mmul176_q[31:0]);

    // redist48_bgTrunc_i_sub4_i_29_i_mmul176_sel_x_b_1(DELAY,608)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist48_bgTrunc_i_sub4_i_29_i_mmul176_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist48_bgTrunc_i_sub4_i_29_i_mmul176_sel_x_b_1_q <= $unsigned(bgTrunc_i_sub4_i_29_i_mmul176_sel_x_b);
        end
    end

    // redist137_i_spec_select_i_mmul24_q_45(DELAY,697)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist137_i_spec_select_i_mmul24_q_45_delay_0 <= '0;
            redist137_i_spec_select_i_mmul24_q_45_q <= '0;
        end
        else
        begin
            redist137_i_spec_select_i_mmul24_q_45_delay_0 <= $unsigned(redist136_i_spec_select_i_mmul24_q_43_q);
            redist137_i_spec_select_i_mmul24_q_45_q <= redist137_i_spec_select_i_mmul24_q_45_delay_0;
        end
    end

    // i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_30_shuffle_i_mmul0_dsdk_ip_adapt_bitjoin1_x(BITJOIN,390)@48
    assign i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_30_shuffle_i_mmul0_dsdk_ip_adapt_bitjoin1_x_q = {c_i8_232_q, redist48_bgTrunc_i_sub4_i_29_i_mmul176_sel_x_b_1_q, redist137_i_spec_select_i_mmul24_q_45_q};

    // i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_30_shuffle_i_mmul0_NO_NAME_x(CHOOSEBITS,389)@48
    assign i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_30_shuffle_i_mmul0_NO_NAME_x_a = i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_30_shuffle_i_mmul0_dsdk_ip_adapt_bitjoin1_x_q;
    assign i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_30_shuffle_i_mmul0_NO_NAME_x_q = {i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_30_shuffle_i_mmul0_NO_NAME_x_a[62:62], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_30_shuffle_i_mmul0_NO_NAME_x_a[61:61], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_30_shuffle_i_mmul0_NO_NAME_x_a[60:60], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_30_shuffle_i_mmul0_NO_NAME_x_a[59:59], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_30_shuffle_i_mmul0_NO_NAME_x_a[58:58], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_30_shuffle_i_mmul0_NO_NAME_x_a[57:57], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_30_shuffle_i_mmul0_NO_NAME_x_a[56:56], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_30_shuffle_i_mmul0_NO_NAME_x_a[55:55], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_30_shuffle_i_mmul0_NO_NAME_x_a[54:54], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_30_shuffle_i_mmul0_NO_NAME_x_a[53:53], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_30_shuffle_i_mmul0_NO_NAME_x_a[52:52], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_30_shuffle_i_mmul0_NO_NAME_x_a[51:51], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_30_shuffle_i_mmul0_NO_NAME_x_a[50:50], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_30_shuffle_i_mmul0_NO_NAME_x_a[49:49], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_30_shuffle_i_mmul0_NO_NAME_x_a[48:48], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_30_shuffle_i_mmul0_NO_NAME_x_a[47:47], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_30_shuffle_i_mmul0_NO_NAME_x_a[46:46], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_30_shuffle_i_mmul0_NO_NAME_x_a[45:45], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_30_shuffle_i_mmul0_NO_NAME_x_a[44:44], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_30_shuffle_i_mmul0_NO_NAME_x_a[43:43], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_30_shuffle_i_mmul0_NO_NAME_x_a[42:42], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_30_shuffle_i_mmul0_NO_NAME_x_a[41:41], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_30_shuffle_i_mmul0_NO_NAME_x_a[40:40], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_30_shuffle_i_mmul0_NO_NAME_x_a[39:39], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_30_shuffle_i_mmul0_NO_NAME_x_a[38:38], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_30_shuffle_i_mmul0_NO_NAME_x_a[37:37], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_30_shuffle_i_mmul0_NO_NAME_x_a[36:36], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_30_shuffle_i_mmul0_NO_NAME_x_a[35:35], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_30_shuffle_i_mmul0_NO_NAME_x_a[34:34], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_30_shuffle_i_mmul0_NO_NAME_x_a[33:33], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_30_shuffle_i_mmul0_NO_NAME_x_a[32:32], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_30_shuffle_i_mmul0_NO_NAME_x_a[1:1]};

    // i_cmp3_i_30_i_mmul179(COMPARE,112)@48
    assign i_cmp3_i_30_i_mmul179_a = {2'b00, i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_30_shuffle_i_mmul0_NO_NAME_x_q};
    assign i_cmp3_i_30_i_mmul179_b = {2'b00, redist105_i_unnamed_mmul26_q_46_q};
    assign i_cmp3_i_30_i_mmul179_o = $unsigned(i_cmp3_i_30_i_mmul179_a) - $unsigned(i_cmp3_i_30_i_mmul179_b);
    assign i_cmp3_i_30_i_mmul179_c[0] = i_cmp3_i_30_i_mmul179_o[33];

    // i_unnamed_mmul180(MUX,227)@48 + 1
    assign i_unnamed_mmul180_s = i_cmp3_i_30_i_mmul179_c;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_unnamed_mmul180_q <= 32'b0;
        end
        else
        begin
            unique case (i_unnamed_mmul180_s)
                1'b0 : i_unnamed_mmul180_q <= redist105_i_unnamed_mmul26_q_46_q;
                1'b1 : i_unnamed_mmul180_q <= c_i32_0248_q;
                default : i_unnamed_mmul180_q <= 32'b0;
            endcase
        end
    end

    // redist21_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_30_shuffle_i_mmul0_NO_NAME_x_q_1(DELAY,581)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist21_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_30_shuffle_i_mmul0_NO_NAME_x_q_1_q <= '0;
        end
        else
        begin
            redist21_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_30_shuffle_i_mmul0_NO_NAME_x_q_1_q <= $unsigned(i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_30_shuffle_i_mmul0_NO_NAME_x_q);
        end
    end

    // i_sub4_i_30_i_mmul181(SUB,199)@49
    assign i_sub4_i_30_i_mmul181_a = {1'b0, redist21_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_30_shuffle_i_mmul0_NO_NAME_x_q_1_q};
    assign i_sub4_i_30_i_mmul181_b = {1'b0, i_unnamed_mmul180_q};
    assign i_sub4_i_30_i_mmul181_o = $unsigned(i_sub4_i_30_i_mmul181_a) - $unsigned(i_sub4_i_30_i_mmul181_b);
    assign i_sub4_i_30_i_mmul181_q = i_sub4_i_30_i_mmul181_o[32:0];

    // bgTrunc_i_sub4_i_30_i_mmul181_sel_x(BITSELECT,289)@49
    assign bgTrunc_i_sub4_i_30_i_mmul181_sel_x_b = $unsigned(i_sub4_i_30_i_mmul181_q[31:0]);

    // redist138_i_spec_select_i_mmul24_q_46(DELAY,698)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist138_i_spec_select_i_mmul24_q_46_q <= '0;
        end
        else
        begin
            redist138_i_spec_select_i_mmul24_q_46_q <= $unsigned(redist137_i_spec_select_i_mmul24_q_45_q);
        end
    end

    // i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_31_shuffle_i_mmul0_dsdk_ip_adapt_bitjoin1_x(BITJOIN,393)@49
    assign i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_31_shuffle_i_mmul0_dsdk_ip_adapt_bitjoin1_x_q = {c_i8_232_q, bgTrunc_i_sub4_i_30_i_mmul181_sel_x_b, redist138_i_spec_select_i_mmul24_q_46_q};

    // i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_31_shuffle_i_mmul0_NO_NAME_x(CHOOSEBITS,392)@49
    assign i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_31_shuffle_i_mmul0_NO_NAME_x_a = i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_31_shuffle_i_mmul0_dsdk_ip_adapt_bitjoin1_x_q;
    assign i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_31_shuffle_i_mmul0_NO_NAME_x_q = {i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_31_shuffle_i_mmul0_NO_NAME_x_a[62:62], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_31_shuffle_i_mmul0_NO_NAME_x_a[61:61], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_31_shuffle_i_mmul0_NO_NAME_x_a[60:60], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_31_shuffle_i_mmul0_NO_NAME_x_a[59:59], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_31_shuffle_i_mmul0_NO_NAME_x_a[58:58], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_31_shuffle_i_mmul0_NO_NAME_x_a[57:57], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_31_shuffle_i_mmul0_NO_NAME_x_a[56:56], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_31_shuffle_i_mmul0_NO_NAME_x_a[55:55], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_31_shuffle_i_mmul0_NO_NAME_x_a[54:54], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_31_shuffle_i_mmul0_NO_NAME_x_a[53:53], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_31_shuffle_i_mmul0_NO_NAME_x_a[52:52], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_31_shuffle_i_mmul0_NO_NAME_x_a[51:51], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_31_shuffle_i_mmul0_NO_NAME_x_a[50:50], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_31_shuffle_i_mmul0_NO_NAME_x_a[49:49], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_31_shuffle_i_mmul0_NO_NAME_x_a[48:48], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_31_shuffle_i_mmul0_NO_NAME_x_a[47:47], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_31_shuffle_i_mmul0_NO_NAME_x_a[46:46], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_31_shuffle_i_mmul0_NO_NAME_x_a[45:45], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_31_shuffle_i_mmul0_NO_NAME_x_a[44:44], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_31_shuffle_i_mmul0_NO_NAME_x_a[43:43], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_31_shuffle_i_mmul0_NO_NAME_x_a[42:42], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_31_shuffle_i_mmul0_NO_NAME_x_a[41:41], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_31_shuffle_i_mmul0_NO_NAME_x_a[40:40], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_31_shuffle_i_mmul0_NO_NAME_x_a[39:39], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_31_shuffle_i_mmul0_NO_NAME_x_a[38:38], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_31_shuffle_i_mmul0_NO_NAME_x_a[37:37], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_31_shuffle_i_mmul0_NO_NAME_x_a[36:36], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_31_shuffle_i_mmul0_NO_NAME_x_a[35:35], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_31_shuffle_i_mmul0_NO_NAME_x_a[34:34], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_31_shuffle_i_mmul0_NO_NAME_x_a[33:33], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_31_shuffle_i_mmul0_NO_NAME_x_a[32:32], i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_31_shuffle_i_mmul0_NO_NAME_x_a[0:0]};

    // i_cmp3_i_31_i_mmul184(COMPARE,113)@49 + 1
    assign i_cmp3_i_31_i_mmul184_a = {2'b00, i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_31_shuffle_i_mmul0_NO_NAME_x_q};
    assign i_cmp3_i_31_i_mmul184_b = {2'b00, redist106_i_unnamed_mmul26_q_47_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_cmp3_i_31_i_mmul184_o <= 34'b0;
        end
        else
        begin
            i_cmp3_i_31_i_mmul184_o <= $unsigned(i_cmp3_i_31_i_mmul184_a) - $unsigned(i_cmp3_i_31_i_mmul184_b);
        end
    end
    assign i_cmp3_i_31_i_mmul184_c[0] = i_cmp3_i_31_i_mmul184_o[33];

    // i_unnamed_mmul185(MUX,228)@50
    assign i_unnamed_mmul185_s = i_cmp3_i_31_i_mmul184_c;
    always @(i_unnamed_mmul185_s or redist107_i_unnamed_mmul26_q_48_q or c_i32_0248_q)
    begin
        unique case (i_unnamed_mmul185_s)
            1'b0 : i_unnamed_mmul185_q = redist107_i_unnamed_mmul26_q_48_q;
            1'b1 : i_unnamed_mmul185_q = c_i32_0248_q;
            default : i_unnamed_mmul185_q = 32'b0;
        endcase
    end

    // redist20_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_31_shuffle_i_mmul0_NO_NAME_x_q_1(DELAY,580)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist20_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_31_shuffle_i_mmul0_NO_NAME_x_q_1_q <= '0;
        end
        else
        begin
            redist20_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_31_shuffle_i_mmul0_NO_NAME_x_q_1_q <= $unsigned(i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_31_shuffle_i_mmul0_NO_NAME_x_q);
        end
    end

    // i_sub4_i_31_i_mmul186(SUB,200)@50
    assign i_sub4_i_31_i_mmul186_a = {1'b0, redist20_i_llvm_fpga_bit_shuffle_i32_s_s_in_entry_acl_soft_single_precision_fp_add_fpgaunique_1s_v32i32_or_i_31_shuffle_i_mmul0_NO_NAME_x_q_1_q};
    assign i_sub4_i_31_i_mmul186_b = {1'b0, i_unnamed_mmul185_q};
    assign i_sub4_i_31_i_mmul186_o = $unsigned(i_sub4_i_31_i_mmul186_a) - $unsigned(i_sub4_i_31_i_mmul186_b);
    assign i_sub4_i_31_i_mmul186_q = i_sub4_i_31_i_mmul186_o[32:0];

    // bgTrunc_i_sub4_i_31_i_mmul186_sel_x(BITSELECT,290)@50
    assign bgTrunc_i_sub4_i_31_i_mmul186_sel_x_b = $unsigned(i_sub4_i_31_i_mmul186_q[31:0]);

    // redist47_bgTrunc_i_sub4_i_31_i_mmul186_sel_x_b_1(DELAY,607)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist47_bgTrunc_i_sub4_i_31_i_mmul186_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist47_bgTrunc_i_sub4_i_31_i_mmul186_sel_x_b_1_q <= $unsigned(bgTrunc_i_sub4_i_31_i_mmul186_sel_x_b);
        end
    end

    // redist0_i_tobool_i_mmul19_cmp_sign_q_48(DELAY,560)
    dspba_delay_ver #( .width(1), .depth(48), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist0_i_tobool_i_mmul19_cmp_sign_q_48 ( .xin(i_tobool_i_mmul19_cmp_sign_q), .xout(redist0_i_tobool_i_mmul19_cmp_sign_q_48_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_spec_select10_i_mmul188(MUX,175)@51 + 1
    assign i_spec_select10_i_mmul188_s = redist0_i_tobool_i_mmul19_cmp_sign_q_48_q;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_spec_select10_i_mmul188_q <= 32'b0;
        end
        else
        begin
            unique case (i_spec_select10_i_mmul188_s)
                1'b0 : i_spec_select10_i_mmul188_q <= redist47_bgTrunc_i_sub4_i_31_i_mmul186_sel_x_b_1_q;
                1'b1 : i_spec_select10_i_mmul188_q <= bgTrunc_i_add13_i_mmul187_sel_x_b;
                default : i_spec_select10_i_mmul188_q <= 32'b0;
            endcase
        end
    end

    // redist139_i_spec_select10_i_mmul188_q_2(DELAY,699)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist139_i_spec_select10_i_mmul188_q_2_q <= '0;
        end
        else
        begin
            redist139_i_spec_select10_i_mmul188_q_2_q <= $unsigned(i_spec_select10_i_mmul188_q);
        end
    end

    // valid_fanout_reg11(REG,437)@48 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg11_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg11_q <= $unsigned(redist8_sync_together279_aunroll_x_in_i_valid_47_q);
        end
    end

    // i_llvm_fpga_sync_buffer_i32_n_sync_buffer1_mmul198(BLACKBOX,154)@0
    // in in_i_dependence@49
    // in in_valid_in@49
    // out out_buffer_out@49
    // out out_valid_out@49
    mmul_i_llvm_fpga_sync_buffer_i32_n_sync_buffer1_0 thei_llvm_fpga_sync_buffer_i32_n_sync_buffer1_mmul198 (
        .in_buffer_in(in_N),
        .in_i_dependence(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg11_q),
        .out_buffer_out(i_llvm_fpga_sync_buffer_i32_n_sync_buffer1_mmul198_out_buffer_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_mul6_mmul199_bs2_merged_bit_select(BITSELECT,559)@49
    assign i_mul6_mmul199_bs2_merged_bit_select_b = i_llvm_fpga_sync_buffer_i32_n_sync_buffer1_mmul198_out_buffer_out[31:18];
    assign i_mul6_mmul199_bs2_merged_bit_select_c = i_llvm_fpga_sync_buffer_i32_n_sync_buffer1_mmul198_out_buffer_out[17:0];

    // valid_fanout_reg9(REG,435)@48 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg9_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg9_q <= $unsigned(redist8_sync_together279_aunroll_x_in_i_valid_47_q);
        end
    end

    // valid_fanout_reg13(REG,439)@49 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg13_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg13_q <= $unsigned(redist9_sync_together279_aunroll_x_in_i_valid_48_q);
        end
    end

    // redist148_i_llvm_fpga_pipeline_keep_going_mmul6_out_data_out_49(DELAY,708)
    dspba_delay_ver #( .width(1), .depth(48), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist148_i_llvm_fpga_pipeline_keep_going_mmul6_out_data_out_49 ( .xin(redist147_i_llvm_fpga_pipeline_keep_going_mmul6_out_data_out_1_q), .xout(redist148_i_llvm_fpga_pipeline_keep_going_mmul6_out_data_out_49_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // c_i32_1252(CONSTANT,69)
    assign c_i32_1252_q = $unsigned(32'b00000000000000000000000000000001);

    // redist142_i_llvm_fpga_pop_i32_k_024_pop8_mmul192_out_data_out_1(DELAY,702)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist142_i_llvm_fpga_pop_i32_k_024_pop8_mmul192_out_data_out_1_q <= '0;
        end
        else
        begin
            redist142_i_llvm_fpga_pop_i32_k_024_pop8_mmul192_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i32_k_024_pop8_mmul192_out_data_out);
        end
    end

    // i_inc_mmul205(ADD,132)@50
    assign i_inc_mmul205_a = {1'b0, redist142_i_llvm_fpga_pop_i32_k_024_pop8_mmul192_out_data_out_1_q};
    assign i_inc_mmul205_b = {1'b0, c_i32_1252_q};
    assign i_inc_mmul205_o = $unsigned(i_inc_mmul205_a) + $unsigned(i_inc_mmul205_b);
    assign i_inc_mmul205_q = i_inc_mmul205_o[32:0];

    // bgTrunc_i_inc_mmul205_sel_x(BITSELECT,264)@50
    assign bgTrunc_i_inc_mmul205_sel_x_b = i_inc_mmul205_q[31:0];

    // i_llvm_fpga_push_i32_k_024_push8_mmul206(BLACKBOX,151)@50
    // out out_feedback_out_8@20000000
    // out out_feedback_valid_out_8@20000000
    mmul_i_llvm_fpga_push_i32_k_024_push8_0 thei_llvm_fpga_push_i32_k_024_push8_mmul206 (
        .in_data_in(bgTrunc_i_inc_mmul205_sel_x_b),
        .in_feedback_stall_in_8(i_llvm_fpga_pop_i32_k_024_pop8_mmul192_out_feedback_stall_out_8),
        .in_keep_going(redist148_i_llvm_fpga_pipeline_keep_going_mmul6_out_data_out_49_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg13_q),
        .out_data_out(),
        .out_feedback_out_8(i_llvm_fpga_push_i32_k_024_push8_mmul206_out_feedback_out_8),
        .out_feedback_valid_out_8(i_llvm_fpga_push_i32_k_024_push8_mmul206_out_feedback_valid_out_8),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_k_024_pop8_mmul192(BLACKBOX,142)@49
    // out out_feedback_stall_out_8@20000000
    mmul_i_llvm_fpga_pop_i32_k_024_pop8_0 thei_llvm_fpga_pop_i32_k_024_pop8_mmul192 (
        .in_data_in(c_i32_0248_q),
        .in_dir(redist2_sync_together279_aunroll_x_in_c0_eni4_1_tpl_48_q),
        .in_feedback_in_8(i_llvm_fpga_push_i32_k_024_push8_mmul206_out_feedback_out_8),
        .in_feedback_valid_in_8(i_llvm_fpga_push_i32_k_024_push8_mmul206_out_feedback_valid_out_8),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg9_q),
        .out_data_out(i_llvm_fpga_pop_i32_k_024_pop8_mmul192_out_data_out),
        .out_feedback_stall_out_8(i_llvm_fpga_pop_i32_k_024_pop8_mmul192_out_feedback_stall_out_8),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_mul6_mmul199_bs1_merged_bit_select(BITSELECT,558)@49
    assign i_mul6_mmul199_bs1_merged_bit_select_b = i_llvm_fpga_pop_i32_k_024_pop8_mmul192_out_data_out[31:18];
    assign i_mul6_mmul199_bs1_merged_bit_select_c = i_llvm_fpga_pop_i32_k_024_pop8_mmul192_out_data_out[17:0];

    // i_mul6_mmul199_ma3_cma(CHAINMULTADD,557)@49 + 3
    assign i_mul6_mmul199_ma3_cma_reset = ~ (resetn);
    assign i_mul6_mmul199_ma3_cma_ena0 = 1'b1;
    assign i_mul6_mmul199_ma3_cma_ena1 = i_mul6_mmul199_ma3_cma_ena0;
    assign i_mul6_mmul199_ma3_cma_ena2 = i_mul6_mmul199_ma3_cma_ena0;

    assign i_mul6_mmul199_ma3_cma_a0 = i_mul6_mmul199_bs1_merged_bit_select_b;
    assign i_mul6_mmul199_ma3_cma_c0 = i_mul6_mmul199_bs2_merged_bit_select_c;
    assign i_mul6_mmul199_ma3_cma_a1 = i_mul6_mmul199_bs2_merged_bit_select_b;
    assign i_mul6_mmul199_ma3_cma_c1 = i_mul6_mmul199_bs1_merged_bit_select_c;
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
    ) i_mul6_mmul199_ma3_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul6_mmul199_ma3_cma_ena2, i_mul6_mmul199_ma3_cma_ena1, i_mul6_mmul199_ma3_cma_ena0 }),
        .aclr({ i_mul6_mmul199_ma3_cma_reset, i_mul6_mmul199_ma3_cma_reset }),
        .ay(i_mul6_mmul199_ma3_cma_a1),
        .by(i_mul6_mmul199_ma3_cma_a0),
        .ax(i_mul6_mmul199_ma3_cma_c1),
        .bx(i_mul6_mmul199_ma3_cma_c0),
        .resulta(i_mul6_mmul199_ma3_cma_s0),
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
    i_mul6_mmul199_ma3_cma_delay ( .xin(i_mul6_mmul199_ma3_cma_s0), .xout(i_mul6_mmul199_ma3_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul6_mmul199_ma3_cma_q = $unsigned(i_mul6_mmul199_ma3_cma_qq[32:0]);

    // i_mul6_mmul199_sums_align_1(BITSHIFT,504)@52
    assign i_mul6_mmul199_sums_align_1_qint = { i_mul6_mmul199_ma3_cma_q, 18'b000000000000000000 };
    assign i_mul6_mmul199_sums_align_1_q = i_mul6_mmul199_sums_align_1_qint[50:0];

    // i_mul6_mmul199_im0_cma(CHAINMULTADD,555)@49 + 3
    assign i_mul6_mmul199_im0_cma_reset = ~ (resetn);
    assign i_mul6_mmul199_im0_cma_ena0 = 1'b1;
    assign i_mul6_mmul199_im0_cma_ena1 = i_mul6_mmul199_im0_cma_ena0;
    assign i_mul6_mmul199_im0_cma_ena2 = i_mul6_mmul199_im0_cma_ena0;

    assign i_mul6_mmul199_im0_cma_a0 = i_mul6_mmul199_bs1_merged_bit_select_b;
    assign i_mul6_mmul199_im0_cma_c0 = i_mul6_mmul199_bs2_merged_bit_select_b;
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
    ) i_mul6_mmul199_im0_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul6_mmul199_im0_cma_ena2, i_mul6_mmul199_im0_cma_ena1, i_mul6_mmul199_im0_cma_ena0 }),
        .aclr({ i_mul6_mmul199_im0_cma_reset, i_mul6_mmul199_im0_cma_reset }),
        .ay(i_mul6_mmul199_im0_cma_a0),
        .ax(i_mul6_mmul199_im0_cma_c0),
        .resulta(i_mul6_mmul199_im0_cma_s0),
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
    i_mul6_mmul199_im0_cma_delay ( .xin(i_mul6_mmul199_im0_cma_s0), .xout(i_mul6_mmul199_im0_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul6_mmul199_im0_cma_q = $unsigned(i_mul6_mmul199_im0_cma_qq[27:0]);

    // i_mul6_mmul199_im8_cma(CHAINMULTADD,556)@49 + 3
    assign i_mul6_mmul199_im8_cma_reset = ~ (resetn);
    assign i_mul6_mmul199_im8_cma_ena0 = 1'b1;
    assign i_mul6_mmul199_im8_cma_ena1 = i_mul6_mmul199_im8_cma_ena0;
    assign i_mul6_mmul199_im8_cma_ena2 = i_mul6_mmul199_im8_cma_ena0;

    assign i_mul6_mmul199_im8_cma_a0 = i_mul6_mmul199_bs1_merged_bit_select_c;
    assign i_mul6_mmul199_im8_cma_c0 = i_mul6_mmul199_bs2_merged_bit_select_c;
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
    ) i_mul6_mmul199_im8_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul6_mmul199_im8_cma_ena2, i_mul6_mmul199_im8_cma_ena1, i_mul6_mmul199_im8_cma_ena0 }),
        .aclr({ i_mul6_mmul199_im8_cma_reset, i_mul6_mmul199_im8_cma_reset }),
        .ay(i_mul6_mmul199_im8_cma_a0),
        .ax(i_mul6_mmul199_im8_cma_c0),
        .resulta(i_mul6_mmul199_im8_cma_s0),
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
    i_mul6_mmul199_im8_cma_delay ( .xin(i_mul6_mmul199_im8_cma_s0), .xout(i_mul6_mmul199_im8_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul6_mmul199_im8_cma_q = $unsigned(i_mul6_mmul199_im8_cma_qq[35:0]);

    // i_mul6_mmul199_sums_join_0(BITJOIN,503)@52
    assign i_mul6_mmul199_sums_join_0_q = {i_mul6_mmul199_im0_cma_q, i_mul6_mmul199_im8_cma_q};

    // i_mul6_mmul199_sums_result_add_0_0(ADD,506)@52
    assign i_mul6_mmul199_sums_result_add_0_0_a = {1'b0, i_mul6_mmul199_sums_join_0_q};
    assign i_mul6_mmul199_sums_result_add_0_0_b = {14'b00000000000000, i_mul6_mmul199_sums_align_1_q};
    assign i_mul6_mmul199_sums_result_add_0_0_o = $unsigned(i_mul6_mmul199_sums_result_add_0_0_a) + $unsigned(i_mul6_mmul199_sums_result_add_0_0_b);
    assign i_mul6_mmul199_sums_result_add_0_0_q = i_mul6_mmul199_sums_result_add_0_0_o[64:0];

    // bgTrunc_i_mul6_mmul199_sel_x(BITSELECT,266)@52
    assign bgTrunc_i_mul6_mmul199_sel_x_in = i_mul6_mmul199_sums_result_add_0_0_q[63:0];
    assign bgTrunc_i_mul6_mmul199_sel_x_b = bgTrunc_i_mul6_mmul199_sel_x_in[31:0];

    // redist58_bgTrunc_i_mul6_mmul199_sel_x_b_1(DELAY,618)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist58_bgTrunc_i_mul6_mmul199_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist58_bgTrunc_i_mul6_mmul199_sel_x_b_1_q <= $unsigned(bgTrunc_i_mul6_mmul199_sel_x_b);
        end
    end

    // i_add7_mmul200(ADD,77)@53
    assign i_add7_mmul200_a = {1'b0, redist58_bgTrunc_i_mul6_mmul199_sel_x_b_1_q};
    assign i_add7_mmul200_b = {1'b0, redist139_i_spec_select10_i_mmul188_q_2_q};
    assign i_add7_mmul200_o = $unsigned(i_add7_mmul200_a) + $unsigned(i_add7_mmul200_b);
    assign i_add7_mmul200_q = i_add7_mmul200_o[32:0];

    // bgTrunc_i_add7_mmul200_sel_x(BITSELECT,259)@53
    assign bgTrunc_i_add7_mmul200_sel_x_b = i_add7_mmul200_q[31:0];

    // i_idxprom8_mmul201_sel_x(BITSELECT,320)@53
    assign i_idxprom8_mmul201_sel_x_b = $unsigned({{32{bgTrunc_i_add7_mmul200_sel_x_b[31]}}, bgTrunc_i_add7_mmul200_sel_x_b[31:0]});

    // i_arrayidx93_mmul0_narrow_x(BITSELECT,311)@53
    assign i_arrayidx93_mmul0_narrow_x_b = i_idxprom8_mmul201_sel_x_b[61:0];

    // i_arrayidx93_mmul0_shift_join_x(BITJOIN,312)@53
    assign i_arrayidx93_mmul0_shift_join_x_q = {i_arrayidx93_mmul0_narrow_x_b, i_arrayidx2_mmul196_vt_const_1_q};

    // valid_fanout_reg12(REG,438)@52 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg12_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg12_q <= $unsigned(redist10_sync_together279_aunroll_x_in_i_valid_51_q);
        end
    end

    // i_llvm_fpga_sync_buffer_p1024f32_b_sync_buffer_mmul202(BLACKBOX,159)@0
    // in in_i_dependence@53
    // in in_valid_in@53
    // out out_buffer_out@53
    // out out_valid_out@53
    mmul_i_llvm_fpga_sync_buffer_p1024f32_b_sync_buffer_0 thei_llvm_fpga_sync_buffer_p1024f32_b_sync_buffer_mmul202 (
        .in_buffer_in(in_B),
        .in_i_dependence(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg12_q),
        .out_buffer_out(i_llvm_fpga_sync_buffer_p1024f32_b_sync_buffer_mmul202_out_buffer_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_sync_buffer_p1024f32_b_sync_buffer_mmul202_vt_select_63(BITSELECT,162)@53
    assign i_llvm_fpga_sync_buffer_p1024f32_b_sync_buffer_mmul202_vt_select_63_b = i_llvm_fpga_sync_buffer_p1024f32_b_sync_buffer_mmul202_out_buffer_out[63:10];

    // i_llvm_fpga_sync_buffer_p1024f32_a_sync_buffer_mmul195_vt_const_9(CONSTANT,156)
    assign i_llvm_fpga_sync_buffer_p1024f32_a_sync_buffer_mmul195_vt_const_9_q = $unsigned(10'b0000000000);

    // i_llvm_fpga_sync_buffer_p1024f32_b_sync_buffer_mmul202_vt_join(BITJOIN,161)@53
    assign i_llvm_fpga_sync_buffer_p1024f32_b_sync_buffer_mmul202_vt_join_q = {i_llvm_fpga_sync_buffer_p1024f32_b_sync_buffer_mmul202_vt_select_63_b, i_llvm_fpga_sync_buffer_p1024f32_a_sync_buffer_mmul195_vt_const_9_q};

    // i_arrayidx93_mmul0_add_x(ADD,309)@53
    assign i_arrayidx93_mmul0_add_x_a = {1'b0, i_llvm_fpga_sync_buffer_p1024f32_b_sync_buffer_mmul202_vt_join_q};
    assign i_arrayidx93_mmul0_add_x_b = {1'b0, i_arrayidx93_mmul0_shift_join_x_q};
    assign i_arrayidx93_mmul0_add_x_o = $unsigned(i_arrayidx93_mmul0_add_x_a) + $unsigned(i_arrayidx93_mmul0_add_x_b);
    assign i_arrayidx93_mmul0_add_x_q = i_arrayidx93_mmul0_add_x_o[64:0];

    // i_arrayidx93_mmul0_dupName_0_trunc_sel_x(BITSELECT,314)@53
    assign i_arrayidx93_mmul0_dupName_0_trunc_sel_x_b = i_arrayidx93_mmul0_add_x_q[63:0];

    // i_arrayidx93_mmul203_vt_select_63(BITSELECT,86)@53
    assign i_arrayidx93_mmul203_vt_select_63_b = i_arrayidx93_mmul0_dupName_0_trunc_sel_x_b[63:2];

    // i_arrayidx2_mmul196_vt_const_1(CONSTANT,81)
    assign i_arrayidx2_mmul196_vt_const_1_q = $unsigned(2'b00);

    // i_arrayidx93_mmul203_vt_join(BITJOIN,85)@53
    assign i_arrayidx93_mmul203_vt_join_q = {i_arrayidx93_mmul203_vt_select_63_b, i_arrayidx2_mmul196_vt_const_1_q};

    // redist150_i_first_cleanup_xor_mmul4_q_51(DELAY,710)
    dspba_delay_ver #( .width(1), .depth(51), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist150_i_first_cleanup_xor_mmul4_q_51 ( .xin(i_first_cleanup_xor_mmul4_q), .xout(redist150_i_first_cleanup_xor_mmul4_q_51_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // valid_fanout_reg8(REG,434)@52 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg8_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg8_q <= $unsigned(redist10_sync_together279_aunroll_x_in_i_valid_51_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i1_unnamed_mmul11_mmul190(BLACKBOX,134)@53
    mmul_i_llvm_fpga_ffwd_dest_i1_unnamed_11_mmul0 thei_llvm_fpga_ffwd_dest_i1_unnamed_mmul11_mmul190 (
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg8_q),
        .out_dest_data_out_0_0(i_llvm_fpga_ffwd_dest_i1_unnamed_mmul11_mmul190_out_dest_data_out_0_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_mmul191(LOGICAL,229)@53
    assign i_unnamed_mmul191_q = i_llvm_fpga_ffwd_dest_i1_unnamed_mmul11_mmul190_out_dest_data_out_0_0 ^ VCC_q;

    // i_first_cleanup_xor_or_mmul197(LOGICAL,125)@53
    assign i_first_cleanup_xor_or_mmul197_q = i_unnamed_mmul191_q | redist150_i_first_cleanup_xor_mmul4_q_51_q;

    // redist143_i_llvm_fpga_pop_i32_k_024_pop8_mmul192_out_data_out_3(DELAY,703)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist143_i_llvm_fpga_pop_i32_k_024_pop8_mmul192_out_data_out_3_delay_0 <= '0;
            redist143_i_llvm_fpga_pop_i32_k_024_pop8_mmul192_out_data_out_3_q <= '0;
        end
        else
        begin
            redist143_i_llvm_fpga_pop_i32_k_024_pop8_mmul192_out_data_out_3_delay_0 <= $unsigned(redist142_i_llvm_fpga_pop_i32_k_024_pop8_mmul192_out_data_out_1_q);
            redist143_i_llvm_fpga_pop_i32_k_024_pop8_mmul192_out_data_out_3_q <= redist143_i_llvm_fpga_pop_i32_k_024_pop8_mmul192_out_data_out_3_delay_0;
        end
    end

    // redist145_i_llvm_fpga_pop_i32_i_027_pop615_pop14_mmul17_out_data_out_50_notEnable(LOGICAL,718)
    assign redist145_i_llvm_fpga_pop_i32_i_027_pop615_pop14_mmul17_out_data_out_50_notEnable_q = $unsigned(~ (VCC_q));

    // redist145_i_llvm_fpga_pop_i32_i_027_pop615_pop14_mmul17_out_data_out_50_nor(LOGICAL,719)
    assign redist145_i_llvm_fpga_pop_i32_i_027_pop615_pop14_mmul17_out_data_out_50_nor_q = ~ (redist145_i_llvm_fpga_pop_i32_i_027_pop615_pop14_mmul17_out_data_out_50_notEnable_q | redist145_i_llvm_fpga_pop_i32_i_027_pop615_pop14_mmul17_out_data_out_50_sticky_ena_q);

    // redist145_i_llvm_fpga_pop_i32_i_027_pop615_pop14_mmul17_out_data_out_50_mem_last(CONSTANT,715)
    assign redist145_i_llvm_fpga_pop_i32_i_027_pop615_pop14_mmul17_out_data_out_50_mem_last_q = $unsigned(7'b0101101);

    // redist145_i_llvm_fpga_pop_i32_i_027_pop615_pop14_mmul17_out_data_out_50_cmp(LOGICAL,716)
    assign redist145_i_llvm_fpga_pop_i32_i_027_pop615_pop14_mmul17_out_data_out_50_cmp_b = {1'b0, redist145_i_llvm_fpga_pop_i32_i_027_pop615_pop14_mmul17_out_data_out_50_rdcnt_q};
    assign redist145_i_llvm_fpga_pop_i32_i_027_pop615_pop14_mmul17_out_data_out_50_cmp_q = $unsigned(redist145_i_llvm_fpga_pop_i32_i_027_pop615_pop14_mmul17_out_data_out_50_mem_last_q == redist145_i_llvm_fpga_pop_i32_i_027_pop615_pop14_mmul17_out_data_out_50_cmp_b ? 1'b1 : 1'b0);

    // redist145_i_llvm_fpga_pop_i32_i_027_pop615_pop14_mmul17_out_data_out_50_cmpReg(REG,717)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist145_i_llvm_fpga_pop_i32_i_027_pop615_pop14_mmul17_out_data_out_50_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist145_i_llvm_fpga_pop_i32_i_027_pop615_pop14_mmul17_out_data_out_50_cmpReg_q <= $unsigned(redist145_i_llvm_fpga_pop_i32_i_027_pop615_pop14_mmul17_out_data_out_50_cmp_q);
        end
    end

    // redist145_i_llvm_fpga_pop_i32_i_027_pop615_pop14_mmul17_out_data_out_50_sticky_ena(REG,720)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist145_i_llvm_fpga_pop_i32_i_027_pop615_pop14_mmul17_out_data_out_50_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist145_i_llvm_fpga_pop_i32_i_027_pop615_pop14_mmul17_out_data_out_50_nor_q == 1'b1)
        begin
            redist145_i_llvm_fpga_pop_i32_i_027_pop615_pop14_mmul17_out_data_out_50_sticky_ena_q <= $unsigned(redist145_i_llvm_fpga_pop_i32_i_027_pop615_pop14_mmul17_out_data_out_50_cmpReg_q);
        end
    end

    // redist145_i_llvm_fpga_pop_i32_i_027_pop615_pop14_mmul17_out_data_out_50_enaAnd(LOGICAL,721)
    assign redist145_i_llvm_fpga_pop_i32_i_027_pop615_pop14_mmul17_out_data_out_50_enaAnd_q = redist145_i_llvm_fpga_pop_i32_i_027_pop615_pop14_mmul17_out_data_out_50_sticky_ena_q & VCC_q;

    // redist145_i_llvm_fpga_pop_i32_i_027_pop615_pop14_mmul17_out_data_out_50_rdcnt(COUNTER,713)
    // low=0, high=46, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist145_i_llvm_fpga_pop_i32_i_027_pop615_pop14_mmul17_out_data_out_50_rdcnt_i <= 6'd0;
            redist145_i_llvm_fpga_pop_i32_i_027_pop615_pop14_mmul17_out_data_out_50_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist145_i_llvm_fpga_pop_i32_i_027_pop615_pop14_mmul17_out_data_out_50_rdcnt_i == 6'd45)
            begin
                redist145_i_llvm_fpga_pop_i32_i_027_pop615_pop14_mmul17_out_data_out_50_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist145_i_llvm_fpga_pop_i32_i_027_pop615_pop14_mmul17_out_data_out_50_rdcnt_eq <= 1'b0;
            end
            if (redist145_i_llvm_fpga_pop_i32_i_027_pop615_pop14_mmul17_out_data_out_50_rdcnt_eq == 1'b1)
            begin
                redist145_i_llvm_fpga_pop_i32_i_027_pop615_pop14_mmul17_out_data_out_50_rdcnt_i <= $unsigned(redist145_i_llvm_fpga_pop_i32_i_027_pop615_pop14_mmul17_out_data_out_50_rdcnt_i) + $unsigned(6'd18);
            end
            else
            begin
                redist145_i_llvm_fpga_pop_i32_i_027_pop615_pop14_mmul17_out_data_out_50_rdcnt_i <= $unsigned(redist145_i_llvm_fpga_pop_i32_i_027_pop615_pop14_mmul17_out_data_out_50_rdcnt_i) + $unsigned(6'd1);
            end
        end
    end
    assign redist145_i_llvm_fpga_pop_i32_i_027_pop615_pop14_mmul17_out_data_out_50_rdcnt_q = redist145_i_llvm_fpga_pop_i32_i_027_pop615_pop14_mmul17_out_data_out_50_rdcnt_i[5:0];

    // redist145_i_llvm_fpga_pop_i32_i_027_pop615_pop14_mmul17_out_data_out_50_wraddr(REG,714)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist145_i_llvm_fpga_pop_i32_i_027_pop615_pop14_mmul17_out_data_out_50_wraddr_q <= $unsigned(6'b101110);
        end
        else
        begin
            redist145_i_llvm_fpga_pop_i32_i_027_pop615_pop14_mmul17_out_data_out_50_wraddr_q <= $unsigned(redist145_i_llvm_fpga_pop_i32_i_027_pop615_pop14_mmul17_out_data_out_50_rdcnt_q);
        end
    end

    // redist145_i_llvm_fpga_pop_i32_i_027_pop615_pop14_mmul17_out_data_out_50_mem(DUALMEM,712)
    assign redist145_i_llvm_fpga_pop_i32_i_027_pop615_pop14_mmul17_out_data_out_50_mem_ia = $unsigned(redist144_i_llvm_fpga_pop_i32_i_027_pop615_pop14_mmul17_out_data_out_1_q);
    assign redist145_i_llvm_fpga_pop_i32_i_027_pop615_pop14_mmul17_out_data_out_50_mem_aa = redist145_i_llvm_fpga_pop_i32_i_027_pop615_pop14_mmul17_out_data_out_50_wraddr_q;
    assign redist145_i_llvm_fpga_pop_i32_i_027_pop615_pop14_mmul17_out_data_out_50_mem_ab = redist145_i_llvm_fpga_pop_i32_i_027_pop615_pop14_mmul17_out_data_out_50_rdcnt_q;
    assign redist145_i_llvm_fpga_pop_i32_i_027_pop615_pop14_mmul17_out_data_out_50_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("M20K"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(6),
        .numwords_a(47),
        .width_b(32),
        .widthad_b(6),
        .numwords_b(47),
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
    ) redist145_i_llvm_fpga_pop_i32_i_027_pop615_pop14_mmul17_out_data_out_50_mem_dmem (
        .clocken1(redist145_i_llvm_fpga_pop_i32_i_027_pop615_pop14_mmul17_out_data_out_50_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist145_i_llvm_fpga_pop_i32_i_027_pop615_pop14_mmul17_out_data_out_50_mem_reset0),
        .clock1(clock),
        .address_a(redist145_i_llvm_fpga_pop_i32_i_027_pop615_pop14_mmul17_out_data_out_50_mem_aa),
        .data_a(redist145_i_llvm_fpga_pop_i32_i_027_pop615_pop14_mmul17_out_data_out_50_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist145_i_llvm_fpga_pop_i32_i_027_pop615_pop14_mmul17_out_data_out_50_mem_ab),
        .q_b(redist145_i_llvm_fpga_pop_i32_i_027_pop615_pop14_mmul17_out_data_out_50_mem_iq),
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
    assign redist145_i_llvm_fpga_pop_i32_i_027_pop615_pop14_mmul17_out_data_out_50_mem_q = redist145_i_llvm_fpga_pop_i32_i_027_pop615_pop14_mmul17_out_data_out_50_mem_iq[31:0];

    // redist145_i_llvm_fpga_pop_i32_i_027_pop615_pop14_mmul17_out_data_out_50_outputreg0(DELAY,711)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist145_i_llvm_fpga_pop_i32_i_027_pop615_pop14_mmul17_out_data_out_50_outputreg0_q <= '0;
        end
        else
        begin
            redist145_i_llvm_fpga_pop_i32_i_027_pop615_pop14_mmul17_out_data_out_50_outputreg0_q <= $unsigned(redist145_i_llvm_fpga_pop_i32_i_027_pop615_pop14_mmul17_out_data_out_50_mem_q);
        end
    end

    // i_mul5_mmul189(SUB,164)@52
    assign i_mul5_mmul189_a = {1'b0, redist145_i_llvm_fpga_pop_i32_i_027_pop615_pop14_mmul17_out_data_out_50_outputreg0_q};
    assign i_mul5_mmul189_b = {1'b0, i_spec_select10_i_mmul188_q};
    assign i_mul5_mmul189_o = $unsigned(i_mul5_mmul189_a) - $unsigned(i_mul5_mmul189_b);
    assign i_mul5_mmul189_q = i_mul5_mmul189_o[32:0];

    // bgTrunc_i_mul5_mmul189_sel_x(BITSELECT,265)@52
    assign bgTrunc_i_mul5_mmul189_sel_x_b = $unsigned(i_mul5_mmul189_q[31:0]);

    // i_add_mmul193(ADD,80)@52
    assign i_add_mmul193_a = {1'b0, bgTrunc_i_mul5_mmul189_sel_x_b};
    assign i_add_mmul193_b = {1'b0, redist143_i_llvm_fpga_pop_i32_k_024_pop8_mmul192_out_data_out_3_q};
    assign i_add_mmul193_o = $unsigned(i_add_mmul193_a) + $unsigned(i_add_mmul193_b);
    assign i_add_mmul193_q = i_add_mmul193_o[32:0];

    // bgTrunc_i_add_mmul193_sel_x(BITSELECT,262)@52
    assign bgTrunc_i_add_mmul193_sel_x_b = i_add_mmul193_q[31:0];

    // redist59_bgTrunc_i_add_mmul193_sel_x_b_1(DELAY,619)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist59_bgTrunc_i_add_mmul193_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist59_bgTrunc_i_add_mmul193_sel_x_b_1_q <= $unsigned(bgTrunc_i_add_mmul193_sel_x_b);
        end
    end

    // i_idxprom_mmul194_sel_x(BITSELECT,321)@53
    assign i_idxprom_mmul194_sel_x_b = $unsigned({{32{redist59_bgTrunc_i_add_mmul193_sel_x_b_1_q[31]}}, redist59_bgTrunc_i_add_mmul193_sel_x_b_1_q[31:0]});

    // i_arrayidx2_mmul0_narrow_x(BITSELECT,305)@53
    assign i_arrayidx2_mmul0_narrow_x_b = i_idxprom_mmul194_sel_x_b[61:0];

    // i_arrayidx2_mmul0_shift_join_x(BITJOIN,306)@53
    assign i_arrayidx2_mmul0_shift_join_x_q = {i_arrayidx2_mmul0_narrow_x_b, i_arrayidx2_mmul196_vt_const_1_q};

    // valid_fanout_reg10(REG,436)@52 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg10_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg10_q <= $unsigned(redist10_sync_together279_aunroll_x_in_i_valid_51_q);
        end
    end

    // i_llvm_fpga_sync_buffer_p1024f32_a_sync_buffer_mmul195(BLACKBOX,155)@0
    // in in_i_dependence@53
    // in in_valid_in@53
    // out out_buffer_out@53
    // out out_valid_out@53
    mmul_i_llvm_fpga_sync_buffer_p1024f32_a_sync_buffer_0 thei_llvm_fpga_sync_buffer_p1024f32_a_sync_buffer_mmul195 (
        .in_buffer_in(in_A),
        .in_i_dependence(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg10_q),
        .out_buffer_out(i_llvm_fpga_sync_buffer_p1024f32_a_sync_buffer_mmul195_out_buffer_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_sync_buffer_p1024f32_a_sync_buffer_mmul195_vt_select_63(BITSELECT,158)@53
    assign i_llvm_fpga_sync_buffer_p1024f32_a_sync_buffer_mmul195_vt_select_63_b = i_llvm_fpga_sync_buffer_p1024f32_a_sync_buffer_mmul195_out_buffer_out[63:10];

    // i_llvm_fpga_sync_buffer_p1024f32_a_sync_buffer_mmul195_vt_join(BITJOIN,157)@53
    assign i_llvm_fpga_sync_buffer_p1024f32_a_sync_buffer_mmul195_vt_join_q = {i_llvm_fpga_sync_buffer_p1024f32_a_sync_buffer_mmul195_vt_select_63_b, i_llvm_fpga_sync_buffer_p1024f32_a_sync_buffer_mmul195_vt_const_9_q};

    // i_arrayidx2_mmul0_add_x(ADD,303)@53
    assign i_arrayidx2_mmul0_add_x_a = {1'b0, i_llvm_fpga_sync_buffer_p1024f32_a_sync_buffer_mmul195_vt_join_q};
    assign i_arrayidx2_mmul0_add_x_b = {1'b0, i_arrayidx2_mmul0_shift_join_x_q};
    assign i_arrayidx2_mmul0_add_x_o = $unsigned(i_arrayidx2_mmul0_add_x_a) + $unsigned(i_arrayidx2_mmul0_add_x_b);
    assign i_arrayidx2_mmul0_add_x_q = i_arrayidx2_mmul0_add_x_o[64:0];

    // i_arrayidx2_mmul0_dupName_0_trunc_sel_x(BITSELECT,308)@53
    assign i_arrayidx2_mmul0_dupName_0_trunc_sel_x_b = i_arrayidx2_mmul0_add_x_q[63:0];

    // i_arrayidx2_mmul196_vt_select_63(BITSELECT,83)@53
    assign i_arrayidx2_mmul196_vt_select_63_b = i_arrayidx2_mmul0_dupName_0_trunc_sel_x_b[63:2];

    // i_arrayidx2_mmul196_vt_join(BITJOIN,82)@53
    assign i_arrayidx2_mmul196_vt_join_q = {i_arrayidx2_mmul196_vt_select_63_b, i_arrayidx2_mmul196_vt_const_1_q};

    // redist146_i_llvm_fpga_pop_i32_i_027_pop615_pop14_mmul17_out_data_out_51(DELAY,706)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist146_i_llvm_fpga_pop_i32_i_027_pop615_pop14_mmul17_out_data_out_51_q <= '0;
        end
        else
        begin
            redist146_i_llvm_fpga_pop_i32_i_027_pop615_pop14_mmul17_out_data_out_51_q <= $unsigned(redist145_i_llvm_fpga_pop_i32_i_027_pop615_pop14_mmul17_out_data_out_50_outputreg0_q);
        end
    end

    // redist149_i_llvm_fpga_pipeline_keep_going_mmul6_out_data_out_52(DELAY,709)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist149_i_llvm_fpga_pipeline_keep_going_mmul6_out_data_out_52_delay_0 <= '0;
            redist149_i_llvm_fpga_pipeline_keep_going_mmul6_out_data_out_52_delay_1 <= '0;
            redist149_i_llvm_fpga_pipeline_keep_going_mmul6_out_data_out_52_q <= '0;
        end
        else
        begin
            redist149_i_llvm_fpga_pipeline_keep_going_mmul6_out_data_out_52_delay_0 <= $unsigned(redist148_i_llvm_fpga_pipeline_keep_going_mmul6_out_data_out_49_q);
            redist149_i_llvm_fpga_pipeline_keep_going_mmul6_out_data_out_52_delay_1 <= redist149_i_llvm_fpga_pipeline_keep_going_mmul6_out_data_out_52_delay_0;
            redist149_i_llvm_fpga_pipeline_keep_going_mmul6_out_data_out_52_q <= redist149_i_llvm_fpga_pipeline_keep_going_mmul6_out_data_out_52_delay_1;
        end
    end

    // sync_out_aunroll_x(GPOUT,424)@53
    assign out_c0_exi9_0_tpl = GND_q;
    assign out_c0_exi9_1_tpl = redist149_i_llvm_fpga_pipeline_keep_going_mmul6_out_data_out_52_q;
    assign out_c0_exi9_2_tpl = redist146_i_llvm_fpga_pop_i32_i_027_pop615_pop14_mmul17_out_data_out_51_q;
    assign out_c0_exi9_3_tpl = i_arrayidx2_mmul196_vt_join_q;
    assign out_c0_exi9_4_tpl = i_first_cleanup_xor_or_mmul197_q;
    assign out_c0_exi9_5_tpl = i_arrayidx93_mmul203_vt_join_q;
    assign out_c0_exi9_6_tpl = i_acc_control_signal_mmul204_q;
    assign out_c0_exi9_7_tpl = redist141_i_masked_mmul218_q_51_q;
    assign out_c0_exi9_8_tpl = i_llvm_fpga_pop_i1_notcmp914_pop13_mmul219_out_data_out;
    assign out_c0_exi9_9_tpl = redist3_sync_together279_aunroll_x_in_c0_eni4_1_tpl_52_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_mmul6 = GND_q;

endmodule
