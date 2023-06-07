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

// SystemVerilog created from conv2d1x1_i_sfc_logic_s_c0_in_for_body_s_c0_enter8_conv2d1x10
// SystemVerilog created on Tue Jun  6 18:48:20 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2d1x1_i_sfc_logic_s_c0_in_for_body_s_c0_enter8_conv2d1x10 (
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going23_conv2d1x12_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going23_conv2d1x12_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [63:0] in_filter_bias,
    input wire [31:0] in_input_channels,
    input wire [0:0] in_intel_reserved_ffwd_0_0,
    input wire [31:0] in_intel_reserved_ffwd_1_0,
    input wire [0:0] in_intel_reserved_ffwd_2_0,
    input wire [32:0] in_intel_reserved_ffwd_4_0,
    output wire [0:0] out_c0_exi10_0_tpl,
    output wire [0:0] out_c0_exi10_1_tpl,
    output wire [31:0] out_c0_exi10_2_tpl,
    output wire [0:0] out_c0_exi10_3_tpl,
    output wire [0:0] out_c0_exi10_4_tpl,
    output wire [32:0] out_c0_exi10_5_tpl,
    output wire [63:0] out_c0_exi10_6_tpl,
    output wire [31:0] out_c0_exi10_7_tpl,
    output wire [31:0] out_c0_exi10_8_tpl,
    output wire [0:0] out_c0_exi10_9_tpl,
    output wire [0:0] out_c0_exi10_10_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_conv2d1x16,
    input wire [0:0] in_c0_eni1_0_tpl,
    input wire [0:0] in_c0_eni1_1_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] c_i32_058_q;
    wire [31:0] c_i32_159_q;
    wire [31:0] c_i32_160_q;
    wire [32:0] c_i33_161_q;
    wire [32:0] c_i33_undef57_q;
    wire [1:0] i_arrayidx1_conv2d1x126_vt_const_1_q;
    wire [63:0] i_arrayidx1_conv2d1x126_vt_join_q;
    wire [61:0] i_arrayidx1_conv2d1x126_vt_select_63_b;
    wire [0:0] i_cmp227_conv2d1x111_q;
    wire [0:0] i_fpga_indvars_iv40_replace_phi_conv2d1x15_s;
    reg [32:0] i_fpga_indvars_iv40_replace_phi_conv2d1x15_q;
    wire [33:0] i_fpga_indvars_iv_next41_conv2d1x136_a;
    wire [33:0] i_fpga_indvars_iv_next41_conv2d1x136_b;
    logic [33:0] i_fpga_indvars_iv_next41_conv2d1x136_o;
    wire [33:0] i_fpga_indvars_iv_next41_conv2d1x136_q;
    wire [63:0] i_idxprom_conv2d1x124_vt_join_q;
    wire [31:0] i_idxprom_conv2d1x124_vt_select_31_b;
    wire [32:0] i_inc31_conv2d1x138_a;
    wire [32:0] i_inc31_conv2d1x138_b;
    logic [32:0] i_inc31_conv2d1x138_o;
    wire [32:0] i_inc31_conv2d1x138_q;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp306_conv2d1x16_out_dest_data_out_0_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp308_conv2d1x132_out_dest_data_out_0_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp309_conv2d1x113_out_dest_data_out_0_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp62414_conv2d1x115_out_dest_data_out_2_0;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_input_size_sync_buffer12_conv2d1x18_out_dest_data_out_1_0;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_input_size_sync_buffer13_conv2d1x19_out_dest_data_out_1_0;
    wire [32:0] i_llvm_fpga_ffwd_dest_i33_unnamed_conv2d1x15_conv2d1x13_out_dest_data_out_4_0;
    wire [0:0] i_llvm_fpga_pipeline_keep_going23_conv2d1x12_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going23_conv2d1x12_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going23_conv2d1x12_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going23_conv2d1x12_out_pipeline_valid_out;
    wire [31:0] i_llvm_fpga_pop_i32_f_i_031_pop8_conv2d1x123_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_f_i_031_pop8_conv2d1x123_out_feedback_stall_out_8;
    wire [32:0] i_llvm_fpga_pop_i33_fpga_indvars_iv40_pop7_conv2d1x14_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i33_fpga_indvars_iv40_pop7_conv2d1x14_out_feedback_stall_out_7;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond24_conv2d1x135_out_feedback_out_6;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond24_conv2d1x135_out_feedback_valid_out_6;
    wire [31:0] i_llvm_fpga_push_i32_f_i_031_push8_conv2d1x139_out_feedback_out_8;
    wire [0:0] i_llvm_fpga_push_i32_f_i_031_push8_conv2d1x139_out_feedback_valid_out_8;
    wire [63:0] i_llvm_fpga_push_i33_fpga_indvars_iv40_push7_conv2d1x137_out_feedback_out_7;
    wire [0:0] i_llvm_fpga_push_i33_fpga_indvars_iv40_push7_conv2d1x137_out_feedback_valid_out_7;
    wire [31:0] i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer1_conv2d1x127_out_buffer_out;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024f32_filter_bias_sync_buffer_conv2d1x125_out_buffer_out;
    wire [9:0] i_llvm_fpga_sync_buffer_p1024f32_filter_bias_sync_buffer_conv2d1x125_vt_const_9_q;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024f32_filter_bias_sync_buffer_conv2d1x125_vt_join_q;
    wire [53:0] i_llvm_fpga_sync_buffer_p1024f32_filter_bias_sync_buffer_conv2d1x125_vt_select_63_b;
    wire [0:0] i_notcmp22_conv2d1x134_q;
    wire [0:0] i_umax_conv2d1x119_s;
    reg [31:0] i_umax_conv2d1x119_q;
    wire [0:0] i_unnamed_conv2d1x114_q;
    wire [0:0] i_unnamed_conv2d1x116_q;
    wire [0:0] i_unnamed_conv2d1x117_q;
    wire [33:0] i_unnamed_conv2d1x118_a;
    wire [33:0] i_unnamed_conv2d1x118_b;
    logic [33:0] i_unnamed_conv2d1x118_o;
    wire [0:0] i_unnamed_conv2d1x118_c;
    wire [32:0] i_unnamed_conv2d1x120_a;
    wire [32:0] i_unnamed_conv2d1x120_b;
    logic [32:0] i_unnamed_conv2d1x120_o;
    wire [32:0] i_unnamed_conv2d1x120_q;
    wire [32:0] i_unnamed_conv2d1x121_vt_join_q;
    wire [31:0] i_unnamed_conv2d1x121_vt_select_31_b;
    wire [33:0] i_unnamed_conv2d1x122_a;
    wire [33:0] i_unnamed_conv2d1x122_b;
    logic [33:0] i_unnamed_conv2d1x122_o;
    wire [33:0] i_unnamed_conv2d1x122_q;
    wire [0:0] i_unnamed_conv2d1x133_q;
    wire [0:0] i_unnamed_conv2d1x17_q;
    wire [32:0] bgTrunc_i_fpga_indvars_iv_next41_conv2d1x136_sel_x_b;
    wire [31:0] bgTrunc_i_inc31_conv2d1x138_sel_x_b;
    wire [63:0] bgTrunc_i_mul13_conv2d1x128_sel_x_in;
    wire [31:0] bgTrunc_i_mul13_conv2d1x128_sel_x_b;
    wire [63:0] bgTrunc_i_mul23_conv2d1x129_sel_x_in;
    wire [31:0] bgTrunc_i_mul23_conv2d1x129_sel_x_b;
    wire [63:0] bgTrunc_i_mul_conv2d1x110_sel_x_in;
    wire [31:0] bgTrunc_i_mul_conv2d1x110_sel_x_b;
    wire [31:0] bgTrunc_i_unnamed_conv2d1x120_sel_x_b;
    wire [32:0] bgTrunc_i_unnamed_conv2d1x122_sel_x_b;
    wire [64:0] i_arrayidx1_conv2d1x10_add_x_a;
    wire [64:0] i_arrayidx1_conv2d1x10_add_x_b;
    logic [64:0] i_arrayidx1_conv2d1x10_add_x_o;
    wire [64:0] i_arrayidx1_conv2d1x10_add_x_q;
    wire [61:0] i_arrayidx1_conv2d1x10_narrow_x_b;
    wire [63:0] i_arrayidx1_conv2d1x10_shift_join_x_q;
    wire [63:0] i_arrayidx1_conv2d1x10_dupName_0_trunc_sel_x_b;
    wire [63:0] i_idxprom_conv2d1x124_sel_x_b;
    wire [32:0] i_unnamed_conv2d1x121_sel_x_b;
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
    wire [0:0] i_exitcond42_conv2d1x130_cmp_nsign_q;
    wire [13:0] i_mul13_conv2d1x128_bs1_b;
    wire [17:0] i_mul13_conv2d1x128_bs4_in;
    wire [17:0] i_mul13_conv2d1x128_bs4_b;
    wire [63:0] i_mul13_conv2d1x128_sums_join_0_q;
    wire [50:0] i_mul13_conv2d1x128_sums_align_1_q;
    wire [50:0] i_mul13_conv2d1x128_sums_align_1_qint;
    wire [64:0] i_mul13_conv2d1x128_sums_result_add_0_0_a;
    wire [64:0] i_mul13_conv2d1x128_sums_result_add_0_0_b;
    logic [64:0] i_mul13_conv2d1x128_sums_result_add_0_0_o;
    wire [64:0] i_mul13_conv2d1x128_sums_result_add_0_0_q;
    wire [63:0] i_mul23_conv2d1x129_sums_join_0_q;
    wire [50:0] i_mul23_conv2d1x129_sums_align_1_q;
    wire [50:0] i_mul23_conv2d1x129_sums_align_1_qint;
    wire [64:0] i_mul23_conv2d1x129_sums_result_add_0_0_a;
    wire [64:0] i_mul23_conv2d1x129_sums_result_add_0_0_b;
    logic [64:0] i_mul23_conv2d1x129_sums_result_add_0_0_o;
    wire [64:0] i_mul23_conv2d1x129_sums_result_add_0_0_q;
    wire [63:0] i_mul_conv2d1x110_sums_join_0_q;
    wire [50:0] i_mul_conv2d1x110_sums_align_1_q;
    wire [50:0] i_mul_conv2d1x110_sums_align_1_qint;
    wire [64:0] i_mul_conv2d1x110_sums_result_add_0_0_a;
    wire [64:0] i_mul_conv2d1x110_sums_result_add_0_0_b;
    logic [64:0] i_mul_conv2d1x110_sums_result_add_0_0_o;
    wire [64:0] i_mul_conv2d1x110_sums_result_add_0_0_q;
    wire i_mul13_conv2d1x128_im0_cma_reset;
    wire [13:0] i_mul13_conv2d1x128_im0_cma_a0;
    wire [13:0] i_mul13_conv2d1x128_im0_cma_c0;
    wire [27:0] i_mul13_conv2d1x128_im0_cma_s0;
    wire [27:0] i_mul13_conv2d1x128_im0_cma_qq;
    wire [27:0] i_mul13_conv2d1x128_im0_cma_q;
    wire i_mul13_conv2d1x128_im0_cma_ena0;
    wire i_mul13_conv2d1x128_im0_cma_ena1;
    wire i_mul13_conv2d1x128_im0_cma_ena2;
    wire i_mul13_conv2d1x128_im8_cma_reset;
    wire [17:0] i_mul13_conv2d1x128_im8_cma_a0;
    wire [17:0] i_mul13_conv2d1x128_im8_cma_c0;
    wire [35:0] i_mul13_conv2d1x128_im8_cma_s0;
    wire [35:0] i_mul13_conv2d1x128_im8_cma_qq;
    wire [35:0] i_mul13_conv2d1x128_im8_cma_q;
    wire i_mul13_conv2d1x128_im8_cma_ena0;
    wire i_mul13_conv2d1x128_im8_cma_ena1;
    wire i_mul13_conv2d1x128_im8_cma_ena2;
    wire i_mul23_conv2d1x129_im0_cma_reset;
    wire [13:0] i_mul23_conv2d1x129_im0_cma_a0;
    wire [13:0] i_mul23_conv2d1x129_im0_cma_c0;
    wire [27:0] i_mul23_conv2d1x129_im0_cma_s0;
    wire [27:0] i_mul23_conv2d1x129_im0_cma_qq;
    wire [27:0] i_mul23_conv2d1x129_im0_cma_q;
    wire i_mul23_conv2d1x129_im0_cma_ena0;
    wire i_mul23_conv2d1x129_im0_cma_ena1;
    wire i_mul23_conv2d1x129_im0_cma_ena2;
    wire i_mul23_conv2d1x129_im8_cma_reset;
    wire [17:0] i_mul23_conv2d1x129_im8_cma_a0;
    wire [17:0] i_mul23_conv2d1x129_im8_cma_c0;
    wire [35:0] i_mul23_conv2d1x129_im8_cma_s0;
    wire [35:0] i_mul23_conv2d1x129_im8_cma_qq;
    wire [35:0] i_mul23_conv2d1x129_im8_cma_q;
    wire i_mul23_conv2d1x129_im8_cma_ena0;
    wire i_mul23_conv2d1x129_im8_cma_ena1;
    wire i_mul23_conv2d1x129_im8_cma_ena2;
    wire i_mul_conv2d1x110_im0_cma_reset;
    wire [13:0] i_mul_conv2d1x110_im0_cma_a0;
    wire [13:0] i_mul_conv2d1x110_im0_cma_c0;
    wire [27:0] i_mul_conv2d1x110_im0_cma_s0;
    wire [27:0] i_mul_conv2d1x110_im0_cma_qq;
    wire [27:0] i_mul_conv2d1x110_im0_cma_q;
    wire i_mul_conv2d1x110_im0_cma_ena0;
    wire i_mul_conv2d1x110_im0_cma_ena1;
    wire i_mul_conv2d1x110_im0_cma_ena2;
    wire i_mul_conv2d1x110_im8_cma_reset;
    wire [17:0] i_mul_conv2d1x110_im8_cma_a0;
    wire [17:0] i_mul_conv2d1x110_im8_cma_c0;
    wire [35:0] i_mul_conv2d1x110_im8_cma_s0;
    wire [35:0] i_mul_conv2d1x110_im8_cma_qq;
    wire [35:0] i_mul_conv2d1x110_im8_cma_q;
    wire i_mul_conv2d1x110_im8_cma_ena0;
    wire i_mul_conv2d1x110_im8_cma_ena1;
    wire i_mul_conv2d1x110_im8_cma_ena2;
    wire i_mul13_conv2d1x128_ma3_cma_reset;
    wire [13:0] i_mul13_conv2d1x128_ma3_cma_a0;
    wire [17:0] i_mul13_conv2d1x128_ma3_cma_c0;
    wire [13:0] i_mul13_conv2d1x128_ma3_cma_a1;
    wire [17:0] i_mul13_conv2d1x128_ma3_cma_c1;
    wire [32:0] i_mul13_conv2d1x128_ma3_cma_s0;
    wire [32:0] i_mul13_conv2d1x128_ma3_cma_qq;
    wire [32:0] i_mul13_conv2d1x128_ma3_cma_q;
    wire i_mul13_conv2d1x128_ma3_cma_ena0;
    wire i_mul13_conv2d1x128_ma3_cma_ena1;
    wire i_mul13_conv2d1x128_ma3_cma_ena2;
    wire i_mul23_conv2d1x129_ma3_cma_reset;
    wire [13:0] i_mul23_conv2d1x129_ma3_cma_a0;
    wire [17:0] i_mul23_conv2d1x129_ma3_cma_c0;
    wire [13:0] i_mul23_conv2d1x129_ma3_cma_a1;
    wire [17:0] i_mul23_conv2d1x129_ma3_cma_c1;
    wire [32:0] i_mul23_conv2d1x129_ma3_cma_s0;
    wire [32:0] i_mul23_conv2d1x129_ma3_cma_qq;
    wire [32:0] i_mul23_conv2d1x129_ma3_cma_q;
    wire i_mul23_conv2d1x129_ma3_cma_ena0;
    wire i_mul23_conv2d1x129_ma3_cma_ena1;
    wire i_mul23_conv2d1x129_ma3_cma_ena2;
    wire i_mul_conv2d1x110_ma3_cma_reset;
    wire [13:0] i_mul_conv2d1x110_ma3_cma_a0;
    wire [17:0] i_mul_conv2d1x110_ma3_cma_c0;
    wire [13:0] i_mul_conv2d1x110_ma3_cma_a1;
    wire [17:0] i_mul_conv2d1x110_ma3_cma_c1;
    wire [32:0] i_mul_conv2d1x110_ma3_cma_s0;
    wire [32:0] i_mul_conv2d1x110_ma3_cma_qq;
    wire [32:0] i_mul_conv2d1x110_ma3_cma_q;
    wire i_mul_conv2d1x110_ma3_cma_ena0;
    wire i_mul_conv2d1x110_ma3_cma_ena1;
    wire i_mul_conv2d1x110_ma3_cma_ena2;
    wire [13:0] i_mul_conv2d1x110_bs1_merged_bit_select_b;
    wire [17:0] i_mul_conv2d1x110_bs1_merged_bit_select_c;
    wire [13:0] i_mul_conv2d1x110_bs2_merged_bit_select_b;
    wire [17:0] i_mul_conv2d1x110_bs2_merged_bit_select_c;
    wire [13:0] i_mul13_conv2d1x128_bs2_merged_bit_select_b;
    wire [17:0] i_mul13_conv2d1x128_bs2_merged_bit_select_c;
    wire [13:0] i_mul23_conv2d1x129_bs2_merged_bit_select_b;
    wire [17:0] i_mul23_conv2d1x129_bs2_merged_bit_select_c;
    reg [0:0] redist0_sync_together78_aunroll_x_in_c0_eni1_1_tpl_4_q;
    reg [0:0] redist0_sync_together78_aunroll_x_in_c0_eni1_1_tpl_4_delay_0;
    reg [0:0] redist0_sync_together78_aunroll_x_in_c0_eni1_1_tpl_4_delay_1;
    reg [0:0] redist0_sync_together78_aunroll_x_in_c0_eni1_1_tpl_4_delay_2;
    reg [0:0] redist1_sync_together78_aunroll_x_in_i_valid_3_q;
    reg [0:0] redist1_sync_together78_aunroll_x_in_i_valid_3_delay_0;
    reg [0:0] redist1_sync_together78_aunroll_x_in_i_valid_3_delay_1;
    reg [0:0] redist2_sync_together78_aunroll_x_in_i_valid_4_q;
    reg [0:0] redist3_sync_together78_aunroll_x_in_i_valid_6_q;
    reg [0:0] redist3_sync_together78_aunroll_x_in_i_valid_6_delay_0;
    reg [31:0] redist4_bgTrunc_i_mul_conv2d1x110_sel_x_b_2_q;
    reg [31:0] redist4_bgTrunc_i_mul_conv2d1x110_sel_x_b_2_delay_0;
    reg [31:0] redist5_bgTrunc_i_mul_conv2d1x110_sel_x_b_3_q;
    reg [0:0] redist6_i_unnamed_conv2d1x133_q_5_q;
    reg [0:0] redist6_i_unnamed_conv2d1x133_q_5_delay_0;
    reg [0:0] redist6_i_unnamed_conv2d1x133_q_5_delay_1;
    reg [0:0] redist6_i_unnamed_conv2d1x133_q_5_delay_2;
    reg [0:0] redist6_i_unnamed_conv2d1x133_q_5_delay_3;
    reg [0:0] redist7_i_unnamed_conv2d1x133_q_7_q;
    reg [0:0] redist7_i_unnamed_conv2d1x133_q_7_delay_0;
    reg [31:0] redist8_i_llvm_fpga_pop_i32_f_i_031_pop8_conv2d1x123_out_data_out_1_q;
    reg [31:0] redist9_i_idxprom_conv2d1x124_vt_select_31_b_2_q;
    reg [31:0] redist9_i_idxprom_conv2d1x124_vt_select_31_b_2_delay_0;


    // i_llvm_fpga_ffwd_dest_i33_unnamed_conv2d1x15_conv2d1x13(BLACKBOX,51)@1
    conv2d1x1_i_llvm_fpga_ffwd_dest_i33_unnamed_5_conv2d1x10 thei_llvm_fpga_ffwd_dest_i33_unnamed_conv2d1x15_conv2d1x13 (
        .in_intel_reserved_ffwd_4_0(in_intel_reserved_ffwd_4_0),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_dest_data_out_4_0(i_llvm_fpga_ffwd_dest_i33_unnamed_conv2d1x15_conv2d1x13_out_dest_data_out_4_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i33_161(CONSTANT,30)
    assign c_i33_161_q = $unsigned(33'b111111111111111111111111111111111);

    // i_fpga_indvars_iv_next41_conv2d1x136(ADD,39)@1
    assign i_fpga_indvars_iv_next41_conv2d1x136_a = {1'b0, i_fpga_indvars_iv40_replace_phi_conv2d1x15_q};
    assign i_fpga_indvars_iv_next41_conv2d1x136_b = {1'b0, c_i33_161_q};
    assign i_fpga_indvars_iv_next41_conv2d1x136_o = $unsigned(i_fpga_indvars_iv_next41_conv2d1x136_a) + $unsigned(i_fpga_indvars_iv_next41_conv2d1x136_b);
    assign i_fpga_indvars_iv_next41_conv2d1x136_q = i_fpga_indvars_iv_next41_conv2d1x136_o[33:0];

    // bgTrunc_i_fpga_indvars_iv_next41_conv2d1x136_sel_x(BITSELECT,91)@1
    assign bgTrunc_i_fpga_indvars_iv_next41_conv2d1x136_sel_x_b = i_fpga_indvars_iv_next41_conv2d1x136_q[32:0];

    // i_llvm_fpga_push_i33_fpga_indvars_iv40_push7_conv2d1x137(BLACKBOX,57)@1
    // out out_feedback_out_7@20000000
    // out out_feedback_valid_out_7@20000000
    conv2d1x1_i_llvm_fpga_push_i33_fpga_indvars_iv40_push7_0 thei_llvm_fpga_push_i33_fpga_indvars_iv40_push7_conv2d1x137 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next41_conv2d1x136_sel_x_b),
        .in_feedback_stall_in_7(i_llvm_fpga_pop_i33_fpga_indvars_iv40_pop7_conv2d1x14_out_feedback_stall_out_7),
        .in_stall_in(GND_q),
        .in_unnamed_conv2d1x115(i_unnamed_conv2d1x133_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_feedback_out_7(i_llvm_fpga_push_i33_fpga_indvars_iv40_push7_conv2d1x137_out_feedback_out_7),
        .out_feedback_valid_out_7(i_llvm_fpga_push_i33_fpga_indvars_iv40_push7_conv2d1x137_out_feedback_valid_out_7),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i33_undef57(CONSTANT,31)
    assign c_i33_undef57_q = $unsigned(33'b000000000000000000000000000000000);

    // i_llvm_fpga_pop_i33_fpga_indvars_iv40_pop7_conv2d1x14(BLACKBOX,54)@1
    // out out_feedback_stall_out_7@20000000
    conv2d1x1_i_llvm_fpga_pop_i33_fpga_indvars_iv40_pop7_0 thei_llvm_fpga_pop_i33_fpga_indvars_iv40_pop7_conv2d1x14 (
        .in_data_in(c_i33_undef57_q),
        .in_dir(in_c0_eni1_1_tpl),
        .in_feedback_in_7(i_llvm_fpga_push_i33_fpga_indvars_iv40_push7_conv2d1x137_out_feedback_out_7),
        .in_feedback_valid_in_7(i_llvm_fpga_push_i33_fpga_indvars_iv40_push7_conv2d1x137_out_feedback_valid_out_7),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(i_llvm_fpga_pop_i33_fpga_indvars_iv40_pop7_conv2d1x14_out_data_out),
        .out_feedback_stall_out_7(i_llvm_fpga_pop_i33_fpga_indvars_iv40_pop7_conv2d1x14_out_feedback_stall_out_7),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_fpga_indvars_iv40_replace_phi_conv2d1x15(MUX,38)@1
    assign i_fpga_indvars_iv40_replace_phi_conv2d1x15_s = in_c0_eni1_1_tpl;
    always @(i_fpga_indvars_iv40_replace_phi_conv2d1x15_s or i_llvm_fpga_pop_i33_fpga_indvars_iv40_pop7_conv2d1x14_out_data_out or i_llvm_fpga_ffwd_dest_i33_unnamed_conv2d1x15_conv2d1x13_out_dest_data_out_4_0)
    begin
        unique case (i_fpga_indvars_iv40_replace_phi_conv2d1x15_s)
            1'b0 : i_fpga_indvars_iv40_replace_phi_conv2d1x15_q = i_llvm_fpga_pop_i33_fpga_indvars_iv40_pop7_conv2d1x14_out_data_out;
            1'b1 : i_fpga_indvars_iv40_replace_phi_conv2d1x15_q = i_llvm_fpga_ffwd_dest_i33_unnamed_conv2d1x15_conv2d1x13_out_dest_data_out_4_0;
            default : i_fpga_indvars_iv40_replace_phi_conv2d1x15_q = 33'b0;
        endcase
    end

    // i_exitcond42_conv2d1x130_cmp_nsign(LOGICAL,130)@1
    assign i_exitcond42_conv2d1x130_cmp_nsign_q = $unsigned(~ (i_fpga_indvars_iv40_replace_phi_conv2d1x15_q[32:32]));

    // i_llvm_fpga_ffwd_dest_i1_cmp308_conv2d1x132(BLACKBOX,46)@1
    conv2d1x1_i_llvm_fpga_ffwd_dest_i1_cmp308_0 thei_llvm_fpga_ffwd_dest_i1_cmp308_conv2d1x132 (
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_dest_data_out_0_0(i_llvm_fpga_ffwd_dest_i1_cmp308_conv2d1x132_out_dest_data_out_0_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_conv2d1x133(LOGICAL,78)@1
    assign i_unnamed_conv2d1x133_q = i_llvm_fpga_ffwd_dest_i1_cmp308_conv2d1x132_out_dest_data_out_0_0 & i_exitcond42_conv2d1x130_cmp_nsign_q;

    // i_llvm_fpga_push_i1_notexitcond24_conv2d1x135(BLACKBOX,55)@1
    // out out_feedback_out_6@20000000
    // out out_feedback_valid_out_6@20000000
    conv2d1x1_i_llvm_fpga_push_i1_notexitcond24_0 thei_llvm_fpga_push_i1_notexitcond24_conv2d1x135 (
        .in_data_in(i_unnamed_conv2d1x133_q),
        .in_feedback_stall_in_6(i_llvm_fpga_pipeline_keep_going23_conv2d1x12_out_not_exitcond_stall_out),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_feedback_out_6(i_llvm_fpga_push_i1_notexitcond24_conv2d1x135_out_feedback_out_6),
        .out_feedback_valid_out_6(i_llvm_fpga_push_i1_notexitcond24_conv2d1x135_out_feedback_valid_out_6),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // i_llvm_fpga_pipeline_keep_going23_conv2d1x12(BLACKBOX,52)@1
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    conv2d1x1_i_llvm_fpga_pipeline_keep_going23_0 thei_llvm_fpga_pipeline_keep_going23_conv2d1x12 (
        .in_data_in(VCC_q),
        .in_initeration_in(GND_q),
        .in_initeration_valid_in(GND_q),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond24_conv2d1x135_out_feedback_out_6),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond24_conv2d1x135_out_feedback_valid_out_6),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going23_conv2d1x12_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going23_conv2d1x12_out_exiting_valid_out),
        .out_initeration_stall_out(),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going23_conv2d1x12_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going23_conv2d1x12_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,32)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going23_conv2d1x12_exiting_valid_out = i_llvm_fpga_pipeline_keep_going23_conv2d1x12_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going23_conv2d1x12_exiting_stall_out = i_llvm_fpga_pipeline_keep_going23_conv2d1x12_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,83)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going23_conv2d1x12_out_pipeline_valid_out;

    // redist1_sync_together78_aunroll_x_in_i_valid_3(DELAY,190)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together78_aunroll_x_in_i_valid_3_delay_0 <= '0;
            redist1_sync_together78_aunroll_x_in_i_valid_3_delay_1 <= '0;
            redist1_sync_together78_aunroll_x_in_i_valid_3_q <= '0;
        end
        else
        begin
            redist1_sync_together78_aunroll_x_in_i_valid_3_delay_0 <= $unsigned(in_i_valid);
            redist1_sync_together78_aunroll_x_in_i_valid_3_delay_1 <= redist1_sync_together78_aunroll_x_in_i_valid_3_delay_0;
            redist1_sync_together78_aunroll_x_in_i_valid_3_q <= redist1_sync_together78_aunroll_x_in_i_valid_3_delay_1;
        end
    end

    // redist2_sync_together78_aunroll_x_in_i_valid_4(DELAY,191)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_sync_together78_aunroll_x_in_i_valid_4_q <= '0;
        end
        else
        begin
            redist2_sync_together78_aunroll_x_in_i_valid_4_q <= $unsigned(redist1_sync_together78_aunroll_x_in_i_valid_3_q);
        end
    end

    // redist3_sync_together78_aunroll_x_in_i_valid_6(DELAY,192)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_sync_together78_aunroll_x_in_i_valid_6_delay_0 <= '0;
            redist3_sync_together78_aunroll_x_in_i_valid_6_q <= '0;
        end
        else
        begin
            redist3_sync_together78_aunroll_x_in_i_valid_6_delay_0 <= $unsigned(redist2_sync_together78_aunroll_x_in_i_valid_4_q);
            redist3_sync_together78_aunroll_x_in_i_valid_6_q <= redist3_sync_together78_aunroll_x_in_i_valid_6_delay_0;
        end
    end

    // valid_fanout_reg0(REG,110)@7 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist3_sync_together78_aunroll_x_in_i_valid_6_q);
        end
    end

    // i_notcmp22_conv2d1x134(LOGICAL,66)@8
    assign i_notcmp22_conv2d1x134_q = redist7_i_unnamed_conv2d1x133_q_7_q ^ VCC_q;

    // redist6_i_unnamed_conv2d1x133_q_5(DELAY,195)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_i_unnamed_conv2d1x133_q_5_delay_0 <= '0;
            redist6_i_unnamed_conv2d1x133_q_5_delay_1 <= '0;
            redist6_i_unnamed_conv2d1x133_q_5_delay_2 <= '0;
            redist6_i_unnamed_conv2d1x133_q_5_delay_3 <= '0;
            redist6_i_unnamed_conv2d1x133_q_5_q <= '0;
        end
        else
        begin
            redist6_i_unnamed_conv2d1x133_q_5_delay_0 <= $unsigned(i_unnamed_conv2d1x133_q);
            redist6_i_unnamed_conv2d1x133_q_5_delay_1 <= redist6_i_unnamed_conv2d1x133_q_5_delay_0;
            redist6_i_unnamed_conv2d1x133_q_5_delay_2 <= redist6_i_unnamed_conv2d1x133_q_5_delay_1;
            redist6_i_unnamed_conv2d1x133_q_5_delay_3 <= redist6_i_unnamed_conv2d1x133_q_5_delay_2;
            redist6_i_unnamed_conv2d1x133_q_5_q <= redist6_i_unnamed_conv2d1x133_q_5_delay_3;
        end
    end

    // redist7_i_unnamed_conv2d1x133_q_7(DELAY,196)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_i_unnamed_conv2d1x133_q_7_delay_0 <= '0;
            redist7_i_unnamed_conv2d1x133_q_7_q <= '0;
        end
        else
        begin
            redist7_i_unnamed_conv2d1x133_q_7_delay_0 <= $unsigned(redist6_i_unnamed_conv2d1x133_q_5_q);
            redist7_i_unnamed_conv2d1x133_q_7_q <= redist7_i_unnamed_conv2d1x133_q_7_delay_0;
        end
    end

    // valid_fanout_reg6(REG,116)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg6_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg6_q <= $unsigned(redist1_sync_together78_aunroll_x_in_i_valid_3_q);
        end
    end

    // valid_fanout_reg9(REG,119)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg9_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg9_q <= $unsigned(redist2_sync_together78_aunroll_x_in_i_valid_4_q);
        end
    end

    // c_i32_159(CONSTANT,28)
    assign c_i32_159_q = $unsigned(32'b00000000000000000000000000000001);

    // redist8_i_llvm_fpga_pop_i32_f_i_031_pop8_conv2d1x123_out_data_out_1(DELAY,197)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_i_llvm_fpga_pop_i32_f_i_031_pop8_conv2d1x123_out_data_out_1_q <= '0;
        end
        else
        begin
            redist8_i_llvm_fpga_pop_i32_f_i_031_pop8_conv2d1x123_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i32_f_i_031_pop8_conv2d1x123_out_data_out);
        end
    end

    // i_inc31_conv2d1x138(ADD,44)@6
    assign i_inc31_conv2d1x138_a = {1'b0, redist8_i_llvm_fpga_pop_i32_f_i_031_pop8_conv2d1x123_out_data_out_1_q};
    assign i_inc31_conv2d1x138_b = {1'b0, c_i32_159_q};
    assign i_inc31_conv2d1x138_o = $unsigned(i_inc31_conv2d1x138_a) + $unsigned(i_inc31_conv2d1x138_b);
    assign i_inc31_conv2d1x138_q = i_inc31_conv2d1x138_o[32:0];

    // bgTrunc_i_inc31_conv2d1x138_sel_x(BITSELECT,92)@6
    assign bgTrunc_i_inc31_conv2d1x138_sel_x_b = i_inc31_conv2d1x138_q[31:0];

    // i_llvm_fpga_push_i32_f_i_031_push8_conv2d1x139(BLACKBOX,56)@6
    // out out_feedback_out_8@20000000
    // out out_feedback_valid_out_8@20000000
    conv2d1x1_i_llvm_fpga_push_i32_f_i_031_push8_0 thei_llvm_fpga_push_i32_f_i_031_push8_conv2d1x139 (
        .in_data_in(bgTrunc_i_inc31_conv2d1x138_sel_x_b),
        .in_feedback_stall_in_8(i_llvm_fpga_pop_i32_f_i_031_pop8_conv2d1x123_out_feedback_stall_out_8),
        .in_stall_in(GND_q),
        .in_unnamed_conv2d1x115(redist6_i_unnamed_conv2d1x133_q_5_q),
        .in_valid_in(valid_fanout_reg9_q),
        .out_data_out(),
        .out_feedback_out_8(i_llvm_fpga_push_i32_f_i_031_push8_conv2d1x139_out_feedback_out_8),
        .out_feedback_valid_out_8(i_llvm_fpga_push_i32_f_i_031_push8_conv2d1x139_out_feedback_valid_out_8),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist0_sync_together78_aunroll_x_in_c0_eni1_1_tpl_4(DELAY,189)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_sync_together78_aunroll_x_in_c0_eni1_1_tpl_4_delay_0 <= '0;
            redist0_sync_together78_aunroll_x_in_c0_eni1_1_tpl_4_delay_1 <= '0;
            redist0_sync_together78_aunroll_x_in_c0_eni1_1_tpl_4_delay_2 <= '0;
            redist0_sync_together78_aunroll_x_in_c0_eni1_1_tpl_4_q <= '0;
        end
        else
        begin
            redist0_sync_together78_aunroll_x_in_c0_eni1_1_tpl_4_delay_0 <= $unsigned(in_c0_eni1_1_tpl);
            redist0_sync_together78_aunroll_x_in_c0_eni1_1_tpl_4_delay_1 <= redist0_sync_together78_aunroll_x_in_c0_eni1_1_tpl_4_delay_0;
            redist0_sync_together78_aunroll_x_in_c0_eni1_1_tpl_4_delay_2 <= redist0_sync_together78_aunroll_x_in_c0_eni1_1_tpl_4_delay_1;
            redist0_sync_together78_aunroll_x_in_c0_eni1_1_tpl_4_q <= redist0_sync_together78_aunroll_x_in_c0_eni1_1_tpl_4_delay_2;
        end
    end

    // c_i32_058(CONSTANT,27)
    assign c_i32_058_q = $unsigned(32'b00000000000000000000000000000000);

    // i_llvm_fpga_pop_i32_f_i_031_pop8_conv2d1x123(BLACKBOX,53)@5
    // out out_feedback_stall_out_8@20000000
    conv2d1x1_i_llvm_fpga_pop_i32_f_i_031_pop8_0 thei_llvm_fpga_pop_i32_f_i_031_pop8_conv2d1x123 (
        .in_data_in(c_i32_058_q),
        .in_dir(redist0_sync_together78_aunroll_x_in_c0_eni1_1_tpl_4_q),
        .in_feedback_in_8(i_llvm_fpga_push_i32_f_i_031_push8_conv2d1x139_out_feedback_out_8),
        .in_feedback_valid_in_8(i_llvm_fpga_push_i32_f_i_031_push8_conv2d1x139_out_feedback_valid_out_8),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg6_q),
        .out_data_out(i_llvm_fpga_pop_i32_f_i_031_pop8_conv2d1x123_out_data_out),
        .out_feedback_stall_out_8(i_llvm_fpga_pop_i32_f_i_031_pop8_conv2d1x123_out_feedback_stall_out_8),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_mul13_conv2d1x128_bs4(BITSELECT,135)@5
    assign i_mul13_conv2d1x128_bs4_in = i_llvm_fpga_pop_i32_f_i_031_pop8_conv2d1x123_out_data_out[17:0];
    assign i_mul13_conv2d1x128_bs4_b = i_mul13_conv2d1x128_bs4_in[17:0];

    // valid_fanout_reg3(REG,113)@1 + 1
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

    // i_llvm_fpga_ffwd_dest_i32_input_size_sync_buffer13_conv2d1x19(BLACKBOX,50)@2
    conv2d1x1_i_llvm_fpga_ffwd_dest_i32_input_size_sync_buffer13_0 thei_llvm_fpga_ffwd_dest_i32_input_size_sync_buffer13_conv2d1x19 (
        .in_intel_reserved_ffwd_1_0(in_intel_reserved_ffwd_1_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_dest_data_out_1_0(i_llvm_fpga_ffwd_dest_i32_input_size_sync_buffer13_conv2d1x19_out_dest_data_out_1_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_mul_conv2d1x110_bs2_merged_bit_select(BITSELECT,186)@2
    assign i_mul_conv2d1x110_bs2_merged_bit_select_b = i_llvm_fpga_ffwd_dest_i32_input_size_sync_buffer13_conv2d1x19_out_dest_data_out_1_0[31:18];
    assign i_mul_conv2d1x110_bs2_merged_bit_select_c = i_llvm_fpga_ffwd_dest_i32_input_size_sync_buffer13_conv2d1x19_out_dest_data_out_1_0[17:0];

    // valid_fanout_reg2(REG,112)@1 + 1
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

    // i_llvm_fpga_ffwd_dest_i32_input_size_sync_buffer12_conv2d1x18(BLACKBOX,49)@2
    conv2d1x1_i_llvm_fpga_ffwd_dest_i32_input_size_sync_buffer12_0 thei_llvm_fpga_ffwd_dest_i32_input_size_sync_buffer12_conv2d1x18 (
        .in_intel_reserved_ffwd_1_0(in_intel_reserved_ffwd_1_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_dest_data_out_1_0(i_llvm_fpga_ffwd_dest_i32_input_size_sync_buffer12_conv2d1x18_out_dest_data_out_1_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_mul_conv2d1x110_bs1_merged_bit_select(BITSELECT,185)@2
    assign i_mul_conv2d1x110_bs1_merged_bit_select_b = i_llvm_fpga_ffwd_dest_i32_input_size_sync_buffer12_conv2d1x18_out_dest_data_out_1_0[31:18];
    assign i_mul_conv2d1x110_bs1_merged_bit_select_c = i_llvm_fpga_ffwd_dest_i32_input_size_sync_buffer12_conv2d1x18_out_dest_data_out_1_0[17:0];

    // i_mul_conv2d1x110_ma3_cma(CHAINMULTADD,184)@2 + 3
    assign i_mul_conv2d1x110_ma3_cma_reset = ~ (resetn);
    assign i_mul_conv2d1x110_ma3_cma_ena0 = 1'b1;
    assign i_mul_conv2d1x110_ma3_cma_ena1 = i_mul_conv2d1x110_ma3_cma_ena0;
    assign i_mul_conv2d1x110_ma3_cma_ena2 = i_mul_conv2d1x110_ma3_cma_ena0;

    assign i_mul_conv2d1x110_ma3_cma_a0 = i_mul_conv2d1x110_bs1_merged_bit_select_b;
    assign i_mul_conv2d1x110_ma3_cma_c0 = i_mul_conv2d1x110_bs2_merged_bit_select_c;
    assign i_mul_conv2d1x110_ma3_cma_a1 = i_mul_conv2d1x110_bs2_merged_bit_select_b;
    assign i_mul_conv2d1x110_ma3_cma_c1 = i_mul_conv2d1x110_bs1_merged_bit_select_c;
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
    ) i_mul_conv2d1x110_ma3_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul_conv2d1x110_ma3_cma_ena2, i_mul_conv2d1x110_ma3_cma_ena1, i_mul_conv2d1x110_ma3_cma_ena0 }),
        .aclr({ i_mul_conv2d1x110_ma3_cma_reset, i_mul_conv2d1x110_ma3_cma_reset }),
        .ay(i_mul_conv2d1x110_ma3_cma_a1),
        .by(i_mul_conv2d1x110_ma3_cma_a0),
        .ax(i_mul_conv2d1x110_ma3_cma_c1),
        .bx(i_mul_conv2d1x110_ma3_cma_c0),
        .resulta(i_mul_conv2d1x110_ma3_cma_s0),
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
    i_mul_conv2d1x110_ma3_cma_delay ( .xin(i_mul_conv2d1x110_ma3_cma_s0), .xout(i_mul_conv2d1x110_ma3_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul_conv2d1x110_ma3_cma_q = $unsigned(i_mul_conv2d1x110_ma3_cma_qq[32:0]);

    // i_mul_conv2d1x110_sums_align_1(BITSHIFT,173)@5
    assign i_mul_conv2d1x110_sums_align_1_qint = { i_mul_conv2d1x110_ma3_cma_q, 18'b000000000000000000 };
    assign i_mul_conv2d1x110_sums_align_1_q = i_mul_conv2d1x110_sums_align_1_qint[50:0];

    // i_mul_conv2d1x110_im0_cma(CHAINMULTADD,180)@2 + 3
    assign i_mul_conv2d1x110_im0_cma_reset = ~ (resetn);
    assign i_mul_conv2d1x110_im0_cma_ena0 = 1'b1;
    assign i_mul_conv2d1x110_im0_cma_ena1 = i_mul_conv2d1x110_im0_cma_ena0;
    assign i_mul_conv2d1x110_im0_cma_ena2 = i_mul_conv2d1x110_im0_cma_ena0;

    assign i_mul_conv2d1x110_im0_cma_a0 = i_mul_conv2d1x110_bs1_merged_bit_select_b;
    assign i_mul_conv2d1x110_im0_cma_c0 = i_mul_conv2d1x110_bs2_merged_bit_select_b;
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
    ) i_mul_conv2d1x110_im0_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul_conv2d1x110_im0_cma_ena2, i_mul_conv2d1x110_im0_cma_ena1, i_mul_conv2d1x110_im0_cma_ena0 }),
        .aclr({ i_mul_conv2d1x110_im0_cma_reset, i_mul_conv2d1x110_im0_cma_reset }),
        .ay(i_mul_conv2d1x110_im0_cma_a0),
        .ax(i_mul_conv2d1x110_im0_cma_c0),
        .resulta(i_mul_conv2d1x110_im0_cma_s0),
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
    i_mul_conv2d1x110_im0_cma_delay ( .xin(i_mul_conv2d1x110_im0_cma_s0), .xout(i_mul_conv2d1x110_im0_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul_conv2d1x110_im0_cma_q = $unsigned(i_mul_conv2d1x110_im0_cma_qq[27:0]);

    // i_mul_conv2d1x110_im8_cma(CHAINMULTADD,181)@2 + 3
    assign i_mul_conv2d1x110_im8_cma_reset = ~ (resetn);
    assign i_mul_conv2d1x110_im8_cma_ena0 = 1'b1;
    assign i_mul_conv2d1x110_im8_cma_ena1 = i_mul_conv2d1x110_im8_cma_ena0;
    assign i_mul_conv2d1x110_im8_cma_ena2 = i_mul_conv2d1x110_im8_cma_ena0;

    assign i_mul_conv2d1x110_im8_cma_a0 = i_mul_conv2d1x110_bs1_merged_bit_select_c;
    assign i_mul_conv2d1x110_im8_cma_c0 = i_mul_conv2d1x110_bs2_merged_bit_select_c;
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
    ) i_mul_conv2d1x110_im8_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul_conv2d1x110_im8_cma_ena2, i_mul_conv2d1x110_im8_cma_ena1, i_mul_conv2d1x110_im8_cma_ena0 }),
        .aclr({ i_mul_conv2d1x110_im8_cma_reset, i_mul_conv2d1x110_im8_cma_reset }),
        .ay(i_mul_conv2d1x110_im8_cma_a0),
        .ax(i_mul_conv2d1x110_im8_cma_c0),
        .resulta(i_mul_conv2d1x110_im8_cma_s0),
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
    i_mul_conv2d1x110_im8_cma_delay ( .xin(i_mul_conv2d1x110_im8_cma_s0), .xout(i_mul_conv2d1x110_im8_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul_conv2d1x110_im8_cma_q = $unsigned(i_mul_conv2d1x110_im8_cma_qq[35:0]);

    // i_mul_conv2d1x110_sums_join_0(BITJOIN,172)@5
    assign i_mul_conv2d1x110_sums_join_0_q = {i_mul_conv2d1x110_im0_cma_q, i_mul_conv2d1x110_im8_cma_q};

    // i_mul_conv2d1x110_sums_result_add_0_0(ADD,175)@5
    assign i_mul_conv2d1x110_sums_result_add_0_0_a = {1'b0, i_mul_conv2d1x110_sums_join_0_q};
    assign i_mul_conv2d1x110_sums_result_add_0_0_b = {14'b00000000000000, i_mul_conv2d1x110_sums_align_1_q};
    assign i_mul_conv2d1x110_sums_result_add_0_0_o = $unsigned(i_mul_conv2d1x110_sums_result_add_0_0_a) + $unsigned(i_mul_conv2d1x110_sums_result_add_0_0_b);
    assign i_mul_conv2d1x110_sums_result_add_0_0_q = i_mul_conv2d1x110_sums_result_add_0_0_o[64:0];

    // bgTrunc_i_mul_conv2d1x110_sel_x(BITSELECT,95)@5
    assign bgTrunc_i_mul_conv2d1x110_sel_x_in = i_mul_conv2d1x110_sums_result_add_0_0_q[63:0];
    assign bgTrunc_i_mul_conv2d1x110_sel_x_b = bgTrunc_i_mul_conv2d1x110_sel_x_in[31:0];

    // i_mul23_conv2d1x129_bs2_merged_bit_select(BITSELECT,188)@5
    assign i_mul23_conv2d1x129_bs2_merged_bit_select_b = bgTrunc_i_mul_conv2d1x110_sel_x_b[31:18];
    assign i_mul23_conv2d1x129_bs2_merged_bit_select_c = bgTrunc_i_mul_conv2d1x110_sel_x_b[17:0];

    // i_mul13_conv2d1x128_bs1(BITSELECT,132)@5
    assign i_mul13_conv2d1x128_bs1_b = i_llvm_fpga_pop_i32_f_i_031_pop8_conv2d1x123_out_data_out[31:18];

    // i_mul23_conv2d1x129_ma3_cma(CHAINMULTADD,183)@5 + 3
    assign i_mul23_conv2d1x129_ma3_cma_reset = ~ (resetn);
    assign i_mul23_conv2d1x129_ma3_cma_ena0 = 1'b1;
    assign i_mul23_conv2d1x129_ma3_cma_ena1 = i_mul23_conv2d1x129_ma3_cma_ena0;
    assign i_mul23_conv2d1x129_ma3_cma_ena2 = i_mul23_conv2d1x129_ma3_cma_ena0;

    assign i_mul23_conv2d1x129_ma3_cma_a0 = i_mul13_conv2d1x128_bs1_b;
    assign i_mul23_conv2d1x129_ma3_cma_c0 = i_mul23_conv2d1x129_bs2_merged_bit_select_c;
    assign i_mul23_conv2d1x129_ma3_cma_a1 = i_mul23_conv2d1x129_bs2_merged_bit_select_b;
    assign i_mul23_conv2d1x129_ma3_cma_c1 = i_mul13_conv2d1x128_bs4_b;
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
    ) i_mul23_conv2d1x129_ma3_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul23_conv2d1x129_ma3_cma_ena2, i_mul23_conv2d1x129_ma3_cma_ena1, i_mul23_conv2d1x129_ma3_cma_ena0 }),
        .aclr({ i_mul23_conv2d1x129_ma3_cma_reset, i_mul23_conv2d1x129_ma3_cma_reset }),
        .ay(i_mul23_conv2d1x129_ma3_cma_a1),
        .by(i_mul23_conv2d1x129_ma3_cma_a0),
        .ax(i_mul23_conv2d1x129_ma3_cma_c1),
        .bx(i_mul23_conv2d1x129_ma3_cma_c0),
        .resulta(i_mul23_conv2d1x129_ma3_cma_s0),
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
    i_mul23_conv2d1x129_ma3_cma_delay ( .xin(i_mul23_conv2d1x129_ma3_cma_s0), .xout(i_mul23_conv2d1x129_ma3_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul23_conv2d1x129_ma3_cma_q = $unsigned(i_mul23_conv2d1x129_ma3_cma_qq[32:0]);

    // i_mul23_conv2d1x129_sums_align_1(BITSHIFT,158)@8
    assign i_mul23_conv2d1x129_sums_align_1_qint = { i_mul23_conv2d1x129_ma3_cma_q, 18'b000000000000000000 };
    assign i_mul23_conv2d1x129_sums_align_1_q = i_mul23_conv2d1x129_sums_align_1_qint[50:0];

    // i_mul23_conv2d1x129_im0_cma(CHAINMULTADD,178)@5 + 3
    assign i_mul23_conv2d1x129_im0_cma_reset = ~ (resetn);
    assign i_mul23_conv2d1x129_im0_cma_ena0 = 1'b1;
    assign i_mul23_conv2d1x129_im0_cma_ena1 = i_mul23_conv2d1x129_im0_cma_ena0;
    assign i_mul23_conv2d1x129_im0_cma_ena2 = i_mul23_conv2d1x129_im0_cma_ena0;

    assign i_mul23_conv2d1x129_im0_cma_a0 = i_mul13_conv2d1x128_bs1_b;
    assign i_mul23_conv2d1x129_im0_cma_c0 = i_mul23_conv2d1x129_bs2_merged_bit_select_b;
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
    ) i_mul23_conv2d1x129_im0_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul23_conv2d1x129_im0_cma_ena2, i_mul23_conv2d1x129_im0_cma_ena1, i_mul23_conv2d1x129_im0_cma_ena0 }),
        .aclr({ i_mul23_conv2d1x129_im0_cma_reset, i_mul23_conv2d1x129_im0_cma_reset }),
        .ay(i_mul23_conv2d1x129_im0_cma_a0),
        .ax(i_mul23_conv2d1x129_im0_cma_c0),
        .resulta(i_mul23_conv2d1x129_im0_cma_s0),
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
    i_mul23_conv2d1x129_im0_cma_delay ( .xin(i_mul23_conv2d1x129_im0_cma_s0), .xout(i_mul23_conv2d1x129_im0_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul23_conv2d1x129_im0_cma_q = $unsigned(i_mul23_conv2d1x129_im0_cma_qq[27:0]);

    // i_mul23_conv2d1x129_im8_cma(CHAINMULTADD,179)@5 + 3
    assign i_mul23_conv2d1x129_im8_cma_reset = ~ (resetn);
    assign i_mul23_conv2d1x129_im8_cma_ena0 = 1'b1;
    assign i_mul23_conv2d1x129_im8_cma_ena1 = i_mul23_conv2d1x129_im8_cma_ena0;
    assign i_mul23_conv2d1x129_im8_cma_ena2 = i_mul23_conv2d1x129_im8_cma_ena0;

    assign i_mul23_conv2d1x129_im8_cma_a0 = i_mul13_conv2d1x128_bs4_b;
    assign i_mul23_conv2d1x129_im8_cma_c0 = i_mul23_conv2d1x129_bs2_merged_bit_select_c;
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
    ) i_mul23_conv2d1x129_im8_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul23_conv2d1x129_im8_cma_ena2, i_mul23_conv2d1x129_im8_cma_ena1, i_mul23_conv2d1x129_im8_cma_ena0 }),
        .aclr({ i_mul23_conv2d1x129_im8_cma_reset, i_mul23_conv2d1x129_im8_cma_reset }),
        .ay(i_mul23_conv2d1x129_im8_cma_a0),
        .ax(i_mul23_conv2d1x129_im8_cma_c0),
        .resulta(i_mul23_conv2d1x129_im8_cma_s0),
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
    i_mul23_conv2d1x129_im8_cma_delay ( .xin(i_mul23_conv2d1x129_im8_cma_s0), .xout(i_mul23_conv2d1x129_im8_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul23_conv2d1x129_im8_cma_q = $unsigned(i_mul23_conv2d1x129_im8_cma_qq[35:0]);

    // i_mul23_conv2d1x129_sums_join_0(BITJOIN,157)@8
    assign i_mul23_conv2d1x129_sums_join_0_q = {i_mul23_conv2d1x129_im0_cma_q, i_mul23_conv2d1x129_im8_cma_q};

    // i_mul23_conv2d1x129_sums_result_add_0_0(ADD,160)@8
    assign i_mul23_conv2d1x129_sums_result_add_0_0_a = {1'b0, i_mul23_conv2d1x129_sums_join_0_q};
    assign i_mul23_conv2d1x129_sums_result_add_0_0_b = {14'b00000000000000, i_mul23_conv2d1x129_sums_align_1_q};
    assign i_mul23_conv2d1x129_sums_result_add_0_0_o = $unsigned(i_mul23_conv2d1x129_sums_result_add_0_0_a) + $unsigned(i_mul23_conv2d1x129_sums_result_add_0_0_b);
    assign i_mul23_conv2d1x129_sums_result_add_0_0_q = i_mul23_conv2d1x129_sums_result_add_0_0_o[64:0];

    // bgTrunc_i_mul23_conv2d1x129_sel_x(BITSELECT,94)@8
    assign bgTrunc_i_mul23_conv2d1x129_sel_x_in = i_mul23_conv2d1x129_sums_result_add_0_0_q[63:0];
    assign bgTrunc_i_mul23_conv2d1x129_sel_x_b = bgTrunc_i_mul23_conv2d1x129_sel_x_in[31:0];

    // valid_fanout_reg8(REG,118)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg8_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg8_q <= $unsigned(redist1_sync_together78_aunroll_x_in_i_valid_3_q);
        end
    end

    // i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer1_conv2d1x127(BLACKBOX,58)@0
    // in in_i_dependence@5
    // in in_valid_in@5
    // out out_buffer_out@5
    // out out_valid_out@5
    conv2d1x1_i_llvm_fpga_sync_buffer_i32_in0000nnels_sync_buffer1_0 thei_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer1_conv2d1x127 (
        .in_buffer_in(in_input_channels),
        .in_i_dependence(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg8_q),
        .out_buffer_out(i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer1_conv2d1x127_out_buffer_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_mul13_conv2d1x128_bs2_merged_bit_select(BITSELECT,187)@5
    assign i_mul13_conv2d1x128_bs2_merged_bit_select_b = i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer1_conv2d1x127_out_buffer_out[31:18];
    assign i_mul13_conv2d1x128_bs2_merged_bit_select_c = i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer1_conv2d1x127_out_buffer_out[17:0];

    // i_mul13_conv2d1x128_ma3_cma(CHAINMULTADD,182)@5 + 3
    assign i_mul13_conv2d1x128_ma3_cma_reset = ~ (resetn);
    assign i_mul13_conv2d1x128_ma3_cma_ena0 = 1'b1;
    assign i_mul13_conv2d1x128_ma3_cma_ena1 = i_mul13_conv2d1x128_ma3_cma_ena0;
    assign i_mul13_conv2d1x128_ma3_cma_ena2 = i_mul13_conv2d1x128_ma3_cma_ena0;

    assign i_mul13_conv2d1x128_ma3_cma_a0 = i_mul13_conv2d1x128_bs1_b;
    assign i_mul13_conv2d1x128_ma3_cma_c0 = i_mul13_conv2d1x128_bs2_merged_bit_select_c;
    assign i_mul13_conv2d1x128_ma3_cma_a1 = i_mul13_conv2d1x128_bs2_merged_bit_select_b;
    assign i_mul13_conv2d1x128_ma3_cma_c1 = i_mul13_conv2d1x128_bs4_b;
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
    ) i_mul13_conv2d1x128_ma3_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul13_conv2d1x128_ma3_cma_ena2, i_mul13_conv2d1x128_ma3_cma_ena1, i_mul13_conv2d1x128_ma3_cma_ena0 }),
        .aclr({ i_mul13_conv2d1x128_ma3_cma_reset, i_mul13_conv2d1x128_ma3_cma_reset }),
        .ay(i_mul13_conv2d1x128_ma3_cma_a1),
        .by(i_mul13_conv2d1x128_ma3_cma_a0),
        .ax(i_mul13_conv2d1x128_ma3_cma_c1),
        .bx(i_mul13_conv2d1x128_ma3_cma_c0),
        .resulta(i_mul13_conv2d1x128_ma3_cma_s0),
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
    i_mul13_conv2d1x128_ma3_cma_delay ( .xin(i_mul13_conv2d1x128_ma3_cma_s0), .xout(i_mul13_conv2d1x128_ma3_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul13_conv2d1x128_ma3_cma_q = $unsigned(i_mul13_conv2d1x128_ma3_cma_qq[32:0]);

    // i_mul13_conv2d1x128_sums_align_1(BITSHIFT,143)@8
    assign i_mul13_conv2d1x128_sums_align_1_qint = { i_mul13_conv2d1x128_ma3_cma_q, 18'b000000000000000000 };
    assign i_mul13_conv2d1x128_sums_align_1_q = i_mul13_conv2d1x128_sums_align_1_qint[50:0];

    // i_mul13_conv2d1x128_im0_cma(CHAINMULTADD,176)@5 + 3
    assign i_mul13_conv2d1x128_im0_cma_reset = ~ (resetn);
    assign i_mul13_conv2d1x128_im0_cma_ena0 = 1'b1;
    assign i_mul13_conv2d1x128_im0_cma_ena1 = i_mul13_conv2d1x128_im0_cma_ena0;
    assign i_mul13_conv2d1x128_im0_cma_ena2 = i_mul13_conv2d1x128_im0_cma_ena0;

    assign i_mul13_conv2d1x128_im0_cma_a0 = i_mul13_conv2d1x128_bs1_b;
    assign i_mul13_conv2d1x128_im0_cma_c0 = i_mul13_conv2d1x128_bs2_merged_bit_select_b;
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
    ) i_mul13_conv2d1x128_im0_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul13_conv2d1x128_im0_cma_ena2, i_mul13_conv2d1x128_im0_cma_ena1, i_mul13_conv2d1x128_im0_cma_ena0 }),
        .aclr({ i_mul13_conv2d1x128_im0_cma_reset, i_mul13_conv2d1x128_im0_cma_reset }),
        .ay(i_mul13_conv2d1x128_im0_cma_a0),
        .ax(i_mul13_conv2d1x128_im0_cma_c0),
        .resulta(i_mul13_conv2d1x128_im0_cma_s0),
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
    i_mul13_conv2d1x128_im0_cma_delay ( .xin(i_mul13_conv2d1x128_im0_cma_s0), .xout(i_mul13_conv2d1x128_im0_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul13_conv2d1x128_im0_cma_q = $unsigned(i_mul13_conv2d1x128_im0_cma_qq[27:0]);

    // i_mul13_conv2d1x128_im8_cma(CHAINMULTADD,177)@5 + 3
    assign i_mul13_conv2d1x128_im8_cma_reset = ~ (resetn);
    assign i_mul13_conv2d1x128_im8_cma_ena0 = 1'b1;
    assign i_mul13_conv2d1x128_im8_cma_ena1 = i_mul13_conv2d1x128_im8_cma_ena0;
    assign i_mul13_conv2d1x128_im8_cma_ena2 = i_mul13_conv2d1x128_im8_cma_ena0;

    assign i_mul13_conv2d1x128_im8_cma_a0 = i_mul13_conv2d1x128_bs4_b;
    assign i_mul13_conv2d1x128_im8_cma_c0 = i_mul13_conv2d1x128_bs2_merged_bit_select_c;
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
    ) i_mul13_conv2d1x128_im8_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul13_conv2d1x128_im8_cma_ena2, i_mul13_conv2d1x128_im8_cma_ena1, i_mul13_conv2d1x128_im8_cma_ena0 }),
        .aclr({ i_mul13_conv2d1x128_im8_cma_reset, i_mul13_conv2d1x128_im8_cma_reset }),
        .ay(i_mul13_conv2d1x128_im8_cma_a0),
        .ax(i_mul13_conv2d1x128_im8_cma_c0),
        .resulta(i_mul13_conv2d1x128_im8_cma_s0),
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
    i_mul13_conv2d1x128_im8_cma_delay ( .xin(i_mul13_conv2d1x128_im8_cma_s0), .xout(i_mul13_conv2d1x128_im8_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul13_conv2d1x128_im8_cma_q = $unsigned(i_mul13_conv2d1x128_im8_cma_qq[35:0]);

    // i_mul13_conv2d1x128_sums_join_0(BITJOIN,142)@8
    assign i_mul13_conv2d1x128_sums_join_0_q = {i_mul13_conv2d1x128_im0_cma_q, i_mul13_conv2d1x128_im8_cma_q};

    // i_mul13_conv2d1x128_sums_result_add_0_0(ADD,145)@8
    assign i_mul13_conv2d1x128_sums_result_add_0_0_a = {1'b0, i_mul13_conv2d1x128_sums_join_0_q};
    assign i_mul13_conv2d1x128_sums_result_add_0_0_b = {14'b00000000000000, i_mul13_conv2d1x128_sums_align_1_q};
    assign i_mul13_conv2d1x128_sums_result_add_0_0_o = $unsigned(i_mul13_conv2d1x128_sums_result_add_0_0_a) + $unsigned(i_mul13_conv2d1x128_sums_result_add_0_0_b);
    assign i_mul13_conv2d1x128_sums_result_add_0_0_q = i_mul13_conv2d1x128_sums_result_add_0_0_o[64:0];

    // bgTrunc_i_mul13_conv2d1x128_sel_x(BITSELECT,93)@8
    assign bgTrunc_i_mul13_conv2d1x128_sel_x_in = i_mul13_conv2d1x128_sums_result_add_0_0_q[63:0];
    assign bgTrunc_i_mul13_conv2d1x128_sel_x_b = bgTrunc_i_mul13_conv2d1x128_sel_x_in[31:0];

    // i_idxprom_conv2d1x124_sel_x(BITSELECT,106)@6
    assign i_idxprom_conv2d1x124_sel_x_b = {32'b00000000000000000000000000000000, redist8_i_llvm_fpga_pop_i32_f_i_031_pop8_conv2d1x123_out_data_out_1_q[31:0]};

    // i_idxprom_conv2d1x124_vt_select_31(BITSELECT,43)@6
    assign i_idxprom_conv2d1x124_vt_select_31_b = i_idxprom_conv2d1x124_sel_x_b[31:0];

    // redist9_i_idxprom_conv2d1x124_vt_select_31_b_2(DELAY,198)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_i_idxprom_conv2d1x124_vt_select_31_b_2_delay_0 <= '0;
            redist9_i_idxprom_conv2d1x124_vt_select_31_b_2_q <= '0;
        end
        else
        begin
            redist9_i_idxprom_conv2d1x124_vt_select_31_b_2_delay_0 <= $unsigned(i_idxprom_conv2d1x124_vt_select_31_b);
            redist9_i_idxprom_conv2d1x124_vt_select_31_b_2_q <= redist9_i_idxprom_conv2d1x124_vt_select_31_b_2_delay_0;
        end
    end

    // i_idxprom_conv2d1x124_vt_join(BITJOIN,42)@8
    assign i_idxprom_conv2d1x124_vt_join_q = {c_i32_058_q, redist9_i_idxprom_conv2d1x124_vt_select_31_b_2_q};

    // i_arrayidx1_conv2d1x10_narrow_x(BITSELECT,102)@8
    assign i_arrayidx1_conv2d1x10_narrow_x_b = i_idxprom_conv2d1x124_vt_join_q[61:0];

    // i_arrayidx1_conv2d1x10_shift_join_x(BITJOIN,103)@8
    assign i_arrayidx1_conv2d1x10_shift_join_x_q = {i_arrayidx1_conv2d1x10_narrow_x_b, i_arrayidx1_conv2d1x126_vt_const_1_q};

    // valid_fanout_reg7(REG,117)@7 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg7_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg7_q <= $unsigned(redist3_sync_together78_aunroll_x_in_i_valid_6_q);
        end
    end

    // i_llvm_fpga_sync_buffer_p1024f32_filter_bias_sync_buffer_conv2d1x125(BLACKBOX,59)@0
    // in in_i_dependence@8
    // in in_valid_in@8
    // out out_buffer_out@8
    // out out_valid_out@8
    conv2d1x1_i_llvm_fpga_sync_buffer_p1024f0000r_bias_sync_buffer_0 thei_llvm_fpga_sync_buffer_p1024f32_filter_bias_sync_buffer_conv2d1x125 (
        .in_buffer_in(in_filter_bias),
        .in_i_dependence(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg7_q),
        .out_buffer_out(i_llvm_fpga_sync_buffer_p1024f32_filter_bias_sync_buffer_conv2d1x125_out_buffer_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_sync_buffer_p1024f32_filter_bias_sync_buffer_conv2d1x125_vt_select_63(BITSELECT,62)@8
    assign i_llvm_fpga_sync_buffer_p1024f32_filter_bias_sync_buffer_conv2d1x125_vt_select_63_b = i_llvm_fpga_sync_buffer_p1024f32_filter_bias_sync_buffer_conv2d1x125_out_buffer_out[63:10];

    // i_llvm_fpga_sync_buffer_p1024f32_filter_bias_sync_buffer_conv2d1x125_vt_const_9(CONSTANT,60)
    assign i_llvm_fpga_sync_buffer_p1024f32_filter_bias_sync_buffer_conv2d1x125_vt_const_9_q = $unsigned(10'b0000000000);

    // i_llvm_fpga_sync_buffer_p1024f32_filter_bias_sync_buffer_conv2d1x125_vt_join(BITJOIN,61)@8
    assign i_llvm_fpga_sync_buffer_p1024f32_filter_bias_sync_buffer_conv2d1x125_vt_join_q = {i_llvm_fpga_sync_buffer_p1024f32_filter_bias_sync_buffer_conv2d1x125_vt_select_63_b, i_llvm_fpga_sync_buffer_p1024f32_filter_bias_sync_buffer_conv2d1x125_vt_const_9_q};

    // i_arrayidx1_conv2d1x10_add_x(ADD,100)@8
    assign i_arrayidx1_conv2d1x10_add_x_a = {1'b0, i_llvm_fpga_sync_buffer_p1024f32_filter_bias_sync_buffer_conv2d1x125_vt_join_q};
    assign i_arrayidx1_conv2d1x10_add_x_b = {1'b0, i_arrayidx1_conv2d1x10_shift_join_x_q};
    assign i_arrayidx1_conv2d1x10_add_x_o = $unsigned(i_arrayidx1_conv2d1x10_add_x_a) + $unsigned(i_arrayidx1_conv2d1x10_add_x_b);
    assign i_arrayidx1_conv2d1x10_add_x_q = i_arrayidx1_conv2d1x10_add_x_o[64:0];

    // i_arrayidx1_conv2d1x10_dupName_0_trunc_sel_x(BITSELECT,105)@8
    assign i_arrayidx1_conv2d1x10_dupName_0_trunc_sel_x_b = i_arrayidx1_conv2d1x10_add_x_q[63:0];

    // i_arrayidx1_conv2d1x126_vt_select_63(BITSELECT,35)@8
    assign i_arrayidx1_conv2d1x126_vt_select_63_b = i_arrayidx1_conv2d1x10_dupName_0_trunc_sel_x_b[63:2];

    // i_arrayidx1_conv2d1x126_vt_const_1(CONSTANT,33)
    assign i_arrayidx1_conv2d1x126_vt_const_1_q = $unsigned(2'b00);

    // i_arrayidx1_conv2d1x126_vt_join(BITJOIN,34)@8
    assign i_arrayidx1_conv2d1x126_vt_join_q = {i_arrayidx1_conv2d1x126_vt_select_63_b, i_arrayidx1_conv2d1x126_vt_const_1_q};

    // c_i32_160(CONSTANT,29)
    assign c_i32_160_q = $unsigned(32'b11111111111111111111111111111111);

    // redist4_bgTrunc_i_mul_conv2d1x110_sel_x_b_2(DELAY,193)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_bgTrunc_i_mul_conv2d1x110_sel_x_b_2_delay_0 <= '0;
            redist4_bgTrunc_i_mul_conv2d1x110_sel_x_b_2_q <= '0;
        end
        else
        begin
            redist4_bgTrunc_i_mul_conv2d1x110_sel_x_b_2_delay_0 <= $unsigned(bgTrunc_i_mul_conv2d1x110_sel_x_b);
            redist4_bgTrunc_i_mul_conv2d1x110_sel_x_b_2_q <= redist4_bgTrunc_i_mul_conv2d1x110_sel_x_b_2_delay_0;
        end
    end

    // i_unnamed_conv2d1x118(COMPARE,71)@7 + 1
    assign i_unnamed_conv2d1x118_a = {2'b00, c_i32_159_q};
    assign i_unnamed_conv2d1x118_b = {2'b00, redist4_bgTrunc_i_mul_conv2d1x110_sel_x_b_2_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_unnamed_conv2d1x118_o <= 34'b0;
        end
        else
        begin
            i_unnamed_conv2d1x118_o <= $unsigned(i_unnamed_conv2d1x118_a) - $unsigned(i_unnamed_conv2d1x118_b);
        end
    end
    assign i_unnamed_conv2d1x118_c[0] = i_unnamed_conv2d1x118_o[33];

    // i_umax_conv2d1x119(MUX,67)@8
    assign i_umax_conv2d1x119_s = i_unnamed_conv2d1x118_c;
    always @(i_umax_conv2d1x119_s or c_i32_159_q or redist5_bgTrunc_i_mul_conv2d1x110_sel_x_b_3_q)
    begin
        unique case (i_umax_conv2d1x119_s)
            1'b0 : i_umax_conv2d1x119_q = c_i32_159_q;
            1'b1 : i_umax_conv2d1x119_q = redist5_bgTrunc_i_mul_conv2d1x110_sel_x_b_3_q;
            default : i_umax_conv2d1x119_q = 32'b0;
        endcase
    end

    // i_unnamed_conv2d1x120(ADD,72)@8
    assign i_unnamed_conv2d1x120_a = {1'b0, i_umax_conv2d1x119_q};
    assign i_unnamed_conv2d1x120_b = {1'b0, c_i32_160_q};
    assign i_unnamed_conv2d1x120_o = $unsigned(i_unnamed_conv2d1x120_a) + $unsigned(i_unnamed_conv2d1x120_b);
    assign i_unnamed_conv2d1x120_q = i_unnamed_conv2d1x120_o[32:0];

    // bgTrunc_i_unnamed_conv2d1x120_sel_x(BITSELECT,96)@8
    assign bgTrunc_i_unnamed_conv2d1x120_sel_x_b = i_unnamed_conv2d1x120_q[31:0];

    // i_unnamed_conv2d1x121_sel_x(BITSELECT,107)@8
    assign i_unnamed_conv2d1x121_sel_x_b = {1'b0, bgTrunc_i_unnamed_conv2d1x120_sel_x_b[31:0]};

    // i_unnamed_conv2d1x121_vt_select_31(BITSELECT,76)@8
    assign i_unnamed_conv2d1x121_vt_select_31_b = i_unnamed_conv2d1x121_sel_x_b[31:0];

    // i_unnamed_conv2d1x121_vt_join(BITJOIN,75)@8
    assign i_unnamed_conv2d1x121_vt_join_q = {GND_q, i_unnamed_conv2d1x121_vt_select_31_b};

    // i_unnamed_conv2d1x122(ADD,77)@8
    assign i_unnamed_conv2d1x122_a = {1'b0, i_unnamed_conv2d1x121_vt_join_q};
    assign i_unnamed_conv2d1x122_b = {1'b0, c_i33_161_q};
    assign i_unnamed_conv2d1x122_o = $unsigned(i_unnamed_conv2d1x122_a) + $unsigned(i_unnamed_conv2d1x122_b);
    assign i_unnamed_conv2d1x122_q = i_unnamed_conv2d1x122_o[33:0];

    // bgTrunc_i_unnamed_conv2d1x122_sel_x(BITSELECT,97)@8
    assign bgTrunc_i_unnamed_conv2d1x122_sel_x_b = i_unnamed_conv2d1x122_q[32:0];

    // i_cmp227_conv2d1x111(LOGICAL,36)@8
    assign i_cmp227_conv2d1x111_q = $unsigned(redist5_bgTrunc_i_mul_conv2d1x110_sel_x_b_3_q != c_i32_058_q ? 1'b1 : 1'b0);

    // valid_fanout_reg4(REG,114)@7 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg4_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg4_q <= $unsigned(redist3_sync_together78_aunroll_x_in_i_valid_6_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i1_cmp309_conv2d1x113(BLACKBOX,47)@8
    conv2d1x1_i_llvm_fpga_ffwd_dest_i1_cmp309_0 thei_llvm_fpga_ffwd_dest_i1_cmp309_conv2d1x113 (
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_dest_data_out_0_0(i_llvm_fpga_ffwd_dest_i1_cmp309_conv2d1x113_out_dest_data_out_0_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_conv2d1x114(LOGICAL,68)@8
    assign i_unnamed_conv2d1x114_q = i_llvm_fpga_ffwd_dest_i1_cmp309_conv2d1x113_out_dest_data_out_0_0 & i_cmp227_conv2d1x111_q;

    // i_unnamed_conv2d1x117(LOGICAL,70)@8
    assign i_unnamed_conv2d1x117_q = i_unnamed_conv2d1x114_q ^ VCC_q;

    // valid_fanout_reg5(REG,115)@7 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg5_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg5_q <= $unsigned(redist3_sync_together78_aunroll_x_in_i_valid_6_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i1_cmp62414_conv2d1x115(BLACKBOX,48)@8
    conv2d1x1_i_llvm_fpga_ffwd_dest_i1_cmp62414_0 thei_llvm_fpga_ffwd_dest_i1_cmp62414_conv2d1x115 (
        .in_intel_reserved_ffwd_2_0(in_intel_reserved_ffwd_2_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_dest_data_out_2_0(i_llvm_fpga_ffwd_dest_i1_cmp62414_conv2d1x115_out_dest_data_out_2_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_conv2d1x116(LOGICAL,69)@8
    assign i_unnamed_conv2d1x116_q = i_unnamed_conv2d1x114_q & i_llvm_fpga_ffwd_dest_i1_cmp62414_conv2d1x115_out_dest_data_out_2_0;

    // redist5_bgTrunc_i_mul_conv2d1x110_sel_x_b_3(DELAY,194)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_bgTrunc_i_mul_conv2d1x110_sel_x_b_3_q <= '0;
        end
        else
        begin
            redist5_bgTrunc_i_mul_conv2d1x110_sel_x_b_3_q <= $unsigned(redist4_bgTrunc_i_mul_conv2d1x110_sel_x_b_2_q);
        end
    end

    // valid_fanout_reg1(REG,111)@7 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg1_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg1_q <= $unsigned(redist3_sync_together78_aunroll_x_in_i_valid_6_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i1_cmp306_conv2d1x16(BLACKBOX,45)@8
    conv2d1x1_i_llvm_fpga_ffwd_dest_i1_cmp306_0 thei_llvm_fpga_ffwd_dest_i1_cmp306_conv2d1x16 (
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_dest_data_out_0_0(i_llvm_fpga_ffwd_dest_i1_cmp306_conv2d1x16_out_dest_data_out_0_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_conv2d1x17(LOGICAL,79)@8
    assign i_unnamed_conv2d1x17_q = i_llvm_fpga_ffwd_dest_i1_cmp306_conv2d1x16_out_dest_data_out_0_0 ^ VCC_q;

    // sync_out_aunroll_x(GPOUT,108)@8
    assign out_c0_exi10_0_tpl = GND_q;
    assign out_c0_exi10_1_tpl = i_unnamed_conv2d1x17_q;
    assign out_c0_exi10_2_tpl = redist5_bgTrunc_i_mul_conv2d1x110_sel_x_b_3_q;
    assign out_c0_exi10_3_tpl = i_unnamed_conv2d1x116_q;
    assign out_c0_exi10_4_tpl = i_unnamed_conv2d1x117_q;
    assign out_c0_exi10_5_tpl = bgTrunc_i_unnamed_conv2d1x122_sel_x_b;
    assign out_c0_exi10_6_tpl = i_arrayidx1_conv2d1x126_vt_join_q;
    assign out_c0_exi10_7_tpl = bgTrunc_i_mul13_conv2d1x128_sel_x_b;
    assign out_c0_exi10_8_tpl = bgTrunc_i_mul23_conv2d1x129_sel_x_b;
    assign out_c0_exi10_9_tpl = redist7_i_unnamed_conv2d1x133_q_7_q;
    assign out_c0_exi10_10_tpl = i_notcmp22_conv2d1x134_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_conv2d1x16 = GND_q;

endmodule
