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

// SystemVerilog created from mmul_bb_B1_stall_region
// SystemVerilog created on Wed May  3 13:07:53 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module mmul_bb_B1_stall_region (
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going17_mmul2_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going17_mmul2_exiting_stall_out,
    input wire [0:0] in_feedback_in_9,
    output wire [0:0] out_feedback_stall_out_9,
    input wire [0:0] in_feedback_valid_in_9,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [31:0] in_N,
    input wire [0:0] in_intel_reserved_ffwd_0_0,
    input wire [32:0] in_intel_reserved_ffwd_1_0,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_forked,
    input wire [0:0] in_valid_in,
    output wire [31:0] out_c0_exe1,
    output wire [0:0] out_c0_exe2,
    output wire [0:0] out_c0_exe3,
    output wire [0:0] out_memdep_phi17_pop9,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi17_pop9_mmul3_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi17_pop9_mmul3_out_feedback_stall_out_9;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi17_pop9_mmul3_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi17_pop9_mmul3_out_valid_out;
    wire [0:0] i_sfc_s_c0_in_for_cond5_preheader_lr_ph_mmuls_c0_enter12_mmul1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going17_mmul2_exiting_stall_out;
    wire [0:0] i_sfc_s_c0_in_for_cond5_preheader_lr_ph_mmuls_c0_enter12_mmul1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going17_mmul2_exiting_valid_out;
    wire [0:0] i_sfc_s_c0_in_for_cond5_preheader_lr_ph_mmuls_c0_enter12_mmul1_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_for_cond5_preheader_lr_ph_mmuls_c0_enter12_mmul1_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_s_c0_in_for_cond5_preheader_lr_ph_mmuls_c0_enter12_mmul1_aunroll_x_out_pipeline_valid_out;
    wire [31:0] i_sfc_s_c0_in_for_cond5_preheader_lr_ph_mmuls_c0_enter12_mmul1_aunroll_x_out_c0_exit_1_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond5_preheader_lr_ph_mmuls_c0_enter12_mmul1_aunroll_x_out_c0_exit_2_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond5_preheader_lr_ph_mmuls_c0_enter12_mmul1_aunroll_x_out_c0_exit_3_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond5_preheader_lr_ph_mmuls_c0_enter12_mmul1_aunroll_x_out_c0_exit_4_tpl;
    wire [0:0] mmul_B1_merge_reg_aunroll_x_out_stall_out;
    wire [0:0] mmul_B1_merge_reg_aunroll_x_out_valid_out;
    wire [0:0] mmul_B1_merge_reg_aunroll_x_out_data_out_0_tpl;
    wire [33:0] join_for_coalesced_delay_0_q;
    wire [31:0] sel_for_coalesced_delay_0_b;
    wire [0:0] sel_for_coalesced_delay_0_c;
    wire [0:0] sel_for_coalesced_delay_0_d;
    reg [33:0] coalesced_delay_0_0_q;
    wire [0:0] bubble_join_i_llvm_fpga_pop_i1_memdep_phi17_pop9_mmul3_q;
    wire [0:0] bubble_select_i_llvm_fpga_pop_i1_memdep_phi17_pop9_mmul3_b;
    wire [0:0] bubble_join_stall_entry_q;
    wire [0:0] bubble_select_stall_entry_b;
    wire [34:0] bubble_join_i_sfc_s_c0_in_for_cond5_preheader_lr_ph_mmuls_c0_enter12_mmul1_aunroll_x_q;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond5_preheader_lr_ph_mmuls_c0_enter12_mmul1_aunroll_x_b;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond5_preheader_lr_ph_mmuls_c0_enter12_mmul1_aunroll_x_c;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond5_preheader_lr_ph_mmuls_c0_enter12_mmul1_aunroll_x_d;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond5_preheader_lr_ph_mmuls_c0_enter12_mmul1_aunroll_x_e;
    wire [0:0] bubble_join_mmul_B1_merge_reg_aunroll_x_q;
    wire [0:0] bubble_select_mmul_B1_merge_reg_aunroll_x_b;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi17_pop9_mmul3_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi17_pop9_mmul3_and0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi17_pop9_mmul3_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi17_pop9_mmul3_V0;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond5_preheader_lr_ph_mmuls_c0_enter12_mmul1_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond5_preheader_lr_ph_mmuls_c0_enter12_mmul1_aunroll_x_wireStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond5_preheader_lr_ph_mmuls_c0_enter12_mmul1_aunroll_x_StallValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond5_preheader_lr_ph_mmuls_c0_enter12_mmul1_aunroll_x_toReg0;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_cond5_preheader_lr_ph_mmuls_c0_enter12_mmul1_aunroll_x_fromReg0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond5_preheader_lr_ph_mmuls_c0_enter12_mmul1_aunroll_x_consumed0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond5_preheader_lr_ph_mmuls_c0_enter12_mmul1_aunroll_x_toReg1;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_cond5_preheader_lr_ph_mmuls_c0_enter12_mmul1_aunroll_x_fromReg1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond5_preheader_lr_ph_mmuls_c0_enter12_mmul1_aunroll_x_consumed1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond5_preheader_lr_ph_mmuls_c0_enter12_mmul1_aunroll_x_or0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond5_preheader_lr_ph_mmuls_c0_enter12_mmul1_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond5_preheader_lr_ph_mmuls_c0_enter12_mmul1_aunroll_x_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond5_preheader_lr_ph_mmuls_c0_enter12_mmul1_aunroll_x_V1;
    wire [0:0] SE_out_mmul_B1_merge_reg_aunroll_x_wireValid;
    wire [0:0] SE_out_mmul_B1_merge_reg_aunroll_x_backStall;
    wire [0:0] SE_out_mmul_B1_merge_reg_aunroll_x_V0;
    reg [0:0] SE_coalesced_delay_0_0_R_v_0;
    wire [0:0] SE_coalesced_delay_0_0_v_s_0;
    wire [0:0] SE_coalesced_delay_0_0_s_tv_0;
    wire [0:0] SE_coalesced_delay_0_0_backEN;
    wire [0:0] SE_coalesced_delay_0_0_backStall;
    wire [0:0] SE_coalesced_delay_0_0_V0;


    // bubble_join_stall_entry(BITJOIN,41)
    assign bubble_join_stall_entry_q = in_forked;

    // bubble_select_stall_entry(BITSELECT,42)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[0:0]);

    // SE_stall_entry(STALLENABLE,53)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = mmul_B1_merge_reg_aunroll_x_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // mmul_B1_merge_reg_aunroll_x(BLACKBOX,28)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    // out out_valid_out@1
    // out out_data_out_0_tpl@1
    mmul_B1_merge_reg themmul_B1_merge_reg_aunroll_x (
        .in_stall_in(SE_out_mmul_B1_merge_reg_aunroll_x_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .in_data_in_0_tpl(bubble_select_stall_entry_b),
        .out_stall_out(mmul_B1_merge_reg_aunroll_x_out_stall_out),
        .out_valid_out(mmul_B1_merge_reg_aunroll_x_out_valid_out),
        .out_data_out_0_tpl(mmul_B1_merge_reg_aunroll_x_out_data_out_0_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_mmul_B1_merge_reg_aunroll_x(BITJOIN,48)
    assign bubble_join_mmul_B1_merge_reg_aunroll_x_q = mmul_B1_merge_reg_aunroll_x_out_data_out_0_tpl;

    // bubble_select_mmul_B1_merge_reg_aunroll_x(BITSELECT,49)
    assign bubble_select_mmul_B1_merge_reg_aunroll_x_b = $unsigned(bubble_join_mmul_B1_merge_reg_aunroll_x_q[0:0]);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // SE_out_mmul_B1_merge_reg_aunroll_x(STALLENABLE,58)
    // Valid signal propagation
    assign SE_out_mmul_B1_merge_reg_aunroll_x_V0 = SE_out_mmul_B1_merge_reg_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_mmul_B1_merge_reg_aunroll_x_backStall = i_sfc_s_c0_in_for_cond5_preheader_lr_ph_mmuls_c0_enter12_mmul1_aunroll_x_out_o_stall | ~ (SE_out_mmul_B1_merge_reg_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_mmul_B1_merge_reg_aunroll_x_wireValid = mmul_B1_merge_reg_aunroll_x_out_valid_out;

    // SE_out_i_llvm_fpga_pop_i1_memdep_phi17_pop9_mmul3(STALLENABLE,52)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi17_pop9_mmul3_V0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi17_pop9_mmul3_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi17_pop9_mmul3_backStall = in_stall_in | ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi17_pop9_mmul3_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi17_pop9_mmul3_and0 = i_llvm_fpga_pop_i1_memdep_phi17_pop9_mmul3_out_valid_out;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi17_pop9_mmul3_wireValid = SE_coalesced_delay_0_0_V0 & SE_out_i_llvm_fpga_pop_i1_memdep_phi17_pop9_mmul3_and0;

    // SE_coalesced_delay_0_0(STALLENABLE,61)
    // Valid signal propagation
    assign SE_coalesced_delay_0_0_V0 = SE_coalesced_delay_0_0_R_v_0;
    // Stall signal propagation
    assign SE_coalesced_delay_0_0_s_tv_0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi17_pop9_mmul3_backStall & SE_coalesced_delay_0_0_R_v_0;
    // Backward Enable generation
    assign SE_coalesced_delay_0_0_backEN = ~ (SE_coalesced_delay_0_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_coalesced_delay_0_0_v_s_0 = SE_coalesced_delay_0_0_backEN & SE_out_i_sfc_s_c0_in_for_cond5_preheader_lr_ph_mmuls_c0_enter12_mmul1_aunroll_x_V1;
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

    // bubble_join_i_sfc_s_c0_in_for_cond5_preheader_lr_ph_mmuls_c0_enter12_mmul1_aunroll_x(BITJOIN,45)
    assign bubble_join_i_sfc_s_c0_in_for_cond5_preheader_lr_ph_mmuls_c0_enter12_mmul1_aunroll_x_q = {i_sfc_s_c0_in_for_cond5_preheader_lr_ph_mmuls_c0_enter12_mmul1_aunroll_x_out_c0_exit_4_tpl, i_sfc_s_c0_in_for_cond5_preheader_lr_ph_mmuls_c0_enter12_mmul1_aunroll_x_out_c0_exit_3_tpl, i_sfc_s_c0_in_for_cond5_preheader_lr_ph_mmuls_c0_enter12_mmul1_aunroll_x_out_c0_exit_2_tpl, i_sfc_s_c0_in_for_cond5_preheader_lr_ph_mmuls_c0_enter12_mmul1_aunroll_x_out_c0_exit_1_tpl};

    // bubble_select_i_sfc_s_c0_in_for_cond5_preheader_lr_ph_mmuls_c0_enter12_mmul1_aunroll_x(BITSELECT,46)
    assign bubble_select_i_sfc_s_c0_in_for_cond5_preheader_lr_ph_mmuls_c0_enter12_mmul1_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond5_preheader_lr_ph_mmuls_c0_enter12_mmul1_aunroll_x_q[31:0]);
    assign bubble_select_i_sfc_s_c0_in_for_cond5_preheader_lr_ph_mmuls_c0_enter12_mmul1_aunroll_x_c = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond5_preheader_lr_ph_mmuls_c0_enter12_mmul1_aunroll_x_q[32:32]);
    assign bubble_select_i_sfc_s_c0_in_for_cond5_preheader_lr_ph_mmuls_c0_enter12_mmul1_aunroll_x_d = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond5_preheader_lr_ph_mmuls_c0_enter12_mmul1_aunroll_x_q[33:33]);
    assign bubble_select_i_sfc_s_c0_in_for_cond5_preheader_lr_ph_mmuls_c0_enter12_mmul1_aunroll_x_e = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond5_preheader_lr_ph_mmuls_c0_enter12_mmul1_aunroll_x_q[34:34]);

    // i_llvm_fpga_pop_i1_memdep_phi17_pop9_mmul3(BLACKBOX,9)@8
    // in in_stall_in@20000000
    // out out_data_out@9
    // out out_feedback_stall_out_9@20000000
    // out out_stall_out@20000000
    // out out_valid_out@9
    mmul_i_llvm_fpga_pop_i1_memdep_phi17_pop9_0 thei_llvm_fpga_pop_i1_memdep_phi17_pop9_mmul3 (
        .in_data_in(GND_q),
        .in_dir(bubble_select_i_sfc_s_c0_in_for_cond5_preheader_lr_ph_mmuls_c0_enter12_mmul1_aunroll_x_e),
        .in_feedback_in_9(in_feedback_in_9),
        .in_feedback_valid_in_9(in_feedback_valid_in_9),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i1_memdep_phi17_pop9_mmul3_backStall),
        .in_valid_in(SE_out_i_sfc_s_c0_in_for_cond5_preheader_lr_ph_mmuls_c0_enter12_mmul1_aunroll_x_V0),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi17_pop9_mmul3_out_data_out),
        .out_feedback_stall_out_9(i_llvm_fpga_pop_i1_memdep_phi17_pop9_mmul3_out_feedback_stall_out_9),
        .out_stall_out(i_llvm_fpga_pop_i1_memdep_phi17_pop9_mmul3_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i1_memdep_phi17_pop9_mmul3_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_sfc_s_c0_in_for_cond5_preheader_lr_ph_mmuls_c0_enter12_mmul1_aunroll_x(STALLENABLE,56)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_sfc_s_c0_in_for_cond5_preheader_lr_ph_mmuls_c0_enter12_mmul1_aunroll_x_fromReg0 <= '0;
            SE_out_i_sfc_s_c0_in_for_cond5_preheader_lr_ph_mmuls_c0_enter12_mmul1_aunroll_x_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_sfc_s_c0_in_for_cond5_preheader_lr_ph_mmuls_c0_enter12_mmul1_aunroll_x_fromReg0 <= SE_out_i_sfc_s_c0_in_for_cond5_preheader_lr_ph_mmuls_c0_enter12_mmul1_aunroll_x_toReg0;
            // Successor 1
            SE_out_i_sfc_s_c0_in_for_cond5_preheader_lr_ph_mmuls_c0_enter12_mmul1_aunroll_x_fromReg1 <= SE_out_i_sfc_s_c0_in_for_cond5_preheader_lr_ph_mmuls_c0_enter12_mmul1_aunroll_x_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_sfc_s_c0_in_for_cond5_preheader_lr_ph_mmuls_c0_enter12_mmul1_aunroll_x_consumed0 = (~ (i_llvm_fpga_pop_i1_memdep_phi17_pop9_mmul3_out_stall_out) & SE_out_i_sfc_s_c0_in_for_cond5_preheader_lr_ph_mmuls_c0_enter12_mmul1_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_cond5_preheader_lr_ph_mmuls_c0_enter12_mmul1_aunroll_x_fromReg0;
    assign SE_out_i_sfc_s_c0_in_for_cond5_preheader_lr_ph_mmuls_c0_enter12_mmul1_aunroll_x_consumed1 = (~ (SE_coalesced_delay_0_0_backStall) & SE_out_i_sfc_s_c0_in_for_cond5_preheader_lr_ph_mmuls_c0_enter12_mmul1_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_cond5_preheader_lr_ph_mmuls_c0_enter12_mmul1_aunroll_x_fromReg1;
    // Consuming
    assign SE_out_i_sfc_s_c0_in_for_cond5_preheader_lr_ph_mmuls_c0_enter12_mmul1_aunroll_x_StallValid = SE_out_i_sfc_s_c0_in_for_cond5_preheader_lr_ph_mmuls_c0_enter12_mmul1_aunroll_x_backStall & SE_out_i_sfc_s_c0_in_for_cond5_preheader_lr_ph_mmuls_c0_enter12_mmul1_aunroll_x_wireValid;
    assign SE_out_i_sfc_s_c0_in_for_cond5_preheader_lr_ph_mmuls_c0_enter12_mmul1_aunroll_x_toReg0 = SE_out_i_sfc_s_c0_in_for_cond5_preheader_lr_ph_mmuls_c0_enter12_mmul1_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_cond5_preheader_lr_ph_mmuls_c0_enter12_mmul1_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c0_in_for_cond5_preheader_lr_ph_mmuls_c0_enter12_mmul1_aunroll_x_toReg1 = SE_out_i_sfc_s_c0_in_for_cond5_preheader_lr_ph_mmuls_c0_enter12_mmul1_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_cond5_preheader_lr_ph_mmuls_c0_enter12_mmul1_aunroll_x_consumed1;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c0_in_for_cond5_preheader_lr_ph_mmuls_c0_enter12_mmul1_aunroll_x_or0 = SE_out_i_sfc_s_c0_in_for_cond5_preheader_lr_ph_mmuls_c0_enter12_mmul1_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c0_in_for_cond5_preheader_lr_ph_mmuls_c0_enter12_mmul1_aunroll_x_wireStall = ~ (SE_out_i_sfc_s_c0_in_for_cond5_preheader_lr_ph_mmuls_c0_enter12_mmul1_aunroll_x_consumed1 & SE_out_i_sfc_s_c0_in_for_cond5_preheader_lr_ph_mmuls_c0_enter12_mmul1_aunroll_x_or0);
    assign SE_out_i_sfc_s_c0_in_for_cond5_preheader_lr_ph_mmuls_c0_enter12_mmul1_aunroll_x_backStall = SE_out_i_sfc_s_c0_in_for_cond5_preheader_lr_ph_mmuls_c0_enter12_mmul1_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_i_sfc_s_c0_in_for_cond5_preheader_lr_ph_mmuls_c0_enter12_mmul1_aunroll_x_V0 = SE_out_i_sfc_s_c0_in_for_cond5_preheader_lr_ph_mmuls_c0_enter12_mmul1_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_cond5_preheader_lr_ph_mmuls_c0_enter12_mmul1_aunroll_x_fromReg0);
    assign SE_out_i_sfc_s_c0_in_for_cond5_preheader_lr_ph_mmuls_c0_enter12_mmul1_aunroll_x_V1 = SE_out_i_sfc_s_c0_in_for_cond5_preheader_lr_ph_mmuls_c0_enter12_mmul1_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_cond5_preheader_lr_ph_mmuls_c0_enter12_mmul1_aunroll_x_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c0_in_for_cond5_preheader_lr_ph_mmuls_c0_enter12_mmul1_aunroll_x_wireValid = i_sfc_s_c0_in_for_cond5_preheader_lr_ph_mmuls_c0_enter12_mmul1_aunroll_x_out_o_valid;

    // i_sfc_s_c0_in_for_cond5_preheader_lr_ph_mmuls_c0_enter12_mmul1_aunroll_x(BLACKBOX,27)@1
    // in in_i_stall@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going17_mmul2_exiting_stall_out@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going17_mmul2_exiting_valid_out@20000000
    // out out_o_stall@20000000
    // out out_o_valid@8
    // out out_pipeline_valid_out@20000000
    // out out_c0_exit_0_tpl@8
    // out out_c0_exit_1_tpl@8
    // out out_c0_exit_2_tpl@8
    // out out_c0_exit_3_tpl@8
    // out out_c0_exit_4_tpl@8
    mmul_i_sfc_s_c0_in_for_cond5_preheader_lr_ph_s_c0_enter12_mmul1 thei_sfc_s_c0_in_for_cond5_preheader_lr_ph_mmuls_c0_enter12_mmul1_aunroll_x (
        .in_N(in_N),
        .in_i_stall(SE_out_i_sfc_s_c0_in_for_cond5_preheader_lr_ph_mmuls_c0_enter12_mmul1_aunroll_x_backStall),
        .in_i_valid(SE_out_mmul_B1_merge_reg_aunroll_x_V0),
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_intel_reserved_ffwd_1_0(in_intel_reserved_ffwd_1_0),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_c0_eni1_0_tpl(GND_q),
        .in_c0_eni1_1_tpl(bubble_select_mmul_B1_merge_reg_aunroll_x_b),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going17_mmul2_exiting_stall_out(i_sfc_s_c0_in_for_cond5_preheader_lr_ph_mmuls_c0_enter12_mmul1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going17_mmul2_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going17_mmul2_exiting_valid_out(i_sfc_s_c0_in_for_cond5_preheader_lr_ph_mmuls_c0_enter12_mmul1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going17_mmul2_exiting_valid_out),
        .out_o_stall(i_sfc_s_c0_in_for_cond5_preheader_lr_ph_mmuls_c0_enter12_mmul1_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_for_cond5_preheader_lr_ph_mmuls_c0_enter12_mmul1_aunroll_x_out_o_valid),
        .out_pipeline_valid_out(i_sfc_s_c0_in_for_cond5_preheader_lr_ph_mmuls_c0_enter12_mmul1_aunroll_x_out_pipeline_valid_out),
        .out_c0_exit_0_tpl(),
        .out_c0_exit_1_tpl(i_sfc_s_c0_in_for_cond5_preheader_lr_ph_mmuls_c0_enter12_mmul1_aunroll_x_out_c0_exit_1_tpl),
        .out_c0_exit_2_tpl(i_sfc_s_c0_in_for_cond5_preheader_lr_ph_mmuls_c0_enter12_mmul1_aunroll_x_out_c0_exit_2_tpl),
        .out_c0_exit_3_tpl(i_sfc_s_c0_in_for_cond5_preheader_lr_ph_mmuls_c0_enter12_mmul1_aunroll_x_out_c0_exit_3_tpl),
        .out_c0_exit_4_tpl(i_sfc_s_c0_in_for_cond5_preheader_lr_ph_mmuls_c0_enter12_mmul1_aunroll_x_out_c0_exit_4_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,5)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going17_mmul2_exiting_valid_out = i_sfc_s_c0_in_for_cond5_preheader_lr_ph_mmuls_c0_enter12_mmul1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going17_mmul2_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going17_mmul2_exiting_stall_out = i_sfc_s_c0_in_for_cond5_preheader_lr_ph_mmuls_c0_enter12_mmul1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going17_mmul2_exiting_stall_out;

    // feedback_stall_out_9_sync(GPOUT,7)
    assign out_feedback_stall_out_9 = i_llvm_fpga_pop_i1_memdep_phi17_pop9_mmul3_out_feedback_stall_out_9;

    // pipeline_valid_out_sync(GPOUT,17)
    assign out_pipeline_valid_out = i_sfc_s_c0_in_for_cond5_preheader_lr_ph_mmuls_c0_enter12_mmul1_aunroll_x_out_pipeline_valid_out;

    // sync_out(GPOUT,24)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // bubble_join_i_llvm_fpga_pop_i1_memdep_phi17_pop9_mmul3(BITJOIN,37)
    assign bubble_join_i_llvm_fpga_pop_i1_memdep_phi17_pop9_mmul3_q = i_llvm_fpga_pop_i1_memdep_phi17_pop9_mmul3_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i1_memdep_phi17_pop9_mmul3(BITSELECT,38)
    assign bubble_select_i_llvm_fpga_pop_i1_memdep_phi17_pop9_mmul3_b = $unsigned(bubble_join_i_llvm_fpga_pop_i1_memdep_phi17_pop9_mmul3_q[0:0]);

    // join_for_coalesced_delay_0(BITJOIN,33)
    assign join_for_coalesced_delay_0_q = {bubble_select_i_sfc_s_c0_in_for_cond5_preheader_lr_ph_mmuls_c0_enter12_mmul1_aunroll_x_d, bubble_select_i_sfc_s_c0_in_for_cond5_preheader_lr_ph_mmuls_c0_enter12_mmul1_aunroll_x_c, bubble_select_i_sfc_s_c0_in_for_cond5_preheader_lr_ph_mmuls_c0_enter12_mmul1_aunroll_x_b};

    // coalesced_delay_0_0(REG,35)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_0_0_q <= $unsigned(34'b0000000000000000000000000000000000);
        end
        else if (SE_coalesced_delay_0_0_backEN == 1'b1)
        begin
            coalesced_delay_0_0_q <= $unsigned(join_for_coalesced_delay_0_q);
        end
    end

    // sel_for_coalesced_delay_0(BITSELECT,34)
    assign sel_for_coalesced_delay_0_b = $unsigned(coalesced_delay_0_0_q[31:0]);
    assign sel_for_coalesced_delay_0_c = $unsigned(coalesced_delay_0_0_q[32:32]);
    assign sel_for_coalesced_delay_0_d = $unsigned(coalesced_delay_0_0_q[33:33]);

    // dupName_0_sync_out_x(GPOUT,26)@9
    assign out_c0_exe1 = sel_for_coalesced_delay_0_b;
    assign out_c0_exe2 = sel_for_coalesced_delay_0_c;
    assign out_c0_exe3 = sel_for_coalesced_delay_0_d;
    assign out_memdep_phi17_pop9 = bubble_select_i_llvm_fpga_pop_i1_memdep_phi17_pop9_mmul3_b;
    assign out_valid_out = SE_out_i_llvm_fpga_pop_i1_memdep_phi17_pop9_mmul3_V0;

endmodule
