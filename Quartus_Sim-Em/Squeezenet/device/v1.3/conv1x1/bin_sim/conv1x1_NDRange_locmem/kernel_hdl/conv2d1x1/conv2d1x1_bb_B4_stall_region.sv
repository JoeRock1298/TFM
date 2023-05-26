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

// SystemVerilog created from conv2d1x1_bb_B4_stall_region
// SystemVerilog created on Wed May 24 18:10:55 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2d1x1_bb_B4_stall_region (
    input wire [511:0] in_unnamed_conv2d1x17_conv2d1x1_avm_readdata,
    input wire [0:0] in_unnamed_conv2d1x17_conv2d1x1_avm_writeack,
    input wire [0:0] in_unnamed_conv2d1x17_conv2d1x1_avm_waitrequest,
    input wire [0:0] in_unnamed_conv2d1x17_conv2d1x1_avm_readdatavalid,
    output wire [30:0] out_unnamed_conv2d1x17_conv2d1x1_avm_address,
    output wire [0:0] out_unnamed_conv2d1x17_conv2d1x1_avm_enable,
    output wire [0:0] out_unnamed_conv2d1x17_conv2d1x1_avm_read,
    output wire [0:0] out_unnamed_conv2d1x17_conv2d1x1_avm_write,
    output wire [511:0] out_unnamed_conv2d1x17_conv2d1x1_avm_writedata,
    output wire [63:0] out_unnamed_conv2d1x17_conv2d1x1_avm_byteenable,
    output wire [4:0] out_unnamed_conv2d1x17_conv2d1x1_avm_burstcount,
    input wire [0:0] in_flush,
    input wire [31:0] in_input_size,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [63:0] in_acl_global_id_135,
    input wire [31:0] in_c0_exe14931,
    input wire [63:0] in_c0_exe17,
    input wire [63:0] in_c0_exe210,
    input wire [31:0] in_c0_exe413,
    input wire [63:0] in_c0_exe514,
    input wire [0:0] in_c0_exe617,
    input wire [0:0] in_c0_exe722,
    input wire [0:0] in_c0_exe825,
    input wire [0:0] in_c0_exe926,
    input wire [31:0] in_c1_exe133,
    input wire [31:0] in_j_07029,
    input wire [31:0] in_l_grpid_03,
    input wire [31:0] in_unnamed_conv2d1x15,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_lsu_unnamed_conv2d1x17_o_active,
    output wire [63:0] out_acl_global_id_135,
    output wire [63:0] out_c0_exe17,
    output wire [63:0] out_c0_exe210,
    output wire [31:0] out_c0_exe413,
    output wire [63:0] out_c0_exe514,
    output wire [0:0] out_c0_exe617,
    output wire [0:0] out_c0_exe722,
    output wire [0:0] out_c0_exe825,
    output wire [0:0] out_c0_exe926,
    output wire [31:0] out_inc87,
    output wire [31:0] out_l_grpid_03,
    output wire [31:0] out_unnamed_conv2d1x15,
    output wire [0:0] out_unnamed_conv2d1x16,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [31:0] c_i32_114_q;
    wire [33:0] i_cmp_conv2d1x18_a;
    wire [33:0] i_cmp_conv2d1x18_b;
    logic [33:0] i_cmp_conv2d1x18_o;
    wire [0:0] i_cmp_conv2d1x18_c;
    wire [32:0] i_inc87_conv2d1x11_a;
    wire [32:0] i_inc87_conv2d1x11_b;
    logic [32:0] i_inc87_conv2d1x11_o;
    wire [32:0] i_inc87_conv2d1x11_q;
    wire [0:0] i_llvm_fpga_mem_unnamed_conv2d1x17_conv2d1x112_out_lsu_unnamed_conv2d1x17_o_active;
    wire [0:0] i_llvm_fpga_mem_unnamed_conv2d1x17_conv2d1x112_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_unnamed_conv2d1x17_conv2d1x112_out_o_valid;
    wire [30:0] i_llvm_fpga_mem_unnamed_conv2d1x17_conv2d1x112_out_unnamed_conv2d1x17_conv2d1x1_avm_address;
    wire [4:0] i_llvm_fpga_mem_unnamed_conv2d1x17_conv2d1x112_out_unnamed_conv2d1x17_conv2d1x1_avm_burstcount;
    wire [63:0] i_llvm_fpga_mem_unnamed_conv2d1x17_conv2d1x112_out_unnamed_conv2d1x17_conv2d1x1_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_conv2d1x17_conv2d1x112_out_unnamed_conv2d1x17_conv2d1x1_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_conv2d1x17_conv2d1x112_out_unnamed_conv2d1x17_conv2d1x1_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_conv2d1x17_conv2d1x112_out_unnamed_conv2d1x17_conv2d1x1_avm_write;
    wire [511:0] i_llvm_fpga_mem_unnamed_conv2d1x17_conv2d1x112_out_unnamed_conv2d1x17_conv2d1x1_avm_writedata;
    wire [31:0] i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer5_conv2d1x10_out_buffer_out;
    wire [0:0] i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer5_conv2d1x10_out_stall_out;
    wire [0:0] i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer5_conv2d1x10_out_valid_out;
    wire [0:0] i_unnamed_conv2d1x111_q;
    wire [31:0] bgTrunc_i_inc87_conv2d1x11_sel_x_b;
    wire [64:0] i_arrayidx855_conv2d1x10_add_x_a;
    wire [64:0] i_arrayidx855_conv2d1x10_add_x_b;
    logic [64:0] i_arrayidx855_conv2d1x10_add_x_o;
    wire [64:0] i_arrayidx855_conv2d1x10_add_x_q;
    wire [1:0] i_arrayidx855_conv2d1x10_c_i2_01_x_q;
    wire [61:0] i_arrayidx855_conv2d1x10_narrow_x_b;
    wire [63:0] i_arrayidx855_conv2d1x10_shift_join_x_q;
    wire [63:0] i_arrayidx855_conv2d1x10_dupName_0_trunc_sel_x_b;
    wire [63:0] i_idxprom84_conv2d1x12_sel_x_b;
    wire [0:0] i_sfc_s_c0_in_for_cond_cleanup53_conv2d1x1s_c0_enter71_conv2d1x16_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_for_cond_cleanup53_conv2d1x1s_c0_enter71_conv2d1x16_aunroll_x_out_o_valid;
    wire [31:0] i_sfc_s_c0_in_for_cond_cleanup53_conv2d1x1s_c0_enter71_conv2d1x16_aunroll_x_out_c0_exit76_1_tpl;
    wire [96:0] join_for_coalesced_delay_0_q;
    wire [63:0] sel_for_coalesced_delay_0_b;
    wire [31:0] sel_for_coalesced_delay_0_c;
    wire [0:0] sel_for_coalesced_delay_0_d;
    wire [290:0] join_for_coalesced_delay_1_q;
    wire [63:0] sel_for_coalesced_delay_1_b;
    wire [63:0] sel_for_coalesced_delay_1_c;
    wire [63:0] sel_for_coalesced_delay_1_d;
    wire [31:0] sel_for_coalesced_delay_1_e;
    wire [31:0] sel_for_coalesced_delay_1_f;
    wire [31:0] sel_for_coalesced_delay_1_g;
    wire [0:0] sel_for_coalesced_delay_1_h;
    wire [0:0] sel_for_coalesced_delay_1_i;
    wire [0:0] sel_for_coalesced_delay_1_j;
    wire [64:0] join_for_coalesced_delay_2_q;
    wire [63:0] sel_for_coalesced_delay_2_b;
    wire [0:0] sel_for_coalesced_delay_2_c;
    reg [31:0] redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_0_q;
    reg [31:0] redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_1_q;
    reg [31:0] redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_2_q;
    reg [31:0] redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_3_q;
    reg [31:0] redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_4_q;
    reg [31:0] redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_5_q;
    reg [96:0] coalesced_delay_0_0_q;
    reg [96:0] coalesced_delay_0_1_q;
    reg [96:0] coalesced_delay_0_2_q;
    reg [96:0] coalesced_delay_0_3_q;
    reg [290:0] coalesced_delay_1_0_q;
    reg [290:0] coalesced_delay_1_1_q;
    reg [290:0] coalesced_delay_1_2_q;
    reg [290:0] coalesced_delay_1_3_q;
    reg [290:0] coalesced_delay_1_4_q;
    reg [290:0] coalesced_delay_1_5_q;
    reg [64:0] coalesced_delay_2_0_q;
    reg [64:0] coalesced_delay_2_1_q;
    wire [31:0] bubble_join_i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer5_conv2d1x10_q;
    wire [31:0] bubble_select_i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer5_conv2d1x10_b;
    wire [451:0] bubble_join_stall_entry_q;
    wire [63:0] bubble_select_stall_entry_b;
    wire [31:0] bubble_select_stall_entry_c;
    wire [63:0] bubble_select_stall_entry_d;
    wire [63:0] bubble_select_stall_entry_e;
    wire [31:0] bubble_select_stall_entry_f;
    wire [63:0] bubble_select_stall_entry_g;
    wire [0:0] bubble_select_stall_entry_h;
    wire [0:0] bubble_select_stall_entry_i;
    wire [0:0] bubble_select_stall_entry_j;
    wire [0:0] bubble_select_stall_entry_k;
    wire [31:0] bubble_select_stall_entry_l;
    wire [31:0] bubble_select_stall_entry_m;
    wire [31:0] bubble_select_stall_entry_n;
    wire [31:0] bubble_select_stall_entry_o;
    wire [31:0] bubble_join_i_sfc_s_c0_in_for_cond_cleanup53_conv2d1x1s_c0_enter71_conv2d1x16_aunroll_x_q;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond_cleanup53_conv2d1x1s_c0_enter71_conv2d1x16_aunroll_x_b;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer5_conv2d1x10_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer5_conv2d1x10_and0;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer5_conv2d1x10_and1;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer5_conv2d1x10_backStall;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer5_conv2d1x10_V0;
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
    wire [0:0] SE_stall_entry_or0;
    wire [0:0] SE_stall_entry_or1;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_stall_entry_V1;
    wire [0:0] SE_stall_entry_V2;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond_cleanup53_conv2d1x1s_c0_enter71_conv2d1x16_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond_cleanup53_conv2d1x1s_c0_enter71_conv2d1x16_aunroll_x_and0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond_cleanup53_conv2d1x1s_c0_enter71_conv2d1x16_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond_cleanup53_conv2d1x1s_c0_enter71_conv2d1x16_aunroll_x_V0;
    reg [0:0] SE_redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_0_R_v_0;
    wire [0:0] SE_redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_0_v_s_0;
    wire [0:0] SE_redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_0_s_tv_0;
    wire [0:0] SE_redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_0_backEN;
    wire [0:0] SE_redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_0_backStall;
    wire [0:0] SE_redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_0_V0;
    reg [0:0] SE_redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_1_R_v_0;
    wire [0:0] SE_redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_1_v_s_0;
    wire [0:0] SE_redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_1_s_tv_0;
    wire [0:0] SE_redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_1_backEN;
    wire [0:0] SE_redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_1_backStall;
    wire [0:0] SE_redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_1_V0;
    reg [0:0] SE_redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_2_R_v_0;
    wire [0:0] SE_redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_2_v_s_0;
    wire [0:0] SE_redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_2_s_tv_0;
    wire [0:0] SE_redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_2_backEN;
    wire [0:0] SE_redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_2_backStall;
    wire [0:0] SE_redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_2_V0;
    reg [0:0] SE_redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_3_R_v_0;
    reg [0:0] SE_redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_3_R_v_1;
    wire [0:0] SE_redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_3_v_s_0;
    wire [0:0] SE_redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_3_s_tv_0;
    wire [0:0] SE_redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_3_s_tv_1;
    wire [0:0] SE_redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_3_backEN;
    wire [0:0] SE_redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_3_or0;
    wire [0:0] SE_redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_3_backStall;
    wire [0:0] SE_redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_3_V0;
    wire [0:0] SE_redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_3_V1;
    reg [0:0] SE_redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_4_R_v_0;
    wire [0:0] SE_redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_4_v_s_0;
    wire [0:0] SE_redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_4_s_tv_0;
    wire [0:0] SE_redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_4_backEN;
    wire [0:0] SE_redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_4_backStall;
    wire [0:0] SE_redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_4_V0;
    reg [0:0] SE_redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_5_R_v_0;
    wire [0:0] SE_redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_5_v_s_0;
    wire [0:0] SE_redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_5_s_tv_0;
    wire [0:0] SE_redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_5_backEN;
    wire [0:0] SE_redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_5_backStall;
    wire [0:0] SE_redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_5_V0;
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
    wire [0:0] SR_SE_redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_5_i_valid;
    reg [0:0] SR_SE_redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_5_r_valid;
    reg [31:0] SR_SE_redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_5_r_data0;
    reg [290:0] SR_SE_redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_5_r_data1;
    reg [64:0] SR_SE_redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_5_r_data2;
    wire [0:0] SR_SE_redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_5_backStall;
    wire [0:0] SR_SE_redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_5_V;
    wire [31:0] SR_SE_redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_5_D0;
    wire [290:0] SR_SE_redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_5_D1;
    wire [64:0] SR_SE_redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_5_D2;


    // bubble_join_stall_entry(BITJOIN,93)
    assign bubble_join_stall_entry_q = {in_unnamed_conv2d1x15, in_l_grpid_03, in_j_07029, in_c1_exe133, in_c0_exe926, in_c0_exe825, in_c0_exe722, in_c0_exe617, in_c0_exe514, in_c0_exe413, in_c0_exe210, in_c0_exe17, in_c0_exe14931, in_acl_global_id_135};

    // bubble_select_stall_entry(BITSELECT,94)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[63:0]);
    assign bubble_select_stall_entry_c = $unsigned(bubble_join_stall_entry_q[95:64]);
    assign bubble_select_stall_entry_d = $unsigned(bubble_join_stall_entry_q[159:96]);
    assign bubble_select_stall_entry_e = $unsigned(bubble_join_stall_entry_q[223:160]);
    assign bubble_select_stall_entry_f = $unsigned(bubble_join_stall_entry_q[255:224]);
    assign bubble_select_stall_entry_g = $unsigned(bubble_join_stall_entry_q[319:256]);
    assign bubble_select_stall_entry_h = $unsigned(bubble_join_stall_entry_q[320:320]);
    assign bubble_select_stall_entry_i = $unsigned(bubble_join_stall_entry_q[321:321]);
    assign bubble_select_stall_entry_j = $unsigned(bubble_join_stall_entry_q[322:322]);
    assign bubble_select_stall_entry_k = $unsigned(bubble_join_stall_entry_q[323:323]);
    assign bubble_select_stall_entry_l = $unsigned(bubble_join_stall_entry_q[355:324]);
    assign bubble_select_stall_entry_m = $unsigned(bubble_join_stall_entry_q[387:356]);
    assign bubble_select_stall_entry_n = $unsigned(bubble_join_stall_entry_q[419:388]);
    assign bubble_select_stall_entry_o = $unsigned(bubble_join_stall_entry_q[451:420]);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // join_for_coalesced_delay_2(BITJOIN,67)
    assign join_for_coalesced_delay_2_q = {sel_for_coalesced_delay_0_d, sel_for_coalesced_delay_0_b};

    // coalesced_delay_2_0(REG,85)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_2_0_q <= $unsigned(65'b00000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_4_backEN == 1'b1)
        begin
            coalesced_delay_2_0_q <= $unsigned(join_for_coalesced_delay_2_q);
        end
    end

    // join_for_coalesced_delay_1(BITJOIN,64)
    assign join_for_coalesced_delay_1_q = {bubble_select_stall_entry_j, bubble_select_stall_entry_i, bubble_select_stall_entry_h, bubble_select_stall_entry_o, bubble_select_stall_entry_n, bubble_select_stall_entry_f, bubble_select_stall_entry_e, bubble_select_stall_entry_d, bubble_select_stall_entry_b};

    // coalesced_delay_1_0(REG,79)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_1_0_q <= $unsigned(291'b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_0_backEN == 1'b1)
        begin
            coalesced_delay_1_0_q <= $unsigned(join_for_coalesced_delay_1_q);
        end
    end

    // coalesced_delay_1_1(REG,80)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_1_1_q <= $unsigned(291'b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_1_backEN == 1'b1)
        begin
            coalesced_delay_1_1_q <= $unsigned(coalesced_delay_1_0_q);
        end
    end

    // coalesced_delay_1_2(REG,81)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_1_2_q <= $unsigned(291'b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_2_backEN == 1'b1)
        begin
            coalesced_delay_1_2_q <= $unsigned(coalesced_delay_1_1_q);
        end
    end

    // coalesced_delay_1_3(REG,82)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_1_3_q <= $unsigned(291'b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_3_backEN == 1'b1)
        begin
            coalesced_delay_1_3_q <= $unsigned(coalesced_delay_1_2_q);
        end
    end

    // coalesced_delay_1_4(REG,83)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_1_4_q <= $unsigned(291'b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_4_backEN == 1'b1)
        begin
            coalesced_delay_1_4_q <= $unsigned(coalesced_delay_1_3_q);
        end
    end

    // c_i32_114(CONSTANT,4)
    assign c_i32_114_q = $unsigned(32'b00000000000000000000000000000001);

    // i_inc87_conv2d1x11(ADD,12)@0
    assign i_inc87_conv2d1x11_a = {1'b0, bubble_select_stall_entry_m};
    assign i_inc87_conv2d1x11_b = {1'b0, c_i32_114_q};
    assign i_inc87_conv2d1x11_o = $unsigned(i_inc87_conv2d1x11_a) + $unsigned(i_inc87_conv2d1x11_b);
    assign i_inc87_conv2d1x11_q = i_inc87_conv2d1x11_o[32:0];

    // bgTrunc_i_inc87_conv2d1x11_sel_x(BITSELECT,32)@0
    assign bgTrunc_i_inc87_conv2d1x11_sel_x_b = i_inc87_conv2d1x11_q[31:0];

    // redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_0(REG,69)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_0_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_0_backEN == 1'b1)
        begin
            redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_0_q <= $unsigned(bgTrunc_i_inc87_conv2d1x11_sel_x_b);
        end
    end

    // redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_1(REG,70)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_1_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_1_backEN == 1'b1)
        begin
            redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_1_q <= $unsigned(redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_0_q);
        end
    end

    // redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_2(REG,71)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_2_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_2_backEN == 1'b1)
        begin
            redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_2_q <= $unsigned(redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_1_q);
        end
    end

    // redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_3(REG,72)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_3_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_3_backEN == 1'b1)
        begin
            redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_3_q <= $unsigned(redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_2_q);
        end
    end

    // redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_4(REG,73)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_4_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_4_backEN == 1'b1)
        begin
            redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_4_q <= $unsigned(redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_3_q);
        end
    end

    // SE_redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_5(STALLENABLE,128)
    // Valid signal propagation
    assign SE_redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_5_V0 = SE_redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_5_R_v_0;
    // Stall signal propagation
    assign SE_redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_5_s_tv_0 = SE_out_i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer5_conv2d1x10_backStall & SE_redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_5_R_v_0;
    // Backward Enable generation
    assign SE_redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_5_backEN = ~ (SE_redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_5_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_5_v_s_0 = SE_redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_5_backEN & SR_SE_redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_5_V;
    // Backward Stall generation
    assign SE_redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_5_backStall = ~ (SE_redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_5_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_5_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_5_backEN == 1'b0)
            begin
                SE_redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_5_R_v_0 <= SE_redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_5_R_v_0 & SE_redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_5_s_tv_0;
            end
            else
            begin
                SE_redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_5_R_v_0 <= SE_redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_5_v_s_0;
            end

        end
    end

    // SR_SE_redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_5(STALLREG,162)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_5_r_valid <= 1'b0;
            SR_SE_redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_5_r_data0 <= 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_5_r_data1 <= 291'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_5_r_data2 <= 65'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_5_r_valid <= SE_redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_5_backStall & (SR_SE_redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_5_r_valid | SR_SE_redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_5_i_valid);

            if (SR_SE_redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_5_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_5_r_data0 <= $unsigned(redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_4_q);
                SR_SE_redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_5_r_data1 <= $unsigned(coalesced_delay_1_4_q);
                SR_SE_redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_5_r_data2 <= $unsigned(coalesced_delay_2_0_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_5_i_valid = SE_redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_4_V0;
    // Stall signal propagation
    assign SR_SE_redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_5_backStall = SR_SE_redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_5_r_valid | ~ (SR_SE_redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_5_i_valid);

    // Valid
    assign SR_SE_redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_5_V = SR_SE_redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_5_r_valid == 1'b1 ? SR_SE_redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_5_r_valid : SR_SE_redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_5_i_valid;

    // Data0
    assign SR_SE_redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_5_D0 = SR_SE_redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_5_r_valid == 1'b1 ? SR_SE_redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_5_r_data0 : redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_4_q;
    // Data1
    assign SR_SE_redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_5_D1 = SR_SE_redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_5_r_valid == 1'b1 ? SR_SE_redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_5_r_data1 : coalesced_delay_1_4_q;
    // Data2
    assign SR_SE_redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_5_D2 = SR_SE_redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_5_r_valid == 1'b1 ? SR_SE_redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_5_r_data2 : coalesced_delay_2_0_q;

    // SE_redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_4(STALLENABLE,127)
    // Valid signal propagation
    assign SE_redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_4_V0 = SE_redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_4_R_v_0;
    // Stall signal propagation
    assign SE_redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_4_s_tv_0 = SR_SE_redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_5_backStall & SE_redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_4_R_v_0;
    // Backward Enable generation
    assign SE_redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_4_backEN = ~ (SE_redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_4_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_4_v_s_0 = SE_redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_4_backEN & SE_redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_3_V0;
    // Backward Stall generation
    assign SE_redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_4_backStall = ~ (SE_redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_4_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_4_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_4_backEN == 1'b0)
            begin
                SE_redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_4_R_v_0 <= SE_redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_4_R_v_0 & SE_redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_4_s_tv_0;
            end
            else
            begin
                SE_redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_4_R_v_0 <= SE_redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_4_v_s_0;
            end

        end
    end

    // SE_redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_3(STALLENABLE,126)
    // Valid signal propagation
    assign SE_redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_3_V0 = SE_redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_3_R_v_0;
    assign SE_redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_3_V1 = SE_redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_3_R_v_1;
    // Stall signal propagation
    assign SE_redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_3_s_tv_0 = SE_redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_4_backStall & SE_redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_3_R_v_0;
    assign SE_redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_3_s_tv_1 = SE_out_i_sfc_s_c0_in_for_cond_cleanup53_conv2d1x1s_c0_enter71_conv2d1x16_aunroll_x_backStall & SE_redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_3_R_v_1;
    // Backward Enable generation
    assign SE_redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_3_or0 = SE_redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_3_s_tv_0;
    assign SE_redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_3_backEN = ~ (SE_redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_3_s_tv_1 | SE_redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_3_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_3_v_s_0 = SE_redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_3_backEN & SE_redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_2_V0;
    // Backward Stall generation
    assign SE_redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_3_backStall = ~ (SE_redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_3_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_3_R_v_0 <= 1'b0;
            SE_redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_3_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_3_backEN == 1'b0)
            begin
                SE_redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_3_R_v_0 <= SE_redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_3_R_v_0 & SE_redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_3_s_tv_0;
            end
            else
            begin
                SE_redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_3_R_v_0 <= SE_redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_3_v_s_0;
            end

            if (SE_redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_3_backEN == 1'b0)
            begin
                SE_redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_3_R_v_1 <= SE_redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_3_R_v_1 & SE_redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_3_s_tv_1;
            end
            else
            begin
                SE_redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_3_R_v_1 <= SE_redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_3_v_s_0;
            end

        end
    end

    // SE_redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_2(STALLENABLE,125)
    // Valid signal propagation
    assign SE_redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_2_V0 = SE_redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_2_R_v_0;
    // Stall signal propagation
    assign SE_redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_2_s_tv_0 = SE_redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_3_backStall & SE_redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_2_R_v_0;
    // Backward Enable generation
    assign SE_redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_2_backEN = ~ (SE_redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_2_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_2_v_s_0 = SE_redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_2_backEN & SE_redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_1_V0;
    // Backward Stall generation
    assign SE_redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_2_backStall = ~ (SE_redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_2_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_2_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_2_backEN == 1'b0)
            begin
                SE_redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_2_R_v_0 <= SE_redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_2_R_v_0 & SE_redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_2_s_tv_0;
            end
            else
            begin
                SE_redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_2_R_v_0 <= SE_redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_2_v_s_0;
            end

        end
    end

    // SE_redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_1(STALLENABLE,124)
    // Valid signal propagation
    assign SE_redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_1_V0 = SE_redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_1_R_v_0;
    // Stall signal propagation
    assign SE_redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_1_s_tv_0 = SE_redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_2_backStall & SE_redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_1_R_v_0;
    // Backward Enable generation
    assign SE_redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_1_backEN = ~ (SE_redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_1_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_1_v_s_0 = SE_redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_1_backEN & SE_redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_0_V0;
    // Backward Stall generation
    assign SE_redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_1_backStall = ~ (SE_redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_1_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_1_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_1_backEN == 1'b0)
            begin
                SE_redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_1_R_v_0 <= SE_redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_1_R_v_0 & SE_redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_1_s_tv_0;
            end
            else
            begin
                SE_redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_1_R_v_0 <= SE_redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_1_v_s_0;
            end

        end
    end

    // SE_redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_0(STALLENABLE,123)
    // Valid signal propagation
    assign SE_redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_0_V0 = SE_redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_0_R_v_0;
    // Stall signal propagation
    assign SE_redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_0_s_tv_0 = SE_redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_1_backStall & SE_redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_0_R_v_0;
    // Backward Enable generation
    assign SE_redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_0_backEN = ~ (SE_redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_0_v_s_0 = SE_redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_0_backEN & SE_stall_entry_V1;
    // Backward Stall generation
    assign SE_redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_0_backStall = ~ (SE_redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_0_backEN == 1'b0)
            begin
                SE_redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_0_R_v_0 <= SE_redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_0_R_v_0 & SE_redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_0_s_tv_0;
            end
            else
            begin
                SE_redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_0_R_v_0 <= SE_redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_0_v_s_0;
            end

        end
    end

    // i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer5_conv2d1x10(BLACKBOX,14)@6
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    conv2d1x1_i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer5_0 thei_llvm_fpga_sync_buffer_i32_input_size_sync_buffer5_conv2d1x10 (
        .in_buffer_in(in_input_size),
        .in_i_dependence(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer5_conv2d1x10_backStall),
        .in_valid_in(SE_out_bubble_out_stall_entry_1_V0),
        .out_buffer_out(i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer5_conv2d1x10_out_buffer_out),
        .out_stall_out(i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer5_conv2d1x10_out_stall_out),
        .out_valid_out(i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer5_conv2d1x10_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_bubble_out_stall_entry_1(STALLENABLE,154)
    // Valid signal propagation
    assign SE_out_bubble_out_stall_entry_1_V0 = SE_out_bubble_out_stall_entry_1_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_stall_entry_1_backStall = i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer5_conv2d1x10_out_stall_out | ~ (SE_out_bubble_out_stall_entry_1_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_stall_entry_1_wireValid = bubble_out_stall_entry_1_reg_valid_out;

    // bubble_out_stall_entry_1_reg(STALLFIFO,161)
    assign bubble_out_stall_entry_1_reg_valid_in = SE_stall_entry_V0;
    assign bubble_out_stall_entry_1_reg_stall_in = SE_out_bubble_out_stall_entry_1_backStall;
    assign bubble_out_stall_entry_1_reg_valid_in_bitsignaltemp = bubble_out_stall_entry_1_reg_valid_in[0];
    assign bubble_out_stall_entry_1_reg_stall_in_bitsignaltemp = bubble_out_stall_entry_1_reg_stall_in[0];
    assign bubble_out_stall_entry_1_reg_valid_out[0] = bubble_out_stall_entry_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_stall_entry_1_reg_stall_out[0] = bubble_out_stall_entry_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(7),
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
        end
        else
        begin
            // Successor 0
            SE_stall_entry_fromReg0 <= SE_stall_entry_toReg0;
            // Successor 1
            SE_stall_entry_fromReg1 <= SE_stall_entry_toReg1;
            // Successor 2
            SE_stall_entry_fromReg2 <= SE_stall_entry_toReg2;
        end
    end
    // Input Stall processing
    assign SE_stall_entry_consumed0 = (~ (bubble_out_stall_entry_1_reg_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg0;
    assign SE_stall_entry_consumed1 = (~ (SE_redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_0_backStall) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg1;
    assign SE_stall_entry_consumed2 = (~ (i_sfc_s_c0_in_for_cond_cleanup53_conv2d1x1s_c0_enter71_conv2d1x16_aunroll_x_out_o_stall) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg2;
    // Consuming
    assign SE_stall_entry_StallValid = SE_stall_entry_backStall & SE_stall_entry_wireValid;
    assign SE_stall_entry_toReg0 = SE_stall_entry_StallValid & SE_stall_entry_consumed0;
    assign SE_stall_entry_toReg1 = SE_stall_entry_StallValid & SE_stall_entry_consumed1;
    assign SE_stall_entry_toReg2 = SE_stall_entry_StallValid & SE_stall_entry_consumed2;
    // Backward Stall generation
    assign SE_stall_entry_or0 = SE_stall_entry_consumed0;
    assign SE_stall_entry_or1 = SE_stall_entry_consumed1 & SE_stall_entry_or0;
    assign SE_stall_entry_wireStall = ~ (SE_stall_entry_consumed2 & SE_stall_entry_or1);
    assign SE_stall_entry_backStall = SE_stall_entry_wireStall;
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg0);
    assign SE_stall_entry_V1 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg1);
    assign SE_stall_entry_V2 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg2);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // i_sfc_s_c0_in_for_cond_cleanup53_conv2d1x1s_c0_enter71_conv2d1x16_aunroll_x(BLACKBOX,42)@0
    // in in_i_stall@20000000
    // out out_o_stall@20000000
    // out out_o_valid@4
    // out out_c0_exit76_0_tpl@4
    // out out_c0_exit76_1_tpl@4
    conv2d1x1_i_sfc_s_c0_in_for_cond_cleanup00000_enter71_conv2d1x16 thei_sfc_s_c0_in_for_cond_cleanup53_conv2d1x1s_c0_enter71_conv2d1x16_aunroll_x (
        .in_i_stall(SE_out_i_sfc_s_c0_in_for_cond_cleanup53_conv2d1x1s_c0_enter71_conv2d1x16_aunroll_x_backStall),
        .in_i_valid(SE_stall_entry_V2),
        .in_c0_eni370_0_tpl(GND_q),
        .in_c0_eni370_1_tpl(bubble_select_stall_entry_i),
        .in_c0_eni370_2_tpl(bubble_select_stall_entry_l),
        .in_c0_eni370_3_tpl(bubble_select_stall_entry_o),
        .out_o_stall(i_sfc_s_c0_in_for_cond_cleanup53_conv2d1x1s_c0_enter71_conv2d1x16_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_for_cond_cleanup53_conv2d1x1s_c0_enter71_conv2d1x16_aunroll_x_out_o_valid),
        .out_c0_exit76_0_tpl(),
        .out_c0_exit76_1_tpl(i_sfc_s_c0_in_for_cond_cleanup53_conv2d1x1s_c0_enter71_conv2d1x16_aunroll_x_out_c0_exit76_1_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_sfc_s_c0_in_for_cond_cleanup53_conv2d1x1s_c0_enter71_conv2d1x16_aunroll_x(BITJOIN,98)
    assign bubble_join_i_sfc_s_c0_in_for_cond_cleanup53_conv2d1x1s_c0_enter71_conv2d1x16_aunroll_x_q = i_sfc_s_c0_in_for_cond_cleanup53_conv2d1x1s_c0_enter71_conv2d1x16_aunroll_x_out_c0_exit76_1_tpl;

    // bubble_select_i_sfc_s_c0_in_for_cond_cleanup53_conv2d1x1s_c0_enter71_conv2d1x16_aunroll_x(BITSELECT,99)
    assign bubble_select_i_sfc_s_c0_in_for_cond_cleanup53_conv2d1x1s_c0_enter71_conv2d1x16_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond_cleanup53_conv2d1x1s_c0_enter71_conv2d1x16_aunroll_x_q[31:0]);

    // SE_out_i_sfc_s_c0_in_for_cond_cleanup53_conv2d1x1s_c0_enter71_conv2d1x16_aunroll_x(STALLENABLE,116)
    // Valid signal propagation
    assign SE_out_i_sfc_s_c0_in_for_cond_cleanup53_conv2d1x1s_c0_enter71_conv2d1x16_aunroll_x_V0 = SE_out_i_sfc_s_c0_in_for_cond_cleanup53_conv2d1x1s_c0_enter71_conv2d1x16_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c0_in_for_cond_cleanup53_conv2d1x1s_c0_enter71_conv2d1x16_aunroll_x_backStall = i_llvm_fpga_mem_unnamed_conv2d1x17_conv2d1x112_out_o_stall | ~ (SE_out_i_sfc_s_c0_in_for_cond_cleanup53_conv2d1x1s_c0_enter71_conv2d1x16_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c0_in_for_cond_cleanup53_conv2d1x1s_c0_enter71_conv2d1x16_aunroll_x_and0 = i_sfc_s_c0_in_for_cond_cleanup53_conv2d1x1s_c0_enter71_conv2d1x16_aunroll_x_out_o_valid;
    assign SE_out_i_sfc_s_c0_in_for_cond_cleanup53_conv2d1x1s_c0_enter71_conv2d1x16_aunroll_x_wireValid = SE_redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_3_V1 & SE_out_i_sfc_s_c0_in_for_cond_cleanup53_conv2d1x1s_c0_enter71_conv2d1x16_aunroll_x_and0;

    // SE_out_i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer5_conv2d1x10(STALLENABLE,105)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer5_conv2d1x10_V0 = SE_out_i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer5_conv2d1x10_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer5_conv2d1x10_backStall = in_stall_in | ~ (SE_out_i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer5_conv2d1x10_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer5_conv2d1x10_and0 = i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer5_conv2d1x10_out_valid_out;
    assign SE_out_i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer5_conv2d1x10_and1 = SE_redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_5_V0 & SE_out_i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer5_conv2d1x10_and0;
    assign SE_out_i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer5_conv2d1x10_wireValid = i_llvm_fpga_mem_unnamed_conv2d1x17_conv2d1x112_out_o_valid & SE_out_i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer5_conv2d1x10_and1;

    // join_for_coalesced_delay_0(BITJOIN,61)
    assign join_for_coalesced_delay_0_q = {bubble_select_stall_entry_k, bubble_select_stall_entry_c, bubble_select_stall_entry_g};

    // coalesced_delay_0_0(REG,75)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_0_0_q <= $unsigned(97'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_0_backEN == 1'b1)
        begin
            coalesced_delay_0_0_q <= $unsigned(join_for_coalesced_delay_0_q);
        end
    end

    // coalesced_delay_0_1(REG,76)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_0_1_q <= $unsigned(97'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_1_backEN == 1'b1)
        begin
            coalesced_delay_0_1_q <= $unsigned(coalesced_delay_0_0_q);
        end
    end

    // coalesced_delay_0_2(REG,77)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_0_2_q <= $unsigned(97'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_2_backEN == 1'b1)
        begin
            coalesced_delay_0_2_q <= $unsigned(coalesced_delay_0_1_q);
        end
    end

    // coalesced_delay_0_3(REG,78)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_0_3_q <= $unsigned(97'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_3_backEN == 1'b1)
        begin
            coalesced_delay_0_3_q <= $unsigned(coalesced_delay_0_2_q);
        end
    end

    // sel_for_coalesced_delay_0(BITSELECT,62)
    assign sel_for_coalesced_delay_0_b = $unsigned(coalesced_delay_0_3_q[63:0]);
    assign sel_for_coalesced_delay_0_c = $unsigned(coalesced_delay_0_3_q[95:64]);
    assign sel_for_coalesced_delay_0_d = $unsigned(coalesced_delay_0_3_q[96:96]);

    // i_idxprom84_conv2d1x12_sel_x(BITSELECT,41)@4
    assign i_idxprom84_conv2d1x12_sel_x_b = $unsigned({{32{sel_for_coalesced_delay_0_c[31]}}, sel_for_coalesced_delay_0_c[31:0]});

    // i_arrayidx855_conv2d1x10_narrow_x(BITSELECT,37)@4
    assign i_arrayidx855_conv2d1x10_narrow_x_b = i_idxprom84_conv2d1x12_sel_x_b[61:0];

    // i_arrayidx855_conv2d1x10_c_i2_01_x(CONSTANT,36)
    assign i_arrayidx855_conv2d1x10_c_i2_01_x_q = $unsigned(2'b00);

    // i_arrayidx855_conv2d1x10_shift_join_x(BITJOIN,38)@4
    assign i_arrayidx855_conv2d1x10_shift_join_x_q = {i_arrayidx855_conv2d1x10_narrow_x_b, i_arrayidx855_conv2d1x10_c_i2_01_x_q};

    // i_arrayidx855_conv2d1x10_add_x(ADD,35)@4
    assign i_arrayidx855_conv2d1x10_add_x_a = {1'b0, sel_for_coalesced_delay_0_b};
    assign i_arrayidx855_conv2d1x10_add_x_b = {1'b0, i_arrayidx855_conv2d1x10_shift_join_x_q};
    assign i_arrayidx855_conv2d1x10_add_x_o = $unsigned(i_arrayidx855_conv2d1x10_add_x_a) + $unsigned(i_arrayidx855_conv2d1x10_add_x_b);
    assign i_arrayidx855_conv2d1x10_add_x_q = i_arrayidx855_conv2d1x10_add_x_o[64:0];

    // i_arrayidx855_conv2d1x10_dupName_0_trunc_sel_x(BITSELECT,40)@4
    assign i_arrayidx855_conv2d1x10_dupName_0_trunc_sel_x_b = i_arrayidx855_conv2d1x10_add_x_q[63:0];

    // i_llvm_fpga_mem_unnamed_conv2d1x17_conv2d1x112(BLACKBOX,13)@4
    // in in_i_stall@20000000
    // out out_lsu_unnamed_conv2d1x17_o_active@20000000
    // out out_o_stall@20000000
    // out out_o_valid@6
    // out out_unnamed_conv2d1x17_conv2d1x1_avm_address@20000000
    // out out_unnamed_conv2d1x17_conv2d1x1_avm_burstcount@20000000
    // out out_unnamed_conv2d1x17_conv2d1x1_avm_byteenable@20000000
    // out out_unnamed_conv2d1x17_conv2d1x1_avm_enable@20000000
    // out out_unnamed_conv2d1x17_conv2d1x1_avm_read@20000000
    // out out_unnamed_conv2d1x17_conv2d1x1_avm_write@20000000
    // out out_unnamed_conv2d1x17_conv2d1x1_avm_writedata@20000000
    conv2d1x1_i_llvm_fpga_mem_unnamed_7_conv2d1x10 thei_llvm_fpga_mem_unnamed_conv2d1x17_conv2d1x112 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx855_conv2d1x10_dupName_0_trunc_sel_x_b),
        .in_i_predicate(sel_for_coalesced_delay_0_d),
        .in_i_stall(SE_out_i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer5_conv2d1x10_backStall),
        .in_i_valid(SE_out_i_sfc_s_c0_in_for_cond_cleanup53_conv2d1x1s_c0_enter71_conv2d1x16_aunroll_x_V0),
        .in_i_writedata(bubble_select_i_sfc_s_c0_in_for_cond_cleanup53_conv2d1x1s_c0_enter71_conv2d1x16_aunroll_x_b),
        .in_unnamed_conv2d1x17_conv2d1x1_avm_readdata(in_unnamed_conv2d1x17_conv2d1x1_avm_readdata),
        .in_unnamed_conv2d1x17_conv2d1x1_avm_readdatavalid(in_unnamed_conv2d1x17_conv2d1x1_avm_readdatavalid),
        .in_unnamed_conv2d1x17_conv2d1x1_avm_waitrequest(in_unnamed_conv2d1x17_conv2d1x1_avm_waitrequest),
        .in_unnamed_conv2d1x17_conv2d1x1_avm_writeack(in_unnamed_conv2d1x17_conv2d1x1_avm_writeack),
        .out_lsu_unnamed_conv2d1x17_o_active(i_llvm_fpga_mem_unnamed_conv2d1x17_conv2d1x112_out_lsu_unnamed_conv2d1x17_o_active),
        .out_o_stall(i_llvm_fpga_mem_unnamed_conv2d1x17_conv2d1x112_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_unnamed_conv2d1x17_conv2d1x112_out_o_valid),
        .out_unnamed_conv2d1x17_conv2d1x1_avm_address(i_llvm_fpga_mem_unnamed_conv2d1x17_conv2d1x112_out_unnamed_conv2d1x17_conv2d1x1_avm_address),
        .out_unnamed_conv2d1x17_conv2d1x1_avm_burstcount(i_llvm_fpga_mem_unnamed_conv2d1x17_conv2d1x112_out_unnamed_conv2d1x17_conv2d1x1_avm_burstcount),
        .out_unnamed_conv2d1x17_conv2d1x1_avm_byteenable(i_llvm_fpga_mem_unnamed_conv2d1x17_conv2d1x112_out_unnamed_conv2d1x17_conv2d1x1_avm_byteenable),
        .out_unnamed_conv2d1x17_conv2d1x1_avm_enable(i_llvm_fpga_mem_unnamed_conv2d1x17_conv2d1x112_out_unnamed_conv2d1x17_conv2d1x1_avm_enable),
        .out_unnamed_conv2d1x17_conv2d1x1_avm_read(i_llvm_fpga_mem_unnamed_conv2d1x17_conv2d1x112_out_unnamed_conv2d1x17_conv2d1x1_avm_read),
        .out_unnamed_conv2d1x17_conv2d1x1_avm_write(i_llvm_fpga_mem_unnamed_conv2d1x17_conv2d1x112_out_unnamed_conv2d1x17_conv2d1x1_avm_write),
        .out_unnamed_conv2d1x17_conv2d1x1_avm_writedata(i_llvm_fpga_mem_unnamed_conv2d1x17_conv2d1x112_out_unnamed_conv2d1x17_conv2d1x1_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,8)
    assign out_unnamed_conv2d1x17_conv2d1x1_avm_address = i_llvm_fpga_mem_unnamed_conv2d1x17_conv2d1x112_out_unnamed_conv2d1x17_conv2d1x1_avm_address;
    assign out_unnamed_conv2d1x17_conv2d1x1_avm_enable = i_llvm_fpga_mem_unnamed_conv2d1x17_conv2d1x112_out_unnamed_conv2d1x17_conv2d1x1_avm_enable;
    assign out_unnamed_conv2d1x17_conv2d1x1_avm_read = i_llvm_fpga_mem_unnamed_conv2d1x17_conv2d1x112_out_unnamed_conv2d1x17_conv2d1x1_avm_read;
    assign out_unnamed_conv2d1x17_conv2d1x1_avm_write = i_llvm_fpga_mem_unnamed_conv2d1x17_conv2d1x112_out_unnamed_conv2d1x17_conv2d1x1_avm_write;
    assign out_unnamed_conv2d1x17_conv2d1x1_avm_writedata = i_llvm_fpga_mem_unnamed_conv2d1x17_conv2d1x112_out_unnamed_conv2d1x17_conv2d1x1_avm_writedata;
    assign out_unnamed_conv2d1x17_conv2d1x1_avm_byteenable = i_llvm_fpga_mem_unnamed_conv2d1x17_conv2d1x112_out_unnamed_conv2d1x17_conv2d1x1_avm_byteenable;
    assign out_unnamed_conv2d1x17_conv2d1x1_avm_burstcount = i_llvm_fpga_mem_unnamed_conv2d1x17_conv2d1x112_out_unnamed_conv2d1x17_conv2d1x1_avm_burstcount;

    // sync_out(GPOUT,30)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // dupName_0_ext_sig_sync_out_x(GPOUT,33)
    assign out_lsu_unnamed_conv2d1x17_o_active = i_llvm_fpga_mem_unnamed_conv2d1x17_conv2d1x112_out_lsu_unnamed_conv2d1x17_o_active;

    // bubble_join_i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer5_conv2d1x10(BITJOIN,89)
    assign bubble_join_i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer5_conv2d1x10_q = i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer5_conv2d1x10_out_buffer_out;

    // bubble_select_i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer5_conv2d1x10(BITSELECT,90)
    assign bubble_select_i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer5_conv2d1x10_b = $unsigned(bubble_join_i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer5_conv2d1x10_q[31:0]);

    // i_cmp_conv2d1x18(COMPARE,9)@6
    assign i_cmp_conv2d1x18_a = $unsigned({{2{redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_5_q[31]}}, redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_5_q});
    assign i_cmp_conv2d1x18_b = $unsigned({{2{bubble_select_i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer5_conv2d1x10_b[31]}}, bubble_select_i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer5_conv2d1x10_b});
    assign i_cmp_conv2d1x18_o = $unsigned($signed(i_cmp_conv2d1x18_a) - $signed(i_cmp_conv2d1x18_b));
    assign i_cmp_conv2d1x18_c[0] = i_cmp_conv2d1x18_o[33];

    // i_unnamed_conv2d1x111(LOGICAL,15)@6
    assign i_unnamed_conv2d1x111_q = sel_for_coalesced_delay_1_h & i_cmp_conv2d1x18_c;

    // redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_5(REG,74)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_5_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_5_backEN == 1'b1)
        begin
            redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_5_q <= $unsigned(SR_SE_redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_5_D0);
        end
    end

    // coalesced_delay_2_1(REG,86)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_2_1_q <= $unsigned(65'b00000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_5_backEN == 1'b1)
        begin
            coalesced_delay_2_1_q <= $unsigned(SR_SE_redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_5_D2);
        end
    end

    // sel_for_coalesced_delay_2(BITSELECT,68)
    assign sel_for_coalesced_delay_2_b = $unsigned(coalesced_delay_2_1_q[63:0]);
    assign sel_for_coalesced_delay_2_c = $unsigned(coalesced_delay_2_1_q[64:64]);

    // coalesced_delay_1_5(REG,84)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_1_5_q <= $unsigned(291'b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_5_backEN == 1'b1)
        begin
            coalesced_delay_1_5_q <= $unsigned(SR_SE_redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_5_D1);
        end
    end

    // sel_for_coalesced_delay_1(BITSELECT,65)
    assign sel_for_coalesced_delay_1_b = $unsigned(coalesced_delay_1_5_q[63:0]);
    assign sel_for_coalesced_delay_1_c = $unsigned(coalesced_delay_1_5_q[127:64]);
    assign sel_for_coalesced_delay_1_d = $unsigned(coalesced_delay_1_5_q[191:128]);
    assign sel_for_coalesced_delay_1_e = $unsigned(coalesced_delay_1_5_q[223:192]);
    assign sel_for_coalesced_delay_1_f = $unsigned(coalesced_delay_1_5_q[255:224]);
    assign sel_for_coalesced_delay_1_g = $unsigned(coalesced_delay_1_5_q[287:256]);
    assign sel_for_coalesced_delay_1_h = $unsigned(coalesced_delay_1_5_q[288:288]);
    assign sel_for_coalesced_delay_1_i = $unsigned(coalesced_delay_1_5_q[289:289]);
    assign sel_for_coalesced_delay_1_j = $unsigned(coalesced_delay_1_5_q[290:290]);

    // dupName_0_sync_out_x(GPOUT,34)@6
    assign out_acl_global_id_135 = sel_for_coalesced_delay_1_b;
    assign out_c0_exe17 = sel_for_coalesced_delay_1_c;
    assign out_c0_exe210 = sel_for_coalesced_delay_1_d;
    assign out_c0_exe413 = sel_for_coalesced_delay_1_e;
    assign out_c0_exe514 = sel_for_coalesced_delay_2_b;
    assign out_c0_exe617 = sel_for_coalesced_delay_1_h;
    assign out_c0_exe722 = sel_for_coalesced_delay_1_i;
    assign out_c0_exe825 = sel_for_coalesced_delay_1_j;
    assign out_c0_exe926 = sel_for_coalesced_delay_2_c;
    assign out_inc87 = redist0_bgTrunc_i_inc87_conv2d1x11_sel_x_b_6_5_q;
    assign out_l_grpid_03 = sel_for_coalesced_delay_1_f;
    assign out_unnamed_conv2d1x15 = sel_for_coalesced_delay_1_g;
    assign out_unnamed_conv2d1x16 = i_unnamed_conv2d1x111_q;
    assign out_valid_out = SE_out_i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer5_conv2d1x10_V0;

endmodule
