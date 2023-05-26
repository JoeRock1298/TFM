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

// SystemVerilog created from conv2d1x1_i_sfc_logic_s_c0_in_for_cond850000_enter349_conv2d1x10
// SystemVerilog created on Wed May 24 11:22:00 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2d1x1_i_sfc_logic_s_c0_in_for_cond850000_enter349_conv2d1x10 (
    output wire [0:0] out_c0_exi1367_0_tpl,
    output wire [31:0] out_c0_exi1367_1_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_conv2d1x16,
    input wire [0:0] in_c0_eni17348_0_tpl,
    input wire [31:0] in_c0_eni17348_1_tpl,
    input wire [31:0] in_c0_eni17348_2_tpl,
    input wire [31:0] in_c0_eni17348_3_tpl,
    input wire [31:0] in_c0_eni17348_4_tpl,
    input wire [31:0] in_c0_eni17348_5_tpl,
    input wire [31:0] in_c0_eni17348_6_tpl,
    input wire [31:0] in_c0_eni17348_7_tpl,
    input wire [31:0] in_c0_eni17348_8_tpl,
    input wire [31:0] in_c0_eni17348_9_tpl,
    input wire [31:0] in_c0_eni17348_10_tpl,
    input wire [31:0] in_c0_eni17348_11_tpl,
    input wire [31:0] in_c0_eni17348_12_tpl,
    input wire [31:0] in_c0_eni17348_13_tpl,
    input wire [31:0] in_c0_eni17348_14_tpl,
    input wire [31:0] in_c0_eni17348_15_tpl,
    input wire [31:0] in_c0_eni17348_16_tpl,
    input wire [31:0] in_c0_eni17348_17_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] c_float_0_000000e_0022_q;
    wire [31:0] i_add91_10_conv2d1x112_out_primWireOut;
    wire [31:0] i_add91_11_conv2d1x113_out_primWireOut;
    wire [31:0] i_add91_12_conv2d1x114_out_primWireOut;
    wire [31:0] i_add91_13_conv2d1x115_out_primWireOut;
    wire [31:0] i_add91_14_conv2d1x116_out_primWireOut;
    wire [31:0] i_add91_15_conv2d1x117_out_primWireOut;
    wire [31:0] i_add91_1_conv2d1x13_out_primWireOut;
    wire [31:0] i_add91_2_conv2d1x14_out_primWireOut;
    wire [31:0] i_add91_3_conv2d1x15_out_primWireOut;
    wire [31:0] i_add91_4_conv2d1x16_out_primWireOut;
    wire [31:0] i_add91_5_conv2d1x17_out_primWireOut;
    wire [31:0] i_add91_6_conv2d1x18_out_primWireOut;
    wire [31:0] i_add91_7_conv2d1x19_out_primWireOut;
    wire [31:0] i_add91_8_conv2d1x110_out_primWireOut;
    wire [31:0] i_add91_9_conv2d1x111_out_primWireOut;
    wire [31:0] i_add91_conv2d1x12_out_primWireOut;
    wire [0:0] i_narrow_sel_conv2d1x119_s;
    reg [31:0] i_narrow_sel_conv2d1x119_q;
    wire [7:0] cstAllOWE_uid26_i_cmp95_conv2d1x118_q;
    wire [22:0] cstZeroWF_uid27_i_cmp95_conv2d1x118_q;
    wire [7:0] cstAllZWE_uid28_i_cmp95_conv2d1x118_q;
    wire [7:0] exp_x_uid29_i_cmp95_conv2d1x118_b;
    wire [22:0] frac_x_uid30_i_cmp95_conv2d1x118_b;
    wire [0:0] expXIsZero_uid31_i_cmp95_conv2d1x118_q;
    wire [0:0] expXIsMax_uid32_i_cmp95_conv2d1x118_q;
    wire [0:0] fracXIsZero_uid33_i_cmp95_conv2d1x118_q;
    wire [0:0] fracXIsNotZero_uid34_i_cmp95_conv2d1x118_q;
    wire [0:0] excZ_x_uid35_i_cmp95_conv2d1x118_q;
    wire [0:0] excN_x_uid37_i_cmp95_conv2d1x118_q;
    wire [7:0] exp_y_uid46_i_cmp95_conv2d1x118_b;
    wire [22:0] frac_y_uid47_i_cmp95_conv2d1x118_b;
    wire [0:0] expXIsZero_uid48_i_cmp95_conv2d1x118_q;
    wire [0:0] expXIsMax_uid49_i_cmp95_conv2d1x118_q;
    wire [0:0] fracXIsZero_uid50_i_cmp95_conv2d1x118_q;
    wire [0:0] fracXIsNotZero_uid51_i_cmp95_conv2d1x118_q;
    wire [0:0] excZ_y_uid52_i_cmp95_conv2d1x118_q;
    wire [0:0] excN_y_uid54_i_cmp95_conv2d1x118_q;
    wire [0:0] oneIsNaN_uid60_i_cmp95_conv2d1x118_qi;
    reg [0:0] oneIsNaN_uid60_i_cmp95_conv2d1x118_q;
    wire [30:0] expFracX_uid65_i_cmp95_conv2d1x118_q;
    wire [30:0] expFracY_uid67_i_cmp95_conv2d1x118_q;
    wire [32:0] efxGTefy_uid69_i_cmp95_conv2d1x118_a;
    wire [32:0] efxGTefy_uid69_i_cmp95_conv2d1x118_b;
    logic [32:0] efxGTefy_uid69_i_cmp95_conv2d1x118_o;
    wire [0:0] efxGTefy_uid69_i_cmp95_conv2d1x118_c;
    wire [32:0] efxLTefy_uid70_i_cmp95_conv2d1x118_a;
    wire [32:0] efxLTefy_uid70_i_cmp95_conv2d1x118_b;
    logic [32:0] efxLTefy_uid70_i_cmp95_conv2d1x118_o;
    wire [0:0] efxLTefy_uid70_i_cmp95_conv2d1x118_c;
    wire [0:0] signX_uid74_i_cmp95_conv2d1x118_b;
    wire [0:0] signY_uid75_i_cmp95_conv2d1x118_b;
    wire [1:0] two_uid76_i_cmp95_conv2d1x118_q;
    wire [1:0] concSXSY_uid77_i_cmp95_conv2d1x118_q;
    wire [0:0] sxLTsy_uid78_i_cmp95_conv2d1x118_q;
    wire [0:0] xorSigns_uid79_i_cmp95_conv2d1x118_q;
    wire [0:0] sxEQsy_uid80_i_cmp95_conv2d1x118_q;
    wire [0:0] expFracCompMux_uid81_i_cmp95_conv2d1x118_s;
    reg [0:0] expFracCompMux_uid81_i_cmp95_conv2d1x118_q;
    wire [0:0] invExcYZ_uid82_i_cmp95_conv2d1x118_q;
    wire [0:0] invExcXZ_uid83_i_cmp95_conv2d1x118_q;
    wire [0:0] oneNonZero_uid84_i_cmp95_conv2d1x118_q;
    wire [0:0] rc2_uid85_i_cmp95_conv2d1x118_q;
    wire [0:0] sxEQsyExpFracCompMux_uid86_i_cmp95_conv2d1x118_q;
    wire [0:0] r_uid87_i_cmp95_conv2d1x118_qi;
    reg [0:0] r_uid87_i_cmp95_conv2d1x118_q;
    wire [0:0] rPostExc_uid88_i_cmp95_conv2d1x118_s;
    reg [0:0] rPostExc_uid88_i_cmp95_conv2d1x118_q;
    reg [31:0] redist0_sync_together24_aunroll_x_in_c0_eni17348_3_tpl_3_q;
    reg [31:0] redist0_sync_together24_aunroll_x_in_c0_eni17348_3_tpl_3_delay_0;
    reg [31:0] redist11_sync_together24_aunroll_x_in_c0_eni17348_14_tpl_36_q;
    reg [31:0] redist11_sync_together24_aunroll_x_in_c0_eni17348_14_tpl_36_delay_0;
    reg [0:0] redist15_sync_together24_aunroll_x_in_i_valid_49_q;
    reg [31:0] redist16_i_add91_15_conv2d1x117_out_primWireOut_1_q;
    reg [31:0] redist0_sync_together24_aunroll_x_in_c0_eni17348_3_tpl_3_outputreg0_q;
    reg [31:0] redist1_sync_together24_aunroll_x_in_c0_eni17348_4_tpl_6_outputreg0_q;
    wire redist1_sync_together24_aunroll_x_in_c0_eni17348_4_tpl_6_mem_reset0;
    wire [31:0] redist1_sync_together24_aunroll_x_in_c0_eni17348_4_tpl_6_mem_ia;
    wire [1:0] redist1_sync_together24_aunroll_x_in_c0_eni17348_4_tpl_6_mem_aa;
    wire [1:0] redist1_sync_together24_aunroll_x_in_c0_eni17348_4_tpl_6_mem_ab;
    wire [31:0] redist1_sync_together24_aunroll_x_in_c0_eni17348_4_tpl_6_mem_iq;
    wire [31:0] redist1_sync_together24_aunroll_x_in_c0_eni17348_4_tpl_6_mem_q;
    wire [1:0] redist1_sync_together24_aunroll_x_in_c0_eni17348_4_tpl_6_rdcnt_q;
    (* preserve *) reg [1:0] redist1_sync_together24_aunroll_x_in_c0_eni17348_4_tpl_6_rdcnt_i;
    reg [1:0] redist1_sync_together24_aunroll_x_in_c0_eni17348_4_tpl_6_wraddr_q;
    wire [2:0] redist1_sync_together24_aunroll_x_in_c0_eni17348_4_tpl_6_mem_last_q;
    wire [2:0] redist1_sync_together24_aunroll_x_in_c0_eni17348_4_tpl_6_cmp_b;
    wire [0:0] redist1_sync_together24_aunroll_x_in_c0_eni17348_4_tpl_6_cmp_q;
    (* dont_merge *) reg [0:0] redist1_sync_together24_aunroll_x_in_c0_eni17348_4_tpl_6_cmpReg_q;
    wire [0:0] redist1_sync_together24_aunroll_x_in_c0_eni17348_4_tpl_6_notEnable_q;
    wire [0:0] redist1_sync_together24_aunroll_x_in_c0_eni17348_4_tpl_6_nor_q;
    (* dont_merge *) reg [0:0] redist1_sync_together24_aunroll_x_in_c0_eni17348_4_tpl_6_sticky_ena_q;
    wire [0:0] redist1_sync_together24_aunroll_x_in_c0_eni17348_4_tpl_6_enaAnd_q;
    reg [31:0] redist2_sync_together24_aunroll_x_in_c0_eni17348_5_tpl_9_outputreg0_q;
    wire redist2_sync_together24_aunroll_x_in_c0_eni17348_5_tpl_9_mem_reset0;
    wire [31:0] redist2_sync_together24_aunroll_x_in_c0_eni17348_5_tpl_9_mem_ia;
    wire [2:0] redist2_sync_together24_aunroll_x_in_c0_eni17348_5_tpl_9_mem_aa;
    wire [2:0] redist2_sync_together24_aunroll_x_in_c0_eni17348_5_tpl_9_mem_ab;
    wire [31:0] redist2_sync_together24_aunroll_x_in_c0_eni17348_5_tpl_9_mem_iq;
    wire [31:0] redist2_sync_together24_aunroll_x_in_c0_eni17348_5_tpl_9_mem_q;
    wire [2:0] redist2_sync_together24_aunroll_x_in_c0_eni17348_5_tpl_9_rdcnt_q;
    (* preserve *) reg [2:0] redist2_sync_together24_aunroll_x_in_c0_eni17348_5_tpl_9_rdcnt_i;
    (* preserve *) reg redist2_sync_together24_aunroll_x_in_c0_eni17348_5_tpl_9_rdcnt_eq;
    reg [2:0] redist2_sync_together24_aunroll_x_in_c0_eni17348_5_tpl_9_wraddr_q;
    wire [3:0] redist2_sync_together24_aunroll_x_in_c0_eni17348_5_tpl_9_mem_last_q;
    wire [3:0] redist2_sync_together24_aunroll_x_in_c0_eni17348_5_tpl_9_cmp_b;
    wire [0:0] redist2_sync_together24_aunroll_x_in_c0_eni17348_5_tpl_9_cmp_q;
    (* dont_merge *) reg [0:0] redist2_sync_together24_aunroll_x_in_c0_eni17348_5_tpl_9_cmpReg_q;
    wire [0:0] redist2_sync_together24_aunroll_x_in_c0_eni17348_5_tpl_9_notEnable_q;
    wire [0:0] redist2_sync_together24_aunroll_x_in_c0_eni17348_5_tpl_9_nor_q;
    (* dont_merge *) reg [0:0] redist2_sync_together24_aunroll_x_in_c0_eni17348_5_tpl_9_sticky_ena_q;
    wire [0:0] redist2_sync_together24_aunroll_x_in_c0_eni17348_5_tpl_9_enaAnd_q;
    reg [31:0] redist3_sync_together24_aunroll_x_in_c0_eni17348_6_tpl_12_outputreg0_q;
    wire redist3_sync_together24_aunroll_x_in_c0_eni17348_6_tpl_12_mem_reset0;
    wire [31:0] redist3_sync_together24_aunroll_x_in_c0_eni17348_6_tpl_12_mem_ia;
    wire [3:0] redist3_sync_together24_aunroll_x_in_c0_eni17348_6_tpl_12_mem_aa;
    wire [3:0] redist3_sync_together24_aunroll_x_in_c0_eni17348_6_tpl_12_mem_ab;
    wire [31:0] redist3_sync_together24_aunroll_x_in_c0_eni17348_6_tpl_12_mem_iq;
    wire [31:0] redist3_sync_together24_aunroll_x_in_c0_eni17348_6_tpl_12_mem_q;
    wire [3:0] redist3_sync_together24_aunroll_x_in_c0_eni17348_6_tpl_12_rdcnt_q;
    (* preserve *) reg [3:0] redist3_sync_together24_aunroll_x_in_c0_eni17348_6_tpl_12_rdcnt_i;
    (* preserve *) reg redist3_sync_together24_aunroll_x_in_c0_eni17348_6_tpl_12_rdcnt_eq;
    reg [3:0] redist3_sync_together24_aunroll_x_in_c0_eni17348_6_tpl_12_wraddr_q;
    wire [4:0] redist3_sync_together24_aunroll_x_in_c0_eni17348_6_tpl_12_mem_last_q;
    wire [4:0] redist3_sync_together24_aunroll_x_in_c0_eni17348_6_tpl_12_cmp_b;
    wire [0:0] redist3_sync_together24_aunroll_x_in_c0_eni17348_6_tpl_12_cmp_q;
    (* dont_merge *) reg [0:0] redist3_sync_together24_aunroll_x_in_c0_eni17348_6_tpl_12_cmpReg_q;
    wire [0:0] redist3_sync_together24_aunroll_x_in_c0_eni17348_6_tpl_12_notEnable_q;
    wire [0:0] redist3_sync_together24_aunroll_x_in_c0_eni17348_6_tpl_12_nor_q;
    (* dont_merge *) reg [0:0] redist3_sync_together24_aunroll_x_in_c0_eni17348_6_tpl_12_sticky_ena_q;
    wire [0:0] redist3_sync_together24_aunroll_x_in_c0_eni17348_6_tpl_12_enaAnd_q;
    reg [31:0] redist4_sync_together24_aunroll_x_in_c0_eni17348_7_tpl_15_outputreg0_q;
    wire redist4_sync_together24_aunroll_x_in_c0_eni17348_7_tpl_15_mem_reset0;
    wire [31:0] redist4_sync_together24_aunroll_x_in_c0_eni17348_7_tpl_15_mem_ia;
    wire [3:0] redist4_sync_together24_aunroll_x_in_c0_eni17348_7_tpl_15_mem_aa;
    wire [3:0] redist4_sync_together24_aunroll_x_in_c0_eni17348_7_tpl_15_mem_ab;
    wire [31:0] redist4_sync_together24_aunroll_x_in_c0_eni17348_7_tpl_15_mem_iq;
    wire [31:0] redist4_sync_together24_aunroll_x_in_c0_eni17348_7_tpl_15_mem_q;
    wire [3:0] redist4_sync_together24_aunroll_x_in_c0_eni17348_7_tpl_15_rdcnt_q;
    (* preserve *) reg [3:0] redist4_sync_together24_aunroll_x_in_c0_eni17348_7_tpl_15_rdcnt_i;
    (* preserve *) reg redist4_sync_together24_aunroll_x_in_c0_eni17348_7_tpl_15_rdcnt_eq;
    reg [3:0] redist4_sync_together24_aunroll_x_in_c0_eni17348_7_tpl_15_wraddr_q;
    wire [4:0] redist4_sync_together24_aunroll_x_in_c0_eni17348_7_tpl_15_mem_last_q;
    wire [4:0] redist4_sync_together24_aunroll_x_in_c0_eni17348_7_tpl_15_cmp_b;
    wire [0:0] redist4_sync_together24_aunroll_x_in_c0_eni17348_7_tpl_15_cmp_q;
    (* dont_merge *) reg [0:0] redist4_sync_together24_aunroll_x_in_c0_eni17348_7_tpl_15_cmpReg_q;
    wire [0:0] redist4_sync_together24_aunroll_x_in_c0_eni17348_7_tpl_15_notEnable_q;
    wire [0:0] redist4_sync_together24_aunroll_x_in_c0_eni17348_7_tpl_15_nor_q;
    (* dont_merge *) reg [0:0] redist4_sync_together24_aunroll_x_in_c0_eni17348_7_tpl_15_sticky_ena_q;
    wire [0:0] redist4_sync_together24_aunroll_x_in_c0_eni17348_7_tpl_15_enaAnd_q;
    reg [31:0] redist5_sync_together24_aunroll_x_in_c0_eni17348_8_tpl_18_outputreg0_q;
    wire redist5_sync_together24_aunroll_x_in_c0_eni17348_8_tpl_18_mem_reset0;
    wire [31:0] redist5_sync_together24_aunroll_x_in_c0_eni17348_8_tpl_18_mem_ia;
    wire [3:0] redist5_sync_together24_aunroll_x_in_c0_eni17348_8_tpl_18_mem_aa;
    wire [3:0] redist5_sync_together24_aunroll_x_in_c0_eni17348_8_tpl_18_mem_ab;
    wire [31:0] redist5_sync_together24_aunroll_x_in_c0_eni17348_8_tpl_18_mem_iq;
    wire [31:0] redist5_sync_together24_aunroll_x_in_c0_eni17348_8_tpl_18_mem_q;
    wire [3:0] redist5_sync_together24_aunroll_x_in_c0_eni17348_8_tpl_18_rdcnt_q;
    (* preserve *) reg [3:0] redist5_sync_together24_aunroll_x_in_c0_eni17348_8_tpl_18_rdcnt_i;
    reg [3:0] redist5_sync_together24_aunroll_x_in_c0_eni17348_8_tpl_18_wraddr_q;
    wire [4:0] redist5_sync_together24_aunroll_x_in_c0_eni17348_8_tpl_18_mem_last_q;
    wire [4:0] redist5_sync_together24_aunroll_x_in_c0_eni17348_8_tpl_18_cmp_b;
    wire [0:0] redist5_sync_together24_aunroll_x_in_c0_eni17348_8_tpl_18_cmp_q;
    (* dont_merge *) reg [0:0] redist5_sync_together24_aunroll_x_in_c0_eni17348_8_tpl_18_cmpReg_q;
    wire [0:0] redist5_sync_together24_aunroll_x_in_c0_eni17348_8_tpl_18_notEnable_q;
    wire [0:0] redist5_sync_together24_aunroll_x_in_c0_eni17348_8_tpl_18_nor_q;
    (* dont_merge *) reg [0:0] redist5_sync_together24_aunroll_x_in_c0_eni17348_8_tpl_18_sticky_ena_q;
    wire [0:0] redist5_sync_together24_aunroll_x_in_c0_eni17348_8_tpl_18_enaAnd_q;
    reg [31:0] redist6_sync_together24_aunroll_x_in_c0_eni17348_9_tpl_21_outputreg0_q;
    wire redist6_sync_together24_aunroll_x_in_c0_eni17348_9_tpl_21_mem_reset0;
    wire [31:0] redist6_sync_together24_aunroll_x_in_c0_eni17348_9_tpl_21_mem_ia;
    wire [4:0] redist6_sync_together24_aunroll_x_in_c0_eni17348_9_tpl_21_mem_aa;
    wire [4:0] redist6_sync_together24_aunroll_x_in_c0_eni17348_9_tpl_21_mem_ab;
    wire [31:0] redist6_sync_together24_aunroll_x_in_c0_eni17348_9_tpl_21_mem_iq;
    wire [31:0] redist6_sync_together24_aunroll_x_in_c0_eni17348_9_tpl_21_mem_q;
    wire [4:0] redist6_sync_together24_aunroll_x_in_c0_eni17348_9_tpl_21_rdcnt_q;
    (* preserve *) reg [4:0] redist6_sync_together24_aunroll_x_in_c0_eni17348_9_tpl_21_rdcnt_i;
    (* preserve *) reg redist6_sync_together24_aunroll_x_in_c0_eni17348_9_tpl_21_rdcnt_eq;
    reg [4:0] redist6_sync_together24_aunroll_x_in_c0_eni17348_9_tpl_21_wraddr_q;
    wire [5:0] redist6_sync_together24_aunroll_x_in_c0_eni17348_9_tpl_21_mem_last_q;
    wire [5:0] redist6_sync_together24_aunroll_x_in_c0_eni17348_9_tpl_21_cmp_b;
    wire [0:0] redist6_sync_together24_aunroll_x_in_c0_eni17348_9_tpl_21_cmp_q;
    (* dont_merge *) reg [0:0] redist6_sync_together24_aunroll_x_in_c0_eni17348_9_tpl_21_cmpReg_q;
    wire [0:0] redist6_sync_together24_aunroll_x_in_c0_eni17348_9_tpl_21_notEnable_q;
    wire [0:0] redist6_sync_together24_aunroll_x_in_c0_eni17348_9_tpl_21_nor_q;
    (* dont_merge *) reg [0:0] redist6_sync_together24_aunroll_x_in_c0_eni17348_9_tpl_21_sticky_ena_q;
    wire [0:0] redist6_sync_together24_aunroll_x_in_c0_eni17348_9_tpl_21_enaAnd_q;
    reg [31:0] redist7_sync_together24_aunroll_x_in_c0_eni17348_10_tpl_24_outputreg0_q;
    wire redist7_sync_together24_aunroll_x_in_c0_eni17348_10_tpl_24_mem_reset0;
    wire [31:0] redist7_sync_together24_aunroll_x_in_c0_eni17348_10_tpl_24_mem_ia;
    wire [4:0] redist7_sync_together24_aunroll_x_in_c0_eni17348_10_tpl_24_mem_aa;
    wire [4:0] redist7_sync_together24_aunroll_x_in_c0_eni17348_10_tpl_24_mem_ab;
    wire [31:0] redist7_sync_together24_aunroll_x_in_c0_eni17348_10_tpl_24_mem_iq;
    wire [31:0] redist7_sync_together24_aunroll_x_in_c0_eni17348_10_tpl_24_mem_q;
    wire [4:0] redist7_sync_together24_aunroll_x_in_c0_eni17348_10_tpl_24_rdcnt_q;
    (* preserve *) reg [4:0] redist7_sync_together24_aunroll_x_in_c0_eni17348_10_tpl_24_rdcnt_i;
    (* preserve *) reg redist7_sync_together24_aunroll_x_in_c0_eni17348_10_tpl_24_rdcnt_eq;
    reg [4:0] redist7_sync_together24_aunroll_x_in_c0_eni17348_10_tpl_24_wraddr_q;
    wire [5:0] redist7_sync_together24_aunroll_x_in_c0_eni17348_10_tpl_24_mem_last_q;
    wire [5:0] redist7_sync_together24_aunroll_x_in_c0_eni17348_10_tpl_24_cmp_b;
    wire [0:0] redist7_sync_together24_aunroll_x_in_c0_eni17348_10_tpl_24_cmp_q;
    (* dont_merge *) reg [0:0] redist7_sync_together24_aunroll_x_in_c0_eni17348_10_tpl_24_cmpReg_q;
    wire [0:0] redist7_sync_together24_aunroll_x_in_c0_eni17348_10_tpl_24_notEnable_q;
    wire [0:0] redist7_sync_together24_aunroll_x_in_c0_eni17348_10_tpl_24_nor_q;
    (* dont_merge *) reg [0:0] redist7_sync_together24_aunroll_x_in_c0_eni17348_10_tpl_24_sticky_ena_q;
    wire [0:0] redist7_sync_together24_aunroll_x_in_c0_eni17348_10_tpl_24_enaAnd_q;
    reg [31:0] redist8_sync_together24_aunroll_x_in_c0_eni17348_11_tpl_27_outputreg0_q;
    wire redist8_sync_together24_aunroll_x_in_c0_eni17348_11_tpl_27_mem_reset0;
    wire [31:0] redist8_sync_together24_aunroll_x_in_c0_eni17348_11_tpl_27_mem_ia;
    wire [4:0] redist8_sync_together24_aunroll_x_in_c0_eni17348_11_tpl_27_mem_aa;
    wire [4:0] redist8_sync_together24_aunroll_x_in_c0_eni17348_11_tpl_27_mem_ab;
    wire [31:0] redist8_sync_together24_aunroll_x_in_c0_eni17348_11_tpl_27_mem_iq;
    wire [31:0] redist8_sync_together24_aunroll_x_in_c0_eni17348_11_tpl_27_mem_q;
    wire [4:0] redist8_sync_together24_aunroll_x_in_c0_eni17348_11_tpl_27_rdcnt_q;
    (* preserve *) reg [4:0] redist8_sync_together24_aunroll_x_in_c0_eni17348_11_tpl_27_rdcnt_i;
    (* preserve *) reg redist8_sync_together24_aunroll_x_in_c0_eni17348_11_tpl_27_rdcnt_eq;
    reg [4:0] redist8_sync_together24_aunroll_x_in_c0_eni17348_11_tpl_27_wraddr_q;
    wire [5:0] redist8_sync_together24_aunroll_x_in_c0_eni17348_11_tpl_27_mem_last_q;
    wire [5:0] redist8_sync_together24_aunroll_x_in_c0_eni17348_11_tpl_27_cmp_b;
    wire [0:0] redist8_sync_together24_aunroll_x_in_c0_eni17348_11_tpl_27_cmp_q;
    (* dont_merge *) reg [0:0] redist8_sync_together24_aunroll_x_in_c0_eni17348_11_tpl_27_cmpReg_q;
    wire [0:0] redist8_sync_together24_aunroll_x_in_c0_eni17348_11_tpl_27_notEnable_q;
    wire [0:0] redist8_sync_together24_aunroll_x_in_c0_eni17348_11_tpl_27_nor_q;
    (* dont_merge *) reg [0:0] redist8_sync_together24_aunroll_x_in_c0_eni17348_11_tpl_27_sticky_ena_q;
    wire [0:0] redist8_sync_together24_aunroll_x_in_c0_eni17348_11_tpl_27_enaAnd_q;
    reg [31:0] redist9_sync_together24_aunroll_x_in_c0_eni17348_12_tpl_30_outputreg0_q;
    wire redist9_sync_together24_aunroll_x_in_c0_eni17348_12_tpl_30_mem_reset0;
    wire [31:0] redist9_sync_together24_aunroll_x_in_c0_eni17348_12_tpl_30_mem_ia;
    wire [4:0] redist9_sync_together24_aunroll_x_in_c0_eni17348_12_tpl_30_mem_aa;
    wire [4:0] redist9_sync_together24_aunroll_x_in_c0_eni17348_12_tpl_30_mem_ab;
    wire [31:0] redist9_sync_together24_aunroll_x_in_c0_eni17348_12_tpl_30_mem_iq;
    wire [31:0] redist9_sync_together24_aunroll_x_in_c0_eni17348_12_tpl_30_mem_q;
    wire [4:0] redist9_sync_together24_aunroll_x_in_c0_eni17348_12_tpl_30_rdcnt_q;
    (* preserve *) reg [4:0] redist9_sync_together24_aunroll_x_in_c0_eni17348_12_tpl_30_rdcnt_i;
    (* preserve *) reg redist9_sync_together24_aunroll_x_in_c0_eni17348_12_tpl_30_rdcnt_eq;
    reg [4:0] redist9_sync_together24_aunroll_x_in_c0_eni17348_12_tpl_30_wraddr_q;
    wire [5:0] redist9_sync_together24_aunroll_x_in_c0_eni17348_12_tpl_30_mem_last_q;
    wire [5:0] redist9_sync_together24_aunroll_x_in_c0_eni17348_12_tpl_30_cmp_b;
    wire [0:0] redist9_sync_together24_aunroll_x_in_c0_eni17348_12_tpl_30_cmp_q;
    (* dont_merge *) reg [0:0] redist9_sync_together24_aunroll_x_in_c0_eni17348_12_tpl_30_cmpReg_q;
    wire [0:0] redist9_sync_together24_aunroll_x_in_c0_eni17348_12_tpl_30_notEnable_q;
    wire [0:0] redist9_sync_together24_aunroll_x_in_c0_eni17348_12_tpl_30_nor_q;
    (* dont_merge *) reg [0:0] redist9_sync_together24_aunroll_x_in_c0_eni17348_12_tpl_30_sticky_ena_q;
    wire [0:0] redist9_sync_together24_aunroll_x_in_c0_eni17348_12_tpl_30_enaAnd_q;
    reg [31:0] redist10_sync_together24_aunroll_x_in_c0_eni17348_13_tpl_33_outputreg0_q;
    wire redist10_sync_together24_aunroll_x_in_c0_eni17348_13_tpl_33_mem_reset0;
    wire [31:0] redist10_sync_together24_aunroll_x_in_c0_eni17348_13_tpl_33_mem_ia;
    wire [4:0] redist10_sync_together24_aunroll_x_in_c0_eni17348_13_tpl_33_mem_aa;
    wire [4:0] redist10_sync_together24_aunroll_x_in_c0_eni17348_13_tpl_33_mem_ab;
    wire [31:0] redist10_sync_together24_aunroll_x_in_c0_eni17348_13_tpl_33_mem_iq;
    wire [31:0] redist10_sync_together24_aunroll_x_in_c0_eni17348_13_tpl_33_mem_q;
    wire [4:0] redist10_sync_together24_aunroll_x_in_c0_eni17348_13_tpl_33_rdcnt_q;
    (* preserve *) reg [4:0] redist10_sync_together24_aunroll_x_in_c0_eni17348_13_tpl_33_rdcnt_i;
    (* preserve *) reg redist10_sync_together24_aunroll_x_in_c0_eni17348_13_tpl_33_rdcnt_eq;
    reg [4:0] redist10_sync_together24_aunroll_x_in_c0_eni17348_13_tpl_33_wraddr_q;
    wire [5:0] redist10_sync_together24_aunroll_x_in_c0_eni17348_13_tpl_33_mem_last_q;
    wire [5:0] redist10_sync_together24_aunroll_x_in_c0_eni17348_13_tpl_33_cmp_b;
    wire [0:0] redist10_sync_together24_aunroll_x_in_c0_eni17348_13_tpl_33_cmp_q;
    (* dont_merge *) reg [0:0] redist10_sync_together24_aunroll_x_in_c0_eni17348_13_tpl_33_cmpReg_q;
    wire [0:0] redist10_sync_together24_aunroll_x_in_c0_eni17348_13_tpl_33_notEnable_q;
    wire [0:0] redist10_sync_together24_aunroll_x_in_c0_eni17348_13_tpl_33_nor_q;
    (* dont_merge *) reg [0:0] redist10_sync_together24_aunroll_x_in_c0_eni17348_13_tpl_33_sticky_ena_q;
    wire [0:0] redist10_sync_together24_aunroll_x_in_c0_eni17348_13_tpl_33_enaAnd_q;
    reg [31:0] redist11_sync_together24_aunroll_x_in_c0_eni17348_14_tpl_36_outputreg0_q;
    reg [31:0] redist12_sync_together24_aunroll_x_in_c0_eni17348_15_tpl_39_outputreg0_q;
    wire redist12_sync_together24_aunroll_x_in_c0_eni17348_15_tpl_39_mem_reset0;
    wire [31:0] redist12_sync_together24_aunroll_x_in_c0_eni17348_15_tpl_39_mem_ia;
    wire [1:0] redist12_sync_together24_aunroll_x_in_c0_eni17348_15_tpl_39_mem_aa;
    wire [1:0] redist12_sync_together24_aunroll_x_in_c0_eni17348_15_tpl_39_mem_ab;
    wire [31:0] redist12_sync_together24_aunroll_x_in_c0_eni17348_15_tpl_39_mem_iq;
    wire [31:0] redist12_sync_together24_aunroll_x_in_c0_eni17348_15_tpl_39_mem_q;
    wire [1:0] redist12_sync_together24_aunroll_x_in_c0_eni17348_15_tpl_39_rdcnt_q;
    (* preserve *) reg [1:0] redist12_sync_together24_aunroll_x_in_c0_eni17348_15_tpl_39_rdcnt_i;
    reg [1:0] redist12_sync_together24_aunroll_x_in_c0_eni17348_15_tpl_39_wraddr_q;
    wire [2:0] redist12_sync_together24_aunroll_x_in_c0_eni17348_15_tpl_39_mem_last_q;
    wire [2:0] redist12_sync_together24_aunroll_x_in_c0_eni17348_15_tpl_39_cmp_b;
    wire [0:0] redist12_sync_together24_aunroll_x_in_c0_eni17348_15_tpl_39_cmp_q;
    (* dont_merge *) reg [0:0] redist12_sync_together24_aunroll_x_in_c0_eni17348_15_tpl_39_cmpReg_q;
    wire [0:0] redist12_sync_together24_aunroll_x_in_c0_eni17348_15_tpl_39_notEnable_q;
    wire [0:0] redist12_sync_together24_aunroll_x_in_c0_eni17348_15_tpl_39_nor_q;
    (* dont_merge *) reg [0:0] redist12_sync_together24_aunroll_x_in_c0_eni17348_15_tpl_39_sticky_ena_q;
    wire [0:0] redist12_sync_together24_aunroll_x_in_c0_eni17348_15_tpl_39_enaAnd_q;
    reg [31:0] redist13_sync_together24_aunroll_x_in_c0_eni17348_16_tpl_42_outputreg0_q;
    wire redist13_sync_together24_aunroll_x_in_c0_eni17348_16_tpl_42_mem_reset0;
    wire [31:0] redist13_sync_together24_aunroll_x_in_c0_eni17348_16_tpl_42_mem_ia;
    wire [5:0] redist13_sync_together24_aunroll_x_in_c0_eni17348_16_tpl_42_mem_aa;
    wire [5:0] redist13_sync_together24_aunroll_x_in_c0_eni17348_16_tpl_42_mem_ab;
    wire [31:0] redist13_sync_together24_aunroll_x_in_c0_eni17348_16_tpl_42_mem_iq;
    wire [31:0] redist13_sync_together24_aunroll_x_in_c0_eni17348_16_tpl_42_mem_q;
    wire [5:0] redist13_sync_together24_aunroll_x_in_c0_eni17348_16_tpl_42_rdcnt_q;
    (* preserve *) reg [5:0] redist13_sync_together24_aunroll_x_in_c0_eni17348_16_tpl_42_rdcnt_i;
    (* preserve *) reg redist13_sync_together24_aunroll_x_in_c0_eni17348_16_tpl_42_rdcnt_eq;
    reg [5:0] redist13_sync_together24_aunroll_x_in_c0_eni17348_16_tpl_42_wraddr_q;
    wire [6:0] redist13_sync_together24_aunroll_x_in_c0_eni17348_16_tpl_42_mem_last_q;
    wire [6:0] redist13_sync_together24_aunroll_x_in_c0_eni17348_16_tpl_42_cmp_b;
    wire [0:0] redist13_sync_together24_aunroll_x_in_c0_eni17348_16_tpl_42_cmp_q;
    reg [0:0] redist13_sync_together24_aunroll_x_in_c0_eni17348_16_tpl_42_cmpReg_q;
    wire [0:0] redist13_sync_together24_aunroll_x_in_c0_eni17348_16_tpl_42_notEnable_q;
    wire [0:0] redist13_sync_together24_aunroll_x_in_c0_eni17348_16_tpl_42_nor_q;
    reg [0:0] redist13_sync_together24_aunroll_x_in_c0_eni17348_16_tpl_42_sticky_ena_q;
    wire [0:0] redist13_sync_together24_aunroll_x_in_c0_eni17348_16_tpl_42_enaAnd_q;
    reg [31:0] redist14_sync_together24_aunroll_x_in_c0_eni17348_17_tpl_45_outputreg0_q;
    wire redist14_sync_together24_aunroll_x_in_c0_eni17348_17_tpl_45_mem_reset0;
    wire [31:0] redist14_sync_together24_aunroll_x_in_c0_eni17348_17_tpl_45_mem_ia;
    wire [5:0] redist14_sync_together24_aunroll_x_in_c0_eni17348_17_tpl_45_mem_aa;
    wire [5:0] redist14_sync_together24_aunroll_x_in_c0_eni17348_17_tpl_45_mem_ab;
    wire [31:0] redist14_sync_together24_aunroll_x_in_c0_eni17348_17_tpl_45_mem_iq;
    wire [31:0] redist14_sync_together24_aunroll_x_in_c0_eni17348_17_tpl_45_mem_q;
    wire [5:0] redist14_sync_together24_aunroll_x_in_c0_eni17348_17_tpl_45_rdcnt_q;
    (* preserve *) reg [5:0] redist14_sync_together24_aunroll_x_in_c0_eni17348_17_tpl_45_rdcnt_i;
    (* preserve *) reg redist14_sync_together24_aunroll_x_in_c0_eni17348_17_tpl_45_rdcnt_eq;
    reg [5:0] redist14_sync_together24_aunroll_x_in_c0_eni17348_17_tpl_45_wraddr_q;
    wire [6:0] redist14_sync_together24_aunroll_x_in_c0_eni17348_17_tpl_45_mem_last_q;
    wire [6:0] redist14_sync_together24_aunroll_x_in_c0_eni17348_17_tpl_45_cmp_b;
    wire [0:0] redist14_sync_together24_aunroll_x_in_c0_eni17348_17_tpl_45_cmp_q;
    reg [0:0] redist14_sync_together24_aunroll_x_in_c0_eni17348_17_tpl_45_cmpReg_q;
    wire [0:0] redist14_sync_together24_aunroll_x_in_c0_eni17348_17_tpl_45_notEnable_q;
    wire [0:0] redist14_sync_together24_aunroll_x_in_c0_eni17348_17_tpl_45_nor_q;
    reg [0:0] redist14_sync_together24_aunroll_x_in_c0_eni17348_17_tpl_45_sticky_ena_q;
    wire [0:0] redist14_sync_together24_aunroll_x_in_c0_eni17348_17_tpl_45_enaAnd_q;
    wire redist11_sync_together24_aunroll_x_in_c0_eni17348_14_tpl_36_split_0_mem_reset0;
    wire [31:0] redist11_sync_together24_aunroll_x_in_c0_eni17348_14_tpl_36_split_0_mem_ia;
    wire [4:0] redist11_sync_together24_aunroll_x_in_c0_eni17348_14_tpl_36_split_0_mem_aa;
    wire [4:0] redist11_sync_together24_aunroll_x_in_c0_eni17348_14_tpl_36_split_0_mem_ab;
    wire [31:0] redist11_sync_together24_aunroll_x_in_c0_eni17348_14_tpl_36_split_0_mem_iq;
    wire [31:0] redist11_sync_together24_aunroll_x_in_c0_eni17348_14_tpl_36_split_0_mem_q;
    wire [4:0] redist11_sync_together24_aunroll_x_in_c0_eni17348_14_tpl_36_split_0_rdcnt_q;
    (* preserve *) reg [4:0] redist11_sync_together24_aunroll_x_in_c0_eni17348_14_tpl_36_split_0_rdcnt_i;
    reg [4:0] redist11_sync_together24_aunroll_x_in_c0_eni17348_14_tpl_36_split_0_wraddr_q;
    wire [5:0] redist11_sync_together24_aunroll_x_in_c0_eni17348_14_tpl_36_split_0_mem_last_q;
    wire [5:0] redist11_sync_together24_aunroll_x_in_c0_eni17348_14_tpl_36_split_0_cmp_b;
    wire [0:0] redist11_sync_together24_aunroll_x_in_c0_eni17348_14_tpl_36_split_0_cmp_q;
    (* dont_merge *) reg [0:0] redist11_sync_together24_aunroll_x_in_c0_eni17348_14_tpl_36_split_0_cmpReg_q;
    wire [0:0] redist11_sync_together24_aunroll_x_in_c0_eni17348_14_tpl_36_split_0_notEnable_q;
    wire [0:0] redist11_sync_together24_aunroll_x_in_c0_eni17348_14_tpl_36_split_0_nor_q;
    (* dont_merge *) reg [0:0] redist11_sync_together24_aunroll_x_in_c0_eni17348_14_tpl_36_split_0_sticky_ena_q;
    wire [0:0] redist11_sync_together24_aunroll_x_in_c0_eni17348_14_tpl_36_split_0_enaAnd_q;
    wire redist12_sync_together24_aunroll_x_in_c0_eni17348_15_tpl_39_split_0_mem_reset0;
    wire [31:0] redist12_sync_together24_aunroll_x_in_c0_eni17348_15_tpl_39_split_0_mem_ia;
    wire [4:0] redist12_sync_together24_aunroll_x_in_c0_eni17348_15_tpl_39_split_0_mem_aa;
    wire [4:0] redist12_sync_together24_aunroll_x_in_c0_eni17348_15_tpl_39_split_0_mem_ab;
    wire [31:0] redist12_sync_together24_aunroll_x_in_c0_eni17348_15_tpl_39_split_0_mem_iq;
    wire [31:0] redist12_sync_together24_aunroll_x_in_c0_eni17348_15_tpl_39_split_0_mem_q;
    wire [4:0] redist12_sync_together24_aunroll_x_in_c0_eni17348_15_tpl_39_split_0_rdcnt_q;
    (* preserve *) reg [4:0] redist12_sync_together24_aunroll_x_in_c0_eni17348_15_tpl_39_split_0_rdcnt_i;
    reg [4:0] redist12_sync_together24_aunroll_x_in_c0_eni17348_15_tpl_39_split_0_wraddr_q;
    wire [5:0] redist12_sync_together24_aunroll_x_in_c0_eni17348_15_tpl_39_split_0_mem_last_q;
    wire [5:0] redist12_sync_together24_aunroll_x_in_c0_eni17348_15_tpl_39_split_0_cmp_b;
    wire [0:0] redist12_sync_together24_aunroll_x_in_c0_eni17348_15_tpl_39_split_0_cmp_q;
    (* dont_merge *) reg [0:0] redist12_sync_together24_aunroll_x_in_c0_eni17348_15_tpl_39_split_0_cmpReg_q;
    wire [0:0] redist12_sync_together24_aunroll_x_in_c0_eni17348_15_tpl_39_split_0_nor_q;
    (* dont_merge *) reg [0:0] redist12_sync_together24_aunroll_x_in_c0_eni17348_15_tpl_39_split_0_sticky_ena_q;
    wire [0:0] redist12_sync_together24_aunroll_x_in_c0_eni17348_15_tpl_39_split_0_enaAnd_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist15_sync_together24_aunroll_x_in_i_valid_49(DELAY,104)
    dspba_delay_ver #( .width(1), .depth(49), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist15_sync_together24_aunroll_x_in_i_valid_49 ( .xin(in_i_valid), .xout(redist15_sync_together24_aunroll_x_in_i_valid_49_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist14_sync_together24_aunroll_x_in_c0_eni17348_17_tpl_45_notEnable(LOGICAL,249)
    assign redist14_sync_together24_aunroll_x_in_c0_eni17348_17_tpl_45_notEnable_q = $unsigned(~ (VCC_q));

    // redist14_sync_together24_aunroll_x_in_c0_eni17348_17_tpl_45_nor(LOGICAL,250)
    assign redist14_sync_together24_aunroll_x_in_c0_eni17348_17_tpl_45_nor_q = ~ (redist14_sync_together24_aunroll_x_in_c0_eni17348_17_tpl_45_notEnable_q | redist14_sync_together24_aunroll_x_in_c0_eni17348_17_tpl_45_sticky_ena_q);

    // redist14_sync_together24_aunroll_x_in_c0_eni17348_17_tpl_45_mem_last(CONSTANT,246)
    assign redist14_sync_together24_aunroll_x_in_c0_eni17348_17_tpl_45_mem_last_q = $unsigned(7'b0101001);

    // redist14_sync_together24_aunroll_x_in_c0_eni17348_17_tpl_45_cmp(LOGICAL,247)
    assign redist14_sync_together24_aunroll_x_in_c0_eni17348_17_tpl_45_cmp_b = {1'b0, redist14_sync_together24_aunroll_x_in_c0_eni17348_17_tpl_45_rdcnt_q};
    assign redist14_sync_together24_aunroll_x_in_c0_eni17348_17_tpl_45_cmp_q = $unsigned(redist14_sync_together24_aunroll_x_in_c0_eni17348_17_tpl_45_mem_last_q == redist14_sync_together24_aunroll_x_in_c0_eni17348_17_tpl_45_cmp_b ? 1'b1 : 1'b0);

    // redist14_sync_together24_aunroll_x_in_c0_eni17348_17_tpl_45_cmpReg(REG,248)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_sync_together24_aunroll_x_in_c0_eni17348_17_tpl_45_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist14_sync_together24_aunroll_x_in_c0_eni17348_17_tpl_45_cmpReg_q <= $unsigned(redist14_sync_together24_aunroll_x_in_c0_eni17348_17_tpl_45_cmp_q);
        end
    end

    // redist14_sync_together24_aunroll_x_in_c0_eni17348_17_tpl_45_sticky_ena(REG,251)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_sync_together24_aunroll_x_in_c0_eni17348_17_tpl_45_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist14_sync_together24_aunroll_x_in_c0_eni17348_17_tpl_45_nor_q == 1'b1)
        begin
            redist14_sync_together24_aunroll_x_in_c0_eni17348_17_tpl_45_sticky_ena_q <= $unsigned(redist14_sync_together24_aunroll_x_in_c0_eni17348_17_tpl_45_cmpReg_q);
        end
    end

    // redist14_sync_together24_aunroll_x_in_c0_eni17348_17_tpl_45_enaAnd(LOGICAL,252)
    assign redist14_sync_together24_aunroll_x_in_c0_eni17348_17_tpl_45_enaAnd_q = redist14_sync_together24_aunroll_x_in_c0_eni17348_17_tpl_45_sticky_ena_q & VCC_q;

    // redist14_sync_together24_aunroll_x_in_c0_eni17348_17_tpl_45_rdcnt(COUNTER,244)
    // low=0, high=42, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_sync_together24_aunroll_x_in_c0_eni17348_17_tpl_45_rdcnt_i <= 6'd0;
            redist14_sync_together24_aunroll_x_in_c0_eni17348_17_tpl_45_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist14_sync_together24_aunroll_x_in_c0_eni17348_17_tpl_45_rdcnt_i == 6'd41)
            begin
                redist14_sync_together24_aunroll_x_in_c0_eni17348_17_tpl_45_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist14_sync_together24_aunroll_x_in_c0_eni17348_17_tpl_45_rdcnt_eq <= 1'b0;
            end
            if (redist14_sync_together24_aunroll_x_in_c0_eni17348_17_tpl_45_rdcnt_eq == 1'b1)
            begin
                redist14_sync_together24_aunroll_x_in_c0_eni17348_17_tpl_45_rdcnt_i <= $unsigned(redist14_sync_together24_aunroll_x_in_c0_eni17348_17_tpl_45_rdcnt_i) + $unsigned(6'd22);
            end
            else
            begin
                redist14_sync_together24_aunroll_x_in_c0_eni17348_17_tpl_45_rdcnt_i <= $unsigned(redist14_sync_together24_aunroll_x_in_c0_eni17348_17_tpl_45_rdcnt_i) + $unsigned(6'd1);
            end
        end
    end
    assign redist14_sync_together24_aunroll_x_in_c0_eni17348_17_tpl_45_rdcnt_q = redist14_sync_together24_aunroll_x_in_c0_eni17348_17_tpl_45_rdcnt_i[5:0];

    // redist14_sync_together24_aunroll_x_in_c0_eni17348_17_tpl_45_wraddr(REG,245)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_sync_together24_aunroll_x_in_c0_eni17348_17_tpl_45_wraddr_q <= $unsigned(6'b101010);
        end
        else
        begin
            redist14_sync_together24_aunroll_x_in_c0_eni17348_17_tpl_45_wraddr_q <= $unsigned(redist14_sync_together24_aunroll_x_in_c0_eni17348_17_tpl_45_rdcnt_q);
        end
    end

    // redist14_sync_together24_aunroll_x_in_c0_eni17348_17_tpl_45_mem(DUALMEM,243)
    assign redist14_sync_together24_aunroll_x_in_c0_eni17348_17_tpl_45_mem_ia = $unsigned(in_c0_eni17348_17_tpl);
    assign redist14_sync_together24_aunroll_x_in_c0_eni17348_17_tpl_45_mem_aa = redist14_sync_together24_aunroll_x_in_c0_eni17348_17_tpl_45_wraddr_q;
    assign redist14_sync_together24_aunroll_x_in_c0_eni17348_17_tpl_45_mem_ab = redist14_sync_together24_aunroll_x_in_c0_eni17348_17_tpl_45_rdcnt_q;
    assign redist14_sync_together24_aunroll_x_in_c0_eni17348_17_tpl_45_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("M20K"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(6),
        .numwords_a(43),
        .width_b(32),
        .widthad_b(6),
        .numwords_b(43),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .address_reg_b("CLOCK0"),
        .indata_reg_b("CLOCK0"),
        .rdcontrol_reg_b("CLOCK0"),
        .byteena_reg_b("CLOCK0"),
        .outdata_reg_b("CLOCK1"),
        .outdata_aclr_b("CLEAR1"),
        .clock_enable_input_a("NORMAL"),
        .clock_enable_input_b("NORMAL"),
        .clock_enable_output_b("NORMAL"),
        .read_during_write_mode_mixed_ports("DONT_CARE"),
        .power_up_uninitialized("TRUE"),
        .intended_device_family("Arria 10")
    ) redist14_sync_together24_aunroll_x_in_c0_eni17348_17_tpl_45_mem_dmem (
        .clocken1(redist14_sync_together24_aunroll_x_in_c0_eni17348_17_tpl_45_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist14_sync_together24_aunroll_x_in_c0_eni17348_17_tpl_45_mem_reset0),
        .clock1(clock),
        .address_a(redist14_sync_together24_aunroll_x_in_c0_eni17348_17_tpl_45_mem_aa),
        .data_a(redist14_sync_together24_aunroll_x_in_c0_eni17348_17_tpl_45_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist14_sync_together24_aunroll_x_in_c0_eni17348_17_tpl_45_mem_ab),
        .q_b(redist14_sync_together24_aunroll_x_in_c0_eni17348_17_tpl_45_mem_iq),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_b(),
        .clocken2(),
        .clocken3(),
        .aclr0(),
        .addressstall_a(),
        .addressstall_b(),
        .byteena_a(),
        .byteena_b(),
        .eccencbypass(),
        .eccencparity(),
        .sclr(),
        .address2_a(),
        .address2_b(),
        .q_a(),
        .eccstatus()
    );
    assign redist14_sync_together24_aunroll_x_in_c0_eni17348_17_tpl_45_mem_q = redist14_sync_together24_aunroll_x_in_c0_eni17348_17_tpl_45_mem_iq[31:0];

    // redist14_sync_together24_aunroll_x_in_c0_eni17348_17_tpl_45_outputreg0(DELAY,242)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_sync_together24_aunroll_x_in_c0_eni17348_17_tpl_45_outputreg0_q <= '0;
        end
        else
        begin
            redist14_sync_together24_aunroll_x_in_c0_eni17348_17_tpl_45_outputreg0_q <= $unsigned(redist14_sync_together24_aunroll_x_in_c0_eni17348_17_tpl_45_mem_q);
        end
    end

    // redist13_sync_together24_aunroll_x_in_c0_eni17348_16_tpl_42_notEnable(LOGICAL,238)
    assign redist13_sync_together24_aunroll_x_in_c0_eni17348_16_tpl_42_notEnable_q = $unsigned(~ (VCC_q));

    // redist13_sync_together24_aunroll_x_in_c0_eni17348_16_tpl_42_nor(LOGICAL,239)
    assign redist13_sync_together24_aunroll_x_in_c0_eni17348_16_tpl_42_nor_q = ~ (redist13_sync_together24_aunroll_x_in_c0_eni17348_16_tpl_42_notEnable_q | redist13_sync_together24_aunroll_x_in_c0_eni17348_16_tpl_42_sticky_ena_q);

    // redist13_sync_together24_aunroll_x_in_c0_eni17348_16_tpl_42_mem_last(CONSTANT,235)
    assign redist13_sync_together24_aunroll_x_in_c0_eni17348_16_tpl_42_mem_last_q = $unsigned(7'b0100110);

    // redist13_sync_together24_aunroll_x_in_c0_eni17348_16_tpl_42_cmp(LOGICAL,236)
    assign redist13_sync_together24_aunroll_x_in_c0_eni17348_16_tpl_42_cmp_b = {1'b0, redist13_sync_together24_aunroll_x_in_c0_eni17348_16_tpl_42_rdcnt_q};
    assign redist13_sync_together24_aunroll_x_in_c0_eni17348_16_tpl_42_cmp_q = $unsigned(redist13_sync_together24_aunroll_x_in_c0_eni17348_16_tpl_42_mem_last_q == redist13_sync_together24_aunroll_x_in_c0_eni17348_16_tpl_42_cmp_b ? 1'b1 : 1'b0);

    // redist13_sync_together24_aunroll_x_in_c0_eni17348_16_tpl_42_cmpReg(REG,237)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_sync_together24_aunroll_x_in_c0_eni17348_16_tpl_42_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist13_sync_together24_aunroll_x_in_c0_eni17348_16_tpl_42_cmpReg_q <= $unsigned(redist13_sync_together24_aunroll_x_in_c0_eni17348_16_tpl_42_cmp_q);
        end
    end

    // redist13_sync_together24_aunroll_x_in_c0_eni17348_16_tpl_42_sticky_ena(REG,240)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_sync_together24_aunroll_x_in_c0_eni17348_16_tpl_42_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist13_sync_together24_aunroll_x_in_c0_eni17348_16_tpl_42_nor_q == 1'b1)
        begin
            redist13_sync_together24_aunroll_x_in_c0_eni17348_16_tpl_42_sticky_ena_q <= $unsigned(redist13_sync_together24_aunroll_x_in_c0_eni17348_16_tpl_42_cmpReg_q);
        end
    end

    // redist13_sync_together24_aunroll_x_in_c0_eni17348_16_tpl_42_enaAnd(LOGICAL,241)
    assign redist13_sync_together24_aunroll_x_in_c0_eni17348_16_tpl_42_enaAnd_q = redist13_sync_together24_aunroll_x_in_c0_eni17348_16_tpl_42_sticky_ena_q & VCC_q;

    // redist13_sync_together24_aunroll_x_in_c0_eni17348_16_tpl_42_rdcnt(COUNTER,233)
    // low=0, high=39, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_sync_together24_aunroll_x_in_c0_eni17348_16_tpl_42_rdcnt_i <= 6'd0;
            redist13_sync_together24_aunroll_x_in_c0_eni17348_16_tpl_42_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist13_sync_together24_aunroll_x_in_c0_eni17348_16_tpl_42_rdcnt_i == 6'd38)
            begin
                redist13_sync_together24_aunroll_x_in_c0_eni17348_16_tpl_42_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist13_sync_together24_aunroll_x_in_c0_eni17348_16_tpl_42_rdcnt_eq <= 1'b0;
            end
            if (redist13_sync_together24_aunroll_x_in_c0_eni17348_16_tpl_42_rdcnt_eq == 1'b1)
            begin
                redist13_sync_together24_aunroll_x_in_c0_eni17348_16_tpl_42_rdcnt_i <= $unsigned(redist13_sync_together24_aunroll_x_in_c0_eni17348_16_tpl_42_rdcnt_i) + $unsigned(6'd25);
            end
            else
            begin
                redist13_sync_together24_aunroll_x_in_c0_eni17348_16_tpl_42_rdcnt_i <= $unsigned(redist13_sync_together24_aunroll_x_in_c0_eni17348_16_tpl_42_rdcnt_i) + $unsigned(6'd1);
            end
        end
    end
    assign redist13_sync_together24_aunroll_x_in_c0_eni17348_16_tpl_42_rdcnt_q = redist13_sync_together24_aunroll_x_in_c0_eni17348_16_tpl_42_rdcnt_i[5:0];

    // redist13_sync_together24_aunroll_x_in_c0_eni17348_16_tpl_42_wraddr(REG,234)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_sync_together24_aunroll_x_in_c0_eni17348_16_tpl_42_wraddr_q <= $unsigned(6'b100111);
        end
        else
        begin
            redist13_sync_together24_aunroll_x_in_c0_eni17348_16_tpl_42_wraddr_q <= $unsigned(redist13_sync_together24_aunroll_x_in_c0_eni17348_16_tpl_42_rdcnt_q);
        end
    end

    // redist13_sync_together24_aunroll_x_in_c0_eni17348_16_tpl_42_mem(DUALMEM,232)
    assign redist13_sync_together24_aunroll_x_in_c0_eni17348_16_tpl_42_mem_ia = $unsigned(in_c0_eni17348_16_tpl);
    assign redist13_sync_together24_aunroll_x_in_c0_eni17348_16_tpl_42_mem_aa = redist13_sync_together24_aunroll_x_in_c0_eni17348_16_tpl_42_wraddr_q;
    assign redist13_sync_together24_aunroll_x_in_c0_eni17348_16_tpl_42_mem_ab = redist13_sync_together24_aunroll_x_in_c0_eni17348_16_tpl_42_rdcnt_q;
    assign redist13_sync_together24_aunroll_x_in_c0_eni17348_16_tpl_42_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("M20K"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(6),
        .numwords_a(40),
        .width_b(32),
        .widthad_b(6),
        .numwords_b(40),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .address_reg_b("CLOCK0"),
        .indata_reg_b("CLOCK0"),
        .rdcontrol_reg_b("CLOCK0"),
        .byteena_reg_b("CLOCK0"),
        .outdata_reg_b("CLOCK1"),
        .outdata_aclr_b("CLEAR1"),
        .clock_enable_input_a("NORMAL"),
        .clock_enable_input_b("NORMAL"),
        .clock_enable_output_b("NORMAL"),
        .read_during_write_mode_mixed_ports("DONT_CARE"),
        .power_up_uninitialized("TRUE"),
        .intended_device_family("Arria 10")
    ) redist13_sync_together24_aunroll_x_in_c0_eni17348_16_tpl_42_mem_dmem (
        .clocken1(redist13_sync_together24_aunroll_x_in_c0_eni17348_16_tpl_42_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist13_sync_together24_aunroll_x_in_c0_eni17348_16_tpl_42_mem_reset0),
        .clock1(clock),
        .address_a(redist13_sync_together24_aunroll_x_in_c0_eni17348_16_tpl_42_mem_aa),
        .data_a(redist13_sync_together24_aunroll_x_in_c0_eni17348_16_tpl_42_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist13_sync_together24_aunroll_x_in_c0_eni17348_16_tpl_42_mem_ab),
        .q_b(redist13_sync_together24_aunroll_x_in_c0_eni17348_16_tpl_42_mem_iq),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_b(),
        .clocken2(),
        .clocken3(),
        .aclr0(),
        .addressstall_a(),
        .addressstall_b(),
        .byteena_a(),
        .byteena_b(),
        .eccencbypass(),
        .eccencparity(),
        .sclr(),
        .address2_a(),
        .address2_b(),
        .q_a(),
        .eccstatus()
    );
    assign redist13_sync_together24_aunroll_x_in_c0_eni17348_16_tpl_42_mem_q = redist13_sync_together24_aunroll_x_in_c0_eni17348_16_tpl_42_mem_iq[31:0];

    // redist13_sync_together24_aunroll_x_in_c0_eni17348_16_tpl_42_outputreg0(DELAY,231)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_sync_together24_aunroll_x_in_c0_eni17348_16_tpl_42_outputreg0_q <= '0;
        end
        else
        begin
            redist13_sync_together24_aunroll_x_in_c0_eni17348_16_tpl_42_outputreg0_q <= $unsigned(redist13_sync_together24_aunroll_x_in_c0_eni17348_16_tpl_42_mem_q);
        end
    end

    // redist12_sync_together24_aunroll_x_in_c0_eni17348_15_tpl_39_notEnable(LOGICAL,227)
    assign redist12_sync_together24_aunroll_x_in_c0_eni17348_15_tpl_39_notEnable_q = $unsigned(~ (VCC_q));

    // redist12_sync_together24_aunroll_x_in_c0_eni17348_15_tpl_39_nor(LOGICAL,228)
    assign redist12_sync_together24_aunroll_x_in_c0_eni17348_15_tpl_39_nor_q = ~ (redist12_sync_together24_aunroll_x_in_c0_eni17348_15_tpl_39_notEnable_q | redist12_sync_together24_aunroll_x_in_c0_eni17348_15_tpl_39_sticky_ena_q);

    // redist12_sync_together24_aunroll_x_in_c0_eni17348_15_tpl_39_mem_last(CONSTANT,224)
    assign redist12_sync_together24_aunroll_x_in_c0_eni17348_15_tpl_39_mem_last_q = $unsigned(3'b010);

    // redist12_sync_together24_aunroll_x_in_c0_eni17348_15_tpl_39_cmp(LOGICAL,225)
    assign redist12_sync_together24_aunroll_x_in_c0_eni17348_15_tpl_39_cmp_b = {1'b0, redist12_sync_together24_aunroll_x_in_c0_eni17348_15_tpl_39_rdcnt_q};
    assign redist12_sync_together24_aunroll_x_in_c0_eni17348_15_tpl_39_cmp_q = $unsigned(redist12_sync_together24_aunroll_x_in_c0_eni17348_15_tpl_39_mem_last_q == redist12_sync_together24_aunroll_x_in_c0_eni17348_15_tpl_39_cmp_b ? 1'b1 : 1'b0);

    // redist12_sync_together24_aunroll_x_in_c0_eni17348_15_tpl_39_cmpReg(REG,226)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_sync_together24_aunroll_x_in_c0_eni17348_15_tpl_39_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist12_sync_together24_aunroll_x_in_c0_eni17348_15_tpl_39_cmpReg_q <= $unsigned(redist12_sync_together24_aunroll_x_in_c0_eni17348_15_tpl_39_cmp_q);
        end
    end

    // redist12_sync_together24_aunroll_x_in_c0_eni17348_15_tpl_39_sticky_ena(REG,229)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_sync_together24_aunroll_x_in_c0_eni17348_15_tpl_39_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist12_sync_together24_aunroll_x_in_c0_eni17348_15_tpl_39_nor_q == 1'b1)
        begin
            redist12_sync_together24_aunroll_x_in_c0_eni17348_15_tpl_39_sticky_ena_q <= $unsigned(redist12_sync_together24_aunroll_x_in_c0_eni17348_15_tpl_39_cmpReg_q);
        end
    end

    // redist12_sync_together24_aunroll_x_in_c0_eni17348_15_tpl_39_enaAnd(LOGICAL,230)
    assign redist12_sync_together24_aunroll_x_in_c0_eni17348_15_tpl_39_enaAnd_q = redist12_sync_together24_aunroll_x_in_c0_eni17348_15_tpl_39_sticky_ena_q & VCC_q;

    // redist12_sync_together24_aunroll_x_in_c0_eni17348_15_tpl_39_rdcnt(COUNTER,222)
    // low=0, high=3, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_sync_together24_aunroll_x_in_c0_eni17348_15_tpl_39_rdcnt_i <= 2'd0;
        end
        else
        begin
            redist12_sync_together24_aunroll_x_in_c0_eni17348_15_tpl_39_rdcnt_i <= $unsigned(redist12_sync_together24_aunroll_x_in_c0_eni17348_15_tpl_39_rdcnt_i) + $unsigned(2'd1);
        end
    end
    assign redist12_sync_together24_aunroll_x_in_c0_eni17348_15_tpl_39_rdcnt_q = redist12_sync_together24_aunroll_x_in_c0_eni17348_15_tpl_39_rdcnt_i[1:0];

    // redist12_sync_together24_aunroll_x_in_c0_eni17348_15_tpl_39_split_0_nor(LOGICAL,270)
    assign redist12_sync_together24_aunroll_x_in_c0_eni17348_15_tpl_39_split_0_nor_q = ~ (redist12_sync_together24_aunroll_x_in_c0_eni17348_15_tpl_39_notEnable_q | redist12_sync_together24_aunroll_x_in_c0_eni17348_15_tpl_39_split_0_sticky_ena_q);

    // redist12_sync_together24_aunroll_x_in_c0_eni17348_15_tpl_39_split_0_mem_last(CONSTANT,266)
    assign redist12_sync_together24_aunroll_x_in_c0_eni17348_15_tpl_39_split_0_mem_last_q = $unsigned(6'b011110);

    // redist12_sync_together24_aunroll_x_in_c0_eni17348_15_tpl_39_split_0_cmp(LOGICAL,267)
    assign redist12_sync_together24_aunroll_x_in_c0_eni17348_15_tpl_39_split_0_cmp_b = {1'b0, redist12_sync_together24_aunroll_x_in_c0_eni17348_15_tpl_39_split_0_rdcnt_q};
    assign redist12_sync_together24_aunroll_x_in_c0_eni17348_15_tpl_39_split_0_cmp_q = $unsigned(redist12_sync_together24_aunroll_x_in_c0_eni17348_15_tpl_39_split_0_mem_last_q == redist12_sync_together24_aunroll_x_in_c0_eni17348_15_tpl_39_split_0_cmp_b ? 1'b1 : 1'b0);

    // redist12_sync_together24_aunroll_x_in_c0_eni17348_15_tpl_39_split_0_cmpReg(REG,268)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_sync_together24_aunroll_x_in_c0_eni17348_15_tpl_39_split_0_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist12_sync_together24_aunroll_x_in_c0_eni17348_15_tpl_39_split_0_cmpReg_q <= $unsigned(redist12_sync_together24_aunroll_x_in_c0_eni17348_15_tpl_39_split_0_cmp_q);
        end
    end

    // redist12_sync_together24_aunroll_x_in_c0_eni17348_15_tpl_39_split_0_sticky_ena(REG,271)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_sync_together24_aunroll_x_in_c0_eni17348_15_tpl_39_split_0_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist12_sync_together24_aunroll_x_in_c0_eni17348_15_tpl_39_split_0_nor_q == 1'b1)
        begin
            redist12_sync_together24_aunroll_x_in_c0_eni17348_15_tpl_39_split_0_sticky_ena_q <= $unsigned(redist12_sync_together24_aunroll_x_in_c0_eni17348_15_tpl_39_split_0_cmpReg_q);
        end
    end

    // redist12_sync_together24_aunroll_x_in_c0_eni17348_15_tpl_39_split_0_enaAnd(LOGICAL,272)
    assign redist12_sync_together24_aunroll_x_in_c0_eni17348_15_tpl_39_split_0_enaAnd_q = redist12_sync_together24_aunroll_x_in_c0_eni17348_15_tpl_39_split_0_sticky_ena_q & VCC_q;

    // redist12_sync_together24_aunroll_x_in_c0_eni17348_15_tpl_39_split_0_rdcnt(COUNTER,264)
    // low=0, high=31, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_sync_together24_aunroll_x_in_c0_eni17348_15_tpl_39_split_0_rdcnt_i <= 5'd0;
        end
        else
        begin
            redist12_sync_together24_aunroll_x_in_c0_eni17348_15_tpl_39_split_0_rdcnt_i <= $unsigned(redist12_sync_together24_aunroll_x_in_c0_eni17348_15_tpl_39_split_0_rdcnt_i) + $unsigned(5'd1);
        end
    end
    assign redist12_sync_together24_aunroll_x_in_c0_eni17348_15_tpl_39_split_0_rdcnt_q = redist12_sync_together24_aunroll_x_in_c0_eni17348_15_tpl_39_split_0_rdcnt_i[4:0];

    // redist12_sync_together24_aunroll_x_in_c0_eni17348_15_tpl_39_split_0_wraddr(REG,265)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_sync_together24_aunroll_x_in_c0_eni17348_15_tpl_39_split_0_wraddr_q <= $unsigned(5'b11111);
        end
        else
        begin
            redist12_sync_together24_aunroll_x_in_c0_eni17348_15_tpl_39_split_0_wraddr_q <= $unsigned(redist12_sync_together24_aunroll_x_in_c0_eni17348_15_tpl_39_split_0_rdcnt_q);
        end
    end

    // redist12_sync_together24_aunroll_x_in_c0_eni17348_15_tpl_39_split_0_mem(DUALMEM,263)
    assign redist12_sync_together24_aunroll_x_in_c0_eni17348_15_tpl_39_split_0_mem_ia = $unsigned(in_c0_eni17348_15_tpl);
    assign redist12_sync_together24_aunroll_x_in_c0_eni17348_15_tpl_39_split_0_mem_aa = redist12_sync_together24_aunroll_x_in_c0_eni17348_15_tpl_39_split_0_wraddr_q;
    assign redist12_sync_together24_aunroll_x_in_c0_eni17348_15_tpl_39_split_0_mem_ab = redist12_sync_together24_aunroll_x_in_c0_eni17348_15_tpl_39_split_0_rdcnt_q;
    assign redist12_sync_together24_aunroll_x_in_c0_eni17348_15_tpl_39_split_0_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(5),
        .numwords_a(32),
        .width_b(32),
        .widthad_b(5),
        .numwords_b(32),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .address_reg_b("CLOCK0"),
        .indata_reg_b("CLOCK0"),
        .rdcontrol_reg_b("CLOCK0"),
        .byteena_reg_b("CLOCK0"),
        .outdata_reg_b("CLOCK1"),
        .outdata_aclr_b("CLEAR1"),
        .clock_enable_input_a("NORMAL"),
        .clock_enable_input_b("NORMAL"),
        .clock_enable_output_b("NORMAL"),
        .read_during_write_mode_mixed_ports("DONT_CARE"),
        .power_up_uninitialized("TRUE"),
        .intended_device_family("Arria 10")
    ) redist12_sync_together24_aunroll_x_in_c0_eni17348_15_tpl_39_split_0_mem_dmem (
        .clocken1(redist12_sync_together24_aunroll_x_in_c0_eni17348_15_tpl_39_split_0_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist12_sync_together24_aunroll_x_in_c0_eni17348_15_tpl_39_split_0_mem_reset0),
        .clock1(clock),
        .address_a(redist12_sync_together24_aunroll_x_in_c0_eni17348_15_tpl_39_split_0_mem_aa),
        .data_a(redist12_sync_together24_aunroll_x_in_c0_eni17348_15_tpl_39_split_0_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist12_sync_together24_aunroll_x_in_c0_eni17348_15_tpl_39_split_0_mem_ab),
        .q_b(redist12_sync_together24_aunroll_x_in_c0_eni17348_15_tpl_39_split_0_mem_iq),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_b(),
        .clocken2(),
        .clocken3(),
        .aclr0(),
        .addressstall_a(),
        .addressstall_b(),
        .byteena_a(),
        .byteena_b(),
        .eccencbypass(),
        .eccencparity(),
        .sclr(),
        .address2_a(),
        .address2_b(),
        .q_a(),
        .eccstatus()
    );
    assign redist12_sync_together24_aunroll_x_in_c0_eni17348_15_tpl_39_split_0_mem_q = redist12_sync_together24_aunroll_x_in_c0_eni17348_15_tpl_39_split_0_mem_iq[31:0];

    // redist12_sync_together24_aunroll_x_in_c0_eni17348_15_tpl_39_wraddr(REG,223)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_sync_together24_aunroll_x_in_c0_eni17348_15_tpl_39_wraddr_q <= $unsigned(2'b11);
        end
        else
        begin
            redist12_sync_together24_aunroll_x_in_c0_eni17348_15_tpl_39_wraddr_q <= $unsigned(redist12_sync_together24_aunroll_x_in_c0_eni17348_15_tpl_39_rdcnt_q);
        end
    end

    // redist12_sync_together24_aunroll_x_in_c0_eni17348_15_tpl_39_mem(DUALMEM,221)
    assign redist12_sync_together24_aunroll_x_in_c0_eni17348_15_tpl_39_mem_ia = $unsigned(redist12_sync_together24_aunroll_x_in_c0_eni17348_15_tpl_39_split_0_mem_q);
    assign redist12_sync_together24_aunroll_x_in_c0_eni17348_15_tpl_39_mem_aa = redist12_sync_together24_aunroll_x_in_c0_eni17348_15_tpl_39_wraddr_q;
    assign redist12_sync_together24_aunroll_x_in_c0_eni17348_15_tpl_39_mem_ab = redist12_sync_together24_aunroll_x_in_c0_eni17348_15_tpl_39_rdcnt_q;
    assign redist12_sync_together24_aunroll_x_in_c0_eni17348_15_tpl_39_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(2),
        .numwords_a(4),
        .width_b(32),
        .widthad_b(2),
        .numwords_b(4),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .address_reg_b("CLOCK0"),
        .indata_reg_b("CLOCK0"),
        .rdcontrol_reg_b("CLOCK0"),
        .byteena_reg_b("CLOCK0"),
        .outdata_reg_b("CLOCK1"),
        .outdata_aclr_b("CLEAR1"),
        .clock_enable_input_a("NORMAL"),
        .clock_enable_input_b("NORMAL"),
        .clock_enable_output_b("NORMAL"),
        .read_during_write_mode_mixed_ports("DONT_CARE"),
        .power_up_uninitialized("TRUE"),
        .intended_device_family("Arria 10")
    ) redist12_sync_together24_aunroll_x_in_c0_eni17348_15_tpl_39_mem_dmem (
        .clocken1(redist12_sync_together24_aunroll_x_in_c0_eni17348_15_tpl_39_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist12_sync_together24_aunroll_x_in_c0_eni17348_15_tpl_39_mem_reset0),
        .clock1(clock),
        .address_a(redist12_sync_together24_aunroll_x_in_c0_eni17348_15_tpl_39_mem_aa),
        .data_a(redist12_sync_together24_aunroll_x_in_c0_eni17348_15_tpl_39_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist12_sync_together24_aunroll_x_in_c0_eni17348_15_tpl_39_mem_ab),
        .q_b(redist12_sync_together24_aunroll_x_in_c0_eni17348_15_tpl_39_mem_iq),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_b(),
        .clocken2(),
        .clocken3(),
        .aclr0(),
        .addressstall_a(),
        .addressstall_b(),
        .byteena_a(),
        .byteena_b(),
        .eccencbypass(),
        .eccencparity(),
        .sclr(),
        .address2_a(),
        .address2_b(),
        .q_a(),
        .eccstatus()
    );
    assign redist12_sync_together24_aunroll_x_in_c0_eni17348_15_tpl_39_mem_q = redist12_sync_together24_aunroll_x_in_c0_eni17348_15_tpl_39_mem_iq[31:0];

    // redist12_sync_together24_aunroll_x_in_c0_eni17348_15_tpl_39_outputreg0(DELAY,220)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_sync_together24_aunroll_x_in_c0_eni17348_15_tpl_39_outputreg0_q <= '0;
        end
        else
        begin
            redist12_sync_together24_aunroll_x_in_c0_eni17348_15_tpl_39_outputreg0_q <= $unsigned(redist12_sync_together24_aunroll_x_in_c0_eni17348_15_tpl_39_mem_q);
        end
    end

    // redist11_sync_together24_aunroll_x_in_c0_eni17348_14_tpl_36_split_0_notEnable(LOGICAL,259)
    assign redist11_sync_together24_aunroll_x_in_c0_eni17348_14_tpl_36_split_0_notEnable_q = $unsigned(~ (VCC_q));

    // redist11_sync_together24_aunroll_x_in_c0_eni17348_14_tpl_36_split_0_nor(LOGICAL,260)
    assign redist11_sync_together24_aunroll_x_in_c0_eni17348_14_tpl_36_split_0_nor_q = ~ (redist11_sync_together24_aunroll_x_in_c0_eni17348_14_tpl_36_split_0_notEnable_q | redist11_sync_together24_aunroll_x_in_c0_eni17348_14_tpl_36_split_0_sticky_ena_q);

    // redist11_sync_together24_aunroll_x_in_c0_eni17348_14_tpl_36_split_0_mem_last(CONSTANT,256)
    assign redist11_sync_together24_aunroll_x_in_c0_eni17348_14_tpl_36_split_0_mem_last_q = $unsigned(6'b011110);

    // redist11_sync_together24_aunroll_x_in_c0_eni17348_14_tpl_36_split_0_cmp(LOGICAL,257)
    assign redist11_sync_together24_aunroll_x_in_c0_eni17348_14_tpl_36_split_0_cmp_b = {1'b0, redist11_sync_together24_aunroll_x_in_c0_eni17348_14_tpl_36_split_0_rdcnt_q};
    assign redist11_sync_together24_aunroll_x_in_c0_eni17348_14_tpl_36_split_0_cmp_q = $unsigned(redist11_sync_together24_aunroll_x_in_c0_eni17348_14_tpl_36_split_0_mem_last_q == redist11_sync_together24_aunroll_x_in_c0_eni17348_14_tpl_36_split_0_cmp_b ? 1'b1 : 1'b0);

    // redist11_sync_together24_aunroll_x_in_c0_eni17348_14_tpl_36_split_0_cmpReg(REG,258)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_sync_together24_aunroll_x_in_c0_eni17348_14_tpl_36_split_0_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist11_sync_together24_aunroll_x_in_c0_eni17348_14_tpl_36_split_0_cmpReg_q <= $unsigned(redist11_sync_together24_aunroll_x_in_c0_eni17348_14_tpl_36_split_0_cmp_q);
        end
    end

    // redist11_sync_together24_aunroll_x_in_c0_eni17348_14_tpl_36_split_0_sticky_ena(REG,261)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_sync_together24_aunroll_x_in_c0_eni17348_14_tpl_36_split_0_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist11_sync_together24_aunroll_x_in_c0_eni17348_14_tpl_36_split_0_nor_q == 1'b1)
        begin
            redist11_sync_together24_aunroll_x_in_c0_eni17348_14_tpl_36_split_0_sticky_ena_q <= $unsigned(redist11_sync_together24_aunroll_x_in_c0_eni17348_14_tpl_36_split_0_cmpReg_q);
        end
    end

    // redist11_sync_together24_aunroll_x_in_c0_eni17348_14_tpl_36_split_0_enaAnd(LOGICAL,262)
    assign redist11_sync_together24_aunroll_x_in_c0_eni17348_14_tpl_36_split_0_enaAnd_q = redist11_sync_together24_aunroll_x_in_c0_eni17348_14_tpl_36_split_0_sticky_ena_q & VCC_q;

    // redist11_sync_together24_aunroll_x_in_c0_eni17348_14_tpl_36_split_0_rdcnt(COUNTER,254)
    // low=0, high=31, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_sync_together24_aunroll_x_in_c0_eni17348_14_tpl_36_split_0_rdcnt_i <= 5'd0;
        end
        else
        begin
            redist11_sync_together24_aunroll_x_in_c0_eni17348_14_tpl_36_split_0_rdcnt_i <= $unsigned(redist11_sync_together24_aunroll_x_in_c0_eni17348_14_tpl_36_split_0_rdcnt_i) + $unsigned(5'd1);
        end
    end
    assign redist11_sync_together24_aunroll_x_in_c0_eni17348_14_tpl_36_split_0_rdcnt_q = redist11_sync_together24_aunroll_x_in_c0_eni17348_14_tpl_36_split_0_rdcnt_i[4:0];

    // redist11_sync_together24_aunroll_x_in_c0_eni17348_14_tpl_36_split_0_wraddr(REG,255)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_sync_together24_aunroll_x_in_c0_eni17348_14_tpl_36_split_0_wraddr_q <= $unsigned(5'b11111);
        end
        else
        begin
            redist11_sync_together24_aunroll_x_in_c0_eni17348_14_tpl_36_split_0_wraddr_q <= $unsigned(redist11_sync_together24_aunroll_x_in_c0_eni17348_14_tpl_36_split_0_rdcnt_q);
        end
    end

    // redist11_sync_together24_aunroll_x_in_c0_eni17348_14_tpl_36_split_0_mem(DUALMEM,253)
    assign redist11_sync_together24_aunroll_x_in_c0_eni17348_14_tpl_36_split_0_mem_ia = $unsigned(in_c0_eni17348_14_tpl);
    assign redist11_sync_together24_aunroll_x_in_c0_eni17348_14_tpl_36_split_0_mem_aa = redist11_sync_together24_aunroll_x_in_c0_eni17348_14_tpl_36_split_0_wraddr_q;
    assign redist11_sync_together24_aunroll_x_in_c0_eni17348_14_tpl_36_split_0_mem_ab = redist11_sync_together24_aunroll_x_in_c0_eni17348_14_tpl_36_split_0_rdcnt_q;
    assign redist11_sync_together24_aunroll_x_in_c0_eni17348_14_tpl_36_split_0_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(5),
        .numwords_a(32),
        .width_b(32),
        .widthad_b(5),
        .numwords_b(32),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .address_reg_b("CLOCK0"),
        .indata_reg_b("CLOCK0"),
        .rdcontrol_reg_b("CLOCK0"),
        .byteena_reg_b("CLOCK0"),
        .outdata_reg_b("CLOCK1"),
        .outdata_aclr_b("CLEAR1"),
        .clock_enable_input_a("NORMAL"),
        .clock_enable_input_b("NORMAL"),
        .clock_enable_output_b("NORMAL"),
        .read_during_write_mode_mixed_ports("DONT_CARE"),
        .power_up_uninitialized("TRUE"),
        .intended_device_family("Arria 10")
    ) redist11_sync_together24_aunroll_x_in_c0_eni17348_14_tpl_36_split_0_mem_dmem (
        .clocken1(redist11_sync_together24_aunroll_x_in_c0_eni17348_14_tpl_36_split_0_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist11_sync_together24_aunroll_x_in_c0_eni17348_14_tpl_36_split_0_mem_reset0),
        .clock1(clock),
        .address_a(redist11_sync_together24_aunroll_x_in_c0_eni17348_14_tpl_36_split_0_mem_aa),
        .data_a(redist11_sync_together24_aunroll_x_in_c0_eni17348_14_tpl_36_split_0_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist11_sync_together24_aunroll_x_in_c0_eni17348_14_tpl_36_split_0_mem_ab),
        .q_b(redist11_sync_together24_aunroll_x_in_c0_eni17348_14_tpl_36_split_0_mem_iq),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_b(),
        .clocken2(),
        .clocken3(),
        .aclr0(),
        .addressstall_a(),
        .addressstall_b(),
        .byteena_a(),
        .byteena_b(),
        .eccencbypass(),
        .eccencparity(),
        .sclr(),
        .address2_a(),
        .address2_b(),
        .q_a(),
        .eccstatus()
    );
    assign redist11_sync_together24_aunroll_x_in_c0_eni17348_14_tpl_36_split_0_mem_q = redist11_sync_together24_aunroll_x_in_c0_eni17348_14_tpl_36_split_0_mem_iq[31:0];

    // redist11_sync_together24_aunroll_x_in_c0_eni17348_14_tpl_36(DELAY,100)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_sync_together24_aunroll_x_in_c0_eni17348_14_tpl_36_delay_0 <= '0;
            redist11_sync_together24_aunroll_x_in_c0_eni17348_14_tpl_36_q <= '0;
        end
        else
        begin
            redist11_sync_together24_aunroll_x_in_c0_eni17348_14_tpl_36_delay_0 <= $unsigned(redist11_sync_together24_aunroll_x_in_c0_eni17348_14_tpl_36_split_0_mem_q);
            redist11_sync_together24_aunroll_x_in_c0_eni17348_14_tpl_36_q <= redist11_sync_together24_aunroll_x_in_c0_eni17348_14_tpl_36_delay_0;
        end
    end

    // redist11_sync_together24_aunroll_x_in_c0_eni17348_14_tpl_36_outputreg0(DELAY,219)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_sync_together24_aunroll_x_in_c0_eni17348_14_tpl_36_outputreg0_q <= '0;
        end
        else
        begin
            redist11_sync_together24_aunroll_x_in_c0_eni17348_14_tpl_36_outputreg0_q <= $unsigned(redist11_sync_together24_aunroll_x_in_c0_eni17348_14_tpl_36_q);
        end
    end

    // redist10_sync_together24_aunroll_x_in_c0_eni17348_13_tpl_33_notEnable(LOGICAL,215)
    assign redist10_sync_together24_aunroll_x_in_c0_eni17348_13_tpl_33_notEnable_q = $unsigned(~ (VCC_q));

    // redist10_sync_together24_aunroll_x_in_c0_eni17348_13_tpl_33_nor(LOGICAL,216)
    assign redist10_sync_together24_aunroll_x_in_c0_eni17348_13_tpl_33_nor_q = ~ (redist10_sync_together24_aunroll_x_in_c0_eni17348_13_tpl_33_notEnable_q | redist10_sync_together24_aunroll_x_in_c0_eni17348_13_tpl_33_sticky_ena_q);

    // redist10_sync_together24_aunroll_x_in_c0_eni17348_13_tpl_33_mem_last(CONSTANT,212)
    assign redist10_sync_together24_aunroll_x_in_c0_eni17348_13_tpl_33_mem_last_q = $unsigned(6'b011101);

    // redist10_sync_together24_aunroll_x_in_c0_eni17348_13_tpl_33_cmp(LOGICAL,213)
    assign redist10_sync_together24_aunroll_x_in_c0_eni17348_13_tpl_33_cmp_b = {1'b0, redist10_sync_together24_aunroll_x_in_c0_eni17348_13_tpl_33_rdcnt_q};
    assign redist10_sync_together24_aunroll_x_in_c0_eni17348_13_tpl_33_cmp_q = $unsigned(redist10_sync_together24_aunroll_x_in_c0_eni17348_13_tpl_33_mem_last_q == redist10_sync_together24_aunroll_x_in_c0_eni17348_13_tpl_33_cmp_b ? 1'b1 : 1'b0);

    // redist10_sync_together24_aunroll_x_in_c0_eni17348_13_tpl_33_cmpReg(REG,214)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_sync_together24_aunroll_x_in_c0_eni17348_13_tpl_33_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist10_sync_together24_aunroll_x_in_c0_eni17348_13_tpl_33_cmpReg_q <= $unsigned(redist10_sync_together24_aunroll_x_in_c0_eni17348_13_tpl_33_cmp_q);
        end
    end

    // redist10_sync_together24_aunroll_x_in_c0_eni17348_13_tpl_33_sticky_ena(REG,217)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_sync_together24_aunroll_x_in_c0_eni17348_13_tpl_33_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist10_sync_together24_aunroll_x_in_c0_eni17348_13_tpl_33_nor_q == 1'b1)
        begin
            redist10_sync_together24_aunroll_x_in_c0_eni17348_13_tpl_33_sticky_ena_q <= $unsigned(redist10_sync_together24_aunroll_x_in_c0_eni17348_13_tpl_33_cmpReg_q);
        end
    end

    // redist10_sync_together24_aunroll_x_in_c0_eni17348_13_tpl_33_enaAnd(LOGICAL,218)
    assign redist10_sync_together24_aunroll_x_in_c0_eni17348_13_tpl_33_enaAnd_q = redist10_sync_together24_aunroll_x_in_c0_eni17348_13_tpl_33_sticky_ena_q & VCC_q;

    // redist10_sync_together24_aunroll_x_in_c0_eni17348_13_tpl_33_rdcnt(COUNTER,210)
    // low=0, high=30, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_sync_together24_aunroll_x_in_c0_eni17348_13_tpl_33_rdcnt_i <= 5'd0;
            redist10_sync_together24_aunroll_x_in_c0_eni17348_13_tpl_33_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist10_sync_together24_aunroll_x_in_c0_eni17348_13_tpl_33_rdcnt_i == 5'd29)
            begin
                redist10_sync_together24_aunroll_x_in_c0_eni17348_13_tpl_33_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist10_sync_together24_aunroll_x_in_c0_eni17348_13_tpl_33_rdcnt_eq <= 1'b0;
            end
            if (redist10_sync_together24_aunroll_x_in_c0_eni17348_13_tpl_33_rdcnt_eq == 1'b1)
            begin
                redist10_sync_together24_aunroll_x_in_c0_eni17348_13_tpl_33_rdcnt_i <= $unsigned(redist10_sync_together24_aunroll_x_in_c0_eni17348_13_tpl_33_rdcnt_i) + $unsigned(5'd2);
            end
            else
            begin
                redist10_sync_together24_aunroll_x_in_c0_eni17348_13_tpl_33_rdcnt_i <= $unsigned(redist10_sync_together24_aunroll_x_in_c0_eni17348_13_tpl_33_rdcnt_i) + $unsigned(5'd1);
            end
        end
    end
    assign redist10_sync_together24_aunroll_x_in_c0_eni17348_13_tpl_33_rdcnt_q = redist10_sync_together24_aunroll_x_in_c0_eni17348_13_tpl_33_rdcnt_i[4:0];

    // redist10_sync_together24_aunroll_x_in_c0_eni17348_13_tpl_33_wraddr(REG,211)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_sync_together24_aunroll_x_in_c0_eni17348_13_tpl_33_wraddr_q <= $unsigned(5'b11110);
        end
        else
        begin
            redist10_sync_together24_aunroll_x_in_c0_eni17348_13_tpl_33_wraddr_q <= $unsigned(redist10_sync_together24_aunroll_x_in_c0_eni17348_13_tpl_33_rdcnt_q);
        end
    end

    // redist10_sync_together24_aunroll_x_in_c0_eni17348_13_tpl_33_mem(DUALMEM,209)
    assign redist10_sync_together24_aunroll_x_in_c0_eni17348_13_tpl_33_mem_ia = $unsigned(in_c0_eni17348_13_tpl);
    assign redist10_sync_together24_aunroll_x_in_c0_eni17348_13_tpl_33_mem_aa = redist10_sync_together24_aunroll_x_in_c0_eni17348_13_tpl_33_wraddr_q;
    assign redist10_sync_together24_aunroll_x_in_c0_eni17348_13_tpl_33_mem_ab = redist10_sync_together24_aunroll_x_in_c0_eni17348_13_tpl_33_rdcnt_q;
    assign redist10_sync_together24_aunroll_x_in_c0_eni17348_13_tpl_33_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(5),
        .numwords_a(31),
        .width_b(32),
        .widthad_b(5),
        .numwords_b(31),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .address_reg_b("CLOCK0"),
        .indata_reg_b("CLOCK0"),
        .rdcontrol_reg_b("CLOCK0"),
        .byteena_reg_b("CLOCK0"),
        .outdata_reg_b("CLOCK1"),
        .outdata_aclr_b("CLEAR1"),
        .clock_enable_input_a("NORMAL"),
        .clock_enable_input_b("NORMAL"),
        .clock_enable_output_b("NORMAL"),
        .read_during_write_mode_mixed_ports("DONT_CARE"),
        .power_up_uninitialized("TRUE"),
        .intended_device_family("Arria 10")
    ) redist10_sync_together24_aunroll_x_in_c0_eni17348_13_tpl_33_mem_dmem (
        .clocken1(redist10_sync_together24_aunroll_x_in_c0_eni17348_13_tpl_33_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist10_sync_together24_aunroll_x_in_c0_eni17348_13_tpl_33_mem_reset0),
        .clock1(clock),
        .address_a(redist10_sync_together24_aunroll_x_in_c0_eni17348_13_tpl_33_mem_aa),
        .data_a(redist10_sync_together24_aunroll_x_in_c0_eni17348_13_tpl_33_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist10_sync_together24_aunroll_x_in_c0_eni17348_13_tpl_33_mem_ab),
        .q_b(redist10_sync_together24_aunroll_x_in_c0_eni17348_13_tpl_33_mem_iq),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_b(),
        .clocken2(),
        .clocken3(),
        .aclr0(),
        .addressstall_a(),
        .addressstall_b(),
        .byteena_a(),
        .byteena_b(),
        .eccencbypass(),
        .eccencparity(),
        .sclr(),
        .address2_a(),
        .address2_b(),
        .q_a(),
        .eccstatus()
    );
    assign redist10_sync_together24_aunroll_x_in_c0_eni17348_13_tpl_33_mem_q = redist10_sync_together24_aunroll_x_in_c0_eni17348_13_tpl_33_mem_iq[31:0];

    // redist10_sync_together24_aunroll_x_in_c0_eni17348_13_tpl_33_outputreg0(DELAY,208)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_sync_together24_aunroll_x_in_c0_eni17348_13_tpl_33_outputreg0_q <= '0;
        end
        else
        begin
            redist10_sync_together24_aunroll_x_in_c0_eni17348_13_tpl_33_outputreg0_q <= $unsigned(redist10_sync_together24_aunroll_x_in_c0_eni17348_13_tpl_33_mem_q);
        end
    end

    // redist9_sync_together24_aunroll_x_in_c0_eni17348_12_tpl_30_notEnable(LOGICAL,204)
    assign redist9_sync_together24_aunroll_x_in_c0_eni17348_12_tpl_30_notEnable_q = $unsigned(~ (VCC_q));

    // redist9_sync_together24_aunroll_x_in_c0_eni17348_12_tpl_30_nor(LOGICAL,205)
    assign redist9_sync_together24_aunroll_x_in_c0_eni17348_12_tpl_30_nor_q = ~ (redist9_sync_together24_aunroll_x_in_c0_eni17348_12_tpl_30_notEnable_q | redist9_sync_together24_aunroll_x_in_c0_eni17348_12_tpl_30_sticky_ena_q);

    // redist9_sync_together24_aunroll_x_in_c0_eni17348_12_tpl_30_mem_last(CONSTANT,201)
    assign redist9_sync_together24_aunroll_x_in_c0_eni17348_12_tpl_30_mem_last_q = $unsigned(6'b011010);

    // redist9_sync_together24_aunroll_x_in_c0_eni17348_12_tpl_30_cmp(LOGICAL,202)
    assign redist9_sync_together24_aunroll_x_in_c0_eni17348_12_tpl_30_cmp_b = {1'b0, redist9_sync_together24_aunroll_x_in_c0_eni17348_12_tpl_30_rdcnt_q};
    assign redist9_sync_together24_aunroll_x_in_c0_eni17348_12_tpl_30_cmp_q = $unsigned(redist9_sync_together24_aunroll_x_in_c0_eni17348_12_tpl_30_mem_last_q == redist9_sync_together24_aunroll_x_in_c0_eni17348_12_tpl_30_cmp_b ? 1'b1 : 1'b0);

    // redist9_sync_together24_aunroll_x_in_c0_eni17348_12_tpl_30_cmpReg(REG,203)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_sync_together24_aunroll_x_in_c0_eni17348_12_tpl_30_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist9_sync_together24_aunroll_x_in_c0_eni17348_12_tpl_30_cmpReg_q <= $unsigned(redist9_sync_together24_aunroll_x_in_c0_eni17348_12_tpl_30_cmp_q);
        end
    end

    // redist9_sync_together24_aunroll_x_in_c0_eni17348_12_tpl_30_sticky_ena(REG,206)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_sync_together24_aunroll_x_in_c0_eni17348_12_tpl_30_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist9_sync_together24_aunroll_x_in_c0_eni17348_12_tpl_30_nor_q == 1'b1)
        begin
            redist9_sync_together24_aunroll_x_in_c0_eni17348_12_tpl_30_sticky_ena_q <= $unsigned(redist9_sync_together24_aunroll_x_in_c0_eni17348_12_tpl_30_cmpReg_q);
        end
    end

    // redist9_sync_together24_aunroll_x_in_c0_eni17348_12_tpl_30_enaAnd(LOGICAL,207)
    assign redist9_sync_together24_aunroll_x_in_c0_eni17348_12_tpl_30_enaAnd_q = redist9_sync_together24_aunroll_x_in_c0_eni17348_12_tpl_30_sticky_ena_q & VCC_q;

    // redist9_sync_together24_aunroll_x_in_c0_eni17348_12_tpl_30_rdcnt(COUNTER,199)
    // low=0, high=27, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_sync_together24_aunroll_x_in_c0_eni17348_12_tpl_30_rdcnt_i <= 5'd0;
            redist9_sync_together24_aunroll_x_in_c0_eni17348_12_tpl_30_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist9_sync_together24_aunroll_x_in_c0_eni17348_12_tpl_30_rdcnt_i == 5'd26)
            begin
                redist9_sync_together24_aunroll_x_in_c0_eni17348_12_tpl_30_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist9_sync_together24_aunroll_x_in_c0_eni17348_12_tpl_30_rdcnt_eq <= 1'b0;
            end
            if (redist9_sync_together24_aunroll_x_in_c0_eni17348_12_tpl_30_rdcnt_eq == 1'b1)
            begin
                redist9_sync_together24_aunroll_x_in_c0_eni17348_12_tpl_30_rdcnt_i <= $unsigned(redist9_sync_together24_aunroll_x_in_c0_eni17348_12_tpl_30_rdcnt_i) + $unsigned(5'd5);
            end
            else
            begin
                redist9_sync_together24_aunroll_x_in_c0_eni17348_12_tpl_30_rdcnt_i <= $unsigned(redist9_sync_together24_aunroll_x_in_c0_eni17348_12_tpl_30_rdcnt_i) + $unsigned(5'd1);
            end
        end
    end
    assign redist9_sync_together24_aunroll_x_in_c0_eni17348_12_tpl_30_rdcnt_q = redist9_sync_together24_aunroll_x_in_c0_eni17348_12_tpl_30_rdcnt_i[4:0];

    // redist9_sync_together24_aunroll_x_in_c0_eni17348_12_tpl_30_wraddr(REG,200)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_sync_together24_aunroll_x_in_c0_eni17348_12_tpl_30_wraddr_q <= $unsigned(5'b11011);
        end
        else
        begin
            redist9_sync_together24_aunroll_x_in_c0_eni17348_12_tpl_30_wraddr_q <= $unsigned(redist9_sync_together24_aunroll_x_in_c0_eni17348_12_tpl_30_rdcnt_q);
        end
    end

    // redist9_sync_together24_aunroll_x_in_c0_eni17348_12_tpl_30_mem(DUALMEM,198)
    assign redist9_sync_together24_aunroll_x_in_c0_eni17348_12_tpl_30_mem_ia = $unsigned(in_c0_eni17348_12_tpl);
    assign redist9_sync_together24_aunroll_x_in_c0_eni17348_12_tpl_30_mem_aa = redist9_sync_together24_aunroll_x_in_c0_eni17348_12_tpl_30_wraddr_q;
    assign redist9_sync_together24_aunroll_x_in_c0_eni17348_12_tpl_30_mem_ab = redist9_sync_together24_aunroll_x_in_c0_eni17348_12_tpl_30_rdcnt_q;
    assign redist9_sync_together24_aunroll_x_in_c0_eni17348_12_tpl_30_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(5),
        .numwords_a(28),
        .width_b(32),
        .widthad_b(5),
        .numwords_b(28),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .address_reg_b("CLOCK0"),
        .indata_reg_b("CLOCK0"),
        .rdcontrol_reg_b("CLOCK0"),
        .byteena_reg_b("CLOCK0"),
        .outdata_reg_b("CLOCK1"),
        .outdata_aclr_b("CLEAR1"),
        .clock_enable_input_a("NORMAL"),
        .clock_enable_input_b("NORMAL"),
        .clock_enable_output_b("NORMAL"),
        .read_during_write_mode_mixed_ports("DONT_CARE"),
        .power_up_uninitialized("TRUE"),
        .intended_device_family("Arria 10")
    ) redist9_sync_together24_aunroll_x_in_c0_eni17348_12_tpl_30_mem_dmem (
        .clocken1(redist9_sync_together24_aunroll_x_in_c0_eni17348_12_tpl_30_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist9_sync_together24_aunroll_x_in_c0_eni17348_12_tpl_30_mem_reset0),
        .clock1(clock),
        .address_a(redist9_sync_together24_aunroll_x_in_c0_eni17348_12_tpl_30_mem_aa),
        .data_a(redist9_sync_together24_aunroll_x_in_c0_eni17348_12_tpl_30_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist9_sync_together24_aunroll_x_in_c0_eni17348_12_tpl_30_mem_ab),
        .q_b(redist9_sync_together24_aunroll_x_in_c0_eni17348_12_tpl_30_mem_iq),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_b(),
        .clocken2(),
        .clocken3(),
        .aclr0(),
        .addressstall_a(),
        .addressstall_b(),
        .byteena_a(),
        .byteena_b(),
        .eccencbypass(),
        .eccencparity(),
        .sclr(),
        .address2_a(),
        .address2_b(),
        .q_a(),
        .eccstatus()
    );
    assign redist9_sync_together24_aunroll_x_in_c0_eni17348_12_tpl_30_mem_q = redist9_sync_together24_aunroll_x_in_c0_eni17348_12_tpl_30_mem_iq[31:0];

    // redist9_sync_together24_aunroll_x_in_c0_eni17348_12_tpl_30_outputreg0(DELAY,197)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_sync_together24_aunroll_x_in_c0_eni17348_12_tpl_30_outputreg0_q <= '0;
        end
        else
        begin
            redist9_sync_together24_aunroll_x_in_c0_eni17348_12_tpl_30_outputreg0_q <= $unsigned(redist9_sync_together24_aunroll_x_in_c0_eni17348_12_tpl_30_mem_q);
        end
    end

    // redist8_sync_together24_aunroll_x_in_c0_eni17348_11_tpl_27_notEnable(LOGICAL,193)
    assign redist8_sync_together24_aunroll_x_in_c0_eni17348_11_tpl_27_notEnable_q = $unsigned(~ (VCC_q));

    // redist8_sync_together24_aunroll_x_in_c0_eni17348_11_tpl_27_nor(LOGICAL,194)
    assign redist8_sync_together24_aunroll_x_in_c0_eni17348_11_tpl_27_nor_q = ~ (redist8_sync_together24_aunroll_x_in_c0_eni17348_11_tpl_27_notEnable_q | redist8_sync_together24_aunroll_x_in_c0_eni17348_11_tpl_27_sticky_ena_q);

    // redist8_sync_together24_aunroll_x_in_c0_eni17348_11_tpl_27_mem_last(CONSTANT,190)
    assign redist8_sync_together24_aunroll_x_in_c0_eni17348_11_tpl_27_mem_last_q = $unsigned(6'b010111);

    // redist8_sync_together24_aunroll_x_in_c0_eni17348_11_tpl_27_cmp(LOGICAL,191)
    assign redist8_sync_together24_aunroll_x_in_c0_eni17348_11_tpl_27_cmp_b = {1'b0, redist8_sync_together24_aunroll_x_in_c0_eni17348_11_tpl_27_rdcnt_q};
    assign redist8_sync_together24_aunroll_x_in_c0_eni17348_11_tpl_27_cmp_q = $unsigned(redist8_sync_together24_aunroll_x_in_c0_eni17348_11_tpl_27_mem_last_q == redist8_sync_together24_aunroll_x_in_c0_eni17348_11_tpl_27_cmp_b ? 1'b1 : 1'b0);

    // redist8_sync_together24_aunroll_x_in_c0_eni17348_11_tpl_27_cmpReg(REG,192)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_sync_together24_aunroll_x_in_c0_eni17348_11_tpl_27_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist8_sync_together24_aunroll_x_in_c0_eni17348_11_tpl_27_cmpReg_q <= $unsigned(redist8_sync_together24_aunroll_x_in_c0_eni17348_11_tpl_27_cmp_q);
        end
    end

    // redist8_sync_together24_aunroll_x_in_c0_eni17348_11_tpl_27_sticky_ena(REG,195)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_sync_together24_aunroll_x_in_c0_eni17348_11_tpl_27_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist8_sync_together24_aunroll_x_in_c0_eni17348_11_tpl_27_nor_q == 1'b1)
        begin
            redist8_sync_together24_aunroll_x_in_c0_eni17348_11_tpl_27_sticky_ena_q <= $unsigned(redist8_sync_together24_aunroll_x_in_c0_eni17348_11_tpl_27_cmpReg_q);
        end
    end

    // redist8_sync_together24_aunroll_x_in_c0_eni17348_11_tpl_27_enaAnd(LOGICAL,196)
    assign redist8_sync_together24_aunroll_x_in_c0_eni17348_11_tpl_27_enaAnd_q = redist8_sync_together24_aunroll_x_in_c0_eni17348_11_tpl_27_sticky_ena_q & VCC_q;

    // redist8_sync_together24_aunroll_x_in_c0_eni17348_11_tpl_27_rdcnt(COUNTER,188)
    // low=0, high=24, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_sync_together24_aunroll_x_in_c0_eni17348_11_tpl_27_rdcnt_i <= 5'd0;
            redist8_sync_together24_aunroll_x_in_c0_eni17348_11_tpl_27_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist8_sync_together24_aunroll_x_in_c0_eni17348_11_tpl_27_rdcnt_i == 5'd23)
            begin
                redist8_sync_together24_aunroll_x_in_c0_eni17348_11_tpl_27_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist8_sync_together24_aunroll_x_in_c0_eni17348_11_tpl_27_rdcnt_eq <= 1'b0;
            end
            if (redist8_sync_together24_aunroll_x_in_c0_eni17348_11_tpl_27_rdcnt_eq == 1'b1)
            begin
                redist8_sync_together24_aunroll_x_in_c0_eni17348_11_tpl_27_rdcnt_i <= $unsigned(redist8_sync_together24_aunroll_x_in_c0_eni17348_11_tpl_27_rdcnt_i) + $unsigned(5'd8);
            end
            else
            begin
                redist8_sync_together24_aunroll_x_in_c0_eni17348_11_tpl_27_rdcnt_i <= $unsigned(redist8_sync_together24_aunroll_x_in_c0_eni17348_11_tpl_27_rdcnt_i) + $unsigned(5'd1);
            end
        end
    end
    assign redist8_sync_together24_aunroll_x_in_c0_eni17348_11_tpl_27_rdcnt_q = redist8_sync_together24_aunroll_x_in_c0_eni17348_11_tpl_27_rdcnt_i[4:0];

    // redist8_sync_together24_aunroll_x_in_c0_eni17348_11_tpl_27_wraddr(REG,189)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_sync_together24_aunroll_x_in_c0_eni17348_11_tpl_27_wraddr_q <= $unsigned(5'b11000);
        end
        else
        begin
            redist8_sync_together24_aunroll_x_in_c0_eni17348_11_tpl_27_wraddr_q <= $unsigned(redist8_sync_together24_aunroll_x_in_c0_eni17348_11_tpl_27_rdcnt_q);
        end
    end

    // redist8_sync_together24_aunroll_x_in_c0_eni17348_11_tpl_27_mem(DUALMEM,187)
    assign redist8_sync_together24_aunroll_x_in_c0_eni17348_11_tpl_27_mem_ia = $unsigned(in_c0_eni17348_11_tpl);
    assign redist8_sync_together24_aunroll_x_in_c0_eni17348_11_tpl_27_mem_aa = redist8_sync_together24_aunroll_x_in_c0_eni17348_11_tpl_27_wraddr_q;
    assign redist8_sync_together24_aunroll_x_in_c0_eni17348_11_tpl_27_mem_ab = redist8_sync_together24_aunroll_x_in_c0_eni17348_11_tpl_27_rdcnt_q;
    assign redist8_sync_together24_aunroll_x_in_c0_eni17348_11_tpl_27_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(5),
        .numwords_a(25),
        .width_b(32),
        .widthad_b(5),
        .numwords_b(25),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .address_reg_b("CLOCK0"),
        .indata_reg_b("CLOCK0"),
        .rdcontrol_reg_b("CLOCK0"),
        .byteena_reg_b("CLOCK0"),
        .outdata_reg_b("CLOCK1"),
        .outdata_aclr_b("CLEAR1"),
        .clock_enable_input_a("NORMAL"),
        .clock_enable_input_b("NORMAL"),
        .clock_enable_output_b("NORMAL"),
        .read_during_write_mode_mixed_ports("DONT_CARE"),
        .power_up_uninitialized("TRUE"),
        .intended_device_family("Arria 10")
    ) redist8_sync_together24_aunroll_x_in_c0_eni17348_11_tpl_27_mem_dmem (
        .clocken1(redist8_sync_together24_aunroll_x_in_c0_eni17348_11_tpl_27_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist8_sync_together24_aunroll_x_in_c0_eni17348_11_tpl_27_mem_reset0),
        .clock1(clock),
        .address_a(redist8_sync_together24_aunroll_x_in_c0_eni17348_11_tpl_27_mem_aa),
        .data_a(redist8_sync_together24_aunroll_x_in_c0_eni17348_11_tpl_27_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist8_sync_together24_aunroll_x_in_c0_eni17348_11_tpl_27_mem_ab),
        .q_b(redist8_sync_together24_aunroll_x_in_c0_eni17348_11_tpl_27_mem_iq),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_b(),
        .clocken2(),
        .clocken3(),
        .aclr0(),
        .addressstall_a(),
        .addressstall_b(),
        .byteena_a(),
        .byteena_b(),
        .eccencbypass(),
        .eccencparity(),
        .sclr(),
        .address2_a(),
        .address2_b(),
        .q_a(),
        .eccstatus()
    );
    assign redist8_sync_together24_aunroll_x_in_c0_eni17348_11_tpl_27_mem_q = redist8_sync_together24_aunroll_x_in_c0_eni17348_11_tpl_27_mem_iq[31:0];

    // redist8_sync_together24_aunroll_x_in_c0_eni17348_11_tpl_27_outputreg0(DELAY,186)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_sync_together24_aunroll_x_in_c0_eni17348_11_tpl_27_outputreg0_q <= '0;
        end
        else
        begin
            redist8_sync_together24_aunroll_x_in_c0_eni17348_11_tpl_27_outputreg0_q <= $unsigned(redist8_sync_together24_aunroll_x_in_c0_eni17348_11_tpl_27_mem_q);
        end
    end

    // redist7_sync_together24_aunroll_x_in_c0_eni17348_10_tpl_24_notEnable(LOGICAL,182)
    assign redist7_sync_together24_aunroll_x_in_c0_eni17348_10_tpl_24_notEnable_q = $unsigned(~ (VCC_q));

    // redist7_sync_together24_aunroll_x_in_c0_eni17348_10_tpl_24_nor(LOGICAL,183)
    assign redist7_sync_together24_aunroll_x_in_c0_eni17348_10_tpl_24_nor_q = ~ (redist7_sync_together24_aunroll_x_in_c0_eni17348_10_tpl_24_notEnable_q | redist7_sync_together24_aunroll_x_in_c0_eni17348_10_tpl_24_sticky_ena_q);

    // redist7_sync_together24_aunroll_x_in_c0_eni17348_10_tpl_24_mem_last(CONSTANT,179)
    assign redist7_sync_together24_aunroll_x_in_c0_eni17348_10_tpl_24_mem_last_q = $unsigned(6'b010100);

    // redist7_sync_together24_aunroll_x_in_c0_eni17348_10_tpl_24_cmp(LOGICAL,180)
    assign redist7_sync_together24_aunroll_x_in_c0_eni17348_10_tpl_24_cmp_b = {1'b0, redist7_sync_together24_aunroll_x_in_c0_eni17348_10_tpl_24_rdcnt_q};
    assign redist7_sync_together24_aunroll_x_in_c0_eni17348_10_tpl_24_cmp_q = $unsigned(redist7_sync_together24_aunroll_x_in_c0_eni17348_10_tpl_24_mem_last_q == redist7_sync_together24_aunroll_x_in_c0_eni17348_10_tpl_24_cmp_b ? 1'b1 : 1'b0);

    // redist7_sync_together24_aunroll_x_in_c0_eni17348_10_tpl_24_cmpReg(REG,181)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_sync_together24_aunroll_x_in_c0_eni17348_10_tpl_24_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist7_sync_together24_aunroll_x_in_c0_eni17348_10_tpl_24_cmpReg_q <= $unsigned(redist7_sync_together24_aunroll_x_in_c0_eni17348_10_tpl_24_cmp_q);
        end
    end

    // redist7_sync_together24_aunroll_x_in_c0_eni17348_10_tpl_24_sticky_ena(REG,184)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_sync_together24_aunroll_x_in_c0_eni17348_10_tpl_24_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist7_sync_together24_aunroll_x_in_c0_eni17348_10_tpl_24_nor_q == 1'b1)
        begin
            redist7_sync_together24_aunroll_x_in_c0_eni17348_10_tpl_24_sticky_ena_q <= $unsigned(redist7_sync_together24_aunroll_x_in_c0_eni17348_10_tpl_24_cmpReg_q);
        end
    end

    // redist7_sync_together24_aunroll_x_in_c0_eni17348_10_tpl_24_enaAnd(LOGICAL,185)
    assign redist7_sync_together24_aunroll_x_in_c0_eni17348_10_tpl_24_enaAnd_q = redist7_sync_together24_aunroll_x_in_c0_eni17348_10_tpl_24_sticky_ena_q & VCC_q;

    // redist7_sync_together24_aunroll_x_in_c0_eni17348_10_tpl_24_rdcnt(COUNTER,177)
    // low=0, high=21, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_sync_together24_aunroll_x_in_c0_eni17348_10_tpl_24_rdcnt_i <= 5'd0;
            redist7_sync_together24_aunroll_x_in_c0_eni17348_10_tpl_24_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist7_sync_together24_aunroll_x_in_c0_eni17348_10_tpl_24_rdcnt_i == 5'd20)
            begin
                redist7_sync_together24_aunroll_x_in_c0_eni17348_10_tpl_24_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist7_sync_together24_aunroll_x_in_c0_eni17348_10_tpl_24_rdcnt_eq <= 1'b0;
            end
            if (redist7_sync_together24_aunroll_x_in_c0_eni17348_10_tpl_24_rdcnt_eq == 1'b1)
            begin
                redist7_sync_together24_aunroll_x_in_c0_eni17348_10_tpl_24_rdcnt_i <= $unsigned(redist7_sync_together24_aunroll_x_in_c0_eni17348_10_tpl_24_rdcnt_i) + $unsigned(5'd11);
            end
            else
            begin
                redist7_sync_together24_aunroll_x_in_c0_eni17348_10_tpl_24_rdcnt_i <= $unsigned(redist7_sync_together24_aunroll_x_in_c0_eni17348_10_tpl_24_rdcnt_i) + $unsigned(5'd1);
            end
        end
    end
    assign redist7_sync_together24_aunroll_x_in_c0_eni17348_10_tpl_24_rdcnt_q = redist7_sync_together24_aunroll_x_in_c0_eni17348_10_tpl_24_rdcnt_i[4:0];

    // redist7_sync_together24_aunroll_x_in_c0_eni17348_10_tpl_24_wraddr(REG,178)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_sync_together24_aunroll_x_in_c0_eni17348_10_tpl_24_wraddr_q <= $unsigned(5'b10101);
        end
        else
        begin
            redist7_sync_together24_aunroll_x_in_c0_eni17348_10_tpl_24_wraddr_q <= $unsigned(redist7_sync_together24_aunroll_x_in_c0_eni17348_10_tpl_24_rdcnt_q);
        end
    end

    // redist7_sync_together24_aunroll_x_in_c0_eni17348_10_tpl_24_mem(DUALMEM,176)
    assign redist7_sync_together24_aunroll_x_in_c0_eni17348_10_tpl_24_mem_ia = $unsigned(in_c0_eni17348_10_tpl);
    assign redist7_sync_together24_aunroll_x_in_c0_eni17348_10_tpl_24_mem_aa = redist7_sync_together24_aunroll_x_in_c0_eni17348_10_tpl_24_wraddr_q;
    assign redist7_sync_together24_aunroll_x_in_c0_eni17348_10_tpl_24_mem_ab = redist7_sync_together24_aunroll_x_in_c0_eni17348_10_tpl_24_rdcnt_q;
    assign redist7_sync_together24_aunroll_x_in_c0_eni17348_10_tpl_24_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(5),
        .numwords_a(22),
        .width_b(32),
        .widthad_b(5),
        .numwords_b(22),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .address_reg_b("CLOCK0"),
        .indata_reg_b("CLOCK0"),
        .rdcontrol_reg_b("CLOCK0"),
        .byteena_reg_b("CLOCK0"),
        .outdata_reg_b("CLOCK1"),
        .outdata_aclr_b("CLEAR1"),
        .clock_enable_input_a("NORMAL"),
        .clock_enable_input_b("NORMAL"),
        .clock_enable_output_b("NORMAL"),
        .read_during_write_mode_mixed_ports("DONT_CARE"),
        .power_up_uninitialized("TRUE"),
        .intended_device_family("Arria 10")
    ) redist7_sync_together24_aunroll_x_in_c0_eni17348_10_tpl_24_mem_dmem (
        .clocken1(redist7_sync_together24_aunroll_x_in_c0_eni17348_10_tpl_24_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist7_sync_together24_aunroll_x_in_c0_eni17348_10_tpl_24_mem_reset0),
        .clock1(clock),
        .address_a(redist7_sync_together24_aunroll_x_in_c0_eni17348_10_tpl_24_mem_aa),
        .data_a(redist7_sync_together24_aunroll_x_in_c0_eni17348_10_tpl_24_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist7_sync_together24_aunroll_x_in_c0_eni17348_10_tpl_24_mem_ab),
        .q_b(redist7_sync_together24_aunroll_x_in_c0_eni17348_10_tpl_24_mem_iq),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_b(),
        .clocken2(),
        .clocken3(),
        .aclr0(),
        .addressstall_a(),
        .addressstall_b(),
        .byteena_a(),
        .byteena_b(),
        .eccencbypass(),
        .eccencparity(),
        .sclr(),
        .address2_a(),
        .address2_b(),
        .q_a(),
        .eccstatus()
    );
    assign redist7_sync_together24_aunroll_x_in_c0_eni17348_10_tpl_24_mem_q = redist7_sync_together24_aunroll_x_in_c0_eni17348_10_tpl_24_mem_iq[31:0];

    // redist7_sync_together24_aunroll_x_in_c0_eni17348_10_tpl_24_outputreg0(DELAY,175)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_sync_together24_aunroll_x_in_c0_eni17348_10_tpl_24_outputreg0_q <= '0;
        end
        else
        begin
            redist7_sync_together24_aunroll_x_in_c0_eni17348_10_tpl_24_outputreg0_q <= $unsigned(redist7_sync_together24_aunroll_x_in_c0_eni17348_10_tpl_24_mem_q);
        end
    end

    // redist6_sync_together24_aunroll_x_in_c0_eni17348_9_tpl_21_notEnable(LOGICAL,171)
    assign redist6_sync_together24_aunroll_x_in_c0_eni17348_9_tpl_21_notEnable_q = $unsigned(~ (VCC_q));

    // redist6_sync_together24_aunroll_x_in_c0_eni17348_9_tpl_21_nor(LOGICAL,172)
    assign redist6_sync_together24_aunroll_x_in_c0_eni17348_9_tpl_21_nor_q = ~ (redist6_sync_together24_aunroll_x_in_c0_eni17348_9_tpl_21_notEnable_q | redist6_sync_together24_aunroll_x_in_c0_eni17348_9_tpl_21_sticky_ena_q);

    // redist6_sync_together24_aunroll_x_in_c0_eni17348_9_tpl_21_mem_last(CONSTANT,168)
    assign redist6_sync_together24_aunroll_x_in_c0_eni17348_9_tpl_21_mem_last_q = $unsigned(6'b010001);

    // redist6_sync_together24_aunroll_x_in_c0_eni17348_9_tpl_21_cmp(LOGICAL,169)
    assign redist6_sync_together24_aunroll_x_in_c0_eni17348_9_tpl_21_cmp_b = {1'b0, redist6_sync_together24_aunroll_x_in_c0_eni17348_9_tpl_21_rdcnt_q};
    assign redist6_sync_together24_aunroll_x_in_c0_eni17348_9_tpl_21_cmp_q = $unsigned(redist6_sync_together24_aunroll_x_in_c0_eni17348_9_tpl_21_mem_last_q == redist6_sync_together24_aunroll_x_in_c0_eni17348_9_tpl_21_cmp_b ? 1'b1 : 1'b0);

    // redist6_sync_together24_aunroll_x_in_c0_eni17348_9_tpl_21_cmpReg(REG,170)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_sync_together24_aunroll_x_in_c0_eni17348_9_tpl_21_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist6_sync_together24_aunroll_x_in_c0_eni17348_9_tpl_21_cmpReg_q <= $unsigned(redist6_sync_together24_aunroll_x_in_c0_eni17348_9_tpl_21_cmp_q);
        end
    end

    // redist6_sync_together24_aunroll_x_in_c0_eni17348_9_tpl_21_sticky_ena(REG,173)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_sync_together24_aunroll_x_in_c0_eni17348_9_tpl_21_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist6_sync_together24_aunroll_x_in_c0_eni17348_9_tpl_21_nor_q == 1'b1)
        begin
            redist6_sync_together24_aunroll_x_in_c0_eni17348_9_tpl_21_sticky_ena_q <= $unsigned(redist6_sync_together24_aunroll_x_in_c0_eni17348_9_tpl_21_cmpReg_q);
        end
    end

    // redist6_sync_together24_aunroll_x_in_c0_eni17348_9_tpl_21_enaAnd(LOGICAL,174)
    assign redist6_sync_together24_aunroll_x_in_c0_eni17348_9_tpl_21_enaAnd_q = redist6_sync_together24_aunroll_x_in_c0_eni17348_9_tpl_21_sticky_ena_q & VCC_q;

    // redist6_sync_together24_aunroll_x_in_c0_eni17348_9_tpl_21_rdcnt(COUNTER,166)
    // low=0, high=18, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_sync_together24_aunroll_x_in_c0_eni17348_9_tpl_21_rdcnt_i <= 5'd0;
            redist6_sync_together24_aunroll_x_in_c0_eni17348_9_tpl_21_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist6_sync_together24_aunroll_x_in_c0_eni17348_9_tpl_21_rdcnt_i == 5'd17)
            begin
                redist6_sync_together24_aunroll_x_in_c0_eni17348_9_tpl_21_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist6_sync_together24_aunroll_x_in_c0_eni17348_9_tpl_21_rdcnt_eq <= 1'b0;
            end
            if (redist6_sync_together24_aunroll_x_in_c0_eni17348_9_tpl_21_rdcnt_eq == 1'b1)
            begin
                redist6_sync_together24_aunroll_x_in_c0_eni17348_9_tpl_21_rdcnt_i <= $unsigned(redist6_sync_together24_aunroll_x_in_c0_eni17348_9_tpl_21_rdcnt_i) + $unsigned(5'd14);
            end
            else
            begin
                redist6_sync_together24_aunroll_x_in_c0_eni17348_9_tpl_21_rdcnt_i <= $unsigned(redist6_sync_together24_aunroll_x_in_c0_eni17348_9_tpl_21_rdcnt_i) + $unsigned(5'd1);
            end
        end
    end
    assign redist6_sync_together24_aunroll_x_in_c0_eni17348_9_tpl_21_rdcnt_q = redist6_sync_together24_aunroll_x_in_c0_eni17348_9_tpl_21_rdcnt_i[4:0];

    // redist6_sync_together24_aunroll_x_in_c0_eni17348_9_tpl_21_wraddr(REG,167)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_sync_together24_aunroll_x_in_c0_eni17348_9_tpl_21_wraddr_q <= $unsigned(5'b10010);
        end
        else
        begin
            redist6_sync_together24_aunroll_x_in_c0_eni17348_9_tpl_21_wraddr_q <= $unsigned(redist6_sync_together24_aunroll_x_in_c0_eni17348_9_tpl_21_rdcnt_q);
        end
    end

    // redist6_sync_together24_aunroll_x_in_c0_eni17348_9_tpl_21_mem(DUALMEM,165)
    assign redist6_sync_together24_aunroll_x_in_c0_eni17348_9_tpl_21_mem_ia = $unsigned(in_c0_eni17348_9_tpl);
    assign redist6_sync_together24_aunroll_x_in_c0_eni17348_9_tpl_21_mem_aa = redist6_sync_together24_aunroll_x_in_c0_eni17348_9_tpl_21_wraddr_q;
    assign redist6_sync_together24_aunroll_x_in_c0_eni17348_9_tpl_21_mem_ab = redist6_sync_together24_aunroll_x_in_c0_eni17348_9_tpl_21_rdcnt_q;
    assign redist6_sync_together24_aunroll_x_in_c0_eni17348_9_tpl_21_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(5),
        .numwords_a(19),
        .width_b(32),
        .widthad_b(5),
        .numwords_b(19),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .address_reg_b("CLOCK0"),
        .indata_reg_b("CLOCK0"),
        .rdcontrol_reg_b("CLOCK0"),
        .byteena_reg_b("CLOCK0"),
        .outdata_reg_b("CLOCK1"),
        .outdata_aclr_b("CLEAR1"),
        .clock_enable_input_a("NORMAL"),
        .clock_enable_input_b("NORMAL"),
        .clock_enable_output_b("NORMAL"),
        .read_during_write_mode_mixed_ports("DONT_CARE"),
        .power_up_uninitialized("TRUE"),
        .intended_device_family("Arria 10")
    ) redist6_sync_together24_aunroll_x_in_c0_eni17348_9_tpl_21_mem_dmem (
        .clocken1(redist6_sync_together24_aunroll_x_in_c0_eni17348_9_tpl_21_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist6_sync_together24_aunroll_x_in_c0_eni17348_9_tpl_21_mem_reset0),
        .clock1(clock),
        .address_a(redist6_sync_together24_aunroll_x_in_c0_eni17348_9_tpl_21_mem_aa),
        .data_a(redist6_sync_together24_aunroll_x_in_c0_eni17348_9_tpl_21_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist6_sync_together24_aunroll_x_in_c0_eni17348_9_tpl_21_mem_ab),
        .q_b(redist6_sync_together24_aunroll_x_in_c0_eni17348_9_tpl_21_mem_iq),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_b(),
        .clocken2(),
        .clocken3(),
        .aclr0(),
        .addressstall_a(),
        .addressstall_b(),
        .byteena_a(),
        .byteena_b(),
        .eccencbypass(),
        .eccencparity(),
        .sclr(),
        .address2_a(),
        .address2_b(),
        .q_a(),
        .eccstatus()
    );
    assign redist6_sync_together24_aunroll_x_in_c0_eni17348_9_tpl_21_mem_q = redist6_sync_together24_aunroll_x_in_c0_eni17348_9_tpl_21_mem_iq[31:0];

    // redist6_sync_together24_aunroll_x_in_c0_eni17348_9_tpl_21_outputreg0(DELAY,164)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_sync_together24_aunroll_x_in_c0_eni17348_9_tpl_21_outputreg0_q <= '0;
        end
        else
        begin
            redist6_sync_together24_aunroll_x_in_c0_eni17348_9_tpl_21_outputreg0_q <= $unsigned(redist6_sync_together24_aunroll_x_in_c0_eni17348_9_tpl_21_mem_q);
        end
    end

    // redist5_sync_together24_aunroll_x_in_c0_eni17348_8_tpl_18_notEnable(LOGICAL,160)
    assign redist5_sync_together24_aunroll_x_in_c0_eni17348_8_tpl_18_notEnable_q = $unsigned(~ (VCC_q));

    // redist5_sync_together24_aunroll_x_in_c0_eni17348_8_tpl_18_nor(LOGICAL,161)
    assign redist5_sync_together24_aunroll_x_in_c0_eni17348_8_tpl_18_nor_q = ~ (redist5_sync_together24_aunroll_x_in_c0_eni17348_8_tpl_18_notEnable_q | redist5_sync_together24_aunroll_x_in_c0_eni17348_8_tpl_18_sticky_ena_q);

    // redist5_sync_together24_aunroll_x_in_c0_eni17348_8_tpl_18_mem_last(CONSTANT,157)
    assign redist5_sync_together24_aunroll_x_in_c0_eni17348_8_tpl_18_mem_last_q = $unsigned(5'b01110);

    // redist5_sync_together24_aunroll_x_in_c0_eni17348_8_tpl_18_cmp(LOGICAL,158)
    assign redist5_sync_together24_aunroll_x_in_c0_eni17348_8_tpl_18_cmp_b = {1'b0, redist5_sync_together24_aunroll_x_in_c0_eni17348_8_tpl_18_rdcnt_q};
    assign redist5_sync_together24_aunroll_x_in_c0_eni17348_8_tpl_18_cmp_q = $unsigned(redist5_sync_together24_aunroll_x_in_c0_eni17348_8_tpl_18_mem_last_q == redist5_sync_together24_aunroll_x_in_c0_eni17348_8_tpl_18_cmp_b ? 1'b1 : 1'b0);

    // redist5_sync_together24_aunroll_x_in_c0_eni17348_8_tpl_18_cmpReg(REG,159)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_sync_together24_aunroll_x_in_c0_eni17348_8_tpl_18_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist5_sync_together24_aunroll_x_in_c0_eni17348_8_tpl_18_cmpReg_q <= $unsigned(redist5_sync_together24_aunroll_x_in_c0_eni17348_8_tpl_18_cmp_q);
        end
    end

    // redist5_sync_together24_aunroll_x_in_c0_eni17348_8_tpl_18_sticky_ena(REG,162)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_sync_together24_aunroll_x_in_c0_eni17348_8_tpl_18_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist5_sync_together24_aunroll_x_in_c0_eni17348_8_tpl_18_nor_q == 1'b1)
        begin
            redist5_sync_together24_aunroll_x_in_c0_eni17348_8_tpl_18_sticky_ena_q <= $unsigned(redist5_sync_together24_aunroll_x_in_c0_eni17348_8_tpl_18_cmpReg_q);
        end
    end

    // redist5_sync_together24_aunroll_x_in_c0_eni17348_8_tpl_18_enaAnd(LOGICAL,163)
    assign redist5_sync_together24_aunroll_x_in_c0_eni17348_8_tpl_18_enaAnd_q = redist5_sync_together24_aunroll_x_in_c0_eni17348_8_tpl_18_sticky_ena_q & VCC_q;

    // redist5_sync_together24_aunroll_x_in_c0_eni17348_8_tpl_18_rdcnt(COUNTER,155)
    // low=0, high=15, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_sync_together24_aunroll_x_in_c0_eni17348_8_tpl_18_rdcnt_i <= 4'd0;
        end
        else
        begin
            redist5_sync_together24_aunroll_x_in_c0_eni17348_8_tpl_18_rdcnt_i <= $unsigned(redist5_sync_together24_aunroll_x_in_c0_eni17348_8_tpl_18_rdcnt_i) + $unsigned(4'd1);
        end
    end
    assign redist5_sync_together24_aunroll_x_in_c0_eni17348_8_tpl_18_rdcnt_q = redist5_sync_together24_aunroll_x_in_c0_eni17348_8_tpl_18_rdcnt_i[3:0];

    // redist5_sync_together24_aunroll_x_in_c0_eni17348_8_tpl_18_wraddr(REG,156)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_sync_together24_aunroll_x_in_c0_eni17348_8_tpl_18_wraddr_q <= $unsigned(4'b1111);
        end
        else
        begin
            redist5_sync_together24_aunroll_x_in_c0_eni17348_8_tpl_18_wraddr_q <= $unsigned(redist5_sync_together24_aunroll_x_in_c0_eni17348_8_tpl_18_rdcnt_q);
        end
    end

    // redist5_sync_together24_aunroll_x_in_c0_eni17348_8_tpl_18_mem(DUALMEM,154)
    assign redist5_sync_together24_aunroll_x_in_c0_eni17348_8_tpl_18_mem_ia = $unsigned(in_c0_eni17348_8_tpl);
    assign redist5_sync_together24_aunroll_x_in_c0_eni17348_8_tpl_18_mem_aa = redist5_sync_together24_aunroll_x_in_c0_eni17348_8_tpl_18_wraddr_q;
    assign redist5_sync_together24_aunroll_x_in_c0_eni17348_8_tpl_18_mem_ab = redist5_sync_together24_aunroll_x_in_c0_eni17348_8_tpl_18_rdcnt_q;
    assign redist5_sync_together24_aunroll_x_in_c0_eni17348_8_tpl_18_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(4),
        .numwords_a(16),
        .width_b(32),
        .widthad_b(4),
        .numwords_b(16),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .address_reg_b("CLOCK0"),
        .indata_reg_b("CLOCK0"),
        .rdcontrol_reg_b("CLOCK0"),
        .byteena_reg_b("CLOCK0"),
        .outdata_reg_b("CLOCK1"),
        .outdata_aclr_b("CLEAR1"),
        .clock_enable_input_a("NORMAL"),
        .clock_enable_input_b("NORMAL"),
        .clock_enable_output_b("NORMAL"),
        .read_during_write_mode_mixed_ports("DONT_CARE"),
        .power_up_uninitialized("TRUE"),
        .intended_device_family("Arria 10")
    ) redist5_sync_together24_aunroll_x_in_c0_eni17348_8_tpl_18_mem_dmem (
        .clocken1(redist5_sync_together24_aunroll_x_in_c0_eni17348_8_tpl_18_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist5_sync_together24_aunroll_x_in_c0_eni17348_8_tpl_18_mem_reset0),
        .clock1(clock),
        .address_a(redist5_sync_together24_aunroll_x_in_c0_eni17348_8_tpl_18_mem_aa),
        .data_a(redist5_sync_together24_aunroll_x_in_c0_eni17348_8_tpl_18_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist5_sync_together24_aunroll_x_in_c0_eni17348_8_tpl_18_mem_ab),
        .q_b(redist5_sync_together24_aunroll_x_in_c0_eni17348_8_tpl_18_mem_iq),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_b(),
        .clocken2(),
        .clocken3(),
        .aclr0(),
        .addressstall_a(),
        .addressstall_b(),
        .byteena_a(),
        .byteena_b(),
        .eccencbypass(),
        .eccencparity(),
        .sclr(),
        .address2_a(),
        .address2_b(),
        .q_a(),
        .eccstatus()
    );
    assign redist5_sync_together24_aunroll_x_in_c0_eni17348_8_tpl_18_mem_q = redist5_sync_together24_aunroll_x_in_c0_eni17348_8_tpl_18_mem_iq[31:0];

    // redist5_sync_together24_aunroll_x_in_c0_eni17348_8_tpl_18_outputreg0(DELAY,153)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_sync_together24_aunroll_x_in_c0_eni17348_8_tpl_18_outputreg0_q <= '0;
        end
        else
        begin
            redist5_sync_together24_aunroll_x_in_c0_eni17348_8_tpl_18_outputreg0_q <= $unsigned(redist5_sync_together24_aunroll_x_in_c0_eni17348_8_tpl_18_mem_q);
        end
    end

    // redist4_sync_together24_aunroll_x_in_c0_eni17348_7_tpl_15_notEnable(LOGICAL,149)
    assign redist4_sync_together24_aunroll_x_in_c0_eni17348_7_tpl_15_notEnable_q = $unsigned(~ (VCC_q));

    // redist4_sync_together24_aunroll_x_in_c0_eni17348_7_tpl_15_nor(LOGICAL,150)
    assign redist4_sync_together24_aunroll_x_in_c0_eni17348_7_tpl_15_nor_q = ~ (redist4_sync_together24_aunroll_x_in_c0_eni17348_7_tpl_15_notEnable_q | redist4_sync_together24_aunroll_x_in_c0_eni17348_7_tpl_15_sticky_ena_q);

    // redist4_sync_together24_aunroll_x_in_c0_eni17348_7_tpl_15_mem_last(CONSTANT,146)
    assign redist4_sync_together24_aunroll_x_in_c0_eni17348_7_tpl_15_mem_last_q = $unsigned(5'b01011);

    // redist4_sync_together24_aunroll_x_in_c0_eni17348_7_tpl_15_cmp(LOGICAL,147)
    assign redist4_sync_together24_aunroll_x_in_c0_eni17348_7_tpl_15_cmp_b = {1'b0, redist4_sync_together24_aunroll_x_in_c0_eni17348_7_tpl_15_rdcnt_q};
    assign redist4_sync_together24_aunroll_x_in_c0_eni17348_7_tpl_15_cmp_q = $unsigned(redist4_sync_together24_aunroll_x_in_c0_eni17348_7_tpl_15_mem_last_q == redist4_sync_together24_aunroll_x_in_c0_eni17348_7_tpl_15_cmp_b ? 1'b1 : 1'b0);

    // redist4_sync_together24_aunroll_x_in_c0_eni17348_7_tpl_15_cmpReg(REG,148)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_sync_together24_aunroll_x_in_c0_eni17348_7_tpl_15_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist4_sync_together24_aunroll_x_in_c0_eni17348_7_tpl_15_cmpReg_q <= $unsigned(redist4_sync_together24_aunroll_x_in_c0_eni17348_7_tpl_15_cmp_q);
        end
    end

    // redist4_sync_together24_aunroll_x_in_c0_eni17348_7_tpl_15_sticky_ena(REG,151)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_sync_together24_aunroll_x_in_c0_eni17348_7_tpl_15_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist4_sync_together24_aunroll_x_in_c0_eni17348_7_tpl_15_nor_q == 1'b1)
        begin
            redist4_sync_together24_aunroll_x_in_c0_eni17348_7_tpl_15_sticky_ena_q <= $unsigned(redist4_sync_together24_aunroll_x_in_c0_eni17348_7_tpl_15_cmpReg_q);
        end
    end

    // redist4_sync_together24_aunroll_x_in_c0_eni17348_7_tpl_15_enaAnd(LOGICAL,152)
    assign redist4_sync_together24_aunroll_x_in_c0_eni17348_7_tpl_15_enaAnd_q = redist4_sync_together24_aunroll_x_in_c0_eni17348_7_tpl_15_sticky_ena_q & VCC_q;

    // redist4_sync_together24_aunroll_x_in_c0_eni17348_7_tpl_15_rdcnt(COUNTER,144)
    // low=0, high=12, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_sync_together24_aunroll_x_in_c0_eni17348_7_tpl_15_rdcnt_i <= 4'd0;
            redist4_sync_together24_aunroll_x_in_c0_eni17348_7_tpl_15_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist4_sync_together24_aunroll_x_in_c0_eni17348_7_tpl_15_rdcnt_i == 4'd11)
            begin
                redist4_sync_together24_aunroll_x_in_c0_eni17348_7_tpl_15_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist4_sync_together24_aunroll_x_in_c0_eni17348_7_tpl_15_rdcnt_eq <= 1'b0;
            end
            if (redist4_sync_together24_aunroll_x_in_c0_eni17348_7_tpl_15_rdcnt_eq == 1'b1)
            begin
                redist4_sync_together24_aunroll_x_in_c0_eni17348_7_tpl_15_rdcnt_i <= $unsigned(redist4_sync_together24_aunroll_x_in_c0_eni17348_7_tpl_15_rdcnt_i) + $unsigned(4'd4);
            end
            else
            begin
                redist4_sync_together24_aunroll_x_in_c0_eni17348_7_tpl_15_rdcnt_i <= $unsigned(redist4_sync_together24_aunroll_x_in_c0_eni17348_7_tpl_15_rdcnt_i) + $unsigned(4'd1);
            end
        end
    end
    assign redist4_sync_together24_aunroll_x_in_c0_eni17348_7_tpl_15_rdcnt_q = redist4_sync_together24_aunroll_x_in_c0_eni17348_7_tpl_15_rdcnt_i[3:0];

    // redist4_sync_together24_aunroll_x_in_c0_eni17348_7_tpl_15_wraddr(REG,145)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_sync_together24_aunroll_x_in_c0_eni17348_7_tpl_15_wraddr_q <= $unsigned(4'b1100);
        end
        else
        begin
            redist4_sync_together24_aunroll_x_in_c0_eni17348_7_tpl_15_wraddr_q <= $unsigned(redist4_sync_together24_aunroll_x_in_c0_eni17348_7_tpl_15_rdcnt_q);
        end
    end

    // redist4_sync_together24_aunroll_x_in_c0_eni17348_7_tpl_15_mem(DUALMEM,143)
    assign redist4_sync_together24_aunroll_x_in_c0_eni17348_7_tpl_15_mem_ia = $unsigned(in_c0_eni17348_7_tpl);
    assign redist4_sync_together24_aunroll_x_in_c0_eni17348_7_tpl_15_mem_aa = redist4_sync_together24_aunroll_x_in_c0_eni17348_7_tpl_15_wraddr_q;
    assign redist4_sync_together24_aunroll_x_in_c0_eni17348_7_tpl_15_mem_ab = redist4_sync_together24_aunroll_x_in_c0_eni17348_7_tpl_15_rdcnt_q;
    assign redist4_sync_together24_aunroll_x_in_c0_eni17348_7_tpl_15_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(4),
        .numwords_a(13),
        .width_b(32),
        .widthad_b(4),
        .numwords_b(13),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .address_reg_b("CLOCK0"),
        .indata_reg_b("CLOCK0"),
        .rdcontrol_reg_b("CLOCK0"),
        .byteena_reg_b("CLOCK0"),
        .outdata_reg_b("CLOCK1"),
        .outdata_aclr_b("CLEAR1"),
        .clock_enable_input_a("NORMAL"),
        .clock_enable_input_b("NORMAL"),
        .clock_enable_output_b("NORMAL"),
        .read_during_write_mode_mixed_ports("DONT_CARE"),
        .power_up_uninitialized("TRUE"),
        .intended_device_family("Arria 10")
    ) redist4_sync_together24_aunroll_x_in_c0_eni17348_7_tpl_15_mem_dmem (
        .clocken1(redist4_sync_together24_aunroll_x_in_c0_eni17348_7_tpl_15_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist4_sync_together24_aunroll_x_in_c0_eni17348_7_tpl_15_mem_reset0),
        .clock1(clock),
        .address_a(redist4_sync_together24_aunroll_x_in_c0_eni17348_7_tpl_15_mem_aa),
        .data_a(redist4_sync_together24_aunroll_x_in_c0_eni17348_7_tpl_15_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist4_sync_together24_aunroll_x_in_c0_eni17348_7_tpl_15_mem_ab),
        .q_b(redist4_sync_together24_aunroll_x_in_c0_eni17348_7_tpl_15_mem_iq),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_b(),
        .clocken2(),
        .clocken3(),
        .aclr0(),
        .addressstall_a(),
        .addressstall_b(),
        .byteena_a(),
        .byteena_b(),
        .eccencbypass(),
        .eccencparity(),
        .sclr(),
        .address2_a(),
        .address2_b(),
        .q_a(),
        .eccstatus()
    );
    assign redist4_sync_together24_aunroll_x_in_c0_eni17348_7_tpl_15_mem_q = redist4_sync_together24_aunroll_x_in_c0_eni17348_7_tpl_15_mem_iq[31:0];

    // redist4_sync_together24_aunroll_x_in_c0_eni17348_7_tpl_15_outputreg0(DELAY,142)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_sync_together24_aunroll_x_in_c0_eni17348_7_tpl_15_outputreg0_q <= '0;
        end
        else
        begin
            redist4_sync_together24_aunroll_x_in_c0_eni17348_7_tpl_15_outputreg0_q <= $unsigned(redist4_sync_together24_aunroll_x_in_c0_eni17348_7_tpl_15_mem_q);
        end
    end

    // redist3_sync_together24_aunroll_x_in_c0_eni17348_6_tpl_12_notEnable(LOGICAL,138)
    assign redist3_sync_together24_aunroll_x_in_c0_eni17348_6_tpl_12_notEnable_q = $unsigned(~ (VCC_q));

    // redist3_sync_together24_aunroll_x_in_c0_eni17348_6_tpl_12_nor(LOGICAL,139)
    assign redist3_sync_together24_aunroll_x_in_c0_eni17348_6_tpl_12_nor_q = ~ (redist3_sync_together24_aunroll_x_in_c0_eni17348_6_tpl_12_notEnable_q | redist3_sync_together24_aunroll_x_in_c0_eni17348_6_tpl_12_sticky_ena_q);

    // redist3_sync_together24_aunroll_x_in_c0_eni17348_6_tpl_12_mem_last(CONSTANT,135)
    assign redist3_sync_together24_aunroll_x_in_c0_eni17348_6_tpl_12_mem_last_q = $unsigned(5'b01000);

    // redist3_sync_together24_aunroll_x_in_c0_eni17348_6_tpl_12_cmp(LOGICAL,136)
    assign redist3_sync_together24_aunroll_x_in_c0_eni17348_6_tpl_12_cmp_b = {1'b0, redist3_sync_together24_aunroll_x_in_c0_eni17348_6_tpl_12_rdcnt_q};
    assign redist3_sync_together24_aunroll_x_in_c0_eni17348_6_tpl_12_cmp_q = $unsigned(redist3_sync_together24_aunroll_x_in_c0_eni17348_6_tpl_12_mem_last_q == redist3_sync_together24_aunroll_x_in_c0_eni17348_6_tpl_12_cmp_b ? 1'b1 : 1'b0);

    // redist3_sync_together24_aunroll_x_in_c0_eni17348_6_tpl_12_cmpReg(REG,137)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_sync_together24_aunroll_x_in_c0_eni17348_6_tpl_12_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist3_sync_together24_aunroll_x_in_c0_eni17348_6_tpl_12_cmpReg_q <= $unsigned(redist3_sync_together24_aunroll_x_in_c0_eni17348_6_tpl_12_cmp_q);
        end
    end

    // redist3_sync_together24_aunroll_x_in_c0_eni17348_6_tpl_12_sticky_ena(REG,140)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_sync_together24_aunroll_x_in_c0_eni17348_6_tpl_12_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist3_sync_together24_aunroll_x_in_c0_eni17348_6_tpl_12_nor_q == 1'b1)
        begin
            redist3_sync_together24_aunroll_x_in_c0_eni17348_6_tpl_12_sticky_ena_q <= $unsigned(redist3_sync_together24_aunroll_x_in_c0_eni17348_6_tpl_12_cmpReg_q);
        end
    end

    // redist3_sync_together24_aunroll_x_in_c0_eni17348_6_tpl_12_enaAnd(LOGICAL,141)
    assign redist3_sync_together24_aunroll_x_in_c0_eni17348_6_tpl_12_enaAnd_q = redist3_sync_together24_aunroll_x_in_c0_eni17348_6_tpl_12_sticky_ena_q & VCC_q;

    // redist3_sync_together24_aunroll_x_in_c0_eni17348_6_tpl_12_rdcnt(COUNTER,133)
    // low=0, high=9, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_sync_together24_aunroll_x_in_c0_eni17348_6_tpl_12_rdcnt_i <= 4'd0;
            redist3_sync_together24_aunroll_x_in_c0_eni17348_6_tpl_12_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist3_sync_together24_aunroll_x_in_c0_eni17348_6_tpl_12_rdcnt_i == 4'd8)
            begin
                redist3_sync_together24_aunroll_x_in_c0_eni17348_6_tpl_12_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist3_sync_together24_aunroll_x_in_c0_eni17348_6_tpl_12_rdcnt_eq <= 1'b0;
            end
            if (redist3_sync_together24_aunroll_x_in_c0_eni17348_6_tpl_12_rdcnt_eq == 1'b1)
            begin
                redist3_sync_together24_aunroll_x_in_c0_eni17348_6_tpl_12_rdcnt_i <= $unsigned(redist3_sync_together24_aunroll_x_in_c0_eni17348_6_tpl_12_rdcnt_i) + $unsigned(4'd7);
            end
            else
            begin
                redist3_sync_together24_aunroll_x_in_c0_eni17348_6_tpl_12_rdcnt_i <= $unsigned(redist3_sync_together24_aunroll_x_in_c0_eni17348_6_tpl_12_rdcnt_i) + $unsigned(4'd1);
            end
        end
    end
    assign redist3_sync_together24_aunroll_x_in_c0_eni17348_6_tpl_12_rdcnt_q = redist3_sync_together24_aunroll_x_in_c0_eni17348_6_tpl_12_rdcnt_i[3:0];

    // redist3_sync_together24_aunroll_x_in_c0_eni17348_6_tpl_12_wraddr(REG,134)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_sync_together24_aunroll_x_in_c0_eni17348_6_tpl_12_wraddr_q <= $unsigned(4'b1001);
        end
        else
        begin
            redist3_sync_together24_aunroll_x_in_c0_eni17348_6_tpl_12_wraddr_q <= $unsigned(redist3_sync_together24_aunroll_x_in_c0_eni17348_6_tpl_12_rdcnt_q);
        end
    end

    // redist3_sync_together24_aunroll_x_in_c0_eni17348_6_tpl_12_mem(DUALMEM,132)
    assign redist3_sync_together24_aunroll_x_in_c0_eni17348_6_tpl_12_mem_ia = $unsigned(in_c0_eni17348_6_tpl);
    assign redist3_sync_together24_aunroll_x_in_c0_eni17348_6_tpl_12_mem_aa = redist3_sync_together24_aunroll_x_in_c0_eni17348_6_tpl_12_wraddr_q;
    assign redist3_sync_together24_aunroll_x_in_c0_eni17348_6_tpl_12_mem_ab = redist3_sync_together24_aunroll_x_in_c0_eni17348_6_tpl_12_rdcnt_q;
    assign redist3_sync_together24_aunroll_x_in_c0_eni17348_6_tpl_12_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(4),
        .numwords_a(10),
        .width_b(32),
        .widthad_b(4),
        .numwords_b(10),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .address_reg_b("CLOCK0"),
        .indata_reg_b("CLOCK0"),
        .rdcontrol_reg_b("CLOCK0"),
        .byteena_reg_b("CLOCK0"),
        .outdata_reg_b("CLOCK1"),
        .outdata_aclr_b("CLEAR1"),
        .clock_enable_input_a("NORMAL"),
        .clock_enable_input_b("NORMAL"),
        .clock_enable_output_b("NORMAL"),
        .read_during_write_mode_mixed_ports("DONT_CARE"),
        .power_up_uninitialized("TRUE"),
        .intended_device_family("Arria 10")
    ) redist3_sync_together24_aunroll_x_in_c0_eni17348_6_tpl_12_mem_dmem (
        .clocken1(redist3_sync_together24_aunroll_x_in_c0_eni17348_6_tpl_12_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist3_sync_together24_aunroll_x_in_c0_eni17348_6_tpl_12_mem_reset0),
        .clock1(clock),
        .address_a(redist3_sync_together24_aunroll_x_in_c0_eni17348_6_tpl_12_mem_aa),
        .data_a(redist3_sync_together24_aunroll_x_in_c0_eni17348_6_tpl_12_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist3_sync_together24_aunroll_x_in_c0_eni17348_6_tpl_12_mem_ab),
        .q_b(redist3_sync_together24_aunroll_x_in_c0_eni17348_6_tpl_12_mem_iq),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_b(),
        .clocken2(),
        .clocken3(),
        .aclr0(),
        .addressstall_a(),
        .addressstall_b(),
        .byteena_a(),
        .byteena_b(),
        .eccencbypass(),
        .eccencparity(),
        .sclr(),
        .address2_a(),
        .address2_b(),
        .q_a(),
        .eccstatus()
    );
    assign redist3_sync_together24_aunroll_x_in_c0_eni17348_6_tpl_12_mem_q = redist3_sync_together24_aunroll_x_in_c0_eni17348_6_tpl_12_mem_iq[31:0];

    // redist3_sync_together24_aunroll_x_in_c0_eni17348_6_tpl_12_outputreg0(DELAY,131)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_sync_together24_aunroll_x_in_c0_eni17348_6_tpl_12_outputreg0_q <= '0;
        end
        else
        begin
            redist3_sync_together24_aunroll_x_in_c0_eni17348_6_tpl_12_outputreg0_q <= $unsigned(redist3_sync_together24_aunroll_x_in_c0_eni17348_6_tpl_12_mem_q);
        end
    end

    // redist2_sync_together24_aunroll_x_in_c0_eni17348_5_tpl_9_notEnable(LOGICAL,127)
    assign redist2_sync_together24_aunroll_x_in_c0_eni17348_5_tpl_9_notEnable_q = $unsigned(~ (VCC_q));

    // redist2_sync_together24_aunroll_x_in_c0_eni17348_5_tpl_9_nor(LOGICAL,128)
    assign redist2_sync_together24_aunroll_x_in_c0_eni17348_5_tpl_9_nor_q = ~ (redist2_sync_together24_aunroll_x_in_c0_eni17348_5_tpl_9_notEnable_q | redist2_sync_together24_aunroll_x_in_c0_eni17348_5_tpl_9_sticky_ena_q);

    // redist2_sync_together24_aunroll_x_in_c0_eni17348_5_tpl_9_mem_last(CONSTANT,124)
    assign redist2_sync_together24_aunroll_x_in_c0_eni17348_5_tpl_9_mem_last_q = $unsigned(4'b0101);

    // redist2_sync_together24_aunroll_x_in_c0_eni17348_5_tpl_9_cmp(LOGICAL,125)
    assign redist2_sync_together24_aunroll_x_in_c0_eni17348_5_tpl_9_cmp_b = {1'b0, redist2_sync_together24_aunroll_x_in_c0_eni17348_5_tpl_9_rdcnt_q};
    assign redist2_sync_together24_aunroll_x_in_c0_eni17348_5_tpl_9_cmp_q = $unsigned(redist2_sync_together24_aunroll_x_in_c0_eni17348_5_tpl_9_mem_last_q == redist2_sync_together24_aunroll_x_in_c0_eni17348_5_tpl_9_cmp_b ? 1'b1 : 1'b0);

    // redist2_sync_together24_aunroll_x_in_c0_eni17348_5_tpl_9_cmpReg(REG,126)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_sync_together24_aunroll_x_in_c0_eni17348_5_tpl_9_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist2_sync_together24_aunroll_x_in_c0_eni17348_5_tpl_9_cmpReg_q <= $unsigned(redist2_sync_together24_aunroll_x_in_c0_eni17348_5_tpl_9_cmp_q);
        end
    end

    // redist2_sync_together24_aunroll_x_in_c0_eni17348_5_tpl_9_sticky_ena(REG,129)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_sync_together24_aunroll_x_in_c0_eni17348_5_tpl_9_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist2_sync_together24_aunroll_x_in_c0_eni17348_5_tpl_9_nor_q == 1'b1)
        begin
            redist2_sync_together24_aunroll_x_in_c0_eni17348_5_tpl_9_sticky_ena_q <= $unsigned(redist2_sync_together24_aunroll_x_in_c0_eni17348_5_tpl_9_cmpReg_q);
        end
    end

    // redist2_sync_together24_aunroll_x_in_c0_eni17348_5_tpl_9_enaAnd(LOGICAL,130)
    assign redist2_sync_together24_aunroll_x_in_c0_eni17348_5_tpl_9_enaAnd_q = redist2_sync_together24_aunroll_x_in_c0_eni17348_5_tpl_9_sticky_ena_q & VCC_q;

    // redist2_sync_together24_aunroll_x_in_c0_eni17348_5_tpl_9_rdcnt(COUNTER,122)
    // low=0, high=6, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_sync_together24_aunroll_x_in_c0_eni17348_5_tpl_9_rdcnt_i <= 3'd0;
            redist2_sync_together24_aunroll_x_in_c0_eni17348_5_tpl_9_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist2_sync_together24_aunroll_x_in_c0_eni17348_5_tpl_9_rdcnt_i == 3'd5)
            begin
                redist2_sync_together24_aunroll_x_in_c0_eni17348_5_tpl_9_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist2_sync_together24_aunroll_x_in_c0_eni17348_5_tpl_9_rdcnt_eq <= 1'b0;
            end
            if (redist2_sync_together24_aunroll_x_in_c0_eni17348_5_tpl_9_rdcnt_eq == 1'b1)
            begin
                redist2_sync_together24_aunroll_x_in_c0_eni17348_5_tpl_9_rdcnt_i <= $unsigned(redist2_sync_together24_aunroll_x_in_c0_eni17348_5_tpl_9_rdcnt_i) + $unsigned(3'd2);
            end
            else
            begin
                redist2_sync_together24_aunroll_x_in_c0_eni17348_5_tpl_9_rdcnt_i <= $unsigned(redist2_sync_together24_aunroll_x_in_c0_eni17348_5_tpl_9_rdcnt_i) + $unsigned(3'd1);
            end
        end
    end
    assign redist2_sync_together24_aunroll_x_in_c0_eni17348_5_tpl_9_rdcnt_q = redist2_sync_together24_aunroll_x_in_c0_eni17348_5_tpl_9_rdcnt_i[2:0];

    // redist2_sync_together24_aunroll_x_in_c0_eni17348_5_tpl_9_wraddr(REG,123)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_sync_together24_aunroll_x_in_c0_eni17348_5_tpl_9_wraddr_q <= $unsigned(3'b110);
        end
        else
        begin
            redist2_sync_together24_aunroll_x_in_c0_eni17348_5_tpl_9_wraddr_q <= $unsigned(redist2_sync_together24_aunroll_x_in_c0_eni17348_5_tpl_9_rdcnt_q);
        end
    end

    // redist2_sync_together24_aunroll_x_in_c0_eni17348_5_tpl_9_mem(DUALMEM,121)
    assign redist2_sync_together24_aunroll_x_in_c0_eni17348_5_tpl_9_mem_ia = $unsigned(in_c0_eni17348_5_tpl);
    assign redist2_sync_together24_aunroll_x_in_c0_eni17348_5_tpl_9_mem_aa = redist2_sync_together24_aunroll_x_in_c0_eni17348_5_tpl_9_wraddr_q;
    assign redist2_sync_together24_aunroll_x_in_c0_eni17348_5_tpl_9_mem_ab = redist2_sync_together24_aunroll_x_in_c0_eni17348_5_tpl_9_rdcnt_q;
    assign redist2_sync_together24_aunroll_x_in_c0_eni17348_5_tpl_9_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(3),
        .numwords_a(7),
        .width_b(32),
        .widthad_b(3),
        .numwords_b(7),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .address_reg_b("CLOCK0"),
        .indata_reg_b("CLOCK0"),
        .rdcontrol_reg_b("CLOCK0"),
        .byteena_reg_b("CLOCK0"),
        .outdata_reg_b("CLOCK1"),
        .outdata_aclr_b("CLEAR1"),
        .clock_enable_input_a("NORMAL"),
        .clock_enable_input_b("NORMAL"),
        .clock_enable_output_b("NORMAL"),
        .read_during_write_mode_mixed_ports("DONT_CARE"),
        .power_up_uninitialized("TRUE"),
        .intended_device_family("Arria 10")
    ) redist2_sync_together24_aunroll_x_in_c0_eni17348_5_tpl_9_mem_dmem (
        .clocken1(redist2_sync_together24_aunroll_x_in_c0_eni17348_5_tpl_9_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist2_sync_together24_aunroll_x_in_c0_eni17348_5_tpl_9_mem_reset0),
        .clock1(clock),
        .address_a(redist2_sync_together24_aunroll_x_in_c0_eni17348_5_tpl_9_mem_aa),
        .data_a(redist2_sync_together24_aunroll_x_in_c0_eni17348_5_tpl_9_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist2_sync_together24_aunroll_x_in_c0_eni17348_5_tpl_9_mem_ab),
        .q_b(redist2_sync_together24_aunroll_x_in_c0_eni17348_5_tpl_9_mem_iq),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_b(),
        .clocken2(),
        .clocken3(),
        .aclr0(),
        .addressstall_a(),
        .addressstall_b(),
        .byteena_a(),
        .byteena_b(),
        .eccencbypass(),
        .eccencparity(),
        .sclr(),
        .address2_a(),
        .address2_b(),
        .q_a(),
        .eccstatus()
    );
    assign redist2_sync_together24_aunroll_x_in_c0_eni17348_5_tpl_9_mem_q = redist2_sync_together24_aunroll_x_in_c0_eni17348_5_tpl_9_mem_iq[31:0];

    // redist2_sync_together24_aunroll_x_in_c0_eni17348_5_tpl_9_outputreg0(DELAY,120)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_sync_together24_aunroll_x_in_c0_eni17348_5_tpl_9_outputreg0_q <= '0;
        end
        else
        begin
            redist2_sync_together24_aunroll_x_in_c0_eni17348_5_tpl_9_outputreg0_q <= $unsigned(redist2_sync_together24_aunroll_x_in_c0_eni17348_5_tpl_9_mem_q);
        end
    end

    // redist1_sync_together24_aunroll_x_in_c0_eni17348_4_tpl_6_notEnable(LOGICAL,116)
    assign redist1_sync_together24_aunroll_x_in_c0_eni17348_4_tpl_6_notEnable_q = $unsigned(~ (VCC_q));

    // redist1_sync_together24_aunroll_x_in_c0_eni17348_4_tpl_6_nor(LOGICAL,117)
    assign redist1_sync_together24_aunroll_x_in_c0_eni17348_4_tpl_6_nor_q = ~ (redist1_sync_together24_aunroll_x_in_c0_eni17348_4_tpl_6_notEnable_q | redist1_sync_together24_aunroll_x_in_c0_eni17348_4_tpl_6_sticky_ena_q);

    // redist1_sync_together24_aunroll_x_in_c0_eni17348_4_tpl_6_mem_last(CONSTANT,113)
    assign redist1_sync_together24_aunroll_x_in_c0_eni17348_4_tpl_6_mem_last_q = $unsigned(3'b010);

    // redist1_sync_together24_aunroll_x_in_c0_eni17348_4_tpl_6_cmp(LOGICAL,114)
    assign redist1_sync_together24_aunroll_x_in_c0_eni17348_4_tpl_6_cmp_b = {1'b0, redist1_sync_together24_aunroll_x_in_c0_eni17348_4_tpl_6_rdcnt_q};
    assign redist1_sync_together24_aunroll_x_in_c0_eni17348_4_tpl_6_cmp_q = $unsigned(redist1_sync_together24_aunroll_x_in_c0_eni17348_4_tpl_6_mem_last_q == redist1_sync_together24_aunroll_x_in_c0_eni17348_4_tpl_6_cmp_b ? 1'b1 : 1'b0);

    // redist1_sync_together24_aunroll_x_in_c0_eni17348_4_tpl_6_cmpReg(REG,115)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together24_aunroll_x_in_c0_eni17348_4_tpl_6_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist1_sync_together24_aunroll_x_in_c0_eni17348_4_tpl_6_cmpReg_q <= $unsigned(redist1_sync_together24_aunroll_x_in_c0_eni17348_4_tpl_6_cmp_q);
        end
    end

    // redist1_sync_together24_aunroll_x_in_c0_eni17348_4_tpl_6_sticky_ena(REG,118)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together24_aunroll_x_in_c0_eni17348_4_tpl_6_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist1_sync_together24_aunroll_x_in_c0_eni17348_4_tpl_6_nor_q == 1'b1)
        begin
            redist1_sync_together24_aunroll_x_in_c0_eni17348_4_tpl_6_sticky_ena_q <= $unsigned(redist1_sync_together24_aunroll_x_in_c0_eni17348_4_tpl_6_cmpReg_q);
        end
    end

    // redist1_sync_together24_aunroll_x_in_c0_eni17348_4_tpl_6_enaAnd(LOGICAL,119)
    assign redist1_sync_together24_aunroll_x_in_c0_eni17348_4_tpl_6_enaAnd_q = redist1_sync_together24_aunroll_x_in_c0_eni17348_4_tpl_6_sticky_ena_q & VCC_q;

    // redist1_sync_together24_aunroll_x_in_c0_eni17348_4_tpl_6_rdcnt(COUNTER,111)
    // low=0, high=3, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together24_aunroll_x_in_c0_eni17348_4_tpl_6_rdcnt_i <= 2'd0;
        end
        else
        begin
            redist1_sync_together24_aunroll_x_in_c0_eni17348_4_tpl_6_rdcnt_i <= $unsigned(redist1_sync_together24_aunroll_x_in_c0_eni17348_4_tpl_6_rdcnt_i) + $unsigned(2'd1);
        end
    end
    assign redist1_sync_together24_aunroll_x_in_c0_eni17348_4_tpl_6_rdcnt_q = redist1_sync_together24_aunroll_x_in_c0_eni17348_4_tpl_6_rdcnt_i[1:0];

    // redist1_sync_together24_aunroll_x_in_c0_eni17348_4_tpl_6_wraddr(REG,112)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together24_aunroll_x_in_c0_eni17348_4_tpl_6_wraddr_q <= $unsigned(2'b11);
        end
        else
        begin
            redist1_sync_together24_aunroll_x_in_c0_eni17348_4_tpl_6_wraddr_q <= $unsigned(redist1_sync_together24_aunroll_x_in_c0_eni17348_4_tpl_6_rdcnt_q);
        end
    end

    // redist1_sync_together24_aunroll_x_in_c0_eni17348_4_tpl_6_mem(DUALMEM,110)
    assign redist1_sync_together24_aunroll_x_in_c0_eni17348_4_tpl_6_mem_ia = $unsigned(in_c0_eni17348_4_tpl);
    assign redist1_sync_together24_aunroll_x_in_c0_eni17348_4_tpl_6_mem_aa = redist1_sync_together24_aunroll_x_in_c0_eni17348_4_tpl_6_wraddr_q;
    assign redist1_sync_together24_aunroll_x_in_c0_eni17348_4_tpl_6_mem_ab = redist1_sync_together24_aunroll_x_in_c0_eni17348_4_tpl_6_rdcnt_q;
    assign redist1_sync_together24_aunroll_x_in_c0_eni17348_4_tpl_6_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(2),
        .numwords_a(4),
        .width_b(32),
        .widthad_b(2),
        .numwords_b(4),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .address_reg_b("CLOCK0"),
        .indata_reg_b("CLOCK0"),
        .rdcontrol_reg_b("CLOCK0"),
        .byteena_reg_b("CLOCK0"),
        .outdata_reg_b("CLOCK1"),
        .outdata_aclr_b("CLEAR1"),
        .clock_enable_input_a("NORMAL"),
        .clock_enable_input_b("NORMAL"),
        .clock_enable_output_b("NORMAL"),
        .read_during_write_mode_mixed_ports("DONT_CARE"),
        .power_up_uninitialized("TRUE"),
        .intended_device_family("Arria 10")
    ) redist1_sync_together24_aunroll_x_in_c0_eni17348_4_tpl_6_mem_dmem (
        .clocken1(redist1_sync_together24_aunroll_x_in_c0_eni17348_4_tpl_6_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist1_sync_together24_aunroll_x_in_c0_eni17348_4_tpl_6_mem_reset0),
        .clock1(clock),
        .address_a(redist1_sync_together24_aunroll_x_in_c0_eni17348_4_tpl_6_mem_aa),
        .data_a(redist1_sync_together24_aunroll_x_in_c0_eni17348_4_tpl_6_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist1_sync_together24_aunroll_x_in_c0_eni17348_4_tpl_6_mem_ab),
        .q_b(redist1_sync_together24_aunroll_x_in_c0_eni17348_4_tpl_6_mem_iq),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_b(),
        .clocken2(),
        .clocken3(),
        .aclr0(),
        .addressstall_a(),
        .addressstall_b(),
        .byteena_a(),
        .byteena_b(),
        .eccencbypass(),
        .eccencparity(),
        .sclr(),
        .address2_a(),
        .address2_b(),
        .q_a(),
        .eccstatus()
    );
    assign redist1_sync_together24_aunroll_x_in_c0_eni17348_4_tpl_6_mem_q = redist1_sync_together24_aunroll_x_in_c0_eni17348_4_tpl_6_mem_iq[31:0];

    // redist1_sync_together24_aunroll_x_in_c0_eni17348_4_tpl_6_outputreg0(DELAY,109)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together24_aunroll_x_in_c0_eni17348_4_tpl_6_outputreg0_q <= '0;
        end
        else
        begin
            redist1_sync_together24_aunroll_x_in_c0_eni17348_4_tpl_6_outputreg0_q <= $unsigned(redist1_sync_together24_aunroll_x_in_c0_eni17348_4_tpl_6_mem_q);
        end
    end

    // redist0_sync_together24_aunroll_x_in_c0_eni17348_3_tpl_3(DELAY,89)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_sync_together24_aunroll_x_in_c0_eni17348_3_tpl_3_delay_0 <= '0;
            redist0_sync_together24_aunroll_x_in_c0_eni17348_3_tpl_3_q <= '0;
        end
        else
        begin
            redist0_sync_together24_aunroll_x_in_c0_eni17348_3_tpl_3_delay_0 <= $unsigned(in_c0_eni17348_3_tpl);
            redist0_sync_together24_aunroll_x_in_c0_eni17348_3_tpl_3_q <= redist0_sync_together24_aunroll_x_in_c0_eni17348_3_tpl_3_delay_0;
        end
    end

    // redist0_sync_together24_aunroll_x_in_c0_eni17348_3_tpl_3_outputreg0(DELAY,108)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_sync_together24_aunroll_x_in_c0_eni17348_3_tpl_3_outputreg0_q <= '0;
        end
        else
        begin
            redist0_sync_together24_aunroll_x_in_c0_eni17348_3_tpl_3_outputreg0_q <= $unsigned(redist0_sync_together24_aunroll_x_in_c0_eni17348_3_tpl_3_q);
        end
    end

    // i_add91_conv2d1x12(BLACKBOX,19)@0
    // out out_primWireOut@3
    conv2d1x1_flt_i_sfc_logic_s_c0_in_for_co0000454ge26154g226150y05 thei_add91_conv2d1x12 (
        .in_0(in_c0_eni17348_1_tpl),
        .in_1(in_c0_eni17348_2_tpl),
        .out_primWireOut(i_add91_conv2d1x12_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // i_add91_1_conv2d1x13(BLACKBOX,10)@3
    // out out_primWireOut@6
    conv2d1x1_flt_i_sfc_logic_s_c0_in_for_co0000454ge26154g226150y05 thei_add91_1_conv2d1x13 (
        .in_0(i_add91_conv2d1x12_out_primWireOut),
        .in_1(redist0_sync_together24_aunroll_x_in_c0_eni17348_3_tpl_3_outputreg0_q),
        .out_primWireOut(i_add91_1_conv2d1x13_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // i_add91_2_conv2d1x14(BLACKBOX,11)@6
    // out out_primWireOut@9
    conv2d1x1_flt_i_sfc_logic_s_c0_in_for_co0000454ge26154g226150y05 thei_add91_2_conv2d1x14 (
        .in_0(i_add91_1_conv2d1x13_out_primWireOut),
        .in_1(redist1_sync_together24_aunroll_x_in_c0_eni17348_4_tpl_6_outputreg0_q),
        .out_primWireOut(i_add91_2_conv2d1x14_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // i_add91_3_conv2d1x15(BLACKBOX,12)@9
    // out out_primWireOut@12
    conv2d1x1_flt_i_sfc_logic_s_c0_in_for_co0000454ge26154g226150y05 thei_add91_3_conv2d1x15 (
        .in_0(i_add91_2_conv2d1x14_out_primWireOut),
        .in_1(redist2_sync_together24_aunroll_x_in_c0_eni17348_5_tpl_9_outputreg0_q),
        .out_primWireOut(i_add91_3_conv2d1x15_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // i_add91_4_conv2d1x16(BLACKBOX,13)@12
    // out out_primWireOut@15
    conv2d1x1_flt_i_sfc_logic_s_c0_in_for_co0000454ge26154g226150y05 thei_add91_4_conv2d1x16 (
        .in_0(i_add91_3_conv2d1x15_out_primWireOut),
        .in_1(redist3_sync_together24_aunroll_x_in_c0_eni17348_6_tpl_12_outputreg0_q),
        .out_primWireOut(i_add91_4_conv2d1x16_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // i_add91_5_conv2d1x17(BLACKBOX,14)@15
    // out out_primWireOut@18
    conv2d1x1_flt_i_sfc_logic_s_c0_in_for_co0000454ge26154g226150y05 thei_add91_5_conv2d1x17 (
        .in_0(i_add91_4_conv2d1x16_out_primWireOut),
        .in_1(redist4_sync_together24_aunroll_x_in_c0_eni17348_7_tpl_15_outputreg0_q),
        .out_primWireOut(i_add91_5_conv2d1x17_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // i_add91_6_conv2d1x18(BLACKBOX,15)@18
    // out out_primWireOut@21
    conv2d1x1_flt_i_sfc_logic_s_c0_in_for_co0000454ge26154g226150y05 thei_add91_6_conv2d1x18 (
        .in_0(i_add91_5_conv2d1x17_out_primWireOut),
        .in_1(redist5_sync_together24_aunroll_x_in_c0_eni17348_8_tpl_18_outputreg0_q),
        .out_primWireOut(i_add91_6_conv2d1x18_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // i_add91_7_conv2d1x19(BLACKBOX,16)@21
    // out out_primWireOut@24
    conv2d1x1_flt_i_sfc_logic_s_c0_in_for_co0000454ge26154g226150y05 thei_add91_7_conv2d1x19 (
        .in_0(i_add91_6_conv2d1x18_out_primWireOut),
        .in_1(redist6_sync_together24_aunroll_x_in_c0_eni17348_9_tpl_21_outputreg0_q),
        .out_primWireOut(i_add91_7_conv2d1x19_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // i_add91_8_conv2d1x110(BLACKBOX,17)@24
    // out out_primWireOut@27
    conv2d1x1_flt_i_sfc_logic_s_c0_in_for_co0000454ge26154g226150y05 thei_add91_8_conv2d1x110 (
        .in_0(i_add91_7_conv2d1x19_out_primWireOut),
        .in_1(redist7_sync_together24_aunroll_x_in_c0_eni17348_10_tpl_24_outputreg0_q),
        .out_primWireOut(i_add91_8_conv2d1x110_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // i_add91_9_conv2d1x111(BLACKBOX,18)@27
    // out out_primWireOut@30
    conv2d1x1_flt_i_sfc_logic_s_c0_in_for_co0000454ge26154g226150y05 thei_add91_9_conv2d1x111 (
        .in_0(i_add91_8_conv2d1x110_out_primWireOut),
        .in_1(redist8_sync_together24_aunroll_x_in_c0_eni17348_11_tpl_27_outputreg0_q),
        .out_primWireOut(i_add91_9_conv2d1x111_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // i_add91_10_conv2d1x112(BLACKBOX,4)@30
    // out out_primWireOut@33
    conv2d1x1_flt_i_sfc_logic_s_c0_in_for_co0000454ge26154g226150y05 thei_add91_10_conv2d1x112 (
        .in_0(i_add91_9_conv2d1x111_out_primWireOut),
        .in_1(redist9_sync_together24_aunroll_x_in_c0_eni17348_12_tpl_30_outputreg0_q),
        .out_primWireOut(i_add91_10_conv2d1x112_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // i_add91_11_conv2d1x113(BLACKBOX,5)@33
    // out out_primWireOut@36
    conv2d1x1_flt_i_sfc_logic_s_c0_in_for_co0000454ge26154g226150y05 thei_add91_11_conv2d1x113 (
        .in_0(i_add91_10_conv2d1x112_out_primWireOut),
        .in_1(redist10_sync_together24_aunroll_x_in_c0_eni17348_13_tpl_33_outputreg0_q),
        .out_primWireOut(i_add91_11_conv2d1x113_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // i_add91_12_conv2d1x114(BLACKBOX,6)@36
    // out out_primWireOut@39
    conv2d1x1_flt_i_sfc_logic_s_c0_in_for_co0000454ge26154g226150y05 thei_add91_12_conv2d1x114 (
        .in_0(i_add91_11_conv2d1x113_out_primWireOut),
        .in_1(redist11_sync_together24_aunroll_x_in_c0_eni17348_14_tpl_36_outputreg0_q),
        .out_primWireOut(i_add91_12_conv2d1x114_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // i_add91_13_conv2d1x115(BLACKBOX,7)@39
    // out out_primWireOut@42
    conv2d1x1_flt_i_sfc_logic_s_c0_in_for_co0000454ge26154g226150y05 thei_add91_13_conv2d1x115 (
        .in_0(i_add91_12_conv2d1x114_out_primWireOut),
        .in_1(redist12_sync_together24_aunroll_x_in_c0_eni17348_15_tpl_39_outputreg0_q),
        .out_primWireOut(i_add91_13_conv2d1x115_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // i_add91_14_conv2d1x116(BLACKBOX,8)@42
    // out out_primWireOut@45
    conv2d1x1_flt_i_sfc_logic_s_c0_in_for_co0000454ge26154g226150y05 thei_add91_14_conv2d1x116 (
        .in_0(i_add91_13_conv2d1x115_out_primWireOut),
        .in_1(redist13_sync_together24_aunroll_x_in_c0_eni17348_16_tpl_42_outputreg0_q),
        .out_primWireOut(i_add91_14_conv2d1x116_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // i_add91_15_conv2d1x117(BLACKBOX,9)@45
    // out out_primWireOut@48
    conv2d1x1_flt_i_sfc_logic_s_c0_in_for_co0000454ge26154g226150y05 thei_add91_15_conv2d1x117 (
        .in_0(i_add91_14_conv2d1x116_out_primWireOut),
        .in_1(redist14_sync_together24_aunroll_x_in_c0_eni17348_17_tpl_45_outputreg0_q),
        .out_primWireOut(i_add91_15_conv2d1x117_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // redist16_i_add91_15_conv2d1x117_out_primWireOut_1(DELAY,105)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist16_i_add91_15_conv2d1x117_out_primWireOut_1_q <= '0;
        end
        else
        begin
            redist16_i_add91_15_conv2d1x117_out_primWireOut_1_q <= $unsigned(i_add91_15_conv2d1x117_out_primWireOut);
        end
    end

    // c_float_0_000000e_0022(FLOATCONSTANT,2)
    assign c_float_0_000000e_0022_q = $unsigned(32'b00000000000000000000000000000000);

    // frac_y_uid47_i_cmp95_conv2d1x118(BITSELECT,46)@48
    assign frac_y_uid47_i_cmp95_conv2d1x118_b = i_add91_15_conv2d1x117_out_primWireOut[22:0];

    // cstZeroWF_uid27_i_cmp95_conv2d1x118(CONSTANT,26)
    assign cstZeroWF_uid27_i_cmp95_conv2d1x118_q = $unsigned(23'b00000000000000000000000);

    // fracXIsZero_uid50_i_cmp95_conv2d1x118(LOGICAL,49)@48
    assign fracXIsZero_uid50_i_cmp95_conv2d1x118_q = $unsigned(cstZeroWF_uid27_i_cmp95_conv2d1x118_q == frac_y_uid47_i_cmp95_conv2d1x118_b ? 1'b1 : 1'b0);

    // cstAllZWE_uid28_i_cmp95_conv2d1x118(CONSTANT,27)
    assign cstAllZWE_uid28_i_cmp95_conv2d1x118_q = $unsigned(8'b00000000);

    // exp_y_uid46_i_cmp95_conv2d1x118(BITSELECT,45)@48
    assign exp_y_uid46_i_cmp95_conv2d1x118_b = i_add91_15_conv2d1x117_out_primWireOut[30:23];

    // expXIsZero_uid48_i_cmp95_conv2d1x118(LOGICAL,47)@48
    assign expXIsZero_uid48_i_cmp95_conv2d1x118_q = $unsigned(exp_y_uid46_i_cmp95_conv2d1x118_b == cstAllZWE_uid28_i_cmp95_conv2d1x118_q ? 1'b1 : 1'b0);

    // excZ_y_uid52_i_cmp95_conv2d1x118(LOGICAL,51)@48
    assign excZ_y_uid52_i_cmp95_conv2d1x118_q = expXIsZero_uid48_i_cmp95_conv2d1x118_q & fracXIsZero_uid50_i_cmp95_conv2d1x118_q;

    // invExcYZ_uid82_i_cmp95_conv2d1x118(LOGICAL,81)@48
    assign invExcYZ_uid82_i_cmp95_conv2d1x118_q = ~ (excZ_y_uid52_i_cmp95_conv2d1x118_q);

    // frac_x_uid30_i_cmp95_conv2d1x118(BITSELECT,29)@48
    assign frac_x_uid30_i_cmp95_conv2d1x118_b = c_float_0_000000e_0022_q[22:0];

    // fracXIsZero_uid33_i_cmp95_conv2d1x118(LOGICAL,32)@48
    assign fracXIsZero_uid33_i_cmp95_conv2d1x118_q = $unsigned(cstZeroWF_uid27_i_cmp95_conv2d1x118_q == frac_x_uid30_i_cmp95_conv2d1x118_b ? 1'b1 : 1'b0);

    // exp_x_uid29_i_cmp95_conv2d1x118(BITSELECT,28)@48
    assign exp_x_uid29_i_cmp95_conv2d1x118_b = c_float_0_000000e_0022_q[30:23];

    // expXIsZero_uid31_i_cmp95_conv2d1x118(LOGICAL,30)@48
    assign expXIsZero_uid31_i_cmp95_conv2d1x118_q = $unsigned(exp_x_uid29_i_cmp95_conv2d1x118_b == cstAllZWE_uid28_i_cmp95_conv2d1x118_q ? 1'b1 : 1'b0);

    // excZ_x_uid35_i_cmp95_conv2d1x118(LOGICAL,34)@48
    assign excZ_x_uid35_i_cmp95_conv2d1x118_q = expXIsZero_uid31_i_cmp95_conv2d1x118_q & fracXIsZero_uid33_i_cmp95_conv2d1x118_q;

    // invExcXZ_uid83_i_cmp95_conv2d1x118(LOGICAL,82)@48
    assign invExcXZ_uid83_i_cmp95_conv2d1x118_q = ~ (excZ_x_uid35_i_cmp95_conv2d1x118_q);

    // oneNonZero_uid84_i_cmp95_conv2d1x118(LOGICAL,83)@48
    assign oneNonZero_uid84_i_cmp95_conv2d1x118_q = invExcXZ_uid83_i_cmp95_conv2d1x118_q | invExcYZ_uid82_i_cmp95_conv2d1x118_q;

    // two_uid76_i_cmp95_conv2d1x118(CONSTANT,75)
    assign two_uid76_i_cmp95_conv2d1x118_q = $unsigned(2'b10);

    // signX_uid74_i_cmp95_conv2d1x118(BITSELECT,73)@48
    assign signX_uid74_i_cmp95_conv2d1x118_b = $unsigned(c_float_0_000000e_0022_q[31:31]);

    // signY_uid75_i_cmp95_conv2d1x118(BITSELECT,74)@48
    assign signY_uid75_i_cmp95_conv2d1x118_b = $unsigned(i_add91_15_conv2d1x117_out_primWireOut[31:31]);

    // concSXSY_uid77_i_cmp95_conv2d1x118(BITJOIN,76)@48
    assign concSXSY_uid77_i_cmp95_conv2d1x118_q = {signX_uid74_i_cmp95_conv2d1x118_b, signY_uid75_i_cmp95_conv2d1x118_b};

    // sxLTsy_uid78_i_cmp95_conv2d1x118(LOGICAL,77)@48
    assign sxLTsy_uid78_i_cmp95_conv2d1x118_q = $unsigned(concSXSY_uid77_i_cmp95_conv2d1x118_q == two_uid76_i_cmp95_conv2d1x118_q ? 1'b1 : 1'b0);

    // rc2_uid85_i_cmp95_conv2d1x118(LOGICAL,84)@48
    assign rc2_uid85_i_cmp95_conv2d1x118_q = sxLTsy_uid78_i_cmp95_conv2d1x118_q & oneNonZero_uid84_i_cmp95_conv2d1x118_q;

    // expFracX_uid65_i_cmp95_conv2d1x118(BITJOIN,64)@48
    assign expFracX_uid65_i_cmp95_conv2d1x118_q = {exp_x_uid29_i_cmp95_conv2d1x118_b, frac_x_uid30_i_cmp95_conv2d1x118_b};

    // expFracY_uid67_i_cmp95_conv2d1x118(BITJOIN,66)@48
    assign expFracY_uid67_i_cmp95_conv2d1x118_q = {exp_y_uid46_i_cmp95_conv2d1x118_b, frac_y_uid47_i_cmp95_conv2d1x118_b};

    // efxGTefy_uid69_i_cmp95_conv2d1x118(COMPARE,68)@48
    assign efxGTefy_uid69_i_cmp95_conv2d1x118_a = {2'b00, expFracY_uid67_i_cmp95_conv2d1x118_q};
    assign efxGTefy_uid69_i_cmp95_conv2d1x118_b = {2'b00, expFracX_uid65_i_cmp95_conv2d1x118_q};
    assign efxGTefy_uid69_i_cmp95_conv2d1x118_o = $unsigned(efxGTefy_uid69_i_cmp95_conv2d1x118_a) - $unsigned(efxGTefy_uid69_i_cmp95_conv2d1x118_b);
    assign efxGTefy_uid69_i_cmp95_conv2d1x118_c[0] = efxGTefy_uid69_i_cmp95_conv2d1x118_o[32];

    // efxLTefy_uid70_i_cmp95_conv2d1x118(COMPARE,69)@48
    assign efxLTefy_uid70_i_cmp95_conv2d1x118_a = {2'b00, expFracX_uid65_i_cmp95_conv2d1x118_q};
    assign efxLTefy_uid70_i_cmp95_conv2d1x118_b = {2'b00, expFracY_uid67_i_cmp95_conv2d1x118_q};
    assign efxLTefy_uid70_i_cmp95_conv2d1x118_o = $unsigned(efxLTefy_uid70_i_cmp95_conv2d1x118_a) - $unsigned(efxLTefy_uid70_i_cmp95_conv2d1x118_b);
    assign efxLTefy_uid70_i_cmp95_conv2d1x118_c[0] = efxLTefy_uid70_i_cmp95_conv2d1x118_o[32];

    // expFracCompMux_uid81_i_cmp95_conv2d1x118(MUX,80)@48
    assign expFracCompMux_uid81_i_cmp95_conv2d1x118_s = signX_uid74_i_cmp95_conv2d1x118_b;
    always @(expFracCompMux_uid81_i_cmp95_conv2d1x118_s or efxLTefy_uid70_i_cmp95_conv2d1x118_c or efxGTefy_uid69_i_cmp95_conv2d1x118_c)
    begin
        unique case (expFracCompMux_uid81_i_cmp95_conv2d1x118_s)
            1'b0 : expFracCompMux_uid81_i_cmp95_conv2d1x118_q = efxLTefy_uid70_i_cmp95_conv2d1x118_c;
            1'b1 : expFracCompMux_uid81_i_cmp95_conv2d1x118_q = efxGTefy_uid69_i_cmp95_conv2d1x118_c;
            default : expFracCompMux_uid81_i_cmp95_conv2d1x118_q = 1'b0;
        endcase
    end

    // xorSigns_uid79_i_cmp95_conv2d1x118(LOGICAL,78)@48
    assign xorSigns_uid79_i_cmp95_conv2d1x118_q = signX_uid74_i_cmp95_conv2d1x118_b ^ signY_uid75_i_cmp95_conv2d1x118_b;

    // sxEQsy_uid80_i_cmp95_conv2d1x118(LOGICAL,79)@48
    assign sxEQsy_uid80_i_cmp95_conv2d1x118_q = ~ (xorSigns_uid79_i_cmp95_conv2d1x118_q);

    // sxEQsyExpFracCompMux_uid86_i_cmp95_conv2d1x118(LOGICAL,85)@48
    assign sxEQsyExpFracCompMux_uid86_i_cmp95_conv2d1x118_q = sxEQsy_uid80_i_cmp95_conv2d1x118_q & expFracCompMux_uid81_i_cmp95_conv2d1x118_q;

    // r_uid87_i_cmp95_conv2d1x118(LOGICAL,86)@48 + 1
    assign r_uid87_i_cmp95_conv2d1x118_qi = sxEQsyExpFracCompMux_uid86_i_cmp95_conv2d1x118_q | rc2_uid85_i_cmp95_conv2d1x118_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    r_uid87_i_cmp95_conv2d1x118_delay ( .xin(r_uid87_i_cmp95_conv2d1x118_qi), .xout(r_uid87_i_cmp95_conv2d1x118_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // fracXIsNotZero_uid51_i_cmp95_conv2d1x118(LOGICAL,50)@48
    assign fracXIsNotZero_uid51_i_cmp95_conv2d1x118_q = ~ (fracXIsZero_uid50_i_cmp95_conv2d1x118_q);

    // cstAllOWE_uid26_i_cmp95_conv2d1x118(CONSTANT,25)
    assign cstAllOWE_uid26_i_cmp95_conv2d1x118_q = $unsigned(8'b11111111);

    // expXIsMax_uid49_i_cmp95_conv2d1x118(LOGICAL,48)@48
    assign expXIsMax_uid49_i_cmp95_conv2d1x118_q = $unsigned(exp_y_uid46_i_cmp95_conv2d1x118_b == cstAllOWE_uid26_i_cmp95_conv2d1x118_q ? 1'b1 : 1'b0);

    // excN_y_uid54_i_cmp95_conv2d1x118(LOGICAL,53)@48
    assign excN_y_uid54_i_cmp95_conv2d1x118_q = expXIsMax_uid49_i_cmp95_conv2d1x118_q & fracXIsNotZero_uid51_i_cmp95_conv2d1x118_q;

    // fracXIsNotZero_uid34_i_cmp95_conv2d1x118(LOGICAL,33)@48
    assign fracXIsNotZero_uid34_i_cmp95_conv2d1x118_q = ~ (fracXIsZero_uid33_i_cmp95_conv2d1x118_q);

    // expXIsMax_uid32_i_cmp95_conv2d1x118(LOGICAL,31)@48
    assign expXIsMax_uid32_i_cmp95_conv2d1x118_q = $unsigned(exp_x_uid29_i_cmp95_conv2d1x118_b == cstAllOWE_uid26_i_cmp95_conv2d1x118_q ? 1'b1 : 1'b0);

    // excN_x_uid37_i_cmp95_conv2d1x118(LOGICAL,36)@48
    assign excN_x_uid37_i_cmp95_conv2d1x118_q = expXIsMax_uid32_i_cmp95_conv2d1x118_q & fracXIsNotZero_uid34_i_cmp95_conv2d1x118_q;

    // oneIsNaN_uid60_i_cmp95_conv2d1x118(LOGICAL,59)@48 + 1
    assign oneIsNaN_uid60_i_cmp95_conv2d1x118_qi = excN_x_uid37_i_cmp95_conv2d1x118_q | excN_y_uid54_i_cmp95_conv2d1x118_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    oneIsNaN_uid60_i_cmp95_conv2d1x118_delay ( .xin(oneIsNaN_uid60_i_cmp95_conv2d1x118_qi), .xout(oneIsNaN_uid60_i_cmp95_conv2d1x118_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // rPostExc_uid88_i_cmp95_conv2d1x118(MUX,87)@49
    assign rPostExc_uid88_i_cmp95_conv2d1x118_s = oneIsNaN_uid60_i_cmp95_conv2d1x118_q;
    always @(rPostExc_uid88_i_cmp95_conv2d1x118_s or r_uid87_i_cmp95_conv2d1x118_q or GND_q)
    begin
        unique case (rPostExc_uid88_i_cmp95_conv2d1x118_s)
            1'b0 : rPostExc_uid88_i_cmp95_conv2d1x118_q = r_uid87_i_cmp95_conv2d1x118_q;
            1'b1 : rPostExc_uid88_i_cmp95_conv2d1x118_q = GND_q;
            default : rPostExc_uid88_i_cmp95_conv2d1x118_q = 1'b0;
        endcase
    end

    // i_narrow_sel_conv2d1x119(MUX,21)@49
    assign i_narrow_sel_conv2d1x119_s = rPostExc_uid88_i_cmp95_conv2d1x118_q;
    always @(i_narrow_sel_conv2d1x119_s or c_float_0_000000e_0022_q or redist16_i_add91_15_conv2d1x117_out_primWireOut_1_q)
    begin
        unique case (i_narrow_sel_conv2d1x119_s)
            1'b0 : i_narrow_sel_conv2d1x119_q = c_float_0_000000e_0022_q;
            1'b1 : i_narrow_sel_conv2d1x119_q = redist16_i_add91_15_conv2d1x117_out_primWireOut_1_q;
            default : i_narrow_sel_conv2d1x119_q = 32'b0;
        endcase
    end

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // sync_out_aunroll_x(GPOUT,23)@49
    assign out_c0_exi1367_0_tpl = GND_q;
    assign out_c0_exi1367_1_tpl = i_narrow_sel_conv2d1x119_q;
    assign out_o_valid = redist15_sync_together24_aunroll_x_in_i_valid_49_q;
    assign out_unnamed_conv2d1x16 = GND_q;

endmodule
