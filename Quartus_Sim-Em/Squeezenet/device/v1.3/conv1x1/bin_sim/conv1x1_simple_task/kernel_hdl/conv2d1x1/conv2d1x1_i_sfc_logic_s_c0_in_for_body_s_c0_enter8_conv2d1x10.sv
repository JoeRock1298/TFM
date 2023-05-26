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
// SystemVerilog created on Wed May 17 13:49:22 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2d1x1_i_sfc_logic_s_c0_in_for_body_s_c0_enter8_conv2d1x10 (
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going31_conv2d1x12_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going31_conv2d1x12_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [63:0] in_intel_reserved_ffwd_5_0,
    input wire [63:0] in_intel_reserved_ffwd_6_0,
    input wire [63:0] in_filter_bias,
    input wire [31:0] in_input_channels,
    input wire [0:0] in_intel_reserved_ffwd_0_0,
    input wire [31:0] in_intel_reserved_ffwd_1_0,
    input wire [0:0] in_intel_reserved_ffwd_2_0,
    input wire [32:0] in_intel_reserved_ffwd_4_0,
    output wire [0:0] out_c0_exi10_0_tpl,
    output wire [63:0] out_c0_exi10_1_tpl,
    output wire [63:0] out_c0_exi10_2_tpl,
    output wire [0:0] out_c0_exi10_3_tpl,
    output wire [31:0] out_c0_exi10_4_tpl,
    output wire [0:0] out_c0_exi10_5_tpl,
    output wire [0:0] out_c0_exi10_6_tpl,
    output wire [32:0] out_c0_exi10_7_tpl,
    output wire [63:0] out_c0_exi10_8_tpl,
    output wire [0:0] out_c0_exi10_9_tpl,
    output wire [0:0] out_c0_exi10_10_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_conv2d1x18,
    input wire [0:0] in_c0_eni1_0_tpl,
    input wire [0:0] in_c0_eni1_1_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [63:0] c_4_x_float_addrspace_1024_undef74_q;
    wire [31:0] c_i32_076_q;
    wire [31:0] c_i32_177_q;
    wire [31:0] c_i32_178_q;
    wire [32:0] c_i33_179_q;
    wire [32:0] c_i33_undef75_q;
    wire [1:0] i_arrayidx1_conv2d1x133_vt_const_1_q;
    wire [63:0] i_arrayidx1_conv2d1x133_vt_join_q;
    wire [61:0] i_arrayidx1_conv2d1x133_vt_select_63_b;
    wire [0:0] i_cmp248_conv2d1x117_q;
    wire [0:0] i_filter_weight_addr_053_replace_phi_conv2d1x18_s;
    reg [63:0] i_filter_weight_addr_053_replace_phi_conv2d1x18_q;
    wire [0:0] i_fpga_indvars_iv49_replace_phi_conv2d1x111_s;
    reg [32:0] i_fpga_indvars_iv49_replace_phi_conv2d1x111_q;
    wire [33:0] i_fpga_indvars_iv_next50_conv2d1x140_a;
    wire [33:0] i_fpga_indvars_iv_next50_conv2d1x140_b;
    logic [33:0] i_fpga_indvars_iv_next50_conv2d1x140_o;
    wire [33:0] i_fpga_indvars_iv_next50_conv2d1x140_q;
    wire [63:0] i_idx_ext58_conv2d1x119_vt_join_q;
    wire [31:0] i_idx_ext58_conv2d1x119_vt_select_31_b;
    wire [63:0] i_idxprom_conv2d1x131_vt_join_q;
    wire [31:0] i_idxprom_conv2d1x131_vt_select_31_b;
    wire [32:0] i_inc61_conv2d1x142_a;
    wire [32:0] i_inc61_conv2d1x142_b;
    logic [32:0] i_inc61_conv2d1x142_o;
    wire [32:0] i_inc61_conv2d1x142_q;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp5211_conv2d1x136_out_dest_data_out_0_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp5212_conv2d1x120_out_dest_data_out_0_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp529_conv2d1x112_out_dest_data_out_0_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp64517_conv2d1x122_out_dest_data_out_2_0;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_input_size_sync_buffer15_conv2d1x114_out_dest_data_out_1_0;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_input_size_sync_buffer16_conv2d1x115_out_dest_data_out_1_0;
    wire [32:0] i_llvm_fpga_ffwd_dest_i33_unnamed_conv2d1x17_conv2d1x19_out_dest_data_out_4_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024f32_output_im_sync_buffer20_conv2d1x13_out_dest_data_out_6_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024v4f32_filter_weight_sync_buffer19_conv2d1x16_out_dest_data_out_5_0;
    wire [0:0] i_llvm_fpga_pipeline_keep_going31_conv2d1x12_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going31_conv2d1x12_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going31_conv2d1x12_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going31_conv2d1x12_out_pipeline_valid_out;
    wire [31:0] i_llvm_fpga_pop_i32_f_i_055_pop8_conv2d1x130_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_f_i_055_pop8_conv2d1x130_out_feedback_stall_out_8;
    wire [32:0] i_llvm_fpga_pop_i33_fpga_indvars_iv49_pop7_conv2d1x110_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i33_fpga_indvars_iv49_pop7_conv2d1x110_out_feedback_stall_out_7;
    wire [63:0] i_llvm_fpga_pop_p1024f32_output_im_addr_054_pop9_conv2d1x14_out_data_out;
    wire [0:0] i_llvm_fpga_pop_p1024f32_output_im_addr_054_pop9_conv2d1x14_out_feedback_stall_out_9;
    wire [63:0] i_llvm_fpga_pop_p1024v4f32_filter_weight_addr_053_pop10_conv2d1x17_out_data_out;
    wire [0:0] i_llvm_fpga_pop_p1024v4f32_filter_weight_addr_053_pop10_conv2d1x17_out_feedback_stall_out_10;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond32_conv2d1x139_out_feedback_out_6;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond32_conv2d1x139_out_feedback_valid_out_6;
    wire [31:0] i_llvm_fpga_push_i32_f_i_055_push8_conv2d1x143_out_feedback_out_8;
    wire [0:0] i_llvm_fpga_push_i32_f_i_055_push8_conv2d1x143_out_feedback_valid_out_8;
    wire [63:0] i_llvm_fpga_push_i33_fpga_indvars_iv49_push7_conv2d1x141_out_feedback_out_7;
    wire [0:0] i_llvm_fpga_push_i33_fpga_indvars_iv49_push7_conv2d1x141_out_feedback_valid_out_7;
    wire [63:0] i_llvm_fpga_push_p1024f32_output_im_addr_054_push9_conv2d1x145_out_feedback_out_9;
    wire [0:0] i_llvm_fpga_push_p1024f32_output_im_addr_054_push9_conv2d1x145_out_feedback_valid_out_9;
    wire [63:0] i_llvm_fpga_push_p1024v4f32_filter_weight_addr_053_push10_conv2d1x149_out_feedback_out_10;
    wire [0:0] i_llvm_fpga_push_p1024v4f32_filter_weight_addr_053_push10_conv2d1x149_out_feedback_valid_out_10;
    wire [31:0] i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer1_conv2d1x146_out_buffer_out;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024f32_filter_bias_sync_buffer_conv2d1x132_out_buffer_out;
    wire [9:0] i_llvm_fpga_sync_buffer_p1024f32_filter_bias_sync_buffer_conv2d1x132_vt_const_9_q;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024f32_filter_bias_sync_buffer_conv2d1x132_vt_join_q;
    wire [53:0] i_llvm_fpga_sync_buffer_p1024f32_filter_bias_sync_buffer_conv2d1x132_vt_select_63_b;
    wire [0:0] i_notcmp30_conv2d1x138_q;
    wire [0:0] i_output_im_addr_054_replace_phi_conv2d1x15_s;
    reg [63:0] i_output_im_addr_054_replace_phi_conv2d1x15_q;
    wire [0:0] i_umax_conv2d1x126_s;
    reg [31:0] i_umax_conv2d1x126_q;
    wire [0:0] i_unnamed_conv2d1x113_q;
    wire [0:0] i_unnamed_conv2d1x121_q;
    wire [0:0] i_unnamed_conv2d1x123_q;
    wire [0:0] i_unnamed_conv2d1x124_q;
    wire [33:0] i_unnamed_conv2d1x125_a;
    wire [33:0] i_unnamed_conv2d1x125_b;
    logic [33:0] i_unnamed_conv2d1x125_o;
    wire [0:0] i_unnamed_conv2d1x125_c;
    wire [32:0] i_unnamed_conv2d1x127_a;
    wire [32:0] i_unnamed_conv2d1x127_b;
    logic [32:0] i_unnamed_conv2d1x127_o;
    wire [32:0] i_unnamed_conv2d1x127_q;
    wire [32:0] i_unnamed_conv2d1x128_vt_join_q;
    wire [31:0] i_unnamed_conv2d1x128_vt_select_31_b;
    wire [33:0] i_unnamed_conv2d1x129_a;
    wire [33:0] i_unnamed_conv2d1x129_b;
    logic [33:0] i_unnamed_conv2d1x129_o;
    wire [33:0] i_unnamed_conv2d1x129_q;
    wire [0:0] i_unnamed_conv2d1x137_q;
    wire [32:0] bgTrunc_i_fpga_indvars_iv_next50_conv2d1x140_sel_x_b;
    wire [31:0] bgTrunc_i_inc61_conv2d1x142_sel_x_b;
    wire [63:0] bgTrunc_i_mul_conv2d1x116_sel_x_in;
    wire [31:0] bgTrunc_i_mul_conv2d1x116_sel_x_b;
    wire [31:0] bgTrunc_i_unnamed_conv2d1x127_sel_x_b;
    wire [32:0] bgTrunc_i_unnamed_conv2d1x129_sel_x_b;
    wire [64:0] i_add_ptr59_conv2d1x10_add_x_a;
    wire [64:0] i_add_ptr59_conv2d1x10_add_x_b;
    logic [64:0] i_add_ptr59_conv2d1x10_add_x_o;
    wire [64:0] i_add_ptr59_conv2d1x10_add_x_q;
    wire [61:0] i_add_ptr59_conv2d1x10_narrow_x_b;
    wire [63:0] i_add_ptr59_conv2d1x10_shift_join_x_q;
    wire [63:0] i_add_ptr59_conv2d1x10_dupName_0_trunc_sel_x_b;
    wire [64:0] i_add_ptr_conv2d1x10_add_x_a;
    wire [64:0] i_add_ptr_conv2d1x10_add_x_b;
    logic [64:0] i_add_ptr_conv2d1x10_add_x_o;
    wire [64:0] i_add_ptr_conv2d1x10_add_x_q;
    wire [3:0] i_add_ptr_conv2d1x10_c_i4_01_x_q;
    wire [59:0] i_add_ptr_conv2d1x10_narrow_x_b;
    wire [63:0] i_add_ptr_conv2d1x10_shift_join_x_q;
    wire [63:0] i_add_ptr_conv2d1x10_dupName_0_trunc_sel_x_b;
    wire [64:0] i_arrayidx1_conv2d1x10_add_x_a;
    wire [64:0] i_arrayidx1_conv2d1x10_add_x_b;
    logic [64:0] i_arrayidx1_conv2d1x10_add_x_o;
    wire [64:0] i_arrayidx1_conv2d1x10_add_x_q;
    wire [61:0] i_arrayidx1_conv2d1x10_narrow_x_b;
    wire [63:0] i_arrayidx1_conv2d1x10_shift_join_x_q;
    wire [63:0] i_arrayidx1_conv2d1x10_dupName_0_trunc_sel_x_b;
    wire [63:0] i_idx_ext58_conv2d1x119_sel_x_b;
    wire [63:0] i_idx_ext_conv2d1x147_sel_x_b;
    wire [63:0] i_idxprom_conv2d1x131_sel_x_b;
    wire [32:0] i_unnamed_conv2d1x128_sel_x_b;
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
    wire [0:0] i_exitcond51_conv2d1x134_cmp_nsign_q;
    wire [63:0] i_mul_conv2d1x116_sums_join_0_q;
    wire [50:0] i_mul_conv2d1x116_sums_align_1_q;
    wire [50:0] i_mul_conv2d1x116_sums_align_1_qint;
    wire [64:0] i_mul_conv2d1x116_sums_result_add_0_0_a;
    wire [64:0] i_mul_conv2d1x116_sums_result_add_0_0_b;
    logic [64:0] i_mul_conv2d1x116_sums_result_add_0_0_o;
    wire [64:0] i_mul_conv2d1x116_sums_result_add_0_0_q;
    wire i_mul_conv2d1x116_im0_cma_reset;
    wire [13:0] i_mul_conv2d1x116_im0_cma_a0;
    wire [13:0] i_mul_conv2d1x116_im0_cma_c0;
    wire [27:0] i_mul_conv2d1x116_im0_cma_s0;
    wire [27:0] i_mul_conv2d1x116_im0_cma_qq;
    wire [27:0] i_mul_conv2d1x116_im0_cma_q;
    wire i_mul_conv2d1x116_im0_cma_ena0;
    wire i_mul_conv2d1x116_im0_cma_ena1;
    wire i_mul_conv2d1x116_im0_cma_ena2;
    wire i_mul_conv2d1x116_im8_cma_reset;
    wire [17:0] i_mul_conv2d1x116_im8_cma_a0;
    wire [17:0] i_mul_conv2d1x116_im8_cma_c0;
    wire [35:0] i_mul_conv2d1x116_im8_cma_s0;
    wire [35:0] i_mul_conv2d1x116_im8_cma_qq;
    wire [35:0] i_mul_conv2d1x116_im8_cma_q;
    wire i_mul_conv2d1x116_im8_cma_ena0;
    wire i_mul_conv2d1x116_im8_cma_ena1;
    wire i_mul_conv2d1x116_im8_cma_ena2;
    wire i_mul_conv2d1x116_ma3_cma_reset;
    wire [13:0] i_mul_conv2d1x116_ma3_cma_a0;
    wire [17:0] i_mul_conv2d1x116_ma3_cma_c0;
    wire [13:0] i_mul_conv2d1x116_ma3_cma_a1;
    wire [17:0] i_mul_conv2d1x116_ma3_cma_c1;
    wire [32:0] i_mul_conv2d1x116_ma3_cma_s0;
    wire [32:0] i_mul_conv2d1x116_ma3_cma_qq;
    wire [32:0] i_mul_conv2d1x116_ma3_cma_q;
    wire i_mul_conv2d1x116_ma3_cma_ena0;
    wire i_mul_conv2d1x116_ma3_cma_ena1;
    wire i_mul_conv2d1x116_ma3_cma_ena2;
    wire [13:0] i_mul_conv2d1x116_bs1_merged_bit_select_b;
    wire [17:0] i_mul_conv2d1x116_bs1_merged_bit_select_c;
    wire [13:0] i_mul_conv2d1x116_bs2_merged_bit_select_b;
    wire [17:0] i_mul_conv2d1x116_bs2_merged_bit_select_c;
    reg [0:0] redist0_sync_together102_aunroll_x_in_c0_eni1_1_tpl_6_q;
    reg [0:0] redist1_sync_together102_aunroll_x_in_i_valid_5_q;
    reg [0:0] redist1_sync_together102_aunroll_x_in_i_valid_5_delay_0;
    reg [0:0] redist1_sync_together102_aunroll_x_in_i_valid_5_delay_1;
    reg [0:0] redist1_sync_together102_aunroll_x_in_i_valid_5_delay_2;
    reg [0:0] redist1_sync_together102_aunroll_x_in_i_valid_5_delay_3;
    reg [31:0] redist2_bgTrunc_i_mul_conv2d1x116_sel_x_b_1_q;
    reg [31:0] redist3_bgTrunc_i_mul_conv2d1x116_sel_x_b_2_q;
    reg [0:0] redist4_i_unnamed_conv2d1x137_q_6_q;


    // i_llvm_fpga_ffwd_dest_i33_unnamed_conv2d1x17_conv2d1x19(BLACKBOX,64)@1
    conv2d1x1_i_llvm_fpga_ffwd_dest_i33_unnamed_7_conv2d1x10 thei_llvm_fpga_ffwd_dest_i33_unnamed_conv2d1x17_conv2d1x19 (
        .in_intel_reserved_ffwd_4_0(in_intel_reserved_ffwd_4_0),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_dest_data_out_4_0(i_llvm_fpga_ffwd_dest_i33_unnamed_conv2d1x17_conv2d1x19_out_dest_data_out_4_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i33_179(CONSTANT,36)
    assign c_i33_179_q = $unsigned(33'b111111111111111111111111111111111);

    // i_fpga_indvars_iv_next50_conv2d1x140(ADD,46)@1
    assign i_fpga_indvars_iv_next50_conv2d1x140_a = {1'b0, i_fpga_indvars_iv49_replace_phi_conv2d1x111_q};
    assign i_fpga_indvars_iv_next50_conv2d1x140_b = {1'b0, c_i33_179_q};
    assign i_fpga_indvars_iv_next50_conv2d1x140_o = $unsigned(i_fpga_indvars_iv_next50_conv2d1x140_a) + $unsigned(i_fpga_indvars_iv_next50_conv2d1x140_b);
    assign i_fpga_indvars_iv_next50_conv2d1x140_q = i_fpga_indvars_iv_next50_conv2d1x140_o[33:0];

    // bgTrunc_i_fpga_indvars_iv_next50_conv2d1x140_sel_x(BITSELECT,112)@1
    assign bgTrunc_i_fpga_indvars_iv_next50_conv2d1x140_sel_x_b = i_fpga_indvars_iv_next50_conv2d1x140_q[32:0];

    // i_llvm_fpga_push_i33_fpga_indvars_iv49_push7_conv2d1x141(BLACKBOX,74)@1
    // out out_feedback_out_7@20000000
    // out out_feedback_valid_out_7@20000000
    conv2d1x1_i_llvm_fpga_push_i33_fpga_indvars_iv49_push7_0 thei_llvm_fpga_push_i33_fpga_indvars_iv49_push7_conv2d1x141 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next50_conv2d1x140_sel_x_b),
        .in_feedback_stall_in_7(i_llvm_fpga_pop_i33_fpga_indvars_iv49_pop7_conv2d1x110_out_feedback_stall_out_7),
        .in_stall_in(GND_q),
        .in_unnamed_conv2d1x117(i_unnamed_conv2d1x137_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_feedback_out_7(i_llvm_fpga_push_i33_fpga_indvars_iv49_push7_conv2d1x141_out_feedback_out_7),
        .out_feedback_valid_out_7(i_llvm_fpga_push_i33_fpga_indvars_iv49_push7_conv2d1x141_out_feedback_valid_out_7),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i33_undef75(CONSTANT,37)
    assign c_i33_undef75_q = $unsigned(33'b000000000000000000000000000000000);

    // i_llvm_fpga_pop_i33_fpga_indvars_iv49_pop7_conv2d1x110(BLACKBOX,69)@1
    // out out_feedback_stall_out_7@20000000
    conv2d1x1_i_llvm_fpga_pop_i33_fpga_indvars_iv49_pop7_0 thei_llvm_fpga_pop_i33_fpga_indvars_iv49_pop7_conv2d1x110 (
        .in_data_in(c_i33_undef75_q),
        .in_dir(in_c0_eni1_1_tpl),
        .in_feedback_in_7(i_llvm_fpga_push_i33_fpga_indvars_iv49_push7_conv2d1x141_out_feedback_out_7),
        .in_feedback_valid_in_7(i_llvm_fpga_push_i33_fpga_indvars_iv49_push7_conv2d1x141_out_feedback_valid_out_7),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(i_llvm_fpga_pop_i33_fpga_indvars_iv49_pop7_conv2d1x110_out_data_out),
        .out_feedback_stall_out_7(i_llvm_fpga_pop_i33_fpga_indvars_iv49_pop7_conv2d1x110_out_feedback_stall_out_7),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_fpga_indvars_iv49_replace_phi_conv2d1x111(MUX,45)@1
    assign i_fpga_indvars_iv49_replace_phi_conv2d1x111_s = in_c0_eni1_1_tpl;
    always @(i_fpga_indvars_iv49_replace_phi_conv2d1x111_s or i_llvm_fpga_pop_i33_fpga_indvars_iv49_pop7_conv2d1x110_out_data_out or i_llvm_fpga_ffwd_dest_i33_unnamed_conv2d1x17_conv2d1x19_out_dest_data_out_4_0)
    begin
        unique case (i_fpga_indvars_iv49_replace_phi_conv2d1x111_s)
            1'b0 : i_fpga_indvars_iv49_replace_phi_conv2d1x111_q = i_llvm_fpga_pop_i33_fpga_indvars_iv49_pop7_conv2d1x110_out_data_out;
            1'b1 : i_fpga_indvars_iv49_replace_phi_conv2d1x111_q = i_llvm_fpga_ffwd_dest_i33_unnamed_conv2d1x17_conv2d1x19_out_dest_data_out_4_0;
            default : i_fpga_indvars_iv49_replace_phi_conv2d1x111_q = 33'b0;
        endcase
    end

    // i_exitcond51_conv2d1x134_cmp_nsign(LOGICAL,169)@1
    assign i_exitcond51_conv2d1x134_cmp_nsign_q = $unsigned(~ (i_fpga_indvars_iv49_replace_phi_conv2d1x111_q[32:32]));

    // i_llvm_fpga_ffwd_dest_i1_cmp5211_conv2d1x136(BLACKBOX,58)@1
    conv2d1x1_i_llvm_fpga_ffwd_dest_i1_cmp5211_0 thei_llvm_fpga_ffwd_dest_i1_cmp5211_conv2d1x136 (
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_dest_data_out_0_0(i_llvm_fpga_ffwd_dest_i1_cmp5211_conv2d1x136_out_dest_data_out_0_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_conv2d1x137(LOGICAL,97)@1
    assign i_unnamed_conv2d1x137_q = i_llvm_fpga_ffwd_dest_i1_cmp5211_conv2d1x136_out_dest_data_out_0_0 & i_exitcond51_conv2d1x134_cmp_nsign_q;

    // i_llvm_fpga_push_i1_notexitcond32_conv2d1x139(BLACKBOX,72)@1
    // out out_feedback_out_6@20000000
    // out out_feedback_valid_out_6@20000000
    conv2d1x1_i_llvm_fpga_push_i1_notexitcond32_0 thei_llvm_fpga_push_i1_notexitcond32_conv2d1x139 (
        .in_data_in(i_unnamed_conv2d1x137_q),
        .in_feedback_stall_in_6(i_llvm_fpga_pipeline_keep_going31_conv2d1x12_out_not_exitcond_stall_out),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_feedback_out_6(i_llvm_fpga_push_i1_notexitcond32_conv2d1x139_out_feedback_out_6),
        .out_feedback_valid_out_6(i_llvm_fpga_push_i1_notexitcond32_conv2d1x139_out_feedback_valid_out_6),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // i_llvm_fpga_pipeline_keep_going31_conv2d1x12(BLACKBOX,67)@1
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    conv2d1x1_i_llvm_fpga_pipeline_keep_going31_0 thei_llvm_fpga_pipeline_keep_going31_conv2d1x12 (
        .in_data_in(VCC_q),
        .in_initeration_in(GND_q),
        .in_initeration_valid_in(GND_q),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond32_conv2d1x139_out_feedback_out_6),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond32_conv2d1x139_out_feedback_valid_out_6),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going31_conv2d1x12_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going31_conv2d1x12_out_exiting_valid_out),
        .out_initeration_stall_out(),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going31_conv2d1x12_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going31_conv2d1x12_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,38)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going31_conv2d1x12_exiting_valid_out = i_llvm_fpga_pipeline_keep_going31_conv2d1x12_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going31_conv2d1x12_exiting_stall_out = i_llvm_fpga_pipeline_keep_going31_conv2d1x12_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,102)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going31_conv2d1x12_out_pipeline_valid_out;

    // redist1_sync_together102_aunroll_x_in_i_valid_5(DELAY,191)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together102_aunroll_x_in_i_valid_5_delay_0 <= '0;
            redist1_sync_together102_aunroll_x_in_i_valid_5_delay_1 <= '0;
            redist1_sync_together102_aunroll_x_in_i_valid_5_delay_2 <= '0;
            redist1_sync_together102_aunroll_x_in_i_valid_5_delay_3 <= '0;
            redist1_sync_together102_aunroll_x_in_i_valid_5_q <= '0;
        end
        else
        begin
            redist1_sync_together102_aunroll_x_in_i_valid_5_delay_0 <= $unsigned(in_i_valid);
            redist1_sync_together102_aunroll_x_in_i_valid_5_delay_1 <= redist1_sync_together102_aunroll_x_in_i_valid_5_delay_0;
            redist1_sync_together102_aunroll_x_in_i_valid_5_delay_2 <= redist1_sync_together102_aunroll_x_in_i_valid_5_delay_1;
            redist1_sync_together102_aunroll_x_in_i_valid_5_delay_3 <= redist1_sync_together102_aunroll_x_in_i_valid_5_delay_2;
            redist1_sync_together102_aunroll_x_in_i_valid_5_q <= redist1_sync_together102_aunroll_x_in_i_valid_5_delay_3;
        end
    end

    // valid_fanout_reg0(REG,143)@6 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist1_sync_together102_aunroll_x_in_i_valid_5_q);
        end
    end

    // i_notcmp30_conv2d1x138(LOGICAL,83)@7
    assign i_notcmp30_conv2d1x138_q = redist4_i_unnamed_conv2d1x137_q_6_q ^ VCC_q;

    // redist4_i_unnamed_conv2d1x137_q_6(DELAY,194)
    dspba_delay_ver #( .width(1), .depth(6), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist4_i_unnamed_conv2d1x137_q_6 ( .xin(i_unnamed_conv2d1x137_q), .xout(redist4_i_unnamed_conv2d1x137_q_6_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // c_i32_076(CONSTANT,33)
    assign c_i32_076_q = $unsigned(32'b00000000000000000000000000000000);

    // valid_fanout_reg10(REG,153)@6 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg10_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg10_q <= $unsigned(redist1_sync_together102_aunroll_x_in_i_valid_5_q);
        end
    end

    // valid_fanout_reg12(REG,155)@6 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg12_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg12_q <= $unsigned(redist1_sync_together102_aunroll_x_in_i_valid_5_q);
        end
    end

    // c_i32_177(CONSTANT,34)
    assign c_i32_177_q = $unsigned(32'b00000000000000000000000000000001);

    // i_inc61_conv2d1x142(ADD,57)@7
    assign i_inc61_conv2d1x142_a = {1'b0, i_llvm_fpga_pop_i32_f_i_055_pop8_conv2d1x130_out_data_out};
    assign i_inc61_conv2d1x142_b = {1'b0, c_i32_177_q};
    assign i_inc61_conv2d1x142_o = $unsigned(i_inc61_conv2d1x142_a) + $unsigned(i_inc61_conv2d1x142_b);
    assign i_inc61_conv2d1x142_q = i_inc61_conv2d1x142_o[32:0];

    // bgTrunc_i_inc61_conv2d1x142_sel_x(BITSELECT,113)@7
    assign bgTrunc_i_inc61_conv2d1x142_sel_x_b = i_inc61_conv2d1x142_q[31:0];

    // i_llvm_fpga_push_i32_f_i_055_push8_conv2d1x143(BLACKBOX,73)@7
    // out out_feedback_out_8@20000000
    // out out_feedback_valid_out_8@20000000
    conv2d1x1_i_llvm_fpga_push_i32_f_i_055_push8_0 thei_llvm_fpga_push_i32_f_i_055_push8_conv2d1x143 (
        .in_data_in(bgTrunc_i_inc61_conv2d1x142_sel_x_b),
        .in_feedback_stall_in_8(i_llvm_fpga_pop_i32_f_i_055_pop8_conv2d1x130_out_feedback_stall_out_8),
        .in_stall_in(GND_q),
        .in_unnamed_conv2d1x117(redist4_i_unnamed_conv2d1x137_q_6_q),
        .in_valid_in(valid_fanout_reg12_q),
        .out_data_out(),
        .out_feedback_out_8(i_llvm_fpga_push_i32_f_i_055_push8_conv2d1x143_out_feedback_out_8),
        .out_feedback_valid_out_8(i_llvm_fpga_push_i32_f_i_055_push8_conv2d1x143_out_feedback_valid_out_8),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist0_sync_together102_aunroll_x_in_c0_eni1_1_tpl_6(DELAY,190)
    dspba_delay_ver #( .width(1), .depth(6), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist0_sync_together102_aunroll_x_in_c0_eni1_1_tpl_6 ( .xin(in_c0_eni1_1_tpl), .xout(redist0_sync_together102_aunroll_x_in_c0_eni1_1_tpl_6_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_llvm_fpga_pop_i32_f_i_055_pop8_conv2d1x130(BLACKBOX,68)@7
    // out out_feedback_stall_out_8@20000000
    conv2d1x1_i_llvm_fpga_pop_i32_f_i_055_pop8_0 thei_llvm_fpga_pop_i32_f_i_055_pop8_conv2d1x130 (
        .in_data_in(c_i32_076_q),
        .in_dir(redist0_sync_together102_aunroll_x_in_c0_eni1_1_tpl_6_q),
        .in_feedback_in_8(i_llvm_fpga_push_i32_f_i_055_push8_conv2d1x143_out_feedback_out_8),
        .in_feedback_valid_in_8(i_llvm_fpga_push_i32_f_i_055_push8_conv2d1x143_out_feedback_valid_out_8),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg10_q),
        .out_data_out(i_llvm_fpga_pop_i32_f_i_055_pop8_conv2d1x130_out_data_out),
        .out_feedback_stall_out_8(i_llvm_fpga_pop_i32_f_i_055_pop8_conv2d1x130_out_feedback_stall_out_8),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_idxprom_conv2d1x131_sel_x(BITSELECT,139)@7
    assign i_idxprom_conv2d1x131_sel_x_b = {32'b00000000000000000000000000000000, i_llvm_fpga_pop_i32_f_i_055_pop8_conv2d1x130_out_data_out[31:0]};

    // i_idxprom_conv2d1x131_vt_select_31(BITSELECT,56)@7
    assign i_idxprom_conv2d1x131_vt_select_31_b = i_idxprom_conv2d1x131_sel_x_b[31:0];

    // i_idxprom_conv2d1x131_vt_join(BITJOIN,55)@7
    assign i_idxprom_conv2d1x131_vt_join_q = {c_i32_076_q, i_idxprom_conv2d1x131_vt_select_31_b};

    // i_arrayidx1_conv2d1x10_narrow_x(BITSELECT,133)@7
    assign i_arrayidx1_conv2d1x10_narrow_x_b = i_idxprom_conv2d1x131_vt_join_q[61:0];

    // i_arrayidx1_conv2d1x10_shift_join_x(BITJOIN,134)@7
    assign i_arrayidx1_conv2d1x10_shift_join_x_q = {i_arrayidx1_conv2d1x10_narrow_x_b, i_arrayidx1_conv2d1x133_vt_const_1_q};

    // valid_fanout_reg11(REG,154)@6 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg11_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg11_q <= $unsigned(redist1_sync_together102_aunroll_x_in_i_valid_5_q);
        end
    end

    // i_llvm_fpga_sync_buffer_p1024f32_filter_bias_sync_buffer_conv2d1x132(BLACKBOX,78)@0
    // in in_i_dependence@7
    // in in_valid_in@7
    // out out_buffer_out@7
    // out out_valid_out@7
    conv2d1x1_i_llvm_fpga_sync_buffer_p1024f0000r_bias_sync_buffer_0 thei_llvm_fpga_sync_buffer_p1024f32_filter_bias_sync_buffer_conv2d1x132 (
        .in_buffer_in(in_filter_bias),
        .in_i_dependence(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg11_q),
        .out_buffer_out(i_llvm_fpga_sync_buffer_p1024f32_filter_bias_sync_buffer_conv2d1x132_out_buffer_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_sync_buffer_p1024f32_filter_bias_sync_buffer_conv2d1x132_vt_select_63(BITSELECT,81)@7
    assign i_llvm_fpga_sync_buffer_p1024f32_filter_bias_sync_buffer_conv2d1x132_vt_select_63_b = i_llvm_fpga_sync_buffer_p1024f32_filter_bias_sync_buffer_conv2d1x132_out_buffer_out[63:10];

    // i_llvm_fpga_sync_buffer_p1024f32_filter_bias_sync_buffer_conv2d1x132_vt_const_9(CONSTANT,79)
    assign i_llvm_fpga_sync_buffer_p1024f32_filter_bias_sync_buffer_conv2d1x132_vt_const_9_q = $unsigned(10'b0000000000);

    // i_llvm_fpga_sync_buffer_p1024f32_filter_bias_sync_buffer_conv2d1x132_vt_join(BITJOIN,80)@7
    assign i_llvm_fpga_sync_buffer_p1024f32_filter_bias_sync_buffer_conv2d1x132_vt_join_q = {i_llvm_fpga_sync_buffer_p1024f32_filter_bias_sync_buffer_conv2d1x132_vt_select_63_b, i_llvm_fpga_sync_buffer_p1024f32_filter_bias_sync_buffer_conv2d1x132_vt_const_9_q};

    // i_arrayidx1_conv2d1x10_add_x(ADD,131)@7
    assign i_arrayidx1_conv2d1x10_add_x_a = {1'b0, i_llvm_fpga_sync_buffer_p1024f32_filter_bias_sync_buffer_conv2d1x132_vt_join_q};
    assign i_arrayidx1_conv2d1x10_add_x_b = {1'b0, i_arrayidx1_conv2d1x10_shift_join_x_q};
    assign i_arrayidx1_conv2d1x10_add_x_o = $unsigned(i_arrayidx1_conv2d1x10_add_x_a) + $unsigned(i_arrayidx1_conv2d1x10_add_x_b);
    assign i_arrayidx1_conv2d1x10_add_x_q = i_arrayidx1_conv2d1x10_add_x_o[64:0];

    // i_arrayidx1_conv2d1x10_dupName_0_trunc_sel_x(BITSELECT,136)@7
    assign i_arrayidx1_conv2d1x10_dupName_0_trunc_sel_x_b = i_arrayidx1_conv2d1x10_add_x_q[63:0];

    // i_arrayidx1_conv2d1x133_vt_select_63(BITSELECT,41)@7
    assign i_arrayidx1_conv2d1x133_vt_select_63_b = i_arrayidx1_conv2d1x10_dupName_0_trunc_sel_x_b[63:2];

    // i_arrayidx1_conv2d1x133_vt_const_1(CONSTANT,39)
    assign i_arrayidx1_conv2d1x133_vt_const_1_q = $unsigned(2'b00);

    // i_arrayidx1_conv2d1x133_vt_join(BITJOIN,40)@7
    assign i_arrayidx1_conv2d1x133_vt_join_q = {i_arrayidx1_conv2d1x133_vt_select_63_b, i_arrayidx1_conv2d1x133_vt_const_1_q};

    // c_i32_178(CONSTANT,35)
    assign c_i32_178_q = $unsigned(32'b11111111111111111111111111111111);

    // valid_fanout_reg7(REG,150)@1 + 1
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

    // i_llvm_fpga_ffwd_dest_i32_input_size_sync_buffer16_conv2d1x115(BLACKBOX,63)@2
    conv2d1x1_i_llvm_fpga_ffwd_dest_i32_input_size_sync_buffer16_0 thei_llvm_fpga_ffwd_dest_i32_input_size_sync_buffer16_conv2d1x115 (
        .in_intel_reserved_ffwd_1_0(in_intel_reserved_ffwd_1_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg7_q),
        .out_dest_data_out_1_0(i_llvm_fpga_ffwd_dest_i32_input_size_sync_buffer16_conv2d1x115_out_dest_data_out_1_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_mul_conv2d1x116_bs2_merged_bit_select(BITSELECT,189)@2
    assign i_mul_conv2d1x116_bs2_merged_bit_select_b = i_llvm_fpga_ffwd_dest_i32_input_size_sync_buffer16_conv2d1x115_out_dest_data_out_1_0[31:18];
    assign i_mul_conv2d1x116_bs2_merged_bit_select_c = i_llvm_fpga_ffwd_dest_i32_input_size_sync_buffer16_conv2d1x115_out_dest_data_out_1_0[17:0];

    // valid_fanout_reg6(REG,149)@1 + 1
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

    // i_llvm_fpga_ffwd_dest_i32_input_size_sync_buffer15_conv2d1x114(BLACKBOX,62)@2
    conv2d1x1_i_llvm_fpga_ffwd_dest_i32_input_size_sync_buffer15_0 thei_llvm_fpga_ffwd_dest_i32_input_size_sync_buffer15_conv2d1x114 (
        .in_intel_reserved_ffwd_1_0(in_intel_reserved_ffwd_1_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg6_q),
        .out_dest_data_out_1_0(i_llvm_fpga_ffwd_dest_i32_input_size_sync_buffer15_conv2d1x114_out_dest_data_out_1_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_mul_conv2d1x116_bs1_merged_bit_select(BITSELECT,188)@2
    assign i_mul_conv2d1x116_bs1_merged_bit_select_b = i_llvm_fpga_ffwd_dest_i32_input_size_sync_buffer15_conv2d1x114_out_dest_data_out_1_0[31:18];
    assign i_mul_conv2d1x116_bs1_merged_bit_select_c = i_llvm_fpga_ffwd_dest_i32_input_size_sync_buffer15_conv2d1x114_out_dest_data_out_1_0[17:0];

    // i_mul_conv2d1x116_ma3_cma(CHAINMULTADD,187)@2 + 3
    assign i_mul_conv2d1x116_ma3_cma_reset = ~ (resetn);
    assign i_mul_conv2d1x116_ma3_cma_ena0 = 1'b1;
    assign i_mul_conv2d1x116_ma3_cma_ena1 = i_mul_conv2d1x116_ma3_cma_ena0;
    assign i_mul_conv2d1x116_ma3_cma_ena2 = i_mul_conv2d1x116_ma3_cma_ena0;

    assign i_mul_conv2d1x116_ma3_cma_a0 = i_mul_conv2d1x116_bs1_merged_bit_select_b;
    assign i_mul_conv2d1x116_ma3_cma_c0 = i_mul_conv2d1x116_bs2_merged_bit_select_c;
    assign i_mul_conv2d1x116_ma3_cma_a1 = i_mul_conv2d1x116_bs2_merged_bit_select_b;
    assign i_mul_conv2d1x116_ma3_cma_c1 = i_mul_conv2d1x116_bs1_merged_bit_select_c;
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
    ) i_mul_conv2d1x116_ma3_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul_conv2d1x116_ma3_cma_ena2, i_mul_conv2d1x116_ma3_cma_ena1, i_mul_conv2d1x116_ma3_cma_ena0 }),
        .aclr({ i_mul_conv2d1x116_ma3_cma_reset, i_mul_conv2d1x116_ma3_cma_reset }),
        .ay(i_mul_conv2d1x116_ma3_cma_a1),
        .by(i_mul_conv2d1x116_ma3_cma_a0),
        .ax(i_mul_conv2d1x116_ma3_cma_c1),
        .bx(i_mul_conv2d1x116_ma3_cma_c0),
        .resulta(i_mul_conv2d1x116_ma3_cma_s0),
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
    i_mul_conv2d1x116_ma3_cma_delay ( .xin(i_mul_conv2d1x116_ma3_cma_s0), .xout(i_mul_conv2d1x116_ma3_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul_conv2d1x116_ma3_cma_q = $unsigned(i_mul_conv2d1x116_ma3_cma_qq[32:0]);

    // i_mul_conv2d1x116_sums_align_1(BITSHIFT,182)@5
    assign i_mul_conv2d1x116_sums_align_1_qint = { i_mul_conv2d1x116_ma3_cma_q, 18'b000000000000000000 };
    assign i_mul_conv2d1x116_sums_align_1_q = i_mul_conv2d1x116_sums_align_1_qint[50:0];

    // i_mul_conv2d1x116_im0_cma(CHAINMULTADD,185)@2 + 3
    assign i_mul_conv2d1x116_im0_cma_reset = ~ (resetn);
    assign i_mul_conv2d1x116_im0_cma_ena0 = 1'b1;
    assign i_mul_conv2d1x116_im0_cma_ena1 = i_mul_conv2d1x116_im0_cma_ena0;
    assign i_mul_conv2d1x116_im0_cma_ena2 = i_mul_conv2d1x116_im0_cma_ena0;

    assign i_mul_conv2d1x116_im0_cma_a0 = i_mul_conv2d1x116_bs1_merged_bit_select_b;
    assign i_mul_conv2d1x116_im0_cma_c0 = i_mul_conv2d1x116_bs2_merged_bit_select_b;
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
    ) i_mul_conv2d1x116_im0_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul_conv2d1x116_im0_cma_ena2, i_mul_conv2d1x116_im0_cma_ena1, i_mul_conv2d1x116_im0_cma_ena0 }),
        .aclr({ i_mul_conv2d1x116_im0_cma_reset, i_mul_conv2d1x116_im0_cma_reset }),
        .ay(i_mul_conv2d1x116_im0_cma_a0),
        .ax(i_mul_conv2d1x116_im0_cma_c0),
        .resulta(i_mul_conv2d1x116_im0_cma_s0),
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
    i_mul_conv2d1x116_im0_cma_delay ( .xin(i_mul_conv2d1x116_im0_cma_s0), .xout(i_mul_conv2d1x116_im0_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul_conv2d1x116_im0_cma_q = $unsigned(i_mul_conv2d1x116_im0_cma_qq[27:0]);

    // i_mul_conv2d1x116_im8_cma(CHAINMULTADD,186)@2 + 3
    assign i_mul_conv2d1x116_im8_cma_reset = ~ (resetn);
    assign i_mul_conv2d1x116_im8_cma_ena0 = 1'b1;
    assign i_mul_conv2d1x116_im8_cma_ena1 = i_mul_conv2d1x116_im8_cma_ena0;
    assign i_mul_conv2d1x116_im8_cma_ena2 = i_mul_conv2d1x116_im8_cma_ena0;

    assign i_mul_conv2d1x116_im8_cma_a0 = i_mul_conv2d1x116_bs1_merged_bit_select_c;
    assign i_mul_conv2d1x116_im8_cma_c0 = i_mul_conv2d1x116_bs2_merged_bit_select_c;
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
    ) i_mul_conv2d1x116_im8_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul_conv2d1x116_im8_cma_ena2, i_mul_conv2d1x116_im8_cma_ena1, i_mul_conv2d1x116_im8_cma_ena0 }),
        .aclr({ i_mul_conv2d1x116_im8_cma_reset, i_mul_conv2d1x116_im8_cma_reset }),
        .ay(i_mul_conv2d1x116_im8_cma_a0),
        .ax(i_mul_conv2d1x116_im8_cma_c0),
        .resulta(i_mul_conv2d1x116_im8_cma_s0),
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
    i_mul_conv2d1x116_im8_cma_delay ( .xin(i_mul_conv2d1x116_im8_cma_s0), .xout(i_mul_conv2d1x116_im8_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul_conv2d1x116_im8_cma_q = $unsigned(i_mul_conv2d1x116_im8_cma_qq[35:0]);

    // i_mul_conv2d1x116_sums_join_0(BITJOIN,181)@5
    assign i_mul_conv2d1x116_sums_join_0_q = {i_mul_conv2d1x116_im0_cma_q, i_mul_conv2d1x116_im8_cma_q};

    // i_mul_conv2d1x116_sums_result_add_0_0(ADD,184)@5
    assign i_mul_conv2d1x116_sums_result_add_0_0_a = {1'b0, i_mul_conv2d1x116_sums_join_0_q};
    assign i_mul_conv2d1x116_sums_result_add_0_0_b = {14'b00000000000000, i_mul_conv2d1x116_sums_align_1_q};
    assign i_mul_conv2d1x116_sums_result_add_0_0_o = $unsigned(i_mul_conv2d1x116_sums_result_add_0_0_a) + $unsigned(i_mul_conv2d1x116_sums_result_add_0_0_b);
    assign i_mul_conv2d1x116_sums_result_add_0_0_q = i_mul_conv2d1x116_sums_result_add_0_0_o[64:0];

    // bgTrunc_i_mul_conv2d1x116_sel_x(BITSELECT,114)@5
    assign bgTrunc_i_mul_conv2d1x116_sel_x_in = i_mul_conv2d1x116_sums_result_add_0_0_q[63:0];
    assign bgTrunc_i_mul_conv2d1x116_sel_x_b = bgTrunc_i_mul_conv2d1x116_sel_x_in[31:0];

    // redist2_bgTrunc_i_mul_conv2d1x116_sel_x_b_1(DELAY,192)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_bgTrunc_i_mul_conv2d1x116_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist2_bgTrunc_i_mul_conv2d1x116_sel_x_b_1_q <= $unsigned(bgTrunc_i_mul_conv2d1x116_sel_x_b);
        end
    end

    // i_unnamed_conv2d1x125(COMPARE,90)@6 + 1
    assign i_unnamed_conv2d1x125_a = {2'b00, c_i32_177_q};
    assign i_unnamed_conv2d1x125_b = {2'b00, redist2_bgTrunc_i_mul_conv2d1x116_sel_x_b_1_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_unnamed_conv2d1x125_o <= 34'b0;
        end
        else
        begin
            i_unnamed_conv2d1x125_o <= $unsigned(i_unnamed_conv2d1x125_a) - $unsigned(i_unnamed_conv2d1x125_b);
        end
    end
    assign i_unnamed_conv2d1x125_c[0] = i_unnamed_conv2d1x125_o[33];

    // i_umax_conv2d1x126(MUX,85)@7
    assign i_umax_conv2d1x126_s = i_unnamed_conv2d1x125_c;
    always @(i_umax_conv2d1x126_s or c_i32_177_q or redist3_bgTrunc_i_mul_conv2d1x116_sel_x_b_2_q)
    begin
        unique case (i_umax_conv2d1x126_s)
            1'b0 : i_umax_conv2d1x126_q = c_i32_177_q;
            1'b1 : i_umax_conv2d1x126_q = redist3_bgTrunc_i_mul_conv2d1x116_sel_x_b_2_q;
            default : i_umax_conv2d1x126_q = 32'b0;
        endcase
    end

    // i_unnamed_conv2d1x127(ADD,91)@7
    assign i_unnamed_conv2d1x127_a = {1'b0, i_umax_conv2d1x126_q};
    assign i_unnamed_conv2d1x127_b = {1'b0, c_i32_178_q};
    assign i_unnamed_conv2d1x127_o = $unsigned(i_unnamed_conv2d1x127_a) + $unsigned(i_unnamed_conv2d1x127_b);
    assign i_unnamed_conv2d1x127_q = i_unnamed_conv2d1x127_o[32:0];

    // bgTrunc_i_unnamed_conv2d1x127_sel_x(BITSELECT,115)@7
    assign bgTrunc_i_unnamed_conv2d1x127_sel_x_b = i_unnamed_conv2d1x127_q[31:0];

    // i_unnamed_conv2d1x128_sel_x(BITSELECT,140)@7
    assign i_unnamed_conv2d1x128_sel_x_b = {1'b0, bgTrunc_i_unnamed_conv2d1x127_sel_x_b[31:0]};

    // i_unnamed_conv2d1x128_vt_select_31(BITSELECT,95)@7
    assign i_unnamed_conv2d1x128_vt_select_31_b = i_unnamed_conv2d1x128_sel_x_b[31:0];

    // i_unnamed_conv2d1x128_vt_join(BITJOIN,94)@7
    assign i_unnamed_conv2d1x128_vt_join_q = {GND_q, i_unnamed_conv2d1x128_vt_select_31_b};

    // i_unnamed_conv2d1x129(ADD,96)@7
    assign i_unnamed_conv2d1x129_a = {1'b0, i_unnamed_conv2d1x128_vt_join_q};
    assign i_unnamed_conv2d1x129_b = {1'b0, c_i33_179_q};
    assign i_unnamed_conv2d1x129_o = $unsigned(i_unnamed_conv2d1x129_a) + $unsigned(i_unnamed_conv2d1x129_b);
    assign i_unnamed_conv2d1x129_q = i_unnamed_conv2d1x129_o[33:0];

    // bgTrunc_i_unnamed_conv2d1x129_sel_x(BITSELECT,116)@7
    assign bgTrunc_i_unnamed_conv2d1x129_sel_x_b = i_unnamed_conv2d1x129_q[32:0];

    // i_cmp248_conv2d1x117(LOGICAL,42)@7
    assign i_cmp248_conv2d1x117_q = $unsigned(redist3_bgTrunc_i_mul_conv2d1x116_sel_x_b_2_q != c_i32_076_q ? 1'b1 : 1'b0);

    // valid_fanout_reg8(REG,151)@6 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg8_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg8_q <= $unsigned(redist1_sync_together102_aunroll_x_in_i_valid_5_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i1_cmp5212_conv2d1x120(BLACKBOX,59)@7
    conv2d1x1_i_llvm_fpga_ffwd_dest_i1_cmp5212_0 thei_llvm_fpga_ffwd_dest_i1_cmp5212_conv2d1x120 (
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg8_q),
        .out_dest_data_out_0_0(i_llvm_fpga_ffwd_dest_i1_cmp5212_conv2d1x120_out_dest_data_out_0_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_conv2d1x121(LOGICAL,87)@7
    assign i_unnamed_conv2d1x121_q = i_llvm_fpga_ffwd_dest_i1_cmp5212_conv2d1x120_out_dest_data_out_0_0 & i_cmp248_conv2d1x117_q;

    // i_unnamed_conv2d1x124(LOGICAL,89)@7
    assign i_unnamed_conv2d1x124_q = i_unnamed_conv2d1x121_q ^ VCC_q;

    // valid_fanout_reg9(REG,152)@6 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg9_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg9_q <= $unsigned(redist1_sync_together102_aunroll_x_in_i_valid_5_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i1_cmp64517_conv2d1x122(BLACKBOX,61)@7
    conv2d1x1_i_llvm_fpga_ffwd_dest_i1_cmp64517_0 thei_llvm_fpga_ffwd_dest_i1_cmp64517_conv2d1x122 (
        .in_intel_reserved_ffwd_2_0(in_intel_reserved_ffwd_2_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg9_q),
        .out_dest_data_out_2_0(i_llvm_fpga_ffwd_dest_i1_cmp64517_conv2d1x122_out_dest_data_out_2_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_conv2d1x123(LOGICAL,88)@7
    assign i_unnamed_conv2d1x123_q = i_unnamed_conv2d1x121_q & i_llvm_fpga_ffwd_dest_i1_cmp64517_conv2d1x122_out_dest_data_out_2_0;

    // redist3_bgTrunc_i_mul_conv2d1x116_sel_x_b_2(DELAY,193)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_bgTrunc_i_mul_conv2d1x116_sel_x_b_2_q <= '0;
        end
        else
        begin
            redist3_bgTrunc_i_mul_conv2d1x116_sel_x_b_2_q <= $unsigned(redist2_bgTrunc_i_mul_conv2d1x116_sel_x_b_1_q);
        end
    end

    // valid_fanout_reg5(REG,148)@6 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg5_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg5_q <= $unsigned(redist1_sync_together102_aunroll_x_in_i_valid_5_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i1_cmp529_conv2d1x112(BLACKBOX,60)@7
    conv2d1x1_i_llvm_fpga_ffwd_dest_i1_cmp529_0 thei_llvm_fpga_ffwd_dest_i1_cmp529_conv2d1x112 (
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_dest_data_out_0_0(i_llvm_fpga_ffwd_dest_i1_cmp529_conv2d1x112_out_dest_data_out_0_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_conv2d1x113(LOGICAL,86)@7
    assign i_unnamed_conv2d1x113_q = i_llvm_fpga_ffwd_dest_i1_cmp529_conv2d1x112_out_dest_data_out_0_0 ^ VCC_q;

    // valid_fanout_reg3(REG,146)@6 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg3_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg3_q <= $unsigned(redist1_sync_together102_aunroll_x_in_i_valid_5_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1024v4f32_filter_weight_sync_buffer19_conv2d1x16(BLACKBOX,66)@7
    conv2d1x1_i_llvm_fpga_ffwd_dest_p1024v4f0000ight_sync_buffer19_0 thei_llvm_fpga_ffwd_dest_p1024v4f32_filter_weight_sync_buffer19_conv2d1x16 (
        .in_intel_reserved_ffwd_5_0(in_intel_reserved_ffwd_5_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_dest_data_out_5_0(i_llvm_fpga_ffwd_dest_p1024v4f32_filter_weight_sync_buffer19_conv2d1x16_out_dest_data_out_5_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg4(REG,147)@6 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg4_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg4_q <= $unsigned(redist1_sync_together102_aunroll_x_in_i_valid_5_q);
        end
    end

    // valid_fanout_reg15(REG,158)@6 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg15_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg15_q <= $unsigned(redist1_sync_together102_aunroll_x_in_i_valid_5_q);
        end
    end

    // valid_fanout_reg14(REG,157)@6 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg14_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg14_q <= $unsigned(redist1_sync_together102_aunroll_x_in_i_valid_5_q);
        end
    end

    // i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer1_conv2d1x146(BLACKBOX,77)@0
    // in in_i_dependence@7
    // in in_valid_in@7
    // out out_buffer_out@7
    // out out_valid_out@7
    conv2d1x1_i_llvm_fpga_sync_buffer_i32_in0000nnels_sync_buffer1_0 thei_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer1_conv2d1x146 (
        .in_buffer_in(in_input_channels),
        .in_i_dependence(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg14_q),
        .out_buffer_out(i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer1_conv2d1x146_out_buffer_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_idx_ext_conv2d1x147_sel_x(BITSELECT,138)@7
    assign i_idx_ext_conv2d1x147_sel_x_b = $unsigned({{32{i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer1_conv2d1x146_out_buffer_out[31]}}, i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer1_conv2d1x146_out_buffer_out[31:0]});

    // i_add_ptr_conv2d1x10_narrow_x(BITSELECT,127)@7
    assign i_add_ptr_conv2d1x10_narrow_x_b = i_idx_ext_conv2d1x147_sel_x_b[59:0];

    // i_add_ptr_conv2d1x10_c_i4_01_x(CONSTANT,126)
    assign i_add_ptr_conv2d1x10_c_i4_01_x_q = $unsigned(4'b0000);

    // i_add_ptr_conv2d1x10_shift_join_x(BITJOIN,128)@7
    assign i_add_ptr_conv2d1x10_shift_join_x_q = {i_add_ptr_conv2d1x10_narrow_x_b, i_add_ptr_conv2d1x10_c_i4_01_x_q};

    // i_add_ptr_conv2d1x10_add_x(ADD,125)@7
    assign i_add_ptr_conv2d1x10_add_x_a = {1'b0, i_filter_weight_addr_053_replace_phi_conv2d1x18_q};
    assign i_add_ptr_conv2d1x10_add_x_b = {1'b0, i_add_ptr_conv2d1x10_shift_join_x_q};
    assign i_add_ptr_conv2d1x10_add_x_o = $unsigned(i_add_ptr_conv2d1x10_add_x_a) + $unsigned(i_add_ptr_conv2d1x10_add_x_b);
    assign i_add_ptr_conv2d1x10_add_x_q = i_add_ptr_conv2d1x10_add_x_o[64:0];

    // i_add_ptr_conv2d1x10_dupName_0_trunc_sel_x(BITSELECT,130)@7
    assign i_add_ptr_conv2d1x10_dupName_0_trunc_sel_x_b = i_add_ptr_conv2d1x10_add_x_q[63:0];

    // i_llvm_fpga_push_p1024v4f32_filter_weight_addr_053_push10_conv2d1x149(BLACKBOX,76)@7
    // out out_feedback_out_10@20000000
    // out out_feedback_valid_out_10@20000000
    conv2d1x1_i_llvm_fpga_push_p1024v4f32_fi0000ht_addr_053_push10_0 thei_llvm_fpga_push_p1024v4f32_filter_weight_addr_053_push10_conv2d1x149 (
        .in_data_in(i_add_ptr_conv2d1x10_dupName_0_trunc_sel_x_b),
        .in_feedback_stall_in_10(i_llvm_fpga_pop_p1024v4f32_filter_weight_addr_053_pop10_conv2d1x17_out_feedback_stall_out_10),
        .in_stall_in(GND_q),
        .in_unnamed_conv2d1x117(redist4_i_unnamed_conv2d1x137_q_6_q),
        .in_valid_in(valid_fanout_reg15_q),
        .out_data_out(),
        .out_feedback_out_10(i_llvm_fpga_push_p1024v4f32_filter_weight_addr_053_push10_conv2d1x149_out_feedback_out_10),
        .out_feedback_valid_out_10(i_llvm_fpga_push_p1024v4f32_filter_weight_addr_053_push10_conv2d1x149_out_feedback_valid_out_10),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_4_x_float_addrspace_1024_undef74(CONSTANT,7)
    assign c_4_x_float_addrspace_1024_undef74_q = $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);

    // i_llvm_fpga_pop_p1024v4f32_filter_weight_addr_053_pop10_conv2d1x17(BLACKBOX,71)@7
    // out out_feedback_stall_out_10@20000000
    conv2d1x1_i_llvm_fpga_pop_p1024v4f32_fil0000ght_addr_053_pop10_0 thei_llvm_fpga_pop_p1024v4f32_filter_weight_addr_053_pop10_conv2d1x17 (
        .in_data_in(c_4_x_float_addrspace_1024_undef74_q),
        .in_dir(redist0_sync_together102_aunroll_x_in_c0_eni1_1_tpl_6_q),
        .in_feedback_in_10(i_llvm_fpga_push_p1024v4f32_filter_weight_addr_053_push10_conv2d1x149_out_feedback_out_10),
        .in_feedback_valid_in_10(i_llvm_fpga_push_p1024v4f32_filter_weight_addr_053_push10_conv2d1x149_out_feedback_valid_out_10),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_data_out(i_llvm_fpga_pop_p1024v4f32_filter_weight_addr_053_pop10_conv2d1x17_out_data_out),
        .out_feedback_stall_out_10(i_llvm_fpga_pop_p1024v4f32_filter_weight_addr_053_pop10_conv2d1x17_out_feedback_stall_out_10),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_filter_weight_addr_053_replace_phi_conv2d1x18(MUX,44)@7
    assign i_filter_weight_addr_053_replace_phi_conv2d1x18_s = redist0_sync_together102_aunroll_x_in_c0_eni1_1_tpl_6_q;
    always @(i_filter_weight_addr_053_replace_phi_conv2d1x18_s or i_llvm_fpga_pop_p1024v4f32_filter_weight_addr_053_pop10_conv2d1x17_out_data_out or i_llvm_fpga_ffwd_dest_p1024v4f32_filter_weight_sync_buffer19_conv2d1x16_out_dest_data_out_5_0)
    begin
        unique case (i_filter_weight_addr_053_replace_phi_conv2d1x18_s)
            1'b0 : i_filter_weight_addr_053_replace_phi_conv2d1x18_q = i_llvm_fpga_pop_p1024v4f32_filter_weight_addr_053_pop10_conv2d1x17_out_data_out;
            1'b1 : i_filter_weight_addr_053_replace_phi_conv2d1x18_q = i_llvm_fpga_ffwd_dest_p1024v4f32_filter_weight_sync_buffer19_conv2d1x16_out_dest_data_out_5_0;
            default : i_filter_weight_addr_053_replace_phi_conv2d1x18_q = 64'b0;
        endcase
    end

    // valid_fanout_reg1(REG,144)@6 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg1_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg1_q <= $unsigned(redist1_sync_together102_aunroll_x_in_i_valid_5_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1024f32_output_im_sync_buffer20_conv2d1x13(BLACKBOX,65)@7
    conv2d1x1_i_llvm_fpga_ffwd_dest_p1024f320000t_im_sync_buffer20_0 thei_llvm_fpga_ffwd_dest_p1024f32_output_im_sync_buffer20_conv2d1x13 (
        .in_intel_reserved_ffwd_6_0(in_intel_reserved_ffwd_6_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_dest_data_out_6_0(i_llvm_fpga_ffwd_dest_p1024f32_output_im_sync_buffer20_conv2d1x13_out_dest_data_out_6_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg2(REG,145)@6 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg2_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg2_q <= $unsigned(redist1_sync_together102_aunroll_x_in_i_valid_5_q);
        end
    end

    // valid_fanout_reg13(REG,156)@6 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg13_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg13_q <= $unsigned(redist1_sync_together102_aunroll_x_in_i_valid_5_q);
        end
    end

    // i_idx_ext58_conv2d1x119_sel_x(BITSELECT,137)@7
    assign i_idx_ext58_conv2d1x119_sel_x_b = {32'b00000000000000000000000000000000, redist3_bgTrunc_i_mul_conv2d1x116_sel_x_b_2_q[31:0]};

    // i_idx_ext58_conv2d1x119_vt_select_31(BITSELECT,50)@7
    assign i_idx_ext58_conv2d1x119_vt_select_31_b = i_idx_ext58_conv2d1x119_sel_x_b[31:0];

    // i_idx_ext58_conv2d1x119_vt_join(BITJOIN,49)@7
    assign i_idx_ext58_conv2d1x119_vt_join_q = {c_i32_076_q, i_idx_ext58_conv2d1x119_vt_select_31_b};

    // i_add_ptr59_conv2d1x10_narrow_x(BITSELECT,121)@7
    assign i_add_ptr59_conv2d1x10_narrow_x_b = i_idx_ext58_conv2d1x119_vt_join_q[61:0];

    // i_add_ptr59_conv2d1x10_shift_join_x(BITJOIN,122)@7
    assign i_add_ptr59_conv2d1x10_shift_join_x_q = {i_add_ptr59_conv2d1x10_narrow_x_b, i_arrayidx1_conv2d1x133_vt_const_1_q};

    // i_add_ptr59_conv2d1x10_add_x(ADD,119)@7
    assign i_add_ptr59_conv2d1x10_add_x_a = {1'b0, i_output_im_addr_054_replace_phi_conv2d1x15_q};
    assign i_add_ptr59_conv2d1x10_add_x_b = {1'b0, i_add_ptr59_conv2d1x10_shift_join_x_q};
    assign i_add_ptr59_conv2d1x10_add_x_o = $unsigned(i_add_ptr59_conv2d1x10_add_x_a) + $unsigned(i_add_ptr59_conv2d1x10_add_x_b);
    assign i_add_ptr59_conv2d1x10_add_x_q = i_add_ptr59_conv2d1x10_add_x_o[64:0];

    // i_add_ptr59_conv2d1x10_dupName_0_trunc_sel_x(BITSELECT,124)@7
    assign i_add_ptr59_conv2d1x10_dupName_0_trunc_sel_x_b = i_add_ptr59_conv2d1x10_add_x_q[63:0];

    // i_llvm_fpga_push_p1024f32_output_im_addr_054_push9_conv2d1x145(BLACKBOX,75)@7
    // out out_feedback_out_9@20000000
    // out out_feedback_valid_out_9@20000000
    conv2d1x1_i_llvm_fpga_push_p1024f32_output_im_addr_054_push9_0 thei_llvm_fpga_push_p1024f32_output_im_addr_054_push9_conv2d1x145 (
        .in_data_in(i_add_ptr59_conv2d1x10_dupName_0_trunc_sel_x_b),
        .in_feedback_stall_in_9(i_llvm_fpga_pop_p1024f32_output_im_addr_054_pop9_conv2d1x14_out_feedback_stall_out_9),
        .in_stall_in(GND_q),
        .in_unnamed_conv2d1x117(redist4_i_unnamed_conv2d1x137_q_6_q),
        .in_valid_in(valid_fanout_reg13_q),
        .out_data_out(),
        .out_feedback_out_9(i_llvm_fpga_push_p1024f32_output_im_addr_054_push9_conv2d1x145_out_feedback_out_9),
        .out_feedback_valid_out_9(i_llvm_fpga_push_p1024f32_output_im_addr_054_push9_conv2d1x145_out_feedback_valid_out_9),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_p1024f32_output_im_addr_054_pop9_conv2d1x14(BLACKBOX,70)@7
    // out out_feedback_stall_out_9@20000000
    conv2d1x1_i_llvm_fpga_pop_p1024f32_output_im_addr_054_pop9_0 thei_llvm_fpga_pop_p1024f32_output_im_addr_054_pop9_conv2d1x14 (
        .in_data_in(c_4_x_float_addrspace_1024_undef74_q),
        .in_dir(redist0_sync_together102_aunroll_x_in_c0_eni1_1_tpl_6_q),
        .in_feedback_in_9(i_llvm_fpga_push_p1024f32_output_im_addr_054_push9_conv2d1x145_out_feedback_out_9),
        .in_feedback_valid_in_9(i_llvm_fpga_push_p1024f32_output_im_addr_054_push9_conv2d1x145_out_feedback_valid_out_9),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(i_llvm_fpga_pop_p1024f32_output_im_addr_054_pop9_conv2d1x14_out_data_out),
        .out_feedback_stall_out_9(i_llvm_fpga_pop_p1024f32_output_im_addr_054_pop9_conv2d1x14_out_feedback_stall_out_9),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_output_im_addr_054_replace_phi_conv2d1x15(MUX,84)@7
    assign i_output_im_addr_054_replace_phi_conv2d1x15_s = redist0_sync_together102_aunroll_x_in_c0_eni1_1_tpl_6_q;
    always @(i_output_im_addr_054_replace_phi_conv2d1x15_s or i_llvm_fpga_pop_p1024f32_output_im_addr_054_pop9_conv2d1x14_out_data_out or i_llvm_fpga_ffwd_dest_p1024f32_output_im_sync_buffer20_conv2d1x13_out_dest_data_out_6_0)
    begin
        unique case (i_output_im_addr_054_replace_phi_conv2d1x15_s)
            1'b0 : i_output_im_addr_054_replace_phi_conv2d1x15_q = i_llvm_fpga_pop_p1024f32_output_im_addr_054_pop9_conv2d1x14_out_data_out;
            1'b1 : i_output_im_addr_054_replace_phi_conv2d1x15_q = i_llvm_fpga_ffwd_dest_p1024f32_output_im_sync_buffer20_conv2d1x13_out_dest_data_out_6_0;
            default : i_output_im_addr_054_replace_phi_conv2d1x15_q = 64'b0;
        endcase
    end

    // sync_out_aunroll_x(GPOUT,141)@7
    assign out_c0_exi10_0_tpl = GND_q;
    assign out_c0_exi10_1_tpl = i_output_im_addr_054_replace_phi_conv2d1x15_q;
    assign out_c0_exi10_2_tpl = i_filter_weight_addr_053_replace_phi_conv2d1x18_q;
    assign out_c0_exi10_3_tpl = i_unnamed_conv2d1x113_q;
    assign out_c0_exi10_4_tpl = redist3_bgTrunc_i_mul_conv2d1x116_sel_x_b_2_q;
    assign out_c0_exi10_5_tpl = i_unnamed_conv2d1x123_q;
    assign out_c0_exi10_6_tpl = i_unnamed_conv2d1x124_q;
    assign out_c0_exi10_7_tpl = bgTrunc_i_unnamed_conv2d1x129_sel_x_b;
    assign out_c0_exi10_8_tpl = i_arrayidx1_conv2d1x133_vt_join_q;
    assign out_c0_exi10_9_tpl = redist4_i_unnamed_conv2d1x137_q_6_q;
    assign out_c0_exi10_10_tpl = i_notcmp30_conv2d1x138_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_conv2d1x18 = GND_q;

endmodule
