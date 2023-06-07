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

// SystemVerilog created from conv2d3x3_bb_B8_stall_region
// SystemVerilog created on Tue Jun  6 18:45:14 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2d3x3_bb_B8_stall_region (
    input wire [31:0] in_input_size,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_c0_exe1087,
    input wire [31:0] in_c0_exe1186155,
    input wire [31:0] in_c0_exe1195164,
    input wire [0:0] in_c0_exe1197,
    input wire [31:0] in_c0_exe1234176,
    input wire [31:0] in_c0_exe1298,
    input wire [0:0] in_c0_exe13108,
    input wire [0:0] in_c0_exe14117,
    input wire [0:0] in_c0_exe15127,
    input wire [0:0] in_c0_exe16137,
    input wire [63:0] in_c0_exe18,
    input wire [63:0] in_c0_exe319,
    input wire [0:0] in_c0_exe428,
    input wire [31:0] in_c0_exe539,
    input wire [31:0] in_c0_exe646,
    input wire [0:0] in_c0_exe758,
    input wire [0:0] in_c0_exe867,
    input wire [31:0] in_c0_exe977,
    input wire [31:0] in_j_062146,
    input wire [31:0] in_k_059160,
    input wire [31:0] in_mul46_add4169,
    input wire [31:0] in_unnamed_conv2d3x312,
    input wire [0:0] in_valid_in,
    output wire [31:0] out_add48_2,
    output wire [0:0] out_c0_exe1087,
    output wire [31:0] out_c0_exe1186155,
    output wire [0:0] out_c0_exe1197,
    output wire [31:0] out_c0_exe1234176,
    output wire [31:0] out_c0_exe1242,
    output wire [31:0] out_c0_exe1298,
    output wire [0:0] out_c0_exe13108,
    output wire [0:0] out_c0_exe14117,
    output wire [0:0] out_c0_exe15127,
    output wire [0:0] out_c0_exe16137,
    output wire [63:0] out_c0_exe18,
    output wire [63:0] out_c0_exe319,
    output wire [0:0] out_c0_exe428,
    output wire [31:0] out_c0_exe539,
    output wire [31:0] out_c0_exe646,
    output wire [0:0] out_c0_exe758,
    output wire [0:0] out_c0_exe867,
    output wire [31:0] out_c0_exe977,
    output wire [31:0] out_j_062146,
    output wire [31:0] out_k_059160,
    output wire [31:0] out_unnamed_conv2d3x312,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [31:0] c_i32_68_q;
    wire [32:0] i_add48_2_conv2d3x34_a;
    wire [32:0] i_add48_2_conv2d3x34_b;
    logic [32:0] i_add48_2_conv2d3x34_o;
    wire [32:0] i_add48_2_conv2d3x34_q;
    wire [31:0] bgTrunc_i_add48_2_conv2d3x34_sel_x_b;
    wire [0:0] i_sfc_s_c0_in_for_body25_2_preheader_conv2d3x3s_c0_enter237_conv2d3x32_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_for_body25_2_preheader_conv2d3x3s_c0_enter237_conv2d3x32_aunroll_x_out_o_valid;
    wire [31:0] i_sfc_s_c0_in_for_body25_2_preheader_conv2d3x3s_c0_enter237_conv2d3x32_aunroll_x_out_c0_exit241_1_tpl;
    wire [424:0] join_for_coalesced_delay_0_q;
    wire [63:0] sel_for_coalesced_delay_0_b;
    wire [63:0] sel_for_coalesced_delay_0_c;
    wire [31:0] sel_for_coalesced_delay_0_d;
    wire [31:0] sel_for_coalesced_delay_0_e;
    wire [31:0] sel_for_coalesced_delay_0_f;
    wire [31:0] sel_for_coalesced_delay_0_g;
    wire [31:0] sel_for_coalesced_delay_0_h;
    wire [31:0] sel_for_coalesced_delay_0_i;
    wire [31:0] sel_for_coalesced_delay_0_j;
    wire [31:0] sel_for_coalesced_delay_0_k;
    wire [31:0] sel_for_coalesced_delay_0_l;
    wire [0:0] sel_for_coalesced_delay_0_m;
    wire [0:0] sel_for_coalesced_delay_0_n;
    wire [0:0] sel_for_coalesced_delay_0_o;
    wire [0:0] sel_for_coalesced_delay_0_p;
    wire [0:0] sel_for_coalesced_delay_0_q;
    wire [0:0] sel_for_coalesced_delay_0_r;
    wire [0:0] sel_for_coalesced_delay_0_s;
    wire [0:0] sel_for_coalesced_delay_0_t;
    wire [0:0] sel_for_coalesced_delay_0_u;
    reg [31:0] redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_0_q;
    reg [31:0] redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_1_q;
    reg [31:0] redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_2_q;
    reg [31:0] redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_3_q;
    reg [31:0] redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_4_q;
    reg [31:0] redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_5_q;
    reg [31:0] redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_6_q;
    reg [424:0] coalesced_delay_0_0_q;
    reg [424:0] coalesced_delay_0_1_q;
    reg [424:0] coalesced_delay_0_2_q;
    reg [424:0] coalesced_delay_0_3_q;
    reg [424:0] coalesced_delay_0_4_q;
    reg [424:0] coalesced_delay_0_5_q;
    reg [424:0] coalesced_delay_0_6_q;
    wire [488:0] bubble_join_stall_entry_q;
    wire [0:0] bubble_select_stall_entry_b;
    wire [31:0] bubble_select_stall_entry_c;
    wire [31:0] bubble_select_stall_entry_d;
    wire [0:0] bubble_select_stall_entry_e;
    wire [31:0] bubble_select_stall_entry_f;
    wire [31:0] bubble_select_stall_entry_g;
    wire [0:0] bubble_select_stall_entry_h;
    wire [0:0] bubble_select_stall_entry_i;
    wire [0:0] bubble_select_stall_entry_j;
    wire [0:0] bubble_select_stall_entry_k;
    wire [63:0] bubble_select_stall_entry_l;
    wire [63:0] bubble_select_stall_entry_m;
    wire [0:0] bubble_select_stall_entry_n;
    wire [31:0] bubble_select_stall_entry_o;
    wire [31:0] bubble_select_stall_entry_p;
    wire [0:0] bubble_select_stall_entry_q;
    wire [0:0] bubble_select_stall_entry_r;
    wire [31:0] bubble_select_stall_entry_s;
    wire [31:0] bubble_select_stall_entry_t;
    wire [31:0] bubble_select_stall_entry_u;
    wire [31:0] bubble_select_stall_entry_v;
    wire [31:0] bubble_select_stall_entry_w;
    wire [31:0] bubble_join_i_sfc_s_c0_in_for_body25_2_preheader_conv2d3x3s_c0_enter237_conv2d3x32_aunroll_x_q;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body25_2_preheader_conv2d3x3s_c0_enter237_conv2d3x32_aunroll_x_b;
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
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body25_2_preheader_conv2d3x3s_c0_enter237_conv2d3x32_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body25_2_preheader_conv2d3x3s_c0_enter237_conv2d3x32_aunroll_x_and0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body25_2_preheader_conv2d3x3s_c0_enter237_conv2d3x32_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body25_2_preheader_conv2d3x3s_c0_enter237_conv2d3x32_aunroll_x_V0;
    reg [0:0] SE_redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_0_R_v_0;
    wire [0:0] SE_redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_0_v_s_0;
    wire [0:0] SE_redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_0_s_tv_0;
    wire [0:0] SE_redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_0_backEN;
    wire [0:0] SE_redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_0_backStall;
    wire [0:0] SE_redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_0_V0;
    reg [0:0] SE_redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_1_R_v_0;
    wire [0:0] SE_redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_1_v_s_0;
    wire [0:0] SE_redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_1_s_tv_0;
    wire [0:0] SE_redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_1_backEN;
    wire [0:0] SE_redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_1_backStall;
    wire [0:0] SE_redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_1_V0;
    reg [0:0] SE_redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_2_R_v_0;
    wire [0:0] SE_redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_2_v_s_0;
    wire [0:0] SE_redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_2_s_tv_0;
    wire [0:0] SE_redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_2_backEN;
    wire [0:0] SE_redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_2_backStall;
    wire [0:0] SE_redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_2_V0;
    reg [0:0] SE_redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_3_R_v_0;
    wire [0:0] SE_redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_3_v_s_0;
    wire [0:0] SE_redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_3_s_tv_0;
    wire [0:0] SE_redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_3_backEN;
    wire [0:0] SE_redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_3_backStall;
    wire [0:0] SE_redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_3_V0;
    reg [0:0] SE_redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_4_R_v_0;
    wire [0:0] SE_redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_4_v_s_0;
    wire [0:0] SE_redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_4_s_tv_0;
    wire [0:0] SE_redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_4_backEN;
    wire [0:0] SE_redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_4_backStall;
    wire [0:0] SE_redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_4_V0;
    reg [0:0] SE_redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_5_R_v_0;
    wire [0:0] SE_redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_5_v_s_0;
    wire [0:0] SE_redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_5_s_tv_0;
    wire [0:0] SE_redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_5_backEN;
    wire [0:0] SE_redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_5_backStall;
    wire [0:0] SE_redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_5_V0;
    reg [0:0] SE_redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_6_R_v_0;
    wire [0:0] SE_redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_6_v_s_0;
    wire [0:0] SE_redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_6_s_tv_0;
    wire [0:0] SE_redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_6_backEN;
    wire [0:0] SE_redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_6_backStall;
    wire [0:0] SE_redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_6_V0;
    wire [0:0] SR_SE_redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_5_i_valid;
    reg [0:0] SR_SE_redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_5_r_valid;
    reg [31:0] SR_SE_redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_5_r_data0;
    reg [424:0] SR_SE_redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_5_r_data1;
    wire [0:0] SR_SE_redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_5_backStall;
    wire [0:0] SR_SE_redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_5_V;
    wire [31:0] SR_SE_redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_5_D0;
    wire [424:0] SR_SE_redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_5_D1;


    // bubble_join_stall_entry(BITJOIN,59)
    assign bubble_join_stall_entry_q = {in_unnamed_conv2d3x312, in_mul46_add4169, in_k_059160, in_j_062146, in_c0_exe977, in_c0_exe867, in_c0_exe758, in_c0_exe646, in_c0_exe539, in_c0_exe428, in_c0_exe319, in_c0_exe18, in_c0_exe16137, in_c0_exe15127, in_c0_exe14117, in_c0_exe13108, in_c0_exe1298, in_c0_exe1234176, in_c0_exe1197, in_c0_exe1195164, in_c0_exe1186155, in_c0_exe1087};

    // bubble_select_stall_entry(BITSELECT,60)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[0:0]);
    assign bubble_select_stall_entry_c = $unsigned(bubble_join_stall_entry_q[32:1]);
    assign bubble_select_stall_entry_d = $unsigned(bubble_join_stall_entry_q[64:33]);
    assign bubble_select_stall_entry_e = $unsigned(bubble_join_stall_entry_q[65:65]);
    assign bubble_select_stall_entry_f = $unsigned(bubble_join_stall_entry_q[97:66]);
    assign bubble_select_stall_entry_g = $unsigned(bubble_join_stall_entry_q[129:98]);
    assign bubble_select_stall_entry_h = $unsigned(bubble_join_stall_entry_q[130:130]);
    assign bubble_select_stall_entry_i = $unsigned(bubble_join_stall_entry_q[131:131]);
    assign bubble_select_stall_entry_j = $unsigned(bubble_join_stall_entry_q[132:132]);
    assign bubble_select_stall_entry_k = $unsigned(bubble_join_stall_entry_q[133:133]);
    assign bubble_select_stall_entry_l = $unsigned(bubble_join_stall_entry_q[197:134]);
    assign bubble_select_stall_entry_m = $unsigned(bubble_join_stall_entry_q[261:198]);
    assign bubble_select_stall_entry_n = $unsigned(bubble_join_stall_entry_q[262:262]);
    assign bubble_select_stall_entry_o = $unsigned(bubble_join_stall_entry_q[294:263]);
    assign bubble_select_stall_entry_p = $unsigned(bubble_join_stall_entry_q[326:295]);
    assign bubble_select_stall_entry_q = $unsigned(bubble_join_stall_entry_q[327:327]);
    assign bubble_select_stall_entry_r = $unsigned(bubble_join_stall_entry_q[328:328]);
    assign bubble_select_stall_entry_s = $unsigned(bubble_join_stall_entry_q[360:329]);
    assign bubble_select_stall_entry_t = $unsigned(bubble_join_stall_entry_q[392:361]);
    assign bubble_select_stall_entry_u = $unsigned(bubble_join_stall_entry_q[424:393]);
    assign bubble_select_stall_entry_v = $unsigned(bubble_join_stall_entry_q[456:425]);
    assign bubble_select_stall_entry_w = $unsigned(bubble_join_stall_entry_q[488:457]);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // SE_redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_1(STALLENABLE,75)
    // Valid signal propagation
    assign SE_redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_1_V0 = SE_redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_1_R_v_0;
    // Stall signal propagation
    assign SE_redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_1_s_tv_0 = SE_redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_2_backStall & SE_redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_1_R_v_0;
    // Backward Enable generation
    assign SE_redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_1_backEN = ~ (SE_redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_1_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_1_v_s_0 = SE_redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_1_backEN & SE_redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_0_V0;
    // Backward Stall generation
    assign SE_redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_1_backStall = ~ (SE_redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_1_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_1_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_1_backEN == 1'b0)
            begin
                SE_redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_1_R_v_0 <= SE_redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_1_R_v_0 & SE_redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_1_s_tv_0;
            end
            else
            begin
                SE_redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_1_R_v_0 <= SE_redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_1_v_s_0;
            end

        end
    end

    // SE_redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_2(STALLENABLE,76)
    // Valid signal propagation
    assign SE_redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_2_V0 = SE_redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_2_R_v_0;
    // Stall signal propagation
    assign SE_redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_2_s_tv_0 = SE_redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_3_backStall & SE_redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_2_R_v_0;
    // Backward Enable generation
    assign SE_redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_2_backEN = ~ (SE_redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_2_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_2_v_s_0 = SE_redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_2_backEN & SE_redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_1_V0;
    // Backward Stall generation
    assign SE_redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_2_backStall = ~ (SE_redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_2_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_2_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_2_backEN == 1'b0)
            begin
                SE_redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_2_R_v_0 <= SE_redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_2_R_v_0 & SE_redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_2_s_tv_0;
            end
            else
            begin
                SE_redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_2_R_v_0 <= SE_redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_2_v_s_0;
            end

        end
    end

    // SE_redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_3(STALLENABLE,77)
    // Valid signal propagation
    assign SE_redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_3_V0 = SE_redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_3_R_v_0;
    // Stall signal propagation
    assign SE_redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_3_s_tv_0 = SE_redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_4_backStall & SE_redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_3_R_v_0;
    // Backward Enable generation
    assign SE_redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_3_backEN = ~ (SE_redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_3_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_3_v_s_0 = SE_redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_3_backEN & SE_redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_2_V0;
    // Backward Stall generation
    assign SE_redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_3_backStall = ~ (SE_redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_3_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_3_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_3_backEN == 1'b0)
            begin
                SE_redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_3_R_v_0 <= SE_redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_3_R_v_0 & SE_redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_3_s_tv_0;
            end
            else
            begin
                SE_redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_3_R_v_0 <= SE_redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_3_v_s_0;
            end

        end
    end

    // join_for_coalesced_delay_0(BITJOIN,42)
    assign join_for_coalesced_delay_0_q = {bubble_select_stall_entry_b, bubble_select_stall_entry_e, bubble_select_stall_entry_r, bubble_select_stall_entry_q, bubble_select_stall_entry_h, bubble_select_stall_entry_n, bubble_select_stall_entry_i, bubble_select_stall_entry_j, bubble_select_stall_entry_k, bubble_select_stall_entry_c, bubble_select_stall_entry_f, bubble_select_stall_entry_g, bubble_select_stall_entry_o, bubble_select_stall_entry_p, bubble_select_stall_entry_s, bubble_select_stall_entry_t, bubble_select_stall_entry_u, bubble_select_stall_entry_w, bubble_select_stall_entry_l, bubble_select_stall_entry_m};

    // coalesced_delay_0_0(REG,51)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_0_0_q <= $unsigned(425'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_0_backEN == 1'b1)
        begin
            coalesced_delay_0_0_q <= $unsigned(join_for_coalesced_delay_0_q);
        end
    end

    // coalesced_delay_0_1(REG,52)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_0_1_q <= $unsigned(425'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_1_backEN == 1'b1)
        begin
            coalesced_delay_0_1_q <= $unsigned(coalesced_delay_0_0_q);
        end
    end

    // coalesced_delay_0_2(REG,53)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_0_2_q <= $unsigned(425'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_2_backEN == 1'b1)
        begin
            coalesced_delay_0_2_q <= $unsigned(coalesced_delay_0_1_q);
        end
    end

    // coalesced_delay_0_3(REG,54)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_0_3_q <= $unsigned(425'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_3_backEN == 1'b1)
        begin
            coalesced_delay_0_3_q <= $unsigned(coalesced_delay_0_2_q);
        end
    end

    // coalesced_delay_0_4(REG,55)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_0_4_q <= $unsigned(425'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_4_backEN == 1'b1)
        begin
            coalesced_delay_0_4_q <= $unsigned(coalesced_delay_0_3_q);
        end
    end

    // c_i32_68(CONSTANT,4)
    assign c_i32_68_q = $unsigned(32'b00000000000000000000000000000110);

    // i_add48_2_conv2d3x34(ADD,7)@0
    assign i_add48_2_conv2d3x34_a = {1'b0, bubble_select_stall_entry_v};
    assign i_add48_2_conv2d3x34_b = {1'b0, c_i32_68_q};
    assign i_add48_2_conv2d3x34_o = $unsigned(i_add48_2_conv2d3x34_a) + $unsigned(i_add48_2_conv2d3x34_b);
    assign i_add48_2_conv2d3x34_q = i_add48_2_conv2d3x34_o[32:0];

    // bgTrunc_i_add48_2_conv2d3x34_sel_x(BITSELECT,16)@0
    assign bgTrunc_i_add48_2_conv2d3x34_sel_x_b = i_add48_2_conv2d3x34_q[31:0];

    // redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_0(REG,44)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_0_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_0_backEN == 1'b1)
        begin
            redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_0_q <= $unsigned(bgTrunc_i_add48_2_conv2d3x34_sel_x_b);
        end
    end

    // redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_1(REG,45)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_1_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_1_backEN == 1'b1)
        begin
            redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_1_q <= $unsigned(redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_0_q);
        end
    end

    // redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_2(REG,46)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_2_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_2_backEN == 1'b1)
        begin
            redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_2_q <= $unsigned(redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_1_q);
        end
    end

    // redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_3(REG,47)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_3_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_3_backEN == 1'b1)
        begin
            redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_3_q <= $unsigned(redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_2_q);
        end
    end

    // redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_4(REG,48)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_4_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_4_backEN == 1'b1)
        begin
            redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_4_q <= $unsigned(redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_3_q);
        end
    end

    // SE_redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_4(STALLENABLE,78)
    // Valid signal propagation
    assign SE_redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_4_V0 = SE_redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_4_R_v_0;
    // Stall signal propagation
    assign SE_redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_4_s_tv_0 = SR_SE_redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_5_backStall & SE_redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_4_R_v_0;
    // Backward Enable generation
    assign SE_redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_4_backEN = ~ (SE_redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_4_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_4_v_s_0 = SE_redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_4_backEN & SE_redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_3_V0;
    // Backward Stall generation
    assign SE_redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_4_backStall = ~ (SE_redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_4_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_4_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_4_backEN == 1'b0)
            begin
                SE_redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_4_R_v_0 <= SE_redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_4_R_v_0 & SE_redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_4_s_tv_0;
            end
            else
            begin
                SE_redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_4_R_v_0 <= SE_redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_4_v_s_0;
            end

        end
    end

    // SR_SE_redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_5(STALLREG,100)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_5_r_valid <= 1'b0;
            SR_SE_redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_5_r_data0 <= 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_5_r_data1 <= 425'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_5_r_valid <= SE_redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_5_backStall & (SR_SE_redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_5_r_valid | SR_SE_redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_5_i_valid);

            if (SR_SE_redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_5_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_5_r_data0 <= $unsigned(redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_4_q);
                SR_SE_redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_5_r_data1 <= $unsigned(coalesced_delay_0_4_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_5_i_valid = SE_redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_4_V0;
    // Stall signal propagation
    assign SR_SE_redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_5_backStall = SR_SE_redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_5_r_valid | ~ (SR_SE_redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_5_i_valid);

    // Valid
    assign SR_SE_redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_5_V = SR_SE_redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_5_r_valid == 1'b1 ? SR_SE_redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_5_r_valid : SR_SE_redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_5_i_valid;

    // Data0
    assign SR_SE_redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_5_D0 = SR_SE_redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_5_r_valid == 1'b1 ? SR_SE_redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_5_r_data0 : redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_4_q;
    // Data1
    assign SR_SE_redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_5_D1 = SR_SE_redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_5_r_valid == 1'b1 ? SR_SE_redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_5_r_data1 : coalesced_delay_0_4_q;

    // SE_redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_5(STALLENABLE,79)
    // Valid signal propagation
    assign SE_redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_5_V0 = SE_redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_5_R_v_0;
    // Stall signal propagation
    assign SE_redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_5_s_tv_0 = SE_redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_6_backStall & SE_redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_5_R_v_0;
    // Backward Enable generation
    assign SE_redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_5_backEN = ~ (SE_redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_5_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_5_v_s_0 = SE_redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_5_backEN & SR_SE_redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_5_V;
    // Backward Stall generation
    assign SE_redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_5_backStall = ~ (SE_redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_5_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_5_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_5_backEN == 1'b0)
            begin
                SE_redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_5_R_v_0 <= SE_redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_5_R_v_0 & SE_redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_5_s_tv_0;
            end
            else
            begin
                SE_redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_5_R_v_0 <= SE_redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_5_v_s_0;
            end

        end
    end

    // SE_redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_6(STALLENABLE,80)
    // Valid signal propagation
    assign SE_redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_6_V0 = SE_redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_6_R_v_0;
    // Stall signal propagation
    assign SE_redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_6_s_tv_0 = SE_out_i_sfc_s_c0_in_for_body25_2_preheader_conv2d3x3s_c0_enter237_conv2d3x32_aunroll_x_backStall & SE_redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_6_R_v_0;
    // Backward Enable generation
    assign SE_redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_6_backEN = ~ (SE_redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_6_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_6_v_s_0 = SE_redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_6_backEN & SE_redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_5_V0;
    // Backward Stall generation
    assign SE_redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_6_backStall = ~ (SE_redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_6_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_6_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_6_backEN == 1'b0)
            begin
                SE_redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_6_R_v_0 <= SE_redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_6_R_v_0 & SE_redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_6_s_tv_0;
            end
            else
            begin
                SE_redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_6_R_v_0 <= SE_redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_6_v_s_0;
            end

        end
    end

    // SE_out_i_sfc_s_c0_in_for_body25_2_preheader_conv2d3x3s_c0_enter237_conv2d3x32_aunroll_x(STALLENABLE,71)
    // Valid signal propagation
    assign SE_out_i_sfc_s_c0_in_for_body25_2_preheader_conv2d3x3s_c0_enter237_conv2d3x32_aunroll_x_V0 = SE_out_i_sfc_s_c0_in_for_body25_2_preheader_conv2d3x3s_c0_enter237_conv2d3x32_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c0_in_for_body25_2_preheader_conv2d3x3s_c0_enter237_conv2d3x32_aunroll_x_backStall = in_stall_in | ~ (SE_out_i_sfc_s_c0_in_for_body25_2_preheader_conv2d3x3s_c0_enter237_conv2d3x32_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c0_in_for_body25_2_preheader_conv2d3x3s_c0_enter237_conv2d3x32_aunroll_x_and0 = i_sfc_s_c0_in_for_body25_2_preheader_conv2d3x3s_c0_enter237_conv2d3x32_aunroll_x_out_o_valid;
    assign SE_out_i_sfc_s_c0_in_for_body25_2_preheader_conv2d3x3s_c0_enter237_conv2d3x32_aunroll_x_wireValid = SE_redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_6_V0 & SE_out_i_sfc_s_c0_in_for_body25_2_preheader_conv2d3x3s_c0_enter237_conv2d3x32_aunroll_x_and0;

    // i_sfc_s_c0_in_for_body25_2_preheader_conv2d3x3s_c0_enter237_conv2d3x32_aunroll_x(BLACKBOX,18)@0
    // in in_i_stall@20000000
    // out out_o_stall@20000000
    // out out_o_valid@7
    // out out_c0_exit241_0_tpl@7
    // out out_c0_exit241_1_tpl@7
    conv2d3x3_i_sfc_s_c0_in_for_body25_2_pre0000_enter237_conv2d3x32 thei_sfc_s_c0_in_for_body25_2_preheader_conv2d3x3s_c0_enter237_conv2d3x32_aunroll_x (
        .in_i_stall(SE_out_i_sfc_s_c0_in_for_body25_2_preheader_conv2d3x3s_c0_enter237_conv2d3x32_aunroll_x_backStall),
        .in_i_valid(SE_stall_entry_V1),
        .in_input_size(in_input_size),
        .in_c0_eni2236_0_tpl(GND_q),
        .in_c0_eni2236_1_tpl(bubble_select_stall_entry_g),
        .in_c0_eni2236_2_tpl(bubble_select_stall_entry_d),
        .out_o_stall(i_sfc_s_c0_in_for_body25_2_preheader_conv2d3x3s_c0_enter237_conv2d3x32_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_for_body25_2_preheader_conv2d3x3s_c0_enter237_conv2d3x32_aunroll_x_out_o_valid),
        .out_c0_exit241_0_tpl(),
        .out_c0_exit241_1_tpl(i_sfc_s_c0_in_for_body25_2_preheader_conv2d3x3s_c0_enter237_conv2d3x32_aunroll_x_out_c0_exit241_1_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_0(STALLENABLE,74)
    // Valid signal propagation
    assign SE_redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_0_V0 = SE_redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_0_R_v_0;
    // Stall signal propagation
    assign SE_redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_0_s_tv_0 = SE_redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_1_backStall & SE_redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_0_R_v_0;
    // Backward Enable generation
    assign SE_redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_0_backEN = ~ (SE_redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_0_v_s_0 = SE_redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_0_backEN & SE_stall_entry_V0;
    // Backward Stall generation
    assign SE_redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_0_backStall = ~ (SE_redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_0_backEN == 1'b0)
            begin
                SE_redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_0_R_v_0 <= SE_redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_0_R_v_0 & SE_redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_0_s_tv_0;
            end
            else
            begin
                SE_redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_0_R_v_0 <= SE_redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_0_v_s_0;
            end

        end
    end

    // SE_stall_entry(STALLENABLE,67)
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
    assign SE_stall_entry_consumed0 = (~ (SE_redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_0_backStall) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg0;
    assign SE_stall_entry_consumed1 = (~ (i_sfc_s_c0_in_for_body25_2_preheader_conv2d3x3s_c0_enter237_conv2d3x32_aunroll_x_out_o_stall) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg1;
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

    // bubble_join_i_sfc_s_c0_in_for_body25_2_preheader_conv2d3x3s_c0_enter237_conv2d3x32_aunroll_x(BITJOIN,63)
    assign bubble_join_i_sfc_s_c0_in_for_body25_2_preheader_conv2d3x3s_c0_enter237_conv2d3x32_aunroll_x_q = i_sfc_s_c0_in_for_body25_2_preheader_conv2d3x3s_c0_enter237_conv2d3x32_aunroll_x_out_c0_exit241_1_tpl;

    // bubble_select_i_sfc_s_c0_in_for_body25_2_preheader_conv2d3x3s_c0_enter237_conv2d3x32_aunroll_x(BITSELECT,64)
    assign bubble_select_i_sfc_s_c0_in_for_body25_2_preheader_conv2d3x3s_c0_enter237_conv2d3x32_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c0_in_for_body25_2_preheader_conv2d3x3s_c0_enter237_conv2d3x32_aunroll_x_q[31:0]);

    // coalesced_delay_0_5(REG,56)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_0_5_q <= $unsigned(425'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_5_backEN == 1'b1)
        begin
            coalesced_delay_0_5_q <= $unsigned(SR_SE_redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_5_D1);
        end
    end

    // coalesced_delay_0_6(REG,57)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_0_6_q <= $unsigned(425'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_6_backEN == 1'b1)
        begin
            coalesced_delay_0_6_q <= $unsigned(coalesced_delay_0_5_q);
        end
    end

    // sel_for_coalesced_delay_0(BITSELECT,43)
    assign sel_for_coalesced_delay_0_b = $unsigned(coalesced_delay_0_6_q[63:0]);
    assign sel_for_coalesced_delay_0_c = $unsigned(coalesced_delay_0_6_q[127:64]);
    assign sel_for_coalesced_delay_0_d = $unsigned(coalesced_delay_0_6_q[159:128]);
    assign sel_for_coalesced_delay_0_e = $unsigned(coalesced_delay_0_6_q[191:160]);
    assign sel_for_coalesced_delay_0_f = $unsigned(coalesced_delay_0_6_q[223:192]);
    assign sel_for_coalesced_delay_0_g = $unsigned(coalesced_delay_0_6_q[255:224]);
    assign sel_for_coalesced_delay_0_h = $unsigned(coalesced_delay_0_6_q[287:256]);
    assign sel_for_coalesced_delay_0_i = $unsigned(coalesced_delay_0_6_q[319:288]);
    assign sel_for_coalesced_delay_0_j = $unsigned(coalesced_delay_0_6_q[351:320]);
    assign sel_for_coalesced_delay_0_k = $unsigned(coalesced_delay_0_6_q[383:352]);
    assign sel_for_coalesced_delay_0_l = $unsigned(coalesced_delay_0_6_q[415:384]);
    assign sel_for_coalesced_delay_0_m = $unsigned(coalesced_delay_0_6_q[416:416]);
    assign sel_for_coalesced_delay_0_n = $unsigned(coalesced_delay_0_6_q[417:417]);
    assign sel_for_coalesced_delay_0_o = $unsigned(coalesced_delay_0_6_q[418:418]);
    assign sel_for_coalesced_delay_0_p = $unsigned(coalesced_delay_0_6_q[419:419]);
    assign sel_for_coalesced_delay_0_q = $unsigned(coalesced_delay_0_6_q[420:420]);
    assign sel_for_coalesced_delay_0_r = $unsigned(coalesced_delay_0_6_q[421:421]);
    assign sel_for_coalesced_delay_0_s = $unsigned(coalesced_delay_0_6_q[422:422]);
    assign sel_for_coalesced_delay_0_t = $unsigned(coalesced_delay_0_6_q[423:423]);
    assign sel_for_coalesced_delay_0_u = $unsigned(coalesced_delay_0_6_q[424:424]);

    // redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_5(REG,49)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_5_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_5_backEN == 1'b1)
        begin
            redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_5_q <= $unsigned(SR_SE_redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_5_D0);
        end
    end

    // redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_6(REG,50)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_6_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_6_backEN == 1'b1)
        begin
            redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_6_q <= $unsigned(redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_5_q);
        end
    end

    // dupName_0_sync_out_x(GPOUT,17)@7
    assign out_add48_2 = redist0_bgTrunc_i_add48_2_conv2d3x34_sel_x_b_7_6_q;
    assign out_c0_exe1087 = sel_for_coalesced_delay_0_u;
    assign out_c0_exe1186155 = sel_for_coalesced_delay_0_l;
    assign out_c0_exe1197 = sel_for_coalesced_delay_0_t;
    assign out_c0_exe1234176 = sel_for_coalesced_delay_0_k;
    assign out_c0_exe1242 = bubble_select_i_sfc_s_c0_in_for_body25_2_preheader_conv2d3x3s_c0_enter237_conv2d3x32_aunroll_x_b;
    assign out_c0_exe1298 = sel_for_coalesced_delay_0_j;
    assign out_c0_exe13108 = sel_for_coalesced_delay_0_q;
    assign out_c0_exe14117 = sel_for_coalesced_delay_0_o;
    assign out_c0_exe15127 = sel_for_coalesced_delay_0_n;
    assign out_c0_exe16137 = sel_for_coalesced_delay_0_m;
    assign out_c0_exe18 = sel_for_coalesced_delay_0_c;
    assign out_c0_exe319 = sel_for_coalesced_delay_0_b;
    assign out_c0_exe428 = sel_for_coalesced_delay_0_p;
    assign out_c0_exe539 = sel_for_coalesced_delay_0_i;
    assign out_c0_exe646 = sel_for_coalesced_delay_0_h;
    assign out_c0_exe758 = sel_for_coalesced_delay_0_r;
    assign out_c0_exe867 = sel_for_coalesced_delay_0_s;
    assign out_c0_exe977 = sel_for_coalesced_delay_0_g;
    assign out_j_062146 = sel_for_coalesced_delay_0_f;
    assign out_k_059160 = sel_for_coalesced_delay_0_e;
    assign out_unnamed_conv2d3x312 = sel_for_coalesced_delay_0_d;
    assign out_valid_out = SE_out_i_sfc_s_c0_in_for_body25_2_preheader_conv2d3x3s_c0_enter237_conv2d3x32_aunroll_x_V0;

endmodule
