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

// SystemVerilog created from conv2d1x1_i_sfc_logic_s_c0_in_for_cond110000nter43359_conv2d1x10
// SystemVerilog created on Tue May 23 20:43:36 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2d1x1_i_sfc_logic_s_c0_in_for_cond110000nter43359_conv2d1x10 (
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going21_conv2d1x16_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going21_conv2d1x16_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    output wire [0:0] out_c0_exi75_0_tpl,
    output wire [0:0] out_c0_exi75_1_tpl,
    output wire [0:0] out_c0_exi75_2_tpl,
    output wire [0:0] out_c0_exi75_3_tpl,
    output wire [0:0] out_c0_exi75_4_tpl,
    output wire [0:0] out_c0_exi75_5_tpl,
    output wire [0:0] out_c0_exi75_6_tpl,
    output wire [0:0] out_c0_exi75_7_tpl,
    output wire [31:0] out_c0_exi75_8_tpl,
    output wire [31:0] out_c0_exi75_9_tpl,
    output wire [31:0] out_c0_exi75_10_tpl,
    output wire [31:0] out_c0_exi75_11_tpl,
    output wire [31:0] out_c0_exi75_12_tpl,
    output wire [31:0] out_c0_exi75_13_tpl,
    output wire [31:0] out_c0_exi75_14_tpl,
    output wire [31:0] out_c0_exi75_15_tpl,
    output wire [31:0] out_c0_exi75_16_tpl,
    output wire [31:0] out_c0_exi75_17_tpl,
    output wire [31:0] out_c0_exi75_18_tpl,
    output wire [31:0] out_c0_exi75_19_tpl,
    output wire [31:0] out_c0_exi75_20_tpl,
    output wire [31:0] out_c0_exi75_21_tpl,
    output wire [31:0] out_c0_exi75_22_tpl,
    output wire [31:0] out_c0_exi75_23_tpl,
    output wire [31:0] out_c0_exi75_24_tpl,
    output wire [31:0] out_c0_exi75_25_tpl,
    output wire [0:0] out_c0_exi75_26_tpl,
    output wire [0:0] out_c0_exi75_27_tpl,
    output wire [31:0] out_c0_exi75_28_tpl,
    output wire [31:0] out_c0_exi75_29_tpl,
    output wire [31:0] out_c0_exi75_30_tpl,
    output wire [0:0] out_c0_exi75_31_tpl,
    output wire [0:0] out_c0_exi75_32_tpl,
    output wire [31:0] out_c0_exi75_33_tpl,
    output wire [31:0] out_c0_exi75_34_tpl,
    output wire [31:0] out_c0_exi75_35_tpl,
    output wire [31:0] out_c0_exi75_36_tpl,
    output wire [31:0] out_c0_exi75_37_tpl,
    output wire [31:0] out_c0_exi75_38_tpl,
    output wire [31:0] out_c0_exi75_39_tpl,
    output wire [31:0] out_c0_exi75_40_tpl,
    output wire [31:0] out_c0_exi75_41_tpl,
    output wire [31:0] out_c0_exi75_42_tpl,
    output wire [31:0] out_c0_exi75_43_tpl,
    output wire [31:0] out_c0_exi75_44_tpl,
    output wire [31:0] out_c0_exi75_45_tpl,
    output wire [31:0] out_c0_exi75_46_tpl,
    output wire [31:0] out_c0_exi75_47_tpl,
    output wire [31:0] out_c0_exi75_48_tpl,
    output wire [0:0] out_c0_exi75_49_tpl,
    output wire [31:0] out_c0_exi75_50_tpl,
    output wire [0:0] out_c0_exi75_51_tpl,
    output wire [0:0] out_c0_exi75_52_tpl,
    output wire [0:0] out_c0_exi75_53_tpl,
    output wire [32:0] out_c0_exi75_54_tpl,
    output wire [31:0] out_c0_exi75_55_tpl,
    output wire [31:0] out_c0_exi75_56_tpl,
    output wire [31:0] out_c0_exi75_57_tpl,
    output wire [0:0] out_c0_exi75_58_tpl,
    output wire [0:0] out_c0_exi75_59_tpl,
    output wire [31:0] out_c0_exi75_60_tpl,
    output wire [31:0] out_c0_exi75_61_tpl,
    output wire [31:0] out_c0_exi75_62_tpl,
    output wire [31:0] out_c0_exi75_63_tpl,
    output wire [31:0] out_c0_exi75_64_tpl,
    output wire [31:0] out_c0_exi75_65_tpl,
    output wire [31:0] out_c0_exi75_66_tpl,
    output wire [31:0] out_c0_exi75_67_tpl,
    output wire [31:0] out_c0_exi75_68_tpl,
    output wire [31:0] out_c0_exi75_69_tpl,
    output wire [31:0] out_c0_exi75_70_tpl,
    output wire [31:0] out_c0_exi75_71_tpl,
    output wire [31:0] out_c0_exi75_72_tpl,
    output wire [31:0] out_c0_exi75_73_tpl,
    output wire [31:0] out_c0_exi75_74_tpl,
    output wire [31:0] out_c0_exi75_75_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_conv2d1x15,
    input wire [0:0] in_c0_eni44_0_tpl,
    input wire [0:0] in_c0_eni44_1_tpl,
    input wire [0:0] in_c0_eni44_2_tpl,
    input wire [32:0] in_c0_eni44_3_tpl,
    input wire [0:0] in_c0_eni44_4_tpl,
    input wire [0:0] in_c0_eni44_5_tpl,
    input wire [31:0] in_c0_eni44_6_tpl,
    input wire [31:0] in_c0_eni44_7_tpl,
    input wire [31:0] in_c0_eni44_8_tpl,
    input wire [31:0] in_c0_eni44_9_tpl,
    input wire [31:0] in_c0_eni44_10_tpl,
    input wire [31:0] in_c0_eni44_11_tpl,
    input wire [31:0] in_c0_eni44_12_tpl,
    input wire [31:0] in_c0_eni44_13_tpl,
    input wire [31:0] in_c0_eni44_14_tpl,
    input wire [31:0] in_c0_eni44_15_tpl,
    input wire [31:0] in_c0_eni44_16_tpl,
    input wire [31:0] in_c0_eni44_17_tpl,
    input wire [31:0] in_c0_eni44_18_tpl,
    input wire [31:0] in_c0_eni44_19_tpl,
    input wire [31:0] in_c0_eni44_20_tpl,
    input wire [31:0] in_c0_eni44_21_tpl,
    input wire [31:0] in_c0_eni44_22_tpl,
    input wire [0:0] in_c0_eni44_23_tpl,
    input wire [0:0] in_c0_eni44_24_tpl,
    input wire [31:0] in_c0_eni44_25_tpl,
    input wire [31:0] in_c0_eni44_26_tpl,
    input wire [31:0] in_c0_eni44_27_tpl,
    input wire [0:0] in_c0_eni44_28_tpl,
    input wire [31:0] in_c0_eni44_29_tpl,
    input wire [31:0] in_c0_eni44_30_tpl,
    input wire [31:0] in_c0_eni44_31_tpl,
    input wire [31:0] in_c0_eni44_32_tpl,
    input wire [31:0] in_c0_eni44_33_tpl,
    input wire [31:0] in_c0_eni44_34_tpl,
    input wire [31:0] in_c0_eni44_35_tpl,
    input wire [31:0] in_c0_eni44_36_tpl,
    input wire [31:0] in_c0_eni44_37_tpl,
    input wire [31:0] in_c0_eni44_38_tpl,
    input wire [31:0] in_c0_eni44_39_tpl,
    input wire [31:0] in_c0_eni44_40_tpl,
    input wire [31:0] in_c0_eni44_41_tpl,
    input wire [31:0] in_c0_eni44_42_tpl,
    input wire [31:0] in_c0_eni44_43_tpl,
    input wire [31:0] in_c0_eni44_44_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] c_i32_0134_q;
    wire [31:0] c_i32_1135_q;
    wire [32:0] c_i33_1133_q;
    wire [0:0] i_forked59_and_conv2d1x15_q;
    wire [33:0] i_fpga_indvars_iv_next298_conv2d1x121_a;
    wire [33:0] i_fpga_indvars_iv_next298_conv2d1x121_b;
    logic [33:0] i_fpga_indvars_iv_next298_conv2d1x121_o;
    wire [33:0] i_fpga_indvars_iv_next298_conv2d1x121_q;
    wire [32:0] i_inc102_conv2d1x124_a;
    wire [32:0] i_inc102_conv2d1x124_b;
    logic [32:0] i_inc102_conv2d1x124_o;
    wire [32:0] i_inc102_conv2d1x124_q;
    (* dont_merge *) reg [0:0] i_llvm_fpga_fanout_i1_c0_ene2435_fanout_adaptor852_conv2d1x12_q;
    (* dont_merge *) reg [0:0] i_llvm_fpga_fanout_i1_c0_ene2435_fanout_adaptor_conv2d1x13_q;
    (* dont_merge *) reg [0:0] i_llvm_fpga_fanout_i1_fanout_adaptor853_conv2d1x113_q;
    (* dont_merge *) reg [0:0] i_llvm_fpga_fanout_i1_fanout_adaptor854_conv2d1x112_q;
    wire [0:0] i_llvm_fpga_pipeline_keep_going21_conv2d1x16_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going21_conv2d1x16_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going21_conv2d1x16_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going21_conv2d1x16_out_pipeline_valid_out;
    wire [31:0] i_llvm_fpga_pop_f32_lm96111_pop73_conv2d1x164_out_data_out;
    wire [0:0] i_llvm_fpga_pop_f32_lm96111_pop73_conv2d1x164_out_feedback_stall_out_73;
    wire [31:0] i_llvm_fpga_pop_f32_pop53_conv2d1x128_out_data_out;
    wire [0:0] i_llvm_fpga_pop_f32_pop53_conv2d1x128_out_feedback_stall_out_53;
    wire [31:0] i_llvm_fpga_pop_f32_spec_select32364_pop54_conv2d1x130_out_data_out;
    wire [0:0] i_llvm_fpga_pop_f32_spec_select32364_pop54_conv2d1x130_out_feedback_stall_out_54;
    wire [31:0] i_llvm_fpga_pop_f32_spec_select32467_pop55_conv2d1x132_out_data_out;
    wire [0:0] i_llvm_fpga_pop_f32_spec_select32467_pop55_conv2d1x132_out_feedback_stall_out_55;
    wire [31:0] i_llvm_fpga_pop_f32_spec_select32570_pop56_conv2d1x134_out_data_out;
    wire [0:0] i_llvm_fpga_pop_f32_spec_select32570_pop56_conv2d1x134_out_feedback_stall_out_56;
    wire [31:0] i_llvm_fpga_pop_f32_spec_select32673_pop57_conv2d1x136_out_data_out;
    wire [0:0] i_llvm_fpga_pop_f32_spec_select32673_pop57_conv2d1x136_out_feedback_stall_out_57;
    wire [31:0] i_llvm_fpga_pop_f32_spec_select32776_pop58_conv2d1x138_out_data_out;
    wire [0:0] i_llvm_fpga_pop_f32_spec_select32776_pop58_conv2d1x138_out_feedback_stall_out_58;
    wire [31:0] i_llvm_fpga_pop_f32_spec_select32879_pop59_conv2d1x140_out_data_out;
    wire [0:0] i_llvm_fpga_pop_f32_spec_select32879_pop59_conv2d1x140_out_feedback_stall_out_59;
    wire [31:0] i_llvm_fpga_pop_f32_spec_select32982_pop60_conv2d1x142_out_data_out;
    wire [0:0] i_llvm_fpga_pop_f32_spec_select32982_pop60_conv2d1x142_out_feedback_stall_out_60;
    wire [31:0] i_llvm_fpga_pop_f32_spec_select33085_pop61_conv2d1x144_out_data_out;
    wire [0:0] i_llvm_fpga_pop_f32_spec_select33085_pop61_conv2d1x144_out_feedback_stall_out_61;
    wire [31:0] i_llvm_fpga_pop_f32_spec_select33188_pop62_conv2d1x146_out_data_out;
    wire [0:0] i_llvm_fpga_pop_f32_spec_select33188_pop62_conv2d1x146_out_feedback_stall_out_62;
    wire [31:0] i_llvm_fpga_pop_f32_spec_select33291_pop63_conv2d1x148_out_data_out;
    wire [0:0] i_llvm_fpga_pop_f32_spec_select33291_pop63_conv2d1x148_out_feedback_stall_out_63;
    wire [31:0] i_llvm_fpga_pop_f32_spec_select33394_pop64_conv2d1x150_out_data_out;
    wire [0:0] i_llvm_fpga_pop_f32_spec_select33394_pop64_conv2d1x150_out_feedback_stall_out_64;
    wire [31:0] i_llvm_fpga_pop_f32_spec_select33497_pop65_conv2d1x152_out_data_out;
    wire [0:0] i_llvm_fpga_pop_f32_spec_select33497_pop65_conv2d1x152_out_feedback_stall_out_65;
    wire [31:0] i_llvm_fpga_pop_f32_spec_select335100_pop66_conv2d1x154_out_data_out;
    wire [0:0] i_llvm_fpga_pop_f32_spec_select335100_pop66_conv2d1x154_out_feedback_stall_out_66;
    wire [31:0] i_llvm_fpga_pop_f32_spec_select336103_pop67_conv2d1x156_out_data_out;
    wire [0:0] i_llvm_fpga_pop_f32_spec_select336103_pop67_conv2d1x156_out_feedback_stall_out_67;
    wire [31:0] i_llvm_fpga_pop_f32_spec_select61_pop52_conv2d1x126_out_data_out;
    wire [0:0] i_llvm_fpga_pop_f32_spec_select61_pop52_conv2d1x126_out_feedback_stall_out_52;
    wire [0:0] i_llvm_fpga_pop_i1_forked17105_pop68_conv2d1x14_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_forked17105_pop68_conv2d1x14_out_feedback_stall_out_68;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp24117_pop77_conv2d1x170_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp24117_pop77_conv2d1x170_out_feedback_stall_out_77;
    wire [0:0] i_llvm_fpga_pop_i1_phi_decision102_xor109_pop72_conv2d1x110_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_phi_decision102_xor109_pop72_conv2d1x110_out_feedback_stall_out_72;
    wire [0:0] i_llvm_fpga_pop_i1_pop70_conv2d1x160_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_pop70_conv2d1x160_out_feedback_stall_out_70;
    wire [0:0] i_llvm_fpga_pop_i1_pop71_conv2d1x162_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_pop71_conv2d1x162_out_feedback_stall_out_71;
    wire [0:0] i_llvm_fpga_pop_i1_pop76_conv2d1x116_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_pop76_conv2d1x116_out_feedback_stall_out_76;
    wire [31:0] i_llvm_fpga_pop_i32_ij_067_pop51_conv2d1x123_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_ij_067_pop51_conv2d1x123_out_feedback_stall_out_51;
    wire [31:0] i_llvm_fpga_pop_i32_mul107_pop69_conv2d1x158_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_mul107_pop69_conv2d1x158_out_feedback_stall_out_69;
    wire [31:0] i_llvm_fpga_pop_i32_mul21113_pop74_conv2d1x166_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_mul21113_pop74_conv2d1x166_out_feedback_stall_out_74;
    wire [31:0] i_llvm_fpga_pop_i32_mul97115_pop75_conv2d1x168_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_mul97115_pop75_conv2d1x168_out_feedback_stall_out_75;
    wire [32:0] i_llvm_fpga_pop_i33_fpga_indvars_iv297_pop47_conv2d1x17_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i33_fpga_indvars_iv297_pop47_conv2d1x17_out_feedback_stall_out_47;
    wire [31:0] i_llvm_fpga_push_f32_lm96111_push73_conv2d1x165_out_feedback_out_73;
    wire [0:0] i_llvm_fpga_push_f32_lm96111_push73_conv2d1x165_out_feedback_valid_out_73;
    wire [31:0] i_llvm_fpga_push_f32_push53_conv2d1x129_out_feedback_out_53;
    wire [0:0] i_llvm_fpga_push_f32_push53_conv2d1x129_out_feedback_valid_out_53;
    wire [31:0] i_llvm_fpga_push_f32_spec_select32364_push54_conv2d1x131_out_feedback_out_54;
    wire [0:0] i_llvm_fpga_push_f32_spec_select32364_push54_conv2d1x131_out_feedback_valid_out_54;
    wire [31:0] i_llvm_fpga_push_f32_spec_select32467_push55_conv2d1x133_out_feedback_out_55;
    wire [0:0] i_llvm_fpga_push_f32_spec_select32467_push55_conv2d1x133_out_feedback_valid_out_55;
    wire [31:0] i_llvm_fpga_push_f32_spec_select32570_push56_conv2d1x135_out_feedback_out_56;
    wire [0:0] i_llvm_fpga_push_f32_spec_select32570_push56_conv2d1x135_out_feedback_valid_out_56;
    wire [31:0] i_llvm_fpga_push_f32_spec_select32673_push57_conv2d1x137_out_feedback_out_57;
    wire [0:0] i_llvm_fpga_push_f32_spec_select32673_push57_conv2d1x137_out_feedback_valid_out_57;
    wire [31:0] i_llvm_fpga_push_f32_spec_select32776_push58_conv2d1x139_out_feedback_out_58;
    wire [0:0] i_llvm_fpga_push_f32_spec_select32776_push58_conv2d1x139_out_feedback_valid_out_58;
    wire [31:0] i_llvm_fpga_push_f32_spec_select32879_push59_conv2d1x141_out_feedback_out_59;
    wire [0:0] i_llvm_fpga_push_f32_spec_select32879_push59_conv2d1x141_out_feedback_valid_out_59;
    wire [31:0] i_llvm_fpga_push_f32_spec_select32982_push60_conv2d1x143_out_feedback_out_60;
    wire [0:0] i_llvm_fpga_push_f32_spec_select32982_push60_conv2d1x143_out_feedback_valid_out_60;
    wire [31:0] i_llvm_fpga_push_f32_spec_select33085_push61_conv2d1x145_out_feedback_out_61;
    wire [0:0] i_llvm_fpga_push_f32_spec_select33085_push61_conv2d1x145_out_feedback_valid_out_61;
    wire [31:0] i_llvm_fpga_push_f32_spec_select33188_push62_conv2d1x147_out_feedback_out_62;
    wire [0:0] i_llvm_fpga_push_f32_spec_select33188_push62_conv2d1x147_out_feedback_valid_out_62;
    wire [31:0] i_llvm_fpga_push_f32_spec_select33291_push63_conv2d1x149_out_feedback_out_63;
    wire [0:0] i_llvm_fpga_push_f32_spec_select33291_push63_conv2d1x149_out_feedback_valid_out_63;
    wire [31:0] i_llvm_fpga_push_f32_spec_select33394_push64_conv2d1x151_out_feedback_out_64;
    wire [0:0] i_llvm_fpga_push_f32_spec_select33394_push64_conv2d1x151_out_feedback_valid_out_64;
    wire [31:0] i_llvm_fpga_push_f32_spec_select33497_push65_conv2d1x153_out_feedback_out_65;
    wire [0:0] i_llvm_fpga_push_f32_spec_select33497_push65_conv2d1x153_out_feedback_valid_out_65;
    wire [31:0] i_llvm_fpga_push_f32_spec_select335100_push66_conv2d1x155_out_feedback_out_66;
    wire [0:0] i_llvm_fpga_push_f32_spec_select335100_push66_conv2d1x155_out_feedback_valid_out_66;
    wire [31:0] i_llvm_fpga_push_f32_spec_select336103_push67_conv2d1x157_out_feedback_out_67;
    wire [0:0] i_llvm_fpga_push_f32_spec_select336103_push67_conv2d1x157_out_feedback_valid_out_67;
    wire [31:0] i_llvm_fpga_push_f32_spec_select61_push52_conv2d1x127_out_feedback_out_52;
    wire [0:0] i_llvm_fpga_push_f32_spec_select61_push52_conv2d1x127_out_feedback_valid_out_52;
    wire [0:0] i_llvm_fpga_push_i1_forked17105_push68_conv2d1x115_out_feedback_out_68;
    wire [0:0] i_llvm_fpga_push_i1_forked17105_push68_conv2d1x115_out_feedback_valid_out_68;
    wire [0:0] i_llvm_fpga_push_i1_notcmp24117_push77_conv2d1x171_out_feedback_out_77;
    wire [0:0] i_llvm_fpga_push_i1_notcmp24117_push77_conv2d1x171_out_feedback_valid_out_77;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond22_conv2d1x120_out_feedback_out_4;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond22_conv2d1x120_out_feedback_valid_out_4;
    wire [0:0] i_llvm_fpga_push_i1_phi_decision102_xor109_push72_conv2d1x114_out_feedback_out_72;
    wire [0:0] i_llvm_fpga_push_i1_phi_decision102_xor109_push72_conv2d1x114_out_feedback_valid_out_72;
    wire [0:0] i_llvm_fpga_push_i1_push70_conv2d1x161_out_feedback_out_70;
    wire [0:0] i_llvm_fpga_push_i1_push70_conv2d1x161_out_feedback_valid_out_70;
    wire [0:0] i_llvm_fpga_push_i1_push71_conv2d1x163_out_feedback_out_71;
    wire [0:0] i_llvm_fpga_push_i1_push71_conv2d1x163_out_feedback_valid_out_71;
    wire [0:0] i_llvm_fpga_push_i1_push76_conv2d1x117_out_feedback_out_76;
    wire [0:0] i_llvm_fpga_push_i1_push76_conv2d1x117_out_feedback_valid_out_76;
    wire [31:0] i_llvm_fpga_push_i32_ij_067_push51_conv2d1x125_out_feedback_out_51;
    wire [0:0] i_llvm_fpga_push_i32_ij_067_push51_conv2d1x125_out_feedback_valid_out_51;
    wire [31:0] i_llvm_fpga_push_i32_mul107_push69_conv2d1x159_out_feedback_out_69;
    wire [0:0] i_llvm_fpga_push_i32_mul107_push69_conv2d1x159_out_feedback_valid_out_69;
    wire [31:0] i_llvm_fpga_push_i32_mul21113_push74_conv2d1x167_out_feedback_out_74;
    wire [0:0] i_llvm_fpga_push_i32_mul21113_push74_conv2d1x167_out_feedback_valid_out_74;
    wire [31:0] i_llvm_fpga_push_i32_mul97115_push75_conv2d1x169_out_feedback_out_75;
    wire [0:0] i_llvm_fpga_push_i32_mul97115_push75_conv2d1x169_out_feedback_valid_out_75;
    wire [63:0] i_llvm_fpga_push_i33_fpga_indvars_iv297_push47_conv2d1x122_out_feedback_out_47;
    wire [0:0] i_llvm_fpga_push_i33_fpga_indvars_iv297_push47_conv2d1x122_out_feedback_valid_out_47;
    wire [0:0] i_notcmp19_conv2d1x119_q;
    wire [0:0] i_or_conv2d1x118_q;
    wire [0:0] i_unnamed_conv2d1x111_q;
    wire [32:0] bgTrunc_i_fpga_indvars_iv_next298_conv2d1x121_sel_x_b;
    wire [31:0] bgTrunc_i_inc102_conv2d1x124_sel_x_b;
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
    wire [0:0] i_exitcond299_conv2d1x18_cmp_nsign_q;
    reg [0:0] redist0_sync_together198_aunroll_x_in_c0_eni44_1_tpl_1_q;
    reg [0:0] redist1_sync_together198_aunroll_x_in_c0_eni44_2_tpl_1_q;
    reg [32:0] redist2_sync_together198_aunroll_x_in_c0_eni44_3_tpl_1_q;
    reg [0:0] redist3_sync_together198_aunroll_x_in_c0_eni44_4_tpl_1_q;
    reg [0:0] redist4_sync_together198_aunroll_x_in_c0_eni44_5_tpl_1_q;
    reg [31:0] redist5_sync_together198_aunroll_x_in_c0_eni44_6_tpl_1_q;
    reg [31:0] redist6_sync_together198_aunroll_x_in_c0_eni44_7_tpl_1_q;
    reg [31:0] redist7_sync_together198_aunroll_x_in_c0_eni44_8_tpl_1_q;
    reg [31:0] redist8_sync_together198_aunroll_x_in_c0_eni44_9_tpl_1_q;
    reg [31:0] redist9_sync_together198_aunroll_x_in_c0_eni44_10_tpl_1_q;
    reg [31:0] redist10_sync_together198_aunroll_x_in_c0_eni44_11_tpl_1_q;
    reg [31:0] redist11_sync_together198_aunroll_x_in_c0_eni44_12_tpl_1_q;
    reg [31:0] redist12_sync_together198_aunroll_x_in_c0_eni44_13_tpl_1_q;
    reg [31:0] redist13_sync_together198_aunroll_x_in_c0_eni44_14_tpl_1_q;
    reg [31:0] redist14_sync_together198_aunroll_x_in_c0_eni44_15_tpl_1_q;
    reg [31:0] redist15_sync_together198_aunroll_x_in_c0_eni44_16_tpl_1_q;
    reg [31:0] redist16_sync_together198_aunroll_x_in_c0_eni44_17_tpl_1_q;
    reg [31:0] redist17_sync_together198_aunroll_x_in_c0_eni44_18_tpl_1_q;
    reg [31:0] redist18_sync_together198_aunroll_x_in_c0_eni44_19_tpl_1_q;
    reg [31:0] redist19_sync_together198_aunroll_x_in_c0_eni44_20_tpl_1_q;
    reg [31:0] redist20_sync_together198_aunroll_x_in_c0_eni44_21_tpl_1_q;
    reg [31:0] redist21_sync_together198_aunroll_x_in_c0_eni44_22_tpl_1_q;
    reg [0:0] redist22_sync_together198_aunroll_x_in_c0_eni44_23_tpl_1_q;
    reg [0:0] redist23_sync_together198_aunroll_x_in_c0_eni44_24_tpl_1_q;
    reg [31:0] redist24_sync_together198_aunroll_x_in_c0_eni44_25_tpl_1_q;
    reg [31:0] redist25_sync_together198_aunroll_x_in_c0_eni44_26_tpl_1_q;
    reg [31:0] redist26_sync_together198_aunroll_x_in_c0_eni44_27_tpl_1_q;
    reg [0:0] redist27_sync_together198_aunroll_x_in_c0_eni44_28_tpl_1_q;
    reg [31:0] redist28_sync_together198_aunroll_x_in_c0_eni44_29_tpl_1_q;
    reg [31:0] redist29_sync_together198_aunroll_x_in_c0_eni44_30_tpl_1_q;
    reg [31:0] redist30_sync_together198_aunroll_x_in_c0_eni44_31_tpl_1_q;
    reg [31:0] redist31_sync_together198_aunroll_x_in_c0_eni44_32_tpl_1_q;
    reg [31:0] redist32_sync_together198_aunroll_x_in_c0_eni44_33_tpl_1_q;
    reg [31:0] redist33_sync_together198_aunroll_x_in_c0_eni44_34_tpl_1_q;
    reg [31:0] redist34_sync_together198_aunroll_x_in_c0_eni44_35_tpl_1_q;
    reg [31:0] redist35_sync_together198_aunroll_x_in_c0_eni44_36_tpl_1_q;
    reg [31:0] redist36_sync_together198_aunroll_x_in_c0_eni44_37_tpl_1_q;
    reg [31:0] redist37_sync_together198_aunroll_x_in_c0_eni44_38_tpl_1_q;
    reg [31:0] redist38_sync_together198_aunroll_x_in_c0_eni44_39_tpl_1_q;
    reg [31:0] redist39_sync_together198_aunroll_x_in_c0_eni44_40_tpl_1_q;
    reg [31:0] redist40_sync_together198_aunroll_x_in_c0_eni44_41_tpl_1_q;
    reg [31:0] redist41_sync_together198_aunroll_x_in_c0_eni44_42_tpl_1_q;
    reg [31:0] redist42_sync_together198_aunroll_x_in_c0_eni44_43_tpl_1_q;
    reg [31:0] redist43_sync_together198_aunroll_x_in_c0_eni44_44_tpl_1_q;
    reg [0:0] redist44_i_unnamed_conv2d1x111_q_1_q;
    reg [0:0] redist45_i_llvm_fpga_pop_i1_phi_decision102_xor109_pop72_conv2d1x110_out_data_out_1_q;


    // i_llvm_fpga_push_i1_phi_decision102_xor109_push72_conv2d1x114(BLACKBOX,126)@1
    // out out_feedback_out_72@20000000
    // out out_feedback_valid_out_72@20000000
    conv2d1x1_i_llvm_fpga_push_i1_phi_decision102_xor109_push72_0 thei_llvm_fpga_push_i1_phi_decision102_xor109_push72_conv2d1x114 (
        .in_data_in(i_llvm_fpga_pop_i1_phi_decision102_xor109_pop72_conv2d1x110_out_data_out),
        .in_feedback_stall_in_72(i_llvm_fpga_pop_i1_phi_decision102_xor109_pop72_conv2d1x110_out_feedback_stall_out_72),
        .in_stall_in(GND_q),
        .in_unnamed_conv2d1x122(i_unnamed_conv2d1x111_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_feedback_out_72(i_llvm_fpga_push_i1_phi_decision102_xor109_push72_conv2d1x114_out_feedback_out_72),
        .out_feedback_valid_out_72(i_llvm_fpga_push_i1_phi_decision102_xor109_push72_conv2d1x114_out_feedback_valid_out_72),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i1_phi_decision102_xor109_pop72_conv2d1x110(BLACKBOX,97)@1
    // out out_feedback_stall_out_72@20000000
    conv2d1x1_i_llvm_fpga_pop_i1_phi_decision102_xor109_pop72_0 thei_llvm_fpga_pop_i1_phi_decision102_xor109_pop72_conv2d1x110 (
        .in_data_in(in_c0_eni44_4_tpl),
        .in_dir(in_c0_eni44_2_tpl),
        .in_feedback_in_72(i_llvm_fpga_push_i1_phi_decision102_xor109_push72_conv2d1x114_out_feedback_out_72),
        .in_feedback_valid_in_72(i_llvm_fpga_push_i1_phi_decision102_xor109_push72_conv2d1x114_out_feedback_valid_out_72),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(i_llvm_fpga_pop_i1_phi_decision102_xor109_pop72_conv2d1x110_out_data_out),
        .out_feedback_stall_out_72(i_llvm_fpga_pop_i1_phi_decision102_xor109_pop72_conv2d1x110_out_feedback_stall_out_72),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i33_1133(CONSTANT,67)
    assign c_i33_1133_q = $unsigned(33'b111111111111111111111111111111111);

    // i_fpga_indvars_iv_next298_conv2d1x121(ADD,71)@1
    assign i_fpga_indvars_iv_next298_conv2d1x121_a = {1'b0, i_llvm_fpga_pop_i33_fpga_indvars_iv297_pop47_conv2d1x17_out_data_out};
    assign i_fpga_indvars_iv_next298_conv2d1x121_b = {1'b0, c_i33_1133_q};
    assign i_fpga_indvars_iv_next298_conv2d1x121_o = $unsigned(i_fpga_indvars_iv_next298_conv2d1x121_a) + $unsigned(i_fpga_indvars_iv_next298_conv2d1x121_b);
    assign i_fpga_indvars_iv_next298_conv2d1x121_q = i_fpga_indvars_iv_next298_conv2d1x121_o[33:0];

    // bgTrunc_i_fpga_indvars_iv_next298_conv2d1x121_sel_x(BITSELECT,142)@1
    assign bgTrunc_i_fpga_indvars_iv_next298_conv2d1x121_sel_x_b = i_fpga_indvars_iv_next298_conv2d1x121_q[32:0];

    // i_llvm_fpga_push_i33_fpga_indvars_iv297_push47_conv2d1x122(BLACKBOX,134)@1
    // out out_feedback_out_47@20000000
    // out out_feedback_valid_out_47@20000000
    conv2d1x1_i_llvm_fpga_push_i33_fpga_indvars_iv297_push47_0 thei_llvm_fpga_push_i33_fpga_indvars_iv297_push47_conv2d1x122 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next298_conv2d1x121_sel_x_b),
        .in_feedback_stall_in_47(i_llvm_fpga_pop_i33_fpga_indvars_iv297_pop47_conv2d1x17_out_feedback_stall_out_47),
        .in_stall_in(GND_q),
        .in_unnamed_conv2d1x122(i_unnamed_conv2d1x111_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_feedback_out_47(i_llvm_fpga_push_i33_fpga_indvars_iv297_push47_conv2d1x122_out_feedback_out_47),
        .out_feedback_valid_out_47(i_llvm_fpga_push_i33_fpga_indvars_iv297_push47_conv2d1x122_out_feedback_valid_out_47),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i33_fpga_indvars_iv297_pop47_conv2d1x17(BLACKBOX,105)@1
    // out out_feedback_stall_out_47@20000000
    conv2d1x1_i_llvm_fpga_pop_i33_fpga_indvars_iv297_pop47_0 thei_llvm_fpga_pop_i33_fpga_indvars_iv297_pop47_conv2d1x17 (
        .in_data_in(in_c0_eni44_3_tpl),
        .in_dir(in_c0_eni44_2_tpl),
        .in_feedback_in_47(i_llvm_fpga_push_i33_fpga_indvars_iv297_push47_conv2d1x122_out_feedback_out_47),
        .in_feedback_valid_in_47(i_llvm_fpga_push_i33_fpga_indvars_iv297_push47_conv2d1x122_out_feedback_valid_out_47),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(i_llvm_fpga_pop_i33_fpga_indvars_iv297_pop47_conv2d1x17_out_data_out),
        .out_feedback_stall_out_47(i_llvm_fpga_pop_i33_fpga_indvars_iv297_pop47_conv2d1x17_out_feedback_stall_out_47),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_exitcond299_conv2d1x18_cmp_nsign(LOGICAL,203)@1
    assign i_exitcond299_conv2d1x18_cmp_nsign_q = $unsigned(~ (i_llvm_fpga_pop_i33_fpga_indvars_iv297_pop47_conv2d1x17_out_data_out[32:32]));

    // i_unnamed_conv2d1x111(LOGICAL,137)@1
    assign i_unnamed_conv2d1x111_q = i_exitcond299_conv2d1x18_cmp_nsign_q & i_llvm_fpga_pop_i1_phi_decision102_xor109_pop72_conv2d1x110_out_data_out;

    // i_llvm_fpga_push_i1_notexitcond22_conv2d1x120(BLACKBOX,125)@1
    // out out_feedback_out_4@20000000
    // out out_feedback_valid_out_4@20000000
    conv2d1x1_i_llvm_fpga_push_i1_notexitcond22_0 thei_llvm_fpga_push_i1_notexitcond22_conv2d1x120 (
        .in_data_in(i_unnamed_conv2d1x111_q),
        .in_feedback_stall_in_4(i_llvm_fpga_pipeline_keep_going21_conv2d1x16_out_not_exitcond_stall_out),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_feedback_out_4(i_llvm_fpga_push_i1_notexitcond22_conv2d1x120_out_feedback_out_4),
        .out_feedback_valid_out_4(i_llvm_fpga_push_i1_notexitcond22_conv2d1x120_out_feedback_valid_out_4),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // i_llvm_fpga_pipeline_keep_going21_conv2d1x16(BLACKBOX,77)@1
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    conv2d1x1_i_llvm_fpga_pipeline_keep_going21_0 thei_llvm_fpga_pipeline_keep_going21_conv2d1x16 (
        .in_data_in(VCC_q),
        .in_initeration_in(GND_q),
        .in_initeration_valid_in(GND_q),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond22_conv2d1x120_out_feedback_out_4),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond22_conv2d1x120_out_feedback_valid_out_4),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going21_conv2d1x16_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going21_conv2d1x16_out_exiting_valid_out),
        .out_initeration_stall_out(),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going21_conv2d1x16_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going21_conv2d1x16_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,68)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going21_conv2d1x16_exiting_valid_out = i_llvm_fpga_pipeline_keep_going21_conv2d1x16_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going21_conv2d1x16_exiting_stall_out = i_llvm_fpga_pipeline_keep_going21_conv2d1x16_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,140)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going21_conv2d1x16_out_pipeline_valid_out;

    // valid_fanout_reg0(REG,147)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(in_i_valid);
        end
    end

    // redist20_sync_together198_aunroll_x_in_c0_eni44_21_tpl_1(DELAY,224)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist20_sync_together198_aunroll_x_in_c0_eni44_21_tpl_1_q <= '0;
        end
        else
        begin
            redist20_sync_together198_aunroll_x_in_c0_eni44_21_tpl_1_q <= $unsigned(in_c0_eni44_21_tpl);
        end
    end

    // redist19_sync_together198_aunroll_x_in_c0_eni44_20_tpl_1(DELAY,223)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist19_sync_together198_aunroll_x_in_c0_eni44_20_tpl_1_q <= '0;
        end
        else
        begin
            redist19_sync_together198_aunroll_x_in_c0_eni44_20_tpl_1_q <= $unsigned(in_c0_eni44_20_tpl);
        end
    end

    // redist18_sync_together198_aunroll_x_in_c0_eni44_19_tpl_1(DELAY,222)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist18_sync_together198_aunroll_x_in_c0_eni44_19_tpl_1_q <= '0;
        end
        else
        begin
            redist18_sync_together198_aunroll_x_in_c0_eni44_19_tpl_1_q <= $unsigned(in_c0_eni44_19_tpl);
        end
    end

    // redist17_sync_together198_aunroll_x_in_c0_eni44_18_tpl_1(DELAY,221)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist17_sync_together198_aunroll_x_in_c0_eni44_18_tpl_1_q <= '0;
        end
        else
        begin
            redist17_sync_together198_aunroll_x_in_c0_eni44_18_tpl_1_q <= $unsigned(in_c0_eni44_18_tpl);
        end
    end

    // redist16_sync_together198_aunroll_x_in_c0_eni44_17_tpl_1(DELAY,220)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist16_sync_together198_aunroll_x_in_c0_eni44_17_tpl_1_q <= '0;
        end
        else
        begin
            redist16_sync_together198_aunroll_x_in_c0_eni44_17_tpl_1_q <= $unsigned(in_c0_eni44_17_tpl);
        end
    end

    // redist15_sync_together198_aunroll_x_in_c0_eni44_16_tpl_1(DELAY,219)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist15_sync_together198_aunroll_x_in_c0_eni44_16_tpl_1_q <= '0;
        end
        else
        begin
            redist15_sync_together198_aunroll_x_in_c0_eni44_16_tpl_1_q <= $unsigned(in_c0_eni44_16_tpl);
        end
    end

    // redist14_sync_together198_aunroll_x_in_c0_eni44_15_tpl_1(DELAY,218)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_sync_together198_aunroll_x_in_c0_eni44_15_tpl_1_q <= '0;
        end
        else
        begin
            redist14_sync_together198_aunroll_x_in_c0_eni44_15_tpl_1_q <= $unsigned(in_c0_eni44_15_tpl);
        end
    end

    // redist13_sync_together198_aunroll_x_in_c0_eni44_14_tpl_1(DELAY,217)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_sync_together198_aunroll_x_in_c0_eni44_14_tpl_1_q <= '0;
        end
        else
        begin
            redist13_sync_together198_aunroll_x_in_c0_eni44_14_tpl_1_q <= $unsigned(in_c0_eni44_14_tpl);
        end
    end

    // redist12_sync_together198_aunroll_x_in_c0_eni44_13_tpl_1(DELAY,216)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_sync_together198_aunroll_x_in_c0_eni44_13_tpl_1_q <= '0;
        end
        else
        begin
            redist12_sync_together198_aunroll_x_in_c0_eni44_13_tpl_1_q <= $unsigned(in_c0_eni44_13_tpl);
        end
    end

    // redist11_sync_together198_aunroll_x_in_c0_eni44_12_tpl_1(DELAY,215)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_sync_together198_aunroll_x_in_c0_eni44_12_tpl_1_q <= '0;
        end
        else
        begin
            redist11_sync_together198_aunroll_x_in_c0_eni44_12_tpl_1_q <= $unsigned(in_c0_eni44_12_tpl);
        end
    end

    // redist10_sync_together198_aunroll_x_in_c0_eni44_11_tpl_1(DELAY,214)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_sync_together198_aunroll_x_in_c0_eni44_11_tpl_1_q <= '0;
        end
        else
        begin
            redist10_sync_together198_aunroll_x_in_c0_eni44_11_tpl_1_q <= $unsigned(in_c0_eni44_11_tpl);
        end
    end

    // redist9_sync_together198_aunroll_x_in_c0_eni44_10_tpl_1(DELAY,213)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_sync_together198_aunroll_x_in_c0_eni44_10_tpl_1_q <= '0;
        end
        else
        begin
            redist9_sync_together198_aunroll_x_in_c0_eni44_10_tpl_1_q <= $unsigned(in_c0_eni44_10_tpl);
        end
    end

    // redist8_sync_together198_aunroll_x_in_c0_eni44_9_tpl_1(DELAY,212)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_sync_together198_aunroll_x_in_c0_eni44_9_tpl_1_q <= '0;
        end
        else
        begin
            redist8_sync_together198_aunroll_x_in_c0_eni44_9_tpl_1_q <= $unsigned(in_c0_eni44_9_tpl);
        end
    end

    // redist7_sync_together198_aunroll_x_in_c0_eni44_8_tpl_1(DELAY,211)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_sync_together198_aunroll_x_in_c0_eni44_8_tpl_1_q <= '0;
        end
        else
        begin
            redist7_sync_together198_aunroll_x_in_c0_eni44_8_tpl_1_q <= $unsigned(in_c0_eni44_8_tpl);
        end
    end

    // redist6_sync_together198_aunroll_x_in_c0_eni44_7_tpl_1(DELAY,210)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_sync_together198_aunroll_x_in_c0_eni44_7_tpl_1_q <= '0;
        end
        else
        begin
            redist6_sync_together198_aunroll_x_in_c0_eni44_7_tpl_1_q <= $unsigned(in_c0_eni44_7_tpl);
        end
    end

    // redist5_sync_together198_aunroll_x_in_c0_eni44_6_tpl_1(DELAY,209)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_sync_together198_aunroll_x_in_c0_eni44_6_tpl_1_q <= '0;
        end
        else
        begin
            redist5_sync_together198_aunroll_x_in_c0_eni44_6_tpl_1_q <= $unsigned(in_c0_eni44_6_tpl);
        end
    end

    // redist27_sync_together198_aunroll_x_in_c0_eni44_28_tpl_1(DELAY,231)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist27_sync_together198_aunroll_x_in_c0_eni44_28_tpl_1_q <= '0;
        end
        else
        begin
            redist27_sync_together198_aunroll_x_in_c0_eni44_28_tpl_1_q <= $unsigned(in_c0_eni44_28_tpl);
        end
    end

    // redist4_sync_together198_aunroll_x_in_c0_eni44_5_tpl_1(DELAY,208)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_sync_together198_aunroll_x_in_c0_eni44_5_tpl_1_q <= '0;
        end
        else
        begin
            redist4_sync_together198_aunroll_x_in_c0_eni44_5_tpl_1_q <= $unsigned(in_c0_eni44_5_tpl);
        end
    end

    // redist26_sync_together198_aunroll_x_in_c0_eni44_27_tpl_1(DELAY,230)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist26_sync_together198_aunroll_x_in_c0_eni44_27_tpl_1_q <= '0;
        end
        else
        begin
            redist26_sync_together198_aunroll_x_in_c0_eni44_27_tpl_1_q <= $unsigned(in_c0_eni44_27_tpl);
        end
    end

    // redist25_sync_together198_aunroll_x_in_c0_eni44_26_tpl_1(DELAY,229)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist25_sync_together198_aunroll_x_in_c0_eni44_26_tpl_1_q <= '0;
        end
        else
        begin
            redist25_sync_together198_aunroll_x_in_c0_eni44_26_tpl_1_q <= $unsigned(in_c0_eni44_26_tpl);
        end
    end

    // redist24_sync_together198_aunroll_x_in_c0_eni44_25_tpl_1(DELAY,228)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist24_sync_together198_aunroll_x_in_c0_eni44_25_tpl_1_q <= '0;
        end
        else
        begin
            redist24_sync_together198_aunroll_x_in_c0_eni44_25_tpl_1_q <= $unsigned(in_c0_eni44_25_tpl);
        end
    end

    // redist2_sync_together198_aunroll_x_in_c0_eni44_3_tpl_1(DELAY,206)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_sync_together198_aunroll_x_in_c0_eni44_3_tpl_1_q <= '0;
        end
        else
        begin
            redist2_sync_together198_aunroll_x_in_c0_eni44_3_tpl_1_q <= $unsigned(in_c0_eni44_3_tpl);
        end
    end

    // redist3_sync_together198_aunroll_x_in_c0_eni44_4_tpl_1(DELAY,207)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_sync_together198_aunroll_x_in_c0_eni44_4_tpl_1_q <= '0;
        end
        else
        begin
            redist3_sync_together198_aunroll_x_in_c0_eni44_4_tpl_1_q <= $unsigned(in_c0_eni44_4_tpl);
        end
    end

    // redist23_sync_together198_aunroll_x_in_c0_eni44_24_tpl_1(DELAY,227)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist23_sync_together198_aunroll_x_in_c0_eni44_24_tpl_1_q <= '0;
        end
        else
        begin
            redist23_sync_together198_aunroll_x_in_c0_eni44_24_tpl_1_q <= $unsigned(in_c0_eni44_24_tpl);
        end
    end

    // redist22_sync_together198_aunroll_x_in_c0_eni44_23_tpl_1(DELAY,226)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist22_sync_together198_aunroll_x_in_c0_eni44_23_tpl_1_q <= '0;
        end
        else
        begin
            redist22_sync_together198_aunroll_x_in_c0_eni44_23_tpl_1_q <= $unsigned(in_c0_eni44_23_tpl);
        end
    end

    // redist21_sync_together198_aunroll_x_in_c0_eni44_22_tpl_1(DELAY,225)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist21_sync_together198_aunroll_x_in_c0_eni44_22_tpl_1_q <= '0;
        end
        else
        begin
            redist21_sync_together198_aunroll_x_in_c0_eni44_22_tpl_1_q <= $unsigned(in_c0_eni44_22_tpl);
        end
    end

    // redist0_sync_together198_aunroll_x_in_c0_eni44_1_tpl_1(DELAY,204)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_sync_together198_aunroll_x_in_c0_eni44_1_tpl_1_q <= '0;
        end
        else
        begin
            redist0_sync_together198_aunroll_x_in_c0_eni44_1_tpl_1_q <= $unsigned(in_c0_eni44_1_tpl);
        end
    end

    // redist43_sync_together198_aunroll_x_in_c0_eni44_44_tpl_1(DELAY,247)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist43_sync_together198_aunroll_x_in_c0_eni44_44_tpl_1_q <= '0;
        end
        else
        begin
            redist43_sync_together198_aunroll_x_in_c0_eni44_44_tpl_1_q <= $unsigned(in_c0_eni44_44_tpl);
        end
    end

    // redist42_sync_together198_aunroll_x_in_c0_eni44_43_tpl_1(DELAY,246)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist42_sync_together198_aunroll_x_in_c0_eni44_43_tpl_1_q <= '0;
        end
        else
        begin
            redist42_sync_together198_aunroll_x_in_c0_eni44_43_tpl_1_q <= $unsigned(in_c0_eni44_43_tpl);
        end
    end

    // redist41_sync_together198_aunroll_x_in_c0_eni44_42_tpl_1(DELAY,245)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist41_sync_together198_aunroll_x_in_c0_eni44_42_tpl_1_q <= '0;
        end
        else
        begin
            redist41_sync_together198_aunroll_x_in_c0_eni44_42_tpl_1_q <= $unsigned(in_c0_eni44_42_tpl);
        end
    end

    // redist40_sync_together198_aunroll_x_in_c0_eni44_41_tpl_1(DELAY,244)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist40_sync_together198_aunroll_x_in_c0_eni44_41_tpl_1_q <= '0;
        end
        else
        begin
            redist40_sync_together198_aunroll_x_in_c0_eni44_41_tpl_1_q <= $unsigned(in_c0_eni44_41_tpl);
        end
    end

    // redist39_sync_together198_aunroll_x_in_c0_eni44_40_tpl_1(DELAY,243)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist39_sync_together198_aunroll_x_in_c0_eni44_40_tpl_1_q <= '0;
        end
        else
        begin
            redist39_sync_together198_aunroll_x_in_c0_eni44_40_tpl_1_q <= $unsigned(in_c0_eni44_40_tpl);
        end
    end

    // redist38_sync_together198_aunroll_x_in_c0_eni44_39_tpl_1(DELAY,242)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist38_sync_together198_aunroll_x_in_c0_eni44_39_tpl_1_q <= '0;
        end
        else
        begin
            redist38_sync_together198_aunroll_x_in_c0_eni44_39_tpl_1_q <= $unsigned(in_c0_eni44_39_tpl);
        end
    end

    // redist37_sync_together198_aunroll_x_in_c0_eni44_38_tpl_1(DELAY,241)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist37_sync_together198_aunroll_x_in_c0_eni44_38_tpl_1_q <= '0;
        end
        else
        begin
            redist37_sync_together198_aunroll_x_in_c0_eni44_38_tpl_1_q <= $unsigned(in_c0_eni44_38_tpl);
        end
    end

    // redist36_sync_together198_aunroll_x_in_c0_eni44_37_tpl_1(DELAY,240)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist36_sync_together198_aunroll_x_in_c0_eni44_37_tpl_1_q <= '0;
        end
        else
        begin
            redist36_sync_together198_aunroll_x_in_c0_eni44_37_tpl_1_q <= $unsigned(in_c0_eni44_37_tpl);
        end
    end

    // redist35_sync_together198_aunroll_x_in_c0_eni44_36_tpl_1(DELAY,239)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist35_sync_together198_aunroll_x_in_c0_eni44_36_tpl_1_q <= '0;
        end
        else
        begin
            redist35_sync_together198_aunroll_x_in_c0_eni44_36_tpl_1_q <= $unsigned(in_c0_eni44_36_tpl);
        end
    end

    // redist34_sync_together198_aunroll_x_in_c0_eni44_35_tpl_1(DELAY,238)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist34_sync_together198_aunroll_x_in_c0_eni44_35_tpl_1_q <= '0;
        end
        else
        begin
            redist34_sync_together198_aunroll_x_in_c0_eni44_35_tpl_1_q <= $unsigned(in_c0_eni44_35_tpl);
        end
    end

    // redist33_sync_together198_aunroll_x_in_c0_eni44_34_tpl_1(DELAY,237)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist33_sync_together198_aunroll_x_in_c0_eni44_34_tpl_1_q <= '0;
        end
        else
        begin
            redist33_sync_together198_aunroll_x_in_c0_eni44_34_tpl_1_q <= $unsigned(in_c0_eni44_34_tpl);
        end
    end

    // redist32_sync_together198_aunroll_x_in_c0_eni44_33_tpl_1(DELAY,236)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist32_sync_together198_aunroll_x_in_c0_eni44_33_tpl_1_q <= '0;
        end
        else
        begin
            redist32_sync_together198_aunroll_x_in_c0_eni44_33_tpl_1_q <= $unsigned(in_c0_eni44_33_tpl);
        end
    end

    // redist31_sync_together198_aunroll_x_in_c0_eni44_32_tpl_1(DELAY,235)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist31_sync_together198_aunroll_x_in_c0_eni44_32_tpl_1_q <= '0;
        end
        else
        begin
            redist31_sync_together198_aunroll_x_in_c0_eni44_32_tpl_1_q <= $unsigned(in_c0_eni44_32_tpl);
        end
    end

    // redist30_sync_together198_aunroll_x_in_c0_eni44_31_tpl_1(DELAY,234)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist30_sync_together198_aunroll_x_in_c0_eni44_31_tpl_1_q <= '0;
        end
        else
        begin
            redist30_sync_together198_aunroll_x_in_c0_eni44_31_tpl_1_q <= $unsigned(in_c0_eni44_31_tpl);
        end
    end

    // redist29_sync_together198_aunroll_x_in_c0_eni44_30_tpl_1(DELAY,233)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist29_sync_together198_aunroll_x_in_c0_eni44_30_tpl_1_q <= '0;
        end
        else
        begin
            redist29_sync_together198_aunroll_x_in_c0_eni44_30_tpl_1_q <= $unsigned(in_c0_eni44_30_tpl);
        end
    end

    // redist28_sync_together198_aunroll_x_in_c0_eni44_29_tpl_1(DELAY,232)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist28_sync_together198_aunroll_x_in_c0_eni44_29_tpl_1_q <= '0;
        end
        else
        begin
            redist28_sync_together198_aunroll_x_in_c0_eni44_29_tpl_1_q <= $unsigned(in_c0_eni44_29_tpl);
        end
    end

    // redist1_sync_together198_aunroll_x_in_c0_eni44_2_tpl_1(DELAY,205)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together198_aunroll_x_in_c0_eni44_2_tpl_1_q <= '0;
        end
        else
        begin
            redist1_sync_together198_aunroll_x_in_c0_eni44_2_tpl_1_q <= $unsigned(in_c0_eni44_2_tpl);
        end
    end

    // valid_fanout_reg51(REG,198)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg51_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg51_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg52(REG,199)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg52_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg52_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_fanout_i1_fanout_adaptor854_conv2d1x112(REG,76)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_llvm_fpga_fanout_i1_fanout_adaptor854_conv2d1x112_q <= $unsigned(1'b0);
        end
        else
        begin
            i_llvm_fpga_fanout_i1_fanout_adaptor854_conv2d1x112_q <= i_unnamed_conv2d1x111_q;
        end
    end

    // i_llvm_fpga_push_i1_notcmp24117_push77_conv2d1x171(BLACKBOX,124)@2
    // out out_feedback_out_77@20000000
    // out out_feedback_valid_out_77@20000000
    conv2d1x1_i_llvm_fpga_push_i1_notcmp24117_push77_0 thei_llvm_fpga_push_i1_notcmp24117_push77_conv2d1x171 (
        .in_data_in(i_llvm_fpga_pop_i1_notcmp24117_pop77_conv2d1x170_out_data_out),
        .in_fanout_adaptor854(i_llvm_fpga_fanout_i1_fanout_adaptor854_conv2d1x112_q),
        .in_feedback_stall_in_77(i_llvm_fpga_pop_i1_notcmp24117_pop77_conv2d1x170_out_feedback_stall_out_77),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg52_q),
        .out_data_out(),
        .out_feedback_out_77(i_llvm_fpga_push_i1_notcmp24117_push77_conv2d1x171_out_feedback_out_77),
        .out_feedback_valid_out_77(i_llvm_fpga_push_i1_notcmp24117_push77_conv2d1x171_out_feedback_valid_out_77),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_fanout_i1_c0_ene2435_fanout_adaptor852_conv2d1x12(REG,73)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_llvm_fpga_fanout_i1_c0_ene2435_fanout_adaptor852_conv2d1x12_q <= $unsigned(1'b0);
        end
        else
        begin
            i_llvm_fpga_fanout_i1_c0_ene2435_fanout_adaptor852_conv2d1x12_q <= in_c0_eni44_2_tpl;
        end
    end

    // i_llvm_fpga_pop_i1_notcmp24117_pop77_conv2d1x170(BLACKBOX,96)@2
    // out out_feedback_stall_out_77@20000000
    conv2d1x1_i_llvm_fpga_pop_i1_notcmp24117_pop77_0 thei_llvm_fpga_pop_i1_notcmp24117_pop77_conv2d1x170 (
        .in_data_in(redist27_sync_together198_aunroll_x_in_c0_eni44_28_tpl_1_q),
        .in_dir(i_llvm_fpga_fanout_i1_c0_ene2435_fanout_adaptor852_conv2d1x12_q),
        .in_feedback_in_77(i_llvm_fpga_push_i1_notcmp24117_push77_conv2d1x171_out_feedback_out_77),
        .in_feedback_valid_in_77(i_llvm_fpga_push_i1_notcmp24117_push77_conv2d1x171_out_feedback_valid_out_77),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg51_q),
        .out_data_out(i_llvm_fpga_pop_i1_notcmp24117_pop77_conv2d1x170_out_data_out),
        .out_feedback_stall_out_77(i_llvm_fpga_pop_i1_notcmp24117_pop77_conv2d1x170_out_feedback_stall_out_77),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg49(REG,196)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg49_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg49_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg50(REG,197)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg50_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg50_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_i32_mul97115_push75_conv2d1x169(BLACKBOX,133)@2
    // out out_feedback_out_75@20000000
    // out out_feedback_valid_out_75@20000000
    conv2d1x1_i_llvm_fpga_push_i32_mul97115_push75_0 thei_llvm_fpga_push_i32_mul97115_push75_conv2d1x169 (
        .in_data_in(i_llvm_fpga_pop_i32_mul97115_pop75_conv2d1x168_out_data_out),
        .in_fanout_adaptor854(i_llvm_fpga_fanout_i1_fanout_adaptor854_conv2d1x112_q),
        .in_feedback_stall_in_75(i_llvm_fpga_pop_i32_mul97115_pop75_conv2d1x168_out_feedback_stall_out_75),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg50_q),
        .out_data_out(),
        .out_feedback_out_75(i_llvm_fpga_push_i32_mul97115_push75_conv2d1x169_out_feedback_out_75),
        .out_feedback_valid_out_75(i_llvm_fpga_push_i32_mul97115_push75_conv2d1x169_out_feedback_valid_out_75),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_mul97115_pop75_conv2d1x168(BLACKBOX,104)@2
    // out out_feedback_stall_out_75@20000000
    conv2d1x1_i_llvm_fpga_pop_i32_mul97115_pop75_0 thei_llvm_fpga_pop_i32_mul97115_pop75_conv2d1x168 (
        .in_data_in(redist26_sync_together198_aunroll_x_in_c0_eni44_27_tpl_1_q),
        .in_dir(i_llvm_fpga_fanout_i1_c0_ene2435_fanout_adaptor852_conv2d1x12_q),
        .in_feedback_in_75(i_llvm_fpga_push_i32_mul97115_push75_conv2d1x169_out_feedback_out_75),
        .in_feedback_valid_in_75(i_llvm_fpga_push_i32_mul97115_push75_conv2d1x169_out_feedback_valid_out_75),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg49_q),
        .out_data_out(i_llvm_fpga_pop_i32_mul97115_pop75_conv2d1x168_out_data_out),
        .out_feedback_stall_out_75(i_llvm_fpga_pop_i32_mul97115_pop75_conv2d1x168_out_feedback_stall_out_75),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg47(REG,194)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg47_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg47_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg48(REG,195)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg48_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg48_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_i32_mul21113_push74_conv2d1x167(BLACKBOX,132)@2
    // out out_feedback_out_74@20000000
    // out out_feedback_valid_out_74@20000000
    conv2d1x1_i_llvm_fpga_push_i32_mul21113_push74_0 thei_llvm_fpga_push_i32_mul21113_push74_conv2d1x167 (
        .in_data_in(i_llvm_fpga_pop_i32_mul21113_pop74_conv2d1x166_out_data_out),
        .in_fanout_adaptor854(i_llvm_fpga_fanout_i1_fanout_adaptor854_conv2d1x112_q),
        .in_feedback_stall_in_74(i_llvm_fpga_pop_i32_mul21113_pop74_conv2d1x166_out_feedback_stall_out_74),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg48_q),
        .out_data_out(),
        .out_feedback_out_74(i_llvm_fpga_push_i32_mul21113_push74_conv2d1x167_out_feedback_out_74),
        .out_feedback_valid_out_74(i_llvm_fpga_push_i32_mul21113_push74_conv2d1x167_out_feedback_valid_out_74),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_mul21113_pop74_conv2d1x166(BLACKBOX,103)@2
    // out out_feedback_stall_out_74@20000000
    conv2d1x1_i_llvm_fpga_pop_i32_mul21113_pop74_0 thei_llvm_fpga_pop_i32_mul21113_pop74_conv2d1x166 (
        .in_data_in(redist25_sync_together198_aunroll_x_in_c0_eni44_26_tpl_1_q),
        .in_dir(i_llvm_fpga_fanout_i1_c0_ene2435_fanout_adaptor852_conv2d1x12_q),
        .in_feedback_in_74(i_llvm_fpga_push_i32_mul21113_push74_conv2d1x167_out_feedback_out_74),
        .in_feedback_valid_in_74(i_llvm_fpga_push_i32_mul21113_push74_conv2d1x167_out_feedback_valid_out_74),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg47_q),
        .out_data_out(i_llvm_fpga_pop_i32_mul21113_pop74_conv2d1x166_out_data_out),
        .out_feedback_stall_out_74(i_llvm_fpga_pop_i32_mul21113_pop74_conv2d1x166_out_feedback_stall_out_74),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg45(REG,192)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg45_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg45_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg46(REG,193)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg46_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg46_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_f32_lm96111_push73_conv2d1x165(BLACKBOX,106)@2
    // out out_feedback_out_73@20000000
    // out out_feedback_valid_out_73@20000000
    conv2d1x1_i_llvm_fpga_push_f32_lm96111_push73_0 thei_llvm_fpga_push_f32_lm96111_push73_conv2d1x165 (
        .in_data_in(i_llvm_fpga_pop_f32_lm96111_pop73_conv2d1x164_out_data_out),
        .in_fanout_adaptor854(i_llvm_fpga_fanout_i1_fanout_adaptor854_conv2d1x112_q),
        .in_feedback_stall_in_73(i_llvm_fpga_pop_f32_lm96111_pop73_conv2d1x164_out_feedback_stall_out_73),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg46_q),
        .out_data_out(),
        .out_feedback_out_73(i_llvm_fpga_push_f32_lm96111_push73_conv2d1x165_out_feedback_out_73),
        .out_feedback_valid_out_73(i_llvm_fpga_push_f32_lm96111_push73_conv2d1x165_out_feedback_valid_out_73),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_f32_lm96111_pop73_conv2d1x164(BLACKBOX,78)@2
    // out out_feedback_stall_out_73@20000000
    conv2d1x1_i_llvm_fpga_pop_f32_lm96111_pop73_0 thei_llvm_fpga_pop_f32_lm96111_pop73_conv2d1x164 (
        .in_data_in(redist24_sync_together198_aunroll_x_in_c0_eni44_25_tpl_1_q),
        .in_dir(i_llvm_fpga_fanout_i1_c0_ene2435_fanout_adaptor852_conv2d1x12_q),
        .in_feedback_in_73(i_llvm_fpga_push_f32_lm96111_push73_conv2d1x165_out_feedback_out_73),
        .in_feedback_valid_in_73(i_llvm_fpga_push_f32_lm96111_push73_conv2d1x165_out_feedback_valid_out_73),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg45_q),
        .out_data_out(i_llvm_fpga_pop_f32_lm96111_pop73_conv2d1x164_out_data_out),
        .out_feedback_stall_out_73(i_llvm_fpga_pop_f32_lm96111_pop73_conv2d1x164_out_feedback_stall_out_73),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg43(REG,190)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg43_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg43_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg44(REG,191)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg44_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg44_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_i1_push71_conv2d1x163(BLACKBOX,128)@2
    // out out_feedback_out_71@20000000
    // out out_feedback_valid_out_71@20000000
    conv2d1x1_i_llvm_fpga_push_i1_push71_0 thei_llvm_fpga_push_i1_push71_conv2d1x163 (
        .in_data_in(i_llvm_fpga_pop_i1_pop71_conv2d1x162_out_data_out),
        .in_fanout_adaptor854(i_llvm_fpga_fanout_i1_fanout_adaptor854_conv2d1x112_q),
        .in_feedback_stall_in_71(i_llvm_fpga_pop_i1_pop71_conv2d1x162_out_feedback_stall_out_71),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg44_q),
        .out_data_out(),
        .out_feedback_out_71(i_llvm_fpga_push_i1_push71_conv2d1x163_out_feedback_out_71),
        .out_feedback_valid_out_71(i_llvm_fpga_push_i1_push71_conv2d1x163_out_feedback_valid_out_71),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i1_pop71_conv2d1x162(BLACKBOX,99)@2
    // out out_feedback_stall_out_71@20000000
    conv2d1x1_i_llvm_fpga_pop_i1_pop71_0 thei_llvm_fpga_pop_i1_pop71_conv2d1x162 (
        .in_data_in(redist23_sync_together198_aunroll_x_in_c0_eni44_24_tpl_1_q),
        .in_dir(i_llvm_fpga_fanout_i1_c0_ene2435_fanout_adaptor852_conv2d1x12_q),
        .in_feedback_in_71(i_llvm_fpga_push_i1_push71_conv2d1x163_out_feedback_out_71),
        .in_feedback_valid_in_71(i_llvm_fpga_push_i1_push71_conv2d1x163_out_feedback_valid_out_71),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg43_q),
        .out_data_out(i_llvm_fpga_pop_i1_pop71_conv2d1x162_out_data_out),
        .out_feedback_stall_out_71(i_llvm_fpga_pop_i1_pop71_conv2d1x162_out_feedback_stall_out_71),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg41(REG,188)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg41_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg41_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg42(REG,189)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg42_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg42_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_i1_push70_conv2d1x161(BLACKBOX,127)@2
    // out out_feedback_out_70@20000000
    // out out_feedback_valid_out_70@20000000
    conv2d1x1_i_llvm_fpga_push_i1_push70_0 thei_llvm_fpga_push_i1_push70_conv2d1x161 (
        .in_data_in(i_llvm_fpga_pop_i1_pop70_conv2d1x160_out_data_out),
        .in_fanout_adaptor854(i_llvm_fpga_fanout_i1_fanout_adaptor854_conv2d1x112_q),
        .in_feedback_stall_in_70(i_llvm_fpga_pop_i1_pop70_conv2d1x160_out_feedback_stall_out_70),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg42_q),
        .out_data_out(),
        .out_feedback_out_70(i_llvm_fpga_push_i1_push70_conv2d1x161_out_feedback_out_70),
        .out_feedback_valid_out_70(i_llvm_fpga_push_i1_push70_conv2d1x161_out_feedback_valid_out_70),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i1_pop70_conv2d1x160(BLACKBOX,98)@2
    // out out_feedback_stall_out_70@20000000
    conv2d1x1_i_llvm_fpga_pop_i1_pop70_0 thei_llvm_fpga_pop_i1_pop70_conv2d1x160 (
        .in_data_in(redist22_sync_together198_aunroll_x_in_c0_eni44_23_tpl_1_q),
        .in_dir(i_llvm_fpga_fanout_i1_c0_ene2435_fanout_adaptor852_conv2d1x12_q),
        .in_feedback_in_70(i_llvm_fpga_push_i1_push70_conv2d1x161_out_feedback_out_70),
        .in_feedback_valid_in_70(i_llvm_fpga_push_i1_push70_conv2d1x161_out_feedback_valid_out_70),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg41_q),
        .out_data_out(i_llvm_fpga_pop_i1_pop70_conv2d1x160_out_data_out),
        .out_feedback_stall_out_70(i_llvm_fpga_pop_i1_pop70_conv2d1x160_out_feedback_stall_out_70),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg39(REG,186)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg39_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg39_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg40(REG,187)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg40_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg40_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_i32_mul107_push69_conv2d1x159(BLACKBOX,131)@2
    // out out_feedback_out_69@20000000
    // out out_feedback_valid_out_69@20000000
    conv2d1x1_i_llvm_fpga_push_i32_mul107_push69_0 thei_llvm_fpga_push_i32_mul107_push69_conv2d1x159 (
        .in_data_in(i_llvm_fpga_pop_i32_mul107_pop69_conv2d1x158_out_data_out),
        .in_fanout_adaptor854(i_llvm_fpga_fanout_i1_fanout_adaptor854_conv2d1x112_q),
        .in_feedback_stall_in_69(i_llvm_fpga_pop_i32_mul107_pop69_conv2d1x158_out_feedback_stall_out_69),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg40_q),
        .out_data_out(),
        .out_feedback_out_69(i_llvm_fpga_push_i32_mul107_push69_conv2d1x159_out_feedback_out_69),
        .out_feedback_valid_out_69(i_llvm_fpga_push_i32_mul107_push69_conv2d1x159_out_feedback_valid_out_69),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_mul107_pop69_conv2d1x158(BLACKBOX,102)@2
    // out out_feedback_stall_out_69@20000000
    conv2d1x1_i_llvm_fpga_pop_i32_mul107_pop69_0 thei_llvm_fpga_pop_i32_mul107_pop69_conv2d1x158 (
        .in_data_in(redist21_sync_together198_aunroll_x_in_c0_eni44_22_tpl_1_q),
        .in_dir(i_llvm_fpga_fanout_i1_c0_ene2435_fanout_adaptor852_conv2d1x12_q),
        .in_feedback_in_69(i_llvm_fpga_push_i32_mul107_push69_conv2d1x159_out_feedback_out_69),
        .in_feedback_valid_in_69(i_llvm_fpga_push_i32_mul107_push69_conv2d1x159_out_feedback_valid_out_69),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg39_q),
        .out_data_out(i_llvm_fpga_pop_i32_mul107_pop69_conv2d1x158_out_data_out),
        .out_feedback_stall_out_69(i_llvm_fpga_pop_i32_mul107_pop69_conv2d1x158_out_feedback_stall_out_69),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg37(REG,184)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg37_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg37_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg38(REG,185)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg38_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg38_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_f32_spec_select336103_push67_conv2d1x157(BLACKBOX,121)@2
    // out out_feedback_out_67@20000000
    // out out_feedback_valid_out_67@20000000
    conv2d1x1_i_llvm_fpga_push_f32_spec_select336103_push67_0 thei_llvm_fpga_push_f32_spec_select336103_push67_conv2d1x157 (
        .in_data_in(i_llvm_fpga_pop_f32_spec_select336103_pop67_conv2d1x156_out_data_out),
        .in_fanout_adaptor854(i_llvm_fpga_fanout_i1_fanout_adaptor854_conv2d1x112_q),
        .in_feedback_stall_in_67(i_llvm_fpga_pop_f32_spec_select336103_pop67_conv2d1x156_out_feedback_stall_out_67),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg38_q),
        .out_data_out(),
        .out_feedback_out_67(i_llvm_fpga_push_f32_spec_select336103_push67_conv2d1x157_out_feedback_out_67),
        .out_feedback_valid_out_67(i_llvm_fpga_push_f32_spec_select336103_push67_conv2d1x157_out_feedback_valid_out_67),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_f32_spec_select336103_pop67_conv2d1x156(BLACKBOX,93)@2
    // out out_feedback_stall_out_67@20000000
    conv2d1x1_i_llvm_fpga_pop_f32_spec_select336103_pop67_0 thei_llvm_fpga_pop_f32_spec_select336103_pop67_conv2d1x156 (
        .in_data_in(redist20_sync_together198_aunroll_x_in_c0_eni44_21_tpl_1_q),
        .in_dir(i_llvm_fpga_fanout_i1_c0_ene2435_fanout_adaptor852_conv2d1x12_q),
        .in_feedback_in_67(i_llvm_fpga_push_f32_spec_select336103_push67_conv2d1x157_out_feedback_out_67),
        .in_feedback_valid_in_67(i_llvm_fpga_push_f32_spec_select336103_push67_conv2d1x157_out_feedback_valid_out_67),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg37_q),
        .out_data_out(i_llvm_fpga_pop_f32_spec_select336103_pop67_conv2d1x156_out_data_out),
        .out_feedback_stall_out_67(i_llvm_fpga_pop_f32_spec_select336103_pop67_conv2d1x156_out_feedback_stall_out_67),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg35(REG,182)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg35_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg35_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg36(REG,183)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg36_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg36_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_f32_spec_select335100_push66_conv2d1x155(BLACKBOX,120)@2
    // out out_feedback_out_66@20000000
    // out out_feedback_valid_out_66@20000000
    conv2d1x1_i_llvm_fpga_push_f32_spec_select335100_push66_0 thei_llvm_fpga_push_f32_spec_select335100_push66_conv2d1x155 (
        .in_data_in(i_llvm_fpga_pop_f32_spec_select335100_pop66_conv2d1x154_out_data_out),
        .in_fanout_adaptor854(i_llvm_fpga_fanout_i1_fanout_adaptor854_conv2d1x112_q),
        .in_feedback_stall_in_66(i_llvm_fpga_pop_f32_spec_select335100_pop66_conv2d1x154_out_feedback_stall_out_66),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg36_q),
        .out_data_out(),
        .out_feedback_out_66(i_llvm_fpga_push_f32_spec_select335100_push66_conv2d1x155_out_feedback_out_66),
        .out_feedback_valid_out_66(i_llvm_fpga_push_f32_spec_select335100_push66_conv2d1x155_out_feedback_valid_out_66),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_f32_spec_select335100_pop66_conv2d1x154(BLACKBOX,92)@2
    // out out_feedback_stall_out_66@20000000
    conv2d1x1_i_llvm_fpga_pop_f32_spec_select335100_pop66_0 thei_llvm_fpga_pop_f32_spec_select335100_pop66_conv2d1x154 (
        .in_data_in(redist19_sync_together198_aunroll_x_in_c0_eni44_20_tpl_1_q),
        .in_dir(i_llvm_fpga_fanout_i1_c0_ene2435_fanout_adaptor852_conv2d1x12_q),
        .in_feedback_in_66(i_llvm_fpga_push_f32_spec_select335100_push66_conv2d1x155_out_feedback_out_66),
        .in_feedback_valid_in_66(i_llvm_fpga_push_f32_spec_select335100_push66_conv2d1x155_out_feedback_valid_out_66),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg35_q),
        .out_data_out(i_llvm_fpga_pop_f32_spec_select335100_pop66_conv2d1x154_out_data_out),
        .out_feedback_stall_out_66(i_llvm_fpga_pop_f32_spec_select335100_pop66_conv2d1x154_out_feedback_stall_out_66),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg33(REG,180)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg33_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg33_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg34(REG,181)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg34_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg34_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_f32_spec_select33497_push65_conv2d1x153(BLACKBOX,119)@2
    // out out_feedback_out_65@20000000
    // out out_feedback_valid_out_65@20000000
    conv2d1x1_i_llvm_fpga_push_f32_spec_select33497_push65_0 thei_llvm_fpga_push_f32_spec_select33497_push65_conv2d1x153 (
        .in_data_in(i_llvm_fpga_pop_f32_spec_select33497_pop65_conv2d1x152_out_data_out),
        .in_fanout_adaptor854(i_llvm_fpga_fanout_i1_fanout_adaptor854_conv2d1x112_q),
        .in_feedback_stall_in_65(i_llvm_fpga_pop_f32_spec_select33497_pop65_conv2d1x152_out_feedback_stall_out_65),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg34_q),
        .out_data_out(),
        .out_feedback_out_65(i_llvm_fpga_push_f32_spec_select33497_push65_conv2d1x153_out_feedback_out_65),
        .out_feedback_valid_out_65(i_llvm_fpga_push_f32_spec_select33497_push65_conv2d1x153_out_feedback_valid_out_65),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_f32_spec_select33497_pop65_conv2d1x152(BLACKBOX,91)@2
    // out out_feedback_stall_out_65@20000000
    conv2d1x1_i_llvm_fpga_pop_f32_spec_select33497_pop65_0 thei_llvm_fpga_pop_f32_spec_select33497_pop65_conv2d1x152 (
        .in_data_in(redist18_sync_together198_aunroll_x_in_c0_eni44_19_tpl_1_q),
        .in_dir(i_llvm_fpga_fanout_i1_c0_ene2435_fanout_adaptor852_conv2d1x12_q),
        .in_feedback_in_65(i_llvm_fpga_push_f32_spec_select33497_push65_conv2d1x153_out_feedback_out_65),
        .in_feedback_valid_in_65(i_llvm_fpga_push_f32_spec_select33497_push65_conv2d1x153_out_feedback_valid_out_65),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg33_q),
        .out_data_out(i_llvm_fpga_pop_f32_spec_select33497_pop65_conv2d1x152_out_data_out),
        .out_feedback_stall_out_65(i_llvm_fpga_pop_f32_spec_select33497_pop65_conv2d1x152_out_feedback_stall_out_65),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg31(REG,178)@1 + 1
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

    // valid_fanout_reg32(REG,179)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg32_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg32_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_f32_spec_select33394_push64_conv2d1x151(BLACKBOX,118)@2
    // out out_feedback_out_64@20000000
    // out out_feedback_valid_out_64@20000000
    conv2d1x1_i_llvm_fpga_push_f32_spec_select33394_push64_0 thei_llvm_fpga_push_f32_spec_select33394_push64_conv2d1x151 (
        .in_data_in(i_llvm_fpga_pop_f32_spec_select33394_pop64_conv2d1x150_out_data_out),
        .in_fanout_adaptor854(i_llvm_fpga_fanout_i1_fanout_adaptor854_conv2d1x112_q),
        .in_feedback_stall_in_64(i_llvm_fpga_pop_f32_spec_select33394_pop64_conv2d1x150_out_feedback_stall_out_64),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg32_q),
        .out_data_out(),
        .out_feedback_out_64(i_llvm_fpga_push_f32_spec_select33394_push64_conv2d1x151_out_feedback_out_64),
        .out_feedback_valid_out_64(i_llvm_fpga_push_f32_spec_select33394_push64_conv2d1x151_out_feedback_valid_out_64),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_f32_spec_select33394_pop64_conv2d1x150(BLACKBOX,90)@2
    // out out_feedback_stall_out_64@20000000
    conv2d1x1_i_llvm_fpga_pop_f32_spec_select33394_pop64_0 thei_llvm_fpga_pop_f32_spec_select33394_pop64_conv2d1x150 (
        .in_data_in(redist17_sync_together198_aunroll_x_in_c0_eni44_18_tpl_1_q),
        .in_dir(i_llvm_fpga_fanout_i1_c0_ene2435_fanout_adaptor852_conv2d1x12_q),
        .in_feedback_in_64(i_llvm_fpga_push_f32_spec_select33394_push64_conv2d1x151_out_feedback_out_64),
        .in_feedback_valid_in_64(i_llvm_fpga_push_f32_spec_select33394_push64_conv2d1x151_out_feedback_valid_out_64),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg31_q),
        .out_data_out(i_llvm_fpga_pop_f32_spec_select33394_pop64_conv2d1x150_out_data_out),
        .out_feedback_stall_out_64(i_llvm_fpga_pop_f32_spec_select33394_pop64_conv2d1x150_out_feedback_stall_out_64),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg29(REG,176)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg29_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg29_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg30(REG,177)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg30_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg30_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_fanout_i1_fanout_adaptor853_conv2d1x113(REG,75)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_llvm_fpga_fanout_i1_fanout_adaptor853_conv2d1x113_q <= $unsigned(1'b0);
        end
        else
        begin
            i_llvm_fpga_fanout_i1_fanout_adaptor853_conv2d1x113_q <= i_unnamed_conv2d1x111_q;
        end
    end

    // i_llvm_fpga_push_f32_spec_select33291_push63_conv2d1x149(BLACKBOX,117)@2
    // out out_feedback_out_63@20000000
    // out out_feedback_valid_out_63@20000000
    conv2d1x1_i_llvm_fpga_push_f32_spec_select33291_push63_0 thei_llvm_fpga_push_f32_spec_select33291_push63_conv2d1x149 (
        .in_data_in(i_llvm_fpga_pop_f32_spec_select33291_pop63_conv2d1x148_out_data_out),
        .in_fanout_adaptor853(i_llvm_fpga_fanout_i1_fanout_adaptor853_conv2d1x113_q),
        .in_feedback_stall_in_63(i_llvm_fpga_pop_f32_spec_select33291_pop63_conv2d1x148_out_feedback_stall_out_63),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg30_q),
        .out_data_out(),
        .out_feedback_out_63(i_llvm_fpga_push_f32_spec_select33291_push63_conv2d1x149_out_feedback_out_63),
        .out_feedback_valid_out_63(i_llvm_fpga_push_f32_spec_select33291_push63_conv2d1x149_out_feedback_valid_out_63),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_fanout_i1_c0_ene2435_fanout_adaptor_conv2d1x13(REG,74)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_llvm_fpga_fanout_i1_c0_ene2435_fanout_adaptor_conv2d1x13_q <= $unsigned(1'b0);
        end
        else
        begin
            i_llvm_fpga_fanout_i1_c0_ene2435_fanout_adaptor_conv2d1x13_q <= in_c0_eni44_2_tpl;
        end
    end

    // i_llvm_fpga_pop_f32_spec_select33291_pop63_conv2d1x148(BLACKBOX,89)@2
    // out out_feedback_stall_out_63@20000000
    conv2d1x1_i_llvm_fpga_pop_f32_spec_select33291_pop63_0 thei_llvm_fpga_pop_f32_spec_select33291_pop63_conv2d1x148 (
        .in_data_in(redist16_sync_together198_aunroll_x_in_c0_eni44_17_tpl_1_q),
        .in_dir(i_llvm_fpga_fanout_i1_c0_ene2435_fanout_adaptor_conv2d1x13_q),
        .in_feedback_in_63(i_llvm_fpga_push_f32_spec_select33291_push63_conv2d1x149_out_feedback_out_63),
        .in_feedback_valid_in_63(i_llvm_fpga_push_f32_spec_select33291_push63_conv2d1x149_out_feedback_valid_out_63),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg29_q),
        .out_data_out(i_llvm_fpga_pop_f32_spec_select33291_pop63_conv2d1x148_out_data_out),
        .out_feedback_stall_out_63(i_llvm_fpga_pop_f32_spec_select33291_pop63_conv2d1x148_out_feedback_stall_out_63),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg27(REG,174)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg27_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg27_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg28(REG,175)@1 + 1
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

    // i_llvm_fpga_push_f32_spec_select33188_push62_conv2d1x147(BLACKBOX,116)@2
    // out out_feedback_out_62@20000000
    // out out_feedback_valid_out_62@20000000
    conv2d1x1_i_llvm_fpga_push_f32_spec_select33188_push62_0 thei_llvm_fpga_push_f32_spec_select33188_push62_conv2d1x147 (
        .in_data_in(i_llvm_fpga_pop_f32_spec_select33188_pop62_conv2d1x146_out_data_out),
        .in_fanout_adaptor853(i_llvm_fpga_fanout_i1_fanout_adaptor853_conv2d1x113_q),
        .in_feedback_stall_in_62(i_llvm_fpga_pop_f32_spec_select33188_pop62_conv2d1x146_out_feedback_stall_out_62),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg28_q),
        .out_data_out(),
        .out_feedback_out_62(i_llvm_fpga_push_f32_spec_select33188_push62_conv2d1x147_out_feedback_out_62),
        .out_feedback_valid_out_62(i_llvm_fpga_push_f32_spec_select33188_push62_conv2d1x147_out_feedback_valid_out_62),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_f32_spec_select33188_pop62_conv2d1x146(BLACKBOX,88)@2
    // out out_feedback_stall_out_62@20000000
    conv2d1x1_i_llvm_fpga_pop_f32_spec_select33188_pop62_0 thei_llvm_fpga_pop_f32_spec_select33188_pop62_conv2d1x146 (
        .in_data_in(redist15_sync_together198_aunroll_x_in_c0_eni44_16_tpl_1_q),
        .in_dir(i_llvm_fpga_fanout_i1_c0_ene2435_fanout_adaptor_conv2d1x13_q),
        .in_feedback_in_62(i_llvm_fpga_push_f32_spec_select33188_push62_conv2d1x147_out_feedback_out_62),
        .in_feedback_valid_in_62(i_llvm_fpga_push_f32_spec_select33188_push62_conv2d1x147_out_feedback_valid_out_62),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg27_q),
        .out_data_out(i_llvm_fpga_pop_f32_spec_select33188_pop62_conv2d1x146_out_data_out),
        .out_feedback_stall_out_62(i_llvm_fpga_pop_f32_spec_select33188_pop62_conv2d1x146_out_feedback_stall_out_62),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg25(REG,172)@1 + 1
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

    // valid_fanout_reg26(REG,173)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg26_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg26_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_f32_spec_select33085_push61_conv2d1x145(BLACKBOX,115)@2
    // out out_feedback_out_61@20000000
    // out out_feedback_valid_out_61@20000000
    conv2d1x1_i_llvm_fpga_push_f32_spec_select33085_push61_0 thei_llvm_fpga_push_f32_spec_select33085_push61_conv2d1x145 (
        .in_data_in(i_llvm_fpga_pop_f32_spec_select33085_pop61_conv2d1x144_out_data_out),
        .in_fanout_adaptor853(i_llvm_fpga_fanout_i1_fanout_adaptor853_conv2d1x113_q),
        .in_feedback_stall_in_61(i_llvm_fpga_pop_f32_spec_select33085_pop61_conv2d1x144_out_feedback_stall_out_61),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg26_q),
        .out_data_out(),
        .out_feedback_out_61(i_llvm_fpga_push_f32_spec_select33085_push61_conv2d1x145_out_feedback_out_61),
        .out_feedback_valid_out_61(i_llvm_fpga_push_f32_spec_select33085_push61_conv2d1x145_out_feedback_valid_out_61),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_f32_spec_select33085_pop61_conv2d1x144(BLACKBOX,87)@2
    // out out_feedback_stall_out_61@20000000
    conv2d1x1_i_llvm_fpga_pop_f32_spec_select33085_pop61_0 thei_llvm_fpga_pop_f32_spec_select33085_pop61_conv2d1x144 (
        .in_data_in(redist14_sync_together198_aunroll_x_in_c0_eni44_15_tpl_1_q),
        .in_dir(i_llvm_fpga_fanout_i1_c0_ene2435_fanout_adaptor_conv2d1x13_q),
        .in_feedback_in_61(i_llvm_fpga_push_f32_spec_select33085_push61_conv2d1x145_out_feedback_out_61),
        .in_feedback_valid_in_61(i_llvm_fpga_push_f32_spec_select33085_push61_conv2d1x145_out_feedback_valid_out_61),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg25_q),
        .out_data_out(i_llvm_fpga_pop_f32_spec_select33085_pop61_conv2d1x144_out_data_out),
        .out_feedback_stall_out_61(i_llvm_fpga_pop_f32_spec_select33085_pop61_conv2d1x144_out_feedback_stall_out_61),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg23(REG,170)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg23_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg23_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg24(REG,171)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg24_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg24_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_f32_spec_select32982_push60_conv2d1x143(BLACKBOX,114)@2
    // out out_feedback_out_60@20000000
    // out out_feedback_valid_out_60@20000000
    conv2d1x1_i_llvm_fpga_push_f32_spec_select32982_push60_0 thei_llvm_fpga_push_f32_spec_select32982_push60_conv2d1x143 (
        .in_data_in(i_llvm_fpga_pop_f32_spec_select32982_pop60_conv2d1x142_out_data_out),
        .in_fanout_adaptor853(i_llvm_fpga_fanout_i1_fanout_adaptor853_conv2d1x113_q),
        .in_feedback_stall_in_60(i_llvm_fpga_pop_f32_spec_select32982_pop60_conv2d1x142_out_feedback_stall_out_60),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg24_q),
        .out_data_out(),
        .out_feedback_out_60(i_llvm_fpga_push_f32_spec_select32982_push60_conv2d1x143_out_feedback_out_60),
        .out_feedback_valid_out_60(i_llvm_fpga_push_f32_spec_select32982_push60_conv2d1x143_out_feedback_valid_out_60),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_f32_spec_select32982_pop60_conv2d1x142(BLACKBOX,86)@2
    // out out_feedback_stall_out_60@20000000
    conv2d1x1_i_llvm_fpga_pop_f32_spec_select32982_pop60_0 thei_llvm_fpga_pop_f32_spec_select32982_pop60_conv2d1x142 (
        .in_data_in(redist13_sync_together198_aunroll_x_in_c0_eni44_14_tpl_1_q),
        .in_dir(i_llvm_fpga_fanout_i1_c0_ene2435_fanout_adaptor_conv2d1x13_q),
        .in_feedback_in_60(i_llvm_fpga_push_f32_spec_select32982_push60_conv2d1x143_out_feedback_out_60),
        .in_feedback_valid_in_60(i_llvm_fpga_push_f32_spec_select32982_push60_conv2d1x143_out_feedback_valid_out_60),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg23_q),
        .out_data_out(i_llvm_fpga_pop_f32_spec_select32982_pop60_conv2d1x142_out_data_out),
        .out_feedback_stall_out_60(i_llvm_fpga_pop_f32_spec_select32982_pop60_conv2d1x142_out_feedback_stall_out_60),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg21(REG,168)@1 + 1
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

    // valid_fanout_reg22(REG,169)@1 + 1
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

    // i_llvm_fpga_push_f32_spec_select32879_push59_conv2d1x141(BLACKBOX,113)@2
    // out out_feedback_out_59@20000000
    // out out_feedback_valid_out_59@20000000
    conv2d1x1_i_llvm_fpga_push_f32_spec_select32879_push59_0 thei_llvm_fpga_push_f32_spec_select32879_push59_conv2d1x141 (
        .in_data_in(i_llvm_fpga_pop_f32_spec_select32879_pop59_conv2d1x140_out_data_out),
        .in_fanout_adaptor853(i_llvm_fpga_fanout_i1_fanout_adaptor853_conv2d1x113_q),
        .in_feedback_stall_in_59(i_llvm_fpga_pop_f32_spec_select32879_pop59_conv2d1x140_out_feedback_stall_out_59),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg22_q),
        .out_data_out(),
        .out_feedback_out_59(i_llvm_fpga_push_f32_spec_select32879_push59_conv2d1x141_out_feedback_out_59),
        .out_feedback_valid_out_59(i_llvm_fpga_push_f32_spec_select32879_push59_conv2d1x141_out_feedback_valid_out_59),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_f32_spec_select32879_pop59_conv2d1x140(BLACKBOX,85)@2
    // out out_feedback_stall_out_59@20000000
    conv2d1x1_i_llvm_fpga_pop_f32_spec_select32879_pop59_0 thei_llvm_fpga_pop_f32_spec_select32879_pop59_conv2d1x140 (
        .in_data_in(redist12_sync_together198_aunroll_x_in_c0_eni44_13_tpl_1_q),
        .in_dir(i_llvm_fpga_fanout_i1_c0_ene2435_fanout_adaptor_conv2d1x13_q),
        .in_feedback_in_59(i_llvm_fpga_push_f32_spec_select32879_push59_conv2d1x141_out_feedback_out_59),
        .in_feedback_valid_in_59(i_llvm_fpga_push_f32_spec_select32879_push59_conv2d1x141_out_feedback_valid_out_59),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg21_q),
        .out_data_out(i_llvm_fpga_pop_f32_spec_select32879_pop59_conv2d1x140_out_data_out),
        .out_feedback_stall_out_59(i_llvm_fpga_pop_f32_spec_select32879_pop59_conv2d1x140_out_feedback_stall_out_59),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg19(REG,166)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg19_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg19_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg20(REG,167)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg20_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg20_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_f32_spec_select32776_push58_conv2d1x139(BLACKBOX,112)@2
    // out out_feedback_out_58@20000000
    // out out_feedback_valid_out_58@20000000
    conv2d1x1_i_llvm_fpga_push_f32_spec_select32776_push58_0 thei_llvm_fpga_push_f32_spec_select32776_push58_conv2d1x139 (
        .in_data_in(i_llvm_fpga_pop_f32_spec_select32776_pop58_conv2d1x138_out_data_out),
        .in_fanout_adaptor853(i_llvm_fpga_fanout_i1_fanout_adaptor853_conv2d1x113_q),
        .in_feedback_stall_in_58(i_llvm_fpga_pop_f32_spec_select32776_pop58_conv2d1x138_out_feedback_stall_out_58),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg20_q),
        .out_data_out(),
        .out_feedback_out_58(i_llvm_fpga_push_f32_spec_select32776_push58_conv2d1x139_out_feedback_out_58),
        .out_feedback_valid_out_58(i_llvm_fpga_push_f32_spec_select32776_push58_conv2d1x139_out_feedback_valid_out_58),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_f32_spec_select32776_pop58_conv2d1x138(BLACKBOX,84)@2
    // out out_feedback_stall_out_58@20000000
    conv2d1x1_i_llvm_fpga_pop_f32_spec_select32776_pop58_0 thei_llvm_fpga_pop_f32_spec_select32776_pop58_conv2d1x138 (
        .in_data_in(redist11_sync_together198_aunroll_x_in_c0_eni44_12_tpl_1_q),
        .in_dir(i_llvm_fpga_fanout_i1_c0_ene2435_fanout_adaptor_conv2d1x13_q),
        .in_feedback_in_58(i_llvm_fpga_push_f32_spec_select32776_push58_conv2d1x139_out_feedback_out_58),
        .in_feedback_valid_in_58(i_llvm_fpga_push_f32_spec_select32776_push58_conv2d1x139_out_feedback_valid_out_58),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg19_q),
        .out_data_out(i_llvm_fpga_pop_f32_spec_select32776_pop58_conv2d1x138_out_data_out),
        .out_feedback_stall_out_58(i_llvm_fpga_pop_f32_spec_select32776_pop58_conv2d1x138_out_feedback_stall_out_58),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg17(REG,164)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg17_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg17_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg18(REG,165)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg18_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg18_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_f32_spec_select32673_push57_conv2d1x137(BLACKBOX,111)@2
    // out out_feedback_out_57@20000000
    // out out_feedback_valid_out_57@20000000
    conv2d1x1_i_llvm_fpga_push_f32_spec_select32673_push57_0 thei_llvm_fpga_push_f32_spec_select32673_push57_conv2d1x137 (
        .in_data_in(i_llvm_fpga_pop_f32_spec_select32673_pop57_conv2d1x136_out_data_out),
        .in_fanout_adaptor853(i_llvm_fpga_fanout_i1_fanout_adaptor853_conv2d1x113_q),
        .in_feedback_stall_in_57(i_llvm_fpga_pop_f32_spec_select32673_pop57_conv2d1x136_out_feedback_stall_out_57),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg18_q),
        .out_data_out(),
        .out_feedback_out_57(i_llvm_fpga_push_f32_spec_select32673_push57_conv2d1x137_out_feedback_out_57),
        .out_feedback_valid_out_57(i_llvm_fpga_push_f32_spec_select32673_push57_conv2d1x137_out_feedback_valid_out_57),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_f32_spec_select32673_pop57_conv2d1x136(BLACKBOX,83)@2
    // out out_feedback_stall_out_57@20000000
    conv2d1x1_i_llvm_fpga_pop_f32_spec_select32673_pop57_0 thei_llvm_fpga_pop_f32_spec_select32673_pop57_conv2d1x136 (
        .in_data_in(redist10_sync_together198_aunroll_x_in_c0_eni44_11_tpl_1_q),
        .in_dir(i_llvm_fpga_fanout_i1_c0_ene2435_fanout_adaptor_conv2d1x13_q),
        .in_feedback_in_57(i_llvm_fpga_push_f32_spec_select32673_push57_conv2d1x137_out_feedback_out_57),
        .in_feedback_valid_in_57(i_llvm_fpga_push_f32_spec_select32673_push57_conv2d1x137_out_feedback_valid_out_57),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg17_q),
        .out_data_out(i_llvm_fpga_pop_f32_spec_select32673_pop57_conv2d1x136_out_data_out),
        .out_feedback_stall_out_57(i_llvm_fpga_pop_f32_spec_select32673_pop57_conv2d1x136_out_feedback_stall_out_57),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg15(REG,162)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg15_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg15_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg16(REG,163)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg16_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg16_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_f32_spec_select32570_push56_conv2d1x135(BLACKBOX,110)@2
    // out out_feedback_out_56@20000000
    // out out_feedback_valid_out_56@20000000
    conv2d1x1_i_llvm_fpga_push_f32_spec_select32570_push56_0 thei_llvm_fpga_push_f32_spec_select32570_push56_conv2d1x135 (
        .in_data_in(i_llvm_fpga_pop_f32_spec_select32570_pop56_conv2d1x134_out_data_out),
        .in_fanout_adaptor853(i_llvm_fpga_fanout_i1_fanout_adaptor853_conv2d1x113_q),
        .in_feedback_stall_in_56(i_llvm_fpga_pop_f32_spec_select32570_pop56_conv2d1x134_out_feedback_stall_out_56),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg16_q),
        .out_data_out(),
        .out_feedback_out_56(i_llvm_fpga_push_f32_spec_select32570_push56_conv2d1x135_out_feedback_out_56),
        .out_feedback_valid_out_56(i_llvm_fpga_push_f32_spec_select32570_push56_conv2d1x135_out_feedback_valid_out_56),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_f32_spec_select32570_pop56_conv2d1x134(BLACKBOX,82)@2
    // out out_feedback_stall_out_56@20000000
    conv2d1x1_i_llvm_fpga_pop_f32_spec_select32570_pop56_0 thei_llvm_fpga_pop_f32_spec_select32570_pop56_conv2d1x134 (
        .in_data_in(redist9_sync_together198_aunroll_x_in_c0_eni44_10_tpl_1_q),
        .in_dir(i_llvm_fpga_fanout_i1_c0_ene2435_fanout_adaptor_conv2d1x13_q),
        .in_feedback_in_56(i_llvm_fpga_push_f32_spec_select32570_push56_conv2d1x135_out_feedback_out_56),
        .in_feedback_valid_in_56(i_llvm_fpga_push_f32_spec_select32570_push56_conv2d1x135_out_feedback_valid_out_56),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg15_q),
        .out_data_out(i_llvm_fpga_pop_f32_spec_select32570_pop56_conv2d1x134_out_data_out),
        .out_feedback_stall_out_56(i_llvm_fpga_pop_f32_spec_select32570_pop56_conv2d1x134_out_feedback_stall_out_56),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg13(REG,160)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg13_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg13_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg14(REG,161)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg14_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg14_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_f32_spec_select32467_push55_conv2d1x133(BLACKBOX,109)@2
    // out out_feedback_out_55@20000000
    // out out_feedback_valid_out_55@20000000
    conv2d1x1_i_llvm_fpga_push_f32_spec_select32467_push55_0 thei_llvm_fpga_push_f32_spec_select32467_push55_conv2d1x133 (
        .in_data_in(i_llvm_fpga_pop_f32_spec_select32467_pop55_conv2d1x132_out_data_out),
        .in_fanout_adaptor853(i_llvm_fpga_fanout_i1_fanout_adaptor853_conv2d1x113_q),
        .in_feedback_stall_in_55(i_llvm_fpga_pop_f32_spec_select32467_pop55_conv2d1x132_out_feedback_stall_out_55),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg14_q),
        .out_data_out(),
        .out_feedback_out_55(i_llvm_fpga_push_f32_spec_select32467_push55_conv2d1x133_out_feedback_out_55),
        .out_feedback_valid_out_55(i_llvm_fpga_push_f32_spec_select32467_push55_conv2d1x133_out_feedback_valid_out_55),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_f32_spec_select32467_pop55_conv2d1x132(BLACKBOX,81)@2
    // out out_feedback_stall_out_55@20000000
    conv2d1x1_i_llvm_fpga_pop_f32_spec_select32467_pop55_0 thei_llvm_fpga_pop_f32_spec_select32467_pop55_conv2d1x132 (
        .in_data_in(redist8_sync_together198_aunroll_x_in_c0_eni44_9_tpl_1_q),
        .in_dir(i_llvm_fpga_fanout_i1_c0_ene2435_fanout_adaptor_conv2d1x13_q),
        .in_feedback_in_55(i_llvm_fpga_push_f32_spec_select32467_push55_conv2d1x133_out_feedback_out_55),
        .in_feedback_valid_in_55(i_llvm_fpga_push_f32_spec_select32467_push55_conv2d1x133_out_feedback_valid_out_55),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg13_q),
        .out_data_out(i_llvm_fpga_pop_f32_spec_select32467_pop55_conv2d1x132_out_data_out),
        .out_feedback_stall_out_55(i_llvm_fpga_pop_f32_spec_select32467_pop55_conv2d1x132_out_feedback_stall_out_55),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg11(REG,158)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg11_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg11_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg12(REG,159)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg12_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg12_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_f32_spec_select32364_push54_conv2d1x131(BLACKBOX,108)@2
    // out out_feedback_out_54@20000000
    // out out_feedback_valid_out_54@20000000
    conv2d1x1_i_llvm_fpga_push_f32_spec_select32364_push54_0 thei_llvm_fpga_push_f32_spec_select32364_push54_conv2d1x131 (
        .in_data_in(i_llvm_fpga_pop_f32_spec_select32364_pop54_conv2d1x130_out_data_out),
        .in_fanout_adaptor853(i_llvm_fpga_fanout_i1_fanout_adaptor853_conv2d1x113_q),
        .in_feedback_stall_in_54(i_llvm_fpga_pop_f32_spec_select32364_pop54_conv2d1x130_out_feedback_stall_out_54),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg12_q),
        .out_data_out(),
        .out_feedback_out_54(i_llvm_fpga_push_f32_spec_select32364_push54_conv2d1x131_out_feedback_out_54),
        .out_feedback_valid_out_54(i_llvm_fpga_push_f32_spec_select32364_push54_conv2d1x131_out_feedback_valid_out_54),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_f32_spec_select32364_pop54_conv2d1x130(BLACKBOX,80)@2
    // out out_feedback_stall_out_54@20000000
    conv2d1x1_i_llvm_fpga_pop_f32_spec_select32364_pop54_0 thei_llvm_fpga_pop_f32_spec_select32364_pop54_conv2d1x130 (
        .in_data_in(redist7_sync_together198_aunroll_x_in_c0_eni44_8_tpl_1_q),
        .in_dir(i_llvm_fpga_fanout_i1_c0_ene2435_fanout_adaptor_conv2d1x13_q),
        .in_feedback_in_54(i_llvm_fpga_push_f32_spec_select32364_push54_conv2d1x131_out_feedback_out_54),
        .in_feedback_valid_in_54(i_llvm_fpga_push_f32_spec_select32364_push54_conv2d1x131_out_feedback_valid_out_54),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg11_q),
        .out_data_out(i_llvm_fpga_pop_f32_spec_select32364_pop54_conv2d1x130_out_data_out),
        .out_feedback_stall_out_54(i_llvm_fpga_pop_f32_spec_select32364_pop54_conv2d1x130_out_feedback_stall_out_54),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg9(REG,156)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg9_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg9_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg10(REG,157)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg10_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg10_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_f32_push53_conv2d1x129(BLACKBOX,107)@2
    // out out_feedback_out_53@20000000
    // out out_feedback_valid_out_53@20000000
    conv2d1x1_i_llvm_fpga_push_f32_push53_0 thei_llvm_fpga_push_f32_push53_conv2d1x129 (
        .in_data_in(i_llvm_fpga_pop_f32_pop53_conv2d1x128_out_data_out),
        .in_fanout_adaptor853(i_llvm_fpga_fanout_i1_fanout_adaptor853_conv2d1x113_q),
        .in_feedback_stall_in_53(i_llvm_fpga_pop_f32_pop53_conv2d1x128_out_feedback_stall_out_53),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg10_q),
        .out_data_out(),
        .out_feedback_out_53(i_llvm_fpga_push_f32_push53_conv2d1x129_out_feedback_out_53),
        .out_feedback_valid_out_53(i_llvm_fpga_push_f32_push53_conv2d1x129_out_feedback_valid_out_53),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_f32_pop53_conv2d1x128(BLACKBOX,79)@2
    // out out_feedback_stall_out_53@20000000
    conv2d1x1_i_llvm_fpga_pop_f32_pop53_0 thei_llvm_fpga_pop_f32_pop53_conv2d1x128 (
        .in_data_in(redist6_sync_together198_aunroll_x_in_c0_eni44_7_tpl_1_q),
        .in_dir(i_llvm_fpga_fanout_i1_c0_ene2435_fanout_adaptor_conv2d1x13_q),
        .in_feedback_in_53(i_llvm_fpga_push_f32_push53_conv2d1x129_out_feedback_out_53),
        .in_feedback_valid_in_53(i_llvm_fpga_push_f32_push53_conv2d1x129_out_feedback_valid_out_53),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg9_q),
        .out_data_out(i_llvm_fpga_pop_f32_pop53_conv2d1x128_out_data_out),
        .out_feedback_stall_out_53(i_llvm_fpga_pop_f32_pop53_conv2d1x128_out_feedback_stall_out_53),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg7(REG,154)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg7_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg7_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg8(REG,155)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg8_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg8_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_f32_spec_select61_push52_conv2d1x127(BLACKBOX,122)@2
    // out out_feedback_out_52@20000000
    // out out_feedback_valid_out_52@20000000
    conv2d1x1_i_llvm_fpga_push_f32_spec_select61_push52_0 thei_llvm_fpga_push_f32_spec_select61_push52_conv2d1x127 (
        .in_data_in(i_llvm_fpga_pop_f32_spec_select61_pop52_conv2d1x126_out_data_out),
        .in_fanout_adaptor853(i_llvm_fpga_fanout_i1_fanout_adaptor853_conv2d1x113_q),
        .in_feedback_stall_in_52(i_llvm_fpga_pop_f32_spec_select61_pop52_conv2d1x126_out_feedback_stall_out_52),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg8_q),
        .out_data_out(),
        .out_feedback_out_52(i_llvm_fpga_push_f32_spec_select61_push52_conv2d1x127_out_feedback_out_52),
        .out_feedback_valid_out_52(i_llvm_fpga_push_f32_spec_select61_push52_conv2d1x127_out_feedback_valid_out_52),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_f32_spec_select61_pop52_conv2d1x126(BLACKBOX,94)@2
    // out out_feedback_stall_out_52@20000000
    conv2d1x1_i_llvm_fpga_pop_f32_spec_select61_pop52_0 thei_llvm_fpga_pop_f32_spec_select61_pop52_conv2d1x126 (
        .in_data_in(redist5_sync_together198_aunroll_x_in_c0_eni44_6_tpl_1_q),
        .in_dir(i_llvm_fpga_fanout_i1_c0_ene2435_fanout_adaptor_conv2d1x13_q),
        .in_feedback_in_52(i_llvm_fpga_push_f32_spec_select61_push52_conv2d1x127_out_feedback_out_52),
        .in_feedback_valid_in_52(i_llvm_fpga_push_f32_spec_select61_push52_conv2d1x127_out_feedback_valid_out_52),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg7_q),
        .out_data_out(i_llvm_fpga_pop_f32_spec_select61_pop52_conv2d1x126_out_data_out),
        .out_feedback_stall_out_52(i_llvm_fpga_pop_f32_spec_select61_pop52_conv2d1x126_out_feedback_stall_out_52),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg5(REG,152)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg5_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg5_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg6(REG,153)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg6_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg6_q <= $unsigned(in_i_valid);
        end
    end

    // c_i32_1135(CONSTANT,66)
    assign c_i32_1135_q = $unsigned(32'b00000000000000000000000000000001);

    // i_inc102_conv2d1x124(ADD,72)@2
    assign i_inc102_conv2d1x124_a = {1'b0, i_llvm_fpga_pop_i32_ij_067_pop51_conv2d1x123_out_data_out};
    assign i_inc102_conv2d1x124_b = {1'b0, c_i32_1135_q};
    assign i_inc102_conv2d1x124_o = $unsigned(i_inc102_conv2d1x124_a) + $unsigned(i_inc102_conv2d1x124_b);
    assign i_inc102_conv2d1x124_q = i_inc102_conv2d1x124_o[32:0];

    // bgTrunc_i_inc102_conv2d1x124_sel_x(BITSELECT,143)@2
    assign bgTrunc_i_inc102_conv2d1x124_sel_x_b = i_inc102_conv2d1x124_q[31:0];

    // i_llvm_fpga_push_i32_ij_067_push51_conv2d1x125(BLACKBOX,130)@2
    // out out_feedback_out_51@20000000
    // out out_feedback_valid_out_51@20000000
    conv2d1x1_i_llvm_fpga_push_i32_ij_067_push51_0 thei_llvm_fpga_push_i32_ij_067_push51_conv2d1x125 (
        .in_data_in(bgTrunc_i_inc102_conv2d1x124_sel_x_b),
        .in_fanout_adaptor853(i_llvm_fpga_fanout_i1_fanout_adaptor853_conv2d1x113_q),
        .in_feedback_stall_in_51(i_llvm_fpga_pop_i32_ij_067_pop51_conv2d1x123_out_feedback_stall_out_51),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg6_q),
        .out_data_out(),
        .out_feedback_out_51(i_llvm_fpga_push_i32_ij_067_push51_conv2d1x125_out_feedback_out_51),
        .out_feedback_valid_out_51(i_llvm_fpga_push_i32_ij_067_push51_conv2d1x125_out_feedback_valid_out_51),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_0134(CONSTANT,65)
    assign c_i32_0134_q = $unsigned(32'b00000000000000000000000000000000);

    // i_llvm_fpga_pop_i32_ij_067_pop51_conv2d1x123(BLACKBOX,101)@2
    // out out_feedback_stall_out_51@20000000
    conv2d1x1_i_llvm_fpga_pop_i32_ij_067_pop51_0 thei_llvm_fpga_pop_i32_ij_067_pop51_conv2d1x123 (
        .in_data_in(c_i32_0134_q),
        .in_dir(i_llvm_fpga_fanout_i1_c0_ene2435_fanout_adaptor_conv2d1x13_q),
        .in_feedback_in_51(i_llvm_fpga_push_i32_ij_067_push51_conv2d1x125_out_feedback_out_51),
        .in_feedback_valid_in_51(i_llvm_fpga_push_i32_ij_067_push51_conv2d1x125_out_feedback_valid_out_51),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_data_out(i_llvm_fpga_pop_i32_ij_067_pop51_conv2d1x123_out_data_out),
        .out_feedback_stall_out_51(i_llvm_fpga_pop_i32_ij_067_pop51_conv2d1x123_out_feedback_stall_out_51),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_notcmp19_conv2d1x119(LOGICAL,135)@2
    assign i_notcmp19_conv2d1x119_q = i_llvm_fpga_fanout_i1_fanout_adaptor853_conv2d1x113_q ^ VCC_q;

    // i_or_conv2d1x118(LOGICAL,136)@2
    assign i_or_conv2d1x118_q = i_llvm_fpga_fanout_i1_fanout_adaptor854_conv2d1x112_q | i_llvm_fpga_pop_i1_pop76_conv2d1x116_out_data_out;

    // valid_fanout_reg3(REG,150)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg3_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg3_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg4(REG,151)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg4_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg4_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_i1_push76_conv2d1x117(BLACKBOX,129)@2
    // out out_feedback_out_76@20000000
    // out out_feedback_valid_out_76@20000000
    conv2d1x1_i_llvm_fpga_push_i1_push76_0 thei_llvm_fpga_push_i1_push76_conv2d1x117 (
        .in_data_in(i_llvm_fpga_pop_i1_pop76_conv2d1x116_out_data_out),
        .in_fanout_adaptor854(i_llvm_fpga_fanout_i1_fanout_adaptor854_conv2d1x112_q),
        .in_feedback_stall_in_76(i_llvm_fpga_pop_i1_pop76_conv2d1x116_out_feedback_stall_out_76),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_data_out(),
        .out_feedback_out_76(i_llvm_fpga_push_i1_push76_conv2d1x117_out_feedback_out_76),
        .out_feedback_valid_out_76(i_llvm_fpga_push_i1_push76_conv2d1x117_out_feedback_valid_out_76),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i1_pop76_conv2d1x116(BLACKBOX,100)@2
    // out out_feedback_stall_out_76@20000000
    conv2d1x1_i_llvm_fpga_pop_i1_pop76_0 thei_llvm_fpga_pop_i1_pop76_conv2d1x116 (
        .in_data_in(redist4_sync_together198_aunroll_x_in_c0_eni44_5_tpl_1_q),
        .in_dir(i_llvm_fpga_fanout_i1_c0_ene2435_fanout_adaptor852_conv2d1x12_q),
        .in_feedback_in_76(i_llvm_fpga_push_i1_push76_conv2d1x117_out_feedback_out_76),
        .in_feedback_valid_in_76(i_llvm_fpga_push_i1_push76_conv2d1x117_out_feedback_valid_out_76),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_data_out(i_llvm_fpga_pop_i1_pop76_conv2d1x116_out_data_out),
        .out_feedback_stall_out_76(i_llvm_fpga_pop_i1_pop76_conv2d1x116_out_feedback_stall_out_76),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist44_i_unnamed_conv2d1x111_q_1(DELAY,248)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist44_i_unnamed_conv2d1x111_q_1_q <= '0;
        end
        else
        begin
            redist44_i_unnamed_conv2d1x111_q_1_q <= $unsigned(i_unnamed_conv2d1x111_q);
        end
    end

    // redist45_i_llvm_fpga_pop_i1_phi_decision102_xor109_pop72_conv2d1x110_out_data_out_1(DELAY,249)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist45_i_llvm_fpga_pop_i1_phi_decision102_xor109_pop72_conv2d1x110_out_data_out_1_q <= '0;
        end
        else
        begin
            redist45_i_llvm_fpga_pop_i1_phi_decision102_xor109_pop72_conv2d1x110_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i1_phi_decision102_xor109_pop72_conv2d1x110_out_data_out);
        end
    end

    // i_forked59_and_conv2d1x15(LOGICAL,70)@2
    assign i_forked59_and_conv2d1x15_q = i_llvm_fpga_fanout_i1_c0_ene2435_fanout_adaptor_conv2d1x13_q & i_llvm_fpga_pop_i1_forked17105_pop68_conv2d1x14_out_data_out;

    // valid_fanout_reg1(REG,148)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg1_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg1_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg2(REG,149)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg2_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg2_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_i1_forked17105_push68_conv2d1x115(BLACKBOX,123)@2
    // out out_feedback_out_68@20000000
    // out out_feedback_valid_out_68@20000000
    conv2d1x1_i_llvm_fpga_push_i1_forked17105_push68_0 thei_llvm_fpga_push_i1_forked17105_push68_conv2d1x115 (
        .in_data_in(i_llvm_fpga_pop_i1_forked17105_pop68_conv2d1x14_out_data_out),
        .in_fanout_adaptor853(i_llvm_fpga_fanout_i1_fanout_adaptor853_conv2d1x113_q),
        .in_feedback_stall_in_68(i_llvm_fpga_pop_i1_forked17105_pop68_conv2d1x14_out_feedback_stall_out_68),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(),
        .out_feedback_out_68(i_llvm_fpga_push_i1_forked17105_push68_conv2d1x115_out_feedback_out_68),
        .out_feedback_valid_out_68(i_llvm_fpga_push_i1_forked17105_push68_conv2d1x115_out_feedback_valid_out_68),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i1_forked17105_pop68_conv2d1x14(BLACKBOX,95)@2
    // out out_feedback_stall_out_68@20000000
    conv2d1x1_i_llvm_fpga_pop_i1_forked17105_pop68_0 thei_llvm_fpga_pop_i1_forked17105_pop68_conv2d1x14 (
        .in_data_in(redist0_sync_together198_aunroll_x_in_c0_eni44_1_tpl_1_q),
        .in_dir(i_llvm_fpga_fanout_i1_c0_ene2435_fanout_adaptor_conv2d1x13_q),
        .in_feedback_in_68(i_llvm_fpga_push_i1_forked17105_push68_conv2d1x115_out_feedback_out_68),
        .in_feedback_valid_in_68(i_llvm_fpga_push_i1_forked17105_push68_conv2d1x115_out_feedback_valid_out_68),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_data_out(i_llvm_fpga_pop_i1_forked17105_pop68_conv2d1x14_out_data_out),
        .out_feedback_stall_out_68(i_llvm_fpga_pop_i1_forked17105_pop68_conv2d1x14_out_feedback_stall_out_68),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // sync_out_aunroll_x(GPOUT,145)@2
    assign out_c0_exi75_0_tpl = GND_q;
    assign out_c0_exi75_1_tpl = i_llvm_fpga_pop_i1_forked17105_pop68_conv2d1x14_out_data_out;
    assign out_c0_exi75_2_tpl = i_forked59_and_conv2d1x15_q;
    assign out_c0_exi75_3_tpl = redist45_i_llvm_fpga_pop_i1_phi_decision102_xor109_pop72_conv2d1x110_out_data_out_1_q;
    assign out_c0_exi75_4_tpl = redist44_i_unnamed_conv2d1x111_q_1_q;
    assign out_c0_exi75_5_tpl = i_llvm_fpga_pop_i1_pop76_conv2d1x116_out_data_out;
    assign out_c0_exi75_6_tpl = i_or_conv2d1x118_q;
    assign out_c0_exi75_7_tpl = i_notcmp19_conv2d1x119_q;
    assign out_c0_exi75_8_tpl = i_llvm_fpga_pop_i32_ij_067_pop51_conv2d1x123_out_data_out;
    assign out_c0_exi75_9_tpl = i_llvm_fpga_pop_f32_spec_select61_pop52_conv2d1x126_out_data_out;
    assign out_c0_exi75_10_tpl = i_llvm_fpga_pop_f32_pop53_conv2d1x128_out_data_out;
    assign out_c0_exi75_11_tpl = i_llvm_fpga_pop_f32_spec_select32364_pop54_conv2d1x130_out_data_out;
    assign out_c0_exi75_12_tpl = i_llvm_fpga_pop_f32_spec_select32467_pop55_conv2d1x132_out_data_out;
    assign out_c0_exi75_13_tpl = i_llvm_fpga_pop_f32_spec_select32570_pop56_conv2d1x134_out_data_out;
    assign out_c0_exi75_14_tpl = i_llvm_fpga_pop_f32_spec_select32673_pop57_conv2d1x136_out_data_out;
    assign out_c0_exi75_15_tpl = i_llvm_fpga_pop_f32_spec_select32776_pop58_conv2d1x138_out_data_out;
    assign out_c0_exi75_16_tpl = i_llvm_fpga_pop_f32_spec_select32879_pop59_conv2d1x140_out_data_out;
    assign out_c0_exi75_17_tpl = i_llvm_fpga_pop_f32_spec_select32982_pop60_conv2d1x142_out_data_out;
    assign out_c0_exi75_18_tpl = i_llvm_fpga_pop_f32_spec_select33085_pop61_conv2d1x144_out_data_out;
    assign out_c0_exi75_19_tpl = i_llvm_fpga_pop_f32_spec_select33188_pop62_conv2d1x146_out_data_out;
    assign out_c0_exi75_20_tpl = i_llvm_fpga_pop_f32_spec_select33291_pop63_conv2d1x148_out_data_out;
    assign out_c0_exi75_21_tpl = i_llvm_fpga_pop_f32_spec_select33394_pop64_conv2d1x150_out_data_out;
    assign out_c0_exi75_22_tpl = i_llvm_fpga_pop_f32_spec_select33497_pop65_conv2d1x152_out_data_out;
    assign out_c0_exi75_23_tpl = i_llvm_fpga_pop_f32_spec_select335100_pop66_conv2d1x154_out_data_out;
    assign out_c0_exi75_24_tpl = i_llvm_fpga_pop_f32_spec_select336103_pop67_conv2d1x156_out_data_out;
    assign out_c0_exi75_25_tpl = i_llvm_fpga_pop_i32_mul107_pop69_conv2d1x158_out_data_out;
    assign out_c0_exi75_26_tpl = i_llvm_fpga_pop_i1_pop70_conv2d1x160_out_data_out;
    assign out_c0_exi75_27_tpl = i_llvm_fpga_pop_i1_pop71_conv2d1x162_out_data_out;
    assign out_c0_exi75_28_tpl = i_llvm_fpga_pop_f32_lm96111_pop73_conv2d1x164_out_data_out;
    assign out_c0_exi75_29_tpl = i_llvm_fpga_pop_i32_mul21113_pop74_conv2d1x166_out_data_out;
    assign out_c0_exi75_30_tpl = i_llvm_fpga_pop_i32_mul97115_pop75_conv2d1x168_out_data_out;
    assign out_c0_exi75_31_tpl = i_llvm_fpga_pop_i1_notcmp24117_pop77_conv2d1x170_out_data_out;
    assign out_c0_exi75_32_tpl = redist1_sync_together198_aunroll_x_in_c0_eni44_2_tpl_1_q;
    assign out_c0_exi75_33_tpl = redist28_sync_together198_aunroll_x_in_c0_eni44_29_tpl_1_q;
    assign out_c0_exi75_34_tpl = redist29_sync_together198_aunroll_x_in_c0_eni44_30_tpl_1_q;
    assign out_c0_exi75_35_tpl = redist30_sync_together198_aunroll_x_in_c0_eni44_31_tpl_1_q;
    assign out_c0_exi75_36_tpl = redist31_sync_together198_aunroll_x_in_c0_eni44_32_tpl_1_q;
    assign out_c0_exi75_37_tpl = redist32_sync_together198_aunroll_x_in_c0_eni44_33_tpl_1_q;
    assign out_c0_exi75_38_tpl = redist33_sync_together198_aunroll_x_in_c0_eni44_34_tpl_1_q;
    assign out_c0_exi75_39_tpl = redist34_sync_together198_aunroll_x_in_c0_eni44_35_tpl_1_q;
    assign out_c0_exi75_40_tpl = redist35_sync_together198_aunroll_x_in_c0_eni44_36_tpl_1_q;
    assign out_c0_exi75_41_tpl = redist36_sync_together198_aunroll_x_in_c0_eni44_37_tpl_1_q;
    assign out_c0_exi75_42_tpl = redist37_sync_together198_aunroll_x_in_c0_eni44_38_tpl_1_q;
    assign out_c0_exi75_43_tpl = redist38_sync_together198_aunroll_x_in_c0_eni44_39_tpl_1_q;
    assign out_c0_exi75_44_tpl = redist39_sync_together198_aunroll_x_in_c0_eni44_40_tpl_1_q;
    assign out_c0_exi75_45_tpl = redist40_sync_together198_aunroll_x_in_c0_eni44_41_tpl_1_q;
    assign out_c0_exi75_46_tpl = redist41_sync_together198_aunroll_x_in_c0_eni44_42_tpl_1_q;
    assign out_c0_exi75_47_tpl = redist42_sync_together198_aunroll_x_in_c0_eni44_43_tpl_1_q;
    assign out_c0_exi75_48_tpl = redist43_sync_together198_aunroll_x_in_c0_eni44_44_tpl_1_q;
    assign out_c0_exi75_49_tpl = redist0_sync_together198_aunroll_x_in_c0_eni44_1_tpl_1_q;
    assign out_c0_exi75_50_tpl = redist21_sync_together198_aunroll_x_in_c0_eni44_22_tpl_1_q;
    assign out_c0_exi75_51_tpl = redist22_sync_together198_aunroll_x_in_c0_eni44_23_tpl_1_q;
    assign out_c0_exi75_52_tpl = redist23_sync_together198_aunroll_x_in_c0_eni44_24_tpl_1_q;
    assign out_c0_exi75_53_tpl = redist3_sync_together198_aunroll_x_in_c0_eni44_4_tpl_1_q;
    assign out_c0_exi75_54_tpl = redist2_sync_together198_aunroll_x_in_c0_eni44_3_tpl_1_q;
    assign out_c0_exi75_55_tpl = redist24_sync_together198_aunroll_x_in_c0_eni44_25_tpl_1_q;
    assign out_c0_exi75_56_tpl = redist25_sync_together198_aunroll_x_in_c0_eni44_26_tpl_1_q;
    assign out_c0_exi75_57_tpl = redist26_sync_together198_aunroll_x_in_c0_eni44_27_tpl_1_q;
    assign out_c0_exi75_58_tpl = redist4_sync_together198_aunroll_x_in_c0_eni44_5_tpl_1_q;
    assign out_c0_exi75_59_tpl = redist27_sync_together198_aunroll_x_in_c0_eni44_28_tpl_1_q;
    assign out_c0_exi75_60_tpl = redist5_sync_together198_aunroll_x_in_c0_eni44_6_tpl_1_q;
    assign out_c0_exi75_61_tpl = redist6_sync_together198_aunroll_x_in_c0_eni44_7_tpl_1_q;
    assign out_c0_exi75_62_tpl = redist7_sync_together198_aunroll_x_in_c0_eni44_8_tpl_1_q;
    assign out_c0_exi75_63_tpl = redist8_sync_together198_aunroll_x_in_c0_eni44_9_tpl_1_q;
    assign out_c0_exi75_64_tpl = redist9_sync_together198_aunroll_x_in_c0_eni44_10_tpl_1_q;
    assign out_c0_exi75_65_tpl = redist10_sync_together198_aunroll_x_in_c0_eni44_11_tpl_1_q;
    assign out_c0_exi75_66_tpl = redist11_sync_together198_aunroll_x_in_c0_eni44_12_tpl_1_q;
    assign out_c0_exi75_67_tpl = redist12_sync_together198_aunroll_x_in_c0_eni44_13_tpl_1_q;
    assign out_c0_exi75_68_tpl = redist13_sync_together198_aunroll_x_in_c0_eni44_14_tpl_1_q;
    assign out_c0_exi75_69_tpl = redist14_sync_together198_aunroll_x_in_c0_eni44_15_tpl_1_q;
    assign out_c0_exi75_70_tpl = redist15_sync_together198_aunroll_x_in_c0_eni44_16_tpl_1_q;
    assign out_c0_exi75_71_tpl = redist16_sync_together198_aunroll_x_in_c0_eni44_17_tpl_1_q;
    assign out_c0_exi75_72_tpl = redist17_sync_together198_aunroll_x_in_c0_eni44_18_tpl_1_q;
    assign out_c0_exi75_73_tpl = redist18_sync_together198_aunroll_x_in_c0_eni44_19_tpl_1_q;
    assign out_c0_exi75_74_tpl = redist19_sync_together198_aunroll_x_in_c0_eni44_20_tpl_1_q;
    assign out_c0_exi75_75_tpl = redist20_sync_together198_aunroll_x_in_c0_eni44_21_tpl_1_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_conv2d1x15 = GND_q;

endmodule
