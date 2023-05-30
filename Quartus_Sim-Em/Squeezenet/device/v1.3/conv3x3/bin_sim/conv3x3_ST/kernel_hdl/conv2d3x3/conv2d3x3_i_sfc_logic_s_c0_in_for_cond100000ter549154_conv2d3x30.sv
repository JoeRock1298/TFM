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

// SystemVerilog created from conv2d3x3_i_sfc_logic_s_c0_in_for_cond100000ter549154_conv2d3x30
// SystemVerilog created on Tue May 30 12:33:16 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2d3x3_i_sfc_logic_s_c0_in_for_cond100000ter549154_conv2d3x30 (
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going78_conv2d3x32_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going78_conv2d3x32_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [31:0] in_output_size,
    input wire [31:0] in_pad,
    input wire [31:0] in_stride,
    input wire [31:0] in_input_size,
    input wire [0:0] in_intel_reserved_ffwd_4_0,
    input wire [32:0] in_intel_reserved_ffwd_6_0,
    output wire [0:0] out_c0_exi20_0_tpl,
    output wire [31:0] out_c0_exi20_1_tpl,
    output wire [31:0] out_c0_exi20_2_tpl,
    output wire [0:0] out_c0_exi20_3_tpl,
    output wire [0:0] out_c0_exi20_4_tpl,
    output wire [31:0] out_c0_exi20_5_tpl,
    output wire [0:0] out_c0_exi20_6_tpl,
    output wire [0:0] out_c0_exi20_7_tpl,
    output wire [31:0] out_c0_exi20_8_tpl,
    output wire [0:0] out_c0_exi20_9_tpl,
    output wire [0:0] out_c0_exi20_10_tpl,
    output wire [0:0] out_c0_exi20_11_tpl,
    output wire [0:0] out_c0_exi20_12_tpl,
    output wire [63:0] out_c0_exi20_13_tpl,
    output wire [63:0] out_c0_exi20_14_tpl,
    output wire [31:0] out_c0_exi20_15_tpl,
    output wire [0:0] out_c0_exi20_16_tpl,
    output wire [63:0] out_c0_exi20_17_tpl,
    output wire [63:0] out_c0_exi20_18_tpl,
    output wire [31:0] out_c0_exi20_19_tpl,
    output wire [0:0] out_c0_exi20_20_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_conv2d3x311,
    input wire [0:0] in_c0_eni5_0_tpl,
    input wire [0:0] in_c0_eni5_1_tpl,
    input wire [63:0] in_c0_eni5_2_tpl,
    input wire [63:0] in_c0_eni5_3_tpl,
    input wire [31:0] in_c0_eni5_4_tpl,
    input wire [0:0] in_c0_eni5_5_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] c_i32_073_q;
    wire [31:0] c_i32_175_q;
    wire [31:0] c_i32_276_q;
    wire [32:0] c_i33_178_q;
    wire [32:0] c_i33_undef72_q;
    wire [32:0] i_add_conv2d3x310_a;
    wire [32:0] i_add_conv2d3x310_b;
    logic [32:0] i_add_conv2d3x310_o;
    wire [32:0] i_add_conv2d3x310_q;
    wire [33:0] i_cmp26_1_conv2d3x319_a;
    wire [33:0] i_cmp26_1_conv2d3x319_b;
    logic [33:0] i_cmp26_1_conv2d3x319_o;
    wire [0:0] i_cmp26_1_conv2d3x319_c;
    wire [33:0] i_cmp26_2_conv2d3x325_a;
    wire [33:0] i_cmp26_2_conv2d3x325_b;
    logic [33:0] i_cmp26_2_conv2d3x325_o;
    wire [0:0] i_cmp26_2_conv2d3x325_c;
    wire [33:0] i_cmp26_conv2d3x313_a;
    wire [33:0] i_cmp26_conv2d3x313_b;
    logic [33:0] i_cmp26_conv2d3x313_o;
    wire [0:0] i_cmp26_conv2d3x313_c;
    wire [33:0] i_cmp27_1_conv2d3x322_a;
    wire [33:0] i_cmp27_1_conv2d3x322_b;
    logic [33:0] i_cmp27_1_conv2d3x322_o;
    wire [0:0] i_cmp27_1_conv2d3x322_c;
    wire [33:0] i_cmp27_2_conv2d3x328_a;
    wire [33:0] i_cmp27_2_conv2d3x328_b;
    logic [33:0] i_cmp27_2_conv2d3x328_o;
    wire [0:0] i_cmp27_2_conv2d3x328_c;
    wire [33:0] i_cmp27_conv2d3x316_a;
    wire [33:0] i_cmp27_conv2d3x316_b;
    logic [33:0] i_cmp27_conv2d3x316_o;
    wire [0:0] i_cmp27_conv2d3x316_c;
    wire [0:0] i_fpga_indvars_iv97_replace_phi_conv2d3x35_s;
    reg [32:0] i_fpga_indvars_iv97_replace_phi_conv2d3x35_q;
    wire [33:0] i_fpga_indvars_iv_next98_conv2d3x336_a;
    wire [33:0] i_fpga_indvars_iv_next98_conv2d3x336_b;
    logic [33:0] i_fpga_indvars_iv_next98_conv2d3x336_o;
    wire [33:0] i_fpga_indvars_iv_next98_conv2d3x336_q;
    wire [32:0] i_inc64_conv2d3x338_a;
    wire [32:0] i_inc64_conv2d3x338_b;
    logic [32:0] i_inc64_conv2d3x338_o;
    wire [32:0] i_inc64_conv2d3x338_q;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_conv2d3x314_conv2d3x332_out_dest_data_out_4_0;
    wire [32:0] i_llvm_fpga_ffwd_dest_i33_unnamed_conv2d3x313_conv2d3x33_out_dest_data_out_6_0;
    wire [0:0] i_llvm_fpga_pipeline_keep_going78_conv2d3x32_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going78_conv2d3x32_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going78_conv2d3x32_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going78_conv2d3x32_out_pipeline_valid_out;
    wire [31:0] i_llvm_fpga_pop_f32_lm2597_pop21_conv2d3x344_out_data_out;
    wire [0:0] i_llvm_fpga_pop_f32_lm2597_pop21_conv2d3x344_out_feedback_stall_out_21;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp81103_pop22_conv2d3x346_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp81103_pop22_conv2d3x346_out_feedback_stall_out_22;
    wire [31:0] i_llvm_fpga_pop_i32_i_064_pop18_conv2d3x37_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_i_064_pop18_conv2d3x37_out_feedback_stall_out_18;
    wire [32:0] i_llvm_fpga_pop_i33_fpga_indvars_iv97_pop17_conv2d3x34_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i33_fpga_indvars_iv97_pop17_conv2d3x34_out_feedback_stall_out_17;
    wire [63:0] i_llvm_fpga_pop_p1024f32_filter_weight_addr_067_replace_phi85_pop19_conv2d3x340_out_data_out;
    wire [0:0] i_llvm_fpga_pop_p1024f32_filter_weight_addr_067_replace_phi85_pop19_conv2d3x340_out_feedback_stall_out_19;
    wire [63:0] i_llvm_fpga_pop_p1024f32_output_im_addr_068_replace_phi91_pop20_conv2d3x342_out_data_out;
    wire [0:0] i_llvm_fpga_pop_p1024f32_output_im_addr_068_replace_phi91_pop20_conv2d3x342_out_feedback_stall_out_20;
    wire [31:0] i_llvm_fpga_push_f32_lm2597_push21_conv2d3x345_out_feedback_out_21;
    wire [0:0] i_llvm_fpga_push_f32_lm2597_push21_conv2d3x345_out_feedback_valid_out_21;
    wire [0:0] i_llvm_fpga_push_i1_notcmp81103_push22_conv2d3x347_out_feedback_out_22;
    wire [0:0] i_llvm_fpga_push_i1_notcmp81103_push22_conv2d3x347_out_feedback_valid_out_22;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond79_conv2d3x335_out_feedback_out_10;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond79_conv2d3x335_out_feedback_valid_out_10;
    wire [31:0] i_llvm_fpga_push_i32_i_064_push18_conv2d3x339_out_feedback_out_18;
    wire [0:0] i_llvm_fpga_push_i32_i_064_push18_conv2d3x339_out_feedback_valid_out_18;
    wire [63:0] i_llvm_fpga_push_i33_fpga_indvars_iv97_push17_conv2d3x337_out_feedback_out_17;
    wire [0:0] i_llvm_fpga_push_i33_fpga_indvars_iv97_push17_conv2d3x337_out_feedback_valid_out_17;
    wire [63:0] i_llvm_fpga_push_p1024f32_filter_weight_addr_067_replace_phi85_push19_conv2d3x341_out_feedback_out_19;
    wire [0:0] i_llvm_fpga_push_p1024f32_filter_weight_addr_067_replace_phi85_push19_conv2d3x341_out_feedback_valid_out_19;
    wire [63:0] i_llvm_fpga_push_p1024f32_output_im_addr_068_replace_phi91_push20_conv2d3x343_out_feedback_out_20;
    wire [0:0] i_llvm_fpga_push_p1024f32_output_im_addr_068_replace_phi91_push20_conv2d3x343_out_feedback_valid_out_20;
    wire [31:0] i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer12_conv2d3x321_out_buffer_out;
    wire [31:0] i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer16_conv2d3x315_out_buffer_out;
    wire [31:0] i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer9_conv2d3x327_out_buffer_out;
    wire [31:0] i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer19_conv2d3x311_out_buffer_out;
    wire [31:0] i_llvm_fpga_sync_buffer_i32_pad_sync_buffer17_conv2d3x39_out_buffer_out;
    wire [31:0] i_llvm_fpga_sync_buffer_i32_stride_sync_buffer18_conv2d3x36_out_buffer_out;
    wire [0:0] i_notcmp77_conv2d3x334_q;
    wire [32:0] i_sub_1_conv2d3x318_a;
    wire [32:0] i_sub_1_conv2d3x318_b;
    logic [32:0] i_sub_1_conv2d3x318_o;
    wire [32:0] i_sub_1_conv2d3x318_q;
    wire [32:0] i_sub_2_conv2d3x324_a;
    wire [32:0] i_sub_2_conv2d3x324_b;
    logic [32:0] i_sub_2_conv2d3x324_o;
    wire [32:0] i_sub_2_conv2d3x324_q;
    wire [0:0] i_unnamed_conv2d3x333_q;
    wire [31:0] bgTrunc_i_add_conv2d3x310_sel_x_b;
    wire [32:0] bgTrunc_i_fpga_indvars_iv_next98_conv2d3x336_sel_x_b;
    wire [31:0] bgTrunc_i_inc64_conv2d3x338_sel_x_b;
    wire [63:0] bgTrunc_i_mul18_conv2d3x38_sel_x_in;
    wire [31:0] bgTrunc_i_mul18_conv2d3x38_sel_x_b;
    wire [63:0] bgTrunc_i_mul56_conv2d3x312_sel_x_in;
    wire [31:0] bgTrunc_i_mul56_conv2d3x312_sel_x_b;
    wire [31:0] bgTrunc_i_sub_1_conv2d3x318_sel_x_b;
    wire [31:0] bgTrunc_i_sub_2_conv2d3x324_sel_x_b;
    wire [31:0] c_i32_174_recast_x_q;
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
    wire [0:0] i_exitcond99_conv2d3x330_cmp_nsign_q;
    wire [63:0] i_mul18_conv2d3x38_sums_join_0_q;
    wire [50:0] i_mul18_conv2d3x38_sums_align_1_q;
    wire [50:0] i_mul18_conv2d3x38_sums_align_1_qint;
    wire [64:0] i_mul18_conv2d3x38_sums_result_add_0_0_a;
    wire [64:0] i_mul18_conv2d3x38_sums_result_add_0_0_b;
    logic [64:0] i_mul18_conv2d3x38_sums_result_add_0_0_o;
    wire [64:0] i_mul18_conv2d3x38_sums_result_add_0_0_q;
    wire [63:0] i_mul56_conv2d3x312_sums_join_0_q;
    wire [50:0] i_mul56_conv2d3x312_sums_align_1_q;
    wire [50:0] i_mul56_conv2d3x312_sums_align_1_qint;
    wire [64:0] i_mul56_conv2d3x312_sums_result_add_0_0_a;
    wire [64:0] i_mul56_conv2d3x312_sums_result_add_0_0_b;
    logic [64:0] i_mul56_conv2d3x312_sums_result_add_0_0_o;
    wire [64:0] i_mul56_conv2d3x312_sums_result_add_0_0_q;
    wire i_mul18_conv2d3x38_im0_cma_reset;
    wire [13:0] i_mul18_conv2d3x38_im0_cma_a0;
    wire [13:0] i_mul18_conv2d3x38_im0_cma_c0;
    wire [27:0] i_mul18_conv2d3x38_im0_cma_s0;
    wire [27:0] i_mul18_conv2d3x38_im0_cma_qq;
    wire [27:0] i_mul18_conv2d3x38_im0_cma_q;
    wire i_mul18_conv2d3x38_im0_cma_ena0;
    wire i_mul18_conv2d3x38_im0_cma_ena1;
    wire i_mul18_conv2d3x38_im0_cma_ena2;
    wire i_mul18_conv2d3x38_im8_cma_reset;
    wire [17:0] i_mul18_conv2d3x38_im8_cma_a0;
    wire [17:0] i_mul18_conv2d3x38_im8_cma_c0;
    wire [35:0] i_mul18_conv2d3x38_im8_cma_s0;
    wire [35:0] i_mul18_conv2d3x38_im8_cma_qq;
    wire [35:0] i_mul18_conv2d3x38_im8_cma_q;
    wire i_mul18_conv2d3x38_im8_cma_ena0;
    wire i_mul18_conv2d3x38_im8_cma_ena1;
    wire i_mul18_conv2d3x38_im8_cma_ena2;
    wire i_mul56_conv2d3x312_im0_cma_reset;
    wire [13:0] i_mul56_conv2d3x312_im0_cma_a0;
    wire [13:0] i_mul56_conv2d3x312_im0_cma_c0;
    wire [27:0] i_mul56_conv2d3x312_im0_cma_s0;
    wire [27:0] i_mul56_conv2d3x312_im0_cma_qq;
    wire [27:0] i_mul56_conv2d3x312_im0_cma_q;
    wire i_mul56_conv2d3x312_im0_cma_ena0;
    wire i_mul56_conv2d3x312_im0_cma_ena1;
    wire i_mul56_conv2d3x312_im0_cma_ena2;
    wire i_mul56_conv2d3x312_im8_cma_reset;
    wire [17:0] i_mul56_conv2d3x312_im8_cma_a0;
    wire [17:0] i_mul56_conv2d3x312_im8_cma_c0;
    wire [35:0] i_mul56_conv2d3x312_im8_cma_s0;
    wire [35:0] i_mul56_conv2d3x312_im8_cma_qq;
    wire [35:0] i_mul56_conv2d3x312_im8_cma_q;
    wire i_mul56_conv2d3x312_im8_cma_ena0;
    wire i_mul56_conv2d3x312_im8_cma_ena1;
    wire i_mul56_conv2d3x312_im8_cma_ena2;
    wire i_mul18_conv2d3x38_ma3_cma_reset;
    wire [13:0] i_mul18_conv2d3x38_ma3_cma_a0;
    wire [17:0] i_mul18_conv2d3x38_ma3_cma_c0;
    wire [13:0] i_mul18_conv2d3x38_ma3_cma_a1;
    wire [17:0] i_mul18_conv2d3x38_ma3_cma_c1;
    wire [32:0] i_mul18_conv2d3x38_ma3_cma_s0;
    wire [32:0] i_mul18_conv2d3x38_ma3_cma_qq;
    wire [32:0] i_mul18_conv2d3x38_ma3_cma_q;
    wire i_mul18_conv2d3x38_ma3_cma_ena0;
    wire i_mul18_conv2d3x38_ma3_cma_ena1;
    wire i_mul18_conv2d3x38_ma3_cma_ena2;
    wire i_mul56_conv2d3x312_ma3_cma_reset;
    wire [13:0] i_mul56_conv2d3x312_ma3_cma_a0;
    wire [17:0] i_mul56_conv2d3x312_ma3_cma_c0;
    wire [13:0] i_mul56_conv2d3x312_ma3_cma_a1;
    wire [17:0] i_mul56_conv2d3x312_ma3_cma_c1;
    wire [32:0] i_mul56_conv2d3x312_ma3_cma_s0;
    wire [32:0] i_mul56_conv2d3x312_ma3_cma_qq;
    wire [32:0] i_mul56_conv2d3x312_ma3_cma_q;
    wire i_mul56_conv2d3x312_ma3_cma_ena0;
    wire i_mul56_conv2d3x312_ma3_cma_ena1;
    wire i_mul56_conv2d3x312_ma3_cma_ena2;
    wire [13:0] i_mul18_conv2d3x38_bs1_merged_bit_select_b;
    wire [17:0] i_mul18_conv2d3x38_bs1_merged_bit_select_c;
    wire [13:0] i_mul56_conv2d3x312_bs2_merged_bit_select_b;
    wire [17:0] i_mul56_conv2d3x312_bs2_merged_bit_select_c;
    wire [13:0] i_mul18_conv2d3x38_bs2_merged_bit_select_b;
    wire [17:0] i_mul18_conv2d3x38_bs2_merged_bit_select_c;
    reg [13:0] redist0_i_mul18_conv2d3x38_bs1_merged_bit_select_b_2_q;
    reg [13:0] redist0_i_mul18_conv2d3x38_bs1_merged_bit_select_b_2_delay_0;
    reg [17:0] redist1_i_mul18_conv2d3x38_bs1_merged_bit_select_c_2_q;
    reg [17:0] redist1_i_mul18_conv2d3x38_bs1_merged_bit_select_c_2_delay_0;
    reg [0:0] redist2_sync_together103_aunroll_x_in_c0_eni5_1_tpl_1_q;
    reg [0:0] redist3_sync_together103_aunroll_x_in_c0_eni5_1_tpl_6_q;
    reg [0:0] redist3_sync_together103_aunroll_x_in_c0_eni5_1_tpl_6_delay_0;
    reg [0:0] redist3_sync_together103_aunroll_x_in_c0_eni5_1_tpl_6_delay_1;
    reg [0:0] redist3_sync_together103_aunroll_x_in_c0_eni5_1_tpl_6_delay_2;
    reg [0:0] redist3_sync_together103_aunroll_x_in_c0_eni5_1_tpl_6_delay_3;
    reg [0:0] redist7_sync_together103_aunroll_x_in_c0_eni5_5_tpl_6_q;
    reg [0:0] redist8_sync_together103_aunroll_x_in_i_valid_2_q;
    reg [0:0] redist8_sync_together103_aunroll_x_in_i_valid_2_delay_0;
    reg [0:0] redist9_sync_together103_aunroll_x_in_i_valid_4_q;
    reg [0:0] redist9_sync_together103_aunroll_x_in_i_valid_4_delay_0;
    reg [0:0] redist10_sync_together103_aunroll_x_in_i_valid_5_q;
    reg [31:0] redist11_bgTrunc_i_mul18_conv2d3x38_sel_x_b_1_q;
    reg [31:0] redist12_bgTrunc_i_add_conv2d3x310_sel_x_b_1_q;
    reg [0:0] redist13_i_unnamed_conv2d3x333_q_1_q;
    reg [0:0] redist14_i_unnamed_conv2d3x333_q_6_q;
    reg [0:0] redist14_i_unnamed_conv2d3x333_q_6_delay_0;
    reg [0:0] redist14_i_unnamed_conv2d3x333_q_6_delay_1;
    reg [0:0] redist14_i_unnamed_conv2d3x333_q_6_delay_2;
    reg [0:0] redist14_i_unnamed_conv2d3x333_q_6_delay_3;
    wire redist4_sync_together103_aunroll_x_in_c0_eni5_2_tpl_6_mem_reset0;
    wire [63:0] redist4_sync_together103_aunroll_x_in_c0_eni5_2_tpl_6_mem_ia;
    wire [2:0] redist4_sync_together103_aunroll_x_in_c0_eni5_2_tpl_6_mem_aa;
    wire [2:0] redist4_sync_together103_aunroll_x_in_c0_eni5_2_tpl_6_mem_ab;
    wire [63:0] redist4_sync_together103_aunroll_x_in_c0_eni5_2_tpl_6_mem_iq;
    wire [63:0] redist4_sync_together103_aunroll_x_in_c0_eni5_2_tpl_6_mem_q;
    wire [2:0] redist4_sync_together103_aunroll_x_in_c0_eni5_2_tpl_6_rdcnt_q;
    (* preserve *) reg [2:0] redist4_sync_together103_aunroll_x_in_c0_eni5_2_tpl_6_rdcnt_i;
    (* preserve *) reg redist4_sync_together103_aunroll_x_in_c0_eni5_2_tpl_6_rdcnt_eq;
    reg [2:0] redist4_sync_together103_aunroll_x_in_c0_eni5_2_tpl_6_wraddr_q;
    wire [2:0] redist4_sync_together103_aunroll_x_in_c0_eni5_2_tpl_6_mem_last_q;
    wire [0:0] redist4_sync_together103_aunroll_x_in_c0_eni5_2_tpl_6_cmp_q;
    (* dont_merge *) reg [0:0] redist4_sync_together103_aunroll_x_in_c0_eni5_2_tpl_6_cmpReg_q;
    wire [0:0] redist4_sync_together103_aunroll_x_in_c0_eni5_2_tpl_6_notEnable_q;
    wire [0:0] redist4_sync_together103_aunroll_x_in_c0_eni5_2_tpl_6_nor_q;
    (* dont_merge *) reg [0:0] redist4_sync_together103_aunroll_x_in_c0_eni5_2_tpl_6_sticky_ena_q;
    wire [0:0] redist4_sync_together103_aunroll_x_in_c0_eni5_2_tpl_6_enaAnd_q;
    wire redist5_sync_together103_aunroll_x_in_c0_eni5_3_tpl_6_mem_reset0;
    wire [63:0] redist5_sync_together103_aunroll_x_in_c0_eni5_3_tpl_6_mem_ia;
    wire [2:0] redist5_sync_together103_aunroll_x_in_c0_eni5_3_tpl_6_mem_aa;
    wire [2:0] redist5_sync_together103_aunroll_x_in_c0_eni5_3_tpl_6_mem_ab;
    wire [63:0] redist5_sync_together103_aunroll_x_in_c0_eni5_3_tpl_6_mem_iq;
    wire [63:0] redist5_sync_together103_aunroll_x_in_c0_eni5_3_tpl_6_mem_q;
    wire [2:0] redist5_sync_together103_aunroll_x_in_c0_eni5_3_tpl_6_rdcnt_q;
    (* preserve *) reg [2:0] redist5_sync_together103_aunroll_x_in_c0_eni5_3_tpl_6_rdcnt_i;
    (* preserve *) reg redist5_sync_together103_aunroll_x_in_c0_eni5_3_tpl_6_rdcnt_eq;
    reg [2:0] redist5_sync_together103_aunroll_x_in_c0_eni5_3_tpl_6_wraddr_q;
    wire [2:0] redist5_sync_together103_aunroll_x_in_c0_eni5_3_tpl_6_mem_last_q;
    wire [0:0] redist5_sync_together103_aunroll_x_in_c0_eni5_3_tpl_6_cmp_q;
    (* dont_merge *) reg [0:0] redist5_sync_together103_aunroll_x_in_c0_eni5_3_tpl_6_cmpReg_q;
    wire [0:0] redist5_sync_together103_aunroll_x_in_c0_eni5_3_tpl_6_notEnable_q;
    wire [0:0] redist5_sync_together103_aunroll_x_in_c0_eni5_3_tpl_6_nor_q;
    (* dont_merge *) reg [0:0] redist5_sync_together103_aunroll_x_in_c0_eni5_3_tpl_6_sticky_ena_q;
    wire [0:0] redist5_sync_together103_aunroll_x_in_c0_eni5_3_tpl_6_enaAnd_q;
    wire redist6_sync_together103_aunroll_x_in_c0_eni5_4_tpl_6_mem_reset0;
    wire [31:0] redist6_sync_together103_aunroll_x_in_c0_eni5_4_tpl_6_mem_ia;
    wire [2:0] redist6_sync_together103_aunroll_x_in_c0_eni5_4_tpl_6_mem_aa;
    wire [2:0] redist6_sync_together103_aunroll_x_in_c0_eni5_4_tpl_6_mem_ab;
    wire [31:0] redist6_sync_together103_aunroll_x_in_c0_eni5_4_tpl_6_mem_iq;
    wire [31:0] redist6_sync_together103_aunroll_x_in_c0_eni5_4_tpl_6_mem_q;
    wire [2:0] redist6_sync_together103_aunroll_x_in_c0_eni5_4_tpl_6_rdcnt_q;
    (* preserve *) reg [2:0] redist6_sync_together103_aunroll_x_in_c0_eni5_4_tpl_6_rdcnt_i;
    (* preserve *) reg redist6_sync_together103_aunroll_x_in_c0_eni5_4_tpl_6_rdcnt_eq;
    reg [2:0] redist6_sync_together103_aunroll_x_in_c0_eni5_4_tpl_6_wraddr_q;
    wire [2:0] redist6_sync_together103_aunroll_x_in_c0_eni5_4_tpl_6_mem_last_q;
    wire [0:0] redist6_sync_together103_aunroll_x_in_c0_eni5_4_tpl_6_cmp_q;
    (* dont_merge *) reg [0:0] redist6_sync_together103_aunroll_x_in_c0_eni5_4_tpl_6_cmpReg_q;
    wire [0:0] redist6_sync_together103_aunroll_x_in_c0_eni5_4_tpl_6_notEnable_q;
    wire [0:0] redist6_sync_together103_aunroll_x_in_c0_eni5_4_tpl_6_nor_q;
    (* dont_merge *) reg [0:0] redist6_sync_together103_aunroll_x_in_c0_eni5_4_tpl_6_sticky_ena_q;
    wire [0:0] redist6_sync_together103_aunroll_x_in_c0_eni5_4_tpl_6_enaAnd_q;


    // i_llvm_fpga_ffwd_dest_i33_unnamed_conv2d3x313_conv2d3x33(BLACKBOX,52)@1
    conv2d3x3_i_llvm_fpga_ffwd_dest_i33_unnamed_13_conv2d3x30 thei_llvm_fpga_ffwd_dest_i33_unnamed_conv2d3x313_conv2d3x33 (
        .in_intel_reserved_ffwd_6_0(in_intel_reserved_ffwd_6_0),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_dest_data_out_6_0(i_llvm_fpga_ffwd_dest_i33_unnamed_conv2d3x313_conv2d3x33_out_dest_data_out_6_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i33_178(CONSTANT,37)
    assign c_i33_178_q = $unsigned(33'b111111111111111111111111111111111);

    // i_fpga_indvars_iv_next98_conv2d3x336(ADD,49)@1
    assign i_fpga_indvars_iv_next98_conv2d3x336_a = {1'b0, i_fpga_indvars_iv97_replace_phi_conv2d3x35_q};
    assign i_fpga_indvars_iv_next98_conv2d3x336_b = {1'b0, c_i33_178_q};
    assign i_fpga_indvars_iv_next98_conv2d3x336_o = $unsigned(i_fpga_indvars_iv_next98_conv2d3x336_a) + $unsigned(i_fpga_indvars_iv_next98_conv2d3x336_b);
    assign i_fpga_indvars_iv_next98_conv2d3x336_q = i_fpga_indvars_iv_next98_conv2d3x336_o[33:0];

    // bgTrunc_i_fpga_indvars_iv_next98_conv2d3x336_sel_x(BITSELECT,99)@1
    assign bgTrunc_i_fpga_indvars_iv_next98_conv2d3x336_sel_x_b = i_fpga_indvars_iv_next98_conv2d3x336_q[32:0];

    // i_llvm_fpga_push_i33_fpga_indvars_iv97_push17_conv2d3x337(BLACKBOX,64)@1
    // out out_feedback_out_17@20000000
    // out out_feedback_valid_out_17@20000000
    conv2d3x3_i_llvm_fpga_push_i33_fpga_indvars_iv97_push17_0 thei_llvm_fpga_push_i33_fpga_indvars_iv97_push17_conv2d3x337 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next98_conv2d3x336_sel_x_b),
        .in_feedback_stall_in_17(i_llvm_fpga_pop_i33_fpga_indvars_iv97_pop17_conv2d3x34_out_feedback_stall_out_17),
        .in_stall_in(GND_q),
        .in_unnamed_conv2d3x323(i_unnamed_conv2d3x333_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_feedback_out_17(i_llvm_fpga_push_i33_fpga_indvars_iv97_push17_conv2d3x337_out_feedback_out_17),
        .out_feedback_valid_out_17(i_llvm_fpga_push_i33_fpga_indvars_iv97_push17_conv2d3x337_out_feedback_valid_out_17),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i33_undef72(CONSTANT,38)
    assign c_i33_undef72_q = $unsigned(33'b000000000000000000000000000000000);

    // i_llvm_fpga_pop_i33_fpga_indvars_iv97_pop17_conv2d3x34(BLACKBOX,57)@1
    // out out_feedback_stall_out_17@20000000
    conv2d3x3_i_llvm_fpga_pop_i33_fpga_indvars_iv97_pop17_0 thei_llvm_fpga_pop_i33_fpga_indvars_iv97_pop17_conv2d3x34 (
        .in_data_in(c_i33_undef72_q),
        .in_dir(in_c0_eni5_1_tpl),
        .in_feedback_in_17(i_llvm_fpga_push_i33_fpga_indvars_iv97_push17_conv2d3x337_out_feedback_out_17),
        .in_feedback_valid_in_17(i_llvm_fpga_push_i33_fpga_indvars_iv97_push17_conv2d3x337_out_feedback_valid_out_17),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(i_llvm_fpga_pop_i33_fpga_indvars_iv97_pop17_conv2d3x34_out_data_out),
        .out_feedback_stall_out_17(i_llvm_fpga_pop_i33_fpga_indvars_iv97_pop17_conv2d3x34_out_feedback_stall_out_17),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_fpga_indvars_iv97_replace_phi_conv2d3x35(MUX,48)@1
    assign i_fpga_indvars_iv97_replace_phi_conv2d3x35_s = in_c0_eni5_1_tpl;
    always @(i_fpga_indvars_iv97_replace_phi_conv2d3x35_s or i_llvm_fpga_pop_i33_fpga_indvars_iv97_pop17_conv2d3x34_out_data_out or i_llvm_fpga_ffwd_dest_i33_unnamed_conv2d3x313_conv2d3x33_out_dest_data_out_6_0)
    begin
        unique case (i_fpga_indvars_iv97_replace_phi_conv2d3x35_s)
            1'b0 : i_fpga_indvars_iv97_replace_phi_conv2d3x35_q = i_llvm_fpga_pop_i33_fpga_indvars_iv97_pop17_conv2d3x34_out_data_out;
            1'b1 : i_fpga_indvars_iv97_replace_phi_conv2d3x35_q = i_llvm_fpga_ffwd_dest_i33_unnamed_conv2d3x313_conv2d3x33_out_dest_data_out_6_0;
            default : i_fpga_indvars_iv97_replace_phi_conv2d3x35_q = 33'b0;
        endcase
    end

    // i_exitcond99_conv2d3x330_cmp_nsign(LOGICAL,136)@1
    assign i_exitcond99_conv2d3x330_cmp_nsign_q = $unsigned(~ (i_fpga_indvars_iv97_replace_phi_conv2d3x35_q[32:32]));

    // i_llvm_fpga_ffwd_dest_i1_unnamed_conv2d3x314_conv2d3x332(BLACKBOX,51)@1
    conv2d3x3_i_llvm_fpga_ffwd_dest_i1_unnamed_14_conv2d3x30 thei_llvm_fpga_ffwd_dest_i1_unnamed_conv2d3x314_conv2d3x332 (
        .in_intel_reserved_ffwd_4_0(in_intel_reserved_ffwd_4_0),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_dest_data_out_4_0(i_llvm_fpga_ffwd_dest_i1_unnamed_conv2d3x314_conv2d3x332_out_dest_data_out_4_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_conv2d3x333(LOGICAL,78)@1
    assign i_unnamed_conv2d3x333_q = i_llvm_fpga_ffwd_dest_i1_unnamed_conv2d3x314_conv2d3x332_out_dest_data_out_4_0 & i_exitcond99_conv2d3x330_cmp_nsign_q;

    // i_llvm_fpga_push_i1_notexitcond79_conv2d3x335(BLACKBOX,62)@1
    // out out_feedback_out_10@20000000
    // out out_feedback_valid_out_10@20000000
    conv2d3x3_i_llvm_fpga_push_i1_notexitcond79_0 thei_llvm_fpga_push_i1_notexitcond79_conv2d3x335 (
        .in_data_in(i_unnamed_conv2d3x333_q),
        .in_feedback_stall_in_10(i_llvm_fpga_pipeline_keep_going78_conv2d3x32_out_not_exitcond_stall_out),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_feedback_out_10(i_llvm_fpga_push_i1_notexitcond79_conv2d3x335_out_feedback_out_10),
        .out_feedback_valid_out_10(i_llvm_fpga_push_i1_notexitcond79_conv2d3x335_out_feedback_valid_out_10),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // i_llvm_fpga_pipeline_keep_going78_conv2d3x32(BLACKBOX,53)@1
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    conv2d3x3_i_llvm_fpga_pipeline_keep_going78_0 thei_llvm_fpga_pipeline_keep_going78_conv2d3x32 (
        .in_data_in(VCC_q),
        .in_initeration_in(GND_q),
        .in_initeration_valid_in(GND_q),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond79_conv2d3x335_out_feedback_out_10),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond79_conv2d3x335_out_feedback_valid_out_10),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going78_conv2d3x32_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going78_conv2d3x32_out_exiting_valid_out),
        .out_initeration_stall_out(),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going78_conv2d3x32_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going78_conv2d3x32_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,39)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going78_conv2d3x32_exiting_valid_out = i_llvm_fpga_pipeline_keep_going78_conv2d3x32_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going78_conv2d3x32_exiting_stall_out = i_llvm_fpga_pipeline_keep_going78_conv2d3x32_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,87)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going78_conv2d3x32_out_pipeline_valid_out;

    // redist8_sync_together103_aunroll_x_in_i_valid_2(DELAY,184)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_sync_together103_aunroll_x_in_i_valid_2_delay_0 <= '0;
            redist8_sync_together103_aunroll_x_in_i_valid_2_q <= '0;
        end
        else
        begin
            redist8_sync_together103_aunroll_x_in_i_valid_2_delay_0 <= $unsigned(in_i_valid);
            redist8_sync_together103_aunroll_x_in_i_valid_2_q <= redist8_sync_together103_aunroll_x_in_i_valid_2_delay_0;
        end
    end

    // redist9_sync_together103_aunroll_x_in_i_valid_4(DELAY,185)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_sync_together103_aunroll_x_in_i_valid_4_delay_0 <= '0;
            redist9_sync_together103_aunroll_x_in_i_valid_4_q <= '0;
        end
        else
        begin
            redist9_sync_together103_aunroll_x_in_i_valid_4_delay_0 <= $unsigned(redist8_sync_together103_aunroll_x_in_i_valid_2_q);
            redist9_sync_together103_aunroll_x_in_i_valid_4_q <= redist9_sync_together103_aunroll_x_in_i_valid_4_delay_0;
        end
    end

    // redist10_sync_together103_aunroll_x_in_i_valid_5(DELAY,186)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_sync_together103_aunroll_x_in_i_valid_5_q <= '0;
        end
        else
        begin
            redist10_sync_together103_aunroll_x_in_i_valid_5_q <= $unsigned(redist9_sync_together103_aunroll_x_in_i_valid_4_q);
        end
    end

    // valid_fanout_reg0(REG,111)@6 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist10_sync_together103_aunroll_x_in_i_valid_5_q);
        end
    end

    // redist7_sync_together103_aunroll_x_in_c0_eni5_5_tpl_6(DELAY,183)
    dspba_delay_ver #( .width(1), .depth(6), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist7_sync_together103_aunroll_x_in_c0_eni5_5_tpl_6 ( .xin(in_c0_eni5_5_tpl), .xout(redist7_sync_together103_aunroll_x_in_c0_eni5_5_tpl_6_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist6_sync_together103_aunroll_x_in_c0_eni5_4_tpl_6_notEnable(LOGICAL,217)
    assign redist6_sync_together103_aunroll_x_in_c0_eni5_4_tpl_6_notEnable_q = $unsigned(~ (VCC_q));

    // redist6_sync_together103_aunroll_x_in_c0_eni5_4_tpl_6_nor(LOGICAL,218)
    assign redist6_sync_together103_aunroll_x_in_c0_eni5_4_tpl_6_nor_q = ~ (redist6_sync_together103_aunroll_x_in_c0_eni5_4_tpl_6_notEnable_q | redist6_sync_together103_aunroll_x_in_c0_eni5_4_tpl_6_sticky_ena_q);

    // redist6_sync_together103_aunroll_x_in_c0_eni5_4_tpl_6_mem_last(CONSTANT,214)
    assign redist6_sync_together103_aunroll_x_in_c0_eni5_4_tpl_6_mem_last_q = $unsigned(3'b011);

    // redist6_sync_together103_aunroll_x_in_c0_eni5_4_tpl_6_cmp(LOGICAL,215)
    assign redist6_sync_together103_aunroll_x_in_c0_eni5_4_tpl_6_cmp_q = $unsigned(redist6_sync_together103_aunroll_x_in_c0_eni5_4_tpl_6_mem_last_q == redist6_sync_together103_aunroll_x_in_c0_eni5_4_tpl_6_rdcnt_q ? 1'b1 : 1'b0);

    // redist6_sync_together103_aunroll_x_in_c0_eni5_4_tpl_6_cmpReg(REG,216)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_sync_together103_aunroll_x_in_c0_eni5_4_tpl_6_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist6_sync_together103_aunroll_x_in_c0_eni5_4_tpl_6_cmpReg_q <= $unsigned(redist6_sync_together103_aunroll_x_in_c0_eni5_4_tpl_6_cmp_q);
        end
    end

    // redist6_sync_together103_aunroll_x_in_c0_eni5_4_tpl_6_sticky_ena(REG,219)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_sync_together103_aunroll_x_in_c0_eni5_4_tpl_6_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist6_sync_together103_aunroll_x_in_c0_eni5_4_tpl_6_nor_q == 1'b1)
        begin
            redist6_sync_together103_aunroll_x_in_c0_eni5_4_tpl_6_sticky_ena_q <= $unsigned(redist6_sync_together103_aunroll_x_in_c0_eni5_4_tpl_6_cmpReg_q);
        end
    end

    // redist6_sync_together103_aunroll_x_in_c0_eni5_4_tpl_6_enaAnd(LOGICAL,220)
    assign redist6_sync_together103_aunroll_x_in_c0_eni5_4_tpl_6_enaAnd_q = redist6_sync_together103_aunroll_x_in_c0_eni5_4_tpl_6_sticky_ena_q & VCC_q;

    // redist6_sync_together103_aunroll_x_in_c0_eni5_4_tpl_6_rdcnt(COUNTER,212)
    // low=0, high=4, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_sync_together103_aunroll_x_in_c0_eni5_4_tpl_6_rdcnt_i <= 3'd0;
            redist6_sync_together103_aunroll_x_in_c0_eni5_4_tpl_6_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist6_sync_together103_aunroll_x_in_c0_eni5_4_tpl_6_rdcnt_i == 3'd3)
            begin
                redist6_sync_together103_aunroll_x_in_c0_eni5_4_tpl_6_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist6_sync_together103_aunroll_x_in_c0_eni5_4_tpl_6_rdcnt_eq <= 1'b0;
            end
            if (redist6_sync_together103_aunroll_x_in_c0_eni5_4_tpl_6_rdcnt_eq == 1'b1)
            begin
                redist6_sync_together103_aunroll_x_in_c0_eni5_4_tpl_6_rdcnt_i <= $unsigned(redist6_sync_together103_aunroll_x_in_c0_eni5_4_tpl_6_rdcnt_i) + $unsigned(3'd4);
            end
            else
            begin
                redist6_sync_together103_aunroll_x_in_c0_eni5_4_tpl_6_rdcnt_i <= $unsigned(redist6_sync_together103_aunroll_x_in_c0_eni5_4_tpl_6_rdcnt_i) + $unsigned(3'd1);
            end
        end
    end
    assign redist6_sync_together103_aunroll_x_in_c0_eni5_4_tpl_6_rdcnt_q = redist6_sync_together103_aunroll_x_in_c0_eni5_4_tpl_6_rdcnt_i[2:0];

    // redist6_sync_together103_aunroll_x_in_c0_eni5_4_tpl_6_wraddr(REG,213)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_sync_together103_aunroll_x_in_c0_eni5_4_tpl_6_wraddr_q <= $unsigned(3'b100);
        end
        else
        begin
            redist6_sync_together103_aunroll_x_in_c0_eni5_4_tpl_6_wraddr_q <= $unsigned(redist6_sync_together103_aunroll_x_in_c0_eni5_4_tpl_6_rdcnt_q);
        end
    end

    // redist6_sync_together103_aunroll_x_in_c0_eni5_4_tpl_6_mem(DUALMEM,211)
    assign redist6_sync_together103_aunroll_x_in_c0_eni5_4_tpl_6_mem_ia = $unsigned(in_c0_eni5_4_tpl);
    assign redist6_sync_together103_aunroll_x_in_c0_eni5_4_tpl_6_mem_aa = redist6_sync_together103_aunroll_x_in_c0_eni5_4_tpl_6_wraddr_q;
    assign redist6_sync_together103_aunroll_x_in_c0_eni5_4_tpl_6_mem_ab = redist6_sync_together103_aunroll_x_in_c0_eni5_4_tpl_6_rdcnt_q;
    assign redist6_sync_together103_aunroll_x_in_c0_eni5_4_tpl_6_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(3),
        .numwords_a(5),
        .width_b(32),
        .widthad_b(3),
        .numwords_b(5),
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
    ) redist6_sync_together103_aunroll_x_in_c0_eni5_4_tpl_6_mem_dmem (
        .clocken1(redist6_sync_together103_aunroll_x_in_c0_eni5_4_tpl_6_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist6_sync_together103_aunroll_x_in_c0_eni5_4_tpl_6_mem_reset0),
        .clock1(clock),
        .address_a(redist6_sync_together103_aunroll_x_in_c0_eni5_4_tpl_6_mem_aa),
        .data_a(redist6_sync_together103_aunroll_x_in_c0_eni5_4_tpl_6_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist6_sync_together103_aunroll_x_in_c0_eni5_4_tpl_6_mem_ab),
        .q_b(redist6_sync_together103_aunroll_x_in_c0_eni5_4_tpl_6_mem_iq),
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
    assign redist6_sync_together103_aunroll_x_in_c0_eni5_4_tpl_6_mem_q = redist6_sync_together103_aunroll_x_in_c0_eni5_4_tpl_6_mem_iq[31:0];

    // redist5_sync_together103_aunroll_x_in_c0_eni5_3_tpl_6_notEnable(LOGICAL,207)
    assign redist5_sync_together103_aunroll_x_in_c0_eni5_3_tpl_6_notEnable_q = $unsigned(~ (VCC_q));

    // redist5_sync_together103_aunroll_x_in_c0_eni5_3_tpl_6_nor(LOGICAL,208)
    assign redist5_sync_together103_aunroll_x_in_c0_eni5_3_tpl_6_nor_q = ~ (redist5_sync_together103_aunroll_x_in_c0_eni5_3_tpl_6_notEnable_q | redist5_sync_together103_aunroll_x_in_c0_eni5_3_tpl_6_sticky_ena_q);

    // redist5_sync_together103_aunroll_x_in_c0_eni5_3_tpl_6_mem_last(CONSTANT,204)
    assign redist5_sync_together103_aunroll_x_in_c0_eni5_3_tpl_6_mem_last_q = $unsigned(3'b011);

    // redist5_sync_together103_aunroll_x_in_c0_eni5_3_tpl_6_cmp(LOGICAL,205)
    assign redist5_sync_together103_aunroll_x_in_c0_eni5_3_tpl_6_cmp_q = $unsigned(redist5_sync_together103_aunroll_x_in_c0_eni5_3_tpl_6_mem_last_q == redist5_sync_together103_aunroll_x_in_c0_eni5_3_tpl_6_rdcnt_q ? 1'b1 : 1'b0);

    // redist5_sync_together103_aunroll_x_in_c0_eni5_3_tpl_6_cmpReg(REG,206)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_sync_together103_aunroll_x_in_c0_eni5_3_tpl_6_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist5_sync_together103_aunroll_x_in_c0_eni5_3_tpl_6_cmpReg_q <= $unsigned(redist5_sync_together103_aunroll_x_in_c0_eni5_3_tpl_6_cmp_q);
        end
    end

    // redist5_sync_together103_aunroll_x_in_c0_eni5_3_tpl_6_sticky_ena(REG,209)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_sync_together103_aunroll_x_in_c0_eni5_3_tpl_6_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist5_sync_together103_aunroll_x_in_c0_eni5_3_tpl_6_nor_q == 1'b1)
        begin
            redist5_sync_together103_aunroll_x_in_c0_eni5_3_tpl_6_sticky_ena_q <= $unsigned(redist5_sync_together103_aunroll_x_in_c0_eni5_3_tpl_6_cmpReg_q);
        end
    end

    // redist5_sync_together103_aunroll_x_in_c0_eni5_3_tpl_6_enaAnd(LOGICAL,210)
    assign redist5_sync_together103_aunroll_x_in_c0_eni5_3_tpl_6_enaAnd_q = redist5_sync_together103_aunroll_x_in_c0_eni5_3_tpl_6_sticky_ena_q & VCC_q;

    // redist5_sync_together103_aunroll_x_in_c0_eni5_3_tpl_6_rdcnt(COUNTER,202)
    // low=0, high=4, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_sync_together103_aunroll_x_in_c0_eni5_3_tpl_6_rdcnt_i <= 3'd0;
            redist5_sync_together103_aunroll_x_in_c0_eni5_3_tpl_6_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist5_sync_together103_aunroll_x_in_c0_eni5_3_tpl_6_rdcnt_i == 3'd3)
            begin
                redist5_sync_together103_aunroll_x_in_c0_eni5_3_tpl_6_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist5_sync_together103_aunroll_x_in_c0_eni5_3_tpl_6_rdcnt_eq <= 1'b0;
            end
            if (redist5_sync_together103_aunroll_x_in_c0_eni5_3_tpl_6_rdcnt_eq == 1'b1)
            begin
                redist5_sync_together103_aunroll_x_in_c0_eni5_3_tpl_6_rdcnt_i <= $unsigned(redist5_sync_together103_aunroll_x_in_c0_eni5_3_tpl_6_rdcnt_i) + $unsigned(3'd4);
            end
            else
            begin
                redist5_sync_together103_aunroll_x_in_c0_eni5_3_tpl_6_rdcnt_i <= $unsigned(redist5_sync_together103_aunroll_x_in_c0_eni5_3_tpl_6_rdcnt_i) + $unsigned(3'd1);
            end
        end
    end
    assign redist5_sync_together103_aunroll_x_in_c0_eni5_3_tpl_6_rdcnt_q = redist5_sync_together103_aunroll_x_in_c0_eni5_3_tpl_6_rdcnt_i[2:0];

    // redist5_sync_together103_aunroll_x_in_c0_eni5_3_tpl_6_wraddr(REG,203)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_sync_together103_aunroll_x_in_c0_eni5_3_tpl_6_wraddr_q <= $unsigned(3'b100);
        end
        else
        begin
            redist5_sync_together103_aunroll_x_in_c0_eni5_3_tpl_6_wraddr_q <= $unsigned(redist5_sync_together103_aunroll_x_in_c0_eni5_3_tpl_6_rdcnt_q);
        end
    end

    // redist5_sync_together103_aunroll_x_in_c0_eni5_3_tpl_6_mem(DUALMEM,201)
    assign redist5_sync_together103_aunroll_x_in_c0_eni5_3_tpl_6_mem_ia = $unsigned(in_c0_eni5_3_tpl);
    assign redist5_sync_together103_aunroll_x_in_c0_eni5_3_tpl_6_mem_aa = redist5_sync_together103_aunroll_x_in_c0_eni5_3_tpl_6_wraddr_q;
    assign redist5_sync_together103_aunroll_x_in_c0_eni5_3_tpl_6_mem_ab = redist5_sync_together103_aunroll_x_in_c0_eni5_3_tpl_6_rdcnt_q;
    assign redist5_sync_together103_aunroll_x_in_c0_eni5_3_tpl_6_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(64),
        .widthad_a(3),
        .numwords_a(5),
        .width_b(64),
        .widthad_b(3),
        .numwords_b(5),
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
    ) redist5_sync_together103_aunroll_x_in_c0_eni5_3_tpl_6_mem_dmem (
        .clocken1(redist5_sync_together103_aunroll_x_in_c0_eni5_3_tpl_6_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist5_sync_together103_aunroll_x_in_c0_eni5_3_tpl_6_mem_reset0),
        .clock1(clock),
        .address_a(redist5_sync_together103_aunroll_x_in_c0_eni5_3_tpl_6_mem_aa),
        .data_a(redist5_sync_together103_aunroll_x_in_c0_eni5_3_tpl_6_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist5_sync_together103_aunroll_x_in_c0_eni5_3_tpl_6_mem_ab),
        .q_b(redist5_sync_together103_aunroll_x_in_c0_eni5_3_tpl_6_mem_iq),
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
    assign redist5_sync_together103_aunroll_x_in_c0_eni5_3_tpl_6_mem_q = redist5_sync_together103_aunroll_x_in_c0_eni5_3_tpl_6_mem_iq[63:0];

    // redist4_sync_together103_aunroll_x_in_c0_eni5_2_tpl_6_notEnable(LOGICAL,197)
    assign redist4_sync_together103_aunroll_x_in_c0_eni5_2_tpl_6_notEnable_q = $unsigned(~ (VCC_q));

    // redist4_sync_together103_aunroll_x_in_c0_eni5_2_tpl_6_nor(LOGICAL,198)
    assign redist4_sync_together103_aunroll_x_in_c0_eni5_2_tpl_6_nor_q = ~ (redist4_sync_together103_aunroll_x_in_c0_eni5_2_tpl_6_notEnable_q | redist4_sync_together103_aunroll_x_in_c0_eni5_2_tpl_6_sticky_ena_q);

    // redist4_sync_together103_aunroll_x_in_c0_eni5_2_tpl_6_mem_last(CONSTANT,194)
    assign redist4_sync_together103_aunroll_x_in_c0_eni5_2_tpl_6_mem_last_q = $unsigned(3'b011);

    // redist4_sync_together103_aunroll_x_in_c0_eni5_2_tpl_6_cmp(LOGICAL,195)
    assign redist4_sync_together103_aunroll_x_in_c0_eni5_2_tpl_6_cmp_q = $unsigned(redist4_sync_together103_aunroll_x_in_c0_eni5_2_tpl_6_mem_last_q == redist4_sync_together103_aunroll_x_in_c0_eni5_2_tpl_6_rdcnt_q ? 1'b1 : 1'b0);

    // redist4_sync_together103_aunroll_x_in_c0_eni5_2_tpl_6_cmpReg(REG,196)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_sync_together103_aunroll_x_in_c0_eni5_2_tpl_6_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist4_sync_together103_aunroll_x_in_c0_eni5_2_tpl_6_cmpReg_q <= $unsigned(redist4_sync_together103_aunroll_x_in_c0_eni5_2_tpl_6_cmp_q);
        end
    end

    // redist4_sync_together103_aunroll_x_in_c0_eni5_2_tpl_6_sticky_ena(REG,199)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_sync_together103_aunroll_x_in_c0_eni5_2_tpl_6_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist4_sync_together103_aunroll_x_in_c0_eni5_2_tpl_6_nor_q == 1'b1)
        begin
            redist4_sync_together103_aunroll_x_in_c0_eni5_2_tpl_6_sticky_ena_q <= $unsigned(redist4_sync_together103_aunroll_x_in_c0_eni5_2_tpl_6_cmpReg_q);
        end
    end

    // redist4_sync_together103_aunroll_x_in_c0_eni5_2_tpl_6_enaAnd(LOGICAL,200)
    assign redist4_sync_together103_aunroll_x_in_c0_eni5_2_tpl_6_enaAnd_q = redist4_sync_together103_aunroll_x_in_c0_eni5_2_tpl_6_sticky_ena_q & VCC_q;

    // redist4_sync_together103_aunroll_x_in_c0_eni5_2_tpl_6_rdcnt(COUNTER,192)
    // low=0, high=4, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_sync_together103_aunroll_x_in_c0_eni5_2_tpl_6_rdcnt_i <= 3'd0;
            redist4_sync_together103_aunroll_x_in_c0_eni5_2_tpl_6_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist4_sync_together103_aunroll_x_in_c0_eni5_2_tpl_6_rdcnt_i == 3'd3)
            begin
                redist4_sync_together103_aunroll_x_in_c0_eni5_2_tpl_6_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist4_sync_together103_aunroll_x_in_c0_eni5_2_tpl_6_rdcnt_eq <= 1'b0;
            end
            if (redist4_sync_together103_aunroll_x_in_c0_eni5_2_tpl_6_rdcnt_eq == 1'b1)
            begin
                redist4_sync_together103_aunroll_x_in_c0_eni5_2_tpl_6_rdcnt_i <= $unsigned(redist4_sync_together103_aunroll_x_in_c0_eni5_2_tpl_6_rdcnt_i) + $unsigned(3'd4);
            end
            else
            begin
                redist4_sync_together103_aunroll_x_in_c0_eni5_2_tpl_6_rdcnt_i <= $unsigned(redist4_sync_together103_aunroll_x_in_c0_eni5_2_tpl_6_rdcnt_i) + $unsigned(3'd1);
            end
        end
    end
    assign redist4_sync_together103_aunroll_x_in_c0_eni5_2_tpl_6_rdcnt_q = redist4_sync_together103_aunroll_x_in_c0_eni5_2_tpl_6_rdcnt_i[2:0];

    // redist4_sync_together103_aunroll_x_in_c0_eni5_2_tpl_6_wraddr(REG,193)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_sync_together103_aunroll_x_in_c0_eni5_2_tpl_6_wraddr_q <= $unsigned(3'b100);
        end
        else
        begin
            redist4_sync_together103_aunroll_x_in_c0_eni5_2_tpl_6_wraddr_q <= $unsigned(redist4_sync_together103_aunroll_x_in_c0_eni5_2_tpl_6_rdcnt_q);
        end
    end

    // redist4_sync_together103_aunroll_x_in_c0_eni5_2_tpl_6_mem(DUALMEM,191)
    assign redist4_sync_together103_aunroll_x_in_c0_eni5_2_tpl_6_mem_ia = $unsigned(in_c0_eni5_2_tpl);
    assign redist4_sync_together103_aunroll_x_in_c0_eni5_2_tpl_6_mem_aa = redist4_sync_together103_aunroll_x_in_c0_eni5_2_tpl_6_wraddr_q;
    assign redist4_sync_together103_aunroll_x_in_c0_eni5_2_tpl_6_mem_ab = redist4_sync_together103_aunroll_x_in_c0_eni5_2_tpl_6_rdcnt_q;
    assign redist4_sync_together103_aunroll_x_in_c0_eni5_2_tpl_6_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(64),
        .widthad_a(3),
        .numwords_a(5),
        .width_b(64),
        .widthad_b(3),
        .numwords_b(5),
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
    ) redist4_sync_together103_aunroll_x_in_c0_eni5_2_tpl_6_mem_dmem (
        .clocken1(redist4_sync_together103_aunroll_x_in_c0_eni5_2_tpl_6_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist4_sync_together103_aunroll_x_in_c0_eni5_2_tpl_6_mem_reset0),
        .clock1(clock),
        .address_a(redist4_sync_together103_aunroll_x_in_c0_eni5_2_tpl_6_mem_aa),
        .data_a(redist4_sync_together103_aunroll_x_in_c0_eni5_2_tpl_6_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist4_sync_together103_aunroll_x_in_c0_eni5_2_tpl_6_mem_ab),
        .q_b(redist4_sync_together103_aunroll_x_in_c0_eni5_2_tpl_6_mem_iq),
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
    assign redist4_sync_together103_aunroll_x_in_c0_eni5_2_tpl_6_mem_q = redist4_sync_together103_aunroll_x_in_c0_eni5_2_tpl_6_mem_iq[63:0];

    // valid_fanout_reg15(REG,126)@6 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg15_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg15_q <= $unsigned(redist10_sync_together103_aunroll_x_in_i_valid_5_q);
        end
    end

    // valid_fanout_reg16(REG,127)@6 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg16_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg16_q <= $unsigned(redist10_sync_together103_aunroll_x_in_i_valid_5_q);
        end
    end

    // i_llvm_fpga_push_i1_notcmp81103_push22_conv2d3x347(BLACKBOX,61)@7
    // out out_feedback_out_22@20000000
    // out out_feedback_valid_out_22@20000000
    conv2d3x3_i_llvm_fpga_push_i1_notcmp81103_push22_0 thei_llvm_fpga_push_i1_notcmp81103_push22_conv2d3x347 (
        .in_data_in(i_llvm_fpga_pop_i1_notcmp81103_pop22_conv2d3x346_out_data_out),
        .in_feedback_stall_in_22(i_llvm_fpga_pop_i1_notcmp81103_pop22_conv2d3x346_out_feedback_stall_out_22),
        .in_stall_in(GND_q),
        .in_unnamed_conv2d3x323(redist14_i_unnamed_conv2d3x333_q_6_q),
        .in_valid_in(valid_fanout_reg16_q),
        .out_data_out(),
        .out_feedback_out_22(i_llvm_fpga_push_i1_notcmp81103_push22_conv2d3x347_out_feedback_out_22),
        .out_feedback_valid_out_22(i_llvm_fpga_push_i1_notcmp81103_push22_conv2d3x347_out_feedback_valid_out_22),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist2_sync_together103_aunroll_x_in_c0_eni5_1_tpl_1(DELAY,178)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_sync_together103_aunroll_x_in_c0_eni5_1_tpl_1_q <= '0;
        end
        else
        begin
            redist2_sync_together103_aunroll_x_in_c0_eni5_1_tpl_1_q <= $unsigned(in_c0_eni5_1_tpl);
        end
    end

    // redist3_sync_together103_aunroll_x_in_c0_eni5_1_tpl_6(DELAY,179)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_sync_together103_aunroll_x_in_c0_eni5_1_tpl_6_delay_0 <= '0;
            redist3_sync_together103_aunroll_x_in_c0_eni5_1_tpl_6_delay_1 <= '0;
            redist3_sync_together103_aunroll_x_in_c0_eni5_1_tpl_6_delay_2 <= '0;
            redist3_sync_together103_aunroll_x_in_c0_eni5_1_tpl_6_delay_3 <= '0;
            redist3_sync_together103_aunroll_x_in_c0_eni5_1_tpl_6_q <= '0;
        end
        else
        begin
            redist3_sync_together103_aunroll_x_in_c0_eni5_1_tpl_6_delay_0 <= $unsigned(redist2_sync_together103_aunroll_x_in_c0_eni5_1_tpl_1_q);
            redist3_sync_together103_aunroll_x_in_c0_eni5_1_tpl_6_delay_1 <= redist3_sync_together103_aunroll_x_in_c0_eni5_1_tpl_6_delay_0;
            redist3_sync_together103_aunroll_x_in_c0_eni5_1_tpl_6_delay_2 <= redist3_sync_together103_aunroll_x_in_c0_eni5_1_tpl_6_delay_1;
            redist3_sync_together103_aunroll_x_in_c0_eni5_1_tpl_6_delay_3 <= redist3_sync_together103_aunroll_x_in_c0_eni5_1_tpl_6_delay_2;
            redist3_sync_together103_aunroll_x_in_c0_eni5_1_tpl_6_q <= redist3_sync_together103_aunroll_x_in_c0_eni5_1_tpl_6_delay_3;
        end
    end

    // i_llvm_fpga_pop_i1_notcmp81103_pop22_conv2d3x346(BLACKBOX,55)@7
    // out out_feedback_stall_out_22@20000000
    conv2d3x3_i_llvm_fpga_pop_i1_notcmp81103_pop22_0 thei_llvm_fpga_pop_i1_notcmp81103_pop22_conv2d3x346 (
        .in_data_in(redist7_sync_together103_aunroll_x_in_c0_eni5_5_tpl_6_q),
        .in_dir(redist3_sync_together103_aunroll_x_in_c0_eni5_1_tpl_6_q),
        .in_feedback_in_22(i_llvm_fpga_push_i1_notcmp81103_push22_conv2d3x347_out_feedback_out_22),
        .in_feedback_valid_in_22(i_llvm_fpga_push_i1_notcmp81103_push22_conv2d3x347_out_feedback_valid_out_22),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg15_q),
        .out_data_out(i_llvm_fpga_pop_i1_notcmp81103_pop22_conv2d3x346_out_data_out),
        .out_feedback_stall_out_22(i_llvm_fpga_pop_i1_notcmp81103_pop22_conv2d3x346_out_feedback_stall_out_22),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg13(REG,124)@6 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg13_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg13_q <= $unsigned(redist10_sync_together103_aunroll_x_in_i_valid_5_q);
        end
    end

    // valid_fanout_reg14(REG,125)@6 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg14_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg14_q <= $unsigned(redist10_sync_together103_aunroll_x_in_i_valid_5_q);
        end
    end

    // i_llvm_fpga_push_f32_lm2597_push21_conv2d3x345(BLACKBOX,60)@7
    // out out_feedback_out_21@20000000
    // out out_feedback_valid_out_21@20000000
    conv2d3x3_i_llvm_fpga_push_f32_lm2597_push21_0 thei_llvm_fpga_push_f32_lm2597_push21_conv2d3x345 (
        .in_data_in(i_llvm_fpga_pop_f32_lm2597_pop21_conv2d3x344_out_data_out),
        .in_feedback_stall_in_21(i_llvm_fpga_pop_f32_lm2597_pop21_conv2d3x344_out_feedback_stall_out_21),
        .in_stall_in(GND_q),
        .in_unnamed_conv2d3x323(redist14_i_unnamed_conv2d3x333_q_6_q),
        .in_valid_in(valid_fanout_reg14_q),
        .out_data_out(),
        .out_feedback_out_21(i_llvm_fpga_push_f32_lm2597_push21_conv2d3x345_out_feedback_out_21),
        .out_feedback_valid_out_21(i_llvm_fpga_push_f32_lm2597_push21_conv2d3x345_out_feedback_valid_out_21),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_f32_lm2597_pop21_conv2d3x344(BLACKBOX,54)@7
    // out out_feedback_stall_out_21@20000000
    conv2d3x3_i_llvm_fpga_pop_f32_lm2597_pop21_0 thei_llvm_fpga_pop_f32_lm2597_pop21_conv2d3x344 (
        .in_data_in(redist6_sync_together103_aunroll_x_in_c0_eni5_4_tpl_6_mem_q),
        .in_dir(redist3_sync_together103_aunroll_x_in_c0_eni5_1_tpl_6_q),
        .in_feedback_in_21(i_llvm_fpga_push_f32_lm2597_push21_conv2d3x345_out_feedback_out_21),
        .in_feedback_valid_in_21(i_llvm_fpga_push_f32_lm2597_push21_conv2d3x345_out_feedback_valid_out_21),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg13_q),
        .out_data_out(i_llvm_fpga_pop_f32_lm2597_pop21_conv2d3x344_out_data_out),
        .out_feedback_stall_out_21(i_llvm_fpga_pop_f32_lm2597_pop21_conv2d3x344_out_feedback_stall_out_21),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg11(REG,122)@6 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg11_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg11_q <= $unsigned(redist10_sync_together103_aunroll_x_in_i_valid_5_q);
        end
    end

    // valid_fanout_reg12(REG,123)@6 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg12_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg12_q <= $unsigned(redist10_sync_together103_aunroll_x_in_i_valid_5_q);
        end
    end

    // i_llvm_fpga_push_p1024f32_output_im_addr_068_replace_phi91_push20_conv2d3x343(BLACKBOX,66)@7
    // out out_feedback_out_20@20000000
    // out out_feedback_valid_out_20@20000000
    conv2d3x3_i_llvm_fpga_push_p1024f32_outp0000place_phi91_push20_0 thei_llvm_fpga_push_p1024f32_output_im_addr_068_replace_phi91_push20_conv2d3x343 (
        .in_data_in(i_llvm_fpga_pop_p1024f32_output_im_addr_068_replace_phi91_pop20_conv2d3x342_out_data_out),
        .in_feedback_stall_in_20(i_llvm_fpga_pop_p1024f32_output_im_addr_068_replace_phi91_pop20_conv2d3x342_out_feedback_stall_out_20),
        .in_stall_in(GND_q),
        .in_unnamed_conv2d3x323(redist14_i_unnamed_conv2d3x333_q_6_q),
        .in_valid_in(valid_fanout_reg12_q),
        .out_data_out(),
        .out_feedback_out_20(i_llvm_fpga_push_p1024f32_output_im_addr_068_replace_phi91_push20_conv2d3x343_out_feedback_out_20),
        .out_feedback_valid_out_20(i_llvm_fpga_push_p1024f32_output_im_addr_068_replace_phi91_push20_conv2d3x343_out_feedback_valid_out_20),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_p1024f32_output_im_addr_068_replace_phi91_pop20_conv2d3x342(BLACKBOX,59)@7
    // out out_feedback_stall_out_20@20000000
    conv2d3x3_i_llvm_fpga_pop_p1024f32_outpu0000eplace_phi91_pop20_0 thei_llvm_fpga_pop_p1024f32_output_im_addr_068_replace_phi91_pop20_conv2d3x342 (
        .in_data_in(redist5_sync_together103_aunroll_x_in_c0_eni5_3_tpl_6_mem_q),
        .in_dir(redist3_sync_together103_aunroll_x_in_c0_eni5_1_tpl_6_q),
        .in_feedback_in_20(i_llvm_fpga_push_p1024f32_output_im_addr_068_replace_phi91_push20_conv2d3x343_out_feedback_out_20),
        .in_feedback_valid_in_20(i_llvm_fpga_push_p1024f32_output_im_addr_068_replace_phi91_push20_conv2d3x343_out_feedback_valid_out_20),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg11_q),
        .out_data_out(i_llvm_fpga_pop_p1024f32_output_im_addr_068_replace_phi91_pop20_conv2d3x342_out_data_out),
        .out_feedback_stall_out_20(i_llvm_fpga_pop_p1024f32_output_im_addr_068_replace_phi91_pop20_conv2d3x342_out_feedback_stall_out_20),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg9(REG,120)@6 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg9_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg9_q <= $unsigned(redist10_sync_together103_aunroll_x_in_i_valid_5_q);
        end
    end

    // valid_fanout_reg10(REG,121)@6 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg10_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg10_q <= $unsigned(redist10_sync_together103_aunroll_x_in_i_valid_5_q);
        end
    end

    // i_llvm_fpga_push_p1024f32_filter_weight_addr_067_replace_phi85_push19_conv2d3x341(BLACKBOX,65)@7
    // out out_feedback_out_19@20000000
    // out out_feedback_valid_out_19@20000000
    conv2d3x3_i_llvm_fpga_push_p1024f32_filt0000place_phi85_push19_0 thei_llvm_fpga_push_p1024f32_filter_weight_addr_067_replace_phi85_push19_conv2d3x341 (
        .in_data_in(i_llvm_fpga_pop_p1024f32_filter_weight_addr_067_replace_phi85_pop19_conv2d3x340_out_data_out),
        .in_feedback_stall_in_19(i_llvm_fpga_pop_p1024f32_filter_weight_addr_067_replace_phi85_pop19_conv2d3x340_out_feedback_stall_out_19),
        .in_stall_in(GND_q),
        .in_unnamed_conv2d3x323(redist14_i_unnamed_conv2d3x333_q_6_q),
        .in_valid_in(valid_fanout_reg10_q),
        .out_data_out(),
        .out_feedback_out_19(i_llvm_fpga_push_p1024f32_filter_weight_addr_067_replace_phi85_push19_conv2d3x341_out_feedback_out_19),
        .out_feedback_valid_out_19(i_llvm_fpga_push_p1024f32_filter_weight_addr_067_replace_phi85_push19_conv2d3x341_out_feedback_valid_out_19),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_p1024f32_filter_weight_addr_067_replace_phi85_pop19_conv2d3x340(BLACKBOX,58)@7
    // out out_feedback_stall_out_19@20000000
    conv2d3x3_i_llvm_fpga_pop_p1024f32_filte0000eplace_phi85_pop19_0 thei_llvm_fpga_pop_p1024f32_filter_weight_addr_067_replace_phi85_pop19_conv2d3x340 (
        .in_data_in(redist4_sync_together103_aunroll_x_in_c0_eni5_2_tpl_6_mem_q),
        .in_dir(redist3_sync_together103_aunroll_x_in_c0_eni5_1_tpl_6_q),
        .in_feedback_in_19(i_llvm_fpga_push_p1024f32_filter_weight_addr_067_replace_phi85_push19_conv2d3x341_out_feedback_out_19),
        .in_feedback_valid_in_19(i_llvm_fpga_push_p1024f32_filter_weight_addr_067_replace_phi85_push19_conv2d3x341_out_feedback_valid_out_19),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg9_q),
        .out_data_out(i_llvm_fpga_pop_p1024f32_filter_weight_addr_067_replace_phi85_pop19_conv2d3x340_out_data_out),
        .out_feedback_stall_out_19(i_llvm_fpga_pop_p1024f32_filter_weight_addr_067_replace_phi85_pop19_conv2d3x340_out_feedback_stall_out_19),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_notcmp77_conv2d3x334(LOGICAL,75)@7
    assign i_notcmp77_conv2d3x334_q = redist14_i_unnamed_conv2d3x333_q_6_q ^ VCC_q;

    // redist13_i_unnamed_conv2d3x333_q_1(DELAY,189)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_i_unnamed_conv2d3x333_q_1_q <= '0;
        end
        else
        begin
            redist13_i_unnamed_conv2d3x333_q_1_q <= $unsigned(i_unnamed_conv2d3x333_q);
        end
    end

    // redist14_i_unnamed_conv2d3x333_q_6(DELAY,190)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_i_unnamed_conv2d3x333_q_6_delay_0 <= '0;
            redist14_i_unnamed_conv2d3x333_q_6_delay_1 <= '0;
            redist14_i_unnamed_conv2d3x333_q_6_delay_2 <= '0;
            redist14_i_unnamed_conv2d3x333_q_6_delay_3 <= '0;
            redist14_i_unnamed_conv2d3x333_q_6_q <= '0;
        end
        else
        begin
            redist14_i_unnamed_conv2d3x333_q_6_delay_0 <= $unsigned(redist13_i_unnamed_conv2d3x333_q_1_q);
            redist14_i_unnamed_conv2d3x333_q_6_delay_1 <= redist14_i_unnamed_conv2d3x333_q_6_delay_0;
            redist14_i_unnamed_conv2d3x333_q_6_delay_2 <= redist14_i_unnamed_conv2d3x333_q_6_delay_1;
            redist14_i_unnamed_conv2d3x333_q_6_delay_3 <= redist14_i_unnamed_conv2d3x333_q_6_delay_2;
            redist14_i_unnamed_conv2d3x333_q_6_q <= redist14_i_unnamed_conv2d3x333_q_6_delay_3;
        end
    end

    // valid_fanout_reg7(REG,118)@6 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg7_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg7_q <= $unsigned(redist10_sync_together103_aunroll_x_in_i_valid_5_q);
        end
    end

    // i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer9_conv2d3x327(BLACKBOX,69)@0
    // in in_i_dependence@7
    // in in_valid_in@7
    // out out_buffer_out@7
    // out out_valid_out@7
    conv2d3x3_i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer9_0 thei_llvm_fpga_sync_buffer_i32_input_size_sync_buffer9_conv2d3x327 (
        .in_buffer_in(in_input_size),
        .in_i_dependence(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg7_q),
        .out_buffer_out(i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer9_conv2d3x327_out_buffer_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_cmp27_2_conv2d3x328(COMPARE,45)@7
    assign i_cmp27_2_conv2d3x328_a = $unsigned({{2{bgTrunc_i_sub_2_conv2d3x324_sel_x_b[31]}}, bgTrunc_i_sub_2_conv2d3x324_sel_x_b});
    assign i_cmp27_2_conv2d3x328_b = $unsigned({{2{i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer9_conv2d3x327_out_buffer_out[31]}}, i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer9_conv2d3x327_out_buffer_out});
    assign i_cmp27_2_conv2d3x328_o = $unsigned($signed(i_cmp27_2_conv2d3x328_a) - $signed(i_cmp27_2_conv2d3x328_b));
    assign i_cmp27_2_conv2d3x328_c[0] = i_cmp27_2_conv2d3x328_o[33];

    // c_i32_174_recast_x(CONSTANT,105)
    assign c_i32_174_recast_x_q = $unsigned(32'b11111111111111111111111111111111);

    // i_cmp26_2_conv2d3x325(COMPARE,42)@7
    assign i_cmp26_2_conv2d3x325_a = $unsigned({{2{c_i32_174_recast_x_q[31]}}, c_i32_174_recast_x_q});
    assign i_cmp26_2_conv2d3x325_b = $unsigned({{2{bgTrunc_i_sub_2_conv2d3x324_sel_x_b[31]}}, bgTrunc_i_sub_2_conv2d3x324_sel_x_b});
    assign i_cmp26_2_conv2d3x325_o = $unsigned($signed(i_cmp26_2_conv2d3x325_a) - $signed(i_cmp26_2_conv2d3x325_b));
    assign i_cmp26_2_conv2d3x325_c[0] = i_cmp26_2_conv2d3x325_o[33];

    // c_i32_276(CONSTANT,36)
    assign c_i32_276_q = $unsigned(32'b00000000000000000000000000000010);

    // i_sub_2_conv2d3x324(ADD,77)@7
    assign i_sub_2_conv2d3x324_a = {1'b0, redist12_bgTrunc_i_add_conv2d3x310_sel_x_b_1_q};
    assign i_sub_2_conv2d3x324_b = {1'b0, c_i32_276_q};
    assign i_sub_2_conv2d3x324_o = $unsigned(i_sub_2_conv2d3x324_a) + $unsigned(i_sub_2_conv2d3x324_b);
    assign i_sub_2_conv2d3x324_q = i_sub_2_conv2d3x324_o[32:0];

    // bgTrunc_i_sub_2_conv2d3x324_sel_x(BITSELECT,104)@7
    assign bgTrunc_i_sub_2_conv2d3x324_sel_x_b = i_sub_2_conv2d3x324_q[31:0];

    // valid_fanout_reg6(REG,117)@6 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg6_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg6_q <= $unsigned(redist10_sync_together103_aunroll_x_in_i_valid_5_q);
        end
    end

    // i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer12_conv2d3x321(BLACKBOX,67)@0
    // in in_i_dependence@7
    // in in_valid_in@7
    // out out_buffer_out@7
    // out out_valid_out@7
    conv2d3x3_i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer12_0 thei_llvm_fpga_sync_buffer_i32_input_size_sync_buffer12_conv2d3x321 (
        .in_buffer_in(in_input_size),
        .in_i_dependence(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg6_q),
        .out_buffer_out(i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer12_conv2d3x321_out_buffer_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_cmp27_1_conv2d3x322(COMPARE,44)@7
    assign i_cmp27_1_conv2d3x322_a = $unsigned({{2{bgTrunc_i_sub_1_conv2d3x318_sel_x_b[31]}}, bgTrunc_i_sub_1_conv2d3x318_sel_x_b});
    assign i_cmp27_1_conv2d3x322_b = $unsigned({{2{i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer12_conv2d3x321_out_buffer_out[31]}}, i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer12_conv2d3x321_out_buffer_out});
    assign i_cmp27_1_conv2d3x322_o = $unsigned($signed(i_cmp27_1_conv2d3x322_a) - $signed(i_cmp27_1_conv2d3x322_b));
    assign i_cmp27_1_conv2d3x322_c[0] = i_cmp27_1_conv2d3x322_o[33];

    // i_cmp26_1_conv2d3x319(COMPARE,41)@7
    assign i_cmp26_1_conv2d3x319_a = $unsigned({{2{c_i32_174_recast_x_q[31]}}, c_i32_174_recast_x_q});
    assign i_cmp26_1_conv2d3x319_b = $unsigned({{2{bgTrunc_i_sub_1_conv2d3x318_sel_x_b[31]}}, bgTrunc_i_sub_1_conv2d3x318_sel_x_b});
    assign i_cmp26_1_conv2d3x319_o = $unsigned($signed(i_cmp26_1_conv2d3x319_a) - $signed(i_cmp26_1_conv2d3x319_b));
    assign i_cmp26_1_conv2d3x319_c[0] = i_cmp26_1_conv2d3x319_o[33];

    // c_i32_175(CONSTANT,35)
    assign c_i32_175_q = $unsigned(32'b00000000000000000000000000000001);

    // i_sub_1_conv2d3x318(ADD,76)@7
    assign i_sub_1_conv2d3x318_a = {1'b0, redist12_bgTrunc_i_add_conv2d3x310_sel_x_b_1_q};
    assign i_sub_1_conv2d3x318_b = {1'b0, c_i32_175_q};
    assign i_sub_1_conv2d3x318_o = $unsigned(i_sub_1_conv2d3x318_a) + $unsigned(i_sub_1_conv2d3x318_b);
    assign i_sub_1_conv2d3x318_q = i_sub_1_conv2d3x318_o[32:0];

    // bgTrunc_i_sub_1_conv2d3x318_sel_x(BITSELECT,103)@7
    assign bgTrunc_i_sub_1_conv2d3x318_sel_x_b = i_sub_1_conv2d3x318_q[31:0];

    // valid_fanout_reg5(REG,116)@6 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg5_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg5_q <= $unsigned(redist10_sync_together103_aunroll_x_in_i_valid_5_q);
        end
    end

    // i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer16_conv2d3x315(BLACKBOX,68)@0
    // in in_i_dependence@7
    // in in_valid_in@7
    // out out_buffer_out@7
    // out out_valid_out@7
    conv2d3x3_i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer16_0 thei_llvm_fpga_sync_buffer_i32_input_size_sync_buffer16_conv2d3x315 (
        .in_buffer_in(in_input_size),
        .in_i_dependence(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_buffer_out(i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer16_conv2d3x315_out_buffer_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_cmp27_conv2d3x316(COMPARE,46)@7
    assign i_cmp27_conv2d3x316_a = $unsigned({{2{redist12_bgTrunc_i_add_conv2d3x310_sel_x_b_1_q[31]}}, redist12_bgTrunc_i_add_conv2d3x310_sel_x_b_1_q});
    assign i_cmp27_conv2d3x316_b = $unsigned({{2{i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer16_conv2d3x315_out_buffer_out[31]}}, i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer16_conv2d3x315_out_buffer_out});
    assign i_cmp27_conv2d3x316_o = $unsigned($signed(i_cmp27_conv2d3x316_a) - $signed(i_cmp27_conv2d3x316_b));
    assign i_cmp27_conv2d3x316_c[0] = i_cmp27_conv2d3x316_o[33];

    // i_cmp26_conv2d3x313(COMPARE,43)@7
    assign i_cmp26_conv2d3x313_a = $unsigned({{2{c_i32_174_recast_x_q[31]}}, c_i32_174_recast_x_q});
    assign i_cmp26_conv2d3x313_b = $unsigned({{2{redist12_bgTrunc_i_add_conv2d3x310_sel_x_b_1_q[31]}}, redist12_bgTrunc_i_add_conv2d3x310_sel_x_b_1_q});
    assign i_cmp26_conv2d3x313_o = $unsigned($signed(i_cmp26_conv2d3x313_a) - $signed(i_cmp26_conv2d3x313_b));
    assign i_cmp26_conv2d3x313_c[0] = i_cmp26_conv2d3x313_o[33];

    // valid_fanout_reg2(REG,113)@1 + 1
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

    // valid_fanout_reg8(REG,119)@1 + 1
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

    // i_inc64_conv2d3x338(ADD,50)@2
    assign i_inc64_conv2d3x338_a = {1'b0, i_llvm_fpga_pop_i32_i_064_pop18_conv2d3x37_out_data_out};
    assign i_inc64_conv2d3x338_b = {1'b0, c_i32_175_q};
    assign i_inc64_conv2d3x338_o = $unsigned(i_inc64_conv2d3x338_a) + $unsigned(i_inc64_conv2d3x338_b);
    assign i_inc64_conv2d3x338_q = i_inc64_conv2d3x338_o[32:0];

    // bgTrunc_i_inc64_conv2d3x338_sel_x(BITSELECT,100)@2
    assign bgTrunc_i_inc64_conv2d3x338_sel_x_b = i_inc64_conv2d3x338_q[31:0];

    // i_llvm_fpga_push_i32_i_064_push18_conv2d3x339(BLACKBOX,63)@2
    // out out_feedback_out_18@20000000
    // out out_feedback_valid_out_18@20000000
    conv2d3x3_i_llvm_fpga_push_i32_i_064_push18_0 thei_llvm_fpga_push_i32_i_064_push18_conv2d3x339 (
        .in_data_in(bgTrunc_i_inc64_conv2d3x338_sel_x_b),
        .in_feedback_stall_in_18(i_llvm_fpga_pop_i32_i_064_pop18_conv2d3x37_out_feedback_stall_out_18),
        .in_stall_in(GND_q),
        .in_unnamed_conv2d3x323(redist13_i_unnamed_conv2d3x333_q_1_q),
        .in_valid_in(valid_fanout_reg8_q),
        .out_data_out(),
        .out_feedback_out_18(i_llvm_fpga_push_i32_i_064_push18_conv2d3x339_out_feedback_out_18),
        .out_feedback_valid_out_18(i_llvm_fpga_push_i32_i_064_push18_conv2d3x339_out_feedback_valid_out_18),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_073(CONSTANT,34)
    assign c_i32_073_q = $unsigned(32'b00000000000000000000000000000000);

    // i_llvm_fpga_pop_i32_i_064_pop18_conv2d3x37(BLACKBOX,56)@2
    // out out_feedback_stall_out_18@20000000
    conv2d3x3_i_llvm_fpga_pop_i32_i_064_pop18_0 thei_llvm_fpga_pop_i32_i_064_pop18_conv2d3x37 (
        .in_data_in(c_i32_073_q),
        .in_dir(redist2_sync_together103_aunroll_x_in_c0_eni5_1_tpl_1_q),
        .in_feedback_in_18(i_llvm_fpga_push_i32_i_064_push18_conv2d3x339_out_feedback_out_18),
        .in_feedback_valid_in_18(i_llvm_fpga_push_i32_i_064_push18_conv2d3x339_out_feedback_valid_out_18),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(i_llvm_fpga_pop_i32_i_064_pop18_conv2d3x37_out_data_out),
        .out_feedback_stall_out_18(i_llvm_fpga_pop_i32_i_064_pop18_conv2d3x37_out_feedback_stall_out_18),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_mul18_conv2d3x38_bs1_merged_bit_select(BITSELECT,173)@2
    assign i_mul18_conv2d3x38_bs1_merged_bit_select_b = i_llvm_fpga_pop_i32_i_064_pop18_conv2d3x37_out_data_out[31:18];
    assign i_mul18_conv2d3x38_bs1_merged_bit_select_c = i_llvm_fpga_pop_i32_i_064_pop18_conv2d3x37_out_data_out[17:0];

    // redist1_i_mul18_conv2d3x38_bs1_merged_bit_select_c_2(DELAY,177)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_i_mul18_conv2d3x38_bs1_merged_bit_select_c_2_delay_0 <= '0;
            redist1_i_mul18_conv2d3x38_bs1_merged_bit_select_c_2_q <= '0;
        end
        else
        begin
            redist1_i_mul18_conv2d3x38_bs1_merged_bit_select_c_2_delay_0 <= $unsigned(i_mul18_conv2d3x38_bs1_merged_bit_select_c);
            redist1_i_mul18_conv2d3x38_bs1_merged_bit_select_c_2_q <= redist1_i_mul18_conv2d3x38_bs1_merged_bit_select_c_2_delay_0;
        end
    end

    // valid_fanout_reg4(REG,115)@3 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg4_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg4_q <= $unsigned(redist8_sync_together103_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer19_conv2d3x311(BLACKBOX,70)@0
    // in in_i_dependence@4
    // in in_valid_in@4
    // out out_buffer_out@4
    // out out_valid_out@4
    conv2d3x3_i_llvm_fpga_sync_buffer_i32_ou0000size_sync_buffer19_0 thei_llvm_fpga_sync_buffer_i32_output_size_sync_buffer19_conv2d3x311 (
        .in_buffer_in(in_output_size),
        .in_i_dependence(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_buffer_out(i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer19_conv2d3x311_out_buffer_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_mul56_conv2d3x312_bs2_merged_bit_select(BITSELECT,174)@4
    assign i_mul56_conv2d3x312_bs2_merged_bit_select_b = i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer19_conv2d3x311_out_buffer_out[31:18];
    assign i_mul56_conv2d3x312_bs2_merged_bit_select_c = i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer19_conv2d3x311_out_buffer_out[17:0];

    // redist0_i_mul18_conv2d3x38_bs1_merged_bit_select_b_2(DELAY,176)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_i_mul18_conv2d3x38_bs1_merged_bit_select_b_2_delay_0 <= '0;
            redist0_i_mul18_conv2d3x38_bs1_merged_bit_select_b_2_q <= '0;
        end
        else
        begin
            redist0_i_mul18_conv2d3x38_bs1_merged_bit_select_b_2_delay_0 <= $unsigned(i_mul18_conv2d3x38_bs1_merged_bit_select_b);
            redist0_i_mul18_conv2d3x38_bs1_merged_bit_select_b_2_q <= redist0_i_mul18_conv2d3x38_bs1_merged_bit_select_b_2_delay_0;
        end
    end

    // i_mul56_conv2d3x312_ma3_cma(CHAINMULTADD,172)@4 + 3
    assign i_mul56_conv2d3x312_ma3_cma_reset = ~ (resetn);
    assign i_mul56_conv2d3x312_ma3_cma_ena0 = 1'b1;
    assign i_mul56_conv2d3x312_ma3_cma_ena1 = i_mul56_conv2d3x312_ma3_cma_ena0;
    assign i_mul56_conv2d3x312_ma3_cma_ena2 = i_mul56_conv2d3x312_ma3_cma_ena0;

    assign i_mul56_conv2d3x312_ma3_cma_a0 = redist0_i_mul18_conv2d3x38_bs1_merged_bit_select_b_2_q;
    assign i_mul56_conv2d3x312_ma3_cma_c0 = i_mul56_conv2d3x312_bs2_merged_bit_select_c;
    assign i_mul56_conv2d3x312_ma3_cma_a1 = i_mul56_conv2d3x312_bs2_merged_bit_select_b;
    assign i_mul56_conv2d3x312_ma3_cma_c1 = redist1_i_mul18_conv2d3x38_bs1_merged_bit_select_c_2_q;
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
    ) i_mul56_conv2d3x312_ma3_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul56_conv2d3x312_ma3_cma_ena2, i_mul56_conv2d3x312_ma3_cma_ena1, i_mul56_conv2d3x312_ma3_cma_ena0 }),
        .aclr({ i_mul56_conv2d3x312_ma3_cma_reset, i_mul56_conv2d3x312_ma3_cma_reset }),
        .ay(i_mul56_conv2d3x312_ma3_cma_a1),
        .by(i_mul56_conv2d3x312_ma3_cma_a0),
        .ax(i_mul56_conv2d3x312_ma3_cma_c1),
        .bx(i_mul56_conv2d3x312_ma3_cma_c0),
        .resulta(i_mul56_conv2d3x312_ma3_cma_s0),
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
    i_mul56_conv2d3x312_ma3_cma_delay ( .xin(i_mul56_conv2d3x312_ma3_cma_s0), .xout(i_mul56_conv2d3x312_ma3_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul56_conv2d3x312_ma3_cma_q = $unsigned(i_mul56_conv2d3x312_ma3_cma_qq[32:0]);

    // i_mul56_conv2d3x312_sums_align_1(BITSHIFT,164)@7
    assign i_mul56_conv2d3x312_sums_align_1_qint = { i_mul56_conv2d3x312_ma3_cma_q, 18'b000000000000000000 };
    assign i_mul56_conv2d3x312_sums_align_1_q = i_mul56_conv2d3x312_sums_align_1_qint[50:0];

    // i_mul56_conv2d3x312_im0_cma(CHAINMULTADD,169)@4 + 3
    assign i_mul56_conv2d3x312_im0_cma_reset = ~ (resetn);
    assign i_mul56_conv2d3x312_im0_cma_ena0 = 1'b1;
    assign i_mul56_conv2d3x312_im0_cma_ena1 = i_mul56_conv2d3x312_im0_cma_ena0;
    assign i_mul56_conv2d3x312_im0_cma_ena2 = i_mul56_conv2d3x312_im0_cma_ena0;

    assign i_mul56_conv2d3x312_im0_cma_a0 = redist0_i_mul18_conv2d3x38_bs1_merged_bit_select_b_2_q;
    assign i_mul56_conv2d3x312_im0_cma_c0 = i_mul56_conv2d3x312_bs2_merged_bit_select_b;
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
    ) i_mul56_conv2d3x312_im0_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul56_conv2d3x312_im0_cma_ena2, i_mul56_conv2d3x312_im0_cma_ena1, i_mul56_conv2d3x312_im0_cma_ena0 }),
        .aclr({ i_mul56_conv2d3x312_im0_cma_reset, i_mul56_conv2d3x312_im0_cma_reset }),
        .ay(i_mul56_conv2d3x312_im0_cma_a0),
        .ax(i_mul56_conv2d3x312_im0_cma_c0),
        .resulta(i_mul56_conv2d3x312_im0_cma_s0),
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
    i_mul56_conv2d3x312_im0_cma_delay ( .xin(i_mul56_conv2d3x312_im0_cma_s0), .xout(i_mul56_conv2d3x312_im0_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul56_conv2d3x312_im0_cma_q = $unsigned(i_mul56_conv2d3x312_im0_cma_qq[27:0]);

    // i_mul56_conv2d3x312_im8_cma(CHAINMULTADD,170)@4 + 3
    assign i_mul56_conv2d3x312_im8_cma_reset = ~ (resetn);
    assign i_mul56_conv2d3x312_im8_cma_ena0 = 1'b1;
    assign i_mul56_conv2d3x312_im8_cma_ena1 = i_mul56_conv2d3x312_im8_cma_ena0;
    assign i_mul56_conv2d3x312_im8_cma_ena2 = i_mul56_conv2d3x312_im8_cma_ena0;

    assign i_mul56_conv2d3x312_im8_cma_a0 = redist1_i_mul18_conv2d3x38_bs1_merged_bit_select_c_2_q;
    assign i_mul56_conv2d3x312_im8_cma_c0 = i_mul56_conv2d3x312_bs2_merged_bit_select_c;
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
    ) i_mul56_conv2d3x312_im8_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul56_conv2d3x312_im8_cma_ena2, i_mul56_conv2d3x312_im8_cma_ena1, i_mul56_conv2d3x312_im8_cma_ena0 }),
        .aclr({ i_mul56_conv2d3x312_im8_cma_reset, i_mul56_conv2d3x312_im8_cma_reset }),
        .ay(i_mul56_conv2d3x312_im8_cma_a0),
        .ax(i_mul56_conv2d3x312_im8_cma_c0),
        .resulta(i_mul56_conv2d3x312_im8_cma_s0),
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
    i_mul56_conv2d3x312_im8_cma_delay ( .xin(i_mul56_conv2d3x312_im8_cma_s0), .xout(i_mul56_conv2d3x312_im8_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul56_conv2d3x312_im8_cma_q = $unsigned(i_mul56_conv2d3x312_im8_cma_qq[35:0]);

    // i_mul56_conv2d3x312_sums_join_0(BITJOIN,163)@7
    assign i_mul56_conv2d3x312_sums_join_0_q = {i_mul56_conv2d3x312_im0_cma_q, i_mul56_conv2d3x312_im8_cma_q};

    // i_mul56_conv2d3x312_sums_result_add_0_0(ADD,166)@7
    assign i_mul56_conv2d3x312_sums_result_add_0_0_a = {1'b0, i_mul56_conv2d3x312_sums_join_0_q};
    assign i_mul56_conv2d3x312_sums_result_add_0_0_b = {14'b00000000000000, i_mul56_conv2d3x312_sums_align_1_q};
    assign i_mul56_conv2d3x312_sums_result_add_0_0_o = $unsigned(i_mul56_conv2d3x312_sums_result_add_0_0_a) + $unsigned(i_mul56_conv2d3x312_sums_result_add_0_0_b);
    assign i_mul56_conv2d3x312_sums_result_add_0_0_q = i_mul56_conv2d3x312_sums_result_add_0_0_o[64:0];

    // bgTrunc_i_mul56_conv2d3x312_sel_x(BITSELECT,102)@7
    assign bgTrunc_i_mul56_conv2d3x312_sel_x_in = i_mul56_conv2d3x312_sums_result_add_0_0_q[63:0];
    assign bgTrunc_i_mul56_conv2d3x312_sel_x_b = bgTrunc_i_mul56_conv2d3x312_sel_x_in[31:0];

    // valid_fanout_reg3(REG,114)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg3_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg3_q <= $unsigned(redist9_sync_together103_aunroll_x_in_i_valid_4_q);
        end
    end

    // i_llvm_fpga_sync_buffer_i32_pad_sync_buffer17_conv2d3x39(BLACKBOX,71)@0
    // in in_i_dependence@6
    // in in_valid_in@6
    // out out_buffer_out@6
    // out out_valid_out@6
    conv2d3x3_i_llvm_fpga_sync_buffer_i32_pad_sync_buffer17_0 thei_llvm_fpga_sync_buffer_i32_pad_sync_buffer17_conv2d3x39 (
        .in_buffer_in(in_pad),
        .in_i_dependence(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_buffer_out(i_llvm_fpga_sync_buffer_i32_pad_sync_buffer17_conv2d3x39_out_buffer_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg1(REG,112)@1 + 1
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

    // i_llvm_fpga_sync_buffer_i32_stride_sync_buffer18_conv2d3x36(BLACKBOX,72)@0
    // in in_i_dependence@2
    // in in_valid_in@2
    // out out_buffer_out@2
    // out out_valid_out@2
    conv2d3x3_i_llvm_fpga_sync_buffer_i32_stride_sync_buffer18_0 thei_llvm_fpga_sync_buffer_i32_stride_sync_buffer18_conv2d3x36 (
        .in_buffer_in(in_stride),
        .in_i_dependence(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_buffer_out(i_llvm_fpga_sync_buffer_i32_stride_sync_buffer18_conv2d3x36_out_buffer_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_mul18_conv2d3x38_bs2_merged_bit_select(BITSELECT,175)@2
    assign i_mul18_conv2d3x38_bs2_merged_bit_select_b = i_llvm_fpga_sync_buffer_i32_stride_sync_buffer18_conv2d3x36_out_buffer_out[31:18];
    assign i_mul18_conv2d3x38_bs2_merged_bit_select_c = i_llvm_fpga_sync_buffer_i32_stride_sync_buffer18_conv2d3x36_out_buffer_out[17:0];

    // i_mul18_conv2d3x38_ma3_cma(CHAINMULTADD,171)@2 + 3
    assign i_mul18_conv2d3x38_ma3_cma_reset = ~ (resetn);
    assign i_mul18_conv2d3x38_ma3_cma_ena0 = 1'b1;
    assign i_mul18_conv2d3x38_ma3_cma_ena1 = i_mul18_conv2d3x38_ma3_cma_ena0;
    assign i_mul18_conv2d3x38_ma3_cma_ena2 = i_mul18_conv2d3x38_ma3_cma_ena0;

    assign i_mul18_conv2d3x38_ma3_cma_a0 = i_mul18_conv2d3x38_bs1_merged_bit_select_b;
    assign i_mul18_conv2d3x38_ma3_cma_c0 = i_mul18_conv2d3x38_bs2_merged_bit_select_c;
    assign i_mul18_conv2d3x38_ma3_cma_a1 = i_mul18_conv2d3x38_bs2_merged_bit_select_b;
    assign i_mul18_conv2d3x38_ma3_cma_c1 = i_mul18_conv2d3x38_bs1_merged_bit_select_c;
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
    ) i_mul18_conv2d3x38_ma3_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul18_conv2d3x38_ma3_cma_ena2, i_mul18_conv2d3x38_ma3_cma_ena1, i_mul18_conv2d3x38_ma3_cma_ena0 }),
        .aclr({ i_mul18_conv2d3x38_ma3_cma_reset, i_mul18_conv2d3x38_ma3_cma_reset }),
        .ay(i_mul18_conv2d3x38_ma3_cma_a1),
        .by(i_mul18_conv2d3x38_ma3_cma_a0),
        .ax(i_mul18_conv2d3x38_ma3_cma_c1),
        .bx(i_mul18_conv2d3x38_ma3_cma_c0),
        .resulta(i_mul18_conv2d3x38_ma3_cma_s0),
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
    i_mul18_conv2d3x38_ma3_cma_delay ( .xin(i_mul18_conv2d3x38_ma3_cma_s0), .xout(i_mul18_conv2d3x38_ma3_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul18_conv2d3x38_ma3_cma_q = $unsigned(i_mul18_conv2d3x38_ma3_cma_qq[32:0]);

    // i_mul18_conv2d3x38_sums_align_1(BITSHIFT,149)@5
    assign i_mul18_conv2d3x38_sums_align_1_qint = { i_mul18_conv2d3x38_ma3_cma_q, 18'b000000000000000000 };
    assign i_mul18_conv2d3x38_sums_align_1_q = i_mul18_conv2d3x38_sums_align_1_qint[50:0];

    // i_mul18_conv2d3x38_im0_cma(CHAINMULTADD,167)@2 + 3
    assign i_mul18_conv2d3x38_im0_cma_reset = ~ (resetn);
    assign i_mul18_conv2d3x38_im0_cma_ena0 = 1'b1;
    assign i_mul18_conv2d3x38_im0_cma_ena1 = i_mul18_conv2d3x38_im0_cma_ena0;
    assign i_mul18_conv2d3x38_im0_cma_ena2 = i_mul18_conv2d3x38_im0_cma_ena0;

    assign i_mul18_conv2d3x38_im0_cma_a0 = i_mul18_conv2d3x38_bs1_merged_bit_select_b;
    assign i_mul18_conv2d3x38_im0_cma_c0 = i_mul18_conv2d3x38_bs2_merged_bit_select_b;
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
    ) i_mul18_conv2d3x38_im0_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul18_conv2d3x38_im0_cma_ena2, i_mul18_conv2d3x38_im0_cma_ena1, i_mul18_conv2d3x38_im0_cma_ena0 }),
        .aclr({ i_mul18_conv2d3x38_im0_cma_reset, i_mul18_conv2d3x38_im0_cma_reset }),
        .ay(i_mul18_conv2d3x38_im0_cma_a0),
        .ax(i_mul18_conv2d3x38_im0_cma_c0),
        .resulta(i_mul18_conv2d3x38_im0_cma_s0),
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
    i_mul18_conv2d3x38_im0_cma_delay ( .xin(i_mul18_conv2d3x38_im0_cma_s0), .xout(i_mul18_conv2d3x38_im0_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul18_conv2d3x38_im0_cma_q = $unsigned(i_mul18_conv2d3x38_im0_cma_qq[27:0]);

    // i_mul18_conv2d3x38_im8_cma(CHAINMULTADD,168)@2 + 3
    assign i_mul18_conv2d3x38_im8_cma_reset = ~ (resetn);
    assign i_mul18_conv2d3x38_im8_cma_ena0 = 1'b1;
    assign i_mul18_conv2d3x38_im8_cma_ena1 = i_mul18_conv2d3x38_im8_cma_ena0;
    assign i_mul18_conv2d3x38_im8_cma_ena2 = i_mul18_conv2d3x38_im8_cma_ena0;

    assign i_mul18_conv2d3x38_im8_cma_a0 = i_mul18_conv2d3x38_bs1_merged_bit_select_c;
    assign i_mul18_conv2d3x38_im8_cma_c0 = i_mul18_conv2d3x38_bs2_merged_bit_select_c;
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
    ) i_mul18_conv2d3x38_im8_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul18_conv2d3x38_im8_cma_ena2, i_mul18_conv2d3x38_im8_cma_ena1, i_mul18_conv2d3x38_im8_cma_ena0 }),
        .aclr({ i_mul18_conv2d3x38_im8_cma_reset, i_mul18_conv2d3x38_im8_cma_reset }),
        .ay(i_mul18_conv2d3x38_im8_cma_a0),
        .ax(i_mul18_conv2d3x38_im8_cma_c0),
        .resulta(i_mul18_conv2d3x38_im8_cma_s0),
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
    i_mul18_conv2d3x38_im8_cma_delay ( .xin(i_mul18_conv2d3x38_im8_cma_s0), .xout(i_mul18_conv2d3x38_im8_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul18_conv2d3x38_im8_cma_q = $unsigned(i_mul18_conv2d3x38_im8_cma_qq[35:0]);

    // i_mul18_conv2d3x38_sums_join_0(BITJOIN,148)@5
    assign i_mul18_conv2d3x38_sums_join_0_q = {i_mul18_conv2d3x38_im0_cma_q, i_mul18_conv2d3x38_im8_cma_q};

    // i_mul18_conv2d3x38_sums_result_add_0_0(ADD,151)@5
    assign i_mul18_conv2d3x38_sums_result_add_0_0_a = {1'b0, i_mul18_conv2d3x38_sums_join_0_q};
    assign i_mul18_conv2d3x38_sums_result_add_0_0_b = {14'b00000000000000, i_mul18_conv2d3x38_sums_align_1_q};
    assign i_mul18_conv2d3x38_sums_result_add_0_0_o = $unsigned(i_mul18_conv2d3x38_sums_result_add_0_0_a) + $unsigned(i_mul18_conv2d3x38_sums_result_add_0_0_b);
    assign i_mul18_conv2d3x38_sums_result_add_0_0_q = i_mul18_conv2d3x38_sums_result_add_0_0_o[64:0];

    // bgTrunc_i_mul18_conv2d3x38_sel_x(BITSELECT,101)@5
    assign bgTrunc_i_mul18_conv2d3x38_sel_x_in = i_mul18_conv2d3x38_sums_result_add_0_0_q[63:0];
    assign bgTrunc_i_mul18_conv2d3x38_sel_x_b = bgTrunc_i_mul18_conv2d3x38_sel_x_in[31:0];

    // redist11_bgTrunc_i_mul18_conv2d3x38_sel_x_b_1(DELAY,187)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_bgTrunc_i_mul18_conv2d3x38_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist11_bgTrunc_i_mul18_conv2d3x38_sel_x_b_1_q <= $unsigned(bgTrunc_i_mul18_conv2d3x38_sel_x_b);
        end
    end

    // i_add_conv2d3x310(SUB,40)@6
    assign i_add_conv2d3x310_a = {1'b0, redist11_bgTrunc_i_mul18_conv2d3x38_sel_x_b_1_q};
    assign i_add_conv2d3x310_b = {1'b0, i_llvm_fpga_sync_buffer_i32_pad_sync_buffer17_conv2d3x39_out_buffer_out};
    assign i_add_conv2d3x310_o = $unsigned(i_add_conv2d3x310_a) - $unsigned(i_add_conv2d3x310_b);
    assign i_add_conv2d3x310_q = i_add_conv2d3x310_o[32:0];

    // bgTrunc_i_add_conv2d3x310_sel_x(BITSELECT,98)@6
    assign bgTrunc_i_add_conv2d3x310_sel_x_b = $unsigned(i_add_conv2d3x310_q[31:0]);

    // redist12_bgTrunc_i_add_conv2d3x310_sel_x_b_1(DELAY,188)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_bgTrunc_i_add_conv2d3x310_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist12_bgTrunc_i_add_conv2d3x310_sel_x_b_1_q <= $unsigned(bgTrunc_i_add_conv2d3x310_sel_x_b);
        end
    end

    // sync_out_aunroll_x(GPOUT,109)@7
    assign out_c0_exi20_0_tpl = GND_q;
    assign out_c0_exi20_1_tpl = redist12_bgTrunc_i_add_conv2d3x310_sel_x_b_1_q;
    assign out_c0_exi20_2_tpl = bgTrunc_i_mul56_conv2d3x312_sel_x_b;
    assign out_c0_exi20_3_tpl = i_cmp26_conv2d3x313_c;
    assign out_c0_exi20_4_tpl = i_cmp27_conv2d3x316_c;
    assign out_c0_exi20_5_tpl = bgTrunc_i_sub_1_conv2d3x318_sel_x_b;
    assign out_c0_exi20_6_tpl = i_cmp26_1_conv2d3x319_c;
    assign out_c0_exi20_7_tpl = i_cmp27_1_conv2d3x322_c;
    assign out_c0_exi20_8_tpl = bgTrunc_i_sub_2_conv2d3x324_sel_x_b;
    assign out_c0_exi20_9_tpl = i_cmp26_2_conv2d3x325_c;
    assign out_c0_exi20_10_tpl = i_cmp27_2_conv2d3x328_c;
    assign out_c0_exi20_11_tpl = redist14_i_unnamed_conv2d3x333_q_6_q;
    assign out_c0_exi20_12_tpl = i_notcmp77_conv2d3x334_q;
    assign out_c0_exi20_13_tpl = i_llvm_fpga_pop_p1024f32_filter_weight_addr_067_replace_phi85_pop19_conv2d3x340_out_data_out;
    assign out_c0_exi20_14_tpl = i_llvm_fpga_pop_p1024f32_output_im_addr_068_replace_phi91_pop20_conv2d3x342_out_data_out;
    assign out_c0_exi20_15_tpl = i_llvm_fpga_pop_f32_lm2597_pop21_conv2d3x344_out_data_out;
    assign out_c0_exi20_16_tpl = i_llvm_fpga_pop_i1_notcmp81103_pop22_conv2d3x346_out_data_out;
    assign out_c0_exi20_17_tpl = redist4_sync_together103_aunroll_x_in_c0_eni5_2_tpl_6_mem_q;
    assign out_c0_exi20_18_tpl = redist5_sync_together103_aunroll_x_in_c0_eni5_3_tpl_6_mem_q;
    assign out_c0_exi20_19_tpl = redist6_sync_together103_aunroll_x_in_c0_eni5_4_tpl_6_mem_q;
    assign out_c0_exi20_20_tpl = redist7_sync_together103_aunroll_x_in_c0_eni5_5_tpl_6_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_conv2d3x311 = GND_q;

endmodule
