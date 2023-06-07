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

// SystemVerilog created from conv2d3x3_bb_B14_stall_region
// SystemVerilog created on Tue Jun  6 18:48:20 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2d3x3_bb_B14_stall_region (
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [63:0] in_c0_exe11114897,
    input wire [63:0] in_c0_exe12114998,
    input wire [31:0] in_c0_exe131150100,
    input wire [31:0] in_c0_exe141151101,
    input wire [0:0] in_c0_exe151152105,
    input wire [0:0] in_c0_exe161153106,
    input wire [31:0] in_c0_exe171154107,
    input wire [31:0] in_c0_exe181155109,
    input wire [31:0] in_c0_exe191156110,
    input wire [0:0] in_c0_exe201157111,
    input wire [0:0] in_c0_exe211158112,
    input wire [31:0] in_c0_exe221159113,
    input wire [0:0] in_c0_exe231160114,
    input wire [0:0] in_c0_exe241161115,
    input wire [31:0] in_c0_exe251162116,
    input wire [0:0] in_c0_exe261163119,
    input wire [0:0] in_c0_exe271164120,
    input wire [31:0] in_c0_exe281165121,
    input wire [31:0] in_c0_exe291166122,
    input wire [0:0] in_c0_exe301167124,
    input wire [0:0] in_c0_exe311168125,
    input wire [0:0] in_c0_exe3114091,
    input wire [31:0] in_c0_exe321169127,
    input wire [31:0] in_c0_exe331170128,
    input wire [31:0] in_c0_exe341171129,
    input wire [0:0] in_c0_exe351172130,
    input wire [63:0] in_c0_exe371174131,
    input wire [63:0] in_c0_exe381175132,
    input wire [31:0] in_c0_exe391176133,
    input wire [0:0] in_c0_exe401177134,
    input wire [31:0] in_c0_exe411178135,
    input wire [0:0] in_c0_exe4114192,
    input wire [31:0] in_c0_exe421179136,
    input wire [0:0] in_c0_exe431180137,
    input wire [0:0] in_c0_exe441181138,
    input wire [31:0] in_c0_exe451182139,
    input wire [0:0] in_c0_exe461183140,
    input wire [0:0] in_c0_exe471184141,
    input wire [31:0] in_c0_exe481185142,
    input wire [0:0] in_c0_exe491186143,
    input wire [0:0] in_c0_exe501187144,
    input wire [0:0] in_c0_exe511188145,
    input wire [63:0] in_c0_exe521189146,
    input wire [63:0] in_c0_exe53147,
    input wire [31:0] in_c0_exe54148,
    input wire [0:0] in_c0_exe55149,
    input wire [0:0] in_c0_exe6114394,
    input wire [63:0] in_c0_exe8114595,
    input wire [31:0] in_c1_exe11205151,
    input wire [31:0] in_c1_exe2152,
    input wire [0:0] in_valid_in,
    output wire [63:0] out_c0_exe11114897,
    output wire [63:0] out_c0_exe12114998,
    output wire [31:0] out_c0_exe131150100,
    output wire [31:0] out_c0_exe141151101,
    output wire [0:0] out_c0_exe151152105,
    output wire [0:0] out_c0_exe161153106,
    output wire [31:0] out_c0_exe171154107,
    output wire [31:0] out_c0_exe181155109,
    output wire [31:0] out_c0_exe191156110,
    output wire [0:0] out_c0_exe201157111,
    output wire [0:0] out_c0_exe211158112,
    output wire [31:0] out_c0_exe221159113,
    output wire [0:0] out_c0_exe231160114,
    output wire [0:0] out_c0_exe241161115,
    output wire [31:0] out_c0_exe251162116,
    output wire [0:0] out_c0_exe261163119,
    output wire [0:0] out_c0_exe271164120,
    output wire [31:0] out_c0_exe281165121,
    output wire [31:0] out_c0_exe291166122,
    output wire [0:0] out_c0_exe301167124,
    output wire [0:0] out_c0_exe311168125,
    output wire [0:0] out_c0_exe3114091,
    output wire [31:0] out_c0_exe321169127,
    output wire [31:0] out_c0_exe331170128,
    output wire [31:0] out_c0_exe341171129,
    output wire [0:0] out_c0_exe351172130,
    output wire [63:0] out_c0_exe371174131,
    output wire [63:0] out_c0_exe381175132,
    output wire [31:0] out_c0_exe391176133,
    output wire [0:0] out_c0_exe401177134,
    output wire [31:0] out_c0_exe411178135,
    output wire [0:0] out_c0_exe4114192,
    output wire [31:0] out_c0_exe421179136,
    output wire [0:0] out_c0_exe431180137,
    output wire [0:0] out_c0_exe441181138,
    output wire [31:0] out_c0_exe451182139,
    output wire [0:0] out_c0_exe461183140,
    output wire [0:0] out_c0_exe471184141,
    output wire [31:0] out_c0_exe481185142,
    output wire [0:0] out_c0_exe491186143,
    output wire [0:0] out_c0_exe501187144,
    output wire [0:0] out_c0_exe511188145,
    output wire [63:0] out_c0_exe521189146,
    output wire [63:0] out_c0_exe53147,
    output wire [31:0] out_c0_exe54148,
    output wire [0:0] out_c0_exe55149,
    output wire [0:0] out_c0_exe6114394,
    output wire [63:0] out_c0_exe8114595,
    output wire [31:0] out_c1_exe11205151,
    output wire [31:0] out_c1_exe2152,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [1110:0] bubble_join_stall_entry_q;
    wire [63:0] bubble_select_stall_entry_b;
    wire [63:0] bubble_select_stall_entry_c;
    wire [31:0] bubble_select_stall_entry_d;
    wire [31:0] bubble_select_stall_entry_e;
    wire [0:0] bubble_select_stall_entry_f;
    wire [0:0] bubble_select_stall_entry_g;
    wire [31:0] bubble_select_stall_entry_h;
    wire [31:0] bubble_select_stall_entry_i;
    wire [31:0] bubble_select_stall_entry_j;
    wire [0:0] bubble_select_stall_entry_k;
    wire [0:0] bubble_select_stall_entry_l;
    wire [31:0] bubble_select_stall_entry_m;
    wire [0:0] bubble_select_stall_entry_n;
    wire [0:0] bubble_select_stall_entry_o;
    wire [31:0] bubble_select_stall_entry_p;
    wire [0:0] bubble_select_stall_entry_q;
    wire [0:0] bubble_select_stall_entry_r;
    wire [31:0] bubble_select_stall_entry_s;
    wire [31:0] bubble_select_stall_entry_t;
    wire [0:0] bubble_select_stall_entry_u;
    wire [0:0] bubble_select_stall_entry_v;
    wire [0:0] bubble_select_stall_entry_w;
    wire [31:0] bubble_select_stall_entry_x;
    wire [31:0] bubble_select_stall_entry_y;
    wire [31:0] bubble_select_stall_entry_z;
    wire [0:0] bubble_select_stall_entry_aa;
    wire [63:0] bubble_select_stall_entry_bb;
    wire [63:0] bubble_select_stall_entry_cc;
    wire [31:0] bubble_select_stall_entry_dd;
    wire [0:0] bubble_select_stall_entry_ee;
    wire [31:0] bubble_select_stall_entry_ff;
    wire [0:0] bubble_select_stall_entry_gg;
    wire [31:0] bubble_select_stall_entry_hh;
    wire [0:0] bubble_select_stall_entry_ii;
    wire [0:0] bubble_select_stall_entry_jj;
    wire [31:0] bubble_select_stall_entry_kk;
    wire [0:0] bubble_select_stall_entry_ll;
    wire [0:0] bubble_select_stall_entry_mm;
    wire [31:0] bubble_select_stall_entry_nn;
    wire [0:0] bubble_select_stall_entry_oo;
    wire [0:0] bubble_select_stall_entry_pp;
    wire [0:0] bubble_select_stall_entry_qq;
    wire [63:0] bubble_select_stall_entry_rr;
    wire [63:0] bubble_select_stall_entry_ss;
    wire [31:0] bubble_select_stall_entry_tt;
    wire [0:0] bubble_select_stall_entry_uu;
    wire [0:0] bubble_select_stall_entry_vv;
    wire [63:0] bubble_select_stall_entry_ww;
    wire [31:0] bubble_select_stall_entry_xx;
    wire [31:0] bubble_select_stall_entry_yy;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;


    // SE_stall_entry(STALLENABLE,13)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = in_stall_in | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // sync_out(GPOUT,7)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // bubble_join_stall_entry(BITJOIN,11)
    assign bubble_join_stall_entry_q = {in_c1_exe2152, in_c1_exe11205151, in_c0_exe8114595, in_c0_exe6114394, in_c0_exe55149, in_c0_exe54148, in_c0_exe53147, in_c0_exe521189146, in_c0_exe511188145, in_c0_exe501187144, in_c0_exe491186143, in_c0_exe481185142, in_c0_exe471184141, in_c0_exe461183140, in_c0_exe451182139, in_c0_exe441181138, in_c0_exe431180137, in_c0_exe421179136, in_c0_exe4114192, in_c0_exe411178135, in_c0_exe401177134, in_c0_exe391176133, in_c0_exe381175132, in_c0_exe371174131, in_c0_exe351172130, in_c0_exe341171129, in_c0_exe331170128, in_c0_exe321169127, in_c0_exe3114091, in_c0_exe311168125, in_c0_exe301167124, in_c0_exe291166122, in_c0_exe281165121, in_c0_exe271164120, in_c0_exe261163119, in_c0_exe251162116, in_c0_exe241161115, in_c0_exe231160114, in_c0_exe221159113, in_c0_exe211158112, in_c0_exe201157111, in_c0_exe191156110, in_c0_exe181155109, in_c0_exe171154107, in_c0_exe161153106, in_c0_exe151152105, in_c0_exe141151101, in_c0_exe131150100, in_c0_exe12114998, in_c0_exe11114897};

    // bubble_select_stall_entry(BITSELECT,12)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[63:0]);
    assign bubble_select_stall_entry_c = $unsigned(bubble_join_stall_entry_q[127:64]);
    assign bubble_select_stall_entry_d = $unsigned(bubble_join_stall_entry_q[159:128]);
    assign bubble_select_stall_entry_e = $unsigned(bubble_join_stall_entry_q[191:160]);
    assign bubble_select_stall_entry_f = $unsigned(bubble_join_stall_entry_q[192:192]);
    assign bubble_select_stall_entry_g = $unsigned(bubble_join_stall_entry_q[193:193]);
    assign bubble_select_stall_entry_h = $unsigned(bubble_join_stall_entry_q[225:194]);
    assign bubble_select_stall_entry_i = $unsigned(bubble_join_stall_entry_q[257:226]);
    assign bubble_select_stall_entry_j = $unsigned(bubble_join_stall_entry_q[289:258]);
    assign bubble_select_stall_entry_k = $unsigned(bubble_join_stall_entry_q[290:290]);
    assign bubble_select_stall_entry_l = $unsigned(bubble_join_stall_entry_q[291:291]);
    assign bubble_select_stall_entry_m = $unsigned(bubble_join_stall_entry_q[323:292]);
    assign bubble_select_stall_entry_n = $unsigned(bubble_join_stall_entry_q[324:324]);
    assign bubble_select_stall_entry_o = $unsigned(bubble_join_stall_entry_q[325:325]);
    assign bubble_select_stall_entry_p = $unsigned(bubble_join_stall_entry_q[357:326]);
    assign bubble_select_stall_entry_q = $unsigned(bubble_join_stall_entry_q[358:358]);
    assign bubble_select_stall_entry_r = $unsigned(bubble_join_stall_entry_q[359:359]);
    assign bubble_select_stall_entry_s = $unsigned(bubble_join_stall_entry_q[391:360]);
    assign bubble_select_stall_entry_t = $unsigned(bubble_join_stall_entry_q[423:392]);
    assign bubble_select_stall_entry_u = $unsigned(bubble_join_stall_entry_q[424:424]);
    assign bubble_select_stall_entry_v = $unsigned(bubble_join_stall_entry_q[425:425]);
    assign bubble_select_stall_entry_w = $unsigned(bubble_join_stall_entry_q[426:426]);
    assign bubble_select_stall_entry_x = $unsigned(bubble_join_stall_entry_q[458:427]);
    assign bubble_select_stall_entry_y = $unsigned(bubble_join_stall_entry_q[490:459]);
    assign bubble_select_stall_entry_z = $unsigned(bubble_join_stall_entry_q[522:491]);
    assign bubble_select_stall_entry_aa = $unsigned(bubble_join_stall_entry_q[523:523]);
    assign bubble_select_stall_entry_bb = $unsigned(bubble_join_stall_entry_q[587:524]);
    assign bubble_select_stall_entry_cc = $unsigned(bubble_join_stall_entry_q[651:588]);
    assign bubble_select_stall_entry_dd = $unsigned(bubble_join_stall_entry_q[683:652]);
    assign bubble_select_stall_entry_ee = $unsigned(bubble_join_stall_entry_q[684:684]);
    assign bubble_select_stall_entry_ff = $unsigned(bubble_join_stall_entry_q[716:685]);
    assign bubble_select_stall_entry_gg = $unsigned(bubble_join_stall_entry_q[717:717]);
    assign bubble_select_stall_entry_hh = $unsigned(bubble_join_stall_entry_q[749:718]);
    assign bubble_select_stall_entry_ii = $unsigned(bubble_join_stall_entry_q[750:750]);
    assign bubble_select_stall_entry_jj = $unsigned(bubble_join_stall_entry_q[751:751]);
    assign bubble_select_stall_entry_kk = $unsigned(bubble_join_stall_entry_q[783:752]);
    assign bubble_select_stall_entry_ll = $unsigned(bubble_join_stall_entry_q[784:784]);
    assign bubble_select_stall_entry_mm = $unsigned(bubble_join_stall_entry_q[785:785]);
    assign bubble_select_stall_entry_nn = $unsigned(bubble_join_stall_entry_q[817:786]);
    assign bubble_select_stall_entry_oo = $unsigned(bubble_join_stall_entry_q[818:818]);
    assign bubble_select_stall_entry_pp = $unsigned(bubble_join_stall_entry_q[819:819]);
    assign bubble_select_stall_entry_qq = $unsigned(bubble_join_stall_entry_q[820:820]);
    assign bubble_select_stall_entry_rr = $unsigned(bubble_join_stall_entry_q[884:821]);
    assign bubble_select_stall_entry_ss = $unsigned(bubble_join_stall_entry_q[948:885]);
    assign bubble_select_stall_entry_tt = $unsigned(bubble_join_stall_entry_q[980:949]);
    assign bubble_select_stall_entry_uu = $unsigned(bubble_join_stall_entry_q[981:981]);
    assign bubble_select_stall_entry_vv = $unsigned(bubble_join_stall_entry_q[982:982]);
    assign bubble_select_stall_entry_ww = $unsigned(bubble_join_stall_entry_q[1046:983]);
    assign bubble_select_stall_entry_xx = $unsigned(bubble_join_stall_entry_q[1078:1047]);
    assign bubble_select_stall_entry_yy = $unsigned(bubble_join_stall_entry_q[1110:1079]);

    // dupName_0_sync_out_x(GPOUT,9)@0
    assign out_c0_exe11114897 = bubble_select_stall_entry_b;
    assign out_c0_exe12114998 = bubble_select_stall_entry_c;
    assign out_c0_exe131150100 = bubble_select_stall_entry_d;
    assign out_c0_exe141151101 = bubble_select_stall_entry_e;
    assign out_c0_exe151152105 = bubble_select_stall_entry_f;
    assign out_c0_exe161153106 = bubble_select_stall_entry_g;
    assign out_c0_exe171154107 = bubble_select_stall_entry_h;
    assign out_c0_exe181155109 = bubble_select_stall_entry_i;
    assign out_c0_exe191156110 = bubble_select_stall_entry_j;
    assign out_c0_exe201157111 = bubble_select_stall_entry_k;
    assign out_c0_exe211158112 = bubble_select_stall_entry_l;
    assign out_c0_exe221159113 = bubble_select_stall_entry_m;
    assign out_c0_exe231160114 = bubble_select_stall_entry_n;
    assign out_c0_exe241161115 = bubble_select_stall_entry_o;
    assign out_c0_exe251162116 = bubble_select_stall_entry_p;
    assign out_c0_exe261163119 = bubble_select_stall_entry_q;
    assign out_c0_exe271164120 = bubble_select_stall_entry_r;
    assign out_c0_exe281165121 = bubble_select_stall_entry_s;
    assign out_c0_exe291166122 = bubble_select_stall_entry_t;
    assign out_c0_exe301167124 = bubble_select_stall_entry_u;
    assign out_c0_exe311168125 = bubble_select_stall_entry_v;
    assign out_c0_exe3114091 = bubble_select_stall_entry_w;
    assign out_c0_exe321169127 = bubble_select_stall_entry_x;
    assign out_c0_exe331170128 = bubble_select_stall_entry_y;
    assign out_c0_exe341171129 = bubble_select_stall_entry_z;
    assign out_c0_exe351172130 = bubble_select_stall_entry_aa;
    assign out_c0_exe371174131 = bubble_select_stall_entry_bb;
    assign out_c0_exe381175132 = bubble_select_stall_entry_cc;
    assign out_c0_exe391176133 = bubble_select_stall_entry_dd;
    assign out_c0_exe401177134 = bubble_select_stall_entry_ee;
    assign out_c0_exe411178135 = bubble_select_stall_entry_ff;
    assign out_c0_exe4114192 = bubble_select_stall_entry_gg;
    assign out_c0_exe421179136 = bubble_select_stall_entry_hh;
    assign out_c0_exe431180137 = bubble_select_stall_entry_ii;
    assign out_c0_exe441181138 = bubble_select_stall_entry_jj;
    assign out_c0_exe451182139 = bubble_select_stall_entry_kk;
    assign out_c0_exe461183140 = bubble_select_stall_entry_ll;
    assign out_c0_exe471184141 = bubble_select_stall_entry_mm;
    assign out_c0_exe481185142 = bubble_select_stall_entry_nn;
    assign out_c0_exe491186143 = bubble_select_stall_entry_oo;
    assign out_c0_exe501187144 = bubble_select_stall_entry_pp;
    assign out_c0_exe511188145 = bubble_select_stall_entry_qq;
    assign out_c0_exe521189146 = bubble_select_stall_entry_rr;
    assign out_c0_exe53147 = bubble_select_stall_entry_ss;
    assign out_c0_exe54148 = bubble_select_stall_entry_tt;
    assign out_c0_exe55149 = bubble_select_stall_entry_uu;
    assign out_c0_exe6114394 = bubble_select_stall_entry_vv;
    assign out_c0_exe8114595 = bubble_select_stall_entry_ww;
    assign out_c1_exe11205151 = bubble_select_stall_entry_xx;
    assign out_c1_exe2152 = bubble_select_stall_entry_yy;
    assign out_valid_out = SE_stall_entry_V0;

endmodule
