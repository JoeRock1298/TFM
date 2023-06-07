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

// SystemVerilog created from conv2d1x1_bb_B0_stall_region
// SystemVerilog created on Tue Jun  6 18:48:20 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2d1x1_bb_B0_stall_region (
    input wire [0:0] in_feedback_in_0,
    output wire [0:0] out_feedback_stall_out_0,
    input wire [0:0] in_feedback_valid_in_0,
    input wire [31:0] in_filter_size,
    input wire [31:0] in_input_channels,
    input wire [31:0] in_input_size,
    output wire [0:0] out_intel_reserved_ffwd_0_0,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_valid_in,
    output wire [31:0] out_intel_reserved_ffwd_1_0,
    output wire [0:0] out_valid_out,
    output wire [0:0] out_intel_reserved_ffwd_2_0,
    output wire [32:0] out_intel_reserved_ffwd_3_0,
    output wire [32:0] out_intel_reserved_ffwd_4_0,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] c_i32_132_q;
    wire [31:0] c_i32_133_q;
    wire [32:0] c_i33_134_q;
    wire [0:0] conv2d1x1_B0_merge_reg_out_stall_out;
    wire [0:0] conv2d1x1_B0_merge_reg_out_valid_out;
    wire [33:0] i_cmp30_conv2d1x12_a;
    wire [33:0] i_cmp30_conv2d1x12_b;
    logic [33:0] i_cmp30_conv2d1x12_o;
    wire [0:0] i_cmp30_conv2d1x12_c;
    wire [33:0] i_cmp624_conv2d1x16_a;
    wire [33:0] i_cmp624_conv2d1x16_b;
    logic [33:0] i_cmp624_conv2d1x16_o;
    wire [0:0] i_cmp624_conv2d1x16_c;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_conv2d1x10_conv2d1x124_out_intel_reserved_ffwd_0_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_conv2d1x10_conv2d1x124_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_conv2d1x10_conv2d1x124_out_valid_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_conv2d1x12_conv2d1x126_out_intel_reserved_ffwd_2_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_conv2d1x12_conv2d1x126_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_conv2d1x12_conv2d1x126_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_conv2d1x11_conv2d1x125_out_intel_reserved_ffwd_1_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_conv2d1x11_conv2d1x125_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_conv2d1x11_conv2d1x125_out_valid_out;
    wire [32:0] i_llvm_fpga_ffwd_source_i33_unnamed_conv2d1x13_conv2d1x127_out_intel_reserved_ffwd_3_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i33_unnamed_conv2d1x13_conv2d1x127_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i33_unnamed_conv2d1x13_conv2d1x127_out_valid_out;
    wire [32:0] i_llvm_fpga_ffwd_source_i33_unnamed_conv2d1x14_conv2d1x128_out_intel_reserved_ffwd_4_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i33_unnamed_conv2d1x14_conv2d1x128_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i33_unnamed_conv2d1x14_conv2d1x128_out_valid_out;
    wire [0:0] i_llvm_fpga_pop_throttle_i1_throttle_pop_conv2d1x10_out_feedback_stall_out_0;
    wire [0:0] i_llvm_fpga_pop_throttle_i1_throttle_pop_conv2d1x10_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_throttle_i1_throttle_pop_conv2d1x10_out_valid_out;
    wire [31:0] i_llvm_fpga_sync_buffer_i32_filter_size_sync_buffer4_conv2d1x116_out_buffer_out;
    wire [0:0] i_llvm_fpga_sync_buffer_i32_filter_size_sync_buffer4_conv2d1x116_out_stall_out;
    wire [0:0] i_llvm_fpga_sync_buffer_i32_filter_size_sync_buffer4_conv2d1x116_out_valid_out;
    wire [31:0] i_llvm_fpga_sync_buffer_i32_filter_size_sync_buffer5_conv2d1x119_out_buffer_out;
    wire [0:0] i_llvm_fpga_sync_buffer_i32_filter_size_sync_buffer5_conv2d1x119_out_stall_out;
    wire [0:0] i_llvm_fpga_sync_buffer_i32_filter_size_sync_buffer5_conv2d1x119_out_valid_out;
    wire [31:0] i_llvm_fpga_sync_buffer_i32_filter_size_sync_buffer_conv2d1x11_out_buffer_out;
    wire [0:0] i_llvm_fpga_sync_buffer_i32_filter_size_sync_buffer_conv2d1x11_out_stall_out;
    wire [0:0] i_llvm_fpga_sync_buffer_i32_filter_size_sync_buffer_conv2d1x11_out_valid_out;
    wire [31:0] i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer2_conv2d1x18_out_buffer_out;
    wire [0:0] i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer2_conv2d1x18_out_stall_out;
    wire [0:0] i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer2_conv2d1x18_out_valid_out;
    wire [31:0] i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer3_conv2d1x111_out_buffer_out;
    wire [0:0] i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer3_conv2d1x111_out_stall_out;
    wire [0:0] i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer3_conv2d1x111_out_valid_out;
    wire [31:0] i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer_conv2d1x15_out_buffer_out;
    wire [0:0] i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer_conv2d1x15_out_stall_out;
    wire [0:0] i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer_conv2d1x15_out_valid_out;
    wire [31:0] i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer_conv2d1x14_out_buffer_out;
    wire [0:0] i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer_conv2d1x14_out_stall_out;
    wire [0:0] i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer_conv2d1x14_out_valid_out;
    wire [0:0] i_smax39_conv2d1x120_s;
    reg [31:0] i_smax39_conv2d1x120_q;
    wire [0:0] i_smax_conv2d1x112_s;
    reg [31:0] i_smax_conv2d1x112_q;
    wire [32:0] i_unnamed_conv2d1x113_a;
    wire [32:0] i_unnamed_conv2d1x113_b;
    logic [32:0] i_unnamed_conv2d1x113_o;
    wire [32:0] i_unnamed_conv2d1x113_q;
    wire [32:0] i_unnamed_conv2d1x114_vt_join_q;
    wire [31:0] i_unnamed_conv2d1x114_vt_select_31_b;
    wire [33:0] i_unnamed_conv2d1x115_a;
    wire [33:0] i_unnamed_conv2d1x115_b;
    logic [33:0] i_unnamed_conv2d1x115_o;
    wire [33:0] i_unnamed_conv2d1x115_q;
    wire [33:0] i_unnamed_conv2d1x117_a;
    wire [33:0] i_unnamed_conv2d1x117_b;
    logic [33:0] i_unnamed_conv2d1x117_o;
    wire [0:0] i_unnamed_conv2d1x117_c;
    wire [32:0] i_unnamed_conv2d1x121_a;
    wire [32:0] i_unnamed_conv2d1x121_b;
    logic [32:0] i_unnamed_conv2d1x121_o;
    wire [32:0] i_unnamed_conv2d1x121_q;
    wire [32:0] i_unnamed_conv2d1x122_vt_join_q;
    wire [31:0] i_unnamed_conv2d1x122_vt_select_31_b;
    wire [33:0] i_unnamed_conv2d1x123_a;
    wire [33:0] i_unnamed_conv2d1x123_b;
    logic [33:0] i_unnamed_conv2d1x123_o;
    wire [33:0] i_unnamed_conv2d1x123_q;
    wire [33:0] i_unnamed_conv2d1x19_a;
    wire [33:0] i_unnamed_conv2d1x19_b;
    logic [33:0] i_unnamed_conv2d1x19_o;
    wire [0:0] i_unnamed_conv2d1x19_c;
    wire [31:0] bgTrunc_i_unnamed_conv2d1x113_sel_x_b;
    wire [32:0] bgTrunc_i_unnamed_conv2d1x115_sel_x_b;
    wire [31:0] bgTrunc_i_unnamed_conv2d1x121_sel_x_b;
    wire [32:0] bgTrunc_i_unnamed_conv2d1x123_sel_x_b;
    wire [31:0] c_i32_031_recast_x_q;
    wire [32:0] i_unnamed_conv2d1x114_sel_x_b;
    wire [32:0] i_unnamed_conv2d1x122_sel_x_b;
    wire [31:0] bubble_join_i_llvm_fpga_sync_buffer_i32_filter_size_sync_buffer4_conv2d1x116_q;
    wire [31:0] bubble_select_i_llvm_fpga_sync_buffer_i32_filter_size_sync_buffer4_conv2d1x116_b;
    wire [31:0] bubble_join_i_llvm_fpga_sync_buffer_i32_filter_size_sync_buffer5_conv2d1x119_q;
    wire [31:0] bubble_select_i_llvm_fpga_sync_buffer_i32_filter_size_sync_buffer5_conv2d1x119_b;
    wire [31:0] bubble_join_i_llvm_fpga_sync_buffer_i32_filter_size_sync_buffer_conv2d1x11_q;
    wire [31:0] bubble_select_i_llvm_fpga_sync_buffer_i32_filter_size_sync_buffer_conv2d1x11_b;
    wire [31:0] bubble_join_i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer2_conv2d1x18_q;
    wire [31:0] bubble_select_i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer2_conv2d1x18_b;
    wire [31:0] bubble_join_i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer3_conv2d1x111_q;
    wire [31:0] bubble_select_i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer3_conv2d1x111_b;
    wire [31:0] bubble_join_i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer_conv2d1x15_q;
    wire [31:0] bubble_select_i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer_conv2d1x15_b;
    wire [31:0] bubble_join_i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer_conv2d1x14_q;
    wire [31:0] bubble_select_i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer_conv2d1x14_b;
    wire [0:0] SE_out_conv2d1x1_B0_merge_reg_wireValid;
    wire [0:0] SE_out_conv2d1x1_B0_merge_reg_wireStall;
    wire [0:0] SE_out_conv2d1x1_B0_merge_reg_StallValid;
    wire [0:0] SE_out_conv2d1x1_B0_merge_reg_toReg0;
    reg [0:0] SE_out_conv2d1x1_B0_merge_reg_fromReg0;
    wire [0:0] SE_out_conv2d1x1_B0_merge_reg_consumed0;
    wire [0:0] SE_out_conv2d1x1_B0_merge_reg_toReg1;
    reg [0:0] SE_out_conv2d1x1_B0_merge_reg_fromReg1;
    wire [0:0] SE_out_conv2d1x1_B0_merge_reg_consumed1;
    wire [0:0] SE_out_conv2d1x1_B0_merge_reg_toReg2;
    reg [0:0] SE_out_conv2d1x1_B0_merge_reg_fromReg2;
    wire [0:0] SE_out_conv2d1x1_B0_merge_reg_consumed2;
    wire [0:0] SE_out_conv2d1x1_B0_merge_reg_toReg3;
    reg [0:0] SE_out_conv2d1x1_B0_merge_reg_fromReg3;
    wire [0:0] SE_out_conv2d1x1_B0_merge_reg_consumed3;
    wire [0:0] SE_out_conv2d1x1_B0_merge_reg_toReg4;
    reg [0:0] SE_out_conv2d1x1_B0_merge_reg_fromReg4;
    wire [0:0] SE_out_conv2d1x1_B0_merge_reg_consumed4;
    wire [0:0] SE_out_conv2d1x1_B0_merge_reg_toReg5;
    reg [0:0] SE_out_conv2d1x1_B0_merge_reg_fromReg5;
    wire [0:0] SE_out_conv2d1x1_B0_merge_reg_consumed5;
    wire [0:0] SE_out_conv2d1x1_B0_merge_reg_toReg6;
    reg [0:0] SE_out_conv2d1x1_B0_merge_reg_fromReg6;
    wire [0:0] SE_out_conv2d1x1_B0_merge_reg_consumed6;
    wire [0:0] SE_out_conv2d1x1_B0_merge_reg_or0;
    wire [0:0] SE_out_conv2d1x1_B0_merge_reg_or1;
    wire [0:0] SE_out_conv2d1x1_B0_merge_reg_or2;
    wire [0:0] SE_out_conv2d1x1_B0_merge_reg_or3;
    wire [0:0] SE_out_conv2d1x1_B0_merge_reg_or4;
    wire [0:0] SE_out_conv2d1x1_B0_merge_reg_or5;
    wire [0:0] SE_out_conv2d1x1_B0_merge_reg_backStall;
    wire [0:0] SE_out_conv2d1x1_B0_merge_reg_V0;
    wire [0:0] SE_out_conv2d1x1_B0_merge_reg_V1;
    wire [0:0] SE_out_conv2d1x1_B0_merge_reg_V2;
    wire [0:0] SE_out_conv2d1x1_B0_merge_reg_V3;
    wire [0:0] SE_out_conv2d1x1_B0_merge_reg_V4;
    wire [0:0] SE_out_conv2d1x1_B0_merge_reg_V5;
    wire [0:0] SE_out_conv2d1x1_B0_merge_reg_V6;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i1_unnamed_conv2d1x10_conv2d1x124_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i1_unnamed_conv2d1x10_conv2d1x124_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i1_unnamed_conv2d1x10_conv2d1x124_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i1_unnamed_conv2d1x12_conv2d1x126_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i1_unnamed_conv2d1x12_conv2d1x126_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i1_unnamed_conv2d1x12_conv2d1x126_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv2d1x11_conv2d1x125_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv2d1x11_conv2d1x125_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv2d1x11_conv2d1x125_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_conv2d1x10_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_conv2d1x10_and0;
    wire [0:0] SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_conv2d1x10_and1;
    wire [0:0] SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_conv2d1x10_and2;
    wire [0:0] SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_conv2d1x10_and3;
    wire [0:0] SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_conv2d1x10_and4;
    wire [0:0] SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_conv2d1x10_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_conv2d1x10_V0;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_i32_filter_size_sync_buffer4_conv2d1x116_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_i32_filter_size_sync_buffer4_conv2d1x116_backStall;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_i32_filter_size_sync_buffer4_conv2d1x116_V0;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_i32_filter_size_sync_buffer5_conv2d1x119_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_i32_filter_size_sync_buffer5_conv2d1x119_and0;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_i32_filter_size_sync_buffer5_conv2d1x119_backStall;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_i32_filter_size_sync_buffer5_conv2d1x119_V0;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_i32_filter_size_sync_buffer_conv2d1x11_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_i32_filter_size_sync_buffer_conv2d1x11_backStall;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_i32_filter_size_sync_buffer_conv2d1x11_V0;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer2_conv2d1x18_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer2_conv2d1x18_backStall;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer2_conv2d1x18_V0;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer3_conv2d1x111_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer3_conv2d1x111_and0;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer3_conv2d1x111_backStall;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer3_conv2d1x111_V0;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer_conv2d1x15_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer_conv2d1x15_backStall;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer_conv2d1x15_V0;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer_conv2d1x14_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer_conv2d1x14_backStall;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer_conv2d1x14_V0;
    reg [0:0] SE_i_unnamed_conv2d1x117_R_v_0;
    wire [0:0] SE_i_unnamed_conv2d1x117_v_s_0;
    wire [0:0] SE_i_unnamed_conv2d1x117_s_tv_0;
    wire [0:0] SE_i_unnamed_conv2d1x117_backEN;
    wire [0:0] SE_i_unnamed_conv2d1x117_backStall;
    wire [0:0] SE_i_unnamed_conv2d1x117_V0;
    reg [0:0] SE_i_unnamed_conv2d1x19_R_v_0;
    wire [0:0] SE_i_unnamed_conv2d1x19_v_s_0;
    wire [0:0] SE_i_unnamed_conv2d1x19_s_tv_0;
    wire [0:0] SE_i_unnamed_conv2d1x19_backEN;
    wire [0:0] SE_i_unnamed_conv2d1x19_backStall;
    wire [0:0] SE_i_unnamed_conv2d1x19_V0;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    reg [0:0] bubble_out_conv2d1x1_B0_merge_reg_6_reg_R_v_0;
    reg [0:0] bubble_out_conv2d1x1_B0_merge_reg_6_reg_R_v_1;
    wire [0:0] bubble_out_conv2d1x1_B0_merge_reg_6_reg_v_s_0;
    wire [0:0] bubble_out_conv2d1x1_B0_merge_reg_6_reg_s_tv_0;
    wire [0:0] bubble_out_conv2d1x1_B0_merge_reg_6_reg_s_tv_1;
    wire [0:0] bubble_out_conv2d1x1_B0_merge_reg_6_reg_backEN;
    wire [0:0] bubble_out_conv2d1x1_B0_merge_reg_6_reg_or0;
    wire [0:0] bubble_out_conv2d1x1_B0_merge_reg_6_reg_backStall;
    wire [0:0] bubble_out_conv2d1x1_B0_merge_reg_6_reg_V0;
    wire [0:0] bubble_out_conv2d1x1_B0_merge_reg_6_reg_V1;
    reg [0:0] bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_conv2d1x10_conv2d1x124_1_reg_R_v_0;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_conv2d1x10_conv2d1x124_1_reg_v_s_0;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_conv2d1x10_conv2d1x124_1_reg_s_tv_0;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_conv2d1x10_conv2d1x124_1_reg_backEN;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_conv2d1x10_conv2d1x124_1_reg_backStall;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_conv2d1x10_conv2d1x124_1_reg_V0;
    reg [0:0] bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_conv2d1x12_conv2d1x126_1_reg_R_v_0;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_conv2d1x12_conv2d1x126_1_reg_v_s_0;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_conv2d1x12_conv2d1x126_1_reg_s_tv_0;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_conv2d1x12_conv2d1x126_1_reg_backEN;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_conv2d1x12_conv2d1x126_1_reg_backStall;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_conv2d1x12_conv2d1x126_1_reg_V0;
    reg [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv2d1x11_conv2d1x125_1_reg_R_v_0;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv2d1x11_conv2d1x125_1_reg_v_s_0;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv2d1x11_conv2d1x125_1_reg_s_tv_0;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv2d1x11_conv2d1x125_1_reg_backEN;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv2d1x11_conv2d1x125_1_reg_backStall;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv2d1x11_conv2d1x125_1_reg_V0;


    // c_i33_134(CONSTANT,10)
    assign c_i33_134_q = $unsigned(33'b111111111111111111111111111111111);

    // c_i32_133(CONSTANT,9)
    assign c_i32_133_q = $unsigned(32'b11111111111111111111111111111111);

    // bubble_join_i_llvm_fpga_sync_buffer_i32_filter_size_sync_buffer5_conv2d1x119(BITJOIN,129)
    assign bubble_join_i_llvm_fpga_sync_buffer_i32_filter_size_sync_buffer5_conv2d1x119_q = i_llvm_fpga_sync_buffer_i32_filter_size_sync_buffer5_conv2d1x119_out_buffer_out;

    // bubble_select_i_llvm_fpga_sync_buffer_i32_filter_size_sync_buffer5_conv2d1x119(BITSELECT,130)
    assign bubble_select_i_llvm_fpga_sync_buffer_i32_filter_size_sync_buffer5_conv2d1x119_b = $unsigned(bubble_join_i_llvm_fpga_sync_buffer_i32_filter_size_sync_buffer5_conv2d1x119_q[31:0]);

    // c_i32_132(CONSTANT,8)
    assign c_i32_132_q = $unsigned(32'b00000000000000000000000000000001);

    // bubble_join_i_llvm_fpga_sync_buffer_i32_filter_size_sync_buffer4_conv2d1x116(BITJOIN,126)
    assign bubble_join_i_llvm_fpga_sync_buffer_i32_filter_size_sync_buffer4_conv2d1x116_q = i_llvm_fpga_sync_buffer_i32_filter_size_sync_buffer4_conv2d1x116_out_buffer_out;

    // bubble_select_i_llvm_fpga_sync_buffer_i32_filter_size_sync_buffer4_conv2d1x116(BITSELECT,127)
    assign bubble_select_i_llvm_fpga_sync_buffer_i32_filter_size_sync_buffer4_conv2d1x116_b = $unsigned(bubble_join_i_llvm_fpga_sync_buffer_i32_filter_size_sync_buffer4_conv2d1x116_q[31:0]);

    // i_unnamed_conv2d1x117(COMPARE,41)@1 + 1
    assign i_unnamed_conv2d1x117_a = $unsigned({{2{c_i32_132_q[31]}}, c_i32_132_q});
    assign i_unnamed_conv2d1x117_b = $unsigned({{2{bubble_select_i_llvm_fpga_sync_buffer_i32_filter_size_sync_buffer4_conv2d1x116_b[31]}}, bubble_select_i_llvm_fpga_sync_buffer_i32_filter_size_sync_buffer4_conv2d1x116_b});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_unnamed_conv2d1x117_o <= 34'b0;
        end
        else if (SE_i_unnamed_conv2d1x117_backEN == 1'b1)
        begin
            i_unnamed_conv2d1x117_o <= $unsigned($signed(i_unnamed_conv2d1x117_a) - $signed(i_unnamed_conv2d1x117_b));
        end
    end
    assign i_unnamed_conv2d1x117_c[0] = i_unnamed_conv2d1x117_o[33];

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // i_smax39_conv2d1x120(MUX,33)@2
    assign i_smax39_conv2d1x120_s = i_unnamed_conv2d1x117_c;
    always @(i_smax39_conv2d1x120_s or c_i32_132_q or bubble_select_i_llvm_fpga_sync_buffer_i32_filter_size_sync_buffer5_conv2d1x119_b)
    begin
        unique case (i_smax39_conv2d1x120_s)
            1'b0 : i_smax39_conv2d1x120_q = c_i32_132_q;
            1'b1 : i_smax39_conv2d1x120_q = bubble_select_i_llvm_fpga_sync_buffer_i32_filter_size_sync_buffer5_conv2d1x119_b;
            default : i_smax39_conv2d1x120_q = 32'b0;
        endcase
    end

    // i_unnamed_conv2d1x121(ADD,42)@2
    assign i_unnamed_conv2d1x121_a = {1'b0, i_smax39_conv2d1x120_q};
    assign i_unnamed_conv2d1x121_b = {1'b0, c_i32_133_q};
    assign i_unnamed_conv2d1x121_o = $unsigned(i_unnamed_conv2d1x121_a) + $unsigned(i_unnamed_conv2d1x121_b);
    assign i_unnamed_conv2d1x121_q = i_unnamed_conv2d1x121_o[32:0];

    // bgTrunc_i_unnamed_conv2d1x121_sel_x(BITSELECT,92)@2
    assign bgTrunc_i_unnamed_conv2d1x121_sel_x_b = i_unnamed_conv2d1x121_q[31:0];

    // i_unnamed_conv2d1x122_sel_x(BITSELECT,104)@2
    assign i_unnamed_conv2d1x122_sel_x_b = {1'b0, bgTrunc_i_unnamed_conv2d1x121_sel_x_b[31:0]};

    // i_unnamed_conv2d1x122_vt_select_31(BITSELECT,46)@2
    assign i_unnamed_conv2d1x122_vt_select_31_b = i_unnamed_conv2d1x122_sel_x_b[31:0];

    // i_unnamed_conv2d1x122_vt_join(BITJOIN,45)@2
    assign i_unnamed_conv2d1x122_vt_join_q = {GND_q, i_unnamed_conv2d1x122_vt_select_31_b};

    // i_unnamed_conv2d1x123(ADD,47)@2
    assign i_unnamed_conv2d1x123_a = {1'b0, i_unnamed_conv2d1x122_vt_join_q};
    assign i_unnamed_conv2d1x123_b = {1'b0, c_i33_134_q};
    assign i_unnamed_conv2d1x123_o = $unsigned(i_unnamed_conv2d1x123_a) + $unsigned(i_unnamed_conv2d1x123_b);
    assign i_unnamed_conv2d1x123_q = i_unnamed_conv2d1x123_o[33:0];

    // bgTrunc_i_unnamed_conv2d1x123_sel_x(BITSELECT,93)@2
    assign bgTrunc_i_unnamed_conv2d1x123_sel_x_b = i_unnamed_conv2d1x123_q[32:0];

    // i_llvm_fpga_ffwd_source_i33_unnamed_conv2d1x14_conv2d1x128(BLACKBOX,24)@2
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_4_0@20000000
    // out out_stall_out@20000000
    conv2d1x1_i_llvm_fpga_ffwd_source_i33_unnamed_4_conv2d1x10 thei_llvm_fpga_ffwd_source_i33_unnamed_conv2d1x14_conv2d1x128 (
        .in_predicate_in(GND_q),
        .in_src_data_in_4_0(bgTrunc_i_unnamed_conv2d1x123_sel_x_b),
        .in_stall_in(SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_conv2d1x10_backStall),
        .in_valid_in(SE_out_i_llvm_fpga_sync_buffer_i32_filter_size_sync_buffer5_conv2d1x119_V0),
        .out_intel_reserved_ffwd_4_0(i_llvm_fpga_ffwd_source_i33_unnamed_conv2d1x14_conv2d1x128_out_intel_reserved_ffwd_4_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i33_unnamed_conv2d1x14_conv2d1x128_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i33_unnamed_conv2d1x14_conv2d1x128_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_sync_buffer_i32_filter_size_sync_buffer4_conv2d1x116(STALLENABLE,164)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_sync_buffer_i32_filter_size_sync_buffer4_conv2d1x116_V0 = SE_out_i_llvm_fpga_sync_buffer_i32_filter_size_sync_buffer4_conv2d1x116_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_sync_buffer_i32_filter_size_sync_buffer4_conv2d1x116_backStall = SE_i_unnamed_conv2d1x117_backStall | ~ (SE_out_i_llvm_fpga_sync_buffer_i32_filter_size_sync_buffer4_conv2d1x116_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_sync_buffer_i32_filter_size_sync_buffer4_conv2d1x116_wireValid = i_llvm_fpga_sync_buffer_i32_filter_size_sync_buffer4_conv2d1x116_out_valid_out;

    // SE_i_unnamed_conv2d1x117(STALLENABLE,183)
    // Valid signal propagation
    assign SE_i_unnamed_conv2d1x117_V0 = SE_i_unnamed_conv2d1x117_R_v_0;
    // Stall signal propagation
    assign SE_i_unnamed_conv2d1x117_s_tv_0 = SE_out_i_llvm_fpga_sync_buffer_i32_filter_size_sync_buffer5_conv2d1x119_backStall & SE_i_unnamed_conv2d1x117_R_v_0;
    // Backward Enable generation
    assign SE_i_unnamed_conv2d1x117_backEN = ~ (SE_i_unnamed_conv2d1x117_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_unnamed_conv2d1x117_v_s_0 = SE_i_unnamed_conv2d1x117_backEN & SE_out_i_llvm_fpga_sync_buffer_i32_filter_size_sync_buffer4_conv2d1x116_V0;
    // Backward Stall generation
    assign SE_i_unnamed_conv2d1x117_backStall = ~ (SE_i_unnamed_conv2d1x117_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_unnamed_conv2d1x117_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_i_unnamed_conv2d1x117_backEN == 1'b0)
            begin
                SE_i_unnamed_conv2d1x117_R_v_0 <= SE_i_unnamed_conv2d1x117_R_v_0 & SE_i_unnamed_conv2d1x117_s_tv_0;
            end
            else
            begin
                SE_i_unnamed_conv2d1x117_R_v_0 <= SE_i_unnamed_conv2d1x117_v_s_0;
            end

        end
    end

    // SE_out_i_llvm_fpga_sync_buffer_i32_filter_size_sync_buffer5_conv2d1x119(STALLENABLE,166)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_sync_buffer_i32_filter_size_sync_buffer5_conv2d1x119_V0 = SE_out_i_llvm_fpga_sync_buffer_i32_filter_size_sync_buffer5_conv2d1x119_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_sync_buffer_i32_filter_size_sync_buffer5_conv2d1x119_backStall = i_llvm_fpga_ffwd_source_i33_unnamed_conv2d1x14_conv2d1x128_out_stall_out | ~ (SE_out_i_llvm_fpga_sync_buffer_i32_filter_size_sync_buffer5_conv2d1x119_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_sync_buffer_i32_filter_size_sync_buffer5_conv2d1x119_and0 = i_llvm_fpga_sync_buffer_i32_filter_size_sync_buffer5_conv2d1x119_out_valid_out;
    assign SE_out_i_llvm_fpga_sync_buffer_i32_filter_size_sync_buffer5_conv2d1x119_wireValid = SE_i_unnamed_conv2d1x117_V0 & SE_out_i_llvm_fpga_sync_buffer_i32_filter_size_sync_buffer5_conv2d1x119_and0;

    // i_llvm_fpga_sync_buffer_i32_filter_size_sync_buffer5_conv2d1x119(BLACKBOX,27)@2
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    conv2d1x1_i_llvm_fpga_sync_buffer_i32_filter_size_sync_buffer5_0 thei_llvm_fpga_sync_buffer_i32_filter_size_sync_buffer5_conv2d1x119 (
        .in_buffer_in(in_filter_size),
        .in_i_dependence(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_sync_buffer_i32_filter_size_sync_buffer5_conv2d1x119_backStall),
        .in_valid_in(bubble_out_conv2d1x1_B0_merge_reg_6_reg_V1),
        .out_buffer_out(i_llvm_fpga_sync_buffer_i32_filter_size_sync_buffer5_conv2d1x119_out_buffer_out),
        .out_stall_out(i_llvm_fpga_sync_buffer_i32_filter_size_sync_buffer5_conv2d1x119_out_stall_out),
        .out_valid_out(i_llvm_fpga_sync_buffer_i32_filter_size_sync_buffer5_conv2d1x119_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer3_conv2d1x111(BITJOIN,138)
    assign bubble_join_i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer3_conv2d1x111_q = i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer3_conv2d1x111_out_buffer_out;

    // bubble_select_i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer3_conv2d1x111(BITSELECT,139)
    assign bubble_select_i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer3_conv2d1x111_b = $unsigned(bubble_join_i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer3_conv2d1x111_q[31:0]);

    // bubble_join_i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer2_conv2d1x18(BITJOIN,135)
    assign bubble_join_i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer2_conv2d1x18_q = i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer2_conv2d1x18_out_buffer_out;

    // bubble_select_i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer2_conv2d1x18(BITSELECT,136)
    assign bubble_select_i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer2_conv2d1x18_b = $unsigned(bubble_join_i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer2_conv2d1x18_q[31:0]);

    // i_unnamed_conv2d1x19(COMPARE,48)@1 + 1
    assign i_unnamed_conv2d1x19_a = $unsigned({{2{c_i32_132_q[31]}}, c_i32_132_q});
    assign i_unnamed_conv2d1x19_b = $unsigned({{2{bubble_select_i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer2_conv2d1x18_b[31]}}, bubble_select_i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer2_conv2d1x18_b});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_unnamed_conv2d1x19_o <= 34'b0;
        end
        else if (SE_i_unnamed_conv2d1x19_backEN == 1'b1)
        begin
            i_unnamed_conv2d1x19_o <= $unsigned($signed(i_unnamed_conv2d1x19_a) - $signed(i_unnamed_conv2d1x19_b));
        end
    end
    assign i_unnamed_conv2d1x19_c[0] = i_unnamed_conv2d1x19_o[33];

    // i_smax_conv2d1x112(MUX,34)@2
    assign i_smax_conv2d1x112_s = i_unnamed_conv2d1x19_c;
    always @(i_smax_conv2d1x112_s or c_i32_132_q or bubble_select_i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer3_conv2d1x111_b)
    begin
        unique case (i_smax_conv2d1x112_s)
            1'b0 : i_smax_conv2d1x112_q = c_i32_132_q;
            1'b1 : i_smax_conv2d1x112_q = bubble_select_i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer3_conv2d1x111_b;
            default : i_smax_conv2d1x112_q = 32'b0;
        endcase
    end

    // i_unnamed_conv2d1x113(ADD,35)@2
    assign i_unnamed_conv2d1x113_a = {1'b0, i_smax_conv2d1x112_q};
    assign i_unnamed_conv2d1x113_b = {1'b0, c_i32_133_q};
    assign i_unnamed_conv2d1x113_o = $unsigned(i_unnamed_conv2d1x113_a) + $unsigned(i_unnamed_conv2d1x113_b);
    assign i_unnamed_conv2d1x113_q = i_unnamed_conv2d1x113_o[32:0];

    // bgTrunc_i_unnamed_conv2d1x113_sel_x(BITSELECT,90)@2
    assign bgTrunc_i_unnamed_conv2d1x113_sel_x_b = i_unnamed_conv2d1x113_q[31:0];

    // i_unnamed_conv2d1x114_sel_x(BITSELECT,103)@2
    assign i_unnamed_conv2d1x114_sel_x_b = {1'b0, bgTrunc_i_unnamed_conv2d1x113_sel_x_b[31:0]};

    // i_unnamed_conv2d1x114_vt_select_31(BITSELECT,39)@2
    assign i_unnamed_conv2d1x114_vt_select_31_b = i_unnamed_conv2d1x114_sel_x_b[31:0];

    // i_unnamed_conv2d1x114_vt_join(BITJOIN,38)@2
    assign i_unnamed_conv2d1x114_vt_join_q = {GND_q, i_unnamed_conv2d1x114_vt_select_31_b};

    // i_unnamed_conv2d1x115(ADD,40)@2
    assign i_unnamed_conv2d1x115_a = {1'b0, i_unnamed_conv2d1x114_vt_join_q};
    assign i_unnamed_conv2d1x115_b = {1'b0, c_i33_134_q};
    assign i_unnamed_conv2d1x115_o = $unsigned(i_unnamed_conv2d1x115_a) + $unsigned(i_unnamed_conv2d1x115_b);
    assign i_unnamed_conv2d1x115_q = i_unnamed_conv2d1x115_o[33:0];

    // bgTrunc_i_unnamed_conv2d1x115_sel_x(BITSELECT,91)@2
    assign bgTrunc_i_unnamed_conv2d1x115_sel_x_b = i_unnamed_conv2d1x115_q[32:0];

    // i_llvm_fpga_ffwd_source_i33_unnamed_conv2d1x13_conv2d1x127(BLACKBOX,23)@2
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_3_0@20000000
    // out out_stall_out@20000000
    conv2d1x1_i_llvm_fpga_ffwd_source_i33_unnamed_3_conv2d1x10 thei_llvm_fpga_ffwd_source_i33_unnamed_conv2d1x13_conv2d1x127 (
        .in_predicate_in(GND_q),
        .in_src_data_in_3_0(bgTrunc_i_unnamed_conv2d1x115_sel_x_b),
        .in_stall_in(SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_conv2d1x10_backStall),
        .in_valid_in(SE_out_i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer3_conv2d1x111_V0),
        .out_intel_reserved_ffwd_3_0(i_llvm_fpga_ffwd_source_i33_unnamed_conv2d1x13_conv2d1x127_out_intel_reserved_ffwd_3_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i33_unnamed_conv2d1x13_conv2d1x127_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i33_unnamed_conv2d1x13_conv2d1x127_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer2_conv2d1x18(STALLENABLE,170)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer2_conv2d1x18_V0 = SE_out_i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer2_conv2d1x18_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer2_conv2d1x18_backStall = SE_i_unnamed_conv2d1x19_backStall | ~ (SE_out_i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer2_conv2d1x18_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer2_conv2d1x18_wireValid = i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer2_conv2d1x18_out_valid_out;

    // SE_i_unnamed_conv2d1x19(STALLENABLE,188)
    // Valid signal propagation
    assign SE_i_unnamed_conv2d1x19_V0 = SE_i_unnamed_conv2d1x19_R_v_0;
    // Stall signal propagation
    assign SE_i_unnamed_conv2d1x19_s_tv_0 = SE_out_i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer3_conv2d1x111_backStall & SE_i_unnamed_conv2d1x19_R_v_0;
    // Backward Enable generation
    assign SE_i_unnamed_conv2d1x19_backEN = ~ (SE_i_unnamed_conv2d1x19_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_unnamed_conv2d1x19_v_s_0 = SE_i_unnamed_conv2d1x19_backEN & SE_out_i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer2_conv2d1x18_V0;
    // Backward Stall generation
    assign SE_i_unnamed_conv2d1x19_backStall = ~ (SE_i_unnamed_conv2d1x19_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_unnamed_conv2d1x19_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_i_unnamed_conv2d1x19_backEN == 1'b0)
            begin
                SE_i_unnamed_conv2d1x19_R_v_0 <= SE_i_unnamed_conv2d1x19_R_v_0 & SE_i_unnamed_conv2d1x19_s_tv_0;
            end
            else
            begin
                SE_i_unnamed_conv2d1x19_R_v_0 <= SE_i_unnamed_conv2d1x19_v_s_0;
            end

        end
    end

    // SE_out_i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer3_conv2d1x111(STALLENABLE,172)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer3_conv2d1x111_V0 = SE_out_i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer3_conv2d1x111_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer3_conv2d1x111_backStall = i_llvm_fpga_ffwd_source_i33_unnamed_conv2d1x13_conv2d1x127_out_stall_out | ~ (SE_out_i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer3_conv2d1x111_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer3_conv2d1x111_and0 = i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer3_conv2d1x111_out_valid_out;
    assign SE_out_i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer3_conv2d1x111_wireValid = SE_i_unnamed_conv2d1x19_V0 & SE_out_i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer3_conv2d1x111_and0;

    // i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer3_conv2d1x111(BLACKBOX,30)@2
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    conv2d1x1_i_llvm_fpga_sync_buffer_i32_in0000nnels_sync_buffer3_0 thei_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer3_conv2d1x111 (
        .in_buffer_in(in_input_channels),
        .in_i_dependence(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer3_conv2d1x111_backStall),
        .in_valid_in(bubble_out_conv2d1x1_B0_merge_reg_6_reg_V0),
        .out_buffer_out(i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer3_conv2d1x111_out_buffer_out),
        .out_stall_out(i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer3_conv2d1x111_out_stall_out),
        .out_valid_out(i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer3_conv2d1x111_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_out_conv2d1x1_B0_merge_reg_6_reg(STALLENABLE,255)
    // Valid signal propagation
    assign bubble_out_conv2d1x1_B0_merge_reg_6_reg_V0 = bubble_out_conv2d1x1_B0_merge_reg_6_reg_R_v_0;
    assign bubble_out_conv2d1x1_B0_merge_reg_6_reg_V1 = bubble_out_conv2d1x1_B0_merge_reg_6_reg_R_v_1;
    // Stall signal propagation
    assign bubble_out_conv2d1x1_B0_merge_reg_6_reg_s_tv_0 = i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer3_conv2d1x111_out_stall_out & bubble_out_conv2d1x1_B0_merge_reg_6_reg_R_v_0;
    assign bubble_out_conv2d1x1_B0_merge_reg_6_reg_s_tv_1 = i_llvm_fpga_sync_buffer_i32_filter_size_sync_buffer5_conv2d1x119_out_stall_out & bubble_out_conv2d1x1_B0_merge_reg_6_reg_R_v_1;
    // Backward Enable generation
    assign bubble_out_conv2d1x1_B0_merge_reg_6_reg_or0 = bubble_out_conv2d1x1_B0_merge_reg_6_reg_s_tv_0;
    assign bubble_out_conv2d1x1_B0_merge_reg_6_reg_backEN = ~ (bubble_out_conv2d1x1_B0_merge_reg_6_reg_s_tv_1 | bubble_out_conv2d1x1_B0_merge_reg_6_reg_or0);
    // Determine whether to write valid data into the first register stage
    assign bubble_out_conv2d1x1_B0_merge_reg_6_reg_v_s_0 = bubble_out_conv2d1x1_B0_merge_reg_6_reg_backEN & SE_out_conv2d1x1_B0_merge_reg_V6;
    // Backward Stall generation
    assign bubble_out_conv2d1x1_B0_merge_reg_6_reg_backStall = ~ (bubble_out_conv2d1x1_B0_merge_reg_6_reg_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            bubble_out_conv2d1x1_B0_merge_reg_6_reg_R_v_0 <= 1'b0;
            bubble_out_conv2d1x1_B0_merge_reg_6_reg_R_v_1 <= 1'b0;
        end
        else
        begin
            if (bubble_out_conv2d1x1_B0_merge_reg_6_reg_backEN == 1'b0)
            begin
                bubble_out_conv2d1x1_B0_merge_reg_6_reg_R_v_0 <= bubble_out_conv2d1x1_B0_merge_reg_6_reg_R_v_0 & bubble_out_conv2d1x1_B0_merge_reg_6_reg_s_tv_0;
            end
            else
            begin
                bubble_out_conv2d1x1_B0_merge_reg_6_reg_R_v_0 <= bubble_out_conv2d1x1_B0_merge_reg_6_reg_v_s_0;
            end

            if (bubble_out_conv2d1x1_B0_merge_reg_6_reg_backEN == 1'b0)
            begin
                bubble_out_conv2d1x1_B0_merge_reg_6_reg_R_v_1 <= bubble_out_conv2d1x1_B0_merge_reg_6_reg_R_v_1 & bubble_out_conv2d1x1_B0_merge_reg_6_reg_s_tv_1;
            end
            else
            begin
                bubble_out_conv2d1x1_B0_merge_reg_6_reg_R_v_1 <= bubble_out_conv2d1x1_B0_merge_reg_6_reg_v_s_0;
            end

        end
    end

    // bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv2d1x11_conv2d1x125_1_reg(STALLENABLE,259)
    // Valid signal propagation
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv2d1x11_conv2d1x125_1_reg_V0 = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv2d1x11_conv2d1x125_1_reg_R_v_0;
    // Stall signal propagation
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv2d1x11_conv2d1x125_1_reg_s_tv_0 = SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_conv2d1x10_backStall & bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv2d1x11_conv2d1x125_1_reg_R_v_0;
    // Backward Enable generation
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv2d1x11_conv2d1x125_1_reg_backEN = ~ (bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv2d1x11_conv2d1x125_1_reg_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv2d1x11_conv2d1x125_1_reg_v_s_0 = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv2d1x11_conv2d1x125_1_reg_backEN & SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv2d1x11_conv2d1x125_V0;
    // Backward Stall generation
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv2d1x11_conv2d1x125_1_reg_backStall = ~ (bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv2d1x11_conv2d1x125_1_reg_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv2d1x11_conv2d1x125_1_reg_R_v_0 <= 1'b0;
        end
        else
        begin
            if (bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv2d1x11_conv2d1x125_1_reg_backEN == 1'b0)
            begin
                bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv2d1x11_conv2d1x125_1_reg_R_v_0 <= bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv2d1x11_conv2d1x125_1_reg_R_v_0 & bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv2d1x11_conv2d1x125_1_reg_s_tv_0;
            end
            else
            begin
                bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv2d1x11_conv2d1x125_1_reg_R_v_0 <= bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv2d1x11_conv2d1x125_1_reg_v_s_0;
            end

        end
    end

    // SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv2d1x11_conv2d1x125(STALLENABLE,156)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv2d1x11_conv2d1x125_V0 = SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv2d1x11_conv2d1x125_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv2d1x11_conv2d1x125_backStall = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv2d1x11_conv2d1x125_1_reg_backStall | ~ (SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv2d1x11_conv2d1x125_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv2d1x11_conv2d1x125_wireValid = i_llvm_fpga_ffwd_source_i32_unnamed_conv2d1x11_conv2d1x125_out_valid_out;

    // bubble_join_i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer_conv2d1x14(BITJOIN,144)
    assign bubble_join_i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer_conv2d1x14_q = i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer_conv2d1x14_out_buffer_out;

    // bubble_select_i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer_conv2d1x14(BITSELECT,145)
    assign bubble_select_i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer_conv2d1x14_b = $unsigned(bubble_join_i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer_conv2d1x14_q[31:0]);

    // i_llvm_fpga_ffwd_source_i32_unnamed_conv2d1x11_conv2d1x125(BLACKBOX,22)@1
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_1_0@20000000
    // out out_stall_out@20000000
    conv2d1x1_i_llvm_fpga_ffwd_source_i32_unnamed_1_conv2d1x10 thei_llvm_fpga_ffwd_source_i32_unnamed_conv2d1x11_conv2d1x125 (
        .in_predicate_in(GND_q),
        .in_src_data_in_1_0(bubble_select_i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer_conv2d1x14_b),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv2d1x11_conv2d1x125_backStall),
        .in_valid_in(SE_out_i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer_conv2d1x14_V0),
        .out_intel_reserved_ffwd_1_0(i_llvm_fpga_ffwd_source_i32_unnamed_conv2d1x11_conv2d1x125_out_intel_reserved_ffwd_1_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i32_unnamed_conv2d1x11_conv2d1x125_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i32_unnamed_conv2d1x11_conv2d1x125_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer_conv2d1x14(STALLENABLE,176)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer_conv2d1x14_V0 = SE_out_i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer_conv2d1x14_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer_conv2d1x14_backStall = i_llvm_fpga_ffwd_source_i32_unnamed_conv2d1x11_conv2d1x125_out_stall_out | ~ (SE_out_i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer_conv2d1x14_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer_conv2d1x14_wireValid = i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer_conv2d1x14_out_valid_out;

    // i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer_conv2d1x14(BLACKBOX,32)@1
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    conv2d1x1_i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer_0 thei_llvm_fpga_sync_buffer_i32_input_size_sync_buffer_conv2d1x14 (
        .in_buffer_in(in_input_size),
        .in_i_dependence(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer_conv2d1x14_backStall),
        .in_valid_in(SE_out_conv2d1x1_B0_merge_reg_V5),
        .out_buffer_out(i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer_conv2d1x14_out_buffer_out),
        .out_stall_out(i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer_conv2d1x14_out_stall_out),
        .out_valid_out(i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer_conv2d1x14_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_conv2d1x12_conv2d1x126_1_reg(STALLENABLE,258)
    // Valid signal propagation
    assign bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_conv2d1x12_conv2d1x126_1_reg_V0 = bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_conv2d1x12_conv2d1x126_1_reg_R_v_0;
    // Stall signal propagation
    assign bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_conv2d1x12_conv2d1x126_1_reg_s_tv_0 = SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_conv2d1x10_backStall & bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_conv2d1x12_conv2d1x126_1_reg_R_v_0;
    // Backward Enable generation
    assign bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_conv2d1x12_conv2d1x126_1_reg_backEN = ~ (bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_conv2d1x12_conv2d1x126_1_reg_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_conv2d1x12_conv2d1x126_1_reg_v_s_0 = bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_conv2d1x12_conv2d1x126_1_reg_backEN & SE_out_i_llvm_fpga_ffwd_source_i1_unnamed_conv2d1x12_conv2d1x126_V0;
    // Backward Stall generation
    assign bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_conv2d1x12_conv2d1x126_1_reg_backStall = ~ (bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_conv2d1x12_conv2d1x126_1_reg_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_conv2d1x12_conv2d1x126_1_reg_R_v_0 <= 1'b0;
        end
        else
        begin
            if (bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_conv2d1x12_conv2d1x126_1_reg_backEN == 1'b0)
            begin
                bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_conv2d1x12_conv2d1x126_1_reg_R_v_0 <= bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_conv2d1x12_conv2d1x126_1_reg_R_v_0 & bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_conv2d1x12_conv2d1x126_1_reg_s_tv_0;
            end
            else
            begin
                bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_conv2d1x12_conv2d1x126_1_reg_R_v_0 <= bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_conv2d1x12_conv2d1x126_1_reg_v_s_0;
            end

        end
    end

    // SE_out_i_llvm_fpga_ffwd_source_i1_unnamed_conv2d1x12_conv2d1x126(STALLENABLE,154)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_source_i1_unnamed_conv2d1x12_conv2d1x126_V0 = SE_out_i_llvm_fpga_ffwd_source_i1_unnamed_conv2d1x12_conv2d1x126_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_source_i1_unnamed_conv2d1x12_conv2d1x126_backStall = bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_conv2d1x12_conv2d1x126_1_reg_backStall | ~ (SE_out_i_llvm_fpga_ffwd_source_i1_unnamed_conv2d1x12_conv2d1x126_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_source_i1_unnamed_conv2d1x12_conv2d1x126_wireValid = i_llvm_fpga_ffwd_source_i1_unnamed_conv2d1x12_conv2d1x126_out_valid_out;

    // bubble_join_i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer_conv2d1x15(BITJOIN,141)
    assign bubble_join_i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer_conv2d1x15_q = i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer_conv2d1x15_out_buffer_out;

    // bubble_select_i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer_conv2d1x15(BITSELECT,142)
    assign bubble_select_i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer_conv2d1x15_b = $unsigned(bubble_join_i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer_conv2d1x15_q[31:0]);

    // c_i32_031_recast_x(CONSTANT,94)
    assign c_i32_031_recast_x_q = $unsigned(32'b00000000000000000000000000000000);

    // i_cmp624_conv2d1x16(COMPARE,19)@1
    assign i_cmp624_conv2d1x16_a = $unsigned({{2{c_i32_031_recast_x_q[31]}}, c_i32_031_recast_x_q});
    assign i_cmp624_conv2d1x16_b = $unsigned({{2{bubble_select_i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer_conv2d1x15_b[31]}}, bubble_select_i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer_conv2d1x15_b});
    assign i_cmp624_conv2d1x16_o = $unsigned($signed(i_cmp624_conv2d1x16_a) - $signed(i_cmp624_conv2d1x16_b));
    assign i_cmp624_conv2d1x16_c[0] = i_cmp624_conv2d1x16_o[33];

    // i_llvm_fpga_ffwd_source_i1_unnamed_conv2d1x12_conv2d1x126(BLACKBOX,21)@1
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_2_0@20000000
    // out out_stall_out@20000000
    conv2d1x1_i_llvm_fpga_ffwd_source_i1_unnamed_2_conv2d1x10 thei_llvm_fpga_ffwd_source_i1_unnamed_conv2d1x12_conv2d1x126 (
        .in_predicate_in(GND_q),
        .in_src_data_in_2_0(i_cmp624_conv2d1x16_c),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_source_i1_unnamed_conv2d1x12_conv2d1x126_backStall),
        .in_valid_in(SE_out_i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer_conv2d1x15_V0),
        .out_intel_reserved_ffwd_2_0(i_llvm_fpga_ffwd_source_i1_unnamed_conv2d1x12_conv2d1x126_out_intel_reserved_ffwd_2_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i1_unnamed_conv2d1x12_conv2d1x126_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i1_unnamed_conv2d1x12_conv2d1x126_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer_conv2d1x15(STALLENABLE,174)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer_conv2d1x15_V0 = SE_out_i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer_conv2d1x15_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer_conv2d1x15_backStall = i_llvm_fpga_ffwd_source_i1_unnamed_conv2d1x12_conv2d1x126_out_stall_out | ~ (SE_out_i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer_conv2d1x15_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer_conv2d1x15_wireValid = i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer_conv2d1x15_out_valid_out;

    // i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer_conv2d1x15(BLACKBOX,31)@1
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    conv2d1x1_i_llvm_fpga_sync_buffer_i32_in0000annels_sync_buffer_0 thei_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer_conv2d1x15 (
        .in_buffer_in(in_input_channels),
        .in_i_dependence(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer_conv2d1x15_backStall),
        .in_valid_in(SE_out_conv2d1x1_B0_merge_reg_V4),
        .out_buffer_out(i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer_conv2d1x15_out_buffer_out),
        .out_stall_out(i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer_conv2d1x15_out_stall_out),
        .out_valid_out(i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer_conv2d1x15_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer2_conv2d1x18(BLACKBOX,29)@1
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    conv2d1x1_i_llvm_fpga_sync_buffer_i32_in0000nnels_sync_buffer2_0 thei_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer2_conv2d1x18 (
        .in_buffer_in(in_input_channels),
        .in_i_dependence(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer2_conv2d1x18_backStall),
        .in_valid_in(SE_out_conv2d1x1_B0_merge_reg_V3),
        .out_buffer_out(i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer2_conv2d1x18_out_buffer_out),
        .out_stall_out(i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer2_conv2d1x18_out_stall_out),
        .out_valid_out(i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer2_conv2d1x18_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_conv2d1x10_conv2d1x124_1_reg(STALLENABLE,257)
    // Valid signal propagation
    assign bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_conv2d1x10_conv2d1x124_1_reg_V0 = bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_conv2d1x10_conv2d1x124_1_reg_R_v_0;
    // Stall signal propagation
    assign bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_conv2d1x10_conv2d1x124_1_reg_s_tv_0 = SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_conv2d1x10_backStall & bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_conv2d1x10_conv2d1x124_1_reg_R_v_0;
    // Backward Enable generation
    assign bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_conv2d1x10_conv2d1x124_1_reg_backEN = ~ (bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_conv2d1x10_conv2d1x124_1_reg_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_conv2d1x10_conv2d1x124_1_reg_v_s_0 = bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_conv2d1x10_conv2d1x124_1_reg_backEN & SE_out_i_llvm_fpga_ffwd_source_i1_unnamed_conv2d1x10_conv2d1x124_V0;
    // Backward Stall generation
    assign bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_conv2d1x10_conv2d1x124_1_reg_backStall = ~ (bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_conv2d1x10_conv2d1x124_1_reg_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_conv2d1x10_conv2d1x124_1_reg_R_v_0 <= 1'b0;
        end
        else
        begin
            if (bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_conv2d1x10_conv2d1x124_1_reg_backEN == 1'b0)
            begin
                bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_conv2d1x10_conv2d1x124_1_reg_R_v_0 <= bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_conv2d1x10_conv2d1x124_1_reg_R_v_0 & bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_conv2d1x10_conv2d1x124_1_reg_s_tv_0;
            end
            else
            begin
                bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_conv2d1x10_conv2d1x124_1_reg_R_v_0 <= bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_conv2d1x10_conv2d1x124_1_reg_v_s_0;
            end

        end
    end

    // SE_out_i_llvm_fpga_ffwd_source_i1_unnamed_conv2d1x10_conv2d1x124(STALLENABLE,152)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_source_i1_unnamed_conv2d1x10_conv2d1x124_V0 = SE_out_i_llvm_fpga_ffwd_source_i1_unnamed_conv2d1x10_conv2d1x124_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_source_i1_unnamed_conv2d1x10_conv2d1x124_backStall = bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_conv2d1x10_conv2d1x124_1_reg_backStall | ~ (SE_out_i_llvm_fpga_ffwd_source_i1_unnamed_conv2d1x10_conv2d1x124_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_source_i1_unnamed_conv2d1x10_conv2d1x124_wireValid = i_llvm_fpga_ffwd_source_i1_unnamed_conv2d1x10_conv2d1x124_out_valid_out;

    // bubble_join_i_llvm_fpga_sync_buffer_i32_filter_size_sync_buffer_conv2d1x11(BITJOIN,132)
    assign bubble_join_i_llvm_fpga_sync_buffer_i32_filter_size_sync_buffer_conv2d1x11_q = i_llvm_fpga_sync_buffer_i32_filter_size_sync_buffer_conv2d1x11_out_buffer_out;

    // bubble_select_i_llvm_fpga_sync_buffer_i32_filter_size_sync_buffer_conv2d1x11(BITSELECT,133)
    assign bubble_select_i_llvm_fpga_sync_buffer_i32_filter_size_sync_buffer_conv2d1x11_b = $unsigned(bubble_join_i_llvm_fpga_sync_buffer_i32_filter_size_sync_buffer_conv2d1x11_q[31:0]);

    // i_cmp30_conv2d1x12(COMPARE,18)@1
    assign i_cmp30_conv2d1x12_a = $unsigned({{2{c_i32_031_recast_x_q[31]}}, c_i32_031_recast_x_q});
    assign i_cmp30_conv2d1x12_b = $unsigned({{2{bubble_select_i_llvm_fpga_sync_buffer_i32_filter_size_sync_buffer_conv2d1x11_b[31]}}, bubble_select_i_llvm_fpga_sync_buffer_i32_filter_size_sync_buffer_conv2d1x11_b});
    assign i_cmp30_conv2d1x12_o = $unsigned($signed(i_cmp30_conv2d1x12_a) - $signed(i_cmp30_conv2d1x12_b));
    assign i_cmp30_conv2d1x12_c[0] = i_cmp30_conv2d1x12_o[33];

    // i_llvm_fpga_ffwd_source_i1_unnamed_conv2d1x10_conv2d1x124(BLACKBOX,20)@1
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_0_0@20000000
    // out out_stall_out@20000000
    conv2d1x1_i_llvm_fpga_ffwd_source_i1_unnamed_0_conv2d1x10 thei_llvm_fpga_ffwd_source_i1_unnamed_conv2d1x10_conv2d1x124 (
        .in_predicate_in(GND_q),
        .in_src_data_in_0_0(i_cmp30_conv2d1x12_c),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_source_i1_unnamed_conv2d1x10_conv2d1x124_backStall),
        .in_valid_in(SE_out_i_llvm_fpga_sync_buffer_i32_filter_size_sync_buffer_conv2d1x11_V0),
        .out_intel_reserved_ffwd_0_0(i_llvm_fpga_ffwd_source_i1_unnamed_conv2d1x10_conv2d1x124_out_intel_reserved_ffwd_0_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i1_unnamed_conv2d1x10_conv2d1x124_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i1_unnamed_conv2d1x10_conv2d1x124_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_sync_buffer_i32_filter_size_sync_buffer_conv2d1x11(STALLENABLE,168)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_sync_buffer_i32_filter_size_sync_buffer_conv2d1x11_V0 = SE_out_i_llvm_fpga_sync_buffer_i32_filter_size_sync_buffer_conv2d1x11_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_sync_buffer_i32_filter_size_sync_buffer_conv2d1x11_backStall = i_llvm_fpga_ffwd_source_i1_unnamed_conv2d1x10_conv2d1x124_out_stall_out | ~ (SE_out_i_llvm_fpga_sync_buffer_i32_filter_size_sync_buffer_conv2d1x11_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_sync_buffer_i32_filter_size_sync_buffer_conv2d1x11_wireValid = i_llvm_fpga_sync_buffer_i32_filter_size_sync_buffer_conv2d1x11_out_valid_out;

    // i_llvm_fpga_sync_buffer_i32_filter_size_sync_buffer_conv2d1x11(BLACKBOX,28)@1
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    conv2d1x1_i_llvm_fpga_sync_buffer_i32_filter_size_sync_buffer_0 thei_llvm_fpga_sync_buffer_i32_filter_size_sync_buffer_conv2d1x11 (
        .in_buffer_in(in_filter_size),
        .in_i_dependence(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_sync_buffer_i32_filter_size_sync_buffer_conv2d1x11_backStall),
        .in_valid_in(SE_out_conv2d1x1_B0_merge_reg_V2),
        .out_buffer_out(i_llvm_fpga_sync_buffer_i32_filter_size_sync_buffer_conv2d1x11_out_buffer_out),
        .out_stall_out(i_llvm_fpga_sync_buffer_i32_filter_size_sync_buffer_conv2d1x11_out_stall_out),
        .out_valid_out(i_llvm_fpga_sync_buffer_i32_filter_size_sync_buffer_conv2d1x11_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_sync_buffer_i32_filter_size_sync_buffer4_conv2d1x116(BLACKBOX,26)@1
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    conv2d1x1_i_llvm_fpga_sync_buffer_i32_filter_size_sync_buffer4_0 thei_llvm_fpga_sync_buffer_i32_filter_size_sync_buffer4_conv2d1x116 (
        .in_buffer_in(in_filter_size),
        .in_i_dependence(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_sync_buffer_i32_filter_size_sync_buffer4_conv2d1x116_backStall),
        .in_valid_in(SE_out_conv2d1x1_B0_merge_reg_V1),
        .out_buffer_out(i_llvm_fpga_sync_buffer_i32_filter_size_sync_buffer4_conv2d1x116_out_buffer_out),
        .out_stall_out(i_llvm_fpga_sync_buffer_i32_filter_size_sync_buffer4_conv2d1x116_out_stall_out),
        .out_valid_out(i_llvm_fpga_sync_buffer_i32_filter_size_sync_buffer4_conv2d1x116_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_stall_entry(STALLENABLE,189)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = conv2d1x1_B0_merge_reg_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // conv2d1x1_B0_merge_reg(BLACKBOX,12)@0
    // in in_stall_in@20000000
    // out out_data_out@1
    // out out_stall_out@20000000
    // out out_valid_out@1
    conv2d1x1_B0_merge_reg theconv2d1x1_B0_merge_reg (
        .in_data_in(GND_q),
        .in_stall_in(SE_out_conv2d1x1_B0_merge_reg_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .out_data_out(),
        .out_stall_out(conv2d1x1_B0_merge_reg_out_stall_out),
        .out_valid_out(conv2d1x1_B0_merge_reg_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_conv2d1x1_B0_merge_reg(STALLENABLE,148)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_conv2d1x1_B0_merge_reg_fromReg0 <= '0;
            SE_out_conv2d1x1_B0_merge_reg_fromReg1 <= '0;
            SE_out_conv2d1x1_B0_merge_reg_fromReg2 <= '0;
            SE_out_conv2d1x1_B0_merge_reg_fromReg3 <= '0;
            SE_out_conv2d1x1_B0_merge_reg_fromReg4 <= '0;
            SE_out_conv2d1x1_B0_merge_reg_fromReg5 <= '0;
            SE_out_conv2d1x1_B0_merge_reg_fromReg6 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_conv2d1x1_B0_merge_reg_fromReg0 <= SE_out_conv2d1x1_B0_merge_reg_toReg0;
            // Successor 1
            SE_out_conv2d1x1_B0_merge_reg_fromReg1 <= SE_out_conv2d1x1_B0_merge_reg_toReg1;
            // Successor 2
            SE_out_conv2d1x1_B0_merge_reg_fromReg2 <= SE_out_conv2d1x1_B0_merge_reg_toReg2;
            // Successor 3
            SE_out_conv2d1x1_B0_merge_reg_fromReg3 <= SE_out_conv2d1x1_B0_merge_reg_toReg3;
            // Successor 4
            SE_out_conv2d1x1_B0_merge_reg_fromReg4 <= SE_out_conv2d1x1_B0_merge_reg_toReg4;
            // Successor 5
            SE_out_conv2d1x1_B0_merge_reg_fromReg5 <= SE_out_conv2d1x1_B0_merge_reg_toReg5;
            // Successor 6
            SE_out_conv2d1x1_B0_merge_reg_fromReg6 <= SE_out_conv2d1x1_B0_merge_reg_toReg6;
        end
    end
    // Input Stall processing
    assign SE_out_conv2d1x1_B0_merge_reg_consumed0 = (~ (i_llvm_fpga_pop_throttle_i1_throttle_pop_conv2d1x10_out_stall_out) & SE_out_conv2d1x1_B0_merge_reg_wireValid) | SE_out_conv2d1x1_B0_merge_reg_fromReg0;
    assign SE_out_conv2d1x1_B0_merge_reg_consumed1 = (~ (i_llvm_fpga_sync_buffer_i32_filter_size_sync_buffer4_conv2d1x116_out_stall_out) & SE_out_conv2d1x1_B0_merge_reg_wireValid) | SE_out_conv2d1x1_B0_merge_reg_fromReg1;
    assign SE_out_conv2d1x1_B0_merge_reg_consumed2 = (~ (i_llvm_fpga_sync_buffer_i32_filter_size_sync_buffer_conv2d1x11_out_stall_out) & SE_out_conv2d1x1_B0_merge_reg_wireValid) | SE_out_conv2d1x1_B0_merge_reg_fromReg2;
    assign SE_out_conv2d1x1_B0_merge_reg_consumed3 = (~ (i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer2_conv2d1x18_out_stall_out) & SE_out_conv2d1x1_B0_merge_reg_wireValid) | SE_out_conv2d1x1_B0_merge_reg_fromReg3;
    assign SE_out_conv2d1x1_B0_merge_reg_consumed4 = (~ (i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer_conv2d1x15_out_stall_out) & SE_out_conv2d1x1_B0_merge_reg_wireValid) | SE_out_conv2d1x1_B0_merge_reg_fromReg4;
    assign SE_out_conv2d1x1_B0_merge_reg_consumed5 = (~ (i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer_conv2d1x14_out_stall_out) & SE_out_conv2d1x1_B0_merge_reg_wireValid) | SE_out_conv2d1x1_B0_merge_reg_fromReg5;
    assign SE_out_conv2d1x1_B0_merge_reg_consumed6 = (~ (bubble_out_conv2d1x1_B0_merge_reg_6_reg_backStall) & SE_out_conv2d1x1_B0_merge_reg_wireValid) | SE_out_conv2d1x1_B0_merge_reg_fromReg6;
    // Consuming
    assign SE_out_conv2d1x1_B0_merge_reg_StallValid = SE_out_conv2d1x1_B0_merge_reg_backStall & SE_out_conv2d1x1_B0_merge_reg_wireValid;
    assign SE_out_conv2d1x1_B0_merge_reg_toReg0 = SE_out_conv2d1x1_B0_merge_reg_StallValid & SE_out_conv2d1x1_B0_merge_reg_consumed0;
    assign SE_out_conv2d1x1_B0_merge_reg_toReg1 = SE_out_conv2d1x1_B0_merge_reg_StallValid & SE_out_conv2d1x1_B0_merge_reg_consumed1;
    assign SE_out_conv2d1x1_B0_merge_reg_toReg2 = SE_out_conv2d1x1_B0_merge_reg_StallValid & SE_out_conv2d1x1_B0_merge_reg_consumed2;
    assign SE_out_conv2d1x1_B0_merge_reg_toReg3 = SE_out_conv2d1x1_B0_merge_reg_StallValid & SE_out_conv2d1x1_B0_merge_reg_consumed3;
    assign SE_out_conv2d1x1_B0_merge_reg_toReg4 = SE_out_conv2d1x1_B0_merge_reg_StallValid & SE_out_conv2d1x1_B0_merge_reg_consumed4;
    assign SE_out_conv2d1x1_B0_merge_reg_toReg5 = SE_out_conv2d1x1_B0_merge_reg_StallValid & SE_out_conv2d1x1_B0_merge_reg_consumed5;
    assign SE_out_conv2d1x1_B0_merge_reg_toReg6 = SE_out_conv2d1x1_B0_merge_reg_StallValid & SE_out_conv2d1x1_B0_merge_reg_consumed6;
    // Backward Stall generation
    assign SE_out_conv2d1x1_B0_merge_reg_or0 = SE_out_conv2d1x1_B0_merge_reg_consumed0;
    assign SE_out_conv2d1x1_B0_merge_reg_or1 = SE_out_conv2d1x1_B0_merge_reg_consumed1 & SE_out_conv2d1x1_B0_merge_reg_or0;
    assign SE_out_conv2d1x1_B0_merge_reg_or2 = SE_out_conv2d1x1_B0_merge_reg_consumed2 & SE_out_conv2d1x1_B0_merge_reg_or1;
    assign SE_out_conv2d1x1_B0_merge_reg_or3 = SE_out_conv2d1x1_B0_merge_reg_consumed3 & SE_out_conv2d1x1_B0_merge_reg_or2;
    assign SE_out_conv2d1x1_B0_merge_reg_or4 = SE_out_conv2d1x1_B0_merge_reg_consumed4 & SE_out_conv2d1x1_B0_merge_reg_or3;
    assign SE_out_conv2d1x1_B0_merge_reg_or5 = SE_out_conv2d1x1_B0_merge_reg_consumed5 & SE_out_conv2d1x1_B0_merge_reg_or4;
    assign SE_out_conv2d1x1_B0_merge_reg_wireStall = ~ (SE_out_conv2d1x1_B0_merge_reg_consumed6 & SE_out_conv2d1x1_B0_merge_reg_or5);
    assign SE_out_conv2d1x1_B0_merge_reg_backStall = SE_out_conv2d1x1_B0_merge_reg_wireStall;
    // Valid signal propagation
    assign SE_out_conv2d1x1_B0_merge_reg_V0 = SE_out_conv2d1x1_B0_merge_reg_wireValid & ~ (SE_out_conv2d1x1_B0_merge_reg_fromReg0);
    assign SE_out_conv2d1x1_B0_merge_reg_V1 = SE_out_conv2d1x1_B0_merge_reg_wireValid & ~ (SE_out_conv2d1x1_B0_merge_reg_fromReg1);
    assign SE_out_conv2d1x1_B0_merge_reg_V2 = SE_out_conv2d1x1_B0_merge_reg_wireValid & ~ (SE_out_conv2d1x1_B0_merge_reg_fromReg2);
    assign SE_out_conv2d1x1_B0_merge_reg_V3 = SE_out_conv2d1x1_B0_merge_reg_wireValid & ~ (SE_out_conv2d1x1_B0_merge_reg_fromReg3);
    assign SE_out_conv2d1x1_B0_merge_reg_V4 = SE_out_conv2d1x1_B0_merge_reg_wireValid & ~ (SE_out_conv2d1x1_B0_merge_reg_fromReg4);
    assign SE_out_conv2d1x1_B0_merge_reg_V5 = SE_out_conv2d1x1_B0_merge_reg_wireValid & ~ (SE_out_conv2d1x1_B0_merge_reg_fromReg5);
    assign SE_out_conv2d1x1_B0_merge_reg_V6 = SE_out_conv2d1x1_B0_merge_reg_wireValid & ~ (SE_out_conv2d1x1_B0_merge_reg_fromReg6);
    // Computing multiple Valid(s)
    assign SE_out_conv2d1x1_B0_merge_reg_wireValid = conv2d1x1_B0_merge_reg_out_valid_out;

    // SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_conv2d1x10(STALLENABLE,162)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_conv2d1x10_V0 = SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_conv2d1x10_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_conv2d1x10_backStall = in_stall_in | ~ (SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_conv2d1x10_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_conv2d1x10_and0 = i_llvm_fpga_pop_throttle_i1_throttle_pop_conv2d1x10_out_valid_out;
    assign SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_conv2d1x10_and1 = i_llvm_fpga_ffwd_source_i33_unnamed_conv2d1x14_conv2d1x128_out_valid_out & SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_conv2d1x10_and0;
    assign SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_conv2d1x10_and2 = i_llvm_fpga_ffwd_source_i33_unnamed_conv2d1x13_conv2d1x127_out_valid_out & SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_conv2d1x10_and1;
    assign SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_conv2d1x10_and3 = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv2d1x11_conv2d1x125_1_reg_V0 & SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_conv2d1x10_and2;
    assign SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_conv2d1x10_and4 = bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_conv2d1x10_conv2d1x124_1_reg_V0 & SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_conv2d1x10_and3;
    assign SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_conv2d1x10_wireValid = bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_conv2d1x12_conv2d1x126_1_reg_V0 & SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_conv2d1x10_and4;

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_llvm_fpga_pop_throttle_i1_throttle_pop_conv2d1x10(BLACKBOX,25)@1
    // in in_stall_in@20000000
    // out out_data_out@2
    // out out_feedback_stall_out_0@20000000
    // out out_stall_out@20000000
    // out out_valid_out@2
    conv2d1x1_i_llvm_fpga_pop_throttle_i1_throttle_pop_0 thei_llvm_fpga_pop_throttle_i1_throttle_pop_conv2d1x10 (
        .in_data_in(GND_q),
        .in_dir(GND_q),
        .in_feedback_in_0(in_feedback_in_0),
        .in_feedback_valid_in_0(in_feedback_valid_in_0),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_conv2d1x10_backStall),
        .in_valid_in(SE_out_conv2d1x1_B0_merge_reg_V0),
        .out_data_out(),
        .out_feedback_stall_out_0(i_llvm_fpga_pop_throttle_i1_throttle_pop_conv2d1x10_out_feedback_stall_out_0),
        .out_stall_out(i_llvm_fpga_pop_throttle_i1_throttle_pop_conv2d1x10_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_throttle_i1_throttle_pop_conv2d1x10_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // feedback_stall_out_0_sync(GPOUT,16)
    assign out_feedback_stall_out_0 = i_llvm_fpga_pop_throttle_i1_throttle_pop_conv2d1x10_out_feedback_stall_out_0;

    // regfree_osync(GPOUT,84)
    assign out_intel_reserved_ffwd_0_0 = i_llvm_fpga_ffwd_source_i1_unnamed_conv2d1x10_conv2d1x124_out_intel_reserved_ffwd_0_0;

    // sync_out(GPOUT,88)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // dupName_0_regfree_osync_x(GPOUT,96)
    assign out_intel_reserved_ffwd_1_0 = i_llvm_fpga_ffwd_source_i32_unnamed_conv2d1x11_conv2d1x125_out_intel_reserved_ffwd_1_0;

    // dupName_0_sync_out_x(GPOUT,97)@2
    assign out_valid_out = SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_conv2d1x10_V0;

    // dupName_1_regfree_osync_x(GPOUT,100)
    assign out_intel_reserved_ffwd_2_0 = i_llvm_fpga_ffwd_source_i1_unnamed_conv2d1x12_conv2d1x126_out_intel_reserved_ffwd_2_0;

    // dupName_2_regfree_osync_x(GPOUT,101)
    assign out_intel_reserved_ffwd_3_0 = i_llvm_fpga_ffwd_source_i33_unnamed_conv2d1x13_conv2d1x127_out_intel_reserved_ffwd_3_0;

    // dupName_3_regfree_osync_x(GPOUT,102)
    assign out_intel_reserved_ffwd_4_0 = i_llvm_fpga_ffwd_source_i33_unnamed_conv2d1x14_conv2d1x128_out_intel_reserved_ffwd_4_0;

endmodule
