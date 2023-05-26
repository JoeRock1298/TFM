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

// SystemVerilog created from conv2d1x1_bb_B1_stall_region
// SystemVerilog created on Tue May 23 20:43:36 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2d1x1_bb_B1_stall_region (
    input wire [31:0] in_filter_size,
    input wire [31:0] in_input_channels,
    input wire [31:0] in_input_size,
    output wire [0:0] out_intel_reserved_ffwd_0_0,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [31:0] in_c0_exe1018,
    input wire [31:0] in_c0_exe1119,
    input wire [31:0] in_c0_exe1220,
    input wire [31:0] in_c0_exe1321,
    input wire [31:0] in_c0_exe1422,
    input wire [31:0] in_c0_exe1523,
    input wire [31:0] in_c0_exe1624,
    input wire [31:0] in_c0_exe1725,
    input wire [31:0] in_c0_exe210,
    input wire [31:0] in_c0_exe311,
    input wire [31:0] in_c0_exe412,
    input wire [31:0] in_c0_exe513,
    input wire [31:0] in_c0_exe614,
    input wire [31:0] in_c0_exe715,
    input wire [31:0] in_c0_exe816,
    input wire [31:0] in_c0_exe917,
    input wire [0:0] in_valid_in,
    output wire [31:0] out_intel_reserved_ffwd_1_0,
    output wire [31:0] out_c0_exe1018,
    output wire [31:0] out_c0_exe1119,
    output wire [31:0] out_c0_exe1220,
    output wire [31:0] out_c0_exe1321,
    output wire [31:0] out_c0_exe1422,
    output wire [31:0] out_c0_exe1523,
    output wire [31:0] out_c0_exe1624,
    output wire [31:0] out_c0_exe1725,
    output wire [31:0] out_c0_exe210,
    output wire [31:0] out_c0_exe311,
    output wire [31:0] out_c0_exe412,
    output wire [31:0] out_c0_exe513,
    output wire [31:0] out_c0_exe614,
    output wire [31:0] out_c0_exe715,
    output wire [31:0] out_c0_exe816,
    output wire [31:0] out_c0_exe917,
    output wire [0:0] out_valid_out,
    output wire [0:0] out_intel_reserved_ffwd_2_0,
    output wire [32:0] out_intel_reserved_ffwd_3_0,
    output wire [32:0] out_intel_reserved_ffwd_4_0,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] c_i32_130_q;
    wire [31:0] c_i32_131_q;
    wire [32:0] c_i33_132_q;
    wire [33:0] i_cmp1262_conv2d1x15_a;
    wire [33:0] i_cmp1262_conv2d1x15_b;
    logic [33:0] i_cmp1262_conv2d1x15_o;
    wire [0:0] i_cmp1262_conv2d1x15_c;
    wire [33:0] i_cmp269_conv2d1x11_a;
    wire [33:0] i_cmp269_conv2d1x11_b;
    logic [33:0] i_cmp269_conv2d1x11_o;
    wire [0:0] i_cmp269_conv2d1x11_c;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_conv2d1x10_conv2d1x123_out_intel_reserved_ffwd_0_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_conv2d1x10_conv2d1x123_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_conv2d1x10_conv2d1x123_out_valid_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_conv2d1x12_conv2d1x125_out_intel_reserved_ffwd_2_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_conv2d1x12_conv2d1x125_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_conv2d1x12_conv2d1x125_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_conv2d1x11_conv2d1x124_out_intel_reserved_ffwd_1_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_conv2d1x11_conv2d1x124_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_conv2d1x11_conv2d1x124_out_valid_out;
    wire [32:0] i_llvm_fpga_ffwd_source_i33_unnamed_conv2d1x13_conv2d1x126_out_intel_reserved_ffwd_3_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i33_unnamed_conv2d1x13_conv2d1x126_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i33_unnamed_conv2d1x13_conv2d1x126_out_valid_out;
    wire [32:0] i_llvm_fpga_ffwd_source_i33_unnamed_conv2d1x14_conv2d1x127_out_intel_reserved_ffwd_4_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i33_unnamed_conv2d1x14_conv2d1x127_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i33_unnamed_conv2d1x14_conv2d1x127_out_valid_out;
    wire [31:0] i_llvm_fpga_sync_buffer_i32_filter_size_sync_buffer4_conv2d1x115_out_buffer_out;
    wire [0:0] i_llvm_fpga_sync_buffer_i32_filter_size_sync_buffer4_conv2d1x115_out_stall_out;
    wire [0:0] i_llvm_fpga_sync_buffer_i32_filter_size_sync_buffer4_conv2d1x115_out_valid_out;
    wire [31:0] i_llvm_fpga_sync_buffer_i32_filter_size_sync_buffer5_conv2d1x118_out_buffer_out;
    wire [0:0] i_llvm_fpga_sync_buffer_i32_filter_size_sync_buffer5_conv2d1x118_out_stall_out;
    wire [0:0] i_llvm_fpga_sync_buffer_i32_filter_size_sync_buffer5_conv2d1x118_out_valid_out;
    wire [31:0] i_llvm_fpga_sync_buffer_i32_filter_size_sync_buffer_conv2d1x10_out_buffer_out;
    wire [0:0] i_llvm_fpga_sync_buffer_i32_filter_size_sync_buffer_conv2d1x10_out_stall_out;
    wire [0:0] i_llvm_fpga_sync_buffer_i32_filter_size_sync_buffer_conv2d1x10_out_valid_out;
    wire [31:0] i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer2_conv2d1x17_out_buffer_out;
    wire [0:0] i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer2_conv2d1x17_out_stall_out;
    wire [0:0] i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer2_conv2d1x17_out_valid_out;
    wire [31:0] i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer3_conv2d1x110_out_buffer_out;
    wire [0:0] i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer3_conv2d1x110_out_stall_out;
    wire [0:0] i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer3_conv2d1x110_out_valid_out;
    wire [31:0] i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer_conv2d1x14_out_buffer_out;
    wire [0:0] i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer_conv2d1x14_out_stall_out;
    wire [0:0] i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer_conv2d1x14_out_valid_out;
    wire [31:0] i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer_conv2d1x13_out_buffer_out;
    wire [0:0] i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer_conv2d1x13_out_stall_out;
    wire [0:0] i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer_conv2d1x13_out_valid_out;
    wire [0:0] i_smax300_conv2d1x119_s;
    reg [31:0] i_smax300_conv2d1x119_q;
    wire [0:0] i_smax_conv2d1x111_s;
    reg [31:0] i_smax_conv2d1x111_q;
    wire [32:0] i_unnamed_conv2d1x112_a;
    wire [32:0] i_unnamed_conv2d1x112_b;
    logic [32:0] i_unnamed_conv2d1x112_o;
    wire [32:0] i_unnamed_conv2d1x112_q;
    wire [32:0] i_unnamed_conv2d1x113_vt_join_q;
    wire [31:0] i_unnamed_conv2d1x113_vt_select_31_b;
    wire [33:0] i_unnamed_conv2d1x114_a;
    wire [33:0] i_unnamed_conv2d1x114_b;
    logic [33:0] i_unnamed_conv2d1x114_o;
    wire [33:0] i_unnamed_conv2d1x114_q;
    wire [33:0] i_unnamed_conv2d1x116_a;
    wire [33:0] i_unnamed_conv2d1x116_b;
    logic [33:0] i_unnamed_conv2d1x116_o;
    wire [0:0] i_unnamed_conv2d1x116_c;
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
    wire [33:0] i_unnamed_conv2d1x18_a;
    wire [33:0] i_unnamed_conv2d1x18_b;
    logic [33:0] i_unnamed_conv2d1x18_o;
    wire [0:0] i_unnamed_conv2d1x18_c;
    wire [31:0] bgTrunc_i_unnamed_conv2d1x112_sel_x_b;
    wire [32:0] bgTrunc_i_unnamed_conv2d1x114_sel_x_b;
    wire [31:0] bgTrunc_i_unnamed_conv2d1x120_sel_x_b;
    wire [32:0] bgTrunc_i_unnamed_conv2d1x122_sel_x_b;
    wire [31:0] c_i32_029_recast_x_q;
    wire [32:0] i_unnamed_conv2d1x113_sel_x_b;
    wire [32:0] i_unnamed_conv2d1x121_sel_x_b;
    wire [511:0] join_for_coalesced_delay_0_q;
    wire [31:0] sel_for_coalesced_delay_0_b;
    wire [31:0] sel_for_coalesced_delay_0_c;
    wire [31:0] sel_for_coalesced_delay_0_d;
    wire [31:0] sel_for_coalesced_delay_0_e;
    wire [31:0] sel_for_coalesced_delay_0_f;
    wire [31:0] sel_for_coalesced_delay_0_g;
    wire [31:0] sel_for_coalesced_delay_0_h;
    wire [31:0] sel_for_coalesced_delay_0_i;
    wire [31:0] sel_for_coalesced_delay_0_j;
    wire [31:0] sel_for_coalesced_delay_0_k;
    wire [31:0] sel_for_coalesced_delay_0_l;
    wire [31:0] sel_for_coalesced_delay_0_m;
    wire [31:0] sel_for_coalesced_delay_0_n;
    wire [31:0] sel_for_coalesced_delay_0_o;
    wire [31:0] sel_for_coalesced_delay_0_p;
    wire [31:0] sel_for_coalesced_delay_0_q;
    reg [511:0] coalesced_delay_0_0_q;
    wire [31:0] bubble_join_i_llvm_fpga_sync_buffer_i32_filter_size_sync_buffer4_conv2d1x115_q;
    wire [31:0] bubble_select_i_llvm_fpga_sync_buffer_i32_filter_size_sync_buffer4_conv2d1x115_b;
    wire [31:0] bubble_join_i_llvm_fpga_sync_buffer_i32_filter_size_sync_buffer5_conv2d1x118_q;
    wire [31:0] bubble_select_i_llvm_fpga_sync_buffer_i32_filter_size_sync_buffer5_conv2d1x118_b;
    wire [31:0] bubble_join_i_llvm_fpga_sync_buffer_i32_filter_size_sync_buffer_conv2d1x10_q;
    wire [31:0] bubble_select_i_llvm_fpga_sync_buffer_i32_filter_size_sync_buffer_conv2d1x10_b;
    wire [31:0] bubble_join_i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer2_conv2d1x17_q;
    wire [31:0] bubble_select_i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer2_conv2d1x17_b;
    wire [31:0] bubble_join_i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer3_conv2d1x110_q;
    wire [31:0] bubble_select_i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer3_conv2d1x110_b;
    wire [31:0] bubble_join_i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer_conv2d1x14_q;
    wire [31:0] bubble_select_i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer_conv2d1x14_b;
    wire [31:0] bubble_join_i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer_conv2d1x13_q;
    wire [31:0] bubble_select_i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer_conv2d1x13_b;
    wire [511:0] bubble_join_stall_entry_q;
    wire [31:0] bubble_select_stall_entry_b;
    wire [31:0] bubble_select_stall_entry_c;
    wire [31:0] bubble_select_stall_entry_d;
    wire [31:0] bubble_select_stall_entry_e;
    wire [31:0] bubble_select_stall_entry_f;
    wire [31:0] bubble_select_stall_entry_g;
    wire [31:0] bubble_select_stall_entry_h;
    wire [31:0] bubble_select_stall_entry_i;
    wire [31:0] bubble_select_stall_entry_j;
    wire [31:0] bubble_select_stall_entry_k;
    wire [31:0] bubble_select_stall_entry_l;
    wire [31:0] bubble_select_stall_entry_m;
    wire [31:0] bubble_select_stall_entry_n;
    wire [31:0] bubble_select_stall_entry_o;
    wire [31:0] bubble_select_stall_entry_p;
    wire [31:0] bubble_select_stall_entry_q;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i1_unnamed_conv2d1x12_conv2d1x125_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i1_unnamed_conv2d1x12_conv2d1x125_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i1_unnamed_conv2d1x12_conv2d1x125_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv2d1x11_conv2d1x124_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv2d1x11_conv2d1x124_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv2d1x11_conv2d1x124_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i33_unnamed_conv2d1x14_conv2d1x127_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i33_unnamed_conv2d1x14_conv2d1x127_and0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i33_unnamed_conv2d1x14_conv2d1x127_and1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i33_unnamed_conv2d1x14_conv2d1x127_and2;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i33_unnamed_conv2d1x14_conv2d1x127_and3;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i33_unnamed_conv2d1x14_conv2d1x127_and4;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i33_unnamed_conv2d1x14_conv2d1x127_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i33_unnamed_conv2d1x14_conv2d1x127_V0;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_i32_filter_size_sync_buffer4_conv2d1x115_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_i32_filter_size_sync_buffer4_conv2d1x115_backStall;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_i32_filter_size_sync_buffer4_conv2d1x115_V0;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_i32_filter_size_sync_buffer5_conv2d1x118_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_i32_filter_size_sync_buffer5_conv2d1x118_and0;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_i32_filter_size_sync_buffer5_conv2d1x118_backStall;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_i32_filter_size_sync_buffer5_conv2d1x118_V0;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_i32_filter_size_sync_buffer_conv2d1x10_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_i32_filter_size_sync_buffer_conv2d1x10_backStall;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_i32_filter_size_sync_buffer_conv2d1x10_V0;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer2_conv2d1x17_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer2_conv2d1x17_backStall;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer2_conv2d1x17_V0;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer3_conv2d1x110_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer3_conv2d1x110_and0;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer3_conv2d1x110_backStall;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer3_conv2d1x110_V0;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer_conv2d1x14_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer_conv2d1x14_backStall;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer_conv2d1x14_V0;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer_conv2d1x13_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer_conv2d1x13_backStall;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer_conv2d1x13_V0;
    reg [0:0] SE_i_unnamed_conv2d1x116_R_v_0;
    wire [0:0] SE_i_unnamed_conv2d1x116_v_s_0;
    wire [0:0] SE_i_unnamed_conv2d1x116_s_tv_0;
    wire [0:0] SE_i_unnamed_conv2d1x116_backEN;
    wire [0:0] SE_i_unnamed_conv2d1x116_backStall;
    wire [0:0] SE_i_unnamed_conv2d1x116_V0;
    reg [0:0] SE_i_unnamed_conv2d1x18_R_v_0;
    wire [0:0] SE_i_unnamed_conv2d1x18_v_s_0;
    wire [0:0] SE_i_unnamed_conv2d1x18_s_tv_0;
    wire [0:0] SE_i_unnamed_conv2d1x18_backEN;
    wire [0:0] SE_i_unnamed_conv2d1x18_backStall;
    wire [0:0] SE_i_unnamed_conv2d1x18_V0;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_wireStall;
    wire [0:0] SE_stall_entry_StallValid;
    wire [0:0] SE_stall_entry_toReg0;
    reg [0:0] SE_stall_entry_fromReg0;
    wire [0:0] SE_stall_entry_consumed0;
    wire [0:0] SE_stall_entry_toReg1;
    reg [0:0] SE_stall_entry_fromReg1;
    wire [0:0] SE_stall_entry_consumed1;
    wire [0:0] SE_stall_entry_toReg2;
    reg [0:0] SE_stall_entry_fromReg2;
    wire [0:0] SE_stall_entry_consumed2;
    wire [0:0] SE_stall_entry_toReg3;
    reg [0:0] SE_stall_entry_fromReg3;
    wire [0:0] SE_stall_entry_consumed3;
    wire [0:0] SE_stall_entry_toReg4;
    reg [0:0] SE_stall_entry_fromReg4;
    wire [0:0] SE_stall_entry_consumed4;
    wire [0:0] SE_stall_entry_or0;
    wire [0:0] SE_stall_entry_or1;
    wire [0:0] SE_stall_entry_or2;
    wire [0:0] SE_stall_entry_or3;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_stall_entry_V1;
    wire [0:0] SE_stall_entry_V2;
    wire [0:0] SE_stall_entry_V3;
    wire [0:0] SE_stall_entry_V4;
    reg [0:0] SE_coalesced_delay_0_0_R_v_0;
    reg [0:0] SE_coalesced_delay_0_0_R_v_1;
    reg [0:0] SE_coalesced_delay_0_0_R_v_2;
    reg [0:0] SE_coalesced_delay_0_0_R_v_3;
    wire [0:0] SE_coalesced_delay_0_0_v_s_0;
    wire [0:0] SE_coalesced_delay_0_0_s_tv_0;
    wire [0:0] SE_coalesced_delay_0_0_s_tv_1;
    wire [0:0] SE_coalesced_delay_0_0_s_tv_2;
    wire [0:0] SE_coalesced_delay_0_0_s_tv_3;
    wire [0:0] SE_coalesced_delay_0_0_backEN;
    wire [0:0] SE_coalesced_delay_0_0_or0;
    wire [0:0] SE_coalesced_delay_0_0_or1;
    wire [0:0] SE_coalesced_delay_0_0_or2;
    wire [0:0] SE_coalesced_delay_0_0_backStall;
    wire [0:0] SE_coalesced_delay_0_0_V0;
    wire [0:0] SE_coalesced_delay_0_0_V1;
    wire [0:0] SE_coalesced_delay_0_0_V2;
    wire [0:0] SE_coalesced_delay_0_0_V3;
    reg [0:0] bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_conv2d1x12_conv2d1x125_1_reg_R_v_0;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_conv2d1x12_conv2d1x125_1_reg_v_s_0;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_conv2d1x12_conv2d1x125_1_reg_s_tv_0;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_conv2d1x12_conv2d1x125_1_reg_backEN;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_conv2d1x12_conv2d1x125_1_reg_backStall;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_conv2d1x12_conv2d1x125_1_reg_V0;
    reg [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv2d1x11_conv2d1x124_1_reg_R_v_0;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv2d1x11_conv2d1x124_1_reg_v_s_0;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv2d1x11_conv2d1x124_1_reg_s_tv_0;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv2d1x11_conv2d1x124_1_reg_backEN;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv2d1x11_conv2d1x124_1_reg_backStall;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv2d1x11_conv2d1x124_1_reg_V0;


    // c_i33_132(CONSTANT,9)
    assign c_i33_132_q = $unsigned(33'b111111111111111111111111111111111);

    // c_i32_131(CONSTANT,8)
    assign c_i32_131_q = $unsigned(32'b11111111111111111111111111111111);

    // bubble_join_i_llvm_fpga_sync_buffer_i32_filter_size_sync_buffer5_conv2d1x118(BITJOIN,129)
    assign bubble_join_i_llvm_fpga_sync_buffer_i32_filter_size_sync_buffer5_conv2d1x118_q = i_llvm_fpga_sync_buffer_i32_filter_size_sync_buffer5_conv2d1x118_out_buffer_out;

    // bubble_select_i_llvm_fpga_sync_buffer_i32_filter_size_sync_buffer5_conv2d1x118(BITSELECT,130)
    assign bubble_select_i_llvm_fpga_sync_buffer_i32_filter_size_sync_buffer5_conv2d1x118_b = $unsigned(bubble_join_i_llvm_fpga_sync_buffer_i32_filter_size_sync_buffer5_conv2d1x118_q[31:0]);

    // c_i32_130(CONSTANT,7)
    assign c_i32_130_q = $unsigned(32'b00000000000000000000000000000001);

    // SE_out_i_llvm_fpga_sync_buffer_i32_filter_size_sync_buffer4_conv2d1x115(STALLENABLE,169)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_sync_buffer_i32_filter_size_sync_buffer4_conv2d1x115_V0 = SE_out_i_llvm_fpga_sync_buffer_i32_filter_size_sync_buffer4_conv2d1x115_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_sync_buffer_i32_filter_size_sync_buffer4_conv2d1x115_backStall = SE_i_unnamed_conv2d1x116_backStall | ~ (SE_out_i_llvm_fpga_sync_buffer_i32_filter_size_sync_buffer4_conv2d1x115_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_sync_buffer_i32_filter_size_sync_buffer4_conv2d1x115_wireValid = i_llvm_fpga_sync_buffer_i32_filter_size_sync_buffer4_conv2d1x115_out_valid_out;

    // i_llvm_fpga_sync_buffer_i32_filter_size_sync_buffer4_conv2d1x115(BLACKBOX,19)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    conv2d1x1_i_llvm_fpga_sync_buffer_i32_filter_size_sync_buffer4_0 thei_llvm_fpga_sync_buffer_i32_filter_size_sync_buffer4_conv2d1x115 (
        .in_buffer_in(in_filter_size),
        .in_i_dependence(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_sync_buffer_i32_filter_size_sync_buffer4_conv2d1x115_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .out_buffer_out(i_llvm_fpga_sync_buffer_i32_filter_size_sync_buffer4_conv2d1x115_out_buffer_out),
        .out_stall_out(i_llvm_fpga_sync_buffer_i32_filter_size_sync_buffer4_conv2d1x115_out_stall_out),
        .out_valid_out(i_llvm_fpga_sync_buffer_i32_filter_size_sync_buffer4_conv2d1x115_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_sync_buffer_i32_filter_size_sync_buffer4_conv2d1x115(BITJOIN,126)
    assign bubble_join_i_llvm_fpga_sync_buffer_i32_filter_size_sync_buffer4_conv2d1x115_q = i_llvm_fpga_sync_buffer_i32_filter_size_sync_buffer4_conv2d1x115_out_buffer_out;

    // bubble_select_i_llvm_fpga_sync_buffer_i32_filter_size_sync_buffer4_conv2d1x115(BITSELECT,127)
    assign bubble_select_i_llvm_fpga_sync_buffer_i32_filter_size_sync_buffer4_conv2d1x115_b = $unsigned(bubble_join_i_llvm_fpga_sync_buffer_i32_filter_size_sync_buffer4_conv2d1x115_q[31:0]);

    // i_unnamed_conv2d1x116(COMPARE,34)@0 + 1
    assign i_unnamed_conv2d1x116_a = $unsigned({{2{c_i32_130_q[31]}}, c_i32_130_q});
    assign i_unnamed_conv2d1x116_b = $unsigned({{2{bubble_select_i_llvm_fpga_sync_buffer_i32_filter_size_sync_buffer4_conv2d1x115_b[31]}}, bubble_select_i_llvm_fpga_sync_buffer_i32_filter_size_sync_buffer4_conv2d1x115_b});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_unnamed_conv2d1x116_o <= 34'b0;
        end
        else if (SE_i_unnamed_conv2d1x116_backEN == 1'b1)
        begin
            i_unnamed_conv2d1x116_o <= $unsigned($signed(i_unnamed_conv2d1x116_a) - $signed(i_unnamed_conv2d1x116_b));
        end
    end
    assign i_unnamed_conv2d1x116_c[0] = i_unnamed_conv2d1x116_o[33];

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // i_smax300_conv2d1x119(MUX,26)@1
    assign i_smax300_conv2d1x119_s = i_unnamed_conv2d1x116_c;
    always @(i_smax300_conv2d1x119_s or c_i32_130_q or bubble_select_i_llvm_fpga_sync_buffer_i32_filter_size_sync_buffer5_conv2d1x118_b)
    begin
        unique case (i_smax300_conv2d1x119_s)
            1'b0 : i_smax300_conv2d1x119_q = c_i32_130_q;
            1'b1 : i_smax300_conv2d1x119_q = bubble_select_i_llvm_fpga_sync_buffer_i32_filter_size_sync_buffer5_conv2d1x118_b;
            default : i_smax300_conv2d1x119_q = 32'b0;
        endcase
    end

    // i_unnamed_conv2d1x120(ADD,35)@1
    assign i_unnamed_conv2d1x120_a = {1'b0, i_smax300_conv2d1x119_q};
    assign i_unnamed_conv2d1x120_b = {1'b0, c_i32_131_q};
    assign i_unnamed_conv2d1x120_o = $unsigned(i_unnamed_conv2d1x120_a) + $unsigned(i_unnamed_conv2d1x120_b);
    assign i_unnamed_conv2d1x120_q = i_unnamed_conv2d1x120_o[32:0];

    // bgTrunc_i_unnamed_conv2d1x120_sel_x(BITSELECT,81)@1
    assign bgTrunc_i_unnamed_conv2d1x120_sel_x_b = i_unnamed_conv2d1x120_q[31:0];

    // i_unnamed_conv2d1x121_sel_x(BITSELECT,93)@1
    assign i_unnamed_conv2d1x121_sel_x_b = {1'b0, bgTrunc_i_unnamed_conv2d1x120_sel_x_b[31:0]};

    // i_unnamed_conv2d1x121_vt_select_31(BITSELECT,39)@1
    assign i_unnamed_conv2d1x121_vt_select_31_b = i_unnamed_conv2d1x121_sel_x_b[31:0];

    // i_unnamed_conv2d1x121_vt_join(BITJOIN,38)@1
    assign i_unnamed_conv2d1x121_vt_join_q = {GND_q, i_unnamed_conv2d1x121_vt_select_31_b};

    // i_unnamed_conv2d1x122(ADD,40)@1
    assign i_unnamed_conv2d1x122_a = {1'b0, i_unnamed_conv2d1x121_vt_join_q};
    assign i_unnamed_conv2d1x122_b = {1'b0, c_i33_132_q};
    assign i_unnamed_conv2d1x122_o = $unsigned(i_unnamed_conv2d1x122_a) + $unsigned(i_unnamed_conv2d1x122_b);
    assign i_unnamed_conv2d1x122_q = i_unnamed_conv2d1x122_o[33:0];

    // bgTrunc_i_unnamed_conv2d1x122_sel_x(BITSELECT,82)@1
    assign bgTrunc_i_unnamed_conv2d1x122_sel_x_b = i_unnamed_conv2d1x122_q[32:0];

    // i_llvm_fpga_ffwd_source_i33_unnamed_conv2d1x14_conv2d1x127(BLACKBOX,18)@1
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_4_0@20000000
    // out out_stall_out@20000000
    conv2d1x1_i_llvm_fpga_ffwd_source_i33_unnamed_4_conv2d1x10 thei_llvm_fpga_ffwd_source_i33_unnamed_conv2d1x14_conv2d1x127 (
        .in_predicate_in(GND_q),
        .in_src_data_in_4_0(bgTrunc_i_unnamed_conv2d1x122_sel_x_b),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_source_i33_unnamed_conv2d1x14_conv2d1x127_backStall),
        .in_valid_in(SE_out_i_llvm_fpga_sync_buffer_i32_filter_size_sync_buffer5_conv2d1x118_V0),
        .out_intel_reserved_ffwd_4_0(i_llvm_fpga_ffwd_source_i33_unnamed_conv2d1x14_conv2d1x127_out_intel_reserved_ffwd_4_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i33_unnamed_conv2d1x14_conv2d1x127_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i33_unnamed_conv2d1x14_conv2d1x127_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_i_unnamed_conv2d1x116(STALLENABLE,188)
    // Valid signal propagation
    assign SE_i_unnamed_conv2d1x116_V0 = SE_i_unnamed_conv2d1x116_R_v_0;
    // Stall signal propagation
    assign SE_i_unnamed_conv2d1x116_s_tv_0 = SE_out_i_llvm_fpga_sync_buffer_i32_filter_size_sync_buffer5_conv2d1x118_backStall & SE_i_unnamed_conv2d1x116_R_v_0;
    // Backward Enable generation
    assign SE_i_unnamed_conv2d1x116_backEN = ~ (SE_i_unnamed_conv2d1x116_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_unnamed_conv2d1x116_v_s_0 = SE_i_unnamed_conv2d1x116_backEN & SE_out_i_llvm_fpga_sync_buffer_i32_filter_size_sync_buffer4_conv2d1x115_V0;
    // Backward Stall generation
    assign SE_i_unnamed_conv2d1x116_backStall = ~ (SE_i_unnamed_conv2d1x116_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_unnamed_conv2d1x116_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_i_unnamed_conv2d1x116_backEN == 1'b0)
            begin
                SE_i_unnamed_conv2d1x116_R_v_0 <= SE_i_unnamed_conv2d1x116_R_v_0 & SE_i_unnamed_conv2d1x116_s_tv_0;
            end
            else
            begin
                SE_i_unnamed_conv2d1x116_R_v_0 <= SE_i_unnamed_conv2d1x116_v_s_0;
            end

        end
    end

    // SE_out_i_llvm_fpga_sync_buffer_i32_filter_size_sync_buffer5_conv2d1x118(STALLENABLE,171)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_sync_buffer_i32_filter_size_sync_buffer5_conv2d1x118_V0 = SE_out_i_llvm_fpga_sync_buffer_i32_filter_size_sync_buffer5_conv2d1x118_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_sync_buffer_i32_filter_size_sync_buffer5_conv2d1x118_backStall = i_llvm_fpga_ffwd_source_i33_unnamed_conv2d1x14_conv2d1x127_out_stall_out | ~ (SE_out_i_llvm_fpga_sync_buffer_i32_filter_size_sync_buffer5_conv2d1x118_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_sync_buffer_i32_filter_size_sync_buffer5_conv2d1x118_and0 = i_llvm_fpga_sync_buffer_i32_filter_size_sync_buffer5_conv2d1x118_out_valid_out;
    assign SE_out_i_llvm_fpga_sync_buffer_i32_filter_size_sync_buffer5_conv2d1x118_wireValid = SE_i_unnamed_conv2d1x116_V0 & SE_out_i_llvm_fpga_sync_buffer_i32_filter_size_sync_buffer5_conv2d1x118_and0;

    // i_llvm_fpga_sync_buffer_i32_filter_size_sync_buffer5_conv2d1x118(BLACKBOX,20)@1
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    conv2d1x1_i_llvm_fpga_sync_buffer_i32_filter_size_sync_buffer5_0 thei_llvm_fpga_sync_buffer_i32_filter_size_sync_buffer5_conv2d1x118 (
        .in_buffer_in(in_filter_size),
        .in_i_dependence(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_sync_buffer_i32_filter_size_sync_buffer5_conv2d1x118_backStall),
        .in_valid_in(SE_coalesced_delay_0_0_V3),
        .out_buffer_out(i_llvm_fpga_sync_buffer_i32_filter_size_sync_buffer5_conv2d1x118_out_buffer_out),
        .out_stall_out(i_llvm_fpga_sync_buffer_i32_filter_size_sync_buffer5_conv2d1x118_out_stall_out),
        .out_valid_out(i_llvm_fpga_sync_buffer_i32_filter_size_sync_buffer5_conv2d1x118_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer3_conv2d1x110(BITJOIN,138)
    assign bubble_join_i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer3_conv2d1x110_q = i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer3_conv2d1x110_out_buffer_out;

    // bubble_select_i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer3_conv2d1x110(BITSELECT,139)
    assign bubble_select_i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer3_conv2d1x110_b = $unsigned(bubble_join_i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer3_conv2d1x110_q[31:0]);

    // SE_out_i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer2_conv2d1x17(STALLENABLE,175)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer2_conv2d1x17_V0 = SE_out_i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer2_conv2d1x17_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer2_conv2d1x17_backStall = SE_i_unnamed_conv2d1x18_backStall | ~ (SE_out_i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer2_conv2d1x17_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer2_conv2d1x17_wireValid = i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer2_conv2d1x17_out_valid_out;

    // i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer2_conv2d1x17(BLACKBOX,22)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    conv2d1x1_i_llvm_fpga_sync_buffer_i32_in0000nnels_sync_buffer2_0 thei_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer2_conv2d1x17 (
        .in_buffer_in(in_input_channels),
        .in_i_dependence(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer2_conv2d1x17_backStall),
        .in_valid_in(SE_stall_entry_V1),
        .out_buffer_out(i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer2_conv2d1x17_out_buffer_out),
        .out_stall_out(i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer2_conv2d1x17_out_stall_out),
        .out_valid_out(i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer2_conv2d1x17_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer2_conv2d1x17(BITJOIN,135)
    assign bubble_join_i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer2_conv2d1x17_q = i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer2_conv2d1x17_out_buffer_out;

    // bubble_select_i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer2_conv2d1x17(BITSELECT,136)
    assign bubble_select_i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer2_conv2d1x17_b = $unsigned(bubble_join_i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer2_conv2d1x17_q[31:0]);

    // i_unnamed_conv2d1x18(COMPARE,41)@0 + 1
    assign i_unnamed_conv2d1x18_a = $unsigned({{2{c_i32_130_q[31]}}, c_i32_130_q});
    assign i_unnamed_conv2d1x18_b = $unsigned({{2{bubble_select_i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer2_conv2d1x17_b[31]}}, bubble_select_i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer2_conv2d1x17_b});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_unnamed_conv2d1x18_o <= 34'b0;
        end
        else if (SE_i_unnamed_conv2d1x18_backEN == 1'b1)
        begin
            i_unnamed_conv2d1x18_o <= $unsigned($signed(i_unnamed_conv2d1x18_a) - $signed(i_unnamed_conv2d1x18_b));
        end
    end
    assign i_unnamed_conv2d1x18_c[0] = i_unnamed_conv2d1x18_o[33];

    // i_smax_conv2d1x111(MUX,27)@1
    assign i_smax_conv2d1x111_s = i_unnamed_conv2d1x18_c;
    always @(i_smax_conv2d1x111_s or c_i32_130_q or bubble_select_i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer3_conv2d1x110_b)
    begin
        unique case (i_smax_conv2d1x111_s)
            1'b0 : i_smax_conv2d1x111_q = c_i32_130_q;
            1'b1 : i_smax_conv2d1x111_q = bubble_select_i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer3_conv2d1x110_b;
            default : i_smax_conv2d1x111_q = 32'b0;
        endcase
    end

    // i_unnamed_conv2d1x112(ADD,28)@1
    assign i_unnamed_conv2d1x112_a = {1'b0, i_smax_conv2d1x111_q};
    assign i_unnamed_conv2d1x112_b = {1'b0, c_i32_131_q};
    assign i_unnamed_conv2d1x112_o = $unsigned(i_unnamed_conv2d1x112_a) + $unsigned(i_unnamed_conv2d1x112_b);
    assign i_unnamed_conv2d1x112_q = i_unnamed_conv2d1x112_o[32:0];

    // bgTrunc_i_unnamed_conv2d1x112_sel_x(BITSELECT,79)@1
    assign bgTrunc_i_unnamed_conv2d1x112_sel_x_b = i_unnamed_conv2d1x112_q[31:0];

    // i_unnamed_conv2d1x113_sel_x(BITSELECT,92)@1
    assign i_unnamed_conv2d1x113_sel_x_b = {1'b0, bgTrunc_i_unnamed_conv2d1x112_sel_x_b[31:0]};

    // i_unnamed_conv2d1x113_vt_select_31(BITSELECT,32)@1
    assign i_unnamed_conv2d1x113_vt_select_31_b = i_unnamed_conv2d1x113_sel_x_b[31:0];

    // i_unnamed_conv2d1x113_vt_join(BITJOIN,31)@1
    assign i_unnamed_conv2d1x113_vt_join_q = {GND_q, i_unnamed_conv2d1x113_vt_select_31_b};

    // i_unnamed_conv2d1x114(ADD,33)@1
    assign i_unnamed_conv2d1x114_a = {1'b0, i_unnamed_conv2d1x113_vt_join_q};
    assign i_unnamed_conv2d1x114_b = {1'b0, c_i33_132_q};
    assign i_unnamed_conv2d1x114_o = $unsigned(i_unnamed_conv2d1x114_a) + $unsigned(i_unnamed_conv2d1x114_b);
    assign i_unnamed_conv2d1x114_q = i_unnamed_conv2d1x114_o[33:0];

    // bgTrunc_i_unnamed_conv2d1x114_sel_x(BITSELECT,80)@1
    assign bgTrunc_i_unnamed_conv2d1x114_sel_x_b = i_unnamed_conv2d1x114_q[32:0];

    // i_llvm_fpga_ffwd_source_i33_unnamed_conv2d1x13_conv2d1x126(BLACKBOX,17)@1
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_3_0@20000000
    // out out_stall_out@20000000
    conv2d1x1_i_llvm_fpga_ffwd_source_i33_unnamed_3_conv2d1x10 thei_llvm_fpga_ffwd_source_i33_unnamed_conv2d1x13_conv2d1x126 (
        .in_predicate_in(GND_q),
        .in_src_data_in_3_0(bgTrunc_i_unnamed_conv2d1x114_sel_x_b),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_source_i33_unnamed_conv2d1x14_conv2d1x127_backStall),
        .in_valid_in(SE_out_i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer3_conv2d1x110_V0),
        .out_intel_reserved_ffwd_3_0(i_llvm_fpga_ffwd_source_i33_unnamed_conv2d1x13_conv2d1x126_out_intel_reserved_ffwd_3_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i33_unnamed_conv2d1x13_conv2d1x126_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i33_unnamed_conv2d1x13_conv2d1x126_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_i_unnamed_conv2d1x18(STALLENABLE,193)
    // Valid signal propagation
    assign SE_i_unnamed_conv2d1x18_V0 = SE_i_unnamed_conv2d1x18_R_v_0;
    // Stall signal propagation
    assign SE_i_unnamed_conv2d1x18_s_tv_0 = SE_out_i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer3_conv2d1x110_backStall & SE_i_unnamed_conv2d1x18_R_v_0;
    // Backward Enable generation
    assign SE_i_unnamed_conv2d1x18_backEN = ~ (SE_i_unnamed_conv2d1x18_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_unnamed_conv2d1x18_v_s_0 = SE_i_unnamed_conv2d1x18_backEN & SE_out_i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer2_conv2d1x17_V0;
    // Backward Stall generation
    assign SE_i_unnamed_conv2d1x18_backStall = ~ (SE_i_unnamed_conv2d1x18_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_unnamed_conv2d1x18_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_i_unnamed_conv2d1x18_backEN == 1'b0)
            begin
                SE_i_unnamed_conv2d1x18_R_v_0 <= SE_i_unnamed_conv2d1x18_R_v_0 & SE_i_unnamed_conv2d1x18_s_tv_0;
            end
            else
            begin
                SE_i_unnamed_conv2d1x18_R_v_0 <= SE_i_unnamed_conv2d1x18_v_s_0;
            end

        end
    end

    // SE_out_i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer3_conv2d1x110(STALLENABLE,177)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer3_conv2d1x110_V0 = SE_out_i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer3_conv2d1x110_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer3_conv2d1x110_backStall = i_llvm_fpga_ffwd_source_i33_unnamed_conv2d1x13_conv2d1x126_out_stall_out | ~ (SE_out_i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer3_conv2d1x110_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer3_conv2d1x110_and0 = i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer3_conv2d1x110_out_valid_out;
    assign SE_out_i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer3_conv2d1x110_wireValid = SE_i_unnamed_conv2d1x18_V0 & SE_out_i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer3_conv2d1x110_and0;

    // i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer3_conv2d1x110(BLACKBOX,23)@1
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    conv2d1x1_i_llvm_fpga_sync_buffer_i32_in0000nnels_sync_buffer3_0 thei_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer3_conv2d1x110 (
        .in_buffer_in(in_input_channels),
        .in_i_dependence(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer3_conv2d1x110_backStall),
        .in_valid_in(SE_coalesced_delay_0_0_V2),
        .out_buffer_out(i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer3_conv2d1x110_out_buffer_out),
        .out_stall_out(i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer3_conv2d1x110_out_stall_out),
        .out_valid_out(i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer3_conv2d1x110_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv2d1x11_conv2d1x124_1_reg(STALLENABLE,262)
    // Valid signal propagation
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv2d1x11_conv2d1x124_1_reg_V0 = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv2d1x11_conv2d1x124_1_reg_R_v_0;
    // Stall signal propagation
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv2d1x11_conv2d1x124_1_reg_s_tv_0 = SE_out_i_llvm_fpga_ffwd_source_i33_unnamed_conv2d1x14_conv2d1x127_backStall & bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv2d1x11_conv2d1x124_1_reg_R_v_0;
    // Backward Enable generation
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv2d1x11_conv2d1x124_1_reg_backEN = ~ (bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv2d1x11_conv2d1x124_1_reg_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv2d1x11_conv2d1x124_1_reg_v_s_0 = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv2d1x11_conv2d1x124_1_reg_backEN & SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv2d1x11_conv2d1x124_V0;
    // Backward Stall generation
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv2d1x11_conv2d1x124_1_reg_backStall = ~ (bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv2d1x11_conv2d1x124_1_reg_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv2d1x11_conv2d1x124_1_reg_R_v_0 <= 1'b0;
        end
        else
        begin
            if (bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv2d1x11_conv2d1x124_1_reg_backEN == 1'b0)
            begin
                bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv2d1x11_conv2d1x124_1_reg_R_v_0 <= bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv2d1x11_conv2d1x124_1_reg_R_v_0 & bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv2d1x11_conv2d1x124_1_reg_s_tv_0;
            end
            else
            begin
                bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv2d1x11_conv2d1x124_1_reg_R_v_0 <= bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv2d1x11_conv2d1x124_1_reg_v_s_0;
            end

        end
    end

    // SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv2d1x11_conv2d1x124(STALLENABLE,163)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv2d1x11_conv2d1x124_V0 = SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv2d1x11_conv2d1x124_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv2d1x11_conv2d1x124_backStall = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv2d1x11_conv2d1x124_1_reg_backStall | ~ (SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv2d1x11_conv2d1x124_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv2d1x11_conv2d1x124_wireValid = i_llvm_fpga_ffwd_source_i32_unnamed_conv2d1x11_conv2d1x124_out_valid_out;

    // bubble_join_i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer_conv2d1x13(BITJOIN,144)
    assign bubble_join_i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer_conv2d1x13_q = i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer_conv2d1x13_out_buffer_out;

    // bubble_select_i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer_conv2d1x13(BITSELECT,145)
    assign bubble_select_i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer_conv2d1x13_b = $unsigned(bubble_join_i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer_conv2d1x13_q[31:0]);

    // i_llvm_fpga_ffwd_source_i32_unnamed_conv2d1x11_conv2d1x124(BLACKBOX,16)@0
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_1_0@20000000
    // out out_stall_out@20000000
    conv2d1x1_i_llvm_fpga_ffwd_source_i32_unnamed_1_conv2d1x10 thei_llvm_fpga_ffwd_source_i32_unnamed_conv2d1x11_conv2d1x124 (
        .in_predicate_in(GND_q),
        .in_src_data_in_1_0(bubble_select_i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer_conv2d1x13_b),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv2d1x11_conv2d1x124_backStall),
        .in_valid_in(SE_out_i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer_conv2d1x13_V0),
        .out_intel_reserved_ffwd_1_0(i_llvm_fpga_ffwd_source_i32_unnamed_conv2d1x11_conv2d1x124_out_intel_reserved_ffwd_1_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i32_unnamed_conv2d1x11_conv2d1x124_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i32_unnamed_conv2d1x11_conv2d1x124_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer_conv2d1x13(STALLENABLE,181)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer_conv2d1x13_V0 = SE_out_i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer_conv2d1x13_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer_conv2d1x13_backStall = i_llvm_fpga_ffwd_source_i32_unnamed_conv2d1x11_conv2d1x124_out_stall_out | ~ (SE_out_i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer_conv2d1x13_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer_conv2d1x13_wireValid = i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer_conv2d1x13_out_valid_out;

    // i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer_conv2d1x13(BLACKBOX,25)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    conv2d1x1_i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer_0 thei_llvm_fpga_sync_buffer_i32_input_size_sync_buffer_conv2d1x13 (
        .in_buffer_in(in_input_size),
        .in_i_dependence(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer_conv2d1x13_backStall),
        .in_valid_in(SE_stall_entry_V3),
        .out_buffer_out(i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer_conv2d1x13_out_buffer_out),
        .out_stall_out(i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer_conv2d1x13_out_stall_out),
        .out_valid_out(i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer_conv2d1x13_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_conv2d1x12_conv2d1x125_1_reg(STALLENABLE,261)
    // Valid signal propagation
    assign bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_conv2d1x12_conv2d1x125_1_reg_V0 = bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_conv2d1x12_conv2d1x125_1_reg_R_v_0;
    // Stall signal propagation
    assign bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_conv2d1x12_conv2d1x125_1_reg_s_tv_0 = SE_out_i_llvm_fpga_ffwd_source_i33_unnamed_conv2d1x14_conv2d1x127_backStall & bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_conv2d1x12_conv2d1x125_1_reg_R_v_0;
    // Backward Enable generation
    assign bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_conv2d1x12_conv2d1x125_1_reg_backEN = ~ (bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_conv2d1x12_conv2d1x125_1_reg_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_conv2d1x12_conv2d1x125_1_reg_v_s_0 = bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_conv2d1x12_conv2d1x125_1_reg_backEN & SE_out_i_llvm_fpga_ffwd_source_i1_unnamed_conv2d1x12_conv2d1x125_V0;
    // Backward Stall generation
    assign bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_conv2d1x12_conv2d1x125_1_reg_backStall = ~ (bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_conv2d1x12_conv2d1x125_1_reg_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_conv2d1x12_conv2d1x125_1_reg_R_v_0 <= 1'b0;
        end
        else
        begin
            if (bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_conv2d1x12_conv2d1x125_1_reg_backEN == 1'b0)
            begin
                bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_conv2d1x12_conv2d1x125_1_reg_R_v_0 <= bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_conv2d1x12_conv2d1x125_1_reg_R_v_0 & bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_conv2d1x12_conv2d1x125_1_reg_s_tv_0;
            end
            else
            begin
                bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_conv2d1x12_conv2d1x125_1_reg_R_v_0 <= bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_conv2d1x12_conv2d1x125_1_reg_v_s_0;
            end

        end
    end

    // SE_out_i_llvm_fpga_ffwd_source_i1_unnamed_conv2d1x12_conv2d1x125(STALLENABLE,161)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_source_i1_unnamed_conv2d1x12_conv2d1x125_V0 = SE_out_i_llvm_fpga_ffwd_source_i1_unnamed_conv2d1x12_conv2d1x125_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_source_i1_unnamed_conv2d1x12_conv2d1x125_backStall = bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_conv2d1x12_conv2d1x125_1_reg_backStall | ~ (SE_out_i_llvm_fpga_ffwd_source_i1_unnamed_conv2d1x12_conv2d1x125_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_source_i1_unnamed_conv2d1x12_conv2d1x125_wireValid = i_llvm_fpga_ffwd_source_i1_unnamed_conv2d1x12_conv2d1x125_out_valid_out;

    // bubble_join_i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer_conv2d1x14(BITJOIN,141)
    assign bubble_join_i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer_conv2d1x14_q = i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer_conv2d1x14_out_buffer_out;

    // bubble_select_i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer_conv2d1x14(BITSELECT,142)
    assign bubble_select_i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer_conv2d1x14_b = $unsigned(bubble_join_i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer_conv2d1x14_q[31:0]);

    // c_i32_029_recast_x(CONSTANT,83)
    assign c_i32_029_recast_x_q = $unsigned(32'b00000000000000000000000000000000);

    // i_cmp1262_conv2d1x15(COMPARE,12)@0
    assign i_cmp1262_conv2d1x15_a = $unsigned({{2{c_i32_029_recast_x_q[31]}}, c_i32_029_recast_x_q});
    assign i_cmp1262_conv2d1x15_b = $unsigned({{2{bubble_select_i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer_conv2d1x14_b[31]}}, bubble_select_i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer_conv2d1x14_b});
    assign i_cmp1262_conv2d1x15_o = $unsigned($signed(i_cmp1262_conv2d1x15_a) - $signed(i_cmp1262_conv2d1x15_b));
    assign i_cmp1262_conv2d1x15_c[0] = i_cmp1262_conv2d1x15_o[33];

    // i_llvm_fpga_ffwd_source_i1_unnamed_conv2d1x12_conv2d1x125(BLACKBOX,15)@0
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_2_0@20000000
    // out out_stall_out@20000000
    conv2d1x1_i_llvm_fpga_ffwd_source_i1_unnamed_2_conv2d1x10 thei_llvm_fpga_ffwd_source_i1_unnamed_conv2d1x12_conv2d1x125 (
        .in_predicate_in(GND_q),
        .in_src_data_in_2_0(i_cmp1262_conv2d1x15_c),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_source_i1_unnamed_conv2d1x12_conv2d1x125_backStall),
        .in_valid_in(SE_out_i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer_conv2d1x14_V0),
        .out_intel_reserved_ffwd_2_0(i_llvm_fpga_ffwd_source_i1_unnamed_conv2d1x12_conv2d1x125_out_intel_reserved_ffwd_2_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i1_unnamed_conv2d1x12_conv2d1x125_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i1_unnamed_conv2d1x12_conv2d1x125_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer_conv2d1x14(STALLENABLE,179)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer_conv2d1x14_V0 = SE_out_i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer_conv2d1x14_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer_conv2d1x14_backStall = i_llvm_fpga_ffwd_source_i1_unnamed_conv2d1x12_conv2d1x125_out_stall_out | ~ (SE_out_i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer_conv2d1x14_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer_conv2d1x14_wireValid = i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer_conv2d1x14_out_valid_out;

    // i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer_conv2d1x14(BLACKBOX,24)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    conv2d1x1_i_llvm_fpga_sync_buffer_i32_in0000annels_sync_buffer_0 thei_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer_conv2d1x14 (
        .in_buffer_in(in_input_channels),
        .in_i_dependence(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer_conv2d1x14_backStall),
        .in_valid_in(SE_stall_entry_V2),
        .out_buffer_out(i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer_conv2d1x14_out_buffer_out),
        .out_stall_out(i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer_conv2d1x14_out_stall_out),
        .out_valid_out(i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer_conv2d1x14_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_stall_entry(STALLENABLE,194)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_stall_entry_fromReg0 <= '0;
            SE_stall_entry_fromReg1 <= '0;
            SE_stall_entry_fromReg2 <= '0;
            SE_stall_entry_fromReg3 <= '0;
            SE_stall_entry_fromReg4 <= '0;
        end
        else
        begin
            // Successor 0
            SE_stall_entry_fromReg0 <= SE_stall_entry_toReg0;
            // Successor 1
            SE_stall_entry_fromReg1 <= SE_stall_entry_toReg1;
            // Successor 2
            SE_stall_entry_fromReg2 <= SE_stall_entry_toReg2;
            // Successor 3
            SE_stall_entry_fromReg3 <= SE_stall_entry_toReg3;
            // Successor 4
            SE_stall_entry_fromReg4 <= SE_stall_entry_toReg4;
        end
    end
    // Input Stall processing
    assign SE_stall_entry_consumed0 = (~ (i_llvm_fpga_sync_buffer_i32_filter_size_sync_buffer4_conv2d1x115_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg0;
    assign SE_stall_entry_consumed1 = (~ (i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer2_conv2d1x17_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg1;
    assign SE_stall_entry_consumed2 = (~ (i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer_conv2d1x14_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg2;
    assign SE_stall_entry_consumed3 = (~ (i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer_conv2d1x13_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg3;
    assign SE_stall_entry_consumed4 = (~ (SE_coalesced_delay_0_0_backStall) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg4;
    // Consuming
    assign SE_stall_entry_StallValid = SE_stall_entry_backStall & SE_stall_entry_wireValid;
    assign SE_stall_entry_toReg0 = SE_stall_entry_StallValid & SE_stall_entry_consumed0;
    assign SE_stall_entry_toReg1 = SE_stall_entry_StallValid & SE_stall_entry_consumed1;
    assign SE_stall_entry_toReg2 = SE_stall_entry_StallValid & SE_stall_entry_consumed2;
    assign SE_stall_entry_toReg3 = SE_stall_entry_StallValid & SE_stall_entry_consumed3;
    assign SE_stall_entry_toReg4 = SE_stall_entry_StallValid & SE_stall_entry_consumed4;
    // Backward Stall generation
    assign SE_stall_entry_or0 = SE_stall_entry_consumed0;
    assign SE_stall_entry_or1 = SE_stall_entry_consumed1 & SE_stall_entry_or0;
    assign SE_stall_entry_or2 = SE_stall_entry_consumed2 & SE_stall_entry_or1;
    assign SE_stall_entry_or3 = SE_stall_entry_consumed3 & SE_stall_entry_or2;
    assign SE_stall_entry_wireStall = ~ (SE_stall_entry_consumed4 & SE_stall_entry_or3);
    assign SE_stall_entry_backStall = SE_stall_entry_wireStall;
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg0);
    assign SE_stall_entry_V1 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg1);
    assign SE_stall_entry_V2 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg2);
    assign SE_stall_entry_V3 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg3);
    assign SE_stall_entry_V4 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg4);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // SE_coalesced_delay_0_0(STALLENABLE,204)
    // Valid signal propagation
    assign SE_coalesced_delay_0_0_V0 = SE_coalesced_delay_0_0_R_v_0;
    assign SE_coalesced_delay_0_0_V1 = SE_coalesced_delay_0_0_R_v_1;
    assign SE_coalesced_delay_0_0_V2 = SE_coalesced_delay_0_0_R_v_2;
    assign SE_coalesced_delay_0_0_V3 = SE_coalesced_delay_0_0_R_v_3;
    // Stall signal propagation
    assign SE_coalesced_delay_0_0_s_tv_0 = SE_out_i_llvm_fpga_ffwd_source_i33_unnamed_conv2d1x14_conv2d1x127_backStall & SE_coalesced_delay_0_0_R_v_0;
    assign SE_coalesced_delay_0_0_s_tv_1 = i_llvm_fpga_sync_buffer_i32_filter_size_sync_buffer_conv2d1x10_out_stall_out & SE_coalesced_delay_0_0_R_v_1;
    assign SE_coalesced_delay_0_0_s_tv_2 = i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer3_conv2d1x110_out_stall_out & SE_coalesced_delay_0_0_R_v_2;
    assign SE_coalesced_delay_0_0_s_tv_3 = i_llvm_fpga_sync_buffer_i32_filter_size_sync_buffer5_conv2d1x118_out_stall_out & SE_coalesced_delay_0_0_R_v_3;
    // Backward Enable generation
    assign SE_coalesced_delay_0_0_or0 = SE_coalesced_delay_0_0_s_tv_0;
    assign SE_coalesced_delay_0_0_or1 = SE_coalesced_delay_0_0_s_tv_1 | SE_coalesced_delay_0_0_or0;
    assign SE_coalesced_delay_0_0_or2 = SE_coalesced_delay_0_0_s_tv_2 | SE_coalesced_delay_0_0_or1;
    assign SE_coalesced_delay_0_0_backEN = ~ (SE_coalesced_delay_0_0_s_tv_3 | SE_coalesced_delay_0_0_or2);
    // Determine whether to write valid data into the first register stage
    assign SE_coalesced_delay_0_0_v_s_0 = SE_coalesced_delay_0_0_backEN & SE_stall_entry_V4;
    // Backward Stall generation
    assign SE_coalesced_delay_0_0_backStall = ~ (SE_coalesced_delay_0_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_coalesced_delay_0_0_R_v_0 <= 1'b0;
            SE_coalesced_delay_0_0_R_v_1 <= 1'b0;
            SE_coalesced_delay_0_0_R_v_2 <= 1'b0;
            SE_coalesced_delay_0_0_R_v_3 <= 1'b0;
        end
        else
        begin
            if (SE_coalesced_delay_0_0_backEN == 1'b0)
            begin
                SE_coalesced_delay_0_0_R_v_0 <= SE_coalesced_delay_0_0_R_v_0 & SE_coalesced_delay_0_0_s_tv_0;
            end
            else
            begin
                SE_coalesced_delay_0_0_R_v_0 <= SE_coalesced_delay_0_0_v_s_0;
            end

            if (SE_coalesced_delay_0_0_backEN == 1'b0)
            begin
                SE_coalesced_delay_0_0_R_v_1 <= SE_coalesced_delay_0_0_R_v_1 & SE_coalesced_delay_0_0_s_tv_1;
            end
            else
            begin
                SE_coalesced_delay_0_0_R_v_1 <= SE_coalesced_delay_0_0_v_s_0;
            end

            if (SE_coalesced_delay_0_0_backEN == 1'b0)
            begin
                SE_coalesced_delay_0_0_R_v_2 <= SE_coalesced_delay_0_0_R_v_2 & SE_coalesced_delay_0_0_s_tv_2;
            end
            else
            begin
                SE_coalesced_delay_0_0_R_v_2 <= SE_coalesced_delay_0_0_v_s_0;
            end

            if (SE_coalesced_delay_0_0_backEN == 1'b0)
            begin
                SE_coalesced_delay_0_0_R_v_3 <= SE_coalesced_delay_0_0_R_v_3 & SE_coalesced_delay_0_0_s_tv_3;
            end
            else
            begin
                SE_coalesced_delay_0_0_R_v_3 <= SE_coalesced_delay_0_0_v_s_0;
            end

        end
    end

    // i_llvm_fpga_sync_buffer_i32_filter_size_sync_buffer_conv2d1x10(BLACKBOX,21)@1
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    conv2d1x1_i_llvm_fpga_sync_buffer_i32_filter_size_sync_buffer_0 thei_llvm_fpga_sync_buffer_i32_filter_size_sync_buffer_conv2d1x10 (
        .in_buffer_in(in_filter_size),
        .in_i_dependence(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_sync_buffer_i32_filter_size_sync_buffer_conv2d1x10_backStall),
        .in_valid_in(SE_coalesced_delay_0_0_V1),
        .out_buffer_out(i_llvm_fpga_sync_buffer_i32_filter_size_sync_buffer_conv2d1x10_out_buffer_out),
        .out_stall_out(i_llvm_fpga_sync_buffer_i32_filter_size_sync_buffer_conv2d1x10_out_stall_out),
        .out_valid_out(i_llvm_fpga_sync_buffer_i32_filter_size_sync_buffer_conv2d1x10_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_sync_buffer_i32_filter_size_sync_buffer_conv2d1x10(STALLENABLE,173)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_sync_buffer_i32_filter_size_sync_buffer_conv2d1x10_V0 = SE_out_i_llvm_fpga_sync_buffer_i32_filter_size_sync_buffer_conv2d1x10_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_sync_buffer_i32_filter_size_sync_buffer_conv2d1x10_backStall = i_llvm_fpga_ffwd_source_i1_unnamed_conv2d1x10_conv2d1x123_out_stall_out | ~ (SE_out_i_llvm_fpga_sync_buffer_i32_filter_size_sync_buffer_conv2d1x10_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_sync_buffer_i32_filter_size_sync_buffer_conv2d1x10_wireValid = i_llvm_fpga_sync_buffer_i32_filter_size_sync_buffer_conv2d1x10_out_valid_out;

    // SE_out_i_llvm_fpga_ffwd_source_i33_unnamed_conv2d1x14_conv2d1x127(STALLENABLE,167)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_source_i33_unnamed_conv2d1x14_conv2d1x127_V0 = SE_out_i_llvm_fpga_ffwd_source_i33_unnamed_conv2d1x14_conv2d1x127_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_source_i33_unnamed_conv2d1x14_conv2d1x127_backStall = in_stall_in | ~ (SE_out_i_llvm_fpga_ffwd_source_i33_unnamed_conv2d1x14_conv2d1x127_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_source_i33_unnamed_conv2d1x14_conv2d1x127_and0 = i_llvm_fpga_ffwd_source_i33_unnamed_conv2d1x14_conv2d1x127_out_valid_out;
    assign SE_out_i_llvm_fpga_ffwd_source_i33_unnamed_conv2d1x14_conv2d1x127_and1 = i_llvm_fpga_ffwd_source_i33_unnamed_conv2d1x13_conv2d1x126_out_valid_out & SE_out_i_llvm_fpga_ffwd_source_i33_unnamed_conv2d1x14_conv2d1x127_and0;
    assign SE_out_i_llvm_fpga_ffwd_source_i33_unnamed_conv2d1x14_conv2d1x127_and2 = i_llvm_fpga_ffwd_source_i1_unnamed_conv2d1x10_conv2d1x123_out_valid_out & SE_out_i_llvm_fpga_ffwd_source_i33_unnamed_conv2d1x14_conv2d1x127_and1;
    assign SE_out_i_llvm_fpga_ffwd_source_i33_unnamed_conv2d1x14_conv2d1x127_and3 = SE_coalesced_delay_0_0_V0 & SE_out_i_llvm_fpga_ffwd_source_i33_unnamed_conv2d1x14_conv2d1x127_and2;
    assign SE_out_i_llvm_fpga_ffwd_source_i33_unnamed_conv2d1x14_conv2d1x127_and4 = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv2d1x11_conv2d1x124_1_reg_V0 & SE_out_i_llvm_fpga_ffwd_source_i33_unnamed_conv2d1x14_conv2d1x127_and3;
    assign SE_out_i_llvm_fpga_ffwd_source_i33_unnamed_conv2d1x14_conv2d1x127_wireValid = bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_conv2d1x12_conv2d1x125_1_reg_V0 & SE_out_i_llvm_fpga_ffwd_source_i33_unnamed_conv2d1x14_conv2d1x127_and4;

    // bubble_join_i_llvm_fpga_sync_buffer_i32_filter_size_sync_buffer_conv2d1x10(BITJOIN,132)
    assign bubble_join_i_llvm_fpga_sync_buffer_i32_filter_size_sync_buffer_conv2d1x10_q = i_llvm_fpga_sync_buffer_i32_filter_size_sync_buffer_conv2d1x10_out_buffer_out;

    // bubble_select_i_llvm_fpga_sync_buffer_i32_filter_size_sync_buffer_conv2d1x10(BITSELECT,133)
    assign bubble_select_i_llvm_fpga_sync_buffer_i32_filter_size_sync_buffer_conv2d1x10_b = $unsigned(bubble_join_i_llvm_fpga_sync_buffer_i32_filter_size_sync_buffer_conv2d1x10_q[31:0]);

    // i_cmp269_conv2d1x11(COMPARE,13)@1
    assign i_cmp269_conv2d1x11_a = $unsigned({{2{c_i32_029_recast_x_q[31]}}, c_i32_029_recast_x_q});
    assign i_cmp269_conv2d1x11_b = $unsigned({{2{bubble_select_i_llvm_fpga_sync_buffer_i32_filter_size_sync_buffer_conv2d1x10_b[31]}}, bubble_select_i_llvm_fpga_sync_buffer_i32_filter_size_sync_buffer_conv2d1x10_b});
    assign i_cmp269_conv2d1x11_o = $unsigned($signed(i_cmp269_conv2d1x11_a) - $signed(i_cmp269_conv2d1x11_b));
    assign i_cmp269_conv2d1x11_c[0] = i_cmp269_conv2d1x11_o[33];

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_llvm_fpga_ffwd_source_i1_unnamed_conv2d1x10_conv2d1x123(BLACKBOX,14)@1
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_0_0@20000000
    // out out_stall_out@20000000
    conv2d1x1_i_llvm_fpga_ffwd_source_i1_unnamed_0_conv2d1x10 thei_llvm_fpga_ffwd_source_i1_unnamed_conv2d1x10_conv2d1x123 (
        .in_predicate_in(GND_q),
        .in_src_data_in_0_0(i_cmp269_conv2d1x11_c),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_source_i33_unnamed_conv2d1x14_conv2d1x127_backStall),
        .in_valid_in(SE_out_i_llvm_fpga_sync_buffer_i32_filter_size_sync_buffer_conv2d1x10_V0),
        .out_intel_reserved_ffwd_0_0(i_llvm_fpga_ffwd_source_i1_unnamed_conv2d1x10_conv2d1x123_out_intel_reserved_ffwd_0_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i1_unnamed_conv2d1x10_conv2d1x123_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i1_unnamed_conv2d1x10_conv2d1x123_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // regfree_osync(GPOUT,73)
    assign out_intel_reserved_ffwd_0_0 = i_llvm_fpga_ffwd_source_i1_unnamed_conv2d1x10_conv2d1x123_out_intel_reserved_ffwd_0_0;

    // sync_out(GPOUT,77)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // dupName_0_regfree_osync_x(GPOUT,85)
    assign out_intel_reserved_ffwd_1_0 = i_llvm_fpga_ffwd_source_i32_unnamed_conv2d1x11_conv2d1x124_out_intel_reserved_ffwd_1_0;

    // bubble_join_stall_entry(BITJOIN,147)
    assign bubble_join_stall_entry_q = {in_c0_exe917, in_c0_exe816, in_c0_exe715, in_c0_exe614, in_c0_exe513, in_c0_exe412, in_c0_exe311, in_c0_exe210, in_c0_exe1725, in_c0_exe1624, in_c0_exe1523, in_c0_exe1422, in_c0_exe1321, in_c0_exe1220, in_c0_exe1119, in_c0_exe1018};

    // bubble_select_stall_entry(BITSELECT,148)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[31:0]);
    assign bubble_select_stall_entry_c = $unsigned(bubble_join_stall_entry_q[63:32]);
    assign bubble_select_stall_entry_d = $unsigned(bubble_join_stall_entry_q[95:64]);
    assign bubble_select_stall_entry_e = $unsigned(bubble_join_stall_entry_q[127:96]);
    assign bubble_select_stall_entry_f = $unsigned(bubble_join_stall_entry_q[159:128]);
    assign bubble_select_stall_entry_g = $unsigned(bubble_join_stall_entry_q[191:160]);
    assign bubble_select_stall_entry_h = $unsigned(bubble_join_stall_entry_q[223:192]);
    assign bubble_select_stall_entry_i = $unsigned(bubble_join_stall_entry_q[255:224]);
    assign bubble_select_stall_entry_j = $unsigned(bubble_join_stall_entry_q[287:256]);
    assign bubble_select_stall_entry_k = $unsigned(bubble_join_stall_entry_q[319:288]);
    assign bubble_select_stall_entry_l = $unsigned(bubble_join_stall_entry_q[351:320]);
    assign bubble_select_stall_entry_m = $unsigned(bubble_join_stall_entry_q[383:352]);
    assign bubble_select_stall_entry_n = $unsigned(bubble_join_stall_entry_q[415:384]);
    assign bubble_select_stall_entry_o = $unsigned(bubble_join_stall_entry_q[447:416]);
    assign bubble_select_stall_entry_p = $unsigned(bubble_join_stall_entry_q[479:448]);
    assign bubble_select_stall_entry_q = $unsigned(bubble_join_stall_entry_q[511:480]);

    // join_for_coalesced_delay_0(BITJOIN,117)
    assign join_for_coalesced_delay_0_q = {bubble_select_stall_entry_q, bubble_select_stall_entry_p, bubble_select_stall_entry_o, bubble_select_stall_entry_n, bubble_select_stall_entry_m, bubble_select_stall_entry_l, bubble_select_stall_entry_k, bubble_select_stall_entry_j, bubble_select_stall_entry_i, bubble_select_stall_entry_h, bubble_select_stall_entry_g, bubble_select_stall_entry_f, bubble_select_stall_entry_e, bubble_select_stall_entry_d, bubble_select_stall_entry_c, bubble_select_stall_entry_b};

    // coalesced_delay_0_0(REG,119)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_0_0_q <= $unsigned(512'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_coalesced_delay_0_0_backEN == 1'b1)
        begin
            coalesced_delay_0_0_q <= $unsigned(join_for_coalesced_delay_0_q);
        end
    end

    // sel_for_coalesced_delay_0(BITSELECT,118)
    assign sel_for_coalesced_delay_0_b = $unsigned(coalesced_delay_0_0_q[31:0]);
    assign sel_for_coalesced_delay_0_c = $unsigned(coalesced_delay_0_0_q[63:32]);
    assign sel_for_coalesced_delay_0_d = $unsigned(coalesced_delay_0_0_q[95:64]);
    assign sel_for_coalesced_delay_0_e = $unsigned(coalesced_delay_0_0_q[127:96]);
    assign sel_for_coalesced_delay_0_f = $unsigned(coalesced_delay_0_0_q[159:128]);
    assign sel_for_coalesced_delay_0_g = $unsigned(coalesced_delay_0_0_q[191:160]);
    assign sel_for_coalesced_delay_0_h = $unsigned(coalesced_delay_0_0_q[223:192]);
    assign sel_for_coalesced_delay_0_i = $unsigned(coalesced_delay_0_0_q[255:224]);
    assign sel_for_coalesced_delay_0_j = $unsigned(coalesced_delay_0_0_q[287:256]);
    assign sel_for_coalesced_delay_0_k = $unsigned(coalesced_delay_0_0_q[319:288]);
    assign sel_for_coalesced_delay_0_l = $unsigned(coalesced_delay_0_0_q[351:320]);
    assign sel_for_coalesced_delay_0_m = $unsigned(coalesced_delay_0_0_q[383:352]);
    assign sel_for_coalesced_delay_0_n = $unsigned(coalesced_delay_0_0_q[415:384]);
    assign sel_for_coalesced_delay_0_o = $unsigned(coalesced_delay_0_0_q[447:416]);
    assign sel_for_coalesced_delay_0_p = $unsigned(coalesced_delay_0_0_q[479:448]);
    assign sel_for_coalesced_delay_0_q = $unsigned(coalesced_delay_0_0_q[511:480]);

    // dupName_0_sync_out_x(GPOUT,86)@1
    assign out_c0_exe1018 = sel_for_coalesced_delay_0_b;
    assign out_c0_exe1119 = sel_for_coalesced_delay_0_c;
    assign out_c0_exe1220 = sel_for_coalesced_delay_0_d;
    assign out_c0_exe1321 = sel_for_coalesced_delay_0_e;
    assign out_c0_exe1422 = sel_for_coalesced_delay_0_f;
    assign out_c0_exe1523 = sel_for_coalesced_delay_0_g;
    assign out_c0_exe1624 = sel_for_coalesced_delay_0_h;
    assign out_c0_exe1725 = sel_for_coalesced_delay_0_i;
    assign out_c0_exe210 = sel_for_coalesced_delay_0_j;
    assign out_c0_exe311 = sel_for_coalesced_delay_0_k;
    assign out_c0_exe412 = sel_for_coalesced_delay_0_l;
    assign out_c0_exe513 = sel_for_coalesced_delay_0_m;
    assign out_c0_exe614 = sel_for_coalesced_delay_0_n;
    assign out_c0_exe715 = sel_for_coalesced_delay_0_o;
    assign out_c0_exe816 = sel_for_coalesced_delay_0_p;
    assign out_c0_exe917 = sel_for_coalesced_delay_0_q;
    assign out_valid_out = SE_out_i_llvm_fpga_ffwd_source_i33_unnamed_conv2d1x14_conv2d1x127_V0;

    // dupName_1_regfree_osync_x(GPOUT,89)
    assign out_intel_reserved_ffwd_2_0 = i_llvm_fpga_ffwd_source_i1_unnamed_conv2d1x12_conv2d1x125_out_intel_reserved_ffwd_2_0;

    // dupName_2_regfree_osync_x(GPOUT,90)
    assign out_intel_reserved_ffwd_3_0 = i_llvm_fpga_ffwd_source_i33_unnamed_conv2d1x13_conv2d1x126_out_intel_reserved_ffwd_3_0;

    // dupName_3_regfree_osync_x(GPOUT,91)
    assign out_intel_reserved_ffwd_4_0 = i_llvm_fpga_ffwd_source_i33_unnamed_conv2d1x14_conv2d1x127_out_intel_reserved_ffwd_4_0;

endmodule
