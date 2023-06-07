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

// SystemVerilog created from maxpool2d_i_sfc_s_c0_in_for_cond1_prehea00000_enter21_maxpool2d1
// SystemVerilog created on Sat Jun  3 13:01:56 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module maxpool2d_i_sfc_s_c0_in_for_cond1_prehea00000_enter21_maxpool2d1 (
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [31:0] in_output_size,
    input wire [31:0] in_input_size,
    input wire [0:0] in_intel_reserved_ffwd_0_0,
    input wire [32:0] in_intel_reserved_ffwd_3_0,
    input wire [63:0] in_intel_reserved_ffwd_4_0,
    input wire [63:0] in_intel_reserved_ffwd_5_0,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going28_maxpool2d2_exiting_stall_out,
    input wire [0:0] in_i_stall,
    output wire [0:0] out_o_stall,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going28_maxpool2d2_exiting_valid_out,
    input wire [0:0] in_c0_eni1_0_tpl,
    input wire [0:0] in_c0_eni1_1_tpl,
    input wire [0:0] in_i_valid,
    output wire [0:0] out_c0_exit_0_tpl,
    output wire [63:0] out_c0_exit_1_tpl,
    output wire [63:0] out_c0_exit_2_tpl,
    output wire [0:0] out_c0_exit_3_tpl,
    output wire [0:0] out_c0_exit_4_tpl,
    output wire [0:0] out_o_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [0:0] input_accepted_and_q;
    wire [0:0] not_stall_out_q;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond1_preheader_maxpool2ds_c0_exit_maxpool2d1_aunroll_x_out_stall_entry;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond1_preheader_maxpool2ds_c0_exit_maxpool2d1_aunroll_x_out_valid_out;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond1_preheader_maxpool2ds_c0_exit_maxpool2d1_aunroll_x_out_data_out_0_tpl;
    wire [63:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond1_preheader_maxpool2ds_c0_exit_maxpool2d1_aunroll_x_out_data_out_1_tpl;
    wire [63:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond1_preheader_maxpool2ds_c0_exit_maxpool2d1_aunroll_x_out_data_out_2_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond1_preheader_maxpool2ds_c0_exit_maxpool2d1_aunroll_x_out_data_out_3_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond1_preheader_maxpool2ds_c0_exit_maxpool2d1_aunroll_x_out_data_out_4_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond1_preheader_maxpool2ds_c0_enter21_maxpool2d0_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going28_maxpool2d2_exiting_stall_out;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond1_preheader_maxpool2ds_c0_enter21_maxpool2d0_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going28_maxpool2d2_exiting_valid_out;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond1_preheader_maxpool2ds_c0_enter21_maxpool2d0_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond1_preheader_maxpool2ds_c0_enter21_maxpool2d0_aunroll_x_out_pipeline_valid_out;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond1_preheader_maxpool2ds_c0_enter21_maxpool2d0_aunroll_x_out_c0_exi4_0_tpl;
    wire [63:0] i_sfc_logic_s_c0_in_for_cond1_preheader_maxpool2ds_c0_enter21_maxpool2d0_aunroll_x_out_c0_exi4_1_tpl;
    wire [63:0] i_sfc_logic_s_c0_in_for_cond1_preheader_maxpool2ds_c0_enter21_maxpool2d0_aunroll_x_out_c0_exi4_2_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond1_preheader_maxpool2ds_c0_enter21_maxpool2d0_aunroll_x_out_c0_exi4_3_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond1_preheader_maxpool2ds_c0_enter21_maxpool2d0_aunroll_x_out_c0_exi4_4_tpl;


    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_llvm_fpga_sfc_exit_s_c0_out_for_cond1_preheader_maxpool2ds_c0_exit_maxpool2d1_aunroll_x(BLACKBOX,17)@6
    // in in_mask_valid@20000000
    // in in_stall_in@20000000
    // out out_stall_entry@20000000
    // out out_valid_out@9
    // out out_data_out_0_tpl@9
    // out out_data_out_1_tpl@9
    // out out_data_out_2_tpl@9
    // out out_data_out_3_tpl@9
    // out out_data_out_4_tpl@9
    maxpool2d_i_llvm_fpga_sfc_exit_s_c0_out_0000s_c0_exit_maxpool2d0 thei_llvm_fpga_sfc_exit_s_c0_out_for_cond1_preheader_maxpool2ds_c0_exit_maxpool2d1_aunroll_x (
        .in_input_accepted(input_accepted_and_q),
        .in_mask_valid(GND_q),
        .in_stall_in(in_i_stall),
        .in_valid_in(i_sfc_logic_s_c0_in_for_cond1_preheader_maxpool2ds_c0_enter21_maxpool2d0_aunroll_x_out_o_valid),
        .in_data_in_0_tpl(i_sfc_logic_s_c0_in_for_cond1_preheader_maxpool2ds_c0_enter21_maxpool2d0_aunroll_x_out_c0_exi4_0_tpl),
        .in_data_in_1_tpl(i_sfc_logic_s_c0_in_for_cond1_preheader_maxpool2ds_c0_enter21_maxpool2d0_aunroll_x_out_c0_exi4_1_tpl),
        .in_data_in_2_tpl(i_sfc_logic_s_c0_in_for_cond1_preheader_maxpool2ds_c0_enter21_maxpool2d0_aunroll_x_out_c0_exi4_2_tpl),
        .in_data_in_3_tpl(i_sfc_logic_s_c0_in_for_cond1_preheader_maxpool2ds_c0_enter21_maxpool2d0_aunroll_x_out_c0_exi4_3_tpl),
        .in_data_in_4_tpl(i_sfc_logic_s_c0_in_for_cond1_preheader_maxpool2ds_c0_enter21_maxpool2d0_aunroll_x_out_c0_exi4_4_tpl),
        .out_stall_entry(i_llvm_fpga_sfc_exit_s_c0_out_for_cond1_preheader_maxpool2ds_c0_exit_maxpool2d1_aunroll_x_out_stall_entry),
        .out_valid_out(i_llvm_fpga_sfc_exit_s_c0_out_for_cond1_preheader_maxpool2ds_c0_exit_maxpool2d1_aunroll_x_out_valid_out),
        .out_data_out_0_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond1_preheader_maxpool2ds_c0_exit_maxpool2d1_aunroll_x_out_data_out_0_tpl),
        .out_data_out_1_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond1_preheader_maxpool2ds_c0_exit_maxpool2d1_aunroll_x_out_data_out_1_tpl),
        .out_data_out_2_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond1_preheader_maxpool2ds_c0_exit_maxpool2d1_aunroll_x_out_data_out_2_tpl),
        .out_data_out_3_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond1_preheader_maxpool2ds_c0_exit_maxpool2d1_aunroll_x_out_data_out_3_tpl),
        .out_data_out_4_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond1_preheader_maxpool2ds_c0_exit_maxpool2d1_aunroll_x_out_data_out_4_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // not_stall_out(LOGICAL,4)
    assign not_stall_out_q = ~ (i_llvm_fpga_sfc_exit_s_c0_out_for_cond1_preheader_maxpool2ds_c0_exit_maxpool2d1_aunroll_x_out_stall_entry);

    // input_accepted_and(LOGICAL,3)
    assign input_accepted_and_q = in_i_valid & not_stall_out_q;

    // i_sfc_logic_s_c0_in_for_cond1_preheader_maxpool2ds_c0_enter21_maxpool2d0_aunroll_x(BLACKBOX,18)@1
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going28_maxpool2d2_exiting_stall_out@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going28_maxpool2d2_exiting_valid_out@20000000
    // out out_o_valid@6
    // out out_pipeline_valid_out@20000000
    // out out_unnamed_maxpool2d7@6
    // out out_c0_exi4_0_tpl@6
    // out out_c0_exi4_1_tpl@6
    // out out_c0_exi4_2_tpl@6
    // out out_c0_exi4_3_tpl@6
    // out out_c0_exi4_4_tpl@6
    maxpool2d_i_sfc_logic_s_c0_in_for_cond1_00000_enter21_maxpool2d0 thei_sfc_logic_s_c0_in_for_cond1_preheader_maxpool2ds_c0_enter21_maxpool2d0_aunroll_x (
        .in_i_valid(input_accepted_and_q),
        .in_input_size(in_input_size),
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_intel_reserved_ffwd_3_0(in_intel_reserved_ffwd_3_0),
        .in_intel_reserved_ffwd_4_0(in_intel_reserved_ffwd_4_0),
        .in_intel_reserved_ffwd_5_0(in_intel_reserved_ffwd_5_0),
        .in_output_size(in_output_size),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_c0_eni1_0_tpl(in_c0_eni1_0_tpl),
        .in_c0_eni1_1_tpl(in_c0_eni1_1_tpl),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going28_maxpool2d2_exiting_stall_out(i_sfc_logic_s_c0_in_for_cond1_preheader_maxpool2ds_c0_enter21_maxpool2d0_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going28_maxpool2d2_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going28_maxpool2d2_exiting_valid_out(i_sfc_logic_s_c0_in_for_cond1_preheader_maxpool2ds_c0_enter21_maxpool2d0_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going28_maxpool2d2_exiting_valid_out),
        .out_o_valid(i_sfc_logic_s_c0_in_for_cond1_preheader_maxpool2ds_c0_enter21_maxpool2d0_aunroll_x_out_o_valid),
        .out_pipeline_valid_out(i_sfc_logic_s_c0_in_for_cond1_preheader_maxpool2ds_c0_enter21_maxpool2d0_aunroll_x_out_pipeline_valid_out),
        .out_unnamed_maxpool2d7(),
        .out_c0_exi4_0_tpl(i_sfc_logic_s_c0_in_for_cond1_preheader_maxpool2ds_c0_enter21_maxpool2d0_aunroll_x_out_c0_exi4_0_tpl),
        .out_c0_exi4_1_tpl(i_sfc_logic_s_c0_in_for_cond1_preheader_maxpool2ds_c0_enter21_maxpool2d0_aunroll_x_out_c0_exi4_1_tpl),
        .out_c0_exi4_2_tpl(i_sfc_logic_s_c0_in_for_cond1_preheader_maxpool2ds_c0_enter21_maxpool2d0_aunroll_x_out_c0_exi4_2_tpl),
        .out_c0_exi4_3_tpl(i_sfc_logic_s_c0_in_for_cond1_preheader_maxpool2ds_c0_enter21_maxpool2d0_aunroll_x_out_c0_exi4_3_tpl),
        .out_c0_exi4_4_tpl(i_sfc_logic_s_c0_in_for_cond1_preheader_maxpool2ds_c0_enter21_maxpool2d0_aunroll_x_out_c0_exi4_4_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // pipeline_valid_out_sync(GPOUT,6)
    assign out_pipeline_valid_out = i_sfc_logic_s_c0_in_for_cond1_preheader_maxpool2ds_c0_enter21_maxpool2d0_aunroll_x_out_pipeline_valid_out;

    // regfree_osync(GPOUT,13)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going28_maxpool2d2_exiting_stall_out = i_sfc_logic_s_c0_in_for_cond1_preheader_maxpool2ds_c0_enter21_maxpool2d0_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going28_maxpool2d2_exiting_stall_out;

    // sync_out(GPOUT,15)@20000000
    assign out_o_stall = i_llvm_fpga_sfc_exit_s_c0_out_for_cond1_preheader_maxpool2ds_c0_exit_maxpool2d1_aunroll_x_out_stall_entry;

    // dupName_0_regfree_osync_x(GPOUT,16)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going28_maxpool2d2_exiting_valid_out = i_sfc_logic_s_c0_in_for_cond1_preheader_maxpool2ds_c0_enter21_maxpool2d0_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going28_maxpool2d2_exiting_valid_out;

    // dupName_0_sync_out_aunroll_x(GPOUT,20)@9
    assign out_c0_exit_0_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond1_preheader_maxpool2ds_c0_exit_maxpool2d1_aunroll_x_out_data_out_0_tpl;
    assign out_c0_exit_1_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond1_preheader_maxpool2ds_c0_exit_maxpool2d1_aunroll_x_out_data_out_1_tpl;
    assign out_c0_exit_2_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond1_preheader_maxpool2ds_c0_exit_maxpool2d1_aunroll_x_out_data_out_2_tpl;
    assign out_c0_exit_3_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond1_preheader_maxpool2ds_c0_exit_maxpool2d1_aunroll_x_out_data_out_3_tpl;
    assign out_c0_exit_4_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond1_preheader_maxpool2ds_c0_exit_maxpool2d1_aunroll_x_out_data_out_4_tpl;
    assign out_o_valid = i_llvm_fpga_sfc_exit_s_c0_out_for_cond1_preheader_maxpool2ds_c0_exit_maxpool2d1_aunroll_x_out_valid_out;

endmodule
