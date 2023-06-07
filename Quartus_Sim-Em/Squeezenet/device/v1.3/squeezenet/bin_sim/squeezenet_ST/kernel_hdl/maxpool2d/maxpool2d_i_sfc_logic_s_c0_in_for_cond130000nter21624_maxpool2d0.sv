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

// SystemVerilog created from maxpool2d_i_sfc_logic_s_c0_in_for_cond130000nter21624_maxpool2d0
// SystemVerilog created on Tue Jun  6 18:48:20 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module maxpool2d_i_sfc_logic_s_c0_in_for_cond130000nter21624_maxpool2d0 (
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going16_maxpool2d2_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going16_maxpool2d2_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [31:0] in_input_size,
    input wire [0:0] in_intel_reserved_ffwd_1_0,
    output wire [0:0] out_c0_exi29_0_tpl,
    output wire [31:0] out_c0_exi29_1_tpl,
    output wire [31:0] out_c0_exi29_2_tpl,
    output wire [31:0] out_c0_exi29_3_tpl,
    output wire [0:0] out_c0_exi29_4_tpl,
    output wire [0:0] out_c0_exi29_5_tpl,
    output wire [63:0] out_c0_exi29_6_tpl,
    output wire [63:0] out_c0_exi29_7_tpl,
    output wire [0:0] out_c0_exi29_8_tpl,
    output wire [31:0] out_c0_exi29_9_tpl,
    output wire [0:0] out_c0_exi29_10_tpl,
    output wire [0:0] out_c0_exi29_11_tpl,
    output wire [0:0] out_c0_exi29_12_tpl,
    output wire [63:0] out_c0_exi29_13_tpl,
    output wire [63:0] out_c0_exi29_14_tpl,
    output wire [0:0] out_c0_exi29_15_tpl,
    output wire [31:0] out_c0_exi29_16_tpl,
    output wire [31:0] out_c0_exi29_17_tpl,
    output wire [0:0] out_c0_exi29_18_tpl,
    output wire [63:0] out_c0_exi29_19_tpl,
    output wire [63:0] out_c0_exi29_20_tpl,
    output wire [0:0] out_c0_exi29_21_tpl,
    output wire [0:0] out_c0_exi29_22_tpl,
    output wire [31:0] out_c0_exi29_23_tpl,
    output wire [63:0] out_c0_exi29_24_tpl,
    output wire [63:0] out_c0_exi29_25_tpl,
    output wire [0:0] out_c0_exi29_26_tpl,
    output wire [31:0] out_c0_exi29_27_tpl,
    output wire [31:0] out_c0_exi29_28_tpl,
    output wire [0:0] out_c0_exi29_29_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_maxpool2d7,
    input wire [0:0] in_c0_eni18_0_tpl,
    input wire [31:0] in_c0_eni18_1_tpl,
    input wire [0:0] in_c0_eni18_2_tpl,
    input wire [31:0] in_c0_eni18_3_tpl,
    input wire [63:0] in_c0_eni18_4_tpl,
    input wire [63:0] in_c0_eni18_5_tpl,
    input wire [0:0] in_c0_eni18_6_tpl,
    input wire [31:0] in_c0_eni18_7_tpl,
    input wire [0:0] in_c0_eni18_8_tpl,
    input wire [0:0] in_c0_eni18_9_tpl,
    input wire [63:0] in_c0_eni18_10_tpl,
    input wire [63:0] in_c0_eni18_11_tpl,
    input wire [0:0] in_c0_eni18_12_tpl,
    input wire [31:0] in_c0_eni18_13_tpl,
    input wire [31:0] in_c0_eni18_14_tpl,
    input wire [0:0] in_c0_eni18_15_tpl,
    input wire [63:0] in_c0_eni18_16_tpl,
    input wire [63:0] in_c0_eni18_17_tpl,
    input wire [0:0] in_c0_eni18_18_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] c_i32_063_q;
    wire [31:0] c_i32_162_q;
    wire [2:0] c_i3_164_q;
    wire [2:0] c_i3_166_q;
    wire [32:0] i_add19_maxpool2d10_a;
    wire [32:0] i_add19_maxpool2d10_b;
    logic [32:0] i_add19_maxpool2d10_o;
    wire [32:0] i_add19_maxpool2d10_q;
    wire [32:0] i_add_maxpool2d7_a;
    wire [32:0] i_add_maxpool2d7_b;
    logic [32:0] i_add_maxpool2d7_o;
    wire [32:0] i_add_maxpool2d7_q;
    wire [3:0] i_fpga_indvars_iv_next27_maxpool2d20_a;
    wire [3:0] i_fpga_indvars_iv_next27_maxpool2d20_b;
    logic [3:0] i_fpga_indvars_iv_next27_maxpool2d20_o;
    wire [3:0] i_fpga_indvars_iv_next27_maxpool2d20_q;
    wire [32:0] i_inc23_maxpool2d22_a;
    wire [32:0] i_inc23_maxpool2d22_b;
    logic [32:0] i_inc23_maxpool2d22_o;
    wire [32:0] i_inc23_maxpool2d22_q;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_maxpool2d12_maxpool2d14_out_dest_data_out_1_0;
    wire [0:0] i_llvm_fpga_pipeline_keep_going16_maxpool2d2_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going16_maxpool2d2_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going16_maxpool2d2_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going16_maxpool2d2_out_pipeline_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp1953_pop35_maxpool2d34_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp1953_pop35_maxpool2d34_out_feedback_stall_out_35;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp2351_pop34_maxpool2d32_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp2351_pop34_maxpool2d32_out_feedback_stall_out_34;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp2742_pop31_maxpool2d28_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp2742_pop31_maxpool2d28_out_feedback_stall_out_31;
    wire [31:0] i_llvm_fpga_pop_i32_j_034_pop2055_pop36_maxpool2d3_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_j_034_pop2055_pop36_maxpool2d3_out_feedback_stall_out_36;
    wire [31:0] i_llvm_fpga_pop_i32_k_032_pop28_maxpool2d5_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_k_032_pop28_maxpool2d5_out_feedback_stall_out_28;
    wire [31:0] i_llvm_fpga_pop_i32_mul2548_pop33_maxpool2d30_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_mul2548_pop33_maxpool2d30_out_feedback_stall_out_33;
    wire [31:0] i_llvm_fpga_pop_i32_mul45_pop32_maxpool2d6_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_mul45_pop32_maxpool2d6_out_feedback_stall_out_32;
    wire [2:0] i_llvm_fpga_pop_i3_fpga_indvars_iv26_pop27_maxpool2d11_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i3_fpga_indvars_iv26_pop27_maxpool2d11_out_feedback_stall_out_27;
    wire [63:0] i_llvm_fpga_pop_p1024f32_input_im_addr_041_replace_phi38_pop30_maxpool2d26_out_data_out;
    wire [0:0] i_llvm_fpga_pop_p1024f32_input_im_addr_041_replace_phi38_pop30_maxpool2d26_out_feedback_stall_out_30;
    wire [63:0] i_llvm_fpga_pop_p1024f32_output_im_addr_042_replace_phi34_pop29_maxpool2d24_out_data_out;
    wire [0:0] i_llvm_fpga_pop_p1024f32_output_im_addr_042_replace_phi34_pop29_maxpool2d24_out_feedback_stall_out_29;
    wire [0:0] i_llvm_fpga_push_i1_notcmp1953_push35_maxpool2d35_out_feedback_out_35;
    wire [0:0] i_llvm_fpga_push_i1_notcmp1953_push35_maxpool2d35_out_feedback_valid_out_35;
    wire [0:0] i_llvm_fpga_push_i1_notcmp2351_push34_maxpool2d33_out_feedback_out_34;
    wire [0:0] i_llvm_fpga_push_i1_notcmp2351_push34_maxpool2d33_out_feedback_valid_out_34;
    wire [0:0] i_llvm_fpga_push_i1_notcmp2742_push31_maxpool2d29_out_feedback_out_31;
    wire [0:0] i_llvm_fpga_push_i1_notcmp2742_push31_maxpool2d29_out_feedback_valid_out_31;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond17_maxpool2d19_out_feedback_out_4;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond17_maxpool2d19_out_feedback_valid_out_4;
    wire [31:0] i_llvm_fpga_push_i32_j_034_pop2055_push36_maxpool2d16_out_feedback_out_36;
    wire [0:0] i_llvm_fpga_push_i32_j_034_pop2055_push36_maxpool2d16_out_feedback_valid_out_36;
    wire [31:0] i_llvm_fpga_push_i32_k_032_push28_maxpool2d23_out_feedback_out_28;
    wire [0:0] i_llvm_fpga_push_i32_k_032_push28_maxpool2d23_out_feedback_valid_out_28;
    wire [31:0] i_llvm_fpga_push_i32_mul2548_push33_maxpool2d31_out_feedback_out_33;
    wire [0:0] i_llvm_fpga_push_i32_mul2548_push33_maxpool2d31_out_feedback_valid_out_33;
    wire [31:0] i_llvm_fpga_push_i32_mul45_push32_maxpool2d17_out_feedback_out_32;
    wire [0:0] i_llvm_fpga_push_i32_mul45_push32_maxpool2d17_out_feedback_valid_out_32;
    wire [7:0] i_llvm_fpga_push_i3_fpga_indvars_iv26_push27_maxpool2d21_out_feedback_out_27;
    wire [0:0] i_llvm_fpga_push_i3_fpga_indvars_iv26_push27_maxpool2d21_out_feedback_valid_out_27;
    wire [63:0] i_llvm_fpga_push_p1024f32_input_im_addr_041_replace_phi38_push30_maxpool2d27_out_feedback_out_30;
    wire [0:0] i_llvm_fpga_push_p1024f32_input_im_addr_041_replace_phi38_push30_maxpool2d27_out_feedback_valid_out_30;
    wire [63:0] i_llvm_fpga_push_p1024f32_output_im_addr_042_replace_phi34_push29_maxpool2d25_out_feedback_out_29;
    wire [0:0] i_llvm_fpga_push_p1024f32_output_im_addr_042_replace_phi34_push29_maxpool2d25_out_feedback_valid_out_29;
    wire [31:0] i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer_maxpool2d8_out_buffer_out;
    wire [31:0] i_mul18_maxpool2d4_vt_join_q;
    wire [30:0] i_mul18_maxpool2d4_vt_select_31_b;
    wire [0:0] i_notcmp14_maxpool2d18_q;
    wire [0:0] i_unnamed_maxpool2d15_q;
    wire [31:0] bgTrunc_i_add19_maxpool2d10_sel_x_b;
    wire [31:0] bgTrunc_i_add_maxpool2d7_sel_x_b;
    wire [2:0] bgTrunc_i_fpga_indvars_iv_next27_maxpool2d20_sel_x_b;
    wire [31:0] bgTrunc_i_inc23_maxpool2d22_sel_x_b;
    wire [63:0] bgTrunc_i_mul17_maxpool2d9_sel_x_in;
    wire [31:0] bgTrunc_i_mul17_maxpool2d9_sel_x_b;
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
    wire [0:0] i_exitcond28_maxpool2d12_cmp_nsign_q;
    wire [63:0] i_mul17_maxpool2d9_sums_join_0_q;
    wire [50:0] i_mul17_maxpool2d9_sums_align_1_q;
    wire [50:0] i_mul17_maxpool2d9_sums_align_1_qint;
    wire [64:0] i_mul17_maxpool2d9_sums_result_add_0_0_a;
    wire [64:0] i_mul17_maxpool2d9_sums_result_add_0_0_b;
    logic [64:0] i_mul17_maxpool2d9_sums_result_add_0_0_o;
    wire [64:0] i_mul17_maxpool2d9_sums_result_add_0_0_q;
    wire [30:0] leftShiftStage0Idx1Rng1_uid139_i_mul18_maxpool2d0_shift_x_in;
    wire [30:0] leftShiftStage0Idx1Rng1_uid139_i_mul18_maxpool2d0_shift_x_b;
    wire [31:0] leftShiftStage0Idx1_uid140_i_mul18_maxpool2d0_shift_x_q;
    wire [0:0] leftShiftStage0_uid142_i_mul18_maxpool2d0_shift_x_s;
    reg [31:0] leftShiftStage0_uid142_i_mul18_maxpool2d0_shift_x_q;
    wire i_mul17_maxpool2d9_im0_cma_reset;
    wire [13:0] i_mul17_maxpool2d9_im0_cma_a0;
    wire [13:0] i_mul17_maxpool2d9_im0_cma_c0;
    wire [27:0] i_mul17_maxpool2d9_im0_cma_s0;
    wire [27:0] i_mul17_maxpool2d9_im0_cma_qq;
    wire [27:0] i_mul17_maxpool2d9_im0_cma_q;
    wire i_mul17_maxpool2d9_im0_cma_ena0;
    wire i_mul17_maxpool2d9_im0_cma_ena1;
    wire i_mul17_maxpool2d9_im0_cma_ena2;
    wire i_mul17_maxpool2d9_im8_cma_reset;
    wire [17:0] i_mul17_maxpool2d9_im8_cma_a0;
    wire [17:0] i_mul17_maxpool2d9_im8_cma_c0;
    wire [35:0] i_mul17_maxpool2d9_im8_cma_s0;
    wire [35:0] i_mul17_maxpool2d9_im8_cma_qq;
    wire [35:0] i_mul17_maxpool2d9_im8_cma_q;
    wire i_mul17_maxpool2d9_im8_cma_ena0;
    wire i_mul17_maxpool2d9_im8_cma_ena1;
    wire i_mul17_maxpool2d9_im8_cma_ena2;
    wire i_mul17_maxpool2d9_ma3_cma_reset;
    wire [13:0] i_mul17_maxpool2d9_ma3_cma_a0;
    wire [17:0] i_mul17_maxpool2d9_ma3_cma_c0;
    wire [13:0] i_mul17_maxpool2d9_ma3_cma_a1;
    wire [17:0] i_mul17_maxpool2d9_ma3_cma_c1;
    wire [32:0] i_mul17_maxpool2d9_ma3_cma_s0;
    wire [32:0] i_mul17_maxpool2d9_ma3_cma_qq;
    wire [32:0] i_mul17_maxpool2d9_ma3_cma_q;
    wire i_mul17_maxpool2d9_ma3_cma_ena0;
    wire i_mul17_maxpool2d9_ma3_cma_ena1;
    wire i_mul17_maxpool2d9_ma3_cma_ena2;
    wire [13:0] i_mul17_maxpool2d9_bs2_merged_bit_select_b;
    wire [17:0] i_mul17_maxpool2d9_bs2_merged_bit_select_c;
    wire [13:0] i_mul17_maxpool2d9_bs1_merged_bit_select_b;
    wire [17:0] i_mul17_maxpool2d9_bs1_merged_bit_select_c;
    reg [0:0] redist1_sync_together94_aunroll_x_in_c0_eni18_2_tpl_1_q;
    reg [0:0] redist2_sync_together94_aunroll_x_in_c0_eni18_2_tpl_5_q;
    reg [0:0] redist2_sync_together94_aunroll_x_in_c0_eni18_2_tpl_5_delay_0;
    reg [0:0] redist2_sync_together94_aunroll_x_in_c0_eni18_2_tpl_5_delay_1;
    reg [0:0] redist2_sync_together94_aunroll_x_in_c0_eni18_2_tpl_5_delay_2;
    reg [31:0] redist3_sync_together94_aunroll_x_in_c0_eni18_3_tpl_1_q;
    reg [0:0] redist7_sync_together94_aunroll_x_in_c0_eni18_6_tpl_5_q;
    reg [0:0] redist7_sync_together94_aunroll_x_in_c0_eni18_6_tpl_5_delay_0;
    reg [0:0] redist7_sync_together94_aunroll_x_in_c0_eni18_6_tpl_5_delay_1;
    reg [0:0] redist7_sync_together94_aunroll_x_in_c0_eni18_6_tpl_5_delay_2;
    reg [0:0] redist7_sync_together94_aunroll_x_in_c0_eni18_6_tpl_5_delay_3;
    reg [0:0] redist9_sync_together94_aunroll_x_in_c0_eni18_8_tpl_5_q;
    reg [0:0] redist9_sync_together94_aunroll_x_in_c0_eni18_8_tpl_5_delay_0;
    reg [0:0] redist9_sync_together94_aunroll_x_in_c0_eni18_8_tpl_5_delay_1;
    reg [0:0] redist9_sync_together94_aunroll_x_in_c0_eni18_8_tpl_5_delay_2;
    reg [0:0] redist9_sync_together94_aunroll_x_in_c0_eni18_8_tpl_5_delay_3;
    reg [0:0] redist10_sync_together94_aunroll_x_in_c0_eni18_9_tpl_5_q;
    reg [0:0] redist10_sync_together94_aunroll_x_in_c0_eni18_9_tpl_5_delay_0;
    reg [0:0] redist10_sync_together94_aunroll_x_in_c0_eni18_9_tpl_5_delay_1;
    reg [0:0] redist10_sync_together94_aunroll_x_in_c0_eni18_9_tpl_5_delay_2;
    reg [0:0] redist10_sync_together94_aunroll_x_in_c0_eni18_9_tpl_5_delay_3;
    reg [0:0] redist13_sync_together94_aunroll_x_in_c0_eni18_12_tpl_5_q;
    reg [0:0] redist13_sync_together94_aunroll_x_in_c0_eni18_12_tpl_5_delay_0;
    reg [0:0] redist13_sync_together94_aunroll_x_in_c0_eni18_12_tpl_5_delay_1;
    reg [0:0] redist13_sync_together94_aunroll_x_in_c0_eni18_12_tpl_5_delay_2;
    reg [0:0] redist13_sync_together94_aunroll_x_in_c0_eni18_12_tpl_5_delay_3;
    reg [0:0] redist16_sync_together94_aunroll_x_in_c0_eni18_15_tpl_5_q;
    reg [0:0] redist16_sync_together94_aunroll_x_in_c0_eni18_15_tpl_5_delay_0;
    reg [0:0] redist16_sync_together94_aunroll_x_in_c0_eni18_15_tpl_5_delay_1;
    reg [0:0] redist16_sync_together94_aunroll_x_in_c0_eni18_15_tpl_5_delay_2;
    reg [0:0] redist16_sync_together94_aunroll_x_in_c0_eni18_15_tpl_5_delay_3;
    reg [0:0] redist19_sync_together94_aunroll_x_in_c0_eni18_18_tpl_5_q;
    reg [0:0] redist19_sync_together94_aunroll_x_in_c0_eni18_18_tpl_5_delay_0;
    reg [0:0] redist19_sync_together94_aunroll_x_in_c0_eni18_18_tpl_5_delay_1;
    reg [0:0] redist19_sync_together94_aunroll_x_in_c0_eni18_18_tpl_5_delay_2;
    reg [0:0] redist19_sync_together94_aunroll_x_in_c0_eni18_18_tpl_5_delay_3;
    reg [0:0] redist20_sync_together94_aunroll_x_in_i_valid_1_q;
    reg [0:0] redist21_sync_together94_aunroll_x_in_i_valid_4_q;
    reg [0:0] redist21_sync_together94_aunroll_x_in_i_valid_4_delay_0;
    reg [0:0] redist21_sync_together94_aunroll_x_in_i_valid_4_delay_1;
    reg [31:0] redist22_bgTrunc_i_mul17_maxpool2d9_sel_x_b_1_q;
    reg [0:0] redist23_i_unnamed_maxpool2d15_q_1_q;
    reg [0:0] redist24_i_unnamed_maxpool2d15_q_2_q;
    reg [0:0] redist25_i_unnamed_maxpool2d15_q_5_q;
    reg [0:0] redist25_i_unnamed_maxpool2d15_q_5_delay_0;
    reg [0:0] redist25_i_unnamed_maxpool2d15_q_5_delay_1;
    reg [31:0] redist26_i_llvm_fpga_pop_i32_mul45_pop32_maxpool2d6_out_data_out_1_q;
    reg [31:0] redist0_sync_together94_aunroll_x_in_c0_eni18_1_tpl_5_outputreg0_q;
    wire redist0_sync_together94_aunroll_x_in_c0_eni18_1_tpl_5_mem_reset0;
    wire [31:0] redist0_sync_together94_aunroll_x_in_c0_eni18_1_tpl_5_mem_ia;
    wire [1:0] redist0_sync_together94_aunroll_x_in_c0_eni18_1_tpl_5_mem_aa;
    wire [1:0] redist0_sync_together94_aunroll_x_in_c0_eni18_1_tpl_5_mem_ab;
    wire [31:0] redist0_sync_together94_aunroll_x_in_c0_eni18_1_tpl_5_mem_iq;
    wire [31:0] redist0_sync_together94_aunroll_x_in_c0_eni18_1_tpl_5_mem_q;
    wire [1:0] redist0_sync_together94_aunroll_x_in_c0_eni18_1_tpl_5_rdcnt_q;
    (* preserve *) reg [1:0] redist0_sync_together94_aunroll_x_in_c0_eni18_1_tpl_5_rdcnt_i;
    (* preserve *) reg redist0_sync_together94_aunroll_x_in_c0_eni18_1_tpl_5_rdcnt_eq;
    reg [1:0] redist0_sync_together94_aunroll_x_in_c0_eni18_1_tpl_5_wraddr_q;
    wire [1:0] redist0_sync_together94_aunroll_x_in_c0_eni18_1_tpl_5_mem_last_q;
    wire [0:0] redist0_sync_together94_aunroll_x_in_c0_eni18_1_tpl_5_cmp_q;
    (* dont_merge *) reg [0:0] redist0_sync_together94_aunroll_x_in_c0_eni18_1_tpl_5_cmpReg_q;
    wire [0:0] redist0_sync_together94_aunroll_x_in_c0_eni18_1_tpl_5_notEnable_q;
    wire [0:0] redist0_sync_together94_aunroll_x_in_c0_eni18_1_tpl_5_nor_q;
    (* dont_merge *) reg [0:0] redist0_sync_together94_aunroll_x_in_c0_eni18_1_tpl_5_sticky_ena_q;
    wire [0:0] redist0_sync_together94_aunroll_x_in_c0_eni18_1_tpl_5_enaAnd_q;
    wire redist4_sync_together94_aunroll_x_in_c0_eni18_3_tpl_5_mem_reset0;
    wire [31:0] redist4_sync_together94_aunroll_x_in_c0_eni18_3_tpl_5_mem_ia;
    wire [1:0] redist4_sync_together94_aunroll_x_in_c0_eni18_3_tpl_5_mem_aa;
    wire [1:0] redist4_sync_together94_aunroll_x_in_c0_eni18_3_tpl_5_mem_ab;
    wire [31:0] redist4_sync_together94_aunroll_x_in_c0_eni18_3_tpl_5_mem_iq;
    wire [31:0] redist4_sync_together94_aunroll_x_in_c0_eni18_3_tpl_5_mem_q;
    wire [1:0] redist4_sync_together94_aunroll_x_in_c0_eni18_3_tpl_5_rdcnt_q;
    (* preserve *) reg [1:0] redist4_sync_together94_aunroll_x_in_c0_eni18_3_tpl_5_rdcnt_i;
    (* preserve *) reg redist4_sync_together94_aunroll_x_in_c0_eni18_3_tpl_5_rdcnt_eq;
    reg [1:0] redist4_sync_together94_aunroll_x_in_c0_eni18_3_tpl_5_wraddr_q;
    wire [1:0] redist4_sync_together94_aunroll_x_in_c0_eni18_3_tpl_5_mem_last_q;
    wire [0:0] redist4_sync_together94_aunroll_x_in_c0_eni18_3_tpl_5_cmp_q;
    (* dont_merge *) reg [0:0] redist4_sync_together94_aunroll_x_in_c0_eni18_3_tpl_5_cmpReg_q;
    wire [0:0] redist4_sync_together94_aunroll_x_in_c0_eni18_3_tpl_5_notEnable_q;
    wire [0:0] redist4_sync_together94_aunroll_x_in_c0_eni18_3_tpl_5_nor_q;
    (* dont_merge *) reg [0:0] redist4_sync_together94_aunroll_x_in_c0_eni18_3_tpl_5_sticky_ena_q;
    wire [0:0] redist4_sync_together94_aunroll_x_in_c0_eni18_3_tpl_5_enaAnd_q;
    wire redist5_sync_together94_aunroll_x_in_c0_eni18_4_tpl_5_mem_reset0;
    wire [63:0] redist5_sync_together94_aunroll_x_in_c0_eni18_4_tpl_5_mem_ia;
    wire [1:0] redist5_sync_together94_aunroll_x_in_c0_eni18_4_tpl_5_mem_aa;
    wire [1:0] redist5_sync_together94_aunroll_x_in_c0_eni18_4_tpl_5_mem_ab;
    wire [63:0] redist5_sync_together94_aunroll_x_in_c0_eni18_4_tpl_5_mem_iq;
    wire [63:0] redist5_sync_together94_aunroll_x_in_c0_eni18_4_tpl_5_mem_q;
    wire [1:0] redist5_sync_together94_aunroll_x_in_c0_eni18_4_tpl_5_rdcnt_q;
    (* preserve *) reg [1:0] redist5_sync_together94_aunroll_x_in_c0_eni18_4_tpl_5_rdcnt_i;
    reg [1:0] redist5_sync_together94_aunroll_x_in_c0_eni18_4_tpl_5_wraddr_q;
    wire [2:0] redist5_sync_together94_aunroll_x_in_c0_eni18_4_tpl_5_mem_last_q;
    wire [2:0] redist5_sync_together94_aunroll_x_in_c0_eni18_4_tpl_5_cmp_b;
    wire [0:0] redist5_sync_together94_aunroll_x_in_c0_eni18_4_tpl_5_cmp_q;
    (* dont_merge *) reg [0:0] redist5_sync_together94_aunroll_x_in_c0_eni18_4_tpl_5_cmpReg_q;
    wire [0:0] redist5_sync_together94_aunroll_x_in_c0_eni18_4_tpl_5_notEnable_q;
    wire [0:0] redist5_sync_together94_aunroll_x_in_c0_eni18_4_tpl_5_nor_q;
    (* dont_merge *) reg [0:0] redist5_sync_together94_aunroll_x_in_c0_eni18_4_tpl_5_sticky_ena_q;
    wire [0:0] redist5_sync_together94_aunroll_x_in_c0_eni18_4_tpl_5_enaAnd_q;
    wire redist6_sync_together94_aunroll_x_in_c0_eni18_5_tpl_5_mem_reset0;
    wire [63:0] redist6_sync_together94_aunroll_x_in_c0_eni18_5_tpl_5_mem_ia;
    wire [1:0] redist6_sync_together94_aunroll_x_in_c0_eni18_5_tpl_5_mem_aa;
    wire [1:0] redist6_sync_together94_aunroll_x_in_c0_eni18_5_tpl_5_mem_ab;
    wire [63:0] redist6_sync_together94_aunroll_x_in_c0_eni18_5_tpl_5_mem_iq;
    wire [63:0] redist6_sync_together94_aunroll_x_in_c0_eni18_5_tpl_5_mem_q;
    wire [1:0] redist6_sync_together94_aunroll_x_in_c0_eni18_5_tpl_5_rdcnt_q;
    (* preserve *) reg [1:0] redist6_sync_together94_aunroll_x_in_c0_eni18_5_tpl_5_rdcnt_i;
    reg [1:0] redist6_sync_together94_aunroll_x_in_c0_eni18_5_tpl_5_wraddr_q;
    wire [2:0] redist6_sync_together94_aunroll_x_in_c0_eni18_5_tpl_5_mem_last_q;
    wire [2:0] redist6_sync_together94_aunroll_x_in_c0_eni18_5_tpl_5_cmp_b;
    wire [0:0] redist6_sync_together94_aunroll_x_in_c0_eni18_5_tpl_5_cmp_q;
    (* dont_merge *) reg [0:0] redist6_sync_together94_aunroll_x_in_c0_eni18_5_tpl_5_cmpReg_q;
    wire [0:0] redist6_sync_together94_aunroll_x_in_c0_eni18_5_tpl_5_notEnable_q;
    wire [0:0] redist6_sync_together94_aunroll_x_in_c0_eni18_5_tpl_5_nor_q;
    (* dont_merge *) reg [0:0] redist6_sync_together94_aunroll_x_in_c0_eni18_5_tpl_5_sticky_ena_q;
    wire [0:0] redist6_sync_together94_aunroll_x_in_c0_eni18_5_tpl_5_enaAnd_q;
    wire redist8_sync_together94_aunroll_x_in_c0_eni18_7_tpl_5_mem_reset0;
    wire [31:0] redist8_sync_together94_aunroll_x_in_c0_eni18_7_tpl_5_mem_ia;
    wire [1:0] redist8_sync_together94_aunroll_x_in_c0_eni18_7_tpl_5_mem_aa;
    wire [1:0] redist8_sync_together94_aunroll_x_in_c0_eni18_7_tpl_5_mem_ab;
    wire [31:0] redist8_sync_together94_aunroll_x_in_c0_eni18_7_tpl_5_mem_iq;
    wire [31:0] redist8_sync_together94_aunroll_x_in_c0_eni18_7_tpl_5_mem_q;
    wire [1:0] redist8_sync_together94_aunroll_x_in_c0_eni18_7_tpl_5_rdcnt_q;
    (* preserve *) reg [1:0] redist8_sync_together94_aunroll_x_in_c0_eni18_7_tpl_5_rdcnt_i;
    reg [1:0] redist8_sync_together94_aunroll_x_in_c0_eni18_7_tpl_5_wraddr_q;
    wire [2:0] redist8_sync_together94_aunroll_x_in_c0_eni18_7_tpl_5_mem_last_q;
    wire [2:0] redist8_sync_together94_aunroll_x_in_c0_eni18_7_tpl_5_cmp_b;
    wire [0:0] redist8_sync_together94_aunroll_x_in_c0_eni18_7_tpl_5_cmp_q;
    (* dont_merge *) reg [0:0] redist8_sync_together94_aunroll_x_in_c0_eni18_7_tpl_5_cmpReg_q;
    wire [0:0] redist8_sync_together94_aunroll_x_in_c0_eni18_7_tpl_5_notEnable_q;
    wire [0:0] redist8_sync_together94_aunroll_x_in_c0_eni18_7_tpl_5_nor_q;
    (* dont_merge *) reg [0:0] redist8_sync_together94_aunroll_x_in_c0_eni18_7_tpl_5_sticky_ena_q;
    wire [0:0] redist8_sync_together94_aunroll_x_in_c0_eni18_7_tpl_5_enaAnd_q;
    wire redist11_sync_together94_aunroll_x_in_c0_eni18_10_tpl_5_mem_reset0;
    wire [63:0] redist11_sync_together94_aunroll_x_in_c0_eni18_10_tpl_5_mem_ia;
    wire [1:0] redist11_sync_together94_aunroll_x_in_c0_eni18_10_tpl_5_mem_aa;
    wire [1:0] redist11_sync_together94_aunroll_x_in_c0_eni18_10_tpl_5_mem_ab;
    wire [63:0] redist11_sync_together94_aunroll_x_in_c0_eni18_10_tpl_5_mem_iq;
    wire [63:0] redist11_sync_together94_aunroll_x_in_c0_eni18_10_tpl_5_mem_q;
    wire [1:0] redist11_sync_together94_aunroll_x_in_c0_eni18_10_tpl_5_rdcnt_q;
    (* preserve *) reg [1:0] redist11_sync_together94_aunroll_x_in_c0_eni18_10_tpl_5_rdcnt_i;
    reg [1:0] redist11_sync_together94_aunroll_x_in_c0_eni18_10_tpl_5_wraddr_q;
    wire [2:0] redist11_sync_together94_aunroll_x_in_c0_eni18_10_tpl_5_mem_last_q;
    wire [2:0] redist11_sync_together94_aunroll_x_in_c0_eni18_10_tpl_5_cmp_b;
    wire [0:0] redist11_sync_together94_aunroll_x_in_c0_eni18_10_tpl_5_cmp_q;
    (* dont_merge *) reg [0:0] redist11_sync_together94_aunroll_x_in_c0_eni18_10_tpl_5_cmpReg_q;
    wire [0:0] redist11_sync_together94_aunroll_x_in_c0_eni18_10_tpl_5_notEnable_q;
    wire [0:0] redist11_sync_together94_aunroll_x_in_c0_eni18_10_tpl_5_nor_q;
    (* dont_merge *) reg [0:0] redist11_sync_together94_aunroll_x_in_c0_eni18_10_tpl_5_sticky_ena_q;
    wire [0:0] redist11_sync_together94_aunroll_x_in_c0_eni18_10_tpl_5_enaAnd_q;
    wire redist12_sync_together94_aunroll_x_in_c0_eni18_11_tpl_5_mem_reset0;
    wire [63:0] redist12_sync_together94_aunroll_x_in_c0_eni18_11_tpl_5_mem_ia;
    wire [1:0] redist12_sync_together94_aunroll_x_in_c0_eni18_11_tpl_5_mem_aa;
    wire [1:0] redist12_sync_together94_aunroll_x_in_c0_eni18_11_tpl_5_mem_ab;
    wire [63:0] redist12_sync_together94_aunroll_x_in_c0_eni18_11_tpl_5_mem_iq;
    wire [63:0] redist12_sync_together94_aunroll_x_in_c0_eni18_11_tpl_5_mem_q;
    wire [1:0] redist12_sync_together94_aunroll_x_in_c0_eni18_11_tpl_5_rdcnt_q;
    (* preserve *) reg [1:0] redist12_sync_together94_aunroll_x_in_c0_eni18_11_tpl_5_rdcnt_i;
    reg [1:0] redist12_sync_together94_aunroll_x_in_c0_eni18_11_tpl_5_wraddr_q;
    wire [2:0] redist12_sync_together94_aunroll_x_in_c0_eni18_11_tpl_5_mem_last_q;
    wire [2:0] redist12_sync_together94_aunroll_x_in_c0_eni18_11_tpl_5_cmp_b;
    wire [0:0] redist12_sync_together94_aunroll_x_in_c0_eni18_11_tpl_5_cmp_q;
    (* dont_merge *) reg [0:0] redist12_sync_together94_aunroll_x_in_c0_eni18_11_tpl_5_cmpReg_q;
    wire [0:0] redist12_sync_together94_aunroll_x_in_c0_eni18_11_tpl_5_notEnable_q;
    wire [0:0] redist12_sync_together94_aunroll_x_in_c0_eni18_11_tpl_5_nor_q;
    (* dont_merge *) reg [0:0] redist12_sync_together94_aunroll_x_in_c0_eni18_11_tpl_5_sticky_ena_q;
    wire [0:0] redist12_sync_together94_aunroll_x_in_c0_eni18_11_tpl_5_enaAnd_q;
    wire redist14_sync_together94_aunroll_x_in_c0_eni18_13_tpl_5_mem_reset0;
    wire [31:0] redist14_sync_together94_aunroll_x_in_c0_eni18_13_tpl_5_mem_ia;
    wire [1:0] redist14_sync_together94_aunroll_x_in_c0_eni18_13_tpl_5_mem_aa;
    wire [1:0] redist14_sync_together94_aunroll_x_in_c0_eni18_13_tpl_5_mem_ab;
    wire [31:0] redist14_sync_together94_aunroll_x_in_c0_eni18_13_tpl_5_mem_iq;
    wire [31:0] redist14_sync_together94_aunroll_x_in_c0_eni18_13_tpl_5_mem_q;
    wire [1:0] redist14_sync_together94_aunroll_x_in_c0_eni18_13_tpl_5_rdcnt_q;
    (* preserve *) reg [1:0] redist14_sync_together94_aunroll_x_in_c0_eni18_13_tpl_5_rdcnt_i;
    reg [1:0] redist14_sync_together94_aunroll_x_in_c0_eni18_13_tpl_5_wraddr_q;
    wire [2:0] redist14_sync_together94_aunroll_x_in_c0_eni18_13_tpl_5_mem_last_q;
    wire [2:0] redist14_sync_together94_aunroll_x_in_c0_eni18_13_tpl_5_cmp_b;
    wire [0:0] redist14_sync_together94_aunroll_x_in_c0_eni18_13_tpl_5_cmp_q;
    (* dont_merge *) reg [0:0] redist14_sync_together94_aunroll_x_in_c0_eni18_13_tpl_5_cmpReg_q;
    wire [0:0] redist14_sync_together94_aunroll_x_in_c0_eni18_13_tpl_5_notEnable_q;
    wire [0:0] redist14_sync_together94_aunroll_x_in_c0_eni18_13_tpl_5_nor_q;
    (* dont_merge *) reg [0:0] redist14_sync_together94_aunroll_x_in_c0_eni18_13_tpl_5_sticky_ena_q;
    wire [0:0] redist14_sync_together94_aunroll_x_in_c0_eni18_13_tpl_5_enaAnd_q;
    wire redist15_sync_together94_aunroll_x_in_c0_eni18_14_tpl_5_mem_reset0;
    wire [31:0] redist15_sync_together94_aunroll_x_in_c0_eni18_14_tpl_5_mem_ia;
    wire [1:0] redist15_sync_together94_aunroll_x_in_c0_eni18_14_tpl_5_mem_aa;
    wire [1:0] redist15_sync_together94_aunroll_x_in_c0_eni18_14_tpl_5_mem_ab;
    wire [31:0] redist15_sync_together94_aunroll_x_in_c0_eni18_14_tpl_5_mem_iq;
    wire [31:0] redist15_sync_together94_aunroll_x_in_c0_eni18_14_tpl_5_mem_q;
    wire [1:0] redist15_sync_together94_aunroll_x_in_c0_eni18_14_tpl_5_rdcnt_q;
    (* preserve *) reg [1:0] redist15_sync_together94_aunroll_x_in_c0_eni18_14_tpl_5_rdcnt_i;
    reg [1:0] redist15_sync_together94_aunroll_x_in_c0_eni18_14_tpl_5_wraddr_q;
    wire [2:0] redist15_sync_together94_aunroll_x_in_c0_eni18_14_tpl_5_mem_last_q;
    wire [2:0] redist15_sync_together94_aunroll_x_in_c0_eni18_14_tpl_5_cmp_b;
    wire [0:0] redist15_sync_together94_aunroll_x_in_c0_eni18_14_tpl_5_cmp_q;
    (* dont_merge *) reg [0:0] redist15_sync_together94_aunroll_x_in_c0_eni18_14_tpl_5_cmpReg_q;
    wire [0:0] redist15_sync_together94_aunroll_x_in_c0_eni18_14_tpl_5_notEnable_q;
    wire [0:0] redist15_sync_together94_aunroll_x_in_c0_eni18_14_tpl_5_nor_q;
    (* dont_merge *) reg [0:0] redist15_sync_together94_aunroll_x_in_c0_eni18_14_tpl_5_sticky_ena_q;
    wire [0:0] redist15_sync_together94_aunroll_x_in_c0_eni18_14_tpl_5_enaAnd_q;
    wire redist17_sync_together94_aunroll_x_in_c0_eni18_16_tpl_5_mem_reset0;
    wire [63:0] redist17_sync_together94_aunroll_x_in_c0_eni18_16_tpl_5_mem_ia;
    wire [1:0] redist17_sync_together94_aunroll_x_in_c0_eni18_16_tpl_5_mem_aa;
    wire [1:0] redist17_sync_together94_aunroll_x_in_c0_eni18_16_tpl_5_mem_ab;
    wire [63:0] redist17_sync_together94_aunroll_x_in_c0_eni18_16_tpl_5_mem_iq;
    wire [63:0] redist17_sync_together94_aunroll_x_in_c0_eni18_16_tpl_5_mem_q;
    wire [1:0] redist17_sync_together94_aunroll_x_in_c0_eni18_16_tpl_5_rdcnt_q;
    (* preserve *) reg [1:0] redist17_sync_together94_aunroll_x_in_c0_eni18_16_tpl_5_rdcnt_i;
    reg [1:0] redist17_sync_together94_aunroll_x_in_c0_eni18_16_tpl_5_wraddr_q;
    wire [2:0] redist17_sync_together94_aunroll_x_in_c0_eni18_16_tpl_5_mem_last_q;
    wire [2:0] redist17_sync_together94_aunroll_x_in_c0_eni18_16_tpl_5_cmp_b;
    wire [0:0] redist17_sync_together94_aunroll_x_in_c0_eni18_16_tpl_5_cmp_q;
    (* dont_merge *) reg [0:0] redist17_sync_together94_aunroll_x_in_c0_eni18_16_tpl_5_cmpReg_q;
    wire [0:0] redist17_sync_together94_aunroll_x_in_c0_eni18_16_tpl_5_notEnable_q;
    wire [0:0] redist17_sync_together94_aunroll_x_in_c0_eni18_16_tpl_5_nor_q;
    (* dont_merge *) reg [0:0] redist17_sync_together94_aunroll_x_in_c0_eni18_16_tpl_5_sticky_ena_q;
    wire [0:0] redist17_sync_together94_aunroll_x_in_c0_eni18_16_tpl_5_enaAnd_q;
    wire redist18_sync_together94_aunroll_x_in_c0_eni18_17_tpl_5_mem_reset0;
    wire [63:0] redist18_sync_together94_aunroll_x_in_c0_eni18_17_tpl_5_mem_ia;
    wire [1:0] redist18_sync_together94_aunroll_x_in_c0_eni18_17_tpl_5_mem_aa;
    wire [1:0] redist18_sync_together94_aunroll_x_in_c0_eni18_17_tpl_5_mem_ab;
    wire [63:0] redist18_sync_together94_aunroll_x_in_c0_eni18_17_tpl_5_mem_iq;
    wire [63:0] redist18_sync_together94_aunroll_x_in_c0_eni18_17_tpl_5_mem_q;
    wire [1:0] redist18_sync_together94_aunroll_x_in_c0_eni18_17_tpl_5_rdcnt_q;
    (* preserve *) reg [1:0] redist18_sync_together94_aunroll_x_in_c0_eni18_17_tpl_5_rdcnt_i;
    reg [1:0] redist18_sync_together94_aunroll_x_in_c0_eni18_17_tpl_5_wraddr_q;
    wire [2:0] redist18_sync_together94_aunroll_x_in_c0_eni18_17_tpl_5_mem_last_q;
    wire [2:0] redist18_sync_together94_aunroll_x_in_c0_eni18_17_tpl_5_cmp_b;
    wire [0:0] redist18_sync_together94_aunroll_x_in_c0_eni18_17_tpl_5_cmp_q;
    (* dont_merge *) reg [0:0] redist18_sync_together94_aunroll_x_in_c0_eni18_17_tpl_5_cmpReg_q;
    wire [0:0] redist18_sync_together94_aunroll_x_in_c0_eni18_17_tpl_5_notEnable_q;
    wire [0:0] redist18_sync_together94_aunroll_x_in_c0_eni18_17_tpl_5_nor_q;
    (* dont_merge *) reg [0:0] redist18_sync_together94_aunroll_x_in_c0_eni18_17_tpl_5_sticky_ena_q;
    wire [0:0] redist18_sync_together94_aunroll_x_in_c0_eni18_17_tpl_5_enaAnd_q;
    wire redist27_i_llvm_fpga_pop_i32_mul45_pop32_maxpool2d6_out_data_out_4_mem_reset0;
    wire [31:0] redist27_i_llvm_fpga_pop_i32_mul45_pop32_maxpool2d6_out_data_out_4_mem_ia;
    wire [0:0] redist27_i_llvm_fpga_pop_i32_mul45_pop32_maxpool2d6_out_data_out_4_mem_aa;
    wire [0:0] redist27_i_llvm_fpga_pop_i32_mul45_pop32_maxpool2d6_out_data_out_4_mem_ab;
    wire [31:0] redist27_i_llvm_fpga_pop_i32_mul45_pop32_maxpool2d6_out_data_out_4_mem_iq;
    wire [31:0] redist27_i_llvm_fpga_pop_i32_mul45_pop32_maxpool2d6_out_data_out_4_mem_q;
    wire [0:0] redist27_i_llvm_fpga_pop_i32_mul45_pop32_maxpool2d6_out_data_out_4_rdcnt_q;
    (* preserve *) reg [0:0] redist27_i_llvm_fpga_pop_i32_mul45_pop32_maxpool2d6_out_data_out_4_rdcnt_i;
    reg [0:0] redist27_i_llvm_fpga_pop_i32_mul45_pop32_maxpool2d6_out_data_out_4_wraddr_q;
    (* dont_merge *) reg [0:0] redist27_i_llvm_fpga_pop_i32_mul45_pop32_maxpool2d6_out_data_out_4_cmpReg_q;
    wire [0:0] redist27_i_llvm_fpga_pop_i32_mul45_pop32_maxpool2d6_out_data_out_4_notEnable_q;
    wire [0:0] redist27_i_llvm_fpga_pop_i32_mul45_pop32_maxpool2d6_out_data_out_4_nor_q;
    (* dont_merge *) reg [0:0] redist27_i_llvm_fpga_pop_i32_mul45_pop32_maxpool2d6_out_data_out_4_sticky_ena_q;
    wire [0:0] redist27_i_llvm_fpga_pop_i32_mul45_pop32_maxpool2d6_out_data_out_4_enaAnd_q;


    // c_i3_166(CONSTANT,37)
    assign c_i3_166_q = $unsigned(3'b111);

    // i_fpga_indvars_iv_next27_maxpool2d20(ADD,42)@1
    assign i_fpga_indvars_iv_next27_maxpool2d20_a = {1'b0, i_llvm_fpga_pop_i3_fpga_indvars_iv26_pop27_maxpool2d11_out_data_out};
    assign i_fpga_indvars_iv_next27_maxpool2d20_b = {1'b0, c_i3_166_q};
    assign i_fpga_indvars_iv_next27_maxpool2d20_o = $unsigned(i_fpga_indvars_iv_next27_maxpool2d20_a) + $unsigned(i_fpga_indvars_iv_next27_maxpool2d20_b);
    assign i_fpga_indvars_iv_next27_maxpool2d20_q = i_fpga_indvars_iv_next27_maxpool2d20_o[3:0];

    // bgTrunc_i_fpga_indvars_iv_next27_maxpool2d20_sel_x(BITSELECT,82)@1
    assign bgTrunc_i_fpga_indvars_iv_next27_maxpool2d20_sel_x_b = i_fpga_indvars_iv_next27_maxpool2d20_q[2:0];

    // i_llvm_fpga_push_i3_fpga_indvars_iv26_push27_maxpool2d21(BLACKBOX,64)@1
    // out out_feedback_out_27@20000000
    // out out_feedback_valid_out_27@20000000
    maxpool2d_i_llvm_fpga_push_i3_fpga_indvars_iv26_push27_0 thei_llvm_fpga_push_i3_fpga_indvars_iv26_push27_maxpool2d21 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next27_maxpool2d20_sel_x_b),
        .in_feedback_stall_in_27(i_llvm_fpga_pop_i3_fpga_indvars_iv26_pop27_maxpool2d11_out_feedback_stall_out_27),
        .in_stall_in(GND_q),
        .in_unnamed_maxpool2d20(i_unnamed_maxpool2d15_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_feedback_out_27(i_llvm_fpga_push_i3_fpga_indvars_iv26_push27_maxpool2d21_out_feedback_out_27),
        .out_feedback_valid_out_27(i_llvm_fpga_push_i3_fpga_indvars_iv26_push27_maxpool2d21_out_feedback_valid_out_27),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i3_164(CONSTANT,36)
    assign c_i3_164_q = $unsigned(3'b001);

    // i_llvm_fpga_pop_i3_fpga_indvars_iv26_pop27_maxpool2d11(BLACKBOX,53)@1
    // out out_feedback_stall_out_27@20000000
    maxpool2d_i_llvm_fpga_pop_i3_fpga_indvars_iv26_pop27_0 thei_llvm_fpga_pop_i3_fpga_indvars_iv26_pop27_maxpool2d11 (
        .in_data_in(c_i3_164_q),
        .in_dir(in_c0_eni18_2_tpl),
        .in_feedback_in_27(i_llvm_fpga_push_i3_fpga_indvars_iv26_push27_maxpool2d21_out_feedback_out_27),
        .in_feedback_valid_in_27(i_llvm_fpga_push_i3_fpga_indvars_iv26_push27_maxpool2d21_out_feedback_valid_out_27),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(i_llvm_fpga_pop_i3_fpga_indvars_iv26_pop27_maxpool2d11_out_data_out),
        .out_feedback_stall_out_27(i_llvm_fpga_pop_i3_fpga_indvars_iv26_pop27_maxpool2d11_out_feedback_stall_out_27),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_exitcond28_maxpool2d12_cmp_nsign(LOGICAL,119)@1
    assign i_exitcond28_maxpool2d12_cmp_nsign_q = $unsigned(~ (i_llvm_fpga_pop_i3_fpga_indvars_iv26_pop27_maxpool2d11_out_data_out[2:2]));

    // i_llvm_fpga_ffwd_dest_i1_unnamed_maxpool2d12_maxpool2d14(BLACKBOX,44)@1
    maxpool2d_i_llvm_fpga_ffwd_dest_i1_unnamed_12_maxpool2d0 thei_llvm_fpga_ffwd_dest_i1_unnamed_maxpool2d12_maxpool2d14 (
        .in_intel_reserved_ffwd_1_0(in_intel_reserved_ffwd_1_0),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_dest_data_out_1_0(i_llvm_fpga_ffwd_dest_i1_unnamed_maxpool2d12_maxpool2d14_out_dest_data_out_1_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_maxpool2d15(LOGICAL,73)@1
    assign i_unnamed_maxpool2d15_q = i_llvm_fpga_ffwd_dest_i1_unnamed_maxpool2d12_maxpool2d14_out_dest_data_out_1_0 & i_exitcond28_maxpool2d12_cmp_nsign_q;

    // i_llvm_fpga_push_i1_notexitcond17_maxpool2d19(BLACKBOX,59)@1
    // out out_feedback_out_4@20000000
    // out out_feedback_valid_out_4@20000000
    maxpool2d_i_llvm_fpga_push_i1_notexitcond17_0 thei_llvm_fpga_push_i1_notexitcond17_maxpool2d19 (
        .in_data_in(i_unnamed_maxpool2d15_q),
        .in_feedback_stall_in_4(i_llvm_fpga_pipeline_keep_going16_maxpool2d2_out_not_exitcond_stall_out),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_feedback_out_4(i_llvm_fpga_push_i1_notexitcond17_maxpool2d19_out_feedback_out_4),
        .out_feedback_valid_out_4(i_llvm_fpga_push_i1_notexitcond17_maxpool2d19_out_feedback_valid_out_4),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // i_llvm_fpga_pipeline_keep_going16_maxpool2d2(BLACKBOX,45)@1
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    maxpool2d_i_llvm_fpga_pipeline_keep_going16_0 thei_llvm_fpga_pipeline_keep_going16_maxpool2d2 (
        .in_data_in(VCC_q),
        .in_initeration_in(GND_q),
        .in_initeration_valid_in(GND_q),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond17_maxpool2d19_out_feedback_out_4),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond17_maxpool2d19_out_feedback_valid_out_4),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going16_maxpool2d2_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going16_maxpool2d2_out_exiting_valid_out),
        .out_initeration_stall_out(),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going16_maxpool2d2_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going16_maxpool2d2_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,38)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going16_maxpool2d2_exiting_valid_out = i_llvm_fpga_pipeline_keep_going16_maxpool2d2_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going16_maxpool2d2_exiting_stall_out = i_llvm_fpga_pipeline_keep_going16_maxpool2d2_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,76)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going16_maxpool2d2_out_pipeline_valid_out;

    // redist20_sync_together94_aunroll_x_in_i_valid_1(DELAY,168)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist20_sync_together94_aunroll_x_in_i_valid_1_q <= '0;
        end
        else
        begin
            redist20_sync_together94_aunroll_x_in_i_valid_1_q <= $unsigned(in_i_valid);
        end
    end

    // redist21_sync_together94_aunroll_x_in_i_valid_4(DELAY,169)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist21_sync_together94_aunroll_x_in_i_valid_4_delay_0 <= '0;
            redist21_sync_together94_aunroll_x_in_i_valid_4_delay_1 <= '0;
            redist21_sync_together94_aunroll_x_in_i_valid_4_q <= '0;
        end
        else
        begin
            redist21_sync_together94_aunroll_x_in_i_valid_4_delay_0 <= $unsigned(redist20_sync_together94_aunroll_x_in_i_valid_1_q);
            redist21_sync_together94_aunroll_x_in_i_valid_4_delay_1 <= redist21_sync_together94_aunroll_x_in_i_valid_4_delay_0;
            redist21_sync_together94_aunroll_x_in_i_valid_4_q <= redist21_sync_together94_aunroll_x_in_i_valid_4_delay_1;
        end
    end

    // valid_fanout_reg0(REG,92)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist21_sync_together94_aunroll_x_in_i_valid_4_q);
        end
    end

    // redist9_sync_together94_aunroll_x_in_c0_eni18_8_tpl_5(DELAY,157)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_sync_together94_aunroll_x_in_c0_eni18_8_tpl_5_delay_0 <= '0;
            redist9_sync_together94_aunroll_x_in_c0_eni18_8_tpl_5_delay_1 <= '0;
            redist9_sync_together94_aunroll_x_in_c0_eni18_8_tpl_5_delay_2 <= '0;
            redist9_sync_together94_aunroll_x_in_c0_eni18_8_tpl_5_delay_3 <= '0;
            redist9_sync_together94_aunroll_x_in_c0_eni18_8_tpl_5_q <= '0;
        end
        else
        begin
            redist9_sync_together94_aunroll_x_in_c0_eni18_8_tpl_5_delay_0 <= $unsigned(in_c0_eni18_8_tpl);
            redist9_sync_together94_aunroll_x_in_c0_eni18_8_tpl_5_delay_1 <= redist9_sync_together94_aunroll_x_in_c0_eni18_8_tpl_5_delay_0;
            redist9_sync_together94_aunroll_x_in_c0_eni18_8_tpl_5_delay_2 <= redist9_sync_together94_aunroll_x_in_c0_eni18_8_tpl_5_delay_1;
            redist9_sync_together94_aunroll_x_in_c0_eni18_8_tpl_5_delay_3 <= redist9_sync_together94_aunroll_x_in_c0_eni18_8_tpl_5_delay_2;
            redist9_sync_together94_aunroll_x_in_c0_eni18_8_tpl_5_q <= redist9_sync_together94_aunroll_x_in_c0_eni18_8_tpl_5_delay_3;
        end
    end

    // redist8_sync_together94_aunroll_x_in_c0_eni18_7_tpl_5_notEnable(LOGICAL,223)
    assign redist8_sync_together94_aunroll_x_in_c0_eni18_7_tpl_5_notEnable_q = $unsigned(~ (VCC_q));

    // redist8_sync_together94_aunroll_x_in_c0_eni18_7_tpl_5_nor(LOGICAL,224)
    assign redist8_sync_together94_aunroll_x_in_c0_eni18_7_tpl_5_nor_q = ~ (redist8_sync_together94_aunroll_x_in_c0_eni18_7_tpl_5_notEnable_q | redist8_sync_together94_aunroll_x_in_c0_eni18_7_tpl_5_sticky_ena_q);

    // redist8_sync_together94_aunroll_x_in_c0_eni18_7_tpl_5_mem_last(CONSTANT,220)
    assign redist8_sync_together94_aunroll_x_in_c0_eni18_7_tpl_5_mem_last_q = $unsigned(3'b010);

    // redist8_sync_together94_aunroll_x_in_c0_eni18_7_tpl_5_cmp(LOGICAL,221)
    assign redist8_sync_together94_aunroll_x_in_c0_eni18_7_tpl_5_cmp_b = {1'b0, redist8_sync_together94_aunroll_x_in_c0_eni18_7_tpl_5_rdcnt_q};
    assign redist8_sync_together94_aunroll_x_in_c0_eni18_7_tpl_5_cmp_q = $unsigned(redist8_sync_together94_aunroll_x_in_c0_eni18_7_tpl_5_mem_last_q == redist8_sync_together94_aunroll_x_in_c0_eni18_7_tpl_5_cmp_b ? 1'b1 : 1'b0);

    // redist8_sync_together94_aunroll_x_in_c0_eni18_7_tpl_5_cmpReg(REG,222)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_sync_together94_aunroll_x_in_c0_eni18_7_tpl_5_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist8_sync_together94_aunroll_x_in_c0_eni18_7_tpl_5_cmpReg_q <= $unsigned(redist8_sync_together94_aunroll_x_in_c0_eni18_7_tpl_5_cmp_q);
        end
    end

    // redist8_sync_together94_aunroll_x_in_c0_eni18_7_tpl_5_sticky_ena(REG,225)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_sync_together94_aunroll_x_in_c0_eni18_7_tpl_5_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist8_sync_together94_aunroll_x_in_c0_eni18_7_tpl_5_nor_q == 1'b1)
        begin
            redist8_sync_together94_aunroll_x_in_c0_eni18_7_tpl_5_sticky_ena_q <= $unsigned(redist8_sync_together94_aunroll_x_in_c0_eni18_7_tpl_5_cmpReg_q);
        end
    end

    // redist8_sync_together94_aunroll_x_in_c0_eni18_7_tpl_5_enaAnd(LOGICAL,226)
    assign redist8_sync_together94_aunroll_x_in_c0_eni18_7_tpl_5_enaAnd_q = redist8_sync_together94_aunroll_x_in_c0_eni18_7_tpl_5_sticky_ena_q & VCC_q;

    // redist8_sync_together94_aunroll_x_in_c0_eni18_7_tpl_5_rdcnt(COUNTER,218)
    // low=0, high=3, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_sync_together94_aunroll_x_in_c0_eni18_7_tpl_5_rdcnt_i <= 2'd0;
        end
        else
        begin
            redist8_sync_together94_aunroll_x_in_c0_eni18_7_tpl_5_rdcnt_i <= $unsigned(redist8_sync_together94_aunroll_x_in_c0_eni18_7_tpl_5_rdcnt_i) + $unsigned(2'd1);
        end
    end
    assign redist8_sync_together94_aunroll_x_in_c0_eni18_7_tpl_5_rdcnt_q = redist8_sync_together94_aunroll_x_in_c0_eni18_7_tpl_5_rdcnt_i[1:0];

    // redist8_sync_together94_aunroll_x_in_c0_eni18_7_tpl_5_wraddr(REG,219)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_sync_together94_aunroll_x_in_c0_eni18_7_tpl_5_wraddr_q <= $unsigned(2'b11);
        end
        else
        begin
            redist8_sync_together94_aunroll_x_in_c0_eni18_7_tpl_5_wraddr_q <= $unsigned(redist8_sync_together94_aunroll_x_in_c0_eni18_7_tpl_5_rdcnt_q);
        end
    end

    // redist8_sync_together94_aunroll_x_in_c0_eni18_7_tpl_5_mem(DUALMEM,217)
    assign redist8_sync_together94_aunroll_x_in_c0_eni18_7_tpl_5_mem_ia = $unsigned(in_c0_eni18_7_tpl);
    assign redist8_sync_together94_aunroll_x_in_c0_eni18_7_tpl_5_mem_aa = redist8_sync_together94_aunroll_x_in_c0_eni18_7_tpl_5_wraddr_q;
    assign redist8_sync_together94_aunroll_x_in_c0_eni18_7_tpl_5_mem_ab = redist8_sync_together94_aunroll_x_in_c0_eni18_7_tpl_5_rdcnt_q;
    assign redist8_sync_together94_aunroll_x_in_c0_eni18_7_tpl_5_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(2),
        .numwords_a(4),
        .width_b(32),
        .widthad_b(2),
        .numwords_b(4),
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
    ) redist8_sync_together94_aunroll_x_in_c0_eni18_7_tpl_5_mem_dmem (
        .clocken1(redist8_sync_together94_aunroll_x_in_c0_eni18_7_tpl_5_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist8_sync_together94_aunroll_x_in_c0_eni18_7_tpl_5_mem_reset0),
        .clock1(clock),
        .address_a(redist8_sync_together94_aunroll_x_in_c0_eni18_7_tpl_5_mem_aa),
        .data_a(redist8_sync_together94_aunroll_x_in_c0_eni18_7_tpl_5_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist8_sync_together94_aunroll_x_in_c0_eni18_7_tpl_5_mem_ab),
        .q_b(redist8_sync_together94_aunroll_x_in_c0_eni18_7_tpl_5_mem_iq),
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
    assign redist8_sync_together94_aunroll_x_in_c0_eni18_7_tpl_5_mem_q = redist8_sync_together94_aunroll_x_in_c0_eni18_7_tpl_5_mem_iq[31:0];

    // redist4_sync_together94_aunroll_x_in_c0_eni18_3_tpl_5_notEnable(LOGICAL,193)
    assign redist4_sync_together94_aunroll_x_in_c0_eni18_3_tpl_5_notEnable_q = $unsigned(~ (VCC_q));

    // redist4_sync_together94_aunroll_x_in_c0_eni18_3_tpl_5_nor(LOGICAL,194)
    assign redist4_sync_together94_aunroll_x_in_c0_eni18_3_tpl_5_nor_q = ~ (redist4_sync_together94_aunroll_x_in_c0_eni18_3_tpl_5_notEnable_q | redist4_sync_together94_aunroll_x_in_c0_eni18_3_tpl_5_sticky_ena_q);

    // redist4_sync_together94_aunroll_x_in_c0_eni18_3_tpl_5_mem_last(CONSTANT,190)
    assign redist4_sync_together94_aunroll_x_in_c0_eni18_3_tpl_5_mem_last_q = $unsigned(2'b01);

    // redist4_sync_together94_aunroll_x_in_c0_eni18_3_tpl_5_cmp(LOGICAL,191)
    assign redist4_sync_together94_aunroll_x_in_c0_eni18_3_tpl_5_cmp_q = $unsigned(redist4_sync_together94_aunroll_x_in_c0_eni18_3_tpl_5_mem_last_q == redist4_sync_together94_aunroll_x_in_c0_eni18_3_tpl_5_rdcnt_q ? 1'b1 : 1'b0);

    // redist4_sync_together94_aunroll_x_in_c0_eni18_3_tpl_5_cmpReg(REG,192)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_sync_together94_aunroll_x_in_c0_eni18_3_tpl_5_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist4_sync_together94_aunroll_x_in_c0_eni18_3_tpl_5_cmpReg_q <= $unsigned(redist4_sync_together94_aunroll_x_in_c0_eni18_3_tpl_5_cmp_q);
        end
    end

    // redist4_sync_together94_aunroll_x_in_c0_eni18_3_tpl_5_sticky_ena(REG,195)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_sync_together94_aunroll_x_in_c0_eni18_3_tpl_5_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist4_sync_together94_aunroll_x_in_c0_eni18_3_tpl_5_nor_q == 1'b1)
        begin
            redist4_sync_together94_aunroll_x_in_c0_eni18_3_tpl_5_sticky_ena_q <= $unsigned(redist4_sync_together94_aunroll_x_in_c0_eni18_3_tpl_5_cmpReg_q);
        end
    end

    // redist4_sync_together94_aunroll_x_in_c0_eni18_3_tpl_5_enaAnd(LOGICAL,196)
    assign redist4_sync_together94_aunroll_x_in_c0_eni18_3_tpl_5_enaAnd_q = redist4_sync_together94_aunroll_x_in_c0_eni18_3_tpl_5_sticky_ena_q & VCC_q;

    // redist4_sync_together94_aunroll_x_in_c0_eni18_3_tpl_5_rdcnt(COUNTER,188)
    // low=0, high=2, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_sync_together94_aunroll_x_in_c0_eni18_3_tpl_5_rdcnt_i <= 2'd0;
            redist4_sync_together94_aunroll_x_in_c0_eni18_3_tpl_5_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist4_sync_together94_aunroll_x_in_c0_eni18_3_tpl_5_rdcnt_i == 2'd1)
            begin
                redist4_sync_together94_aunroll_x_in_c0_eni18_3_tpl_5_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist4_sync_together94_aunroll_x_in_c0_eni18_3_tpl_5_rdcnt_eq <= 1'b0;
            end
            if (redist4_sync_together94_aunroll_x_in_c0_eni18_3_tpl_5_rdcnt_eq == 1'b1)
            begin
                redist4_sync_together94_aunroll_x_in_c0_eni18_3_tpl_5_rdcnt_i <= $unsigned(redist4_sync_together94_aunroll_x_in_c0_eni18_3_tpl_5_rdcnt_i) + $unsigned(2'd2);
            end
            else
            begin
                redist4_sync_together94_aunroll_x_in_c0_eni18_3_tpl_5_rdcnt_i <= $unsigned(redist4_sync_together94_aunroll_x_in_c0_eni18_3_tpl_5_rdcnt_i) + $unsigned(2'd1);
            end
        end
    end
    assign redist4_sync_together94_aunroll_x_in_c0_eni18_3_tpl_5_rdcnt_q = redist4_sync_together94_aunroll_x_in_c0_eni18_3_tpl_5_rdcnt_i[1:0];

    // redist3_sync_together94_aunroll_x_in_c0_eni18_3_tpl_1(DELAY,151)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_sync_together94_aunroll_x_in_c0_eni18_3_tpl_1_q <= '0;
        end
        else
        begin
            redist3_sync_together94_aunroll_x_in_c0_eni18_3_tpl_1_q <= $unsigned(in_c0_eni18_3_tpl);
        end
    end

    // redist4_sync_together94_aunroll_x_in_c0_eni18_3_tpl_5_wraddr(REG,189)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_sync_together94_aunroll_x_in_c0_eni18_3_tpl_5_wraddr_q <= $unsigned(2'b10);
        end
        else
        begin
            redist4_sync_together94_aunroll_x_in_c0_eni18_3_tpl_5_wraddr_q <= $unsigned(redist4_sync_together94_aunroll_x_in_c0_eni18_3_tpl_5_rdcnt_q);
        end
    end

    // redist4_sync_together94_aunroll_x_in_c0_eni18_3_tpl_5_mem(DUALMEM,187)
    assign redist4_sync_together94_aunroll_x_in_c0_eni18_3_tpl_5_mem_ia = $unsigned(redist3_sync_together94_aunroll_x_in_c0_eni18_3_tpl_1_q);
    assign redist4_sync_together94_aunroll_x_in_c0_eni18_3_tpl_5_mem_aa = redist4_sync_together94_aunroll_x_in_c0_eni18_3_tpl_5_wraddr_q;
    assign redist4_sync_together94_aunroll_x_in_c0_eni18_3_tpl_5_mem_ab = redist4_sync_together94_aunroll_x_in_c0_eni18_3_tpl_5_rdcnt_q;
    assign redist4_sync_together94_aunroll_x_in_c0_eni18_3_tpl_5_mem_reset0 = ~ (resetn);
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
    ) redist4_sync_together94_aunroll_x_in_c0_eni18_3_tpl_5_mem_dmem (
        .clocken1(redist4_sync_together94_aunroll_x_in_c0_eni18_3_tpl_5_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist4_sync_together94_aunroll_x_in_c0_eni18_3_tpl_5_mem_reset0),
        .clock1(clock),
        .address_a(redist4_sync_together94_aunroll_x_in_c0_eni18_3_tpl_5_mem_aa),
        .data_a(redist4_sync_together94_aunroll_x_in_c0_eni18_3_tpl_5_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist4_sync_together94_aunroll_x_in_c0_eni18_3_tpl_5_mem_ab),
        .q_b(redist4_sync_together94_aunroll_x_in_c0_eni18_3_tpl_5_mem_iq),
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
    assign redist4_sync_together94_aunroll_x_in_c0_eni18_3_tpl_5_mem_q = redist4_sync_together94_aunroll_x_in_c0_eni18_3_tpl_5_mem_iq[31:0];

    // redist7_sync_together94_aunroll_x_in_c0_eni18_6_tpl_5(DELAY,155)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_sync_together94_aunroll_x_in_c0_eni18_6_tpl_5_delay_0 <= '0;
            redist7_sync_together94_aunroll_x_in_c0_eni18_6_tpl_5_delay_1 <= '0;
            redist7_sync_together94_aunroll_x_in_c0_eni18_6_tpl_5_delay_2 <= '0;
            redist7_sync_together94_aunroll_x_in_c0_eni18_6_tpl_5_delay_3 <= '0;
            redist7_sync_together94_aunroll_x_in_c0_eni18_6_tpl_5_q <= '0;
        end
        else
        begin
            redist7_sync_together94_aunroll_x_in_c0_eni18_6_tpl_5_delay_0 <= $unsigned(in_c0_eni18_6_tpl);
            redist7_sync_together94_aunroll_x_in_c0_eni18_6_tpl_5_delay_1 <= redist7_sync_together94_aunroll_x_in_c0_eni18_6_tpl_5_delay_0;
            redist7_sync_together94_aunroll_x_in_c0_eni18_6_tpl_5_delay_2 <= redist7_sync_together94_aunroll_x_in_c0_eni18_6_tpl_5_delay_1;
            redist7_sync_together94_aunroll_x_in_c0_eni18_6_tpl_5_delay_3 <= redist7_sync_together94_aunroll_x_in_c0_eni18_6_tpl_5_delay_2;
            redist7_sync_together94_aunroll_x_in_c0_eni18_6_tpl_5_q <= redist7_sync_together94_aunroll_x_in_c0_eni18_6_tpl_5_delay_3;
        end
    end

    // redist6_sync_together94_aunroll_x_in_c0_eni18_5_tpl_5_notEnable(LOGICAL,213)
    assign redist6_sync_together94_aunroll_x_in_c0_eni18_5_tpl_5_notEnable_q = $unsigned(~ (VCC_q));

    // redist6_sync_together94_aunroll_x_in_c0_eni18_5_tpl_5_nor(LOGICAL,214)
    assign redist6_sync_together94_aunroll_x_in_c0_eni18_5_tpl_5_nor_q = ~ (redist6_sync_together94_aunroll_x_in_c0_eni18_5_tpl_5_notEnable_q | redist6_sync_together94_aunroll_x_in_c0_eni18_5_tpl_5_sticky_ena_q);

    // redist6_sync_together94_aunroll_x_in_c0_eni18_5_tpl_5_mem_last(CONSTANT,210)
    assign redist6_sync_together94_aunroll_x_in_c0_eni18_5_tpl_5_mem_last_q = $unsigned(3'b010);

    // redist6_sync_together94_aunroll_x_in_c0_eni18_5_tpl_5_cmp(LOGICAL,211)
    assign redist6_sync_together94_aunroll_x_in_c0_eni18_5_tpl_5_cmp_b = {1'b0, redist6_sync_together94_aunroll_x_in_c0_eni18_5_tpl_5_rdcnt_q};
    assign redist6_sync_together94_aunroll_x_in_c0_eni18_5_tpl_5_cmp_q = $unsigned(redist6_sync_together94_aunroll_x_in_c0_eni18_5_tpl_5_mem_last_q == redist6_sync_together94_aunroll_x_in_c0_eni18_5_tpl_5_cmp_b ? 1'b1 : 1'b0);

    // redist6_sync_together94_aunroll_x_in_c0_eni18_5_tpl_5_cmpReg(REG,212)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_sync_together94_aunroll_x_in_c0_eni18_5_tpl_5_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist6_sync_together94_aunroll_x_in_c0_eni18_5_tpl_5_cmpReg_q <= $unsigned(redist6_sync_together94_aunroll_x_in_c0_eni18_5_tpl_5_cmp_q);
        end
    end

    // redist6_sync_together94_aunroll_x_in_c0_eni18_5_tpl_5_sticky_ena(REG,215)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_sync_together94_aunroll_x_in_c0_eni18_5_tpl_5_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist6_sync_together94_aunroll_x_in_c0_eni18_5_tpl_5_nor_q == 1'b1)
        begin
            redist6_sync_together94_aunroll_x_in_c0_eni18_5_tpl_5_sticky_ena_q <= $unsigned(redist6_sync_together94_aunroll_x_in_c0_eni18_5_tpl_5_cmpReg_q);
        end
    end

    // redist6_sync_together94_aunroll_x_in_c0_eni18_5_tpl_5_enaAnd(LOGICAL,216)
    assign redist6_sync_together94_aunroll_x_in_c0_eni18_5_tpl_5_enaAnd_q = redist6_sync_together94_aunroll_x_in_c0_eni18_5_tpl_5_sticky_ena_q & VCC_q;

    // redist6_sync_together94_aunroll_x_in_c0_eni18_5_tpl_5_rdcnt(COUNTER,208)
    // low=0, high=3, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_sync_together94_aunroll_x_in_c0_eni18_5_tpl_5_rdcnt_i <= 2'd0;
        end
        else
        begin
            redist6_sync_together94_aunroll_x_in_c0_eni18_5_tpl_5_rdcnt_i <= $unsigned(redist6_sync_together94_aunroll_x_in_c0_eni18_5_tpl_5_rdcnt_i) + $unsigned(2'd1);
        end
    end
    assign redist6_sync_together94_aunroll_x_in_c0_eni18_5_tpl_5_rdcnt_q = redist6_sync_together94_aunroll_x_in_c0_eni18_5_tpl_5_rdcnt_i[1:0];

    // redist6_sync_together94_aunroll_x_in_c0_eni18_5_tpl_5_wraddr(REG,209)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_sync_together94_aunroll_x_in_c0_eni18_5_tpl_5_wraddr_q <= $unsigned(2'b11);
        end
        else
        begin
            redist6_sync_together94_aunroll_x_in_c0_eni18_5_tpl_5_wraddr_q <= $unsigned(redist6_sync_together94_aunroll_x_in_c0_eni18_5_tpl_5_rdcnt_q);
        end
    end

    // redist6_sync_together94_aunroll_x_in_c0_eni18_5_tpl_5_mem(DUALMEM,207)
    assign redist6_sync_together94_aunroll_x_in_c0_eni18_5_tpl_5_mem_ia = $unsigned(in_c0_eni18_5_tpl);
    assign redist6_sync_together94_aunroll_x_in_c0_eni18_5_tpl_5_mem_aa = redist6_sync_together94_aunroll_x_in_c0_eni18_5_tpl_5_wraddr_q;
    assign redist6_sync_together94_aunroll_x_in_c0_eni18_5_tpl_5_mem_ab = redist6_sync_together94_aunroll_x_in_c0_eni18_5_tpl_5_rdcnt_q;
    assign redist6_sync_together94_aunroll_x_in_c0_eni18_5_tpl_5_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(64),
        .widthad_a(2),
        .numwords_a(4),
        .width_b(64),
        .widthad_b(2),
        .numwords_b(4),
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
    ) redist6_sync_together94_aunroll_x_in_c0_eni18_5_tpl_5_mem_dmem (
        .clocken1(redist6_sync_together94_aunroll_x_in_c0_eni18_5_tpl_5_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist6_sync_together94_aunroll_x_in_c0_eni18_5_tpl_5_mem_reset0),
        .clock1(clock),
        .address_a(redist6_sync_together94_aunroll_x_in_c0_eni18_5_tpl_5_mem_aa),
        .data_a(redist6_sync_together94_aunroll_x_in_c0_eni18_5_tpl_5_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist6_sync_together94_aunroll_x_in_c0_eni18_5_tpl_5_mem_ab),
        .q_b(redist6_sync_together94_aunroll_x_in_c0_eni18_5_tpl_5_mem_iq),
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
    assign redist6_sync_together94_aunroll_x_in_c0_eni18_5_tpl_5_mem_q = redist6_sync_together94_aunroll_x_in_c0_eni18_5_tpl_5_mem_iq[63:0];

    // redist5_sync_together94_aunroll_x_in_c0_eni18_4_tpl_5_notEnable(LOGICAL,203)
    assign redist5_sync_together94_aunroll_x_in_c0_eni18_4_tpl_5_notEnable_q = $unsigned(~ (VCC_q));

    // redist5_sync_together94_aunroll_x_in_c0_eni18_4_tpl_5_nor(LOGICAL,204)
    assign redist5_sync_together94_aunroll_x_in_c0_eni18_4_tpl_5_nor_q = ~ (redist5_sync_together94_aunroll_x_in_c0_eni18_4_tpl_5_notEnable_q | redist5_sync_together94_aunroll_x_in_c0_eni18_4_tpl_5_sticky_ena_q);

    // redist5_sync_together94_aunroll_x_in_c0_eni18_4_tpl_5_mem_last(CONSTANT,200)
    assign redist5_sync_together94_aunroll_x_in_c0_eni18_4_tpl_5_mem_last_q = $unsigned(3'b010);

    // redist5_sync_together94_aunroll_x_in_c0_eni18_4_tpl_5_cmp(LOGICAL,201)
    assign redist5_sync_together94_aunroll_x_in_c0_eni18_4_tpl_5_cmp_b = {1'b0, redist5_sync_together94_aunroll_x_in_c0_eni18_4_tpl_5_rdcnt_q};
    assign redist5_sync_together94_aunroll_x_in_c0_eni18_4_tpl_5_cmp_q = $unsigned(redist5_sync_together94_aunroll_x_in_c0_eni18_4_tpl_5_mem_last_q == redist5_sync_together94_aunroll_x_in_c0_eni18_4_tpl_5_cmp_b ? 1'b1 : 1'b0);

    // redist5_sync_together94_aunroll_x_in_c0_eni18_4_tpl_5_cmpReg(REG,202)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_sync_together94_aunroll_x_in_c0_eni18_4_tpl_5_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist5_sync_together94_aunroll_x_in_c0_eni18_4_tpl_5_cmpReg_q <= $unsigned(redist5_sync_together94_aunroll_x_in_c0_eni18_4_tpl_5_cmp_q);
        end
    end

    // redist5_sync_together94_aunroll_x_in_c0_eni18_4_tpl_5_sticky_ena(REG,205)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_sync_together94_aunroll_x_in_c0_eni18_4_tpl_5_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist5_sync_together94_aunroll_x_in_c0_eni18_4_tpl_5_nor_q == 1'b1)
        begin
            redist5_sync_together94_aunroll_x_in_c0_eni18_4_tpl_5_sticky_ena_q <= $unsigned(redist5_sync_together94_aunroll_x_in_c0_eni18_4_tpl_5_cmpReg_q);
        end
    end

    // redist5_sync_together94_aunroll_x_in_c0_eni18_4_tpl_5_enaAnd(LOGICAL,206)
    assign redist5_sync_together94_aunroll_x_in_c0_eni18_4_tpl_5_enaAnd_q = redist5_sync_together94_aunroll_x_in_c0_eni18_4_tpl_5_sticky_ena_q & VCC_q;

    // redist5_sync_together94_aunroll_x_in_c0_eni18_4_tpl_5_rdcnt(COUNTER,198)
    // low=0, high=3, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_sync_together94_aunroll_x_in_c0_eni18_4_tpl_5_rdcnt_i <= 2'd0;
        end
        else
        begin
            redist5_sync_together94_aunroll_x_in_c0_eni18_4_tpl_5_rdcnt_i <= $unsigned(redist5_sync_together94_aunroll_x_in_c0_eni18_4_tpl_5_rdcnt_i) + $unsigned(2'd1);
        end
    end
    assign redist5_sync_together94_aunroll_x_in_c0_eni18_4_tpl_5_rdcnt_q = redist5_sync_together94_aunroll_x_in_c0_eni18_4_tpl_5_rdcnt_i[1:0];

    // redist5_sync_together94_aunroll_x_in_c0_eni18_4_tpl_5_wraddr(REG,199)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_sync_together94_aunroll_x_in_c0_eni18_4_tpl_5_wraddr_q <= $unsigned(2'b11);
        end
        else
        begin
            redist5_sync_together94_aunroll_x_in_c0_eni18_4_tpl_5_wraddr_q <= $unsigned(redist5_sync_together94_aunroll_x_in_c0_eni18_4_tpl_5_rdcnt_q);
        end
    end

    // redist5_sync_together94_aunroll_x_in_c0_eni18_4_tpl_5_mem(DUALMEM,197)
    assign redist5_sync_together94_aunroll_x_in_c0_eni18_4_tpl_5_mem_ia = $unsigned(in_c0_eni18_4_tpl);
    assign redist5_sync_together94_aunroll_x_in_c0_eni18_4_tpl_5_mem_aa = redist5_sync_together94_aunroll_x_in_c0_eni18_4_tpl_5_wraddr_q;
    assign redist5_sync_together94_aunroll_x_in_c0_eni18_4_tpl_5_mem_ab = redist5_sync_together94_aunroll_x_in_c0_eni18_4_tpl_5_rdcnt_q;
    assign redist5_sync_together94_aunroll_x_in_c0_eni18_4_tpl_5_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(64),
        .widthad_a(2),
        .numwords_a(4),
        .width_b(64),
        .widthad_b(2),
        .numwords_b(4),
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
    ) redist5_sync_together94_aunroll_x_in_c0_eni18_4_tpl_5_mem_dmem (
        .clocken1(redist5_sync_together94_aunroll_x_in_c0_eni18_4_tpl_5_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist5_sync_together94_aunroll_x_in_c0_eni18_4_tpl_5_mem_reset0),
        .clock1(clock),
        .address_a(redist5_sync_together94_aunroll_x_in_c0_eni18_4_tpl_5_mem_aa),
        .data_a(redist5_sync_together94_aunroll_x_in_c0_eni18_4_tpl_5_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist5_sync_together94_aunroll_x_in_c0_eni18_4_tpl_5_mem_ab),
        .q_b(redist5_sync_together94_aunroll_x_in_c0_eni18_4_tpl_5_mem_iq),
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
    assign redist5_sync_together94_aunroll_x_in_c0_eni18_4_tpl_5_mem_q = redist5_sync_together94_aunroll_x_in_c0_eni18_4_tpl_5_mem_iq[63:0];

    // redist0_sync_together94_aunroll_x_in_c0_eni18_1_tpl_5_notEnable(LOGICAL,183)
    assign redist0_sync_together94_aunroll_x_in_c0_eni18_1_tpl_5_notEnable_q = $unsigned(~ (VCC_q));

    // redist0_sync_together94_aunroll_x_in_c0_eni18_1_tpl_5_nor(LOGICAL,184)
    assign redist0_sync_together94_aunroll_x_in_c0_eni18_1_tpl_5_nor_q = ~ (redist0_sync_together94_aunroll_x_in_c0_eni18_1_tpl_5_notEnable_q | redist0_sync_together94_aunroll_x_in_c0_eni18_1_tpl_5_sticky_ena_q);

    // redist0_sync_together94_aunroll_x_in_c0_eni18_1_tpl_5_mem_last(CONSTANT,180)
    assign redist0_sync_together94_aunroll_x_in_c0_eni18_1_tpl_5_mem_last_q = $unsigned(2'b01);

    // redist0_sync_together94_aunroll_x_in_c0_eni18_1_tpl_5_cmp(LOGICAL,181)
    assign redist0_sync_together94_aunroll_x_in_c0_eni18_1_tpl_5_cmp_q = $unsigned(redist0_sync_together94_aunroll_x_in_c0_eni18_1_tpl_5_mem_last_q == redist0_sync_together94_aunroll_x_in_c0_eni18_1_tpl_5_rdcnt_q ? 1'b1 : 1'b0);

    // redist0_sync_together94_aunroll_x_in_c0_eni18_1_tpl_5_cmpReg(REG,182)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_sync_together94_aunroll_x_in_c0_eni18_1_tpl_5_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist0_sync_together94_aunroll_x_in_c0_eni18_1_tpl_5_cmpReg_q <= $unsigned(redist0_sync_together94_aunroll_x_in_c0_eni18_1_tpl_5_cmp_q);
        end
    end

    // redist0_sync_together94_aunroll_x_in_c0_eni18_1_tpl_5_sticky_ena(REG,185)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_sync_together94_aunroll_x_in_c0_eni18_1_tpl_5_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist0_sync_together94_aunroll_x_in_c0_eni18_1_tpl_5_nor_q == 1'b1)
        begin
            redist0_sync_together94_aunroll_x_in_c0_eni18_1_tpl_5_sticky_ena_q <= $unsigned(redist0_sync_together94_aunroll_x_in_c0_eni18_1_tpl_5_cmpReg_q);
        end
    end

    // redist0_sync_together94_aunroll_x_in_c0_eni18_1_tpl_5_enaAnd(LOGICAL,186)
    assign redist0_sync_together94_aunroll_x_in_c0_eni18_1_tpl_5_enaAnd_q = redist0_sync_together94_aunroll_x_in_c0_eni18_1_tpl_5_sticky_ena_q & VCC_q;

    // redist0_sync_together94_aunroll_x_in_c0_eni18_1_tpl_5_rdcnt(COUNTER,178)
    // low=0, high=2, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_sync_together94_aunroll_x_in_c0_eni18_1_tpl_5_rdcnt_i <= 2'd0;
            redist0_sync_together94_aunroll_x_in_c0_eni18_1_tpl_5_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist0_sync_together94_aunroll_x_in_c0_eni18_1_tpl_5_rdcnt_i == 2'd1)
            begin
                redist0_sync_together94_aunroll_x_in_c0_eni18_1_tpl_5_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist0_sync_together94_aunroll_x_in_c0_eni18_1_tpl_5_rdcnt_eq <= 1'b0;
            end
            if (redist0_sync_together94_aunroll_x_in_c0_eni18_1_tpl_5_rdcnt_eq == 1'b1)
            begin
                redist0_sync_together94_aunroll_x_in_c0_eni18_1_tpl_5_rdcnt_i <= $unsigned(redist0_sync_together94_aunroll_x_in_c0_eni18_1_tpl_5_rdcnt_i) + $unsigned(2'd2);
            end
            else
            begin
                redist0_sync_together94_aunroll_x_in_c0_eni18_1_tpl_5_rdcnt_i <= $unsigned(redist0_sync_together94_aunroll_x_in_c0_eni18_1_tpl_5_rdcnt_i) + $unsigned(2'd1);
            end
        end
    end
    assign redist0_sync_together94_aunroll_x_in_c0_eni18_1_tpl_5_rdcnt_q = redist0_sync_together94_aunroll_x_in_c0_eni18_1_tpl_5_rdcnt_i[1:0];

    // redist0_sync_together94_aunroll_x_in_c0_eni18_1_tpl_5_wraddr(REG,179)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_sync_together94_aunroll_x_in_c0_eni18_1_tpl_5_wraddr_q <= $unsigned(2'b10);
        end
        else
        begin
            redist0_sync_together94_aunroll_x_in_c0_eni18_1_tpl_5_wraddr_q <= $unsigned(redist0_sync_together94_aunroll_x_in_c0_eni18_1_tpl_5_rdcnt_q);
        end
    end

    // redist0_sync_together94_aunroll_x_in_c0_eni18_1_tpl_5_mem(DUALMEM,177)
    assign redist0_sync_together94_aunroll_x_in_c0_eni18_1_tpl_5_mem_ia = $unsigned(in_c0_eni18_1_tpl);
    assign redist0_sync_together94_aunroll_x_in_c0_eni18_1_tpl_5_mem_aa = redist0_sync_together94_aunroll_x_in_c0_eni18_1_tpl_5_wraddr_q;
    assign redist0_sync_together94_aunroll_x_in_c0_eni18_1_tpl_5_mem_ab = redist0_sync_together94_aunroll_x_in_c0_eni18_1_tpl_5_rdcnt_q;
    assign redist0_sync_together94_aunroll_x_in_c0_eni18_1_tpl_5_mem_reset0 = ~ (resetn);
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
    ) redist0_sync_together94_aunroll_x_in_c0_eni18_1_tpl_5_mem_dmem (
        .clocken1(redist0_sync_together94_aunroll_x_in_c0_eni18_1_tpl_5_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist0_sync_together94_aunroll_x_in_c0_eni18_1_tpl_5_mem_reset0),
        .clock1(clock),
        .address_a(redist0_sync_together94_aunroll_x_in_c0_eni18_1_tpl_5_mem_aa),
        .data_a(redist0_sync_together94_aunroll_x_in_c0_eni18_1_tpl_5_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist0_sync_together94_aunroll_x_in_c0_eni18_1_tpl_5_mem_ab),
        .q_b(redist0_sync_together94_aunroll_x_in_c0_eni18_1_tpl_5_mem_iq),
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
    assign redist0_sync_together94_aunroll_x_in_c0_eni18_1_tpl_5_mem_q = redist0_sync_together94_aunroll_x_in_c0_eni18_1_tpl_5_mem_iq[31:0];

    // redist0_sync_together94_aunroll_x_in_c0_eni18_1_tpl_5_outputreg0(DELAY,176)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_sync_together94_aunroll_x_in_c0_eni18_1_tpl_5_outputreg0_q <= '0;
        end
        else
        begin
            redist0_sync_together94_aunroll_x_in_c0_eni18_1_tpl_5_outputreg0_q <= $unsigned(redist0_sync_together94_aunroll_x_in_c0_eni18_1_tpl_5_mem_q);
        end
    end

    // redist10_sync_together94_aunroll_x_in_c0_eni18_9_tpl_5(DELAY,158)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_sync_together94_aunroll_x_in_c0_eni18_9_tpl_5_delay_0 <= '0;
            redist10_sync_together94_aunroll_x_in_c0_eni18_9_tpl_5_delay_1 <= '0;
            redist10_sync_together94_aunroll_x_in_c0_eni18_9_tpl_5_delay_2 <= '0;
            redist10_sync_together94_aunroll_x_in_c0_eni18_9_tpl_5_delay_3 <= '0;
            redist10_sync_together94_aunroll_x_in_c0_eni18_9_tpl_5_q <= '0;
        end
        else
        begin
            redist10_sync_together94_aunroll_x_in_c0_eni18_9_tpl_5_delay_0 <= $unsigned(in_c0_eni18_9_tpl);
            redist10_sync_together94_aunroll_x_in_c0_eni18_9_tpl_5_delay_1 <= redist10_sync_together94_aunroll_x_in_c0_eni18_9_tpl_5_delay_0;
            redist10_sync_together94_aunroll_x_in_c0_eni18_9_tpl_5_delay_2 <= redist10_sync_together94_aunroll_x_in_c0_eni18_9_tpl_5_delay_1;
            redist10_sync_together94_aunroll_x_in_c0_eni18_9_tpl_5_delay_3 <= redist10_sync_together94_aunroll_x_in_c0_eni18_9_tpl_5_delay_2;
            redist10_sync_together94_aunroll_x_in_c0_eni18_9_tpl_5_q <= redist10_sync_together94_aunroll_x_in_c0_eni18_9_tpl_5_delay_3;
        end
    end

    // redist19_sync_together94_aunroll_x_in_c0_eni18_18_tpl_5(DELAY,167)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist19_sync_together94_aunroll_x_in_c0_eni18_18_tpl_5_delay_0 <= '0;
            redist19_sync_together94_aunroll_x_in_c0_eni18_18_tpl_5_delay_1 <= '0;
            redist19_sync_together94_aunroll_x_in_c0_eni18_18_tpl_5_delay_2 <= '0;
            redist19_sync_together94_aunroll_x_in_c0_eni18_18_tpl_5_delay_3 <= '0;
            redist19_sync_together94_aunroll_x_in_c0_eni18_18_tpl_5_q <= '0;
        end
        else
        begin
            redist19_sync_together94_aunroll_x_in_c0_eni18_18_tpl_5_delay_0 <= $unsigned(in_c0_eni18_18_tpl);
            redist19_sync_together94_aunroll_x_in_c0_eni18_18_tpl_5_delay_1 <= redist19_sync_together94_aunroll_x_in_c0_eni18_18_tpl_5_delay_0;
            redist19_sync_together94_aunroll_x_in_c0_eni18_18_tpl_5_delay_2 <= redist19_sync_together94_aunroll_x_in_c0_eni18_18_tpl_5_delay_1;
            redist19_sync_together94_aunroll_x_in_c0_eni18_18_tpl_5_delay_3 <= redist19_sync_together94_aunroll_x_in_c0_eni18_18_tpl_5_delay_2;
            redist19_sync_together94_aunroll_x_in_c0_eni18_18_tpl_5_q <= redist19_sync_together94_aunroll_x_in_c0_eni18_18_tpl_5_delay_3;
        end
    end

    // redist18_sync_together94_aunroll_x_in_c0_eni18_17_tpl_5_notEnable(LOGICAL,283)
    assign redist18_sync_together94_aunroll_x_in_c0_eni18_17_tpl_5_notEnable_q = $unsigned(~ (VCC_q));

    // redist18_sync_together94_aunroll_x_in_c0_eni18_17_tpl_5_nor(LOGICAL,284)
    assign redist18_sync_together94_aunroll_x_in_c0_eni18_17_tpl_5_nor_q = ~ (redist18_sync_together94_aunroll_x_in_c0_eni18_17_tpl_5_notEnable_q | redist18_sync_together94_aunroll_x_in_c0_eni18_17_tpl_5_sticky_ena_q);

    // redist18_sync_together94_aunroll_x_in_c0_eni18_17_tpl_5_mem_last(CONSTANT,280)
    assign redist18_sync_together94_aunroll_x_in_c0_eni18_17_tpl_5_mem_last_q = $unsigned(3'b010);

    // redist18_sync_together94_aunroll_x_in_c0_eni18_17_tpl_5_cmp(LOGICAL,281)
    assign redist18_sync_together94_aunroll_x_in_c0_eni18_17_tpl_5_cmp_b = {1'b0, redist18_sync_together94_aunroll_x_in_c0_eni18_17_tpl_5_rdcnt_q};
    assign redist18_sync_together94_aunroll_x_in_c0_eni18_17_tpl_5_cmp_q = $unsigned(redist18_sync_together94_aunroll_x_in_c0_eni18_17_tpl_5_mem_last_q == redist18_sync_together94_aunroll_x_in_c0_eni18_17_tpl_5_cmp_b ? 1'b1 : 1'b0);

    // redist18_sync_together94_aunroll_x_in_c0_eni18_17_tpl_5_cmpReg(REG,282)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist18_sync_together94_aunroll_x_in_c0_eni18_17_tpl_5_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist18_sync_together94_aunroll_x_in_c0_eni18_17_tpl_5_cmpReg_q <= $unsigned(redist18_sync_together94_aunroll_x_in_c0_eni18_17_tpl_5_cmp_q);
        end
    end

    // redist18_sync_together94_aunroll_x_in_c0_eni18_17_tpl_5_sticky_ena(REG,285)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist18_sync_together94_aunroll_x_in_c0_eni18_17_tpl_5_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist18_sync_together94_aunroll_x_in_c0_eni18_17_tpl_5_nor_q == 1'b1)
        begin
            redist18_sync_together94_aunroll_x_in_c0_eni18_17_tpl_5_sticky_ena_q <= $unsigned(redist18_sync_together94_aunroll_x_in_c0_eni18_17_tpl_5_cmpReg_q);
        end
    end

    // redist18_sync_together94_aunroll_x_in_c0_eni18_17_tpl_5_enaAnd(LOGICAL,286)
    assign redist18_sync_together94_aunroll_x_in_c0_eni18_17_tpl_5_enaAnd_q = redist18_sync_together94_aunroll_x_in_c0_eni18_17_tpl_5_sticky_ena_q & VCC_q;

    // redist18_sync_together94_aunroll_x_in_c0_eni18_17_tpl_5_rdcnt(COUNTER,278)
    // low=0, high=3, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist18_sync_together94_aunroll_x_in_c0_eni18_17_tpl_5_rdcnt_i <= 2'd0;
        end
        else
        begin
            redist18_sync_together94_aunroll_x_in_c0_eni18_17_tpl_5_rdcnt_i <= $unsigned(redist18_sync_together94_aunroll_x_in_c0_eni18_17_tpl_5_rdcnt_i) + $unsigned(2'd1);
        end
    end
    assign redist18_sync_together94_aunroll_x_in_c0_eni18_17_tpl_5_rdcnt_q = redist18_sync_together94_aunroll_x_in_c0_eni18_17_tpl_5_rdcnt_i[1:0];

    // redist18_sync_together94_aunroll_x_in_c0_eni18_17_tpl_5_wraddr(REG,279)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist18_sync_together94_aunroll_x_in_c0_eni18_17_tpl_5_wraddr_q <= $unsigned(2'b11);
        end
        else
        begin
            redist18_sync_together94_aunroll_x_in_c0_eni18_17_tpl_5_wraddr_q <= $unsigned(redist18_sync_together94_aunroll_x_in_c0_eni18_17_tpl_5_rdcnt_q);
        end
    end

    // redist18_sync_together94_aunroll_x_in_c0_eni18_17_tpl_5_mem(DUALMEM,277)
    assign redist18_sync_together94_aunroll_x_in_c0_eni18_17_tpl_5_mem_ia = $unsigned(in_c0_eni18_17_tpl);
    assign redist18_sync_together94_aunroll_x_in_c0_eni18_17_tpl_5_mem_aa = redist18_sync_together94_aunroll_x_in_c0_eni18_17_tpl_5_wraddr_q;
    assign redist18_sync_together94_aunroll_x_in_c0_eni18_17_tpl_5_mem_ab = redist18_sync_together94_aunroll_x_in_c0_eni18_17_tpl_5_rdcnt_q;
    assign redist18_sync_together94_aunroll_x_in_c0_eni18_17_tpl_5_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(64),
        .widthad_a(2),
        .numwords_a(4),
        .width_b(64),
        .widthad_b(2),
        .numwords_b(4),
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
    ) redist18_sync_together94_aunroll_x_in_c0_eni18_17_tpl_5_mem_dmem (
        .clocken1(redist18_sync_together94_aunroll_x_in_c0_eni18_17_tpl_5_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist18_sync_together94_aunroll_x_in_c0_eni18_17_tpl_5_mem_reset0),
        .clock1(clock),
        .address_a(redist18_sync_together94_aunroll_x_in_c0_eni18_17_tpl_5_mem_aa),
        .data_a(redist18_sync_together94_aunroll_x_in_c0_eni18_17_tpl_5_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist18_sync_together94_aunroll_x_in_c0_eni18_17_tpl_5_mem_ab),
        .q_b(redist18_sync_together94_aunroll_x_in_c0_eni18_17_tpl_5_mem_iq),
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
    assign redist18_sync_together94_aunroll_x_in_c0_eni18_17_tpl_5_mem_q = redist18_sync_together94_aunroll_x_in_c0_eni18_17_tpl_5_mem_iq[63:0];

    // redist17_sync_together94_aunroll_x_in_c0_eni18_16_tpl_5_notEnable(LOGICAL,273)
    assign redist17_sync_together94_aunroll_x_in_c0_eni18_16_tpl_5_notEnable_q = $unsigned(~ (VCC_q));

    // redist17_sync_together94_aunroll_x_in_c0_eni18_16_tpl_5_nor(LOGICAL,274)
    assign redist17_sync_together94_aunroll_x_in_c0_eni18_16_tpl_5_nor_q = ~ (redist17_sync_together94_aunroll_x_in_c0_eni18_16_tpl_5_notEnable_q | redist17_sync_together94_aunroll_x_in_c0_eni18_16_tpl_5_sticky_ena_q);

    // redist17_sync_together94_aunroll_x_in_c0_eni18_16_tpl_5_mem_last(CONSTANT,270)
    assign redist17_sync_together94_aunroll_x_in_c0_eni18_16_tpl_5_mem_last_q = $unsigned(3'b010);

    // redist17_sync_together94_aunroll_x_in_c0_eni18_16_tpl_5_cmp(LOGICAL,271)
    assign redist17_sync_together94_aunroll_x_in_c0_eni18_16_tpl_5_cmp_b = {1'b0, redist17_sync_together94_aunroll_x_in_c0_eni18_16_tpl_5_rdcnt_q};
    assign redist17_sync_together94_aunroll_x_in_c0_eni18_16_tpl_5_cmp_q = $unsigned(redist17_sync_together94_aunroll_x_in_c0_eni18_16_tpl_5_mem_last_q == redist17_sync_together94_aunroll_x_in_c0_eni18_16_tpl_5_cmp_b ? 1'b1 : 1'b0);

    // redist17_sync_together94_aunroll_x_in_c0_eni18_16_tpl_5_cmpReg(REG,272)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist17_sync_together94_aunroll_x_in_c0_eni18_16_tpl_5_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist17_sync_together94_aunroll_x_in_c0_eni18_16_tpl_5_cmpReg_q <= $unsigned(redist17_sync_together94_aunroll_x_in_c0_eni18_16_tpl_5_cmp_q);
        end
    end

    // redist17_sync_together94_aunroll_x_in_c0_eni18_16_tpl_5_sticky_ena(REG,275)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist17_sync_together94_aunroll_x_in_c0_eni18_16_tpl_5_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist17_sync_together94_aunroll_x_in_c0_eni18_16_tpl_5_nor_q == 1'b1)
        begin
            redist17_sync_together94_aunroll_x_in_c0_eni18_16_tpl_5_sticky_ena_q <= $unsigned(redist17_sync_together94_aunroll_x_in_c0_eni18_16_tpl_5_cmpReg_q);
        end
    end

    // redist17_sync_together94_aunroll_x_in_c0_eni18_16_tpl_5_enaAnd(LOGICAL,276)
    assign redist17_sync_together94_aunroll_x_in_c0_eni18_16_tpl_5_enaAnd_q = redist17_sync_together94_aunroll_x_in_c0_eni18_16_tpl_5_sticky_ena_q & VCC_q;

    // redist17_sync_together94_aunroll_x_in_c0_eni18_16_tpl_5_rdcnt(COUNTER,268)
    // low=0, high=3, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist17_sync_together94_aunroll_x_in_c0_eni18_16_tpl_5_rdcnt_i <= 2'd0;
        end
        else
        begin
            redist17_sync_together94_aunroll_x_in_c0_eni18_16_tpl_5_rdcnt_i <= $unsigned(redist17_sync_together94_aunroll_x_in_c0_eni18_16_tpl_5_rdcnt_i) + $unsigned(2'd1);
        end
    end
    assign redist17_sync_together94_aunroll_x_in_c0_eni18_16_tpl_5_rdcnt_q = redist17_sync_together94_aunroll_x_in_c0_eni18_16_tpl_5_rdcnt_i[1:0];

    // redist17_sync_together94_aunroll_x_in_c0_eni18_16_tpl_5_wraddr(REG,269)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist17_sync_together94_aunroll_x_in_c0_eni18_16_tpl_5_wraddr_q <= $unsigned(2'b11);
        end
        else
        begin
            redist17_sync_together94_aunroll_x_in_c0_eni18_16_tpl_5_wraddr_q <= $unsigned(redist17_sync_together94_aunroll_x_in_c0_eni18_16_tpl_5_rdcnt_q);
        end
    end

    // redist17_sync_together94_aunroll_x_in_c0_eni18_16_tpl_5_mem(DUALMEM,267)
    assign redist17_sync_together94_aunroll_x_in_c0_eni18_16_tpl_5_mem_ia = $unsigned(in_c0_eni18_16_tpl);
    assign redist17_sync_together94_aunroll_x_in_c0_eni18_16_tpl_5_mem_aa = redist17_sync_together94_aunroll_x_in_c0_eni18_16_tpl_5_wraddr_q;
    assign redist17_sync_together94_aunroll_x_in_c0_eni18_16_tpl_5_mem_ab = redist17_sync_together94_aunroll_x_in_c0_eni18_16_tpl_5_rdcnt_q;
    assign redist17_sync_together94_aunroll_x_in_c0_eni18_16_tpl_5_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(64),
        .widthad_a(2),
        .numwords_a(4),
        .width_b(64),
        .widthad_b(2),
        .numwords_b(4),
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
    ) redist17_sync_together94_aunroll_x_in_c0_eni18_16_tpl_5_mem_dmem (
        .clocken1(redist17_sync_together94_aunroll_x_in_c0_eni18_16_tpl_5_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist17_sync_together94_aunroll_x_in_c0_eni18_16_tpl_5_mem_reset0),
        .clock1(clock),
        .address_a(redist17_sync_together94_aunroll_x_in_c0_eni18_16_tpl_5_mem_aa),
        .data_a(redist17_sync_together94_aunroll_x_in_c0_eni18_16_tpl_5_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist17_sync_together94_aunroll_x_in_c0_eni18_16_tpl_5_mem_ab),
        .q_b(redist17_sync_together94_aunroll_x_in_c0_eni18_16_tpl_5_mem_iq),
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
    assign redist17_sync_together94_aunroll_x_in_c0_eni18_16_tpl_5_mem_q = redist17_sync_together94_aunroll_x_in_c0_eni18_16_tpl_5_mem_iq[63:0];

    // redist16_sync_together94_aunroll_x_in_c0_eni18_15_tpl_5(DELAY,164)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist16_sync_together94_aunroll_x_in_c0_eni18_15_tpl_5_delay_0 <= '0;
            redist16_sync_together94_aunroll_x_in_c0_eni18_15_tpl_5_delay_1 <= '0;
            redist16_sync_together94_aunroll_x_in_c0_eni18_15_tpl_5_delay_2 <= '0;
            redist16_sync_together94_aunroll_x_in_c0_eni18_15_tpl_5_delay_3 <= '0;
            redist16_sync_together94_aunroll_x_in_c0_eni18_15_tpl_5_q <= '0;
        end
        else
        begin
            redist16_sync_together94_aunroll_x_in_c0_eni18_15_tpl_5_delay_0 <= $unsigned(in_c0_eni18_15_tpl);
            redist16_sync_together94_aunroll_x_in_c0_eni18_15_tpl_5_delay_1 <= redist16_sync_together94_aunroll_x_in_c0_eni18_15_tpl_5_delay_0;
            redist16_sync_together94_aunroll_x_in_c0_eni18_15_tpl_5_delay_2 <= redist16_sync_together94_aunroll_x_in_c0_eni18_15_tpl_5_delay_1;
            redist16_sync_together94_aunroll_x_in_c0_eni18_15_tpl_5_delay_3 <= redist16_sync_together94_aunroll_x_in_c0_eni18_15_tpl_5_delay_2;
            redist16_sync_together94_aunroll_x_in_c0_eni18_15_tpl_5_q <= redist16_sync_together94_aunroll_x_in_c0_eni18_15_tpl_5_delay_3;
        end
    end

    // redist15_sync_together94_aunroll_x_in_c0_eni18_14_tpl_5_notEnable(LOGICAL,263)
    assign redist15_sync_together94_aunroll_x_in_c0_eni18_14_tpl_5_notEnable_q = $unsigned(~ (VCC_q));

    // redist15_sync_together94_aunroll_x_in_c0_eni18_14_tpl_5_nor(LOGICAL,264)
    assign redist15_sync_together94_aunroll_x_in_c0_eni18_14_tpl_5_nor_q = ~ (redist15_sync_together94_aunroll_x_in_c0_eni18_14_tpl_5_notEnable_q | redist15_sync_together94_aunroll_x_in_c0_eni18_14_tpl_5_sticky_ena_q);

    // redist15_sync_together94_aunroll_x_in_c0_eni18_14_tpl_5_mem_last(CONSTANT,260)
    assign redist15_sync_together94_aunroll_x_in_c0_eni18_14_tpl_5_mem_last_q = $unsigned(3'b010);

    // redist15_sync_together94_aunroll_x_in_c0_eni18_14_tpl_5_cmp(LOGICAL,261)
    assign redist15_sync_together94_aunroll_x_in_c0_eni18_14_tpl_5_cmp_b = {1'b0, redist15_sync_together94_aunroll_x_in_c0_eni18_14_tpl_5_rdcnt_q};
    assign redist15_sync_together94_aunroll_x_in_c0_eni18_14_tpl_5_cmp_q = $unsigned(redist15_sync_together94_aunroll_x_in_c0_eni18_14_tpl_5_mem_last_q == redist15_sync_together94_aunroll_x_in_c0_eni18_14_tpl_5_cmp_b ? 1'b1 : 1'b0);

    // redist15_sync_together94_aunroll_x_in_c0_eni18_14_tpl_5_cmpReg(REG,262)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist15_sync_together94_aunroll_x_in_c0_eni18_14_tpl_5_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist15_sync_together94_aunroll_x_in_c0_eni18_14_tpl_5_cmpReg_q <= $unsigned(redist15_sync_together94_aunroll_x_in_c0_eni18_14_tpl_5_cmp_q);
        end
    end

    // redist15_sync_together94_aunroll_x_in_c0_eni18_14_tpl_5_sticky_ena(REG,265)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist15_sync_together94_aunroll_x_in_c0_eni18_14_tpl_5_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist15_sync_together94_aunroll_x_in_c0_eni18_14_tpl_5_nor_q == 1'b1)
        begin
            redist15_sync_together94_aunroll_x_in_c0_eni18_14_tpl_5_sticky_ena_q <= $unsigned(redist15_sync_together94_aunroll_x_in_c0_eni18_14_tpl_5_cmpReg_q);
        end
    end

    // redist15_sync_together94_aunroll_x_in_c0_eni18_14_tpl_5_enaAnd(LOGICAL,266)
    assign redist15_sync_together94_aunroll_x_in_c0_eni18_14_tpl_5_enaAnd_q = redist15_sync_together94_aunroll_x_in_c0_eni18_14_tpl_5_sticky_ena_q & VCC_q;

    // redist15_sync_together94_aunroll_x_in_c0_eni18_14_tpl_5_rdcnt(COUNTER,258)
    // low=0, high=3, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist15_sync_together94_aunroll_x_in_c0_eni18_14_tpl_5_rdcnt_i <= 2'd0;
        end
        else
        begin
            redist15_sync_together94_aunroll_x_in_c0_eni18_14_tpl_5_rdcnt_i <= $unsigned(redist15_sync_together94_aunroll_x_in_c0_eni18_14_tpl_5_rdcnt_i) + $unsigned(2'd1);
        end
    end
    assign redist15_sync_together94_aunroll_x_in_c0_eni18_14_tpl_5_rdcnt_q = redist15_sync_together94_aunroll_x_in_c0_eni18_14_tpl_5_rdcnt_i[1:0];

    // redist15_sync_together94_aunroll_x_in_c0_eni18_14_tpl_5_wraddr(REG,259)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist15_sync_together94_aunroll_x_in_c0_eni18_14_tpl_5_wraddr_q <= $unsigned(2'b11);
        end
        else
        begin
            redist15_sync_together94_aunroll_x_in_c0_eni18_14_tpl_5_wraddr_q <= $unsigned(redist15_sync_together94_aunroll_x_in_c0_eni18_14_tpl_5_rdcnt_q);
        end
    end

    // redist15_sync_together94_aunroll_x_in_c0_eni18_14_tpl_5_mem(DUALMEM,257)
    assign redist15_sync_together94_aunroll_x_in_c0_eni18_14_tpl_5_mem_ia = $unsigned(in_c0_eni18_14_tpl);
    assign redist15_sync_together94_aunroll_x_in_c0_eni18_14_tpl_5_mem_aa = redist15_sync_together94_aunroll_x_in_c0_eni18_14_tpl_5_wraddr_q;
    assign redist15_sync_together94_aunroll_x_in_c0_eni18_14_tpl_5_mem_ab = redist15_sync_together94_aunroll_x_in_c0_eni18_14_tpl_5_rdcnt_q;
    assign redist15_sync_together94_aunroll_x_in_c0_eni18_14_tpl_5_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(2),
        .numwords_a(4),
        .width_b(32),
        .widthad_b(2),
        .numwords_b(4),
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
    ) redist15_sync_together94_aunroll_x_in_c0_eni18_14_tpl_5_mem_dmem (
        .clocken1(redist15_sync_together94_aunroll_x_in_c0_eni18_14_tpl_5_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist15_sync_together94_aunroll_x_in_c0_eni18_14_tpl_5_mem_reset0),
        .clock1(clock),
        .address_a(redist15_sync_together94_aunroll_x_in_c0_eni18_14_tpl_5_mem_aa),
        .data_a(redist15_sync_together94_aunroll_x_in_c0_eni18_14_tpl_5_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist15_sync_together94_aunroll_x_in_c0_eni18_14_tpl_5_mem_ab),
        .q_b(redist15_sync_together94_aunroll_x_in_c0_eni18_14_tpl_5_mem_iq),
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
    assign redist15_sync_together94_aunroll_x_in_c0_eni18_14_tpl_5_mem_q = redist15_sync_together94_aunroll_x_in_c0_eni18_14_tpl_5_mem_iq[31:0];

    // redist14_sync_together94_aunroll_x_in_c0_eni18_13_tpl_5_notEnable(LOGICAL,253)
    assign redist14_sync_together94_aunroll_x_in_c0_eni18_13_tpl_5_notEnable_q = $unsigned(~ (VCC_q));

    // redist14_sync_together94_aunroll_x_in_c0_eni18_13_tpl_5_nor(LOGICAL,254)
    assign redist14_sync_together94_aunroll_x_in_c0_eni18_13_tpl_5_nor_q = ~ (redist14_sync_together94_aunroll_x_in_c0_eni18_13_tpl_5_notEnable_q | redist14_sync_together94_aunroll_x_in_c0_eni18_13_tpl_5_sticky_ena_q);

    // redist14_sync_together94_aunroll_x_in_c0_eni18_13_tpl_5_mem_last(CONSTANT,250)
    assign redist14_sync_together94_aunroll_x_in_c0_eni18_13_tpl_5_mem_last_q = $unsigned(3'b010);

    // redist14_sync_together94_aunroll_x_in_c0_eni18_13_tpl_5_cmp(LOGICAL,251)
    assign redist14_sync_together94_aunroll_x_in_c0_eni18_13_tpl_5_cmp_b = {1'b0, redist14_sync_together94_aunroll_x_in_c0_eni18_13_tpl_5_rdcnt_q};
    assign redist14_sync_together94_aunroll_x_in_c0_eni18_13_tpl_5_cmp_q = $unsigned(redist14_sync_together94_aunroll_x_in_c0_eni18_13_tpl_5_mem_last_q == redist14_sync_together94_aunroll_x_in_c0_eni18_13_tpl_5_cmp_b ? 1'b1 : 1'b0);

    // redist14_sync_together94_aunroll_x_in_c0_eni18_13_tpl_5_cmpReg(REG,252)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_sync_together94_aunroll_x_in_c0_eni18_13_tpl_5_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist14_sync_together94_aunroll_x_in_c0_eni18_13_tpl_5_cmpReg_q <= $unsigned(redist14_sync_together94_aunroll_x_in_c0_eni18_13_tpl_5_cmp_q);
        end
    end

    // redist14_sync_together94_aunroll_x_in_c0_eni18_13_tpl_5_sticky_ena(REG,255)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_sync_together94_aunroll_x_in_c0_eni18_13_tpl_5_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist14_sync_together94_aunroll_x_in_c0_eni18_13_tpl_5_nor_q == 1'b1)
        begin
            redist14_sync_together94_aunroll_x_in_c0_eni18_13_tpl_5_sticky_ena_q <= $unsigned(redist14_sync_together94_aunroll_x_in_c0_eni18_13_tpl_5_cmpReg_q);
        end
    end

    // redist14_sync_together94_aunroll_x_in_c0_eni18_13_tpl_5_enaAnd(LOGICAL,256)
    assign redist14_sync_together94_aunroll_x_in_c0_eni18_13_tpl_5_enaAnd_q = redist14_sync_together94_aunroll_x_in_c0_eni18_13_tpl_5_sticky_ena_q & VCC_q;

    // redist14_sync_together94_aunroll_x_in_c0_eni18_13_tpl_5_rdcnt(COUNTER,248)
    // low=0, high=3, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_sync_together94_aunroll_x_in_c0_eni18_13_tpl_5_rdcnt_i <= 2'd0;
        end
        else
        begin
            redist14_sync_together94_aunroll_x_in_c0_eni18_13_tpl_5_rdcnt_i <= $unsigned(redist14_sync_together94_aunroll_x_in_c0_eni18_13_tpl_5_rdcnt_i) + $unsigned(2'd1);
        end
    end
    assign redist14_sync_together94_aunroll_x_in_c0_eni18_13_tpl_5_rdcnt_q = redist14_sync_together94_aunroll_x_in_c0_eni18_13_tpl_5_rdcnt_i[1:0];

    // redist14_sync_together94_aunroll_x_in_c0_eni18_13_tpl_5_wraddr(REG,249)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_sync_together94_aunroll_x_in_c0_eni18_13_tpl_5_wraddr_q <= $unsigned(2'b11);
        end
        else
        begin
            redist14_sync_together94_aunroll_x_in_c0_eni18_13_tpl_5_wraddr_q <= $unsigned(redist14_sync_together94_aunroll_x_in_c0_eni18_13_tpl_5_rdcnt_q);
        end
    end

    // redist14_sync_together94_aunroll_x_in_c0_eni18_13_tpl_5_mem(DUALMEM,247)
    assign redist14_sync_together94_aunroll_x_in_c0_eni18_13_tpl_5_mem_ia = $unsigned(in_c0_eni18_13_tpl);
    assign redist14_sync_together94_aunroll_x_in_c0_eni18_13_tpl_5_mem_aa = redist14_sync_together94_aunroll_x_in_c0_eni18_13_tpl_5_wraddr_q;
    assign redist14_sync_together94_aunroll_x_in_c0_eni18_13_tpl_5_mem_ab = redist14_sync_together94_aunroll_x_in_c0_eni18_13_tpl_5_rdcnt_q;
    assign redist14_sync_together94_aunroll_x_in_c0_eni18_13_tpl_5_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(2),
        .numwords_a(4),
        .width_b(32),
        .widthad_b(2),
        .numwords_b(4),
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
    ) redist14_sync_together94_aunroll_x_in_c0_eni18_13_tpl_5_mem_dmem (
        .clocken1(redist14_sync_together94_aunroll_x_in_c0_eni18_13_tpl_5_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist14_sync_together94_aunroll_x_in_c0_eni18_13_tpl_5_mem_reset0),
        .clock1(clock),
        .address_a(redist14_sync_together94_aunroll_x_in_c0_eni18_13_tpl_5_mem_aa),
        .data_a(redist14_sync_together94_aunroll_x_in_c0_eni18_13_tpl_5_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist14_sync_together94_aunroll_x_in_c0_eni18_13_tpl_5_mem_ab),
        .q_b(redist14_sync_together94_aunroll_x_in_c0_eni18_13_tpl_5_mem_iq),
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
    assign redist14_sync_together94_aunroll_x_in_c0_eni18_13_tpl_5_mem_q = redist14_sync_together94_aunroll_x_in_c0_eni18_13_tpl_5_mem_iq[31:0];

    // redist13_sync_together94_aunroll_x_in_c0_eni18_12_tpl_5(DELAY,161)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_sync_together94_aunroll_x_in_c0_eni18_12_tpl_5_delay_0 <= '0;
            redist13_sync_together94_aunroll_x_in_c0_eni18_12_tpl_5_delay_1 <= '0;
            redist13_sync_together94_aunroll_x_in_c0_eni18_12_tpl_5_delay_2 <= '0;
            redist13_sync_together94_aunroll_x_in_c0_eni18_12_tpl_5_delay_3 <= '0;
            redist13_sync_together94_aunroll_x_in_c0_eni18_12_tpl_5_q <= '0;
        end
        else
        begin
            redist13_sync_together94_aunroll_x_in_c0_eni18_12_tpl_5_delay_0 <= $unsigned(in_c0_eni18_12_tpl);
            redist13_sync_together94_aunroll_x_in_c0_eni18_12_tpl_5_delay_1 <= redist13_sync_together94_aunroll_x_in_c0_eni18_12_tpl_5_delay_0;
            redist13_sync_together94_aunroll_x_in_c0_eni18_12_tpl_5_delay_2 <= redist13_sync_together94_aunroll_x_in_c0_eni18_12_tpl_5_delay_1;
            redist13_sync_together94_aunroll_x_in_c0_eni18_12_tpl_5_delay_3 <= redist13_sync_together94_aunroll_x_in_c0_eni18_12_tpl_5_delay_2;
            redist13_sync_together94_aunroll_x_in_c0_eni18_12_tpl_5_q <= redist13_sync_together94_aunroll_x_in_c0_eni18_12_tpl_5_delay_3;
        end
    end

    // redist12_sync_together94_aunroll_x_in_c0_eni18_11_tpl_5_notEnable(LOGICAL,243)
    assign redist12_sync_together94_aunroll_x_in_c0_eni18_11_tpl_5_notEnable_q = $unsigned(~ (VCC_q));

    // redist12_sync_together94_aunroll_x_in_c0_eni18_11_tpl_5_nor(LOGICAL,244)
    assign redist12_sync_together94_aunroll_x_in_c0_eni18_11_tpl_5_nor_q = ~ (redist12_sync_together94_aunroll_x_in_c0_eni18_11_tpl_5_notEnable_q | redist12_sync_together94_aunroll_x_in_c0_eni18_11_tpl_5_sticky_ena_q);

    // redist12_sync_together94_aunroll_x_in_c0_eni18_11_tpl_5_mem_last(CONSTANT,240)
    assign redist12_sync_together94_aunroll_x_in_c0_eni18_11_tpl_5_mem_last_q = $unsigned(3'b010);

    // redist12_sync_together94_aunroll_x_in_c0_eni18_11_tpl_5_cmp(LOGICAL,241)
    assign redist12_sync_together94_aunroll_x_in_c0_eni18_11_tpl_5_cmp_b = {1'b0, redist12_sync_together94_aunroll_x_in_c0_eni18_11_tpl_5_rdcnt_q};
    assign redist12_sync_together94_aunroll_x_in_c0_eni18_11_tpl_5_cmp_q = $unsigned(redist12_sync_together94_aunroll_x_in_c0_eni18_11_tpl_5_mem_last_q == redist12_sync_together94_aunroll_x_in_c0_eni18_11_tpl_5_cmp_b ? 1'b1 : 1'b0);

    // redist12_sync_together94_aunroll_x_in_c0_eni18_11_tpl_5_cmpReg(REG,242)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_sync_together94_aunroll_x_in_c0_eni18_11_tpl_5_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist12_sync_together94_aunroll_x_in_c0_eni18_11_tpl_5_cmpReg_q <= $unsigned(redist12_sync_together94_aunroll_x_in_c0_eni18_11_tpl_5_cmp_q);
        end
    end

    // redist12_sync_together94_aunroll_x_in_c0_eni18_11_tpl_5_sticky_ena(REG,245)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_sync_together94_aunroll_x_in_c0_eni18_11_tpl_5_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist12_sync_together94_aunroll_x_in_c0_eni18_11_tpl_5_nor_q == 1'b1)
        begin
            redist12_sync_together94_aunroll_x_in_c0_eni18_11_tpl_5_sticky_ena_q <= $unsigned(redist12_sync_together94_aunroll_x_in_c0_eni18_11_tpl_5_cmpReg_q);
        end
    end

    // redist12_sync_together94_aunroll_x_in_c0_eni18_11_tpl_5_enaAnd(LOGICAL,246)
    assign redist12_sync_together94_aunroll_x_in_c0_eni18_11_tpl_5_enaAnd_q = redist12_sync_together94_aunroll_x_in_c0_eni18_11_tpl_5_sticky_ena_q & VCC_q;

    // redist12_sync_together94_aunroll_x_in_c0_eni18_11_tpl_5_rdcnt(COUNTER,238)
    // low=0, high=3, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_sync_together94_aunroll_x_in_c0_eni18_11_tpl_5_rdcnt_i <= 2'd0;
        end
        else
        begin
            redist12_sync_together94_aunroll_x_in_c0_eni18_11_tpl_5_rdcnt_i <= $unsigned(redist12_sync_together94_aunroll_x_in_c0_eni18_11_tpl_5_rdcnt_i) + $unsigned(2'd1);
        end
    end
    assign redist12_sync_together94_aunroll_x_in_c0_eni18_11_tpl_5_rdcnt_q = redist12_sync_together94_aunroll_x_in_c0_eni18_11_tpl_5_rdcnt_i[1:0];

    // redist12_sync_together94_aunroll_x_in_c0_eni18_11_tpl_5_wraddr(REG,239)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_sync_together94_aunroll_x_in_c0_eni18_11_tpl_5_wraddr_q <= $unsigned(2'b11);
        end
        else
        begin
            redist12_sync_together94_aunroll_x_in_c0_eni18_11_tpl_5_wraddr_q <= $unsigned(redist12_sync_together94_aunroll_x_in_c0_eni18_11_tpl_5_rdcnt_q);
        end
    end

    // redist12_sync_together94_aunroll_x_in_c0_eni18_11_tpl_5_mem(DUALMEM,237)
    assign redist12_sync_together94_aunroll_x_in_c0_eni18_11_tpl_5_mem_ia = $unsigned(in_c0_eni18_11_tpl);
    assign redist12_sync_together94_aunroll_x_in_c0_eni18_11_tpl_5_mem_aa = redist12_sync_together94_aunroll_x_in_c0_eni18_11_tpl_5_wraddr_q;
    assign redist12_sync_together94_aunroll_x_in_c0_eni18_11_tpl_5_mem_ab = redist12_sync_together94_aunroll_x_in_c0_eni18_11_tpl_5_rdcnt_q;
    assign redist12_sync_together94_aunroll_x_in_c0_eni18_11_tpl_5_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(64),
        .widthad_a(2),
        .numwords_a(4),
        .width_b(64),
        .widthad_b(2),
        .numwords_b(4),
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
    ) redist12_sync_together94_aunroll_x_in_c0_eni18_11_tpl_5_mem_dmem (
        .clocken1(redist12_sync_together94_aunroll_x_in_c0_eni18_11_tpl_5_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist12_sync_together94_aunroll_x_in_c0_eni18_11_tpl_5_mem_reset0),
        .clock1(clock),
        .address_a(redist12_sync_together94_aunroll_x_in_c0_eni18_11_tpl_5_mem_aa),
        .data_a(redist12_sync_together94_aunroll_x_in_c0_eni18_11_tpl_5_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist12_sync_together94_aunroll_x_in_c0_eni18_11_tpl_5_mem_ab),
        .q_b(redist12_sync_together94_aunroll_x_in_c0_eni18_11_tpl_5_mem_iq),
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
    assign redist12_sync_together94_aunroll_x_in_c0_eni18_11_tpl_5_mem_q = redist12_sync_together94_aunroll_x_in_c0_eni18_11_tpl_5_mem_iq[63:0];

    // redist11_sync_together94_aunroll_x_in_c0_eni18_10_tpl_5_notEnable(LOGICAL,233)
    assign redist11_sync_together94_aunroll_x_in_c0_eni18_10_tpl_5_notEnable_q = $unsigned(~ (VCC_q));

    // redist11_sync_together94_aunroll_x_in_c0_eni18_10_tpl_5_nor(LOGICAL,234)
    assign redist11_sync_together94_aunroll_x_in_c0_eni18_10_tpl_5_nor_q = ~ (redist11_sync_together94_aunroll_x_in_c0_eni18_10_tpl_5_notEnable_q | redist11_sync_together94_aunroll_x_in_c0_eni18_10_tpl_5_sticky_ena_q);

    // redist11_sync_together94_aunroll_x_in_c0_eni18_10_tpl_5_mem_last(CONSTANT,230)
    assign redist11_sync_together94_aunroll_x_in_c0_eni18_10_tpl_5_mem_last_q = $unsigned(3'b010);

    // redist11_sync_together94_aunroll_x_in_c0_eni18_10_tpl_5_cmp(LOGICAL,231)
    assign redist11_sync_together94_aunroll_x_in_c0_eni18_10_tpl_5_cmp_b = {1'b0, redist11_sync_together94_aunroll_x_in_c0_eni18_10_tpl_5_rdcnt_q};
    assign redist11_sync_together94_aunroll_x_in_c0_eni18_10_tpl_5_cmp_q = $unsigned(redist11_sync_together94_aunroll_x_in_c0_eni18_10_tpl_5_mem_last_q == redist11_sync_together94_aunroll_x_in_c0_eni18_10_tpl_5_cmp_b ? 1'b1 : 1'b0);

    // redist11_sync_together94_aunroll_x_in_c0_eni18_10_tpl_5_cmpReg(REG,232)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_sync_together94_aunroll_x_in_c0_eni18_10_tpl_5_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist11_sync_together94_aunroll_x_in_c0_eni18_10_tpl_5_cmpReg_q <= $unsigned(redist11_sync_together94_aunroll_x_in_c0_eni18_10_tpl_5_cmp_q);
        end
    end

    // redist11_sync_together94_aunroll_x_in_c0_eni18_10_tpl_5_sticky_ena(REG,235)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_sync_together94_aunroll_x_in_c0_eni18_10_tpl_5_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist11_sync_together94_aunroll_x_in_c0_eni18_10_tpl_5_nor_q == 1'b1)
        begin
            redist11_sync_together94_aunroll_x_in_c0_eni18_10_tpl_5_sticky_ena_q <= $unsigned(redist11_sync_together94_aunroll_x_in_c0_eni18_10_tpl_5_cmpReg_q);
        end
    end

    // redist11_sync_together94_aunroll_x_in_c0_eni18_10_tpl_5_enaAnd(LOGICAL,236)
    assign redist11_sync_together94_aunroll_x_in_c0_eni18_10_tpl_5_enaAnd_q = redist11_sync_together94_aunroll_x_in_c0_eni18_10_tpl_5_sticky_ena_q & VCC_q;

    // redist11_sync_together94_aunroll_x_in_c0_eni18_10_tpl_5_rdcnt(COUNTER,228)
    // low=0, high=3, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_sync_together94_aunroll_x_in_c0_eni18_10_tpl_5_rdcnt_i <= 2'd0;
        end
        else
        begin
            redist11_sync_together94_aunroll_x_in_c0_eni18_10_tpl_5_rdcnt_i <= $unsigned(redist11_sync_together94_aunroll_x_in_c0_eni18_10_tpl_5_rdcnt_i) + $unsigned(2'd1);
        end
    end
    assign redist11_sync_together94_aunroll_x_in_c0_eni18_10_tpl_5_rdcnt_q = redist11_sync_together94_aunroll_x_in_c0_eni18_10_tpl_5_rdcnt_i[1:0];

    // redist11_sync_together94_aunroll_x_in_c0_eni18_10_tpl_5_wraddr(REG,229)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_sync_together94_aunroll_x_in_c0_eni18_10_tpl_5_wraddr_q <= $unsigned(2'b11);
        end
        else
        begin
            redist11_sync_together94_aunroll_x_in_c0_eni18_10_tpl_5_wraddr_q <= $unsigned(redist11_sync_together94_aunroll_x_in_c0_eni18_10_tpl_5_rdcnt_q);
        end
    end

    // redist11_sync_together94_aunroll_x_in_c0_eni18_10_tpl_5_mem(DUALMEM,227)
    assign redist11_sync_together94_aunroll_x_in_c0_eni18_10_tpl_5_mem_ia = $unsigned(in_c0_eni18_10_tpl);
    assign redist11_sync_together94_aunroll_x_in_c0_eni18_10_tpl_5_mem_aa = redist11_sync_together94_aunroll_x_in_c0_eni18_10_tpl_5_wraddr_q;
    assign redist11_sync_together94_aunroll_x_in_c0_eni18_10_tpl_5_mem_ab = redist11_sync_together94_aunroll_x_in_c0_eni18_10_tpl_5_rdcnt_q;
    assign redist11_sync_together94_aunroll_x_in_c0_eni18_10_tpl_5_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(64),
        .widthad_a(2),
        .numwords_a(4),
        .width_b(64),
        .widthad_b(2),
        .numwords_b(4),
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
    ) redist11_sync_together94_aunroll_x_in_c0_eni18_10_tpl_5_mem_dmem (
        .clocken1(redist11_sync_together94_aunroll_x_in_c0_eni18_10_tpl_5_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist11_sync_together94_aunroll_x_in_c0_eni18_10_tpl_5_mem_reset0),
        .clock1(clock),
        .address_a(redist11_sync_together94_aunroll_x_in_c0_eni18_10_tpl_5_mem_aa),
        .data_a(redist11_sync_together94_aunroll_x_in_c0_eni18_10_tpl_5_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist11_sync_together94_aunroll_x_in_c0_eni18_10_tpl_5_mem_ab),
        .q_b(redist11_sync_together94_aunroll_x_in_c0_eni18_10_tpl_5_mem_iq),
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
    assign redist11_sync_together94_aunroll_x_in_c0_eni18_10_tpl_5_mem_q = redist11_sync_together94_aunroll_x_in_c0_eni18_10_tpl_5_mem_iq[63:0];

    // redist1_sync_together94_aunroll_x_in_c0_eni18_2_tpl_1(DELAY,149)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together94_aunroll_x_in_c0_eni18_2_tpl_1_q <= '0;
        end
        else
        begin
            redist1_sync_together94_aunroll_x_in_c0_eni18_2_tpl_1_q <= $unsigned(in_c0_eni18_2_tpl);
        end
    end

    // redist2_sync_together94_aunroll_x_in_c0_eni18_2_tpl_5(DELAY,150)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_sync_together94_aunroll_x_in_c0_eni18_2_tpl_5_delay_0 <= '0;
            redist2_sync_together94_aunroll_x_in_c0_eni18_2_tpl_5_delay_1 <= '0;
            redist2_sync_together94_aunroll_x_in_c0_eni18_2_tpl_5_delay_2 <= '0;
            redist2_sync_together94_aunroll_x_in_c0_eni18_2_tpl_5_q <= '0;
        end
        else
        begin
            redist2_sync_together94_aunroll_x_in_c0_eni18_2_tpl_5_delay_0 <= $unsigned(redist1_sync_together94_aunroll_x_in_c0_eni18_2_tpl_1_q);
            redist2_sync_together94_aunroll_x_in_c0_eni18_2_tpl_5_delay_1 <= redist2_sync_together94_aunroll_x_in_c0_eni18_2_tpl_5_delay_0;
            redist2_sync_together94_aunroll_x_in_c0_eni18_2_tpl_5_delay_2 <= redist2_sync_together94_aunroll_x_in_c0_eni18_2_tpl_5_delay_1;
            redist2_sync_together94_aunroll_x_in_c0_eni18_2_tpl_5_q <= redist2_sync_together94_aunroll_x_in_c0_eni18_2_tpl_5_delay_2;
        end
    end

    // valid_fanout_reg18(REG,110)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg18_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg18_q <= $unsigned(redist21_sync_together94_aunroll_x_in_i_valid_4_q);
        end
    end

    // valid_fanout_reg19(REG,111)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg19_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg19_q <= $unsigned(redist21_sync_together94_aunroll_x_in_i_valid_4_q);
        end
    end

    // i_llvm_fpga_push_i1_notcmp1953_push35_maxpool2d35(BLACKBOX,56)@6
    // out out_feedback_out_35@20000000
    // out out_feedback_valid_out_35@20000000
    maxpool2d_i_llvm_fpga_push_i1_notcmp1953_push35_0 thei_llvm_fpga_push_i1_notcmp1953_push35_maxpool2d35 (
        .in_data_in(i_llvm_fpga_pop_i1_notcmp1953_pop35_maxpool2d34_out_data_out),
        .in_feedback_stall_in_35(i_llvm_fpga_pop_i1_notcmp1953_pop35_maxpool2d34_out_feedback_stall_out_35),
        .in_stall_in(GND_q),
        .in_unnamed_maxpool2d20(redist25_i_unnamed_maxpool2d15_q_5_q),
        .in_valid_in(valid_fanout_reg19_q),
        .out_data_out(),
        .out_feedback_out_35(i_llvm_fpga_push_i1_notcmp1953_push35_maxpool2d35_out_feedback_out_35),
        .out_feedback_valid_out_35(i_llvm_fpga_push_i1_notcmp1953_push35_maxpool2d35_out_feedback_valid_out_35),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i1_notcmp1953_pop35_maxpool2d34(BLACKBOX,46)@6
    // out out_feedback_stall_out_35@20000000
    maxpool2d_i_llvm_fpga_pop_i1_notcmp1953_pop35_0 thei_llvm_fpga_pop_i1_notcmp1953_pop35_maxpool2d34 (
        .in_data_in(redist10_sync_together94_aunroll_x_in_c0_eni18_9_tpl_5_q),
        .in_dir(redist2_sync_together94_aunroll_x_in_c0_eni18_2_tpl_5_q),
        .in_feedback_in_35(i_llvm_fpga_push_i1_notcmp1953_push35_maxpool2d35_out_feedback_out_35),
        .in_feedback_valid_in_35(i_llvm_fpga_push_i1_notcmp1953_push35_maxpool2d35_out_feedback_valid_out_35),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg18_q),
        .out_data_out(i_llvm_fpga_pop_i1_notcmp1953_pop35_maxpool2d34_out_data_out),
        .out_feedback_stall_out_35(i_llvm_fpga_pop_i1_notcmp1953_pop35_maxpool2d34_out_feedback_stall_out_35),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg16(REG,108)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg16_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg16_q <= $unsigned(redist21_sync_together94_aunroll_x_in_i_valid_4_q);
        end
    end

    // valid_fanout_reg17(REG,109)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg17_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg17_q <= $unsigned(redist21_sync_together94_aunroll_x_in_i_valid_4_q);
        end
    end

    // i_llvm_fpga_push_i1_notcmp2351_push34_maxpool2d33(BLACKBOX,57)@6
    // out out_feedback_out_34@20000000
    // out out_feedback_valid_out_34@20000000
    maxpool2d_i_llvm_fpga_push_i1_notcmp2351_push34_0 thei_llvm_fpga_push_i1_notcmp2351_push34_maxpool2d33 (
        .in_data_in(i_llvm_fpga_pop_i1_notcmp2351_pop34_maxpool2d32_out_data_out),
        .in_feedback_stall_in_34(i_llvm_fpga_pop_i1_notcmp2351_pop34_maxpool2d32_out_feedback_stall_out_34),
        .in_stall_in(GND_q),
        .in_unnamed_maxpool2d20(redist25_i_unnamed_maxpool2d15_q_5_q),
        .in_valid_in(valid_fanout_reg17_q),
        .out_data_out(),
        .out_feedback_out_34(i_llvm_fpga_push_i1_notcmp2351_push34_maxpool2d33_out_feedback_out_34),
        .out_feedback_valid_out_34(i_llvm_fpga_push_i1_notcmp2351_push34_maxpool2d33_out_feedback_valid_out_34),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i1_notcmp2351_pop34_maxpool2d32(BLACKBOX,47)@6
    // out out_feedback_stall_out_34@20000000
    maxpool2d_i_llvm_fpga_pop_i1_notcmp2351_pop34_0 thei_llvm_fpga_pop_i1_notcmp2351_pop34_maxpool2d32 (
        .in_data_in(redist9_sync_together94_aunroll_x_in_c0_eni18_8_tpl_5_q),
        .in_dir(redist2_sync_together94_aunroll_x_in_c0_eni18_2_tpl_5_q),
        .in_feedback_in_34(i_llvm_fpga_push_i1_notcmp2351_push34_maxpool2d33_out_feedback_out_34),
        .in_feedback_valid_in_34(i_llvm_fpga_push_i1_notcmp2351_push34_maxpool2d33_out_feedback_valid_out_34),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg16_q),
        .out_data_out(i_llvm_fpga_pop_i1_notcmp2351_pop34_maxpool2d32_out_data_out),
        .out_feedback_stall_out_34(i_llvm_fpga_pop_i1_notcmp2351_pop34_maxpool2d32_out_feedback_stall_out_34),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg14(REG,106)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg14_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg14_q <= $unsigned(redist21_sync_together94_aunroll_x_in_i_valid_4_q);
        end
    end

    // valid_fanout_reg15(REG,107)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg15_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg15_q <= $unsigned(redist21_sync_together94_aunroll_x_in_i_valid_4_q);
        end
    end

    // i_llvm_fpga_push_i32_mul2548_push33_maxpool2d31(BLACKBOX,62)@6
    // out out_feedback_out_33@20000000
    // out out_feedback_valid_out_33@20000000
    maxpool2d_i_llvm_fpga_push_i32_mul2548_push33_0 thei_llvm_fpga_push_i32_mul2548_push33_maxpool2d31 (
        .in_data_in(i_llvm_fpga_pop_i32_mul2548_pop33_maxpool2d30_out_data_out),
        .in_feedback_stall_in_33(i_llvm_fpga_pop_i32_mul2548_pop33_maxpool2d30_out_feedback_stall_out_33),
        .in_stall_in(GND_q),
        .in_unnamed_maxpool2d20(redist25_i_unnamed_maxpool2d15_q_5_q),
        .in_valid_in(valid_fanout_reg15_q),
        .out_data_out(),
        .out_feedback_out_33(i_llvm_fpga_push_i32_mul2548_push33_maxpool2d31_out_feedback_out_33),
        .out_feedback_valid_out_33(i_llvm_fpga_push_i32_mul2548_push33_maxpool2d31_out_feedback_valid_out_33),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_mul2548_pop33_maxpool2d30(BLACKBOX,51)@6
    // out out_feedback_stall_out_33@20000000
    maxpool2d_i_llvm_fpga_pop_i32_mul2548_pop33_0 thei_llvm_fpga_pop_i32_mul2548_pop33_maxpool2d30 (
        .in_data_in(redist8_sync_together94_aunroll_x_in_c0_eni18_7_tpl_5_mem_q),
        .in_dir(redist2_sync_together94_aunroll_x_in_c0_eni18_2_tpl_5_q),
        .in_feedback_in_33(i_llvm_fpga_push_i32_mul2548_push33_maxpool2d31_out_feedback_out_33),
        .in_feedback_valid_in_33(i_llvm_fpga_push_i32_mul2548_push33_maxpool2d31_out_feedback_valid_out_33),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg14_q),
        .out_data_out(i_llvm_fpga_pop_i32_mul2548_pop33_maxpool2d30_out_data_out),
        .out_feedback_stall_out_33(i_llvm_fpga_pop_i32_mul2548_pop33_maxpool2d30_out_feedback_stall_out_33),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg12(REG,104)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg12_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg12_q <= $unsigned(redist21_sync_together94_aunroll_x_in_i_valid_4_q);
        end
    end

    // valid_fanout_reg13(REG,105)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg13_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg13_q <= $unsigned(redist21_sync_together94_aunroll_x_in_i_valid_4_q);
        end
    end

    // i_llvm_fpga_push_i1_notcmp2742_push31_maxpool2d29(BLACKBOX,58)@6
    // out out_feedback_out_31@20000000
    // out out_feedback_valid_out_31@20000000
    maxpool2d_i_llvm_fpga_push_i1_notcmp2742_push31_0 thei_llvm_fpga_push_i1_notcmp2742_push31_maxpool2d29 (
        .in_data_in(i_llvm_fpga_pop_i1_notcmp2742_pop31_maxpool2d28_out_data_out),
        .in_feedback_stall_in_31(i_llvm_fpga_pop_i1_notcmp2742_pop31_maxpool2d28_out_feedback_stall_out_31),
        .in_stall_in(GND_q),
        .in_unnamed_maxpool2d20(redist25_i_unnamed_maxpool2d15_q_5_q),
        .in_valid_in(valid_fanout_reg13_q),
        .out_data_out(),
        .out_feedback_out_31(i_llvm_fpga_push_i1_notcmp2742_push31_maxpool2d29_out_feedback_out_31),
        .out_feedback_valid_out_31(i_llvm_fpga_push_i1_notcmp2742_push31_maxpool2d29_out_feedback_valid_out_31),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i1_notcmp2742_pop31_maxpool2d28(BLACKBOX,48)@6
    // out out_feedback_stall_out_31@20000000
    maxpool2d_i_llvm_fpga_pop_i1_notcmp2742_pop31_0 thei_llvm_fpga_pop_i1_notcmp2742_pop31_maxpool2d28 (
        .in_data_in(redist7_sync_together94_aunroll_x_in_c0_eni18_6_tpl_5_q),
        .in_dir(redist2_sync_together94_aunroll_x_in_c0_eni18_2_tpl_5_q),
        .in_feedback_in_31(i_llvm_fpga_push_i1_notcmp2742_push31_maxpool2d29_out_feedback_out_31),
        .in_feedback_valid_in_31(i_llvm_fpga_push_i1_notcmp2742_push31_maxpool2d29_out_feedback_valid_out_31),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg12_q),
        .out_data_out(i_llvm_fpga_pop_i1_notcmp2742_pop31_maxpool2d28_out_data_out),
        .out_feedback_stall_out_31(i_llvm_fpga_pop_i1_notcmp2742_pop31_maxpool2d28_out_feedback_stall_out_31),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg10(REG,102)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg10_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg10_q <= $unsigned(redist21_sync_together94_aunroll_x_in_i_valid_4_q);
        end
    end

    // valid_fanout_reg11(REG,103)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg11_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg11_q <= $unsigned(redist21_sync_together94_aunroll_x_in_i_valid_4_q);
        end
    end

    // i_llvm_fpga_push_p1024f32_input_im_addr_041_replace_phi38_push30_maxpool2d27(BLACKBOX,65)@6
    // out out_feedback_out_30@20000000
    // out out_feedback_valid_out_30@20000000
    maxpool2d_i_llvm_fpga_push_p1024f32_inpu0000place_phi38_push30_0 thei_llvm_fpga_push_p1024f32_input_im_addr_041_replace_phi38_push30_maxpool2d27 (
        .in_data_in(i_llvm_fpga_pop_p1024f32_input_im_addr_041_replace_phi38_pop30_maxpool2d26_out_data_out),
        .in_feedback_stall_in_30(i_llvm_fpga_pop_p1024f32_input_im_addr_041_replace_phi38_pop30_maxpool2d26_out_feedback_stall_out_30),
        .in_stall_in(GND_q),
        .in_unnamed_maxpool2d20(redist25_i_unnamed_maxpool2d15_q_5_q),
        .in_valid_in(valid_fanout_reg11_q),
        .out_data_out(),
        .out_feedback_out_30(i_llvm_fpga_push_p1024f32_input_im_addr_041_replace_phi38_push30_maxpool2d27_out_feedback_out_30),
        .out_feedback_valid_out_30(i_llvm_fpga_push_p1024f32_input_im_addr_041_replace_phi38_push30_maxpool2d27_out_feedback_valid_out_30),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_p1024f32_input_im_addr_041_replace_phi38_pop30_maxpool2d26(BLACKBOX,54)@6
    // out out_feedback_stall_out_30@20000000
    maxpool2d_i_llvm_fpga_pop_p1024f32_input0000eplace_phi38_pop30_0 thei_llvm_fpga_pop_p1024f32_input_im_addr_041_replace_phi38_pop30_maxpool2d26 (
        .in_data_in(redist6_sync_together94_aunroll_x_in_c0_eni18_5_tpl_5_mem_q),
        .in_dir(redist2_sync_together94_aunroll_x_in_c0_eni18_2_tpl_5_q),
        .in_feedback_in_30(i_llvm_fpga_push_p1024f32_input_im_addr_041_replace_phi38_push30_maxpool2d27_out_feedback_out_30),
        .in_feedback_valid_in_30(i_llvm_fpga_push_p1024f32_input_im_addr_041_replace_phi38_push30_maxpool2d27_out_feedback_valid_out_30),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg10_q),
        .out_data_out(i_llvm_fpga_pop_p1024f32_input_im_addr_041_replace_phi38_pop30_maxpool2d26_out_data_out),
        .out_feedback_stall_out_30(i_llvm_fpga_pop_p1024f32_input_im_addr_041_replace_phi38_pop30_maxpool2d26_out_feedback_stall_out_30),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg8(REG,100)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg8_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg8_q <= $unsigned(redist21_sync_together94_aunroll_x_in_i_valid_4_q);
        end
    end

    // valid_fanout_reg9(REG,101)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg9_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg9_q <= $unsigned(redist21_sync_together94_aunroll_x_in_i_valid_4_q);
        end
    end

    // i_llvm_fpga_push_p1024f32_output_im_addr_042_replace_phi34_push29_maxpool2d25(BLACKBOX,66)@6
    // out out_feedback_out_29@20000000
    // out out_feedback_valid_out_29@20000000
    maxpool2d_i_llvm_fpga_push_p1024f32_outp0000place_phi34_push29_0 thei_llvm_fpga_push_p1024f32_output_im_addr_042_replace_phi34_push29_maxpool2d25 (
        .in_data_in(i_llvm_fpga_pop_p1024f32_output_im_addr_042_replace_phi34_pop29_maxpool2d24_out_data_out),
        .in_feedback_stall_in_29(i_llvm_fpga_pop_p1024f32_output_im_addr_042_replace_phi34_pop29_maxpool2d24_out_feedback_stall_out_29),
        .in_stall_in(GND_q),
        .in_unnamed_maxpool2d20(redist25_i_unnamed_maxpool2d15_q_5_q),
        .in_valid_in(valid_fanout_reg9_q),
        .out_data_out(),
        .out_feedback_out_29(i_llvm_fpga_push_p1024f32_output_im_addr_042_replace_phi34_push29_maxpool2d25_out_feedback_out_29),
        .out_feedback_valid_out_29(i_llvm_fpga_push_p1024f32_output_im_addr_042_replace_phi34_push29_maxpool2d25_out_feedback_valid_out_29),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_p1024f32_output_im_addr_042_replace_phi34_pop29_maxpool2d24(BLACKBOX,55)@6
    // out out_feedback_stall_out_29@20000000
    maxpool2d_i_llvm_fpga_pop_p1024f32_outpu0000eplace_phi34_pop29_0 thei_llvm_fpga_pop_p1024f32_output_im_addr_042_replace_phi34_pop29_maxpool2d24 (
        .in_data_in(redist5_sync_together94_aunroll_x_in_c0_eni18_4_tpl_5_mem_q),
        .in_dir(redist2_sync_together94_aunroll_x_in_c0_eni18_2_tpl_5_q),
        .in_feedback_in_29(i_llvm_fpga_push_p1024f32_output_im_addr_042_replace_phi34_push29_maxpool2d25_out_feedback_out_29),
        .in_feedback_valid_in_29(i_llvm_fpga_push_p1024f32_output_im_addr_042_replace_phi34_push29_maxpool2d25_out_feedback_valid_out_29),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg8_q),
        .out_data_out(i_llvm_fpga_pop_p1024f32_output_im_addr_042_replace_phi34_pop29_maxpool2d24_out_data_out),
        .out_feedback_stall_out_29(i_llvm_fpga_pop_p1024f32_output_im_addr_042_replace_phi34_pop29_maxpool2d24_out_feedback_stall_out_29),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_notcmp14_maxpool2d18(LOGICAL,72)@6
    assign i_notcmp14_maxpool2d18_q = redist25_i_unnamed_maxpool2d15_q_5_q ^ VCC_q;

    // redist23_i_unnamed_maxpool2d15_q_1(DELAY,171)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist23_i_unnamed_maxpool2d15_q_1_q <= '0;
        end
        else
        begin
            redist23_i_unnamed_maxpool2d15_q_1_q <= $unsigned(i_unnamed_maxpool2d15_q);
        end
    end

    // redist24_i_unnamed_maxpool2d15_q_2(DELAY,172)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist24_i_unnamed_maxpool2d15_q_2_q <= '0;
        end
        else
        begin
            redist24_i_unnamed_maxpool2d15_q_2_q <= $unsigned(redist23_i_unnamed_maxpool2d15_q_1_q);
        end
    end

    // redist25_i_unnamed_maxpool2d15_q_5(DELAY,173)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist25_i_unnamed_maxpool2d15_q_5_delay_0 <= '0;
            redist25_i_unnamed_maxpool2d15_q_5_delay_1 <= '0;
            redist25_i_unnamed_maxpool2d15_q_5_q <= '0;
        end
        else
        begin
            redist25_i_unnamed_maxpool2d15_q_5_delay_0 <= $unsigned(redist24_i_unnamed_maxpool2d15_q_2_q);
            redist25_i_unnamed_maxpool2d15_q_5_delay_1 <= redist25_i_unnamed_maxpool2d15_q_5_delay_0;
            redist25_i_unnamed_maxpool2d15_q_5_q <= redist25_i_unnamed_maxpool2d15_q_5_delay_1;
        end
    end

    // leftShiftStage0Idx1Rng1_uid139_i_mul18_maxpool2d0_shift_x(BITSELECT,138)@6
    assign leftShiftStage0Idx1Rng1_uid139_i_mul18_maxpool2d0_shift_x_in = i_llvm_fpga_pop_i32_j_034_pop2055_pop36_maxpool2d3_out_data_out[30:0];
    assign leftShiftStage0Idx1Rng1_uid139_i_mul18_maxpool2d0_shift_x_b = leftShiftStage0Idx1Rng1_uid139_i_mul18_maxpool2d0_shift_x_in[30:0];

    // leftShiftStage0Idx1_uid140_i_mul18_maxpool2d0_shift_x(BITJOIN,139)@6
    assign leftShiftStage0Idx1_uid140_i_mul18_maxpool2d0_shift_x_q = {leftShiftStage0Idx1Rng1_uid139_i_mul18_maxpool2d0_shift_x_b, GND_q};

    // leftShiftStage0_uid142_i_mul18_maxpool2d0_shift_x(MUX,141)@6
    assign leftShiftStage0_uid142_i_mul18_maxpool2d0_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid142_i_mul18_maxpool2d0_shift_x_s or i_llvm_fpga_pop_i32_j_034_pop2055_pop36_maxpool2d3_out_data_out or leftShiftStage0Idx1_uid140_i_mul18_maxpool2d0_shift_x_q)
    begin
        unique case (leftShiftStage0_uid142_i_mul18_maxpool2d0_shift_x_s)
            1'b0 : leftShiftStage0_uid142_i_mul18_maxpool2d0_shift_x_q = i_llvm_fpga_pop_i32_j_034_pop2055_pop36_maxpool2d3_out_data_out;
            1'b1 : leftShiftStage0_uid142_i_mul18_maxpool2d0_shift_x_q = leftShiftStage0Idx1_uid140_i_mul18_maxpool2d0_shift_x_q;
            default : leftShiftStage0_uid142_i_mul18_maxpool2d0_shift_x_q = 32'b0;
        endcase
    end

    // i_mul18_maxpool2d4_vt_select_31(BITSELECT,71)@6
    assign i_mul18_maxpool2d4_vt_select_31_b = leftShiftStage0_uid142_i_mul18_maxpool2d0_shift_x_q[31:1];

    // i_mul18_maxpool2d4_vt_join(BITJOIN,70)@6
    assign i_mul18_maxpool2d4_vt_join_q = {i_mul18_maxpool2d4_vt_select_31_b, GND_q};

    // valid_fanout_reg4(REG,96)@1 + 1
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

    // i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer_maxpool2d8(BLACKBOX,67)@0
    // in in_i_dependence@2
    // in in_valid_in@2
    // out out_buffer_out@2
    // out out_valid_out@2
    maxpool2d_i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer_0 thei_llvm_fpga_sync_buffer_i32_input_size_sync_buffer_maxpool2d8 (
        .in_buffer_in(in_input_size),
        .in_i_dependence(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_buffer_out(i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer_maxpool2d8_out_buffer_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_mul17_maxpool2d9_bs2_merged_bit_select(BITSELECT,146)@2
    assign i_mul17_maxpool2d9_bs2_merged_bit_select_b = i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer_maxpool2d8_out_buffer_out[31:18];
    assign i_mul17_maxpool2d9_bs2_merged_bit_select_c = i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer_maxpool2d8_out_buffer_out[17:0];

    // valid_fanout_reg3(REG,95)@1 + 1
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

    // valid_fanout_reg6(REG,98)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg6_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg6_q <= $unsigned(redist20_sync_together94_aunroll_x_in_i_valid_1_q);
        end
    end

    // redist26_i_llvm_fpga_pop_i32_mul45_pop32_maxpool2d6_out_data_out_1(DELAY,174)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist26_i_llvm_fpga_pop_i32_mul45_pop32_maxpool2d6_out_data_out_1_q <= '0;
        end
        else
        begin
            redist26_i_llvm_fpga_pop_i32_mul45_pop32_maxpool2d6_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i32_mul45_pop32_maxpool2d6_out_data_out);
        end
    end

    // i_llvm_fpga_push_i32_mul45_push32_maxpool2d17(BLACKBOX,63)@3
    // out out_feedback_out_32@20000000
    // out out_feedback_valid_out_32@20000000
    maxpool2d_i_llvm_fpga_push_i32_mul45_push32_0 thei_llvm_fpga_push_i32_mul45_push32_maxpool2d17 (
        .in_data_in(redist26_i_llvm_fpga_pop_i32_mul45_pop32_maxpool2d6_out_data_out_1_q),
        .in_feedback_stall_in_32(i_llvm_fpga_pop_i32_mul45_pop32_maxpool2d6_out_feedback_stall_out_32),
        .in_stall_in(GND_q),
        .in_unnamed_maxpool2d20(redist24_i_unnamed_maxpool2d15_q_2_q),
        .in_valid_in(valid_fanout_reg6_q),
        .out_data_out(),
        .out_feedback_out_32(i_llvm_fpga_push_i32_mul45_push32_maxpool2d17_out_feedback_out_32),
        .out_feedback_valid_out_32(i_llvm_fpga_push_i32_mul45_push32_maxpool2d17_out_feedback_valid_out_32),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_mul45_pop32_maxpool2d6(BLACKBOX,52)@2
    // out out_feedback_stall_out_32@20000000
    maxpool2d_i_llvm_fpga_pop_i32_mul45_pop32_0 thei_llvm_fpga_pop_i32_mul45_pop32_maxpool2d6 (
        .in_data_in(redist3_sync_together94_aunroll_x_in_c0_eni18_3_tpl_1_q),
        .in_dir(redist1_sync_together94_aunroll_x_in_c0_eni18_2_tpl_1_q),
        .in_feedback_in_32(i_llvm_fpga_push_i32_mul45_push32_maxpool2d17_out_feedback_out_32),
        .in_feedback_valid_in_32(i_llvm_fpga_push_i32_mul45_push32_maxpool2d17_out_feedback_valid_out_32),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_data_out(i_llvm_fpga_pop_i32_mul45_pop32_maxpool2d6_out_data_out),
        .out_feedback_stall_out_32(i_llvm_fpga_pop_i32_mul45_pop32_maxpool2d6_out_feedback_stall_out_32),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg2(REG,94)@1 + 1
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

    // valid_fanout_reg7(REG,99)@1 + 1
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

    // c_i32_162(CONSTANT,35)
    assign c_i32_162_q = $unsigned(32'b00000000000000000000000000000001);

    // i_inc23_maxpool2d22(ADD,43)@2
    assign i_inc23_maxpool2d22_a = {1'b0, i_llvm_fpga_pop_i32_k_032_pop28_maxpool2d5_out_data_out};
    assign i_inc23_maxpool2d22_b = {1'b0, c_i32_162_q};
    assign i_inc23_maxpool2d22_o = $unsigned(i_inc23_maxpool2d22_a) + $unsigned(i_inc23_maxpool2d22_b);
    assign i_inc23_maxpool2d22_q = i_inc23_maxpool2d22_o[32:0];

    // bgTrunc_i_inc23_maxpool2d22_sel_x(BITSELECT,83)@2
    assign bgTrunc_i_inc23_maxpool2d22_sel_x_b = i_inc23_maxpool2d22_q[31:0];

    // i_llvm_fpga_push_i32_k_032_push28_maxpool2d23(BLACKBOX,61)@2
    // out out_feedback_out_28@20000000
    // out out_feedback_valid_out_28@20000000
    maxpool2d_i_llvm_fpga_push_i32_k_032_push28_0 thei_llvm_fpga_push_i32_k_032_push28_maxpool2d23 (
        .in_data_in(bgTrunc_i_inc23_maxpool2d22_sel_x_b),
        .in_feedback_stall_in_28(i_llvm_fpga_pop_i32_k_032_pop28_maxpool2d5_out_feedback_stall_out_28),
        .in_stall_in(GND_q),
        .in_unnamed_maxpool2d20(redist23_i_unnamed_maxpool2d15_q_1_q),
        .in_valid_in(valid_fanout_reg7_q),
        .out_data_out(),
        .out_feedback_out_28(i_llvm_fpga_push_i32_k_032_push28_maxpool2d23_out_feedback_out_28),
        .out_feedback_valid_out_28(i_llvm_fpga_push_i32_k_032_push28_maxpool2d23_out_feedback_valid_out_28),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_063(CONSTANT,34)
    assign c_i32_063_q = $unsigned(32'b00000000000000000000000000000000);

    // i_llvm_fpga_pop_i32_k_032_pop28_maxpool2d5(BLACKBOX,50)@2
    // out out_feedback_stall_out_28@20000000
    maxpool2d_i_llvm_fpga_pop_i32_k_032_pop28_0 thei_llvm_fpga_pop_i32_k_032_pop28_maxpool2d5 (
        .in_data_in(c_i32_063_q),
        .in_dir(redist1_sync_together94_aunroll_x_in_c0_eni18_2_tpl_1_q),
        .in_feedback_in_28(i_llvm_fpga_push_i32_k_032_push28_maxpool2d23_out_feedback_out_28),
        .in_feedback_valid_in_28(i_llvm_fpga_push_i32_k_032_push28_maxpool2d23_out_feedback_valid_out_28),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(i_llvm_fpga_pop_i32_k_032_pop28_maxpool2d5_out_data_out),
        .out_feedback_stall_out_28(i_llvm_fpga_pop_i32_k_032_pop28_maxpool2d5_out_feedback_stall_out_28),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_add_maxpool2d7(ADD,40)@2
    assign i_add_maxpool2d7_a = {1'b0, i_llvm_fpga_pop_i32_k_032_pop28_maxpool2d5_out_data_out};
    assign i_add_maxpool2d7_b = {1'b0, i_llvm_fpga_pop_i32_mul45_pop32_maxpool2d6_out_data_out};
    assign i_add_maxpool2d7_o = $unsigned(i_add_maxpool2d7_a) + $unsigned(i_add_maxpool2d7_b);
    assign i_add_maxpool2d7_q = i_add_maxpool2d7_o[32:0];

    // bgTrunc_i_add_maxpool2d7_sel_x(BITSELECT,81)@2
    assign bgTrunc_i_add_maxpool2d7_sel_x_b = i_add_maxpool2d7_q[31:0];

    // i_mul17_maxpool2d9_bs1_merged_bit_select(BITSELECT,147)@2
    assign i_mul17_maxpool2d9_bs1_merged_bit_select_b = bgTrunc_i_add_maxpool2d7_sel_x_b[31:18];
    assign i_mul17_maxpool2d9_bs1_merged_bit_select_c = bgTrunc_i_add_maxpool2d7_sel_x_b[17:0];

    // i_mul17_maxpool2d9_ma3_cma(CHAINMULTADD,145)@2 + 3
    assign i_mul17_maxpool2d9_ma3_cma_reset = ~ (resetn);
    assign i_mul17_maxpool2d9_ma3_cma_ena0 = 1'b1;
    assign i_mul17_maxpool2d9_ma3_cma_ena1 = i_mul17_maxpool2d9_ma3_cma_ena0;
    assign i_mul17_maxpool2d9_ma3_cma_ena2 = i_mul17_maxpool2d9_ma3_cma_ena0;

    assign i_mul17_maxpool2d9_ma3_cma_a0 = i_mul17_maxpool2d9_bs1_merged_bit_select_b;
    assign i_mul17_maxpool2d9_ma3_cma_c0 = i_mul17_maxpool2d9_bs2_merged_bit_select_c;
    assign i_mul17_maxpool2d9_ma3_cma_a1 = i_mul17_maxpool2d9_bs2_merged_bit_select_b;
    assign i_mul17_maxpool2d9_ma3_cma_c1 = i_mul17_maxpool2d9_bs1_merged_bit_select_c;
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
    ) i_mul17_maxpool2d9_ma3_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul17_maxpool2d9_ma3_cma_ena2, i_mul17_maxpool2d9_ma3_cma_ena1, i_mul17_maxpool2d9_ma3_cma_ena0 }),
        .aclr({ i_mul17_maxpool2d9_ma3_cma_reset, i_mul17_maxpool2d9_ma3_cma_reset }),
        .ay(i_mul17_maxpool2d9_ma3_cma_a1),
        .by(i_mul17_maxpool2d9_ma3_cma_a0),
        .ax(i_mul17_maxpool2d9_ma3_cma_c1),
        .bx(i_mul17_maxpool2d9_ma3_cma_c0),
        .resulta(i_mul17_maxpool2d9_ma3_cma_s0),
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
    i_mul17_maxpool2d9_ma3_cma_delay ( .xin(i_mul17_maxpool2d9_ma3_cma_s0), .xout(i_mul17_maxpool2d9_ma3_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul17_maxpool2d9_ma3_cma_q = $unsigned(i_mul17_maxpool2d9_ma3_cma_qq[32:0]);

    // i_mul17_maxpool2d9_sums_align_1(BITSHIFT,132)@5
    assign i_mul17_maxpool2d9_sums_align_1_qint = { i_mul17_maxpool2d9_ma3_cma_q, 18'b000000000000000000 };
    assign i_mul17_maxpool2d9_sums_align_1_q = i_mul17_maxpool2d9_sums_align_1_qint[50:0];

    // i_mul17_maxpool2d9_im0_cma(CHAINMULTADD,143)@2 + 3
    assign i_mul17_maxpool2d9_im0_cma_reset = ~ (resetn);
    assign i_mul17_maxpool2d9_im0_cma_ena0 = 1'b1;
    assign i_mul17_maxpool2d9_im0_cma_ena1 = i_mul17_maxpool2d9_im0_cma_ena0;
    assign i_mul17_maxpool2d9_im0_cma_ena2 = i_mul17_maxpool2d9_im0_cma_ena0;

    assign i_mul17_maxpool2d9_im0_cma_a0 = i_mul17_maxpool2d9_bs1_merged_bit_select_b;
    assign i_mul17_maxpool2d9_im0_cma_c0 = i_mul17_maxpool2d9_bs2_merged_bit_select_b;
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
    ) i_mul17_maxpool2d9_im0_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul17_maxpool2d9_im0_cma_ena2, i_mul17_maxpool2d9_im0_cma_ena1, i_mul17_maxpool2d9_im0_cma_ena0 }),
        .aclr({ i_mul17_maxpool2d9_im0_cma_reset, i_mul17_maxpool2d9_im0_cma_reset }),
        .ay(i_mul17_maxpool2d9_im0_cma_a0),
        .ax(i_mul17_maxpool2d9_im0_cma_c0),
        .resulta(i_mul17_maxpool2d9_im0_cma_s0),
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
    i_mul17_maxpool2d9_im0_cma_delay ( .xin(i_mul17_maxpool2d9_im0_cma_s0), .xout(i_mul17_maxpool2d9_im0_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul17_maxpool2d9_im0_cma_q = $unsigned(i_mul17_maxpool2d9_im0_cma_qq[27:0]);

    // i_mul17_maxpool2d9_im8_cma(CHAINMULTADD,144)@2 + 3
    assign i_mul17_maxpool2d9_im8_cma_reset = ~ (resetn);
    assign i_mul17_maxpool2d9_im8_cma_ena0 = 1'b1;
    assign i_mul17_maxpool2d9_im8_cma_ena1 = i_mul17_maxpool2d9_im8_cma_ena0;
    assign i_mul17_maxpool2d9_im8_cma_ena2 = i_mul17_maxpool2d9_im8_cma_ena0;

    assign i_mul17_maxpool2d9_im8_cma_a0 = i_mul17_maxpool2d9_bs1_merged_bit_select_c;
    assign i_mul17_maxpool2d9_im8_cma_c0 = i_mul17_maxpool2d9_bs2_merged_bit_select_c;
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
    ) i_mul17_maxpool2d9_im8_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul17_maxpool2d9_im8_cma_ena2, i_mul17_maxpool2d9_im8_cma_ena1, i_mul17_maxpool2d9_im8_cma_ena0 }),
        .aclr({ i_mul17_maxpool2d9_im8_cma_reset, i_mul17_maxpool2d9_im8_cma_reset }),
        .ay(i_mul17_maxpool2d9_im8_cma_a0),
        .ax(i_mul17_maxpool2d9_im8_cma_c0),
        .resulta(i_mul17_maxpool2d9_im8_cma_s0),
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
    i_mul17_maxpool2d9_im8_cma_delay ( .xin(i_mul17_maxpool2d9_im8_cma_s0), .xout(i_mul17_maxpool2d9_im8_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul17_maxpool2d9_im8_cma_q = $unsigned(i_mul17_maxpool2d9_im8_cma_qq[35:0]);

    // i_mul17_maxpool2d9_sums_join_0(BITJOIN,131)@5
    assign i_mul17_maxpool2d9_sums_join_0_q = {i_mul17_maxpool2d9_im0_cma_q, i_mul17_maxpool2d9_im8_cma_q};

    // i_mul17_maxpool2d9_sums_result_add_0_0(ADD,134)@5
    assign i_mul17_maxpool2d9_sums_result_add_0_0_a = {1'b0, i_mul17_maxpool2d9_sums_join_0_q};
    assign i_mul17_maxpool2d9_sums_result_add_0_0_b = {14'b00000000000000, i_mul17_maxpool2d9_sums_align_1_q};
    assign i_mul17_maxpool2d9_sums_result_add_0_0_o = $unsigned(i_mul17_maxpool2d9_sums_result_add_0_0_a) + $unsigned(i_mul17_maxpool2d9_sums_result_add_0_0_b);
    assign i_mul17_maxpool2d9_sums_result_add_0_0_q = i_mul17_maxpool2d9_sums_result_add_0_0_o[64:0];

    // bgTrunc_i_mul17_maxpool2d9_sel_x(BITSELECT,84)@5
    assign bgTrunc_i_mul17_maxpool2d9_sel_x_in = i_mul17_maxpool2d9_sums_result_add_0_0_q[63:0];
    assign bgTrunc_i_mul17_maxpool2d9_sel_x_b = bgTrunc_i_mul17_maxpool2d9_sel_x_in[31:0];

    // redist22_bgTrunc_i_mul17_maxpool2d9_sel_x_b_1(DELAY,170)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist22_bgTrunc_i_mul17_maxpool2d9_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist22_bgTrunc_i_mul17_maxpool2d9_sel_x_b_1_q <= $unsigned(bgTrunc_i_mul17_maxpool2d9_sel_x_b);
        end
    end

    // i_add19_maxpool2d10(ADD,39)@6
    assign i_add19_maxpool2d10_a = {1'b0, redist22_bgTrunc_i_mul17_maxpool2d9_sel_x_b_1_q};
    assign i_add19_maxpool2d10_b = {1'b0, i_mul18_maxpool2d4_vt_join_q};
    assign i_add19_maxpool2d10_o = $unsigned(i_add19_maxpool2d10_a) + $unsigned(i_add19_maxpool2d10_b);
    assign i_add19_maxpool2d10_q = i_add19_maxpool2d10_o[32:0];

    // bgTrunc_i_add19_maxpool2d10_sel_x(BITSELECT,80)@6
    assign bgTrunc_i_add19_maxpool2d10_sel_x_b = i_add19_maxpool2d10_q[31:0];

    // redist27_i_llvm_fpga_pop_i32_mul45_pop32_maxpool2d6_out_data_out_4_notEnable(LOGICAL,291)
    assign redist27_i_llvm_fpga_pop_i32_mul45_pop32_maxpool2d6_out_data_out_4_notEnable_q = $unsigned(~ (VCC_q));

    // redist27_i_llvm_fpga_pop_i32_mul45_pop32_maxpool2d6_out_data_out_4_nor(LOGICAL,292)
    assign redist27_i_llvm_fpga_pop_i32_mul45_pop32_maxpool2d6_out_data_out_4_nor_q = ~ (redist27_i_llvm_fpga_pop_i32_mul45_pop32_maxpool2d6_out_data_out_4_notEnable_q | redist27_i_llvm_fpga_pop_i32_mul45_pop32_maxpool2d6_out_data_out_4_sticky_ena_q);

    // redist27_i_llvm_fpga_pop_i32_mul45_pop32_maxpool2d6_out_data_out_4_cmpReg(REG,290)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist27_i_llvm_fpga_pop_i32_mul45_pop32_maxpool2d6_out_data_out_4_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist27_i_llvm_fpga_pop_i32_mul45_pop32_maxpool2d6_out_data_out_4_cmpReg_q <= $unsigned(VCC_q);
        end
    end

    // redist27_i_llvm_fpga_pop_i32_mul45_pop32_maxpool2d6_out_data_out_4_sticky_ena(REG,293)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist27_i_llvm_fpga_pop_i32_mul45_pop32_maxpool2d6_out_data_out_4_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist27_i_llvm_fpga_pop_i32_mul45_pop32_maxpool2d6_out_data_out_4_nor_q == 1'b1)
        begin
            redist27_i_llvm_fpga_pop_i32_mul45_pop32_maxpool2d6_out_data_out_4_sticky_ena_q <= $unsigned(redist27_i_llvm_fpga_pop_i32_mul45_pop32_maxpool2d6_out_data_out_4_cmpReg_q);
        end
    end

    // redist27_i_llvm_fpga_pop_i32_mul45_pop32_maxpool2d6_out_data_out_4_enaAnd(LOGICAL,294)
    assign redist27_i_llvm_fpga_pop_i32_mul45_pop32_maxpool2d6_out_data_out_4_enaAnd_q = redist27_i_llvm_fpga_pop_i32_mul45_pop32_maxpool2d6_out_data_out_4_sticky_ena_q & VCC_q;

    // redist27_i_llvm_fpga_pop_i32_mul45_pop32_maxpool2d6_out_data_out_4_rdcnt(COUNTER,288)
    // low=0, high=1, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist27_i_llvm_fpga_pop_i32_mul45_pop32_maxpool2d6_out_data_out_4_rdcnt_i <= 1'd0;
        end
        else
        begin
            redist27_i_llvm_fpga_pop_i32_mul45_pop32_maxpool2d6_out_data_out_4_rdcnt_i <= $unsigned(redist27_i_llvm_fpga_pop_i32_mul45_pop32_maxpool2d6_out_data_out_4_rdcnt_i) + $unsigned(1'd1);
        end
    end
    assign redist27_i_llvm_fpga_pop_i32_mul45_pop32_maxpool2d6_out_data_out_4_rdcnt_q = redist27_i_llvm_fpga_pop_i32_mul45_pop32_maxpool2d6_out_data_out_4_rdcnt_i[0:0];

    // redist27_i_llvm_fpga_pop_i32_mul45_pop32_maxpool2d6_out_data_out_4_wraddr(REG,289)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist27_i_llvm_fpga_pop_i32_mul45_pop32_maxpool2d6_out_data_out_4_wraddr_q <= $unsigned(1'b1);
        end
        else
        begin
            redist27_i_llvm_fpga_pop_i32_mul45_pop32_maxpool2d6_out_data_out_4_wraddr_q <= $unsigned(redist27_i_llvm_fpga_pop_i32_mul45_pop32_maxpool2d6_out_data_out_4_rdcnt_q);
        end
    end

    // redist27_i_llvm_fpga_pop_i32_mul45_pop32_maxpool2d6_out_data_out_4_mem(DUALMEM,287)
    assign redist27_i_llvm_fpga_pop_i32_mul45_pop32_maxpool2d6_out_data_out_4_mem_ia = $unsigned(redist26_i_llvm_fpga_pop_i32_mul45_pop32_maxpool2d6_out_data_out_1_q);
    assign redist27_i_llvm_fpga_pop_i32_mul45_pop32_maxpool2d6_out_data_out_4_mem_aa = redist27_i_llvm_fpga_pop_i32_mul45_pop32_maxpool2d6_out_data_out_4_wraddr_q;
    assign redist27_i_llvm_fpga_pop_i32_mul45_pop32_maxpool2d6_out_data_out_4_mem_ab = redist27_i_llvm_fpga_pop_i32_mul45_pop32_maxpool2d6_out_data_out_4_rdcnt_q;
    assign redist27_i_llvm_fpga_pop_i32_mul45_pop32_maxpool2d6_out_data_out_4_mem_reset0 = ~ (resetn);
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
    ) redist27_i_llvm_fpga_pop_i32_mul45_pop32_maxpool2d6_out_data_out_4_mem_dmem (
        .clocken1(redist27_i_llvm_fpga_pop_i32_mul45_pop32_maxpool2d6_out_data_out_4_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist27_i_llvm_fpga_pop_i32_mul45_pop32_maxpool2d6_out_data_out_4_mem_reset0),
        .clock1(clock),
        .address_a(redist27_i_llvm_fpga_pop_i32_mul45_pop32_maxpool2d6_out_data_out_4_mem_aa),
        .data_a(redist27_i_llvm_fpga_pop_i32_mul45_pop32_maxpool2d6_out_data_out_4_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist27_i_llvm_fpga_pop_i32_mul45_pop32_maxpool2d6_out_data_out_4_mem_ab),
        .q_b(redist27_i_llvm_fpga_pop_i32_mul45_pop32_maxpool2d6_out_data_out_4_mem_iq),
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
    assign redist27_i_llvm_fpga_pop_i32_mul45_pop32_maxpool2d6_out_data_out_4_mem_q = redist27_i_llvm_fpga_pop_i32_mul45_pop32_maxpool2d6_out_data_out_4_mem_iq[31:0];

    // valid_fanout_reg1(REG,93)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg1_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg1_q <= $unsigned(redist21_sync_together94_aunroll_x_in_i_valid_4_q);
        end
    end

    // valid_fanout_reg5(REG,97)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg5_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg5_q <= $unsigned(redist21_sync_together94_aunroll_x_in_i_valid_4_q);
        end
    end

    // i_llvm_fpga_push_i32_j_034_pop2055_push36_maxpool2d16(BLACKBOX,60)@6
    // out out_feedback_out_36@20000000
    // out out_feedback_valid_out_36@20000000
    maxpool2d_i_llvm_fpga_push_i32_j_034_pop2055_push36_0 thei_llvm_fpga_push_i32_j_034_pop2055_push36_maxpool2d16 (
        .in_data_in(i_llvm_fpga_pop_i32_j_034_pop2055_pop36_maxpool2d3_out_data_out),
        .in_feedback_stall_in_36(i_llvm_fpga_pop_i32_j_034_pop2055_pop36_maxpool2d3_out_feedback_stall_out_36),
        .in_stall_in(GND_q),
        .in_unnamed_maxpool2d20(redist25_i_unnamed_maxpool2d15_q_5_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_data_out(),
        .out_feedback_out_36(i_llvm_fpga_push_i32_j_034_pop2055_push36_maxpool2d16_out_feedback_out_36),
        .out_feedback_valid_out_36(i_llvm_fpga_push_i32_j_034_pop2055_push36_maxpool2d16_out_feedback_valid_out_36),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_j_034_pop2055_pop36_maxpool2d3(BLACKBOX,49)@6
    // out out_feedback_stall_out_36@20000000
    maxpool2d_i_llvm_fpga_pop_i32_j_034_pop2055_pop36_0 thei_llvm_fpga_pop_i32_j_034_pop2055_pop36_maxpool2d3 (
        .in_data_in(redist0_sync_together94_aunroll_x_in_c0_eni18_1_tpl_5_outputreg0_q),
        .in_dir(redist2_sync_together94_aunroll_x_in_c0_eni18_2_tpl_5_q),
        .in_feedback_in_36(i_llvm_fpga_push_i32_j_034_pop2055_push36_maxpool2d16_out_feedback_out_36),
        .in_feedback_valid_in_36(i_llvm_fpga_push_i32_j_034_pop2055_push36_maxpool2d16_out_feedback_valid_out_36),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_data_out(i_llvm_fpga_pop_i32_j_034_pop2055_pop36_maxpool2d3_out_data_out),
        .out_feedback_stall_out_36(i_llvm_fpga_pop_i32_j_034_pop2055_pop36_maxpool2d3_out_feedback_stall_out_36),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // sync_out_aunroll_x(GPOUT,90)@6
    assign out_c0_exi29_0_tpl = GND_q;
    assign out_c0_exi29_1_tpl = i_llvm_fpga_pop_i32_j_034_pop2055_pop36_maxpool2d3_out_data_out;
    assign out_c0_exi29_2_tpl = redist27_i_llvm_fpga_pop_i32_mul45_pop32_maxpool2d6_out_data_out_4_mem_q;
    assign out_c0_exi29_3_tpl = bgTrunc_i_add19_maxpool2d10_sel_x_b;
    assign out_c0_exi29_4_tpl = redist25_i_unnamed_maxpool2d15_q_5_q;
    assign out_c0_exi29_5_tpl = i_notcmp14_maxpool2d18_q;
    assign out_c0_exi29_6_tpl = i_llvm_fpga_pop_p1024f32_output_im_addr_042_replace_phi34_pop29_maxpool2d24_out_data_out;
    assign out_c0_exi29_7_tpl = i_llvm_fpga_pop_p1024f32_input_im_addr_041_replace_phi38_pop30_maxpool2d26_out_data_out;
    assign out_c0_exi29_8_tpl = i_llvm_fpga_pop_i1_notcmp2742_pop31_maxpool2d28_out_data_out;
    assign out_c0_exi29_9_tpl = i_llvm_fpga_pop_i32_mul2548_pop33_maxpool2d30_out_data_out;
    assign out_c0_exi29_10_tpl = i_llvm_fpga_pop_i1_notcmp2351_pop34_maxpool2d32_out_data_out;
    assign out_c0_exi29_11_tpl = i_llvm_fpga_pop_i1_notcmp1953_pop35_maxpool2d34_out_data_out;
    assign out_c0_exi29_12_tpl = redist2_sync_together94_aunroll_x_in_c0_eni18_2_tpl_5_q;
    assign out_c0_exi29_13_tpl = redist11_sync_together94_aunroll_x_in_c0_eni18_10_tpl_5_mem_q;
    assign out_c0_exi29_14_tpl = redist12_sync_together94_aunroll_x_in_c0_eni18_11_tpl_5_mem_q;
    assign out_c0_exi29_15_tpl = redist13_sync_together94_aunroll_x_in_c0_eni18_12_tpl_5_q;
    assign out_c0_exi29_16_tpl = redist14_sync_together94_aunroll_x_in_c0_eni18_13_tpl_5_mem_q;
    assign out_c0_exi29_17_tpl = redist15_sync_together94_aunroll_x_in_c0_eni18_14_tpl_5_mem_q;
    assign out_c0_exi29_18_tpl = redist16_sync_together94_aunroll_x_in_c0_eni18_15_tpl_5_q;
    assign out_c0_exi29_19_tpl = redist17_sync_together94_aunroll_x_in_c0_eni18_16_tpl_5_mem_q;
    assign out_c0_exi29_20_tpl = redist18_sync_together94_aunroll_x_in_c0_eni18_17_tpl_5_mem_q;
    assign out_c0_exi29_21_tpl = redist19_sync_together94_aunroll_x_in_c0_eni18_18_tpl_5_q;
    assign out_c0_exi29_22_tpl = redist10_sync_together94_aunroll_x_in_c0_eni18_9_tpl_5_q;
    assign out_c0_exi29_23_tpl = redist0_sync_together94_aunroll_x_in_c0_eni18_1_tpl_5_outputreg0_q;
    assign out_c0_exi29_24_tpl = redist5_sync_together94_aunroll_x_in_c0_eni18_4_tpl_5_mem_q;
    assign out_c0_exi29_25_tpl = redist6_sync_together94_aunroll_x_in_c0_eni18_5_tpl_5_mem_q;
    assign out_c0_exi29_26_tpl = redist7_sync_together94_aunroll_x_in_c0_eni18_6_tpl_5_q;
    assign out_c0_exi29_27_tpl = redist4_sync_together94_aunroll_x_in_c0_eni18_3_tpl_5_mem_q;
    assign out_c0_exi29_28_tpl = redist8_sync_together94_aunroll_x_in_c0_eni18_7_tpl_5_mem_q;
    assign out_c0_exi29_29_tpl = redist9_sync_together94_aunroll_x_in_c0_eni18_8_tpl_5_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_maxpool2d7 = GND_q;

endmodule
