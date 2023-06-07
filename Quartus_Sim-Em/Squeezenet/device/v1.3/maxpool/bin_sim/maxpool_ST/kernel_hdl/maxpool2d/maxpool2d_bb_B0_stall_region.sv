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

// SystemVerilog created from maxpool2d_bb_B0_stall_region
// SystemVerilog created on Sat Jun  3 13:01:56 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module maxpool2d_bb_B0_stall_region (
    input wire [0:0] in_feedback_in_0,
    output wire [0:0] out_feedback_stall_out_0,
    input wire [0:0] in_feedback_valid_in_0,
    input wire [31:0] in_channel_size,
    input wire [63:0] in_input_im,
    input wire [63:0] in_output_im,
    input wire [31:0] in_output_size,
    output wire [0:0] out_intel_reserved_ffwd_0_0,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_intel_reserved_ffwd_1_0,
    output wire [0:0] out_valid_out,
    output wire [32:0] out_intel_reserved_ffwd_2_0,
    output wire [32:0] out_intel_reserved_ffwd_3_0,
    output wire [63:0] out_intel_reserved_ffwd_4_0,
    output wire [63:0] out_intel_reserved_ffwd_5_0,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] c_i32_135_q;
    wire [31:0] c_i32_136_q;
    wire [32:0] c_i33_137_q;
    wire [33:0] i_cmp235_maxpool2d5_a;
    wire [33:0] i_cmp235_maxpool2d5_b;
    logic [33:0] i_cmp235_maxpool2d5_o;
    wire [0:0] i_cmp235_maxpool2d5_c;
    wire [33:0] i_cmp40_maxpool2d2_a;
    wire [33:0] i_cmp40_maxpool2d2_b;
    logic [33:0] i_cmp40_maxpool2d2_o;
    wire [0:0] i_cmp40_maxpool2d2_c;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_maxpool2d0_maxpool2d26_out_intel_reserved_ffwd_0_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_maxpool2d0_maxpool2d26_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_maxpool2d0_maxpool2d26_out_valid_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_maxpool2d1_maxpool2d27_out_intel_reserved_ffwd_1_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_maxpool2d1_maxpool2d27_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_maxpool2d1_maxpool2d27_out_valid_out;
    wire [32:0] i_llvm_fpga_ffwd_source_i33_unnamed_maxpool2d2_maxpool2d28_out_intel_reserved_ffwd_2_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i33_unnamed_maxpool2d2_maxpool2d28_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i33_unnamed_maxpool2d2_maxpool2d28_out_valid_out;
    wire [32:0] i_llvm_fpga_ffwd_source_i33_unnamed_maxpool2d3_maxpool2d29_out_intel_reserved_ffwd_3_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i33_unnamed_maxpool2d3_maxpool2d29_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i33_unnamed_maxpool2d3_maxpool2d29_out_valid_out;
    wire [63:0] i_llvm_fpga_ffwd_source_p1024f32_unnamed_maxpool2d4_maxpool2d30_out_intel_reserved_ffwd_4_0;
    wire [0:0] i_llvm_fpga_ffwd_source_p1024f32_unnamed_maxpool2d4_maxpool2d30_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_p1024f32_unnamed_maxpool2d4_maxpool2d30_out_valid_out;
    wire [63:0] i_llvm_fpga_ffwd_source_p1024f32_unnamed_maxpool2d5_maxpool2d31_out_intel_reserved_ffwd_5_0;
    wire [0:0] i_llvm_fpga_ffwd_source_p1024f32_unnamed_maxpool2d5_maxpool2d31_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_p1024f32_unnamed_maxpool2d5_maxpool2d31_out_valid_out;
    wire [0:0] i_llvm_fpga_pop_throttle_i1_throttle_pop_maxpool2d0_out_feedback_stall_out_0;
    wire [0:0] i_llvm_fpga_pop_throttle_i1_throttle_pop_maxpool2d0_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_throttle_i1_throttle_pop_maxpool2d0_out_valid_out;
    wire [31:0] i_llvm_fpga_sync_buffer_i32_channel_size_sync_buffer6_maxpool2d16_out_buffer_out;
    wire [0:0] i_llvm_fpga_sync_buffer_i32_channel_size_sync_buffer6_maxpool2d16_out_stall_out;
    wire [0:0] i_llvm_fpga_sync_buffer_i32_channel_size_sync_buffer6_maxpool2d16_out_valid_out;
    wire [31:0] i_llvm_fpga_sync_buffer_i32_channel_size_sync_buffer7_maxpool2d19_out_buffer_out;
    wire [0:0] i_llvm_fpga_sync_buffer_i32_channel_size_sync_buffer7_maxpool2d19_out_stall_out;
    wire [0:0] i_llvm_fpga_sync_buffer_i32_channel_size_sync_buffer7_maxpool2d19_out_valid_out;
    wire [31:0] i_llvm_fpga_sync_buffer_i32_channel_size_sync_buffer_maxpool2d1_out_buffer_out;
    wire [0:0] i_llvm_fpga_sync_buffer_i32_channel_size_sync_buffer_maxpool2d1_out_stall_out;
    wire [0:0] i_llvm_fpga_sync_buffer_i32_channel_size_sync_buffer_maxpool2d1_out_valid_out;
    wire [31:0] i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer4_maxpool2d8_out_buffer_out;
    wire [0:0] i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer4_maxpool2d8_out_stall_out;
    wire [0:0] i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer4_maxpool2d8_out_valid_out;
    wire [31:0] i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer5_maxpool2d11_out_buffer_out;
    wire [0:0] i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer5_maxpool2d11_out_stall_out;
    wire [0:0] i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer5_maxpool2d11_out_valid_out;
    wire [31:0] i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer_maxpool2d4_out_buffer_out;
    wire [0:0] i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer_maxpool2d4_out_stall_out;
    wire [0:0] i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer_maxpool2d4_out_valid_out;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer_maxpool2d24_out_buffer_out;
    wire [0:0] i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer_maxpool2d24_out_stall_out;
    wire [0:0] i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer_maxpool2d24_out_valid_out;
    wire [9:0] i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer_maxpool2d24_vt_const_9_q;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer_maxpool2d24_vt_join_q;
    wire [53:0] i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer_maxpool2d24_vt_select_63_b;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_maxpool2d25_out_buffer_out;
    wire [0:0] i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_maxpool2d25_out_stall_out;
    wire [0:0] i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_maxpool2d25_out_valid_out;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_maxpool2d25_vt_join_q;
    wire [53:0] i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_maxpool2d25_vt_select_63_b;
    wire [0:0] i_smax35_maxpool2d20_s;
    reg [31:0] i_smax35_maxpool2d20_q;
    wire [0:0] i_smax_maxpool2d12_s;
    reg [31:0] i_smax_maxpool2d12_q;
    wire [32:0] i_unnamed_maxpool2d13_a;
    wire [32:0] i_unnamed_maxpool2d13_b;
    logic [32:0] i_unnamed_maxpool2d13_o;
    wire [32:0] i_unnamed_maxpool2d13_q;
    wire [32:0] i_unnamed_maxpool2d14_vt_join_q;
    wire [31:0] i_unnamed_maxpool2d14_vt_select_31_b;
    wire [33:0] i_unnamed_maxpool2d15_a;
    wire [33:0] i_unnamed_maxpool2d15_b;
    logic [33:0] i_unnamed_maxpool2d15_o;
    wire [33:0] i_unnamed_maxpool2d15_q;
    wire [33:0] i_unnamed_maxpool2d17_a;
    wire [33:0] i_unnamed_maxpool2d17_b;
    logic [33:0] i_unnamed_maxpool2d17_o;
    wire [0:0] i_unnamed_maxpool2d17_c;
    wire [32:0] i_unnamed_maxpool2d21_a;
    wire [32:0] i_unnamed_maxpool2d21_b;
    logic [32:0] i_unnamed_maxpool2d21_o;
    wire [32:0] i_unnamed_maxpool2d21_q;
    wire [32:0] i_unnamed_maxpool2d22_vt_join_q;
    wire [31:0] i_unnamed_maxpool2d22_vt_select_31_b;
    wire [33:0] i_unnamed_maxpool2d23_a;
    wire [33:0] i_unnamed_maxpool2d23_b;
    logic [33:0] i_unnamed_maxpool2d23_o;
    wire [33:0] i_unnamed_maxpool2d23_q;
    wire [0:0] i_unnamed_maxpool2d7_q;
    wire [33:0] i_unnamed_maxpool2d9_a;
    wire [33:0] i_unnamed_maxpool2d9_b;
    logic [33:0] i_unnamed_maxpool2d9_o;
    wire [0:0] i_unnamed_maxpool2d9_c;
    wire [0:0] maxpool2d_B0_merge_reg_out_stall_out;
    wire [0:0] maxpool2d_B0_merge_reg_out_valid_out;
    wire [31:0] bgTrunc_i_unnamed_maxpool2d13_sel_x_b;
    wire [32:0] bgTrunc_i_unnamed_maxpool2d15_sel_x_b;
    wire [31:0] bgTrunc_i_unnamed_maxpool2d21_sel_x_b;
    wire [32:0] bgTrunc_i_unnamed_maxpool2d23_sel_x_b;
    wire [31:0] c_i32_034_recast_x_q;
    wire [32:0] i_unnamed_maxpool2d14_sel_x_b;
    wire [32:0] i_unnamed_maxpool2d22_sel_x_b;
    wire [31:0] bubble_join_i_llvm_fpga_sync_buffer_i32_channel_size_sync_buffer6_maxpool2d16_q;
    wire [31:0] bubble_select_i_llvm_fpga_sync_buffer_i32_channel_size_sync_buffer6_maxpool2d16_b;
    wire [31:0] bubble_join_i_llvm_fpga_sync_buffer_i32_channel_size_sync_buffer7_maxpool2d19_q;
    wire [31:0] bubble_select_i_llvm_fpga_sync_buffer_i32_channel_size_sync_buffer7_maxpool2d19_b;
    wire [31:0] bubble_join_i_llvm_fpga_sync_buffer_i32_channel_size_sync_buffer_maxpool2d1_q;
    wire [31:0] bubble_select_i_llvm_fpga_sync_buffer_i32_channel_size_sync_buffer_maxpool2d1_b;
    wire [31:0] bubble_join_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer4_maxpool2d8_q;
    wire [31:0] bubble_select_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer4_maxpool2d8_b;
    wire [31:0] bubble_join_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer5_maxpool2d11_q;
    wire [31:0] bubble_select_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer5_maxpool2d11_b;
    wire [31:0] bubble_join_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer_maxpool2d4_q;
    wire [31:0] bubble_select_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer_maxpool2d4_b;
    wire [63:0] bubble_join_i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer_maxpool2d24_q;
    wire [63:0] bubble_select_i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer_maxpool2d24_b;
    wire [63:0] bubble_join_i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_maxpool2d25_q;
    wire [63:0] bubble_select_i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_maxpool2d25_b;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i1_unnamed_maxpool2d0_maxpool2d26_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i1_unnamed_maxpool2d0_maxpool2d26_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i1_unnamed_maxpool2d0_maxpool2d26_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i1_unnamed_maxpool2d1_maxpool2d27_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i1_unnamed_maxpool2d1_maxpool2d27_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i1_unnamed_maxpool2d1_maxpool2d27_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_p1024f32_unnamed_maxpool2d4_maxpool2d30_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_p1024f32_unnamed_maxpool2d4_maxpool2d30_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_p1024f32_unnamed_maxpool2d4_maxpool2d30_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_p1024f32_unnamed_maxpool2d5_maxpool2d31_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_p1024f32_unnamed_maxpool2d5_maxpool2d31_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_p1024f32_unnamed_maxpool2d5_maxpool2d31_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_maxpool2d0_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_maxpool2d0_and0;
    wire [0:0] SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_maxpool2d0_and1;
    wire [0:0] SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_maxpool2d0_and2;
    wire [0:0] SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_maxpool2d0_and3;
    wire [0:0] SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_maxpool2d0_and4;
    wire [0:0] SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_maxpool2d0_and5;
    wire [0:0] SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_maxpool2d0_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_maxpool2d0_V0;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_i32_channel_size_sync_buffer6_maxpool2d16_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_i32_channel_size_sync_buffer6_maxpool2d16_backStall;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_i32_channel_size_sync_buffer6_maxpool2d16_V0;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_i32_channel_size_sync_buffer7_maxpool2d19_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_i32_channel_size_sync_buffer7_maxpool2d19_and0;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_i32_channel_size_sync_buffer7_maxpool2d19_backStall;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_i32_channel_size_sync_buffer7_maxpool2d19_V0;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_i32_channel_size_sync_buffer_maxpool2d1_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_i32_channel_size_sync_buffer_maxpool2d1_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_i32_channel_size_sync_buffer_maxpool2d1_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_i32_channel_size_sync_buffer_maxpool2d1_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_sync_buffer_i32_channel_size_sync_buffer_maxpool2d1_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_i32_channel_size_sync_buffer_maxpool2d1_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_i32_channel_size_sync_buffer_maxpool2d1_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_sync_buffer_i32_channel_size_sync_buffer_maxpool2d1_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_i32_channel_size_sync_buffer_maxpool2d1_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_i32_channel_size_sync_buffer_maxpool2d1_or0;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_i32_channel_size_sync_buffer_maxpool2d1_backStall;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_i32_channel_size_sync_buffer_maxpool2d1_V0;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_i32_channel_size_sync_buffer_maxpool2d1_V1;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer4_maxpool2d8_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer4_maxpool2d8_backStall;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer4_maxpool2d8_V0;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer5_maxpool2d11_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer5_maxpool2d11_and0;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer5_maxpool2d11_backStall;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer5_maxpool2d11_V0;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer_maxpool2d4_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer_maxpool2d4_and0;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer_maxpool2d4_backStall;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer_maxpool2d4_V0;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer_maxpool2d24_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer_maxpool2d24_backStall;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer_maxpool2d24_V0;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_maxpool2d25_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_maxpool2d25_backStall;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_maxpool2d25_V0;
    reg [0:0] SE_i_unnamed_maxpool2d17_R_v_0;
    wire [0:0] SE_i_unnamed_maxpool2d17_v_s_0;
    wire [0:0] SE_i_unnamed_maxpool2d17_s_tv_0;
    wire [0:0] SE_i_unnamed_maxpool2d17_backEN;
    wire [0:0] SE_i_unnamed_maxpool2d17_backStall;
    wire [0:0] SE_i_unnamed_maxpool2d17_V0;
    reg [0:0] SE_i_unnamed_maxpool2d9_R_v_0;
    wire [0:0] SE_i_unnamed_maxpool2d9_v_s_0;
    wire [0:0] SE_i_unnamed_maxpool2d9_s_tv_0;
    wire [0:0] SE_i_unnamed_maxpool2d9_backEN;
    wire [0:0] SE_i_unnamed_maxpool2d9_backStall;
    wire [0:0] SE_i_unnamed_maxpool2d9_V0;
    wire [0:0] SE_out_maxpool2d_B0_merge_reg_wireValid;
    wire [0:0] SE_out_maxpool2d_B0_merge_reg_wireStall;
    wire [0:0] SE_out_maxpool2d_B0_merge_reg_StallValid;
    wire [0:0] SE_out_maxpool2d_B0_merge_reg_toReg0;
    reg [0:0] SE_out_maxpool2d_B0_merge_reg_fromReg0;
    wire [0:0] SE_out_maxpool2d_B0_merge_reg_consumed0;
    wire [0:0] SE_out_maxpool2d_B0_merge_reg_toReg1;
    reg [0:0] SE_out_maxpool2d_B0_merge_reg_fromReg1;
    wire [0:0] SE_out_maxpool2d_B0_merge_reg_consumed1;
    wire [0:0] SE_out_maxpool2d_B0_merge_reg_toReg2;
    reg [0:0] SE_out_maxpool2d_B0_merge_reg_fromReg2;
    wire [0:0] SE_out_maxpool2d_B0_merge_reg_consumed2;
    wire [0:0] SE_out_maxpool2d_B0_merge_reg_toReg3;
    reg [0:0] SE_out_maxpool2d_B0_merge_reg_fromReg3;
    wire [0:0] SE_out_maxpool2d_B0_merge_reg_consumed3;
    wire [0:0] SE_out_maxpool2d_B0_merge_reg_toReg4;
    reg [0:0] SE_out_maxpool2d_B0_merge_reg_fromReg4;
    wire [0:0] SE_out_maxpool2d_B0_merge_reg_consumed4;
    wire [0:0] SE_out_maxpool2d_B0_merge_reg_toReg5;
    reg [0:0] SE_out_maxpool2d_B0_merge_reg_fromReg5;
    wire [0:0] SE_out_maxpool2d_B0_merge_reg_consumed5;
    wire [0:0] SE_out_maxpool2d_B0_merge_reg_toReg6;
    reg [0:0] SE_out_maxpool2d_B0_merge_reg_fromReg6;
    wire [0:0] SE_out_maxpool2d_B0_merge_reg_consumed6;
    wire [0:0] SE_out_maxpool2d_B0_merge_reg_toReg7;
    reg [0:0] SE_out_maxpool2d_B0_merge_reg_fromReg7;
    wire [0:0] SE_out_maxpool2d_B0_merge_reg_consumed7;
    wire [0:0] SE_out_maxpool2d_B0_merge_reg_or0;
    wire [0:0] SE_out_maxpool2d_B0_merge_reg_or1;
    wire [0:0] SE_out_maxpool2d_B0_merge_reg_or2;
    wire [0:0] SE_out_maxpool2d_B0_merge_reg_or3;
    wire [0:0] SE_out_maxpool2d_B0_merge_reg_or4;
    wire [0:0] SE_out_maxpool2d_B0_merge_reg_or5;
    wire [0:0] SE_out_maxpool2d_B0_merge_reg_or6;
    wire [0:0] SE_out_maxpool2d_B0_merge_reg_backStall;
    wire [0:0] SE_out_maxpool2d_B0_merge_reg_V0;
    wire [0:0] SE_out_maxpool2d_B0_merge_reg_V1;
    wire [0:0] SE_out_maxpool2d_B0_merge_reg_V2;
    wire [0:0] SE_out_maxpool2d_B0_merge_reg_V3;
    wire [0:0] SE_out_maxpool2d_B0_merge_reg_V4;
    wire [0:0] SE_out_maxpool2d_B0_merge_reg_V5;
    wire [0:0] SE_out_maxpool2d_B0_merge_reg_V6;
    wire [0:0] SE_out_maxpool2d_B0_merge_reg_V7;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    reg [0:0] bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_maxpool2d0_maxpool2d26_1_reg_R_v_0;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_maxpool2d0_maxpool2d26_1_reg_v_s_0;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_maxpool2d0_maxpool2d26_1_reg_s_tv_0;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_maxpool2d0_maxpool2d26_1_reg_backEN;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_maxpool2d0_maxpool2d26_1_reg_backStall;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_maxpool2d0_maxpool2d26_1_reg_V0;
    reg [0:0] bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_maxpool2d1_maxpool2d27_1_reg_R_v_0;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_maxpool2d1_maxpool2d27_1_reg_v_s_0;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_maxpool2d1_maxpool2d27_1_reg_s_tv_0;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_maxpool2d1_maxpool2d27_1_reg_backEN;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_maxpool2d1_maxpool2d27_1_reg_backStall;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_maxpool2d1_maxpool2d27_1_reg_V0;
    reg [0:0] bubble_out_i_llvm_fpga_ffwd_source_p1024f32_unnamed_maxpool2d4_maxpool2d30_1_reg_R_v_0;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_p1024f32_unnamed_maxpool2d4_maxpool2d30_1_reg_v_s_0;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_p1024f32_unnamed_maxpool2d4_maxpool2d30_1_reg_s_tv_0;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_p1024f32_unnamed_maxpool2d4_maxpool2d30_1_reg_backEN;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_p1024f32_unnamed_maxpool2d4_maxpool2d30_1_reg_backStall;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_p1024f32_unnamed_maxpool2d4_maxpool2d30_1_reg_V0;
    reg [0:0] bubble_out_i_llvm_fpga_ffwd_source_p1024f32_unnamed_maxpool2d5_maxpool2d31_1_reg_R_v_0;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_p1024f32_unnamed_maxpool2d5_maxpool2d31_1_reg_v_s_0;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_p1024f32_unnamed_maxpool2d5_maxpool2d31_1_reg_s_tv_0;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_p1024f32_unnamed_maxpool2d5_maxpool2d31_1_reg_backEN;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_p1024f32_unnamed_maxpool2d5_maxpool2d31_1_reg_backStall;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_p1024f32_unnamed_maxpool2d5_maxpool2d31_1_reg_V0;
    reg [0:0] bubble_out_maxpool2d_B0_merge_reg_5_reg_R_v_0;
    reg [0:0] bubble_out_maxpool2d_B0_merge_reg_5_reg_R_v_1;
    wire [0:0] bubble_out_maxpool2d_B0_merge_reg_5_reg_v_s_0;
    wire [0:0] bubble_out_maxpool2d_B0_merge_reg_5_reg_s_tv_0;
    wire [0:0] bubble_out_maxpool2d_B0_merge_reg_5_reg_s_tv_1;
    wire [0:0] bubble_out_maxpool2d_B0_merge_reg_5_reg_backEN;
    wire [0:0] bubble_out_maxpool2d_B0_merge_reg_5_reg_or0;
    wire [0:0] bubble_out_maxpool2d_B0_merge_reg_5_reg_backStall;
    wire [0:0] bubble_out_maxpool2d_B0_merge_reg_5_reg_V0;
    wire [0:0] bubble_out_maxpool2d_B0_merge_reg_5_reg_V1;


    // c_i33_137(CONSTANT,10)
    assign c_i33_137_q = $unsigned(33'b111111111111111111111111111111111);

    // c_i32_136(CONSTANT,9)
    assign c_i32_136_q = $unsigned(32'b11111111111111111111111111111111);

    // bubble_join_i_llvm_fpga_sync_buffer_i32_channel_size_sync_buffer7_maxpool2d19(BITJOIN,137)
    assign bubble_join_i_llvm_fpga_sync_buffer_i32_channel_size_sync_buffer7_maxpool2d19_q = i_llvm_fpga_sync_buffer_i32_channel_size_sync_buffer7_maxpool2d19_out_buffer_out;

    // bubble_select_i_llvm_fpga_sync_buffer_i32_channel_size_sync_buffer7_maxpool2d19(BITSELECT,138)
    assign bubble_select_i_llvm_fpga_sync_buffer_i32_channel_size_sync_buffer7_maxpool2d19_b = $unsigned(bubble_join_i_llvm_fpga_sync_buffer_i32_channel_size_sync_buffer7_maxpool2d19_q[31:0]);

    // c_i32_135(CONSTANT,8)
    assign c_i32_135_q = $unsigned(32'b00000000000000000000000000000001);

    // bubble_join_i_llvm_fpga_sync_buffer_i32_channel_size_sync_buffer6_maxpool2d16(BITJOIN,134)
    assign bubble_join_i_llvm_fpga_sync_buffer_i32_channel_size_sync_buffer6_maxpool2d16_q = i_llvm_fpga_sync_buffer_i32_channel_size_sync_buffer6_maxpool2d16_out_buffer_out;

    // bubble_select_i_llvm_fpga_sync_buffer_i32_channel_size_sync_buffer6_maxpool2d16(BITSELECT,135)
    assign bubble_select_i_llvm_fpga_sync_buffer_i32_channel_size_sync_buffer6_maxpool2d16_b = $unsigned(bubble_join_i_llvm_fpga_sync_buffer_i32_channel_size_sync_buffer6_maxpool2d16_q[31:0]);

    // i_unnamed_maxpool2d17(COMPARE,48)@1 + 1
    assign i_unnamed_maxpool2d17_a = $unsigned({{2{c_i32_135_q[31]}}, c_i32_135_q});
    assign i_unnamed_maxpool2d17_b = $unsigned({{2{bubble_select_i_llvm_fpga_sync_buffer_i32_channel_size_sync_buffer6_maxpool2d16_b[31]}}, bubble_select_i_llvm_fpga_sync_buffer_i32_channel_size_sync_buffer6_maxpool2d16_b});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_unnamed_maxpool2d17_o <= 34'b0;
        end
        else if (SE_i_unnamed_maxpool2d17_backEN == 1'b1)
        begin
            i_unnamed_maxpool2d17_o <= $unsigned($signed(i_unnamed_maxpool2d17_a) - $signed(i_unnamed_maxpool2d17_b));
        end
    end
    assign i_unnamed_maxpool2d17_c[0] = i_unnamed_maxpool2d17_o[33];

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // i_smax35_maxpool2d20(MUX,40)@2
    assign i_smax35_maxpool2d20_s = i_unnamed_maxpool2d17_c;
    always @(i_smax35_maxpool2d20_s or c_i32_135_q or bubble_select_i_llvm_fpga_sync_buffer_i32_channel_size_sync_buffer7_maxpool2d19_b)
    begin
        unique case (i_smax35_maxpool2d20_s)
            1'b0 : i_smax35_maxpool2d20_q = c_i32_135_q;
            1'b1 : i_smax35_maxpool2d20_q = bubble_select_i_llvm_fpga_sync_buffer_i32_channel_size_sync_buffer7_maxpool2d19_b;
            default : i_smax35_maxpool2d20_q = 32'b0;
        endcase
    end

    // i_unnamed_maxpool2d21(ADD,49)@2
    assign i_unnamed_maxpool2d21_a = {1'b0, i_smax35_maxpool2d20_q};
    assign i_unnamed_maxpool2d21_b = {1'b0, c_i32_136_q};
    assign i_unnamed_maxpool2d21_o = $unsigned(i_unnamed_maxpool2d21_a) + $unsigned(i_unnamed_maxpool2d21_b);
    assign i_unnamed_maxpool2d21_q = i_unnamed_maxpool2d21_o[32:0];

    // bgTrunc_i_unnamed_maxpool2d21_sel_x(BITSELECT,106)@2
    assign bgTrunc_i_unnamed_maxpool2d21_sel_x_b = i_unnamed_maxpool2d21_q[31:0];

    // i_unnamed_maxpool2d22_sel_x(BITSELECT,119)@2
    assign i_unnamed_maxpool2d22_sel_x_b = {1'b0, bgTrunc_i_unnamed_maxpool2d21_sel_x_b[31:0]};

    // i_unnamed_maxpool2d22_vt_select_31(BITSELECT,53)@2
    assign i_unnamed_maxpool2d22_vt_select_31_b = i_unnamed_maxpool2d22_sel_x_b[31:0];

    // i_unnamed_maxpool2d22_vt_join(BITJOIN,52)@2
    assign i_unnamed_maxpool2d22_vt_join_q = {GND_q, i_unnamed_maxpool2d22_vt_select_31_b};

    // i_unnamed_maxpool2d23(ADD,54)@2
    assign i_unnamed_maxpool2d23_a = {1'b0, i_unnamed_maxpool2d22_vt_join_q};
    assign i_unnamed_maxpool2d23_b = {1'b0, c_i33_137_q};
    assign i_unnamed_maxpool2d23_o = $unsigned(i_unnamed_maxpool2d23_a) + $unsigned(i_unnamed_maxpool2d23_b);
    assign i_unnamed_maxpool2d23_q = i_unnamed_maxpool2d23_o[33:0];

    // bgTrunc_i_unnamed_maxpool2d23_sel_x(BITSELECT,107)@2
    assign bgTrunc_i_unnamed_maxpool2d23_sel_x_b = i_unnamed_maxpool2d23_q[32:0];

    // i_llvm_fpga_ffwd_source_i33_unnamed_maxpool2d3_maxpool2d29(BLACKBOX,22)@2
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_3_0@20000000
    // out out_stall_out@20000000
    maxpool2d_i_llvm_fpga_ffwd_source_i33_unnamed_3_maxpool2d0 thei_llvm_fpga_ffwd_source_i33_unnamed_maxpool2d3_maxpool2d29 (
        .in_predicate_in(GND_q),
        .in_src_data_in_3_0(bgTrunc_i_unnamed_maxpool2d23_sel_x_b),
        .in_stall_in(SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_maxpool2d0_backStall),
        .in_valid_in(SE_out_i_llvm_fpga_sync_buffer_i32_channel_size_sync_buffer7_maxpool2d19_V0),
        .out_intel_reserved_ffwd_3_0(i_llvm_fpga_ffwd_source_i33_unnamed_maxpool2d3_maxpool2d29_out_intel_reserved_ffwd_3_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i33_unnamed_maxpool2d3_maxpool2d29_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i33_unnamed_maxpool2d3_maxpool2d29_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_sync_buffer_i32_channel_size_sync_buffer6_maxpool2d16(STALLENABLE,184)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_sync_buffer_i32_channel_size_sync_buffer6_maxpool2d16_V0 = SE_out_i_llvm_fpga_sync_buffer_i32_channel_size_sync_buffer6_maxpool2d16_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_sync_buffer_i32_channel_size_sync_buffer6_maxpool2d16_backStall = SE_i_unnamed_maxpool2d17_backStall | ~ (SE_out_i_llvm_fpga_sync_buffer_i32_channel_size_sync_buffer6_maxpool2d16_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_sync_buffer_i32_channel_size_sync_buffer6_maxpool2d16_wireValid = i_llvm_fpga_sync_buffer_i32_channel_size_sync_buffer6_maxpool2d16_out_valid_out;

    // SE_i_unnamed_maxpool2d17(STALLENABLE,209)
    // Valid signal propagation
    assign SE_i_unnamed_maxpool2d17_V0 = SE_i_unnamed_maxpool2d17_R_v_0;
    // Stall signal propagation
    assign SE_i_unnamed_maxpool2d17_s_tv_0 = SE_out_i_llvm_fpga_sync_buffer_i32_channel_size_sync_buffer7_maxpool2d19_backStall & SE_i_unnamed_maxpool2d17_R_v_0;
    // Backward Enable generation
    assign SE_i_unnamed_maxpool2d17_backEN = ~ (SE_i_unnamed_maxpool2d17_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_unnamed_maxpool2d17_v_s_0 = SE_i_unnamed_maxpool2d17_backEN & SE_out_i_llvm_fpga_sync_buffer_i32_channel_size_sync_buffer6_maxpool2d16_V0;
    // Backward Stall generation
    assign SE_i_unnamed_maxpool2d17_backStall = ~ (SE_i_unnamed_maxpool2d17_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_unnamed_maxpool2d17_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_i_unnamed_maxpool2d17_backEN == 1'b0)
            begin
                SE_i_unnamed_maxpool2d17_R_v_0 <= SE_i_unnamed_maxpool2d17_R_v_0 & SE_i_unnamed_maxpool2d17_s_tv_0;
            end
            else
            begin
                SE_i_unnamed_maxpool2d17_R_v_0 <= SE_i_unnamed_maxpool2d17_v_s_0;
            end

        end
    end

    // SE_out_i_llvm_fpga_sync_buffer_i32_channel_size_sync_buffer7_maxpool2d19(STALLENABLE,186)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_sync_buffer_i32_channel_size_sync_buffer7_maxpool2d19_V0 = SE_out_i_llvm_fpga_sync_buffer_i32_channel_size_sync_buffer7_maxpool2d19_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_sync_buffer_i32_channel_size_sync_buffer7_maxpool2d19_backStall = i_llvm_fpga_ffwd_source_i33_unnamed_maxpool2d3_maxpool2d29_out_stall_out | ~ (SE_out_i_llvm_fpga_sync_buffer_i32_channel_size_sync_buffer7_maxpool2d19_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_sync_buffer_i32_channel_size_sync_buffer7_maxpool2d19_and0 = i_llvm_fpga_sync_buffer_i32_channel_size_sync_buffer7_maxpool2d19_out_valid_out;
    assign SE_out_i_llvm_fpga_sync_buffer_i32_channel_size_sync_buffer7_maxpool2d19_wireValid = SE_i_unnamed_maxpool2d17_V0 & SE_out_i_llvm_fpga_sync_buffer_i32_channel_size_sync_buffer7_maxpool2d19_and0;

    // i_llvm_fpga_sync_buffer_i32_channel_size_sync_buffer7_maxpool2d19(BLACKBOX,27)@2
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    maxpool2d_i_llvm_fpga_sync_buffer_i32_ch0000_size_sync_buffer7_0 thei_llvm_fpga_sync_buffer_i32_channel_size_sync_buffer7_maxpool2d19 (
        .in_buffer_in(in_channel_size),
        .in_i_dependence(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_sync_buffer_i32_channel_size_sync_buffer7_maxpool2d19_backStall),
        .in_valid_in(bubble_out_maxpool2d_B0_merge_reg_5_reg_V1),
        .out_buffer_out(i_llvm_fpga_sync_buffer_i32_channel_size_sync_buffer7_maxpool2d19_out_buffer_out),
        .out_stall_out(i_llvm_fpga_sync_buffer_i32_channel_size_sync_buffer7_maxpool2d19_out_stall_out),
        .out_valid_out(i_llvm_fpga_sync_buffer_i32_channel_size_sync_buffer7_maxpool2d19_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer5_maxpool2d11(BITJOIN,146)
    assign bubble_join_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer5_maxpool2d11_q = i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer5_maxpool2d11_out_buffer_out;

    // bubble_select_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer5_maxpool2d11(BITSELECT,147)
    assign bubble_select_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer5_maxpool2d11_b = $unsigned(bubble_join_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer5_maxpool2d11_q[31:0]);

    // bubble_join_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer4_maxpool2d8(BITJOIN,143)
    assign bubble_join_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer4_maxpool2d8_q = i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer4_maxpool2d8_out_buffer_out;

    // bubble_select_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer4_maxpool2d8(BITSELECT,144)
    assign bubble_select_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer4_maxpool2d8_b = $unsigned(bubble_join_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer4_maxpool2d8_q[31:0]);

    // i_unnamed_maxpool2d9(COMPARE,56)@1 + 1
    assign i_unnamed_maxpool2d9_a = $unsigned({{2{c_i32_135_q[31]}}, c_i32_135_q});
    assign i_unnamed_maxpool2d9_b = $unsigned({{2{bubble_select_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer4_maxpool2d8_b[31]}}, bubble_select_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer4_maxpool2d8_b});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_unnamed_maxpool2d9_o <= 34'b0;
        end
        else if (SE_i_unnamed_maxpool2d9_backEN == 1'b1)
        begin
            i_unnamed_maxpool2d9_o <= $unsigned($signed(i_unnamed_maxpool2d9_a) - $signed(i_unnamed_maxpool2d9_b));
        end
    end
    assign i_unnamed_maxpool2d9_c[0] = i_unnamed_maxpool2d9_o[33];

    // i_smax_maxpool2d12(MUX,41)@2
    assign i_smax_maxpool2d12_s = i_unnamed_maxpool2d9_c;
    always @(i_smax_maxpool2d12_s or c_i32_135_q or bubble_select_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer5_maxpool2d11_b)
    begin
        unique case (i_smax_maxpool2d12_s)
            1'b0 : i_smax_maxpool2d12_q = c_i32_135_q;
            1'b1 : i_smax_maxpool2d12_q = bubble_select_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer5_maxpool2d11_b;
            default : i_smax_maxpool2d12_q = 32'b0;
        endcase
    end

    // i_unnamed_maxpool2d13(ADD,42)@2
    assign i_unnamed_maxpool2d13_a = {1'b0, i_smax_maxpool2d12_q};
    assign i_unnamed_maxpool2d13_b = {1'b0, c_i32_136_q};
    assign i_unnamed_maxpool2d13_o = $unsigned(i_unnamed_maxpool2d13_a) + $unsigned(i_unnamed_maxpool2d13_b);
    assign i_unnamed_maxpool2d13_q = i_unnamed_maxpool2d13_o[32:0];

    // bgTrunc_i_unnamed_maxpool2d13_sel_x(BITSELECT,104)@2
    assign bgTrunc_i_unnamed_maxpool2d13_sel_x_b = i_unnamed_maxpool2d13_q[31:0];

    // i_unnamed_maxpool2d14_sel_x(BITSELECT,118)@2
    assign i_unnamed_maxpool2d14_sel_x_b = {1'b0, bgTrunc_i_unnamed_maxpool2d13_sel_x_b[31:0]};

    // i_unnamed_maxpool2d14_vt_select_31(BITSELECT,46)@2
    assign i_unnamed_maxpool2d14_vt_select_31_b = i_unnamed_maxpool2d14_sel_x_b[31:0];

    // i_unnamed_maxpool2d14_vt_join(BITJOIN,45)@2
    assign i_unnamed_maxpool2d14_vt_join_q = {GND_q, i_unnamed_maxpool2d14_vt_select_31_b};

    // i_unnamed_maxpool2d15(ADD,47)@2
    assign i_unnamed_maxpool2d15_a = {1'b0, i_unnamed_maxpool2d14_vt_join_q};
    assign i_unnamed_maxpool2d15_b = {1'b0, c_i33_137_q};
    assign i_unnamed_maxpool2d15_o = $unsigned(i_unnamed_maxpool2d15_a) + $unsigned(i_unnamed_maxpool2d15_b);
    assign i_unnamed_maxpool2d15_q = i_unnamed_maxpool2d15_o[33:0];

    // bgTrunc_i_unnamed_maxpool2d15_sel_x(BITSELECT,105)@2
    assign bgTrunc_i_unnamed_maxpool2d15_sel_x_b = i_unnamed_maxpool2d15_q[32:0];

    // i_llvm_fpga_ffwd_source_i33_unnamed_maxpool2d2_maxpool2d28(BLACKBOX,21)@2
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_2_0@20000000
    // out out_stall_out@20000000
    maxpool2d_i_llvm_fpga_ffwd_source_i33_unnamed_2_maxpool2d0 thei_llvm_fpga_ffwd_source_i33_unnamed_maxpool2d2_maxpool2d28 (
        .in_predicate_in(GND_q),
        .in_src_data_in_2_0(bgTrunc_i_unnamed_maxpool2d15_sel_x_b),
        .in_stall_in(SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_maxpool2d0_backStall),
        .in_valid_in(SE_out_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer5_maxpool2d11_V0),
        .out_intel_reserved_ffwd_2_0(i_llvm_fpga_ffwd_source_i33_unnamed_maxpool2d2_maxpool2d28_out_intel_reserved_ffwd_2_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i33_unnamed_maxpool2d2_maxpool2d28_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i33_unnamed_maxpool2d2_maxpool2d28_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer4_maxpool2d8(STALLENABLE,190)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer4_maxpool2d8_V0 = SE_out_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer4_maxpool2d8_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer4_maxpool2d8_backStall = SE_i_unnamed_maxpool2d9_backStall | ~ (SE_out_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer4_maxpool2d8_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer4_maxpool2d8_wireValid = i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer4_maxpool2d8_out_valid_out;

    // SE_i_unnamed_maxpool2d9(STALLENABLE,215)
    // Valid signal propagation
    assign SE_i_unnamed_maxpool2d9_V0 = SE_i_unnamed_maxpool2d9_R_v_0;
    // Stall signal propagation
    assign SE_i_unnamed_maxpool2d9_s_tv_0 = SE_out_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer5_maxpool2d11_backStall & SE_i_unnamed_maxpool2d9_R_v_0;
    // Backward Enable generation
    assign SE_i_unnamed_maxpool2d9_backEN = ~ (SE_i_unnamed_maxpool2d9_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_unnamed_maxpool2d9_v_s_0 = SE_i_unnamed_maxpool2d9_backEN & SE_out_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer4_maxpool2d8_V0;
    // Backward Stall generation
    assign SE_i_unnamed_maxpool2d9_backStall = ~ (SE_i_unnamed_maxpool2d9_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_unnamed_maxpool2d9_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_i_unnamed_maxpool2d9_backEN == 1'b0)
            begin
                SE_i_unnamed_maxpool2d9_R_v_0 <= SE_i_unnamed_maxpool2d9_R_v_0 & SE_i_unnamed_maxpool2d9_s_tv_0;
            end
            else
            begin
                SE_i_unnamed_maxpool2d9_R_v_0 <= SE_i_unnamed_maxpool2d9_v_s_0;
            end

        end
    end

    // SE_out_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer5_maxpool2d11(STALLENABLE,192)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer5_maxpool2d11_V0 = SE_out_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer5_maxpool2d11_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer5_maxpool2d11_backStall = i_llvm_fpga_ffwd_source_i33_unnamed_maxpool2d2_maxpool2d28_out_stall_out | ~ (SE_out_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer5_maxpool2d11_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer5_maxpool2d11_and0 = i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer5_maxpool2d11_out_valid_out;
    assign SE_out_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer5_maxpool2d11_wireValid = SE_i_unnamed_maxpool2d9_V0 & SE_out_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer5_maxpool2d11_and0;

    // i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer5_maxpool2d11(BLACKBOX,30)@2
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    maxpool2d_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer5_0 thei_llvm_fpga_sync_buffer_i32_output_size_sync_buffer5_maxpool2d11 (
        .in_buffer_in(in_output_size),
        .in_i_dependence(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer5_maxpool2d11_backStall),
        .in_valid_in(bubble_out_maxpool2d_B0_merge_reg_5_reg_V0),
        .out_buffer_out(i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer5_maxpool2d11_out_buffer_out),
        .out_stall_out(i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer5_maxpool2d11_out_stall_out),
        .out_valid_out(i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer5_maxpool2d11_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_out_maxpool2d_B0_merge_reg_5_reg(STALLENABLE,296)
    // Valid signal propagation
    assign bubble_out_maxpool2d_B0_merge_reg_5_reg_V0 = bubble_out_maxpool2d_B0_merge_reg_5_reg_R_v_0;
    assign bubble_out_maxpool2d_B0_merge_reg_5_reg_V1 = bubble_out_maxpool2d_B0_merge_reg_5_reg_R_v_1;
    // Stall signal propagation
    assign bubble_out_maxpool2d_B0_merge_reg_5_reg_s_tv_0 = i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer5_maxpool2d11_out_stall_out & bubble_out_maxpool2d_B0_merge_reg_5_reg_R_v_0;
    assign bubble_out_maxpool2d_B0_merge_reg_5_reg_s_tv_1 = i_llvm_fpga_sync_buffer_i32_channel_size_sync_buffer7_maxpool2d19_out_stall_out & bubble_out_maxpool2d_B0_merge_reg_5_reg_R_v_1;
    // Backward Enable generation
    assign bubble_out_maxpool2d_B0_merge_reg_5_reg_or0 = bubble_out_maxpool2d_B0_merge_reg_5_reg_s_tv_0;
    assign bubble_out_maxpool2d_B0_merge_reg_5_reg_backEN = ~ (bubble_out_maxpool2d_B0_merge_reg_5_reg_s_tv_1 | bubble_out_maxpool2d_B0_merge_reg_5_reg_or0);
    // Determine whether to write valid data into the first register stage
    assign bubble_out_maxpool2d_B0_merge_reg_5_reg_v_s_0 = bubble_out_maxpool2d_B0_merge_reg_5_reg_backEN & SE_out_maxpool2d_B0_merge_reg_V7;
    // Backward Stall generation
    assign bubble_out_maxpool2d_B0_merge_reg_5_reg_backStall = ~ (bubble_out_maxpool2d_B0_merge_reg_5_reg_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            bubble_out_maxpool2d_B0_merge_reg_5_reg_R_v_0 <= 1'b0;
            bubble_out_maxpool2d_B0_merge_reg_5_reg_R_v_1 <= 1'b0;
        end
        else
        begin
            if (bubble_out_maxpool2d_B0_merge_reg_5_reg_backEN == 1'b0)
            begin
                bubble_out_maxpool2d_B0_merge_reg_5_reg_R_v_0 <= bubble_out_maxpool2d_B0_merge_reg_5_reg_R_v_0 & bubble_out_maxpool2d_B0_merge_reg_5_reg_s_tv_0;
            end
            else
            begin
                bubble_out_maxpool2d_B0_merge_reg_5_reg_R_v_0 <= bubble_out_maxpool2d_B0_merge_reg_5_reg_v_s_0;
            end

            if (bubble_out_maxpool2d_B0_merge_reg_5_reg_backEN == 1'b0)
            begin
                bubble_out_maxpool2d_B0_merge_reg_5_reg_R_v_1 <= bubble_out_maxpool2d_B0_merge_reg_5_reg_R_v_1 & bubble_out_maxpool2d_B0_merge_reg_5_reg_s_tv_1;
            end
            else
            begin
                bubble_out_maxpool2d_B0_merge_reg_5_reg_R_v_1 <= bubble_out_maxpool2d_B0_merge_reg_5_reg_v_s_0;
            end

        end
    end

    // bubble_out_i_llvm_fpga_ffwd_source_p1024f32_unnamed_maxpool2d5_maxpool2d31_1_reg(STALLENABLE,295)
    // Valid signal propagation
    assign bubble_out_i_llvm_fpga_ffwd_source_p1024f32_unnamed_maxpool2d5_maxpool2d31_1_reg_V0 = bubble_out_i_llvm_fpga_ffwd_source_p1024f32_unnamed_maxpool2d5_maxpool2d31_1_reg_R_v_0;
    // Stall signal propagation
    assign bubble_out_i_llvm_fpga_ffwd_source_p1024f32_unnamed_maxpool2d5_maxpool2d31_1_reg_s_tv_0 = SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_maxpool2d0_backStall & bubble_out_i_llvm_fpga_ffwd_source_p1024f32_unnamed_maxpool2d5_maxpool2d31_1_reg_R_v_0;
    // Backward Enable generation
    assign bubble_out_i_llvm_fpga_ffwd_source_p1024f32_unnamed_maxpool2d5_maxpool2d31_1_reg_backEN = ~ (bubble_out_i_llvm_fpga_ffwd_source_p1024f32_unnamed_maxpool2d5_maxpool2d31_1_reg_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign bubble_out_i_llvm_fpga_ffwd_source_p1024f32_unnamed_maxpool2d5_maxpool2d31_1_reg_v_s_0 = bubble_out_i_llvm_fpga_ffwd_source_p1024f32_unnamed_maxpool2d5_maxpool2d31_1_reg_backEN & SE_out_i_llvm_fpga_ffwd_source_p1024f32_unnamed_maxpool2d5_maxpool2d31_V0;
    // Backward Stall generation
    assign bubble_out_i_llvm_fpga_ffwd_source_p1024f32_unnamed_maxpool2d5_maxpool2d31_1_reg_backStall = ~ (bubble_out_i_llvm_fpga_ffwd_source_p1024f32_unnamed_maxpool2d5_maxpool2d31_1_reg_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            bubble_out_i_llvm_fpga_ffwd_source_p1024f32_unnamed_maxpool2d5_maxpool2d31_1_reg_R_v_0 <= 1'b0;
        end
        else
        begin
            if (bubble_out_i_llvm_fpga_ffwd_source_p1024f32_unnamed_maxpool2d5_maxpool2d31_1_reg_backEN == 1'b0)
            begin
                bubble_out_i_llvm_fpga_ffwd_source_p1024f32_unnamed_maxpool2d5_maxpool2d31_1_reg_R_v_0 <= bubble_out_i_llvm_fpga_ffwd_source_p1024f32_unnamed_maxpool2d5_maxpool2d31_1_reg_R_v_0 & bubble_out_i_llvm_fpga_ffwd_source_p1024f32_unnamed_maxpool2d5_maxpool2d31_1_reg_s_tv_0;
            end
            else
            begin
                bubble_out_i_llvm_fpga_ffwd_source_p1024f32_unnamed_maxpool2d5_maxpool2d31_1_reg_R_v_0 <= bubble_out_i_llvm_fpga_ffwd_source_p1024f32_unnamed_maxpool2d5_maxpool2d31_1_reg_v_s_0;
            end

        end
    end

    // SE_out_i_llvm_fpga_ffwd_source_p1024f32_unnamed_maxpool2d5_maxpool2d31(STALLENABLE,180)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_source_p1024f32_unnamed_maxpool2d5_maxpool2d31_V0 = SE_out_i_llvm_fpga_ffwd_source_p1024f32_unnamed_maxpool2d5_maxpool2d31_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_source_p1024f32_unnamed_maxpool2d5_maxpool2d31_backStall = bubble_out_i_llvm_fpga_ffwd_source_p1024f32_unnamed_maxpool2d5_maxpool2d31_1_reg_backStall | ~ (SE_out_i_llvm_fpga_ffwd_source_p1024f32_unnamed_maxpool2d5_maxpool2d31_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_source_p1024f32_unnamed_maxpool2d5_maxpool2d31_wireValid = i_llvm_fpga_ffwd_source_p1024f32_unnamed_maxpool2d5_maxpool2d31_out_valid_out;

    // bubble_join_i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_maxpool2d25(BITJOIN,155)
    assign bubble_join_i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_maxpool2d25_q = i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_maxpool2d25_out_buffer_out;

    // bubble_select_i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_maxpool2d25(BITSELECT,156)
    assign bubble_select_i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_maxpool2d25_b = $unsigned(bubble_join_i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_maxpool2d25_q[63:0]);

    // i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_maxpool2d25_vt_select_63(BITSELECT,39)@1
    assign i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_maxpool2d25_vt_select_63_b = bubble_select_i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_maxpool2d25_b[63:10];

    // i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer_maxpool2d24_vt_const_9(CONSTANT,33)
    assign i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer_maxpool2d24_vt_const_9_q = $unsigned(10'b0000000000);

    // i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_maxpool2d25_vt_join(BITJOIN,38)@1
    assign i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_maxpool2d25_vt_join_q = {i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_maxpool2d25_vt_select_63_b, i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer_maxpool2d24_vt_const_9_q};

    // i_llvm_fpga_ffwd_source_p1024f32_unnamed_maxpool2d5_maxpool2d31(BLACKBOX,24)@1
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_5_0@20000000
    // out out_stall_out@20000000
    maxpool2d_i_llvm_fpga_ffwd_source_p1024f32_unnamed_5_maxpool2d0 thei_llvm_fpga_ffwd_source_p1024f32_unnamed_maxpool2d5_maxpool2d31 (
        .in_predicate_in(GND_q),
        .in_src_data_in_5_0(i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_maxpool2d25_vt_join_q),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_source_p1024f32_unnamed_maxpool2d5_maxpool2d31_backStall),
        .in_valid_in(SE_out_i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_maxpool2d25_V0),
        .out_intel_reserved_ffwd_5_0(i_llvm_fpga_ffwd_source_p1024f32_unnamed_maxpool2d5_maxpool2d31_out_intel_reserved_ffwd_5_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_p1024f32_unnamed_maxpool2d5_maxpool2d31_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_p1024f32_unnamed_maxpool2d5_maxpool2d31_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_maxpool2d25(STALLENABLE,200)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_maxpool2d25_V0 = SE_out_i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_maxpool2d25_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_maxpool2d25_backStall = i_llvm_fpga_ffwd_source_p1024f32_unnamed_maxpool2d5_maxpool2d31_out_stall_out | ~ (SE_out_i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_maxpool2d25_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_maxpool2d25_wireValid = i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_maxpool2d25_out_valid_out;

    // i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_maxpool2d25(BLACKBOX,36)@1
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    maxpool2d_i_llvm_fpga_sync_buffer_p1024f0001put_im_sync_buffer_0 thei_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_maxpool2d25 (
        .in_buffer_in(in_output_im),
        .in_i_dependence(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_maxpool2d25_backStall),
        .in_valid_in(SE_out_maxpool2d_B0_merge_reg_V6),
        .out_buffer_out(i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_maxpool2d25_out_buffer_out),
        .out_stall_out(i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_maxpool2d25_out_stall_out),
        .out_valid_out(i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_maxpool2d25_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_out_i_llvm_fpga_ffwd_source_p1024f32_unnamed_maxpool2d4_maxpool2d30_1_reg(STALLENABLE,294)
    // Valid signal propagation
    assign bubble_out_i_llvm_fpga_ffwd_source_p1024f32_unnamed_maxpool2d4_maxpool2d30_1_reg_V0 = bubble_out_i_llvm_fpga_ffwd_source_p1024f32_unnamed_maxpool2d4_maxpool2d30_1_reg_R_v_0;
    // Stall signal propagation
    assign bubble_out_i_llvm_fpga_ffwd_source_p1024f32_unnamed_maxpool2d4_maxpool2d30_1_reg_s_tv_0 = SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_maxpool2d0_backStall & bubble_out_i_llvm_fpga_ffwd_source_p1024f32_unnamed_maxpool2d4_maxpool2d30_1_reg_R_v_0;
    // Backward Enable generation
    assign bubble_out_i_llvm_fpga_ffwd_source_p1024f32_unnamed_maxpool2d4_maxpool2d30_1_reg_backEN = ~ (bubble_out_i_llvm_fpga_ffwd_source_p1024f32_unnamed_maxpool2d4_maxpool2d30_1_reg_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign bubble_out_i_llvm_fpga_ffwd_source_p1024f32_unnamed_maxpool2d4_maxpool2d30_1_reg_v_s_0 = bubble_out_i_llvm_fpga_ffwd_source_p1024f32_unnamed_maxpool2d4_maxpool2d30_1_reg_backEN & SE_out_i_llvm_fpga_ffwd_source_p1024f32_unnamed_maxpool2d4_maxpool2d30_V0;
    // Backward Stall generation
    assign bubble_out_i_llvm_fpga_ffwd_source_p1024f32_unnamed_maxpool2d4_maxpool2d30_1_reg_backStall = ~ (bubble_out_i_llvm_fpga_ffwd_source_p1024f32_unnamed_maxpool2d4_maxpool2d30_1_reg_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            bubble_out_i_llvm_fpga_ffwd_source_p1024f32_unnamed_maxpool2d4_maxpool2d30_1_reg_R_v_0 <= 1'b0;
        end
        else
        begin
            if (bubble_out_i_llvm_fpga_ffwd_source_p1024f32_unnamed_maxpool2d4_maxpool2d30_1_reg_backEN == 1'b0)
            begin
                bubble_out_i_llvm_fpga_ffwd_source_p1024f32_unnamed_maxpool2d4_maxpool2d30_1_reg_R_v_0 <= bubble_out_i_llvm_fpga_ffwd_source_p1024f32_unnamed_maxpool2d4_maxpool2d30_1_reg_R_v_0 & bubble_out_i_llvm_fpga_ffwd_source_p1024f32_unnamed_maxpool2d4_maxpool2d30_1_reg_s_tv_0;
            end
            else
            begin
                bubble_out_i_llvm_fpga_ffwd_source_p1024f32_unnamed_maxpool2d4_maxpool2d30_1_reg_R_v_0 <= bubble_out_i_llvm_fpga_ffwd_source_p1024f32_unnamed_maxpool2d4_maxpool2d30_1_reg_v_s_0;
            end

        end
    end

    // SE_out_i_llvm_fpga_ffwd_source_p1024f32_unnamed_maxpool2d4_maxpool2d30(STALLENABLE,178)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_source_p1024f32_unnamed_maxpool2d4_maxpool2d30_V0 = SE_out_i_llvm_fpga_ffwd_source_p1024f32_unnamed_maxpool2d4_maxpool2d30_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_source_p1024f32_unnamed_maxpool2d4_maxpool2d30_backStall = bubble_out_i_llvm_fpga_ffwd_source_p1024f32_unnamed_maxpool2d4_maxpool2d30_1_reg_backStall | ~ (SE_out_i_llvm_fpga_ffwd_source_p1024f32_unnamed_maxpool2d4_maxpool2d30_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_source_p1024f32_unnamed_maxpool2d4_maxpool2d30_wireValid = i_llvm_fpga_ffwd_source_p1024f32_unnamed_maxpool2d4_maxpool2d30_out_valid_out;

    // bubble_join_i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer_maxpool2d24(BITJOIN,152)
    assign bubble_join_i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer_maxpool2d24_q = i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer_maxpool2d24_out_buffer_out;

    // bubble_select_i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer_maxpool2d24(BITSELECT,153)
    assign bubble_select_i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer_maxpool2d24_b = $unsigned(bubble_join_i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer_maxpool2d24_q[63:0]);

    // i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer_maxpool2d24_vt_select_63(BITSELECT,35)@1
    assign i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer_maxpool2d24_vt_select_63_b = bubble_select_i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer_maxpool2d24_b[63:10];

    // i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer_maxpool2d24_vt_join(BITJOIN,34)@1
    assign i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer_maxpool2d24_vt_join_q = {i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer_maxpool2d24_vt_select_63_b, i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer_maxpool2d24_vt_const_9_q};

    // i_llvm_fpga_ffwd_source_p1024f32_unnamed_maxpool2d4_maxpool2d30(BLACKBOX,23)@1
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_4_0@20000000
    // out out_stall_out@20000000
    maxpool2d_i_llvm_fpga_ffwd_source_p1024f32_unnamed_4_maxpool2d0 thei_llvm_fpga_ffwd_source_p1024f32_unnamed_maxpool2d4_maxpool2d30 (
        .in_predicate_in(GND_q),
        .in_src_data_in_4_0(i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer_maxpool2d24_vt_join_q),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_source_p1024f32_unnamed_maxpool2d4_maxpool2d30_backStall),
        .in_valid_in(SE_out_i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer_maxpool2d24_V0),
        .out_intel_reserved_ffwd_4_0(i_llvm_fpga_ffwd_source_p1024f32_unnamed_maxpool2d4_maxpool2d30_out_intel_reserved_ffwd_4_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_p1024f32_unnamed_maxpool2d4_maxpool2d30_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_p1024f32_unnamed_maxpool2d4_maxpool2d30_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer_maxpool2d24(STALLENABLE,196)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer_maxpool2d24_V0 = SE_out_i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer_maxpool2d24_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer_maxpool2d24_backStall = i_llvm_fpga_ffwd_source_p1024f32_unnamed_maxpool2d4_maxpool2d30_out_stall_out | ~ (SE_out_i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer_maxpool2d24_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer_maxpool2d24_wireValid = i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer_maxpool2d24_out_valid_out;

    // i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer_maxpool2d24(BLACKBOX,32)@1
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    maxpool2d_i_llvm_fpga_sync_buffer_p1024f0000put_im_sync_buffer_0 thei_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer_maxpool2d24 (
        .in_buffer_in(in_input_im),
        .in_i_dependence(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer_maxpool2d24_backStall),
        .in_valid_in(SE_out_maxpool2d_B0_merge_reg_V5),
        .out_buffer_out(i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer_maxpool2d24_out_buffer_out),
        .out_stall_out(i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer_maxpool2d24_out_stall_out),
        .out_valid_out(i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer_maxpool2d24_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_maxpool2d1_maxpool2d27_1_reg(STALLENABLE,293)
    // Valid signal propagation
    assign bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_maxpool2d1_maxpool2d27_1_reg_V0 = bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_maxpool2d1_maxpool2d27_1_reg_R_v_0;
    // Stall signal propagation
    assign bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_maxpool2d1_maxpool2d27_1_reg_s_tv_0 = SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_maxpool2d0_backStall & bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_maxpool2d1_maxpool2d27_1_reg_R_v_0;
    // Backward Enable generation
    assign bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_maxpool2d1_maxpool2d27_1_reg_backEN = ~ (bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_maxpool2d1_maxpool2d27_1_reg_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_maxpool2d1_maxpool2d27_1_reg_v_s_0 = bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_maxpool2d1_maxpool2d27_1_reg_backEN & SE_out_i_llvm_fpga_ffwd_source_i1_unnamed_maxpool2d1_maxpool2d27_V0;
    // Backward Stall generation
    assign bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_maxpool2d1_maxpool2d27_1_reg_backStall = ~ (bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_maxpool2d1_maxpool2d27_1_reg_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_maxpool2d1_maxpool2d27_1_reg_R_v_0 <= 1'b0;
        end
        else
        begin
            if (bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_maxpool2d1_maxpool2d27_1_reg_backEN == 1'b0)
            begin
                bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_maxpool2d1_maxpool2d27_1_reg_R_v_0 <= bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_maxpool2d1_maxpool2d27_1_reg_R_v_0 & bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_maxpool2d1_maxpool2d27_1_reg_s_tv_0;
            end
            else
            begin
                bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_maxpool2d1_maxpool2d27_1_reg_R_v_0 <= bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_maxpool2d1_maxpool2d27_1_reg_v_s_0;
            end

        end
    end

    // SE_out_i_llvm_fpga_ffwd_source_i1_unnamed_maxpool2d1_maxpool2d27(STALLENABLE,172)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_source_i1_unnamed_maxpool2d1_maxpool2d27_V0 = SE_out_i_llvm_fpga_ffwd_source_i1_unnamed_maxpool2d1_maxpool2d27_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_source_i1_unnamed_maxpool2d1_maxpool2d27_backStall = bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_maxpool2d1_maxpool2d27_1_reg_backStall | ~ (SE_out_i_llvm_fpga_ffwd_source_i1_unnamed_maxpool2d1_maxpool2d27_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_source_i1_unnamed_maxpool2d1_maxpool2d27_wireValid = i_llvm_fpga_ffwd_source_i1_unnamed_maxpool2d1_maxpool2d27_out_valid_out;

    // bubble_join_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer_maxpool2d4(BITJOIN,149)
    assign bubble_join_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer_maxpool2d4_q = i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer_maxpool2d4_out_buffer_out;

    // bubble_select_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer_maxpool2d4(BITSELECT,150)
    assign bubble_select_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer_maxpool2d4_b = $unsigned(bubble_join_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer_maxpool2d4_q[31:0]);

    // c_i32_034_recast_x(CONSTANT,108)
    assign c_i32_034_recast_x_q = $unsigned(32'b00000000000000000000000000000000);

    // i_cmp235_maxpool2d5(COMPARE,17)@1
    assign i_cmp235_maxpool2d5_a = $unsigned({{2{c_i32_034_recast_x_q[31]}}, c_i32_034_recast_x_q});
    assign i_cmp235_maxpool2d5_b = $unsigned({{2{bubble_select_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer_maxpool2d4_b[31]}}, bubble_select_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer_maxpool2d4_b});
    assign i_cmp235_maxpool2d5_o = $unsigned($signed(i_cmp235_maxpool2d5_a) - $signed(i_cmp235_maxpool2d5_b));
    assign i_cmp235_maxpool2d5_c[0] = i_cmp235_maxpool2d5_o[33];

    // bubble_join_i_llvm_fpga_sync_buffer_i32_channel_size_sync_buffer_maxpool2d1(BITJOIN,140)
    assign bubble_join_i_llvm_fpga_sync_buffer_i32_channel_size_sync_buffer_maxpool2d1_q = i_llvm_fpga_sync_buffer_i32_channel_size_sync_buffer_maxpool2d1_out_buffer_out;

    // bubble_select_i_llvm_fpga_sync_buffer_i32_channel_size_sync_buffer_maxpool2d1(BITSELECT,141)
    assign bubble_select_i_llvm_fpga_sync_buffer_i32_channel_size_sync_buffer_maxpool2d1_b = $unsigned(bubble_join_i_llvm_fpga_sync_buffer_i32_channel_size_sync_buffer_maxpool2d1_q[31:0]);

    // i_cmp40_maxpool2d2(COMPARE,18)@1
    assign i_cmp40_maxpool2d2_a = $unsigned({{2{c_i32_034_recast_x_q[31]}}, c_i32_034_recast_x_q});
    assign i_cmp40_maxpool2d2_b = $unsigned({{2{bubble_select_i_llvm_fpga_sync_buffer_i32_channel_size_sync_buffer_maxpool2d1_b[31]}}, bubble_select_i_llvm_fpga_sync_buffer_i32_channel_size_sync_buffer_maxpool2d1_b});
    assign i_cmp40_maxpool2d2_o = $unsigned($signed(i_cmp40_maxpool2d2_a) - $signed(i_cmp40_maxpool2d2_b));
    assign i_cmp40_maxpool2d2_c[0] = i_cmp40_maxpool2d2_o[33];

    // i_unnamed_maxpool2d7(LOGICAL,55)@1
    assign i_unnamed_maxpool2d7_q = i_cmp40_maxpool2d2_c & i_cmp235_maxpool2d5_c;

    // i_llvm_fpga_ffwd_source_i1_unnamed_maxpool2d1_maxpool2d27(BLACKBOX,20)@1
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_1_0@20000000
    // out out_stall_out@20000000
    maxpool2d_i_llvm_fpga_ffwd_source_i1_unnamed_1_maxpool2d0 thei_llvm_fpga_ffwd_source_i1_unnamed_maxpool2d1_maxpool2d27 (
        .in_predicate_in(GND_q),
        .in_src_data_in_1_0(i_unnamed_maxpool2d7_q),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_source_i1_unnamed_maxpool2d1_maxpool2d27_backStall),
        .in_valid_in(SE_out_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer_maxpool2d4_V0),
        .out_intel_reserved_ffwd_1_0(i_llvm_fpga_ffwd_source_i1_unnamed_maxpool2d1_maxpool2d27_out_intel_reserved_ffwd_1_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i1_unnamed_maxpool2d1_maxpool2d27_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i1_unnamed_maxpool2d1_maxpool2d27_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_maxpool2d0_maxpool2d26_1_reg(STALLENABLE,292)
    // Valid signal propagation
    assign bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_maxpool2d0_maxpool2d26_1_reg_V0 = bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_maxpool2d0_maxpool2d26_1_reg_R_v_0;
    // Stall signal propagation
    assign bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_maxpool2d0_maxpool2d26_1_reg_s_tv_0 = SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_maxpool2d0_backStall & bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_maxpool2d0_maxpool2d26_1_reg_R_v_0;
    // Backward Enable generation
    assign bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_maxpool2d0_maxpool2d26_1_reg_backEN = ~ (bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_maxpool2d0_maxpool2d26_1_reg_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_maxpool2d0_maxpool2d26_1_reg_v_s_0 = bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_maxpool2d0_maxpool2d26_1_reg_backEN & SE_out_i_llvm_fpga_ffwd_source_i1_unnamed_maxpool2d0_maxpool2d26_V0;
    // Backward Stall generation
    assign bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_maxpool2d0_maxpool2d26_1_reg_backStall = ~ (bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_maxpool2d0_maxpool2d26_1_reg_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_maxpool2d0_maxpool2d26_1_reg_R_v_0 <= 1'b0;
        end
        else
        begin
            if (bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_maxpool2d0_maxpool2d26_1_reg_backEN == 1'b0)
            begin
                bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_maxpool2d0_maxpool2d26_1_reg_R_v_0 <= bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_maxpool2d0_maxpool2d26_1_reg_R_v_0 & bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_maxpool2d0_maxpool2d26_1_reg_s_tv_0;
            end
            else
            begin
                bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_maxpool2d0_maxpool2d26_1_reg_R_v_0 <= bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_maxpool2d0_maxpool2d26_1_reg_v_s_0;
            end

        end
    end

    // SE_out_i_llvm_fpga_ffwd_source_i1_unnamed_maxpool2d0_maxpool2d26(STALLENABLE,170)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_source_i1_unnamed_maxpool2d0_maxpool2d26_V0 = SE_out_i_llvm_fpga_ffwd_source_i1_unnamed_maxpool2d0_maxpool2d26_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_source_i1_unnamed_maxpool2d0_maxpool2d26_backStall = bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_maxpool2d0_maxpool2d26_1_reg_backStall | ~ (SE_out_i_llvm_fpga_ffwd_source_i1_unnamed_maxpool2d0_maxpool2d26_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_source_i1_unnamed_maxpool2d0_maxpool2d26_wireValid = i_llvm_fpga_ffwd_source_i1_unnamed_maxpool2d0_maxpool2d26_out_valid_out;

    // i_llvm_fpga_ffwd_source_i1_unnamed_maxpool2d0_maxpool2d26(BLACKBOX,19)@1
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_0_0@20000000
    // out out_stall_out@20000000
    maxpool2d_i_llvm_fpga_ffwd_source_i1_unnamed_0_maxpool2d0 thei_llvm_fpga_ffwd_source_i1_unnamed_maxpool2d0_maxpool2d26 (
        .in_predicate_in(GND_q),
        .in_src_data_in_0_0(i_cmp40_maxpool2d2_c),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_source_i1_unnamed_maxpool2d0_maxpool2d26_backStall),
        .in_valid_in(SE_out_i_llvm_fpga_sync_buffer_i32_channel_size_sync_buffer_maxpool2d1_V1),
        .out_intel_reserved_ffwd_0_0(i_llvm_fpga_ffwd_source_i1_unnamed_maxpool2d0_maxpool2d26_out_intel_reserved_ffwd_0_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i1_unnamed_maxpool2d0_maxpool2d26_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i1_unnamed_maxpool2d0_maxpool2d26_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_sync_buffer_i32_channel_size_sync_buffer_maxpool2d1(STALLENABLE,188)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_sync_buffer_i32_channel_size_sync_buffer_maxpool2d1_fromReg0 <= '0;
            SE_out_i_llvm_fpga_sync_buffer_i32_channel_size_sync_buffer_maxpool2d1_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_sync_buffer_i32_channel_size_sync_buffer_maxpool2d1_fromReg0 <= SE_out_i_llvm_fpga_sync_buffer_i32_channel_size_sync_buffer_maxpool2d1_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_sync_buffer_i32_channel_size_sync_buffer_maxpool2d1_fromReg1 <= SE_out_i_llvm_fpga_sync_buffer_i32_channel_size_sync_buffer_maxpool2d1_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_sync_buffer_i32_channel_size_sync_buffer_maxpool2d1_consumed0 = (~ (SE_out_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer_maxpool2d4_backStall) & SE_out_i_llvm_fpga_sync_buffer_i32_channel_size_sync_buffer_maxpool2d1_wireValid) | SE_out_i_llvm_fpga_sync_buffer_i32_channel_size_sync_buffer_maxpool2d1_fromReg0;
    assign SE_out_i_llvm_fpga_sync_buffer_i32_channel_size_sync_buffer_maxpool2d1_consumed1 = (~ (i_llvm_fpga_ffwd_source_i1_unnamed_maxpool2d0_maxpool2d26_out_stall_out) & SE_out_i_llvm_fpga_sync_buffer_i32_channel_size_sync_buffer_maxpool2d1_wireValid) | SE_out_i_llvm_fpga_sync_buffer_i32_channel_size_sync_buffer_maxpool2d1_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_sync_buffer_i32_channel_size_sync_buffer_maxpool2d1_StallValid = SE_out_i_llvm_fpga_sync_buffer_i32_channel_size_sync_buffer_maxpool2d1_backStall & SE_out_i_llvm_fpga_sync_buffer_i32_channel_size_sync_buffer_maxpool2d1_wireValid;
    assign SE_out_i_llvm_fpga_sync_buffer_i32_channel_size_sync_buffer_maxpool2d1_toReg0 = SE_out_i_llvm_fpga_sync_buffer_i32_channel_size_sync_buffer_maxpool2d1_StallValid & SE_out_i_llvm_fpga_sync_buffer_i32_channel_size_sync_buffer_maxpool2d1_consumed0;
    assign SE_out_i_llvm_fpga_sync_buffer_i32_channel_size_sync_buffer_maxpool2d1_toReg1 = SE_out_i_llvm_fpga_sync_buffer_i32_channel_size_sync_buffer_maxpool2d1_StallValid & SE_out_i_llvm_fpga_sync_buffer_i32_channel_size_sync_buffer_maxpool2d1_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_sync_buffer_i32_channel_size_sync_buffer_maxpool2d1_or0 = SE_out_i_llvm_fpga_sync_buffer_i32_channel_size_sync_buffer_maxpool2d1_consumed0;
    assign SE_out_i_llvm_fpga_sync_buffer_i32_channel_size_sync_buffer_maxpool2d1_wireStall = ~ (SE_out_i_llvm_fpga_sync_buffer_i32_channel_size_sync_buffer_maxpool2d1_consumed1 & SE_out_i_llvm_fpga_sync_buffer_i32_channel_size_sync_buffer_maxpool2d1_or0);
    assign SE_out_i_llvm_fpga_sync_buffer_i32_channel_size_sync_buffer_maxpool2d1_backStall = SE_out_i_llvm_fpga_sync_buffer_i32_channel_size_sync_buffer_maxpool2d1_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_sync_buffer_i32_channel_size_sync_buffer_maxpool2d1_V0 = SE_out_i_llvm_fpga_sync_buffer_i32_channel_size_sync_buffer_maxpool2d1_wireValid & ~ (SE_out_i_llvm_fpga_sync_buffer_i32_channel_size_sync_buffer_maxpool2d1_fromReg0);
    assign SE_out_i_llvm_fpga_sync_buffer_i32_channel_size_sync_buffer_maxpool2d1_V1 = SE_out_i_llvm_fpga_sync_buffer_i32_channel_size_sync_buffer_maxpool2d1_wireValid & ~ (SE_out_i_llvm_fpga_sync_buffer_i32_channel_size_sync_buffer_maxpool2d1_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_sync_buffer_i32_channel_size_sync_buffer_maxpool2d1_wireValid = i_llvm_fpga_sync_buffer_i32_channel_size_sync_buffer_maxpool2d1_out_valid_out;

    // SE_out_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer_maxpool2d4(STALLENABLE,194)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer_maxpool2d4_V0 = SE_out_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer_maxpool2d4_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer_maxpool2d4_backStall = i_llvm_fpga_ffwd_source_i1_unnamed_maxpool2d1_maxpool2d27_out_stall_out | ~ (SE_out_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer_maxpool2d4_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer_maxpool2d4_and0 = i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer_maxpool2d4_out_valid_out;
    assign SE_out_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer_maxpool2d4_wireValid = SE_out_i_llvm_fpga_sync_buffer_i32_channel_size_sync_buffer_maxpool2d1_V0 & SE_out_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer_maxpool2d4_and0;

    // i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer_maxpool2d4(BLACKBOX,31)@1
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    maxpool2d_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer_0 thei_llvm_fpga_sync_buffer_i32_output_size_sync_buffer_maxpool2d4 (
        .in_buffer_in(in_output_size),
        .in_i_dependence(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer_maxpool2d4_backStall),
        .in_valid_in(SE_out_maxpool2d_B0_merge_reg_V4),
        .out_buffer_out(i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer_maxpool2d4_out_buffer_out),
        .out_stall_out(i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer_maxpool2d4_out_stall_out),
        .out_valid_out(i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer_maxpool2d4_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer4_maxpool2d8(BLACKBOX,29)@1
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    maxpool2d_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer4_0 thei_llvm_fpga_sync_buffer_i32_output_size_sync_buffer4_maxpool2d8 (
        .in_buffer_in(in_output_size),
        .in_i_dependence(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer4_maxpool2d8_backStall),
        .in_valid_in(SE_out_maxpool2d_B0_merge_reg_V3),
        .out_buffer_out(i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer4_maxpool2d8_out_buffer_out),
        .out_stall_out(i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer4_maxpool2d8_out_stall_out),
        .out_valid_out(i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer4_maxpool2d8_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_sync_buffer_i32_channel_size_sync_buffer_maxpool2d1(BLACKBOX,28)@1
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    maxpool2d_i_llvm_fpga_sync_buffer_i32_channel_size_sync_buffer_0 thei_llvm_fpga_sync_buffer_i32_channel_size_sync_buffer_maxpool2d1 (
        .in_buffer_in(in_channel_size),
        .in_i_dependence(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_sync_buffer_i32_channel_size_sync_buffer_maxpool2d1_backStall),
        .in_valid_in(SE_out_maxpool2d_B0_merge_reg_V2),
        .out_buffer_out(i_llvm_fpga_sync_buffer_i32_channel_size_sync_buffer_maxpool2d1_out_buffer_out),
        .out_stall_out(i_llvm_fpga_sync_buffer_i32_channel_size_sync_buffer_maxpool2d1_out_stall_out),
        .out_valid_out(i_llvm_fpga_sync_buffer_i32_channel_size_sync_buffer_maxpool2d1_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_sync_buffer_i32_channel_size_sync_buffer6_maxpool2d16(BLACKBOX,26)@1
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    maxpool2d_i_llvm_fpga_sync_buffer_i32_ch0000_size_sync_buffer6_0 thei_llvm_fpga_sync_buffer_i32_channel_size_sync_buffer6_maxpool2d16 (
        .in_buffer_in(in_channel_size),
        .in_i_dependence(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_sync_buffer_i32_channel_size_sync_buffer6_maxpool2d16_backStall),
        .in_valid_in(SE_out_maxpool2d_B0_merge_reg_V1),
        .out_buffer_out(i_llvm_fpga_sync_buffer_i32_channel_size_sync_buffer6_maxpool2d16_out_buffer_out),
        .out_stall_out(i_llvm_fpga_sync_buffer_i32_channel_size_sync_buffer6_maxpool2d16_out_stall_out),
        .out_valid_out(i_llvm_fpga_sync_buffer_i32_channel_size_sync_buffer6_maxpool2d16_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_stall_entry(STALLENABLE,218)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = maxpool2d_B0_merge_reg_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // maxpool2d_B0_merge_reg(BLACKBOX,77)@0
    // in in_stall_in@20000000
    // out out_data_out@1
    // out out_stall_out@20000000
    // out out_valid_out@1
    maxpool2d_B0_merge_reg themaxpool2d_B0_merge_reg (
        .in_data_in(GND_q),
        .in_stall_in(SE_out_maxpool2d_B0_merge_reg_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .out_data_out(),
        .out_stall_out(maxpool2d_B0_merge_reg_out_stall_out),
        .out_valid_out(maxpool2d_B0_merge_reg_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_maxpool2d_B0_merge_reg(STALLENABLE,217)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_maxpool2d_B0_merge_reg_fromReg0 <= '0;
            SE_out_maxpool2d_B0_merge_reg_fromReg1 <= '0;
            SE_out_maxpool2d_B0_merge_reg_fromReg2 <= '0;
            SE_out_maxpool2d_B0_merge_reg_fromReg3 <= '0;
            SE_out_maxpool2d_B0_merge_reg_fromReg4 <= '0;
            SE_out_maxpool2d_B0_merge_reg_fromReg5 <= '0;
            SE_out_maxpool2d_B0_merge_reg_fromReg6 <= '0;
            SE_out_maxpool2d_B0_merge_reg_fromReg7 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_maxpool2d_B0_merge_reg_fromReg0 <= SE_out_maxpool2d_B0_merge_reg_toReg0;
            // Successor 1
            SE_out_maxpool2d_B0_merge_reg_fromReg1 <= SE_out_maxpool2d_B0_merge_reg_toReg1;
            // Successor 2
            SE_out_maxpool2d_B0_merge_reg_fromReg2 <= SE_out_maxpool2d_B0_merge_reg_toReg2;
            // Successor 3
            SE_out_maxpool2d_B0_merge_reg_fromReg3 <= SE_out_maxpool2d_B0_merge_reg_toReg3;
            // Successor 4
            SE_out_maxpool2d_B0_merge_reg_fromReg4 <= SE_out_maxpool2d_B0_merge_reg_toReg4;
            // Successor 5
            SE_out_maxpool2d_B0_merge_reg_fromReg5 <= SE_out_maxpool2d_B0_merge_reg_toReg5;
            // Successor 6
            SE_out_maxpool2d_B0_merge_reg_fromReg6 <= SE_out_maxpool2d_B0_merge_reg_toReg6;
            // Successor 7
            SE_out_maxpool2d_B0_merge_reg_fromReg7 <= SE_out_maxpool2d_B0_merge_reg_toReg7;
        end
    end
    // Input Stall processing
    assign SE_out_maxpool2d_B0_merge_reg_consumed0 = (~ (i_llvm_fpga_pop_throttle_i1_throttle_pop_maxpool2d0_out_stall_out) & SE_out_maxpool2d_B0_merge_reg_wireValid) | SE_out_maxpool2d_B0_merge_reg_fromReg0;
    assign SE_out_maxpool2d_B0_merge_reg_consumed1 = (~ (i_llvm_fpga_sync_buffer_i32_channel_size_sync_buffer6_maxpool2d16_out_stall_out) & SE_out_maxpool2d_B0_merge_reg_wireValid) | SE_out_maxpool2d_B0_merge_reg_fromReg1;
    assign SE_out_maxpool2d_B0_merge_reg_consumed2 = (~ (i_llvm_fpga_sync_buffer_i32_channel_size_sync_buffer_maxpool2d1_out_stall_out) & SE_out_maxpool2d_B0_merge_reg_wireValid) | SE_out_maxpool2d_B0_merge_reg_fromReg2;
    assign SE_out_maxpool2d_B0_merge_reg_consumed3 = (~ (i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer4_maxpool2d8_out_stall_out) & SE_out_maxpool2d_B0_merge_reg_wireValid) | SE_out_maxpool2d_B0_merge_reg_fromReg3;
    assign SE_out_maxpool2d_B0_merge_reg_consumed4 = (~ (i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer_maxpool2d4_out_stall_out) & SE_out_maxpool2d_B0_merge_reg_wireValid) | SE_out_maxpool2d_B0_merge_reg_fromReg4;
    assign SE_out_maxpool2d_B0_merge_reg_consumed5 = (~ (i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer_maxpool2d24_out_stall_out) & SE_out_maxpool2d_B0_merge_reg_wireValid) | SE_out_maxpool2d_B0_merge_reg_fromReg5;
    assign SE_out_maxpool2d_B0_merge_reg_consumed6 = (~ (i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_maxpool2d25_out_stall_out) & SE_out_maxpool2d_B0_merge_reg_wireValid) | SE_out_maxpool2d_B0_merge_reg_fromReg6;
    assign SE_out_maxpool2d_B0_merge_reg_consumed7 = (~ (bubble_out_maxpool2d_B0_merge_reg_5_reg_backStall) & SE_out_maxpool2d_B0_merge_reg_wireValid) | SE_out_maxpool2d_B0_merge_reg_fromReg7;
    // Consuming
    assign SE_out_maxpool2d_B0_merge_reg_StallValid = SE_out_maxpool2d_B0_merge_reg_backStall & SE_out_maxpool2d_B0_merge_reg_wireValid;
    assign SE_out_maxpool2d_B0_merge_reg_toReg0 = SE_out_maxpool2d_B0_merge_reg_StallValid & SE_out_maxpool2d_B0_merge_reg_consumed0;
    assign SE_out_maxpool2d_B0_merge_reg_toReg1 = SE_out_maxpool2d_B0_merge_reg_StallValid & SE_out_maxpool2d_B0_merge_reg_consumed1;
    assign SE_out_maxpool2d_B0_merge_reg_toReg2 = SE_out_maxpool2d_B0_merge_reg_StallValid & SE_out_maxpool2d_B0_merge_reg_consumed2;
    assign SE_out_maxpool2d_B0_merge_reg_toReg3 = SE_out_maxpool2d_B0_merge_reg_StallValid & SE_out_maxpool2d_B0_merge_reg_consumed3;
    assign SE_out_maxpool2d_B0_merge_reg_toReg4 = SE_out_maxpool2d_B0_merge_reg_StallValid & SE_out_maxpool2d_B0_merge_reg_consumed4;
    assign SE_out_maxpool2d_B0_merge_reg_toReg5 = SE_out_maxpool2d_B0_merge_reg_StallValid & SE_out_maxpool2d_B0_merge_reg_consumed5;
    assign SE_out_maxpool2d_B0_merge_reg_toReg6 = SE_out_maxpool2d_B0_merge_reg_StallValid & SE_out_maxpool2d_B0_merge_reg_consumed6;
    assign SE_out_maxpool2d_B0_merge_reg_toReg7 = SE_out_maxpool2d_B0_merge_reg_StallValid & SE_out_maxpool2d_B0_merge_reg_consumed7;
    // Backward Stall generation
    assign SE_out_maxpool2d_B0_merge_reg_or0 = SE_out_maxpool2d_B0_merge_reg_consumed0;
    assign SE_out_maxpool2d_B0_merge_reg_or1 = SE_out_maxpool2d_B0_merge_reg_consumed1 & SE_out_maxpool2d_B0_merge_reg_or0;
    assign SE_out_maxpool2d_B0_merge_reg_or2 = SE_out_maxpool2d_B0_merge_reg_consumed2 & SE_out_maxpool2d_B0_merge_reg_or1;
    assign SE_out_maxpool2d_B0_merge_reg_or3 = SE_out_maxpool2d_B0_merge_reg_consumed3 & SE_out_maxpool2d_B0_merge_reg_or2;
    assign SE_out_maxpool2d_B0_merge_reg_or4 = SE_out_maxpool2d_B0_merge_reg_consumed4 & SE_out_maxpool2d_B0_merge_reg_or3;
    assign SE_out_maxpool2d_B0_merge_reg_or5 = SE_out_maxpool2d_B0_merge_reg_consumed5 & SE_out_maxpool2d_B0_merge_reg_or4;
    assign SE_out_maxpool2d_B0_merge_reg_or6 = SE_out_maxpool2d_B0_merge_reg_consumed6 & SE_out_maxpool2d_B0_merge_reg_or5;
    assign SE_out_maxpool2d_B0_merge_reg_wireStall = ~ (SE_out_maxpool2d_B0_merge_reg_consumed7 & SE_out_maxpool2d_B0_merge_reg_or6);
    assign SE_out_maxpool2d_B0_merge_reg_backStall = SE_out_maxpool2d_B0_merge_reg_wireStall;
    // Valid signal propagation
    assign SE_out_maxpool2d_B0_merge_reg_V0 = SE_out_maxpool2d_B0_merge_reg_wireValid & ~ (SE_out_maxpool2d_B0_merge_reg_fromReg0);
    assign SE_out_maxpool2d_B0_merge_reg_V1 = SE_out_maxpool2d_B0_merge_reg_wireValid & ~ (SE_out_maxpool2d_B0_merge_reg_fromReg1);
    assign SE_out_maxpool2d_B0_merge_reg_V2 = SE_out_maxpool2d_B0_merge_reg_wireValid & ~ (SE_out_maxpool2d_B0_merge_reg_fromReg2);
    assign SE_out_maxpool2d_B0_merge_reg_V3 = SE_out_maxpool2d_B0_merge_reg_wireValid & ~ (SE_out_maxpool2d_B0_merge_reg_fromReg3);
    assign SE_out_maxpool2d_B0_merge_reg_V4 = SE_out_maxpool2d_B0_merge_reg_wireValid & ~ (SE_out_maxpool2d_B0_merge_reg_fromReg4);
    assign SE_out_maxpool2d_B0_merge_reg_V5 = SE_out_maxpool2d_B0_merge_reg_wireValid & ~ (SE_out_maxpool2d_B0_merge_reg_fromReg5);
    assign SE_out_maxpool2d_B0_merge_reg_V6 = SE_out_maxpool2d_B0_merge_reg_wireValid & ~ (SE_out_maxpool2d_B0_merge_reg_fromReg6);
    assign SE_out_maxpool2d_B0_merge_reg_V7 = SE_out_maxpool2d_B0_merge_reg_wireValid & ~ (SE_out_maxpool2d_B0_merge_reg_fromReg7);
    // Computing multiple Valid(s)
    assign SE_out_maxpool2d_B0_merge_reg_wireValid = maxpool2d_B0_merge_reg_out_valid_out;

    // SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_maxpool2d0(STALLENABLE,182)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_maxpool2d0_V0 = SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_maxpool2d0_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_maxpool2d0_backStall = in_stall_in | ~ (SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_maxpool2d0_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_maxpool2d0_and0 = i_llvm_fpga_pop_throttle_i1_throttle_pop_maxpool2d0_out_valid_out;
    assign SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_maxpool2d0_and1 = i_llvm_fpga_ffwd_source_i33_unnamed_maxpool2d3_maxpool2d29_out_valid_out & SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_maxpool2d0_and0;
    assign SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_maxpool2d0_and2 = i_llvm_fpga_ffwd_source_i33_unnamed_maxpool2d2_maxpool2d28_out_valid_out & SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_maxpool2d0_and1;
    assign SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_maxpool2d0_and3 = bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_maxpool2d0_maxpool2d26_1_reg_V0 & SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_maxpool2d0_and2;
    assign SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_maxpool2d0_and4 = bubble_out_i_llvm_fpga_ffwd_source_p1024f32_unnamed_maxpool2d4_maxpool2d30_1_reg_V0 & SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_maxpool2d0_and3;
    assign SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_maxpool2d0_and5 = bubble_out_i_llvm_fpga_ffwd_source_p1024f32_unnamed_maxpool2d5_maxpool2d31_1_reg_V0 & SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_maxpool2d0_and4;
    assign SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_maxpool2d0_wireValid = bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_maxpool2d1_maxpool2d27_1_reg_V0 & SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_maxpool2d0_and5;

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_llvm_fpga_pop_throttle_i1_throttle_pop_maxpool2d0(BLACKBOX,25)@1
    // in in_stall_in@20000000
    // out out_data_out@2
    // out out_feedback_stall_out_0@20000000
    // out out_stall_out@20000000
    // out out_valid_out@2
    maxpool2d_i_llvm_fpga_pop_throttle_i1_throttle_pop_0 thei_llvm_fpga_pop_throttle_i1_throttle_pop_maxpool2d0 (
        .in_data_in(GND_q),
        .in_dir(GND_q),
        .in_feedback_in_0(in_feedback_in_0),
        .in_feedback_valid_in_0(in_feedback_valid_in_0),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_maxpool2d0_backStall),
        .in_valid_in(SE_out_maxpool2d_B0_merge_reg_V0),
        .out_data_out(),
        .out_feedback_stall_out_0(i_llvm_fpga_pop_throttle_i1_throttle_pop_maxpool2d0_out_feedback_stall_out_0),
        .out_stall_out(i_llvm_fpga_pop_throttle_i1_throttle_pop_maxpool2d0_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_throttle_i1_throttle_pop_maxpool2d0_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // feedback_stall_out_0_sync(GPOUT,15)
    assign out_feedback_stall_out_0 = i_llvm_fpga_pop_throttle_i1_throttle_pop_maxpool2d0_out_feedback_stall_out_0;

    // regfree_osync(GPOUT,98)
    assign out_intel_reserved_ffwd_0_0 = i_llvm_fpga_ffwd_source_i1_unnamed_maxpool2d0_maxpool2d26_out_intel_reserved_ffwd_0_0;

    // sync_out(GPOUT,102)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // dupName_0_regfree_osync_x(GPOUT,110)
    assign out_intel_reserved_ffwd_1_0 = i_llvm_fpga_ffwd_source_i1_unnamed_maxpool2d1_maxpool2d27_out_intel_reserved_ffwd_1_0;

    // dupName_0_sync_out_x(GPOUT,111)@2
    assign out_valid_out = SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_maxpool2d0_V0;

    // dupName_1_regfree_osync_x(GPOUT,114)
    assign out_intel_reserved_ffwd_2_0 = i_llvm_fpga_ffwd_source_i33_unnamed_maxpool2d2_maxpool2d28_out_intel_reserved_ffwd_2_0;

    // dupName_2_regfree_osync_x(GPOUT,115)
    assign out_intel_reserved_ffwd_3_0 = i_llvm_fpga_ffwd_source_i33_unnamed_maxpool2d3_maxpool2d29_out_intel_reserved_ffwd_3_0;

    // dupName_3_regfree_osync_x(GPOUT,116)
    assign out_intel_reserved_ffwd_4_0 = i_llvm_fpga_ffwd_source_p1024f32_unnamed_maxpool2d4_maxpool2d30_out_intel_reserved_ffwd_4_0;

    // dupName_4_regfree_osync_x(GPOUT,117)
    assign out_intel_reserved_ffwd_5_0 = i_llvm_fpga_ffwd_source_p1024f32_unnamed_maxpool2d5_maxpool2d31_out_intel_reserved_ffwd_5_0;

endmodule
