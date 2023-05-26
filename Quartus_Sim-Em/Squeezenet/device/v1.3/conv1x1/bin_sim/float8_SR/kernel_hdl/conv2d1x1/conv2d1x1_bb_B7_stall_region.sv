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
// SystemVerilog created on Wed May 24 12:36:13 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2d1x1_bb_B7_stall_region (
    input wire [1023:0] in_memdep_13_conv2d1x1_avm_readdata,
    input wire [0:0] in_memdep_13_conv2d1x1_avm_writeack,
    input wire [0:0] in_memdep_13_conv2d1x1_avm_waitrequest,
    input wire [0:0] in_memdep_13_conv2d1x1_avm_readdatavalid,
    output wire [31:0] out_memdep_13_conv2d1x1_avm_address,
    output wire [0:0] out_memdep_13_conv2d1x1_avm_enable,
    output wire [0:0] out_memdep_13_conv2d1x1_avm_read,
    output wire [0:0] out_memdep_13_conv2d1x1_avm_write,
    output wire [1023:0] out_memdep_13_conv2d1x1_avm_writedata,
    output wire [127:0] out_memdep_13_conv2d1x1_avm_byteenable,
    output wire [0:0] out_memdep_13_conv2d1x1_avm_burstcount,
    output wire [15:0] out_feedback_out_1,
    input wire [0:0] in_feedback_stall_in_1,
    output wire [0:0] out_feedback_valid_out_1,
    input wire [0:0] in_flush,
    input wire [63:0] in_output_im,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [31:0] in_c0_exe1753124,
    input wire [31:0] in_c0_exe1853225,
    input wire [0:0] in_c0_exe1953327,
    input wire [0:0] in_c0_exe2053428,
    input wire [63:0] in_c0_exe2153529,
    input wire [0:0] in_c0_exe351721,
    input wire [0:0] in_c0_exe451822,
    input wire [31:0] in_c0_exe551923,
    input wire [31:0] in_c1_exe1039,
    input wire [31:0] in_c1_exe1140,
    input wire [31:0] in_c1_exe1241,
    input wire [31:0] in_c1_exe1342,
    input wire [31:0] in_c1_exe1443,
    input wire [31:0] in_c1_exe1544,
    input wire [31:0] in_c1_exe159230,
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
    input wire [31:0] in_c1_exe3362,
    input wire [31:0] in_c1_exe3463,
    input wire [31:0] in_c1_exe3564,
    input wire [31:0] in_c1_exe3665,
    input wire [31:0] in_c1_exe3766,
    input wire [31:0] in_c1_exe3867,
    input wire [31:0] in_c1_exe3968,
    input wire [31:0] in_c1_exe4069,
    input wire [31:0] in_c1_exe4170,
    input wire [31:0] in_c1_exe4271,
    input wire [31:0] in_c1_exe433,
    input wire [31:0] in_c1_exe4372,
    input wire [31:0] in_c1_exe4473,
    input wire [31:0] in_c1_exe4574,
    input wire [31:0] in_c1_exe4675,
    input wire [31:0] in_c1_exe4776,
    input wire [31:0] in_c1_exe4877,
    input wire [31:0] in_c1_exe534,
    input wire [31:0] in_c1_exe635,
    input wire [31:0] in_c1_exe736,
    input wire [31:0] in_c1_exe837,
    input wire [31:0] in_c1_exe938,
    input wire [0:0] in_valid_in,
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
    output wire [0:0] out_c0_exe1953327,
    output wire [0:0] out_c0_exe2053428,
    output wire [0:0] out_valid_out,
    output wire [0:0] out_lsu_unnamed_conv2d1x116_o_active,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [32:0] i_add157_conv2d1x128_a;
    wire [32:0] i_add157_conv2d1x128_b;
    logic [32:0] i_add157_conv2d1x128_o;
    wire [32:0] i_add157_conv2d1x128_q;
    wire [1:0] i_arrayidx1593_conv2d1x159_vt_const_1_q;
    wire [63:0] i_arrayidx1593_conv2d1x159_vt_join_q;
    wire [61:0] i_arrayidx1593_conv2d1x159_vt_select_63_b;
    wire [31:0] i_idxprom158_conv2d1x157_vt_const_63_q;
    wire [63:0] i_idxprom158_conv2d1x157_vt_join_q;
    wire [31:0] i_idxprom158_conv2d1x157_vt_select_31_b;
    wire [0:0] i_llvm_fpga_mem_unnamed_conv2d1x116_conv2d1x160_out_lsu_unnamed_conv2d1x116_o_active;
    wire [0:0] i_llvm_fpga_mem_unnamed_conv2d1x116_conv2d1x160_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_unnamed_conv2d1x116_conv2d1x160_out_o_valid;
    wire [30:0] i_llvm_fpga_mem_unnamed_conv2d1x116_conv2d1x160_out_unnamed_conv2d1x116_conv2d1x1_avm_address;
    wire [4:0] i_llvm_fpga_mem_unnamed_conv2d1x116_conv2d1x160_out_unnamed_conv2d1x116_conv2d1x1_avm_burstcount;
    wire [63:0] i_llvm_fpga_mem_unnamed_conv2d1x116_conv2d1x160_out_unnamed_conv2d1x116_conv2d1x1_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_conv2d1x116_conv2d1x160_out_unnamed_conv2d1x116_conv2d1x1_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_conv2d1x116_conv2d1x160_out_unnamed_conv2d1x116_conv2d1x1_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_conv2d1x116_conv2d1x160_out_unnamed_conv2d1x116_conv2d1x1_avm_write;
    wire [511:0] i_llvm_fpga_mem_unnamed_conv2d1x116_conv2d1x160_out_unnamed_conv2d1x116_conv2d1x1_avm_writedata;
    wire [15:0] i_llvm_fpga_push_token_priv_i10_ap_push_conv2d1x158_out_feedback_out_1;
    wire [0:0] i_llvm_fpga_push_token_priv_i10_ap_push_conv2d1x158_out_feedback_valid_out_1;
    wire [0:0] i_llvm_fpga_push_token_priv_i10_ap_push_conv2d1x158_out_stall_out;
    wire [0:0] i_llvm_fpga_push_token_priv_i10_ap_push_conv2d1x158_out_valid_out;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_conv2d1x10_out_buffer_out;
    wire [0:0] i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_conv2d1x10_out_stall_out;
    wire [0:0] i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_conv2d1x10_out_valid_out;
    wire [9:0] i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_conv2d1x10_vt_const_9_q;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_conv2d1x10_vt_join_q;
    wire [53:0] i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_conv2d1x10_vt_select_63_b;
    wire [31:0] bgTrunc_i_add157_conv2d1x128_sel_x_b;
    wire [64:0] i_arrayidx1593_conv2d1x10_add_x_a;
    wire [64:0] i_arrayidx1593_conv2d1x10_add_x_b;
    logic [64:0] i_arrayidx1593_conv2d1x10_add_x_o;
    wire [64:0] i_arrayidx1593_conv2d1x10_add_x_q;
    wire [61:0] i_arrayidx1593_conv2d1x10_narrow_x_b;
    wire [63:0] i_arrayidx1593_conv2d1x10_shift_join_x_q;
    wire [63:0] i_arrayidx1593_conv2d1x10_dupName_0_trunc_sel_x_b;
    wire [63:0] i_idxprom158_conv2d1x157_sel_x_b;
    wire [31:0] i_sfc_s_c0_in_for_cond141_preheader_loopexit_conv2d1x1s_c0_enter409_conv2d1x155_aunroll_x_out_memdep_13_conv2d1x1_avm_address;
    wire [0:0] i_sfc_s_c0_in_for_cond141_preheader_loopexit_conv2d1x1s_c0_enter409_conv2d1x155_aunroll_x_out_memdep_13_conv2d1x1_avm_burstcount;
    wire [127:0] i_sfc_s_c0_in_for_cond141_preheader_loopexit_conv2d1x1s_c0_enter409_conv2d1x155_aunroll_x_out_memdep_13_conv2d1x1_avm_byteenable;
    wire [0:0] i_sfc_s_c0_in_for_cond141_preheader_loopexit_conv2d1x1s_c0_enter409_conv2d1x155_aunroll_x_out_memdep_13_conv2d1x1_avm_enable;
    wire [0:0] i_sfc_s_c0_in_for_cond141_preheader_loopexit_conv2d1x1s_c0_enter409_conv2d1x155_aunroll_x_out_memdep_13_conv2d1x1_avm_read;
    wire [0:0] i_sfc_s_c0_in_for_cond141_preheader_loopexit_conv2d1x1s_c0_enter409_conv2d1x155_aunroll_x_out_memdep_13_conv2d1x1_avm_write;
    wire [1023:0] i_sfc_s_c0_in_for_cond141_preheader_loopexit_conv2d1x1s_c0_enter409_conv2d1x155_aunroll_x_out_memdep_13_conv2d1x1_avm_writedata;
    wire [0:0] i_sfc_s_c0_in_for_cond141_preheader_loopexit_conv2d1x1s_c0_enter409_conv2d1x155_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_for_cond141_preheader_loopexit_conv2d1x1s_c0_enter409_conv2d1x155_aunroll_x_out_o_valid;
    wire [9:0] i_sfc_s_c0_in_for_cond141_preheader_loopexit_conv2d1x1s_c0_enter409_conv2d1x155_aunroll_x_out_c0_exit432_1_tpl;
    wire [0:0] i_sfc_s_c1_in_for_cond141_preheader_loopexit_conv2d1x1s_c1_enter_conv2d1x126_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c1_in_for_cond141_preheader_loopexit_conv2d1x1s_c1_enter_conv2d1x126_aunroll_x_out_o_valid;
    wire [31:0] i_sfc_s_c1_in_for_cond141_preheader_loopexit_conv2d1x1s_c1_enter_conv2d1x126_aunroll_x_out_c1_exit_1_tpl;
    wire [1:0] join_for_coalesced_delay_0_q;
    wire [0:0] sel_for_coalesced_delay_0_b;
    wire [0:0] sel_for_coalesced_delay_0_c;
    wire [0:0] redist2_stall_entry_o10_76_fifo_valid_in;
    wire redist2_stall_entry_o10_76_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist2_stall_entry_o10_76_fifo_stall_in;
    wire redist2_stall_entry_o10_76_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist2_stall_entry_o10_76_fifo_data_in;
    wire [0:0] redist2_stall_entry_o10_76_fifo_valid_out;
    wire redist2_stall_entry_o10_76_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist2_stall_entry_o10_76_fifo_stall_out;
    wire redist2_stall_entry_o10_76_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist2_stall_entry_o10_76_fifo_data_out;
    wire [0:0] redist3_i_idxprom158_conv2d1x157_vt_select_31_b_76_fifo_valid_in;
    wire redist3_i_idxprom158_conv2d1x157_vt_select_31_b_76_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist3_i_idxprom158_conv2d1x157_vt_select_31_b_76_fifo_stall_in;
    wire redist3_i_idxprom158_conv2d1x157_vt_select_31_b_76_fifo_stall_in_bitsignaltemp;
    wire [31:0] redist3_i_idxprom158_conv2d1x157_vt_select_31_b_76_fifo_data_in;
    wire [0:0] redist3_i_idxprom158_conv2d1x157_vt_select_31_b_76_fifo_valid_out;
    wire redist3_i_idxprom158_conv2d1x157_vt_select_31_b_76_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist3_i_idxprom158_conv2d1x157_vt_select_31_b_76_fifo_stall_out;
    wire redist3_i_idxprom158_conv2d1x157_vt_select_31_b_76_fifo_stall_out_bitsignaltemp;
    wire [31:0] redist3_i_idxprom158_conv2d1x157_vt_select_31_b_76_fifo_data_out;
    wire [0:0] coalesced_delay_0_fifo_valid_in;
    wire coalesced_delay_0_fifo_valid_in_bitsignaltemp;
    wire [0:0] coalesced_delay_0_fifo_stall_in;
    wire coalesced_delay_0_fifo_stall_in_bitsignaltemp;
    wire [1:0] coalesced_delay_0_fifo_data_in;
    wire [0:0] coalesced_delay_0_fifo_valid_out;
    wire coalesced_delay_0_fifo_valid_out_bitsignaltemp;
    wire [0:0] coalesced_delay_0_fifo_stall_out;
    wire coalesced_delay_0_fifo_stall_out_bitsignaltemp;
    wire [1:0] coalesced_delay_0_fifo_data_out;
    wire [63:0] bubble_join_i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_conv2d1x10_q;
    wire [63:0] bubble_select_i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_conv2d1x10_b;
    wire [1699:0] bubble_join_stall_entry_q;
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
    wire [31:0] bubble_select_stall_entry_pp;
    wire [31:0] bubble_select_stall_entry_qq;
    wire [31:0] bubble_select_stall_entry_rr;
    wire [31:0] bubble_select_stall_entry_ss;
    wire [31:0] bubble_select_stall_entry_tt;
    wire [31:0] bubble_select_stall_entry_uu;
    wire [31:0] bubble_select_stall_entry_vv;
    wire [31:0] bubble_select_stall_entry_ww;
    wire [31:0] bubble_select_stall_entry_xx;
    wire [31:0] bubble_select_stall_entry_yy;
    wire [31:0] bubble_select_stall_entry_zz;
    wire [31:0] bubble_select_stall_entry_1;
    wire [31:0] bubble_select_stall_entry_2;
    wire [31:0] bubble_select_stall_entry_3;
    wire [31:0] bubble_select_stall_entry_4;
    wire [31:0] bubble_select_stall_entry_5;
    wire [9:0] bubble_join_i_sfc_s_c0_in_for_cond141_preheader_loopexit_conv2d1x1s_c0_enter409_conv2d1x155_aunroll_x_q;
    wire [9:0] bubble_select_i_sfc_s_c0_in_for_cond141_preheader_loopexit_conv2d1x1s_c0_enter409_conv2d1x155_aunroll_x_b;
    wire [31:0] bubble_join_i_sfc_s_c1_in_for_cond141_preheader_loopexit_conv2d1x1s_c1_enter_conv2d1x126_aunroll_x_q;
    wire [31:0] bubble_select_i_sfc_s_c1_in_for_cond141_preheader_loopexit_conv2d1x1s_c1_enter_conv2d1x126_aunroll_x_b;
    wire [0:0] bubble_join_redist2_stall_entry_o10_76_fifo_q;
    wire [0:0] bubble_select_redist2_stall_entry_o10_76_fifo_b;
    wire [31:0] bubble_join_redist3_i_idxprom158_conv2d1x157_vt_select_31_b_76_fifo_q;
    wire [31:0] bubble_select_redist3_i_idxprom158_conv2d1x157_vt_select_31_b_76_fifo_b;
    wire [1:0] bubble_join_coalesced_delay_0_fifo_q;
    wire [1:0] bubble_select_coalesced_delay_0_fifo_b;
    wire [0:0] SE_out_i_llvm_fpga_push_token_priv_i10_ap_push_conv2d1x158_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_token_priv_i10_ap_push_conv2d1x158_backStall;
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
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond141_preheader_loopexit_conv2d1x1s_c0_enter409_conv2d1x155_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond141_preheader_loopexit_conv2d1x1s_c0_enter409_conv2d1x155_aunroll_x_wireStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond141_preheader_loopexit_conv2d1x1s_c0_enter409_conv2d1x155_aunroll_x_StallValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond141_preheader_loopexit_conv2d1x1s_c0_enter409_conv2d1x155_aunroll_x_toReg0;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_cond141_preheader_loopexit_conv2d1x1s_c0_enter409_conv2d1x155_aunroll_x_fromReg0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond141_preheader_loopexit_conv2d1x1s_c0_enter409_conv2d1x155_aunroll_x_consumed0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond141_preheader_loopexit_conv2d1x1s_c0_enter409_conv2d1x155_aunroll_x_toReg1;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_cond141_preheader_loopexit_conv2d1x1s_c0_enter409_conv2d1x155_aunroll_x_fromReg1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond141_preheader_loopexit_conv2d1x1s_c0_enter409_conv2d1x155_aunroll_x_consumed1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond141_preheader_loopexit_conv2d1x1s_c0_enter409_conv2d1x155_aunroll_x_or0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond141_preheader_loopexit_conv2d1x1s_c0_enter409_conv2d1x155_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond141_preheader_loopexit_conv2d1x1s_c0_enter409_conv2d1x155_aunroll_x_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond141_preheader_loopexit_conv2d1x1s_c0_enter409_conv2d1x155_aunroll_x_V1;
    wire [0:0] SE_out_redist3_i_idxprom158_conv2d1x157_vt_select_31_b_76_fifo_wireValid;
    wire [0:0] SE_out_redist3_i_idxprom158_conv2d1x157_vt_select_31_b_76_fifo_and0;
    wire [0:0] SE_out_redist3_i_idxprom158_conv2d1x157_vt_select_31_b_76_fifo_and1;
    wire [0:0] SE_out_redist3_i_idxprom158_conv2d1x157_vt_select_31_b_76_fifo_and2;
    wire [0:0] SE_out_redist3_i_idxprom158_conv2d1x157_vt_select_31_b_76_fifo_backStall;
    wire [0:0] SE_out_redist3_i_idxprom158_conv2d1x157_vt_select_31_b_76_fifo_V0;
    wire [0:0] SE_out_coalesced_delay_0_fifo_wireValid;
    wire [0:0] SE_out_coalesced_delay_0_fifo_and0;
    wire [0:0] SE_out_coalesced_delay_0_fifo_and1;
    wire [0:0] SE_out_coalesced_delay_0_fifo_backStall;
    wire [0:0] SE_out_coalesced_delay_0_fifo_V0;
    wire [0:0] SE_out_bubble_out_stall_entry_1_wireValid;
    wire [0:0] SE_out_bubble_out_stall_entry_1_backStall;
    wire [0:0] SE_out_bubble_out_stall_entry_1_V0;
    wire [0:0] bubble_out_stall_entry_1_reg_valid_in;
    wire bubble_out_stall_entry_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_stall_entry_1_reg_stall_in;
    wire bubble_out_stall_entry_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_stall_entry_1_reg_valid_out;
    wire bubble_out_stall_entry_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_stall_entry_1_reg_stall_out;
    wire bubble_out_stall_entry_1_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_i_sfc_s_c0_in_for_cond141_preheader_loopexit_conv2d1x1s_c0_enter409_conv2d1x155_aunroll_x_1_reg_valid_in;
    wire bubble_out_i_sfc_s_c0_in_for_cond141_preheader_loopexit_conv2d1x1s_c0_enter409_conv2d1x155_aunroll_x_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_sfc_s_c0_in_for_cond141_preheader_loopexit_conv2d1x1s_c0_enter409_conv2d1x155_aunroll_x_1_reg_stall_in;
    wire bubble_out_i_sfc_s_c0_in_for_cond141_preheader_loopexit_conv2d1x1s_c0_enter409_conv2d1x155_aunroll_x_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_i_sfc_s_c0_in_for_cond141_preheader_loopexit_conv2d1x1s_c0_enter409_conv2d1x155_aunroll_x_1_reg_valid_out;
    wire bubble_out_i_sfc_s_c0_in_for_cond141_preheader_loopexit_conv2d1x1s_c0_enter409_conv2d1x155_aunroll_x_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_sfc_s_c0_in_for_cond141_preheader_loopexit_conv2d1x1s_c0_enter409_conv2d1x155_aunroll_x_1_reg_stall_out;
    wire bubble_out_i_sfc_s_c0_in_for_cond141_preheader_loopexit_conv2d1x1s_c0_enter409_conv2d1x155_aunroll_x_1_reg_stall_out_bitsignaltemp;


    // bubble_join_stall_entry(BITJOIN,73)
    assign bubble_join_stall_entry_q = {in_c1_exe938, in_c1_exe837, in_c1_exe736, in_c1_exe635, in_c1_exe534, in_c1_exe4877, in_c1_exe4776, in_c1_exe4675, in_c1_exe4574, in_c1_exe4473, in_c1_exe4372, in_c1_exe433, in_c1_exe4271, in_c1_exe4170, in_c1_exe4069, in_c1_exe3968, in_c1_exe3867, in_c1_exe3766, in_c1_exe3665, in_c1_exe3564, in_c1_exe3463, in_c1_exe3362, in_c1_exe332, in_c1_exe3261, in_c1_exe3160, in_c1_exe3059, in_c1_exe2958, in_c1_exe2857, in_c1_exe2756, in_c1_exe2655, in_c1_exe2554, in_c1_exe2453, in_c1_exe2352, in_c1_exe231, in_c1_exe2251, in_c1_exe2150, in_c1_exe2049, in_c1_exe1948, in_c1_exe1847, in_c1_exe1746, in_c1_exe1645, in_c1_exe159230, in_c1_exe1544, in_c1_exe1443, in_c1_exe1342, in_c1_exe1241, in_c1_exe1140, in_c1_exe1039, in_c0_exe551923, in_c0_exe451822, in_c0_exe351721, in_c0_exe2153529, in_c0_exe2053428, in_c0_exe1953327, in_c0_exe1853225, in_c0_exe1753124};

    // bubble_select_stall_entry(BITSELECT,74)
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
    assign bubble_select_stall_entry_pp = $unsigned(bubble_join_stall_entry_q[1219:1188]);
    assign bubble_select_stall_entry_qq = $unsigned(bubble_join_stall_entry_q[1251:1220]);
    assign bubble_select_stall_entry_rr = $unsigned(bubble_join_stall_entry_q[1283:1252]);
    assign bubble_select_stall_entry_ss = $unsigned(bubble_join_stall_entry_q[1315:1284]);
    assign bubble_select_stall_entry_tt = $unsigned(bubble_join_stall_entry_q[1347:1316]);
    assign bubble_select_stall_entry_uu = $unsigned(bubble_join_stall_entry_q[1379:1348]);
    assign bubble_select_stall_entry_vv = $unsigned(bubble_join_stall_entry_q[1411:1380]);
    assign bubble_select_stall_entry_ww = $unsigned(bubble_join_stall_entry_q[1443:1412]);
    assign bubble_select_stall_entry_xx = $unsigned(bubble_join_stall_entry_q[1475:1444]);
    assign bubble_select_stall_entry_yy = $unsigned(bubble_join_stall_entry_q[1507:1476]);
    assign bubble_select_stall_entry_zz = $unsigned(bubble_join_stall_entry_q[1539:1508]);
    assign bubble_select_stall_entry_1 = $unsigned(bubble_join_stall_entry_q[1571:1540]);
    assign bubble_select_stall_entry_2 = $unsigned(bubble_join_stall_entry_q[1603:1572]);
    assign bubble_select_stall_entry_3 = $unsigned(bubble_join_stall_entry_q[1635:1604]);
    assign bubble_select_stall_entry_4 = $unsigned(bubble_join_stall_entry_q[1667:1636]);
    assign bubble_select_stall_entry_5 = $unsigned(bubble_join_stall_entry_q[1699:1668]);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_add157_conv2d1x128(ADD,11)@0
    assign i_add157_conv2d1x128_a = {1'b0, bubble_select_stall_entry_i};
    assign i_add157_conv2d1x128_b = {1'b0, bubble_select_stall_entry_c};
    assign i_add157_conv2d1x128_o = $unsigned(i_add157_conv2d1x128_a) + $unsigned(i_add157_conv2d1x128_b);
    assign i_add157_conv2d1x128_q = i_add157_conv2d1x128_o[32:0];

    // bgTrunc_i_add157_conv2d1x128_sel_x(BITSELECT,42)@0
    assign bgTrunc_i_add157_conv2d1x128_sel_x_b = i_add157_conv2d1x128_q[31:0];

    // i_idxprom158_conv2d1x157_sel_x(BITSELECT,53)@0
    assign i_idxprom158_conv2d1x157_sel_x_b = {32'b00000000000000000000000000000000, bgTrunc_i_add157_conv2d1x128_sel_x_b[31:0]};

    // i_idxprom158_conv2d1x157_vt_select_31(BITSELECT,18)@0
    assign i_idxprom158_conv2d1x157_vt_select_31_b = i_idxprom158_conv2d1x157_sel_x_b[31:0];

    // bubble_join_i_sfc_s_c1_in_for_cond141_preheader_loopexit_conv2d1x1s_c1_enter_conv2d1x126_aunroll_x(BITJOIN,83)
    assign bubble_join_i_sfc_s_c1_in_for_cond141_preheader_loopexit_conv2d1x1s_c1_enter_conv2d1x126_aunroll_x_q = i_sfc_s_c1_in_for_cond141_preheader_loopexit_conv2d1x1s_c1_enter_conv2d1x126_aunroll_x_out_c1_exit_1_tpl;

    // bubble_select_i_sfc_s_c1_in_for_cond141_preheader_loopexit_conv2d1x1s_c1_enter_conv2d1x126_aunroll_x(BITSELECT,84)
    assign bubble_select_i_sfc_s_c1_in_for_cond141_preheader_loopexit_conv2d1x1s_c1_enter_conv2d1x126_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c1_in_for_cond141_preheader_loopexit_conv2d1x1s_c1_enter_conv2d1x126_aunroll_x_q[31:0]);

    // bubble_out_i_sfc_s_c0_in_for_cond141_preheader_loopexit_conv2d1x1s_c0_enter409_conv2d1x155_aunroll_x_1_reg(STALLFIFO,166)
    assign bubble_out_i_sfc_s_c0_in_for_cond141_preheader_loopexit_conv2d1x1s_c0_enter409_conv2d1x155_aunroll_x_1_reg_valid_in = SE_out_i_sfc_s_c0_in_for_cond141_preheader_loopexit_conv2d1x1s_c0_enter409_conv2d1x155_aunroll_x_V0;
    assign bubble_out_i_sfc_s_c0_in_for_cond141_preheader_loopexit_conv2d1x1s_c0_enter409_conv2d1x155_aunroll_x_1_reg_stall_in = SE_out_coalesced_delay_0_fifo_backStall;
    assign bubble_out_i_sfc_s_c0_in_for_cond141_preheader_loopexit_conv2d1x1s_c0_enter409_conv2d1x155_aunroll_x_1_reg_valid_in_bitsignaltemp = bubble_out_i_sfc_s_c0_in_for_cond141_preheader_loopexit_conv2d1x1s_c0_enter409_conv2d1x155_aunroll_x_1_reg_valid_in[0];
    assign bubble_out_i_sfc_s_c0_in_for_cond141_preheader_loopexit_conv2d1x1s_c0_enter409_conv2d1x155_aunroll_x_1_reg_stall_in_bitsignaltemp = bubble_out_i_sfc_s_c0_in_for_cond141_preheader_loopexit_conv2d1x1s_c0_enter409_conv2d1x155_aunroll_x_1_reg_stall_in[0];
    assign bubble_out_i_sfc_s_c0_in_for_cond141_preheader_loopexit_conv2d1x1s_c0_enter409_conv2d1x155_aunroll_x_1_reg_valid_out[0] = bubble_out_i_sfc_s_c0_in_for_cond141_preheader_loopexit_conv2d1x1s_c0_enter409_conv2d1x155_aunroll_x_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_sfc_s_c0_in_for_cond141_preheader_loopexit_conv2d1x1s_c0_enter409_conv2d1x155_aunroll_x_1_reg_stall_out[0] = bubble_out_i_sfc_s_c0_in_for_cond141_preheader_loopexit_conv2d1x1s_c0_enter409_conv2d1x155_aunroll_x_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(74),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_i_sfc_s_c0_in_for_cond141_preheader_loopexit_conv2d1x1s_c0_enter409_conv2d1x155_aunroll_x_1_reg (
        .valid_in(bubble_out_i_sfc_s_c0_in_for_cond141_preheader_loopexit_conv2d1x1s_c0_enter409_conv2d1x155_aunroll_x_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_sfc_s_c0_in_for_cond141_preheader_loopexit_conv2d1x1s_c0_enter409_conv2d1x155_aunroll_x_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_i_sfc_s_c0_in_for_cond141_preheader_loopexit_conv2d1x1s_c0_enter409_conv2d1x155_aunroll_x_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_sfc_s_c0_in_for_cond141_preheader_loopexit_conv2d1x1s_c0_enter409_conv2d1x155_aunroll_x_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_coalesced_delay_0_fifo(STALLENABLE,126)
    // Valid signal propagation
    assign SE_out_coalesced_delay_0_fifo_V0 = SE_out_coalesced_delay_0_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_coalesced_delay_0_fifo_backStall = in_stall_in | ~ (SE_out_coalesced_delay_0_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_coalesced_delay_0_fifo_and0 = coalesced_delay_0_fifo_valid_out;
    assign SE_out_coalesced_delay_0_fifo_and1 = bubble_out_i_sfc_s_c0_in_for_cond141_preheader_loopexit_conv2d1x1s_c0_enter409_conv2d1x155_aunroll_x_1_reg_valid_out & SE_out_coalesced_delay_0_fifo_and0;
    assign SE_out_coalesced_delay_0_fifo_wireValid = i_llvm_fpga_mem_unnamed_conv2d1x116_conv2d1x160_out_o_valid & SE_out_coalesced_delay_0_fifo_and1;

    // bubble_join_redist2_stall_entry_o10_76_fifo(BITJOIN,86)
    assign bubble_join_redist2_stall_entry_o10_76_fifo_q = redist2_stall_entry_o10_76_fifo_data_out;

    // bubble_select_redist2_stall_entry_o10_76_fifo(BITSELECT,87)
    assign bubble_select_redist2_stall_entry_o10_76_fifo_b = $unsigned(bubble_join_redist2_stall_entry_o10_76_fifo_q[0:0]);

    // i_idxprom158_conv2d1x157_vt_const_63(CONSTANT,16)
    assign i_idxprom158_conv2d1x157_vt_const_63_q = $unsigned(32'b00000000000000000000000000000000);

    // bubble_join_redist3_i_idxprom158_conv2d1x157_vt_select_31_b_76_fifo(BITJOIN,89)
    assign bubble_join_redist3_i_idxprom158_conv2d1x157_vt_select_31_b_76_fifo_q = redist3_i_idxprom158_conv2d1x157_vt_select_31_b_76_fifo_data_out;

    // bubble_select_redist3_i_idxprom158_conv2d1x157_vt_select_31_b_76_fifo(BITSELECT,90)
    assign bubble_select_redist3_i_idxprom158_conv2d1x157_vt_select_31_b_76_fifo_b = $unsigned(bubble_join_redist3_i_idxprom158_conv2d1x157_vt_select_31_b_76_fifo_q[31:0]);

    // i_idxprom158_conv2d1x157_vt_join(BITJOIN,17)@76
    assign i_idxprom158_conv2d1x157_vt_join_q = {i_idxprom158_conv2d1x157_vt_const_63_q, bubble_select_redist3_i_idxprom158_conv2d1x157_vt_select_31_b_76_fifo_b};

    // i_arrayidx1593_conv2d1x10_narrow_x(BITSELECT,49)@76
    assign i_arrayidx1593_conv2d1x10_narrow_x_b = i_idxprom158_conv2d1x157_vt_join_q[61:0];

    // i_arrayidx1593_conv2d1x10_shift_join_x(BITJOIN,50)@76
    assign i_arrayidx1593_conv2d1x10_shift_join_x_q = {i_arrayidx1593_conv2d1x10_narrow_x_b, i_arrayidx1593_conv2d1x159_vt_const_1_q};

    // bubble_join_i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_conv2d1x10(BITJOIN,70)
    assign bubble_join_i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_conv2d1x10_q = i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_conv2d1x10_out_buffer_out;

    // bubble_select_i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_conv2d1x10(BITSELECT,71)
    assign bubble_select_i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_conv2d1x10_b = $unsigned(bubble_join_i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_conv2d1x10_q[63:0]);

    // i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_conv2d1x10_vt_select_63(BITSELECT,24)@76
    assign i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_conv2d1x10_vt_select_63_b = bubble_select_i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_conv2d1x10_b[63:10];

    // i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_conv2d1x10_vt_const_9(CONSTANT,22)
    assign i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_conv2d1x10_vt_const_9_q = $unsigned(10'b0000000000);

    // i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_conv2d1x10_vt_join(BITJOIN,23)@76
    assign i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_conv2d1x10_vt_join_q = {i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_conv2d1x10_vt_select_63_b, i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_conv2d1x10_vt_const_9_q};

    // i_arrayidx1593_conv2d1x10_add_x(ADD,47)@76
    assign i_arrayidx1593_conv2d1x10_add_x_a = {1'b0, i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_conv2d1x10_vt_join_q};
    assign i_arrayidx1593_conv2d1x10_add_x_b = {1'b0, i_arrayidx1593_conv2d1x10_shift_join_x_q};
    assign i_arrayidx1593_conv2d1x10_add_x_o = $unsigned(i_arrayidx1593_conv2d1x10_add_x_a) + $unsigned(i_arrayidx1593_conv2d1x10_add_x_b);
    assign i_arrayidx1593_conv2d1x10_add_x_q = i_arrayidx1593_conv2d1x10_add_x_o[64:0];

    // i_arrayidx1593_conv2d1x10_dupName_0_trunc_sel_x(BITSELECT,52)@76
    assign i_arrayidx1593_conv2d1x10_dupName_0_trunc_sel_x_b = i_arrayidx1593_conv2d1x10_add_x_q[63:0];

    // i_arrayidx1593_conv2d1x159_vt_select_63(BITSELECT,14)@76
    assign i_arrayidx1593_conv2d1x159_vt_select_63_b = i_arrayidx1593_conv2d1x10_dupName_0_trunc_sel_x_b[63:2];

    // i_arrayidx1593_conv2d1x159_vt_const_1(CONSTANT,12)
    assign i_arrayidx1593_conv2d1x159_vt_const_1_q = $unsigned(2'b00);

    // i_arrayidx1593_conv2d1x159_vt_join(BITJOIN,13)@76
    assign i_arrayidx1593_conv2d1x159_vt_join_q = {i_arrayidx1593_conv2d1x159_vt_select_63_b, i_arrayidx1593_conv2d1x159_vt_const_1_q};

    // i_llvm_fpga_mem_unnamed_conv2d1x116_conv2d1x160(BLACKBOX,19)@76
    // in in_i_stall@20000000
    // out out_lsu_unnamed_conv2d1x116_o_active@20000000
    // out out_o_stall@20000000
    // out out_o_valid@78
    // out out_unnamed_conv2d1x116_conv2d1x1_avm_address@20000000
    // out out_unnamed_conv2d1x116_conv2d1x1_avm_burstcount@20000000
    // out out_unnamed_conv2d1x116_conv2d1x1_avm_byteenable@20000000
    // out out_unnamed_conv2d1x116_conv2d1x1_avm_enable@20000000
    // out out_unnamed_conv2d1x116_conv2d1x1_avm_read@20000000
    // out out_unnamed_conv2d1x116_conv2d1x1_avm_write@20000000
    // out out_unnamed_conv2d1x116_conv2d1x1_avm_writedata@20000000
    conv2d1x1_i_llvm_fpga_mem_unnamed_16_conv2d1x10 thei_llvm_fpga_mem_unnamed_conv2d1x116_conv2d1x160 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx1593_conv2d1x159_vt_join_q),
        .in_i_predicate(bubble_select_redist2_stall_entry_o10_76_fifo_b),
        .in_i_stall(SE_out_coalesced_delay_0_fifo_backStall),
        .in_i_valid(SE_out_redist3_i_idxprom158_conv2d1x157_vt_select_31_b_76_fifo_V0),
        .in_i_writedata(bubble_select_i_sfc_s_c1_in_for_cond141_preheader_loopexit_conv2d1x1s_c1_enter_conv2d1x126_aunroll_x_b),
        .in_unnamed_conv2d1x116_conv2d1x1_avm_readdata(in_unnamed_conv2d1x116_conv2d1x1_avm_readdata),
        .in_unnamed_conv2d1x116_conv2d1x1_avm_readdatavalid(in_unnamed_conv2d1x116_conv2d1x1_avm_readdatavalid),
        .in_unnamed_conv2d1x116_conv2d1x1_avm_waitrequest(in_unnamed_conv2d1x116_conv2d1x1_avm_waitrequest),
        .in_unnamed_conv2d1x116_conv2d1x1_avm_writeack(in_unnamed_conv2d1x116_conv2d1x1_avm_writeack),
        .out_lsu_unnamed_conv2d1x116_o_active(i_llvm_fpga_mem_unnamed_conv2d1x116_conv2d1x160_out_lsu_unnamed_conv2d1x116_o_active),
        .out_o_stall(i_llvm_fpga_mem_unnamed_conv2d1x116_conv2d1x160_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_unnamed_conv2d1x116_conv2d1x160_out_o_valid),
        .out_unnamed_conv2d1x116_conv2d1x1_avm_address(i_llvm_fpga_mem_unnamed_conv2d1x116_conv2d1x160_out_unnamed_conv2d1x116_conv2d1x1_avm_address),
        .out_unnamed_conv2d1x116_conv2d1x1_avm_burstcount(i_llvm_fpga_mem_unnamed_conv2d1x116_conv2d1x160_out_unnamed_conv2d1x116_conv2d1x1_avm_burstcount),
        .out_unnamed_conv2d1x116_conv2d1x1_avm_byteenable(i_llvm_fpga_mem_unnamed_conv2d1x116_conv2d1x160_out_unnamed_conv2d1x116_conv2d1x1_avm_byteenable),
        .out_unnamed_conv2d1x116_conv2d1x1_avm_enable(i_llvm_fpga_mem_unnamed_conv2d1x116_conv2d1x160_out_unnamed_conv2d1x116_conv2d1x1_avm_enable),
        .out_unnamed_conv2d1x116_conv2d1x1_avm_read(i_llvm_fpga_mem_unnamed_conv2d1x116_conv2d1x160_out_unnamed_conv2d1x116_conv2d1x1_avm_read),
        .out_unnamed_conv2d1x116_conv2d1x1_avm_write(i_llvm_fpga_mem_unnamed_conv2d1x116_conv2d1x160_out_unnamed_conv2d1x116_conv2d1x1_avm_write),
        .out_unnamed_conv2d1x116_conv2d1x1_avm_writedata(i_llvm_fpga_mem_unnamed_conv2d1x116_conv2d1x160_out_unnamed_conv2d1x116_conv2d1x1_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_bubble_out_stall_entry_1(STALLENABLE,138)
    // Valid signal propagation
    assign SE_out_bubble_out_stall_entry_1_V0 = SE_out_bubble_out_stall_entry_1_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_stall_entry_1_backStall = i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_conv2d1x10_out_stall_out | ~ (SE_out_bubble_out_stall_entry_1_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_stall_entry_1_wireValid = bubble_out_stall_entry_1_reg_valid_out;

    // i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_conv2d1x10(BLACKBOX,21)@76
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    conv2d1x1_i_llvm_fpga_sync_buffer_p1024f0000put_im_sync_buffer_0 thei_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_conv2d1x10 (
        .in_buffer_in(in_output_im),
        .in_i_dependence(GND_q),
        .in_stall_in(SE_out_redist3_i_idxprom158_conv2d1x157_vt_select_31_b_76_fifo_backStall),
        .in_valid_in(SE_out_bubble_out_stall_entry_1_V0),
        .out_buffer_out(i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_conv2d1x10_out_buffer_out),
        .out_stall_out(i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_conv2d1x10_out_stall_out),
        .out_valid_out(i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_conv2d1x10_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_redist3_i_idxprom158_conv2d1x157_vt_select_31_b_76_fifo(STALLENABLE,124)
    // Valid signal propagation
    assign SE_out_redist3_i_idxprom158_conv2d1x157_vt_select_31_b_76_fifo_V0 = SE_out_redist3_i_idxprom158_conv2d1x157_vt_select_31_b_76_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_redist3_i_idxprom158_conv2d1x157_vt_select_31_b_76_fifo_backStall = i_llvm_fpga_mem_unnamed_conv2d1x116_conv2d1x160_out_o_stall | ~ (SE_out_redist3_i_idxprom158_conv2d1x157_vt_select_31_b_76_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_redist3_i_idxprom158_conv2d1x157_vt_select_31_b_76_fifo_and0 = redist3_i_idxprom158_conv2d1x157_vt_select_31_b_76_fifo_valid_out;
    assign SE_out_redist3_i_idxprom158_conv2d1x157_vt_select_31_b_76_fifo_and1 = redist2_stall_entry_o10_76_fifo_valid_out & SE_out_redist3_i_idxprom158_conv2d1x157_vt_select_31_b_76_fifo_and0;
    assign SE_out_redist3_i_idxprom158_conv2d1x157_vt_select_31_b_76_fifo_and2 = i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_conv2d1x10_out_valid_out & SE_out_redist3_i_idxprom158_conv2d1x157_vt_select_31_b_76_fifo_and1;
    assign SE_out_redist3_i_idxprom158_conv2d1x157_vt_select_31_b_76_fifo_wireValid = i_sfc_s_c1_in_for_cond141_preheader_loopexit_conv2d1x1s_c1_enter_conv2d1x126_aunroll_x_out_o_valid & SE_out_redist3_i_idxprom158_conv2d1x157_vt_select_31_b_76_fifo_and2;

    // redist3_i_idxprom158_conv2d1x157_vt_select_31_b_76_fifo(STALLFIFO,66)
    assign redist3_i_idxprom158_conv2d1x157_vt_select_31_b_76_fifo_valid_in = SE_stall_entry_V5;
    assign redist3_i_idxprom158_conv2d1x157_vt_select_31_b_76_fifo_stall_in = SE_out_redist3_i_idxprom158_conv2d1x157_vt_select_31_b_76_fifo_backStall;
    assign redist3_i_idxprom158_conv2d1x157_vt_select_31_b_76_fifo_data_in = i_idxprom158_conv2d1x157_vt_select_31_b;
    assign redist3_i_idxprom158_conv2d1x157_vt_select_31_b_76_fifo_valid_in_bitsignaltemp = redist3_i_idxprom158_conv2d1x157_vt_select_31_b_76_fifo_valid_in[0];
    assign redist3_i_idxprom158_conv2d1x157_vt_select_31_b_76_fifo_stall_in_bitsignaltemp = redist3_i_idxprom158_conv2d1x157_vt_select_31_b_76_fifo_stall_in[0];
    assign redist3_i_idxprom158_conv2d1x157_vt_select_31_b_76_fifo_valid_out[0] = redist3_i_idxprom158_conv2d1x157_vt_select_31_b_76_fifo_valid_out_bitsignaltemp;
    assign redist3_i_idxprom158_conv2d1x157_vt_select_31_b_76_fifo_stall_out[0] = redist3_i_idxprom158_conv2d1x157_vt_select_31_b_76_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(77),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(32),
        .IMPL("ram")
    ) theredist3_i_idxprom158_conv2d1x157_vt_select_31_b_76_fifo (
        .valid_in(redist3_i_idxprom158_conv2d1x157_vt_select_31_b_76_fifo_valid_in_bitsignaltemp),
        .stall_in(redist3_i_idxprom158_conv2d1x157_vt_select_31_b_76_fifo_stall_in_bitsignaltemp),
        .data_in(i_idxprom158_conv2d1x157_vt_select_31_b),
        .valid_out(redist3_i_idxprom158_conv2d1x157_vt_select_31_b_76_fifo_valid_out_bitsignaltemp),
        .stall_out(redist3_i_idxprom158_conv2d1x157_vt_select_31_b_76_fifo_stall_out_bitsignaltemp),
        .data_out(redist3_i_idxprom158_conv2d1x157_vt_select_31_b_76_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_sfc_s_c1_in_for_cond141_preheader_loopexit_conv2d1x1s_c1_enter_conv2d1x126_aunroll_x(BLACKBOX,55)@0
    // in in_i_stall@20000000
    // out out_o_stall@20000000
    // out out_o_valid@76
    // out out_c1_exit_0_tpl@76
    // out out_c1_exit_1_tpl@76
    conv2d1x1_i_sfc_s_c1_in_for_cond141_preh0000c1_enter_conv2d1x126 thei_sfc_s_c1_in_for_cond141_preheader_loopexit_conv2d1x1s_c1_enter_conv2d1x126_aunroll_x (
        .in_i_stall(SE_out_redist3_i_idxprom158_conv2d1x157_vt_select_31_b_76_fifo_backStall),
        .in_i_valid(SE_stall_entry_V4),
        .in_c1_eni25_0_tpl(GND_q),
        .in_c1_eni25_1_tpl(bubble_select_stall_entry_b),
        .in_c1_eni25_2_tpl(bubble_select_stall_entry_zz),
        .in_c1_eni25_3_tpl(bubble_select_stall_entry_yy),
        .in_c1_eni25_4_tpl(bubble_select_stall_entry_xx),
        .in_c1_eni25_5_tpl(bubble_select_stall_entry_ww),
        .in_c1_eni25_6_tpl(bubble_select_stall_entry_vv),
        .in_c1_eni25_7_tpl(bubble_select_stall_entry_uu),
        .in_c1_eni25_8_tpl(bubble_select_stall_entry_ss),
        .in_c1_eni25_9_tpl(bubble_select_stall_entry_rr),
        .in_c1_eni25_10_tpl(bubble_select_stall_entry_qq),
        .in_c1_eni25_11_tpl(bubble_select_stall_entry_pp),
        .in_c1_eni25_12_tpl(bubble_select_stall_entry_oo),
        .in_c1_eni25_13_tpl(bubble_select_stall_entry_nn),
        .in_c1_eni25_14_tpl(bubble_select_stall_entry_mm),
        .in_c1_eni25_15_tpl(bubble_select_stall_entry_ll),
        .in_c1_eni25_16_tpl(bubble_select_stall_entry_kk),
        .in_c1_eni25_17_tpl(bubble_select_stall_entry_jj),
        .in_c1_eni25_18_tpl(bubble_select_stall_entry_hh),
        .in_c1_eni25_19_tpl(bubble_select_stall_entry_gg),
        .in_c1_eni25_20_tpl(bubble_select_stall_entry_ff),
        .in_c1_eni25_21_tpl(bubble_select_stall_entry_ee),
        .in_c1_eni25_22_tpl(bubble_select_stall_entry_dd),
        .in_c1_eni25_23_tpl(bubble_select_stall_entry_cc),
        .in_c1_eni25_24_tpl(bubble_select_stall_entry_bb),
        .in_c1_eni25_25_tpl(bubble_select_stall_entry_aa),
        .out_o_stall(i_sfc_s_c1_in_for_cond141_preheader_loopexit_conv2d1x1s_c1_enter_conv2d1x126_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c1_in_for_cond141_preheader_loopexit_conv2d1x1s_c1_enter_conv2d1x126_aunroll_x_out_o_valid),
        .out_c1_exit_0_tpl(),
        .out_c1_exit_1_tpl(i_sfc_s_c1_in_for_cond141_preheader_loopexit_conv2d1x1s_c1_enter_conv2d1x126_aunroll_x_out_c1_exit_1_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // join_for_coalesced_delay_0(BITJOIN,63)
    assign join_for_coalesced_delay_0_q = {bubble_select_stall_entry_e, bubble_select_stall_entry_d};

    // coalesced_delay_0_fifo(STALLFIFO,67)
    assign coalesced_delay_0_fifo_valid_in = SE_stall_entry_V2;
    assign coalesced_delay_0_fifo_stall_in = SE_out_coalesced_delay_0_fifo_backStall;
    assign coalesced_delay_0_fifo_data_in = join_for_coalesced_delay_0_q;
    assign coalesced_delay_0_fifo_valid_in_bitsignaltemp = coalesced_delay_0_fifo_valid_in[0];
    assign coalesced_delay_0_fifo_stall_in_bitsignaltemp = coalesced_delay_0_fifo_stall_in[0];
    assign coalesced_delay_0_fifo_valid_out[0] = coalesced_delay_0_fifo_valid_out_bitsignaltemp;
    assign coalesced_delay_0_fifo_stall_out[0] = coalesced_delay_0_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(79),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(2),
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

    // redist2_stall_entry_o10_76_fifo(STALLFIFO,65)
    assign redist2_stall_entry_o10_76_fifo_valid_in = SE_stall_entry_V1;
    assign redist2_stall_entry_o10_76_fifo_stall_in = SE_out_redist3_i_idxprom158_conv2d1x157_vt_select_31_b_76_fifo_backStall;
    assign redist2_stall_entry_o10_76_fifo_data_in = bubble_select_stall_entry_h;
    assign redist2_stall_entry_o10_76_fifo_valid_in_bitsignaltemp = redist2_stall_entry_o10_76_fifo_valid_in[0];
    assign redist2_stall_entry_o10_76_fifo_stall_in_bitsignaltemp = redist2_stall_entry_o10_76_fifo_stall_in[0];
    assign redist2_stall_entry_o10_76_fifo_valid_out[0] = redist2_stall_entry_o10_76_fifo_valid_out_bitsignaltemp;
    assign redist2_stall_entry_o10_76_fifo_stall_out[0] = redist2_stall_entry_o10_76_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(77),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist2_stall_entry_o10_76_fifo (
        .valid_in(redist2_stall_entry_o10_76_fifo_valid_in_bitsignaltemp),
        .stall_in(redist2_stall_entry_o10_76_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_stall_entry_h),
        .valid_out(redist2_stall_entry_o10_76_fifo_valid_out_bitsignaltemp),
        .stall_out(redist2_stall_entry_o10_76_fifo_stall_out_bitsignaltemp),
        .data_out(redist2_stall_entry_o10_76_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_out_stall_entry_1_reg(STALLFIFO,165)
    assign bubble_out_stall_entry_1_reg_valid_in = SE_stall_entry_V0;
    assign bubble_out_stall_entry_1_reg_stall_in = SE_out_bubble_out_stall_entry_1_backStall;
    assign bubble_out_stall_entry_1_reg_valid_in_bitsignaltemp = bubble_out_stall_entry_1_reg_valid_in[0];
    assign bubble_out_stall_entry_1_reg_stall_in_bitsignaltemp = bubble_out_stall_entry_1_reg_stall_in[0];
    assign bubble_out_stall_entry_1_reg_valid_out[0] = bubble_out_stall_entry_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_stall_entry_1_reg_stall_out[0] = bubble_out_stall_entry_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(77),
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

    // SE_stall_entry(STALLENABLE,107)
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
    assign SE_stall_entry_consumed1 = (~ (redist2_stall_entry_o10_76_fifo_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg1;
    assign SE_stall_entry_consumed2 = (~ (coalesced_delay_0_fifo_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg2;
    assign SE_stall_entry_consumed3 = (~ (i_sfc_s_c0_in_for_cond141_preheader_loopexit_conv2d1x1s_c0_enter409_conv2d1x155_aunroll_x_out_o_stall) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg3;
    assign SE_stall_entry_consumed4 = (~ (i_sfc_s_c1_in_for_cond141_preheader_loopexit_conv2d1x1s_c1_enter_conv2d1x126_aunroll_x_out_o_stall) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg4;
    assign SE_stall_entry_consumed5 = (~ (redist3_i_idxprom158_conv2d1x157_vt_select_31_b_76_fifo_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg5;
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

    // SE_out_i_llvm_fpga_push_token_priv_i10_ap_push_conv2d1x158(STALLENABLE,102)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_token_priv_i10_ap_push_conv2d1x158_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_token_priv_i10_ap_push_conv2d1x158_wireValid = i_llvm_fpga_push_token_priv_i10_ap_push_conv2d1x158_out_valid_out;

    // bubble_join_i_sfc_s_c0_in_for_cond141_preheader_loopexit_conv2d1x1s_c0_enter409_conv2d1x155_aunroll_x(BITJOIN,79)
    assign bubble_join_i_sfc_s_c0_in_for_cond141_preheader_loopexit_conv2d1x1s_c0_enter409_conv2d1x155_aunroll_x_q = i_sfc_s_c0_in_for_cond141_preheader_loopexit_conv2d1x1s_c0_enter409_conv2d1x155_aunroll_x_out_c0_exit432_1_tpl;

    // bubble_select_i_sfc_s_c0_in_for_cond141_preheader_loopexit_conv2d1x1s_c0_enter409_conv2d1x155_aunroll_x(BITSELECT,80)
    assign bubble_select_i_sfc_s_c0_in_for_cond141_preheader_loopexit_conv2d1x1s_c0_enter409_conv2d1x155_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond141_preheader_loopexit_conv2d1x1s_c0_enter409_conv2d1x155_aunroll_x_q[9:0]);

    // i_llvm_fpga_push_token_priv_i10_ap_push_conv2d1x158(BLACKBOX,20)@5
    // in in_stall_in@20000000
    // out out_data_out@6
    // out out_feedback_out_1@20000000
    // out out_feedback_valid_out_1@20000000
    // out out_stall_out@20000000
    // out out_valid_out@6
    conv2d1x1_i_llvm_fpga_push_token_priv_i10_ap_push_0 thei_llvm_fpga_push_token_priv_i10_ap_push_conv2d1x158 (
        .in_data_in(bubble_select_i_sfc_s_c0_in_for_cond141_preheader_loopexit_conv2d1x1s_c0_enter409_conv2d1x155_aunroll_x_b),
        .in_feedback_stall_in_1(in_feedback_stall_in_1),
        .in_stall_in(SE_out_i_llvm_fpga_push_token_priv_i10_ap_push_conv2d1x158_backStall),
        .in_valid_in(SE_out_i_sfc_s_c0_in_for_cond141_preheader_loopexit_conv2d1x1s_c0_enter409_conv2d1x155_aunroll_x_V1),
        .out_data_out(),
        .out_feedback_out_1(i_llvm_fpga_push_token_priv_i10_ap_push_conv2d1x158_out_feedback_out_1),
        .out_feedback_valid_out_1(i_llvm_fpga_push_token_priv_i10_ap_push_conv2d1x158_out_feedback_valid_out_1),
        .out_stall_out(i_llvm_fpga_push_token_priv_i10_ap_push_conv2d1x158_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_token_priv_i10_ap_push_conv2d1x158_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_sfc_s_c0_in_for_cond141_preheader_loopexit_conv2d1x1s_c0_enter409_conv2d1x155_aunroll_x(STALLENABLE,116)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_sfc_s_c0_in_for_cond141_preheader_loopexit_conv2d1x1s_c0_enter409_conv2d1x155_aunroll_x_fromReg0 <= '0;
            SE_out_i_sfc_s_c0_in_for_cond141_preheader_loopexit_conv2d1x1s_c0_enter409_conv2d1x155_aunroll_x_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_sfc_s_c0_in_for_cond141_preheader_loopexit_conv2d1x1s_c0_enter409_conv2d1x155_aunroll_x_fromReg0 <= SE_out_i_sfc_s_c0_in_for_cond141_preheader_loopexit_conv2d1x1s_c0_enter409_conv2d1x155_aunroll_x_toReg0;
            // Successor 1
            SE_out_i_sfc_s_c0_in_for_cond141_preheader_loopexit_conv2d1x1s_c0_enter409_conv2d1x155_aunroll_x_fromReg1 <= SE_out_i_sfc_s_c0_in_for_cond141_preheader_loopexit_conv2d1x1s_c0_enter409_conv2d1x155_aunroll_x_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_sfc_s_c0_in_for_cond141_preheader_loopexit_conv2d1x1s_c0_enter409_conv2d1x155_aunroll_x_consumed0 = (~ (bubble_out_i_sfc_s_c0_in_for_cond141_preheader_loopexit_conv2d1x1s_c0_enter409_conv2d1x155_aunroll_x_1_reg_stall_out) & SE_out_i_sfc_s_c0_in_for_cond141_preheader_loopexit_conv2d1x1s_c0_enter409_conv2d1x155_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_cond141_preheader_loopexit_conv2d1x1s_c0_enter409_conv2d1x155_aunroll_x_fromReg0;
    assign SE_out_i_sfc_s_c0_in_for_cond141_preheader_loopexit_conv2d1x1s_c0_enter409_conv2d1x155_aunroll_x_consumed1 = (~ (i_llvm_fpga_push_token_priv_i10_ap_push_conv2d1x158_out_stall_out) & SE_out_i_sfc_s_c0_in_for_cond141_preheader_loopexit_conv2d1x1s_c0_enter409_conv2d1x155_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_cond141_preheader_loopexit_conv2d1x1s_c0_enter409_conv2d1x155_aunroll_x_fromReg1;
    // Consuming
    assign SE_out_i_sfc_s_c0_in_for_cond141_preheader_loopexit_conv2d1x1s_c0_enter409_conv2d1x155_aunroll_x_StallValid = SE_out_i_sfc_s_c0_in_for_cond141_preheader_loopexit_conv2d1x1s_c0_enter409_conv2d1x155_aunroll_x_backStall & SE_out_i_sfc_s_c0_in_for_cond141_preheader_loopexit_conv2d1x1s_c0_enter409_conv2d1x155_aunroll_x_wireValid;
    assign SE_out_i_sfc_s_c0_in_for_cond141_preheader_loopexit_conv2d1x1s_c0_enter409_conv2d1x155_aunroll_x_toReg0 = SE_out_i_sfc_s_c0_in_for_cond141_preheader_loopexit_conv2d1x1s_c0_enter409_conv2d1x155_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_cond141_preheader_loopexit_conv2d1x1s_c0_enter409_conv2d1x155_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c0_in_for_cond141_preheader_loopexit_conv2d1x1s_c0_enter409_conv2d1x155_aunroll_x_toReg1 = SE_out_i_sfc_s_c0_in_for_cond141_preheader_loopexit_conv2d1x1s_c0_enter409_conv2d1x155_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_cond141_preheader_loopexit_conv2d1x1s_c0_enter409_conv2d1x155_aunroll_x_consumed1;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c0_in_for_cond141_preheader_loopexit_conv2d1x1s_c0_enter409_conv2d1x155_aunroll_x_or0 = SE_out_i_sfc_s_c0_in_for_cond141_preheader_loopexit_conv2d1x1s_c0_enter409_conv2d1x155_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c0_in_for_cond141_preheader_loopexit_conv2d1x1s_c0_enter409_conv2d1x155_aunroll_x_wireStall = ~ (SE_out_i_sfc_s_c0_in_for_cond141_preheader_loopexit_conv2d1x1s_c0_enter409_conv2d1x155_aunroll_x_consumed1 & SE_out_i_sfc_s_c0_in_for_cond141_preheader_loopexit_conv2d1x1s_c0_enter409_conv2d1x155_aunroll_x_or0);
    assign SE_out_i_sfc_s_c0_in_for_cond141_preheader_loopexit_conv2d1x1s_c0_enter409_conv2d1x155_aunroll_x_backStall = SE_out_i_sfc_s_c0_in_for_cond141_preheader_loopexit_conv2d1x1s_c0_enter409_conv2d1x155_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_i_sfc_s_c0_in_for_cond141_preheader_loopexit_conv2d1x1s_c0_enter409_conv2d1x155_aunroll_x_V0 = SE_out_i_sfc_s_c0_in_for_cond141_preheader_loopexit_conv2d1x1s_c0_enter409_conv2d1x155_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_cond141_preheader_loopexit_conv2d1x1s_c0_enter409_conv2d1x155_aunroll_x_fromReg0);
    assign SE_out_i_sfc_s_c0_in_for_cond141_preheader_loopexit_conv2d1x1s_c0_enter409_conv2d1x155_aunroll_x_V1 = SE_out_i_sfc_s_c0_in_for_cond141_preheader_loopexit_conv2d1x1s_c0_enter409_conv2d1x155_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_cond141_preheader_loopexit_conv2d1x1s_c0_enter409_conv2d1x155_aunroll_x_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c0_in_for_cond141_preheader_loopexit_conv2d1x1s_c0_enter409_conv2d1x155_aunroll_x_wireValid = i_sfc_s_c0_in_for_cond141_preheader_loopexit_conv2d1x1s_c0_enter409_conv2d1x155_aunroll_x_out_o_valid;

    // i_sfc_s_c0_in_for_cond141_preheader_loopexit_conv2d1x1s_c0_enter409_conv2d1x155_aunroll_x(BLACKBOX,54)@0
    // in in_i_stall@20000000
    // out out_memdep_13_conv2d1x1_avm_address@20000000
    // out out_memdep_13_conv2d1x1_avm_burstcount@20000000
    // out out_memdep_13_conv2d1x1_avm_byteenable@20000000
    // out out_memdep_13_conv2d1x1_avm_enable@20000000
    // out out_memdep_13_conv2d1x1_avm_read@20000000
    // out out_memdep_13_conv2d1x1_avm_write@20000000
    // out out_memdep_13_conv2d1x1_avm_writedata@20000000
    // out out_o_stall@20000000
    // out out_o_valid@5
    // out out_c0_exit432_0_tpl@5
    // out out_c0_exit432_1_tpl@5
    conv2d1x1_i_sfc_s_c0_in_for_cond141_preh0000enter409_conv2d1x155 thei_sfc_s_c0_in_for_cond141_preheader_loopexit_conv2d1x1s_c0_enter409_conv2d1x155_aunroll_x (
        .in_flush(in_flush),
        .in_i_stall(SE_out_i_sfc_s_c0_in_for_cond141_preheader_loopexit_conv2d1x1s_c0_enter409_conv2d1x155_aunroll_x_backStall),
        .in_i_valid(SE_stall_entry_V3),
        .in_memdep_13_conv2d1x1_avm_readdata(in_memdep_13_conv2d1x1_avm_readdata),
        .in_memdep_13_conv2d1x1_avm_readdatavalid(in_memdep_13_conv2d1x1_avm_readdatavalid),
        .in_memdep_13_conv2d1x1_avm_waitrequest(in_memdep_13_conv2d1x1_avm_waitrequest),
        .in_memdep_13_conv2d1x1_avm_writeack(in_memdep_13_conv2d1x1_avm_writeack),
        .in_c0_eni26_0_tpl(GND_q),
        .in_c0_eni26_1_tpl(bubble_select_stall_entry_r),
        .in_c0_eni26_2_tpl(bubble_select_stall_entry_s),
        .in_c0_eni26_3_tpl(bubble_select_stall_entry_t),
        .in_c0_eni26_4_tpl(bubble_select_stall_entry_u),
        .in_c0_eni26_5_tpl(bubble_select_stall_entry_v),
        .in_c0_eni26_6_tpl(bubble_select_stall_entry_w),
        .in_c0_eni26_7_tpl(bubble_select_stall_entry_y),
        .in_c0_eni26_8_tpl(bubble_select_stall_entry_z),
        .in_c0_eni26_9_tpl(bubble_select_stall_entry_p),
        .in_c0_eni26_10_tpl(bubble_select_stall_entry_x),
        .in_c0_eni26_11_tpl(bubble_select_stall_entry_ii),
        .in_c0_eni26_12_tpl(bubble_select_stall_entry_l),
        .in_c0_eni26_13_tpl(bubble_select_stall_entry_tt),
        .in_c0_eni26_14_tpl(bubble_select_stall_entry_m),
        .in_c0_eni26_15_tpl(bubble_select_stall_entry_1),
        .in_c0_eni26_16_tpl(bubble_select_stall_entry_n),
        .in_c0_eni26_17_tpl(bubble_select_stall_entry_2),
        .in_c0_eni26_18_tpl(bubble_select_stall_entry_o),
        .in_c0_eni26_19_tpl(bubble_select_stall_entry_3),
        .in_c0_eni26_20_tpl(bubble_select_stall_entry_q),
        .in_c0_eni26_21_tpl(bubble_select_stall_entry_4),
        .in_c0_eni26_22_tpl(bubble_select_stall_entry_5),
        .in_c0_eni26_23_tpl(bubble_select_stall_entry_j),
        .in_c0_eni26_24_tpl(bubble_select_stall_entry_k),
        .in_c0_eni26_25_tpl(bubble_select_stall_entry_g),
        .in_c0_eni26_26_tpl(bubble_select_stall_entry_f),
        .out_memdep_13_conv2d1x1_avm_address(i_sfc_s_c0_in_for_cond141_preheader_loopexit_conv2d1x1s_c0_enter409_conv2d1x155_aunroll_x_out_memdep_13_conv2d1x1_avm_address),
        .out_memdep_13_conv2d1x1_avm_burstcount(i_sfc_s_c0_in_for_cond141_preheader_loopexit_conv2d1x1s_c0_enter409_conv2d1x155_aunroll_x_out_memdep_13_conv2d1x1_avm_burstcount),
        .out_memdep_13_conv2d1x1_avm_byteenable(i_sfc_s_c0_in_for_cond141_preheader_loopexit_conv2d1x1s_c0_enter409_conv2d1x155_aunroll_x_out_memdep_13_conv2d1x1_avm_byteenable),
        .out_memdep_13_conv2d1x1_avm_enable(i_sfc_s_c0_in_for_cond141_preheader_loopexit_conv2d1x1s_c0_enter409_conv2d1x155_aunroll_x_out_memdep_13_conv2d1x1_avm_enable),
        .out_memdep_13_conv2d1x1_avm_read(i_sfc_s_c0_in_for_cond141_preheader_loopexit_conv2d1x1s_c0_enter409_conv2d1x155_aunroll_x_out_memdep_13_conv2d1x1_avm_read),
        .out_memdep_13_conv2d1x1_avm_write(i_sfc_s_c0_in_for_cond141_preheader_loopexit_conv2d1x1s_c0_enter409_conv2d1x155_aunroll_x_out_memdep_13_conv2d1x1_avm_write),
        .out_memdep_13_conv2d1x1_avm_writedata(i_sfc_s_c0_in_for_cond141_preheader_loopexit_conv2d1x1s_c0_enter409_conv2d1x155_aunroll_x_out_memdep_13_conv2d1x1_avm_writedata),
        .out_o_stall(i_sfc_s_c0_in_for_cond141_preheader_loopexit_conv2d1x1s_c0_enter409_conv2d1x155_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_for_cond141_preheader_loopexit_conv2d1x1s_c0_enter409_conv2d1x155_aunroll_x_out_o_valid),
        .out_c0_exit432_0_tpl(),
        .out_c0_exit432_1_tpl(i_sfc_s_c0_in_for_cond141_preheader_loopexit_conv2d1x1s_c0_enter409_conv2d1x155_aunroll_x_out_c0_exit432_1_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,7)
    assign out_memdep_13_conv2d1x1_avm_address = i_sfc_s_c0_in_for_cond141_preheader_loopexit_conv2d1x1s_c0_enter409_conv2d1x155_aunroll_x_out_memdep_13_conv2d1x1_avm_address;
    assign out_memdep_13_conv2d1x1_avm_enable = i_sfc_s_c0_in_for_cond141_preheader_loopexit_conv2d1x1s_c0_enter409_conv2d1x155_aunroll_x_out_memdep_13_conv2d1x1_avm_enable;
    assign out_memdep_13_conv2d1x1_avm_read = i_sfc_s_c0_in_for_cond141_preheader_loopexit_conv2d1x1s_c0_enter409_conv2d1x155_aunroll_x_out_memdep_13_conv2d1x1_avm_read;
    assign out_memdep_13_conv2d1x1_avm_write = i_sfc_s_c0_in_for_cond141_preheader_loopexit_conv2d1x1s_c0_enter409_conv2d1x155_aunroll_x_out_memdep_13_conv2d1x1_avm_write;
    assign out_memdep_13_conv2d1x1_avm_writedata = i_sfc_s_c0_in_for_cond141_preheader_loopexit_conv2d1x1s_c0_enter409_conv2d1x155_aunroll_x_out_memdep_13_conv2d1x1_avm_writedata;
    assign out_memdep_13_conv2d1x1_avm_byteenable = i_sfc_s_c0_in_for_cond141_preheader_loopexit_conv2d1x1s_c0_enter409_conv2d1x155_aunroll_x_out_memdep_13_conv2d1x1_avm_byteenable;
    assign out_memdep_13_conv2d1x1_avm_burstcount = i_sfc_s_c0_in_for_cond141_preheader_loopexit_conv2d1x1s_c0_enter409_conv2d1x155_aunroll_x_out_memdep_13_conv2d1x1_avm_burstcount;

    // feedback_out_1_sync(GPOUT,8)
    assign out_feedback_out_1 = i_llvm_fpga_push_token_priv_i10_ap_push_conv2d1x158_out_feedback_out_1;

    // feedback_valid_out_1_sync(GPOUT,10)
    assign out_feedback_valid_out_1 = i_llvm_fpga_push_token_priv_i10_ap_push_conv2d1x158_out_feedback_valid_out_1;

    // sync_out(GPOUT,40)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // dupName_0_ext_sig_sync_out_x(GPOUT,44)
    assign out_unnamed_conv2d1x116_conv2d1x1_avm_address = i_llvm_fpga_mem_unnamed_conv2d1x116_conv2d1x160_out_unnamed_conv2d1x116_conv2d1x1_avm_address;
    assign out_unnamed_conv2d1x116_conv2d1x1_avm_enable = i_llvm_fpga_mem_unnamed_conv2d1x116_conv2d1x160_out_unnamed_conv2d1x116_conv2d1x1_avm_enable;
    assign out_unnamed_conv2d1x116_conv2d1x1_avm_read = i_llvm_fpga_mem_unnamed_conv2d1x116_conv2d1x160_out_unnamed_conv2d1x116_conv2d1x1_avm_read;
    assign out_unnamed_conv2d1x116_conv2d1x1_avm_write = i_llvm_fpga_mem_unnamed_conv2d1x116_conv2d1x160_out_unnamed_conv2d1x116_conv2d1x1_avm_write;
    assign out_unnamed_conv2d1x116_conv2d1x1_avm_writedata = i_llvm_fpga_mem_unnamed_conv2d1x116_conv2d1x160_out_unnamed_conv2d1x116_conv2d1x1_avm_writedata;
    assign out_unnamed_conv2d1x116_conv2d1x1_avm_byteenable = i_llvm_fpga_mem_unnamed_conv2d1x116_conv2d1x160_out_unnamed_conv2d1x116_conv2d1x1_avm_byteenable;
    assign out_unnamed_conv2d1x116_conv2d1x1_avm_burstcount = i_llvm_fpga_mem_unnamed_conv2d1x116_conv2d1x160_out_unnamed_conv2d1x116_conv2d1x1_avm_burstcount;

    // bubble_join_coalesced_delay_0_fifo(BITJOIN,92)
    assign bubble_join_coalesced_delay_0_fifo_q = coalesced_delay_0_fifo_data_out;

    // bubble_select_coalesced_delay_0_fifo(BITSELECT,93)
    assign bubble_select_coalesced_delay_0_fifo_b = $unsigned(bubble_join_coalesced_delay_0_fifo_q[1:0]);

    // sel_for_coalesced_delay_0(BITSELECT,64)
    assign sel_for_coalesced_delay_0_b = $unsigned(bubble_select_coalesced_delay_0_fifo_b[0:0]);
    assign sel_for_coalesced_delay_0_c = $unsigned(bubble_select_coalesced_delay_0_fifo_b[1:1]);

    // dupName_0_sync_out_x(GPOUT,45)@78
    assign out_c0_exe1953327 = sel_for_coalesced_delay_0_b;
    assign out_c0_exe2053428 = sel_for_coalesced_delay_0_c;
    assign out_valid_out = SE_out_coalesced_delay_0_fifo_V0;

    // dupName_1_ext_sig_sync_out_x(GPOUT,46)
    assign out_lsu_unnamed_conv2d1x116_o_active = i_llvm_fpga_mem_unnamed_conv2d1x116_conv2d1x160_out_lsu_unnamed_conv2d1x116_o_active;

endmodule
