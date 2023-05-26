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
// SystemVerilog created on Wed May 24 11:22:00 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2d1x1_bb_B7_stall_region (
    input wire [511:0] in_unnamed_conv2d1x116_conv2d1x1_avm_readdata,
    input wire [0:0] in_unnamed_conv2d1x116_conv2d1x1_avm_writeack,
    input wire [0:0] in_unnamed_conv2d1x116_conv2d1x1_avm_waitrequest,
    input wire [0:0] in_unnamed_conv2d1x116_conv2d1x1_avm_readdatavalid,
    output wire [30:0] out_unnamed_conv2d1x116_conv2d1x1_avm_address,
    output wire [0:0] out_unnamed_conv2d1x116_conv2d1x1_avm_enable,
    output wire [0:0] out_unnamed_conv2d1x116_conv2d1x1_avm_read,
    output wire [0:0] out_unnamed_conv2d1x116_conv2d1x1_avm_write,
    output wire [511:0] out_unnamed_conv2d1x116_conv2d1x1_avm_writedata,
    output wire [63:0] out_unnamed_conv2d1x116_conv2d1x1_avm_byteenable,
    output wire [4:0] out_unnamed_conv2d1x116_conv2d1x1_avm_burstcount,
    output wire [15:0] out_feedback_out_1,
    input wire [0:0] in_feedback_stall_in_1,
    output wire [0:0] out_feedback_valid_out_1,
    input wire [0:0] in_flush,
    input wire [63:0] in_output_im,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [31:0] in_c0_exe1345124,
    input wire [31:0] in_c0_exe1445225,
    input wire [0:0] in_c0_exe1545327,
    input wire [0:0] in_c0_exe1645428,
    input wire [63:0] in_c0_exe1745529,
    input wire [0:0] in_c0_exe344121,
    input wire [0:0] in_c0_exe444222,
    input wire [31:0] in_c0_exe544323,
    input wire [31:0] in_c1_exe1039,
    input wire [31:0] in_c1_exe1140,
    input wire [31:0] in_c1_exe1241,
    input wire [31:0] in_c1_exe130,
    input wire [31:0] in_c1_exe1342,
    input wire [31:0] in_c1_exe1443,
    input wire [31:0] in_c1_exe1544,
    input wire [31:0] in_c1_exe1645,
    input wire [31:0] in_c1_exe1746,
    input wire [31:0] in_c1_exe1847,
    input wire [31:0] in_c1_exe1948,
    input wire [31:0] in_c1_exe2049,
    input wire [31:0] in_c1_exe2150,
    input wire [31:0] in_c1_exe2251,
    input wire [31:0] in_c1_exe231,
    input wire [31:0] in_c1_exe2352,
    input wire [31:0] in_c1_exe2453,
    input wire [31:0] in_c1_exe2554,
    input wire [31:0] in_c1_exe2655,
    input wire [31:0] in_c1_exe2756,
    input wire [31:0] in_c1_exe2857,
    input wire [31:0] in_c1_exe2958,
    input wire [31:0] in_c1_exe3059,
    input wire [31:0] in_c1_exe3160,
    input wire [31:0] in_c1_exe3261,
    input wire [31:0] in_c1_exe332,
    input wire [31:0] in_c1_exe433,
    input wire [31:0] in_c1_exe534,
    input wire [31:0] in_c1_exe635,
    input wire [31:0] in_c1_exe736,
    input wire [31:0] in_c1_exe837,
    input wire [31:0] in_c1_exe938,
    input wire [0:0] in_valid_in,
    input wire [511:0] in_memdep_4_conv2d1x1_avm_readdata,
    input wire [0:0] in_memdep_4_conv2d1x1_avm_writeack,
    input wire [0:0] in_memdep_4_conv2d1x1_avm_waitrequest,
    input wire [0:0] in_memdep_4_conv2d1x1_avm_readdatavalid,
    output wire [0:0] out_lsu_unnamed_conv2d1x116_o_active,
    output wire [0:0] out_c0_exe1545327,
    output wire [0:0] out_c0_exe1645428,
    output wire [0:0] out_valid_out,
    input wire [511:0] in_memdep_15_conv2d1x1_avm_readdata,
    input wire [0:0] in_memdep_15_conv2d1x1_avm_writeack,
    input wire [0:0] in_memdep_15_conv2d1x1_avm_waitrequest,
    input wire [0:0] in_memdep_15_conv2d1x1_avm_readdatavalid,
    output wire [31:0] out_memdep_4_conv2d1x1_avm_address,
    output wire [0:0] out_memdep_4_conv2d1x1_avm_enable,
    output wire [0:0] out_memdep_4_conv2d1x1_avm_read,
    output wire [0:0] out_memdep_4_conv2d1x1_avm_write,
    output wire [511:0] out_memdep_4_conv2d1x1_avm_writedata,
    output wire [63:0] out_memdep_4_conv2d1x1_avm_byteenable,
    output wire [0:0] out_memdep_4_conv2d1x1_avm_burstcount,
    output wire [31:0] out_memdep_15_conv2d1x1_avm_address,
    output wire [0:0] out_memdep_15_conv2d1x1_avm_enable,
    output wire [0:0] out_memdep_15_conv2d1x1_avm_read,
    output wire [0:0] out_memdep_15_conv2d1x1_avm_write,
    output wire [511:0] out_memdep_15_conv2d1x1_avm_writedata,
    output wire [63:0] out_memdep_15_conv2d1x1_avm_byteenable,
    output wire [0:0] out_memdep_15_conv2d1x1_avm_burstcount,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [63:0] c_i64_462970041693686988852_q;
    wire [63:0] c_i64_462970041693686995251_q;
    wire [32:0] i_add101_conv2d1x126_a;
    wire [32:0] i_add101_conv2d1x126_b;
    logic [32:0] i_add101_conv2d1x126_o;
    wire [32:0] i_add101_conv2d1x126_q;
    wire [0:0] i_ap_dep344_conv2d1x143_q;
    wire [8:0] i_ap_dep345_ext_conv2d1x144_vt_const_9_q;
    wire [9:0] i_ap_dep345_ext_conv2d1x144_vt_join_q;
    wire [0:0] i_ap_dep345_ext_conv2d1x144_vt_select_0_b;
    wire [1:0] i_arrayidx1033_conv2d1x130_vt_const_1_q;
    wire [63:0] i_arrayidx1033_conv2d1x130_vt_join_q;
    wire [61:0] i_arrayidx1033_conv2d1x130_vt_select_63_b;
    wire [31:0] i_idxprom102_conv2d1x128_vt_const_63_q;
    wire [63:0] i_idxprom102_conv2d1x128_vt_join_q;
    wire [31:0] i_idxprom102_conv2d1x128_vt_select_31_b;
    (* dont_merge *) reg [31:0] i_llvm_fpga_fanout_f32_mult_add176_fanout_adaptor_conv2d1x13_q;
    (* dont_merge *) reg [31:0] i_llvm_fpga_fanout_f32_mult_add85177_fanout_adaptor_conv2d1x12_q;
    (* dont_merge *) reg [31:0] i_llvm_fpga_fanout_f32_mult_add86178_fanout_adaptor_conv2d1x11_q;
    (* dont_merge *) reg [31:0] i_llvm_fpga_fanout_f32_mult_add87179_fanout_adaptor_conv2d1x10_q;
    wire [0:0] i_llvm_fpga_mem_unnamed_conv2d1x116_conv2d1x132_out_lsu_unnamed_conv2d1x116_o_active;
    wire [0:0] i_llvm_fpga_mem_unnamed_conv2d1x116_conv2d1x132_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_unnamed_conv2d1x116_conv2d1x132_out_o_valid;
    wire [30:0] i_llvm_fpga_mem_unnamed_conv2d1x116_conv2d1x132_out_unnamed_conv2d1x116_conv2d1x1_avm_address;
    wire [4:0] i_llvm_fpga_mem_unnamed_conv2d1x116_conv2d1x132_out_unnamed_conv2d1x116_conv2d1x1_avm_burstcount;
    wire [63:0] i_llvm_fpga_mem_unnamed_conv2d1x116_conv2d1x132_out_unnamed_conv2d1x116_conv2d1x1_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_conv2d1x116_conv2d1x132_out_unnamed_conv2d1x116_conv2d1x1_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_conv2d1x116_conv2d1x132_out_unnamed_conv2d1x116_conv2d1x1_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_conv2d1x116_conv2d1x132_out_unnamed_conv2d1x116_conv2d1x1_avm_write;
    wire [511:0] i_llvm_fpga_mem_unnamed_conv2d1x116_conv2d1x132_out_unnamed_conv2d1x116_conv2d1x1_avm_writedata;
    wire [15:0] i_llvm_fpga_push_token_priv_i10_ap_push_conv2d1x145_out_feedback_out_1;
    wire [0:0] i_llvm_fpga_push_token_priv_i10_ap_push_conv2d1x145_out_feedback_valid_out_1;
    wire [0:0] i_llvm_fpga_push_token_priv_i10_ap_push_conv2d1x145_out_stall_out;
    wire [0:0] i_llvm_fpga_push_token_priv_i10_ap_push_conv2d1x145_out_valid_out;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_conv2d1x14_out_buffer_out;
    wire [0:0] i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_conv2d1x14_out_stall_out;
    wire [0:0] i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_conv2d1x14_out_valid_out;
    wire [9:0] i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_conv2d1x14_vt_const_9_q;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_conv2d1x14_vt_join_q;
    wire [53:0] i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_conv2d1x14_vt_select_63_b;
    wire [31:0] bgTrunc_i_add101_conv2d1x126_sel_x_b;
    wire [9:0] i_ap_dep345_ext_conv2d1x144_sel_x_b;
    wire [64:0] i_arrayidx1033_conv2d1x10_add_x_a;
    wire [64:0] i_arrayidx1033_conv2d1x10_add_x_b;
    logic [64:0] i_arrayidx1033_conv2d1x10_add_x_o;
    wire [64:0] i_arrayidx1033_conv2d1x10_add_x_q;
    wire [61:0] i_arrayidx1033_conv2d1x10_narrow_x_b;
    wire [63:0] i_arrayidx1033_conv2d1x10_shift_join_x_q;
    wire [63:0] i_arrayidx1033_conv2d1x10_dupName_0_trunc_sel_x_b;
    wire [63:0] i_idxprom102_conv2d1x128_sel_x_b;
    wire [31:0] i_llvm_fpga_mem_memdep_15_conv2d1x142_aunroll_x_out_memdep_15_conv2d1x1_avm_address;
    wire [0:0] i_llvm_fpga_mem_memdep_15_conv2d1x142_aunroll_x_out_memdep_15_conv2d1x1_avm_burstcount;
    wire [63:0] i_llvm_fpga_mem_memdep_15_conv2d1x142_aunroll_x_out_memdep_15_conv2d1x1_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_memdep_15_conv2d1x142_aunroll_x_out_memdep_15_conv2d1x1_avm_enable;
    wire [0:0] i_llvm_fpga_mem_memdep_15_conv2d1x142_aunroll_x_out_memdep_15_conv2d1x1_avm_read;
    wire [0:0] i_llvm_fpga_mem_memdep_15_conv2d1x142_aunroll_x_out_memdep_15_conv2d1x1_avm_write;
    wire [511:0] i_llvm_fpga_mem_memdep_15_conv2d1x142_aunroll_x_out_memdep_15_conv2d1x1_avm_writedata;
    wire [0:0] i_llvm_fpga_mem_memdep_15_conv2d1x142_aunroll_x_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_memdep_15_conv2d1x142_aunroll_x_out_o_valid;
    wire [0:0] i_llvm_fpga_mem_memdep_15_conv2d1x142_aunroll_x_out_o_writeack;
    wire [31:0] i_llvm_fpga_mem_memdep_4_conv2d1x134_aunroll_x_out_memdep_4_conv2d1x1_avm_address;
    wire [0:0] i_llvm_fpga_mem_memdep_4_conv2d1x134_aunroll_x_out_memdep_4_conv2d1x1_avm_burstcount;
    wire [63:0] i_llvm_fpga_mem_memdep_4_conv2d1x134_aunroll_x_out_memdep_4_conv2d1x1_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_memdep_4_conv2d1x134_aunroll_x_out_memdep_4_conv2d1x1_avm_enable;
    wire [0:0] i_llvm_fpga_mem_memdep_4_conv2d1x134_aunroll_x_out_memdep_4_conv2d1x1_avm_read;
    wire [0:0] i_llvm_fpga_mem_memdep_4_conv2d1x134_aunroll_x_out_memdep_4_conv2d1x1_avm_write;
    wire [511:0] i_llvm_fpga_mem_memdep_4_conv2d1x134_aunroll_x_out_memdep_4_conv2d1x1_avm_writedata;
    wire [0:0] i_llvm_fpga_mem_memdep_4_conv2d1x134_aunroll_x_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_memdep_4_conv2d1x134_aunroll_x_out_o_valid;
    wire [0:0] i_llvm_fpga_mem_memdep_4_conv2d1x134_aunroll_x_out_o_writeack;
    wire [0:0] i_sfc_s_c0_in_for_cond85_preheader_loopexit_conv2d1x1s_c0_enter349_conv2d1x124_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_for_cond85_preheader_loopexit_conv2d1x1s_c0_enter349_conv2d1x124_aunroll_x_out_o_valid;
    wire [31:0] i_sfc_s_c0_in_for_cond85_preheader_loopexit_conv2d1x1s_c0_enter349_conv2d1x124_aunroll_x_out_c0_exit368_1_tpl;
    wire [448:0] join_for_coalesced_delay_0_q;
    wire [63:0] sel_for_coalesced_delay_0_b;
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
    wire [0:0] sel_for_coalesced_delay_0_o;
    wire [1:0] join_for_coalesced_delay_1_q;
    wire [0:0] sel_for_coalesced_delay_1_b;
    wire [0:0] sel_for_coalesced_delay_1_c;
    wire [0:0] redist4_stall_entry_o10_52_fifo_valid_in;
    wire redist4_stall_entry_o10_52_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist4_stall_entry_o10_52_fifo_stall_in;
    wire redist4_stall_entry_o10_52_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist4_stall_entry_o10_52_fifo_data_in;
    wire [0:0] redist4_stall_entry_o10_52_fifo_valid_out;
    wire redist4_stall_entry_o10_52_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist4_stall_entry_o10_52_fifo_stall_out;
    wire redist4_stall_entry_o10_52_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist4_stall_entry_o10_52_fifo_data_out;
    wire [0:0] redist17_i_idxprom102_conv2d1x128_vt_select_31_b_52_fifo_valid_in;
    wire redist17_i_idxprom102_conv2d1x128_vt_select_31_b_52_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist17_i_idxprom102_conv2d1x128_vt_select_31_b_52_fifo_stall_in;
    wire redist17_i_idxprom102_conv2d1x128_vt_select_31_b_52_fifo_stall_in_bitsignaltemp;
    wire [31:0] redist17_i_idxprom102_conv2d1x128_vt_select_31_b_52_fifo_data_in;
    wire [0:0] redist17_i_idxprom102_conv2d1x128_vt_select_31_b_52_fifo_valid_out;
    wire redist17_i_idxprom102_conv2d1x128_vt_select_31_b_52_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist17_i_idxprom102_conv2d1x128_vt_select_31_b_52_fifo_stall_out;
    wire redist17_i_idxprom102_conv2d1x128_vt_select_31_b_52_fifo_stall_out_bitsignaltemp;
    wire [31:0] redist17_i_idxprom102_conv2d1x128_vt_select_31_b_52_fifo_data_out;
    reg [448:0] coalesced_delay_0_0_q;
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
    wire [63:0] bubble_join_i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_conv2d1x14_q;
    wire [63:0] bubble_select_i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_conv2d1x14_b;
    wire [1187:0] bubble_join_stall_entry_q;
    wire [31:0] bubble_select_stall_entry_b;
    wire [31:0] bubble_select_stall_entry_c;
    wire [0:0] bubble_select_stall_entry_d;
    wire [0:0] bubble_select_stall_entry_e;
    wire [63:0] bubble_select_stall_entry_f;
    wire [0:0] bubble_select_stall_entry_g;
    wire [0:0] bubble_select_stall_entry_h;
    wire [31:0] bubble_select_stall_entry_i;
    wire [31:0] bubble_select_stall_entry_j;
    wire [31:0] bubble_select_stall_entry_k;
    wire [31:0] bubble_select_stall_entry_l;
    wire [31:0] bubble_select_stall_entry_m;
    wire [31:0] bubble_select_stall_entry_n;
    wire [31:0] bubble_select_stall_entry_o;
    wire [31:0] bubble_select_stall_entry_p;
    wire [31:0] bubble_select_stall_entry_q;
    wire [31:0] bubble_select_stall_entry_r;
    wire [31:0] bubble_select_stall_entry_s;
    wire [31:0] bubble_select_stall_entry_t;
    wire [31:0] bubble_select_stall_entry_u;
    wire [31:0] bubble_select_stall_entry_v;
    wire [31:0] bubble_select_stall_entry_w;
    wire [31:0] bubble_select_stall_entry_x;
    wire [31:0] bubble_select_stall_entry_y;
    wire [31:0] bubble_select_stall_entry_z;
    wire [31:0] bubble_select_stall_entry_aa;
    wire [31:0] bubble_select_stall_entry_bb;
    wire [31:0] bubble_select_stall_entry_cc;
    wire [31:0] bubble_select_stall_entry_dd;
    wire [31:0] bubble_select_stall_entry_ee;
    wire [31:0] bubble_select_stall_entry_ff;
    wire [31:0] bubble_select_stall_entry_gg;
    wire [31:0] bubble_select_stall_entry_hh;
    wire [31:0] bubble_select_stall_entry_ii;
    wire [31:0] bubble_select_stall_entry_jj;
    wire [31:0] bubble_select_stall_entry_kk;
    wire [31:0] bubble_select_stall_entry_ll;
    wire [31:0] bubble_select_stall_entry_mm;
    wire [31:0] bubble_select_stall_entry_nn;
    wire [31:0] bubble_select_stall_entry_oo;
    wire [0:0] bubble_join_i_llvm_fpga_mem_memdep_15_conv2d1x142_aunroll_x_q;
    wire [0:0] bubble_select_i_llvm_fpga_mem_memdep_15_conv2d1x142_aunroll_x_b;
    wire [0:0] bubble_join_i_llvm_fpga_mem_memdep_4_conv2d1x134_aunroll_x_q;
    wire [0:0] bubble_select_i_llvm_fpga_mem_memdep_4_conv2d1x134_aunroll_x_b;
    wire [31:0] bubble_join_i_sfc_s_c0_in_for_cond85_preheader_loopexit_conv2d1x1s_c0_enter349_conv2d1x124_aunroll_x_q;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond85_preheader_loopexit_conv2d1x1s_c0_enter349_conv2d1x124_aunroll_x_b;
    wire [0:0] bubble_join_redist4_stall_entry_o10_52_fifo_q;
    wire [0:0] bubble_select_redist4_stall_entry_o10_52_fifo_b;
    wire [31:0] bubble_join_redist17_i_idxprom102_conv2d1x128_vt_select_31_b_52_fifo_q;
    wire [31:0] bubble_select_redist17_i_idxprom102_conv2d1x128_vt_select_31_b_52_fifo_b;
    wire [1:0] bubble_join_coalesced_delay_1_fifo_q;
    wire [1:0] bubble_select_coalesced_delay_1_fifo_b;
    wire [0:0] SE_i_ap_dep344_conv2d1x143_wireValid;
    wire [0:0] SE_i_ap_dep344_conv2d1x143_and0;
    wire [0:0] SE_i_ap_dep344_conv2d1x143_backStall;
    wire [0:0] SE_i_ap_dep344_conv2d1x143_V0;
    reg [0:0] SE_i_llvm_fpga_fanout_f32_mult_add176_fanout_adaptor_conv2d1x13_R_v_0;
    reg [0:0] SE_i_llvm_fpga_fanout_f32_mult_add176_fanout_adaptor_conv2d1x13_R_v_1;
    wire [0:0] SE_i_llvm_fpga_fanout_f32_mult_add176_fanout_adaptor_conv2d1x13_v_s_0;
    wire [0:0] SE_i_llvm_fpga_fanout_f32_mult_add176_fanout_adaptor_conv2d1x13_s_tv_0;
    wire [0:0] SE_i_llvm_fpga_fanout_f32_mult_add176_fanout_adaptor_conv2d1x13_s_tv_1;
    wire [0:0] SE_i_llvm_fpga_fanout_f32_mult_add176_fanout_adaptor_conv2d1x13_backEN;
    wire [0:0] SE_i_llvm_fpga_fanout_f32_mult_add176_fanout_adaptor_conv2d1x13_or0;
    wire [0:0] SE_i_llvm_fpga_fanout_f32_mult_add176_fanout_adaptor_conv2d1x13_backStall;
    wire [0:0] SE_i_llvm_fpga_fanout_f32_mult_add176_fanout_adaptor_conv2d1x13_V0;
    wire [0:0] SE_i_llvm_fpga_fanout_f32_mult_add176_fanout_adaptor_conv2d1x13_V1;
    wire [0:0] SE_out_i_llvm_fpga_push_token_priv_i10_ap_push_conv2d1x145_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_token_priv_i10_ap_push_conv2d1x145_backStall;
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
    wire [0:0] SE_stall_entry_toReg5;
    reg [0:0] SE_stall_entry_fromReg5;
    wire [0:0] SE_stall_entry_consumed5;
    wire [0:0] SE_stall_entry_or0;
    wire [0:0] SE_stall_entry_or1;
    wire [0:0] SE_stall_entry_or2;
    wire [0:0] SE_stall_entry_or3;
    wire [0:0] SE_stall_entry_or4;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_stall_entry_V1;
    wire [0:0] SE_stall_entry_V2;
    wire [0:0] SE_stall_entry_V3;
    wire [0:0] SE_stall_entry_V4;
    wire [0:0] SE_stall_entry_V5;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_15_conv2d1x142_aunroll_x_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_15_conv2d1x142_aunroll_x_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_15_conv2d1x142_aunroll_x_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_15_conv2d1x142_aunroll_x_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_mem_memdep_15_conv2d1x142_aunroll_x_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_15_conv2d1x142_aunroll_x_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_15_conv2d1x142_aunroll_x_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_mem_memdep_15_conv2d1x142_aunroll_x_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_15_conv2d1x142_aunroll_x_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_15_conv2d1x142_aunroll_x_or0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_15_conv2d1x142_aunroll_x_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_15_conv2d1x142_aunroll_x_V0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_15_conv2d1x142_aunroll_x_V1;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_4_conv2d1x134_aunroll_x_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_4_conv2d1x134_aunroll_x_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_4_conv2d1x134_aunroll_x_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_4_conv2d1x134_aunroll_x_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_mem_memdep_4_conv2d1x134_aunroll_x_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_4_conv2d1x134_aunroll_x_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_4_conv2d1x134_aunroll_x_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_mem_memdep_4_conv2d1x134_aunroll_x_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_4_conv2d1x134_aunroll_x_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_4_conv2d1x134_aunroll_x_or0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_4_conv2d1x134_aunroll_x_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_4_conv2d1x134_aunroll_x_V0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_4_conv2d1x134_aunroll_x_V1;
    wire [0:0] SE_out_redist17_i_idxprom102_conv2d1x128_vt_select_31_b_52_fifo_wireValid;
    wire [0:0] SE_out_redist17_i_idxprom102_conv2d1x128_vt_select_31_b_52_fifo_and0;
    wire [0:0] SE_out_redist17_i_idxprom102_conv2d1x128_vt_select_31_b_52_fifo_and1;
    wire [0:0] SE_out_redist17_i_idxprom102_conv2d1x128_vt_select_31_b_52_fifo_and2;
    wire [0:0] SE_out_redist17_i_idxprom102_conv2d1x128_vt_select_31_b_52_fifo_backStall;
    wire [0:0] SE_out_redist17_i_idxprom102_conv2d1x128_vt_select_31_b_52_fifo_V0;
    wire [0:0] SE_out_bubble_out_stall_entry_1_wireValid;
    wire [0:0] SE_out_bubble_out_stall_entry_1_backStall;
    wire [0:0] SE_out_bubble_out_stall_entry_1_V0;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_mem_memdep_4_conv2d1x134_aunroll_x_1_wireValid;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_mem_memdep_4_conv2d1x134_aunroll_x_1_and0;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_mem_memdep_4_conv2d1x134_aunroll_x_1_and1;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_mem_memdep_4_conv2d1x134_aunroll_x_1_and2;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_mem_memdep_4_conv2d1x134_aunroll_x_1_backStall;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_mem_memdep_4_conv2d1x134_aunroll_x_1_V0;
    wire [0:0] bubble_out_stall_entry_1_reg_valid_in;
    wire bubble_out_stall_entry_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_stall_entry_1_reg_stall_in;
    wire bubble_out_stall_entry_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_stall_entry_1_reg_valid_out;
    wire bubble_out_stall_entry_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_stall_entry_1_reg_stall_out;
    wire bubble_out_stall_entry_1_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_mem_memdep_15_conv2d1x142_aunroll_x_1_reg_valid_in;
    wire bubble_out_i_llvm_fpga_mem_memdep_15_conv2d1x142_aunroll_x_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_mem_memdep_15_conv2d1x142_aunroll_x_1_reg_stall_in;
    wire bubble_out_i_llvm_fpga_mem_memdep_15_conv2d1x142_aunroll_x_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_mem_memdep_15_conv2d1x142_aunroll_x_1_reg_valid_out;
    wire bubble_out_i_llvm_fpga_mem_memdep_15_conv2d1x142_aunroll_x_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_mem_memdep_15_conv2d1x142_aunroll_x_1_reg_stall_out;
    wire bubble_out_i_llvm_fpga_mem_memdep_15_conv2d1x142_aunroll_x_1_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_mem_memdep_4_conv2d1x134_aunroll_x_1_reg_valid_in;
    wire bubble_out_i_llvm_fpga_mem_memdep_4_conv2d1x134_aunroll_x_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_mem_memdep_4_conv2d1x134_aunroll_x_1_reg_stall_in;
    wire bubble_out_i_llvm_fpga_mem_memdep_4_conv2d1x134_aunroll_x_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_mem_memdep_4_conv2d1x134_aunroll_x_1_reg_valid_out;
    wire bubble_out_i_llvm_fpga_mem_memdep_4_conv2d1x134_aunroll_x_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_mem_memdep_4_conv2d1x134_aunroll_x_1_reg_stall_out;
    wire bubble_out_i_llvm_fpga_mem_memdep_4_conv2d1x134_aunroll_x_1_reg_stall_out_bitsignaltemp;


    // bubble_join_stall_entry(BITJOIN,109)
    assign bubble_join_stall_entry_q = {in_c1_exe938, in_c1_exe837, in_c1_exe736, in_c1_exe635, in_c1_exe534, in_c1_exe433, in_c1_exe332, in_c1_exe3261, in_c1_exe3160, in_c1_exe3059, in_c1_exe2958, in_c1_exe2857, in_c1_exe2756, in_c1_exe2655, in_c1_exe2554, in_c1_exe2453, in_c1_exe2352, in_c1_exe231, in_c1_exe2251, in_c1_exe2150, in_c1_exe2049, in_c1_exe1948, in_c1_exe1847, in_c1_exe1746, in_c1_exe1645, in_c1_exe1544, in_c1_exe1443, in_c1_exe1342, in_c1_exe130, in_c1_exe1241, in_c1_exe1140, in_c1_exe1039, in_c0_exe544323, in_c0_exe444222, in_c0_exe344121, in_c0_exe1745529, in_c0_exe1645428, in_c0_exe1545327, in_c0_exe1445225, in_c0_exe1345124};

    // bubble_select_stall_entry(BITSELECT,110)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[31:0]);
    assign bubble_select_stall_entry_c = $unsigned(bubble_join_stall_entry_q[63:32]);
    assign bubble_select_stall_entry_d = $unsigned(bubble_join_stall_entry_q[64:64]);
    assign bubble_select_stall_entry_e = $unsigned(bubble_join_stall_entry_q[65:65]);
    assign bubble_select_stall_entry_f = $unsigned(bubble_join_stall_entry_q[129:66]);
    assign bubble_select_stall_entry_g = $unsigned(bubble_join_stall_entry_q[130:130]);
    assign bubble_select_stall_entry_h = $unsigned(bubble_join_stall_entry_q[131:131]);
    assign bubble_select_stall_entry_i = $unsigned(bubble_join_stall_entry_q[163:132]);
    assign bubble_select_stall_entry_j = $unsigned(bubble_join_stall_entry_q[195:164]);
    assign bubble_select_stall_entry_k = $unsigned(bubble_join_stall_entry_q[227:196]);
    assign bubble_select_stall_entry_l = $unsigned(bubble_join_stall_entry_q[259:228]);
    assign bubble_select_stall_entry_m = $unsigned(bubble_join_stall_entry_q[291:260]);
    assign bubble_select_stall_entry_n = $unsigned(bubble_join_stall_entry_q[323:292]);
    assign bubble_select_stall_entry_o = $unsigned(bubble_join_stall_entry_q[355:324]);
    assign bubble_select_stall_entry_p = $unsigned(bubble_join_stall_entry_q[387:356]);
    assign bubble_select_stall_entry_q = $unsigned(bubble_join_stall_entry_q[419:388]);
    assign bubble_select_stall_entry_r = $unsigned(bubble_join_stall_entry_q[451:420]);
    assign bubble_select_stall_entry_s = $unsigned(bubble_join_stall_entry_q[483:452]);
    assign bubble_select_stall_entry_t = $unsigned(bubble_join_stall_entry_q[515:484]);
    assign bubble_select_stall_entry_u = $unsigned(bubble_join_stall_entry_q[547:516]);
    assign bubble_select_stall_entry_v = $unsigned(bubble_join_stall_entry_q[579:548]);
    assign bubble_select_stall_entry_w = $unsigned(bubble_join_stall_entry_q[611:580]);
    assign bubble_select_stall_entry_x = $unsigned(bubble_join_stall_entry_q[643:612]);
    assign bubble_select_stall_entry_y = $unsigned(bubble_join_stall_entry_q[675:644]);
    assign bubble_select_stall_entry_z = $unsigned(bubble_join_stall_entry_q[707:676]);
    assign bubble_select_stall_entry_aa = $unsigned(bubble_join_stall_entry_q[739:708]);
    assign bubble_select_stall_entry_bb = $unsigned(bubble_join_stall_entry_q[771:740]);
    assign bubble_select_stall_entry_cc = $unsigned(bubble_join_stall_entry_q[803:772]);
    assign bubble_select_stall_entry_dd = $unsigned(bubble_join_stall_entry_q[835:804]);
    assign bubble_select_stall_entry_ee = $unsigned(bubble_join_stall_entry_q[867:836]);
    assign bubble_select_stall_entry_ff = $unsigned(bubble_join_stall_entry_q[899:868]);
    assign bubble_select_stall_entry_gg = $unsigned(bubble_join_stall_entry_q[931:900]);
    assign bubble_select_stall_entry_hh = $unsigned(bubble_join_stall_entry_q[963:932]);
    assign bubble_select_stall_entry_ii = $unsigned(bubble_join_stall_entry_q[995:964]);
    assign bubble_select_stall_entry_jj = $unsigned(bubble_join_stall_entry_q[1027:996]);
    assign bubble_select_stall_entry_kk = $unsigned(bubble_join_stall_entry_q[1059:1028]);
    assign bubble_select_stall_entry_ll = $unsigned(bubble_join_stall_entry_q[1091:1060]);
    assign bubble_select_stall_entry_mm = $unsigned(bubble_join_stall_entry_q[1123:1092]);
    assign bubble_select_stall_entry_nn = $unsigned(bubble_join_stall_entry_q[1155:1124]);
    assign bubble_select_stall_entry_oo = $unsigned(bubble_join_stall_entry_q[1187:1156]);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_add101_conv2d1x126(ADD,13)@0
    assign i_add101_conv2d1x126_a = {1'b0, bubble_select_stall_entry_i};
    assign i_add101_conv2d1x126_b = {1'b0, bubble_select_stall_entry_c};
    assign i_add101_conv2d1x126_o = $unsigned(i_add101_conv2d1x126_a) + $unsigned(i_add101_conv2d1x126_b);
    assign i_add101_conv2d1x126_q = i_add101_conv2d1x126_o[32:0];

    // bgTrunc_i_add101_conv2d1x126_sel_x(BITSELECT,55)@0
    assign bgTrunc_i_add101_conv2d1x126_sel_x_b = i_add101_conv2d1x126_q[31:0];

    // i_idxprom102_conv2d1x128_sel_x(BITSELECT,69)@0
    assign i_idxprom102_conv2d1x128_sel_x_b = {32'b00000000000000000000000000000000, bgTrunc_i_add101_conv2d1x126_sel_x_b[31:0]};

    // i_idxprom102_conv2d1x128_vt_select_31(BITSELECT,25)@0
    assign i_idxprom102_conv2d1x128_vt_select_31_b = i_idxprom102_conv2d1x128_sel_x_b[31:0];

    // redist17_i_idxprom102_conv2d1x128_vt_select_31_b_52_fifo(STALLFIFO,101)
    assign redist17_i_idxprom102_conv2d1x128_vt_select_31_b_52_fifo_valid_in = SE_stall_entry_V5;
    assign redist17_i_idxprom102_conv2d1x128_vt_select_31_b_52_fifo_stall_in = SE_out_redist17_i_idxprom102_conv2d1x128_vt_select_31_b_52_fifo_backStall;
    assign redist17_i_idxprom102_conv2d1x128_vt_select_31_b_52_fifo_data_in = i_idxprom102_conv2d1x128_vt_select_31_b;
    assign redist17_i_idxprom102_conv2d1x128_vt_select_31_b_52_fifo_valid_in_bitsignaltemp = redist17_i_idxprom102_conv2d1x128_vt_select_31_b_52_fifo_valid_in[0];
    assign redist17_i_idxprom102_conv2d1x128_vt_select_31_b_52_fifo_stall_in_bitsignaltemp = redist17_i_idxprom102_conv2d1x128_vt_select_31_b_52_fifo_stall_in[0];
    assign redist17_i_idxprom102_conv2d1x128_vt_select_31_b_52_fifo_valid_out[0] = redist17_i_idxprom102_conv2d1x128_vt_select_31_b_52_fifo_valid_out_bitsignaltemp;
    assign redist17_i_idxprom102_conv2d1x128_vt_select_31_b_52_fifo_stall_out[0] = redist17_i_idxprom102_conv2d1x128_vt_select_31_b_52_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(53),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(32),
        .IMPL("ram")
    ) theredist17_i_idxprom102_conv2d1x128_vt_select_31_b_52_fifo (
        .valid_in(redist17_i_idxprom102_conv2d1x128_vt_select_31_b_52_fifo_valid_in_bitsignaltemp),
        .stall_in(redist17_i_idxprom102_conv2d1x128_vt_select_31_b_52_fifo_stall_in_bitsignaltemp),
        .data_in(i_idxprom102_conv2d1x128_vt_select_31_b),
        .valid_out(redist17_i_idxprom102_conv2d1x128_vt_select_31_b_52_fifo_valid_out_bitsignaltemp),
        .stall_out(redist17_i_idxprom102_conv2d1x128_vt_select_31_b_52_fifo_stall_out_bitsignaltemp),
        .data_out(redist17_i_idxprom102_conv2d1x128_vt_select_31_b_52_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // join_for_coalesced_delay_1(BITJOIN,98)
    assign join_for_coalesced_delay_1_q = {bubble_select_stall_entry_e, bubble_select_stall_entry_d};

    // coalesced_delay_1_fifo(STALLFIFO,103)
    assign coalesced_delay_1_fifo_valid_in = SE_stall_entry_V3;
    assign coalesced_delay_1_fifo_stall_in = SE_out_bubble_out_i_llvm_fpga_mem_memdep_4_conv2d1x134_aunroll_x_1_backStall;
    assign coalesced_delay_1_fifo_data_in = join_for_coalesced_delay_1_q;
    assign coalesced_delay_1_fifo_valid_in_bitsignaltemp = coalesced_delay_1_fifo_valid_in[0];
    assign coalesced_delay_1_fifo_stall_in_bitsignaltemp = coalesced_delay_1_fifo_stall_in[0];
    assign coalesced_delay_1_fifo_valid_out[0] = coalesced_delay_1_fifo_valid_out_bitsignaltemp;
    assign coalesced_delay_1_fifo_stall_out[0] = coalesced_delay_1_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(55),
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

    // redist4_stall_entry_o10_52_fifo(STALLFIFO,100)
    assign redist4_stall_entry_o10_52_fifo_valid_in = SE_stall_entry_V2;
    assign redist4_stall_entry_o10_52_fifo_stall_in = SE_out_redist17_i_idxprom102_conv2d1x128_vt_select_31_b_52_fifo_backStall;
    assign redist4_stall_entry_o10_52_fifo_data_in = bubble_select_stall_entry_h;
    assign redist4_stall_entry_o10_52_fifo_valid_in_bitsignaltemp = redist4_stall_entry_o10_52_fifo_valid_in[0];
    assign redist4_stall_entry_o10_52_fifo_stall_in_bitsignaltemp = redist4_stall_entry_o10_52_fifo_stall_in[0];
    assign redist4_stall_entry_o10_52_fifo_valid_out[0] = redist4_stall_entry_o10_52_fifo_valid_out_bitsignaltemp;
    assign redist4_stall_entry_o10_52_fifo_stall_out[0] = redist4_stall_entry_o10_52_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(53),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist4_stall_entry_o10_52_fifo (
        .valid_in(redist4_stall_entry_o10_52_fifo_valid_in_bitsignaltemp),
        .stall_in(redist4_stall_entry_o10_52_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_stall_entry_h),
        .valid_out(redist4_stall_entry_o10_52_fifo_valid_out_bitsignaltemp),
        .stall_out(redist4_stall_entry_o10_52_fifo_stall_out_bitsignaltemp),
        .data_out(redist4_stall_entry_o10_52_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_fanout_f32_mult_add176_fanout_adaptor_conv2d1x13(REG,26)@0 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_llvm_fpga_fanout_f32_mult_add176_fanout_adaptor_conv2d1x13_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_i_llvm_fpga_fanout_f32_mult_add176_fanout_adaptor_conv2d1x13_backEN == 1'b1)
        begin
            i_llvm_fpga_fanout_f32_mult_add176_fanout_adaptor_conv2d1x13_q <= $unsigned(bubble_select_stall_entry_n);
        end
    end

    // i_llvm_fpga_fanout_f32_mult_add85177_fanout_adaptor_conv2d1x12(REG,27)@0 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_llvm_fpga_fanout_f32_mult_add85177_fanout_adaptor_conv2d1x12_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_i_llvm_fpga_fanout_f32_mult_add176_fanout_adaptor_conv2d1x13_backEN == 1'b1)
        begin
            i_llvm_fpga_fanout_f32_mult_add85177_fanout_adaptor_conv2d1x12_q <= $unsigned(bubble_select_stall_entry_o);
        end
    end

    // i_llvm_fpga_fanout_f32_mult_add86178_fanout_adaptor_conv2d1x11(REG,28)@0 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_llvm_fpga_fanout_f32_mult_add86178_fanout_adaptor_conv2d1x11_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_i_llvm_fpga_fanout_f32_mult_add176_fanout_adaptor_conv2d1x13_backEN == 1'b1)
        begin
            i_llvm_fpga_fanout_f32_mult_add86178_fanout_adaptor_conv2d1x11_q <= $unsigned(bubble_select_stall_entry_p);
        end
    end

    // i_llvm_fpga_fanout_f32_mult_add87179_fanout_adaptor_conv2d1x10(REG,29)@0 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_llvm_fpga_fanout_f32_mult_add87179_fanout_adaptor_conv2d1x10_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_i_llvm_fpga_fanout_f32_mult_add176_fanout_adaptor_conv2d1x13_backEN == 1'b1)
        begin
            i_llvm_fpga_fanout_f32_mult_add87179_fanout_adaptor_conv2d1x10_q <= $unsigned(bubble_select_stall_entry_q);
        end
    end

    // SE_out_i_llvm_fpga_push_token_priv_i10_ap_push_conv2d1x145(STALLENABLE,150)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_token_priv_i10_ap_push_conv2d1x145_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_token_priv_i10_ap_push_conv2d1x145_wireValid = i_llvm_fpga_push_token_priv_i10_ap_push_conv2d1x145_out_valid_out;

    // i_ap_dep345_ext_conv2d1x144_vt_const_9(CONSTANT,16)
    assign i_ap_dep345_ext_conv2d1x144_vt_const_9_q = $unsigned(9'b000000000);

    // bubble_join_i_llvm_fpga_mem_memdep_15_conv2d1x142_aunroll_x(BITJOIN,116)
    assign bubble_join_i_llvm_fpga_mem_memdep_15_conv2d1x142_aunroll_x_q = i_llvm_fpga_mem_memdep_15_conv2d1x142_aunroll_x_out_o_writeack;

    // bubble_select_i_llvm_fpga_mem_memdep_15_conv2d1x142_aunroll_x(BITSELECT,117)
    assign bubble_select_i_llvm_fpga_mem_memdep_15_conv2d1x142_aunroll_x_b = $unsigned(bubble_join_i_llvm_fpga_mem_memdep_15_conv2d1x142_aunroll_x_q[0:0]);

    // bubble_join_i_llvm_fpga_mem_memdep_4_conv2d1x134_aunroll_x(BITJOIN,120)
    assign bubble_join_i_llvm_fpga_mem_memdep_4_conv2d1x134_aunroll_x_q = i_llvm_fpga_mem_memdep_4_conv2d1x134_aunroll_x_out_o_writeack;

    // bubble_select_i_llvm_fpga_mem_memdep_4_conv2d1x134_aunroll_x(BITSELECT,121)
    assign bubble_select_i_llvm_fpga_mem_memdep_4_conv2d1x134_aunroll_x_b = $unsigned(bubble_join_i_llvm_fpga_mem_memdep_4_conv2d1x134_aunroll_x_q[0:0]);

    // i_ap_dep344_conv2d1x143(LOGICAL,14)@2
    assign i_ap_dep344_conv2d1x143_q = bubble_select_i_llvm_fpga_mem_memdep_4_conv2d1x134_aunroll_x_b | bubble_select_i_llvm_fpga_mem_memdep_15_conv2d1x142_aunroll_x_b;

    // i_ap_dep345_ext_conv2d1x144_sel_x(BITSELECT,62)@2
    assign i_ap_dep345_ext_conv2d1x144_sel_x_b = {9'b000000000, i_ap_dep344_conv2d1x143_q[0:0]};

    // i_ap_dep345_ext_conv2d1x144_vt_select_0(BITSELECT,18)@2
    assign i_ap_dep345_ext_conv2d1x144_vt_select_0_b = i_ap_dep345_ext_conv2d1x144_sel_x_b[0:0];

    // i_ap_dep345_ext_conv2d1x144_vt_join(BITJOIN,17)@2
    assign i_ap_dep345_ext_conv2d1x144_vt_join_q = {i_ap_dep345_ext_conv2d1x144_vt_const_9_q, i_ap_dep345_ext_conv2d1x144_vt_select_0_b};

    // i_llvm_fpga_push_token_priv_i10_ap_push_conv2d1x145(BLACKBOX,31)@2
    // in in_stall_in@20000000
    // out out_data_out@3
    // out out_feedback_out_1@20000000
    // out out_feedback_valid_out_1@20000000
    // out out_stall_out@20000000
    // out out_valid_out@3
    conv2d1x1_i_llvm_fpga_push_token_priv_i10_ap_push_0 thei_llvm_fpga_push_token_priv_i10_ap_push_conv2d1x145 (
        .in_data_in(i_ap_dep345_ext_conv2d1x144_vt_join_q),
        .in_feedback_stall_in_1(in_feedback_stall_in_1),
        .in_stall_in(SE_out_i_llvm_fpga_push_token_priv_i10_ap_push_conv2d1x145_backStall),
        .in_valid_in(SE_i_ap_dep344_conv2d1x143_V0),
        .out_data_out(),
        .out_feedback_out_1(i_llvm_fpga_push_token_priv_i10_ap_push_conv2d1x145_out_feedback_out_1),
        .out_feedback_valid_out_1(i_llvm_fpga_push_token_priv_i10_ap_push_conv2d1x145_out_feedback_valid_out_1),
        .out_stall_out(i_llvm_fpga_push_token_priv_i10_ap_push_conv2d1x145_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_token_priv_i10_ap_push_conv2d1x145_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_out_i_llvm_fpga_mem_memdep_4_conv2d1x134_aunroll_x_1_reg(STALLFIFO,231)
    assign bubble_out_i_llvm_fpga_mem_memdep_4_conv2d1x134_aunroll_x_1_reg_valid_in = SE_out_i_llvm_fpga_mem_memdep_4_conv2d1x134_aunroll_x_V0;
    assign bubble_out_i_llvm_fpga_mem_memdep_4_conv2d1x134_aunroll_x_1_reg_stall_in = SE_out_bubble_out_i_llvm_fpga_mem_memdep_4_conv2d1x134_aunroll_x_1_backStall;
    assign bubble_out_i_llvm_fpga_mem_memdep_4_conv2d1x134_aunroll_x_1_reg_valid_in_bitsignaltemp = bubble_out_i_llvm_fpga_mem_memdep_4_conv2d1x134_aunroll_x_1_reg_valid_in[0];
    assign bubble_out_i_llvm_fpga_mem_memdep_4_conv2d1x134_aunroll_x_1_reg_stall_in_bitsignaltemp = bubble_out_i_llvm_fpga_mem_memdep_4_conv2d1x134_aunroll_x_1_reg_stall_in[0];
    assign bubble_out_i_llvm_fpga_mem_memdep_4_conv2d1x134_aunroll_x_1_reg_valid_out[0] = bubble_out_i_llvm_fpga_mem_memdep_4_conv2d1x134_aunroll_x_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_llvm_fpga_mem_memdep_4_conv2d1x134_aunroll_x_1_reg_stall_out[0] = bubble_out_i_llvm_fpga_mem_memdep_4_conv2d1x134_aunroll_x_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(53),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_i_llvm_fpga_mem_memdep_4_conv2d1x134_aunroll_x_1_reg (
        .valid_in(bubble_out_i_llvm_fpga_mem_memdep_4_conv2d1x134_aunroll_x_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_llvm_fpga_mem_memdep_4_conv2d1x134_aunroll_x_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_i_llvm_fpga_mem_memdep_4_conv2d1x134_aunroll_x_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_llvm_fpga_mem_memdep_4_conv2d1x134_aunroll_x_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_mem_memdep_4_conv2d1x134_aunroll_x(STALLENABLE,167)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_mem_memdep_4_conv2d1x134_aunroll_x_fromReg0 <= '0;
            SE_out_i_llvm_fpga_mem_memdep_4_conv2d1x134_aunroll_x_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_mem_memdep_4_conv2d1x134_aunroll_x_fromReg0 <= SE_out_i_llvm_fpga_mem_memdep_4_conv2d1x134_aunroll_x_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_mem_memdep_4_conv2d1x134_aunroll_x_fromReg1 <= SE_out_i_llvm_fpga_mem_memdep_4_conv2d1x134_aunroll_x_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_mem_memdep_4_conv2d1x134_aunroll_x_consumed0 = (~ (bubble_out_i_llvm_fpga_mem_memdep_4_conv2d1x134_aunroll_x_1_reg_stall_out) & SE_out_i_llvm_fpga_mem_memdep_4_conv2d1x134_aunroll_x_wireValid) | SE_out_i_llvm_fpga_mem_memdep_4_conv2d1x134_aunroll_x_fromReg0;
    assign SE_out_i_llvm_fpga_mem_memdep_4_conv2d1x134_aunroll_x_consumed1 = (~ (SE_i_ap_dep344_conv2d1x143_backStall) & SE_out_i_llvm_fpga_mem_memdep_4_conv2d1x134_aunroll_x_wireValid) | SE_out_i_llvm_fpga_mem_memdep_4_conv2d1x134_aunroll_x_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_mem_memdep_4_conv2d1x134_aunroll_x_StallValid = SE_out_i_llvm_fpga_mem_memdep_4_conv2d1x134_aunroll_x_backStall & SE_out_i_llvm_fpga_mem_memdep_4_conv2d1x134_aunroll_x_wireValid;
    assign SE_out_i_llvm_fpga_mem_memdep_4_conv2d1x134_aunroll_x_toReg0 = SE_out_i_llvm_fpga_mem_memdep_4_conv2d1x134_aunroll_x_StallValid & SE_out_i_llvm_fpga_mem_memdep_4_conv2d1x134_aunroll_x_consumed0;
    assign SE_out_i_llvm_fpga_mem_memdep_4_conv2d1x134_aunroll_x_toReg1 = SE_out_i_llvm_fpga_mem_memdep_4_conv2d1x134_aunroll_x_StallValid & SE_out_i_llvm_fpga_mem_memdep_4_conv2d1x134_aunroll_x_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_memdep_4_conv2d1x134_aunroll_x_or0 = SE_out_i_llvm_fpga_mem_memdep_4_conv2d1x134_aunroll_x_consumed0;
    assign SE_out_i_llvm_fpga_mem_memdep_4_conv2d1x134_aunroll_x_wireStall = ~ (SE_out_i_llvm_fpga_mem_memdep_4_conv2d1x134_aunroll_x_consumed1 & SE_out_i_llvm_fpga_mem_memdep_4_conv2d1x134_aunroll_x_or0);
    assign SE_out_i_llvm_fpga_mem_memdep_4_conv2d1x134_aunroll_x_backStall = SE_out_i_llvm_fpga_mem_memdep_4_conv2d1x134_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_memdep_4_conv2d1x134_aunroll_x_V0 = SE_out_i_llvm_fpga_mem_memdep_4_conv2d1x134_aunroll_x_wireValid & ~ (SE_out_i_llvm_fpga_mem_memdep_4_conv2d1x134_aunroll_x_fromReg0);
    assign SE_out_i_llvm_fpga_mem_memdep_4_conv2d1x134_aunroll_x_V1 = SE_out_i_llvm_fpga_mem_memdep_4_conv2d1x134_aunroll_x_wireValid & ~ (SE_out_i_llvm_fpga_mem_memdep_4_conv2d1x134_aunroll_x_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_memdep_4_conv2d1x134_aunroll_x_wireValid = i_llvm_fpga_mem_memdep_4_conv2d1x134_aunroll_x_out_o_valid;

    // SE_i_ap_dep344_conv2d1x143(STALLENABLE,136)
    // Valid signal propagation
    assign SE_i_ap_dep344_conv2d1x143_V0 = SE_i_ap_dep344_conv2d1x143_wireValid;
    // Backward Stall generation
    assign SE_i_ap_dep344_conv2d1x143_backStall = i_llvm_fpga_push_token_priv_i10_ap_push_conv2d1x145_out_stall_out | ~ (SE_i_ap_dep344_conv2d1x143_wireValid);
    // Computing multiple Valid(s)
    assign SE_i_ap_dep344_conv2d1x143_and0 = SE_out_i_llvm_fpga_mem_memdep_15_conv2d1x142_aunroll_x_V1;
    assign SE_i_ap_dep344_conv2d1x143_wireValid = SE_out_i_llvm_fpga_mem_memdep_4_conv2d1x134_aunroll_x_V1 & SE_i_ap_dep344_conv2d1x143_and0;

    // bubble_out_i_llvm_fpga_mem_memdep_15_conv2d1x142_aunroll_x_1_reg(STALLFIFO,230)
    assign bubble_out_i_llvm_fpga_mem_memdep_15_conv2d1x142_aunroll_x_1_reg_valid_in = SE_out_i_llvm_fpga_mem_memdep_15_conv2d1x142_aunroll_x_V0;
    assign bubble_out_i_llvm_fpga_mem_memdep_15_conv2d1x142_aunroll_x_1_reg_stall_in = SE_out_bubble_out_i_llvm_fpga_mem_memdep_4_conv2d1x134_aunroll_x_1_backStall;
    assign bubble_out_i_llvm_fpga_mem_memdep_15_conv2d1x142_aunroll_x_1_reg_valid_in_bitsignaltemp = bubble_out_i_llvm_fpga_mem_memdep_15_conv2d1x142_aunroll_x_1_reg_valid_in[0];
    assign bubble_out_i_llvm_fpga_mem_memdep_15_conv2d1x142_aunroll_x_1_reg_stall_in_bitsignaltemp = bubble_out_i_llvm_fpga_mem_memdep_15_conv2d1x142_aunroll_x_1_reg_stall_in[0];
    assign bubble_out_i_llvm_fpga_mem_memdep_15_conv2d1x142_aunroll_x_1_reg_valid_out[0] = bubble_out_i_llvm_fpga_mem_memdep_15_conv2d1x142_aunroll_x_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_llvm_fpga_mem_memdep_15_conv2d1x142_aunroll_x_1_reg_stall_out[0] = bubble_out_i_llvm_fpga_mem_memdep_15_conv2d1x142_aunroll_x_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(53),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_i_llvm_fpga_mem_memdep_15_conv2d1x142_aunroll_x_1_reg (
        .valid_in(bubble_out_i_llvm_fpga_mem_memdep_15_conv2d1x142_aunroll_x_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_llvm_fpga_mem_memdep_15_conv2d1x142_aunroll_x_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_i_llvm_fpga_mem_memdep_15_conv2d1x142_aunroll_x_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_llvm_fpga_mem_memdep_15_conv2d1x142_aunroll_x_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_mem_memdep_15_conv2d1x142_aunroll_x(STALLENABLE,165)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_mem_memdep_15_conv2d1x142_aunroll_x_fromReg0 <= '0;
            SE_out_i_llvm_fpga_mem_memdep_15_conv2d1x142_aunroll_x_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_mem_memdep_15_conv2d1x142_aunroll_x_fromReg0 <= SE_out_i_llvm_fpga_mem_memdep_15_conv2d1x142_aunroll_x_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_mem_memdep_15_conv2d1x142_aunroll_x_fromReg1 <= SE_out_i_llvm_fpga_mem_memdep_15_conv2d1x142_aunroll_x_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_mem_memdep_15_conv2d1x142_aunroll_x_consumed0 = (~ (bubble_out_i_llvm_fpga_mem_memdep_15_conv2d1x142_aunroll_x_1_reg_stall_out) & SE_out_i_llvm_fpga_mem_memdep_15_conv2d1x142_aunroll_x_wireValid) | SE_out_i_llvm_fpga_mem_memdep_15_conv2d1x142_aunroll_x_fromReg0;
    assign SE_out_i_llvm_fpga_mem_memdep_15_conv2d1x142_aunroll_x_consumed1 = (~ (SE_i_ap_dep344_conv2d1x143_backStall) & SE_out_i_llvm_fpga_mem_memdep_15_conv2d1x142_aunroll_x_wireValid) | SE_out_i_llvm_fpga_mem_memdep_15_conv2d1x142_aunroll_x_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_mem_memdep_15_conv2d1x142_aunroll_x_StallValid = SE_out_i_llvm_fpga_mem_memdep_15_conv2d1x142_aunroll_x_backStall & SE_out_i_llvm_fpga_mem_memdep_15_conv2d1x142_aunroll_x_wireValid;
    assign SE_out_i_llvm_fpga_mem_memdep_15_conv2d1x142_aunroll_x_toReg0 = SE_out_i_llvm_fpga_mem_memdep_15_conv2d1x142_aunroll_x_StallValid & SE_out_i_llvm_fpga_mem_memdep_15_conv2d1x142_aunroll_x_consumed0;
    assign SE_out_i_llvm_fpga_mem_memdep_15_conv2d1x142_aunroll_x_toReg1 = SE_out_i_llvm_fpga_mem_memdep_15_conv2d1x142_aunroll_x_StallValid & SE_out_i_llvm_fpga_mem_memdep_15_conv2d1x142_aunroll_x_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_memdep_15_conv2d1x142_aunroll_x_or0 = SE_out_i_llvm_fpga_mem_memdep_15_conv2d1x142_aunroll_x_consumed0;
    assign SE_out_i_llvm_fpga_mem_memdep_15_conv2d1x142_aunroll_x_wireStall = ~ (SE_out_i_llvm_fpga_mem_memdep_15_conv2d1x142_aunroll_x_consumed1 & SE_out_i_llvm_fpga_mem_memdep_15_conv2d1x142_aunroll_x_or0);
    assign SE_out_i_llvm_fpga_mem_memdep_15_conv2d1x142_aunroll_x_backStall = SE_out_i_llvm_fpga_mem_memdep_15_conv2d1x142_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_memdep_15_conv2d1x142_aunroll_x_V0 = SE_out_i_llvm_fpga_mem_memdep_15_conv2d1x142_aunroll_x_wireValid & ~ (SE_out_i_llvm_fpga_mem_memdep_15_conv2d1x142_aunroll_x_fromReg0);
    assign SE_out_i_llvm_fpga_mem_memdep_15_conv2d1x142_aunroll_x_V1 = SE_out_i_llvm_fpga_mem_memdep_15_conv2d1x142_aunroll_x_wireValid & ~ (SE_out_i_llvm_fpga_mem_memdep_15_conv2d1x142_aunroll_x_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_memdep_15_conv2d1x142_aunroll_x_wireValid = i_llvm_fpga_mem_memdep_15_conv2d1x142_aunroll_x_out_o_valid;

    // c_i64_462970041693686988852(CONSTANT,4)
    assign c_i64_462970041693686988852_q = $unsigned(64'b0100000001000000000000000000000000000000000000000000000000000000);

    // join_for_coalesced_delay_0(BITJOIN,95)
    assign join_for_coalesced_delay_0_q = {bubble_select_stall_entry_g, bubble_select_stall_entry_oo, bubble_select_stall_entry_nn, bubble_select_stall_entry_mm, bubble_select_stall_entry_ll, bubble_select_stall_entry_kk, bubble_select_stall_entry_jj, bubble_select_stall_entry_ii, bubble_select_stall_entry_x, bubble_select_stall_entry_m, bubble_select_stall_entry_l, bubble_select_stall_entry_k, bubble_select_stall_entry_j, bubble_select_stall_entry_f};

    // coalesced_delay_0_0(REG,102)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_0_0_q <= $unsigned(449'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_i_llvm_fpga_fanout_f32_mult_add176_fanout_adaptor_conv2d1x13_backEN == 1'b1)
        begin
            coalesced_delay_0_0_q <= $unsigned(join_for_coalesced_delay_0_q);
        end
    end

    // sel_for_coalesced_delay_0(BITSELECT,96)
    assign sel_for_coalesced_delay_0_b = $unsigned(coalesced_delay_0_0_q[63:0]);
    assign sel_for_coalesced_delay_0_c = $unsigned(coalesced_delay_0_0_q[95:64]);
    assign sel_for_coalesced_delay_0_d = $unsigned(coalesced_delay_0_0_q[127:96]);
    assign sel_for_coalesced_delay_0_e = $unsigned(coalesced_delay_0_0_q[159:128]);
    assign sel_for_coalesced_delay_0_f = $unsigned(coalesced_delay_0_0_q[191:160]);
    assign sel_for_coalesced_delay_0_g = $unsigned(coalesced_delay_0_0_q[223:192]);
    assign sel_for_coalesced_delay_0_h = $unsigned(coalesced_delay_0_0_q[255:224]);
    assign sel_for_coalesced_delay_0_i = $unsigned(coalesced_delay_0_0_q[287:256]);
    assign sel_for_coalesced_delay_0_j = $unsigned(coalesced_delay_0_0_q[319:288]);
    assign sel_for_coalesced_delay_0_k = $unsigned(coalesced_delay_0_0_q[351:320]);
    assign sel_for_coalesced_delay_0_l = $unsigned(coalesced_delay_0_0_q[383:352]);
    assign sel_for_coalesced_delay_0_m = $unsigned(coalesced_delay_0_0_q[415:384]);
    assign sel_for_coalesced_delay_0_n = $unsigned(coalesced_delay_0_0_q[447:416]);
    assign sel_for_coalesced_delay_0_o = $unsigned(coalesced_delay_0_0_q[448:448]);

    // i_llvm_fpga_mem_memdep_15_conv2d1x142_aunroll_x(BLACKBOX,70)@1
    // in in_i_stall@20000000
    // out out_memdep_15_conv2d1x1_avm_address@20000000
    // out out_memdep_15_conv2d1x1_avm_burstcount@20000000
    // out out_memdep_15_conv2d1x1_avm_byteenable@20000000
    // out out_memdep_15_conv2d1x1_avm_enable@20000000
    // out out_memdep_15_conv2d1x1_avm_read@20000000
    // out out_memdep_15_conv2d1x1_avm_write@20000000
    // out out_memdep_15_conv2d1x1_avm_writedata@20000000
    // out out_o_stall@20000000
    // out out_o_valid@2
    // out out_o_writeack@2
    conv2d1x1_i_llvm_fpga_mem_memdep_15_0 thei_llvm_fpga_mem_memdep_15_conv2d1x142_aunroll_x (
        .in_AddrOffset(sel_for_coalesced_delay_0_b),
        .in_flush(in_flush),
        .in_i_address(c_i64_462970041693686988852_q),
        .in_i_predicate(sel_for_coalesced_delay_0_o),
        .in_i_stall(SE_out_i_llvm_fpga_mem_memdep_15_conv2d1x142_aunroll_x_backStall),
        .in_i_valid(SE_i_llvm_fpga_fanout_f32_mult_add176_fanout_adaptor_conv2d1x13_V1),
        .in_memdep_15_conv2d1x1_avm_readdata(in_memdep_15_conv2d1x1_avm_readdata),
        .in_memdep_15_conv2d1x1_avm_readdatavalid(in_memdep_15_conv2d1x1_avm_readdatavalid),
        .in_memdep_15_conv2d1x1_avm_waitrequest(in_memdep_15_conv2d1x1_avm_waitrequest),
        .in_memdep_15_conv2d1x1_avm_writeack(in_memdep_15_conv2d1x1_avm_writeack),
        .in_i_writedata_0_tpl(sel_for_coalesced_delay_0_f),
        .in_i_writedata_1_tpl(sel_for_coalesced_delay_0_g),
        .in_i_writedata_2_tpl(sel_for_coalesced_delay_0_h),
        .in_i_writedata_3_tpl(sel_for_coalesced_delay_0_i),
        .in_i_writedata_4_tpl(sel_for_coalesced_delay_0_j),
        .in_i_writedata_5_tpl(sel_for_coalesced_delay_0_k),
        .in_i_writedata_6_tpl(sel_for_coalesced_delay_0_l),
        .in_i_writedata_7_tpl(sel_for_coalesced_delay_0_m),
        .in_i_writedata_8_tpl(sel_for_coalesced_delay_0_n),
        .in_i_writedata_9_tpl(sel_for_coalesced_delay_0_c),
        .in_i_writedata_10_tpl(sel_for_coalesced_delay_0_d),
        .in_i_writedata_11_tpl(sel_for_coalesced_delay_0_e),
        .in_i_writedata_12_tpl(i_llvm_fpga_fanout_f32_mult_add87179_fanout_adaptor_conv2d1x10_q),
        .in_i_writedata_13_tpl(i_llvm_fpga_fanout_f32_mult_add86178_fanout_adaptor_conv2d1x11_q),
        .in_i_writedata_14_tpl(i_llvm_fpga_fanout_f32_mult_add85177_fanout_adaptor_conv2d1x12_q),
        .in_i_writedata_15_tpl(i_llvm_fpga_fanout_f32_mult_add176_fanout_adaptor_conv2d1x13_q),
        .out_memdep_15_conv2d1x1_avm_address(i_llvm_fpga_mem_memdep_15_conv2d1x142_aunroll_x_out_memdep_15_conv2d1x1_avm_address),
        .out_memdep_15_conv2d1x1_avm_burstcount(i_llvm_fpga_mem_memdep_15_conv2d1x142_aunroll_x_out_memdep_15_conv2d1x1_avm_burstcount),
        .out_memdep_15_conv2d1x1_avm_byteenable(i_llvm_fpga_mem_memdep_15_conv2d1x142_aunroll_x_out_memdep_15_conv2d1x1_avm_byteenable),
        .out_memdep_15_conv2d1x1_avm_enable(i_llvm_fpga_mem_memdep_15_conv2d1x142_aunroll_x_out_memdep_15_conv2d1x1_avm_enable),
        .out_memdep_15_conv2d1x1_avm_read(i_llvm_fpga_mem_memdep_15_conv2d1x142_aunroll_x_out_memdep_15_conv2d1x1_avm_read),
        .out_memdep_15_conv2d1x1_avm_write(i_llvm_fpga_mem_memdep_15_conv2d1x142_aunroll_x_out_memdep_15_conv2d1x1_avm_write),
        .out_memdep_15_conv2d1x1_avm_writedata(i_llvm_fpga_mem_memdep_15_conv2d1x142_aunroll_x_out_memdep_15_conv2d1x1_avm_writedata),
        .out_o_stall(i_llvm_fpga_mem_memdep_15_conv2d1x142_aunroll_x_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_memdep_15_conv2d1x142_aunroll_x_out_o_valid),
        .out_o_writeack(i_llvm_fpga_mem_memdep_15_conv2d1x142_aunroll_x_out_o_writeack),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i64_462970041693686995251(CONSTANT,5)
    assign c_i64_462970041693686995251_q = $unsigned(64'b0100000001000000000000000000000000000000000000000000000001000000);

    // i_llvm_fpga_mem_memdep_4_conv2d1x134_aunroll_x(BLACKBOX,71)@1
    // in in_i_stall@20000000
    // out out_memdep_4_conv2d1x1_avm_address@20000000
    // out out_memdep_4_conv2d1x1_avm_burstcount@20000000
    // out out_memdep_4_conv2d1x1_avm_byteenable@20000000
    // out out_memdep_4_conv2d1x1_avm_enable@20000000
    // out out_memdep_4_conv2d1x1_avm_read@20000000
    // out out_memdep_4_conv2d1x1_avm_write@20000000
    // out out_memdep_4_conv2d1x1_avm_writedata@20000000
    // out out_o_stall@20000000
    // out out_o_valid@2
    // out out_o_writeack@2
    conv2d1x1_i_llvm_fpga_mem_memdep_4_0 thei_llvm_fpga_mem_memdep_4_conv2d1x134_aunroll_x (
        .in_AddrOffset(sel_for_coalesced_delay_0_b),
        .in_flush(in_flush),
        .in_i_address(c_i64_462970041693686995251_q),
        .in_i_predicate(sel_for_coalesced_delay_0_o),
        .in_i_stall(SE_out_i_llvm_fpga_mem_memdep_4_conv2d1x134_aunroll_x_backStall),
        .in_i_valid(SE_i_llvm_fpga_fanout_f32_mult_add176_fanout_adaptor_conv2d1x13_V0),
        .in_memdep_4_conv2d1x1_avm_readdata(in_memdep_4_conv2d1x1_avm_readdata),
        .in_memdep_4_conv2d1x1_avm_readdatavalid(in_memdep_4_conv2d1x1_avm_readdatavalid),
        .in_memdep_4_conv2d1x1_avm_waitrequest(in_memdep_4_conv2d1x1_avm_waitrequest),
        .in_memdep_4_conv2d1x1_avm_writeack(in_memdep_4_conv2d1x1_avm_writeack),
        .in_i_writedata_0_tpl(i_llvm_fpga_fanout_f32_mult_add87179_fanout_adaptor_conv2d1x10_q),
        .in_i_writedata_1_tpl(i_llvm_fpga_fanout_f32_mult_add86178_fanout_adaptor_conv2d1x11_q),
        .in_i_writedata_2_tpl(i_llvm_fpga_fanout_f32_mult_add85177_fanout_adaptor_conv2d1x12_q),
        .in_i_writedata_3_tpl(i_llvm_fpga_fanout_f32_mult_add176_fanout_adaptor_conv2d1x13_q),
        .out_memdep_4_conv2d1x1_avm_address(i_llvm_fpga_mem_memdep_4_conv2d1x134_aunroll_x_out_memdep_4_conv2d1x1_avm_address),
        .out_memdep_4_conv2d1x1_avm_burstcount(i_llvm_fpga_mem_memdep_4_conv2d1x134_aunroll_x_out_memdep_4_conv2d1x1_avm_burstcount),
        .out_memdep_4_conv2d1x1_avm_byteenable(i_llvm_fpga_mem_memdep_4_conv2d1x134_aunroll_x_out_memdep_4_conv2d1x1_avm_byteenable),
        .out_memdep_4_conv2d1x1_avm_enable(i_llvm_fpga_mem_memdep_4_conv2d1x134_aunroll_x_out_memdep_4_conv2d1x1_avm_enable),
        .out_memdep_4_conv2d1x1_avm_read(i_llvm_fpga_mem_memdep_4_conv2d1x134_aunroll_x_out_memdep_4_conv2d1x1_avm_read),
        .out_memdep_4_conv2d1x1_avm_write(i_llvm_fpga_mem_memdep_4_conv2d1x134_aunroll_x_out_memdep_4_conv2d1x1_avm_write),
        .out_memdep_4_conv2d1x1_avm_writedata(i_llvm_fpga_mem_memdep_4_conv2d1x134_aunroll_x_out_memdep_4_conv2d1x1_avm_writedata),
        .out_o_stall(i_llvm_fpga_mem_memdep_4_conv2d1x134_aunroll_x_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_memdep_4_conv2d1x134_aunroll_x_out_o_valid),
        .out_o_writeack(i_llvm_fpga_mem_memdep_4_conv2d1x134_aunroll_x_out_o_writeack),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_i_llvm_fpga_fanout_f32_mult_add176_fanout_adaptor_conv2d1x13(STALLENABLE,143)
    // Valid signal propagation
    assign SE_i_llvm_fpga_fanout_f32_mult_add176_fanout_adaptor_conv2d1x13_V0 = SE_i_llvm_fpga_fanout_f32_mult_add176_fanout_adaptor_conv2d1x13_R_v_0;
    assign SE_i_llvm_fpga_fanout_f32_mult_add176_fanout_adaptor_conv2d1x13_V1 = SE_i_llvm_fpga_fanout_f32_mult_add176_fanout_adaptor_conv2d1x13_R_v_1;
    // Stall signal propagation
    assign SE_i_llvm_fpga_fanout_f32_mult_add176_fanout_adaptor_conv2d1x13_s_tv_0 = i_llvm_fpga_mem_memdep_4_conv2d1x134_aunroll_x_out_o_stall & SE_i_llvm_fpga_fanout_f32_mult_add176_fanout_adaptor_conv2d1x13_R_v_0;
    assign SE_i_llvm_fpga_fanout_f32_mult_add176_fanout_adaptor_conv2d1x13_s_tv_1 = i_llvm_fpga_mem_memdep_15_conv2d1x142_aunroll_x_out_o_stall & SE_i_llvm_fpga_fanout_f32_mult_add176_fanout_adaptor_conv2d1x13_R_v_1;
    // Backward Enable generation
    assign SE_i_llvm_fpga_fanout_f32_mult_add176_fanout_adaptor_conv2d1x13_or0 = SE_i_llvm_fpga_fanout_f32_mult_add176_fanout_adaptor_conv2d1x13_s_tv_0;
    assign SE_i_llvm_fpga_fanout_f32_mult_add176_fanout_adaptor_conv2d1x13_backEN = ~ (SE_i_llvm_fpga_fanout_f32_mult_add176_fanout_adaptor_conv2d1x13_s_tv_1 | SE_i_llvm_fpga_fanout_f32_mult_add176_fanout_adaptor_conv2d1x13_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_llvm_fpga_fanout_f32_mult_add176_fanout_adaptor_conv2d1x13_v_s_0 = SE_i_llvm_fpga_fanout_f32_mult_add176_fanout_adaptor_conv2d1x13_backEN & SE_stall_entry_V1;
    // Backward Stall generation
    assign SE_i_llvm_fpga_fanout_f32_mult_add176_fanout_adaptor_conv2d1x13_backStall = ~ (SE_i_llvm_fpga_fanout_f32_mult_add176_fanout_adaptor_conv2d1x13_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_llvm_fpga_fanout_f32_mult_add176_fanout_adaptor_conv2d1x13_R_v_0 <= 1'b0;
            SE_i_llvm_fpga_fanout_f32_mult_add176_fanout_adaptor_conv2d1x13_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_i_llvm_fpga_fanout_f32_mult_add176_fanout_adaptor_conv2d1x13_backEN == 1'b0)
            begin
                SE_i_llvm_fpga_fanout_f32_mult_add176_fanout_adaptor_conv2d1x13_R_v_0 <= SE_i_llvm_fpga_fanout_f32_mult_add176_fanout_adaptor_conv2d1x13_R_v_0 & SE_i_llvm_fpga_fanout_f32_mult_add176_fanout_adaptor_conv2d1x13_s_tv_0;
            end
            else
            begin
                SE_i_llvm_fpga_fanout_f32_mult_add176_fanout_adaptor_conv2d1x13_R_v_0 <= SE_i_llvm_fpga_fanout_f32_mult_add176_fanout_adaptor_conv2d1x13_v_s_0;
            end

            if (SE_i_llvm_fpga_fanout_f32_mult_add176_fanout_adaptor_conv2d1x13_backEN == 1'b0)
            begin
                SE_i_llvm_fpga_fanout_f32_mult_add176_fanout_adaptor_conv2d1x13_R_v_1 <= SE_i_llvm_fpga_fanout_f32_mult_add176_fanout_adaptor_conv2d1x13_R_v_1 & SE_i_llvm_fpga_fanout_f32_mult_add176_fanout_adaptor_conv2d1x13_s_tv_1;
            end
            else
            begin
                SE_i_llvm_fpga_fanout_f32_mult_add176_fanout_adaptor_conv2d1x13_R_v_1 <= SE_i_llvm_fpga_fanout_f32_mult_add176_fanout_adaptor_conv2d1x13_v_s_0;
            end

        end
    end

    // i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_conv2d1x14(BLACKBOX,32)@52
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    conv2d1x1_i_llvm_fpga_sync_buffer_p1024f0000put_im_sync_buffer_0 thei_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_conv2d1x14 (
        .in_buffer_in(in_output_im),
        .in_i_dependence(GND_q),
        .in_stall_in(SE_out_redist17_i_idxprom102_conv2d1x128_vt_select_31_b_52_fifo_backStall),
        .in_valid_in(SE_out_bubble_out_stall_entry_1_V0),
        .out_buffer_out(i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_conv2d1x14_out_buffer_out),
        .out_stall_out(i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_conv2d1x14_out_stall_out),
        .out_valid_out(i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_conv2d1x14_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_bubble_out_stall_entry_1(STALLENABLE,192)
    // Valid signal propagation
    assign SE_out_bubble_out_stall_entry_1_V0 = SE_out_bubble_out_stall_entry_1_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_stall_entry_1_backStall = i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_conv2d1x14_out_stall_out | ~ (SE_out_bubble_out_stall_entry_1_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_stall_entry_1_wireValid = bubble_out_stall_entry_1_reg_valid_out;

    // bubble_out_stall_entry_1_reg(STALLFIFO,227)
    assign bubble_out_stall_entry_1_reg_valid_in = SE_stall_entry_V0;
    assign bubble_out_stall_entry_1_reg_stall_in = SE_out_bubble_out_stall_entry_1_backStall;
    assign bubble_out_stall_entry_1_reg_valid_in_bitsignaltemp = bubble_out_stall_entry_1_reg_valid_in[0];
    assign bubble_out_stall_entry_1_reg_stall_in_bitsignaltemp = bubble_out_stall_entry_1_reg_stall_in[0];
    assign bubble_out_stall_entry_1_reg_valid_out[0] = bubble_out_stall_entry_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_stall_entry_1_reg_stall_out[0] = bubble_out_stall_entry_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(53),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_stall_entry_1_reg (
        .valid_in(bubble_out_stall_entry_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_stall_entry_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_stall_entry_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_stall_entry_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_stall_entry(STALLENABLE,155)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_stall_entry_fromReg0 <= '0;
            SE_stall_entry_fromReg1 <= '0;
            SE_stall_entry_fromReg2 <= '0;
            SE_stall_entry_fromReg3 <= '0;
            SE_stall_entry_fromReg4 <= '0;
            SE_stall_entry_fromReg5 <= '0;
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
            // Successor 5
            SE_stall_entry_fromReg5 <= SE_stall_entry_toReg5;
        end
    end
    // Input Stall processing
    assign SE_stall_entry_consumed0 = (~ (bubble_out_stall_entry_1_reg_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg0;
    assign SE_stall_entry_consumed1 = (~ (SE_i_llvm_fpga_fanout_f32_mult_add176_fanout_adaptor_conv2d1x13_backStall) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg1;
    assign SE_stall_entry_consumed2 = (~ (redist4_stall_entry_o10_52_fifo_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg2;
    assign SE_stall_entry_consumed3 = (~ (coalesced_delay_1_fifo_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg3;
    assign SE_stall_entry_consumed4 = (~ (i_sfc_s_c0_in_for_cond85_preheader_loopexit_conv2d1x1s_c0_enter349_conv2d1x124_aunroll_x_out_o_stall) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg4;
    assign SE_stall_entry_consumed5 = (~ (redist17_i_idxprom102_conv2d1x128_vt_select_31_b_52_fifo_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg5;
    // Consuming
    assign SE_stall_entry_StallValid = SE_stall_entry_backStall & SE_stall_entry_wireValid;
    assign SE_stall_entry_toReg0 = SE_stall_entry_StallValid & SE_stall_entry_consumed0;
    assign SE_stall_entry_toReg1 = SE_stall_entry_StallValid & SE_stall_entry_consumed1;
    assign SE_stall_entry_toReg2 = SE_stall_entry_StallValid & SE_stall_entry_consumed2;
    assign SE_stall_entry_toReg3 = SE_stall_entry_StallValid & SE_stall_entry_consumed3;
    assign SE_stall_entry_toReg4 = SE_stall_entry_StallValid & SE_stall_entry_consumed4;
    assign SE_stall_entry_toReg5 = SE_stall_entry_StallValid & SE_stall_entry_consumed5;
    // Backward Stall generation
    assign SE_stall_entry_or0 = SE_stall_entry_consumed0;
    assign SE_stall_entry_or1 = SE_stall_entry_consumed1 & SE_stall_entry_or0;
    assign SE_stall_entry_or2 = SE_stall_entry_consumed2 & SE_stall_entry_or1;
    assign SE_stall_entry_or3 = SE_stall_entry_consumed3 & SE_stall_entry_or2;
    assign SE_stall_entry_or4 = SE_stall_entry_consumed4 & SE_stall_entry_or3;
    assign SE_stall_entry_wireStall = ~ (SE_stall_entry_consumed5 & SE_stall_entry_or4);
    assign SE_stall_entry_backStall = SE_stall_entry_wireStall;
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg0);
    assign SE_stall_entry_V1 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg1);
    assign SE_stall_entry_V2 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg2);
    assign SE_stall_entry_V3 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg3);
    assign SE_stall_entry_V4 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg4);
    assign SE_stall_entry_V5 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg5);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // i_sfc_s_c0_in_for_cond85_preheader_loopexit_conv2d1x1s_c0_enter349_conv2d1x124_aunroll_x(BLACKBOX,72)@0
    // in in_i_stall@20000000
    // out out_o_stall@20000000
    // out out_o_valid@52
    // out out_c0_exit368_0_tpl@52
    // out out_c0_exit368_1_tpl@52
    conv2d1x1_i_sfc_s_c0_in_for_cond85_prehe0000enter349_conv2d1x124 thei_sfc_s_c0_in_for_cond85_preheader_loopexit_conv2d1x1s_c0_enter349_conv2d1x124_aunroll_x (
        .in_i_stall(SE_out_redist17_i_idxprom102_conv2d1x128_vt_select_31_b_52_fifo_backStall),
        .in_i_valid(SE_stall_entry_V4),
        .in_c0_eni17348_0_tpl(GND_q),
        .in_c0_eni17348_1_tpl(bubble_select_stall_entry_b),
        .in_c0_eni17348_2_tpl(bubble_select_stall_entry_hh),
        .in_c0_eni17348_3_tpl(bubble_select_stall_entry_gg),
        .in_c0_eni17348_4_tpl(bubble_select_stall_entry_ff),
        .in_c0_eni17348_5_tpl(bubble_select_stall_entry_ee),
        .in_c0_eni17348_6_tpl(bubble_select_stall_entry_dd),
        .in_c0_eni17348_7_tpl(bubble_select_stall_entry_cc),
        .in_c0_eni17348_8_tpl(bubble_select_stall_entry_bb),
        .in_c0_eni17348_9_tpl(bubble_select_stall_entry_aa),
        .in_c0_eni17348_10_tpl(bubble_select_stall_entry_z),
        .in_c0_eni17348_11_tpl(bubble_select_stall_entry_y),
        .in_c0_eni17348_12_tpl(bubble_select_stall_entry_w),
        .in_c0_eni17348_13_tpl(bubble_select_stall_entry_v),
        .in_c0_eni17348_14_tpl(bubble_select_stall_entry_u),
        .in_c0_eni17348_15_tpl(bubble_select_stall_entry_t),
        .in_c0_eni17348_16_tpl(bubble_select_stall_entry_s),
        .in_c0_eni17348_17_tpl(bubble_select_stall_entry_r),
        .out_o_stall(i_sfc_s_c0_in_for_cond85_preheader_loopexit_conv2d1x1s_c0_enter349_conv2d1x124_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_for_cond85_preheader_loopexit_conv2d1x1s_c0_enter349_conv2d1x124_aunroll_x_out_o_valid),
        .out_c0_exit368_0_tpl(),
        .out_c0_exit368_1_tpl(i_sfc_s_c0_in_for_cond85_preheader_loopexit_conv2d1x1s_c0_enter349_conv2d1x124_aunroll_x_out_c0_exit368_1_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_sfc_s_c0_in_for_cond85_preheader_loopexit_conv2d1x1s_c0_enter349_conv2d1x124_aunroll_x(BITJOIN,124)
    assign bubble_join_i_sfc_s_c0_in_for_cond85_preheader_loopexit_conv2d1x1s_c0_enter349_conv2d1x124_aunroll_x_q = i_sfc_s_c0_in_for_cond85_preheader_loopexit_conv2d1x1s_c0_enter349_conv2d1x124_aunroll_x_out_c0_exit368_1_tpl;

    // bubble_select_i_sfc_s_c0_in_for_cond85_preheader_loopexit_conv2d1x1s_c0_enter349_conv2d1x124_aunroll_x(BITSELECT,125)
    assign bubble_select_i_sfc_s_c0_in_for_cond85_preheader_loopexit_conv2d1x1s_c0_enter349_conv2d1x124_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond85_preheader_loopexit_conv2d1x1s_c0_enter349_conv2d1x124_aunroll_x_q[31:0]);

    // SE_out_redist17_i_idxprom102_conv2d1x128_vt_select_31_b_52_fifo(STALLENABLE,177)
    // Valid signal propagation
    assign SE_out_redist17_i_idxprom102_conv2d1x128_vt_select_31_b_52_fifo_V0 = SE_out_redist17_i_idxprom102_conv2d1x128_vt_select_31_b_52_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_redist17_i_idxprom102_conv2d1x128_vt_select_31_b_52_fifo_backStall = i_llvm_fpga_mem_unnamed_conv2d1x116_conv2d1x132_out_o_stall | ~ (SE_out_redist17_i_idxprom102_conv2d1x128_vt_select_31_b_52_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_redist17_i_idxprom102_conv2d1x128_vt_select_31_b_52_fifo_and0 = redist17_i_idxprom102_conv2d1x128_vt_select_31_b_52_fifo_valid_out;
    assign SE_out_redist17_i_idxprom102_conv2d1x128_vt_select_31_b_52_fifo_and1 = redist4_stall_entry_o10_52_fifo_valid_out & SE_out_redist17_i_idxprom102_conv2d1x128_vt_select_31_b_52_fifo_and0;
    assign SE_out_redist17_i_idxprom102_conv2d1x128_vt_select_31_b_52_fifo_and2 = i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_conv2d1x14_out_valid_out & SE_out_redist17_i_idxprom102_conv2d1x128_vt_select_31_b_52_fifo_and1;
    assign SE_out_redist17_i_idxprom102_conv2d1x128_vt_select_31_b_52_fifo_wireValid = i_sfc_s_c0_in_for_cond85_preheader_loopexit_conv2d1x1s_c0_enter349_conv2d1x124_aunroll_x_out_o_valid & SE_out_redist17_i_idxprom102_conv2d1x128_vt_select_31_b_52_fifo_and2;

    // SE_out_bubble_out_i_llvm_fpga_mem_memdep_4_conv2d1x134_aunroll_x_1(STALLENABLE,210)
    // Valid signal propagation
    assign SE_out_bubble_out_i_llvm_fpga_mem_memdep_4_conv2d1x134_aunroll_x_1_V0 = SE_out_bubble_out_i_llvm_fpga_mem_memdep_4_conv2d1x134_aunroll_x_1_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_i_llvm_fpga_mem_memdep_4_conv2d1x134_aunroll_x_1_backStall = in_stall_in | ~ (SE_out_bubble_out_i_llvm_fpga_mem_memdep_4_conv2d1x134_aunroll_x_1_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_i_llvm_fpga_mem_memdep_4_conv2d1x134_aunroll_x_1_and0 = bubble_out_i_llvm_fpga_mem_memdep_4_conv2d1x134_aunroll_x_1_reg_valid_out;
    assign SE_out_bubble_out_i_llvm_fpga_mem_memdep_4_conv2d1x134_aunroll_x_1_and1 = coalesced_delay_1_fifo_valid_out & SE_out_bubble_out_i_llvm_fpga_mem_memdep_4_conv2d1x134_aunroll_x_1_and0;
    assign SE_out_bubble_out_i_llvm_fpga_mem_memdep_4_conv2d1x134_aunroll_x_1_and2 = bubble_out_i_llvm_fpga_mem_memdep_15_conv2d1x142_aunroll_x_1_reg_valid_out & SE_out_bubble_out_i_llvm_fpga_mem_memdep_4_conv2d1x134_aunroll_x_1_and1;
    assign SE_out_bubble_out_i_llvm_fpga_mem_memdep_4_conv2d1x134_aunroll_x_1_wireValid = i_llvm_fpga_mem_unnamed_conv2d1x116_conv2d1x132_out_o_valid & SE_out_bubble_out_i_llvm_fpga_mem_memdep_4_conv2d1x134_aunroll_x_1_and2;

    // bubble_join_redist4_stall_entry_o10_52_fifo(BITJOIN,127)
    assign bubble_join_redist4_stall_entry_o10_52_fifo_q = redist4_stall_entry_o10_52_fifo_data_out;

    // bubble_select_redist4_stall_entry_o10_52_fifo(BITSELECT,128)
    assign bubble_select_redist4_stall_entry_o10_52_fifo_b = $unsigned(bubble_join_redist4_stall_entry_o10_52_fifo_q[0:0]);

    // i_idxprom102_conv2d1x128_vt_const_63(CONSTANT,23)
    assign i_idxprom102_conv2d1x128_vt_const_63_q = $unsigned(32'b00000000000000000000000000000000);

    // bubble_join_redist17_i_idxprom102_conv2d1x128_vt_select_31_b_52_fifo(BITJOIN,130)
    assign bubble_join_redist17_i_idxprom102_conv2d1x128_vt_select_31_b_52_fifo_q = redist17_i_idxprom102_conv2d1x128_vt_select_31_b_52_fifo_data_out;

    // bubble_select_redist17_i_idxprom102_conv2d1x128_vt_select_31_b_52_fifo(BITSELECT,131)
    assign bubble_select_redist17_i_idxprom102_conv2d1x128_vt_select_31_b_52_fifo_b = $unsigned(bubble_join_redist17_i_idxprom102_conv2d1x128_vt_select_31_b_52_fifo_q[31:0]);

    // i_idxprom102_conv2d1x128_vt_join(BITJOIN,24)@52
    assign i_idxprom102_conv2d1x128_vt_join_q = {i_idxprom102_conv2d1x128_vt_const_63_q, bubble_select_redist17_i_idxprom102_conv2d1x128_vt_select_31_b_52_fifo_b};

    // i_arrayidx1033_conv2d1x10_narrow_x(BITSELECT,65)@52
    assign i_arrayidx1033_conv2d1x10_narrow_x_b = i_idxprom102_conv2d1x128_vt_join_q[61:0];

    // i_arrayidx1033_conv2d1x10_shift_join_x(BITJOIN,66)@52
    assign i_arrayidx1033_conv2d1x10_shift_join_x_q = {i_arrayidx1033_conv2d1x10_narrow_x_b, i_arrayidx1033_conv2d1x130_vt_const_1_q};

    // bubble_join_i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_conv2d1x14(BITJOIN,106)
    assign bubble_join_i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_conv2d1x14_q = i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_conv2d1x14_out_buffer_out;

    // bubble_select_i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_conv2d1x14(BITSELECT,107)
    assign bubble_select_i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_conv2d1x14_b = $unsigned(bubble_join_i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_conv2d1x14_q[63:0]);

    // i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_conv2d1x14_vt_select_63(BITSELECT,35)@52
    assign i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_conv2d1x14_vt_select_63_b = bubble_select_i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_conv2d1x14_b[63:10];

    // i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_conv2d1x14_vt_const_9(CONSTANT,33)
    assign i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_conv2d1x14_vt_const_9_q = $unsigned(10'b0000000000);

    // i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_conv2d1x14_vt_join(BITJOIN,34)@52
    assign i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_conv2d1x14_vt_join_q = {i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_conv2d1x14_vt_select_63_b, i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_conv2d1x14_vt_const_9_q};

    // i_arrayidx1033_conv2d1x10_add_x(ADD,63)@52
    assign i_arrayidx1033_conv2d1x10_add_x_a = {1'b0, i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_conv2d1x14_vt_join_q};
    assign i_arrayidx1033_conv2d1x10_add_x_b = {1'b0, i_arrayidx1033_conv2d1x10_shift_join_x_q};
    assign i_arrayidx1033_conv2d1x10_add_x_o = $unsigned(i_arrayidx1033_conv2d1x10_add_x_a) + $unsigned(i_arrayidx1033_conv2d1x10_add_x_b);
    assign i_arrayidx1033_conv2d1x10_add_x_q = i_arrayidx1033_conv2d1x10_add_x_o[64:0];

    // i_arrayidx1033_conv2d1x10_dupName_0_trunc_sel_x(BITSELECT,68)@52
    assign i_arrayidx1033_conv2d1x10_dupName_0_trunc_sel_x_b = i_arrayidx1033_conv2d1x10_add_x_q[63:0];

    // i_arrayidx1033_conv2d1x130_vt_select_63(BITSELECT,21)@52
    assign i_arrayidx1033_conv2d1x130_vt_select_63_b = i_arrayidx1033_conv2d1x10_dupName_0_trunc_sel_x_b[63:2];

    // i_arrayidx1033_conv2d1x130_vt_const_1(CONSTANT,19)
    assign i_arrayidx1033_conv2d1x130_vt_const_1_q = $unsigned(2'b00);

    // i_arrayidx1033_conv2d1x130_vt_join(BITJOIN,20)@52
    assign i_arrayidx1033_conv2d1x130_vt_join_q = {i_arrayidx1033_conv2d1x130_vt_select_63_b, i_arrayidx1033_conv2d1x130_vt_const_1_q};

    // i_llvm_fpga_mem_unnamed_conv2d1x116_conv2d1x132(BLACKBOX,30)@52
    // in in_i_stall@20000000
    // out out_lsu_unnamed_conv2d1x116_o_active@20000000
    // out out_o_stall@20000000
    // out out_o_valid@54
    // out out_unnamed_conv2d1x116_conv2d1x1_avm_address@20000000
    // out out_unnamed_conv2d1x116_conv2d1x1_avm_burstcount@20000000
    // out out_unnamed_conv2d1x116_conv2d1x1_avm_byteenable@20000000
    // out out_unnamed_conv2d1x116_conv2d1x1_avm_enable@20000000
    // out out_unnamed_conv2d1x116_conv2d1x1_avm_read@20000000
    // out out_unnamed_conv2d1x116_conv2d1x1_avm_write@20000000
    // out out_unnamed_conv2d1x116_conv2d1x1_avm_writedata@20000000
    conv2d1x1_i_llvm_fpga_mem_unnamed_16_conv2d1x10 thei_llvm_fpga_mem_unnamed_conv2d1x116_conv2d1x132 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx1033_conv2d1x130_vt_join_q),
        .in_i_predicate(bubble_select_redist4_stall_entry_o10_52_fifo_b),
        .in_i_stall(SE_out_bubble_out_i_llvm_fpga_mem_memdep_4_conv2d1x134_aunroll_x_1_backStall),
        .in_i_valid(SE_out_redist17_i_idxprom102_conv2d1x128_vt_select_31_b_52_fifo_V0),
        .in_i_writedata(bubble_select_i_sfc_s_c0_in_for_cond85_preheader_loopexit_conv2d1x1s_c0_enter349_conv2d1x124_aunroll_x_b),
        .in_unnamed_conv2d1x116_conv2d1x1_avm_readdata(in_unnamed_conv2d1x116_conv2d1x1_avm_readdata),
        .in_unnamed_conv2d1x116_conv2d1x1_avm_readdatavalid(in_unnamed_conv2d1x116_conv2d1x1_avm_readdatavalid),
        .in_unnamed_conv2d1x116_conv2d1x1_avm_waitrequest(in_unnamed_conv2d1x116_conv2d1x1_avm_waitrequest),
        .in_unnamed_conv2d1x116_conv2d1x1_avm_writeack(in_unnamed_conv2d1x116_conv2d1x1_avm_writeack),
        .out_lsu_unnamed_conv2d1x116_o_active(i_llvm_fpga_mem_unnamed_conv2d1x116_conv2d1x132_out_lsu_unnamed_conv2d1x116_o_active),
        .out_o_stall(i_llvm_fpga_mem_unnamed_conv2d1x116_conv2d1x132_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_unnamed_conv2d1x116_conv2d1x132_out_o_valid),
        .out_unnamed_conv2d1x116_conv2d1x1_avm_address(i_llvm_fpga_mem_unnamed_conv2d1x116_conv2d1x132_out_unnamed_conv2d1x116_conv2d1x1_avm_address),
        .out_unnamed_conv2d1x116_conv2d1x1_avm_burstcount(i_llvm_fpga_mem_unnamed_conv2d1x116_conv2d1x132_out_unnamed_conv2d1x116_conv2d1x1_avm_burstcount),
        .out_unnamed_conv2d1x116_conv2d1x1_avm_byteenable(i_llvm_fpga_mem_unnamed_conv2d1x116_conv2d1x132_out_unnamed_conv2d1x116_conv2d1x1_avm_byteenable),
        .out_unnamed_conv2d1x116_conv2d1x1_avm_enable(i_llvm_fpga_mem_unnamed_conv2d1x116_conv2d1x132_out_unnamed_conv2d1x116_conv2d1x1_avm_enable),
        .out_unnamed_conv2d1x116_conv2d1x1_avm_read(i_llvm_fpga_mem_unnamed_conv2d1x116_conv2d1x132_out_unnamed_conv2d1x116_conv2d1x1_avm_read),
        .out_unnamed_conv2d1x116_conv2d1x1_avm_write(i_llvm_fpga_mem_unnamed_conv2d1x116_conv2d1x132_out_unnamed_conv2d1x116_conv2d1x1_avm_write),
        .out_unnamed_conv2d1x116_conv2d1x1_avm_writedata(i_llvm_fpga_mem_unnamed_conv2d1x116_conv2d1x132_out_unnamed_conv2d1x116_conv2d1x1_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,9)
    assign out_unnamed_conv2d1x116_conv2d1x1_avm_address = i_llvm_fpga_mem_unnamed_conv2d1x116_conv2d1x132_out_unnamed_conv2d1x116_conv2d1x1_avm_address;
    assign out_unnamed_conv2d1x116_conv2d1x1_avm_enable = i_llvm_fpga_mem_unnamed_conv2d1x116_conv2d1x132_out_unnamed_conv2d1x116_conv2d1x1_avm_enable;
    assign out_unnamed_conv2d1x116_conv2d1x1_avm_read = i_llvm_fpga_mem_unnamed_conv2d1x116_conv2d1x132_out_unnamed_conv2d1x116_conv2d1x1_avm_read;
    assign out_unnamed_conv2d1x116_conv2d1x1_avm_write = i_llvm_fpga_mem_unnamed_conv2d1x116_conv2d1x132_out_unnamed_conv2d1x116_conv2d1x1_avm_write;
    assign out_unnamed_conv2d1x116_conv2d1x1_avm_writedata = i_llvm_fpga_mem_unnamed_conv2d1x116_conv2d1x132_out_unnamed_conv2d1x116_conv2d1x1_avm_writedata;
    assign out_unnamed_conv2d1x116_conv2d1x1_avm_byteenable = i_llvm_fpga_mem_unnamed_conv2d1x116_conv2d1x132_out_unnamed_conv2d1x116_conv2d1x1_avm_byteenable;
    assign out_unnamed_conv2d1x116_conv2d1x1_avm_burstcount = i_llvm_fpga_mem_unnamed_conv2d1x116_conv2d1x132_out_unnamed_conv2d1x116_conv2d1x1_avm_burstcount;

    // feedback_out_1_sync(GPOUT,10)
    assign out_feedback_out_1 = i_llvm_fpga_push_token_priv_i10_ap_push_conv2d1x145_out_feedback_out_1;

    // feedback_valid_out_1_sync(GPOUT,12)
    assign out_feedback_valid_out_1 = i_llvm_fpga_push_token_priv_i10_ap_push_conv2d1x145_out_feedback_valid_out_1;

    // sync_out(GPOUT,53)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // dupName_0_ext_sig_sync_out_x(GPOUT,57)
    assign out_lsu_unnamed_conv2d1x116_o_active = i_llvm_fpga_mem_unnamed_conv2d1x116_conv2d1x132_out_lsu_unnamed_conv2d1x116_o_active;

    // bubble_join_coalesced_delay_1_fifo(BITJOIN,133)
    assign bubble_join_coalesced_delay_1_fifo_q = coalesced_delay_1_fifo_data_out;

    // bubble_select_coalesced_delay_1_fifo(BITSELECT,134)
    assign bubble_select_coalesced_delay_1_fifo_b = $unsigned(bubble_join_coalesced_delay_1_fifo_q[1:0]);

    // sel_for_coalesced_delay_1(BITSELECT,99)
    assign sel_for_coalesced_delay_1_b = $unsigned(bubble_select_coalesced_delay_1_fifo_b[0:0]);
    assign sel_for_coalesced_delay_1_c = $unsigned(bubble_select_coalesced_delay_1_fifo_b[1:1]);

    // dupName_0_sync_out_x(GPOUT,58)@54
    assign out_c0_exe1545327 = sel_for_coalesced_delay_1_b;
    assign out_c0_exe1645428 = sel_for_coalesced_delay_1_c;
    assign out_valid_out = SE_out_bubble_out_i_llvm_fpga_mem_memdep_4_conv2d1x134_aunroll_x_1_V0;

    // dupName_1_ext_sig_sync_out_x(GPOUT,60)
    assign out_memdep_4_conv2d1x1_avm_address = i_llvm_fpga_mem_memdep_4_conv2d1x134_aunroll_x_out_memdep_4_conv2d1x1_avm_address;
    assign out_memdep_4_conv2d1x1_avm_enable = i_llvm_fpga_mem_memdep_4_conv2d1x134_aunroll_x_out_memdep_4_conv2d1x1_avm_enable;
    assign out_memdep_4_conv2d1x1_avm_read = i_llvm_fpga_mem_memdep_4_conv2d1x134_aunroll_x_out_memdep_4_conv2d1x1_avm_read;
    assign out_memdep_4_conv2d1x1_avm_write = i_llvm_fpga_mem_memdep_4_conv2d1x134_aunroll_x_out_memdep_4_conv2d1x1_avm_write;
    assign out_memdep_4_conv2d1x1_avm_writedata = i_llvm_fpga_mem_memdep_4_conv2d1x134_aunroll_x_out_memdep_4_conv2d1x1_avm_writedata;
    assign out_memdep_4_conv2d1x1_avm_byteenable = i_llvm_fpga_mem_memdep_4_conv2d1x134_aunroll_x_out_memdep_4_conv2d1x1_avm_byteenable;
    assign out_memdep_4_conv2d1x1_avm_burstcount = i_llvm_fpga_mem_memdep_4_conv2d1x134_aunroll_x_out_memdep_4_conv2d1x1_avm_burstcount;

    // dupName_2_ext_sig_sync_out_x(GPOUT,61)
    assign out_memdep_15_conv2d1x1_avm_address = i_llvm_fpga_mem_memdep_15_conv2d1x142_aunroll_x_out_memdep_15_conv2d1x1_avm_address;
    assign out_memdep_15_conv2d1x1_avm_enable = i_llvm_fpga_mem_memdep_15_conv2d1x142_aunroll_x_out_memdep_15_conv2d1x1_avm_enable;
    assign out_memdep_15_conv2d1x1_avm_read = i_llvm_fpga_mem_memdep_15_conv2d1x142_aunroll_x_out_memdep_15_conv2d1x1_avm_read;
    assign out_memdep_15_conv2d1x1_avm_write = i_llvm_fpga_mem_memdep_15_conv2d1x142_aunroll_x_out_memdep_15_conv2d1x1_avm_write;
    assign out_memdep_15_conv2d1x1_avm_writedata = i_llvm_fpga_mem_memdep_15_conv2d1x142_aunroll_x_out_memdep_15_conv2d1x1_avm_writedata;
    assign out_memdep_15_conv2d1x1_avm_byteenable = i_llvm_fpga_mem_memdep_15_conv2d1x142_aunroll_x_out_memdep_15_conv2d1x1_avm_byteenable;
    assign out_memdep_15_conv2d1x1_avm_burstcount = i_llvm_fpga_mem_memdep_15_conv2d1x142_aunroll_x_out_memdep_15_conv2d1x1_avm_burstcount;

endmodule
