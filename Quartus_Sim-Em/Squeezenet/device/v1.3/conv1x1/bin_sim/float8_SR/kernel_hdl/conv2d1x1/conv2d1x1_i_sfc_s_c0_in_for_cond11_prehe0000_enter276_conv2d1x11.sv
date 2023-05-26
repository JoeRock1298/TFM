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

// SystemVerilog created from conv2d1x1_i_sfc_s_c0_in_for_cond11_prehe0000_enter276_conv2d1x11
// SystemVerilog created on Wed May 24 12:36:13 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2d1x1_i_sfc_s_c0_in_for_cond11_prehe0000_enter276_conv2d1x11 (
    input wire [0:0] in_flush,
    input wire [1023:0] in_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_readdata,
    input wire [0:0] in_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_readdatavalid,
    input wire [0:0] in_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_waitrequest,
    input wire [0:0] in_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_writeack,
    output wire [31:0] out_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_address,
    input wire [0:0] in_i_stall,
    output wire [0:0] out_o_stall,
    output wire [0:0] out_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_burstcount,
    output wire [127:0] out_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_byteenable,
    output wire [0:0] out_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_enable,
    output wire [0:0] out_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_read,
    output wire [0:0] out_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_write,
    output wire [1023:0] out_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_writedata,
    input wire [0:0] in_c0_eni1275_0_tpl,
    input wire [63:0] in_c0_eni1275_1_tpl,
    input wire [0:0] in_i_valid,
    output wire [0:0] out_c0_exit298_0_tpl,
    output wire [31:0] out_c0_exit298_1_tpl,
    output wire [31:0] out_c0_exit298_2_tpl,
    output wire [31:0] out_c0_exit298_3_tpl,
    output wire [31:0] out_c0_exit298_4_tpl,
    output wire [31:0] out_c0_exit298_5_tpl,
    output wire [31:0] out_c0_exit298_6_tpl,
    output wire [31:0] out_c0_exit298_7_tpl,
    output wire [31:0] out_c0_exit298_8_tpl,
    output wire [31:0] out_c0_exit298_9_tpl,
    output wire [31:0] out_c0_exit298_10_tpl,
    output wire [31:0] out_c0_exit298_11_tpl,
    output wire [31:0] out_c0_exit298_12_tpl,
    output wire [31:0] out_c0_exit298_13_tpl,
    output wire [31:0] out_c0_exit298_14_tpl,
    output wire [31:0] out_c0_exit298_15_tpl,
    output wire [31:0] out_c0_exit298_16_tpl,
    output wire [31:0] out_c0_exit298_17_tpl,
    output wire [31:0] out_c0_exit298_18_tpl,
    output wire [31:0] out_c0_exit298_19_tpl,
    output wire [31:0] out_c0_exit298_20_tpl,
    output wire [31:0] out_c0_exit298_21_tpl,
    output wire [31:0] out_c0_exit298_22_tpl,
    output wire [31:0] out_c0_exit298_23_tpl,
    output wire [31:0] out_c0_exit298_24_tpl,
    output wire [0:0] out_o_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [0:0] input_accepted_and_q;
    wire [0:0] not_stall_out_q;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond11_preheader_conv2d1x1s_c0_exit298_conv2d1x11_aunroll_x_out_stall_entry;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond11_preheader_conv2d1x1s_c0_exit298_conv2d1x11_aunroll_x_out_valid_out;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond11_preheader_conv2d1x1s_c0_exit298_conv2d1x11_aunroll_x_out_data_out_0_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond11_preheader_conv2d1x1s_c0_exit298_conv2d1x11_aunroll_x_out_data_out_1_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond11_preheader_conv2d1x1s_c0_exit298_conv2d1x11_aunroll_x_out_data_out_2_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond11_preheader_conv2d1x1s_c0_exit298_conv2d1x11_aunroll_x_out_data_out_3_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond11_preheader_conv2d1x1s_c0_exit298_conv2d1x11_aunroll_x_out_data_out_4_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond11_preheader_conv2d1x1s_c0_exit298_conv2d1x11_aunroll_x_out_data_out_5_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond11_preheader_conv2d1x1s_c0_exit298_conv2d1x11_aunroll_x_out_data_out_6_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond11_preheader_conv2d1x1s_c0_exit298_conv2d1x11_aunroll_x_out_data_out_7_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond11_preheader_conv2d1x1s_c0_exit298_conv2d1x11_aunroll_x_out_data_out_8_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond11_preheader_conv2d1x1s_c0_exit298_conv2d1x11_aunroll_x_out_data_out_9_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond11_preheader_conv2d1x1s_c0_exit298_conv2d1x11_aunroll_x_out_data_out_10_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond11_preheader_conv2d1x1s_c0_exit298_conv2d1x11_aunroll_x_out_data_out_11_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond11_preheader_conv2d1x1s_c0_exit298_conv2d1x11_aunroll_x_out_data_out_12_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond11_preheader_conv2d1x1s_c0_exit298_conv2d1x11_aunroll_x_out_data_out_13_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond11_preheader_conv2d1x1s_c0_exit298_conv2d1x11_aunroll_x_out_data_out_14_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond11_preheader_conv2d1x1s_c0_exit298_conv2d1x11_aunroll_x_out_data_out_15_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond11_preheader_conv2d1x1s_c0_exit298_conv2d1x11_aunroll_x_out_data_out_16_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond11_preheader_conv2d1x1s_c0_exit298_conv2d1x11_aunroll_x_out_data_out_17_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond11_preheader_conv2d1x1s_c0_exit298_conv2d1x11_aunroll_x_out_data_out_18_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond11_preheader_conv2d1x1s_c0_exit298_conv2d1x11_aunroll_x_out_data_out_19_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond11_preheader_conv2d1x1s_c0_exit298_conv2d1x11_aunroll_x_out_data_out_20_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond11_preheader_conv2d1x1s_c0_exit298_conv2d1x11_aunroll_x_out_data_out_21_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond11_preheader_conv2d1x1s_c0_exit298_conv2d1x11_aunroll_x_out_data_out_22_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond11_preheader_conv2d1x1s_c0_exit298_conv2d1x11_aunroll_x_out_data_out_23_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond11_preheader_conv2d1x1s_c0_exit298_conv2d1x11_aunroll_x_out_data_out_24_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter276_conv2d1x10_aunroll_x_out_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_address;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter276_conv2d1x10_aunroll_x_out_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_burstcount;
    wire [127:0] i_sfc_logic_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter276_conv2d1x10_aunroll_x_out_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_byteenable;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter276_conv2d1x10_aunroll_x_out_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_enable;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter276_conv2d1x10_aunroll_x_out_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_read;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter276_conv2d1x10_aunroll_x_out_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_write;
    wire [1023:0] i_sfc_logic_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter276_conv2d1x10_aunroll_x_out_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_writedata;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter276_conv2d1x10_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter276_conv2d1x10_aunroll_x_out_c0_exi24_0_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter276_conv2d1x10_aunroll_x_out_c0_exi24_1_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter276_conv2d1x10_aunroll_x_out_c0_exi24_2_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter276_conv2d1x10_aunroll_x_out_c0_exi24_3_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter276_conv2d1x10_aunroll_x_out_c0_exi24_4_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter276_conv2d1x10_aunroll_x_out_c0_exi24_5_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter276_conv2d1x10_aunroll_x_out_c0_exi24_6_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter276_conv2d1x10_aunroll_x_out_c0_exi24_7_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter276_conv2d1x10_aunroll_x_out_c0_exi24_8_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter276_conv2d1x10_aunroll_x_out_c0_exi24_9_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter276_conv2d1x10_aunroll_x_out_c0_exi24_10_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter276_conv2d1x10_aunroll_x_out_c0_exi24_11_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter276_conv2d1x10_aunroll_x_out_c0_exi24_12_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter276_conv2d1x10_aunroll_x_out_c0_exi24_13_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter276_conv2d1x10_aunroll_x_out_c0_exi24_14_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter276_conv2d1x10_aunroll_x_out_c0_exi24_15_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter276_conv2d1x10_aunroll_x_out_c0_exi24_16_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter276_conv2d1x10_aunroll_x_out_c0_exi24_17_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter276_conv2d1x10_aunroll_x_out_c0_exi24_18_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter276_conv2d1x10_aunroll_x_out_c0_exi24_19_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter276_conv2d1x10_aunroll_x_out_c0_exi24_20_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter276_conv2d1x10_aunroll_x_out_c0_exi24_21_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter276_conv2d1x10_aunroll_x_out_c0_exi24_22_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter276_conv2d1x10_aunroll_x_out_c0_exi24_23_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter276_conv2d1x10_aunroll_x_out_c0_exi24_24_tpl;


    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_llvm_fpga_sfc_exit_s_c0_out_for_cond11_preheader_conv2d1x1s_c0_exit298_conv2d1x11_aunroll_x(BLACKBOX,19)@6
    // in in_mask_valid@20000000
    // in in_stall_in@20000000
    // out out_stall_entry@20000000
    // out out_valid_out@9
    // out out_data_out_0_tpl@9
    // out out_data_out_1_tpl@9
    // out out_data_out_2_tpl@9
    // out out_data_out_3_tpl@9
    // out out_data_out_4_tpl@9
    // out out_data_out_5_tpl@9
    // out out_data_out_6_tpl@9
    // out out_data_out_7_tpl@9
    // out out_data_out_8_tpl@9
    // out out_data_out_9_tpl@9
    // out out_data_out_10_tpl@9
    // out out_data_out_11_tpl@9
    // out out_data_out_12_tpl@9
    // out out_data_out_13_tpl@9
    // out out_data_out_14_tpl@9
    // out out_data_out_15_tpl@9
    // out out_data_out_16_tpl@9
    // out out_data_out_17_tpl@9
    // out out_data_out_18_tpl@9
    // out out_data_out_19_tpl@9
    // out out_data_out_20_tpl@9
    // out out_data_out_21_tpl@9
    // out out_data_out_22_tpl@9
    // out out_data_out_23_tpl@9
    // out out_data_out_24_tpl@9
    conv2d1x1_i_llvm_fpga_sfc_exit_s_c0_out_00000_exit298_conv2d1x10 thei_llvm_fpga_sfc_exit_s_c0_out_for_cond11_preheader_conv2d1x1s_c0_exit298_conv2d1x11_aunroll_x (
        .in_input_accepted(input_accepted_and_q),
        .in_mask_valid(GND_q),
        .in_stall_in(in_i_stall),
        .in_valid_in(i_sfc_logic_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter276_conv2d1x10_aunroll_x_out_o_valid),
        .in_data_in_0_tpl(i_sfc_logic_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter276_conv2d1x10_aunroll_x_out_c0_exi24_0_tpl),
        .in_data_in_1_tpl(i_sfc_logic_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter276_conv2d1x10_aunroll_x_out_c0_exi24_1_tpl),
        .in_data_in_2_tpl(i_sfc_logic_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter276_conv2d1x10_aunroll_x_out_c0_exi24_2_tpl),
        .in_data_in_3_tpl(i_sfc_logic_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter276_conv2d1x10_aunroll_x_out_c0_exi24_3_tpl),
        .in_data_in_4_tpl(i_sfc_logic_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter276_conv2d1x10_aunroll_x_out_c0_exi24_4_tpl),
        .in_data_in_5_tpl(i_sfc_logic_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter276_conv2d1x10_aunroll_x_out_c0_exi24_5_tpl),
        .in_data_in_6_tpl(i_sfc_logic_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter276_conv2d1x10_aunroll_x_out_c0_exi24_6_tpl),
        .in_data_in_7_tpl(i_sfc_logic_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter276_conv2d1x10_aunroll_x_out_c0_exi24_7_tpl),
        .in_data_in_8_tpl(i_sfc_logic_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter276_conv2d1x10_aunroll_x_out_c0_exi24_8_tpl),
        .in_data_in_9_tpl(i_sfc_logic_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter276_conv2d1x10_aunroll_x_out_c0_exi24_9_tpl),
        .in_data_in_10_tpl(i_sfc_logic_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter276_conv2d1x10_aunroll_x_out_c0_exi24_10_tpl),
        .in_data_in_11_tpl(i_sfc_logic_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter276_conv2d1x10_aunroll_x_out_c0_exi24_11_tpl),
        .in_data_in_12_tpl(i_sfc_logic_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter276_conv2d1x10_aunroll_x_out_c0_exi24_12_tpl),
        .in_data_in_13_tpl(i_sfc_logic_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter276_conv2d1x10_aunroll_x_out_c0_exi24_13_tpl),
        .in_data_in_14_tpl(i_sfc_logic_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter276_conv2d1x10_aunroll_x_out_c0_exi24_14_tpl),
        .in_data_in_15_tpl(i_sfc_logic_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter276_conv2d1x10_aunroll_x_out_c0_exi24_15_tpl),
        .in_data_in_16_tpl(i_sfc_logic_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter276_conv2d1x10_aunroll_x_out_c0_exi24_16_tpl),
        .in_data_in_17_tpl(i_sfc_logic_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter276_conv2d1x10_aunroll_x_out_c0_exi24_17_tpl),
        .in_data_in_18_tpl(i_sfc_logic_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter276_conv2d1x10_aunroll_x_out_c0_exi24_18_tpl),
        .in_data_in_19_tpl(i_sfc_logic_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter276_conv2d1x10_aunroll_x_out_c0_exi24_19_tpl),
        .in_data_in_20_tpl(i_sfc_logic_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter276_conv2d1x10_aunroll_x_out_c0_exi24_20_tpl),
        .in_data_in_21_tpl(i_sfc_logic_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter276_conv2d1x10_aunroll_x_out_c0_exi24_21_tpl),
        .in_data_in_22_tpl(i_sfc_logic_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter276_conv2d1x10_aunroll_x_out_c0_exi24_22_tpl),
        .in_data_in_23_tpl(i_sfc_logic_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter276_conv2d1x10_aunroll_x_out_c0_exi24_23_tpl),
        .in_data_in_24_tpl(i_sfc_logic_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter276_conv2d1x10_aunroll_x_out_c0_exi24_24_tpl),
        .out_stall_entry(i_llvm_fpga_sfc_exit_s_c0_out_for_cond11_preheader_conv2d1x1s_c0_exit298_conv2d1x11_aunroll_x_out_stall_entry),
        .out_valid_out(i_llvm_fpga_sfc_exit_s_c0_out_for_cond11_preheader_conv2d1x1s_c0_exit298_conv2d1x11_aunroll_x_out_valid_out),
        .out_data_out_0_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond11_preheader_conv2d1x1s_c0_exit298_conv2d1x11_aunroll_x_out_data_out_0_tpl),
        .out_data_out_1_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond11_preheader_conv2d1x1s_c0_exit298_conv2d1x11_aunroll_x_out_data_out_1_tpl),
        .out_data_out_2_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond11_preheader_conv2d1x1s_c0_exit298_conv2d1x11_aunroll_x_out_data_out_2_tpl),
        .out_data_out_3_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond11_preheader_conv2d1x1s_c0_exit298_conv2d1x11_aunroll_x_out_data_out_3_tpl),
        .out_data_out_4_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond11_preheader_conv2d1x1s_c0_exit298_conv2d1x11_aunroll_x_out_data_out_4_tpl),
        .out_data_out_5_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond11_preheader_conv2d1x1s_c0_exit298_conv2d1x11_aunroll_x_out_data_out_5_tpl),
        .out_data_out_6_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond11_preheader_conv2d1x1s_c0_exit298_conv2d1x11_aunroll_x_out_data_out_6_tpl),
        .out_data_out_7_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond11_preheader_conv2d1x1s_c0_exit298_conv2d1x11_aunroll_x_out_data_out_7_tpl),
        .out_data_out_8_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond11_preheader_conv2d1x1s_c0_exit298_conv2d1x11_aunroll_x_out_data_out_8_tpl),
        .out_data_out_9_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond11_preheader_conv2d1x1s_c0_exit298_conv2d1x11_aunroll_x_out_data_out_9_tpl),
        .out_data_out_10_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond11_preheader_conv2d1x1s_c0_exit298_conv2d1x11_aunroll_x_out_data_out_10_tpl),
        .out_data_out_11_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond11_preheader_conv2d1x1s_c0_exit298_conv2d1x11_aunroll_x_out_data_out_11_tpl),
        .out_data_out_12_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond11_preheader_conv2d1x1s_c0_exit298_conv2d1x11_aunroll_x_out_data_out_12_tpl),
        .out_data_out_13_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond11_preheader_conv2d1x1s_c0_exit298_conv2d1x11_aunroll_x_out_data_out_13_tpl),
        .out_data_out_14_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond11_preheader_conv2d1x1s_c0_exit298_conv2d1x11_aunroll_x_out_data_out_14_tpl),
        .out_data_out_15_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond11_preheader_conv2d1x1s_c0_exit298_conv2d1x11_aunroll_x_out_data_out_15_tpl),
        .out_data_out_16_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond11_preheader_conv2d1x1s_c0_exit298_conv2d1x11_aunroll_x_out_data_out_16_tpl),
        .out_data_out_17_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond11_preheader_conv2d1x1s_c0_exit298_conv2d1x11_aunroll_x_out_data_out_17_tpl),
        .out_data_out_18_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond11_preheader_conv2d1x1s_c0_exit298_conv2d1x11_aunroll_x_out_data_out_18_tpl),
        .out_data_out_19_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond11_preheader_conv2d1x1s_c0_exit298_conv2d1x11_aunroll_x_out_data_out_19_tpl),
        .out_data_out_20_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond11_preheader_conv2d1x1s_c0_exit298_conv2d1x11_aunroll_x_out_data_out_20_tpl),
        .out_data_out_21_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond11_preheader_conv2d1x1s_c0_exit298_conv2d1x11_aunroll_x_out_data_out_21_tpl),
        .out_data_out_22_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond11_preheader_conv2d1x1s_c0_exit298_conv2d1x11_aunroll_x_out_data_out_22_tpl),
        .out_data_out_23_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond11_preheader_conv2d1x1s_c0_exit298_conv2d1x11_aunroll_x_out_data_out_23_tpl),
        .out_data_out_24_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond11_preheader_conv2d1x1s_c0_exit298_conv2d1x11_aunroll_x_out_data_out_24_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // not_stall_out(LOGICAL,4)
    assign not_stall_out_q = ~ (i_llvm_fpga_sfc_exit_s_c0_out_for_cond11_preheader_conv2d1x1s_c0_exit298_conv2d1x11_aunroll_x_out_stall_entry);

    // input_accepted_and(LOGICAL,3)
    assign input_accepted_and_q = in_i_valid & not_stall_out_q;

    // i_sfc_logic_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter276_conv2d1x10_aunroll_x(BLACKBOX,20)@0
    // out out_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_address@20000000
    // out out_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_burstcount@20000000
    // out out_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_byteenable@20000000
    // out out_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_enable@20000000
    // out out_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_read@20000000
    // out out_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_write@20000000
    // out out_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_writedata@20000000
    // out out_o_valid@6
    // out out_unnamed_conv2d1x16@6
    // out out_c0_exi24_0_tpl@6
    // out out_c0_exi24_1_tpl@6
    // out out_c0_exi24_2_tpl@6
    // out out_c0_exi24_3_tpl@6
    // out out_c0_exi24_4_tpl@6
    // out out_c0_exi24_5_tpl@6
    // out out_c0_exi24_6_tpl@6
    // out out_c0_exi24_7_tpl@6
    // out out_c0_exi24_8_tpl@6
    // out out_c0_exi24_9_tpl@6
    // out out_c0_exi24_10_tpl@6
    // out out_c0_exi24_11_tpl@6
    // out out_c0_exi24_12_tpl@6
    // out out_c0_exi24_13_tpl@6
    // out out_c0_exi24_14_tpl@6
    // out out_c0_exi24_15_tpl@6
    // out out_c0_exi24_16_tpl@6
    // out out_c0_exi24_17_tpl@6
    // out out_c0_exi24_18_tpl@6
    // out out_c0_exi24_19_tpl@6
    // out out_c0_exi24_20_tpl@6
    // out out_c0_exi24_21_tpl@6
    // out out_c0_exi24_22_tpl@6
    // out out_c0_exi24_23_tpl@6
    // out out_c0_exi24_24_tpl@6
    conv2d1x1_i_sfc_logic_s_c0_in_for_cond110000_enter276_conv2d1x10 thei_sfc_logic_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter276_conv2d1x10_aunroll_x (
        .in_flush(in_flush),
        .in_i_valid(input_accepted_and_q),
        .in_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_readdata(in_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_readdata),
        .in_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_readdatavalid(in_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_readdatavalid),
        .in_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_waitrequest(in_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_waitrequest),
        .in_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_writeack(in_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_writeack),
        .in_c0_eni1275_0_tpl(in_c0_eni1275_0_tpl),
        .in_c0_eni1275_1_tpl(in_c0_eni1275_1_tpl),
        .out_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_address(i_sfc_logic_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter276_conv2d1x10_aunroll_x_out_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_address),
        .out_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_burstcount(i_sfc_logic_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter276_conv2d1x10_aunroll_x_out_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_burstcount),
        .out_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_byteenable(i_sfc_logic_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter276_conv2d1x10_aunroll_x_out_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_byteenable),
        .out_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_enable(i_sfc_logic_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter276_conv2d1x10_aunroll_x_out_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_enable),
        .out_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_read(i_sfc_logic_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter276_conv2d1x10_aunroll_x_out_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_read),
        .out_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_write(i_sfc_logic_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter276_conv2d1x10_aunroll_x_out_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_write),
        .out_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_writedata(i_sfc_logic_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter276_conv2d1x10_aunroll_x_out_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_writedata),
        .out_o_valid(i_sfc_logic_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter276_conv2d1x10_aunroll_x_out_o_valid),
        .out_unnamed_conv2d1x16(),
        .out_c0_exi24_0_tpl(i_sfc_logic_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter276_conv2d1x10_aunroll_x_out_c0_exi24_0_tpl),
        .out_c0_exi24_1_tpl(i_sfc_logic_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter276_conv2d1x10_aunroll_x_out_c0_exi24_1_tpl),
        .out_c0_exi24_2_tpl(i_sfc_logic_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter276_conv2d1x10_aunroll_x_out_c0_exi24_2_tpl),
        .out_c0_exi24_3_tpl(i_sfc_logic_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter276_conv2d1x10_aunroll_x_out_c0_exi24_3_tpl),
        .out_c0_exi24_4_tpl(i_sfc_logic_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter276_conv2d1x10_aunroll_x_out_c0_exi24_4_tpl),
        .out_c0_exi24_5_tpl(i_sfc_logic_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter276_conv2d1x10_aunroll_x_out_c0_exi24_5_tpl),
        .out_c0_exi24_6_tpl(i_sfc_logic_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter276_conv2d1x10_aunroll_x_out_c0_exi24_6_tpl),
        .out_c0_exi24_7_tpl(i_sfc_logic_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter276_conv2d1x10_aunroll_x_out_c0_exi24_7_tpl),
        .out_c0_exi24_8_tpl(i_sfc_logic_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter276_conv2d1x10_aunroll_x_out_c0_exi24_8_tpl),
        .out_c0_exi24_9_tpl(i_sfc_logic_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter276_conv2d1x10_aunroll_x_out_c0_exi24_9_tpl),
        .out_c0_exi24_10_tpl(i_sfc_logic_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter276_conv2d1x10_aunroll_x_out_c0_exi24_10_tpl),
        .out_c0_exi24_11_tpl(i_sfc_logic_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter276_conv2d1x10_aunroll_x_out_c0_exi24_11_tpl),
        .out_c0_exi24_12_tpl(i_sfc_logic_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter276_conv2d1x10_aunroll_x_out_c0_exi24_12_tpl),
        .out_c0_exi24_13_tpl(i_sfc_logic_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter276_conv2d1x10_aunroll_x_out_c0_exi24_13_tpl),
        .out_c0_exi24_14_tpl(i_sfc_logic_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter276_conv2d1x10_aunroll_x_out_c0_exi24_14_tpl),
        .out_c0_exi24_15_tpl(i_sfc_logic_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter276_conv2d1x10_aunroll_x_out_c0_exi24_15_tpl),
        .out_c0_exi24_16_tpl(i_sfc_logic_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter276_conv2d1x10_aunroll_x_out_c0_exi24_16_tpl),
        .out_c0_exi24_17_tpl(i_sfc_logic_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter276_conv2d1x10_aunroll_x_out_c0_exi24_17_tpl),
        .out_c0_exi24_18_tpl(i_sfc_logic_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter276_conv2d1x10_aunroll_x_out_c0_exi24_18_tpl),
        .out_c0_exi24_19_tpl(i_sfc_logic_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter276_conv2d1x10_aunroll_x_out_c0_exi24_19_tpl),
        .out_c0_exi24_20_tpl(i_sfc_logic_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter276_conv2d1x10_aunroll_x_out_c0_exi24_20_tpl),
        .out_c0_exi24_21_tpl(i_sfc_logic_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter276_conv2d1x10_aunroll_x_out_c0_exi24_21_tpl),
        .out_c0_exi24_22_tpl(i_sfc_logic_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter276_conv2d1x10_aunroll_x_out_c0_exi24_22_tpl),
        .out_c0_exi24_23_tpl(i_sfc_logic_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter276_conv2d1x10_aunroll_x_out_c0_exi24_23_tpl),
        .out_c0_exi24_24_tpl(i_sfc_logic_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter276_conv2d1x10_aunroll_x_out_c0_exi24_24_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // regfree_osync(GPOUT,10)
    assign out_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_address = i_sfc_logic_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter276_conv2d1x10_aunroll_x_out_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_address;

    // sync_out(GPOUT,12)@20000000
    assign out_o_stall = i_llvm_fpga_sfc_exit_s_c0_out_for_cond11_preheader_conv2d1x1s_c0_exit298_conv2d1x11_aunroll_x_out_stall_entry;

    // dupName_0_regfree_osync_x(GPOUT,13)
    assign out_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_burstcount = i_sfc_logic_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter276_conv2d1x10_aunroll_x_out_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_burstcount;

    // dupName_1_regfree_osync_x(GPOUT,14)
    assign out_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_byteenable = i_sfc_logic_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter276_conv2d1x10_aunroll_x_out_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_byteenable;

    // dupName_2_regfree_osync_x(GPOUT,15)
    assign out_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_enable = i_sfc_logic_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter276_conv2d1x10_aunroll_x_out_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_enable;

    // dupName_3_regfree_osync_x(GPOUT,16)
    assign out_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_read = i_sfc_logic_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter276_conv2d1x10_aunroll_x_out_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_read;

    // dupName_4_regfree_osync_x(GPOUT,17)
    assign out_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_write = i_sfc_logic_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter276_conv2d1x10_aunroll_x_out_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_write;

    // dupName_5_regfree_osync_x(GPOUT,18)
    assign out_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_writedata = i_sfc_logic_s_c0_in_for_cond11_preheader_conv2d1x1s_c0_enter276_conv2d1x10_aunroll_x_out_memcoalesce_load_conv2d1x1_fpgaunique_254_conv2d1x1_avm_writedata;

    // dupName_0_sync_out_aunroll_x(GPOUT,22)@9
    assign out_c0_exit298_0_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond11_preheader_conv2d1x1s_c0_exit298_conv2d1x11_aunroll_x_out_data_out_0_tpl;
    assign out_c0_exit298_1_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond11_preheader_conv2d1x1s_c0_exit298_conv2d1x11_aunroll_x_out_data_out_1_tpl;
    assign out_c0_exit298_2_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond11_preheader_conv2d1x1s_c0_exit298_conv2d1x11_aunroll_x_out_data_out_2_tpl;
    assign out_c0_exit298_3_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond11_preheader_conv2d1x1s_c0_exit298_conv2d1x11_aunroll_x_out_data_out_3_tpl;
    assign out_c0_exit298_4_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond11_preheader_conv2d1x1s_c0_exit298_conv2d1x11_aunroll_x_out_data_out_4_tpl;
    assign out_c0_exit298_5_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond11_preheader_conv2d1x1s_c0_exit298_conv2d1x11_aunroll_x_out_data_out_5_tpl;
    assign out_c0_exit298_6_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond11_preheader_conv2d1x1s_c0_exit298_conv2d1x11_aunroll_x_out_data_out_6_tpl;
    assign out_c0_exit298_7_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond11_preheader_conv2d1x1s_c0_exit298_conv2d1x11_aunroll_x_out_data_out_7_tpl;
    assign out_c0_exit298_8_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond11_preheader_conv2d1x1s_c0_exit298_conv2d1x11_aunroll_x_out_data_out_8_tpl;
    assign out_c0_exit298_9_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond11_preheader_conv2d1x1s_c0_exit298_conv2d1x11_aunroll_x_out_data_out_9_tpl;
    assign out_c0_exit298_10_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond11_preheader_conv2d1x1s_c0_exit298_conv2d1x11_aunroll_x_out_data_out_10_tpl;
    assign out_c0_exit298_11_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond11_preheader_conv2d1x1s_c0_exit298_conv2d1x11_aunroll_x_out_data_out_11_tpl;
    assign out_c0_exit298_12_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond11_preheader_conv2d1x1s_c0_exit298_conv2d1x11_aunroll_x_out_data_out_12_tpl;
    assign out_c0_exit298_13_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond11_preheader_conv2d1x1s_c0_exit298_conv2d1x11_aunroll_x_out_data_out_13_tpl;
    assign out_c0_exit298_14_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond11_preheader_conv2d1x1s_c0_exit298_conv2d1x11_aunroll_x_out_data_out_14_tpl;
    assign out_c0_exit298_15_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond11_preheader_conv2d1x1s_c0_exit298_conv2d1x11_aunroll_x_out_data_out_15_tpl;
    assign out_c0_exit298_16_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond11_preheader_conv2d1x1s_c0_exit298_conv2d1x11_aunroll_x_out_data_out_16_tpl;
    assign out_c0_exit298_17_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond11_preheader_conv2d1x1s_c0_exit298_conv2d1x11_aunroll_x_out_data_out_17_tpl;
    assign out_c0_exit298_18_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond11_preheader_conv2d1x1s_c0_exit298_conv2d1x11_aunroll_x_out_data_out_18_tpl;
    assign out_c0_exit298_19_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond11_preheader_conv2d1x1s_c0_exit298_conv2d1x11_aunroll_x_out_data_out_19_tpl;
    assign out_c0_exit298_20_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond11_preheader_conv2d1x1s_c0_exit298_conv2d1x11_aunroll_x_out_data_out_20_tpl;
    assign out_c0_exit298_21_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond11_preheader_conv2d1x1s_c0_exit298_conv2d1x11_aunroll_x_out_data_out_21_tpl;
    assign out_c0_exit298_22_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond11_preheader_conv2d1x1s_c0_exit298_conv2d1x11_aunroll_x_out_data_out_22_tpl;
    assign out_c0_exit298_23_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond11_preheader_conv2d1x1s_c0_exit298_conv2d1x11_aunroll_x_out_data_out_23_tpl;
    assign out_c0_exit298_24_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond11_preheader_conv2d1x1s_c0_exit298_conv2d1x11_aunroll_x_out_data_out_24_tpl;
    assign out_o_valid = i_llvm_fpga_sfc_exit_s_c0_out_for_cond11_preheader_conv2d1x1s_c0_exit298_conv2d1x11_aunroll_x_out_valid_out;

endmodule
