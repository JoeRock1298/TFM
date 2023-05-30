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

// SystemVerilog created from conv2d3x3_bb_B9_stall_region
// SystemVerilog created on Tue May 30 12:33:16 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2d3x3_bb_B9_stall_region (
    input wire [31:0] in_input_size,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_c0_exe117418,
    input wire [63:0] in_c0_exe137439,
    input wire [63:0] in_c0_exe1674610,
    input wire [31:0] in_c0_exe1774711,
    input wire [0:0] in_c0_exe1874812,
    input wire [31:0] in_c0_exe1974913,
    input wire [31:0] in_c0_exe2075014,
    input wire [31:0] in_c0_exe2175115,
    input wire [0:0] in_c0_exe2275216,
    input wire [0:0] in_c0_exe2375317,
    input wire [31:0] in_c0_exe2475418,
    input wire [0:0] in_c0_exe2575519,
    input wire [0:0] in_c0_exe2675620,
    input wire [31:0] in_c0_exe27321,
    input wire [0:0] in_c0_exe2775721,
    input wire [0:0] in_c0_exe2875822,
    input wire [31:0] in_c0_exe2975923,
    input wire [31:0] in_c0_exe3076024,
    input wire [0:0] in_c0_exe3176125,
    input wire [63:0] in_c0_exe3376326,
    input wire [63:0] in_c0_exe3476427,
    input wire [31:0] in_c0_exe3576528,
    input wire [0:0] in_c0_exe3676629,
    input wire [31:0] in_c0_exe37332,
    input wire [31:0] in_c0_exe3776730,
    input wire [31:0] in_c0_exe3876831,
    input wire [0:0] in_c0_exe3976932,
    input wire [0:0] in_c0_exe4033,
    input wire [31:0] in_c0_exe4134,
    input wire [0:0] in_c0_exe4235,
    input wire [0:0] in_c0_exe4336,
    input wire [31:0] in_c0_exe4437,
    input wire [0:0] in_c0_exe4538,
    input wire [0:0] in_c0_exe4639,
    input wire [31:0] in_c0_exe47343,
    input wire [0:0] in_c0_exe4740,
    input wire [63:0] in_c0_exe4841,
    input wire [63:0] in_c0_exe4942,
    input wire [31:0] in_c0_exe5043,
    input wire [0:0] in_c0_exe5144,
    input wire [31:0] in_c0_exe57354,
    input wire [31:0] in_c0_exe67365,
    input wire [0:0] in_c0_exe87386,
    input wire [0:0] in_c0_exe97397,
    input wire [31:0] in_c1_exe145,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_c0_exe117418,
    output wire [63:0] out_c0_exe137439,
    output wire [31:0] out_c0_exe1649,
    output wire [63:0] out_c0_exe1674610,
    output wire [31:0] out_c0_exe1774711,
    output wire [0:0] out_c0_exe1874812,
    output wire [31:0] out_c0_exe1974913,
    output wire [31:0] out_c0_exe2075014,
    output wire [31:0] out_c0_exe2175115,
    output wire [0:0] out_c0_exe2275216,
    output wire [0:0] out_c0_exe2375317,
    output wire [31:0] out_c0_exe2475418,
    output wire [0:0] out_c0_exe2575519,
    output wire [0:0] out_c0_exe2675620,
    output wire [31:0] out_c0_exe27321,
    output wire [0:0] out_c0_exe2775721,
    output wire [0:0] out_c0_exe2875822,
    output wire [31:0] out_c0_exe2975923,
    output wire [31:0] out_c0_exe3076024,
    output wire [0:0] out_c0_exe3176125,
    output wire [63:0] out_c0_exe3376326,
    output wire [63:0] out_c0_exe3476427,
    output wire [31:0] out_c0_exe3576528,
    output wire [0:0] out_c0_exe3676629,
    output wire [31:0] out_c0_exe37332,
    output wire [31:0] out_c0_exe3776730,
    output wire [31:0] out_c0_exe3876831,
    output wire [0:0] out_c0_exe3976932,
    output wire [0:0] out_c0_exe4033,
    output wire [31:0] out_c0_exe4134,
    output wire [0:0] out_c0_exe4235,
    output wire [0:0] out_c0_exe4336,
    output wire [31:0] out_c0_exe4437,
    output wire [0:0] out_c0_exe4538,
    output wire [0:0] out_c0_exe4639,
    output wire [31:0] out_c0_exe47343,
    output wire [0:0] out_c0_exe4740,
    output wire [63:0] out_c0_exe4841,
    output wire [63:0] out_c0_exe4942,
    output wire [31:0] out_c0_exe5043,
    output wire [0:0] out_c0_exe5144,
    output wire [31:0] out_c0_exe57354,
    output wire [31:0] out_c0_exe67365,
    output wire [0:0] out_c0_exe87386,
    output wire [0:0] out_c0_exe97397,
    output wire [31:0] out_c1_exe145,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] i_sfc_s_c0_in_for_cond_cleanup21_conv2d3x3s_c0_enter644_conv2d3x32_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_for_cond_cleanup21_conv2d3x3s_c0_enter644_conv2d3x32_aunroll_x_out_o_valid;
    wire [31:0] i_sfc_s_c0_in_for_cond_cleanup21_conv2d3x3s_c0_enter644_conv2d3x32_aunroll_x_out_c0_exit648_1_tpl;
    wire [1011:0] join_for_coalesced_delay_0_q;
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
    wire [31:0] sel_for_coalesced_delay_0_y;
    wire [31:0] sel_for_coalesced_delay_0_z;
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
    wire [0:0] sel_for_coalesced_delay_0_ss;
    wire [0:0] sel_for_coalesced_delay_0_tt;
    reg [1011:0] coalesced_delay_0_0_q;
    reg [1011:0] coalesced_delay_0_1_q;
    reg [1011:0] coalesced_delay_0_2_q;
    reg [1011:0] coalesced_delay_0_3_q;
    reg [1011:0] coalesced_delay_0_4_q;
    reg [1011:0] coalesced_delay_0_5_q;
    reg [1011:0] coalesced_delay_0_6_q;
    wire [1011:0] bubble_join_stall_entry_q;
    wire [0:0] bubble_select_stall_entry_b;
    wire [63:0] bubble_select_stall_entry_c;
    wire [63:0] bubble_select_stall_entry_d;
    wire [31:0] bubble_select_stall_entry_e;
    wire [0:0] bubble_select_stall_entry_f;
    wire [31:0] bubble_select_stall_entry_g;
    wire [31:0] bubble_select_stall_entry_h;
    wire [31:0] bubble_select_stall_entry_i;
    wire [0:0] bubble_select_stall_entry_j;
    wire [0:0] bubble_select_stall_entry_k;
    wire [31:0] bubble_select_stall_entry_l;
    wire [0:0] bubble_select_stall_entry_m;
    wire [0:0] bubble_select_stall_entry_n;
    wire [31:0] bubble_select_stall_entry_o;
    wire [0:0] bubble_select_stall_entry_p;
    wire [0:0] bubble_select_stall_entry_q;
    wire [31:0] bubble_select_stall_entry_r;
    wire [31:0] bubble_select_stall_entry_s;
    wire [0:0] bubble_select_stall_entry_t;
    wire [63:0] bubble_select_stall_entry_u;
    wire [63:0] bubble_select_stall_entry_v;
    wire [31:0] bubble_select_stall_entry_w;
    wire [0:0] bubble_select_stall_entry_x;
    wire [31:0] bubble_select_stall_entry_y;
    wire [31:0] bubble_select_stall_entry_z;
    wire [31:0] bubble_select_stall_entry_aa;
    wire [0:0] bubble_select_stall_entry_bb;
    wire [0:0] bubble_select_stall_entry_cc;
    wire [31:0] bubble_select_stall_entry_dd;
    wire [0:0] bubble_select_stall_entry_ee;
    wire [0:0] bubble_select_stall_entry_ff;
    wire [31:0] bubble_select_stall_entry_gg;
    wire [0:0] bubble_select_stall_entry_hh;
    wire [0:0] bubble_select_stall_entry_ii;
    wire [31:0] bubble_select_stall_entry_jj;
    wire [0:0] bubble_select_stall_entry_kk;
    wire [63:0] bubble_select_stall_entry_ll;
    wire [63:0] bubble_select_stall_entry_mm;
    wire [31:0] bubble_select_stall_entry_nn;
    wire [0:0] bubble_select_stall_entry_oo;
    wire [31:0] bubble_select_stall_entry_pp;
    wire [31:0] bubble_select_stall_entry_qq;
    wire [0:0] bubble_select_stall_entry_rr;
    wire [0:0] bubble_select_stall_entry_ss;
    wire [31:0] bubble_select_stall_entry_tt;
    wire [31:0] bubble_join_i_sfc_s_c0_in_for_cond_cleanup21_conv2d3x3s_c0_enter644_conv2d3x32_aunroll_x_q;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond_cleanup21_conv2d3x3s_c0_enter644_conv2d3x32_aunroll_x_b;
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
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond_cleanup21_conv2d3x3s_c0_enter644_conv2d3x32_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond_cleanup21_conv2d3x3s_c0_enter644_conv2d3x32_aunroll_x_and0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond_cleanup21_conv2d3x3s_c0_enter644_conv2d3x32_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond_cleanup21_conv2d3x3s_c0_enter644_conv2d3x32_aunroll_x_V0;
    reg [0:0] SE_coalesced_delay_0_0_R_v_0;
    wire [0:0] SE_coalesced_delay_0_0_v_s_0;
    wire [0:0] SE_coalesced_delay_0_0_s_tv_0;
    wire [0:0] SE_coalesced_delay_0_0_backEN;
    wire [0:0] SE_coalesced_delay_0_0_backStall;
    wire [0:0] SE_coalesced_delay_0_0_V0;
    reg [0:0] SE_coalesced_delay_0_1_R_v_0;
    wire [0:0] SE_coalesced_delay_0_1_v_s_0;
    wire [0:0] SE_coalesced_delay_0_1_s_tv_0;
    wire [0:0] SE_coalesced_delay_0_1_backEN;
    wire [0:0] SE_coalesced_delay_0_1_backStall;
    wire [0:0] SE_coalesced_delay_0_1_V0;
    reg [0:0] SE_coalesced_delay_0_2_R_v_0;
    wire [0:0] SE_coalesced_delay_0_2_v_s_0;
    wire [0:0] SE_coalesced_delay_0_2_s_tv_0;
    wire [0:0] SE_coalesced_delay_0_2_backEN;
    wire [0:0] SE_coalesced_delay_0_2_backStall;
    wire [0:0] SE_coalesced_delay_0_2_V0;
    reg [0:0] SE_coalesced_delay_0_3_R_v_0;
    wire [0:0] SE_coalesced_delay_0_3_v_s_0;
    wire [0:0] SE_coalesced_delay_0_3_s_tv_0;
    wire [0:0] SE_coalesced_delay_0_3_backEN;
    wire [0:0] SE_coalesced_delay_0_3_backStall;
    wire [0:0] SE_coalesced_delay_0_3_V0;
    reg [0:0] SE_coalesced_delay_0_4_R_v_0;
    wire [0:0] SE_coalesced_delay_0_4_v_s_0;
    wire [0:0] SE_coalesced_delay_0_4_s_tv_0;
    wire [0:0] SE_coalesced_delay_0_4_backEN;
    wire [0:0] SE_coalesced_delay_0_4_backStall;
    wire [0:0] SE_coalesced_delay_0_4_V0;
    reg [0:0] SE_coalesced_delay_0_5_R_v_0;
    wire [0:0] SE_coalesced_delay_0_5_v_s_0;
    wire [0:0] SE_coalesced_delay_0_5_s_tv_0;
    wire [0:0] SE_coalesced_delay_0_5_backEN;
    wire [0:0] SE_coalesced_delay_0_5_backStall;
    wire [0:0] SE_coalesced_delay_0_5_V0;
    reg [0:0] SE_coalesced_delay_0_6_R_v_0;
    wire [0:0] SE_coalesced_delay_0_6_v_s_0;
    wire [0:0] SE_coalesced_delay_0_6_s_tv_0;
    wire [0:0] SE_coalesced_delay_0_6_backEN;
    wire [0:0] SE_coalesced_delay_0_6_backStall;
    wire [0:0] SE_coalesced_delay_0_6_V0;
    wire [0:0] SR_SE_coalesced_delay_0_5_i_valid;
    reg [0:0] SR_SE_coalesced_delay_0_5_r_valid;
    reg [1011:0] SR_SE_coalesced_delay_0_5_r_data0;
    wire [0:0] SR_SE_coalesced_delay_0_5_backStall;
    wire [0:0] SR_SE_coalesced_delay_0_5_V;
    wire [1011:0] SR_SE_coalesced_delay_0_5_D0;


    // bubble_join_stall_entry(BITJOIN,71)
    assign bubble_join_stall_entry_q = {in_c1_exe145, in_c0_exe97397, in_c0_exe87386, in_c0_exe67365, in_c0_exe57354, in_c0_exe5144, in_c0_exe5043, in_c0_exe4942, in_c0_exe4841, in_c0_exe4740, in_c0_exe47343, in_c0_exe4639, in_c0_exe4538, in_c0_exe4437, in_c0_exe4336, in_c0_exe4235, in_c0_exe4134, in_c0_exe4033, in_c0_exe3976932, in_c0_exe3876831, in_c0_exe3776730, in_c0_exe37332, in_c0_exe3676629, in_c0_exe3576528, in_c0_exe3476427, in_c0_exe3376326, in_c0_exe3176125, in_c0_exe3076024, in_c0_exe2975923, in_c0_exe2875822, in_c0_exe2775721, in_c0_exe27321, in_c0_exe2675620, in_c0_exe2575519, in_c0_exe2475418, in_c0_exe2375317, in_c0_exe2275216, in_c0_exe2175115, in_c0_exe2075014, in_c0_exe1974913, in_c0_exe1874812, in_c0_exe1774711, in_c0_exe1674610, in_c0_exe137439, in_c0_exe117418};

    // bubble_select_stall_entry(BITSELECT,72)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[0:0]);
    assign bubble_select_stall_entry_c = $unsigned(bubble_join_stall_entry_q[64:1]);
    assign bubble_select_stall_entry_d = $unsigned(bubble_join_stall_entry_q[128:65]);
    assign bubble_select_stall_entry_e = $unsigned(bubble_join_stall_entry_q[160:129]);
    assign bubble_select_stall_entry_f = $unsigned(bubble_join_stall_entry_q[161:161]);
    assign bubble_select_stall_entry_g = $unsigned(bubble_join_stall_entry_q[193:162]);
    assign bubble_select_stall_entry_h = $unsigned(bubble_join_stall_entry_q[225:194]);
    assign bubble_select_stall_entry_i = $unsigned(bubble_join_stall_entry_q[257:226]);
    assign bubble_select_stall_entry_j = $unsigned(bubble_join_stall_entry_q[258:258]);
    assign bubble_select_stall_entry_k = $unsigned(bubble_join_stall_entry_q[259:259]);
    assign bubble_select_stall_entry_l = $unsigned(bubble_join_stall_entry_q[291:260]);
    assign bubble_select_stall_entry_m = $unsigned(bubble_join_stall_entry_q[292:292]);
    assign bubble_select_stall_entry_n = $unsigned(bubble_join_stall_entry_q[293:293]);
    assign bubble_select_stall_entry_o = $unsigned(bubble_join_stall_entry_q[325:294]);
    assign bubble_select_stall_entry_p = $unsigned(bubble_join_stall_entry_q[326:326]);
    assign bubble_select_stall_entry_q = $unsigned(bubble_join_stall_entry_q[327:327]);
    assign bubble_select_stall_entry_r = $unsigned(bubble_join_stall_entry_q[359:328]);
    assign bubble_select_stall_entry_s = $unsigned(bubble_join_stall_entry_q[391:360]);
    assign bubble_select_stall_entry_t = $unsigned(bubble_join_stall_entry_q[392:392]);
    assign bubble_select_stall_entry_u = $unsigned(bubble_join_stall_entry_q[456:393]);
    assign bubble_select_stall_entry_v = $unsigned(bubble_join_stall_entry_q[520:457]);
    assign bubble_select_stall_entry_w = $unsigned(bubble_join_stall_entry_q[552:521]);
    assign bubble_select_stall_entry_x = $unsigned(bubble_join_stall_entry_q[553:553]);
    assign bubble_select_stall_entry_y = $unsigned(bubble_join_stall_entry_q[585:554]);
    assign bubble_select_stall_entry_z = $unsigned(bubble_join_stall_entry_q[617:586]);
    assign bubble_select_stall_entry_aa = $unsigned(bubble_join_stall_entry_q[649:618]);
    assign bubble_select_stall_entry_bb = $unsigned(bubble_join_stall_entry_q[650:650]);
    assign bubble_select_stall_entry_cc = $unsigned(bubble_join_stall_entry_q[651:651]);
    assign bubble_select_stall_entry_dd = $unsigned(bubble_join_stall_entry_q[683:652]);
    assign bubble_select_stall_entry_ee = $unsigned(bubble_join_stall_entry_q[684:684]);
    assign bubble_select_stall_entry_ff = $unsigned(bubble_join_stall_entry_q[685:685]);
    assign bubble_select_stall_entry_gg = $unsigned(bubble_join_stall_entry_q[717:686]);
    assign bubble_select_stall_entry_hh = $unsigned(bubble_join_stall_entry_q[718:718]);
    assign bubble_select_stall_entry_ii = $unsigned(bubble_join_stall_entry_q[719:719]);
    assign bubble_select_stall_entry_jj = $unsigned(bubble_join_stall_entry_q[751:720]);
    assign bubble_select_stall_entry_kk = $unsigned(bubble_join_stall_entry_q[752:752]);
    assign bubble_select_stall_entry_ll = $unsigned(bubble_join_stall_entry_q[816:753]);
    assign bubble_select_stall_entry_mm = $unsigned(bubble_join_stall_entry_q[880:817]);
    assign bubble_select_stall_entry_nn = $unsigned(bubble_join_stall_entry_q[912:881]);
    assign bubble_select_stall_entry_oo = $unsigned(bubble_join_stall_entry_q[913:913]);
    assign bubble_select_stall_entry_pp = $unsigned(bubble_join_stall_entry_q[945:914]);
    assign bubble_select_stall_entry_qq = $unsigned(bubble_join_stall_entry_q[977:946]);
    assign bubble_select_stall_entry_rr = $unsigned(bubble_join_stall_entry_q[978:978]);
    assign bubble_select_stall_entry_ss = $unsigned(bubble_join_stall_entry_q[979:979]);
    assign bubble_select_stall_entry_tt = $unsigned(bubble_join_stall_entry_q[1011:980]);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // SE_coalesced_delay_0_1(STALLENABLE,85)
    // Valid signal propagation
    assign SE_coalesced_delay_0_1_V0 = SE_coalesced_delay_0_1_R_v_0;
    // Stall signal propagation
    assign SE_coalesced_delay_0_1_s_tv_0 = SE_coalesced_delay_0_2_backStall & SE_coalesced_delay_0_1_R_v_0;
    // Backward Enable generation
    assign SE_coalesced_delay_0_1_backEN = ~ (SE_coalesced_delay_0_1_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_coalesced_delay_0_1_v_s_0 = SE_coalesced_delay_0_1_backEN & SE_coalesced_delay_0_0_V0;
    // Backward Stall generation
    assign SE_coalesced_delay_0_1_backStall = ~ (SE_coalesced_delay_0_1_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_coalesced_delay_0_1_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_coalesced_delay_0_1_backEN == 1'b0)
            begin
                SE_coalesced_delay_0_1_R_v_0 <= SE_coalesced_delay_0_1_R_v_0 & SE_coalesced_delay_0_1_s_tv_0;
            end
            else
            begin
                SE_coalesced_delay_0_1_R_v_0 <= SE_coalesced_delay_0_1_v_s_0;
            end

        end
    end

    // SE_coalesced_delay_0_2(STALLENABLE,86)
    // Valid signal propagation
    assign SE_coalesced_delay_0_2_V0 = SE_coalesced_delay_0_2_R_v_0;
    // Stall signal propagation
    assign SE_coalesced_delay_0_2_s_tv_0 = SE_coalesced_delay_0_3_backStall & SE_coalesced_delay_0_2_R_v_0;
    // Backward Enable generation
    assign SE_coalesced_delay_0_2_backEN = ~ (SE_coalesced_delay_0_2_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_coalesced_delay_0_2_v_s_0 = SE_coalesced_delay_0_2_backEN & SE_coalesced_delay_0_1_V0;
    // Backward Stall generation
    assign SE_coalesced_delay_0_2_backStall = ~ (SE_coalesced_delay_0_2_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_coalesced_delay_0_2_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_coalesced_delay_0_2_backEN == 1'b0)
            begin
                SE_coalesced_delay_0_2_R_v_0 <= SE_coalesced_delay_0_2_R_v_0 & SE_coalesced_delay_0_2_s_tv_0;
            end
            else
            begin
                SE_coalesced_delay_0_2_R_v_0 <= SE_coalesced_delay_0_2_v_s_0;
            end

        end
    end

    // SE_coalesced_delay_0_3(STALLENABLE,87)
    // Valid signal propagation
    assign SE_coalesced_delay_0_3_V0 = SE_coalesced_delay_0_3_R_v_0;
    // Stall signal propagation
    assign SE_coalesced_delay_0_3_s_tv_0 = SE_coalesced_delay_0_4_backStall & SE_coalesced_delay_0_3_R_v_0;
    // Backward Enable generation
    assign SE_coalesced_delay_0_3_backEN = ~ (SE_coalesced_delay_0_3_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_coalesced_delay_0_3_v_s_0 = SE_coalesced_delay_0_3_backEN & SE_coalesced_delay_0_2_V0;
    // Backward Stall generation
    assign SE_coalesced_delay_0_3_backStall = ~ (SE_coalesced_delay_0_3_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_coalesced_delay_0_3_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_coalesced_delay_0_3_backEN == 1'b0)
            begin
                SE_coalesced_delay_0_3_R_v_0 <= SE_coalesced_delay_0_3_R_v_0 & SE_coalesced_delay_0_3_s_tv_0;
            end
            else
            begin
                SE_coalesced_delay_0_3_R_v_0 <= SE_coalesced_delay_0_3_v_s_0;
            end

        end
    end

    // join_for_coalesced_delay_0(BITJOIN,61)
    assign join_for_coalesced_delay_0_q = {bubble_select_stall_entry_t, bubble_select_stall_entry_q, bubble_select_stall_entry_p, bubble_select_stall_entry_x, bubble_select_stall_entry_n, bubble_select_stall_entry_m, bubble_select_stall_entry_bb, bubble_select_stall_entry_cc, bubble_select_stall_entry_ee, bubble_select_stall_entry_ff, bubble_select_stall_entry_hh, bubble_select_stall_entry_ii, bubble_select_stall_entry_j, bubble_select_stall_entry_kk, bubble_select_stall_entry_oo, bubble_select_stall_entry_f, bubble_select_stall_entry_rr, bubble_select_stall_entry_ss, bubble_select_stall_entry_b, bubble_select_stall_entry_k, bubble_select_stall_entry_s, bubble_select_stall_entry_i, bubble_select_stall_entry_l, bubble_select_stall_entry_h, bubble_select_stall_entry_g, bubble_select_stall_entry_o, bubble_select_stall_entry_e, bubble_select_stall_entry_r, bubble_select_stall_entry_tt, bubble_select_stall_entry_w, bubble_select_stall_entry_y, bubble_select_stall_entry_z, bubble_select_stall_entry_aa, bubble_select_stall_entry_dd, bubble_select_stall_entry_gg, bubble_select_stall_entry_jj, bubble_select_stall_entry_qq, bubble_select_stall_entry_pp, bubble_select_stall_entry_nn, bubble_select_stall_entry_d, bubble_select_stall_entry_mm, bubble_select_stall_entry_ll, bubble_select_stall_entry_v, bubble_select_stall_entry_u, bubble_select_stall_entry_c};

    // coalesced_delay_0_0(REG,63)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_0_0_q <= $unsigned(1012'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_coalesced_delay_0_0_backEN == 1'b1)
        begin
            coalesced_delay_0_0_q <= $unsigned(join_for_coalesced_delay_0_q);
        end
    end

    // coalesced_delay_0_1(REG,64)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_0_1_q <= $unsigned(1012'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_coalesced_delay_0_1_backEN == 1'b1)
        begin
            coalesced_delay_0_1_q <= $unsigned(coalesced_delay_0_0_q);
        end
    end

    // coalesced_delay_0_2(REG,65)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_0_2_q <= $unsigned(1012'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_coalesced_delay_0_2_backEN == 1'b1)
        begin
            coalesced_delay_0_2_q <= $unsigned(coalesced_delay_0_1_q);
        end
    end

    // coalesced_delay_0_3(REG,66)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_0_3_q <= $unsigned(1012'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_coalesced_delay_0_3_backEN == 1'b1)
        begin
            coalesced_delay_0_3_q <= $unsigned(coalesced_delay_0_2_q);
        end
    end

    // coalesced_delay_0_4(REG,67)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_0_4_q <= $unsigned(1012'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_coalesced_delay_0_4_backEN == 1'b1)
        begin
            coalesced_delay_0_4_q <= $unsigned(coalesced_delay_0_3_q);
        end
    end

    // SE_coalesced_delay_0_4(STALLENABLE,88)
    // Valid signal propagation
    assign SE_coalesced_delay_0_4_V0 = SE_coalesced_delay_0_4_R_v_0;
    // Stall signal propagation
    assign SE_coalesced_delay_0_4_s_tv_0 = SR_SE_coalesced_delay_0_5_backStall & SE_coalesced_delay_0_4_R_v_0;
    // Backward Enable generation
    assign SE_coalesced_delay_0_4_backEN = ~ (SE_coalesced_delay_0_4_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_coalesced_delay_0_4_v_s_0 = SE_coalesced_delay_0_4_backEN & SE_coalesced_delay_0_3_V0;
    // Backward Stall generation
    assign SE_coalesced_delay_0_4_backStall = ~ (SE_coalesced_delay_0_4_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_coalesced_delay_0_4_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_coalesced_delay_0_4_backEN == 1'b0)
            begin
                SE_coalesced_delay_0_4_R_v_0 <= SE_coalesced_delay_0_4_R_v_0 & SE_coalesced_delay_0_4_s_tv_0;
            end
            else
            begin
                SE_coalesced_delay_0_4_R_v_0 <= SE_coalesced_delay_0_4_v_s_0;
            end

        end
    end

    // SR_SE_coalesced_delay_0_5(STALLREG,103)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_coalesced_delay_0_5_r_valid <= 1'b0;
            SR_SE_coalesced_delay_0_5_r_data0 <= 1012'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_coalesced_delay_0_5_r_valid <= SE_coalesced_delay_0_5_backStall & (SR_SE_coalesced_delay_0_5_r_valid | SR_SE_coalesced_delay_0_5_i_valid);

            if (SR_SE_coalesced_delay_0_5_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_coalesced_delay_0_5_r_data0 <= $unsigned(coalesced_delay_0_4_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_coalesced_delay_0_5_i_valid = SE_coalesced_delay_0_4_V0;
    // Stall signal propagation
    assign SR_SE_coalesced_delay_0_5_backStall = SR_SE_coalesced_delay_0_5_r_valid | ~ (SR_SE_coalesced_delay_0_5_i_valid);

    // Valid
    assign SR_SE_coalesced_delay_0_5_V = SR_SE_coalesced_delay_0_5_r_valid == 1'b1 ? SR_SE_coalesced_delay_0_5_r_valid : SR_SE_coalesced_delay_0_5_i_valid;

    assign SR_SE_coalesced_delay_0_5_D0 = SR_SE_coalesced_delay_0_5_r_valid == 1'b1 ? SR_SE_coalesced_delay_0_5_r_data0 : coalesced_delay_0_4_q;

    // SE_coalesced_delay_0_5(STALLENABLE,89)
    // Valid signal propagation
    assign SE_coalesced_delay_0_5_V0 = SE_coalesced_delay_0_5_R_v_0;
    // Stall signal propagation
    assign SE_coalesced_delay_0_5_s_tv_0 = SE_coalesced_delay_0_6_backStall & SE_coalesced_delay_0_5_R_v_0;
    // Backward Enable generation
    assign SE_coalesced_delay_0_5_backEN = ~ (SE_coalesced_delay_0_5_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_coalesced_delay_0_5_v_s_0 = SE_coalesced_delay_0_5_backEN & SR_SE_coalesced_delay_0_5_V;
    // Backward Stall generation
    assign SE_coalesced_delay_0_5_backStall = ~ (SE_coalesced_delay_0_5_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_coalesced_delay_0_5_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_coalesced_delay_0_5_backEN == 1'b0)
            begin
                SE_coalesced_delay_0_5_R_v_0 <= SE_coalesced_delay_0_5_R_v_0 & SE_coalesced_delay_0_5_s_tv_0;
            end
            else
            begin
                SE_coalesced_delay_0_5_R_v_0 <= SE_coalesced_delay_0_5_v_s_0;
            end

        end
    end

    // SE_coalesced_delay_0_6(STALLENABLE,90)
    // Valid signal propagation
    assign SE_coalesced_delay_0_6_V0 = SE_coalesced_delay_0_6_R_v_0;
    // Stall signal propagation
    assign SE_coalesced_delay_0_6_s_tv_0 = SE_out_i_sfc_s_c0_in_for_cond_cleanup21_conv2d3x3s_c0_enter644_conv2d3x32_aunroll_x_backStall & SE_coalesced_delay_0_6_R_v_0;
    // Backward Enable generation
    assign SE_coalesced_delay_0_6_backEN = ~ (SE_coalesced_delay_0_6_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_coalesced_delay_0_6_v_s_0 = SE_coalesced_delay_0_6_backEN & SE_coalesced_delay_0_5_V0;
    // Backward Stall generation
    assign SE_coalesced_delay_0_6_backStall = ~ (SE_coalesced_delay_0_6_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_coalesced_delay_0_6_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_coalesced_delay_0_6_backEN == 1'b0)
            begin
                SE_coalesced_delay_0_6_R_v_0 <= SE_coalesced_delay_0_6_R_v_0 & SE_coalesced_delay_0_6_s_tv_0;
            end
            else
            begin
                SE_coalesced_delay_0_6_R_v_0 <= SE_coalesced_delay_0_6_v_s_0;
            end

        end
    end

    // SE_out_i_sfc_s_c0_in_for_cond_cleanup21_conv2d3x3s_c0_enter644_conv2d3x32_aunroll_x(STALLENABLE,81)
    // Valid signal propagation
    assign SE_out_i_sfc_s_c0_in_for_cond_cleanup21_conv2d3x3s_c0_enter644_conv2d3x32_aunroll_x_V0 = SE_out_i_sfc_s_c0_in_for_cond_cleanup21_conv2d3x3s_c0_enter644_conv2d3x32_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c0_in_for_cond_cleanup21_conv2d3x3s_c0_enter644_conv2d3x32_aunroll_x_backStall = in_stall_in | ~ (SE_out_i_sfc_s_c0_in_for_cond_cleanup21_conv2d3x3s_c0_enter644_conv2d3x32_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c0_in_for_cond_cleanup21_conv2d3x3s_c0_enter644_conv2d3x32_aunroll_x_and0 = i_sfc_s_c0_in_for_cond_cleanup21_conv2d3x3s_c0_enter644_conv2d3x32_aunroll_x_out_o_valid;
    assign SE_out_i_sfc_s_c0_in_for_cond_cleanup21_conv2d3x3s_c0_enter644_conv2d3x32_aunroll_x_wireValid = SE_coalesced_delay_0_6_V0 & SE_out_i_sfc_s_c0_in_for_cond_cleanup21_conv2d3x3s_c0_enter644_conv2d3x32_aunroll_x_and0;

    // i_sfc_s_c0_in_for_cond_cleanup21_conv2d3x3s_c0_enter644_conv2d3x32_aunroll_x(BLACKBOX,14)@0
    // in in_i_stall@20000000
    // out out_o_stall@20000000
    // out out_o_valid@7
    // out out_c0_exit648_0_tpl@7
    // out out_c0_exit648_1_tpl@7
    conv2d3x3_i_sfc_s_c0_in_for_cond_cleanup0000_enter644_conv2d3x32 thei_sfc_s_c0_in_for_cond_cleanup21_conv2d3x3s_c0_enter644_conv2d3x32_aunroll_x (
        .in_i_stall(SE_out_i_sfc_s_c0_in_for_cond_cleanup21_conv2d3x3s_c0_enter644_conv2d3x32_aunroll_x_backStall),
        .in_i_valid(SE_stall_entry_V1),
        .in_input_size(in_input_size),
        .in_c0_eni2643_0_tpl(GND_q),
        .in_c0_eni2643_1_tpl(bubble_select_stall_entry_i),
        .in_c0_eni2643_2_tpl(bubble_select_stall_entry_r),
        .out_o_stall(i_sfc_s_c0_in_for_cond_cleanup21_conv2d3x3s_c0_enter644_conv2d3x32_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_for_cond_cleanup21_conv2d3x3s_c0_enter644_conv2d3x32_aunroll_x_out_o_valid),
        .out_c0_exit648_0_tpl(),
        .out_c0_exit648_1_tpl(i_sfc_s_c0_in_for_cond_cleanup21_conv2d3x3s_c0_enter644_conv2d3x32_aunroll_x_out_c0_exit648_1_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_coalesced_delay_0_0(STALLENABLE,84)
    // Valid signal propagation
    assign SE_coalesced_delay_0_0_V0 = SE_coalesced_delay_0_0_R_v_0;
    // Stall signal propagation
    assign SE_coalesced_delay_0_0_s_tv_0 = SE_coalesced_delay_0_1_backStall & SE_coalesced_delay_0_0_R_v_0;
    // Backward Enable generation
    assign SE_coalesced_delay_0_0_backEN = ~ (SE_coalesced_delay_0_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_coalesced_delay_0_0_v_s_0 = SE_coalesced_delay_0_0_backEN & SE_stall_entry_V0;
    // Backward Stall generation
    assign SE_coalesced_delay_0_0_backStall = ~ (SE_coalesced_delay_0_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_coalesced_delay_0_0_R_v_0 <= 1'b0;
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

        end
    end

    // SE_stall_entry(STALLENABLE,78)
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
    assign SE_stall_entry_consumed0 = (~ (SE_coalesced_delay_0_0_backStall) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg0;
    assign SE_stall_entry_consumed1 = (~ (i_sfc_s_c0_in_for_cond_cleanup21_conv2d3x3s_c0_enter644_conv2d3x32_aunroll_x_out_o_stall) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg1;
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

    // sync_out(GPOUT,11)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // bubble_join_i_sfc_s_c0_in_for_cond_cleanup21_conv2d3x3s_c0_enter644_conv2d3x32_aunroll_x(BITJOIN,75)
    assign bubble_join_i_sfc_s_c0_in_for_cond_cleanup21_conv2d3x3s_c0_enter644_conv2d3x32_aunroll_x_q = i_sfc_s_c0_in_for_cond_cleanup21_conv2d3x3s_c0_enter644_conv2d3x32_aunroll_x_out_c0_exit648_1_tpl;

    // bubble_select_i_sfc_s_c0_in_for_cond_cleanup21_conv2d3x3s_c0_enter644_conv2d3x32_aunroll_x(BITSELECT,76)
    assign bubble_select_i_sfc_s_c0_in_for_cond_cleanup21_conv2d3x3s_c0_enter644_conv2d3x32_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond_cleanup21_conv2d3x3s_c0_enter644_conv2d3x32_aunroll_x_q[31:0]);

    // coalesced_delay_0_5(REG,68)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_0_5_q <= $unsigned(1012'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_coalesced_delay_0_5_backEN == 1'b1)
        begin
            coalesced_delay_0_5_q <= $unsigned(SR_SE_coalesced_delay_0_5_D0);
        end
    end

    // coalesced_delay_0_6(REG,69)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_0_6_q <= $unsigned(1012'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_coalesced_delay_0_6_backEN == 1'b1)
        begin
            coalesced_delay_0_6_q <= $unsigned(coalesced_delay_0_5_q);
        end
    end

    // sel_for_coalesced_delay_0(BITSELECT,62)
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
    assign sel_for_coalesced_delay_0_y = $unsigned(coalesced_delay_0_6_q[959:928]);
    assign sel_for_coalesced_delay_0_z = $unsigned(coalesced_delay_0_6_q[991:960]);
    assign sel_for_coalesced_delay_0_aa = $unsigned(coalesced_delay_0_6_q[992:992]);
    assign sel_for_coalesced_delay_0_bb = $unsigned(coalesced_delay_0_6_q[993:993]);
    assign sel_for_coalesced_delay_0_cc = $unsigned(coalesced_delay_0_6_q[994:994]);
    assign sel_for_coalesced_delay_0_dd = $unsigned(coalesced_delay_0_6_q[995:995]);
    assign sel_for_coalesced_delay_0_ee = $unsigned(coalesced_delay_0_6_q[996:996]);
    assign sel_for_coalesced_delay_0_ff = $unsigned(coalesced_delay_0_6_q[997:997]);
    assign sel_for_coalesced_delay_0_gg = $unsigned(coalesced_delay_0_6_q[998:998]);
    assign sel_for_coalesced_delay_0_hh = $unsigned(coalesced_delay_0_6_q[999:999]);
    assign sel_for_coalesced_delay_0_ii = $unsigned(coalesced_delay_0_6_q[1000:1000]);
    assign sel_for_coalesced_delay_0_jj = $unsigned(coalesced_delay_0_6_q[1001:1001]);
    assign sel_for_coalesced_delay_0_kk = $unsigned(coalesced_delay_0_6_q[1002:1002]);
    assign sel_for_coalesced_delay_0_ll = $unsigned(coalesced_delay_0_6_q[1003:1003]);
    assign sel_for_coalesced_delay_0_mm = $unsigned(coalesced_delay_0_6_q[1004:1004]);
    assign sel_for_coalesced_delay_0_nn = $unsigned(coalesced_delay_0_6_q[1005:1005]);
    assign sel_for_coalesced_delay_0_oo = $unsigned(coalesced_delay_0_6_q[1006:1006]);
    assign sel_for_coalesced_delay_0_pp = $unsigned(coalesced_delay_0_6_q[1007:1007]);
    assign sel_for_coalesced_delay_0_qq = $unsigned(coalesced_delay_0_6_q[1008:1008]);
    assign sel_for_coalesced_delay_0_rr = $unsigned(coalesced_delay_0_6_q[1009:1009]);
    assign sel_for_coalesced_delay_0_ss = $unsigned(coalesced_delay_0_6_q[1010:1010]);
    assign sel_for_coalesced_delay_0_tt = $unsigned(coalesced_delay_0_6_q[1011:1011]);

    // dupName_0_sync_out_x(GPOUT,13)@7
    assign out_c0_exe117418 = sel_for_coalesced_delay_0_bb;
    assign out_c0_exe137439 = sel_for_coalesced_delay_0_b;
    assign out_c0_exe1649 = bubble_select_i_sfc_s_c0_in_for_cond_cleanup21_conv2d3x3s_c0_enter644_conv2d3x32_aunroll_x_b;
    assign out_c0_exe1674610 = sel_for_coalesced_delay_0_g;
    assign out_c0_exe1774711 = sel_for_coalesced_delay_0_t;
    assign out_c0_exe1874812 = sel_for_coalesced_delay_0_ee;
    assign out_c0_exe1974913 = sel_for_coalesced_delay_0_v;
    assign out_c0_exe2075014 = sel_for_coalesced_delay_0_w;
    assign out_c0_exe2175115 = sel_for_coalesced_delay_0_y;
    assign out_c0_exe2275216 = sel_for_coalesced_delay_0_hh;
    assign out_c0_exe2375317 = sel_for_coalesced_delay_0_aa;
    assign out_c0_exe2475418 = sel_for_coalesced_delay_0_x;
    assign out_c0_exe2575519 = sel_for_coalesced_delay_0_oo;
    assign out_c0_exe2675620 = sel_for_coalesced_delay_0_pp;
    assign out_c0_exe27321 = sel_for_coalesced_delay_0_u;
    assign out_c0_exe2775721 = sel_for_coalesced_delay_0_rr;
    assign out_c0_exe2875822 = sel_for_coalesced_delay_0_ss;
    assign out_c0_exe2975923 = sel_for_coalesced_delay_0_s;
    assign out_c0_exe3076024 = sel_for_coalesced_delay_0_z;
    assign out_c0_exe3176125 = sel_for_coalesced_delay_0_tt;
    assign out_c0_exe3376326 = sel_for_coalesced_delay_0_c;
    assign out_c0_exe3476427 = sel_for_coalesced_delay_0_d;
    assign out_c0_exe3576528 = sel_for_coalesced_delay_0_q;
    assign out_c0_exe3676629 = sel_for_coalesced_delay_0_qq;
    assign out_c0_exe37332 = sel_for_coalesced_delay_0_p;
    assign out_c0_exe3776730 = sel_for_coalesced_delay_0_o;
    assign out_c0_exe3876831 = sel_for_coalesced_delay_0_n;
    assign out_c0_exe3976932 = sel_for_coalesced_delay_0_nn;
    assign out_c0_exe4033 = sel_for_coalesced_delay_0_mm;
    assign out_c0_exe4134 = sel_for_coalesced_delay_0_m;
    assign out_c0_exe4235 = sel_for_coalesced_delay_0_ll;
    assign out_c0_exe4336 = sel_for_coalesced_delay_0_kk;
    assign out_c0_exe4437 = sel_for_coalesced_delay_0_l;
    assign out_c0_exe4538 = sel_for_coalesced_delay_0_jj;
    assign out_c0_exe4639 = sel_for_coalesced_delay_0_ii;
    assign out_c0_exe47343 = sel_for_coalesced_delay_0_k;
    assign out_c0_exe4740 = sel_for_coalesced_delay_0_gg;
    assign out_c0_exe4841 = sel_for_coalesced_delay_0_e;
    assign out_c0_exe4942 = sel_for_coalesced_delay_0_f;
    assign out_c0_exe5043 = sel_for_coalesced_delay_0_h;
    assign out_c0_exe5144 = sel_for_coalesced_delay_0_ff;
    assign out_c0_exe57354 = sel_for_coalesced_delay_0_i;
    assign out_c0_exe67365 = sel_for_coalesced_delay_0_j;
    assign out_c0_exe87386 = sel_for_coalesced_delay_0_dd;
    assign out_c0_exe97397 = sel_for_coalesced_delay_0_cc;
    assign out_c1_exe145 = sel_for_coalesced_delay_0_r;
    assign out_valid_out = SE_out_i_sfc_s_c0_in_for_cond_cleanup21_conv2d3x3s_c0_enter644_conv2d3x32_aunroll_x_V0;

endmodule
