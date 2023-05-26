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

// SystemVerilog created from conv2d1x1_i_sfc_logic_s_c1_in_for_body14_s_c1_enter_conv2d1x10
// SystemVerilog created on Wed May 24 11:22:00 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2d1x1_i_sfc_logic_s_c1_in_for_body14_s_c1_enter_conv2d1x10 (
    input wire [0:0] in_intel_reserved_ffwd_2_0,
    output wire [0:0] out_c1_exi32_0_tpl,
    output wire [31:0] out_c1_exi32_1_tpl,
    output wire [31:0] out_c1_exi32_2_tpl,
    output wire [31:0] out_c1_exi32_3_tpl,
    output wire [31:0] out_c1_exi32_4_tpl,
    output wire [31:0] out_c1_exi32_5_tpl,
    output wire [31:0] out_c1_exi32_6_tpl,
    output wire [31:0] out_c1_exi32_7_tpl,
    output wire [31:0] out_c1_exi32_8_tpl,
    output wire [31:0] out_c1_exi32_9_tpl,
    output wire [31:0] out_c1_exi32_10_tpl,
    output wire [31:0] out_c1_exi32_11_tpl,
    output wire [31:0] out_c1_exi32_12_tpl,
    output wire [31:0] out_c1_exi32_13_tpl,
    output wire [31:0] out_c1_exi32_14_tpl,
    output wire [31:0] out_c1_exi32_15_tpl,
    output wire [31:0] out_c1_exi32_16_tpl,
    output wire [31:0] out_c1_exi32_17_tpl,
    output wire [31:0] out_c1_exi32_18_tpl,
    output wire [31:0] out_c1_exi32_19_tpl,
    output wire [31:0] out_c1_exi32_20_tpl,
    output wire [31:0] out_c1_exi32_21_tpl,
    output wire [31:0] out_c1_exi32_22_tpl,
    output wire [31:0] out_c1_exi32_23_tpl,
    output wire [31:0] out_c1_exi32_24_tpl,
    output wire [31:0] out_c1_exi32_25_tpl,
    output wire [31:0] out_c1_exi32_26_tpl,
    output wire [31:0] out_c1_exi32_27_tpl,
    output wire [31:0] out_c1_exi32_28_tpl,
    output wire [31:0] out_c1_exi32_29_tpl,
    output wire [31:0] out_c1_exi32_30_tpl,
    output wire [31:0] out_c1_exi32_31_tpl,
    output wire [31:0] out_c1_exi32_32_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_conv2d1x16,
    input wire [0:0] in_c1_eni25_0_tpl,
    input wire [31:0] in_c1_eni25_1_tpl,
    input wire [0:0] in_c1_eni25_2_tpl,
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
    input wire [0:0] in_c1_eni25_14_tpl,
    input wire [0:0] in_c1_eni25_15_tpl,
    input wire [31:0] in_c1_eni25_0_16_tpl,
    input wire [31:0] in_c1_eni25_1_16_tpl,
    input wire [31:0] in_c1_eni25_2_16_tpl,
    input wire [31:0] in_c1_eni25_3_16_tpl,
    input wire [31:0] in_c1_eni25_17_tpl,
    input wire [31:0] in_c1_eni25_18_tpl,
    input wire [31:0] in_c1_eni25_19_tpl,
    input wire [31:0] in_c1_eni25_20_tpl,
    input wire [31:0] in_c1_eni25_21_tpl,
    input wire [31:0] in_c1_eni25_22_tpl,
    input wire [31:0] in_c1_eni25_23_tpl,
    input wire [31:0] in_c1_eni25_24_tpl,
    input wire [0:0] in_c1_eni25_25_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    (* dont_merge *) reg [0:0] i_llvm_fpga_fanout_i1_c1_ene14_fanout_adaptor463_conv2d1x16_q;
    (* dont_merge *) reg [0:0] i_llvm_fpga_fanout_i1_c1_ene14_fanout_adaptor464_conv2d1x15_q;
    (* dont_merge *) reg [0:0] i_llvm_fpga_fanout_i1_c1_ene14_fanout_adaptor_conv2d1x17_q;
    (* dont_merge *) reg [0:0] i_llvm_fpga_fanout_i1_c1_ene2_fanout_adaptor461_conv2d1x13_q;
    (* dont_merge *) reg [0:0] i_llvm_fpga_fanout_i1_c1_ene2_fanout_adaptor462_conv2d1x12_q;
    (* dont_merge *) reg [0:0] i_llvm_fpga_fanout_i1_c1_ene2_fanout_adaptor_conv2d1x14_q;
    (* dont_merge *) reg [0:0] i_llvm_fpga_fanout_i1_not_181_fanout_adaptor465_conv2d1x131_q;
    (* dont_merge *) reg [0:0] i_llvm_fpga_fanout_i1_not_181_fanout_adaptor_conv2d1x132_q;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp126316_conv2d1x128_out_dest_data_out_2_0;
    wire [31:0] i_llvm_fpga_fp_multadd_mult_add85_conv2d1x140_out_primWireOut;
    wire [31:0] i_llvm_fpga_fp_multadd_mult_add86_conv2d1x144_out_primWireOut;
    wire [31:0] i_llvm_fpga_fp_multadd_mult_add87_conv2d1x148_out_primWireOut;
    wire [31:0] i_llvm_fpga_fp_multadd_mult_add_conv2d1x136_out_primWireOut;
    wire [31:0] i_llvm_fpga_pop_f32_pop38_conv2d1x119_out_data_out;
    wire [0:0] i_llvm_fpga_pop_f32_pop38_conv2d1x119_out_feedback_stall_out_38;
    wire [31:0] i_llvm_fpga_pop_f32_pop39_conv2d1x118_out_data_out;
    wire [0:0] i_llvm_fpga_pop_f32_pop39_conv2d1x118_out_feedback_stall_out_39;
    wire [31:0] i_llvm_fpga_pop_f32_pop40_conv2d1x117_out_data_out;
    wire [0:0] i_llvm_fpga_pop_f32_pop40_conv2d1x117_out_feedback_stall_out_40;
    wire [31:0] i_llvm_fpga_pop_f32_pop41_conv2d1x116_out_data_out;
    wire [0:0] i_llvm_fpga_pop_f32_pop41_conv2d1x116_out_feedback_stall_out_41;
    wire [31:0] i_llvm_fpga_pop_f32_pop42_conv2d1x115_out_data_out;
    wire [0:0] i_llvm_fpga_pop_f32_pop42_conv2d1x115_out_feedback_stall_out_42;
    wire [31:0] i_llvm_fpga_pop_f32_pop43_conv2d1x114_out_data_out;
    wire [0:0] i_llvm_fpga_pop_f32_pop43_conv2d1x114_out_feedback_stall_out_43;
    wire [31:0] i_llvm_fpga_pop_f32_pop44_conv2d1x113_out_data_out;
    wire [0:0] i_llvm_fpga_pop_f32_pop44_conv2d1x113_out_feedback_stall_out_44;
    wire [31:0] i_llvm_fpga_pop_f32_pop45_conv2d1x112_out_data_out;
    wire [0:0] i_llvm_fpga_pop_f32_pop45_conv2d1x112_out_feedback_stall_out_45;
    wire [31:0] i_llvm_fpga_pop_f32_pop46_conv2d1x111_out_data_out;
    wire [0:0] i_llvm_fpga_pop_f32_pop46_conv2d1x111_out_feedback_stall_out_46;
    wire [31:0] i_llvm_fpga_pop_f32_pop47_conv2d1x110_out_data_out;
    wire [0:0] i_llvm_fpga_pop_f32_pop47_conv2d1x110_out_feedback_stall_out_47;
    wire [31:0] i_llvm_fpga_pop_f32_pop48_conv2d1x19_out_data_out;
    wire [0:0] i_llvm_fpga_pop_f32_pop48_conv2d1x19_out_feedback_stall_out_48;
    wire [31:0] i_llvm_fpga_pop_f32_pop49_conv2d1x18_out_data_out;
    wire [0:0] i_llvm_fpga_pop_f32_pop49_conv2d1x18_out_feedback_stall_out_49;
    wire [31:0] i_llvm_fpga_pop_f32_pop50_conv2d1x146_out_data_out;
    wire [0:0] i_llvm_fpga_pop_f32_pop50_conv2d1x146_out_feedback_stall_out_50;
    wire [31:0] i_llvm_fpga_pop_f32_pop51_conv2d1x142_out_data_out;
    wire [0:0] i_llvm_fpga_pop_f32_pop51_conv2d1x142_out_feedback_stall_out_51;
    wire [31:0] i_llvm_fpga_pop_f32_pop52_conv2d1x138_out_data_out;
    wire [0:0] i_llvm_fpga_pop_f32_pop52_conv2d1x138_out_feedback_stall_out_52;
    wire [31:0] i_llvm_fpga_pop_f32_pop53_conv2d1x134_out_data_out;
    wire [0:0] i_llvm_fpga_pop_f32_pop53_conv2d1x134_out_feedback_stall_out_53;
    wire [31:0] i_llvm_fpga_pop_f32_pre74_e69_pop68_conv2d1x192_out_data_out;
    wire [0:0] i_llvm_fpga_pop_f32_pre74_e69_pop68_conv2d1x192_out_feedback_stall_out_68;
    wire [31:0] i_llvm_fpga_pop_f32_pre75_e70_pop69_conv2d1x189_out_data_out;
    wire [0:0] i_llvm_fpga_pop_f32_pre75_e70_pop69_conv2d1x189_out_feedback_stall_out_69;
    wire [31:0] i_llvm_fpga_pop_f32_pre76_e71_pop70_conv2d1x186_out_data_out;
    wire [0:0] i_llvm_fpga_pop_f32_pre76_e71_pop70_conv2d1x186_out_feedback_stall_out_70;
    wire [31:0] i_llvm_fpga_pop_f32_pre77_e72_pop71_conv2d1x183_out_data_out;
    wire [0:0] i_llvm_fpga_pop_f32_pre77_e72_pop71_conv2d1x183_out_feedback_stall_out_71;
    wire [31:0] i_llvm_fpga_pop_f32_pre78_e73_pop72_conv2d1x180_out_data_out;
    wire [0:0] i_llvm_fpga_pop_f32_pre78_e73_pop72_conv2d1x180_out_feedback_stall_out_72;
    wire [31:0] i_llvm_fpga_pop_f32_pre79_e74_pop73_conv2d1x177_out_data_out;
    wire [0:0] i_llvm_fpga_pop_f32_pre79_e74_pop73_conv2d1x177_out_feedback_stall_out_73;
    wire [31:0] i_llvm_fpga_pop_f32_pre80_e75_pop74_conv2d1x174_out_data_out;
    wire [0:0] i_llvm_fpga_pop_f32_pre80_e75_pop74_conv2d1x174_out_feedback_stall_out_74;
    wire [31:0] i_llvm_fpga_pop_f32_pre81_e76_pop75_conv2d1x171_out_data_out;
    wire [0:0] i_llvm_fpga_pop_f32_pre81_e76_pop75_conv2d1x171_out_feedback_stall_out_75;
    wire [31:0] i_llvm_fpga_pop_f32_pre82_e77_pop76_conv2d1x168_out_data_out;
    wire [0:0] i_llvm_fpga_pop_f32_pre82_e77_pop76_conv2d1x168_out_feedback_stall_out_76;
    wire [31:0] i_llvm_fpga_pop_f32_pre83_e78_pop77_conv2d1x165_out_data_out;
    wire [0:0] i_llvm_fpga_pop_f32_pre83_e78_pop77_conv2d1x165_out_feedback_stall_out_77;
    wire [31:0] i_llvm_fpga_pop_f32_pre84_e79_pop78_conv2d1x162_out_data_out;
    wire [0:0] i_llvm_fpga_pop_f32_pre84_e79_pop78_conv2d1x162_out_feedback_stall_out_78;
    wire [31:0] i_llvm_fpga_pop_f32_pre85_e80_pop79_conv2d1x159_out_data_out;
    wire [0:0] i_llvm_fpga_pop_f32_pre85_e80_pop79_conv2d1x159_out_feedback_stall_out_79;
    wire [31:0] i_llvm_fpga_pop_f32_pre86_e81_pop80_conv2d1x156_out_data_out;
    wire [0:0] i_llvm_fpga_pop_f32_pre86_e81_pop80_conv2d1x156_out_feedback_stall_out_80;
    wire [31:0] i_llvm_fpga_pop_f32_pre87_e82_pop81_conv2d1x153_out_data_out;
    wire [0:0] i_llvm_fpga_pop_f32_pre87_e82_pop81_conv2d1x153_out_feedback_stall_out_81;
    wire [31:0] i_llvm_fpga_pop_f32_pre88_e83_pop82_conv2d1x150_out_data_out;
    wire [0:0] i_llvm_fpga_pop_f32_pre88_e83_pop82_conv2d1x150_out_feedback_stall_out_82;
    wire [31:0] i_llvm_fpga_pop_f32_pre_e68_pop67_conv2d1x195_out_data_out;
    wire [0:0] i_llvm_fpga_pop_f32_pre_e68_pop67_conv2d1x195_out_feedback_stall_out_67;
    wire [31:0] i_llvm_fpga_push_f32_pre74_e69_push68_conv2d1x193_out_feedback_out_68;
    wire [0:0] i_llvm_fpga_push_f32_pre74_e69_push68_conv2d1x193_out_feedback_valid_out_68;
    wire [31:0] i_llvm_fpga_push_f32_pre75_e70_push69_conv2d1x190_out_feedback_out_69;
    wire [0:0] i_llvm_fpga_push_f32_pre75_e70_push69_conv2d1x190_out_feedback_valid_out_69;
    wire [31:0] i_llvm_fpga_push_f32_pre76_e71_push70_conv2d1x187_out_feedback_out_70;
    wire [0:0] i_llvm_fpga_push_f32_pre76_e71_push70_conv2d1x187_out_feedback_valid_out_70;
    wire [31:0] i_llvm_fpga_push_f32_pre77_e72_push71_conv2d1x184_out_feedback_out_71;
    wire [0:0] i_llvm_fpga_push_f32_pre77_e72_push71_conv2d1x184_out_feedback_valid_out_71;
    wire [31:0] i_llvm_fpga_push_f32_pre78_e73_push72_conv2d1x181_out_feedback_out_72;
    wire [0:0] i_llvm_fpga_push_f32_pre78_e73_push72_conv2d1x181_out_feedback_valid_out_72;
    wire [31:0] i_llvm_fpga_push_f32_pre79_e74_push73_conv2d1x178_out_feedback_out_73;
    wire [0:0] i_llvm_fpga_push_f32_pre79_e74_push73_conv2d1x178_out_feedback_valid_out_73;
    wire [31:0] i_llvm_fpga_push_f32_pre80_e75_push74_conv2d1x175_out_feedback_out_74;
    wire [0:0] i_llvm_fpga_push_f32_pre80_e75_push74_conv2d1x175_out_feedback_valid_out_74;
    wire [31:0] i_llvm_fpga_push_f32_pre81_e76_push75_conv2d1x172_out_feedback_out_75;
    wire [0:0] i_llvm_fpga_push_f32_pre81_e76_push75_conv2d1x172_out_feedback_valid_out_75;
    wire [31:0] i_llvm_fpga_push_f32_pre82_e77_push76_conv2d1x169_out_feedback_out_76;
    wire [0:0] i_llvm_fpga_push_f32_pre82_e77_push76_conv2d1x169_out_feedback_valid_out_76;
    wire [31:0] i_llvm_fpga_push_f32_pre83_e78_push77_conv2d1x166_out_feedback_out_77;
    wire [0:0] i_llvm_fpga_push_f32_pre83_e78_push77_conv2d1x166_out_feedback_valid_out_77;
    wire [31:0] i_llvm_fpga_push_f32_pre84_e79_push78_conv2d1x163_out_feedback_out_78;
    wire [0:0] i_llvm_fpga_push_f32_pre84_e79_push78_conv2d1x163_out_feedback_valid_out_78;
    wire [31:0] i_llvm_fpga_push_f32_pre85_e80_push79_conv2d1x160_out_feedback_out_79;
    wire [0:0] i_llvm_fpga_push_f32_pre85_e80_push79_conv2d1x160_out_feedback_valid_out_79;
    wire [31:0] i_llvm_fpga_push_f32_pre86_e81_push80_conv2d1x157_out_feedback_out_80;
    wire [0:0] i_llvm_fpga_push_f32_pre86_e81_push80_conv2d1x157_out_feedback_valid_out_80;
    wire [31:0] i_llvm_fpga_push_f32_pre87_e82_push81_conv2d1x154_out_feedback_out_81;
    wire [0:0] i_llvm_fpga_push_f32_pre87_e82_push81_conv2d1x154_out_feedback_valid_out_81;
    wire [31:0] i_llvm_fpga_push_f32_pre88_e83_push82_conv2d1x151_out_feedback_out_82;
    wire [0:0] i_llvm_fpga_push_f32_pre88_e83_push82_conv2d1x151_out_feedback_valid_out_82;
    wire [31:0] i_llvm_fpga_push_f32_pre_e68_push67_conv2d1x196_out_feedback_out_67;
    wire [0:0] i_llvm_fpga_push_f32_pre_e68_push67_conv2d1x196_out_feedback_valid_out_67;
    wire [31:0] i_llvm_fpga_push_f32_push38_conv2d1x137_out_feedback_out_38;
    wire [0:0] i_llvm_fpga_push_f32_push38_conv2d1x137_out_feedback_valid_out_38;
    wire [31:0] i_llvm_fpga_push_f32_push39_conv2d1x141_out_feedback_out_39;
    wire [0:0] i_llvm_fpga_push_f32_push39_conv2d1x141_out_feedback_valid_out_39;
    wire [31:0] i_llvm_fpga_push_f32_push40_conv2d1x145_out_feedback_out_40;
    wire [0:0] i_llvm_fpga_push_f32_push40_conv2d1x145_out_feedback_valid_out_40;
    wire [31:0] i_llvm_fpga_push_f32_push41_conv2d1x149_out_feedback_out_41;
    wire [0:0] i_llvm_fpga_push_f32_push41_conv2d1x149_out_feedback_valid_out_41;
    wire [31:0] i_llvm_fpga_push_f32_push42_conv2d1x127_out_feedback_out_42;
    wire [0:0] i_llvm_fpga_push_f32_push42_conv2d1x127_out_feedback_valid_out_42;
    wire [31:0] i_llvm_fpga_push_f32_push43_conv2d1x126_out_feedback_out_43;
    wire [0:0] i_llvm_fpga_push_f32_push43_conv2d1x126_out_feedback_valid_out_43;
    wire [31:0] i_llvm_fpga_push_f32_push44_conv2d1x125_out_feedback_out_44;
    wire [0:0] i_llvm_fpga_push_f32_push44_conv2d1x125_out_feedback_valid_out_44;
    wire [31:0] i_llvm_fpga_push_f32_push45_conv2d1x124_out_feedback_out_45;
    wire [0:0] i_llvm_fpga_push_f32_push45_conv2d1x124_out_feedback_valid_out_45;
    wire [31:0] i_llvm_fpga_push_f32_push46_conv2d1x123_out_feedback_out_46;
    wire [0:0] i_llvm_fpga_push_f32_push46_conv2d1x123_out_feedback_valid_out_46;
    wire [31:0] i_llvm_fpga_push_f32_push47_conv2d1x122_out_feedback_out_47;
    wire [0:0] i_llvm_fpga_push_f32_push47_conv2d1x122_out_feedback_valid_out_47;
    wire [31:0] i_llvm_fpga_push_f32_push48_conv2d1x121_out_feedback_out_48;
    wire [0:0] i_llvm_fpga_push_f32_push48_conv2d1x121_out_feedback_valid_out_48;
    wire [31:0] i_llvm_fpga_push_f32_push49_conv2d1x120_out_feedback_out_49;
    wire [0:0] i_llvm_fpga_push_f32_push49_conv2d1x120_out_feedback_valid_out_49;
    wire [31:0] i_llvm_fpga_push_f32_push50_conv2d1x147_out_feedback_out_50;
    wire [0:0] i_llvm_fpga_push_f32_push50_conv2d1x147_out_feedback_valid_out_50;
    wire [31:0] i_llvm_fpga_push_f32_push51_conv2d1x143_out_feedback_out_51;
    wire [0:0] i_llvm_fpga_push_f32_push51_conv2d1x143_out_feedback_valid_out_51;
    wire [31:0] i_llvm_fpga_push_f32_push52_conv2d1x139_out_feedback_out_52;
    wire [0:0] i_llvm_fpga_push_f32_push52_conv2d1x139_out_feedback_valid_out_52;
    wire [31:0] i_llvm_fpga_push_f32_push53_conv2d1x135_out_feedback_out_53;
    wire [0:0] i_llvm_fpga_push_f32_push53_conv2d1x135_out_feedback_valid_out_53;
    wire [0:0] i_not_181_conv2d1x130_qi;
    reg [0:0] i_not_181_conv2d1x130_q;
    wire [0:0] i_notlhs182_conv2d1x129_q;
    wire [0:0] i_select24_conv2d1x152_s;
    reg [31:0] i_select24_conv2d1x152_q;
    wire [0:0] i_select27_conv2d1x155_s;
    reg [31:0] i_select27_conv2d1x155_q;
    wire [0:0] i_select30_conv2d1x158_s;
    reg [31:0] i_select30_conv2d1x158_q;
    wire [0:0] i_select33_conv2d1x161_s;
    reg [31:0] i_select33_conv2d1x161_q;
    wire [0:0] i_select36_conv2d1x164_s;
    reg [31:0] i_select36_conv2d1x164_q;
    wire [0:0] i_select39_conv2d1x167_s;
    reg [31:0] i_select39_conv2d1x167_q;
    wire [0:0] i_select42_conv2d1x170_s;
    reg [31:0] i_select42_conv2d1x170_q;
    wire [0:0] i_select45_conv2d1x173_s;
    reg [31:0] i_select45_conv2d1x173_q;
    wire [0:0] i_select48_conv2d1x176_s;
    reg [31:0] i_select48_conv2d1x176_q;
    wire [0:0] i_select51_conv2d1x179_s;
    reg [31:0] i_select51_conv2d1x179_q;
    wire [0:0] i_select54_conv2d1x182_s;
    reg [31:0] i_select54_conv2d1x182_q;
    wire [0:0] i_select57_conv2d1x185_s;
    reg [31:0] i_select57_conv2d1x185_q;
    wire [0:0] i_select60_conv2d1x188_s;
    reg [31:0] i_select60_conv2d1x188_q;
    wire [0:0] i_select63_conv2d1x191_s;
    reg [31:0] i_select63_conv2d1x191_q;
    wire [0:0] i_select66_conv2d1x194_s;
    reg [31:0] i_select66_conv2d1x194_q;
    wire [0:0] i_select69_conv2d1x197_s;
    reg [31:0] i_select69_conv2d1x197_q;
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
    (* dont_merge *) reg [0:0] valid_fanout_reg53_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg54_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg55_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg56_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg57_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg58_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg59_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg60_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg61_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg62_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg63_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg64_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg65_q;
    reg [31:0] redist0_sync_together232_aunroll_vunroll_x_in_c1_eni25_1_tpl_2_q;
    reg [31:0] redist0_sync_together232_aunroll_vunroll_x_in_c1_eni25_1_tpl_2_delay_0;
    reg [31:0] redist1_sync_together232_aunroll_vunroll_x_in_c1_eni25_1_tpl_4_q;
    reg [31:0] redist1_sync_together232_aunroll_vunroll_x_in_c1_eni25_1_tpl_4_delay_0;
    reg [0:0] redist2_sync_together232_aunroll_vunroll_x_in_c1_eni25_2_tpl_1_q;
    reg [31:0] redist3_sync_together232_aunroll_vunroll_x_in_c1_eni25_3_tpl_2_q;
    reg [31:0] redist3_sync_together232_aunroll_vunroll_x_in_c1_eni25_3_tpl_2_delay_0;
    reg [31:0] redist4_sync_together232_aunroll_vunroll_x_in_c1_eni25_3_tpl_3_q;
    reg [31:0] redist5_sync_together232_aunroll_vunroll_x_in_c1_eni25_4_tpl_2_q;
    reg [31:0] redist5_sync_together232_aunroll_vunroll_x_in_c1_eni25_4_tpl_2_delay_0;
    reg [31:0] redist6_sync_together232_aunroll_vunroll_x_in_c1_eni25_4_tpl_3_q;
    reg [31:0] redist7_sync_together232_aunroll_vunroll_x_in_c1_eni25_5_tpl_2_q;
    reg [31:0] redist7_sync_together232_aunroll_vunroll_x_in_c1_eni25_5_tpl_2_delay_0;
    reg [31:0] redist8_sync_together232_aunroll_vunroll_x_in_c1_eni25_5_tpl_3_q;
    reg [31:0] redist12_sync_together232_aunroll_vunroll_x_in_c1_eni25_8_tpl_4_q;
    reg [31:0] redist14_sync_together232_aunroll_vunroll_x_in_c1_eni25_9_tpl_4_q;
    reg [0:0] redist19_sync_together232_aunroll_vunroll_x_in_c1_eni25_14_tpl_1_q;
    reg [0:0] redist20_sync_together232_aunroll_vunroll_x_in_c1_eni25_14_tpl_3_q;
    reg [0:0] redist20_sync_together232_aunroll_vunroll_x_in_c1_eni25_14_tpl_3_delay_0;
    reg [0:0] redist21_sync_together232_aunroll_vunroll_x_in_c1_eni25_15_tpl_1_q;
    reg [31:0] redist22_sync_together232_aunroll_vunroll_x_in_c1_eni25_0_16_tpl_1_q;
    reg [31:0] redist23_sync_together232_aunroll_vunroll_x_in_c1_eni25_1_16_tpl_1_q;
    reg [31:0] redist24_sync_together232_aunroll_vunroll_x_in_c1_eni25_2_16_tpl_1_q;
    reg [31:0] redist25_sync_together232_aunroll_vunroll_x_in_c1_eni25_3_16_tpl_1_q;
    reg [31:0] redist26_sync_together232_aunroll_vunroll_x_in_c1_eni25_17_tpl_1_q;
    reg [31:0] redist27_sync_together232_aunroll_vunroll_x_in_c1_eni25_17_tpl_3_q;
    reg [31:0] redist27_sync_together232_aunroll_vunroll_x_in_c1_eni25_17_tpl_3_delay_0;
    reg [31:0] redist28_sync_together232_aunroll_vunroll_x_in_c1_eni25_18_tpl_1_q;
    reg [31:0] redist29_sync_together232_aunroll_vunroll_x_in_c1_eni25_19_tpl_1_q;
    reg [31:0] redist30_sync_together232_aunroll_vunroll_x_in_c1_eni25_19_tpl_3_q;
    reg [31:0] redist30_sync_together232_aunroll_vunroll_x_in_c1_eni25_19_tpl_3_delay_0;
    reg [31:0] redist31_sync_together232_aunroll_vunroll_x_in_c1_eni25_20_tpl_1_q;
    reg [31:0] redist32_sync_together232_aunroll_vunroll_x_in_c1_eni25_21_tpl_1_q;
    reg [31:0] redist33_sync_together232_aunroll_vunroll_x_in_c1_eni25_21_tpl_3_q;
    reg [31:0] redist33_sync_together232_aunroll_vunroll_x_in_c1_eni25_21_tpl_3_delay_0;
    reg [31:0] redist34_sync_together232_aunroll_vunroll_x_in_c1_eni25_22_tpl_1_q;
    reg [31:0] redist35_sync_together232_aunroll_vunroll_x_in_c1_eni25_23_tpl_1_q;
    reg [31:0] redist36_sync_together232_aunroll_vunroll_x_in_c1_eni25_23_tpl_3_q;
    reg [31:0] redist36_sync_together232_aunroll_vunroll_x_in_c1_eni25_23_tpl_3_delay_0;
    reg [31:0] redist37_sync_together232_aunroll_vunroll_x_in_c1_eni25_24_tpl_1_q;
    reg [0:0] redist38_sync_together232_aunroll_vunroll_x_in_c1_eni25_25_tpl_5_q;
    reg [0:0] redist38_sync_together232_aunroll_vunroll_x_in_c1_eni25_25_tpl_5_delay_0;
    reg [0:0] redist38_sync_together232_aunroll_vunroll_x_in_c1_eni25_25_tpl_5_delay_1;
    reg [0:0] redist38_sync_together232_aunroll_vunroll_x_in_c1_eni25_25_tpl_5_delay_2;
    reg [0:0] redist38_sync_together232_aunroll_vunroll_x_in_c1_eni25_25_tpl_5_delay_3;
    reg [0:0] redist39_sync_together232_aunroll_vunroll_x_in_i_valid_1_q;
    reg [0:0] redist40_sync_together232_aunroll_vunroll_x_in_i_valid_2_q;
    reg [0:0] redist41_sync_together232_aunroll_vunroll_x_in_i_valid_3_q;
    reg [0:0] redist42_sync_together232_aunroll_vunroll_x_in_i_valid_4_q;
    reg [0:0] redist43_i_not_181_conv2d1x130_q_3_q;
    reg [0:0] redist43_i_not_181_conv2d1x130_q_3_delay_0;
    reg [31:0] redist44_i_llvm_fpga_pop_f32_pre_e68_pop67_conv2d1x195_out_data_out_1_q;
    reg [31:0] redist45_i_llvm_fpga_pop_f32_pre_e68_pop67_conv2d1x195_out_data_out_2_q;
    reg [31:0] redist46_i_llvm_fpga_pop_f32_pre88_e83_pop82_conv2d1x150_out_data_out_1_q;
    reg [31:0] redist47_i_llvm_fpga_pop_f32_pre87_e82_pop81_conv2d1x153_out_data_out_1_q;
    reg [31:0] redist48_i_llvm_fpga_pop_f32_pre86_e81_pop80_conv2d1x156_out_data_out_1_q;
    reg [31:0] redist49_i_llvm_fpga_pop_f32_pre85_e80_pop79_conv2d1x159_out_data_out_1_q;
    reg [31:0] redist50_i_llvm_fpga_pop_f32_pre84_e79_pop78_conv2d1x162_out_data_out_1_q;
    reg [31:0] redist51_i_llvm_fpga_pop_f32_pre83_e78_pop77_conv2d1x165_out_data_out_1_q;
    reg [31:0] redist52_i_llvm_fpga_pop_f32_pre82_e77_pop76_conv2d1x168_out_data_out_1_q;
    reg [31:0] redist53_i_llvm_fpga_pop_f32_pre82_e77_pop76_conv2d1x168_out_data_out_2_q;
    reg [31:0] redist54_i_llvm_fpga_pop_f32_pre81_e76_pop75_conv2d1x171_out_data_out_1_q;
    reg [31:0] redist55_i_llvm_fpga_pop_f32_pre81_e76_pop75_conv2d1x171_out_data_out_2_q;
    reg [31:0] redist56_i_llvm_fpga_pop_f32_pre80_e75_pop74_conv2d1x174_out_data_out_1_q;
    reg [31:0] redist57_i_llvm_fpga_pop_f32_pre80_e75_pop74_conv2d1x174_out_data_out_2_q;
    reg [31:0] redist58_i_llvm_fpga_pop_f32_pre79_e74_pop73_conv2d1x177_out_data_out_1_q;
    reg [31:0] redist59_i_llvm_fpga_pop_f32_pre79_e74_pop73_conv2d1x177_out_data_out_2_q;
    reg [31:0] redist60_i_llvm_fpga_pop_f32_pre78_e73_pop72_conv2d1x180_out_data_out_1_q;
    reg [31:0] redist61_i_llvm_fpga_pop_f32_pre78_e73_pop72_conv2d1x180_out_data_out_2_q;
    reg [31:0] redist62_i_llvm_fpga_pop_f32_pre77_e72_pop71_conv2d1x183_out_data_out_1_q;
    reg [31:0] redist63_i_llvm_fpga_pop_f32_pre76_e71_pop70_conv2d1x186_out_data_out_1_q;
    reg [31:0] redist64_i_llvm_fpga_pop_f32_pre76_e71_pop70_conv2d1x186_out_data_out_2_q;
    reg [31:0] redist65_i_llvm_fpga_pop_f32_pre75_e70_pop69_conv2d1x189_out_data_out_1_q;
    reg [31:0] redist66_i_llvm_fpga_pop_f32_pre75_e70_pop69_conv2d1x189_out_data_out_2_q;
    reg [31:0] redist67_i_llvm_fpga_pop_f32_pre74_e69_pop68_conv2d1x192_out_data_out_1_q;
    reg [31:0] redist68_i_llvm_fpga_pop_f32_pre74_e69_pop68_conv2d1x192_out_data_out_2_q;
    reg [31:0] redist69_i_llvm_fpga_pop_f32_pop49_conv2d1x18_out_data_out_3_q;
    reg [31:0] redist69_i_llvm_fpga_pop_f32_pop49_conv2d1x18_out_data_out_3_delay_0;
    reg [31:0] redist70_i_llvm_fpga_pop_f32_pop48_conv2d1x19_out_data_out_3_q;
    reg [31:0] redist70_i_llvm_fpga_pop_f32_pop48_conv2d1x19_out_data_out_3_delay_0;
    reg [31:0] redist71_i_llvm_fpga_pop_f32_pop47_conv2d1x110_out_data_out_3_q;
    reg [31:0] redist71_i_llvm_fpga_pop_f32_pop47_conv2d1x110_out_data_out_3_delay_0;
    reg [31:0] redist72_i_llvm_fpga_pop_f32_pop46_conv2d1x111_out_data_out_3_q;
    reg [31:0] redist72_i_llvm_fpga_pop_f32_pop46_conv2d1x111_out_data_out_3_delay_0;
    reg [31:0] redist73_i_llvm_fpga_pop_f32_pop45_conv2d1x112_out_data_out_2_q;
    reg [31:0] redist73_i_llvm_fpga_pop_f32_pop45_conv2d1x112_out_data_out_2_delay_0;
    reg [31:0] redist74_i_llvm_fpga_pop_f32_pop44_conv2d1x113_out_data_out_2_q;
    reg [31:0] redist74_i_llvm_fpga_pop_f32_pop44_conv2d1x113_out_data_out_2_delay_0;
    reg [31:0] redist75_i_llvm_fpga_pop_f32_pop43_conv2d1x114_out_data_out_2_q;
    reg [31:0] redist75_i_llvm_fpga_pop_f32_pop43_conv2d1x114_out_data_out_2_delay_0;
    reg [31:0] redist76_i_llvm_fpga_pop_f32_pop42_conv2d1x115_out_data_out_2_q;
    reg [31:0] redist76_i_llvm_fpga_pop_f32_pop42_conv2d1x115_out_data_out_2_delay_0;
    reg [31:0] redist77_i_llvm_fpga_pop_f32_pop41_conv2d1x116_out_data_out_1_q;
    reg [31:0] redist78_i_llvm_fpga_pop_f32_pop40_conv2d1x117_out_data_out_1_q;
    reg [31:0] redist79_i_llvm_fpga_pop_f32_pop39_conv2d1x118_out_data_out_1_q;
    reg [31:0] redist80_i_llvm_fpga_pop_f32_pop38_conv2d1x119_out_data_out_1_q;
    reg [0:0] redist81_i_llvm_fpga_fanout_i1_c1_ene2_fanout_adaptor_conv2d1x14_q_1_q;
    reg [0:0] redist82_i_llvm_fpga_fanout_i1_c1_ene2_fanout_adaptor_conv2d1x14_q_2_q;
    reg [0:0] redist83_i_llvm_fpga_fanout_i1_c1_ene2_fanout_adaptor462_conv2d1x12_q_2_q;
    reg [0:0] redist83_i_llvm_fpga_fanout_i1_c1_ene2_fanout_adaptor462_conv2d1x12_q_2_delay_0;
    reg [0:0] redist84_i_llvm_fpga_fanout_i1_c1_ene2_fanout_adaptor461_conv2d1x13_q_2_q;
    reg [0:0] redist84_i_llvm_fpga_fanout_i1_c1_ene2_fanout_adaptor461_conv2d1x13_q_2_delay_0;
    reg [0:0] redist85_i_llvm_fpga_fanout_i1_c1_ene14_fanout_adaptor464_conv2d1x15_q_1_q;
    reg [0:0] redist86_i_llvm_fpga_fanout_i1_c1_ene14_fanout_adaptor463_conv2d1x16_q_1_q;
    reg [0:0] redist87_i_llvm_fpga_fanout_i1_c1_ene14_fanout_adaptor463_conv2d1x16_q_2_q;
    wire redist9_sync_together232_aunroll_vunroll_x_in_c1_eni25_6_tpl_3_mem_reset0;
    wire [31:0] redist9_sync_together232_aunroll_vunroll_x_in_c1_eni25_6_tpl_3_mem_ia;
    wire [0:0] redist9_sync_together232_aunroll_vunroll_x_in_c1_eni25_6_tpl_3_mem_aa;
    wire [0:0] redist9_sync_together232_aunroll_vunroll_x_in_c1_eni25_6_tpl_3_mem_ab;
    wire [31:0] redist9_sync_together232_aunroll_vunroll_x_in_c1_eni25_6_tpl_3_mem_iq;
    wire [31:0] redist9_sync_together232_aunroll_vunroll_x_in_c1_eni25_6_tpl_3_mem_q;
    wire [0:0] redist9_sync_together232_aunroll_vunroll_x_in_c1_eni25_6_tpl_3_rdcnt_q;
    (* preserve *) reg [0:0] redist9_sync_together232_aunroll_vunroll_x_in_c1_eni25_6_tpl_3_rdcnt_i;
    reg [0:0] redist9_sync_together232_aunroll_vunroll_x_in_c1_eni25_6_tpl_3_wraddr_q;
    (* dont_merge *) reg [0:0] redist9_sync_together232_aunroll_vunroll_x_in_c1_eni25_6_tpl_3_cmpReg_q;
    wire [0:0] redist9_sync_together232_aunroll_vunroll_x_in_c1_eni25_6_tpl_3_notEnable_q;
    wire [0:0] redist9_sync_together232_aunroll_vunroll_x_in_c1_eni25_6_tpl_3_nor_q;
    (* dont_merge *) reg [0:0] redist9_sync_together232_aunroll_vunroll_x_in_c1_eni25_6_tpl_3_sticky_ena_q;
    wire [0:0] redist9_sync_together232_aunroll_vunroll_x_in_c1_eni25_6_tpl_3_enaAnd_q;
    wire redist10_sync_together232_aunroll_vunroll_x_in_c1_eni25_7_tpl_3_mem_reset0;
    wire [31:0] redist10_sync_together232_aunroll_vunroll_x_in_c1_eni25_7_tpl_3_mem_ia;
    wire [0:0] redist10_sync_together232_aunroll_vunroll_x_in_c1_eni25_7_tpl_3_mem_aa;
    wire [0:0] redist10_sync_together232_aunroll_vunroll_x_in_c1_eni25_7_tpl_3_mem_ab;
    wire [31:0] redist10_sync_together232_aunroll_vunroll_x_in_c1_eni25_7_tpl_3_mem_iq;
    wire [31:0] redist10_sync_together232_aunroll_vunroll_x_in_c1_eni25_7_tpl_3_mem_q;
    wire [0:0] redist10_sync_together232_aunroll_vunroll_x_in_c1_eni25_7_tpl_3_rdcnt_q;
    (* preserve *) reg [0:0] redist10_sync_together232_aunroll_vunroll_x_in_c1_eni25_7_tpl_3_rdcnt_i;
    reg [0:0] redist10_sync_together232_aunroll_vunroll_x_in_c1_eni25_7_tpl_3_wraddr_q;
    (* dont_merge *) reg [0:0] redist10_sync_together232_aunroll_vunroll_x_in_c1_eni25_7_tpl_3_cmpReg_q;
    wire [0:0] redist10_sync_together232_aunroll_vunroll_x_in_c1_eni25_7_tpl_3_notEnable_q;
    wire [0:0] redist10_sync_together232_aunroll_vunroll_x_in_c1_eni25_7_tpl_3_nor_q;
    (* dont_merge *) reg [0:0] redist10_sync_together232_aunroll_vunroll_x_in_c1_eni25_7_tpl_3_sticky_ena_q;
    wire [0:0] redist10_sync_together232_aunroll_vunroll_x_in_c1_eni25_7_tpl_3_enaAnd_q;
    wire redist11_sync_together232_aunroll_vunroll_x_in_c1_eni25_8_tpl_3_mem_reset0;
    wire [31:0] redist11_sync_together232_aunroll_vunroll_x_in_c1_eni25_8_tpl_3_mem_ia;
    wire [0:0] redist11_sync_together232_aunroll_vunroll_x_in_c1_eni25_8_tpl_3_mem_aa;
    wire [0:0] redist11_sync_together232_aunroll_vunroll_x_in_c1_eni25_8_tpl_3_mem_ab;
    wire [31:0] redist11_sync_together232_aunroll_vunroll_x_in_c1_eni25_8_tpl_3_mem_iq;
    wire [31:0] redist11_sync_together232_aunroll_vunroll_x_in_c1_eni25_8_tpl_3_mem_q;
    wire [0:0] redist11_sync_together232_aunroll_vunroll_x_in_c1_eni25_8_tpl_3_rdcnt_q;
    (* preserve *) reg [0:0] redist11_sync_together232_aunroll_vunroll_x_in_c1_eni25_8_tpl_3_rdcnt_i;
    reg [0:0] redist11_sync_together232_aunroll_vunroll_x_in_c1_eni25_8_tpl_3_wraddr_q;
    (* dont_merge *) reg [0:0] redist11_sync_together232_aunroll_vunroll_x_in_c1_eni25_8_tpl_3_cmpReg_q;
    wire [0:0] redist11_sync_together232_aunroll_vunroll_x_in_c1_eni25_8_tpl_3_notEnable_q;
    wire [0:0] redist11_sync_together232_aunroll_vunroll_x_in_c1_eni25_8_tpl_3_nor_q;
    (* dont_merge *) reg [0:0] redist11_sync_together232_aunroll_vunroll_x_in_c1_eni25_8_tpl_3_sticky_ena_q;
    wire [0:0] redist11_sync_together232_aunroll_vunroll_x_in_c1_eni25_8_tpl_3_enaAnd_q;
    wire redist13_sync_together232_aunroll_vunroll_x_in_c1_eni25_9_tpl_3_mem_reset0;
    wire [31:0] redist13_sync_together232_aunroll_vunroll_x_in_c1_eni25_9_tpl_3_mem_ia;
    wire [0:0] redist13_sync_together232_aunroll_vunroll_x_in_c1_eni25_9_tpl_3_mem_aa;
    wire [0:0] redist13_sync_together232_aunroll_vunroll_x_in_c1_eni25_9_tpl_3_mem_ab;
    wire [31:0] redist13_sync_together232_aunroll_vunroll_x_in_c1_eni25_9_tpl_3_mem_iq;
    wire [31:0] redist13_sync_together232_aunroll_vunroll_x_in_c1_eni25_9_tpl_3_mem_q;
    wire [0:0] redist13_sync_together232_aunroll_vunroll_x_in_c1_eni25_9_tpl_3_rdcnt_q;
    (* preserve *) reg [0:0] redist13_sync_together232_aunroll_vunroll_x_in_c1_eni25_9_tpl_3_rdcnt_i;
    reg [0:0] redist13_sync_together232_aunroll_vunroll_x_in_c1_eni25_9_tpl_3_wraddr_q;
    (* dont_merge *) reg [0:0] redist13_sync_together232_aunroll_vunroll_x_in_c1_eni25_9_tpl_3_cmpReg_q;
    wire [0:0] redist13_sync_together232_aunroll_vunroll_x_in_c1_eni25_9_tpl_3_notEnable_q;
    wire [0:0] redist13_sync_together232_aunroll_vunroll_x_in_c1_eni25_9_tpl_3_nor_q;
    (* dont_merge *) reg [0:0] redist13_sync_together232_aunroll_vunroll_x_in_c1_eni25_9_tpl_3_sticky_ena_q;
    wire [0:0] redist13_sync_together232_aunroll_vunroll_x_in_c1_eni25_9_tpl_3_enaAnd_q;
    wire redist15_sync_together232_aunroll_vunroll_x_in_c1_eni25_10_tpl_4_mem_reset0;
    wire [31:0] redist15_sync_together232_aunroll_vunroll_x_in_c1_eni25_10_tpl_4_mem_ia;
    wire [1:0] redist15_sync_together232_aunroll_vunroll_x_in_c1_eni25_10_tpl_4_mem_aa;
    wire [1:0] redist15_sync_together232_aunroll_vunroll_x_in_c1_eni25_10_tpl_4_mem_ab;
    wire [31:0] redist15_sync_together232_aunroll_vunroll_x_in_c1_eni25_10_tpl_4_mem_iq;
    wire [31:0] redist15_sync_together232_aunroll_vunroll_x_in_c1_eni25_10_tpl_4_mem_q;
    wire [1:0] redist15_sync_together232_aunroll_vunroll_x_in_c1_eni25_10_tpl_4_rdcnt_q;
    (* preserve *) reg [1:0] redist15_sync_together232_aunroll_vunroll_x_in_c1_eni25_10_tpl_4_rdcnt_i;
    (* preserve *) reg redist15_sync_together232_aunroll_vunroll_x_in_c1_eni25_10_tpl_4_rdcnt_eq;
    reg [1:0] redist15_sync_together232_aunroll_vunroll_x_in_c1_eni25_10_tpl_4_wraddr_q;
    wire [1:0] redist15_sync_together232_aunroll_vunroll_x_in_c1_eni25_10_tpl_4_mem_last_q;
    wire [0:0] redist15_sync_together232_aunroll_vunroll_x_in_c1_eni25_10_tpl_4_cmp_q;
    (* dont_merge *) reg [0:0] redist15_sync_together232_aunroll_vunroll_x_in_c1_eni25_10_tpl_4_cmpReg_q;
    wire [0:0] redist15_sync_together232_aunroll_vunroll_x_in_c1_eni25_10_tpl_4_notEnable_q;
    wire [0:0] redist15_sync_together232_aunroll_vunroll_x_in_c1_eni25_10_tpl_4_nor_q;
    (* dont_merge *) reg [0:0] redist15_sync_together232_aunroll_vunroll_x_in_c1_eni25_10_tpl_4_sticky_ena_q;
    wire [0:0] redist15_sync_together232_aunroll_vunroll_x_in_c1_eni25_10_tpl_4_enaAnd_q;
    wire redist16_sync_together232_aunroll_vunroll_x_in_c1_eni25_11_tpl_4_mem_reset0;
    wire [31:0] redist16_sync_together232_aunroll_vunroll_x_in_c1_eni25_11_tpl_4_mem_ia;
    wire [1:0] redist16_sync_together232_aunroll_vunroll_x_in_c1_eni25_11_tpl_4_mem_aa;
    wire [1:0] redist16_sync_together232_aunroll_vunroll_x_in_c1_eni25_11_tpl_4_mem_ab;
    wire [31:0] redist16_sync_together232_aunroll_vunroll_x_in_c1_eni25_11_tpl_4_mem_iq;
    wire [31:0] redist16_sync_together232_aunroll_vunroll_x_in_c1_eni25_11_tpl_4_mem_q;
    wire [1:0] redist16_sync_together232_aunroll_vunroll_x_in_c1_eni25_11_tpl_4_rdcnt_q;
    (* preserve *) reg [1:0] redist16_sync_together232_aunroll_vunroll_x_in_c1_eni25_11_tpl_4_rdcnt_i;
    (* preserve *) reg redist16_sync_together232_aunroll_vunroll_x_in_c1_eni25_11_tpl_4_rdcnt_eq;
    reg [1:0] redist16_sync_together232_aunroll_vunroll_x_in_c1_eni25_11_tpl_4_wraddr_q;
    wire [1:0] redist16_sync_together232_aunroll_vunroll_x_in_c1_eni25_11_tpl_4_mem_last_q;
    wire [0:0] redist16_sync_together232_aunroll_vunroll_x_in_c1_eni25_11_tpl_4_cmp_q;
    (* dont_merge *) reg [0:0] redist16_sync_together232_aunroll_vunroll_x_in_c1_eni25_11_tpl_4_cmpReg_q;
    wire [0:0] redist16_sync_together232_aunroll_vunroll_x_in_c1_eni25_11_tpl_4_notEnable_q;
    wire [0:0] redist16_sync_together232_aunroll_vunroll_x_in_c1_eni25_11_tpl_4_nor_q;
    (* dont_merge *) reg [0:0] redist16_sync_together232_aunroll_vunroll_x_in_c1_eni25_11_tpl_4_sticky_ena_q;
    wire [0:0] redist16_sync_together232_aunroll_vunroll_x_in_c1_eni25_11_tpl_4_enaAnd_q;
    wire redist17_sync_together232_aunroll_vunroll_x_in_c1_eni25_12_tpl_4_mem_reset0;
    wire [31:0] redist17_sync_together232_aunroll_vunroll_x_in_c1_eni25_12_tpl_4_mem_ia;
    wire [1:0] redist17_sync_together232_aunroll_vunroll_x_in_c1_eni25_12_tpl_4_mem_aa;
    wire [1:0] redist17_sync_together232_aunroll_vunroll_x_in_c1_eni25_12_tpl_4_mem_ab;
    wire [31:0] redist17_sync_together232_aunroll_vunroll_x_in_c1_eni25_12_tpl_4_mem_iq;
    wire [31:0] redist17_sync_together232_aunroll_vunroll_x_in_c1_eni25_12_tpl_4_mem_q;
    wire [1:0] redist17_sync_together232_aunroll_vunroll_x_in_c1_eni25_12_tpl_4_rdcnt_q;
    (* preserve *) reg [1:0] redist17_sync_together232_aunroll_vunroll_x_in_c1_eni25_12_tpl_4_rdcnt_i;
    (* preserve *) reg redist17_sync_together232_aunroll_vunroll_x_in_c1_eni25_12_tpl_4_rdcnt_eq;
    reg [1:0] redist17_sync_together232_aunroll_vunroll_x_in_c1_eni25_12_tpl_4_wraddr_q;
    wire [1:0] redist17_sync_together232_aunroll_vunroll_x_in_c1_eni25_12_tpl_4_mem_last_q;
    wire [0:0] redist17_sync_together232_aunroll_vunroll_x_in_c1_eni25_12_tpl_4_cmp_q;
    (* dont_merge *) reg [0:0] redist17_sync_together232_aunroll_vunroll_x_in_c1_eni25_12_tpl_4_cmpReg_q;
    wire [0:0] redist17_sync_together232_aunroll_vunroll_x_in_c1_eni25_12_tpl_4_notEnable_q;
    wire [0:0] redist17_sync_together232_aunroll_vunroll_x_in_c1_eni25_12_tpl_4_nor_q;
    (* dont_merge *) reg [0:0] redist17_sync_together232_aunroll_vunroll_x_in_c1_eni25_12_tpl_4_sticky_ena_q;
    wire [0:0] redist17_sync_together232_aunroll_vunroll_x_in_c1_eni25_12_tpl_4_enaAnd_q;
    wire redist18_sync_together232_aunroll_vunroll_x_in_c1_eni25_13_tpl_4_mem_reset0;
    wire [31:0] redist18_sync_together232_aunroll_vunroll_x_in_c1_eni25_13_tpl_4_mem_ia;
    wire [1:0] redist18_sync_together232_aunroll_vunroll_x_in_c1_eni25_13_tpl_4_mem_aa;
    wire [1:0] redist18_sync_together232_aunroll_vunroll_x_in_c1_eni25_13_tpl_4_mem_ab;
    wire [31:0] redist18_sync_together232_aunroll_vunroll_x_in_c1_eni25_13_tpl_4_mem_iq;
    wire [31:0] redist18_sync_together232_aunroll_vunroll_x_in_c1_eni25_13_tpl_4_mem_q;
    wire [1:0] redist18_sync_together232_aunroll_vunroll_x_in_c1_eni25_13_tpl_4_rdcnt_q;
    (* preserve *) reg [1:0] redist18_sync_together232_aunroll_vunroll_x_in_c1_eni25_13_tpl_4_rdcnt_i;
    (* preserve *) reg redist18_sync_together232_aunroll_vunroll_x_in_c1_eni25_13_tpl_4_rdcnt_eq;
    reg [1:0] redist18_sync_together232_aunroll_vunroll_x_in_c1_eni25_13_tpl_4_wraddr_q;
    wire [1:0] redist18_sync_together232_aunroll_vunroll_x_in_c1_eni25_13_tpl_4_mem_last_q;
    wire [0:0] redist18_sync_together232_aunroll_vunroll_x_in_c1_eni25_13_tpl_4_cmp_q;
    (* dont_merge *) reg [0:0] redist18_sync_together232_aunroll_vunroll_x_in_c1_eni25_13_tpl_4_cmpReg_q;
    wire [0:0] redist18_sync_together232_aunroll_vunroll_x_in_c1_eni25_13_tpl_4_notEnable_q;
    wire [0:0] redist18_sync_together232_aunroll_vunroll_x_in_c1_eni25_13_tpl_4_nor_q;
    (* dont_merge *) reg [0:0] redist18_sync_together232_aunroll_vunroll_x_in_c1_eni25_13_tpl_4_sticky_ena_q;
    wire [0:0] redist18_sync_together232_aunroll_vunroll_x_in_c1_eni25_13_tpl_4_enaAnd_q;
    reg [31:0] redist69_i_llvm_fpga_pop_f32_pop49_conv2d1x18_out_data_out_3_outputreg0_q;
    reg [31:0] redist70_i_llvm_fpga_pop_f32_pop48_conv2d1x19_out_data_out_3_outputreg0_q;
    reg [31:0] redist71_i_llvm_fpga_pop_f32_pop47_conv2d1x110_out_data_out_3_outputreg0_q;
    reg [31:0] redist72_i_llvm_fpga_pop_f32_pop46_conv2d1x111_out_data_out_3_outputreg0_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist39_sync_together232_aunroll_vunroll_x_in_i_valid_1(DELAY,272)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist39_sync_together232_aunroll_vunroll_x_in_i_valid_1_q <= '0;
        end
        else
        begin
            redist39_sync_together232_aunroll_vunroll_x_in_i_valid_1_q <= $unsigned(in_i_valid);
        end
    end

    // redist40_sync_together232_aunroll_vunroll_x_in_i_valid_2(DELAY,273)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist40_sync_together232_aunroll_vunroll_x_in_i_valid_2_q <= '0;
        end
        else
        begin
            redist40_sync_together232_aunroll_vunroll_x_in_i_valid_2_q <= $unsigned(redist39_sync_together232_aunroll_vunroll_x_in_i_valid_1_q);
        end
    end

    // redist41_sync_together232_aunroll_vunroll_x_in_i_valid_3(DELAY,274)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist41_sync_together232_aunroll_vunroll_x_in_i_valid_3_q <= '0;
        end
        else
        begin
            redist41_sync_together232_aunroll_vunroll_x_in_i_valid_3_q <= $unsigned(redist40_sync_together232_aunroll_vunroll_x_in_i_valid_2_q);
        end
    end

    // redist42_sync_together232_aunroll_vunroll_x_in_i_valid_4(DELAY,275)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist42_sync_together232_aunroll_vunroll_x_in_i_valid_4_q <= '0;
        end
        else
        begin
            redist42_sync_together232_aunroll_vunroll_x_in_i_valid_4_q <= $unsigned(redist41_sync_together232_aunroll_vunroll_x_in_i_valid_3_q);
        end
    end

    // valid_fanout_reg0(REG,167)@142 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist42_sync_together232_aunroll_vunroll_x_in_i_valid_4_q);
        end
    end

    // valid_fanout_reg64(REG,231)@140 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg64_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg64_q <= $unsigned(redist40_sync_together232_aunroll_vunroll_x_in_i_valid_2_q);
        end
    end

    // valid_fanout_reg65(REG,232)@141 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg65_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg65_q <= $unsigned(redist41_sync_together232_aunroll_vunroll_x_in_i_valid_3_q);
        end
    end

    // redist19_sync_together232_aunroll_vunroll_x_in_c1_eni25_14_tpl_1(DELAY,252)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist19_sync_together232_aunroll_vunroll_x_in_c1_eni25_14_tpl_1_q <= '0;
        end
        else
        begin
            redist19_sync_together232_aunroll_vunroll_x_in_c1_eni25_14_tpl_1_q <= $unsigned(in_c1_eni25_14_tpl);
        end
    end

    // i_llvm_fpga_fanout_i1_c1_ene14_fanout_adaptor463_conv2d1x16(REG,68)@139 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_llvm_fpga_fanout_i1_c1_ene14_fanout_adaptor463_conv2d1x16_q <= $unsigned(1'b0);
        end
        else
        begin
            i_llvm_fpga_fanout_i1_c1_ene14_fanout_adaptor463_conv2d1x16_q <= redist19_sync_together232_aunroll_vunroll_x_in_c1_eni25_14_tpl_1_q;
        end
    end

    // redist86_i_llvm_fpga_fanout_i1_c1_ene14_fanout_adaptor463_conv2d1x16_q_1(DELAY,319)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist86_i_llvm_fpga_fanout_i1_c1_ene14_fanout_adaptor463_conv2d1x16_q_1_q <= '0;
        end
        else
        begin
            redist86_i_llvm_fpga_fanout_i1_c1_ene14_fanout_adaptor463_conv2d1x16_q_1_q <= $unsigned(i_llvm_fpga_fanout_i1_c1_ene14_fanout_adaptor463_conv2d1x16_q);
        end
    end

    // redist87_i_llvm_fpga_fanout_i1_c1_ene14_fanout_adaptor463_conv2d1x16_q_2(DELAY,320)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist87_i_llvm_fpga_fanout_i1_c1_ene14_fanout_adaptor463_conv2d1x16_q_2_q <= '0;
        end
        else
        begin
            redist87_i_llvm_fpga_fanout_i1_c1_ene14_fanout_adaptor463_conv2d1x16_q_2_q <= $unsigned(redist86_i_llvm_fpga_fanout_i1_c1_ene14_fanout_adaptor463_conv2d1x16_q_1_q);
        end
    end

    // i_llvm_fpga_push_f32_pre_e68_push67_conv2d1x196(BLACKBOX,128)@142
    // out out_feedback_out_67@20000000
    // out out_feedback_valid_out_67@20000000
    conv2d1x1_i_llvm_fpga_push_f32_pre_e68_push67_0 thei_llvm_fpga_push_f32_pre_e68_push67_conv2d1x196 (
        .in_c1_ene14_fanout_adaptor463(redist87_i_llvm_fpga_fanout_i1_c1_ene14_fanout_adaptor463_conv2d1x16_q_2_q),
        .in_data_in(redist44_i_llvm_fpga_pop_f32_pre_e68_pop67_conv2d1x195_out_data_out_1_q),
        .in_feedback_stall_in_67(i_llvm_fpga_pop_f32_pre_e68_pop67_conv2d1x195_out_feedback_stall_out_67),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg65_q),
        .out_data_out(),
        .out_feedback_out_67(i_llvm_fpga_push_f32_pre_e68_push67_conv2d1x196_out_feedback_out_67),
        .out_feedback_valid_out_67(i_llvm_fpga_push_f32_pre_e68_push67_conv2d1x196_out_feedback_valid_out_67),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_fanout_i1_c1_ene2_fanout_adaptor461_conv2d1x13(REG,71)@138 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_llvm_fpga_fanout_i1_c1_ene2_fanout_adaptor461_conv2d1x13_q <= $unsigned(1'b0);
        end
        else
        begin
            i_llvm_fpga_fanout_i1_c1_ene2_fanout_adaptor461_conv2d1x13_q <= in_c1_eni25_2_tpl;
        end
    end

    // redist84_i_llvm_fpga_fanout_i1_c1_ene2_fanout_adaptor461_conv2d1x13_q_2(DELAY,317)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist84_i_llvm_fpga_fanout_i1_c1_ene2_fanout_adaptor461_conv2d1x13_q_2_delay_0 <= '0;
            redist84_i_llvm_fpga_fanout_i1_c1_ene2_fanout_adaptor461_conv2d1x13_q_2_q <= '0;
        end
        else
        begin
            redist84_i_llvm_fpga_fanout_i1_c1_ene2_fanout_adaptor461_conv2d1x13_q_2_delay_0 <= $unsigned(i_llvm_fpga_fanout_i1_c1_ene2_fanout_adaptor461_conv2d1x13_q);
            redist84_i_llvm_fpga_fanout_i1_c1_ene2_fanout_adaptor461_conv2d1x13_q_2_q <= redist84_i_llvm_fpga_fanout_i1_c1_ene2_fanout_adaptor461_conv2d1x13_q_2_delay_0;
        end
    end

    // redist26_sync_together232_aunroll_vunroll_x_in_c1_eni25_17_tpl_1(DELAY,259)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist26_sync_together232_aunroll_vunroll_x_in_c1_eni25_17_tpl_1_q <= '0;
        end
        else
        begin
            redist26_sync_together232_aunroll_vunroll_x_in_c1_eni25_17_tpl_1_q <= $unsigned(in_c1_eni25_17_tpl);
        end
    end

    // redist27_sync_together232_aunroll_vunroll_x_in_c1_eni25_17_tpl_3(DELAY,260)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist27_sync_together232_aunroll_vunroll_x_in_c1_eni25_17_tpl_3_delay_0 <= '0;
            redist27_sync_together232_aunroll_vunroll_x_in_c1_eni25_17_tpl_3_q <= '0;
        end
        else
        begin
            redist27_sync_together232_aunroll_vunroll_x_in_c1_eni25_17_tpl_3_delay_0 <= $unsigned(redist26_sync_together232_aunroll_vunroll_x_in_c1_eni25_17_tpl_1_q);
            redist27_sync_together232_aunroll_vunroll_x_in_c1_eni25_17_tpl_3_q <= redist27_sync_together232_aunroll_vunroll_x_in_c1_eni25_17_tpl_3_delay_0;
        end
    end

    // i_llvm_fpga_pop_f32_pre_e68_pop67_conv2d1x195(BLACKBOX,112)@141
    // out out_feedback_stall_out_67@20000000
    conv2d1x1_i_llvm_fpga_pop_f32_pre_e68_pop67_0 thei_llvm_fpga_pop_f32_pre_e68_pop67_conv2d1x195 (
        .in_data_in(redist27_sync_together232_aunroll_vunroll_x_in_c1_eni25_17_tpl_3_q),
        .in_dir(redist84_i_llvm_fpga_fanout_i1_c1_ene2_fanout_adaptor461_conv2d1x13_q_2_q),
        .in_feedback_in_67(i_llvm_fpga_push_f32_pre_e68_push67_conv2d1x196_out_feedback_out_67),
        .in_feedback_valid_in_67(i_llvm_fpga_push_f32_pre_e68_push67_conv2d1x196_out_feedback_valid_out_67),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg64_q),
        .out_data_out(i_llvm_fpga_pop_f32_pre_e68_pop67_conv2d1x195_out_data_out),
        .out_feedback_stall_out_67(i_llvm_fpga_pop_f32_pre_e68_pop67_conv2d1x195_out_feedback_stall_out_67),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist44_i_llvm_fpga_pop_f32_pre_e68_pop67_conv2d1x195_out_data_out_1(DELAY,277)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist44_i_llvm_fpga_pop_f32_pre_e68_pop67_conv2d1x195_out_data_out_1_q <= '0;
        end
        else
        begin
            redist44_i_llvm_fpga_pop_f32_pre_e68_pop67_conv2d1x195_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_f32_pre_e68_pop67_conv2d1x195_out_data_out);
        end
    end

    // redist45_i_llvm_fpga_pop_f32_pre_e68_pop67_conv2d1x195_out_data_out_2(DELAY,278)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist45_i_llvm_fpga_pop_f32_pre_e68_pop67_conv2d1x195_out_data_out_2_q <= '0;
        end
        else
        begin
            redist45_i_llvm_fpga_pop_f32_pre_e68_pop67_conv2d1x195_out_data_out_2_q <= $unsigned(redist44_i_llvm_fpga_pop_f32_pre_e68_pop67_conv2d1x195_out_data_out_1_q);
        end
    end

    // valid_fanout_reg21(REG,188)@138 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg21_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg21_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_ffwd_dest_i1_cmp126316_conv2d1x128(BLACKBOX,76)@139
    conv2d1x1_i_llvm_fpga_ffwd_dest_i1_cmp126316_0 thei_llvm_fpga_ffwd_dest_i1_cmp126316_conv2d1x128 (
        .in_intel_reserved_ffwd_2_0(in_intel_reserved_ffwd_2_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg21_q),
        .out_dest_data_out_2_0(i_llvm_fpga_ffwd_dest_i1_cmp126316_conv2d1x128_out_dest_data_out_2_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_notlhs182_conv2d1x129(LOGICAL,146)@139
    assign i_notlhs182_conv2d1x129_q = i_llvm_fpga_ffwd_dest_i1_cmp126316_conv2d1x128_out_dest_data_out_2_0 ^ VCC_q;

    // redist21_sync_together232_aunroll_vunroll_x_in_c1_eni25_15_tpl_1(DELAY,254)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist21_sync_together232_aunroll_vunroll_x_in_c1_eni25_15_tpl_1_q <= '0;
        end
        else
        begin
            redist21_sync_together232_aunroll_vunroll_x_in_c1_eni25_15_tpl_1_q <= $unsigned(in_c1_eni25_15_tpl);
        end
    end

    // i_not_181_conv2d1x130(LOGICAL,145)@139 + 1
    assign i_not_181_conv2d1x130_qi = redist21_sync_together232_aunroll_vunroll_x_in_c1_eni25_15_tpl_1_q | i_notlhs182_conv2d1x129_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_not_181_conv2d1x130_delay ( .xin(i_not_181_conv2d1x130_qi), .xout(i_not_181_conv2d1x130_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist43_i_not_181_conv2d1x130_q_3(DELAY,276)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist43_i_not_181_conv2d1x130_q_3_delay_0 <= '0;
            redist43_i_not_181_conv2d1x130_q_3_q <= '0;
        end
        else
        begin
            redist43_i_not_181_conv2d1x130_q_3_delay_0 <= $unsigned(i_not_181_conv2d1x130_q);
            redist43_i_not_181_conv2d1x130_q_3_q <= redist43_i_not_181_conv2d1x130_q_3_delay_0;
        end
    end

    // i_llvm_fpga_fanout_i1_not_181_fanout_adaptor_conv2d1x132(REG,75)@142 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_llvm_fpga_fanout_i1_not_181_fanout_adaptor_conv2d1x132_q <= $unsigned(1'b0);
        end
        else
        begin
            i_llvm_fpga_fanout_i1_not_181_fanout_adaptor_conv2d1x132_q <= redist43_i_not_181_conv2d1x130_q_3_q;
        end
    end

    // i_select69_conv2d1x197(MUX,162)@143
    assign i_select69_conv2d1x197_s = i_llvm_fpga_fanout_i1_not_181_fanout_adaptor_conv2d1x132_q;
    always @(i_select69_conv2d1x197_s or redist69_i_llvm_fpga_pop_f32_pop49_conv2d1x18_out_data_out_3_outputreg0_q or redist45_i_llvm_fpga_pop_f32_pre_e68_pop67_conv2d1x195_out_data_out_2_q)
    begin
        unique case (i_select69_conv2d1x197_s)
            1'b0 : i_select69_conv2d1x197_q = redist69_i_llvm_fpga_pop_f32_pop49_conv2d1x18_out_data_out_3_outputreg0_q;
            1'b1 : i_select69_conv2d1x197_q = redist45_i_llvm_fpga_pop_f32_pre_e68_pop67_conv2d1x195_out_data_out_2_q;
            default : i_select69_conv2d1x197_q = 32'b0;
        endcase
    end

    // valid_fanout_reg62(REG,229)@140 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg62_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg62_q <= $unsigned(redist40_sync_together232_aunroll_vunroll_x_in_i_valid_2_q);
        end
    end

    // valid_fanout_reg63(REG,230)@141 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg63_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg63_q <= $unsigned(redist41_sync_together232_aunroll_vunroll_x_in_i_valid_3_q);
        end
    end

    // i_llvm_fpga_push_f32_pre74_e69_push68_conv2d1x193(BLACKBOX,113)@142
    // out out_feedback_out_68@20000000
    // out out_feedback_valid_out_68@20000000
    conv2d1x1_i_llvm_fpga_push_f32_pre74_e69_push68_0 thei_llvm_fpga_push_f32_pre74_e69_push68_conv2d1x193 (
        .in_c1_ene14_fanout_adaptor463(redist87_i_llvm_fpga_fanout_i1_c1_ene14_fanout_adaptor463_conv2d1x16_q_2_q),
        .in_data_in(redist67_i_llvm_fpga_pop_f32_pre74_e69_pop68_conv2d1x192_out_data_out_1_q),
        .in_feedback_stall_in_68(i_llvm_fpga_pop_f32_pre74_e69_pop68_conv2d1x192_out_feedback_stall_out_68),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg63_q),
        .out_data_out(),
        .out_feedback_out_68(i_llvm_fpga_push_f32_pre74_e69_push68_conv2d1x193_out_feedback_out_68),
        .out_feedback_valid_out_68(i_llvm_fpga_push_f32_pre74_e69_push68_conv2d1x193_out_feedback_valid_out_68),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist29_sync_together232_aunroll_vunroll_x_in_c1_eni25_19_tpl_1(DELAY,262)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist29_sync_together232_aunroll_vunroll_x_in_c1_eni25_19_tpl_1_q <= '0;
        end
        else
        begin
            redist29_sync_together232_aunroll_vunroll_x_in_c1_eni25_19_tpl_1_q <= $unsigned(in_c1_eni25_19_tpl);
        end
    end

    // redist30_sync_together232_aunroll_vunroll_x_in_c1_eni25_19_tpl_3(DELAY,263)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist30_sync_together232_aunroll_vunroll_x_in_c1_eni25_19_tpl_3_delay_0 <= '0;
            redist30_sync_together232_aunroll_vunroll_x_in_c1_eni25_19_tpl_3_q <= '0;
        end
        else
        begin
            redist30_sync_together232_aunroll_vunroll_x_in_c1_eni25_19_tpl_3_delay_0 <= $unsigned(redist29_sync_together232_aunroll_vunroll_x_in_c1_eni25_19_tpl_1_q);
            redist30_sync_together232_aunroll_vunroll_x_in_c1_eni25_19_tpl_3_q <= redist30_sync_together232_aunroll_vunroll_x_in_c1_eni25_19_tpl_3_delay_0;
        end
    end

    // i_llvm_fpga_pop_f32_pre74_e69_pop68_conv2d1x192(BLACKBOX,97)@141
    // out out_feedback_stall_out_68@20000000
    conv2d1x1_i_llvm_fpga_pop_f32_pre74_e69_pop68_0 thei_llvm_fpga_pop_f32_pre74_e69_pop68_conv2d1x192 (
        .in_data_in(redist30_sync_together232_aunroll_vunroll_x_in_c1_eni25_19_tpl_3_q),
        .in_dir(redist84_i_llvm_fpga_fanout_i1_c1_ene2_fanout_adaptor461_conv2d1x13_q_2_q),
        .in_feedback_in_68(i_llvm_fpga_push_f32_pre74_e69_push68_conv2d1x193_out_feedback_out_68),
        .in_feedback_valid_in_68(i_llvm_fpga_push_f32_pre74_e69_push68_conv2d1x193_out_feedback_valid_out_68),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg62_q),
        .out_data_out(i_llvm_fpga_pop_f32_pre74_e69_pop68_conv2d1x192_out_data_out),
        .out_feedback_stall_out_68(i_llvm_fpga_pop_f32_pre74_e69_pop68_conv2d1x192_out_feedback_stall_out_68),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist67_i_llvm_fpga_pop_f32_pre74_e69_pop68_conv2d1x192_out_data_out_1(DELAY,300)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist67_i_llvm_fpga_pop_f32_pre74_e69_pop68_conv2d1x192_out_data_out_1_q <= '0;
        end
        else
        begin
            redist67_i_llvm_fpga_pop_f32_pre74_e69_pop68_conv2d1x192_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_f32_pre74_e69_pop68_conv2d1x192_out_data_out);
        end
    end

    // redist68_i_llvm_fpga_pop_f32_pre74_e69_pop68_conv2d1x192_out_data_out_2(DELAY,301)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist68_i_llvm_fpga_pop_f32_pre74_e69_pop68_conv2d1x192_out_data_out_2_q <= '0;
        end
        else
        begin
            redist68_i_llvm_fpga_pop_f32_pre74_e69_pop68_conv2d1x192_out_data_out_2_q <= $unsigned(redist67_i_llvm_fpga_pop_f32_pre74_e69_pop68_conv2d1x192_out_data_out_1_q);
        end
    end

    // i_select66_conv2d1x194(MUX,161)@143
    assign i_select66_conv2d1x194_s = i_llvm_fpga_fanout_i1_not_181_fanout_adaptor_conv2d1x132_q;
    always @(i_select66_conv2d1x194_s or redist70_i_llvm_fpga_pop_f32_pop48_conv2d1x19_out_data_out_3_outputreg0_q or redist68_i_llvm_fpga_pop_f32_pre74_e69_pop68_conv2d1x192_out_data_out_2_q)
    begin
        unique case (i_select66_conv2d1x194_s)
            1'b0 : i_select66_conv2d1x194_q = redist70_i_llvm_fpga_pop_f32_pop48_conv2d1x19_out_data_out_3_outputreg0_q;
            1'b1 : i_select66_conv2d1x194_q = redist68_i_llvm_fpga_pop_f32_pre74_e69_pop68_conv2d1x192_out_data_out_2_q;
            default : i_select66_conv2d1x194_q = 32'b0;
        endcase
    end

    // valid_fanout_reg60(REG,227)@140 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg60_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg60_q <= $unsigned(redist40_sync_together232_aunroll_vunroll_x_in_i_valid_2_q);
        end
    end

    // valid_fanout_reg61(REG,228)@141 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg61_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg61_q <= $unsigned(redist41_sync_together232_aunroll_vunroll_x_in_i_valid_3_q);
        end
    end

    // i_llvm_fpga_push_f32_pre75_e70_push69_conv2d1x190(BLACKBOX,114)@142
    // out out_feedback_out_69@20000000
    // out out_feedback_valid_out_69@20000000
    conv2d1x1_i_llvm_fpga_push_f32_pre75_e70_push69_0 thei_llvm_fpga_push_f32_pre75_e70_push69_conv2d1x190 (
        .in_c1_ene14_fanout_adaptor463(redist87_i_llvm_fpga_fanout_i1_c1_ene14_fanout_adaptor463_conv2d1x16_q_2_q),
        .in_data_in(redist65_i_llvm_fpga_pop_f32_pre75_e70_pop69_conv2d1x189_out_data_out_1_q),
        .in_feedback_stall_in_69(i_llvm_fpga_pop_f32_pre75_e70_pop69_conv2d1x189_out_feedback_stall_out_69),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg61_q),
        .out_data_out(),
        .out_feedback_out_69(i_llvm_fpga_push_f32_pre75_e70_push69_conv2d1x190_out_feedback_out_69),
        .out_feedback_valid_out_69(i_llvm_fpga_push_f32_pre75_e70_push69_conv2d1x190_out_feedback_valid_out_69),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist32_sync_together232_aunroll_vunroll_x_in_c1_eni25_21_tpl_1(DELAY,265)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist32_sync_together232_aunroll_vunroll_x_in_c1_eni25_21_tpl_1_q <= '0;
        end
        else
        begin
            redist32_sync_together232_aunroll_vunroll_x_in_c1_eni25_21_tpl_1_q <= $unsigned(in_c1_eni25_21_tpl);
        end
    end

    // redist33_sync_together232_aunroll_vunroll_x_in_c1_eni25_21_tpl_3(DELAY,266)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist33_sync_together232_aunroll_vunroll_x_in_c1_eni25_21_tpl_3_delay_0 <= '0;
            redist33_sync_together232_aunroll_vunroll_x_in_c1_eni25_21_tpl_3_q <= '0;
        end
        else
        begin
            redist33_sync_together232_aunroll_vunroll_x_in_c1_eni25_21_tpl_3_delay_0 <= $unsigned(redist32_sync_together232_aunroll_vunroll_x_in_c1_eni25_21_tpl_1_q);
            redist33_sync_together232_aunroll_vunroll_x_in_c1_eni25_21_tpl_3_q <= redist33_sync_together232_aunroll_vunroll_x_in_c1_eni25_21_tpl_3_delay_0;
        end
    end

    // i_llvm_fpga_pop_f32_pre75_e70_pop69_conv2d1x189(BLACKBOX,98)@141
    // out out_feedback_stall_out_69@20000000
    conv2d1x1_i_llvm_fpga_pop_f32_pre75_e70_pop69_0 thei_llvm_fpga_pop_f32_pre75_e70_pop69_conv2d1x189 (
        .in_data_in(redist33_sync_together232_aunroll_vunroll_x_in_c1_eni25_21_tpl_3_q),
        .in_dir(redist84_i_llvm_fpga_fanout_i1_c1_ene2_fanout_adaptor461_conv2d1x13_q_2_q),
        .in_feedback_in_69(i_llvm_fpga_push_f32_pre75_e70_push69_conv2d1x190_out_feedback_out_69),
        .in_feedback_valid_in_69(i_llvm_fpga_push_f32_pre75_e70_push69_conv2d1x190_out_feedback_valid_out_69),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg60_q),
        .out_data_out(i_llvm_fpga_pop_f32_pre75_e70_pop69_conv2d1x189_out_data_out),
        .out_feedback_stall_out_69(i_llvm_fpga_pop_f32_pre75_e70_pop69_conv2d1x189_out_feedback_stall_out_69),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist65_i_llvm_fpga_pop_f32_pre75_e70_pop69_conv2d1x189_out_data_out_1(DELAY,298)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist65_i_llvm_fpga_pop_f32_pre75_e70_pop69_conv2d1x189_out_data_out_1_q <= '0;
        end
        else
        begin
            redist65_i_llvm_fpga_pop_f32_pre75_e70_pop69_conv2d1x189_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_f32_pre75_e70_pop69_conv2d1x189_out_data_out);
        end
    end

    // redist66_i_llvm_fpga_pop_f32_pre75_e70_pop69_conv2d1x189_out_data_out_2(DELAY,299)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist66_i_llvm_fpga_pop_f32_pre75_e70_pop69_conv2d1x189_out_data_out_2_q <= '0;
        end
        else
        begin
            redist66_i_llvm_fpga_pop_f32_pre75_e70_pop69_conv2d1x189_out_data_out_2_q <= $unsigned(redist65_i_llvm_fpga_pop_f32_pre75_e70_pop69_conv2d1x189_out_data_out_1_q);
        end
    end

    // i_select63_conv2d1x191(MUX,160)@143
    assign i_select63_conv2d1x191_s = i_llvm_fpga_fanout_i1_not_181_fanout_adaptor_conv2d1x132_q;
    always @(i_select63_conv2d1x191_s or redist71_i_llvm_fpga_pop_f32_pop47_conv2d1x110_out_data_out_3_outputreg0_q or redist66_i_llvm_fpga_pop_f32_pre75_e70_pop69_conv2d1x189_out_data_out_2_q)
    begin
        unique case (i_select63_conv2d1x191_s)
            1'b0 : i_select63_conv2d1x191_q = redist71_i_llvm_fpga_pop_f32_pop47_conv2d1x110_out_data_out_3_outputreg0_q;
            1'b1 : i_select63_conv2d1x191_q = redist66_i_llvm_fpga_pop_f32_pre75_e70_pop69_conv2d1x189_out_data_out_2_q;
            default : i_select63_conv2d1x191_q = 32'b0;
        endcase
    end

    // valid_fanout_reg58(REG,225)@140 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg58_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg58_q <= $unsigned(redist40_sync_together232_aunroll_vunroll_x_in_i_valid_2_q);
        end
    end

    // valid_fanout_reg59(REG,226)@141 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg59_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg59_q <= $unsigned(redist41_sync_together232_aunroll_vunroll_x_in_i_valid_3_q);
        end
    end

    // redist20_sync_together232_aunroll_vunroll_x_in_c1_eni25_14_tpl_3(DELAY,253)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist20_sync_together232_aunroll_vunroll_x_in_c1_eni25_14_tpl_3_delay_0 <= '0;
            redist20_sync_together232_aunroll_vunroll_x_in_c1_eni25_14_tpl_3_q <= '0;
        end
        else
        begin
            redist20_sync_together232_aunroll_vunroll_x_in_c1_eni25_14_tpl_3_delay_0 <= $unsigned(redist19_sync_together232_aunroll_vunroll_x_in_c1_eni25_14_tpl_1_q);
            redist20_sync_together232_aunroll_vunroll_x_in_c1_eni25_14_tpl_3_q <= redist20_sync_together232_aunroll_vunroll_x_in_c1_eni25_14_tpl_3_delay_0;
        end
    end

    // i_llvm_fpga_fanout_i1_c1_ene14_fanout_adaptor_conv2d1x17(REG,70)@141 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_llvm_fpga_fanout_i1_c1_ene14_fanout_adaptor_conv2d1x17_q <= $unsigned(1'b0);
        end
        else
        begin
            i_llvm_fpga_fanout_i1_c1_ene14_fanout_adaptor_conv2d1x17_q <= redist20_sync_together232_aunroll_vunroll_x_in_c1_eni25_14_tpl_3_q;
        end
    end

    // i_llvm_fpga_push_f32_pre76_e71_push70_conv2d1x187(BLACKBOX,115)@142
    // out out_feedback_out_70@20000000
    // out out_feedback_valid_out_70@20000000
    conv2d1x1_i_llvm_fpga_push_f32_pre76_e71_push70_0 thei_llvm_fpga_push_f32_pre76_e71_push70_conv2d1x187 (
        .in_c1_ene14_fanout_adaptor(i_llvm_fpga_fanout_i1_c1_ene14_fanout_adaptor_conv2d1x17_q),
        .in_data_in(redist63_i_llvm_fpga_pop_f32_pre76_e71_pop70_conv2d1x186_out_data_out_1_q),
        .in_feedback_stall_in_70(i_llvm_fpga_pop_f32_pre76_e71_pop70_conv2d1x186_out_feedback_stall_out_70),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg59_q),
        .out_data_out(),
        .out_feedback_out_70(i_llvm_fpga_push_f32_pre76_e71_push70_conv2d1x187_out_feedback_out_70),
        .out_feedback_valid_out_70(i_llvm_fpga_push_f32_pre76_e71_push70_conv2d1x187_out_feedback_valid_out_70),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist35_sync_together232_aunroll_vunroll_x_in_c1_eni25_23_tpl_1(DELAY,268)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist35_sync_together232_aunroll_vunroll_x_in_c1_eni25_23_tpl_1_q <= '0;
        end
        else
        begin
            redist35_sync_together232_aunroll_vunroll_x_in_c1_eni25_23_tpl_1_q <= $unsigned(in_c1_eni25_23_tpl);
        end
    end

    // redist36_sync_together232_aunroll_vunroll_x_in_c1_eni25_23_tpl_3(DELAY,269)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist36_sync_together232_aunroll_vunroll_x_in_c1_eni25_23_tpl_3_delay_0 <= '0;
            redist36_sync_together232_aunroll_vunroll_x_in_c1_eni25_23_tpl_3_q <= '0;
        end
        else
        begin
            redist36_sync_together232_aunroll_vunroll_x_in_c1_eni25_23_tpl_3_delay_0 <= $unsigned(redist35_sync_together232_aunroll_vunroll_x_in_c1_eni25_23_tpl_1_q);
            redist36_sync_together232_aunroll_vunroll_x_in_c1_eni25_23_tpl_3_q <= redist36_sync_together232_aunroll_vunroll_x_in_c1_eni25_23_tpl_3_delay_0;
        end
    end

    // i_llvm_fpga_pop_f32_pre76_e71_pop70_conv2d1x186(BLACKBOX,99)@141
    // out out_feedback_stall_out_70@20000000
    conv2d1x1_i_llvm_fpga_pop_f32_pre76_e71_pop70_0 thei_llvm_fpga_pop_f32_pre76_e71_pop70_conv2d1x186 (
        .in_data_in(redist36_sync_together232_aunroll_vunroll_x_in_c1_eni25_23_tpl_3_q),
        .in_dir(redist84_i_llvm_fpga_fanout_i1_c1_ene2_fanout_adaptor461_conv2d1x13_q_2_q),
        .in_feedback_in_70(i_llvm_fpga_push_f32_pre76_e71_push70_conv2d1x187_out_feedback_out_70),
        .in_feedback_valid_in_70(i_llvm_fpga_push_f32_pre76_e71_push70_conv2d1x187_out_feedback_valid_out_70),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg58_q),
        .out_data_out(i_llvm_fpga_pop_f32_pre76_e71_pop70_conv2d1x186_out_data_out),
        .out_feedback_stall_out_70(i_llvm_fpga_pop_f32_pre76_e71_pop70_conv2d1x186_out_feedback_stall_out_70),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist63_i_llvm_fpga_pop_f32_pre76_e71_pop70_conv2d1x186_out_data_out_1(DELAY,296)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist63_i_llvm_fpga_pop_f32_pre76_e71_pop70_conv2d1x186_out_data_out_1_q <= '0;
        end
        else
        begin
            redist63_i_llvm_fpga_pop_f32_pre76_e71_pop70_conv2d1x186_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_f32_pre76_e71_pop70_conv2d1x186_out_data_out);
        end
    end

    // redist64_i_llvm_fpga_pop_f32_pre76_e71_pop70_conv2d1x186_out_data_out_2(DELAY,297)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist64_i_llvm_fpga_pop_f32_pre76_e71_pop70_conv2d1x186_out_data_out_2_q <= '0;
        end
        else
        begin
            redist64_i_llvm_fpga_pop_f32_pre76_e71_pop70_conv2d1x186_out_data_out_2_q <= $unsigned(redist63_i_llvm_fpga_pop_f32_pre76_e71_pop70_conv2d1x186_out_data_out_1_q);
        end
    end

    // i_select60_conv2d1x188(MUX,159)@143
    assign i_select60_conv2d1x188_s = i_llvm_fpga_fanout_i1_not_181_fanout_adaptor_conv2d1x132_q;
    always @(i_select60_conv2d1x188_s or redist72_i_llvm_fpga_pop_f32_pop46_conv2d1x111_out_data_out_3_outputreg0_q or redist64_i_llvm_fpga_pop_f32_pre76_e71_pop70_conv2d1x186_out_data_out_2_q)
    begin
        unique case (i_select60_conv2d1x188_s)
            1'b0 : i_select60_conv2d1x188_q = redist72_i_llvm_fpga_pop_f32_pop46_conv2d1x111_out_data_out_3_outputreg0_q;
            1'b1 : i_select60_conv2d1x188_q = redist64_i_llvm_fpga_pop_f32_pre76_e71_pop70_conv2d1x186_out_data_out_2_q;
            default : i_select60_conv2d1x188_q = 32'b0;
        endcase
    end

    // valid_fanout_reg56(REG,223)@141 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg56_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg56_q <= $unsigned(redist41_sync_together232_aunroll_vunroll_x_in_i_valid_3_q);
        end
    end

    // valid_fanout_reg57(REG,224)@141 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg57_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg57_q <= $unsigned(redist41_sync_together232_aunroll_vunroll_x_in_i_valid_3_q);
        end
    end

    // i_llvm_fpga_push_f32_pre77_e72_push71_conv2d1x184(BLACKBOX,116)@142
    // out out_feedback_out_71@20000000
    // out out_feedback_valid_out_71@20000000
    conv2d1x1_i_llvm_fpga_push_f32_pre77_e72_push71_0 thei_llvm_fpga_push_f32_pre77_e72_push71_conv2d1x184 (
        .in_c1_ene14_fanout_adaptor(i_llvm_fpga_fanout_i1_c1_ene14_fanout_adaptor_conv2d1x17_q),
        .in_data_in(i_llvm_fpga_pop_f32_pre77_e72_pop71_conv2d1x183_out_data_out),
        .in_feedback_stall_in_71(i_llvm_fpga_pop_f32_pre77_e72_pop71_conv2d1x183_out_feedback_stall_out_71),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg57_q),
        .out_data_out(),
        .out_feedback_out_71(i_llvm_fpga_push_f32_pre77_e72_push71_conv2d1x184_out_feedback_out_71),
        .out_feedback_valid_out_71(i_llvm_fpga_push_f32_pre77_e72_push71_conv2d1x184_out_feedback_valid_out_71),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist2_sync_together232_aunroll_vunroll_x_in_c1_eni25_2_tpl_1(DELAY,235)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_sync_together232_aunroll_vunroll_x_in_c1_eni25_2_tpl_1_q <= '0;
        end
        else
        begin
            redist2_sync_together232_aunroll_vunroll_x_in_c1_eni25_2_tpl_1_q <= $unsigned(in_c1_eni25_2_tpl);
        end
    end

    // i_llvm_fpga_fanout_i1_c1_ene2_fanout_adaptor_conv2d1x14(REG,73)@139 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_llvm_fpga_fanout_i1_c1_ene2_fanout_adaptor_conv2d1x14_q <= $unsigned(1'b0);
        end
        else
        begin
            i_llvm_fpga_fanout_i1_c1_ene2_fanout_adaptor_conv2d1x14_q <= redist2_sync_together232_aunroll_vunroll_x_in_c1_eni25_2_tpl_1_q;
        end
    end

    // redist81_i_llvm_fpga_fanout_i1_c1_ene2_fanout_adaptor_conv2d1x14_q_1(DELAY,314)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist81_i_llvm_fpga_fanout_i1_c1_ene2_fanout_adaptor_conv2d1x14_q_1_q <= '0;
        end
        else
        begin
            redist81_i_llvm_fpga_fanout_i1_c1_ene2_fanout_adaptor_conv2d1x14_q_1_q <= $unsigned(i_llvm_fpga_fanout_i1_c1_ene2_fanout_adaptor_conv2d1x14_q);
        end
    end

    // redist82_i_llvm_fpga_fanout_i1_c1_ene2_fanout_adaptor_conv2d1x14_q_2(DELAY,315)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist82_i_llvm_fpga_fanout_i1_c1_ene2_fanout_adaptor_conv2d1x14_q_2_q <= '0;
        end
        else
        begin
            redist82_i_llvm_fpga_fanout_i1_c1_ene2_fanout_adaptor_conv2d1x14_q_2_q <= $unsigned(redist81_i_llvm_fpga_fanout_i1_c1_ene2_fanout_adaptor_conv2d1x14_q_1_q);
        end
    end

    // redist0_sync_together232_aunroll_vunroll_x_in_c1_eni25_1_tpl_2(DELAY,233)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_sync_together232_aunroll_vunroll_x_in_c1_eni25_1_tpl_2_delay_0 <= '0;
            redist0_sync_together232_aunroll_vunroll_x_in_c1_eni25_1_tpl_2_q <= '0;
        end
        else
        begin
            redist0_sync_together232_aunroll_vunroll_x_in_c1_eni25_1_tpl_2_delay_0 <= $unsigned(in_c1_eni25_1_tpl);
            redist0_sync_together232_aunroll_vunroll_x_in_c1_eni25_1_tpl_2_q <= redist0_sync_together232_aunroll_vunroll_x_in_c1_eni25_1_tpl_2_delay_0;
        end
    end

    // redist1_sync_together232_aunroll_vunroll_x_in_c1_eni25_1_tpl_4(DELAY,234)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together232_aunroll_vunroll_x_in_c1_eni25_1_tpl_4_delay_0 <= '0;
            redist1_sync_together232_aunroll_vunroll_x_in_c1_eni25_1_tpl_4_q <= '0;
        end
        else
        begin
            redist1_sync_together232_aunroll_vunroll_x_in_c1_eni25_1_tpl_4_delay_0 <= $unsigned(redist0_sync_together232_aunroll_vunroll_x_in_c1_eni25_1_tpl_2_q);
            redist1_sync_together232_aunroll_vunroll_x_in_c1_eni25_1_tpl_4_q <= redist1_sync_together232_aunroll_vunroll_x_in_c1_eni25_1_tpl_4_delay_0;
        end
    end

    // i_llvm_fpga_pop_f32_pre77_e72_pop71_conv2d1x183(BLACKBOX,100)@142
    // out out_feedback_stall_out_71@20000000
    conv2d1x1_i_llvm_fpga_pop_f32_pre77_e72_pop71_0 thei_llvm_fpga_pop_f32_pre77_e72_pop71_conv2d1x183 (
        .in_data_in(redist1_sync_together232_aunroll_vunroll_x_in_c1_eni25_1_tpl_4_q),
        .in_dir(redist82_i_llvm_fpga_fanout_i1_c1_ene2_fanout_adaptor_conv2d1x14_q_2_q),
        .in_feedback_in_71(i_llvm_fpga_push_f32_pre77_e72_push71_conv2d1x184_out_feedback_out_71),
        .in_feedback_valid_in_71(i_llvm_fpga_push_f32_pre77_e72_push71_conv2d1x184_out_feedback_valid_out_71),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg56_q),
        .out_data_out(i_llvm_fpga_pop_f32_pre77_e72_pop71_conv2d1x183_out_data_out),
        .out_feedback_stall_out_71(i_llvm_fpga_pop_f32_pre77_e72_pop71_conv2d1x183_out_feedback_stall_out_71),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist62_i_llvm_fpga_pop_f32_pre77_e72_pop71_conv2d1x183_out_data_out_1(DELAY,295)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist62_i_llvm_fpga_pop_f32_pre77_e72_pop71_conv2d1x183_out_data_out_1_q <= '0;
        end
        else
        begin
            redist62_i_llvm_fpga_pop_f32_pre77_e72_pop71_conv2d1x183_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_f32_pre77_e72_pop71_conv2d1x183_out_data_out);
        end
    end

    // i_select57_conv2d1x185(MUX,158)@143
    assign i_select57_conv2d1x185_s = i_llvm_fpga_fanout_i1_not_181_fanout_adaptor_conv2d1x132_q;
    always @(i_select57_conv2d1x185_s or redist73_i_llvm_fpga_pop_f32_pop45_conv2d1x112_out_data_out_2_q or redist62_i_llvm_fpga_pop_f32_pre77_e72_pop71_conv2d1x183_out_data_out_1_q)
    begin
        unique case (i_select57_conv2d1x185_s)
            1'b0 : i_select57_conv2d1x185_q = redist73_i_llvm_fpga_pop_f32_pop45_conv2d1x112_out_data_out_2_q;
            1'b1 : i_select57_conv2d1x185_q = redist62_i_llvm_fpga_pop_f32_pre77_e72_pop71_conv2d1x183_out_data_out_1_q;
            default : i_select57_conv2d1x185_q = 32'b0;
        endcase
    end

    // valid_fanout_reg54(REG,221)@140 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg54_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg54_q <= $unsigned(redist40_sync_together232_aunroll_vunroll_x_in_i_valid_2_q);
        end
    end

    // valid_fanout_reg55(REG,222)@141 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg55_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg55_q <= $unsigned(redist41_sync_together232_aunroll_vunroll_x_in_i_valid_3_q);
        end
    end

    // i_llvm_fpga_push_f32_pre78_e73_push72_conv2d1x181(BLACKBOX,117)@142
    // out out_feedback_out_72@20000000
    // out out_feedback_valid_out_72@20000000
    conv2d1x1_i_llvm_fpga_push_f32_pre78_e73_push72_0 thei_llvm_fpga_push_f32_pre78_e73_push72_conv2d1x181 (
        .in_c1_ene14_fanout_adaptor(i_llvm_fpga_fanout_i1_c1_ene14_fanout_adaptor_conv2d1x17_q),
        .in_data_in(redist60_i_llvm_fpga_pop_f32_pre78_e73_pop72_conv2d1x180_out_data_out_1_q),
        .in_feedback_stall_in_72(i_llvm_fpga_pop_f32_pre78_e73_pop72_conv2d1x180_out_feedback_stall_out_72),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg55_q),
        .out_data_out(),
        .out_feedback_out_72(i_llvm_fpga_push_f32_pre78_e73_push72_conv2d1x181_out_feedback_out_72),
        .out_feedback_valid_out_72(i_llvm_fpga_push_f32_pre78_e73_push72_conv2d1x181_out_feedback_valid_out_72),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist3_sync_together232_aunroll_vunroll_x_in_c1_eni25_3_tpl_2(DELAY,236)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_sync_together232_aunroll_vunroll_x_in_c1_eni25_3_tpl_2_delay_0 <= '0;
            redist3_sync_together232_aunroll_vunroll_x_in_c1_eni25_3_tpl_2_q <= '0;
        end
        else
        begin
            redist3_sync_together232_aunroll_vunroll_x_in_c1_eni25_3_tpl_2_delay_0 <= $unsigned(in_c1_eni25_3_tpl);
            redist3_sync_together232_aunroll_vunroll_x_in_c1_eni25_3_tpl_2_q <= redist3_sync_together232_aunroll_vunroll_x_in_c1_eni25_3_tpl_2_delay_0;
        end
    end

    // redist4_sync_together232_aunroll_vunroll_x_in_c1_eni25_3_tpl_3(DELAY,237)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_sync_together232_aunroll_vunroll_x_in_c1_eni25_3_tpl_3_q <= '0;
        end
        else
        begin
            redist4_sync_together232_aunroll_vunroll_x_in_c1_eni25_3_tpl_3_q <= $unsigned(redist3_sync_together232_aunroll_vunroll_x_in_c1_eni25_3_tpl_2_q);
        end
    end

    // i_llvm_fpga_pop_f32_pre78_e73_pop72_conv2d1x180(BLACKBOX,101)@141
    // out out_feedback_stall_out_72@20000000
    conv2d1x1_i_llvm_fpga_pop_f32_pre78_e73_pop72_0 thei_llvm_fpga_pop_f32_pre78_e73_pop72_conv2d1x180 (
        .in_data_in(redist4_sync_together232_aunroll_vunroll_x_in_c1_eni25_3_tpl_3_q),
        .in_dir(redist84_i_llvm_fpga_fanout_i1_c1_ene2_fanout_adaptor461_conv2d1x13_q_2_q),
        .in_feedback_in_72(i_llvm_fpga_push_f32_pre78_e73_push72_conv2d1x181_out_feedback_out_72),
        .in_feedback_valid_in_72(i_llvm_fpga_push_f32_pre78_e73_push72_conv2d1x181_out_feedback_valid_out_72),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg54_q),
        .out_data_out(i_llvm_fpga_pop_f32_pre78_e73_pop72_conv2d1x180_out_data_out),
        .out_feedback_stall_out_72(i_llvm_fpga_pop_f32_pre78_e73_pop72_conv2d1x180_out_feedback_stall_out_72),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist60_i_llvm_fpga_pop_f32_pre78_e73_pop72_conv2d1x180_out_data_out_1(DELAY,293)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist60_i_llvm_fpga_pop_f32_pre78_e73_pop72_conv2d1x180_out_data_out_1_q <= '0;
        end
        else
        begin
            redist60_i_llvm_fpga_pop_f32_pre78_e73_pop72_conv2d1x180_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_f32_pre78_e73_pop72_conv2d1x180_out_data_out);
        end
    end

    // redist61_i_llvm_fpga_pop_f32_pre78_e73_pop72_conv2d1x180_out_data_out_2(DELAY,294)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist61_i_llvm_fpga_pop_f32_pre78_e73_pop72_conv2d1x180_out_data_out_2_q <= '0;
        end
        else
        begin
            redist61_i_llvm_fpga_pop_f32_pre78_e73_pop72_conv2d1x180_out_data_out_2_q <= $unsigned(redist60_i_llvm_fpga_pop_f32_pre78_e73_pop72_conv2d1x180_out_data_out_1_q);
        end
    end

    // i_select54_conv2d1x182(MUX,157)@143
    assign i_select54_conv2d1x182_s = i_llvm_fpga_fanout_i1_not_181_fanout_adaptor_conv2d1x132_q;
    always @(i_select54_conv2d1x182_s or redist74_i_llvm_fpga_pop_f32_pop44_conv2d1x113_out_data_out_2_q or redist61_i_llvm_fpga_pop_f32_pre78_e73_pop72_conv2d1x180_out_data_out_2_q)
    begin
        unique case (i_select54_conv2d1x182_s)
            1'b0 : i_select54_conv2d1x182_q = redist74_i_llvm_fpga_pop_f32_pop44_conv2d1x113_out_data_out_2_q;
            1'b1 : i_select54_conv2d1x182_q = redist61_i_llvm_fpga_pop_f32_pre78_e73_pop72_conv2d1x180_out_data_out_2_q;
            default : i_select54_conv2d1x182_q = 32'b0;
        endcase
    end

    // valid_fanout_reg52(REG,219)@140 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg52_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg52_q <= $unsigned(redist40_sync_together232_aunroll_vunroll_x_in_i_valid_2_q);
        end
    end

    // valid_fanout_reg53(REG,220)@141 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg53_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg53_q <= $unsigned(redist41_sync_together232_aunroll_vunroll_x_in_i_valid_3_q);
        end
    end

    // i_llvm_fpga_push_f32_pre79_e74_push73_conv2d1x178(BLACKBOX,118)@142
    // out out_feedback_out_73@20000000
    // out out_feedback_valid_out_73@20000000
    conv2d1x1_i_llvm_fpga_push_f32_pre79_e74_push73_0 thei_llvm_fpga_push_f32_pre79_e74_push73_conv2d1x178 (
        .in_c1_ene14_fanout_adaptor(i_llvm_fpga_fanout_i1_c1_ene14_fanout_adaptor_conv2d1x17_q),
        .in_data_in(redist58_i_llvm_fpga_pop_f32_pre79_e74_pop73_conv2d1x177_out_data_out_1_q),
        .in_feedback_stall_in_73(i_llvm_fpga_pop_f32_pre79_e74_pop73_conv2d1x177_out_feedback_stall_out_73),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg53_q),
        .out_data_out(),
        .out_feedback_out_73(i_llvm_fpga_push_f32_pre79_e74_push73_conv2d1x178_out_feedback_out_73),
        .out_feedback_valid_out_73(i_llvm_fpga_push_f32_pre79_e74_push73_conv2d1x178_out_feedback_valid_out_73),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist5_sync_together232_aunroll_vunroll_x_in_c1_eni25_4_tpl_2(DELAY,238)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_sync_together232_aunroll_vunroll_x_in_c1_eni25_4_tpl_2_delay_0 <= '0;
            redist5_sync_together232_aunroll_vunroll_x_in_c1_eni25_4_tpl_2_q <= '0;
        end
        else
        begin
            redist5_sync_together232_aunroll_vunroll_x_in_c1_eni25_4_tpl_2_delay_0 <= $unsigned(in_c1_eni25_4_tpl);
            redist5_sync_together232_aunroll_vunroll_x_in_c1_eni25_4_tpl_2_q <= redist5_sync_together232_aunroll_vunroll_x_in_c1_eni25_4_tpl_2_delay_0;
        end
    end

    // redist6_sync_together232_aunroll_vunroll_x_in_c1_eni25_4_tpl_3(DELAY,239)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_sync_together232_aunroll_vunroll_x_in_c1_eni25_4_tpl_3_q <= '0;
        end
        else
        begin
            redist6_sync_together232_aunroll_vunroll_x_in_c1_eni25_4_tpl_3_q <= $unsigned(redist5_sync_together232_aunroll_vunroll_x_in_c1_eni25_4_tpl_2_q);
        end
    end

    // i_llvm_fpga_pop_f32_pre79_e74_pop73_conv2d1x177(BLACKBOX,102)@141
    // out out_feedback_stall_out_73@20000000
    conv2d1x1_i_llvm_fpga_pop_f32_pre79_e74_pop73_0 thei_llvm_fpga_pop_f32_pre79_e74_pop73_conv2d1x177 (
        .in_data_in(redist6_sync_together232_aunroll_vunroll_x_in_c1_eni25_4_tpl_3_q),
        .in_dir(redist84_i_llvm_fpga_fanout_i1_c1_ene2_fanout_adaptor461_conv2d1x13_q_2_q),
        .in_feedback_in_73(i_llvm_fpga_push_f32_pre79_e74_push73_conv2d1x178_out_feedback_out_73),
        .in_feedback_valid_in_73(i_llvm_fpga_push_f32_pre79_e74_push73_conv2d1x178_out_feedback_valid_out_73),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg52_q),
        .out_data_out(i_llvm_fpga_pop_f32_pre79_e74_pop73_conv2d1x177_out_data_out),
        .out_feedback_stall_out_73(i_llvm_fpga_pop_f32_pre79_e74_pop73_conv2d1x177_out_feedback_stall_out_73),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist58_i_llvm_fpga_pop_f32_pre79_e74_pop73_conv2d1x177_out_data_out_1(DELAY,291)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist58_i_llvm_fpga_pop_f32_pre79_e74_pop73_conv2d1x177_out_data_out_1_q <= '0;
        end
        else
        begin
            redist58_i_llvm_fpga_pop_f32_pre79_e74_pop73_conv2d1x177_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_f32_pre79_e74_pop73_conv2d1x177_out_data_out);
        end
    end

    // redist59_i_llvm_fpga_pop_f32_pre79_e74_pop73_conv2d1x177_out_data_out_2(DELAY,292)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist59_i_llvm_fpga_pop_f32_pre79_e74_pop73_conv2d1x177_out_data_out_2_q <= '0;
        end
        else
        begin
            redist59_i_llvm_fpga_pop_f32_pre79_e74_pop73_conv2d1x177_out_data_out_2_q <= $unsigned(redist58_i_llvm_fpga_pop_f32_pre79_e74_pop73_conv2d1x177_out_data_out_1_q);
        end
    end

    // i_select51_conv2d1x179(MUX,156)@143
    assign i_select51_conv2d1x179_s = i_llvm_fpga_fanout_i1_not_181_fanout_adaptor_conv2d1x132_q;
    always @(i_select51_conv2d1x179_s or redist75_i_llvm_fpga_pop_f32_pop43_conv2d1x114_out_data_out_2_q or redist59_i_llvm_fpga_pop_f32_pre79_e74_pop73_conv2d1x177_out_data_out_2_q)
    begin
        unique case (i_select51_conv2d1x179_s)
            1'b0 : i_select51_conv2d1x179_q = redist75_i_llvm_fpga_pop_f32_pop43_conv2d1x114_out_data_out_2_q;
            1'b1 : i_select51_conv2d1x179_q = redist59_i_llvm_fpga_pop_f32_pre79_e74_pop73_conv2d1x177_out_data_out_2_q;
            default : i_select51_conv2d1x179_q = 32'b0;
        endcase
    end

    // valid_fanout_reg50(REG,217)@140 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg50_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg50_q <= $unsigned(redist40_sync_together232_aunroll_vunroll_x_in_i_valid_2_q);
        end
    end

    // valid_fanout_reg51(REG,218)@141 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg51_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg51_q <= $unsigned(redist41_sync_together232_aunroll_vunroll_x_in_i_valid_3_q);
        end
    end

    // i_llvm_fpga_push_f32_pre80_e75_push74_conv2d1x175(BLACKBOX,119)@142
    // out out_feedback_out_74@20000000
    // out out_feedback_valid_out_74@20000000
    conv2d1x1_i_llvm_fpga_push_f32_pre80_e75_push74_0 thei_llvm_fpga_push_f32_pre80_e75_push74_conv2d1x175 (
        .in_c1_ene14_fanout_adaptor(i_llvm_fpga_fanout_i1_c1_ene14_fanout_adaptor_conv2d1x17_q),
        .in_data_in(redist56_i_llvm_fpga_pop_f32_pre80_e75_pop74_conv2d1x174_out_data_out_1_q),
        .in_feedback_stall_in_74(i_llvm_fpga_pop_f32_pre80_e75_pop74_conv2d1x174_out_feedback_stall_out_74),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg51_q),
        .out_data_out(),
        .out_feedback_out_74(i_llvm_fpga_push_f32_pre80_e75_push74_conv2d1x175_out_feedback_out_74),
        .out_feedback_valid_out_74(i_llvm_fpga_push_f32_pre80_e75_push74_conv2d1x175_out_feedback_valid_out_74),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist7_sync_together232_aunroll_vunroll_x_in_c1_eni25_5_tpl_2(DELAY,240)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_sync_together232_aunroll_vunroll_x_in_c1_eni25_5_tpl_2_delay_0 <= '0;
            redist7_sync_together232_aunroll_vunroll_x_in_c1_eni25_5_tpl_2_q <= '0;
        end
        else
        begin
            redist7_sync_together232_aunroll_vunroll_x_in_c1_eni25_5_tpl_2_delay_0 <= $unsigned(in_c1_eni25_5_tpl);
            redist7_sync_together232_aunroll_vunroll_x_in_c1_eni25_5_tpl_2_q <= redist7_sync_together232_aunroll_vunroll_x_in_c1_eni25_5_tpl_2_delay_0;
        end
    end

    // redist8_sync_together232_aunroll_vunroll_x_in_c1_eni25_5_tpl_3(DELAY,241)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_sync_together232_aunroll_vunroll_x_in_c1_eni25_5_tpl_3_q <= '0;
        end
        else
        begin
            redist8_sync_together232_aunroll_vunroll_x_in_c1_eni25_5_tpl_3_q <= $unsigned(redist7_sync_together232_aunroll_vunroll_x_in_c1_eni25_5_tpl_2_q);
        end
    end

    // i_llvm_fpga_pop_f32_pre80_e75_pop74_conv2d1x174(BLACKBOX,103)@141
    // out out_feedback_stall_out_74@20000000
    conv2d1x1_i_llvm_fpga_pop_f32_pre80_e75_pop74_0 thei_llvm_fpga_pop_f32_pre80_e75_pop74_conv2d1x174 (
        .in_data_in(redist8_sync_together232_aunroll_vunroll_x_in_c1_eni25_5_tpl_3_q),
        .in_dir(redist84_i_llvm_fpga_fanout_i1_c1_ene2_fanout_adaptor461_conv2d1x13_q_2_q),
        .in_feedback_in_74(i_llvm_fpga_push_f32_pre80_e75_push74_conv2d1x175_out_feedback_out_74),
        .in_feedback_valid_in_74(i_llvm_fpga_push_f32_pre80_e75_push74_conv2d1x175_out_feedback_valid_out_74),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg50_q),
        .out_data_out(i_llvm_fpga_pop_f32_pre80_e75_pop74_conv2d1x174_out_data_out),
        .out_feedback_stall_out_74(i_llvm_fpga_pop_f32_pre80_e75_pop74_conv2d1x174_out_feedback_stall_out_74),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist56_i_llvm_fpga_pop_f32_pre80_e75_pop74_conv2d1x174_out_data_out_1(DELAY,289)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist56_i_llvm_fpga_pop_f32_pre80_e75_pop74_conv2d1x174_out_data_out_1_q <= '0;
        end
        else
        begin
            redist56_i_llvm_fpga_pop_f32_pre80_e75_pop74_conv2d1x174_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_f32_pre80_e75_pop74_conv2d1x174_out_data_out);
        end
    end

    // redist57_i_llvm_fpga_pop_f32_pre80_e75_pop74_conv2d1x174_out_data_out_2(DELAY,290)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist57_i_llvm_fpga_pop_f32_pre80_e75_pop74_conv2d1x174_out_data_out_2_q <= '0;
        end
        else
        begin
            redist57_i_llvm_fpga_pop_f32_pre80_e75_pop74_conv2d1x174_out_data_out_2_q <= $unsigned(redist56_i_llvm_fpga_pop_f32_pre80_e75_pop74_conv2d1x174_out_data_out_1_q);
        end
    end

    // i_select48_conv2d1x176(MUX,155)@143
    assign i_select48_conv2d1x176_s = i_llvm_fpga_fanout_i1_not_181_fanout_adaptor_conv2d1x132_q;
    always @(i_select48_conv2d1x176_s or redist76_i_llvm_fpga_pop_f32_pop42_conv2d1x115_out_data_out_2_q or redist57_i_llvm_fpga_pop_f32_pre80_e75_pop74_conv2d1x174_out_data_out_2_q)
    begin
        unique case (i_select48_conv2d1x176_s)
            1'b0 : i_select48_conv2d1x176_q = redist76_i_llvm_fpga_pop_f32_pop42_conv2d1x115_out_data_out_2_q;
            1'b1 : i_select48_conv2d1x176_q = redist57_i_llvm_fpga_pop_f32_pre80_e75_pop74_conv2d1x174_out_data_out_2_q;
            default : i_select48_conv2d1x176_q = 32'b0;
        endcase
    end

    // valid_fanout_reg48(REG,215)@140 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg48_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg48_q <= $unsigned(redist40_sync_together232_aunroll_vunroll_x_in_i_valid_2_q);
        end
    end

    // valid_fanout_reg49(REG,216)@141 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg49_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg49_q <= $unsigned(redist41_sync_together232_aunroll_vunroll_x_in_i_valid_3_q);
        end
    end

    // i_llvm_fpga_push_f32_pre81_e76_push75_conv2d1x172(BLACKBOX,120)@142
    // out out_feedback_out_75@20000000
    // out out_feedback_valid_out_75@20000000
    conv2d1x1_i_llvm_fpga_push_f32_pre81_e76_push75_0 thei_llvm_fpga_push_f32_pre81_e76_push75_conv2d1x172 (
        .in_c1_ene14_fanout_adaptor(i_llvm_fpga_fanout_i1_c1_ene14_fanout_adaptor_conv2d1x17_q),
        .in_data_in(redist54_i_llvm_fpga_pop_f32_pre81_e76_pop75_conv2d1x171_out_data_out_1_q),
        .in_feedback_stall_in_75(i_llvm_fpga_pop_f32_pre81_e76_pop75_conv2d1x171_out_feedback_stall_out_75),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg49_q),
        .out_data_out(),
        .out_feedback_out_75(i_llvm_fpga_push_f32_pre81_e76_push75_conv2d1x172_out_feedback_out_75),
        .out_feedback_valid_out_75(i_llvm_fpga_push_f32_pre81_e76_push75_conv2d1x172_out_feedback_valid_out_75),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist9_sync_together232_aunroll_vunroll_x_in_c1_eni25_6_tpl_3_notEnable(LOGICAL,325)
    assign redist9_sync_together232_aunroll_vunroll_x_in_c1_eni25_6_tpl_3_notEnable_q = $unsigned(~ (VCC_q));

    // redist9_sync_together232_aunroll_vunroll_x_in_c1_eni25_6_tpl_3_nor(LOGICAL,326)
    assign redist9_sync_together232_aunroll_vunroll_x_in_c1_eni25_6_tpl_3_nor_q = ~ (redist9_sync_together232_aunroll_vunroll_x_in_c1_eni25_6_tpl_3_notEnable_q | redist9_sync_together232_aunroll_vunroll_x_in_c1_eni25_6_tpl_3_sticky_ena_q);

    // redist9_sync_together232_aunroll_vunroll_x_in_c1_eni25_6_tpl_3_cmpReg(REG,324)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_sync_together232_aunroll_vunroll_x_in_c1_eni25_6_tpl_3_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist9_sync_together232_aunroll_vunroll_x_in_c1_eni25_6_tpl_3_cmpReg_q <= $unsigned(VCC_q);
        end
    end

    // redist9_sync_together232_aunroll_vunroll_x_in_c1_eni25_6_tpl_3_sticky_ena(REG,327)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_sync_together232_aunroll_vunroll_x_in_c1_eni25_6_tpl_3_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist9_sync_together232_aunroll_vunroll_x_in_c1_eni25_6_tpl_3_nor_q == 1'b1)
        begin
            redist9_sync_together232_aunroll_vunroll_x_in_c1_eni25_6_tpl_3_sticky_ena_q <= $unsigned(redist9_sync_together232_aunroll_vunroll_x_in_c1_eni25_6_tpl_3_cmpReg_q);
        end
    end

    // redist9_sync_together232_aunroll_vunroll_x_in_c1_eni25_6_tpl_3_enaAnd(LOGICAL,328)
    assign redist9_sync_together232_aunroll_vunroll_x_in_c1_eni25_6_tpl_3_enaAnd_q = redist9_sync_together232_aunroll_vunroll_x_in_c1_eni25_6_tpl_3_sticky_ena_q & VCC_q;

    // redist9_sync_together232_aunroll_vunroll_x_in_c1_eni25_6_tpl_3_rdcnt(COUNTER,322)
    // low=0, high=1, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_sync_together232_aunroll_vunroll_x_in_c1_eni25_6_tpl_3_rdcnt_i <= 1'd0;
        end
        else
        begin
            redist9_sync_together232_aunroll_vunroll_x_in_c1_eni25_6_tpl_3_rdcnt_i <= $unsigned(redist9_sync_together232_aunroll_vunroll_x_in_c1_eni25_6_tpl_3_rdcnt_i) + $unsigned(1'd1);
        end
    end
    assign redist9_sync_together232_aunroll_vunroll_x_in_c1_eni25_6_tpl_3_rdcnt_q = redist9_sync_together232_aunroll_vunroll_x_in_c1_eni25_6_tpl_3_rdcnt_i[0:0];

    // redist9_sync_together232_aunroll_vunroll_x_in_c1_eni25_6_tpl_3_wraddr(REG,323)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_sync_together232_aunroll_vunroll_x_in_c1_eni25_6_tpl_3_wraddr_q <= $unsigned(1'b1);
        end
        else
        begin
            redist9_sync_together232_aunroll_vunroll_x_in_c1_eni25_6_tpl_3_wraddr_q <= $unsigned(redist9_sync_together232_aunroll_vunroll_x_in_c1_eni25_6_tpl_3_rdcnt_q);
        end
    end

    // redist9_sync_together232_aunroll_vunroll_x_in_c1_eni25_6_tpl_3_mem(DUALMEM,321)
    assign redist9_sync_together232_aunroll_vunroll_x_in_c1_eni25_6_tpl_3_mem_ia = $unsigned(in_c1_eni25_6_tpl);
    assign redist9_sync_together232_aunroll_vunroll_x_in_c1_eni25_6_tpl_3_mem_aa = redist9_sync_together232_aunroll_vunroll_x_in_c1_eni25_6_tpl_3_wraddr_q;
    assign redist9_sync_together232_aunroll_vunroll_x_in_c1_eni25_6_tpl_3_mem_ab = redist9_sync_together232_aunroll_vunroll_x_in_c1_eni25_6_tpl_3_rdcnt_q;
    assign redist9_sync_together232_aunroll_vunroll_x_in_c1_eni25_6_tpl_3_mem_reset0 = ~ (resetn);
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
    ) redist9_sync_together232_aunroll_vunroll_x_in_c1_eni25_6_tpl_3_mem_dmem (
        .clocken1(redist9_sync_together232_aunroll_vunroll_x_in_c1_eni25_6_tpl_3_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist9_sync_together232_aunroll_vunroll_x_in_c1_eni25_6_tpl_3_mem_reset0),
        .clock1(clock),
        .address_a(redist9_sync_together232_aunroll_vunroll_x_in_c1_eni25_6_tpl_3_mem_aa),
        .data_a(redist9_sync_together232_aunroll_vunroll_x_in_c1_eni25_6_tpl_3_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist9_sync_together232_aunroll_vunroll_x_in_c1_eni25_6_tpl_3_mem_ab),
        .q_b(redist9_sync_together232_aunroll_vunroll_x_in_c1_eni25_6_tpl_3_mem_iq),
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
    assign redist9_sync_together232_aunroll_vunroll_x_in_c1_eni25_6_tpl_3_mem_q = redist9_sync_together232_aunroll_vunroll_x_in_c1_eni25_6_tpl_3_mem_iq[31:0];

    // i_llvm_fpga_pop_f32_pre81_e76_pop75_conv2d1x171(BLACKBOX,104)@141
    // out out_feedback_stall_out_75@20000000
    conv2d1x1_i_llvm_fpga_pop_f32_pre81_e76_pop75_0 thei_llvm_fpga_pop_f32_pre81_e76_pop75_conv2d1x171 (
        .in_data_in(redist9_sync_together232_aunroll_vunroll_x_in_c1_eni25_6_tpl_3_mem_q),
        .in_dir(redist84_i_llvm_fpga_fanout_i1_c1_ene2_fanout_adaptor461_conv2d1x13_q_2_q),
        .in_feedback_in_75(i_llvm_fpga_push_f32_pre81_e76_push75_conv2d1x172_out_feedback_out_75),
        .in_feedback_valid_in_75(i_llvm_fpga_push_f32_pre81_e76_push75_conv2d1x172_out_feedback_valid_out_75),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg48_q),
        .out_data_out(i_llvm_fpga_pop_f32_pre81_e76_pop75_conv2d1x171_out_data_out),
        .out_feedback_stall_out_75(i_llvm_fpga_pop_f32_pre81_e76_pop75_conv2d1x171_out_feedback_stall_out_75),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist54_i_llvm_fpga_pop_f32_pre81_e76_pop75_conv2d1x171_out_data_out_1(DELAY,287)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist54_i_llvm_fpga_pop_f32_pre81_e76_pop75_conv2d1x171_out_data_out_1_q <= '0;
        end
        else
        begin
            redist54_i_llvm_fpga_pop_f32_pre81_e76_pop75_conv2d1x171_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_f32_pre81_e76_pop75_conv2d1x171_out_data_out);
        end
    end

    // redist55_i_llvm_fpga_pop_f32_pre81_e76_pop75_conv2d1x171_out_data_out_2(DELAY,288)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist55_i_llvm_fpga_pop_f32_pre81_e76_pop75_conv2d1x171_out_data_out_2_q <= '0;
        end
        else
        begin
            redist55_i_llvm_fpga_pop_f32_pre81_e76_pop75_conv2d1x171_out_data_out_2_q <= $unsigned(redist54_i_llvm_fpga_pop_f32_pre81_e76_pop75_conv2d1x171_out_data_out_1_q);
        end
    end

    // i_select45_conv2d1x173(MUX,154)@143
    assign i_select45_conv2d1x173_s = i_llvm_fpga_fanout_i1_not_181_fanout_adaptor_conv2d1x132_q;
    always @(i_select45_conv2d1x173_s or redist77_i_llvm_fpga_pop_f32_pop41_conv2d1x116_out_data_out_1_q or redist55_i_llvm_fpga_pop_f32_pre81_e76_pop75_conv2d1x171_out_data_out_2_q)
    begin
        unique case (i_select45_conv2d1x173_s)
            1'b0 : i_select45_conv2d1x173_q = redist77_i_llvm_fpga_pop_f32_pop41_conv2d1x116_out_data_out_1_q;
            1'b1 : i_select45_conv2d1x173_q = redist55_i_llvm_fpga_pop_f32_pre81_e76_pop75_conv2d1x171_out_data_out_2_q;
            default : i_select45_conv2d1x173_q = 32'b0;
        endcase
    end

    // valid_fanout_reg46(REG,213)@140 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg46_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg46_q <= $unsigned(redist40_sync_together232_aunroll_vunroll_x_in_i_valid_2_q);
        end
    end

    // valid_fanout_reg47(REG,214)@141 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg47_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg47_q <= $unsigned(redist41_sync_together232_aunroll_vunroll_x_in_i_valid_3_q);
        end
    end

    // i_llvm_fpga_push_f32_pre82_e77_push76_conv2d1x169(BLACKBOX,121)@142
    // out out_feedback_out_76@20000000
    // out out_feedback_valid_out_76@20000000
    conv2d1x1_i_llvm_fpga_push_f32_pre82_e77_push76_0 thei_llvm_fpga_push_f32_pre82_e77_push76_conv2d1x169 (
        .in_c1_ene14_fanout_adaptor(i_llvm_fpga_fanout_i1_c1_ene14_fanout_adaptor_conv2d1x17_q),
        .in_data_in(redist52_i_llvm_fpga_pop_f32_pre82_e77_pop76_conv2d1x168_out_data_out_1_q),
        .in_feedback_stall_in_76(i_llvm_fpga_pop_f32_pre82_e77_pop76_conv2d1x168_out_feedback_stall_out_76),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg47_q),
        .out_data_out(),
        .out_feedback_out_76(i_llvm_fpga_push_f32_pre82_e77_push76_conv2d1x169_out_feedback_out_76),
        .out_feedback_valid_out_76(i_llvm_fpga_push_f32_pre82_e77_push76_conv2d1x169_out_feedback_valid_out_76),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist10_sync_together232_aunroll_vunroll_x_in_c1_eni25_7_tpl_3_notEnable(LOGICAL,333)
    assign redist10_sync_together232_aunroll_vunroll_x_in_c1_eni25_7_tpl_3_notEnable_q = $unsigned(~ (VCC_q));

    // redist10_sync_together232_aunroll_vunroll_x_in_c1_eni25_7_tpl_3_nor(LOGICAL,334)
    assign redist10_sync_together232_aunroll_vunroll_x_in_c1_eni25_7_tpl_3_nor_q = ~ (redist10_sync_together232_aunroll_vunroll_x_in_c1_eni25_7_tpl_3_notEnable_q | redist10_sync_together232_aunroll_vunroll_x_in_c1_eni25_7_tpl_3_sticky_ena_q);

    // redist10_sync_together232_aunroll_vunroll_x_in_c1_eni25_7_tpl_3_cmpReg(REG,332)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_sync_together232_aunroll_vunroll_x_in_c1_eni25_7_tpl_3_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist10_sync_together232_aunroll_vunroll_x_in_c1_eni25_7_tpl_3_cmpReg_q <= $unsigned(VCC_q);
        end
    end

    // redist10_sync_together232_aunroll_vunroll_x_in_c1_eni25_7_tpl_3_sticky_ena(REG,335)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_sync_together232_aunroll_vunroll_x_in_c1_eni25_7_tpl_3_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist10_sync_together232_aunroll_vunroll_x_in_c1_eni25_7_tpl_3_nor_q == 1'b1)
        begin
            redist10_sync_together232_aunroll_vunroll_x_in_c1_eni25_7_tpl_3_sticky_ena_q <= $unsigned(redist10_sync_together232_aunroll_vunroll_x_in_c1_eni25_7_tpl_3_cmpReg_q);
        end
    end

    // redist10_sync_together232_aunroll_vunroll_x_in_c1_eni25_7_tpl_3_enaAnd(LOGICAL,336)
    assign redist10_sync_together232_aunroll_vunroll_x_in_c1_eni25_7_tpl_3_enaAnd_q = redist10_sync_together232_aunroll_vunroll_x_in_c1_eni25_7_tpl_3_sticky_ena_q & VCC_q;

    // redist10_sync_together232_aunroll_vunroll_x_in_c1_eni25_7_tpl_3_rdcnt(COUNTER,330)
    // low=0, high=1, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_sync_together232_aunroll_vunroll_x_in_c1_eni25_7_tpl_3_rdcnt_i <= 1'd0;
        end
        else
        begin
            redist10_sync_together232_aunroll_vunroll_x_in_c1_eni25_7_tpl_3_rdcnt_i <= $unsigned(redist10_sync_together232_aunroll_vunroll_x_in_c1_eni25_7_tpl_3_rdcnt_i) + $unsigned(1'd1);
        end
    end
    assign redist10_sync_together232_aunroll_vunroll_x_in_c1_eni25_7_tpl_3_rdcnt_q = redist10_sync_together232_aunroll_vunroll_x_in_c1_eni25_7_tpl_3_rdcnt_i[0:0];

    // redist10_sync_together232_aunroll_vunroll_x_in_c1_eni25_7_tpl_3_wraddr(REG,331)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_sync_together232_aunroll_vunroll_x_in_c1_eni25_7_tpl_3_wraddr_q <= $unsigned(1'b1);
        end
        else
        begin
            redist10_sync_together232_aunroll_vunroll_x_in_c1_eni25_7_tpl_3_wraddr_q <= $unsigned(redist10_sync_together232_aunroll_vunroll_x_in_c1_eni25_7_tpl_3_rdcnt_q);
        end
    end

    // redist10_sync_together232_aunroll_vunroll_x_in_c1_eni25_7_tpl_3_mem(DUALMEM,329)
    assign redist10_sync_together232_aunroll_vunroll_x_in_c1_eni25_7_tpl_3_mem_ia = $unsigned(in_c1_eni25_7_tpl);
    assign redist10_sync_together232_aunroll_vunroll_x_in_c1_eni25_7_tpl_3_mem_aa = redist10_sync_together232_aunroll_vunroll_x_in_c1_eni25_7_tpl_3_wraddr_q;
    assign redist10_sync_together232_aunroll_vunroll_x_in_c1_eni25_7_tpl_3_mem_ab = redist10_sync_together232_aunroll_vunroll_x_in_c1_eni25_7_tpl_3_rdcnt_q;
    assign redist10_sync_together232_aunroll_vunroll_x_in_c1_eni25_7_tpl_3_mem_reset0 = ~ (resetn);
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
    ) redist10_sync_together232_aunroll_vunroll_x_in_c1_eni25_7_tpl_3_mem_dmem (
        .clocken1(redist10_sync_together232_aunroll_vunroll_x_in_c1_eni25_7_tpl_3_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist10_sync_together232_aunroll_vunroll_x_in_c1_eni25_7_tpl_3_mem_reset0),
        .clock1(clock),
        .address_a(redist10_sync_together232_aunroll_vunroll_x_in_c1_eni25_7_tpl_3_mem_aa),
        .data_a(redist10_sync_together232_aunroll_vunroll_x_in_c1_eni25_7_tpl_3_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist10_sync_together232_aunroll_vunroll_x_in_c1_eni25_7_tpl_3_mem_ab),
        .q_b(redist10_sync_together232_aunroll_vunroll_x_in_c1_eni25_7_tpl_3_mem_iq),
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
    assign redist10_sync_together232_aunroll_vunroll_x_in_c1_eni25_7_tpl_3_mem_q = redist10_sync_together232_aunroll_vunroll_x_in_c1_eni25_7_tpl_3_mem_iq[31:0];

    // i_llvm_fpga_pop_f32_pre82_e77_pop76_conv2d1x168(BLACKBOX,105)@141
    // out out_feedback_stall_out_76@20000000
    conv2d1x1_i_llvm_fpga_pop_f32_pre82_e77_pop76_0 thei_llvm_fpga_pop_f32_pre82_e77_pop76_conv2d1x168 (
        .in_data_in(redist10_sync_together232_aunroll_vunroll_x_in_c1_eni25_7_tpl_3_mem_q),
        .in_dir(redist84_i_llvm_fpga_fanout_i1_c1_ene2_fanout_adaptor461_conv2d1x13_q_2_q),
        .in_feedback_in_76(i_llvm_fpga_push_f32_pre82_e77_push76_conv2d1x169_out_feedback_out_76),
        .in_feedback_valid_in_76(i_llvm_fpga_push_f32_pre82_e77_push76_conv2d1x169_out_feedback_valid_out_76),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg46_q),
        .out_data_out(i_llvm_fpga_pop_f32_pre82_e77_pop76_conv2d1x168_out_data_out),
        .out_feedback_stall_out_76(i_llvm_fpga_pop_f32_pre82_e77_pop76_conv2d1x168_out_feedback_stall_out_76),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist52_i_llvm_fpga_pop_f32_pre82_e77_pop76_conv2d1x168_out_data_out_1(DELAY,285)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist52_i_llvm_fpga_pop_f32_pre82_e77_pop76_conv2d1x168_out_data_out_1_q <= '0;
        end
        else
        begin
            redist52_i_llvm_fpga_pop_f32_pre82_e77_pop76_conv2d1x168_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_f32_pre82_e77_pop76_conv2d1x168_out_data_out);
        end
    end

    // redist53_i_llvm_fpga_pop_f32_pre82_e77_pop76_conv2d1x168_out_data_out_2(DELAY,286)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist53_i_llvm_fpga_pop_f32_pre82_e77_pop76_conv2d1x168_out_data_out_2_q <= '0;
        end
        else
        begin
            redist53_i_llvm_fpga_pop_f32_pre82_e77_pop76_conv2d1x168_out_data_out_2_q <= $unsigned(redist52_i_llvm_fpga_pop_f32_pre82_e77_pop76_conv2d1x168_out_data_out_1_q);
        end
    end

    // i_select42_conv2d1x170(MUX,153)@143
    assign i_select42_conv2d1x170_s = i_llvm_fpga_fanout_i1_not_181_fanout_adaptor_conv2d1x132_q;
    always @(i_select42_conv2d1x170_s or redist78_i_llvm_fpga_pop_f32_pop40_conv2d1x117_out_data_out_1_q or redist53_i_llvm_fpga_pop_f32_pre82_e77_pop76_conv2d1x168_out_data_out_2_q)
    begin
        unique case (i_select42_conv2d1x170_s)
            1'b0 : i_select42_conv2d1x170_q = redist78_i_llvm_fpga_pop_f32_pop40_conv2d1x117_out_data_out_1_q;
            1'b1 : i_select42_conv2d1x170_q = redist53_i_llvm_fpga_pop_f32_pre82_e77_pop76_conv2d1x168_out_data_out_2_q;
            default : i_select42_conv2d1x170_q = 32'b0;
        endcase
    end

    // valid_fanout_reg44(REG,211)@141 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg44_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg44_q <= $unsigned(redist41_sync_together232_aunroll_vunroll_x_in_i_valid_3_q);
        end
    end

    // valid_fanout_reg45(REG,212)@141 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg45_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg45_q <= $unsigned(redist41_sync_together232_aunroll_vunroll_x_in_i_valid_3_q);
        end
    end

    // i_llvm_fpga_push_f32_pre83_e78_push77_conv2d1x166(BLACKBOX,122)@142
    // out out_feedback_out_77@20000000
    // out out_feedback_valid_out_77@20000000
    conv2d1x1_i_llvm_fpga_push_f32_pre83_e78_push77_0 thei_llvm_fpga_push_f32_pre83_e78_push77_conv2d1x166 (
        .in_c1_ene14_fanout_adaptor(i_llvm_fpga_fanout_i1_c1_ene14_fanout_adaptor_conv2d1x17_q),
        .in_data_in(i_llvm_fpga_pop_f32_pre83_e78_pop77_conv2d1x165_out_data_out),
        .in_feedback_stall_in_77(i_llvm_fpga_pop_f32_pre83_e78_pop77_conv2d1x165_out_feedback_stall_out_77),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg45_q),
        .out_data_out(),
        .out_feedback_out_77(i_llvm_fpga_push_f32_pre83_e78_push77_conv2d1x166_out_feedback_out_77),
        .out_feedback_valid_out_77(i_llvm_fpga_push_f32_pre83_e78_push77_conv2d1x166_out_feedback_valid_out_77),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_fanout_i1_c1_ene2_fanout_adaptor462_conv2d1x12(REG,72)@139 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_llvm_fpga_fanout_i1_c1_ene2_fanout_adaptor462_conv2d1x12_q <= $unsigned(1'b0);
        end
        else
        begin
            i_llvm_fpga_fanout_i1_c1_ene2_fanout_adaptor462_conv2d1x12_q <= redist2_sync_together232_aunroll_vunroll_x_in_c1_eni25_2_tpl_1_q;
        end
    end

    // redist83_i_llvm_fpga_fanout_i1_c1_ene2_fanout_adaptor462_conv2d1x12_q_2(DELAY,316)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist83_i_llvm_fpga_fanout_i1_c1_ene2_fanout_adaptor462_conv2d1x12_q_2_delay_0 <= '0;
            redist83_i_llvm_fpga_fanout_i1_c1_ene2_fanout_adaptor462_conv2d1x12_q_2_q <= '0;
        end
        else
        begin
            redist83_i_llvm_fpga_fanout_i1_c1_ene2_fanout_adaptor462_conv2d1x12_q_2_delay_0 <= $unsigned(i_llvm_fpga_fanout_i1_c1_ene2_fanout_adaptor462_conv2d1x12_q);
            redist83_i_llvm_fpga_fanout_i1_c1_ene2_fanout_adaptor462_conv2d1x12_q_2_q <= redist83_i_llvm_fpga_fanout_i1_c1_ene2_fanout_adaptor462_conv2d1x12_q_2_delay_0;
        end
    end

    // redist11_sync_together232_aunroll_vunroll_x_in_c1_eni25_8_tpl_3_notEnable(LOGICAL,341)
    assign redist11_sync_together232_aunroll_vunroll_x_in_c1_eni25_8_tpl_3_notEnable_q = $unsigned(~ (VCC_q));

    // redist11_sync_together232_aunroll_vunroll_x_in_c1_eni25_8_tpl_3_nor(LOGICAL,342)
    assign redist11_sync_together232_aunroll_vunroll_x_in_c1_eni25_8_tpl_3_nor_q = ~ (redist11_sync_together232_aunroll_vunroll_x_in_c1_eni25_8_tpl_3_notEnable_q | redist11_sync_together232_aunroll_vunroll_x_in_c1_eni25_8_tpl_3_sticky_ena_q);

    // redist11_sync_together232_aunroll_vunroll_x_in_c1_eni25_8_tpl_3_cmpReg(REG,340)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_sync_together232_aunroll_vunroll_x_in_c1_eni25_8_tpl_3_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist11_sync_together232_aunroll_vunroll_x_in_c1_eni25_8_tpl_3_cmpReg_q <= $unsigned(VCC_q);
        end
    end

    // redist11_sync_together232_aunroll_vunroll_x_in_c1_eni25_8_tpl_3_sticky_ena(REG,343)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_sync_together232_aunroll_vunroll_x_in_c1_eni25_8_tpl_3_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist11_sync_together232_aunroll_vunroll_x_in_c1_eni25_8_tpl_3_nor_q == 1'b1)
        begin
            redist11_sync_together232_aunroll_vunroll_x_in_c1_eni25_8_tpl_3_sticky_ena_q <= $unsigned(redist11_sync_together232_aunroll_vunroll_x_in_c1_eni25_8_tpl_3_cmpReg_q);
        end
    end

    // redist11_sync_together232_aunroll_vunroll_x_in_c1_eni25_8_tpl_3_enaAnd(LOGICAL,344)
    assign redist11_sync_together232_aunroll_vunroll_x_in_c1_eni25_8_tpl_3_enaAnd_q = redist11_sync_together232_aunroll_vunroll_x_in_c1_eni25_8_tpl_3_sticky_ena_q & VCC_q;

    // redist11_sync_together232_aunroll_vunroll_x_in_c1_eni25_8_tpl_3_rdcnt(COUNTER,338)
    // low=0, high=1, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_sync_together232_aunroll_vunroll_x_in_c1_eni25_8_tpl_3_rdcnt_i <= 1'd0;
        end
        else
        begin
            redist11_sync_together232_aunroll_vunroll_x_in_c1_eni25_8_tpl_3_rdcnt_i <= $unsigned(redist11_sync_together232_aunroll_vunroll_x_in_c1_eni25_8_tpl_3_rdcnt_i) + $unsigned(1'd1);
        end
    end
    assign redist11_sync_together232_aunroll_vunroll_x_in_c1_eni25_8_tpl_3_rdcnt_q = redist11_sync_together232_aunroll_vunroll_x_in_c1_eni25_8_tpl_3_rdcnt_i[0:0];

    // redist11_sync_together232_aunroll_vunroll_x_in_c1_eni25_8_tpl_3_wraddr(REG,339)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_sync_together232_aunroll_vunroll_x_in_c1_eni25_8_tpl_3_wraddr_q <= $unsigned(1'b1);
        end
        else
        begin
            redist11_sync_together232_aunroll_vunroll_x_in_c1_eni25_8_tpl_3_wraddr_q <= $unsigned(redist11_sync_together232_aunroll_vunroll_x_in_c1_eni25_8_tpl_3_rdcnt_q);
        end
    end

    // redist11_sync_together232_aunroll_vunroll_x_in_c1_eni25_8_tpl_3_mem(DUALMEM,337)
    assign redist11_sync_together232_aunroll_vunroll_x_in_c1_eni25_8_tpl_3_mem_ia = $unsigned(in_c1_eni25_8_tpl);
    assign redist11_sync_together232_aunroll_vunroll_x_in_c1_eni25_8_tpl_3_mem_aa = redist11_sync_together232_aunroll_vunroll_x_in_c1_eni25_8_tpl_3_wraddr_q;
    assign redist11_sync_together232_aunroll_vunroll_x_in_c1_eni25_8_tpl_3_mem_ab = redist11_sync_together232_aunroll_vunroll_x_in_c1_eni25_8_tpl_3_rdcnt_q;
    assign redist11_sync_together232_aunroll_vunroll_x_in_c1_eni25_8_tpl_3_mem_reset0 = ~ (resetn);
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
    ) redist11_sync_together232_aunroll_vunroll_x_in_c1_eni25_8_tpl_3_mem_dmem (
        .clocken1(redist11_sync_together232_aunroll_vunroll_x_in_c1_eni25_8_tpl_3_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist11_sync_together232_aunroll_vunroll_x_in_c1_eni25_8_tpl_3_mem_reset0),
        .clock1(clock),
        .address_a(redist11_sync_together232_aunroll_vunroll_x_in_c1_eni25_8_tpl_3_mem_aa),
        .data_a(redist11_sync_together232_aunroll_vunroll_x_in_c1_eni25_8_tpl_3_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist11_sync_together232_aunroll_vunroll_x_in_c1_eni25_8_tpl_3_mem_ab),
        .q_b(redist11_sync_together232_aunroll_vunroll_x_in_c1_eni25_8_tpl_3_mem_iq),
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
    assign redist11_sync_together232_aunroll_vunroll_x_in_c1_eni25_8_tpl_3_mem_q = redist11_sync_together232_aunroll_vunroll_x_in_c1_eni25_8_tpl_3_mem_iq[31:0];

    // redist12_sync_together232_aunroll_vunroll_x_in_c1_eni25_8_tpl_4(DELAY,245)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_sync_together232_aunroll_vunroll_x_in_c1_eni25_8_tpl_4_q <= '0;
        end
        else
        begin
            redist12_sync_together232_aunroll_vunroll_x_in_c1_eni25_8_tpl_4_q <= $unsigned(redist11_sync_together232_aunroll_vunroll_x_in_c1_eni25_8_tpl_3_mem_q);
        end
    end

    // i_llvm_fpga_pop_f32_pre83_e78_pop77_conv2d1x165(BLACKBOX,106)@142
    // out out_feedback_stall_out_77@20000000
    conv2d1x1_i_llvm_fpga_pop_f32_pre83_e78_pop77_0 thei_llvm_fpga_pop_f32_pre83_e78_pop77_conv2d1x165 (
        .in_data_in(redist12_sync_together232_aunroll_vunroll_x_in_c1_eni25_8_tpl_4_q),
        .in_dir(redist83_i_llvm_fpga_fanout_i1_c1_ene2_fanout_adaptor462_conv2d1x12_q_2_q),
        .in_feedback_in_77(i_llvm_fpga_push_f32_pre83_e78_push77_conv2d1x166_out_feedback_out_77),
        .in_feedback_valid_in_77(i_llvm_fpga_push_f32_pre83_e78_push77_conv2d1x166_out_feedback_valid_out_77),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg44_q),
        .out_data_out(i_llvm_fpga_pop_f32_pre83_e78_pop77_conv2d1x165_out_data_out),
        .out_feedback_stall_out_77(i_llvm_fpga_pop_f32_pre83_e78_pop77_conv2d1x165_out_feedback_stall_out_77),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist51_i_llvm_fpga_pop_f32_pre83_e78_pop77_conv2d1x165_out_data_out_1(DELAY,284)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist51_i_llvm_fpga_pop_f32_pre83_e78_pop77_conv2d1x165_out_data_out_1_q <= '0;
        end
        else
        begin
            redist51_i_llvm_fpga_pop_f32_pre83_e78_pop77_conv2d1x165_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_f32_pre83_e78_pop77_conv2d1x165_out_data_out);
        end
    end

    // i_select39_conv2d1x167(MUX,152)@143
    assign i_select39_conv2d1x167_s = i_llvm_fpga_fanout_i1_not_181_fanout_adaptor_conv2d1x132_q;
    always @(i_select39_conv2d1x167_s or redist79_i_llvm_fpga_pop_f32_pop39_conv2d1x118_out_data_out_1_q or redist51_i_llvm_fpga_pop_f32_pre83_e78_pop77_conv2d1x165_out_data_out_1_q)
    begin
        unique case (i_select39_conv2d1x167_s)
            1'b0 : i_select39_conv2d1x167_q = redist79_i_llvm_fpga_pop_f32_pop39_conv2d1x118_out_data_out_1_q;
            1'b1 : i_select39_conv2d1x167_q = redist51_i_llvm_fpga_pop_f32_pre83_e78_pop77_conv2d1x165_out_data_out_1_q;
            default : i_select39_conv2d1x167_q = 32'b0;
        endcase
    end

    // valid_fanout_reg42(REG,209)@141 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg42_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg42_q <= $unsigned(redist41_sync_together232_aunroll_vunroll_x_in_i_valid_3_q);
        end
    end

    // valid_fanout_reg43(REG,210)@141 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg43_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg43_q <= $unsigned(redist41_sync_together232_aunroll_vunroll_x_in_i_valid_3_q);
        end
    end

    // i_llvm_fpga_push_f32_pre84_e79_push78_conv2d1x163(BLACKBOX,123)@142
    // out out_feedback_out_78@20000000
    // out out_feedback_valid_out_78@20000000
    conv2d1x1_i_llvm_fpga_push_f32_pre84_e79_push78_0 thei_llvm_fpga_push_f32_pre84_e79_push78_conv2d1x163 (
        .in_c1_ene14_fanout_adaptor(i_llvm_fpga_fanout_i1_c1_ene14_fanout_adaptor_conv2d1x17_q),
        .in_data_in(i_llvm_fpga_pop_f32_pre84_e79_pop78_conv2d1x162_out_data_out),
        .in_feedback_stall_in_78(i_llvm_fpga_pop_f32_pre84_e79_pop78_conv2d1x162_out_feedback_stall_out_78),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg43_q),
        .out_data_out(),
        .out_feedback_out_78(i_llvm_fpga_push_f32_pre84_e79_push78_conv2d1x163_out_feedback_out_78),
        .out_feedback_valid_out_78(i_llvm_fpga_push_f32_pre84_e79_push78_conv2d1x163_out_feedback_valid_out_78),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist13_sync_together232_aunroll_vunroll_x_in_c1_eni25_9_tpl_3_notEnable(LOGICAL,349)
    assign redist13_sync_together232_aunroll_vunroll_x_in_c1_eni25_9_tpl_3_notEnable_q = $unsigned(~ (VCC_q));

    // redist13_sync_together232_aunroll_vunroll_x_in_c1_eni25_9_tpl_3_nor(LOGICAL,350)
    assign redist13_sync_together232_aunroll_vunroll_x_in_c1_eni25_9_tpl_3_nor_q = ~ (redist13_sync_together232_aunroll_vunroll_x_in_c1_eni25_9_tpl_3_notEnable_q | redist13_sync_together232_aunroll_vunroll_x_in_c1_eni25_9_tpl_3_sticky_ena_q);

    // redist13_sync_together232_aunroll_vunroll_x_in_c1_eni25_9_tpl_3_cmpReg(REG,348)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_sync_together232_aunroll_vunroll_x_in_c1_eni25_9_tpl_3_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist13_sync_together232_aunroll_vunroll_x_in_c1_eni25_9_tpl_3_cmpReg_q <= $unsigned(VCC_q);
        end
    end

    // redist13_sync_together232_aunroll_vunroll_x_in_c1_eni25_9_tpl_3_sticky_ena(REG,351)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_sync_together232_aunroll_vunroll_x_in_c1_eni25_9_tpl_3_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist13_sync_together232_aunroll_vunroll_x_in_c1_eni25_9_tpl_3_nor_q == 1'b1)
        begin
            redist13_sync_together232_aunroll_vunroll_x_in_c1_eni25_9_tpl_3_sticky_ena_q <= $unsigned(redist13_sync_together232_aunroll_vunroll_x_in_c1_eni25_9_tpl_3_cmpReg_q);
        end
    end

    // redist13_sync_together232_aunroll_vunroll_x_in_c1_eni25_9_tpl_3_enaAnd(LOGICAL,352)
    assign redist13_sync_together232_aunroll_vunroll_x_in_c1_eni25_9_tpl_3_enaAnd_q = redist13_sync_together232_aunroll_vunroll_x_in_c1_eni25_9_tpl_3_sticky_ena_q & VCC_q;

    // redist13_sync_together232_aunroll_vunroll_x_in_c1_eni25_9_tpl_3_rdcnt(COUNTER,346)
    // low=0, high=1, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_sync_together232_aunroll_vunroll_x_in_c1_eni25_9_tpl_3_rdcnt_i <= 1'd0;
        end
        else
        begin
            redist13_sync_together232_aunroll_vunroll_x_in_c1_eni25_9_tpl_3_rdcnt_i <= $unsigned(redist13_sync_together232_aunroll_vunroll_x_in_c1_eni25_9_tpl_3_rdcnt_i) + $unsigned(1'd1);
        end
    end
    assign redist13_sync_together232_aunroll_vunroll_x_in_c1_eni25_9_tpl_3_rdcnt_q = redist13_sync_together232_aunroll_vunroll_x_in_c1_eni25_9_tpl_3_rdcnt_i[0:0];

    // redist13_sync_together232_aunroll_vunroll_x_in_c1_eni25_9_tpl_3_wraddr(REG,347)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_sync_together232_aunroll_vunroll_x_in_c1_eni25_9_tpl_3_wraddr_q <= $unsigned(1'b1);
        end
        else
        begin
            redist13_sync_together232_aunroll_vunroll_x_in_c1_eni25_9_tpl_3_wraddr_q <= $unsigned(redist13_sync_together232_aunroll_vunroll_x_in_c1_eni25_9_tpl_3_rdcnt_q);
        end
    end

    // redist13_sync_together232_aunroll_vunroll_x_in_c1_eni25_9_tpl_3_mem(DUALMEM,345)
    assign redist13_sync_together232_aunroll_vunroll_x_in_c1_eni25_9_tpl_3_mem_ia = $unsigned(in_c1_eni25_9_tpl);
    assign redist13_sync_together232_aunroll_vunroll_x_in_c1_eni25_9_tpl_3_mem_aa = redist13_sync_together232_aunroll_vunroll_x_in_c1_eni25_9_tpl_3_wraddr_q;
    assign redist13_sync_together232_aunroll_vunroll_x_in_c1_eni25_9_tpl_3_mem_ab = redist13_sync_together232_aunroll_vunroll_x_in_c1_eni25_9_tpl_3_rdcnt_q;
    assign redist13_sync_together232_aunroll_vunroll_x_in_c1_eni25_9_tpl_3_mem_reset0 = ~ (resetn);
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
    ) redist13_sync_together232_aunroll_vunroll_x_in_c1_eni25_9_tpl_3_mem_dmem (
        .clocken1(redist13_sync_together232_aunroll_vunroll_x_in_c1_eni25_9_tpl_3_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist13_sync_together232_aunroll_vunroll_x_in_c1_eni25_9_tpl_3_mem_reset0),
        .clock1(clock),
        .address_a(redist13_sync_together232_aunroll_vunroll_x_in_c1_eni25_9_tpl_3_mem_aa),
        .data_a(redist13_sync_together232_aunroll_vunroll_x_in_c1_eni25_9_tpl_3_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist13_sync_together232_aunroll_vunroll_x_in_c1_eni25_9_tpl_3_mem_ab),
        .q_b(redist13_sync_together232_aunroll_vunroll_x_in_c1_eni25_9_tpl_3_mem_iq),
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
    assign redist13_sync_together232_aunroll_vunroll_x_in_c1_eni25_9_tpl_3_mem_q = redist13_sync_together232_aunroll_vunroll_x_in_c1_eni25_9_tpl_3_mem_iq[31:0];

    // redist14_sync_together232_aunroll_vunroll_x_in_c1_eni25_9_tpl_4(DELAY,247)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_sync_together232_aunroll_vunroll_x_in_c1_eni25_9_tpl_4_q <= '0;
        end
        else
        begin
            redist14_sync_together232_aunroll_vunroll_x_in_c1_eni25_9_tpl_4_q <= $unsigned(redist13_sync_together232_aunroll_vunroll_x_in_c1_eni25_9_tpl_3_mem_q);
        end
    end

    // i_llvm_fpga_pop_f32_pre84_e79_pop78_conv2d1x162(BLACKBOX,107)@142
    // out out_feedback_stall_out_78@20000000
    conv2d1x1_i_llvm_fpga_pop_f32_pre84_e79_pop78_0 thei_llvm_fpga_pop_f32_pre84_e79_pop78_conv2d1x162 (
        .in_data_in(redist14_sync_together232_aunroll_vunroll_x_in_c1_eni25_9_tpl_4_q),
        .in_dir(redist83_i_llvm_fpga_fanout_i1_c1_ene2_fanout_adaptor462_conv2d1x12_q_2_q),
        .in_feedback_in_78(i_llvm_fpga_push_f32_pre84_e79_push78_conv2d1x163_out_feedback_out_78),
        .in_feedback_valid_in_78(i_llvm_fpga_push_f32_pre84_e79_push78_conv2d1x163_out_feedback_valid_out_78),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg42_q),
        .out_data_out(i_llvm_fpga_pop_f32_pre84_e79_pop78_conv2d1x162_out_data_out),
        .out_feedback_stall_out_78(i_llvm_fpga_pop_f32_pre84_e79_pop78_conv2d1x162_out_feedback_stall_out_78),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist50_i_llvm_fpga_pop_f32_pre84_e79_pop78_conv2d1x162_out_data_out_1(DELAY,283)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist50_i_llvm_fpga_pop_f32_pre84_e79_pop78_conv2d1x162_out_data_out_1_q <= '0;
        end
        else
        begin
            redist50_i_llvm_fpga_pop_f32_pre84_e79_pop78_conv2d1x162_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_f32_pre84_e79_pop78_conv2d1x162_out_data_out);
        end
    end

    // i_select36_conv2d1x164(MUX,151)@143
    assign i_select36_conv2d1x164_s = i_llvm_fpga_fanout_i1_not_181_fanout_adaptor_conv2d1x132_q;
    always @(i_select36_conv2d1x164_s or redist80_i_llvm_fpga_pop_f32_pop38_conv2d1x119_out_data_out_1_q or redist50_i_llvm_fpga_pop_f32_pre84_e79_pop78_conv2d1x162_out_data_out_1_q)
    begin
        unique case (i_select36_conv2d1x164_s)
            1'b0 : i_select36_conv2d1x164_q = redist80_i_llvm_fpga_pop_f32_pop38_conv2d1x119_out_data_out_1_q;
            1'b1 : i_select36_conv2d1x164_q = redist50_i_llvm_fpga_pop_f32_pre84_e79_pop78_conv2d1x162_out_data_out_1_q;
            default : i_select36_conv2d1x164_q = 32'b0;
        endcase
    end

    // valid_fanout_reg40(REG,207)@141 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg40_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg40_q <= $unsigned(redist41_sync_together232_aunroll_vunroll_x_in_i_valid_3_q);
        end
    end

    // valid_fanout_reg41(REG,208)@141 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg41_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg41_q <= $unsigned(redist41_sync_together232_aunroll_vunroll_x_in_i_valid_3_q);
        end
    end

    // i_llvm_fpga_push_f32_pre85_e80_push79_conv2d1x160(BLACKBOX,124)@142
    // out out_feedback_out_79@20000000
    // out out_feedback_valid_out_79@20000000
    conv2d1x1_i_llvm_fpga_push_f32_pre85_e80_push79_0 thei_llvm_fpga_push_f32_pre85_e80_push79_conv2d1x160 (
        .in_c1_ene14_fanout_adaptor(i_llvm_fpga_fanout_i1_c1_ene14_fanout_adaptor_conv2d1x17_q),
        .in_data_in(i_llvm_fpga_pop_f32_pre85_e80_pop79_conv2d1x159_out_data_out),
        .in_feedback_stall_in_79(i_llvm_fpga_pop_f32_pre85_e80_pop79_conv2d1x159_out_feedback_stall_out_79),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg41_q),
        .out_data_out(),
        .out_feedback_out_79(i_llvm_fpga_push_f32_pre85_e80_push79_conv2d1x160_out_feedback_out_79),
        .out_feedback_valid_out_79(i_llvm_fpga_push_f32_pre85_e80_push79_conv2d1x160_out_feedback_valid_out_79),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist15_sync_together232_aunroll_vunroll_x_in_c1_eni25_10_tpl_4_notEnable(LOGICAL,359)
    assign redist15_sync_together232_aunroll_vunroll_x_in_c1_eni25_10_tpl_4_notEnable_q = $unsigned(~ (VCC_q));

    // redist15_sync_together232_aunroll_vunroll_x_in_c1_eni25_10_tpl_4_nor(LOGICAL,360)
    assign redist15_sync_together232_aunroll_vunroll_x_in_c1_eni25_10_tpl_4_nor_q = ~ (redist15_sync_together232_aunroll_vunroll_x_in_c1_eni25_10_tpl_4_notEnable_q | redist15_sync_together232_aunroll_vunroll_x_in_c1_eni25_10_tpl_4_sticky_ena_q);

    // redist15_sync_together232_aunroll_vunroll_x_in_c1_eni25_10_tpl_4_mem_last(CONSTANT,356)
    assign redist15_sync_together232_aunroll_vunroll_x_in_c1_eni25_10_tpl_4_mem_last_q = $unsigned(2'b01);

    // redist15_sync_together232_aunroll_vunroll_x_in_c1_eni25_10_tpl_4_cmp(LOGICAL,357)
    assign redist15_sync_together232_aunroll_vunroll_x_in_c1_eni25_10_tpl_4_cmp_q = $unsigned(redist15_sync_together232_aunroll_vunroll_x_in_c1_eni25_10_tpl_4_mem_last_q == redist15_sync_together232_aunroll_vunroll_x_in_c1_eni25_10_tpl_4_rdcnt_q ? 1'b1 : 1'b0);

    // redist15_sync_together232_aunroll_vunroll_x_in_c1_eni25_10_tpl_4_cmpReg(REG,358)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist15_sync_together232_aunroll_vunroll_x_in_c1_eni25_10_tpl_4_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist15_sync_together232_aunroll_vunroll_x_in_c1_eni25_10_tpl_4_cmpReg_q <= $unsigned(redist15_sync_together232_aunroll_vunroll_x_in_c1_eni25_10_tpl_4_cmp_q);
        end
    end

    // redist15_sync_together232_aunroll_vunroll_x_in_c1_eni25_10_tpl_4_sticky_ena(REG,361)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist15_sync_together232_aunroll_vunroll_x_in_c1_eni25_10_tpl_4_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist15_sync_together232_aunroll_vunroll_x_in_c1_eni25_10_tpl_4_nor_q == 1'b1)
        begin
            redist15_sync_together232_aunroll_vunroll_x_in_c1_eni25_10_tpl_4_sticky_ena_q <= $unsigned(redist15_sync_together232_aunroll_vunroll_x_in_c1_eni25_10_tpl_4_cmpReg_q);
        end
    end

    // redist15_sync_together232_aunroll_vunroll_x_in_c1_eni25_10_tpl_4_enaAnd(LOGICAL,362)
    assign redist15_sync_together232_aunroll_vunroll_x_in_c1_eni25_10_tpl_4_enaAnd_q = redist15_sync_together232_aunroll_vunroll_x_in_c1_eni25_10_tpl_4_sticky_ena_q & VCC_q;

    // redist15_sync_together232_aunroll_vunroll_x_in_c1_eni25_10_tpl_4_rdcnt(COUNTER,354)
    // low=0, high=2, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist15_sync_together232_aunroll_vunroll_x_in_c1_eni25_10_tpl_4_rdcnt_i <= 2'd0;
            redist15_sync_together232_aunroll_vunroll_x_in_c1_eni25_10_tpl_4_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist15_sync_together232_aunroll_vunroll_x_in_c1_eni25_10_tpl_4_rdcnt_i == 2'd1)
            begin
                redist15_sync_together232_aunroll_vunroll_x_in_c1_eni25_10_tpl_4_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist15_sync_together232_aunroll_vunroll_x_in_c1_eni25_10_tpl_4_rdcnt_eq <= 1'b0;
            end
            if (redist15_sync_together232_aunroll_vunroll_x_in_c1_eni25_10_tpl_4_rdcnt_eq == 1'b1)
            begin
                redist15_sync_together232_aunroll_vunroll_x_in_c1_eni25_10_tpl_4_rdcnt_i <= $unsigned(redist15_sync_together232_aunroll_vunroll_x_in_c1_eni25_10_tpl_4_rdcnt_i) + $unsigned(2'd2);
            end
            else
            begin
                redist15_sync_together232_aunroll_vunroll_x_in_c1_eni25_10_tpl_4_rdcnt_i <= $unsigned(redist15_sync_together232_aunroll_vunroll_x_in_c1_eni25_10_tpl_4_rdcnt_i) + $unsigned(2'd1);
            end
        end
    end
    assign redist15_sync_together232_aunroll_vunroll_x_in_c1_eni25_10_tpl_4_rdcnt_q = redist15_sync_together232_aunroll_vunroll_x_in_c1_eni25_10_tpl_4_rdcnt_i[1:0];

    // redist15_sync_together232_aunroll_vunroll_x_in_c1_eni25_10_tpl_4_wraddr(REG,355)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist15_sync_together232_aunroll_vunroll_x_in_c1_eni25_10_tpl_4_wraddr_q <= $unsigned(2'b10);
        end
        else
        begin
            redist15_sync_together232_aunroll_vunroll_x_in_c1_eni25_10_tpl_4_wraddr_q <= $unsigned(redist15_sync_together232_aunroll_vunroll_x_in_c1_eni25_10_tpl_4_rdcnt_q);
        end
    end

    // redist15_sync_together232_aunroll_vunroll_x_in_c1_eni25_10_tpl_4_mem(DUALMEM,353)
    assign redist15_sync_together232_aunroll_vunroll_x_in_c1_eni25_10_tpl_4_mem_ia = $unsigned(in_c1_eni25_10_tpl);
    assign redist15_sync_together232_aunroll_vunroll_x_in_c1_eni25_10_tpl_4_mem_aa = redist15_sync_together232_aunroll_vunroll_x_in_c1_eni25_10_tpl_4_wraddr_q;
    assign redist15_sync_together232_aunroll_vunroll_x_in_c1_eni25_10_tpl_4_mem_ab = redist15_sync_together232_aunroll_vunroll_x_in_c1_eni25_10_tpl_4_rdcnt_q;
    assign redist15_sync_together232_aunroll_vunroll_x_in_c1_eni25_10_tpl_4_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(2),
        .numwords_a(3),
        .width_b(32),
        .widthad_b(2),
        .numwords_b(3),
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
    ) redist15_sync_together232_aunroll_vunroll_x_in_c1_eni25_10_tpl_4_mem_dmem (
        .clocken1(redist15_sync_together232_aunroll_vunroll_x_in_c1_eni25_10_tpl_4_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist15_sync_together232_aunroll_vunroll_x_in_c1_eni25_10_tpl_4_mem_reset0),
        .clock1(clock),
        .address_a(redist15_sync_together232_aunroll_vunroll_x_in_c1_eni25_10_tpl_4_mem_aa),
        .data_a(redist15_sync_together232_aunroll_vunroll_x_in_c1_eni25_10_tpl_4_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist15_sync_together232_aunroll_vunroll_x_in_c1_eni25_10_tpl_4_mem_ab),
        .q_b(redist15_sync_together232_aunroll_vunroll_x_in_c1_eni25_10_tpl_4_mem_iq),
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
    assign redist15_sync_together232_aunroll_vunroll_x_in_c1_eni25_10_tpl_4_mem_q = redist15_sync_together232_aunroll_vunroll_x_in_c1_eni25_10_tpl_4_mem_iq[31:0];

    // i_llvm_fpga_pop_f32_pre85_e80_pop79_conv2d1x159(BLACKBOX,108)@142
    // out out_feedback_stall_out_79@20000000
    conv2d1x1_i_llvm_fpga_pop_f32_pre85_e80_pop79_0 thei_llvm_fpga_pop_f32_pre85_e80_pop79_conv2d1x159 (
        .in_data_in(redist15_sync_together232_aunroll_vunroll_x_in_c1_eni25_10_tpl_4_mem_q),
        .in_dir(redist83_i_llvm_fpga_fanout_i1_c1_ene2_fanout_adaptor462_conv2d1x12_q_2_q),
        .in_feedback_in_79(i_llvm_fpga_push_f32_pre85_e80_push79_conv2d1x160_out_feedback_out_79),
        .in_feedback_valid_in_79(i_llvm_fpga_push_f32_pre85_e80_push79_conv2d1x160_out_feedback_valid_out_79),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg40_q),
        .out_data_out(i_llvm_fpga_pop_f32_pre85_e80_pop79_conv2d1x159_out_data_out),
        .out_feedback_stall_out_79(i_llvm_fpga_pop_f32_pre85_e80_pop79_conv2d1x159_out_feedback_stall_out_79),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist49_i_llvm_fpga_pop_f32_pre85_e80_pop79_conv2d1x159_out_data_out_1(DELAY,282)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist49_i_llvm_fpga_pop_f32_pre85_e80_pop79_conv2d1x159_out_data_out_1_q <= '0;
        end
        else
        begin
            redist49_i_llvm_fpga_pop_f32_pre85_e80_pop79_conv2d1x159_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_f32_pre85_e80_pop79_conv2d1x159_out_data_out);
        end
    end

    // i_select33_conv2d1x161(MUX,150)@143
    assign i_select33_conv2d1x161_s = i_llvm_fpga_fanout_i1_not_181_fanout_adaptor_conv2d1x132_q;
    always @(i_select33_conv2d1x161_s or i_llvm_fpga_fp_multadd_mult_add87_conv2d1x148_out_primWireOut or redist49_i_llvm_fpga_pop_f32_pre85_e80_pop79_conv2d1x159_out_data_out_1_q)
    begin
        unique case (i_select33_conv2d1x161_s)
            1'b0 : i_select33_conv2d1x161_q = i_llvm_fpga_fp_multadd_mult_add87_conv2d1x148_out_primWireOut;
            1'b1 : i_select33_conv2d1x161_q = redist49_i_llvm_fpga_pop_f32_pre85_e80_pop79_conv2d1x159_out_data_out_1_q;
            default : i_select33_conv2d1x161_q = 32'b0;
        endcase
    end

    // valid_fanout_reg38(REG,205)@141 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg38_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg38_q <= $unsigned(redist41_sync_together232_aunroll_vunroll_x_in_i_valid_3_q);
        end
    end

    // valid_fanout_reg39(REG,206)@141 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg39_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg39_q <= $unsigned(redist41_sync_together232_aunroll_vunroll_x_in_i_valid_3_q);
        end
    end

    // i_llvm_fpga_push_f32_pre86_e81_push80_conv2d1x157(BLACKBOX,125)@142
    // out out_feedback_out_80@20000000
    // out out_feedback_valid_out_80@20000000
    conv2d1x1_i_llvm_fpga_push_f32_pre86_e81_push80_0 thei_llvm_fpga_push_f32_pre86_e81_push80_conv2d1x157 (
        .in_c1_ene14_fanout_adaptor(i_llvm_fpga_fanout_i1_c1_ene14_fanout_adaptor_conv2d1x17_q),
        .in_data_in(i_llvm_fpga_pop_f32_pre86_e81_pop80_conv2d1x156_out_data_out),
        .in_feedback_stall_in_80(i_llvm_fpga_pop_f32_pre86_e81_pop80_conv2d1x156_out_feedback_stall_out_80),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg39_q),
        .out_data_out(),
        .out_feedback_out_80(i_llvm_fpga_push_f32_pre86_e81_push80_conv2d1x157_out_feedback_out_80),
        .out_feedback_valid_out_80(i_llvm_fpga_push_f32_pre86_e81_push80_conv2d1x157_out_feedback_valid_out_80),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist16_sync_together232_aunroll_vunroll_x_in_c1_eni25_11_tpl_4_notEnable(LOGICAL,369)
    assign redist16_sync_together232_aunroll_vunroll_x_in_c1_eni25_11_tpl_4_notEnable_q = $unsigned(~ (VCC_q));

    // redist16_sync_together232_aunroll_vunroll_x_in_c1_eni25_11_tpl_4_nor(LOGICAL,370)
    assign redist16_sync_together232_aunroll_vunroll_x_in_c1_eni25_11_tpl_4_nor_q = ~ (redist16_sync_together232_aunroll_vunroll_x_in_c1_eni25_11_tpl_4_notEnable_q | redist16_sync_together232_aunroll_vunroll_x_in_c1_eni25_11_tpl_4_sticky_ena_q);

    // redist16_sync_together232_aunroll_vunroll_x_in_c1_eni25_11_tpl_4_mem_last(CONSTANT,366)
    assign redist16_sync_together232_aunroll_vunroll_x_in_c1_eni25_11_tpl_4_mem_last_q = $unsigned(2'b01);

    // redist16_sync_together232_aunroll_vunroll_x_in_c1_eni25_11_tpl_4_cmp(LOGICAL,367)
    assign redist16_sync_together232_aunroll_vunroll_x_in_c1_eni25_11_tpl_4_cmp_q = $unsigned(redist16_sync_together232_aunroll_vunroll_x_in_c1_eni25_11_tpl_4_mem_last_q == redist16_sync_together232_aunroll_vunroll_x_in_c1_eni25_11_tpl_4_rdcnt_q ? 1'b1 : 1'b0);

    // redist16_sync_together232_aunroll_vunroll_x_in_c1_eni25_11_tpl_4_cmpReg(REG,368)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist16_sync_together232_aunroll_vunroll_x_in_c1_eni25_11_tpl_4_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist16_sync_together232_aunroll_vunroll_x_in_c1_eni25_11_tpl_4_cmpReg_q <= $unsigned(redist16_sync_together232_aunroll_vunroll_x_in_c1_eni25_11_tpl_4_cmp_q);
        end
    end

    // redist16_sync_together232_aunroll_vunroll_x_in_c1_eni25_11_tpl_4_sticky_ena(REG,371)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist16_sync_together232_aunroll_vunroll_x_in_c1_eni25_11_tpl_4_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist16_sync_together232_aunroll_vunroll_x_in_c1_eni25_11_tpl_4_nor_q == 1'b1)
        begin
            redist16_sync_together232_aunroll_vunroll_x_in_c1_eni25_11_tpl_4_sticky_ena_q <= $unsigned(redist16_sync_together232_aunroll_vunroll_x_in_c1_eni25_11_tpl_4_cmpReg_q);
        end
    end

    // redist16_sync_together232_aunroll_vunroll_x_in_c1_eni25_11_tpl_4_enaAnd(LOGICAL,372)
    assign redist16_sync_together232_aunroll_vunroll_x_in_c1_eni25_11_tpl_4_enaAnd_q = redist16_sync_together232_aunroll_vunroll_x_in_c1_eni25_11_tpl_4_sticky_ena_q & VCC_q;

    // redist16_sync_together232_aunroll_vunroll_x_in_c1_eni25_11_tpl_4_rdcnt(COUNTER,364)
    // low=0, high=2, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist16_sync_together232_aunroll_vunroll_x_in_c1_eni25_11_tpl_4_rdcnt_i <= 2'd0;
            redist16_sync_together232_aunroll_vunroll_x_in_c1_eni25_11_tpl_4_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist16_sync_together232_aunroll_vunroll_x_in_c1_eni25_11_tpl_4_rdcnt_i == 2'd1)
            begin
                redist16_sync_together232_aunroll_vunroll_x_in_c1_eni25_11_tpl_4_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist16_sync_together232_aunroll_vunroll_x_in_c1_eni25_11_tpl_4_rdcnt_eq <= 1'b0;
            end
            if (redist16_sync_together232_aunroll_vunroll_x_in_c1_eni25_11_tpl_4_rdcnt_eq == 1'b1)
            begin
                redist16_sync_together232_aunroll_vunroll_x_in_c1_eni25_11_tpl_4_rdcnt_i <= $unsigned(redist16_sync_together232_aunroll_vunroll_x_in_c1_eni25_11_tpl_4_rdcnt_i) + $unsigned(2'd2);
            end
            else
            begin
                redist16_sync_together232_aunroll_vunroll_x_in_c1_eni25_11_tpl_4_rdcnt_i <= $unsigned(redist16_sync_together232_aunroll_vunroll_x_in_c1_eni25_11_tpl_4_rdcnt_i) + $unsigned(2'd1);
            end
        end
    end
    assign redist16_sync_together232_aunroll_vunroll_x_in_c1_eni25_11_tpl_4_rdcnt_q = redist16_sync_together232_aunroll_vunroll_x_in_c1_eni25_11_tpl_4_rdcnt_i[1:0];

    // redist16_sync_together232_aunroll_vunroll_x_in_c1_eni25_11_tpl_4_wraddr(REG,365)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist16_sync_together232_aunroll_vunroll_x_in_c1_eni25_11_tpl_4_wraddr_q <= $unsigned(2'b10);
        end
        else
        begin
            redist16_sync_together232_aunroll_vunroll_x_in_c1_eni25_11_tpl_4_wraddr_q <= $unsigned(redist16_sync_together232_aunroll_vunroll_x_in_c1_eni25_11_tpl_4_rdcnt_q);
        end
    end

    // redist16_sync_together232_aunroll_vunroll_x_in_c1_eni25_11_tpl_4_mem(DUALMEM,363)
    assign redist16_sync_together232_aunroll_vunroll_x_in_c1_eni25_11_tpl_4_mem_ia = $unsigned(in_c1_eni25_11_tpl);
    assign redist16_sync_together232_aunroll_vunroll_x_in_c1_eni25_11_tpl_4_mem_aa = redist16_sync_together232_aunroll_vunroll_x_in_c1_eni25_11_tpl_4_wraddr_q;
    assign redist16_sync_together232_aunroll_vunroll_x_in_c1_eni25_11_tpl_4_mem_ab = redist16_sync_together232_aunroll_vunroll_x_in_c1_eni25_11_tpl_4_rdcnt_q;
    assign redist16_sync_together232_aunroll_vunroll_x_in_c1_eni25_11_tpl_4_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(2),
        .numwords_a(3),
        .width_b(32),
        .widthad_b(2),
        .numwords_b(3),
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
    ) redist16_sync_together232_aunroll_vunroll_x_in_c1_eni25_11_tpl_4_mem_dmem (
        .clocken1(redist16_sync_together232_aunroll_vunroll_x_in_c1_eni25_11_tpl_4_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist16_sync_together232_aunroll_vunroll_x_in_c1_eni25_11_tpl_4_mem_reset0),
        .clock1(clock),
        .address_a(redist16_sync_together232_aunroll_vunroll_x_in_c1_eni25_11_tpl_4_mem_aa),
        .data_a(redist16_sync_together232_aunroll_vunroll_x_in_c1_eni25_11_tpl_4_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist16_sync_together232_aunroll_vunroll_x_in_c1_eni25_11_tpl_4_mem_ab),
        .q_b(redist16_sync_together232_aunroll_vunroll_x_in_c1_eni25_11_tpl_4_mem_iq),
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
    assign redist16_sync_together232_aunroll_vunroll_x_in_c1_eni25_11_tpl_4_mem_q = redist16_sync_together232_aunroll_vunroll_x_in_c1_eni25_11_tpl_4_mem_iq[31:0];

    // i_llvm_fpga_pop_f32_pre86_e81_pop80_conv2d1x156(BLACKBOX,109)@142
    // out out_feedback_stall_out_80@20000000
    conv2d1x1_i_llvm_fpga_pop_f32_pre86_e81_pop80_0 thei_llvm_fpga_pop_f32_pre86_e81_pop80_conv2d1x156 (
        .in_data_in(redist16_sync_together232_aunroll_vunroll_x_in_c1_eni25_11_tpl_4_mem_q),
        .in_dir(redist83_i_llvm_fpga_fanout_i1_c1_ene2_fanout_adaptor462_conv2d1x12_q_2_q),
        .in_feedback_in_80(i_llvm_fpga_push_f32_pre86_e81_push80_conv2d1x157_out_feedback_out_80),
        .in_feedback_valid_in_80(i_llvm_fpga_push_f32_pre86_e81_push80_conv2d1x157_out_feedback_valid_out_80),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg38_q),
        .out_data_out(i_llvm_fpga_pop_f32_pre86_e81_pop80_conv2d1x156_out_data_out),
        .out_feedback_stall_out_80(i_llvm_fpga_pop_f32_pre86_e81_pop80_conv2d1x156_out_feedback_stall_out_80),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist48_i_llvm_fpga_pop_f32_pre86_e81_pop80_conv2d1x156_out_data_out_1(DELAY,281)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist48_i_llvm_fpga_pop_f32_pre86_e81_pop80_conv2d1x156_out_data_out_1_q <= '0;
        end
        else
        begin
            redist48_i_llvm_fpga_pop_f32_pre86_e81_pop80_conv2d1x156_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_f32_pre86_e81_pop80_conv2d1x156_out_data_out);
        end
    end

    // i_llvm_fpga_fanout_i1_not_181_fanout_adaptor465_conv2d1x131(REG,74)@142 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_llvm_fpga_fanout_i1_not_181_fanout_adaptor465_conv2d1x131_q <= $unsigned(1'b0);
        end
        else
        begin
            i_llvm_fpga_fanout_i1_not_181_fanout_adaptor465_conv2d1x131_q <= redist43_i_not_181_conv2d1x130_q_3_q;
        end
    end

    // i_select30_conv2d1x158(MUX,149)@143
    assign i_select30_conv2d1x158_s = i_llvm_fpga_fanout_i1_not_181_fanout_adaptor465_conv2d1x131_q;
    always @(i_select30_conv2d1x158_s or i_llvm_fpga_fp_multadd_mult_add86_conv2d1x144_out_primWireOut or redist48_i_llvm_fpga_pop_f32_pre86_e81_pop80_conv2d1x156_out_data_out_1_q)
    begin
        unique case (i_select30_conv2d1x158_s)
            1'b0 : i_select30_conv2d1x158_q = i_llvm_fpga_fp_multadd_mult_add86_conv2d1x144_out_primWireOut;
            1'b1 : i_select30_conv2d1x158_q = redist48_i_llvm_fpga_pop_f32_pre86_e81_pop80_conv2d1x156_out_data_out_1_q;
            default : i_select30_conv2d1x158_q = 32'b0;
        endcase
    end

    // valid_fanout_reg36(REG,203)@141 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg36_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg36_q <= $unsigned(redist41_sync_together232_aunroll_vunroll_x_in_i_valid_3_q);
        end
    end

    // valid_fanout_reg37(REG,204)@141 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg37_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg37_q <= $unsigned(redist41_sync_together232_aunroll_vunroll_x_in_i_valid_3_q);
        end
    end

    // i_llvm_fpga_push_f32_pre87_e82_push81_conv2d1x154(BLACKBOX,126)@142
    // out out_feedback_out_81@20000000
    // out out_feedback_valid_out_81@20000000
    conv2d1x1_i_llvm_fpga_push_f32_pre87_e82_push81_0 thei_llvm_fpga_push_f32_pre87_e82_push81_conv2d1x154 (
        .in_c1_ene14_fanout_adaptor(i_llvm_fpga_fanout_i1_c1_ene14_fanout_adaptor_conv2d1x17_q),
        .in_data_in(i_llvm_fpga_pop_f32_pre87_e82_pop81_conv2d1x153_out_data_out),
        .in_feedback_stall_in_81(i_llvm_fpga_pop_f32_pre87_e82_pop81_conv2d1x153_out_feedback_stall_out_81),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg37_q),
        .out_data_out(),
        .out_feedback_out_81(i_llvm_fpga_push_f32_pre87_e82_push81_conv2d1x154_out_feedback_out_81),
        .out_feedback_valid_out_81(i_llvm_fpga_push_f32_pre87_e82_push81_conv2d1x154_out_feedback_valid_out_81),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist17_sync_together232_aunroll_vunroll_x_in_c1_eni25_12_tpl_4_notEnable(LOGICAL,379)
    assign redist17_sync_together232_aunroll_vunroll_x_in_c1_eni25_12_tpl_4_notEnable_q = $unsigned(~ (VCC_q));

    // redist17_sync_together232_aunroll_vunroll_x_in_c1_eni25_12_tpl_4_nor(LOGICAL,380)
    assign redist17_sync_together232_aunroll_vunroll_x_in_c1_eni25_12_tpl_4_nor_q = ~ (redist17_sync_together232_aunroll_vunroll_x_in_c1_eni25_12_tpl_4_notEnable_q | redist17_sync_together232_aunroll_vunroll_x_in_c1_eni25_12_tpl_4_sticky_ena_q);

    // redist17_sync_together232_aunroll_vunroll_x_in_c1_eni25_12_tpl_4_mem_last(CONSTANT,376)
    assign redist17_sync_together232_aunroll_vunroll_x_in_c1_eni25_12_tpl_4_mem_last_q = $unsigned(2'b01);

    // redist17_sync_together232_aunroll_vunroll_x_in_c1_eni25_12_tpl_4_cmp(LOGICAL,377)
    assign redist17_sync_together232_aunroll_vunroll_x_in_c1_eni25_12_tpl_4_cmp_q = $unsigned(redist17_sync_together232_aunroll_vunroll_x_in_c1_eni25_12_tpl_4_mem_last_q == redist17_sync_together232_aunroll_vunroll_x_in_c1_eni25_12_tpl_4_rdcnt_q ? 1'b1 : 1'b0);

    // redist17_sync_together232_aunroll_vunroll_x_in_c1_eni25_12_tpl_4_cmpReg(REG,378)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist17_sync_together232_aunroll_vunroll_x_in_c1_eni25_12_tpl_4_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist17_sync_together232_aunroll_vunroll_x_in_c1_eni25_12_tpl_4_cmpReg_q <= $unsigned(redist17_sync_together232_aunroll_vunroll_x_in_c1_eni25_12_tpl_4_cmp_q);
        end
    end

    // redist17_sync_together232_aunroll_vunroll_x_in_c1_eni25_12_tpl_4_sticky_ena(REG,381)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist17_sync_together232_aunroll_vunroll_x_in_c1_eni25_12_tpl_4_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist17_sync_together232_aunroll_vunroll_x_in_c1_eni25_12_tpl_4_nor_q == 1'b1)
        begin
            redist17_sync_together232_aunroll_vunroll_x_in_c1_eni25_12_tpl_4_sticky_ena_q <= $unsigned(redist17_sync_together232_aunroll_vunroll_x_in_c1_eni25_12_tpl_4_cmpReg_q);
        end
    end

    // redist17_sync_together232_aunroll_vunroll_x_in_c1_eni25_12_tpl_4_enaAnd(LOGICAL,382)
    assign redist17_sync_together232_aunroll_vunroll_x_in_c1_eni25_12_tpl_4_enaAnd_q = redist17_sync_together232_aunroll_vunroll_x_in_c1_eni25_12_tpl_4_sticky_ena_q & VCC_q;

    // redist17_sync_together232_aunroll_vunroll_x_in_c1_eni25_12_tpl_4_rdcnt(COUNTER,374)
    // low=0, high=2, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist17_sync_together232_aunroll_vunroll_x_in_c1_eni25_12_tpl_4_rdcnt_i <= 2'd0;
            redist17_sync_together232_aunroll_vunroll_x_in_c1_eni25_12_tpl_4_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist17_sync_together232_aunroll_vunroll_x_in_c1_eni25_12_tpl_4_rdcnt_i == 2'd1)
            begin
                redist17_sync_together232_aunroll_vunroll_x_in_c1_eni25_12_tpl_4_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist17_sync_together232_aunroll_vunroll_x_in_c1_eni25_12_tpl_4_rdcnt_eq <= 1'b0;
            end
            if (redist17_sync_together232_aunroll_vunroll_x_in_c1_eni25_12_tpl_4_rdcnt_eq == 1'b1)
            begin
                redist17_sync_together232_aunroll_vunroll_x_in_c1_eni25_12_tpl_4_rdcnt_i <= $unsigned(redist17_sync_together232_aunroll_vunroll_x_in_c1_eni25_12_tpl_4_rdcnt_i) + $unsigned(2'd2);
            end
            else
            begin
                redist17_sync_together232_aunroll_vunroll_x_in_c1_eni25_12_tpl_4_rdcnt_i <= $unsigned(redist17_sync_together232_aunroll_vunroll_x_in_c1_eni25_12_tpl_4_rdcnt_i) + $unsigned(2'd1);
            end
        end
    end
    assign redist17_sync_together232_aunroll_vunroll_x_in_c1_eni25_12_tpl_4_rdcnt_q = redist17_sync_together232_aunroll_vunroll_x_in_c1_eni25_12_tpl_4_rdcnt_i[1:0];

    // redist17_sync_together232_aunroll_vunroll_x_in_c1_eni25_12_tpl_4_wraddr(REG,375)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist17_sync_together232_aunroll_vunroll_x_in_c1_eni25_12_tpl_4_wraddr_q <= $unsigned(2'b10);
        end
        else
        begin
            redist17_sync_together232_aunroll_vunroll_x_in_c1_eni25_12_tpl_4_wraddr_q <= $unsigned(redist17_sync_together232_aunroll_vunroll_x_in_c1_eni25_12_tpl_4_rdcnt_q);
        end
    end

    // redist17_sync_together232_aunroll_vunroll_x_in_c1_eni25_12_tpl_4_mem(DUALMEM,373)
    assign redist17_sync_together232_aunroll_vunroll_x_in_c1_eni25_12_tpl_4_mem_ia = $unsigned(in_c1_eni25_12_tpl);
    assign redist17_sync_together232_aunroll_vunroll_x_in_c1_eni25_12_tpl_4_mem_aa = redist17_sync_together232_aunroll_vunroll_x_in_c1_eni25_12_tpl_4_wraddr_q;
    assign redist17_sync_together232_aunroll_vunroll_x_in_c1_eni25_12_tpl_4_mem_ab = redist17_sync_together232_aunroll_vunroll_x_in_c1_eni25_12_tpl_4_rdcnt_q;
    assign redist17_sync_together232_aunroll_vunroll_x_in_c1_eni25_12_tpl_4_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(2),
        .numwords_a(3),
        .width_b(32),
        .widthad_b(2),
        .numwords_b(3),
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
    ) redist17_sync_together232_aunroll_vunroll_x_in_c1_eni25_12_tpl_4_mem_dmem (
        .clocken1(redist17_sync_together232_aunroll_vunroll_x_in_c1_eni25_12_tpl_4_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist17_sync_together232_aunroll_vunroll_x_in_c1_eni25_12_tpl_4_mem_reset0),
        .clock1(clock),
        .address_a(redist17_sync_together232_aunroll_vunroll_x_in_c1_eni25_12_tpl_4_mem_aa),
        .data_a(redist17_sync_together232_aunroll_vunroll_x_in_c1_eni25_12_tpl_4_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist17_sync_together232_aunroll_vunroll_x_in_c1_eni25_12_tpl_4_mem_ab),
        .q_b(redist17_sync_together232_aunroll_vunroll_x_in_c1_eni25_12_tpl_4_mem_iq),
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
    assign redist17_sync_together232_aunroll_vunroll_x_in_c1_eni25_12_tpl_4_mem_q = redist17_sync_together232_aunroll_vunroll_x_in_c1_eni25_12_tpl_4_mem_iq[31:0];

    // i_llvm_fpga_pop_f32_pre87_e82_pop81_conv2d1x153(BLACKBOX,110)@142
    // out out_feedback_stall_out_81@20000000
    conv2d1x1_i_llvm_fpga_pop_f32_pre87_e82_pop81_0 thei_llvm_fpga_pop_f32_pre87_e82_pop81_conv2d1x153 (
        .in_data_in(redist17_sync_together232_aunroll_vunroll_x_in_c1_eni25_12_tpl_4_mem_q),
        .in_dir(redist83_i_llvm_fpga_fanout_i1_c1_ene2_fanout_adaptor462_conv2d1x12_q_2_q),
        .in_feedback_in_81(i_llvm_fpga_push_f32_pre87_e82_push81_conv2d1x154_out_feedback_out_81),
        .in_feedback_valid_in_81(i_llvm_fpga_push_f32_pre87_e82_push81_conv2d1x154_out_feedback_valid_out_81),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg36_q),
        .out_data_out(i_llvm_fpga_pop_f32_pre87_e82_pop81_conv2d1x153_out_data_out),
        .out_feedback_stall_out_81(i_llvm_fpga_pop_f32_pre87_e82_pop81_conv2d1x153_out_feedback_stall_out_81),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist47_i_llvm_fpga_pop_f32_pre87_e82_pop81_conv2d1x153_out_data_out_1(DELAY,280)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist47_i_llvm_fpga_pop_f32_pre87_e82_pop81_conv2d1x153_out_data_out_1_q <= '0;
        end
        else
        begin
            redist47_i_llvm_fpga_pop_f32_pre87_e82_pop81_conv2d1x153_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_f32_pre87_e82_pop81_conv2d1x153_out_data_out);
        end
    end

    // i_select27_conv2d1x155(MUX,148)@143
    assign i_select27_conv2d1x155_s = i_llvm_fpga_fanout_i1_not_181_fanout_adaptor465_conv2d1x131_q;
    always @(i_select27_conv2d1x155_s or i_llvm_fpga_fp_multadd_mult_add85_conv2d1x140_out_primWireOut or redist47_i_llvm_fpga_pop_f32_pre87_e82_pop81_conv2d1x153_out_data_out_1_q)
    begin
        unique case (i_select27_conv2d1x155_s)
            1'b0 : i_select27_conv2d1x155_q = i_llvm_fpga_fp_multadd_mult_add85_conv2d1x140_out_primWireOut;
            1'b1 : i_select27_conv2d1x155_q = redist47_i_llvm_fpga_pop_f32_pre87_e82_pop81_conv2d1x153_out_data_out_1_q;
            default : i_select27_conv2d1x155_q = 32'b0;
        endcase
    end

    // valid_fanout_reg34(REG,201)@141 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg34_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg34_q <= $unsigned(redist41_sync_together232_aunroll_vunroll_x_in_i_valid_3_q);
        end
    end

    // valid_fanout_reg35(REG,202)@141 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg35_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg35_q <= $unsigned(redist41_sync_together232_aunroll_vunroll_x_in_i_valid_3_q);
        end
    end

    // i_llvm_fpga_push_f32_pre88_e83_push82_conv2d1x151(BLACKBOX,127)@142
    // out out_feedback_out_82@20000000
    // out out_feedback_valid_out_82@20000000
    conv2d1x1_i_llvm_fpga_push_f32_pre88_e83_push82_0 thei_llvm_fpga_push_f32_pre88_e83_push82_conv2d1x151 (
        .in_c1_ene14_fanout_adaptor(i_llvm_fpga_fanout_i1_c1_ene14_fanout_adaptor_conv2d1x17_q),
        .in_data_in(i_llvm_fpga_pop_f32_pre88_e83_pop82_conv2d1x150_out_data_out),
        .in_feedback_stall_in_82(i_llvm_fpga_pop_f32_pre88_e83_pop82_conv2d1x150_out_feedback_stall_out_82),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg35_q),
        .out_data_out(),
        .out_feedback_out_82(i_llvm_fpga_push_f32_pre88_e83_push82_conv2d1x151_out_feedback_out_82),
        .out_feedback_valid_out_82(i_llvm_fpga_push_f32_pre88_e83_push82_conv2d1x151_out_feedback_valid_out_82),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist18_sync_together232_aunroll_vunroll_x_in_c1_eni25_13_tpl_4_notEnable(LOGICAL,389)
    assign redist18_sync_together232_aunroll_vunroll_x_in_c1_eni25_13_tpl_4_notEnable_q = $unsigned(~ (VCC_q));

    // redist18_sync_together232_aunroll_vunroll_x_in_c1_eni25_13_tpl_4_nor(LOGICAL,390)
    assign redist18_sync_together232_aunroll_vunroll_x_in_c1_eni25_13_tpl_4_nor_q = ~ (redist18_sync_together232_aunroll_vunroll_x_in_c1_eni25_13_tpl_4_notEnable_q | redist18_sync_together232_aunroll_vunroll_x_in_c1_eni25_13_tpl_4_sticky_ena_q);

    // redist18_sync_together232_aunroll_vunroll_x_in_c1_eni25_13_tpl_4_mem_last(CONSTANT,386)
    assign redist18_sync_together232_aunroll_vunroll_x_in_c1_eni25_13_tpl_4_mem_last_q = $unsigned(2'b01);

    // redist18_sync_together232_aunroll_vunroll_x_in_c1_eni25_13_tpl_4_cmp(LOGICAL,387)
    assign redist18_sync_together232_aunroll_vunroll_x_in_c1_eni25_13_tpl_4_cmp_q = $unsigned(redist18_sync_together232_aunroll_vunroll_x_in_c1_eni25_13_tpl_4_mem_last_q == redist18_sync_together232_aunroll_vunroll_x_in_c1_eni25_13_tpl_4_rdcnt_q ? 1'b1 : 1'b0);

    // redist18_sync_together232_aunroll_vunroll_x_in_c1_eni25_13_tpl_4_cmpReg(REG,388)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist18_sync_together232_aunroll_vunroll_x_in_c1_eni25_13_tpl_4_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist18_sync_together232_aunroll_vunroll_x_in_c1_eni25_13_tpl_4_cmpReg_q <= $unsigned(redist18_sync_together232_aunroll_vunroll_x_in_c1_eni25_13_tpl_4_cmp_q);
        end
    end

    // redist18_sync_together232_aunroll_vunroll_x_in_c1_eni25_13_tpl_4_sticky_ena(REG,391)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist18_sync_together232_aunroll_vunroll_x_in_c1_eni25_13_tpl_4_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist18_sync_together232_aunroll_vunroll_x_in_c1_eni25_13_tpl_4_nor_q == 1'b1)
        begin
            redist18_sync_together232_aunroll_vunroll_x_in_c1_eni25_13_tpl_4_sticky_ena_q <= $unsigned(redist18_sync_together232_aunroll_vunroll_x_in_c1_eni25_13_tpl_4_cmpReg_q);
        end
    end

    // redist18_sync_together232_aunroll_vunroll_x_in_c1_eni25_13_tpl_4_enaAnd(LOGICAL,392)
    assign redist18_sync_together232_aunroll_vunroll_x_in_c1_eni25_13_tpl_4_enaAnd_q = redist18_sync_together232_aunroll_vunroll_x_in_c1_eni25_13_tpl_4_sticky_ena_q & VCC_q;

    // redist18_sync_together232_aunroll_vunroll_x_in_c1_eni25_13_tpl_4_rdcnt(COUNTER,384)
    // low=0, high=2, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist18_sync_together232_aunroll_vunroll_x_in_c1_eni25_13_tpl_4_rdcnt_i <= 2'd0;
            redist18_sync_together232_aunroll_vunroll_x_in_c1_eni25_13_tpl_4_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist18_sync_together232_aunroll_vunroll_x_in_c1_eni25_13_tpl_4_rdcnt_i == 2'd1)
            begin
                redist18_sync_together232_aunroll_vunroll_x_in_c1_eni25_13_tpl_4_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist18_sync_together232_aunroll_vunroll_x_in_c1_eni25_13_tpl_4_rdcnt_eq <= 1'b0;
            end
            if (redist18_sync_together232_aunroll_vunroll_x_in_c1_eni25_13_tpl_4_rdcnt_eq == 1'b1)
            begin
                redist18_sync_together232_aunroll_vunroll_x_in_c1_eni25_13_tpl_4_rdcnt_i <= $unsigned(redist18_sync_together232_aunroll_vunroll_x_in_c1_eni25_13_tpl_4_rdcnt_i) + $unsigned(2'd2);
            end
            else
            begin
                redist18_sync_together232_aunroll_vunroll_x_in_c1_eni25_13_tpl_4_rdcnt_i <= $unsigned(redist18_sync_together232_aunroll_vunroll_x_in_c1_eni25_13_tpl_4_rdcnt_i) + $unsigned(2'd1);
            end
        end
    end
    assign redist18_sync_together232_aunroll_vunroll_x_in_c1_eni25_13_tpl_4_rdcnt_q = redist18_sync_together232_aunroll_vunroll_x_in_c1_eni25_13_tpl_4_rdcnt_i[1:0];

    // redist18_sync_together232_aunroll_vunroll_x_in_c1_eni25_13_tpl_4_wraddr(REG,385)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist18_sync_together232_aunroll_vunroll_x_in_c1_eni25_13_tpl_4_wraddr_q <= $unsigned(2'b10);
        end
        else
        begin
            redist18_sync_together232_aunroll_vunroll_x_in_c1_eni25_13_tpl_4_wraddr_q <= $unsigned(redist18_sync_together232_aunroll_vunroll_x_in_c1_eni25_13_tpl_4_rdcnt_q);
        end
    end

    // redist18_sync_together232_aunroll_vunroll_x_in_c1_eni25_13_tpl_4_mem(DUALMEM,383)
    assign redist18_sync_together232_aunroll_vunroll_x_in_c1_eni25_13_tpl_4_mem_ia = $unsigned(in_c1_eni25_13_tpl);
    assign redist18_sync_together232_aunroll_vunroll_x_in_c1_eni25_13_tpl_4_mem_aa = redist18_sync_together232_aunroll_vunroll_x_in_c1_eni25_13_tpl_4_wraddr_q;
    assign redist18_sync_together232_aunroll_vunroll_x_in_c1_eni25_13_tpl_4_mem_ab = redist18_sync_together232_aunroll_vunroll_x_in_c1_eni25_13_tpl_4_rdcnt_q;
    assign redist18_sync_together232_aunroll_vunroll_x_in_c1_eni25_13_tpl_4_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(2),
        .numwords_a(3),
        .width_b(32),
        .widthad_b(2),
        .numwords_b(3),
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
    ) redist18_sync_together232_aunroll_vunroll_x_in_c1_eni25_13_tpl_4_mem_dmem (
        .clocken1(redist18_sync_together232_aunroll_vunroll_x_in_c1_eni25_13_tpl_4_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist18_sync_together232_aunroll_vunroll_x_in_c1_eni25_13_tpl_4_mem_reset0),
        .clock1(clock),
        .address_a(redist18_sync_together232_aunroll_vunroll_x_in_c1_eni25_13_tpl_4_mem_aa),
        .data_a(redist18_sync_together232_aunroll_vunroll_x_in_c1_eni25_13_tpl_4_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist18_sync_together232_aunroll_vunroll_x_in_c1_eni25_13_tpl_4_mem_ab),
        .q_b(redist18_sync_together232_aunroll_vunroll_x_in_c1_eni25_13_tpl_4_mem_iq),
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
    assign redist18_sync_together232_aunroll_vunroll_x_in_c1_eni25_13_tpl_4_mem_q = redist18_sync_together232_aunroll_vunroll_x_in_c1_eni25_13_tpl_4_mem_iq[31:0];

    // i_llvm_fpga_pop_f32_pre88_e83_pop82_conv2d1x150(BLACKBOX,111)@142
    // out out_feedback_stall_out_82@20000000
    conv2d1x1_i_llvm_fpga_pop_f32_pre88_e83_pop82_0 thei_llvm_fpga_pop_f32_pre88_e83_pop82_conv2d1x150 (
        .in_data_in(redist18_sync_together232_aunroll_vunroll_x_in_c1_eni25_13_tpl_4_mem_q),
        .in_dir(redist83_i_llvm_fpga_fanout_i1_c1_ene2_fanout_adaptor462_conv2d1x12_q_2_q),
        .in_feedback_in_82(i_llvm_fpga_push_f32_pre88_e83_push82_conv2d1x151_out_feedback_out_82),
        .in_feedback_valid_in_82(i_llvm_fpga_push_f32_pre88_e83_push82_conv2d1x151_out_feedback_valid_out_82),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg34_q),
        .out_data_out(i_llvm_fpga_pop_f32_pre88_e83_pop82_conv2d1x150_out_data_out),
        .out_feedback_stall_out_82(i_llvm_fpga_pop_f32_pre88_e83_pop82_conv2d1x150_out_feedback_stall_out_82),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist46_i_llvm_fpga_pop_f32_pre88_e83_pop82_conv2d1x150_out_data_out_1(DELAY,279)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist46_i_llvm_fpga_pop_f32_pre88_e83_pop82_conv2d1x150_out_data_out_1_q <= '0;
        end
        else
        begin
            redist46_i_llvm_fpga_pop_f32_pre88_e83_pop82_conv2d1x150_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_f32_pre88_e83_pop82_conv2d1x150_out_data_out);
        end
    end

    // redist38_sync_together232_aunroll_vunroll_x_in_c1_eni25_25_tpl_5(DELAY,271)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist38_sync_together232_aunroll_vunroll_x_in_c1_eni25_25_tpl_5_delay_0 <= '0;
            redist38_sync_together232_aunroll_vunroll_x_in_c1_eni25_25_tpl_5_delay_1 <= '0;
            redist38_sync_together232_aunroll_vunroll_x_in_c1_eni25_25_tpl_5_delay_2 <= '0;
            redist38_sync_together232_aunroll_vunroll_x_in_c1_eni25_25_tpl_5_delay_3 <= '0;
            redist38_sync_together232_aunroll_vunroll_x_in_c1_eni25_25_tpl_5_q <= '0;
        end
        else
        begin
            redist38_sync_together232_aunroll_vunroll_x_in_c1_eni25_25_tpl_5_delay_0 <= $unsigned(in_c1_eni25_25_tpl);
            redist38_sync_together232_aunroll_vunroll_x_in_c1_eni25_25_tpl_5_delay_1 <= redist38_sync_together232_aunroll_vunroll_x_in_c1_eni25_25_tpl_5_delay_0;
            redist38_sync_together232_aunroll_vunroll_x_in_c1_eni25_25_tpl_5_delay_2 <= redist38_sync_together232_aunroll_vunroll_x_in_c1_eni25_25_tpl_5_delay_1;
            redist38_sync_together232_aunroll_vunroll_x_in_c1_eni25_25_tpl_5_delay_3 <= redist38_sync_together232_aunroll_vunroll_x_in_c1_eni25_25_tpl_5_delay_2;
            redist38_sync_together232_aunroll_vunroll_x_in_c1_eni25_25_tpl_5_q <= redist38_sync_together232_aunroll_vunroll_x_in_c1_eni25_25_tpl_5_delay_3;
        end
    end

    // i_select24_conv2d1x152(MUX,147)@143
    assign i_select24_conv2d1x152_s = redist38_sync_together232_aunroll_vunroll_x_in_c1_eni25_25_tpl_5_q;
    always @(i_select24_conv2d1x152_s or redist46_i_llvm_fpga_pop_f32_pre88_e83_pop82_conv2d1x150_out_data_out_1_q or i_llvm_fpga_fp_multadd_mult_add_conv2d1x136_out_primWireOut)
    begin
        unique case (i_select24_conv2d1x152_s)
            1'b0 : i_select24_conv2d1x152_q = redist46_i_llvm_fpga_pop_f32_pre88_e83_pop82_conv2d1x150_out_data_out_1_q;
            1'b1 : i_select24_conv2d1x152_q = i_llvm_fpga_fp_multadd_mult_add_conv2d1x136_out_primWireOut;
            default : i_select24_conv2d1x152_q = 32'b0;
        endcase
    end

    // valid_fanout_reg31(REG,198)@138 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg31_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg31_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg32(REG,199)@139 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg32_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg32_q <= $unsigned(redist39_sync_together232_aunroll_vunroll_x_in_i_valid_1_q);
        end
    end

    // valid_fanout_reg4(REG,171)@139 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg4_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg4_q <= $unsigned(redist39_sync_together232_aunroll_vunroll_x_in_i_valid_1_q);
        end
    end

    // valid_fanout_reg16(REG,183)@140 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg16_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg16_q <= $unsigned(redist40_sync_together232_aunroll_vunroll_x_in_i_valid_2_q);
        end
    end

    // valid_fanout_reg8(REG,175)@140 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg8_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg8_q <= $unsigned(redist40_sync_together232_aunroll_vunroll_x_in_i_valid_2_q);
        end
    end

    // valid_fanout_reg20(REG,187)@141 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg20_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg20_q <= $unsigned(redist41_sync_together232_aunroll_vunroll_x_in_i_valid_3_q);
        end
    end

    // valid_fanout_reg12(REG,179)@141 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg12_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg12_q <= $unsigned(redist41_sync_together232_aunroll_vunroll_x_in_i_valid_3_q);
        end
    end

    // valid_fanout_reg24(REG,191)@142 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg24_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg24_q <= $unsigned(redist42_sync_together232_aunroll_vunroll_x_in_i_valid_4_q);
        end
    end

    // redist85_i_llvm_fpga_fanout_i1_c1_ene14_fanout_adaptor464_conv2d1x15_q_1(DELAY,318)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist85_i_llvm_fpga_fanout_i1_c1_ene14_fanout_adaptor464_conv2d1x15_q_1_q <= '0;
        end
        else
        begin
            redist85_i_llvm_fpga_fanout_i1_c1_ene14_fanout_adaptor464_conv2d1x15_q_1_q <= $unsigned(i_llvm_fpga_fanout_i1_c1_ene14_fanout_adaptor464_conv2d1x15_q);
        end
    end

    // i_llvm_fpga_push_f32_push38_conv2d1x137(BLACKBOX,129)@143
    // out out_feedback_out_38@20000000
    // out out_feedback_valid_out_38@20000000
    conv2d1x1_i_llvm_fpga_push_f32_push38_0 thei_llvm_fpga_push_f32_push38_conv2d1x137 (
        .in_c1_ene14_fanout_adaptor464(redist85_i_llvm_fpga_fanout_i1_c1_ene14_fanout_adaptor464_conv2d1x15_q_1_q),
        .in_data_in(i_llvm_fpga_fp_multadd_mult_add_conv2d1x136_out_primWireOut),
        .in_feedback_stall_in_38(i_llvm_fpga_pop_f32_pop38_conv2d1x119_out_feedback_stall_out_38),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg24_q),
        .out_data_out(),
        .out_feedback_out_38(i_llvm_fpga_push_f32_push38_conv2d1x137_out_feedback_out_38),
        .out_feedback_valid_out_38(i_llvm_fpga_push_f32_push38_conv2d1x137_out_feedback_valid_out_38),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_f32_pop38_conv2d1x119(BLACKBOX,81)@142
    // out out_feedback_stall_out_38@20000000
    conv2d1x1_i_llvm_fpga_pop_f32_pop38_0 thei_llvm_fpga_pop_f32_pop38_conv2d1x119 (
        .in_data_in(redist18_sync_together232_aunroll_vunroll_x_in_c1_eni25_13_tpl_4_mem_q),
        .in_dir(redist82_i_llvm_fpga_fanout_i1_c1_ene2_fanout_adaptor_conv2d1x14_q_2_q),
        .in_feedback_in_38(i_llvm_fpga_push_f32_push38_conv2d1x137_out_feedback_out_38),
        .in_feedback_valid_in_38(i_llvm_fpga_push_f32_push38_conv2d1x137_out_feedback_valid_out_38),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg12_q),
        .out_data_out(i_llvm_fpga_pop_f32_pop38_conv2d1x119_out_data_out),
        .out_feedback_stall_out_38(i_llvm_fpga_pop_f32_pop38_conv2d1x119_out_feedback_stall_out_38),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_fanout_i1_c1_ene14_fanout_adaptor464_conv2d1x15(REG,69)@141 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_llvm_fpga_fanout_i1_c1_ene14_fanout_adaptor464_conv2d1x15_q <= $unsigned(1'b0);
        end
        else
        begin
            i_llvm_fpga_fanout_i1_c1_ene14_fanout_adaptor464_conv2d1x15_q <= redist20_sync_together232_aunroll_vunroll_x_in_c1_eni25_14_tpl_3_q;
        end
    end

    // i_llvm_fpga_push_f32_push42_conv2d1x127(BLACKBOX,133)@142
    // out out_feedback_out_42@20000000
    // out out_feedback_valid_out_42@20000000
    conv2d1x1_i_llvm_fpga_push_f32_push42_0 thei_llvm_fpga_push_f32_push42_conv2d1x127 (
        .in_c1_ene14_fanout_adaptor464(i_llvm_fpga_fanout_i1_c1_ene14_fanout_adaptor464_conv2d1x15_q),
        .in_data_in(i_llvm_fpga_pop_f32_pop38_conv2d1x119_out_data_out),
        .in_feedback_stall_in_42(i_llvm_fpga_pop_f32_pop42_conv2d1x115_out_feedback_stall_out_42),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg20_q),
        .out_data_out(),
        .out_feedback_out_42(i_llvm_fpga_push_f32_push42_conv2d1x127_out_feedback_out_42),
        .out_feedback_valid_out_42(i_llvm_fpga_push_f32_push42_conv2d1x127_out_feedback_valid_out_42),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_f32_pop42_conv2d1x115(BLACKBOX,85)@141
    // out out_feedback_stall_out_42@20000000
    conv2d1x1_i_llvm_fpga_pop_f32_pop42_0 thei_llvm_fpga_pop_f32_pop42_conv2d1x115 (
        .in_data_in(redist13_sync_together232_aunroll_vunroll_x_in_c1_eni25_9_tpl_3_mem_q),
        .in_dir(redist81_i_llvm_fpga_fanout_i1_c1_ene2_fanout_adaptor_conv2d1x14_q_1_q),
        .in_feedback_in_42(i_llvm_fpga_push_f32_push42_conv2d1x127_out_feedback_out_42),
        .in_feedback_valid_in_42(i_llvm_fpga_push_f32_push42_conv2d1x127_out_feedback_valid_out_42),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg8_q),
        .out_data_out(i_llvm_fpga_pop_f32_pop42_conv2d1x115_out_data_out),
        .out_feedback_stall_out_42(i_llvm_fpga_pop_f32_pop42_conv2d1x115_out_feedback_stall_out_42),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_f32_push46_conv2d1x123(BLACKBOX,137)@141
    // out out_feedback_out_46@20000000
    // out out_feedback_valid_out_46@20000000
    conv2d1x1_i_llvm_fpga_push_f32_push46_0 thei_llvm_fpga_push_f32_push46_conv2d1x123 (
        .in_c1_ene14_fanout_adaptor463(redist86_i_llvm_fpga_fanout_i1_c1_ene14_fanout_adaptor463_conv2d1x16_q_1_q),
        .in_data_in(i_llvm_fpga_pop_f32_pop42_conv2d1x115_out_data_out),
        .in_feedback_stall_in_46(i_llvm_fpga_pop_f32_pop46_conv2d1x111_out_feedback_stall_out_46),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg16_q),
        .out_data_out(),
        .out_feedback_out_46(i_llvm_fpga_push_f32_push46_conv2d1x123_out_feedback_out_46),
        .out_feedback_valid_out_46(i_llvm_fpga_push_f32_push46_conv2d1x123_out_feedback_valid_out_46),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_f32_pop46_conv2d1x111(BLACKBOX,89)@140
    // out out_feedback_stall_out_46@20000000
    conv2d1x1_i_llvm_fpga_pop_f32_pop46_0 thei_llvm_fpga_pop_f32_pop46_conv2d1x111 (
        .in_data_in(redist7_sync_together232_aunroll_vunroll_x_in_c1_eni25_5_tpl_2_q),
        .in_dir(i_llvm_fpga_fanout_i1_c1_ene2_fanout_adaptor_conv2d1x14_q),
        .in_feedback_in_46(i_llvm_fpga_push_f32_push46_conv2d1x123_out_feedback_out_46),
        .in_feedback_valid_in_46(i_llvm_fpga_push_f32_push46_conv2d1x123_out_feedback_valid_out_46),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_data_out(i_llvm_fpga_pop_f32_pop46_conv2d1x111_out_data_out),
        .out_feedback_stall_out_46(i_llvm_fpga_pop_f32_pop46_conv2d1x111_out_feedback_stall_out_46),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_f32_push50_conv2d1x147(BLACKBOX,141)@140
    // out out_feedback_out_50@20000000
    // out out_feedback_valid_out_50@20000000
    conv2d1x1_i_llvm_fpga_push_f32_push50_0 thei_llvm_fpga_push_f32_push50_conv2d1x147 (
        .in_c1_ene14_fanout_adaptor463(i_llvm_fpga_fanout_i1_c1_ene14_fanout_adaptor463_conv2d1x16_q),
        .in_data_in(i_llvm_fpga_pop_f32_pop46_conv2d1x111_out_data_out),
        .in_feedback_stall_in_50(i_llvm_fpga_pop_f32_pop50_conv2d1x146_out_feedback_stall_out_50),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg32_q),
        .out_data_out(),
        .out_feedback_out_50(i_llvm_fpga_push_f32_push50_conv2d1x147_out_feedback_out_50),
        .out_feedback_valid_out_50(i_llvm_fpga_push_f32_push50_conv2d1x147_out_feedback_valid_out_50),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_f32_pop50_conv2d1x146(BLACKBOX,93)@139
    // out out_feedback_stall_out_50@20000000
    conv2d1x1_i_llvm_fpga_pop_f32_pop50_0 thei_llvm_fpga_pop_f32_pop50_conv2d1x146 (
        .in_data_in(redist35_sync_together232_aunroll_vunroll_x_in_c1_eni25_23_tpl_1_q),
        .in_dir(i_llvm_fpga_fanout_i1_c1_ene2_fanout_adaptor461_conv2d1x13_q),
        .in_feedback_in_50(i_llvm_fpga_push_f32_push50_conv2d1x147_out_feedback_out_50),
        .in_feedback_valid_in_50(i_llvm_fpga_push_f32_push50_conv2d1x147_out_feedback_valid_out_50),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg31_q),
        .out_data_out(i_llvm_fpga_pop_f32_pop50_conv2d1x146_out_data_out),
        .out_feedback_stall_out_50(i_llvm_fpga_pop_f32_pop50_conv2d1x146_out_feedback_stall_out_50),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist37_sync_together232_aunroll_vunroll_x_in_c1_eni25_24_tpl_1(DELAY,270)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist37_sync_together232_aunroll_vunroll_x_in_c1_eni25_24_tpl_1_q <= '0;
        end
        else
        begin
            redist37_sync_together232_aunroll_vunroll_x_in_c1_eni25_24_tpl_1_q <= $unsigned(in_c1_eni25_24_tpl);
        end
    end

    // redist25_sync_together232_aunroll_vunroll_x_in_c1_eni25_3_16_tpl_1(DELAY,258)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist25_sync_together232_aunroll_vunroll_x_in_c1_eni25_3_16_tpl_1_q <= '0;
        end
        else
        begin
            redist25_sync_together232_aunroll_vunroll_x_in_c1_eni25_3_16_tpl_1_q <= $unsigned(in_c1_eni25_3_16_tpl);
        end
    end

    // i_llvm_fpga_fp_multadd_mult_add87_conv2d1x148(BLACKBOX,79)@139
    // out out_primWireOut@143
    conv2d1x1_flt_i_sfc_logic_s_c1_in_for_bo0000xk5id06uq0cp0jv34qcz thei_llvm_fpga_fp_multadd_mult_add87_conv2d1x148 (
        .in_0(redist25_sync_together232_aunroll_vunroll_x_in_c1_eni25_3_16_tpl_1_q),
        .in_1(redist37_sync_together232_aunroll_vunroll_x_in_c1_eni25_24_tpl_1_q),
        .in_2(i_llvm_fpga_pop_f32_pop50_conv2d1x146_out_data_out),
        .out_primWireOut(i_llvm_fpga_fp_multadd_mult_add87_conv2d1x148_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg28(REG,195)@138 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg28_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg28_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg29(REG,196)@139 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg29_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg29_q <= $unsigned(redist39_sync_together232_aunroll_vunroll_x_in_i_valid_1_q);
        end
    end

    // valid_fanout_reg3(REG,170)@139 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg3_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg3_q <= $unsigned(redist39_sync_together232_aunroll_vunroll_x_in_i_valid_1_q);
        end
    end

    // valid_fanout_reg15(REG,182)@140 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg15_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg15_q <= $unsigned(redist40_sync_together232_aunroll_vunroll_x_in_i_valid_2_q);
        end
    end

    // valid_fanout_reg7(REG,174)@140 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg7_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg7_q <= $unsigned(redist40_sync_together232_aunroll_vunroll_x_in_i_valid_2_q);
        end
    end

    // valid_fanout_reg19(REG,186)@141 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg19_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg19_q <= $unsigned(redist41_sync_together232_aunroll_vunroll_x_in_i_valid_3_q);
        end
    end

    // valid_fanout_reg11(REG,178)@141 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg11_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg11_q <= $unsigned(redist41_sync_together232_aunroll_vunroll_x_in_i_valid_3_q);
        end
    end

    // valid_fanout_reg27(REG,194)@142 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg27_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg27_q <= $unsigned(redist42_sync_together232_aunroll_vunroll_x_in_i_valid_4_q);
        end
    end

    // i_llvm_fpga_push_f32_push39_conv2d1x141(BLACKBOX,130)@143
    // out out_feedback_out_39@20000000
    // out out_feedback_valid_out_39@20000000
    conv2d1x1_i_llvm_fpga_push_f32_push39_0 thei_llvm_fpga_push_f32_push39_conv2d1x141 (
        .in_c1_ene14_fanout_adaptor464(redist85_i_llvm_fpga_fanout_i1_c1_ene14_fanout_adaptor464_conv2d1x15_q_1_q),
        .in_data_in(i_llvm_fpga_fp_multadd_mult_add85_conv2d1x140_out_primWireOut),
        .in_feedback_stall_in_39(i_llvm_fpga_pop_f32_pop39_conv2d1x118_out_feedback_stall_out_39),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg27_q),
        .out_data_out(),
        .out_feedback_out_39(i_llvm_fpga_push_f32_push39_conv2d1x141_out_feedback_out_39),
        .out_feedback_valid_out_39(i_llvm_fpga_push_f32_push39_conv2d1x141_out_feedback_valid_out_39),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_f32_pop39_conv2d1x118(BLACKBOX,82)@142
    // out out_feedback_stall_out_39@20000000
    conv2d1x1_i_llvm_fpga_pop_f32_pop39_0 thei_llvm_fpga_pop_f32_pop39_conv2d1x118 (
        .in_data_in(redist17_sync_together232_aunroll_vunroll_x_in_c1_eni25_12_tpl_4_mem_q),
        .in_dir(redist82_i_llvm_fpga_fanout_i1_c1_ene2_fanout_adaptor_conv2d1x14_q_2_q),
        .in_feedback_in_39(i_llvm_fpga_push_f32_push39_conv2d1x141_out_feedback_out_39),
        .in_feedback_valid_in_39(i_llvm_fpga_push_f32_push39_conv2d1x141_out_feedback_valid_out_39),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg11_q),
        .out_data_out(i_llvm_fpga_pop_f32_pop39_conv2d1x118_out_data_out),
        .out_feedback_stall_out_39(i_llvm_fpga_pop_f32_pop39_conv2d1x118_out_feedback_stall_out_39),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_f32_push43_conv2d1x126(BLACKBOX,134)@142
    // out out_feedback_out_43@20000000
    // out out_feedback_valid_out_43@20000000
    conv2d1x1_i_llvm_fpga_push_f32_push43_0 thei_llvm_fpga_push_f32_push43_conv2d1x126 (
        .in_c1_ene14_fanout_adaptor464(i_llvm_fpga_fanout_i1_c1_ene14_fanout_adaptor464_conv2d1x15_q),
        .in_data_in(i_llvm_fpga_pop_f32_pop39_conv2d1x118_out_data_out),
        .in_feedback_stall_in_43(i_llvm_fpga_pop_f32_pop43_conv2d1x114_out_feedback_stall_out_43),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg19_q),
        .out_data_out(),
        .out_feedback_out_43(i_llvm_fpga_push_f32_push43_conv2d1x126_out_feedback_out_43),
        .out_feedback_valid_out_43(i_llvm_fpga_push_f32_push43_conv2d1x126_out_feedback_valid_out_43),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_f32_pop43_conv2d1x114(BLACKBOX,86)@141
    // out out_feedback_stall_out_43@20000000
    conv2d1x1_i_llvm_fpga_pop_f32_pop43_0 thei_llvm_fpga_pop_f32_pop43_conv2d1x114 (
        .in_data_in(redist11_sync_together232_aunroll_vunroll_x_in_c1_eni25_8_tpl_3_mem_q),
        .in_dir(redist81_i_llvm_fpga_fanout_i1_c1_ene2_fanout_adaptor_conv2d1x14_q_1_q),
        .in_feedback_in_43(i_llvm_fpga_push_f32_push43_conv2d1x126_out_feedback_out_43),
        .in_feedback_valid_in_43(i_llvm_fpga_push_f32_push43_conv2d1x126_out_feedback_valid_out_43),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg7_q),
        .out_data_out(i_llvm_fpga_pop_f32_pop43_conv2d1x114_out_data_out),
        .out_feedback_stall_out_43(i_llvm_fpga_pop_f32_pop43_conv2d1x114_out_feedback_stall_out_43),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_f32_push47_conv2d1x122(BLACKBOX,138)@141
    // out out_feedback_out_47@20000000
    // out out_feedback_valid_out_47@20000000
    conv2d1x1_i_llvm_fpga_push_f32_push47_0 thei_llvm_fpga_push_f32_push47_conv2d1x122 (
        .in_c1_ene14_fanout_adaptor463(redist86_i_llvm_fpga_fanout_i1_c1_ene14_fanout_adaptor463_conv2d1x16_q_1_q),
        .in_data_in(i_llvm_fpga_pop_f32_pop43_conv2d1x114_out_data_out),
        .in_feedback_stall_in_47(i_llvm_fpga_pop_f32_pop47_conv2d1x110_out_feedback_stall_out_47),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg15_q),
        .out_data_out(),
        .out_feedback_out_47(i_llvm_fpga_push_f32_push47_conv2d1x122_out_feedback_out_47),
        .out_feedback_valid_out_47(i_llvm_fpga_push_f32_push47_conv2d1x122_out_feedback_valid_out_47),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_f32_pop47_conv2d1x110(BLACKBOX,90)@140
    // out out_feedback_stall_out_47@20000000
    conv2d1x1_i_llvm_fpga_pop_f32_pop47_0 thei_llvm_fpga_pop_f32_pop47_conv2d1x110 (
        .in_data_in(redist5_sync_together232_aunroll_vunroll_x_in_c1_eni25_4_tpl_2_q),
        .in_dir(i_llvm_fpga_fanout_i1_c1_ene2_fanout_adaptor_conv2d1x14_q),
        .in_feedback_in_47(i_llvm_fpga_push_f32_push47_conv2d1x122_out_feedback_out_47),
        .in_feedback_valid_in_47(i_llvm_fpga_push_f32_push47_conv2d1x122_out_feedback_valid_out_47),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_data_out(i_llvm_fpga_pop_f32_pop47_conv2d1x110_out_data_out),
        .out_feedback_stall_out_47(i_llvm_fpga_pop_f32_pop47_conv2d1x110_out_feedback_stall_out_47),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_f32_push51_conv2d1x143(BLACKBOX,142)@140
    // out out_feedback_out_51@20000000
    // out out_feedback_valid_out_51@20000000
    conv2d1x1_i_llvm_fpga_push_f32_push51_0 thei_llvm_fpga_push_f32_push51_conv2d1x143 (
        .in_c1_ene14_fanout_adaptor463(i_llvm_fpga_fanout_i1_c1_ene14_fanout_adaptor463_conv2d1x16_q),
        .in_data_in(i_llvm_fpga_pop_f32_pop47_conv2d1x110_out_data_out),
        .in_feedback_stall_in_51(i_llvm_fpga_pop_f32_pop51_conv2d1x142_out_feedback_stall_out_51),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg29_q),
        .out_data_out(),
        .out_feedback_out_51(i_llvm_fpga_push_f32_push51_conv2d1x143_out_feedback_out_51),
        .out_feedback_valid_out_51(i_llvm_fpga_push_f32_push51_conv2d1x143_out_feedback_valid_out_51),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_f32_pop51_conv2d1x142(BLACKBOX,94)@139
    // out out_feedback_stall_out_51@20000000
    conv2d1x1_i_llvm_fpga_pop_f32_pop51_0 thei_llvm_fpga_pop_f32_pop51_conv2d1x142 (
        .in_data_in(redist32_sync_together232_aunroll_vunroll_x_in_c1_eni25_21_tpl_1_q),
        .in_dir(i_llvm_fpga_fanout_i1_c1_ene2_fanout_adaptor461_conv2d1x13_q),
        .in_feedback_in_51(i_llvm_fpga_push_f32_push51_conv2d1x143_out_feedback_out_51),
        .in_feedback_valid_in_51(i_llvm_fpga_push_f32_push51_conv2d1x143_out_feedback_valid_out_51),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg28_q),
        .out_data_out(i_llvm_fpga_pop_f32_pop51_conv2d1x142_out_data_out),
        .out_feedback_stall_out_51(i_llvm_fpga_pop_f32_pop51_conv2d1x142_out_feedback_stall_out_51),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist34_sync_together232_aunroll_vunroll_x_in_c1_eni25_22_tpl_1(DELAY,267)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist34_sync_together232_aunroll_vunroll_x_in_c1_eni25_22_tpl_1_q <= '0;
        end
        else
        begin
            redist34_sync_together232_aunroll_vunroll_x_in_c1_eni25_22_tpl_1_q <= $unsigned(in_c1_eni25_22_tpl);
        end
    end

    // redist24_sync_together232_aunroll_vunroll_x_in_c1_eni25_2_16_tpl_1(DELAY,257)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist24_sync_together232_aunroll_vunroll_x_in_c1_eni25_2_16_tpl_1_q <= '0;
        end
        else
        begin
            redist24_sync_together232_aunroll_vunroll_x_in_c1_eni25_2_16_tpl_1_q <= $unsigned(in_c1_eni25_2_16_tpl);
        end
    end

    // i_llvm_fpga_fp_multadd_mult_add86_conv2d1x144(BLACKBOX,78)@139
    // out out_primWireOut@143
    conv2d1x1_flt_i_sfc_logic_s_c1_in_for_bo0000xk5id06uq0cp0jv34qcz thei_llvm_fpga_fp_multadd_mult_add86_conv2d1x144 (
        .in_0(redist24_sync_together232_aunroll_vunroll_x_in_c1_eni25_2_16_tpl_1_q),
        .in_1(redist34_sync_together232_aunroll_vunroll_x_in_c1_eni25_22_tpl_1_q),
        .in_2(i_llvm_fpga_pop_f32_pop51_conv2d1x142_out_data_out),
        .out_primWireOut(i_llvm_fpga_fp_multadd_mult_add86_conv2d1x144_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg25(REG,192)@138 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg25_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg25_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg26(REG,193)@139 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg26_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg26_q <= $unsigned(redist39_sync_together232_aunroll_vunroll_x_in_i_valid_1_q);
        end
    end

    // valid_fanout_reg2(REG,169)@139 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg2_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg2_q <= $unsigned(redist39_sync_together232_aunroll_vunroll_x_in_i_valid_1_q);
        end
    end

    // valid_fanout_reg14(REG,181)@140 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg14_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg14_q <= $unsigned(redist40_sync_together232_aunroll_vunroll_x_in_i_valid_2_q);
        end
    end

    // valid_fanout_reg6(REG,173)@140 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg6_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg6_q <= $unsigned(redist40_sync_together232_aunroll_vunroll_x_in_i_valid_2_q);
        end
    end

    // valid_fanout_reg18(REG,185)@141 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg18_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg18_q <= $unsigned(redist41_sync_together232_aunroll_vunroll_x_in_i_valid_3_q);
        end
    end

    // valid_fanout_reg10(REG,177)@141 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg10_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg10_q <= $unsigned(redist41_sync_together232_aunroll_vunroll_x_in_i_valid_3_q);
        end
    end

    // valid_fanout_reg30(REG,197)@142 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg30_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg30_q <= $unsigned(redist42_sync_together232_aunroll_vunroll_x_in_i_valid_4_q);
        end
    end

    // i_llvm_fpga_push_f32_push40_conv2d1x145(BLACKBOX,131)@143
    // out out_feedback_out_40@20000000
    // out out_feedback_valid_out_40@20000000
    conv2d1x1_i_llvm_fpga_push_f32_push40_0 thei_llvm_fpga_push_f32_push40_conv2d1x145 (
        .in_c1_ene14_fanout_adaptor464(redist85_i_llvm_fpga_fanout_i1_c1_ene14_fanout_adaptor464_conv2d1x15_q_1_q),
        .in_data_in(i_llvm_fpga_fp_multadd_mult_add86_conv2d1x144_out_primWireOut),
        .in_feedback_stall_in_40(i_llvm_fpga_pop_f32_pop40_conv2d1x117_out_feedback_stall_out_40),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg30_q),
        .out_data_out(),
        .out_feedback_out_40(i_llvm_fpga_push_f32_push40_conv2d1x145_out_feedback_out_40),
        .out_feedback_valid_out_40(i_llvm_fpga_push_f32_push40_conv2d1x145_out_feedback_valid_out_40),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_f32_pop40_conv2d1x117(BLACKBOX,83)@142
    // out out_feedback_stall_out_40@20000000
    conv2d1x1_i_llvm_fpga_pop_f32_pop40_0 thei_llvm_fpga_pop_f32_pop40_conv2d1x117 (
        .in_data_in(redist16_sync_together232_aunroll_vunroll_x_in_c1_eni25_11_tpl_4_mem_q),
        .in_dir(redist82_i_llvm_fpga_fanout_i1_c1_ene2_fanout_adaptor_conv2d1x14_q_2_q),
        .in_feedback_in_40(i_llvm_fpga_push_f32_push40_conv2d1x145_out_feedback_out_40),
        .in_feedback_valid_in_40(i_llvm_fpga_push_f32_push40_conv2d1x145_out_feedback_valid_out_40),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg10_q),
        .out_data_out(i_llvm_fpga_pop_f32_pop40_conv2d1x117_out_data_out),
        .out_feedback_stall_out_40(i_llvm_fpga_pop_f32_pop40_conv2d1x117_out_feedback_stall_out_40),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_f32_push44_conv2d1x125(BLACKBOX,135)@142
    // out out_feedback_out_44@20000000
    // out out_feedback_valid_out_44@20000000
    conv2d1x1_i_llvm_fpga_push_f32_push44_0 thei_llvm_fpga_push_f32_push44_conv2d1x125 (
        .in_c1_ene14_fanout_adaptor463(redist87_i_llvm_fpga_fanout_i1_c1_ene14_fanout_adaptor463_conv2d1x16_q_2_q),
        .in_data_in(i_llvm_fpga_pop_f32_pop40_conv2d1x117_out_data_out),
        .in_feedback_stall_in_44(i_llvm_fpga_pop_f32_pop44_conv2d1x113_out_feedback_stall_out_44),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg18_q),
        .out_data_out(),
        .out_feedback_out_44(i_llvm_fpga_push_f32_push44_conv2d1x125_out_feedback_out_44),
        .out_feedback_valid_out_44(i_llvm_fpga_push_f32_push44_conv2d1x125_out_feedback_valid_out_44),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_f32_pop44_conv2d1x113(BLACKBOX,87)@141
    // out out_feedback_stall_out_44@20000000
    conv2d1x1_i_llvm_fpga_pop_f32_pop44_0 thei_llvm_fpga_pop_f32_pop44_conv2d1x113 (
        .in_data_in(redist10_sync_together232_aunroll_vunroll_x_in_c1_eni25_7_tpl_3_mem_q),
        .in_dir(redist81_i_llvm_fpga_fanout_i1_c1_ene2_fanout_adaptor_conv2d1x14_q_1_q),
        .in_feedback_in_44(i_llvm_fpga_push_f32_push44_conv2d1x125_out_feedback_out_44),
        .in_feedback_valid_in_44(i_llvm_fpga_push_f32_push44_conv2d1x125_out_feedback_valid_out_44),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg6_q),
        .out_data_out(i_llvm_fpga_pop_f32_pop44_conv2d1x113_out_data_out),
        .out_feedback_stall_out_44(i_llvm_fpga_pop_f32_pop44_conv2d1x113_out_feedback_stall_out_44),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_f32_push48_conv2d1x121(BLACKBOX,139)@141
    // out out_feedback_out_48@20000000
    // out out_feedback_valid_out_48@20000000
    conv2d1x1_i_llvm_fpga_push_f32_push48_0 thei_llvm_fpga_push_f32_push48_conv2d1x121 (
        .in_c1_ene14_fanout_adaptor463(redist86_i_llvm_fpga_fanout_i1_c1_ene14_fanout_adaptor463_conv2d1x16_q_1_q),
        .in_data_in(i_llvm_fpga_pop_f32_pop44_conv2d1x113_out_data_out),
        .in_feedback_stall_in_48(i_llvm_fpga_pop_f32_pop48_conv2d1x19_out_feedback_stall_out_48),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg14_q),
        .out_data_out(),
        .out_feedback_out_48(i_llvm_fpga_push_f32_push48_conv2d1x121_out_feedback_out_48),
        .out_feedback_valid_out_48(i_llvm_fpga_push_f32_push48_conv2d1x121_out_feedback_valid_out_48),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_f32_pop48_conv2d1x19(BLACKBOX,91)@140
    // out out_feedback_stall_out_48@20000000
    conv2d1x1_i_llvm_fpga_pop_f32_pop48_0 thei_llvm_fpga_pop_f32_pop48_conv2d1x19 (
        .in_data_in(redist3_sync_together232_aunroll_vunroll_x_in_c1_eni25_3_tpl_2_q),
        .in_dir(i_llvm_fpga_fanout_i1_c1_ene2_fanout_adaptor_conv2d1x14_q),
        .in_feedback_in_48(i_llvm_fpga_push_f32_push48_conv2d1x121_out_feedback_out_48),
        .in_feedback_valid_in_48(i_llvm_fpga_push_f32_push48_conv2d1x121_out_feedback_valid_out_48),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(i_llvm_fpga_pop_f32_pop48_conv2d1x19_out_data_out),
        .out_feedback_stall_out_48(i_llvm_fpga_pop_f32_pop48_conv2d1x19_out_feedback_stall_out_48),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_f32_push52_conv2d1x139(BLACKBOX,143)@140
    // out out_feedback_out_52@20000000
    // out out_feedback_valid_out_52@20000000
    conv2d1x1_i_llvm_fpga_push_f32_push52_0 thei_llvm_fpga_push_f32_push52_conv2d1x139 (
        .in_c1_ene14_fanout_adaptor463(i_llvm_fpga_fanout_i1_c1_ene14_fanout_adaptor463_conv2d1x16_q),
        .in_data_in(i_llvm_fpga_pop_f32_pop48_conv2d1x19_out_data_out),
        .in_feedback_stall_in_52(i_llvm_fpga_pop_f32_pop52_conv2d1x138_out_feedback_stall_out_52),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg26_q),
        .out_data_out(),
        .out_feedback_out_52(i_llvm_fpga_push_f32_push52_conv2d1x139_out_feedback_out_52),
        .out_feedback_valid_out_52(i_llvm_fpga_push_f32_push52_conv2d1x139_out_feedback_valid_out_52),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_f32_pop52_conv2d1x138(BLACKBOX,95)@139
    // out out_feedback_stall_out_52@20000000
    conv2d1x1_i_llvm_fpga_pop_f32_pop52_0 thei_llvm_fpga_pop_f32_pop52_conv2d1x138 (
        .in_data_in(redist29_sync_together232_aunroll_vunroll_x_in_c1_eni25_19_tpl_1_q),
        .in_dir(i_llvm_fpga_fanout_i1_c1_ene2_fanout_adaptor461_conv2d1x13_q),
        .in_feedback_in_52(i_llvm_fpga_push_f32_push52_conv2d1x139_out_feedback_out_52),
        .in_feedback_valid_in_52(i_llvm_fpga_push_f32_push52_conv2d1x139_out_feedback_valid_out_52),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg25_q),
        .out_data_out(i_llvm_fpga_pop_f32_pop52_conv2d1x138_out_data_out),
        .out_feedback_stall_out_52(i_llvm_fpga_pop_f32_pop52_conv2d1x138_out_feedback_stall_out_52),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist31_sync_together232_aunroll_vunroll_x_in_c1_eni25_20_tpl_1(DELAY,264)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist31_sync_together232_aunroll_vunroll_x_in_c1_eni25_20_tpl_1_q <= '0;
        end
        else
        begin
            redist31_sync_together232_aunroll_vunroll_x_in_c1_eni25_20_tpl_1_q <= $unsigned(in_c1_eni25_20_tpl);
        end
    end

    // redist23_sync_together232_aunroll_vunroll_x_in_c1_eni25_1_16_tpl_1(DELAY,256)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist23_sync_together232_aunroll_vunroll_x_in_c1_eni25_1_16_tpl_1_q <= '0;
        end
        else
        begin
            redist23_sync_together232_aunroll_vunroll_x_in_c1_eni25_1_16_tpl_1_q <= $unsigned(in_c1_eni25_1_16_tpl);
        end
    end

    // i_llvm_fpga_fp_multadd_mult_add85_conv2d1x140(BLACKBOX,77)@139
    // out out_primWireOut@143
    conv2d1x1_flt_i_sfc_logic_s_c1_in_for_bo0000xk5id06uq0cp0jv34qcz thei_llvm_fpga_fp_multadd_mult_add85_conv2d1x140 (
        .in_0(redist23_sync_together232_aunroll_vunroll_x_in_c1_eni25_1_16_tpl_1_q),
        .in_1(redist31_sync_together232_aunroll_vunroll_x_in_c1_eni25_20_tpl_1_q),
        .in_2(i_llvm_fpga_pop_f32_pop52_conv2d1x138_out_data_out),
        .out_primWireOut(i_llvm_fpga_fp_multadd_mult_add85_conv2d1x140_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg22(REG,189)@138 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg22_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg22_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg23(REG,190)@139 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg23_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg23_q <= $unsigned(redist39_sync_together232_aunroll_vunroll_x_in_i_valid_1_q);
        end
    end

    // valid_fanout_reg1(REG,168)@139 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg1_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg1_q <= $unsigned(redist39_sync_together232_aunroll_vunroll_x_in_i_valid_1_q);
        end
    end

    // valid_fanout_reg13(REG,180)@140 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg13_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg13_q <= $unsigned(redist40_sync_together232_aunroll_vunroll_x_in_i_valid_2_q);
        end
    end

    // valid_fanout_reg5(REG,172)@140 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg5_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg5_q <= $unsigned(redist40_sync_together232_aunroll_vunroll_x_in_i_valid_2_q);
        end
    end

    // valid_fanout_reg17(REG,184)@141 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg17_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg17_q <= $unsigned(redist41_sync_together232_aunroll_vunroll_x_in_i_valid_3_q);
        end
    end

    // valid_fanout_reg9(REG,176)@141 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg9_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg9_q <= $unsigned(redist41_sync_together232_aunroll_vunroll_x_in_i_valid_3_q);
        end
    end

    // valid_fanout_reg33(REG,200)@142 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg33_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg33_q <= $unsigned(redist42_sync_together232_aunroll_vunroll_x_in_i_valid_4_q);
        end
    end

    // i_llvm_fpga_push_f32_push41_conv2d1x149(BLACKBOX,132)@143
    // out out_feedback_out_41@20000000
    // out out_feedback_valid_out_41@20000000
    conv2d1x1_i_llvm_fpga_push_f32_push41_0 thei_llvm_fpga_push_f32_push41_conv2d1x149 (
        .in_c1_ene14_fanout_adaptor464(redist85_i_llvm_fpga_fanout_i1_c1_ene14_fanout_adaptor464_conv2d1x15_q_1_q),
        .in_data_in(i_llvm_fpga_fp_multadd_mult_add87_conv2d1x148_out_primWireOut),
        .in_feedback_stall_in_41(i_llvm_fpga_pop_f32_pop41_conv2d1x116_out_feedback_stall_out_41),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg33_q),
        .out_data_out(),
        .out_feedback_out_41(i_llvm_fpga_push_f32_push41_conv2d1x149_out_feedback_out_41),
        .out_feedback_valid_out_41(i_llvm_fpga_push_f32_push41_conv2d1x149_out_feedback_valid_out_41),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_f32_pop41_conv2d1x116(BLACKBOX,84)@142
    // out out_feedback_stall_out_41@20000000
    conv2d1x1_i_llvm_fpga_pop_f32_pop41_0 thei_llvm_fpga_pop_f32_pop41_conv2d1x116 (
        .in_data_in(redist15_sync_together232_aunroll_vunroll_x_in_c1_eni25_10_tpl_4_mem_q),
        .in_dir(redist82_i_llvm_fpga_fanout_i1_c1_ene2_fanout_adaptor_conv2d1x14_q_2_q),
        .in_feedback_in_41(i_llvm_fpga_push_f32_push41_conv2d1x149_out_feedback_out_41),
        .in_feedback_valid_in_41(i_llvm_fpga_push_f32_push41_conv2d1x149_out_feedback_valid_out_41),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg9_q),
        .out_data_out(i_llvm_fpga_pop_f32_pop41_conv2d1x116_out_data_out),
        .out_feedback_stall_out_41(i_llvm_fpga_pop_f32_pop41_conv2d1x116_out_feedback_stall_out_41),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_f32_push45_conv2d1x124(BLACKBOX,136)@142
    // out out_feedback_out_45@20000000
    // out out_feedback_valid_out_45@20000000
    conv2d1x1_i_llvm_fpga_push_f32_push45_0 thei_llvm_fpga_push_f32_push45_conv2d1x124 (
        .in_c1_ene14_fanout_adaptor463(redist87_i_llvm_fpga_fanout_i1_c1_ene14_fanout_adaptor463_conv2d1x16_q_2_q),
        .in_data_in(i_llvm_fpga_pop_f32_pop41_conv2d1x116_out_data_out),
        .in_feedback_stall_in_45(i_llvm_fpga_pop_f32_pop45_conv2d1x112_out_feedback_stall_out_45),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg17_q),
        .out_data_out(),
        .out_feedback_out_45(i_llvm_fpga_push_f32_push45_conv2d1x124_out_feedback_out_45),
        .out_feedback_valid_out_45(i_llvm_fpga_push_f32_push45_conv2d1x124_out_feedback_valid_out_45),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_f32_pop45_conv2d1x112(BLACKBOX,88)@141
    // out out_feedback_stall_out_45@20000000
    conv2d1x1_i_llvm_fpga_pop_f32_pop45_0 thei_llvm_fpga_pop_f32_pop45_conv2d1x112 (
        .in_data_in(redist9_sync_together232_aunroll_vunroll_x_in_c1_eni25_6_tpl_3_mem_q),
        .in_dir(redist81_i_llvm_fpga_fanout_i1_c1_ene2_fanout_adaptor_conv2d1x14_q_1_q),
        .in_feedback_in_45(i_llvm_fpga_push_f32_push45_conv2d1x124_out_feedback_out_45),
        .in_feedback_valid_in_45(i_llvm_fpga_push_f32_push45_conv2d1x124_out_feedback_valid_out_45),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_data_out(i_llvm_fpga_pop_f32_pop45_conv2d1x112_out_data_out),
        .out_feedback_stall_out_45(i_llvm_fpga_pop_f32_pop45_conv2d1x112_out_feedback_stall_out_45),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_f32_push49_conv2d1x120(BLACKBOX,140)@141
    // out out_feedback_out_49@20000000
    // out out_feedback_valid_out_49@20000000
    conv2d1x1_i_llvm_fpga_push_f32_push49_0 thei_llvm_fpga_push_f32_push49_conv2d1x120 (
        .in_c1_ene14_fanout_adaptor463(redist86_i_llvm_fpga_fanout_i1_c1_ene14_fanout_adaptor463_conv2d1x16_q_1_q),
        .in_data_in(i_llvm_fpga_pop_f32_pop45_conv2d1x112_out_data_out),
        .in_feedback_stall_in_49(i_llvm_fpga_pop_f32_pop49_conv2d1x18_out_feedback_stall_out_49),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg13_q),
        .out_data_out(),
        .out_feedback_out_49(i_llvm_fpga_push_f32_push49_conv2d1x120_out_feedback_out_49),
        .out_feedback_valid_out_49(i_llvm_fpga_push_f32_push49_conv2d1x120_out_feedback_valid_out_49),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_f32_pop49_conv2d1x18(BLACKBOX,92)@140
    // out out_feedback_stall_out_49@20000000
    conv2d1x1_i_llvm_fpga_pop_f32_pop49_0 thei_llvm_fpga_pop_f32_pop49_conv2d1x18 (
        .in_data_in(redist0_sync_together232_aunroll_vunroll_x_in_c1_eni25_1_tpl_2_q),
        .in_dir(i_llvm_fpga_fanout_i1_c1_ene2_fanout_adaptor_conv2d1x14_q),
        .in_feedback_in_49(i_llvm_fpga_push_f32_push49_conv2d1x120_out_feedback_out_49),
        .in_feedback_valid_in_49(i_llvm_fpga_push_f32_push49_conv2d1x120_out_feedback_valid_out_49),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_data_out(i_llvm_fpga_pop_f32_pop49_conv2d1x18_out_data_out),
        .out_feedback_stall_out_49(i_llvm_fpga_pop_f32_pop49_conv2d1x18_out_feedback_stall_out_49),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_f32_push53_conv2d1x135(BLACKBOX,144)@140
    // out out_feedback_out_53@20000000
    // out out_feedback_valid_out_53@20000000
    conv2d1x1_i_llvm_fpga_push_f32_push53_0 thei_llvm_fpga_push_f32_push53_conv2d1x135 (
        .in_c1_ene14_fanout_adaptor463(i_llvm_fpga_fanout_i1_c1_ene14_fanout_adaptor463_conv2d1x16_q),
        .in_data_in(i_llvm_fpga_pop_f32_pop49_conv2d1x18_out_data_out),
        .in_feedback_stall_in_53(i_llvm_fpga_pop_f32_pop53_conv2d1x134_out_feedback_stall_out_53),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg23_q),
        .out_data_out(),
        .out_feedback_out_53(i_llvm_fpga_push_f32_push53_conv2d1x135_out_feedback_out_53),
        .out_feedback_valid_out_53(i_llvm_fpga_push_f32_push53_conv2d1x135_out_feedback_valid_out_53),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_f32_pop53_conv2d1x134(BLACKBOX,96)@139
    // out out_feedback_stall_out_53@20000000
    conv2d1x1_i_llvm_fpga_pop_f32_pop53_0 thei_llvm_fpga_pop_f32_pop53_conv2d1x134 (
        .in_data_in(redist26_sync_together232_aunroll_vunroll_x_in_c1_eni25_17_tpl_1_q),
        .in_dir(i_llvm_fpga_fanout_i1_c1_ene2_fanout_adaptor461_conv2d1x13_q),
        .in_feedback_in_53(i_llvm_fpga_push_f32_push53_conv2d1x135_out_feedback_out_53),
        .in_feedback_valid_in_53(i_llvm_fpga_push_f32_push53_conv2d1x135_out_feedback_valid_out_53),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg22_q),
        .out_data_out(i_llvm_fpga_pop_f32_pop53_conv2d1x134_out_data_out),
        .out_feedback_stall_out_53(i_llvm_fpga_pop_f32_pop53_conv2d1x134_out_feedback_stall_out_53),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist22_sync_together232_aunroll_vunroll_x_in_c1_eni25_0_16_tpl_1(DELAY,255)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist22_sync_together232_aunroll_vunroll_x_in_c1_eni25_0_16_tpl_1_q <= '0;
        end
        else
        begin
            redist22_sync_together232_aunroll_vunroll_x_in_c1_eni25_0_16_tpl_1_q <= $unsigned(in_c1_eni25_0_16_tpl);
        end
    end

    // redist28_sync_together232_aunroll_vunroll_x_in_c1_eni25_18_tpl_1(DELAY,261)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist28_sync_together232_aunroll_vunroll_x_in_c1_eni25_18_tpl_1_q <= '0;
        end
        else
        begin
            redist28_sync_together232_aunroll_vunroll_x_in_c1_eni25_18_tpl_1_q <= $unsigned(in_c1_eni25_18_tpl);
        end
    end

    // i_llvm_fpga_fp_multadd_mult_add_conv2d1x136(BLACKBOX,80)@139
    // out out_primWireOut@143
    conv2d1x1_flt_i_sfc_logic_s_c1_in_for_bo0000xk5id06uq0cp0jv34qcz thei_llvm_fpga_fp_multadd_mult_add_conv2d1x136 (
        .in_0(redist28_sync_together232_aunroll_vunroll_x_in_c1_eni25_18_tpl_1_q),
        .in_1(redist22_sync_together232_aunroll_vunroll_x_in_c1_eni25_0_16_tpl_1_q),
        .in_2(i_llvm_fpga_pop_f32_pop53_conv2d1x134_out_data_out),
        .out_primWireOut(i_llvm_fpga_fp_multadd_mult_add_conv2d1x136_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // redist80_i_llvm_fpga_pop_f32_pop38_conv2d1x119_out_data_out_1(DELAY,313)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist80_i_llvm_fpga_pop_f32_pop38_conv2d1x119_out_data_out_1_q <= '0;
        end
        else
        begin
            redist80_i_llvm_fpga_pop_f32_pop38_conv2d1x119_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_f32_pop38_conv2d1x119_out_data_out);
        end
    end

    // redist79_i_llvm_fpga_pop_f32_pop39_conv2d1x118_out_data_out_1(DELAY,312)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist79_i_llvm_fpga_pop_f32_pop39_conv2d1x118_out_data_out_1_q <= '0;
        end
        else
        begin
            redist79_i_llvm_fpga_pop_f32_pop39_conv2d1x118_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_f32_pop39_conv2d1x118_out_data_out);
        end
    end

    // redist78_i_llvm_fpga_pop_f32_pop40_conv2d1x117_out_data_out_1(DELAY,311)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist78_i_llvm_fpga_pop_f32_pop40_conv2d1x117_out_data_out_1_q <= '0;
        end
        else
        begin
            redist78_i_llvm_fpga_pop_f32_pop40_conv2d1x117_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_f32_pop40_conv2d1x117_out_data_out);
        end
    end

    // redist77_i_llvm_fpga_pop_f32_pop41_conv2d1x116_out_data_out_1(DELAY,310)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist77_i_llvm_fpga_pop_f32_pop41_conv2d1x116_out_data_out_1_q <= '0;
        end
        else
        begin
            redist77_i_llvm_fpga_pop_f32_pop41_conv2d1x116_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_f32_pop41_conv2d1x116_out_data_out);
        end
    end

    // redist76_i_llvm_fpga_pop_f32_pop42_conv2d1x115_out_data_out_2(DELAY,309)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist76_i_llvm_fpga_pop_f32_pop42_conv2d1x115_out_data_out_2_delay_0 <= '0;
            redist76_i_llvm_fpga_pop_f32_pop42_conv2d1x115_out_data_out_2_q <= '0;
        end
        else
        begin
            redist76_i_llvm_fpga_pop_f32_pop42_conv2d1x115_out_data_out_2_delay_0 <= $unsigned(i_llvm_fpga_pop_f32_pop42_conv2d1x115_out_data_out);
            redist76_i_llvm_fpga_pop_f32_pop42_conv2d1x115_out_data_out_2_q <= redist76_i_llvm_fpga_pop_f32_pop42_conv2d1x115_out_data_out_2_delay_0;
        end
    end

    // redist75_i_llvm_fpga_pop_f32_pop43_conv2d1x114_out_data_out_2(DELAY,308)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist75_i_llvm_fpga_pop_f32_pop43_conv2d1x114_out_data_out_2_delay_0 <= '0;
            redist75_i_llvm_fpga_pop_f32_pop43_conv2d1x114_out_data_out_2_q <= '0;
        end
        else
        begin
            redist75_i_llvm_fpga_pop_f32_pop43_conv2d1x114_out_data_out_2_delay_0 <= $unsigned(i_llvm_fpga_pop_f32_pop43_conv2d1x114_out_data_out);
            redist75_i_llvm_fpga_pop_f32_pop43_conv2d1x114_out_data_out_2_q <= redist75_i_llvm_fpga_pop_f32_pop43_conv2d1x114_out_data_out_2_delay_0;
        end
    end

    // redist74_i_llvm_fpga_pop_f32_pop44_conv2d1x113_out_data_out_2(DELAY,307)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist74_i_llvm_fpga_pop_f32_pop44_conv2d1x113_out_data_out_2_delay_0 <= '0;
            redist74_i_llvm_fpga_pop_f32_pop44_conv2d1x113_out_data_out_2_q <= '0;
        end
        else
        begin
            redist74_i_llvm_fpga_pop_f32_pop44_conv2d1x113_out_data_out_2_delay_0 <= $unsigned(i_llvm_fpga_pop_f32_pop44_conv2d1x113_out_data_out);
            redist74_i_llvm_fpga_pop_f32_pop44_conv2d1x113_out_data_out_2_q <= redist74_i_llvm_fpga_pop_f32_pop44_conv2d1x113_out_data_out_2_delay_0;
        end
    end

    // redist73_i_llvm_fpga_pop_f32_pop45_conv2d1x112_out_data_out_2(DELAY,306)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist73_i_llvm_fpga_pop_f32_pop45_conv2d1x112_out_data_out_2_delay_0 <= '0;
            redist73_i_llvm_fpga_pop_f32_pop45_conv2d1x112_out_data_out_2_q <= '0;
        end
        else
        begin
            redist73_i_llvm_fpga_pop_f32_pop45_conv2d1x112_out_data_out_2_delay_0 <= $unsigned(i_llvm_fpga_pop_f32_pop45_conv2d1x112_out_data_out);
            redist73_i_llvm_fpga_pop_f32_pop45_conv2d1x112_out_data_out_2_q <= redist73_i_llvm_fpga_pop_f32_pop45_conv2d1x112_out_data_out_2_delay_0;
        end
    end

    // redist72_i_llvm_fpga_pop_f32_pop46_conv2d1x111_out_data_out_3(DELAY,305)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist72_i_llvm_fpga_pop_f32_pop46_conv2d1x111_out_data_out_3_delay_0 <= '0;
            redist72_i_llvm_fpga_pop_f32_pop46_conv2d1x111_out_data_out_3_q <= '0;
        end
        else
        begin
            redist72_i_llvm_fpga_pop_f32_pop46_conv2d1x111_out_data_out_3_delay_0 <= $unsigned(i_llvm_fpga_pop_f32_pop46_conv2d1x111_out_data_out);
            redist72_i_llvm_fpga_pop_f32_pop46_conv2d1x111_out_data_out_3_q <= redist72_i_llvm_fpga_pop_f32_pop46_conv2d1x111_out_data_out_3_delay_0;
        end
    end

    // redist72_i_llvm_fpga_pop_f32_pop46_conv2d1x111_out_data_out_3_outputreg0(DELAY,396)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist72_i_llvm_fpga_pop_f32_pop46_conv2d1x111_out_data_out_3_outputreg0_q <= '0;
        end
        else
        begin
            redist72_i_llvm_fpga_pop_f32_pop46_conv2d1x111_out_data_out_3_outputreg0_q <= $unsigned(redist72_i_llvm_fpga_pop_f32_pop46_conv2d1x111_out_data_out_3_q);
        end
    end

    // redist71_i_llvm_fpga_pop_f32_pop47_conv2d1x110_out_data_out_3(DELAY,304)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist71_i_llvm_fpga_pop_f32_pop47_conv2d1x110_out_data_out_3_delay_0 <= '0;
            redist71_i_llvm_fpga_pop_f32_pop47_conv2d1x110_out_data_out_3_q <= '0;
        end
        else
        begin
            redist71_i_llvm_fpga_pop_f32_pop47_conv2d1x110_out_data_out_3_delay_0 <= $unsigned(i_llvm_fpga_pop_f32_pop47_conv2d1x110_out_data_out);
            redist71_i_llvm_fpga_pop_f32_pop47_conv2d1x110_out_data_out_3_q <= redist71_i_llvm_fpga_pop_f32_pop47_conv2d1x110_out_data_out_3_delay_0;
        end
    end

    // redist71_i_llvm_fpga_pop_f32_pop47_conv2d1x110_out_data_out_3_outputreg0(DELAY,395)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist71_i_llvm_fpga_pop_f32_pop47_conv2d1x110_out_data_out_3_outputreg0_q <= '0;
        end
        else
        begin
            redist71_i_llvm_fpga_pop_f32_pop47_conv2d1x110_out_data_out_3_outputreg0_q <= $unsigned(redist71_i_llvm_fpga_pop_f32_pop47_conv2d1x110_out_data_out_3_q);
        end
    end

    // redist70_i_llvm_fpga_pop_f32_pop48_conv2d1x19_out_data_out_3(DELAY,303)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist70_i_llvm_fpga_pop_f32_pop48_conv2d1x19_out_data_out_3_delay_0 <= '0;
            redist70_i_llvm_fpga_pop_f32_pop48_conv2d1x19_out_data_out_3_q <= '0;
        end
        else
        begin
            redist70_i_llvm_fpga_pop_f32_pop48_conv2d1x19_out_data_out_3_delay_0 <= $unsigned(i_llvm_fpga_pop_f32_pop48_conv2d1x19_out_data_out);
            redist70_i_llvm_fpga_pop_f32_pop48_conv2d1x19_out_data_out_3_q <= redist70_i_llvm_fpga_pop_f32_pop48_conv2d1x19_out_data_out_3_delay_0;
        end
    end

    // redist70_i_llvm_fpga_pop_f32_pop48_conv2d1x19_out_data_out_3_outputreg0(DELAY,394)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist70_i_llvm_fpga_pop_f32_pop48_conv2d1x19_out_data_out_3_outputreg0_q <= '0;
        end
        else
        begin
            redist70_i_llvm_fpga_pop_f32_pop48_conv2d1x19_out_data_out_3_outputreg0_q <= $unsigned(redist70_i_llvm_fpga_pop_f32_pop48_conv2d1x19_out_data_out_3_q);
        end
    end

    // redist69_i_llvm_fpga_pop_f32_pop49_conv2d1x18_out_data_out_3(DELAY,302)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist69_i_llvm_fpga_pop_f32_pop49_conv2d1x18_out_data_out_3_delay_0 <= '0;
            redist69_i_llvm_fpga_pop_f32_pop49_conv2d1x18_out_data_out_3_q <= '0;
        end
        else
        begin
            redist69_i_llvm_fpga_pop_f32_pop49_conv2d1x18_out_data_out_3_delay_0 <= $unsigned(i_llvm_fpga_pop_f32_pop49_conv2d1x18_out_data_out);
            redist69_i_llvm_fpga_pop_f32_pop49_conv2d1x18_out_data_out_3_q <= redist69_i_llvm_fpga_pop_f32_pop49_conv2d1x18_out_data_out_3_delay_0;
        end
    end

    // redist69_i_llvm_fpga_pop_f32_pop49_conv2d1x18_out_data_out_3_outputreg0(DELAY,393)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist69_i_llvm_fpga_pop_f32_pop49_conv2d1x18_out_data_out_3_outputreg0_q <= '0;
        end
        else
        begin
            redist69_i_llvm_fpga_pop_f32_pop49_conv2d1x18_out_data_out_3_outputreg0_q <= $unsigned(redist69_i_llvm_fpga_pop_f32_pop49_conv2d1x18_out_data_out_3_q);
        end
    end

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // sync_out_aunroll_x(GPOUT,165)@143
    assign out_c1_exi32_0_tpl = GND_q;
    assign out_c1_exi32_1_tpl = redist69_i_llvm_fpga_pop_f32_pop49_conv2d1x18_out_data_out_3_outputreg0_q;
    assign out_c1_exi32_2_tpl = redist70_i_llvm_fpga_pop_f32_pop48_conv2d1x19_out_data_out_3_outputreg0_q;
    assign out_c1_exi32_3_tpl = redist71_i_llvm_fpga_pop_f32_pop47_conv2d1x110_out_data_out_3_outputreg0_q;
    assign out_c1_exi32_4_tpl = redist72_i_llvm_fpga_pop_f32_pop46_conv2d1x111_out_data_out_3_outputreg0_q;
    assign out_c1_exi32_5_tpl = redist73_i_llvm_fpga_pop_f32_pop45_conv2d1x112_out_data_out_2_q;
    assign out_c1_exi32_6_tpl = redist74_i_llvm_fpga_pop_f32_pop44_conv2d1x113_out_data_out_2_q;
    assign out_c1_exi32_7_tpl = redist75_i_llvm_fpga_pop_f32_pop43_conv2d1x114_out_data_out_2_q;
    assign out_c1_exi32_8_tpl = redist76_i_llvm_fpga_pop_f32_pop42_conv2d1x115_out_data_out_2_q;
    assign out_c1_exi32_9_tpl = redist77_i_llvm_fpga_pop_f32_pop41_conv2d1x116_out_data_out_1_q;
    assign out_c1_exi32_10_tpl = redist78_i_llvm_fpga_pop_f32_pop40_conv2d1x117_out_data_out_1_q;
    assign out_c1_exi32_11_tpl = redist79_i_llvm_fpga_pop_f32_pop39_conv2d1x118_out_data_out_1_q;
    assign out_c1_exi32_12_tpl = redist80_i_llvm_fpga_pop_f32_pop38_conv2d1x119_out_data_out_1_q;
    assign out_c1_exi32_13_tpl = i_llvm_fpga_fp_multadd_mult_add_conv2d1x136_out_primWireOut;
    assign out_c1_exi32_14_tpl = i_llvm_fpga_fp_multadd_mult_add85_conv2d1x140_out_primWireOut;
    assign out_c1_exi32_15_tpl = i_llvm_fpga_fp_multadd_mult_add86_conv2d1x144_out_primWireOut;
    assign out_c1_exi32_16_tpl = i_llvm_fpga_fp_multadd_mult_add87_conv2d1x148_out_primWireOut;
    assign out_c1_exi32_17_tpl = i_select24_conv2d1x152_q;
    assign out_c1_exi32_18_tpl = i_select27_conv2d1x155_q;
    assign out_c1_exi32_19_tpl = i_select30_conv2d1x158_q;
    assign out_c1_exi32_20_tpl = i_select33_conv2d1x161_q;
    assign out_c1_exi32_21_tpl = i_select36_conv2d1x164_q;
    assign out_c1_exi32_22_tpl = i_select39_conv2d1x167_q;
    assign out_c1_exi32_23_tpl = i_select42_conv2d1x170_q;
    assign out_c1_exi32_24_tpl = i_select45_conv2d1x173_q;
    assign out_c1_exi32_25_tpl = i_select48_conv2d1x176_q;
    assign out_c1_exi32_26_tpl = i_select51_conv2d1x179_q;
    assign out_c1_exi32_27_tpl = i_select54_conv2d1x182_q;
    assign out_c1_exi32_28_tpl = i_select57_conv2d1x185_q;
    assign out_c1_exi32_29_tpl = i_select60_conv2d1x188_q;
    assign out_c1_exi32_30_tpl = i_select63_conv2d1x191_q;
    assign out_c1_exi32_31_tpl = i_select66_conv2d1x194_q;
    assign out_c1_exi32_32_tpl = i_select69_conv2d1x197_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_conv2d1x16 = GND_q;

endmodule
