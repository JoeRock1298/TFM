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

// SystemVerilog created from conv2d3x3_bb_B6_stall_region
// SystemVerilog created on Tue Jun  6 18:45:14 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2d3x3_bb_B6_stall_region (
    input wire [31:0] in_input_size,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_c0_exe1080,
    input wire [63:0] in_c0_exe110,
    input wire [31:0] in_c0_exe1186157,
    input wire [0:0] in_c0_exe1189,
    input wire [31:0] in_c0_exe1195166,
    input wire [31:0] in_c0_exe12100,
    input wire [31:0] in_c0_exe1214173,
    input wire [0:0] in_c0_exe13110,
    input wire [0:0] in_c0_exe14119,
    input wire [0:0] in_c0_exe15129,
    input wire [0:0] in_c0_exe16139,
    input wire [63:0] in_c0_exe321,
    input wire [0:0] in_c0_exe430,
    input wire [31:0] in_c0_exe541,
    input wire [31:0] in_c0_exe648,
    input wire [0:0] in_c0_exe760,
    input wire [0:0] in_c0_exe869,
    input wire [31:0] in_c0_exe970,
    input wire [31:0] in_j_062148,
    input wire [31:0] in_k_059162,
    input wire [31:0] in_mul46_add4171,
    input wire [31:0] in_unnamed_conv2d3x39,
    input wire [0:0] in_valid_in,
    output wire [31:0] out_add48_1_le,
    output wire [0:0] out_c0_exe1080,
    output wire [63:0] out_c0_exe110,
    output wire [31:0] out_c0_exe1186157,
    output wire [0:0] out_c0_exe1189,
    output wire [31:0] out_c0_exe1195166,
    output wire [31:0] out_c0_exe12100,
    output wire [31:0] out_c0_exe1214173,
    output wire [31:0] out_c0_exe1222,
    output wire [0:0] out_c0_exe13110,
    output wire [0:0] out_c0_exe14119,
    output wire [0:0] out_c0_exe15129,
    output wire [0:0] out_c0_exe16139,
    output wire [63:0] out_c0_exe321,
    output wire [0:0] out_c0_exe430,
    output wire [31:0] out_c0_exe541,
    output wire [31:0] out_c0_exe648,
    output wire [0:0] out_c0_exe760,
    output wire [0:0] out_c0_exe869,
    output wire [31:0] out_c0_exe970,
    output wire [31:0] out_j_062148,
    output wire [31:0] out_k_059162,
    output wire [31:0] out_mul46_add4171,
    output wire [31:0] out_unnamed_conv2d3x39,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [31:0] c_i32_38_q;
    wire [32:0] i_add48_1_le_conv2d3x34_a;
    wire [32:0] i_add48_1_le_conv2d3x34_b;
    logic [32:0] i_add48_1_le_conv2d3x34_o;
    wire [32:0] i_add48_1_le_conv2d3x34_q;
    wire [31:0] bgTrunc_i_add48_1_le_conv2d3x34_sel_x_b;
    wire [0:0] i_sfc_s_c0_in_for_body25_1_preheader_conv2d3x3s_c0_enter217_conv2d3x32_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_for_body25_1_preheader_conv2d3x3s_c0_enter217_conv2d3x32_aunroll_x_out_o_valid;
    wire [31:0] i_sfc_s_c0_in_for_body25_1_preheader_conv2d3x3s_c0_enter217_conv2d3x32_aunroll_x_out_c0_exit221_1_tpl;
    wire [488:0] join_for_coalesced_delay_0_q;
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
    wire [31:0] sel_for_coalesced_delay_0_m;
    wire [31:0] sel_for_coalesced_delay_0_n;
    wire [0:0] sel_for_coalesced_delay_0_o;
    wire [0:0] sel_for_coalesced_delay_0_p;
    wire [0:0] sel_for_coalesced_delay_0_q;
    wire [0:0] sel_for_coalesced_delay_0_r;
    wire [0:0] sel_for_coalesced_delay_0_s;
    wire [0:0] sel_for_coalesced_delay_0_t;
    wire [0:0] sel_for_coalesced_delay_0_u;
    wire [0:0] sel_for_coalesced_delay_0_v;
    wire [0:0] sel_for_coalesced_delay_0_w;
    reg [488:0] coalesced_delay_0_0_q;
    reg [488:0] coalesced_delay_0_1_q;
    reg [488:0] coalesced_delay_0_2_q;
    reg [488:0] coalesced_delay_0_3_q;
    reg [488:0] coalesced_delay_0_4_q;
    reg [488:0] coalesced_delay_0_5_q;
    reg [488:0] coalesced_delay_0_6_q;
    wire [488:0] bubble_join_stall_entry_q;
    wire [0:0] bubble_select_stall_entry_b;
    wire [63:0] bubble_select_stall_entry_c;
    wire [31:0] bubble_select_stall_entry_d;
    wire [0:0] bubble_select_stall_entry_e;
    wire [31:0] bubble_select_stall_entry_f;
    wire [31:0] bubble_select_stall_entry_g;
    wire [31:0] bubble_select_stall_entry_h;
    wire [0:0] bubble_select_stall_entry_i;
    wire [0:0] bubble_select_stall_entry_j;
    wire [0:0] bubble_select_stall_entry_k;
    wire [0:0] bubble_select_stall_entry_l;
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
    wire [31:0] bubble_join_i_sfc_s_c0_in_for_body25_1_preheader_conv2d3x3s_c0_enter217_conv2d3x32_aunroll_x_q;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body25_1_preheader_conv2d3x3s_c0_enter217_conv2d3x32_aunroll_x_b;
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
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body25_1_preheader_conv2d3x3s_c0_enter217_conv2d3x32_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body25_1_preheader_conv2d3x3s_c0_enter217_conv2d3x32_aunroll_x_and0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body25_1_preheader_conv2d3x3s_c0_enter217_conv2d3x32_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body25_1_preheader_conv2d3x3s_c0_enter217_conv2d3x32_aunroll_x_V0;
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
    reg [488:0] SR_SE_coalesced_delay_0_5_r_data0;
    wire [0:0] SR_SE_coalesced_delay_0_5_backStall;
    wire [0:0] SR_SE_coalesced_delay_0_5_V;
    wire [488:0] SR_SE_coalesced_delay_0_5_D0;


    // bubble_join_stall_entry(BITJOIN,53)
    assign bubble_join_stall_entry_q = {in_unnamed_conv2d3x39, in_mul46_add4171, in_k_059162, in_j_062148, in_c0_exe970, in_c0_exe869, in_c0_exe760, in_c0_exe648, in_c0_exe541, in_c0_exe430, in_c0_exe321, in_c0_exe16139, in_c0_exe15129, in_c0_exe14119, in_c0_exe13110, in_c0_exe1214173, in_c0_exe12100, in_c0_exe1195166, in_c0_exe1189, in_c0_exe1186157, in_c0_exe110, in_c0_exe1080};

    // bubble_select_stall_entry(BITSELECT,54)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[0:0]);
    assign bubble_select_stall_entry_c = $unsigned(bubble_join_stall_entry_q[64:1]);
    assign bubble_select_stall_entry_d = $unsigned(bubble_join_stall_entry_q[96:65]);
    assign bubble_select_stall_entry_e = $unsigned(bubble_join_stall_entry_q[97:97]);
    assign bubble_select_stall_entry_f = $unsigned(bubble_join_stall_entry_q[129:98]);
    assign bubble_select_stall_entry_g = $unsigned(bubble_join_stall_entry_q[161:130]);
    assign bubble_select_stall_entry_h = $unsigned(bubble_join_stall_entry_q[193:162]);
    assign bubble_select_stall_entry_i = $unsigned(bubble_join_stall_entry_q[194:194]);
    assign bubble_select_stall_entry_j = $unsigned(bubble_join_stall_entry_q[195:195]);
    assign bubble_select_stall_entry_k = $unsigned(bubble_join_stall_entry_q[196:196]);
    assign bubble_select_stall_entry_l = $unsigned(bubble_join_stall_entry_q[197:197]);
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

    // SE_coalesced_delay_0_1(STALLENABLE,69)
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

    // SE_coalesced_delay_0_2(STALLENABLE,70)
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

    // SE_coalesced_delay_0_3(STALLENABLE,71)
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

    // join_for_coalesced_delay_0(BITJOIN,43)
    assign join_for_coalesced_delay_0_q = {bubble_select_stall_entry_e, bubble_select_stall_entry_i, bubble_select_stall_entry_j, bubble_select_stall_entry_k, bubble_select_stall_entry_l, bubble_select_stall_entry_b, bubble_select_stall_entry_q, bubble_select_stall_entry_r, bubble_select_stall_entry_n, bubble_select_stall_entry_p, bubble_select_stall_entry_o, bubble_select_stall_entry_d, bubble_select_stall_entry_s, bubble_select_stall_entry_t, bubble_select_stall_entry_u, bubble_select_stall_entry_v, bubble_select_stall_entry_h, bubble_select_stall_entry_g, bubble_select_stall_entry_f, bubble_select_stall_entry_w, bubble_select_stall_entry_m, bubble_select_stall_entry_c};

    // coalesced_delay_0_0(REG,45)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_0_0_q <= $unsigned(489'b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_coalesced_delay_0_0_backEN == 1'b1)
        begin
            coalesced_delay_0_0_q <= $unsigned(join_for_coalesced_delay_0_q);
        end
    end

    // coalesced_delay_0_1(REG,46)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_0_1_q <= $unsigned(489'b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_coalesced_delay_0_1_backEN == 1'b1)
        begin
            coalesced_delay_0_1_q <= $unsigned(coalesced_delay_0_0_q);
        end
    end

    // coalesced_delay_0_2(REG,47)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_0_2_q <= $unsigned(489'b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_coalesced_delay_0_2_backEN == 1'b1)
        begin
            coalesced_delay_0_2_q <= $unsigned(coalesced_delay_0_1_q);
        end
    end

    // coalesced_delay_0_3(REG,48)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_0_3_q <= $unsigned(489'b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_coalesced_delay_0_3_backEN == 1'b1)
        begin
            coalesced_delay_0_3_q <= $unsigned(coalesced_delay_0_2_q);
        end
    end

    // coalesced_delay_0_4(REG,49)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_0_4_q <= $unsigned(489'b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_coalesced_delay_0_4_backEN == 1'b1)
        begin
            coalesced_delay_0_4_q <= $unsigned(coalesced_delay_0_3_q);
        end
    end

    // SE_coalesced_delay_0_4(STALLENABLE,72)
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

    // SR_SE_coalesced_delay_0_5(STALLREG,87)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_coalesced_delay_0_5_r_valid <= 1'b0;
            SR_SE_coalesced_delay_0_5_r_data0 <= 489'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
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

    // SE_coalesced_delay_0_5(STALLENABLE,73)
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

    // SE_coalesced_delay_0_6(STALLENABLE,74)
    // Valid signal propagation
    assign SE_coalesced_delay_0_6_V0 = SE_coalesced_delay_0_6_R_v_0;
    // Stall signal propagation
    assign SE_coalesced_delay_0_6_s_tv_0 = SE_out_i_sfc_s_c0_in_for_body25_1_preheader_conv2d3x3s_c0_enter217_conv2d3x32_aunroll_x_backStall & SE_coalesced_delay_0_6_R_v_0;
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

    // SE_out_i_sfc_s_c0_in_for_body25_1_preheader_conv2d3x3s_c0_enter217_conv2d3x32_aunroll_x(STALLENABLE,65)
    // Valid signal propagation
    assign SE_out_i_sfc_s_c0_in_for_body25_1_preheader_conv2d3x3s_c0_enter217_conv2d3x32_aunroll_x_V0 = SE_out_i_sfc_s_c0_in_for_body25_1_preheader_conv2d3x3s_c0_enter217_conv2d3x32_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c0_in_for_body25_1_preheader_conv2d3x3s_c0_enter217_conv2d3x32_aunroll_x_backStall = in_stall_in | ~ (SE_out_i_sfc_s_c0_in_for_body25_1_preheader_conv2d3x3s_c0_enter217_conv2d3x32_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c0_in_for_body25_1_preheader_conv2d3x3s_c0_enter217_conv2d3x32_aunroll_x_and0 = i_sfc_s_c0_in_for_body25_1_preheader_conv2d3x3s_c0_enter217_conv2d3x32_aunroll_x_out_o_valid;
    assign SE_out_i_sfc_s_c0_in_for_body25_1_preheader_conv2d3x3s_c0_enter217_conv2d3x32_aunroll_x_wireValid = SE_coalesced_delay_0_6_V0 & SE_out_i_sfc_s_c0_in_for_body25_1_preheader_conv2d3x3s_c0_enter217_conv2d3x32_aunroll_x_and0;

    // i_sfc_s_c0_in_for_body25_1_preheader_conv2d3x3s_c0_enter217_conv2d3x32_aunroll_x(BLACKBOX,18)@0
    // in in_i_stall@20000000
    // out out_o_stall@20000000
    // out out_o_valid@7
    // out out_c0_exit221_0_tpl@7
    // out out_c0_exit221_1_tpl@7
    conv2d3x3_i_sfc_s_c0_in_for_body25_1_pre0000_enter217_conv2d3x32 thei_sfc_s_c0_in_for_body25_1_preheader_conv2d3x3s_c0_enter217_conv2d3x32_aunroll_x (
        .in_i_stall(SE_out_i_sfc_s_c0_in_for_body25_1_preheader_conv2d3x3s_c0_enter217_conv2d3x32_aunroll_x_backStall),
        .in_i_valid(SE_stall_entry_V1),
        .in_input_size(in_input_size),
        .in_c0_eni2216_0_tpl(GND_q),
        .in_c0_eni2216_1_tpl(bubble_select_stall_entry_s),
        .in_c0_eni2216_2_tpl(bubble_select_stall_entry_f),
        .out_o_stall(i_sfc_s_c0_in_for_body25_1_preheader_conv2d3x3s_c0_enter217_conv2d3x32_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_for_body25_1_preheader_conv2d3x3s_c0_enter217_conv2d3x32_aunroll_x_out_o_valid),
        .out_c0_exit221_0_tpl(),
        .out_c0_exit221_1_tpl(i_sfc_s_c0_in_for_body25_1_preheader_conv2d3x3s_c0_enter217_conv2d3x32_aunroll_x_out_c0_exit221_1_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_coalesced_delay_0_0(STALLENABLE,68)
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

    // SE_stall_entry(STALLENABLE,61)
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
    assign SE_stall_entry_consumed1 = (~ (i_sfc_s_c0_in_for_body25_1_preheader_conv2d3x3s_c0_enter217_conv2d3x32_aunroll_x_out_o_stall) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg1;
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

    // bubble_join_i_sfc_s_c0_in_for_body25_1_preheader_conv2d3x3s_c0_enter217_conv2d3x32_aunroll_x(BITJOIN,57)
    assign bubble_join_i_sfc_s_c0_in_for_body25_1_preheader_conv2d3x3s_c0_enter217_conv2d3x32_aunroll_x_q = i_sfc_s_c0_in_for_body25_1_preheader_conv2d3x3s_c0_enter217_conv2d3x32_aunroll_x_out_c0_exit221_1_tpl;

    // bubble_select_i_sfc_s_c0_in_for_body25_1_preheader_conv2d3x3s_c0_enter217_conv2d3x32_aunroll_x(BITSELECT,58)
    assign bubble_select_i_sfc_s_c0_in_for_body25_1_preheader_conv2d3x3s_c0_enter217_conv2d3x32_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c0_in_for_body25_1_preheader_conv2d3x3s_c0_enter217_conv2d3x32_aunroll_x_q[31:0]);

    // coalesced_delay_0_5(REG,50)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_0_5_q <= $unsigned(489'b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_coalesced_delay_0_5_backEN == 1'b1)
        begin
            coalesced_delay_0_5_q <= $unsigned(SR_SE_coalesced_delay_0_5_D0);
        end
    end

    // coalesced_delay_0_6(REG,51)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_0_6_q <= $unsigned(489'b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_coalesced_delay_0_6_backEN == 1'b1)
        begin
            coalesced_delay_0_6_q <= $unsigned(coalesced_delay_0_5_q);
        end
    end

    // sel_for_coalesced_delay_0(BITSELECT,44)
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
    assign sel_for_coalesced_delay_0_m = $unsigned(coalesced_delay_0_6_q[447:416]);
    assign sel_for_coalesced_delay_0_n = $unsigned(coalesced_delay_0_6_q[479:448]);
    assign sel_for_coalesced_delay_0_o = $unsigned(coalesced_delay_0_6_q[480:480]);
    assign sel_for_coalesced_delay_0_p = $unsigned(coalesced_delay_0_6_q[481:481]);
    assign sel_for_coalesced_delay_0_q = $unsigned(coalesced_delay_0_6_q[482:482]);
    assign sel_for_coalesced_delay_0_r = $unsigned(coalesced_delay_0_6_q[483:483]);
    assign sel_for_coalesced_delay_0_s = $unsigned(coalesced_delay_0_6_q[484:484]);
    assign sel_for_coalesced_delay_0_t = $unsigned(coalesced_delay_0_6_q[485:485]);
    assign sel_for_coalesced_delay_0_u = $unsigned(coalesced_delay_0_6_q[486:486]);
    assign sel_for_coalesced_delay_0_v = $unsigned(coalesced_delay_0_6_q[487:487]);
    assign sel_for_coalesced_delay_0_w = $unsigned(coalesced_delay_0_6_q[488:488]);

    // c_i32_38(CONSTANT,4)
    assign c_i32_38_q = $unsigned(32'b00000000000000000000000000000011);

    // i_add48_1_le_conv2d3x34(ADD,7)@7
    assign i_add48_1_le_conv2d3x34_a = {1'b0, sel_for_coalesced_delay_0_h};
    assign i_add48_1_le_conv2d3x34_b = {1'b0, c_i32_38_q};
    assign i_add48_1_le_conv2d3x34_o = $unsigned(i_add48_1_le_conv2d3x34_a) + $unsigned(i_add48_1_le_conv2d3x34_b);
    assign i_add48_1_le_conv2d3x34_q = i_add48_1_le_conv2d3x34_o[32:0];

    // bgTrunc_i_add48_1_le_conv2d3x34_sel_x(BITSELECT,16)@7
    assign bgTrunc_i_add48_1_le_conv2d3x34_sel_x_b = i_add48_1_le_conv2d3x34_q[31:0];

    // dupName_0_sync_out_x(GPOUT,17)@7
    assign out_add48_1_le = bgTrunc_i_add48_1_le_conv2d3x34_sel_x_b;
    assign out_c0_exe1080 = sel_for_coalesced_delay_0_r;
    assign out_c0_exe110 = sel_for_coalesced_delay_0_b;
    assign out_c0_exe1186157 = sel_for_coalesced_delay_0_l;
    assign out_c0_exe1189 = sel_for_coalesced_delay_0_w;
    assign out_c0_exe1195166 = sel_for_coalesced_delay_0_e;
    assign out_c0_exe12100 = sel_for_coalesced_delay_0_f;
    assign out_c0_exe1214173 = sel_for_coalesced_delay_0_g;
    assign out_c0_exe1222 = bubble_select_i_sfc_s_c0_in_for_body25_1_preheader_conv2d3x3s_c0_enter217_conv2d3x32_aunroll_x_b;
    assign out_c0_exe13110 = sel_for_coalesced_delay_0_v;
    assign out_c0_exe14119 = sel_for_coalesced_delay_0_u;
    assign out_c0_exe15129 = sel_for_coalesced_delay_0_t;
    assign out_c0_exe16139 = sel_for_coalesced_delay_0_s;
    assign out_c0_exe321 = sel_for_coalesced_delay_0_c;
    assign out_c0_exe430 = sel_for_coalesced_delay_0_o;
    assign out_c0_exe541 = sel_for_coalesced_delay_0_m;
    assign out_c0_exe648 = sel_for_coalesced_delay_0_n;
    assign out_c0_exe760 = sel_for_coalesced_delay_0_q;
    assign out_c0_exe869 = sel_for_coalesced_delay_0_p;
    assign out_c0_exe970 = sel_for_coalesced_delay_0_k;
    assign out_j_062148 = sel_for_coalesced_delay_0_j;
    assign out_k_059162 = sel_for_coalesced_delay_0_i;
    assign out_mul46_add4171 = sel_for_coalesced_delay_0_h;
    assign out_unnamed_conv2d3x39 = sel_for_coalesced_delay_0_d;
    assign out_valid_out = SE_out_i_sfc_s_c0_in_for_body25_1_preheader_conv2d3x3s_c0_enter217_conv2d3x32_aunroll_x_V0;

endmodule
