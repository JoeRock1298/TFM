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

// SystemVerilog created from conv2d3x3_bb_B12_stall_region
// SystemVerilog created on Tue Jun  6 18:48:20 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2d3x3_bb_B12_stall_region (
    input wire [31:0] in_input_size,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [63:0] in_c0_exe1092551,
    input wire [63:0] in_c0_exe1392852,
    input wire [31:0] in_c0_exe1492953,
    input wire [0:0] in_c0_exe1593054,
    input wire [31:0] in_c0_exe1693155,
    input wire [31:0] in_c0_exe1793256,
    input wire [0:0] in_c0_exe1893357,
    input wire [0:0] in_c0_exe1993458,
    input wire [31:0] in_c0_exe2093559,
    input wire [31:0] in_c0_exe2193660,
    input wire [0:0] in_c0_exe2293761,
    input wire [0:0] in_c0_exe2393862,
    input wire [0:0] in_c0_exe2493963,
    input wire [31:0] in_c0_exe2594064,
    input wire [31:0] in_c0_exe2694165,
    input wire [0:0] in_c0_exe2794266,
    input wire [31:0] in_c0_exe2894367,
    input wire [31:0] in_c0_exe291746,
    input wire [31:0] in_c0_exe2994468,
    input wire [31:0] in_c0_exe3094569,
    input wire [0:0] in_c0_exe3194670,
    input wire [63:0] in_c0_exe3394871,
    input wire [63:0] in_c0_exe3494972,
    input wire [31:0] in_c0_exe3595073,
    input wire [0:0] in_c0_exe3695174,
    input wire [31:0] in_c0_exe3795275,
    input wire [31:0] in_c0_exe3895376,
    input wire [31:0] in_c0_exe391847,
    input wire [0:0] in_c0_exe3995477,
    input wire [0:0] in_c0_exe4095578,
    input wire [31:0] in_c0_exe4195679,
    input wire [0:0] in_c0_exe4295780,
    input wire [0:0] in_c0_exe4395881,
    input wire [31:0] in_c0_exe4495982,
    input wire [0:0] in_c0_exe4596083,
    input wire [0:0] in_c0_exe4696184,
    input wire [0:0] in_c0_exe4796285,
    input wire [63:0] in_c0_exe4896386,
    input wire [63:0] in_c0_exe4996487,
    input wire [31:0] in_c0_exe5096588,
    input wire [0:0] in_c0_exe5196689,
    input wire [0:0] in_c0_exe592048,
    input wire [0:0] in_c0_exe692149,
    input wire [0:0] in_c0_exe892350,
    input wire [31:0] in_c1_exe198390,
    input wire [0:0] in_valid_in,
    output wire [31:0] out_add41_2,
    output wire [63:0] out_c0_exe1092551,
    output wire [63:0] out_c0_exe1392852,
    output wire [31:0] out_c0_exe1492953,
    output wire [0:0] out_c0_exe1593054,
    output wire [31:0] out_c0_exe1693155,
    output wire [31:0] out_c0_exe1793256,
    output wire [0:0] out_c0_exe1893357,
    output wire [31:0] out_c0_exe1991,
    output wire [0:0] out_c0_exe1993458,
    output wire [31:0] out_c0_exe2093559,
    output wire [31:0] out_c0_exe2193660,
    output wire [0:0] out_c0_exe2293761,
    output wire [0:0] out_c0_exe2393862,
    output wire [0:0] out_c0_exe2493963,
    output wire [31:0] out_c0_exe2594064,
    output wire [31:0] out_c0_exe2694165,
    output wire [0:0] out_c0_exe2794266,
    output wire [31:0] out_c0_exe2894367,
    output wire [31:0] out_c0_exe3094569,
    output wire [0:0] out_c0_exe3194670,
    output wire [63:0] out_c0_exe3394871,
    output wire [63:0] out_c0_exe3494972,
    output wire [31:0] out_c0_exe3595073,
    output wire [0:0] out_c0_exe3695174,
    output wire [31:0] out_c0_exe3795275,
    output wire [31:0] out_c0_exe3895376,
    output wire [31:0] out_c0_exe391847,
    output wire [0:0] out_c0_exe3995477,
    output wire [0:0] out_c0_exe4095578,
    output wire [31:0] out_c0_exe4195679,
    output wire [0:0] out_c0_exe4295780,
    output wire [0:0] out_c0_exe4395881,
    output wire [31:0] out_c0_exe4495982,
    output wire [0:0] out_c0_exe4596083,
    output wire [0:0] out_c0_exe4696184,
    output wire [0:0] out_c0_exe4796285,
    output wire [63:0] out_c0_exe4896386,
    output wire [63:0] out_c0_exe4996487,
    output wire [31:0] out_c0_exe5096588,
    output wire [0:0] out_c0_exe5196689,
    output wire [0:0] out_c0_exe592048,
    output wire [0:0] out_c0_exe692149,
    output wire [0:0] out_c0_exe892350,
    output wire [31:0] out_c1_exe198390,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [31:0] c_i32_65_q;
    wire [32:0] i_add41_2_conv2d3x30_a;
    wire [32:0] i_add41_2_conv2d3x30_b;
    logic [32:0] i_add41_2_conv2d3x30_o;
    wire [32:0] i_add41_2_conv2d3x30_q;
    wire [31:0] bgTrunc_i_add41_2_conv2d3x30_sel_x_b;
    wire [0:0] i_sfc_s_c0_in_for_cond_cleanup21_1_conv2d3x3s_c0_enter986_conv2d3x33_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_for_cond_cleanup21_1_conv2d3x3s_c0_enter986_conv2d3x33_aunroll_x_out_o_valid;
    wire [31:0] i_sfc_s_c0_in_for_cond_cleanup21_1_conv2d3x3s_c0_enter986_conv2d3x33_aunroll_x_out_c0_exit990_1_tpl;
    wire [947:0] join_for_coalesced_delay_0_q;
    wire [63:0] sel_for_coalesced_delay_0_b;
    wire [63:0] sel_for_coalesced_delay_0_c;
    wire [63:0] sel_for_coalesced_delay_0_d;
    wire [63:0] sel_for_coalesced_delay_0_e;
    wire [63:0] sel_for_coalesced_delay_0_f;
    wire [63:0] sel_for_coalesced_delay_0_g;
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
    wire [31:0] sel_for_coalesced_delay_0_x;
    wire [0:0] sel_for_coalesced_delay_0_y;
    wire [0:0] sel_for_coalesced_delay_0_z;
    wire [0:0] sel_for_coalesced_delay_0_aa;
    wire [0:0] sel_for_coalesced_delay_0_bb;
    wire [0:0] sel_for_coalesced_delay_0_cc;
    wire [0:0] sel_for_coalesced_delay_0_dd;
    wire [0:0] sel_for_coalesced_delay_0_ee;
    wire [0:0] sel_for_coalesced_delay_0_ff;
    wire [0:0] sel_for_coalesced_delay_0_gg;
    wire [0:0] sel_for_coalesced_delay_0_hh;
    wire [0:0] sel_for_coalesced_delay_0_ii;
    wire [0:0] sel_for_coalesced_delay_0_jj;
    wire [0:0] sel_for_coalesced_delay_0_kk;
    wire [0:0] sel_for_coalesced_delay_0_ll;
    wire [0:0] sel_for_coalesced_delay_0_mm;
    wire [0:0] sel_for_coalesced_delay_0_nn;
    wire [0:0] sel_for_coalesced_delay_0_oo;
    wire [0:0] sel_for_coalesced_delay_0_pp;
    wire [0:0] sel_for_coalesced_delay_0_qq;
    wire [0:0] sel_for_coalesced_delay_0_rr;
    reg [31:0] redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_0_q;
    reg [31:0] redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_1_q;
    reg [31:0] redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_2_q;
    reg [31:0] redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_3_q;
    reg [31:0] redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_4_q;
    reg [31:0] redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_5_q;
    reg [31:0] redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_6_q;
    reg [947:0] coalesced_delay_0_0_q;
    reg [947:0] coalesced_delay_0_1_q;
    reg [947:0] coalesced_delay_0_2_q;
    reg [947:0] coalesced_delay_0_3_q;
    reg [947:0] coalesced_delay_0_4_q;
    reg [947:0] coalesced_delay_0_5_q;
    reg [947:0] coalesced_delay_0_6_q;
    wire [1011:0] bubble_join_stall_entry_q;
    wire [63:0] bubble_select_stall_entry_b;
    wire [63:0] bubble_select_stall_entry_c;
    wire [31:0] bubble_select_stall_entry_d;
    wire [0:0] bubble_select_stall_entry_e;
    wire [31:0] bubble_select_stall_entry_f;
    wire [31:0] bubble_select_stall_entry_g;
    wire [0:0] bubble_select_stall_entry_h;
    wire [0:0] bubble_select_stall_entry_i;
    wire [31:0] bubble_select_stall_entry_j;
    wire [31:0] bubble_select_stall_entry_k;
    wire [0:0] bubble_select_stall_entry_l;
    wire [0:0] bubble_select_stall_entry_m;
    wire [0:0] bubble_select_stall_entry_n;
    wire [31:0] bubble_select_stall_entry_o;
    wire [31:0] bubble_select_stall_entry_p;
    wire [0:0] bubble_select_stall_entry_q;
    wire [31:0] bubble_select_stall_entry_r;
    wire [31:0] bubble_select_stall_entry_s;
    wire [31:0] bubble_select_stall_entry_t;
    wire [31:0] bubble_select_stall_entry_u;
    wire [0:0] bubble_select_stall_entry_v;
    wire [63:0] bubble_select_stall_entry_w;
    wire [63:0] bubble_select_stall_entry_x;
    wire [31:0] bubble_select_stall_entry_y;
    wire [0:0] bubble_select_stall_entry_z;
    wire [31:0] bubble_select_stall_entry_aa;
    wire [31:0] bubble_select_stall_entry_bb;
    wire [31:0] bubble_select_stall_entry_cc;
    wire [0:0] bubble_select_stall_entry_dd;
    wire [0:0] bubble_select_stall_entry_ee;
    wire [31:0] bubble_select_stall_entry_ff;
    wire [0:0] bubble_select_stall_entry_gg;
    wire [0:0] bubble_select_stall_entry_hh;
    wire [31:0] bubble_select_stall_entry_ii;
    wire [0:0] bubble_select_stall_entry_jj;
    wire [0:0] bubble_select_stall_entry_kk;
    wire [0:0] bubble_select_stall_entry_ll;
    wire [63:0] bubble_select_stall_entry_mm;
    wire [63:0] bubble_select_stall_entry_nn;
    wire [31:0] bubble_select_stall_entry_oo;
    wire [0:0] bubble_select_stall_entry_pp;
    wire [0:0] bubble_select_stall_entry_qq;
    wire [0:0] bubble_select_stall_entry_rr;
    wire [0:0] bubble_select_stall_entry_ss;
    wire [31:0] bubble_select_stall_entry_tt;
    wire [31:0] bubble_join_i_sfc_s_c0_in_for_cond_cleanup21_1_conv2d3x3s_c0_enter986_conv2d3x33_aunroll_x_q;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond_cleanup21_1_conv2d3x3s_c0_enter986_conv2d3x33_aunroll_x_b;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_wireStall;
    wire [0:0] SE_stall_entry_StallValid;
    wire [0:0] SE_stall_entry_toReg0;
    reg [0:0] SE_stall_entry_fromReg0;
    wire [0:0] SE_stall_entry_consumed0;
    wire [0:0] SE_stall_entry_toReg1;
    reg [0:0] SE_stall_entry_fromReg1;
    wire [0:0] SE_stall_entry_consumed1;
    wire [0:0] SE_stall_entry_or0;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_stall_entry_V1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond_cleanup21_1_conv2d3x3s_c0_enter986_conv2d3x33_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond_cleanup21_1_conv2d3x3s_c0_enter986_conv2d3x33_aunroll_x_and0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond_cleanup21_1_conv2d3x3s_c0_enter986_conv2d3x33_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond_cleanup21_1_conv2d3x3s_c0_enter986_conv2d3x33_aunroll_x_V0;
    reg [0:0] SE_redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_0_R_v_0;
    wire [0:0] SE_redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_0_v_s_0;
    wire [0:0] SE_redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_0_s_tv_0;
    wire [0:0] SE_redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_0_backEN;
    wire [0:0] SE_redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_0_backStall;
    wire [0:0] SE_redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_0_V0;
    reg [0:0] SE_redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_1_R_v_0;
    wire [0:0] SE_redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_1_v_s_0;
    wire [0:0] SE_redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_1_s_tv_0;
    wire [0:0] SE_redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_1_backEN;
    wire [0:0] SE_redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_1_backStall;
    wire [0:0] SE_redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_1_V0;
    reg [0:0] SE_redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_2_R_v_0;
    wire [0:0] SE_redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_2_v_s_0;
    wire [0:0] SE_redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_2_s_tv_0;
    wire [0:0] SE_redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_2_backEN;
    wire [0:0] SE_redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_2_backStall;
    wire [0:0] SE_redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_2_V0;
    reg [0:0] SE_redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_3_R_v_0;
    wire [0:0] SE_redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_3_v_s_0;
    wire [0:0] SE_redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_3_s_tv_0;
    wire [0:0] SE_redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_3_backEN;
    wire [0:0] SE_redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_3_backStall;
    wire [0:0] SE_redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_3_V0;
    reg [0:0] SE_redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_4_R_v_0;
    wire [0:0] SE_redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_4_v_s_0;
    wire [0:0] SE_redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_4_s_tv_0;
    wire [0:0] SE_redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_4_backEN;
    wire [0:0] SE_redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_4_backStall;
    wire [0:0] SE_redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_4_V0;
    reg [0:0] SE_redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_5_R_v_0;
    wire [0:0] SE_redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_5_v_s_0;
    wire [0:0] SE_redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_5_s_tv_0;
    wire [0:0] SE_redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_5_backEN;
    wire [0:0] SE_redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_5_backStall;
    wire [0:0] SE_redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_5_V0;
    reg [0:0] SE_redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_6_R_v_0;
    wire [0:0] SE_redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_6_v_s_0;
    wire [0:0] SE_redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_6_s_tv_0;
    wire [0:0] SE_redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_6_backEN;
    wire [0:0] SE_redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_6_backStall;
    wire [0:0] SE_redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_6_V0;
    wire [0:0] SR_SE_redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_5_i_valid;
    reg [0:0] SR_SE_redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_5_r_valid;
    reg [31:0] SR_SE_redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_5_r_data0;
    reg [947:0] SR_SE_redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_5_r_data1;
    wire [0:0] SR_SE_redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_5_backStall;
    wire [0:0] SR_SE_redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_5_V;
    wire [31:0] SR_SE_redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_5_D0;
    wire [947:0] SR_SE_redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_5_D1;


    // bubble_join_stall_entry(BITJOIN,82)
    assign bubble_join_stall_entry_q = {in_c1_exe198390, in_c0_exe892350, in_c0_exe692149, in_c0_exe592048, in_c0_exe5196689, in_c0_exe5096588, in_c0_exe4996487, in_c0_exe4896386, in_c0_exe4796285, in_c0_exe4696184, in_c0_exe4596083, in_c0_exe4495982, in_c0_exe4395881, in_c0_exe4295780, in_c0_exe4195679, in_c0_exe4095578, in_c0_exe3995477, in_c0_exe391847, in_c0_exe3895376, in_c0_exe3795275, in_c0_exe3695174, in_c0_exe3595073, in_c0_exe3494972, in_c0_exe3394871, in_c0_exe3194670, in_c0_exe3094569, in_c0_exe2994468, in_c0_exe291746, in_c0_exe2894367, in_c0_exe2794266, in_c0_exe2694165, in_c0_exe2594064, in_c0_exe2493963, in_c0_exe2393862, in_c0_exe2293761, in_c0_exe2193660, in_c0_exe2093559, in_c0_exe1993458, in_c0_exe1893357, in_c0_exe1793256, in_c0_exe1693155, in_c0_exe1593054, in_c0_exe1492953, in_c0_exe1392852, in_c0_exe1092551};

    // bubble_select_stall_entry(BITSELECT,83)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[63:0]);
    assign bubble_select_stall_entry_c = $unsigned(bubble_join_stall_entry_q[127:64]);
    assign bubble_select_stall_entry_d = $unsigned(bubble_join_stall_entry_q[159:128]);
    assign bubble_select_stall_entry_e = $unsigned(bubble_join_stall_entry_q[160:160]);
    assign bubble_select_stall_entry_f = $unsigned(bubble_join_stall_entry_q[192:161]);
    assign bubble_select_stall_entry_g = $unsigned(bubble_join_stall_entry_q[224:193]);
    assign bubble_select_stall_entry_h = $unsigned(bubble_join_stall_entry_q[225:225]);
    assign bubble_select_stall_entry_i = $unsigned(bubble_join_stall_entry_q[226:226]);
    assign bubble_select_stall_entry_j = $unsigned(bubble_join_stall_entry_q[258:227]);
    assign bubble_select_stall_entry_k = $unsigned(bubble_join_stall_entry_q[290:259]);
    assign bubble_select_stall_entry_l = $unsigned(bubble_join_stall_entry_q[291:291]);
    assign bubble_select_stall_entry_m = $unsigned(bubble_join_stall_entry_q[292:292]);
    assign bubble_select_stall_entry_n = $unsigned(bubble_join_stall_entry_q[293:293]);
    assign bubble_select_stall_entry_o = $unsigned(bubble_join_stall_entry_q[325:294]);
    assign bubble_select_stall_entry_p = $unsigned(bubble_join_stall_entry_q[357:326]);
    assign bubble_select_stall_entry_q = $unsigned(bubble_join_stall_entry_q[358:358]);
    assign bubble_select_stall_entry_r = $unsigned(bubble_join_stall_entry_q[390:359]);
    assign bubble_select_stall_entry_s = $unsigned(bubble_join_stall_entry_q[422:391]);
    assign bubble_select_stall_entry_t = $unsigned(bubble_join_stall_entry_q[454:423]);
    assign bubble_select_stall_entry_u = $unsigned(bubble_join_stall_entry_q[486:455]);
    assign bubble_select_stall_entry_v = $unsigned(bubble_join_stall_entry_q[487:487]);
    assign bubble_select_stall_entry_w = $unsigned(bubble_join_stall_entry_q[551:488]);
    assign bubble_select_stall_entry_x = $unsigned(bubble_join_stall_entry_q[615:552]);
    assign bubble_select_stall_entry_y = $unsigned(bubble_join_stall_entry_q[647:616]);
    assign bubble_select_stall_entry_z = $unsigned(bubble_join_stall_entry_q[648:648]);
    assign bubble_select_stall_entry_aa = $unsigned(bubble_join_stall_entry_q[680:649]);
    assign bubble_select_stall_entry_bb = $unsigned(bubble_join_stall_entry_q[712:681]);
    assign bubble_select_stall_entry_cc = $unsigned(bubble_join_stall_entry_q[744:713]);
    assign bubble_select_stall_entry_dd = $unsigned(bubble_join_stall_entry_q[745:745]);
    assign bubble_select_stall_entry_ee = $unsigned(bubble_join_stall_entry_q[746:746]);
    assign bubble_select_stall_entry_ff = $unsigned(bubble_join_stall_entry_q[778:747]);
    assign bubble_select_stall_entry_gg = $unsigned(bubble_join_stall_entry_q[779:779]);
    assign bubble_select_stall_entry_hh = $unsigned(bubble_join_stall_entry_q[780:780]);
    assign bubble_select_stall_entry_ii = $unsigned(bubble_join_stall_entry_q[812:781]);
    assign bubble_select_stall_entry_jj = $unsigned(bubble_join_stall_entry_q[813:813]);
    assign bubble_select_stall_entry_kk = $unsigned(bubble_join_stall_entry_q[814:814]);
    assign bubble_select_stall_entry_ll = $unsigned(bubble_join_stall_entry_q[815:815]);
    assign bubble_select_stall_entry_mm = $unsigned(bubble_join_stall_entry_q[879:816]);
    assign bubble_select_stall_entry_nn = $unsigned(bubble_join_stall_entry_q[943:880]);
    assign bubble_select_stall_entry_oo = $unsigned(bubble_join_stall_entry_q[975:944]);
    assign bubble_select_stall_entry_pp = $unsigned(bubble_join_stall_entry_q[976:976]);
    assign bubble_select_stall_entry_qq = $unsigned(bubble_join_stall_entry_q[977:977]);
    assign bubble_select_stall_entry_rr = $unsigned(bubble_join_stall_entry_q[978:978]);
    assign bubble_select_stall_entry_ss = $unsigned(bubble_join_stall_entry_q[979:979]);
    assign bubble_select_stall_entry_tt = $unsigned(bubble_join_stall_entry_q[1011:980]);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // SE_redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_1(STALLENABLE,98)
    // Valid signal propagation
    assign SE_redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_1_V0 = SE_redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_1_R_v_0;
    // Stall signal propagation
    assign SE_redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_1_s_tv_0 = SE_redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_2_backStall & SE_redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_1_R_v_0;
    // Backward Enable generation
    assign SE_redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_1_backEN = ~ (SE_redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_1_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_1_v_s_0 = SE_redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_1_backEN & SE_redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_0_V0;
    // Backward Stall generation
    assign SE_redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_1_backStall = ~ (SE_redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_1_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_1_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_1_backEN == 1'b0)
            begin
                SE_redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_1_R_v_0 <= SE_redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_1_R_v_0 & SE_redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_1_s_tv_0;
            end
            else
            begin
                SE_redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_1_R_v_0 <= SE_redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_1_v_s_0;
            end

        end
    end

    // SE_redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_2(STALLENABLE,99)
    // Valid signal propagation
    assign SE_redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_2_V0 = SE_redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_2_R_v_0;
    // Stall signal propagation
    assign SE_redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_2_s_tv_0 = SE_redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_3_backStall & SE_redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_2_R_v_0;
    // Backward Enable generation
    assign SE_redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_2_backEN = ~ (SE_redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_2_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_2_v_s_0 = SE_redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_2_backEN & SE_redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_1_V0;
    // Backward Stall generation
    assign SE_redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_2_backStall = ~ (SE_redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_2_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_2_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_2_backEN == 1'b0)
            begin
                SE_redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_2_R_v_0 <= SE_redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_2_R_v_0 & SE_redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_2_s_tv_0;
            end
            else
            begin
                SE_redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_2_R_v_0 <= SE_redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_2_v_s_0;
            end

        end
    end

    // SE_redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_3(STALLENABLE,100)
    // Valid signal propagation
    assign SE_redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_3_V0 = SE_redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_3_R_v_0;
    // Stall signal propagation
    assign SE_redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_3_s_tv_0 = SE_redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_4_backStall & SE_redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_3_R_v_0;
    // Backward Enable generation
    assign SE_redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_3_backEN = ~ (SE_redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_3_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_3_v_s_0 = SE_redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_3_backEN & SE_redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_2_V0;
    // Backward Stall generation
    assign SE_redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_3_backStall = ~ (SE_redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_3_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_3_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_3_backEN == 1'b0)
            begin
                SE_redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_3_R_v_0 <= SE_redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_3_R_v_0 & SE_redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_3_s_tv_0;
            end
            else
            begin
                SE_redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_3_R_v_0 <= SE_redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_3_v_s_0;
            end

        end
    end

    // join_for_coalesced_delay_0(BITJOIN,65)
    assign join_for_coalesced_delay_0_q = {bubble_select_stall_entry_l, bubble_select_stall_entry_m, bubble_select_stall_entry_n, bubble_select_stall_entry_dd, bubble_select_stall_entry_ee, bubble_select_stall_entry_i, bubble_select_stall_entry_gg, bubble_select_stall_entry_hh, bubble_select_stall_entry_h, bubble_select_stall_entry_z, bubble_select_stall_entry_kk, bubble_select_stall_entry_ll, bubble_select_stall_entry_v, bubble_select_stall_entry_e, bubble_select_stall_entry_pp, bubble_select_stall_entry_qq, bubble_select_stall_entry_rr, bubble_select_stall_entry_ss, bubble_select_stall_entry_q, bubble_select_stall_entry_jj, bubble_select_stall_entry_o, bubble_select_stall_entry_k, bubble_select_stall_entry_j, bubble_select_stall_entry_g, bubble_select_stall_entry_f, bubble_select_stall_entry_d, bubble_select_stall_entry_p, bubble_select_stall_entry_r, bubble_select_stall_entry_u, bubble_select_stall_entry_y, bubble_select_stall_entry_aa, bubble_select_stall_entry_bb, bubble_select_stall_entry_cc, bubble_select_stall_entry_ff, bubble_select_stall_entry_ii, bubble_select_stall_entry_oo, bubble_select_stall_entry_tt, bubble_select_stall_entry_w, bubble_select_stall_entry_x, bubble_select_stall_entry_mm, bubble_select_stall_entry_nn, bubble_select_stall_entry_b, bubble_select_stall_entry_c};

    // coalesced_delay_0_0(REG,74)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_0_0_q <= $unsigned(948'b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_0_backEN == 1'b1)
        begin
            coalesced_delay_0_0_q <= $unsigned(join_for_coalesced_delay_0_q);
        end
    end

    // coalesced_delay_0_1(REG,75)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_0_1_q <= $unsigned(948'b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_1_backEN == 1'b1)
        begin
            coalesced_delay_0_1_q <= $unsigned(coalesced_delay_0_0_q);
        end
    end

    // coalesced_delay_0_2(REG,76)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_0_2_q <= $unsigned(948'b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_2_backEN == 1'b1)
        begin
            coalesced_delay_0_2_q <= $unsigned(coalesced_delay_0_1_q);
        end
    end

    // coalesced_delay_0_3(REG,77)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_0_3_q <= $unsigned(948'b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_3_backEN == 1'b1)
        begin
            coalesced_delay_0_3_q <= $unsigned(coalesced_delay_0_2_q);
        end
    end

    // coalesced_delay_0_4(REG,78)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_0_4_q <= $unsigned(948'b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_4_backEN == 1'b1)
        begin
            coalesced_delay_0_4_q <= $unsigned(coalesced_delay_0_3_q);
        end
    end

    // c_i32_65(CONSTANT,4)
    assign c_i32_65_q = $unsigned(32'b00000000000000000000000000000110);

    // i_add41_2_conv2d3x30(ADD,7)@0
    assign i_add41_2_conv2d3x30_a = {1'b0, bubble_select_stall_entry_s};
    assign i_add41_2_conv2d3x30_b = {1'b0, c_i32_65_q};
    assign i_add41_2_conv2d3x30_o = $unsigned(i_add41_2_conv2d3x30_a) + $unsigned(i_add41_2_conv2d3x30_b);
    assign i_add41_2_conv2d3x30_q = i_add41_2_conv2d3x30_o[32:0];

    // bgTrunc_i_add41_2_conv2d3x30_sel_x(BITSELECT,16)@0
    assign bgTrunc_i_add41_2_conv2d3x30_sel_x_b = i_add41_2_conv2d3x30_q[31:0];

    // redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_0(REG,67)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_0_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_0_backEN == 1'b1)
        begin
            redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_0_q <= $unsigned(bgTrunc_i_add41_2_conv2d3x30_sel_x_b);
        end
    end

    // redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_1(REG,68)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_1_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_1_backEN == 1'b1)
        begin
            redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_1_q <= $unsigned(redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_0_q);
        end
    end

    // redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_2(REG,69)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_2_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_2_backEN == 1'b1)
        begin
            redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_2_q <= $unsigned(redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_1_q);
        end
    end

    // redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_3(REG,70)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_3_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_3_backEN == 1'b1)
        begin
            redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_3_q <= $unsigned(redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_2_q);
        end
    end

    // redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_4(REG,71)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_4_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_4_backEN == 1'b1)
        begin
            redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_4_q <= $unsigned(redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_3_q);
        end
    end

    // SE_redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_4(STALLENABLE,101)
    // Valid signal propagation
    assign SE_redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_4_V0 = SE_redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_4_R_v_0;
    // Stall signal propagation
    assign SE_redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_4_s_tv_0 = SR_SE_redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_5_backStall & SE_redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_4_R_v_0;
    // Backward Enable generation
    assign SE_redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_4_backEN = ~ (SE_redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_4_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_4_v_s_0 = SE_redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_4_backEN & SE_redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_3_V0;
    // Backward Stall generation
    assign SE_redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_4_backStall = ~ (SE_redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_4_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_4_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_4_backEN == 1'b0)
            begin
                SE_redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_4_R_v_0 <= SE_redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_4_R_v_0 & SE_redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_4_s_tv_0;
            end
            else
            begin
                SE_redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_4_R_v_0 <= SE_redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_4_v_s_0;
            end

        end
    end

    // SR_SE_redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_5(STALLREG,123)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_5_r_valid <= 1'b0;
            SR_SE_redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_5_r_data0 <= 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_5_r_data1 <= 948'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_5_r_valid <= SE_redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_5_backStall & (SR_SE_redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_5_r_valid | SR_SE_redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_5_i_valid);

            if (SR_SE_redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_5_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_5_r_data0 <= $unsigned(redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_4_q);
                SR_SE_redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_5_r_data1 <= $unsigned(coalesced_delay_0_4_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_5_i_valid = SE_redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_4_V0;
    // Stall signal propagation
    assign SR_SE_redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_5_backStall = SR_SE_redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_5_r_valid | ~ (SR_SE_redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_5_i_valid);

    // Valid
    assign SR_SE_redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_5_V = SR_SE_redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_5_r_valid == 1'b1 ? SR_SE_redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_5_r_valid : SR_SE_redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_5_i_valid;

    // Data0
    assign SR_SE_redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_5_D0 = SR_SE_redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_5_r_valid == 1'b1 ? SR_SE_redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_5_r_data0 : redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_4_q;
    // Data1
    assign SR_SE_redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_5_D1 = SR_SE_redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_5_r_valid == 1'b1 ? SR_SE_redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_5_r_data1 : coalesced_delay_0_4_q;

    // SE_redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_5(STALLENABLE,102)
    // Valid signal propagation
    assign SE_redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_5_V0 = SE_redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_5_R_v_0;
    // Stall signal propagation
    assign SE_redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_5_s_tv_0 = SE_redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_6_backStall & SE_redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_5_R_v_0;
    // Backward Enable generation
    assign SE_redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_5_backEN = ~ (SE_redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_5_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_5_v_s_0 = SE_redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_5_backEN & SR_SE_redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_5_V;
    // Backward Stall generation
    assign SE_redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_5_backStall = ~ (SE_redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_5_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_5_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_5_backEN == 1'b0)
            begin
                SE_redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_5_R_v_0 <= SE_redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_5_R_v_0 & SE_redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_5_s_tv_0;
            end
            else
            begin
                SE_redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_5_R_v_0 <= SE_redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_5_v_s_0;
            end

        end
    end

    // SE_redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_6(STALLENABLE,103)
    // Valid signal propagation
    assign SE_redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_6_V0 = SE_redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_6_R_v_0;
    // Stall signal propagation
    assign SE_redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_6_s_tv_0 = SE_out_i_sfc_s_c0_in_for_cond_cleanup21_1_conv2d3x3s_c0_enter986_conv2d3x33_aunroll_x_backStall & SE_redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_6_R_v_0;
    // Backward Enable generation
    assign SE_redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_6_backEN = ~ (SE_redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_6_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_6_v_s_0 = SE_redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_6_backEN & SE_redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_5_V0;
    // Backward Stall generation
    assign SE_redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_6_backStall = ~ (SE_redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_6_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_6_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_6_backEN == 1'b0)
            begin
                SE_redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_6_R_v_0 <= SE_redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_6_R_v_0 & SE_redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_6_s_tv_0;
            end
            else
            begin
                SE_redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_6_R_v_0 <= SE_redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_6_v_s_0;
            end

        end
    end

    // SE_out_i_sfc_s_c0_in_for_cond_cleanup21_1_conv2d3x3s_c0_enter986_conv2d3x33_aunroll_x(STALLENABLE,94)
    // Valid signal propagation
    assign SE_out_i_sfc_s_c0_in_for_cond_cleanup21_1_conv2d3x3s_c0_enter986_conv2d3x33_aunroll_x_V0 = SE_out_i_sfc_s_c0_in_for_cond_cleanup21_1_conv2d3x3s_c0_enter986_conv2d3x33_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c0_in_for_cond_cleanup21_1_conv2d3x3s_c0_enter986_conv2d3x33_aunroll_x_backStall = in_stall_in | ~ (SE_out_i_sfc_s_c0_in_for_cond_cleanup21_1_conv2d3x3s_c0_enter986_conv2d3x33_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c0_in_for_cond_cleanup21_1_conv2d3x3s_c0_enter986_conv2d3x33_aunroll_x_and0 = i_sfc_s_c0_in_for_cond_cleanup21_1_conv2d3x3s_c0_enter986_conv2d3x33_aunroll_x_out_o_valid;
    assign SE_out_i_sfc_s_c0_in_for_cond_cleanup21_1_conv2d3x3s_c0_enter986_conv2d3x33_aunroll_x_wireValid = SE_redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_6_V0 & SE_out_i_sfc_s_c0_in_for_cond_cleanup21_1_conv2d3x3s_c0_enter986_conv2d3x33_aunroll_x_and0;

    // i_sfc_s_c0_in_for_cond_cleanup21_1_conv2d3x3s_c0_enter986_conv2d3x33_aunroll_x(BLACKBOX,18)@0
    // in in_i_stall@20000000
    // out out_o_stall@20000000
    // out out_o_valid@7
    // out out_c0_exit990_0_tpl@7
    // out out_c0_exit990_1_tpl@7
    conv2d3x3_i_sfc_s_c0_in_for_cond_cleanup0000_enter986_conv2d3x33 thei_sfc_s_c0_in_for_cond_cleanup21_1_conv2d3x3s_c0_enter986_conv2d3x33_aunroll_x (
        .in_i_stall(SE_out_i_sfc_s_c0_in_for_cond_cleanup21_1_conv2d3x3s_c0_enter986_conv2d3x33_aunroll_x_backStall),
        .in_i_valid(SE_stall_entry_V1),
        .in_input_size(in_input_size),
        .in_c0_eni2985_0_tpl(GND_q),
        .in_c0_eni2985_1_tpl(bubble_select_stall_entry_k),
        .in_c0_eni2985_2_tpl(bubble_select_stall_entry_t),
        .out_o_stall(i_sfc_s_c0_in_for_cond_cleanup21_1_conv2d3x3s_c0_enter986_conv2d3x33_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_for_cond_cleanup21_1_conv2d3x3s_c0_enter986_conv2d3x33_aunroll_x_out_o_valid),
        .out_c0_exit990_0_tpl(),
        .out_c0_exit990_1_tpl(i_sfc_s_c0_in_for_cond_cleanup21_1_conv2d3x3s_c0_enter986_conv2d3x33_aunroll_x_out_c0_exit990_1_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_0(STALLENABLE,97)
    // Valid signal propagation
    assign SE_redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_0_V0 = SE_redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_0_R_v_0;
    // Stall signal propagation
    assign SE_redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_0_s_tv_0 = SE_redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_1_backStall & SE_redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_0_R_v_0;
    // Backward Enable generation
    assign SE_redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_0_backEN = ~ (SE_redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_0_v_s_0 = SE_redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_0_backEN & SE_stall_entry_V0;
    // Backward Stall generation
    assign SE_redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_0_backStall = ~ (SE_redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_0_backEN == 1'b0)
            begin
                SE_redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_0_R_v_0 <= SE_redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_0_R_v_0 & SE_redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_0_s_tv_0;
            end
            else
            begin
                SE_redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_0_R_v_0 <= SE_redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_0_v_s_0;
            end

        end
    end

    // SE_stall_entry(STALLENABLE,90)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_stall_entry_fromReg0 <= '0;
            SE_stall_entry_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_stall_entry_fromReg0 <= SE_stall_entry_toReg0;
            // Successor 1
            SE_stall_entry_fromReg1 <= SE_stall_entry_toReg1;
        end
    end
    // Input Stall processing
    assign SE_stall_entry_consumed0 = (~ (SE_redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_0_backStall) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg0;
    assign SE_stall_entry_consumed1 = (~ (i_sfc_s_c0_in_for_cond_cleanup21_1_conv2d3x3s_c0_enter986_conv2d3x33_aunroll_x_out_o_stall) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg1;
    // Consuming
    assign SE_stall_entry_StallValid = SE_stall_entry_backStall & SE_stall_entry_wireValid;
    assign SE_stall_entry_toReg0 = SE_stall_entry_StallValid & SE_stall_entry_consumed0;
    assign SE_stall_entry_toReg1 = SE_stall_entry_StallValid & SE_stall_entry_consumed1;
    // Backward Stall generation
    assign SE_stall_entry_or0 = SE_stall_entry_consumed0;
    assign SE_stall_entry_wireStall = ~ (SE_stall_entry_consumed1 & SE_stall_entry_or0);
    assign SE_stall_entry_backStall = SE_stall_entry_wireStall;
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg0);
    assign SE_stall_entry_V1 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg1);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // sync_out(GPOUT,14)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // bubble_join_i_sfc_s_c0_in_for_cond_cleanup21_1_conv2d3x3s_c0_enter986_conv2d3x33_aunroll_x(BITJOIN,86)
    assign bubble_join_i_sfc_s_c0_in_for_cond_cleanup21_1_conv2d3x3s_c0_enter986_conv2d3x33_aunroll_x_q = i_sfc_s_c0_in_for_cond_cleanup21_1_conv2d3x3s_c0_enter986_conv2d3x33_aunroll_x_out_c0_exit990_1_tpl;

    // bubble_select_i_sfc_s_c0_in_for_cond_cleanup21_1_conv2d3x3s_c0_enter986_conv2d3x33_aunroll_x(BITSELECT,87)
    assign bubble_select_i_sfc_s_c0_in_for_cond_cleanup21_1_conv2d3x3s_c0_enter986_conv2d3x33_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond_cleanup21_1_conv2d3x3s_c0_enter986_conv2d3x33_aunroll_x_q[31:0]);

    // coalesced_delay_0_5(REG,79)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_0_5_q <= $unsigned(948'b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_5_backEN == 1'b1)
        begin
            coalesced_delay_0_5_q <= $unsigned(SR_SE_redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_5_D1);
        end
    end

    // coalesced_delay_0_6(REG,80)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_0_6_q <= $unsigned(948'b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_6_backEN == 1'b1)
        begin
            coalesced_delay_0_6_q <= $unsigned(coalesced_delay_0_5_q);
        end
    end

    // sel_for_coalesced_delay_0(BITSELECT,66)
    assign sel_for_coalesced_delay_0_b = $unsigned(coalesced_delay_0_6_q[63:0]);
    assign sel_for_coalesced_delay_0_c = $unsigned(coalesced_delay_0_6_q[127:64]);
    assign sel_for_coalesced_delay_0_d = $unsigned(coalesced_delay_0_6_q[191:128]);
    assign sel_for_coalesced_delay_0_e = $unsigned(coalesced_delay_0_6_q[255:192]);
    assign sel_for_coalesced_delay_0_f = $unsigned(coalesced_delay_0_6_q[319:256]);
    assign sel_for_coalesced_delay_0_g = $unsigned(coalesced_delay_0_6_q[383:320]);
    assign sel_for_coalesced_delay_0_h = $unsigned(coalesced_delay_0_6_q[415:384]);
    assign sel_for_coalesced_delay_0_i = $unsigned(coalesced_delay_0_6_q[447:416]);
    assign sel_for_coalesced_delay_0_j = $unsigned(coalesced_delay_0_6_q[479:448]);
    assign sel_for_coalesced_delay_0_k = $unsigned(coalesced_delay_0_6_q[511:480]);
    assign sel_for_coalesced_delay_0_l = $unsigned(coalesced_delay_0_6_q[543:512]);
    assign sel_for_coalesced_delay_0_m = $unsigned(coalesced_delay_0_6_q[575:544]);
    assign sel_for_coalesced_delay_0_n = $unsigned(coalesced_delay_0_6_q[607:576]);
    assign sel_for_coalesced_delay_0_o = $unsigned(coalesced_delay_0_6_q[639:608]);
    assign sel_for_coalesced_delay_0_p = $unsigned(coalesced_delay_0_6_q[671:640]);
    assign sel_for_coalesced_delay_0_q = $unsigned(coalesced_delay_0_6_q[703:672]);
    assign sel_for_coalesced_delay_0_r = $unsigned(coalesced_delay_0_6_q[735:704]);
    assign sel_for_coalesced_delay_0_s = $unsigned(coalesced_delay_0_6_q[767:736]);
    assign sel_for_coalesced_delay_0_t = $unsigned(coalesced_delay_0_6_q[799:768]);
    assign sel_for_coalesced_delay_0_u = $unsigned(coalesced_delay_0_6_q[831:800]);
    assign sel_for_coalesced_delay_0_v = $unsigned(coalesced_delay_0_6_q[863:832]);
    assign sel_for_coalesced_delay_0_w = $unsigned(coalesced_delay_0_6_q[895:864]);
    assign sel_for_coalesced_delay_0_x = $unsigned(coalesced_delay_0_6_q[927:896]);
    assign sel_for_coalesced_delay_0_y = $unsigned(coalesced_delay_0_6_q[928:928]);
    assign sel_for_coalesced_delay_0_z = $unsigned(coalesced_delay_0_6_q[929:929]);
    assign sel_for_coalesced_delay_0_aa = $unsigned(coalesced_delay_0_6_q[930:930]);
    assign sel_for_coalesced_delay_0_bb = $unsigned(coalesced_delay_0_6_q[931:931]);
    assign sel_for_coalesced_delay_0_cc = $unsigned(coalesced_delay_0_6_q[932:932]);
    assign sel_for_coalesced_delay_0_dd = $unsigned(coalesced_delay_0_6_q[933:933]);
    assign sel_for_coalesced_delay_0_ee = $unsigned(coalesced_delay_0_6_q[934:934]);
    assign sel_for_coalesced_delay_0_ff = $unsigned(coalesced_delay_0_6_q[935:935]);
    assign sel_for_coalesced_delay_0_gg = $unsigned(coalesced_delay_0_6_q[936:936]);
    assign sel_for_coalesced_delay_0_hh = $unsigned(coalesced_delay_0_6_q[937:937]);
    assign sel_for_coalesced_delay_0_ii = $unsigned(coalesced_delay_0_6_q[938:938]);
    assign sel_for_coalesced_delay_0_jj = $unsigned(coalesced_delay_0_6_q[939:939]);
    assign sel_for_coalesced_delay_0_kk = $unsigned(coalesced_delay_0_6_q[940:940]);
    assign sel_for_coalesced_delay_0_ll = $unsigned(coalesced_delay_0_6_q[941:941]);
    assign sel_for_coalesced_delay_0_mm = $unsigned(coalesced_delay_0_6_q[942:942]);
    assign sel_for_coalesced_delay_0_nn = $unsigned(coalesced_delay_0_6_q[943:943]);
    assign sel_for_coalesced_delay_0_oo = $unsigned(coalesced_delay_0_6_q[944:944]);
    assign sel_for_coalesced_delay_0_pp = $unsigned(coalesced_delay_0_6_q[945:945]);
    assign sel_for_coalesced_delay_0_qq = $unsigned(coalesced_delay_0_6_q[946:946]);
    assign sel_for_coalesced_delay_0_rr = $unsigned(coalesced_delay_0_6_q[947:947]);

    // redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_5(REG,72)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_5_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_5_backEN == 1'b1)
        begin
            redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_5_q <= $unsigned(SR_SE_redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_5_D0);
        end
    end

    // redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_6(REG,73)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_6_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_6_backEN == 1'b1)
        begin
            redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_6_q <= $unsigned(redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_5_q);
        end
    end

    // dupName_0_sync_out_x(GPOUT,17)@7
    assign out_add41_2 = redist0_bgTrunc_i_add41_2_conv2d3x30_sel_x_b_7_6_q;
    assign out_c0_exe1092551 = sel_for_coalesced_delay_0_c;
    assign out_c0_exe1392852 = sel_for_coalesced_delay_0_b;
    assign out_c0_exe1492953 = sel_for_coalesced_delay_0_s;
    assign out_c0_exe1593054 = sel_for_coalesced_delay_0_ee;
    assign out_c0_exe1693155 = sel_for_coalesced_delay_0_t;
    assign out_c0_exe1793256 = sel_for_coalesced_delay_0_u;
    assign out_c0_exe1893357 = sel_for_coalesced_delay_0_jj;
    assign out_c0_exe1991 = bubble_select_i_sfc_s_c0_in_for_cond_cleanup21_1_conv2d3x3s_c0_enter986_conv2d3x33_aunroll_x_b;
    assign out_c0_exe1993458 = sel_for_coalesced_delay_0_mm;
    assign out_c0_exe2093559 = sel_for_coalesced_delay_0_v;
    assign out_c0_exe2193660 = sel_for_coalesced_delay_0_w;
    assign out_c0_exe2293761 = sel_for_coalesced_delay_0_rr;
    assign out_c0_exe2393862 = sel_for_coalesced_delay_0_qq;
    assign out_c0_exe2493963 = sel_for_coalesced_delay_0_pp;
    assign out_c0_exe2594064 = sel_for_coalesced_delay_0_x;
    assign out_c0_exe2694165 = sel_for_coalesced_delay_0_r;
    assign out_c0_exe2794266 = sel_for_coalesced_delay_0_z;
    assign out_c0_exe2894367 = sel_for_coalesced_delay_0_q;
    assign out_c0_exe3094569 = sel_for_coalesced_delay_0_p;
    assign out_c0_exe3194670 = sel_for_coalesced_delay_0_ff;
    assign out_c0_exe3394871 = sel_for_coalesced_delay_0_g;
    assign out_c0_exe3494972 = sel_for_coalesced_delay_0_f;
    assign out_c0_exe3595073 = sel_for_coalesced_delay_0_o;
    assign out_c0_exe3695174 = sel_for_coalesced_delay_0_ii;
    assign out_c0_exe3795275 = sel_for_coalesced_delay_0_n;
    assign out_c0_exe3895376 = sel_for_coalesced_delay_0_m;
    assign out_c0_exe391847 = sel_for_coalesced_delay_0_l;
    assign out_c0_exe3995477 = sel_for_coalesced_delay_0_oo;
    assign out_c0_exe4095578 = sel_for_coalesced_delay_0_nn;
    assign out_c0_exe4195679 = sel_for_coalesced_delay_0_k;
    assign out_c0_exe4295780 = sel_for_coalesced_delay_0_ll;
    assign out_c0_exe4395881 = sel_for_coalesced_delay_0_kk;
    assign out_c0_exe4495982 = sel_for_coalesced_delay_0_j;
    assign out_c0_exe4596083 = sel_for_coalesced_delay_0_y;
    assign out_c0_exe4696184 = sel_for_coalesced_delay_0_hh;
    assign out_c0_exe4796285 = sel_for_coalesced_delay_0_gg;
    assign out_c0_exe4896386 = sel_for_coalesced_delay_0_e;
    assign out_c0_exe4996487 = sel_for_coalesced_delay_0_d;
    assign out_c0_exe5096588 = sel_for_coalesced_delay_0_i;
    assign out_c0_exe5196689 = sel_for_coalesced_delay_0_dd;
    assign out_c0_exe592048 = sel_for_coalesced_delay_0_cc;
    assign out_c0_exe692149 = sel_for_coalesced_delay_0_bb;
    assign out_c0_exe892350 = sel_for_coalesced_delay_0_aa;
    assign out_c1_exe198390 = sel_for_coalesced_delay_0_h;
    assign out_valid_out = SE_out_i_sfc_s_c0_in_for_cond_cleanup21_1_conv2d3x3s_c0_enter986_conv2d3x33_aunroll_x_V0;

endmodule
