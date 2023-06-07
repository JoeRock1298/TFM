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

// SystemVerilog created from maxpool2d_bb_B1_stall_region
// SystemVerilog created on Tue Jun  6 18:45:14 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module maxpool2d_bb_B1_stall_region (
    input wire [31:0] in_output_size,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [63:0] in_c0_exe12,
    input wire [63:0] in_c0_exe26,
    input wire [0:0] in_c0_exe38,
    input wire [0:0] in_c0_exe411,
    input wire [31:0] in_i_038,
    input wire [31:0] in_j_036,
    input wire [0:0] in_valid_in,
    output wire [63:0] out_c0_exe12,
    output wire [31:0] out_c0_exe128,
    output wire [63:0] out_c0_exe26,
    output wire [0:0] out_c0_exe38,
    output wire [0:0] out_c0_exe411,
    output wire [31:0] out_i_038,
    output wire [31:0] out_j_036,
    output wire [31:0] out_mul22,
    output wire [31:0] out_mul24,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] i_mul22_maxpool2d0_vt_join_q;
    wire [30:0] i_mul22_maxpool2d0_vt_select_31_b;
    wire [31:0] i_mul24_maxpool2d4_vt_join_q;
    wire [30:0] i_mul24_maxpool2d4_vt_select_31_b;
    wire [0:0] i_sfc_s_c0_in_for_cond12_preheader_lr_ph_maxpool2ds_c0_enter2422_maxpool2d2_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_for_cond12_preheader_lr_ph_maxpool2ds_c0_enter2422_maxpool2d2_aunroll_x_out_o_valid;
    wire [31:0] i_sfc_s_c0_in_for_cond12_preheader_lr_ph_maxpool2ds_c0_enter2422_maxpool2d2_aunroll_x_out_c0_exit27_1_tpl;
    wire [0:0] maxpool2d_B1_merge_reg_aunroll_x_out_stall_out;
    wire [0:0] maxpool2d_B1_merge_reg_aunroll_x_out_valid_out;
    wire [31:0] maxpool2d_B1_merge_reg_aunroll_x_out_data_out_0_tpl;
    wire [31:0] maxpool2d_B1_merge_reg_aunroll_x_out_data_out_1_tpl;
    wire [63:0] maxpool2d_B1_merge_reg_aunroll_x_out_data_out_2_tpl;
    wire [63:0] maxpool2d_B1_merge_reg_aunroll_x_out_data_out_3_tpl;
    wire [0:0] maxpool2d_B1_merge_reg_aunroll_x_out_data_out_4_tpl;
    wire [0:0] maxpool2d_B1_merge_reg_aunroll_x_out_data_out_5_tpl;
    wire [30:0] leftShiftStage0Idx1Rng1_uid39_i_mul22_maxpool2d0_shift_x_in;
    wire [30:0] leftShiftStage0Idx1Rng1_uid39_i_mul22_maxpool2d0_shift_x_b;
    wire [31:0] leftShiftStage0Idx1_uid40_i_mul22_maxpool2d0_shift_x_q;
    wire [0:0] leftShiftStage0_uid42_i_mul22_maxpool2d0_shift_x_s;
    reg [31:0] leftShiftStage0_uid42_i_mul22_maxpool2d0_shift_x_q;
    wire [30:0] leftShiftStage0Idx1Rng1_uid47_i_mul24_maxpool2d0_shift_x_in;
    wire [30:0] leftShiftStage0Idx1Rng1_uid47_i_mul24_maxpool2d0_shift_x_b;
    wire [31:0] leftShiftStage0Idx1_uid48_i_mul24_maxpool2d0_shift_x_q;
    wire [0:0] leftShiftStage0_uid50_i_mul24_maxpool2d0_shift_x_s;
    reg [31:0] leftShiftStage0_uid50_i_mul24_maxpool2d0_shift_x_q;
    wire [193:0] join_for_coalesced_delay_0_q;
    wire [63:0] sel_for_coalesced_delay_0_b;
    wire [63:0] sel_for_coalesced_delay_0_c;
    wire [31:0] sel_for_coalesced_delay_0_d;
    wire [31:0] sel_for_coalesced_delay_0_e;
    wire [0:0] sel_for_coalesced_delay_0_f;
    wire [0:0] sel_for_coalesced_delay_0_g;
    reg [193:0] coalesced_delay_0_0_q;
    reg [193:0] coalesced_delay_0_1_q;
    reg [193:0] coalesced_delay_0_2_q;
    reg [193:0] coalesced_delay_0_3_q;
    reg [193:0] coalesced_delay_0_4_q;
    reg [193:0] coalesced_delay_0_5_q;
    reg [193:0] coalesced_delay_0_6_q;
    wire [193:0] bubble_join_stall_entry_q;
    wire [63:0] bubble_select_stall_entry_b;
    wire [63:0] bubble_select_stall_entry_c;
    wire [0:0] bubble_select_stall_entry_d;
    wire [0:0] bubble_select_stall_entry_e;
    wire [31:0] bubble_select_stall_entry_f;
    wire [31:0] bubble_select_stall_entry_g;
    wire [31:0] bubble_join_i_sfc_s_c0_in_for_cond12_preheader_lr_ph_maxpool2ds_c0_enter2422_maxpool2d2_aunroll_x_q;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond12_preheader_lr_ph_maxpool2ds_c0_enter2422_maxpool2d2_aunroll_x_b;
    wire [193:0] bubble_join_maxpool2d_B1_merge_reg_aunroll_x_q;
    wire [31:0] bubble_select_maxpool2d_B1_merge_reg_aunroll_x_b;
    wire [31:0] bubble_select_maxpool2d_B1_merge_reg_aunroll_x_c;
    wire [63:0] bubble_select_maxpool2d_B1_merge_reg_aunroll_x_d;
    wire [63:0] bubble_select_maxpool2d_B1_merge_reg_aunroll_x_e;
    wire [0:0] bubble_select_maxpool2d_B1_merge_reg_aunroll_x_f;
    wire [0:0] bubble_select_maxpool2d_B1_merge_reg_aunroll_x_g;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond12_preheader_lr_ph_maxpool2ds_c0_enter2422_maxpool2d2_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond12_preheader_lr_ph_maxpool2ds_c0_enter2422_maxpool2d2_aunroll_x_and0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond12_preheader_lr_ph_maxpool2ds_c0_enter2422_maxpool2d2_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond12_preheader_lr_ph_maxpool2ds_c0_enter2422_maxpool2d2_aunroll_x_V0;
    wire [0:0] SE_out_maxpool2d_B1_merge_reg_aunroll_x_wireValid;
    wire [0:0] SE_out_maxpool2d_B1_merge_reg_aunroll_x_wireStall;
    wire [0:0] SE_out_maxpool2d_B1_merge_reg_aunroll_x_StallValid;
    wire [0:0] SE_out_maxpool2d_B1_merge_reg_aunroll_x_toReg0;
    reg [0:0] SE_out_maxpool2d_B1_merge_reg_aunroll_x_fromReg0;
    wire [0:0] SE_out_maxpool2d_B1_merge_reg_aunroll_x_consumed0;
    wire [0:0] SE_out_maxpool2d_B1_merge_reg_aunroll_x_toReg1;
    reg [0:0] SE_out_maxpool2d_B1_merge_reg_aunroll_x_fromReg1;
    wire [0:0] SE_out_maxpool2d_B1_merge_reg_aunroll_x_consumed1;
    wire [0:0] SE_out_maxpool2d_B1_merge_reg_aunroll_x_or0;
    wire [0:0] SE_out_maxpool2d_B1_merge_reg_aunroll_x_backStall;
    wire [0:0] SE_out_maxpool2d_B1_merge_reg_aunroll_x_V0;
    wire [0:0] SE_out_maxpool2d_B1_merge_reg_aunroll_x_V1;
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
    reg [193:0] SR_SE_coalesced_delay_0_5_r_data0;
    wire [0:0] SR_SE_coalesced_delay_0_5_backStall;
    wire [0:0] SR_SE_coalesced_delay_0_5_V;
    wire [193:0] SR_SE_coalesced_delay_0_5_D0;


    // bubble_join_stall_entry(BITJOIN,68)
    assign bubble_join_stall_entry_q = {in_j_036, in_i_038, in_c0_exe411, in_c0_exe38, in_c0_exe26, in_c0_exe12};

    // bubble_select_stall_entry(BITSELECT,69)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[63:0]);
    assign bubble_select_stall_entry_c = $unsigned(bubble_join_stall_entry_q[127:64]);
    assign bubble_select_stall_entry_d = $unsigned(bubble_join_stall_entry_q[128:128]);
    assign bubble_select_stall_entry_e = $unsigned(bubble_join_stall_entry_q[129:129]);
    assign bubble_select_stall_entry_f = $unsigned(bubble_join_stall_entry_q[161:130]);
    assign bubble_select_stall_entry_g = $unsigned(bubble_join_stall_entry_q[193:162]);

    // bubble_join_maxpool2d_B1_merge_reg_aunroll_x(BITJOIN,76)
    assign bubble_join_maxpool2d_B1_merge_reg_aunroll_x_q = {maxpool2d_B1_merge_reg_aunroll_x_out_data_out_5_tpl, maxpool2d_B1_merge_reg_aunroll_x_out_data_out_4_tpl, maxpool2d_B1_merge_reg_aunroll_x_out_data_out_3_tpl, maxpool2d_B1_merge_reg_aunroll_x_out_data_out_2_tpl, maxpool2d_B1_merge_reg_aunroll_x_out_data_out_1_tpl, maxpool2d_B1_merge_reg_aunroll_x_out_data_out_0_tpl};

    // bubble_select_maxpool2d_B1_merge_reg_aunroll_x(BITSELECT,77)
    assign bubble_select_maxpool2d_B1_merge_reg_aunroll_x_b = $unsigned(bubble_join_maxpool2d_B1_merge_reg_aunroll_x_q[31:0]);
    assign bubble_select_maxpool2d_B1_merge_reg_aunroll_x_c = $unsigned(bubble_join_maxpool2d_B1_merge_reg_aunroll_x_q[63:32]);
    assign bubble_select_maxpool2d_B1_merge_reg_aunroll_x_d = $unsigned(bubble_join_maxpool2d_B1_merge_reg_aunroll_x_q[127:64]);
    assign bubble_select_maxpool2d_B1_merge_reg_aunroll_x_e = $unsigned(bubble_join_maxpool2d_B1_merge_reg_aunroll_x_q[191:128]);
    assign bubble_select_maxpool2d_B1_merge_reg_aunroll_x_f = $unsigned(bubble_join_maxpool2d_B1_merge_reg_aunroll_x_q[192:192]);
    assign bubble_select_maxpool2d_B1_merge_reg_aunroll_x_g = $unsigned(bubble_join_maxpool2d_B1_merge_reg_aunroll_x_q[193:193]);

    // join_for_coalesced_delay_0(BITJOIN,58)
    assign join_for_coalesced_delay_0_q = {bubble_select_maxpool2d_B1_merge_reg_aunroll_x_g, bubble_select_maxpool2d_B1_merge_reg_aunroll_x_f, bubble_select_maxpool2d_B1_merge_reg_aunroll_x_c, bubble_select_maxpool2d_B1_merge_reg_aunroll_x_b, bubble_select_maxpool2d_B1_merge_reg_aunroll_x_e, bubble_select_maxpool2d_B1_merge_reg_aunroll_x_d};

    // coalesced_delay_0_0(REG,60)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_0_0_q <= $unsigned(194'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_coalesced_delay_0_0_backEN == 1'b1)
        begin
            coalesced_delay_0_0_q <= $unsigned(join_for_coalesced_delay_0_q);
        end
    end

    // coalesced_delay_0_1(REG,61)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_0_1_q <= $unsigned(194'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_coalesced_delay_0_1_backEN == 1'b1)
        begin
            coalesced_delay_0_1_q <= $unsigned(coalesced_delay_0_0_q);
        end
    end

    // coalesced_delay_0_2(REG,62)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_0_2_q <= $unsigned(194'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_coalesced_delay_0_2_backEN == 1'b1)
        begin
            coalesced_delay_0_2_q <= $unsigned(coalesced_delay_0_1_q);
        end
    end

    // coalesced_delay_0_3(REG,63)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_0_3_q <= $unsigned(194'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_coalesced_delay_0_3_backEN == 1'b1)
        begin
            coalesced_delay_0_3_q <= $unsigned(coalesced_delay_0_2_q);
        end
    end

    // coalesced_delay_0_4(REG,64)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_0_4_q <= $unsigned(194'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_coalesced_delay_0_4_backEN == 1'b1)
        begin
            coalesced_delay_0_4_q <= $unsigned(coalesced_delay_0_3_q);
        end
    end

    // SE_out_i_sfc_s_c0_in_for_cond12_preheader_lr_ph_maxpool2ds_c0_enter2422_maxpool2d2_aunroll_x(STALLENABLE,85)
    // Valid signal propagation
    assign SE_out_i_sfc_s_c0_in_for_cond12_preheader_lr_ph_maxpool2ds_c0_enter2422_maxpool2d2_aunroll_x_V0 = SE_out_i_sfc_s_c0_in_for_cond12_preheader_lr_ph_maxpool2ds_c0_enter2422_maxpool2d2_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c0_in_for_cond12_preheader_lr_ph_maxpool2ds_c0_enter2422_maxpool2d2_aunroll_x_backStall = in_stall_in | ~ (SE_out_i_sfc_s_c0_in_for_cond12_preheader_lr_ph_maxpool2ds_c0_enter2422_maxpool2d2_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c0_in_for_cond12_preheader_lr_ph_maxpool2ds_c0_enter2422_maxpool2d2_aunroll_x_and0 = i_sfc_s_c0_in_for_cond12_preheader_lr_ph_maxpool2ds_c0_enter2422_maxpool2d2_aunroll_x_out_o_valid;
    assign SE_out_i_sfc_s_c0_in_for_cond12_preheader_lr_ph_maxpool2ds_c0_enter2422_maxpool2d2_aunroll_x_wireValid = SE_coalesced_delay_0_6_V0 & SE_out_i_sfc_s_c0_in_for_cond12_preheader_lr_ph_maxpool2ds_c0_enter2422_maxpool2d2_aunroll_x_and0;

    // SE_coalesced_delay_0_6(STALLENABLE,102)
    // Valid signal propagation
    assign SE_coalesced_delay_0_6_V0 = SE_coalesced_delay_0_6_R_v_0;
    // Stall signal propagation
    assign SE_coalesced_delay_0_6_s_tv_0 = SE_out_i_sfc_s_c0_in_for_cond12_preheader_lr_ph_maxpool2ds_c0_enter2422_maxpool2d2_aunroll_x_backStall & SE_coalesced_delay_0_6_R_v_0;
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

    // SE_coalesced_delay_0_5(STALLENABLE,101)
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

    // SR_SE_coalesced_delay_0_5(STALLREG,119)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_coalesced_delay_0_5_r_valid <= 1'b0;
            SR_SE_coalesced_delay_0_5_r_data0 <= 194'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
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

    // SE_coalesced_delay_0_4(STALLENABLE,100)
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

    // SE_coalesced_delay_0_3(STALLENABLE,99)
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

    // SE_coalesced_delay_0_2(STALLENABLE,98)
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

    // SE_coalesced_delay_0_1(STALLENABLE,97)
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

    // SE_coalesced_delay_0_0(STALLENABLE,96)
    // Valid signal propagation
    assign SE_coalesced_delay_0_0_V0 = SE_coalesced_delay_0_0_R_v_0;
    // Stall signal propagation
    assign SE_coalesced_delay_0_0_s_tv_0 = SE_coalesced_delay_0_1_backStall & SE_coalesced_delay_0_0_R_v_0;
    // Backward Enable generation
    assign SE_coalesced_delay_0_0_backEN = ~ (SE_coalesced_delay_0_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_coalesced_delay_0_0_v_s_0 = SE_coalesced_delay_0_0_backEN & SE_out_maxpool2d_B1_merge_reg_aunroll_x_V1;
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

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_sfc_s_c0_in_for_cond12_preheader_lr_ph_maxpool2ds_c0_enter2422_maxpool2d2_aunroll_x(BLACKBOX,31)@1
    // in in_i_stall@20000000
    // out out_o_stall@20000000
    // out out_o_valid@8
    // out out_c0_exit27_0_tpl@8
    // out out_c0_exit27_1_tpl@8
    maxpool2d_i_sfc_s_c0_in_for_cond12_prehe0000enter2422_maxpool2d2 thei_sfc_s_c0_in_for_cond12_preheader_lr_ph_maxpool2ds_c0_enter2422_maxpool2d2_aunroll_x (
        .in_i_stall(SE_out_i_sfc_s_c0_in_for_cond12_preheader_lr_ph_maxpool2ds_c0_enter2422_maxpool2d2_aunroll_x_backStall),
        .in_i_valid(SE_out_maxpool2d_B1_merge_reg_aunroll_x_V0),
        .in_output_size(in_output_size),
        .in_c0_eni123_0_tpl(GND_q),
        .in_c0_eni123_1_tpl(bubble_select_maxpool2d_B1_merge_reg_aunroll_x_b),
        .out_o_stall(i_sfc_s_c0_in_for_cond12_preheader_lr_ph_maxpool2ds_c0_enter2422_maxpool2d2_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_for_cond12_preheader_lr_ph_maxpool2ds_c0_enter2422_maxpool2d2_aunroll_x_out_o_valid),
        .out_c0_exit27_0_tpl(),
        .out_c0_exit27_1_tpl(i_sfc_s_c0_in_for_cond12_preheader_lr_ph_maxpool2ds_c0_enter2422_maxpool2d2_aunroll_x_out_c0_exit27_1_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_maxpool2d_B1_merge_reg_aunroll_x(STALLENABLE,87)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_maxpool2d_B1_merge_reg_aunroll_x_fromReg0 <= '0;
            SE_out_maxpool2d_B1_merge_reg_aunroll_x_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_maxpool2d_B1_merge_reg_aunroll_x_fromReg0 <= SE_out_maxpool2d_B1_merge_reg_aunroll_x_toReg0;
            // Successor 1
            SE_out_maxpool2d_B1_merge_reg_aunroll_x_fromReg1 <= SE_out_maxpool2d_B1_merge_reg_aunroll_x_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_maxpool2d_B1_merge_reg_aunroll_x_consumed0 = (~ (i_sfc_s_c0_in_for_cond12_preheader_lr_ph_maxpool2ds_c0_enter2422_maxpool2d2_aunroll_x_out_o_stall) & SE_out_maxpool2d_B1_merge_reg_aunroll_x_wireValid) | SE_out_maxpool2d_B1_merge_reg_aunroll_x_fromReg0;
    assign SE_out_maxpool2d_B1_merge_reg_aunroll_x_consumed1 = (~ (SE_coalesced_delay_0_0_backStall) & SE_out_maxpool2d_B1_merge_reg_aunroll_x_wireValid) | SE_out_maxpool2d_B1_merge_reg_aunroll_x_fromReg1;
    // Consuming
    assign SE_out_maxpool2d_B1_merge_reg_aunroll_x_StallValid = SE_out_maxpool2d_B1_merge_reg_aunroll_x_backStall & SE_out_maxpool2d_B1_merge_reg_aunroll_x_wireValid;
    assign SE_out_maxpool2d_B1_merge_reg_aunroll_x_toReg0 = SE_out_maxpool2d_B1_merge_reg_aunroll_x_StallValid & SE_out_maxpool2d_B1_merge_reg_aunroll_x_consumed0;
    assign SE_out_maxpool2d_B1_merge_reg_aunroll_x_toReg1 = SE_out_maxpool2d_B1_merge_reg_aunroll_x_StallValid & SE_out_maxpool2d_B1_merge_reg_aunroll_x_consumed1;
    // Backward Stall generation
    assign SE_out_maxpool2d_B1_merge_reg_aunroll_x_or0 = SE_out_maxpool2d_B1_merge_reg_aunroll_x_consumed0;
    assign SE_out_maxpool2d_B1_merge_reg_aunroll_x_wireStall = ~ (SE_out_maxpool2d_B1_merge_reg_aunroll_x_consumed1 & SE_out_maxpool2d_B1_merge_reg_aunroll_x_or0);
    assign SE_out_maxpool2d_B1_merge_reg_aunroll_x_backStall = SE_out_maxpool2d_B1_merge_reg_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_maxpool2d_B1_merge_reg_aunroll_x_V0 = SE_out_maxpool2d_B1_merge_reg_aunroll_x_wireValid & ~ (SE_out_maxpool2d_B1_merge_reg_aunroll_x_fromReg0);
    assign SE_out_maxpool2d_B1_merge_reg_aunroll_x_V1 = SE_out_maxpool2d_B1_merge_reg_aunroll_x_wireValid & ~ (SE_out_maxpool2d_B1_merge_reg_aunroll_x_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_maxpool2d_B1_merge_reg_aunroll_x_wireValid = maxpool2d_B1_merge_reg_aunroll_x_out_valid_out;

    // maxpool2d_B1_merge_reg_aunroll_x(BLACKBOX,32)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    // out out_valid_out@1
    // out out_data_out_0_tpl@1
    // out out_data_out_1_tpl@1
    // out out_data_out_2_tpl@1
    // out out_data_out_3_tpl@1
    // out out_data_out_4_tpl@1
    // out out_data_out_5_tpl@1
    maxpool2d_B1_merge_reg themaxpool2d_B1_merge_reg_aunroll_x (
        .in_stall_in(SE_out_maxpool2d_B1_merge_reg_aunroll_x_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .in_data_in_0_tpl(bubble_select_stall_entry_f),
        .in_data_in_1_tpl(bubble_select_stall_entry_g),
        .in_data_in_2_tpl(bubble_select_stall_entry_b),
        .in_data_in_3_tpl(bubble_select_stall_entry_c),
        .in_data_in_4_tpl(bubble_select_stall_entry_d),
        .in_data_in_5_tpl(bubble_select_stall_entry_e),
        .out_stall_out(maxpool2d_B1_merge_reg_aunroll_x_out_stall_out),
        .out_valid_out(maxpool2d_B1_merge_reg_aunroll_x_out_valid_out),
        .out_data_out_0_tpl(maxpool2d_B1_merge_reg_aunroll_x_out_data_out_0_tpl),
        .out_data_out_1_tpl(maxpool2d_B1_merge_reg_aunroll_x_out_data_out_1_tpl),
        .out_data_out_2_tpl(maxpool2d_B1_merge_reg_aunroll_x_out_data_out_2_tpl),
        .out_data_out_3_tpl(maxpool2d_B1_merge_reg_aunroll_x_out_data_out_3_tpl),
        .out_data_out_4_tpl(maxpool2d_B1_merge_reg_aunroll_x_out_data_out_4_tpl),
        .out_data_out_5_tpl(maxpool2d_B1_merge_reg_aunroll_x_out_data_out_5_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_stall_entry(STALLENABLE,82)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = maxpool2d_B1_merge_reg_aunroll_x_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // sync_out(GPOUT,20)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // leftShiftStage0Idx1Rng1_uid47_i_mul24_maxpool2d0_shift_x(BITSELECT,46)@8
    assign leftShiftStage0Idx1Rng1_uid47_i_mul24_maxpool2d0_shift_x_in = sel_for_coalesced_delay_0_e[30:0];
    assign leftShiftStage0Idx1Rng1_uid47_i_mul24_maxpool2d0_shift_x_b = leftShiftStage0Idx1Rng1_uid47_i_mul24_maxpool2d0_shift_x_in[30:0];

    // leftShiftStage0Idx1_uid48_i_mul24_maxpool2d0_shift_x(BITJOIN,47)@8
    assign leftShiftStage0Idx1_uid48_i_mul24_maxpool2d0_shift_x_q = {leftShiftStage0Idx1Rng1_uid47_i_mul24_maxpool2d0_shift_x_b, GND_q};

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // leftShiftStage0_uid50_i_mul24_maxpool2d0_shift_x(MUX,49)@8
    assign leftShiftStage0_uid50_i_mul24_maxpool2d0_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid50_i_mul24_maxpool2d0_shift_x_s or sel_for_coalesced_delay_0_e or leftShiftStage0Idx1_uid48_i_mul24_maxpool2d0_shift_x_q)
    begin
        unique case (leftShiftStage0_uid50_i_mul24_maxpool2d0_shift_x_s)
            1'b0 : leftShiftStage0_uid50_i_mul24_maxpool2d0_shift_x_q = sel_for_coalesced_delay_0_e;
            1'b1 : leftShiftStage0_uid50_i_mul24_maxpool2d0_shift_x_q = leftShiftStage0Idx1_uid48_i_mul24_maxpool2d0_shift_x_q;
            default : leftShiftStage0_uid50_i_mul24_maxpool2d0_shift_x_q = 32'b0;
        endcase
    end

    // i_mul24_maxpool2d4_vt_select_31(BITSELECT,11)@8
    assign i_mul24_maxpool2d4_vt_select_31_b = leftShiftStage0_uid50_i_mul24_maxpool2d0_shift_x_q[31:1];

    // i_mul24_maxpool2d4_vt_join(BITJOIN,10)@8
    assign i_mul24_maxpool2d4_vt_join_q = {i_mul24_maxpool2d4_vt_select_31_b, GND_q};

    // leftShiftStage0Idx1Rng1_uid39_i_mul22_maxpool2d0_shift_x(BITSELECT,38)@8
    assign leftShiftStage0Idx1Rng1_uid39_i_mul22_maxpool2d0_shift_x_in = sel_for_coalesced_delay_0_d[30:0];
    assign leftShiftStage0Idx1Rng1_uid39_i_mul22_maxpool2d0_shift_x_b = leftShiftStage0Idx1Rng1_uid39_i_mul22_maxpool2d0_shift_x_in[30:0];

    // leftShiftStage0Idx1_uid40_i_mul22_maxpool2d0_shift_x(BITJOIN,39)@8
    assign leftShiftStage0Idx1_uid40_i_mul22_maxpool2d0_shift_x_q = {leftShiftStage0Idx1Rng1_uid39_i_mul22_maxpool2d0_shift_x_b, GND_q};

    // leftShiftStage0_uid42_i_mul22_maxpool2d0_shift_x(MUX,41)@8
    assign leftShiftStage0_uid42_i_mul22_maxpool2d0_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid42_i_mul22_maxpool2d0_shift_x_s or sel_for_coalesced_delay_0_d or leftShiftStage0Idx1_uid40_i_mul22_maxpool2d0_shift_x_q)
    begin
        unique case (leftShiftStage0_uid42_i_mul22_maxpool2d0_shift_x_s)
            1'b0 : leftShiftStage0_uid42_i_mul22_maxpool2d0_shift_x_q = sel_for_coalesced_delay_0_d;
            1'b1 : leftShiftStage0_uid42_i_mul22_maxpool2d0_shift_x_q = leftShiftStage0Idx1_uid40_i_mul22_maxpool2d0_shift_x_q;
            default : leftShiftStage0_uid42_i_mul22_maxpool2d0_shift_x_q = 32'b0;
        endcase
    end

    // i_mul22_maxpool2d0_vt_select_31(BITSELECT,8)@8
    assign i_mul22_maxpool2d0_vt_select_31_b = leftShiftStage0_uid42_i_mul22_maxpool2d0_shift_x_q[31:1];

    // i_mul22_maxpool2d0_vt_join(BITJOIN,7)@8
    assign i_mul22_maxpool2d0_vt_join_q = {i_mul22_maxpool2d0_vt_select_31_b, GND_q};

    // bubble_join_i_sfc_s_c0_in_for_cond12_preheader_lr_ph_maxpool2ds_c0_enter2422_maxpool2d2_aunroll_x(BITJOIN,72)
    assign bubble_join_i_sfc_s_c0_in_for_cond12_preheader_lr_ph_maxpool2ds_c0_enter2422_maxpool2d2_aunroll_x_q = i_sfc_s_c0_in_for_cond12_preheader_lr_ph_maxpool2ds_c0_enter2422_maxpool2d2_aunroll_x_out_c0_exit27_1_tpl;

    // bubble_select_i_sfc_s_c0_in_for_cond12_preheader_lr_ph_maxpool2ds_c0_enter2422_maxpool2d2_aunroll_x(BITSELECT,73)
    assign bubble_select_i_sfc_s_c0_in_for_cond12_preheader_lr_ph_maxpool2ds_c0_enter2422_maxpool2d2_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond12_preheader_lr_ph_maxpool2ds_c0_enter2422_maxpool2d2_aunroll_x_q[31:0]);

    // coalesced_delay_0_5(REG,65)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_0_5_q <= $unsigned(194'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_coalesced_delay_0_5_backEN == 1'b1)
        begin
            coalesced_delay_0_5_q <= $unsigned(SR_SE_coalesced_delay_0_5_D0);
        end
    end

    // coalesced_delay_0_6(REG,66)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_0_6_q <= $unsigned(194'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_coalesced_delay_0_6_backEN == 1'b1)
        begin
            coalesced_delay_0_6_q <= $unsigned(coalesced_delay_0_5_q);
        end
    end

    // sel_for_coalesced_delay_0(BITSELECT,59)
    assign sel_for_coalesced_delay_0_b = $unsigned(coalesced_delay_0_6_q[63:0]);
    assign sel_for_coalesced_delay_0_c = $unsigned(coalesced_delay_0_6_q[127:64]);
    assign sel_for_coalesced_delay_0_d = $unsigned(coalesced_delay_0_6_q[159:128]);
    assign sel_for_coalesced_delay_0_e = $unsigned(coalesced_delay_0_6_q[191:160]);
    assign sel_for_coalesced_delay_0_f = $unsigned(coalesced_delay_0_6_q[192:192]);
    assign sel_for_coalesced_delay_0_g = $unsigned(coalesced_delay_0_6_q[193:193]);

    // dupName_0_sync_out_x(GPOUT,22)@8
    assign out_c0_exe12 = sel_for_coalesced_delay_0_b;
    assign out_c0_exe128 = bubble_select_i_sfc_s_c0_in_for_cond12_preheader_lr_ph_maxpool2ds_c0_enter2422_maxpool2d2_aunroll_x_b;
    assign out_c0_exe26 = sel_for_coalesced_delay_0_c;
    assign out_c0_exe38 = sel_for_coalesced_delay_0_f;
    assign out_c0_exe411 = sel_for_coalesced_delay_0_g;
    assign out_i_038 = sel_for_coalesced_delay_0_d;
    assign out_j_036 = sel_for_coalesced_delay_0_e;
    assign out_mul22 = i_mul22_maxpool2d0_vt_join_q;
    assign out_mul24 = i_mul24_maxpool2d4_vt_join_q;
    assign out_valid_out = SE_out_i_sfc_s_c0_in_for_cond12_preheader_lr_ph_maxpool2ds_c0_enter2422_maxpool2d2_aunroll_x_V0;

endmodule
