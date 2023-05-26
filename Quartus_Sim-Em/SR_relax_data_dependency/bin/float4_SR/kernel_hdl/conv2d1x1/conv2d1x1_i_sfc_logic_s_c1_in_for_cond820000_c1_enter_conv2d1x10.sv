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

// SystemVerilog created from conv2d1x1_i_sfc_logic_s_c1_in_for_cond820000_c1_enter_conv2d1x10
// SystemVerilog created on Tue May 23 20:43:36 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2d1x1_i_sfc_logic_s_c1_in_for_cond820000_c1_enter_conv2d1x10 (
    output wire [0:0] out_c1_exi1_0_tpl,
    output wire [31:0] out_c1_exi1_1_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_conv2d1x15,
    input wire [0:0] in_c1_eni25_0_tpl,
    input wire [31:0] in_c1_eni25_0_1_tpl,
    input wire [31:0] in_c1_eni25_1_1_tpl,
    input wire [31:0] in_c1_eni25_2_1_tpl,
    input wire [31:0] in_c1_eni25_3_1_tpl,
    input wire [31:0] in_c1_eni25_2_tpl,
    input wire [31:0] in_c1_eni25_3_tpl,
    input wire [31:0] in_c1_eni25_4_tpl,
    input wire [31:0] in_c1_eni25_5_tpl,
    input wire [31:0] in_c1_eni25_6_tpl,
    input wire [0:0] in_c1_eni25_7_tpl,
    input wire [0:0] in_c1_eni25_8_tpl,
    input wire [0:0] in_c1_eni25_9_tpl,
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
    wire [31:0] c_float_0_000000e_0040_q;
    wire [31:0] i_add88_10_conv2d1x125_out_primWireOut;
    wire [31:0] i_add88_11_conv2d1x126_out_primWireOut;
    wire [31:0] i_add88_12_conv2d1x127_out_primWireOut;
    wire [31:0] i_add88_13_conv2d1x128_out_primWireOut;
    wire [31:0] i_add88_14_conv2d1x129_out_primWireOut;
    wire [31:0] i_add88_15_conv2d1x130_out_primWireOut;
    wire [31:0] i_add88_1_conv2d1x116_out_primWireOut;
    wire [31:0] i_add88_2_conv2d1x117_out_primWireOut;
    wire [31:0] i_add88_3_conv2d1x118_out_primWireOut;
    wire [31:0] i_add88_4_conv2d1x119_out_primWireOut;
    wire [31:0] i_add88_5_conv2d1x120_out_primWireOut;
    wire [31:0] i_add88_6_conv2d1x121_out_primWireOut;
    wire [31:0] i_add88_7_conv2d1x122_out_primWireOut;
    wire [31:0] i_add88_8_conv2d1x123_out_primWireOut;
    wire [31:0] i_add88_9_conv2d1x124_out_primWireOut;
    wire [31:0] i_add88_conv2d1x115_out_primWireOut;
    wire [31:0] i_llvm_fpga_fp_multadd_mult_add_conv2d1x13_out_primWireOut;
    wire [31:0] i_llvm_fpga_pop_f32_mul38_le207_pop49_conv2d1x19_out_data_out;
    wire [0:0] i_llvm_fpga_pop_f32_mul38_le207_pop49_conv2d1x19_out_feedback_stall_out_49;
    wire [31:0] i_llvm_fpga_pop_f32_mul51_le205_pop50_conv2d1x112_out_data_out;
    wire [0:0] i_llvm_fpga_pop_f32_mul51_le205_pop50_conv2d1x112_out_feedback_stall_out_50;
    wire [31:0] i_llvm_fpga_pop_f32_pop48_conv2d1x16_out_data_out;
    wire [0:0] i_llvm_fpga_pop_f32_pop48_conv2d1x16_out_feedback_stall_out_48;
    wire [31:0] i_llvm_fpga_push_f32_mul38_le207_push49_conv2d1x111_out_feedback_out_49;
    wire [0:0] i_llvm_fpga_push_f32_mul38_le207_push49_conv2d1x111_out_feedback_valid_out_49;
    wire [31:0] i_llvm_fpga_push_f32_mul51_le205_push50_conv2d1x114_out_feedback_out_50;
    wire [0:0] i_llvm_fpga_push_f32_mul51_le205_push50_conv2d1x114_out_feedback_valid_out_50;
    wire [31:0] i_llvm_fpga_push_f32_push48_conv2d1x18_out_feedback_out_48;
    wire [0:0] i_llvm_fpga_push_f32_push48_conv2d1x18_out_feedback_valid_out_48;
    wire [31:0] i_mul38_le_conv2d1x14_out_primWireOut;
    wire [31:0] i_mul51_le_conv2d1x15_out_primWireOut;
    wire [0:0] i_narrow_sel_conv2d1x132_s;
    reg [31:0] i_narrow_sel_conv2d1x132_q;
    wire [0:0] i_select23_conv2d1x17_s;
    reg [31:0] i_select23_conv2d1x17_q;
    wire [0:0] i_select26_conv2d1x110_s;
    reg [31:0] i_select26_conv2d1x110_q;
    wire [0:0] i_select29_conv2d1x113_s;
    reg [31:0] i_select29_conv2d1x113_q;
    wire [7:0] cstAllOWE_uid43_i_cmp92_conv2d1x131_q;
    wire [22:0] cstZeroWF_uid44_i_cmp92_conv2d1x131_q;
    wire [7:0] cstAllZWE_uid45_i_cmp92_conv2d1x131_q;
    wire [7:0] exp_x_uid46_i_cmp92_conv2d1x131_b;
    wire [22:0] frac_x_uid47_i_cmp92_conv2d1x131_b;
    wire [0:0] expXIsZero_uid48_i_cmp92_conv2d1x131_q;
    wire [0:0] expXIsMax_uid49_i_cmp92_conv2d1x131_q;
    wire [0:0] fracXIsZero_uid50_i_cmp92_conv2d1x131_q;
    wire [0:0] fracXIsNotZero_uid51_i_cmp92_conv2d1x131_q;
    wire [0:0] excZ_x_uid52_i_cmp92_conv2d1x131_q;
    wire [0:0] excN_x_uid54_i_cmp92_conv2d1x131_q;
    wire [7:0] exp_y_uid63_i_cmp92_conv2d1x131_b;
    wire [22:0] frac_y_uid64_i_cmp92_conv2d1x131_b;
    wire [0:0] expXIsZero_uid65_i_cmp92_conv2d1x131_q;
    wire [0:0] expXIsMax_uid66_i_cmp92_conv2d1x131_q;
    wire [0:0] fracXIsZero_uid67_i_cmp92_conv2d1x131_q;
    wire [0:0] fracXIsNotZero_uid68_i_cmp92_conv2d1x131_q;
    wire [0:0] excZ_y_uid69_i_cmp92_conv2d1x131_q;
    wire [0:0] excN_y_uid71_i_cmp92_conv2d1x131_q;
    wire [0:0] oneIsNaN_uid77_i_cmp92_conv2d1x131_qi;
    reg [0:0] oneIsNaN_uid77_i_cmp92_conv2d1x131_q;
    wire [30:0] expFracX_uid82_i_cmp92_conv2d1x131_q;
    wire [30:0] expFracY_uid84_i_cmp92_conv2d1x131_q;
    wire [32:0] efxGTefy_uid86_i_cmp92_conv2d1x131_a;
    wire [32:0] efxGTefy_uid86_i_cmp92_conv2d1x131_b;
    logic [32:0] efxGTefy_uid86_i_cmp92_conv2d1x131_o;
    wire [0:0] efxGTefy_uid86_i_cmp92_conv2d1x131_c;
    wire [32:0] efxLTefy_uid87_i_cmp92_conv2d1x131_a;
    wire [32:0] efxLTefy_uid87_i_cmp92_conv2d1x131_b;
    logic [32:0] efxLTefy_uid87_i_cmp92_conv2d1x131_o;
    wire [0:0] efxLTefy_uid87_i_cmp92_conv2d1x131_c;
    wire [0:0] signX_uid91_i_cmp92_conv2d1x131_b;
    wire [0:0] signY_uid92_i_cmp92_conv2d1x131_b;
    wire [1:0] two_uid93_i_cmp92_conv2d1x131_q;
    wire [1:0] concSXSY_uid94_i_cmp92_conv2d1x131_q;
    wire [0:0] sxLTsy_uid95_i_cmp92_conv2d1x131_q;
    wire [0:0] xorSigns_uid96_i_cmp92_conv2d1x131_q;
    wire [0:0] sxEQsy_uid97_i_cmp92_conv2d1x131_q;
    wire [0:0] expFracCompMux_uid98_i_cmp92_conv2d1x131_s;
    reg [0:0] expFracCompMux_uid98_i_cmp92_conv2d1x131_q;
    wire [0:0] invExcYZ_uid99_i_cmp92_conv2d1x131_q;
    wire [0:0] invExcXZ_uid100_i_cmp92_conv2d1x131_q;
    wire [0:0] oneNonZero_uid101_i_cmp92_conv2d1x131_q;
    wire [0:0] rc2_uid102_i_cmp92_conv2d1x131_q;
    wire [0:0] sxEQsyExpFracCompMux_uid103_i_cmp92_conv2d1x131_q;
    wire [0:0] r_uid104_i_cmp92_conv2d1x131_qi;
    reg [0:0] r_uid104_i_cmp92_conv2d1x131_q;
    wire [0:0] rPostExc_uid105_i_cmp92_conv2d1x131_s;
    reg [0:0] rPostExc_uid105_i_cmp92_conv2d1x131_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg0_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg1_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg2_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg3_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg4_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg5_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg6_q;
    reg [0:0] redist0_valid_fanout_reg0_q_45_q;
    reg [0:0] redist2_sync_together48_aunroll_vunroll_x_in_c1_eni25_7_tpl_2_q;
    reg [0:0] redist2_sync_together48_aunroll_vunroll_x_in_c1_eni25_7_tpl_2_delay_0;
    reg [0:0] redist3_sync_together48_aunroll_vunroll_x_in_c1_eni25_7_tpl_3_q;
    reg [0:0] redist4_sync_together48_aunroll_vunroll_x_in_c1_eni25_8_tpl_3_q;
    reg [0:0] redist4_sync_together48_aunroll_vunroll_x_in_c1_eni25_8_tpl_3_delay_0;
    reg [0:0] redist4_sync_together48_aunroll_vunroll_x_in_c1_eni25_8_tpl_3_delay_1;
    reg [0:0] redist5_sync_together48_aunroll_vunroll_x_in_c1_eni25_8_tpl_4_q;
    reg [0:0] redist6_sync_together48_aunroll_vunroll_x_in_c1_eni25_9_tpl_3_q;
    reg [0:0] redist6_sync_together48_aunroll_vunroll_x_in_c1_eni25_9_tpl_3_delay_0;
    reg [0:0] redist6_sync_together48_aunroll_vunroll_x_in_c1_eni25_9_tpl_3_delay_1;
    reg [0:0] redist7_sync_together48_aunroll_vunroll_x_in_c1_eni25_9_tpl_4_q;
    reg [31:0] redist8_sync_together48_aunroll_vunroll_x_in_c1_eni25_10_tpl_3_q;
    reg [31:0] redist8_sync_together48_aunroll_vunroll_x_in_c1_eni25_10_tpl_3_delay_0;
    reg [31:0] redist9_sync_together48_aunroll_vunroll_x_in_c1_eni25_11_tpl_2_q;
    reg [31:0] redist9_sync_together48_aunroll_vunroll_x_in_c1_eni25_11_tpl_2_delay_0;
    reg [31:0] redist10_sync_together48_aunroll_vunroll_x_in_c1_eni25_14_tpl_3_q;
    reg [31:0] redist10_sync_together48_aunroll_vunroll_x_in_c1_eni25_14_tpl_3_delay_0;
    reg [31:0] redist21_sync_together48_aunroll_vunroll_x_in_c1_eni25_25_tpl_36_q;
    reg [31:0] redist21_sync_together48_aunroll_vunroll_x_in_c1_eni25_25_tpl_36_delay_0;
    reg [0:0] redist22_sync_together48_aunroll_vunroll_x_in_i_valid_1_q;
    reg [0:0] redist23_sync_together48_aunroll_vunroll_x_in_i_valid_2_q;
    reg [0:0] redist24_sync_together48_aunroll_vunroll_x_in_i_valid_3_q;
    reg [31:0] redist28_i_llvm_fpga_pop_f32_pop48_conv2d1x16_out_data_out_1_q;
    reg [31:0] redist29_i_llvm_fpga_pop_f32_mul51_le205_pop50_conv2d1x112_out_data_out_1_q;
    reg [31:0] redist30_i_add88_15_conv2d1x130_out_primWireOut_1_q;
    wire redist1_sync_together48_aunroll_vunroll_x_in_c1_eni25_6_tpl_3_mem_reset0;
    wire [31:0] redist1_sync_together48_aunroll_vunroll_x_in_c1_eni25_6_tpl_3_mem_ia;
    wire [0:0] redist1_sync_together48_aunroll_vunroll_x_in_c1_eni25_6_tpl_3_mem_aa;
    wire [0:0] redist1_sync_together48_aunroll_vunroll_x_in_c1_eni25_6_tpl_3_mem_ab;
    wire [31:0] redist1_sync_together48_aunroll_vunroll_x_in_c1_eni25_6_tpl_3_mem_iq;
    wire [31:0] redist1_sync_together48_aunroll_vunroll_x_in_c1_eni25_6_tpl_3_mem_q;
    wire [0:0] redist1_sync_together48_aunroll_vunroll_x_in_c1_eni25_6_tpl_3_rdcnt_q;
    (* preserve *) reg [0:0] redist1_sync_together48_aunroll_vunroll_x_in_c1_eni25_6_tpl_3_rdcnt_i;
    reg [0:0] redist1_sync_together48_aunroll_vunroll_x_in_c1_eni25_6_tpl_3_wraddr_q;
    (* dont_merge *) reg [0:0] redist1_sync_together48_aunroll_vunroll_x_in_c1_eni25_6_tpl_3_cmpReg_q;
    wire [0:0] redist1_sync_together48_aunroll_vunroll_x_in_c1_eni25_6_tpl_3_notEnable_q;
    wire [0:0] redist1_sync_together48_aunroll_vunroll_x_in_c1_eni25_6_tpl_3_nor_q;
    (* dont_merge *) reg [0:0] redist1_sync_together48_aunroll_vunroll_x_in_c1_eni25_6_tpl_3_sticky_ena_q;
    wire [0:0] redist1_sync_together48_aunroll_vunroll_x_in_c1_eni25_6_tpl_3_enaAnd_q;
    reg [31:0] redist8_sync_together48_aunroll_vunroll_x_in_c1_eni25_10_tpl_3_outputreg0_q;
    reg [31:0] redist10_sync_together48_aunroll_vunroll_x_in_c1_eni25_14_tpl_3_outputreg0_q;
    reg [31:0] redist11_sync_together48_aunroll_vunroll_x_in_c1_eni25_15_tpl_6_outputreg0_q;
    wire redist11_sync_together48_aunroll_vunroll_x_in_c1_eni25_15_tpl_6_mem_reset0;
    wire [31:0] redist11_sync_together48_aunroll_vunroll_x_in_c1_eni25_15_tpl_6_mem_ia;
    wire [1:0] redist11_sync_together48_aunroll_vunroll_x_in_c1_eni25_15_tpl_6_mem_aa;
    wire [1:0] redist11_sync_together48_aunroll_vunroll_x_in_c1_eni25_15_tpl_6_mem_ab;
    wire [31:0] redist11_sync_together48_aunroll_vunroll_x_in_c1_eni25_15_tpl_6_mem_iq;
    wire [31:0] redist11_sync_together48_aunroll_vunroll_x_in_c1_eni25_15_tpl_6_mem_q;
    wire [1:0] redist11_sync_together48_aunroll_vunroll_x_in_c1_eni25_15_tpl_6_rdcnt_q;
    (* preserve *) reg [1:0] redist11_sync_together48_aunroll_vunroll_x_in_c1_eni25_15_tpl_6_rdcnt_i;
    reg [1:0] redist11_sync_together48_aunroll_vunroll_x_in_c1_eni25_15_tpl_6_wraddr_q;
    wire [2:0] redist11_sync_together48_aunroll_vunroll_x_in_c1_eni25_15_tpl_6_mem_last_q;
    wire [2:0] redist11_sync_together48_aunroll_vunroll_x_in_c1_eni25_15_tpl_6_cmp_b;
    wire [0:0] redist11_sync_together48_aunroll_vunroll_x_in_c1_eni25_15_tpl_6_cmp_q;
    (* dont_merge *) reg [0:0] redist11_sync_together48_aunroll_vunroll_x_in_c1_eni25_15_tpl_6_cmpReg_q;
    wire [0:0] redist11_sync_together48_aunroll_vunroll_x_in_c1_eni25_15_tpl_6_notEnable_q;
    wire [0:0] redist11_sync_together48_aunroll_vunroll_x_in_c1_eni25_15_tpl_6_nor_q;
    (* dont_merge *) reg [0:0] redist11_sync_together48_aunroll_vunroll_x_in_c1_eni25_15_tpl_6_sticky_ena_q;
    wire [0:0] redist11_sync_together48_aunroll_vunroll_x_in_c1_eni25_15_tpl_6_enaAnd_q;
    reg [31:0] redist12_sync_together48_aunroll_vunroll_x_in_c1_eni25_16_tpl_9_outputreg0_q;
    wire redist12_sync_together48_aunroll_vunroll_x_in_c1_eni25_16_tpl_9_mem_reset0;
    wire [31:0] redist12_sync_together48_aunroll_vunroll_x_in_c1_eni25_16_tpl_9_mem_ia;
    wire [2:0] redist12_sync_together48_aunroll_vunroll_x_in_c1_eni25_16_tpl_9_mem_aa;
    wire [2:0] redist12_sync_together48_aunroll_vunroll_x_in_c1_eni25_16_tpl_9_mem_ab;
    wire [31:0] redist12_sync_together48_aunroll_vunroll_x_in_c1_eni25_16_tpl_9_mem_iq;
    wire [31:0] redist12_sync_together48_aunroll_vunroll_x_in_c1_eni25_16_tpl_9_mem_q;
    wire [2:0] redist12_sync_together48_aunroll_vunroll_x_in_c1_eni25_16_tpl_9_rdcnt_q;
    (* preserve *) reg [2:0] redist12_sync_together48_aunroll_vunroll_x_in_c1_eni25_16_tpl_9_rdcnt_i;
    (* preserve *) reg redist12_sync_together48_aunroll_vunroll_x_in_c1_eni25_16_tpl_9_rdcnt_eq;
    reg [2:0] redist12_sync_together48_aunroll_vunroll_x_in_c1_eni25_16_tpl_9_wraddr_q;
    wire [3:0] redist12_sync_together48_aunroll_vunroll_x_in_c1_eni25_16_tpl_9_mem_last_q;
    wire [3:0] redist12_sync_together48_aunroll_vunroll_x_in_c1_eni25_16_tpl_9_cmp_b;
    wire [0:0] redist12_sync_together48_aunroll_vunroll_x_in_c1_eni25_16_tpl_9_cmp_q;
    (* dont_merge *) reg [0:0] redist12_sync_together48_aunroll_vunroll_x_in_c1_eni25_16_tpl_9_cmpReg_q;
    wire [0:0] redist12_sync_together48_aunroll_vunroll_x_in_c1_eni25_16_tpl_9_notEnable_q;
    wire [0:0] redist12_sync_together48_aunroll_vunroll_x_in_c1_eni25_16_tpl_9_nor_q;
    (* dont_merge *) reg [0:0] redist12_sync_together48_aunroll_vunroll_x_in_c1_eni25_16_tpl_9_sticky_ena_q;
    wire [0:0] redist12_sync_together48_aunroll_vunroll_x_in_c1_eni25_16_tpl_9_enaAnd_q;
    reg [31:0] redist13_sync_together48_aunroll_vunroll_x_in_c1_eni25_17_tpl_12_outputreg0_q;
    wire redist13_sync_together48_aunroll_vunroll_x_in_c1_eni25_17_tpl_12_mem_reset0;
    wire [31:0] redist13_sync_together48_aunroll_vunroll_x_in_c1_eni25_17_tpl_12_mem_ia;
    wire [3:0] redist13_sync_together48_aunroll_vunroll_x_in_c1_eni25_17_tpl_12_mem_aa;
    wire [3:0] redist13_sync_together48_aunroll_vunroll_x_in_c1_eni25_17_tpl_12_mem_ab;
    wire [31:0] redist13_sync_together48_aunroll_vunroll_x_in_c1_eni25_17_tpl_12_mem_iq;
    wire [31:0] redist13_sync_together48_aunroll_vunroll_x_in_c1_eni25_17_tpl_12_mem_q;
    wire [3:0] redist13_sync_together48_aunroll_vunroll_x_in_c1_eni25_17_tpl_12_rdcnt_q;
    (* preserve *) reg [3:0] redist13_sync_together48_aunroll_vunroll_x_in_c1_eni25_17_tpl_12_rdcnt_i;
    (* preserve *) reg redist13_sync_together48_aunroll_vunroll_x_in_c1_eni25_17_tpl_12_rdcnt_eq;
    reg [3:0] redist13_sync_together48_aunroll_vunroll_x_in_c1_eni25_17_tpl_12_wraddr_q;
    wire [4:0] redist13_sync_together48_aunroll_vunroll_x_in_c1_eni25_17_tpl_12_mem_last_q;
    wire [4:0] redist13_sync_together48_aunroll_vunroll_x_in_c1_eni25_17_tpl_12_cmp_b;
    wire [0:0] redist13_sync_together48_aunroll_vunroll_x_in_c1_eni25_17_tpl_12_cmp_q;
    (* dont_merge *) reg [0:0] redist13_sync_together48_aunroll_vunroll_x_in_c1_eni25_17_tpl_12_cmpReg_q;
    wire [0:0] redist13_sync_together48_aunroll_vunroll_x_in_c1_eni25_17_tpl_12_notEnable_q;
    wire [0:0] redist13_sync_together48_aunroll_vunroll_x_in_c1_eni25_17_tpl_12_nor_q;
    (* dont_merge *) reg [0:0] redist13_sync_together48_aunroll_vunroll_x_in_c1_eni25_17_tpl_12_sticky_ena_q;
    wire [0:0] redist13_sync_together48_aunroll_vunroll_x_in_c1_eni25_17_tpl_12_enaAnd_q;
    reg [31:0] redist14_sync_together48_aunroll_vunroll_x_in_c1_eni25_18_tpl_15_outputreg0_q;
    wire redist14_sync_together48_aunroll_vunroll_x_in_c1_eni25_18_tpl_15_mem_reset0;
    wire [31:0] redist14_sync_together48_aunroll_vunroll_x_in_c1_eni25_18_tpl_15_mem_ia;
    wire [3:0] redist14_sync_together48_aunroll_vunroll_x_in_c1_eni25_18_tpl_15_mem_aa;
    wire [3:0] redist14_sync_together48_aunroll_vunroll_x_in_c1_eni25_18_tpl_15_mem_ab;
    wire [31:0] redist14_sync_together48_aunroll_vunroll_x_in_c1_eni25_18_tpl_15_mem_iq;
    wire [31:0] redist14_sync_together48_aunroll_vunroll_x_in_c1_eni25_18_tpl_15_mem_q;
    wire [3:0] redist14_sync_together48_aunroll_vunroll_x_in_c1_eni25_18_tpl_15_rdcnt_q;
    (* preserve *) reg [3:0] redist14_sync_together48_aunroll_vunroll_x_in_c1_eni25_18_tpl_15_rdcnt_i;
    (* preserve *) reg redist14_sync_together48_aunroll_vunroll_x_in_c1_eni25_18_tpl_15_rdcnt_eq;
    reg [3:0] redist14_sync_together48_aunroll_vunroll_x_in_c1_eni25_18_tpl_15_wraddr_q;
    wire [4:0] redist14_sync_together48_aunroll_vunroll_x_in_c1_eni25_18_tpl_15_mem_last_q;
    wire [4:0] redist14_sync_together48_aunroll_vunroll_x_in_c1_eni25_18_tpl_15_cmp_b;
    wire [0:0] redist14_sync_together48_aunroll_vunroll_x_in_c1_eni25_18_tpl_15_cmp_q;
    (* dont_merge *) reg [0:0] redist14_sync_together48_aunroll_vunroll_x_in_c1_eni25_18_tpl_15_cmpReg_q;
    wire [0:0] redist14_sync_together48_aunroll_vunroll_x_in_c1_eni25_18_tpl_15_notEnable_q;
    wire [0:0] redist14_sync_together48_aunroll_vunroll_x_in_c1_eni25_18_tpl_15_nor_q;
    (* dont_merge *) reg [0:0] redist14_sync_together48_aunroll_vunroll_x_in_c1_eni25_18_tpl_15_sticky_ena_q;
    wire [0:0] redist14_sync_together48_aunroll_vunroll_x_in_c1_eni25_18_tpl_15_enaAnd_q;
    reg [31:0] redist15_sync_together48_aunroll_vunroll_x_in_c1_eni25_19_tpl_18_outputreg0_q;
    wire redist15_sync_together48_aunroll_vunroll_x_in_c1_eni25_19_tpl_18_mem_reset0;
    wire [31:0] redist15_sync_together48_aunroll_vunroll_x_in_c1_eni25_19_tpl_18_mem_ia;
    wire [3:0] redist15_sync_together48_aunroll_vunroll_x_in_c1_eni25_19_tpl_18_mem_aa;
    wire [3:0] redist15_sync_together48_aunroll_vunroll_x_in_c1_eni25_19_tpl_18_mem_ab;
    wire [31:0] redist15_sync_together48_aunroll_vunroll_x_in_c1_eni25_19_tpl_18_mem_iq;
    wire [31:0] redist15_sync_together48_aunroll_vunroll_x_in_c1_eni25_19_tpl_18_mem_q;
    wire [3:0] redist15_sync_together48_aunroll_vunroll_x_in_c1_eni25_19_tpl_18_rdcnt_q;
    (* preserve *) reg [3:0] redist15_sync_together48_aunroll_vunroll_x_in_c1_eni25_19_tpl_18_rdcnt_i;
    reg [3:0] redist15_sync_together48_aunroll_vunroll_x_in_c1_eni25_19_tpl_18_wraddr_q;
    wire [4:0] redist15_sync_together48_aunroll_vunroll_x_in_c1_eni25_19_tpl_18_mem_last_q;
    wire [4:0] redist15_sync_together48_aunroll_vunroll_x_in_c1_eni25_19_tpl_18_cmp_b;
    wire [0:0] redist15_sync_together48_aunroll_vunroll_x_in_c1_eni25_19_tpl_18_cmp_q;
    (* dont_merge *) reg [0:0] redist15_sync_together48_aunroll_vunroll_x_in_c1_eni25_19_tpl_18_cmpReg_q;
    wire [0:0] redist15_sync_together48_aunroll_vunroll_x_in_c1_eni25_19_tpl_18_notEnable_q;
    wire [0:0] redist15_sync_together48_aunroll_vunroll_x_in_c1_eni25_19_tpl_18_nor_q;
    (* dont_merge *) reg [0:0] redist15_sync_together48_aunroll_vunroll_x_in_c1_eni25_19_tpl_18_sticky_ena_q;
    wire [0:0] redist15_sync_together48_aunroll_vunroll_x_in_c1_eni25_19_tpl_18_enaAnd_q;
    reg [31:0] redist16_sync_together48_aunroll_vunroll_x_in_c1_eni25_20_tpl_21_outputreg0_q;
    wire redist16_sync_together48_aunroll_vunroll_x_in_c1_eni25_20_tpl_21_mem_reset0;
    wire [31:0] redist16_sync_together48_aunroll_vunroll_x_in_c1_eni25_20_tpl_21_mem_ia;
    wire [4:0] redist16_sync_together48_aunroll_vunroll_x_in_c1_eni25_20_tpl_21_mem_aa;
    wire [4:0] redist16_sync_together48_aunroll_vunroll_x_in_c1_eni25_20_tpl_21_mem_ab;
    wire [31:0] redist16_sync_together48_aunroll_vunroll_x_in_c1_eni25_20_tpl_21_mem_iq;
    wire [31:0] redist16_sync_together48_aunroll_vunroll_x_in_c1_eni25_20_tpl_21_mem_q;
    wire [4:0] redist16_sync_together48_aunroll_vunroll_x_in_c1_eni25_20_tpl_21_rdcnt_q;
    (* preserve *) reg [4:0] redist16_sync_together48_aunroll_vunroll_x_in_c1_eni25_20_tpl_21_rdcnt_i;
    (* preserve *) reg redist16_sync_together48_aunroll_vunroll_x_in_c1_eni25_20_tpl_21_rdcnt_eq;
    reg [4:0] redist16_sync_together48_aunroll_vunroll_x_in_c1_eni25_20_tpl_21_wraddr_q;
    wire [5:0] redist16_sync_together48_aunroll_vunroll_x_in_c1_eni25_20_tpl_21_mem_last_q;
    wire [5:0] redist16_sync_together48_aunroll_vunroll_x_in_c1_eni25_20_tpl_21_cmp_b;
    wire [0:0] redist16_sync_together48_aunroll_vunroll_x_in_c1_eni25_20_tpl_21_cmp_q;
    (* dont_merge *) reg [0:0] redist16_sync_together48_aunroll_vunroll_x_in_c1_eni25_20_tpl_21_cmpReg_q;
    wire [0:0] redist16_sync_together48_aunroll_vunroll_x_in_c1_eni25_20_tpl_21_notEnable_q;
    wire [0:0] redist16_sync_together48_aunroll_vunroll_x_in_c1_eni25_20_tpl_21_nor_q;
    (* dont_merge *) reg [0:0] redist16_sync_together48_aunroll_vunroll_x_in_c1_eni25_20_tpl_21_sticky_ena_q;
    wire [0:0] redist16_sync_together48_aunroll_vunroll_x_in_c1_eni25_20_tpl_21_enaAnd_q;
    reg [31:0] redist17_sync_together48_aunroll_vunroll_x_in_c1_eni25_21_tpl_24_outputreg0_q;
    wire redist17_sync_together48_aunroll_vunroll_x_in_c1_eni25_21_tpl_24_mem_reset0;
    wire [31:0] redist17_sync_together48_aunroll_vunroll_x_in_c1_eni25_21_tpl_24_mem_ia;
    wire [4:0] redist17_sync_together48_aunroll_vunroll_x_in_c1_eni25_21_tpl_24_mem_aa;
    wire [4:0] redist17_sync_together48_aunroll_vunroll_x_in_c1_eni25_21_tpl_24_mem_ab;
    wire [31:0] redist17_sync_together48_aunroll_vunroll_x_in_c1_eni25_21_tpl_24_mem_iq;
    wire [31:0] redist17_sync_together48_aunroll_vunroll_x_in_c1_eni25_21_tpl_24_mem_q;
    wire [4:0] redist17_sync_together48_aunroll_vunroll_x_in_c1_eni25_21_tpl_24_rdcnt_q;
    (* preserve *) reg [4:0] redist17_sync_together48_aunroll_vunroll_x_in_c1_eni25_21_tpl_24_rdcnt_i;
    (* preserve *) reg redist17_sync_together48_aunroll_vunroll_x_in_c1_eni25_21_tpl_24_rdcnt_eq;
    reg [4:0] redist17_sync_together48_aunroll_vunroll_x_in_c1_eni25_21_tpl_24_wraddr_q;
    wire [5:0] redist17_sync_together48_aunroll_vunroll_x_in_c1_eni25_21_tpl_24_mem_last_q;
    wire [5:0] redist17_sync_together48_aunroll_vunroll_x_in_c1_eni25_21_tpl_24_cmp_b;
    wire [0:0] redist17_sync_together48_aunroll_vunroll_x_in_c1_eni25_21_tpl_24_cmp_q;
    (* dont_merge *) reg [0:0] redist17_sync_together48_aunroll_vunroll_x_in_c1_eni25_21_tpl_24_cmpReg_q;
    wire [0:0] redist17_sync_together48_aunroll_vunroll_x_in_c1_eni25_21_tpl_24_notEnable_q;
    wire [0:0] redist17_sync_together48_aunroll_vunroll_x_in_c1_eni25_21_tpl_24_nor_q;
    (* dont_merge *) reg [0:0] redist17_sync_together48_aunroll_vunroll_x_in_c1_eni25_21_tpl_24_sticky_ena_q;
    wire [0:0] redist17_sync_together48_aunroll_vunroll_x_in_c1_eni25_21_tpl_24_enaAnd_q;
    reg [31:0] redist18_sync_together48_aunroll_vunroll_x_in_c1_eni25_22_tpl_27_outputreg0_q;
    wire redist18_sync_together48_aunroll_vunroll_x_in_c1_eni25_22_tpl_27_mem_reset0;
    wire [31:0] redist18_sync_together48_aunroll_vunroll_x_in_c1_eni25_22_tpl_27_mem_ia;
    wire [4:0] redist18_sync_together48_aunroll_vunroll_x_in_c1_eni25_22_tpl_27_mem_aa;
    wire [4:0] redist18_sync_together48_aunroll_vunroll_x_in_c1_eni25_22_tpl_27_mem_ab;
    wire [31:0] redist18_sync_together48_aunroll_vunroll_x_in_c1_eni25_22_tpl_27_mem_iq;
    wire [31:0] redist18_sync_together48_aunroll_vunroll_x_in_c1_eni25_22_tpl_27_mem_q;
    wire [4:0] redist18_sync_together48_aunroll_vunroll_x_in_c1_eni25_22_tpl_27_rdcnt_q;
    (* preserve *) reg [4:0] redist18_sync_together48_aunroll_vunroll_x_in_c1_eni25_22_tpl_27_rdcnt_i;
    (* preserve *) reg redist18_sync_together48_aunroll_vunroll_x_in_c1_eni25_22_tpl_27_rdcnt_eq;
    reg [4:0] redist18_sync_together48_aunroll_vunroll_x_in_c1_eni25_22_tpl_27_wraddr_q;
    wire [5:0] redist18_sync_together48_aunroll_vunroll_x_in_c1_eni25_22_tpl_27_mem_last_q;
    wire [5:0] redist18_sync_together48_aunroll_vunroll_x_in_c1_eni25_22_tpl_27_cmp_b;
    wire [0:0] redist18_sync_together48_aunroll_vunroll_x_in_c1_eni25_22_tpl_27_cmp_q;
    (* dont_merge *) reg [0:0] redist18_sync_together48_aunroll_vunroll_x_in_c1_eni25_22_tpl_27_cmpReg_q;
    wire [0:0] redist18_sync_together48_aunroll_vunroll_x_in_c1_eni25_22_tpl_27_notEnable_q;
    wire [0:0] redist18_sync_together48_aunroll_vunroll_x_in_c1_eni25_22_tpl_27_nor_q;
    (* dont_merge *) reg [0:0] redist18_sync_together48_aunroll_vunroll_x_in_c1_eni25_22_tpl_27_sticky_ena_q;
    wire [0:0] redist18_sync_together48_aunroll_vunroll_x_in_c1_eni25_22_tpl_27_enaAnd_q;
    reg [31:0] redist19_sync_together48_aunroll_vunroll_x_in_c1_eni25_23_tpl_30_outputreg0_q;
    wire redist19_sync_together48_aunroll_vunroll_x_in_c1_eni25_23_tpl_30_mem_reset0;
    wire [31:0] redist19_sync_together48_aunroll_vunroll_x_in_c1_eni25_23_tpl_30_mem_ia;
    wire [4:0] redist19_sync_together48_aunroll_vunroll_x_in_c1_eni25_23_tpl_30_mem_aa;
    wire [4:0] redist19_sync_together48_aunroll_vunroll_x_in_c1_eni25_23_tpl_30_mem_ab;
    wire [31:0] redist19_sync_together48_aunroll_vunroll_x_in_c1_eni25_23_tpl_30_mem_iq;
    wire [31:0] redist19_sync_together48_aunroll_vunroll_x_in_c1_eni25_23_tpl_30_mem_q;
    wire [4:0] redist19_sync_together48_aunroll_vunroll_x_in_c1_eni25_23_tpl_30_rdcnt_q;
    (* preserve *) reg [4:0] redist19_sync_together48_aunroll_vunroll_x_in_c1_eni25_23_tpl_30_rdcnt_i;
    (* preserve *) reg redist19_sync_together48_aunroll_vunroll_x_in_c1_eni25_23_tpl_30_rdcnt_eq;
    reg [4:0] redist19_sync_together48_aunroll_vunroll_x_in_c1_eni25_23_tpl_30_wraddr_q;
    wire [5:0] redist19_sync_together48_aunroll_vunroll_x_in_c1_eni25_23_tpl_30_mem_last_q;
    wire [5:0] redist19_sync_together48_aunroll_vunroll_x_in_c1_eni25_23_tpl_30_cmp_b;
    wire [0:0] redist19_sync_together48_aunroll_vunroll_x_in_c1_eni25_23_tpl_30_cmp_q;
    (* dont_merge *) reg [0:0] redist19_sync_together48_aunroll_vunroll_x_in_c1_eni25_23_tpl_30_cmpReg_q;
    wire [0:0] redist19_sync_together48_aunroll_vunroll_x_in_c1_eni25_23_tpl_30_notEnable_q;
    wire [0:0] redist19_sync_together48_aunroll_vunroll_x_in_c1_eni25_23_tpl_30_nor_q;
    (* dont_merge *) reg [0:0] redist19_sync_together48_aunroll_vunroll_x_in_c1_eni25_23_tpl_30_sticky_ena_q;
    wire [0:0] redist19_sync_together48_aunroll_vunroll_x_in_c1_eni25_23_tpl_30_enaAnd_q;
    reg [31:0] redist20_sync_together48_aunroll_vunroll_x_in_c1_eni25_24_tpl_33_outputreg0_q;
    wire redist20_sync_together48_aunroll_vunroll_x_in_c1_eni25_24_tpl_33_mem_reset0;
    wire [31:0] redist20_sync_together48_aunroll_vunroll_x_in_c1_eni25_24_tpl_33_mem_ia;
    wire [4:0] redist20_sync_together48_aunroll_vunroll_x_in_c1_eni25_24_tpl_33_mem_aa;
    wire [4:0] redist20_sync_together48_aunroll_vunroll_x_in_c1_eni25_24_tpl_33_mem_ab;
    wire [31:0] redist20_sync_together48_aunroll_vunroll_x_in_c1_eni25_24_tpl_33_mem_iq;
    wire [31:0] redist20_sync_together48_aunroll_vunroll_x_in_c1_eni25_24_tpl_33_mem_q;
    wire [4:0] redist20_sync_together48_aunroll_vunroll_x_in_c1_eni25_24_tpl_33_rdcnt_q;
    (* preserve *) reg [4:0] redist20_sync_together48_aunroll_vunroll_x_in_c1_eni25_24_tpl_33_rdcnt_i;
    (* preserve *) reg redist20_sync_together48_aunroll_vunroll_x_in_c1_eni25_24_tpl_33_rdcnt_eq;
    reg [4:0] redist20_sync_together48_aunroll_vunroll_x_in_c1_eni25_24_tpl_33_wraddr_q;
    wire [5:0] redist20_sync_together48_aunroll_vunroll_x_in_c1_eni25_24_tpl_33_mem_last_q;
    wire [5:0] redist20_sync_together48_aunroll_vunroll_x_in_c1_eni25_24_tpl_33_cmp_b;
    wire [0:0] redist20_sync_together48_aunroll_vunroll_x_in_c1_eni25_24_tpl_33_cmp_q;
    (* dont_merge *) reg [0:0] redist20_sync_together48_aunroll_vunroll_x_in_c1_eni25_24_tpl_33_cmpReg_q;
    wire [0:0] redist20_sync_together48_aunroll_vunroll_x_in_c1_eni25_24_tpl_33_notEnable_q;
    wire [0:0] redist20_sync_together48_aunroll_vunroll_x_in_c1_eni25_24_tpl_33_nor_q;
    (* dont_merge *) reg [0:0] redist20_sync_together48_aunroll_vunroll_x_in_c1_eni25_24_tpl_33_sticky_ena_q;
    wire [0:0] redist20_sync_together48_aunroll_vunroll_x_in_c1_eni25_24_tpl_33_enaAnd_q;
    reg [31:0] redist21_sync_together48_aunroll_vunroll_x_in_c1_eni25_25_tpl_36_outputreg0_q;
    wire redist25_i_select29_conv2d1x113_q_36_mem_reset0;
    wire [31:0] redist25_i_select29_conv2d1x113_q_36_mem_ia;
    wire [0:0] redist25_i_select29_conv2d1x113_q_36_mem_aa;
    wire [0:0] redist25_i_select29_conv2d1x113_q_36_mem_ab;
    wire [31:0] redist25_i_select29_conv2d1x113_q_36_mem_iq;
    wire [31:0] redist25_i_select29_conv2d1x113_q_36_mem_q;
    wire [0:0] redist25_i_select29_conv2d1x113_q_36_rdcnt_q;
    (* preserve *) reg [0:0] redist25_i_select29_conv2d1x113_q_36_rdcnt_i;
    reg [0:0] redist25_i_select29_conv2d1x113_q_36_wraddr_q;
    (* dont_merge *) reg [0:0] redist25_i_select29_conv2d1x113_q_36_cmpReg_q;
    wire [0:0] redist25_i_select29_conv2d1x113_q_36_notEnable_q;
    wire [0:0] redist25_i_select29_conv2d1x113_q_36_nor_q;
    (* dont_merge *) reg [0:0] redist25_i_select29_conv2d1x113_q_36_sticky_ena_q;
    wire [0:0] redist25_i_select29_conv2d1x113_q_36_enaAnd_q;
    wire redist26_i_select26_conv2d1x110_q_39_mem_reset0;
    wire [31:0] redist26_i_select26_conv2d1x110_q_39_mem_ia;
    wire [2:0] redist26_i_select26_conv2d1x110_q_39_mem_aa;
    wire [2:0] redist26_i_select26_conv2d1x110_q_39_mem_ab;
    wire [31:0] redist26_i_select26_conv2d1x110_q_39_mem_iq;
    wire [31:0] redist26_i_select26_conv2d1x110_q_39_mem_q;
    wire [2:0] redist26_i_select26_conv2d1x110_q_39_rdcnt_q;
    (* preserve *) reg [2:0] redist26_i_select26_conv2d1x110_q_39_rdcnt_i;
    (* preserve *) reg redist26_i_select26_conv2d1x110_q_39_rdcnt_eq;
    reg [2:0] redist26_i_select26_conv2d1x110_q_39_wraddr_q;
    wire [2:0] redist26_i_select26_conv2d1x110_q_39_mem_last_q;
    wire [0:0] redist26_i_select26_conv2d1x110_q_39_cmp_q;
    (* dont_merge *) reg [0:0] redist26_i_select26_conv2d1x110_q_39_cmpReg_q;
    wire [0:0] redist26_i_select26_conv2d1x110_q_39_notEnable_q;
    wire [0:0] redist26_i_select26_conv2d1x110_q_39_nor_q;
    (* dont_merge *) reg [0:0] redist26_i_select26_conv2d1x110_q_39_sticky_ena_q;
    wire [0:0] redist26_i_select26_conv2d1x110_q_39_enaAnd_q;
    wire redist27_i_select23_conv2d1x17_q_41_mem_reset0;
    wire [31:0] redist27_i_select23_conv2d1x17_q_41_mem_ia;
    wire [5:0] redist27_i_select23_conv2d1x17_q_41_mem_aa;
    wire [5:0] redist27_i_select23_conv2d1x17_q_41_mem_ab;
    wire [31:0] redist27_i_select23_conv2d1x17_q_41_mem_iq;
    wire [31:0] redist27_i_select23_conv2d1x17_q_41_mem_q;
    wire [5:0] redist27_i_select23_conv2d1x17_q_41_rdcnt_q;
    (* preserve *) reg [5:0] redist27_i_select23_conv2d1x17_q_41_rdcnt_i;
    (* preserve *) reg redist27_i_select23_conv2d1x17_q_41_rdcnt_eq;
    reg [5:0] redist27_i_select23_conv2d1x17_q_41_wraddr_q;
    wire [6:0] redist27_i_select23_conv2d1x17_q_41_mem_last_q;
    wire [6:0] redist27_i_select23_conv2d1x17_q_41_cmp_b;
    wire [0:0] redist27_i_select23_conv2d1x17_q_41_cmp_q;
    reg [0:0] redist27_i_select23_conv2d1x17_q_41_cmpReg_q;
    wire [0:0] redist27_i_select23_conv2d1x17_q_41_notEnable_q;
    wire [0:0] redist27_i_select23_conv2d1x17_q_41_nor_q;
    reg [0:0] redist27_i_select23_conv2d1x17_q_41_sticky_ena_q;
    wire [0:0] redist27_i_select23_conv2d1x17_q_41_enaAnd_q;
    wire redist21_sync_together48_aunroll_vunroll_x_in_c1_eni25_25_tpl_36_split_0_mem_reset0;
    wire [31:0] redist21_sync_together48_aunroll_vunroll_x_in_c1_eni25_25_tpl_36_split_0_mem_ia;
    wire [4:0] redist21_sync_together48_aunroll_vunroll_x_in_c1_eni25_25_tpl_36_split_0_mem_aa;
    wire [4:0] redist21_sync_together48_aunroll_vunroll_x_in_c1_eni25_25_tpl_36_split_0_mem_ab;
    wire [31:0] redist21_sync_together48_aunroll_vunroll_x_in_c1_eni25_25_tpl_36_split_0_mem_iq;
    wire [31:0] redist21_sync_together48_aunroll_vunroll_x_in_c1_eni25_25_tpl_36_split_0_mem_q;
    wire [4:0] redist21_sync_together48_aunroll_vunroll_x_in_c1_eni25_25_tpl_36_split_0_rdcnt_q;
    (* preserve *) reg [4:0] redist21_sync_together48_aunroll_vunroll_x_in_c1_eni25_25_tpl_36_split_0_rdcnt_i;
    reg [4:0] redist21_sync_together48_aunroll_vunroll_x_in_c1_eni25_25_tpl_36_split_0_wraddr_q;
    wire [5:0] redist21_sync_together48_aunroll_vunroll_x_in_c1_eni25_25_tpl_36_split_0_mem_last_q;
    wire [5:0] redist21_sync_together48_aunroll_vunroll_x_in_c1_eni25_25_tpl_36_split_0_cmp_b;
    wire [0:0] redist21_sync_together48_aunroll_vunroll_x_in_c1_eni25_25_tpl_36_split_0_cmp_q;
    (* dont_merge *) reg [0:0] redist21_sync_together48_aunroll_vunroll_x_in_c1_eni25_25_tpl_36_split_0_cmpReg_q;
    wire [0:0] redist21_sync_together48_aunroll_vunroll_x_in_c1_eni25_25_tpl_36_split_0_notEnable_q;
    wire [0:0] redist21_sync_together48_aunroll_vunroll_x_in_c1_eni25_25_tpl_36_split_0_nor_q;
    (* dont_merge *) reg [0:0] redist21_sync_together48_aunroll_vunroll_x_in_c1_eni25_25_tpl_36_split_0_sticky_ena_q;
    wire [0:0] redist21_sync_together48_aunroll_vunroll_x_in_c1_eni25_25_tpl_36_split_0_enaAnd_q;
    wire redist25_i_select29_conv2d1x113_q_36_split_0_mem_reset0;
    wire [31:0] redist25_i_select29_conv2d1x113_q_36_split_0_mem_ia;
    wire [4:0] redist25_i_select29_conv2d1x113_q_36_split_0_mem_aa;
    wire [4:0] redist25_i_select29_conv2d1x113_q_36_split_0_mem_ab;
    wire [31:0] redist25_i_select29_conv2d1x113_q_36_split_0_mem_iq;
    wire [31:0] redist25_i_select29_conv2d1x113_q_36_split_0_mem_q;
    wire [4:0] redist25_i_select29_conv2d1x113_q_36_split_0_rdcnt_q;
    (* preserve *) reg [4:0] redist25_i_select29_conv2d1x113_q_36_split_0_rdcnt_i;
    reg [4:0] redist25_i_select29_conv2d1x113_q_36_split_0_wraddr_q;
    wire [5:0] redist25_i_select29_conv2d1x113_q_36_split_0_mem_last_q;
    wire [5:0] redist25_i_select29_conv2d1x113_q_36_split_0_cmp_b;
    wire [0:0] redist25_i_select29_conv2d1x113_q_36_split_0_cmp_q;
    (* dont_merge *) reg [0:0] redist25_i_select29_conv2d1x113_q_36_split_0_cmpReg_q;
    wire [0:0] redist25_i_select29_conv2d1x113_q_36_split_0_nor_q;
    (* dont_merge *) reg [0:0] redist25_i_select29_conv2d1x113_q_36_split_0_sticky_ena_q;
    wire [0:0] redist25_i_select29_conv2d1x113_q_36_split_0_enaAnd_q;
    reg [31:0] redist26_i_select26_conv2d1x110_q_39_split_0_inputreg0_q;
    wire redist26_i_select26_conv2d1x110_q_39_split_0_mem_reset0;
    wire [31:0] redist26_i_select26_conv2d1x110_q_39_split_0_mem_ia;
    wire [4:0] redist26_i_select26_conv2d1x110_q_39_split_0_mem_aa;
    wire [4:0] redist26_i_select26_conv2d1x110_q_39_split_0_mem_ab;
    wire [31:0] redist26_i_select26_conv2d1x110_q_39_split_0_mem_iq;
    wire [31:0] redist26_i_select26_conv2d1x110_q_39_split_0_mem_q;
    wire [4:0] redist26_i_select26_conv2d1x110_q_39_split_0_rdcnt_q;
    (* preserve *) reg [4:0] redist26_i_select26_conv2d1x110_q_39_split_0_rdcnt_i;
    (* preserve *) reg redist26_i_select26_conv2d1x110_q_39_split_0_rdcnt_eq;
    reg [4:0] redist26_i_select26_conv2d1x110_q_39_split_0_wraddr_q;
    wire [5:0] redist26_i_select26_conv2d1x110_q_39_split_0_mem_last_q;
    wire [5:0] redist26_i_select26_conv2d1x110_q_39_split_0_cmp_b;
    wire [0:0] redist26_i_select26_conv2d1x110_q_39_split_0_cmp_q;
    (* dont_merge *) reg [0:0] redist26_i_select26_conv2d1x110_q_39_split_0_cmpReg_q;
    wire [0:0] redist26_i_select26_conv2d1x110_q_39_split_0_nor_q;
    (* dont_merge *) reg [0:0] redist26_i_select26_conv2d1x110_q_39_split_0_sticky_ena_q;
    wire [0:0] redist26_i_select26_conv2d1x110_q_39_split_0_enaAnd_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist22_sync_together48_aunroll_vunroll_x_in_i_valid_1(DELAY,135)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist22_sync_together48_aunroll_vunroll_x_in_i_valid_1_q <= '0;
        end
        else
        begin
            redist22_sync_together48_aunroll_vunroll_x_in_i_valid_1_q <= $unsigned(in_i_valid);
        end
    end

    // redist23_sync_together48_aunroll_vunroll_x_in_i_valid_2(DELAY,136)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist23_sync_together48_aunroll_vunroll_x_in_i_valid_2_q <= '0;
        end
        else
        begin
            redist23_sync_together48_aunroll_vunroll_x_in_i_valid_2_q <= $unsigned(redist22_sync_together48_aunroll_vunroll_x_in_i_valid_1_q);
        end
    end

    // redist24_sync_together48_aunroll_vunroll_x_in_i_valid_3(DELAY,137)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist24_sync_together48_aunroll_vunroll_x_in_i_valid_3_q <= '0;
        end
        else
        begin
            redist24_sync_together48_aunroll_vunroll_x_in_i_valid_3_q <= $unsigned(redist23_sync_together48_aunroll_vunroll_x_in_i_valid_2_q);
        end
    end

    // valid_fanout_reg0(REG,106)@139 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist24_sync_together48_aunroll_vunroll_x_in_i_valid_3_q);
        end
    end

    // redist0_valid_fanout_reg0_q_45(DELAY,113)
    dspba_delay_ver #( .width(1), .depth(45), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist0_valid_fanout_reg0_q_45 ( .xin(valid_fanout_reg0_q), .xout(redist0_valid_fanout_reg0_q_45_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist27_i_select23_conv2d1x17_q_41_notEnable(LOGICAL,292)
    assign redist27_i_select23_conv2d1x17_q_41_notEnable_q = $unsigned(~ (VCC_q));

    // redist27_i_select23_conv2d1x17_q_41_nor(LOGICAL,293)
    assign redist27_i_select23_conv2d1x17_q_41_nor_q = ~ (redist27_i_select23_conv2d1x17_q_41_notEnable_q | redist27_i_select23_conv2d1x17_q_41_sticky_ena_q);

    // redist27_i_select23_conv2d1x17_q_41_mem_last(CONSTANT,289)
    assign redist27_i_select23_conv2d1x17_q_41_mem_last_q = $unsigned(7'b0100110);

    // redist27_i_select23_conv2d1x17_q_41_cmp(LOGICAL,290)
    assign redist27_i_select23_conv2d1x17_q_41_cmp_b = {1'b0, redist27_i_select23_conv2d1x17_q_41_rdcnt_q};
    assign redist27_i_select23_conv2d1x17_q_41_cmp_q = $unsigned(redist27_i_select23_conv2d1x17_q_41_mem_last_q == redist27_i_select23_conv2d1x17_q_41_cmp_b ? 1'b1 : 1'b0);

    // redist27_i_select23_conv2d1x17_q_41_cmpReg(REG,291)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist27_i_select23_conv2d1x17_q_41_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist27_i_select23_conv2d1x17_q_41_cmpReg_q <= $unsigned(redist27_i_select23_conv2d1x17_q_41_cmp_q);
        end
    end

    // redist27_i_select23_conv2d1x17_q_41_sticky_ena(REG,294)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist27_i_select23_conv2d1x17_q_41_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist27_i_select23_conv2d1x17_q_41_nor_q == 1'b1)
        begin
            redist27_i_select23_conv2d1x17_q_41_sticky_ena_q <= $unsigned(redist27_i_select23_conv2d1x17_q_41_cmpReg_q);
        end
    end

    // redist27_i_select23_conv2d1x17_q_41_enaAnd(LOGICAL,295)
    assign redist27_i_select23_conv2d1x17_q_41_enaAnd_q = redist27_i_select23_conv2d1x17_q_41_sticky_ena_q & VCC_q;

    // redist27_i_select23_conv2d1x17_q_41_rdcnt(COUNTER,287)
    // low=0, high=39, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist27_i_select23_conv2d1x17_q_41_rdcnt_i <= 6'd0;
            redist27_i_select23_conv2d1x17_q_41_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist27_i_select23_conv2d1x17_q_41_rdcnt_i == 6'd38)
            begin
                redist27_i_select23_conv2d1x17_q_41_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist27_i_select23_conv2d1x17_q_41_rdcnt_eq <= 1'b0;
            end
            if (redist27_i_select23_conv2d1x17_q_41_rdcnt_eq == 1'b1)
            begin
                redist27_i_select23_conv2d1x17_q_41_rdcnt_i <= $unsigned(redist27_i_select23_conv2d1x17_q_41_rdcnt_i) + $unsigned(6'd25);
            end
            else
            begin
                redist27_i_select23_conv2d1x17_q_41_rdcnt_i <= $unsigned(redist27_i_select23_conv2d1x17_q_41_rdcnt_i) + $unsigned(6'd1);
            end
        end
    end
    assign redist27_i_select23_conv2d1x17_q_41_rdcnt_q = redist27_i_select23_conv2d1x17_q_41_rdcnt_i[5:0];

    // i_llvm_fpga_fp_multadd_mult_add_conv2d1x13(BLACKBOX,26)@136
    // out out_primWireOut@140
    conv2d1x1_flt_i_sfc_logic_s_c1_in_for_co0000mxbcoq2cdo6u2oupsdoz thei_llvm_fpga_fp_multadd_mult_add_conv2d1x13 (
        .in_0(in_c1_eni25_3_tpl),
        .in_1(in_c1_eni25_0_1_tpl),
        .in_2(in_c1_eni25_2_tpl),
        .out_primWireOut(i_llvm_fpga_fp_multadd_mult_add_conv2d1x13_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg1(REG,107)@138 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg1_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg1_q <= $unsigned(redist23_sync_together48_aunroll_vunroll_x_in_i_valid_2_q);
        end
    end

    // valid_fanout_reg2(REG,108)@139 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg2_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg2_q <= $unsigned(redist24_sync_together48_aunroll_vunroll_x_in_i_valid_3_q);
        end
    end

    // redist6_sync_together48_aunroll_vunroll_x_in_c1_eni25_9_tpl_3(DELAY,119)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_sync_together48_aunroll_vunroll_x_in_c1_eni25_9_tpl_3_delay_0 <= '0;
            redist6_sync_together48_aunroll_vunroll_x_in_c1_eni25_9_tpl_3_delay_1 <= '0;
            redist6_sync_together48_aunroll_vunroll_x_in_c1_eni25_9_tpl_3_q <= '0;
        end
        else
        begin
            redist6_sync_together48_aunroll_vunroll_x_in_c1_eni25_9_tpl_3_delay_0 <= $unsigned(in_c1_eni25_9_tpl);
            redist6_sync_together48_aunroll_vunroll_x_in_c1_eni25_9_tpl_3_delay_1 <= redist6_sync_together48_aunroll_vunroll_x_in_c1_eni25_9_tpl_3_delay_0;
            redist6_sync_together48_aunroll_vunroll_x_in_c1_eni25_9_tpl_3_q <= redist6_sync_together48_aunroll_vunroll_x_in_c1_eni25_9_tpl_3_delay_1;
        end
    end

    // redist7_sync_together48_aunroll_vunroll_x_in_c1_eni25_9_tpl_4(DELAY,120)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_sync_together48_aunroll_vunroll_x_in_c1_eni25_9_tpl_4_q <= '0;
        end
        else
        begin
            redist7_sync_together48_aunroll_vunroll_x_in_c1_eni25_9_tpl_4_q <= $unsigned(redist6_sync_together48_aunroll_vunroll_x_in_c1_eni25_9_tpl_3_q);
        end
    end

    // i_llvm_fpga_push_f32_push48_conv2d1x18(BLACKBOX,32)@140
    // out out_feedback_out_48@20000000
    // out out_feedback_valid_out_48@20000000
    conv2d1x1_i_llvm_fpga_push_f32_push48_0 thei_llvm_fpga_push_f32_push48_conv2d1x18 (
        .in_c1_ene9(redist7_sync_together48_aunroll_vunroll_x_in_c1_eni25_9_tpl_4_q),
        .in_data_in(i_select23_conv2d1x17_q),
        .in_feedback_stall_in_48(i_llvm_fpga_pop_f32_pop48_conv2d1x16_out_feedback_stall_out_48),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(),
        .out_feedback_out_48(i_llvm_fpga_push_f32_push48_conv2d1x18_out_feedback_out_48),
        .out_feedback_valid_out_48(i_llvm_fpga_push_f32_push48_conv2d1x18_out_feedback_valid_out_48),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist2_sync_together48_aunroll_vunroll_x_in_c1_eni25_7_tpl_2(DELAY,115)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_sync_together48_aunroll_vunroll_x_in_c1_eni25_7_tpl_2_delay_0 <= '0;
            redist2_sync_together48_aunroll_vunroll_x_in_c1_eni25_7_tpl_2_q <= '0;
        end
        else
        begin
            redist2_sync_together48_aunroll_vunroll_x_in_c1_eni25_7_tpl_2_delay_0 <= $unsigned(in_c1_eni25_7_tpl);
            redist2_sync_together48_aunroll_vunroll_x_in_c1_eni25_7_tpl_2_q <= redist2_sync_together48_aunroll_vunroll_x_in_c1_eni25_7_tpl_2_delay_0;
        end
    end

    // redist3_sync_together48_aunroll_vunroll_x_in_c1_eni25_7_tpl_3(DELAY,116)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_sync_together48_aunroll_vunroll_x_in_c1_eni25_7_tpl_3_q <= '0;
        end
        else
        begin
            redist3_sync_together48_aunroll_vunroll_x_in_c1_eni25_7_tpl_3_q <= $unsigned(redist2_sync_together48_aunroll_vunroll_x_in_c1_eni25_7_tpl_2_q);
        end
    end

    // redist1_sync_together48_aunroll_vunroll_x_in_c1_eni25_6_tpl_3_notEnable(LOGICAL,151)
    assign redist1_sync_together48_aunroll_vunroll_x_in_c1_eni25_6_tpl_3_notEnable_q = $unsigned(~ (VCC_q));

    // redist1_sync_together48_aunroll_vunroll_x_in_c1_eni25_6_tpl_3_nor(LOGICAL,152)
    assign redist1_sync_together48_aunroll_vunroll_x_in_c1_eni25_6_tpl_3_nor_q = ~ (redist1_sync_together48_aunroll_vunroll_x_in_c1_eni25_6_tpl_3_notEnable_q | redist1_sync_together48_aunroll_vunroll_x_in_c1_eni25_6_tpl_3_sticky_ena_q);

    // redist1_sync_together48_aunroll_vunroll_x_in_c1_eni25_6_tpl_3_cmpReg(REG,150)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together48_aunroll_vunroll_x_in_c1_eni25_6_tpl_3_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist1_sync_together48_aunroll_vunroll_x_in_c1_eni25_6_tpl_3_cmpReg_q <= $unsigned(VCC_q);
        end
    end

    // redist1_sync_together48_aunroll_vunroll_x_in_c1_eni25_6_tpl_3_sticky_ena(REG,153)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together48_aunroll_vunroll_x_in_c1_eni25_6_tpl_3_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist1_sync_together48_aunroll_vunroll_x_in_c1_eni25_6_tpl_3_nor_q == 1'b1)
        begin
            redist1_sync_together48_aunroll_vunroll_x_in_c1_eni25_6_tpl_3_sticky_ena_q <= $unsigned(redist1_sync_together48_aunroll_vunroll_x_in_c1_eni25_6_tpl_3_cmpReg_q);
        end
    end

    // redist1_sync_together48_aunroll_vunroll_x_in_c1_eni25_6_tpl_3_enaAnd(LOGICAL,154)
    assign redist1_sync_together48_aunroll_vunroll_x_in_c1_eni25_6_tpl_3_enaAnd_q = redist1_sync_together48_aunroll_vunroll_x_in_c1_eni25_6_tpl_3_sticky_ena_q & VCC_q;

    // redist1_sync_together48_aunroll_vunroll_x_in_c1_eni25_6_tpl_3_rdcnt(COUNTER,148)
    // low=0, high=1, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together48_aunroll_vunroll_x_in_c1_eni25_6_tpl_3_rdcnt_i <= 1'd0;
        end
        else
        begin
            redist1_sync_together48_aunroll_vunroll_x_in_c1_eni25_6_tpl_3_rdcnt_i <= $unsigned(redist1_sync_together48_aunroll_vunroll_x_in_c1_eni25_6_tpl_3_rdcnt_i) + $unsigned(1'd1);
        end
    end
    assign redist1_sync_together48_aunroll_vunroll_x_in_c1_eni25_6_tpl_3_rdcnt_q = redist1_sync_together48_aunroll_vunroll_x_in_c1_eni25_6_tpl_3_rdcnt_i[0:0];

    // redist1_sync_together48_aunroll_vunroll_x_in_c1_eni25_6_tpl_3_wraddr(REG,149)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together48_aunroll_vunroll_x_in_c1_eni25_6_tpl_3_wraddr_q <= $unsigned(1'b1);
        end
        else
        begin
            redist1_sync_together48_aunroll_vunroll_x_in_c1_eni25_6_tpl_3_wraddr_q <= $unsigned(redist1_sync_together48_aunroll_vunroll_x_in_c1_eni25_6_tpl_3_rdcnt_q);
        end
    end

    // redist1_sync_together48_aunroll_vunroll_x_in_c1_eni25_6_tpl_3_mem(DUALMEM,147)
    assign redist1_sync_together48_aunroll_vunroll_x_in_c1_eni25_6_tpl_3_mem_ia = $unsigned(in_c1_eni25_6_tpl);
    assign redist1_sync_together48_aunroll_vunroll_x_in_c1_eni25_6_tpl_3_mem_aa = redist1_sync_together48_aunroll_vunroll_x_in_c1_eni25_6_tpl_3_wraddr_q;
    assign redist1_sync_together48_aunroll_vunroll_x_in_c1_eni25_6_tpl_3_mem_ab = redist1_sync_together48_aunroll_vunroll_x_in_c1_eni25_6_tpl_3_rdcnt_q;
    assign redist1_sync_together48_aunroll_vunroll_x_in_c1_eni25_6_tpl_3_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(1),
        .numwords_a(2),
        .width_b(32),
        .widthad_b(1),
        .numwords_b(2),
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
    ) redist1_sync_together48_aunroll_vunroll_x_in_c1_eni25_6_tpl_3_mem_dmem (
        .clocken1(redist1_sync_together48_aunroll_vunroll_x_in_c1_eni25_6_tpl_3_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist1_sync_together48_aunroll_vunroll_x_in_c1_eni25_6_tpl_3_mem_reset0),
        .clock1(clock),
        .address_a(redist1_sync_together48_aunroll_vunroll_x_in_c1_eni25_6_tpl_3_mem_aa),
        .data_a(redist1_sync_together48_aunroll_vunroll_x_in_c1_eni25_6_tpl_3_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist1_sync_together48_aunroll_vunroll_x_in_c1_eni25_6_tpl_3_mem_ab),
        .q_b(redist1_sync_together48_aunroll_vunroll_x_in_c1_eni25_6_tpl_3_mem_iq),
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
    assign redist1_sync_together48_aunroll_vunroll_x_in_c1_eni25_6_tpl_3_mem_q = redist1_sync_together48_aunroll_vunroll_x_in_c1_eni25_6_tpl_3_mem_iq[31:0];

    // i_llvm_fpga_pop_f32_pop48_conv2d1x16(BLACKBOX,29)@139
    // out out_feedback_stall_out_48@20000000
    conv2d1x1_i_llvm_fpga_pop_f32_pop48_0 thei_llvm_fpga_pop_f32_pop48_conv2d1x16 (
        .in_data_in(redist1_sync_together48_aunroll_vunroll_x_in_c1_eni25_6_tpl_3_mem_q),
        .in_dir(redist3_sync_together48_aunroll_vunroll_x_in_c1_eni25_7_tpl_3_q),
        .in_feedback_in_48(i_llvm_fpga_push_f32_push48_conv2d1x18_out_feedback_out_48),
        .in_feedback_valid_in_48(i_llvm_fpga_push_f32_push48_conv2d1x18_out_feedback_valid_out_48),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_data_out(i_llvm_fpga_pop_f32_pop48_conv2d1x16_out_data_out),
        .out_feedback_stall_out_48(i_llvm_fpga_pop_f32_pop48_conv2d1x16_out_feedback_stall_out_48),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist28_i_llvm_fpga_pop_f32_pop48_conv2d1x16_out_data_out_1(DELAY,141)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist28_i_llvm_fpga_pop_f32_pop48_conv2d1x16_out_data_out_1_q <= '0;
        end
        else
        begin
            redist28_i_llvm_fpga_pop_f32_pop48_conv2d1x16_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_f32_pop48_conv2d1x16_out_data_out);
        end
    end

    // redist4_sync_together48_aunroll_vunroll_x_in_c1_eni25_8_tpl_3(DELAY,117)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_sync_together48_aunroll_vunroll_x_in_c1_eni25_8_tpl_3_delay_0 <= '0;
            redist4_sync_together48_aunroll_vunroll_x_in_c1_eni25_8_tpl_3_delay_1 <= '0;
            redist4_sync_together48_aunroll_vunroll_x_in_c1_eni25_8_tpl_3_q <= '0;
        end
        else
        begin
            redist4_sync_together48_aunroll_vunroll_x_in_c1_eni25_8_tpl_3_delay_0 <= $unsigned(in_c1_eni25_8_tpl);
            redist4_sync_together48_aunroll_vunroll_x_in_c1_eni25_8_tpl_3_delay_1 <= redist4_sync_together48_aunroll_vunroll_x_in_c1_eni25_8_tpl_3_delay_0;
            redist4_sync_together48_aunroll_vunroll_x_in_c1_eni25_8_tpl_3_q <= redist4_sync_together48_aunroll_vunroll_x_in_c1_eni25_8_tpl_3_delay_1;
        end
    end

    // redist5_sync_together48_aunroll_vunroll_x_in_c1_eni25_8_tpl_4(DELAY,118)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_sync_together48_aunroll_vunroll_x_in_c1_eni25_8_tpl_4_q <= '0;
        end
        else
        begin
            redist5_sync_together48_aunroll_vunroll_x_in_c1_eni25_8_tpl_4_q <= $unsigned(redist4_sync_together48_aunroll_vunroll_x_in_c1_eni25_8_tpl_3_q);
        end
    end

    // i_select23_conv2d1x17(MUX,36)@140
    assign i_select23_conv2d1x17_s = redist5_sync_together48_aunroll_vunroll_x_in_c1_eni25_8_tpl_4_q;
    always @(i_select23_conv2d1x17_s or redist28_i_llvm_fpga_pop_f32_pop48_conv2d1x16_out_data_out_1_q or i_llvm_fpga_fp_multadd_mult_add_conv2d1x13_out_primWireOut)
    begin
        unique case (i_select23_conv2d1x17_s)
            1'b0 : i_select23_conv2d1x17_q = redist28_i_llvm_fpga_pop_f32_pop48_conv2d1x16_out_data_out_1_q;
            1'b1 : i_select23_conv2d1x17_q = i_llvm_fpga_fp_multadd_mult_add_conv2d1x13_out_primWireOut;
            default : i_select23_conv2d1x17_q = 32'b0;
        endcase
    end

    // redist27_i_select23_conv2d1x17_q_41_wraddr(REG,288)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist27_i_select23_conv2d1x17_q_41_wraddr_q <= $unsigned(6'b100111);
        end
        else
        begin
            redist27_i_select23_conv2d1x17_q_41_wraddr_q <= $unsigned(redist27_i_select23_conv2d1x17_q_41_rdcnt_q);
        end
    end

    // redist27_i_select23_conv2d1x17_q_41_mem(DUALMEM,286)
    assign redist27_i_select23_conv2d1x17_q_41_mem_ia = $unsigned(i_select23_conv2d1x17_q);
    assign redist27_i_select23_conv2d1x17_q_41_mem_aa = redist27_i_select23_conv2d1x17_q_41_wraddr_q;
    assign redist27_i_select23_conv2d1x17_q_41_mem_ab = redist27_i_select23_conv2d1x17_q_41_rdcnt_q;
    assign redist27_i_select23_conv2d1x17_q_41_mem_reset0 = ~ (resetn);
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
    ) redist27_i_select23_conv2d1x17_q_41_mem_dmem (
        .clocken1(redist27_i_select23_conv2d1x17_q_41_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist27_i_select23_conv2d1x17_q_41_mem_reset0),
        .clock1(clock),
        .address_a(redist27_i_select23_conv2d1x17_q_41_mem_aa),
        .data_a(redist27_i_select23_conv2d1x17_q_41_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist27_i_select23_conv2d1x17_q_41_mem_ab),
        .q_b(redist27_i_select23_conv2d1x17_q_41_mem_iq),
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
    assign redist27_i_select23_conv2d1x17_q_41_mem_q = redist27_i_select23_conv2d1x17_q_41_mem_iq[31:0];

    // redist26_i_select26_conv2d1x110_q_39_notEnable(LOGICAL,282)
    assign redist26_i_select26_conv2d1x110_q_39_notEnable_q = $unsigned(~ (VCC_q));

    // redist26_i_select26_conv2d1x110_q_39_nor(LOGICAL,283)
    assign redist26_i_select26_conv2d1x110_q_39_nor_q = ~ (redist26_i_select26_conv2d1x110_q_39_notEnable_q | redist26_i_select26_conv2d1x110_q_39_sticky_ena_q);

    // redist26_i_select26_conv2d1x110_q_39_mem_last(CONSTANT,279)
    assign redist26_i_select26_conv2d1x110_q_39_mem_last_q = $unsigned(3'b011);

    // redist26_i_select26_conv2d1x110_q_39_cmp(LOGICAL,280)
    assign redist26_i_select26_conv2d1x110_q_39_cmp_q = $unsigned(redist26_i_select26_conv2d1x110_q_39_mem_last_q == redist26_i_select26_conv2d1x110_q_39_rdcnt_q ? 1'b1 : 1'b0);

    // redist26_i_select26_conv2d1x110_q_39_cmpReg(REG,281)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist26_i_select26_conv2d1x110_q_39_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist26_i_select26_conv2d1x110_q_39_cmpReg_q <= $unsigned(redist26_i_select26_conv2d1x110_q_39_cmp_q);
        end
    end

    // redist26_i_select26_conv2d1x110_q_39_sticky_ena(REG,284)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist26_i_select26_conv2d1x110_q_39_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist26_i_select26_conv2d1x110_q_39_nor_q == 1'b1)
        begin
            redist26_i_select26_conv2d1x110_q_39_sticky_ena_q <= $unsigned(redist26_i_select26_conv2d1x110_q_39_cmpReg_q);
        end
    end

    // redist26_i_select26_conv2d1x110_q_39_enaAnd(LOGICAL,285)
    assign redist26_i_select26_conv2d1x110_q_39_enaAnd_q = redist26_i_select26_conv2d1x110_q_39_sticky_ena_q & VCC_q;

    // redist26_i_select26_conv2d1x110_q_39_rdcnt(COUNTER,277)
    // low=0, high=4, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist26_i_select26_conv2d1x110_q_39_rdcnt_i <= 3'd0;
            redist26_i_select26_conv2d1x110_q_39_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist26_i_select26_conv2d1x110_q_39_rdcnt_i == 3'd3)
            begin
                redist26_i_select26_conv2d1x110_q_39_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist26_i_select26_conv2d1x110_q_39_rdcnt_eq <= 1'b0;
            end
            if (redist26_i_select26_conv2d1x110_q_39_rdcnt_eq == 1'b1)
            begin
                redist26_i_select26_conv2d1x110_q_39_rdcnt_i <= $unsigned(redist26_i_select26_conv2d1x110_q_39_rdcnt_i) + $unsigned(3'd4);
            end
            else
            begin
                redist26_i_select26_conv2d1x110_q_39_rdcnt_i <= $unsigned(redist26_i_select26_conv2d1x110_q_39_rdcnt_i) + $unsigned(3'd1);
            end
        end
    end
    assign redist26_i_select26_conv2d1x110_q_39_rdcnt_q = redist26_i_select26_conv2d1x110_q_39_rdcnt_i[2:0];

    // redist26_i_select26_conv2d1x110_q_39_split_0_nor(LOGICAL,324)
    assign redist26_i_select26_conv2d1x110_q_39_split_0_nor_q = ~ (redist26_i_select26_conv2d1x110_q_39_notEnable_q | redist26_i_select26_conv2d1x110_q_39_split_0_sticky_ena_q);

    // redist26_i_select26_conv2d1x110_q_39_split_0_mem_last(CONSTANT,320)
    assign redist26_i_select26_conv2d1x110_q_39_split_0_mem_last_q = $unsigned(6'b011101);

    // redist26_i_select26_conv2d1x110_q_39_split_0_cmp(LOGICAL,321)
    assign redist26_i_select26_conv2d1x110_q_39_split_0_cmp_b = {1'b0, redist26_i_select26_conv2d1x110_q_39_split_0_rdcnt_q};
    assign redist26_i_select26_conv2d1x110_q_39_split_0_cmp_q = $unsigned(redist26_i_select26_conv2d1x110_q_39_split_0_mem_last_q == redist26_i_select26_conv2d1x110_q_39_split_0_cmp_b ? 1'b1 : 1'b0);

    // redist26_i_select26_conv2d1x110_q_39_split_0_cmpReg(REG,322)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist26_i_select26_conv2d1x110_q_39_split_0_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist26_i_select26_conv2d1x110_q_39_split_0_cmpReg_q <= $unsigned(redist26_i_select26_conv2d1x110_q_39_split_0_cmp_q);
        end
    end

    // redist26_i_select26_conv2d1x110_q_39_split_0_sticky_ena(REG,325)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist26_i_select26_conv2d1x110_q_39_split_0_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist26_i_select26_conv2d1x110_q_39_split_0_nor_q == 1'b1)
        begin
            redist26_i_select26_conv2d1x110_q_39_split_0_sticky_ena_q <= $unsigned(redist26_i_select26_conv2d1x110_q_39_split_0_cmpReg_q);
        end
    end

    // redist26_i_select26_conv2d1x110_q_39_split_0_enaAnd(LOGICAL,326)
    assign redist26_i_select26_conv2d1x110_q_39_split_0_enaAnd_q = redist26_i_select26_conv2d1x110_q_39_split_0_sticky_ena_q & VCC_q;

    // redist26_i_select26_conv2d1x110_q_39_split_0_rdcnt(COUNTER,318)
    // low=0, high=30, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist26_i_select26_conv2d1x110_q_39_split_0_rdcnt_i <= 5'd0;
            redist26_i_select26_conv2d1x110_q_39_split_0_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist26_i_select26_conv2d1x110_q_39_split_0_rdcnt_i == 5'd29)
            begin
                redist26_i_select26_conv2d1x110_q_39_split_0_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist26_i_select26_conv2d1x110_q_39_split_0_rdcnt_eq <= 1'b0;
            end
            if (redist26_i_select26_conv2d1x110_q_39_split_0_rdcnt_eq == 1'b1)
            begin
                redist26_i_select26_conv2d1x110_q_39_split_0_rdcnt_i <= $unsigned(redist26_i_select26_conv2d1x110_q_39_split_0_rdcnt_i) + $unsigned(5'd2);
            end
            else
            begin
                redist26_i_select26_conv2d1x110_q_39_split_0_rdcnt_i <= $unsigned(redist26_i_select26_conv2d1x110_q_39_split_0_rdcnt_i) + $unsigned(5'd1);
            end
        end
    end
    assign redist26_i_select26_conv2d1x110_q_39_split_0_rdcnt_q = redist26_i_select26_conv2d1x110_q_39_split_0_rdcnt_i[4:0];

    // i_mul38_le_conv2d1x14(BLACKBOX,33)@136
    // out out_primWireOut@139
    conv2d1x1_flt_i_sfc_logic_s_c1_in_for_co000024ad20454ge26154gk5u thei_mul38_le_conv2d1x14 (
        .in_0(in_c1_eni25_1_1_tpl),
        .in_1(in_c1_eni25_4_tpl),
        .out_primWireOut(i_mul38_le_conv2d1x14_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg3(REG,109)@138 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg3_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg3_q <= $unsigned(redist23_sync_together48_aunroll_vunroll_x_in_i_valid_2_q);
        end
    end

    // valid_fanout_reg4(REG,110)@138 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg4_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg4_q <= $unsigned(redist23_sync_together48_aunroll_vunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_push_f32_mul38_le207_push49_conv2d1x111(BLACKBOX,30)@139
    // out out_feedback_out_49@20000000
    // out out_feedback_valid_out_49@20000000
    conv2d1x1_i_llvm_fpga_push_f32_mul38_le207_push49_0 thei_llvm_fpga_push_f32_mul38_le207_push49_conv2d1x111 (
        .in_c1_ene9(redist6_sync_together48_aunroll_vunroll_x_in_c1_eni25_9_tpl_3_q),
        .in_data_in(i_select26_conv2d1x110_q),
        .in_feedback_stall_in_49(i_llvm_fpga_pop_f32_mul38_le207_pop49_conv2d1x19_out_feedback_stall_out_49),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_data_out(),
        .out_feedback_out_49(i_llvm_fpga_push_f32_mul38_le207_push49_conv2d1x111_out_feedback_out_49),
        .out_feedback_valid_out_49(i_llvm_fpga_push_f32_mul38_le207_push49_conv2d1x111_out_feedback_valid_out_49),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist8_sync_together48_aunroll_vunroll_x_in_c1_eni25_10_tpl_3(DELAY,121)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_sync_together48_aunroll_vunroll_x_in_c1_eni25_10_tpl_3_delay_0 <= '0;
            redist8_sync_together48_aunroll_vunroll_x_in_c1_eni25_10_tpl_3_q <= '0;
        end
        else
        begin
            redist8_sync_together48_aunroll_vunroll_x_in_c1_eni25_10_tpl_3_delay_0 <= $unsigned(in_c1_eni25_10_tpl);
            redist8_sync_together48_aunroll_vunroll_x_in_c1_eni25_10_tpl_3_q <= redist8_sync_together48_aunroll_vunroll_x_in_c1_eni25_10_tpl_3_delay_0;
        end
    end

    // redist8_sync_together48_aunroll_vunroll_x_in_c1_eni25_10_tpl_3_outputreg0(DELAY,155)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_sync_together48_aunroll_vunroll_x_in_c1_eni25_10_tpl_3_outputreg0_q <= '0;
        end
        else
        begin
            redist8_sync_together48_aunroll_vunroll_x_in_c1_eni25_10_tpl_3_outputreg0_q <= $unsigned(redist8_sync_together48_aunroll_vunroll_x_in_c1_eni25_10_tpl_3_q);
        end
    end

    // i_llvm_fpga_pop_f32_mul38_le207_pop49_conv2d1x19(BLACKBOX,27)@139
    // out out_feedback_stall_out_49@20000000
    conv2d1x1_i_llvm_fpga_pop_f32_mul38_le207_pop49_0 thei_llvm_fpga_pop_f32_mul38_le207_pop49_conv2d1x19 (
        .in_data_in(redist8_sync_together48_aunroll_vunroll_x_in_c1_eni25_10_tpl_3_outputreg0_q),
        .in_dir(redist3_sync_together48_aunroll_vunroll_x_in_c1_eni25_7_tpl_3_q),
        .in_feedback_in_49(i_llvm_fpga_push_f32_mul38_le207_push49_conv2d1x111_out_feedback_out_49),
        .in_feedback_valid_in_49(i_llvm_fpga_push_f32_mul38_le207_push49_conv2d1x111_out_feedback_valid_out_49),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_data_out(i_llvm_fpga_pop_f32_mul38_le207_pop49_conv2d1x19_out_data_out),
        .out_feedback_stall_out_49(i_llvm_fpga_pop_f32_mul38_le207_pop49_conv2d1x19_out_feedback_stall_out_49),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_select26_conv2d1x110(MUX,37)@139
    assign i_select26_conv2d1x110_s = redist4_sync_together48_aunroll_vunroll_x_in_c1_eni25_8_tpl_3_q;
    always @(i_select26_conv2d1x110_s or i_llvm_fpga_pop_f32_mul38_le207_pop49_conv2d1x19_out_data_out or i_mul38_le_conv2d1x14_out_primWireOut)
    begin
        unique case (i_select26_conv2d1x110_s)
            1'b0 : i_select26_conv2d1x110_q = i_llvm_fpga_pop_f32_mul38_le207_pop49_conv2d1x19_out_data_out;
            1'b1 : i_select26_conv2d1x110_q = i_mul38_le_conv2d1x14_out_primWireOut;
            default : i_select26_conv2d1x110_q = 32'b0;
        endcase
    end

    // redist26_i_select26_conv2d1x110_q_39_split_0_inputreg0(DELAY,316)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist26_i_select26_conv2d1x110_q_39_split_0_inputreg0_q <= '0;
        end
        else
        begin
            redist26_i_select26_conv2d1x110_q_39_split_0_inputreg0_q <= $unsigned(i_select26_conv2d1x110_q);
        end
    end

    // redist26_i_select26_conv2d1x110_q_39_split_0_wraddr(REG,319)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist26_i_select26_conv2d1x110_q_39_split_0_wraddr_q <= $unsigned(5'b11110);
        end
        else
        begin
            redist26_i_select26_conv2d1x110_q_39_split_0_wraddr_q <= $unsigned(redist26_i_select26_conv2d1x110_q_39_split_0_rdcnt_q);
        end
    end

    // redist26_i_select26_conv2d1x110_q_39_split_0_mem(DUALMEM,317)
    assign redist26_i_select26_conv2d1x110_q_39_split_0_mem_ia = $unsigned(redist26_i_select26_conv2d1x110_q_39_split_0_inputreg0_q);
    assign redist26_i_select26_conv2d1x110_q_39_split_0_mem_aa = redist26_i_select26_conv2d1x110_q_39_split_0_wraddr_q;
    assign redist26_i_select26_conv2d1x110_q_39_split_0_mem_ab = redist26_i_select26_conv2d1x110_q_39_split_0_rdcnt_q;
    assign redist26_i_select26_conv2d1x110_q_39_split_0_mem_reset0 = ~ (resetn);
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
    ) redist26_i_select26_conv2d1x110_q_39_split_0_mem_dmem (
        .clocken1(redist26_i_select26_conv2d1x110_q_39_split_0_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist26_i_select26_conv2d1x110_q_39_split_0_mem_reset0),
        .clock1(clock),
        .address_a(redist26_i_select26_conv2d1x110_q_39_split_0_mem_aa),
        .data_a(redist26_i_select26_conv2d1x110_q_39_split_0_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist26_i_select26_conv2d1x110_q_39_split_0_mem_ab),
        .q_b(redist26_i_select26_conv2d1x110_q_39_split_0_mem_iq),
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
    assign redist26_i_select26_conv2d1x110_q_39_split_0_mem_q = redist26_i_select26_conv2d1x110_q_39_split_0_mem_iq[31:0];

    // redist26_i_select26_conv2d1x110_q_39_wraddr(REG,278)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist26_i_select26_conv2d1x110_q_39_wraddr_q <= $unsigned(3'b100);
        end
        else
        begin
            redist26_i_select26_conv2d1x110_q_39_wraddr_q <= $unsigned(redist26_i_select26_conv2d1x110_q_39_rdcnt_q);
        end
    end

    // redist26_i_select26_conv2d1x110_q_39_mem(DUALMEM,276)
    assign redist26_i_select26_conv2d1x110_q_39_mem_ia = $unsigned(redist26_i_select26_conv2d1x110_q_39_split_0_mem_q);
    assign redist26_i_select26_conv2d1x110_q_39_mem_aa = redist26_i_select26_conv2d1x110_q_39_wraddr_q;
    assign redist26_i_select26_conv2d1x110_q_39_mem_ab = redist26_i_select26_conv2d1x110_q_39_rdcnt_q;
    assign redist26_i_select26_conv2d1x110_q_39_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(3),
        .numwords_a(5),
        .width_b(32),
        .widthad_b(3),
        .numwords_b(5),
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
    ) redist26_i_select26_conv2d1x110_q_39_mem_dmem (
        .clocken1(redist26_i_select26_conv2d1x110_q_39_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist26_i_select26_conv2d1x110_q_39_mem_reset0),
        .clock1(clock),
        .address_a(redist26_i_select26_conv2d1x110_q_39_mem_aa),
        .data_a(redist26_i_select26_conv2d1x110_q_39_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist26_i_select26_conv2d1x110_q_39_mem_ab),
        .q_b(redist26_i_select26_conv2d1x110_q_39_mem_iq),
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
    assign redist26_i_select26_conv2d1x110_q_39_mem_q = redist26_i_select26_conv2d1x110_q_39_mem_iq[31:0];

    // redist25_i_select29_conv2d1x113_q_36_notEnable(LOGICAL,272)
    assign redist25_i_select29_conv2d1x113_q_36_notEnable_q = $unsigned(~ (VCC_q));

    // redist25_i_select29_conv2d1x113_q_36_nor(LOGICAL,273)
    assign redist25_i_select29_conv2d1x113_q_36_nor_q = ~ (redist25_i_select29_conv2d1x113_q_36_notEnable_q | redist25_i_select29_conv2d1x113_q_36_sticky_ena_q);

    // redist25_i_select29_conv2d1x113_q_36_cmpReg(REG,271)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist25_i_select29_conv2d1x113_q_36_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist25_i_select29_conv2d1x113_q_36_cmpReg_q <= $unsigned(VCC_q);
        end
    end

    // redist25_i_select29_conv2d1x113_q_36_sticky_ena(REG,274)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist25_i_select29_conv2d1x113_q_36_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist25_i_select29_conv2d1x113_q_36_nor_q == 1'b1)
        begin
            redist25_i_select29_conv2d1x113_q_36_sticky_ena_q <= $unsigned(redist25_i_select29_conv2d1x113_q_36_cmpReg_q);
        end
    end

    // redist25_i_select29_conv2d1x113_q_36_enaAnd(LOGICAL,275)
    assign redist25_i_select29_conv2d1x113_q_36_enaAnd_q = redist25_i_select29_conv2d1x113_q_36_sticky_ena_q & VCC_q;

    // redist25_i_select29_conv2d1x113_q_36_rdcnt(COUNTER,269)
    // low=0, high=1, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist25_i_select29_conv2d1x113_q_36_rdcnt_i <= 1'd0;
        end
        else
        begin
            redist25_i_select29_conv2d1x113_q_36_rdcnt_i <= $unsigned(redist25_i_select29_conv2d1x113_q_36_rdcnt_i) + $unsigned(1'd1);
        end
    end
    assign redist25_i_select29_conv2d1x113_q_36_rdcnt_q = redist25_i_select29_conv2d1x113_q_36_rdcnt_i[0:0];

    // redist25_i_select29_conv2d1x113_q_36_split_0_nor(LOGICAL,313)
    assign redist25_i_select29_conv2d1x113_q_36_split_0_nor_q = ~ (redist25_i_select29_conv2d1x113_q_36_notEnable_q | redist25_i_select29_conv2d1x113_q_36_split_0_sticky_ena_q);

    // redist25_i_select29_conv2d1x113_q_36_split_0_mem_last(CONSTANT,309)
    assign redist25_i_select29_conv2d1x113_q_36_split_0_mem_last_q = $unsigned(6'b011110);

    // redist25_i_select29_conv2d1x113_q_36_split_0_cmp(LOGICAL,310)
    assign redist25_i_select29_conv2d1x113_q_36_split_0_cmp_b = {1'b0, redist25_i_select29_conv2d1x113_q_36_split_0_rdcnt_q};
    assign redist25_i_select29_conv2d1x113_q_36_split_0_cmp_q = $unsigned(redist25_i_select29_conv2d1x113_q_36_split_0_mem_last_q == redist25_i_select29_conv2d1x113_q_36_split_0_cmp_b ? 1'b1 : 1'b0);

    // redist25_i_select29_conv2d1x113_q_36_split_0_cmpReg(REG,311)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist25_i_select29_conv2d1x113_q_36_split_0_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist25_i_select29_conv2d1x113_q_36_split_0_cmpReg_q <= $unsigned(redist25_i_select29_conv2d1x113_q_36_split_0_cmp_q);
        end
    end

    // redist25_i_select29_conv2d1x113_q_36_split_0_sticky_ena(REG,314)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist25_i_select29_conv2d1x113_q_36_split_0_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist25_i_select29_conv2d1x113_q_36_split_0_nor_q == 1'b1)
        begin
            redist25_i_select29_conv2d1x113_q_36_split_0_sticky_ena_q <= $unsigned(redist25_i_select29_conv2d1x113_q_36_split_0_cmpReg_q);
        end
    end

    // redist25_i_select29_conv2d1x113_q_36_split_0_enaAnd(LOGICAL,315)
    assign redist25_i_select29_conv2d1x113_q_36_split_0_enaAnd_q = redist25_i_select29_conv2d1x113_q_36_split_0_sticky_ena_q & VCC_q;

    // redist25_i_select29_conv2d1x113_q_36_split_0_rdcnt(COUNTER,307)
    // low=0, high=31, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist25_i_select29_conv2d1x113_q_36_split_0_rdcnt_i <= 5'd0;
        end
        else
        begin
            redist25_i_select29_conv2d1x113_q_36_split_0_rdcnt_i <= $unsigned(redist25_i_select29_conv2d1x113_q_36_split_0_rdcnt_i) + $unsigned(5'd1);
        end
    end
    assign redist25_i_select29_conv2d1x113_q_36_split_0_rdcnt_q = redist25_i_select29_conv2d1x113_q_36_split_0_rdcnt_i[4:0];

    // i_mul51_le_conv2d1x15(BLACKBOX,34)@136
    // out out_primWireOut@139
    conv2d1x1_flt_i_sfc_logic_s_c1_in_for_co000024ad20454ge26154gk5u thei_mul51_le_conv2d1x15 (
        .in_0(in_c1_eni25_2_1_tpl),
        .in_1(in_c1_eni25_5_tpl),
        .out_primWireOut(i_mul51_le_conv2d1x15_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg5(REG,111)@137 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg5_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg5_q <= $unsigned(redist22_sync_together48_aunroll_vunroll_x_in_i_valid_1_q);
        end
    end

    // valid_fanout_reg6(REG,112)@138 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg6_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg6_q <= $unsigned(redist23_sync_together48_aunroll_vunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_push_f32_mul51_le205_push50_conv2d1x114(BLACKBOX,31)@139
    // out out_feedback_out_50@20000000
    // out out_feedback_valid_out_50@20000000
    conv2d1x1_i_llvm_fpga_push_f32_mul51_le205_push50_0 thei_llvm_fpga_push_f32_mul51_le205_push50_conv2d1x114 (
        .in_c1_ene9(redist6_sync_together48_aunroll_vunroll_x_in_c1_eni25_9_tpl_3_q),
        .in_data_in(i_select29_conv2d1x113_q),
        .in_feedback_stall_in_50(i_llvm_fpga_pop_f32_mul51_le205_pop50_conv2d1x112_out_feedback_stall_out_50),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg6_q),
        .out_data_out(),
        .out_feedback_out_50(i_llvm_fpga_push_f32_mul51_le205_push50_conv2d1x114_out_feedback_out_50),
        .out_feedback_valid_out_50(i_llvm_fpga_push_f32_mul51_le205_push50_conv2d1x114_out_feedback_valid_out_50),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist9_sync_together48_aunroll_vunroll_x_in_c1_eni25_11_tpl_2(DELAY,122)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_sync_together48_aunroll_vunroll_x_in_c1_eni25_11_tpl_2_delay_0 <= '0;
            redist9_sync_together48_aunroll_vunroll_x_in_c1_eni25_11_tpl_2_q <= '0;
        end
        else
        begin
            redist9_sync_together48_aunroll_vunroll_x_in_c1_eni25_11_tpl_2_delay_0 <= $unsigned(in_c1_eni25_11_tpl);
            redist9_sync_together48_aunroll_vunroll_x_in_c1_eni25_11_tpl_2_q <= redist9_sync_together48_aunroll_vunroll_x_in_c1_eni25_11_tpl_2_delay_0;
        end
    end

    // i_llvm_fpga_pop_f32_mul51_le205_pop50_conv2d1x112(BLACKBOX,28)@138
    // out out_feedback_stall_out_50@20000000
    conv2d1x1_i_llvm_fpga_pop_f32_mul51_le205_pop50_0 thei_llvm_fpga_pop_f32_mul51_le205_pop50_conv2d1x112 (
        .in_data_in(redist9_sync_together48_aunroll_vunroll_x_in_c1_eni25_11_tpl_2_q),
        .in_dir(redist2_sync_together48_aunroll_vunroll_x_in_c1_eni25_7_tpl_2_q),
        .in_feedback_in_50(i_llvm_fpga_push_f32_mul51_le205_push50_conv2d1x114_out_feedback_out_50),
        .in_feedback_valid_in_50(i_llvm_fpga_push_f32_mul51_le205_push50_conv2d1x114_out_feedback_valid_out_50),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_data_out(i_llvm_fpga_pop_f32_mul51_le205_pop50_conv2d1x112_out_data_out),
        .out_feedback_stall_out_50(i_llvm_fpga_pop_f32_mul51_le205_pop50_conv2d1x112_out_feedback_stall_out_50),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist29_i_llvm_fpga_pop_f32_mul51_le205_pop50_conv2d1x112_out_data_out_1(DELAY,142)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist29_i_llvm_fpga_pop_f32_mul51_le205_pop50_conv2d1x112_out_data_out_1_q <= '0;
        end
        else
        begin
            redist29_i_llvm_fpga_pop_f32_mul51_le205_pop50_conv2d1x112_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_f32_mul51_le205_pop50_conv2d1x112_out_data_out);
        end
    end

    // i_select29_conv2d1x113(MUX,38)@139
    assign i_select29_conv2d1x113_s = redist4_sync_together48_aunroll_vunroll_x_in_c1_eni25_8_tpl_3_q;
    always @(i_select29_conv2d1x113_s or redist29_i_llvm_fpga_pop_f32_mul51_le205_pop50_conv2d1x112_out_data_out_1_q or i_mul51_le_conv2d1x15_out_primWireOut)
    begin
        unique case (i_select29_conv2d1x113_s)
            1'b0 : i_select29_conv2d1x113_q = redist29_i_llvm_fpga_pop_f32_mul51_le205_pop50_conv2d1x112_out_data_out_1_q;
            1'b1 : i_select29_conv2d1x113_q = i_mul51_le_conv2d1x15_out_primWireOut;
            default : i_select29_conv2d1x113_q = 32'b0;
        endcase
    end

    // redist25_i_select29_conv2d1x113_q_36_split_0_wraddr(REG,308)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist25_i_select29_conv2d1x113_q_36_split_0_wraddr_q <= $unsigned(5'b11111);
        end
        else
        begin
            redist25_i_select29_conv2d1x113_q_36_split_0_wraddr_q <= $unsigned(redist25_i_select29_conv2d1x113_q_36_split_0_rdcnt_q);
        end
    end

    // redist25_i_select29_conv2d1x113_q_36_split_0_mem(DUALMEM,306)
    assign redist25_i_select29_conv2d1x113_q_36_split_0_mem_ia = $unsigned(i_select29_conv2d1x113_q);
    assign redist25_i_select29_conv2d1x113_q_36_split_0_mem_aa = redist25_i_select29_conv2d1x113_q_36_split_0_wraddr_q;
    assign redist25_i_select29_conv2d1x113_q_36_split_0_mem_ab = redist25_i_select29_conv2d1x113_q_36_split_0_rdcnt_q;
    assign redist25_i_select29_conv2d1x113_q_36_split_0_mem_reset0 = ~ (resetn);
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
    ) redist25_i_select29_conv2d1x113_q_36_split_0_mem_dmem (
        .clocken1(redist25_i_select29_conv2d1x113_q_36_split_0_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist25_i_select29_conv2d1x113_q_36_split_0_mem_reset0),
        .clock1(clock),
        .address_a(redist25_i_select29_conv2d1x113_q_36_split_0_mem_aa),
        .data_a(redist25_i_select29_conv2d1x113_q_36_split_0_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist25_i_select29_conv2d1x113_q_36_split_0_mem_ab),
        .q_b(redist25_i_select29_conv2d1x113_q_36_split_0_mem_iq),
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
    assign redist25_i_select29_conv2d1x113_q_36_split_0_mem_q = redist25_i_select29_conv2d1x113_q_36_split_0_mem_iq[31:0];

    // redist25_i_select29_conv2d1x113_q_36_wraddr(REG,270)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist25_i_select29_conv2d1x113_q_36_wraddr_q <= $unsigned(1'b1);
        end
        else
        begin
            redist25_i_select29_conv2d1x113_q_36_wraddr_q <= $unsigned(redist25_i_select29_conv2d1x113_q_36_rdcnt_q);
        end
    end

    // redist25_i_select29_conv2d1x113_q_36_mem(DUALMEM,268)
    assign redist25_i_select29_conv2d1x113_q_36_mem_ia = $unsigned(redist25_i_select29_conv2d1x113_q_36_split_0_mem_q);
    assign redist25_i_select29_conv2d1x113_q_36_mem_aa = redist25_i_select29_conv2d1x113_q_36_wraddr_q;
    assign redist25_i_select29_conv2d1x113_q_36_mem_ab = redist25_i_select29_conv2d1x113_q_36_rdcnt_q;
    assign redist25_i_select29_conv2d1x113_q_36_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(1),
        .numwords_a(2),
        .width_b(32),
        .widthad_b(1),
        .numwords_b(2),
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
    ) redist25_i_select29_conv2d1x113_q_36_mem_dmem (
        .clocken1(redist25_i_select29_conv2d1x113_q_36_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist25_i_select29_conv2d1x113_q_36_mem_reset0),
        .clock1(clock),
        .address_a(redist25_i_select29_conv2d1x113_q_36_mem_aa),
        .data_a(redist25_i_select29_conv2d1x113_q_36_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist25_i_select29_conv2d1x113_q_36_mem_ab),
        .q_b(redist25_i_select29_conv2d1x113_q_36_mem_iq),
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
    assign redist25_i_select29_conv2d1x113_q_36_mem_q = redist25_i_select29_conv2d1x113_q_36_mem_iq[31:0];

    // redist21_sync_together48_aunroll_vunroll_x_in_c1_eni25_25_tpl_36_split_0_notEnable(LOGICAL,302)
    assign redist21_sync_together48_aunroll_vunroll_x_in_c1_eni25_25_tpl_36_split_0_notEnable_q = $unsigned(~ (VCC_q));

    // redist21_sync_together48_aunroll_vunroll_x_in_c1_eni25_25_tpl_36_split_0_nor(LOGICAL,303)
    assign redist21_sync_together48_aunroll_vunroll_x_in_c1_eni25_25_tpl_36_split_0_nor_q = ~ (redist21_sync_together48_aunroll_vunroll_x_in_c1_eni25_25_tpl_36_split_0_notEnable_q | redist21_sync_together48_aunroll_vunroll_x_in_c1_eni25_25_tpl_36_split_0_sticky_ena_q);

    // redist21_sync_together48_aunroll_vunroll_x_in_c1_eni25_25_tpl_36_split_0_mem_last(CONSTANT,299)
    assign redist21_sync_together48_aunroll_vunroll_x_in_c1_eni25_25_tpl_36_split_0_mem_last_q = $unsigned(6'b011110);

    // redist21_sync_together48_aunroll_vunroll_x_in_c1_eni25_25_tpl_36_split_0_cmp(LOGICAL,300)
    assign redist21_sync_together48_aunroll_vunroll_x_in_c1_eni25_25_tpl_36_split_0_cmp_b = {1'b0, redist21_sync_together48_aunroll_vunroll_x_in_c1_eni25_25_tpl_36_split_0_rdcnt_q};
    assign redist21_sync_together48_aunroll_vunroll_x_in_c1_eni25_25_tpl_36_split_0_cmp_q = $unsigned(redist21_sync_together48_aunroll_vunroll_x_in_c1_eni25_25_tpl_36_split_0_mem_last_q == redist21_sync_together48_aunroll_vunroll_x_in_c1_eni25_25_tpl_36_split_0_cmp_b ? 1'b1 : 1'b0);

    // redist21_sync_together48_aunroll_vunroll_x_in_c1_eni25_25_tpl_36_split_0_cmpReg(REG,301)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist21_sync_together48_aunroll_vunroll_x_in_c1_eni25_25_tpl_36_split_0_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist21_sync_together48_aunroll_vunroll_x_in_c1_eni25_25_tpl_36_split_0_cmpReg_q <= $unsigned(redist21_sync_together48_aunroll_vunroll_x_in_c1_eni25_25_tpl_36_split_0_cmp_q);
        end
    end

    // redist21_sync_together48_aunroll_vunroll_x_in_c1_eni25_25_tpl_36_split_0_sticky_ena(REG,304)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist21_sync_together48_aunroll_vunroll_x_in_c1_eni25_25_tpl_36_split_0_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist21_sync_together48_aunroll_vunroll_x_in_c1_eni25_25_tpl_36_split_0_nor_q == 1'b1)
        begin
            redist21_sync_together48_aunroll_vunroll_x_in_c1_eni25_25_tpl_36_split_0_sticky_ena_q <= $unsigned(redist21_sync_together48_aunroll_vunroll_x_in_c1_eni25_25_tpl_36_split_0_cmpReg_q);
        end
    end

    // redist21_sync_together48_aunroll_vunroll_x_in_c1_eni25_25_tpl_36_split_0_enaAnd(LOGICAL,305)
    assign redist21_sync_together48_aunroll_vunroll_x_in_c1_eni25_25_tpl_36_split_0_enaAnd_q = redist21_sync_together48_aunroll_vunroll_x_in_c1_eni25_25_tpl_36_split_0_sticky_ena_q & VCC_q;

    // redist21_sync_together48_aunroll_vunroll_x_in_c1_eni25_25_tpl_36_split_0_rdcnt(COUNTER,297)
    // low=0, high=31, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist21_sync_together48_aunroll_vunroll_x_in_c1_eni25_25_tpl_36_split_0_rdcnt_i <= 5'd0;
        end
        else
        begin
            redist21_sync_together48_aunroll_vunroll_x_in_c1_eni25_25_tpl_36_split_0_rdcnt_i <= $unsigned(redist21_sync_together48_aunroll_vunroll_x_in_c1_eni25_25_tpl_36_split_0_rdcnt_i) + $unsigned(5'd1);
        end
    end
    assign redist21_sync_together48_aunroll_vunroll_x_in_c1_eni25_25_tpl_36_split_0_rdcnt_q = redist21_sync_together48_aunroll_vunroll_x_in_c1_eni25_25_tpl_36_split_0_rdcnt_i[4:0];

    // redist21_sync_together48_aunroll_vunroll_x_in_c1_eni25_25_tpl_36_split_0_wraddr(REG,298)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist21_sync_together48_aunroll_vunroll_x_in_c1_eni25_25_tpl_36_split_0_wraddr_q <= $unsigned(5'b11111);
        end
        else
        begin
            redist21_sync_together48_aunroll_vunroll_x_in_c1_eni25_25_tpl_36_split_0_wraddr_q <= $unsigned(redist21_sync_together48_aunroll_vunroll_x_in_c1_eni25_25_tpl_36_split_0_rdcnt_q);
        end
    end

    // redist21_sync_together48_aunroll_vunroll_x_in_c1_eni25_25_tpl_36_split_0_mem(DUALMEM,296)
    assign redist21_sync_together48_aunroll_vunroll_x_in_c1_eni25_25_tpl_36_split_0_mem_ia = $unsigned(in_c1_eni25_25_tpl);
    assign redist21_sync_together48_aunroll_vunroll_x_in_c1_eni25_25_tpl_36_split_0_mem_aa = redist21_sync_together48_aunroll_vunroll_x_in_c1_eni25_25_tpl_36_split_0_wraddr_q;
    assign redist21_sync_together48_aunroll_vunroll_x_in_c1_eni25_25_tpl_36_split_0_mem_ab = redist21_sync_together48_aunroll_vunroll_x_in_c1_eni25_25_tpl_36_split_0_rdcnt_q;
    assign redist21_sync_together48_aunroll_vunroll_x_in_c1_eni25_25_tpl_36_split_0_mem_reset0 = ~ (resetn);
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
    ) redist21_sync_together48_aunroll_vunroll_x_in_c1_eni25_25_tpl_36_split_0_mem_dmem (
        .clocken1(redist21_sync_together48_aunroll_vunroll_x_in_c1_eni25_25_tpl_36_split_0_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist21_sync_together48_aunroll_vunroll_x_in_c1_eni25_25_tpl_36_split_0_mem_reset0),
        .clock1(clock),
        .address_a(redist21_sync_together48_aunroll_vunroll_x_in_c1_eni25_25_tpl_36_split_0_mem_aa),
        .data_a(redist21_sync_together48_aunroll_vunroll_x_in_c1_eni25_25_tpl_36_split_0_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist21_sync_together48_aunroll_vunroll_x_in_c1_eni25_25_tpl_36_split_0_mem_ab),
        .q_b(redist21_sync_together48_aunroll_vunroll_x_in_c1_eni25_25_tpl_36_split_0_mem_iq),
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
    assign redist21_sync_together48_aunroll_vunroll_x_in_c1_eni25_25_tpl_36_split_0_mem_q = redist21_sync_together48_aunroll_vunroll_x_in_c1_eni25_25_tpl_36_split_0_mem_iq[31:0];

    // redist21_sync_together48_aunroll_vunroll_x_in_c1_eni25_25_tpl_36(DELAY,134)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist21_sync_together48_aunroll_vunroll_x_in_c1_eni25_25_tpl_36_delay_0 <= '0;
            redist21_sync_together48_aunroll_vunroll_x_in_c1_eni25_25_tpl_36_q <= '0;
        end
        else
        begin
            redist21_sync_together48_aunroll_vunroll_x_in_c1_eni25_25_tpl_36_delay_0 <= $unsigned(redist21_sync_together48_aunroll_vunroll_x_in_c1_eni25_25_tpl_36_split_0_mem_q);
            redist21_sync_together48_aunroll_vunroll_x_in_c1_eni25_25_tpl_36_q <= redist21_sync_together48_aunroll_vunroll_x_in_c1_eni25_25_tpl_36_delay_0;
        end
    end

    // redist21_sync_together48_aunroll_vunroll_x_in_c1_eni25_25_tpl_36_outputreg0(DELAY,267)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist21_sync_together48_aunroll_vunroll_x_in_c1_eni25_25_tpl_36_outputreg0_q <= '0;
        end
        else
        begin
            redist21_sync_together48_aunroll_vunroll_x_in_c1_eni25_25_tpl_36_outputreg0_q <= $unsigned(redist21_sync_together48_aunroll_vunroll_x_in_c1_eni25_25_tpl_36_q);
        end
    end

    // redist20_sync_together48_aunroll_vunroll_x_in_c1_eni25_24_tpl_33_notEnable(LOGICAL,263)
    assign redist20_sync_together48_aunroll_vunroll_x_in_c1_eni25_24_tpl_33_notEnable_q = $unsigned(~ (VCC_q));

    // redist20_sync_together48_aunroll_vunroll_x_in_c1_eni25_24_tpl_33_nor(LOGICAL,264)
    assign redist20_sync_together48_aunroll_vunroll_x_in_c1_eni25_24_tpl_33_nor_q = ~ (redist20_sync_together48_aunroll_vunroll_x_in_c1_eni25_24_tpl_33_notEnable_q | redist20_sync_together48_aunroll_vunroll_x_in_c1_eni25_24_tpl_33_sticky_ena_q);

    // redist20_sync_together48_aunroll_vunroll_x_in_c1_eni25_24_tpl_33_mem_last(CONSTANT,260)
    assign redist20_sync_together48_aunroll_vunroll_x_in_c1_eni25_24_tpl_33_mem_last_q = $unsigned(6'b011101);

    // redist20_sync_together48_aunroll_vunroll_x_in_c1_eni25_24_tpl_33_cmp(LOGICAL,261)
    assign redist20_sync_together48_aunroll_vunroll_x_in_c1_eni25_24_tpl_33_cmp_b = {1'b0, redist20_sync_together48_aunroll_vunroll_x_in_c1_eni25_24_tpl_33_rdcnt_q};
    assign redist20_sync_together48_aunroll_vunroll_x_in_c1_eni25_24_tpl_33_cmp_q = $unsigned(redist20_sync_together48_aunroll_vunroll_x_in_c1_eni25_24_tpl_33_mem_last_q == redist20_sync_together48_aunroll_vunroll_x_in_c1_eni25_24_tpl_33_cmp_b ? 1'b1 : 1'b0);

    // redist20_sync_together48_aunroll_vunroll_x_in_c1_eni25_24_tpl_33_cmpReg(REG,262)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist20_sync_together48_aunroll_vunroll_x_in_c1_eni25_24_tpl_33_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist20_sync_together48_aunroll_vunroll_x_in_c1_eni25_24_tpl_33_cmpReg_q <= $unsigned(redist20_sync_together48_aunroll_vunroll_x_in_c1_eni25_24_tpl_33_cmp_q);
        end
    end

    // redist20_sync_together48_aunroll_vunroll_x_in_c1_eni25_24_tpl_33_sticky_ena(REG,265)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist20_sync_together48_aunroll_vunroll_x_in_c1_eni25_24_tpl_33_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist20_sync_together48_aunroll_vunroll_x_in_c1_eni25_24_tpl_33_nor_q == 1'b1)
        begin
            redist20_sync_together48_aunroll_vunroll_x_in_c1_eni25_24_tpl_33_sticky_ena_q <= $unsigned(redist20_sync_together48_aunroll_vunroll_x_in_c1_eni25_24_tpl_33_cmpReg_q);
        end
    end

    // redist20_sync_together48_aunroll_vunroll_x_in_c1_eni25_24_tpl_33_enaAnd(LOGICAL,266)
    assign redist20_sync_together48_aunroll_vunroll_x_in_c1_eni25_24_tpl_33_enaAnd_q = redist20_sync_together48_aunroll_vunroll_x_in_c1_eni25_24_tpl_33_sticky_ena_q & VCC_q;

    // redist20_sync_together48_aunroll_vunroll_x_in_c1_eni25_24_tpl_33_rdcnt(COUNTER,258)
    // low=0, high=30, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist20_sync_together48_aunroll_vunroll_x_in_c1_eni25_24_tpl_33_rdcnt_i <= 5'd0;
            redist20_sync_together48_aunroll_vunroll_x_in_c1_eni25_24_tpl_33_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist20_sync_together48_aunroll_vunroll_x_in_c1_eni25_24_tpl_33_rdcnt_i == 5'd29)
            begin
                redist20_sync_together48_aunroll_vunroll_x_in_c1_eni25_24_tpl_33_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist20_sync_together48_aunroll_vunroll_x_in_c1_eni25_24_tpl_33_rdcnt_eq <= 1'b0;
            end
            if (redist20_sync_together48_aunroll_vunroll_x_in_c1_eni25_24_tpl_33_rdcnt_eq == 1'b1)
            begin
                redist20_sync_together48_aunroll_vunroll_x_in_c1_eni25_24_tpl_33_rdcnt_i <= $unsigned(redist20_sync_together48_aunroll_vunroll_x_in_c1_eni25_24_tpl_33_rdcnt_i) + $unsigned(5'd2);
            end
            else
            begin
                redist20_sync_together48_aunroll_vunroll_x_in_c1_eni25_24_tpl_33_rdcnt_i <= $unsigned(redist20_sync_together48_aunroll_vunroll_x_in_c1_eni25_24_tpl_33_rdcnt_i) + $unsigned(5'd1);
            end
        end
    end
    assign redist20_sync_together48_aunroll_vunroll_x_in_c1_eni25_24_tpl_33_rdcnt_q = redist20_sync_together48_aunroll_vunroll_x_in_c1_eni25_24_tpl_33_rdcnt_i[4:0];

    // redist20_sync_together48_aunroll_vunroll_x_in_c1_eni25_24_tpl_33_wraddr(REG,259)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist20_sync_together48_aunroll_vunroll_x_in_c1_eni25_24_tpl_33_wraddr_q <= $unsigned(5'b11110);
        end
        else
        begin
            redist20_sync_together48_aunroll_vunroll_x_in_c1_eni25_24_tpl_33_wraddr_q <= $unsigned(redist20_sync_together48_aunroll_vunroll_x_in_c1_eni25_24_tpl_33_rdcnt_q);
        end
    end

    // redist20_sync_together48_aunroll_vunroll_x_in_c1_eni25_24_tpl_33_mem(DUALMEM,257)
    assign redist20_sync_together48_aunroll_vunroll_x_in_c1_eni25_24_tpl_33_mem_ia = $unsigned(in_c1_eni25_24_tpl);
    assign redist20_sync_together48_aunroll_vunroll_x_in_c1_eni25_24_tpl_33_mem_aa = redist20_sync_together48_aunroll_vunroll_x_in_c1_eni25_24_tpl_33_wraddr_q;
    assign redist20_sync_together48_aunroll_vunroll_x_in_c1_eni25_24_tpl_33_mem_ab = redist20_sync_together48_aunroll_vunroll_x_in_c1_eni25_24_tpl_33_rdcnt_q;
    assign redist20_sync_together48_aunroll_vunroll_x_in_c1_eni25_24_tpl_33_mem_reset0 = ~ (resetn);
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
    ) redist20_sync_together48_aunroll_vunroll_x_in_c1_eni25_24_tpl_33_mem_dmem (
        .clocken1(redist20_sync_together48_aunroll_vunroll_x_in_c1_eni25_24_tpl_33_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist20_sync_together48_aunroll_vunroll_x_in_c1_eni25_24_tpl_33_mem_reset0),
        .clock1(clock),
        .address_a(redist20_sync_together48_aunroll_vunroll_x_in_c1_eni25_24_tpl_33_mem_aa),
        .data_a(redist20_sync_together48_aunroll_vunroll_x_in_c1_eni25_24_tpl_33_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist20_sync_together48_aunroll_vunroll_x_in_c1_eni25_24_tpl_33_mem_ab),
        .q_b(redist20_sync_together48_aunroll_vunroll_x_in_c1_eni25_24_tpl_33_mem_iq),
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
    assign redist20_sync_together48_aunroll_vunroll_x_in_c1_eni25_24_tpl_33_mem_q = redist20_sync_together48_aunroll_vunroll_x_in_c1_eni25_24_tpl_33_mem_iq[31:0];

    // redist20_sync_together48_aunroll_vunroll_x_in_c1_eni25_24_tpl_33_outputreg0(DELAY,256)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist20_sync_together48_aunroll_vunroll_x_in_c1_eni25_24_tpl_33_outputreg0_q <= '0;
        end
        else
        begin
            redist20_sync_together48_aunroll_vunroll_x_in_c1_eni25_24_tpl_33_outputreg0_q <= $unsigned(redist20_sync_together48_aunroll_vunroll_x_in_c1_eni25_24_tpl_33_mem_q);
        end
    end

    // redist19_sync_together48_aunroll_vunroll_x_in_c1_eni25_23_tpl_30_notEnable(LOGICAL,252)
    assign redist19_sync_together48_aunroll_vunroll_x_in_c1_eni25_23_tpl_30_notEnable_q = $unsigned(~ (VCC_q));

    // redist19_sync_together48_aunroll_vunroll_x_in_c1_eni25_23_tpl_30_nor(LOGICAL,253)
    assign redist19_sync_together48_aunroll_vunroll_x_in_c1_eni25_23_tpl_30_nor_q = ~ (redist19_sync_together48_aunroll_vunroll_x_in_c1_eni25_23_tpl_30_notEnable_q | redist19_sync_together48_aunroll_vunroll_x_in_c1_eni25_23_tpl_30_sticky_ena_q);

    // redist19_sync_together48_aunroll_vunroll_x_in_c1_eni25_23_tpl_30_mem_last(CONSTANT,249)
    assign redist19_sync_together48_aunroll_vunroll_x_in_c1_eni25_23_tpl_30_mem_last_q = $unsigned(6'b011010);

    // redist19_sync_together48_aunroll_vunroll_x_in_c1_eni25_23_tpl_30_cmp(LOGICAL,250)
    assign redist19_sync_together48_aunroll_vunroll_x_in_c1_eni25_23_tpl_30_cmp_b = {1'b0, redist19_sync_together48_aunroll_vunroll_x_in_c1_eni25_23_tpl_30_rdcnt_q};
    assign redist19_sync_together48_aunroll_vunroll_x_in_c1_eni25_23_tpl_30_cmp_q = $unsigned(redist19_sync_together48_aunroll_vunroll_x_in_c1_eni25_23_tpl_30_mem_last_q == redist19_sync_together48_aunroll_vunroll_x_in_c1_eni25_23_tpl_30_cmp_b ? 1'b1 : 1'b0);

    // redist19_sync_together48_aunroll_vunroll_x_in_c1_eni25_23_tpl_30_cmpReg(REG,251)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist19_sync_together48_aunroll_vunroll_x_in_c1_eni25_23_tpl_30_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist19_sync_together48_aunroll_vunroll_x_in_c1_eni25_23_tpl_30_cmpReg_q <= $unsigned(redist19_sync_together48_aunroll_vunroll_x_in_c1_eni25_23_tpl_30_cmp_q);
        end
    end

    // redist19_sync_together48_aunroll_vunroll_x_in_c1_eni25_23_tpl_30_sticky_ena(REG,254)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist19_sync_together48_aunroll_vunroll_x_in_c1_eni25_23_tpl_30_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist19_sync_together48_aunroll_vunroll_x_in_c1_eni25_23_tpl_30_nor_q == 1'b1)
        begin
            redist19_sync_together48_aunroll_vunroll_x_in_c1_eni25_23_tpl_30_sticky_ena_q <= $unsigned(redist19_sync_together48_aunroll_vunroll_x_in_c1_eni25_23_tpl_30_cmpReg_q);
        end
    end

    // redist19_sync_together48_aunroll_vunroll_x_in_c1_eni25_23_tpl_30_enaAnd(LOGICAL,255)
    assign redist19_sync_together48_aunroll_vunroll_x_in_c1_eni25_23_tpl_30_enaAnd_q = redist19_sync_together48_aunroll_vunroll_x_in_c1_eni25_23_tpl_30_sticky_ena_q & VCC_q;

    // redist19_sync_together48_aunroll_vunroll_x_in_c1_eni25_23_tpl_30_rdcnt(COUNTER,247)
    // low=0, high=27, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist19_sync_together48_aunroll_vunroll_x_in_c1_eni25_23_tpl_30_rdcnt_i <= 5'd0;
            redist19_sync_together48_aunroll_vunroll_x_in_c1_eni25_23_tpl_30_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist19_sync_together48_aunroll_vunroll_x_in_c1_eni25_23_tpl_30_rdcnt_i == 5'd26)
            begin
                redist19_sync_together48_aunroll_vunroll_x_in_c1_eni25_23_tpl_30_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist19_sync_together48_aunroll_vunroll_x_in_c1_eni25_23_tpl_30_rdcnt_eq <= 1'b0;
            end
            if (redist19_sync_together48_aunroll_vunroll_x_in_c1_eni25_23_tpl_30_rdcnt_eq == 1'b1)
            begin
                redist19_sync_together48_aunroll_vunroll_x_in_c1_eni25_23_tpl_30_rdcnt_i <= $unsigned(redist19_sync_together48_aunroll_vunroll_x_in_c1_eni25_23_tpl_30_rdcnt_i) + $unsigned(5'd5);
            end
            else
            begin
                redist19_sync_together48_aunroll_vunroll_x_in_c1_eni25_23_tpl_30_rdcnt_i <= $unsigned(redist19_sync_together48_aunroll_vunroll_x_in_c1_eni25_23_tpl_30_rdcnt_i) + $unsigned(5'd1);
            end
        end
    end
    assign redist19_sync_together48_aunroll_vunroll_x_in_c1_eni25_23_tpl_30_rdcnt_q = redist19_sync_together48_aunroll_vunroll_x_in_c1_eni25_23_tpl_30_rdcnt_i[4:0];

    // redist19_sync_together48_aunroll_vunroll_x_in_c1_eni25_23_tpl_30_wraddr(REG,248)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist19_sync_together48_aunroll_vunroll_x_in_c1_eni25_23_tpl_30_wraddr_q <= $unsigned(5'b11011);
        end
        else
        begin
            redist19_sync_together48_aunroll_vunroll_x_in_c1_eni25_23_tpl_30_wraddr_q <= $unsigned(redist19_sync_together48_aunroll_vunroll_x_in_c1_eni25_23_tpl_30_rdcnt_q);
        end
    end

    // redist19_sync_together48_aunroll_vunroll_x_in_c1_eni25_23_tpl_30_mem(DUALMEM,246)
    assign redist19_sync_together48_aunroll_vunroll_x_in_c1_eni25_23_tpl_30_mem_ia = $unsigned(in_c1_eni25_23_tpl);
    assign redist19_sync_together48_aunroll_vunroll_x_in_c1_eni25_23_tpl_30_mem_aa = redist19_sync_together48_aunroll_vunroll_x_in_c1_eni25_23_tpl_30_wraddr_q;
    assign redist19_sync_together48_aunroll_vunroll_x_in_c1_eni25_23_tpl_30_mem_ab = redist19_sync_together48_aunroll_vunroll_x_in_c1_eni25_23_tpl_30_rdcnt_q;
    assign redist19_sync_together48_aunroll_vunroll_x_in_c1_eni25_23_tpl_30_mem_reset0 = ~ (resetn);
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
    ) redist19_sync_together48_aunroll_vunroll_x_in_c1_eni25_23_tpl_30_mem_dmem (
        .clocken1(redist19_sync_together48_aunroll_vunroll_x_in_c1_eni25_23_tpl_30_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist19_sync_together48_aunroll_vunroll_x_in_c1_eni25_23_tpl_30_mem_reset0),
        .clock1(clock),
        .address_a(redist19_sync_together48_aunroll_vunroll_x_in_c1_eni25_23_tpl_30_mem_aa),
        .data_a(redist19_sync_together48_aunroll_vunroll_x_in_c1_eni25_23_tpl_30_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist19_sync_together48_aunroll_vunroll_x_in_c1_eni25_23_tpl_30_mem_ab),
        .q_b(redist19_sync_together48_aunroll_vunroll_x_in_c1_eni25_23_tpl_30_mem_iq),
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
    assign redist19_sync_together48_aunroll_vunroll_x_in_c1_eni25_23_tpl_30_mem_q = redist19_sync_together48_aunroll_vunroll_x_in_c1_eni25_23_tpl_30_mem_iq[31:0];

    // redist19_sync_together48_aunroll_vunroll_x_in_c1_eni25_23_tpl_30_outputreg0(DELAY,245)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist19_sync_together48_aunroll_vunroll_x_in_c1_eni25_23_tpl_30_outputreg0_q <= '0;
        end
        else
        begin
            redist19_sync_together48_aunroll_vunroll_x_in_c1_eni25_23_tpl_30_outputreg0_q <= $unsigned(redist19_sync_together48_aunroll_vunroll_x_in_c1_eni25_23_tpl_30_mem_q);
        end
    end

    // redist18_sync_together48_aunroll_vunroll_x_in_c1_eni25_22_tpl_27_notEnable(LOGICAL,241)
    assign redist18_sync_together48_aunroll_vunroll_x_in_c1_eni25_22_tpl_27_notEnable_q = $unsigned(~ (VCC_q));

    // redist18_sync_together48_aunroll_vunroll_x_in_c1_eni25_22_tpl_27_nor(LOGICAL,242)
    assign redist18_sync_together48_aunroll_vunroll_x_in_c1_eni25_22_tpl_27_nor_q = ~ (redist18_sync_together48_aunroll_vunroll_x_in_c1_eni25_22_tpl_27_notEnable_q | redist18_sync_together48_aunroll_vunroll_x_in_c1_eni25_22_tpl_27_sticky_ena_q);

    // redist18_sync_together48_aunroll_vunroll_x_in_c1_eni25_22_tpl_27_mem_last(CONSTANT,238)
    assign redist18_sync_together48_aunroll_vunroll_x_in_c1_eni25_22_tpl_27_mem_last_q = $unsigned(6'b010111);

    // redist18_sync_together48_aunroll_vunroll_x_in_c1_eni25_22_tpl_27_cmp(LOGICAL,239)
    assign redist18_sync_together48_aunroll_vunroll_x_in_c1_eni25_22_tpl_27_cmp_b = {1'b0, redist18_sync_together48_aunroll_vunroll_x_in_c1_eni25_22_tpl_27_rdcnt_q};
    assign redist18_sync_together48_aunroll_vunroll_x_in_c1_eni25_22_tpl_27_cmp_q = $unsigned(redist18_sync_together48_aunroll_vunroll_x_in_c1_eni25_22_tpl_27_mem_last_q == redist18_sync_together48_aunroll_vunroll_x_in_c1_eni25_22_tpl_27_cmp_b ? 1'b1 : 1'b0);

    // redist18_sync_together48_aunroll_vunroll_x_in_c1_eni25_22_tpl_27_cmpReg(REG,240)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist18_sync_together48_aunroll_vunroll_x_in_c1_eni25_22_tpl_27_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist18_sync_together48_aunroll_vunroll_x_in_c1_eni25_22_tpl_27_cmpReg_q <= $unsigned(redist18_sync_together48_aunroll_vunroll_x_in_c1_eni25_22_tpl_27_cmp_q);
        end
    end

    // redist18_sync_together48_aunroll_vunroll_x_in_c1_eni25_22_tpl_27_sticky_ena(REG,243)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist18_sync_together48_aunroll_vunroll_x_in_c1_eni25_22_tpl_27_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist18_sync_together48_aunroll_vunroll_x_in_c1_eni25_22_tpl_27_nor_q == 1'b1)
        begin
            redist18_sync_together48_aunroll_vunroll_x_in_c1_eni25_22_tpl_27_sticky_ena_q <= $unsigned(redist18_sync_together48_aunroll_vunroll_x_in_c1_eni25_22_tpl_27_cmpReg_q);
        end
    end

    // redist18_sync_together48_aunroll_vunroll_x_in_c1_eni25_22_tpl_27_enaAnd(LOGICAL,244)
    assign redist18_sync_together48_aunroll_vunroll_x_in_c1_eni25_22_tpl_27_enaAnd_q = redist18_sync_together48_aunroll_vunroll_x_in_c1_eni25_22_tpl_27_sticky_ena_q & VCC_q;

    // redist18_sync_together48_aunroll_vunroll_x_in_c1_eni25_22_tpl_27_rdcnt(COUNTER,236)
    // low=0, high=24, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist18_sync_together48_aunroll_vunroll_x_in_c1_eni25_22_tpl_27_rdcnt_i <= 5'd0;
            redist18_sync_together48_aunroll_vunroll_x_in_c1_eni25_22_tpl_27_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist18_sync_together48_aunroll_vunroll_x_in_c1_eni25_22_tpl_27_rdcnt_i == 5'd23)
            begin
                redist18_sync_together48_aunroll_vunroll_x_in_c1_eni25_22_tpl_27_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist18_sync_together48_aunroll_vunroll_x_in_c1_eni25_22_tpl_27_rdcnt_eq <= 1'b0;
            end
            if (redist18_sync_together48_aunroll_vunroll_x_in_c1_eni25_22_tpl_27_rdcnt_eq == 1'b1)
            begin
                redist18_sync_together48_aunroll_vunroll_x_in_c1_eni25_22_tpl_27_rdcnt_i <= $unsigned(redist18_sync_together48_aunroll_vunroll_x_in_c1_eni25_22_tpl_27_rdcnt_i) + $unsigned(5'd8);
            end
            else
            begin
                redist18_sync_together48_aunroll_vunroll_x_in_c1_eni25_22_tpl_27_rdcnt_i <= $unsigned(redist18_sync_together48_aunroll_vunroll_x_in_c1_eni25_22_tpl_27_rdcnt_i) + $unsigned(5'd1);
            end
        end
    end
    assign redist18_sync_together48_aunroll_vunroll_x_in_c1_eni25_22_tpl_27_rdcnt_q = redist18_sync_together48_aunroll_vunroll_x_in_c1_eni25_22_tpl_27_rdcnt_i[4:0];

    // redist18_sync_together48_aunroll_vunroll_x_in_c1_eni25_22_tpl_27_wraddr(REG,237)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist18_sync_together48_aunroll_vunroll_x_in_c1_eni25_22_tpl_27_wraddr_q <= $unsigned(5'b11000);
        end
        else
        begin
            redist18_sync_together48_aunroll_vunroll_x_in_c1_eni25_22_tpl_27_wraddr_q <= $unsigned(redist18_sync_together48_aunroll_vunroll_x_in_c1_eni25_22_tpl_27_rdcnt_q);
        end
    end

    // redist18_sync_together48_aunroll_vunroll_x_in_c1_eni25_22_tpl_27_mem(DUALMEM,235)
    assign redist18_sync_together48_aunroll_vunroll_x_in_c1_eni25_22_tpl_27_mem_ia = $unsigned(in_c1_eni25_22_tpl);
    assign redist18_sync_together48_aunroll_vunroll_x_in_c1_eni25_22_tpl_27_mem_aa = redist18_sync_together48_aunroll_vunroll_x_in_c1_eni25_22_tpl_27_wraddr_q;
    assign redist18_sync_together48_aunroll_vunroll_x_in_c1_eni25_22_tpl_27_mem_ab = redist18_sync_together48_aunroll_vunroll_x_in_c1_eni25_22_tpl_27_rdcnt_q;
    assign redist18_sync_together48_aunroll_vunroll_x_in_c1_eni25_22_tpl_27_mem_reset0 = ~ (resetn);
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
    ) redist18_sync_together48_aunroll_vunroll_x_in_c1_eni25_22_tpl_27_mem_dmem (
        .clocken1(redist18_sync_together48_aunroll_vunroll_x_in_c1_eni25_22_tpl_27_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist18_sync_together48_aunroll_vunroll_x_in_c1_eni25_22_tpl_27_mem_reset0),
        .clock1(clock),
        .address_a(redist18_sync_together48_aunroll_vunroll_x_in_c1_eni25_22_tpl_27_mem_aa),
        .data_a(redist18_sync_together48_aunroll_vunroll_x_in_c1_eni25_22_tpl_27_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist18_sync_together48_aunroll_vunroll_x_in_c1_eni25_22_tpl_27_mem_ab),
        .q_b(redist18_sync_together48_aunroll_vunroll_x_in_c1_eni25_22_tpl_27_mem_iq),
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
    assign redist18_sync_together48_aunroll_vunroll_x_in_c1_eni25_22_tpl_27_mem_q = redist18_sync_together48_aunroll_vunroll_x_in_c1_eni25_22_tpl_27_mem_iq[31:0];

    // redist18_sync_together48_aunroll_vunroll_x_in_c1_eni25_22_tpl_27_outputreg0(DELAY,234)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist18_sync_together48_aunroll_vunroll_x_in_c1_eni25_22_tpl_27_outputreg0_q <= '0;
        end
        else
        begin
            redist18_sync_together48_aunroll_vunroll_x_in_c1_eni25_22_tpl_27_outputreg0_q <= $unsigned(redist18_sync_together48_aunroll_vunroll_x_in_c1_eni25_22_tpl_27_mem_q);
        end
    end

    // redist17_sync_together48_aunroll_vunroll_x_in_c1_eni25_21_tpl_24_notEnable(LOGICAL,230)
    assign redist17_sync_together48_aunroll_vunroll_x_in_c1_eni25_21_tpl_24_notEnable_q = $unsigned(~ (VCC_q));

    // redist17_sync_together48_aunroll_vunroll_x_in_c1_eni25_21_tpl_24_nor(LOGICAL,231)
    assign redist17_sync_together48_aunroll_vunroll_x_in_c1_eni25_21_tpl_24_nor_q = ~ (redist17_sync_together48_aunroll_vunroll_x_in_c1_eni25_21_tpl_24_notEnable_q | redist17_sync_together48_aunroll_vunroll_x_in_c1_eni25_21_tpl_24_sticky_ena_q);

    // redist17_sync_together48_aunroll_vunroll_x_in_c1_eni25_21_tpl_24_mem_last(CONSTANT,227)
    assign redist17_sync_together48_aunroll_vunroll_x_in_c1_eni25_21_tpl_24_mem_last_q = $unsigned(6'b010100);

    // redist17_sync_together48_aunroll_vunroll_x_in_c1_eni25_21_tpl_24_cmp(LOGICAL,228)
    assign redist17_sync_together48_aunroll_vunroll_x_in_c1_eni25_21_tpl_24_cmp_b = {1'b0, redist17_sync_together48_aunroll_vunroll_x_in_c1_eni25_21_tpl_24_rdcnt_q};
    assign redist17_sync_together48_aunroll_vunroll_x_in_c1_eni25_21_tpl_24_cmp_q = $unsigned(redist17_sync_together48_aunroll_vunroll_x_in_c1_eni25_21_tpl_24_mem_last_q == redist17_sync_together48_aunroll_vunroll_x_in_c1_eni25_21_tpl_24_cmp_b ? 1'b1 : 1'b0);

    // redist17_sync_together48_aunroll_vunroll_x_in_c1_eni25_21_tpl_24_cmpReg(REG,229)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist17_sync_together48_aunroll_vunroll_x_in_c1_eni25_21_tpl_24_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist17_sync_together48_aunroll_vunroll_x_in_c1_eni25_21_tpl_24_cmpReg_q <= $unsigned(redist17_sync_together48_aunroll_vunroll_x_in_c1_eni25_21_tpl_24_cmp_q);
        end
    end

    // redist17_sync_together48_aunroll_vunroll_x_in_c1_eni25_21_tpl_24_sticky_ena(REG,232)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist17_sync_together48_aunroll_vunroll_x_in_c1_eni25_21_tpl_24_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist17_sync_together48_aunroll_vunroll_x_in_c1_eni25_21_tpl_24_nor_q == 1'b1)
        begin
            redist17_sync_together48_aunroll_vunroll_x_in_c1_eni25_21_tpl_24_sticky_ena_q <= $unsigned(redist17_sync_together48_aunroll_vunroll_x_in_c1_eni25_21_tpl_24_cmpReg_q);
        end
    end

    // redist17_sync_together48_aunroll_vunroll_x_in_c1_eni25_21_tpl_24_enaAnd(LOGICAL,233)
    assign redist17_sync_together48_aunroll_vunroll_x_in_c1_eni25_21_tpl_24_enaAnd_q = redist17_sync_together48_aunroll_vunroll_x_in_c1_eni25_21_tpl_24_sticky_ena_q & VCC_q;

    // redist17_sync_together48_aunroll_vunroll_x_in_c1_eni25_21_tpl_24_rdcnt(COUNTER,225)
    // low=0, high=21, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist17_sync_together48_aunroll_vunroll_x_in_c1_eni25_21_tpl_24_rdcnt_i <= 5'd0;
            redist17_sync_together48_aunroll_vunroll_x_in_c1_eni25_21_tpl_24_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist17_sync_together48_aunroll_vunroll_x_in_c1_eni25_21_tpl_24_rdcnt_i == 5'd20)
            begin
                redist17_sync_together48_aunroll_vunroll_x_in_c1_eni25_21_tpl_24_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist17_sync_together48_aunroll_vunroll_x_in_c1_eni25_21_tpl_24_rdcnt_eq <= 1'b0;
            end
            if (redist17_sync_together48_aunroll_vunroll_x_in_c1_eni25_21_tpl_24_rdcnt_eq == 1'b1)
            begin
                redist17_sync_together48_aunroll_vunroll_x_in_c1_eni25_21_tpl_24_rdcnt_i <= $unsigned(redist17_sync_together48_aunroll_vunroll_x_in_c1_eni25_21_tpl_24_rdcnt_i) + $unsigned(5'd11);
            end
            else
            begin
                redist17_sync_together48_aunroll_vunroll_x_in_c1_eni25_21_tpl_24_rdcnt_i <= $unsigned(redist17_sync_together48_aunroll_vunroll_x_in_c1_eni25_21_tpl_24_rdcnt_i) + $unsigned(5'd1);
            end
        end
    end
    assign redist17_sync_together48_aunroll_vunroll_x_in_c1_eni25_21_tpl_24_rdcnt_q = redist17_sync_together48_aunroll_vunroll_x_in_c1_eni25_21_tpl_24_rdcnt_i[4:0];

    // redist17_sync_together48_aunroll_vunroll_x_in_c1_eni25_21_tpl_24_wraddr(REG,226)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist17_sync_together48_aunroll_vunroll_x_in_c1_eni25_21_tpl_24_wraddr_q <= $unsigned(5'b10101);
        end
        else
        begin
            redist17_sync_together48_aunroll_vunroll_x_in_c1_eni25_21_tpl_24_wraddr_q <= $unsigned(redist17_sync_together48_aunroll_vunroll_x_in_c1_eni25_21_tpl_24_rdcnt_q);
        end
    end

    // redist17_sync_together48_aunroll_vunroll_x_in_c1_eni25_21_tpl_24_mem(DUALMEM,224)
    assign redist17_sync_together48_aunroll_vunroll_x_in_c1_eni25_21_tpl_24_mem_ia = $unsigned(in_c1_eni25_21_tpl);
    assign redist17_sync_together48_aunroll_vunroll_x_in_c1_eni25_21_tpl_24_mem_aa = redist17_sync_together48_aunroll_vunroll_x_in_c1_eni25_21_tpl_24_wraddr_q;
    assign redist17_sync_together48_aunroll_vunroll_x_in_c1_eni25_21_tpl_24_mem_ab = redist17_sync_together48_aunroll_vunroll_x_in_c1_eni25_21_tpl_24_rdcnt_q;
    assign redist17_sync_together48_aunroll_vunroll_x_in_c1_eni25_21_tpl_24_mem_reset0 = ~ (resetn);
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
    ) redist17_sync_together48_aunroll_vunroll_x_in_c1_eni25_21_tpl_24_mem_dmem (
        .clocken1(redist17_sync_together48_aunroll_vunroll_x_in_c1_eni25_21_tpl_24_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist17_sync_together48_aunroll_vunroll_x_in_c1_eni25_21_tpl_24_mem_reset0),
        .clock1(clock),
        .address_a(redist17_sync_together48_aunroll_vunroll_x_in_c1_eni25_21_tpl_24_mem_aa),
        .data_a(redist17_sync_together48_aunroll_vunroll_x_in_c1_eni25_21_tpl_24_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist17_sync_together48_aunroll_vunroll_x_in_c1_eni25_21_tpl_24_mem_ab),
        .q_b(redist17_sync_together48_aunroll_vunroll_x_in_c1_eni25_21_tpl_24_mem_iq),
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
    assign redist17_sync_together48_aunroll_vunroll_x_in_c1_eni25_21_tpl_24_mem_q = redist17_sync_together48_aunroll_vunroll_x_in_c1_eni25_21_tpl_24_mem_iq[31:0];

    // redist17_sync_together48_aunroll_vunroll_x_in_c1_eni25_21_tpl_24_outputreg0(DELAY,223)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist17_sync_together48_aunroll_vunroll_x_in_c1_eni25_21_tpl_24_outputreg0_q <= '0;
        end
        else
        begin
            redist17_sync_together48_aunroll_vunroll_x_in_c1_eni25_21_tpl_24_outputreg0_q <= $unsigned(redist17_sync_together48_aunroll_vunroll_x_in_c1_eni25_21_tpl_24_mem_q);
        end
    end

    // redist16_sync_together48_aunroll_vunroll_x_in_c1_eni25_20_tpl_21_notEnable(LOGICAL,219)
    assign redist16_sync_together48_aunroll_vunroll_x_in_c1_eni25_20_tpl_21_notEnable_q = $unsigned(~ (VCC_q));

    // redist16_sync_together48_aunroll_vunroll_x_in_c1_eni25_20_tpl_21_nor(LOGICAL,220)
    assign redist16_sync_together48_aunroll_vunroll_x_in_c1_eni25_20_tpl_21_nor_q = ~ (redist16_sync_together48_aunroll_vunroll_x_in_c1_eni25_20_tpl_21_notEnable_q | redist16_sync_together48_aunroll_vunroll_x_in_c1_eni25_20_tpl_21_sticky_ena_q);

    // redist16_sync_together48_aunroll_vunroll_x_in_c1_eni25_20_tpl_21_mem_last(CONSTANT,216)
    assign redist16_sync_together48_aunroll_vunroll_x_in_c1_eni25_20_tpl_21_mem_last_q = $unsigned(6'b010001);

    // redist16_sync_together48_aunroll_vunroll_x_in_c1_eni25_20_tpl_21_cmp(LOGICAL,217)
    assign redist16_sync_together48_aunroll_vunroll_x_in_c1_eni25_20_tpl_21_cmp_b = {1'b0, redist16_sync_together48_aunroll_vunroll_x_in_c1_eni25_20_tpl_21_rdcnt_q};
    assign redist16_sync_together48_aunroll_vunroll_x_in_c1_eni25_20_tpl_21_cmp_q = $unsigned(redist16_sync_together48_aunroll_vunroll_x_in_c1_eni25_20_tpl_21_mem_last_q == redist16_sync_together48_aunroll_vunroll_x_in_c1_eni25_20_tpl_21_cmp_b ? 1'b1 : 1'b0);

    // redist16_sync_together48_aunroll_vunroll_x_in_c1_eni25_20_tpl_21_cmpReg(REG,218)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist16_sync_together48_aunroll_vunroll_x_in_c1_eni25_20_tpl_21_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist16_sync_together48_aunroll_vunroll_x_in_c1_eni25_20_tpl_21_cmpReg_q <= $unsigned(redist16_sync_together48_aunroll_vunroll_x_in_c1_eni25_20_tpl_21_cmp_q);
        end
    end

    // redist16_sync_together48_aunroll_vunroll_x_in_c1_eni25_20_tpl_21_sticky_ena(REG,221)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist16_sync_together48_aunroll_vunroll_x_in_c1_eni25_20_tpl_21_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist16_sync_together48_aunroll_vunroll_x_in_c1_eni25_20_tpl_21_nor_q == 1'b1)
        begin
            redist16_sync_together48_aunroll_vunroll_x_in_c1_eni25_20_tpl_21_sticky_ena_q <= $unsigned(redist16_sync_together48_aunroll_vunroll_x_in_c1_eni25_20_tpl_21_cmpReg_q);
        end
    end

    // redist16_sync_together48_aunroll_vunroll_x_in_c1_eni25_20_tpl_21_enaAnd(LOGICAL,222)
    assign redist16_sync_together48_aunroll_vunroll_x_in_c1_eni25_20_tpl_21_enaAnd_q = redist16_sync_together48_aunroll_vunroll_x_in_c1_eni25_20_tpl_21_sticky_ena_q & VCC_q;

    // redist16_sync_together48_aunroll_vunroll_x_in_c1_eni25_20_tpl_21_rdcnt(COUNTER,214)
    // low=0, high=18, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist16_sync_together48_aunroll_vunroll_x_in_c1_eni25_20_tpl_21_rdcnt_i <= 5'd0;
            redist16_sync_together48_aunroll_vunroll_x_in_c1_eni25_20_tpl_21_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist16_sync_together48_aunroll_vunroll_x_in_c1_eni25_20_tpl_21_rdcnt_i == 5'd17)
            begin
                redist16_sync_together48_aunroll_vunroll_x_in_c1_eni25_20_tpl_21_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist16_sync_together48_aunroll_vunroll_x_in_c1_eni25_20_tpl_21_rdcnt_eq <= 1'b0;
            end
            if (redist16_sync_together48_aunroll_vunroll_x_in_c1_eni25_20_tpl_21_rdcnt_eq == 1'b1)
            begin
                redist16_sync_together48_aunroll_vunroll_x_in_c1_eni25_20_tpl_21_rdcnt_i <= $unsigned(redist16_sync_together48_aunroll_vunroll_x_in_c1_eni25_20_tpl_21_rdcnt_i) + $unsigned(5'd14);
            end
            else
            begin
                redist16_sync_together48_aunroll_vunroll_x_in_c1_eni25_20_tpl_21_rdcnt_i <= $unsigned(redist16_sync_together48_aunroll_vunroll_x_in_c1_eni25_20_tpl_21_rdcnt_i) + $unsigned(5'd1);
            end
        end
    end
    assign redist16_sync_together48_aunroll_vunroll_x_in_c1_eni25_20_tpl_21_rdcnt_q = redist16_sync_together48_aunroll_vunroll_x_in_c1_eni25_20_tpl_21_rdcnt_i[4:0];

    // redist16_sync_together48_aunroll_vunroll_x_in_c1_eni25_20_tpl_21_wraddr(REG,215)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist16_sync_together48_aunroll_vunroll_x_in_c1_eni25_20_tpl_21_wraddr_q <= $unsigned(5'b10010);
        end
        else
        begin
            redist16_sync_together48_aunroll_vunroll_x_in_c1_eni25_20_tpl_21_wraddr_q <= $unsigned(redist16_sync_together48_aunroll_vunroll_x_in_c1_eni25_20_tpl_21_rdcnt_q);
        end
    end

    // redist16_sync_together48_aunroll_vunroll_x_in_c1_eni25_20_tpl_21_mem(DUALMEM,213)
    assign redist16_sync_together48_aunroll_vunroll_x_in_c1_eni25_20_tpl_21_mem_ia = $unsigned(in_c1_eni25_20_tpl);
    assign redist16_sync_together48_aunroll_vunroll_x_in_c1_eni25_20_tpl_21_mem_aa = redist16_sync_together48_aunroll_vunroll_x_in_c1_eni25_20_tpl_21_wraddr_q;
    assign redist16_sync_together48_aunroll_vunroll_x_in_c1_eni25_20_tpl_21_mem_ab = redist16_sync_together48_aunroll_vunroll_x_in_c1_eni25_20_tpl_21_rdcnt_q;
    assign redist16_sync_together48_aunroll_vunroll_x_in_c1_eni25_20_tpl_21_mem_reset0 = ~ (resetn);
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
    ) redist16_sync_together48_aunroll_vunroll_x_in_c1_eni25_20_tpl_21_mem_dmem (
        .clocken1(redist16_sync_together48_aunroll_vunroll_x_in_c1_eni25_20_tpl_21_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist16_sync_together48_aunroll_vunroll_x_in_c1_eni25_20_tpl_21_mem_reset0),
        .clock1(clock),
        .address_a(redist16_sync_together48_aunroll_vunroll_x_in_c1_eni25_20_tpl_21_mem_aa),
        .data_a(redist16_sync_together48_aunroll_vunroll_x_in_c1_eni25_20_tpl_21_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist16_sync_together48_aunroll_vunroll_x_in_c1_eni25_20_tpl_21_mem_ab),
        .q_b(redist16_sync_together48_aunroll_vunroll_x_in_c1_eni25_20_tpl_21_mem_iq),
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
    assign redist16_sync_together48_aunroll_vunroll_x_in_c1_eni25_20_tpl_21_mem_q = redist16_sync_together48_aunroll_vunroll_x_in_c1_eni25_20_tpl_21_mem_iq[31:0];

    // redist16_sync_together48_aunroll_vunroll_x_in_c1_eni25_20_tpl_21_outputreg0(DELAY,212)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist16_sync_together48_aunroll_vunroll_x_in_c1_eni25_20_tpl_21_outputreg0_q <= '0;
        end
        else
        begin
            redist16_sync_together48_aunroll_vunroll_x_in_c1_eni25_20_tpl_21_outputreg0_q <= $unsigned(redist16_sync_together48_aunroll_vunroll_x_in_c1_eni25_20_tpl_21_mem_q);
        end
    end

    // redist15_sync_together48_aunroll_vunroll_x_in_c1_eni25_19_tpl_18_notEnable(LOGICAL,208)
    assign redist15_sync_together48_aunroll_vunroll_x_in_c1_eni25_19_tpl_18_notEnable_q = $unsigned(~ (VCC_q));

    // redist15_sync_together48_aunroll_vunroll_x_in_c1_eni25_19_tpl_18_nor(LOGICAL,209)
    assign redist15_sync_together48_aunroll_vunroll_x_in_c1_eni25_19_tpl_18_nor_q = ~ (redist15_sync_together48_aunroll_vunroll_x_in_c1_eni25_19_tpl_18_notEnable_q | redist15_sync_together48_aunroll_vunroll_x_in_c1_eni25_19_tpl_18_sticky_ena_q);

    // redist15_sync_together48_aunroll_vunroll_x_in_c1_eni25_19_tpl_18_mem_last(CONSTANT,205)
    assign redist15_sync_together48_aunroll_vunroll_x_in_c1_eni25_19_tpl_18_mem_last_q = $unsigned(5'b01110);

    // redist15_sync_together48_aunroll_vunroll_x_in_c1_eni25_19_tpl_18_cmp(LOGICAL,206)
    assign redist15_sync_together48_aunroll_vunroll_x_in_c1_eni25_19_tpl_18_cmp_b = {1'b0, redist15_sync_together48_aunroll_vunroll_x_in_c1_eni25_19_tpl_18_rdcnt_q};
    assign redist15_sync_together48_aunroll_vunroll_x_in_c1_eni25_19_tpl_18_cmp_q = $unsigned(redist15_sync_together48_aunroll_vunroll_x_in_c1_eni25_19_tpl_18_mem_last_q == redist15_sync_together48_aunroll_vunroll_x_in_c1_eni25_19_tpl_18_cmp_b ? 1'b1 : 1'b0);

    // redist15_sync_together48_aunroll_vunroll_x_in_c1_eni25_19_tpl_18_cmpReg(REG,207)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist15_sync_together48_aunroll_vunroll_x_in_c1_eni25_19_tpl_18_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist15_sync_together48_aunroll_vunroll_x_in_c1_eni25_19_tpl_18_cmpReg_q <= $unsigned(redist15_sync_together48_aunroll_vunroll_x_in_c1_eni25_19_tpl_18_cmp_q);
        end
    end

    // redist15_sync_together48_aunroll_vunroll_x_in_c1_eni25_19_tpl_18_sticky_ena(REG,210)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist15_sync_together48_aunroll_vunroll_x_in_c1_eni25_19_tpl_18_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist15_sync_together48_aunroll_vunroll_x_in_c1_eni25_19_tpl_18_nor_q == 1'b1)
        begin
            redist15_sync_together48_aunroll_vunroll_x_in_c1_eni25_19_tpl_18_sticky_ena_q <= $unsigned(redist15_sync_together48_aunroll_vunroll_x_in_c1_eni25_19_tpl_18_cmpReg_q);
        end
    end

    // redist15_sync_together48_aunroll_vunroll_x_in_c1_eni25_19_tpl_18_enaAnd(LOGICAL,211)
    assign redist15_sync_together48_aunroll_vunroll_x_in_c1_eni25_19_tpl_18_enaAnd_q = redist15_sync_together48_aunroll_vunroll_x_in_c1_eni25_19_tpl_18_sticky_ena_q & VCC_q;

    // redist15_sync_together48_aunroll_vunroll_x_in_c1_eni25_19_tpl_18_rdcnt(COUNTER,203)
    // low=0, high=15, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist15_sync_together48_aunroll_vunroll_x_in_c1_eni25_19_tpl_18_rdcnt_i <= 4'd0;
        end
        else
        begin
            redist15_sync_together48_aunroll_vunroll_x_in_c1_eni25_19_tpl_18_rdcnt_i <= $unsigned(redist15_sync_together48_aunroll_vunroll_x_in_c1_eni25_19_tpl_18_rdcnt_i) + $unsigned(4'd1);
        end
    end
    assign redist15_sync_together48_aunroll_vunroll_x_in_c1_eni25_19_tpl_18_rdcnt_q = redist15_sync_together48_aunroll_vunroll_x_in_c1_eni25_19_tpl_18_rdcnt_i[3:0];

    // redist15_sync_together48_aunroll_vunroll_x_in_c1_eni25_19_tpl_18_wraddr(REG,204)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist15_sync_together48_aunroll_vunroll_x_in_c1_eni25_19_tpl_18_wraddr_q <= $unsigned(4'b1111);
        end
        else
        begin
            redist15_sync_together48_aunroll_vunroll_x_in_c1_eni25_19_tpl_18_wraddr_q <= $unsigned(redist15_sync_together48_aunroll_vunroll_x_in_c1_eni25_19_tpl_18_rdcnt_q);
        end
    end

    // redist15_sync_together48_aunroll_vunroll_x_in_c1_eni25_19_tpl_18_mem(DUALMEM,202)
    assign redist15_sync_together48_aunroll_vunroll_x_in_c1_eni25_19_tpl_18_mem_ia = $unsigned(in_c1_eni25_19_tpl);
    assign redist15_sync_together48_aunroll_vunroll_x_in_c1_eni25_19_tpl_18_mem_aa = redist15_sync_together48_aunroll_vunroll_x_in_c1_eni25_19_tpl_18_wraddr_q;
    assign redist15_sync_together48_aunroll_vunroll_x_in_c1_eni25_19_tpl_18_mem_ab = redist15_sync_together48_aunroll_vunroll_x_in_c1_eni25_19_tpl_18_rdcnt_q;
    assign redist15_sync_together48_aunroll_vunroll_x_in_c1_eni25_19_tpl_18_mem_reset0 = ~ (resetn);
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
    ) redist15_sync_together48_aunroll_vunroll_x_in_c1_eni25_19_tpl_18_mem_dmem (
        .clocken1(redist15_sync_together48_aunroll_vunroll_x_in_c1_eni25_19_tpl_18_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist15_sync_together48_aunroll_vunroll_x_in_c1_eni25_19_tpl_18_mem_reset0),
        .clock1(clock),
        .address_a(redist15_sync_together48_aunroll_vunroll_x_in_c1_eni25_19_tpl_18_mem_aa),
        .data_a(redist15_sync_together48_aunroll_vunroll_x_in_c1_eni25_19_tpl_18_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist15_sync_together48_aunroll_vunroll_x_in_c1_eni25_19_tpl_18_mem_ab),
        .q_b(redist15_sync_together48_aunroll_vunroll_x_in_c1_eni25_19_tpl_18_mem_iq),
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
    assign redist15_sync_together48_aunroll_vunroll_x_in_c1_eni25_19_tpl_18_mem_q = redist15_sync_together48_aunroll_vunroll_x_in_c1_eni25_19_tpl_18_mem_iq[31:0];

    // redist15_sync_together48_aunroll_vunroll_x_in_c1_eni25_19_tpl_18_outputreg0(DELAY,201)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist15_sync_together48_aunroll_vunroll_x_in_c1_eni25_19_tpl_18_outputreg0_q <= '0;
        end
        else
        begin
            redist15_sync_together48_aunroll_vunroll_x_in_c1_eni25_19_tpl_18_outputreg0_q <= $unsigned(redist15_sync_together48_aunroll_vunroll_x_in_c1_eni25_19_tpl_18_mem_q);
        end
    end

    // redist14_sync_together48_aunroll_vunroll_x_in_c1_eni25_18_tpl_15_notEnable(LOGICAL,197)
    assign redist14_sync_together48_aunroll_vunroll_x_in_c1_eni25_18_tpl_15_notEnable_q = $unsigned(~ (VCC_q));

    // redist14_sync_together48_aunroll_vunroll_x_in_c1_eni25_18_tpl_15_nor(LOGICAL,198)
    assign redist14_sync_together48_aunroll_vunroll_x_in_c1_eni25_18_tpl_15_nor_q = ~ (redist14_sync_together48_aunroll_vunroll_x_in_c1_eni25_18_tpl_15_notEnable_q | redist14_sync_together48_aunroll_vunroll_x_in_c1_eni25_18_tpl_15_sticky_ena_q);

    // redist14_sync_together48_aunroll_vunroll_x_in_c1_eni25_18_tpl_15_mem_last(CONSTANT,194)
    assign redist14_sync_together48_aunroll_vunroll_x_in_c1_eni25_18_tpl_15_mem_last_q = $unsigned(5'b01011);

    // redist14_sync_together48_aunroll_vunroll_x_in_c1_eni25_18_tpl_15_cmp(LOGICAL,195)
    assign redist14_sync_together48_aunroll_vunroll_x_in_c1_eni25_18_tpl_15_cmp_b = {1'b0, redist14_sync_together48_aunroll_vunroll_x_in_c1_eni25_18_tpl_15_rdcnt_q};
    assign redist14_sync_together48_aunroll_vunroll_x_in_c1_eni25_18_tpl_15_cmp_q = $unsigned(redist14_sync_together48_aunroll_vunroll_x_in_c1_eni25_18_tpl_15_mem_last_q == redist14_sync_together48_aunroll_vunroll_x_in_c1_eni25_18_tpl_15_cmp_b ? 1'b1 : 1'b0);

    // redist14_sync_together48_aunroll_vunroll_x_in_c1_eni25_18_tpl_15_cmpReg(REG,196)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_sync_together48_aunroll_vunroll_x_in_c1_eni25_18_tpl_15_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist14_sync_together48_aunroll_vunroll_x_in_c1_eni25_18_tpl_15_cmpReg_q <= $unsigned(redist14_sync_together48_aunroll_vunroll_x_in_c1_eni25_18_tpl_15_cmp_q);
        end
    end

    // redist14_sync_together48_aunroll_vunroll_x_in_c1_eni25_18_tpl_15_sticky_ena(REG,199)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_sync_together48_aunroll_vunroll_x_in_c1_eni25_18_tpl_15_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist14_sync_together48_aunroll_vunroll_x_in_c1_eni25_18_tpl_15_nor_q == 1'b1)
        begin
            redist14_sync_together48_aunroll_vunroll_x_in_c1_eni25_18_tpl_15_sticky_ena_q <= $unsigned(redist14_sync_together48_aunroll_vunroll_x_in_c1_eni25_18_tpl_15_cmpReg_q);
        end
    end

    // redist14_sync_together48_aunroll_vunroll_x_in_c1_eni25_18_tpl_15_enaAnd(LOGICAL,200)
    assign redist14_sync_together48_aunroll_vunroll_x_in_c1_eni25_18_tpl_15_enaAnd_q = redist14_sync_together48_aunroll_vunroll_x_in_c1_eni25_18_tpl_15_sticky_ena_q & VCC_q;

    // redist14_sync_together48_aunroll_vunroll_x_in_c1_eni25_18_tpl_15_rdcnt(COUNTER,192)
    // low=0, high=12, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_sync_together48_aunroll_vunroll_x_in_c1_eni25_18_tpl_15_rdcnt_i <= 4'd0;
            redist14_sync_together48_aunroll_vunroll_x_in_c1_eni25_18_tpl_15_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist14_sync_together48_aunroll_vunroll_x_in_c1_eni25_18_tpl_15_rdcnt_i == 4'd11)
            begin
                redist14_sync_together48_aunroll_vunroll_x_in_c1_eni25_18_tpl_15_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist14_sync_together48_aunroll_vunroll_x_in_c1_eni25_18_tpl_15_rdcnt_eq <= 1'b0;
            end
            if (redist14_sync_together48_aunroll_vunroll_x_in_c1_eni25_18_tpl_15_rdcnt_eq == 1'b1)
            begin
                redist14_sync_together48_aunroll_vunroll_x_in_c1_eni25_18_tpl_15_rdcnt_i <= $unsigned(redist14_sync_together48_aunroll_vunroll_x_in_c1_eni25_18_tpl_15_rdcnt_i) + $unsigned(4'd4);
            end
            else
            begin
                redist14_sync_together48_aunroll_vunroll_x_in_c1_eni25_18_tpl_15_rdcnt_i <= $unsigned(redist14_sync_together48_aunroll_vunroll_x_in_c1_eni25_18_tpl_15_rdcnt_i) + $unsigned(4'd1);
            end
        end
    end
    assign redist14_sync_together48_aunroll_vunroll_x_in_c1_eni25_18_tpl_15_rdcnt_q = redist14_sync_together48_aunroll_vunroll_x_in_c1_eni25_18_tpl_15_rdcnt_i[3:0];

    // redist14_sync_together48_aunroll_vunroll_x_in_c1_eni25_18_tpl_15_wraddr(REG,193)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_sync_together48_aunroll_vunroll_x_in_c1_eni25_18_tpl_15_wraddr_q <= $unsigned(4'b1100);
        end
        else
        begin
            redist14_sync_together48_aunroll_vunroll_x_in_c1_eni25_18_tpl_15_wraddr_q <= $unsigned(redist14_sync_together48_aunroll_vunroll_x_in_c1_eni25_18_tpl_15_rdcnt_q);
        end
    end

    // redist14_sync_together48_aunroll_vunroll_x_in_c1_eni25_18_tpl_15_mem(DUALMEM,191)
    assign redist14_sync_together48_aunroll_vunroll_x_in_c1_eni25_18_tpl_15_mem_ia = $unsigned(in_c1_eni25_18_tpl);
    assign redist14_sync_together48_aunroll_vunroll_x_in_c1_eni25_18_tpl_15_mem_aa = redist14_sync_together48_aunroll_vunroll_x_in_c1_eni25_18_tpl_15_wraddr_q;
    assign redist14_sync_together48_aunroll_vunroll_x_in_c1_eni25_18_tpl_15_mem_ab = redist14_sync_together48_aunroll_vunroll_x_in_c1_eni25_18_tpl_15_rdcnt_q;
    assign redist14_sync_together48_aunroll_vunroll_x_in_c1_eni25_18_tpl_15_mem_reset0 = ~ (resetn);
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
    ) redist14_sync_together48_aunroll_vunroll_x_in_c1_eni25_18_tpl_15_mem_dmem (
        .clocken1(redist14_sync_together48_aunroll_vunroll_x_in_c1_eni25_18_tpl_15_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist14_sync_together48_aunroll_vunroll_x_in_c1_eni25_18_tpl_15_mem_reset0),
        .clock1(clock),
        .address_a(redist14_sync_together48_aunroll_vunroll_x_in_c1_eni25_18_tpl_15_mem_aa),
        .data_a(redist14_sync_together48_aunroll_vunroll_x_in_c1_eni25_18_tpl_15_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist14_sync_together48_aunroll_vunroll_x_in_c1_eni25_18_tpl_15_mem_ab),
        .q_b(redist14_sync_together48_aunroll_vunroll_x_in_c1_eni25_18_tpl_15_mem_iq),
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
    assign redist14_sync_together48_aunroll_vunroll_x_in_c1_eni25_18_tpl_15_mem_q = redist14_sync_together48_aunroll_vunroll_x_in_c1_eni25_18_tpl_15_mem_iq[31:0];

    // redist14_sync_together48_aunroll_vunroll_x_in_c1_eni25_18_tpl_15_outputreg0(DELAY,190)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_sync_together48_aunroll_vunroll_x_in_c1_eni25_18_tpl_15_outputreg0_q <= '0;
        end
        else
        begin
            redist14_sync_together48_aunroll_vunroll_x_in_c1_eni25_18_tpl_15_outputreg0_q <= $unsigned(redist14_sync_together48_aunroll_vunroll_x_in_c1_eni25_18_tpl_15_mem_q);
        end
    end

    // redist13_sync_together48_aunroll_vunroll_x_in_c1_eni25_17_tpl_12_notEnable(LOGICAL,186)
    assign redist13_sync_together48_aunroll_vunroll_x_in_c1_eni25_17_tpl_12_notEnable_q = $unsigned(~ (VCC_q));

    // redist13_sync_together48_aunroll_vunroll_x_in_c1_eni25_17_tpl_12_nor(LOGICAL,187)
    assign redist13_sync_together48_aunroll_vunroll_x_in_c1_eni25_17_tpl_12_nor_q = ~ (redist13_sync_together48_aunroll_vunroll_x_in_c1_eni25_17_tpl_12_notEnable_q | redist13_sync_together48_aunroll_vunroll_x_in_c1_eni25_17_tpl_12_sticky_ena_q);

    // redist13_sync_together48_aunroll_vunroll_x_in_c1_eni25_17_tpl_12_mem_last(CONSTANT,183)
    assign redist13_sync_together48_aunroll_vunroll_x_in_c1_eni25_17_tpl_12_mem_last_q = $unsigned(5'b01000);

    // redist13_sync_together48_aunroll_vunroll_x_in_c1_eni25_17_tpl_12_cmp(LOGICAL,184)
    assign redist13_sync_together48_aunroll_vunroll_x_in_c1_eni25_17_tpl_12_cmp_b = {1'b0, redist13_sync_together48_aunroll_vunroll_x_in_c1_eni25_17_tpl_12_rdcnt_q};
    assign redist13_sync_together48_aunroll_vunroll_x_in_c1_eni25_17_tpl_12_cmp_q = $unsigned(redist13_sync_together48_aunroll_vunroll_x_in_c1_eni25_17_tpl_12_mem_last_q == redist13_sync_together48_aunroll_vunroll_x_in_c1_eni25_17_tpl_12_cmp_b ? 1'b1 : 1'b0);

    // redist13_sync_together48_aunroll_vunroll_x_in_c1_eni25_17_tpl_12_cmpReg(REG,185)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_sync_together48_aunroll_vunroll_x_in_c1_eni25_17_tpl_12_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist13_sync_together48_aunroll_vunroll_x_in_c1_eni25_17_tpl_12_cmpReg_q <= $unsigned(redist13_sync_together48_aunroll_vunroll_x_in_c1_eni25_17_tpl_12_cmp_q);
        end
    end

    // redist13_sync_together48_aunroll_vunroll_x_in_c1_eni25_17_tpl_12_sticky_ena(REG,188)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_sync_together48_aunroll_vunroll_x_in_c1_eni25_17_tpl_12_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist13_sync_together48_aunroll_vunroll_x_in_c1_eni25_17_tpl_12_nor_q == 1'b1)
        begin
            redist13_sync_together48_aunroll_vunroll_x_in_c1_eni25_17_tpl_12_sticky_ena_q <= $unsigned(redist13_sync_together48_aunroll_vunroll_x_in_c1_eni25_17_tpl_12_cmpReg_q);
        end
    end

    // redist13_sync_together48_aunroll_vunroll_x_in_c1_eni25_17_tpl_12_enaAnd(LOGICAL,189)
    assign redist13_sync_together48_aunroll_vunroll_x_in_c1_eni25_17_tpl_12_enaAnd_q = redist13_sync_together48_aunroll_vunroll_x_in_c1_eni25_17_tpl_12_sticky_ena_q & VCC_q;

    // redist13_sync_together48_aunroll_vunroll_x_in_c1_eni25_17_tpl_12_rdcnt(COUNTER,181)
    // low=0, high=9, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_sync_together48_aunroll_vunroll_x_in_c1_eni25_17_tpl_12_rdcnt_i <= 4'd0;
            redist13_sync_together48_aunroll_vunroll_x_in_c1_eni25_17_tpl_12_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist13_sync_together48_aunroll_vunroll_x_in_c1_eni25_17_tpl_12_rdcnt_i == 4'd8)
            begin
                redist13_sync_together48_aunroll_vunroll_x_in_c1_eni25_17_tpl_12_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist13_sync_together48_aunroll_vunroll_x_in_c1_eni25_17_tpl_12_rdcnt_eq <= 1'b0;
            end
            if (redist13_sync_together48_aunroll_vunroll_x_in_c1_eni25_17_tpl_12_rdcnt_eq == 1'b1)
            begin
                redist13_sync_together48_aunroll_vunroll_x_in_c1_eni25_17_tpl_12_rdcnt_i <= $unsigned(redist13_sync_together48_aunroll_vunroll_x_in_c1_eni25_17_tpl_12_rdcnt_i) + $unsigned(4'd7);
            end
            else
            begin
                redist13_sync_together48_aunroll_vunroll_x_in_c1_eni25_17_tpl_12_rdcnt_i <= $unsigned(redist13_sync_together48_aunroll_vunroll_x_in_c1_eni25_17_tpl_12_rdcnt_i) + $unsigned(4'd1);
            end
        end
    end
    assign redist13_sync_together48_aunroll_vunroll_x_in_c1_eni25_17_tpl_12_rdcnt_q = redist13_sync_together48_aunroll_vunroll_x_in_c1_eni25_17_tpl_12_rdcnt_i[3:0];

    // redist13_sync_together48_aunroll_vunroll_x_in_c1_eni25_17_tpl_12_wraddr(REG,182)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_sync_together48_aunroll_vunroll_x_in_c1_eni25_17_tpl_12_wraddr_q <= $unsigned(4'b1001);
        end
        else
        begin
            redist13_sync_together48_aunroll_vunroll_x_in_c1_eni25_17_tpl_12_wraddr_q <= $unsigned(redist13_sync_together48_aunroll_vunroll_x_in_c1_eni25_17_tpl_12_rdcnt_q);
        end
    end

    // redist13_sync_together48_aunroll_vunroll_x_in_c1_eni25_17_tpl_12_mem(DUALMEM,180)
    assign redist13_sync_together48_aunroll_vunroll_x_in_c1_eni25_17_tpl_12_mem_ia = $unsigned(in_c1_eni25_17_tpl);
    assign redist13_sync_together48_aunroll_vunroll_x_in_c1_eni25_17_tpl_12_mem_aa = redist13_sync_together48_aunroll_vunroll_x_in_c1_eni25_17_tpl_12_wraddr_q;
    assign redist13_sync_together48_aunroll_vunroll_x_in_c1_eni25_17_tpl_12_mem_ab = redist13_sync_together48_aunroll_vunroll_x_in_c1_eni25_17_tpl_12_rdcnt_q;
    assign redist13_sync_together48_aunroll_vunroll_x_in_c1_eni25_17_tpl_12_mem_reset0 = ~ (resetn);
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
    ) redist13_sync_together48_aunroll_vunroll_x_in_c1_eni25_17_tpl_12_mem_dmem (
        .clocken1(redist13_sync_together48_aunroll_vunroll_x_in_c1_eni25_17_tpl_12_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist13_sync_together48_aunroll_vunroll_x_in_c1_eni25_17_tpl_12_mem_reset0),
        .clock1(clock),
        .address_a(redist13_sync_together48_aunroll_vunroll_x_in_c1_eni25_17_tpl_12_mem_aa),
        .data_a(redist13_sync_together48_aunroll_vunroll_x_in_c1_eni25_17_tpl_12_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist13_sync_together48_aunroll_vunroll_x_in_c1_eni25_17_tpl_12_mem_ab),
        .q_b(redist13_sync_together48_aunroll_vunroll_x_in_c1_eni25_17_tpl_12_mem_iq),
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
    assign redist13_sync_together48_aunroll_vunroll_x_in_c1_eni25_17_tpl_12_mem_q = redist13_sync_together48_aunroll_vunroll_x_in_c1_eni25_17_tpl_12_mem_iq[31:0];

    // redist13_sync_together48_aunroll_vunroll_x_in_c1_eni25_17_tpl_12_outputreg0(DELAY,179)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_sync_together48_aunroll_vunroll_x_in_c1_eni25_17_tpl_12_outputreg0_q <= '0;
        end
        else
        begin
            redist13_sync_together48_aunroll_vunroll_x_in_c1_eni25_17_tpl_12_outputreg0_q <= $unsigned(redist13_sync_together48_aunroll_vunroll_x_in_c1_eni25_17_tpl_12_mem_q);
        end
    end

    // redist12_sync_together48_aunroll_vunroll_x_in_c1_eni25_16_tpl_9_notEnable(LOGICAL,175)
    assign redist12_sync_together48_aunroll_vunroll_x_in_c1_eni25_16_tpl_9_notEnable_q = $unsigned(~ (VCC_q));

    // redist12_sync_together48_aunroll_vunroll_x_in_c1_eni25_16_tpl_9_nor(LOGICAL,176)
    assign redist12_sync_together48_aunroll_vunroll_x_in_c1_eni25_16_tpl_9_nor_q = ~ (redist12_sync_together48_aunroll_vunroll_x_in_c1_eni25_16_tpl_9_notEnable_q | redist12_sync_together48_aunroll_vunroll_x_in_c1_eni25_16_tpl_9_sticky_ena_q);

    // redist12_sync_together48_aunroll_vunroll_x_in_c1_eni25_16_tpl_9_mem_last(CONSTANT,172)
    assign redist12_sync_together48_aunroll_vunroll_x_in_c1_eni25_16_tpl_9_mem_last_q = $unsigned(4'b0101);

    // redist12_sync_together48_aunroll_vunroll_x_in_c1_eni25_16_tpl_9_cmp(LOGICAL,173)
    assign redist12_sync_together48_aunroll_vunroll_x_in_c1_eni25_16_tpl_9_cmp_b = {1'b0, redist12_sync_together48_aunroll_vunroll_x_in_c1_eni25_16_tpl_9_rdcnt_q};
    assign redist12_sync_together48_aunroll_vunroll_x_in_c1_eni25_16_tpl_9_cmp_q = $unsigned(redist12_sync_together48_aunroll_vunroll_x_in_c1_eni25_16_tpl_9_mem_last_q == redist12_sync_together48_aunroll_vunroll_x_in_c1_eni25_16_tpl_9_cmp_b ? 1'b1 : 1'b0);

    // redist12_sync_together48_aunroll_vunroll_x_in_c1_eni25_16_tpl_9_cmpReg(REG,174)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_sync_together48_aunroll_vunroll_x_in_c1_eni25_16_tpl_9_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist12_sync_together48_aunroll_vunroll_x_in_c1_eni25_16_tpl_9_cmpReg_q <= $unsigned(redist12_sync_together48_aunroll_vunroll_x_in_c1_eni25_16_tpl_9_cmp_q);
        end
    end

    // redist12_sync_together48_aunroll_vunroll_x_in_c1_eni25_16_tpl_9_sticky_ena(REG,177)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_sync_together48_aunroll_vunroll_x_in_c1_eni25_16_tpl_9_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist12_sync_together48_aunroll_vunroll_x_in_c1_eni25_16_tpl_9_nor_q == 1'b1)
        begin
            redist12_sync_together48_aunroll_vunroll_x_in_c1_eni25_16_tpl_9_sticky_ena_q <= $unsigned(redist12_sync_together48_aunroll_vunroll_x_in_c1_eni25_16_tpl_9_cmpReg_q);
        end
    end

    // redist12_sync_together48_aunroll_vunroll_x_in_c1_eni25_16_tpl_9_enaAnd(LOGICAL,178)
    assign redist12_sync_together48_aunroll_vunroll_x_in_c1_eni25_16_tpl_9_enaAnd_q = redist12_sync_together48_aunroll_vunroll_x_in_c1_eni25_16_tpl_9_sticky_ena_q & VCC_q;

    // redist12_sync_together48_aunroll_vunroll_x_in_c1_eni25_16_tpl_9_rdcnt(COUNTER,170)
    // low=0, high=6, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_sync_together48_aunroll_vunroll_x_in_c1_eni25_16_tpl_9_rdcnt_i <= 3'd0;
            redist12_sync_together48_aunroll_vunroll_x_in_c1_eni25_16_tpl_9_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist12_sync_together48_aunroll_vunroll_x_in_c1_eni25_16_tpl_9_rdcnt_i == 3'd5)
            begin
                redist12_sync_together48_aunroll_vunroll_x_in_c1_eni25_16_tpl_9_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist12_sync_together48_aunroll_vunroll_x_in_c1_eni25_16_tpl_9_rdcnt_eq <= 1'b0;
            end
            if (redist12_sync_together48_aunroll_vunroll_x_in_c1_eni25_16_tpl_9_rdcnt_eq == 1'b1)
            begin
                redist12_sync_together48_aunroll_vunroll_x_in_c1_eni25_16_tpl_9_rdcnt_i <= $unsigned(redist12_sync_together48_aunroll_vunroll_x_in_c1_eni25_16_tpl_9_rdcnt_i) + $unsigned(3'd2);
            end
            else
            begin
                redist12_sync_together48_aunroll_vunroll_x_in_c1_eni25_16_tpl_9_rdcnt_i <= $unsigned(redist12_sync_together48_aunroll_vunroll_x_in_c1_eni25_16_tpl_9_rdcnt_i) + $unsigned(3'd1);
            end
        end
    end
    assign redist12_sync_together48_aunroll_vunroll_x_in_c1_eni25_16_tpl_9_rdcnt_q = redist12_sync_together48_aunroll_vunroll_x_in_c1_eni25_16_tpl_9_rdcnt_i[2:0];

    // redist12_sync_together48_aunroll_vunroll_x_in_c1_eni25_16_tpl_9_wraddr(REG,171)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_sync_together48_aunroll_vunroll_x_in_c1_eni25_16_tpl_9_wraddr_q <= $unsigned(3'b110);
        end
        else
        begin
            redist12_sync_together48_aunroll_vunroll_x_in_c1_eni25_16_tpl_9_wraddr_q <= $unsigned(redist12_sync_together48_aunroll_vunroll_x_in_c1_eni25_16_tpl_9_rdcnt_q);
        end
    end

    // redist12_sync_together48_aunroll_vunroll_x_in_c1_eni25_16_tpl_9_mem(DUALMEM,169)
    assign redist12_sync_together48_aunroll_vunroll_x_in_c1_eni25_16_tpl_9_mem_ia = $unsigned(in_c1_eni25_16_tpl);
    assign redist12_sync_together48_aunroll_vunroll_x_in_c1_eni25_16_tpl_9_mem_aa = redist12_sync_together48_aunroll_vunroll_x_in_c1_eni25_16_tpl_9_wraddr_q;
    assign redist12_sync_together48_aunroll_vunroll_x_in_c1_eni25_16_tpl_9_mem_ab = redist12_sync_together48_aunroll_vunroll_x_in_c1_eni25_16_tpl_9_rdcnt_q;
    assign redist12_sync_together48_aunroll_vunroll_x_in_c1_eni25_16_tpl_9_mem_reset0 = ~ (resetn);
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
    ) redist12_sync_together48_aunroll_vunroll_x_in_c1_eni25_16_tpl_9_mem_dmem (
        .clocken1(redist12_sync_together48_aunroll_vunroll_x_in_c1_eni25_16_tpl_9_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist12_sync_together48_aunroll_vunroll_x_in_c1_eni25_16_tpl_9_mem_reset0),
        .clock1(clock),
        .address_a(redist12_sync_together48_aunroll_vunroll_x_in_c1_eni25_16_tpl_9_mem_aa),
        .data_a(redist12_sync_together48_aunroll_vunroll_x_in_c1_eni25_16_tpl_9_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist12_sync_together48_aunroll_vunroll_x_in_c1_eni25_16_tpl_9_mem_ab),
        .q_b(redist12_sync_together48_aunroll_vunroll_x_in_c1_eni25_16_tpl_9_mem_iq),
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
    assign redist12_sync_together48_aunroll_vunroll_x_in_c1_eni25_16_tpl_9_mem_q = redist12_sync_together48_aunroll_vunroll_x_in_c1_eni25_16_tpl_9_mem_iq[31:0];

    // redist12_sync_together48_aunroll_vunroll_x_in_c1_eni25_16_tpl_9_outputreg0(DELAY,168)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_sync_together48_aunroll_vunroll_x_in_c1_eni25_16_tpl_9_outputreg0_q <= '0;
        end
        else
        begin
            redist12_sync_together48_aunroll_vunroll_x_in_c1_eni25_16_tpl_9_outputreg0_q <= $unsigned(redist12_sync_together48_aunroll_vunroll_x_in_c1_eni25_16_tpl_9_mem_q);
        end
    end

    // redist11_sync_together48_aunroll_vunroll_x_in_c1_eni25_15_tpl_6_notEnable(LOGICAL,164)
    assign redist11_sync_together48_aunroll_vunroll_x_in_c1_eni25_15_tpl_6_notEnable_q = $unsigned(~ (VCC_q));

    // redist11_sync_together48_aunroll_vunroll_x_in_c1_eni25_15_tpl_6_nor(LOGICAL,165)
    assign redist11_sync_together48_aunroll_vunroll_x_in_c1_eni25_15_tpl_6_nor_q = ~ (redist11_sync_together48_aunroll_vunroll_x_in_c1_eni25_15_tpl_6_notEnable_q | redist11_sync_together48_aunroll_vunroll_x_in_c1_eni25_15_tpl_6_sticky_ena_q);

    // redist11_sync_together48_aunroll_vunroll_x_in_c1_eni25_15_tpl_6_mem_last(CONSTANT,161)
    assign redist11_sync_together48_aunroll_vunroll_x_in_c1_eni25_15_tpl_6_mem_last_q = $unsigned(3'b010);

    // redist11_sync_together48_aunroll_vunroll_x_in_c1_eni25_15_tpl_6_cmp(LOGICAL,162)
    assign redist11_sync_together48_aunroll_vunroll_x_in_c1_eni25_15_tpl_6_cmp_b = {1'b0, redist11_sync_together48_aunroll_vunroll_x_in_c1_eni25_15_tpl_6_rdcnt_q};
    assign redist11_sync_together48_aunroll_vunroll_x_in_c1_eni25_15_tpl_6_cmp_q = $unsigned(redist11_sync_together48_aunroll_vunroll_x_in_c1_eni25_15_tpl_6_mem_last_q == redist11_sync_together48_aunroll_vunroll_x_in_c1_eni25_15_tpl_6_cmp_b ? 1'b1 : 1'b0);

    // redist11_sync_together48_aunroll_vunroll_x_in_c1_eni25_15_tpl_6_cmpReg(REG,163)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_sync_together48_aunroll_vunroll_x_in_c1_eni25_15_tpl_6_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist11_sync_together48_aunroll_vunroll_x_in_c1_eni25_15_tpl_6_cmpReg_q <= $unsigned(redist11_sync_together48_aunroll_vunroll_x_in_c1_eni25_15_tpl_6_cmp_q);
        end
    end

    // redist11_sync_together48_aunroll_vunroll_x_in_c1_eni25_15_tpl_6_sticky_ena(REG,166)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_sync_together48_aunroll_vunroll_x_in_c1_eni25_15_tpl_6_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist11_sync_together48_aunroll_vunroll_x_in_c1_eni25_15_tpl_6_nor_q == 1'b1)
        begin
            redist11_sync_together48_aunroll_vunroll_x_in_c1_eni25_15_tpl_6_sticky_ena_q <= $unsigned(redist11_sync_together48_aunroll_vunroll_x_in_c1_eni25_15_tpl_6_cmpReg_q);
        end
    end

    // redist11_sync_together48_aunroll_vunroll_x_in_c1_eni25_15_tpl_6_enaAnd(LOGICAL,167)
    assign redist11_sync_together48_aunroll_vunroll_x_in_c1_eni25_15_tpl_6_enaAnd_q = redist11_sync_together48_aunroll_vunroll_x_in_c1_eni25_15_tpl_6_sticky_ena_q & VCC_q;

    // redist11_sync_together48_aunroll_vunroll_x_in_c1_eni25_15_tpl_6_rdcnt(COUNTER,159)
    // low=0, high=3, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_sync_together48_aunroll_vunroll_x_in_c1_eni25_15_tpl_6_rdcnt_i <= 2'd0;
        end
        else
        begin
            redist11_sync_together48_aunroll_vunroll_x_in_c1_eni25_15_tpl_6_rdcnt_i <= $unsigned(redist11_sync_together48_aunroll_vunroll_x_in_c1_eni25_15_tpl_6_rdcnt_i) + $unsigned(2'd1);
        end
    end
    assign redist11_sync_together48_aunroll_vunroll_x_in_c1_eni25_15_tpl_6_rdcnt_q = redist11_sync_together48_aunroll_vunroll_x_in_c1_eni25_15_tpl_6_rdcnt_i[1:0];

    // redist11_sync_together48_aunroll_vunroll_x_in_c1_eni25_15_tpl_6_wraddr(REG,160)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_sync_together48_aunroll_vunroll_x_in_c1_eni25_15_tpl_6_wraddr_q <= $unsigned(2'b11);
        end
        else
        begin
            redist11_sync_together48_aunroll_vunroll_x_in_c1_eni25_15_tpl_6_wraddr_q <= $unsigned(redist11_sync_together48_aunroll_vunroll_x_in_c1_eni25_15_tpl_6_rdcnt_q);
        end
    end

    // redist11_sync_together48_aunroll_vunroll_x_in_c1_eni25_15_tpl_6_mem(DUALMEM,158)
    assign redist11_sync_together48_aunroll_vunroll_x_in_c1_eni25_15_tpl_6_mem_ia = $unsigned(in_c1_eni25_15_tpl);
    assign redist11_sync_together48_aunroll_vunroll_x_in_c1_eni25_15_tpl_6_mem_aa = redist11_sync_together48_aunroll_vunroll_x_in_c1_eni25_15_tpl_6_wraddr_q;
    assign redist11_sync_together48_aunroll_vunroll_x_in_c1_eni25_15_tpl_6_mem_ab = redist11_sync_together48_aunroll_vunroll_x_in_c1_eni25_15_tpl_6_rdcnt_q;
    assign redist11_sync_together48_aunroll_vunroll_x_in_c1_eni25_15_tpl_6_mem_reset0 = ~ (resetn);
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
    ) redist11_sync_together48_aunroll_vunroll_x_in_c1_eni25_15_tpl_6_mem_dmem (
        .clocken1(redist11_sync_together48_aunroll_vunroll_x_in_c1_eni25_15_tpl_6_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist11_sync_together48_aunroll_vunroll_x_in_c1_eni25_15_tpl_6_mem_reset0),
        .clock1(clock),
        .address_a(redist11_sync_together48_aunroll_vunroll_x_in_c1_eni25_15_tpl_6_mem_aa),
        .data_a(redist11_sync_together48_aunroll_vunroll_x_in_c1_eni25_15_tpl_6_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist11_sync_together48_aunroll_vunroll_x_in_c1_eni25_15_tpl_6_mem_ab),
        .q_b(redist11_sync_together48_aunroll_vunroll_x_in_c1_eni25_15_tpl_6_mem_iq),
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
    assign redist11_sync_together48_aunroll_vunroll_x_in_c1_eni25_15_tpl_6_mem_q = redist11_sync_together48_aunroll_vunroll_x_in_c1_eni25_15_tpl_6_mem_iq[31:0];

    // redist11_sync_together48_aunroll_vunroll_x_in_c1_eni25_15_tpl_6_outputreg0(DELAY,157)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_sync_together48_aunroll_vunroll_x_in_c1_eni25_15_tpl_6_outputreg0_q <= '0;
        end
        else
        begin
            redist11_sync_together48_aunroll_vunroll_x_in_c1_eni25_15_tpl_6_outputreg0_q <= $unsigned(redist11_sync_together48_aunroll_vunroll_x_in_c1_eni25_15_tpl_6_mem_q);
        end
    end

    // redist10_sync_together48_aunroll_vunroll_x_in_c1_eni25_14_tpl_3(DELAY,123)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_sync_together48_aunroll_vunroll_x_in_c1_eni25_14_tpl_3_delay_0 <= '0;
            redist10_sync_together48_aunroll_vunroll_x_in_c1_eni25_14_tpl_3_q <= '0;
        end
        else
        begin
            redist10_sync_together48_aunroll_vunroll_x_in_c1_eni25_14_tpl_3_delay_0 <= $unsigned(in_c1_eni25_14_tpl);
            redist10_sync_together48_aunroll_vunroll_x_in_c1_eni25_14_tpl_3_q <= redist10_sync_together48_aunroll_vunroll_x_in_c1_eni25_14_tpl_3_delay_0;
        end
    end

    // redist10_sync_together48_aunroll_vunroll_x_in_c1_eni25_14_tpl_3_outputreg0(DELAY,156)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_sync_together48_aunroll_vunroll_x_in_c1_eni25_14_tpl_3_outputreg0_q <= '0;
        end
        else
        begin
            redist10_sync_together48_aunroll_vunroll_x_in_c1_eni25_14_tpl_3_outputreg0_q <= $unsigned(redist10_sync_together48_aunroll_vunroll_x_in_c1_eni25_14_tpl_3_q);
        end
    end

    // i_add88_conv2d1x115(BLACKBOX,24)@136
    // out out_primWireOut@139
    conv2d1x1_flt_i_sfc_logic_s_c1_in_for_co0000454ge26154g226150y05 thei_add88_conv2d1x115 (
        .in_0(in_c1_eni25_12_tpl),
        .in_1(in_c1_eni25_13_tpl),
        .out_primWireOut(i_add88_conv2d1x115_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // i_add88_1_conv2d1x116(BLACKBOX,15)@139
    // out out_primWireOut@142
    conv2d1x1_flt_i_sfc_logic_s_c1_in_for_co0000454ge26154g226150y05 thei_add88_1_conv2d1x116 (
        .in_0(i_add88_conv2d1x115_out_primWireOut),
        .in_1(redist10_sync_together48_aunroll_vunroll_x_in_c1_eni25_14_tpl_3_outputreg0_q),
        .out_primWireOut(i_add88_1_conv2d1x116_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // i_add88_2_conv2d1x117(BLACKBOX,16)@142
    // out out_primWireOut@145
    conv2d1x1_flt_i_sfc_logic_s_c1_in_for_co0000454ge26154g226150y05 thei_add88_2_conv2d1x117 (
        .in_0(i_add88_1_conv2d1x116_out_primWireOut),
        .in_1(redist11_sync_together48_aunroll_vunroll_x_in_c1_eni25_15_tpl_6_outputreg0_q),
        .out_primWireOut(i_add88_2_conv2d1x117_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // i_add88_3_conv2d1x118(BLACKBOX,17)@145
    // out out_primWireOut@148
    conv2d1x1_flt_i_sfc_logic_s_c1_in_for_co0000454ge26154g226150y05 thei_add88_3_conv2d1x118 (
        .in_0(i_add88_2_conv2d1x117_out_primWireOut),
        .in_1(redist12_sync_together48_aunroll_vunroll_x_in_c1_eni25_16_tpl_9_outputreg0_q),
        .out_primWireOut(i_add88_3_conv2d1x118_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // i_add88_4_conv2d1x119(BLACKBOX,18)@148
    // out out_primWireOut@151
    conv2d1x1_flt_i_sfc_logic_s_c1_in_for_co0000454ge26154g226150y05 thei_add88_4_conv2d1x119 (
        .in_0(i_add88_3_conv2d1x118_out_primWireOut),
        .in_1(redist13_sync_together48_aunroll_vunroll_x_in_c1_eni25_17_tpl_12_outputreg0_q),
        .out_primWireOut(i_add88_4_conv2d1x119_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // i_add88_5_conv2d1x120(BLACKBOX,19)@151
    // out out_primWireOut@154
    conv2d1x1_flt_i_sfc_logic_s_c1_in_for_co0000454ge26154g226150y05 thei_add88_5_conv2d1x120 (
        .in_0(i_add88_4_conv2d1x119_out_primWireOut),
        .in_1(redist14_sync_together48_aunroll_vunroll_x_in_c1_eni25_18_tpl_15_outputreg0_q),
        .out_primWireOut(i_add88_5_conv2d1x120_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // i_add88_6_conv2d1x121(BLACKBOX,20)@154
    // out out_primWireOut@157
    conv2d1x1_flt_i_sfc_logic_s_c1_in_for_co0000454ge26154g226150y05 thei_add88_6_conv2d1x121 (
        .in_0(i_add88_5_conv2d1x120_out_primWireOut),
        .in_1(redist15_sync_together48_aunroll_vunroll_x_in_c1_eni25_19_tpl_18_outputreg0_q),
        .out_primWireOut(i_add88_6_conv2d1x121_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // i_add88_7_conv2d1x122(BLACKBOX,21)@157
    // out out_primWireOut@160
    conv2d1x1_flt_i_sfc_logic_s_c1_in_for_co0000454ge26154g226150y05 thei_add88_7_conv2d1x122 (
        .in_0(i_add88_6_conv2d1x121_out_primWireOut),
        .in_1(redist16_sync_together48_aunroll_vunroll_x_in_c1_eni25_20_tpl_21_outputreg0_q),
        .out_primWireOut(i_add88_7_conv2d1x122_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // i_add88_8_conv2d1x123(BLACKBOX,22)@160
    // out out_primWireOut@163
    conv2d1x1_flt_i_sfc_logic_s_c1_in_for_co0000454ge26154g226150y05 thei_add88_8_conv2d1x123 (
        .in_0(i_add88_7_conv2d1x122_out_primWireOut),
        .in_1(redist17_sync_together48_aunroll_vunroll_x_in_c1_eni25_21_tpl_24_outputreg0_q),
        .out_primWireOut(i_add88_8_conv2d1x123_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // i_add88_9_conv2d1x124(BLACKBOX,23)@163
    // out out_primWireOut@166
    conv2d1x1_flt_i_sfc_logic_s_c1_in_for_co0000454ge26154g226150y05 thei_add88_9_conv2d1x124 (
        .in_0(i_add88_8_conv2d1x123_out_primWireOut),
        .in_1(redist18_sync_together48_aunroll_vunroll_x_in_c1_eni25_22_tpl_27_outputreg0_q),
        .out_primWireOut(i_add88_9_conv2d1x124_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // i_add88_10_conv2d1x125(BLACKBOX,9)@166
    // out out_primWireOut@169
    conv2d1x1_flt_i_sfc_logic_s_c1_in_for_co0000454ge26154g226150y05 thei_add88_10_conv2d1x125 (
        .in_0(i_add88_9_conv2d1x124_out_primWireOut),
        .in_1(redist19_sync_together48_aunroll_vunroll_x_in_c1_eni25_23_tpl_30_outputreg0_q),
        .out_primWireOut(i_add88_10_conv2d1x125_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // i_add88_11_conv2d1x126(BLACKBOX,10)@169
    // out out_primWireOut@172
    conv2d1x1_flt_i_sfc_logic_s_c1_in_for_co0000454ge26154g226150y05 thei_add88_11_conv2d1x126 (
        .in_0(i_add88_10_conv2d1x125_out_primWireOut),
        .in_1(redist20_sync_together48_aunroll_vunroll_x_in_c1_eni25_24_tpl_33_outputreg0_q),
        .out_primWireOut(i_add88_11_conv2d1x126_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // i_add88_12_conv2d1x127(BLACKBOX,11)@172
    // out out_primWireOut@175
    conv2d1x1_flt_i_sfc_logic_s_c1_in_for_co0000454ge26154g226150y05 thei_add88_12_conv2d1x127 (
        .in_0(i_add88_11_conv2d1x126_out_primWireOut),
        .in_1(redist21_sync_together48_aunroll_vunroll_x_in_c1_eni25_25_tpl_36_outputreg0_q),
        .out_primWireOut(i_add88_12_conv2d1x127_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // i_add88_13_conv2d1x128(BLACKBOX,12)@175
    // out out_primWireOut@178
    conv2d1x1_flt_i_sfc_logic_s_c1_in_for_co0000454ge26154g226150y05 thei_add88_13_conv2d1x128 (
        .in_0(i_add88_12_conv2d1x127_out_primWireOut),
        .in_1(redist25_i_select29_conv2d1x113_q_36_mem_q),
        .out_primWireOut(i_add88_13_conv2d1x128_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // i_add88_14_conv2d1x129(BLACKBOX,13)@178
    // out out_primWireOut@181
    conv2d1x1_flt_i_sfc_logic_s_c1_in_for_co0000454ge26154g226150y05 thei_add88_14_conv2d1x129 (
        .in_0(i_add88_13_conv2d1x128_out_primWireOut),
        .in_1(redist26_i_select26_conv2d1x110_q_39_mem_q),
        .out_primWireOut(i_add88_14_conv2d1x129_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // i_add88_15_conv2d1x130(BLACKBOX,14)@181
    // out out_primWireOut@184
    conv2d1x1_flt_i_sfc_logic_s_c1_in_for_co0000454ge26154g226150y05 thei_add88_15_conv2d1x130 (
        .in_0(i_add88_14_conv2d1x129_out_primWireOut),
        .in_1(redist27_i_select23_conv2d1x17_q_41_mem_q),
        .out_primWireOut(i_add88_15_conv2d1x130_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // redist30_i_add88_15_conv2d1x130_out_primWireOut_1(DELAY,143)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist30_i_add88_15_conv2d1x130_out_primWireOut_1_q <= '0;
        end
        else
        begin
            redist30_i_add88_15_conv2d1x130_out_primWireOut_1_q <= $unsigned(i_add88_15_conv2d1x130_out_primWireOut);
        end
    end

    // c_float_0_000000e_0040(FLOATCONSTANT,2)
    assign c_float_0_000000e_0040_q = $unsigned(32'b00000000000000000000000000000000);

    // frac_y_uid64_i_cmp92_conv2d1x131(BITSELECT,63)@184
    assign frac_y_uid64_i_cmp92_conv2d1x131_b = i_add88_15_conv2d1x130_out_primWireOut[22:0];

    // cstZeroWF_uid44_i_cmp92_conv2d1x131(CONSTANT,43)
    assign cstZeroWF_uid44_i_cmp92_conv2d1x131_q = $unsigned(23'b00000000000000000000000);

    // fracXIsZero_uid67_i_cmp92_conv2d1x131(LOGICAL,66)@184
    assign fracXIsZero_uid67_i_cmp92_conv2d1x131_q = $unsigned(cstZeroWF_uid44_i_cmp92_conv2d1x131_q == frac_y_uid64_i_cmp92_conv2d1x131_b ? 1'b1 : 1'b0);

    // cstAllZWE_uid45_i_cmp92_conv2d1x131(CONSTANT,44)
    assign cstAllZWE_uid45_i_cmp92_conv2d1x131_q = $unsigned(8'b00000000);

    // exp_y_uid63_i_cmp92_conv2d1x131(BITSELECT,62)@184
    assign exp_y_uid63_i_cmp92_conv2d1x131_b = i_add88_15_conv2d1x130_out_primWireOut[30:23];

    // expXIsZero_uid65_i_cmp92_conv2d1x131(LOGICAL,64)@184
    assign expXIsZero_uid65_i_cmp92_conv2d1x131_q = $unsigned(exp_y_uid63_i_cmp92_conv2d1x131_b == cstAllZWE_uid45_i_cmp92_conv2d1x131_q ? 1'b1 : 1'b0);

    // excZ_y_uid69_i_cmp92_conv2d1x131(LOGICAL,68)@184
    assign excZ_y_uid69_i_cmp92_conv2d1x131_q = expXIsZero_uid65_i_cmp92_conv2d1x131_q & fracXIsZero_uid67_i_cmp92_conv2d1x131_q;

    // invExcYZ_uid99_i_cmp92_conv2d1x131(LOGICAL,98)@184
    assign invExcYZ_uid99_i_cmp92_conv2d1x131_q = ~ (excZ_y_uid69_i_cmp92_conv2d1x131_q);

    // frac_x_uid47_i_cmp92_conv2d1x131(BITSELECT,46)@184
    assign frac_x_uid47_i_cmp92_conv2d1x131_b = c_float_0_000000e_0040_q[22:0];

    // fracXIsZero_uid50_i_cmp92_conv2d1x131(LOGICAL,49)@184
    assign fracXIsZero_uid50_i_cmp92_conv2d1x131_q = $unsigned(cstZeroWF_uid44_i_cmp92_conv2d1x131_q == frac_x_uid47_i_cmp92_conv2d1x131_b ? 1'b1 : 1'b0);

    // exp_x_uid46_i_cmp92_conv2d1x131(BITSELECT,45)@184
    assign exp_x_uid46_i_cmp92_conv2d1x131_b = c_float_0_000000e_0040_q[30:23];

    // expXIsZero_uid48_i_cmp92_conv2d1x131(LOGICAL,47)@184
    assign expXIsZero_uid48_i_cmp92_conv2d1x131_q = $unsigned(exp_x_uid46_i_cmp92_conv2d1x131_b == cstAllZWE_uid45_i_cmp92_conv2d1x131_q ? 1'b1 : 1'b0);

    // excZ_x_uid52_i_cmp92_conv2d1x131(LOGICAL,51)@184
    assign excZ_x_uid52_i_cmp92_conv2d1x131_q = expXIsZero_uid48_i_cmp92_conv2d1x131_q & fracXIsZero_uid50_i_cmp92_conv2d1x131_q;

    // invExcXZ_uid100_i_cmp92_conv2d1x131(LOGICAL,99)@184
    assign invExcXZ_uid100_i_cmp92_conv2d1x131_q = ~ (excZ_x_uid52_i_cmp92_conv2d1x131_q);

    // oneNonZero_uid101_i_cmp92_conv2d1x131(LOGICAL,100)@184
    assign oneNonZero_uid101_i_cmp92_conv2d1x131_q = invExcXZ_uid100_i_cmp92_conv2d1x131_q | invExcYZ_uid99_i_cmp92_conv2d1x131_q;

    // two_uid93_i_cmp92_conv2d1x131(CONSTANT,92)
    assign two_uid93_i_cmp92_conv2d1x131_q = $unsigned(2'b10);

    // signX_uid91_i_cmp92_conv2d1x131(BITSELECT,90)@184
    assign signX_uid91_i_cmp92_conv2d1x131_b = $unsigned(c_float_0_000000e_0040_q[31:31]);

    // signY_uid92_i_cmp92_conv2d1x131(BITSELECT,91)@184
    assign signY_uid92_i_cmp92_conv2d1x131_b = $unsigned(i_add88_15_conv2d1x130_out_primWireOut[31:31]);

    // concSXSY_uid94_i_cmp92_conv2d1x131(BITJOIN,93)@184
    assign concSXSY_uid94_i_cmp92_conv2d1x131_q = {signX_uid91_i_cmp92_conv2d1x131_b, signY_uid92_i_cmp92_conv2d1x131_b};

    // sxLTsy_uid95_i_cmp92_conv2d1x131(LOGICAL,94)@184
    assign sxLTsy_uid95_i_cmp92_conv2d1x131_q = $unsigned(concSXSY_uid94_i_cmp92_conv2d1x131_q == two_uid93_i_cmp92_conv2d1x131_q ? 1'b1 : 1'b0);

    // rc2_uid102_i_cmp92_conv2d1x131(LOGICAL,101)@184
    assign rc2_uid102_i_cmp92_conv2d1x131_q = sxLTsy_uid95_i_cmp92_conv2d1x131_q & oneNonZero_uid101_i_cmp92_conv2d1x131_q;

    // expFracX_uid82_i_cmp92_conv2d1x131(BITJOIN,81)@184
    assign expFracX_uid82_i_cmp92_conv2d1x131_q = {exp_x_uid46_i_cmp92_conv2d1x131_b, frac_x_uid47_i_cmp92_conv2d1x131_b};

    // expFracY_uid84_i_cmp92_conv2d1x131(BITJOIN,83)@184
    assign expFracY_uid84_i_cmp92_conv2d1x131_q = {exp_y_uid63_i_cmp92_conv2d1x131_b, frac_y_uid64_i_cmp92_conv2d1x131_b};

    // efxGTefy_uid86_i_cmp92_conv2d1x131(COMPARE,85)@184
    assign efxGTefy_uid86_i_cmp92_conv2d1x131_a = {2'b00, expFracY_uid84_i_cmp92_conv2d1x131_q};
    assign efxGTefy_uid86_i_cmp92_conv2d1x131_b = {2'b00, expFracX_uid82_i_cmp92_conv2d1x131_q};
    assign efxGTefy_uid86_i_cmp92_conv2d1x131_o = $unsigned(efxGTefy_uid86_i_cmp92_conv2d1x131_a) - $unsigned(efxGTefy_uid86_i_cmp92_conv2d1x131_b);
    assign efxGTefy_uid86_i_cmp92_conv2d1x131_c[0] = efxGTefy_uid86_i_cmp92_conv2d1x131_o[32];

    // efxLTefy_uid87_i_cmp92_conv2d1x131(COMPARE,86)@184
    assign efxLTefy_uid87_i_cmp92_conv2d1x131_a = {2'b00, expFracX_uid82_i_cmp92_conv2d1x131_q};
    assign efxLTefy_uid87_i_cmp92_conv2d1x131_b = {2'b00, expFracY_uid84_i_cmp92_conv2d1x131_q};
    assign efxLTefy_uid87_i_cmp92_conv2d1x131_o = $unsigned(efxLTefy_uid87_i_cmp92_conv2d1x131_a) - $unsigned(efxLTefy_uid87_i_cmp92_conv2d1x131_b);
    assign efxLTefy_uid87_i_cmp92_conv2d1x131_c[0] = efxLTefy_uid87_i_cmp92_conv2d1x131_o[32];

    // expFracCompMux_uid98_i_cmp92_conv2d1x131(MUX,97)@184
    assign expFracCompMux_uid98_i_cmp92_conv2d1x131_s = signX_uid91_i_cmp92_conv2d1x131_b;
    always @(expFracCompMux_uid98_i_cmp92_conv2d1x131_s or efxLTefy_uid87_i_cmp92_conv2d1x131_c or efxGTefy_uid86_i_cmp92_conv2d1x131_c)
    begin
        unique case (expFracCompMux_uid98_i_cmp92_conv2d1x131_s)
            1'b0 : expFracCompMux_uid98_i_cmp92_conv2d1x131_q = efxLTefy_uid87_i_cmp92_conv2d1x131_c;
            1'b1 : expFracCompMux_uid98_i_cmp92_conv2d1x131_q = efxGTefy_uid86_i_cmp92_conv2d1x131_c;
            default : expFracCompMux_uid98_i_cmp92_conv2d1x131_q = 1'b0;
        endcase
    end

    // xorSigns_uid96_i_cmp92_conv2d1x131(LOGICAL,95)@184
    assign xorSigns_uid96_i_cmp92_conv2d1x131_q = signX_uid91_i_cmp92_conv2d1x131_b ^ signY_uid92_i_cmp92_conv2d1x131_b;

    // sxEQsy_uid97_i_cmp92_conv2d1x131(LOGICAL,96)@184
    assign sxEQsy_uid97_i_cmp92_conv2d1x131_q = ~ (xorSigns_uid96_i_cmp92_conv2d1x131_q);

    // sxEQsyExpFracCompMux_uid103_i_cmp92_conv2d1x131(LOGICAL,102)@184
    assign sxEQsyExpFracCompMux_uid103_i_cmp92_conv2d1x131_q = sxEQsy_uid97_i_cmp92_conv2d1x131_q & expFracCompMux_uid98_i_cmp92_conv2d1x131_q;

    // r_uid104_i_cmp92_conv2d1x131(LOGICAL,103)@184 + 1
    assign r_uid104_i_cmp92_conv2d1x131_qi = sxEQsyExpFracCompMux_uid103_i_cmp92_conv2d1x131_q | rc2_uid102_i_cmp92_conv2d1x131_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    r_uid104_i_cmp92_conv2d1x131_delay ( .xin(r_uid104_i_cmp92_conv2d1x131_qi), .xout(r_uid104_i_cmp92_conv2d1x131_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // fracXIsNotZero_uid68_i_cmp92_conv2d1x131(LOGICAL,67)@184
    assign fracXIsNotZero_uid68_i_cmp92_conv2d1x131_q = ~ (fracXIsZero_uid67_i_cmp92_conv2d1x131_q);

    // cstAllOWE_uid43_i_cmp92_conv2d1x131(CONSTANT,42)
    assign cstAllOWE_uid43_i_cmp92_conv2d1x131_q = $unsigned(8'b11111111);

    // expXIsMax_uid66_i_cmp92_conv2d1x131(LOGICAL,65)@184
    assign expXIsMax_uid66_i_cmp92_conv2d1x131_q = $unsigned(exp_y_uid63_i_cmp92_conv2d1x131_b == cstAllOWE_uid43_i_cmp92_conv2d1x131_q ? 1'b1 : 1'b0);

    // excN_y_uid71_i_cmp92_conv2d1x131(LOGICAL,70)@184
    assign excN_y_uid71_i_cmp92_conv2d1x131_q = expXIsMax_uid66_i_cmp92_conv2d1x131_q & fracXIsNotZero_uid68_i_cmp92_conv2d1x131_q;

    // fracXIsNotZero_uid51_i_cmp92_conv2d1x131(LOGICAL,50)@184
    assign fracXIsNotZero_uid51_i_cmp92_conv2d1x131_q = ~ (fracXIsZero_uid50_i_cmp92_conv2d1x131_q);

    // expXIsMax_uid49_i_cmp92_conv2d1x131(LOGICAL,48)@184
    assign expXIsMax_uid49_i_cmp92_conv2d1x131_q = $unsigned(exp_x_uid46_i_cmp92_conv2d1x131_b == cstAllOWE_uid43_i_cmp92_conv2d1x131_q ? 1'b1 : 1'b0);

    // excN_x_uid54_i_cmp92_conv2d1x131(LOGICAL,53)@184
    assign excN_x_uid54_i_cmp92_conv2d1x131_q = expXIsMax_uid49_i_cmp92_conv2d1x131_q & fracXIsNotZero_uid51_i_cmp92_conv2d1x131_q;

    // oneIsNaN_uid77_i_cmp92_conv2d1x131(LOGICAL,76)@184 + 1
    assign oneIsNaN_uid77_i_cmp92_conv2d1x131_qi = excN_x_uid54_i_cmp92_conv2d1x131_q | excN_y_uid71_i_cmp92_conv2d1x131_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    oneIsNaN_uid77_i_cmp92_conv2d1x131_delay ( .xin(oneIsNaN_uid77_i_cmp92_conv2d1x131_qi), .xout(oneIsNaN_uid77_i_cmp92_conv2d1x131_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // rPostExc_uid105_i_cmp92_conv2d1x131(MUX,104)@185
    assign rPostExc_uid105_i_cmp92_conv2d1x131_s = oneIsNaN_uid77_i_cmp92_conv2d1x131_q;
    always @(rPostExc_uid105_i_cmp92_conv2d1x131_s or r_uid104_i_cmp92_conv2d1x131_q or GND_q)
    begin
        unique case (rPostExc_uid105_i_cmp92_conv2d1x131_s)
            1'b0 : rPostExc_uid105_i_cmp92_conv2d1x131_q = r_uid104_i_cmp92_conv2d1x131_q;
            1'b1 : rPostExc_uid105_i_cmp92_conv2d1x131_q = GND_q;
            default : rPostExc_uid105_i_cmp92_conv2d1x131_q = 1'b0;
        endcase
    end

    // i_narrow_sel_conv2d1x132(MUX,35)@185
    assign i_narrow_sel_conv2d1x132_s = rPostExc_uid105_i_cmp92_conv2d1x131_q;
    always @(i_narrow_sel_conv2d1x132_s or c_float_0_000000e_0040_q or redist30_i_add88_15_conv2d1x130_out_primWireOut_1_q)
    begin
        unique case (i_narrow_sel_conv2d1x132_s)
            1'b0 : i_narrow_sel_conv2d1x132_q = c_float_0_000000e_0040_q;
            1'b1 : i_narrow_sel_conv2d1x132_q = redist30_i_add88_15_conv2d1x130_out_primWireOut_1_q;
            default : i_narrow_sel_conv2d1x132_q = 32'b0;
        endcase
    end

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // sync_out_aunroll_x(GPOUT,40)@185
    assign out_c1_exi1_0_tpl = GND_q;
    assign out_c1_exi1_1_tpl = i_narrow_sel_conv2d1x132_q;
    assign out_o_valid = redist0_valid_fanout_reg0_q_45_q;
    assign out_unnamed_conv2d1x15 = GND_q;

endmodule
