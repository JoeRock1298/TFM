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

// SystemVerilog created from conv2d1x1_i_sfc_logic_s_c0_in_entry_s_c0_enter_conv2d1x10
// SystemVerilog created on Wed May 24 18:10:55 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2d1x1_i_sfc_logic_s_c0_in_entry_s_c0_enter_conv2d1x10 (
    input wire [63:0] in_filter_bias,
    input wire [63:0] in_filter_weight,
    input wire [31:0] in_input_channels,
    input wire [31:0] in_input_size,
    input wire [63:0] in_output_im,
    output wire [0:0] out_c0_exi9_0_tpl,
    output wire [63:0] out_c0_exi9_1_tpl,
    output wire [63:0] out_c0_exi9_2_tpl,
    output wire [63:0] out_c0_exi9_3_tpl,
    output wire [31:0] out_c0_exi9_4_tpl,
    output wire [63:0] out_c0_exi9_5_tpl,
    output wire [0:0] out_c0_exi9_6_tpl,
    output wire [0:0] out_c0_exi9_7_tpl,
    output wire [0:0] out_c0_exi9_8_tpl,
    output wire [0:0] out_c0_exi9_9_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_conv2d1x11,
    input wire [0:0] in_c0_eni2_0_tpl,
    input wire [31:0] in_c0_eni2_1_tpl,
    input wire [63:0] in_c0_eni2_2_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [3:0] i_add_ptr1_conv2d1x19_vt_const_3_q;
    wire [63:0] i_add_ptr1_conv2d1x19_vt_join_q;
    wire [59:0] i_add_ptr1_conv2d1x19_vt_select_63_b;
    wire [1:0] i_add_ptr63_conv2d1x118_vt_const_1_q;
    wire [63:0] i_add_ptr63_conv2d1x118_vt_join_q;
    wire [61:0] i_add_ptr63_conv2d1x118_vt_select_63_b;
    wire [63:0] i_arrayidx2_conv2d1x112_vt_join_q;
    wire [61:0] i_arrayidx2_conv2d1x112_vt_select_63_b;
    wire [33:0] i_cmp1064_conv2d1x123_a;
    wire [33:0] i_cmp1064_conv2d1x123_b;
    logic [33:0] i_cmp1064_conv2d1x123_o;
    wire [0:0] i_cmp1064_conv2d1x123_c;
    wire [33:0] i_cmp69_conv2d1x120_a;
    wire [33:0] i_cmp69_conv2d1x120_b;
    logic [33:0] i_cmp69_conv2d1x120_o;
    wire [0:0] i_cmp69_conv2d1x120_c;
    wire [31:0] i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer1_conv2d1x122_out_buffer_out;
    wire [31:0] i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer_conv2d1x15_out_buffer_out;
    wire [31:0] i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer3_conv2d1x119_out_buffer_out;
    wire [31:0] i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer_conv2d1x113_out_buffer_out;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024f32_filter_bias_sync_buffer_conv2d1x111_out_buffer_out;
    wire [9:0] i_llvm_fpga_sync_buffer_p1024f32_filter_bias_sync_buffer_conv2d1x111_vt_const_9_q;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024f32_filter_bias_sync_buffer_conv2d1x111_vt_join_q;
    wire [53:0] i_llvm_fpga_sync_buffer_p1024f32_filter_bias_sync_buffer_conv2d1x111_vt_select_63_b;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_conv2d1x117_out_buffer_out;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_conv2d1x117_vt_join_q;
    wire [53:0] i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_conv2d1x117_vt_select_63_b;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024v4f32_filter_weight_sync_buffer_conv2d1x18_out_buffer_out;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024v4f32_filter_weight_sync_buffer_conv2d1x18_vt_join_q;
    wire [53:0] i_llvm_fpga_sync_buffer_p1024v4f32_filter_weight_sync_buffer_conv2d1x18_vt_select_63_b;
    wire [0:0] i_unnamed_conv2d1x125_q;
    wire [0:0] i_unnamed_conv2d1x126_q;
    wire [0:0] i_unnamed_conv2d1x127_q;
    wire [54:0] i_unnamed_conv2d1x13_vt_const_63_q;
    wire [63:0] i_unnamed_conv2d1x13_vt_join_q;
    wire [8:0] i_unnamed_conv2d1x13_vt_select_8_b;
    wire [63:0] bgTrunc_i_mul3_conv2d1x114_sel_x_in;
    wire [31:0] bgTrunc_i_mul3_conv2d1x114_sel_x_b;
    wire [63:0] bgTrunc_i_mul4_conv2d1x115_sel_x_in;
    wire [31:0] bgTrunc_i_mul4_conv2d1x115_sel_x_b;
    wire [63:0] bgTrunc_i_mul_conv2d1x16_sel_x_in;
    wire [31:0] bgTrunc_i_mul_conv2d1x16_sel_x_b;
    wire [31:0] c_i32_036_recast_x_q;
    wire [64:0] i_add_ptr1_conv2d1x10_add_x_a;
    wire [64:0] i_add_ptr1_conv2d1x10_add_x_b;
    logic [64:0] i_add_ptr1_conv2d1x10_add_x_o;
    wire [64:0] i_add_ptr1_conv2d1x10_add_x_q;
    wire [59:0] i_add_ptr1_conv2d1x10_narrow_x_b;
    wire [63:0] i_add_ptr1_conv2d1x10_shift_join_x_q;
    wire [63:0] i_add_ptr1_conv2d1x10_dupName_0_trunc_sel_x_b;
    wire [64:0] i_add_ptr63_conv2d1x10_add_x_a;
    wire [64:0] i_add_ptr63_conv2d1x10_add_x_b;
    logic [64:0] i_add_ptr63_conv2d1x10_add_x_o;
    wire [64:0] i_add_ptr63_conv2d1x10_add_x_q;
    wire [61:0] i_add_ptr63_conv2d1x10_narrow_x_b;
    wire [63:0] i_add_ptr63_conv2d1x10_shift_join_x_q;
    wire [63:0] i_add_ptr63_conv2d1x10_dupName_0_trunc_sel_x_b;
    wire [64:0] i_arrayidx2_conv2d1x10_add_x_a;
    wire [64:0] i_arrayidx2_conv2d1x10_add_x_b;
    logic [64:0] i_arrayidx2_conv2d1x10_add_x_o;
    wire [64:0] i_arrayidx2_conv2d1x10_add_x_q;
    wire [61:0] i_arrayidx2_conv2d1x10_narrow_x_b;
    wire [63:0] i_arrayidx2_conv2d1x10_shift_join_x_q;
    wire [63:0] i_arrayidx2_conv2d1x10_dupName_0_trunc_sel_x_b;
    wire [31:0] i_conv_conv2d1x14_sel_x_b;
    wire [63:0] i_idx_ext5_conv2d1x116_sel_x_b;
    wire [63:0] i_idx_ext_conv2d1x17_sel_x_b;
    wire [63:0] i_idxprom_conv2d1x110_sel_x_b;
    wire [8:0] i_llid_masked_trunc_conv2d1x12_sel_x_b;
    wire [63:0] i_unnamed_conv2d1x13_sel_x_b;
    (* dont_merge *) reg [0:0] valid_fanout_reg0_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg1_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg2_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg3_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg4_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg5_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg6_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg7_q;
    wire [63:0] i_mul3_conv2d1x114_sums_join_0_q;
    wire [50:0] i_mul3_conv2d1x114_sums_align_1_q;
    wire [50:0] i_mul3_conv2d1x114_sums_align_1_qint;
    wire [64:0] i_mul3_conv2d1x114_sums_result_add_0_0_a;
    wire [64:0] i_mul3_conv2d1x114_sums_result_add_0_0_b;
    logic [64:0] i_mul3_conv2d1x114_sums_result_add_0_0_o;
    wire [64:0] i_mul3_conv2d1x114_sums_result_add_0_0_q;
    wire [13:0] i_mul4_conv2d1x115_bs2_b;
    wire [17:0] i_mul4_conv2d1x115_bs7_in;
    wire [17:0] i_mul4_conv2d1x115_bs7_b;
    wire [63:0] i_mul4_conv2d1x115_sums_join_0_q;
    wire [50:0] i_mul4_conv2d1x115_sums_align_1_q;
    wire [50:0] i_mul4_conv2d1x115_sums_align_1_qint;
    wire [64:0] i_mul4_conv2d1x115_sums_result_add_0_0_a;
    wire [64:0] i_mul4_conv2d1x115_sums_result_add_0_0_b;
    logic [64:0] i_mul4_conv2d1x115_sums_result_add_0_0_o;
    wire [64:0] i_mul4_conv2d1x115_sums_result_add_0_0_q;
    wire [63:0] i_mul_conv2d1x16_sums_join_0_q;
    wire [50:0] i_mul_conv2d1x16_sums_align_1_q;
    wire [50:0] i_mul_conv2d1x16_sums_align_1_qint;
    wire [64:0] i_mul_conv2d1x16_sums_result_add_0_0_a;
    wire [64:0] i_mul_conv2d1x16_sums_result_add_0_0_b;
    logic [64:0] i_mul_conv2d1x16_sums_result_add_0_0_o;
    wire [64:0] i_mul_conv2d1x16_sums_result_add_0_0_q;
    wire i_mul3_conv2d1x114_im0_cma_reset;
    wire [13:0] i_mul3_conv2d1x114_im0_cma_a0;
    wire [13:0] i_mul3_conv2d1x114_im0_cma_c0;
    wire [27:0] i_mul3_conv2d1x114_im0_cma_s0;
    wire [27:0] i_mul3_conv2d1x114_im0_cma_qq;
    wire [27:0] i_mul3_conv2d1x114_im0_cma_q;
    wire i_mul3_conv2d1x114_im0_cma_ena0;
    wire i_mul3_conv2d1x114_im0_cma_ena1;
    wire i_mul3_conv2d1x114_im0_cma_ena2;
    wire i_mul3_conv2d1x114_im8_cma_reset;
    wire [17:0] i_mul3_conv2d1x114_im8_cma_a0;
    wire [17:0] i_mul3_conv2d1x114_im8_cma_c0;
    wire [35:0] i_mul3_conv2d1x114_im8_cma_s0;
    wire [35:0] i_mul3_conv2d1x114_im8_cma_qq;
    wire [35:0] i_mul3_conv2d1x114_im8_cma_q;
    wire i_mul3_conv2d1x114_im8_cma_ena0;
    wire i_mul3_conv2d1x114_im8_cma_ena1;
    wire i_mul3_conv2d1x114_im8_cma_ena2;
    wire i_mul4_conv2d1x115_im0_cma_reset;
    wire [13:0] i_mul4_conv2d1x115_im0_cma_a0;
    wire [13:0] i_mul4_conv2d1x115_im0_cma_c0;
    wire [27:0] i_mul4_conv2d1x115_im0_cma_s0;
    wire [27:0] i_mul4_conv2d1x115_im0_cma_qq;
    wire [27:0] i_mul4_conv2d1x115_im0_cma_q;
    wire i_mul4_conv2d1x115_im0_cma_ena0;
    wire i_mul4_conv2d1x115_im0_cma_ena1;
    wire i_mul4_conv2d1x115_im0_cma_ena2;
    wire i_mul4_conv2d1x115_im8_cma_reset;
    wire [17:0] i_mul4_conv2d1x115_im8_cma_a0;
    wire [17:0] i_mul4_conv2d1x115_im8_cma_c0;
    wire [35:0] i_mul4_conv2d1x115_im8_cma_s0;
    wire [35:0] i_mul4_conv2d1x115_im8_cma_qq;
    wire [35:0] i_mul4_conv2d1x115_im8_cma_q;
    wire i_mul4_conv2d1x115_im8_cma_ena0;
    wire i_mul4_conv2d1x115_im8_cma_ena1;
    wire i_mul4_conv2d1x115_im8_cma_ena2;
    wire i_mul_conv2d1x16_im0_cma_reset;
    wire [13:0] i_mul_conv2d1x16_im0_cma_a0;
    wire [13:0] i_mul_conv2d1x16_im0_cma_c0;
    wire [27:0] i_mul_conv2d1x16_im0_cma_s0;
    wire [27:0] i_mul_conv2d1x16_im0_cma_qq;
    wire [27:0] i_mul_conv2d1x16_im0_cma_q;
    wire i_mul_conv2d1x16_im0_cma_ena0;
    wire i_mul_conv2d1x16_im0_cma_ena1;
    wire i_mul_conv2d1x16_im0_cma_ena2;
    wire i_mul_conv2d1x16_im8_cma_reset;
    wire [17:0] i_mul_conv2d1x16_im8_cma_a0;
    wire [17:0] i_mul_conv2d1x16_im8_cma_c0;
    wire [35:0] i_mul_conv2d1x16_im8_cma_s0;
    wire [35:0] i_mul_conv2d1x16_im8_cma_qq;
    wire [35:0] i_mul_conv2d1x16_im8_cma_q;
    wire i_mul_conv2d1x16_im8_cma_ena0;
    wire i_mul_conv2d1x16_im8_cma_ena1;
    wire i_mul_conv2d1x16_im8_cma_ena2;
    wire i_mul3_conv2d1x114_ma3_cma_reset;
    wire [13:0] i_mul3_conv2d1x114_ma3_cma_a0;
    wire [17:0] i_mul3_conv2d1x114_ma3_cma_c0;
    wire [13:0] i_mul3_conv2d1x114_ma3_cma_a1;
    wire [17:0] i_mul3_conv2d1x114_ma3_cma_c1;
    wire [32:0] i_mul3_conv2d1x114_ma3_cma_s0;
    wire [32:0] i_mul3_conv2d1x114_ma3_cma_qq;
    wire [32:0] i_mul3_conv2d1x114_ma3_cma_q;
    wire i_mul3_conv2d1x114_ma3_cma_ena0;
    wire i_mul3_conv2d1x114_ma3_cma_ena1;
    wire i_mul3_conv2d1x114_ma3_cma_ena2;
    wire i_mul4_conv2d1x115_ma3_cma_reset;
    wire [13:0] i_mul4_conv2d1x115_ma3_cma_a0;
    wire [17:0] i_mul4_conv2d1x115_ma3_cma_c0;
    wire [13:0] i_mul4_conv2d1x115_ma3_cma_a1;
    wire [17:0] i_mul4_conv2d1x115_ma3_cma_c1;
    wire [32:0] i_mul4_conv2d1x115_ma3_cma_s0;
    wire [32:0] i_mul4_conv2d1x115_ma3_cma_qq;
    wire [32:0] i_mul4_conv2d1x115_ma3_cma_q;
    wire i_mul4_conv2d1x115_ma3_cma_ena0;
    wire i_mul4_conv2d1x115_ma3_cma_ena1;
    wire i_mul4_conv2d1x115_ma3_cma_ena2;
    wire i_mul_conv2d1x16_ma3_cma_reset;
    wire [13:0] i_mul_conv2d1x16_ma3_cma_a0;
    wire [17:0] i_mul_conv2d1x16_ma3_cma_c0;
    wire [13:0] i_mul_conv2d1x16_ma3_cma_a1;
    wire [17:0] i_mul_conv2d1x16_ma3_cma_c1;
    wire [32:0] i_mul_conv2d1x16_ma3_cma_s0;
    wire [32:0] i_mul_conv2d1x16_ma3_cma_qq;
    wire [32:0] i_mul_conv2d1x16_ma3_cma_q;
    wire i_mul_conv2d1x16_ma3_cma_ena0;
    wire i_mul_conv2d1x16_ma3_cma_ena1;
    wire i_mul_conv2d1x16_ma3_cma_ena2;
    wire [13:0] i_mul_conv2d1x16_bs2_merged_bit_select_b;
    wire [17:0] i_mul_conv2d1x16_bs2_merged_bit_select_c;
    wire [13:0] i_mul3_conv2d1x114_bs1_merged_bit_select_b;
    wire [17:0] i_mul3_conv2d1x114_bs1_merged_bit_select_c;
    wire [13:0] i_mul4_conv2d1x115_bs1_merged_bit_select_b;
    wire [17:0] i_mul4_conv2d1x115_bs1_merged_bit_select_c;
    reg [0:0] redist0_sync_together45_aunroll_x_in_i_valid_3_q;
    reg [0:0] redist0_sync_together45_aunroll_x_in_i_valid_3_delay_0;
    reg [0:0] redist0_sync_together45_aunroll_x_in_i_valid_3_delay_1;
    reg [0:0] redist1_sync_together45_aunroll_x_in_i_valid_7_q;
    reg [0:0] redist1_sync_together45_aunroll_x_in_i_valid_7_delay_0;
    reg [0:0] redist1_sync_together45_aunroll_x_in_i_valid_7_delay_1;
    reg [0:0] redist1_sync_together45_aunroll_x_in_i_valid_7_delay_2;
    reg [31:0] redist4_bgTrunc_i_mul_conv2d1x16_sel_x_b_1_q;
    reg [31:0] redist5_bgTrunc_i_mul4_conv2d1x115_sel_x_b_1_q;
    wire redist2_i_conv_conv2d1x14_sel_x_b_4_mem_reset0;
    wire [31:0] redist2_i_conv_conv2d1x14_sel_x_b_4_mem_ia;
    wire [1:0] redist2_i_conv_conv2d1x14_sel_x_b_4_mem_aa;
    wire [1:0] redist2_i_conv_conv2d1x14_sel_x_b_4_mem_ab;
    wire [31:0] redist2_i_conv_conv2d1x14_sel_x_b_4_mem_iq;
    wire [31:0] redist2_i_conv_conv2d1x14_sel_x_b_4_mem_q;
    wire [1:0] redist2_i_conv_conv2d1x14_sel_x_b_4_rdcnt_q;
    (* preserve *) reg [1:0] redist2_i_conv_conv2d1x14_sel_x_b_4_rdcnt_i;
    (* preserve *) reg redist2_i_conv_conv2d1x14_sel_x_b_4_rdcnt_eq;
    reg [1:0] redist2_i_conv_conv2d1x14_sel_x_b_4_wraddr_q;
    wire [1:0] redist2_i_conv_conv2d1x14_sel_x_b_4_mem_last_q;
    wire [0:0] redist2_i_conv_conv2d1x14_sel_x_b_4_cmp_q;
    (* dont_merge *) reg [0:0] redist2_i_conv_conv2d1x14_sel_x_b_4_cmpReg_q;
    wire [0:0] redist2_i_conv_conv2d1x14_sel_x_b_4_notEnable_q;
    wire [0:0] redist2_i_conv_conv2d1x14_sel_x_b_4_nor_q;
    (* dont_merge *) reg [0:0] redist2_i_conv_conv2d1x14_sel_x_b_4_sticky_ena_q;
    wire [0:0] redist2_i_conv_conv2d1x14_sel_x_b_4_enaAnd_q;
    reg [31:0] redist3_i_conv_conv2d1x14_sel_x_b_8_outputreg0_q;
    wire redist3_i_conv_conv2d1x14_sel_x_b_8_mem_reset0;
    wire [31:0] redist3_i_conv_conv2d1x14_sel_x_b_8_mem_ia;
    wire [0:0] redist3_i_conv_conv2d1x14_sel_x_b_8_mem_aa;
    wire [0:0] redist3_i_conv_conv2d1x14_sel_x_b_8_mem_ab;
    wire [31:0] redist3_i_conv_conv2d1x14_sel_x_b_8_mem_iq;
    wire [31:0] redist3_i_conv_conv2d1x14_sel_x_b_8_mem_q;
    wire [0:0] redist3_i_conv_conv2d1x14_sel_x_b_8_rdcnt_q;
    (* preserve *) reg [0:0] redist3_i_conv_conv2d1x14_sel_x_b_8_rdcnt_i;
    reg [0:0] redist3_i_conv_conv2d1x14_sel_x_b_8_wraddr_q;
    (* dont_merge *) reg [0:0] redist3_i_conv_conv2d1x14_sel_x_b_8_cmpReg_q;
    wire [0:0] redist3_i_conv_conv2d1x14_sel_x_b_8_notEnable_q;
    wire [0:0] redist3_i_conv_conv2d1x14_sel_x_b_8_nor_q;
    (* dont_merge *) reg [0:0] redist3_i_conv_conv2d1x14_sel_x_b_8_sticky_ena_q;
    wire [0:0] redist3_i_conv_conv2d1x14_sel_x_b_8_enaAnd_q;
    reg [31:0] redist6_bgTrunc_i_mul3_conv2d1x114_sel_x_b_4_inputreg0_q;
    wire redist6_bgTrunc_i_mul3_conv2d1x114_sel_x_b_4_mem_reset0;
    wire [31:0] redist6_bgTrunc_i_mul3_conv2d1x114_sel_x_b_4_mem_ia;
    wire [0:0] redist6_bgTrunc_i_mul3_conv2d1x114_sel_x_b_4_mem_aa;
    wire [0:0] redist6_bgTrunc_i_mul3_conv2d1x114_sel_x_b_4_mem_ab;
    wire [31:0] redist6_bgTrunc_i_mul3_conv2d1x114_sel_x_b_4_mem_iq;
    wire [31:0] redist6_bgTrunc_i_mul3_conv2d1x114_sel_x_b_4_mem_q;
    wire [0:0] redist6_bgTrunc_i_mul3_conv2d1x114_sel_x_b_4_rdcnt_q;
    (* preserve *) reg [0:0] redist6_bgTrunc_i_mul3_conv2d1x114_sel_x_b_4_rdcnt_i;
    reg [0:0] redist6_bgTrunc_i_mul3_conv2d1x114_sel_x_b_4_wraddr_q;
    (* dont_merge *) reg [0:0] redist6_bgTrunc_i_mul3_conv2d1x114_sel_x_b_4_cmpReg_q;
    wire [0:0] redist6_bgTrunc_i_mul3_conv2d1x114_sel_x_b_4_notEnable_q;
    wire [0:0] redist6_bgTrunc_i_mul3_conv2d1x114_sel_x_b_4_nor_q;
    (* dont_merge *) reg [0:0] redist6_bgTrunc_i_mul3_conv2d1x114_sel_x_b_4_sticky_ena_q;
    wire [0:0] redist6_bgTrunc_i_mul3_conv2d1x114_sel_x_b_4_enaAnd_q;
    wire redist7_i_unnamed_conv2d1x13_vt_select_8_b_8_mem_reset0;
    wire [8:0] redist7_i_unnamed_conv2d1x13_vt_select_8_b_8_mem_ia;
    wire [2:0] redist7_i_unnamed_conv2d1x13_vt_select_8_b_8_mem_aa;
    wire [2:0] redist7_i_unnamed_conv2d1x13_vt_select_8_b_8_mem_ab;
    wire [8:0] redist7_i_unnamed_conv2d1x13_vt_select_8_b_8_mem_iq;
    wire [8:0] redist7_i_unnamed_conv2d1x13_vt_select_8_b_8_mem_q;
    wire [2:0] redist7_i_unnamed_conv2d1x13_vt_select_8_b_8_rdcnt_q;
    (* preserve *) reg [2:0] redist7_i_unnamed_conv2d1x13_vt_select_8_b_8_rdcnt_i;
    (* preserve *) reg redist7_i_unnamed_conv2d1x13_vt_select_8_b_8_rdcnt_eq;
    reg [2:0] redist7_i_unnamed_conv2d1x13_vt_select_8_b_8_wraddr_q;
    wire [3:0] redist7_i_unnamed_conv2d1x13_vt_select_8_b_8_mem_last_q;
    wire [3:0] redist7_i_unnamed_conv2d1x13_vt_select_8_b_8_cmp_b;
    wire [0:0] redist7_i_unnamed_conv2d1x13_vt_select_8_b_8_cmp_q;
    (* dont_merge *) reg [0:0] redist7_i_unnamed_conv2d1x13_vt_select_8_b_8_cmpReg_q;
    wire [0:0] redist7_i_unnamed_conv2d1x13_vt_select_8_b_8_notEnable_q;
    wire [0:0] redist7_i_unnamed_conv2d1x13_vt_select_8_b_8_nor_q;
    (* dont_merge *) reg [0:0] redist7_i_unnamed_conv2d1x13_vt_select_8_b_8_sticky_ena_q;
    wire [0:0] redist7_i_unnamed_conv2d1x13_vt_select_8_b_8_enaAnd_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist0_sync_together45_aunroll_x_in_i_valid_3(DELAY,174)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_sync_together45_aunroll_x_in_i_valid_3_delay_0 <= '0;
            redist0_sync_together45_aunroll_x_in_i_valid_3_delay_1 <= '0;
            redist0_sync_together45_aunroll_x_in_i_valid_3_q <= '0;
        end
        else
        begin
            redist0_sync_together45_aunroll_x_in_i_valid_3_delay_0 <= $unsigned(in_i_valid);
            redist0_sync_together45_aunroll_x_in_i_valid_3_delay_1 <= redist0_sync_together45_aunroll_x_in_i_valid_3_delay_0;
            redist0_sync_together45_aunroll_x_in_i_valid_3_q <= redist0_sync_together45_aunroll_x_in_i_valid_3_delay_1;
        end
    end

    // redist1_sync_together45_aunroll_x_in_i_valid_7(DELAY,175)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together45_aunroll_x_in_i_valid_7_delay_0 <= '0;
            redist1_sync_together45_aunroll_x_in_i_valid_7_delay_1 <= '0;
            redist1_sync_together45_aunroll_x_in_i_valid_7_delay_2 <= '0;
            redist1_sync_together45_aunroll_x_in_i_valid_7_q <= '0;
        end
        else
        begin
            redist1_sync_together45_aunroll_x_in_i_valid_7_delay_0 <= $unsigned(redist0_sync_together45_aunroll_x_in_i_valid_3_q);
            redist1_sync_together45_aunroll_x_in_i_valid_7_delay_1 <= redist1_sync_together45_aunroll_x_in_i_valid_7_delay_0;
            redist1_sync_together45_aunroll_x_in_i_valid_7_delay_2 <= redist1_sync_together45_aunroll_x_in_i_valid_7_delay_1;
            redist1_sync_together45_aunroll_x_in_i_valid_7_q <= redist1_sync_together45_aunroll_x_in_i_valid_7_delay_2;
        end
    end

    // valid_fanout_reg0(REG,100)@8 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist1_sync_together45_aunroll_x_in_i_valid_7_q);
        end
    end

    // i_unnamed_conv2d1x127(LOGICAL,53)@9
    assign i_unnamed_conv2d1x127_q = i_cmp69_conv2d1x120_c ^ VCC_q;

    // i_unnamed_conv2d1x126(LOGICAL,52)@9
    assign i_unnamed_conv2d1x126_q = i_unnamed_conv2d1x125_q ^ VCC_q;

    // valid_fanout_reg7(REG,107)@8 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg7_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg7_q <= $unsigned(redist1_sync_together45_aunroll_x_in_i_valid_7_q);
        end
    end

    // i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer1_conv2d1x122(BLACKBOX,32)@0
    // in in_i_dependence@9
    // in in_valid_in@9
    // out out_buffer_out@9
    // out out_valid_out@9
    conv2d1x1_i_llvm_fpga_sync_buffer_i32_in0000nnels_sync_buffer1_0 thei_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer1_conv2d1x122 (
        .in_buffer_in(in_input_channels),
        .in_i_dependence(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg7_q),
        .out_buffer_out(i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer1_conv2d1x122_out_buffer_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_036_recast_x(CONSTANT,70)
    assign c_i32_036_recast_x_q = $unsigned(32'b00000000000000000000000000000000);

    // i_cmp1064_conv2d1x123(COMPARE,22)@9
    assign i_cmp1064_conv2d1x123_a = $unsigned({{2{c_i32_036_recast_x_q[31]}}, c_i32_036_recast_x_q});
    assign i_cmp1064_conv2d1x123_b = $unsigned({{2{i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer1_conv2d1x122_out_buffer_out[31]}}, i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer1_conv2d1x122_out_buffer_out});
    assign i_cmp1064_conv2d1x123_o = $unsigned($signed(i_cmp1064_conv2d1x123_a) - $signed(i_cmp1064_conv2d1x123_b));
    assign i_cmp1064_conv2d1x123_c[0] = i_cmp1064_conv2d1x123_o[33];

    // i_unnamed_conv2d1x125(LOGICAL,51)@9
    assign i_unnamed_conv2d1x125_q = i_cmp69_conv2d1x120_c & i_cmp1064_conv2d1x123_c;

    // valid_fanout_reg6(REG,106)@8 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg6_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg6_q <= $unsigned(redist1_sync_together45_aunroll_x_in_i_valid_7_q);
        end
    end

    // i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer3_conv2d1x119(BLACKBOX,34)@0
    // in in_i_dependence@9
    // in in_valid_in@9
    // out out_buffer_out@9
    // out out_valid_out@9
    conv2d1x1_i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer3_0 thei_llvm_fpga_sync_buffer_i32_input_size_sync_buffer3_conv2d1x119 (
        .in_buffer_in(in_input_size),
        .in_i_dependence(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg6_q),
        .out_buffer_out(i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer3_conv2d1x119_out_buffer_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_cmp69_conv2d1x120(COMPARE,23)@9
    assign i_cmp69_conv2d1x120_a = $unsigned({{2{c_i32_036_recast_x_q[31]}}, c_i32_036_recast_x_q});
    assign i_cmp69_conv2d1x120_b = $unsigned({{2{i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer3_conv2d1x119_out_buffer_out[31]}}, i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer3_conv2d1x119_out_buffer_out});
    assign i_cmp69_conv2d1x120_o = $unsigned($signed(i_cmp69_conv2d1x120_a) - $signed(i_cmp69_conv2d1x120_b));
    assign i_cmp69_conv2d1x120_c[0] = i_cmp69_conv2d1x120_o[33];

    // redist2_i_conv_conv2d1x14_sel_x_b_4_notEnable(LOGICAL,188)
    assign redist2_i_conv_conv2d1x14_sel_x_b_4_notEnable_q = $unsigned(~ (VCC_q));

    // redist2_i_conv_conv2d1x14_sel_x_b_4_nor(LOGICAL,189)
    assign redist2_i_conv_conv2d1x14_sel_x_b_4_nor_q = ~ (redist2_i_conv_conv2d1x14_sel_x_b_4_notEnable_q | redist2_i_conv_conv2d1x14_sel_x_b_4_sticky_ena_q);

    // redist2_i_conv_conv2d1x14_sel_x_b_4_mem_last(CONSTANT,185)
    assign redist2_i_conv_conv2d1x14_sel_x_b_4_mem_last_q = $unsigned(2'b01);

    // redist2_i_conv_conv2d1x14_sel_x_b_4_cmp(LOGICAL,186)
    assign redist2_i_conv_conv2d1x14_sel_x_b_4_cmp_q = $unsigned(redist2_i_conv_conv2d1x14_sel_x_b_4_mem_last_q == redist2_i_conv_conv2d1x14_sel_x_b_4_rdcnt_q ? 1'b1 : 1'b0);

    // redist2_i_conv_conv2d1x14_sel_x_b_4_cmpReg(REG,187)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_i_conv_conv2d1x14_sel_x_b_4_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist2_i_conv_conv2d1x14_sel_x_b_4_cmpReg_q <= $unsigned(redist2_i_conv_conv2d1x14_sel_x_b_4_cmp_q);
        end
    end

    // redist2_i_conv_conv2d1x14_sel_x_b_4_sticky_ena(REG,190)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_i_conv_conv2d1x14_sel_x_b_4_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist2_i_conv_conv2d1x14_sel_x_b_4_nor_q == 1'b1)
        begin
            redist2_i_conv_conv2d1x14_sel_x_b_4_sticky_ena_q <= $unsigned(redist2_i_conv_conv2d1x14_sel_x_b_4_cmpReg_q);
        end
    end

    // redist2_i_conv_conv2d1x14_sel_x_b_4_enaAnd(LOGICAL,191)
    assign redist2_i_conv_conv2d1x14_sel_x_b_4_enaAnd_q = redist2_i_conv_conv2d1x14_sel_x_b_4_sticky_ena_q & VCC_q;

    // redist2_i_conv_conv2d1x14_sel_x_b_4_rdcnt(COUNTER,183)
    // low=0, high=2, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_i_conv_conv2d1x14_sel_x_b_4_rdcnt_i <= 2'd0;
            redist2_i_conv_conv2d1x14_sel_x_b_4_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist2_i_conv_conv2d1x14_sel_x_b_4_rdcnt_i == 2'd1)
            begin
                redist2_i_conv_conv2d1x14_sel_x_b_4_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist2_i_conv_conv2d1x14_sel_x_b_4_rdcnt_eq <= 1'b0;
            end
            if (redist2_i_conv_conv2d1x14_sel_x_b_4_rdcnt_eq == 1'b1)
            begin
                redist2_i_conv_conv2d1x14_sel_x_b_4_rdcnt_i <= $unsigned(redist2_i_conv_conv2d1x14_sel_x_b_4_rdcnt_i) + $unsigned(2'd2);
            end
            else
            begin
                redist2_i_conv_conv2d1x14_sel_x_b_4_rdcnt_i <= $unsigned(redist2_i_conv_conv2d1x14_sel_x_b_4_rdcnt_i) + $unsigned(2'd1);
            end
        end
    end
    assign redist2_i_conv_conv2d1x14_sel_x_b_4_rdcnt_q = redist2_i_conv_conv2d1x14_sel_x_b_4_rdcnt_i[1:0];

    // i_conv_conv2d1x14_sel_x(BITSELECT,92)@1
    assign i_conv_conv2d1x14_sel_x_b = in_c0_eni2_2_tpl[31:0];

    // redist2_i_conv_conv2d1x14_sel_x_b_4_wraddr(REG,184)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_i_conv_conv2d1x14_sel_x_b_4_wraddr_q <= $unsigned(2'b10);
        end
        else
        begin
            redist2_i_conv_conv2d1x14_sel_x_b_4_wraddr_q <= $unsigned(redist2_i_conv_conv2d1x14_sel_x_b_4_rdcnt_q);
        end
    end

    // redist2_i_conv_conv2d1x14_sel_x_b_4_mem(DUALMEM,182)
    assign redist2_i_conv_conv2d1x14_sel_x_b_4_mem_ia = $unsigned(i_conv_conv2d1x14_sel_x_b);
    assign redist2_i_conv_conv2d1x14_sel_x_b_4_mem_aa = redist2_i_conv_conv2d1x14_sel_x_b_4_wraddr_q;
    assign redist2_i_conv_conv2d1x14_sel_x_b_4_mem_ab = redist2_i_conv_conv2d1x14_sel_x_b_4_rdcnt_q;
    assign redist2_i_conv_conv2d1x14_sel_x_b_4_mem_reset0 = ~ (resetn);
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
    ) redist2_i_conv_conv2d1x14_sel_x_b_4_mem_dmem (
        .clocken1(redist2_i_conv_conv2d1x14_sel_x_b_4_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist2_i_conv_conv2d1x14_sel_x_b_4_mem_reset0),
        .clock1(clock),
        .address_a(redist2_i_conv_conv2d1x14_sel_x_b_4_mem_aa),
        .data_a(redist2_i_conv_conv2d1x14_sel_x_b_4_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist2_i_conv_conv2d1x14_sel_x_b_4_mem_ab),
        .q_b(redist2_i_conv_conv2d1x14_sel_x_b_4_mem_iq),
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
    assign redist2_i_conv_conv2d1x14_sel_x_b_4_mem_q = redist2_i_conv_conv2d1x14_sel_x_b_4_mem_iq[31:0];

    // i_mul4_conv2d1x115_bs2(BITSELECT,134)@5
    assign i_mul4_conv2d1x115_bs2_b = redist2_i_conv_conv2d1x14_sel_x_b_4_mem_q[31:18];

    // i_mul4_conv2d1x115_bs7(BITSELECT,139)@5
    assign i_mul4_conv2d1x115_bs7_in = redist2_i_conv_conv2d1x14_sel_x_b_4_mem_q[17:0];
    assign i_mul4_conv2d1x115_bs7_b = i_mul4_conv2d1x115_bs7_in[17:0];

    // valid_fanout_reg4(REG,104)@1 + 1
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

    // i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer_conv2d1x113(BLACKBOX,35)@0
    // in in_i_dependence@2
    // in in_valid_in@2
    // out out_buffer_out@2
    // out out_valid_out@2
    conv2d1x1_i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer_0 thei_llvm_fpga_sync_buffer_i32_input_size_sync_buffer_conv2d1x113 (
        .in_buffer_in(in_input_size),
        .in_i_dependence(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_buffer_out(i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer_conv2d1x113_out_buffer_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_mul3_conv2d1x114_bs1_merged_bit_select(BITSELECT,172)@2
    assign i_mul3_conv2d1x114_bs1_merged_bit_select_b = i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer_conv2d1x113_out_buffer_out[31:18];
    assign i_mul3_conv2d1x114_bs1_merged_bit_select_c = i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer_conv2d1x113_out_buffer_out[17:0];

    // i_mul3_conv2d1x114_ma3_cma(CHAINMULTADD,168)@2 + 3
    assign i_mul3_conv2d1x114_ma3_cma_reset = ~ (resetn);
    assign i_mul3_conv2d1x114_ma3_cma_ena0 = 1'b1;
    assign i_mul3_conv2d1x114_ma3_cma_ena1 = i_mul3_conv2d1x114_ma3_cma_ena0;
    assign i_mul3_conv2d1x114_ma3_cma_ena2 = i_mul3_conv2d1x114_ma3_cma_ena0;

    assign i_mul3_conv2d1x114_ma3_cma_a0 = i_mul3_conv2d1x114_bs1_merged_bit_select_b;
    assign i_mul3_conv2d1x114_ma3_cma_c0 = i_mul3_conv2d1x114_bs1_merged_bit_select_c;
    assign i_mul3_conv2d1x114_ma3_cma_a1 = i_mul3_conv2d1x114_bs1_merged_bit_select_b;
    assign i_mul3_conv2d1x114_ma3_cma_c1 = i_mul3_conv2d1x114_bs1_merged_bit_select_c;
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
    ) i_mul3_conv2d1x114_ma3_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul3_conv2d1x114_ma3_cma_ena2, i_mul3_conv2d1x114_ma3_cma_ena1, i_mul3_conv2d1x114_ma3_cma_ena0 }),
        .aclr({ i_mul3_conv2d1x114_ma3_cma_reset, i_mul3_conv2d1x114_ma3_cma_reset }),
        .ay(i_mul3_conv2d1x114_ma3_cma_a1),
        .by(i_mul3_conv2d1x114_ma3_cma_a0),
        .ax(i_mul3_conv2d1x114_ma3_cma_c1),
        .bx(i_mul3_conv2d1x114_ma3_cma_c0),
        .resulta(i_mul3_conv2d1x114_ma3_cma_s0),
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
    i_mul3_conv2d1x114_ma3_cma_delay ( .xin(i_mul3_conv2d1x114_ma3_cma_s0), .xout(i_mul3_conv2d1x114_ma3_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul3_conv2d1x114_ma3_cma_q = $unsigned(i_mul3_conv2d1x114_ma3_cma_qq[32:0]);

    // i_mul3_conv2d1x114_sums_align_1(BITSHIFT,129)@5
    assign i_mul3_conv2d1x114_sums_align_1_qint = { i_mul3_conv2d1x114_ma3_cma_q, 18'b000000000000000000 };
    assign i_mul3_conv2d1x114_sums_align_1_q = i_mul3_conv2d1x114_sums_align_1_qint[50:0];

    // i_mul3_conv2d1x114_im0_cma(CHAINMULTADD,162)@2 + 3
    assign i_mul3_conv2d1x114_im0_cma_reset = ~ (resetn);
    assign i_mul3_conv2d1x114_im0_cma_ena0 = 1'b1;
    assign i_mul3_conv2d1x114_im0_cma_ena1 = i_mul3_conv2d1x114_im0_cma_ena0;
    assign i_mul3_conv2d1x114_im0_cma_ena2 = i_mul3_conv2d1x114_im0_cma_ena0;

    assign i_mul3_conv2d1x114_im0_cma_a0 = i_mul3_conv2d1x114_bs1_merged_bit_select_b;
    assign i_mul3_conv2d1x114_im0_cma_c0 = i_mul3_conv2d1x114_bs1_merged_bit_select_b;
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
    ) i_mul3_conv2d1x114_im0_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul3_conv2d1x114_im0_cma_ena2, i_mul3_conv2d1x114_im0_cma_ena1, i_mul3_conv2d1x114_im0_cma_ena0 }),
        .aclr({ i_mul3_conv2d1x114_im0_cma_reset, i_mul3_conv2d1x114_im0_cma_reset }),
        .ay(i_mul3_conv2d1x114_im0_cma_a0),
        .ax(i_mul3_conv2d1x114_im0_cma_c0),
        .resulta(i_mul3_conv2d1x114_im0_cma_s0),
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
    i_mul3_conv2d1x114_im0_cma_delay ( .xin(i_mul3_conv2d1x114_im0_cma_s0), .xout(i_mul3_conv2d1x114_im0_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul3_conv2d1x114_im0_cma_q = $unsigned(i_mul3_conv2d1x114_im0_cma_qq[27:0]);

    // i_mul3_conv2d1x114_im8_cma(CHAINMULTADD,163)@2 + 3
    assign i_mul3_conv2d1x114_im8_cma_reset = ~ (resetn);
    assign i_mul3_conv2d1x114_im8_cma_ena0 = 1'b1;
    assign i_mul3_conv2d1x114_im8_cma_ena1 = i_mul3_conv2d1x114_im8_cma_ena0;
    assign i_mul3_conv2d1x114_im8_cma_ena2 = i_mul3_conv2d1x114_im8_cma_ena0;

    assign i_mul3_conv2d1x114_im8_cma_a0 = i_mul3_conv2d1x114_bs1_merged_bit_select_c;
    assign i_mul3_conv2d1x114_im8_cma_c0 = i_mul3_conv2d1x114_bs1_merged_bit_select_c;
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
    ) i_mul3_conv2d1x114_im8_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul3_conv2d1x114_im8_cma_ena2, i_mul3_conv2d1x114_im8_cma_ena1, i_mul3_conv2d1x114_im8_cma_ena0 }),
        .aclr({ i_mul3_conv2d1x114_im8_cma_reset, i_mul3_conv2d1x114_im8_cma_reset }),
        .ay(i_mul3_conv2d1x114_im8_cma_a0),
        .ax(i_mul3_conv2d1x114_im8_cma_c0),
        .resulta(i_mul3_conv2d1x114_im8_cma_s0),
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
    i_mul3_conv2d1x114_im8_cma_delay ( .xin(i_mul3_conv2d1x114_im8_cma_s0), .xout(i_mul3_conv2d1x114_im8_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul3_conv2d1x114_im8_cma_q = $unsigned(i_mul3_conv2d1x114_im8_cma_qq[35:0]);

    // i_mul3_conv2d1x114_sums_join_0(BITJOIN,128)@5
    assign i_mul3_conv2d1x114_sums_join_0_q = {i_mul3_conv2d1x114_im0_cma_q, i_mul3_conv2d1x114_im8_cma_q};

    // i_mul3_conv2d1x114_sums_result_add_0_0(ADD,131)@5
    assign i_mul3_conv2d1x114_sums_result_add_0_0_a = {1'b0, i_mul3_conv2d1x114_sums_join_0_q};
    assign i_mul3_conv2d1x114_sums_result_add_0_0_b = {14'b00000000000000, i_mul3_conv2d1x114_sums_align_1_q};
    assign i_mul3_conv2d1x114_sums_result_add_0_0_o = $unsigned(i_mul3_conv2d1x114_sums_result_add_0_0_a) + $unsigned(i_mul3_conv2d1x114_sums_result_add_0_0_b);
    assign i_mul3_conv2d1x114_sums_result_add_0_0_q = i_mul3_conv2d1x114_sums_result_add_0_0_o[64:0];

    // bgTrunc_i_mul3_conv2d1x114_sel_x(BITSELECT,67)@5
    assign bgTrunc_i_mul3_conv2d1x114_sel_x_in = i_mul3_conv2d1x114_sums_result_add_0_0_q[63:0];
    assign bgTrunc_i_mul3_conv2d1x114_sel_x_b = bgTrunc_i_mul3_conv2d1x114_sel_x_in[31:0];

    // i_mul4_conv2d1x115_bs1_merged_bit_select(BITSELECT,173)@5
    assign i_mul4_conv2d1x115_bs1_merged_bit_select_b = bgTrunc_i_mul3_conv2d1x114_sel_x_b[31:18];
    assign i_mul4_conv2d1x115_bs1_merged_bit_select_c = bgTrunc_i_mul3_conv2d1x114_sel_x_b[17:0];

    // i_mul4_conv2d1x115_ma3_cma(CHAINMULTADD,169)@5 + 3
    assign i_mul4_conv2d1x115_ma3_cma_reset = ~ (resetn);
    assign i_mul4_conv2d1x115_ma3_cma_ena0 = 1'b1;
    assign i_mul4_conv2d1x115_ma3_cma_ena1 = i_mul4_conv2d1x115_ma3_cma_ena0;
    assign i_mul4_conv2d1x115_ma3_cma_ena2 = i_mul4_conv2d1x115_ma3_cma_ena0;

    assign i_mul4_conv2d1x115_ma3_cma_a0 = i_mul4_conv2d1x115_bs1_merged_bit_select_b;
    assign i_mul4_conv2d1x115_ma3_cma_c0 = i_mul4_conv2d1x115_bs7_b;
    assign i_mul4_conv2d1x115_ma3_cma_a1 = i_mul4_conv2d1x115_bs2_b;
    assign i_mul4_conv2d1x115_ma3_cma_c1 = i_mul4_conv2d1x115_bs1_merged_bit_select_c;
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
    ) i_mul4_conv2d1x115_ma3_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul4_conv2d1x115_ma3_cma_ena2, i_mul4_conv2d1x115_ma3_cma_ena1, i_mul4_conv2d1x115_ma3_cma_ena0 }),
        .aclr({ i_mul4_conv2d1x115_ma3_cma_reset, i_mul4_conv2d1x115_ma3_cma_reset }),
        .ay(i_mul4_conv2d1x115_ma3_cma_a1),
        .by(i_mul4_conv2d1x115_ma3_cma_a0),
        .ax(i_mul4_conv2d1x115_ma3_cma_c1),
        .bx(i_mul4_conv2d1x115_ma3_cma_c0),
        .resulta(i_mul4_conv2d1x115_ma3_cma_s0),
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
    i_mul4_conv2d1x115_ma3_cma_delay ( .xin(i_mul4_conv2d1x115_ma3_cma_s0), .xout(i_mul4_conv2d1x115_ma3_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul4_conv2d1x115_ma3_cma_q = $unsigned(i_mul4_conv2d1x115_ma3_cma_qq[32:0]);

    // i_mul4_conv2d1x115_sums_align_1(BITSHIFT,144)@8
    assign i_mul4_conv2d1x115_sums_align_1_qint = { i_mul4_conv2d1x115_ma3_cma_q, 18'b000000000000000000 };
    assign i_mul4_conv2d1x115_sums_align_1_q = i_mul4_conv2d1x115_sums_align_1_qint[50:0];

    // i_mul4_conv2d1x115_im0_cma(CHAINMULTADD,164)@5 + 3
    assign i_mul4_conv2d1x115_im0_cma_reset = ~ (resetn);
    assign i_mul4_conv2d1x115_im0_cma_ena0 = 1'b1;
    assign i_mul4_conv2d1x115_im0_cma_ena1 = i_mul4_conv2d1x115_im0_cma_ena0;
    assign i_mul4_conv2d1x115_im0_cma_ena2 = i_mul4_conv2d1x115_im0_cma_ena0;

    assign i_mul4_conv2d1x115_im0_cma_a0 = i_mul4_conv2d1x115_bs1_merged_bit_select_b;
    assign i_mul4_conv2d1x115_im0_cma_c0 = i_mul4_conv2d1x115_bs2_b;
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
    ) i_mul4_conv2d1x115_im0_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul4_conv2d1x115_im0_cma_ena2, i_mul4_conv2d1x115_im0_cma_ena1, i_mul4_conv2d1x115_im0_cma_ena0 }),
        .aclr({ i_mul4_conv2d1x115_im0_cma_reset, i_mul4_conv2d1x115_im0_cma_reset }),
        .ay(i_mul4_conv2d1x115_im0_cma_a0),
        .ax(i_mul4_conv2d1x115_im0_cma_c0),
        .resulta(i_mul4_conv2d1x115_im0_cma_s0),
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
    i_mul4_conv2d1x115_im0_cma_delay ( .xin(i_mul4_conv2d1x115_im0_cma_s0), .xout(i_mul4_conv2d1x115_im0_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul4_conv2d1x115_im0_cma_q = $unsigned(i_mul4_conv2d1x115_im0_cma_qq[27:0]);

    // i_mul4_conv2d1x115_im8_cma(CHAINMULTADD,165)@5 + 3
    assign i_mul4_conv2d1x115_im8_cma_reset = ~ (resetn);
    assign i_mul4_conv2d1x115_im8_cma_ena0 = 1'b1;
    assign i_mul4_conv2d1x115_im8_cma_ena1 = i_mul4_conv2d1x115_im8_cma_ena0;
    assign i_mul4_conv2d1x115_im8_cma_ena2 = i_mul4_conv2d1x115_im8_cma_ena0;

    assign i_mul4_conv2d1x115_im8_cma_a0 = i_mul4_conv2d1x115_bs1_merged_bit_select_c;
    assign i_mul4_conv2d1x115_im8_cma_c0 = i_mul4_conv2d1x115_bs7_b;
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
    ) i_mul4_conv2d1x115_im8_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul4_conv2d1x115_im8_cma_ena2, i_mul4_conv2d1x115_im8_cma_ena1, i_mul4_conv2d1x115_im8_cma_ena0 }),
        .aclr({ i_mul4_conv2d1x115_im8_cma_reset, i_mul4_conv2d1x115_im8_cma_reset }),
        .ay(i_mul4_conv2d1x115_im8_cma_a0),
        .ax(i_mul4_conv2d1x115_im8_cma_c0),
        .resulta(i_mul4_conv2d1x115_im8_cma_s0),
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
    i_mul4_conv2d1x115_im8_cma_delay ( .xin(i_mul4_conv2d1x115_im8_cma_s0), .xout(i_mul4_conv2d1x115_im8_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul4_conv2d1x115_im8_cma_q = $unsigned(i_mul4_conv2d1x115_im8_cma_qq[35:0]);

    // i_mul4_conv2d1x115_sums_join_0(BITJOIN,143)@8
    assign i_mul4_conv2d1x115_sums_join_0_q = {i_mul4_conv2d1x115_im0_cma_q, i_mul4_conv2d1x115_im8_cma_q};

    // i_mul4_conv2d1x115_sums_result_add_0_0(ADD,146)@8
    assign i_mul4_conv2d1x115_sums_result_add_0_0_a = {1'b0, i_mul4_conv2d1x115_sums_join_0_q};
    assign i_mul4_conv2d1x115_sums_result_add_0_0_b = {14'b00000000000000, i_mul4_conv2d1x115_sums_align_1_q};
    assign i_mul4_conv2d1x115_sums_result_add_0_0_o = $unsigned(i_mul4_conv2d1x115_sums_result_add_0_0_a) + $unsigned(i_mul4_conv2d1x115_sums_result_add_0_0_b);
    assign i_mul4_conv2d1x115_sums_result_add_0_0_q = i_mul4_conv2d1x115_sums_result_add_0_0_o[64:0];

    // bgTrunc_i_mul4_conv2d1x115_sel_x(BITSELECT,68)@8
    assign bgTrunc_i_mul4_conv2d1x115_sel_x_in = i_mul4_conv2d1x115_sums_result_add_0_0_q[63:0];
    assign bgTrunc_i_mul4_conv2d1x115_sel_x_b = bgTrunc_i_mul4_conv2d1x115_sel_x_in[31:0];

    // redist5_bgTrunc_i_mul4_conv2d1x115_sel_x_b_1(DELAY,179)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_bgTrunc_i_mul4_conv2d1x115_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist5_bgTrunc_i_mul4_conv2d1x115_sel_x_b_1_q <= $unsigned(bgTrunc_i_mul4_conv2d1x115_sel_x_b);
        end
    end

    // i_idx_ext5_conv2d1x116_sel_x(BITSELECT,93)@9
    assign i_idx_ext5_conv2d1x116_sel_x_b = $unsigned({{32{redist5_bgTrunc_i_mul4_conv2d1x115_sel_x_b_1_q[31]}}, redist5_bgTrunc_i_mul4_conv2d1x115_sel_x_b_1_q[31:0]});

    // i_add_ptr63_conv2d1x10_narrow_x(BITSELECT,82)@9
    assign i_add_ptr63_conv2d1x10_narrow_x_b = i_idx_ext5_conv2d1x116_sel_x_b[61:0];

    // i_add_ptr63_conv2d1x10_shift_join_x(BITJOIN,83)@9
    assign i_add_ptr63_conv2d1x10_shift_join_x_q = {i_add_ptr63_conv2d1x10_narrow_x_b, i_add_ptr63_conv2d1x118_vt_const_1_q};

    // valid_fanout_reg5(REG,105)@8 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg5_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg5_q <= $unsigned(redist1_sync_together45_aunroll_x_in_i_valid_7_q);
        end
    end

    // i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_conv2d1x117(BLACKBOX,40)@0
    // in in_i_dependence@9
    // in in_valid_in@9
    // out out_buffer_out@9
    // out out_valid_out@9
    conv2d1x1_i_llvm_fpga_sync_buffer_p1024f0000put_im_sync_buffer_0 thei_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_conv2d1x117 (
        .in_buffer_in(in_output_im),
        .in_i_dependence(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_buffer_out(i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_conv2d1x117_out_buffer_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_conv2d1x117_vt_select_63(BITSELECT,43)@9
    assign i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_conv2d1x117_vt_select_63_b = i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_conv2d1x117_out_buffer_out[63:10];

    // i_llvm_fpga_sync_buffer_p1024f32_filter_bias_sync_buffer_conv2d1x111_vt_const_9(CONSTANT,37)
    assign i_llvm_fpga_sync_buffer_p1024f32_filter_bias_sync_buffer_conv2d1x111_vt_const_9_q = $unsigned(10'b0000000000);

    // i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_conv2d1x117_vt_join(BITJOIN,42)@9
    assign i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_conv2d1x117_vt_join_q = {i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_conv2d1x117_vt_select_63_b, i_llvm_fpga_sync_buffer_p1024f32_filter_bias_sync_buffer_conv2d1x111_vt_const_9_q};

    // i_add_ptr63_conv2d1x10_add_x(ADD,80)@9
    assign i_add_ptr63_conv2d1x10_add_x_a = {1'b0, i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_conv2d1x117_vt_join_q};
    assign i_add_ptr63_conv2d1x10_add_x_b = {1'b0, i_add_ptr63_conv2d1x10_shift_join_x_q};
    assign i_add_ptr63_conv2d1x10_add_x_o = $unsigned(i_add_ptr63_conv2d1x10_add_x_a) + $unsigned(i_add_ptr63_conv2d1x10_add_x_b);
    assign i_add_ptr63_conv2d1x10_add_x_q = i_add_ptr63_conv2d1x10_add_x_o[64:0];

    // i_add_ptr63_conv2d1x10_dupName_0_trunc_sel_x(BITSELECT,85)@9
    assign i_add_ptr63_conv2d1x10_dupName_0_trunc_sel_x_b = i_add_ptr63_conv2d1x10_add_x_q[63:0];

    // i_add_ptr63_conv2d1x118_vt_select_63(BITSELECT,18)@9
    assign i_add_ptr63_conv2d1x118_vt_select_63_b = i_add_ptr63_conv2d1x10_dupName_0_trunc_sel_x_b[63:2];

    // i_add_ptr63_conv2d1x118_vt_const_1(CONSTANT,16)
    assign i_add_ptr63_conv2d1x118_vt_const_1_q = $unsigned(2'b00);

    // i_add_ptr63_conv2d1x118_vt_join(BITJOIN,17)@9
    assign i_add_ptr63_conv2d1x118_vt_join_q = {i_add_ptr63_conv2d1x118_vt_select_63_b, i_add_ptr63_conv2d1x118_vt_const_1_q};

    // redist6_bgTrunc_i_mul3_conv2d1x114_sel_x_b_4_notEnable(LOGICAL,206)
    assign redist6_bgTrunc_i_mul3_conv2d1x114_sel_x_b_4_notEnable_q = $unsigned(~ (VCC_q));

    // redist6_bgTrunc_i_mul3_conv2d1x114_sel_x_b_4_nor(LOGICAL,207)
    assign redist6_bgTrunc_i_mul3_conv2d1x114_sel_x_b_4_nor_q = ~ (redist6_bgTrunc_i_mul3_conv2d1x114_sel_x_b_4_notEnable_q | redist6_bgTrunc_i_mul3_conv2d1x114_sel_x_b_4_sticky_ena_q);

    // redist6_bgTrunc_i_mul3_conv2d1x114_sel_x_b_4_cmpReg(REG,205)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_bgTrunc_i_mul3_conv2d1x114_sel_x_b_4_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist6_bgTrunc_i_mul3_conv2d1x114_sel_x_b_4_cmpReg_q <= $unsigned(VCC_q);
        end
    end

    // redist6_bgTrunc_i_mul3_conv2d1x114_sel_x_b_4_sticky_ena(REG,208)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_bgTrunc_i_mul3_conv2d1x114_sel_x_b_4_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist6_bgTrunc_i_mul3_conv2d1x114_sel_x_b_4_nor_q == 1'b1)
        begin
            redist6_bgTrunc_i_mul3_conv2d1x114_sel_x_b_4_sticky_ena_q <= $unsigned(redist6_bgTrunc_i_mul3_conv2d1x114_sel_x_b_4_cmpReg_q);
        end
    end

    // redist6_bgTrunc_i_mul3_conv2d1x114_sel_x_b_4_enaAnd(LOGICAL,209)
    assign redist6_bgTrunc_i_mul3_conv2d1x114_sel_x_b_4_enaAnd_q = redist6_bgTrunc_i_mul3_conv2d1x114_sel_x_b_4_sticky_ena_q & VCC_q;

    // redist6_bgTrunc_i_mul3_conv2d1x114_sel_x_b_4_rdcnt(COUNTER,203)
    // low=0, high=1, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_bgTrunc_i_mul3_conv2d1x114_sel_x_b_4_rdcnt_i <= 1'd0;
        end
        else
        begin
            redist6_bgTrunc_i_mul3_conv2d1x114_sel_x_b_4_rdcnt_i <= $unsigned(redist6_bgTrunc_i_mul3_conv2d1x114_sel_x_b_4_rdcnt_i) + $unsigned(1'd1);
        end
    end
    assign redist6_bgTrunc_i_mul3_conv2d1x114_sel_x_b_4_rdcnt_q = redist6_bgTrunc_i_mul3_conv2d1x114_sel_x_b_4_rdcnt_i[0:0];

    // redist6_bgTrunc_i_mul3_conv2d1x114_sel_x_b_4_inputreg0(DELAY,201)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_bgTrunc_i_mul3_conv2d1x114_sel_x_b_4_inputreg0_q <= '0;
        end
        else
        begin
            redist6_bgTrunc_i_mul3_conv2d1x114_sel_x_b_4_inputreg0_q <= $unsigned(bgTrunc_i_mul3_conv2d1x114_sel_x_b);
        end
    end

    // redist6_bgTrunc_i_mul3_conv2d1x114_sel_x_b_4_wraddr(REG,204)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_bgTrunc_i_mul3_conv2d1x114_sel_x_b_4_wraddr_q <= $unsigned(1'b1);
        end
        else
        begin
            redist6_bgTrunc_i_mul3_conv2d1x114_sel_x_b_4_wraddr_q <= $unsigned(redist6_bgTrunc_i_mul3_conv2d1x114_sel_x_b_4_rdcnt_q);
        end
    end

    // redist6_bgTrunc_i_mul3_conv2d1x114_sel_x_b_4_mem(DUALMEM,202)
    assign redist6_bgTrunc_i_mul3_conv2d1x114_sel_x_b_4_mem_ia = $unsigned(redist6_bgTrunc_i_mul3_conv2d1x114_sel_x_b_4_inputreg0_q);
    assign redist6_bgTrunc_i_mul3_conv2d1x114_sel_x_b_4_mem_aa = redist6_bgTrunc_i_mul3_conv2d1x114_sel_x_b_4_wraddr_q;
    assign redist6_bgTrunc_i_mul3_conv2d1x114_sel_x_b_4_mem_ab = redist6_bgTrunc_i_mul3_conv2d1x114_sel_x_b_4_rdcnt_q;
    assign redist6_bgTrunc_i_mul3_conv2d1x114_sel_x_b_4_mem_reset0 = ~ (resetn);
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
    ) redist6_bgTrunc_i_mul3_conv2d1x114_sel_x_b_4_mem_dmem (
        .clocken1(redist6_bgTrunc_i_mul3_conv2d1x114_sel_x_b_4_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist6_bgTrunc_i_mul3_conv2d1x114_sel_x_b_4_mem_reset0),
        .clock1(clock),
        .address_a(redist6_bgTrunc_i_mul3_conv2d1x114_sel_x_b_4_mem_aa),
        .data_a(redist6_bgTrunc_i_mul3_conv2d1x114_sel_x_b_4_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist6_bgTrunc_i_mul3_conv2d1x114_sel_x_b_4_mem_ab),
        .q_b(redist6_bgTrunc_i_mul3_conv2d1x114_sel_x_b_4_mem_iq),
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
    assign redist6_bgTrunc_i_mul3_conv2d1x114_sel_x_b_4_mem_q = redist6_bgTrunc_i_mul3_conv2d1x114_sel_x_b_4_mem_iq[31:0];

    // redist3_i_conv_conv2d1x14_sel_x_b_8_notEnable(LOGICAL,197)
    assign redist3_i_conv_conv2d1x14_sel_x_b_8_notEnable_q = $unsigned(~ (VCC_q));

    // redist3_i_conv_conv2d1x14_sel_x_b_8_nor(LOGICAL,198)
    assign redist3_i_conv_conv2d1x14_sel_x_b_8_nor_q = ~ (redist3_i_conv_conv2d1x14_sel_x_b_8_notEnable_q | redist3_i_conv_conv2d1x14_sel_x_b_8_sticky_ena_q);

    // redist3_i_conv_conv2d1x14_sel_x_b_8_cmpReg(REG,196)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_i_conv_conv2d1x14_sel_x_b_8_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist3_i_conv_conv2d1x14_sel_x_b_8_cmpReg_q <= $unsigned(VCC_q);
        end
    end

    // redist3_i_conv_conv2d1x14_sel_x_b_8_sticky_ena(REG,199)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_i_conv_conv2d1x14_sel_x_b_8_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist3_i_conv_conv2d1x14_sel_x_b_8_nor_q == 1'b1)
        begin
            redist3_i_conv_conv2d1x14_sel_x_b_8_sticky_ena_q <= $unsigned(redist3_i_conv_conv2d1x14_sel_x_b_8_cmpReg_q);
        end
    end

    // redist3_i_conv_conv2d1x14_sel_x_b_8_enaAnd(LOGICAL,200)
    assign redist3_i_conv_conv2d1x14_sel_x_b_8_enaAnd_q = redist3_i_conv_conv2d1x14_sel_x_b_8_sticky_ena_q & VCC_q;

    // redist3_i_conv_conv2d1x14_sel_x_b_8_rdcnt(COUNTER,194)
    // low=0, high=1, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_i_conv_conv2d1x14_sel_x_b_8_rdcnt_i <= 1'd0;
        end
        else
        begin
            redist3_i_conv_conv2d1x14_sel_x_b_8_rdcnt_i <= $unsigned(redist3_i_conv_conv2d1x14_sel_x_b_8_rdcnt_i) + $unsigned(1'd1);
        end
    end
    assign redist3_i_conv_conv2d1x14_sel_x_b_8_rdcnt_q = redist3_i_conv_conv2d1x14_sel_x_b_8_rdcnt_i[0:0];

    // redist3_i_conv_conv2d1x14_sel_x_b_8_wraddr(REG,195)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_i_conv_conv2d1x14_sel_x_b_8_wraddr_q <= $unsigned(1'b1);
        end
        else
        begin
            redist3_i_conv_conv2d1x14_sel_x_b_8_wraddr_q <= $unsigned(redist3_i_conv_conv2d1x14_sel_x_b_8_rdcnt_q);
        end
    end

    // redist3_i_conv_conv2d1x14_sel_x_b_8_mem(DUALMEM,193)
    assign redist3_i_conv_conv2d1x14_sel_x_b_8_mem_ia = $unsigned(redist2_i_conv_conv2d1x14_sel_x_b_4_mem_q);
    assign redist3_i_conv_conv2d1x14_sel_x_b_8_mem_aa = redist3_i_conv_conv2d1x14_sel_x_b_8_wraddr_q;
    assign redist3_i_conv_conv2d1x14_sel_x_b_8_mem_ab = redist3_i_conv_conv2d1x14_sel_x_b_8_rdcnt_q;
    assign redist3_i_conv_conv2d1x14_sel_x_b_8_mem_reset0 = ~ (resetn);
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
    ) redist3_i_conv_conv2d1x14_sel_x_b_8_mem_dmem (
        .clocken1(redist3_i_conv_conv2d1x14_sel_x_b_8_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist3_i_conv_conv2d1x14_sel_x_b_8_mem_reset0),
        .clock1(clock),
        .address_a(redist3_i_conv_conv2d1x14_sel_x_b_8_mem_aa),
        .data_a(redist3_i_conv_conv2d1x14_sel_x_b_8_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist3_i_conv_conv2d1x14_sel_x_b_8_mem_ab),
        .q_b(redist3_i_conv_conv2d1x14_sel_x_b_8_mem_iq),
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
    assign redist3_i_conv_conv2d1x14_sel_x_b_8_mem_q = redist3_i_conv_conv2d1x14_sel_x_b_8_mem_iq[31:0];

    // redist3_i_conv_conv2d1x14_sel_x_b_8_outputreg0(DELAY,192)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_i_conv_conv2d1x14_sel_x_b_8_outputreg0_q <= '0;
        end
        else
        begin
            redist3_i_conv_conv2d1x14_sel_x_b_8_outputreg0_q <= $unsigned(redist3_i_conv_conv2d1x14_sel_x_b_8_mem_q);
        end
    end

    // i_idxprom_conv2d1x110_sel_x(BITSELECT,95)@9
    assign i_idxprom_conv2d1x110_sel_x_b = $unsigned({{32{redist3_i_conv_conv2d1x14_sel_x_b_8_outputreg0_q[31]}}, redist3_i_conv_conv2d1x14_sel_x_b_8_outputreg0_q[31:0]});

    // i_arrayidx2_conv2d1x10_narrow_x(BITSELECT,88)@9
    assign i_arrayidx2_conv2d1x10_narrow_x_b = i_idxprom_conv2d1x110_sel_x_b[61:0];

    // i_arrayidx2_conv2d1x10_shift_join_x(BITJOIN,89)@9
    assign i_arrayidx2_conv2d1x10_shift_join_x_q = {i_arrayidx2_conv2d1x10_narrow_x_b, i_add_ptr63_conv2d1x118_vt_const_1_q};

    // valid_fanout_reg3(REG,103)@8 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg3_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg3_q <= $unsigned(redist1_sync_together45_aunroll_x_in_i_valid_7_q);
        end
    end

    // i_llvm_fpga_sync_buffer_p1024f32_filter_bias_sync_buffer_conv2d1x111(BLACKBOX,36)@0
    // in in_i_dependence@9
    // in in_valid_in@9
    // out out_buffer_out@9
    // out out_valid_out@9
    conv2d1x1_i_llvm_fpga_sync_buffer_p1024f0000r_bias_sync_buffer_0 thei_llvm_fpga_sync_buffer_p1024f32_filter_bias_sync_buffer_conv2d1x111 (
        .in_buffer_in(in_filter_bias),
        .in_i_dependence(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_buffer_out(i_llvm_fpga_sync_buffer_p1024f32_filter_bias_sync_buffer_conv2d1x111_out_buffer_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_sync_buffer_p1024f32_filter_bias_sync_buffer_conv2d1x111_vt_select_63(BITSELECT,39)@9
    assign i_llvm_fpga_sync_buffer_p1024f32_filter_bias_sync_buffer_conv2d1x111_vt_select_63_b = i_llvm_fpga_sync_buffer_p1024f32_filter_bias_sync_buffer_conv2d1x111_out_buffer_out[63:10];

    // i_llvm_fpga_sync_buffer_p1024f32_filter_bias_sync_buffer_conv2d1x111_vt_join(BITJOIN,38)@9
    assign i_llvm_fpga_sync_buffer_p1024f32_filter_bias_sync_buffer_conv2d1x111_vt_join_q = {i_llvm_fpga_sync_buffer_p1024f32_filter_bias_sync_buffer_conv2d1x111_vt_select_63_b, i_llvm_fpga_sync_buffer_p1024f32_filter_bias_sync_buffer_conv2d1x111_vt_const_9_q};

    // i_arrayidx2_conv2d1x10_add_x(ADD,86)@9
    assign i_arrayidx2_conv2d1x10_add_x_a = {1'b0, i_llvm_fpga_sync_buffer_p1024f32_filter_bias_sync_buffer_conv2d1x111_vt_join_q};
    assign i_arrayidx2_conv2d1x10_add_x_b = {1'b0, i_arrayidx2_conv2d1x10_shift_join_x_q};
    assign i_arrayidx2_conv2d1x10_add_x_o = $unsigned(i_arrayidx2_conv2d1x10_add_x_a) + $unsigned(i_arrayidx2_conv2d1x10_add_x_b);
    assign i_arrayidx2_conv2d1x10_add_x_q = i_arrayidx2_conv2d1x10_add_x_o[64:0];

    // i_arrayidx2_conv2d1x10_dupName_0_trunc_sel_x(BITSELECT,91)@9
    assign i_arrayidx2_conv2d1x10_dupName_0_trunc_sel_x_b = i_arrayidx2_conv2d1x10_add_x_q[63:0];

    // i_arrayidx2_conv2d1x112_vt_select_63(BITSELECT,21)@9
    assign i_arrayidx2_conv2d1x112_vt_select_63_b = i_arrayidx2_conv2d1x10_dupName_0_trunc_sel_x_b[63:2];

    // i_arrayidx2_conv2d1x112_vt_join(BITJOIN,20)@9
    assign i_arrayidx2_conv2d1x112_vt_join_q = {i_arrayidx2_conv2d1x112_vt_select_63_b, i_add_ptr63_conv2d1x118_vt_const_1_q};

    // valid_fanout_reg1(REG,101)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg1_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg1_q <= $unsigned(redist0_sync_together45_aunroll_x_in_i_valid_3_q);
        end
    end

    // i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer_conv2d1x15(BLACKBOX,33)@0
    // in in_i_dependence@5
    // in in_valid_in@5
    // out out_buffer_out@5
    // out out_valid_out@5
    conv2d1x1_i_llvm_fpga_sync_buffer_i32_in0000annels_sync_buffer_0 thei_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer_conv2d1x15 (
        .in_buffer_in(in_input_channels),
        .in_i_dependence(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_buffer_out(i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer_conv2d1x15_out_buffer_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_mul_conv2d1x16_bs2_merged_bit_select(BITSELECT,171)@5
    assign i_mul_conv2d1x16_bs2_merged_bit_select_b = i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer_conv2d1x15_out_buffer_out[31:18];
    assign i_mul_conv2d1x16_bs2_merged_bit_select_c = i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer_conv2d1x15_out_buffer_out[17:0];

    // i_mul_conv2d1x16_ma3_cma(CHAINMULTADD,170)@5 + 3
    assign i_mul_conv2d1x16_ma3_cma_reset = ~ (resetn);
    assign i_mul_conv2d1x16_ma3_cma_ena0 = 1'b1;
    assign i_mul_conv2d1x16_ma3_cma_ena1 = i_mul_conv2d1x16_ma3_cma_ena0;
    assign i_mul_conv2d1x16_ma3_cma_ena2 = i_mul_conv2d1x16_ma3_cma_ena0;

    assign i_mul_conv2d1x16_ma3_cma_a0 = i_mul4_conv2d1x115_bs2_b;
    assign i_mul_conv2d1x16_ma3_cma_c0 = i_mul_conv2d1x16_bs2_merged_bit_select_c;
    assign i_mul_conv2d1x16_ma3_cma_a1 = i_mul_conv2d1x16_bs2_merged_bit_select_b;
    assign i_mul_conv2d1x16_ma3_cma_c1 = i_mul4_conv2d1x115_bs7_b;
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
    ) i_mul_conv2d1x16_ma3_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul_conv2d1x16_ma3_cma_ena2, i_mul_conv2d1x16_ma3_cma_ena1, i_mul_conv2d1x16_ma3_cma_ena0 }),
        .aclr({ i_mul_conv2d1x16_ma3_cma_reset, i_mul_conv2d1x16_ma3_cma_reset }),
        .ay(i_mul_conv2d1x16_ma3_cma_a1),
        .by(i_mul_conv2d1x16_ma3_cma_a0),
        .ax(i_mul_conv2d1x16_ma3_cma_c1),
        .bx(i_mul_conv2d1x16_ma3_cma_c0),
        .resulta(i_mul_conv2d1x16_ma3_cma_s0),
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
    i_mul_conv2d1x16_ma3_cma_delay ( .xin(i_mul_conv2d1x16_ma3_cma_s0), .xout(i_mul_conv2d1x16_ma3_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul_conv2d1x16_ma3_cma_q = $unsigned(i_mul_conv2d1x16_ma3_cma_qq[32:0]);

    // i_mul_conv2d1x16_sums_align_1(BITSHIFT,159)@8
    assign i_mul_conv2d1x16_sums_align_1_qint = { i_mul_conv2d1x16_ma3_cma_q, 18'b000000000000000000 };
    assign i_mul_conv2d1x16_sums_align_1_q = i_mul_conv2d1x16_sums_align_1_qint[50:0];

    // i_mul_conv2d1x16_im0_cma(CHAINMULTADD,166)@5 + 3
    assign i_mul_conv2d1x16_im0_cma_reset = ~ (resetn);
    assign i_mul_conv2d1x16_im0_cma_ena0 = 1'b1;
    assign i_mul_conv2d1x16_im0_cma_ena1 = i_mul_conv2d1x16_im0_cma_ena0;
    assign i_mul_conv2d1x16_im0_cma_ena2 = i_mul_conv2d1x16_im0_cma_ena0;

    assign i_mul_conv2d1x16_im0_cma_a0 = i_mul4_conv2d1x115_bs2_b;
    assign i_mul_conv2d1x16_im0_cma_c0 = i_mul_conv2d1x16_bs2_merged_bit_select_b;
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
    ) i_mul_conv2d1x16_im0_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul_conv2d1x16_im0_cma_ena2, i_mul_conv2d1x16_im0_cma_ena1, i_mul_conv2d1x16_im0_cma_ena0 }),
        .aclr({ i_mul_conv2d1x16_im0_cma_reset, i_mul_conv2d1x16_im0_cma_reset }),
        .ay(i_mul_conv2d1x16_im0_cma_a0),
        .ax(i_mul_conv2d1x16_im0_cma_c0),
        .resulta(i_mul_conv2d1x16_im0_cma_s0),
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
    i_mul_conv2d1x16_im0_cma_delay ( .xin(i_mul_conv2d1x16_im0_cma_s0), .xout(i_mul_conv2d1x16_im0_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul_conv2d1x16_im0_cma_q = $unsigned(i_mul_conv2d1x16_im0_cma_qq[27:0]);

    // i_mul_conv2d1x16_im8_cma(CHAINMULTADD,167)@5 + 3
    assign i_mul_conv2d1x16_im8_cma_reset = ~ (resetn);
    assign i_mul_conv2d1x16_im8_cma_ena0 = 1'b1;
    assign i_mul_conv2d1x16_im8_cma_ena1 = i_mul_conv2d1x16_im8_cma_ena0;
    assign i_mul_conv2d1x16_im8_cma_ena2 = i_mul_conv2d1x16_im8_cma_ena0;

    assign i_mul_conv2d1x16_im8_cma_a0 = i_mul4_conv2d1x115_bs7_b;
    assign i_mul_conv2d1x16_im8_cma_c0 = i_mul_conv2d1x16_bs2_merged_bit_select_c;
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
    ) i_mul_conv2d1x16_im8_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul_conv2d1x16_im8_cma_ena2, i_mul_conv2d1x16_im8_cma_ena1, i_mul_conv2d1x16_im8_cma_ena0 }),
        .aclr({ i_mul_conv2d1x16_im8_cma_reset, i_mul_conv2d1x16_im8_cma_reset }),
        .ay(i_mul_conv2d1x16_im8_cma_a0),
        .ax(i_mul_conv2d1x16_im8_cma_c0),
        .resulta(i_mul_conv2d1x16_im8_cma_s0),
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
    i_mul_conv2d1x16_im8_cma_delay ( .xin(i_mul_conv2d1x16_im8_cma_s0), .xout(i_mul_conv2d1x16_im8_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul_conv2d1x16_im8_cma_q = $unsigned(i_mul_conv2d1x16_im8_cma_qq[35:0]);

    // i_mul_conv2d1x16_sums_join_0(BITJOIN,158)@8
    assign i_mul_conv2d1x16_sums_join_0_q = {i_mul_conv2d1x16_im0_cma_q, i_mul_conv2d1x16_im8_cma_q};

    // i_mul_conv2d1x16_sums_result_add_0_0(ADD,161)@8
    assign i_mul_conv2d1x16_sums_result_add_0_0_a = {1'b0, i_mul_conv2d1x16_sums_join_0_q};
    assign i_mul_conv2d1x16_sums_result_add_0_0_b = {14'b00000000000000, i_mul_conv2d1x16_sums_align_1_q};
    assign i_mul_conv2d1x16_sums_result_add_0_0_o = $unsigned(i_mul_conv2d1x16_sums_result_add_0_0_a) + $unsigned(i_mul_conv2d1x16_sums_result_add_0_0_b);
    assign i_mul_conv2d1x16_sums_result_add_0_0_q = i_mul_conv2d1x16_sums_result_add_0_0_o[64:0];

    // bgTrunc_i_mul_conv2d1x16_sel_x(BITSELECT,69)@8
    assign bgTrunc_i_mul_conv2d1x16_sel_x_in = i_mul_conv2d1x16_sums_result_add_0_0_q[63:0];
    assign bgTrunc_i_mul_conv2d1x16_sel_x_b = bgTrunc_i_mul_conv2d1x16_sel_x_in[31:0];

    // redist4_bgTrunc_i_mul_conv2d1x16_sel_x_b_1(DELAY,178)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_bgTrunc_i_mul_conv2d1x16_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist4_bgTrunc_i_mul_conv2d1x16_sel_x_b_1_q <= $unsigned(bgTrunc_i_mul_conv2d1x16_sel_x_b);
        end
    end

    // i_idx_ext_conv2d1x17_sel_x(BITSELECT,94)@9
    assign i_idx_ext_conv2d1x17_sel_x_b = $unsigned({{32{redist4_bgTrunc_i_mul_conv2d1x16_sel_x_b_1_q[31]}}, redist4_bgTrunc_i_mul_conv2d1x16_sel_x_b_1_q[31:0]});

    // i_add_ptr1_conv2d1x10_narrow_x(BITSELECT,76)@9
    assign i_add_ptr1_conv2d1x10_narrow_x_b = i_idx_ext_conv2d1x17_sel_x_b[59:0];

    // i_add_ptr1_conv2d1x10_shift_join_x(BITJOIN,77)@9
    assign i_add_ptr1_conv2d1x10_shift_join_x_q = {i_add_ptr1_conv2d1x10_narrow_x_b, i_add_ptr1_conv2d1x19_vt_const_3_q};

    // valid_fanout_reg2(REG,102)@8 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg2_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg2_q <= $unsigned(redist1_sync_together45_aunroll_x_in_i_valid_7_q);
        end
    end

    // i_llvm_fpga_sync_buffer_p1024v4f32_filter_weight_sync_buffer_conv2d1x18(BLACKBOX,44)@0
    // in in_i_dependence@9
    // in in_valid_in@9
    // out out_buffer_out@9
    // out out_valid_out@9
    conv2d1x1_i_llvm_fpga_sync_buffer_p1024v0000weight_sync_buffer_0 thei_llvm_fpga_sync_buffer_p1024v4f32_filter_weight_sync_buffer_conv2d1x18 (
        .in_buffer_in(in_filter_weight),
        .in_i_dependence(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_buffer_out(i_llvm_fpga_sync_buffer_p1024v4f32_filter_weight_sync_buffer_conv2d1x18_out_buffer_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_sync_buffer_p1024v4f32_filter_weight_sync_buffer_conv2d1x18_vt_select_63(BITSELECT,47)@9
    assign i_llvm_fpga_sync_buffer_p1024v4f32_filter_weight_sync_buffer_conv2d1x18_vt_select_63_b = i_llvm_fpga_sync_buffer_p1024v4f32_filter_weight_sync_buffer_conv2d1x18_out_buffer_out[63:10];

    // i_llvm_fpga_sync_buffer_p1024v4f32_filter_weight_sync_buffer_conv2d1x18_vt_join(BITJOIN,46)@9
    assign i_llvm_fpga_sync_buffer_p1024v4f32_filter_weight_sync_buffer_conv2d1x18_vt_join_q = {i_llvm_fpga_sync_buffer_p1024v4f32_filter_weight_sync_buffer_conv2d1x18_vt_select_63_b, i_llvm_fpga_sync_buffer_p1024f32_filter_bias_sync_buffer_conv2d1x111_vt_const_9_q};

    // i_add_ptr1_conv2d1x10_add_x(ADD,74)@9
    assign i_add_ptr1_conv2d1x10_add_x_a = {1'b0, i_llvm_fpga_sync_buffer_p1024v4f32_filter_weight_sync_buffer_conv2d1x18_vt_join_q};
    assign i_add_ptr1_conv2d1x10_add_x_b = {1'b0, i_add_ptr1_conv2d1x10_shift_join_x_q};
    assign i_add_ptr1_conv2d1x10_add_x_o = $unsigned(i_add_ptr1_conv2d1x10_add_x_a) + $unsigned(i_add_ptr1_conv2d1x10_add_x_b);
    assign i_add_ptr1_conv2d1x10_add_x_q = i_add_ptr1_conv2d1x10_add_x_o[64:0];

    // i_add_ptr1_conv2d1x10_dupName_0_trunc_sel_x(BITSELECT,79)@9
    assign i_add_ptr1_conv2d1x10_dupName_0_trunc_sel_x_b = i_add_ptr1_conv2d1x10_add_x_q[63:0];

    // i_add_ptr1_conv2d1x19_vt_select_63(BITSELECT,15)@9
    assign i_add_ptr1_conv2d1x19_vt_select_63_b = i_add_ptr1_conv2d1x10_dupName_0_trunc_sel_x_b[63:4];

    // i_add_ptr1_conv2d1x19_vt_const_3(CONSTANT,13)
    assign i_add_ptr1_conv2d1x19_vt_const_3_q = $unsigned(4'b0000);

    // i_add_ptr1_conv2d1x19_vt_join(BITJOIN,14)@9
    assign i_add_ptr1_conv2d1x19_vt_join_q = {i_add_ptr1_conv2d1x19_vt_select_63_b, i_add_ptr1_conv2d1x19_vt_const_3_q};

    // i_unnamed_conv2d1x13_vt_const_63(CONSTANT,55)
    assign i_unnamed_conv2d1x13_vt_const_63_q = $unsigned(55'b0000000000000000000000000000000000000000000000000000000);

    // redist7_i_unnamed_conv2d1x13_vt_select_8_b_8_notEnable(LOGICAL,216)
    assign redist7_i_unnamed_conv2d1x13_vt_select_8_b_8_notEnable_q = $unsigned(~ (VCC_q));

    // redist7_i_unnamed_conv2d1x13_vt_select_8_b_8_nor(LOGICAL,217)
    assign redist7_i_unnamed_conv2d1x13_vt_select_8_b_8_nor_q = ~ (redist7_i_unnamed_conv2d1x13_vt_select_8_b_8_notEnable_q | redist7_i_unnamed_conv2d1x13_vt_select_8_b_8_sticky_ena_q);

    // redist7_i_unnamed_conv2d1x13_vt_select_8_b_8_mem_last(CONSTANT,213)
    assign redist7_i_unnamed_conv2d1x13_vt_select_8_b_8_mem_last_q = $unsigned(4'b0101);

    // redist7_i_unnamed_conv2d1x13_vt_select_8_b_8_cmp(LOGICAL,214)
    assign redist7_i_unnamed_conv2d1x13_vt_select_8_b_8_cmp_b = {1'b0, redist7_i_unnamed_conv2d1x13_vt_select_8_b_8_rdcnt_q};
    assign redist7_i_unnamed_conv2d1x13_vt_select_8_b_8_cmp_q = $unsigned(redist7_i_unnamed_conv2d1x13_vt_select_8_b_8_mem_last_q == redist7_i_unnamed_conv2d1x13_vt_select_8_b_8_cmp_b ? 1'b1 : 1'b0);

    // redist7_i_unnamed_conv2d1x13_vt_select_8_b_8_cmpReg(REG,215)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_i_unnamed_conv2d1x13_vt_select_8_b_8_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist7_i_unnamed_conv2d1x13_vt_select_8_b_8_cmpReg_q <= $unsigned(redist7_i_unnamed_conv2d1x13_vt_select_8_b_8_cmp_q);
        end
    end

    // redist7_i_unnamed_conv2d1x13_vt_select_8_b_8_sticky_ena(REG,218)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_i_unnamed_conv2d1x13_vt_select_8_b_8_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist7_i_unnamed_conv2d1x13_vt_select_8_b_8_nor_q == 1'b1)
        begin
            redist7_i_unnamed_conv2d1x13_vt_select_8_b_8_sticky_ena_q <= $unsigned(redist7_i_unnamed_conv2d1x13_vt_select_8_b_8_cmpReg_q);
        end
    end

    // redist7_i_unnamed_conv2d1x13_vt_select_8_b_8_enaAnd(LOGICAL,219)
    assign redist7_i_unnamed_conv2d1x13_vt_select_8_b_8_enaAnd_q = redist7_i_unnamed_conv2d1x13_vt_select_8_b_8_sticky_ena_q & VCC_q;

    // redist7_i_unnamed_conv2d1x13_vt_select_8_b_8_rdcnt(COUNTER,211)
    // low=0, high=6, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_i_unnamed_conv2d1x13_vt_select_8_b_8_rdcnt_i <= 3'd0;
            redist7_i_unnamed_conv2d1x13_vt_select_8_b_8_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist7_i_unnamed_conv2d1x13_vt_select_8_b_8_rdcnt_i == 3'd5)
            begin
                redist7_i_unnamed_conv2d1x13_vt_select_8_b_8_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist7_i_unnamed_conv2d1x13_vt_select_8_b_8_rdcnt_eq <= 1'b0;
            end
            if (redist7_i_unnamed_conv2d1x13_vt_select_8_b_8_rdcnt_eq == 1'b1)
            begin
                redist7_i_unnamed_conv2d1x13_vt_select_8_b_8_rdcnt_i <= $unsigned(redist7_i_unnamed_conv2d1x13_vt_select_8_b_8_rdcnt_i) + $unsigned(3'd2);
            end
            else
            begin
                redist7_i_unnamed_conv2d1x13_vt_select_8_b_8_rdcnt_i <= $unsigned(redist7_i_unnamed_conv2d1x13_vt_select_8_b_8_rdcnt_i) + $unsigned(3'd1);
            end
        end
    end
    assign redist7_i_unnamed_conv2d1x13_vt_select_8_b_8_rdcnt_q = redist7_i_unnamed_conv2d1x13_vt_select_8_b_8_rdcnt_i[2:0];

    // i_llid_masked_trunc_conv2d1x12_sel_x(BITSELECT,96)@1
    assign i_llid_masked_trunc_conv2d1x12_sel_x_b = in_c0_eni2_1_tpl[8:0];

    // i_unnamed_conv2d1x13_sel_x(BITSELECT,97)@1
    assign i_unnamed_conv2d1x13_sel_x_b = {55'b0000000000000000000000000000000000000000000000000000000, i_llid_masked_trunc_conv2d1x12_sel_x_b[8:0]};

    // i_unnamed_conv2d1x13_vt_select_8(BITSELECT,57)@1
    assign i_unnamed_conv2d1x13_vt_select_8_b = i_unnamed_conv2d1x13_sel_x_b[8:0];

    // redist7_i_unnamed_conv2d1x13_vt_select_8_b_8_wraddr(REG,212)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_i_unnamed_conv2d1x13_vt_select_8_b_8_wraddr_q <= $unsigned(3'b110);
        end
        else
        begin
            redist7_i_unnamed_conv2d1x13_vt_select_8_b_8_wraddr_q <= $unsigned(redist7_i_unnamed_conv2d1x13_vt_select_8_b_8_rdcnt_q);
        end
    end

    // redist7_i_unnamed_conv2d1x13_vt_select_8_b_8_mem(DUALMEM,210)
    assign redist7_i_unnamed_conv2d1x13_vt_select_8_b_8_mem_ia = $unsigned(i_unnamed_conv2d1x13_vt_select_8_b);
    assign redist7_i_unnamed_conv2d1x13_vt_select_8_b_8_mem_aa = redist7_i_unnamed_conv2d1x13_vt_select_8_b_8_wraddr_q;
    assign redist7_i_unnamed_conv2d1x13_vt_select_8_b_8_mem_ab = redist7_i_unnamed_conv2d1x13_vt_select_8_b_8_rdcnt_q;
    assign redist7_i_unnamed_conv2d1x13_vt_select_8_b_8_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(9),
        .widthad_a(3),
        .numwords_a(7),
        .width_b(9),
        .widthad_b(3),
        .numwords_b(7),
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
    ) redist7_i_unnamed_conv2d1x13_vt_select_8_b_8_mem_dmem (
        .clocken1(redist7_i_unnamed_conv2d1x13_vt_select_8_b_8_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist7_i_unnamed_conv2d1x13_vt_select_8_b_8_mem_reset0),
        .clock1(clock),
        .address_a(redist7_i_unnamed_conv2d1x13_vt_select_8_b_8_mem_aa),
        .data_a(redist7_i_unnamed_conv2d1x13_vt_select_8_b_8_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist7_i_unnamed_conv2d1x13_vt_select_8_b_8_mem_ab),
        .q_b(redist7_i_unnamed_conv2d1x13_vt_select_8_b_8_mem_iq),
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
    assign redist7_i_unnamed_conv2d1x13_vt_select_8_b_8_mem_q = redist7_i_unnamed_conv2d1x13_vt_select_8_b_8_mem_iq[8:0];

    // i_unnamed_conv2d1x13_vt_join(BITJOIN,56)@9
    assign i_unnamed_conv2d1x13_vt_join_q = {i_unnamed_conv2d1x13_vt_const_63_q, redist7_i_unnamed_conv2d1x13_vt_select_8_b_8_mem_q};

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // sync_out_aunroll_x(GPOUT,98)@9
    assign out_c0_exi9_0_tpl = GND_q;
    assign out_c0_exi9_1_tpl = i_unnamed_conv2d1x13_vt_join_q;
    assign out_c0_exi9_2_tpl = i_add_ptr1_conv2d1x19_vt_join_q;
    assign out_c0_exi9_3_tpl = i_arrayidx2_conv2d1x112_vt_join_q;
    assign out_c0_exi9_4_tpl = redist6_bgTrunc_i_mul3_conv2d1x114_sel_x_b_4_mem_q;
    assign out_c0_exi9_5_tpl = i_add_ptr63_conv2d1x118_vt_join_q;
    assign out_c0_exi9_6_tpl = i_cmp69_conv2d1x120_c;
    assign out_c0_exi9_7_tpl = i_unnamed_conv2d1x125_q;
    assign out_c0_exi9_8_tpl = i_unnamed_conv2d1x126_q;
    assign out_c0_exi9_9_tpl = i_unnamed_conv2d1x127_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_conv2d1x11 = GND_q;

endmodule
