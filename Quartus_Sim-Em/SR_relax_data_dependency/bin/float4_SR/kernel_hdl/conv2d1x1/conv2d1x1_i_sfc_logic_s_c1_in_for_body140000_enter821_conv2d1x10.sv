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

// SystemVerilog created from conv2d1x1_i_sfc_logic_s_c1_in_for_body140000_enter821_conv2d1x10
// SystemVerilog created on Tue May 23 20:43:36 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2d1x1_i_sfc_logic_s_c1_in_for_body140000_enter821_conv2d1x10 (
    output wire [0:0] out_c1_exi14_0_tpl,
    output wire [31:0] out_c1_exi14_1_tpl,
    output wire [31:0] out_c1_exi14_2_tpl,
    output wire [31:0] out_c1_exi14_3_tpl,
    output wire [31:0] out_c1_exi14_4_tpl,
    output wire [31:0] out_c1_exi14_5_tpl,
    output wire [31:0] out_c1_exi14_6_tpl,
    output wire [31:0] out_c1_exi14_7_tpl,
    output wire [31:0] out_c1_exi14_8_tpl,
    output wire [31:0] out_c1_exi14_9_tpl,
    output wire [31:0] out_c1_exi14_10_tpl,
    output wire [31:0] out_c1_exi14_11_tpl,
    output wire [31:0] out_c1_exi14_12_tpl,
    output wire [31:0] out_c1_exi14_13_tpl,
    output wire [31:0] out_c1_exi14_14_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_conv2d1x15,
    input wire [0:0] in_c1_eni23820_0_tpl,
    input wire [0:0] in_c1_eni23820_1_tpl,
    input wire [0:0] in_c1_eni23820_2_tpl,
    input wire [31:0] in_c1_eni23820_3_tpl,
    input wire [0:0] in_c1_eni23820_4_tpl,
    input wire [31:0] in_c1_eni23820_5_tpl,
    input wire [31:0] in_c1_eni23820_6_tpl,
    input wire [31:0] in_c1_eni23820_7_tpl,
    input wire [31:0] in_c1_eni23820_8_tpl,
    input wire [31:0] in_c1_eni23820_9_tpl,
    input wire [31:0] in_c1_eni23820_10_tpl,
    input wire [31:0] in_c1_eni23820_11_tpl,
    input wire [31:0] in_c1_eni23820_12_tpl,
    input wire [31:0] in_c1_eni23820_13_tpl,
    input wire [31:0] in_c1_eni23820_14_tpl,
    input wire [31:0] in_c1_eni23820_15_tpl,
    input wire [0:0] in_c1_eni23820_16_tpl,
    input wire [0:0] in_c1_eni23820_17_tpl,
    input wire [31:0] in_c1_eni23820_0_18_tpl,
    input wire [31:0] in_c1_eni23820_1_18_tpl,
    input wire [31:0] in_c1_eni23820_2_18_tpl,
    input wire [31:0] in_c1_eni23820_3_18_tpl,
    input wire [31:0] in_c1_eni23820_19_tpl,
    input wire [0:0] in_c1_eni23820_20_tpl,
    input wire [0:0] in_c1_eni23820_21_tpl,
    input wire [0:0] in_c1_eni23820_22_tpl,
    input wire [31:0] in_c1_eni23820_23_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [0:0] i_forked_and_and_conv2d1x17_qi;
    reg [0:0] i_forked_and_and_conv2d1x17_q;
    wire [0:0] i_keep_going_or_or_conv2d1x121_qi;
    reg [0:0] i_keep_going_or_or_conv2d1x121_q;
    (* dont_merge *) reg [0:0] i_llvm_fpga_fanout_i1_c1_ene20841_fanout_adaptor_conv2d1x14_q;
    (* dont_merge *) reg [0:0] i_llvm_fpga_fanout_i1_c1_ene21842_fanout_adaptor_conv2d1x15_q;
    (* dont_merge *) reg [0:0] i_llvm_fpga_fanout_i1_c1_ene22843_fanout_adaptor_conv2d1x16_q;
    (* dont_merge *) reg [0:0] i_llvm_fpga_fanout_i1_c1_ene4825_fanout_adaptor856_conv2d1x12_q;
    (* dont_merge *) reg [0:0] i_llvm_fpga_fanout_i1_c1_ene4825_fanout_adaptor_conv2d1x13_q;
    (* dont_merge *) reg [0:0] i_llvm_fpga_fanout_i1_forked_and_and_fanout_adaptor_conv2d1x18_q;
    (* dont_merge *) reg [0:0] i_llvm_fpga_fanout_i1_keep_going_or_or_fanout_adaptor_conv2d1x122_q;
    wire [31:0] i_llvm_fpga_pop_coalesce_f32_pop79_conv2d1x120_out_data_out;
    wire [0:0] i_llvm_fpga_pop_coalesce_f32_pop79_conv2d1x120_out_feedback_stall_out_79;
    wire [31:0] i_llvm_fpga_pop_coalesce_f32_pop80_conv2d1x119_out_data_out;
    wire [0:0] i_llvm_fpga_pop_coalesce_f32_pop80_conv2d1x119_out_feedback_stall_out_80;
    wire [31:0] i_llvm_fpga_pop_coalesce_f32_pop81_conv2d1x118_out_data_out;
    wire [0:0] i_llvm_fpga_pop_coalesce_f32_pop81_conv2d1x118_out_feedback_stall_out_81;
    wire [31:0] i_llvm_fpga_pop_coalesce_f32_pop82_conv2d1x117_out_data_out;
    wire [0:0] i_llvm_fpga_pop_coalesce_f32_pop82_conv2d1x117_out_feedback_stall_out_82;
    wire [31:0] i_llvm_fpga_pop_coalesce_f32_pop83_conv2d1x116_out_data_out;
    wire [0:0] i_llvm_fpga_pop_coalesce_f32_pop83_conv2d1x116_out_feedback_stall_out_83;
    wire [31:0] i_llvm_fpga_pop_coalesce_f32_pop84_conv2d1x115_out_data_out;
    wire [0:0] i_llvm_fpga_pop_coalesce_f32_pop84_conv2d1x115_out_feedback_stall_out_84;
    wire [31:0] i_llvm_fpga_pop_coalesce_f32_pop85_conv2d1x114_out_data_out;
    wire [0:0] i_llvm_fpga_pop_coalesce_f32_pop85_conv2d1x114_out_feedback_stall_out_85;
    wire [31:0] i_llvm_fpga_pop_coalesce_f32_pop86_conv2d1x113_out_data_out;
    wire [0:0] i_llvm_fpga_pop_coalesce_f32_pop86_conv2d1x113_out_feedback_stall_out_86;
    wire [31:0] i_llvm_fpga_pop_coalesce_f32_pop87_conv2d1x112_out_data_out;
    wire [0:0] i_llvm_fpga_pop_coalesce_f32_pop87_conv2d1x112_out_feedback_stall_out_87;
    wire [31:0] i_llvm_fpga_pop_coalesce_f32_pop88_conv2d1x111_out_data_out;
    wire [0:0] i_llvm_fpga_pop_coalesce_f32_pop88_conv2d1x111_out_feedback_stall_out_88;
    wire [31:0] i_llvm_fpga_pop_coalesce_f32_pop89_conv2d1x110_out_data_out;
    wire [0:0] i_llvm_fpga_pop_coalesce_f32_pop89_conv2d1x110_out_feedback_stall_out_89;
    wire [31:0] i_llvm_fpga_pop_coalesce_f32_pop90_conv2d1x19_out_data_out;
    wire [0:0] i_llvm_fpga_pop_coalesce_f32_pop90_conv2d1x19_out_feedback_stall_out_90;
    wire [31:0] i_llvm_fpga_pop_coalesce_f32_pop91_conv2d1x176_out_data_out;
    wire [0:0] i_llvm_fpga_pop_coalesce_f32_pop91_conv2d1x176_out_feedback_stall_out_91;
    wire [31:0] i_llvm_fpga_pop_f32_pop96_conv2d1x170_out_data_out;
    wire [0:0] i_llvm_fpga_pop_f32_pop96_conv2d1x170_out_feedback_stall_out_96;
    wire [31:0] i_llvm_fpga_pop_f32_spec_select32365_pop97_conv2d1x167_out_data_out;
    wire [0:0] i_llvm_fpga_pop_f32_spec_select32365_pop97_conv2d1x167_out_feedback_stall_out_97;
    wire [31:0] i_llvm_fpga_pop_f32_spec_select32468_pop98_conv2d1x164_out_data_out;
    wire [0:0] i_llvm_fpga_pop_f32_spec_select32468_pop98_conv2d1x164_out_feedback_stall_out_98;
    wire [31:0] i_llvm_fpga_pop_f32_spec_select32571_pop99_conv2d1x161_out_data_out;
    wire [0:0] i_llvm_fpga_pop_f32_spec_select32571_pop99_conv2d1x161_out_feedback_stall_out_99;
    wire [31:0] i_llvm_fpga_pop_f32_spec_select32674_pop100_conv2d1x158_out_data_out;
    wire [0:0] i_llvm_fpga_pop_f32_spec_select32674_pop100_conv2d1x158_out_feedback_stall_out_100;
    wire [31:0] i_llvm_fpga_pop_f32_spec_select32777_pop101_conv2d1x155_out_data_out;
    wire [0:0] i_llvm_fpga_pop_f32_spec_select32777_pop101_conv2d1x155_out_feedback_stall_out_101;
    wire [31:0] i_llvm_fpga_pop_f32_spec_select32880_pop102_conv2d1x152_out_data_out;
    wire [0:0] i_llvm_fpga_pop_f32_spec_select32880_pop102_conv2d1x152_out_feedback_stall_out_102;
    wire [31:0] i_llvm_fpga_pop_f32_spec_select32983_pop103_conv2d1x149_out_data_out;
    wire [0:0] i_llvm_fpga_pop_f32_spec_select32983_pop103_conv2d1x149_out_feedback_stall_out_103;
    wire [31:0] i_llvm_fpga_pop_f32_spec_select33086_pop104_conv2d1x146_out_data_out;
    wire [0:0] i_llvm_fpga_pop_f32_spec_select33086_pop104_conv2d1x146_out_feedback_stall_out_104;
    wire [31:0] i_llvm_fpga_pop_f32_spec_select33189_pop105_conv2d1x143_out_data_out;
    wire [0:0] i_llvm_fpga_pop_f32_spec_select33189_pop105_conv2d1x143_out_feedback_stall_out_105;
    wire [31:0] i_llvm_fpga_pop_f32_spec_select33292_pop106_conv2d1x140_out_data_out;
    wire [0:0] i_llvm_fpga_pop_f32_spec_select33292_pop106_conv2d1x140_out_feedback_stall_out_106;
    wire [31:0] i_llvm_fpga_pop_f32_spec_select33395_pop107_conv2d1x137_out_data_out;
    wire [0:0] i_llvm_fpga_pop_f32_spec_select33395_pop107_conv2d1x137_out_feedback_stall_out_107;
    wire [31:0] i_llvm_fpga_pop_f32_spec_select62_pop95_conv2d1x173_out_data_out;
    wire [0:0] i_llvm_fpga_pop_f32_spec_select62_pop95_conv2d1x173_out_feedback_stall_out_95;
    wire [31:0] i_llvm_fpga_push_f32_push79_conv2d1x136_out_feedback_out_79;
    wire [0:0] i_llvm_fpga_push_f32_push79_conv2d1x136_out_feedback_valid_out_79;
    wire [31:0] i_llvm_fpga_push_f32_push80_conv2d1x133_out_feedback_out_80;
    wire [0:0] i_llvm_fpga_push_f32_push80_conv2d1x133_out_feedback_valid_out_80;
    wire [31:0] i_llvm_fpga_push_f32_push81_conv2d1x132_out_feedback_out_81;
    wire [0:0] i_llvm_fpga_push_f32_push81_conv2d1x132_out_feedback_valid_out_81;
    wire [31:0] i_llvm_fpga_push_f32_push82_conv2d1x131_out_feedback_out_82;
    wire [0:0] i_llvm_fpga_push_f32_push82_conv2d1x131_out_feedback_valid_out_82;
    wire [31:0] i_llvm_fpga_push_f32_push83_conv2d1x130_out_feedback_out_83;
    wire [0:0] i_llvm_fpga_push_f32_push83_conv2d1x130_out_feedback_valid_out_83;
    wire [31:0] i_llvm_fpga_push_f32_push84_conv2d1x129_out_feedback_out_84;
    wire [0:0] i_llvm_fpga_push_f32_push84_conv2d1x129_out_feedback_valid_out_84;
    wire [31:0] i_llvm_fpga_push_f32_push85_conv2d1x128_out_feedback_out_85;
    wire [0:0] i_llvm_fpga_push_f32_push85_conv2d1x128_out_feedback_valid_out_85;
    wire [31:0] i_llvm_fpga_push_f32_push86_conv2d1x127_out_feedback_out_86;
    wire [0:0] i_llvm_fpga_push_f32_push86_conv2d1x127_out_feedback_valid_out_86;
    wire [31:0] i_llvm_fpga_push_f32_push87_conv2d1x126_out_feedback_out_87;
    wire [0:0] i_llvm_fpga_push_f32_push87_conv2d1x126_out_feedback_valid_out_87;
    wire [31:0] i_llvm_fpga_push_f32_push88_conv2d1x125_out_feedback_out_88;
    wire [0:0] i_llvm_fpga_push_f32_push88_conv2d1x125_out_feedback_valid_out_88;
    wire [31:0] i_llvm_fpga_push_f32_push89_conv2d1x124_out_feedback_out_89;
    wire [0:0] i_llvm_fpga_push_f32_push89_conv2d1x124_out_feedback_valid_out_89;
    wire [31:0] i_llvm_fpga_push_f32_push90_conv2d1x123_out_feedback_out_90;
    wire [0:0] i_llvm_fpga_push_f32_push90_conv2d1x123_out_feedback_valid_out_90;
    wire [31:0] i_llvm_fpga_push_f32_push91_conv2d1x177_out_feedback_out_91;
    wire [0:0] i_llvm_fpga_push_f32_push91_conv2d1x177_out_feedback_valid_out_91;
    wire [31:0] i_llvm_fpga_push_f32_push96_conv2d1x171_out_feedback_out_96;
    wire [0:0] i_llvm_fpga_push_f32_push96_conv2d1x171_out_feedback_valid_out_96;
    wire [31:0] i_llvm_fpga_push_f32_spec_select32365_push97_conv2d1x168_out_feedback_out_97;
    wire [0:0] i_llvm_fpga_push_f32_spec_select32365_push97_conv2d1x168_out_feedback_valid_out_97;
    wire [31:0] i_llvm_fpga_push_f32_spec_select32468_push98_conv2d1x165_out_feedback_out_98;
    wire [0:0] i_llvm_fpga_push_f32_spec_select32468_push98_conv2d1x165_out_feedback_valid_out_98;
    wire [31:0] i_llvm_fpga_push_f32_spec_select32571_push99_conv2d1x162_out_feedback_out_99;
    wire [0:0] i_llvm_fpga_push_f32_spec_select32571_push99_conv2d1x162_out_feedback_valid_out_99;
    wire [31:0] i_llvm_fpga_push_f32_spec_select32674_push100_conv2d1x159_out_feedback_out_100;
    wire [0:0] i_llvm_fpga_push_f32_spec_select32674_push100_conv2d1x159_out_feedback_valid_out_100;
    wire [31:0] i_llvm_fpga_push_f32_spec_select32777_push101_conv2d1x156_out_feedback_out_101;
    wire [0:0] i_llvm_fpga_push_f32_spec_select32777_push101_conv2d1x156_out_feedback_valid_out_101;
    wire [31:0] i_llvm_fpga_push_f32_spec_select32880_push102_conv2d1x153_out_feedback_out_102;
    wire [0:0] i_llvm_fpga_push_f32_spec_select32880_push102_conv2d1x153_out_feedback_valid_out_102;
    wire [31:0] i_llvm_fpga_push_f32_spec_select32983_push103_conv2d1x150_out_feedback_out_103;
    wire [0:0] i_llvm_fpga_push_f32_spec_select32983_push103_conv2d1x150_out_feedback_valid_out_103;
    wire [31:0] i_llvm_fpga_push_f32_spec_select33086_push104_conv2d1x147_out_feedback_out_104;
    wire [0:0] i_llvm_fpga_push_f32_spec_select33086_push104_conv2d1x147_out_feedback_valid_out_104;
    wire [31:0] i_llvm_fpga_push_f32_spec_select33189_push105_conv2d1x144_out_feedback_out_105;
    wire [0:0] i_llvm_fpga_push_f32_spec_select33189_push105_conv2d1x144_out_feedback_valid_out_105;
    wire [31:0] i_llvm_fpga_push_f32_spec_select33292_push106_conv2d1x141_out_feedback_out_106;
    wire [0:0] i_llvm_fpga_push_f32_spec_select33292_push106_conv2d1x141_out_feedback_valid_out_106;
    wire [31:0] i_llvm_fpga_push_f32_spec_select33395_push107_conv2d1x138_out_feedback_out_107;
    wire [0:0] i_llvm_fpga_push_f32_spec_select33395_push107_conv2d1x138_out_feedback_valid_out_107;
    wire [31:0] i_llvm_fpga_push_f32_spec_select62_push95_conv2d1x174_out_feedback_out_95;
    wire [0:0] i_llvm_fpga_push_f32_spec_select62_push95_conv2d1x174_out_feedback_valid_out_95;
    wire [31:0] i_mul64_conv2d1x135_out_primWireOut;
    wire [0:0] i_select32_conv2d1x139_s;
    reg [31:0] i_select32_conv2d1x139_q;
    wire [0:0] i_select35_conv2d1x142_s;
    reg [31:0] i_select35_conv2d1x142_q;
    wire [0:0] i_select38_conv2d1x145_s;
    reg [31:0] i_select38_conv2d1x145_q;
    wire [0:0] i_select41_conv2d1x148_s;
    reg [31:0] i_select41_conv2d1x148_q;
    wire [0:0] i_select44_conv2d1x151_s;
    reg [31:0] i_select44_conv2d1x151_q;
    wire [0:0] i_select47_conv2d1x154_s;
    reg [31:0] i_select47_conv2d1x154_q;
    wire [0:0] i_select50_conv2d1x157_s;
    reg [31:0] i_select50_conv2d1x157_q;
    wire [0:0] i_select53_conv2d1x160_s;
    reg [31:0] i_select53_conv2d1x160_q;
    wire [0:0] i_select56_conv2d1x163_s;
    reg [31:0] i_select56_conv2d1x163_q;
    wire [0:0] i_select59_conv2d1x166_s;
    reg [31:0] i_select59_conv2d1x166_q;
    wire [0:0] i_select62_conv2d1x169_s;
    reg [31:0] i_select62_conv2d1x169_q;
    wire [0:0] i_select65_conv2d1x172_s;
    reg [31:0] i_select65_conv2d1x172_q;
    wire [0:0] i_select68_conv2d1x175_s;
    reg [31:0] i_select68_conv2d1x175_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg0_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg1_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg2_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg3_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg4_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg5_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg6_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg7_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg8_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg9_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg10_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg11_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg12_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg13_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg14_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg15_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg16_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg17_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg18_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg19_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg20_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg21_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg22_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg23_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg24_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg25_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg26_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg27_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg28_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg29_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg30_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg31_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg32_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg33_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg34_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg35_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg36_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg37_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg38_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg39_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg40_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg41_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg42_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg43_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg44_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg45_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg46_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg47_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg48_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg49_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg50_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg51_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg52_q;
    reg [31:0] redist0_sync_together185_aunroll_vunroll_x_in_c1_eni23820_3_tpl_3_q;
    reg [31:0] redist0_sync_together185_aunroll_vunroll_x_in_c1_eni23820_3_tpl_3_delay_0;
    reg [0:0] redist1_sync_together185_aunroll_vunroll_x_in_c1_eni23820_4_tpl_2_q;
    reg [0:0] redist1_sync_together185_aunroll_vunroll_x_in_c1_eni23820_4_tpl_2_delay_0;
    reg [31:0] redist2_sync_together185_aunroll_vunroll_x_in_c1_eni23820_5_tpl_3_q;
    reg [31:0] redist2_sync_together185_aunroll_vunroll_x_in_c1_eni23820_5_tpl_3_delay_0;
    reg [31:0] redist3_sync_together185_aunroll_vunroll_x_in_c1_eni23820_6_tpl_3_q;
    reg [31:0] redist3_sync_together185_aunroll_vunroll_x_in_c1_eni23820_6_tpl_3_delay_0;
    reg [31:0] redist4_sync_together185_aunroll_vunroll_x_in_c1_eni23820_7_tpl_3_q;
    reg [31:0] redist4_sync_together185_aunroll_vunroll_x_in_c1_eni23820_7_tpl_3_delay_0;
    reg [31:0] redist5_sync_together185_aunroll_vunroll_x_in_c1_eni23820_8_tpl_3_q;
    reg [31:0] redist5_sync_together185_aunroll_vunroll_x_in_c1_eni23820_8_tpl_3_delay_0;
    reg [31:0] redist6_sync_together185_aunroll_vunroll_x_in_c1_eni23820_9_tpl_3_q;
    reg [31:0] redist6_sync_together185_aunroll_vunroll_x_in_c1_eni23820_9_tpl_3_delay_0;
    reg [31:0] redist7_sync_together185_aunroll_vunroll_x_in_c1_eni23820_10_tpl_3_q;
    reg [31:0] redist7_sync_together185_aunroll_vunroll_x_in_c1_eni23820_10_tpl_3_delay_0;
    reg [31:0] redist8_sync_together185_aunroll_vunroll_x_in_c1_eni23820_11_tpl_3_q;
    reg [31:0] redist8_sync_together185_aunroll_vunroll_x_in_c1_eni23820_11_tpl_3_delay_0;
    reg [31:0] redist9_sync_together185_aunroll_vunroll_x_in_c1_eni23820_12_tpl_3_q;
    reg [31:0] redist9_sync_together185_aunroll_vunroll_x_in_c1_eni23820_12_tpl_3_delay_0;
    reg [31:0] redist10_sync_together185_aunroll_vunroll_x_in_c1_eni23820_13_tpl_3_q;
    reg [31:0] redist10_sync_together185_aunroll_vunroll_x_in_c1_eni23820_13_tpl_3_delay_0;
    reg [31:0] redist11_sync_together185_aunroll_vunroll_x_in_c1_eni23820_14_tpl_3_q;
    reg [31:0] redist11_sync_together185_aunroll_vunroll_x_in_c1_eni23820_14_tpl_3_delay_0;
    reg [31:0] redist12_sync_together185_aunroll_vunroll_x_in_c1_eni23820_15_tpl_3_q;
    reg [31:0] redist12_sync_together185_aunroll_vunroll_x_in_c1_eni23820_15_tpl_3_delay_0;
    reg [0:0] redist13_sync_together185_aunroll_vunroll_x_in_c1_eni23820_20_tpl_2_q;
    reg [0:0] redist13_sync_together185_aunroll_vunroll_x_in_c1_eni23820_20_tpl_2_delay_0;
    reg [0:0] redist14_sync_together185_aunroll_vunroll_x_in_c1_eni23820_21_tpl_2_q;
    reg [0:0] redist14_sync_together185_aunroll_vunroll_x_in_c1_eni23820_21_tpl_2_delay_0;
    reg [0:0] redist15_sync_together185_aunroll_vunroll_x_in_c1_eni23820_22_tpl_2_q;
    reg [0:0] redist15_sync_together185_aunroll_vunroll_x_in_c1_eni23820_22_tpl_2_delay_0;
    reg [31:0] redist16_sync_together185_aunroll_vunroll_x_in_c1_eni23820_23_tpl_3_q;
    reg [31:0] redist16_sync_together185_aunroll_vunroll_x_in_c1_eni23820_23_tpl_3_delay_0;
    reg [0:0] redist17_sync_together185_aunroll_vunroll_x_in_i_valid_2_q;
    reg [0:0] redist17_sync_together185_aunroll_vunroll_x_in_i_valid_2_delay_0;
    reg [0:0] redist18_i_keep_going_or_or_conv2d1x121_q_2_q;
    reg [0:0] redist19_i_forked_and_and_conv2d1x17_q_2_q;
    reg [31:0] redist0_sync_together185_aunroll_vunroll_x_in_c1_eni23820_3_tpl_3_outputreg0_q;
    reg [31:0] redist2_sync_together185_aunroll_vunroll_x_in_c1_eni23820_5_tpl_3_outputreg0_q;
    reg [31:0] redist3_sync_together185_aunroll_vunroll_x_in_c1_eni23820_6_tpl_3_outputreg0_q;
    reg [31:0] redist4_sync_together185_aunroll_vunroll_x_in_c1_eni23820_7_tpl_3_outputreg0_q;
    reg [31:0] redist5_sync_together185_aunroll_vunroll_x_in_c1_eni23820_8_tpl_3_outputreg0_q;
    reg [31:0] redist6_sync_together185_aunroll_vunroll_x_in_c1_eni23820_9_tpl_3_outputreg0_q;
    reg [31:0] redist7_sync_together185_aunroll_vunroll_x_in_c1_eni23820_10_tpl_3_outputreg0_q;
    reg [31:0] redist8_sync_together185_aunroll_vunroll_x_in_c1_eni23820_11_tpl_3_outputreg0_q;
    reg [31:0] redist9_sync_together185_aunroll_vunroll_x_in_c1_eni23820_12_tpl_3_outputreg0_q;
    reg [31:0] redist10_sync_together185_aunroll_vunroll_x_in_c1_eni23820_13_tpl_3_outputreg0_q;
    reg [31:0] redist11_sync_together185_aunroll_vunroll_x_in_c1_eni23820_14_tpl_3_outputreg0_q;
    reg [31:0] redist12_sync_together185_aunroll_vunroll_x_in_c1_eni23820_15_tpl_3_outputreg0_q;
    reg [31:0] redist16_sync_together185_aunroll_vunroll_x_in_c1_eni23820_23_tpl_3_outputreg0_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist17_sync_together185_aunroll_vunroll_x_in_i_valid_2(DELAY,202)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist17_sync_together185_aunroll_vunroll_x_in_i_valid_2_delay_0 <= '0;
            redist17_sync_together185_aunroll_vunroll_x_in_i_valid_2_q <= '0;
        end
        else
        begin
            redist17_sync_together185_aunroll_vunroll_x_in_i_valid_2_delay_0 <= $unsigned(in_i_valid);
            redist17_sync_together185_aunroll_vunroll_x_in_i_valid_2_q <= redist17_sync_together185_aunroll_vunroll_x_in_i_valid_2_delay_0;
        end
    end

    // valid_fanout_reg0(REG,132)@140 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist17_sync_together185_aunroll_vunroll_x_in_i_valid_2_q);
        end
    end

    // valid_fanout_reg51(REG,183)@140 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg51_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg51_q <= $unsigned(redist17_sync_together185_aunroll_vunroll_x_in_i_valid_2_q);
        end
    end

    // redist1_sync_together185_aunroll_vunroll_x_in_c1_eni23820_4_tpl_2(DELAY,186)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together185_aunroll_vunroll_x_in_c1_eni23820_4_tpl_2_delay_0 <= '0;
            redist1_sync_together185_aunroll_vunroll_x_in_c1_eni23820_4_tpl_2_q <= '0;
        end
        else
        begin
            redist1_sync_together185_aunroll_vunroll_x_in_c1_eni23820_4_tpl_2_delay_0 <= $unsigned(in_c1_eni23820_4_tpl);
            redist1_sync_together185_aunroll_vunroll_x_in_c1_eni23820_4_tpl_2_q <= redist1_sync_together185_aunroll_vunroll_x_in_c1_eni23820_4_tpl_2_delay_0;
        end
    end

    // i_llvm_fpga_fanout_i1_c1_ene4825_fanout_adaptor_conv2d1x13(REG,60)@140 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_llvm_fpga_fanout_i1_c1_ene4825_fanout_adaptor_conv2d1x13_q <= $unsigned(1'b0);
        end
        else
        begin
            i_llvm_fpga_fanout_i1_c1_ene4825_fanout_adaptor_conv2d1x13_q <= redist1_sync_together185_aunroll_vunroll_x_in_c1_eni23820_4_tpl_2_q;
        end
    end

    // valid_fanout_reg52(REG,184)@140 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg52_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg52_q <= $unsigned(redist17_sync_together185_aunroll_vunroll_x_in_i_valid_2_q);
        end
    end

    // i_keep_going_or_or_conv2d1x121(LOGICAL,55)@138 + 1
    assign i_keep_going_or_or_conv2d1x121_qi = in_c1_eni23820_16_tpl | in_c1_eni23820_17_tpl;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_keep_going_or_or_conv2d1x121_delay ( .xin(i_keep_going_or_or_conv2d1x121_qi), .xout(i_keep_going_or_or_conv2d1x121_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist18_i_keep_going_or_or_conv2d1x121_q_2(DELAY,203)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist18_i_keep_going_or_or_conv2d1x121_q_2_q <= '0;
        end
        else
        begin
            redist18_i_keep_going_or_or_conv2d1x121_q_2_q <= $unsigned(i_keep_going_or_or_conv2d1x121_q);
        end
    end

    // i_llvm_fpga_fanout_i1_keep_going_or_or_fanout_adaptor_conv2d1x122(REG,62)@140 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_llvm_fpga_fanout_i1_keep_going_or_or_fanout_adaptor_conv2d1x122_q <= $unsigned(1'b0);
        end
        else
        begin
            i_llvm_fpga_fanout_i1_keep_going_or_or_fanout_adaptor_conv2d1x122_q <= redist18_i_keep_going_or_or_conv2d1x121_q_2_q;
        end
    end

    // valid_fanout_reg1(REG,133)@140 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg1_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg1_q <= $unsigned(redist17_sync_together185_aunroll_vunroll_x_in_i_valid_2_q);
        end
    end

    // valid_fanout_reg13(REG,145)@140 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg13_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg13_q <= $unsigned(redist17_sync_together185_aunroll_vunroll_x_in_i_valid_2_q);
        end
    end

    // valid_fanout_reg2(REG,134)@140 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg2_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg2_q <= $unsigned(redist17_sync_together185_aunroll_vunroll_x_in_i_valid_2_q);
        end
    end

    // valid_fanout_reg14(REG,146)@140 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg14_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg14_q <= $unsigned(redist17_sync_together185_aunroll_vunroll_x_in_i_valid_2_q);
        end
    end

    // valid_fanout_reg3(REG,135)@140 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg3_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg3_q <= $unsigned(redist17_sync_together185_aunroll_vunroll_x_in_i_valid_2_q);
        end
    end

    // valid_fanout_reg15(REG,147)@140 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg15_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg15_q <= $unsigned(redist17_sync_together185_aunroll_vunroll_x_in_i_valid_2_q);
        end
    end

    // valid_fanout_reg4(REG,136)@140 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg4_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg4_q <= $unsigned(redist17_sync_together185_aunroll_vunroll_x_in_i_valid_2_q);
        end
    end

    // valid_fanout_reg16(REG,148)@140 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg16_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg16_q <= $unsigned(redist17_sync_together185_aunroll_vunroll_x_in_i_valid_2_q);
        end
    end

    // valid_fanout_reg5(REG,137)@140 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg5_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg5_q <= $unsigned(redist17_sync_together185_aunroll_vunroll_x_in_i_valid_2_q);
        end
    end

    // valid_fanout_reg17(REG,149)@140 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg17_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg17_q <= $unsigned(redist17_sync_together185_aunroll_vunroll_x_in_i_valid_2_q);
        end
    end

    // valid_fanout_reg6(REG,138)@140 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg6_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg6_q <= $unsigned(redist17_sync_together185_aunroll_vunroll_x_in_i_valid_2_q);
        end
    end

    // valid_fanout_reg18(REG,150)@140 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg18_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg18_q <= $unsigned(redist17_sync_together185_aunroll_vunroll_x_in_i_valid_2_q);
        end
    end

    // valid_fanout_reg7(REG,139)@140 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg7_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg7_q <= $unsigned(redist17_sync_together185_aunroll_vunroll_x_in_i_valid_2_q);
        end
    end

    // valid_fanout_reg19(REG,151)@140 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg19_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg19_q <= $unsigned(redist17_sync_together185_aunroll_vunroll_x_in_i_valid_2_q);
        end
    end

    // valid_fanout_reg8(REG,140)@140 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg8_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg8_q <= $unsigned(redist17_sync_together185_aunroll_vunroll_x_in_i_valid_2_q);
        end
    end

    // valid_fanout_reg20(REG,152)@140 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg20_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg20_q <= $unsigned(redist17_sync_together185_aunroll_vunroll_x_in_i_valid_2_q);
        end
    end

    // valid_fanout_reg9(REG,141)@140 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg9_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg9_q <= $unsigned(redist17_sync_together185_aunroll_vunroll_x_in_i_valid_2_q);
        end
    end

    // valid_fanout_reg21(REG,153)@140 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg21_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg21_q <= $unsigned(redist17_sync_together185_aunroll_vunroll_x_in_i_valid_2_q);
        end
    end

    // valid_fanout_reg10(REG,142)@140 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg10_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg10_q <= $unsigned(redist17_sync_together185_aunroll_vunroll_x_in_i_valid_2_q);
        end
    end

    // valid_fanout_reg22(REG,154)@140 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg22_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg22_q <= $unsigned(redist17_sync_together185_aunroll_vunroll_x_in_i_valid_2_q);
        end
    end

    // valid_fanout_reg11(REG,143)@140 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg11_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg11_q <= $unsigned(redist17_sync_together185_aunroll_vunroll_x_in_i_valid_2_q);
        end
    end

    // valid_fanout_reg23(REG,155)@140 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg23_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg23_q <= $unsigned(redist17_sync_together185_aunroll_vunroll_x_in_i_valid_2_q);
        end
    end

    // valid_fanout_reg12(REG,144)@140 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg12_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg12_q <= $unsigned(redist17_sync_together185_aunroll_vunroll_x_in_i_valid_2_q);
        end
    end

    // valid_fanout_reg24(REG,156)@140 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg24_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg24_q <= $unsigned(redist17_sync_together185_aunroll_vunroll_x_in_i_valid_2_q);
        end
    end

    // i_mul64_conv2d1x135(BLACKBOX,115)@138
    // out out_primWireOut@141
    conv2d1x1_flt_i_sfc_logic_s_c1_in_for_bo0000b0c2463a0054c2a6355y thei_mul64_conv2d1x135 (
        .in_0(in_c1_eni23820_3_18_tpl),
        .in_1(in_c1_eni23820_19_tpl),
        .out_primWireOut(i_mul64_conv2d1x135_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_f32_push79_conv2d1x136(BLACKBOX,89)@141
    // out out_feedback_out_79@20000000
    // out out_feedback_valid_out_79@20000000
    conv2d1x1_i_llvm_fpga_push_f32_push79_0 thei_llvm_fpga_push_f32_push79_conv2d1x136 (
        .in_c1_ene4825_fanout_adaptor856(i_llvm_fpga_fanout_i1_c1_ene4825_fanout_adaptor856_conv2d1x12_q),
        .in_data_in(i_mul64_conv2d1x135_out_primWireOut),
        .in_feedback_stall_in_79(i_llvm_fpga_pop_coalesce_f32_pop79_conv2d1x120_out_feedback_stall_out_79),
        .in_keep_going_or_or_fanout_adaptor(i_llvm_fpga_fanout_i1_keep_going_or_or_fanout_adaptor_conv2d1x122_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg24_q),
        .out_data_out(),
        .out_feedback_out_79(i_llvm_fpga_push_f32_push79_conv2d1x136_out_feedback_out_79),
        .out_feedback_valid_out_79(i_llvm_fpga_push_f32_push79_conv2d1x136_out_feedback_valid_out_79),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist12_sync_together185_aunroll_vunroll_x_in_c1_eni23820_15_tpl_3(DELAY,197)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_sync_together185_aunroll_vunroll_x_in_c1_eni23820_15_tpl_3_delay_0 <= '0;
            redist12_sync_together185_aunroll_vunroll_x_in_c1_eni23820_15_tpl_3_q <= '0;
        end
        else
        begin
            redist12_sync_together185_aunroll_vunroll_x_in_c1_eni23820_15_tpl_3_delay_0 <= $unsigned(in_c1_eni23820_15_tpl);
            redist12_sync_together185_aunroll_vunroll_x_in_c1_eni23820_15_tpl_3_q <= redist12_sync_together185_aunroll_vunroll_x_in_c1_eni23820_15_tpl_3_delay_0;
        end
    end

    // redist12_sync_together185_aunroll_vunroll_x_in_c1_eni23820_15_tpl_3_outputreg0(DELAY,216)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_sync_together185_aunroll_vunroll_x_in_c1_eni23820_15_tpl_3_outputreg0_q <= '0;
        end
        else
        begin
            redist12_sync_together185_aunroll_vunroll_x_in_c1_eni23820_15_tpl_3_outputreg0_q <= $unsigned(redist12_sync_together185_aunroll_vunroll_x_in_c1_eni23820_15_tpl_3_q);
        end
    end

    // i_llvm_fpga_pop_coalesce_f32_pop79_conv2d1x120(BLACKBOX,63)@141
    // out out_feedback_stall_out_79@20000000
    conv2d1x1_i_llvm_fpga_pop_coalesce_f32_pop79_0 thei_llvm_fpga_pop_coalesce_f32_pop79_conv2d1x120 (
        .in_data_in(redist12_sync_together185_aunroll_vunroll_x_in_c1_eni23820_15_tpl_3_outputreg0_q),
        .in_dir(i_llvm_fpga_fanout_i1_forked_and_and_fanout_adaptor_conv2d1x18_q),
        .in_feedback_in_79(i_llvm_fpga_push_f32_push79_conv2d1x136_out_feedback_out_79),
        .in_feedback_valid_in_79(i_llvm_fpga_push_f32_push79_conv2d1x136_out_feedback_valid_out_79),
        .in_predicate(i_llvm_fpga_fanout_i1_c1_ene4825_fanout_adaptor_conv2d1x13_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg12_q),
        .out_data_out(i_llvm_fpga_pop_coalesce_f32_pop79_conv2d1x120_out_data_out),
        .out_feedback_stall_out_79(i_llvm_fpga_pop_coalesce_f32_pop79_conv2d1x120_out_feedback_stall_out_79),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_f32_push80_conv2d1x133(BLACKBOX,90)@141
    // out out_feedback_out_80@20000000
    // out out_feedback_valid_out_80@20000000
    conv2d1x1_i_llvm_fpga_push_f32_push80_0 thei_llvm_fpga_push_f32_push80_conv2d1x133 (
        .in_c1_ene4825_fanout_adaptor856(i_llvm_fpga_fanout_i1_c1_ene4825_fanout_adaptor856_conv2d1x12_q),
        .in_data_in(i_llvm_fpga_pop_coalesce_f32_pop79_conv2d1x120_out_data_out),
        .in_feedback_stall_in_80(i_llvm_fpga_pop_coalesce_f32_pop80_conv2d1x119_out_feedback_stall_out_80),
        .in_keep_going_or_or_fanout_adaptor(i_llvm_fpga_fanout_i1_keep_going_or_or_fanout_adaptor_conv2d1x122_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg23_q),
        .out_data_out(),
        .out_feedback_out_80(i_llvm_fpga_push_f32_push80_conv2d1x133_out_feedback_out_80),
        .out_feedback_valid_out_80(i_llvm_fpga_push_f32_push80_conv2d1x133_out_feedback_valid_out_80),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist11_sync_together185_aunroll_vunroll_x_in_c1_eni23820_14_tpl_3(DELAY,196)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_sync_together185_aunroll_vunroll_x_in_c1_eni23820_14_tpl_3_delay_0 <= '0;
            redist11_sync_together185_aunroll_vunroll_x_in_c1_eni23820_14_tpl_3_q <= '0;
        end
        else
        begin
            redist11_sync_together185_aunroll_vunroll_x_in_c1_eni23820_14_tpl_3_delay_0 <= $unsigned(in_c1_eni23820_14_tpl);
            redist11_sync_together185_aunroll_vunroll_x_in_c1_eni23820_14_tpl_3_q <= redist11_sync_together185_aunroll_vunroll_x_in_c1_eni23820_14_tpl_3_delay_0;
        end
    end

    // redist11_sync_together185_aunroll_vunroll_x_in_c1_eni23820_14_tpl_3_outputreg0(DELAY,215)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_sync_together185_aunroll_vunroll_x_in_c1_eni23820_14_tpl_3_outputreg0_q <= '0;
        end
        else
        begin
            redist11_sync_together185_aunroll_vunroll_x_in_c1_eni23820_14_tpl_3_outputreg0_q <= $unsigned(redist11_sync_together185_aunroll_vunroll_x_in_c1_eni23820_14_tpl_3_q);
        end
    end

    // i_llvm_fpga_pop_coalesce_f32_pop80_conv2d1x119(BLACKBOX,64)@141
    // out out_feedback_stall_out_80@20000000
    conv2d1x1_i_llvm_fpga_pop_coalesce_f32_pop80_0 thei_llvm_fpga_pop_coalesce_f32_pop80_conv2d1x119 (
        .in_data_in(redist11_sync_together185_aunroll_vunroll_x_in_c1_eni23820_14_tpl_3_outputreg0_q),
        .in_dir(i_llvm_fpga_fanout_i1_forked_and_and_fanout_adaptor_conv2d1x18_q),
        .in_feedback_in_80(i_llvm_fpga_push_f32_push80_conv2d1x133_out_feedback_out_80),
        .in_feedback_valid_in_80(i_llvm_fpga_push_f32_push80_conv2d1x133_out_feedback_valid_out_80),
        .in_predicate(i_llvm_fpga_fanout_i1_c1_ene4825_fanout_adaptor_conv2d1x13_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg11_q),
        .out_data_out(i_llvm_fpga_pop_coalesce_f32_pop80_conv2d1x119_out_data_out),
        .out_feedback_stall_out_80(i_llvm_fpga_pop_coalesce_f32_pop80_conv2d1x119_out_feedback_stall_out_80),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_f32_push81_conv2d1x132(BLACKBOX,91)@141
    // out out_feedback_out_81@20000000
    // out out_feedback_valid_out_81@20000000
    conv2d1x1_i_llvm_fpga_push_f32_push81_0 thei_llvm_fpga_push_f32_push81_conv2d1x132 (
        .in_c1_ene4825_fanout_adaptor856(i_llvm_fpga_fanout_i1_c1_ene4825_fanout_adaptor856_conv2d1x12_q),
        .in_data_in(i_llvm_fpga_pop_coalesce_f32_pop80_conv2d1x119_out_data_out),
        .in_feedback_stall_in_81(i_llvm_fpga_pop_coalesce_f32_pop81_conv2d1x118_out_feedback_stall_out_81),
        .in_keep_going_or_or_fanout_adaptor(i_llvm_fpga_fanout_i1_keep_going_or_or_fanout_adaptor_conv2d1x122_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg22_q),
        .out_data_out(),
        .out_feedback_out_81(i_llvm_fpga_push_f32_push81_conv2d1x132_out_feedback_out_81),
        .out_feedback_valid_out_81(i_llvm_fpga_push_f32_push81_conv2d1x132_out_feedback_valid_out_81),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist10_sync_together185_aunroll_vunroll_x_in_c1_eni23820_13_tpl_3(DELAY,195)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_sync_together185_aunroll_vunroll_x_in_c1_eni23820_13_tpl_3_delay_0 <= '0;
            redist10_sync_together185_aunroll_vunroll_x_in_c1_eni23820_13_tpl_3_q <= '0;
        end
        else
        begin
            redist10_sync_together185_aunroll_vunroll_x_in_c1_eni23820_13_tpl_3_delay_0 <= $unsigned(in_c1_eni23820_13_tpl);
            redist10_sync_together185_aunroll_vunroll_x_in_c1_eni23820_13_tpl_3_q <= redist10_sync_together185_aunroll_vunroll_x_in_c1_eni23820_13_tpl_3_delay_0;
        end
    end

    // redist10_sync_together185_aunroll_vunroll_x_in_c1_eni23820_13_tpl_3_outputreg0(DELAY,214)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_sync_together185_aunroll_vunroll_x_in_c1_eni23820_13_tpl_3_outputreg0_q <= '0;
        end
        else
        begin
            redist10_sync_together185_aunroll_vunroll_x_in_c1_eni23820_13_tpl_3_outputreg0_q <= $unsigned(redist10_sync_together185_aunroll_vunroll_x_in_c1_eni23820_13_tpl_3_q);
        end
    end

    // i_llvm_fpga_pop_coalesce_f32_pop81_conv2d1x118(BLACKBOX,65)@141
    // out out_feedback_stall_out_81@20000000
    conv2d1x1_i_llvm_fpga_pop_coalesce_f32_pop81_0 thei_llvm_fpga_pop_coalesce_f32_pop81_conv2d1x118 (
        .in_data_in(redist10_sync_together185_aunroll_vunroll_x_in_c1_eni23820_13_tpl_3_outputreg0_q),
        .in_dir(i_llvm_fpga_fanout_i1_forked_and_and_fanout_adaptor_conv2d1x18_q),
        .in_feedback_in_81(i_llvm_fpga_push_f32_push81_conv2d1x132_out_feedback_out_81),
        .in_feedback_valid_in_81(i_llvm_fpga_push_f32_push81_conv2d1x132_out_feedback_valid_out_81),
        .in_predicate(i_llvm_fpga_fanout_i1_c1_ene4825_fanout_adaptor_conv2d1x13_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg10_q),
        .out_data_out(i_llvm_fpga_pop_coalesce_f32_pop81_conv2d1x118_out_data_out),
        .out_feedback_stall_out_81(i_llvm_fpga_pop_coalesce_f32_pop81_conv2d1x118_out_feedback_stall_out_81),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_f32_push82_conv2d1x131(BLACKBOX,92)@141
    // out out_feedback_out_82@20000000
    // out out_feedback_valid_out_82@20000000
    conv2d1x1_i_llvm_fpga_push_f32_push82_0 thei_llvm_fpga_push_f32_push82_conv2d1x131 (
        .in_c1_ene4825_fanout_adaptor856(i_llvm_fpga_fanout_i1_c1_ene4825_fanout_adaptor856_conv2d1x12_q),
        .in_data_in(i_llvm_fpga_pop_coalesce_f32_pop81_conv2d1x118_out_data_out),
        .in_feedback_stall_in_82(i_llvm_fpga_pop_coalesce_f32_pop82_conv2d1x117_out_feedback_stall_out_82),
        .in_keep_going_or_or_fanout_adaptor(i_llvm_fpga_fanout_i1_keep_going_or_or_fanout_adaptor_conv2d1x122_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg21_q),
        .out_data_out(),
        .out_feedback_out_82(i_llvm_fpga_push_f32_push82_conv2d1x131_out_feedback_out_82),
        .out_feedback_valid_out_82(i_llvm_fpga_push_f32_push82_conv2d1x131_out_feedback_valid_out_82),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist9_sync_together185_aunroll_vunroll_x_in_c1_eni23820_12_tpl_3(DELAY,194)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_sync_together185_aunroll_vunroll_x_in_c1_eni23820_12_tpl_3_delay_0 <= '0;
            redist9_sync_together185_aunroll_vunroll_x_in_c1_eni23820_12_tpl_3_q <= '0;
        end
        else
        begin
            redist9_sync_together185_aunroll_vunroll_x_in_c1_eni23820_12_tpl_3_delay_0 <= $unsigned(in_c1_eni23820_12_tpl);
            redist9_sync_together185_aunroll_vunroll_x_in_c1_eni23820_12_tpl_3_q <= redist9_sync_together185_aunroll_vunroll_x_in_c1_eni23820_12_tpl_3_delay_0;
        end
    end

    // redist9_sync_together185_aunroll_vunroll_x_in_c1_eni23820_12_tpl_3_outputreg0(DELAY,213)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_sync_together185_aunroll_vunroll_x_in_c1_eni23820_12_tpl_3_outputreg0_q <= '0;
        end
        else
        begin
            redist9_sync_together185_aunroll_vunroll_x_in_c1_eni23820_12_tpl_3_outputreg0_q <= $unsigned(redist9_sync_together185_aunroll_vunroll_x_in_c1_eni23820_12_tpl_3_q);
        end
    end

    // i_llvm_fpga_pop_coalesce_f32_pop82_conv2d1x117(BLACKBOX,66)@141
    // out out_feedback_stall_out_82@20000000
    conv2d1x1_i_llvm_fpga_pop_coalesce_f32_pop82_0 thei_llvm_fpga_pop_coalesce_f32_pop82_conv2d1x117 (
        .in_data_in(redist9_sync_together185_aunroll_vunroll_x_in_c1_eni23820_12_tpl_3_outputreg0_q),
        .in_dir(i_llvm_fpga_fanout_i1_forked_and_and_fanout_adaptor_conv2d1x18_q),
        .in_feedback_in_82(i_llvm_fpga_push_f32_push82_conv2d1x131_out_feedback_out_82),
        .in_feedback_valid_in_82(i_llvm_fpga_push_f32_push82_conv2d1x131_out_feedback_valid_out_82),
        .in_predicate(i_llvm_fpga_fanout_i1_c1_ene4825_fanout_adaptor_conv2d1x13_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg9_q),
        .out_data_out(i_llvm_fpga_pop_coalesce_f32_pop82_conv2d1x117_out_data_out),
        .out_feedback_stall_out_82(i_llvm_fpga_pop_coalesce_f32_pop82_conv2d1x117_out_feedback_stall_out_82),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_f32_push83_conv2d1x130(BLACKBOX,93)@141
    // out out_feedback_out_83@20000000
    // out out_feedback_valid_out_83@20000000
    conv2d1x1_i_llvm_fpga_push_f32_push83_0 thei_llvm_fpga_push_f32_push83_conv2d1x130 (
        .in_c1_ene4825_fanout_adaptor856(i_llvm_fpga_fanout_i1_c1_ene4825_fanout_adaptor856_conv2d1x12_q),
        .in_data_in(i_llvm_fpga_pop_coalesce_f32_pop82_conv2d1x117_out_data_out),
        .in_feedback_stall_in_83(i_llvm_fpga_pop_coalesce_f32_pop83_conv2d1x116_out_feedback_stall_out_83),
        .in_keep_going_or_or_fanout_adaptor(i_llvm_fpga_fanout_i1_keep_going_or_or_fanout_adaptor_conv2d1x122_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg20_q),
        .out_data_out(),
        .out_feedback_out_83(i_llvm_fpga_push_f32_push83_conv2d1x130_out_feedback_out_83),
        .out_feedback_valid_out_83(i_llvm_fpga_push_f32_push83_conv2d1x130_out_feedback_valid_out_83),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist8_sync_together185_aunroll_vunroll_x_in_c1_eni23820_11_tpl_3(DELAY,193)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_sync_together185_aunroll_vunroll_x_in_c1_eni23820_11_tpl_3_delay_0 <= '0;
            redist8_sync_together185_aunroll_vunroll_x_in_c1_eni23820_11_tpl_3_q <= '0;
        end
        else
        begin
            redist8_sync_together185_aunroll_vunroll_x_in_c1_eni23820_11_tpl_3_delay_0 <= $unsigned(in_c1_eni23820_11_tpl);
            redist8_sync_together185_aunroll_vunroll_x_in_c1_eni23820_11_tpl_3_q <= redist8_sync_together185_aunroll_vunroll_x_in_c1_eni23820_11_tpl_3_delay_0;
        end
    end

    // redist8_sync_together185_aunroll_vunroll_x_in_c1_eni23820_11_tpl_3_outputreg0(DELAY,212)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_sync_together185_aunroll_vunroll_x_in_c1_eni23820_11_tpl_3_outputreg0_q <= '0;
        end
        else
        begin
            redist8_sync_together185_aunroll_vunroll_x_in_c1_eni23820_11_tpl_3_outputreg0_q <= $unsigned(redist8_sync_together185_aunroll_vunroll_x_in_c1_eni23820_11_tpl_3_q);
        end
    end

    // i_llvm_fpga_pop_coalesce_f32_pop83_conv2d1x116(BLACKBOX,67)@141
    // out out_feedback_stall_out_83@20000000
    conv2d1x1_i_llvm_fpga_pop_coalesce_f32_pop83_0 thei_llvm_fpga_pop_coalesce_f32_pop83_conv2d1x116 (
        .in_data_in(redist8_sync_together185_aunroll_vunroll_x_in_c1_eni23820_11_tpl_3_outputreg0_q),
        .in_dir(i_llvm_fpga_fanout_i1_forked_and_and_fanout_adaptor_conv2d1x18_q),
        .in_feedback_in_83(i_llvm_fpga_push_f32_push83_conv2d1x130_out_feedback_out_83),
        .in_feedback_valid_in_83(i_llvm_fpga_push_f32_push83_conv2d1x130_out_feedback_valid_out_83),
        .in_predicate(i_llvm_fpga_fanout_i1_c1_ene4825_fanout_adaptor_conv2d1x13_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg8_q),
        .out_data_out(i_llvm_fpga_pop_coalesce_f32_pop83_conv2d1x116_out_data_out),
        .out_feedback_stall_out_83(i_llvm_fpga_pop_coalesce_f32_pop83_conv2d1x116_out_feedback_stall_out_83),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_f32_push84_conv2d1x129(BLACKBOX,94)@141
    // out out_feedback_out_84@20000000
    // out out_feedback_valid_out_84@20000000
    conv2d1x1_i_llvm_fpga_push_f32_push84_0 thei_llvm_fpga_push_f32_push84_conv2d1x129 (
        .in_c1_ene4825_fanout_adaptor856(i_llvm_fpga_fanout_i1_c1_ene4825_fanout_adaptor856_conv2d1x12_q),
        .in_data_in(i_llvm_fpga_pop_coalesce_f32_pop83_conv2d1x116_out_data_out),
        .in_feedback_stall_in_84(i_llvm_fpga_pop_coalesce_f32_pop84_conv2d1x115_out_feedback_stall_out_84),
        .in_keep_going_or_or_fanout_adaptor(i_llvm_fpga_fanout_i1_keep_going_or_or_fanout_adaptor_conv2d1x122_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg19_q),
        .out_data_out(),
        .out_feedback_out_84(i_llvm_fpga_push_f32_push84_conv2d1x129_out_feedback_out_84),
        .out_feedback_valid_out_84(i_llvm_fpga_push_f32_push84_conv2d1x129_out_feedback_valid_out_84),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist7_sync_together185_aunroll_vunroll_x_in_c1_eni23820_10_tpl_3(DELAY,192)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_sync_together185_aunroll_vunroll_x_in_c1_eni23820_10_tpl_3_delay_0 <= '0;
            redist7_sync_together185_aunroll_vunroll_x_in_c1_eni23820_10_tpl_3_q <= '0;
        end
        else
        begin
            redist7_sync_together185_aunroll_vunroll_x_in_c1_eni23820_10_tpl_3_delay_0 <= $unsigned(in_c1_eni23820_10_tpl);
            redist7_sync_together185_aunroll_vunroll_x_in_c1_eni23820_10_tpl_3_q <= redist7_sync_together185_aunroll_vunroll_x_in_c1_eni23820_10_tpl_3_delay_0;
        end
    end

    // redist7_sync_together185_aunroll_vunroll_x_in_c1_eni23820_10_tpl_3_outputreg0(DELAY,211)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_sync_together185_aunroll_vunroll_x_in_c1_eni23820_10_tpl_3_outputreg0_q <= '0;
        end
        else
        begin
            redist7_sync_together185_aunroll_vunroll_x_in_c1_eni23820_10_tpl_3_outputreg0_q <= $unsigned(redist7_sync_together185_aunroll_vunroll_x_in_c1_eni23820_10_tpl_3_q);
        end
    end

    // i_llvm_fpga_pop_coalesce_f32_pop84_conv2d1x115(BLACKBOX,68)@141
    // out out_feedback_stall_out_84@20000000
    conv2d1x1_i_llvm_fpga_pop_coalesce_f32_pop84_0 thei_llvm_fpga_pop_coalesce_f32_pop84_conv2d1x115 (
        .in_data_in(redist7_sync_together185_aunroll_vunroll_x_in_c1_eni23820_10_tpl_3_outputreg0_q),
        .in_dir(i_llvm_fpga_fanout_i1_forked_and_and_fanout_adaptor_conv2d1x18_q),
        .in_feedback_in_84(i_llvm_fpga_push_f32_push84_conv2d1x129_out_feedback_out_84),
        .in_feedback_valid_in_84(i_llvm_fpga_push_f32_push84_conv2d1x129_out_feedback_valid_out_84),
        .in_predicate(i_llvm_fpga_fanout_i1_c1_ene4825_fanout_adaptor_conv2d1x13_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg7_q),
        .out_data_out(i_llvm_fpga_pop_coalesce_f32_pop84_conv2d1x115_out_data_out),
        .out_feedback_stall_out_84(i_llvm_fpga_pop_coalesce_f32_pop84_conv2d1x115_out_feedback_stall_out_84),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_f32_push85_conv2d1x128(BLACKBOX,95)@141
    // out out_feedback_out_85@20000000
    // out out_feedback_valid_out_85@20000000
    conv2d1x1_i_llvm_fpga_push_f32_push85_0 thei_llvm_fpga_push_f32_push85_conv2d1x128 (
        .in_c1_ene4825_fanout_adaptor856(i_llvm_fpga_fanout_i1_c1_ene4825_fanout_adaptor856_conv2d1x12_q),
        .in_data_in(i_llvm_fpga_pop_coalesce_f32_pop84_conv2d1x115_out_data_out),
        .in_feedback_stall_in_85(i_llvm_fpga_pop_coalesce_f32_pop85_conv2d1x114_out_feedback_stall_out_85),
        .in_keep_going_or_or_fanout_adaptor(i_llvm_fpga_fanout_i1_keep_going_or_or_fanout_adaptor_conv2d1x122_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg18_q),
        .out_data_out(),
        .out_feedback_out_85(i_llvm_fpga_push_f32_push85_conv2d1x128_out_feedback_out_85),
        .out_feedback_valid_out_85(i_llvm_fpga_push_f32_push85_conv2d1x128_out_feedback_valid_out_85),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist6_sync_together185_aunroll_vunroll_x_in_c1_eni23820_9_tpl_3(DELAY,191)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_sync_together185_aunroll_vunroll_x_in_c1_eni23820_9_tpl_3_delay_0 <= '0;
            redist6_sync_together185_aunroll_vunroll_x_in_c1_eni23820_9_tpl_3_q <= '0;
        end
        else
        begin
            redist6_sync_together185_aunroll_vunroll_x_in_c1_eni23820_9_tpl_3_delay_0 <= $unsigned(in_c1_eni23820_9_tpl);
            redist6_sync_together185_aunroll_vunroll_x_in_c1_eni23820_9_tpl_3_q <= redist6_sync_together185_aunroll_vunroll_x_in_c1_eni23820_9_tpl_3_delay_0;
        end
    end

    // redist6_sync_together185_aunroll_vunroll_x_in_c1_eni23820_9_tpl_3_outputreg0(DELAY,210)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_sync_together185_aunroll_vunroll_x_in_c1_eni23820_9_tpl_3_outputreg0_q <= '0;
        end
        else
        begin
            redist6_sync_together185_aunroll_vunroll_x_in_c1_eni23820_9_tpl_3_outputreg0_q <= $unsigned(redist6_sync_together185_aunroll_vunroll_x_in_c1_eni23820_9_tpl_3_q);
        end
    end

    // i_llvm_fpga_pop_coalesce_f32_pop85_conv2d1x114(BLACKBOX,69)@141
    // out out_feedback_stall_out_85@20000000
    conv2d1x1_i_llvm_fpga_pop_coalesce_f32_pop85_0 thei_llvm_fpga_pop_coalesce_f32_pop85_conv2d1x114 (
        .in_data_in(redist6_sync_together185_aunroll_vunroll_x_in_c1_eni23820_9_tpl_3_outputreg0_q),
        .in_dir(i_llvm_fpga_fanout_i1_forked_and_and_fanout_adaptor_conv2d1x18_q),
        .in_feedback_in_85(i_llvm_fpga_push_f32_push85_conv2d1x128_out_feedback_out_85),
        .in_feedback_valid_in_85(i_llvm_fpga_push_f32_push85_conv2d1x128_out_feedback_valid_out_85),
        .in_predicate(i_llvm_fpga_fanout_i1_c1_ene4825_fanout_adaptor_conv2d1x13_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg6_q),
        .out_data_out(i_llvm_fpga_pop_coalesce_f32_pop85_conv2d1x114_out_data_out),
        .out_feedback_stall_out_85(i_llvm_fpga_pop_coalesce_f32_pop85_conv2d1x114_out_feedback_stall_out_85),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_f32_push86_conv2d1x127(BLACKBOX,96)@141
    // out out_feedback_out_86@20000000
    // out out_feedback_valid_out_86@20000000
    conv2d1x1_i_llvm_fpga_push_f32_push86_0 thei_llvm_fpga_push_f32_push86_conv2d1x127 (
        .in_c1_ene4825_fanout_adaptor856(i_llvm_fpga_fanout_i1_c1_ene4825_fanout_adaptor856_conv2d1x12_q),
        .in_data_in(i_llvm_fpga_pop_coalesce_f32_pop85_conv2d1x114_out_data_out),
        .in_feedback_stall_in_86(i_llvm_fpga_pop_coalesce_f32_pop86_conv2d1x113_out_feedback_stall_out_86),
        .in_keep_going_or_or_fanout_adaptor(i_llvm_fpga_fanout_i1_keep_going_or_or_fanout_adaptor_conv2d1x122_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg17_q),
        .out_data_out(),
        .out_feedback_out_86(i_llvm_fpga_push_f32_push86_conv2d1x127_out_feedback_out_86),
        .out_feedback_valid_out_86(i_llvm_fpga_push_f32_push86_conv2d1x127_out_feedback_valid_out_86),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist5_sync_together185_aunroll_vunroll_x_in_c1_eni23820_8_tpl_3(DELAY,190)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_sync_together185_aunroll_vunroll_x_in_c1_eni23820_8_tpl_3_delay_0 <= '0;
            redist5_sync_together185_aunroll_vunroll_x_in_c1_eni23820_8_tpl_3_q <= '0;
        end
        else
        begin
            redist5_sync_together185_aunroll_vunroll_x_in_c1_eni23820_8_tpl_3_delay_0 <= $unsigned(in_c1_eni23820_8_tpl);
            redist5_sync_together185_aunroll_vunroll_x_in_c1_eni23820_8_tpl_3_q <= redist5_sync_together185_aunroll_vunroll_x_in_c1_eni23820_8_tpl_3_delay_0;
        end
    end

    // redist5_sync_together185_aunroll_vunroll_x_in_c1_eni23820_8_tpl_3_outputreg0(DELAY,209)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_sync_together185_aunroll_vunroll_x_in_c1_eni23820_8_tpl_3_outputreg0_q <= '0;
        end
        else
        begin
            redist5_sync_together185_aunroll_vunroll_x_in_c1_eni23820_8_tpl_3_outputreg0_q <= $unsigned(redist5_sync_together185_aunroll_vunroll_x_in_c1_eni23820_8_tpl_3_q);
        end
    end

    // i_llvm_fpga_pop_coalesce_f32_pop86_conv2d1x113(BLACKBOX,70)@141
    // out out_feedback_stall_out_86@20000000
    conv2d1x1_i_llvm_fpga_pop_coalesce_f32_pop86_0 thei_llvm_fpga_pop_coalesce_f32_pop86_conv2d1x113 (
        .in_data_in(redist5_sync_together185_aunroll_vunroll_x_in_c1_eni23820_8_tpl_3_outputreg0_q),
        .in_dir(i_llvm_fpga_fanout_i1_forked_and_and_fanout_adaptor_conv2d1x18_q),
        .in_feedback_in_86(i_llvm_fpga_push_f32_push86_conv2d1x127_out_feedback_out_86),
        .in_feedback_valid_in_86(i_llvm_fpga_push_f32_push86_conv2d1x127_out_feedback_valid_out_86),
        .in_predicate(i_llvm_fpga_fanout_i1_c1_ene4825_fanout_adaptor_conv2d1x13_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_data_out(i_llvm_fpga_pop_coalesce_f32_pop86_conv2d1x113_out_data_out),
        .out_feedback_stall_out_86(i_llvm_fpga_pop_coalesce_f32_pop86_conv2d1x113_out_feedback_stall_out_86),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_f32_push87_conv2d1x126(BLACKBOX,97)@141
    // out out_feedback_out_87@20000000
    // out out_feedback_valid_out_87@20000000
    conv2d1x1_i_llvm_fpga_push_f32_push87_0 thei_llvm_fpga_push_f32_push87_conv2d1x126 (
        .in_c1_ene4825_fanout_adaptor856(i_llvm_fpga_fanout_i1_c1_ene4825_fanout_adaptor856_conv2d1x12_q),
        .in_data_in(i_llvm_fpga_pop_coalesce_f32_pop86_conv2d1x113_out_data_out),
        .in_feedback_stall_in_87(i_llvm_fpga_pop_coalesce_f32_pop87_conv2d1x112_out_feedback_stall_out_87),
        .in_keep_going_or_or_fanout_adaptor(i_llvm_fpga_fanout_i1_keep_going_or_or_fanout_adaptor_conv2d1x122_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg16_q),
        .out_data_out(),
        .out_feedback_out_87(i_llvm_fpga_push_f32_push87_conv2d1x126_out_feedback_out_87),
        .out_feedback_valid_out_87(i_llvm_fpga_push_f32_push87_conv2d1x126_out_feedback_valid_out_87),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist4_sync_together185_aunroll_vunroll_x_in_c1_eni23820_7_tpl_3(DELAY,189)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_sync_together185_aunroll_vunroll_x_in_c1_eni23820_7_tpl_3_delay_0 <= '0;
            redist4_sync_together185_aunroll_vunroll_x_in_c1_eni23820_7_tpl_3_q <= '0;
        end
        else
        begin
            redist4_sync_together185_aunroll_vunroll_x_in_c1_eni23820_7_tpl_3_delay_0 <= $unsigned(in_c1_eni23820_7_tpl);
            redist4_sync_together185_aunroll_vunroll_x_in_c1_eni23820_7_tpl_3_q <= redist4_sync_together185_aunroll_vunroll_x_in_c1_eni23820_7_tpl_3_delay_0;
        end
    end

    // redist4_sync_together185_aunroll_vunroll_x_in_c1_eni23820_7_tpl_3_outputreg0(DELAY,208)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_sync_together185_aunroll_vunroll_x_in_c1_eni23820_7_tpl_3_outputreg0_q <= '0;
        end
        else
        begin
            redist4_sync_together185_aunroll_vunroll_x_in_c1_eni23820_7_tpl_3_outputreg0_q <= $unsigned(redist4_sync_together185_aunroll_vunroll_x_in_c1_eni23820_7_tpl_3_q);
        end
    end

    // i_llvm_fpga_pop_coalesce_f32_pop87_conv2d1x112(BLACKBOX,71)@141
    // out out_feedback_stall_out_87@20000000
    conv2d1x1_i_llvm_fpga_pop_coalesce_f32_pop87_0 thei_llvm_fpga_pop_coalesce_f32_pop87_conv2d1x112 (
        .in_data_in(redist4_sync_together185_aunroll_vunroll_x_in_c1_eni23820_7_tpl_3_outputreg0_q),
        .in_dir(i_llvm_fpga_fanout_i1_forked_and_and_fanout_adaptor_conv2d1x18_q),
        .in_feedback_in_87(i_llvm_fpga_push_f32_push87_conv2d1x126_out_feedback_out_87),
        .in_feedback_valid_in_87(i_llvm_fpga_push_f32_push87_conv2d1x126_out_feedback_valid_out_87),
        .in_predicate(i_llvm_fpga_fanout_i1_c1_ene4825_fanout_adaptor_conv2d1x13_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_data_out(i_llvm_fpga_pop_coalesce_f32_pop87_conv2d1x112_out_data_out),
        .out_feedback_stall_out_87(i_llvm_fpga_pop_coalesce_f32_pop87_conv2d1x112_out_feedback_stall_out_87),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_f32_push88_conv2d1x125(BLACKBOX,98)@141
    // out out_feedback_out_88@20000000
    // out out_feedback_valid_out_88@20000000
    conv2d1x1_i_llvm_fpga_push_f32_push88_0 thei_llvm_fpga_push_f32_push88_conv2d1x125 (
        .in_c1_ene4825_fanout_adaptor856(i_llvm_fpga_fanout_i1_c1_ene4825_fanout_adaptor856_conv2d1x12_q),
        .in_data_in(i_llvm_fpga_pop_coalesce_f32_pop87_conv2d1x112_out_data_out),
        .in_feedback_stall_in_88(i_llvm_fpga_pop_coalesce_f32_pop88_conv2d1x111_out_feedback_stall_out_88),
        .in_keep_going_or_or_fanout_adaptor(i_llvm_fpga_fanout_i1_keep_going_or_or_fanout_adaptor_conv2d1x122_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg15_q),
        .out_data_out(),
        .out_feedback_out_88(i_llvm_fpga_push_f32_push88_conv2d1x125_out_feedback_out_88),
        .out_feedback_valid_out_88(i_llvm_fpga_push_f32_push88_conv2d1x125_out_feedback_valid_out_88),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist3_sync_together185_aunroll_vunroll_x_in_c1_eni23820_6_tpl_3(DELAY,188)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_sync_together185_aunroll_vunroll_x_in_c1_eni23820_6_tpl_3_delay_0 <= '0;
            redist3_sync_together185_aunroll_vunroll_x_in_c1_eni23820_6_tpl_3_q <= '0;
        end
        else
        begin
            redist3_sync_together185_aunroll_vunroll_x_in_c1_eni23820_6_tpl_3_delay_0 <= $unsigned(in_c1_eni23820_6_tpl);
            redist3_sync_together185_aunroll_vunroll_x_in_c1_eni23820_6_tpl_3_q <= redist3_sync_together185_aunroll_vunroll_x_in_c1_eni23820_6_tpl_3_delay_0;
        end
    end

    // redist3_sync_together185_aunroll_vunroll_x_in_c1_eni23820_6_tpl_3_outputreg0(DELAY,207)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_sync_together185_aunroll_vunroll_x_in_c1_eni23820_6_tpl_3_outputreg0_q <= '0;
        end
        else
        begin
            redist3_sync_together185_aunroll_vunroll_x_in_c1_eni23820_6_tpl_3_outputreg0_q <= $unsigned(redist3_sync_together185_aunroll_vunroll_x_in_c1_eni23820_6_tpl_3_q);
        end
    end

    // i_llvm_fpga_pop_coalesce_f32_pop88_conv2d1x111(BLACKBOX,72)@141
    // out out_feedback_stall_out_88@20000000
    conv2d1x1_i_llvm_fpga_pop_coalesce_f32_pop88_0 thei_llvm_fpga_pop_coalesce_f32_pop88_conv2d1x111 (
        .in_data_in(redist3_sync_together185_aunroll_vunroll_x_in_c1_eni23820_6_tpl_3_outputreg0_q),
        .in_dir(i_llvm_fpga_fanout_i1_forked_and_and_fanout_adaptor_conv2d1x18_q),
        .in_feedback_in_88(i_llvm_fpga_push_f32_push88_conv2d1x125_out_feedback_out_88),
        .in_feedback_valid_in_88(i_llvm_fpga_push_f32_push88_conv2d1x125_out_feedback_valid_out_88),
        .in_predicate(i_llvm_fpga_fanout_i1_c1_ene4825_fanout_adaptor_conv2d1x13_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_data_out(i_llvm_fpga_pop_coalesce_f32_pop88_conv2d1x111_out_data_out),
        .out_feedback_stall_out_88(i_llvm_fpga_pop_coalesce_f32_pop88_conv2d1x111_out_feedback_stall_out_88),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_f32_push89_conv2d1x124(BLACKBOX,99)@141
    // out out_feedback_out_89@20000000
    // out out_feedback_valid_out_89@20000000
    conv2d1x1_i_llvm_fpga_push_f32_push89_0 thei_llvm_fpga_push_f32_push89_conv2d1x124 (
        .in_c1_ene4825_fanout_adaptor856(i_llvm_fpga_fanout_i1_c1_ene4825_fanout_adaptor856_conv2d1x12_q),
        .in_data_in(i_llvm_fpga_pop_coalesce_f32_pop88_conv2d1x111_out_data_out),
        .in_feedback_stall_in_89(i_llvm_fpga_pop_coalesce_f32_pop89_conv2d1x110_out_feedback_stall_out_89),
        .in_keep_going_or_or_fanout_adaptor(i_llvm_fpga_fanout_i1_keep_going_or_or_fanout_adaptor_conv2d1x122_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg14_q),
        .out_data_out(),
        .out_feedback_out_89(i_llvm_fpga_push_f32_push89_conv2d1x124_out_feedback_out_89),
        .out_feedback_valid_out_89(i_llvm_fpga_push_f32_push89_conv2d1x124_out_feedback_valid_out_89),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist2_sync_together185_aunroll_vunroll_x_in_c1_eni23820_5_tpl_3(DELAY,187)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_sync_together185_aunroll_vunroll_x_in_c1_eni23820_5_tpl_3_delay_0 <= '0;
            redist2_sync_together185_aunroll_vunroll_x_in_c1_eni23820_5_tpl_3_q <= '0;
        end
        else
        begin
            redist2_sync_together185_aunroll_vunroll_x_in_c1_eni23820_5_tpl_3_delay_0 <= $unsigned(in_c1_eni23820_5_tpl);
            redist2_sync_together185_aunroll_vunroll_x_in_c1_eni23820_5_tpl_3_q <= redist2_sync_together185_aunroll_vunroll_x_in_c1_eni23820_5_tpl_3_delay_0;
        end
    end

    // redist2_sync_together185_aunroll_vunroll_x_in_c1_eni23820_5_tpl_3_outputreg0(DELAY,206)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_sync_together185_aunroll_vunroll_x_in_c1_eni23820_5_tpl_3_outputreg0_q <= '0;
        end
        else
        begin
            redist2_sync_together185_aunroll_vunroll_x_in_c1_eni23820_5_tpl_3_outputreg0_q <= $unsigned(redist2_sync_together185_aunroll_vunroll_x_in_c1_eni23820_5_tpl_3_q);
        end
    end

    // i_llvm_fpga_pop_coalesce_f32_pop89_conv2d1x110(BLACKBOX,73)@141
    // out out_feedback_stall_out_89@20000000
    conv2d1x1_i_llvm_fpga_pop_coalesce_f32_pop89_0 thei_llvm_fpga_pop_coalesce_f32_pop89_conv2d1x110 (
        .in_data_in(redist2_sync_together185_aunroll_vunroll_x_in_c1_eni23820_5_tpl_3_outputreg0_q),
        .in_dir(i_llvm_fpga_fanout_i1_forked_and_and_fanout_adaptor_conv2d1x18_q),
        .in_feedback_in_89(i_llvm_fpga_push_f32_push89_conv2d1x124_out_feedback_out_89),
        .in_feedback_valid_in_89(i_llvm_fpga_push_f32_push89_conv2d1x124_out_feedback_valid_out_89),
        .in_predicate(i_llvm_fpga_fanout_i1_c1_ene4825_fanout_adaptor_conv2d1x13_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(i_llvm_fpga_pop_coalesce_f32_pop89_conv2d1x110_out_data_out),
        .out_feedback_stall_out_89(i_llvm_fpga_pop_coalesce_f32_pop89_conv2d1x110_out_feedback_stall_out_89),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_f32_push90_conv2d1x123(BLACKBOX,100)@141
    // out out_feedback_out_90@20000000
    // out out_feedback_valid_out_90@20000000
    conv2d1x1_i_llvm_fpga_push_f32_push90_0 thei_llvm_fpga_push_f32_push90_conv2d1x123 (
        .in_c1_ene4825_fanout_adaptor856(i_llvm_fpga_fanout_i1_c1_ene4825_fanout_adaptor856_conv2d1x12_q),
        .in_data_in(i_llvm_fpga_pop_coalesce_f32_pop89_conv2d1x110_out_data_out),
        .in_feedback_stall_in_90(i_llvm_fpga_pop_coalesce_f32_pop90_conv2d1x19_out_feedback_stall_out_90),
        .in_keep_going_or_or_fanout_adaptor(i_llvm_fpga_fanout_i1_keep_going_or_or_fanout_adaptor_conv2d1x122_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg13_q),
        .out_data_out(),
        .out_feedback_out_90(i_llvm_fpga_push_f32_push90_conv2d1x123_out_feedback_out_90),
        .out_feedback_valid_out_90(i_llvm_fpga_push_f32_push90_conv2d1x123_out_feedback_valid_out_90),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist0_sync_together185_aunroll_vunroll_x_in_c1_eni23820_3_tpl_3(DELAY,185)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_sync_together185_aunroll_vunroll_x_in_c1_eni23820_3_tpl_3_delay_0 <= '0;
            redist0_sync_together185_aunroll_vunroll_x_in_c1_eni23820_3_tpl_3_q <= '0;
        end
        else
        begin
            redist0_sync_together185_aunroll_vunroll_x_in_c1_eni23820_3_tpl_3_delay_0 <= $unsigned(in_c1_eni23820_3_tpl);
            redist0_sync_together185_aunroll_vunroll_x_in_c1_eni23820_3_tpl_3_q <= redist0_sync_together185_aunroll_vunroll_x_in_c1_eni23820_3_tpl_3_delay_0;
        end
    end

    // redist0_sync_together185_aunroll_vunroll_x_in_c1_eni23820_3_tpl_3_outputreg0(DELAY,205)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_sync_together185_aunroll_vunroll_x_in_c1_eni23820_3_tpl_3_outputreg0_q <= '0;
        end
        else
        begin
            redist0_sync_together185_aunroll_vunroll_x_in_c1_eni23820_3_tpl_3_outputreg0_q <= $unsigned(redist0_sync_together185_aunroll_vunroll_x_in_c1_eni23820_3_tpl_3_q);
        end
    end

    // i_llvm_fpga_pop_coalesce_f32_pop90_conv2d1x19(BLACKBOX,74)@141
    // out out_feedback_stall_out_90@20000000
    conv2d1x1_i_llvm_fpga_pop_coalesce_f32_pop90_0 thei_llvm_fpga_pop_coalesce_f32_pop90_conv2d1x19 (
        .in_data_in(redist0_sync_together185_aunroll_vunroll_x_in_c1_eni23820_3_tpl_3_outputreg0_q),
        .in_dir(i_llvm_fpga_fanout_i1_forked_and_and_fanout_adaptor_conv2d1x18_q),
        .in_feedback_in_90(i_llvm_fpga_push_f32_push90_conv2d1x123_out_feedback_out_90),
        .in_feedback_valid_in_90(i_llvm_fpga_push_f32_push90_conv2d1x123_out_feedback_valid_out_90),
        .in_predicate(i_llvm_fpga_fanout_i1_c1_ene4825_fanout_adaptor_conv2d1x13_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_data_out(i_llvm_fpga_pop_coalesce_f32_pop90_conv2d1x19_out_data_out),
        .out_feedback_stall_out_90(i_llvm_fpga_pop_coalesce_f32_pop90_conv2d1x19_out_feedback_stall_out_90),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_fanout_i1_c1_ene4825_fanout_adaptor856_conv2d1x12(REG,59)@140 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_llvm_fpga_fanout_i1_c1_ene4825_fanout_adaptor856_conv2d1x12_q <= $unsigned(1'b0);
        end
        else
        begin
            i_llvm_fpga_fanout_i1_c1_ene4825_fanout_adaptor856_conv2d1x12_q <= redist1_sync_together185_aunroll_vunroll_x_in_c1_eni23820_4_tpl_2_q;
        end
    end

    // i_llvm_fpga_push_f32_push91_conv2d1x177(BLACKBOX,101)@141
    // out out_feedback_out_91@20000000
    // out out_feedback_valid_out_91@20000000
    conv2d1x1_i_llvm_fpga_push_f32_push91_0 thei_llvm_fpga_push_f32_push91_conv2d1x177 (
        .in_c1_ene4825_fanout_adaptor856(i_llvm_fpga_fanout_i1_c1_ene4825_fanout_adaptor856_conv2d1x12_q),
        .in_data_in(i_llvm_fpga_pop_coalesce_f32_pop90_conv2d1x19_out_data_out),
        .in_feedback_stall_in_91(i_llvm_fpga_pop_coalesce_f32_pop91_conv2d1x176_out_feedback_stall_out_91),
        .in_keep_going_or_or_fanout_adaptor(i_llvm_fpga_fanout_i1_keep_going_or_or_fanout_adaptor_conv2d1x122_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg52_q),
        .out_data_out(),
        .out_feedback_out_91(i_llvm_fpga_push_f32_push91_conv2d1x177_out_feedback_out_91),
        .out_feedback_valid_out_91(i_llvm_fpga_push_f32_push91_conv2d1x177_out_feedback_valid_out_91),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_forked_and_and_conv2d1x17(LOGICAL,54)@138 + 1
    assign i_forked_and_and_conv2d1x17_qi = in_c1_eni23820_1_tpl & in_c1_eni23820_2_tpl;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_forked_and_and_conv2d1x17_delay ( .xin(i_forked_and_and_conv2d1x17_qi), .xout(i_forked_and_and_conv2d1x17_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist19_i_forked_and_and_conv2d1x17_q_2(DELAY,204)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist19_i_forked_and_and_conv2d1x17_q_2_q <= '0;
        end
        else
        begin
            redist19_i_forked_and_and_conv2d1x17_q_2_q <= $unsigned(i_forked_and_and_conv2d1x17_q);
        end
    end

    // i_llvm_fpga_fanout_i1_forked_and_and_fanout_adaptor_conv2d1x18(REG,61)@140 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_llvm_fpga_fanout_i1_forked_and_and_fanout_adaptor_conv2d1x18_q <= $unsigned(1'b0);
        end
        else
        begin
            i_llvm_fpga_fanout_i1_forked_and_and_fanout_adaptor_conv2d1x18_q <= redist19_i_forked_and_and_conv2d1x17_q_2_q;
        end
    end

    // redist16_sync_together185_aunroll_vunroll_x_in_c1_eni23820_23_tpl_3(DELAY,201)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist16_sync_together185_aunroll_vunroll_x_in_c1_eni23820_23_tpl_3_delay_0 <= '0;
            redist16_sync_together185_aunroll_vunroll_x_in_c1_eni23820_23_tpl_3_q <= '0;
        end
        else
        begin
            redist16_sync_together185_aunroll_vunroll_x_in_c1_eni23820_23_tpl_3_delay_0 <= $unsigned(in_c1_eni23820_23_tpl);
            redist16_sync_together185_aunroll_vunroll_x_in_c1_eni23820_23_tpl_3_q <= redist16_sync_together185_aunroll_vunroll_x_in_c1_eni23820_23_tpl_3_delay_0;
        end
    end

    // redist16_sync_together185_aunroll_vunroll_x_in_c1_eni23820_23_tpl_3_outputreg0(DELAY,217)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist16_sync_together185_aunroll_vunroll_x_in_c1_eni23820_23_tpl_3_outputreg0_q <= '0;
        end
        else
        begin
            redist16_sync_together185_aunroll_vunroll_x_in_c1_eni23820_23_tpl_3_outputreg0_q <= $unsigned(redist16_sync_together185_aunroll_vunroll_x_in_c1_eni23820_23_tpl_3_q);
        end
    end

    // i_llvm_fpga_pop_coalesce_f32_pop91_conv2d1x176(BLACKBOX,75)@141
    // out out_feedback_stall_out_91@20000000
    conv2d1x1_i_llvm_fpga_pop_coalesce_f32_pop91_0 thei_llvm_fpga_pop_coalesce_f32_pop91_conv2d1x176 (
        .in_data_in(redist16_sync_together185_aunroll_vunroll_x_in_c1_eni23820_23_tpl_3_outputreg0_q),
        .in_dir(i_llvm_fpga_fanout_i1_forked_and_and_fanout_adaptor_conv2d1x18_q),
        .in_feedback_in_91(i_llvm_fpga_push_f32_push91_conv2d1x177_out_feedback_out_91),
        .in_feedback_valid_in_91(i_llvm_fpga_push_f32_push91_conv2d1x177_out_feedback_valid_out_91),
        .in_predicate(i_llvm_fpga_fanout_i1_c1_ene4825_fanout_adaptor_conv2d1x13_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg51_q),
        .out_data_out(i_llvm_fpga_pop_coalesce_f32_pop91_conv2d1x176_out_data_out),
        .out_feedback_stall_out_91(i_llvm_fpga_pop_coalesce_f32_pop91_conv2d1x176_out_feedback_stall_out_91),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg49(REG,181)@140 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg49_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg49_q <= $unsigned(redist17_sync_together185_aunroll_vunroll_x_in_i_valid_2_q);
        end
    end

    // valid_fanout_reg50(REG,182)@140 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg50_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg50_q <= $unsigned(redist17_sync_together185_aunroll_vunroll_x_in_i_valid_2_q);
        end
    end

    // redist14_sync_together185_aunroll_vunroll_x_in_c1_eni23820_21_tpl_2(DELAY,199)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_sync_together185_aunroll_vunroll_x_in_c1_eni23820_21_tpl_2_delay_0 <= '0;
            redist14_sync_together185_aunroll_vunroll_x_in_c1_eni23820_21_tpl_2_q <= '0;
        end
        else
        begin
            redist14_sync_together185_aunroll_vunroll_x_in_c1_eni23820_21_tpl_2_delay_0 <= $unsigned(in_c1_eni23820_21_tpl);
            redist14_sync_together185_aunroll_vunroll_x_in_c1_eni23820_21_tpl_2_q <= redist14_sync_together185_aunroll_vunroll_x_in_c1_eni23820_21_tpl_2_delay_0;
        end
    end

    // i_llvm_fpga_fanout_i1_c1_ene21842_fanout_adaptor_conv2d1x15(REG,57)@140 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_llvm_fpga_fanout_i1_c1_ene21842_fanout_adaptor_conv2d1x15_q <= $unsigned(1'b0);
        end
        else
        begin
            i_llvm_fpga_fanout_i1_c1_ene21842_fanout_adaptor_conv2d1x15_q <= redist14_sync_together185_aunroll_vunroll_x_in_c1_eni23820_21_tpl_2_q;
        end
    end

    // i_llvm_fpga_push_f32_spec_select62_push95_conv2d1x174(BLACKBOX,114)@141
    // out out_feedback_out_95@20000000
    // out out_feedback_valid_out_95@20000000
    conv2d1x1_i_llvm_fpga_push_f32_spec_select62_push95_0 thei_llvm_fpga_push_f32_spec_select62_push95_conv2d1x174 (
        .in_c1_ene21842_fanout_adaptor(i_llvm_fpga_fanout_i1_c1_ene21842_fanout_adaptor_conv2d1x15_q),
        .in_data_in(i_llvm_fpga_pop_f32_spec_select62_pop95_conv2d1x173_out_data_out),
        .in_feedback_stall_in_95(i_llvm_fpga_pop_f32_spec_select62_pop95_conv2d1x173_out_feedback_stall_out_95),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg50_q),
        .out_data_out(),
        .out_feedback_out_95(i_llvm_fpga_push_f32_spec_select62_push95_conv2d1x174_out_feedback_out_95),
        .out_feedback_valid_out_95(i_llvm_fpga_push_f32_spec_select62_push95_conv2d1x174_out_feedback_valid_out_95),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist13_sync_together185_aunroll_vunroll_x_in_c1_eni23820_20_tpl_2(DELAY,198)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_sync_together185_aunroll_vunroll_x_in_c1_eni23820_20_tpl_2_delay_0 <= '0;
            redist13_sync_together185_aunroll_vunroll_x_in_c1_eni23820_20_tpl_2_q <= '0;
        end
        else
        begin
            redist13_sync_together185_aunroll_vunroll_x_in_c1_eni23820_20_tpl_2_delay_0 <= $unsigned(in_c1_eni23820_20_tpl);
            redist13_sync_together185_aunroll_vunroll_x_in_c1_eni23820_20_tpl_2_q <= redist13_sync_together185_aunroll_vunroll_x_in_c1_eni23820_20_tpl_2_delay_0;
        end
    end

    // i_llvm_fpga_fanout_i1_c1_ene20841_fanout_adaptor_conv2d1x14(REG,56)@140 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_llvm_fpga_fanout_i1_c1_ene20841_fanout_adaptor_conv2d1x14_q <= $unsigned(1'b0);
        end
        else
        begin
            i_llvm_fpga_fanout_i1_c1_ene20841_fanout_adaptor_conv2d1x14_q <= redist13_sync_together185_aunroll_vunroll_x_in_c1_eni23820_20_tpl_2_q;
        end
    end

    // i_llvm_fpga_pop_f32_spec_select62_pop95_conv2d1x173(BLACKBOX,88)@141
    // out out_feedback_stall_out_95@20000000
    conv2d1x1_i_llvm_fpga_pop_f32_spec_select62_pop95_0 thei_llvm_fpga_pop_f32_spec_select62_pop95_conv2d1x173 (
        .in_data_in(redist16_sync_together185_aunroll_vunroll_x_in_c1_eni23820_23_tpl_3_outputreg0_q),
        .in_dir(i_llvm_fpga_fanout_i1_c1_ene20841_fanout_adaptor_conv2d1x14_q),
        .in_feedback_in_95(i_llvm_fpga_push_f32_spec_select62_push95_conv2d1x174_out_feedback_out_95),
        .in_feedback_valid_in_95(i_llvm_fpga_push_f32_spec_select62_push95_conv2d1x174_out_feedback_valid_out_95),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg49_q),
        .out_data_out(i_llvm_fpga_pop_f32_spec_select62_pop95_conv2d1x173_out_data_out),
        .out_feedback_stall_out_95(i_llvm_fpga_pop_f32_spec_select62_pop95_conv2d1x173_out_feedback_stall_out_95),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist15_sync_together185_aunroll_vunroll_x_in_c1_eni23820_22_tpl_2(DELAY,200)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist15_sync_together185_aunroll_vunroll_x_in_c1_eni23820_22_tpl_2_delay_0 <= '0;
            redist15_sync_together185_aunroll_vunroll_x_in_c1_eni23820_22_tpl_2_q <= '0;
        end
        else
        begin
            redist15_sync_together185_aunroll_vunroll_x_in_c1_eni23820_22_tpl_2_delay_0 <= $unsigned(in_c1_eni23820_22_tpl);
            redist15_sync_together185_aunroll_vunroll_x_in_c1_eni23820_22_tpl_2_q <= redist15_sync_together185_aunroll_vunroll_x_in_c1_eni23820_22_tpl_2_delay_0;
        end
    end

    // i_llvm_fpga_fanout_i1_c1_ene22843_fanout_adaptor_conv2d1x16(REG,58)@140 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_llvm_fpga_fanout_i1_c1_ene22843_fanout_adaptor_conv2d1x16_q <= $unsigned(1'b0);
        end
        else
        begin
            i_llvm_fpga_fanout_i1_c1_ene22843_fanout_adaptor_conv2d1x16_q <= redist15_sync_together185_aunroll_vunroll_x_in_c1_eni23820_22_tpl_2_q;
        end
    end

    // i_select68_conv2d1x175(MUX,128)@141
    assign i_select68_conv2d1x175_s = i_llvm_fpga_fanout_i1_c1_ene22843_fanout_adaptor_conv2d1x16_q;
    always @(i_select68_conv2d1x175_s or i_llvm_fpga_pop_f32_spec_select62_pop95_conv2d1x173_out_data_out or i_llvm_fpga_pop_coalesce_f32_pop90_conv2d1x19_out_data_out)
    begin
        unique case (i_select68_conv2d1x175_s)
            1'b0 : i_select68_conv2d1x175_q = i_llvm_fpga_pop_f32_spec_select62_pop95_conv2d1x173_out_data_out;
            1'b1 : i_select68_conv2d1x175_q = i_llvm_fpga_pop_coalesce_f32_pop90_conv2d1x19_out_data_out;
            default : i_select68_conv2d1x175_q = 32'b0;
        endcase
    end

    // valid_fanout_reg47(REG,179)@140 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg47_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg47_q <= $unsigned(redist17_sync_together185_aunroll_vunroll_x_in_i_valid_2_q);
        end
    end

    // valid_fanout_reg48(REG,180)@140 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg48_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg48_q <= $unsigned(redist17_sync_together185_aunroll_vunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_push_f32_push96_conv2d1x171(BLACKBOX,102)@141
    // out out_feedback_out_96@20000000
    // out out_feedback_valid_out_96@20000000
    conv2d1x1_i_llvm_fpga_push_f32_push96_0 thei_llvm_fpga_push_f32_push96_conv2d1x171 (
        .in_c1_ene21842_fanout_adaptor(i_llvm_fpga_fanout_i1_c1_ene21842_fanout_adaptor_conv2d1x15_q),
        .in_data_in(i_llvm_fpga_pop_f32_pop96_conv2d1x170_out_data_out),
        .in_feedback_stall_in_96(i_llvm_fpga_pop_f32_pop96_conv2d1x170_out_feedback_stall_out_96),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg48_q),
        .out_data_out(),
        .out_feedback_out_96(i_llvm_fpga_push_f32_push96_conv2d1x171_out_feedback_out_96),
        .out_feedback_valid_out_96(i_llvm_fpga_push_f32_push96_conv2d1x171_out_feedback_valid_out_96),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_f32_pop96_conv2d1x170(BLACKBOX,76)@141
    // out out_feedback_stall_out_96@20000000
    conv2d1x1_i_llvm_fpga_pop_f32_pop96_0 thei_llvm_fpga_pop_f32_pop96_conv2d1x170 (
        .in_data_in(redist0_sync_together185_aunroll_vunroll_x_in_c1_eni23820_3_tpl_3_outputreg0_q),
        .in_dir(i_llvm_fpga_fanout_i1_c1_ene20841_fanout_adaptor_conv2d1x14_q),
        .in_feedback_in_96(i_llvm_fpga_push_f32_push96_conv2d1x171_out_feedback_out_96),
        .in_feedback_valid_in_96(i_llvm_fpga_push_f32_push96_conv2d1x171_out_feedback_valid_out_96),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg47_q),
        .out_data_out(i_llvm_fpga_pop_f32_pop96_conv2d1x170_out_data_out),
        .out_feedback_stall_out_96(i_llvm_fpga_pop_f32_pop96_conv2d1x170_out_feedback_stall_out_96),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_select65_conv2d1x172(MUX,127)@141
    assign i_select65_conv2d1x172_s = i_llvm_fpga_fanout_i1_c1_ene22843_fanout_adaptor_conv2d1x16_q;
    always @(i_select65_conv2d1x172_s or i_llvm_fpga_pop_f32_pop96_conv2d1x170_out_data_out or i_llvm_fpga_pop_coalesce_f32_pop89_conv2d1x110_out_data_out)
    begin
        unique case (i_select65_conv2d1x172_s)
            1'b0 : i_select65_conv2d1x172_q = i_llvm_fpga_pop_f32_pop96_conv2d1x170_out_data_out;
            1'b1 : i_select65_conv2d1x172_q = i_llvm_fpga_pop_coalesce_f32_pop89_conv2d1x110_out_data_out;
            default : i_select65_conv2d1x172_q = 32'b0;
        endcase
    end

    // valid_fanout_reg45(REG,177)@140 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg45_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg45_q <= $unsigned(redist17_sync_together185_aunroll_vunroll_x_in_i_valid_2_q);
        end
    end

    // valid_fanout_reg46(REG,178)@140 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg46_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg46_q <= $unsigned(redist17_sync_together185_aunroll_vunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_push_f32_spec_select32365_push97_conv2d1x168(BLACKBOX,103)@141
    // out out_feedback_out_97@20000000
    // out out_feedback_valid_out_97@20000000
    conv2d1x1_i_llvm_fpga_push_f32_spec_select32365_push97_0 thei_llvm_fpga_push_f32_spec_select32365_push97_conv2d1x168 (
        .in_c1_ene21842_fanout_adaptor(i_llvm_fpga_fanout_i1_c1_ene21842_fanout_adaptor_conv2d1x15_q),
        .in_data_in(i_llvm_fpga_pop_f32_spec_select32365_pop97_conv2d1x167_out_data_out),
        .in_feedback_stall_in_97(i_llvm_fpga_pop_f32_spec_select32365_pop97_conv2d1x167_out_feedback_stall_out_97),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg46_q),
        .out_data_out(),
        .out_feedback_out_97(i_llvm_fpga_push_f32_spec_select32365_push97_conv2d1x168_out_feedback_out_97),
        .out_feedback_valid_out_97(i_llvm_fpga_push_f32_spec_select32365_push97_conv2d1x168_out_feedback_valid_out_97),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_f32_spec_select32365_pop97_conv2d1x167(BLACKBOX,77)@141
    // out out_feedback_stall_out_97@20000000
    conv2d1x1_i_llvm_fpga_pop_f32_spec_select32365_pop97_0 thei_llvm_fpga_pop_f32_spec_select32365_pop97_conv2d1x167 (
        .in_data_in(redist2_sync_together185_aunroll_vunroll_x_in_c1_eni23820_5_tpl_3_outputreg0_q),
        .in_dir(i_llvm_fpga_fanout_i1_c1_ene20841_fanout_adaptor_conv2d1x14_q),
        .in_feedback_in_97(i_llvm_fpga_push_f32_spec_select32365_push97_conv2d1x168_out_feedback_out_97),
        .in_feedback_valid_in_97(i_llvm_fpga_push_f32_spec_select32365_push97_conv2d1x168_out_feedback_valid_out_97),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg45_q),
        .out_data_out(i_llvm_fpga_pop_f32_spec_select32365_pop97_conv2d1x167_out_data_out),
        .out_feedback_stall_out_97(i_llvm_fpga_pop_f32_spec_select32365_pop97_conv2d1x167_out_feedback_stall_out_97),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_select62_conv2d1x169(MUX,126)@141
    assign i_select62_conv2d1x169_s = i_llvm_fpga_fanout_i1_c1_ene22843_fanout_adaptor_conv2d1x16_q;
    always @(i_select62_conv2d1x169_s or i_llvm_fpga_pop_f32_spec_select32365_pop97_conv2d1x167_out_data_out or i_llvm_fpga_pop_coalesce_f32_pop88_conv2d1x111_out_data_out)
    begin
        unique case (i_select62_conv2d1x169_s)
            1'b0 : i_select62_conv2d1x169_q = i_llvm_fpga_pop_f32_spec_select32365_pop97_conv2d1x167_out_data_out;
            1'b1 : i_select62_conv2d1x169_q = i_llvm_fpga_pop_coalesce_f32_pop88_conv2d1x111_out_data_out;
            default : i_select62_conv2d1x169_q = 32'b0;
        endcase
    end

    // valid_fanout_reg43(REG,175)@140 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg43_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg43_q <= $unsigned(redist17_sync_together185_aunroll_vunroll_x_in_i_valid_2_q);
        end
    end

    // valid_fanout_reg44(REG,176)@140 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg44_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg44_q <= $unsigned(redist17_sync_together185_aunroll_vunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_push_f32_spec_select32468_push98_conv2d1x165(BLACKBOX,104)@141
    // out out_feedback_out_98@20000000
    // out out_feedback_valid_out_98@20000000
    conv2d1x1_i_llvm_fpga_push_f32_spec_select32468_push98_0 thei_llvm_fpga_push_f32_spec_select32468_push98_conv2d1x165 (
        .in_c1_ene21842_fanout_adaptor(i_llvm_fpga_fanout_i1_c1_ene21842_fanout_adaptor_conv2d1x15_q),
        .in_data_in(i_llvm_fpga_pop_f32_spec_select32468_pop98_conv2d1x164_out_data_out),
        .in_feedback_stall_in_98(i_llvm_fpga_pop_f32_spec_select32468_pop98_conv2d1x164_out_feedback_stall_out_98),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg44_q),
        .out_data_out(),
        .out_feedback_out_98(i_llvm_fpga_push_f32_spec_select32468_push98_conv2d1x165_out_feedback_out_98),
        .out_feedback_valid_out_98(i_llvm_fpga_push_f32_spec_select32468_push98_conv2d1x165_out_feedback_valid_out_98),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_f32_spec_select32468_pop98_conv2d1x164(BLACKBOX,78)@141
    // out out_feedback_stall_out_98@20000000
    conv2d1x1_i_llvm_fpga_pop_f32_spec_select32468_pop98_0 thei_llvm_fpga_pop_f32_spec_select32468_pop98_conv2d1x164 (
        .in_data_in(redist3_sync_together185_aunroll_vunroll_x_in_c1_eni23820_6_tpl_3_outputreg0_q),
        .in_dir(i_llvm_fpga_fanout_i1_c1_ene20841_fanout_adaptor_conv2d1x14_q),
        .in_feedback_in_98(i_llvm_fpga_push_f32_spec_select32468_push98_conv2d1x165_out_feedback_out_98),
        .in_feedback_valid_in_98(i_llvm_fpga_push_f32_spec_select32468_push98_conv2d1x165_out_feedback_valid_out_98),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg43_q),
        .out_data_out(i_llvm_fpga_pop_f32_spec_select32468_pop98_conv2d1x164_out_data_out),
        .out_feedback_stall_out_98(i_llvm_fpga_pop_f32_spec_select32468_pop98_conv2d1x164_out_feedback_stall_out_98),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_select59_conv2d1x166(MUX,125)@141
    assign i_select59_conv2d1x166_s = i_llvm_fpga_fanout_i1_c1_ene22843_fanout_adaptor_conv2d1x16_q;
    always @(i_select59_conv2d1x166_s or i_llvm_fpga_pop_f32_spec_select32468_pop98_conv2d1x164_out_data_out or i_llvm_fpga_pop_coalesce_f32_pop87_conv2d1x112_out_data_out)
    begin
        unique case (i_select59_conv2d1x166_s)
            1'b0 : i_select59_conv2d1x166_q = i_llvm_fpga_pop_f32_spec_select32468_pop98_conv2d1x164_out_data_out;
            1'b1 : i_select59_conv2d1x166_q = i_llvm_fpga_pop_coalesce_f32_pop87_conv2d1x112_out_data_out;
            default : i_select59_conv2d1x166_q = 32'b0;
        endcase
    end

    // valid_fanout_reg41(REG,173)@140 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg41_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg41_q <= $unsigned(redist17_sync_together185_aunroll_vunroll_x_in_i_valid_2_q);
        end
    end

    // valid_fanout_reg42(REG,174)@140 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg42_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg42_q <= $unsigned(redist17_sync_together185_aunroll_vunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_push_f32_spec_select32571_push99_conv2d1x162(BLACKBOX,105)@141
    // out out_feedback_out_99@20000000
    // out out_feedback_valid_out_99@20000000
    conv2d1x1_i_llvm_fpga_push_f32_spec_select32571_push99_0 thei_llvm_fpga_push_f32_spec_select32571_push99_conv2d1x162 (
        .in_c1_ene21842_fanout_adaptor(i_llvm_fpga_fanout_i1_c1_ene21842_fanout_adaptor_conv2d1x15_q),
        .in_data_in(i_llvm_fpga_pop_f32_spec_select32571_pop99_conv2d1x161_out_data_out),
        .in_feedback_stall_in_99(i_llvm_fpga_pop_f32_spec_select32571_pop99_conv2d1x161_out_feedback_stall_out_99),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg42_q),
        .out_data_out(),
        .out_feedback_out_99(i_llvm_fpga_push_f32_spec_select32571_push99_conv2d1x162_out_feedback_out_99),
        .out_feedback_valid_out_99(i_llvm_fpga_push_f32_spec_select32571_push99_conv2d1x162_out_feedback_valid_out_99),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_f32_spec_select32571_pop99_conv2d1x161(BLACKBOX,79)@141
    // out out_feedback_stall_out_99@20000000
    conv2d1x1_i_llvm_fpga_pop_f32_spec_select32571_pop99_0 thei_llvm_fpga_pop_f32_spec_select32571_pop99_conv2d1x161 (
        .in_data_in(redist4_sync_together185_aunroll_vunroll_x_in_c1_eni23820_7_tpl_3_outputreg0_q),
        .in_dir(i_llvm_fpga_fanout_i1_c1_ene20841_fanout_adaptor_conv2d1x14_q),
        .in_feedback_in_99(i_llvm_fpga_push_f32_spec_select32571_push99_conv2d1x162_out_feedback_out_99),
        .in_feedback_valid_in_99(i_llvm_fpga_push_f32_spec_select32571_push99_conv2d1x162_out_feedback_valid_out_99),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg41_q),
        .out_data_out(i_llvm_fpga_pop_f32_spec_select32571_pop99_conv2d1x161_out_data_out),
        .out_feedback_stall_out_99(i_llvm_fpga_pop_f32_spec_select32571_pop99_conv2d1x161_out_feedback_stall_out_99),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_select56_conv2d1x163(MUX,124)@141
    assign i_select56_conv2d1x163_s = i_llvm_fpga_fanout_i1_c1_ene22843_fanout_adaptor_conv2d1x16_q;
    always @(i_select56_conv2d1x163_s or i_llvm_fpga_pop_f32_spec_select32571_pop99_conv2d1x161_out_data_out or i_llvm_fpga_pop_coalesce_f32_pop86_conv2d1x113_out_data_out)
    begin
        unique case (i_select56_conv2d1x163_s)
            1'b0 : i_select56_conv2d1x163_q = i_llvm_fpga_pop_f32_spec_select32571_pop99_conv2d1x161_out_data_out;
            1'b1 : i_select56_conv2d1x163_q = i_llvm_fpga_pop_coalesce_f32_pop86_conv2d1x113_out_data_out;
            default : i_select56_conv2d1x163_q = 32'b0;
        endcase
    end

    // valid_fanout_reg39(REG,171)@140 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg39_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg39_q <= $unsigned(redist17_sync_together185_aunroll_vunroll_x_in_i_valid_2_q);
        end
    end

    // valid_fanout_reg40(REG,172)@140 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg40_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg40_q <= $unsigned(redist17_sync_together185_aunroll_vunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_push_f32_spec_select32674_push100_conv2d1x159(BLACKBOX,106)@141
    // out out_feedback_out_100@20000000
    // out out_feedback_valid_out_100@20000000
    conv2d1x1_i_llvm_fpga_push_f32_spec_select32674_push100_0 thei_llvm_fpga_push_f32_spec_select32674_push100_conv2d1x159 (
        .in_c1_ene21842_fanout_adaptor(i_llvm_fpga_fanout_i1_c1_ene21842_fanout_adaptor_conv2d1x15_q),
        .in_data_in(i_llvm_fpga_pop_f32_spec_select32674_pop100_conv2d1x158_out_data_out),
        .in_feedback_stall_in_100(i_llvm_fpga_pop_f32_spec_select32674_pop100_conv2d1x158_out_feedback_stall_out_100),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg40_q),
        .out_data_out(),
        .out_feedback_out_100(i_llvm_fpga_push_f32_spec_select32674_push100_conv2d1x159_out_feedback_out_100),
        .out_feedback_valid_out_100(i_llvm_fpga_push_f32_spec_select32674_push100_conv2d1x159_out_feedback_valid_out_100),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_f32_spec_select32674_pop100_conv2d1x158(BLACKBOX,80)@141
    // out out_feedback_stall_out_100@20000000
    conv2d1x1_i_llvm_fpga_pop_f32_spec_select32674_pop100_0 thei_llvm_fpga_pop_f32_spec_select32674_pop100_conv2d1x158 (
        .in_data_in(redist5_sync_together185_aunroll_vunroll_x_in_c1_eni23820_8_tpl_3_outputreg0_q),
        .in_dir(i_llvm_fpga_fanout_i1_c1_ene20841_fanout_adaptor_conv2d1x14_q),
        .in_feedback_in_100(i_llvm_fpga_push_f32_spec_select32674_push100_conv2d1x159_out_feedback_out_100),
        .in_feedback_valid_in_100(i_llvm_fpga_push_f32_spec_select32674_push100_conv2d1x159_out_feedback_valid_out_100),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg39_q),
        .out_data_out(i_llvm_fpga_pop_f32_spec_select32674_pop100_conv2d1x158_out_data_out),
        .out_feedback_stall_out_100(i_llvm_fpga_pop_f32_spec_select32674_pop100_conv2d1x158_out_feedback_stall_out_100),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_select53_conv2d1x160(MUX,123)@141
    assign i_select53_conv2d1x160_s = i_llvm_fpga_fanout_i1_c1_ene22843_fanout_adaptor_conv2d1x16_q;
    always @(i_select53_conv2d1x160_s or i_llvm_fpga_pop_f32_spec_select32674_pop100_conv2d1x158_out_data_out or i_llvm_fpga_pop_coalesce_f32_pop85_conv2d1x114_out_data_out)
    begin
        unique case (i_select53_conv2d1x160_s)
            1'b0 : i_select53_conv2d1x160_q = i_llvm_fpga_pop_f32_spec_select32674_pop100_conv2d1x158_out_data_out;
            1'b1 : i_select53_conv2d1x160_q = i_llvm_fpga_pop_coalesce_f32_pop85_conv2d1x114_out_data_out;
            default : i_select53_conv2d1x160_q = 32'b0;
        endcase
    end

    // valid_fanout_reg37(REG,169)@140 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg37_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg37_q <= $unsigned(redist17_sync_together185_aunroll_vunroll_x_in_i_valid_2_q);
        end
    end

    // valid_fanout_reg38(REG,170)@140 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg38_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg38_q <= $unsigned(redist17_sync_together185_aunroll_vunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_push_f32_spec_select32777_push101_conv2d1x156(BLACKBOX,107)@141
    // out out_feedback_out_101@20000000
    // out out_feedback_valid_out_101@20000000
    conv2d1x1_i_llvm_fpga_push_f32_spec_select32777_push101_0 thei_llvm_fpga_push_f32_spec_select32777_push101_conv2d1x156 (
        .in_c1_ene21842_fanout_adaptor(i_llvm_fpga_fanout_i1_c1_ene21842_fanout_adaptor_conv2d1x15_q),
        .in_data_in(i_llvm_fpga_pop_f32_spec_select32777_pop101_conv2d1x155_out_data_out),
        .in_feedback_stall_in_101(i_llvm_fpga_pop_f32_spec_select32777_pop101_conv2d1x155_out_feedback_stall_out_101),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg38_q),
        .out_data_out(),
        .out_feedback_out_101(i_llvm_fpga_push_f32_spec_select32777_push101_conv2d1x156_out_feedback_out_101),
        .out_feedback_valid_out_101(i_llvm_fpga_push_f32_spec_select32777_push101_conv2d1x156_out_feedback_valid_out_101),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_f32_spec_select32777_pop101_conv2d1x155(BLACKBOX,81)@141
    // out out_feedback_stall_out_101@20000000
    conv2d1x1_i_llvm_fpga_pop_f32_spec_select32777_pop101_0 thei_llvm_fpga_pop_f32_spec_select32777_pop101_conv2d1x155 (
        .in_data_in(redist6_sync_together185_aunroll_vunroll_x_in_c1_eni23820_9_tpl_3_outputreg0_q),
        .in_dir(i_llvm_fpga_fanout_i1_c1_ene20841_fanout_adaptor_conv2d1x14_q),
        .in_feedback_in_101(i_llvm_fpga_push_f32_spec_select32777_push101_conv2d1x156_out_feedback_out_101),
        .in_feedback_valid_in_101(i_llvm_fpga_push_f32_spec_select32777_push101_conv2d1x156_out_feedback_valid_out_101),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg37_q),
        .out_data_out(i_llvm_fpga_pop_f32_spec_select32777_pop101_conv2d1x155_out_data_out),
        .out_feedback_stall_out_101(i_llvm_fpga_pop_f32_spec_select32777_pop101_conv2d1x155_out_feedback_stall_out_101),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_select50_conv2d1x157(MUX,122)@141
    assign i_select50_conv2d1x157_s = i_llvm_fpga_fanout_i1_c1_ene22843_fanout_adaptor_conv2d1x16_q;
    always @(i_select50_conv2d1x157_s or i_llvm_fpga_pop_f32_spec_select32777_pop101_conv2d1x155_out_data_out or i_llvm_fpga_pop_coalesce_f32_pop84_conv2d1x115_out_data_out)
    begin
        unique case (i_select50_conv2d1x157_s)
            1'b0 : i_select50_conv2d1x157_q = i_llvm_fpga_pop_f32_spec_select32777_pop101_conv2d1x155_out_data_out;
            1'b1 : i_select50_conv2d1x157_q = i_llvm_fpga_pop_coalesce_f32_pop84_conv2d1x115_out_data_out;
            default : i_select50_conv2d1x157_q = 32'b0;
        endcase
    end

    // valid_fanout_reg35(REG,167)@140 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg35_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg35_q <= $unsigned(redist17_sync_together185_aunroll_vunroll_x_in_i_valid_2_q);
        end
    end

    // valid_fanout_reg36(REG,168)@140 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg36_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg36_q <= $unsigned(redist17_sync_together185_aunroll_vunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_push_f32_spec_select32880_push102_conv2d1x153(BLACKBOX,108)@141
    // out out_feedback_out_102@20000000
    // out out_feedback_valid_out_102@20000000
    conv2d1x1_i_llvm_fpga_push_f32_spec_select32880_push102_0 thei_llvm_fpga_push_f32_spec_select32880_push102_conv2d1x153 (
        .in_c1_ene21842_fanout_adaptor(i_llvm_fpga_fanout_i1_c1_ene21842_fanout_adaptor_conv2d1x15_q),
        .in_data_in(i_llvm_fpga_pop_f32_spec_select32880_pop102_conv2d1x152_out_data_out),
        .in_feedback_stall_in_102(i_llvm_fpga_pop_f32_spec_select32880_pop102_conv2d1x152_out_feedback_stall_out_102),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg36_q),
        .out_data_out(),
        .out_feedback_out_102(i_llvm_fpga_push_f32_spec_select32880_push102_conv2d1x153_out_feedback_out_102),
        .out_feedback_valid_out_102(i_llvm_fpga_push_f32_spec_select32880_push102_conv2d1x153_out_feedback_valid_out_102),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_f32_spec_select32880_pop102_conv2d1x152(BLACKBOX,82)@141
    // out out_feedback_stall_out_102@20000000
    conv2d1x1_i_llvm_fpga_pop_f32_spec_select32880_pop102_0 thei_llvm_fpga_pop_f32_spec_select32880_pop102_conv2d1x152 (
        .in_data_in(redist7_sync_together185_aunroll_vunroll_x_in_c1_eni23820_10_tpl_3_outputreg0_q),
        .in_dir(i_llvm_fpga_fanout_i1_c1_ene20841_fanout_adaptor_conv2d1x14_q),
        .in_feedback_in_102(i_llvm_fpga_push_f32_spec_select32880_push102_conv2d1x153_out_feedback_out_102),
        .in_feedback_valid_in_102(i_llvm_fpga_push_f32_spec_select32880_push102_conv2d1x153_out_feedback_valid_out_102),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg35_q),
        .out_data_out(i_llvm_fpga_pop_f32_spec_select32880_pop102_conv2d1x152_out_data_out),
        .out_feedback_stall_out_102(i_llvm_fpga_pop_f32_spec_select32880_pop102_conv2d1x152_out_feedback_stall_out_102),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_select47_conv2d1x154(MUX,121)@141
    assign i_select47_conv2d1x154_s = i_llvm_fpga_fanout_i1_c1_ene22843_fanout_adaptor_conv2d1x16_q;
    always @(i_select47_conv2d1x154_s or i_llvm_fpga_pop_f32_spec_select32880_pop102_conv2d1x152_out_data_out or i_llvm_fpga_pop_coalesce_f32_pop83_conv2d1x116_out_data_out)
    begin
        unique case (i_select47_conv2d1x154_s)
            1'b0 : i_select47_conv2d1x154_q = i_llvm_fpga_pop_f32_spec_select32880_pop102_conv2d1x152_out_data_out;
            1'b1 : i_select47_conv2d1x154_q = i_llvm_fpga_pop_coalesce_f32_pop83_conv2d1x116_out_data_out;
            default : i_select47_conv2d1x154_q = 32'b0;
        endcase
    end

    // valid_fanout_reg33(REG,165)@140 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg33_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg33_q <= $unsigned(redist17_sync_together185_aunroll_vunroll_x_in_i_valid_2_q);
        end
    end

    // valid_fanout_reg34(REG,166)@140 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg34_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg34_q <= $unsigned(redist17_sync_together185_aunroll_vunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_push_f32_spec_select32983_push103_conv2d1x150(BLACKBOX,109)@141
    // out out_feedback_out_103@20000000
    // out out_feedback_valid_out_103@20000000
    conv2d1x1_i_llvm_fpga_push_f32_spec_select32983_push103_0 thei_llvm_fpga_push_f32_spec_select32983_push103_conv2d1x150 (
        .in_c1_ene21842_fanout_adaptor(i_llvm_fpga_fanout_i1_c1_ene21842_fanout_adaptor_conv2d1x15_q),
        .in_data_in(i_llvm_fpga_pop_f32_spec_select32983_pop103_conv2d1x149_out_data_out),
        .in_feedback_stall_in_103(i_llvm_fpga_pop_f32_spec_select32983_pop103_conv2d1x149_out_feedback_stall_out_103),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg34_q),
        .out_data_out(),
        .out_feedback_out_103(i_llvm_fpga_push_f32_spec_select32983_push103_conv2d1x150_out_feedback_out_103),
        .out_feedback_valid_out_103(i_llvm_fpga_push_f32_spec_select32983_push103_conv2d1x150_out_feedback_valid_out_103),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_f32_spec_select32983_pop103_conv2d1x149(BLACKBOX,83)@141
    // out out_feedback_stall_out_103@20000000
    conv2d1x1_i_llvm_fpga_pop_f32_spec_select32983_pop103_0 thei_llvm_fpga_pop_f32_spec_select32983_pop103_conv2d1x149 (
        .in_data_in(redist8_sync_together185_aunroll_vunroll_x_in_c1_eni23820_11_tpl_3_outputreg0_q),
        .in_dir(i_llvm_fpga_fanout_i1_c1_ene20841_fanout_adaptor_conv2d1x14_q),
        .in_feedback_in_103(i_llvm_fpga_push_f32_spec_select32983_push103_conv2d1x150_out_feedback_out_103),
        .in_feedback_valid_in_103(i_llvm_fpga_push_f32_spec_select32983_push103_conv2d1x150_out_feedback_valid_out_103),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg33_q),
        .out_data_out(i_llvm_fpga_pop_f32_spec_select32983_pop103_conv2d1x149_out_data_out),
        .out_feedback_stall_out_103(i_llvm_fpga_pop_f32_spec_select32983_pop103_conv2d1x149_out_feedback_stall_out_103),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_select44_conv2d1x151(MUX,120)@141
    assign i_select44_conv2d1x151_s = i_llvm_fpga_fanout_i1_c1_ene22843_fanout_adaptor_conv2d1x16_q;
    always @(i_select44_conv2d1x151_s or i_llvm_fpga_pop_f32_spec_select32983_pop103_conv2d1x149_out_data_out or i_llvm_fpga_pop_coalesce_f32_pop82_conv2d1x117_out_data_out)
    begin
        unique case (i_select44_conv2d1x151_s)
            1'b0 : i_select44_conv2d1x151_q = i_llvm_fpga_pop_f32_spec_select32983_pop103_conv2d1x149_out_data_out;
            1'b1 : i_select44_conv2d1x151_q = i_llvm_fpga_pop_coalesce_f32_pop82_conv2d1x117_out_data_out;
            default : i_select44_conv2d1x151_q = 32'b0;
        endcase
    end

    // valid_fanout_reg31(REG,163)@140 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg31_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg31_q <= $unsigned(redist17_sync_together185_aunroll_vunroll_x_in_i_valid_2_q);
        end
    end

    // valid_fanout_reg32(REG,164)@140 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg32_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg32_q <= $unsigned(redist17_sync_together185_aunroll_vunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_push_f32_spec_select33086_push104_conv2d1x147(BLACKBOX,110)@141
    // out out_feedback_out_104@20000000
    // out out_feedback_valid_out_104@20000000
    conv2d1x1_i_llvm_fpga_push_f32_spec_select33086_push104_0 thei_llvm_fpga_push_f32_spec_select33086_push104_conv2d1x147 (
        .in_c1_ene21842_fanout_adaptor(i_llvm_fpga_fanout_i1_c1_ene21842_fanout_adaptor_conv2d1x15_q),
        .in_data_in(i_llvm_fpga_pop_f32_spec_select33086_pop104_conv2d1x146_out_data_out),
        .in_feedback_stall_in_104(i_llvm_fpga_pop_f32_spec_select33086_pop104_conv2d1x146_out_feedback_stall_out_104),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg32_q),
        .out_data_out(),
        .out_feedback_out_104(i_llvm_fpga_push_f32_spec_select33086_push104_conv2d1x147_out_feedback_out_104),
        .out_feedback_valid_out_104(i_llvm_fpga_push_f32_spec_select33086_push104_conv2d1x147_out_feedback_valid_out_104),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_f32_spec_select33086_pop104_conv2d1x146(BLACKBOX,84)@141
    // out out_feedback_stall_out_104@20000000
    conv2d1x1_i_llvm_fpga_pop_f32_spec_select33086_pop104_0 thei_llvm_fpga_pop_f32_spec_select33086_pop104_conv2d1x146 (
        .in_data_in(redist9_sync_together185_aunroll_vunroll_x_in_c1_eni23820_12_tpl_3_outputreg0_q),
        .in_dir(i_llvm_fpga_fanout_i1_c1_ene20841_fanout_adaptor_conv2d1x14_q),
        .in_feedback_in_104(i_llvm_fpga_push_f32_spec_select33086_push104_conv2d1x147_out_feedback_out_104),
        .in_feedback_valid_in_104(i_llvm_fpga_push_f32_spec_select33086_push104_conv2d1x147_out_feedback_valid_out_104),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg31_q),
        .out_data_out(i_llvm_fpga_pop_f32_spec_select33086_pop104_conv2d1x146_out_data_out),
        .out_feedback_stall_out_104(i_llvm_fpga_pop_f32_spec_select33086_pop104_conv2d1x146_out_feedback_stall_out_104),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_select41_conv2d1x148(MUX,119)@141
    assign i_select41_conv2d1x148_s = i_llvm_fpga_fanout_i1_c1_ene22843_fanout_adaptor_conv2d1x16_q;
    always @(i_select41_conv2d1x148_s or i_llvm_fpga_pop_f32_spec_select33086_pop104_conv2d1x146_out_data_out or i_llvm_fpga_pop_coalesce_f32_pop81_conv2d1x118_out_data_out)
    begin
        unique case (i_select41_conv2d1x148_s)
            1'b0 : i_select41_conv2d1x148_q = i_llvm_fpga_pop_f32_spec_select33086_pop104_conv2d1x146_out_data_out;
            1'b1 : i_select41_conv2d1x148_q = i_llvm_fpga_pop_coalesce_f32_pop81_conv2d1x118_out_data_out;
            default : i_select41_conv2d1x148_q = 32'b0;
        endcase
    end

    // valid_fanout_reg29(REG,161)@140 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg29_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg29_q <= $unsigned(redist17_sync_together185_aunroll_vunroll_x_in_i_valid_2_q);
        end
    end

    // valid_fanout_reg30(REG,162)@140 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg30_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg30_q <= $unsigned(redist17_sync_together185_aunroll_vunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_push_f32_spec_select33189_push105_conv2d1x144(BLACKBOX,111)@141
    // out out_feedback_out_105@20000000
    // out out_feedback_valid_out_105@20000000
    conv2d1x1_i_llvm_fpga_push_f32_spec_select33189_push105_0 thei_llvm_fpga_push_f32_spec_select33189_push105_conv2d1x144 (
        .in_c1_ene21842_fanout_adaptor(i_llvm_fpga_fanout_i1_c1_ene21842_fanout_adaptor_conv2d1x15_q),
        .in_data_in(i_llvm_fpga_pop_f32_spec_select33189_pop105_conv2d1x143_out_data_out),
        .in_feedback_stall_in_105(i_llvm_fpga_pop_f32_spec_select33189_pop105_conv2d1x143_out_feedback_stall_out_105),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg30_q),
        .out_data_out(),
        .out_feedback_out_105(i_llvm_fpga_push_f32_spec_select33189_push105_conv2d1x144_out_feedback_out_105),
        .out_feedback_valid_out_105(i_llvm_fpga_push_f32_spec_select33189_push105_conv2d1x144_out_feedback_valid_out_105),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_f32_spec_select33189_pop105_conv2d1x143(BLACKBOX,85)@141
    // out out_feedback_stall_out_105@20000000
    conv2d1x1_i_llvm_fpga_pop_f32_spec_select33189_pop105_0 thei_llvm_fpga_pop_f32_spec_select33189_pop105_conv2d1x143 (
        .in_data_in(redist10_sync_together185_aunroll_vunroll_x_in_c1_eni23820_13_tpl_3_outputreg0_q),
        .in_dir(i_llvm_fpga_fanout_i1_c1_ene20841_fanout_adaptor_conv2d1x14_q),
        .in_feedback_in_105(i_llvm_fpga_push_f32_spec_select33189_push105_conv2d1x144_out_feedback_out_105),
        .in_feedback_valid_in_105(i_llvm_fpga_push_f32_spec_select33189_push105_conv2d1x144_out_feedback_valid_out_105),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg29_q),
        .out_data_out(i_llvm_fpga_pop_f32_spec_select33189_pop105_conv2d1x143_out_data_out),
        .out_feedback_stall_out_105(i_llvm_fpga_pop_f32_spec_select33189_pop105_conv2d1x143_out_feedback_stall_out_105),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_select38_conv2d1x145(MUX,118)@141
    assign i_select38_conv2d1x145_s = i_llvm_fpga_fanout_i1_c1_ene22843_fanout_adaptor_conv2d1x16_q;
    always @(i_select38_conv2d1x145_s or i_llvm_fpga_pop_f32_spec_select33189_pop105_conv2d1x143_out_data_out or i_llvm_fpga_pop_coalesce_f32_pop80_conv2d1x119_out_data_out)
    begin
        unique case (i_select38_conv2d1x145_s)
            1'b0 : i_select38_conv2d1x145_q = i_llvm_fpga_pop_f32_spec_select33189_pop105_conv2d1x143_out_data_out;
            1'b1 : i_select38_conv2d1x145_q = i_llvm_fpga_pop_coalesce_f32_pop80_conv2d1x119_out_data_out;
            default : i_select38_conv2d1x145_q = 32'b0;
        endcase
    end

    // valid_fanout_reg27(REG,159)@140 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg27_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg27_q <= $unsigned(redist17_sync_together185_aunroll_vunroll_x_in_i_valid_2_q);
        end
    end

    // valid_fanout_reg28(REG,160)@140 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg28_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg28_q <= $unsigned(redist17_sync_together185_aunroll_vunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_push_f32_spec_select33292_push106_conv2d1x141(BLACKBOX,112)@141
    // out out_feedback_out_106@20000000
    // out out_feedback_valid_out_106@20000000
    conv2d1x1_i_llvm_fpga_push_f32_spec_select33292_push106_0 thei_llvm_fpga_push_f32_spec_select33292_push106_conv2d1x141 (
        .in_c1_ene21842_fanout_adaptor(i_llvm_fpga_fanout_i1_c1_ene21842_fanout_adaptor_conv2d1x15_q),
        .in_data_in(i_llvm_fpga_pop_f32_spec_select33292_pop106_conv2d1x140_out_data_out),
        .in_feedback_stall_in_106(i_llvm_fpga_pop_f32_spec_select33292_pop106_conv2d1x140_out_feedback_stall_out_106),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg28_q),
        .out_data_out(),
        .out_feedback_out_106(i_llvm_fpga_push_f32_spec_select33292_push106_conv2d1x141_out_feedback_out_106),
        .out_feedback_valid_out_106(i_llvm_fpga_push_f32_spec_select33292_push106_conv2d1x141_out_feedback_valid_out_106),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_f32_spec_select33292_pop106_conv2d1x140(BLACKBOX,86)@141
    // out out_feedback_stall_out_106@20000000
    conv2d1x1_i_llvm_fpga_pop_f32_spec_select33292_pop106_0 thei_llvm_fpga_pop_f32_spec_select33292_pop106_conv2d1x140 (
        .in_data_in(redist11_sync_together185_aunroll_vunroll_x_in_c1_eni23820_14_tpl_3_outputreg0_q),
        .in_dir(i_llvm_fpga_fanout_i1_c1_ene20841_fanout_adaptor_conv2d1x14_q),
        .in_feedback_in_106(i_llvm_fpga_push_f32_spec_select33292_push106_conv2d1x141_out_feedback_out_106),
        .in_feedback_valid_in_106(i_llvm_fpga_push_f32_spec_select33292_push106_conv2d1x141_out_feedback_valid_out_106),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg27_q),
        .out_data_out(i_llvm_fpga_pop_f32_spec_select33292_pop106_conv2d1x140_out_data_out),
        .out_feedback_stall_out_106(i_llvm_fpga_pop_f32_spec_select33292_pop106_conv2d1x140_out_feedback_stall_out_106),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_select35_conv2d1x142(MUX,117)@141
    assign i_select35_conv2d1x142_s = i_llvm_fpga_fanout_i1_c1_ene22843_fanout_adaptor_conv2d1x16_q;
    always @(i_select35_conv2d1x142_s or i_llvm_fpga_pop_f32_spec_select33292_pop106_conv2d1x140_out_data_out or i_llvm_fpga_pop_coalesce_f32_pop79_conv2d1x120_out_data_out)
    begin
        unique case (i_select35_conv2d1x142_s)
            1'b0 : i_select35_conv2d1x142_q = i_llvm_fpga_pop_f32_spec_select33292_pop106_conv2d1x140_out_data_out;
            1'b1 : i_select35_conv2d1x142_q = i_llvm_fpga_pop_coalesce_f32_pop79_conv2d1x120_out_data_out;
            default : i_select35_conv2d1x142_q = 32'b0;
        endcase
    end

    // valid_fanout_reg25(REG,157)@140 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg25_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg25_q <= $unsigned(redist17_sync_together185_aunroll_vunroll_x_in_i_valid_2_q);
        end
    end

    // valid_fanout_reg26(REG,158)@140 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg26_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg26_q <= $unsigned(redist17_sync_together185_aunroll_vunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_push_f32_spec_select33395_push107_conv2d1x138(BLACKBOX,113)@141
    // out out_feedback_out_107@20000000
    // out out_feedback_valid_out_107@20000000
    conv2d1x1_i_llvm_fpga_push_f32_spec_select33395_push107_0 thei_llvm_fpga_push_f32_spec_select33395_push107_conv2d1x138 (
        .in_c1_ene21842_fanout_adaptor(i_llvm_fpga_fanout_i1_c1_ene21842_fanout_adaptor_conv2d1x15_q),
        .in_data_in(i_llvm_fpga_pop_f32_spec_select33395_pop107_conv2d1x137_out_data_out),
        .in_feedback_stall_in_107(i_llvm_fpga_pop_f32_spec_select33395_pop107_conv2d1x137_out_feedback_stall_out_107),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg26_q),
        .out_data_out(),
        .out_feedback_out_107(i_llvm_fpga_push_f32_spec_select33395_push107_conv2d1x138_out_feedback_out_107),
        .out_feedback_valid_out_107(i_llvm_fpga_push_f32_spec_select33395_push107_conv2d1x138_out_feedback_valid_out_107),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_f32_spec_select33395_pop107_conv2d1x137(BLACKBOX,87)@141
    // out out_feedback_stall_out_107@20000000
    conv2d1x1_i_llvm_fpga_pop_f32_spec_select33395_pop107_0 thei_llvm_fpga_pop_f32_spec_select33395_pop107_conv2d1x137 (
        .in_data_in(redist12_sync_together185_aunroll_vunroll_x_in_c1_eni23820_15_tpl_3_outputreg0_q),
        .in_dir(i_llvm_fpga_fanout_i1_c1_ene20841_fanout_adaptor_conv2d1x14_q),
        .in_feedback_in_107(i_llvm_fpga_push_f32_spec_select33395_push107_conv2d1x138_out_feedback_out_107),
        .in_feedback_valid_in_107(i_llvm_fpga_push_f32_spec_select33395_push107_conv2d1x138_out_feedback_valid_out_107),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg25_q),
        .out_data_out(i_llvm_fpga_pop_f32_spec_select33395_pop107_conv2d1x137_out_data_out),
        .out_feedback_stall_out_107(i_llvm_fpga_pop_f32_spec_select33395_pop107_conv2d1x137_out_feedback_stall_out_107),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_select32_conv2d1x139(MUX,116)@141
    assign i_select32_conv2d1x139_s = i_llvm_fpga_fanout_i1_c1_ene22843_fanout_adaptor_conv2d1x16_q;
    always @(i_select32_conv2d1x139_s or i_llvm_fpga_pop_f32_spec_select33395_pop107_conv2d1x137_out_data_out or i_mul64_conv2d1x135_out_primWireOut)
    begin
        unique case (i_select32_conv2d1x139_s)
            1'b0 : i_select32_conv2d1x139_q = i_llvm_fpga_pop_f32_spec_select33395_pop107_conv2d1x137_out_data_out;
            1'b1 : i_select32_conv2d1x139_q = i_mul64_conv2d1x135_out_primWireOut;
            default : i_select32_conv2d1x139_q = 32'b0;
        endcase
    end

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // sync_out_aunroll_x(GPOUT,130)@141
    assign out_c1_exi14_0_tpl = GND_q;
    assign out_c1_exi14_1_tpl = i_select32_conv2d1x139_q;
    assign out_c1_exi14_2_tpl = i_select35_conv2d1x142_q;
    assign out_c1_exi14_3_tpl = i_select38_conv2d1x145_q;
    assign out_c1_exi14_4_tpl = i_select41_conv2d1x148_q;
    assign out_c1_exi14_5_tpl = i_select44_conv2d1x151_q;
    assign out_c1_exi14_6_tpl = i_select47_conv2d1x154_q;
    assign out_c1_exi14_7_tpl = i_select50_conv2d1x157_q;
    assign out_c1_exi14_8_tpl = i_select53_conv2d1x160_q;
    assign out_c1_exi14_9_tpl = i_select56_conv2d1x163_q;
    assign out_c1_exi14_10_tpl = i_select59_conv2d1x166_q;
    assign out_c1_exi14_11_tpl = i_select62_conv2d1x169_q;
    assign out_c1_exi14_12_tpl = i_select65_conv2d1x172_q;
    assign out_c1_exi14_13_tpl = i_select68_conv2d1x175_q;
    assign out_c1_exi14_14_tpl = i_llvm_fpga_pop_coalesce_f32_pop91_conv2d1x176_out_data_out;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_conv2d1x15 = GND_q;

endmodule
