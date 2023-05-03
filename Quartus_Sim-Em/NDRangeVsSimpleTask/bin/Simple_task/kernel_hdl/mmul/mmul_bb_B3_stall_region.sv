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

// SystemVerilog created from mmul_bb_B3_stall_region
// SystemVerilog created on Wed May  3 13:07:53 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module mmul_bb_B3_stall_region (
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going13_mmul2_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going13_mmul2_exiting_stall_out,
    input wire [0:0] in_feedback_in_12,
    output wire [0:0] out_feedback_stall_out_12,
    input wire [0:0] in_feedback_valid_in_12,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_intel_reserved_ffwd_0_0,
    input wire [32:0] in_intel_reserved_ffwd_1_0,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_forked9,
    input wire [0:0] in_memdep_phi17_pop935,
    input wire [31:0] in_mul29,
    input wire [0:0] in_notcmp1632,
    input wire [0:0] in_unnamed_mmul4,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_c0_exe10,
    output wire [0:0] out_c0_exe11,
    output wire [0:0] out_c0_exe12,
    output wire [0:0] out_c0_exe163,
    output wire [0:0] out_c0_exe264,
    output wire [31:0] out_c0_exe365,
    output wire [31:0] out_c0_exe466,
    output wire [0:0] out_c0_exe5,
    output wire [0:0] out_c0_exe6,
    output wire [0:0] out_c0_exe7,
    output wire [31:0] out_c0_exe9,
    output wire [0:0] out_memdep_phi_pop12,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop12_mmul3_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop12_mmul3_out_feedback_stall_out_12;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop12_mmul3_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop12_mmul3_out_valid_out;
    wire [0:0] i_sfc_s_c0_in_for_body8_preheader_mmuls_c0_enter5613_mmul1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going13_mmul2_exiting_stall_out;
    wire [0:0] i_sfc_s_c0_in_for_body8_preheader_mmuls_c0_enter5613_mmul1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going13_mmul2_exiting_valid_out;
    wire [0:0] i_sfc_s_c0_in_for_body8_preheader_mmuls_c0_enter5613_mmul1_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_for_body8_preheader_mmuls_c0_enter5613_mmul1_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_s_c0_in_for_body8_preheader_mmuls_c0_enter5613_mmul1_aunroll_x_out_pipeline_valid_out;
    wire [0:0] i_sfc_s_c0_in_for_body8_preheader_mmuls_c0_enter5613_mmul1_aunroll_x_out_c0_exit62_1_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body8_preheader_mmuls_c0_enter5613_mmul1_aunroll_x_out_c0_exit62_2_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body8_preheader_mmuls_c0_enter5613_mmul1_aunroll_x_out_c0_exit62_3_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body8_preheader_mmuls_c0_enter5613_mmul1_aunroll_x_out_c0_exit62_4_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body8_preheader_mmuls_c0_enter5613_mmul1_aunroll_x_out_c0_exit62_5_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body8_preheader_mmuls_c0_enter5613_mmul1_aunroll_x_out_c0_exit62_6_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body8_preheader_mmuls_c0_enter5613_mmul1_aunroll_x_out_c0_exit62_7_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body8_preheader_mmuls_c0_enter5613_mmul1_aunroll_x_out_c0_exit62_8_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body8_preheader_mmuls_c0_enter5613_mmul1_aunroll_x_out_c0_exit62_9_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body8_preheader_mmuls_c0_enter5613_mmul1_aunroll_x_out_c0_exit62_10_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body8_preheader_mmuls_c0_enter5613_mmul1_aunroll_x_out_c0_exit62_11_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body8_preheader_mmuls_c0_enter5613_mmul1_aunroll_x_out_c0_exit62_12_tpl;
    wire [0:0] mmul_B3_merge_reg_aunroll_x_out_stall_out;
    wire [0:0] mmul_B3_merge_reg_aunroll_x_out_valid_out;
    wire [0:0] mmul_B3_merge_reg_aunroll_x_out_data_out_0_tpl;
    wire [31:0] mmul_B3_merge_reg_aunroll_x_out_data_out_1_tpl;
    wire [0:0] mmul_B3_merge_reg_aunroll_x_out_data_out_2_tpl;
    wire [0:0] mmul_B3_merge_reg_aunroll_x_out_data_out_3_tpl;
    wire [0:0] mmul_B3_merge_reg_aunroll_x_out_data_out_4_tpl;
    wire [103:0] join_for_coalesced_delay_0_q;
    wire [31:0] sel_for_coalesced_delay_0_b;
    wire [31:0] sel_for_coalesced_delay_0_c;
    wire [31:0] sel_for_coalesced_delay_0_d;
    wire [0:0] sel_for_coalesced_delay_0_e;
    wire [0:0] sel_for_coalesced_delay_0_f;
    wire [0:0] sel_for_coalesced_delay_0_g;
    wire [0:0] sel_for_coalesced_delay_0_h;
    wire [0:0] sel_for_coalesced_delay_0_i;
    wire [0:0] sel_for_coalesced_delay_0_j;
    wire [0:0] sel_for_coalesced_delay_0_k;
    wire [0:0] sel_for_coalesced_delay_0_l;
    reg [103:0] coalesced_delay_0_0_q;
    wire [0:0] bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop12_mmul3_q;
    wire [0:0] bubble_select_i_llvm_fpga_pop_i1_memdep_phi_pop12_mmul3_b;
    wire [35:0] bubble_join_stall_entry_q;
    wire [0:0] bubble_select_stall_entry_b;
    wire [0:0] bubble_select_stall_entry_c;
    wire [31:0] bubble_select_stall_entry_d;
    wire [0:0] bubble_select_stall_entry_e;
    wire [0:0] bubble_select_stall_entry_f;
    wire [104:0] bubble_join_i_sfc_s_c0_in_for_body8_preheader_mmuls_c0_enter5613_mmul1_aunroll_x_q;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body8_preheader_mmuls_c0_enter5613_mmul1_aunroll_x_b;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body8_preheader_mmuls_c0_enter5613_mmul1_aunroll_x_c;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body8_preheader_mmuls_c0_enter5613_mmul1_aunroll_x_d;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body8_preheader_mmuls_c0_enter5613_mmul1_aunroll_x_e;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body8_preheader_mmuls_c0_enter5613_mmul1_aunroll_x_f;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body8_preheader_mmuls_c0_enter5613_mmul1_aunroll_x_g;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body8_preheader_mmuls_c0_enter5613_mmul1_aunroll_x_h;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body8_preheader_mmuls_c0_enter5613_mmul1_aunroll_x_i;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body8_preheader_mmuls_c0_enter5613_mmul1_aunroll_x_j;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body8_preheader_mmuls_c0_enter5613_mmul1_aunroll_x_k;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body8_preheader_mmuls_c0_enter5613_mmul1_aunroll_x_l;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body8_preheader_mmuls_c0_enter5613_mmul1_aunroll_x_m;
    wire [35:0] bubble_join_mmul_B3_merge_reg_aunroll_x_q;
    wire [0:0] bubble_select_mmul_B3_merge_reg_aunroll_x_b;
    wire [31:0] bubble_select_mmul_B3_merge_reg_aunroll_x_c;
    wire [0:0] bubble_select_mmul_B3_merge_reg_aunroll_x_d;
    wire [0:0] bubble_select_mmul_B3_merge_reg_aunroll_x_e;
    wire [0:0] bubble_select_mmul_B3_merge_reg_aunroll_x_f;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop12_mmul3_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop12_mmul3_and0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop12_mmul3_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop12_mmul3_V0;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body8_preheader_mmuls_c0_enter5613_mmul1_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body8_preheader_mmuls_c0_enter5613_mmul1_aunroll_x_wireStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body8_preheader_mmuls_c0_enter5613_mmul1_aunroll_x_StallValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body8_preheader_mmuls_c0_enter5613_mmul1_aunroll_x_toReg0;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_body8_preheader_mmuls_c0_enter5613_mmul1_aunroll_x_fromReg0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body8_preheader_mmuls_c0_enter5613_mmul1_aunroll_x_consumed0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body8_preheader_mmuls_c0_enter5613_mmul1_aunroll_x_toReg1;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_body8_preheader_mmuls_c0_enter5613_mmul1_aunroll_x_fromReg1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body8_preheader_mmuls_c0_enter5613_mmul1_aunroll_x_consumed1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body8_preheader_mmuls_c0_enter5613_mmul1_aunroll_x_or0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body8_preheader_mmuls_c0_enter5613_mmul1_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body8_preheader_mmuls_c0_enter5613_mmul1_aunroll_x_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body8_preheader_mmuls_c0_enter5613_mmul1_aunroll_x_V1;
    wire [0:0] SE_out_mmul_B3_merge_reg_aunroll_x_wireValid;
    wire [0:0] SE_out_mmul_B3_merge_reg_aunroll_x_backStall;
    wire [0:0] SE_out_mmul_B3_merge_reg_aunroll_x_V0;
    reg [0:0] SE_coalesced_delay_0_0_R_v_0;
    wire [0:0] SE_coalesced_delay_0_0_v_s_0;
    wire [0:0] SE_coalesced_delay_0_0_s_tv_0;
    wire [0:0] SE_coalesced_delay_0_0_backEN;
    wire [0:0] SE_coalesced_delay_0_0_backStall;
    wire [0:0] SE_coalesced_delay_0_0_V0;


    // bubble_join_stall_entry(BITJOIN,48)
    assign bubble_join_stall_entry_q = {in_unnamed_mmul4, in_notcmp1632, in_mul29, in_memdep_phi17_pop935, in_forked9};

    // bubble_select_stall_entry(BITSELECT,49)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[0:0]);
    assign bubble_select_stall_entry_c = $unsigned(bubble_join_stall_entry_q[1:1]);
    assign bubble_select_stall_entry_d = $unsigned(bubble_join_stall_entry_q[33:2]);
    assign bubble_select_stall_entry_e = $unsigned(bubble_join_stall_entry_q[34:34]);
    assign bubble_select_stall_entry_f = $unsigned(bubble_join_stall_entry_q[35:35]);

    // SE_stall_entry(STALLENABLE,60)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = mmul_B3_merge_reg_aunroll_x_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // mmul_B3_merge_reg_aunroll_x(BLACKBOX,27)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    // out out_valid_out@1
    // out out_data_out_0_tpl@1
    // out out_data_out_1_tpl@1
    // out out_data_out_2_tpl@1
    // out out_data_out_3_tpl@1
    // out out_data_out_4_tpl@1
    mmul_B3_merge_reg themmul_B3_merge_reg_aunroll_x (
        .in_stall_in(SE_out_mmul_B3_merge_reg_aunroll_x_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .in_data_in_0_tpl(bubble_select_stall_entry_b),
        .in_data_in_1_tpl(bubble_select_stall_entry_d),
        .in_data_in_2_tpl(bubble_select_stall_entry_f),
        .in_data_in_3_tpl(bubble_select_stall_entry_e),
        .in_data_in_4_tpl(bubble_select_stall_entry_c),
        .out_stall_out(mmul_B3_merge_reg_aunroll_x_out_stall_out),
        .out_valid_out(mmul_B3_merge_reg_aunroll_x_out_valid_out),
        .out_data_out_0_tpl(mmul_B3_merge_reg_aunroll_x_out_data_out_0_tpl),
        .out_data_out_1_tpl(mmul_B3_merge_reg_aunroll_x_out_data_out_1_tpl),
        .out_data_out_2_tpl(mmul_B3_merge_reg_aunroll_x_out_data_out_2_tpl),
        .out_data_out_3_tpl(mmul_B3_merge_reg_aunroll_x_out_data_out_3_tpl),
        .out_data_out_4_tpl(mmul_B3_merge_reg_aunroll_x_out_data_out_4_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_mmul_B3_merge_reg_aunroll_x(BITJOIN,55)
    assign bubble_join_mmul_B3_merge_reg_aunroll_x_q = {mmul_B3_merge_reg_aunroll_x_out_data_out_4_tpl, mmul_B3_merge_reg_aunroll_x_out_data_out_3_tpl, mmul_B3_merge_reg_aunroll_x_out_data_out_2_tpl, mmul_B3_merge_reg_aunroll_x_out_data_out_1_tpl, mmul_B3_merge_reg_aunroll_x_out_data_out_0_tpl};

    // bubble_select_mmul_B3_merge_reg_aunroll_x(BITSELECT,56)
    assign bubble_select_mmul_B3_merge_reg_aunroll_x_b = $unsigned(bubble_join_mmul_B3_merge_reg_aunroll_x_q[0:0]);
    assign bubble_select_mmul_B3_merge_reg_aunroll_x_c = $unsigned(bubble_join_mmul_B3_merge_reg_aunroll_x_q[32:1]);
    assign bubble_select_mmul_B3_merge_reg_aunroll_x_d = $unsigned(bubble_join_mmul_B3_merge_reg_aunroll_x_q[33:33]);
    assign bubble_select_mmul_B3_merge_reg_aunroll_x_e = $unsigned(bubble_join_mmul_B3_merge_reg_aunroll_x_q[34:34]);
    assign bubble_select_mmul_B3_merge_reg_aunroll_x_f = $unsigned(bubble_join_mmul_B3_merge_reg_aunroll_x_q[35:35]);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // SE_out_mmul_B3_merge_reg_aunroll_x(STALLENABLE,65)
    // Valid signal propagation
    assign SE_out_mmul_B3_merge_reg_aunroll_x_V0 = SE_out_mmul_B3_merge_reg_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_mmul_B3_merge_reg_aunroll_x_backStall = i_sfc_s_c0_in_for_body8_preheader_mmuls_c0_enter5613_mmul1_aunroll_x_out_o_stall | ~ (SE_out_mmul_B3_merge_reg_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_mmul_B3_merge_reg_aunroll_x_wireValid = mmul_B3_merge_reg_aunroll_x_out_valid_out;

    // SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop12_mmul3(STALLENABLE,59)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop12_mmul3_V0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop12_mmul3_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop12_mmul3_backStall = in_stall_in | ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop12_mmul3_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop12_mmul3_and0 = i_llvm_fpga_pop_i1_memdep_phi_pop12_mmul3_out_valid_out;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop12_mmul3_wireValid = SE_coalesced_delay_0_0_V0 & SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop12_mmul3_and0;

    // SE_coalesced_delay_0_0(STALLENABLE,68)
    // Valid signal propagation
    assign SE_coalesced_delay_0_0_V0 = SE_coalesced_delay_0_0_R_v_0;
    // Stall signal propagation
    assign SE_coalesced_delay_0_0_s_tv_0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop12_mmul3_backStall & SE_coalesced_delay_0_0_R_v_0;
    // Backward Enable generation
    assign SE_coalesced_delay_0_0_backEN = ~ (SE_coalesced_delay_0_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_coalesced_delay_0_0_v_s_0 = SE_coalesced_delay_0_0_backEN & SE_out_i_sfc_s_c0_in_for_body8_preheader_mmuls_c0_enter5613_mmul1_aunroll_x_V1;
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

    // bubble_join_i_sfc_s_c0_in_for_body8_preheader_mmuls_c0_enter5613_mmul1_aunroll_x(BITJOIN,52)
    assign bubble_join_i_sfc_s_c0_in_for_body8_preheader_mmuls_c0_enter5613_mmul1_aunroll_x_q = {i_sfc_s_c0_in_for_body8_preheader_mmuls_c0_enter5613_mmul1_aunroll_x_out_c0_exit62_12_tpl, i_sfc_s_c0_in_for_body8_preheader_mmuls_c0_enter5613_mmul1_aunroll_x_out_c0_exit62_11_tpl, i_sfc_s_c0_in_for_body8_preheader_mmuls_c0_enter5613_mmul1_aunroll_x_out_c0_exit62_10_tpl, i_sfc_s_c0_in_for_body8_preheader_mmuls_c0_enter5613_mmul1_aunroll_x_out_c0_exit62_9_tpl, i_sfc_s_c0_in_for_body8_preheader_mmuls_c0_enter5613_mmul1_aunroll_x_out_c0_exit62_8_tpl, i_sfc_s_c0_in_for_body8_preheader_mmuls_c0_enter5613_mmul1_aunroll_x_out_c0_exit62_7_tpl, i_sfc_s_c0_in_for_body8_preheader_mmuls_c0_enter5613_mmul1_aunroll_x_out_c0_exit62_6_tpl, i_sfc_s_c0_in_for_body8_preheader_mmuls_c0_enter5613_mmul1_aunroll_x_out_c0_exit62_5_tpl, i_sfc_s_c0_in_for_body8_preheader_mmuls_c0_enter5613_mmul1_aunroll_x_out_c0_exit62_4_tpl, i_sfc_s_c0_in_for_body8_preheader_mmuls_c0_enter5613_mmul1_aunroll_x_out_c0_exit62_3_tpl, i_sfc_s_c0_in_for_body8_preheader_mmuls_c0_enter5613_mmul1_aunroll_x_out_c0_exit62_2_tpl, i_sfc_s_c0_in_for_body8_preheader_mmuls_c0_enter5613_mmul1_aunroll_x_out_c0_exit62_1_tpl};

    // bubble_select_i_sfc_s_c0_in_for_body8_preheader_mmuls_c0_enter5613_mmul1_aunroll_x(BITSELECT,53)
    assign bubble_select_i_sfc_s_c0_in_for_body8_preheader_mmuls_c0_enter5613_mmul1_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c0_in_for_body8_preheader_mmuls_c0_enter5613_mmul1_aunroll_x_q[0:0]);
    assign bubble_select_i_sfc_s_c0_in_for_body8_preheader_mmuls_c0_enter5613_mmul1_aunroll_x_c = $unsigned(bubble_join_i_sfc_s_c0_in_for_body8_preheader_mmuls_c0_enter5613_mmul1_aunroll_x_q[1:1]);
    assign bubble_select_i_sfc_s_c0_in_for_body8_preheader_mmuls_c0_enter5613_mmul1_aunroll_x_d = $unsigned(bubble_join_i_sfc_s_c0_in_for_body8_preheader_mmuls_c0_enter5613_mmul1_aunroll_x_q[33:2]);
    assign bubble_select_i_sfc_s_c0_in_for_body8_preheader_mmuls_c0_enter5613_mmul1_aunroll_x_e = $unsigned(bubble_join_i_sfc_s_c0_in_for_body8_preheader_mmuls_c0_enter5613_mmul1_aunroll_x_q[65:34]);
    assign bubble_select_i_sfc_s_c0_in_for_body8_preheader_mmuls_c0_enter5613_mmul1_aunroll_x_f = $unsigned(bubble_join_i_sfc_s_c0_in_for_body8_preheader_mmuls_c0_enter5613_mmul1_aunroll_x_q[66:66]);
    assign bubble_select_i_sfc_s_c0_in_for_body8_preheader_mmuls_c0_enter5613_mmul1_aunroll_x_g = $unsigned(bubble_join_i_sfc_s_c0_in_for_body8_preheader_mmuls_c0_enter5613_mmul1_aunroll_x_q[67:67]);
    assign bubble_select_i_sfc_s_c0_in_for_body8_preheader_mmuls_c0_enter5613_mmul1_aunroll_x_h = $unsigned(bubble_join_i_sfc_s_c0_in_for_body8_preheader_mmuls_c0_enter5613_mmul1_aunroll_x_q[68:68]);
    assign bubble_select_i_sfc_s_c0_in_for_body8_preheader_mmuls_c0_enter5613_mmul1_aunroll_x_i = $unsigned(bubble_join_i_sfc_s_c0_in_for_body8_preheader_mmuls_c0_enter5613_mmul1_aunroll_x_q[69:69]);
    assign bubble_select_i_sfc_s_c0_in_for_body8_preheader_mmuls_c0_enter5613_mmul1_aunroll_x_j = $unsigned(bubble_join_i_sfc_s_c0_in_for_body8_preheader_mmuls_c0_enter5613_mmul1_aunroll_x_q[101:70]);
    assign bubble_select_i_sfc_s_c0_in_for_body8_preheader_mmuls_c0_enter5613_mmul1_aunroll_x_k = $unsigned(bubble_join_i_sfc_s_c0_in_for_body8_preheader_mmuls_c0_enter5613_mmul1_aunroll_x_q[102:102]);
    assign bubble_select_i_sfc_s_c0_in_for_body8_preheader_mmuls_c0_enter5613_mmul1_aunroll_x_l = $unsigned(bubble_join_i_sfc_s_c0_in_for_body8_preheader_mmuls_c0_enter5613_mmul1_aunroll_x_q[103:103]);
    assign bubble_select_i_sfc_s_c0_in_for_body8_preheader_mmuls_c0_enter5613_mmul1_aunroll_x_m = $unsigned(bubble_join_i_sfc_s_c0_in_for_body8_preheader_mmuls_c0_enter5613_mmul1_aunroll_x_q[104:104]);

    // i_llvm_fpga_pop_i1_memdep_phi_pop12_mmul3(BLACKBOX,9)@5
    // in in_stall_in@20000000
    // out out_data_out@6
    // out out_feedback_stall_out_12@20000000
    // out out_stall_out@20000000
    // out out_valid_out@6
    mmul_i_llvm_fpga_pop_i1_memdep_phi_pop12_0 thei_llvm_fpga_pop_i1_memdep_phi_pop12_mmul3 (
        .in_data_in(GND_q),
        .in_dir(bubble_select_i_sfc_s_c0_in_for_body8_preheader_mmuls_c0_enter5613_mmul1_aunroll_x_i),
        .in_feedback_in_12(in_feedback_in_12),
        .in_feedback_valid_in_12(in_feedback_valid_in_12),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop12_mmul3_backStall),
        .in_valid_in(SE_out_i_sfc_s_c0_in_for_body8_preheader_mmuls_c0_enter5613_mmul1_aunroll_x_V0),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi_pop12_mmul3_out_data_out),
        .out_feedback_stall_out_12(i_llvm_fpga_pop_i1_memdep_phi_pop12_mmul3_out_feedback_stall_out_12),
        .out_stall_out(i_llvm_fpga_pop_i1_memdep_phi_pop12_mmul3_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i1_memdep_phi_pop12_mmul3_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_sfc_s_c0_in_for_body8_preheader_mmuls_c0_enter5613_mmul1_aunroll_x(STALLENABLE,63)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_sfc_s_c0_in_for_body8_preheader_mmuls_c0_enter5613_mmul1_aunroll_x_fromReg0 <= '0;
            SE_out_i_sfc_s_c0_in_for_body8_preheader_mmuls_c0_enter5613_mmul1_aunroll_x_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_sfc_s_c0_in_for_body8_preheader_mmuls_c0_enter5613_mmul1_aunroll_x_fromReg0 <= SE_out_i_sfc_s_c0_in_for_body8_preheader_mmuls_c0_enter5613_mmul1_aunroll_x_toReg0;
            // Successor 1
            SE_out_i_sfc_s_c0_in_for_body8_preheader_mmuls_c0_enter5613_mmul1_aunroll_x_fromReg1 <= SE_out_i_sfc_s_c0_in_for_body8_preheader_mmuls_c0_enter5613_mmul1_aunroll_x_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_sfc_s_c0_in_for_body8_preheader_mmuls_c0_enter5613_mmul1_aunroll_x_consumed0 = (~ (i_llvm_fpga_pop_i1_memdep_phi_pop12_mmul3_out_stall_out) & SE_out_i_sfc_s_c0_in_for_body8_preheader_mmuls_c0_enter5613_mmul1_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_body8_preheader_mmuls_c0_enter5613_mmul1_aunroll_x_fromReg0;
    assign SE_out_i_sfc_s_c0_in_for_body8_preheader_mmuls_c0_enter5613_mmul1_aunroll_x_consumed1 = (~ (SE_coalesced_delay_0_0_backStall) & SE_out_i_sfc_s_c0_in_for_body8_preheader_mmuls_c0_enter5613_mmul1_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_body8_preheader_mmuls_c0_enter5613_mmul1_aunroll_x_fromReg1;
    // Consuming
    assign SE_out_i_sfc_s_c0_in_for_body8_preheader_mmuls_c0_enter5613_mmul1_aunroll_x_StallValid = SE_out_i_sfc_s_c0_in_for_body8_preheader_mmuls_c0_enter5613_mmul1_aunroll_x_backStall & SE_out_i_sfc_s_c0_in_for_body8_preheader_mmuls_c0_enter5613_mmul1_aunroll_x_wireValid;
    assign SE_out_i_sfc_s_c0_in_for_body8_preheader_mmuls_c0_enter5613_mmul1_aunroll_x_toReg0 = SE_out_i_sfc_s_c0_in_for_body8_preheader_mmuls_c0_enter5613_mmul1_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_body8_preheader_mmuls_c0_enter5613_mmul1_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c0_in_for_body8_preheader_mmuls_c0_enter5613_mmul1_aunroll_x_toReg1 = SE_out_i_sfc_s_c0_in_for_body8_preheader_mmuls_c0_enter5613_mmul1_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_body8_preheader_mmuls_c0_enter5613_mmul1_aunroll_x_consumed1;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c0_in_for_body8_preheader_mmuls_c0_enter5613_mmul1_aunroll_x_or0 = SE_out_i_sfc_s_c0_in_for_body8_preheader_mmuls_c0_enter5613_mmul1_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c0_in_for_body8_preheader_mmuls_c0_enter5613_mmul1_aunroll_x_wireStall = ~ (SE_out_i_sfc_s_c0_in_for_body8_preheader_mmuls_c0_enter5613_mmul1_aunroll_x_consumed1 & SE_out_i_sfc_s_c0_in_for_body8_preheader_mmuls_c0_enter5613_mmul1_aunroll_x_or0);
    assign SE_out_i_sfc_s_c0_in_for_body8_preheader_mmuls_c0_enter5613_mmul1_aunroll_x_backStall = SE_out_i_sfc_s_c0_in_for_body8_preheader_mmuls_c0_enter5613_mmul1_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_i_sfc_s_c0_in_for_body8_preheader_mmuls_c0_enter5613_mmul1_aunroll_x_V0 = SE_out_i_sfc_s_c0_in_for_body8_preheader_mmuls_c0_enter5613_mmul1_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_body8_preheader_mmuls_c0_enter5613_mmul1_aunroll_x_fromReg0);
    assign SE_out_i_sfc_s_c0_in_for_body8_preheader_mmuls_c0_enter5613_mmul1_aunroll_x_V1 = SE_out_i_sfc_s_c0_in_for_body8_preheader_mmuls_c0_enter5613_mmul1_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_body8_preheader_mmuls_c0_enter5613_mmul1_aunroll_x_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c0_in_for_body8_preheader_mmuls_c0_enter5613_mmul1_aunroll_x_wireValid = i_sfc_s_c0_in_for_body8_preheader_mmuls_c0_enter5613_mmul1_aunroll_x_out_o_valid;

    // i_sfc_s_c0_in_for_body8_preheader_mmuls_c0_enter5613_mmul1_aunroll_x(BLACKBOX,26)@1
    // in in_i_stall@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going13_mmul2_exiting_stall_out@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going13_mmul2_exiting_valid_out@20000000
    // out out_o_stall@20000000
    // out out_o_valid@5
    // out out_pipeline_valid_out@20000000
    // out out_c0_exit62_0_tpl@5
    // out out_c0_exit62_1_tpl@5
    // out out_c0_exit62_2_tpl@5
    // out out_c0_exit62_3_tpl@5
    // out out_c0_exit62_4_tpl@5
    // out out_c0_exit62_5_tpl@5
    // out out_c0_exit62_6_tpl@5
    // out out_c0_exit62_7_tpl@5
    // out out_c0_exit62_8_tpl@5
    // out out_c0_exit62_9_tpl@5
    // out out_c0_exit62_10_tpl@5
    // out out_c0_exit62_11_tpl@5
    // out out_c0_exit62_12_tpl@5
    mmul_i_sfc_s_c0_in_for_body8_preheader_s_c0_enter5613_mmul1 thei_sfc_s_c0_in_for_body8_preheader_mmuls_c0_enter5613_mmul1_aunroll_x (
        .in_i_stall(SE_out_i_sfc_s_c0_in_for_body8_preheader_mmuls_c0_enter5613_mmul1_aunroll_x_backStall),
        .in_i_valid(SE_out_mmul_B3_merge_reg_aunroll_x_V0),
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_intel_reserved_ffwd_1_0(in_intel_reserved_ffwd_1_0),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_c0_eni5_0_tpl(GND_q),
        .in_c0_eni5_1_tpl(bubble_select_mmul_B3_merge_reg_aunroll_x_b),
        .in_c0_eni5_2_tpl(bubble_select_mmul_B3_merge_reg_aunroll_x_c),
        .in_c0_eni5_3_tpl(bubble_select_mmul_B3_merge_reg_aunroll_x_d),
        .in_c0_eni5_4_tpl(bubble_select_mmul_B3_merge_reg_aunroll_x_e),
        .in_c0_eni5_5_tpl(bubble_select_mmul_B3_merge_reg_aunroll_x_f),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going13_mmul2_exiting_stall_out(i_sfc_s_c0_in_for_body8_preheader_mmuls_c0_enter5613_mmul1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going13_mmul2_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going13_mmul2_exiting_valid_out(i_sfc_s_c0_in_for_body8_preheader_mmuls_c0_enter5613_mmul1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going13_mmul2_exiting_valid_out),
        .out_o_stall(i_sfc_s_c0_in_for_body8_preheader_mmuls_c0_enter5613_mmul1_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_for_body8_preheader_mmuls_c0_enter5613_mmul1_aunroll_x_out_o_valid),
        .out_pipeline_valid_out(i_sfc_s_c0_in_for_body8_preheader_mmuls_c0_enter5613_mmul1_aunroll_x_out_pipeline_valid_out),
        .out_c0_exit62_0_tpl(),
        .out_c0_exit62_1_tpl(i_sfc_s_c0_in_for_body8_preheader_mmuls_c0_enter5613_mmul1_aunroll_x_out_c0_exit62_1_tpl),
        .out_c0_exit62_2_tpl(i_sfc_s_c0_in_for_body8_preheader_mmuls_c0_enter5613_mmul1_aunroll_x_out_c0_exit62_2_tpl),
        .out_c0_exit62_3_tpl(i_sfc_s_c0_in_for_body8_preheader_mmuls_c0_enter5613_mmul1_aunroll_x_out_c0_exit62_3_tpl),
        .out_c0_exit62_4_tpl(i_sfc_s_c0_in_for_body8_preheader_mmuls_c0_enter5613_mmul1_aunroll_x_out_c0_exit62_4_tpl),
        .out_c0_exit62_5_tpl(i_sfc_s_c0_in_for_body8_preheader_mmuls_c0_enter5613_mmul1_aunroll_x_out_c0_exit62_5_tpl),
        .out_c0_exit62_6_tpl(i_sfc_s_c0_in_for_body8_preheader_mmuls_c0_enter5613_mmul1_aunroll_x_out_c0_exit62_6_tpl),
        .out_c0_exit62_7_tpl(i_sfc_s_c0_in_for_body8_preheader_mmuls_c0_enter5613_mmul1_aunroll_x_out_c0_exit62_7_tpl),
        .out_c0_exit62_8_tpl(i_sfc_s_c0_in_for_body8_preheader_mmuls_c0_enter5613_mmul1_aunroll_x_out_c0_exit62_8_tpl),
        .out_c0_exit62_9_tpl(i_sfc_s_c0_in_for_body8_preheader_mmuls_c0_enter5613_mmul1_aunroll_x_out_c0_exit62_9_tpl),
        .out_c0_exit62_10_tpl(i_sfc_s_c0_in_for_body8_preheader_mmuls_c0_enter5613_mmul1_aunroll_x_out_c0_exit62_10_tpl),
        .out_c0_exit62_11_tpl(i_sfc_s_c0_in_for_body8_preheader_mmuls_c0_enter5613_mmul1_aunroll_x_out_c0_exit62_11_tpl),
        .out_c0_exit62_12_tpl(i_sfc_s_c0_in_for_body8_preheader_mmuls_c0_enter5613_mmul1_aunroll_x_out_c0_exit62_12_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,5)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going13_mmul2_exiting_valid_out = i_sfc_s_c0_in_for_body8_preheader_mmuls_c0_enter5613_mmul1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going13_mmul2_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going13_mmul2_exiting_stall_out = i_sfc_s_c0_in_for_body8_preheader_mmuls_c0_enter5613_mmul1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going13_mmul2_exiting_stall_out;

    // feedback_stall_out_12_sync(GPOUT,7)
    assign out_feedback_stall_out_12 = i_llvm_fpga_pop_i1_memdep_phi_pop12_mmul3_out_feedback_stall_out_12;

    // pipeline_valid_out_sync(GPOUT,17)
    assign out_pipeline_valid_out = i_sfc_s_c0_in_for_body8_preheader_mmuls_c0_enter5613_mmul1_aunroll_x_out_pipeline_valid_out;

    // sync_out(GPOUT,23)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop12_mmul3(BITJOIN,44)
    assign bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop12_mmul3_q = i_llvm_fpga_pop_i1_memdep_phi_pop12_mmul3_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i1_memdep_phi_pop12_mmul3(BITSELECT,45)
    assign bubble_select_i_llvm_fpga_pop_i1_memdep_phi_pop12_mmul3_b = $unsigned(bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop12_mmul3_q[0:0]);

    // join_for_coalesced_delay_0(BITJOIN,40)
    assign join_for_coalesced_delay_0_q = {bubble_select_i_sfc_s_c0_in_for_body8_preheader_mmuls_c0_enter5613_mmul1_aunroll_x_m, bubble_select_i_sfc_s_c0_in_for_body8_preheader_mmuls_c0_enter5613_mmul1_aunroll_x_l, bubble_select_i_sfc_s_c0_in_for_body8_preheader_mmuls_c0_enter5613_mmul1_aunroll_x_k, bubble_select_i_sfc_s_c0_in_for_body8_preheader_mmuls_c0_enter5613_mmul1_aunroll_x_h, bubble_select_i_sfc_s_c0_in_for_body8_preheader_mmuls_c0_enter5613_mmul1_aunroll_x_g, bubble_select_i_sfc_s_c0_in_for_body8_preheader_mmuls_c0_enter5613_mmul1_aunroll_x_f, bubble_select_i_sfc_s_c0_in_for_body8_preheader_mmuls_c0_enter5613_mmul1_aunroll_x_c, bubble_select_i_sfc_s_c0_in_for_body8_preheader_mmuls_c0_enter5613_mmul1_aunroll_x_b, bubble_select_i_sfc_s_c0_in_for_body8_preheader_mmuls_c0_enter5613_mmul1_aunroll_x_j, bubble_select_i_sfc_s_c0_in_for_body8_preheader_mmuls_c0_enter5613_mmul1_aunroll_x_e, bubble_select_i_sfc_s_c0_in_for_body8_preheader_mmuls_c0_enter5613_mmul1_aunroll_x_d};

    // coalesced_delay_0_0(REG,42)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_0_0_q <= $unsigned(104'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_coalesced_delay_0_0_backEN == 1'b1)
        begin
            coalesced_delay_0_0_q <= $unsigned(join_for_coalesced_delay_0_q);
        end
    end

    // sel_for_coalesced_delay_0(BITSELECT,41)
    assign sel_for_coalesced_delay_0_b = $unsigned(coalesced_delay_0_0_q[31:0]);
    assign sel_for_coalesced_delay_0_c = $unsigned(coalesced_delay_0_0_q[63:32]);
    assign sel_for_coalesced_delay_0_d = $unsigned(coalesced_delay_0_0_q[95:64]);
    assign sel_for_coalesced_delay_0_e = $unsigned(coalesced_delay_0_0_q[96:96]);
    assign sel_for_coalesced_delay_0_f = $unsigned(coalesced_delay_0_0_q[97:97]);
    assign sel_for_coalesced_delay_0_g = $unsigned(coalesced_delay_0_0_q[98:98]);
    assign sel_for_coalesced_delay_0_h = $unsigned(coalesced_delay_0_0_q[99:99]);
    assign sel_for_coalesced_delay_0_i = $unsigned(coalesced_delay_0_0_q[100:100]);
    assign sel_for_coalesced_delay_0_j = $unsigned(coalesced_delay_0_0_q[101:101]);
    assign sel_for_coalesced_delay_0_k = $unsigned(coalesced_delay_0_0_q[102:102]);
    assign sel_for_coalesced_delay_0_l = $unsigned(coalesced_delay_0_0_q[103:103]);

    // dupName_0_sync_out_x(GPOUT,25)@6
    assign out_c0_exe10 = sel_for_coalesced_delay_0_j;
    assign out_c0_exe11 = sel_for_coalesced_delay_0_k;
    assign out_c0_exe12 = sel_for_coalesced_delay_0_l;
    assign out_c0_exe163 = sel_for_coalesced_delay_0_e;
    assign out_c0_exe264 = sel_for_coalesced_delay_0_f;
    assign out_c0_exe365 = sel_for_coalesced_delay_0_b;
    assign out_c0_exe466 = sel_for_coalesced_delay_0_c;
    assign out_c0_exe5 = sel_for_coalesced_delay_0_g;
    assign out_c0_exe6 = sel_for_coalesced_delay_0_h;
    assign out_c0_exe7 = sel_for_coalesced_delay_0_i;
    assign out_c0_exe9 = sel_for_coalesced_delay_0_d;
    assign out_memdep_phi_pop12 = bubble_select_i_llvm_fpga_pop_i1_memdep_phi_pop12_mmul3_b;
    assign out_valid_out = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop12_mmul3_V0;

endmodule
