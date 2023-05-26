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

// SystemVerilog created from conv2d1x1_bb_B7_stall_region
// SystemVerilog created on Tue May 23 20:43:36 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2d1x1_bb_B7_stall_region (
    input wire [511:0] in_lm_conv2d1x1_avm_readdata,
    input wire [0:0] in_lm_conv2d1x1_avm_writeack,
    input wire [0:0] in_lm_conv2d1x1_avm_waitrequest,
    input wire [0:0] in_lm_conv2d1x1_avm_readdatavalid,
    output wire [30:0] out_lm_conv2d1x1_avm_address,
    output wire [0:0] out_lm_conv2d1x1_avm_enable,
    output wire [0:0] out_lm_conv2d1x1_avm_read,
    output wire [0:0] out_lm_conv2d1x1_avm_write,
    output wire [511:0] out_lm_conv2d1x1_avm_writedata,
    output wire [63:0] out_lm_conv2d1x1_avm_byteenable,
    output wire [4:0] out_lm_conv2d1x1_avm_burstcount,
    input wire [0:0] in_flush,
    input wire [63:0] in_input_im,
    input wire [63:0] in_output_im,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [511:0] in_lm70_conv2d1x1_avm_readdata,
    input wire [0:0] in_lm70_conv2d1x1_avm_writeack,
    input wire [0:0] in_lm70_conv2d1x1_avm_waitrequest,
    input wire [0:0] in_lm70_conv2d1x1_avm_readdatavalid,
    output wire [30:0] out_lm70_conv2d1x1_avm_address,
    output wire [0:0] out_lm70_conv2d1x1_avm_enable,
    output wire [0:0] out_lm70_conv2d1x1_avm_read,
    output wire [0:0] out_lm70_conv2d1x1_avm_write,
    output wire [511:0] out_lm70_conv2d1x1_avm_writedata,
    output wire [63:0] out_lm70_conv2d1x1_avm_byteenable,
    output wire [4:0] out_lm70_conv2d1x1_avm_burstcount,
    output wire [0:0] out_c0_exe1974135,
    output wire [0:0] out_c0_exe2574741,
    output wire [0:0] out_valid_out,
    input wire [511:0] in_lm73_conv2d1x1_avm_readdata,
    input wire [0:0] in_lm73_conv2d1x1_avm_writeack,
    input wire [0:0] in_lm73_conv2d1x1_avm_waitrequest,
    input wire [0:0] in_lm73_conv2d1x1_avm_readdatavalid,
    output wire [30:0] out_lm73_conv2d1x1_avm_address,
    output wire [0:0] out_lm73_conv2d1x1_avm_enable,
    output wire [0:0] out_lm73_conv2d1x1_avm_read,
    output wire [0:0] out_lm73_conv2d1x1_avm_write,
    output wire [511:0] out_lm73_conv2d1x1_avm_writedata,
    output wire [63:0] out_lm73_conv2d1x1_avm_byteenable,
    output wire [4:0] out_lm73_conv2d1x1_avm_burstcount,
    input wire [511:0] in_unnamed_conv2d1x113_conv2d1x1_avm_readdata,
    input wire [0:0] in_unnamed_conv2d1x113_conv2d1x1_avm_writeack,
    input wire [0:0] in_unnamed_conv2d1x113_conv2d1x1_avm_waitrequest,
    input wire [0:0] in_unnamed_conv2d1x113_conv2d1x1_avm_readdatavalid,
    output wire [30:0] out_unnamed_conv2d1x113_conv2d1x1_avm_address,
    output wire [0:0] out_unnamed_conv2d1x113_conv2d1x1_avm_enable,
    output wire [0:0] out_unnamed_conv2d1x113_conv2d1x1_avm_read,
    output wire [0:0] out_unnamed_conv2d1x113_conv2d1x1_avm_write,
    output wire [511:0] out_unnamed_conv2d1x113_conv2d1x1_avm_writedata,
    output wire [63:0] out_unnamed_conv2d1x113_conv2d1x1_avm_byteenable,
    output wire [4:0] out_unnamed_conv2d1x113_conv2d1x1_avm_burstcount,
    output wire [0:0] out_lsu_unnamed_conv2d1x113_o_active,
    input wire [31:0] in_c0_exe1273429,
    input wire [31:0] in_c0_exe1373530,
    input wire [0:0] in_c0_exe1573731,
    input wire [31:0] in_c0_exe1773932,
    input wire [31:0] in_c0_exe1874033,
    input wire [0:0] in_c0_exe1974135,
    input wire [31:0] in_c0_exe2074236,
    input wire [31:0] in_c0_exe2174337,
    input wire [31:0] in_c0_exe2274438,
    input wire [0:0] in_c0_exe2374539,
    input wire [0:0] in_c0_exe2474640,
    input wire [0:0] in_c0_exe2574741,
    input wire [0:0] in_c0_exe772926,
    input wire [0:0] in_c0_exe873027,
    input wire [31:0] in_c0_exe973128,
    input wire [31:0] in_c1_exe1052,
    input wire [31:0] in_c1_exe1153,
    input wire [31:0] in_c1_exe1254,
    input wire [31:0] in_c1_exe1355,
    input wire [31:0] in_c1_exe1456,
    input wire [31:0] in_c1_exe184743,
    input wire [31:0] in_c1_exe244,
    input wire [31:0] in_c1_exe345,
    input wire [31:0] in_c1_exe446,
    input wire [31:0] in_c1_exe547,
    input wire [31:0] in_c1_exe648,
    input wire [31:0] in_c1_exe749,
    input wire [31:0] in_c1_exe850,
    input wire [31:0] in_c1_exe951,
    input wire [31:0] in_lm17742_0_tpl,
    input wire [31:0] in_lm17742_1_tpl,
    input wire [31:0] in_lm17742_2_tpl,
    input wire [31:0] in_lm17742_3_tpl,
    input wire [0:0] in_valid_in,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [32:0] i_add98_conv2d1x16_a;
    wire [32:0] i_add98_conv2d1x16_b;
    logic [32:0] i_add98_conv2d1x16_o;
    wire [32:0] i_add98_conv2d1x16_q;
    wire [1:0] i_arrayidx1002_conv2d1x135_vt_const_1_q;
    wire [63:0] i_arrayidx1002_conv2d1x135_vt_join_q;
    wire [61:0] i_arrayidx1002_conv2d1x135_vt_select_63_b;
    wire [31:0] i_idxprom99_conv2d1x110_vt_const_63_q;
    wire [63:0] i_idxprom99_conv2d1x110_vt_join_q;
    wire [31:0] i_idxprom99_conv2d1x110_vt_select_31_b;
    wire [30:0] i_llvm_fpga_mem_lm70_conv2d1x18_out_lm70_conv2d1x1_avm_address;
    wire [4:0] i_llvm_fpga_mem_lm70_conv2d1x18_out_lm70_conv2d1x1_avm_burstcount;
    wire [63:0] i_llvm_fpga_mem_lm70_conv2d1x18_out_lm70_conv2d1x1_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_lm70_conv2d1x18_out_lm70_conv2d1x1_avm_enable;
    wire [0:0] i_llvm_fpga_mem_lm70_conv2d1x18_out_lm70_conv2d1x1_avm_read;
    wire [0:0] i_llvm_fpga_mem_lm70_conv2d1x18_out_lm70_conv2d1x1_avm_write;
    wire [511:0] i_llvm_fpga_mem_lm70_conv2d1x18_out_lm70_conv2d1x1_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_lm70_conv2d1x18_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_lm70_conv2d1x18_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_lm70_conv2d1x18_out_o_valid;
    wire [30:0] i_llvm_fpga_mem_lm73_conv2d1x19_out_lm73_conv2d1x1_avm_address;
    wire [4:0] i_llvm_fpga_mem_lm73_conv2d1x19_out_lm73_conv2d1x1_avm_burstcount;
    wire [63:0] i_llvm_fpga_mem_lm73_conv2d1x19_out_lm73_conv2d1x1_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_lm73_conv2d1x19_out_lm73_conv2d1x1_avm_enable;
    wire [0:0] i_llvm_fpga_mem_lm73_conv2d1x19_out_lm73_conv2d1x1_avm_read;
    wire [0:0] i_llvm_fpga_mem_lm73_conv2d1x19_out_lm73_conv2d1x1_avm_write;
    wire [511:0] i_llvm_fpga_mem_lm73_conv2d1x19_out_lm73_conv2d1x1_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_lm73_conv2d1x19_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_lm73_conv2d1x19_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_lm73_conv2d1x19_out_o_valid;
    wire [30:0] i_llvm_fpga_mem_lm_conv2d1x17_out_lm_conv2d1x1_avm_address;
    wire [4:0] i_llvm_fpga_mem_lm_conv2d1x17_out_lm_conv2d1x1_avm_burstcount;
    wire [63:0] i_llvm_fpga_mem_lm_conv2d1x17_out_lm_conv2d1x1_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_lm_conv2d1x17_out_lm_conv2d1x1_avm_enable;
    wire [0:0] i_llvm_fpga_mem_lm_conv2d1x17_out_lm_conv2d1x1_avm_read;
    wire [0:0] i_llvm_fpga_mem_lm_conv2d1x17_out_lm_conv2d1x1_avm_write;
    wire [511:0] i_llvm_fpga_mem_lm_conv2d1x17_out_lm_conv2d1x1_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_lm_conv2d1x17_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_lm_conv2d1x17_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_lm_conv2d1x17_out_o_valid;
    wire [0:0] i_llvm_fpga_mem_unnamed_conv2d1x113_conv2d1x136_out_lsu_unnamed_conv2d1x113_o_active;
    wire [0:0] i_llvm_fpga_mem_unnamed_conv2d1x113_conv2d1x136_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_unnamed_conv2d1x113_conv2d1x136_out_o_valid;
    wire [30:0] i_llvm_fpga_mem_unnamed_conv2d1x113_conv2d1x136_out_unnamed_conv2d1x113_conv2d1x1_avm_address;
    wire [4:0] i_llvm_fpga_mem_unnamed_conv2d1x113_conv2d1x136_out_unnamed_conv2d1x113_conv2d1x1_avm_burstcount;
    wire [63:0] i_llvm_fpga_mem_unnamed_conv2d1x113_conv2d1x136_out_unnamed_conv2d1x113_conv2d1x1_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_conv2d1x113_conv2d1x136_out_unnamed_conv2d1x113_conv2d1x1_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_conv2d1x113_conv2d1x136_out_unnamed_conv2d1x113_conv2d1x1_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_conv2d1x113_conv2d1x136_out_unnamed_conv2d1x113_conv2d1x1_avm_write;
    wire [511:0] i_llvm_fpga_mem_unnamed_conv2d1x113_conv2d1x136_out_unnamed_conv2d1x113_conv2d1x1_avm_writedata;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_conv2d1x10_out_buffer_out;
    wire [0:0] i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_conv2d1x10_out_stall_out;
    wire [0:0] i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_conv2d1x10_out_valid_out;
    wire [9:0] i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_conv2d1x10_vt_const_9_q;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_conv2d1x10_vt_join_q;
    wire [53:0] i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_conv2d1x10_vt_select_63_b;
    wire [31:0] bgTrunc_i_add98_conv2d1x16_sel_x_b;
    wire [64:0] i_arrayidx1002_conv2d1x10_add_x_a;
    wire [64:0] i_arrayidx1002_conv2d1x10_add_x_b;
    logic [64:0] i_arrayidx1002_conv2d1x10_add_x_o;
    wire [64:0] i_arrayidx1002_conv2d1x10_add_x_q;
    wire [61:0] i_arrayidx1002_conv2d1x10_narrow_x_b;
    wire [63:0] i_arrayidx1002_conv2d1x10_shift_join_x_q;
    wire [63:0] i_arrayidx1002_conv2d1x10_dupName_0_trunc_sel_x_b;
    wire [63:0] i_idxprom99_conv2d1x110_sel_x_b;
    wire [0:0] i_sfc_s_c0_in_for_cond82_preheader_loopexit_conv2d1x1s_c0_enter543_conv2d1x14_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_for_cond82_preheader_loopexit_conv2d1x1s_c0_enter543_conv2d1x14_aunroll_x_out_o_valid;
    wire [63:0] i_sfc_s_c0_in_for_cond82_preheader_loopexit_conv2d1x1s_c0_enter543_conv2d1x14_aunroll_x_out_c0_exit550_1_tpl;
    wire [63:0] i_sfc_s_c0_in_for_cond82_preheader_loopexit_conv2d1x1s_c0_enter543_conv2d1x14_aunroll_x_out_c0_exit550_2_tpl;
    wire [63:0] i_sfc_s_c0_in_for_cond82_preheader_loopexit_conv2d1x1s_c0_enter543_conv2d1x14_aunroll_x_out_c0_exit550_3_tpl;
    wire [0:0] i_sfc_s_c1_in_for_cond82_preheader_loopexit_conv2d1x1s_c1_enter_conv2d1x133_aunroll_vunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c1_in_for_cond82_preheader_loopexit_conv2d1x1s_c1_enter_conv2d1x133_aunroll_vunroll_x_out_o_valid;
    wire [31:0] i_sfc_s_c1_in_for_cond82_preheader_loopexit_conv2d1x1s_c1_enter_conv2d1x133_aunroll_vunroll_x_out_c1_exit_1_tpl;
    wire [706:0] join_for_coalesced_delay_0_q;
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
    wire [31:0] sel_for_coalesced_delay_0_r;
    wire [31:0] sel_for_coalesced_delay_0_s;
    wire [31:0] sel_for_coalesced_delay_0_t;
    wire [31:0] sel_for_coalesced_delay_0_u;
    wire [31:0] sel_for_coalesced_delay_0_v;
    wire [31:0] sel_for_coalesced_delay_0_w;
    wire [0:0] sel_for_coalesced_delay_0_x;
    wire [0:0] sel_for_coalesced_delay_0_y;
    wire [0:0] sel_for_coalesced_delay_0_z;
    wire [1:0] join_for_coalesced_delay_1_q;
    wire [0:0] sel_for_coalesced_delay_1_b;
    wire [0:0] sel_for_coalesced_delay_1_c;
    wire [0:0] redist0_stall_entry_vunroll_o6_188_fifo_valid_in;
    wire redist0_stall_entry_vunroll_o6_188_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist0_stall_entry_vunroll_o6_188_fifo_stall_in;
    wire redist0_stall_entry_vunroll_o6_188_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist0_stall_entry_vunroll_o6_188_fifo_data_in;
    wire [0:0] redist0_stall_entry_vunroll_o6_188_fifo_valid_out;
    wire redist0_stall_entry_vunroll_o6_188_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist0_stall_entry_vunroll_o6_188_fifo_stall_out;
    wire redist0_stall_entry_vunroll_o6_188_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist0_stall_entry_vunroll_o6_188_fifo_data_out;
    reg [0:0] redist10_stall_entry_vunroll_o17_7_0_q;
    reg [0:0] redist10_stall_entry_vunroll_o17_7_1_q;
    reg [0:0] redist10_stall_entry_vunroll_o17_7_2_q;
    reg [0:0] redist10_stall_entry_vunroll_o17_7_3_q;
    reg [0:0] redist10_stall_entry_vunroll_o17_7_4_q;
    reg [0:0] redist10_stall_entry_vunroll_o17_7_5_q;
    reg [0:0] redist10_stall_entry_vunroll_o17_7_6_q;
    wire [0:0] redist29_i_idxprom99_conv2d1x110_vt_select_31_b_188_fifo_valid_in;
    wire redist29_i_idxprom99_conv2d1x110_vt_select_31_b_188_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist29_i_idxprom99_conv2d1x110_vt_select_31_b_188_fifo_stall_in;
    wire redist29_i_idxprom99_conv2d1x110_vt_select_31_b_188_fifo_stall_in_bitsignaltemp;
    wire [31:0] redist29_i_idxprom99_conv2d1x110_vt_select_31_b_188_fifo_data_in;
    wire [0:0] redist29_i_idxprom99_conv2d1x110_vt_select_31_b_188_fifo_valid_out;
    wire redist29_i_idxprom99_conv2d1x110_vt_select_31_b_188_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist29_i_idxprom99_conv2d1x110_vt_select_31_b_188_fifo_stall_out;
    wire redist29_i_idxprom99_conv2d1x110_vt_select_31_b_188_fifo_stall_out_bitsignaltemp;
    wire [31:0] redist29_i_idxprom99_conv2d1x110_vt_select_31_b_188_fifo_data_out;
    wire [0:0] coalesced_delay_0_fifo_valid_in;
    wire coalesced_delay_0_fifo_valid_in_bitsignaltemp;
    wire [0:0] coalesced_delay_0_fifo_stall_in;
    wire coalesced_delay_0_fifo_stall_in_bitsignaltemp;
    wire [706:0] coalesced_delay_0_fifo_data_in;
    wire [0:0] coalesced_delay_0_fifo_valid_out;
    wire coalesced_delay_0_fifo_valid_out_bitsignaltemp;
    wire [0:0] coalesced_delay_0_fifo_stall_out;
    wire coalesced_delay_0_fifo_stall_out_bitsignaltemp;
    wire [706:0] coalesced_delay_0_fifo_data_out;
    wire [0:0] coalesced_delay_1_fifo_valid_in;
    wire coalesced_delay_1_fifo_valid_in_bitsignaltemp;
    wire [0:0] coalesced_delay_1_fifo_stall_in;
    wire coalesced_delay_1_fifo_stall_in_bitsignaltemp;
    wire [1:0] coalesced_delay_1_fifo_data_in;
    wire [0:0] coalesced_delay_1_fifo_valid_out;
    wire coalesced_delay_1_fifo_valid_out_bitsignaltemp;
    wire [0:0] coalesced_delay_1_fifo_stall_out;
    wire coalesced_delay_1_fifo_stall_out_bitsignaltemp;
    wire [1:0] coalesced_delay_1_fifo_data_out;
    wire [31:0] bubble_join_i_llvm_fpga_mem_lm70_conv2d1x18_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_lm70_conv2d1x18_b;
    wire [31:0] bubble_join_i_llvm_fpga_mem_lm73_conv2d1x19_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_lm73_conv2d1x19_b;
    wire [31:0] bubble_join_i_llvm_fpga_mem_lm_conv2d1x17_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_lm_conv2d1x17_b;
    wire [63:0] bubble_join_i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_conv2d1x10_q;
    wire [63:0] bubble_select_i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_conv2d1x10_b;
    wire [838:0] bubble_join_stall_entry_vunroll_q;
    wire [31:0] bubble_select_stall_entry_vunroll_b;
    wire [31:0] bubble_select_stall_entry_vunroll_c;
    wire [0:0] bubble_select_stall_entry_vunroll_d;
    wire [31:0] bubble_select_stall_entry_vunroll_e;
    wire [31:0] bubble_select_stall_entry_vunroll_f;
    wire [0:0] bubble_select_stall_entry_vunroll_g;
    wire [31:0] bubble_select_stall_entry_vunroll_h;
    wire [31:0] bubble_select_stall_entry_vunroll_i;
    wire [31:0] bubble_select_stall_entry_vunroll_j;
    wire [0:0] bubble_select_stall_entry_vunroll_k;
    wire [0:0] bubble_select_stall_entry_vunroll_l;
    wire [0:0] bubble_select_stall_entry_vunroll_m;
    wire [0:0] bubble_select_stall_entry_vunroll_n;
    wire [0:0] bubble_select_stall_entry_vunroll_o;
    wire [31:0] bubble_select_stall_entry_vunroll_p;
    wire [31:0] bubble_select_stall_entry_vunroll_q;
    wire [31:0] bubble_select_stall_entry_vunroll_r;
    wire [31:0] bubble_select_stall_entry_vunroll_s;
    wire [31:0] bubble_select_stall_entry_vunroll_t;
    wire [31:0] bubble_select_stall_entry_vunroll_u;
    wire [31:0] bubble_select_stall_entry_vunroll_v;
    wire [31:0] bubble_select_stall_entry_vunroll_w;
    wire [31:0] bubble_select_stall_entry_vunroll_x;
    wire [31:0] bubble_select_stall_entry_vunroll_y;
    wire [31:0] bubble_select_stall_entry_vunroll_z;
    wire [31:0] bubble_select_stall_entry_vunroll_aa;
    wire [31:0] bubble_select_stall_entry_vunroll_bb;
    wire [31:0] bubble_select_stall_entry_vunroll_cc;
    wire [31:0] bubble_select_stall_entry_vunroll_dd;
    wire [31:0] bubble_select_stall_entry_vunroll_ee;
    wire [31:0] bubble_select_stall_entry_vunroll_ff;
    wire [31:0] bubble_select_stall_entry_vunroll_gg;
    wire [31:0] bubble_select_stall_entry_vunroll_hh;
    wire [191:0] bubble_join_i_sfc_s_c0_in_for_cond82_preheader_loopexit_conv2d1x1s_c0_enter543_conv2d1x14_aunroll_x_q;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_cond82_preheader_loopexit_conv2d1x1s_c0_enter543_conv2d1x14_aunroll_x_b;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_cond82_preheader_loopexit_conv2d1x1s_c0_enter543_conv2d1x14_aunroll_x_c;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_cond82_preheader_loopexit_conv2d1x1s_c0_enter543_conv2d1x14_aunroll_x_d;
    wire [31:0] bubble_join_i_sfc_s_c1_in_for_cond82_preheader_loopexit_conv2d1x1s_c1_enter_conv2d1x133_aunroll_vunroll_x_q;
    wire [31:0] bubble_select_i_sfc_s_c1_in_for_cond82_preheader_loopexit_conv2d1x1s_c1_enter_conv2d1x133_aunroll_vunroll_x_b;
    wire [0:0] bubble_join_redist0_stall_entry_vunroll_o6_188_fifo_q;
    wire [0:0] bubble_select_redist0_stall_entry_vunroll_o6_188_fifo_b;
    wire [31:0] bubble_join_redist29_i_idxprom99_conv2d1x110_vt_select_31_b_188_fifo_q;
    wire [31:0] bubble_select_redist29_i_idxprom99_conv2d1x110_vt_select_31_b_188_fifo_b;
    wire [706:0] bubble_join_coalesced_delay_0_fifo_q;
    wire [706:0] bubble_select_coalesced_delay_0_fifo_b;
    wire [1:0] bubble_join_coalesced_delay_1_fifo_q;
    wire [1:0] bubble_select_coalesced_delay_1_fifo_b;
    wire [0:0] SE_stall_entry_vunroll_wireValid;
    wire [0:0] SE_stall_entry_vunroll_wireStall;
    wire [0:0] SE_stall_entry_vunroll_StallValid;
    wire [0:0] SE_stall_entry_vunroll_toReg0;
    reg [0:0] SE_stall_entry_vunroll_fromReg0;
    wire [0:0] SE_stall_entry_vunroll_consumed0;
    wire [0:0] SE_stall_entry_vunroll_toReg1;
    reg [0:0] SE_stall_entry_vunroll_fromReg1;
    wire [0:0] SE_stall_entry_vunroll_consumed1;
    wire [0:0] SE_stall_entry_vunroll_toReg2;
    reg [0:0] SE_stall_entry_vunroll_fromReg2;
    wire [0:0] SE_stall_entry_vunroll_consumed2;
    wire [0:0] SE_stall_entry_vunroll_toReg3;
    reg [0:0] SE_stall_entry_vunroll_fromReg3;
    wire [0:0] SE_stall_entry_vunroll_consumed3;
    wire [0:0] SE_stall_entry_vunroll_toReg4;
    reg [0:0] SE_stall_entry_vunroll_fromReg4;
    wire [0:0] SE_stall_entry_vunroll_consumed4;
    wire [0:0] SE_stall_entry_vunroll_toReg5;
    reg [0:0] SE_stall_entry_vunroll_fromReg5;
    wire [0:0] SE_stall_entry_vunroll_consumed5;
    wire [0:0] SE_stall_entry_vunroll_toReg6;
    reg [0:0] SE_stall_entry_vunroll_fromReg6;
    wire [0:0] SE_stall_entry_vunroll_consumed6;
    wire [0:0] SE_stall_entry_vunroll_or0;
    wire [0:0] SE_stall_entry_vunroll_or1;
    wire [0:0] SE_stall_entry_vunroll_or2;
    wire [0:0] SE_stall_entry_vunroll_or3;
    wire [0:0] SE_stall_entry_vunroll_or4;
    wire [0:0] SE_stall_entry_vunroll_or5;
    wire [0:0] SE_stall_entry_vunroll_backStall;
    wire [0:0] SE_stall_entry_vunroll_V0;
    wire [0:0] SE_stall_entry_vunroll_V1;
    wire [0:0] SE_stall_entry_vunroll_V2;
    wire [0:0] SE_stall_entry_vunroll_V3;
    wire [0:0] SE_stall_entry_vunroll_V4;
    wire [0:0] SE_stall_entry_vunroll_V5;
    wire [0:0] SE_stall_entry_vunroll_V6;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond82_preheader_loopexit_conv2d1x1s_c0_enter543_conv2d1x14_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond82_preheader_loopexit_conv2d1x1s_c0_enter543_conv2d1x14_aunroll_x_wireStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond82_preheader_loopexit_conv2d1x1s_c0_enter543_conv2d1x14_aunroll_x_StallValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond82_preheader_loopexit_conv2d1x1s_c0_enter543_conv2d1x14_aunroll_x_toReg0;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_cond82_preheader_loopexit_conv2d1x1s_c0_enter543_conv2d1x14_aunroll_x_fromReg0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond82_preheader_loopexit_conv2d1x1s_c0_enter543_conv2d1x14_aunroll_x_consumed0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond82_preheader_loopexit_conv2d1x1s_c0_enter543_conv2d1x14_aunroll_x_toReg1;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_cond82_preheader_loopexit_conv2d1x1s_c0_enter543_conv2d1x14_aunroll_x_fromReg1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond82_preheader_loopexit_conv2d1x1s_c0_enter543_conv2d1x14_aunroll_x_consumed1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond82_preheader_loopexit_conv2d1x1s_c0_enter543_conv2d1x14_aunroll_x_toReg2;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_cond82_preheader_loopexit_conv2d1x1s_c0_enter543_conv2d1x14_aunroll_x_fromReg2;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond82_preheader_loopexit_conv2d1x1s_c0_enter543_conv2d1x14_aunroll_x_consumed2;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond82_preheader_loopexit_conv2d1x1s_c0_enter543_conv2d1x14_aunroll_x_and0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond82_preheader_loopexit_conv2d1x1s_c0_enter543_conv2d1x14_aunroll_x_or0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond82_preheader_loopexit_conv2d1x1s_c0_enter543_conv2d1x14_aunroll_x_or1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond82_preheader_loopexit_conv2d1x1s_c0_enter543_conv2d1x14_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond82_preheader_loopexit_conv2d1x1s_c0_enter543_conv2d1x14_aunroll_x_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond82_preheader_loopexit_conv2d1x1s_c0_enter543_conv2d1x14_aunroll_x_V1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond82_preheader_loopexit_conv2d1x1s_c0_enter543_conv2d1x14_aunroll_x_V2;
    reg [0:0] SE_redist10_stall_entry_vunroll_o17_7_0_R_v_0;
    wire [0:0] SE_redist10_stall_entry_vunroll_o17_7_0_v_s_0;
    wire [0:0] SE_redist10_stall_entry_vunroll_o17_7_0_s_tv_0;
    wire [0:0] SE_redist10_stall_entry_vunroll_o17_7_0_backEN;
    wire [0:0] SE_redist10_stall_entry_vunroll_o17_7_0_backStall;
    wire [0:0] SE_redist10_stall_entry_vunroll_o17_7_0_V0;
    reg [0:0] SE_redist10_stall_entry_vunroll_o17_7_1_R_v_0;
    wire [0:0] SE_redist10_stall_entry_vunroll_o17_7_1_v_s_0;
    wire [0:0] SE_redist10_stall_entry_vunroll_o17_7_1_s_tv_0;
    wire [0:0] SE_redist10_stall_entry_vunroll_o17_7_1_backEN;
    wire [0:0] SE_redist10_stall_entry_vunroll_o17_7_1_backStall;
    wire [0:0] SE_redist10_stall_entry_vunroll_o17_7_1_V0;
    reg [0:0] SE_redist10_stall_entry_vunroll_o17_7_2_R_v_0;
    wire [0:0] SE_redist10_stall_entry_vunroll_o17_7_2_v_s_0;
    wire [0:0] SE_redist10_stall_entry_vunroll_o17_7_2_s_tv_0;
    wire [0:0] SE_redist10_stall_entry_vunroll_o17_7_2_backEN;
    wire [0:0] SE_redist10_stall_entry_vunroll_o17_7_2_backStall;
    wire [0:0] SE_redist10_stall_entry_vunroll_o17_7_2_V0;
    reg [0:0] SE_redist10_stall_entry_vunroll_o17_7_3_R_v_0;
    wire [0:0] SE_redist10_stall_entry_vunroll_o17_7_3_v_s_0;
    wire [0:0] SE_redist10_stall_entry_vunroll_o17_7_3_s_tv_0;
    wire [0:0] SE_redist10_stall_entry_vunroll_o17_7_3_backEN;
    wire [0:0] SE_redist10_stall_entry_vunroll_o17_7_3_backStall;
    wire [0:0] SE_redist10_stall_entry_vunroll_o17_7_3_V0;
    reg [0:0] SE_redist10_stall_entry_vunroll_o17_7_4_R_v_0;
    wire [0:0] SE_redist10_stall_entry_vunroll_o17_7_4_v_s_0;
    wire [0:0] SE_redist10_stall_entry_vunroll_o17_7_4_s_tv_0;
    wire [0:0] SE_redist10_stall_entry_vunroll_o17_7_4_backEN;
    wire [0:0] SE_redist10_stall_entry_vunroll_o17_7_4_backStall;
    wire [0:0] SE_redist10_stall_entry_vunroll_o17_7_4_V0;
    reg [0:0] SE_redist10_stall_entry_vunroll_o17_7_5_R_v_0;
    wire [0:0] SE_redist10_stall_entry_vunroll_o17_7_5_v_s_0;
    wire [0:0] SE_redist10_stall_entry_vunroll_o17_7_5_s_tv_0;
    wire [0:0] SE_redist10_stall_entry_vunroll_o17_7_5_backEN;
    wire [0:0] SE_redist10_stall_entry_vunroll_o17_7_5_backStall;
    wire [0:0] SE_redist10_stall_entry_vunroll_o17_7_5_V0;
    reg [0:0] SE_redist10_stall_entry_vunroll_o17_7_6_R_v_0;
    wire [0:0] SE_redist10_stall_entry_vunroll_o17_7_6_v_s_0;
    wire [0:0] SE_redist10_stall_entry_vunroll_o17_7_6_s_tv_0;
    wire [0:0] SE_redist10_stall_entry_vunroll_o17_7_6_backEN;
    wire [0:0] SE_redist10_stall_entry_vunroll_o17_7_6_backStall;
    wire [0:0] SE_redist10_stall_entry_vunroll_o17_7_6_V0;
    wire [0:0] SE_out_redist29_i_idxprom99_conv2d1x110_vt_select_31_b_188_fifo_wireValid;
    wire [0:0] SE_out_redist29_i_idxprom99_conv2d1x110_vt_select_31_b_188_fifo_and0;
    wire [0:0] SE_out_redist29_i_idxprom99_conv2d1x110_vt_select_31_b_188_fifo_and1;
    wire [0:0] SE_out_redist29_i_idxprom99_conv2d1x110_vt_select_31_b_188_fifo_and2;
    wire [0:0] SE_out_redist29_i_idxprom99_conv2d1x110_vt_select_31_b_188_fifo_backStall;
    wire [0:0] SE_out_redist29_i_idxprom99_conv2d1x110_vt_select_31_b_188_fifo_V0;
    wire [0:0] SE_out_coalesced_delay_0_fifo_wireValid;
    wire [0:0] SE_out_coalesced_delay_0_fifo_and0;
    wire [0:0] SE_out_coalesced_delay_0_fifo_and1;
    wire [0:0] SE_out_coalesced_delay_0_fifo_and2;
    wire [0:0] SE_out_coalesced_delay_0_fifo_backStall;
    wire [0:0] SE_out_coalesced_delay_0_fifo_V0;
    wire [0:0] SE_out_coalesced_delay_1_fifo_wireValid;
    wire [0:0] SE_out_coalesced_delay_1_fifo_and0;
    wire [0:0] SE_out_coalesced_delay_1_fifo_backStall;
    wire [0:0] SE_out_coalesced_delay_1_fifo_V0;
    wire [0:0] SE_out_bubble_out_stall_entry_vunroll_1_wireValid;
    wire [0:0] SE_out_bubble_out_stall_entry_vunroll_1_backStall;
    wire [0:0] SE_out_bubble_out_stall_entry_vunroll_1_V0;
    wire [0:0] bubble_out_stall_entry_vunroll_1_reg_valid_in;
    wire bubble_out_stall_entry_vunroll_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_stall_entry_vunroll_1_reg_stall_in;
    wire bubble_out_stall_entry_vunroll_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_stall_entry_vunroll_1_reg_valid_out;
    wire bubble_out_stall_entry_vunroll_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_stall_entry_vunroll_1_reg_stall_out;
    wire bubble_out_stall_entry_vunroll_1_reg_stall_out_bitsignaltemp;
    wire [0:0] SR_SE_redist10_stall_entry_vunroll_o17_7_4_i_valid;
    reg [0:0] SR_SE_redist10_stall_entry_vunroll_o17_7_4_r_valid;
    reg [0:0] SR_SE_redist10_stall_entry_vunroll_o17_7_4_r_data0;
    wire [0:0] SR_SE_redist10_stall_entry_vunroll_o17_7_4_backStall;
    wire [0:0] SR_SE_redist10_stall_entry_vunroll_o17_7_4_V;
    wire [0:0] SR_SE_redist10_stall_entry_vunroll_o17_7_4_D0;


    // i_llvm_fpga_mem_lm73_conv2d1x19(BLACKBOX,17)@7
    // in in_i_stall@20000000
    // out out_lm73_conv2d1x1_avm_address@20000000
    // out out_lm73_conv2d1x1_avm_burstcount@20000000
    // out out_lm73_conv2d1x1_avm_byteenable@20000000
    // out out_lm73_conv2d1x1_avm_enable@20000000
    // out out_lm73_conv2d1x1_avm_read@20000000
    // out out_lm73_conv2d1x1_avm_write@20000000
    // out out_lm73_conv2d1x1_avm_writedata@20000000
    // out out_o_readdata@136
    // out out_o_stall@20000000
    // out out_o_valid@136
    conv2d1x1_i_llvm_fpga_mem_lm73_0 thei_llvm_fpga_mem_lm73_conv2d1x19 (
        .in_flush(in_flush),
        .in_i_address(bubble_select_i_sfc_s_c0_in_for_cond82_preheader_loopexit_conv2d1x1s_c0_enter543_conv2d1x14_aunroll_x_d),
        .in_i_predicate(redist10_stall_entry_vunroll_o17_7_6_q),
        .in_i_stall(SE_out_coalesced_delay_0_fifo_backStall),
        .in_i_valid(SE_out_i_sfc_s_c0_in_for_cond82_preheader_loopexit_conv2d1x1s_c0_enter543_conv2d1x14_aunroll_x_V1),
        .in_lm73_conv2d1x1_avm_readdata(in_lm73_conv2d1x1_avm_readdata),
        .in_lm73_conv2d1x1_avm_readdatavalid(in_lm73_conv2d1x1_avm_readdatavalid),
        .in_lm73_conv2d1x1_avm_waitrequest(in_lm73_conv2d1x1_avm_waitrequest),
        .in_lm73_conv2d1x1_avm_writeack(in_lm73_conv2d1x1_avm_writeack),
        .out_lm73_conv2d1x1_avm_address(i_llvm_fpga_mem_lm73_conv2d1x19_out_lm73_conv2d1x1_avm_address),
        .out_lm73_conv2d1x1_avm_burstcount(i_llvm_fpga_mem_lm73_conv2d1x19_out_lm73_conv2d1x1_avm_burstcount),
        .out_lm73_conv2d1x1_avm_byteenable(i_llvm_fpga_mem_lm73_conv2d1x19_out_lm73_conv2d1x1_avm_byteenable),
        .out_lm73_conv2d1x1_avm_enable(i_llvm_fpga_mem_lm73_conv2d1x19_out_lm73_conv2d1x1_avm_enable),
        .out_lm73_conv2d1x1_avm_read(i_llvm_fpga_mem_lm73_conv2d1x19_out_lm73_conv2d1x1_avm_read),
        .out_lm73_conv2d1x1_avm_write(i_llvm_fpga_mem_lm73_conv2d1x19_out_lm73_conv2d1x1_avm_write),
        .out_lm73_conv2d1x1_avm_writedata(i_llvm_fpga_mem_lm73_conv2d1x19_out_lm73_conv2d1x1_avm_writedata),
        .out_o_readdata(i_llvm_fpga_mem_lm73_conv2d1x19_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_lm73_conv2d1x19_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_lm73_conv2d1x19_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_mem_lm70_conv2d1x18(BLACKBOX,16)@7
    // in in_i_stall@20000000
    // out out_lm70_conv2d1x1_avm_address@20000000
    // out out_lm70_conv2d1x1_avm_burstcount@20000000
    // out out_lm70_conv2d1x1_avm_byteenable@20000000
    // out out_lm70_conv2d1x1_avm_enable@20000000
    // out out_lm70_conv2d1x1_avm_read@20000000
    // out out_lm70_conv2d1x1_avm_write@20000000
    // out out_lm70_conv2d1x1_avm_writedata@20000000
    // out out_o_readdata@136
    // out out_o_stall@20000000
    // out out_o_valid@136
    conv2d1x1_i_llvm_fpga_mem_lm70_0 thei_llvm_fpga_mem_lm70_conv2d1x18 (
        .in_flush(in_flush),
        .in_i_address(bubble_select_i_sfc_s_c0_in_for_cond82_preheader_loopexit_conv2d1x1s_c0_enter543_conv2d1x14_aunroll_x_c),
        .in_i_predicate(redist10_stall_entry_vunroll_o17_7_6_q),
        .in_i_stall(SE_out_coalesced_delay_0_fifo_backStall),
        .in_i_valid(SE_out_i_sfc_s_c0_in_for_cond82_preheader_loopexit_conv2d1x1s_c0_enter543_conv2d1x14_aunroll_x_V0),
        .in_lm70_conv2d1x1_avm_readdata(in_lm70_conv2d1x1_avm_readdata),
        .in_lm70_conv2d1x1_avm_readdatavalid(in_lm70_conv2d1x1_avm_readdatavalid),
        .in_lm70_conv2d1x1_avm_waitrequest(in_lm70_conv2d1x1_avm_waitrequest),
        .in_lm70_conv2d1x1_avm_writeack(in_lm70_conv2d1x1_avm_writeack),
        .out_lm70_conv2d1x1_avm_address(i_llvm_fpga_mem_lm70_conv2d1x18_out_lm70_conv2d1x1_avm_address),
        .out_lm70_conv2d1x1_avm_burstcount(i_llvm_fpga_mem_lm70_conv2d1x18_out_lm70_conv2d1x1_avm_burstcount),
        .out_lm70_conv2d1x1_avm_byteenable(i_llvm_fpga_mem_lm70_conv2d1x18_out_lm70_conv2d1x1_avm_byteenable),
        .out_lm70_conv2d1x1_avm_enable(i_llvm_fpga_mem_lm70_conv2d1x18_out_lm70_conv2d1x1_avm_enable),
        .out_lm70_conv2d1x1_avm_read(i_llvm_fpga_mem_lm70_conv2d1x18_out_lm70_conv2d1x1_avm_read),
        .out_lm70_conv2d1x1_avm_write(i_llvm_fpga_mem_lm70_conv2d1x18_out_lm70_conv2d1x1_avm_write),
        .out_lm70_conv2d1x1_avm_writedata(i_llvm_fpga_mem_lm70_conv2d1x18_out_lm70_conv2d1x1_avm_writedata),
        .out_o_readdata(i_llvm_fpga_mem_lm70_conv2d1x18_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_lm70_conv2d1x18_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_lm70_conv2d1x18_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_stall_entry_vunroll(BITJOIN,127)
    assign bubble_join_stall_entry_vunroll_q = {in_lm17742_3_tpl, in_lm17742_2_tpl, in_lm17742_1_tpl, in_lm17742_0_tpl, in_c1_exe951, in_c1_exe850, in_c1_exe749, in_c1_exe648, in_c1_exe547, in_c1_exe446, in_c1_exe345, in_c1_exe244, in_c1_exe184743, in_c1_exe1456, in_c1_exe1355, in_c1_exe1254, in_c1_exe1153, in_c1_exe1052, in_c0_exe973128, in_c0_exe873027, in_c0_exe772926, in_c0_exe2574741, in_c0_exe2474640, in_c0_exe2374539, in_c0_exe2274438, in_c0_exe2174337, in_c0_exe2074236, in_c0_exe1974135, in_c0_exe1874033, in_c0_exe1773932, in_c0_exe1573731, in_c0_exe1373530, in_c0_exe1273429};

    // bubble_select_stall_entry_vunroll(BITSELECT,128)
    assign bubble_select_stall_entry_vunroll_b = $unsigned(bubble_join_stall_entry_vunroll_q[31:0]);
    assign bubble_select_stall_entry_vunroll_c = $unsigned(bubble_join_stall_entry_vunroll_q[63:32]);
    assign bubble_select_stall_entry_vunroll_d = $unsigned(bubble_join_stall_entry_vunroll_q[64:64]);
    assign bubble_select_stall_entry_vunroll_e = $unsigned(bubble_join_stall_entry_vunroll_q[96:65]);
    assign bubble_select_stall_entry_vunroll_f = $unsigned(bubble_join_stall_entry_vunroll_q[128:97]);
    assign bubble_select_stall_entry_vunroll_g = $unsigned(bubble_join_stall_entry_vunroll_q[129:129]);
    assign bubble_select_stall_entry_vunroll_h = $unsigned(bubble_join_stall_entry_vunroll_q[161:130]);
    assign bubble_select_stall_entry_vunroll_i = $unsigned(bubble_join_stall_entry_vunroll_q[193:162]);
    assign bubble_select_stall_entry_vunroll_j = $unsigned(bubble_join_stall_entry_vunroll_q[225:194]);
    assign bubble_select_stall_entry_vunroll_k = $unsigned(bubble_join_stall_entry_vunroll_q[226:226]);
    assign bubble_select_stall_entry_vunroll_l = $unsigned(bubble_join_stall_entry_vunroll_q[227:227]);
    assign bubble_select_stall_entry_vunroll_m = $unsigned(bubble_join_stall_entry_vunroll_q[228:228]);
    assign bubble_select_stall_entry_vunroll_n = $unsigned(bubble_join_stall_entry_vunroll_q[229:229]);
    assign bubble_select_stall_entry_vunroll_o = $unsigned(bubble_join_stall_entry_vunroll_q[230:230]);
    assign bubble_select_stall_entry_vunroll_p = $unsigned(bubble_join_stall_entry_vunroll_q[262:231]);
    assign bubble_select_stall_entry_vunroll_q = $unsigned(bubble_join_stall_entry_vunroll_q[294:263]);
    assign bubble_select_stall_entry_vunroll_r = $unsigned(bubble_join_stall_entry_vunroll_q[326:295]);
    assign bubble_select_stall_entry_vunroll_s = $unsigned(bubble_join_stall_entry_vunroll_q[358:327]);
    assign bubble_select_stall_entry_vunroll_t = $unsigned(bubble_join_stall_entry_vunroll_q[390:359]);
    assign bubble_select_stall_entry_vunroll_u = $unsigned(bubble_join_stall_entry_vunroll_q[422:391]);
    assign bubble_select_stall_entry_vunroll_v = $unsigned(bubble_join_stall_entry_vunroll_q[454:423]);
    assign bubble_select_stall_entry_vunroll_w = $unsigned(bubble_join_stall_entry_vunroll_q[486:455]);
    assign bubble_select_stall_entry_vunroll_x = $unsigned(bubble_join_stall_entry_vunroll_q[518:487]);
    assign bubble_select_stall_entry_vunroll_y = $unsigned(bubble_join_stall_entry_vunroll_q[550:519]);
    assign bubble_select_stall_entry_vunroll_z = $unsigned(bubble_join_stall_entry_vunroll_q[582:551]);
    assign bubble_select_stall_entry_vunroll_aa = $unsigned(bubble_join_stall_entry_vunroll_q[614:583]);
    assign bubble_select_stall_entry_vunroll_bb = $unsigned(bubble_join_stall_entry_vunroll_q[646:615]);
    assign bubble_select_stall_entry_vunroll_cc = $unsigned(bubble_join_stall_entry_vunroll_q[678:647]);
    assign bubble_select_stall_entry_vunroll_dd = $unsigned(bubble_join_stall_entry_vunroll_q[710:679]);
    assign bubble_select_stall_entry_vunroll_ee = $unsigned(bubble_join_stall_entry_vunroll_q[742:711]);
    assign bubble_select_stall_entry_vunroll_ff = $unsigned(bubble_join_stall_entry_vunroll_q[774:743]);
    assign bubble_select_stall_entry_vunroll_gg = $unsigned(bubble_join_stall_entry_vunroll_q[806:775]);
    assign bubble_select_stall_entry_vunroll_hh = $unsigned(bubble_join_stall_entry_vunroll_q[838:807]);

    // i_add98_conv2d1x16(ADD,8)@0
    assign i_add98_conv2d1x16_a = {1'b0, bubble_select_stall_entry_vunroll_c};
    assign i_add98_conv2d1x16_b = {1'b0, bubble_select_stall_entry_vunroll_f};
    assign i_add98_conv2d1x16_o = $unsigned(i_add98_conv2d1x16_a) + $unsigned(i_add98_conv2d1x16_b);
    assign i_add98_conv2d1x16_q = i_add98_conv2d1x16_o[32:0];

    // bgTrunc_i_add98_conv2d1x16_sel_x(BITSELECT,45)@0
    assign bgTrunc_i_add98_conv2d1x16_sel_x_b = i_add98_conv2d1x16_q[31:0];

    // i_idxprom99_conv2d1x110_sel_x(BITSELECT,60)@0
    assign i_idxprom99_conv2d1x110_sel_x_b = {32'b00000000000000000000000000000000, bgTrunc_i_add98_conv2d1x16_sel_x_b[31:0]};

    // i_idxprom99_conv2d1x110_vt_select_31(BITSELECT,15)@0
    assign i_idxprom99_conv2d1x110_vt_select_31_b = i_idxprom99_conv2d1x110_sel_x_b[31:0];

    // bubble_join_i_sfc_s_c1_in_for_cond82_preheader_loopexit_conv2d1x1s_c1_enter_conv2d1x133_aunroll_vunroll_x(BITJOIN,135)
    assign bubble_join_i_sfc_s_c1_in_for_cond82_preheader_loopexit_conv2d1x1s_c1_enter_conv2d1x133_aunroll_vunroll_x_q = i_sfc_s_c1_in_for_cond82_preheader_loopexit_conv2d1x1s_c1_enter_conv2d1x133_aunroll_vunroll_x_out_c1_exit_1_tpl;

    // bubble_select_i_sfc_s_c1_in_for_cond82_preheader_loopexit_conv2d1x1s_c1_enter_conv2d1x133_aunroll_vunroll_x(BITSELECT,136)
    assign bubble_select_i_sfc_s_c1_in_for_cond82_preheader_loopexit_conv2d1x1s_c1_enter_conv2d1x133_aunroll_vunroll_x_b = $unsigned(bubble_join_i_sfc_s_c1_in_for_cond82_preheader_loopexit_conv2d1x1s_c1_enter_conv2d1x133_aunroll_vunroll_x_q[31:0]);

    // SE_out_coalesced_delay_1_fifo(STALLENABLE,196)
    // Valid signal propagation
    assign SE_out_coalesced_delay_1_fifo_V0 = SE_out_coalesced_delay_1_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_coalesced_delay_1_fifo_backStall = in_stall_in | ~ (SE_out_coalesced_delay_1_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_coalesced_delay_1_fifo_and0 = coalesced_delay_1_fifo_valid_out;
    assign SE_out_coalesced_delay_1_fifo_wireValid = i_llvm_fpga_mem_unnamed_conv2d1x113_conv2d1x136_out_o_valid & SE_out_coalesced_delay_1_fifo_and0;

    // bubble_join_redist0_stall_entry_vunroll_o6_188_fifo(BITJOIN,138)
    assign bubble_join_redist0_stall_entry_vunroll_o6_188_fifo_q = redist0_stall_entry_vunroll_o6_188_fifo_data_out;

    // bubble_select_redist0_stall_entry_vunroll_o6_188_fifo(BITSELECT,139)
    assign bubble_select_redist0_stall_entry_vunroll_o6_188_fifo_b = $unsigned(bubble_join_redist0_stall_entry_vunroll_o6_188_fifo_q[0:0]);

    // i_idxprom99_conv2d1x110_vt_const_63(CONSTANT,13)
    assign i_idxprom99_conv2d1x110_vt_const_63_q = $unsigned(32'b00000000000000000000000000000000);

    // bubble_join_redist29_i_idxprom99_conv2d1x110_vt_select_31_b_188_fifo(BITJOIN,141)
    assign bubble_join_redist29_i_idxprom99_conv2d1x110_vt_select_31_b_188_fifo_q = redist29_i_idxprom99_conv2d1x110_vt_select_31_b_188_fifo_data_out;

    // bubble_select_redist29_i_idxprom99_conv2d1x110_vt_select_31_b_188_fifo(BITSELECT,142)
    assign bubble_select_redist29_i_idxprom99_conv2d1x110_vt_select_31_b_188_fifo_b = $unsigned(bubble_join_redist29_i_idxprom99_conv2d1x110_vt_select_31_b_188_fifo_q[31:0]);

    // i_idxprom99_conv2d1x110_vt_join(BITJOIN,14)@188
    assign i_idxprom99_conv2d1x110_vt_join_q = {i_idxprom99_conv2d1x110_vt_const_63_q, bubble_select_redist29_i_idxprom99_conv2d1x110_vt_select_31_b_188_fifo_b};

    // i_arrayidx1002_conv2d1x10_narrow_x(BITSELECT,56)@188
    assign i_arrayidx1002_conv2d1x10_narrow_x_b = i_idxprom99_conv2d1x110_vt_join_q[61:0];

    // i_arrayidx1002_conv2d1x10_shift_join_x(BITJOIN,57)@188
    assign i_arrayidx1002_conv2d1x10_shift_join_x_q = {i_arrayidx1002_conv2d1x10_narrow_x_b, i_arrayidx1002_conv2d1x135_vt_const_1_q};

    // bubble_join_i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_conv2d1x10(BITJOIN,124)
    assign bubble_join_i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_conv2d1x10_q = i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_conv2d1x10_out_buffer_out;

    // bubble_select_i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_conv2d1x10(BITSELECT,125)
    assign bubble_select_i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_conv2d1x10_b = $unsigned(bubble_join_i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_conv2d1x10_q[63:0]);

    // i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_conv2d1x10_vt_select_63(BITSELECT,23)@188
    assign i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_conv2d1x10_vt_select_63_b = bubble_select_i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_conv2d1x10_b[63:10];

    // i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_conv2d1x10_vt_const_9(CONSTANT,21)
    assign i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_conv2d1x10_vt_const_9_q = $unsigned(10'b0000000000);

    // i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_conv2d1x10_vt_join(BITJOIN,22)@188
    assign i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_conv2d1x10_vt_join_q = {i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_conv2d1x10_vt_select_63_b, i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_conv2d1x10_vt_const_9_q};

    // i_arrayidx1002_conv2d1x10_add_x(ADD,54)@188
    assign i_arrayidx1002_conv2d1x10_add_x_a = {1'b0, i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_conv2d1x10_vt_join_q};
    assign i_arrayidx1002_conv2d1x10_add_x_b = {1'b0, i_arrayidx1002_conv2d1x10_shift_join_x_q};
    assign i_arrayidx1002_conv2d1x10_add_x_o = $unsigned(i_arrayidx1002_conv2d1x10_add_x_a) + $unsigned(i_arrayidx1002_conv2d1x10_add_x_b);
    assign i_arrayidx1002_conv2d1x10_add_x_q = i_arrayidx1002_conv2d1x10_add_x_o[64:0];

    // i_arrayidx1002_conv2d1x10_dupName_0_trunc_sel_x(BITSELECT,59)@188
    assign i_arrayidx1002_conv2d1x10_dupName_0_trunc_sel_x_b = i_arrayidx1002_conv2d1x10_add_x_q[63:0];

    // i_arrayidx1002_conv2d1x135_vt_select_63(BITSELECT,11)@188
    assign i_arrayidx1002_conv2d1x135_vt_select_63_b = i_arrayidx1002_conv2d1x10_dupName_0_trunc_sel_x_b[63:2];

    // i_arrayidx1002_conv2d1x135_vt_const_1(CONSTANT,9)
    assign i_arrayidx1002_conv2d1x135_vt_const_1_q = $unsigned(2'b00);

    // i_arrayidx1002_conv2d1x135_vt_join(BITJOIN,10)@188
    assign i_arrayidx1002_conv2d1x135_vt_join_q = {i_arrayidx1002_conv2d1x135_vt_select_63_b, i_arrayidx1002_conv2d1x135_vt_const_1_q};

    // i_llvm_fpga_mem_unnamed_conv2d1x113_conv2d1x136(BLACKBOX,19)@188
    // in in_i_stall@20000000
    // out out_lsu_unnamed_conv2d1x113_o_active@20000000
    // out out_o_stall@20000000
    // out out_o_valid@190
    // out out_unnamed_conv2d1x113_conv2d1x1_avm_address@20000000
    // out out_unnamed_conv2d1x113_conv2d1x1_avm_burstcount@20000000
    // out out_unnamed_conv2d1x113_conv2d1x1_avm_byteenable@20000000
    // out out_unnamed_conv2d1x113_conv2d1x1_avm_enable@20000000
    // out out_unnamed_conv2d1x113_conv2d1x1_avm_read@20000000
    // out out_unnamed_conv2d1x113_conv2d1x1_avm_write@20000000
    // out out_unnamed_conv2d1x113_conv2d1x1_avm_writedata@20000000
    conv2d1x1_i_llvm_fpga_mem_unnamed_13_conv2d1x10 thei_llvm_fpga_mem_unnamed_conv2d1x113_conv2d1x136 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx1002_conv2d1x135_vt_join_q),
        .in_i_predicate(bubble_select_redist0_stall_entry_vunroll_o6_188_fifo_b),
        .in_i_stall(SE_out_coalesced_delay_1_fifo_backStall),
        .in_i_valid(SE_out_redist29_i_idxprom99_conv2d1x110_vt_select_31_b_188_fifo_V0),
        .in_i_writedata(bubble_select_i_sfc_s_c1_in_for_cond82_preheader_loopexit_conv2d1x1s_c1_enter_conv2d1x133_aunroll_vunroll_x_b),
        .in_unnamed_conv2d1x113_conv2d1x1_avm_readdata(in_unnamed_conv2d1x113_conv2d1x1_avm_readdata),
        .in_unnamed_conv2d1x113_conv2d1x1_avm_readdatavalid(in_unnamed_conv2d1x113_conv2d1x1_avm_readdatavalid),
        .in_unnamed_conv2d1x113_conv2d1x1_avm_waitrequest(in_unnamed_conv2d1x113_conv2d1x1_avm_waitrequest),
        .in_unnamed_conv2d1x113_conv2d1x1_avm_writeack(in_unnamed_conv2d1x113_conv2d1x1_avm_writeack),
        .out_lsu_unnamed_conv2d1x113_o_active(i_llvm_fpga_mem_unnamed_conv2d1x113_conv2d1x136_out_lsu_unnamed_conv2d1x113_o_active),
        .out_o_stall(i_llvm_fpga_mem_unnamed_conv2d1x113_conv2d1x136_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_unnamed_conv2d1x113_conv2d1x136_out_o_valid),
        .out_unnamed_conv2d1x113_conv2d1x1_avm_address(i_llvm_fpga_mem_unnamed_conv2d1x113_conv2d1x136_out_unnamed_conv2d1x113_conv2d1x1_avm_address),
        .out_unnamed_conv2d1x113_conv2d1x1_avm_burstcount(i_llvm_fpga_mem_unnamed_conv2d1x113_conv2d1x136_out_unnamed_conv2d1x113_conv2d1x1_avm_burstcount),
        .out_unnamed_conv2d1x113_conv2d1x1_avm_byteenable(i_llvm_fpga_mem_unnamed_conv2d1x113_conv2d1x136_out_unnamed_conv2d1x113_conv2d1x1_avm_byteenable),
        .out_unnamed_conv2d1x113_conv2d1x1_avm_enable(i_llvm_fpga_mem_unnamed_conv2d1x113_conv2d1x136_out_unnamed_conv2d1x113_conv2d1x1_avm_enable),
        .out_unnamed_conv2d1x113_conv2d1x1_avm_read(i_llvm_fpga_mem_unnamed_conv2d1x113_conv2d1x136_out_unnamed_conv2d1x113_conv2d1x1_avm_read),
        .out_unnamed_conv2d1x113_conv2d1x1_avm_write(i_llvm_fpga_mem_unnamed_conv2d1x113_conv2d1x136_out_unnamed_conv2d1x113_conv2d1x1_avm_write),
        .out_unnamed_conv2d1x113_conv2d1x1_avm_writedata(i_llvm_fpga_mem_unnamed_conv2d1x113_conv2d1x136_out_unnamed_conv2d1x113_conv2d1x1_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_mem_lm73_conv2d1x19(BITJOIN,117)
    assign bubble_join_i_llvm_fpga_mem_lm73_conv2d1x19_q = i_llvm_fpga_mem_lm73_conv2d1x19_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_lm73_conv2d1x19(BITSELECT,118)
    assign bubble_select_i_llvm_fpga_mem_lm73_conv2d1x19_b = $unsigned(bubble_join_i_llvm_fpga_mem_lm73_conv2d1x19_q[31:0]);

    // bubble_join_i_llvm_fpga_mem_lm70_conv2d1x18(BITJOIN,114)
    assign bubble_join_i_llvm_fpga_mem_lm70_conv2d1x18_q = i_llvm_fpga_mem_lm70_conv2d1x18_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_lm70_conv2d1x18(BITSELECT,115)
    assign bubble_select_i_llvm_fpga_mem_lm70_conv2d1x18_b = $unsigned(bubble_join_i_llvm_fpga_mem_lm70_conv2d1x18_q[31:0]);

    // bubble_join_i_llvm_fpga_mem_lm_conv2d1x17(BITJOIN,120)
    assign bubble_join_i_llvm_fpga_mem_lm_conv2d1x17_q = i_llvm_fpga_mem_lm_conv2d1x17_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_lm_conv2d1x17(BITSELECT,121)
    assign bubble_select_i_llvm_fpga_mem_lm_conv2d1x17_b = $unsigned(bubble_join_i_llvm_fpga_mem_lm_conv2d1x17_q[31:0]);

    // bubble_join_coalesced_delay_0_fifo(BITJOIN,144)
    assign bubble_join_coalesced_delay_0_fifo_q = coalesced_delay_0_fifo_data_out;

    // bubble_select_coalesced_delay_0_fifo(BITSELECT,145)
    assign bubble_select_coalesced_delay_0_fifo_b = $unsigned(bubble_join_coalesced_delay_0_fifo_q[706:0]);

    // sel_for_coalesced_delay_0(BITSELECT,98)
    assign sel_for_coalesced_delay_0_b = $unsigned(bubble_select_coalesced_delay_0_fifo_b[31:0]);
    assign sel_for_coalesced_delay_0_c = $unsigned(bubble_select_coalesced_delay_0_fifo_b[63:32]);
    assign sel_for_coalesced_delay_0_d = $unsigned(bubble_select_coalesced_delay_0_fifo_b[95:64]);
    assign sel_for_coalesced_delay_0_e = $unsigned(bubble_select_coalesced_delay_0_fifo_b[127:96]);
    assign sel_for_coalesced_delay_0_f = $unsigned(bubble_select_coalesced_delay_0_fifo_b[159:128]);
    assign sel_for_coalesced_delay_0_g = $unsigned(bubble_select_coalesced_delay_0_fifo_b[191:160]);
    assign sel_for_coalesced_delay_0_h = $unsigned(bubble_select_coalesced_delay_0_fifo_b[223:192]);
    assign sel_for_coalesced_delay_0_i = $unsigned(bubble_select_coalesced_delay_0_fifo_b[255:224]);
    assign sel_for_coalesced_delay_0_j = $unsigned(bubble_select_coalesced_delay_0_fifo_b[287:256]);
    assign sel_for_coalesced_delay_0_k = $unsigned(bubble_select_coalesced_delay_0_fifo_b[319:288]);
    assign sel_for_coalesced_delay_0_l = $unsigned(bubble_select_coalesced_delay_0_fifo_b[351:320]);
    assign sel_for_coalesced_delay_0_m = $unsigned(bubble_select_coalesced_delay_0_fifo_b[383:352]);
    assign sel_for_coalesced_delay_0_n = $unsigned(bubble_select_coalesced_delay_0_fifo_b[415:384]);
    assign sel_for_coalesced_delay_0_o = $unsigned(bubble_select_coalesced_delay_0_fifo_b[447:416]);
    assign sel_for_coalesced_delay_0_p = $unsigned(bubble_select_coalesced_delay_0_fifo_b[479:448]);
    assign sel_for_coalesced_delay_0_q = $unsigned(bubble_select_coalesced_delay_0_fifo_b[511:480]);
    assign sel_for_coalesced_delay_0_r = $unsigned(bubble_select_coalesced_delay_0_fifo_b[543:512]);
    assign sel_for_coalesced_delay_0_s = $unsigned(bubble_select_coalesced_delay_0_fifo_b[575:544]);
    assign sel_for_coalesced_delay_0_t = $unsigned(bubble_select_coalesced_delay_0_fifo_b[607:576]);
    assign sel_for_coalesced_delay_0_u = $unsigned(bubble_select_coalesced_delay_0_fifo_b[639:608]);
    assign sel_for_coalesced_delay_0_v = $unsigned(bubble_select_coalesced_delay_0_fifo_b[671:640]);
    assign sel_for_coalesced_delay_0_w = $unsigned(bubble_select_coalesced_delay_0_fifo_b[703:672]);
    assign sel_for_coalesced_delay_0_x = $unsigned(bubble_select_coalesced_delay_0_fifo_b[704:704]);
    assign sel_for_coalesced_delay_0_y = $unsigned(bubble_select_coalesced_delay_0_fifo_b[705:705]);
    assign sel_for_coalesced_delay_0_z = $unsigned(bubble_select_coalesced_delay_0_fifo_b[706:706]);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_sfc_s_c1_in_for_cond82_preheader_loopexit_conv2d1x1s_c1_enter_conv2d1x133_aunroll_vunroll_x(BLACKBOX,63)@136
    // in in_i_stall@20000000
    // out out_o_stall@20000000
    // out out_o_valid@188
    // out out_c1_exit_0_tpl@188
    // out out_c1_exit_1_tpl@188
    conv2d1x1_i_sfc_s_c1_in_for_cond82_prehe0000c1_enter_conv2d1x133 thei_sfc_s_c1_in_for_cond82_preheader_loopexit_conv2d1x1s_c1_enter_conv2d1x133_aunroll_vunroll_x (
        .in_i_stall(SE_out_redist29_i_idxprom99_conv2d1x110_vt_select_31_b_188_fifo_backStall),
        .in_i_valid(SE_out_coalesced_delay_0_fifo_V0),
        .in_c1_eni25_0_tpl(GND_q),
        .in_c1_eni25_0_1_tpl(sel_for_coalesced_delay_0_f),
        .in_c1_eni25_1_1_tpl(sel_for_coalesced_delay_0_e),
        .in_c1_eni25_2_tpl(sel_for_coalesced_delay_0_p),
        .in_c1_eni25_2_1_tpl(sel_for_coalesced_delay_0_d),
        .in_c1_eni25_3_tpl(bubble_select_i_llvm_fpga_mem_lm_conv2d1x17_b),
        .in_c1_eni25_3_1_tpl(sel_for_coalesced_delay_0_c),
        .in_c1_eni25_4_tpl(bubble_select_i_llvm_fpga_mem_lm70_conv2d1x18_b),
        .in_c1_eni25_5_tpl(bubble_select_i_llvm_fpga_mem_lm73_conv2d1x19_b),
        .in_c1_eni25_6_tpl(sel_for_coalesced_delay_0_w),
        .in_c1_eni25_7_tpl(sel_for_coalesced_delay_0_z),
        .in_c1_eni25_8_tpl(sel_for_coalesced_delay_0_x),
        .in_c1_eni25_9_tpl(sel_for_coalesced_delay_0_y),
        .in_c1_eni25_10_tpl(sel_for_coalesced_delay_0_v),
        .in_c1_eni25_11_tpl(sel_for_coalesced_delay_0_u),
        .in_c1_eni25_12_tpl(sel_for_coalesced_delay_0_o),
        .in_c1_eni25_13_tpl(sel_for_coalesced_delay_0_q),
        .in_c1_eni25_14_tpl(sel_for_coalesced_delay_0_r),
        .in_c1_eni25_15_tpl(sel_for_coalesced_delay_0_s),
        .in_c1_eni25_16_tpl(sel_for_coalesced_delay_0_t),
        .in_c1_eni25_17_tpl(sel_for_coalesced_delay_0_g),
        .in_c1_eni25_18_tpl(sel_for_coalesced_delay_0_h),
        .in_c1_eni25_19_tpl(sel_for_coalesced_delay_0_i),
        .in_c1_eni25_20_tpl(sel_for_coalesced_delay_0_j),
        .in_c1_eni25_21_tpl(sel_for_coalesced_delay_0_k),
        .in_c1_eni25_22_tpl(sel_for_coalesced_delay_0_l),
        .in_c1_eni25_23_tpl(sel_for_coalesced_delay_0_m),
        .in_c1_eni25_24_tpl(sel_for_coalesced_delay_0_n),
        .in_c1_eni25_25_tpl(sel_for_coalesced_delay_0_b),
        .out_o_stall(i_sfc_s_c1_in_for_cond82_preheader_loopexit_conv2d1x1s_c1_enter_conv2d1x133_aunroll_vunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c1_in_for_cond82_preheader_loopexit_conv2d1x1s_c1_enter_conv2d1x133_aunroll_vunroll_x_out_o_valid),
        .out_c1_exit_0_tpl(),
        .out_c1_exit_1_tpl(i_sfc_s_c1_in_for_cond82_preheader_loopexit_conv2d1x1s_c1_enter_conv2d1x133_aunroll_vunroll_x_out_c1_exit_1_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_bubble_out_stall_entry_vunroll_1(STALLENABLE,220)
    // Valid signal propagation
    assign SE_out_bubble_out_stall_entry_vunroll_1_V0 = SE_out_bubble_out_stall_entry_vunroll_1_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_stall_entry_vunroll_1_backStall = i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_conv2d1x10_out_stall_out | ~ (SE_out_bubble_out_stall_entry_vunroll_1_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_stall_entry_vunroll_1_wireValid = bubble_out_stall_entry_vunroll_1_reg_valid_out;

    // i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_conv2d1x10(BLACKBOX,20)@188
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    conv2d1x1_i_llvm_fpga_sync_buffer_p1024f0000put_im_sync_buffer_0 thei_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_conv2d1x10 (
        .in_buffer_in(in_output_im),
        .in_i_dependence(GND_q),
        .in_stall_in(SE_out_redist29_i_idxprom99_conv2d1x110_vt_select_31_b_188_fifo_backStall),
        .in_valid_in(SE_out_bubble_out_stall_entry_vunroll_1_V0),
        .out_buffer_out(i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_conv2d1x10_out_buffer_out),
        .out_stall_out(i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_conv2d1x10_out_stall_out),
        .out_valid_out(i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_conv2d1x10_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_redist29_i_idxprom99_conv2d1x110_vt_select_31_b_188_fifo(STALLENABLE,192)
    // Valid signal propagation
    assign SE_out_redist29_i_idxprom99_conv2d1x110_vt_select_31_b_188_fifo_V0 = SE_out_redist29_i_idxprom99_conv2d1x110_vt_select_31_b_188_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_redist29_i_idxprom99_conv2d1x110_vt_select_31_b_188_fifo_backStall = i_llvm_fpga_mem_unnamed_conv2d1x113_conv2d1x136_out_o_stall | ~ (SE_out_redist29_i_idxprom99_conv2d1x110_vt_select_31_b_188_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_redist29_i_idxprom99_conv2d1x110_vt_select_31_b_188_fifo_and0 = redist29_i_idxprom99_conv2d1x110_vt_select_31_b_188_fifo_valid_out;
    assign SE_out_redist29_i_idxprom99_conv2d1x110_vt_select_31_b_188_fifo_and1 = redist0_stall_entry_vunroll_o6_188_fifo_valid_out & SE_out_redist29_i_idxprom99_conv2d1x110_vt_select_31_b_188_fifo_and0;
    assign SE_out_redist29_i_idxprom99_conv2d1x110_vt_select_31_b_188_fifo_and2 = i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_conv2d1x10_out_valid_out & SE_out_redist29_i_idxprom99_conv2d1x110_vt_select_31_b_188_fifo_and1;
    assign SE_out_redist29_i_idxprom99_conv2d1x110_vt_select_31_b_188_fifo_wireValid = i_sfc_s_c1_in_for_cond82_preheader_loopexit_conv2d1x1s_c1_enter_conv2d1x133_aunroll_vunroll_x_out_o_valid & SE_out_redist29_i_idxprom99_conv2d1x110_vt_select_31_b_188_fifo_and2;

    // redist29_i_idxprom99_conv2d1x110_vt_select_31_b_188_fifo(STALLFIFO,110)
    assign redist29_i_idxprom99_conv2d1x110_vt_select_31_b_188_fifo_valid_in = SE_stall_entry_vunroll_V6;
    assign redist29_i_idxprom99_conv2d1x110_vt_select_31_b_188_fifo_stall_in = SE_out_redist29_i_idxprom99_conv2d1x110_vt_select_31_b_188_fifo_backStall;
    assign redist29_i_idxprom99_conv2d1x110_vt_select_31_b_188_fifo_data_in = i_idxprom99_conv2d1x110_vt_select_31_b;
    assign redist29_i_idxprom99_conv2d1x110_vt_select_31_b_188_fifo_valid_in_bitsignaltemp = redist29_i_idxprom99_conv2d1x110_vt_select_31_b_188_fifo_valid_in[0];
    assign redist29_i_idxprom99_conv2d1x110_vt_select_31_b_188_fifo_stall_in_bitsignaltemp = redist29_i_idxprom99_conv2d1x110_vt_select_31_b_188_fifo_stall_in[0];
    assign redist29_i_idxprom99_conv2d1x110_vt_select_31_b_188_fifo_valid_out[0] = redist29_i_idxprom99_conv2d1x110_vt_select_31_b_188_fifo_valid_out_bitsignaltemp;
    assign redist29_i_idxprom99_conv2d1x110_vt_select_31_b_188_fifo_stall_out[0] = redist29_i_idxprom99_conv2d1x110_vt_select_31_b_188_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(189),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(32),
        .IMPL("ram")
    ) theredist29_i_idxprom99_conv2d1x110_vt_select_31_b_188_fifo (
        .valid_in(redist29_i_idxprom99_conv2d1x110_vt_select_31_b_188_fifo_valid_in_bitsignaltemp),
        .stall_in(redist29_i_idxprom99_conv2d1x110_vt_select_31_b_188_fifo_stall_in_bitsignaltemp),
        .data_in(i_idxprom99_conv2d1x110_vt_select_31_b),
        .valid_out(redist29_i_idxprom99_conv2d1x110_vt_select_31_b_188_fifo_valid_out_bitsignaltemp),
        .stall_out(redist29_i_idxprom99_conv2d1x110_vt_select_31_b_188_fifo_stall_out_bitsignaltemp),
        .data_out(redist29_i_idxprom99_conv2d1x110_vt_select_31_b_188_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // join_for_coalesced_delay_1(BITJOIN,100)
    assign join_for_coalesced_delay_1_q = {bubble_select_stall_entry_vunroll_m, bubble_select_stall_entry_vunroll_g};

    // coalesced_delay_1_fifo(STALLFIFO,112)
    assign coalesced_delay_1_fifo_valid_in = SE_stall_entry_vunroll_V4;
    assign coalesced_delay_1_fifo_stall_in = SE_out_coalesced_delay_1_fifo_backStall;
    assign coalesced_delay_1_fifo_data_in = join_for_coalesced_delay_1_q;
    assign coalesced_delay_1_fifo_valid_in_bitsignaltemp = coalesced_delay_1_fifo_valid_in[0];
    assign coalesced_delay_1_fifo_stall_in_bitsignaltemp = coalesced_delay_1_fifo_stall_in[0];
    assign coalesced_delay_1_fifo_valid_out[0] = coalesced_delay_1_fifo_valid_out_bitsignaltemp;
    assign coalesced_delay_1_fifo_stall_out[0] = coalesced_delay_1_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(191),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(2),
        .IMPL("ram")
    ) thecoalesced_delay_1_fifo (
        .valid_in(coalesced_delay_1_fifo_valid_in_bitsignaltemp),
        .stall_in(coalesced_delay_1_fifo_stall_in_bitsignaltemp),
        .data_in(join_for_coalesced_delay_1_q),
        .valid_out(coalesced_delay_1_fifo_valid_out_bitsignaltemp),
        .stall_out(coalesced_delay_1_fifo_stall_out_bitsignaltemp),
        .data_out(coalesced_delay_1_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // join_for_coalesced_delay_0(BITJOIN,97)
    assign join_for_coalesced_delay_0_q = {bubble_select_stall_entry_vunroll_k, bubble_select_stall_entry_vunroll_l, bubble_select_stall_entry_vunroll_n, bubble_select_stall_entry_vunroll_h, bubble_select_stall_entry_vunroll_i, bubble_select_stall_entry_vunroll_j, bubble_select_stall_entry_vunroll_q, bubble_select_stall_entry_vunroll_r, bubble_select_stall_entry_vunroll_s, bubble_select_stall_entry_vunroll_t, bubble_select_stall_entry_vunroll_u, bubble_select_stall_entry_vunroll_e, bubble_select_stall_entry_vunroll_w, bubble_select_stall_entry_vunroll_x, bubble_select_stall_entry_vunroll_y, bubble_select_stall_entry_vunroll_z, bubble_select_stall_entry_vunroll_aa, bubble_select_stall_entry_vunroll_bb, bubble_select_stall_entry_vunroll_cc, bubble_select_stall_entry_vunroll_dd, bubble_select_stall_entry_vunroll_ee, bubble_select_stall_entry_vunroll_ff, bubble_select_stall_entry_vunroll_gg, bubble_select_stall_entry_vunroll_hh, bubble_select_stall_entry_vunroll_v};

    // coalesced_delay_0_fifo(STALLFIFO,111)
    assign coalesced_delay_0_fifo_valid_in = SE_stall_entry_vunroll_V3;
    assign coalesced_delay_0_fifo_stall_in = SE_out_coalesced_delay_0_fifo_backStall;
    assign coalesced_delay_0_fifo_data_in = join_for_coalesced_delay_0_q;
    assign coalesced_delay_0_fifo_valid_in_bitsignaltemp = coalesced_delay_0_fifo_valid_in[0];
    assign coalesced_delay_0_fifo_stall_in_bitsignaltemp = coalesced_delay_0_fifo_stall_in[0];
    assign coalesced_delay_0_fifo_valid_out[0] = coalesced_delay_0_fifo_valid_out_bitsignaltemp;
    assign coalesced_delay_0_fifo_stall_out[0] = coalesced_delay_0_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(137),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(707),
        .IMPL("ram")
    ) thecoalesced_delay_0_fifo (
        .valid_in(coalesced_delay_0_fifo_valid_in_bitsignaltemp),
        .stall_in(coalesced_delay_0_fifo_stall_in_bitsignaltemp),
        .data_in(join_for_coalesced_delay_0_q),
        .valid_out(coalesced_delay_0_fifo_valid_out_bitsignaltemp),
        .stall_out(coalesced_delay_0_fifo_stall_out_bitsignaltemp),
        .data_out(coalesced_delay_0_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // redist0_stall_entry_vunroll_o6_188_fifo(STALLFIFO,102)
    assign redist0_stall_entry_vunroll_o6_188_fifo_valid_in = SE_stall_entry_vunroll_V2;
    assign redist0_stall_entry_vunroll_o6_188_fifo_stall_in = SE_out_redist29_i_idxprom99_conv2d1x110_vt_select_31_b_188_fifo_backStall;
    assign redist0_stall_entry_vunroll_o6_188_fifo_data_in = bubble_select_stall_entry_vunroll_d;
    assign redist0_stall_entry_vunroll_o6_188_fifo_valid_in_bitsignaltemp = redist0_stall_entry_vunroll_o6_188_fifo_valid_in[0];
    assign redist0_stall_entry_vunroll_o6_188_fifo_stall_in_bitsignaltemp = redist0_stall_entry_vunroll_o6_188_fifo_stall_in[0];
    assign redist0_stall_entry_vunroll_o6_188_fifo_valid_out[0] = redist0_stall_entry_vunroll_o6_188_fifo_valid_out_bitsignaltemp;
    assign redist0_stall_entry_vunroll_o6_188_fifo_stall_out[0] = redist0_stall_entry_vunroll_o6_188_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(189),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist0_stall_entry_vunroll_o6_188_fifo (
        .valid_in(redist0_stall_entry_vunroll_o6_188_fifo_valid_in_bitsignaltemp),
        .stall_in(redist0_stall_entry_vunroll_o6_188_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_stall_entry_vunroll_d),
        .valid_out(redist0_stall_entry_vunroll_o6_188_fifo_valid_out_bitsignaltemp),
        .stall_out(redist0_stall_entry_vunroll_o6_188_fifo_stall_out_bitsignaltemp),
        .data_out(redist0_stall_entry_vunroll_o6_188_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_out_stall_entry_vunroll_1_reg(STALLFIFO,247)
    assign bubble_out_stall_entry_vunroll_1_reg_valid_in = SE_stall_entry_vunroll_V0;
    assign bubble_out_stall_entry_vunroll_1_reg_stall_in = SE_out_bubble_out_stall_entry_vunroll_1_backStall;
    assign bubble_out_stall_entry_vunroll_1_reg_valid_in_bitsignaltemp = bubble_out_stall_entry_vunroll_1_reg_valid_in[0];
    assign bubble_out_stall_entry_vunroll_1_reg_stall_in_bitsignaltemp = bubble_out_stall_entry_vunroll_1_reg_stall_in[0];
    assign bubble_out_stall_entry_vunroll_1_reg_valid_out[0] = bubble_out_stall_entry_vunroll_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_stall_entry_vunroll_1_reg_stall_out[0] = bubble_out_stall_entry_vunroll_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(189),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_stall_entry_vunroll_1_reg (
        .valid_in(bubble_out_stall_entry_vunroll_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_stall_entry_vunroll_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_stall_entry_vunroll_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_stall_entry_vunroll_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_stall_entry_vunroll(STALLENABLE,166)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_stall_entry_vunroll_fromReg0 <= '0;
            SE_stall_entry_vunroll_fromReg1 <= '0;
            SE_stall_entry_vunroll_fromReg2 <= '0;
            SE_stall_entry_vunroll_fromReg3 <= '0;
            SE_stall_entry_vunroll_fromReg4 <= '0;
            SE_stall_entry_vunroll_fromReg5 <= '0;
            SE_stall_entry_vunroll_fromReg6 <= '0;
        end
        else
        begin
            // Successor 0
            SE_stall_entry_vunroll_fromReg0 <= SE_stall_entry_vunroll_toReg0;
            // Successor 1
            SE_stall_entry_vunroll_fromReg1 <= SE_stall_entry_vunroll_toReg1;
            // Successor 2
            SE_stall_entry_vunroll_fromReg2 <= SE_stall_entry_vunroll_toReg2;
            // Successor 3
            SE_stall_entry_vunroll_fromReg3 <= SE_stall_entry_vunroll_toReg3;
            // Successor 4
            SE_stall_entry_vunroll_fromReg4 <= SE_stall_entry_vunroll_toReg4;
            // Successor 5
            SE_stall_entry_vunroll_fromReg5 <= SE_stall_entry_vunroll_toReg5;
            // Successor 6
            SE_stall_entry_vunroll_fromReg6 <= SE_stall_entry_vunroll_toReg6;
        end
    end
    // Input Stall processing
    assign SE_stall_entry_vunroll_consumed0 = (~ (bubble_out_stall_entry_vunroll_1_reg_stall_out) & SE_stall_entry_vunroll_wireValid) | SE_stall_entry_vunroll_fromReg0;
    assign SE_stall_entry_vunroll_consumed1 = (~ (SE_redist10_stall_entry_vunroll_o17_7_0_backStall) & SE_stall_entry_vunroll_wireValid) | SE_stall_entry_vunroll_fromReg1;
    assign SE_stall_entry_vunroll_consumed2 = (~ (redist0_stall_entry_vunroll_o6_188_fifo_stall_out) & SE_stall_entry_vunroll_wireValid) | SE_stall_entry_vunroll_fromReg2;
    assign SE_stall_entry_vunroll_consumed3 = (~ (coalesced_delay_0_fifo_stall_out) & SE_stall_entry_vunroll_wireValid) | SE_stall_entry_vunroll_fromReg3;
    assign SE_stall_entry_vunroll_consumed4 = (~ (coalesced_delay_1_fifo_stall_out) & SE_stall_entry_vunroll_wireValid) | SE_stall_entry_vunroll_fromReg4;
    assign SE_stall_entry_vunroll_consumed5 = (~ (i_sfc_s_c0_in_for_cond82_preheader_loopexit_conv2d1x1s_c0_enter543_conv2d1x14_aunroll_x_out_o_stall) & SE_stall_entry_vunroll_wireValid) | SE_stall_entry_vunroll_fromReg5;
    assign SE_stall_entry_vunroll_consumed6 = (~ (redist29_i_idxprom99_conv2d1x110_vt_select_31_b_188_fifo_stall_out) & SE_stall_entry_vunroll_wireValid) | SE_stall_entry_vunroll_fromReg6;
    // Consuming
    assign SE_stall_entry_vunroll_StallValid = SE_stall_entry_vunroll_backStall & SE_stall_entry_vunroll_wireValid;
    assign SE_stall_entry_vunroll_toReg0 = SE_stall_entry_vunroll_StallValid & SE_stall_entry_vunroll_consumed0;
    assign SE_stall_entry_vunroll_toReg1 = SE_stall_entry_vunroll_StallValid & SE_stall_entry_vunroll_consumed1;
    assign SE_stall_entry_vunroll_toReg2 = SE_stall_entry_vunroll_StallValid & SE_stall_entry_vunroll_consumed2;
    assign SE_stall_entry_vunroll_toReg3 = SE_stall_entry_vunroll_StallValid & SE_stall_entry_vunroll_consumed3;
    assign SE_stall_entry_vunroll_toReg4 = SE_stall_entry_vunroll_StallValid & SE_stall_entry_vunroll_consumed4;
    assign SE_stall_entry_vunroll_toReg5 = SE_stall_entry_vunroll_StallValid & SE_stall_entry_vunroll_consumed5;
    assign SE_stall_entry_vunroll_toReg6 = SE_stall_entry_vunroll_StallValid & SE_stall_entry_vunroll_consumed6;
    // Backward Stall generation
    assign SE_stall_entry_vunroll_or0 = SE_stall_entry_vunroll_consumed0;
    assign SE_stall_entry_vunroll_or1 = SE_stall_entry_vunroll_consumed1 & SE_stall_entry_vunroll_or0;
    assign SE_stall_entry_vunroll_or2 = SE_stall_entry_vunroll_consumed2 & SE_stall_entry_vunroll_or1;
    assign SE_stall_entry_vunroll_or3 = SE_stall_entry_vunroll_consumed3 & SE_stall_entry_vunroll_or2;
    assign SE_stall_entry_vunroll_or4 = SE_stall_entry_vunroll_consumed4 & SE_stall_entry_vunroll_or3;
    assign SE_stall_entry_vunroll_or5 = SE_stall_entry_vunroll_consumed5 & SE_stall_entry_vunroll_or4;
    assign SE_stall_entry_vunroll_wireStall = ~ (SE_stall_entry_vunroll_consumed6 & SE_stall_entry_vunroll_or5);
    assign SE_stall_entry_vunroll_backStall = SE_stall_entry_vunroll_wireStall;
    // Valid signal propagation
    assign SE_stall_entry_vunroll_V0 = SE_stall_entry_vunroll_wireValid & ~ (SE_stall_entry_vunroll_fromReg0);
    assign SE_stall_entry_vunroll_V1 = SE_stall_entry_vunroll_wireValid & ~ (SE_stall_entry_vunroll_fromReg1);
    assign SE_stall_entry_vunroll_V2 = SE_stall_entry_vunroll_wireValid & ~ (SE_stall_entry_vunroll_fromReg2);
    assign SE_stall_entry_vunroll_V3 = SE_stall_entry_vunroll_wireValid & ~ (SE_stall_entry_vunroll_fromReg3);
    assign SE_stall_entry_vunroll_V4 = SE_stall_entry_vunroll_wireValid & ~ (SE_stall_entry_vunroll_fromReg4);
    assign SE_stall_entry_vunroll_V5 = SE_stall_entry_vunroll_wireValid & ~ (SE_stall_entry_vunroll_fromReg5);
    assign SE_stall_entry_vunroll_V6 = SE_stall_entry_vunroll_wireValid & ~ (SE_stall_entry_vunroll_fromReg6);
    // Computing multiple Valid(s)
    assign SE_stall_entry_vunroll_wireValid = in_valid_in;

    // SE_redist10_stall_entry_vunroll_o17_7_0(STALLENABLE,184)
    // Valid signal propagation
    assign SE_redist10_stall_entry_vunroll_o17_7_0_V0 = SE_redist10_stall_entry_vunroll_o17_7_0_R_v_0;
    // Stall signal propagation
    assign SE_redist10_stall_entry_vunroll_o17_7_0_s_tv_0 = SE_redist10_stall_entry_vunroll_o17_7_1_backStall & SE_redist10_stall_entry_vunroll_o17_7_0_R_v_0;
    // Backward Enable generation
    assign SE_redist10_stall_entry_vunroll_o17_7_0_backEN = ~ (SE_redist10_stall_entry_vunroll_o17_7_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist10_stall_entry_vunroll_o17_7_0_v_s_0 = SE_redist10_stall_entry_vunroll_o17_7_0_backEN & SE_stall_entry_vunroll_V1;
    // Backward Stall generation
    assign SE_redist10_stall_entry_vunroll_o17_7_0_backStall = ~ (SE_redist10_stall_entry_vunroll_o17_7_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist10_stall_entry_vunroll_o17_7_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist10_stall_entry_vunroll_o17_7_0_backEN == 1'b0)
            begin
                SE_redist10_stall_entry_vunroll_o17_7_0_R_v_0 <= SE_redist10_stall_entry_vunroll_o17_7_0_R_v_0 & SE_redist10_stall_entry_vunroll_o17_7_0_s_tv_0;
            end
            else
            begin
                SE_redist10_stall_entry_vunroll_o17_7_0_R_v_0 <= SE_redist10_stall_entry_vunroll_o17_7_0_v_s_0;
            end

        end
    end

    // SE_redist10_stall_entry_vunroll_o17_7_1(STALLENABLE,185)
    // Valid signal propagation
    assign SE_redist10_stall_entry_vunroll_o17_7_1_V0 = SE_redist10_stall_entry_vunroll_o17_7_1_R_v_0;
    // Stall signal propagation
    assign SE_redist10_stall_entry_vunroll_o17_7_1_s_tv_0 = SE_redist10_stall_entry_vunroll_o17_7_2_backStall & SE_redist10_stall_entry_vunroll_o17_7_1_R_v_0;
    // Backward Enable generation
    assign SE_redist10_stall_entry_vunroll_o17_7_1_backEN = ~ (SE_redist10_stall_entry_vunroll_o17_7_1_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist10_stall_entry_vunroll_o17_7_1_v_s_0 = SE_redist10_stall_entry_vunroll_o17_7_1_backEN & SE_redist10_stall_entry_vunroll_o17_7_0_V0;
    // Backward Stall generation
    assign SE_redist10_stall_entry_vunroll_o17_7_1_backStall = ~ (SE_redist10_stall_entry_vunroll_o17_7_1_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist10_stall_entry_vunroll_o17_7_1_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist10_stall_entry_vunroll_o17_7_1_backEN == 1'b0)
            begin
                SE_redist10_stall_entry_vunroll_o17_7_1_R_v_0 <= SE_redist10_stall_entry_vunroll_o17_7_1_R_v_0 & SE_redist10_stall_entry_vunroll_o17_7_1_s_tv_0;
            end
            else
            begin
                SE_redist10_stall_entry_vunroll_o17_7_1_R_v_0 <= SE_redist10_stall_entry_vunroll_o17_7_1_v_s_0;
            end

        end
    end

    // SE_redist10_stall_entry_vunroll_o17_7_2(STALLENABLE,186)
    // Valid signal propagation
    assign SE_redist10_stall_entry_vunroll_o17_7_2_V0 = SE_redist10_stall_entry_vunroll_o17_7_2_R_v_0;
    // Stall signal propagation
    assign SE_redist10_stall_entry_vunroll_o17_7_2_s_tv_0 = SE_redist10_stall_entry_vunroll_o17_7_3_backStall & SE_redist10_stall_entry_vunroll_o17_7_2_R_v_0;
    // Backward Enable generation
    assign SE_redist10_stall_entry_vunroll_o17_7_2_backEN = ~ (SE_redist10_stall_entry_vunroll_o17_7_2_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist10_stall_entry_vunroll_o17_7_2_v_s_0 = SE_redist10_stall_entry_vunroll_o17_7_2_backEN & SE_redist10_stall_entry_vunroll_o17_7_1_V0;
    // Backward Stall generation
    assign SE_redist10_stall_entry_vunroll_o17_7_2_backStall = ~ (SE_redist10_stall_entry_vunroll_o17_7_2_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist10_stall_entry_vunroll_o17_7_2_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist10_stall_entry_vunroll_o17_7_2_backEN == 1'b0)
            begin
                SE_redist10_stall_entry_vunroll_o17_7_2_R_v_0 <= SE_redist10_stall_entry_vunroll_o17_7_2_R_v_0 & SE_redist10_stall_entry_vunroll_o17_7_2_s_tv_0;
            end
            else
            begin
                SE_redist10_stall_entry_vunroll_o17_7_2_R_v_0 <= SE_redist10_stall_entry_vunroll_o17_7_2_v_s_0;
            end

        end
    end

    // redist10_stall_entry_vunroll_o17_7_0(REG,103)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_stall_entry_vunroll_o17_7_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist10_stall_entry_vunroll_o17_7_0_backEN == 1'b1)
        begin
            redist10_stall_entry_vunroll_o17_7_0_q <= $unsigned(bubble_select_stall_entry_vunroll_o);
        end
    end

    // redist10_stall_entry_vunroll_o17_7_1(REG,104)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_stall_entry_vunroll_o17_7_1_q <= $unsigned(1'b0);
        end
        else if (SE_redist10_stall_entry_vunroll_o17_7_1_backEN == 1'b1)
        begin
            redist10_stall_entry_vunroll_o17_7_1_q <= $unsigned(redist10_stall_entry_vunroll_o17_7_0_q);
        end
    end

    // redist10_stall_entry_vunroll_o17_7_2(REG,105)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_stall_entry_vunroll_o17_7_2_q <= $unsigned(1'b0);
        end
        else if (SE_redist10_stall_entry_vunroll_o17_7_2_backEN == 1'b1)
        begin
            redist10_stall_entry_vunroll_o17_7_2_q <= $unsigned(redist10_stall_entry_vunroll_o17_7_1_q);
        end
    end

    // redist10_stall_entry_vunroll_o17_7_3(REG,106)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_stall_entry_vunroll_o17_7_3_q <= $unsigned(1'b0);
        end
        else if (SE_redist10_stall_entry_vunroll_o17_7_3_backEN == 1'b1)
        begin
            redist10_stall_entry_vunroll_o17_7_3_q <= $unsigned(redist10_stall_entry_vunroll_o17_7_2_q);
        end
    end

    // SE_redist10_stall_entry_vunroll_o17_7_3(STALLENABLE,187)
    // Valid signal propagation
    assign SE_redist10_stall_entry_vunroll_o17_7_3_V0 = SE_redist10_stall_entry_vunroll_o17_7_3_R_v_0;
    // Stall signal propagation
    assign SE_redist10_stall_entry_vunroll_o17_7_3_s_tv_0 = SR_SE_redist10_stall_entry_vunroll_o17_7_4_backStall & SE_redist10_stall_entry_vunroll_o17_7_3_R_v_0;
    // Backward Enable generation
    assign SE_redist10_stall_entry_vunroll_o17_7_3_backEN = ~ (SE_redist10_stall_entry_vunroll_o17_7_3_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist10_stall_entry_vunroll_o17_7_3_v_s_0 = SE_redist10_stall_entry_vunroll_o17_7_3_backEN & SE_redist10_stall_entry_vunroll_o17_7_2_V0;
    // Backward Stall generation
    assign SE_redist10_stall_entry_vunroll_o17_7_3_backStall = ~ (SE_redist10_stall_entry_vunroll_o17_7_3_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist10_stall_entry_vunroll_o17_7_3_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist10_stall_entry_vunroll_o17_7_3_backEN == 1'b0)
            begin
                SE_redist10_stall_entry_vunroll_o17_7_3_R_v_0 <= SE_redist10_stall_entry_vunroll_o17_7_3_R_v_0 & SE_redist10_stall_entry_vunroll_o17_7_3_s_tv_0;
            end
            else
            begin
                SE_redist10_stall_entry_vunroll_o17_7_3_R_v_0 <= SE_redist10_stall_entry_vunroll_o17_7_3_v_s_0;
            end

        end
    end

    // SR_SE_redist10_stall_entry_vunroll_o17_7_4(STALLREG,248)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist10_stall_entry_vunroll_o17_7_4_r_valid <= 1'b0;
            SR_SE_redist10_stall_entry_vunroll_o17_7_4_r_data0 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist10_stall_entry_vunroll_o17_7_4_r_valid <= SE_redist10_stall_entry_vunroll_o17_7_4_backStall & (SR_SE_redist10_stall_entry_vunroll_o17_7_4_r_valid | SR_SE_redist10_stall_entry_vunroll_o17_7_4_i_valid);

            if (SR_SE_redist10_stall_entry_vunroll_o17_7_4_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist10_stall_entry_vunroll_o17_7_4_r_data0 <= $unsigned(redist10_stall_entry_vunroll_o17_7_3_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist10_stall_entry_vunroll_o17_7_4_i_valid = SE_redist10_stall_entry_vunroll_o17_7_3_V0;
    // Stall signal propagation
    assign SR_SE_redist10_stall_entry_vunroll_o17_7_4_backStall = SR_SE_redist10_stall_entry_vunroll_o17_7_4_r_valid | ~ (SR_SE_redist10_stall_entry_vunroll_o17_7_4_i_valid);

    // Valid
    assign SR_SE_redist10_stall_entry_vunroll_o17_7_4_V = SR_SE_redist10_stall_entry_vunroll_o17_7_4_r_valid == 1'b1 ? SR_SE_redist10_stall_entry_vunroll_o17_7_4_r_valid : SR_SE_redist10_stall_entry_vunroll_o17_7_4_i_valid;

    assign SR_SE_redist10_stall_entry_vunroll_o17_7_4_D0 = SR_SE_redist10_stall_entry_vunroll_o17_7_4_r_valid == 1'b1 ? SR_SE_redist10_stall_entry_vunroll_o17_7_4_r_data0 : redist10_stall_entry_vunroll_o17_7_3_q;

    // SE_redist10_stall_entry_vunroll_o17_7_4(STALLENABLE,188)
    // Valid signal propagation
    assign SE_redist10_stall_entry_vunroll_o17_7_4_V0 = SE_redist10_stall_entry_vunroll_o17_7_4_R_v_0;
    // Stall signal propagation
    assign SE_redist10_stall_entry_vunroll_o17_7_4_s_tv_0 = SE_redist10_stall_entry_vunroll_o17_7_5_backStall & SE_redist10_stall_entry_vunroll_o17_7_4_R_v_0;
    // Backward Enable generation
    assign SE_redist10_stall_entry_vunroll_o17_7_4_backEN = ~ (SE_redist10_stall_entry_vunroll_o17_7_4_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist10_stall_entry_vunroll_o17_7_4_v_s_0 = SE_redist10_stall_entry_vunroll_o17_7_4_backEN & SR_SE_redist10_stall_entry_vunroll_o17_7_4_V;
    // Backward Stall generation
    assign SE_redist10_stall_entry_vunroll_o17_7_4_backStall = ~ (SE_redist10_stall_entry_vunroll_o17_7_4_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist10_stall_entry_vunroll_o17_7_4_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist10_stall_entry_vunroll_o17_7_4_backEN == 1'b0)
            begin
                SE_redist10_stall_entry_vunroll_o17_7_4_R_v_0 <= SE_redist10_stall_entry_vunroll_o17_7_4_R_v_0 & SE_redist10_stall_entry_vunroll_o17_7_4_s_tv_0;
            end
            else
            begin
                SE_redist10_stall_entry_vunroll_o17_7_4_R_v_0 <= SE_redist10_stall_entry_vunroll_o17_7_4_v_s_0;
            end

        end
    end

    // SE_redist10_stall_entry_vunroll_o17_7_5(STALLENABLE,189)
    // Valid signal propagation
    assign SE_redist10_stall_entry_vunroll_o17_7_5_V0 = SE_redist10_stall_entry_vunroll_o17_7_5_R_v_0;
    // Stall signal propagation
    assign SE_redist10_stall_entry_vunroll_o17_7_5_s_tv_0 = SE_redist10_stall_entry_vunroll_o17_7_6_backStall & SE_redist10_stall_entry_vunroll_o17_7_5_R_v_0;
    // Backward Enable generation
    assign SE_redist10_stall_entry_vunroll_o17_7_5_backEN = ~ (SE_redist10_stall_entry_vunroll_o17_7_5_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist10_stall_entry_vunroll_o17_7_5_v_s_0 = SE_redist10_stall_entry_vunroll_o17_7_5_backEN & SE_redist10_stall_entry_vunroll_o17_7_4_V0;
    // Backward Stall generation
    assign SE_redist10_stall_entry_vunroll_o17_7_5_backStall = ~ (SE_redist10_stall_entry_vunroll_o17_7_5_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist10_stall_entry_vunroll_o17_7_5_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist10_stall_entry_vunroll_o17_7_5_backEN == 1'b0)
            begin
                SE_redist10_stall_entry_vunroll_o17_7_5_R_v_0 <= SE_redist10_stall_entry_vunroll_o17_7_5_R_v_0 & SE_redist10_stall_entry_vunroll_o17_7_5_s_tv_0;
            end
            else
            begin
                SE_redist10_stall_entry_vunroll_o17_7_5_R_v_0 <= SE_redist10_stall_entry_vunroll_o17_7_5_v_s_0;
            end

        end
    end

    // SE_redist10_stall_entry_vunroll_o17_7_6(STALLENABLE,190)
    // Valid signal propagation
    assign SE_redist10_stall_entry_vunroll_o17_7_6_V0 = SE_redist10_stall_entry_vunroll_o17_7_6_R_v_0;
    // Stall signal propagation
    assign SE_redist10_stall_entry_vunroll_o17_7_6_s_tv_0 = SE_out_i_sfc_s_c0_in_for_cond82_preheader_loopexit_conv2d1x1s_c0_enter543_conv2d1x14_aunroll_x_backStall & SE_redist10_stall_entry_vunroll_o17_7_6_R_v_0;
    // Backward Enable generation
    assign SE_redist10_stall_entry_vunroll_o17_7_6_backEN = ~ (SE_redist10_stall_entry_vunroll_o17_7_6_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist10_stall_entry_vunroll_o17_7_6_v_s_0 = SE_redist10_stall_entry_vunroll_o17_7_6_backEN & SE_redist10_stall_entry_vunroll_o17_7_5_V0;
    // Backward Stall generation
    assign SE_redist10_stall_entry_vunroll_o17_7_6_backStall = ~ (SE_redist10_stall_entry_vunroll_o17_7_6_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist10_stall_entry_vunroll_o17_7_6_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist10_stall_entry_vunroll_o17_7_6_backEN == 1'b0)
            begin
                SE_redist10_stall_entry_vunroll_o17_7_6_R_v_0 <= SE_redist10_stall_entry_vunroll_o17_7_6_R_v_0 & SE_redist10_stall_entry_vunroll_o17_7_6_s_tv_0;
            end
            else
            begin
                SE_redist10_stall_entry_vunroll_o17_7_6_R_v_0 <= SE_redist10_stall_entry_vunroll_o17_7_6_v_s_0;
            end

        end
    end

    // i_sfc_s_c0_in_for_cond82_preheader_loopexit_conv2d1x1s_c0_enter543_conv2d1x14_aunroll_x(BLACKBOX,61)@0
    // in in_i_stall@20000000
    // out out_o_stall@20000000
    // out out_o_valid@7
    // out out_c0_exit550_0_tpl@7
    // out out_c0_exit550_1_tpl@7
    // out out_c0_exit550_2_tpl@7
    // out out_c0_exit550_3_tpl@7
    conv2d1x1_i_sfc_s_c0_in_for_cond82_prehe0000_enter543_conv2d1x14 thei_sfc_s_c0_in_for_cond82_preheader_loopexit_conv2d1x1s_c0_enter543_conv2d1x14_aunroll_x (
        .in_i_stall(SE_out_i_sfc_s_c0_in_for_cond82_preheader_loopexit_conv2d1x1s_c0_enter543_conv2d1x14_aunroll_x_backStall),
        .in_i_valid(SE_stall_entry_vunroll_V5),
        .in_input_im(in_input_im),
        .in_c0_eni3542_0_tpl(GND_q),
        .in_c0_eni3542_1_tpl(bubble_select_stall_entry_vunroll_b),
        .in_c0_eni3542_2_tpl(bubble_select_stall_entry_vunroll_p),
        .in_c0_eni3542_3_tpl(bubble_select_stall_entry_vunroll_c),
        .out_o_stall(i_sfc_s_c0_in_for_cond82_preheader_loopexit_conv2d1x1s_c0_enter543_conv2d1x14_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_for_cond82_preheader_loopexit_conv2d1x1s_c0_enter543_conv2d1x14_aunroll_x_out_o_valid),
        .out_c0_exit550_0_tpl(),
        .out_c0_exit550_1_tpl(i_sfc_s_c0_in_for_cond82_preheader_loopexit_conv2d1x1s_c0_enter543_conv2d1x14_aunroll_x_out_c0_exit550_1_tpl),
        .out_c0_exit550_2_tpl(i_sfc_s_c0_in_for_cond82_preheader_loopexit_conv2d1x1s_c0_enter543_conv2d1x14_aunroll_x_out_c0_exit550_2_tpl),
        .out_c0_exit550_3_tpl(i_sfc_s_c0_in_for_cond82_preheader_loopexit_conv2d1x1s_c0_enter543_conv2d1x14_aunroll_x_out_c0_exit550_3_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_sfc_s_c0_in_for_cond82_preheader_loopexit_conv2d1x1s_c0_enter543_conv2d1x14_aunroll_x(STALLENABLE,175)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_sfc_s_c0_in_for_cond82_preheader_loopexit_conv2d1x1s_c0_enter543_conv2d1x14_aunroll_x_fromReg0 <= '0;
            SE_out_i_sfc_s_c0_in_for_cond82_preheader_loopexit_conv2d1x1s_c0_enter543_conv2d1x14_aunroll_x_fromReg1 <= '0;
            SE_out_i_sfc_s_c0_in_for_cond82_preheader_loopexit_conv2d1x1s_c0_enter543_conv2d1x14_aunroll_x_fromReg2 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_sfc_s_c0_in_for_cond82_preheader_loopexit_conv2d1x1s_c0_enter543_conv2d1x14_aunroll_x_fromReg0 <= SE_out_i_sfc_s_c0_in_for_cond82_preheader_loopexit_conv2d1x1s_c0_enter543_conv2d1x14_aunroll_x_toReg0;
            // Successor 1
            SE_out_i_sfc_s_c0_in_for_cond82_preheader_loopexit_conv2d1x1s_c0_enter543_conv2d1x14_aunroll_x_fromReg1 <= SE_out_i_sfc_s_c0_in_for_cond82_preheader_loopexit_conv2d1x1s_c0_enter543_conv2d1x14_aunroll_x_toReg1;
            // Successor 2
            SE_out_i_sfc_s_c0_in_for_cond82_preheader_loopexit_conv2d1x1s_c0_enter543_conv2d1x14_aunroll_x_fromReg2 <= SE_out_i_sfc_s_c0_in_for_cond82_preheader_loopexit_conv2d1x1s_c0_enter543_conv2d1x14_aunroll_x_toReg2;
        end
    end
    // Input Stall processing
    assign SE_out_i_sfc_s_c0_in_for_cond82_preheader_loopexit_conv2d1x1s_c0_enter543_conv2d1x14_aunroll_x_consumed0 = (~ (i_llvm_fpga_mem_lm70_conv2d1x18_out_o_stall) & SE_out_i_sfc_s_c0_in_for_cond82_preheader_loopexit_conv2d1x1s_c0_enter543_conv2d1x14_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_cond82_preheader_loopexit_conv2d1x1s_c0_enter543_conv2d1x14_aunroll_x_fromReg0;
    assign SE_out_i_sfc_s_c0_in_for_cond82_preheader_loopexit_conv2d1x1s_c0_enter543_conv2d1x14_aunroll_x_consumed1 = (~ (i_llvm_fpga_mem_lm73_conv2d1x19_out_o_stall) & SE_out_i_sfc_s_c0_in_for_cond82_preheader_loopexit_conv2d1x1s_c0_enter543_conv2d1x14_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_cond82_preheader_loopexit_conv2d1x1s_c0_enter543_conv2d1x14_aunroll_x_fromReg1;
    assign SE_out_i_sfc_s_c0_in_for_cond82_preheader_loopexit_conv2d1x1s_c0_enter543_conv2d1x14_aunroll_x_consumed2 = (~ (i_llvm_fpga_mem_lm_conv2d1x17_out_o_stall) & SE_out_i_sfc_s_c0_in_for_cond82_preheader_loopexit_conv2d1x1s_c0_enter543_conv2d1x14_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_cond82_preheader_loopexit_conv2d1x1s_c0_enter543_conv2d1x14_aunroll_x_fromReg2;
    // Consuming
    assign SE_out_i_sfc_s_c0_in_for_cond82_preheader_loopexit_conv2d1x1s_c0_enter543_conv2d1x14_aunroll_x_StallValid = SE_out_i_sfc_s_c0_in_for_cond82_preheader_loopexit_conv2d1x1s_c0_enter543_conv2d1x14_aunroll_x_backStall & SE_out_i_sfc_s_c0_in_for_cond82_preheader_loopexit_conv2d1x1s_c0_enter543_conv2d1x14_aunroll_x_wireValid;
    assign SE_out_i_sfc_s_c0_in_for_cond82_preheader_loopexit_conv2d1x1s_c0_enter543_conv2d1x14_aunroll_x_toReg0 = SE_out_i_sfc_s_c0_in_for_cond82_preheader_loopexit_conv2d1x1s_c0_enter543_conv2d1x14_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_cond82_preheader_loopexit_conv2d1x1s_c0_enter543_conv2d1x14_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c0_in_for_cond82_preheader_loopexit_conv2d1x1s_c0_enter543_conv2d1x14_aunroll_x_toReg1 = SE_out_i_sfc_s_c0_in_for_cond82_preheader_loopexit_conv2d1x1s_c0_enter543_conv2d1x14_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_cond82_preheader_loopexit_conv2d1x1s_c0_enter543_conv2d1x14_aunroll_x_consumed1;
    assign SE_out_i_sfc_s_c0_in_for_cond82_preheader_loopexit_conv2d1x1s_c0_enter543_conv2d1x14_aunroll_x_toReg2 = SE_out_i_sfc_s_c0_in_for_cond82_preheader_loopexit_conv2d1x1s_c0_enter543_conv2d1x14_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_cond82_preheader_loopexit_conv2d1x1s_c0_enter543_conv2d1x14_aunroll_x_consumed2;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c0_in_for_cond82_preheader_loopexit_conv2d1x1s_c0_enter543_conv2d1x14_aunroll_x_or0 = SE_out_i_sfc_s_c0_in_for_cond82_preheader_loopexit_conv2d1x1s_c0_enter543_conv2d1x14_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c0_in_for_cond82_preheader_loopexit_conv2d1x1s_c0_enter543_conv2d1x14_aunroll_x_or1 = SE_out_i_sfc_s_c0_in_for_cond82_preheader_loopexit_conv2d1x1s_c0_enter543_conv2d1x14_aunroll_x_consumed1 & SE_out_i_sfc_s_c0_in_for_cond82_preheader_loopexit_conv2d1x1s_c0_enter543_conv2d1x14_aunroll_x_or0;
    assign SE_out_i_sfc_s_c0_in_for_cond82_preheader_loopexit_conv2d1x1s_c0_enter543_conv2d1x14_aunroll_x_wireStall = ~ (SE_out_i_sfc_s_c0_in_for_cond82_preheader_loopexit_conv2d1x1s_c0_enter543_conv2d1x14_aunroll_x_consumed2 & SE_out_i_sfc_s_c0_in_for_cond82_preheader_loopexit_conv2d1x1s_c0_enter543_conv2d1x14_aunroll_x_or1);
    assign SE_out_i_sfc_s_c0_in_for_cond82_preheader_loopexit_conv2d1x1s_c0_enter543_conv2d1x14_aunroll_x_backStall = SE_out_i_sfc_s_c0_in_for_cond82_preheader_loopexit_conv2d1x1s_c0_enter543_conv2d1x14_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_i_sfc_s_c0_in_for_cond82_preheader_loopexit_conv2d1x1s_c0_enter543_conv2d1x14_aunroll_x_V0 = SE_out_i_sfc_s_c0_in_for_cond82_preheader_loopexit_conv2d1x1s_c0_enter543_conv2d1x14_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_cond82_preheader_loopexit_conv2d1x1s_c0_enter543_conv2d1x14_aunroll_x_fromReg0);
    assign SE_out_i_sfc_s_c0_in_for_cond82_preheader_loopexit_conv2d1x1s_c0_enter543_conv2d1x14_aunroll_x_V1 = SE_out_i_sfc_s_c0_in_for_cond82_preheader_loopexit_conv2d1x1s_c0_enter543_conv2d1x14_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_cond82_preheader_loopexit_conv2d1x1s_c0_enter543_conv2d1x14_aunroll_x_fromReg1);
    assign SE_out_i_sfc_s_c0_in_for_cond82_preheader_loopexit_conv2d1x1s_c0_enter543_conv2d1x14_aunroll_x_V2 = SE_out_i_sfc_s_c0_in_for_cond82_preheader_loopexit_conv2d1x1s_c0_enter543_conv2d1x14_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_cond82_preheader_loopexit_conv2d1x1s_c0_enter543_conv2d1x14_aunroll_x_fromReg2);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c0_in_for_cond82_preheader_loopexit_conv2d1x1s_c0_enter543_conv2d1x14_aunroll_x_and0 = i_sfc_s_c0_in_for_cond82_preheader_loopexit_conv2d1x1s_c0_enter543_conv2d1x14_aunroll_x_out_o_valid;
    assign SE_out_i_sfc_s_c0_in_for_cond82_preheader_loopexit_conv2d1x1s_c0_enter543_conv2d1x14_aunroll_x_wireValid = SE_redist10_stall_entry_vunroll_o17_7_6_V0 & SE_out_i_sfc_s_c0_in_for_cond82_preheader_loopexit_conv2d1x1s_c0_enter543_conv2d1x14_aunroll_x_and0;

    // SE_out_coalesced_delay_0_fifo(STALLENABLE,194)
    // Valid signal propagation
    assign SE_out_coalesced_delay_0_fifo_V0 = SE_out_coalesced_delay_0_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_coalesced_delay_0_fifo_backStall = i_sfc_s_c1_in_for_cond82_preheader_loopexit_conv2d1x1s_c1_enter_conv2d1x133_aunroll_vunroll_x_out_o_stall | ~ (SE_out_coalesced_delay_0_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_coalesced_delay_0_fifo_and0 = coalesced_delay_0_fifo_valid_out;
    assign SE_out_coalesced_delay_0_fifo_and1 = i_llvm_fpga_mem_lm_conv2d1x17_out_o_valid & SE_out_coalesced_delay_0_fifo_and0;
    assign SE_out_coalesced_delay_0_fifo_and2 = i_llvm_fpga_mem_lm73_conv2d1x19_out_o_valid & SE_out_coalesced_delay_0_fifo_and1;
    assign SE_out_coalesced_delay_0_fifo_wireValid = i_llvm_fpga_mem_lm70_conv2d1x18_out_o_valid & SE_out_coalesced_delay_0_fifo_and2;

    // redist10_stall_entry_vunroll_o17_7_4(REG,107)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_stall_entry_vunroll_o17_7_4_q <= $unsigned(1'b0);
        end
        else if (SE_redist10_stall_entry_vunroll_o17_7_4_backEN == 1'b1)
        begin
            redist10_stall_entry_vunroll_o17_7_4_q <= $unsigned(SR_SE_redist10_stall_entry_vunroll_o17_7_4_D0);
        end
    end

    // redist10_stall_entry_vunroll_o17_7_5(REG,108)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_stall_entry_vunroll_o17_7_5_q <= $unsigned(1'b0);
        end
        else if (SE_redist10_stall_entry_vunroll_o17_7_5_backEN == 1'b1)
        begin
            redist10_stall_entry_vunroll_o17_7_5_q <= $unsigned(redist10_stall_entry_vunroll_o17_7_4_q);
        end
    end

    // redist10_stall_entry_vunroll_o17_7_6(REG,109)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_stall_entry_vunroll_o17_7_6_q <= $unsigned(1'b0);
        end
        else if (SE_redist10_stall_entry_vunroll_o17_7_6_backEN == 1'b1)
        begin
            redist10_stall_entry_vunroll_o17_7_6_q <= $unsigned(redist10_stall_entry_vunroll_o17_7_5_q);
        end
    end

    // bubble_join_i_sfc_s_c0_in_for_cond82_preheader_loopexit_conv2d1x1s_c0_enter543_conv2d1x14_aunroll_x(BITJOIN,132)
    assign bubble_join_i_sfc_s_c0_in_for_cond82_preheader_loopexit_conv2d1x1s_c0_enter543_conv2d1x14_aunroll_x_q = {i_sfc_s_c0_in_for_cond82_preheader_loopexit_conv2d1x1s_c0_enter543_conv2d1x14_aunroll_x_out_c0_exit550_3_tpl, i_sfc_s_c0_in_for_cond82_preheader_loopexit_conv2d1x1s_c0_enter543_conv2d1x14_aunroll_x_out_c0_exit550_2_tpl, i_sfc_s_c0_in_for_cond82_preheader_loopexit_conv2d1x1s_c0_enter543_conv2d1x14_aunroll_x_out_c0_exit550_1_tpl};

    // bubble_select_i_sfc_s_c0_in_for_cond82_preheader_loopexit_conv2d1x1s_c0_enter543_conv2d1x14_aunroll_x(BITSELECT,133)
    assign bubble_select_i_sfc_s_c0_in_for_cond82_preheader_loopexit_conv2d1x1s_c0_enter543_conv2d1x14_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond82_preheader_loopexit_conv2d1x1s_c0_enter543_conv2d1x14_aunroll_x_q[63:0]);
    assign bubble_select_i_sfc_s_c0_in_for_cond82_preheader_loopexit_conv2d1x1s_c0_enter543_conv2d1x14_aunroll_x_c = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond82_preheader_loopexit_conv2d1x1s_c0_enter543_conv2d1x14_aunroll_x_q[127:64]);
    assign bubble_select_i_sfc_s_c0_in_for_cond82_preheader_loopexit_conv2d1x1s_c0_enter543_conv2d1x14_aunroll_x_d = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond82_preheader_loopexit_conv2d1x1s_c0_enter543_conv2d1x14_aunroll_x_q[191:128]);

    // i_llvm_fpga_mem_lm_conv2d1x17(BLACKBOX,18)@7
    // in in_i_stall@20000000
    // out out_lm_conv2d1x1_avm_address@20000000
    // out out_lm_conv2d1x1_avm_burstcount@20000000
    // out out_lm_conv2d1x1_avm_byteenable@20000000
    // out out_lm_conv2d1x1_avm_enable@20000000
    // out out_lm_conv2d1x1_avm_read@20000000
    // out out_lm_conv2d1x1_avm_write@20000000
    // out out_lm_conv2d1x1_avm_writedata@20000000
    // out out_o_readdata@136
    // out out_o_stall@20000000
    // out out_o_valid@136
    conv2d1x1_i_llvm_fpga_mem_lm_0 thei_llvm_fpga_mem_lm_conv2d1x17 (
        .in_flush(in_flush),
        .in_i_address(bubble_select_i_sfc_s_c0_in_for_cond82_preheader_loopexit_conv2d1x1s_c0_enter543_conv2d1x14_aunroll_x_b),
        .in_i_predicate(redist10_stall_entry_vunroll_o17_7_6_q),
        .in_i_stall(SE_out_coalesced_delay_0_fifo_backStall),
        .in_i_valid(SE_out_i_sfc_s_c0_in_for_cond82_preheader_loopexit_conv2d1x1s_c0_enter543_conv2d1x14_aunroll_x_V2),
        .in_lm_conv2d1x1_avm_readdata(in_lm_conv2d1x1_avm_readdata),
        .in_lm_conv2d1x1_avm_readdatavalid(in_lm_conv2d1x1_avm_readdatavalid),
        .in_lm_conv2d1x1_avm_waitrequest(in_lm_conv2d1x1_avm_waitrequest),
        .in_lm_conv2d1x1_avm_writeack(in_lm_conv2d1x1_avm_writeack),
        .out_lm_conv2d1x1_avm_address(i_llvm_fpga_mem_lm_conv2d1x17_out_lm_conv2d1x1_avm_address),
        .out_lm_conv2d1x1_avm_burstcount(i_llvm_fpga_mem_lm_conv2d1x17_out_lm_conv2d1x1_avm_burstcount),
        .out_lm_conv2d1x1_avm_byteenable(i_llvm_fpga_mem_lm_conv2d1x17_out_lm_conv2d1x1_avm_byteenable),
        .out_lm_conv2d1x1_avm_enable(i_llvm_fpga_mem_lm_conv2d1x17_out_lm_conv2d1x1_avm_enable),
        .out_lm_conv2d1x1_avm_read(i_llvm_fpga_mem_lm_conv2d1x17_out_lm_conv2d1x1_avm_read),
        .out_lm_conv2d1x1_avm_write(i_llvm_fpga_mem_lm_conv2d1x17_out_lm_conv2d1x1_avm_write),
        .out_lm_conv2d1x1_avm_writedata(i_llvm_fpga_mem_lm_conv2d1x17_out_lm_conv2d1x1_avm_writedata),
        .out_o_readdata(i_llvm_fpga_mem_lm_conv2d1x17_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_lm_conv2d1x17_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_lm_conv2d1x17_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,7)
    assign out_lm_conv2d1x1_avm_address = i_llvm_fpga_mem_lm_conv2d1x17_out_lm_conv2d1x1_avm_address;
    assign out_lm_conv2d1x1_avm_enable = i_llvm_fpga_mem_lm_conv2d1x17_out_lm_conv2d1x1_avm_enable;
    assign out_lm_conv2d1x1_avm_read = i_llvm_fpga_mem_lm_conv2d1x17_out_lm_conv2d1x1_avm_read;
    assign out_lm_conv2d1x1_avm_write = i_llvm_fpga_mem_lm_conv2d1x17_out_lm_conv2d1x1_avm_write;
    assign out_lm_conv2d1x1_avm_writedata = i_llvm_fpga_mem_lm_conv2d1x17_out_lm_conv2d1x1_avm_writedata;
    assign out_lm_conv2d1x1_avm_byteenable = i_llvm_fpga_mem_lm_conv2d1x17_out_lm_conv2d1x1_avm_byteenable;
    assign out_lm_conv2d1x1_avm_burstcount = i_llvm_fpga_mem_lm_conv2d1x17_out_lm_conv2d1x1_avm_burstcount;

    // sync_out(GPOUT,44)@0
    assign out_stall_out = SE_stall_entry_vunroll_backStall;

    // dupName_0_ext_sig_sync_out_x(GPOUT,47)
    assign out_lm70_conv2d1x1_avm_address = i_llvm_fpga_mem_lm70_conv2d1x18_out_lm70_conv2d1x1_avm_address;
    assign out_lm70_conv2d1x1_avm_enable = i_llvm_fpga_mem_lm70_conv2d1x18_out_lm70_conv2d1x1_avm_enable;
    assign out_lm70_conv2d1x1_avm_read = i_llvm_fpga_mem_lm70_conv2d1x18_out_lm70_conv2d1x1_avm_read;
    assign out_lm70_conv2d1x1_avm_write = i_llvm_fpga_mem_lm70_conv2d1x18_out_lm70_conv2d1x1_avm_write;
    assign out_lm70_conv2d1x1_avm_writedata = i_llvm_fpga_mem_lm70_conv2d1x18_out_lm70_conv2d1x1_avm_writedata;
    assign out_lm70_conv2d1x1_avm_byteenable = i_llvm_fpga_mem_lm70_conv2d1x18_out_lm70_conv2d1x1_avm_byteenable;
    assign out_lm70_conv2d1x1_avm_burstcount = i_llvm_fpga_mem_lm70_conv2d1x18_out_lm70_conv2d1x1_avm_burstcount;

    // bubble_join_coalesced_delay_1_fifo(BITJOIN,147)
    assign bubble_join_coalesced_delay_1_fifo_q = coalesced_delay_1_fifo_data_out;

    // bubble_select_coalesced_delay_1_fifo(BITSELECT,148)
    assign bubble_select_coalesced_delay_1_fifo_b = $unsigned(bubble_join_coalesced_delay_1_fifo_q[1:0]);

    // sel_for_coalesced_delay_1(BITSELECT,101)
    assign sel_for_coalesced_delay_1_b = $unsigned(bubble_select_coalesced_delay_1_fifo_b[0:0]);
    assign sel_for_coalesced_delay_1_c = $unsigned(bubble_select_coalesced_delay_1_fifo_b[1:1]);

    // dupName_0_sync_out_x(GPOUT,48)@190
    assign out_c0_exe1974135 = sel_for_coalesced_delay_1_b;
    assign out_c0_exe2574741 = sel_for_coalesced_delay_1_c;
    assign out_valid_out = SE_out_coalesced_delay_1_fifo_V0;

    // dupName_1_ext_sig_sync_out_x(GPOUT,50)
    assign out_lm73_conv2d1x1_avm_address = i_llvm_fpga_mem_lm73_conv2d1x19_out_lm73_conv2d1x1_avm_address;
    assign out_lm73_conv2d1x1_avm_enable = i_llvm_fpga_mem_lm73_conv2d1x19_out_lm73_conv2d1x1_avm_enable;
    assign out_lm73_conv2d1x1_avm_read = i_llvm_fpga_mem_lm73_conv2d1x19_out_lm73_conv2d1x1_avm_read;
    assign out_lm73_conv2d1x1_avm_write = i_llvm_fpga_mem_lm73_conv2d1x19_out_lm73_conv2d1x1_avm_write;
    assign out_lm73_conv2d1x1_avm_writedata = i_llvm_fpga_mem_lm73_conv2d1x19_out_lm73_conv2d1x1_avm_writedata;
    assign out_lm73_conv2d1x1_avm_byteenable = i_llvm_fpga_mem_lm73_conv2d1x19_out_lm73_conv2d1x1_avm_byteenable;
    assign out_lm73_conv2d1x1_avm_burstcount = i_llvm_fpga_mem_lm73_conv2d1x19_out_lm73_conv2d1x1_avm_burstcount;

    // dupName_2_ext_sig_sync_out_x(GPOUT,52)
    assign out_unnamed_conv2d1x113_conv2d1x1_avm_address = i_llvm_fpga_mem_unnamed_conv2d1x113_conv2d1x136_out_unnamed_conv2d1x113_conv2d1x1_avm_address;
    assign out_unnamed_conv2d1x113_conv2d1x1_avm_enable = i_llvm_fpga_mem_unnamed_conv2d1x113_conv2d1x136_out_unnamed_conv2d1x113_conv2d1x1_avm_enable;
    assign out_unnamed_conv2d1x113_conv2d1x1_avm_read = i_llvm_fpga_mem_unnamed_conv2d1x113_conv2d1x136_out_unnamed_conv2d1x113_conv2d1x1_avm_read;
    assign out_unnamed_conv2d1x113_conv2d1x1_avm_write = i_llvm_fpga_mem_unnamed_conv2d1x113_conv2d1x136_out_unnamed_conv2d1x113_conv2d1x1_avm_write;
    assign out_unnamed_conv2d1x113_conv2d1x1_avm_writedata = i_llvm_fpga_mem_unnamed_conv2d1x113_conv2d1x136_out_unnamed_conv2d1x113_conv2d1x1_avm_writedata;
    assign out_unnamed_conv2d1x113_conv2d1x1_avm_byteenable = i_llvm_fpga_mem_unnamed_conv2d1x113_conv2d1x136_out_unnamed_conv2d1x113_conv2d1x1_avm_byteenable;
    assign out_unnamed_conv2d1x113_conv2d1x1_avm_burstcount = i_llvm_fpga_mem_unnamed_conv2d1x113_conv2d1x136_out_unnamed_conv2d1x113_conv2d1x1_avm_burstcount;

    // dupName_3_ext_sig_sync_out_x(GPOUT,53)
    assign out_lsu_unnamed_conv2d1x113_o_active = i_llvm_fpga_mem_unnamed_conv2d1x113_conv2d1x136_out_lsu_unnamed_conv2d1x113_o_active;

endmodule
