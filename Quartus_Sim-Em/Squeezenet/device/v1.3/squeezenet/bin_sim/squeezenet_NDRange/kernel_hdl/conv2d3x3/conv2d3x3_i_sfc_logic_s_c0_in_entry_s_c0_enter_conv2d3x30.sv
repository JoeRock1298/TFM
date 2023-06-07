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

// SystemVerilog created from conv2d3x3_i_sfc_logic_s_c0_in_entry_s_c0_enter_conv2d3x30
// SystemVerilog created on Tue Jun  6 18:45:14 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2d3x3_i_sfc_logic_s_c0_in_entry_s_c0_enter_conv2d3x30 (
    input wire [63:0] in_filter_bias,
    input wire [63:0] in_filter_weight,
    input wire [31:0] in_input_channels,
    input wire [31:0] in_input_size,
    input wire [63:0] in_output_im,
    input wire [31:0] in_output_size,
    input wire [31:0] in_pad,
    input wire [31:0] in_start_channel,
    input wire [31:0] in_stride,
    output wire [0:0] out_c0_exi16_0_tpl,
    output wire [63:0] out_c0_exi16_1_tpl,
    output wire [63:0] out_c0_exi16_2_tpl,
    output wire [63:0] out_c0_exi16_3_tpl,
    output wire [0:0] out_c0_exi16_4_tpl,
    output wire [31:0] out_c0_exi16_5_tpl,
    output wire [31:0] out_c0_exi16_6_tpl,
    output wire [0:0] out_c0_exi16_7_tpl,
    output wire [0:0] out_c0_exi16_8_tpl,
    output wire [31:0] out_c0_exi16_9_tpl,
    output wire [0:0] out_c0_exi16_10_tpl,
    output wire [0:0] out_c0_exi16_11_tpl,
    output wire [31:0] out_c0_exi16_12_tpl,
    output wire [0:0] out_c0_exi16_13_tpl,
    output wire [0:0] out_c0_exi16_14_tpl,
    output wire [0:0] out_c0_exi16_15_tpl,
    output wire [0:0] out_c0_exi16_16_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_conv2d3x31,
    input wire [0:0] in_c0_eni2_0_tpl,
    input wire [63:0] in_c0_eni2_1_tpl,
    input wire [63:0] in_c0_eni2_2_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] c_i32_173_q;
    wire [31:0] c_i32_274_q;
    wire [32:0] i_add20_conv2d3x332_a;
    wire [32:0] i_add20_conv2d3x332_b;
    logic [32:0] i_add20_conv2d3x332_o;
    wire [32:0] i_add20_conv2d3x332_q;
    wire [32:0] i_add_conv2d3x316_a;
    wire [32:0] i_add_conv2d3x316_b;
    logic [32:0] i_add_conv2d3x316_o;
    wire [32:0] i_add_conv2d3x316_q;
    wire [1:0] i_add_ptr1_conv2d3x311_vt_const_1_q;
    wire [63:0] i_add_ptr1_conv2d3x311_vt_join_q;
    wire [61:0] i_add_ptr1_conv2d3x311_vt_select_63_b;
    wire [63:0] i_add_ptr73_conv2d3x322_vt_join_q;
    wire [61:0] i_add_ptr73_conv2d3x322_vt_select_63_b;
    wire [63:0] i_arrayidx2_conv2d3x314_vt_join_q;
    wire [61:0] i_arrayidx2_conv2d3x314_vt_select_63_b;
    wire [33:0] i_cmp1057_conv2d3x327_a;
    wire [33:0] i_cmp1057_conv2d3x327_b;
    logic [33:0] i_cmp1057_conv2d3x327_o;
    wire [0:0] i_cmp1057_conv2d3x327_c;
    wire [33:0] i_cmp29_1_conv2d3x341_a;
    wire [33:0] i_cmp29_1_conv2d3x341_b;
    logic [33:0] i_cmp29_1_conv2d3x341_o;
    wire [0:0] i_cmp29_1_conv2d3x341_c;
    wire [33:0] i_cmp29_2_conv2d3x347_a;
    wire [33:0] i_cmp29_2_conv2d3x347_b;
    logic [33:0] i_cmp29_2_conv2d3x347_o;
    wire [0:0] i_cmp29_2_conv2d3x347_c;
    wire [33:0] i_cmp29_conv2d3x335_a;
    wire [33:0] i_cmp29_conv2d3x335_b;
    logic [33:0] i_cmp29_conv2d3x335_o;
    wire [0:0] i_cmp29_conv2d3x335_c;
    wire [33:0] i_cmp31_1_conv2d3x344_a;
    wire [33:0] i_cmp31_1_conv2d3x344_b;
    logic [33:0] i_cmp31_1_conv2d3x344_o;
    wire [0:0] i_cmp31_1_conv2d3x344_c;
    wire [33:0] i_cmp31_2_conv2d3x350_a;
    wire [33:0] i_cmp31_2_conv2d3x350_b;
    logic [33:0] i_cmp31_2_conv2d3x350_o;
    wire [0:0] i_cmp31_2_conv2d3x350_c;
    wire [33:0] i_cmp31_conv2d3x338_a;
    wire [33:0] i_cmp31_conv2d3x338_b;
    logic [33:0] i_cmp31_conv2d3x338_o;
    wire [0:0] i_cmp31_conv2d3x338_c;
    wire [33:0] i_cmp61_conv2d3x324_a;
    wire [33:0] i_cmp61_conv2d3x324_b;
    logic [33:0] i_cmp61_conv2d3x324_o;
    wire [0:0] i_cmp61_conv2d3x324_c;
    wire [31:0] i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer5_conv2d3x34_out_buffer_out;
    wire [31:0] i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer6_conv2d3x326_out_buffer_out;
    wire [31:0] i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer_conv2d3x35_out_buffer_out;
    wire [31:0] i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer11_conv2d3x343_out_buffer_out;
    wire [31:0] i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer15_conv2d3x337_out_buffer_out;
    wire [31:0] i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer9_conv2d3x349_out_buffer_out;
    wire [31:0] i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer19_conv2d3x333_out_buffer_out;
    wire [31:0] i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer20_conv2d3x317_out_buffer_out;
    wire [31:0] i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer_conv2d3x323_out_buffer_out;
    wire [31:0] i_llvm_fpga_sync_buffer_i32_pad_sync_buffer17_conv2d3x331_out_buffer_out;
    wire [31:0] i_llvm_fpga_sync_buffer_i32_start_channel_sync_buffer_conv2d3x315_out_buffer_out;
    wire [31:0] i_llvm_fpga_sync_buffer_i32_stride_sync_buffer18_conv2d3x329_out_buffer_out;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024f32_filter_bias_sync_buffer_conv2d3x313_out_buffer_out;
    wire [9:0] i_llvm_fpga_sync_buffer_p1024f32_filter_bias_sync_buffer_conv2d3x313_vt_const_9_q;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024f32_filter_bias_sync_buffer_conv2d3x313_vt_join_q;
    wire [53:0] i_llvm_fpga_sync_buffer_p1024f32_filter_bias_sync_buffer_conv2d3x313_vt_select_63_b;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024f32_filter_weight_sync_buffer_conv2d3x310_out_buffer_out;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024f32_filter_weight_sync_buffer_conv2d3x310_vt_join_q;
    wire [53:0] i_llvm_fpga_sync_buffer_p1024f32_filter_weight_sync_buffer_conv2d3x310_vt_select_63_b;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_conv2d3x321_out_buffer_out;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_conv2d3x321_vt_join_q;
    wire [53:0] i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_conv2d3x321_vt_select_63_b;
    wire [32:0] i_mul_add2_conv2d3x37_a;
    wire [32:0] i_mul_add2_conv2d3x37_b;
    logic [32:0] i_mul_add2_conv2d3x37_o;
    wire [32:0] i_mul_add2_conv2d3x37_q;
    wire [32:0] i_sub_1_conv2d3x340_a;
    wire [32:0] i_sub_1_conv2d3x340_b;
    logic [32:0] i_sub_1_conv2d3x340_o;
    wire [32:0] i_sub_1_conv2d3x340_q;
    wire [32:0] i_sub_2_conv2d3x346_a;
    wire [32:0] i_sub_2_conv2d3x346_b;
    logic [32:0] i_sub_2_conv2d3x346_o;
    wire [32:0] i_sub_2_conv2d3x346_q;
    wire [0:0] i_unnamed_conv2d3x352_q;
    wire [0:0] i_unnamed_conv2d3x353_q;
    wire [2:0] i_unnamed_conv2d3x36_vt_const_2_q;
    wire [31:0] i_unnamed_conv2d3x36_vt_join_q;
    wire [28:0] i_unnamed_conv2d3x36_vt_select_31_b;
    wire [31:0] bgTrunc_i_add20_conv2d3x332_sel_x_b;
    wire [31:0] bgTrunc_i_add_conv2d3x316_sel_x_b;
    wire [63:0] bgTrunc_i_mul19_conv2d3x330_sel_x_in;
    wire [31:0] bgTrunc_i_mul19_conv2d3x330_sel_x_b;
    wire [63:0] bgTrunc_i_mul3_conv2d3x38_sel_x_in;
    wire [31:0] bgTrunc_i_mul3_conv2d3x38_sel_x_b;
    wire [63:0] bgTrunc_i_mul4_conv2d3x318_sel_x_in;
    wire [31:0] bgTrunc_i_mul4_conv2d3x318_sel_x_b;
    wire [63:0] bgTrunc_i_mul5_conv2d3x319_sel_x_in;
    wire [31:0] bgTrunc_i_mul5_conv2d3x319_sel_x_b;
    wire [63:0] bgTrunc_i_mul64_conv2d3x334_sel_x_in;
    wire [31:0] bgTrunc_i_mul64_conv2d3x334_sel_x_b;
    wire [31:0] bgTrunc_i_mul_add2_conv2d3x37_sel_x_b;
    wire [31:0] bgTrunc_i_sub_1_conv2d3x340_sel_x_b;
    wire [31:0] bgTrunc_i_sub_2_conv2d3x346_sel_x_b;
    wire [31:0] c_i32_071_recast_x_q;
    wire [31:0] c_i32_172_recast_x_q;
    wire [64:0] i_add_ptr1_conv2d3x30_add_x_a;
    wire [64:0] i_add_ptr1_conv2d3x30_add_x_b;
    logic [64:0] i_add_ptr1_conv2d3x30_add_x_o;
    wire [64:0] i_add_ptr1_conv2d3x30_add_x_q;
    wire [61:0] i_add_ptr1_conv2d3x30_narrow_x_b;
    wire [63:0] i_add_ptr1_conv2d3x30_shift_join_x_q;
    wire [63:0] i_add_ptr1_conv2d3x30_dupName_0_trunc_sel_x_b;
    wire [64:0] i_add_ptr73_conv2d3x30_add_x_a;
    wire [64:0] i_add_ptr73_conv2d3x30_add_x_b;
    logic [64:0] i_add_ptr73_conv2d3x30_add_x_o;
    wire [64:0] i_add_ptr73_conv2d3x30_add_x_q;
    wire [61:0] i_add_ptr73_conv2d3x30_narrow_x_b;
    wire [63:0] i_add_ptr73_conv2d3x30_shift_join_x_q;
    wire [63:0] i_add_ptr73_conv2d3x30_dupName_0_trunc_sel_x_b;
    wire [64:0] i_arrayidx2_conv2d3x30_add_x_a;
    wire [64:0] i_arrayidx2_conv2d3x30_add_x_b;
    logic [64:0] i_arrayidx2_conv2d3x30_add_x_o;
    wire [64:0] i_arrayidx2_conv2d3x30_add_x_q;
    wire [61:0] i_arrayidx2_conv2d3x30_narrow_x_b;
    wire [63:0] i_arrayidx2_conv2d3x30_shift_join_x_q;
    wire [63:0] i_arrayidx2_conv2d3x30_dupName_0_trunc_sel_x_b;
    wire [31:0] i_conv2_conv2d3x33_sel_x_b;
    wire [31:0] i_conv_conv2d3x32_sel_x_b;
    wire [63:0] i_idx_ext6_conv2d3x320_sel_x_b;
    wire [63:0] i_idx_ext_conv2d3x39_sel_x_b;
    wire [63:0] i_idxprom_conv2d3x312_sel_x_b;
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
    wire [63:0] i_mul19_conv2d3x330_sums_join_0_q;
    wire [50:0] i_mul19_conv2d3x330_sums_align_1_q;
    wire [50:0] i_mul19_conv2d3x330_sums_align_1_qint;
    wire [64:0] i_mul19_conv2d3x330_sums_result_add_0_0_a;
    wire [64:0] i_mul19_conv2d3x330_sums_result_add_0_0_b;
    logic [64:0] i_mul19_conv2d3x330_sums_result_add_0_0_o;
    wire [64:0] i_mul19_conv2d3x330_sums_result_add_0_0_q;
    wire [13:0] i_mul3_conv2d3x38_bs2_b;
    wire [17:0] i_mul3_conv2d3x38_bs7_in;
    wire [17:0] i_mul3_conv2d3x38_bs7_b;
    wire [63:0] i_mul3_conv2d3x38_sums_join_0_q;
    wire [50:0] i_mul3_conv2d3x38_sums_align_1_q;
    wire [50:0] i_mul3_conv2d3x38_sums_align_1_qint;
    wire [64:0] i_mul3_conv2d3x38_sums_result_add_0_0_a;
    wire [64:0] i_mul3_conv2d3x38_sums_result_add_0_0_b;
    logic [64:0] i_mul3_conv2d3x38_sums_result_add_0_0_o;
    wire [64:0] i_mul3_conv2d3x38_sums_result_add_0_0_q;
    wire [63:0] i_mul4_conv2d3x318_sums_join_0_q;
    wire [50:0] i_mul4_conv2d3x318_sums_align_1_q;
    wire [50:0] i_mul4_conv2d3x318_sums_align_1_qint;
    wire [64:0] i_mul4_conv2d3x318_sums_result_add_0_0_a;
    wire [64:0] i_mul4_conv2d3x318_sums_result_add_0_0_b;
    logic [64:0] i_mul4_conv2d3x318_sums_result_add_0_0_o;
    wire [64:0] i_mul4_conv2d3x318_sums_result_add_0_0_q;
    wire [63:0] i_mul5_conv2d3x319_sums_join_0_q;
    wire [50:0] i_mul5_conv2d3x319_sums_align_1_q;
    wire [50:0] i_mul5_conv2d3x319_sums_align_1_qint;
    wire [64:0] i_mul5_conv2d3x319_sums_result_add_0_0_a;
    wire [64:0] i_mul5_conv2d3x319_sums_result_add_0_0_b;
    logic [64:0] i_mul5_conv2d3x319_sums_result_add_0_0_o;
    wire [64:0] i_mul5_conv2d3x319_sums_result_add_0_0_q;
    wire [63:0] i_mul64_conv2d3x334_sums_join_0_q;
    wire [50:0] i_mul64_conv2d3x334_sums_align_1_q;
    wire [50:0] i_mul64_conv2d3x334_sums_align_1_qint;
    wire [64:0] i_mul64_conv2d3x334_sums_result_add_0_0_a;
    wire [64:0] i_mul64_conv2d3x334_sums_result_add_0_0_b;
    logic [64:0] i_mul64_conv2d3x334_sums_result_add_0_0_o;
    wire [64:0] i_mul64_conv2d3x334_sums_result_add_0_0_q;
    wire [30:0] leftShiftStage0Idx1Rng1_uid274_i_unnamed_conv2d3x30_shift_x_in;
    wire [30:0] leftShiftStage0Idx1Rng1_uid274_i_unnamed_conv2d3x30_shift_x_b;
    wire [31:0] leftShiftStage0Idx1_uid275_i_unnamed_conv2d3x30_shift_x_q;
    wire [0:0] leftShiftStage0_uid277_i_unnamed_conv2d3x30_shift_x_s;
    reg [31:0] leftShiftStage0_uid277_i_unnamed_conv2d3x30_shift_x_q;
    wire [29:0] leftShiftStage1Idx1Rng2_uid279_i_unnamed_conv2d3x30_shift_x_in;
    wire [29:0] leftShiftStage1Idx1Rng2_uid279_i_unnamed_conv2d3x30_shift_x_b;
    wire [31:0] leftShiftStage1Idx1_uid280_i_unnamed_conv2d3x30_shift_x_q;
    wire [0:0] leftShiftStage1_uid282_i_unnamed_conv2d3x30_shift_x_s;
    reg [31:0] leftShiftStage1_uid282_i_unnamed_conv2d3x30_shift_x_q;
    wire i_mul19_conv2d3x330_im0_cma_reset;
    wire [13:0] i_mul19_conv2d3x330_im0_cma_a0;
    wire [13:0] i_mul19_conv2d3x330_im0_cma_c0;
    wire [27:0] i_mul19_conv2d3x330_im0_cma_s0;
    wire [27:0] i_mul19_conv2d3x330_im0_cma_qq;
    wire [27:0] i_mul19_conv2d3x330_im0_cma_q;
    wire i_mul19_conv2d3x330_im0_cma_ena0;
    wire i_mul19_conv2d3x330_im0_cma_ena1;
    wire i_mul19_conv2d3x330_im0_cma_ena2;
    wire i_mul19_conv2d3x330_im8_cma_reset;
    wire [17:0] i_mul19_conv2d3x330_im8_cma_a0;
    wire [17:0] i_mul19_conv2d3x330_im8_cma_c0;
    wire [35:0] i_mul19_conv2d3x330_im8_cma_s0;
    wire [35:0] i_mul19_conv2d3x330_im8_cma_qq;
    wire [35:0] i_mul19_conv2d3x330_im8_cma_q;
    wire i_mul19_conv2d3x330_im8_cma_ena0;
    wire i_mul19_conv2d3x330_im8_cma_ena1;
    wire i_mul19_conv2d3x330_im8_cma_ena2;
    wire i_mul3_conv2d3x38_im0_cma_reset;
    wire [13:0] i_mul3_conv2d3x38_im0_cma_a0;
    wire [13:0] i_mul3_conv2d3x38_im0_cma_c0;
    wire [27:0] i_mul3_conv2d3x38_im0_cma_s0;
    wire [27:0] i_mul3_conv2d3x38_im0_cma_qq;
    wire [27:0] i_mul3_conv2d3x38_im0_cma_q;
    wire i_mul3_conv2d3x38_im0_cma_ena0;
    wire i_mul3_conv2d3x38_im0_cma_ena1;
    wire i_mul3_conv2d3x38_im0_cma_ena2;
    wire i_mul3_conv2d3x38_im8_cma_reset;
    wire [17:0] i_mul3_conv2d3x38_im8_cma_a0;
    wire [17:0] i_mul3_conv2d3x38_im8_cma_c0;
    wire [35:0] i_mul3_conv2d3x38_im8_cma_s0;
    wire [35:0] i_mul3_conv2d3x38_im8_cma_qq;
    wire [35:0] i_mul3_conv2d3x38_im8_cma_q;
    wire i_mul3_conv2d3x38_im8_cma_ena0;
    wire i_mul3_conv2d3x38_im8_cma_ena1;
    wire i_mul3_conv2d3x38_im8_cma_ena2;
    wire i_mul4_conv2d3x318_im0_cma_reset;
    wire [13:0] i_mul4_conv2d3x318_im0_cma_a0;
    wire [13:0] i_mul4_conv2d3x318_im0_cma_c0;
    wire [27:0] i_mul4_conv2d3x318_im0_cma_s0;
    wire [27:0] i_mul4_conv2d3x318_im0_cma_qq;
    wire [27:0] i_mul4_conv2d3x318_im0_cma_q;
    wire i_mul4_conv2d3x318_im0_cma_ena0;
    wire i_mul4_conv2d3x318_im0_cma_ena1;
    wire i_mul4_conv2d3x318_im0_cma_ena2;
    wire i_mul4_conv2d3x318_im8_cma_reset;
    wire [17:0] i_mul4_conv2d3x318_im8_cma_a0;
    wire [17:0] i_mul4_conv2d3x318_im8_cma_c0;
    wire [35:0] i_mul4_conv2d3x318_im8_cma_s0;
    wire [35:0] i_mul4_conv2d3x318_im8_cma_qq;
    wire [35:0] i_mul4_conv2d3x318_im8_cma_q;
    wire i_mul4_conv2d3x318_im8_cma_ena0;
    wire i_mul4_conv2d3x318_im8_cma_ena1;
    wire i_mul4_conv2d3x318_im8_cma_ena2;
    wire i_mul5_conv2d3x319_im0_cma_reset;
    wire [13:0] i_mul5_conv2d3x319_im0_cma_a0;
    wire [13:0] i_mul5_conv2d3x319_im0_cma_c0;
    wire [27:0] i_mul5_conv2d3x319_im0_cma_s0;
    wire [27:0] i_mul5_conv2d3x319_im0_cma_qq;
    wire [27:0] i_mul5_conv2d3x319_im0_cma_q;
    wire i_mul5_conv2d3x319_im0_cma_ena0;
    wire i_mul5_conv2d3x319_im0_cma_ena1;
    wire i_mul5_conv2d3x319_im0_cma_ena2;
    wire i_mul5_conv2d3x319_im8_cma_reset;
    wire [17:0] i_mul5_conv2d3x319_im8_cma_a0;
    wire [17:0] i_mul5_conv2d3x319_im8_cma_c0;
    wire [35:0] i_mul5_conv2d3x319_im8_cma_s0;
    wire [35:0] i_mul5_conv2d3x319_im8_cma_qq;
    wire [35:0] i_mul5_conv2d3x319_im8_cma_q;
    wire i_mul5_conv2d3x319_im8_cma_ena0;
    wire i_mul5_conv2d3x319_im8_cma_ena1;
    wire i_mul5_conv2d3x319_im8_cma_ena2;
    wire i_mul64_conv2d3x334_im0_cma_reset;
    wire [13:0] i_mul64_conv2d3x334_im0_cma_a0;
    wire [13:0] i_mul64_conv2d3x334_im0_cma_c0;
    wire [27:0] i_mul64_conv2d3x334_im0_cma_s0;
    wire [27:0] i_mul64_conv2d3x334_im0_cma_qq;
    wire [27:0] i_mul64_conv2d3x334_im0_cma_q;
    wire i_mul64_conv2d3x334_im0_cma_ena0;
    wire i_mul64_conv2d3x334_im0_cma_ena1;
    wire i_mul64_conv2d3x334_im0_cma_ena2;
    wire i_mul64_conv2d3x334_im8_cma_reset;
    wire [17:0] i_mul64_conv2d3x334_im8_cma_a0;
    wire [17:0] i_mul64_conv2d3x334_im8_cma_c0;
    wire [35:0] i_mul64_conv2d3x334_im8_cma_s0;
    wire [35:0] i_mul64_conv2d3x334_im8_cma_qq;
    wire [35:0] i_mul64_conv2d3x334_im8_cma_q;
    wire i_mul64_conv2d3x334_im8_cma_ena0;
    wire i_mul64_conv2d3x334_im8_cma_ena1;
    wire i_mul64_conv2d3x334_im8_cma_ena2;
    wire i_mul19_conv2d3x330_ma3_cma_reset;
    wire [13:0] i_mul19_conv2d3x330_ma3_cma_a0;
    wire [17:0] i_mul19_conv2d3x330_ma3_cma_c0;
    wire [13:0] i_mul19_conv2d3x330_ma3_cma_a1;
    wire [17:0] i_mul19_conv2d3x330_ma3_cma_c1;
    wire [32:0] i_mul19_conv2d3x330_ma3_cma_s0;
    wire [32:0] i_mul19_conv2d3x330_ma3_cma_qq;
    wire [32:0] i_mul19_conv2d3x330_ma3_cma_q;
    wire i_mul19_conv2d3x330_ma3_cma_ena0;
    wire i_mul19_conv2d3x330_ma3_cma_ena1;
    wire i_mul19_conv2d3x330_ma3_cma_ena2;
    wire i_mul3_conv2d3x38_ma3_cma_reset;
    wire [13:0] i_mul3_conv2d3x38_ma3_cma_a0;
    wire [17:0] i_mul3_conv2d3x38_ma3_cma_c0;
    wire [13:0] i_mul3_conv2d3x38_ma3_cma_a1;
    wire [17:0] i_mul3_conv2d3x38_ma3_cma_c1;
    wire [32:0] i_mul3_conv2d3x38_ma3_cma_s0;
    wire [32:0] i_mul3_conv2d3x38_ma3_cma_qq;
    wire [32:0] i_mul3_conv2d3x38_ma3_cma_q;
    wire i_mul3_conv2d3x38_ma3_cma_ena0;
    wire i_mul3_conv2d3x38_ma3_cma_ena1;
    wire i_mul3_conv2d3x38_ma3_cma_ena2;
    wire i_mul4_conv2d3x318_ma3_cma_reset;
    wire [13:0] i_mul4_conv2d3x318_ma3_cma_a0;
    wire [17:0] i_mul4_conv2d3x318_ma3_cma_c0;
    wire [13:0] i_mul4_conv2d3x318_ma3_cma_a1;
    wire [17:0] i_mul4_conv2d3x318_ma3_cma_c1;
    wire [32:0] i_mul4_conv2d3x318_ma3_cma_s0;
    wire [32:0] i_mul4_conv2d3x318_ma3_cma_qq;
    wire [32:0] i_mul4_conv2d3x318_ma3_cma_q;
    wire i_mul4_conv2d3x318_ma3_cma_ena0;
    wire i_mul4_conv2d3x318_ma3_cma_ena1;
    wire i_mul4_conv2d3x318_ma3_cma_ena2;
    wire i_mul5_conv2d3x319_ma3_cma_reset;
    wire [13:0] i_mul5_conv2d3x319_ma3_cma_a0;
    wire [17:0] i_mul5_conv2d3x319_ma3_cma_c0;
    wire [13:0] i_mul5_conv2d3x319_ma3_cma_a1;
    wire [17:0] i_mul5_conv2d3x319_ma3_cma_c1;
    wire [32:0] i_mul5_conv2d3x319_ma3_cma_s0;
    wire [32:0] i_mul5_conv2d3x319_ma3_cma_qq;
    wire [32:0] i_mul5_conv2d3x319_ma3_cma_q;
    wire i_mul5_conv2d3x319_ma3_cma_ena0;
    wire i_mul5_conv2d3x319_ma3_cma_ena1;
    wire i_mul5_conv2d3x319_ma3_cma_ena2;
    wire i_mul64_conv2d3x334_ma3_cma_reset;
    wire [13:0] i_mul64_conv2d3x334_ma3_cma_a0;
    wire [17:0] i_mul64_conv2d3x334_ma3_cma_c0;
    wire [13:0] i_mul64_conv2d3x334_ma3_cma_a1;
    wire [17:0] i_mul64_conv2d3x334_ma3_cma_c1;
    wire [32:0] i_mul64_conv2d3x334_ma3_cma_s0;
    wire [32:0] i_mul64_conv2d3x334_ma3_cma_qq;
    wire [32:0] i_mul64_conv2d3x334_ma3_cma_q;
    wire i_mul64_conv2d3x334_ma3_cma_ena0;
    wire i_mul64_conv2d3x334_ma3_cma_ena1;
    wire i_mul64_conv2d3x334_ma3_cma_ena2;
    wire [13:0] i_mul64_conv2d3x334_bs2_merged_bit_select_b;
    wire [17:0] i_mul64_conv2d3x334_bs2_merged_bit_select_c;
    wire [13:0] i_mul4_conv2d3x318_bs1_merged_bit_select_b;
    wire [17:0] i_mul4_conv2d3x318_bs1_merged_bit_select_c;
    wire [13:0] i_mul19_conv2d3x330_bs2_merged_bit_select_b;
    wire [17:0] i_mul19_conv2d3x330_bs2_merged_bit_select_c;
    wire [13:0] i_mul5_conv2d3x319_bs2_merged_bit_select_b;
    wire [17:0] i_mul5_conv2d3x319_bs2_merged_bit_select_c;
    wire [13:0] i_mul5_conv2d3x319_bs1_merged_bit_select_b;
    wire [17:0] i_mul5_conv2d3x319_bs1_merged_bit_select_c;
    wire [13:0] i_mul3_conv2d3x38_bs1_merged_bit_select_b;
    wire [17:0] i_mul3_conv2d3x38_bs1_merged_bit_select_c;
    wire [13:0] i_mul19_conv2d3x330_bs1_merged_bit_select_b;
    wire [17:0] i_mul19_conv2d3x330_bs1_merged_bit_select_c;
    reg [0:0] redist0_sync_together86_aunroll_x_in_i_valid_2_q;
    reg [0:0] redist0_sync_together86_aunroll_x_in_i_valid_2_delay_0;
    reg [0:0] redist1_sync_together86_aunroll_x_in_i_valid_3_q;
    reg [0:0] redist2_sync_together86_aunroll_x_in_i_valid_6_q;
    reg [0:0] redist2_sync_together86_aunroll_x_in_i_valid_6_delay_0;
    reg [0:0] redist2_sync_together86_aunroll_x_in_i_valid_6_delay_1;
    reg [0:0] redist3_sync_together86_aunroll_x_in_i_valid_7_q;
    reg [31:0] redist7_bgTrunc_i_mul64_conv2d3x334_sel_x_b_2_q;
    reg [31:0] redist7_bgTrunc_i_mul64_conv2d3x334_sel_x_b_2_delay_0;
    reg [31:0] redist8_bgTrunc_i_mul5_conv2d3x319_sel_x_b_1_q;
    reg [31:0] redist9_bgTrunc_i_mul3_conv2d3x38_sel_x_b_1_q;
    reg [31:0] redist10_bgTrunc_i_mul19_conv2d3x330_sel_x_b_1_q;
    reg [31:0] redist11_bgTrunc_i_add20_conv2d3x332_sel_x_b_1_q;
    reg [31:0] redist4_i_conv_conv2d3x32_sel_x_b_4_outputreg0_q;
    wire redist4_i_conv_conv2d3x32_sel_x_b_4_mem_reset0;
    wire [31:0] redist4_i_conv_conv2d3x32_sel_x_b_4_mem_ia;
    wire [0:0] redist4_i_conv_conv2d3x32_sel_x_b_4_mem_aa;
    wire [0:0] redist4_i_conv_conv2d3x32_sel_x_b_4_mem_ab;
    wire [31:0] redist4_i_conv_conv2d3x32_sel_x_b_4_mem_iq;
    wire [31:0] redist4_i_conv_conv2d3x32_sel_x_b_4_mem_q;
    wire [0:0] redist4_i_conv_conv2d3x32_sel_x_b_4_rdcnt_q;
    (* preserve *) reg [0:0] redist4_i_conv_conv2d3x32_sel_x_b_4_rdcnt_i;
    reg [0:0] redist4_i_conv_conv2d3x32_sel_x_b_4_wraddr_q;
    (* dont_merge *) reg [0:0] redist4_i_conv_conv2d3x32_sel_x_b_4_cmpReg_q;
    wire [0:0] redist4_i_conv_conv2d3x32_sel_x_b_4_notEnable_q;
    wire [0:0] redist4_i_conv_conv2d3x32_sel_x_b_4_nor_q;
    (* dont_merge *) reg [0:0] redist4_i_conv_conv2d3x32_sel_x_b_4_sticky_ena_q;
    wire [0:0] redist4_i_conv_conv2d3x32_sel_x_b_4_enaAnd_q;
    reg [31:0] redist5_i_conv_conv2d3x32_sel_x_b_8_outputreg0_q;
    wire redist5_i_conv_conv2d3x32_sel_x_b_8_mem_reset0;
    wire [31:0] redist5_i_conv_conv2d3x32_sel_x_b_8_mem_ia;
    wire [0:0] redist5_i_conv_conv2d3x32_sel_x_b_8_mem_aa;
    wire [0:0] redist5_i_conv_conv2d3x32_sel_x_b_8_mem_ab;
    wire [31:0] redist5_i_conv_conv2d3x32_sel_x_b_8_mem_iq;
    wire [31:0] redist5_i_conv_conv2d3x32_sel_x_b_8_mem_q;
    wire [0:0] redist5_i_conv_conv2d3x32_sel_x_b_8_rdcnt_q;
    (* preserve *) reg [0:0] redist5_i_conv_conv2d3x32_sel_x_b_8_rdcnt_i;
    reg [0:0] redist5_i_conv_conv2d3x32_sel_x_b_8_wraddr_q;
    (* dont_merge *) reg [0:0] redist5_i_conv_conv2d3x32_sel_x_b_8_cmpReg_q;
    wire [0:0] redist5_i_conv_conv2d3x32_sel_x_b_8_notEnable_q;
    wire [0:0] redist5_i_conv_conv2d3x32_sel_x_b_8_nor_q;
    (* dont_merge *) reg [0:0] redist5_i_conv_conv2d3x32_sel_x_b_8_sticky_ena_q;
    wire [0:0] redist5_i_conv_conv2d3x32_sel_x_b_8_enaAnd_q;
    wire redist6_i_conv2_conv2d3x33_sel_x_b_3_mem_reset0;
    wire [31:0] redist6_i_conv2_conv2d3x33_sel_x_b_3_mem_ia;
    wire [0:0] redist6_i_conv2_conv2d3x33_sel_x_b_3_mem_aa;
    wire [0:0] redist6_i_conv2_conv2d3x33_sel_x_b_3_mem_ab;
    wire [31:0] redist6_i_conv2_conv2d3x33_sel_x_b_3_mem_iq;
    wire [31:0] redist6_i_conv2_conv2d3x33_sel_x_b_3_mem_q;
    wire [0:0] redist6_i_conv2_conv2d3x33_sel_x_b_3_rdcnt_q;
    (* preserve *) reg [0:0] redist6_i_conv2_conv2d3x33_sel_x_b_3_rdcnt_i;
    reg [0:0] redist6_i_conv2_conv2d3x33_sel_x_b_3_wraddr_q;
    (* dont_merge *) reg [0:0] redist6_i_conv2_conv2d3x33_sel_x_b_3_cmpReg_q;
    wire [0:0] redist6_i_conv2_conv2d3x33_sel_x_b_3_notEnable_q;
    wire [0:0] redist6_i_conv2_conv2d3x33_sel_x_b_3_nor_q;
    (* dont_merge *) reg [0:0] redist6_i_conv2_conv2d3x33_sel_x_b_3_sticky_ena_q;
    wire [0:0] redist6_i_conv2_conv2d3x33_sel_x_b_3_enaAnd_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist0_sync_together86_aunroll_x_in_i_valid_2(DELAY,305)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_sync_together86_aunroll_x_in_i_valid_2_delay_0 <= '0;
            redist0_sync_together86_aunroll_x_in_i_valid_2_q <= '0;
        end
        else
        begin
            redist0_sync_together86_aunroll_x_in_i_valid_2_delay_0 <= $unsigned(in_i_valid);
            redist0_sync_together86_aunroll_x_in_i_valid_2_q <= redist0_sync_together86_aunroll_x_in_i_valid_2_delay_0;
        end
    end

    // redist1_sync_together86_aunroll_x_in_i_valid_3(DELAY,306)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together86_aunroll_x_in_i_valid_3_q <= '0;
        end
        else
        begin
            redist1_sync_together86_aunroll_x_in_i_valid_3_q <= $unsigned(redist0_sync_together86_aunroll_x_in_i_valid_2_q);
        end
    end

    // redist2_sync_together86_aunroll_x_in_i_valid_6(DELAY,307)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_sync_together86_aunroll_x_in_i_valid_6_delay_0 <= '0;
            redist2_sync_together86_aunroll_x_in_i_valid_6_delay_1 <= '0;
            redist2_sync_together86_aunroll_x_in_i_valid_6_q <= '0;
        end
        else
        begin
            redist2_sync_together86_aunroll_x_in_i_valid_6_delay_0 <= $unsigned(redist1_sync_together86_aunroll_x_in_i_valid_3_q);
            redist2_sync_together86_aunroll_x_in_i_valid_6_delay_1 <= redist2_sync_together86_aunroll_x_in_i_valid_6_delay_0;
            redist2_sync_together86_aunroll_x_in_i_valid_6_q <= redist2_sync_together86_aunroll_x_in_i_valid_6_delay_1;
        end
    end

    // redist3_sync_together86_aunroll_x_in_i_valid_7(DELAY,308)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_sync_together86_aunroll_x_in_i_valid_7_q <= '0;
        end
        else
        begin
            redist3_sync_together86_aunroll_x_in_i_valid_7_q <= $unsigned(redist2_sync_together86_aunroll_x_in_i_valid_6_q);
        end
    end

    // valid_fanout_reg0(REG,163)@8 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist3_sync_together86_aunroll_x_in_i_valid_7_q);
        end
    end

    // i_unnamed_conv2d3x353(LOGICAL,91)@9
    assign i_unnamed_conv2d3x353_q = i_cmp61_conv2d3x324_c ^ VCC_q;

    // valid_fanout_reg9(REG,172)@8 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg9_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg9_q <= $unsigned(redist3_sync_together86_aunroll_x_in_i_valid_7_q);
        end
    end

    // i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer6_conv2d3x326(BLACKBOX,59)@0
    // in in_i_dependence@9
    // in in_valid_in@9
    // out out_buffer_out@9
    // out out_valid_out@9
    conv2d3x3_i_llvm_fpga_sync_buffer_i32_in0000nnels_sync_buffer6_0 thei_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer6_conv2d3x326 (
        .in_buffer_in(in_input_channels),
        .in_i_dependence(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg9_q),
        .out_buffer_out(i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer6_conv2d3x326_out_buffer_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_071_recast_x(CONSTANT,127)
    assign c_i32_071_recast_x_q = $unsigned(32'b00000000000000000000000000000000);

    // i_cmp1057_conv2d3x327(COMPARE,42)@9
    assign i_cmp1057_conv2d3x327_a = $unsigned({{2{c_i32_071_recast_x_q[31]}}, c_i32_071_recast_x_q});
    assign i_cmp1057_conv2d3x327_b = $unsigned({{2{i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer6_conv2d3x326_out_buffer_out[31]}}, i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer6_conv2d3x326_out_buffer_out});
    assign i_cmp1057_conv2d3x327_o = $unsigned($signed(i_cmp1057_conv2d3x327_a) - $signed(i_cmp1057_conv2d3x327_b));
    assign i_cmp1057_conv2d3x327_c[0] = i_cmp1057_conv2d3x327_o[33];

    // i_unnamed_conv2d3x352(LOGICAL,90)@9
    assign i_unnamed_conv2d3x352_q = i_cmp61_conv2d3x324_c & i_cmp1057_conv2d3x327_c;

    // valid_fanout_reg15(REG,178)@8 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg15_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg15_q <= $unsigned(redist3_sync_together86_aunroll_x_in_i_valid_7_q);
        end
    end

    // i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer9_conv2d3x349(BLACKBOX,63)@0
    // in in_i_dependence@9
    // in in_valid_in@9
    // out out_buffer_out@9
    // out out_valid_out@9
    conv2d3x3_i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer9_0 thei_llvm_fpga_sync_buffer_i32_input_size_sync_buffer9_conv2d3x349 (
        .in_buffer_in(in_input_size),
        .in_i_dependence(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg15_q),
        .out_buffer_out(i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer9_conv2d3x349_out_buffer_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_cmp31_2_conv2d3x350(COMPARE,47)@9
    assign i_cmp31_2_conv2d3x350_a = $unsigned({{2{bgTrunc_i_sub_2_conv2d3x346_sel_x_b[31]}}, bgTrunc_i_sub_2_conv2d3x346_sel_x_b});
    assign i_cmp31_2_conv2d3x350_b = $unsigned({{2{i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer9_conv2d3x349_out_buffer_out[31]}}, i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer9_conv2d3x349_out_buffer_out});
    assign i_cmp31_2_conv2d3x350_o = $unsigned($signed(i_cmp31_2_conv2d3x350_a) - $signed(i_cmp31_2_conv2d3x350_b));
    assign i_cmp31_2_conv2d3x350_c[0] = i_cmp31_2_conv2d3x350_o[33];

    // c_i32_172_recast_x(CONSTANT,128)
    assign c_i32_172_recast_x_q = $unsigned(32'b11111111111111111111111111111111);

    // i_cmp29_2_conv2d3x347(COMPARE,44)@9
    assign i_cmp29_2_conv2d3x347_a = $unsigned({{2{c_i32_172_recast_x_q[31]}}, c_i32_172_recast_x_q});
    assign i_cmp29_2_conv2d3x347_b = $unsigned({{2{bgTrunc_i_sub_2_conv2d3x346_sel_x_b[31]}}, bgTrunc_i_sub_2_conv2d3x346_sel_x_b});
    assign i_cmp29_2_conv2d3x347_o = $unsigned($signed(i_cmp29_2_conv2d3x347_a) - $signed(i_cmp29_2_conv2d3x347_b));
    assign i_cmp29_2_conv2d3x347_c[0] = i_cmp29_2_conv2d3x347_o[33];

    // c_i32_274(CONSTANT,29)
    assign c_i32_274_q = $unsigned(32'b00000000000000000000000000000010);

    // i_sub_2_conv2d3x346(ADD,89)@9
    assign i_sub_2_conv2d3x346_a = {1'b0, redist11_bgTrunc_i_add20_conv2d3x332_sel_x_b_1_q};
    assign i_sub_2_conv2d3x346_b = {1'b0, c_i32_274_q};
    assign i_sub_2_conv2d3x346_o = $unsigned(i_sub_2_conv2d3x346_a) + $unsigned(i_sub_2_conv2d3x346_b);
    assign i_sub_2_conv2d3x346_q = i_sub_2_conv2d3x346_o[32:0];

    // bgTrunc_i_sub_2_conv2d3x346_sel_x(BITSELECT,126)@9
    assign bgTrunc_i_sub_2_conv2d3x346_sel_x_b = i_sub_2_conv2d3x346_q[31:0];

    // valid_fanout_reg14(REG,177)@8 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg14_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg14_q <= $unsigned(redist3_sync_together86_aunroll_x_in_i_valid_7_q);
        end
    end

    // i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer11_conv2d3x343(BLACKBOX,61)@0
    // in in_i_dependence@9
    // in in_valid_in@9
    // out out_buffer_out@9
    // out out_valid_out@9
    conv2d3x3_i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer11_0 thei_llvm_fpga_sync_buffer_i32_input_size_sync_buffer11_conv2d3x343 (
        .in_buffer_in(in_input_size),
        .in_i_dependence(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg14_q),
        .out_buffer_out(i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer11_conv2d3x343_out_buffer_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_cmp31_1_conv2d3x344(COMPARE,46)@9
    assign i_cmp31_1_conv2d3x344_a = $unsigned({{2{bgTrunc_i_sub_1_conv2d3x340_sel_x_b[31]}}, bgTrunc_i_sub_1_conv2d3x340_sel_x_b});
    assign i_cmp31_1_conv2d3x344_b = $unsigned({{2{i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer11_conv2d3x343_out_buffer_out[31]}}, i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer11_conv2d3x343_out_buffer_out});
    assign i_cmp31_1_conv2d3x344_o = $unsigned($signed(i_cmp31_1_conv2d3x344_a) - $signed(i_cmp31_1_conv2d3x344_b));
    assign i_cmp31_1_conv2d3x344_c[0] = i_cmp31_1_conv2d3x344_o[33];

    // i_cmp29_1_conv2d3x341(COMPARE,43)@9
    assign i_cmp29_1_conv2d3x341_a = $unsigned({{2{c_i32_172_recast_x_q[31]}}, c_i32_172_recast_x_q});
    assign i_cmp29_1_conv2d3x341_b = $unsigned({{2{bgTrunc_i_sub_1_conv2d3x340_sel_x_b[31]}}, bgTrunc_i_sub_1_conv2d3x340_sel_x_b});
    assign i_cmp29_1_conv2d3x341_o = $unsigned($signed(i_cmp29_1_conv2d3x341_a) - $signed(i_cmp29_1_conv2d3x341_b));
    assign i_cmp29_1_conv2d3x341_c[0] = i_cmp29_1_conv2d3x341_o[33];

    // c_i32_173(CONSTANT,28)
    assign c_i32_173_q = $unsigned(32'b00000000000000000000000000000001);

    // i_sub_1_conv2d3x340(ADD,88)@9
    assign i_sub_1_conv2d3x340_a = {1'b0, redist11_bgTrunc_i_add20_conv2d3x332_sel_x_b_1_q};
    assign i_sub_1_conv2d3x340_b = {1'b0, c_i32_173_q};
    assign i_sub_1_conv2d3x340_o = $unsigned(i_sub_1_conv2d3x340_a) + $unsigned(i_sub_1_conv2d3x340_b);
    assign i_sub_1_conv2d3x340_q = i_sub_1_conv2d3x340_o[32:0];

    // bgTrunc_i_sub_1_conv2d3x340_sel_x(BITSELECT,125)@9
    assign bgTrunc_i_sub_1_conv2d3x340_sel_x_b = i_sub_1_conv2d3x340_q[31:0];

    // valid_fanout_reg13(REG,176)@8 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg13_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg13_q <= $unsigned(redist3_sync_together86_aunroll_x_in_i_valid_7_q);
        end
    end

    // i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer15_conv2d3x337(BLACKBOX,62)@0
    // in in_i_dependence@9
    // in in_valid_in@9
    // out out_buffer_out@9
    // out out_valid_out@9
    conv2d3x3_i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer15_0 thei_llvm_fpga_sync_buffer_i32_input_size_sync_buffer15_conv2d3x337 (
        .in_buffer_in(in_input_size),
        .in_i_dependence(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg13_q),
        .out_buffer_out(i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer15_conv2d3x337_out_buffer_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_cmp31_conv2d3x338(COMPARE,48)@9
    assign i_cmp31_conv2d3x338_a = $unsigned({{2{redist11_bgTrunc_i_add20_conv2d3x332_sel_x_b_1_q[31]}}, redist11_bgTrunc_i_add20_conv2d3x332_sel_x_b_1_q});
    assign i_cmp31_conv2d3x338_b = $unsigned({{2{i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer15_conv2d3x337_out_buffer_out[31]}}, i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer15_conv2d3x337_out_buffer_out});
    assign i_cmp31_conv2d3x338_o = $unsigned($signed(i_cmp31_conv2d3x338_a) - $signed(i_cmp31_conv2d3x338_b));
    assign i_cmp31_conv2d3x338_c[0] = i_cmp31_conv2d3x338_o[33];

    // i_cmp29_conv2d3x335(COMPARE,45)@9
    assign i_cmp29_conv2d3x335_a = $unsigned({{2{c_i32_172_recast_x_q[31]}}, c_i32_172_recast_x_q});
    assign i_cmp29_conv2d3x335_b = $unsigned({{2{redist11_bgTrunc_i_add20_conv2d3x332_sel_x_b_1_q[31]}}, redist11_bgTrunc_i_add20_conv2d3x332_sel_x_b_1_q});
    assign i_cmp29_conv2d3x335_o = $unsigned($signed(i_cmp29_conv2d3x335_a) - $signed(i_cmp29_conv2d3x335_b));
    assign i_cmp29_conv2d3x335_c[0] = i_cmp29_conv2d3x335_o[33];

    // valid_fanout_reg12(REG,175)@3 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg12_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg12_q <= $unsigned(redist0_sync_together86_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer19_conv2d3x333(BLACKBOX,64)@0
    // in in_i_dependence@4
    // in in_valid_in@4
    // out out_buffer_out@4
    // out out_valid_out@4
    conv2d3x3_i_llvm_fpga_sync_buffer_i32_ou0000size_sync_buffer19_0 thei_llvm_fpga_sync_buffer_i32_output_size_sync_buffer19_conv2d3x333 (
        .in_buffer_in(in_output_size),
        .in_i_dependence(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg12_q),
        .out_buffer_out(i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer19_conv2d3x333_out_buffer_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_mul64_conv2d3x334_bs2_merged_bit_select(BITSELECT,298)@4
    assign i_mul64_conv2d3x334_bs2_merged_bit_select_b = i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer19_conv2d3x333_out_buffer_out[31:18];
    assign i_mul64_conv2d3x334_bs2_merged_bit_select_c = i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer19_conv2d3x333_out_buffer_out[17:0];

    // redist6_i_conv2_conv2d3x33_sel_x_b_3_notEnable(LOGICAL,339)
    assign redist6_i_conv2_conv2d3x33_sel_x_b_3_notEnable_q = $unsigned(~ (VCC_q));

    // redist6_i_conv2_conv2d3x33_sel_x_b_3_nor(LOGICAL,340)
    assign redist6_i_conv2_conv2d3x33_sel_x_b_3_nor_q = ~ (redist6_i_conv2_conv2d3x33_sel_x_b_3_notEnable_q | redist6_i_conv2_conv2d3x33_sel_x_b_3_sticky_ena_q);

    // redist6_i_conv2_conv2d3x33_sel_x_b_3_cmpReg(REG,338)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_i_conv2_conv2d3x33_sel_x_b_3_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist6_i_conv2_conv2d3x33_sel_x_b_3_cmpReg_q <= $unsigned(VCC_q);
        end
    end

    // redist6_i_conv2_conv2d3x33_sel_x_b_3_sticky_ena(REG,341)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_i_conv2_conv2d3x33_sel_x_b_3_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist6_i_conv2_conv2d3x33_sel_x_b_3_nor_q == 1'b1)
        begin
            redist6_i_conv2_conv2d3x33_sel_x_b_3_sticky_ena_q <= $unsigned(redist6_i_conv2_conv2d3x33_sel_x_b_3_cmpReg_q);
        end
    end

    // redist6_i_conv2_conv2d3x33_sel_x_b_3_enaAnd(LOGICAL,342)
    assign redist6_i_conv2_conv2d3x33_sel_x_b_3_enaAnd_q = redist6_i_conv2_conv2d3x33_sel_x_b_3_sticky_ena_q & VCC_q;

    // redist6_i_conv2_conv2d3x33_sel_x_b_3_rdcnt(COUNTER,336)
    // low=0, high=1, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_i_conv2_conv2d3x33_sel_x_b_3_rdcnt_i <= 1'd0;
        end
        else
        begin
            redist6_i_conv2_conv2d3x33_sel_x_b_3_rdcnt_i <= $unsigned(redist6_i_conv2_conv2d3x33_sel_x_b_3_rdcnt_i) + $unsigned(1'd1);
        end
    end
    assign redist6_i_conv2_conv2d3x33_sel_x_b_3_rdcnt_q = redist6_i_conv2_conv2d3x33_sel_x_b_3_rdcnt_i[0:0];

    // i_conv2_conv2d3x33_sel_x(BITSELECT,152)@1
    assign i_conv2_conv2d3x33_sel_x_b = in_c0_eni2_2_tpl[31:0];

    // redist6_i_conv2_conv2d3x33_sel_x_b_3_wraddr(REG,337)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_i_conv2_conv2d3x33_sel_x_b_3_wraddr_q <= $unsigned(1'b1);
        end
        else
        begin
            redist6_i_conv2_conv2d3x33_sel_x_b_3_wraddr_q <= $unsigned(redist6_i_conv2_conv2d3x33_sel_x_b_3_rdcnt_q);
        end
    end

    // redist6_i_conv2_conv2d3x33_sel_x_b_3_mem(DUALMEM,335)
    assign redist6_i_conv2_conv2d3x33_sel_x_b_3_mem_ia = $unsigned(i_conv2_conv2d3x33_sel_x_b);
    assign redist6_i_conv2_conv2d3x33_sel_x_b_3_mem_aa = redist6_i_conv2_conv2d3x33_sel_x_b_3_wraddr_q;
    assign redist6_i_conv2_conv2d3x33_sel_x_b_3_mem_ab = redist6_i_conv2_conv2d3x33_sel_x_b_3_rdcnt_q;
    assign redist6_i_conv2_conv2d3x33_sel_x_b_3_mem_reset0 = ~ (resetn);
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
    ) redist6_i_conv2_conv2d3x33_sel_x_b_3_mem_dmem (
        .clocken1(redist6_i_conv2_conv2d3x33_sel_x_b_3_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist6_i_conv2_conv2d3x33_sel_x_b_3_mem_reset0),
        .clock1(clock),
        .address_a(redist6_i_conv2_conv2d3x33_sel_x_b_3_mem_aa),
        .data_a(redist6_i_conv2_conv2d3x33_sel_x_b_3_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist6_i_conv2_conv2d3x33_sel_x_b_3_mem_ab),
        .q_b(redist6_i_conv2_conv2d3x33_sel_x_b_3_mem_iq),
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
    assign redist6_i_conv2_conv2d3x33_sel_x_b_3_mem_q = redist6_i_conv2_conv2d3x33_sel_x_b_3_mem_iq[31:0];

    // i_mul19_conv2d3x330_bs1_merged_bit_select(BITSELECT,304)@4
    assign i_mul19_conv2d3x330_bs1_merged_bit_select_b = redist6_i_conv2_conv2d3x33_sel_x_b_3_mem_q[31:18];
    assign i_mul19_conv2d3x330_bs1_merged_bit_select_c = redist6_i_conv2_conv2d3x33_sel_x_b_3_mem_q[17:0];

    // i_mul64_conv2d3x334_ma3_cma(CHAINMULTADD,297)@4 + 3
    assign i_mul64_conv2d3x334_ma3_cma_reset = ~ (resetn);
    assign i_mul64_conv2d3x334_ma3_cma_ena0 = 1'b1;
    assign i_mul64_conv2d3x334_ma3_cma_ena1 = i_mul64_conv2d3x334_ma3_cma_ena0;
    assign i_mul64_conv2d3x334_ma3_cma_ena2 = i_mul64_conv2d3x334_ma3_cma_ena0;

    assign i_mul64_conv2d3x334_ma3_cma_a0 = i_mul19_conv2d3x330_bs1_merged_bit_select_b;
    assign i_mul64_conv2d3x334_ma3_cma_c0 = i_mul64_conv2d3x334_bs2_merged_bit_select_c;
    assign i_mul64_conv2d3x334_ma3_cma_a1 = i_mul64_conv2d3x334_bs2_merged_bit_select_b;
    assign i_mul64_conv2d3x334_ma3_cma_c1 = i_mul19_conv2d3x330_bs1_merged_bit_select_c;
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
    ) i_mul64_conv2d3x334_ma3_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul64_conv2d3x334_ma3_cma_ena2, i_mul64_conv2d3x334_ma3_cma_ena1, i_mul64_conv2d3x334_ma3_cma_ena0 }),
        .aclr({ i_mul64_conv2d3x334_ma3_cma_reset, i_mul64_conv2d3x334_ma3_cma_reset }),
        .ay(i_mul64_conv2d3x334_ma3_cma_a1),
        .by(i_mul64_conv2d3x334_ma3_cma_a0),
        .ax(i_mul64_conv2d3x334_ma3_cma_c1),
        .bx(i_mul64_conv2d3x334_ma3_cma_c0),
        .resulta(i_mul64_conv2d3x334_ma3_cma_s0),
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
    i_mul64_conv2d3x334_ma3_cma_delay ( .xin(i_mul64_conv2d3x334_ma3_cma_s0), .xout(i_mul64_conv2d3x334_ma3_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul64_conv2d3x334_ma3_cma_q = $unsigned(i_mul64_conv2d3x334_ma3_cma_qq[32:0]);

    // i_mul64_conv2d3x334_sums_align_1(BITSHIFT,267)@7
    assign i_mul64_conv2d3x334_sums_align_1_qint = { i_mul64_conv2d3x334_ma3_cma_q, 18'b000000000000000000 };
    assign i_mul64_conv2d3x334_sums_align_1_q = i_mul64_conv2d3x334_sums_align_1_qint[50:0];

    // i_mul64_conv2d3x334_im0_cma(CHAINMULTADD,291)@4 + 3
    assign i_mul64_conv2d3x334_im0_cma_reset = ~ (resetn);
    assign i_mul64_conv2d3x334_im0_cma_ena0 = 1'b1;
    assign i_mul64_conv2d3x334_im0_cma_ena1 = i_mul64_conv2d3x334_im0_cma_ena0;
    assign i_mul64_conv2d3x334_im0_cma_ena2 = i_mul64_conv2d3x334_im0_cma_ena0;

    assign i_mul64_conv2d3x334_im0_cma_a0 = i_mul19_conv2d3x330_bs1_merged_bit_select_b;
    assign i_mul64_conv2d3x334_im0_cma_c0 = i_mul64_conv2d3x334_bs2_merged_bit_select_b;
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
    ) i_mul64_conv2d3x334_im0_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul64_conv2d3x334_im0_cma_ena2, i_mul64_conv2d3x334_im0_cma_ena1, i_mul64_conv2d3x334_im0_cma_ena0 }),
        .aclr({ i_mul64_conv2d3x334_im0_cma_reset, i_mul64_conv2d3x334_im0_cma_reset }),
        .ay(i_mul64_conv2d3x334_im0_cma_a0),
        .ax(i_mul64_conv2d3x334_im0_cma_c0),
        .resulta(i_mul64_conv2d3x334_im0_cma_s0),
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
    i_mul64_conv2d3x334_im0_cma_delay ( .xin(i_mul64_conv2d3x334_im0_cma_s0), .xout(i_mul64_conv2d3x334_im0_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul64_conv2d3x334_im0_cma_q = $unsigned(i_mul64_conv2d3x334_im0_cma_qq[27:0]);

    // i_mul64_conv2d3x334_im8_cma(CHAINMULTADD,292)@4 + 3
    assign i_mul64_conv2d3x334_im8_cma_reset = ~ (resetn);
    assign i_mul64_conv2d3x334_im8_cma_ena0 = 1'b1;
    assign i_mul64_conv2d3x334_im8_cma_ena1 = i_mul64_conv2d3x334_im8_cma_ena0;
    assign i_mul64_conv2d3x334_im8_cma_ena2 = i_mul64_conv2d3x334_im8_cma_ena0;

    assign i_mul64_conv2d3x334_im8_cma_a0 = i_mul19_conv2d3x330_bs1_merged_bit_select_c;
    assign i_mul64_conv2d3x334_im8_cma_c0 = i_mul64_conv2d3x334_bs2_merged_bit_select_c;
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
    ) i_mul64_conv2d3x334_im8_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul64_conv2d3x334_im8_cma_ena2, i_mul64_conv2d3x334_im8_cma_ena1, i_mul64_conv2d3x334_im8_cma_ena0 }),
        .aclr({ i_mul64_conv2d3x334_im8_cma_reset, i_mul64_conv2d3x334_im8_cma_reset }),
        .ay(i_mul64_conv2d3x334_im8_cma_a0),
        .ax(i_mul64_conv2d3x334_im8_cma_c0),
        .resulta(i_mul64_conv2d3x334_im8_cma_s0),
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
    i_mul64_conv2d3x334_im8_cma_delay ( .xin(i_mul64_conv2d3x334_im8_cma_s0), .xout(i_mul64_conv2d3x334_im8_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul64_conv2d3x334_im8_cma_q = $unsigned(i_mul64_conv2d3x334_im8_cma_qq[35:0]);

    // i_mul64_conv2d3x334_sums_join_0(BITJOIN,266)@7
    assign i_mul64_conv2d3x334_sums_join_0_q = {i_mul64_conv2d3x334_im0_cma_q, i_mul64_conv2d3x334_im8_cma_q};

    // i_mul64_conv2d3x334_sums_result_add_0_0(ADD,269)@7
    assign i_mul64_conv2d3x334_sums_result_add_0_0_a = {1'b0, i_mul64_conv2d3x334_sums_join_0_q};
    assign i_mul64_conv2d3x334_sums_result_add_0_0_b = {14'b00000000000000, i_mul64_conv2d3x334_sums_align_1_q};
    assign i_mul64_conv2d3x334_sums_result_add_0_0_o = $unsigned(i_mul64_conv2d3x334_sums_result_add_0_0_a) + $unsigned(i_mul64_conv2d3x334_sums_result_add_0_0_b);
    assign i_mul64_conv2d3x334_sums_result_add_0_0_q = i_mul64_conv2d3x334_sums_result_add_0_0_o[64:0];

    // bgTrunc_i_mul64_conv2d3x334_sel_x(BITSELECT,123)@7
    assign bgTrunc_i_mul64_conv2d3x334_sel_x_in = i_mul64_conv2d3x334_sums_result_add_0_0_q[63:0];
    assign bgTrunc_i_mul64_conv2d3x334_sel_x_b = bgTrunc_i_mul64_conv2d3x334_sel_x_in[31:0];

    // redist7_bgTrunc_i_mul64_conv2d3x334_sel_x_b_2(DELAY,312)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_bgTrunc_i_mul64_conv2d3x334_sel_x_b_2_delay_0 <= '0;
            redist7_bgTrunc_i_mul64_conv2d3x334_sel_x_b_2_q <= '0;
        end
        else
        begin
            redist7_bgTrunc_i_mul64_conv2d3x334_sel_x_b_2_delay_0 <= $unsigned(bgTrunc_i_mul64_conv2d3x334_sel_x_b);
            redist7_bgTrunc_i_mul64_conv2d3x334_sel_x_b_2_q <= redist7_bgTrunc_i_mul64_conv2d3x334_sel_x_b_2_delay_0;
        end
    end

    // valid_fanout_reg11(REG,174)@7 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg11_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg11_q <= $unsigned(redist2_sync_together86_aunroll_x_in_i_valid_6_q);
        end
    end

    // i_llvm_fpga_sync_buffer_i32_pad_sync_buffer17_conv2d3x331(BLACKBOX,67)@0
    // in in_i_dependence@8
    // in in_valid_in@8
    // out out_buffer_out@8
    // out out_valid_out@8
    conv2d3x3_i_llvm_fpga_sync_buffer_i32_pad_sync_buffer17_0 thei_llvm_fpga_sync_buffer_i32_pad_sync_buffer17_conv2d3x331 (
        .in_buffer_in(in_pad),
        .in_i_dependence(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg11_q),
        .out_buffer_out(i_llvm_fpga_sync_buffer_i32_pad_sync_buffer17_conv2d3x331_out_buffer_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg10(REG,173)@3 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg10_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg10_q <= $unsigned(redist0_sync_together86_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_sync_buffer_i32_stride_sync_buffer18_conv2d3x329(BLACKBOX,69)@0
    // in in_i_dependence@4
    // in in_valid_in@4
    // out out_buffer_out@4
    // out out_valid_out@4
    conv2d3x3_i_llvm_fpga_sync_buffer_i32_stride_sync_buffer18_0 thei_llvm_fpga_sync_buffer_i32_stride_sync_buffer18_conv2d3x329 (
        .in_buffer_in(in_stride),
        .in_i_dependence(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg10_q),
        .out_buffer_out(i_llvm_fpga_sync_buffer_i32_stride_sync_buffer18_conv2d3x329_out_buffer_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_mul19_conv2d3x330_bs2_merged_bit_select(BITSELECT,300)@4
    assign i_mul19_conv2d3x330_bs2_merged_bit_select_b = i_llvm_fpga_sync_buffer_i32_stride_sync_buffer18_conv2d3x329_out_buffer_out[31:18];
    assign i_mul19_conv2d3x330_bs2_merged_bit_select_c = i_llvm_fpga_sync_buffer_i32_stride_sync_buffer18_conv2d3x329_out_buffer_out[17:0];

    // i_mul19_conv2d3x330_ma3_cma(CHAINMULTADD,293)@4 + 3
    assign i_mul19_conv2d3x330_ma3_cma_reset = ~ (resetn);
    assign i_mul19_conv2d3x330_ma3_cma_ena0 = 1'b1;
    assign i_mul19_conv2d3x330_ma3_cma_ena1 = i_mul19_conv2d3x330_ma3_cma_ena0;
    assign i_mul19_conv2d3x330_ma3_cma_ena2 = i_mul19_conv2d3x330_ma3_cma_ena0;

    assign i_mul19_conv2d3x330_ma3_cma_a0 = i_mul19_conv2d3x330_bs1_merged_bit_select_b;
    assign i_mul19_conv2d3x330_ma3_cma_c0 = i_mul19_conv2d3x330_bs2_merged_bit_select_c;
    assign i_mul19_conv2d3x330_ma3_cma_a1 = i_mul19_conv2d3x330_bs2_merged_bit_select_b;
    assign i_mul19_conv2d3x330_ma3_cma_c1 = i_mul19_conv2d3x330_bs1_merged_bit_select_c;
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
    ) i_mul19_conv2d3x330_ma3_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul19_conv2d3x330_ma3_cma_ena2, i_mul19_conv2d3x330_ma3_cma_ena1, i_mul19_conv2d3x330_ma3_cma_ena0 }),
        .aclr({ i_mul19_conv2d3x330_ma3_cma_reset, i_mul19_conv2d3x330_ma3_cma_reset }),
        .ay(i_mul19_conv2d3x330_ma3_cma_a1),
        .by(i_mul19_conv2d3x330_ma3_cma_a0),
        .ax(i_mul19_conv2d3x330_ma3_cma_c1),
        .bx(i_mul19_conv2d3x330_ma3_cma_c0),
        .resulta(i_mul19_conv2d3x330_ma3_cma_s0),
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
    i_mul19_conv2d3x330_ma3_cma_delay ( .xin(i_mul19_conv2d3x330_ma3_cma_s0), .xout(i_mul19_conv2d3x330_ma3_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul19_conv2d3x330_ma3_cma_q = $unsigned(i_mul19_conv2d3x330_ma3_cma_qq[32:0]);

    // i_mul19_conv2d3x330_sums_align_1(BITSHIFT,207)@7
    assign i_mul19_conv2d3x330_sums_align_1_qint = { i_mul19_conv2d3x330_ma3_cma_q, 18'b000000000000000000 };
    assign i_mul19_conv2d3x330_sums_align_1_q = i_mul19_conv2d3x330_sums_align_1_qint[50:0];

    // i_mul19_conv2d3x330_im0_cma(CHAINMULTADD,283)@4 + 3
    assign i_mul19_conv2d3x330_im0_cma_reset = ~ (resetn);
    assign i_mul19_conv2d3x330_im0_cma_ena0 = 1'b1;
    assign i_mul19_conv2d3x330_im0_cma_ena1 = i_mul19_conv2d3x330_im0_cma_ena0;
    assign i_mul19_conv2d3x330_im0_cma_ena2 = i_mul19_conv2d3x330_im0_cma_ena0;

    assign i_mul19_conv2d3x330_im0_cma_a0 = i_mul19_conv2d3x330_bs1_merged_bit_select_b;
    assign i_mul19_conv2d3x330_im0_cma_c0 = i_mul19_conv2d3x330_bs2_merged_bit_select_b;
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
    ) i_mul19_conv2d3x330_im0_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul19_conv2d3x330_im0_cma_ena2, i_mul19_conv2d3x330_im0_cma_ena1, i_mul19_conv2d3x330_im0_cma_ena0 }),
        .aclr({ i_mul19_conv2d3x330_im0_cma_reset, i_mul19_conv2d3x330_im0_cma_reset }),
        .ay(i_mul19_conv2d3x330_im0_cma_a0),
        .ax(i_mul19_conv2d3x330_im0_cma_c0),
        .resulta(i_mul19_conv2d3x330_im0_cma_s0),
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
    i_mul19_conv2d3x330_im0_cma_delay ( .xin(i_mul19_conv2d3x330_im0_cma_s0), .xout(i_mul19_conv2d3x330_im0_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul19_conv2d3x330_im0_cma_q = $unsigned(i_mul19_conv2d3x330_im0_cma_qq[27:0]);

    // i_mul19_conv2d3x330_im8_cma(CHAINMULTADD,284)@4 + 3
    assign i_mul19_conv2d3x330_im8_cma_reset = ~ (resetn);
    assign i_mul19_conv2d3x330_im8_cma_ena0 = 1'b1;
    assign i_mul19_conv2d3x330_im8_cma_ena1 = i_mul19_conv2d3x330_im8_cma_ena0;
    assign i_mul19_conv2d3x330_im8_cma_ena2 = i_mul19_conv2d3x330_im8_cma_ena0;

    assign i_mul19_conv2d3x330_im8_cma_a0 = i_mul19_conv2d3x330_bs1_merged_bit_select_c;
    assign i_mul19_conv2d3x330_im8_cma_c0 = i_mul19_conv2d3x330_bs2_merged_bit_select_c;
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
    ) i_mul19_conv2d3x330_im8_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul19_conv2d3x330_im8_cma_ena2, i_mul19_conv2d3x330_im8_cma_ena1, i_mul19_conv2d3x330_im8_cma_ena0 }),
        .aclr({ i_mul19_conv2d3x330_im8_cma_reset, i_mul19_conv2d3x330_im8_cma_reset }),
        .ay(i_mul19_conv2d3x330_im8_cma_a0),
        .ax(i_mul19_conv2d3x330_im8_cma_c0),
        .resulta(i_mul19_conv2d3x330_im8_cma_s0),
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
    i_mul19_conv2d3x330_im8_cma_delay ( .xin(i_mul19_conv2d3x330_im8_cma_s0), .xout(i_mul19_conv2d3x330_im8_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul19_conv2d3x330_im8_cma_q = $unsigned(i_mul19_conv2d3x330_im8_cma_qq[35:0]);

    // i_mul19_conv2d3x330_sums_join_0(BITJOIN,206)@7
    assign i_mul19_conv2d3x330_sums_join_0_q = {i_mul19_conv2d3x330_im0_cma_q, i_mul19_conv2d3x330_im8_cma_q};

    // i_mul19_conv2d3x330_sums_result_add_0_0(ADD,209)@7
    assign i_mul19_conv2d3x330_sums_result_add_0_0_a = {1'b0, i_mul19_conv2d3x330_sums_join_0_q};
    assign i_mul19_conv2d3x330_sums_result_add_0_0_b = {14'b00000000000000, i_mul19_conv2d3x330_sums_align_1_q};
    assign i_mul19_conv2d3x330_sums_result_add_0_0_o = $unsigned(i_mul19_conv2d3x330_sums_result_add_0_0_a) + $unsigned(i_mul19_conv2d3x330_sums_result_add_0_0_b);
    assign i_mul19_conv2d3x330_sums_result_add_0_0_q = i_mul19_conv2d3x330_sums_result_add_0_0_o[64:0];

    // bgTrunc_i_mul19_conv2d3x330_sel_x(BITSELECT,119)@7
    assign bgTrunc_i_mul19_conv2d3x330_sel_x_in = i_mul19_conv2d3x330_sums_result_add_0_0_q[63:0];
    assign bgTrunc_i_mul19_conv2d3x330_sel_x_b = bgTrunc_i_mul19_conv2d3x330_sel_x_in[31:0];

    // redist10_bgTrunc_i_mul19_conv2d3x330_sel_x_b_1(DELAY,315)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_bgTrunc_i_mul19_conv2d3x330_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist10_bgTrunc_i_mul19_conv2d3x330_sel_x_b_1_q <= $unsigned(bgTrunc_i_mul19_conv2d3x330_sel_x_b);
        end
    end

    // i_add20_conv2d3x332(SUB,31)@8
    assign i_add20_conv2d3x332_a = {1'b0, redist10_bgTrunc_i_mul19_conv2d3x330_sel_x_b_1_q};
    assign i_add20_conv2d3x332_b = {1'b0, i_llvm_fpga_sync_buffer_i32_pad_sync_buffer17_conv2d3x331_out_buffer_out};
    assign i_add20_conv2d3x332_o = $unsigned(i_add20_conv2d3x332_a) - $unsigned(i_add20_conv2d3x332_b);
    assign i_add20_conv2d3x332_q = i_add20_conv2d3x332_o[32:0];

    // bgTrunc_i_add20_conv2d3x332_sel_x(BITSELECT,117)@8
    assign bgTrunc_i_add20_conv2d3x332_sel_x_b = $unsigned(i_add20_conv2d3x332_q[31:0]);

    // redist11_bgTrunc_i_add20_conv2d3x332_sel_x_b_1(DELAY,316)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_bgTrunc_i_add20_conv2d3x332_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist11_bgTrunc_i_add20_conv2d3x332_sel_x_b_1_q <= $unsigned(bgTrunc_i_add20_conv2d3x332_sel_x_b);
        end
    end

    // valid_fanout_reg8(REG,171)@8 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg8_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg8_q <= $unsigned(redist3_sync_together86_aunroll_x_in_i_valid_7_q);
        end
    end

    // i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer_conv2d3x323(BLACKBOX,66)@0
    // in in_i_dependence@9
    // in in_valid_in@9
    // out out_buffer_out@9
    // out out_valid_out@9
    conv2d3x3_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer_0 thei_llvm_fpga_sync_buffer_i32_output_size_sync_buffer_conv2d3x323 (
        .in_buffer_in(in_output_size),
        .in_i_dependence(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg8_q),
        .out_buffer_out(i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer_conv2d3x323_out_buffer_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_cmp61_conv2d3x324(COMPARE,49)@9
    assign i_cmp61_conv2d3x324_a = $unsigned({{2{c_i32_071_recast_x_q[31]}}, c_i32_071_recast_x_q});
    assign i_cmp61_conv2d3x324_b = $unsigned({{2{i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer_conv2d3x323_out_buffer_out[31]}}, i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer_conv2d3x323_out_buffer_out});
    assign i_cmp61_conv2d3x324_o = $unsigned($signed(i_cmp61_conv2d3x324_a) - $signed(i_cmp61_conv2d3x324_b));
    assign i_cmp61_conv2d3x324_c[0] = i_cmp61_conv2d3x324_o[33];

    // valid_fanout_reg5(REG,168)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg5_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg5_q <= $unsigned(redist1_sync_together86_aunroll_x_in_i_valid_3_q);
        end
    end

    // i_llvm_fpga_sync_buffer_i32_start_channel_sync_buffer_conv2d3x315(BLACKBOX,68)@0
    // in in_i_dependence@5
    // in in_valid_in@5
    // out out_buffer_out@5
    // out out_valid_out@5
    conv2d3x3_i_llvm_fpga_sync_buffer_i32_st0000hannel_sync_buffer_0 thei_llvm_fpga_sync_buffer_i32_start_channel_sync_buffer_conv2d3x315 (
        .in_buffer_in(in_start_channel),
        .in_i_dependence(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_buffer_out(i_llvm_fpga_sync_buffer_i32_start_channel_sync_buffer_conv2d3x315_out_buffer_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist4_i_conv_conv2d3x32_sel_x_b_4_notEnable(LOGICAL,322)
    assign redist4_i_conv_conv2d3x32_sel_x_b_4_notEnable_q = $unsigned(~ (VCC_q));

    // redist4_i_conv_conv2d3x32_sel_x_b_4_nor(LOGICAL,323)
    assign redist4_i_conv_conv2d3x32_sel_x_b_4_nor_q = ~ (redist4_i_conv_conv2d3x32_sel_x_b_4_notEnable_q | redist4_i_conv_conv2d3x32_sel_x_b_4_sticky_ena_q);

    // redist4_i_conv_conv2d3x32_sel_x_b_4_cmpReg(REG,321)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_i_conv_conv2d3x32_sel_x_b_4_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist4_i_conv_conv2d3x32_sel_x_b_4_cmpReg_q <= $unsigned(VCC_q);
        end
    end

    // redist4_i_conv_conv2d3x32_sel_x_b_4_sticky_ena(REG,324)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_i_conv_conv2d3x32_sel_x_b_4_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist4_i_conv_conv2d3x32_sel_x_b_4_nor_q == 1'b1)
        begin
            redist4_i_conv_conv2d3x32_sel_x_b_4_sticky_ena_q <= $unsigned(redist4_i_conv_conv2d3x32_sel_x_b_4_cmpReg_q);
        end
    end

    // redist4_i_conv_conv2d3x32_sel_x_b_4_enaAnd(LOGICAL,325)
    assign redist4_i_conv_conv2d3x32_sel_x_b_4_enaAnd_q = redist4_i_conv_conv2d3x32_sel_x_b_4_sticky_ena_q & VCC_q;

    // redist4_i_conv_conv2d3x32_sel_x_b_4_rdcnt(COUNTER,319)
    // low=0, high=1, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_i_conv_conv2d3x32_sel_x_b_4_rdcnt_i <= 1'd0;
        end
        else
        begin
            redist4_i_conv_conv2d3x32_sel_x_b_4_rdcnt_i <= $unsigned(redist4_i_conv_conv2d3x32_sel_x_b_4_rdcnt_i) + $unsigned(1'd1);
        end
    end
    assign redist4_i_conv_conv2d3x32_sel_x_b_4_rdcnt_q = redist4_i_conv_conv2d3x32_sel_x_b_4_rdcnt_i[0:0];

    // i_conv_conv2d3x32_sel_x(BITSELECT,153)@1
    assign i_conv_conv2d3x32_sel_x_b = in_c0_eni2_1_tpl[31:0];

    // redist4_i_conv_conv2d3x32_sel_x_b_4_wraddr(REG,320)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_i_conv_conv2d3x32_sel_x_b_4_wraddr_q <= $unsigned(1'b1);
        end
        else
        begin
            redist4_i_conv_conv2d3x32_sel_x_b_4_wraddr_q <= $unsigned(redist4_i_conv_conv2d3x32_sel_x_b_4_rdcnt_q);
        end
    end

    // redist4_i_conv_conv2d3x32_sel_x_b_4_mem(DUALMEM,318)
    assign redist4_i_conv_conv2d3x32_sel_x_b_4_mem_ia = $unsigned(i_conv_conv2d3x32_sel_x_b);
    assign redist4_i_conv_conv2d3x32_sel_x_b_4_mem_aa = redist4_i_conv_conv2d3x32_sel_x_b_4_wraddr_q;
    assign redist4_i_conv_conv2d3x32_sel_x_b_4_mem_ab = redist4_i_conv_conv2d3x32_sel_x_b_4_rdcnt_q;
    assign redist4_i_conv_conv2d3x32_sel_x_b_4_mem_reset0 = ~ (resetn);
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
    ) redist4_i_conv_conv2d3x32_sel_x_b_4_mem_dmem (
        .clocken1(redist4_i_conv_conv2d3x32_sel_x_b_4_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist4_i_conv_conv2d3x32_sel_x_b_4_mem_reset0),
        .clock1(clock),
        .address_a(redist4_i_conv_conv2d3x32_sel_x_b_4_mem_aa),
        .data_a(redist4_i_conv_conv2d3x32_sel_x_b_4_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist4_i_conv_conv2d3x32_sel_x_b_4_mem_ab),
        .q_b(redist4_i_conv_conv2d3x32_sel_x_b_4_mem_iq),
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
    assign redist4_i_conv_conv2d3x32_sel_x_b_4_mem_q = redist4_i_conv_conv2d3x32_sel_x_b_4_mem_iq[31:0];

    // redist4_i_conv_conv2d3x32_sel_x_b_4_outputreg0(DELAY,317)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_i_conv_conv2d3x32_sel_x_b_4_outputreg0_q <= '0;
        end
        else
        begin
            redist4_i_conv_conv2d3x32_sel_x_b_4_outputreg0_q <= $unsigned(redist4_i_conv_conv2d3x32_sel_x_b_4_mem_q);
        end
    end

    // i_add_conv2d3x316(ADD,32)@5
    assign i_add_conv2d3x316_a = {1'b0, redist4_i_conv_conv2d3x32_sel_x_b_4_outputreg0_q};
    assign i_add_conv2d3x316_b = {1'b0, i_llvm_fpga_sync_buffer_i32_start_channel_sync_buffer_conv2d3x315_out_buffer_out};
    assign i_add_conv2d3x316_o = $unsigned(i_add_conv2d3x316_a) + $unsigned(i_add_conv2d3x316_b);
    assign i_add_conv2d3x316_q = i_add_conv2d3x316_o[32:0];

    // bgTrunc_i_add_conv2d3x316_sel_x(BITSELECT,118)@5
    assign bgTrunc_i_add_conv2d3x316_sel_x_b = i_add_conv2d3x316_q[31:0];

    // i_mul5_conv2d3x319_bs2_merged_bit_select(BITSELECT,301)@5
    assign i_mul5_conv2d3x319_bs2_merged_bit_select_b = bgTrunc_i_add_conv2d3x316_sel_x_b[31:18];
    assign i_mul5_conv2d3x319_bs2_merged_bit_select_c = bgTrunc_i_add_conv2d3x316_sel_x_b[17:0];

    // valid_fanout_reg6(REG,169)@1 + 1
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

    // i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer20_conv2d3x317(BLACKBOX,65)@0
    // in in_i_dependence@2
    // in in_valid_in@2
    // out out_buffer_out@2
    // out out_valid_out@2
    conv2d3x3_i_llvm_fpga_sync_buffer_i32_ou0000size_sync_buffer20_0 thei_llvm_fpga_sync_buffer_i32_output_size_sync_buffer20_conv2d3x317 (
        .in_buffer_in(in_output_size),
        .in_i_dependence(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg6_q),
        .out_buffer_out(i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer20_conv2d3x317_out_buffer_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_mul4_conv2d3x318_bs1_merged_bit_select(BITSELECT,299)@2
    assign i_mul4_conv2d3x318_bs1_merged_bit_select_b = i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer20_conv2d3x317_out_buffer_out[31:18];
    assign i_mul4_conv2d3x318_bs1_merged_bit_select_c = i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer20_conv2d3x317_out_buffer_out[17:0];

    // i_mul4_conv2d3x318_ma3_cma(CHAINMULTADD,295)@2 + 3
    assign i_mul4_conv2d3x318_ma3_cma_reset = ~ (resetn);
    assign i_mul4_conv2d3x318_ma3_cma_ena0 = 1'b1;
    assign i_mul4_conv2d3x318_ma3_cma_ena1 = i_mul4_conv2d3x318_ma3_cma_ena0;
    assign i_mul4_conv2d3x318_ma3_cma_ena2 = i_mul4_conv2d3x318_ma3_cma_ena0;

    assign i_mul4_conv2d3x318_ma3_cma_a0 = i_mul4_conv2d3x318_bs1_merged_bit_select_b;
    assign i_mul4_conv2d3x318_ma3_cma_c0 = i_mul4_conv2d3x318_bs1_merged_bit_select_c;
    assign i_mul4_conv2d3x318_ma3_cma_a1 = i_mul4_conv2d3x318_bs1_merged_bit_select_b;
    assign i_mul4_conv2d3x318_ma3_cma_c1 = i_mul4_conv2d3x318_bs1_merged_bit_select_c;
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
    ) i_mul4_conv2d3x318_ma3_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul4_conv2d3x318_ma3_cma_ena2, i_mul4_conv2d3x318_ma3_cma_ena1, i_mul4_conv2d3x318_ma3_cma_ena0 }),
        .aclr({ i_mul4_conv2d3x318_ma3_cma_reset, i_mul4_conv2d3x318_ma3_cma_reset }),
        .ay(i_mul4_conv2d3x318_ma3_cma_a1),
        .by(i_mul4_conv2d3x318_ma3_cma_a0),
        .ax(i_mul4_conv2d3x318_ma3_cma_c1),
        .bx(i_mul4_conv2d3x318_ma3_cma_c0),
        .resulta(i_mul4_conv2d3x318_ma3_cma_s0),
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
    i_mul4_conv2d3x318_ma3_cma_delay ( .xin(i_mul4_conv2d3x318_ma3_cma_s0), .xout(i_mul4_conv2d3x318_ma3_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul4_conv2d3x318_ma3_cma_q = $unsigned(i_mul4_conv2d3x318_ma3_cma_qq[32:0]);

    // i_mul4_conv2d3x318_sums_align_1(BITSHIFT,237)@5
    assign i_mul4_conv2d3x318_sums_align_1_qint = { i_mul4_conv2d3x318_ma3_cma_q, 18'b000000000000000000 };
    assign i_mul4_conv2d3x318_sums_align_1_q = i_mul4_conv2d3x318_sums_align_1_qint[50:0];

    // i_mul4_conv2d3x318_im0_cma(CHAINMULTADD,287)@2 + 3
    assign i_mul4_conv2d3x318_im0_cma_reset = ~ (resetn);
    assign i_mul4_conv2d3x318_im0_cma_ena0 = 1'b1;
    assign i_mul4_conv2d3x318_im0_cma_ena1 = i_mul4_conv2d3x318_im0_cma_ena0;
    assign i_mul4_conv2d3x318_im0_cma_ena2 = i_mul4_conv2d3x318_im0_cma_ena0;

    assign i_mul4_conv2d3x318_im0_cma_a0 = i_mul4_conv2d3x318_bs1_merged_bit_select_b;
    assign i_mul4_conv2d3x318_im0_cma_c0 = i_mul4_conv2d3x318_bs1_merged_bit_select_b;
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
    ) i_mul4_conv2d3x318_im0_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul4_conv2d3x318_im0_cma_ena2, i_mul4_conv2d3x318_im0_cma_ena1, i_mul4_conv2d3x318_im0_cma_ena0 }),
        .aclr({ i_mul4_conv2d3x318_im0_cma_reset, i_mul4_conv2d3x318_im0_cma_reset }),
        .ay(i_mul4_conv2d3x318_im0_cma_a0),
        .ax(i_mul4_conv2d3x318_im0_cma_c0),
        .resulta(i_mul4_conv2d3x318_im0_cma_s0),
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
    i_mul4_conv2d3x318_im0_cma_delay ( .xin(i_mul4_conv2d3x318_im0_cma_s0), .xout(i_mul4_conv2d3x318_im0_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul4_conv2d3x318_im0_cma_q = $unsigned(i_mul4_conv2d3x318_im0_cma_qq[27:0]);

    // i_mul4_conv2d3x318_im8_cma(CHAINMULTADD,288)@2 + 3
    assign i_mul4_conv2d3x318_im8_cma_reset = ~ (resetn);
    assign i_mul4_conv2d3x318_im8_cma_ena0 = 1'b1;
    assign i_mul4_conv2d3x318_im8_cma_ena1 = i_mul4_conv2d3x318_im8_cma_ena0;
    assign i_mul4_conv2d3x318_im8_cma_ena2 = i_mul4_conv2d3x318_im8_cma_ena0;

    assign i_mul4_conv2d3x318_im8_cma_a0 = i_mul4_conv2d3x318_bs1_merged_bit_select_c;
    assign i_mul4_conv2d3x318_im8_cma_c0 = i_mul4_conv2d3x318_bs1_merged_bit_select_c;
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
    ) i_mul4_conv2d3x318_im8_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul4_conv2d3x318_im8_cma_ena2, i_mul4_conv2d3x318_im8_cma_ena1, i_mul4_conv2d3x318_im8_cma_ena0 }),
        .aclr({ i_mul4_conv2d3x318_im8_cma_reset, i_mul4_conv2d3x318_im8_cma_reset }),
        .ay(i_mul4_conv2d3x318_im8_cma_a0),
        .ax(i_mul4_conv2d3x318_im8_cma_c0),
        .resulta(i_mul4_conv2d3x318_im8_cma_s0),
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
    i_mul4_conv2d3x318_im8_cma_delay ( .xin(i_mul4_conv2d3x318_im8_cma_s0), .xout(i_mul4_conv2d3x318_im8_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul4_conv2d3x318_im8_cma_q = $unsigned(i_mul4_conv2d3x318_im8_cma_qq[35:0]);

    // i_mul4_conv2d3x318_sums_join_0(BITJOIN,236)@5
    assign i_mul4_conv2d3x318_sums_join_0_q = {i_mul4_conv2d3x318_im0_cma_q, i_mul4_conv2d3x318_im8_cma_q};

    // i_mul4_conv2d3x318_sums_result_add_0_0(ADD,239)@5
    assign i_mul4_conv2d3x318_sums_result_add_0_0_a = {1'b0, i_mul4_conv2d3x318_sums_join_0_q};
    assign i_mul4_conv2d3x318_sums_result_add_0_0_b = {14'b00000000000000, i_mul4_conv2d3x318_sums_align_1_q};
    assign i_mul4_conv2d3x318_sums_result_add_0_0_o = $unsigned(i_mul4_conv2d3x318_sums_result_add_0_0_a) + $unsigned(i_mul4_conv2d3x318_sums_result_add_0_0_b);
    assign i_mul4_conv2d3x318_sums_result_add_0_0_q = i_mul4_conv2d3x318_sums_result_add_0_0_o[64:0];

    // bgTrunc_i_mul4_conv2d3x318_sel_x(BITSELECT,121)@5
    assign bgTrunc_i_mul4_conv2d3x318_sel_x_in = i_mul4_conv2d3x318_sums_result_add_0_0_q[63:0];
    assign bgTrunc_i_mul4_conv2d3x318_sel_x_b = bgTrunc_i_mul4_conv2d3x318_sel_x_in[31:0];

    // i_mul5_conv2d3x319_bs1_merged_bit_select(BITSELECT,302)@5
    assign i_mul5_conv2d3x319_bs1_merged_bit_select_b = bgTrunc_i_mul4_conv2d3x318_sel_x_b[31:18];
    assign i_mul5_conv2d3x319_bs1_merged_bit_select_c = bgTrunc_i_mul4_conv2d3x318_sel_x_b[17:0];

    // i_mul5_conv2d3x319_ma3_cma(CHAINMULTADD,296)@5 + 3
    assign i_mul5_conv2d3x319_ma3_cma_reset = ~ (resetn);
    assign i_mul5_conv2d3x319_ma3_cma_ena0 = 1'b1;
    assign i_mul5_conv2d3x319_ma3_cma_ena1 = i_mul5_conv2d3x319_ma3_cma_ena0;
    assign i_mul5_conv2d3x319_ma3_cma_ena2 = i_mul5_conv2d3x319_ma3_cma_ena0;

    assign i_mul5_conv2d3x319_ma3_cma_a0 = i_mul5_conv2d3x319_bs1_merged_bit_select_b;
    assign i_mul5_conv2d3x319_ma3_cma_c0 = i_mul5_conv2d3x319_bs2_merged_bit_select_c;
    assign i_mul5_conv2d3x319_ma3_cma_a1 = i_mul5_conv2d3x319_bs2_merged_bit_select_b;
    assign i_mul5_conv2d3x319_ma3_cma_c1 = i_mul5_conv2d3x319_bs1_merged_bit_select_c;
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
    ) i_mul5_conv2d3x319_ma3_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul5_conv2d3x319_ma3_cma_ena2, i_mul5_conv2d3x319_ma3_cma_ena1, i_mul5_conv2d3x319_ma3_cma_ena0 }),
        .aclr({ i_mul5_conv2d3x319_ma3_cma_reset, i_mul5_conv2d3x319_ma3_cma_reset }),
        .ay(i_mul5_conv2d3x319_ma3_cma_a1),
        .by(i_mul5_conv2d3x319_ma3_cma_a0),
        .ax(i_mul5_conv2d3x319_ma3_cma_c1),
        .bx(i_mul5_conv2d3x319_ma3_cma_c0),
        .resulta(i_mul5_conv2d3x319_ma3_cma_s0),
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
    i_mul5_conv2d3x319_ma3_cma_delay ( .xin(i_mul5_conv2d3x319_ma3_cma_s0), .xout(i_mul5_conv2d3x319_ma3_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul5_conv2d3x319_ma3_cma_q = $unsigned(i_mul5_conv2d3x319_ma3_cma_qq[32:0]);

    // i_mul5_conv2d3x319_sums_align_1(BITSHIFT,252)@8
    assign i_mul5_conv2d3x319_sums_align_1_qint = { i_mul5_conv2d3x319_ma3_cma_q, 18'b000000000000000000 };
    assign i_mul5_conv2d3x319_sums_align_1_q = i_mul5_conv2d3x319_sums_align_1_qint[50:0];

    // i_mul5_conv2d3x319_im0_cma(CHAINMULTADD,289)@5 + 3
    assign i_mul5_conv2d3x319_im0_cma_reset = ~ (resetn);
    assign i_mul5_conv2d3x319_im0_cma_ena0 = 1'b1;
    assign i_mul5_conv2d3x319_im0_cma_ena1 = i_mul5_conv2d3x319_im0_cma_ena0;
    assign i_mul5_conv2d3x319_im0_cma_ena2 = i_mul5_conv2d3x319_im0_cma_ena0;

    assign i_mul5_conv2d3x319_im0_cma_a0 = i_mul5_conv2d3x319_bs1_merged_bit_select_b;
    assign i_mul5_conv2d3x319_im0_cma_c0 = i_mul5_conv2d3x319_bs2_merged_bit_select_b;
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
    ) i_mul5_conv2d3x319_im0_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul5_conv2d3x319_im0_cma_ena2, i_mul5_conv2d3x319_im0_cma_ena1, i_mul5_conv2d3x319_im0_cma_ena0 }),
        .aclr({ i_mul5_conv2d3x319_im0_cma_reset, i_mul5_conv2d3x319_im0_cma_reset }),
        .ay(i_mul5_conv2d3x319_im0_cma_a0),
        .ax(i_mul5_conv2d3x319_im0_cma_c0),
        .resulta(i_mul5_conv2d3x319_im0_cma_s0),
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
    i_mul5_conv2d3x319_im0_cma_delay ( .xin(i_mul5_conv2d3x319_im0_cma_s0), .xout(i_mul5_conv2d3x319_im0_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul5_conv2d3x319_im0_cma_q = $unsigned(i_mul5_conv2d3x319_im0_cma_qq[27:0]);

    // i_mul5_conv2d3x319_im8_cma(CHAINMULTADD,290)@5 + 3
    assign i_mul5_conv2d3x319_im8_cma_reset = ~ (resetn);
    assign i_mul5_conv2d3x319_im8_cma_ena0 = 1'b1;
    assign i_mul5_conv2d3x319_im8_cma_ena1 = i_mul5_conv2d3x319_im8_cma_ena0;
    assign i_mul5_conv2d3x319_im8_cma_ena2 = i_mul5_conv2d3x319_im8_cma_ena0;

    assign i_mul5_conv2d3x319_im8_cma_a0 = i_mul5_conv2d3x319_bs1_merged_bit_select_c;
    assign i_mul5_conv2d3x319_im8_cma_c0 = i_mul5_conv2d3x319_bs2_merged_bit_select_c;
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
    ) i_mul5_conv2d3x319_im8_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul5_conv2d3x319_im8_cma_ena2, i_mul5_conv2d3x319_im8_cma_ena1, i_mul5_conv2d3x319_im8_cma_ena0 }),
        .aclr({ i_mul5_conv2d3x319_im8_cma_reset, i_mul5_conv2d3x319_im8_cma_reset }),
        .ay(i_mul5_conv2d3x319_im8_cma_a0),
        .ax(i_mul5_conv2d3x319_im8_cma_c0),
        .resulta(i_mul5_conv2d3x319_im8_cma_s0),
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
    i_mul5_conv2d3x319_im8_cma_delay ( .xin(i_mul5_conv2d3x319_im8_cma_s0), .xout(i_mul5_conv2d3x319_im8_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul5_conv2d3x319_im8_cma_q = $unsigned(i_mul5_conv2d3x319_im8_cma_qq[35:0]);

    // i_mul5_conv2d3x319_sums_join_0(BITJOIN,251)@8
    assign i_mul5_conv2d3x319_sums_join_0_q = {i_mul5_conv2d3x319_im0_cma_q, i_mul5_conv2d3x319_im8_cma_q};

    // i_mul5_conv2d3x319_sums_result_add_0_0(ADD,254)@8
    assign i_mul5_conv2d3x319_sums_result_add_0_0_a = {1'b0, i_mul5_conv2d3x319_sums_join_0_q};
    assign i_mul5_conv2d3x319_sums_result_add_0_0_b = {14'b00000000000000, i_mul5_conv2d3x319_sums_align_1_q};
    assign i_mul5_conv2d3x319_sums_result_add_0_0_o = $unsigned(i_mul5_conv2d3x319_sums_result_add_0_0_a) + $unsigned(i_mul5_conv2d3x319_sums_result_add_0_0_b);
    assign i_mul5_conv2d3x319_sums_result_add_0_0_q = i_mul5_conv2d3x319_sums_result_add_0_0_o[64:0];

    // bgTrunc_i_mul5_conv2d3x319_sel_x(BITSELECT,122)@8
    assign bgTrunc_i_mul5_conv2d3x319_sel_x_in = i_mul5_conv2d3x319_sums_result_add_0_0_q[63:0];
    assign bgTrunc_i_mul5_conv2d3x319_sel_x_b = bgTrunc_i_mul5_conv2d3x319_sel_x_in[31:0];

    // redist8_bgTrunc_i_mul5_conv2d3x319_sel_x_b_1(DELAY,313)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_bgTrunc_i_mul5_conv2d3x319_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist8_bgTrunc_i_mul5_conv2d3x319_sel_x_b_1_q <= $unsigned(bgTrunc_i_mul5_conv2d3x319_sel_x_b);
        end
    end

    // i_idx_ext6_conv2d3x320_sel_x(BITSELECT,154)@9
    assign i_idx_ext6_conv2d3x320_sel_x_b = $unsigned({{32{redist8_bgTrunc_i_mul5_conv2d3x319_sel_x_b_1_q[31]}}, redist8_bgTrunc_i_mul5_conv2d3x319_sel_x_b_1_q[31:0]});

    // i_add_ptr73_conv2d3x30_narrow_x(BITSELECT,142)@9
    assign i_add_ptr73_conv2d3x30_narrow_x_b = i_idx_ext6_conv2d3x320_sel_x_b[61:0];

    // i_add_ptr73_conv2d3x30_shift_join_x(BITJOIN,143)@9
    assign i_add_ptr73_conv2d3x30_shift_join_x_q = {i_add_ptr73_conv2d3x30_narrow_x_b, i_add_ptr1_conv2d3x311_vt_const_1_q};

    // valid_fanout_reg7(REG,170)@8 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg7_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg7_q <= $unsigned(redist3_sync_together86_aunroll_x_in_i_valid_7_q);
        end
    end

    // i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_conv2d3x321(BLACKBOX,78)@0
    // in in_i_dependence@9
    // in in_valid_in@9
    // out out_buffer_out@9
    // out out_valid_out@9
    conv2d3x3_i_llvm_fpga_sync_buffer_p1024f0000put_im_sync_buffer_0 thei_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_conv2d3x321 (
        .in_buffer_in(in_output_im),
        .in_i_dependence(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg7_q),
        .out_buffer_out(i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_conv2d3x321_out_buffer_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_conv2d3x321_vt_select_63(BITSELECT,81)@9
    assign i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_conv2d3x321_vt_select_63_b = i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_conv2d3x321_out_buffer_out[63:10];

    // i_llvm_fpga_sync_buffer_p1024f32_filter_bias_sync_buffer_conv2d3x313_vt_const_9(CONSTANT,71)
    assign i_llvm_fpga_sync_buffer_p1024f32_filter_bias_sync_buffer_conv2d3x313_vt_const_9_q = $unsigned(10'b0000000000);

    // i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_conv2d3x321_vt_join(BITJOIN,80)@9
    assign i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_conv2d3x321_vt_join_q = {i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_conv2d3x321_vt_select_63_b, i_llvm_fpga_sync_buffer_p1024f32_filter_bias_sync_buffer_conv2d3x313_vt_const_9_q};

    // i_add_ptr73_conv2d3x30_add_x(ADD,140)@9
    assign i_add_ptr73_conv2d3x30_add_x_a = {1'b0, i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_conv2d3x321_vt_join_q};
    assign i_add_ptr73_conv2d3x30_add_x_b = {1'b0, i_add_ptr73_conv2d3x30_shift_join_x_q};
    assign i_add_ptr73_conv2d3x30_add_x_o = $unsigned(i_add_ptr73_conv2d3x30_add_x_a) + $unsigned(i_add_ptr73_conv2d3x30_add_x_b);
    assign i_add_ptr73_conv2d3x30_add_x_q = i_add_ptr73_conv2d3x30_add_x_o[64:0];

    // i_add_ptr73_conv2d3x30_dupName_0_trunc_sel_x(BITSELECT,145)@9
    assign i_add_ptr73_conv2d3x30_dupName_0_trunc_sel_x_b = i_add_ptr73_conv2d3x30_add_x_q[63:0];

    // i_add_ptr73_conv2d3x322_vt_select_63(BITSELECT,38)@9
    assign i_add_ptr73_conv2d3x322_vt_select_63_b = i_add_ptr73_conv2d3x30_dupName_0_trunc_sel_x_b[63:2];

    // i_add_ptr1_conv2d3x311_vt_const_1(CONSTANT,33)
    assign i_add_ptr1_conv2d3x311_vt_const_1_q = $unsigned(2'b00);

    // i_add_ptr73_conv2d3x322_vt_join(BITJOIN,37)@9
    assign i_add_ptr73_conv2d3x322_vt_join_q = {i_add_ptr73_conv2d3x322_vt_select_63_b, i_add_ptr1_conv2d3x311_vt_const_1_q};

    // redist5_i_conv_conv2d3x32_sel_x_b_8_notEnable(LOGICAL,331)
    assign redist5_i_conv_conv2d3x32_sel_x_b_8_notEnable_q = $unsigned(~ (VCC_q));

    // redist5_i_conv_conv2d3x32_sel_x_b_8_nor(LOGICAL,332)
    assign redist5_i_conv_conv2d3x32_sel_x_b_8_nor_q = ~ (redist5_i_conv_conv2d3x32_sel_x_b_8_notEnable_q | redist5_i_conv_conv2d3x32_sel_x_b_8_sticky_ena_q);

    // redist5_i_conv_conv2d3x32_sel_x_b_8_cmpReg(REG,330)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_i_conv_conv2d3x32_sel_x_b_8_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist5_i_conv_conv2d3x32_sel_x_b_8_cmpReg_q <= $unsigned(VCC_q);
        end
    end

    // redist5_i_conv_conv2d3x32_sel_x_b_8_sticky_ena(REG,333)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_i_conv_conv2d3x32_sel_x_b_8_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist5_i_conv_conv2d3x32_sel_x_b_8_nor_q == 1'b1)
        begin
            redist5_i_conv_conv2d3x32_sel_x_b_8_sticky_ena_q <= $unsigned(redist5_i_conv_conv2d3x32_sel_x_b_8_cmpReg_q);
        end
    end

    // redist5_i_conv_conv2d3x32_sel_x_b_8_enaAnd(LOGICAL,334)
    assign redist5_i_conv_conv2d3x32_sel_x_b_8_enaAnd_q = redist5_i_conv_conv2d3x32_sel_x_b_8_sticky_ena_q & VCC_q;

    // redist5_i_conv_conv2d3x32_sel_x_b_8_rdcnt(COUNTER,328)
    // low=0, high=1, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_i_conv_conv2d3x32_sel_x_b_8_rdcnt_i <= 1'd0;
        end
        else
        begin
            redist5_i_conv_conv2d3x32_sel_x_b_8_rdcnt_i <= $unsigned(redist5_i_conv_conv2d3x32_sel_x_b_8_rdcnt_i) + $unsigned(1'd1);
        end
    end
    assign redist5_i_conv_conv2d3x32_sel_x_b_8_rdcnt_q = redist5_i_conv_conv2d3x32_sel_x_b_8_rdcnt_i[0:0];

    // redist5_i_conv_conv2d3x32_sel_x_b_8_wraddr(REG,329)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_i_conv_conv2d3x32_sel_x_b_8_wraddr_q <= $unsigned(1'b1);
        end
        else
        begin
            redist5_i_conv_conv2d3x32_sel_x_b_8_wraddr_q <= $unsigned(redist5_i_conv_conv2d3x32_sel_x_b_8_rdcnt_q);
        end
    end

    // redist5_i_conv_conv2d3x32_sel_x_b_8_mem(DUALMEM,327)
    assign redist5_i_conv_conv2d3x32_sel_x_b_8_mem_ia = $unsigned(redist4_i_conv_conv2d3x32_sel_x_b_4_outputreg0_q);
    assign redist5_i_conv_conv2d3x32_sel_x_b_8_mem_aa = redist5_i_conv_conv2d3x32_sel_x_b_8_wraddr_q;
    assign redist5_i_conv_conv2d3x32_sel_x_b_8_mem_ab = redist5_i_conv_conv2d3x32_sel_x_b_8_rdcnt_q;
    assign redist5_i_conv_conv2d3x32_sel_x_b_8_mem_reset0 = ~ (resetn);
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
    ) redist5_i_conv_conv2d3x32_sel_x_b_8_mem_dmem (
        .clocken1(redist5_i_conv_conv2d3x32_sel_x_b_8_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist5_i_conv_conv2d3x32_sel_x_b_8_mem_reset0),
        .clock1(clock),
        .address_a(redist5_i_conv_conv2d3x32_sel_x_b_8_mem_aa),
        .data_a(redist5_i_conv_conv2d3x32_sel_x_b_8_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist5_i_conv_conv2d3x32_sel_x_b_8_mem_ab),
        .q_b(redist5_i_conv_conv2d3x32_sel_x_b_8_mem_iq),
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
    assign redist5_i_conv_conv2d3x32_sel_x_b_8_mem_q = redist5_i_conv_conv2d3x32_sel_x_b_8_mem_iq[31:0];

    // redist5_i_conv_conv2d3x32_sel_x_b_8_outputreg0(DELAY,326)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_i_conv_conv2d3x32_sel_x_b_8_outputreg0_q <= '0;
        end
        else
        begin
            redist5_i_conv_conv2d3x32_sel_x_b_8_outputreg0_q <= $unsigned(redist5_i_conv_conv2d3x32_sel_x_b_8_mem_q);
        end
    end

    // i_idxprom_conv2d3x312_sel_x(BITSELECT,156)@9
    assign i_idxprom_conv2d3x312_sel_x_b = $unsigned({{32{redist5_i_conv_conv2d3x32_sel_x_b_8_outputreg0_q[31]}}, redist5_i_conv_conv2d3x32_sel_x_b_8_outputreg0_q[31:0]});

    // i_arrayidx2_conv2d3x30_narrow_x(BITSELECT,148)@9
    assign i_arrayidx2_conv2d3x30_narrow_x_b = i_idxprom_conv2d3x312_sel_x_b[61:0];

    // i_arrayidx2_conv2d3x30_shift_join_x(BITJOIN,149)@9
    assign i_arrayidx2_conv2d3x30_shift_join_x_q = {i_arrayidx2_conv2d3x30_narrow_x_b, i_add_ptr1_conv2d3x311_vt_const_1_q};

    // valid_fanout_reg4(REG,167)@8 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg4_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg4_q <= $unsigned(redist3_sync_together86_aunroll_x_in_i_valid_7_q);
        end
    end

    // i_llvm_fpga_sync_buffer_p1024f32_filter_bias_sync_buffer_conv2d3x313(BLACKBOX,70)@0
    // in in_i_dependence@9
    // in in_valid_in@9
    // out out_buffer_out@9
    // out out_valid_out@9
    conv2d3x3_i_llvm_fpga_sync_buffer_p1024f0000r_bias_sync_buffer_0 thei_llvm_fpga_sync_buffer_p1024f32_filter_bias_sync_buffer_conv2d3x313 (
        .in_buffer_in(in_filter_bias),
        .in_i_dependence(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_buffer_out(i_llvm_fpga_sync_buffer_p1024f32_filter_bias_sync_buffer_conv2d3x313_out_buffer_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_sync_buffer_p1024f32_filter_bias_sync_buffer_conv2d3x313_vt_select_63(BITSELECT,73)@9
    assign i_llvm_fpga_sync_buffer_p1024f32_filter_bias_sync_buffer_conv2d3x313_vt_select_63_b = i_llvm_fpga_sync_buffer_p1024f32_filter_bias_sync_buffer_conv2d3x313_out_buffer_out[63:10];

    // i_llvm_fpga_sync_buffer_p1024f32_filter_bias_sync_buffer_conv2d3x313_vt_join(BITJOIN,72)@9
    assign i_llvm_fpga_sync_buffer_p1024f32_filter_bias_sync_buffer_conv2d3x313_vt_join_q = {i_llvm_fpga_sync_buffer_p1024f32_filter_bias_sync_buffer_conv2d3x313_vt_select_63_b, i_llvm_fpga_sync_buffer_p1024f32_filter_bias_sync_buffer_conv2d3x313_vt_const_9_q};

    // i_arrayidx2_conv2d3x30_add_x(ADD,146)@9
    assign i_arrayidx2_conv2d3x30_add_x_a = {1'b0, i_llvm_fpga_sync_buffer_p1024f32_filter_bias_sync_buffer_conv2d3x313_vt_join_q};
    assign i_arrayidx2_conv2d3x30_add_x_b = {1'b0, i_arrayidx2_conv2d3x30_shift_join_x_q};
    assign i_arrayidx2_conv2d3x30_add_x_o = $unsigned(i_arrayidx2_conv2d3x30_add_x_a) + $unsigned(i_arrayidx2_conv2d3x30_add_x_b);
    assign i_arrayidx2_conv2d3x30_add_x_q = i_arrayidx2_conv2d3x30_add_x_o[64:0];

    // i_arrayidx2_conv2d3x30_dupName_0_trunc_sel_x(BITSELECT,151)@9
    assign i_arrayidx2_conv2d3x30_dupName_0_trunc_sel_x_b = i_arrayidx2_conv2d3x30_add_x_q[63:0];

    // i_arrayidx2_conv2d3x314_vt_select_63(BITSELECT,41)@9
    assign i_arrayidx2_conv2d3x314_vt_select_63_b = i_arrayidx2_conv2d3x30_dupName_0_trunc_sel_x_b[63:2];

    // i_arrayidx2_conv2d3x314_vt_join(BITJOIN,40)@9
    assign i_arrayidx2_conv2d3x314_vt_join_q = {i_arrayidx2_conv2d3x314_vt_select_63_b, i_add_ptr1_conv2d3x311_vt_const_1_q};

    // i_mul3_conv2d3x38_bs2(BITSELECT,212)@5
    assign i_mul3_conv2d3x38_bs2_b = redist4_i_conv_conv2d3x32_sel_x_b_4_outputreg0_q[31:18];

    // i_mul3_conv2d3x38_bs7(BITSELECT,217)@5
    assign i_mul3_conv2d3x38_bs7_in = redist4_i_conv_conv2d3x32_sel_x_b_4_outputreg0_q[17:0];
    assign i_mul3_conv2d3x38_bs7_b = i_mul3_conv2d3x38_bs7_in[17:0];

    // leftShiftStage1Idx1Rng2_uid279_i_unnamed_conv2d3x30_shift_x(BITSELECT,278)@5
    assign leftShiftStage1Idx1Rng2_uid279_i_unnamed_conv2d3x30_shift_x_in = leftShiftStage0_uid277_i_unnamed_conv2d3x30_shift_x_q[29:0];
    assign leftShiftStage1Idx1Rng2_uid279_i_unnamed_conv2d3x30_shift_x_b = leftShiftStage1Idx1Rng2_uid279_i_unnamed_conv2d3x30_shift_x_in[29:0];

    // leftShiftStage1Idx1_uid280_i_unnamed_conv2d3x30_shift_x(BITJOIN,279)@5
    assign leftShiftStage1Idx1_uid280_i_unnamed_conv2d3x30_shift_x_q = {leftShiftStage1Idx1Rng2_uid279_i_unnamed_conv2d3x30_shift_x_b, i_add_ptr1_conv2d3x311_vt_const_1_q};

    // leftShiftStage0Idx1Rng1_uid274_i_unnamed_conv2d3x30_shift_x(BITSELECT,273)@5
    assign leftShiftStage0Idx1Rng1_uid274_i_unnamed_conv2d3x30_shift_x_in = i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer_conv2d3x35_out_buffer_out[30:0];
    assign leftShiftStage0Idx1Rng1_uid274_i_unnamed_conv2d3x30_shift_x_b = leftShiftStage0Idx1Rng1_uid274_i_unnamed_conv2d3x30_shift_x_in[30:0];

    // leftShiftStage0Idx1_uid275_i_unnamed_conv2d3x30_shift_x(BITJOIN,274)@5
    assign leftShiftStage0Idx1_uid275_i_unnamed_conv2d3x30_shift_x_q = {leftShiftStage0Idx1Rng1_uid274_i_unnamed_conv2d3x30_shift_x_b, GND_q};

    // valid_fanout_reg2(REG,165)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg2_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg2_q <= $unsigned(redist1_sync_together86_aunroll_x_in_i_valid_3_q);
        end
    end

    // i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer_conv2d3x35(BLACKBOX,60)@0
    // in in_i_dependence@5
    // in in_valid_in@5
    // out out_buffer_out@5
    // out out_valid_out@5
    conv2d3x3_i_llvm_fpga_sync_buffer_i32_in0000annels_sync_buffer_0 thei_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer_conv2d3x35 (
        .in_buffer_in(in_input_channels),
        .in_i_dependence(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_buffer_out(i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer_conv2d3x35_out_buffer_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // leftShiftStage0_uid277_i_unnamed_conv2d3x30_shift_x(MUX,276)@5
    assign leftShiftStage0_uid277_i_unnamed_conv2d3x30_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid277_i_unnamed_conv2d3x30_shift_x_s or i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer_conv2d3x35_out_buffer_out or leftShiftStage0Idx1_uid275_i_unnamed_conv2d3x30_shift_x_q)
    begin
        unique case (leftShiftStage0_uid277_i_unnamed_conv2d3x30_shift_x_s)
            1'b0 : leftShiftStage0_uid277_i_unnamed_conv2d3x30_shift_x_q = i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer_conv2d3x35_out_buffer_out;
            1'b1 : leftShiftStage0_uid277_i_unnamed_conv2d3x30_shift_x_q = leftShiftStage0Idx1_uid275_i_unnamed_conv2d3x30_shift_x_q;
            default : leftShiftStage0_uid277_i_unnamed_conv2d3x30_shift_x_q = 32'b0;
        endcase
    end

    // leftShiftStage1_uid282_i_unnamed_conv2d3x30_shift_x(MUX,281)@5
    assign leftShiftStage1_uid282_i_unnamed_conv2d3x30_shift_x_s = VCC_q;
    always @(leftShiftStage1_uid282_i_unnamed_conv2d3x30_shift_x_s or leftShiftStage0_uid277_i_unnamed_conv2d3x30_shift_x_q or leftShiftStage1Idx1_uid280_i_unnamed_conv2d3x30_shift_x_q)
    begin
        unique case (leftShiftStage1_uid282_i_unnamed_conv2d3x30_shift_x_s)
            1'b0 : leftShiftStage1_uid282_i_unnamed_conv2d3x30_shift_x_q = leftShiftStage0_uid277_i_unnamed_conv2d3x30_shift_x_q;
            1'b1 : leftShiftStage1_uid282_i_unnamed_conv2d3x30_shift_x_q = leftShiftStage1Idx1_uid280_i_unnamed_conv2d3x30_shift_x_q;
            default : leftShiftStage1_uid282_i_unnamed_conv2d3x30_shift_x_q = 32'b0;
        endcase
    end

    // i_unnamed_conv2d3x36_vt_select_31(BITSELECT,94)@5
    assign i_unnamed_conv2d3x36_vt_select_31_b = leftShiftStage1_uid282_i_unnamed_conv2d3x30_shift_x_q[31:3];

    // i_unnamed_conv2d3x36_vt_const_2(CONSTANT,92)
    assign i_unnamed_conv2d3x36_vt_const_2_q = $unsigned(3'b000);

    // i_unnamed_conv2d3x36_vt_join(BITJOIN,93)@5
    assign i_unnamed_conv2d3x36_vt_join_q = {i_unnamed_conv2d3x36_vt_select_31_b, i_unnamed_conv2d3x36_vt_const_2_q};

    // valid_fanout_reg1(REG,164)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg1_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg1_q <= $unsigned(redist1_sync_together86_aunroll_x_in_i_valid_3_q);
        end
    end

    // i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer5_conv2d3x34(BLACKBOX,58)@0
    // in in_i_dependence@5
    // in in_valid_in@5
    // out out_buffer_out@5
    // out out_valid_out@5
    conv2d3x3_i_llvm_fpga_sync_buffer_i32_in0000nnels_sync_buffer5_0 thei_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer5_conv2d3x34 (
        .in_buffer_in(in_input_channels),
        .in_i_dependence(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_buffer_out(i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer5_conv2d3x34_out_buffer_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_mul_add2_conv2d3x37(ADD,87)@5
    assign i_mul_add2_conv2d3x37_a = {1'b0, i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer5_conv2d3x34_out_buffer_out};
    assign i_mul_add2_conv2d3x37_b = {1'b0, i_unnamed_conv2d3x36_vt_join_q};
    assign i_mul_add2_conv2d3x37_o = $unsigned(i_mul_add2_conv2d3x37_a) + $unsigned(i_mul_add2_conv2d3x37_b);
    assign i_mul_add2_conv2d3x37_q = i_mul_add2_conv2d3x37_o[32:0];

    // bgTrunc_i_mul_add2_conv2d3x37_sel_x(BITSELECT,124)@5
    assign bgTrunc_i_mul_add2_conv2d3x37_sel_x_b = i_mul_add2_conv2d3x37_q[31:0];

    // i_mul3_conv2d3x38_bs1_merged_bit_select(BITSELECT,303)@5
    assign i_mul3_conv2d3x38_bs1_merged_bit_select_b = bgTrunc_i_mul_add2_conv2d3x37_sel_x_b[31:18];
    assign i_mul3_conv2d3x38_bs1_merged_bit_select_c = bgTrunc_i_mul_add2_conv2d3x37_sel_x_b[17:0];

    // i_mul3_conv2d3x38_ma3_cma(CHAINMULTADD,294)@5 + 3
    assign i_mul3_conv2d3x38_ma3_cma_reset = ~ (resetn);
    assign i_mul3_conv2d3x38_ma3_cma_ena0 = 1'b1;
    assign i_mul3_conv2d3x38_ma3_cma_ena1 = i_mul3_conv2d3x38_ma3_cma_ena0;
    assign i_mul3_conv2d3x38_ma3_cma_ena2 = i_mul3_conv2d3x38_ma3_cma_ena0;

    assign i_mul3_conv2d3x38_ma3_cma_a0 = i_mul3_conv2d3x38_bs1_merged_bit_select_b;
    assign i_mul3_conv2d3x38_ma3_cma_c0 = i_mul3_conv2d3x38_bs7_b;
    assign i_mul3_conv2d3x38_ma3_cma_a1 = i_mul3_conv2d3x38_bs2_b;
    assign i_mul3_conv2d3x38_ma3_cma_c1 = i_mul3_conv2d3x38_bs1_merged_bit_select_c;
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
    ) i_mul3_conv2d3x38_ma3_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul3_conv2d3x38_ma3_cma_ena2, i_mul3_conv2d3x38_ma3_cma_ena1, i_mul3_conv2d3x38_ma3_cma_ena0 }),
        .aclr({ i_mul3_conv2d3x38_ma3_cma_reset, i_mul3_conv2d3x38_ma3_cma_reset }),
        .ay(i_mul3_conv2d3x38_ma3_cma_a1),
        .by(i_mul3_conv2d3x38_ma3_cma_a0),
        .ax(i_mul3_conv2d3x38_ma3_cma_c1),
        .bx(i_mul3_conv2d3x38_ma3_cma_c0),
        .resulta(i_mul3_conv2d3x38_ma3_cma_s0),
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
    i_mul3_conv2d3x38_ma3_cma_delay ( .xin(i_mul3_conv2d3x38_ma3_cma_s0), .xout(i_mul3_conv2d3x38_ma3_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul3_conv2d3x38_ma3_cma_q = $unsigned(i_mul3_conv2d3x38_ma3_cma_qq[32:0]);

    // i_mul3_conv2d3x38_sums_align_1(BITSHIFT,222)@8
    assign i_mul3_conv2d3x38_sums_align_1_qint = { i_mul3_conv2d3x38_ma3_cma_q, 18'b000000000000000000 };
    assign i_mul3_conv2d3x38_sums_align_1_q = i_mul3_conv2d3x38_sums_align_1_qint[50:0];

    // i_mul3_conv2d3x38_im0_cma(CHAINMULTADD,285)@5 + 3
    assign i_mul3_conv2d3x38_im0_cma_reset = ~ (resetn);
    assign i_mul3_conv2d3x38_im0_cma_ena0 = 1'b1;
    assign i_mul3_conv2d3x38_im0_cma_ena1 = i_mul3_conv2d3x38_im0_cma_ena0;
    assign i_mul3_conv2d3x38_im0_cma_ena2 = i_mul3_conv2d3x38_im0_cma_ena0;

    assign i_mul3_conv2d3x38_im0_cma_a0 = i_mul3_conv2d3x38_bs1_merged_bit_select_b;
    assign i_mul3_conv2d3x38_im0_cma_c0 = i_mul3_conv2d3x38_bs2_b;
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
    ) i_mul3_conv2d3x38_im0_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul3_conv2d3x38_im0_cma_ena2, i_mul3_conv2d3x38_im0_cma_ena1, i_mul3_conv2d3x38_im0_cma_ena0 }),
        .aclr({ i_mul3_conv2d3x38_im0_cma_reset, i_mul3_conv2d3x38_im0_cma_reset }),
        .ay(i_mul3_conv2d3x38_im0_cma_a0),
        .ax(i_mul3_conv2d3x38_im0_cma_c0),
        .resulta(i_mul3_conv2d3x38_im0_cma_s0),
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
    i_mul3_conv2d3x38_im0_cma_delay ( .xin(i_mul3_conv2d3x38_im0_cma_s0), .xout(i_mul3_conv2d3x38_im0_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul3_conv2d3x38_im0_cma_q = $unsigned(i_mul3_conv2d3x38_im0_cma_qq[27:0]);

    // i_mul3_conv2d3x38_im8_cma(CHAINMULTADD,286)@5 + 3
    assign i_mul3_conv2d3x38_im8_cma_reset = ~ (resetn);
    assign i_mul3_conv2d3x38_im8_cma_ena0 = 1'b1;
    assign i_mul3_conv2d3x38_im8_cma_ena1 = i_mul3_conv2d3x38_im8_cma_ena0;
    assign i_mul3_conv2d3x38_im8_cma_ena2 = i_mul3_conv2d3x38_im8_cma_ena0;

    assign i_mul3_conv2d3x38_im8_cma_a0 = i_mul3_conv2d3x38_bs1_merged_bit_select_c;
    assign i_mul3_conv2d3x38_im8_cma_c0 = i_mul3_conv2d3x38_bs7_b;
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
    ) i_mul3_conv2d3x38_im8_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul3_conv2d3x38_im8_cma_ena2, i_mul3_conv2d3x38_im8_cma_ena1, i_mul3_conv2d3x38_im8_cma_ena0 }),
        .aclr({ i_mul3_conv2d3x38_im8_cma_reset, i_mul3_conv2d3x38_im8_cma_reset }),
        .ay(i_mul3_conv2d3x38_im8_cma_a0),
        .ax(i_mul3_conv2d3x38_im8_cma_c0),
        .resulta(i_mul3_conv2d3x38_im8_cma_s0),
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
    i_mul3_conv2d3x38_im8_cma_delay ( .xin(i_mul3_conv2d3x38_im8_cma_s0), .xout(i_mul3_conv2d3x38_im8_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul3_conv2d3x38_im8_cma_q = $unsigned(i_mul3_conv2d3x38_im8_cma_qq[35:0]);

    // i_mul3_conv2d3x38_sums_join_0(BITJOIN,221)@8
    assign i_mul3_conv2d3x38_sums_join_0_q = {i_mul3_conv2d3x38_im0_cma_q, i_mul3_conv2d3x38_im8_cma_q};

    // i_mul3_conv2d3x38_sums_result_add_0_0(ADD,224)@8
    assign i_mul3_conv2d3x38_sums_result_add_0_0_a = {1'b0, i_mul3_conv2d3x38_sums_join_0_q};
    assign i_mul3_conv2d3x38_sums_result_add_0_0_b = {14'b00000000000000, i_mul3_conv2d3x38_sums_align_1_q};
    assign i_mul3_conv2d3x38_sums_result_add_0_0_o = $unsigned(i_mul3_conv2d3x38_sums_result_add_0_0_a) + $unsigned(i_mul3_conv2d3x38_sums_result_add_0_0_b);
    assign i_mul3_conv2d3x38_sums_result_add_0_0_q = i_mul3_conv2d3x38_sums_result_add_0_0_o[64:0];

    // bgTrunc_i_mul3_conv2d3x38_sel_x(BITSELECT,120)@8
    assign bgTrunc_i_mul3_conv2d3x38_sel_x_in = i_mul3_conv2d3x38_sums_result_add_0_0_q[63:0];
    assign bgTrunc_i_mul3_conv2d3x38_sel_x_b = bgTrunc_i_mul3_conv2d3x38_sel_x_in[31:0];

    // redist9_bgTrunc_i_mul3_conv2d3x38_sel_x_b_1(DELAY,314)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_bgTrunc_i_mul3_conv2d3x38_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist9_bgTrunc_i_mul3_conv2d3x38_sel_x_b_1_q <= $unsigned(bgTrunc_i_mul3_conv2d3x38_sel_x_b);
        end
    end

    // i_idx_ext_conv2d3x39_sel_x(BITSELECT,155)@9
    assign i_idx_ext_conv2d3x39_sel_x_b = $unsigned({{32{redist9_bgTrunc_i_mul3_conv2d3x38_sel_x_b_1_q[31]}}, redist9_bgTrunc_i_mul3_conv2d3x38_sel_x_b_1_q[31:0]});

    // i_add_ptr1_conv2d3x30_narrow_x(BITSELECT,136)@9
    assign i_add_ptr1_conv2d3x30_narrow_x_b = i_idx_ext_conv2d3x39_sel_x_b[61:0];

    // i_add_ptr1_conv2d3x30_shift_join_x(BITJOIN,137)@9
    assign i_add_ptr1_conv2d3x30_shift_join_x_q = {i_add_ptr1_conv2d3x30_narrow_x_b, i_add_ptr1_conv2d3x311_vt_const_1_q};

    // valid_fanout_reg3(REG,166)@8 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg3_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg3_q <= $unsigned(redist3_sync_together86_aunroll_x_in_i_valid_7_q);
        end
    end

    // i_llvm_fpga_sync_buffer_p1024f32_filter_weight_sync_buffer_conv2d3x310(BLACKBOX,74)@0
    // in in_i_dependence@9
    // in in_valid_in@9
    // out out_buffer_out@9
    // out out_valid_out@9
    conv2d3x3_i_llvm_fpga_sync_buffer_p1024f0000weight_sync_buffer_0 thei_llvm_fpga_sync_buffer_p1024f32_filter_weight_sync_buffer_conv2d3x310 (
        .in_buffer_in(in_filter_weight),
        .in_i_dependence(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_buffer_out(i_llvm_fpga_sync_buffer_p1024f32_filter_weight_sync_buffer_conv2d3x310_out_buffer_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_sync_buffer_p1024f32_filter_weight_sync_buffer_conv2d3x310_vt_select_63(BITSELECT,77)@9
    assign i_llvm_fpga_sync_buffer_p1024f32_filter_weight_sync_buffer_conv2d3x310_vt_select_63_b = i_llvm_fpga_sync_buffer_p1024f32_filter_weight_sync_buffer_conv2d3x310_out_buffer_out[63:10];

    // i_llvm_fpga_sync_buffer_p1024f32_filter_weight_sync_buffer_conv2d3x310_vt_join(BITJOIN,76)@9
    assign i_llvm_fpga_sync_buffer_p1024f32_filter_weight_sync_buffer_conv2d3x310_vt_join_q = {i_llvm_fpga_sync_buffer_p1024f32_filter_weight_sync_buffer_conv2d3x310_vt_select_63_b, i_llvm_fpga_sync_buffer_p1024f32_filter_bias_sync_buffer_conv2d3x313_vt_const_9_q};

    // i_add_ptr1_conv2d3x30_add_x(ADD,134)@9
    assign i_add_ptr1_conv2d3x30_add_x_a = {1'b0, i_llvm_fpga_sync_buffer_p1024f32_filter_weight_sync_buffer_conv2d3x310_vt_join_q};
    assign i_add_ptr1_conv2d3x30_add_x_b = {1'b0, i_add_ptr1_conv2d3x30_shift_join_x_q};
    assign i_add_ptr1_conv2d3x30_add_x_o = $unsigned(i_add_ptr1_conv2d3x30_add_x_a) + $unsigned(i_add_ptr1_conv2d3x30_add_x_b);
    assign i_add_ptr1_conv2d3x30_add_x_q = i_add_ptr1_conv2d3x30_add_x_o[64:0];

    // i_add_ptr1_conv2d3x30_dupName_0_trunc_sel_x(BITSELECT,139)@9
    assign i_add_ptr1_conv2d3x30_dupName_0_trunc_sel_x_b = i_add_ptr1_conv2d3x30_add_x_q[63:0];

    // i_add_ptr1_conv2d3x311_vt_select_63(BITSELECT,35)@9
    assign i_add_ptr1_conv2d3x311_vt_select_63_b = i_add_ptr1_conv2d3x30_dupName_0_trunc_sel_x_b[63:2];

    // i_add_ptr1_conv2d3x311_vt_join(BITJOIN,34)@9
    assign i_add_ptr1_conv2d3x311_vt_join_q = {i_add_ptr1_conv2d3x311_vt_select_63_b, i_add_ptr1_conv2d3x311_vt_const_1_q};

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // sync_out_aunroll_x(GPOUT,161)@9
    assign out_c0_exi16_0_tpl = GND_q;
    assign out_c0_exi16_1_tpl = i_add_ptr1_conv2d3x311_vt_join_q;
    assign out_c0_exi16_2_tpl = i_arrayidx2_conv2d3x314_vt_join_q;
    assign out_c0_exi16_3_tpl = i_add_ptr73_conv2d3x322_vt_join_q;
    assign out_c0_exi16_4_tpl = i_cmp61_conv2d3x324_c;
    assign out_c0_exi16_5_tpl = redist11_bgTrunc_i_add20_conv2d3x332_sel_x_b_1_q;
    assign out_c0_exi16_6_tpl = redist7_bgTrunc_i_mul64_conv2d3x334_sel_x_b_2_q;
    assign out_c0_exi16_7_tpl = i_cmp29_conv2d3x335_c;
    assign out_c0_exi16_8_tpl = i_cmp31_conv2d3x338_c;
    assign out_c0_exi16_9_tpl = bgTrunc_i_sub_1_conv2d3x340_sel_x_b;
    assign out_c0_exi16_10_tpl = i_cmp29_1_conv2d3x341_c;
    assign out_c0_exi16_11_tpl = i_cmp31_1_conv2d3x344_c;
    assign out_c0_exi16_12_tpl = bgTrunc_i_sub_2_conv2d3x346_sel_x_b;
    assign out_c0_exi16_13_tpl = i_cmp29_2_conv2d3x347_c;
    assign out_c0_exi16_14_tpl = i_cmp31_2_conv2d3x350_c;
    assign out_c0_exi16_15_tpl = i_unnamed_conv2d3x352_q;
    assign out_c0_exi16_16_tpl = i_unnamed_conv2d3x353_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_conv2d3x31 = GND_q;

endmodule
