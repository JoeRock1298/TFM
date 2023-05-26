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

// SystemVerilog created from conv2d1x1_i_sfc_logic_s_c0_in_for_body130000enter5834_conv2d1x10
// SystemVerilog created on Wed May 17 11:22:46 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2d1x1_i_sfc_logic_s_c0_in_for_body130000enter5834_conv2d1x10 (
    input wire [31:0] in_input_channels,
    input wire [63:0] in_input_im,
    output wire [0:0] out_c0_exi666_0_tpl,
    output wire [63:0] out_c0_exi666_1_tpl,
    output wire [63:0] out_c0_exi666_2_tpl,
    output wire [63:0] out_c0_exi666_3_tpl,
    output wire [63:0] out_c0_exi666_4_tpl,
    output wire [31:0] out_c0_exi666_5_tpl,
    output wire [0:0] out_c0_exi666_6_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_conv2d1x11,
    input wire [0:0] in_c0_eni5_0_tpl,
    input wire [31:0] in_c0_eni5_1_tpl,
    input wire [31:0] in_c0_eni5_2_tpl,
    input wire [31:0] in_c0_eni5_3_tpl,
    input wire [0:0] in_c0_eni5_4_tpl,
    input wire [0:0] in_c0_eni5_5_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] c_i32_139_q;
    wire [32:0] i_add17_conv2d1x14_a;
    wire [32:0] i_add17_conv2d1x14_b;
    logic [32:0] i_add17_conv2d1x14_o;
    wire [32:0] i_add17_conv2d1x14_q;
    wire [1:0] i_add24_conv2d1x18_vt_const_1_q;
    wire [31:0] i_add24_conv2d1x18_vt_join_q;
    wire [29:0] i_add24_conv2d1x18_vt_select_31_b;
    wire [32:0] i_add27_conv2d1x110_a;
    wire [32:0] i_add27_conv2d1x110_b;
    logic [32:0] i_add27_conv2d1x110_o;
    wire [32:0] i_add27_conv2d1x110_q;
    wire [1:0] i_add34_conv2d1x114_vt_const_1_q;
    wire [31:0] i_add34_conv2d1x114_vt_join_q;
    wire [29:0] i_add34_conv2d1x114_vt_select_31_b;
    wire [32:0] i_add37_conv2d1x116_a;
    wire [32:0] i_add37_conv2d1x116_b;
    logic [32:0] i_add37_conv2d1x116_o;
    wire [32:0] i_add37_conv2d1x116_q;
    wire [1:0] i_add44_conv2d1x120_vt_const_1_q;
    wire [31:0] i_add44_conv2d1x120_vt_join_q;
    wire [29:0] i_add44_conv2d1x120_vt_select_31_b;
    wire [32:0] i_add47_conv2d1x122_a;
    wire [32:0] i_add47_conv2d1x122_b;
    logic [32:0] i_add47_conv2d1x122_o;
    wire [32:0] i_add47_conv2d1x122_q;
    wire [1:0] i_arrayidx195_conv2d1x17_vt_const_1_q;
    wire [63:0] i_arrayidx195_conv2d1x17_vt_join_q;
    wire [61:0] i_arrayidx195_conv2d1x17_vt_select_63_b;
    wire [63:0] i_arrayidx297_conv2d1x113_vt_join_q;
    wire [61:0] i_arrayidx297_conv2d1x113_vt_select_63_b;
    wire [63:0] i_arrayidx398_conv2d1x119_vt_join_q;
    wire [61:0] i_arrayidx398_conv2d1x119_vt_select_63_b;
    wire [63:0] i_arrayidx499_conv2d1x125_vt_join_q;
    wire [61:0] i_arrayidx499_conv2d1x125_vt_select_63_b;
    wire [0:0] i_cmp1010_guard_conv2d1x130_q;
    wire [33:0] i_cmp10_conv2d1x128_a;
    wire [33:0] i_cmp10_conv2d1x128_b;
    logic [33:0] i_cmp10_conv2d1x128_o;
    wire [0:0] i_cmp10_conv2d1x128_n;
    wire [32:0] i_inc_conv2d1x126_a;
    wire [32:0] i_inc_conv2d1x126_b;
    logic [32:0] i_inc_conv2d1x126_o;
    wire [32:0] i_inc_conv2d1x126_q;
    wire [31:0] i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer2_conv2d1x127_out_buffer_out;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer6_conv2d1x112_out_buffer_out;
    wire [9:0] i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer6_conv2d1x112_vt_const_9_q;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer6_conv2d1x112_vt_join_q;
    wire [53:0] i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer6_conv2d1x112_vt_select_63_b;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer7_conv2d1x118_out_buffer_out;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer7_conv2d1x118_vt_join_q;
    wire [53:0] i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer7_conv2d1x118_vt_select_63_b;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer8_conv2d1x124_out_buffer_out;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer8_conv2d1x124_vt_join_q;
    wire [53:0] i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer8_conv2d1x124_vt_select_63_b;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer_conv2d1x16_out_buffer_out;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer_conv2d1x16_vt_join_q;
    wire [53:0] i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer_conv2d1x16_vt_select_63_b;
    wire [31:0] i_mul16_conv2d1x13_vt_join_q;
    wire [29:0] i_mul16_conv2d1x13_vt_select_31_b;
    wire [31:0] i_mul36_conv2d1x115_vt_join_q;
    wire [30:0] i_mul36_conv2d1x115_vt_select_31_b;
    wire [31:0] i_shl_conv2d1x12_vt_join_q;
    wire [29:0] i_shl_conv2d1x12_vt_select_31_b;
    wire [0:0] i_unnamed_conv2d1x131_qi;
    reg [0:0] i_unnamed_conv2d1x131_q;
    wire [31:0] bgTrunc_i_add17_conv2d1x14_sel_x_b;
    wire [31:0] bgTrunc_i_add27_conv2d1x110_sel_x_b;
    wire [31:0] bgTrunc_i_add37_conv2d1x116_sel_x_b;
    wire [31:0] bgTrunc_i_add47_conv2d1x122_sel_x_b;
    wire [31:0] bgTrunc_i_inc_conv2d1x126_sel_x_b;
    wire [63:0] bgTrunc_i_mul16_conv2d1x13_sel_x_in;
    wire [31:0] bgTrunc_i_mul16_conv2d1x13_sel_x_b;
    wire [63:0] bgTrunc_i_mul26_conv2d1x19_sel_x_in;
    wire [31:0] bgTrunc_i_mul26_conv2d1x19_sel_x_b;
    wire [63:0] bgTrunc_i_mul36_conv2d1x115_sel_x_in;
    wire [31:0] bgTrunc_i_mul36_conv2d1x115_sel_x_b;
    wire [63:0] bgTrunc_i_mul46_conv2d1x121_sel_x_in;
    wire [31:0] bgTrunc_i_mul46_conv2d1x121_sel_x_b;
    wire [64:0] i_arrayidx195_conv2d1x10_add_x_a;
    wire [64:0] i_arrayidx195_conv2d1x10_add_x_b;
    logic [64:0] i_arrayidx195_conv2d1x10_add_x_o;
    wire [64:0] i_arrayidx195_conv2d1x10_add_x_q;
    wire [61:0] i_arrayidx195_conv2d1x10_narrow_x_b;
    wire [63:0] i_arrayidx195_conv2d1x10_shift_join_x_q;
    wire [63:0] i_arrayidx195_conv2d1x10_dupName_0_trunc_sel_x_b;
    wire [64:0] i_arrayidx297_conv2d1x10_add_x_a;
    wire [64:0] i_arrayidx297_conv2d1x10_add_x_b;
    logic [64:0] i_arrayidx297_conv2d1x10_add_x_o;
    wire [64:0] i_arrayidx297_conv2d1x10_add_x_q;
    wire [61:0] i_arrayidx297_conv2d1x10_narrow_x_b;
    wire [63:0] i_arrayidx297_conv2d1x10_shift_join_x_q;
    wire [63:0] i_arrayidx297_conv2d1x10_dupName_0_trunc_sel_x_b;
    wire [64:0] i_arrayidx398_conv2d1x10_add_x_a;
    wire [64:0] i_arrayidx398_conv2d1x10_add_x_b;
    logic [64:0] i_arrayidx398_conv2d1x10_add_x_o;
    wire [64:0] i_arrayidx398_conv2d1x10_add_x_q;
    wire [61:0] i_arrayidx398_conv2d1x10_narrow_x_b;
    wire [63:0] i_arrayidx398_conv2d1x10_shift_join_x_q;
    wire [63:0] i_arrayidx398_conv2d1x10_dupName_0_trunc_sel_x_b;
    wire [64:0] i_arrayidx499_conv2d1x10_add_x_a;
    wire [64:0] i_arrayidx499_conv2d1x10_add_x_b;
    logic [64:0] i_arrayidx499_conv2d1x10_add_x_o;
    wire [64:0] i_arrayidx499_conv2d1x10_add_x_q;
    wire [61:0] i_arrayidx499_conv2d1x10_narrow_x_b;
    wire [63:0] i_arrayidx499_conv2d1x10_shift_join_x_q;
    wire [63:0] i_arrayidx499_conv2d1x10_dupName_0_trunc_sel_x_b;
    wire [63:0] i_idxprom18_conv2d1x15_sel_x_b;
    wire [63:0] i_idxprom28_conv2d1x111_sel_x_b;
    wire [63:0] i_idxprom38_conv2d1x117_sel_x_b;
    wire [63:0] i_idxprom48_conv2d1x123_sel_x_b;
    (* dont_merge *) reg [0:0] valid_fanout_reg0_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg1_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg2_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg3_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg4_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg5_q;
    wire [29:0] i_add24_conv2d1x18_BitSelect_for_a_b;
    wire [31:0] i_add24_conv2d1x18_join_q;
    wire [31:0] i_add34_conv2d1x114_join_q;
    wire [31:0] i_add44_conv2d1x120_join_q;
    wire [13:0] i_mul16_conv2d1x13_bs2_b;
    wire [17:0] i_mul16_conv2d1x13_bs7_in;
    wire [17:0] i_mul16_conv2d1x13_bs7_b;
    wire [63:0] i_mul16_conv2d1x13_sums_join_0_q;
    wire [50:0] i_mul16_conv2d1x13_sums_align_1_q;
    wire [50:0] i_mul16_conv2d1x13_sums_align_1_qint;
    wire [64:0] i_mul16_conv2d1x13_sums_result_add_0_0_a;
    wire [64:0] i_mul16_conv2d1x13_sums_result_add_0_0_b;
    logic [64:0] i_mul16_conv2d1x13_sums_result_add_0_0_o;
    wire [64:0] i_mul16_conv2d1x13_sums_result_add_0_0_q;
    wire [63:0] i_mul26_conv2d1x19_sums_join_0_q;
    wire [50:0] i_mul26_conv2d1x19_sums_align_1_q;
    wire [50:0] i_mul26_conv2d1x19_sums_align_1_qint;
    wire [64:0] i_mul26_conv2d1x19_sums_result_add_0_0_a;
    wire [64:0] i_mul26_conv2d1x19_sums_result_add_0_0_b;
    logic [64:0] i_mul26_conv2d1x19_sums_result_add_0_0_o;
    wire [64:0] i_mul26_conv2d1x19_sums_result_add_0_0_q;
    wire [63:0] i_mul36_conv2d1x115_sums_join_0_q;
    wire [50:0] i_mul36_conv2d1x115_sums_align_1_q;
    wire [50:0] i_mul36_conv2d1x115_sums_align_1_qint;
    wire [64:0] i_mul36_conv2d1x115_sums_result_add_0_0_a;
    wire [64:0] i_mul36_conv2d1x115_sums_result_add_0_0_b;
    logic [64:0] i_mul36_conv2d1x115_sums_result_add_0_0_o;
    wire [64:0] i_mul36_conv2d1x115_sums_result_add_0_0_q;
    wire [63:0] i_mul46_conv2d1x121_sums_join_0_q;
    wire [50:0] i_mul46_conv2d1x121_sums_align_1_q;
    wire [50:0] i_mul46_conv2d1x121_sums_align_1_qint;
    wire [64:0] i_mul46_conv2d1x121_sums_result_add_0_0_a;
    wire [64:0] i_mul46_conv2d1x121_sums_result_add_0_0_b;
    logic [64:0] i_mul46_conv2d1x121_sums_result_add_0_0_o;
    wire [64:0] i_mul46_conv2d1x121_sums_result_add_0_0_q;
    wire [29:0] leftShiftStage0Idx1Rng2_uid231_i_shl_conv2d1x10_shift_x_in;
    wire [29:0] leftShiftStage0Idx1Rng2_uid231_i_shl_conv2d1x10_shift_x_b;
    wire [31:0] leftShiftStage0Idx1_uid232_i_shl_conv2d1x10_shift_x_q;
    wire [0:0] leftShiftStage0_uid234_i_shl_conv2d1x10_shift_x_s;
    reg [31:0] leftShiftStage0_uid234_i_shl_conv2d1x10_shift_x_q;
    wire i_mul16_conv2d1x13_im0_cma_reset;
    wire [13:0] i_mul16_conv2d1x13_im0_cma_a0;
    wire [13:0] i_mul16_conv2d1x13_im0_cma_c0;
    wire [27:0] i_mul16_conv2d1x13_im0_cma_s0;
    wire [27:0] i_mul16_conv2d1x13_im0_cma_qq;
    wire [27:0] i_mul16_conv2d1x13_im0_cma_q;
    wire i_mul16_conv2d1x13_im0_cma_ena0;
    wire i_mul16_conv2d1x13_im0_cma_ena1;
    wire i_mul16_conv2d1x13_im0_cma_ena2;
    wire i_mul16_conv2d1x13_im8_cma_reset;
    wire [17:0] i_mul16_conv2d1x13_im8_cma_a0;
    wire [17:0] i_mul16_conv2d1x13_im8_cma_c0;
    wire [35:0] i_mul16_conv2d1x13_im8_cma_s0;
    wire [35:0] i_mul16_conv2d1x13_im8_cma_qq;
    wire [35:0] i_mul16_conv2d1x13_im8_cma_q;
    wire i_mul16_conv2d1x13_im8_cma_ena0;
    wire i_mul16_conv2d1x13_im8_cma_ena1;
    wire i_mul16_conv2d1x13_im8_cma_ena2;
    wire i_mul26_conv2d1x19_im0_cma_reset;
    wire [13:0] i_mul26_conv2d1x19_im0_cma_a0;
    wire [13:0] i_mul26_conv2d1x19_im0_cma_c0;
    wire [27:0] i_mul26_conv2d1x19_im0_cma_s0;
    wire [27:0] i_mul26_conv2d1x19_im0_cma_qq;
    wire [27:0] i_mul26_conv2d1x19_im0_cma_q;
    wire i_mul26_conv2d1x19_im0_cma_ena0;
    wire i_mul26_conv2d1x19_im0_cma_ena1;
    wire i_mul26_conv2d1x19_im0_cma_ena2;
    wire i_mul26_conv2d1x19_im8_cma_reset;
    wire [17:0] i_mul26_conv2d1x19_im8_cma_a0;
    wire [17:0] i_mul26_conv2d1x19_im8_cma_c0;
    wire [35:0] i_mul26_conv2d1x19_im8_cma_s0;
    wire [35:0] i_mul26_conv2d1x19_im8_cma_qq;
    wire [35:0] i_mul26_conv2d1x19_im8_cma_q;
    wire i_mul26_conv2d1x19_im8_cma_ena0;
    wire i_mul26_conv2d1x19_im8_cma_ena1;
    wire i_mul26_conv2d1x19_im8_cma_ena2;
    wire i_mul36_conv2d1x115_im0_cma_reset;
    wire [13:0] i_mul36_conv2d1x115_im0_cma_a0;
    wire [13:0] i_mul36_conv2d1x115_im0_cma_c0;
    wire [27:0] i_mul36_conv2d1x115_im0_cma_s0;
    wire [27:0] i_mul36_conv2d1x115_im0_cma_qq;
    wire [27:0] i_mul36_conv2d1x115_im0_cma_q;
    wire i_mul36_conv2d1x115_im0_cma_ena0;
    wire i_mul36_conv2d1x115_im0_cma_ena1;
    wire i_mul36_conv2d1x115_im0_cma_ena2;
    wire i_mul36_conv2d1x115_im8_cma_reset;
    wire [17:0] i_mul36_conv2d1x115_im8_cma_a0;
    wire [17:0] i_mul36_conv2d1x115_im8_cma_c0;
    wire [35:0] i_mul36_conv2d1x115_im8_cma_s0;
    wire [35:0] i_mul36_conv2d1x115_im8_cma_qq;
    wire [35:0] i_mul36_conv2d1x115_im8_cma_q;
    wire i_mul36_conv2d1x115_im8_cma_ena0;
    wire i_mul36_conv2d1x115_im8_cma_ena1;
    wire i_mul36_conv2d1x115_im8_cma_ena2;
    wire i_mul46_conv2d1x121_im0_cma_reset;
    wire [13:0] i_mul46_conv2d1x121_im0_cma_a0;
    wire [13:0] i_mul46_conv2d1x121_im0_cma_c0;
    wire [27:0] i_mul46_conv2d1x121_im0_cma_s0;
    wire [27:0] i_mul46_conv2d1x121_im0_cma_qq;
    wire [27:0] i_mul46_conv2d1x121_im0_cma_q;
    wire i_mul46_conv2d1x121_im0_cma_ena0;
    wire i_mul46_conv2d1x121_im0_cma_ena1;
    wire i_mul46_conv2d1x121_im0_cma_ena2;
    wire i_mul46_conv2d1x121_im8_cma_reset;
    wire [17:0] i_mul46_conv2d1x121_im8_cma_a0;
    wire [17:0] i_mul46_conv2d1x121_im8_cma_c0;
    wire [35:0] i_mul46_conv2d1x121_im8_cma_s0;
    wire [35:0] i_mul46_conv2d1x121_im8_cma_qq;
    wire [35:0] i_mul46_conv2d1x121_im8_cma_q;
    wire i_mul46_conv2d1x121_im8_cma_ena0;
    wire i_mul46_conv2d1x121_im8_cma_ena1;
    wire i_mul46_conv2d1x121_im8_cma_ena2;
    wire i_mul16_conv2d1x13_ma3_cma_reset;
    wire [13:0] i_mul16_conv2d1x13_ma3_cma_a0;
    wire [17:0] i_mul16_conv2d1x13_ma3_cma_c0;
    wire [13:0] i_mul16_conv2d1x13_ma3_cma_a1;
    wire [17:0] i_mul16_conv2d1x13_ma3_cma_c1;
    wire [32:0] i_mul16_conv2d1x13_ma3_cma_s0;
    wire [32:0] i_mul16_conv2d1x13_ma3_cma_qq;
    wire [32:0] i_mul16_conv2d1x13_ma3_cma_q;
    wire i_mul16_conv2d1x13_ma3_cma_ena0;
    wire i_mul16_conv2d1x13_ma3_cma_ena1;
    wire i_mul16_conv2d1x13_ma3_cma_ena2;
    wire i_mul26_conv2d1x19_ma3_cma_reset;
    wire [13:0] i_mul26_conv2d1x19_ma3_cma_a0;
    wire [17:0] i_mul26_conv2d1x19_ma3_cma_c0;
    wire [13:0] i_mul26_conv2d1x19_ma3_cma_a1;
    wire [17:0] i_mul26_conv2d1x19_ma3_cma_c1;
    wire [32:0] i_mul26_conv2d1x19_ma3_cma_s0;
    wire [32:0] i_mul26_conv2d1x19_ma3_cma_qq;
    wire [32:0] i_mul26_conv2d1x19_ma3_cma_q;
    wire i_mul26_conv2d1x19_ma3_cma_ena0;
    wire i_mul26_conv2d1x19_ma3_cma_ena1;
    wire i_mul26_conv2d1x19_ma3_cma_ena2;
    wire i_mul36_conv2d1x115_ma3_cma_reset;
    wire [13:0] i_mul36_conv2d1x115_ma3_cma_a0;
    wire [17:0] i_mul36_conv2d1x115_ma3_cma_c0;
    wire [13:0] i_mul36_conv2d1x115_ma3_cma_a1;
    wire [17:0] i_mul36_conv2d1x115_ma3_cma_c1;
    wire [32:0] i_mul36_conv2d1x115_ma3_cma_s0;
    wire [32:0] i_mul36_conv2d1x115_ma3_cma_qq;
    wire [32:0] i_mul36_conv2d1x115_ma3_cma_q;
    wire i_mul36_conv2d1x115_ma3_cma_ena0;
    wire i_mul36_conv2d1x115_ma3_cma_ena1;
    wire i_mul36_conv2d1x115_ma3_cma_ena2;
    wire i_mul46_conv2d1x121_ma3_cma_reset;
    wire [13:0] i_mul46_conv2d1x121_ma3_cma_a0;
    wire [17:0] i_mul46_conv2d1x121_ma3_cma_c0;
    wire [13:0] i_mul46_conv2d1x121_ma3_cma_a1;
    wire [17:0] i_mul46_conv2d1x121_ma3_cma_c1;
    wire [32:0] i_mul46_conv2d1x121_ma3_cma_s0;
    wire [32:0] i_mul46_conv2d1x121_ma3_cma_qq;
    wire [32:0] i_mul46_conv2d1x121_ma3_cma_q;
    wire i_mul46_conv2d1x121_ma3_cma_ena0;
    wire i_mul46_conv2d1x121_ma3_cma_ena1;
    wire i_mul46_conv2d1x121_ma3_cma_ena2;
    wire [13:0] i_mul26_conv2d1x19_bs2_merged_bit_select_b;
    wire [17:0] i_mul26_conv2d1x19_bs2_merged_bit_select_c;
    wire [13:0] i_mul36_conv2d1x115_bs2_merged_bit_select_b;
    wire [17:0] i_mul36_conv2d1x115_bs2_merged_bit_select_c;
    wire [13:0] i_mul46_conv2d1x121_bs2_merged_bit_select_b;
    wire [17:0] i_mul46_conv2d1x121_bs2_merged_bit_select_c;
    wire [13:0] i_mul16_conv2d1x13_bs1_merged_bit_select_b;
    wire [17:0] i_mul16_conv2d1x13_bs1_merged_bit_select_c;
    reg [0:0] redist1_sync_together45_aunroll_x_in_c0_eni5_4_tpl_1_q;
    reg [0:0] redist2_sync_together45_aunroll_x_in_c0_eni5_5_tpl_1_q;
    reg [0:0] redist3_sync_together45_aunroll_x_in_i_valid_3_q;
    reg [0:0] redist3_sync_together45_aunroll_x_in_i_valid_3_delay_0;
    reg [0:0] redist3_sync_together45_aunroll_x_in_i_valid_3_delay_1;
    reg [31:0] redist4_bgTrunc_i_mul46_conv2d1x121_sel_x_b_1_q;
    reg [31:0] redist5_bgTrunc_i_mul26_conv2d1x19_sel_x_b_1_q;
    reg [31:0] redist6_bgTrunc_i_inc_conv2d1x126_sel_x_b_1_q;
    reg [0:0] redist8_i_unnamed_conv2d1x131_q_3_q;
    reg [0:0] redist8_i_unnamed_conv2d1x131_q_3_delay_0;
    reg [30:0] redist9_i_mul36_conv2d1x115_vt_select_31_b_1_q;
    reg [29:0] redist10_i_mul16_conv2d1x13_vt_select_31_b_1_q;
    reg [31:0] redist0_sync_together45_aunroll_x_in_c0_eni5_3_tpl_4_outputreg0_q;
    wire redist0_sync_together45_aunroll_x_in_c0_eni5_3_tpl_4_mem_reset0;
    wire [31:0] redist0_sync_together45_aunroll_x_in_c0_eni5_3_tpl_4_mem_ia;
    wire [0:0] redist0_sync_together45_aunroll_x_in_c0_eni5_3_tpl_4_mem_aa;
    wire [0:0] redist0_sync_together45_aunroll_x_in_c0_eni5_3_tpl_4_mem_ab;
    wire [31:0] redist0_sync_together45_aunroll_x_in_c0_eni5_3_tpl_4_mem_iq;
    wire [31:0] redist0_sync_together45_aunroll_x_in_c0_eni5_3_tpl_4_mem_q;
    wire [0:0] redist0_sync_together45_aunroll_x_in_c0_eni5_3_tpl_4_rdcnt_q;
    (* preserve *) reg [0:0] redist0_sync_together45_aunroll_x_in_c0_eni5_3_tpl_4_rdcnt_i;
    reg [0:0] redist0_sync_together45_aunroll_x_in_c0_eni5_3_tpl_4_wraddr_q;
    (* dont_merge *) reg [0:0] redist0_sync_together45_aunroll_x_in_c0_eni5_3_tpl_4_cmpReg_q;
    wire [0:0] redist0_sync_together45_aunroll_x_in_c0_eni5_3_tpl_4_notEnable_q;
    wire [0:0] redist0_sync_together45_aunroll_x_in_c0_eni5_3_tpl_4_nor_q;
    (* dont_merge *) reg [0:0] redist0_sync_together45_aunroll_x_in_c0_eni5_3_tpl_4_sticky_ena_q;
    wire [0:0] redist0_sync_together45_aunroll_x_in_c0_eni5_3_tpl_4_enaAnd_q;
    wire redist7_bgTrunc_i_inc_conv2d1x126_sel_x_b_4_mem_reset0;
    wire [31:0] redist7_bgTrunc_i_inc_conv2d1x126_sel_x_b_4_mem_ia;
    wire [0:0] redist7_bgTrunc_i_inc_conv2d1x126_sel_x_b_4_mem_aa;
    wire [0:0] redist7_bgTrunc_i_inc_conv2d1x126_sel_x_b_4_mem_ab;
    wire [31:0] redist7_bgTrunc_i_inc_conv2d1x126_sel_x_b_4_mem_iq;
    wire [31:0] redist7_bgTrunc_i_inc_conv2d1x126_sel_x_b_4_mem_q;
    wire [0:0] redist7_bgTrunc_i_inc_conv2d1x126_sel_x_b_4_rdcnt_q;
    (* preserve *) reg [0:0] redist7_bgTrunc_i_inc_conv2d1x126_sel_x_b_4_rdcnt_i;
    reg [0:0] redist7_bgTrunc_i_inc_conv2d1x126_sel_x_b_4_wraddr_q;
    (* dont_merge *) reg [0:0] redist7_bgTrunc_i_inc_conv2d1x126_sel_x_b_4_cmpReg_q;
    wire [0:0] redist7_bgTrunc_i_inc_conv2d1x126_sel_x_b_4_notEnable_q;
    wire [0:0] redist7_bgTrunc_i_inc_conv2d1x126_sel_x_b_4_nor_q;
    (* dont_merge *) reg [0:0] redist7_bgTrunc_i_inc_conv2d1x126_sel_x_b_4_sticky_ena_q;
    wire [0:0] redist7_bgTrunc_i_inc_conv2d1x126_sel_x_b_4_enaAnd_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist3_sync_together45_aunroll_x_in_i_valid_3(DELAY,254)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_sync_together45_aunroll_x_in_i_valid_3_delay_0 <= '0;
            redist3_sync_together45_aunroll_x_in_i_valid_3_delay_1 <= '0;
            redist3_sync_together45_aunroll_x_in_i_valid_3_q <= '0;
        end
        else
        begin
            redist3_sync_together45_aunroll_x_in_i_valid_3_delay_0 <= $unsigned(in_i_valid);
            redist3_sync_together45_aunroll_x_in_i_valid_3_delay_1 <= redist3_sync_together45_aunroll_x_in_i_valid_3_delay_0;
            redist3_sync_together45_aunroll_x_in_i_valid_3_q <= redist3_sync_together45_aunroll_x_in_i_valid_3_delay_1;
        end
    end

    // valid_fanout_reg0(REG,141)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist3_sync_together45_aunroll_x_in_i_valid_3_q);
        end
    end

    // redist2_sync_together45_aunroll_x_in_c0_eni5_5_tpl_1(DELAY,253)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_sync_together45_aunroll_x_in_c0_eni5_5_tpl_1_q <= '0;
        end
        else
        begin
            redist2_sync_together45_aunroll_x_in_c0_eni5_5_tpl_1_q <= $unsigned(in_c0_eni5_5_tpl);
        end
    end

    // redist1_sync_together45_aunroll_x_in_c0_eni5_4_tpl_1(DELAY,252)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together45_aunroll_x_in_c0_eni5_4_tpl_1_q <= '0;
        end
        else
        begin
            redist1_sync_together45_aunroll_x_in_c0_eni5_4_tpl_1_q <= $unsigned(in_c0_eni5_4_tpl);
        end
    end

    // valid_fanout_reg5(REG,146)@1 + 1
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

    // i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer2_conv2d1x127(BLACKBOX,58)@0
    // in in_i_dependence@2
    // in in_valid_in@2
    // out out_buffer_out@2
    // out out_valid_out@2
    conv2d1x1_i_llvm_fpga_sync_buffer_i32_in0000nnels_sync_buffer2_0 thei_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer2_conv2d1x127 (
        .in_buffer_in(in_input_channels),
        .in_i_dependence(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_buffer_out(i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer2_conv2d1x127_out_buffer_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_139(CONSTANT,16)
    assign c_i32_139_q = $unsigned(32'b00000000000000000000000000000001);

    // i_inc_conv2d1x126(ADD,57)@1
    assign i_inc_conv2d1x126_a = {1'b0, in_c0_eni5_1_tpl};
    assign i_inc_conv2d1x126_b = {1'b0, c_i32_139_q};
    assign i_inc_conv2d1x126_o = $unsigned(i_inc_conv2d1x126_a) + $unsigned(i_inc_conv2d1x126_b);
    assign i_inc_conv2d1x126_q = i_inc_conv2d1x126_o[32:0];

    // bgTrunc_i_inc_conv2d1x126_sel_x(BITSELECT,99)@1
    assign bgTrunc_i_inc_conv2d1x126_sel_x_b = i_inc_conv2d1x126_q[31:0];

    // redist6_bgTrunc_i_inc_conv2d1x126_sel_x_b_1(DELAY,257)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_bgTrunc_i_inc_conv2d1x126_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist6_bgTrunc_i_inc_conv2d1x126_sel_x_b_1_q <= $unsigned(bgTrunc_i_inc_conv2d1x126_sel_x_b);
        end
    end

    // i_cmp10_conv2d1x128(COMPARE,48)@2
    assign i_cmp10_conv2d1x128_a = $unsigned({{2{redist6_bgTrunc_i_inc_conv2d1x126_sel_x_b_1_q[31]}}, redist6_bgTrunc_i_inc_conv2d1x126_sel_x_b_1_q});
    assign i_cmp10_conv2d1x128_b = $unsigned({{2{i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer2_conv2d1x127_out_buffer_out[31]}}, i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer2_conv2d1x127_out_buffer_out});
    assign i_cmp10_conv2d1x128_o = $unsigned($signed(i_cmp10_conv2d1x128_a) - $signed(i_cmp10_conv2d1x128_b));
    assign i_cmp10_conv2d1x128_n[0] = ~ (i_cmp10_conv2d1x128_o[33]);

    // i_cmp1010_guard_conv2d1x130(LOGICAL,47)@2
    assign i_cmp1010_guard_conv2d1x130_q = i_cmp10_conv2d1x128_n | redist1_sync_together45_aunroll_x_in_c0_eni5_4_tpl_1_q;

    // i_unnamed_conv2d1x131(LOGICAL,88)@2 + 1
    assign i_unnamed_conv2d1x131_qi = i_cmp1010_guard_conv2d1x130_q | redist2_sync_together45_aunroll_x_in_c0_eni5_5_tpl_1_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_unnamed_conv2d1x131_delay ( .xin(i_unnamed_conv2d1x131_qi), .xout(i_unnamed_conv2d1x131_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist8_i_unnamed_conv2d1x131_q_3(DELAY,259)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_i_unnamed_conv2d1x131_q_3_delay_0 <= '0;
            redist8_i_unnamed_conv2d1x131_q_3_q <= '0;
        end
        else
        begin
            redist8_i_unnamed_conv2d1x131_q_3_delay_0 <= $unsigned(i_unnamed_conv2d1x131_q);
            redist8_i_unnamed_conv2d1x131_q_3_q <= redist8_i_unnamed_conv2d1x131_q_3_delay_0;
        end
    end

    // redist7_bgTrunc_i_inc_conv2d1x126_sel_x_b_4_notEnable(LOGICAL,275)
    assign redist7_bgTrunc_i_inc_conv2d1x126_sel_x_b_4_notEnable_q = $unsigned(~ (VCC_q));

    // redist7_bgTrunc_i_inc_conv2d1x126_sel_x_b_4_nor(LOGICAL,276)
    assign redist7_bgTrunc_i_inc_conv2d1x126_sel_x_b_4_nor_q = ~ (redist7_bgTrunc_i_inc_conv2d1x126_sel_x_b_4_notEnable_q | redist7_bgTrunc_i_inc_conv2d1x126_sel_x_b_4_sticky_ena_q);

    // redist7_bgTrunc_i_inc_conv2d1x126_sel_x_b_4_cmpReg(REG,274)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_bgTrunc_i_inc_conv2d1x126_sel_x_b_4_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist7_bgTrunc_i_inc_conv2d1x126_sel_x_b_4_cmpReg_q <= $unsigned(VCC_q);
        end
    end

    // redist7_bgTrunc_i_inc_conv2d1x126_sel_x_b_4_sticky_ena(REG,277)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_bgTrunc_i_inc_conv2d1x126_sel_x_b_4_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist7_bgTrunc_i_inc_conv2d1x126_sel_x_b_4_nor_q == 1'b1)
        begin
            redist7_bgTrunc_i_inc_conv2d1x126_sel_x_b_4_sticky_ena_q <= $unsigned(redist7_bgTrunc_i_inc_conv2d1x126_sel_x_b_4_cmpReg_q);
        end
    end

    // redist7_bgTrunc_i_inc_conv2d1x126_sel_x_b_4_enaAnd(LOGICAL,278)
    assign redist7_bgTrunc_i_inc_conv2d1x126_sel_x_b_4_enaAnd_q = redist7_bgTrunc_i_inc_conv2d1x126_sel_x_b_4_sticky_ena_q & VCC_q;

    // redist7_bgTrunc_i_inc_conv2d1x126_sel_x_b_4_rdcnt(COUNTER,272)
    // low=0, high=1, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_bgTrunc_i_inc_conv2d1x126_sel_x_b_4_rdcnt_i <= 1'd0;
        end
        else
        begin
            redist7_bgTrunc_i_inc_conv2d1x126_sel_x_b_4_rdcnt_i <= $unsigned(redist7_bgTrunc_i_inc_conv2d1x126_sel_x_b_4_rdcnt_i) + $unsigned(1'd1);
        end
    end
    assign redist7_bgTrunc_i_inc_conv2d1x126_sel_x_b_4_rdcnt_q = redist7_bgTrunc_i_inc_conv2d1x126_sel_x_b_4_rdcnt_i[0:0];

    // redist7_bgTrunc_i_inc_conv2d1x126_sel_x_b_4_wraddr(REG,273)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_bgTrunc_i_inc_conv2d1x126_sel_x_b_4_wraddr_q <= $unsigned(1'b1);
        end
        else
        begin
            redist7_bgTrunc_i_inc_conv2d1x126_sel_x_b_4_wraddr_q <= $unsigned(redist7_bgTrunc_i_inc_conv2d1x126_sel_x_b_4_rdcnt_q);
        end
    end

    // redist7_bgTrunc_i_inc_conv2d1x126_sel_x_b_4_mem(DUALMEM,271)
    assign redist7_bgTrunc_i_inc_conv2d1x126_sel_x_b_4_mem_ia = $unsigned(redist6_bgTrunc_i_inc_conv2d1x126_sel_x_b_1_q);
    assign redist7_bgTrunc_i_inc_conv2d1x126_sel_x_b_4_mem_aa = redist7_bgTrunc_i_inc_conv2d1x126_sel_x_b_4_wraddr_q;
    assign redist7_bgTrunc_i_inc_conv2d1x126_sel_x_b_4_mem_ab = redist7_bgTrunc_i_inc_conv2d1x126_sel_x_b_4_rdcnt_q;
    assign redist7_bgTrunc_i_inc_conv2d1x126_sel_x_b_4_mem_reset0 = ~ (resetn);
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
    ) redist7_bgTrunc_i_inc_conv2d1x126_sel_x_b_4_mem_dmem (
        .clocken1(redist7_bgTrunc_i_inc_conv2d1x126_sel_x_b_4_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist7_bgTrunc_i_inc_conv2d1x126_sel_x_b_4_mem_reset0),
        .clock1(clock),
        .address_a(redist7_bgTrunc_i_inc_conv2d1x126_sel_x_b_4_mem_aa),
        .data_a(redist7_bgTrunc_i_inc_conv2d1x126_sel_x_b_4_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist7_bgTrunc_i_inc_conv2d1x126_sel_x_b_4_mem_ab),
        .q_b(redist7_bgTrunc_i_inc_conv2d1x126_sel_x_b_4_mem_iq),
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
    assign redist7_bgTrunc_i_inc_conv2d1x126_sel_x_b_4_mem_q = redist7_bgTrunc_i_inc_conv2d1x126_sel_x_b_4_mem_iq[31:0];

    // redist0_sync_together45_aunroll_x_in_c0_eni5_3_tpl_4_notEnable(LOGICAL,267)
    assign redist0_sync_together45_aunroll_x_in_c0_eni5_3_tpl_4_notEnable_q = $unsigned(~ (VCC_q));

    // redist0_sync_together45_aunroll_x_in_c0_eni5_3_tpl_4_nor(LOGICAL,268)
    assign redist0_sync_together45_aunroll_x_in_c0_eni5_3_tpl_4_nor_q = ~ (redist0_sync_together45_aunroll_x_in_c0_eni5_3_tpl_4_notEnable_q | redist0_sync_together45_aunroll_x_in_c0_eni5_3_tpl_4_sticky_ena_q);

    // redist0_sync_together45_aunroll_x_in_c0_eni5_3_tpl_4_cmpReg(REG,266)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_sync_together45_aunroll_x_in_c0_eni5_3_tpl_4_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist0_sync_together45_aunroll_x_in_c0_eni5_3_tpl_4_cmpReg_q <= $unsigned(VCC_q);
        end
    end

    // redist0_sync_together45_aunroll_x_in_c0_eni5_3_tpl_4_sticky_ena(REG,269)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_sync_together45_aunroll_x_in_c0_eni5_3_tpl_4_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist0_sync_together45_aunroll_x_in_c0_eni5_3_tpl_4_nor_q == 1'b1)
        begin
            redist0_sync_together45_aunroll_x_in_c0_eni5_3_tpl_4_sticky_ena_q <= $unsigned(redist0_sync_together45_aunroll_x_in_c0_eni5_3_tpl_4_cmpReg_q);
        end
    end

    // redist0_sync_together45_aunroll_x_in_c0_eni5_3_tpl_4_enaAnd(LOGICAL,270)
    assign redist0_sync_together45_aunroll_x_in_c0_eni5_3_tpl_4_enaAnd_q = redist0_sync_together45_aunroll_x_in_c0_eni5_3_tpl_4_sticky_ena_q & VCC_q;

    // redist0_sync_together45_aunroll_x_in_c0_eni5_3_tpl_4_rdcnt(COUNTER,264)
    // low=0, high=1, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_sync_together45_aunroll_x_in_c0_eni5_3_tpl_4_rdcnt_i <= 1'd0;
        end
        else
        begin
            redist0_sync_together45_aunroll_x_in_c0_eni5_3_tpl_4_rdcnt_i <= $unsigned(redist0_sync_together45_aunroll_x_in_c0_eni5_3_tpl_4_rdcnt_i) + $unsigned(1'd1);
        end
    end
    assign redist0_sync_together45_aunroll_x_in_c0_eni5_3_tpl_4_rdcnt_q = redist0_sync_together45_aunroll_x_in_c0_eni5_3_tpl_4_rdcnt_i[0:0];

    // redist0_sync_together45_aunroll_x_in_c0_eni5_3_tpl_4_wraddr(REG,265)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_sync_together45_aunroll_x_in_c0_eni5_3_tpl_4_wraddr_q <= $unsigned(1'b1);
        end
        else
        begin
            redist0_sync_together45_aunroll_x_in_c0_eni5_3_tpl_4_wraddr_q <= $unsigned(redist0_sync_together45_aunroll_x_in_c0_eni5_3_tpl_4_rdcnt_q);
        end
    end

    // redist0_sync_together45_aunroll_x_in_c0_eni5_3_tpl_4_mem(DUALMEM,263)
    assign redist0_sync_together45_aunroll_x_in_c0_eni5_3_tpl_4_mem_ia = $unsigned(in_c0_eni5_3_tpl);
    assign redist0_sync_together45_aunroll_x_in_c0_eni5_3_tpl_4_mem_aa = redist0_sync_together45_aunroll_x_in_c0_eni5_3_tpl_4_wraddr_q;
    assign redist0_sync_together45_aunroll_x_in_c0_eni5_3_tpl_4_mem_ab = redist0_sync_together45_aunroll_x_in_c0_eni5_3_tpl_4_rdcnt_q;
    assign redist0_sync_together45_aunroll_x_in_c0_eni5_3_tpl_4_mem_reset0 = ~ (resetn);
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
    ) redist0_sync_together45_aunroll_x_in_c0_eni5_3_tpl_4_mem_dmem (
        .clocken1(redist0_sync_together45_aunroll_x_in_c0_eni5_3_tpl_4_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist0_sync_together45_aunroll_x_in_c0_eni5_3_tpl_4_mem_reset0),
        .clock1(clock),
        .address_a(redist0_sync_together45_aunroll_x_in_c0_eni5_3_tpl_4_mem_aa),
        .data_a(redist0_sync_together45_aunroll_x_in_c0_eni5_3_tpl_4_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist0_sync_together45_aunroll_x_in_c0_eni5_3_tpl_4_mem_ab),
        .q_b(redist0_sync_together45_aunroll_x_in_c0_eni5_3_tpl_4_mem_iq),
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
    assign redist0_sync_together45_aunroll_x_in_c0_eni5_3_tpl_4_mem_q = redist0_sync_together45_aunroll_x_in_c0_eni5_3_tpl_4_mem_iq[31:0];

    // redist0_sync_together45_aunroll_x_in_c0_eni5_3_tpl_4_outputreg0(DELAY,262)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_sync_together45_aunroll_x_in_c0_eni5_3_tpl_4_outputreg0_q <= '0;
        end
        else
        begin
            redist0_sync_together45_aunroll_x_in_c0_eni5_3_tpl_4_outputreg0_q <= $unsigned(redist0_sync_together45_aunroll_x_in_c0_eni5_3_tpl_4_mem_q);
        end
    end

    // leftShiftStage0Idx1Rng2_uid231_i_shl_conv2d1x10_shift_x(BITSELECT,230)@1
    assign leftShiftStage0Idx1Rng2_uid231_i_shl_conv2d1x10_shift_x_in = in_c0_eni5_1_tpl[29:0];
    assign leftShiftStage0Idx1Rng2_uid231_i_shl_conv2d1x10_shift_x_b = leftShiftStage0Idx1Rng2_uid231_i_shl_conv2d1x10_shift_x_in[29:0];

    // leftShiftStage0Idx1_uid232_i_shl_conv2d1x10_shift_x(BITJOIN,231)@1
    assign leftShiftStage0Idx1_uid232_i_shl_conv2d1x10_shift_x_q = {leftShiftStage0Idx1Rng2_uid231_i_shl_conv2d1x10_shift_x_b, i_arrayidx195_conv2d1x17_vt_const_1_q};

    // leftShiftStage0_uid234_i_shl_conv2d1x10_shift_x(MUX,233)@1
    assign leftShiftStage0_uid234_i_shl_conv2d1x10_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid234_i_shl_conv2d1x10_shift_x_s or in_c0_eni5_1_tpl or leftShiftStage0Idx1_uid232_i_shl_conv2d1x10_shift_x_q)
    begin
        unique case (leftShiftStage0_uid234_i_shl_conv2d1x10_shift_x_s)
            1'b0 : leftShiftStage0_uid234_i_shl_conv2d1x10_shift_x_q = in_c0_eni5_1_tpl;
            1'b1 : leftShiftStage0_uid234_i_shl_conv2d1x10_shift_x_q = leftShiftStage0Idx1_uid232_i_shl_conv2d1x10_shift_x_q;
            default : leftShiftStage0_uid234_i_shl_conv2d1x10_shift_x_q = 32'b0;
        endcase
    end

    // i_shl_conv2d1x12_vt_select_31(BITSELECT,87)@1
    assign i_shl_conv2d1x12_vt_select_31_b = leftShiftStage0_uid234_i_shl_conv2d1x10_shift_x_q[31:2];

    // i_shl_conv2d1x12_vt_join(BITJOIN,86)@1
    assign i_shl_conv2d1x12_vt_join_q = {i_shl_conv2d1x12_vt_select_31_b, i_arrayidx195_conv2d1x17_vt_const_1_q};

    // i_add24_conv2d1x18_BitSelect_for_a(BITSELECT,161)@1
    assign i_add24_conv2d1x18_BitSelect_for_a_b = i_shl_conv2d1x12_vt_join_q[31:2];

    // i_add44_conv2d1x120_join(BITJOIN,166)@1
    assign i_add44_conv2d1x120_join_q = {i_add24_conv2d1x18_BitSelect_for_a_b, VCC_q, VCC_q};

    // i_add44_conv2d1x120_vt_select_31(BITSELECT,33)@1
    assign i_add44_conv2d1x120_vt_select_31_b = i_add44_conv2d1x120_join_q[31:2];

    // i_add44_conv2d1x120_vt_const_1(CONSTANT,31)
    assign i_add44_conv2d1x120_vt_const_1_q = $unsigned(2'b11);

    // i_add44_conv2d1x120_vt_join(BITJOIN,32)@1
    assign i_add44_conv2d1x120_vt_join_q = {i_add44_conv2d1x120_vt_select_31_b, i_add44_conv2d1x120_vt_const_1_q};

    // i_mul46_conv2d1x121_bs2_merged_bit_select(BITSELECT,249)@1
    assign i_mul46_conv2d1x121_bs2_merged_bit_select_b = i_add44_conv2d1x120_vt_join_q[31:18];
    assign i_mul46_conv2d1x121_bs2_merged_bit_select_c = i_add44_conv2d1x120_vt_join_q[17:0];

    // i_mul16_conv2d1x13_bs1_merged_bit_select(BITSELECT,250)@1
    assign i_mul16_conv2d1x13_bs1_merged_bit_select_b = in_c0_eni5_2_tpl[31:18];
    assign i_mul16_conv2d1x13_bs1_merged_bit_select_c = in_c0_eni5_2_tpl[17:0];

    // i_mul46_conv2d1x121_ma3_cma(CHAINMULTADD,246)@1 + 3
    assign i_mul46_conv2d1x121_ma3_cma_reset = ~ (resetn);
    assign i_mul46_conv2d1x121_ma3_cma_ena0 = 1'b1;
    assign i_mul46_conv2d1x121_ma3_cma_ena1 = i_mul46_conv2d1x121_ma3_cma_ena0;
    assign i_mul46_conv2d1x121_ma3_cma_ena2 = i_mul46_conv2d1x121_ma3_cma_ena0;

    assign i_mul46_conv2d1x121_ma3_cma_a0 = i_mul16_conv2d1x13_bs1_merged_bit_select_b;
    assign i_mul46_conv2d1x121_ma3_cma_c0 = i_mul46_conv2d1x121_bs2_merged_bit_select_c;
    assign i_mul46_conv2d1x121_ma3_cma_a1 = i_mul46_conv2d1x121_bs2_merged_bit_select_b;
    assign i_mul46_conv2d1x121_ma3_cma_c1 = i_mul16_conv2d1x13_bs1_merged_bit_select_c;
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
    ) i_mul46_conv2d1x121_ma3_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul46_conv2d1x121_ma3_cma_ena2, i_mul46_conv2d1x121_ma3_cma_ena1, i_mul46_conv2d1x121_ma3_cma_ena0 }),
        .aclr({ i_mul46_conv2d1x121_ma3_cma_reset, i_mul46_conv2d1x121_ma3_cma_reset }),
        .ay(i_mul46_conv2d1x121_ma3_cma_a1),
        .by(i_mul46_conv2d1x121_ma3_cma_a0),
        .ax(i_mul46_conv2d1x121_ma3_cma_c1),
        .bx(i_mul46_conv2d1x121_ma3_cma_c0),
        .resulta(i_mul46_conv2d1x121_ma3_cma_s0),
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
    i_mul46_conv2d1x121_ma3_cma_delay ( .xin(i_mul46_conv2d1x121_ma3_cma_s0), .xout(i_mul46_conv2d1x121_ma3_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul46_conv2d1x121_ma3_cma_q = $unsigned(i_mul46_conv2d1x121_ma3_cma_qq[32:0]);

    // i_mul46_conv2d1x121_sums_align_1(BITSHIFT,224)@4
    assign i_mul46_conv2d1x121_sums_align_1_qint = { i_mul46_conv2d1x121_ma3_cma_q, 18'b000000000000000000 };
    assign i_mul46_conv2d1x121_sums_align_1_q = i_mul46_conv2d1x121_sums_align_1_qint[50:0];

    // i_mul46_conv2d1x121_im0_cma(CHAINMULTADD,241)@1 + 3
    assign i_mul46_conv2d1x121_im0_cma_reset = ~ (resetn);
    assign i_mul46_conv2d1x121_im0_cma_ena0 = 1'b1;
    assign i_mul46_conv2d1x121_im0_cma_ena1 = i_mul46_conv2d1x121_im0_cma_ena0;
    assign i_mul46_conv2d1x121_im0_cma_ena2 = i_mul46_conv2d1x121_im0_cma_ena0;

    assign i_mul46_conv2d1x121_im0_cma_a0 = i_mul16_conv2d1x13_bs1_merged_bit_select_b;
    assign i_mul46_conv2d1x121_im0_cma_c0 = i_mul46_conv2d1x121_bs2_merged_bit_select_b;
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
    ) i_mul46_conv2d1x121_im0_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul46_conv2d1x121_im0_cma_ena2, i_mul46_conv2d1x121_im0_cma_ena1, i_mul46_conv2d1x121_im0_cma_ena0 }),
        .aclr({ i_mul46_conv2d1x121_im0_cma_reset, i_mul46_conv2d1x121_im0_cma_reset }),
        .ay(i_mul46_conv2d1x121_im0_cma_a0),
        .ax(i_mul46_conv2d1x121_im0_cma_c0),
        .resulta(i_mul46_conv2d1x121_im0_cma_s0),
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
    i_mul46_conv2d1x121_im0_cma_delay ( .xin(i_mul46_conv2d1x121_im0_cma_s0), .xout(i_mul46_conv2d1x121_im0_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul46_conv2d1x121_im0_cma_q = $unsigned(i_mul46_conv2d1x121_im0_cma_qq[27:0]);

    // i_mul46_conv2d1x121_im8_cma(CHAINMULTADD,242)@1 + 3
    assign i_mul46_conv2d1x121_im8_cma_reset = ~ (resetn);
    assign i_mul46_conv2d1x121_im8_cma_ena0 = 1'b1;
    assign i_mul46_conv2d1x121_im8_cma_ena1 = i_mul46_conv2d1x121_im8_cma_ena0;
    assign i_mul46_conv2d1x121_im8_cma_ena2 = i_mul46_conv2d1x121_im8_cma_ena0;

    assign i_mul46_conv2d1x121_im8_cma_a0 = i_mul16_conv2d1x13_bs1_merged_bit_select_c;
    assign i_mul46_conv2d1x121_im8_cma_c0 = i_mul46_conv2d1x121_bs2_merged_bit_select_c;
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
    ) i_mul46_conv2d1x121_im8_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul46_conv2d1x121_im8_cma_ena2, i_mul46_conv2d1x121_im8_cma_ena1, i_mul46_conv2d1x121_im8_cma_ena0 }),
        .aclr({ i_mul46_conv2d1x121_im8_cma_reset, i_mul46_conv2d1x121_im8_cma_reset }),
        .ay(i_mul46_conv2d1x121_im8_cma_a0),
        .ax(i_mul46_conv2d1x121_im8_cma_c0),
        .resulta(i_mul46_conv2d1x121_im8_cma_s0),
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
    i_mul46_conv2d1x121_im8_cma_delay ( .xin(i_mul46_conv2d1x121_im8_cma_s0), .xout(i_mul46_conv2d1x121_im8_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul46_conv2d1x121_im8_cma_q = $unsigned(i_mul46_conv2d1x121_im8_cma_qq[35:0]);

    // i_mul46_conv2d1x121_sums_join_0(BITJOIN,223)@4
    assign i_mul46_conv2d1x121_sums_join_0_q = {i_mul46_conv2d1x121_im0_cma_q, i_mul46_conv2d1x121_im8_cma_q};

    // i_mul46_conv2d1x121_sums_result_add_0_0(ADD,226)@4
    assign i_mul46_conv2d1x121_sums_result_add_0_0_a = {1'b0, i_mul46_conv2d1x121_sums_join_0_q};
    assign i_mul46_conv2d1x121_sums_result_add_0_0_b = {14'b00000000000000, i_mul46_conv2d1x121_sums_align_1_q};
    assign i_mul46_conv2d1x121_sums_result_add_0_0_o = $unsigned(i_mul46_conv2d1x121_sums_result_add_0_0_a) + $unsigned(i_mul46_conv2d1x121_sums_result_add_0_0_b);
    assign i_mul46_conv2d1x121_sums_result_add_0_0_q = i_mul46_conv2d1x121_sums_result_add_0_0_o[64:0];

    // bgTrunc_i_mul46_conv2d1x121_sel_x(BITSELECT,103)@4
    assign bgTrunc_i_mul46_conv2d1x121_sel_x_in = i_mul46_conv2d1x121_sums_result_add_0_0_q[63:0];
    assign bgTrunc_i_mul46_conv2d1x121_sel_x_b = bgTrunc_i_mul46_conv2d1x121_sel_x_in[31:0];

    // redist4_bgTrunc_i_mul46_conv2d1x121_sel_x_b_1(DELAY,255)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_bgTrunc_i_mul46_conv2d1x121_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist4_bgTrunc_i_mul46_conv2d1x121_sel_x_b_1_q <= $unsigned(bgTrunc_i_mul46_conv2d1x121_sel_x_b);
        end
    end

    // i_add47_conv2d1x122(ADD,34)@5
    assign i_add47_conv2d1x122_a = {1'b0, redist4_bgTrunc_i_mul46_conv2d1x121_sel_x_b_1_q};
    assign i_add47_conv2d1x122_b = {1'b0, redist0_sync_together45_aunroll_x_in_c0_eni5_3_tpl_4_outputreg0_q};
    assign i_add47_conv2d1x122_o = $unsigned(i_add47_conv2d1x122_a) + $unsigned(i_add47_conv2d1x122_b);
    assign i_add47_conv2d1x122_q = i_add47_conv2d1x122_o[32:0];

    // bgTrunc_i_add47_conv2d1x122_sel_x(BITSELECT,98)@5
    assign bgTrunc_i_add47_conv2d1x122_sel_x_b = i_add47_conv2d1x122_q[31:0];

    // i_idxprom48_conv2d1x123_sel_x(BITSELECT,134)@5
    assign i_idxprom48_conv2d1x123_sel_x_b = $unsigned({{32{bgTrunc_i_add47_conv2d1x122_sel_x_b[31]}}, bgTrunc_i_add47_conv2d1x122_sel_x_b[31:0]});

    // i_arrayidx499_conv2d1x10_narrow_x(BITSELECT,127)@5
    assign i_arrayidx499_conv2d1x10_narrow_x_b = i_idxprom48_conv2d1x123_sel_x_b[61:0];

    // i_arrayidx499_conv2d1x10_shift_join_x(BITJOIN,128)@5
    assign i_arrayidx499_conv2d1x10_shift_join_x_q = {i_arrayidx499_conv2d1x10_narrow_x_b, i_arrayidx195_conv2d1x17_vt_const_1_q};

    // valid_fanout_reg4(REG,145)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg4_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg4_q <= $unsigned(redist3_sync_together45_aunroll_x_in_i_valid_3_q);
        end
    end

    // i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer8_conv2d1x124(BLACKBOX,67)@0
    // in in_i_dependence@5
    // in in_valid_in@5
    // out out_buffer_out@5
    // out out_valid_out@5
    conv2d1x1_i_llvm_fpga_sync_buffer_p1024f0000ut_im_sync_buffer8_0 thei_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer8_conv2d1x124 (
        .in_buffer_in(in_input_im),
        .in_i_dependence(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_buffer_out(i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer8_conv2d1x124_out_buffer_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer8_conv2d1x124_vt_select_63(BITSELECT,70)@5
    assign i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer8_conv2d1x124_vt_select_63_b = i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer8_conv2d1x124_out_buffer_out[63:10];

    // i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer6_conv2d1x112_vt_const_9(CONSTANT,60)
    assign i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer6_conv2d1x112_vt_const_9_q = $unsigned(10'b0000000000);

    // i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer8_conv2d1x124_vt_join(BITJOIN,69)@5
    assign i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer8_conv2d1x124_vt_join_q = {i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer8_conv2d1x124_vt_select_63_b, i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer6_conv2d1x112_vt_const_9_q};

    // i_arrayidx499_conv2d1x10_add_x(ADD,125)@5
    assign i_arrayidx499_conv2d1x10_add_x_a = {1'b0, i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer8_conv2d1x124_vt_join_q};
    assign i_arrayidx499_conv2d1x10_add_x_b = {1'b0, i_arrayidx499_conv2d1x10_shift_join_x_q};
    assign i_arrayidx499_conv2d1x10_add_x_o = $unsigned(i_arrayidx499_conv2d1x10_add_x_a) + $unsigned(i_arrayidx499_conv2d1x10_add_x_b);
    assign i_arrayidx499_conv2d1x10_add_x_q = i_arrayidx499_conv2d1x10_add_x_o[64:0];

    // i_arrayidx499_conv2d1x10_dupName_0_trunc_sel_x(BITSELECT,130)@5
    assign i_arrayidx499_conv2d1x10_dupName_0_trunc_sel_x_b = i_arrayidx499_conv2d1x10_add_x_q[63:0];

    // i_arrayidx499_conv2d1x125_vt_select_63(BITSELECT,46)@5
    assign i_arrayidx499_conv2d1x125_vt_select_63_b = i_arrayidx499_conv2d1x10_dupName_0_trunc_sel_x_b[63:2];

    // i_arrayidx195_conv2d1x17_vt_const_1(CONSTANT,35)
    assign i_arrayidx195_conv2d1x17_vt_const_1_q = $unsigned(2'b00);

    // i_arrayidx499_conv2d1x125_vt_join(BITJOIN,45)@5
    assign i_arrayidx499_conv2d1x125_vt_join_q = {i_arrayidx499_conv2d1x125_vt_select_63_b, i_arrayidx195_conv2d1x17_vt_const_1_q};

    // i_add34_conv2d1x114_join(BITJOIN,164)@1
    assign i_add34_conv2d1x114_join_q = {i_add24_conv2d1x18_BitSelect_for_a_b, VCC_q, GND_q};

    // i_add34_conv2d1x114_vt_select_31(BITSELECT,28)@1
    assign i_add34_conv2d1x114_vt_select_31_b = i_add34_conv2d1x114_join_q[31:2];

    // i_add34_conv2d1x114_vt_const_1(CONSTANT,26)
    assign i_add34_conv2d1x114_vt_const_1_q = $unsigned(2'b10);

    // i_add34_conv2d1x114_vt_join(BITJOIN,27)@1
    assign i_add34_conv2d1x114_vt_join_q = {i_add34_conv2d1x114_vt_select_31_b, i_add34_conv2d1x114_vt_const_1_q};

    // i_mul36_conv2d1x115_bs2_merged_bit_select(BITSELECT,248)@1
    assign i_mul36_conv2d1x115_bs2_merged_bit_select_b = i_add34_conv2d1x114_vt_join_q[31:18];
    assign i_mul36_conv2d1x115_bs2_merged_bit_select_c = i_add34_conv2d1x114_vt_join_q[17:0];

    // i_mul36_conv2d1x115_ma3_cma(CHAINMULTADD,245)@1 + 3
    assign i_mul36_conv2d1x115_ma3_cma_reset = ~ (resetn);
    assign i_mul36_conv2d1x115_ma3_cma_ena0 = 1'b1;
    assign i_mul36_conv2d1x115_ma3_cma_ena1 = i_mul36_conv2d1x115_ma3_cma_ena0;
    assign i_mul36_conv2d1x115_ma3_cma_ena2 = i_mul36_conv2d1x115_ma3_cma_ena0;

    assign i_mul36_conv2d1x115_ma3_cma_a0 = i_mul16_conv2d1x13_bs1_merged_bit_select_b;
    assign i_mul36_conv2d1x115_ma3_cma_c0 = i_mul36_conv2d1x115_bs2_merged_bit_select_c;
    assign i_mul36_conv2d1x115_ma3_cma_a1 = i_mul36_conv2d1x115_bs2_merged_bit_select_b;
    assign i_mul36_conv2d1x115_ma3_cma_c1 = i_mul16_conv2d1x13_bs1_merged_bit_select_c;
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
    ) i_mul36_conv2d1x115_ma3_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul36_conv2d1x115_ma3_cma_ena2, i_mul36_conv2d1x115_ma3_cma_ena1, i_mul36_conv2d1x115_ma3_cma_ena0 }),
        .aclr({ i_mul36_conv2d1x115_ma3_cma_reset, i_mul36_conv2d1x115_ma3_cma_reset }),
        .ay(i_mul36_conv2d1x115_ma3_cma_a1),
        .by(i_mul36_conv2d1x115_ma3_cma_a0),
        .ax(i_mul36_conv2d1x115_ma3_cma_c1),
        .bx(i_mul36_conv2d1x115_ma3_cma_c0),
        .resulta(i_mul36_conv2d1x115_ma3_cma_s0),
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
    i_mul36_conv2d1x115_ma3_cma_delay ( .xin(i_mul36_conv2d1x115_ma3_cma_s0), .xout(i_mul36_conv2d1x115_ma3_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul36_conv2d1x115_ma3_cma_q = $unsigned(i_mul36_conv2d1x115_ma3_cma_qq[32:0]);

    // i_mul36_conv2d1x115_sums_align_1(BITSHIFT,209)@4
    assign i_mul36_conv2d1x115_sums_align_1_qint = { i_mul36_conv2d1x115_ma3_cma_q, 18'b000000000000000000 };
    assign i_mul36_conv2d1x115_sums_align_1_q = i_mul36_conv2d1x115_sums_align_1_qint[50:0];

    // i_mul36_conv2d1x115_im0_cma(CHAINMULTADD,239)@1 + 3
    assign i_mul36_conv2d1x115_im0_cma_reset = ~ (resetn);
    assign i_mul36_conv2d1x115_im0_cma_ena0 = 1'b1;
    assign i_mul36_conv2d1x115_im0_cma_ena1 = i_mul36_conv2d1x115_im0_cma_ena0;
    assign i_mul36_conv2d1x115_im0_cma_ena2 = i_mul36_conv2d1x115_im0_cma_ena0;

    assign i_mul36_conv2d1x115_im0_cma_a0 = i_mul16_conv2d1x13_bs1_merged_bit_select_b;
    assign i_mul36_conv2d1x115_im0_cma_c0 = i_mul36_conv2d1x115_bs2_merged_bit_select_b;
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
    ) i_mul36_conv2d1x115_im0_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul36_conv2d1x115_im0_cma_ena2, i_mul36_conv2d1x115_im0_cma_ena1, i_mul36_conv2d1x115_im0_cma_ena0 }),
        .aclr({ i_mul36_conv2d1x115_im0_cma_reset, i_mul36_conv2d1x115_im0_cma_reset }),
        .ay(i_mul36_conv2d1x115_im0_cma_a0),
        .ax(i_mul36_conv2d1x115_im0_cma_c0),
        .resulta(i_mul36_conv2d1x115_im0_cma_s0),
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
    i_mul36_conv2d1x115_im0_cma_delay ( .xin(i_mul36_conv2d1x115_im0_cma_s0), .xout(i_mul36_conv2d1x115_im0_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul36_conv2d1x115_im0_cma_q = $unsigned(i_mul36_conv2d1x115_im0_cma_qq[27:0]);

    // i_mul36_conv2d1x115_im8_cma(CHAINMULTADD,240)@1 + 3
    assign i_mul36_conv2d1x115_im8_cma_reset = ~ (resetn);
    assign i_mul36_conv2d1x115_im8_cma_ena0 = 1'b1;
    assign i_mul36_conv2d1x115_im8_cma_ena1 = i_mul36_conv2d1x115_im8_cma_ena0;
    assign i_mul36_conv2d1x115_im8_cma_ena2 = i_mul36_conv2d1x115_im8_cma_ena0;

    assign i_mul36_conv2d1x115_im8_cma_a0 = i_mul16_conv2d1x13_bs1_merged_bit_select_c;
    assign i_mul36_conv2d1x115_im8_cma_c0 = i_mul36_conv2d1x115_bs2_merged_bit_select_c;
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
    ) i_mul36_conv2d1x115_im8_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul36_conv2d1x115_im8_cma_ena2, i_mul36_conv2d1x115_im8_cma_ena1, i_mul36_conv2d1x115_im8_cma_ena0 }),
        .aclr({ i_mul36_conv2d1x115_im8_cma_reset, i_mul36_conv2d1x115_im8_cma_reset }),
        .ay(i_mul36_conv2d1x115_im8_cma_a0),
        .ax(i_mul36_conv2d1x115_im8_cma_c0),
        .resulta(i_mul36_conv2d1x115_im8_cma_s0),
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
    i_mul36_conv2d1x115_im8_cma_delay ( .xin(i_mul36_conv2d1x115_im8_cma_s0), .xout(i_mul36_conv2d1x115_im8_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul36_conv2d1x115_im8_cma_q = $unsigned(i_mul36_conv2d1x115_im8_cma_qq[35:0]);

    // i_mul36_conv2d1x115_sums_join_0(BITJOIN,208)@4
    assign i_mul36_conv2d1x115_sums_join_0_q = {i_mul36_conv2d1x115_im0_cma_q, i_mul36_conv2d1x115_im8_cma_q};

    // i_mul36_conv2d1x115_sums_result_add_0_0(ADD,211)@4
    assign i_mul36_conv2d1x115_sums_result_add_0_0_a = {1'b0, i_mul36_conv2d1x115_sums_join_0_q};
    assign i_mul36_conv2d1x115_sums_result_add_0_0_b = {14'b00000000000000, i_mul36_conv2d1x115_sums_align_1_q};
    assign i_mul36_conv2d1x115_sums_result_add_0_0_o = $unsigned(i_mul36_conv2d1x115_sums_result_add_0_0_a) + $unsigned(i_mul36_conv2d1x115_sums_result_add_0_0_b);
    assign i_mul36_conv2d1x115_sums_result_add_0_0_q = i_mul36_conv2d1x115_sums_result_add_0_0_o[64:0];

    // bgTrunc_i_mul36_conv2d1x115_sel_x(BITSELECT,102)@4
    assign bgTrunc_i_mul36_conv2d1x115_sel_x_in = i_mul36_conv2d1x115_sums_result_add_0_0_q[63:0];
    assign bgTrunc_i_mul36_conv2d1x115_sel_x_b = bgTrunc_i_mul36_conv2d1x115_sel_x_in[31:0];

    // i_mul36_conv2d1x115_vt_select_31(BITSELECT,83)@4
    assign i_mul36_conv2d1x115_vt_select_31_b = bgTrunc_i_mul36_conv2d1x115_sel_x_b[31:1];

    // redist9_i_mul36_conv2d1x115_vt_select_31_b_1(DELAY,260)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_i_mul36_conv2d1x115_vt_select_31_b_1_q <= '0;
        end
        else
        begin
            redist9_i_mul36_conv2d1x115_vt_select_31_b_1_q <= $unsigned(i_mul36_conv2d1x115_vt_select_31_b);
        end
    end

    // i_mul36_conv2d1x115_vt_join(BITJOIN,82)@5
    assign i_mul36_conv2d1x115_vt_join_q = {redist9_i_mul36_conv2d1x115_vt_select_31_b_1_q, GND_q};

    // i_add37_conv2d1x116(ADD,29)@5
    assign i_add37_conv2d1x116_a = {1'b0, i_mul36_conv2d1x115_vt_join_q};
    assign i_add37_conv2d1x116_b = {1'b0, redist0_sync_together45_aunroll_x_in_c0_eni5_3_tpl_4_outputreg0_q};
    assign i_add37_conv2d1x116_o = $unsigned(i_add37_conv2d1x116_a) + $unsigned(i_add37_conv2d1x116_b);
    assign i_add37_conv2d1x116_q = i_add37_conv2d1x116_o[32:0];

    // bgTrunc_i_add37_conv2d1x116_sel_x(BITSELECT,97)@5
    assign bgTrunc_i_add37_conv2d1x116_sel_x_b = i_add37_conv2d1x116_q[31:0];

    // i_idxprom38_conv2d1x117_sel_x(BITSELECT,133)@5
    assign i_idxprom38_conv2d1x117_sel_x_b = $unsigned({{32{bgTrunc_i_add37_conv2d1x116_sel_x_b[31]}}, bgTrunc_i_add37_conv2d1x116_sel_x_b[31:0]});

    // i_arrayidx398_conv2d1x10_narrow_x(BITSELECT,121)@5
    assign i_arrayidx398_conv2d1x10_narrow_x_b = i_idxprom38_conv2d1x117_sel_x_b[61:0];

    // i_arrayidx398_conv2d1x10_shift_join_x(BITJOIN,122)@5
    assign i_arrayidx398_conv2d1x10_shift_join_x_q = {i_arrayidx398_conv2d1x10_narrow_x_b, i_arrayidx195_conv2d1x17_vt_const_1_q};

    // valid_fanout_reg3(REG,144)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg3_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg3_q <= $unsigned(redist3_sync_together45_aunroll_x_in_i_valid_3_q);
        end
    end

    // i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer7_conv2d1x118(BLACKBOX,63)@0
    // in in_i_dependence@5
    // in in_valid_in@5
    // out out_buffer_out@5
    // out out_valid_out@5
    conv2d1x1_i_llvm_fpga_sync_buffer_p1024f0000ut_im_sync_buffer7_0 thei_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer7_conv2d1x118 (
        .in_buffer_in(in_input_im),
        .in_i_dependence(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_buffer_out(i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer7_conv2d1x118_out_buffer_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer7_conv2d1x118_vt_select_63(BITSELECT,66)@5
    assign i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer7_conv2d1x118_vt_select_63_b = i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer7_conv2d1x118_out_buffer_out[63:10];

    // i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer7_conv2d1x118_vt_join(BITJOIN,65)@5
    assign i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer7_conv2d1x118_vt_join_q = {i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer7_conv2d1x118_vt_select_63_b, i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer6_conv2d1x112_vt_const_9_q};

    // i_arrayidx398_conv2d1x10_add_x(ADD,119)@5
    assign i_arrayidx398_conv2d1x10_add_x_a = {1'b0, i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer7_conv2d1x118_vt_join_q};
    assign i_arrayidx398_conv2d1x10_add_x_b = {1'b0, i_arrayidx398_conv2d1x10_shift_join_x_q};
    assign i_arrayidx398_conv2d1x10_add_x_o = $unsigned(i_arrayidx398_conv2d1x10_add_x_a) + $unsigned(i_arrayidx398_conv2d1x10_add_x_b);
    assign i_arrayidx398_conv2d1x10_add_x_q = i_arrayidx398_conv2d1x10_add_x_o[64:0];

    // i_arrayidx398_conv2d1x10_dupName_0_trunc_sel_x(BITSELECT,124)@5
    assign i_arrayidx398_conv2d1x10_dupName_0_trunc_sel_x_b = i_arrayidx398_conv2d1x10_add_x_q[63:0];

    // i_arrayidx398_conv2d1x119_vt_select_63(BITSELECT,43)@5
    assign i_arrayidx398_conv2d1x119_vt_select_63_b = i_arrayidx398_conv2d1x10_dupName_0_trunc_sel_x_b[63:2];

    // i_arrayidx398_conv2d1x119_vt_join(BITJOIN,42)@5
    assign i_arrayidx398_conv2d1x119_vt_join_q = {i_arrayidx398_conv2d1x119_vt_select_63_b, i_arrayidx195_conv2d1x17_vt_const_1_q};

    // i_add24_conv2d1x18_join(BITJOIN,162)@1
    assign i_add24_conv2d1x18_join_q = {i_add24_conv2d1x18_BitSelect_for_a_b, GND_q, VCC_q};

    // i_add24_conv2d1x18_vt_select_31(BITSELECT,23)@1
    assign i_add24_conv2d1x18_vt_select_31_b = i_add24_conv2d1x18_join_q[31:2];

    // i_add24_conv2d1x18_vt_const_1(CONSTANT,21)
    assign i_add24_conv2d1x18_vt_const_1_q = $unsigned(2'b01);

    // i_add24_conv2d1x18_vt_join(BITJOIN,22)@1
    assign i_add24_conv2d1x18_vt_join_q = {i_add24_conv2d1x18_vt_select_31_b, i_add24_conv2d1x18_vt_const_1_q};

    // i_mul26_conv2d1x19_bs2_merged_bit_select(BITSELECT,247)@1
    assign i_mul26_conv2d1x19_bs2_merged_bit_select_b = i_add24_conv2d1x18_vt_join_q[31:18];
    assign i_mul26_conv2d1x19_bs2_merged_bit_select_c = i_add24_conv2d1x18_vt_join_q[17:0];

    // i_mul26_conv2d1x19_ma3_cma(CHAINMULTADD,244)@1 + 3
    assign i_mul26_conv2d1x19_ma3_cma_reset = ~ (resetn);
    assign i_mul26_conv2d1x19_ma3_cma_ena0 = 1'b1;
    assign i_mul26_conv2d1x19_ma3_cma_ena1 = i_mul26_conv2d1x19_ma3_cma_ena0;
    assign i_mul26_conv2d1x19_ma3_cma_ena2 = i_mul26_conv2d1x19_ma3_cma_ena0;

    assign i_mul26_conv2d1x19_ma3_cma_a0 = i_mul16_conv2d1x13_bs1_merged_bit_select_b;
    assign i_mul26_conv2d1x19_ma3_cma_c0 = i_mul26_conv2d1x19_bs2_merged_bit_select_c;
    assign i_mul26_conv2d1x19_ma3_cma_a1 = i_mul26_conv2d1x19_bs2_merged_bit_select_b;
    assign i_mul26_conv2d1x19_ma3_cma_c1 = i_mul16_conv2d1x13_bs1_merged_bit_select_c;
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
    ) i_mul26_conv2d1x19_ma3_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul26_conv2d1x19_ma3_cma_ena2, i_mul26_conv2d1x19_ma3_cma_ena1, i_mul26_conv2d1x19_ma3_cma_ena0 }),
        .aclr({ i_mul26_conv2d1x19_ma3_cma_reset, i_mul26_conv2d1x19_ma3_cma_reset }),
        .ay(i_mul26_conv2d1x19_ma3_cma_a1),
        .by(i_mul26_conv2d1x19_ma3_cma_a0),
        .ax(i_mul26_conv2d1x19_ma3_cma_c1),
        .bx(i_mul26_conv2d1x19_ma3_cma_c0),
        .resulta(i_mul26_conv2d1x19_ma3_cma_s0),
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
    i_mul26_conv2d1x19_ma3_cma_delay ( .xin(i_mul26_conv2d1x19_ma3_cma_s0), .xout(i_mul26_conv2d1x19_ma3_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul26_conv2d1x19_ma3_cma_q = $unsigned(i_mul26_conv2d1x19_ma3_cma_qq[32:0]);

    // i_mul26_conv2d1x19_sums_align_1(BITSHIFT,194)@4
    assign i_mul26_conv2d1x19_sums_align_1_qint = { i_mul26_conv2d1x19_ma3_cma_q, 18'b000000000000000000 };
    assign i_mul26_conv2d1x19_sums_align_1_q = i_mul26_conv2d1x19_sums_align_1_qint[50:0];

    // i_mul26_conv2d1x19_im0_cma(CHAINMULTADD,237)@1 + 3
    assign i_mul26_conv2d1x19_im0_cma_reset = ~ (resetn);
    assign i_mul26_conv2d1x19_im0_cma_ena0 = 1'b1;
    assign i_mul26_conv2d1x19_im0_cma_ena1 = i_mul26_conv2d1x19_im0_cma_ena0;
    assign i_mul26_conv2d1x19_im0_cma_ena2 = i_mul26_conv2d1x19_im0_cma_ena0;

    assign i_mul26_conv2d1x19_im0_cma_a0 = i_mul16_conv2d1x13_bs1_merged_bit_select_b;
    assign i_mul26_conv2d1x19_im0_cma_c0 = i_mul26_conv2d1x19_bs2_merged_bit_select_b;
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
    ) i_mul26_conv2d1x19_im0_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul26_conv2d1x19_im0_cma_ena2, i_mul26_conv2d1x19_im0_cma_ena1, i_mul26_conv2d1x19_im0_cma_ena0 }),
        .aclr({ i_mul26_conv2d1x19_im0_cma_reset, i_mul26_conv2d1x19_im0_cma_reset }),
        .ay(i_mul26_conv2d1x19_im0_cma_a0),
        .ax(i_mul26_conv2d1x19_im0_cma_c0),
        .resulta(i_mul26_conv2d1x19_im0_cma_s0),
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
    i_mul26_conv2d1x19_im0_cma_delay ( .xin(i_mul26_conv2d1x19_im0_cma_s0), .xout(i_mul26_conv2d1x19_im0_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul26_conv2d1x19_im0_cma_q = $unsigned(i_mul26_conv2d1x19_im0_cma_qq[27:0]);

    // i_mul26_conv2d1x19_im8_cma(CHAINMULTADD,238)@1 + 3
    assign i_mul26_conv2d1x19_im8_cma_reset = ~ (resetn);
    assign i_mul26_conv2d1x19_im8_cma_ena0 = 1'b1;
    assign i_mul26_conv2d1x19_im8_cma_ena1 = i_mul26_conv2d1x19_im8_cma_ena0;
    assign i_mul26_conv2d1x19_im8_cma_ena2 = i_mul26_conv2d1x19_im8_cma_ena0;

    assign i_mul26_conv2d1x19_im8_cma_a0 = i_mul16_conv2d1x13_bs1_merged_bit_select_c;
    assign i_mul26_conv2d1x19_im8_cma_c0 = i_mul26_conv2d1x19_bs2_merged_bit_select_c;
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
    ) i_mul26_conv2d1x19_im8_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul26_conv2d1x19_im8_cma_ena2, i_mul26_conv2d1x19_im8_cma_ena1, i_mul26_conv2d1x19_im8_cma_ena0 }),
        .aclr({ i_mul26_conv2d1x19_im8_cma_reset, i_mul26_conv2d1x19_im8_cma_reset }),
        .ay(i_mul26_conv2d1x19_im8_cma_a0),
        .ax(i_mul26_conv2d1x19_im8_cma_c0),
        .resulta(i_mul26_conv2d1x19_im8_cma_s0),
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
    i_mul26_conv2d1x19_im8_cma_delay ( .xin(i_mul26_conv2d1x19_im8_cma_s0), .xout(i_mul26_conv2d1x19_im8_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul26_conv2d1x19_im8_cma_q = $unsigned(i_mul26_conv2d1x19_im8_cma_qq[35:0]);

    // i_mul26_conv2d1x19_sums_join_0(BITJOIN,193)@4
    assign i_mul26_conv2d1x19_sums_join_0_q = {i_mul26_conv2d1x19_im0_cma_q, i_mul26_conv2d1x19_im8_cma_q};

    // i_mul26_conv2d1x19_sums_result_add_0_0(ADD,196)@4
    assign i_mul26_conv2d1x19_sums_result_add_0_0_a = {1'b0, i_mul26_conv2d1x19_sums_join_0_q};
    assign i_mul26_conv2d1x19_sums_result_add_0_0_b = {14'b00000000000000, i_mul26_conv2d1x19_sums_align_1_q};
    assign i_mul26_conv2d1x19_sums_result_add_0_0_o = $unsigned(i_mul26_conv2d1x19_sums_result_add_0_0_a) + $unsigned(i_mul26_conv2d1x19_sums_result_add_0_0_b);
    assign i_mul26_conv2d1x19_sums_result_add_0_0_q = i_mul26_conv2d1x19_sums_result_add_0_0_o[64:0];

    // bgTrunc_i_mul26_conv2d1x19_sel_x(BITSELECT,101)@4
    assign bgTrunc_i_mul26_conv2d1x19_sel_x_in = i_mul26_conv2d1x19_sums_result_add_0_0_q[63:0];
    assign bgTrunc_i_mul26_conv2d1x19_sel_x_b = bgTrunc_i_mul26_conv2d1x19_sel_x_in[31:0];

    // redist5_bgTrunc_i_mul26_conv2d1x19_sel_x_b_1(DELAY,256)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_bgTrunc_i_mul26_conv2d1x19_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist5_bgTrunc_i_mul26_conv2d1x19_sel_x_b_1_q <= $unsigned(bgTrunc_i_mul26_conv2d1x19_sel_x_b);
        end
    end

    // i_add27_conv2d1x110(ADD,24)@5
    assign i_add27_conv2d1x110_a = {1'b0, redist5_bgTrunc_i_mul26_conv2d1x19_sel_x_b_1_q};
    assign i_add27_conv2d1x110_b = {1'b0, redist0_sync_together45_aunroll_x_in_c0_eni5_3_tpl_4_outputreg0_q};
    assign i_add27_conv2d1x110_o = $unsigned(i_add27_conv2d1x110_a) + $unsigned(i_add27_conv2d1x110_b);
    assign i_add27_conv2d1x110_q = i_add27_conv2d1x110_o[32:0];

    // bgTrunc_i_add27_conv2d1x110_sel_x(BITSELECT,96)@5
    assign bgTrunc_i_add27_conv2d1x110_sel_x_b = i_add27_conv2d1x110_q[31:0];

    // i_idxprom28_conv2d1x111_sel_x(BITSELECT,132)@5
    assign i_idxprom28_conv2d1x111_sel_x_b = $unsigned({{32{bgTrunc_i_add27_conv2d1x110_sel_x_b[31]}}, bgTrunc_i_add27_conv2d1x110_sel_x_b[31:0]});

    // i_arrayidx297_conv2d1x10_narrow_x(BITSELECT,115)@5
    assign i_arrayidx297_conv2d1x10_narrow_x_b = i_idxprom28_conv2d1x111_sel_x_b[61:0];

    // i_arrayidx297_conv2d1x10_shift_join_x(BITJOIN,116)@5
    assign i_arrayidx297_conv2d1x10_shift_join_x_q = {i_arrayidx297_conv2d1x10_narrow_x_b, i_arrayidx195_conv2d1x17_vt_const_1_q};

    // valid_fanout_reg2(REG,143)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg2_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg2_q <= $unsigned(redist3_sync_together45_aunroll_x_in_i_valid_3_q);
        end
    end

    // i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer6_conv2d1x112(BLACKBOX,59)@0
    // in in_i_dependence@5
    // in in_valid_in@5
    // out out_buffer_out@5
    // out out_valid_out@5
    conv2d1x1_i_llvm_fpga_sync_buffer_p1024f0000ut_im_sync_buffer6_0 thei_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer6_conv2d1x112 (
        .in_buffer_in(in_input_im),
        .in_i_dependence(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_buffer_out(i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer6_conv2d1x112_out_buffer_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer6_conv2d1x112_vt_select_63(BITSELECT,62)@5
    assign i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer6_conv2d1x112_vt_select_63_b = i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer6_conv2d1x112_out_buffer_out[63:10];

    // i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer6_conv2d1x112_vt_join(BITJOIN,61)@5
    assign i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer6_conv2d1x112_vt_join_q = {i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer6_conv2d1x112_vt_select_63_b, i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer6_conv2d1x112_vt_const_9_q};

    // i_arrayidx297_conv2d1x10_add_x(ADD,113)@5
    assign i_arrayidx297_conv2d1x10_add_x_a = {1'b0, i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer6_conv2d1x112_vt_join_q};
    assign i_arrayidx297_conv2d1x10_add_x_b = {1'b0, i_arrayidx297_conv2d1x10_shift_join_x_q};
    assign i_arrayidx297_conv2d1x10_add_x_o = $unsigned(i_arrayidx297_conv2d1x10_add_x_a) + $unsigned(i_arrayidx297_conv2d1x10_add_x_b);
    assign i_arrayidx297_conv2d1x10_add_x_q = i_arrayidx297_conv2d1x10_add_x_o[64:0];

    // i_arrayidx297_conv2d1x10_dupName_0_trunc_sel_x(BITSELECT,118)@5
    assign i_arrayidx297_conv2d1x10_dupName_0_trunc_sel_x_b = i_arrayidx297_conv2d1x10_add_x_q[63:0];

    // i_arrayidx297_conv2d1x113_vt_select_63(BITSELECT,40)@5
    assign i_arrayidx297_conv2d1x113_vt_select_63_b = i_arrayidx297_conv2d1x10_dupName_0_trunc_sel_x_b[63:2];

    // i_arrayidx297_conv2d1x113_vt_join(BITJOIN,39)@5
    assign i_arrayidx297_conv2d1x113_vt_join_q = {i_arrayidx297_conv2d1x113_vt_select_63_b, i_arrayidx195_conv2d1x17_vt_const_1_q};

    // i_mul16_conv2d1x13_bs2(BITSELECT,169)@1
    assign i_mul16_conv2d1x13_bs2_b = i_shl_conv2d1x12_vt_join_q[31:18];

    // i_mul16_conv2d1x13_bs7(BITSELECT,174)@1
    assign i_mul16_conv2d1x13_bs7_in = i_shl_conv2d1x12_vt_join_q[17:0];
    assign i_mul16_conv2d1x13_bs7_b = i_mul16_conv2d1x13_bs7_in[17:0];

    // i_mul16_conv2d1x13_ma3_cma(CHAINMULTADD,243)@1 + 3
    assign i_mul16_conv2d1x13_ma3_cma_reset = ~ (resetn);
    assign i_mul16_conv2d1x13_ma3_cma_ena0 = 1'b1;
    assign i_mul16_conv2d1x13_ma3_cma_ena1 = i_mul16_conv2d1x13_ma3_cma_ena0;
    assign i_mul16_conv2d1x13_ma3_cma_ena2 = i_mul16_conv2d1x13_ma3_cma_ena0;

    assign i_mul16_conv2d1x13_ma3_cma_a0 = i_mul16_conv2d1x13_bs1_merged_bit_select_b;
    assign i_mul16_conv2d1x13_ma3_cma_c0 = i_mul16_conv2d1x13_bs7_b;
    assign i_mul16_conv2d1x13_ma3_cma_a1 = i_mul16_conv2d1x13_bs2_b;
    assign i_mul16_conv2d1x13_ma3_cma_c1 = i_mul16_conv2d1x13_bs1_merged_bit_select_c;
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
    ) i_mul16_conv2d1x13_ma3_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul16_conv2d1x13_ma3_cma_ena2, i_mul16_conv2d1x13_ma3_cma_ena1, i_mul16_conv2d1x13_ma3_cma_ena0 }),
        .aclr({ i_mul16_conv2d1x13_ma3_cma_reset, i_mul16_conv2d1x13_ma3_cma_reset }),
        .ay(i_mul16_conv2d1x13_ma3_cma_a1),
        .by(i_mul16_conv2d1x13_ma3_cma_a0),
        .ax(i_mul16_conv2d1x13_ma3_cma_c1),
        .bx(i_mul16_conv2d1x13_ma3_cma_c0),
        .resulta(i_mul16_conv2d1x13_ma3_cma_s0),
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
    i_mul16_conv2d1x13_ma3_cma_delay ( .xin(i_mul16_conv2d1x13_ma3_cma_s0), .xout(i_mul16_conv2d1x13_ma3_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul16_conv2d1x13_ma3_cma_q = $unsigned(i_mul16_conv2d1x13_ma3_cma_qq[32:0]);

    // i_mul16_conv2d1x13_sums_align_1(BITSHIFT,179)@4
    assign i_mul16_conv2d1x13_sums_align_1_qint = { i_mul16_conv2d1x13_ma3_cma_q, 18'b000000000000000000 };
    assign i_mul16_conv2d1x13_sums_align_1_q = i_mul16_conv2d1x13_sums_align_1_qint[50:0];

    // i_mul16_conv2d1x13_im0_cma(CHAINMULTADD,235)@1 + 3
    assign i_mul16_conv2d1x13_im0_cma_reset = ~ (resetn);
    assign i_mul16_conv2d1x13_im0_cma_ena0 = 1'b1;
    assign i_mul16_conv2d1x13_im0_cma_ena1 = i_mul16_conv2d1x13_im0_cma_ena0;
    assign i_mul16_conv2d1x13_im0_cma_ena2 = i_mul16_conv2d1x13_im0_cma_ena0;

    assign i_mul16_conv2d1x13_im0_cma_a0 = i_mul16_conv2d1x13_bs1_merged_bit_select_b;
    assign i_mul16_conv2d1x13_im0_cma_c0 = i_mul16_conv2d1x13_bs2_b;
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
    ) i_mul16_conv2d1x13_im0_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul16_conv2d1x13_im0_cma_ena2, i_mul16_conv2d1x13_im0_cma_ena1, i_mul16_conv2d1x13_im0_cma_ena0 }),
        .aclr({ i_mul16_conv2d1x13_im0_cma_reset, i_mul16_conv2d1x13_im0_cma_reset }),
        .ay(i_mul16_conv2d1x13_im0_cma_a0),
        .ax(i_mul16_conv2d1x13_im0_cma_c0),
        .resulta(i_mul16_conv2d1x13_im0_cma_s0),
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
    i_mul16_conv2d1x13_im0_cma_delay ( .xin(i_mul16_conv2d1x13_im0_cma_s0), .xout(i_mul16_conv2d1x13_im0_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul16_conv2d1x13_im0_cma_q = $unsigned(i_mul16_conv2d1x13_im0_cma_qq[27:0]);

    // i_mul16_conv2d1x13_im8_cma(CHAINMULTADD,236)@1 + 3
    assign i_mul16_conv2d1x13_im8_cma_reset = ~ (resetn);
    assign i_mul16_conv2d1x13_im8_cma_ena0 = 1'b1;
    assign i_mul16_conv2d1x13_im8_cma_ena1 = i_mul16_conv2d1x13_im8_cma_ena0;
    assign i_mul16_conv2d1x13_im8_cma_ena2 = i_mul16_conv2d1x13_im8_cma_ena0;

    assign i_mul16_conv2d1x13_im8_cma_a0 = i_mul16_conv2d1x13_bs1_merged_bit_select_c;
    assign i_mul16_conv2d1x13_im8_cma_c0 = i_mul16_conv2d1x13_bs7_b;
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
    ) i_mul16_conv2d1x13_im8_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul16_conv2d1x13_im8_cma_ena2, i_mul16_conv2d1x13_im8_cma_ena1, i_mul16_conv2d1x13_im8_cma_ena0 }),
        .aclr({ i_mul16_conv2d1x13_im8_cma_reset, i_mul16_conv2d1x13_im8_cma_reset }),
        .ay(i_mul16_conv2d1x13_im8_cma_a0),
        .ax(i_mul16_conv2d1x13_im8_cma_c0),
        .resulta(i_mul16_conv2d1x13_im8_cma_s0),
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
    i_mul16_conv2d1x13_im8_cma_delay ( .xin(i_mul16_conv2d1x13_im8_cma_s0), .xout(i_mul16_conv2d1x13_im8_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul16_conv2d1x13_im8_cma_q = $unsigned(i_mul16_conv2d1x13_im8_cma_qq[35:0]);

    // i_mul16_conv2d1x13_sums_join_0(BITJOIN,178)@4
    assign i_mul16_conv2d1x13_sums_join_0_q = {i_mul16_conv2d1x13_im0_cma_q, i_mul16_conv2d1x13_im8_cma_q};

    // i_mul16_conv2d1x13_sums_result_add_0_0(ADD,181)@4
    assign i_mul16_conv2d1x13_sums_result_add_0_0_a = {1'b0, i_mul16_conv2d1x13_sums_join_0_q};
    assign i_mul16_conv2d1x13_sums_result_add_0_0_b = {14'b00000000000000, i_mul16_conv2d1x13_sums_align_1_q};
    assign i_mul16_conv2d1x13_sums_result_add_0_0_o = $unsigned(i_mul16_conv2d1x13_sums_result_add_0_0_a) + $unsigned(i_mul16_conv2d1x13_sums_result_add_0_0_b);
    assign i_mul16_conv2d1x13_sums_result_add_0_0_q = i_mul16_conv2d1x13_sums_result_add_0_0_o[64:0];

    // bgTrunc_i_mul16_conv2d1x13_sel_x(BITSELECT,100)@4
    assign bgTrunc_i_mul16_conv2d1x13_sel_x_in = i_mul16_conv2d1x13_sums_result_add_0_0_q[63:0];
    assign bgTrunc_i_mul16_conv2d1x13_sel_x_b = bgTrunc_i_mul16_conv2d1x13_sel_x_in[31:0];

    // i_mul16_conv2d1x13_vt_select_31(BITSELECT,78)@4
    assign i_mul16_conv2d1x13_vt_select_31_b = bgTrunc_i_mul16_conv2d1x13_sel_x_b[31:2];

    // redist10_i_mul16_conv2d1x13_vt_select_31_b_1(DELAY,261)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_i_mul16_conv2d1x13_vt_select_31_b_1_q <= '0;
        end
        else
        begin
            redist10_i_mul16_conv2d1x13_vt_select_31_b_1_q <= $unsigned(i_mul16_conv2d1x13_vt_select_31_b);
        end
    end

    // i_mul16_conv2d1x13_vt_join(BITJOIN,77)@5
    assign i_mul16_conv2d1x13_vt_join_q = {redist10_i_mul16_conv2d1x13_vt_select_31_b_1_q, i_arrayidx195_conv2d1x17_vt_const_1_q};

    // i_add17_conv2d1x14(ADD,19)@5
    assign i_add17_conv2d1x14_a = {1'b0, i_mul16_conv2d1x13_vt_join_q};
    assign i_add17_conv2d1x14_b = {1'b0, redist0_sync_together45_aunroll_x_in_c0_eni5_3_tpl_4_outputreg0_q};
    assign i_add17_conv2d1x14_o = $unsigned(i_add17_conv2d1x14_a) + $unsigned(i_add17_conv2d1x14_b);
    assign i_add17_conv2d1x14_q = i_add17_conv2d1x14_o[32:0];

    // bgTrunc_i_add17_conv2d1x14_sel_x(BITSELECT,95)@5
    assign bgTrunc_i_add17_conv2d1x14_sel_x_b = i_add17_conv2d1x14_q[31:0];

    // i_idxprom18_conv2d1x15_sel_x(BITSELECT,131)@5
    assign i_idxprom18_conv2d1x15_sel_x_b = $unsigned({{32{bgTrunc_i_add17_conv2d1x14_sel_x_b[31]}}, bgTrunc_i_add17_conv2d1x14_sel_x_b[31:0]});

    // i_arrayidx195_conv2d1x10_narrow_x(BITSELECT,109)@5
    assign i_arrayidx195_conv2d1x10_narrow_x_b = i_idxprom18_conv2d1x15_sel_x_b[61:0];

    // i_arrayidx195_conv2d1x10_shift_join_x(BITJOIN,110)@5
    assign i_arrayidx195_conv2d1x10_shift_join_x_q = {i_arrayidx195_conv2d1x10_narrow_x_b, i_arrayidx195_conv2d1x17_vt_const_1_q};

    // valid_fanout_reg1(REG,142)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg1_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg1_q <= $unsigned(redist3_sync_together45_aunroll_x_in_i_valid_3_q);
        end
    end

    // i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer_conv2d1x16(BLACKBOX,71)@0
    // in in_i_dependence@5
    // in in_valid_in@5
    // out out_buffer_out@5
    // out out_valid_out@5
    conv2d1x1_i_llvm_fpga_sync_buffer_p1024f0001put_im_sync_buffer_0 thei_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer_conv2d1x16 (
        .in_buffer_in(in_input_im),
        .in_i_dependence(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_buffer_out(i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer_conv2d1x16_out_buffer_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer_conv2d1x16_vt_select_63(BITSELECT,74)@5
    assign i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer_conv2d1x16_vt_select_63_b = i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer_conv2d1x16_out_buffer_out[63:10];

    // i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer_conv2d1x16_vt_join(BITJOIN,73)@5
    assign i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer_conv2d1x16_vt_join_q = {i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer_conv2d1x16_vt_select_63_b, i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer6_conv2d1x112_vt_const_9_q};

    // i_arrayidx195_conv2d1x10_add_x(ADD,107)@5
    assign i_arrayidx195_conv2d1x10_add_x_a = {1'b0, i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer_conv2d1x16_vt_join_q};
    assign i_arrayidx195_conv2d1x10_add_x_b = {1'b0, i_arrayidx195_conv2d1x10_shift_join_x_q};
    assign i_arrayidx195_conv2d1x10_add_x_o = $unsigned(i_arrayidx195_conv2d1x10_add_x_a) + $unsigned(i_arrayidx195_conv2d1x10_add_x_b);
    assign i_arrayidx195_conv2d1x10_add_x_q = i_arrayidx195_conv2d1x10_add_x_o[64:0];

    // i_arrayidx195_conv2d1x10_dupName_0_trunc_sel_x(BITSELECT,112)@5
    assign i_arrayidx195_conv2d1x10_dupName_0_trunc_sel_x_b = i_arrayidx195_conv2d1x10_add_x_q[63:0];

    // i_arrayidx195_conv2d1x17_vt_select_63(BITSELECT,37)@5
    assign i_arrayidx195_conv2d1x17_vt_select_63_b = i_arrayidx195_conv2d1x10_dupName_0_trunc_sel_x_b[63:2];

    // i_arrayidx195_conv2d1x17_vt_join(BITJOIN,36)@5
    assign i_arrayidx195_conv2d1x17_vt_join_q = {i_arrayidx195_conv2d1x17_vt_select_63_b, i_arrayidx195_conv2d1x17_vt_const_1_q};

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // sync_out_aunroll_x(GPOUT,139)@5
    assign out_c0_exi666_0_tpl = GND_q;
    assign out_c0_exi666_1_tpl = i_arrayidx195_conv2d1x17_vt_join_q;
    assign out_c0_exi666_2_tpl = i_arrayidx297_conv2d1x113_vt_join_q;
    assign out_c0_exi666_3_tpl = i_arrayidx398_conv2d1x119_vt_join_q;
    assign out_c0_exi666_4_tpl = i_arrayidx499_conv2d1x125_vt_join_q;
    assign out_c0_exi666_5_tpl = redist7_bgTrunc_i_inc_conv2d1x126_sel_x_b_4_mem_q;
    assign out_c0_exi666_6_tpl = redist8_i_unnamed_conv2d1x131_q_3_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_conv2d1x11 = GND_q;

endmodule
