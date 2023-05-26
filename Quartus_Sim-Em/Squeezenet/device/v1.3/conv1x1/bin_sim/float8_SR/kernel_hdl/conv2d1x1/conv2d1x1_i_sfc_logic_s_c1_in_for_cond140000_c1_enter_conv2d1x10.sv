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

// SystemVerilog created from conv2d1x1_i_sfc_logic_s_c1_in_for_cond140000_c1_enter_conv2d1x10
// SystemVerilog created on Wed May 24 12:36:13 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2d1x1_i_sfc_logic_s_c1_in_for_cond140000_c1_enter_conv2d1x10 (
    output wire [0:0] out_c1_exi1_0_tpl,
    output wire [31:0] out_c1_exi1_1_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_conv2d1x16,
    input wire [0:0] in_c1_eni25_0_tpl,
    input wire [31:0] in_c1_eni25_1_tpl,
    input wire [31:0] in_c1_eni25_2_tpl,
    input wire [31:0] in_c1_eni25_3_tpl,
    input wire [31:0] in_c1_eni25_4_tpl,
    input wire [31:0] in_c1_eni25_5_tpl,
    input wire [31:0] in_c1_eni25_6_tpl,
    input wire [31:0] in_c1_eni25_7_tpl,
    input wire [31:0] in_c1_eni25_8_tpl,
    input wire [31:0] in_c1_eni25_9_tpl,
    input wire [31:0] in_c1_eni25_10_tpl,
    input wire [31:0] in_c1_eni25_11_tpl,
    input wire [31:0] in_c1_eni25_12_tpl,
    input wire [31:0] in_c1_eni25_13_tpl,
    input wire [31:0] in_c1_eni25_14_tpl,
    input wire [31:0] in_c1_eni25_15_tpl,
    input wire [31:0] in_c1_eni25_16_tpl,
    input wire [31:0] in_c1_eni25_17_tpl,
    input wire [31:0] in_c1_eni25_18_tpl,
    input wire [31:0] in_c1_eni25_19_tpl,
    input wire [31:0] in_c1_eni25_20_tpl,
    input wire [31:0] in_c1_eni25_21_tpl,
    input wire [31:0] in_c1_eni25_22_tpl,
    input wire [31:0] in_c1_eni25_23_tpl,
    input wire [31:0] in_c1_eni25_24_tpl,
    input wire [31:0] in_c1_eni25_25_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] c_float_0_000000e_0030_q;
    wire [31:0] i_add147_10_conv2d1x112_out_primWireOut;
    wire [31:0] i_add147_11_conv2d1x113_out_primWireOut;
    wire [31:0] i_add147_12_conv2d1x114_out_primWireOut;
    wire [31:0] i_add147_13_conv2d1x115_out_primWireOut;
    wire [31:0] i_add147_14_conv2d1x116_out_primWireOut;
    wire [31:0] i_add147_15_conv2d1x117_out_primWireOut;
    wire [31:0] i_add147_16_conv2d1x118_out_primWireOut;
    wire [31:0] i_add147_17_conv2d1x119_out_primWireOut;
    wire [31:0] i_add147_18_conv2d1x120_out_primWireOut;
    wire [31:0] i_add147_19_conv2d1x121_out_primWireOut;
    wire [31:0] i_add147_1_conv2d1x13_out_primWireOut;
    wire [31:0] i_add147_20_conv2d1x122_out_primWireOut;
    wire [31:0] i_add147_21_conv2d1x123_out_primWireOut;
    wire [31:0] i_add147_22_conv2d1x124_out_primWireOut;
    wire [31:0] i_add147_23_conv2d1x125_out_primWireOut;
    wire [31:0] i_add147_2_conv2d1x14_out_primWireOut;
    wire [31:0] i_add147_3_conv2d1x15_out_primWireOut;
    wire [31:0] i_add147_4_conv2d1x16_out_primWireOut;
    wire [31:0] i_add147_5_conv2d1x17_out_primWireOut;
    wire [31:0] i_add147_6_conv2d1x18_out_primWireOut;
    wire [31:0] i_add147_7_conv2d1x19_out_primWireOut;
    wire [31:0] i_add147_8_conv2d1x110_out_primWireOut;
    wire [31:0] i_add147_9_conv2d1x111_out_primWireOut;
    wire [31:0] i_add147_conv2d1x12_out_primWireOut;
    wire [0:0] i_narrow_sel_conv2d1x127_s;
    reg [31:0] i_narrow_sel_conv2d1x127_q;
    wire [7:0] cstAllOWE_uid34_i_cmp151_conv2d1x126_q;
    wire [22:0] cstZeroWF_uid35_i_cmp151_conv2d1x126_q;
    wire [7:0] cstAllZWE_uid36_i_cmp151_conv2d1x126_q;
    wire [7:0] exp_x_uid37_i_cmp151_conv2d1x126_b;
    wire [22:0] frac_x_uid38_i_cmp151_conv2d1x126_b;
    wire [0:0] expXIsZero_uid39_i_cmp151_conv2d1x126_q;
    wire [0:0] expXIsMax_uid40_i_cmp151_conv2d1x126_q;
    wire [0:0] fracXIsZero_uid41_i_cmp151_conv2d1x126_q;
    wire [0:0] fracXIsNotZero_uid42_i_cmp151_conv2d1x126_q;
    wire [0:0] excZ_x_uid43_i_cmp151_conv2d1x126_q;
    wire [0:0] excN_x_uid45_i_cmp151_conv2d1x126_q;
    wire [7:0] exp_y_uid54_i_cmp151_conv2d1x126_b;
    wire [22:0] frac_y_uid55_i_cmp151_conv2d1x126_b;
    wire [0:0] expXIsZero_uid56_i_cmp151_conv2d1x126_q;
    wire [0:0] expXIsMax_uid57_i_cmp151_conv2d1x126_q;
    wire [0:0] fracXIsZero_uid58_i_cmp151_conv2d1x126_q;
    wire [0:0] fracXIsNotZero_uid59_i_cmp151_conv2d1x126_q;
    wire [0:0] excZ_y_uid60_i_cmp151_conv2d1x126_q;
    wire [0:0] excN_y_uid62_i_cmp151_conv2d1x126_q;
    wire [0:0] oneIsNaN_uid68_i_cmp151_conv2d1x126_qi;
    reg [0:0] oneIsNaN_uid68_i_cmp151_conv2d1x126_q;
    wire [30:0] expFracX_uid73_i_cmp151_conv2d1x126_q;
    wire [30:0] expFracY_uid75_i_cmp151_conv2d1x126_q;
    wire [32:0] efxGTefy_uid77_i_cmp151_conv2d1x126_a;
    wire [32:0] efxGTefy_uid77_i_cmp151_conv2d1x126_b;
    logic [32:0] efxGTefy_uid77_i_cmp151_conv2d1x126_o;
    wire [0:0] efxGTefy_uid77_i_cmp151_conv2d1x126_c;
    wire [32:0] efxLTefy_uid78_i_cmp151_conv2d1x126_a;
    wire [32:0] efxLTefy_uid78_i_cmp151_conv2d1x126_b;
    logic [32:0] efxLTefy_uid78_i_cmp151_conv2d1x126_o;
    wire [0:0] efxLTefy_uid78_i_cmp151_conv2d1x126_c;
    wire [0:0] signX_uid82_i_cmp151_conv2d1x126_b;
    wire [0:0] signY_uid83_i_cmp151_conv2d1x126_b;
    wire [1:0] two_uid84_i_cmp151_conv2d1x126_q;
    wire [1:0] concSXSY_uid85_i_cmp151_conv2d1x126_q;
    wire [0:0] sxLTsy_uid86_i_cmp151_conv2d1x126_q;
    wire [0:0] xorSigns_uid87_i_cmp151_conv2d1x126_q;
    wire [0:0] sxEQsy_uid88_i_cmp151_conv2d1x126_q;
    wire [0:0] expFracCompMux_uid89_i_cmp151_conv2d1x126_s;
    reg [0:0] expFracCompMux_uid89_i_cmp151_conv2d1x126_q;
    wire [0:0] invExcYZ_uid90_i_cmp151_conv2d1x126_q;
    wire [0:0] invExcXZ_uid91_i_cmp151_conv2d1x126_q;
    wire [0:0] oneNonZero_uid92_i_cmp151_conv2d1x126_q;
    wire [0:0] rc2_uid93_i_cmp151_conv2d1x126_q;
    wire [0:0] sxEQsyExpFracCompMux_uid94_i_cmp151_conv2d1x126_q;
    wire [0:0] r_uid95_i_cmp151_conv2d1x126_qi;
    reg [0:0] r_uid95_i_cmp151_conv2d1x126_q;
    wire [0:0] rPostExc_uid96_i_cmp151_conv2d1x126_s;
    reg [0:0] rPostExc_uid96_i_cmp151_conv2d1x126_q;
    reg [31:0] redist0_sync_together32_aunroll_x_in_c1_eni25_3_tpl_3_q;
    reg [31:0] redist0_sync_together32_aunroll_x_in_c1_eni25_3_tpl_3_delay_0;
    reg [31:0] redist11_sync_together32_aunroll_x_in_c1_eni25_14_tpl_36_q;
    reg [31:0] redist11_sync_together32_aunroll_x_in_c1_eni25_14_tpl_36_delay_0;
    reg [0:0] redist23_sync_together32_aunroll_x_in_i_valid_73_q;
    reg [31:0] redist24_i_add147_23_conv2d1x125_out_primWireOut_1_q;
    reg [31:0] redist0_sync_together32_aunroll_x_in_c1_eni25_3_tpl_3_outputreg0_q;
    reg [31:0] redist1_sync_together32_aunroll_x_in_c1_eni25_4_tpl_6_outputreg0_q;
    wire redist1_sync_together32_aunroll_x_in_c1_eni25_4_tpl_6_mem_reset0;
    wire [31:0] redist1_sync_together32_aunroll_x_in_c1_eni25_4_tpl_6_mem_ia;
    wire [1:0] redist1_sync_together32_aunroll_x_in_c1_eni25_4_tpl_6_mem_aa;
    wire [1:0] redist1_sync_together32_aunroll_x_in_c1_eni25_4_tpl_6_mem_ab;
    wire [31:0] redist1_sync_together32_aunroll_x_in_c1_eni25_4_tpl_6_mem_iq;
    wire [31:0] redist1_sync_together32_aunroll_x_in_c1_eni25_4_tpl_6_mem_q;
    wire [1:0] redist1_sync_together32_aunroll_x_in_c1_eni25_4_tpl_6_rdcnt_q;
    (* preserve *) reg [1:0] redist1_sync_together32_aunroll_x_in_c1_eni25_4_tpl_6_rdcnt_i;
    reg [1:0] redist1_sync_together32_aunroll_x_in_c1_eni25_4_tpl_6_wraddr_q;
    wire [2:0] redist1_sync_together32_aunroll_x_in_c1_eni25_4_tpl_6_mem_last_q;
    wire [2:0] redist1_sync_together32_aunroll_x_in_c1_eni25_4_tpl_6_cmp_b;
    wire [0:0] redist1_sync_together32_aunroll_x_in_c1_eni25_4_tpl_6_cmp_q;
    (* dont_merge *) reg [0:0] redist1_sync_together32_aunroll_x_in_c1_eni25_4_tpl_6_cmpReg_q;
    wire [0:0] redist1_sync_together32_aunroll_x_in_c1_eni25_4_tpl_6_notEnable_q;
    wire [0:0] redist1_sync_together32_aunroll_x_in_c1_eni25_4_tpl_6_nor_q;
    (* dont_merge *) reg [0:0] redist1_sync_together32_aunroll_x_in_c1_eni25_4_tpl_6_sticky_ena_q;
    wire [0:0] redist1_sync_together32_aunroll_x_in_c1_eni25_4_tpl_6_enaAnd_q;
    reg [31:0] redist2_sync_together32_aunroll_x_in_c1_eni25_5_tpl_9_outputreg0_q;
    wire redist2_sync_together32_aunroll_x_in_c1_eni25_5_tpl_9_mem_reset0;
    wire [31:0] redist2_sync_together32_aunroll_x_in_c1_eni25_5_tpl_9_mem_ia;
    wire [2:0] redist2_sync_together32_aunroll_x_in_c1_eni25_5_tpl_9_mem_aa;
    wire [2:0] redist2_sync_together32_aunroll_x_in_c1_eni25_5_tpl_9_mem_ab;
    wire [31:0] redist2_sync_together32_aunroll_x_in_c1_eni25_5_tpl_9_mem_iq;
    wire [31:0] redist2_sync_together32_aunroll_x_in_c1_eni25_5_tpl_9_mem_q;
    wire [2:0] redist2_sync_together32_aunroll_x_in_c1_eni25_5_tpl_9_rdcnt_q;
    (* preserve *) reg [2:0] redist2_sync_together32_aunroll_x_in_c1_eni25_5_tpl_9_rdcnt_i;
    (* preserve *) reg redist2_sync_together32_aunroll_x_in_c1_eni25_5_tpl_9_rdcnt_eq;
    reg [2:0] redist2_sync_together32_aunroll_x_in_c1_eni25_5_tpl_9_wraddr_q;
    wire [3:0] redist2_sync_together32_aunroll_x_in_c1_eni25_5_tpl_9_mem_last_q;
    wire [3:0] redist2_sync_together32_aunroll_x_in_c1_eni25_5_tpl_9_cmp_b;
    wire [0:0] redist2_sync_together32_aunroll_x_in_c1_eni25_5_tpl_9_cmp_q;
    (* dont_merge *) reg [0:0] redist2_sync_together32_aunroll_x_in_c1_eni25_5_tpl_9_cmpReg_q;
    wire [0:0] redist2_sync_together32_aunroll_x_in_c1_eni25_5_tpl_9_notEnable_q;
    wire [0:0] redist2_sync_together32_aunroll_x_in_c1_eni25_5_tpl_9_nor_q;
    (* dont_merge *) reg [0:0] redist2_sync_together32_aunroll_x_in_c1_eni25_5_tpl_9_sticky_ena_q;
    wire [0:0] redist2_sync_together32_aunroll_x_in_c1_eni25_5_tpl_9_enaAnd_q;
    reg [31:0] redist3_sync_together32_aunroll_x_in_c1_eni25_6_tpl_12_outputreg0_q;
    wire redist3_sync_together32_aunroll_x_in_c1_eni25_6_tpl_12_mem_reset0;
    wire [31:0] redist3_sync_together32_aunroll_x_in_c1_eni25_6_tpl_12_mem_ia;
    wire [3:0] redist3_sync_together32_aunroll_x_in_c1_eni25_6_tpl_12_mem_aa;
    wire [3:0] redist3_sync_together32_aunroll_x_in_c1_eni25_6_tpl_12_mem_ab;
    wire [31:0] redist3_sync_together32_aunroll_x_in_c1_eni25_6_tpl_12_mem_iq;
    wire [31:0] redist3_sync_together32_aunroll_x_in_c1_eni25_6_tpl_12_mem_q;
    wire [3:0] redist3_sync_together32_aunroll_x_in_c1_eni25_6_tpl_12_rdcnt_q;
    (* preserve *) reg [3:0] redist3_sync_together32_aunroll_x_in_c1_eni25_6_tpl_12_rdcnt_i;
    (* preserve *) reg redist3_sync_together32_aunroll_x_in_c1_eni25_6_tpl_12_rdcnt_eq;
    reg [3:0] redist3_sync_together32_aunroll_x_in_c1_eni25_6_tpl_12_wraddr_q;
    wire [4:0] redist3_sync_together32_aunroll_x_in_c1_eni25_6_tpl_12_mem_last_q;
    wire [4:0] redist3_sync_together32_aunroll_x_in_c1_eni25_6_tpl_12_cmp_b;
    wire [0:0] redist3_sync_together32_aunroll_x_in_c1_eni25_6_tpl_12_cmp_q;
    (* dont_merge *) reg [0:0] redist3_sync_together32_aunroll_x_in_c1_eni25_6_tpl_12_cmpReg_q;
    wire [0:0] redist3_sync_together32_aunroll_x_in_c1_eni25_6_tpl_12_notEnable_q;
    wire [0:0] redist3_sync_together32_aunroll_x_in_c1_eni25_6_tpl_12_nor_q;
    (* dont_merge *) reg [0:0] redist3_sync_together32_aunroll_x_in_c1_eni25_6_tpl_12_sticky_ena_q;
    wire [0:0] redist3_sync_together32_aunroll_x_in_c1_eni25_6_tpl_12_enaAnd_q;
    reg [31:0] redist4_sync_together32_aunroll_x_in_c1_eni25_7_tpl_15_outputreg0_q;
    wire redist4_sync_together32_aunroll_x_in_c1_eni25_7_tpl_15_mem_reset0;
    wire [31:0] redist4_sync_together32_aunroll_x_in_c1_eni25_7_tpl_15_mem_ia;
    wire [3:0] redist4_sync_together32_aunroll_x_in_c1_eni25_7_tpl_15_mem_aa;
    wire [3:0] redist4_sync_together32_aunroll_x_in_c1_eni25_7_tpl_15_mem_ab;
    wire [31:0] redist4_sync_together32_aunroll_x_in_c1_eni25_7_tpl_15_mem_iq;
    wire [31:0] redist4_sync_together32_aunroll_x_in_c1_eni25_7_tpl_15_mem_q;
    wire [3:0] redist4_sync_together32_aunroll_x_in_c1_eni25_7_tpl_15_rdcnt_q;
    (* preserve *) reg [3:0] redist4_sync_together32_aunroll_x_in_c1_eni25_7_tpl_15_rdcnt_i;
    (* preserve *) reg redist4_sync_together32_aunroll_x_in_c1_eni25_7_tpl_15_rdcnt_eq;
    reg [3:0] redist4_sync_together32_aunroll_x_in_c1_eni25_7_tpl_15_wraddr_q;
    wire [4:0] redist4_sync_together32_aunroll_x_in_c1_eni25_7_tpl_15_mem_last_q;
    wire [4:0] redist4_sync_together32_aunroll_x_in_c1_eni25_7_tpl_15_cmp_b;
    wire [0:0] redist4_sync_together32_aunroll_x_in_c1_eni25_7_tpl_15_cmp_q;
    (* dont_merge *) reg [0:0] redist4_sync_together32_aunroll_x_in_c1_eni25_7_tpl_15_cmpReg_q;
    wire [0:0] redist4_sync_together32_aunroll_x_in_c1_eni25_7_tpl_15_notEnable_q;
    wire [0:0] redist4_sync_together32_aunroll_x_in_c1_eni25_7_tpl_15_nor_q;
    (* dont_merge *) reg [0:0] redist4_sync_together32_aunroll_x_in_c1_eni25_7_tpl_15_sticky_ena_q;
    wire [0:0] redist4_sync_together32_aunroll_x_in_c1_eni25_7_tpl_15_enaAnd_q;
    reg [31:0] redist5_sync_together32_aunroll_x_in_c1_eni25_8_tpl_18_outputreg0_q;
    wire redist5_sync_together32_aunroll_x_in_c1_eni25_8_tpl_18_mem_reset0;
    wire [31:0] redist5_sync_together32_aunroll_x_in_c1_eni25_8_tpl_18_mem_ia;
    wire [3:0] redist5_sync_together32_aunroll_x_in_c1_eni25_8_tpl_18_mem_aa;
    wire [3:0] redist5_sync_together32_aunroll_x_in_c1_eni25_8_tpl_18_mem_ab;
    wire [31:0] redist5_sync_together32_aunroll_x_in_c1_eni25_8_tpl_18_mem_iq;
    wire [31:0] redist5_sync_together32_aunroll_x_in_c1_eni25_8_tpl_18_mem_q;
    wire [3:0] redist5_sync_together32_aunroll_x_in_c1_eni25_8_tpl_18_rdcnt_q;
    (* preserve *) reg [3:0] redist5_sync_together32_aunroll_x_in_c1_eni25_8_tpl_18_rdcnt_i;
    reg [3:0] redist5_sync_together32_aunroll_x_in_c1_eni25_8_tpl_18_wraddr_q;
    wire [4:0] redist5_sync_together32_aunroll_x_in_c1_eni25_8_tpl_18_mem_last_q;
    wire [4:0] redist5_sync_together32_aunroll_x_in_c1_eni25_8_tpl_18_cmp_b;
    wire [0:0] redist5_sync_together32_aunroll_x_in_c1_eni25_8_tpl_18_cmp_q;
    (* dont_merge *) reg [0:0] redist5_sync_together32_aunroll_x_in_c1_eni25_8_tpl_18_cmpReg_q;
    wire [0:0] redist5_sync_together32_aunroll_x_in_c1_eni25_8_tpl_18_notEnable_q;
    wire [0:0] redist5_sync_together32_aunroll_x_in_c1_eni25_8_tpl_18_nor_q;
    (* dont_merge *) reg [0:0] redist5_sync_together32_aunroll_x_in_c1_eni25_8_tpl_18_sticky_ena_q;
    wire [0:0] redist5_sync_together32_aunroll_x_in_c1_eni25_8_tpl_18_enaAnd_q;
    reg [31:0] redist6_sync_together32_aunroll_x_in_c1_eni25_9_tpl_21_outputreg0_q;
    wire redist6_sync_together32_aunroll_x_in_c1_eni25_9_tpl_21_mem_reset0;
    wire [31:0] redist6_sync_together32_aunroll_x_in_c1_eni25_9_tpl_21_mem_ia;
    wire [4:0] redist6_sync_together32_aunroll_x_in_c1_eni25_9_tpl_21_mem_aa;
    wire [4:0] redist6_sync_together32_aunroll_x_in_c1_eni25_9_tpl_21_mem_ab;
    wire [31:0] redist6_sync_together32_aunroll_x_in_c1_eni25_9_tpl_21_mem_iq;
    wire [31:0] redist6_sync_together32_aunroll_x_in_c1_eni25_9_tpl_21_mem_q;
    wire [4:0] redist6_sync_together32_aunroll_x_in_c1_eni25_9_tpl_21_rdcnt_q;
    (* preserve *) reg [4:0] redist6_sync_together32_aunroll_x_in_c1_eni25_9_tpl_21_rdcnt_i;
    (* preserve *) reg redist6_sync_together32_aunroll_x_in_c1_eni25_9_tpl_21_rdcnt_eq;
    reg [4:0] redist6_sync_together32_aunroll_x_in_c1_eni25_9_tpl_21_wraddr_q;
    wire [5:0] redist6_sync_together32_aunroll_x_in_c1_eni25_9_tpl_21_mem_last_q;
    wire [5:0] redist6_sync_together32_aunroll_x_in_c1_eni25_9_tpl_21_cmp_b;
    wire [0:0] redist6_sync_together32_aunroll_x_in_c1_eni25_9_tpl_21_cmp_q;
    (* dont_merge *) reg [0:0] redist6_sync_together32_aunroll_x_in_c1_eni25_9_tpl_21_cmpReg_q;
    wire [0:0] redist6_sync_together32_aunroll_x_in_c1_eni25_9_tpl_21_notEnable_q;
    wire [0:0] redist6_sync_together32_aunroll_x_in_c1_eni25_9_tpl_21_nor_q;
    (* dont_merge *) reg [0:0] redist6_sync_together32_aunroll_x_in_c1_eni25_9_tpl_21_sticky_ena_q;
    wire [0:0] redist6_sync_together32_aunroll_x_in_c1_eni25_9_tpl_21_enaAnd_q;
    reg [31:0] redist7_sync_together32_aunroll_x_in_c1_eni25_10_tpl_24_outputreg0_q;
    wire redist7_sync_together32_aunroll_x_in_c1_eni25_10_tpl_24_mem_reset0;
    wire [31:0] redist7_sync_together32_aunroll_x_in_c1_eni25_10_tpl_24_mem_ia;
    wire [4:0] redist7_sync_together32_aunroll_x_in_c1_eni25_10_tpl_24_mem_aa;
    wire [4:0] redist7_sync_together32_aunroll_x_in_c1_eni25_10_tpl_24_mem_ab;
    wire [31:0] redist7_sync_together32_aunroll_x_in_c1_eni25_10_tpl_24_mem_iq;
    wire [31:0] redist7_sync_together32_aunroll_x_in_c1_eni25_10_tpl_24_mem_q;
    wire [4:0] redist7_sync_together32_aunroll_x_in_c1_eni25_10_tpl_24_rdcnt_q;
    (* preserve *) reg [4:0] redist7_sync_together32_aunroll_x_in_c1_eni25_10_tpl_24_rdcnt_i;
    (* preserve *) reg redist7_sync_together32_aunroll_x_in_c1_eni25_10_tpl_24_rdcnt_eq;
    reg [4:0] redist7_sync_together32_aunroll_x_in_c1_eni25_10_tpl_24_wraddr_q;
    wire [5:0] redist7_sync_together32_aunroll_x_in_c1_eni25_10_tpl_24_mem_last_q;
    wire [5:0] redist7_sync_together32_aunroll_x_in_c1_eni25_10_tpl_24_cmp_b;
    wire [0:0] redist7_sync_together32_aunroll_x_in_c1_eni25_10_tpl_24_cmp_q;
    (* dont_merge *) reg [0:0] redist7_sync_together32_aunroll_x_in_c1_eni25_10_tpl_24_cmpReg_q;
    wire [0:0] redist7_sync_together32_aunroll_x_in_c1_eni25_10_tpl_24_notEnable_q;
    wire [0:0] redist7_sync_together32_aunroll_x_in_c1_eni25_10_tpl_24_nor_q;
    (* dont_merge *) reg [0:0] redist7_sync_together32_aunroll_x_in_c1_eni25_10_tpl_24_sticky_ena_q;
    wire [0:0] redist7_sync_together32_aunroll_x_in_c1_eni25_10_tpl_24_enaAnd_q;
    reg [31:0] redist8_sync_together32_aunroll_x_in_c1_eni25_11_tpl_27_outputreg0_q;
    wire redist8_sync_together32_aunroll_x_in_c1_eni25_11_tpl_27_mem_reset0;
    wire [31:0] redist8_sync_together32_aunroll_x_in_c1_eni25_11_tpl_27_mem_ia;
    wire [4:0] redist8_sync_together32_aunroll_x_in_c1_eni25_11_tpl_27_mem_aa;
    wire [4:0] redist8_sync_together32_aunroll_x_in_c1_eni25_11_tpl_27_mem_ab;
    wire [31:0] redist8_sync_together32_aunroll_x_in_c1_eni25_11_tpl_27_mem_iq;
    wire [31:0] redist8_sync_together32_aunroll_x_in_c1_eni25_11_tpl_27_mem_q;
    wire [4:0] redist8_sync_together32_aunroll_x_in_c1_eni25_11_tpl_27_rdcnt_q;
    (* preserve *) reg [4:0] redist8_sync_together32_aunroll_x_in_c1_eni25_11_tpl_27_rdcnt_i;
    (* preserve *) reg redist8_sync_together32_aunroll_x_in_c1_eni25_11_tpl_27_rdcnt_eq;
    reg [4:0] redist8_sync_together32_aunroll_x_in_c1_eni25_11_tpl_27_wraddr_q;
    wire [5:0] redist8_sync_together32_aunroll_x_in_c1_eni25_11_tpl_27_mem_last_q;
    wire [5:0] redist8_sync_together32_aunroll_x_in_c1_eni25_11_tpl_27_cmp_b;
    wire [0:0] redist8_sync_together32_aunroll_x_in_c1_eni25_11_tpl_27_cmp_q;
    (* dont_merge *) reg [0:0] redist8_sync_together32_aunroll_x_in_c1_eni25_11_tpl_27_cmpReg_q;
    wire [0:0] redist8_sync_together32_aunroll_x_in_c1_eni25_11_tpl_27_notEnable_q;
    wire [0:0] redist8_sync_together32_aunroll_x_in_c1_eni25_11_tpl_27_nor_q;
    (* dont_merge *) reg [0:0] redist8_sync_together32_aunroll_x_in_c1_eni25_11_tpl_27_sticky_ena_q;
    wire [0:0] redist8_sync_together32_aunroll_x_in_c1_eni25_11_tpl_27_enaAnd_q;
    reg [31:0] redist9_sync_together32_aunroll_x_in_c1_eni25_12_tpl_30_outputreg0_q;
    wire redist9_sync_together32_aunroll_x_in_c1_eni25_12_tpl_30_mem_reset0;
    wire [31:0] redist9_sync_together32_aunroll_x_in_c1_eni25_12_tpl_30_mem_ia;
    wire [4:0] redist9_sync_together32_aunroll_x_in_c1_eni25_12_tpl_30_mem_aa;
    wire [4:0] redist9_sync_together32_aunroll_x_in_c1_eni25_12_tpl_30_mem_ab;
    wire [31:0] redist9_sync_together32_aunroll_x_in_c1_eni25_12_tpl_30_mem_iq;
    wire [31:0] redist9_sync_together32_aunroll_x_in_c1_eni25_12_tpl_30_mem_q;
    wire [4:0] redist9_sync_together32_aunroll_x_in_c1_eni25_12_tpl_30_rdcnt_q;
    (* preserve *) reg [4:0] redist9_sync_together32_aunroll_x_in_c1_eni25_12_tpl_30_rdcnt_i;
    (* preserve *) reg redist9_sync_together32_aunroll_x_in_c1_eni25_12_tpl_30_rdcnt_eq;
    reg [4:0] redist9_sync_together32_aunroll_x_in_c1_eni25_12_tpl_30_wraddr_q;
    wire [5:0] redist9_sync_together32_aunroll_x_in_c1_eni25_12_tpl_30_mem_last_q;
    wire [5:0] redist9_sync_together32_aunroll_x_in_c1_eni25_12_tpl_30_cmp_b;
    wire [0:0] redist9_sync_together32_aunroll_x_in_c1_eni25_12_tpl_30_cmp_q;
    (* dont_merge *) reg [0:0] redist9_sync_together32_aunroll_x_in_c1_eni25_12_tpl_30_cmpReg_q;
    wire [0:0] redist9_sync_together32_aunroll_x_in_c1_eni25_12_tpl_30_notEnable_q;
    wire [0:0] redist9_sync_together32_aunroll_x_in_c1_eni25_12_tpl_30_nor_q;
    (* dont_merge *) reg [0:0] redist9_sync_together32_aunroll_x_in_c1_eni25_12_tpl_30_sticky_ena_q;
    wire [0:0] redist9_sync_together32_aunroll_x_in_c1_eni25_12_tpl_30_enaAnd_q;
    reg [31:0] redist10_sync_together32_aunroll_x_in_c1_eni25_13_tpl_33_outputreg0_q;
    wire redist10_sync_together32_aunroll_x_in_c1_eni25_13_tpl_33_mem_reset0;
    wire [31:0] redist10_sync_together32_aunroll_x_in_c1_eni25_13_tpl_33_mem_ia;
    wire [4:0] redist10_sync_together32_aunroll_x_in_c1_eni25_13_tpl_33_mem_aa;
    wire [4:0] redist10_sync_together32_aunroll_x_in_c1_eni25_13_tpl_33_mem_ab;
    wire [31:0] redist10_sync_together32_aunroll_x_in_c1_eni25_13_tpl_33_mem_iq;
    wire [31:0] redist10_sync_together32_aunroll_x_in_c1_eni25_13_tpl_33_mem_q;
    wire [4:0] redist10_sync_together32_aunroll_x_in_c1_eni25_13_tpl_33_rdcnt_q;
    (* preserve *) reg [4:0] redist10_sync_together32_aunroll_x_in_c1_eni25_13_tpl_33_rdcnt_i;
    (* preserve *) reg redist10_sync_together32_aunroll_x_in_c1_eni25_13_tpl_33_rdcnt_eq;
    reg [4:0] redist10_sync_together32_aunroll_x_in_c1_eni25_13_tpl_33_wraddr_q;
    wire [5:0] redist10_sync_together32_aunroll_x_in_c1_eni25_13_tpl_33_mem_last_q;
    wire [5:0] redist10_sync_together32_aunroll_x_in_c1_eni25_13_tpl_33_cmp_b;
    wire [0:0] redist10_sync_together32_aunroll_x_in_c1_eni25_13_tpl_33_cmp_q;
    (* dont_merge *) reg [0:0] redist10_sync_together32_aunroll_x_in_c1_eni25_13_tpl_33_cmpReg_q;
    wire [0:0] redist10_sync_together32_aunroll_x_in_c1_eni25_13_tpl_33_notEnable_q;
    wire [0:0] redist10_sync_together32_aunroll_x_in_c1_eni25_13_tpl_33_nor_q;
    (* dont_merge *) reg [0:0] redist10_sync_together32_aunroll_x_in_c1_eni25_13_tpl_33_sticky_ena_q;
    wire [0:0] redist10_sync_together32_aunroll_x_in_c1_eni25_13_tpl_33_enaAnd_q;
    reg [31:0] redist11_sync_together32_aunroll_x_in_c1_eni25_14_tpl_36_outputreg0_q;
    reg [31:0] redist12_sync_together32_aunroll_x_in_c1_eni25_15_tpl_39_outputreg0_q;
    wire redist12_sync_together32_aunroll_x_in_c1_eni25_15_tpl_39_mem_reset0;
    wire [31:0] redist12_sync_together32_aunroll_x_in_c1_eni25_15_tpl_39_mem_ia;
    wire [1:0] redist12_sync_together32_aunroll_x_in_c1_eni25_15_tpl_39_mem_aa;
    wire [1:0] redist12_sync_together32_aunroll_x_in_c1_eni25_15_tpl_39_mem_ab;
    wire [31:0] redist12_sync_together32_aunroll_x_in_c1_eni25_15_tpl_39_mem_iq;
    wire [31:0] redist12_sync_together32_aunroll_x_in_c1_eni25_15_tpl_39_mem_q;
    wire [1:0] redist12_sync_together32_aunroll_x_in_c1_eni25_15_tpl_39_rdcnt_q;
    (* preserve *) reg [1:0] redist12_sync_together32_aunroll_x_in_c1_eni25_15_tpl_39_rdcnt_i;
    reg [1:0] redist12_sync_together32_aunroll_x_in_c1_eni25_15_tpl_39_wraddr_q;
    wire [2:0] redist12_sync_together32_aunroll_x_in_c1_eni25_15_tpl_39_mem_last_q;
    wire [2:0] redist12_sync_together32_aunroll_x_in_c1_eni25_15_tpl_39_cmp_b;
    wire [0:0] redist12_sync_together32_aunroll_x_in_c1_eni25_15_tpl_39_cmp_q;
    (* dont_merge *) reg [0:0] redist12_sync_together32_aunroll_x_in_c1_eni25_15_tpl_39_cmpReg_q;
    wire [0:0] redist12_sync_together32_aunroll_x_in_c1_eni25_15_tpl_39_notEnable_q;
    wire [0:0] redist12_sync_together32_aunroll_x_in_c1_eni25_15_tpl_39_nor_q;
    (* dont_merge *) reg [0:0] redist12_sync_together32_aunroll_x_in_c1_eni25_15_tpl_39_sticky_ena_q;
    wire [0:0] redist12_sync_together32_aunroll_x_in_c1_eni25_15_tpl_39_enaAnd_q;
    reg [31:0] redist13_sync_together32_aunroll_x_in_c1_eni25_16_tpl_42_outputreg0_q;
    wire redist13_sync_together32_aunroll_x_in_c1_eni25_16_tpl_42_mem_reset0;
    wire [31:0] redist13_sync_together32_aunroll_x_in_c1_eni25_16_tpl_42_mem_ia;
    wire [5:0] redist13_sync_together32_aunroll_x_in_c1_eni25_16_tpl_42_mem_aa;
    wire [5:0] redist13_sync_together32_aunroll_x_in_c1_eni25_16_tpl_42_mem_ab;
    wire [31:0] redist13_sync_together32_aunroll_x_in_c1_eni25_16_tpl_42_mem_iq;
    wire [31:0] redist13_sync_together32_aunroll_x_in_c1_eni25_16_tpl_42_mem_q;
    wire [5:0] redist13_sync_together32_aunroll_x_in_c1_eni25_16_tpl_42_rdcnt_q;
    (* preserve *) reg [5:0] redist13_sync_together32_aunroll_x_in_c1_eni25_16_tpl_42_rdcnt_i;
    (* preserve *) reg redist13_sync_together32_aunroll_x_in_c1_eni25_16_tpl_42_rdcnt_eq;
    reg [5:0] redist13_sync_together32_aunroll_x_in_c1_eni25_16_tpl_42_wraddr_q;
    wire [6:0] redist13_sync_together32_aunroll_x_in_c1_eni25_16_tpl_42_mem_last_q;
    wire [6:0] redist13_sync_together32_aunroll_x_in_c1_eni25_16_tpl_42_cmp_b;
    wire [0:0] redist13_sync_together32_aunroll_x_in_c1_eni25_16_tpl_42_cmp_q;
    reg [0:0] redist13_sync_together32_aunroll_x_in_c1_eni25_16_tpl_42_cmpReg_q;
    wire [0:0] redist13_sync_together32_aunroll_x_in_c1_eni25_16_tpl_42_notEnable_q;
    wire [0:0] redist13_sync_together32_aunroll_x_in_c1_eni25_16_tpl_42_nor_q;
    reg [0:0] redist13_sync_together32_aunroll_x_in_c1_eni25_16_tpl_42_sticky_ena_q;
    wire [0:0] redist13_sync_together32_aunroll_x_in_c1_eni25_16_tpl_42_enaAnd_q;
    reg [31:0] redist14_sync_together32_aunroll_x_in_c1_eni25_17_tpl_45_outputreg0_q;
    wire redist14_sync_together32_aunroll_x_in_c1_eni25_17_tpl_45_mem_reset0;
    wire [31:0] redist14_sync_together32_aunroll_x_in_c1_eni25_17_tpl_45_mem_ia;
    wire [5:0] redist14_sync_together32_aunroll_x_in_c1_eni25_17_tpl_45_mem_aa;
    wire [5:0] redist14_sync_together32_aunroll_x_in_c1_eni25_17_tpl_45_mem_ab;
    wire [31:0] redist14_sync_together32_aunroll_x_in_c1_eni25_17_tpl_45_mem_iq;
    wire [31:0] redist14_sync_together32_aunroll_x_in_c1_eni25_17_tpl_45_mem_q;
    wire [5:0] redist14_sync_together32_aunroll_x_in_c1_eni25_17_tpl_45_rdcnt_q;
    (* preserve *) reg [5:0] redist14_sync_together32_aunroll_x_in_c1_eni25_17_tpl_45_rdcnt_i;
    (* preserve *) reg redist14_sync_together32_aunroll_x_in_c1_eni25_17_tpl_45_rdcnt_eq;
    reg [5:0] redist14_sync_together32_aunroll_x_in_c1_eni25_17_tpl_45_wraddr_q;
    wire [6:0] redist14_sync_together32_aunroll_x_in_c1_eni25_17_tpl_45_mem_last_q;
    wire [6:0] redist14_sync_together32_aunroll_x_in_c1_eni25_17_tpl_45_cmp_b;
    wire [0:0] redist14_sync_together32_aunroll_x_in_c1_eni25_17_tpl_45_cmp_q;
    reg [0:0] redist14_sync_together32_aunroll_x_in_c1_eni25_17_tpl_45_cmpReg_q;
    wire [0:0] redist14_sync_together32_aunroll_x_in_c1_eni25_17_tpl_45_notEnable_q;
    wire [0:0] redist14_sync_together32_aunroll_x_in_c1_eni25_17_tpl_45_nor_q;
    reg [0:0] redist14_sync_together32_aunroll_x_in_c1_eni25_17_tpl_45_sticky_ena_q;
    wire [0:0] redist14_sync_together32_aunroll_x_in_c1_eni25_17_tpl_45_enaAnd_q;
    reg [31:0] redist15_sync_together32_aunroll_x_in_c1_eni25_18_tpl_48_outputreg0_q;
    wire redist15_sync_together32_aunroll_x_in_c1_eni25_18_tpl_48_mem_reset0;
    wire [31:0] redist15_sync_together32_aunroll_x_in_c1_eni25_18_tpl_48_mem_ia;
    wire [5:0] redist15_sync_together32_aunroll_x_in_c1_eni25_18_tpl_48_mem_aa;
    wire [5:0] redist15_sync_together32_aunroll_x_in_c1_eni25_18_tpl_48_mem_ab;
    wire [31:0] redist15_sync_together32_aunroll_x_in_c1_eni25_18_tpl_48_mem_iq;
    wire [31:0] redist15_sync_together32_aunroll_x_in_c1_eni25_18_tpl_48_mem_q;
    wire [5:0] redist15_sync_together32_aunroll_x_in_c1_eni25_18_tpl_48_rdcnt_q;
    (* preserve *) reg [5:0] redist15_sync_together32_aunroll_x_in_c1_eni25_18_tpl_48_rdcnt_i;
    (* preserve *) reg redist15_sync_together32_aunroll_x_in_c1_eni25_18_tpl_48_rdcnt_eq;
    reg [5:0] redist15_sync_together32_aunroll_x_in_c1_eni25_18_tpl_48_wraddr_q;
    wire [6:0] redist15_sync_together32_aunroll_x_in_c1_eni25_18_tpl_48_mem_last_q;
    wire [6:0] redist15_sync_together32_aunroll_x_in_c1_eni25_18_tpl_48_cmp_b;
    wire [0:0] redist15_sync_together32_aunroll_x_in_c1_eni25_18_tpl_48_cmp_q;
    reg [0:0] redist15_sync_together32_aunroll_x_in_c1_eni25_18_tpl_48_cmpReg_q;
    wire [0:0] redist15_sync_together32_aunroll_x_in_c1_eni25_18_tpl_48_notEnable_q;
    wire [0:0] redist15_sync_together32_aunroll_x_in_c1_eni25_18_tpl_48_nor_q;
    reg [0:0] redist15_sync_together32_aunroll_x_in_c1_eni25_18_tpl_48_sticky_ena_q;
    wire [0:0] redist15_sync_together32_aunroll_x_in_c1_eni25_18_tpl_48_enaAnd_q;
    reg [31:0] redist16_sync_together32_aunroll_x_in_c1_eni25_19_tpl_51_outputreg0_q;
    wire redist16_sync_together32_aunroll_x_in_c1_eni25_19_tpl_51_mem_reset0;
    wire [31:0] redist16_sync_together32_aunroll_x_in_c1_eni25_19_tpl_51_mem_ia;
    wire [5:0] redist16_sync_together32_aunroll_x_in_c1_eni25_19_tpl_51_mem_aa;
    wire [5:0] redist16_sync_together32_aunroll_x_in_c1_eni25_19_tpl_51_mem_ab;
    wire [31:0] redist16_sync_together32_aunroll_x_in_c1_eni25_19_tpl_51_mem_iq;
    wire [31:0] redist16_sync_together32_aunroll_x_in_c1_eni25_19_tpl_51_mem_q;
    wire [5:0] redist16_sync_together32_aunroll_x_in_c1_eni25_19_tpl_51_rdcnt_q;
    (* preserve *) reg [5:0] redist16_sync_together32_aunroll_x_in_c1_eni25_19_tpl_51_rdcnt_i;
    (* preserve *) reg redist16_sync_together32_aunroll_x_in_c1_eni25_19_tpl_51_rdcnt_eq;
    reg [5:0] redist16_sync_together32_aunroll_x_in_c1_eni25_19_tpl_51_wraddr_q;
    wire [6:0] redist16_sync_together32_aunroll_x_in_c1_eni25_19_tpl_51_mem_last_q;
    wire [6:0] redist16_sync_together32_aunroll_x_in_c1_eni25_19_tpl_51_cmp_b;
    wire [0:0] redist16_sync_together32_aunroll_x_in_c1_eni25_19_tpl_51_cmp_q;
    reg [0:0] redist16_sync_together32_aunroll_x_in_c1_eni25_19_tpl_51_cmpReg_q;
    wire [0:0] redist16_sync_together32_aunroll_x_in_c1_eni25_19_tpl_51_notEnable_q;
    wire [0:0] redist16_sync_together32_aunroll_x_in_c1_eni25_19_tpl_51_nor_q;
    reg [0:0] redist16_sync_together32_aunroll_x_in_c1_eni25_19_tpl_51_sticky_ena_q;
    wire [0:0] redist16_sync_together32_aunroll_x_in_c1_eni25_19_tpl_51_enaAnd_q;
    reg [31:0] redist17_sync_together32_aunroll_x_in_c1_eni25_20_tpl_54_outputreg0_q;
    wire redist17_sync_together32_aunroll_x_in_c1_eni25_20_tpl_54_mem_reset0;
    wire [31:0] redist17_sync_together32_aunroll_x_in_c1_eni25_20_tpl_54_mem_ia;
    wire [5:0] redist17_sync_together32_aunroll_x_in_c1_eni25_20_tpl_54_mem_aa;
    wire [5:0] redist17_sync_together32_aunroll_x_in_c1_eni25_20_tpl_54_mem_ab;
    wire [31:0] redist17_sync_together32_aunroll_x_in_c1_eni25_20_tpl_54_mem_iq;
    wire [31:0] redist17_sync_together32_aunroll_x_in_c1_eni25_20_tpl_54_mem_q;
    wire [5:0] redist17_sync_together32_aunroll_x_in_c1_eni25_20_tpl_54_rdcnt_q;
    (* preserve *) reg [5:0] redist17_sync_together32_aunroll_x_in_c1_eni25_20_tpl_54_rdcnt_i;
    (* preserve *) reg redist17_sync_together32_aunroll_x_in_c1_eni25_20_tpl_54_rdcnt_eq;
    reg [5:0] redist17_sync_together32_aunroll_x_in_c1_eni25_20_tpl_54_wraddr_q;
    wire [6:0] redist17_sync_together32_aunroll_x_in_c1_eni25_20_tpl_54_mem_last_q;
    wire [6:0] redist17_sync_together32_aunroll_x_in_c1_eni25_20_tpl_54_cmp_b;
    wire [0:0] redist17_sync_together32_aunroll_x_in_c1_eni25_20_tpl_54_cmp_q;
    reg [0:0] redist17_sync_together32_aunroll_x_in_c1_eni25_20_tpl_54_cmpReg_q;
    wire [0:0] redist17_sync_together32_aunroll_x_in_c1_eni25_20_tpl_54_notEnable_q;
    wire [0:0] redist17_sync_together32_aunroll_x_in_c1_eni25_20_tpl_54_nor_q;
    reg [0:0] redist17_sync_together32_aunroll_x_in_c1_eni25_20_tpl_54_sticky_ena_q;
    wire [0:0] redist17_sync_together32_aunroll_x_in_c1_eni25_20_tpl_54_enaAnd_q;
    reg [31:0] redist18_sync_together32_aunroll_x_in_c1_eni25_21_tpl_57_outputreg0_q;
    wire redist18_sync_together32_aunroll_x_in_c1_eni25_21_tpl_57_mem_reset0;
    wire [31:0] redist18_sync_together32_aunroll_x_in_c1_eni25_21_tpl_57_mem_ia;
    wire [5:0] redist18_sync_together32_aunroll_x_in_c1_eni25_21_tpl_57_mem_aa;
    wire [5:0] redist18_sync_together32_aunroll_x_in_c1_eni25_21_tpl_57_mem_ab;
    wire [31:0] redist18_sync_together32_aunroll_x_in_c1_eni25_21_tpl_57_mem_iq;
    wire [31:0] redist18_sync_together32_aunroll_x_in_c1_eni25_21_tpl_57_mem_q;
    wire [5:0] redist18_sync_together32_aunroll_x_in_c1_eni25_21_tpl_57_rdcnt_q;
    (* preserve *) reg [5:0] redist18_sync_together32_aunroll_x_in_c1_eni25_21_tpl_57_rdcnt_i;
    (* preserve *) reg redist18_sync_together32_aunroll_x_in_c1_eni25_21_tpl_57_rdcnt_eq;
    reg [5:0] redist18_sync_together32_aunroll_x_in_c1_eni25_21_tpl_57_wraddr_q;
    wire [6:0] redist18_sync_together32_aunroll_x_in_c1_eni25_21_tpl_57_mem_last_q;
    wire [6:0] redist18_sync_together32_aunroll_x_in_c1_eni25_21_tpl_57_cmp_b;
    wire [0:0] redist18_sync_together32_aunroll_x_in_c1_eni25_21_tpl_57_cmp_q;
    reg [0:0] redist18_sync_together32_aunroll_x_in_c1_eni25_21_tpl_57_cmpReg_q;
    wire [0:0] redist18_sync_together32_aunroll_x_in_c1_eni25_21_tpl_57_notEnable_q;
    wire [0:0] redist18_sync_together32_aunroll_x_in_c1_eni25_21_tpl_57_nor_q;
    reg [0:0] redist18_sync_together32_aunroll_x_in_c1_eni25_21_tpl_57_sticky_ena_q;
    wire [0:0] redist18_sync_together32_aunroll_x_in_c1_eni25_21_tpl_57_enaAnd_q;
    reg [31:0] redist19_sync_together32_aunroll_x_in_c1_eni25_22_tpl_60_outputreg0_q;
    wire redist19_sync_together32_aunroll_x_in_c1_eni25_22_tpl_60_mem_reset0;
    wire [31:0] redist19_sync_together32_aunroll_x_in_c1_eni25_22_tpl_60_mem_ia;
    wire [5:0] redist19_sync_together32_aunroll_x_in_c1_eni25_22_tpl_60_mem_aa;
    wire [5:0] redist19_sync_together32_aunroll_x_in_c1_eni25_22_tpl_60_mem_ab;
    wire [31:0] redist19_sync_together32_aunroll_x_in_c1_eni25_22_tpl_60_mem_iq;
    wire [31:0] redist19_sync_together32_aunroll_x_in_c1_eni25_22_tpl_60_mem_q;
    wire [5:0] redist19_sync_together32_aunroll_x_in_c1_eni25_22_tpl_60_rdcnt_q;
    (* preserve *) reg [5:0] redist19_sync_together32_aunroll_x_in_c1_eni25_22_tpl_60_rdcnt_i;
    (* preserve *) reg redist19_sync_together32_aunroll_x_in_c1_eni25_22_tpl_60_rdcnt_eq;
    reg [5:0] redist19_sync_together32_aunroll_x_in_c1_eni25_22_tpl_60_wraddr_q;
    wire [6:0] redist19_sync_together32_aunroll_x_in_c1_eni25_22_tpl_60_mem_last_q;
    wire [6:0] redist19_sync_together32_aunroll_x_in_c1_eni25_22_tpl_60_cmp_b;
    wire [0:0] redist19_sync_together32_aunroll_x_in_c1_eni25_22_tpl_60_cmp_q;
    reg [0:0] redist19_sync_together32_aunroll_x_in_c1_eni25_22_tpl_60_cmpReg_q;
    wire [0:0] redist19_sync_together32_aunroll_x_in_c1_eni25_22_tpl_60_notEnable_q;
    wire [0:0] redist19_sync_together32_aunroll_x_in_c1_eni25_22_tpl_60_nor_q;
    reg [0:0] redist19_sync_together32_aunroll_x_in_c1_eni25_22_tpl_60_sticky_ena_q;
    wire [0:0] redist19_sync_together32_aunroll_x_in_c1_eni25_22_tpl_60_enaAnd_q;
    reg [31:0] redist20_sync_together32_aunroll_x_in_c1_eni25_23_tpl_63_outputreg0_q;
    wire redist20_sync_together32_aunroll_x_in_c1_eni25_23_tpl_63_mem_reset0;
    wire [31:0] redist20_sync_together32_aunroll_x_in_c1_eni25_23_tpl_63_mem_ia;
    wire [5:0] redist20_sync_together32_aunroll_x_in_c1_eni25_23_tpl_63_mem_aa;
    wire [5:0] redist20_sync_together32_aunroll_x_in_c1_eni25_23_tpl_63_mem_ab;
    wire [31:0] redist20_sync_together32_aunroll_x_in_c1_eni25_23_tpl_63_mem_iq;
    wire [31:0] redist20_sync_together32_aunroll_x_in_c1_eni25_23_tpl_63_mem_q;
    wire [5:0] redist20_sync_together32_aunroll_x_in_c1_eni25_23_tpl_63_rdcnt_q;
    (* preserve *) reg [5:0] redist20_sync_together32_aunroll_x_in_c1_eni25_23_tpl_63_rdcnt_i;
    (* preserve *) reg redist20_sync_together32_aunroll_x_in_c1_eni25_23_tpl_63_rdcnt_eq;
    reg [5:0] redist20_sync_together32_aunroll_x_in_c1_eni25_23_tpl_63_wraddr_q;
    wire [6:0] redist20_sync_together32_aunroll_x_in_c1_eni25_23_tpl_63_mem_last_q;
    wire [6:0] redist20_sync_together32_aunroll_x_in_c1_eni25_23_tpl_63_cmp_b;
    wire [0:0] redist20_sync_together32_aunroll_x_in_c1_eni25_23_tpl_63_cmp_q;
    reg [0:0] redist20_sync_together32_aunroll_x_in_c1_eni25_23_tpl_63_cmpReg_q;
    wire [0:0] redist20_sync_together32_aunroll_x_in_c1_eni25_23_tpl_63_notEnable_q;
    wire [0:0] redist20_sync_together32_aunroll_x_in_c1_eni25_23_tpl_63_nor_q;
    reg [0:0] redist20_sync_together32_aunroll_x_in_c1_eni25_23_tpl_63_sticky_ena_q;
    wire [0:0] redist20_sync_together32_aunroll_x_in_c1_eni25_23_tpl_63_enaAnd_q;
    reg [31:0] redist21_sync_together32_aunroll_x_in_c1_eni25_24_tpl_66_outputreg0_q;
    wire redist21_sync_together32_aunroll_x_in_c1_eni25_24_tpl_66_mem_reset0;
    wire [31:0] redist21_sync_together32_aunroll_x_in_c1_eni25_24_tpl_66_mem_ia;
    wire [5:0] redist21_sync_together32_aunroll_x_in_c1_eni25_24_tpl_66_mem_aa;
    wire [5:0] redist21_sync_together32_aunroll_x_in_c1_eni25_24_tpl_66_mem_ab;
    wire [31:0] redist21_sync_together32_aunroll_x_in_c1_eni25_24_tpl_66_mem_iq;
    wire [31:0] redist21_sync_together32_aunroll_x_in_c1_eni25_24_tpl_66_mem_q;
    wire [5:0] redist21_sync_together32_aunroll_x_in_c1_eni25_24_tpl_66_rdcnt_q;
    (* preserve *) reg [5:0] redist21_sync_together32_aunroll_x_in_c1_eni25_24_tpl_66_rdcnt_i;
    reg [5:0] redist21_sync_together32_aunroll_x_in_c1_eni25_24_tpl_66_wraddr_q;
    wire [6:0] redist21_sync_together32_aunroll_x_in_c1_eni25_24_tpl_66_mem_last_q;
    wire [6:0] redist21_sync_together32_aunroll_x_in_c1_eni25_24_tpl_66_cmp_b;
    wire [0:0] redist21_sync_together32_aunroll_x_in_c1_eni25_24_tpl_66_cmp_q;
    reg [0:0] redist21_sync_together32_aunroll_x_in_c1_eni25_24_tpl_66_cmpReg_q;
    wire [0:0] redist21_sync_together32_aunroll_x_in_c1_eni25_24_tpl_66_notEnable_q;
    wire [0:0] redist21_sync_together32_aunroll_x_in_c1_eni25_24_tpl_66_nor_q;
    reg [0:0] redist21_sync_together32_aunroll_x_in_c1_eni25_24_tpl_66_sticky_ena_q;
    wire [0:0] redist21_sync_together32_aunroll_x_in_c1_eni25_24_tpl_66_enaAnd_q;
    reg [31:0] redist22_sync_together32_aunroll_x_in_c1_eni25_25_tpl_69_outputreg0_q;
    wire redist22_sync_together32_aunroll_x_in_c1_eni25_25_tpl_69_mem_reset0;
    wire [31:0] redist22_sync_together32_aunroll_x_in_c1_eni25_25_tpl_69_mem_ia;
    wire [6:0] redist22_sync_together32_aunroll_x_in_c1_eni25_25_tpl_69_mem_aa;
    wire [6:0] redist22_sync_together32_aunroll_x_in_c1_eni25_25_tpl_69_mem_ab;
    wire [31:0] redist22_sync_together32_aunroll_x_in_c1_eni25_25_tpl_69_mem_iq;
    wire [31:0] redist22_sync_together32_aunroll_x_in_c1_eni25_25_tpl_69_mem_q;
    wire [6:0] redist22_sync_together32_aunroll_x_in_c1_eni25_25_tpl_69_rdcnt_q;
    (* preserve *) reg [6:0] redist22_sync_together32_aunroll_x_in_c1_eni25_25_tpl_69_rdcnt_i;
    (* preserve *) reg redist22_sync_together32_aunroll_x_in_c1_eni25_25_tpl_69_rdcnt_eq;
    reg [6:0] redist22_sync_together32_aunroll_x_in_c1_eni25_25_tpl_69_wraddr_q;
    wire [7:0] redist22_sync_together32_aunroll_x_in_c1_eni25_25_tpl_69_mem_last_q;
    wire [7:0] redist22_sync_together32_aunroll_x_in_c1_eni25_25_tpl_69_cmp_b;
    wire [0:0] redist22_sync_together32_aunroll_x_in_c1_eni25_25_tpl_69_cmp_q;
    reg [0:0] redist22_sync_together32_aunroll_x_in_c1_eni25_25_tpl_69_cmpReg_q;
    wire [0:0] redist22_sync_together32_aunroll_x_in_c1_eni25_25_tpl_69_notEnable_q;
    wire [0:0] redist22_sync_together32_aunroll_x_in_c1_eni25_25_tpl_69_nor_q;
    reg [0:0] redist22_sync_together32_aunroll_x_in_c1_eni25_25_tpl_69_sticky_ena_q;
    wire [0:0] redist22_sync_together32_aunroll_x_in_c1_eni25_25_tpl_69_enaAnd_q;
    wire redist11_sync_together32_aunroll_x_in_c1_eni25_14_tpl_36_split_0_mem_reset0;
    wire [31:0] redist11_sync_together32_aunroll_x_in_c1_eni25_14_tpl_36_split_0_mem_ia;
    wire [4:0] redist11_sync_together32_aunroll_x_in_c1_eni25_14_tpl_36_split_0_mem_aa;
    wire [4:0] redist11_sync_together32_aunroll_x_in_c1_eni25_14_tpl_36_split_0_mem_ab;
    wire [31:0] redist11_sync_together32_aunroll_x_in_c1_eni25_14_tpl_36_split_0_mem_iq;
    wire [31:0] redist11_sync_together32_aunroll_x_in_c1_eni25_14_tpl_36_split_0_mem_q;
    wire [4:0] redist11_sync_together32_aunroll_x_in_c1_eni25_14_tpl_36_split_0_rdcnt_q;
    (* preserve *) reg [4:0] redist11_sync_together32_aunroll_x_in_c1_eni25_14_tpl_36_split_0_rdcnt_i;
    reg [4:0] redist11_sync_together32_aunroll_x_in_c1_eni25_14_tpl_36_split_0_wraddr_q;
    wire [5:0] redist11_sync_together32_aunroll_x_in_c1_eni25_14_tpl_36_split_0_mem_last_q;
    wire [5:0] redist11_sync_together32_aunroll_x_in_c1_eni25_14_tpl_36_split_0_cmp_b;
    wire [0:0] redist11_sync_together32_aunroll_x_in_c1_eni25_14_tpl_36_split_0_cmp_q;
    (* dont_merge *) reg [0:0] redist11_sync_together32_aunroll_x_in_c1_eni25_14_tpl_36_split_0_cmpReg_q;
    wire [0:0] redist11_sync_together32_aunroll_x_in_c1_eni25_14_tpl_36_split_0_notEnable_q;
    wire [0:0] redist11_sync_together32_aunroll_x_in_c1_eni25_14_tpl_36_split_0_nor_q;
    (* dont_merge *) reg [0:0] redist11_sync_together32_aunroll_x_in_c1_eni25_14_tpl_36_split_0_sticky_ena_q;
    wire [0:0] redist11_sync_together32_aunroll_x_in_c1_eni25_14_tpl_36_split_0_enaAnd_q;
    wire redist12_sync_together32_aunroll_x_in_c1_eni25_15_tpl_39_split_0_mem_reset0;
    wire [31:0] redist12_sync_together32_aunroll_x_in_c1_eni25_15_tpl_39_split_0_mem_ia;
    wire [4:0] redist12_sync_together32_aunroll_x_in_c1_eni25_15_tpl_39_split_0_mem_aa;
    wire [4:0] redist12_sync_together32_aunroll_x_in_c1_eni25_15_tpl_39_split_0_mem_ab;
    wire [31:0] redist12_sync_together32_aunroll_x_in_c1_eni25_15_tpl_39_split_0_mem_iq;
    wire [31:0] redist12_sync_together32_aunroll_x_in_c1_eni25_15_tpl_39_split_0_mem_q;
    wire [4:0] redist12_sync_together32_aunroll_x_in_c1_eni25_15_tpl_39_split_0_rdcnt_q;
    (* preserve *) reg [4:0] redist12_sync_together32_aunroll_x_in_c1_eni25_15_tpl_39_split_0_rdcnt_i;
    reg [4:0] redist12_sync_together32_aunroll_x_in_c1_eni25_15_tpl_39_split_0_wraddr_q;
    wire [5:0] redist12_sync_together32_aunroll_x_in_c1_eni25_15_tpl_39_split_0_mem_last_q;
    wire [5:0] redist12_sync_together32_aunroll_x_in_c1_eni25_15_tpl_39_split_0_cmp_b;
    wire [0:0] redist12_sync_together32_aunroll_x_in_c1_eni25_15_tpl_39_split_0_cmp_q;
    (* dont_merge *) reg [0:0] redist12_sync_together32_aunroll_x_in_c1_eni25_15_tpl_39_split_0_cmpReg_q;
    wire [0:0] redist12_sync_together32_aunroll_x_in_c1_eni25_15_tpl_39_split_0_nor_q;
    (* dont_merge *) reg [0:0] redist12_sync_together32_aunroll_x_in_c1_eni25_15_tpl_39_split_0_sticky_ena_q;
    wire [0:0] redist12_sync_together32_aunroll_x_in_c1_eni25_15_tpl_39_split_0_enaAnd_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist23_sync_together32_aunroll_x_in_i_valid_73(DELAY,120)
    dspba_delay_ver #( .width(1), .depth(73), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist23_sync_together32_aunroll_x_in_i_valid_73 ( .xin(in_i_valid), .xout(redist23_sync_together32_aunroll_x_in_i_valid_73_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist22_sync_together32_aunroll_x_in_c1_eni25_25_tpl_69_notEnable(LOGICAL,353)
    assign redist22_sync_together32_aunroll_x_in_c1_eni25_25_tpl_69_notEnable_q = $unsigned(~ (VCC_q));

    // redist22_sync_together32_aunroll_x_in_c1_eni25_25_tpl_69_nor(LOGICAL,354)
    assign redist22_sync_together32_aunroll_x_in_c1_eni25_25_tpl_69_nor_q = ~ (redist22_sync_together32_aunroll_x_in_c1_eni25_25_tpl_69_notEnable_q | redist22_sync_together32_aunroll_x_in_c1_eni25_25_tpl_69_sticky_ena_q);

    // redist22_sync_together32_aunroll_x_in_c1_eni25_25_tpl_69_mem_last(CONSTANT,350)
    assign redist22_sync_together32_aunroll_x_in_c1_eni25_25_tpl_69_mem_last_q = $unsigned(8'b01000001);

    // redist22_sync_together32_aunroll_x_in_c1_eni25_25_tpl_69_cmp(LOGICAL,351)
    assign redist22_sync_together32_aunroll_x_in_c1_eni25_25_tpl_69_cmp_b = {1'b0, redist22_sync_together32_aunroll_x_in_c1_eni25_25_tpl_69_rdcnt_q};
    assign redist22_sync_together32_aunroll_x_in_c1_eni25_25_tpl_69_cmp_q = $unsigned(redist22_sync_together32_aunroll_x_in_c1_eni25_25_tpl_69_mem_last_q == redist22_sync_together32_aunroll_x_in_c1_eni25_25_tpl_69_cmp_b ? 1'b1 : 1'b0);

    // redist22_sync_together32_aunroll_x_in_c1_eni25_25_tpl_69_cmpReg(REG,352)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist22_sync_together32_aunroll_x_in_c1_eni25_25_tpl_69_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist22_sync_together32_aunroll_x_in_c1_eni25_25_tpl_69_cmpReg_q <= $unsigned(redist22_sync_together32_aunroll_x_in_c1_eni25_25_tpl_69_cmp_q);
        end
    end

    // redist22_sync_together32_aunroll_x_in_c1_eni25_25_tpl_69_sticky_ena(REG,355)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist22_sync_together32_aunroll_x_in_c1_eni25_25_tpl_69_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist22_sync_together32_aunroll_x_in_c1_eni25_25_tpl_69_nor_q == 1'b1)
        begin
            redist22_sync_together32_aunroll_x_in_c1_eni25_25_tpl_69_sticky_ena_q <= $unsigned(redist22_sync_together32_aunroll_x_in_c1_eni25_25_tpl_69_cmpReg_q);
        end
    end

    // redist22_sync_together32_aunroll_x_in_c1_eni25_25_tpl_69_enaAnd(LOGICAL,356)
    assign redist22_sync_together32_aunroll_x_in_c1_eni25_25_tpl_69_enaAnd_q = redist22_sync_together32_aunroll_x_in_c1_eni25_25_tpl_69_sticky_ena_q & VCC_q;

    // redist22_sync_together32_aunroll_x_in_c1_eni25_25_tpl_69_rdcnt(COUNTER,348)
    // low=0, high=66, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist22_sync_together32_aunroll_x_in_c1_eni25_25_tpl_69_rdcnt_i <= 7'd0;
            redist22_sync_together32_aunroll_x_in_c1_eni25_25_tpl_69_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist22_sync_together32_aunroll_x_in_c1_eni25_25_tpl_69_rdcnt_i == 7'd65)
            begin
                redist22_sync_together32_aunroll_x_in_c1_eni25_25_tpl_69_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist22_sync_together32_aunroll_x_in_c1_eni25_25_tpl_69_rdcnt_eq <= 1'b0;
            end
            if (redist22_sync_together32_aunroll_x_in_c1_eni25_25_tpl_69_rdcnt_eq == 1'b1)
            begin
                redist22_sync_together32_aunroll_x_in_c1_eni25_25_tpl_69_rdcnt_i <= $unsigned(redist22_sync_together32_aunroll_x_in_c1_eni25_25_tpl_69_rdcnt_i) + $unsigned(7'd62);
            end
            else
            begin
                redist22_sync_together32_aunroll_x_in_c1_eni25_25_tpl_69_rdcnt_i <= $unsigned(redist22_sync_together32_aunroll_x_in_c1_eni25_25_tpl_69_rdcnt_i) + $unsigned(7'd1);
            end
        end
    end
    assign redist22_sync_together32_aunroll_x_in_c1_eni25_25_tpl_69_rdcnt_q = redist22_sync_together32_aunroll_x_in_c1_eni25_25_tpl_69_rdcnt_i[6:0];

    // redist22_sync_together32_aunroll_x_in_c1_eni25_25_tpl_69_wraddr(REG,349)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist22_sync_together32_aunroll_x_in_c1_eni25_25_tpl_69_wraddr_q <= $unsigned(7'b1000010);
        end
        else
        begin
            redist22_sync_together32_aunroll_x_in_c1_eni25_25_tpl_69_wraddr_q <= $unsigned(redist22_sync_together32_aunroll_x_in_c1_eni25_25_tpl_69_rdcnt_q);
        end
    end

    // redist22_sync_together32_aunroll_x_in_c1_eni25_25_tpl_69_mem(DUALMEM,347)
    assign redist22_sync_together32_aunroll_x_in_c1_eni25_25_tpl_69_mem_ia = $unsigned(in_c1_eni25_25_tpl);
    assign redist22_sync_together32_aunroll_x_in_c1_eni25_25_tpl_69_mem_aa = redist22_sync_together32_aunroll_x_in_c1_eni25_25_tpl_69_wraddr_q;
    assign redist22_sync_together32_aunroll_x_in_c1_eni25_25_tpl_69_mem_ab = redist22_sync_together32_aunroll_x_in_c1_eni25_25_tpl_69_rdcnt_q;
    assign redist22_sync_together32_aunroll_x_in_c1_eni25_25_tpl_69_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("M20K"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(7),
        .numwords_a(67),
        .width_b(32),
        .widthad_b(7),
        .numwords_b(67),
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
    ) redist22_sync_together32_aunroll_x_in_c1_eni25_25_tpl_69_mem_dmem (
        .clocken1(redist22_sync_together32_aunroll_x_in_c1_eni25_25_tpl_69_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist22_sync_together32_aunroll_x_in_c1_eni25_25_tpl_69_mem_reset0),
        .clock1(clock),
        .address_a(redist22_sync_together32_aunroll_x_in_c1_eni25_25_tpl_69_mem_aa),
        .data_a(redist22_sync_together32_aunroll_x_in_c1_eni25_25_tpl_69_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist22_sync_together32_aunroll_x_in_c1_eni25_25_tpl_69_mem_ab),
        .q_b(redist22_sync_together32_aunroll_x_in_c1_eni25_25_tpl_69_mem_iq),
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
    assign redist22_sync_together32_aunroll_x_in_c1_eni25_25_tpl_69_mem_q = redist22_sync_together32_aunroll_x_in_c1_eni25_25_tpl_69_mem_iq[31:0];

    // redist22_sync_together32_aunroll_x_in_c1_eni25_25_tpl_69_outputreg0(DELAY,346)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist22_sync_together32_aunroll_x_in_c1_eni25_25_tpl_69_outputreg0_q <= '0;
        end
        else
        begin
            redist22_sync_together32_aunroll_x_in_c1_eni25_25_tpl_69_outputreg0_q <= $unsigned(redist22_sync_together32_aunroll_x_in_c1_eni25_25_tpl_69_mem_q);
        end
    end

    // redist21_sync_together32_aunroll_x_in_c1_eni25_24_tpl_66_notEnable(LOGICAL,342)
    assign redist21_sync_together32_aunroll_x_in_c1_eni25_24_tpl_66_notEnable_q = $unsigned(~ (VCC_q));

    // redist21_sync_together32_aunroll_x_in_c1_eni25_24_tpl_66_nor(LOGICAL,343)
    assign redist21_sync_together32_aunroll_x_in_c1_eni25_24_tpl_66_nor_q = ~ (redist21_sync_together32_aunroll_x_in_c1_eni25_24_tpl_66_notEnable_q | redist21_sync_together32_aunroll_x_in_c1_eni25_24_tpl_66_sticky_ena_q);

    // redist21_sync_together32_aunroll_x_in_c1_eni25_24_tpl_66_mem_last(CONSTANT,339)
    assign redist21_sync_together32_aunroll_x_in_c1_eni25_24_tpl_66_mem_last_q = $unsigned(7'b0111110);

    // redist21_sync_together32_aunroll_x_in_c1_eni25_24_tpl_66_cmp(LOGICAL,340)
    assign redist21_sync_together32_aunroll_x_in_c1_eni25_24_tpl_66_cmp_b = {1'b0, redist21_sync_together32_aunroll_x_in_c1_eni25_24_tpl_66_rdcnt_q};
    assign redist21_sync_together32_aunroll_x_in_c1_eni25_24_tpl_66_cmp_q = $unsigned(redist21_sync_together32_aunroll_x_in_c1_eni25_24_tpl_66_mem_last_q == redist21_sync_together32_aunroll_x_in_c1_eni25_24_tpl_66_cmp_b ? 1'b1 : 1'b0);

    // redist21_sync_together32_aunroll_x_in_c1_eni25_24_tpl_66_cmpReg(REG,341)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist21_sync_together32_aunroll_x_in_c1_eni25_24_tpl_66_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist21_sync_together32_aunroll_x_in_c1_eni25_24_tpl_66_cmpReg_q <= $unsigned(redist21_sync_together32_aunroll_x_in_c1_eni25_24_tpl_66_cmp_q);
        end
    end

    // redist21_sync_together32_aunroll_x_in_c1_eni25_24_tpl_66_sticky_ena(REG,344)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist21_sync_together32_aunroll_x_in_c1_eni25_24_tpl_66_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist21_sync_together32_aunroll_x_in_c1_eni25_24_tpl_66_nor_q == 1'b1)
        begin
            redist21_sync_together32_aunroll_x_in_c1_eni25_24_tpl_66_sticky_ena_q <= $unsigned(redist21_sync_together32_aunroll_x_in_c1_eni25_24_tpl_66_cmpReg_q);
        end
    end

    // redist21_sync_together32_aunroll_x_in_c1_eni25_24_tpl_66_enaAnd(LOGICAL,345)
    assign redist21_sync_together32_aunroll_x_in_c1_eni25_24_tpl_66_enaAnd_q = redist21_sync_together32_aunroll_x_in_c1_eni25_24_tpl_66_sticky_ena_q & VCC_q;

    // redist21_sync_together32_aunroll_x_in_c1_eni25_24_tpl_66_rdcnt(COUNTER,337)
    // low=0, high=63, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist21_sync_together32_aunroll_x_in_c1_eni25_24_tpl_66_rdcnt_i <= 6'd0;
        end
        else
        begin
            redist21_sync_together32_aunroll_x_in_c1_eni25_24_tpl_66_rdcnt_i <= $unsigned(redist21_sync_together32_aunroll_x_in_c1_eni25_24_tpl_66_rdcnt_i) + $unsigned(6'd1);
        end
    end
    assign redist21_sync_together32_aunroll_x_in_c1_eni25_24_tpl_66_rdcnt_q = redist21_sync_together32_aunroll_x_in_c1_eni25_24_tpl_66_rdcnt_i[5:0];

    // redist21_sync_together32_aunroll_x_in_c1_eni25_24_tpl_66_wraddr(REG,338)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist21_sync_together32_aunroll_x_in_c1_eni25_24_tpl_66_wraddr_q <= $unsigned(6'b111111);
        end
        else
        begin
            redist21_sync_together32_aunroll_x_in_c1_eni25_24_tpl_66_wraddr_q <= $unsigned(redist21_sync_together32_aunroll_x_in_c1_eni25_24_tpl_66_rdcnt_q);
        end
    end

    // redist21_sync_together32_aunroll_x_in_c1_eni25_24_tpl_66_mem(DUALMEM,336)
    assign redist21_sync_together32_aunroll_x_in_c1_eni25_24_tpl_66_mem_ia = $unsigned(in_c1_eni25_24_tpl);
    assign redist21_sync_together32_aunroll_x_in_c1_eni25_24_tpl_66_mem_aa = redist21_sync_together32_aunroll_x_in_c1_eni25_24_tpl_66_wraddr_q;
    assign redist21_sync_together32_aunroll_x_in_c1_eni25_24_tpl_66_mem_ab = redist21_sync_together32_aunroll_x_in_c1_eni25_24_tpl_66_rdcnt_q;
    assign redist21_sync_together32_aunroll_x_in_c1_eni25_24_tpl_66_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("M20K"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(6),
        .numwords_a(64),
        .width_b(32),
        .widthad_b(6),
        .numwords_b(64),
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
    ) redist21_sync_together32_aunroll_x_in_c1_eni25_24_tpl_66_mem_dmem (
        .clocken1(redist21_sync_together32_aunroll_x_in_c1_eni25_24_tpl_66_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist21_sync_together32_aunroll_x_in_c1_eni25_24_tpl_66_mem_reset0),
        .clock1(clock),
        .address_a(redist21_sync_together32_aunroll_x_in_c1_eni25_24_tpl_66_mem_aa),
        .data_a(redist21_sync_together32_aunroll_x_in_c1_eni25_24_tpl_66_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist21_sync_together32_aunroll_x_in_c1_eni25_24_tpl_66_mem_ab),
        .q_b(redist21_sync_together32_aunroll_x_in_c1_eni25_24_tpl_66_mem_iq),
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
    assign redist21_sync_together32_aunroll_x_in_c1_eni25_24_tpl_66_mem_q = redist21_sync_together32_aunroll_x_in_c1_eni25_24_tpl_66_mem_iq[31:0];

    // redist21_sync_together32_aunroll_x_in_c1_eni25_24_tpl_66_outputreg0(DELAY,335)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist21_sync_together32_aunroll_x_in_c1_eni25_24_tpl_66_outputreg0_q <= '0;
        end
        else
        begin
            redist21_sync_together32_aunroll_x_in_c1_eni25_24_tpl_66_outputreg0_q <= $unsigned(redist21_sync_together32_aunroll_x_in_c1_eni25_24_tpl_66_mem_q);
        end
    end

    // redist20_sync_together32_aunroll_x_in_c1_eni25_23_tpl_63_notEnable(LOGICAL,331)
    assign redist20_sync_together32_aunroll_x_in_c1_eni25_23_tpl_63_notEnable_q = $unsigned(~ (VCC_q));

    // redist20_sync_together32_aunroll_x_in_c1_eni25_23_tpl_63_nor(LOGICAL,332)
    assign redist20_sync_together32_aunroll_x_in_c1_eni25_23_tpl_63_nor_q = ~ (redist20_sync_together32_aunroll_x_in_c1_eni25_23_tpl_63_notEnable_q | redist20_sync_together32_aunroll_x_in_c1_eni25_23_tpl_63_sticky_ena_q);

    // redist20_sync_together32_aunroll_x_in_c1_eni25_23_tpl_63_mem_last(CONSTANT,328)
    assign redist20_sync_together32_aunroll_x_in_c1_eni25_23_tpl_63_mem_last_q = $unsigned(7'b0111011);

    // redist20_sync_together32_aunroll_x_in_c1_eni25_23_tpl_63_cmp(LOGICAL,329)
    assign redist20_sync_together32_aunroll_x_in_c1_eni25_23_tpl_63_cmp_b = {1'b0, redist20_sync_together32_aunroll_x_in_c1_eni25_23_tpl_63_rdcnt_q};
    assign redist20_sync_together32_aunroll_x_in_c1_eni25_23_tpl_63_cmp_q = $unsigned(redist20_sync_together32_aunroll_x_in_c1_eni25_23_tpl_63_mem_last_q == redist20_sync_together32_aunroll_x_in_c1_eni25_23_tpl_63_cmp_b ? 1'b1 : 1'b0);

    // redist20_sync_together32_aunroll_x_in_c1_eni25_23_tpl_63_cmpReg(REG,330)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist20_sync_together32_aunroll_x_in_c1_eni25_23_tpl_63_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist20_sync_together32_aunroll_x_in_c1_eni25_23_tpl_63_cmpReg_q <= $unsigned(redist20_sync_together32_aunroll_x_in_c1_eni25_23_tpl_63_cmp_q);
        end
    end

    // redist20_sync_together32_aunroll_x_in_c1_eni25_23_tpl_63_sticky_ena(REG,333)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist20_sync_together32_aunroll_x_in_c1_eni25_23_tpl_63_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist20_sync_together32_aunroll_x_in_c1_eni25_23_tpl_63_nor_q == 1'b1)
        begin
            redist20_sync_together32_aunroll_x_in_c1_eni25_23_tpl_63_sticky_ena_q <= $unsigned(redist20_sync_together32_aunroll_x_in_c1_eni25_23_tpl_63_cmpReg_q);
        end
    end

    // redist20_sync_together32_aunroll_x_in_c1_eni25_23_tpl_63_enaAnd(LOGICAL,334)
    assign redist20_sync_together32_aunroll_x_in_c1_eni25_23_tpl_63_enaAnd_q = redist20_sync_together32_aunroll_x_in_c1_eni25_23_tpl_63_sticky_ena_q & VCC_q;

    // redist20_sync_together32_aunroll_x_in_c1_eni25_23_tpl_63_rdcnt(COUNTER,326)
    // low=0, high=60, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist20_sync_together32_aunroll_x_in_c1_eni25_23_tpl_63_rdcnt_i <= 6'd0;
            redist20_sync_together32_aunroll_x_in_c1_eni25_23_tpl_63_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist20_sync_together32_aunroll_x_in_c1_eni25_23_tpl_63_rdcnt_i == 6'd59)
            begin
                redist20_sync_together32_aunroll_x_in_c1_eni25_23_tpl_63_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist20_sync_together32_aunroll_x_in_c1_eni25_23_tpl_63_rdcnt_eq <= 1'b0;
            end
            if (redist20_sync_together32_aunroll_x_in_c1_eni25_23_tpl_63_rdcnt_eq == 1'b1)
            begin
                redist20_sync_together32_aunroll_x_in_c1_eni25_23_tpl_63_rdcnt_i <= $unsigned(redist20_sync_together32_aunroll_x_in_c1_eni25_23_tpl_63_rdcnt_i) + $unsigned(6'd4);
            end
            else
            begin
                redist20_sync_together32_aunroll_x_in_c1_eni25_23_tpl_63_rdcnt_i <= $unsigned(redist20_sync_together32_aunroll_x_in_c1_eni25_23_tpl_63_rdcnt_i) + $unsigned(6'd1);
            end
        end
    end
    assign redist20_sync_together32_aunroll_x_in_c1_eni25_23_tpl_63_rdcnt_q = redist20_sync_together32_aunroll_x_in_c1_eni25_23_tpl_63_rdcnt_i[5:0];

    // redist20_sync_together32_aunroll_x_in_c1_eni25_23_tpl_63_wraddr(REG,327)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist20_sync_together32_aunroll_x_in_c1_eni25_23_tpl_63_wraddr_q <= $unsigned(6'b111100);
        end
        else
        begin
            redist20_sync_together32_aunroll_x_in_c1_eni25_23_tpl_63_wraddr_q <= $unsigned(redist20_sync_together32_aunroll_x_in_c1_eni25_23_tpl_63_rdcnt_q);
        end
    end

    // redist20_sync_together32_aunroll_x_in_c1_eni25_23_tpl_63_mem(DUALMEM,325)
    assign redist20_sync_together32_aunroll_x_in_c1_eni25_23_tpl_63_mem_ia = $unsigned(in_c1_eni25_23_tpl);
    assign redist20_sync_together32_aunroll_x_in_c1_eni25_23_tpl_63_mem_aa = redist20_sync_together32_aunroll_x_in_c1_eni25_23_tpl_63_wraddr_q;
    assign redist20_sync_together32_aunroll_x_in_c1_eni25_23_tpl_63_mem_ab = redist20_sync_together32_aunroll_x_in_c1_eni25_23_tpl_63_rdcnt_q;
    assign redist20_sync_together32_aunroll_x_in_c1_eni25_23_tpl_63_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("M20K"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(6),
        .numwords_a(61),
        .width_b(32),
        .widthad_b(6),
        .numwords_b(61),
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
    ) redist20_sync_together32_aunroll_x_in_c1_eni25_23_tpl_63_mem_dmem (
        .clocken1(redist20_sync_together32_aunroll_x_in_c1_eni25_23_tpl_63_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist20_sync_together32_aunroll_x_in_c1_eni25_23_tpl_63_mem_reset0),
        .clock1(clock),
        .address_a(redist20_sync_together32_aunroll_x_in_c1_eni25_23_tpl_63_mem_aa),
        .data_a(redist20_sync_together32_aunroll_x_in_c1_eni25_23_tpl_63_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist20_sync_together32_aunroll_x_in_c1_eni25_23_tpl_63_mem_ab),
        .q_b(redist20_sync_together32_aunroll_x_in_c1_eni25_23_tpl_63_mem_iq),
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
    assign redist20_sync_together32_aunroll_x_in_c1_eni25_23_tpl_63_mem_q = redist20_sync_together32_aunroll_x_in_c1_eni25_23_tpl_63_mem_iq[31:0];

    // redist20_sync_together32_aunroll_x_in_c1_eni25_23_tpl_63_outputreg0(DELAY,324)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist20_sync_together32_aunroll_x_in_c1_eni25_23_tpl_63_outputreg0_q <= '0;
        end
        else
        begin
            redist20_sync_together32_aunroll_x_in_c1_eni25_23_tpl_63_outputreg0_q <= $unsigned(redist20_sync_together32_aunroll_x_in_c1_eni25_23_tpl_63_mem_q);
        end
    end

    // redist19_sync_together32_aunroll_x_in_c1_eni25_22_tpl_60_notEnable(LOGICAL,320)
    assign redist19_sync_together32_aunroll_x_in_c1_eni25_22_tpl_60_notEnable_q = $unsigned(~ (VCC_q));

    // redist19_sync_together32_aunroll_x_in_c1_eni25_22_tpl_60_nor(LOGICAL,321)
    assign redist19_sync_together32_aunroll_x_in_c1_eni25_22_tpl_60_nor_q = ~ (redist19_sync_together32_aunroll_x_in_c1_eni25_22_tpl_60_notEnable_q | redist19_sync_together32_aunroll_x_in_c1_eni25_22_tpl_60_sticky_ena_q);

    // redist19_sync_together32_aunroll_x_in_c1_eni25_22_tpl_60_mem_last(CONSTANT,317)
    assign redist19_sync_together32_aunroll_x_in_c1_eni25_22_tpl_60_mem_last_q = $unsigned(7'b0111000);

    // redist19_sync_together32_aunroll_x_in_c1_eni25_22_tpl_60_cmp(LOGICAL,318)
    assign redist19_sync_together32_aunroll_x_in_c1_eni25_22_tpl_60_cmp_b = {1'b0, redist19_sync_together32_aunroll_x_in_c1_eni25_22_tpl_60_rdcnt_q};
    assign redist19_sync_together32_aunroll_x_in_c1_eni25_22_tpl_60_cmp_q = $unsigned(redist19_sync_together32_aunroll_x_in_c1_eni25_22_tpl_60_mem_last_q == redist19_sync_together32_aunroll_x_in_c1_eni25_22_tpl_60_cmp_b ? 1'b1 : 1'b0);

    // redist19_sync_together32_aunroll_x_in_c1_eni25_22_tpl_60_cmpReg(REG,319)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist19_sync_together32_aunroll_x_in_c1_eni25_22_tpl_60_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist19_sync_together32_aunroll_x_in_c1_eni25_22_tpl_60_cmpReg_q <= $unsigned(redist19_sync_together32_aunroll_x_in_c1_eni25_22_tpl_60_cmp_q);
        end
    end

    // redist19_sync_together32_aunroll_x_in_c1_eni25_22_tpl_60_sticky_ena(REG,322)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist19_sync_together32_aunroll_x_in_c1_eni25_22_tpl_60_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist19_sync_together32_aunroll_x_in_c1_eni25_22_tpl_60_nor_q == 1'b1)
        begin
            redist19_sync_together32_aunroll_x_in_c1_eni25_22_tpl_60_sticky_ena_q <= $unsigned(redist19_sync_together32_aunroll_x_in_c1_eni25_22_tpl_60_cmpReg_q);
        end
    end

    // redist19_sync_together32_aunroll_x_in_c1_eni25_22_tpl_60_enaAnd(LOGICAL,323)
    assign redist19_sync_together32_aunroll_x_in_c1_eni25_22_tpl_60_enaAnd_q = redist19_sync_together32_aunroll_x_in_c1_eni25_22_tpl_60_sticky_ena_q & VCC_q;

    // redist19_sync_together32_aunroll_x_in_c1_eni25_22_tpl_60_rdcnt(COUNTER,315)
    // low=0, high=57, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist19_sync_together32_aunroll_x_in_c1_eni25_22_tpl_60_rdcnt_i <= 6'd0;
            redist19_sync_together32_aunroll_x_in_c1_eni25_22_tpl_60_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist19_sync_together32_aunroll_x_in_c1_eni25_22_tpl_60_rdcnt_i == 6'd56)
            begin
                redist19_sync_together32_aunroll_x_in_c1_eni25_22_tpl_60_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist19_sync_together32_aunroll_x_in_c1_eni25_22_tpl_60_rdcnt_eq <= 1'b0;
            end
            if (redist19_sync_together32_aunroll_x_in_c1_eni25_22_tpl_60_rdcnt_eq == 1'b1)
            begin
                redist19_sync_together32_aunroll_x_in_c1_eni25_22_tpl_60_rdcnt_i <= $unsigned(redist19_sync_together32_aunroll_x_in_c1_eni25_22_tpl_60_rdcnt_i) + $unsigned(6'd7);
            end
            else
            begin
                redist19_sync_together32_aunroll_x_in_c1_eni25_22_tpl_60_rdcnt_i <= $unsigned(redist19_sync_together32_aunroll_x_in_c1_eni25_22_tpl_60_rdcnt_i) + $unsigned(6'd1);
            end
        end
    end
    assign redist19_sync_together32_aunroll_x_in_c1_eni25_22_tpl_60_rdcnt_q = redist19_sync_together32_aunroll_x_in_c1_eni25_22_tpl_60_rdcnt_i[5:0];

    // redist19_sync_together32_aunroll_x_in_c1_eni25_22_tpl_60_wraddr(REG,316)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist19_sync_together32_aunroll_x_in_c1_eni25_22_tpl_60_wraddr_q <= $unsigned(6'b111001);
        end
        else
        begin
            redist19_sync_together32_aunroll_x_in_c1_eni25_22_tpl_60_wraddr_q <= $unsigned(redist19_sync_together32_aunroll_x_in_c1_eni25_22_tpl_60_rdcnt_q);
        end
    end

    // redist19_sync_together32_aunroll_x_in_c1_eni25_22_tpl_60_mem(DUALMEM,314)
    assign redist19_sync_together32_aunroll_x_in_c1_eni25_22_tpl_60_mem_ia = $unsigned(in_c1_eni25_22_tpl);
    assign redist19_sync_together32_aunroll_x_in_c1_eni25_22_tpl_60_mem_aa = redist19_sync_together32_aunroll_x_in_c1_eni25_22_tpl_60_wraddr_q;
    assign redist19_sync_together32_aunroll_x_in_c1_eni25_22_tpl_60_mem_ab = redist19_sync_together32_aunroll_x_in_c1_eni25_22_tpl_60_rdcnt_q;
    assign redist19_sync_together32_aunroll_x_in_c1_eni25_22_tpl_60_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("M20K"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(6),
        .numwords_a(58),
        .width_b(32),
        .widthad_b(6),
        .numwords_b(58),
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
    ) redist19_sync_together32_aunroll_x_in_c1_eni25_22_tpl_60_mem_dmem (
        .clocken1(redist19_sync_together32_aunroll_x_in_c1_eni25_22_tpl_60_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist19_sync_together32_aunroll_x_in_c1_eni25_22_tpl_60_mem_reset0),
        .clock1(clock),
        .address_a(redist19_sync_together32_aunroll_x_in_c1_eni25_22_tpl_60_mem_aa),
        .data_a(redist19_sync_together32_aunroll_x_in_c1_eni25_22_tpl_60_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist19_sync_together32_aunroll_x_in_c1_eni25_22_tpl_60_mem_ab),
        .q_b(redist19_sync_together32_aunroll_x_in_c1_eni25_22_tpl_60_mem_iq),
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
    assign redist19_sync_together32_aunroll_x_in_c1_eni25_22_tpl_60_mem_q = redist19_sync_together32_aunroll_x_in_c1_eni25_22_tpl_60_mem_iq[31:0];

    // redist19_sync_together32_aunroll_x_in_c1_eni25_22_tpl_60_outputreg0(DELAY,313)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist19_sync_together32_aunroll_x_in_c1_eni25_22_tpl_60_outputreg0_q <= '0;
        end
        else
        begin
            redist19_sync_together32_aunroll_x_in_c1_eni25_22_tpl_60_outputreg0_q <= $unsigned(redist19_sync_together32_aunroll_x_in_c1_eni25_22_tpl_60_mem_q);
        end
    end

    // redist18_sync_together32_aunroll_x_in_c1_eni25_21_tpl_57_notEnable(LOGICAL,309)
    assign redist18_sync_together32_aunroll_x_in_c1_eni25_21_tpl_57_notEnable_q = $unsigned(~ (VCC_q));

    // redist18_sync_together32_aunroll_x_in_c1_eni25_21_tpl_57_nor(LOGICAL,310)
    assign redist18_sync_together32_aunroll_x_in_c1_eni25_21_tpl_57_nor_q = ~ (redist18_sync_together32_aunroll_x_in_c1_eni25_21_tpl_57_notEnable_q | redist18_sync_together32_aunroll_x_in_c1_eni25_21_tpl_57_sticky_ena_q);

    // redist18_sync_together32_aunroll_x_in_c1_eni25_21_tpl_57_mem_last(CONSTANT,306)
    assign redist18_sync_together32_aunroll_x_in_c1_eni25_21_tpl_57_mem_last_q = $unsigned(7'b0110101);

    // redist18_sync_together32_aunroll_x_in_c1_eni25_21_tpl_57_cmp(LOGICAL,307)
    assign redist18_sync_together32_aunroll_x_in_c1_eni25_21_tpl_57_cmp_b = {1'b0, redist18_sync_together32_aunroll_x_in_c1_eni25_21_tpl_57_rdcnt_q};
    assign redist18_sync_together32_aunroll_x_in_c1_eni25_21_tpl_57_cmp_q = $unsigned(redist18_sync_together32_aunroll_x_in_c1_eni25_21_tpl_57_mem_last_q == redist18_sync_together32_aunroll_x_in_c1_eni25_21_tpl_57_cmp_b ? 1'b1 : 1'b0);

    // redist18_sync_together32_aunroll_x_in_c1_eni25_21_tpl_57_cmpReg(REG,308)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist18_sync_together32_aunroll_x_in_c1_eni25_21_tpl_57_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist18_sync_together32_aunroll_x_in_c1_eni25_21_tpl_57_cmpReg_q <= $unsigned(redist18_sync_together32_aunroll_x_in_c1_eni25_21_tpl_57_cmp_q);
        end
    end

    // redist18_sync_together32_aunroll_x_in_c1_eni25_21_tpl_57_sticky_ena(REG,311)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist18_sync_together32_aunroll_x_in_c1_eni25_21_tpl_57_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist18_sync_together32_aunroll_x_in_c1_eni25_21_tpl_57_nor_q == 1'b1)
        begin
            redist18_sync_together32_aunroll_x_in_c1_eni25_21_tpl_57_sticky_ena_q <= $unsigned(redist18_sync_together32_aunroll_x_in_c1_eni25_21_tpl_57_cmpReg_q);
        end
    end

    // redist18_sync_together32_aunroll_x_in_c1_eni25_21_tpl_57_enaAnd(LOGICAL,312)
    assign redist18_sync_together32_aunroll_x_in_c1_eni25_21_tpl_57_enaAnd_q = redist18_sync_together32_aunroll_x_in_c1_eni25_21_tpl_57_sticky_ena_q & VCC_q;

    // redist18_sync_together32_aunroll_x_in_c1_eni25_21_tpl_57_rdcnt(COUNTER,304)
    // low=0, high=54, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist18_sync_together32_aunroll_x_in_c1_eni25_21_tpl_57_rdcnt_i <= 6'd0;
            redist18_sync_together32_aunroll_x_in_c1_eni25_21_tpl_57_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist18_sync_together32_aunroll_x_in_c1_eni25_21_tpl_57_rdcnt_i == 6'd53)
            begin
                redist18_sync_together32_aunroll_x_in_c1_eni25_21_tpl_57_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist18_sync_together32_aunroll_x_in_c1_eni25_21_tpl_57_rdcnt_eq <= 1'b0;
            end
            if (redist18_sync_together32_aunroll_x_in_c1_eni25_21_tpl_57_rdcnt_eq == 1'b1)
            begin
                redist18_sync_together32_aunroll_x_in_c1_eni25_21_tpl_57_rdcnt_i <= $unsigned(redist18_sync_together32_aunroll_x_in_c1_eni25_21_tpl_57_rdcnt_i) + $unsigned(6'd10);
            end
            else
            begin
                redist18_sync_together32_aunroll_x_in_c1_eni25_21_tpl_57_rdcnt_i <= $unsigned(redist18_sync_together32_aunroll_x_in_c1_eni25_21_tpl_57_rdcnt_i) + $unsigned(6'd1);
            end
        end
    end
    assign redist18_sync_together32_aunroll_x_in_c1_eni25_21_tpl_57_rdcnt_q = redist18_sync_together32_aunroll_x_in_c1_eni25_21_tpl_57_rdcnt_i[5:0];

    // redist18_sync_together32_aunroll_x_in_c1_eni25_21_tpl_57_wraddr(REG,305)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist18_sync_together32_aunroll_x_in_c1_eni25_21_tpl_57_wraddr_q <= $unsigned(6'b110110);
        end
        else
        begin
            redist18_sync_together32_aunroll_x_in_c1_eni25_21_tpl_57_wraddr_q <= $unsigned(redist18_sync_together32_aunroll_x_in_c1_eni25_21_tpl_57_rdcnt_q);
        end
    end

    // redist18_sync_together32_aunroll_x_in_c1_eni25_21_tpl_57_mem(DUALMEM,303)
    assign redist18_sync_together32_aunroll_x_in_c1_eni25_21_tpl_57_mem_ia = $unsigned(in_c1_eni25_21_tpl);
    assign redist18_sync_together32_aunroll_x_in_c1_eni25_21_tpl_57_mem_aa = redist18_sync_together32_aunroll_x_in_c1_eni25_21_tpl_57_wraddr_q;
    assign redist18_sync_together32_aunroll_x_in_c1_eni25_21_tpl_57_mem_ab = redist18_sync_together32_aunroll_x_in_c1_eni25_21_tpl_57_rdcnt_q;
    assign redist18_sync_together32_aunroll_x_in_c1_eni25_21_tpl_57_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("M20K"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(6),
        .numwords_a(55),
        .width_b(32),
        .widthad_b(6),
        .numwords_b(55),
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
    ) redist18_sync_together32_aunroll_x_in_c1_eni25_21_tpl_57_mem_dmem (
        .clocken1(redist18_sync_together32_aunroll_x_in_c1_eni25_21_tpl_57_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist18_sync_together32_aunroll_x_in_c1_eni25_21_tpl_57_mem_reset0),
        .clock1(clock),
        .address_a(redist18_sync_together32_aunroll_x_in_c1_eni25_21_tpl_57_mem_aa),
        .data_a(redist18_sync_together32_aunroll_x_in_c1_eni25_21_tpl_57_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist18_sync_together32_aunroll_x_in_c1_eni25_21_tpl_57_mem_ab),
        .q_b(redist18_sync_together32_aunroll_x_in_c1_eni25_21_tpl_57_mem_iq),
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
    assign redist18_sync_together32_aunroll_x_in_c1_eni25_21_tpl_57_mem_q = redist18_sync_together32_aunroll_x_in_c1_eni25_21_tpl_57_mem_iq[31:0];

    // redist18_sync_together32_aunroll_x_in_c1_eni25_21_tpl_57_outputreg0(DELAY,302)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist18_sync_together32_aunroll_x_in_c1_eni25_21_tpl_57_outputreg0_q <= '0;
        end
        else
        begin
            redist18_sync_together32_aunroll_x_in_c1_eni25_21_tpl_57_outputreg0_q <= $unsigned(redist18_sync_together32_aunroll_x_in_c1_eni25_21_tpl_57_mem_q);
        end
    end

    // redist17_sync_together32_aunroll_x_in_c1_eni25_20_tpl_54_notEnable(LOGICAL,298)
    assign redist17_sync_together32_aunroll_x_in_c1_eni25_20_tpl_54_notEnable_q = $unsigned(~ (VCC_q));

    // redist17_sync_together32_aunroll_x_in_c1_eni25_20_tpl_54_nor(LOGICAL,299)
    assign redist17_sync_together32_aunroll_x_in_c1_eni25_20_tpl_54_nor_q = ~ (redist17_sync_together32_aunroll_x_in_c1_eni25_20_tpl_54_notEnable_q | redist17_sync_together32_aunroll_x_in_c1_eni25_20_tpl_54_sticky_ena_q);

    // redist17_sync_together32_aunroll_x_in_c1_eni25_20_tpl_54_mem_last(CONSTANT,295)
    assign redist17_sync_together32_aunroll_x_in_c1_eni25_20_tpl_54_mem_last_q = $unsigned(7'b0110010);

    // redist17_sync_together32_aunroll_x_in_c1_eni25_20_tpl_54_cmp(LOGICAL,296)
    assign redist17_sync_together32_aunroll_x_in_c1_eni25_20_tpl_54_cmp_b = {1'b0, redist17_sync_together32_aunroll_x_in_c1_eni25_20_tpl_54_rdcnt_q};
    assign redist17_sync_together32_aunroll_x_in_c1_eni25_20_tpl_54_cmp_q = $unsigned(redist17_sync_together32_aunroll_x_in_c1_eni25_20_tpl_54_mem_last_q == redist17_sync_together32_aunroll_x_in_c1_eni25_20_tpl_54_cmp_b ? 1'b1 : 1'b0);

    // redist17_sync_together32_aunroll_x_in_c1_eni25_20_tpl_54_cmpReg(REG,297)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist17_sync_together32_aunroll_x_in_c1_eni25_20_tpl_54_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist17_sync_together32_aunroll_x_in_c1_eni25_20_tpl_54_cmpReg_q <= $unsigned(redist17_sync_together32_aunroll_x_in_c1_eni25_20_tpl_54_cmp_q);
        end
    end

    // redist17_sync_together32_aunroll_x_in_c1_eni25_20_tpl_54_sticky_ena(REG,300)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist17_sync_together32_aunroll_x_in_c1_eni25_20_tpl_54_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist17_sync_together32_aunroll_x_in_c1_eni25_20_tpl_54_nor_q == 1'b1)
        begin
            redist17_sync_together32_aunroll_x_in_c1_eni25_20_tpl_54_sticky_ena_q <= $unsigned(redist17_sync_together32_aunroll_x_in_c1_eni25_20_tpl_54_cmpReg_q);
        end
    end

    // redist17_sync_together32_aunroll_x_in_c1_eni25_20_tpl_54_enaAnd(LOGICAL,301)
    assign redist17_sync_together32_aunroll_x_in_c1_eni25_20_tpl_54_enaAnd_q = redist17_sync_together32_aunroll_x_in_c1_eni25_20_tpl_54_sticky_ena_q & VCC_q;

    // redist17_sync_together32_aunroll_x_in_c1_eni25_20_tpl_54_rdcnt(COUNTER,293)
    // low=0, high=51, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist17_sync_together32_aunroll_x_in_c1_eni25_20_tpl_54_rdcnt_i <= 6'd0;
            redist17_sync_together32_aunroll_x_in_c1_eni25_20_tpl_54_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist17_sync_together32_aunroll_x_in_c1_eni25_20_tpl_54_rdcnt_i == 6'd50)
            begin
                redist17_sync_together32_aunroll_x_in_c1_eni25_20_tpl_54_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist17_sync_together32_aunroll_x_in_c1_eni25_20_tpl_54_rdcnt_eq <= 1'b0;
            end
            if (redist17_sync_together32_aunroll_x_in_c1_eni25_20_tpl_54_rdcnt_eq == 1'b1)
            begin
                redist17_sync_together32_aunroll_x_in_c1_eni25_20_tpl_54_rdcnt_i <= $unsigned(redist17_sync_together32_aunroll_x_in_c1_eni25_20_tpl_54_rdcnt_i) + $unsigned(6'd13);
            end
            else
            begin
                redist17_sync_together32_aunroll_x_in_c1_eni25_20_tpl_54_rdcnt_i <= $unsigned(redist17_sync_together32_aunroll_x_in_c1_eni25_20_tpl_54_rdcnt_i) + $unsigned(6'd1);
            end
        end
    end
    assign redist17_sync_together32_aunroll_x_in_c1_eni25_20_tpl_54_rdcnt_q = redist17_sync_together32_aunroll_x_in_c1_eni25_20_tpl_54_rdcnt_i[5:0];

    // redist17_sync_together32_aunroll_x_in_c1_eni25_20_tpl_54_wraddr(REG,294)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist17_sync_together32_aunroll_x_in_c1_eni25_20_tpl_54_wraddr_q <= $unsigned(6'b110011);
        end
        else
        begin
            redist17_sync_together32_aunroll_x_in_c1_eni25_20_tpl_54_wraddr_q <= $unsigned(redist17_sync_together32_aunroll_x_in_c1_eni25_20_tpl_54_rdcnt_q);
        end
    end

    // redist17_sync_together32_aunroll_x_in_c1_eni25_20_tpl_54_mem(DUALMEM,292)
    assign redist17_sync_together32_aunroll_x_in_c1_eni25_20_tpl_54_mem_ia = $unsigned(in_c1_eni25_20_tpl);
    assign redist17_sync_together32_aunroll_x_in_c1_eni25_20_tpl_54_mem_aa = redist17_sync_together32_aunroll_x_in_c1_eni25_20_tpl_54_wraddr_q;
    assign redist17_sync_together32_aunroll_x_in_c1_eni25_20_tpl_54_mem_ab = redist17_sync_together32_aunroll_x_in_c1_eni25_20_tpl_54_rdcnt_q;
    assign redist17_sync_together32_aunroll_x_in_c1_eni25_20_tpl_54_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("M20K"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(6),
        .numwords_a(52),
        .width_b(32),
        .widthad_b(6),
        .numwords_b(52),
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
    ) redist17_sync_together32_aunroll_x_in_c1_eni25_20_tpl_54_mem_dmem (
        .clocken1(redist17_sync_together32_aunroll_x_in_c1_eni25_20_tpl_54_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist17_sync_together32_aunroll_x_in_c1_eni25_20_tpl_54_mem_reset0),
        .clock1(clock),
        .address_a(redist17_sync_together32_aunroll_x_in_c1_eni25_20_tpl_54_mem_aa),
        .data_a(redist17_sync_together32_aunroll_x_in_c1_eni25_20_tpl_54_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist17_sync_together32_aunroll_x_in_c1_eni25_20_tpl_54_mem_ab),
        .q_b(redist17_sync_together32_aunroll_x_in_c1_eni25_20_tpl_54_mem_iq),
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
    assign redist17_sync_together32_aunroll_x_in_c1_eni25_20_tpl_54_mem_q = redist17_sync_together32_aunroll_x_in_c1_eni25_20_tpl_54_mem_iq[31:0];

    // redist17_sync_together32_aunroll_x_in_c1_eni25_20_tpl_54_outputreg0(DELAY,291)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist17_sync_together32_aunroll_x_in_c1_eni25_20_tpl_54_outputreg0_q <= '0;
        end
        else
        begin
            redist17_sync_together32_aunroll_x_in_c1_eni25_20_tpl_54_outputreg0_q <= $unsigned(redist17_sync_together32_aunroll_x_in_c1_eni25_20_tpl_54_mem_q);
        end
    end

    // redist16_sync_together32_aunroll_x_in_c1_eni25_19_tpl_51_notEnable(LOGICAL,287)
    assign redist16_sync_together32_aunroll_x_in_c1_eni25_19_tpl_51_notEnable_q = $unsigned(~ (VCC_q));

    // redist16_sync_together32_aunroll_x_in_c1_eni25_19_tpl_51_nor(LOGICAL,288)
    assign redist16_sync_together32_aunroll_x_in_c1_eni25_19_tpl_51_nor_q = ~ (redist16_sync_together32_aunroll_x_in_c1_eni25_19_tpl_51_notEnable_q | redist16_sync_together32_aunroll_x_in_c1_eni25_19_tpl_51_sticky_ena_q);

    // redist16_sync_together32_aunroll_x_in_c1_eni25_19_tpl_51_mem_last(CONSTANT,284)
    assign redist16_sync_together32_aunroll_x_in_c1_eni25_19_tpl_51_mem_last_q = $unsigned(7'b0101111);

    // redist16_sync_together32_aunroll_x_in_c1_eni25_19_tpl_51_cmp(LOGICAL,285)
    assign redist16_sync_together32_aunroll_x_in_c1_eni25_19_tpl_51_cmp_b = {1'b0, redist16_sync_together32_aunroll_x_in_c1_eni25_19_tpl_51_rdcnt_q};
    assign redist16_sync_together32_aunroll_x_in_c1_eni25_19_tpl_51_cmp_q = $unsigned(redist16_sync_together32_aunroll_x_in_c1_eni25_19_tpl_51_mem_last_q == redist16_sync_together32_aunroll_x_in_c1_eni25_19_tpl_51_cmp_b ? 1'b1 : 1'b0);

    // redist16_sync_together32_aunroll_x_in_c1_eni25_19_tpl_51_cmpReg(REG,286)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist16_sync_together32_aunroll_x_in_c1_eni25_19_tpl_51_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist16_sync_together32_aunroll_x_in_c1_eni25_19_tpl_51_cmpReg_q <= $unsigned(redist16_sync_together32_aunroll_x_in_c1_eni25_19_tpl_51_cmp_q);
        end
    end

    // redist16_sync_together32_aunroll_x_in_c1_eni25_19_tpl_51_sticky_ena(REG,289)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist16_sync_together32_aunroll_x_in_c1_eni25_19_tpl_51_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist16_sync_together32_aunroll_x_in_c1_eni25_19_tpl_51_nor_q == 1'b1)
        begin
            redist16_sync_together32_aunroll_x_in_c1_eni25_19_tpl_51_sticky_ena_q <= $unsigned(redist16_sync_together32_aunroll_x_in_c1_eni25_19_tpl_51_cmpReg_q);
        end
    end

    // redist16_sync_together32_aunroll_x_in_c1_eni25_19_tpl_51_enaAnd(LOGICAL,290)
    assign redist16_sync_together32_aunroll_x_in_c1_eni25_19_tpl_51_enaAnd_q = redist16_sync_together32_aunroll_x_in_c1_eni25_19_tpl_51_sticky_ena_q & VCC_q;

    // redist16_sync_together32_aunroll_x_in_c1_eni25_19_tpl_51_rdcnt(COUNTER,282)
    // low=0, high=48, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist16_sync_together32_aunroll_x_in_c1_eni25_19_tpl_51_rdcnt_i <= 6'd0;
            redist16_sync_together32_aunroll_x_in_c1_eni25_19_tpl_51_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist16_sync_together32_aunroll_x_in_c1_eni25_19_tpl_51_rdcnt_i == 6'd47)
            begin
                redist16_sync_together32_aunroll_x_in_c1_eni25_19_tpl_51_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist16_sync_together32_aunroll_x_in_c1_eni25_19_tpl_51_rdcnt_eq <= 1'b0;
            end
            if (redist16_sync_together32_aunroll_x_in_c1_eni25_19_tpl_51_rdcnt_eq == 1'b1)
            begin
                redist16_sync_together32_aunroll_x_in_c1_eni25_19_tpl_51_rdcnt_i <= $unsigned(redist16_sync_together32_aunroll_x_in_c1_eni25_19_tpl_51_rdcnt_i) + $unsigned(6'd16);
            end
            else
            begin
                redist16_sync_together32_aunroll_x_in_c1_eni25_19_tpl_51_rdcnt_i <= $unsigned(redist16_sync_together32_aunroll_x_in_c1_eni25_19_tpl_51_rdcnt_i) + $unsigned(6'd1);
            end
        end
    end
    assign redist16_sync_together32_aunroll_x_in_c1_eni25_19_tpl_51_rdcnt_q = redist16_sync_together32_aunroll_x_in_c1_eni25_19_tpl_51_rdcnt_i[5:0];

    // redist16_sync_together32_aunroll_x_in_c1_eni25_19_tpl_51_wraddr(REG,283)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist16_sync_together32_aunroll_x_in_c1_eni25_19_tpl_51_wraddr_q <= $unsigned(6'b110000);
        end
        else
        begin
            redist16_sync_together32_aunroll_x_in_c1_eni25_19_tpl_51_wraddr_q <= $unsigned(redist16_sync_together32_aunroll_x_in_c1_eni25_19_tpl_51_rdcnt_q);
        end
    end

    // redist16_sync_together32_aunroll_x_in_c1_eni25_19_tpl_51_mem(DUALMEM,281)
    assign redist16_sync_together32_aunroll_x_in_c1_eni25_19_tpl_51_mem_ia = $unsigned(in_c1_eni25_19_tpl);
    assign redist16_sync_together32_aunroll_x_in_c1_eni25_19_tpl_51_mem_aa = redist16_sync_together32_aunroll_x_in_c1_eni25_19_tpl_51_wraddr_q;
    assign redist16_sync_together32_aunroll_x_in_c1_eni25_19_tpl_51_mem_ab = redist16_sync_together32_aunroll_x_in_c1_eni25_19_tpl_51_rdcnt_q;
    assign redist16_sync_together32_aunroll_x_in_c1_eni25_19_tpl_51_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("M20K"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(6),
        .numwords_a(49),
        .width_b(32),
        .widthad_b(6),
        .numwords_b(49),
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
    ) redist16_sync_together32_aunroll_x_in_c1_eni25_19_tpl_51_mem_dmem (
        .clocken1(redist16_sync_together32_aunroll_x_in_c1_eni25_19_tpl_51_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist16_sync_together32_aunroll_x_in_c1_eni25_19_tpl_51_mem_reset0),
        .clock1(clock),
        .address_a(redist16_sync_together32_aunroll_x_in_c1_eni25_19_tpl_51_mem_aa),
        .data_a(redist16_sync_together32_aunroll_x_in_c1_eni25_19_tpl_51_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist16_sync_together32_aunroll_x_in_c1_eni25_19_tpl_51_mem_ab),
        .q_b(redist16_sync_together32_aunroll_x_in_c1_eni25_19_tpl_51_mem_iq),
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
    assign redist16_sync_together32_aunroll_x_in_c1_eni25_19_tpl_51_mem_q = redist16_sync_together32_aunroll_x_in_c1_eni25_19_tpl_51_mem_iq[31:0];

    // redist16_sync_together32_aunroll_x_in_c1_eni25_19_tpl_51_outputreg0(DELAY,280)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist16_sync_together32_aunroll_x_in_c1_eni25_19_tpl_51_outputreg0_q <= '0;
        end
        else
        begin
            redist16_sync_together32_aunroll_x_in_c1_eni25_19_tpl_51_outputreg0_q <= $unsigned(redist16_sync_together32_aunroll_x_in_c1_eni25_19_tpl_51_mem_q);
        end
    end

    // redist15_sync_together32_aunroll_x_in_c1_eni25_18_tpl_48_notEnable(LOGICAL,276)
    assign redist15_sync_together32_aunroll_x_in_c1_eni25_18_tpl_48_notEnable_q = $unsigned(~ (VCC_q));

    // redist15_sync_together32_aunroll_x_in_c1_eni25_18_tpl_48_nor(LOGICAL,277)
    assign redist15_sync_together32_aunroll_x_in_c1_eni25_18_tpl_48_nor_q = ~ (redist15_sync_together32_aunroll_x_in_c1_eni25_18_tpl_48_notEnable_q | redist15_sync_together32_aunroll_x_in_c1_eni25_18_tpl_48_sticky_ena_q);

    // redist15_sync_together32_aunroll_x_in_c1_eni25_18_tpl_48_mem_last(CONSTANT,273)
    assign redist15_sync_together32_aunroll_x_in_c1_eni25_18_tpl_48_mem_last_q = $unsigned(7'b0101100);

    // redist15_sync_together32_aunroll_x_in_c1_eni25_18_tpl_48_cmp(LOGICAL,274)
    assign redist15_sync_together32_aunroll_x_in_c1_eni25_18_tpl_48_cmp_b = {1'b0, redist15_sync_together32_aunroll_x_in_c1_eni25_18_tpl_48_rdcnt_q};
    assign redist15_sync_together32_aunroll_x_in_c1_eni25_18_tpl_48_cmp_q = $unsigned(redist15_sync_together32_aunroll_x_in_c1_eni25_18_tpl_48_mem_last_q == redist15_sync_together32_aunroll_x_in_c1_eni25_18_tpl_48_cmp_b ? 1'b1 : 1'b0);

    // redist15_sync_together32_aunroll_x_in_c1_eni25_18_tpl_48_cmpReg(REG,275)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist15_sync_together32_aunroll_x_in_c1_eni25_18_tpl_48_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist15_sync_together32_aunroll_x_in_c1_eni25_18_tpl_48_cmpReg_q <= $unsigned(redist15_sync_together32_aunroll_x_in_c1_eni25_18_tpl_48_cmp_q);
        end
    end

    // redist15_sync_together32_aunroll_x_in_c1_eni25_18_tpl_48_sticky_ena(REG,278)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist15_sync_together32_aunroll_x_in_c1_eni25_18_tpl_48_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist15_sync_together32_aunroll_x_in_c1_eni25_18_tpl_48_nor_q == 1'b1)
        begin
            redist15_sync_together32_aunroll_x_in_c1_eni25_18_tpl_48_sticky_ena_q <= $unsigned(redist15_sync_together32_aunroll_x_in_c1_eni25_18_tpl_48_cmpReg_q);
        end
    end

    // redist15_sync_together32_aunroll_x_in_c1_eni25_18_tpl_48_enaAnd(LOGICAL,279)
    assign redist15_sync_together32_aunroll_x_in_c1_eni25_18_tpl_48_enaAnd_q = redist15_sync_together32_aunroll_x_in_c1_eni25_18_tpl_48_sticky_ena_q & VCC_q;

    // redist15_sync_together32_aunroll_x_in_c1_eni25_18_tpl_48_rdcnt(COUNTER,271)
    // low=0, high=45, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist15_sync_together32_aunroll_x_in_c1_eni25_18_tpl_48_rdcnt_i <= 6'd0;
            redist15_sync_together32_aunroll_x_in_c1_eni25_18_tpl_48_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist15_sync_together32_aunroll_x_in_c1_eni25_18_tpl_48_rdcnt_i == 6'd44)
            begin
                redist15_sync_together32_aunroll_x_in_c1_eni25_18_tpl_48_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist15_sync_together32_aunroll_x_in_c1_eni25_18_tpl_48_rdcnt_eq <= 1'b0;
            end
            if (redist15_sync_together32_aunroll_x_in_c1_eni25_18_tpl_48_rdcnt_eq == 1'b1)
            begin
                redist15_sync_together32_aunroll_x_in_c1_eni25_18_tpl_48_rdcnt_i <= $unsigned(redist15_sync_together32_aunroll_x_in_c1_eni25_18_tpl_48_rdcnt_i) + $unsigned(6'd19);
            end
            else
            begin
                redist15_sync_together32_aunroll_x_in_c1_eni25_18_tpl_48_rdcnt_i <= $unsigned(redist15_sync_together32_aunroll_x_in_c1_eni25_18_tpl_48_rdcnt_i) + $unsigned(6'd1);
            end
        end
    end
    assign redist15_sync_together32_aunroll_x_in_c1_eni25_18_tpl_48_rdcnt_q = redist15_sync_together32_aunroll_x_in_c1_eni25_18_tpl_48_rdcnt_i[5:0];

    // redist15_sync_together32_aunroll_x_in_c1_eni25_18_tpl_48_wraddr(REG,272)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist15_sync_together32_aunroll_x_in_c1_eni25_18_tpl_48_wraddr_q <= $unsigned(6'b101101);
        end
        else
        begin
            redist15_sync_together32_aunroll_x_in_c1_eni25_18_tpl_48_wraddr_q <= $unsigned(redist15_sync_together32_aunroll_x_in_c1_eni25_18_tpl_48_rdcnt_q);
        end
    end

    // redist15_sync_together32_aunroll_x_in_c1_eni25_18_tpl_48_mem(DUALMEM,270)
    assign redist15_sync_together32_aunroll_x_in_c1_eni25_18_tpl_48_mem_ia = $unsigned(in_c1_eni25_18_tpl);
    assign redist15_sync_together32_aunroll_x_in_c1_eni25_18_tpl_48_mem_aa = redist15_sync_together32_aunroll_x_in_c1_eni25_18_tpl_48_wraddr_q;
    assign redist15_sync_together32_aunroll_x_in_c1_eni25_18_tpl_48_mem_ab = redist15_sync_together32_aunroll_x_in_c1_eni25_18_tpl_48_rdcnt_q;
    assign redist15_sync_together32_aunroll_x_in_c1_eni25_18_tpl_48_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("M20K"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(6),
        .numwords_a(46),
        .width_b(32),
        .widthad_b(6),
        .numwords_b(46),
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
    ) redist15_sync_together32_aunroll_x_in_c1_eni25_18_tpl_48_mem_dmem (
        .clocken1(redist15_sync_together32_aunroll_x_in_c1_eni25_18_tpl_48_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist15_sync_together32_aunroll_x_in_c1_eni25_18_tpl_48_mem_reset0),
        .clock1(clock),
        .address_a(redist15_sync_together32_aunroll_x_in_c1_eni25_18_tpl_48_mem_aa),
        .data_a(redist15_sync_together32_aunroll_x_in_c1_eni25_18_tpl_48_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist15_sync_together32_aunroll_x_in_c1_eni25_18_tpl_48_mem_ab),
        .q_b(redist15_sync_together32_aunroll_x_in_c1_eni25_18_tpl_48_mem_iq),
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
    assign redist15_sync_together32_aunroll_x_in_c1_eni25_18_tpl_48_mem_q = redist15_sync_together32_aunroll_x_in_c1_eni25_18_tpl_48_mem_iq[31:0];

    // redist15_sync_together32_aunroll_x_in_c1_eni25_18_tpl_48_outputreg0(DELAY,269)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist15_sync_together32_aunroll_x_in_c1_eni25_18_tpl_48_outputreg0_q <= '0;
        end
        else
        begin
            redist15_sync_together32_aunroll_x_in_c1_eni25_18_tpl_48_outputreg0_q <= $unsigned(redist15_sync_together32_aunroll_x_in_c1_eni25_18_tpl_48_mem_q);
        end
    end

    // redist14_sync_together32_aunroll_x_in_c1_eni25_17_tpl_45_notEnable(LOGICAL,265)
    assign redist14_sync_together32_aunroll_x_in_c1_eni25_17_tpl_45_notEnable_q = $unsigned(~ (VCC_q));

    // redist14_sync_together32_aunroll_x_in_c1_eni25_17_tpl_45_nor(LOGICAL,266)
    assign redist14_sync_together32_aunroll_x_in_c1_eni25_17_tpl_45_nor_q = ~ (redist14_sync_together32_aunroll_x_in_c1_eni25_17_tpl_45_notEnable_q | redist14_sync_together32_aunroll_x_in_c1_eni25_17_tpl_45_sticky_ena_q);

    // redist14_sync_together32_aunroll_x_in_c1_eni25_17_tpl_45_mem_last(CONSTANT,262)
    assign redist14_sync_together32_aunroll_x_in_c1_eni25_17_tpl_45_mem_last_q = $unsigned(7'b0101001);

    // redist14_sync_together32_aunroll_x_in_c1_eni25_17_tpl_45_cmp(LOGICAL,263)
    assign redist14_sync_together32_aunroll_x_in_c1_eni25_17_tpl_45_cmp_b = {1'b0, redist14_sync_together32_aunroll_x_in_c1_eni25_17_tpl_45_rdcnt_q};
    assign redist14_sync_together32_aunroll_x_in_c1_eni25_17_tpl_45_cmp_q = $unsigned(redist14_sync_together32_aunroll_x_in_c1_eni25_17_tpl_45_mem_last_q == redist14_sync_together32_aunroll_x_in_c1_eni25_17_tpl_45_cmp_b ? 1'b1 : 1'b0);

    // redist14_sync_together32_aunroll_x_in_c1_eni25_17_tpl_45_cmpReg(REG,264)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_sync_together32_aunroll_x_in_c1_eni25_17_tpl_45_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist14_sync_together32_aunroll_x_in_c1_eni25_17_tpl_45_cmpReg_q <= $unsigned(redist14_sync_together32_aunroll_x_in_c1_eni25_17_tpl_45_cmp_q);
        end
    end

    // redist14_sync_together32_aunroll_x_in_c1_eni25_17_tpl_45_sticky_ena(REG,267)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_sync_together32_aunroll_x_in_c1_eni25_17_tpl_45_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist14_sync_together32_aunroll_x_in_c1_eni25_17_tpl_45_nor_q == 1'b1)
        begin
            redist14_sync_together32_aunroll_x_in_c1_eni25_17_tpl_45_sticky_ena_q <= $unsigned(redist14_sync_together32_aunroll_x_in_c1_eni25_17_tpl_45_cmpReg_q);
        end
    end

    // redist14_sync_together32_aunroll_x_in_c1_eni25_17_tpl_45_enaAnd(LOGICAL,268)
    assign redist14_sync_together32_aunroll_x_in_c1_eni25_17_tpl_45_enaAnd_q = redist14_sync_together32_aunroll_x_in_c1_eni25_17_tpl_45_sticky_ena_q & VCC_q;

    // redist14_sync_together32_aunroll_x_in_c1_eni25_17_tpl_45_rdcnt(COUNTER,260)
    // low=0, high=42, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_sync_together32_aunroll_x_in_c1_eni25_17_tpl_45_rdcnt_i <= 6'd0;
            redist14_sync_together32_aunroll_x_in_c1_eni25_17_tpl_45_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist14_sync_together32_aunroll_x_in_c1_eni25_17_tpl_45_rdcnt_i == 6'd41)
            begin
                redist14_sync_together32_aunroll_x_in_c1_eni25_17_tpl_45_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist14_sync_together32_aunroll_x_in_c1_eni25_17_tpl_45_rdcnt_eq <= 1'b0;
            end
            if (redist14_sync_together32_aunroll_x_in_c1_eni25_17_tpl_45_rdcnt_eq == 1'b1)
            begin
                redist14_sync_together32_aunroll_x_in_c1_eni25_17_tpl_45_rdcnt_i <= $unsigned(redist14_sync_together32_aunroll_x_in_c1_eni25_17_tpl_45_rdcnt_i) + $unsigned(6'd22);
            end
            else
            begin
                redist14_sync_together32_aunroll_x_in_c1_eni25_17_tpl_45_rdcnt_i <= $unsigned(redist14_sync_together32_aunroll_x_in_c1_eni25_17_tpl_45_rdcnt_i) + $unsigned(6'd1);
            end
        end
    end
    assign redist14_sync_together32_aunroll_x_in_c1_eni25_17_tpl_45_rdcnt_q = redist14_sync_together32_aunroll_x_in_c1_eni25_17_tpl_45_rdcnt_i[5:0];

    // redist14_sync_together32_aunroll_x_in_c1_eni25_17_tpl_45_wraddr(REG,261)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_sync_together32_aunroll_x_in_c1_eni25_17_tpl_45_wraddr_q <= $unsigned(6'b101010);
        end
        else
        begin
            redist14_sync_together32_aunroll_x_in_c1_eni25_17_tpl_45_wraddr_q <= $unsigned(redist14_sync_together32_aunroll_x_in_c1_eni25_17_tpl_45_rdcnt_q);
        end
    end

    // redist14_sync_together32_aunroll_x_in_c1_eni25_17_tpl_45_mem(DUALMEM,259)
    assign redist14_sync_together32_aunroll_x_in_c1_eni25_17_tpl_45_mem_ia = $unsigned(in_c1_eni25_17_tpl);
    assign redist14_sync_together32_aunroll_x_in_c1_eni25_17_tpl_45_mem_aa = redist14_sync_together32_aunroll_x_in_c1_eni25_17_tpl_45_wraddr_q;
    assign redist14_sync_together32_aunroll_x_in_c1_eni25_17_tpl_45_mem_ab = redist14_sync_together32_aunroll_x_in_c1_eni25_17_tpl_45_rdcnt_q;
    assign redist14_sync_together32_aunroll_x_in_c1_eni25_17_tpl_45_mem_reset0 = ~ (resetn);
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
    ) redist14_sync_together32_aunroll_x_in_c1_eni25_17_tpl_45_mem_dmem (
        .clocken1(redist14_sync_together32_aunroll_x_in_c1_eni25_17_tpl_45_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist14_sync_together32_aunroll_x_in_c1_eni25_17_tpl_45_mem_reset0),
        .clock1(clock),
        .address_a(redist14_sync_together32_aunroll_x_in_c1_eni25_17_tpl_45_mem_aa),
        .data_a(redist14_sync_together32_aunroll_x_in_c1_eni25_17_tpl_45_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist14_sync_together32_aunroll_x_in_c1_eni25_17_tpl_45_mem_ab),
        .q_b(redist14_sync_together32_aunroll_x_in_c1_eni25_17_tpl_45_mem_iq),
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
    assign redist14_sync_together32_aunroll_x_in_c1_eni25_17_tpl_45_mem_q = redist14_sync_together32_aunroll_x_in_c1_eni25_17_tpl_45_mem_iq[31:0];

    // redist14_sync_together32_aunroll_x_in_c1_eni25_17_tpl_45_outputreg0(DELAY,258)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_sync_together32_aunroll_x_in_c1_eni25_17_tpl_45_outputreg0_q <= '0;
        end
        else
        begin
            redist14_sync_together32_aunroll_x_in_c1_eni25_17_tpl_45_outputreg0_q <= $unsigned(redist14_sync_together32_aunroll_x_in_c1_eni25_17_tpl_45_mem_q);
        end
    end

    // redist13_sync_together32_aunroll_x_in_c1_eni25_16_tpl_42_notEnable(LOGICAL,254)
    assign redist13_sync_together32_aunroll_x_in_c1_eni25_16_tpl_42_notEnable_q = $unsigned(~ (VCC_q));

    // redist13_sync_together32_aunroll_x_in_c1_eni25_16_tpl_42_nor(LOGICAL,255)
    assign redist13_sync_together32_aunroll_x_in_c1_eni25_16_tpl_42_nor_q = ~ (redist13_sync_together32_aunroll_x_in_c1_eni25_16_tpl_42_notEnable_q | redist13_sync_together32_aunroll_x_in_c1_eni25_16_tpl_42_sticky_ena_q);

    // redist13_sync_together32_aunroll_x_in_c1_eni25_16_tpl_42_mem_last(CONSTANT,251)
    assign redist13_sync_together32_aunroll_x_in_c1_eni25_16_tpl_42_mem_last_q = $unsigned(7'b0100110);

    // redist13_sync_together32_aunroll_x_in_c1_eni25_16_tpl_42_cmp(LOGICAL,252)
    assign redist13_sync_together32_aunroll_x_in_c1_eni25_16_tpl_42_cmp_b = {1'b0, redist13_sync_together32_aunroll_x_in_c1_eni25_16_tpl_42_rdcnt_q};
    assign redist13_sync_together32_aunroll_x_in_c1_eni25_16_tpl_42_cmp_q = $unsigned(redist13_sync_together32_aunroll_x_in_c1_eni25_16_tpl_42_mem_last_q == redist13_sync_together32_aunroll_x_in_c1_eni25_16_tpl_42_cmp_b ? 1'b1 : 1'b0);

    // redist13_sync_together32_aunroll_x_in_c1_eni25_16_tpl_42_cmpReg(REG,253)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_sync_together32_aunroll_x_in_c1_eni25_16_tpl_42_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist13_sync_together32_aunroll_x_in_c1_eni25_16_tpl_42_cmpReg_q <= $unsigned(redist13_sync_together32_aunroll_x_in_c1_eni25_16_tpl_42_cmp_q);
        end
    end

    // redist13_sync_together32_aunroll_x_in_c1_eni25_16_tpl_42_sticky_ena(REG,256)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_sync_together32_aunroll_x_in_c1_eni25_16_tpl_42_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist13_sync_together32_aunroll_x_in_c1_eni25_16_tpl_42_nor_q == 1'b1)
        begin
            redist13_sync_together32_aunroll_x_in_c1_eni25_16_tpl_42_sticky_ena_q <= $unsigned(redist13_sync_together32_aunroll_x_in_c1_eni25_16_tpl_42_cmpReg_q);
        end
    end

    // redist13_sync_together32_aunroll_x_in_c1_eni25_16_tpl_42_enaAnd(LOGICAL,257)
    assign redist13_sync_together32_aunroll_x_in_c1_eni25_16_tpl_42_enaAnd_q = redist13_sync_together32_aunroll_x_in_c1_eni25_16_tpl_42_sticky_ena_q & VCC_q;

    // redist13_sync_together32_aunroll_x_in_c1_eni25_16_tpl_42_rdcnt(COUNTER,249)
    // low=0, high=39, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_sync_together32_aunroll_x_in_c1_eni25_16_tpl_42_rdcnt_i <= 6'd0;
            redist13_sync_together32_aunroll_x_in_c1_eni25_16_tpl_42_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist13_sync_together32_aunroll_x_in_c1_eni25_16_tpl_42_rdcnt_i == 6'd38)
            begin
                redist13_sync_together32_aunroll_x_in_c1_eni25_16_tpl_42_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist13_sync_together32_aunroll_x_in_c1_eni25_16_tpl_42_rdcnt_eq <= 1'b0;
            end
            if (redist13_sync_together32_aunroll_x_in_c1_eni25_16_tpl_42_rdcnt_eq == 1'b1)
            begin
                redist13_sync_together32_aunroll_x_in_c1_eni25_16_tpl_42_rdcnt_i <= $unsigned(redist13_sync_together32_aunroll_x_in_c1_eni25_16_tpl_42_rdcnt_i) + $unsigned(6'd25);
            end
            else
            begin
                redist13_sync_together32_aunroll_x_in_c1_eni25_16_tpl_42_rdcnt_i <= $unsigned(redist13_sync_together32_aunroll_x_in_c1_eni25_16_tpl_42_rdcnt_i) + $unsigned(6'd1);
            end
        end
    end
    assign redist13_sync_together32_aunroll_x_in_c1_eni25_16_tpl_42_rdcnt_q = redist13_sync_together32_aunroll_x_in_c1_eni25_16_tpl_42_rdcnt_i[5:0];

    // redist13_sync_together32_aunroll_x_in_c1_eni25_16_tpl_42_wraddr(REG,250)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_sync_together32_aunroll_x_in_c1_eni25_16_tpl_42_wraddr_q <= $unsigned(6'b100111);
        end
        else
        begin
            redist13_sync_together32_aunroll_x_in_c1_eni25_16_tpl_42_wraddr_q <= $unsigned(redist13_sync_together32_aunroll_x_in_c1_eni25_16_tpl_42_rdcnt_q);
        end
    end

    // redist13_sync_together32_aunroll_x_in_c1_eni25_16_tpl_42_mem(DUALMEM,248)
    assign redist13_sync_together32_aunroll_x_in_c1_eni25_16_tpl_42_mem_ia = $unsigned(in_c1_eni25_16_tpl);
    assign redist13_sync_together32_aunroll_x_in_c1_eni25_16_tpl_42_mem_aa = redist13_sync_together32_aunroll_x_in_c1_eni25_16_tpl_42_wraddr_q;
    assign redist13_sync_together32_aunroll_x_in_c1_eni25_16_tpl_42_mem_ab = redist13_sync_together32_aunroll_x_in_c1_eni25_16_tpl_42_rdcnt_q;
    assign redist13_sync_together32_aunroll_x_in_c1_eni25_16_tpl_42_mem_reset0 = ~ (resetn);
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
    ) redist13_sync_together32_aunroll_x_in_c1_eni25_16_tpl_42_mem_dmem (
        .clocken1(redist13_sync_together32_aunroll_x_in_c1_eni25_16_tpl_42_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist13_sync_together32_aunroll_x_in_c1_eni25_16_tpl_42_mem_reset0),
        .clock1(clock),
        .address_a(redist13_sync_together32_aunroll_x_in_c1_eni25_16_tpl_42_mem_aa),
        .data_a(redist13_sync_together32_aunroll_x_in_c1_eni25_16_tpl_42_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist13_sync_together32_aunroll_x_in_c1_eni25_16_tpl_42_mem_ab),
        .q_b(redist13_sync_together32_aunroll_x_in_c1_eni25_16_tpl_42_mem_iq),
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
    assign redist13_sync_together32_aunroll_x_in_c1_eni25_16_tpl_42_mem_q = redist13_sync_together32_aunroll_x_in_c1_eni25_16_tpl_42_mem_iq[31:0];

    // redist13_sync_together32_aunroll_x_in_c1_eni25_16_tpl_42_outputreg0(DELAY,247)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_sync_together32_aunroll_x_in_c1_eni25_16_tpl_42_outputreg0_q <= '0;
        end
        else
        begin
            redist13_sync_together32_aunroll_x_in_c1_eni25_16_tpl_42_outputreg0_q <= $unsigned(redist13_sync_together32_aunroll_x_in_c1_eni25_16_tpl_42_mem_q);
        end
    end

    // redist12_sync_together32_aunroll_x_in_c1_eni25_15_tpl_39_notEnable(LOGICAL,243)
    assign redist12_sync_together32_aunroll_x_in_c1_eni25_15_tpl_39_notEnable_q = $unsigned(~ (VCC_q));

    // redist12_sync_together32_aunroll_x_in_c1_eni25_15_tpl_39_nor(LOGICAL,244)
    assign redist12_sync_together32_aunroll_x_in_c1_eni25_15_tpl_39_nor_q = ~ (redist12_sync_together32_aunroll_x_in_c1_eni25_15_tpl_39_notEnable_q | redist12_sync_together32_aunroll_x_in_c1_eni25_15_tpl_39_sticky_ena_q);

    // redist12_sync_together32_aunroll_x_in_c1_eni25_15_tpl_39_mem_last(CONSTANT,240)
    assign redist12_sync_together32_aunroll_x_in_c1_eni25_15_tpl_39_mem_last_q = $unsigned(3'b010);

    // redist12_sync_together32_aunroll_x_in_c1_eni25_15_tpl_39_cmp(LOGICAL,241)
    assign redist12_sync_together32_aunroll_x_in_c1_eni25_15_tpl_39_cmp_b = {1'b0, redist12_sync_together32_aunroll_x_in_c1_eni25_15_tpl_39_rdcnt_q};
    assign redist12_sync_together32_aunroll_x_in_c1_eni25_15_tpl_39_cmp_q = $unsigned(redist12_sync_together32_aunroll_x_in_c1_eni25_15_tpl_39_mem_last_q == redist12_sync_together32_aunroll_x_in_c1_eni25_15_tpl_39_cmp_b ? 1'b1 : 1'b0);

    // redist12_sync_together32_aunroll_x_in_c1_eni25_15_tpl_39_cmpReg(REG,242)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_sync_together32_aunroll_x_in_c1_eni25_15_tpl_39_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist12_sync_together32_aunroll_x_in_c1_eni25_15_tpl_39_cmpReg_q <= $unsigned(redist12_sync_together32_aunroll_x_in_c1_eni25_15_tpl_39_cmp_q);
        end
    end

    // redist12_sync_together32_aunroll_x_in_c1_eni25_15_tpl_39_sticky_ena(REG,245)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_sync_together32_aunroll_x_in_c1_eni25_15_tpl_39_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist12_sync_together32_aunroll_x_in_c1_eni25_15_tpl_39_nor_q == 1'b1)
        begin
            redist12_sync_together32_aunroll_x_in_c1_eni25_15_tpl_39_sticky_ena_q <= $unsigned(redist12_sync_together32_aunroll_x_in_c1_eni25_15_tpl_39_cmpReg_q);
        end
    end

    // redist12_sync_together32_aunroll_x_in_c1_eni25_15_tpl_39_enaAnd(LOGICAL,246)
    assign redist12_sync_together32_aunroll_x_in_c1_eni25_15_tpl_39_enaAnd_q = redist12_sync_together32_aunroll_x_in_c1_eni25_15_tpl_39_sticky_ena_q & VCC_q;

    // redist12_sync_together32_aunroll_x_in_c1_eni25_15_tpl_39_rdcnt(COUNTER,238)
    // low=0, high=3, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_sync_together32_aunroll_x_in_c1_eni25_15_tpl_39_rdcnt_i <= 2'd0;
        end
        else
        begin
            redist12_sync_together32_aunroll_x_in_c1_eni25_15_tpl_39_rdcnt_i <= $unsigned(redist12_sync_together32_aunroll_x_in_c1_eni25_15_tpl_39_rdcnt_i) + $unsigned(2'd1);
        end
    end
    assign redist12_sync_together32_aunroll_x_in_c1_eni25_15_tpl_39_rdcnt_q = redist12_sync_together32_aunroll_x_in_c1_eni25_15_tpl_39_rdcnt_i[1:0];

    // redist12_sync_together32_aunroll_x_in_c1_eni25_15_tpl_39_split_0_nor(LOGICAL,374)
    assign redist12_sync_together32_aunroll_x_in_c1_eni25_15_tpl_39_split_0_nor_q = ~ (redist12_sync_together32_aunroll_x_in_c1_eni25_15_tpl_39_notEnable_q | redist12_sync_together32_aunroll_x_in_c1_eni25_15_tpl_39_split_0_sticky_ena_q);

    // redist12_sync_together32_aunroll_x_in_c1_eni25_15_tpl_39_split_0_mem_last(CONSTANT,370)
    assign redist12_sync_together32_aunroll_x_in_c1_eni25_15_tpl_39_split_0_mem_last_q = $unsigned(6'b011110);

    // redist12_sync_together32_aunroll_x_in_c1_eni25_15_tpl_39_split_0_cmp(LOGICAL,371)
    assign redist12_sync_together32_aunroll_x_in_c1_eni25_15_tpl_39_split_0_cmp_b = {1'b0, redist12_sync_together32_aunroll_x_in_c1_eni25_15_tpl_39_split_0_rdcnt_q};
    assign redist12_sync_together32_aunroll_x_in_c1_eni25_15_tpl_39_split_0_cmp_q = $unsigned(redist12_sync_together32_aunroll_x_in_c1_eni25_15_tpl_39_split_0_mem_last_q == redist12_sync_together32_aunroll_x_in_c1_eni25_15_tpl_39_split_0_cmp_b ? 1'b1 : 1'b0);

    // redist12_sync_together32_aunroll_x_in_c1_eni25_15_tpl_39_split_0_cmpReg(REG,372)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_sync_together32_aunroll_x_in_c1_eni25_15_tpl_39_split_0_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist12_sync_together32_aunroll_x_in_c1_eni25_15_tpl_39_split_0_cmpReg_q <= $unsigned(redist12_sync_together32_aunroll_x_in_c1_eni25_15_tpl_39_split_0_cmp_q);
        end
    end

    // redist12_sync_together32_aunroll_x_in_c1_eni25_15_tpl_39_split_0_sticky_ena(REG,375)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_sync_together32_aunroll_x_in_c1_eni25_15_tpl_39_split_0_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist12_sync_together32_aunroll_x_in_c1_eni25_15_tpl_39_split_0_nor_q == 1'b1)
        begin
            redist12_sync_together32_aunroll_x_in_c1_eni25_15_tpl_39_split_0_sticky_ena_q <= $unsigned(redist12_sync_together32_aunroll_x_in_c1_eni25_15_tpl_39_split_0_cmpReg_q);
        end
    end

    // redist12_sync_together32_aunroll_x_in_c1_eni25_15_tpl_39_split_0_enaAnd(LOGICAL,376)
    assign redist12_sync_together32_aunroll_x_in_c1_eni25_15_tpl_39_split_0_enaAnd_q = redist12_sync_together32_aunroll_x_in_c1_eni25_15_tpl_39_split_0_sticky_ena_q & VCC_q;

    // redist12_sync_together32_aunroll_x_in_c1_eni25_15_tpl_39_split_0_rdcnt(COUNTER,368)
    // low=0, high=31, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_sync_together32_aunroll_x_in_c1_eni25_15_tpl_39_split_0_rdcnt_i <= 5'd0;
        end
        else
        begin
            redist12_sync_together32_aunroll_x_in_c1_eni25_15_tpl_39_split_0_rdcnt_i <= $unsigned(redist12_sync_together32_aunroll_x_in_c1_eni25_15_tpl_39_split_0_rdcnt_i) + $unsigned(5'd1);
        end
    end
    assign redist12_sync_together32_aunroll_x_in_c1_eni25_15_tpl_39_split_0_rdcnt_q = redist12_sync_together32_aunroll_x_in_c1_eni25_15_tpl_39_split_0_rdcnt_i[4:0];

    // redist12_sync_together32_aunroll_x_in_c1_eni25_15_tpl_39_split_0_wraddr(REG,369)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_sync_together32_aunroll_x_in_c1_eni25_15_tpl_39_split_0_wraddr_q <= $unsigned(5'b11111);
        end
        else
        begin
            redist12_sync_together32_aunroll_x_in_c1_eni25_15_tpl_39_split_0_wraddr_q <= $unsigned(redist12_sync_together32_aunroll_x_in_c1_eni25_15_tpl_39_split_0_rdcnt_q);
        end
    end

    // redist12_sync_together32_aunroll_x_in_c1_eni25_15_tpl_39_split_0_mem(DUALMEM,367)
    assign redist12_sync_together32_aunroll_x_in_c1_eni25_15_tpl_39_split_0_mem_ia = $unsigned(in_c1_eni25_15_tpl);
    assign redist12_sync_together32_aunroll_x_in_c1_eni25_15_tpl_39_split_0_mem_aa = redist12_sync_together32_aunroll_x_in_c1_eni25_15_tpl_39_split_0_wraddr_q;
    assign redist12_sync_together32_aunroll_x_in_c1_eni25_15_tpl_39_split_0_mem_ab = redist12_sync_together32_aunroll_x_in_c1_eni25_15_tpl_39_split_0_rdcnt_q;
    assign redist12_sync_together32_aunroll_x_in_c1_eni25_15_tpl_39_split_0_mem_reset0 = ~ (resetn);
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
    ) redist12_sync_together32_aunroll_x_in_c1_eni25_15_tpl_39_split_0_mem_dmem (
        .clocken1(redist12_sync_together32_aunroll_x_in_c1_eni25_15_tpl_39_split_0_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist12_sync_together32_aunroll_x_in_c1_eni25_15_tpl_39_split_0_mem_reset0),
        .clock1(clock),
        .address_a(redist12_sync_together32_aunroll_x_in_c1_eni25_15_tpl_39_split_0_mem_aa),
        .data_a(redist12_sync_together32_aunroll_x_in_c1_eni25_15_tpl_39_split_0_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist12_sync_together32_aunroll_x_in_c1_eni25_15_tpl_39_split_0_mem_ab),
        .q_b(redist12_sync_together32_aunroll_x_in_c1_eni25_15_tpl_39_split_0_mem_iq),
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
    assign redist12_sync_together32_aunroll_x_in_c1_eni25_15_tpl_39_split_0_mem_q = redist12_sync_together32_aunroll_x_in_c1_eni25_15_tpl_39_split_0_mem_iq[31:0];

    // redist12_sync_together32_aunroll_x_in_c1_eni25_15_tpl_39_wraddr(REG,239)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_sync_together32_aunroll_x_in_c1_eni25_15_tpl_39_wraddr_q <= $unsigned(2'b11);
        end
        else
        begin
            redist12_sync_together32_aunroll_x_in_c1_eni25_15_tpl_39_wraddr_q <= $unsigned(redist12_sync_together32_aunroll_x_in_c1_eni25_15_tpl_39_rdcnt_q);
        end
    end

    // redist12_sync_together32_aunroll_x_in_c1_eni25_15_tpl_39_mem(DUALMEM,237)
    assign redist12_sync_together32_aunroll_x_in_c1_eni25_15_tpl_39_mem_ia = $unsigned(redist12_sync_together32_aunroll_x_in_c1_eni25_15_tpl_39_split_0_mem_q);
    assign redist12_sync_together32_aunroll_x_in_c1_eni25_15_tpl_39_mem_aa = redist12_sync_together32_aunroll_x_in_c1_eni25_15_tpl_39_wraddr_q;
    assign redist12_sync_together32_aunroll_x_in_c1_eni25_15_tpl_39_mem_ab = redist12_sync_together32_aunroll_x_in_c1_eni25_15_tpl_39_rdcnt_q;
    assign redist12_sync_together32_aunroll_x_in_c1_eni25_15_tpl_39_mem_reset0 = ~ (resetn);
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
    ) redist12_sync_together32_aunroll_x_in_c1_eni25_15_tpl_39_mem_dmem (
        .clocken1(redist12_sync_together32_aunroll_x_in_c1_eni25_15_tpl_39_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist12_sync_together32_aunroll_x_in_c1_eni25_15_tpl_39_mem_reset0),
        .clock1(clock),
        .address_a(redist12_sync_together32_aunroll_x_in_c1_eni25_15_tpl_39_mem_aa),
        .data_a(redist12_sync_together32_aunroll_x_in_c1_eni25_15_tpl_39_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist12_sync_together32_aunroll_x_in_c1_eni25_15_tpl_39_mem_ab),
        .q_b(redist12_sync_together32_aunroll_x_in_c1_eni25_15_tpl_39_mem_iq),
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
    assign redist12_sync_together32_aunroll_x_in_c1_eni25_15_tpl_39_mem_q = redist12_sync_together32_aunroll_x_in_c1_eni25_15_tpl_39_mem_iq[31:0];

    // redist12_sync_together32_aunroll_x_in_c1_eni25_15_tpl_39_outputreg0(DELAY,236)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_sync_together32_aunroll_x_in_c1_eni25_15_tpl_39_outputreg0_q <= '0;
        end
        else
        begin
            redist12_sync_together32_aunroll_x_in_c1_eni25_15_tpl_39_outputreg0_q <= $unsigned(redist12_sync_together32_aunroll_x_in_c1_eni25_15_tpl_39_mem_q);
        end
    end

    // redist11_sync_together32_aunroll_x_in_c1_eni25_14_tpl_36_split_0_notEnable(LOGICAL,363)
    assign redist11_sync_together32_aunroll_x_in_c1_eni25_14_tpl_36_split_0_notEnable_q = $unsigned(~ (VCC_q));

    // redist11_sync_together32_aunroll_x_in_c1_eni25_14_tpl_36_split_0_nor(LOGICAL,364)
    assign redist11_sync_together32_aunroll_x_in_c1_eni25_14_tpl_36_split_0_nor_q = ~ (redist11_sync_together32_aunroll_x_in_c1_eni25_14_tpl_36_split_0_notEnable_q | redist11_sync_together32_aunroll_x_in_c1_eni25_14_tpl_36_split_0_sticky_ena_q);

    // redist11_sync_together32_aunroll_x_in_c1_eni25_14_tpl_36_split_0_mem_last(CONSTANT,360)
    assign redist11_sync_together32_aunroll_x_in_c1_eni25_14_tpl_36_split_0_mem_last_q = $unsigned(6'b011110);

    // redist11_sync_together32_aunroll_x_in_c1_eni25_14_tpl_36_split_0_cmp(LOGICAL,361)
    assign redist11_sync_together32_aunroll_x_in_c1_eni25_14_tpl_36_split_0_cmp_b = {1'b0, redist11_sync_together32_aunroll_x_in_c1_eni25_14_tpl_36_split_0_rdcnt_q};
    assign redist11_sync_together32_aunroll_x_in_c1_eni25_14_tpl_36_split_0_cmp_q = $unsigned(redist11_sync_together32_aunroll_x_in_c1_eni25_14_tpl_36_split_0_mem_last_q == redist11_sync_together32_aunroll_x_in_c1_eni25_14_tpl_36_split_0_cmp_b ? 1'b1 : 1'b0);

    // redist11_sync_together32_aunroll_x_in_c1_eni25_14_tpl_36_split_0_cmpReg(REG,362)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_sync_together32_aunroll_x_in_c1_eni25_14_tpl_36_split_0_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist11_sync_together32_aunroll_x_in_c1_eni25_14_tpl_36_split_0_cmpReg_q <= $unsigned(redist11_sync_together32_aunroll_x_in_c1_eni25_14_tpl_36_split_0_cmp_q);
        end
    end

    // redist11_sync_together32_aunroll_x_in_c1_eni25_14_tpl_36_split_0_sticky_ena(REG,365)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_sync_together32_aunroll_x_in_c1_eni25_14_tpl_36_split_0_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist11_sync_together32_aunroll_x_in_c1_eni25_14_tpl_36_split_0_nor_q == 1'b1)
        begin
            redist11_sync_together32_aunroll_x_in_c1_eni25_14_tpl_36_split_0_sticky_ena_q <= $unsigned(redist11_sync_together32_aunroll_x_in_c1_eni25_14_tpl_36_split_0_cmpReg_q);
        end
    end

    // redist11_sync_together32_aunroll_x_in_c1_eni25_14_tpl_36_split_0_enaAnd(LOGICAL,366)
    assign redist11_sync_together32_aunroll_x_in_c1_eni25_14_tpl_36_split_0_enaAnd_q = redist11_sync_together32_aunroll_x_in_c1_eni25_14_tpl_36_split_0_sticky_ena_q & VCC_q;

    // redist11_sync_together32_aunroll_x_in_c1_eni25_14_tpl_36_split_0_rdcnt(COUNTER,358)
    // low=0, high=31, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_sync_together32_aunroll_x_in_c1_eni25_14_tpl_36_split_0_rdcnt_i <= 5'd0;
        end
        else
        begin
            redist11_sync_together32_aunroll_x_in_c1_eni25_14_tpl_36_split_0_rdcnt_i <= $unsigned(redist11_sync_together32_aunroll_x_in_c1_eni25_14_tpl_36_split_0_rdcnt_i) + $unsigned(5'd1);
        end
    end
    assign redist11_sync_together32_aunroll_x_in_c1_eni25_14_tpl_36_split_0_rdcnt_q = redist11_sync_together32_aunroll_x_in_c1_eni25_14_tpl_36_split_0_rdcnt_i[4:0];

    // redist11_sync_together32_aunroll_x_in_c1_eni25_14_tpl_36_split_0_wraddr(REG,359)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_sync_together32_aunroll_x_in_c1_eni25_14_tpl_36_split_0_wraddr_q <= $unsigned(5'b11111);
        end
        else
        begin
            redist11_sync_together32_aunroll_x_in_c1_eni25_14_tpl_36_split_0_wraddr_q <= $unsigned(redist11_sync_together32_aunroll_x_in_c1_eni25_14_tpl_36_split_0_rdcnt_q);
        end
    end

    // redist11_sync_together32_aunroll_x_in_c1_eni25_14_tpl_36_split_0_mem(DUALMEM,357)
    assign redist11_sync_together32_aunroll_x_in_c1_eni25_14_tpl_36_split_0_mem_ia = $unsigned(in_c1_eni25_14_tpl);
    assign redist11_sync_together32_aunroll_x_in_c1_eni25_14_tpl_36_split_0_mem_aa = redist11_sync_together32_aunroll_x_in_c1_eni25_14_tpl_36_split_0_wraddr_q;
    assign redist11_sync_together32_aunroll_x_in_c1_eni25_14_tpl_36_split_0_mem_ab = redist11_sync_together32_aunroll_x_in_c1_eni25_14_tpl_36_split_0_rdcnt_q;
    assign redist11_sync_together32_aunroll_x_in_c1_eni25_14_tpl_36_split_0_mem_reset0 = ~ (resetn);
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
    ) redist11_sync_together32_aunroll_x_in_c1_eni25_14_tpl_36_split_0_mem_dmem (
        .clocken1(redist11_sync_together32_aunroll_x_in_c1_eni25_14_tpl_36_split_0_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist11_sync_together32_aunroll_x_in_c1_eni25_14_tpl_36_split_0_mem_reset0),
        .clock1(clock),
        .address_a(redist11_sync_together32_aunroll_x_in_c1_eni25_14_tpl_36_split_0_mem_aa),
        .data_a(redist11_sync_together32_aunroll_x_in_c1_eni25_14_tpl_36_split_0_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist11_sync_together32_aunroll_x_in_c1_eni25_14_tpl_36_split_0_mem_ab),
        .q_b(redist11_sync_together32_aunroll_x_in_c1_eni25_14_tpl_36_split_0_mem_iq),
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
    assign redist11_sync_together32_aunroll_x_in_c1_eni25_14_tpl_36_split_0_mem_q = redist11_sync_together32_aunroll_x_in_c1_eni25_14_tpl_36_split_0_mem_iq[31:0];

    // redist11_sync_together32_aunroll_x_in_c1_eni25_14_tpl_36(DELAY,108)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_sync_together32_aunroll_x_in_c1_eni25_14_tpl_36_delay_0 <= '0;
            redist11_sync_together32_aunroll_x_in_c1_eni25_14_tpl_36_q <= '0;
        end
        else
        begin
            redist11_sync_together32_aunroll_x_in_c1_eni25_14_tpl_36_delay_0 <= $unsigned(redist11_sync_together32_aunroll_x_in_c1_eni25_14_tpl_36_split_0_mem_q);
            redist11_sync_together32_aunroll_x_in_c1_eni25_14_tpl_36_q <= redist11_sync_together32_aunroll_x_in_c1_eni25_14_tpl_36_delay_0;
        end
    end

    // redist11_sync_together32_aunroll_x_in_c1_eni25_14_tpl_36_outputreg0(DELAY,235)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_sync_together32_aunroll_x_in_c1_eni25_14_tpl_36_outputreg0_q <= '0;
        end
        else
        begin
            redist11_sync_together32_aunroll_x_in_c1_eni25_14_tpl_36_outputreg0_q <= $unsigned(redist11_sync_together32_aunroll_x_in_c1_eni25_14_tpl_36_q);
        end
    end

    // redist10_sync_together32_aunroll_x_in_c1_eni25_13_tpl_33_notEnable(LOGICAL,231)
    assign redist10_sync_together32_aunroll_x_in_c1_eni25_13_tpl_33_notEnable_q = $unsigned(~ (VCC_q));

    // redist10_sync_together32_aunroll_x_in_c1_eni25_13_tpl_33_nor(LOGICAL,232)
    assign redist10_sync_together32_aunroll_x_in_c1_eni25_13_tpl_33_nor_q = ~ (redist10_sync_together32_aunroll_x_in_c1_eni25_13_tpl_33_notEnable_q | redist10_sync_together32_aunroll_x_in_c1_eni25_13_tpl_33_sticky_ena_q);

    // redist10_sync_together32_aunroll_x_in_c1_eni25_13_tpl_33_mem_last(CONSTANT,228)
    assign redist10_sync_together32_aunroll_x_in_c1_eni25_13_tpl_33_mem_last_q = $unsigned(6'b011101);

    // redist10_sync_together32_aunroll_x_in_c1_eni25_13_tpl_33_cmp(LOGICAL,229)
    assign redist10_sync_together32_aunroll_x_in_c1_eni25_13_tpl_33_cmp_b = {1'b0, redist10_sync_together32_aunroll_x_in_c1_eni25_13_tpl_33_rdcnt_q};
    assign redist10_sync_together32_aunroll_x_in_c1_eni25_13_tpl_33_cmp_q = $unsigned(redist10_sync_together32_aunroll_x_in_c1_eni25_13_tpl_33_mem_last_q == redist10_sync_together32_aunroll_x_in_c1_eni25_13_tpl_33_cmp_b ? 1'b1 : 1'b0);

    // redist10_sync_together32_aunroll_x_in_c1_eni25_13_tpl_33_cmpReg(REG,230)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_sync_together32_aunroll_x_in_c1_eni25_13_tpl_33_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist10_sync_together32_aunroll_x_in_c1_eni25_13_tpl_33_cmpReg_q <= $unsigned(redist10_sync_together32_aunroll_x_in_c1_eni25_13_tpl_33_cmp_q);
        end
    end

    // redist10_sync_together32_aunroll_x_in_c1_eni25_13_tpl_33_sticky_ena(REG,233)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_sync_together32_aunroll_x_in_c1_eni25_13_tpl_33_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist10_sync_together32_aunroll_x_in_c1_eni25_13_tpl_33_nor_q == 1'b1)
        begin
            redist10_sync_together32_aunroll_x_in_c1_eni25_13_tpl_33_sticky_ena_q <= $unsigned(redist10_sync_together32_aunroll_x_in_c1_eni25_13_tpl_33_cmpReg_q);
        end
    end

    // redist10_sync_together32_aunroll_x_in_c1_eni25_13_tpl_33_enaAnd(LOGICAL,234)
    assign redist10_sync_together32_aunroll_x_in_c1_eni25_13_tpl_33_enaAnd_q = redist10_sync_together32_aunroll_x_in_c1_eni25_13_tpl_33_sticky_ena_q & VCC_q;

    // redist10_sync_together32_aunroll_x_in_c1_eni25_13_tpl_33_rdcnt(COUNTER,226)
    // low=0, high=30, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_sync_together32_aunroll_x_in_c1_eni25_13_tpl_33_rdcnt_i <= 5'd0;
            redist10_sync_together32_aunroll_x_in_c1_eni25_13_tpl_33_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist10_sync_together32_aunroll_x_in_c1_eni25_13_tpl_33_rdcnt_i == 5'd29)
            begin
                redist10_sync_together32_aunroll_x_in_c1_eni25_13_tpl_33_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist10_sync_together32_aunroll_x_in_c1_eni25_13_tpl_33_rdcnt_eq <= 1'b0;
            end
            if (redist10_sync_together32_aunroll_x_in_c1_eni25_13_tpl_33_rdcnt_eq == 1'b1)
            begin
                redist10_sync_together32_aunroll_x_in_c1_eni25_13_tpl_33_rdcnt_i <= $unsigned(redist10_sync_together32_aunroll_x_in_c1_eni25_13_tpl_33_rdcnt_i) + $unsigned(5'd2);
            end
            else
            begin
                redist10_sync_together32_aunroll_x_in_c1_eni25_13_tpl_33_rdcnt_i <= $unsigned(redist10_sync_together32_aunroll_x_in_c1_eni25_13_tpl_33_rdcnt_i) + $unsigned(5'd1);
            end
        end
    end
    assign redist10_sync_together32_aunroll_x_in_c1_eni25_13_tpl_33_rdcnt_q = redist10_sync_together32_aunroll_x_in_c1_eni25_13_tpl_33_rdcnt_i[4:0];

    // redist10_sync_together32_aunroll_x_in_c1_eni25_13_tpl_33_wraddr(REG,227)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_sync_together32_aunroll_x_in_c1_eni25_13_tpl_33_wraddr_q <= $unsigned(5'b11110);
        end
        else
        begin
            redist10_sync_together32_aunroll_x_in_c1_eni25_13_tpl_33_wraddr_q <= $unsigned(redist10_sync_together32_aunroll_x_in_c1_eni25_13_tpl_33_rdcnt_q);
        end
    end

    // redist10_sync_together32_aunroll_x_in_c1_eni25_13_tpl_33_mem(DUALMEM,225)
    assign redist10_sync_together32_aunroll_x_in_c1_eni25_13_tpl_33_mem_ia = $unsigned(in_c1_eni25_13_tpl);
    assign redist10_sync_together32_aunroll_x_in_c1_eni25_13_tpl_33_mem_aa = redist10_sync_together32_aunroll_x_in_c1_eni25_13_tpl_33_wraddr_q;
    assign redist10_sync_together32_aunroll_x_in_c1_eni25_13_tpl_33_mem_ab = redist10_sync_together32_aunroll_x_in_c1_eni25_13_tpl_33_rdcnt_q;
    assign redist10_sync_together32_aunroll_x_in_c1_eni25_13_tpl_33_mem_reset0 = ~ (resetn);
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
    ) redist10_sync_together32_aunroll_x_in_c1_eni25_13_tpl_33_mem_dmem (
        .clocken1(redist10_sync_together32_aunroll_x_in_c1_eni25_13_tpl_33_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist10_sync_together32_aunroll_x_in_c1_eni25_13_tpl_33_mem_reset0),
        .clock1(clock),
        .address_a(redist10_sync_together32_aunroll_x_in_c1_eni25_13_tpl_33_mem_aa),
        .data_a(redist10_sync_together32_aunroll_x_in_c1_eni25_13_tpl_33_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist10_sync_together32_aunroll_x_in_c1_eni25_13_tpl_33_mem_ab),
        .q_b(redist10_sync_together32_aunroll_x_in_c1_eni25_13_tpl_33_mem_iq),
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
    assign redist10_sync_together32_aunroll_x_in_c1_eni25_13_tpl_33_mem_q = redist10_sync_together32_aunroll_x_in_c1_eni25_13_tpl_33_mem_iq[31:0];

    // redist10_sync_together32_aunroll_x_in_c1_eni25_13_tpl_33_outputreg0(DELAY,224)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_sync_together32_aunroll_x_in_c1_eni25_13_tpl_33_outputreg0_q <= '0;
        end
        else
        begin
            redist10_sync_together32_aunroll_x_in_c1_eni25_13_tpl_33_outputreg0_q <= $unsigned(redist10_sync_together32_aunroll_x_in_c1_eni25_13_tpl_33_mem_q);
        end
    end

    // redist9_sync_together32_aunroll_x_in_c1_eni25_12_tpl_30_notEnable(LOGICAL,220)
    assign redist9_sync_together32_aunroll_x_in_c1_eni25_12_tpl_30_notEnable_q = $unsigned(~ (VCC_q));

    // redist9_sync_together32_aunroll_x_in_c1_eni25_12_tpl_30_nor(LOGICAL,221)
    assign redist9_sync_together32_aunroll_x_in_c1_eni25_12_tpl_30_nor_q = ~ (redist9_sync_together32_aunroll_x_in_c1_eni25_12_tpl_30_notEnable_q | redist9_sync_together32_aunroll_x_in_c1_eni25_12_tpl_30_sticky_ena_q);

    // redist9_sync_together32_aunroll_x_in_c1_eni25_12_tpl_30_mem_last(CONSTANT,217)
    assign redist9_sync_together32_aunroll_x_in_c1_eni25_12_tpl_30_mem_last_q = $unsigned(6'b011010);

    // redist9_sync_together32_aunroll_x_in_c1_eni25_12_tpl_30_cmp(LOGICAL,218)
    assign redist9_sync_together32_aunroll_x_in_c1_eni25_12_tpl_30_cmp_b = {1'b0, redist9_sync_together32_aunroll_x_in_c1_eni25_12_tpl_30_rdcnt_q};
    assign redist9_sync_together32_aunroll_x_in_c1_eni25_12_tpl_30_cmp_q = $unsigned(redist9_sync_together32_aunroll_x_in_c1_eni25_12_tpl_30_mem_last_q == redist9_sync_together32_aunroll_x_in_c1_eni25_12_tpl_30_cmp_b ? 1'b1 : 1'b0);

    // redist9_sync_together32_aunroll_x_in_c1_eni25_12_tpl_30_cmpReg(REG,219)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_sync_together32_aunroll_x_in_c1_eni25_12_tpl_30_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist9_sync_together32_aunroll_x_in_c1_eni25_12_tpl_30_cmpReg_q <= $unsigned(redist9_sync_together32_aunroll_x_in_c1_eni25_12_tpl_30_cmp_q);
        end
    end

    // redist9_sync_together32_aunroll_x_in_c1_eni25_12_tpl_30_sticky_ena(REG,222)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_sync_together32_aunroll_x_in_c1_eni25_12_tpl_30_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist9_sync_together32_aunroll_x_in_c1_eni25_12_tpl_30_nor_q == 1'b1)
        begin
            redist9_sync_together32_aunroll_x_in_c1_eni25_12_tpl_30_sticky_ena_q <= $unsigned(redist9_sync_together32_aunroll_x_in_c1_eni25_12_tpl_30_cmpReg_q);
        end
    end

    // redist9_sync_together32_aunroll_x_in_c1_eni25_12_tpl_30_enaAnd(LOGICAL,223)
    assign redist9_sync_together32_aunroll_x_in_c1_eni25_12_tpl_30_enaAnd_q = redist9_sync_together32_aunroll_x_in_c1_eni25_12_tpl_30_sticky_ena_q & VCC_q;

    // redist9_sync_together32_aunroll_x_in_c1_eni25_12_tpl_30_rdcnt(COUNTER,215)
    // low=0, high=27, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_sync_together32_aunroll_x_in_c1_eni25_12_tpl_30_rdcnt_i <= 5'd0;
            redist9_sync_together32_aunroll_x_in_c1_eni25_12_tpl_30_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist9_sync_together32_aunroll_x_in_c1_eni25_12_tpl_30_rdcnt_i == 5'd26)
            begin
                redist9_sync_together32_aunroll_x_in_c1_eni25_12_tpl_30_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist9_sync_together32_aunroll_x_in_c1_eni25_12_tpl_30_rdcnt_eq <= 1'b0;
            end
            if (redist9_sync_together32_aunroll_x_in_c1_eni25_12_tpl_30_rdcnt_eq == 1'b1)
            begin
                redist9_sync_together32_aunroll_x_in_c1_eni25_12_tpl_30_rdcnt_i <= $unsigned(redist9_sync_together32_aunroll_x_in_c1_eni25_12_tpl_30_rdcnt_i) + $unsigned(5'd5);
            end
            else
            begin
                redist9_sync_together32_aunroll_x_in_c1_eni25_12_tpl_30_rdcnt_i <= $unsigned(redist9_sync_together32_aunroll_x_in_c1_eni25_12_tpl_30_rdcnt_i) + $unsigned(5'd1);
            end
        end
    end
    assign redist9_sync_together32_aunroll_x_in_c1_eni25_12_tpl_30_rdcnt_q = redist9_sync_together32_aunroll_x_in_c1_eni25_12_tpl_30_rdcnt_i[4:0];

    // redist9_sync_together32_aunroll_x_in_c1_eni25_12_tpl_30_wraddr(REG,216)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_sync_together32_aunroll_x_in_c1_eni25_12_tpl_30_wraddr_q <= $unsigned(5'b11011);
        end
        else
        begin
            redist9_sync_together32_aunroll_x_in_c1_eni25_12_tpl_30_wraddr_q <= $unsigned(redist9_sync_together32_aunroll_x_in_c1_eni25_12_tpl_30_rdcnt_q);
        end
    end

    // redist9_sync_together32_aunroll_x_in_c1_eni25_12_tpl_30_mem(DUALMEM,214)
    assign redist9_sync_together32_aunroll_x_in_c1_eni25_12_tpl_30_mem_ia = $unsigned(in_c1_eni25_12_tpl);
    assign redist9_sync_together32_aunroll_x_in_c1_eni25_12_tpl_30_mem_aa = redist9_sync_together32_aunroll_x_in_c1_eni25_12_tpl_30_wraddr_q;
    assign redist9_sync_together32_aunroll_x_in_c1_eni25_12_tpl_30_mem_ab = redist9_sync_together32_aunroll_x_in_c1_eni25_12_tpl_30_rdcnt_q;
    assign redist9_sync_together32_aunroll_x_in_c1_eni25_12_tpl_30_mem_reset0 = ~ (resetn);
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
    ) redist9_sync_together32_aunroll_x_in_c1_eni25_12_tpl_30_mem_dmem (
        .clocken1(redist9_sync_together32_aunroll_x_in_c1_eni25_12_tpl_30_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist9_sync_together32_aunroll_x_in_c1_eni25_12_tpl_30_mem_reset0),
        .clock1(clock),
        .address_a(redist9_sync_together32_aunroll_x_in_c1_eni25_12_tpl_30_mem_aa),
        .data_a(redist9_sync_together32_aunroll_x_in_c1_eni25_12_tpl_30_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist9_sync_together32_aunroll_x_in_c1_eni25_12_tpl_30_mem_ab),
        .q_b(redist9_sync_together32_aunroll_x_in_c1_eni25_12_tpl_30_mem_iq),
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
    assign redist9_sync_together32_aunroll_x_in_c1_eni25_12_tpl_30_mem_q = redist9_sync_together32_aunroll_x_in_c1_eni25_12_tpl_30_mem_iq[31:0];

    // redist9_sync_together32_aunroll_x_in_c1_eni25_12_tpl_30_outputreg0(DELAY,213)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_sync_together32_aunroll_x_in_c1_eni25_12_tpl_30_outputreg0_q <= '0;
        end
        else
        begin
            redist9_sync_together32_aunroll_x_in_c1_eni25_12_tpl_30_outputreg0_q <= $unsigned(redist9_sync_together32_aunroll_x_in_c1_eni25_12_tpl_30_mem_q);
        end
    end

    // redist8_sync_together32_aunroll_x_in_c1_eni25_11_tpl_27_notEnable(LOGICAL,209)
    assign redist8_sync_together32_aunroll_x_in_c1_eni25_11_tpl_27_notEnable_q = $unsigned(~ (VCC_q));

    // redist8_sync_together32_aunroll_x_in_c1_eni25_11_tpl_27_nor(LOGICAL,210)
    assign redist8_sync_together32_aunroll_x_in_c1_eni25_11_tpl_27_nor_q = ~ (redist8_sync_together32_aunroll_x_in_c1_eni25_11_tpl_27_notEnable_q | redist8_sync_together32_aunroll_x_in_c1_eni25_11_tpl_27_sticky_ena_q);

    // redist8_sync_together32_aunroll_x_in_c1_eni25_11_tpl_27_mem_last(CONSTANT,206)
    assign redist8_sync_together32_aunroll_x_in_c1_eni25_11_tpl_27_mem_last_q = $unsigned(6'b010111);

    // redist8_sync_together32_aunroll_x_in_c1_eni25_11_tpl_27_cmp(LOGICAL,207)
    assign redist8_sync_together32_aunroll_x_in_c1_eni25_11_tpl_27_cmp_b = {1'b0, redist8_sync_together32_aunroll_x_in_c1_eni25_11_tpl_27_rdcnt_q};
    assign redist8_sync_together32_aunroll_x_in_c1_eni25_11_tpl_27_cmp_q = $unsigned(redist8_sync_together32_aunroll_x_in_c1_eni25_11_tpl_27_mem_last_q == redist8_sync_together32_aunroll_x_in_c1_eni25_11_tpl_27_cmp_b ? 1'b1 : 1'b0);

    // redist8_sync_together32_aunroll_x_in_c1_eni25_11_tpl_27_cmpReg(REG,208)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_sync_together32_aunroll_x_in_c1_eni25_11_tpl_27_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist8_sync_together32_aunroll_x_in_c1_eni25_11_tpl_27_cmpReg_q <= $unsigned(redist8_sync_together32_aunroll_x_in_c1_eni25_11_tpl_27_cmp_q);
        end
    end

    // redist8_sync_together32_aunroll_x_in_c1_eni25_11_tpl_27_sticky_ena(REG,211)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_sync_together32_aunroll_x_in_c1_eni25_11_tpl_27_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist8_sync_together32_aunroll_x_in_c1_eni25_11_tpl_27_nor_q == 1'b1)
        begin
            redist8_sync_together32_aunroll_x_in_c1_eni25_11_tpl_27_sticky_ena_q <= $unsigned(redist8_sync_together32_aunroll_x_in_c1_eni25_11_tpl_27_cmpReg_q);
        end
    end

    // redist8_sync_together32_aunroll_x_in_c1_eni25_11_tpl_27_enaAnd(LOGICAL,212)
    assign redist8_sync_together32_aunroll_x_in_c1_eni25_11_tpl_27_enaAnd_q = redist8_sync_together32_aunroll_x_in_c1_eni25_11_tpl_27_sticky_ena_q & VCC_q;

    // redist8_sync_together32_aunroll_x_in_c1_eni25_11_tpl_27_rdcnt(COUNTER,204)
    // low=0, high=24, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_sync_together32_aunroll_x_in_c1_eni25_11_tpl_27_rdcnt_i <= 5'd0;
            redist8_sync_together32_aunroll_x_in_c1_eni25_11_tpl_27_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist8_sync_together32_aunroll_x_in_c1_eni25_11_tpl_27_rdcnt_i == 5'd23)
            begin
                redist8_sync_together32_aunroll_x_in_c1_eni25_11_tpl_27_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist8_sync_together32_aunroll_x_in_c1_eni25_11_tpl_27_rdcnt_eq <= 1'b0;
            end
            if (redist8_sync_together32_aunroll_x_in_c1_eni25_11_tpl_27_rdcnt_eq == 1'b1)
            begin
                redist8_sync_together32_aunroll_x_in_c1_eni25_11_tpl_27_rdcnt_i <= $unsigned(redist8_sync_together32_aunroll_x_in_c1_eni25_11_tpl_27_rdcnt_i) + $unsigned(5'd8);
            end
            else
            begin
                redist8_sync_together32_aunroll_x_in_c1_eni25_11_tpl_27_rdcnt_i <= $unsigned(redist8_sync_together32_aunroll_x_in_c1_eni25_11_tpl_27_rdcnt_i) + $unsigned(5'd1);
            end
        end
    end
    assign redist8_sync_together32_aunroll_x_in_c1_eni25_11_tpl_27_rdcnt_q = redist8_sync_together32_aunroll_x_in_c1_eni25_11_tpl_27_rdcnt_i[4:0];

    // redist8_sync_together32_aunroll_x_in_c1_eni25_11_tpl_27_wraddr(REG,205)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_sync_together32_aunroll_x_in_c1_eni25_11_tpl_27_wraddr_q <= $unsigned(5'b11000);
        end
        else
        begin
            redist8_sync_together32_aunroll_x_in_c1_eni25_11_tpl_27_wraddr_q <= $unsigned(redist8_sync_together32_aunroll_x_in_c1_eni25_11_tpl_27_rdcnt_q);
        end
    end

    // redist8_sync_together32_aunroll_x_in_c1_eni25_11_tpl_27_mem(DUALMEM,203)
    assign redist8_sync_together32_aunroll_x_in_c1_eni25_11_tpl_27_mem_ia = $unsigned(in_c1_eni25_11_tpl);
    assign redist8_sync_together32_aunroll_x_in_c1_eni25_11_tpl_27_mem_aa = redist8_sync_together32_aunroll_x_in_c1_eni25_11_tpl_27_wraddr_q;
    assign redist8_sync_together32_aunroll_x_in_c1_eni25_11_tpl_27_mem_ab = redist8_sync_together32_aunroll_x_in_c1_eni25_11_tpl_27_rdcnt_q;
    assign redist8_sync_together32_aunroll_x_in_c1_eni25_11_tpl_27_mem_reset0 = ~ (resetn);
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
    ) redist8_sync_together32_aunroll_x_in_c1_eni25_11_tpl_27_mem_dmem (
        .clocken1(redist8_sync_together32_aunroll_x_in_c1_eni25_11_tpl_27_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist8_sync_together32_aunroll_x_in_c1_eni25_11_tpl_27_mem_reset0),
        .clock1(clock),
        .address_a(redist8_sync_together32_aunroll_x_in_c1_eni25_11_tpl_27_mem_aa),
        .data_a(redist8_sync_together32_aunroll_x_in_c1_eni25_11_tpl_27_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist8_sync_together32_aunroll_x_in_c1_eni25_11_tpl_27_mem_ab),
        .q_b(redist8_sync_together32_aunroll_x_in_c1_eni25_11_tpl_27_mem_iq),
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
    assign redist8_sync_together32_aunroll_x_in_c1_eni25_11_tpl_27_mem_q = redist8_sync_together32_aunroll_x_in_c1_eni25_11_tpl_27_mem_iq[31:0];

    // redist8_sync_together32_aunroll_x_in_c1_eni25_11_tpl_27_outputreg0(DELAY,202)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_sync_together32_aunroll_x_in_c1_eni25_11_tpl_27_outputreg0_q <= '0;
        end
        else
        begin
            redist8_sync_together32_aunroll_x_in_c1_eni25_11_tpl_27_outputreg0_q <= $unsigned(redist8_sync_together32_aunroll_x_in_c1_eni25_11_tpl_27_mem_q);
        end
    end

    // redist7_sync_together32_aunroll_x_in_c1_eni25_10_tpl_24_notEnable(LOGICAL,198)
    assign redist7_sync_together32_aunroll_x_in_c1_eni25_10_tpl_24_notEnable_q = $unsigned(~ (VCC_q));

    // redist7_sync_together32_aunroll_x_in_c1_eni25_10_tpl_24_nor(LOGICAL,199)
    assign redist7_sync_together32_aunroll_x_in_c1_eni25_10_tpl_24_nor_q = ~ (redist7_sync_together32_aunroll_x_in_c1_eni25_10_tpl_24_notEnable_q | redist7_sync_together32_aunroll_x_in_c1_eni25_10_tpl_24_sticky_ena_q);

    // redist7_sync_together32_aunroll_x_in_c1_eni25_10_tpl_24_mem_last(CONSTANT,195)
    assign redist7_sync_together32_aunroll_x_in_c1_eni25_10_tpl_24_mem_last_q = $unsigned(6'b010100);

    // redist7_sync_together32_aunroll_x_in_c1_eni25_10_tpl_24_cmp(LOGICAL,196)
    assign redist7_sync_together32_aunroll_x_in_c1_eni25_10_tpl_24_cmp_b = {1'b0, redist7_sync_together32_aunroll_x_in_c1_eni25_10_tpl_24_rdcnt_q};
    assign redist7_sync_together32_aunroll_x_in_c1_eni25_10_tpl_24_cmp_q = $unsigned(redist7_sync_together32_aunroll_x_in_c1_eni25_10_tpl_24_mem_last_q == redist7_sync_together32_aunroll_x_in_c1_eni25_10_tpl_24_cmp_b ? 1'b1 : 1'b0);

    // redist7_sync_together32_aunroll_x_in_c1_eni25_10_tpl_24_cmpReg(REG,197)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_sync_together32_aunroll_x_in_c1_eni25_10_tpl_24_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist7_sync_together32_aunroll_x_in_c1_eni25_10_tpl_24_cmpReg_q <= $unsigned(redist7_sync_together32_aunroll_x_in_c1_eni25_10_tpl_24_cmp_q);
        end
    end

    // redist7_sync_together32_aunroll_x_in_c1_eni25_10_tpl_24_sticky_ena(REG,200)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_sync_together32_aunroll_x_in_c1_eni25_10_tpl_24_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist7_sync_together32_aunroll_x_in_c1_eni25_10_tpl_24_nor_q == 1'b1)
        begin
            redist7_sync_together32_aunroll_x_in_c1_eni25_10_tpl_24_sticky_ena_q <= $unsigned(redist7_sync_together32_aunroll_x_in_c1_eni25_10_tpl_24_cmpReg_q);
        end
    end

    // redist7_sync_together32_aunroll_x_in_c1_eni25_10_tpl_24_enaAnd(LOGICAL,201)
    assign redist7_sync_together32_aunroll_x_in_c1_eni25_10_tpl_24_enaAnd_q = redist7_sync_together32_aunroll_x_in_c1_eni25_10_tpl_24_sticky_ena_q & VCC_q;

    // redist7_sync_together32_aunroll_x_in_c1_eni25_10_tpl_24_rdcnt(COUNTER,193)
    // low=0, high=21, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_sync_together32_aunroll_x_in_c1_eni25_10_tpl_24_rdcnt_i <= 5'd0;
            redist7_sync_together32_aunroll_x_in_c1_eni25_10_tpl_24_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist7_sync_together32_aunroll_x_in_c1_eni25_10_tpl_24_rdcnt_i == 5'd20)
            begin
                redist7_sync_together32_aunroll_x_in_c1_eni25_10_tpl_24_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist7_sync_together32_aunroll_x_in_c1_eni25_10_tpl_24_rdcnt_eq <= 1'b0;
            end
            if (redist7_sync_together32_aunroll_x_in_c1_eni25_10_tpl_24_rdcnt_eq == 1'b1)
            begin
                redist7_sync_together32_aunroll_x_in_c1_eni25_10_tpl_24_rdcnt_i <= $unsigned(redist7_sync_together32_aunroll_x_in_c1_eni25_10_tpl_24_rdcnt_i) + $unsigned(5'd11);
            end
            else
            begin
                redist7_sync_together32_aunroll_x_in_c1_eni25_10_tpl_24_rdcnt_i <= $unsigned(redist7_sync_together32_aunroll_x_in_c1_eni25_10_tpl_24_rdcnt_i) + $unsigned(5'd1);
            end
        end
    end
    assign redist7_sync_together32_aunroll_x_in_c1_eni25_10_tpl_24_rdcnt_q = redist7_sync_together32_aunroll_x_in_c1_eni25_10_tpl_24_rdcnt_i[4:0];

    // redist7_sync_together32_aunroll_x_in_c1_eni25_10_tpl_24_wraddr(REG,194)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_sync_together32_aunroll_x_in_c1_eni25_10_tpl_24_wraddr_q <= $unsigned(5'b10101);
        end
        else
        begin
            redist7_sync_together32_aunroll_x_in_c1_eni25_10_tpl_24_wraddr_q <= $unsigned(redist7_sync_together32_aunroll_x_in_c1_eni25_10_tpl_24_rdcnt_q);
        end
    end

    // redist7_sync_together32_aunroll_x_in_c1_eni25_10_tpl_24_mem(DUALMEM,192)
    assign redist7_sync_together32_aunroll_x_in_c1_eni25_10_tpl_24_mem_ia = $unsigned(in_c1_eni25_10_tpl);
    assign redist7_sync_together32_aunroll_x_in_c1_eni25_10_tpl_24_mem_aa = redist7_sync_together32_aunroll_x_in_c1_eni25_10_tpl_24_wraddr_q;
    assign redist7_sync_together32_aunroll_x_in_c1_eni25_10_tpl_24_mem_ab = redist7_sync_together32_aunroll_x_in_c1_eni25_10_tpl_24_rdcnt_q;
    assign redist7_sync_together32_aunroll_x_in_c1_eni25_10_tpl_24_mem_reset0 = ~ (resetn);
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
    ) redist7_sync_together32_aunroll_x_in_c1_eni25_10_tpl_24_mem_dmem (
        .clocken1(redist7_sync_together32_aunroll_x_in_c1_eni25_10_tpl_24_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist7_sync_together32_aunroll_x_in_c1_eni25_10_tpl_24_mem_reset0),
        .clock1(clock),
        .address_a(redist7_sync_together32_aunroll_x_in_c1_eni25_10_tpl_24_mem_aa),
        .data_a(redist7_sync_together32_aunroll_x_in_c1_eni25_10_tpl_24_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist7_sync_together32_aunroll_x_in_c1_eni25_10_tpl_24_mem_ab),
        .q_b(redist7_sync_together32_aunroll_x_in_c1_eni25_10_tpl_24_mem_iq),
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
    assign redist7_sync_together32_aunroll_x_in_c1_eni25_10_tpl_24_mem_q = redist7_sync_together32_aunroll_x_in_c1_eni25_10_tpl_24_mem_iq[31:0];

    // redist7_sync_together32_aunroll_x_in_c1_eni25_10_tpl_24_outputreg0(DELAY,191)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_sync_together32_aunroll_x_in_c1_eni25_10_tpl_24_outputreg0_q <= '0;
        end
        else
        begin
            redist7_sync_together32_aunroll_x_in_c1_eni25_10_tpl_24_outputreg0_q <= $unsigned(redist7_sync_together32_aunroll_x_in_c1_eni25_10_tpl_24_mem_q);
        end
    end

    // redist6_sync_together32_aunroll_x_in_c1_eni25_9_tpl_21_notEnable(LOGICAL,187)
    assign redist6_sync_together32_aunroll_x_in_c1_eni25_9_tpl_21_notEnable_q = $unsigned(~ (VCC_q));

    // redist6_sync_together32_aunroll_x_in_c1_eni25_9_tpl_21_nor(LOGICAL,188)
    assign redist6_sync_together32_aunroll_x_in_c1_eni25_9_tpl_21_nor_q = ~ (redist6_sync_together32_aunroll_x_in_c1_eni25_9_tpl_21_notEnable_q | redist6_sync_together32_aunroll_x_in_c1_eni25_9_tpl_21_sticky_ena_q);

    // redist6_sync_together32_aunroll_x_in_c1_eni25_9_tpl_21_mem_last(CONSTANT,184)
    assign redist6_sync_together32_aunroll_x_in_c1_eni25_9_tpl_21_mem_last_q = $unsigned(6'b010001);

    // redist6_sync_together32_aunroll_x_in_c1_eni25_9_tpl_21_cmp(LOGICAL,185)
    assign redist6_sync_together32_aunroll_x_in_c1_eni25_9_tpl_21_cmp_b = {1'b0, redist6_sync_together32_aunroll_x_in_c1_eni25_9_tpl_21_rdcnt_q};
    assign redist6_sync_together32_aunroll_x_in_c1_eni25_9_tpl_21_cmp_q = $unsigned(redist6_sync_together32_aunroll_x_in_c1_eni25_9_tpl_21_mem_last_q == redist6_sync_together32_aunroll_x_in_c1_eni25_9_tpl_21_cmp_b ? 1'b1 : 1'b0);

    // redist6_sync_together32_aunroll_x_in_c1_eni25_9_tpl_21_cmpReg(REG,186)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_sync_together32_aunroll_x_in_c1_eni25_9_tpl_21_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist6_sync_together32_aunroll_x_in_c1_eni25_9_tpl_21_cmpReg_q <= $unsigned(redist6_sync_together32_aunroll_x_in_c1_eni25_9_tpl_21_cmp_q);
        end
    end

    // redist6_sync_together32_aunroll_x_in_c1_eni25_9_tpl_21_sticky_ena(REG,189)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_sync_together32_aunroll_x_in_c1_eni25_9_tpl_21_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist6_sync_together32_aunroll_x_in_c1_eni25_9_tpl_21_nor_q == 1'b1)
        begin
            redist6_sync_together32_aunroll_x_in_c1_eni25_9_tpl_21_sticky_ena_q <= $unsigned(redist6_sync_together32_aunroll_x_in_c1_eni25_9_tpl_21_cmpReg_q);
        end
    end

    // redist6_sync_together32_aunroll_x_in_c1_eni25_9_tpl_21_enaAnd(LOGICAL,190)
    assign redist6_sync_together32_aunroll_x_in_c1_eni25_9_tpl_21_enaAnd_q = redist6_sync_together32_aunroll_x_in_c1_eni25_9_tpl_21_sticky_ena_q & VCC_q;

    // redist6_sync_together32_aunroll_x_in_c1_eni25_9_tpl_21_rdcnt(COUNTER,182)
    // low=0, high=18, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_sync_together32_aunroll_x_in_c1_eni25_9_tpl_21_rdcnt_i <= 5'd0;
            redist6_sync_together32_aunroll_x_in_c1_eni25_9_tpl_21_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist6_sync_together32_aunroll_x_in_c1_eni25_9_tpl_21_rdcnt_i == 5'd17)
            begin
                redist6_sync_together32_aunroll_x_in_c1_eni25_9_tpl_21_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist6_sync_together32_aunroll_x_in_c1_eni25_9_tpl_21_rdcnt_eq <= 1'b0;
            end
            if (redist6_sync_together32_aunroll_x_in_c1_eni25_9_tpl_21_rdcnt_eq == 1'b1)
            begin
                redist6_sync_together32_aunroll_x_in_c1_eni25_9_tpl_21_rdcnt_i <= $unsigned(redist6_sync_together32_aunroll_x_in_c1_eni25_9_tpl_21_rdcnt_i) + $unsigned(5'd14);
            end
            else
            begin
                redist6_sync_together32_aunroll_x_in_c1_eni25_9_tpl_21_rdcnt_i <= $unsigned(redist6_sync_together32_aunroll_x_in_c1_eni25_9_tpl_21_rdcnt_i) + $unsigned(5'd1);
            end
        end
    end
    assign redist6_sync_together32_aunroll_x_in_c1_eni25_9_tpl_21_rdcnt_q = redist6_sync_together32_aunroll_x_in_c1_eni25_9_tpl_21_rdcnt_i[4:0];

    // redist6_sync_together32_aunroll_x_in_c1_eni25_9_tpl_21_wraddr(REG,183)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_sync_together32_aunroll_x_in_c1_eni25_9_tpl_21_wraddr_q <= $unsigned(5'b10010);
        end
        else
        begin
            redist6_sync_together32_aunroll_x_in_c1_eni25_9_tpl_21_wraddr_q <= $unsigned(redist6_sync_together32_aunroll_x_in_c1_eni25_9_tpl_21_rdcnt_q);
        end
    end

    // redist6_sync_together32_aunroll_x_in_c1_eni25_9_tpl_21_mem(DUALMEM,181)
    assign redist6_sync_together32_aunroll_x_in_c1_eni25_9_tpl_21_mem_ia = $unsigned(in_c1_eni25_9_tpl);
    assign redist6_sync_together32_aunroll_x_in_c1_eni25_9_tpl_21_mem_aa = redist6_sync_together32_aunroll_x_in_c1_eni25_9_tpl_21_wraddr_q;
    assign redist6_sync_together32_aunroll_x_in_c1_eni25_9_tpl_21_mem_ab = redist6_sync_together32_aunroll_x_in_c1_eni25_9_tpl_21_rdcnt_q;
    assign redist6_sync_together32_aunroll_x_in_c1_eni25_9_tpl_21_mem_reset0 = ~ (resetn);
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
    ) redist6_sync_together32_aunroll_x_in_c1_eni25_9_tpl_21_mem_dmem (
        .clocken1(redist6_sync_together32_aunroll_x_in_c1_eni25_9_tpl_21_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist6_sync_together32_aunroll_x_in_c1_eni25_9_tpl_21_mem_reset0),
        .clock1(clock),
        .address_a(redist6_sync_together32_aunroll_x_in_c1_eni25_9_tpl_21_mem_aa),
        .data_a(redist6_sync_together32_aunroll_x_in_c1_eni25_9_tpl_21_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist6_sync_together32_aunroll_x_in_c1_eni25_9_tpl_21_mem_ab),
        .q_b(redist6_sync_together32_aunroll_x_in_c1_eni25_9_tpl_21_mem_iq),
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
    assign redist6_sync_together32_aunroll_x_in_c1_eni25_9_tpl_21_mem_q = redist6_sync_together32_aunroll_x_in_c1_eni25_9_tpl_21_mem_iq[31:0];

    // redist6_sync_together32_aunroll_x_in_c1_eni25_9_tpl_21_outputreg0(DELAY,180)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_sync_together32_aunroll_x_in_c1_eni25_9_tpl_21_outputreg0_q <= '0;
        end
        else
        begin
            redist6_sync_together32_aunroll_x_in_c1_eni25_9_tpl_21_outputreg0_q <= $unsigned(redist6_sync_together32_aunroll_x_in_c1_eni25_9_tpl_21_mem_q);
        end
    end

    // redist5_sync_together32_aunroll_x_in_c1_eni25_8_tpl_18_notEnable(LOGICAL,176)
    assign redist5_sync_together32_aunroll_x_in_c1_eni25_8_tpl_18_notEnable_q = $unsigned(~ (VCC_q));

    // redist5_sync_together32_aunroll_x_in_c1_eni25_8_tpl_18_nor(LOGICAL,177)
    assign redist5_sync_together32_aunroll_x_in_c1_eni25_8_tpl_18_nor_q = ~ (redist5_sync_together32_aunroll_x_in_c1_eni25_8_tpl_18_notEnable_q | redist5_sync_together32_aunroll_x_in_c1_eni25_8_tpl_18_sticky_ena_q);

    // redist5_sync_together32_aunroll_x_in_c1_eni25_8_tpl_18_mem_last(CONSTANT,173)
    assign redist5_sync_together32_aunroll_x_in_c1_eni25_8_tpl_18_mem_last_q = $unsigned(5'b01110);

    // redist5_sync_together32_aunroll_x_in_c1_eni25_8_tpl_18_cmp(LOGICAL,174)
    assign redist5_sync_together32_aunroll_x_in_c1_eni25_8_tpl_18_cmp_b = {1'b0, redist5_sync_together32_aunroll_x_in_c1_eni25_8_tpl_18_rdcnt_q};
    assign redist5_sync_together32_aunroll_x_in_c1_eni25_8_tpl_18_cmp_q = $unsigned(redist5_sync_together32_aunroll_x_in_c1_eni25_8_tpl_18_mem_last_q == redist5_sync_together32_aunroll_x_in_c1_eni25_8_tpl_18_cmp_b ? 1'b1 : 1'b0);

    // redist5_sync_together32_aunroll_x_in_c1_eni25_8_tpl_18_cmpReg(REG,175)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_sync_together32_aunroll_x_in_c1_eni25_8_tpl_18_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist5_sync_together32_aunroll_x_in_c1_eni25_8_tpl_18_cmpReg_q <= $unsigned(redist5_sync_together32_aunroll_x_in_c1_eni25_8_tpl_18_cmp_q);
        end
    end

    // redist5_sync_together32_aunroll_x_in_c1_eni25_8_tpl_18_sticky_ena(REG,178)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_sync_together32_aunroll_x_in_c1_eni25_8_tpl_18_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist5_sync_together32_aunroll_x_in_c1_eni25_8_tpl_18_nor_q == 1'b1)
        begin
            redist5_sync_together32_aunroll_x_in_c1_eni25_8_tpl_18_sticky_ena_q <= $unsigned(redist5_sync_together32_aunroll_x_in_c1_eni25_8_tpl_18_cmpReg_q);
        end
    end

    // redist5_sync_together32_aunroll_x_in_c1_eni25_8_tpl_18_enaAnd(LOGICAL,179)
    assign redist5_sync_together32_aunroll_x_in_c1_eni25_8_tpl_18_enaAnd_q = redist5_sync_together32_aunroll_x_in_c1_eni25_8_tpl_18_sticky_ena_q & VCC_q;

    // redist5_sync_together32_aunroll_x_in_c1_eni25_8_tpl_18_rdcnt(COUNTER,171)
    // low=0, high=15, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_sync_together32_aunroll_x_in_c1_eni25_8_tpl_18_rdcnt_i <= 4'd0;
        end
        else
        begin
            redist5_sync_together32_aunroll_x_in_c1_eni25_8_tpl_18_rdcnt_i <= $unsigned(redist5_sync_together32_aunroll_x_in_c1_eni25_8_tpl_18_rdcnt_i) + $unsigned(4'd1);
        end
    end
    assign redist5_sync_together32_aunroll_x_in_c1_eni25_8_tpl_18_rdcnt_q = redist5_sync_together32_aunroll_x_in_c1_eni25_8_tpl_18_rdcnt_i[3:0];

    // redist5_sync_together32_aunroll_x_in_c1_eni25_8_tpl_18_wraddr(REG,172)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_sync_together32_aunroll_x_in_c1_eni25_8_tpl_18_wraddr_q <= $unsigned(4'b1111);
        end
        else
        begin
            redist5_sync_together32_aunroll_x_in_c1_eni25_8_tpl_18_wraddr_q <= $unsigned(redist5_sync_together32_aunroll_x_in_c1_eni25_8_tpl_18_rdcnt_q);
        end
    end

    // redist5_sync_together32_aunroll_x_in_c1_eni25_8_tpl_18_mem(DUALMEM,170)
    assign redist5_sync_together32_aunroll_x_in_c1_eni25_8_tpl_18_mem_ia = $unsigned(in_c1_eni25_8_tpl);
    assign redist5_sync_together32_aunroll_x_in_c1_eni25_8_tpl_18_mem_aa = redist5_sync_together32_aunroll_x_in_c1_eni25_8_tpl_18_wraddr_q;
    assign redist5_sync_together32_aunroll_x_in_c1_eni25_8_tpl_18_mem_ab = redist5_sync_together32_aunroll_x_in_c1_eni25_8_tpl_18_rdcnt_q;
    assign redist5_sync_together32_aunroll_x_in_c1_eni25_8_tpl_18_mem_reset0 = ~ (resetn);
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
    ) redist5_sync_together32_aunroll_x_in_c1_eni25_8_tpl_18_mem_dmem (
        .clocken1(redist5_sync_together32_aunroll_x_in_c1_eni25_8_tpl_18_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist5_sync_together32_aunroll_x_in_c1_eni25_8_tpl_18_mem_reset0),
        .clock1(clock),
        .address_a(redist5_sync_together32_aunroll_x_in_c1_eni25_8_tpl_18_mem_aa),
        .data_a(redist5_sync_together32_aunroll_x_in_c1_eni25_8_tpl_18_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist5_sync_together32_aunroll_x_in_c1_eni25_8_tpl_18_mem_ab),
        .q_b(redist5_sync_together32_aunroll_x_in_c1_eni25_8_tpl_18_mem_iq),
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
    assign redist5_sync_together32_aunroll_x_in_c1_eni25_8_tpl_18_mem_q = redist5_sync_together32_aunroll_x_in_c1_eni25_8_tpl_18_mem_iq[31:0];

    // redist5_sync_together32_aunroll_x_in_c1_eni25_8_tpl_18_outputreg0(DELAY,169)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_sync_together32_aunroll_x_in_c1_eni25_8_tpl_18_outputreg0_q <= '0;
        end
        else
        begin
            redist5_sync_together32_aunroll_x_in_c1_eni25_8_tpl_18_outputreg0_q <= $unsigned(redist5_sync_together32_aunroll_x_in_c1_eni25_8_tpl_18_mem_q);
        end
    end

    // redist4_sync_together32_aunroll_x_in_c1_eni25_7_tpl_15_notEnable(LOGICAL,165)
    assign redist4_sync_together32_aunroll_x_in_c1_eni25_7_tpl_15_notEnable_q = $unsigned(~ (VCC_q));

    // redist4_sync_together32_aunroll_x_in_c1_eni25_7_tpl_15_nor(LOGICAL,166)
    assign redist4_sync_together32_aunroll_x_in_c1_eni25_7_tpl_15_nor_q = ~ (redist4_sync_together32_aunroll_x_in_c1_eni25_7_tpl_15_notEnable_q | redist4_sync_together32_aunroll_x_in_c1_eni25_7_tpl_15_sticky_ena_q);

    // redist4_sync_together32_aunroll_x_in_c1_eni25_7_tpl_15_mem_last(CONSTANT,162)
    assign redist4_sync_together32_aunroll_x_in_c1_eni25_7_tpl_15_mem_last_q = $unsigned(5'b01011);

    // redist4_sync_together32_aunroll_x_in_c1_eni25_7_tpl_15_cmp(LOGICAL,163)
    assign redist4_sync_together32_aunroll_x_in_c1_eni25_7_tpl_15_cmp_b = {1'b0, redist4_sync_together32_aunroll_x_in_c1_eni25_7_tpl_15_rdcnt_q};
    assign redist4_sync_together32_aunroll_x_in_c1_eni25_7_tpl_15_cmp_q = $unsigned(redist4_sync_together32_aunroll_x_in_c1_eni25_7_tpl_15_mem_last_q == redist4_sync_together32_aunroll_x_in_c1_eni25_7_tpl_15_cmp_b ? 1'b1 : 1'b0);

    // redist4_sync_together32_aunroll_x_in_c1_eni25_7_tpl_15_cmpReg(REG,164)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_sync_together32_aunroll_x_in_c1_eni25_7_tpl_15_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist4_sync_together32_aunroll_x_in_c1_eni25_7_tpl_15_cmpReg_q <= $unsigned(redist4_sync_together32_aunroll_x_in_c1_eni25_7_tpl_15_cmp_q);
        end
    end

    // redist4_sync_together32_aunroll_x_in_c1_eni25_7_tpl_15_sticky_ena(REG,167)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_sync_together32_aunroll_x_in_c1_eni25_7_tpl_15_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist4_sync_together32_aunroll_x_in_c1_eni25_7_tpl_15_nor_q == 1'b1)
        begin
            redist4_sync_together32_aunroll_x_in_c1_eni25_7_tpl_15_sticky_ena_q <= $unsigned(redist4_sync_together32_aunroll_x_in_c1_eni25_7_tpl_15_cmpReg_q);
        end
    end

    // redist4_sync_together32_aunroll_x_in_c1_eni25_7_tpl_15_enaAnd(LOGICAL,168)
    assign redist4_sync_together32_aunroll_x_in_c1_eni25_7_tpl_15_enaAnd_q = redist4_sync_together32_aunroll_x_in_c1_eni25_7_tpl_15_sticky_ena_q & VCC_q;

    // redist4_sync_together32_aunroll_x_in_c1_eni25_7_tpl_15_rdcnt(COUNTER,160)
    // low=0, high=12, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_sync_together32_aunroll_x_in_c1_eni25_7_tpl_15_rdcnt_i <= 4'd0;
            redist4_sync_together32_aunroll_x_in_c1_eni25_7_tpl_15_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist4_sync_together32_aunroll_x_in_c1_eni25_7_tpl_15_rdcnt_i == 4'd11)
            begin
                redist4_sync_together32_aunroll_x_in_c1_eni25_7_tpl_15_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist4_sync_together32_aunroll_x_in_c1_eni25_7_tpl_15_rdcnt_eq <= 1'b0;
            end
            if (redist4_sync_together32_aunroll_x_in_c1_eni25_7_tpl_15_rdcnt_eq == 1'b1)
            begin
                redist4_sync_together32_aunroll_x_in_c1_eni25_7_tpl_15_rdcnt_i <= $unsigned(redist4_sync_together32_aunroll_x_in_c1_eni25_7_tpl_15_rdcnt_i) + $unsigned(4'd4);
            end
            else
            begin
                redist4_sync_together32_aunroll_x_in_c1_eni25_7_tpl_15_rdcnt_i <= $unsigned(redist4_sync_together32_aunroll_x_in_c1_eni25_7_tpl_15_rdcnt_i) + $unsigned(4'd1);
            end
        end
    end
    assign redist4_sync_together32_aunroll_x_in_c1_eni25_7_tpl_15_rdcnt_q = redist4_sync_together32_aunroll_x_in_c1_eni25_7_tpl_15_rdcnt_i[3:0];

    // redist4_sync_together32_aunroll_x_in_c1_eni25_7_tpl_15_wraddr(REG,161)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_sync_together32_aunroll_x_in_c1_eni25_7_tpl_15_wraddr_q <= $unsigned(4'b1100);
        end
        else
        begin
            redist4_sync_together32_aunroll_x_in_c1_eni25_7_tpl_15_wraddr_q <= $unsigned(redist4_sync_together32_aunroll_x_in_c1_eni25_7_tpl_15_rdcnt_q);
        end
    end

    // redist4_sync_together32_aunroll_x_in_c1_eni25_7_tpl_15_mem(DUALMEM,159)
    assign redist4_sync_together32_aunroll_x_in_c1_eni25_7_tpl_15_mem_ia = $unsigned(in_c1_eni25_7_tpl);
    assign redist4_sync_together32_aunroll_x_in_c1_eni25_7_tpl_15_mem_aa = redist4_sync_together32_aunroll_x_in_c1_eni25_7_tpl_15_wraddr_q;
    assign redist4_sync_together32_aunroll_x_in_c1_eni25_7_tpl_15_mem_ab = redist4_sync_together32_aunroll_x_in_c1_eni25_7_tpl_15_rdcnt_q;
    assign redist4_sync_together32_aunroll_x_in_c1_eni25_7_tpl_15_mem_reset0 = ~ (resetn);
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
    ) redist4_sync_together32_aunroll_x_in_c1_eni25_7_tpl_15_mem_dmem (
        .clocken1(redist4_sync_together32_aunroll_x_in_c1_eni25_7_tpl_15_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist4_sync_together32_aunroll_x_in_c1_eni25_7_tpl_15_mem_reset0),
        .clock1(clock),
        .address_a(redist4_sync_together32_aunroll_x_in_c1_eni25_7_tpl_15_mem_aa),
        .data_a(redist4_sync_together32_aunroll_x_in_c1_eni25_7_tpl_15_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist4_sync_together32_aunroll_x_in_c1_eni25_7_tpl_15_mem_ab),
        .q_b(redist4_sync_together32_aunroll_x_in_c1_eni25_7_tpl_15_mem_iq),
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
    assign redist4_sync_together32_aunroll_x_in_c1_eni25_7_tpl_15_mem_q = redist4_sync_together32_aunroll_x_in_c1_eni25_7_tpl_15_mem_iq[31:0];

    // redist4_sync_together32_aunroll_x_in_c1_eni25_7_tpl_15_outputreg0(DELAY,158)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_sync_together32_aunroll_x_in_c1_eni25_7_tpl_15_outputreg0_q <= '0;
        end
        else
        begin
            redist4_sync_together32_aunroll_x_in_c1_eni25_7_tpl_15_outputreg0_q <= $unsigned(redist4_sync_together32_aunroll_x_in_c1_eni25_7_tpl_15_mem_q);
        end
    end

    // redist3_sync_together32_aunroll_x_in_c1_eni25_6_tpl_12_notEnable(LOGICAL,154)
    assign redist3_sync_together32_aunroll_x_in_c1_eni25_6_tpl_12_notEnable_q = $unsigned(~ (VCC_q));

    // redist3_sync_together32_aunroll_x_in_c1_eni25_6_tpl_12_nor(LOGICAL,155)
    assign redist3_sync_together32_aunroll_x_in_c1_eni25_6_tpl_12_nor_q = ~ (redist3_sync_together32_aunroll_x_in_c1_eni25_6_tpl_12_notEnable_q | redist3_sync_together32_aunroll_x_in_c1_eni25_6_tpl_12_sticky_ena_q);

    // redist3_sync_together32_aunroll_x_in_c1_eni25_6_tpl_12_mem_last(CONSTANT,151)
    assign redist3_sync_together32_aunroll_x_in_c1_eni25_6_tpl_12_mem_last_q = $unsigned(5'b01000);

    // redist3_sync_together32_aunroll_x_in_c1_eni25_6_tpl_12_cmp(LOGICAL,152)
    assign redist3_sync_together32_aunroll_x_in_c1_eni25_6_tpl_12_cmp_b = {1'b0, redist3_sync_together32_aunroll_x_in_c1_eni25_6_tpl_12_rdcnt_q};
    assign redist3_sync_together32_aunroll_x_in_c1_eni25_6_tpl_12_cmp_q = $unsigned(redist3_sync_together32_aunroll_x_in_c1_eni25_6_tpl_12_mem_last_q == redist3_sync_together32_aunroll_x_in_c1_eni25_6_tpl_12_cmp_b ? 1'b1 : 1'b0);

    // redist3_sync_together32_aunroll_x_in_c1_eni25_6_tpl_12_cmpReg(REG,153)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_sync_together32_aunroll_x_in_c1_eni25_6_tpl_12_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist3_sync_together32_aunroll_x_in_c1_eni25_6_tpl_12_cmpReg_q <= $unsigned(redist3_sync_together32_aunroll_x_in_c1_eni25_6_tpl_12_cmp_q);
        end
    end

    // redist3_sync_together32_aunroll_x_in_c1_eni25_6_tpl_12_sticky_ena(REG,156)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_sync_together32_aunroll_x_in_c1_eni25_6_tpl_12_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist3_sync_together32_aunroll_x_in_c1_eni25_6_tpl_12_nor_q == 1'b1)
        begin
            redist3_sync_together32_aunroll_x_in_c1_eni25_6_tpl_12_sticky_ena_q <= $unsigned(redist3_sync_together32_aunroll_x_in_c1_eni25_6_tpl_12_cmpReg_q);
        end
    end

    // redist3_sync_together32_aunroll_x_in_c1_eni25_6_tpl_12_enaAnd(LOGICAL,157)
    assign redist3_sync_together32_aunroll_x_in_c1_eni25_6_tpl_12_enaAnd_q = redist3_sync_together32_aunroll_x_in_c1_eni25_6_tpl_12_sticky_ena_q & VCC_q;

    // redist3_sync_together32_aunroll_x_in_c1_eni25_6_tpl_12_rdcnt(COUNTER,149)
    // low=0, high=9, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_sync_together32_aunroll_x_in_c1_eni25_6_tpl_12_rdcnt_i <= 4'd0;
            redist3_sync_together32_aunroll_x_in_c1_eni25_6_tpl_12_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist3_sync_together32_aunroll_x_in_c1_eni25_6_tpl_12_rdcnt_i == 4'd8)
            begin
                redist3_sync_together32_aunroll_x_in_c1_eni25_6_tpl_12_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist3_sync_together32_aunroll_x_in_c1_eni25_6_tpl_12_rdcnt_eq <= 1'b0;
            end
            if (redist3_sync_together32_aunroll_x_in_c1_eni25_6_tpl_12_rdcnt_eq == 1'b1)
            begin
                redist3_sync_together32_aunroll_x_in_c1_eni25_6_tpl_12_rdcnt_i <= $unsigned(redist3_sync_together32_aunroll_x_in_c1_eni25_6_tpl_12_rdcnt_i) + $unsigned(4'd7);
            end
            else
            begin
                redist3_sync_together32_aunroll_x_in_c1_eni25_6_tpl_12_rdcnt_i <= $unsigned(redist3_sync_together32_aunroll_x_in_c1_eni25_6_tpl_12_rdcnt_i) + $unsigned(4'd1);
            end
        end
    end
    assign redist3_sync_together32_aunroll_x_in_c1_eni25_6_tpl_12_rdcnt_q = redist3_sync_together32_aunroll_x_in_c1_eni25_6_tpl_12_rdcnt_i[3:0];

    // redist3_sync_together32_aunroll_x_in_c1_eni25_6_tpl_12_wraddr(REG,150)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_sync_together32_aunroll_x_in_c1_eni25_6_tpl_12_wraddr_q <= $unsigned(4'b1001);
        end
        else
        begin
            redist3_sync_together32_aunroll_x_in_c1_eni25_6_tpl_12_wraddr_q <= $unsigned(redist3_sync_together32_aunroll_x_in_c1_eni25_6_tpl_12_rdcnt_q);
        end
    end

    // redist3_sync_together32_aunroll_x_in_c1_eni25_6_tpl_12_mem(DUALMEM,148)
    assign redist3_sync_together32_aunroll_x_in_c1_eni25_6_tpl_12_mem_ia = $unsigned(in_c1_eni25_6_tpl);
    assign redist3_sync_together32_aunroll_x_in_c1_eni25_6_tpl_12_mem_aa = redist3_sync_together32_aunroll_x_in_c1_eni25_6_tpl_12_wraddr_q;
    assign redist3_sync_together32_aunroll_x_in_c1_eni25_6_tpl_12_mem_ab = redist3_sync_together32_aunroll_x_in_c1_eni25_6_tpl_12_rdcnt_q;
    assign redist3_sync_together32_aunroll_x_in_c1_eni25_6_tpl_12_mem_reset0 = ~ (resetn);
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
    ) redist3_sync_together32_aunroll_x_in_c1_eni25_6_tpl_12_mem_dmem (
        .clocken1(redist3_sync_together32_aunroll_x_in_c1_eni25_6_tpl_12_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist3_sync_together32_aunroll_x_in_c1_eni25_6_tpl_12_mem_reset0),
        .clock1(clock),
        .address_a(redist3_sync_together32_aunroll_x_in_c1_eni25_6_tpl_12_mem_aa),
        .data_a(redist3_sync_together32_aunroll_x_in_c1_eni25_6_tpl_12_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist3_sync_together32_aunroll_x_in_c1_eni25_6_tpl_12_mem_ab),
        .q_b(redist3_sync_together32_aunroll_x_in_c1_eni25_6_tpl_12_mem_iq),
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
    assign redist3_sync_together32_aunroll_x_in_c1_eni25_6_tpl_12_mem_q = redist3_sync_together32_aunroll_x_in_c1_eni25_6_tpl_12_mem_iq[31:0];

    // redist3_sync_together32_aunroll_x_in_c1_eni25_6_tpl_12_outputreg0(DELAY,147)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_sync_together32_aunroll_x_in_c1_eni25_6_tpl_12_outputreg0_q <= '0;
        end
        else
        begin
            redist3_sync_together32_aunroll_x_in_c1_eni25_6_tpl_12_outputreg0_q <= $unsigned(redist3_sync_together32_aunroll_x_in_c1_eni25_6_tpl_12_mem_q);
        end
    end

    // redist2_sync_together32_aunroll_x_in_c1_eni25_5_tpl_9_notEnable(LOGICAL,143)
    assign redist2_sync_together32_aunroll_x_in_c1_eni25_5_tpl_9_notEnable_q = $unsigned(~ (VCC_q));

    // redist2_sync_together32_aunroll_x_in_c1_eni25_5_tpl_9_nor(LOGICAL,144)
    assign redist2_sync_together32_aunroll_x_in_c1_eni25_5_tpl_9_nor_q = ~ (redist2_sync_together32_aunroll_x_in_c1_eni25_5_tpl_9_notEnable_q | redist2_sync_together32_aunroll_x_in_c1_eni25_5_tpl_9_sticky_ena_q);

    // redist2_sync_together32_aunroll_x_in_c1_eni25_5_tpl_9_mem_last(CONSTANT,140)
    assign redist2_sync_together32_aunroll_x_in_c1_eni25_5_tpl_9_mem_last_q = $unsigned(4'b0101);

    // redist2_sync_together32_aunroll_x_in_c1_eni25_5_tpl_9_cmp(LOGICAL,141)
    assign redist2_sync_together32_aunroll_x_in_c1_eni25_5_tpl_9_cmp_b = {1'b0, redist2_sync_together32_aunroll_x_in_c1_eni25_5_tpl_9_rdcnt_q};
    assign redist2_sync_together32_aunroll_x_in_c1_eni25_5_tpl_9_cmp_q = $unsigned(redist2_sync_together32_aunroll_x_in_c1_eni25_5_tpl_9_mem_last_q == redist2_sync_together32_aunroll_x_in_c1_eni25_5_tpl_9_cmp_b ? 1'b1 : 1'b0);

    // redist2_sync_together32_aunroll_x_in_c1_eni25_5_tpl_9_cmpReg(REG,142)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_sync_together32_aunroll_x_in_c1_eni25_5_tpl_9_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist2_sync_together32_aunroll_x_in_c1_eni25_5_tpl_9_cmpReg_q <= $unsigned(redist2_sync_together32_aunroll_x_in_c1_eni25_5_tpl_9_cmp_q);
        end
    end

    // redist2_sync_together32_aunroll_x_in_c1_eni25_5_tpl_9_sticky_ena(REG,145)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_sync_together32_aunroll_x_in_c1_eni25_5_tpl_9_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist2_sync_together32_aunroll_x_in_c1_eni25_5_tpl_9_nor_q == 1'b1)
        begin
            redist2_sync_together32_aunroll_x_in_c1_eni25_5_tpl_9_sticky_ena_q <= $unsigned(redist2_sync_together32_aunroll_x_in_c1_eni25_5_tpl_9_cmpReg_q);
        end
    end

    // redist2_sync_together32_aunroll_x_in_c1_eni25_5_tpl_9_enaAnd(LOGICAL,146)
    assign redist2_sync_together32_aunroll_x_in_c1_eni25_5_tpl_9_enaAnd_q = redist2_sync_together32_aunroll_x_in_c1_eni25_5_tpl_9_sticky_ena_q & VCC_q;

    // redist2_sync_together32_aunroll_x_in_c1_eni25_5_tpl_9_rdcnt(COUNTER,138)
    // low=0, high=6, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_sync_together32_aunroll_x_in_c1_eni25_5_tpl_9_rdcnt_i <= 3'd0;
            redist2_sync_together32_aunroll_x_in_c1_eni25_5_tpl_9_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist2_sync_together32_aunroll_x_in_c1_eni25_5_tpl_9_rdcnt_i == 3'd5)
            begin
                redist2_sync_together32_aunroll_x_in_c1_eni25_5_tpl_9_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist2_sync_together32_aunroll_x_in_c1_eni25_5_tpl_9_rdcnt_eq <= 1'b0;
            end
            if (redist2_sync_together32_aunroll_x_in_c1_eni25_5_tpl_9_rdcnt_eq == 1'b1)
            begin
                redist2_sync_together32_aunroll_x_in_c1_eni25_5_tpl_9_rdcnt_i <= $unsigned(redist2_sync_together32_aunroll_x_in_c1_eni25_5_tpl_9_rdcnt_i) + $unsigned(3'd2);
            end
            else
            begin
                redist2_sync_together32_aunroll_x_in_c1_eni25_5_tpl_9_rdcnt_i <= $unsigned(redist2_sync_together32_aunroll_x_in_c1_eni25_5_tpl_9_rdcnt_i) + $unsigned(3'd1);
            end
        end
    end
    assign redist2_sync_together32_aunroll_x_in_c1_eni25_5_tpl_9_rdcnt_q = redist2_sync_together32_aunroll_x_in_c1_eni25_5_tpl_9_rdcnt_i[2:0];

    // redist2_sync_together32_aunroll_x_in_c1_eni25_5_tpl_9_wraddr(REG,139)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_sync_together32_aunroll_x_in_c1_eni25_5_tpl_9_wraddr_q <= $unsigned(3'b110);
        end
        else
        begin
            redist2_sync_together32_aunroll_x_in_c1_eni25_5_tpl_9_wraddr_q <= $unsigned(redist2_sync_together32_aunroll_x_in_c1_eni25_5_tpl_9_rdcnt_q);
        end
    end

    // redist2_sync_together32_aunroll_x_in_c1_eni25_5_tpl_9_mem(DUALMEM,137)
    assign redist2_sync_together32_aunroll_x_in_c1_eni25_5_tpl_9_mem_ia = $unsigned(in_c1_eni25_5_tpl);
    assign redist2_sync_together32_aunroll_x_in_c1_eni25_5_tpl_9_mem_aa = redist2_sync_together32_aunroll_x_in_c1_eni25_5_tpl_9_wraddr_q;
    assign redist2_sync_together32_aunroll_x_in_c1_eni25_5_tpl_9_mem_ab = redist2_sync_together32_aunroll_x_in_c1_eni25_5_tpl_9_rdcnt_q;
    assign redist2_sync_together32_aunroll_x_in_c1_eni25_5_tpl_9_mem_reset0 = ~ (resetn);
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
    ) redist2_sync_together32_aunroll_x_in_c1_eni25_5_tpl_9_mem_dmem (
        .clocken1(redist2_sync_together32_aunroll_x_in_c1_eni25_5_tpl_9_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist2_sync_together32_aunroll_x_in_c1_eni25_5_tpl_9_mem_reset0),
        .clock1(clock),
        .address_a(redist2_sync_together32_aunroll_x_in_c1_eni25_5_tpl_9_mem_aa),
        .data_a(redist2_sync_together32_aunroll_x_in_c1_eni25_5_tpl_9_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist2_sync_together32_aunroll_x_in_c1_eni25_5_tpl_9_mem_ab),
        .q_b(redist2_sync_together32_aunroll_x_in_c1_eni25_5_tpl_9_mem_iq),
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
    assign redist2_sync_together32_aunroll_x_in_c1_eni25_5_tpl_9_mem_q = redist2_sync_together32_aunroll_x_in_c1_eni25_5_tpl_9_mem_iq[31:0];

    // redist2_sync_together32_aunroll_x_in_c1_eni25_5_tpl_9_outputreg0(DELAY,136)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_sync_together32_aunroll_x_in_c1_eni25_5_tpl_9_outputreg0_q <= '0;
        end
        else
        begin
            redist2_sync_together32_aunroll_x_in_c1_eni25_5_tpl_9_outputreg0_q <= $unsigned(redist2_sync_together32_aunroll_x_in_c1_eni25_5_tpl_9_mem_q);
        end
    end

    // redist1_sync_together32_aunroll_x_in_c1_eni25_4_tpl_6_notEnable(LOGICAL,132)
    assign redist1_sync_together32_aunroll_x_in_c1_eni25_4_tpl_6_notEnable_q = $unsigned(~ (VCC_q));

    // redist1_sync_together32_aunroll_x_in_c1_eni25_4_tpl_6_nor(LOGICAL,133)
    assign redist1_sync_together32_aunroll_x_in_c1_eni25_4_tpl_6_nor_q = ~ (redist1_sync_together32_aunroll_x_in_c1_eni25_4_tpl_6_notEnable_q | redist1_sync_together32_aunroll_x_in_c1_eni25_4_tpl_6_sticky_ena_q);

    // redist1_sync_together32_aunroll_x_in_c1_eni25_4_tpl_6_mem_last(CONSTANT,129)
    assign redist1_sync_together32_aunroll_x_in_c1_eni25_4_tpl_6_mem_last_q = $unsigned(3'b010);

    // redist1_sync_together32_aunroll_x_in_c1_eni25_4_tpl_6_cmp(LOGICAL,130)
    assign redist1_sync_together32_aunroll_x_in_c1_eni25_4_tpl_6_cmp_b = {1'b0, redist1_sync_together32_aunroll_x_in_c1_eni25_4_tpl_6_rdcnt_q};
    assign redist1_sync_together32_aunroll_x_in_c1_eni25_4_tpl_6_cmp_q = $unsigned(redist1_sync_together32_aunroll_x_in_c1_eni25_4_tpl_6_mem_last_q == redist1_sync_together32_aunroll_x_in_c1_eni25_4_tpl_6_cmp_b ? 1'b1 : 1'b0);

    // redist1_sync_together32_aunroll_x_in_c1_eni25_4_tpl_6_cmpReg(REG,131)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together32_aunroll_x_in_c1_eni25_4_tpl_6_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist1_sync_together32_aunroll_x_in_c1_eni25_4_tpl_6_cmpReg_q <= $unsigned(redist1_sync_together32_aunroll_x_in_c1_eni25_4_tpl_6_cmp_q);
        end
    end

    // redist1_sync_together32_aunroll_x_in_c1_eni25_4_tpl_6_sticky_ena(REG,134)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together32_aunroll_x_in_c1_eni25_4_tpl_6_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist1_sync_together32_aunroll_x_in_c1_eni25_4_tpl_6_nor_q == 1'b1)
        begin
            redist1_sync_together32_aunroll_x_in_c1_eni25_4_tpl_6_sticky_ena_q <= $unsigned(redist1_sync_together32_aunroll_x_in_c1_eni25_4_tpl_6_cmpReg_q);
        end
    end

    // redist1_sync_together32_aunroll_x_in_c1_eni25_4_tpl_6_enaAnd(LOGICAL,135)
    assign redist1_sync_together32_aunroll_x_in_c1_eni25_4_tpl_6_enaAnd_q = redist1_sync_together32_aunroll_x_in_c1_eni25_4_tpl_6_sticky_ena_q & VCC_q;

    // redist1_sync_together32_aunroll_x_in_c1_eni25_4_tpl_6_rdcnt(COUNTER,127)
    // low=0, high=3, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together32_aunroll_x_in_c1_eni25_4_tpl_6_rdcnt_i <= 2'd0;
        end
        else
        begin
            redist1_sync_together32_aunroll_x_in_c1_eni25_4_tpl_6_rdcnt_i <= $unsigned(redist1_sync_together32_aunroll_x_in_c1_eni25_4_tpl_6_rdcnt_i) + $unsigned(2'd1);
        end
    end
    assign redist1_sync_together32_aunroll_x_in_c1_eni25_4_tpl_6_rdcnt_q = redist1_sync_together32_aunroll_x_in_c1_eni25_4_tpl_6_rdcnt_i[1:0];

    // redist1_sync_together32_aunroll_x_in_c1_eni25_4_tpl_6_wraddr(REG,128)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together32_aunroll_x_in_c1_eni25_4_tpl_6_wraddr_q <= $unsigned(2'b11);
        end
        else
        begin
            redist1_sync_together32_aunroll_x_in_c1_eni25_4_tpl_6_wraddr_q <= $unsigned(redist1_sync_together32_aunroll_x_in_c1_eni25_4_tpl_6_rdcnt_q);
        end
    end

    // redist1_sync_together32_aunroll_x_in_c1_eni25_4_tpl_6_mem(DUALMEM,126)
    assign redist1_sync_together32_aunroll_x_in_c1_eni25_4_tpl_6_mem_ia = $unsigned(in_c1_eni25_4_tpl);
    assign redist1_sync_together32_aunroll_x_in_c1_eni25_4_tpl_6_mem_aa = redist1_sync_together32_aunroll_x_in_c1_eni25_4_tpl_6_wraddr_q;
    assign redist1_sync_together32_aunroll_x_in_c1_eni25_4_tpl_6_mem_ab = redist1_sync_together32_aunroll_x_in_c1_eni25_4_tpl_6_rdcnt_q;
    assign redist1_sync_together32_aunroll_x_in_c1_eni25_4_tpl_6_mem_reset0 = ~ (resetn);
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
    ) redist1_sync_together32_aunroll_x_in_c1_eni25_4_tpl_6_mem_dmem (
        .clocken1(redist1_sync_together32_aunroll_x_in_c1_eni25_4_tpl_6_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist1_sync_together32_aunroll_x_in_c1_eni25_4_tpl_6_mem_reset0),
        .clock1(clock),
        .address_a(redist1_sync_together32_aunroll_x_in_c1_eni25_4_tpl_6_mem_aa),
        .data_a(redist1_sync_together32_aunroll_x_in_c1_eni25_4_tpl_6_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist1_sync_together32_aunroll_x_in_c1_eni25_4_tpl_6_mem_ab),
        .q_b(redist1_sync_together32_aunroll_x_in_c1_eni25_4_tpl_6_mem_iq),
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
    assign redist1_sync_together32_aunroll_x_in_c1_eni25_4_tpl_6_mem_q = redist1_sync_together32_aunroll_x_in_c1_eni25_4_tpl_6_mem_iq[31:0];

    // redist1_sync_together32_aunroll_x_in_c1_eni25_4_tpl_6_outputreg0(DELAY,125)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together32_aunroll_x_in_c1_eni25_4_tpl_6_outputreg0_q <= '0;
        end
        else
        begin
            redist1_sync_together32_aunroll_x_in_c1_eni25_4_tpl_6_outputreg0_q <= $unsigned(redist1_sync_together32_aunroll_x_in_c1_eni25_4_tpl_6_mem_q);
        end
    end

    // redist0_sync_together32_aunroll_x_in_c1_eni25_3_tpl_3(DELAY,97)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_sync_together32_aunroll_x_in_c1_eni25_3_tpl_3_delay_0 <= '0;
            redist0_sync_together32_aunroll_x_in_c1_eni25_3_tpl_3_q <= '0;
        end
        else
        begin
            redist0_sync_together32_aunroll_x_in_c1_eni25_3_tpl_3_delay_0 <= $unsigned(in_c1_eni25_3_tpl);
            redist0_sync_together32_aunroll_x_in_c1_eni25_3_tpl_3_q <= redist0_sync_together32_aunroll_x_in_c1_eni25_3_tpl_3_delay_0;
        end
    end

    // redist0_sync_together32_aunroll_x_in_c1_eni25_3_tpl_3_outputreg0(DELAY,124)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_sync_together32_aunroll_x_in_c1_eni25_3_tpl_3_outputreg0_q <= '0;
        end
        else
        begin
            redist0_sync_together32_aunroll_x_in_c1_eni25_3_tpl_3_outputreg0_q <= $unsigned(redist0_sync_together32_aunroll_x_in_c1_eni25_3_tpl_3_q);
        end
    end

    // i_add147_conv2d1x12(BLACKBOX,27)@0
    // out out_primWireOut@3
    conv2d1x1_flt_i_sfc_logic_s_c1_in_for_co0000454ge26154g226150y05 thei_add147_conv2d1x12 (
        .in_0(in_c1_eni25_1_tpl),
        .in_1(in_c1_eni25_2_tpl),
        .out_primWireOut(i_add147_conv2d1x12_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // i_add147_1_conv2d1x13(BLACKBOX,14)@3
    // out out_primWireOut@6
    conv2d1x1_flt_i_sfc_logic_s_c1_in_for_co0000454ge26154g226150y05 thei_add147_1_conv2d1x13 (
        .in_0(i_add147_conv2d1x12_out_primWireOut),
        .in_1(redist0_sync_together32_aunroll_x_in_c1_eni25_3_tpl_3_outputreg0_q),
        .out_primWireOut(i_add147_1_conv2d1x13_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // i_add147_2_conv2d1x14(BLACKBOX,19)@6
    // out out_primWireOut@9
    conv2d1x1_flt_i_sfc_logic_s_c1_in_for_co0000454ge26154g226150y05 thei_add147_2_conv2d1x14 (
        .in_0(i_add147_1_conv2d1x13_out_primWireOut),
        .in_1(redist1_sync_together32_aunroll_x_in_c1_eni25_4_tpl_6_outputreg0_q),
        .out_primWireOut(i_add147_2_conv2d1x14_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // i_add147_3_conv2d1x15(BLACKBOX,20)@9
    // out out_primWireOut@12
    conv2d1x1_flt_i_sfc_logic_s_c1_in_for_co0000454ge26154g226150y05 thei_add147_3_conv2d1x15 (
        .in_0(i_add147_2_conv2d1x14_out_primWireOut),
        .in_1(redist2_sync_together32_aunroll_x_in_c1_eni25_5_tpl_9_outputreg0_q),
        .out_primWireOut(i_add147_3_conv2d1x15_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // i_add147_4_conv2d1x16(BLACKBOX,21)@12
    // out out_primWireOut@15
    conv2d1x1_flt_i_sfc_logic_s_c1_in_for_co0000454ge26154g226150y05 thei_add147_4_conv2d1x16 (
        .in_0(i_add147_3_conv2d1x15_out_primWireOut),
        .in_1(redist3_sync_together32_aunroll_x_in_c1_eni25_6_tpl_12_outputreg0_q),
        .out_primWireOut(i_add147_4_conv2d1x16_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // i_add147_5_conv2d1x17(BLACKBOX,22)@15
    // out out_primWireOut@18
    conv2d1x1_flt_i_sfc_logic_s_c1_in_for_co0000454ge26154g226150y05 thei_add147_5_conv2d1x17 (
        .in_0(i_add147_4_conv2d1x16_out_primWireOut),
        .in_1(redist4_sync_together32_aunroll_x_in_c1_eni25_7_tpl_15_outputreg0_q),
        .out_primWireOut(i_add147_5_conv2d1x17_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // i_add147_6_conv2d1x18(BLACKBOX,23)@18
    // out out_primWireOut@21
    conv2d1x1_flt_i_sfc_logic_s_c1_in_for_co0000454ge26154g226150y05 thei_add147_6_conv2d1x18 (
        .in_0(i_add147_5_conv2d1x17_out_primWireOut),
        .in_1(redist5_sync_together32_aunroll_x_in_c1_eni25_8_tpl_18_outputreg0_q),
        .out_primWireOut(i_add147_6_conv2d1x18_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // i_add147_7_conv2d1x19(BLACKBOX,24)@21
    // out out_primWireOut@24
    conv2d1x1_flt_i_sfc_logic_s_c1_in_for_co0000454ge26154g226150y05 thei_add147_7_conv2d1x19 (
        .in_0(i_add147_6_conv2d1x18_out_primWireOut),
        .in_1(redist6_sync_together32_aunroll_x_in_c1_eni25_9_tpl_21_outputreg0_q),
        .out_primWireOut(i_add147_7_conv2d1x19_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // i_add147_8_conv2d1x110(BLACKBOX,25)@24
    // out out_primWireOut@27
    conv2d1x1_flt_i_sfc_logic_s_c1_in_for_co0000454ge26154g226150y05 thei_add147_8_conv2d1x110 (
        .in_0(i_add147_7_conv2d1x19_out_primWireOut),
        .in_1(redist7_sync_together32_aunroll_x_in_c1_eni25_10_tpl_24_outputreg0_q),
        .out_primWireOut(i_add147_8_conv2d1x110_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // i_add147_9_conv2d1x111(BLACKBOX,26)@27
    // out out_primWireOut@30
    conv2d1x1_flt_i_sfc_logic_s_c1_in_for_co0000454ge26154g226150y05 thei_add147_9_conv2d1x111 (
        .in_0(i_add147_8_conv2d1x110_out_primWireOut),
        .in_1(redist8_sync_together32_aunroll_x_in_c1_eni25_11_tpl_27_outputreg0_q),
        .out_primWireOut(i_add147_9_conv2d1x111_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // i_add147_10_conv2d1x112(BLACKBOX,4)@30
    // out out_primWireOut@33
    conv2d1x1_flt_i_sfc_logic_s_c1_in_for_co0000454ge26154g226150y05 thei_add147_10_conv2d1x112 (
        .in_0(i_add147_9_conv2d1x111_out_primWireOut),
        .in_1(redist9_sync_together32_aunroll_x_in_c1_eni25_12_tpl_30_outputreg0_q),
        .out_primWireOut(i_add147_10_conv2d1x112_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // i_add147_11_conv2d1x113(BLACKBOX,5)@33
    // out out_primWireOut@36
    conv2d1x1_flt_i_sfc_logic_s_c1_in_for_co0000454ge26154g226150y05 thei_add147_11_conv2d1x113 (
        .in_0(i_add147_10_conv2d1x112_out_primWireOut),
        .in_1(redist10_sync_together32_aunroll_x_in_c1_eni25_13_tpl_33_outputreg0_q),
        .out_primWireOut(i_add147_11_conv2d1x113_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // i_add147_12_conv2d1x114(BLACKBOX,6)@36
    // out out_primWireOut@39
    conv2d1x1_flt_i_sfc_logic_s_c1_in_for_co0000454ge26154g226150y05 thei_add147_12_conv2d1x114 (
        .in_0(i_add147_11_conv2d1x113_out_primWireOut),
        .in_1(redist11_sync_together32_aunroll_x_in_c1_eni25_14_tpl_36_outputreg0_q),
        .out_primWireOut(i_add147_12_conv2d1x114_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // i_add147_13_conv2d1x115(BLACKBOX,7)@39
    // out out_primWireOut@42
    conv2d1x1_flt_i_sfc_logic_s_c1_in_for_co0000454ge26154g226150y05 thei_add147_13_conv2d1x115 (
        .in_0(i_add147_12_conv2d1x114_out_primWireOut),
        .in_1(redist12_sync_together32_aunroll_x_in_c1_eni25_15_tpl_39_outputreg0_q),
        .out_primWireOut(i_add147_13_conv2d1x115_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // i_add147_14_conv2d1x116(BLACKBOX,8)@42
    // out out_primWireOut@45
    conv2d1x1_flt_i_sfc_logic_s_c1_in_for_co0000454ge26154g226150y05 thei_add147_14_conv2d1x116 (
        .in_0(i_add147_13_conv2d1x115_out_primWireOut),
        .in_1(redist13_sync_together32_aunroll_x_in_c1_eni25_16_tpl_42_outputreg0_q),
        .out_primWireOut(i_add147_14_conv2d1x116_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // i_add147_15_conv2d1x117(BLACKBOX,9)@45
    // out out_primWireOut@48
    conv2d1x1_flt_i_sfc_logic_s_c1_in_for_co0000454ge26154g226150y05 thei_add147_15_conv2d1x117 (
        .in_0(i_add147_14_conv2d1x116_out_primWireOut),
        .in_1(redist14_sync_together32_aunroll_x_in_c1_eni25_17_tpl_45_outputreg0_q),
        .out_primWireOut(i_add147_15_conv2d1x117_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // i_add147_16_conv2d1x118(BLACKBOX,10)@48
    // out out_primWireOut@51
    conv2d1x1_flt_i_sfc_logic_s_c1_in_for_co0000454ge26154g226150y05 thei_add147_16_conv2d1x118 (
        .in_0(i_add147_15_conv2d1x117_out_primWireOut),
        .in_1(redist15_sync_together32_aunroll_x_in_c1_eni25_18_tpl_48_outputreg0_q),
        .out_primWireOut(i_add147_16_conv2d1x118_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // i_add147_17_conv2d1x119(BLACKBOX,11)@51
    // out out_primWireOut@54
    conv2d1x1_flt_i_sfc_logic_s_c1_in_for_co0000454ge26154g226150y05 thei_add147_17_conv2d1x119 (
        .in_0(i_add147_16_conv2d1x118_out_primWireOut),
        .in_1(redist16_sync_together32_aunroll_x_in_c1_eni25_19_tpl_51_outputreg0_q),
        .out_primWireOut(i_add147_17_conv2d1x119_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // i_add147_18_conv2d1x120(BLACKBOX,12)@54
    // out out_primWireOut@57
    conv2d1x1_flt_i_sfc_logic_s_c1_in_for_co0000454ge26154g226150y05 thei_add147_18_conv2d1x120 (
        .in_0(i_add147_17_conv2d1x119_out_primWireOut),
        .in_1(redist17_sync_together32_aunroll_x_in_c1_eni25_20_tpl_54_outputreg0_q),
        .out_primWireOut(i_add147_18_conv2d1x120_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // i_add147_19_conv2d1x121(BLACKBOX,13)@57
    // out out_primWireOut@60
    conv2d1x1_flt_i_sfc_logic_s_c1_in_for_co0000454ge26154g226150y05 thei_add147_19_conv2d1x121 (
        .in_0(i_add147_18_conv2d1x120_out_primWireOut),
        .in_1(redist18_sync_together32_aunroll_x_in_c1_eni25_21_tpl_57_outputreg0_q),
        .out_primWireOut(i_add147_19_conv2d1x121_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // i_add147_20_conv2d1x122(BLACKBOX,15)@60
    // out out_primWireOut@63
    conv2d1x1_flt_i_sfc_logic_s_c1_in_for_co0000454ge26154g226150y05 thei_add147_20_conv2d1x122 (
        .in_0(i_add147_19_conv2d1x121_out_primWireOut),
        .in_1(redist19_sync_together32_aunroll_x_in_c1_eni25_22_tpl_60_outputreg0_q),
        .out_primWireOut(i_add147_20_conv2d1x122_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // i_add147_21_conv2d1x123(BLACKBOX,16)@63
    // out out_primWireOut@66
    conv2d1x1_flt_i_sfc_logic_s_c1_in_for_co0000454ge26154g226150y05 thei_add147_21_conv2d1x123 (
        .in_0(i_add147_20_conv2d1x122_out_primWireOut),
        .in_1(redist20_sync_together32_aunroll_x_in_c1_eni25_23_tpl_63_outputreg0_q),
        .out_primWireOut(i_add147_21_conv2d1x123_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // i_add147_22_conv2d1x124(BLACKBOX,17)@66
    // out out_primWireOut@69
    conv2d1x1_flt_i_sfc_logic_s_c1_in_for_co0000454ge26154g226150y05 thei_add147_22_conv2d1x124 (
        .in_0(i_add147_21_conv2d1x123_out_primWireOut),
        .in_1(redist21_sync_together32_aunroll_x_in_c1_eni25_24_tpl_66_outputreg0_q),
        .out_primWireOut(i_add147_22_conv2d1x124_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // i_add147_23_conv2d1x125(BLACKBOX,18)@69
    // out out_primWireOut@72
    conv2d1x1_flt_i_sfc_logic_s_c1_in_for_co0000454ge26154g226150y05 thei_add147_23_conv2d1x125 (
        .in_0(i_add147_22_conv2d1x124_out_primWireOut),
        .in_1(redist22_sync_together32_aunroll_x_in_c1_eni25_25_tpl_69_outputreg0_q),
        .out_primWireOut(i_add147_23_conv2d1x125_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // redist24_i_add147_23_conv2d1x125_out_primWireOut_1(DELAY,121)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist24_i_add147_23_conv2d1x125_out_primWireOut_1_q <= '0;
        end
        else
        begin
            redist24_i_add147_23_conv2d1x125_out_primWireOut_1_q <= $unsigned(i_add147_23_conv2d1x125_out_primWireOut);
        end
    end

    // c_float_0_000000e_0030(FLOATCONSTANT,2)
    assign c_float_0_000000e_0030_q = $unsigned(32'b00000000000000000000000000000000);

    // frac_y_uid55_i_cmp151_conv2d1x126(BITSELECT,54)@72
    assign frac_y_uid55_i_cmp151_conv2d1x126_b = i_add147_23_conv2d1x125_out_primWireOut[22:0];

    // cstZeroWF_uid35_i_cmp151_conv2d1x126(CONSTANT,34)
    assign cstZeroWF_uid35_i_cmp151_conv2d1x126_q = $unsigned(23'b00000000000000000000000);

    // fracXIsZero_uid58_i_cmp151_conv2d1x126(LOGICAL,57)@72
    assign fracXIsZero_uid58_i_cmp151_conv2d1x126_q = $unsigned(cstZeroWF_uid35_i_cmp151_conv2d1x126_q == frac_y_uid55_i_cmp151_conv2d1x126_b ? 1'b1 : 1'b0);

    // cstAllZWE_uid36_i_cmp151_conv2d1x126(CONSTANT,35)
    assign cstAllZWE_uid36_i_cmp151_conv2d1x126_q = $unsigned(8'b00000000);

    // exp_y_uid54_i_cmp151_conv2d1x126(BITSELECT,53)@72
    assign exp_y_uid54_i_cmp151_conv2d1x126_b = i_add147_23_conv2d1x125_out_primWireOut[30:23];

    // expXIsZero_uid56_i_cmp151_conv2d1x126(LOGICAL,55)@72
    assign expXIsZero_uid56_i_cmp151_conv2d1x126_q = $unsigned(exp_y_uid54_i_cmp151_conv2d1x126_b == cstAllZWE_uid36_i_cmp151_conv2d1x126_q ? 1'b1 : 1'b0);

    // excZ_y_uid60_i_cmp151_conv2d1x126(LOGICAL,59)@72
    assign excZ_y_uid60_i_cmp151_conv2d1x126_q = expXIsZero_uid56_i_cmp151_conv2d1x126_q & fracXIsZero_uid58_i_cmp151_conv2d1x126_q;

    // invExcYZ_uid90_i_cmp151_conv2d1x126(LOGICAL,89)@72
    assign invExcYZ_uid90_i_cmp151_conv2d1x126_q = ~ (excZ_y_uid60_i_cmp151_conv2d1x126_q);

    // frac_x_uid38_i_cmp151_conv2d1x126(BITSELECT,37)@72
    assign frac_x_uid38_i_cmp151_conv2d1x126_b = c_float_0_000000e_0030_q[22:0];

    // fracXIsZero_uid41_i_cmp151_conv2d1x126(LOGICAL,40)@72
    assign fracXIsZero_uid41_i_cmp151_conv2d1x126_q = $unsigned(cstZeroWF_uid35_i_cmp151_conv2d1x126_q == frac_x_uid38_i_cmp151_conv2d1x126_b ? 1'b1 : 1'b0);

    // exp_x_uid37_i_cmp151_conv2d1x126(BITSELECT,36)@72
    assign exp_x_uid37_i_cmp151_conv2d1x126_b = c_float_0_000000e_0030_q[30:23];

    // expXIsZero_uid39_i_cmp151_conv2d1x126(LOGICAL,38)@72
    assign expXIsZero_uid39_i_cmp151_conv2d1x126_q = $unsigned(exp_x_uid37_i_cmp151_conv2d1x126_b == cstAllZWE_uid36_i_cmp151_conv2d1x126_q ? 1'b1 : 1'b0);

    // excZ_x_uid43_i_cmp151_conv2d1x126(LOGICAL,42)@72
    assign excZ_x_uid43_i_cmp151_conv2d1x126_q = expXIsZero_uid39_i_cmp151_conv2d1x126_q & fracXIsZero_uid41_i_cmp151_conv2d1x126_q;

    // invExcXZ_uid91_i_cmp151_conv2d1x126(LOGICAL,90)@72
    assign invExcXZ_uid91_i_cmp151_conv2d1x126_q = ~ (excZ_x_uid43_i_cmp151_conv2d1x126_q);

    // oneNonZero_uid92_i_cmp151_conv2d1x126(LOGICAL,91)@72
    assign oneNonZero_uid92_i_cmp151_conv2d1x126_q = invExcXZ_uid91_i_cmp151_conv2d1x126_q | invExcYZ_uid90_i_cmp151_conv2d1x126_q;

    // two_uid84_i_cmp151_conv2d1x126(CONSTANT,83)
    assign two_uid84_i_cmp151_conv2d1x126_q = $unsigned(2'b10);

    // signX_uid82_i_cmp151_conv2d1x126(BITSELECT,81)@72
    assign signX_uid82_i_cmp151_conv2d1x126_b = $unsigned(c_float_0_000000e_0030_q[31:31]);

    // signY_uid83_i_cmp151_conv2d1x126(BITSELECT,82)@72
    assign signY_uid83_i_cmp151_conv2d1x126_b = $unsigned(i_add147_23_conv2d1x125_out_primWireOut[31:31]);

    // concSXSY_uid85_i_cmp151_conv2d1x126(BITJOIN,84)@72
    assign concSXSY_uid85_i_cmp151_conv2d1x126_q = {signX_uid82_i_cmp151_conv2d1x126_b, signY_uid83_i_cmp151_conv2d1x126_b};

    // sxLTsy_uid86_i_cmp151_conv2d1x126(LOGICAL,85)@72
    assign sxLTsy_uid86_i_cmp151_conv2d1x126_q = $unsigned(concSXSY_uid85_i_cmp151_conv2d1x126_q == two_uid84_i_cmp151_conv2d1x126_q ? 1'b1 : 1'b0);

    // rc2_uid93_i_cmp151_conv2d1x126(LOGICAL,92)@72
    assign rc2_uid93_i_cmp151_conv2d1x126_q = sxLTsy_uid86_i_cmp151_conv2d1x126_q & oneNonZero_uid92_i_cmp151_conv2d1x126_q;

    // expFracX_uid73_i_cmp151_conv2d1x126(BITJOIN,72)@72
    assign expFracX_uid73_i_cmp151_conv2d1x126_q = {exp_x_uid37_i_cmp151_conv2d1x126_b, frac_x_uid38_i_cmp151_conv2d1x126_b};

    // expFracY_uid75_i_cmp151_conv2d1x126(BITJOIN,74)@72
    assign expFracY_uid75_i_cmp151_conv2d1x126_q = {exp_y_uid54_i_cmp151_conv2d1x126_b, frac_y_uid55_i_cmp151_conv2d1x126_b};

    // efxGTefy_uid77_i_cmp151_conv2d1x126(COMPARE,76)@72
    assign efxGTefy_uid77_i_cmp151_conv2d1x126_a = {2'b00, expFracY_uid75_i_cmp151_conv2d1x126_q};
    assign efxGTefy_uid77_i_cmp151_conv2d1x126_b = {2'b00, expFracX_uid73_i_cmp151_conv2d1x126_q};
    assign efxGTefy_uid77_i_cmp151_conv2d1x126_o = $unsigned(efxGTefy_uid77_i_cmp151_conv2d1x126_a) - $unsigned(efxGTefy_uid77_i_cmp151_conv2d1x126_b);
    assign efxGTefy_uid77_i_cmp151_conv2d1x126_c[0] = efxGTefy_uid77_i_cmp151_conv2d1x126_o[32];

    // efxLTefy_uid78_i_cmp151_conv2d1x126(COMPARE,77)@72
    assign efxLTefy_uid78_i_cmp151_conv2d1x126_a = {2'b00, expFracX_uid73_i_cmp151_conv2d1x126_q};
    assign efxLTefy_uid78_i_cmp151_conv2d1x126_b = {2'b00, expFracY_uid75_i_cmp151_conv2d1x126_q};
    assign efxLTefy_uid78_i_cmp151_conv2d1x126_o = $unsigned(efxLTefy_uid78_i_cmp151_conv2d1x126_a) - $unsigned(efxLTefy_uid78_i_cmp151_conv2d1x126_b);
    assign efxLTefy_uid78_i_cmp151_conv2d1x126_c[0] = efxLTefy_uid78_i_cmp151_conv2d1x126_o[32];

    // expFracCompMux_uid89_i_cmp151_conv2d1x126(MUX,88)@72
    assign expFracCompMux_uid89_i_cmp151_conv2d1x126_s = signX_uid82_i_cmp151_conv2d1x126_b;
    always @(expFracCompMux_uid89_i_cmp151_conv2d1x126_s or efxLTefy_uid78_i_cmp151_conv2d1x126_c or efxGTefy_uid77_i_cmp151_conv2d1x126_c)
    begin
        unique case (expFracCompMux_uid89_i_cmp151_conv2d1x126_s)
            1'b0 : expFracCompMux_uid89_i_cmp151_conv2d1x126_q = efxLTefy_uid78_i_cmp151_conv2d1x126_c;
            1'b1 : expFracCompMux_uid89_i_cmp151_conv2d1x126_q = efxGTefy_uid77_i_cmp151_conv2d1x126_c;
            default : expFracCompMux_uid89_i_cmp151_conv2d1x126_q = 1'b0;
        endcase
    end

    // xorSigns_uid87_i_cmp151_conv2d1x126(LOGICAL,86)@72
    assign xorSigns_uid87_i_cmp151_conv2d1x126_q = signX_uid82_i_cmp151_conv2d1x126_b ^ signY_uid83_i_cmp151_conv2d1x126_b;

    // sxEQsy_uid88_i_cmp151_conv2d1x126(LOGICAL,87)@72
    assign sxEQsy_uid88_i_cmp151_conv2d1x126_q = ~ (xorSigns_uid87_i_cmp151_conv2d1x126_q);

    // sxEQsyExpFracCompMux_uid94_i_cmp151_conv2d1x126(LOGICAL,93)@72
    assign sxEQsyExpFracCompMux_uid94_i_cmp151_conv2d1x126_q = sxEQsy_uid88_i_cmp151_conv2d1x126_q & expFracCompMux_uid89_i_cmp151_conv2d1x126_q;

    // r_uid95_i_cmp151_conv2d1x126(LOGICAL,94)@72 + 1
    assign r_uid95_i_cmp151_conv2d1x126_qi = sxEQsyExpFracCompMux_uid94_i_cmp151_conv2d1x126_q | rc2_uid93_i_cmp151_conv2d1x126_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    r_uid95_i_cmp151_conv2d1x126_delay ( .xin(r_uid95_i_cmp151_conv2d1x126_qi), .xout(r_uid95_i_cmp151_conv2d1x126_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // fracXIsNotZero_uid59_i_cmp151_conv2d1x126(LOGICAL,58)@72
    assign fracXIsNotZero_uid59_i_cmp151_conv2d1x126_q = ~ (fracXIsZero_uid58_i_cmp151_conv2d1x126_q);

    // cstAllOWE_uid34_i_cmp151_conv2d1x126(CONSTANT,33)
    assign cstAllOWE_uid34_i_cmp151_conv2d1x126_q = $unsigned(8'b11111111);

    // expXIsMax_uid57_i_cmp151_conv2d1x126(LOGICAL,56)@72
    assign expXIsMax_uid57_i_cmp151_conv2d1x126_q = $unsigned(exp_y_uid54_i_cmp151_conv2d1x126_b == cstAllOWE_uid34_i_cmp151_conv2d1x126_q ? 1'b1 : 1'b0);

    // excN_y_uid62_i_cmp151_conv2d1x126(LOGICAL,61)@72
    assign excN_y_uid62_i_cmp151_conv2d1x126_q = expXIsMax_uid57_i_cmp151_conv2d1x126_q & fracXIsNotZero_uid59_i_cmp151_conv2d1x126_q;

    // fracXIsNotZero_uid42_i_cmp151_conv2d1x126(LOGICAL,41)@72
    assign fracXIsNotZero_uid42_i_cmp151_conv2d1x126_q = ~ (fracXIsZero_uid41_i_cmp151_conv2d1x126_q);

    // expXIsMax_uid40_i_cmp151_conv2d1x126(LOGICAL,39)@72
    assign expXIsMax_uid40_i_cmp151_conv2d1x126_q = $unsigned(exp_x_uid37_i_cmp151_conv2d1x126_b == cstAllOWE_uid34_i_cmp151_conv2d1x126_q ? 1'b1 : 1'b0);

    // excN_x_uid45_i_cmp151_conv2d1x126(LOGICAL,44)@72
    assign excN_x_uid45_i_cmp151_conv2d1x126_q = expXIsMax_uid40_i_cmp151_conv2d1x126_q & fracXIsNotZero_uid42_i_cmp151_conv2d1x126_q;

    // oneIsNaN_uid68_i_cmp151_conv2d1x126(LOGICAL,67)@72 + 1
    assign oneIsNaN_uid68_i_cmp151_conv2d1x126_qi = excN_x_uid45_i_cmp151_conv2d1x126_q | excN_y_uid62_i_cmp151_conv2d1x126_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    oneIsNaN_uid68_i_cmp151_conv2d1x126_delay ( .xin(oneIsNaN_uid68_i_cmp151_conv2d1x126_qi), .xout(oneIsNaN_uid68_i_cmp151_conv2d1x126_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // rPostExc_uid96_i_cmp151_conv2d1x126(MUX,95)@73
    assign rPostExc_uid96_i_cmp151_conv2d1x126_s = oneIsNaN_uid68_i_cmp151_conv2d1x126_q;
    always @(rPostExc_uid96_i_cmp151_conv2d1x126_s or r_uid95_i_cmp151_conv2d1x126_q or GND_q)
    begin
        unique case (rPostExc_uid96_i_cmp151_conv2d1x126_s)
            1'b0 : rPostExc_uid96_i_cmp151_conv2d1x126_q = r_uid95_i_cmp151_conv2d1x126_q;
            1'b1 : rPostExc_uid96_i_cmp151_conv2d1x126_q = GND_q;
            default : rPostExc_uid96_i_cmp151_conv2d1x126_q = 1'b0;
        endcase
    end

    // i_narrow_sel_conv2d1x127(MUX,29)@73
    assign i_narrow_sel_conv2d1x127_s = rPostExc_uid96_i_cmp151_conv2d1x126_q;
    always @(i_narrow_sel_conv2d1x127_s or c_float_0_000000e_0030_q or redist24_i_add147_23_conv2d1x125_out_primWireOut_1_q)
    begin
        unique case (i_narrow_sel_conv2d1x127_s)
            1'b0 : i_narrow_sel_conv2d1x127_q = c_float_0_000000e_0030_q;
            1'b1 : i_narrow_sel_conv2d1x127_q = redist24_i_add147_23_conv2d1x125_out_primWireOut_1_q;
            default : i_narrow_sel_conv2d1x127_q = 32'b0;
        endcase
    end

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // sync_out_aunroll_x(GPOUT,31)@73
    assign out_c1_exi1_0_tpl = GND_q;
    assign out_c1_exi1_1_tpl = i_narrow_sel_conv2d1x127_q;
    assign out_o_valid = redist23_sync_together32_aunroll_x_in_i_valid_73_q;
    assign out_unnamed_conv2d1x16 = GND_q;

endmodule
