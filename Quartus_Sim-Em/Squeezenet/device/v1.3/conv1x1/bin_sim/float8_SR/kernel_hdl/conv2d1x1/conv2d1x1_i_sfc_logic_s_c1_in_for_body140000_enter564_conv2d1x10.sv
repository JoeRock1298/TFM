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

// SystemVerilog created from conv2d1x1_i_sfc_logic_s_c1_in_for_body140000_enter564_conv2d1x10
// SystemVerilog created on Wed May 24 12:36:13 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2d1x1_i_sfc_logic_s_c1_in_for_body140000_enter564_conv2d1x10 (
    input wire [0:0] in_intel_reserved_ffwd_2_0,
    output wire [0:0] out_c1_exi48_0_tpl,
    output wire [31:0] out_c1_exi48_1_tpl,
    output wire [31:0] out_c1_exi48_2_tpl,
    output wire [31:0] out_c1_exi48_3_tpl,
    output wire [31:0] out_c1_exi48_4_tpl,
    output wire [31:0] out_c1_exi48_5_tpl,
    output wire [31:0] out_c1_exi48_6_tpl,
    output wire [31:0] out_c1_exi48_7_tpl,
    output wire [31:0] out_c1_exi48_8_tpl,
    output wire [31:0] out_c1_exi48_9_tpl,
    output wire [31:0] out_c1_exi48_10_tpl,
    output wire [31:0] out_c1_exi48_11_tpl,
    output wire [31:0] out_c1_exi48_12_tpl,
    output wire [31:0] out_c1_exi48_13_tpl,
    output wire [31:0] out_c1_exi48_14_tpl,
    output wire [31:0] out_c1_exi48_15_tpl,
    output wire [31:0] out_c1_exi48_16_tpl,
    output wire [31:0] out_c1_exi48_17_tpl,
    output wire [31:0] out_c1_exi48_18_tpl,
    output wire [31:0] out_c1_exi48_19_tpl,
    output wire [31:0] out_c1_exi48_20_tpl,
    output wire [31:0] out_c1_exi48_21_tpl,
    output wire [31:0] out_c1_exi48_22_tpl,
    output wire [31:0] out_c1_exi48_23_tpl,
    output wire [31:0] out_c1_exi48_24_tpl,
    output wire [31:0] out_c1_exi48_25_tpl,
    output wire [31:0] out_c1_exi48_26_tpl,
    output wire [31:0] out_c1_exi48_27_tpl,
    output wire [31:0] out_c1_exi48_28_tpl,
    output wire [31:0] out_c1_exi48_29_tpl,
    output wire [31:0] out_c1_exi48_30_tpl,
    output wire [31:0] out_c1_exi48_31_tpl,
    output wire [31:0] out_c1_exi48_32_tpl,
    output wire [31:0] out_c1_exi48_33_tpl,
    output wire [31:0] out_c1_exi48_34_tpl,
    output wire [31:0] out_c1_exi48_35_tpl,
    output wire [31:0] out_c1_exi48_36_tpl,
    output wire [31:0] out_c1_exi48_37_tpl,
    output wire [31:0] out_c1_exi48_38_tpl,
    output wire [31:0] out_c1_exi48_39_tpl,
    output wire [31:0] out_c1_exi48_40_tpl,
    output wire [31:0] out_c1_exi48_41_tpl,
    output wire [31:0] out_c1_exi48_42_tpl,
    output wire [31:0] out_c1_exi48_43_tpl,
    output wire [31:0] out_c1_exi48_44_tpl,
    output wire [31:0] out_c1_exi48_45_tpl,
    output wire [31:0] out_c1_exi48_46_tpl,
    output wire [31:0] out_c1_exi48_47_tpl,
    output wire [31:0] out_c1_exi48_48_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_conv2d1x16,
    input wire [0:0] in_c1_eni37_0_tpl,
    input wire [31:0] in_c1_eni37_1_tpl,
    input wire [0:0] in_c1_eni37_2_tpl,
    input wire [31:0] in_c1_eni37_3_tpl,
    input wire [31:0] in_c1_eni37_4_tpl,
    input wire [31:0] in_c1_eni37_5_tpl,
    input wire [31:0] in_c1_eni37_6_tpl,
    input wire [31:0] in_c1_eni37_7_tpl,
    input wire [31:0] in_c1_eni37_8_tpl,
    input wire [31:0] in_c1_eni37_9_tpl,
    input wire [31:0] in_c1_eni37_10_tpl,
    input wire [31:0] in_c1_eni37_11_tpl,
    input wire [31:0] in_c1_eni37_12_tpl,
    input wire [31:0] in_c1_eni37_13_tpl,
    input wire [31:0] in_c1_eni37_14_tpl,
    input wire [31:0] in_c1_eni37_15_tpl,
    input wire [31:0] in_c1_eni37_16_tpl,
    input wire [31:0] in_c1_eni37_17_tpl,
    input wire [0:0] in_c1_eni37_18_tpl,
    input wire [0:0] in_c1_eni37_19_tpl,
    input wire [31:0] in_c1_eni37_0_20_tpl,
    input wire [31:0] in_c1_eni37_1_20_tpl,
    input wire [31:0] in_c1_eni37_2_20_tpl,
    input wire [31:0] in_c1_eni37_3_20_tpl,
    input wire [31:0] in_c1_eni37_4_20_tpl,
    input wire [31:0] in_c1_eni37_5_20_tpl,
    input wire [31:0] in_c1_eni37_6_20_tpl,
    input wire [31:0] in_c1_eni37_7_20_tpl,
    input wire [31:0] in_c1_eni37_21_tpl,
    input wire [31:0] in_c1_eni37_22_tpl,
    input wire [31:0] in_c1_eni37_23_tpl,
    input wire [31:0] in_c1_eni37_24_tpl,
    input wire [31:0] in_c1_eni37_25_tpl,
    input wire [31:0] in_c1_eni37_26_tpl,
    input wire [31:0] in_c1_eni37_27_tpl,
    input wire [31:0] in_c1_eni37_28_tpl,
    input wire [31:0] in_c1_eni37_29_tpl,
    input wire [31:0] in_c1_eni37_30_tpl,
    input wire [31:0] in_c1_eni37_31_tpl,
    input wire [31:0] in_c1_eni37_32_tpl,
    input wire [31:0] in_c1_eni37_33_tpl,
    input wire [31:0] in_c1_eni37_34_tpl,
    input wire [31:0] in_c1_eni37_35_tpl,
    input wire [31:0] in_c1_eni37_36_tpl,
    input wire [0:0] in_c1_eni37_37_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    (* dont_merge *) reg [0:0] i_llvm_fpga_fanout_i1_c1_ene18582_fanout_adaptor597_conv2d1x18_q;
    (* dont_merge *) reg [0:0] i_llvm_fpga_fanout_i1_c1_ene18582_fanout_adaptor598_conv2d1x17_q;
    (* dont_merge *) reg [0:0] i_llvm_fpga_fanout_i1_c1_ene18582_fanout_adaptor599_conv2d1x16_q;
    (* dont_merge *) reg [0:0] i_llvm_fpga_fanout_i1_c1_ene18582_fanout_adaptor_conv2d1x19_q;
    (* dont_merge *) reg [0:0] i_llvm_fpga_fanout_i1_c1_ene2566_fanout_adaptor594_conv2d1x14_q;
    (* dont_merge *) reg [0:0] i_llvm_fpga_fanout_i1_c1_ene2566_fanout_adaptor595_conv2d1x13_q;
    (* dont_merge *) reg [0:0] i_llvm_fpga_fanout_i1_c1_ene2566_fanout_adaptor596_conv2d1x12_q;
    (* dont_merge *) reg [0:0] i_llvm_fpga_fanout_i1_c1_ene2566_fanout_adaptor_conv2d1x15_q;
    (* dont_merge *) reg [0:0] i_llvm_fpga_fanout_i1_not_269_fanout_adaptor600_conv2d1x137_q;
    (* dont_merge *) reg [0:0] i_llvm_fpga_fanout_i1_not_269_fanout_adaptor_conv2d1x138_q;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp129920_conv2d1x134_out_dest_data_out_2_0;
    wire [31:0] i_llvm_fpga_fp_multadd_mult_add101_conv2d1x146_out_primWireOut;
    wire [31:0] i_llvm_fpga_fp_multadd_mult_add102_conv2d1x150_out_primWireOut;
    wire [31:0] i_llvm_fpga_fp_multadd_mult_add103_conv2d1x154_out_primWireOut;
    wire [31:0] i_llvm_fpga_fp_multadd_mult_add104_conv2d1x158_out_primWireOut;
    wire [31:0] i_llvm_fpga_fp_multadd_mult_add105_conv2d1x162_out_primWireOut;
    wire [31:0] i_llvm_fpga_fp_multadd_mult_add106_conv2d1x166_out_primWireOut;
    wire [31:0] i_llvm_fpga_fp_multadd_mult_add107_conv2d1x170_out_primWireOut;
    wire [31:0] i_llvm_fpga_fp_multadd_mult_add_conv2d1x142_out_primWireOut;
    wire [31:0] i_llvm_fpga_pop_f32_arrayidx131_10_promoted_e94_pop93_conv2d1x187_out_data_out;
    wire [0:0] i_llvm_fpga_pop_f32_arrayidx131_10_promoted_e94_pop93_conv2d1x187_out_feedback_stall_out_93;
    wire [31:0] i_llvm_fpga_pop_f32_arrayidx131_11_promoted_e95_pop94_conv2d1x184_out_data_out;
    wire [0:0] i_llvm_fpga_pop_f32_arrayidx131_11_promoted_e95_pop94_conv2d1x184_out_feedback_stall_out_94;
    wire [31:0] i_llvm_fpga_pop_f32_arrayidx131_12_promoted_e96_pop95_conv2d1x181_out_data_out;
    wire [0:0] i_llvm_fpga_pop_f32_arrayidx131_12_promoted_e96_pop95_conv2d1x181_out_feedback_stall_out_95;
    wire [31:0] i_llvm_fpga_pop_f32_arrayidx131_13_promoted_e97_pop96_conv2d1x178_out_data_out;
    wire [0:0] i_llvm_fpga_pop_f32_arrayidx131_13_promoted_e97_pop96_conv2d1x178_out_feedback_stall_out_96;
    wire [31:0] i_llvm_fpga_pop_f32_arrayidx131_14_promoted_e98_pop97_conv2d1x175_out_data_out;
    wire [0:0] i_llvm_fpga_pop_f32_arrayidx131_14_promoted_e98_pop97_conv2d1x175_out_feedback_stall_out_97;
    wire [31:0] i_llvm_fpga_pop_f32_arrayidx131_15_promoted_e99_pop98_conv2d1x172_out_data_out;
    wire [0:0] i_llvm_fpga_pop_f32_arrayidx131_15_promoted_e99_pop98_conv2d1x172_out_feedback_stall_out_98;
    wire [31:0] i_llvm_fpga_pop_f32_arrayidx131_3_promoted_e87_pop86_conv2d1x1108_out_data_out;
    wire [0:0] i_llvm_fpga_pop_f32_arrayidx131_3_promoted_e87_pop86_conv2d1x1108_out_feedback_stall_out_86;
    wire [31:0] i_llvm_fpga_pop_f32_arrayidx131_4_promoted_e88_pop87_conv2d1x1105_out_data_out;
    wire [0:0] i_llvm_fpga_pop_f32_arrayidx131_4_promoted_e88_pop87_conv2d1x1105_out_feedback_stall_out_87;
    wire [31:0] i_llvm_fpga_pop_f32_arrayidx131_5_promoted_e89_pop88_conv2d1x1102_out_data_out;
    wire [0:0] i_llvm_fpga_pop_f32_arrayidx131_5_promoted_e89_pop88_conv2d1x1102_out_feedback_stall_out_88;
    wire [31:0] i_llvm_fpga_pop_f32_arrayidx131_6_promoted_e90_pop89_conv2d1x199_out_data_out;
    wire [0:0] i_llvm_fpga_pop_f32_arrayidx131_6_promoted_e90_pop89_conv2d1x199_out_feedback_stall_out_89;
    wire [31:0] i_llvm_fpga_pop_f32_arrayidx131_7_promoted_e91_pop90_conv2d1x196_out_data_out;
    wire [0:0] i_llvm_fpga_pop_f32_arrayidx131_7_promoted_e91_pop90_conv2d1x196_out_feedback_stall_out_90;
    wire [31:0] i_llvm_fpga_pop_f32_arrayidx131_8_promoted_e92_pop91_conv2d1x193_out_data_out;
    wire [0:0] i_llvm_fpga_pop_f32_arrayidx131_8_promoted_e92_pop91_conv2d1x193_out_feedback_stall_out_91;
    wire [31:0] i_llvm_fpga_pop_f32_arrayidx131_9_promoted_e93_pop92_conv2d1x190_out_data_out;
    wire [0:0] i_llvm_fpga_pop_f32_arrayidx131_9_promoted_e93_pop92_conv2d1x190_out_feedback_stall_out_92;
    wire [31:0] i_llvm_fpga_pop_f32_pop38_conv2d1x125_out_data_out;
    wire [0:0] i_llvm_fpga_pop_f32_pop38_conv2d1x125_out_feedback_stall_out_38;
    wire [31:0] i_llvm_fpga_pop_f32_pop39_conv2d1x124_out_data_out;
    wire [0:0] i_llvm_fpga_pop_f32_pop39_conv2d1x124_out_feedback_stall_out_39;
    wire [31:0] i_llvm_fpga_pop_f32_pop40_conv2d1x123_out_data_out;
    wire [0:0] i_llvm_fpga_pop_f32_pop40_conv2d1x123_out_feedback_stall_out_40;
    wire [31:0] i_llvm_fpga_pop_f32_pop41_conv2d1x122_out_data_out;
    wire [0:0] i_llvm_fpga_pop_f32_pop41_conv2d1x122_out_feedback_stall_out_41;
    wire [31:0] i_llvm_fpga_pop_f32_pop42_conv2d1x121_out_data_out;
    wire [0:0] i_llvm_fpga_pop_f32_pop42_conv2d1x121_out_feedback_stall_out_42;
    wire [31:0] i_llvm_fpga_pop_f32_pop43_conv2d1x120_out_data_out;
    wire [0:0] i_llvm_fpga_pop_f32_pop43_conv2d1x120_out_feedback_stall_out_43;
    wire [31:0] i_llvm_fpga_pop_f32_pop44_conv2d1x119_out_data_out;
    wire [0:0] i_llvm_fpga_pop_f32_pop44_conv2d1x119_out_feedback_stall_out_44;
    wire [31:0] i_llvm_fpga_pop_f32_pop45_conv2d1x118_out_data_out;
    wire [0:0] i_llvm_fpga_pop_f32_pop45_conv2d1x118_out_feedback_stall_out_45;
    wire [31:0] i_llvm_fpga_pop_f32_pop46_conv2d1x117_out_data_out;
    wire [0:0] i_llvm_fpga_pop_f32_pop46_conv2d1x117_out_feedback_stall_out_46;
    wire [31:0] i_llvm_fpga_pop_f32_pop47_conv2d1x116_out_data_out;
    wire [0:0] i_llvm_fpga_pop_f32_pop47_conv2d1x116_out_feedback_stall_out_47;
    wire [31:0] i_llvm_fpga_pop_f32_pop48_conv2d1x115_out_data_out;
    wire [0:0] i_llvm_fpga_pop_f32_pop48_conv2d1x115_out_feedback_stall_out_48;
    wire [31:0] i_llvm_fpga_pop_f32_pop49_conv2d1x114_out_data_out;
    wire [0:0] i_llvm_fpga_pop_f32_pop49_conv2d1x114_out_feedback_stall_out_49;
    wire [31:0] i_llvm_fpga_pop_f32_pop50_conv2d1x113_out_data_out;
    wire [0:0] i_llvm_fpga_pop_f32_pop50_conv2d1x113_out_feedback_stall_out_50;
    wire [31:0] i_llvm_fpga_pop_f32_pop51_conv2d1x112_out_data_out;
    wire [0:0] i_llvm_fpga_pop_f32_pop51_conv2d1x112_out_feedback_stall_out_51;
    wire [31:0] i_llvm_fpga_pop_f32_pop52_conv2d1x111_out_data_out;
    wire [0:0] i_llvm_fpga_pop_f32_pop52_conv2d1x111_out_feedback_stall_out_52;
    wire [31:0] i_llvm_fpga_pop_f32_pop53_conv2d1x110_out_data_out;
    wire [0:0] i_llvm_fpga_pop_f32_pop53_conv2d1x110_out_feedback_stall_out_53;
    wire [31:0] i_llvm_fpga_pop_f32_pop54_conv2d1x168_out_data_out;
    wire [0:0] i_llvm_fpga_pop_f32_pop54_conv2d1x168_out_feedback_stall_out_54;
    wire [31:0] i_llvm_fpga_pop_f32_pop55_conv2d1x164_out_data_out;
    wire [0:0] i_llvm_fpga_pop_f32_pop55_conv2d1x164_out_feedback_stall_out_55;
    wire [31:0] i_llvm_fpga_pop_f32_pop56_conv2d1x160_out_data_out;
    wire [0:0] i_llvm_fpga_pop_f32_pop56_conv2d1x160_out_feedback_stall_out_56;
    wire [31:0] i_llvm_fpga_pop_f32_pop57_conv2d1x156_out_data_out;
    wire [0:0] i_llvm_fpga_pop_f32_pop57_conv2d1x156_out_feedback_stall_out_57;
    wire [31:0] i_llvm_fpga_pop_f32_pop58_conv2d1x152_out_data_out;
    wire [0:0] i_llvm_fpga_pop_f32_pop58_conv2d1x152_out_feedback_stall_out_58;
    wire [31:0] i_llvm_fpga_pop_f32_pop59_conv2d1x148_out_data_out;
    wire [0:0] i_llvm_fpga_pop_f32_pop59_conv2d1x148_out_feedback_stall_out_59;
    wire [31:0] i_llvm_fpga_pop_f32_pop60_conv2d1x144_out_data_out;
    wire [0:0] i_llvm_fpga_pop_f32_pop60_conv2d1x144_out_feedback_stall_out_60;
    wire [31:0] i_llvm_fpga_pop_f32_pop61_conv2d1x140_out_data_out;
    wire [0:0] i_llvm_fpga_pop_f32_pop61_conv2d1x140_out_feedback_stall_out_61;
    wire [31:0] i_llvm_fpga_pop_f32_pre109_e77_pop76_conv2d1x1138_out_data_out;
    wire [0:0] i_llvm_fpga_pop_f32_pre109_e77_pop76_conv2d1x1138_out_feedback_stall_out_76;
    wire [31:0] i_llvm_fpga_pop_f32_pre110_e78_pop77_conv2d1x1135_out_data_out;
    wire [0:0] i_llvm_fpga_pop_f32_pre110_e78_pop77_conv2d1x1135_out_feedback_stall_out_77;
    wire [31:0] i_llvm_fpga_pop_f32_pre111_e79_pop78_conv2d1x1132_out_data_out;
    wire [0:0] i_llvm_fpga_pop_f32_pre111_e79_pop78_conv2d1x1132_out_feedback_stall_out_78;
    wire [31:0] i_llvm_fpga_pop_f32_pre112_e80_pop79_conv2d1x1129_out_data_out;
    wire [0:0] i_llvm_fpga_pop_f32_pre112_e80_pop79_conv2d1x1129_out_feedback_stall_out_79;
    wire [31:0] i_llvm_fpga_pop_f32_pre113_e81_pop80_conv2d1x1126_out_data_out;
    wire [0:0] i_llvm_fpga_pop_f32_pre113_e81_pop80_conv2d1x1126_out_feedback_stall_out_80;
    wire [31:0] i_llvm_fpga_pop_f32_pre114_e82_pop81_conv2d1x1123_out_data_out;
    wire [0:0] i_llvm_fpga_pop_f32_pre114_e82_pop81_conv2d1x1123_out_feedback_stall_out_81;
    wire [31:0] i_llvm_fpga_pop_f32_pre115_e83_pop82_conv2d1x1120_out_data_out;
    wire [0:0] i_llvm_fpga_pop_f32_pre115_e83_pop82_conv2d1x1120_out_feedback_stall_out_82;
    wire [31:0] i_llvm_fpga_pop_f32_pre116_e84_pop83_conv2d1x1117_out_data_out;
    wire [0:0] i_llvm_fpga_pop_f32_pre116_e84_pop83_conv2d1x1117_out_feedback_stall_out_83;
    wire [31:0] i_llvm_fpga_pop_f32_pre117_e85_pop84_conv2d1x1114_out_data_out;
    wire [0:0] i_llvm_fpga_pop_f32_pre117_e85_pop84_conv2d1x1114_out_feedback_stall_out_84;
    wire [31:0] i_llvm_fpga_pop_f32_pre118_e86_pop85_conv2d1x1111_out_data_out;
    wire [0:0] i_llvm_fpga_pop_f32_pre118_e86_pop85_conv2d1x1111_out_feedback_stall_out_85;
    wire [31:0] i_llvm_fpga_pop_f32_pre_e76_pop75_conv2d1x1141_out_data_out;
    wire [0:0] i_llvm_fpga_pop_f32_pre_e76_pop75_conv2d1x1141_out_feedback_stall_out_75;
    wire [31:0] i_llvm_fpga_push_f32_arrayidx131_10_promoted_e94_push93_conv2d1x188_out_feedback_out_93;
    wire [0:0] i_llvm_fpga_push_f32_arrayidx131_10_promoted_e94_push93_conv2d1x188_out_feedback_valid_out_93;
    wire [31:0] i_llvm_fpga_push_f32_arrayidx131_11_promoted_e95_push94_conv2d1x185_out_feedback_out_94;
    wire [0:0] i_llvm_fpga_push_f32_arrayidx131_11_promoted_e95_push94_conv2d1x185_out_feedback_valid_out_94;
    wire [31:0] i_llvm_fpga_push_f32_arrayidx131_12_promoted_e96_push95_conv2d1x182_out_feedback_out_95;
    wire [0:0] i_llvm_fpga_push_f32_arrayidx131_12_promoted_e96_push95_conv2d1x182_out_feedback_valid_out_95;
    wire [31:0] i_llvm_fpga_push_f32_arrayidx131_13_promoted_e97_push96_conv2d1x179_out_feedback_out_96;
    wire [0:0] i_llvm_fpga_push_f32_arrayidx131_13_promoted_e97_push96_conv2d1x179_out_feedback_valid_out_96;
    wire [31:0] i_llvm_fpga_push_f32_arrayidx131_14_promoted_e98_push97_conv2d1x176_out_feedback_out_97;
    wire [0:0] i_llvm_fpga_push_f32_arrayidx131_14_promoted_e98_push97_conv2d1x176_out_feedback_valid_out_97;
    wire [31:0] i_llvm_fpga_push_f32_arrayidx131_15_promoted_e99_push98_conv2d1x173_out_feedback_out_98;
    wire [0:0] i_llvm_fpga_push_f32_arrayidx131_15_promoted_e99_push98_conv2d1x173_out_feedback_valid_out_98;
    wire [31:0] i_llvm_fpga_push_f32_arrayidx131_3_promoted_e87_push86_conv2d1x1109_out_feedback_out_86;
    wire [0:0] i_llvm_fpga_push_f32_arrayidx131_3_promoted_e87_push86_conv2d1x1109_out_feedback_valid_out_86;
    wire [31:0] i_llvm_fpga_push_f32_arrayidx131_4_promoted_e88_push87_conv2d1x1106_out_feedback_out_87;
    wire [0:0] i_llvm_fpga_push_f32_arrayidx131_4_promoted_e88_push87_conv2d1x1106_out_feedback_valid_out_87;
    wire [31:0] i_llvm_fpga_push_f32_arrayidx131_5_promoted_e89_push88_conv2d1x1103_out_feedback_out_88;
    wire [0:0] i_llvm_fpga_push_f32_arrayidx131_5_promoted_e89_push88_conv2d1x1103_out_feedback_valid_out_88;
    wire [31:0] i_llvm_fpga_push_f32_arrayidx131_6_promoted_e90_push89_conv2d1x1100_out_feedback_out_89;
    wire [0:0] i_llvm_fpga_push_f32_arrayidx131_6_promoted_e90_push89_conv2d1x1100_out_feedback_valid_out_89;
    wire [31:0] i_llvm_fpga_push_f32_arrayidx131_7_promoted_e91_push90_conv2d1x197_out_feedback_out_90;
    wire [0:0] i_llvm_fpga_push_f32_arrayidx131_7_promoted_e91_push90_conv2d1x197_out_feedback_valid_out_90;
    wire [31:0] i_llvm_fpga_push_f32_arrayidx131_8_promoted_e92_push91_conv2d1x194_out_feedback_out_91;
    wire [0:0] i_llvm_fpga_push_f32_arrayidx131_8_promoted_e92_push91_conv2d1x194_out_feedback_valid_out_91;
    wire [31:0] i_llvm_fpga_push_f32_arrayidx131_9_promoted_e93_push92_conv2d1x191_out_feedback_out_92;
    wire [0:0] i_llvm_fpga_push_f32_arrayidx131_9_promoted_e93_push92_conv2d1x191_out_feedback_valid_out_92;
    wire [31:0] i_llvm_fpga_push_f32_pre109_e77_push76_conv2d1x1139_out_feedback_out_76;
    wire [0:0] i_llvm_fpga_push_f32_pre109_e77_push76_conv2d1x1139_out_feedback_valid_out_76;
    wire [31:0] i_llvm_fpga_push_f32_pre110_e78_push77_conv2d1x1136_out_feedback_out_77;
    wire [0:0] i_llvm_fpga_push_f32_pre110_e78_push77_conv2d1x1136_out_feedback_valid_out_77;
    wire [31:0] i_llvm_fpga_push_f32_pre111_e79_push78_conv2d1x1133_out_feedback_out_78;
    wire [0:0] i_llvm_fpga_push_f32_pre111_e79_push78_conv2d1x1133_out_feedback_valid_out_78;
    wire [31:0] i_llvm_fpga_push_f32_pre112_e80_push79_conv2d1x1130_out_feedback_out_79;
    wire [0:0] i_llvm_fpga_push_f32_pre112_e80_push79_conv2d1x1130_out_feedback_valid_out_79;
    wire [31:0] i_llvm_fpga_push_f32_pre113_e81_push80_conv2d1x1127_out_feedback_out_80;
    wire [0:0] i_llvm_fpga_push_f32_pre113_e81_push80_conv2d1x1127_out_feedback_valid_out_80;
    wire [31:0] i_llvm_fpga_push_f32_pre114_e82_push81_conv2d1x1124_out_feedback_out_81;
    wire [0:0] i_llvm_fpga_push_f32_pre114_e82_push81_conv2d1x1124_out_feedback_valid_out_81;
    wire [31:0] i_llvm_fpga_push_f32_pre115_e83_push82_conv2d1x1121_out_feedback_out_82;
    wire [0:0] i_llvm_fpga_push_f32_pre115_e83_push82_conv2d1x1121_out_feedback_valid_out_82;
    wire [31:0] i_llvm_fpga_push_f32_pre116_e84_push83_conv2d1x1118_out_feedback_out_83;
    wire [0:0] i_llvm_fpga_push_f32_pre116_e84_push83_conv2d1x1118_out_feedback_valid_out_83;
    wire [31:0] i_llvm_fpga_push_f32_pre117_e85_push84_conv2d1x1115_out_feedback_out_84;
    wire [0:0] i_llvm_fpga_push_f32_pre117_e85_push84_conv2d1x1115_out_feedback_valid_out_84;
    wire [31:0] i_llvm_fpga_push_f32_pre118_e86_push85_conv2d1x1112_out_feedback_out_85;
    wire [0:0] i_llvm_fpga_push_f32_pre118_e86_push85_conv2d1x1112_out_feedback_valid_out_85;
    wire [31:0] i_llvm_fpga_push_f32_pre_e76_push75_conv2d1x1142_out_feedback_out_75;
    wire [0:0] i_llvm_fpga_push_f32_pre_e76_push75_conv2d1x1142_out_feedback_valid_out_75;
    wire [31:0] i_llvm_fpga_push_f32_push38_conv2d1x143_out_feedback_out_38;
    wire [0:0] i_llvm_fpga_push_f32_push38_conv2d1x143_out_feedback_valid_out_38;
    wire [31:0] i_llvm_fpga_push_f32_push39_conv2d1x147_out_feedback_out_39;
    wire [0:0] i_llvm_fpga_push_f32_push39_conv2d1x147_out_feedback_valid_out_39;
    wire [31:0] i_llvm_fpga_push_f32_push40_conv2d1x151_out_feedback_out_40;
    wire [0:0] i_llvm_fpga_push_f32_push40_conv2d1x151_out_feedback_valid_out_40;
    wire [31:0] i_llvm_fpga_push_f32_push41_conv2d1x155_out_feedback_out_41;
    wire [0:0] i_llvm_fpga_push_f32_push41_conv2d1x155_out_feedback_valid_out_41;
    wire [31:0] i_llvm_fpga_push_f32_push42_conv2d1x159_out_feedback_out_42;
    wire [0:0] i_llvm_fpga_push_f32_push42_conv2d1x159_out_feedback_valid_out_42;
    wire [31:0] i_llvm_fpga_push_f32_push43_conv2d1x163_out_feedback_out_43;
    wire [0:0] i_llvm_fpga_push_f32_push43_conv2d1x163_out_feedback_valid_out_43;
    wire [31:0] i_llvm_fpga_push_f32_push44_conv2d1x167_out_feedback_out_44;
    wire [0:0] i_llvm_fpga_push_f32_push44_conv2d1x167_out_feedback_valid_out_44;
    wire [31:0] i_llvm_fpga_push_f32_push45_conv2d1x171_out_feedback_out_45;
    wire [0:0] i_llvm_fpga_push_f32_push45_conv2d1x171_out_feedback_valid_out_45;
    wire [31:0] i_llvm_fpga_push_f32_push46_conv2d1x133_out_feedback_out_46;
    wire [0:0] i_llvm_fpga_push_f32_push46_conv2d1x133_out_feedback_valid_out_46;
    wire [31:0] i_llvm_fpga_push_f32_push47_conv2d1x132_out_feedback_out_47;
    wire [0:0] i_llvm_fpga_push_f32_push47_conv2d1x132_out_feedback_valid_out_47;
    wire [31:0] i_llvm_fpga_push_f32_push48_conv2d1x131_out_feedback_out_48;
    wire [0:0] i_llvm_fpga_push_f32_push48_conv2d1x131_out_feedback_valid_out_48;
    wire [31:0] i_llvm_fpga_push_f32_push49_conv2d1x130_out_feedback_out_49;
    wire [0:0] i_llvm_fpga_push_f32_push49_conv2d1x130_out_feedback_valid_out_49;
    wire [31:0] i_llvm_fpga_push_f32_push50_conv2d1x129_out_feedback_out_50;
    wire [0:0] i_llvm_fpga_push_f32_push50_conv2d1x129_out_feedback_valid_out_50;
    wire [31:0] i_llvm_fpga_push_f32_push51_conv2d1x128_out_feedback_out_51;
    wire [0:0] i_llvm_fpga_push_f32_push51_conv2d1x128_out_feedback_valid_out_51;
    wire [31:0] i_llvm_fpga_push_f32_push52_conv2d1x127_out_feedback_out_52;
    wire [0:0] i_llvm_fpga_push_f32_push52_conv2d1x127_out_feedback_valid_out_52;
    wire [31:0] i_llvm_fpga_push_f32_push53_conv2d1x126_out_feedback_out_53;
    wire [0:0] i_llvm_fpga_push_f32_push53_conv2d1x126_out_feedback_valid_out_53;
    wire [31:0] i_llvm_fpga_push_f32_push54_conv2d1x169_out_feedback_out_54;
    wire [0:0] i_llvm_fpga_push_f32_push54_conv2d1x169_out_feedback_valid_out_54;
    wire [31:0] i_llvm_fpga_push_f32_push55_conv2d1x165_out_feedback_out_55;
    wire [0:0] i_llvm_fpga_push_f32_push55_conv2d1x165_out_feedback_valid_out_55;
    wire [31:0] i_llvm_fpga_push_f32_push56_conv2d1x161_out_feedback_out_56;
    wire [0:0] i_llvm_fpga_push_f32_push56_conv2d1x161_out_feedback_valid_out_56;
    wire [31:0] i_llvm_fpga_push_f32_push57_conv2d1x157_out_feedback_out_57;
    wire [0:0] i_llvm_fpga_push_f32_push57_conv2d1x157_out_feedback_valid_out_57;
    wire [31:0] i_llvm_fpga_push_f32_push58_conv2d1x153_out_feedback_out_58;
    wire [0:0] i_llvm_fpga_push_f32_push58_conv2d1x153_out_feedback_valid_out_58;
    wire [31:0] i_llvm_fpga_push_f32_push59_conv2d1x149_out_feedback_out_59;
    wire [0:0] i_llvm_fpga_push_f32_push59_conv2d1x149_out_feedback_valid_out_59;
    wire [31:0] i_llvm_fpga_push_f32_push60_conv2d1x145_out_feedback_out_60;
    wire [0:0] i_llvm_fpga_push_f32_push60_conv2d1x145_out_feedback_valid_out_60;
    wire [31:0] i_llvm_fpga_push_f32_push61_conv2d1x141_out_feedback_out_61;
    wire [0:0] i_llvm_fpga_push_f32_push61_conv2d1x141_out_feedback_valid_out_61;
    wire [0:0] i_not_269_conv2d1x136_qi;
    reg [0:0] i_not_269_conv2d1x136_q;
    wire [0:0] i_notlhs270_conv2d1x135_q;
    wire [0:0] i_select102_conv2d1x1140_s;
    reg [31:0] i_select102_conv2d1x1140_q;
    wire [0:0] i_select105_conv2d1x1143_s;
    reg [31:0] i_select105_conv2d1x1143_q;
    wire [0:0] i_select36_conv2d1x174_s;
    reg [31:0] i_select36_conv2d1x174_q;
    wire [0:0] i_select39_conv2d1x177_s;
    reg [31:0] i_select39_conv2d1x177_q;
    wire [0:0] i_select42_conv2d1x180_s;
    reg [31:0] i_select42_conv2d1x180_q;
    wire [0:0] i_select45_conv2d1x183_s;
    reg [31:0] i_select45_conv2d1x183_q;
    wire [0:0] i_select48_conv2d1x186_s;
    reg [31:0] i_select48_conv2d1x186_q;
    wire [0:0] i_select51_conv2d1x189_s;
    reg [31:0] i_select51_conv2d1x189_q;
    wire [0:0] i_select54_conv2d1x192_s;
    reg [31:0] i_select54_conv2d1x192_q;
    wire [0:0] i_select57_conv2d1x195_s;
    reg [31:0] i_select57_conv2d1x195_q;
    wire [0:0] i_select60_conv2d1x198_s;
    reg [31:0] i_select60_conv2d1x198_q;
    wire [0:0] i_select63_conv2d1x1101_s;
    reg [31:0] i_select63_conv2d1x1101_q;
    wire [0:0] i_select66_conv2d1x1104_s;
    reg [31:0] i_select66_conv2d1x1104_q;
    wire [0:0] i_select69_conv2d1x1107_s;
    reg [31:0] i_select69_conv2d1x1107_q;
    wire [0:0] i_select72_conv2d1x1110_s;
    reg [31:0] i_select72_conv2d1x1110_q;
    wire [0:0] i_select75_conv2d1x1113_s;
    reg [31:0] i_select75_conv2d1x1113_q;
    wire [0:0] i_select78_conv2d1x1116_s;
    reg [31:0] i_select78_conv2d1x1116_q;
    wire [0:0] i_select81_conv2d1x1119_s;
    reg [31:0] i_select81_conv2d1x1119_q;
    wire [0:0] i_select84_conv2d1x1122_s;
    reg [31:0] i_select84_conv2d1x1122_q;
    wire [0:0] i_select87_conv2d1x1125_s;
    reg [31:0] i_select87_conv2d1x1125_q;
    wire [0:0] i_select90_conv2d1x1128_s;
    reg [31:0] i_select90_conv2d1x1128_q;
    wire [0:0] i_select93_conv2d1x1131_s;
    reg [31:0] i_select93_conv2d1x1131_q;
    wire [0:0] i_select96_conv2d1x1134_s;
    reg [31:0] i_select96_conv2d1x1134_q;
    wire [0:0] i_select99_conv2d1x1137_s;
    reg [31:0] i_select99_conv2d1x1137_q;
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
    (* dont_merge *) reg [0:0] valid_fanout_reg66_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg67_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg68_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg69_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg70_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg71_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg72_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg73_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg74_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg75_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg76_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg77_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg78_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg79_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg80_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg81_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg82_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg83_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg84_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg85_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg86_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg87_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg88_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg89_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg90_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg91_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg92_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg93_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg94_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg95_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg96_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg97_q;
    reg [0:0] redist1_sync_together342_aunroll_vunroll_x_in_c1_eni37_2_tpl_2_q;
    reg [0:0] redist1_sync_together342_aunroll_vunroll_x_in_c1_eni37_2_tpl_2_delay_0;
    reg [0:0] redist2_sync_together342_aunroll_vunroll_x_in_c1_eni37_2_tpl_4_q;
    reg [0:0] redist2_sync_together342_aunroll_vunroll_x_in_c1_eni37_2_tpl_4_delay_0;
    reg [31:0] redist10_sync_together342_aunroll_vunroll_x_in_c1_eni37_9_tpl_5_q;
    reg [31:0] redist10_sync_together342_aunroll_vunroll_x_in_c1_eni37_9_tpl_5_delay_0;
    reg [0:0] redist19_sync_together342_aunroll_vunroll_x_in_c1_eni37_18_tpl_2_q;
    reg [0:0] redist19_sync_together342_aunroll_vunroll_x_in_c1_eni37_18_tpl_2_delay_0;
    reg [0:0] redist20_sync_together342_aunroll_vunroll_x_in_c1_eni37_18_tpl_4_q;
    reg [0:0] redist20_sync_together342_aunroll_vunroll_x_in_c1_eni37_18_tpl_4_delay_0;
    reg [0:0] redist21_sync_together342_aunroll_vunroll_x_in_c1_eni37_19_tpl_1_q;
    reg [31:0] redist22_sync_together342_aunroll_vunroll_x_in_c1_eni37_0_20_tpl_1_q;
    reg [31:0] redist23_sync_together342_aunroll_vunroll_x_in_c1_eni37_1_20_tpl_1_q;
    reg [31:0] redist24_sync_together342_aunroll_vunroll_x_in_c1_eni37_2_20_tpl_1_q;
    reg [31:0] redist25_sync_together342_aunroll_vunroll_x_in_c1_eni37_3_20_tpl_1_q;
    reg [31:0] redist26_sync_together342_aunroll_vunroll_x_in_c1_eni37_4_20_tpl_1_q;
    reg [31:0] redist27_sync_together342_aunroll_vunroll_x_in_c1_eni37_5_20_tpl_1_q;
    reg [31:0] redist28_sync_together342_aunroll_vunroll_x_in_c1_eni37_6_20_tpl_1_q;
    reg [31:0] redist29_sync_together342_aunroll_vunroll_x_in_c1_eni37_7_20_tpl_1_q;
    reg [31:0] redist30_sync_together342_aunroll_vunroll_x_in_c1_eni37_21_tpl_1_q;
    reg [31:0] redist31_sync_together342_aunroll_vunroll_x_in_c1_eni37_21_tpl_3_q;
    reg [31:0] redist31_sync_together342_aunroll_vunroll_x_in_c1_eni37_21_tpl_3_delay_0;
    reg [31:0] redist32_sync_together342_aunroll_vunroll_x_in_c1_eni37_22_tpl_1_q;
    reg [31:0] redist33_sync_together342_aunroll_vunroll_x_in_c1_eni37_23_tpl_1_q;
    reg [31:0] redist34_sync_together342_aunroll_vunroll_x_in_c1_eni37_23_tpl_3_q;
    reg [31:0] redist34_sync_together342_aunroll_vunroll_x_in_c1_eni37_23_tpl_3_delay_0;
    reg [31:0] redist35_sync_together342_aunroll_vunroll_x_in_c1_eni37_24_tpl_1_q;
    reg [31:0] redist36_sync_together342_aunroll_vunroll_x_in_c1_eni37_25_tpl_1_q;
    reg [31:0] redist37_sync_together342_aunroll_vunroll_x_in_c1_eni37_25_tpl_3_q;
    reg [31:0] redist37_sync_together342_aunroll_vunroll_x_in_c1_eni37_25_tpl_3_delay_0;
    reg [31:0] redist38_sync_together342_aunroll_vunroll_x_in_c1_eni37_26_tpl_1_q;
    reg [31:0] redist39_sync_together342_aunroll_vunroll_x_in_c1_eni37_27_tpl_1_q;
    reg [31:0] redist40_sync_together342_aunroll_vunroll_x_in_c1_eni37_27_tpl_3_q;
    reg [31:0] redist40_sync_together342_aunroll_vunroll_x_in_c1_eni37_27_tpl_3_delay_0;
    reg [31:0] redist41_sync_together342_aunroll_vunroll_x_in_c1_eni37_28_tpl_1_q;
    reg [31:0] redist42_sync_together342_aunroll_vunroll_x_in_c1_eni37_29_tpl_1_q;
    reg [31:0] redist43_sync_together342_aunroll_vunroll_x_in_c1_eni37_29_tpl_3_q;
    reg [31:0] redist43_sync_together342_aunroll_vunroll_x_in_c1_eni37_29_tpl_3_delay_0;
    reg [31:0] redist44_sync_together342_aunroll_vunroll_x_in_c1_eni37_30_tpl_1_q;
    reg [31:0] redist45_sync_together342_aunroll_vunroll_x_in_c1_eni37_31_tpl_1_q;
    reg [31:0] redist46_sync_together342_aunroll_vunroll_x_in_c1_eni37_31_tpl_3_q;
    reg [31:0] redist46_sync_together342_aunroll_vunroll_x_in_c1_eni37_31_tpl_3_delay_0;
    reg [31:0] redist47_sync_together342_aunroll_vunroll_x_in_c1_eni37_32_tpl_1_q;
    reg [31:0] redist48_sync_together342_aunroll_vunroll_x_in_c1_eni37_33_tpl_1_q;
    reg [31:0] redist49_sync_together342_aunroll_vunroll_x_in_c1_eni37_33_tpl_3_q;
    reg [31:0] redist49_sync_together342_aunroll_vunroll_x_in_c1_eni37_33_tpl_3_delay_0;
    reg [31:0] redist50_sync_together342_aunroll_vunroll_x_in_c1_eni37_34_tpl_1_q;
    reg [31:0] redist51_sync_together342_aunroll_vunroll_x_in_c1_eni37_35_tpl_1_q;
    reg [31:0] redist52_sync_together342_aunroll_vunroll_x_in_c1_eni37_35_tpl_3_q;
    reg [31:0] redist52_sync_together342_aunroll_vunroll_x_in_c1_eni37_35_tpl_3_delay_0;
    reg [31:0] redist53_sync_together342_aunroll_vunroll_x_in_c1_eni37_36_tpl_1_q;
    reg [0:0] redist54_sync_together342_aunroll_vunroll_x_in_c1_eni37_37_tpl_5_q;
    reg [0:0] redist54_sync_together342_aunroll_vunroll_x_in_c1_eni37_37_tpl_5_delay_0;
    reg [0:0] redist54_sync_together342_aunroll_vunroll_x_in_c1_eni37_37_tpl_5_delay_1;
    reg [0:0] redist54_sync_together342_aunroll_vunroll_x_in_c1_eni37_37_tpl_5_delay_2;
    reg [0:0] redist54_sync_together342_aunroll_vunroll_x_in_c1_eni37_37_tpl_5_delay_3;
    reg [0:0] redist55_sync_together342_aunroll_vunroll_x_in_i_valid_2_q;
    reg [0:0] redist55_sync_together342_aunroll_vunroll_x_in_i_valid_2_delay_0;
    reg [0:0] redist56_sync_together342_aunroll_vunroll_x_in_i_valid_4_q;
    reg [0:0] redist56_sync_together342_aunroll_vunroll_x_in_i_valid_4_delay_0;
    reg [0:0] redist57_i_not_269_conv2d1x136_q_3_q;
    reg [0:0] redist57_i_not_269_conv2d1x136_q_3_delay_0;
    reg [31:0] redist58_i_llvm_fpga_pop_f32_pre_e76_pop75_conv2d1x1141_out_data_out_2_q;
    reg [31:0] redist58_i_llvm_fpga_pop_f32_pre_e76_pop75_conv2d1x1141_out_data_out_2_delay_0;
    reg [31:0] redist59_i_llvm_fpga_pop_f32_pre118_e86_pop85_conv2d1x1111_out_data_out_2_q;
    reg [31:0] redist59_i_llvm_fpga_pop_f32_pre118_e86_pop85_conv2d1x1111_out_data_out_2_delay_0;
    reg [31:0] redist60_i_llvm_fpga_pop_f32_pre117_e85_pop84_conv2d1x1114_out_data_out_2_q;
    reg [31:0] redist60_i_llvm_fpga_pop_f32_pre117_e85_pop84_conv2d1x1114_out_data_out_2_delay_0;
    reg [31:0] redist61_i_llvm_fpga_pop_f32_pre116_e84_pop83_conv2d1x1117_out_data_out_2_q;
    reg [31:0] redist61_i_llvm_fpga_pop_f32_pre116_e84_pop83_conv2d1x1117_out_data_out_2_delay_0;
    reg [31:0] redist62_i_llvm_fpga_pop_f32_pre115_e83_pop82_conv2d1x1120_out_data_out_2_q;
    reg [31:0] redist62_i_llvm_fpga_pop_f32_pre115_e83_pop82_conv2d1x1120_out_data_out_2_delay_0;
    reg [31:0] redist63_i_llvm_fpga_pop_f32_pre114_e82_pop81_conv2d1x1123_out_data_out_2_q;
    reg [31:0] redist63_i_llvm_fpga_pop_f32_pre114_e82_pop81_conv2d1x1123_out_data_out_2_delay_0;
    reg [31:0] redist64_i_llvm_fpga_pop_f32_pre113_e81_pop80_conv2d1x1126_out_data_out_2_q;
    reg [31:0] redist64_i_llvm_fpga_pop_f32_pre113_e81_pop80_conv2d1x1126_out_data_out_2_delay_0;
    reg [31:0] redist65_i_llvm_fpga_pop_f32_pre112_e80_pop79_conv2d1x1129_out_data_out_2_q;
    reg [31:0] redist65_i_llvm_fpga_pop_f32_pre112_e80_pop79_conv2d1x1129_out_data_out_2_delay_0;
    reg [31:0] redist66_i_llvm_fpga_pop_f32_pre111_e79_pop78_conv2d1x1132_out_data_out_2_q;
    reg [31:0] redist66_i_llvm_fpga_pop_f32_pre111_e79_pop78_conv2d1x1132_out_data_out_2_delay_0;
    reg [31:0] redist67_i_llvm_fpga_pop_f32_pre110_e78_pop77_conv2d1x1135_out_data_out_2_q;
    reg [31:0] redist67_i_llvm_fpga_pop_f32_pre110_e78_pop77_conv2d1x1135_out_data_out_2_delay_0;
    reg [31:0] redist68_i_llvm_fpga_pop_f32_pre109_e77_pop76_conv2d1x1138_out_data_out_2_q;
    reg [31:0] redist68_i_llvm_fpga_pop_f32_pre109_e77_pop76_conv2d1x1138_out_data_out_2_delay_0;
    reg [31:0] redist69_i_llvm_fpga_pop_f32_pop53_conv2d1x110_out_data_out_2_q;
    reg [31:0] redist69_i_llvm_fpga_pop_f32_pop53_conv2d1x110_out_data_out_2_delay_0;
    reg [31:0] redist70_i_llvm_fpga_pop_f32_pop52_conv2d1x111_out_data_out_2_q;
    reg [31:0] redist70_i_llvm_fpga_pop_f32_pop52_conv2d1x111_out_data_out_2_delay_0;
    reg [31:0] redist71_i_llvm_fpga_pop_f32_pop51_conv2d1x112_out_data_out_2_q;
    reg [31:0] redist71_i_llvm_fpga_pop_f32_pop51_conv2d1x112_out_data_out_2_delay_0;
    reg [31:0] redist72_i_llvm_fpga_pop_f32_pop50_conv2d1x113_out_data_out_2_q;
    reg [31:0] redist72_i_llvm_fpga_pop_f32_pop50_conv2d1x113_out_data_out_2_delay_0;
    reg [31:0] redist73_i_llvm_fpga_pop_f32_pop49_conv2d1x114_out_data_out_2_q;
    reg [31:0] redist73_i_llvm_fpga_pop_f32_pop49_conv2d1x114_out_data_out_2_delay_0;
    reg [31:0] redist74_i_llvm_fpga_pop_f32_pop48_conv2d1x115_out_data_out_2_q;
    reg [31:0] redist74_i_llvm_fpga_pop_f32_pop48_conv2d1x115_out_data_out_2_delay_0;
    reg [31:0] redist75_i_llvm_fpga_pop_f32_pop47_conv2d1x116_out_data_out_2_q;
    reg [31:0] redist75_i_llvm_fpga_pop_f32_pop47_conv2d1x116_out_data_out_2_delay_0;
    reg [31:0] redist76_i_llvm_fpga_pop_f32_pop46_conv2d1x117_out_data_out_2_q;
    reg [31:0] redist76_i_llvm_fpga_pop_f32_pop46_conv2d1x117_out_data_out_2_delay_0;
    reg [31:0] redist77_i_llvm_fpga_pop_f32_arrayidx131_6_promoted_e90_pop89_conv2d1x199_out_data_out_2_q;
    reg [31:0] redist77_i_llvm_fpga_pop_f32_arrayidx131_6_promoted_e90_pop89_conv2d1x199_out_data_out_2_delay_0;
    reg [31:0] redist78_i_llvm_fpga_pop_f32_arrayidx131_5_promoted_e89_pop88_conv2d1x1102_out_data_out_2_q;
    reg [31:0] redist78_i_llvm_fpga_pop_f32_arrayidx131_5_promoted_e89_pop88_conv2d1x1102_out_data_out_2_delay_0;
    reg [31:0] redist79_i_llvm_fpga_pop_f32_arrayidx131_4_promoted_e88_pop87_conv2d1x1105_out_data_out_2_q;
    reg [31:0] redist79_i_llvm_fpga_pop_f32_arrayidx131_4_promoted_e88_pop87_conv2d1x1105_out_data_out_2_delay_0;
    reg [31:0] redist80_i_llvm_fpga_pop_f32_arrayidx131_3_promoted_e87_pop86_conv2d1x1108_out_data_out_2_q;
    reg [31:0] redist80_i_llvm_fpga_pop_f32_arrayidx131_3_promoted_e87_pop86_conv2d1x1108_out_data_out_2_delay_0;
    reg [0:0] redist81_i_llvm_fpga_fanout_i1_c1_ene2566_fanout_adaptor_conv2d1x15_q_2_q;
    reg [0:0] redist81_i_llvm_fpga_fanout_i1_c1_ene2566_fanout_adaptor_conv2d1x15_q_2_delay_0;
    reg [0:0] redist82_i_llvm_fpga_fanout_i1_c1_ene2566_fanout_adaptor594_conv2d1x14_q_2_q;
    reg [0:0] redist82_i_llvm_fpga_fanout_i1_c1_ene2566_fanout_adaptor594_conv2d1x14_q_2_delay_0;
    reg [0:0] redist83_i_llvm_fpga_fanout_i1_c1_ene18582_fanout_adaptor598_conv2d1x17_q_2_q;
    reg [0:0] redist83_i_llvm_fpga_fanout_i1_c1_ene18582_fanout_adaptor598_conv2d1x17_q_2_delay_0;
    wire redist0_sync_together342_aunroll_vunroll_x_in_c1_eni37_1_tpl_3_mem_reset0;
    wire [31:0] redist0_sync_together342_aunroll_vunroll_x_in_c1_eni37_1_tpl_3_mem_ia;
    wire [0:0] redist0_sync_together342_aunroll_vunroll_x_in_c1_eni37_1_tpl_3_mem_aa;
    wire [0:0] redist0_sync_together342_aunroll_vunroll_x_in_c1_eni37_1_tpl_3_mem_ab;
    wire [31:0] redist0_sync_together342_aunroll_vunroll_x_in_c1_eni37_1_tpl_3_mem_iq;
    wire [31:0] redist0_sync_together342_aunroll_vunroll_x_in_c1_eni37_1_tpl_3_mem_q;
    wire [0:0] redist0_sync_together342_aunroll_vunroll_x_in_c1_eni37_1_tpl_3_rdcnt_q;
    (* preserve *) reg [0:0] redist0_sync_together342_aunroll_vunroll_x_in_c1_eni37_1_tpl_3_rdcnt_i;
    reg [0:0] redist0_sync_together342_aunroll_vunroll_x_in_c1_eni37_1_tpl_3_wraddr_q;
    (* dont_merge *) reg [0:0] redist0_sync_together342_aunroll_vunroll_x_in_c1_eni37_1_tpl_3_cmpReg_q;
    wire [0:0] redist0_sync_together342_aunroll_vunroll_x_in_c1_eni37_1_tpl_3_notEnable_q;
    wire [0:0] redist0_sync_together342_aunroll_vunroll_x_in_c1_eni37_1_tpl_3_nor_q;
    (* dont_merge *) reg [0:0] redist0_sync_together342_aunroll_vunroll_x_in_c1_eni37_1_tpl_3_sticky_ena_q;
    wire [0:0] redist0_sync_together342_aunroll_vunroll_x_in_c1_eni37_1_tpl_3_enaAnd_q;
    wire redist3_sync_together342_aunroll_vunroll_x_in_c1_eni37_3_tpl_3_mem_reset0;
    wire [31:0] redist3_sync_together342_aunroll_vunroll_x_in_c1_eni37_3_tpl_3_mem_ia;
    wire [0:0] redist3_sync_together342_aunroll_vunroll_x_in_c1_eni37_3_tpl_3_mem_aa;
    wire [0:0] redist3_sync_together342_aunroll_vunroll_x_in_c1_eni37_3_tpl_3_mem_ab;
    wire [31:0] redist3_sync_together342_aunroll_vunroll_x_in_c1_eni37_3_tpl_3_mem_iq;
    wire [31:0] redist3_sync_together342_aunroll_vunroll_x_in_c1_eni37_3_tpl_3_mem_q;
    wire [0:0] redist3_sync_together342_aunroll_vunroll_x_in_c1_eni37_3_tpl_3_rdcnt_q;
    (* preserve *) reg [0:0] redist3_sync_together342_aunroll_vunroll_x_in_c1_eni37_3_tpl_3_rdcnt_i;
    reg [0:0] redist3_sync_together342_aunroll_vunroll_x_in_c1_eni37_3_tpl_3_wraddr_q;
    (* dont_merge *) reg [0:0] redist3_sync_together342_aunroll_vunroll_x_in_c1_eni37_3_tpl_3_cmpReg_q;
    wire [0:0] redist3_sync_together342_aunroll_vunroll_x_in_c1_eni37_3_tpl_3_notEnable_q;
    wire [0:0] redist3_sync_together342_aunroll_vunroll_x_in_c1_eni37_3_tpl_3_nor_q;
    (* dont_merge *) reg [0:0] redist3_sync_together342_aunroll_vunroll_x_in_c1_eni37_3_tpl_3_sticky_ena_q;
    wire [0:0] redist3_sync_together342_aunroll_vunroll_x_in_c1_eni37_3_tpl_3_enaAnd_q;
    wire redist4_sync_together342_aunroll_vunroll_x_in_c1_eni37_4_tpl_3_mem_reset0;
    wire [31:0] redist4_sync_together342_aunroll_vunroll_x_in_c1_eni37_4_tpl_3_mem_ia;
    wire [0:0] redist4_sync_together342_aunroll_vunroll_x_in_c1_eni37_4_tpl_3_mem_aa;
    wire [0:0] redist4_sync_together342_aunroll_vunroll_x_in_c1_eni37_4_tpl_3_mem_ab;
    wire [31:0] redist4_sync_together342_aunroll_vunroll_x_in_c1_eni37_4_tpl_3_mem_iq;
    wire [31:0] redist4_sync_together342_aunroll_vunroll_x_in_c1_eni37_4_tpl_3_mem_q;
    wire [0:0] redist4_sync_together342_aunroll_vunroll_x_in_c1_eni37_4_tpl_3_rdcnt_q;
    (* preserve *) reg [0:0] redist4_sync_together342_aunroll_vunroll_x_in_c1_eni37_4_tpl_3_rdcnt_i;
    reg [0:0] redist4_sync_together342_aunroll_vunroll_x_in_c1_eni37_4_tpl_3_wraddr_q;
    (* dont_merge *) reg [0:0] redist4_sync_together342_aunroll_vunroll_x_in_c1_eni37_4_tpl_3_cmpReg_q;
    wire [0:0] redist4_sync_together342_aunroll_vunroll_x_in_c1_eni37_4_tpl_3_notEnable_q;
    wire [0:0] redist4_sync_together342_aunroll_vunroll_x_in_c1_eni37_4_tpl_3_nor_q;
    (* dont_merge *) reg [0:0] redist4_sync_together342_aunroll_vunroll_x_in_c1_eni37_4_tpl_3_sticky_ena_q;
    wire [0:0] redist4_sync_together342_aunroll_vunroll_x_in_c1_eni37_4_tpl_3_enaAnd_q;
    wire redist5_sync_together342_aunroll_vunroll_x_in_c1_eni37_5_tpl_3_mem_reset0;
    wire [31:0] redist5_sync_together342_aunroll_vunroll_x_in_c1_eni37_5_tpl_3_mem_ia;
    wire [0:0] redist5_sync_together342_aunroll_vunroll_x_in_c1_eni37_5_tpl_3_mem_aa;
    wire [0:0] redist5_sync_together342_aunroll_vunroll_x_in_c1_eni37_5_tpl_3_mem_ab;
    wire [31:0] redist5_sync_together342_aunroll_vunroll_x_in_c1_eni37_5_tpl_3_mem_iq;
    wire [31:0] redist5_sync_together342_aunroll_vunroll_x_in_c1_eni37_5_tpl_3_mem_q;
    wire [0:0] redist5_sync_together342_aunroll_vunroll_x_in_c1_eni37_5_tpl_3_rdcnt_q;
    (* preserve *) reg [0:0] redist5_sync_together342_aunroll_vunroll_x_in_c1_eni37_5_tpl_3_rdcnt_i;
    reg [0:0] redist5_sync_together342_aunroll_vunroll_x_in_c1_eni37_5_tpl_3_wraddr_q;
    (* dont_merge *) reg [0:0] redist5_sync_together342_aunroll_vunroll_x_in_c1_eni37_5_tpl_3_cmpReg_q;
    wire [0:0] redist5_sync_together342_aunroll_vunroll_x_in_c1_eni37_5_tpl_3_notEnable_q;
    wire [0:0] redist5_sync_together342_aunroll_vunroll_x_in_c1_eni37_5_tpl_3_nor_q;
    (* dont_merge *) reg [0:0] redist5_sync_together342_aunroll_vunroll_x_in_c1_eni37_5_tpl_3_sticky_ena_q;
    wire [0:0] redist5_sync_together342_aunroll_vunroll_x_in_c1_eni37_5_tpl_3_enaAnd_q;
    wire redist6_sync_together342_aunroll_vunroll_x_in_c1_eni37_6_tpl_3_mem_reset0;
    wire [31:0] redist6_sync_together342_aunroll_vunroll_x_in_c1_eni37_6_tpl_3_mem_ia;
    wire [0:0] redist6_sync_together342_aunroll_vunroll_x_in_c1_eni37_6_tpl_3_mem_aa;
    wire [0:0] redist6_sync_together342_aunroll_vunroll_x_in_c1_eni37_6_tpl_3_mem_ab;
    wire [31:0] redist6_sync_together342_aunroll_vunroll_x_in_c1_eni37_6_tpl_3_mem_iq;
    wire [31:0] redist6_sync_together342_aunroll_vunroll_x_in_c1_eni37_6_tpl_3_mem_q;
    wire [0:0] redist6_sync_together342_aunroll_vunroll_x_in_c1_eni37_6_tpl_3_rdcnt_q;
    (* preserve *) reg [0:0] redist6_sync_together342_aunroll_vunroll_x_in_c1_eni37_6_tpl_3_rdcnt_i;
    reg [0:0] redist6_sync_together342_aunroll_vunroll_x_in_c1_eni37_6_tpl_3_wraddr_q;
    (* dont_merge *) reg [0:0] redist6_sync_together342_aunroll_vunroll_x_in_c1_eni37_6_tpl_3_cmpReg_q;
    wire [0:0] redist6_sync_together342_aunroll_vunroll_x_in_c1_eni37_6_tpl_3_notEnable_q;
    wire [0:0] redist6_sync_together342_aunroll_vunroll_x_in_c1_eni37_6_tpl_3_nor_q;
    (* dont_merge *) reg [0:0] redist6_sync_together342_aunroll_vunroll_x_in_c1_eni37_6_tpl_3_sticky_ena_q;
    wire [0:0] redist6_sync_together342_aunroll_vunroll_x_in_c1_eni37_6_tpl_3_enaAnd_q;
    wire redist7_sync_together342_aunroll_vunroll_x_in_c1_eni37_7_tpl_3_mem_reset0;
    wire [31:0] redist7_sync_together342_aunroll_vunroll_x_in_c1_eni37_7_tpl_3_mem_ia;
    wire [0:0] redist7_sync_together342_aunroll_vunroll_x_in_c1_eni37_7_tpl_3_mem_aa;
    wire [0:0] redist7_sync_together342_aunroll_vunroll_x_in_c1_eni37_7_tpl_3_mem_ab;
    wire [31:0] redist7_sync_together342_aunroll_vunroll_x_in_c1_eni37_7_tpl_3_mem_iq;
    wire [31:0] redist7_sync_together342_aunroll_vunroll_x_in_c1_eni37_7_tpl_3_mem_q;
    wire [0:0] redist7_sync_together342_aunroll_vunroll_x_in_c1_eni37_7_tpl_3_rdcnt_q;
    (* preserve *) reg [0:0] redist7_sync_together342_aunroll_vunroll_x_in_c1_eni37_7_tpl_3_rdcnt_i;
    reg [0:0] redist7_sync_together342_aunroll_vunroll_x_in_c1_eni37_7_tpl_3_wraddr_q;
    (* dont_merge *) reg [0:0] redist7_sync_together342_aunroll_vunroll_x_in_c1_eni37_7_tpl_3_cmpReg_q;
    wire [0:0] redist7_sync_together342_aunroll_vunroll_x_in_c1_eni37_7_tpl_3_notEnable_q;
    wire [0:0] redist7_sync_together342_aunroll_vunroll_x_in_c1_eni37_7_tpl_3_nor_q;
    (* dont_merge *) reg [0:0] redist7_sync_together342_aunroll_vunroll_x_in_c1_eni37_7_tpl_3_sticky_ena_q;
    wire [0:0] redist7_sync_together342_aunroll_vunroll_x_in_c1_eni37_7_tpl_3_enaAnd_q;
    wire redist8_sync_together342_aunroll_vunroll_x_in_c1_eni37_8_tpl_3_mem_reset0;
    wire [31:0] redist8_sync_together342_aunroll_vunroll_x_in_c1_eni37_8_tpl_3_mem_ia;
    wire [0:0] redist8_sync_together342_aunroll_vunroll_x_in_c1_eni37_8_tpl_3_mem_aa;
    wire [0:0] redist8_sync_together342_aunroll_vunroll_x_in_c1_eni37_8_tpl_3_mem_ab;
    wire [31:0] redist8_sync_together342_aunroll_vunroll_x_in_c1_eni37_8_tpl_3_mem_iq;
    wire [31:0] redist8_sync_together342_aunroll_vunroll_x_in_c1_eni37_8_tpl_3_mem_q;
    wire [0:0] redist8_sync_together342_aunroll_vunroll_x_in_c1_eni37_8_tpl_3_rdcnt_q;
    (* preserve *) reg [0:0] redist8_sync_together342_aunroll_vunroll_x_in_c1_eni37_8_tpl_3_rdcnt_i;
    reg [0:0] redist8_sync_together342_aunroll_vunroll_x_in_c1_eni37_8_tpl_3_wraddr_q;
    (* dont_merge *) reg [0:0] redist8_sync_together342_aunroll_vunroll_x_in_c1_eni37_8_tpl_3_cmpReg_q;
    wire [0:0] redist8_sync_together342_aunroll_vunroll_x_in_c1_eni37_8_tpl_3_notEnable_q;
    wire [0:0] redist8_sync_together342_aunroll_vunroll_x_in_c1_eni37_8_tpl_3_nor_q;
    (* dont_merge *) reg [0:0] redist8_sync_together342_aunroll_vunroll_x_in_c1_eni37_8_tpl_3_sticky_ena_q;
    wire [0:0] redist8_sync_together342_aunroll_vunroll_x_in_c1_eni37_8_tpl_3_enaAnd_q;
    wire redist9_sync_together342_aunroll_vunroll_x_in_c1_eni37_9_tpl_3_mem_reset0;
    wire [31:0] redist9_sync_together342_aunroll_vunroll_x_in_c1_eni37_9_tpl_3_mem_ia;
    wire [0:0] redist9_sync_together342_aunroll_vunroll_x_in_c1_eni37_9_tpl_3_mem_aa;
    wire [0:0] redist9_sync_together342_aunroll_vunroll_x_in_c1_eni37_9_tpl_3_mem_ab;
    wire [31:0] redist9_sync_together342_aunroll_vunroll_x_in_c1_eni37_9_tpl_3_mem_iq;
    wire [31:0] redist9_sync_together342_aunroll_vunroll_x_in_c1_eni37_9_tpl_3_mem_q;
    wire [0:0] redist9_sync_together342_aunroll_vunroll_x_in_c1_eni37_9_tpl_3_rdcnt_q;
    (* preserve *) reg [0:0] redist9_sync_together342_aunroll_vunroll_x_in_c1_eni37_9_tpl_3_rdcnt_i;
    reg [0:0] redist9_sync_together342_aunroll_vunroll_x_in_c1_eni37_9_tpl_3_wraddr_q;
    (* dont_merge *) reg [0:0] redist9_sync_together342_aunroll_vunroll_x_in_c1_eni37_9_tpl_3_cmpReg_q;
    wire [0:0] redist9_sync_together342_aunroll_vunroll_x_in_c1_eni37_9_tpl_3_notEnable_q;
    wire [0:0] redist9_sync_together342_aunroll_vunroll_x_in_c1_eni37_9_tpl_3_nor_q;
    (* dont_merge *) reg [0:0] redist9_sync_together342_aunroll_vunroll_x_in_c1_eni37_9_tpl_3_sticky_ena_q;
    wire [0:0] redist9_sync_together342_aunroll_vunroll_x_in_c1_eni37_9_tpl_3_enaAnd_q;
    reg [31:0] redist11_sync_together342_aunroll_vunroll_x_in_c1_eni37_10_tpl_5_outputreg0_q;
    wire redist11_sync_together342_aunroll_vunroll_x_in_c1_eni37_10_tpl_5_mem_reset0;
    wire [31:0] redist11_sync_together342_aunroll_vunroll_x_in_c1_eni37_10_tpl_5_mem_ia;
    wire [1:0] redist11_sync_together342_aunroll_vunroll_x_in_c1_eni37_10_tpl_5_mem_aa;
    wire [1:0] redist11_sync_together342_aunroll_vunroll_x_in_c1_eni37_10_tpl_5_mem_ab;
    wire [31:0] redist11_sync_together342_aunroll_vunroll_x_in_c1_eni37_10_tpl_5_mem_iq;
    wire [31:0] redist11_sync_together342_aunroll_vunroll_x_in_c1_eni37_10_tpl_5_mem_q;
    wire [1:0] redist11_sync_together342_aunroll_vunroll_x_in_c1_eni37_10_tpl_5_rdcnt_q;
    (* preserve *) reg [1:0] redist11_sync_together342_aunroll_vunroll_x_in_c1_eni37_10_tpl_5_rdcnt_i;
    (* preserve *) reg redist11_sync_together342_aunroll_vunroll_x_in_c1_eni37_10_tpl_5_rdcnt_eq;
    reg [1:0] redist11_sync_together342_aunroll_vunroll_x_in_c1_eni37_10_tpl_5_wraddr_q;
    wire [1:0] redist11_sync_together342_aunroll_vunroll_x_in_c1_eni37_10_tpl_5_mem_last_q;
    wire [0:0] redist11_sync_together342_aunroll_vunroll_x_in_c1_eni37_10_tpl_5_cmp_q;
    (* dont_merge *) reg [0:0] redist11_sync_together342_aunroll_vunroll_x_in_c1_eni37_10_tpl_5_cmpReg_q;
    wire [0:0] redist11_sync_together342_aunroll_vunroll_x_in_c1_eni37_10_tpl_5_notEnable_q;
    wire [0:0] redist11_sync_together342_aunroll_vunroll_x_in_c1_eni37_10_tpl_5_nor_q;
    (* dont_merge *) reg [0:0] redist11_sync_together342_aunroll_vunroll_x_in_c1_eni37_10_tpl_5_sticky_ena_q;
    wire [0:0] redist11_sync_together342_aunroll_vunroll_x_in_c1_eni37_10_tpl_5_enaAnd_q;
    reg [31:0] redist12_sync_together342_aunroll_vunroll_x_in_c1_eni37_11_tpl_5_outputreg0_q;
    wire redist12_sync_together342_aunroll_vunroll_x_in_c1_eni37_11_tpl_5_mem_reset0;
    wire [31:0] redist12_sync_together342_aunroll_vunroll_x_in_c1_eni37_11_tpl_5_mem_ia;
    wire [1:0] redist12_sync_together342_aunroll_vunroll_x_in_c1_eni37_11_tpl_5_mem_aa;
    wire [1:0] redist12_sync_together342_aunroll_vunroll_x_in_c1_eni37_11_tpl_5_mem_ab;
    wire [31:0] redist12_sync_together342_aunroll_vunroll_x_in_c1_eni37_11_tpl_5_mem_iq;
    wire [31:0] redist12_sync_together342_aunroll_vunroll_x_in_c1_eni37_11_tpl_5_mem_q;
    wire [1:0] redist12_sync_together342_aunroll_vunroll_x_in_c1_eni37_11_tpl_5_rdcnt_q;
    (* preserve *) reg [1:0] redist12_sync_together342_aunroll_vunroll_x_in_c1_eni37_11_tpl_5_rdcnt_i;
    (* preserve *) reg redist12_sync_together342_aunroll_vunroll_x_in_c1_eni37_11_tpl_5_rdcnt_eq;
    reg [1:0] redist12_sync_together342_aunroll_vunroll_x_in_c1_eni37_11_tpl_5_wraddr_q;
    wire [1:0] redist12_sync_together342_aunroll_vunroll_x_in_c1_eni37_11_tpl_5_mem_last_q;
    wire [0:0] redist12_sync_together342_aunroll_vunroll_x_in_c1_eni37_11_tpl_5_cmp_q;
    (* dont_merge *) reg [0:0] redist12_sync_together342_aunroll_vunroll_x_in_c1_eni37_11_tpl_5_cmpReg_q;
    wire [0:0] redist12_sync_together342_aunroll_vunroll_x_in_c1_eni37_11_tpl_5_notEnable_q;
    wire [0:0] redist12_sync_together342_aunroll_vunroll_x_in_c1_eni37_11_tpl_5_nor_q;
    (* dont_merge *) reg [0:0] redist12_sync_together342_aunroll_vunroll_x_in_c1_eni37_11_tpl_5_sticky_ena_q;
    wire [0:0] redist12_sync_together342_aunroll_vunroll_x_in_c1_eni37_11_tpl_5_enaAnd_q;
    reg [31:0] redist13_sync_together342_aunroll_vunroll_x_in_c1_eni37_12_tpl_5_outputreg0_q;
    wire redist13_sync_together342_aunroll_vunroll_x_in_c1_eni37_12_tpl_5_mem_reset0;
    wire [31:0] redist13_sync_together342_aunroll_vunroll_x_in_c1_eni37_12_tpl_5_mem_ia;
    wire [1:0] redist13_sync_together342_aunroll_vunroll_x_in_c1_eni37_12_tpl_5_mem_aa;
    wire [1:0] redist13_sync_together342_aunroll_vunroll_x_in_c1_eni37_12_tpl_5_mem_ab;
    wire [31:0] redist13_sync_together342_aunroll_vunroll_x_in_c1_eni37_12_tpl_5_mem_iq;
    wire [31:0] redist13_sync_together342_aunroll_vunroll_x_in_c1_eni37_12_tpl_5_mem_q;
    wire [1:0] redist13_sync_together342_aunroll_vunroll_x_in_c1_eni37_12_tpl_5_rdcnt_q;
    (* preserve *) reg [1:0] redist13_sync_together342_aunroll_vunroll_x_in_c1_eni37_12_tpl_5_rdcnt_i;
    (* preserve *) reg redist13_sync_together342_aunroll_vunroll_x_in_c1_eni37_12_tpl_5_rdcnt_eq;
    reg [1:0] redist13_sync_together342_aunroll_vunroll_x_in_c1_eni37_12_tpl_5_wraddr_q;
    wire [1:0] redist13_sync_together342_aunroll_vunroll_x_in_c1_eni37_12_tpl_5_mem_last_q;
    wire [0:0] redist13_sync_together342_aunroll_vunroll_x_in_c1_eni37_12_tpl_5_cmp_q;
    (* dont_merge *) reg [0:0] redist13_sync_together342_aunroll_vunroll_x_in_c1_eni37_12_tpl_5_cmpReg_q;
    wire [0:0] redist13_sync_together342_aunroll_vunroll_x_in_c1_eni37_12_tpl_5_notEnable_q;
    wire [0:0] redist13_sync_together342_aunroll_vunroll_x_in_c1_eni37_12_tpl_5_nor_q;
    (* dont_merge *) reg [0:0] redist13_sync_together342_aunroll_vunroll_x_in_c1_eni37_12_tpl_5_sticky_ena_q;
    wire [0:0] redist13_sync_together342_aunroll_vunroll_x_in_c1_eni37_12_tpl_5_enaAnd_q;
    reg [31:0] redist14_sync_together342_aunroll_vunroll_x_in_c1_eni37_13_tpl_5_outputreg0_q;
    wire redist14_sync_together342_aunroll_vunroll_x_in_c1_eni37_13_tpl_5_mem_reset0;
    wire [31:0] redist14_sync_together342_aunroll_vunroll_x_in_c1_eni37_13_tpl_5_mem_ia;
    wire [1:0] redist14_sync_together342_aunroll_vunroll_x_in_c1_eni37_13_tpl_5_mem_aa;
    wire [1:0] redist14_sync_together342_aunroll_vunroll_x_in_c1_eni37_13_tpl_5_mem_ab;
    wire [31:0] redist14_sync_together342_aunroll_vunroll_x_in_c1_eni37_13_tpl_5_mem_iq;
    wire [31:0] redist14_sync_together342_aunroll_vunroll_x_in_c1_eni37_13_tpl_5_mem_q;
    wire [1:0] redist14_sync_together342_aunroll_vunroll_x_in_c1_eni37_13_tpl_5_rdcnt_q;
    (* preserve *) reg [1:0] redist14_sync_together342_aunroll_vunroll_x_in_c1_eni37_13_tpl_5_rdcnt_i;
    (* preserve *) reg redist14_sync_together342_aunroll_vunroll_x_in_c1_eni37_13_tpl_5_rdcnt_eq;
    reg [1:0] redist14_sync_together342_aunroll_vunroll_x_in_c1_eni37_13_tpl_5_wraddr_q;
    wire [1:0] redist14_sync_together342_aunroll_vunroll_x_in_c1_eni37_13_tpl_5_mem_last_q;
    wire [0:0] redist14_sync_together342_aunroll_vunroll_x_in_c1_eni37_13_tpl_5_cmp_q;
    (* dont_merge *) reg [0:0] redist14_sync_together342_aunroll_vunroll_x_in_c1_eni37_13_tpl_5_cmpReg_q;
    wire [0:0] redist14_sync_together342_aunroll_vunroll_x_in_c1_eni37_13_tpl_5_notEnable_q;
    wire [0:0] redist14_sync_together342_aunroll_vunroll_x_in_c1_eni37_13_tpl_5_nor_q;
    (* dont_merge *) reg [0:0] redist14_sync_together342_aunroll_vunroll_x_in_c1_eni37_13_tpl_5_sticky_ena_q;
    wire [0:0] redist14_sync_together342_aunroll_vunroll_x_in_c1_eni37_13_tpl_5_enaAnd_q;
    reg [31:0] redist15_sync_together342_aunroll_vunroll_x_in_c1_eni37_14_tpl_5_outputreg0_q;
    wire redist15_sync_together342_aunroll_vunroll_x_in_c1_eni37_14_tpl_5_mem_reset0;
    wire [31:0] redist15_sync_together342_aunroll_vunroll_x_in_c1_eni37_14_tpl_5_mem_ia;
    wire [1:0] redist15_sync_together342_aunroll_vunroll_x_in_c1_eni37_14_tpl_5_mem_aa;
    wire [1:0] redist15_sync_together342_aunroll_vunroll_x_in_c1_eni37_14_tpl_5_mem_ab;
    wire [31:0] redist15_sync_together342_aunroll_vunroll_x_in_c1_eni37_14_tpl_5_mem_iq;
    wire [31:0] redist15_sync_together342_aunroll_vunroll_x_in_c1_eni37_14_tpl_5_mem_q;
    wire [1:0] redist15_sync_together342_aunroll_vunroll_x_in_c1_eni37_14_tpl_5_rdcnt_q;
    (* preserve *) reg [1:0] redist15_sync_together342_aunroll_vunroll_x_in_c1_eni37_14_tpl_5_rdcnt_i;
    (* preserve *) reg redist15_sync_together342_aunroll_vunroll_x_in_c1_eni37_14_tpl_5_rdcnt_eq;
    reg [1:0] redist15_sync_together342_aunroll_vunroll_x_in_c1_eni37_14_tpl_5_wraddr_q;
    wire [1:0] redist15_sync_together342_aunroll_vunroll_x_in_c1_eni37_14_tpl_5_mem_last_q;
    wire [0:0] redist15_sync_together342_aunroll_vunroll_x_in_c1_eni37_14_tpl_5_cmp_q;
    (* dont_merge *) reg [0:0] redist15_sync_together342_aunroll_vunroll_x_in_c1_eni37_14_tpl_5_cmpReg_q;
    wire [0:0] redist15_sync_together342_aunroll_vunroll_x_in_c1_eni37_14_tpl_5_notEnable_q;
    wire [0:0] redist15_sync_together342_aunroll_vunroll_x_in_c1_eni37_14_tpl_5_nor_q;
    (* dont_merge *) reg [0:0] redist15_sync_together342_aunroll_vunroll_x_in_c1_eni37_14_tpl_5_sticky_ena_q;
    wire [0:0] redist15_sync_together342_aunroll_vunroll_x_in_c1_eni37_14_tpl_5_enaAnd_q;
    reg [31:0] redist16_sync_together342_aunroll_vunroll_x_in_c1_eni37_15_tpl_5_outputreg0_q;
    wire redist16_sync_together342_aunroll_vunroll_x_in_c1_eni37_15_tpl_5_mem_reset0;
    wire [31:0] redist16_sync_together342_aunroll_vunroll_x_in_c1_eni37_15_tpl_5_mem_ia;
    wire [1:0] redist16_sync_together342_aunroll_vunroll_x_in_c1_eni37_15_tpl_5_mem_aa;
    wire [1:0] redist16_sync_together342_aunroll_vunroll_x_in_c1_eni37_15_tpl_5_mem_ab;
    wire [31:0] redist16_sync_together342_aunroll_vunroll_x_in_c1_eni37_15_tpl_5_mem_iq;
    wire [31:0] redist16_sync_together342_aunroll_vunroll_x_in_c1_eni37_15_tpl_5_mem_q;
    wire [1:0] redist16_sync_together342_aunroll_vunroll_x_in_c1_eni37_15_tpl_5_rdcnt_q;
    (* preserve *) reg [1:0] redist16_sync_together342_aunroll_vunroll_x_in_c1_eni37_15_tpl_5_rdcnt_i;
    (* preserve *) reg redist16_sync_together342_aunroll_vunroll_x_in_c1_eni37_15_tpl_5_rdcnt_eq;
    reg [1:0] redist16_sync_together342_aunroll_vunroll_x_in_c1_eni37_15_tpl_5_wraddr_q;
    wire [1:0] redist16_sync_together342_aunroll_vunroll_x_in_c1_eni37_15_tpl_5_mem_last_q;
    wire [0:0] redist16_sync_together342_aunroll_vunroll_x_in_c1_eni37_15_tpl_5_cmp_q;
    (* dont_merge *) reg [0:0] redist16_sync_together342_aunroll_vunroll_x_in_c1_eni37_15_tpl_5_cmpReg_q;
    wire [0:0] redist16_sync_together342_aunroll_vunroll_x_in_c1_eni37_15_tpl_5_notEnable_q;
    wire [0:0] redist16_sync_together342_aunroll_vunroll_x_in_c1_eni37_15_tpl_5_nor_q;
    (* dont_merge *) reg [0:0] redist16_sync_together342_aunroll_vunroll_x_in_c1_eni37_15_tpl_5_sticky_ena_q;
    wire [0:0] redist16_sync_together342_aunroll_vunroll_x_in_c1_eni37_15_tpl_5_enaAnd_q;
    reg [31:0] redist17_sync_together342_aunroll_vunroll_x_in_c1_eni37_16_tpl_5_outputreg0_q;
    wire redist17_sync_together342_aunroll_vunroll_x_in_c1_eni37_16_tpl_5_mem_reset0;
    wire [31:0] redist17_sync_together342_aunroll_vunroll_x_in_c1_eni37_16_tpl_5_mem_ia;
    wire [1:0] redist17_sync_together342_aunroll_vunroll_x_in_c1_eni37_16_tpl_5_mem_aa;
    wire [1:0] redist17_sync_together342_aunroll_vunroll_x_in_c1_eni37_16_tpl_5_mem_ab;
    wire [31:0] redist17_sync_together342_aunroll_vunroll_x_in_c1_eni37_16_tpl_5_mem_iq;
    wire [31:0] redist17_sync_together342_aunroll_vunroll_x_in_c1_eni37_16_tpl_5_mem_q;
    wire [1:0] redist17_sync_together342_aunroll_vunroll_x_in_c1_eni37_16_tpl_5_rdcnt_q;
    (* preserve *) reg [1:0] redist17_sync_together342_aunroll_vunroll_x_in_c1_eni37_16_tpl_5_rdcnt_i;
    (* preserve *) reg redist17_sync_together342_aunroll_vunroll_x_in_c1_eni37_16_tpl_5_rdcnt_eq;
    reg [1:0] redist17_sync_together342_aunroll_vunroll_x_in_c1_eni37_16_tpl_5_wraddr_q;
    wire [1:0] redist17_sync_together342_aunroll_vunroll_x_in_c1_eni37_16_tpl_5_mem_last_q;
    wire [0:0] redist17_sync_together342_aunroll_vunroll_x_in_c1_eni37_16_tpl_5_cmp_q;
    (* dont_merge *) reg [0:0] redist17_sync_together342_aunroll_vunroll_x_in_c1_eni37_16_tpl_5_cmpReg_q;
    wire [0:0] redist17_sync_together342_aunroll_vunroll_x_in_c1_eni37_16_tpl_5_notEnable_q;
    wire [0:0] redist17_sync_together342_aunroll_vunroll_x_in_c1_eni37_16_tpl_5_nor_q;
    (* dont_merge *) reg [0:0] redist17_sync_together342_aunroll_vunroll_x_in_c1_eni37_16_tpl_5_sticky_ena_q;
    wire [0:0] redist17_sync_together342_aunroll_vunroll_x_in_c1_eni37_16_tpl_5_enaAnd_q;
    reg [31:0] redist18_sync_together342_aunroll_vunroll_x_in_c1_eni37_17_tpl_5_outputreg0_q;
    wire redist18_sync_together342_aunroll_vunroll_x_in_c1_eni37_17_tpl_5_mem_reset0;
    wire [31:0] redist18_sync_together342_aunroll_vunroll_x_in_c1_eni37_17_tpl_5_mem_ia;
    wire [1:0] redist18_sync_together342_aunroll_vunroll_x_in_c1_eni37_17_tpl_5_mem_aa;
    wire [1:0] redist18_sync_together342_aunroll_vunroll_x_in_c1_eni37_17_tpl_5_mem_ab;
    wire [31:0] redist18_sync_together342_aunroll_vunroll_x_in_c1_eni37_17_tpl_5_mem_iq;
    wire [31:0] redist18_sync_together342_aunroll_vunroll_x_in_c1_eni37_17_tpl_5_mem_q;
    wire [1:0] redist18_sync_together342_aunroll_vunroll_x_in_c1_eni37_17_tpl_5_rdcnt_q;
    (* preserve *) reg [1:0] redist18_sync_together342_aunroll_vunroll_x_in_c1_eni37_17_tpl_5_rdcnt_i;
    (* preserve *) reg redist18_sync_together342_aunroll_vunroll_x_in_c1_eni37_17_tpl_5_rdcnt_eq;
    reg [1:0] redist18_sync_together342_aunroll_vunroll_x_in_c1_eni37_17_tpl_5_wraddr_q;
    wire [1:0] redist18_sync_together342_aunroll_vunroll_x_in_c1_eni37_17_tpl_5_mem_last_q;
    wire [0:0] redist18_sync_together342_aunroll_vunroll_x_in_c1_eni37_17_tpl_5_cmp_q;
    (* dont_merge *) reg [0:0] redist18_sync_together342_aunroll_vunroll_x_in_c1_eni37_17_tpl_5_cmpReg_q;
    wire [0:0] redist18_sync_together342_aunroll_vunroll_x_in_c1_eni37_17_tpl_5_notEnable_q;
    wire [0:0] redist18_sync_together342_aunroll_vunroll_x_in_c1_eni37_17_tpl_5_nor_q;
    (* dont_merge *) reg [0:0] redist18_sync_together342_aunroll_vunroll_x_in_c1_eni37_17_tpl_5_sticky_ena_q;
    wire [0:0] redist18_sync_together342_aunroll_vunroll_x_in_c1_eni37_17_tpl_5_enaAnd_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist55_sync_together342_aunroll_vunroll_x_in_i_valid_2(DELAY,398)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist55_sync_together342_aunroll_vunroll_x_in_i_valid_2_delay_0 <= '0;
            redist55_sync_together342_aunroll_vunroll_x_in_i_valid_2_q <= '0;
        end
        else
        begin
            redist55_sync_together342_aunroll_vunroll_x_in_i_valid_2_delay_0 <= $unsigned(in_i_valid);
            redist55_sync_together342_aunroll_vunroll_x_in_i_valid_2_q <= redist55_sync_together342_aunroll_vunroll_x_in_i_valid_2_delay_0;
        end
    end

    // redist56_sync_together342_aunroll_vunroll_x_in_i_valid_4(DELAY,399)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist56_sync_together342_aunroll_vunroll_x_in_i_valid_4_delay_0 <= '0;
            redist56_sync_together342_aunroll_vunroll_x_in_i_valid_4_q <= '0;
        end
        else
        begin
            redist56_sync_together342_aunroll_vunroll_x_in_i_valid_4_delay_0 <= $unsigned(redist55_sync_together342_aunroll_vunroll_x_in_i_valid_2_q);
            redist56_sync_together342_aunroll_vunroll_x_in_i_valid_4_q <= redist56_sync_together342_aunroll_vunroll_x_in_i_valid_4_delay_0;
        end
    end

    // valid_fanout_reg0(REG,245)@152 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist56_sync_together342_aunroll_vunroll_x_in_i_valid_4_q);
        end
    end

    // valid_fanout_reg96(REG,341)@150 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg96_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg96_q <= $unsigned(redist55_sync_together342_aunroll_vunroll_x_in_i_valid_2_q);
        end
    end

    // valid_fanout_reg97(REG,342)@150 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg97_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg97_q <= $unsigned(redist55_sync_together342_aunroll_vunroll_x_in_i_valid_2_q);
        end
    end

    // redist19_sync_together342_aunroll_vunroll_x_in_c1_eni37_18_tpl_2(DELAY,362)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist19_sync_together342_aunroll_vunroll_x_in_c1_eni37_18_tpl_2_delay_0 <= '0;
            redist19_sync_together342_aunroll_vunroll_x_in_c1_eni37_18_tpl_2_q <= '0;
        end
        else
        begin
            redist19_sync_together342_aunroll_vunroll_x_in_c1_eni37_18_tpl_2_delay_0 <= $unsigned(in_c1_eni37_18_tpl);
            redist19_sync_together342_aunroll_vunroll_x_in_c1_eni37_18_tpl_2_q <= redist19_sync_together342_aunroll_vunroll_x_in_c1_eni37_18_tpl_2_delay_0;
        end
    end

    // i_llvm_fpga_fanout_i1_c1_ene18582_fanout_adaptor597_conv2d1x18(REG,100)@150 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_llvm_fpga_fanout_i1_c1_ene18582_fanout_adaptor597_conv2d1x18_q <= $unsigned(1'b0);
        end
        else
        begin
            i_llvm_fpga_fanout_i1_c1_ene18582_fanout_adaptor597_conv2d1x18_q <= redist19_sync_together342_aunroll_vunroll_x_in_c1_eni37_18_tpl_2_q;
        end
    end

    // i_llvm_fpga_push_f32_pre_e76_push75_conv2d1x1142(BLACKBOX,190)@151
    // out out_feedback_out_75@20000000
    // out out_feedback_valid_out_75@20000000
    conv2d1x1_i_llvm_fpga_push_f32_pre_e76_push75_0 thei_llvm_fpga_push_f32_pre_e76_push75_conv2d1x1142 (
        .in_c1_ene18582_fanout_adaptor597(i_llvm_fpga_fanout_i1_c1_ene18582_fanout_adaptor597_conv2d1x18_q),
        .in_data_in(i_llvm_fpga_pop_f32_pre_e76_pop75_conv2d1x1141_out_data_out),
        .in_feedback_stall_in_75(i_llvm_fpga_pop_f32_pre_e76_pop75_conv2d1x1141_out_feedback_stall_out_75),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg97_q),
        .out_data_out(),
        .out_feedback_out_75(i_llvm_fpga_push_f32_pre_e76_push75_conv2d1x1142_out_feedback_out_75),
        .out_feedback_valid_out_75(i_llvm_fpga_push_f32_pre_e76_push75_conv2d1x1142_out_feedback_valid_out_75),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_fanout_i1_c1_ene2566_fanout_adaptor594_conv2d1x14(REG,104)@148 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_llvm_fpga_fanout_i1_c1_ene2566_fanout_adaptor594_conv2d1x14_q <= $unsigned(1'b0);
        end
        else
        begin
            i_llvm_fpga_fanout_i1_c1_ene2566_fanout_adaptor594_conv2d1x14_q <= in_c1_eni37_2_tpl;
        end
    end

    // redist82_i_llvm_fpga_fanout_i1_c1_ene2566_fanout_adaptor594_conv2d1x14_q_2(DELAY,425)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist82_i_llvm_fpga_fanout_i1_c1_ene2566_fanout_adaptor594_conv2d1x14_q_2_delay_0 <= '0;
            redist82_i_llvm_fpga_fanout_i1_c1_ene2566_fanout_adaptor594_conv2d1x14_q_2_q <= '0;
        end
        else
        begin
            redist82_i_llvm_fpga_fanout_i1_c1_ene2566_fanout_adaptor594_conv2d1x14_q_2_delay_0 <= $unsigned(i_llvm_fpga_fanout_i1_c1_ene2566_fanout_adaptor594_conv2d1x14_q);
            redist82_i_llvm_fpga_fanout_i1_c1_ene2566_fanout_adaptor594_conv2d1x14_q_2_q <= redist82_i_llvm_fpga_fanout_i1_c1_ene2566_fanout_adaptor594_conv2d1x14_q_2_delay_0;
        end
    end

    // redist30_sync_together342_aunroll_vunroll_x_in_c1_eni37_21_tpl_1(DELAY,373)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist30_sync_together342_aunroll_vunroll_x_in_c1_eni37_21_tpl_1_q <= '0;
        end
        else
        begin
            redist30_sync_together342_aunroll_vunroll_x_in_c1_eni37_21_tpl_1_q <= $unsigned(in_c1_eni37_21_tpl);
        end
    end

    // redist31_sync_together342_aunroll_vunroll_x_in_c1_eni37_21_tpl_3(DELAY,374)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist31_sync_together342_aunroll_vunroll_x_in_c1_eni37_21_tpl_3_delay_0 <= '0;
            redist31_sync_together342_aunroll_vunroll_x_in_c1_eni37_21_tpl_3_q <= '0;
        end
        else
        begin
            redist31_sync_together342_aunroll_vunroll_x_in_c1_eni37_21_tpl_3_delay_0 <= $unsigned(redist30_sync_together342_aunroll_vunroll_x_in_c1_eni37_21_tpl_1_q);
            redist31_sync_together342_aunroll_vunroll_x_in_c1_eni37_21_tpl_3_q <= redist31_sync_together342_aunroll_vunroll_x_in_c1_eni37_21_tpl_3_delay_0;
        end
    end

    // i_llvm_fpga_pop_f32_pre_e76_pop75_conv2d1x1141(BLACKBOX,166)@151
    // out out_feedback_stall_out_75@20000000
    conv2d1x1_i_llvm_fpga_pop_f32_pre_e76_pop75_0 thei_llvm_fpga_pop_f32_pre_e76_pop75_conv2d1x1141 (
        .in_data_in(redist31_sync_together342_aunroll_vunroll_x_in_c1_eni37_21_tpl_3_q),
        .in_dir(redist82_i_llvm_fpga_fanout_i1_c1_ene2566_fanout_adaptor594_conv2d1x14_q_2_q),
        .in_feedback_in_75(i_llvm_fpga_push_f32_pre_e76_push75_conv2d1x1142_out_feedback_out_75),
        .in_feedback_valid_in_75(i_llvm_fpga_push_f32_pre_e76_push75_conv2d1x1142_out_feedback_valid_out_75),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg96_q),
        .out_data_out(i_llvm_fpga_pop_f32_pre_e76_pop75_conv2d1x1141_out_data_out),
        .out_feedback_stall_out_75(i_llvm_fpga_pop_f32_pre_e76_pop75_conv2d1x1141_out_feedback_stall_out_75),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist58_i_llvm_fpga_pop_f32_pre_e76_pop75_conv2d1x1141_out_data_out_2(DELAY,401)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist58_i_llvm_fpga_pop_f32_pre_e76_pop75_conv2d1x1141_out_data_out_2_delay_0 <= '0;
            redist58_i_llvm_fpga_pop_f32_pre_e76_pop75_conv2d1x1141_out_data_out_2_q <= '0;
        end
        else
        begin
            redist58_i_llvm_fpga_pop_f32_pre_e76_pop75_conv2d1x1141_out_data_out_2_delay_0 <= $unsigned(i_llvm_fpga_pop_f32_pre_e76_pop75_conv2d1x1141_out_data_out);
            redist58_i_llvm_fpga_pop_f32_pre_e76_pop75_conv2d1x1141_out_data_out_2_q <= redist58_i_llvm_fpga_pop_f32_pre_e76_pop75_conv2d1x1141_out_data_out_2_delay_0;
        end
    end

    // valid_fanout_reg25(REG,270)@148 + 1
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

    // i_llvm_fpga_ffwd_dest_i1_cmp129920_conv2d1x134(BLACKBOX,110)@149
    conv2d1x1_i_llvm_fpga_ffwd_dest_i1_cmp129920_0 thei_llvm_fpga_ffwd_dest_i1_cmp129920_conv2d1x134 (
        .in_intel_reserved_ffwd_2_0(in_intel_reserved_ffwd_2_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg25_q),
        .out_dest_data_out_2_0(i_llvm_fpga_ffwd_dest_i1_cmp129920_conv2d1x134_out_dest_data_out_2_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_notlhs270_conv2d1x135(LOGICAL,216)@149
    assign i_notlhs270_conv2d1x135_q = i_llvm_fpga_ffwd_dest_i1_cmp129920_conv2d1x134_out_dest_data_out_2_0 ^ VCC_q;

    // redist21_sync_together342_aunroll_vunroll_x_in_c1_eni37_19_tpl_1(DELAY,364)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist21_sync_together342_aunroll_vunroll_x_in_c1_eni37_19_tpl_1_q <= '0;
        end
        else
        begin
            redist21_sync_together342_aunroll_vunroll_x_in_c1_eni37_19_tpl_1_q <= $unsigned(in_c1_eni37_19_tpl);
        end
    end

    // i_not_269_conv2d1x136(LOGICAL,215)@149 + 1
    assign i_not_269_conv2d1x136_qi = redist21_sync_together342_aunroll_vunroll_x_in_c1_eni37_19_tpl_1_q | i_notlhs270_conv2d1x135_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_not_269_conv2d1x136_delay ( .xin(i_not_269_conv2d1x136_qi), .xout(i_not_269_conv2d1x136_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist57_i_not_269_conv2d1x136_q_3(DELAY,400)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist57_i_not_269_conv2d1x136_q_3_delay_0 <= '0;
            redist57_i_not_269_conv2d1x136_q_3_q <= '0;
        end
        else
        begin
            redist57_i_not_269_conv2d1x136_q_3_delay_0 <= $unsigned(i_not_269_conv2d1x136_q);
            redist57_i_not_269_conv2d1x136_q_3_q <= redist57_i_not_269_conv2d1x136_q_3_delay_0;
        end
    end

    // i_llvm_fpga_fanout_i1_not_269_fanout_adaptor_conv2d1x138(REG,109)@152 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_llvm_fpga_fanout_i1_not_269_fanout_adaptor_conv2d1x138_q <= $unsigned(1'b0);
        end
        else
        begin
            i_llvm_fpga_fanout_i1_not_269_fanout_adaptor_conv2d1x138_q <= redist57_i_not_269_conv2d1x136_q_3_q;
        end
    end

    // i_select105_conv2d1x1143(MUX,218)@153
    assign i_select105_conv2d1x1143_s = i_llvm_fpga_fanout_i1_not_269_fanout_adaptor_conv2d1x138_q;
    always @(i_select105_conv2d1x1143_s or redist69_i_llvm_fpga_pop_f32_pop53_conv2d1x110_out_data_out_2_q or redist58_i_llvm_fpga_pop_f32_pre_e76_pop75_conv2d1x1141_out_data_out_2_q)
    begin
        unique case (i_select105_conv2d1x1143_s)
            1'b0 : i_select105_conv2d1x1143_q = redist69_i_llvm_fpga_pop_f32_pop53_conv2d1x110_out_data_out_2_q;
            1'b1 : i_select105_conv2d1x1143_q = redist58_i_llvm_fpga_pop_f32_pre_e76_pop75_conv2d1x1141_out_data_out_2_q;
            default : i_select105_conv2d1x1143_q = 32'b0;
        endcase
    end

    // valid_fanout_reg94(REG,339)@150 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg94_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg94_q <= $unsigned(redist55_sync_together342_aunroll_vunroll_x_in_i_valid_2_q);
        end
    end

    // valid_fanout_reg95(REG,340)@150 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg95_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg95_q <= $unsigned(redist55_sync_together342_aunroll_vunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_push_f32_pre109_e77_push76_conv2d1x1139(BLACKBOX,180)@151
    // out out_feedback_out_76@20000000
    // out out_feedback_valid_out_76@20000000
    conv2d1x1_i_llvm_fpga_push_f32_pre109_e77_push76_0 thei_llvm_fpga_push_f32_pre109_e77_push76_conv2d1x1139 (
        .in_c1_ene18582_fanout_adaptor597(i_llvm_fpga_fanout_i1_c1_ene18582_fanout_adaptor597_conv2d1x18_q),
        .in_data_in(i_llvm_fpga_pop_f32_pre109_e77_pop76_conv2d1x1138_out_data_out),
        .in_feedback_stall_in_76(i_llvm_fpga_pop_f32_pre109_e77_pop76_conv2d1x1138_out_feedback_stall_out_76),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg95_q),
        .out_data_out(),
        .out_feedback_out_76(i_llvm_fpga_push_f32_pre109_e77_push76_conv2d1x1139_out_feedback_out_76),
        .out_feedback_valid_out_76(i_llvm_fpga_push_f32_pre109_e77_push76_conv2d1x1139_out_feedback_valid_out_76),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist1_sync_together342_aunroll_vunroll_x_in_c1_eni37_2_tpl_2(DELAY,344)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together342_aunroll_vunroll_x_in_c1_eni37_2_tpl_2_delay_0 <= '0;
            redist1_sync_together342_aunroll_vunroll_x_in_c1_eni37_2_tpl_2_q <= '0;
        end
        else
        begin
            redist1_sync_together342_aunroll_vunroll_x_in_c1_eni37_2_tpl_2_delay_0 <= $unsigned(in_c1_eni37_2_tpl);
            redist1_sync_together342_aunroll_vunroll_x_in_c1_eni37_2_tpl_2_q <= redist1_sync_together342_aunroll_vunroll_x_in_c1_eni37_2_tpl_2_delay_0;
        end
    end

    // i_llvm_fpga_fanout_i1_c1_ene2566_fanout_adaptor595_conv2d1x13(REG,105)@150 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_llvm_fpga_fanout_i1_c1_ene2566_fanout_adaptor595_conv2d1x13_q <= $unsigned(1'b0);
        end
        else
        begin
            i_llvm_fpga_fanout_i1_c1_ene2566_fanout_adaptor595_conv2d1x13_q <= redist1_sync_together342_aunroll_vunroll_x_in_c1_eni37_2_tpl_2_q;
        end
    end

    // redist33_sync_together342_aunroll_vunroll_x_in_c1_eni37_23_tpl_1(DELAY,376)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist33_sync_together342_aunroll_vunroll_x_in_c1_eni37_23_tpl_1_q <= '0;
        end
        else
        begin
            redist33_sync_together342_aunroll_vunroll_x_in_c1_eni37_23_tpl_1_q <= $unsigned(in_c1_eni37_23_tpl);
        end
    end

    // redist34_sync_together342_aunroll_vunroll_x_in_c1_eni37_23_tpl_3(DELAY,377)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist34_sync_together342_aunroll_vunroll_x_in_c1_eni37_23_tpl_3_delay_0 <= '0;
            redist34_sync_together342_aunroll_vunroll_x_in_c1_eni37_23_tpl_3_q <= '0;
        end
        else
        begin
            redist34_sync_together342_aunroll_vunroll_x_in_c1_eni37_23_tpl_3_delay_0 <= $unsigned(redist33_sync_together342_aunroll_vunroll_x_in_c1_eni37_23_tpl_1_q);
            redist34_sync_together342_aunroll_vunroll_x_in_c1_eni37_23_tpl_3_q <= redist34_sync_together342_aunroll_vunroll_x_in_c1_eni37_23_tpl_3_delay_0;
        end
    end

    // i_llvm_fpga_pop_f32_pre109_e77_pop76_conv2d1x1138(BLACKBOX,156)@151
    // out out_feedback_stall_out_76@20000000
    conv2d1x1_i_llvm_fpga_pop_f32_pre109_e77_pop76_0 thei_llvm_fpga_pop_f32_pre109_e77_pop76_conv2d1x1138 (
        .in_data_in(redist34_sync_together342_aunroll_vunroll_x_in_c1_eni37_23_tpl_3_q),
        .in_dir(i_llvm_fpga_fanout_i1_c1_ene2566_fanout_adaptor595_conv2d1x13_q),
        .in_feedback_in_76(i_llvm_fpga_push_f32_pre109_e77_push76_conv2d1x1139_out_feedback_out_76),
        .in_feedback_valid_in_76(i_llvm_fpga_push_f32_pre109_e77_push76_conv2d1x1139_out_feedback_valid_out_76),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg94_q),
        .out_data_out(i_llvm_fpga_pop_f32_pre109_e77_pop76_conv2d1x1138_out_data_out),
        .out_feedback_stall_out_76(i_llvm_fpga_pop_f32_pre109_e77_pop76_conv2d1x1138_out_feedback_stall_out_76),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist68_i_llvm_fpga_pop_f32_pre109_e77_pop76_conv2d1x1138_out_data_out_2(DELAY,411)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist68_i_llvm_fpga_pop_f32_pre109_e77_pop76_conv2d1x1138_out_data_out_2_delay_0 <= '0;
            redist68_i_llvm_fpga_pop_f32_pre109_e77_pop76_conv2d1x1138_out_data_out_2_q <= '0;
        end
        else
        begin
            redist68_i_llvm_fpga_pop_f32_pre109_e77_pop76_conv2d1x1138_out_data_out_2_delay_0 <= $unsigned(i_llvm_fpga_pop_f32_pre109_e77_pop76_conv2d1x1138_out_data_out);
            redist68_i_llvm_fpga_pop_f32_pre109_e77_pop76_conv2d1x1138_out_data_out_2_q <= redist68_i_llvm_fpga_pop_f32_pre109_e77_pop76_conv2d1x1138_out_data_out_2_delay_0;
        end
    end

    // i_select102_conv2d1x1140(MUX,217)@153
    assign i_select102_conv2d1x1140_s = i_llvm_fpga_fanout_i1_not_269_fanout_adaptor_conv2d1x138_q;
    always @(i_select102_conv2d1x1140_s or redist70_i_llvm_fpga_pop_f32_pop52_conv2d1x111_out_data_out_2_q or redist68_i_llvm_fpga_pop_f32_pre109_e77_pop76_conv2d1x1138_out_data_out_2_q)
    begin
        unique case (i_select102_conv2d1x1140_s)
            1'b0 : i_select102_conv2d1x1140_q = redist70_i_llvm_fpga_pop_f32_pop52_conv2d1x111_out_data_out_2_q;
            1'b1 : i_select102_conv2d1x1140_q = redist68_i_llvm_fpga_pop_f32_pre109_e77_pop76_conv2d1x1138_out_data_out_2_q;
            default : i_select102_conv2d1x1140_q = 32'b0;
        endcase
    end

    // valid_fanout_reg92(REG,337)@150 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg92_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg92_q <= $unsigned(redist55_sync_together342_aunroll_vunroll_x_in_i_valid_2_q);
        end
    end

    // valid_fanout_reg93(REG,338)@150 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg93_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg93_q <= $unsigned(redist55_sync_together342_aunroll_vunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_push_f32_pre110_e78_push77_conv2d1x1136(BLACKBOX,181)@151
    // out out_feedback_out_77@20000000
    // out out_feedback_valid_out_77@20000000
    conv2d1x1_i_llvm_fpga_push_f32_pre110_e78_push77_0 thei_llvm_fpga_push_f32_pre110_e78_push77_conv2d1x1136 (
        .in_c1_ene18582_fanout_adaptor597(i_llvm_fpga_fanout_i1_c1_ene18582_fanout_adaptor597_conv2d1x18_q),
        .in_data_in(i_llvm_fpga_pop_f32_pre110_e78_pop77_conv2d1x1135_out_data_out),
        .in_feedback_stall_in_77(i_llvm_fpga_pop_f32_pre110_e78_pop77_conv2d1x1135_out_feedback_stall_out_77),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg93_q),
        .out_data_out(),
        .out_feedback_out_77(i_llvm_fpga_push_f32_pre110_e78_push77_conv2d1x1136_out_feedback_out_77),
        .out_feedback_valid_out_77(i_llvm_fpga_push_f32_pre110_e78_push77_conv2d1x1136_out_feedback_valid_out_77),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist36_sync_together342_aunroll_vunroll_x_in_c1_eni37_25_tpl_1(DELAY,379)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist36_sync_together342_aunroll_vunroll_x_in_c1_eni37_25_tpl_1_q <= '0;
        end
        else
        begin
            redist36_sync_together342_aunroll_vunroll_x_in_c1_eni37_25_tpl_1_q <= $unsigned(in_c1_eni37_25_tpl);
        end
    end

    // redist37_sync_together342_aunroll_vunroll_x_in_c1_eni37_25_tpl_3(DELAY,380)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist37_sync_together342_aunroll_vunroll_x_in_c1_eni37_25_tpl_3_delay_0 <= '0;
            redist37_sync_together342_aunroll_vunroll_x_in_c1_eni37_25_tpl_3_q <= '0;
        end
        else
        begin
            redist37_sync_together342_aunroll_vunroll_x_in_c1_eni37_25_tpl_3_delay_0 <= $unsigned(redist36_sync_together342_aunroll_vunroll_x_in_c1_eni37_25_tpl_1_q);
            redist37_sync_together342_aunroll_vunroll_x_in_c1_eni37_25_tpl_3_q <= redist37_sync_together342_aunroll_vunroll_x_in_c1_eni37_25_tpl_3_delay_0;
        end
    end

    // i_llvm_fpga_pop_f32_pre110_e78_pop77_conv2d1x1135(BLACKBOX,157)@151
    // out out_feedback_stall_out_77@20000000
    conv2d1x1_i_llvm_fpga_pop_f32_pre110_e78_pop77_0 thei_llvm_fpga_pop_f32_pre110_e78_pop77_conv2d1x1135 (
        .in_data_in(redist37_sync_together342_aunroll_vunroll_x_in_c1_eni37_25_tpl_3_q),
        .in_dir(i_llvm_fpga_fanout_i1_c1_ene2566_fanout_adaptor595_conv2d1x13_q),
        .in_feedback_in_77(i_llvm_fpga_push_f32_pre110_e78_push77_conv2d1x1136_out_feedback_out_77),
        .in_feedback_valid_in_77(i_llvm_fpga_push_f32_pre110_e78_push77_conv2d1x1136_out_feedback_valid_out_77),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg92_q),
        .out_data_out(i_llvm_fpga_pop_f32_pre110_e78_pop77_conv2d1x1135_out_data_out),
        .out_feedback_stall_out_77(i_llvm_fpga_pop_f32_pre110_e78_pop77_conv2d1x1135_out_feedback_stall_out_77),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist67_i_llvm_fpga_pop_f32_pre110_e78_pop77_conv2d1x1135_out_data_out_2(DELAY,410)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist67_i_llvm_fpga_pop_f32_pre110_e78_pop77_conv2d1x1135_out_data_out_2_delay_0 <= '0;
            redist67_i_llvm_fpga_pop_f32_pre110_e78_pop77_conv2d1x1135_out_data_out_2_q <= '0;
        end
        else
        begin
            redist67_i_llvm_fpga_pop_f32_pre110_e78_pop77_conv2d1x1135_out_data_out_2_delay_0 <= $unsigned(i_llvm_fpga_pop_f32_pre110_e78_pop77_conv2d1x1135_out_data_out);
            redist67_i_llvm_fpga_pop_f32_pre110_e78_pop77_conv2d1x1135_out_data_out_2_q <= redist67_i_llvm_fpga_pop_f32_pre110_e78_pop77_conv2d1x1135_out_data_out_2_delay_0;
        end
    end

    // i_select99_conv2d1x1137(MUX,240)@153
    assign i_select99_conv2d1x1137_s = i_llvm_fpga_fanout_i1_not_269_fanout_adaptor_conv2d1x138_q;
    always @(i_select99_conv2d1x1137_s or redist71_i_llvm_fpga_pop_f32_pop51_conv2d1x112_out_data_out_2_q or redist67_i_llvm_fpga_pop_f32_pre110_e78_pop77_conv2d1x1135_out_data_out_2_q)
    begin
        unique case (i_select99_conv2d1x1137_s)
            1'b0 : i_select99_conv2d1x1137_q = redist71_i_llvm_fpga_pop_f32_pop51_conv2d1x112_out_data_out_2_q;
            1'b1 : i_select99_conv2d1x1137_q = redist67_i_llvm_fpga_pop_f32_pre110_e78_pop77_conv2d1x1135_out_data_out_2_q;
            default : i_select99_conv2d1x1137_q = 32'b0;
        endcase
    end

    // valid_fanout_reg90(REG,335)@150 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg90_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg90_q <= $unsigned(redist55_sync_together342_aunroll_vunroll_x_in_i_valid_2_q);
        end
    end

    // valid_fanout_reg91(REG,336)@150 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg91_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg91_q <= $unsigned(redist55_sync_together342_aunroll_vunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_push_f32_pre111_e79_push78_conv2d1x1133(BLACKBOX,182)@151
    // out out_feedback_out_78@20000000
    // out out_feedback_valid_out_78@20000000
    conv2d1x1_i_llvm_fpga_push_f32_pre111_e79_push78_0 thei_llvm_fpga_push_f32_pre111_e79_push78_conv2d1x1133 (
        .in_c1_ene18582_fanout_adaptor597(i_llvm_fpga_fanout_i1_c1_ene18582_fanout_adaptor597_conv2d1x18_q),
        .in_data_in(i_llvm_fpga_pop_f32_pre111_e79_pop78_conv2d1x1132_out_data_out),
        .in_feedback_stall_in_78(i_llvm_fpga_pop_f32_pre111_e79_pop78_conv2d1x1132_out_feedback_stall_out_78),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg91_q),
        .out_data_out(),
        .out_feedback_out_78(i_llvm_fpga_push_f32_pre111_e79_push78_conv2d1x1133_out_feedback_out_78),
        .out_feedback_valid_out_78(i_llvm_fpga_push_f32_pre111_e79_push78_conv2d1x1133_out_feedback_valid_out_78),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist39_sync_together342_aunroll_vunroll_x_in_c1_eni37_27_tpl_1(DELAY,382)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist39_sync_together342_aunroll_vunroll_x_in_c1_eni37_27_tpl_1_q <= '0;
        end
        else
        begin
            redist39_sync_together342_aunroll_vunroll_x_in_c1_eni37_27_tpl_1_q <= $unsigned(in_c1_eni37_27_tpl);
        end
    end

    // redist40_sync_together342_aunroll_vunroll_x_in_c1_eni37_27_tpl_3(DELAY,383)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist40_sync_together342_aunroll_vunroll_x_in_c1_eni37_27_tpl_3_delay_0 <= '0;
            redist40_sync_together342_aunroll_vunroll_x_in_c1_eni37_27_tpl_3_q <= '0;
        end
        else
        begin
            redist40_sync_together342_aunroll_vunroll_x_in_c1_eni37_27_tpl_3_delay_0 <= $unsigned(redist39_sync_together342_aunroll_vunroll_x_in_c1_eni37_27_tpl_1_q);
            redist40_sync_together342_aunroll_vunroll_x_in_c1_eni37_27_tpl_3_q <= redist40_sync_together342_aunroll_vunroll_x_in_c1_eni37_27_tpl_3_delay_0;
        end
    end

    // i_llvm_fpga_pop_f32_pre111_e79_pop78_conv2d1x1132(BLACKBOX,158)@151
    // out out_feedback_stall_out_78@20000000
    conv2d1x1_i_llvm_fpga_pop_f32_pre111_e79_pop78_0 thei_llvm_fpga_pop_f32_pre111_e79_pop78_conv2d1x1132 (
        .in_data_in(redist40_sync_together342_aunroll_vunroll_x_in_c1_eni37_27_tpl_3_q),
        .in_dir(i_llvm_fpga_fanout_i1_c1_ene2566_fanout_adaptor595_conv2d1x13_q),
        .in_feedback_in_78(i_llvm_fpga_push_f32_pre111_e79_push78_conv2d1x1133_out_feedback_out_78),
        .in_feedback_valid_in_78(i_llvm_fpga_push_f32_pre111_e79_push78_conv2d1x1133_out_feedback_valid_out_78),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg90_q),
        .out_data_out(i_llvm_fpga_pop_f32_pre111_e79_pop78_conv2d1x1132_out_data_out),
        .out_feedback_stall_out_78(i_llvm_fpga_pop_f32_pre111_e79_pop78_conv2d1x1132_out_feedback_stall_out_78),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist66_i_llvm_fpga_pop_f32_pre111_e79_pop78_conv2d1x1132_out_data_out_2(DELAY,409)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist66_i_llvm_fpga_pop_f32_pre111_e79_pop78_conv2d1x1132_out_data_out_2_delay_0 <= '0;
            redist66_i_llvm_fpga_pop_f32_pre111_e79_pop78_conv2d1x1132_out_data_out_2_q <= '0;
        end
        else
        begin
            redist66_i_llvm_fpga_pop_f32_pre111_e79_pop78_conv2d1x1132_out_data_out_2_delay_0 <= $unsigned(i_llvm_fpga_pop_f32_pre111_e79_pop78_conv2d1x1132_out_data_out);
            redist66_i_llvm_fpga_pop_f32_pre111_e79_pop78_conv2d1x1132_out_data_out_2_q <= redist66_i_llvm_fpga_pop_f32_pre111_e79_pop78_conv2d1x1132_out_data_out_2_delay_0;
        end
    end

    // i_select96_conv2d1x1134(MUX,239)@153
    assign i_select96_conv2d1x1134_s = i_llvm_fpga_fanout_i1_not_269_fanout_adaptor_conv2d1x138_q;
    always @(i_select96_conv2d1x1134_s or redist72_i_llvm_fpga_pop_f32_pop50_conv2d1x113_out_data_out_2_q or redist66_i_llvm_fpga_pop_f32_pre111_e79_pop78_conv2d1x1132_out_data_out_2_q)
    begin
        unique case (i_select96_conv2d1x1134_s)
            1'b0 : i_select96_conv2d1x1134_q = redist72_i_llvm_fpga_pop_f32_pop50_conv2d1x113_out_data_out_2_q;
            1'b1 : i_select96_conv2d1x1134_q = redist66_i_llvm_fpga_pop_f32_pre111_e79_pop78_conv2d1x1132_out_data_out_2_q;
            default : i_select96_conv2d1x1134_q = 32'b0;
        endcase
    end

    // valid_fanout_reg88(REG,333)@150 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg88_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg88_q <= $unsigned(redist55_sync_together342_aunroll_vunroll_x_in_i_valid_2_q);
        end
    end

    // valid_fanout_reg89(REG,334)@150 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg89_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg89_q <= $unsigned(redist55_sync_together342_aunroll_vunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_push_f32_pre112_e80_push79_conv2d1x1130(BLACKBOX,183)@151
    // out out_feedback_out_79@20000000
    // out out_feedback_valid_out_79@20000000
    conv2d1x1_i_llvm_fpga_push_f32_pre112_e80_push79_0 thei_llvm_fpga_push_f32_pre112_e80_push79_conv2d1x1130 (
        .in_c1_ene18582_fanout_adaptor597(i_llvm_fpga_fanout_i1_c1_ene18582_fanout_adaptor597_conv2d1x18_q),
        .in_data_in(i_llvm_fpga_pop_f32_pre112_e80_pop79_conv2d1x1129_out_data_out),
        .in_feedback_stall_in_79(i_llvm_fpga_pop_f32_pre112_e80_pop79_conv2d1x1129_out_feedback_stall_out_79),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg89_q),
        .out_data_out(),
        .out_feedback_out_79(i_llvm_fpga_push_f32_pre112_e80_push79_conv2d1x1130_out_feedback_out_79),
        .out_feedback_valid_out_79(i_llvm_fpga_push_f32_pre112_e80_push79_conv2d1x1130_out_feedback_valid_out_79),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist42_sync_together342_aunroll_vunroll_x_in_c1_eni37_29_tpl_1(DELAY,385)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist42_sync_together342_aunroll_vunroll_x_in_c1_eni37_29_tpl_1_q <= '0;
        end
        else
        begin
            redist42_sync_together342_aunroll_vunroll_x_in_c1_eni37_29_tpl_1_q <= $unsigned(in_c1_eni37_29_tpl);
        end
    end

    // redist43_sync_together342_aunroll_vunroll_x_in_c1_eni37_29_tpl_3(DELAY,386)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist43_sync_together342_aunroll_vunroll_x_in_c1_eni37_29_tpl_3_delay_0 <= '0;
            redist43_sync_together342_aunroll_vunroll_x_in_c1_eni37_29_tpl_3_q <= '0;
        end
        else
        begin
            redist43_sync_together342_aunroll_vunroll_x_in_c1_eni37_29_tpl_3_delay_0 <= $unsigned(redist42_sync_together342_aunroll_vunroll_x_in_c1_eni37_29_tpl_1_q);
            redist43_sync_together342_aunroll_vunroll_x_in_c1_eni37_29_tpl_3_q <= redist43_sync_together342_aunroll_vunroll_x_in_c1_eni37_29_tpl_3_delay_0;
        end
    end

    // i_llvm_fpga_pop_f32_pre112_e80_pop79_conv2d1x1129(BLACKBOX,159)@151
    // out out_feedback_stall_out_79@20000000
    conv2d1x1_i_llvm_fpga_pop_f32_pre112_e80_pop79_0 thei_llvm_fpga_pop_f32_pre112_e80_pop79_conv2d1x1129 (
        .in_data_in(redist43_sync_together342_aunroll_vunroll_x_in_c1_eni37_29_tpl_3_q),
        .in_dir(i_llvm_fpga_fanout_i1_c1_ene2566_fanout_adaptor595_conv2d1x13_q),
        .in_feedback_in_79(i_llvm_fpga_push_f32_pre112_e80_push79_conv2d1x1130_out_feedback_out_79),
        .in_feedback_valid_in_79(i_llvm_fpga_push_f32_pre112_e80_push79_conv2d1x1130_out_feedback_valid_out_79),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg88_q),
        .out_data_out(i_llvm_fpga_pop_f32_pre112_e80_pop79_conv2d1x1129_out_data_out),
        .out_feedback_stall_out_79(i_llvm_fpga_pop_f32_pre112_e80_pop79_conv2d1x1129_out_feedback_stall_out_79),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist65_i_llvm_fpga_pop_f32_pre112_e80_pop79_conv2d1x1129_out_data_out_2(DELAY,408)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist65_i_llvm_fpga_pop_f32_pre112_e80_pop79_conv2d1x1129_out_data_out_2_delay_0 <= '0;
            redist65_i_llvm_fpga_pop_f32_pre112_e80_pop79_conv2d1x1129_out_data_out_2_q <= '0;
        end
        else
        begin
            redist65_i_llvm_fpga_pop_f32_pre112_e80_pop79_conv2d1x1129_out_data_out_2_delay_0 <= $unsigned(i_llvm_fpga_pop_f32_pre112_e80_pop79_conv2d1x1129_out_data_out);
            redist65_i_llvm_fpga_pop_f32_pre112_e80_pop79_conv2d1x1129_out_data_out_2_q <= redist65_i_llvm_fpga_pop_f32_pre112_e80_pop79_conv2d1x1129_out_data_out_2_delay_0;
        end
    end

    // i_select93_conv2d1x1131(MUX,238)@153
    assign i_select93_conv2d1x1131_s = i_llvm_fpga_fanout_i1_not_269_fanout_adaptor_conv2d1x138_q;
    always @(i_select93_conv2d1x1131_s or redist73_i_llvm_fpga_pop_f32_pop49_conv2d1x114_out_data_out_2_q or redist65_i_llvm_fpga_pop_f32_pre112_e80_pop79_conv2d1x1129_out_data_out_2_q)
    begin
        unique case (i_select93_conv2d1x1131_s)
            1'b0 : i_select93_conv2d1x1131_q = redist73_i_llvm_fpga_pop_f32_pop49_conv2d1x114_out_data_out_2_q;
            1'b1 : i_select93_conv2d1x1131_q = redist65_i_llvm_fpga_pop_f32_pre112_e80_pop79_conv2d1x1129_out_data_out_2_q;
            default : i_select93_conv2d1x1131_q = 32'b0;
        endcase
    end

    // valid_fanout_reg86(REG,331)@150 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg86_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg86_q <= $unsigned(redist55_sync_together342_aunroll_vunroll_x_in_i_valid_2_q);
        end
    end

    // valid_fanout_reg87(REG,332)@150 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg87_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg87_q <= $unsigned(redist55_sync_together342_aunroll_vunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_push_f32_pre113_e81_push80_conv2d1x1127(BLACKBOX,184)@151
    // out out_feedback_out_80@20000000
    // out out_feedback_valid_out_80@20000000
    conv2d1x1_i_llvm_fpga_push_f32_pre113_e81_push80_0 thei_llvm_fpga_push_f32_pre113_e81_push80_conv2d1x1127 (
        .in_c1_ene18582_fanout_adaptor597(i_llvm_fpga_fanout_i1_c1_ene18582_fanout_adaptor597_conv2d1x18_q),
        .in_data_in(i_llvm_fpga_pop_f32_pre113_e81_pop80_conv2d1x1126_out_data_out),
        .in_feedback_stall_in_80(i_llvm_fpga_pop_f32_pre113_e81_pop80_conv2d1x1126_out_feedback_stall_out_80),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg87_q),
        .out_data_out(),
        .out_feedback_out_80(i_llvm_fpga_push_f32_pre113_e81_push80_conv2d1x1127_out_feedback_out_80),
        .out_feedback_valid_out_80(i_llvm_fpga_push_f32_pre113_e81_push80_conv2d1x1127_out_feedback_valid_out_80),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist45_sync_together342_aunroll_vunroll_x_in_c1_eni37_31_tpl_1(DELAY,388)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist45_sync_together342_aunroll_vunroll_x_in_c1_eni37_31_tpl_1_q <= '0;
        end
        else
        begin
            redist45_sync_together342_aunroll_vunroll_x_in_c1_eni37_31_tpl_1_q <= $unsigned(in_c1_eni37_31_tpl);
        end
    end

    // redist46_sync_together342_aunroll_vunroll_x_in_c1_eni37_31_tpl_3(DELAY,389)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist46_sync_together342_aunroll_vunroll_x_in_c1_eni37_31_tpl_3_delay_0 <= '0;
            redist46_sync_together342_aunroll_vunroll_x_in_c1_eni37_31_tpl_3_q <= '0;
        end
        else
        begin
            redist46_sync_together342_aunroll_vunroll_x_in_c1_eni37_31_tpl_3_delay_0 <= $unsigned(redist45_sync_together342_aunroll_vunroll_x_in_c1_eni37_31_tpl_1_q);
            redist46_sync_together342_aunroll_vunroll_x_in_c1_eni37_31_tpl_3_q <= redist46_sync_together342_aunroll_vunroll_x_in_c1_eni37_31_tpl_3_delay_0;
        end
    end

    // i_llvm_fpga_pop_f32_pre113_e81_pop80_conv2d1x1126(BLACKBOX,160)@151
    // out out_feedback_stall_out_80@20000000
    conv2d1x1_i_llvm_fpga_pop_f32_pre113_e81_pop80_0 thei_llvm_fpga_pop_f32_pre113_e81_pop80_conv2d1x1126 (
        .in_data_in(redist46_sync_together342_aunroll_vunroll_x_in_c1_eni37_31_tpl_3_q),
        .in_dir(i_llvm_fpga_fanout_i1_c1_ene2566_fanout_adaptor595_conv2d1x13_q),
        .in_feedback_in_80(i_llvm_fpga_push_f32_pre113_e81_push80_conv2d1x1127_out_feedback_out_80),
        .in_feedback_valid_in_80(i_llvm_fpga_push_f32_pre113_e81_push80_conv2d1x1127_out_feedback_valid_out_80),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg86_q),
        .out_data_out(i_llvm_fpga_pop_f32_pre113_e81_pop80_conv2d1x1126_out_data_out),
        .out_feedback_stall_out_80(i_llvm_fpga_pop_f32_pre113_e81_pop80_conv2d1x1126_out_feedback_stall_out_80),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist64_i_llvm_fpga_pop_f32_pre113_e81_pop80_conv2d1x1126_out_data_out_2(DELAY,407)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist64_i_llvm_fpga_pop_f32_pre113_e81_pop80_conv2d1x1126_out_data_out_2_delay_0 <= '0;
            redist64_i_llvm_fpga_pop_f32_pre113_e81_pop80_conv2d1x1126_out_data_out_2_q <= '0;
        end
        else
        begin
            redist64_i_llvm_fpga_pop_f32_pre113_e81_pop80_conv2d1x1126_out_data_out_2_delay_0 <= $unsigned(i_llvm_fpga_pop_f32_pre113_e81_pop80_conv2d1x1126_out_data_out);
            redist64_i_llvm_fpga_pop_f32_pre113_e81_pop80_conv2d1x1126_out_data_out_2_q <= redist64_i_llvm_fpga_pop_f32_pre113_e81_pop80_conv2d1x1126_out_data_out_2_delay_0;
        end
    end

    // i_select90_conv2d1x1128(MUX,237)@153
    assign i_select90_conv2d1x1128_s = i_llvm_fpga_fanout_i1_not_269_fanout_adaptor_conv2d1x138_q;
    always @(i_select90_conv2d1x1128_s or redist74_i_llvm_fpga_pop_f32_pop48_conv2d1x115_out_data_out_2_q or redist64_i_llvm_fpga_pop_f32_pre113_e81_pop80_conv2d1x1126_out_data_out_2_q)
    begin
        unique case (i_select90_conv2d1x1128_s)
            1'b0 : i_select90_conv2d1x1128_q = redist74_i_llvm_fpga_pop_f32_pop48_conv2d1x115_out_data_out_2_q;
            1'b1 : i_select90_conv2d1x1128_q = redist64_i_llvm_fpga_pop_f32_pre113_e81_pop80_conv2d1x1126_out_data_out_2_q;
            default : i_select90_conv2d1x1128_q = 32'b0;
        endcase
    end

    // valid_fanout_reg84(REG,329)@150 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg84_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg84_q <= $unsigned(redist55_sync_together342_aunroll_vunroll_x_in_i_valid_2_q);
        end
    end

    // valid_fanout_reg85(REG,330)@150 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg85_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg85_q <= $unsigned(redist55_sync_together342_aunroll_vunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_push_f32_pre114_e82_push81_conv2d1x1124(BLACKBOX,185)@151
    // out out_feedback_out_81@20000000
    // out out_feedback_valid_out_81@20000000
    conv2d1x1_i_llvm_fpga_push_f32_pre114_e82_push81_0 thei_llvm_fpga_push_f32_pre114_e82_push81_conv2d1x1124 (
        .in_c1_ene18582_fanout_adaptor597(i_llvm_fpga_fanout_i1_c1_ene18582_fanout_adaptor597_conv2d1x18_q),
        .in_data_in(i_llvm_fpga_pop_f32_pre114_e82_pop81_conv2d1x1123_out_data_out),
        .in_feedback_stall_in_81(i_llvm_fpga_pop_f32_pre114_e82_pop81_conv2d1x1123_out_feedback_stall_out_81),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg85_q),
        .out_data_out(),
        .out_feedback_out_81(i_llvm_fpga_push_f32_pre114_e82_push81_conv2d1x1124_out_feedback_out_81),
        .out_feedback_valid_out_81(i_llvm_fpga_push_f32_pre114_e82_push81_conv2d1x1124_out_feedback_valid_out_81),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist48_sync_together342_aunroll_vunroll_x_in_c1_eni37_33_tpl_1(DELAY,391)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist48_sync_together342_aunroll_vunroll_x_in_c1_eni37_33_tpl_1_q <= '0;
        end
        else
        begin
            redist48_sync_together342_aunroll_vunroll_x_in_c1_eni37_33_tpl_1_q <= $unsigned(in_c1_eni37_33_tpl);
        end
    end

    // redist49_sync_together342_aunroll_vunroll_x_in_c1_eni37_33_tpl_3(DELAY,392)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist49_sync_together342_aunroll_vunroll_x_in_c1_eni37_33_tpl_3_delay_0 <= '0;
            redist49_sync_together342_aunroll_vunroll_x_in_c1_eni37_33_tpl_3_q <= '0;
        end
        else
        begin
            redist49_sync_together342_aunroll_vunroll_x_in_c1_eni37_33_tpl_3_delay_0 <= $unsigned(redist48_sync_together342_aunroll_vunroll_x_in_c1_eni37_33_tpl_1_q);
            redist49_sync_together342_aunroll_vunroll_x_in_c1_eni37_33_tpl_3_q <= redist49_sync_together342_aunroll_vunroll_x_in_c1_eni37_33_tpl_3_delay_0;
        end
    end

    // i_llvm_fpga_pop_f32_pre114_e82_pop81_conv2d1x1123(BLACKBOX,161)@151
    // out out_feedback_stall_out_81@20000000
    conv2d1x1_i_llvm_fpga_pop_f32_pre114_e82_pop81_0 thei_llvm_fpga_pop_f32_pre114_e82_pop81_conv2d1x1123 (
        .in_data_in(redist49_sync_together342_aunroll_vunroll_x_in_c1_eni37_33_tpl_3_q),
        .in_dir(i_llvm_fpga_fanout_i1_c1_ene2566_fanout_adaptor595_conv2d1x13_q),
        .in_feedback_in_81(i_llvm_fpga_push_f32_pre114_e82_push81_conv2d1x1124_out_feedback_out_81),
        .in_feedback_valid_in_81(i_llvm_fpga_push_f32_pre114_e82_push81_conv2d1x1124_out_feedback_valid_out_81),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg84_q),
        .out_data_out(i_llvm_fpga_pop_f32_pre114_e82_pop81_conv2d1x1123_out_data_out),
        .out_feedback_stall_out_81(i_llvm_fpga_pop_f32_pre114_e82_pop81_conv2d1x1123_out_feedback_stall_out_81),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist63_i_llvm_fpga_pop_f32_pre114_e82_pop81_conv2d1x1123_out_data_out_2(DELAY,406)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist63_i_llvm_fpga_pop_f32_pre114_e82_pop81_conv2d1x1123_out_data_out_2_delay_0 <= '0;
            redist63_i_llvm_fpga_pop_f32_pre114_e82_pop81_conv2d1x1123_out_data_out_2_q <= '0;
        end
        else
        begin
            redist63_i_llvm_fpga_pop_f32_pre114_e82_pop81_conv2d1x1123_out_data_out_2_delay_0 <= $unsigned(i_llvm_fpga_pop_f32_pre114_e82_pop81_conv2d1x1123_out_data_out);
            redist63_i_llvm_fpga_pop_f32_pre114_e82_pop81_conv2d1x1123_out_data_out_2_q <= redist63_i_llvm_fpga_pop_f32_pre114_e82_pop81_conv2d1x1123_out_data_out_2_delay_0;
        end
    end

    // i_select87_conv2d1x1125(MUX,236)@153
    assign i_select87_conv2d1x1125_s = i_llvm_fpga_fanout_i1_not_269_fanout_adaptor_conv2d1x138_q;
    always @(i_select87_conv2d1x1125_s or redist75_i_llvm_fpga_pop_f32_pop47_conv2d1x116_out_data_out_2_q or redist63_i_llvm_fpga_pop_f32_pre114_e82_pop81_conv2d1x1123_out_data_out_2_q)
    begin
        unique case (i_select87_conv2d1x1125_s)
            1'b0 : i_select87_conv2d1x1125_q = redist75_i_llvm_fpga_pop_f32_pop47_conv2d1x116_out_data_out_2_q;
            1'b1 : i_select87_conv2d1x1125_q = redist63_i_llvm_fpga_pop_f32_pre114_e82_pop81_conv2d1x1123_out_data_out_2_q;
            default : i_select87_conv2d1x1125_q = 32'b0;
        endcase
    end

    // valid_fanout_reg82(REG,327)@150 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg82_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg82_q <= $unsigned(redist55_sync_together342_aunroll_vunroll_x_in_i_valid_2_q);
        end
    end

    // valid_fanout_reg83(REG,328)@150 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg83_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg83_q <= $unsigned(redist55_sync_together342_aunroll_vunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_push_f32_pre115_e83_push82_conv2d1x1121(BLACKBOX,186)@151
    // out out_feedback_out_82@20000000
    // out out_feedback_valid_out_82@20000000
    conv2d1x1_i_llvm_fpga_push_f32_pre115_e83_push82_0 thei_llvm_fpga_push_f32_pre115_e83_push82_conv2d1x1121 (
        .in_c1_ene18582_fanout_adaptor597(i_llvm_fpga_fanout_i1_c1_ene18582_fanout_adaptor597_conv2d1x18_q),
        .in_data_in(i_llvm_fpga_pop_f32_pre115_e83_pop82_conv2d1x1120_out_data_out),
        .in_feedback_stall_in_82(i_llvm_fpga_pop_f32_pre115_e83_pop82_conv2d1x1120_out_feedback_stall_out_82),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg83_q),
        .out_data_out(),
        .out_feedback_out_82(i_llvm_fpga_push_f32_pre115_e83_push82_conv2d1x1121_out_feedback_out_82),
        .out_feedback_valid_out_82(i_llvm_fpga_push_f32_pre115_e83_push82_conv2d1x1121_out_feedback_valid_out_82),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist51_sync_together342_aunroll_vunroll_x_in_c1_eni37_35_tpl_1(DELAY,394)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist51_sync_together342_aunroll_vunroll_x_in_c1_eni37_35_tpl_1_q <= '0;
        end
        else
        begin
            redist51_sync_together342_aunroll_vunroll_x_in_c1_eni37_35_tpl_1_q <= $unsigned(in_c1_eni37_35_tpl);
        end
    end

    // redist52_sync_together342_aunroll_vunroll_x_in_c1_eni37_35_tpl_3(DELAY,395)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist52_sync_together342_aunroll_vunroll_x_in_c1_eni37_35_tpl_3_delay_0 <= '0;
            redist52_sync_together342_aunroll_vunroll_x_in_c1_eni37_35_tpl_3_q <= '0;
        end
        else
        begin
            redist52_sync_together342_aunroll_vunroll_x_in_c1_eni37_35_tpl_3_delay_0 <= $unsigned(redist51_sync_together342_aunroll_vunroll_x_in_c1_eni37_35_tpl_1_q);
            redist52_sync_together342_aunroll_vunroll_x_in_c1_eni37_35_tpl_3_q <= redist52_sync_together342_aunroll_vunroll_x_in_c1_eni37_35_tpl_3_delay_0;
        end
    end

    // i_llvm_fpga_pop_f32_pre115_e83_pop82_conv2d1x1120(BLACKBOX,162)@151
    // out out_feedback_stall_out_82@20000000
    conv2d1x1_i_llvm_fpga_pop_f32_pre115_e83_pop82_0 thei_llvm_fpga_pop_f32_pre115_e83_pop82_conv2d1x1120 (
        .in_data_in(redist52_sync_together342_aunroll_vunroll_x_in_c1_eni37_35_tpl_3_q),
        .in_dir(i_llvm_fpga_fanout_i1_c1_ene2566_fanout_adaptor595_conv2d1x13_q),
        .in_feedback_in_82(i_llvm_fpga_push_f32_pre115_e83_push82_conv2d1x1121_out_feedback_out_82),
        .in_feedback_valid_in_82(i_llvm_fpga_push_f32_pre115_e83_push82_conv2d1x1121_out_feedback_valid_out_82),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg82_q),
        .out_data_out(i_llvm_fpga_pop_f32_pre115_e83_pop82_conv2d1x1120_out_data_out),
        .out_feedback_stall_out_82(i_llvm_fpga_pop_f32_pre115_e83_pop82_conv2d1x1120_out_feedback_stall_out_82),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist62_i_llvm_fpga_pop_f32_pre115_e83_pop82_conv2d1x1120_out_data_out_2(DELAY,405)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist62_i_llvm_fpga_pop_f32_pre115_e83_pop82_conv2d1x1120_out_data_out_2_delay_0 <= '0;
            redist62_i_llvm_fpga_pop_f32_pre115_e83_pop82_conv2d1x1120_out_data_out_2_q <= '0;
        end
        else
        begin
            redist62_i_llvm_fpga_pop_f32_pre115_e83_pop82_conv2d1x1120_out_data_out_2_delay_0 <= $unsigned(i_llvm_fpga_pop_f32_pre115_e83_pop82_conv2d1x1120_out_data_out);
            redist62_i_llvm_fpga_pop_f32_pre115_e83_pop82_conv2d1x1120_out_data_out_2_q <= redist62_i_llvm_fpga_pop_f32_pre115_e83_pop82_conv2d1x1120_out_data_out_2_delay_0;
        end
    end

    // i_select84_conv2d1x1122(MUX,235)@153
    assign i_select84_conv2d1x1122_s = i_llvm_fpga_fanout_i1_not_269_fanout_adaptor_conv2d1x138_q;
    always @(i_select84_conv2d1x1122_s or redist76_i_llvm_fpga_pop_f32_pop46_conv2d1x117_out_data_out_2_q or redist62_i_llvm_fpga_pop_f32_pre115_e83_pop82_conv2d1x1120_out_data_out_2_q)
    begin
        unique case (i_select84_conv2d1x1122_s)
            1'b0 : i_select84_conv2d1x1122_q = redist76_i_llvm_fpga_pop_f32_pop46_conv2d1x117_out_data_out_2_q;
            1'b1 : i_select84_conv2d1x1122_q = redist62_i_llvm_fpga_pop_f32_pre115_e83_pop82_conv2d1x1120_out_data_out_2_q;
            default : i_select84_conv2d1x1122_q = 32'b0;
        endcase
    end

    // valid_fanout_reg80(REG,325)@150 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg80_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg80_q <= $unsigned(redist55_sync_together342_aunroll_vunroll_x_in_i_valid_2_q);
        end
    end

    // valid_fanout_reg81(REG,326)@150 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg81_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg81_q <= $unsigned(redist55_sync_together342_aunroll_vunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_push_f32_pre116_e84_push83_conv2d1x1118(BLACKBOX,187)@151
    // out out_feedback_out_83@20000000
    // out out_feedback_valid_out_83@20000000
    conv2d1x1_i_llvm_fpga_push_f32_pre116_e84_push83_0 thei_llvm_fpga_push_f32_pre116_e84_push83_conv2d1x1118 (
        .in_c1_ene18582_fanout_adaptor597(i_llvm_fpga_fanout_i1_c1_ene18582_fanout_adaptor597_conv2d1x18_q),
        .in_data_in(i_llvm_fpga_pop_f32_pre116_e84_pop83_conv2d1x1117_out_data_out),
        .in_feedback_stall_in_83(i_llvm_fpga_pop_f32_pre116_e84_pop83_conv2d1x1117_out_feedback_stall_out_83),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg81_q),
        .out_data_out(),
        .out_feedback_out_83(i_llvm_fpga_push_f32_pre116_e84_push83_conv2d1x1118_out_feedback_out_83),
        .out_feedback_valid_out_83(i_llvm_fpga_push_f32_pre116_e84_push83_conv2d1x1118_out_feedback_valid_out_83),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_fanout_i1_c1_ene2566_fanout_adaptor_conv2d1x15(REG,107)@150 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_llvm_fpga_fanout_i1_c1_ene2566_fanout_adaptor_conv2d1x15_q <= $unsigned(1'b0);
        end
        else
        begin
            i_llvm_fpga_fanout_i1_c1_ene2566_fanout_adaptor_conv2d1x15_q <= redist1_sync_together342_aunroll_vunroll_x_in_c1_eni37_2_tpl_2_q;
        end
    end

    // redist0_sync_together342_aunroll_vunroll_x_in_c1_eni37_1_tpl_3_notEnable(LOGICAL,431)
    assign redist0_sync_together342_aunroll_vunroll_x_in_c1_eni37_1_tpl_3_notEnable_q = $unsigned(~ (VCC_q));

    // redist0_sync_together342_aunroll_vunroll_x_in_c1_eni37_1_tpl_3_nor(LOGICAL,432)
    assign redist0_sync_together342_aunroll_vunroll_x_in_c1_eni37_1_tpl_3_nor_q = ~ (redist0_sync_together342_aunroll_vunroll_x_in_c1_eni37_1_tpl_3_notEnable_q | redist0_sync_together342_aunroll_vunroll_x_in_c1_eni37_1_tpl_3_sticky_ena_q);

    // redist0_sync_together342_aunroll_vunroll_x_in_c1_eni37_1_tpl_3_cmpReg(REG,430)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_sync_together342_aunroll_vunroll_x_in_c1_eni37_1_tpl_3_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist0_sync_together342_aunroll_vunroll_x_in_c1_eni37_1_tpl_3_cmpReg_q <= $unsigned(VCC_q);
        end
    end

    // redist0_sync_together342_aunroll_vunroll_x_in_c1_eni37_1_tpl_3_sticky_ena(REG,433)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_sync_together342_aunroll_vunroll_x_in_c1_eni37_1_tpl_3_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist0_sync_together342_aunroll_vunroll_x_in_c1_eni37_1_tpl_3_nor_q == 1'b1)
        begin
            redist0_sync_together342_aunroll_vunroll_x_in_c1_eni37_1_tpl_3_sticky_ena_q <= $unsigned(redist0_sync_together342_aunroll_vunroll_x_in_c1_eni37_1_tpl_3_cmpReg_q);
        end
    end

    // redist0_sync_together342_aunroll_vunroll_x_in_c1_eni37_1_tpl_3_enaAnd(LOGICAL,434)
    assign redist0_sync_together342_aunroll_vunroll_x_in_c1_eni37_1_tpl_3_enaAnd_q = redist0_sync_together342_aunroll_vunroll_x_in_c1_eni37_1_tpl_3_sticky_ena_q & VCC_q;

    // redist0_sync_together342_aunroll_vunroll_x_in_c1_eni37_1_tpl_3_rdcnt(COUNTER,428)
    // low=0, high=1, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_sync_together342_aunroll_vunroll_x_in_c1_eni37_1_tpl_3_rdcnt_i <= 1'd0;
        end
        else
        begin
            redist0_sync_together342_aunroll_vunroll_x_in_c1_eni37_1_tpl_3_rdcnt_i <= $unsigned(redist0_sync_together342_aunroll_vunroll_x_in_c1_eni37_1_tpl_3_rdcnt_i) + $unsigned(1'd1);
        end
    end
    assign redist0_sync_together342_aunroll_vunroll_x_in_c1_eni37_1_tpl_3_rdcnt_q = redist0_sync_together342_aunroll_vunroll_x_in_c1_eni37_1_tpl_3_rdcnt_i[0:0];

    // redist0_sync_together342_aunroll_vunroll_x_in_c1_eni37_1_tpl_3_wraddr(REG,429)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_sync_together342_aunroll_vunroll_x_in_c1_eni37_1_tpl_3_wraddr_q <= $unsigned(1'b1);
        end
        else
        begin
            redist0_sync_together342_aunroll_vunroll_x_in_c1_eni37_1_tpl_3_wraddr_q <= $unsigned(redist0_sync_together342_aunroll_vunroll_x_in_c1_eni37_1_tpl_3_rdcnt_q);
        end
    end

    // redist0_sync_together342_aunroll_vunroll_x_in_c1_eni37_1_tpl_3_mem(DUALMEM,427)
    assign redist0_sync_together342_aunroll_vunroll_x_in_c1_eni37_1_tpl_3_mem_ia = $unsigned(in_c1_eni37_1_tpl);
    assign redist0_sync_together342_aunroll_vunroll_x_in_c1_eni37_1_tpl_3_mem_aa = redist0_sync_together342_aunroll_vunroll_x_in_c1_eni37_1_tpl_3_wraddr_q;
    assign redist0_sync_together342_aunroll_vunroll_x_in_c1_eni37_1_tpl_3_mem_ab = redist0_sync_together342_aunroll_vunroll_x_in_c1_eni37_1_tpl_3_rdcnt_q;
    assign redist0_sync_together342_aunroll_vunroll_x_in_c1_eni37_1_tpl_3_mem_reset0 = ~ (resetn);
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
    ) redist0_sync_together342_aunroll_vunroll_x_in_c1_eni37_1_tpl_3_mem_dmem (
        .clocken1(redist0_sync_together342_aunroll_vunroll_x_in_c1_eni37_1_tpl_3_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist0_sync_together342_aunroll_vunroll_x_in_c1_eni37_1_tpl_3_mem_reset0),
        .clock1(clock),
        .address_a(redist0_sync_together342_aunroll_vunroll_x_in_c1_eni37_1_tpl_3_mem_aa),
        .data_a(redist0_sync_together342_aunroll_vunroll_x_in_c1_eni37_1_tpl_3_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist0_sync_together342_aunroll_vunroll_x_in_c1_eni37_1_tpl_3_mem_ab),
        .q_b(redist0_sync_together342_aunroll_vunroll_x_in_c1_eni37_1_tpl_3_mem_iq),
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
    assign redist0_sync_together342_aunroll_vunroll_x_in_c1_eni37_1_tpl_3_mem_q = redist0_sync_together342_aunroll_vunroll_x_in_c1_eni37_1_tpl_3_mem_iq[31:0];

    // i_llvm_fpga_pop_f32_pre116_e84_pop83_conv2d1x1117(BLACKBOX,163)@151
    // out out_feedback_stall_out_83@20000000
    conv2d1x1_i_llvm_fpga_pop_f32_pre116_e84_pop83_0 thei_llvm_fpga_pop_f32_pre116_e84_pop83_conv2d1x1117 (
        .in_data_in(redist0_sync_together342_aunroll_vunroll_x_in_c1_eni37_1_tpl_3_mem_q),
        .in_dir(i_llvm_fpga_fanout_i1_c1_ene2566_fanout_adaptor_conv2d1x15_q),
        .in_feedback_in_83(i_llvm_fpga_push_f32_pre116_e84_push83_conv2d1x1118_out_feedback_out_83),
        .in_feedback_valid_in_83(i_llvm_fpga_push_f32_pre116_e84_push83_conv2d1x1118_out_feedback_valid_out_83),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg80_q),
        .out_data_out(i_llvm_fpga_pop_f32_pre116_e84_pop83_conv2d1x1117_out_data_out),
        .out_feedback_stall_out_83(i_llvm_fpga_pop_f32_pre116_e84_pop83_conv2d1x1117_out_feedback_stall_out_83),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist61_i_llvm_fpga_pop_f32_pre116_e84_pop83_conv2d1x1117_out_data_out_2(DELAY,404)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist61_i_llvm_fpga_pop_f32_pre116_e84_pop83_conv2d1x1117_out_data_out_2_delay_0 <= '0;
            redist61_i_llvm_fpga_pop_f32_pre116_e84_pop83_conv2d1x1117_out_data_out_2_q <= '0;
        end
        else
        begin
            redist61_i_llvm_fpga_pop_f32_pre116_e84_pop83_conv2d1x1117_out_data_out_2_delay_0 <= $unsigned(i_llvm_fpga_pop_f32_pre116_e84_pop83_conv2d1x1117_out_data_out);
            redist61_i_llvm_fpga_pop_f32_pre116_e84_pop83_conv2d1x1117_out_data_out_2_q <= redist61_i_llvm_fpga_pop_f32_pre116_e84_pop83_conv2d1x1117_out_data_out_2_delay_0;
        end
    end

    // i_select81_conv2d1x1119(MUX,234)@153
    assign i_select81_conv2d1x1119_s = i_llvm_fpga_fanout_i1_not_269_fanout_adaptor_conv2d1x138_q;
    always @(i_select81_conv2d1x1119_s or i_llvm_fpga_pop_f32_pop45_conv2d1x118_out_data_out or redist61_i_llvm_fpga_pop_f32_pre116_e84_pop83_conv2d1x1117_out_data_out_2_q)
    begin
        unique case (i_select81_conv2d1x1119_s)
            1'b0 : i_select81_conv2d1x1119_q = i_llvm_fpga_pop_f32_pop45_conv2d1x118_out_data_out;
            1'b1 : i_select81_conv2d1x1119_q = redist61_i_llvm_fpga_pop_f32_pre116_e84_pop83_conv2d1x1117_out_data_out_2_q;
            default : i_select81_conv2d1x1119_q = 32'b0;
        endcase
    end

    // valid_fanout_reg78(REG,323)@150 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg78_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg78_q <= $unsigned(redist55_sync_together342_aunroll_vunroll_x_in_i_valid_2_q);
        end
    end

    // valid_fanout_reg79(REG,324)@150 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg79_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg79_q <= $unsigned(redist55_sync_together342_aunroll_vunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_push_f32_pre117_e85_push84_conv2d1x1115(BLACKBOX,188)@151
    // out out_feedback_out_84@20000000
    // out out_feedback_valid_out_84@20000000
    conv2d1x1_i_llvm_fpga_push_f32_pre117_e85_push84_0 thei_llvm_fpga_push_f32_pre117_e85_push84_conv2d1x1115 (
        .in_c1_ene18582_fanout_adaptor597(i_llvm_fpga_fanout_i1_c1_ene18582_fanout_adaptor597_conv2d1x18_q),
        .in_data_in(i_llvm_fpga_pop_f32_pre117_e85_pop84_conv2d1x1114_out_data_out),
        .in_feedback_stall_in_84(i_llvm_fpga_pop_f32_pre117_e85_pop84_conv2d1x1114_out_feedback_stall_out_84),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg79_q),
        .out_data_out(),
        .out_feedback_out_84(i_llvm_fpga_push_f32_pre117_e85_push84_conv2d1x1115_out_feedback_out_84),
        .out_feedback_valid_out_84(i_llvm_fpga_push_f32_pre117_e85_push84_conv2d1x1115_out_feedback_valid_out_84),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist3_sync_together342_aunroll_vunroll_x_in_c1_eni37_3_tpl_3_notEnable(LOGICAL,439)
    assign redist3_sync_together342_aunroll_vunroll_x_in_c1_eni37_3_tpl_3_notEnable_q = $unsigned(~ (VCC_q));

    // redist3_sync_together342_aunroll_vunroll_x_in_c1_eni37_3_tpl_3_nor(LOGICAL,440)
    assign redist3_sync_together342_aunroll_vunroll_x_in_c1_eni37_3_tpl_3_nor_q = ~ (redist3_sync_together342_aunroll_vunroll_x_in_c1_eni37_3_tpl_3_notEnable_q | redist3_sync_together342_aunroll_vunroll_x_in_c1_eni37_3_tpl_3_sticky_ena_q);

    // redist3_sync_together342_aunroll_vunroll_x_in_c1_eni37_3_tpl_3_cmpReg(REG,438)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_sync_together342_aunroll_vunroll_x_in_c1_eni37_3_tpl_3_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist3_sync_together342_aunroll_vunroll_x_in_c1_eni37_3_tpl_3_cmpReg_q <= $unsigned(VCC_q);
        end
    end

    // redist3_sync_together342_aunroll_vunroll_x_in_c1_eni37_3_tpl_3_sticky_ena(REG,441)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_sync_together342_aunroll_vunroll_x_in_c1_eni37_3_tpl_3_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist3_sync_together342_aunroll_vunroll_x_in_c1_eni37_3_tpl_3_nor_q == 1'b1)
        begin
            redist3_sync_together342_aunroll_vunroll_x_in_c1_eni37_3_tpl_3_sticky_ena_q <= $unsigned(redist3_sync_together342_aunroll_vunroll_x_in_c1_eni37_3_tpl_3_cmpReg_q);
        end
    end

    // redist3_sync_together342_aunroll_vunroll_x_in_c1_eni37_3_tpl_3_enaAnd(LOGICAL,442)
    assign redist3_sync_together342_aunroll_vunroll_x_in_c1_eni37_3_tpl_3_enaAnd_q = redist3_sync_together342_aunroll_vunroll_x_in_c1_eni37_3_tpl_3_sticky_ena_q & VCC_q;

    // redist3_sync_together342_aunroll_vunroll_x_in_c1_eni37_3_tpl_3_rdcnt(COUNTER,436)
    // low=0, high=1, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_sync_together342_aunroll_vunroll_x_in_c1_eni37_3_tpl_3_rdcnt_i <= 1'd0;
        end
        else
        begin
            redist3_sync_together342_aunroll_vunroll_x_in_c1_eni37_3_tpl_3_rdcnt_i <= $unsigned(redist3_sync_together342_aunroll_vunroll_x_in_c1_eni37_3_tpl_3_rdcnt_i) + $unsigned(1'd1);
        end
    end
    assign redist3_sync_together342_aunroll_vunroll_x_in_c1_eni37_3_tpl_3_rdcnt_q = redist3_sync_together342_aunroll_vunroll_x_in_c1_eni37_3_tpl_3_rdcnt_i[0:0];

    // redist3_sync_together342_aunroll_vunroll_x_in_c1_eni37_3_tpl_3_wraddr(REG,437)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_sync_together342_aunroll_vunroll_x_in_c1_eni37_3_tpl_3_wraddr_q <= $unsigned(1'b1);
        end
        else
        begin
            redist3_sync_together342_aunroll_vunroll_x_in_c1_eni37_3_tpl_3_wraddr_q <= $unsigned(redist3_sync_together342_aunroll_vunroll_x_in_c1_eni37_3_tpl_3_rdcnt_q);
        end
    end

    // redist3_sync_together342_aunroll_vunroll_x_in_c1_eni37_3_tpl_3_mem(DUALMEM,435)
    assign redist3_sync_together342_aunroll_vunroll_x_in_c1_eni37_3_tpl_3_mem_ia = $unsigned(in_c1_eni37_3_tpl);
    assign redist3_sync_together342_aunroll_vunroll_x_in_c1_eni37_3_tpl_3_mem_aa = redist3_sync_together342_aunroll_vunroll_x_in_c1_eni37_3_tpl_3_wraddr_q;
    assign redist3_sync_together342_aunroll_vunroll_x_in_c1_eni37_3_tpl_3_mem_ab = redist3_sync_together342_aunroll_vunroll_x_in_c1_eni37_3_tpl_3_rdcnt_q;
    assign redist3_sync_together342_aunroll_vunroll_x_in_c1_eni37_3_tpl_3_mem_reset0 = ~ (resetn);
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
    ) redist3_sync_together342_aunroll_vunroll_x_in_c1_eni37_3_tpl_3_mem_dmem (
        .clocken1(redist3_sync_together342_aunroll_vunroll_x_in_c1_eni37_3_tpl_3_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist3_sync_together342_aunroll_vunroll_x_in_c1_eni37_3_tpl_3_mem_reset0),
        .clock1(clock),
        .address_a(redist3_sync_together342_aunroll_vunroll_x_in_c1_eni37_3_tpl_3_mem_aa),
        .data_a(redist3_sync_together342_aunroll_vunroll_x_in_c1_eni37_3_tpl_3_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist3_sync_together342_aunroll_vunroll_x_in_c1_eni37_3_tpl_3_mem_ab),
        .q_b(redist3_sync_together342_aunroll_vunroll_x_in_c1_eni37_3_tpl_3_mem_iq),
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
    assign redist3_sync_together342_aunroll_vunroll_x_in_c1_eni37_3_tpl_3_mem_q = redist3_sync_together342_aunroll_vunroll_x_in_c1_eni37_3_tpl_3_mem_iq[31:0];

    // i_llvm_fpga_pop_f32_pre117_e85_pop84_conv2d1x1114(BLACKBOX,164)@151
    // out out_feedback_stall_out_84@20000000
    conv2d1x1_i_llvm_fpga_pop_f32_pre117_e85_pop84_0 thei_llvm_fpga_pop_f32_pre117_e85_pop84_conv2d1x1114 (
        .in_data_in(redist3_sync_together342_aunroll_vunroll_x_in_c1_eni37_3_tpl_3_mem_q),
        .in_dir(i_llvm_fpga_fanout_i1_c1_ene2566_fanout_adaptor595_conv2d1x13_q),
        .in_feedback_in_84(i_llvm_fpga_push_f32_pre117_e85_push84_conv2d1x1115_out_feedback_out_84),
        .in_feedback_valid_in_84(i_llvm_fpga_push_f32_pre117_e85_push84_conv2d1x1115_out_feedback_valid_out_84),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg78_q),
        .out_data_out(i_llvm_fpga_pop_f32_pre117_e85_pop84_conv2d1x1114_out_data_out),
        .out_feedback_stall_out_84(i_llvm_fpga_pop_f32_pre117_e85_pop84_conv2d1x1114_out_feedback_stall_out_84),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist60_i_llvm_fpga_pop_f32_pre117_e85_pop84_conv2d1x1114_out_data_out_2(DELAY,403)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist60_i_llvm_fpga_pop_f32_pre117_e85_pop84_conv2d1x1114_out_data_out_2_delay_0 <= '0;
            redist60_i_llvm_fpga_pop_f32_pre117_e85_pop84_conv2d1x1114_out_data_out_2_q <= '0;
        end
        else
        begin
            redist60_i_llvm_fpga_pop_f32_pre117_e85_pop84_conv2d1x1114_out_data_out_2_delay_0 <= $unsigned(i_llvm_fpga_pop_f32_pre117_e85_pop84_conv2d1x1114_out_data_out);
            redist60_i_llvm_fpga_pop_f32_pre117_e85_pop84_conv2d1x1114_out_data_out_2_q <= redist60_i_llvm_fpga_pop_f32_pre117_e85_pop84_conv2d1x1114_out_data_out_2_delay_0;
        end
    end

    // i_select78_conv2d1x1116(MUX,233)@153
    assign i_select78_conv2d1x1116_s = i_llvm_fpga_fanout_i1_not_269_fanout_adaptor_conv2d1x138_q;
    always @(i_select78_conv2d1x1116_s or i_llvm_fpga_pop_f32_pop44_conv2d1x119_out_data_out or redist60_i_llvm_fpga_pop_f32_pre117_e85_pop84_conv2d1x1114_out_data_out_2_q)
    begin
        unique case (i_select78_conv2d1x1116_s)
            1'b0 : i_select78_conv2d1x1116_q = i_llvm_fpga_pop_f32_pop44_conv2d1x119_out_data_out;
            1'b1 : i_select78_conv2d1x1116_q = redist60_i_llvm_fpga_pop_f32_pre117_e85_pop84_conv2d1x1114_out_data_out_2_q;
            default : i_select78_conv2d1x1116_q = 32'b0;
        endcase
    end

    // valid_fanout_reg76(REG,321)@150 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg76_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg76_q <= $unsigned(redist55_sync_together342_aunroll_vunroll_x_in_i_valid_2_q);
        end
    end

    // valid_fanout_reg77(REG,322)@150 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg77_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg77_q <= $unsigned(redist55_sync_together342_aunroll_vunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_push_f32_pre118_e86_push85_conv2d1x1112(BLACKBOX,189)@151
    // out out_feedback_out_85@20000000
    // out out_feedback_valid_out_85@20000000
    conv2d1x1_i_llvm_fpga_push_f32_pre118_e86_push85_0 thei_llvm_fpga_push_f32_pre118_e86_push85_conv2d1x1112 (
        .in_c1_ene18582_fanout_adaptor597(i_llvm_fpga_fanout_i1_c1_ene18582_fanout_adaptor597_conv2d1x18_q),
        .in_data_in(i_llvm_fpga_pop_f32_pre118_e86_pop85_conv2d1x1111_out_data_out),
        .in_feedback_stall_in_85(i_llvm_fpga_pop_f32_pre118_e86_pop85_conv2d1x1111_out_feedback_stall_out_85),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg77_q),
        .out_data_out(),
        .out_feedback_out_85(i_llvm_fpga_push_f32_pre118_e86_push85_conv2d1x1112_out_feedback_out_85),
        .out_feedback_valid_out_85(i_llvm_fpga_push_f32_pre118_e86_push85_conv2d1x1112_out_feedback_valid_out_85),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist4_sync_together342_aunroll_vunroll_x_in_c1_eni37_4_tpl_3_notEnable(LOGICAL,447)
    assign redist4_sync_together342_aunroll_vunroll_x_in_c1_eni37_4_tpl_3_notEnable_q = $unsigned(~ (VCC_q));

    // redist4_sync_together342_aunroll_vunroll_x_in_c1_eni37_4_tpl_3_nor(LOGICAL,448)
    assign redist4_sync_together342_aunroll_vunroll_x_in_c1_eni37_4_tpl_3_nor_q = ~ (redist4_sync_together342_aunroll_vunroll_x_in_c1_eni37_4_tpl_3_notEnable_q | redist4_sync_together342_aunroll_vunroll_x_in_c1_eni37_4_tpl_3_sticky_ena_q);

    // redist4_sync_together342_aunroll_vunroll_x_in_c1_eni37_4_tpl_3_cmpReg(REG,446)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_sync_together342_aunroll_vunroll_x_in_c1_eni37_4_tpl_3_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist4_sync_together342_aunroll_vunroll_x_in_c1_eni37_4_tpl_3_cmpReg_q <= $unsigned(VCC_q);
        end
    end

    // redist4_sync_together342_aunroll_vunroll_x_in_c1_eni37_4_tpl_3_sticky_ena(REG,449)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_sync_together342_aunroll_vunroll_x_in_c1_eni37_4_tpl_3_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist4_sync_together342_aunroll_vunroll_x_in_c1_eni37_4_tpl_3_nor_q == 1'b1)
        begin
            redist4_sync_together342_aunroll_vunroll_x_in_c1_eni37_4_tpl_3_sticky_ena_q <= $unsigned(redist4_sync_together342_aunroll_vunroll_x_in_c1_eni37_4_tpl_3_cmpReg_q);
        end
    end

    // redist4_sync_together342_aunroll_vunroll_x_in_c1_eni37_4_tpl_3_enaAnd(LOGICAL,450)
    assign redist4_sync_together342_aunroll_vunroll_x_in_c1_eni37_4_tpl_3_enaAnd_q = redist4_sync_together342_aunroll_vunroll_x_in_c1_eni37_4_tpl_3_sticky_ena_q & VCC_q;

    // redist4_sync_together342_aunroll_vunroll_x_in_c1_eni37_4_tpl_3_rdcnt(COUNTER,444)
    // low=0, high=1, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_sync_together342_aunroll_vunroll_x_in_c1_eni37_4_tpl_3_rdcnt_i <= 1'd0;
        end
        else
        begin
            redist4_sync_together342_aunroll_vunroll_x_in_c1_eni37_4_tpl_3_rdcnt_i <= $unsigned(redist4_sync_together342_aunroll_vunroll_x_in_c1_eni37_4_tpl_3_rdcnt_i) + $unsigned(1'd1);
        end
    end
    assign redist4_sync_together342_aunroll_vunroll_x_in_c1_eni37_4_tpl_3_rdcnt_q = redist4_sync_together342_aunroll_vunroll_x_in_c1_eni37_4_tpl_3_rdcnt_i[0:0];

    // redist4_sync_together342_aunroll_vunroll_x_in_c1_eni37_4_tpl_3_wraddr(REG,445)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_sync_together342_aunroll_vunroll_x_in_c1_eni37_4_tpl_3_wraddr_q <= $unsigned(1'b1);
        end
        else
        begin
            redist4_sync_together342_aunroll_vunroll_x_in_c1_eni37_4_tpl_3_wraddr_q <= $unsigned(redist4_sync_together342_aunroll_vunroll_x_in_c1_eni37_4_tpl_3_rdcnt_q);
        end
    end

    // redist4_sync_together342_aunroll_vunroll_x_in_c1_eni37_4_tpl_3_mem(DUALMEM,443)
    assign redist4_sync_together342_aunroll_vunroll_x_in_c1_eni37_4_tpl_3_mem_ia = $unsigned(in_c1_eni37_4_tpl);
    assign redist4_sync_together342_aunroll_vunroll_x_in_c1_eni37_4_tpl_3_mem_aa = redist4_sync_together342_aunroll_vunroll_x_in_c1_eni37_4_tpl_3_wraddr_q;
    assign redist4_sync_together342_aunroll_vunroll_x_in_c1_eni37_4_tpl_3_mem_ab = redist4_sync_together342_aunroll_vunroll_x_in_c1_eni37_4_tpl_3_rdcnt_q;
    assign redist4_sync_together342_aunroll_vunroll_x_in_c1_eni37_4_tpl_3_mem_reset0 = ~ (resetn);
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
    ) redist4_sync_together342_aunroll_vunroll_x_in_c1_eni37_4_tpl_3_mem_dmem (
        .clocken1(redist4_sync_together342_aunroll_vunroll_x_in_c1_eni37_4_tpl_3_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist4_sync_together342_aunroll_vunroll_x_in_c1_eni37_4_tpl_3_mem_reset0),
        .clock1(clock),
        .address_a(redist4_sync_together342_aunroll_vunroll_x_in_c1_eni37_4_tpl_3_mem_aa),
        .data_a(redist4_sync_together342_aunroll_vunroll_x_in_c1_eni37_4_tpl_3_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist4_sync_together342_aunroll_vunroll_x_in_c1_eni37_4_tpl_3_mem_ab),
        .q_b(redist4_sync_together342_aunroll_vunroll_x_in_c1_eni37_4_tpl_3_mem_iq),
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
    assign redist4_sync_together342_aunroll_vunroll_x_in_c1_eni37_4_tpl_3_mem_q = redist4_sync_together342_aunroll_vunroll_x_in_c1_eni37_4_tpl_3_mem_iq[31:0];

    // i_llvm_fpga_pop_f32_pre118_e86_pop85_conv2d1x1111(BLACKBOX,165)@151
    // out out_feedback_stall_out_85@20000000
    conv2d1x1_i_llvm_fpga_pop_f32_pre118_e86_pop85_0 thei_llvm_fpga_pop_f32_pre118_e86_pop85_conv2d1x1111 (
        .in_data_in(redist4_sync_together342_aunroll_vunroll_x_in_c1_eni37_4_tpl_3_mem_q),
        .in_dir(i_llvm_fpga_fanout_i1_c1_ene2566_fanout_adaptor595_conv2d1x13_q),
        .in_feedback_in_85(i_llvm_fpga_push_f32_pre118_e86_push85_conv2d1x1112_out_feedback_out_85),
        .in_feedback_valid_in_85(i_llvm_fpga_push_f32_pre118_e86_push85_conv2d1x1112_out_feedback_valid_out_85),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg76_q),
        .out_data_out(i_llvm_fpga_pop_f32_pre118_e86_pop85_conv2d1x1111_out_data_out),
        .out_feedback_stall_out_85(i_llvm_fpga_pop_f32_pre118_e86_pop85_conv2d1x1111_out_feedback_stall_out_85),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist59_i_llvm_fpga_pop_f32_pre118_e86_pop85_conv2d1x1111_out_data_out_2(DELAY,402)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist59_i_llvm_fpga_pop_f32_pre118_e86_pop85_conv2d1x1111_out_data_out_2_delay_0 <= '0;
            redist59_i_llvm_fpga_pop_f32_pre118_e86_pop85_conv2d1x1111_out_data_out_2_q <= '0;
        end
        else
        begin
            redist59_i_llvm_fpga_pop_f32_pre118_e86_pop85_conv2d1x1111_out_data_out_2_delay_0 <= $unsigned(i_llvm_fpga_pop_f32_pre118_e86_pop85_conv2d1x1111_out_data_out);
            redist59_i_llvm_fpga_pop_f32_pre118_e86_pop85_conv2d1x1111_out_data_out_2_q <= redist59_i_llvm_fpga_pop_f32_pre118_e86_pop85_conv2d1x1111_out_data_out_2_delay_0;
        end
    end

    // i_select75_conv2d1x1113(MUX,232)@153
    assign i_select75_conv2d1x1113_s = i_llvm_fpga_fanout_i1_not_269_fanout_adaptor_conv2d1x138_q;
    always @(i_select75_conv2d1x1113_s or i_llvm_fpga_pop_f32_pop43_conv2d1x120_out_data_out or redist59_i_llvm_fpga_pop_f32_pre118_e86_pop85_conv2d1x1111_out_data_out_2_q)
    begin
        unique case (i_select75_conv2d1x1113_s)
            1'b0 : i_select75_conv2d1x1113_q = i_llvm_fpga_pop_f32_pop43_conv2d1x120_out_data_out;
            1'b1 : i_select75_conv2d1x1113_q = redist59_i_llvm_fpga_pop_f32_pre118_e86_pop85_conv2d1x1111_out_data_out_2_q;
            default : i_select75_conv2d1x1113_q = 32'b0;
        endcase
    end

    // valid_fanout_reg74(REG,319)@150 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg74_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg74_q <= $unsigned(redist55_sync_together342_aunroll_vunroll_x_in_i_valid_2_q);
        end
    end

    // valid_fanout_reg75(REG,320)@152 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg75_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg75_q <= $unsigned(redist56_sync_together342_aunroll_vunroll_x_in_i_valid_4_q);
        end
    end

    // redist20_sync_together342_aunroll_vunroll_x_in_c1_eni37_18_tpl_4(DELAY,363)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist20_sync_together342_aunroll_vunroll_x_in_c1_eni37_18_tpl_4_delay_0 <= '0;
            redist20_sync_together342_aunroll_vunroll_x_in_c1_eni37_18_tpl_4_q <= '0;
        end
        else
        begin
            redist20_sync_together342_aunroll_vunroll_x_in_c1_eni37_18_tpl_4_delay_0 <= $unsigned(redist19_sync_together342_aunroll_vunroll_x_in_c1_eni37_18_tpl_2_q);
            redist20_sync_together342_aunroll_vunroll_x_in_c1_eni37_18_tpl_4_q <= redist20_sync_together342_aunroll_vunroll_x_in_c1_eni37_18_tpl_4_delay_0;
        end
    end

    // i_llvm_fpga_fanout_i1_c1_ene18582_fanout_adaptor_conv2d1x19(REG,103)@152 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_llvm_fpga_fanout_i1_c1_ene18582_fanout_adaptor_conv2d1x19_q <= $unsigned(1'b0);
        end
        else
        begin
            i_llvm_fpga_fanout_i1_c1_ene18582_fanout_adaptor_conv2d1x19_q <= redist20_sync_together342_aunroll_vunroll_x_in_c1_eni37_18_tpl_4_q;
        end
    end

    // i_llvm_fpga_push_f32_arrayidx131_3_promoted_e87_push86_conv2d1x1109(BLACKBOX,173)@153
    // out out_feedback_out_86@20000000
    // out out_feedback_valid_out_86@20000000
    conv2d1x1_i_llvm_fpga_push_f32_arrayidx10000romoted_e87_push86_0 thei_llvm_fpga_push_f32_arrayidx131_3_promoted_e87_push86_conv2d1x1109 (
        .in_c1_ene18582_fanout_adaptor(i_llvm_fpga_fanout_i1_c1_ene18582_fanout_adaptor_conv2d1x19_q),
        .in_data_in(redist80_i_llvm_fpga_pop_f32_arrayidx131_3_promoted_e87_pop86_conv2d1x1108_out_data_out_2_q),
        .in_feedback_stall_in_86(i_llvm_fpga_pop_f32_arrayidx131_3_promoted_e87_pop86_conv2d1x1108_out_feedback_stall_out_86),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg75_q),
        .out_data_out(),
        .out_feedback_out_86(i_llvm_fpga_push_f32_arrayidx131_3_promoted_e87_push86_conv2d1x1109_out_feedback_out_86),
        .out_feedback_valid_out_86(i_llvm_fpga_push_f32_arrayidx131_3_promoted_e87_push86_conv2d1x1109_out_feedback_valid_out_86),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist5_sync_together342_aunroll_vunroll_x_in_c1_eni37_5_tpl_3_notEnable(LOGICAL,455)
    assign redist5_sync_together342_aunroll_vunroll_x_in_c1_eni37_5_tpl_3_notEnable_q = $unsigned(~ (VCC_q));

    // redist5_sync_together342_aunroll_vunroll_x_in_c1_eni37_5_tpl_3_nor(LOGICAL,456)
    assign redist5_sync_together342_aunroll_vunroll_x_in_c1_eni37_5_tpl_3_nor_q = ~ (redist5_sync_together342_aunroll_vunroll_x_in_c1_eni37_5_tpl_3_notEnable_q | redist5_sync_together342_aunroll_vunroll_x_in_c1_eni37_5_tpl_3_sticky_ena_q);

    // redist5_sync_together342_aunroll_vunroll_x_in_c1_eni37_5_tpl_3_cmpReg(REG,454)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_sync_together342_aunroll_vunroll_x_in_c1_eni37_5_tpl_3_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist5_sync_together342_aunroll_vunroll_x_in_c1_eni37_5_tpl_3_cmpReg_q <= $unsigned(VCC_q);
        end
    end

    // redist5_sync_together342_aunroll_vunroll_x_in_c1_eni37_5_tpl_3_sticky_ena(REG,457)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_sync_together342_aunroll_vunroll_x_in_c1_eni37_5_tpl_3_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist5_sync_together342_aunroll_vunroll_x_in_c1_eni37_5_tpl_3_nor_q == 1'b1)
        begin
            redist5_sync_together342_aunroll_vunroll_x_in_c1_eni37_5_tpl_3_sticky_ena_q <= $unsigned(redist5_sync_together342_aunroll_vunroll_x_in_c1_eni37_5_tpl_3_cmpReg_q);
        end
    end

    // redist5_sync_together342_aunroll_vunroll_x_in_c1_eni37_5_tpl_3_enaAnd(LOGICAL,458)
    assign redist5_sync_together342_aunroll_vunroll_x_in_c1_eni37_5_tpl_3_enaAnd_q = redist5_sync_together342_aunroll_vunroll_x_in_c1_eni37_5_tpl_3_sticky_ena_q & VCC_q;

    // redist5_sync_together342_aunroll_vunroll_x_in_c1_eni37_5_tpl_3_rdcnt(COUNTER,452)
    // low=0, high=1, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_sync_together342_aunroll_vunroll_x_in_c1_eni37_5_tpl_3_rdcnt_i <= 1'd0;
        end
        else
        begin
            redist5_sync_together342_aunroll_vunroll_x_in_c1_eni37_5_tpl_3_rdcnt_i <= $unsigned(redist5_sync_together342_aunroll_vunroll_x_in_c1_eni37_5_tpl_3_rdcnt_i) + $unsigned(1'd1);
        end
    end
    assign redist5_sync_together342_aunroll_vunroll_x_in_c1_eni37_5_tpl_3_rdcnt_q = redist5_sync_together342_aunroll_vunroll_x_in_c1_eni37_5_tpl_3_rdcnt_i[0:0];

    // redist5_sync_together342_aunroll_vunroll_x_in_c1_eni37_5_tpl_3_wraddr(REG,453)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_sync_together342_aunroll_vunroll_x_in_c1_eni37_5_tpl_3_wraddr_q <= $unsigned(1'b1);
        end
        else
        begin
            redist5_sync_together342_aunroll_vunroll_x_in_c1_eni37_5_tpl_3_wraddr_q <= $unsigned(redist5_sync_together342_aunroll_vunroll_x_in_c1_eni37_5_tpl_3_rdcnt_q);
        end
    end

    // redist5_sync_together342_aunroll_vunroll_x_in_c1_eni37_5_tpl_3_mem(DUALMEM,451)
    assign redist5_sync_together342_aunroll_vunroll_x_in_c1_eni37_5_tpl_3_mem_ia = $unsigned(in_c1_eni37_5_tpl);
    assign redist5_sync_together342_aunroll_vunroll_x_in_c1_eni37_5_tpl_3_mem_aa = redist5_sync_together342_aunroll_vunroll_x_in_c1_eni37_5_tpl_3_wraddr_q;
    assign redist5_sync_together342_aunroll_vunroll_x_in_c1_eni37_5_tpl_3_mem_ab = redist5_sync_together342_aunroll_vunroll_x_in_c1_eni37_5_tpl_3_rdcnt_q;
    assign redist5_sync_together342_aunroll_vunroll_x_in_c1_eni37_5_tpl_3_mem_reset0 = ~ (resetn);
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
    ) redist5_sync_together342_aunroll_vunroll_x_in_c1_eni37_5_tpl_3_mem_dmem (
        .clocken1(redist5_sync_together342_aunroll_vunroll_x_in_c1_eni37_5_tpl_3_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist5_sync_together342_aunroll_vunroll_x_in_c1_eni37_5_tpl_3_mem_reset0),
        .clock1(clock),
        .address_a(redist5_sync_together342_aunroll_vunroll_x_in_c1_eni37_5_tpl_3_mem_aa),
        .data_a(redist5_sync_together342_aunroll_vunroll_x_in_c1_eni37_5_tpl_3_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist5_sync_together342_aunroll_vunroll_x_in_c1_eni37_5_tpl_3_mem_ab),
        .q_b(redist5_sync_together342_aunroll_vunroll_x_in_c1_eni37_5_tpl_3_mem_iq),
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
    assign redist5_sync_together342_aunroll_vunroll_x_in_c1_eni37_5_tpl_3_mem_q = redist5_sync_together342_aunroll_vunroll_x_in_c1_eni37_5_tpl_3_mem_iq[31:0];

    // i_llvm_fpga_pop_f32_arrayidx131_3_promoted_e87_pop86_conv2d1x1108(BLACKBOX,125)@151
    // out out_feedback_stall_out_86@20000000
    conv2d1x1_i_llvm_fpga_pop_f32_arrayidx131_3_promoted_e87_pop86_0 thei_llvm_fpga_pop_f32_arrayidx131_3_promoted_e87_pop86_conv2d1x1108 (
        .in_data_in(redist5_sync_together342_aunroll_vunroll_x_in_c1_eni37_5_tpl_3_mem_q),
        .in_dir(i_llvm_fpga_fanout_i1_c1_ene2566_fanout_adaptor595_conv2d1x13_q),
        .in_feedback_in_86(i_llvm_fpga_push_f32_arrayidx131_3_promoted_e87_push86_conv2d1x1109_out_feedback_out_86),
        .in_feedback_valid_in_86(i_llvm_fpga_push_f32_arrayidx131_3_promoted_e87_push86_conv2d1x1109_out_feedback_valid_out_86),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg74_q),
        .out_data_out(i_llvm_fpga_pop_f32_arrayidx131_3_promoted_e87_pop86_conv2d1x1108_out_data_out),
        .out_feedback_stall_out_86(i_llvm_fpga_pop_f32_arrayidx131_3_promoted_e87_pop86_conv2d1x1108_out_feedback_stall_out_86),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist80_i_llvm_fpga_pop_f32_arrayidx131_3_promoted_e87_pop86_conv2d1x1108_out_data_out_2(DELAY,423)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist80_i_llvm_fpga_pop_f32_arrayidx131_3_promoted_e87_pop86_conv2d1x1108_out_data_out_2_delay_0 <= '0;
            redist80_i_llvm_fpga_pop_f32_arrayidx131_3_promoted_e87_pop86_conv2d1x1108_out_data_out_2_q <= '0;
        end
        else
        begin
            redist80_i_llvm_fpga_pop_f32_arrayidx131_3_promoted_e87_pop86_conv2d1x1108_out_data_out_2_delay_0 <= $unsigned(i_llvm_fpga_pop_f32_arrayidx131_3_promoted_e87_pop86_conv2d1x1108_out_data_out);
            redist80_i_llvm_fpga_pop_f32_arrayidx131_3_promoted_e87_pop86_conv2d1x1108_out_data_out_2_q <= redist80_i_llvm_fpga_pop_f32_arrayidx131_3_promoted_e87_pop86_conv2d1x1108_out_data_out_2_delay_0;
        end
    end

    // i_select72_conv2d1x1110(MUX,231)@153
    assign i_select72_conv2d1x1110_s = i_llvm_fpga_fanout_i1_not_269_fanout_adaptor_conv2d1x138_q;
    always @(i_select72_conv2d1x1110_s or i_llvm_fpga_pop_f32_pop42_conv2d1x121_out_data_out or redist80_i_llvm_fpga_pop_f32_arrayidx131_3_promoted_e87_pop86_conv2d1x1108_out_data_out_2_q)
    begin
        unique case (i_select72_conv2d1x1110_s)
            1'b0 : i_select72_conv2d1x1110_q = i_llvm_fpga_pop_f32_pop42_conv2d1x121_out_data_out;
            1'b1 : i_select72_conv2d1x1110_q = redist80_i_llvm_fpga_pop_f32_arrayidx131_3_promoted_e87_pop86_conv2d1x1108_out_data_out_2_q;
            default : i_select72_conv2d1x1110_q = 32'b0;
        endcase
    end

    // valid_fanout_reg72(REG,317)@150 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg72_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg72_q <= $unsigned(redist55_sync_together342_aunroll_vunroll_x_in_i_valid_2_q);
        end
    end

    // valid_fanout_reg73(REG,318)@152 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg73_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg73_q <= $unsigned(redist56_sync_together342_aunroll_vunroll_x_in_i_valid_4_q);
        end
    end

    // i_llvm_fpga_push_f32_arrayidx131_4_promoted_e88_push87_conv2d1x1106(BLACKBOX,174)@153
    // out out_feedback_out_87@20000000
    // out out_feedback_valid_out_87@20000000
    conv2d1x1_i_llvm_fpga_push_f32_arrayidx10000romoted_e88_push87_0 thei_llvm_fpga_push_f32_arrayidx131_4_promoted_e88_push87_conv2d1x1106 (
        .in_c1_ene18582_fanout_adaptor(i_llvm_fpga_fanout_i1_c1_ene18582_fanout_adaptor_conv2d1x19_q),
        .in_data_in(redist79_i_llvm_fpga_pop_f32_arrayidx131_4_promoted_e88_pop87_conv2d1x1105_out_data_out_2_q),
        .in_feedback_stall_in_87(i_llvm_fpga_pop_f32_arrayidx131_4_promoted_e88_pop87_conv2d1x1105_out_feedback_stall_out_87),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg73_q),
        .out_data_out(),
        .out_feedback_out_87(i_llvm_fpga_push_f32_arrayidx131_4_promoted_e88_push87_conv2d1x1106_out_feedback_out_87),
        .out_feedback_valid_out_87(i_llvm_fpga_push_f32_arrayidx131_4_promoted_e88_push87_conv2d1x1106_out_feedback_valid_out_87),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist6_sync_together342_aunroll_vunroll_x_in_c1_eni37_6_tpl_3_notEnable(LOGICAL,463)
    assign redist6_sync_together342_aunroll_vunroll_x_in_c1_eni37_6_tpl_3_notEnable_q = $unsigned(~ (VCC_q));

    // redist6_sync_together342_aunroll_vunroll_x_in_c1_eni37_6_tpl_3_nor(LOGICAL,464)
    assign redist6_sync_together342_aunroll_vunroll_x_in_c1_eni37_6_tpl_3_nor_q = ~ (redist6_sync_together342_aunroll_vunroll_x_in_c1_eni37_6_tpl_3_notEnable_q | redist6_sync_together342_aunroll_vunroll_x_in_c1_eni37_6_tpl_3_sticky_ena_q);

    // redist6_sync_together342_aunroll_vunroll_x_in_c1_eni37_6_tpl_3_cmpReg(REG,462)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_sync_together342_aunroll_vunroll_x_in_c1_eni37_6_tpl_3_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist6_sync_together342_aunroll_vunroll_x_in_c1_eni37_6_tpl_3_cmpReg_q <= $unsigned(VCC_q);
        end
    end

    // redist6_sync_together342_aunroll_vunroll_x_in_c1_eni37_6_tpl_3_sticky_ena(REG,465)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_sync_together342_aunroll_vunroll_x_in_c1_eni37_6_tpl_3_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist6_sync_together342_aunroll_vunroll_x_in_c1_eni37_6_tpl_3_nor_q == 1'b1)
        begin
            redist6_sync_together342_aunroll_vunroll_x_in_c1_eni37_6_tpl_3_sticky_ena_q <= $unsigned(redist6_sync_together342_aunroll_vunroll_x_in_c1_eni37_6_tpl_3_cmpReg_q);
        end
    end

    // redist6_sync_together342_aunroll_vunroll_x_in_c1_eni37_6_tpl_3_enaAnd(LOGICAL,466)
    assign redist6_sync_together342_aunroll_vunroll_x_in_c1_eni37_6_tpl_3_enaAnd_q = redist6_sync_together342_aunroll_vunroll_x_in_c1_eni37_6_tpl_3_sticky_ena_q & VCC_q;

    // redist6_sync_together342_aunroll_vunroll_x_in_c1_eni37_6_tpl_3_rdcnt(COUNTER,460)
    // low=0, high=1, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_sync_together342_aunroll_vunroll_x_in_c1_eni37_6_tpl_3_rdcnt_i <= 1'd0;
        end
        else
        begin
            redist6_sync_together342_aunroll_vunroll_x_in_c1_eni37_6_tpl_3_rdcnt_i <= $unsigned(redist6_sync_together342_aunroll_vunroll_x_in_c1_eni37_6_tpl_3_rdcnt_i) + $unsigned(1'd1);
        end
    end
    assign redist6_sync_together342_aunroll_vunroll_x_in_c1_eni37_6_tpl_3_rdcnt_q = redist6_sync_together342_aunroll_vunroll_x_in_c1_eni37_6_tpl_3_rdcnt_i[0:0];

    // redist6_sync_together342_aunroll_vunroll_x_in_c1_eni37_6_tpl_3_wraddr(REG,461)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_sync_together342_aunroll_vunroll_x_in_c1_eni37_6_tpl_3_wraddr_q <= $unsigned(1'b1);
        end
        else
        begin
            redist6_sync_together342_aunroll_vunroll_x_in_c1_eni37_6_tpl_3_wraddr_q <= $unsigned(redist6_sync_together342_aunroll_vunroll_x_in_c1_eni37_6_tpl_3_rdcnt_q);
        end
    end

    // redist6_sync_together342_aunroll_vunroll_x_in_c1_eni37_6_tpl_3_mem(DUALMEM,459)
    assign redist6_sync_together342_aunroll_vunroll_x_in_c1_eni37_6_tpl_3_mem_ia = $unsigned(in_c1_eni37_6_tpl);
    assign redist6_sync_together342_aunroll_vunroll_x_in_c1_eni37_6_tpl_3_mem_aa = redist6_sync_together342_aunroll_vunroll_x_in_c1_eni37_6_tpl_3_wraddr_q;
    assign redist6_sync_together342_aunroll_vunroll_x_in_c1_eni37_6_tpl_3_mem_ab = redist6_sync_together342_aunroll_vunroll_x_in_c1_eni37_6_tpl_3_rdcnt_q;
    assign redist6_sync_together342_aunroll_vunroll_x_in_c1_eni37_6_tpl_3_mem_reset0 = ~ (resetn);
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
    ) redist6_sync_together342_aunroll_vunroll_x_in_c1_eni37_6_tpl_3_mem_dmem (
        .clocken1(redist6_sync_together342_aunroll_vunroll_x_in_c1_eni37_6_tpl_3_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist6_sync_together342_aunroll_vunroll_x_in_c1_eni37_6_tpl_3_mem_reset0),
        .clock1(clock),
        .address_a(redist6_sync_together342_aunroll_vunroll_x_in_c1_eni37_6_tpl_3_mem_aa),
        .data_a(redist6_sync_together342_aunroll_vunroll_x_in_c1_eni37_6_tpl_3_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist6_sync_together342_aunroll_vunroll_x_in_c1_eni37_6_tpl_3_mem_ab),
        .q_b(redist6_sync_together342_aunroll_vunroll_x_in_c1_eni37_6_tpl_3_mem_iq),
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
    assign redist6_sync_together342_aunroll_vunroll_x_in_c1_eni37_6_tpl_3_mem_q = redist6_sync_together342_aunroll_vunroll_x_in_c1_eni37_6_tpl_3_mem_iq[31:0];

    // i_llvm_fpga_pop_f32_arrayidx131_4_promoted_e88_pop87_conv2d1x1105(BLACKBOX,126)@151
    // out out_feedback_stall_out_87@20000000
    conv2d1x1_i_llvm_fpga_pop_f32_arrayidx131_4_promoted_e88_pop87_0 thei_llvm_fpga_pop_f32_arrayidx131_4_promoted_e88_pop87_conv2d1x1105 (
        .in_data_in(redist6_sync_together342_aunroll_vunroll_x_in_c1_eni37_6_tpl_3_mem_q),
        .in_dir(i_llvm_fpga_fanout_i1_c1_ene2566_fanout_adaptor595_conv2d1x13_q),
        .in_feedback_in_87(i_llvm_fpga_push_f32_arrayidx131_4_promoted_e88_push87_conv2d1x1106_out_feedback_out_87),
        .in_feedback_valid_in_87(i_llvm_fpga_push_f32_arrayidx131_4_promoted_e88_push87_conv2d1x1106_out_feedback_valid_out_87),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg72_q),
        .out_data_out(i_llvm_fpga_pop_f32_arrayidx131_4_promoted_e88_pop87_conv2d1x1105_out_data_out),
        .out_feedback_stall_out_87(i_llvm_fpga_pop_f32_arrayidx131_4_promoted_e88_pop87_conv2d1x1105_out_feedback_stall_out_87),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist79_i_llvm_fpga_pop_f32_arrayidx131_4_promoted_e88_pop87_conv2d1x1105_out_data_out_2(DELAY,422)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist79_i_llvm_fpga_pop_f32_arrayidx131_4_promoted_e88_pop87_conv2d1x1105_out_data_out_2_delay_0 <= '0;
            redist79_i_llvm_fpga_pop_f32_arrayidx131_4_promoted_e88_pop87_conv2d1x1105_out_data_out_2_q <= '0;
        end
        else
        begin
            redist79_i_llvm_fpga_pop_f32_arrayidx131_4_promoted_e88_pop87_conv2d1x1105_out_data_out_2_delay_0 <= $unsigned(i_llvm_fpga_pop_f32_arrayidx131_4_promoted_e88_pop87_conv2d1x1105_out_data_out);
            redist79_i_llvm_fpga_pop_f32_arrayidx131_4_promoted_e88_pop87_conv2d1x1105_out_data_out_2_q <= redist79_i_llvm_fpga_pop_f32_arrayidx131_4_promoted_e88_pop87_conv2d1x1105_out_data_out_2_delay_0;
        end
    end

    // i_select69_conv2d1x1107(MUX,230)@153
    assign i_select69_conv2d1x1107_s = i_llvm_fpga_fanout_i1_not_269_fanout_adaptor_conv2d1x138_q;
    always @(i_select69_conv2d1x1107_s or i_llvm_fpga_pop_f32_pop41_conv2d1x122_out_data_out or redist79_i_llvm_fpga_pop_f32_arrayidx131_4_promoted_e88_pop87_conv2d1x1105_out_data_out_2_q)
    begin
        unique case (i_select69_conv2d1x1107_s)
            1'b0 : i_select69_conv2d1x1107_q = i_llvm_fpga_pop_f32_pop41_conv2d1x122_out_data_out;
            1'b1 : i_select69_conv2d1x1107_q = redist79_i_llvm_fpga_pop_f32_arrayidx131_4_promoted_e88_pop87_conv2d1x1105_out_data_out_2_q;
            default : i_select69_conv2d1x1107_q = 32'b0;
        endcase
    end

    // valid_fanout_reg70(REG,315)@150 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg70_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg70_q <= $unsigned(redist55_sync_together342_aunroll_vunroll_x_in_i_valid_2_q);
        end
    end

    // valid_fanout_reg71(REG,316)@152 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg71_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg71_q <= $unsigned(redist56_sync_together342_aunroll_vunroll_x_in_i_valid_4_q);
        end
    end

    // i_llvm_fpga_push_f32_arrayidx131_5_promoted_e89_push88_conv2d1x1103(BLACKBOX,175)@153
    // out out_feedback_out_88@20000000
    // out out_feedback_valid_out_88@20000000
    conv2d1x1_i_llvm_fpga_push_f32_arrayidx10000romoted_e89_push88_0 thei_llvm_fpga_push_f32_arrayidx131_5_promoted_e89_push88_conv2d1x1103 (
        .in_c1_ene18582_fanout_adaptor(i_llvm_fpga_fanout_i1_c1_ene18582_fanout_adaptor_conv2d1x19_q),
        .in_data_in(redist78_i_llvm_fpga_pop_f32_arrayidx131_5_promoted_e89_pop88_conv2d1x1102_out_data_out_2_q),
        .in_feedback_stall_in_88(i_llvm_fpga_pop_f32_arrayidx131_5_promoted_e89_pop88_conv2d1x1102_out_feedback_stall_out_88),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg71_q),
        .out_data_out(),
        .out_feedback_out_88(i_llvm_fpga_push_f32_arrayidx131_5_promoted_e89_push88_conv2d1x1103_out_feedback_out_88),
        .out_feedback_valid_out_88(i_llvm_fpga_push_f32_arrayidx131_5_promoted_e89_push88_conv2d1x1103_out_feedback_valid_out_88),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist7_sync_together342_aunroll_vunroll_x_in_c1_eni37_7_tpl_3_notEnable(LOGICAL,471)
    assign redist7_sync_together342_aunroll_vunroll_x_in_c1_eni37_7_tpl_3_notEnable_q = $unsigned(~ (VCC_q));

    // redist7_sync_together342_aunroll_vunroll_x_in_c1_eni37_7_tpl_3_nor(LOGICAL,472)
    assign redist7_sync_together342_aunroll_vunroll_x_in_c1_eni37_7_tpl_3_nor_q = ~ (redist7_sync_together342_aunroll_vunroll_x_in_c1_eni37_7_tpl_3_notEnable_q | redist7_sync_together342_aunroll_vunroll_x_in_c1_eni37_7_tpl_3_sticky_ena_q);

    // redist7_sync_together342_aunroll_vunroll_x_in_c1_eni37_7_tpl_3_cmpReg(REG,470)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_sync_together342_aunroll_vunroll_x_in_c1_eni37_7_tpl_3_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist7_sync_together342_aunroll_vunroll_x_in_c1_eni37_7_tpl_3_cmpReg_q <= $unsigned(VCC_q);
        end
    end

    // redist7_sync_together342_aunroll_vunroll_x_in_c1_eni37_7_tpl_3_sticky_ena(REG,473)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_sync_together342_aunroll_vunroll_x_in_c1_eni37_7_tpl_3_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist7_sync_together342_aunroll_vunroll_x_in_c1_eni37_7_tpl_3_nor_q == 1'b1)
        begin
            redist7_sync_together342_aunroll_vunroll_x_in_c1_eni37_7_tpl_3_sticky_ena_q <= $unsigned(redist7_sync_together342_aunroll_vunroll_x_in_c1_eni37_7_tpl_3_cmpReg_q);
        end
    end

    // redist7_sync_together342_aunroll_vunroll_x_in_c1_eni37_7_tpl_3_enaAnd(LOGICAL,474)
    assign redist7_sync_together342_aunroll_vunroll_x_in_c1_eni37_7_tpl_3_enaAnd_q = redist7_sync_together342_aunroll_vunroll_x_in_c1_eni37_7_tpl_3_sticky_ena_q & VCC_q;

    // redist7_sync_together342_aunroll_vunroll_x_in_c1_eni37_7_tpl_3_rdcnt(COUNTER,468)
    // low=0, high=1, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_sync_together342_aunroll_vunroll_x_in_c1_eni37_7_tpl_3_rdcnt_i <= 1'd0;
        end
        else
        begin
            redist7_sync_together342_aunroll_vunroll_x_in_c1_eni37_7_tpl_3_rdcnt_i <= $unsigned(redist7_sync_together342_aunroll_vunroll_x_in_c1_eni37_7_tpl_3_rdcnt_i) + $unsigned(1'd1);
        end
    end
    assign redist7_sync_together342_aunroll_vunroll_x_in_c1_eni37_7_tpl_3_rdcnt_q = redist7_sync_together342_aunroll_vunroll_x_in_c1_eni37_7_tpl_3_rdcnt_i[0:0];

    // redist7_sync_together342_aunroll_vunroll_x_in_c1_eni37_7_tpl_3_wraddr(REG,469)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_sync_together342_aunroll_vunroll_x_in_c1_eni37_7_tpl_3_wraddr_q <= $unsigned(1'b1);
        end
        else
        begin
            redist7_sync_together342_aunroll_vunroll_x_in_c1_eni37_7_tpl_3_wraddr_q <= $unsigned(redist7_sync_together342_aunroll_vunroll_x_in_c1_eni37_7_tpl_3_rdcnt_q);
        end
    end

    // redist7_sync_together342_aunroll_vunroll_x_in_c1_eni37_7_tpl_3_mem(DUALMEM,467)
    assign redist7_sync_together342_aunroll_vunroll_x_in_c1_eni37_7_tpl_3_mem_ia = $unsigned(in_c1_eni37_7_tpl);
    assign redist7_sync_together342_aunroll_vunroll_x_in_c1_eni37_7_tpl_3_mem_aa = redist7_sync_together342_aunroll_vunroll_x_in_c1_eni37_7_tpl_3_wraddr_q;
    assign redist7_sync_together342_aunroll_vunroll_x_in_c1_eni37_7_tpl_3_mem_ab = redist7_sync_together342_aunroll_vunroll_x_in_c1_eni37_7_tpl_3_rdcnt_q;
    assign redist7_sync_together342_aunroll_vunroll_x_in_c1_eni37_7_tpl_3_mem_reset0 = ~ (resetn);
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
    ) redist7_sync_together342_aunroll_vunroll_x_in_c1_eni37_7_tpl_3_mem_dmem (
        .clocken1(redist7_sync_together342_aunroll_vunroll_x_in_c1_eni37_7_tpl_3_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist7_sync_together342_aunroll_vunroll_x_in_c1_eni37_7_tpl_3_mem_reset0),
        .clock1(clock),
        .address_a(redist7_sync_together342_aunroll_vunroll_x_in_c1_eni37_7_tpl_3_mem_aa),
        .data_a(redist7_sync_together342_aunroll_vunroll_x_in_c1_eni37_7_tpl_3_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist7_sync_together342_aunroll_vunroll_x_in_c1_eni37_7_tpl_3_mem_ab),
        .q_b(redist7_sync_together342_aunroll_vunroll_x_in_c1_eni37_7_tpl_3_mem_iq),
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
    assign redist7_sync_together342_aunroll_vunroll_x_in_c1_eni37_7_tpl_3_mem_q = redist7_sync_together342_aunroll_vunroll_x_in_c1_eni37_7_tpl_3_mem_iq[31:0];

    // i_llvm_fpga_pop_f32_arrayidx131_5_promoted_e89_pop88_conv2d1x1102(BLACKBOX,127)@151
    // out out_feedback_stall_out_88@20000000
    conv2d1x1_i_llvm_fpga_pop_f32_arrayidx131_5_promoted_e89_pop88_0 thei_llvm_fpga_pop_f32_arrayidx131_5_promoted_e89_pop88_conv2d1x1102 (
        .in_data_in(redist7_sync_together342_aunroll_vunroll_x_in_c1_eni37_7_tpl_3_mem_q),
        .in_dir(i_llvm_fpga_fanout_i1_c1_ene2566_fanout_adaptor595_conv2d1x13_q),
        .in_feedback_in_88(i_llvm_fpga_push_f32_arrayidx131_5_promoted_e89_push88_conv2d1x1103_out_feedback_out_88),
        .in_feedback_valid_in_88(i_llvm_fpga_push_f32_arrayidx131_5_promoted_e89_push88_conv2d1x1103_out_feedback_valid_out_88),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg70_q),
        .out_data_out(i_llvm_fpga_pop_f32_arrayidx131_5_promoted_e89_pop88_conv2d1x1102_out_data_out),
        .out_feedback_stall_out_88(i_llvm_fpga_pop_f32_arrayidx131_5_promoted_e89_pop88_conv2d1x1102_out_feedback_stall_out_88),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist78_i_llvm_fpga_pop_f32_arrayidx131_5_promoted_e89_pop88_conv2d1x1102_out_data_out_2(DELAY,421)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist78_i_llvm_fpga_pop_f32_arrayidx131_5_promoted_e89_pop88_conv2d1x1102_out_data_out_2_delay_0 <= '0;
            redist78_i_llvm_fpga_pop_f32_arrayidx131_5_promoted_e89_pop88_conv2d1x1102_out_data_out_2_q <= '0;
        end
        else
        begin
            redist78_i_llvm_fpga_pop_f32_arrayidx131_5_promoted_e89_pop88_conv2d1x1102_out_data_out_2_delay_0 <= $unsigned(i_llvm_fpga_pop_f32_arrayidx131_5_promoted_e89_pop88_conv2d1x1102_out_data_out);
            redist78_i_llvm_fpga_pop_f32_arrayidx131_5_promoted_e89_pop88_conv2d1x1102_out_data_out_2_q <= redist78_i_llvm_fpga_pop_f32_arrayidx131_5_promoted_e89_pop88_conv2d1x1102_out_data_out_2_delay_0;
        end
    end

    // i_llvm_fpga_fanout_i1_not_269_fanout_adaptor600_conv2d1x137(REG,108)@152 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_llvm_fpga_fanout_i1_not_269_fanout_adaptor600_conv2d1x137_q <= $unsigned(1'b0);
        end
        else
        begin
            i_llvm_fpga_fanout_i1_not_269_fanout_adaptor600_conv2d1x137_q <= redist57_i_not_269_conv2d1x136_q_3_q;
        end
    end

    // i_select66_conv2d1x1104(MUX,229)@153
    assign i_select66_conv2d1x1104_s = i_llvm_fpga_fanout_i1_not_269_fanout_adaptor600_conv2d1x137_q;
    always @(i_select66_conv2d1x1104_s or i_llvm_fpga_pop_f32_pop40_conv2d1x123_out_data_out or redist78_i_llvm_fpga_pop_f32_arrayidx131_5_promoted_e89_pop88_conv2d1x1102_out_data_out_2_q)
    begin
        unique case (i_select66_conv2d1x1104_s)
            1'b0 : i_select66_conv2d1x1104_q = i_llvm_fpga_pop_f32_pop40_conv2d1x123_out_data_out;
            1'b1 : i_select66_conv2d1x1104_q = redist78_i_llvm_fpga_pop_f32_arrayidx131_5_promoted_e89_pop88_conv2d1x1102_out_data_out_2_q;
            default : i_select66_conv2d1x1104_q = 32'b0;
        endcase
    end

    // valid_fanout_reg68(REG,313)@150 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg68_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg68_q <= $unsigned(redist55_sync_together342_aunroll_vunroll_x_in_i_valid_2_q);
        end
    end

    // valid_fanout_reg69(REG,314)@152 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg69_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg69_q <= $unsigned(redist56_sync_together342_aunroll_vunroll_x_in_i_valid_4_q);
        end
    end

    // i_llvm_fpga_push_f32_arrayidx131_6_promoted_e90_push89_conv2d1x1100(BLACKBOX,176)@153
    // out out_feedback_out_89@20000000
    // out out_feedback_valid_out_89@20000000
    conv2d1x1_i_llvm_fpga_push_f32_arrayidx10000romoted_e90_push89_0 thei_llvm_fpga_push_f32_arrayidx131_6_promoted_e90_push89_conv2d1x1100 (
        .in_c1_ene18582_fanout_adaptor(i_llvm_fpga_fanout_i1_c1_ene18582_fanout_adaptor_conv2d1x19_q),
        .in_data_in(redist77_i_llvm_fpga_pop_f32_arrayidx131_6_promoted_e90_pop89_conv2d1x199_out_data_out_2_q),
        .in_feedback_stall_in_89(i_llvm_fpga_pop_f32_arrayidx131_6_promoted_e90_pop89_conv2d1x199_out_feedback_stall_out_89),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg69_q),
        .out_data_out(),
        .out_feedback_out_89(i_llvm_fpga_push_f32_arrayidx131_6_promoted_e90_push89_conv2d1x1100_out_feedback_out_89),
        .out_feedback_valid_out_89(i_llvm_fpga_push_f32_arrayidx131_6_promoted_e90_push89_conv2d1x1100_out_feedback_valid_out_89),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist8_sync_together342_aunroll_vunroll_x_in_c1_eni37_8_tpl_3_notEnable(LOGICAL,479)
    assign redist8_sync_together342_aunroll_vunroll_x_in_c1_eni37_8_tpl_3_notEnable_q = $unsigned(~ (VCC_q));

    // redist8_sync_together342_aunroll_vunroll_x_in_c1_eni37_8_tpl_3_nor(LOGICAL,480)
    assign redist8_sync_together342_aunroll_vunroll_x_in_c1_eni37_8_tpl_3_nor_q = ~ (redist8_sync_together342_aunroll_vunroll_x_in_c1_eni37_8_tpl_3_notEnable_q | redist8_sync_together342_aunroll_vunroll_x_in_c1_eni37_8_tpl_3_sticky_ena_q);

    // redist8_sync_together342_aunroll_vunroll_x_in_c1_eni37_8_tpl_3_cmpReg(REG,478)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_sync_together342_aunroll_vunroll_x_in_c1_eni37_8_tpl_3_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist8_sync_together342_aunroll_vunroll_x_in_c1_eni37_8_tpl_3_cmpReg_q <= $unsigned(VCC_q);
        end
    end

    // redist8_sync_together342_aunroll_vunroll_x_in_c1_eni37_8_tpl_3_sticky_ena(REG,481)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_sync_together342_aunroll_vunroll_x_in_c1_eni37_8_tpl_3_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist8_sync_together342_aunroll_vunroll_x_in_c1_eni37_8_tpl_3_nor_q == 1'b1)
        begin
            redist8_sync_together342_aunroll_vunroll_x_in_c1_eni37_8_tpl_3_sticky_ena_q <= $unsigned(redist8_sync_together342_aunroll_vunroll_x_in_c1_eni37_8_tpl_3_cmpReg_q);
        end
    end

    // redist8_sync_together342_aunroll_vunroll_x_in_c1_eni37_8_tpl_3_enaAnd(LOGICAL,482)
    assign redist8_sync_together342_aunroll_vunroll_x_in_c1_eni37_8_tpl_3_enaAnd_q = redist8_sync_together342_aunroll_vunroll_x_in_c1_eni37_8_tpl_3_sticky_ena_q & VCC_q;

    // redist8_sync_together342_aunroll_vunroll_x_in_c1_eni37_8_tpl_3_rdcnt(COUNTER,476)
    // low=0, high=1, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_sync_together342_aunroll_vunroll_x_in_c1_eni37_8_tpl_3_rdcnt_i <= 1'd0;
        end
        else
        begin
            redist8_sync_together342_aunroll_vunroll_x_in_c1_eni37_8_tpl_3_rdcnt_i <= $unsigned(redist8_sync_together342_aunroll_vunroll_x_in_c1_eni37_8_tpl_3_rdcnt_i) + $unsigned(1'd1);
        end
    end
    assign redist8_sync_together342_aunroll_vunroll_x_in_c1_eni37_8_tpl_3_rdcnt_q = redist8_sync_together342_aunroll_vunroll_x_in_c1_eni37_8_tpl_3_rdcnt_i[0:0];

    // redist8_sync_together342_aunroll_vunroll_x_in_c1_eni37_8_tpl_3_wraddr(REG,477)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_sync_together342_aunroll_vunroll_x_in_c1_eni37_8_tpl_3_wraddr_q <= $unsigned(1'b1);
        end
        else
        begin
            redist8_sync_together342_aunroll_vunroll_x_in_c1_eni37_8_tpl_3_wraddr_q <= $unsigned(redist8_sync_together342_aunroll_vunroll_x_in_c1_eni37_8_tpl_3_rdcnt_q);
        end
    end

    // redist8_sync_together342_aunroll_vunroll_x_in_c1_eni37_8_tpl_3_mem(DUALMEM,475)
    assign redist8_sync_together342_aunroll_vunroll_x_in_c1_eni37_8_tpl_3_mem_ia = $unsigned(in_c1_eni37_8_tpl);
    assign redist8_sync_together342_aunroll_vunroll_x_in_c1_eni37_8_tpl_3_mem_aa = redist8_sync_together342_aunroll_vunroll_x_in_c1_eni37_8_tpl_3_wraddr_q;
    assign redist8_sync_together342_aunroll_vunroll_x_in_c1_eni37_8_tpl_3_mem_ab = redist8_sync_together342_aunroll_vunroll_x_in_c1_eni37_8_tpl_3_rdcnt_q;
    assign redist8_sync_together342_aunroll_vunroll_x_in_c1_eni37_8_tpl_3_mem_reset0 = ~ (resetn);
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
    ) redist8_sync_together342_aunroll_vunroll_x_in_c1_eni37_8_tpl_3_mem_dmem (
        .clocken1(redist8_sync_together342_aunroll_vunroll_x_in_c1_eni37_8_tpl_3_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist8_sync_together342_aunroll_vunroll_x_in_c1_eni37_8_tpl_3_mem_reset0),
        .clock1(clock),
        .address_a(redist8_sync_together342_aunroll_vunroll_x_in_c1_eni37_8_tpl_3_mem_aa),
        .data_a(redist8_sync_together342_aunroll_vunroll_x_in_c1_eni37_8_tpl_3_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist8_sync_together342_aunroll_vunroll_x_in_c1_eni37_8_tpl_3_mem_ab),
        .q_b(redist8_sync_together342_aunroll_vunroll_x_in_c1_eni37_8_tpl_3_mem_iq),
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
    assign redist8_sync_together342_aunroll_vunroll_x_in_c1_eni37_8_tpl_3_mem_q = redist8_sync_together342_aunroll_vunroll_x_in_c1_eni37_8_tpl_3_mem_iq[31:0];

    // i_llvm_fpga_pop_f32_arrayidx131_6_promoted_e90_pop89_conv2d1x199(BLACKBOX,128)@151
    // out out_feedback_stall_out_89@20000000
    conv2d1x1_i_llvm_fpga_pop_f32_arrayidx131_6_promoted_e90_pop89_0 thei_llvm_fpga_pop_f32_arrayidx131_6_promoted_e90_pop89_conv2d1x199 (
        .in_data_in(redist8_sync_together342_aunroll_vunroll_x_in_c1_eni37_8_tpl_3_mem_q),
        .in_dir(i_llvm_fpga_fanout_i1_c1_ene2566_fanout_adaptor595_conv2d1x13_q),
        .in_feedback_in_89(i_llvm_fpga_push_f32_arrayidx131_6_promoted_e90_push89_conv2d1x1100_out_feedback_out_89),
        .in_feedback_valid_in_89(i_llvm_fpga_push_f32_arrayidx131_6_promoted_e90_push89_conv2d1x1100_out_feedback_valid_out_89),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg68_q),
        .out_data_out(i_llvm_fpga_pop_f32_arrayidx131_6_promoted_e90_pop89_conv2d1x199_out_data_out),
        .out_feedback_stall_out_89(i_llvm_fpga_pop_f32_arrayidx131_6_promoted_e90_pop89_conv2d1x199_out_feedback_stall_out_89),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist77_i_llvm_fpga_pop_f32_arrayidx131_6_promoted_e90_pop89_conv2d1x199_out_data_out_2(DELAY,420)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist77_i_llvm_fpga_pop_f32_arrayidx131_6_promoted_e90_pop89_conv2d1x199_out_data_out_2_delay_0 <= '0;
            redist77_i_llvm_fpga_pop_f32_arrayidx131_6_promoted_e90_pop89_conv2d1x199_out_data_out_2_q <= '0;
        end
        else
        begin
            redist77_i_llvm_fpga_pop_f32_arrayidx131_6_promoted_e90_pop89_conv2d1x199_out_data_out_2_delay_0 <= $unsigned(i_llvm_fpga_pop_f32_arrayidx131_6_promoted_e90_pop89_conv2d1x199_out_data_out);
            redist77_i_llvm_fpga_pop_f32_arrayidx131_6_promoted_e90_pop89_conv2d1x199_out_data_out_2_q <= redist77_i_llvm_fpga_pop_f32_arrayidx131_6_promoted_e90_pop89_conv2d1x199_out_data_out_2_delay_0;
        end
    end

    // i_select63_conv2d1x1101(MUX,228)@153
    assign i_select63_conv2d1x1101_s = i_llvm_fpga_fanout_i1_not_269_fanout_adaptor600_conv2d1x137_q;
    always @(i_select63_conv2d1x1101_s or i_llvm_fpga_pop_f32_pop39_conv2d1x124_out_data_out or redist77_i_llvm_fpga_pop_f32_arrayidx131_6_promoted_e90_pop89_conv2d1x199_out_data_out_2_q)
    begin
        unique case (i_select63_conv2d1x1101_s)
            1'b0 : i_select63_conv2d1x1101_q = i_llvm_fpga_pop_f32_pop39_conv2d1x124_out_data_out;
            1'b1 : i_select63_conv2d1x1101_q = redist77_i_llvm_fpga_pop_f32_arrayidx131_6_promoted_e90_pop89_conv2d1x199_out_data_out_2_q;
            default : i_select63_conv2d1x1101_q = 32'b0;
        endcase
    end

    // valid_fanout_reg66(REG,311)@152 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg66_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg66_q <= $unsigned(redist56_sync_together342_aunroll_vunroll_x_in_i_valid_4_q);
        end
    end

    // valid_fanout_reg67(REG,312)@152 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg67_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg67_q <= $unsigned(redist56_sync_together342_aunroll_vunroll_x_in_i_valid_4_q);
        end
    end

    // i_llvm_fpga_push_f32_arrayidx131_7_promoted_e91_push90_conv2d1x197(BLACKBOX,177)@153
    // out out_feedback_out_90@20000000
    // out out_feedback_valid_out_90@20000000
    conv2d1x1_i_llvm_fpga_push_f32_arrayidx10000romoted_e91_push90_0 thei_llvm_fpga_push_f32_arrayidx131_7_promoted_e91_push90_conv2d1x197 (
        .in_c1_ene18582_fanout_adaptor(i_llvm_fpga_fanout_i1_c1_ene18582_fanout_adaptor_conv2d1x19_q),
        .in_data_in(i_llvm_fpga_pop_f32_arrayidx131_7_promoted_e91_pop90_conv2d1x196_out_data_out),
        .in_feedback_stall_in_90(i_llvm_fpga_pop_f32_arrayidx131_7_promoted_e91_pop90_conv2d1x196_out_feedback_stall_out_90),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg67_q),
        .out_data_out(),
        .out_feedback_out_90(i_llvm_fpga_push_f32_arrayidx131_7_promoted_e91_push90_conv2d1x197_out_feedback_out_90),
        .out_feedback_valid_out_90(i_llvm_fpga_push_f32_arrayidx131_7_promoted_e91_push90_conv2d1x197_out_feedback_valid_out_90),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist2_sync_together342_aunroll_vunroll_x_in_c1_eni37_2_tpl_4(DELAY,345)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_sync_together342_aunroll_vunroll_x_in_c1_eni37_2_tpl_4_delay_0 <= '0;
            redist2_sync_together342_aunroll_vunroll_x_in_c1_eni37_2_tpl_4_q <= '0;
        end
        else
        begin
            redist2_sync_together342_aunroll_vunroll_x_in_c1_eni37_2_tpl_4_delay_0 <= $unsigned(redist1_sync_together342_aunroll_vunroll_x_in_c1_eni37_2_tpl_2_q);
            redist2_sync_together342_aunroll_vunroll_x_in_c1_eni37_2_tpl_4_q <= redist2_sync_together342_aunroll_vunroll_x_in_c1_eni37_2_tpl_4_delay_0;
        end
    end

    // i_llvm_fpga_fanout_i1_c1_ene2566_fanout_adaptor596_conv2d1x12(REG,106)@152 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_llvm_fpga_fanout_i1_c1_ene2566_fanout_adaptor596_conv2d1x12_q <= $unsigned(1'b0);
        end
        else
        begin
            i_llvm_fpga_fanout_i1_c1_ene2566_fanout_adaptor596_conv2d1x12_q <= redist2_sync_together342_aunroll_vunroll_x_in_c1_eni37_2_tpl_4_q;
        end
    end

    // redist9_sync_together342_aunroll_vunroll_x_in_c1_eni37_9_tpl_3_notEnable(LOGICAL,487)
    assign redist9_sync_together342_aunroll_vunroll_x_in_c1_eni37_9_tpl_3_notEnable_q = $unsigned(~ (VCC_q));

    // redist9_sync_together342_aunroll_vunroll_x_in_c1_eni37_9_tpl_3_nor(LOGICAL,488)
    assign redist9_sync_together342_aunroll_vunroll_x_in_c1_eni37_9_tpl_3_nor_q = ~ (redist9_sync_together342_aunroll_vunroll_x_in_c1_eni37_9_tpl_3_notEnable_q | redist9_sync_together342_aunroll_vunroll_x_in_c1_eni37_9_tpl_3_sticky_ena_q);

    // redist9_sync_together342_aunroll_vunroll_x_in_c1_eni37_9_tpl_3_cmpReg(REG,486)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_sync_together342_aunroll_vunroll_x_in_c1_eni37_9_tpl_3_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist9_sync_together342_aunroll_vunroll_x_in_c1_eni37_9_tpl_3_cmpReg_q <= $unsigned(VCC_q);
        end
    end

    // redist9_sync_together342_aunroll_vunroll_x_in_c1_eni37_9_tpl_3_sticky_ena(REG,489)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_sync_together342_aunroll_vunroll_x_in_c1_eni37_9_tpl_3_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist9_sync_together342_aunroll_vunroll_x_in_c1_eni37_9_tpl_3_nor_q == 1'b1)
        begin
            redist9_sync_together342_aunroll_vunroll_x_in_c1_eni37_9_tpl_3_sticky_ena_q <= $unsigned(redist9_sync_together342_aunroll_vunroll_x_in_c1_eni37_9_tpl_3_cmpReg_q);
        end
    end

    // redist9_sync_together342_aunroll_vunroll_x_in_c1_eni37_9_tpl_3_enaAnd(LOGICAL,490)
    assign redist9_sync_together342_aunroll_vunroll_x_in_c1_eni37_9_tpl_3_enaAnd_q = redist9_sync_together342_aunroll_vunroll_x_in_c1_eni37_9_tpl_3_sticky_ena_q & VCC_q;

    // redist9_sync_together342_aunroll_vunroll_x_in_c1_eni37_9_tpl_3_rdcnt(COUNTER,484)
    // low=0, high=1, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_sync_together342_aunroll_vunroll_x_in_c1_eni37_9_tpl_3_rdcnt_i <= 1'd0;
        end
        else
        begin
            redist9_sync_together342_aunroll_vunroll_x_in_c1_eni37_9_tpl_3_rdcnt_i <= $unsigned(redist9_sync_together342_aunroll_vunroll_x_in_c1_eni37_9_tpl_3_rdcnt_i) + $unsigned(1'd1);
        end
    end
    assign redist9_sync_together342_aunroll_vunroll_x_in_c1_eni37_9_tpl_3_rdcnt_q = redist9_sync_together342_aunroll_vunroll_x_in_c1_eni37_9_tpl_3_rdcnt_i[0:0];

    // redist9_sync_together342_aunroll_vunroll_x_in_c1_eni37_9_tpl_3_wraddr(REG,485)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_sync_together342_aunroll_vunroll_x_in_c1_eni37_9_tpl_3_wraddr_q <= $unsigned(1'b1);
        end
        else
        begin
            redist9_sync_together342_aunroll_vunroll_x_in_c1_eni37_9_tpl_3_wraddr_q <= $unsigned(redist9_sync_together342_aunroll_vunroll_x_in_c1_eni37_9_tpl_3_rdcnt_q);
        end
    end

    // redist9_sync_together342_aunroll_vunroll_x_in_c1_eni37_9_tpl_3_mem(DUALMEM,483)
    assign redist9_sync_together342_aunroll_vunroll_x_in_c1_eni37_9_tpl_3_mem_ia = $unsigned(in_c1_eni37_9_tpl);
    assign redist9_sync_together342_aunroll_vunroll_x_in_c1_eni37_9_tpl_3_mem_aa = redist9_sync_together342_aunroll_vunroll_x_in_c1_eni37_9_tpl_3_wraddr_q;
    assign redist9_sync_together342_aunroll_vunroll_x_in_c1_eni37_9_tpl_3_mem_ab = redist9_sync_together342_aunroll_vunroll_x_in_c1_eni37_9_tpl_3_rdcnt_q;
    assign redist9_sync_together342_aunroll_vunroll_x_in_c1_eni37_9_tpl_3_mem_reset0 = ~ (resetn);
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
    ) redist9_sync_together342_aunroll_vunroll_x_in_c1_eni37_9_tpl_3_mem_dmem (
        .clocken1(redist9_sync_together342_aunroll_vunroll_x_in_c1_eni37_9_tpl_3_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist9_sync_together342_aunroll_vunroll_x_in_c1_eni37_9_tpl_3_mem_reset0),
        .clock1(clock),
        .address_a(redist9_sync_together342_aunroll_vunroll_x_in_c1_eni37_9_tpl_3_mem_aa),
        .data_a(redist9_sync_together342_aunroll_vunroll_x_in_c1_eni37_9_tpl_3_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist9_sync_together342_aunroll_vunroll_x_in_c1_eni37_9_tpl_3_mem_ab),
        .q_b(redist9_sync_together342_aunroll_vunroll_x_in_c1_eni37_9_tpl_3_mem_iq),
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
    assign redist9_sync_together342_aunroll_vunroll_x_in_c1_eni37_9_tpl_3_mem_q = redist9_sync_together342_aunroll_vunroll_x_in_c1_eni37_9_tpl_3_mem_iq[31:0];

    // redist10_sync_together342_aunroll_vunroll_x_in_c1_eni37_9_tpl_5(DELAY,353)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_sync_together342_aunroll_vunroll_x_in_c1_eni37_9_tpl_5_delay_0 <= '0;
            redist10_sync_together342_aunroll_vunroll_x_in_c1_eni37_9_tpl_5_q <= '0;
        end
        else
        begin
            redist10_sync_together342_aunroll_vunroll_x_in_c1_eni37_9_tpl_5_delay_0 <= $unsigned(redist9_sync_together342_aunroll_vunroll_x_in_c1_eni37_9_tpl_3_mem_q);
            redist10_sync_together342_aunroll_vunroll_x_in_c1_eni37_9_tpl_5_q <= redist10_sync_together342_aunroll_vunroll_x_in_c1_eni37_9_tpl_5_delay_0;
        end
    end

    // i_llvm_fpga_pop_f32_arrayidx131_7_promoted_e91_pop90_conv2d1x196(BLACKBOX,129)@153
    // out out_feedback_stall_out_90@20000000
    conv2d1x1_i_llvm_fpga_pop_f32_arrayidx131_7_promoted_e91_pop90_0 thei_llvm_fpga_pop_f32_arrayidx131_7_promoted_e91_pop90_conv2d1x196 (
        .in_data_in(redist10_sync_together342_aunroll_vunroll_x_in_c1_eni37_9_tpl_5_q),
        .in_dir(i_llvm_fpga_fanout_i1_c1_ene2566_fanout_adaptor596_conv2d1x12_q),
        .in_feedback_in_90(i_llvm_fpga_push_f32_arrayidx131_7_promoted_e91_push90_conv2d1x197_out_feedback_out_90),
        .in_feedback_valid_in_90(i_llvm_fpga_push_f32_arrayidx131_7_promoted_e91_push90_conv2d1x197_out_feedback_valid_out_90),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg66_q),
        .out_data_out(i_llvm_fpga_pop_f32_arrayidx131_7_promoted_e91_pop90_conv2d1x196_out_data_out),
        .out_feedback_stall_out_90(i_llvm_fpga_pop_f32_arrayidx131_7_promoted_e91_pop90_conv2d1x196_out_feedback_stall_out_90),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_select60_conv2d1x198(MUX,227)@153
    assign i_select60_conv2d1x198_s = i_llvm_fpga_fanout_i1_not_269_fanout_adaptor600_conv2d1x137_q;
    always @(i_select60_conv2d1x198_s or i_llvm_fpga_pop_f32_pop38_conv2d1x125_out_data_out or i_llvm_fpga_pop_f32_arrayidx131_7_promoted_e91_pop90_conv2d1x196_out_data_out)
    begin
        unique case (i_select60_conv2d1x198_s)
            1'b0 : i_select60_conv2d1x198_q = i_llvm_fpga_pop_f32_pop38_conv2d1x125_out_data_out;
            1'b1 : i_select60_conv2d1x198_q = i_llvm_fpga_pop_f32_arrayidx131_7_promoted_e91_pop90_conv2d1x196_out_data_out;
            default : i_select60_conv2d1x198_q = 32'b0;
        endcase
    end

    // valid_fanout_reg64(REG,309)@152 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg64_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg64_q <= $unsigned(redist56_sync_together342_aunroll_vunroll_x_in_i_valid_4_q);
        end
    end

    // valid_fanout_reg65(REG,310)@152 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg65_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg65_q <= $unsigned(redist56_sync_together342_aunroll_vunroll_x_in_i_valid_4_q);
        end
    end

    // i_llvm_fpga_push_f32_arrayidx131_8_promoted_e92_push91_conv2d1x194(BLACKBOX,178)@153
    // out out_feedback_out_91@20000000
    // out out_feedback_valid_out_91@20000000
    conv2d1x1_i_llvm_fpga_push_f32_arrayidx10000romoted_e92_push91_0 thei_llvm_fpga_push_f32_arrayidx131_8_promoted_e92_push91_conv2d1x194 (
        .in_c1_ene18582_fanout_adaptor(i_llvm_fpga_fanout_i1_c1_ene18582_fanout_adaptor_conv2d1x19_q),
        .in_data_in(i_llvm_fpga_pop_f32_arrayidx131_8_promoted_e92_pop91_conv2d1x193_out_data_out),
        .in_feedback_stall_in_91(i_llvm_fpga_pop_f32_arrayidx131_8_promoted_e92_pop91_conv2d1x193_out_feedback_stall_out_91),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg65_q),
        .out_data_out(),
        .out_feedback_out_91(i_llvm_fpga_push_f32_arrayidx131_8_promoted_e92_push91_conv2d1x194_out_feedback_out_91),
        .out_feedback_valid_out_91(i_llvm_fpga_push_f32_arrayidx131_8_promoted_e92_push91_conv2d1x194_out_feedback_valid_out_91),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist11_sync_together342_aunroll_vunroll_x_in_c1_eni37_10_tpl_5_notEnable(LOGICAL,498)
    assign redist11_sync_together342_aunroll_vunroll_x_in_c1_eni37_10_tpl_5_notEnable_q = $unsigned(~ (VCC_q));

    // redist11_sync_together342_aunroll_vunroll_x_in_c1_eni37_10_tpl_5_nor(LOGICAL,499)
    assign redist11_sync_together342_aunroll_vunroll_x_in_c1_eni37_10_tpl_5_nor_q = ~ (redist11_sync_together342_aunroll_vunroll_x_in_c1_eni37_10_tpl_5_notEnable_q | redist11_sync_together342_aunroll_vunroll_x_in_c1_eni37_10_tpl_5_sticky_ena_q);

    // redist11_sync_together342_aunroll_vunroll_x_in_c1_eni37_10_tpl_5_mem_last(CONSTANT,495)
    assign redist11_sync_together342_aunroll_vunroll_x_in_c1_eni37_10_tpl_5_mem_last_q = $unsigned(2'b01);

    // redist11_sync_together342_aunroll_vunroll_x_in_c1_eni37_10_tpl_5_cmp(LOGICAL,496)
    assign redist11_sync_together342_aunroll_vunroll_x_in_c1_eni37_10_tpl_5_cmp_q = $unsigned(redist11_sync_together342_aunroll_vunroll_x_in_c1_eni37_10_tpl_5_mem_last_q == redist11_sync_together342_aunroll_vunroll_x_in_c1_eni37_10_tpl_5_rdcnt_q ? 1'b1 : 1'b0);

    // redist11_sync_together342_aunroll_vunroll_x_in_c1_eni37_10_tpl_5_cmpReg(REG,497)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_sync_together342_aunroll_vunroll_x_in_c1_eni37_10_tpl_5_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist11_sync_together342_aunroll_vunroll_x_in_c1_eni37_10_tpl_5_cmpReg_q <= $unsigned(redist11_sync_together342_aunroll_vunroll_x_in_c1_eni37_10_tpl_5_cmp_q);
        end
    end

    // redist11_sync_together342_aunroll_vunroll_x_in_c1_eni37_10_tpl_5_sticky_ena(REG,500)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_sync_together342_aunroll_vunroll_x_in_c1_eni37_10_tpl_5_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist11_sync_together342_aunroll_vunroll_x_in_c1_eni37_10_tpl_5_nor_q == 1'b1)
        begin
            redist11_sync_together342_aunroll_vunroll_x_in_c1_eni37_10_tpl_5_sticky_ena_q <= $unsigned(redist11_sync_together342_aunroll_vunroll_x_in_c1_eni37_10_tpl_5_cmpReg_q);
        end
    end

    // redist11_sync_together342_aunroll_vunroll_x_in_c1_eni37_10_tpl_5_enaAnd(LOGICAL,501)
    assign redist11_sync_together342_aunroll_vunroll_x_in_c1_eni37_10_tpl_5_enaAnd_q = redist11_sync_together342_aunroll_vunroll_x_in_c1_eni37_10_tpl_5_sticky_ena_q & VCC_q;

    // redist11_sync_together342_aunroll_vunroll_x_in_c1_eni37_10_tpl_5_rdcnt(COUNTER,493)
    // low=0, high=2, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_sync_together342_aunroll_vunroll_x_in_c1_eni37_10_tpl_5_rdcnt_i <= 2'd0;
            redist11_sync_together342_aunroll_vunroll_x_in_c1_eni37_10_tpl_5_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist11_sync_together342_aunroll_vunroll_x_in_c1_eni37_10_tpl_5_rdcnt_i == 2'd1)
            begin
                redist11_sync_together342_aunroll_vunroll_x_in_c1_eni37_10_tpl_5_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist11_sync_together342_aunroll_vunroll_x_in_c1_eni37_10_tpl_5_rdcnt_eq <= 1'b0;
            end
            if (redist11_sync_together342_aunroll_vunroll_x_in_c1_eni37_10_tpl_5_rdcnt_eq == 1'b1)
            begin
                redist11_sync_together342_aunroll_vunroll_x_in_c1_eni37_10_tpl_5_rdcnt_i <= $unsigned(redist11_sync_together342_aunroll_vunroll_x_in_c1_eni37_10_tpl_5_rdcnt_i) + $unsigned(2'd2);
            end
            else
            begin
                redist11_sync_together342_aunroll_vunroll_x_in_c1_eni37_10_tpl_5_rdcnt_i <= $unsigned(redist11_sync_together342_aunroll_vunroll_x_in_c1_eni37_10_tpl_5_rdcnt_i) + $unsigned(2'd1);
            end
        end
    end
    assign redist11_sync_together342_aunroll_vunroll_x_in_c1_eni37_10_tpl_5_rdcnt_q = redist11_sync_together342_aunroll_vunroll_x_in_c1_eni37_10_tpl_5_rdcnt_i[1:0];

    // redist11_sync_together342_aunroll_vunroll_x_in_c1_eni37_10_tpl_5_wraddr(REG,494)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_sync_together342_aunroll_vunroll_x_in_c1_eni37_10_tpl_5_wraddr_q <= $unsigned(2'b10);
        end
        else
        begin
            redist11_sync_together342_aunroll_vunroll_x_in_c1_eni37_10_tpl_5_wraddr_q <= $unsigned(redist11_sync_together342_aunroll_vunroll_x_in_c1_eni37_10_tpl_5_rdcnt_q);
        end
    end

    // redist11_sync_together342_aunroll_vunroll_x_in_c1_eni37_10_tpl_5_mem(DUALMEM,492)
    assign redist11_sync_together342_aunroll_vunroll_x_in_c1_eni37_10_tpl_5_mem_ia = $unsigned(in_c1_eni37_10_tpl);
    assign redist11_sync_together342_aunroll_vunroll_x_in_c1_eni37_10_tpl_5_mem_aa = redist11_sync_together342_aunroll_vunroll_x_in_c1_eni37_10_tpl_5_wraddr_q;
    assign redist11_sync_together342_aunroll_vunroll_x_in_c1_eni37_10_tpl_5_mem_ab = redist11_sync_together342_aunroll_vunroll_x_in_c1_eni37_10_tpl_5_rdcnt_q;
    assign redist11_sync_together342_aunroll_vunroll_x_in_c1_eni37_10_tpl_5_mem_reset0 = ~ (resetn);
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
    ) redist11_sync_together342_aunroll_vunroll_x_in_c1_eni37_10_tpl_5_mem_dmem (
        .clocken1(redist11_sync_together342_aunroll_vunroll_x_in_c1_eni37_10_tpl_5_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist11_sync_together342_aunroll_vunroll_x_in_c1_eni37_10_tpl_5_mem_reset0),
        .clock1(clock),
        .address_a(redist11_sync_together342_aunroll_vunroll_x_in_c1_eni37_10_tpl_5_mem_aa),
        .data_a(redist11_sync_together342_aunroll_vunroll_x_in_c1_eni37_10_tpl_5_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist11_sync_together342_aunroll_vunroll_x_in_c1_eni37_10_tpl_5_mem_ab),
        .q_b(redist11_sync_together342_aunroll_vunroll_x_in_c1_eni37_10_tpl_5_mem_iq),
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
    assign redist11_sync_together342_aunroll_vunroll_x_in_c1_eni37_10_tpl_5_mem_q = redist11_sync_together342_aunroll_vunroll_x_in_c1_eni37_10_tpl_5_mem_iq[31:0];

    // redist11_sync_together342_aunroll_vunroll_x_in_c1_eni37_10_tpl_5_outputreg0(DELAY,491)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_sync_together342_aunroll_vunroll_x_in_c1_eni37_10_tpl_5_outputreg0_q <= '0;
        end
        else
        begin
            redist11_sync_together342_aunroll_vunroll_x_in_c1_eni37_10_tpl_5_outputreg0_q <= $unsigned(redist11_sync_together342_aunroll_vunroll_x_in_c1_eni37_10_tpl_5_mem_q);
        end
    end

    // i_llvm_fpga_pop_f32_arrayidx131_8_promoted_e92_pop91_conv2d1x193(BLACKBOX,130)@153
    // out out_feedback_stall_out_91@20000000
    conv2d1x1_i_llvm_fpga_pop_f32_arrayidx131_8_promoted_e92_pop91_0 thei_llvm_fpga_pop_f32_arrayidx131_8_promoted_e92_pop91_conv2d1x193 (
        .in_data_in(redist11_sync_together342_aunroll_vunroll_x_in_c1_eni37_10_tpl_5_outputreg0_q),
        .in_dir(i_llvm_fpga_fanout_i1_c1_ene2566_fanout_adaptor596_conv2d1x12_q),
        .in_feedback_in_91(i_llvm_fpga_push_f32_arrayidx131_8_promoted_e92_push91_conv2d1x194_out_feedback_out_91),
        .in_feedback_valid_in_91(i_llvm_fpga_push_f32_arrayidx131_8_promoted_e92_push91_conv2d1x194_out_feedback_valid_out_91),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg64_q),
        .out_data_out(i_llvm_fpga_pop_f32_arrayidx131_8_promoted_e92_pop91_conv2d1x193_out_data_out),
        .out_feedback_stall_out_91(i_llvm_fpga_pop_f32_arrayidx131_8_promoted_e92_pop91_conv2d1x193_out_feedback_stall_out_91),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_select57_conv2d1x195(MUX,226)@153
    assign i_select57_conv2d1x195_s = i_llvm_fpga_fanout_i1_not_269_fanout_adaptor600_conv2d1x137_q;
    always @(i_select57_conv2d1x195_s or i_llvm_fpga_fp_multadd_mult_add107_conv2d1x170_out_primWireOut or i_llvm_fpga_pop_f32_arrayidx131_8_promoted_e92_pop91_conv2d1x193_out_data_out)
    begin
        unique case (i_select57_conv2d1x195_s)
            1'b0 : i_select57_conv2d1x195_q = i_llvm_fpga_fp_multadd_mult_add107_conv2d1x170_out_primWireOut;
            1'b1 : i_select57_conv2d1x195_q = i_llvm_fpga_pop_f32_arrayidx131_8_promoted_e92_pop91_conv2d1x193_out_data_out;
            default : i_select57_conv2d1x195_q = 32'b0;
        endcase
    end

    // valid_fanout_reg62(REG,307)@152 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg62_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg62_q <= $unsigned(redist56_sync_together342_aunroll_vunroll_x_in_i_valid_4_q);
        end
    end

    // valid_fanout_reg63(REG,308)@152 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg63_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg63_q <= $unsigned(redist56_sync_together342_aunroll_vunroll_x_in_i_valid_4_q);
        end
    end

    // i_llvm_fpga_push_f32_arrayidx131_9_promoted_e93_push92_conv2d1x191(BLACKBOX,179)@153
    // out out_feedback_out_92@20000000
    // out out_feedback_valid_out_92@20000000
    conv2d1x1_i_llvm_fpga_push_f32_arrayidx10000romoted_e93_push92_0 thei_llvm_fpga_push_f32_arrayidx131_9_promoted_e93_push92_conv2d1x191 (
        .in_c1_ene18582_fanout_adaptor(i_llvm_fpga_fanout_i1_c1_ene18582_fanout_adaptor_conv2d1x19_q),
        .in_data_in(i_llvm_fpga_pop_f32_arrayidx131_9_promoted_e93_pop92_conv2d1x190_out_data_out),
        .in_feedback_stall_in_92(i_llvm_fpga_pop_f32_arrayidx131_9_promoted_e93_pop92_conv2d1x190_out_feedback_stall_out_92),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg63_q),
        .out_data_out(),
        .out_feedback_out_92(i_llvm_fpga_push_f32_arrayidx131_9_promoted_e93_push92_conv2d1x191_out_feedback_out_92),
        .out_feedback_valid_out_92(i_llvm_fpga_push_f32_arrayidx131_9_promoted_e93_push92_conv2d1x191_out_feedback_valid_out_92),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist12_sync_together342_aunroll_vunroll_x_in_c1_eni37_11_tpl_5_notEnable(LOGICAL,509)
    assign redist12_sync_together342_aunroll_vunroll_x_in_c1_eni37_11_tpl_5_notEnable_q = $unsigned(~ (VCC_q));

    // redist12_sync_together342_aunroll_vunroll_x_in_c1_eni37_11_tpl_5_nor(LOGICAL,510)
    assign redist12_sync_together342_aunroll_vunroll_x_in_c1_eni37_11_tpl_5_nor_q = ~ (redist12_sync_together342_aunroll_vunroll_x_in_c1_eni37_11_tpl_5_notEnable_q | redist12_sync_together342_aunroll_vunroll_x_in_c1_eni37_11_tpl_5_sticky_ena_q);

    // redist12_sync_together342_aunroll_vunroll_x_in_c1_eni37_11_tpl_5_mem_last(CONSTANT,506)
    assign redist12_sync_together342_aunroll_vunroll_x_in_c1_eni37_11_tpl_5_mem_last_q = $unsigned(2'b01);

    // redist12_sync_together342_aunroll_vunroll_x_in_c1_eni37_11_tpl_5_cmp(LOGICAL,507)
    assign redist12_sync_together342_aunroll_vunroll_x_in_c1_eni37_11_tpl_5_cmp_q = $unsigned(redist12_sync_together342_aunroll_vunroll_x_in_c1_eni37_11_tpl_5_mem_last_q == redist12_sync_together342_aunroll_vunroll_x_in_c1_eni37_11_tpl_5_rdcnt_q ? 1'b1 : 1'b0);

    // redist12_sync_together342_aunroll_vunroll_x_in_c1_eni37_11_tpl_5_cmpReg(REG,508)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_sync_together342_aunroll_vunroll_x_in_c1_eni37_11_tpl_5_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist12_sync_together342_aunroll_vunroll_x_in_c1_eni37_11_tpl_5_cmpReg_q <= $unsigned(redist12_sync_together342_aunroll_vunroll_x_in_c1_eni37_11_tpl_5_cmp_q);
        end
    end

    // redist12_sync_together342_aunroll_vunroll_x_in_c1_eni37_11_tpl_5_sticky_ena(REG,511)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_sync_together342_aunroll_vunroll_x_in_c1_eni37_11_tpl_5_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist12_sync_together342_aunroll_vunroll_x_in_c1_eni37_11_tpl_5_nor_q == 1'b1)
        begin
            redist12_sync_together342_aunroll_vunroll_x_in_c1_eni37_11_tpl_5_sticky_ena_q <= $unsigned(redist12_sync_together342_aunroll_vunroll_x_in_c1_eni37_11_tpl_5_cmpReg_q);
        end
    end

    // redist12_sync_together342_aunroll_vunroll_x_in_c1_eni37_11_tpl_5_enaAnd(LOGICAL,512)
    assign redist12_sync_together342_aunroll_vunroll_x_in_c1_eni37_11_tpl_5_enaAnd_q = redist12_sync_together342_aunroll_vunroll_x_in_c1_eni37_11_tpl_5_sticky_ena_q & VCC_q;

    // redist12_sync_together342_aunroll_vunroll_x_in_c1_eni37_11_tpl_5_rdcnt(COUNTER,504)
    // low=0, high=2, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_sync_together342_aunroll_vunroll_x_in_c1_eni37_11_tpl_5_rdcnt_i <= 2'd0;
            redist12_sync_together342_aunroll_vunroll_x_in_c1_eni37_11_tpl_5_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist12_sync_together342_aunroll_vunroll_x_in_c1_eni37_11_tpl_5_rdcnt_i == 2'd1)
            begin
                redist12_sync_together342_aunroll_vunroll_x_in_c1_eni37_11_tpl_5_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist12_sync_together342_aunroll_vunroll_x_in_c1_eni37_11_tpl_5_rdcnt_eq <= 1'b0;
            end
            if (redist12_sync_together342_aunroll_vunroll_x_in_c1_eni37_11_tpl_5_rdcnt_eq == 1'b1)
            begin
                redist12_sync_together342_aunroll_vunroll_x_in_c1_eni37_11_tpl_5_rdcnt_i <= $unsigned(redist12_sync_together342_aunroll_vunroll_x_in_c1_eni37_11_tpl_5_rdcnt_i) + $unsigned(2'd2);
            end
            else
            begin
                redist12_sync_together342_aunroll_vunroll_x_in_c1_eni37_11_tpl_5_rdcnt_i <= $unsigned(redist12_sync_together342_aunroll_vunroll_x_in_c1_eni37_11_tpl_5_rdcnt_i) + $unsigned(2'd1);
            end
        end
    end
    assign redist12_sync_together342_aunroll_vunroll_x_in_c1_eni37_11_tpl_5_rdcnt_q = redist12_sync_together342_aunroll_vunroll_x_in_c1_eni37_11_tpl_5_rdcnt_i[1:0];

    // redist12_sync_together342_aunroll_vunroll_x_in_c1_eni37_11_tpl_5_wraddr(REG,505)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_sync_together342_aunroll_vunroll_x_in_c1_eni37_11_tpl_5_wraddr_q <= $unsigned(2'b10);
        end
        else
        begin
            redist12_sync_together342_aunroll_vunroll_x_in_c1_eni37_11_tpl_5_wraddr_q <= $unsigned(redist12_sync_together342_aunroll_vunroll_x_in_c1_eni37_11_tpl_5_rdcnt_q);
        end
    end

    // redist12_sync_together342_aunroll_vunroll_x_in_c1_eni37_11_tpl_5_mem(DUALMEM,503)
    assign redist12_sync_together342_aunroll_vunroll_x_in_c1_eni37_11_tpl_5_mem_ia = $unsigned(in_c1_eni37_11_tpl);
    assign redist12_sync_together342_aunroll_vunroll_x_in_c1_eni37_11_tpl_5_mem_aa = redist12_sync_together342_aunroll_vunroll_x_in_c1_eni37_11_tpl_5_wraddr_q;
    assign redist12_sync_together342_aunroll_vunroll_x_in_c1_eni37_11_tpl_5_mem_ab = redist12_sync_together342_aunroll_vunroll_x_in_c1_eni37_11_tpl_5_rdcnt_q;
    assign redist12_sync_together342_aunroll_vunroll_x_in_c1_eni37_11_tpl_5_mem_reset0 = ~ (resetn);
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
    ) redist12_sync_together342_aunroll_vunroll_x_in_c1_eni37_11_tpl_5_mem_dmem (
        .clocken1(redist12_sync_together342_aunroll_vunroll_x_in_c1_eni37_11_tpl_5_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist12_sync_together342_aunroll_vunroll_x_in_c1_eni37_11_tpl_5_mem_reset0),
        .clock1(clock),
        .address_a(redist12_sync_together342_aunroll_vunroll_x_in_c1_eni37_11_tpl_5_mem_aa),
        .data_a(redist12_sync_together342_aunroll_vunroll_x_in_c1_eni37_11_tpl_5_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist12_sync_together342_aunroll_vunroll_x_in_c1_eni37_11_tpl_5_mem_ab),
        .q_b(redist12_sync_together342_aunroll_vunroll_x_in_c1_eni37_11_tpl_5_mem_iq),
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
    assign redist12_sync_together342_aunroll_vunroll_x_in_c1_eni37_11_tpl_5_mem_q = redist12_sync_together342_aunroll_vunroll_x_in_c1_eni37_11_tpl_5_mem_iq[31:0];

    // redist12_sync_together342_aunroll_vunroll_x_in_c1_eni37_11_tpl_5_outputreg0(DELAY,502)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_sync_together342_aunroll_vunroll_x_in_c1_eni37_11_tpl_5_outputreg0_q <= '0;
        end
        else
        begin
            redist12_sync_together342_aunroll_vunroll_x_in_c1_eni37_11_tpl_5_outputreg0_q <= $unsigned(redist12_sync_together342_aunroll_vunroll_x_in_c1_eni37_11_tpl_5_mem_q);
        end
    end

    // i_llvm_fpga_pop_f32_arrayidx131_9_promoted_e93_pop92_conv2d1x190(BLACKBOX,131)@153
    // out out_feedback_stall_out_92@20000000
    conv2d1x1_i_llvm_fpga_pop_f32_arrayidx131_9_promoted_e93_pop92_0 thei_llvm_fpga_pop_f32_arrayidx131_9_promoted_e93_pop92_conv2d1x190 (
        .in_data_in(redist12_sync_together342_aunroll_vunroll_x_in_c1_eni37_11_tpl_5_outputreg0_q),
        .in_dir(i_llvm_fpga_fanout_i1_c1_ene2566_fanout_adaptor596_conv2d1x12_q),
        .in_feedback_in_92(i_llvm_fpga_push_f32_arrayidx131_9_promoted_e93_push92_conv2d1x191_out_feedback_out_92),
        .in_feedback_valid_in_92(i_llvm_fpga_push_f32_arrayidx131_9_promoted_e93_push92_conv2d1x191_out_feedback_valid_out_92),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg62_q),
        .out_data_out(i_llvm_fpga_pop_f32_arrayidx131_9_promoted_e93_pop92_conv2d1x190_out_data_out),
        .out_feedback_stall_out_92(i_llvm_fpga_pop_f32_arrayidx131_9_promoted_e93_pop92_conv2d1x190_out_feedback_stall_out_92),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_select54_conv2d1x192(MUX,225)@153
    assign i_select54_conv2d1x192_s = i_llvm_fpga_fanout_i1_not_269_fanout_adaptor600_conv2d1x137_q;
    always @(i_select54_conv2d1x192_s or i_llvm_fpga_fp_multadd_mult_add106_conv2d1x166_out_primWireOut or i_llvm_fpga_pop_f32_arrayidx131_9_promoted_e93_pop92_conv2d1x190_out_data_out)
    begin
        unique case (i_select54_conv2d1x192_s)
            1'b0 : i_select54_conv2d1x192_q = i_llvm_fpga_fp_multadd_mult_add106_conv2d1x166_out_primWireOut;
            1'b1 : i_select54_conv2d1x192_q = i_llvm_fpga_pop_f32_arrayidx131_9_promoted_e93_pop92_conv2d1x190_out_data_out;
            default : i_select54_conv2d1x192_q = 32'b0;
        endcase
    end

    // valid_fanout_reg60(REG,305)@152 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg60_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg60_q <= $unsigned(redist56_sync_together342_aunroll_vunroll_x_in_i_valid_4_q);
        end
    end

    // valid_fanout_reg61(REG,306)@152 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg61_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg61_q <= $unsigned(redist56_sync_together342_aunroll_vunroll_x_in_i_valid_4_q);
        end
    end

    // i_llvm_fpga_push_f32_arrayidx131_10_promoted_e94_push93_conv2d1x188(BLACKBOX,167)@153
    // out out_feedback_out_93@20000000
    // out out_feedback_valid_out_93@20000000
    conv2d1x1_i_llvm_fpga_push_f32_arrayidx10000romoted_e94_push93_0 thei_llvm_fpga_push_f32_arrayidx131_10_promoted_e94_push93_conv2d1x188 (
        .in_c1_ene18582_fanout_adaptor(i_llvm_fpga_fanout_i1_c1_ene18582_fanout_adaptor_conv2d1x19_q),
        .in_data_in(i_llvm_fpga_pop_f32_arrayidx131_10_promoted_e94_pop93_conv2d1x187_out_data_out),
        .in_feedback_stall_in_93(i_llvm_fpga_pop_f32_arrayidx131_10_promoted_e94_pop93_conv2d1x187_out_feedback_stall_out_93),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg61_q),
        .out_data_out(),
        .out_feedback_out_93(i_llvm_fpga_push_f32_arrayidx131_10_promoted_e94_push93_conv2d1x188_out_feedback_out_93),
        .out_feedback_valid_out_93(i_llvm_fpga_push_f32_arrayidx131_10_promoted_e94_push93_conv2d1x188_out_feedback_valid_out_93),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist13_sync_together342_aunroll_vunroll_x_in_c1_eni37_12_tpl_5_notEnable(LOGICAL,520)
    assign redist13_sync_together342_aunroll_vunroll_x_in_c1_eni37_12_tpl_5_notEnable_q = $unsigned(~ (VCC_q));

    // redist13_sync_together342_aunroll_vunroll_x_in_c1_eni37_12_tpl_5_nor(LOGICAL,521)
    assign redist13_sync_together342_aunroll_vunroll_x_in_c1_eni37_12_tpl_5_nor_q = ~ (redist13_sync_together342_aunroll_vunroll_x_in_c1_eni37_12_tpl_5_notEnable_q | redist13_sync_together342_aunroll_vunroll_x_in_c1_eni37_12_tpl_5_sticky_ena_q);

    // redist13_sync_together342_aunroll_vunroll_x_in_c1_eni37_12_tpl_5_mem_last(CONSTANT,517)
    assign redist13_sync_together342_aunroll_vunroll_x_in_c1_eni37_12_tpl_5_mem_last_q = $unsigned(2'b01);

    // redist13_sync_together342_aunroll_vunroll_x_in_c1_eni37_12_tpl_5_cmp(LOGICAL,518)
    assign redist13_sync_together342_aunroll_vunroll_x_in_c1_eni37_12_tpl_5_cmp_q = $unsigned(redist13_sync_together342_aunroll_vunroll_x_in_c1_eni37_12_tpl_5_mem_last_q == redist13_sync_together342_aunroll_vunroll_x_in_c1_eni37_12_tpl_5_rdcnt_q ? 1'b1 : 1'b0);

    // redist13_sync_together342_aunroll_vunroll_x_in_c1_eni37_12_tpl_5_cmpReg(REG,519)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_sync_together342_aunroll_vunroll_x_in_c1_eni37_12_tpl_5_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist13_sync_together342_aunroll_vunroll_x_in_c1_eni37_12_tpl_5_cmpReg_q <= $unsigned(redist13_sync_together342_aunroll_vunroll_x_in_c1_eni37_12_tpl_5_cmp_q);
        end
    end

    // redist13_sync_together342_aunroll_vunroll_x_in_c1_eni37_12_tpl_5_sticky_ena(REG,522)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_sync_together342_aunroll_vunroll_x_in_c1_eni37_12_tpl_5_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist13_sync_together342_aunroll_vunroll_x_in_c1_eni37_12_tpl_5_nor_q == 1'b1)
        begin
            redist13_sync_together342_aunroll_vunroll_x_in_c1_eni37_12_tpl_5_sticky_ena_q <= $unsigned(redist13_sync_together342_aunroll_vunroll_x_in_c1_eni37_12_tpl_5_cmpReg_q);
        end
    end

    // redist13_sync_together342_aunroll_vunroll_x_in_c1_eni37_12_tpl_5_enaAnd(LOGICAL,523)
    assign redist13_sync_together342_aunroll_vunroll_x_in_c1_eni37_12_tpl_5_enaAnd_q = redist13_sync_together342_aunroll_vunroll_x_in_c1_eni37_12_tpl_5_sticky_ena_q & VCC_q;

    // redist13_sync_together342_aunroll_vunroll_x_in_c1_eni37_12_tpl_5_rdcnt(COUNTER,515)
    // low=0, high=2, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_sync_together342_aunroll_vunroll_x_in_c1_eni37_12_tpl_5_rdcnt_i <= 2'd0;
            redist13_sync_together342_aunroll_vunroll_x_in_c1_eni37_12_tpl_5_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist13_sync_together342_aunroll_vunroll_x_in_c1_eni37_12_tpl_5_rdcnt_i == 2'd1)
            begin
                redist13_sync_together342_aunroll_vunroll_x_in_c1_eni37_12_tpl_5_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist13_sync_together342_aunroll_vunroll_x_in_c1_eni37_12_tpl_5_rdcnt_eq <= 1'b0;
            end
            if (redist13_sync_together342_aunroll_vunroll_x_in_c1_eni37_12_tpl_5_rdcnt_eq == 1'b1)
            begin
                redist13_sync_together342_aunroll_vunroll_x_in_c1_eni37_12_tpl_5_rdcnt_i <= $unsigned(redist13_sync_together342_aunroll_vunroll_x_in_c1_eni37_12_tpl_5_rdcnt_i) + $unsigned(2'd2);
            end
            else
            begin
                redist13_sync_together342_aunroll_vunroll_x_in_c1_eni37_12_tpl_5_rdcnt_i <= $unsigned(redist13_sync_together342_aunroll_vunroll_x_in_c1_eni37_12_tpl_5_rdcnt_i) + $unsigned(2'd1);
            end
        end
    end
    assign redist13_sync_together342_aunroll_vunroll_x_in_c1_eni37_12_tpl_5_rdcnt_q = redist13_sync_together342_aunroll_vunroll_x_in_c1_eni37_12_tpl_5_rdcnt_i[1:0];

    // redist13_sync_together342_aunroll_vunroll_x_in_c1_eni37_12_tpl_5_wraddr(REG,516)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_sync_together342_aunroll_vunroll_x_in_c1_eni37_12_tpl_5_wraddr_q <= $unsigned(2'b10);
        end
        else
        begin
            redist13_sync_together342_aunroll_vunroll_x_in_c1_eni37_12_tpl_5_wraddr_q <= $unsigned(redist13_sync_together342_aunroll_vunroll_x_in_c1_eni37_12_tpl_5_rdcnt_q);
        end
    end

    // redist13_sync_together342_aunroll_vunroll_x_in_c1_eni37_12_tpl_5_mem(DUALMEM,514)
    assign redist13_sync_together342_aunroll_vunroll_x_in_c1_eni37_12_tpl_5_mem_ia = $unsigned(in_c1_eni37_12_tpl);
    assign redist13_sync_together342_aunroll_vunroll_x_in_c1_eni37_12_tpl_5_mem_aa = redist13_sync_together342_aunroll_vunroll_x_in_c1_eni37_12_tpl_5_wraddr_q;
    assign redist13_sync_together342_aunroll_vunroll_x_in_c1_eni37_12_tpl_5_mem_ab = redist13_sync_together342_aunroll_vunroll_x_in_c1_eni37_12_tpl_5_rdcnt_q;
    assign redist13_sync_together342_aunroll_vunroll_x_in_c1_eni37_12_tpl_5_mem_reset0 = ~ (resetn);
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
    ) redist13_sync_together342_aunroll_vunroll_x_in_c1_eni37_12_tpl_5_mem_dmem (
        .clocken1(redist13_sync_together342_aunroll_vunroll_x_in_c1_eni37_12_tpl_5_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist13_sync_together342_aunroll_vunroll_x_in_c1_eni37_12_tpl_5_mem_reset0),
        .clock1(clock),
        .address_a(redist13_sync_together342_aunroll_vunroll_x_in_c1_eni37_12_tpl_5_mem_aa),
        .data_a(redist13_sync_together342_aunroll_vunroll_x_in_c1_eni37_12_tpl_5_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist13_sync_together342_aunroll_vunroll_x_in_c1_eni37_12_tpl_5_mem_ab),
        .q_b(redist13_sync_together342_aunroll_vunroll_x_in_c1_eni37_12_tpl_5_mem_iq),
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
    assign redist13_sync_together342_aunroll_vunroll_x_in_c1_eni37_12_tpl_5_mem_q = redist13_sync_together342_aunroll_vunroll_x_in_c1_eni37_12_tpl_5_mem_iq[31:0];

    // redist13_sync_together342_aunroll_vunroll_x_in_c1_eni37_12_tpl_5_outputreg0(DELAY,513)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_sync_together342_aunroll_vunroll_x_in_c1_eni37_12_tpl_5_outputreg0_q <= '0;
        end
        else
        begin
            redist13_sync_together342_aunroll_vunroll_x_in_c1_eni37_12_tpl_5_outputreg0_q <= $unsigned(redist13_sync_together342_aunroll_vunroll_x_in_c1_eni37_12_tpl_5_mem_q);
        end
    end

    // i_llvm_fpga_pop_f32_arrayidx131_10_promoted_e94_pop93_conv2d1x187(BLACKBOX,119)@153
    // out out_feedback_stall_out_93@20000000
    conv2d1x1_i_llvm_fpga_pop_f32_arrayidx130000promoted_e94_pop93_0 thei_llvm_fpga_pop_f32_arrayidx131_10_promoted_e94_pop93_conv2d1x187 (
        .in_data_in(redist13_sync_together342_aunroll_vunroll_x_in_c1_eni37_12_tpl_5_outputreg0_q),
        .in_dir(i_llvm_fpga_fanout_i1_c1_ene2566_fanout_adaptor596_conv2d1x12_q),
        .in_feedback_in_93(i_llvm_fpga_push_f32_arrayidx131_10_promoted_e94_push93_conv2d1x188_out_feedback_out_93),
        .in_feedback_valid_in_93(i_llvm_fpga_push_f32_arrayidx131_10_promoted_e94_push93_conv2d1x188_out_feedback_valid_out_93),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg60_q),
        .out_data_out(i_llvm_fpga_pop_f32_arrayidx131_10_promoted_e94_pop93_conv2d1x187_out_data_out),
        .out_feedback_stall_out_93(i_llvm_fpga_pop_f32_arrayidx131_10_promoted_e94_pop93_conv2d1x187_out_feedback_stall_out_93),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_select51_conv2d1x189(MUX,224)@153
    assign i_select51_conv2d1x189_s = i_llvm_fpga_fanout_i1_not_269_fanout_adaptor600_conv2d1x137_q;
    always @(i_select51_conv2d1x189_s or i_llvm_fpga_fp_multadd_mult_add105_conv2d1x162_out_primWireOut or i_llvm_fpga_pop_f32_arrayidx131_10_promoted_e94_pop93_conv2d1x187_out_data_out)
    begin
        unique case (i_select51_conv2d1x189_s)
            1'b0 : i_select51_conv2d1x189_q = i_llvm_fpga_fp_multadd_mult_add105_conv2d1x162_out_primWireOut;
            1'b1 : i_select51_conv2d1x189_q = i_llvm_fpga_pop_f32_arrayidx131_10_promoted_e94_pop93_conv2d1x187_out_data_out;
            default : i_select51_conv2d1x189_q = 32'b0;
        endcase
    end

    // valid_fanout_reg58(REG,303)@152 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg58_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg58_q <= $unsigned(redist56_sync_together342_aunroll_vunroll_x_in_i_valid_4_q);
        end
    end

    // valid_fanout_reg59(REG,304)@152 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg59_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg59_q <= $unsigned(redist56_sync_together342_aunroll_vunroll_x_in_i_valid_4_q);
        end
    end

    // i_llvm_fpga_push_f32_arrayidx131_11_promoted_e95_push94_conv2d1x185(BLACKBOX,168)@153
    // out out_feedback_out_94@20000000
    // out out_feedback_valid_out_94@20000000
    conv2d1x1_i_llvm_fpga_push_f32_arrayidx10000romoted_e95_push94_0 thei_llvm_fpga_push_f32_arrayidx131_11_promoted_e95_push94_conv2d1x185 (
        .in_c1_ene18582_fanout_adaptor(i_llvm_fpga_fanout_i1_c1_ene18582_fanout_adaptor_conv2d1x19_q),
        .in_data_in(i_llvm_fpga_pop_f32_arrayidx131_11_promoted_e95_pop94_conv2d1x184_out_data_out),
        .in_feedback_stall_in_94(i_llvm_fpga_pop_f32_arrayidx131_11_promoted_e95_pop94_conv2d1x184_out_feedback_stall_out_94),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg59_q),
        .out_data_out(),
        .out_feedback_out_94(i_llvm_fpga_push_f32_arrayidx131_11_promoted_e95_push94_conv2d1x185_out_feedback_out_94),
        .out_feedback_valid_out_94(i_llvm_fpga_push_f32_arrayidx131_11_promoted_e95_push94_conv2d1x185_out_feedback_valid_out_94),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist14_sync_together342_aunroll_vunroll_x_in_c1_eni37_13_tpl_5_notEnable(LOGICAL,531)
    assign redist14_sync_together342_aunroll_vunroll_x_in_c1_eni37_13_tpl_5_notEnable_q = $unsigned(~ (VCC_q));

    // redist14_sync_together342_aunroll_vunroll_x_in_c1_eni37_13_tpl_5_nor(LOGICAL,532)
    assign redist14_sync_together342_aunroll_vunroll_x_in_c1_eni37_13_tpl_5_nor_q = ~ (redist14_sync_together342_aunroll_vunroll_x_in_c1_eni37_13_tpl_5_notEnable_q | redist14_sync_together342_aunroll_vunroll_x_in_c1_eni37_13_tpl_5_sticky_ena_q);

    // redist14_sync_together342_aunroll_vunroll_x_in_c1_eni37_13_tpl_5_mem_last(CONSTANT,528)
    assign redist14_sync_together342_aunroll_vunroll_x_in_c1_eni37_13_tpl_5_mem_last_q = $unsigned(2'b01);

    // redist14_sync_together342_aunroll_vunroll_x_in_c1_eni37_13_tpl_5_cmp(LOGICAL,529)
    assign redist14_sync_together342_aunroll_vunroll_x_in_c1_eni37_13_tpl_5_cmp_q = $unsigned(redist14_sync_together342_aunroll_vunroll_x_in_c1_eni37_13_tpl_5_mem_last_q == redist14_sync_together342_aunroll_vunroll_x_in_c1_eni37_13_tpl_5_rdcnt_q ? 1'b1 : 1'b0);

    // redist14_sync_together342_aunroll_vunroll_x_in_c1_eni37_13_tpl_5_cmpReg(REG,530)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_sync_together342_aunroll_vunroll_x_in_c1_eni37_13_tpl_5_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist14_sync_together342_aunroll_vunroll_x_in_c1_eni37_13_tpl_5_cmpReg_q <= $unsigned(redist14_sync_together342_aunroll_vunroll_x_in_c1_eni37_13_tpl_5_cmp_q);
        end
    end

    // redist14_sync_together342_aunroll_vunroll_x_in_c1_eni37_13_tpl_5_sticky_ena(REG,533)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_sync_together342_aunroll_vunroll_x_in_c1_eni37_13_tpl_5_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist14_sync_together342_aunroll_vunroll_x_in_c1_eni37_13_tpl_5_nor_q == 1'b1)
        begin
            redist14_sync_together342_aunroll_vunroll_x_in_c1_eni37_13_tpl_5_sticky_ena_q <= $unsigned(redist14_sync_together342_aunroll_vunroll_x_in_c1_eni37_13_tpl_5_cmpReg_q);
        end
    end

    // redist14_sync_together342_aunroll_vunroll_x_in_c1_eni37_13_tpl_5_enaAnd(LOGICAL,534)
    assign redist14_sync_together342_aunroll_vunroll_x_in_c1_eni37_13_tpl_5_enaAnd_q = redist14_sync_together342_aunroll_vunroll_x_in_c1_eni37_13_tpl_5_sticky_ena_q & VCC_q;

    // redist14_sync_together342_aunroll_vunroll_x_in_c1_eni37_13_tpl_5_rdcnt(COUNTER,526)
    // low=0, high=2, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_sync_together342_aunroll_vunroll_x_in_c1_eni37_13_tpl_5_rdcnt_i <= 2'd0;
            redist14_sync_together342_aunroll_vunroll_x_in_c1_eni37_13_tpl_5_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist14_sync_together342_aunroll_vunroll_x_in_c1_eni37_13_tpl_5_rdcnt_i == 2'd1)
            begin
                redist14_sync_together342_aunroll_vunroll_x_in_c1_eni37_13_tpl_5_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist14_sync_together342_aunroll_vunroll_x_in_c1_eni37_13_tpl_5_rdcnt_eq <= 1'b0;
            end
            if (redist14_sync_together342_aunroll_vunroll_x_in_c1_eni37_13_tpl_5_rdcnt_eq == 1'b1)
            begin
                redist14_sync_together342_aunroll_vunroll_x_in_c1_eni37_13_tpl_5_rdcnt_i <= $unsigned(redist14_sync_together342_aunroll_vunroll_x_in_c1_eni37_13_tpl_5_rdcnt_i) + $unsigned(2'd2);
            end
            else
            begin
                redist14_sync_together342_aunroll_vunroll_x_in_c1_eni37_13_tpl_5_rdcnt_i <= $unsigned(redist14_sync_together342_aunroll_vunroll_x_in_c1_eni37_13_tpl_5_rdcnt_i) + $unsigned(2'd1);
            end
        end
    end
    assign redist14_sync_together342_aunroll_vunroll_x_in_c1_eni37_13_tpl_5_rdcnt_q = redist14_sync_together342_aunroll_vunroll_x_in_c1_eni37_13_tpl_5_rdcnt_i[1:0];

    // redist14_sync_together342_aunroll_vunroll_x_in_c1_eni37_13_tpl_5_wraddr(REG,527)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_sync_together342_aunroll_vunroll_x_in_c1_eni37_13_tpl_5_wraddr_q <= $unsigned(2'b10);
        end
        else
        begin
            redist14_sync_together342_aunroll_vunroll_x_in_c1_eni37_13_tpl_5_wraddr_q <= $unsigned(redist14_sync_together342_aunroll_vunroll_x_in_c1_eni37_13_tpl_5_rdcnt_q);
        end
    end

    // redist14_sync_together342_aunroll_vunroll_x_in_c1_eni37_13_tpl_5_mem(DUALMEM,525)
    assign redist14_sync_together342_aunroll_vunroll_x_in_c1_eni37_13_tpl_5_mem_ia = $unsigned(in_c1_eni37_13_tpl);
    assign redist14_sync_together342_aunroll_vunroll_x_in_c1_eni37_13_tpl_5_mem_aa = redist14_sync_together342_aunroll_vunroll_x_in_c1_eni37_13_tpl_5_wraddr_q;
    assign redist14_sync_together342_aunroll_vunroll_x_in_c1_eni37_13_tpl_5_mem_ab = redist14_sync_together342_aunroll_vunroll_x_in_c1_eni37_13_tpl_5_rdcnt_q;
    assign redist14_sync_together342_aunroll_vunroll_x_in_c1_eni37_13_tpl_5_mem_reset0 = ~ (resetn);
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
    ) redist14_sync_together342_aunroll_vunroll_x_in_c1_eni37_13_tpl_5_mem_dmem (
        .clocken1(redist14_sync_together342_aunroll_vunroll_x_in_c1_eni37_13_tpl_5_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist14_sync_together342_aunroll_vunroll_x_in_c1_eni37_13_tpl_5_mem_reset0),
        .clock1(clock),
        .address_a(redist14_sync_together342_aunroll_vunroll_x_in_c1_eni37_13_tpl_5_mem_aa),
        .data_a(redist14_sync_together342_aunroll_vunroll_x_in_c1_eni37_13_tpl_5_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist14_sync_together342_aunroll_vunroll_x_in_c1_eni37_13_tpl_5_mem_ab),
        .q_b(redist14_sync_together342_aunroll_vunroll_x_in_c1_eni37_13_tpl_5_mem_iq),
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
    assign redist14_sync_together342_aunroll_vunroll_x_in_c1_eni37_13_tpl_5_mem_q = redist14_sync_together342_aunroll_vunroll_x_in_c1_eni37_13_tpl_5_mem_iq[31:0];

    // redist14_sync_together342_aunroll_vunroll_x_in_c1_eni37_13_tpl_5_outputreg0(DELAY,524)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_sync_together342_aunroll_vunroll_x_in_c1_eni37_13_tpl_5_outputreg0_q <= '0;
        end
        else
        begin
            redist14_sync_together342_aunroll_vunroll_x_in_c1_eni37_13_tpl_5_outputreg0_q <= $unsigned(redist14_sync_together342_aunroll_vunroll_x_in_c1_eni37_13_tpl_5_mem_q);
        end
    end

    // i_llvm_fpga_pop_f32_arrayidx131_11_promoted_e95_pop94_conv2d1x184(BLACKBOX,120)@153
    // out out_feedback_stall_out_94@20000000
    conv2d1x1_i_llvm_fpga_pop_f32_arrayidx130000promoted_e95_pop94_0 thei_llvm_fpga_pop_f32_arrayidx131_11_promoted_e95_pop94_conv2d1x184 (
        .in_data_in(redist14_sync_together342_aunroll_vunroll_x_in_c1_eni37_13_tpl_5_outputreg0_q),
        .in_dir(i_llvm_fpga_fanout_i1_c1_ene2566_fanout_adaptor596_conv2d1x12_q),
        .in_feedback_in_94(i_llvm_fpga_push_f32_arrayidx131_11_promoted_e95_push94_conv2d1x185_out_feedback_out_94),
        .in_feedback_valid_in_94(i_llvm_fpga_push_f32_arrayidx131_11_promoted_e95_push94_conv2d1x185_out_feedback_valid_out_94),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg58_q),
        .out_data_out(i_llvm_fpga_pop_f32_arrayidx131_11_promoted_e95_pop94_conv2d1x184_out_data_out),
        .out_feedback_stall_out_94(i_llvm_fpga_pop_f32_arrayidx131_11_promoted_e95_pop94_conv2d1x184_out_feedback_stall_out_94),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_select48_conv2d1x186(MUX,223)@153
    assign i_select48_conv2d1x186_s = i_llvm_fpga_fanout_i1_not_269_fanout_adaptor600_conv2d1x137_q;
    always @(i_select48_conv2d1x186_s or i_llvm_fpga_fp_multadd_mult_add104_conv2d1x158_out_primWireOut or i_llvm_fpga_pop_f32_arrayidx131_11_promoted_e95_pop94_conv2d1x184_out_data_out)
    begin
        unique case (i_select48_conv2d1x186_s)
            1'b0 : i_select48_conv2d1x186_q = i_llvm_fpga_fp_multadd_mult_add104_conv2d1x158_out_primWireOut;
            1'b1 : i_select48_conv2d1x186_q = i_llvm_fpga_pop_f32_arrayidx131_11_promoted_e95_pop94_conv2d1x184_out_data_out;
            default : i_select48_conv2d1x186_q = 32'b0;
        endcase
    end

    // valid_fanout_reg56(REG,301)@152 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg56_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg56_q <= $unsigned(redist56_sync_together342_aunroll_vunroll_x_in_i_valid_4_q);
        end
    end

    // valid_fanout_reg57(REG,302)@152 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg57_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg57_q <= $unsigned(redist56_sync_together342_aunroll_vunroll_x_in_i_valid_4_q);
        end
    end

    // i_llvm_fpga_push_f32_arrayidx131_12_promoted_e96_push95_conv2d1x182(BLACKBOX,169)@153
    // out out_feedback_out_95@20000000
    // out out_feedback_valid_out_95@20000000
    conv2d1x1_i_llvm_fpga_push_f32_arrayidx10000romoted_e96_push95_0 thei_llvm_fpga_push_f32_arrayidx131_12_promoted_e96_push95_conv2d1x182 (
        .in_c1_ene18582_fanout_adaptor(i_llvm_fpga_fanout_i1_c1_ene18582_fanout_adaptor_conv2d1x19_q),
        .in_data_in(i_llvm_fpga_pop_f32_arrayidx131_12_promoted_e96_pop95_conv2d1x181_out_data_out),
        .in_feedback_stall_in_95(i_llvm_fpga_pop_f32_arrayidx131_12_promoted_e96_pop95_conv2d1x181_out_feedback_stall_out_95),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg57_q),
        .out_data_out(),
        .out_feedback_out_95(i_llvm_fpga_push_f32_arrayidx131_12_promoted_e96_push95_conv2d1x182_out_feedback_out_95),
        .out_feedback_valid_out_95(i_llvm_fpga_push_f32_arrayidx131_12_promoted_e96_push95_conv2d1x182_out_feedback_valid_out_95),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist15_sync_together342_aunroll_vunroll_x_in_c1_eni37_14_tpl_5_notEnable(LOGICAL,542)
    assign redist15_sync_together342_aunroll_vunroll_x_in_c1_eni37_14_tpl_5_notEnable_q = $unsigned(~ (VCC_q));

    // redist15_sync_together342_aunroll_vunroll_x_in_c1_eni37_14_tpl_5_nor(LOGICAL,543)
    assign redist15_sync_together342_aunroll_vunroll_x_in_c1_eni37_14_tpl_5_nor_q = ~ (redist15_sync_together342_aunroll_vunroll_x_in_c1_eni37_14_tpl_5_notEnable_q | redist15_sync_together342_aunroll_vunroll_x_in_c1_eni37_14_tpl_5_sticky_ena_q);

    // redist15_sync_together342_aunroll_vunroll_x_in_c1_eni37_14_tpl_5_mem_last(CONSTANT,539)
    assign redist15_sync_together342_aunroll_vunroll_x_in_c1_eni37_14_tpl_5_mem_last_q = $unsigned(2'b01);

    // redist15_sync_together342_aunroll_vunroll_x_in_c1_eni37_14_tpl_5_cmp(LOGICAL,540)
    assign redist15_sync_together342_aunroll_vunroll_x_in_c1_eni37_14_tpl_5_cmp_q = $unsigned(redist15_sync_together342_aunroll_vunroll_x_in_c1_eni37_14_tpl_5_mem_last_q == redist15_sync_together342_aunroll_vunroll_x_in_c1_eni37_14_tpl_5_rdcnt_q ? 1'b1 : 1'b0);

    // redist15_sync_together342_aunroll_vunroll_x_in_c1_eni37_14_tpl_5_cmpReg(REG,541)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist15_sync_together342_aunroll_vunroll_x_in_c1_eni37_14_tpl_5_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist15_sync_together342_aunroll_vunroll_x_in_c1_eni37_14_tpl_5_cmpReg_q <= $unsigned(redist15_sync_together342_aunroll_vunroll_x_in_c1_eni37_14_tpl_5_cmp_q);
        end
    end

    // redist15_sync_together342_aunroll_vunroll_x_in_c1_eni37_14_tpl_5_sticky_ena(REG,544)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist15_sync_together342_aunroll_vunroll_x_in_c1_eni37_14_tpl_5_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist15_sync_together342_aunroll_vunroll_x_in_c1_eni37_14_tpl_5_nor_q == 1'b1)
        begin
            redist15_sync_together342_aunroll_vunroll_x_in_c1_eni37_14_tpl_5_sticky_ena_q <= $unsigned(redist15_sync_together342_aunroll_vunroll_x_in_c1_eni37_14_tpl_5_cmpReg_q);
        end
    end

    // redist15_sync_together342_aunroll_vunroll_x_in_c1_eni37_14_tpl_5_enaAnd(LOGICAL,545)
    assign redist15_sync_together342_aunroll_vunroll_x_in_c1_eni37_14_tpl_5_enaAnd_q = redist15_sync_together342_aunroll_vunroll_x_in_c1_eni37_14_tpl_5_sticky_ena_q & VCC_q;

    // redist15_sync_together342_aunroll_vunroll_x_in_c1_eni37_14_tpl_5_rdcnt(COUNTER,537)
    // low=0, high=2, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist15_sync_together342_aunroll_vunroll_x_in_c1_eni37_14_tpl_5_rdcnt_i <= 2'd0;
            redist15_sync_together342_aunroll_vunroll_x_in_c1_eni37_14_tpl_5_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist15_sync_together342_aunroll_vunroll_x_in_c1_eni37_14_tpl_5_rdcnt_i == 2'd1)
            begin
                redist15_sync_together342_aunroll_vunroll_x_in_c1_eni37_14_tpl_5_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist15_sync_together342_aunroll_vunroll_x_in_c1_eni37_14_tpl_5_rdcnt_eq <= 1'b0;
            end
            if (redist15_sync_together342_aunroll_vunroll_x_in_c1_eni37_14_tpl_5_rdcnt_eq == 1'b1)
            begin
                redist15_sync_together342_aunroll_vunroll_x_in_c1_eni37_14_tpl_5_rdcnt_i <= $unsigned(redist15_sync_together342_aunroll_vunroll_x_in_c1_eni37_14_tpl_5_rdcnt_i) + $unsigned(2'd2);
            end
            else
            begin
                redist15_sync_together342_aunroll_vunroll_x_in_c1_eni37_14_tpl_5_rdcnt_i <= $unsigned(redist15_sync_together342_aunroll_vunroll_x_in_c1_eni37_14_tpl_5_rdcnt_i) + $unsigned(2'd1);
            end
        end
    end
    assign redist15_sync_together342_aunroll_vunroll_x_in_c1_eni37_14_tpl_5_rdcnt_q = redist15_sync_together342_aunroll_vunroll_x_in_c1_eni37_14_tpl_5_rdcnt_i[1:0];

    // redist15_sync_together342_aunroll_vunroll_x_in_c1_eni37_14_tpl_5_wraddr(REG,538)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist15_sync_together342_aunroll_vunroll_x_in_c1_eni37_14_tpl_5_wraddr_q <= $unsigned(2'b10);
        end
        else
        begin
            redist15_sync_together342_aunroll_vunroll_x_in_c1_eni37_14_tpl_5_wraddr_q <= $unsigned(redist15_sync_together342_aunroll_vunroll_x_in_c1_eni37_14_tpl_5_rdcnt_q);
        end
    end

    // redist15_sync_together342_aunroll_vunroll_x_in_c1_eni37_14_tpl_5_mem(DUALMEM,536)
    assign redist15_sync_together342_aunroll_vunroll_x_in_c1_eni37_14_tpl_5_mem_ia = $unsigned(in_c1_eni37_14_tpl);
    assign redist15_sync_together342_aunroll_vunroll_x_in_c1_eni37_14_tpl_5_mem_aa = redist15_sync_together342_aunroll_vunroll_x_in_c1_eni37_14_tpl_5_wraddr_q;
    assign redist15_sync_together342_aunroll_vunroll_x_in_c1_eni37_14_tpl_5_mem_ab = redist15_sync_together342_aunroll_vunroll_x_in_c1_eni37_14_tpl_5_rdcnt_q;
    assign redist15_sync_together342_aunroll_vunroll_x_in_c1_eni37_14_tpl_5_mem_reset0 = ~ (resetn);
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
    ) redist15_sync_together342_aunroll_vunroll_x_in_c1_eni37_14_tpl_5_mem_dmem (
        .clocken1(redist15_sync_together342_aunroll_vunroll_x_in_c1_eni37_14_tpl_5_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist15_sync_together342_aunroll_vunroll_x_in_c1_eni37_14_tpl_5_mem_reset0),
        .clock1(clock),
        .address_a(redist15_sync_together342_aunroll_vunroll_x_in_c1_eni37_14_tpl_5_mem_aa),
        .data_a(redist15_sync_together342_aunroll_vunroll_x_in_c1_eni37_14_tpl_5_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist15_sync_together342_aunroll_vunroll_x_in_c1_eni37_14_tpl_5_mem_ab),
        .q_b(redist15_sync_together342_aunroll_vunroll_x_in_c1_eni37_14_tpl_5_mem_iq),
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
    assign redist15_sync_together342_aunroll_vunroll_x_in_c1_eni37_14_tpl_5_mem_q = redist15_sync_together342_aunroll_vunroll_x_in_c1_eni37_14_tpl_5_mem_iq[31:0];

    // redist15_sync_together342_aunroll_vunroll_x_in_c1_eni37_14_tpl_5_outputreg0(DELAY,535)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist15_sync_together342_aunroll_vunroll_x_in_c1_eni37_14_tpl_5_outputreg0_q <= '0;
        end
        else
        begin
            redist15_sync_together342_aunroll_vunroll_x_in_c1_eni37_14_tpl_5_outputreg0_q <= $unsigned(redist15_sync_together342_aunroll_vunroll_x_in_c1_eni37_14_tpl_5_mem_q);
        end
    end

    // i_llvm_fpga_pop_f32_arrayidx131_12_promoted_e96_pop95_conv2d1x181(BLACKBOX,121)@153
    // out out_feedback_stall_out_95@20000000
    conv2d1x1_i_llvm_fpga_pop_f32_arrayidx130000promoted_e96_pop95_0 thei_llvm_fpga_pop_f32_arrayidx131_12_promoted_e96_pop95_conv2d1x181 (
        .in_data_in(redist15_sync_together342_aunroll_vunroll_x_in_c1_eni37_14_tpl_5_outputreg0_q),
        .in_dir(i_llvm_fpga_fanout_i1_c1_ene2566_fanout_adaptor596_conv2d1x12_q),
        .in_feedback_in_95(i_llvm_fpga_push_f32_arrayidx131_12_promoted_e96_push95_conv2d1x182_out_feedback_out_95),
        .in_feedback_valid_in_95(i_llvm_fpga_push_f32_arrayidx131_12_promoted_e96_push95_conv2d1x182_out_feedback_valid_out_95),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg56_q),
        .out_data_out(i_llvm_fpga_pop_f32_arrayidx131_12_promoted_e96_pop95_conv2d1x181_out_data_out),
        .out_feedback_stall_out_95(i_llvm_fpga_pop_f32_arrayidx131_12_promoted_e96_pop95_conv2d1x181_out_feedback_stall_out_95),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_select45_conv2d1x183(MUX,222)@153
    assign i_select45_conv2d1x183_s = i_llvm_fpga_fanout_i1_not_269_fanout_adaptor600_conv2d1x137_q;
    always @(i_select45_conv2d1x183_s or i_llvm_fpga_fp_multadd_mult_add103_conv2d1x154_out_primWireOut or i_llvm_fpga_pop_f32_arrayidx131_12_promoted_e96_pop95_conv2d1x181_out_data_out)
    begin
        unique case (i_select45_conv2d1x183_s)
            1'b0 : i_select45_conv2d1x183_q = i_llvm_fpga_fp_multadd_mult_add103_conv2d1x154_out_primWireOut;
            1'b1 : i_select45_conv2d1x183_q = i_llvm_fpga_pop_f32_arrayidx131_12_promoted_e96_pop95_conv2d1x181_out_data_out;
            default : i_select45_conv2d1x183_q = 32'b0;
        endcase
    end

    // valid_fanout_reg54(REG,299)@152 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg54_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg54_q <= $unsigned(redist56_sync_together342_aunroll_vunroll_x_in_i_valid_4_q);
        end
    end

    // valid_fanout_reg55(REG,300)@152 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg55_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg55_q <= $unsigned(redist56_sync_together342_aunroll_vunroll_x_in_i_valid_4_q);
        end
    end

    // i_llvm_fpga_push_f32_arrayidx131_13_promoted_e97_push96_conv2d1x179(BLACKBOX,170)@153
    // out out_feedback_out_96@20000000
    // out out_feedback_valid_out_96@20000000
    conv2d1x1_i_llvm_fpga_push_f32_arrayidx10000romoted_e97_push96_0 thei_llvm_fpga_push_f32_arrayidx131_13_promoted_e97_push96_conv2d1x179 (
        .in_c1_ene18582_fanout_adaptor(i_llvm_fpga_fanout_i1_c1_ene18582_fanout_adaptor_conv2d1x19_q),
        .in_data_in(i_llvm_fpga_pop_f32_arrayidx131_13_promoted_e97_pop96_conv2d1x178_out_data_out),
        .in_feedback_stall_in_96(i_llvm_fpga_pop_f32_arrayidx131_13_promoted_e97_pop96_conv2d1x178_out_feedback_stall_out_96),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg55_q),
        .out_data_out(),
        .out_feedback_out_96(i_llvm_fpga_push_f32_arrayidx131_13_promoted_e97_push96_conv2d1x179_out_feedback_out_96),
        .out_feedback_valid_out_96(i_llvm_fpga_push_f32_arrayidx131_13_promoted_e97_push96_conv2d1x179_out_feedback_valid_out_96),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist16_sync_together342_aunroll_vunroll_x_in_c1_eni37_15_tpl_5_notEnable(LOGICAL,553)
    assign redist16_sync_together342_aunroll_vunroll_x_in_c1_eni37_15_tpl_5_notEnable_q = $unsigned(~ (VCC_q));

    // redist16_sync_together342_aunroll_vunroll_x_in_c1_eni37_15_tpl_5_nor(LOGICAL,554)
    assign redist16_sync_together342_aunroll_vunroll_x_in_c1_eni37_15_tpl_5_nor_q = ~ (redist16_sync_together342_aunroll_vunroll_x_in_c1_eni37_15_tpl_5_notEnable_q | redist16_sync_together342_aunroll_vunroll_x_in_c1_eni37_15_tpl_5_sticky_ena_q);

    // redist16_sync_together342_aunroll_vunroll_x_in_c1_eni37_15_tpl_5_mem_last(CONSTANT,550)
    assign redist16_sync_together342_aunroll_vunroll_x_in_c1_eni37_15_tpl_5_mem_last_q = $unsigned(2'b01);

    // redist16_sync_together342_aunroll_vunroll_x_in_c1_eni37_15_tpl_5_cmp(LOGICAL,551)
    assign redist16_sync_together342_aunroll_vunroll_x_in_c1_eni37_15_tpl_5_cmp_q = $unsigned(redist16_sync_together342_aunroll_vunroll_x_in_c1_eni37_15_tpl_5_mem_last_q == redist16_sync_together342_aunroll_vunroll_x_in_c1_eni37_15_tpl_5_rdcnt_q ? 1'b1 : 1'b0);

    // redist16_sync_together342_aunroll_vunroll_x_in_c1_eni37_15_tpl_5_cmpReg(REG,552)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist16_sync_together342_aunroll_vunroll_x_in_c1_eni37_15_tpl_5_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist16_sync_together342_aunroll_vunroll_x_in_c1_eni37_15_tpl_5_cmpReg_q <= $unsigned(redist16_sync_together342_aunroll_vunroll_x_in_c1_eni37_15_tpl_5_cmp_q);
        end
    end

    // redist16_sync_together342_aunroll_vunroll_x_in_c1_eni37_15_tpl_5_sticky_ena(REG,555)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist16_sync_together342_aunroll_vunroll_x_in_c1_eni37_15_tpl_5_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist16_sync_together342_aunroll_vunroll_x_in_c1_eni37_15_tpl_5_nor_q == 1'b1)
        begin
            redist16_sync_together342_aunroll_vunroll_x_in_c1_eni37_15_tpl_5_sticky_ena_q <= $unsigned(redist16_sync_together342_aunroll_vunroll_x_in_c1_eni37_15_tpl_5_cmpReg_q);
        end
    end

    // redist16_sync_together342_aunroll_vunroll_x_in_c1_eni37_15_tpl_5_enaAnd(LOGICAL,556)
    assign redist16_sync_together342_aunroll_vunroll_x_in_c1_eni37_15_tpl_5_enaAnd_q = redist16_sync_together342_aunroll_vunroll_x_in_c1_eni37_15_tpl_5_sticky_ena_q & VCC_q;

    // redist16_sync_together342_aunroll_vunroll_x_in_c1_eni37_15_tpl_5_rdcnt(COUNTER,548)
    // low=0, high=2, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist16_sync_together342_aunroll_vunroll_x_in_c1_eni37_15_tpl_5_rdcnt_i <= 2'd0;
            redist16_sync_together342_aunroll_vunroll_x_in_c1_eni37_15_tpl_5_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist16_sync_together342_aunroll_vunroll_x_in_c1_eni37_15_tpl_5_rdcnt_i == 2'd1)
            begin
                redist16_sync_together342_aunroll_vunroll_x_in_c1_eni37_15_tpl_5_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist16_sync_together342_aunroll_vunroll_x_in_c1_eni37_15_tpl_5_rdcnt_eq <= 1'b0;
            end
            if (redist16_sync_together342_aunroll_vunroll_x_in_c1_eni37_15_tpl_5_rdcnt_eq == 1'b1)
            begin
                redist16_sync_together342_aunroll_vunroll_x_in_c1_eni37_15_tpl_5_rdcnt_i <= $unsigned(redist16_sync_together342_aunroll_vunroll_x_in_c1_eni37_15_tpl_5_rdcnt_i) + $unsigned(2'd2);
            end
            else
            begin
                redist16_sync_together342_aunroll_vunroll_x_in_c1_eni37_15_tpl_5_rdcnt_i <= $unsigned(redist16_sync_together342_aunroll_vunroll_x_in_c1_eni37_15_tpl_5_rdcnt_i) + $unsigned(2'd1);
            end
        end
    end
    assign redist16_sync_together342_aunroll_vunroll_x_in_c1_eni37_15_tpl_5_rdcnt_q = redist16_sync_together342_aunroll_vunroll_x_in_c1_eni37_15_tpl_5_rdcnt_i[1:0];

    // redist16_sync_together342_aunroll_vunroll_x_in_c1_eni37_15_tpl_5_wraddr(REG,549)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist16_sync_together342_aunroll_vunroll_x_in_c1_eni37_15_tpl_5_wraddr_q <= $unsigned(2'b10);
        end
        else
        begin
            redist16_sync_together342_aunroll_vunroll_x_in_c1_eni37_15_tpl_5_wraddr_q <= $unsigned(redist16_sync_together342_aunroll_vunroll_x_in_c1_eni37_15_tpl_5_rdcnt_q);
        end
    end

    // redist16_sync_together342_aunroll_vunroll_x_in_c1_eni37_15_tpl_5_mem(DUALMEM,547)
    assign redist16_sync_together342_aunroll_vunroll_x_in_c1_eni37_15_tpl_5_mem_ia = $unsigned(in_c1_eni37_15_tpl);
    assign redist16_sync_together342_aunroll_vunroll_x_in_c1_eni37_15_tpl_5_mem_aa = redist16_sync_together342_aunroll_vunroll_x_in_c1_eni37_15_tpl_5_wraddr_q;
    assign redist16_sync_together342_aunroll_vunroll_x_in_c1_eni37_15_tpl_5_mem_ab = redist16_sync_together342_aunroll_vunroll_x_in_c1_eni37_15_tpl_5_rdcnt_q;
    assign redist16_sync_together342_aunroll_vunroll_x_in_c1_eni37_15_tpl_5_mem_reset0 = ~ (resetn);
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
    ) redist16_sync_together342_aunroll_vunroll_x_in_c1_eni37_15_tpl_5_mem_dmem (
        .clocken1(redist16_sync_together342_aunroll_vunroll_x_in_c1_eni37_15_tpl_5_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist16_sync_together342_aunroll_vunroll_x_in_c1_eni37_15_tpl_5_mem_reset0),
        .clock1(clock),
        .address_a(redist16_sync_together342_aunroll_vunroll_x_in_c1_eni37_15_tpl_5_mem_aa),
        .data_a(redist16_sync_together342_aunroll_vunroll_x_in_c1_eni37_15_tpl_5_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist16_sync_together342_aunroll_vunroll_x_in_c1_eni37_15_tpl_5_mem_ab),
        .q_b(redist16_sync_together342_aunroll_vunroll_x_in_c1_eni37_15_tpl_5_mem_iq),
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
    assign redist16_sync_together342_aunroll_vunroll_x_in_c1_eni37_15_tpl_5_mem_q = redist16_sync_together342_aunroll_vunroll_x_in_c1_eni37_15_tpl_5_mem_iq[31:0];

    // redist16_sync_together342_aunroll_vunroll_x_in_c1_eni37_15_tpl_5_outputreg0(DELAY,546)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist16_sync_together342_aunroll_vunroll_x_in_c1_eni37_15_tpl_5_outputreg0_q <= '0;
        end
        else
        begin
            redist16_sync_together342_aunroll_vunroll_x_in_c1_eni37_15_tpl_5_outputreg0_q <= $unsigned(redist16_sync_together342_aunroll_vunroll_x_in_c1_eni37_15_tpl_5_mem_q);
        end
    end

    // i_llvm_fpga_pop_f32_arrayidx131_13_promoted_e97_pop96_conv2d1x178(BLACKBOX,122)@153
    // out out_feedback_stall_out_96@20000000
    conv2d1x1_i_llvm_fpga_pop_f32_arrayidx130000promoted_e97_pop96_0 thei_llvm_fpga_pop_f32_arrayidx131_13_promoted_e97_pop96_conv2d1x178 (
        .in_data_in(redist16_sync_together342_aunroll_vunroll_x_in_c1_eni37_15_tpl_5_outputreg0_q),
        .in_dir(i_llvm_fpga_fanout_i1_c1_ene2566_fanout_adaptor596_conv2d1x12_q),
        .in_feedback_in_96(i_llvm_fpga_push_f32_arrayidx131_13_promoted_e97_push96_conv2d1x179_out_feedback_out_96),
        .in_feedback_valid_in_96(i_llvm_fpga_push_f32_arrayidx131_13_promoted_e97_push96_conv2d1x179_out_feedback_valid_out_96),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg54_q),
        .out_data_out(i_llvm_fpga_pop_f32_arrayidx131_13_promoted_e97_pop96_conv2d1x178_out_data_out),
        .out_feedback_stall_out_96(i_llvm_fpga_pop_f32_arrayidx131_13_promoted_e97_pop96_conv2d1x178_out_feedback_stall_out_96),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_select42_conv2d1x180(MUX,221)@153
    assign i_select42_conv2d1x180_s = i_llvm_fpga_fanout_i1_not_269_fanout_adaptor600_conv2d1x137_q;
    always @(i_select42_conv2d1x180_s or i_llvm_fpga_fp_multadd_mult_add102_conv2d1x150_out_primWireOut or i_llvm_fpga_pop_f32_arrayidx131_13_promoted_e97_pop96_conv2d1x178_out_data_out)
    begin
        unique case (i_select42_conv2d1x180_s)
            1'b0 : i_select42_conv2d1x180_q = i_llvm_fpga_fp_multadd_mult_add102_conv2d1x150_out_primWireOut;
            1'b1 : i_select42_conv2d1x180_q = i_llvm_fpga_pop_f32_arrayidx131_13_promoted_e97_pop96_conv2d1x178_out_data_out;
            default : i_select42_conv2d1x180_q = 32'b0;
        endcase
    end

    // valid_fanout_reg52(REG,297)@152 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg52_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg52_q <= $unsigned(redist56_sync_together342_aunroll_vunroll_x_in_i_valid_4_q);
        end
    end

    // valid_fanout_reg53(REG,298)@152 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg53_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg53_q <= $unsigned(redist56_sync_together342_aunroll_vunroll_x_in_i_valid_4_q);
        end
    end

    // i_llvm_fpga_push_f32_arrayidx131_14_promoted_e98_push97_conv2d1x176(BLACKBOX,171)@153
    // out out_feedback_out_97@20000000
    // out out_feedback_valid_out_97@20000000
    conv2d1x1_i_llvm_fpga_push_f32_arrayidx10000romoted_e98_push97_0 thei_llvm_fpga_push_f32_arrayidx131_14_promoted_e98_push97_conv2d1x176 (
        .in_c1_ene18582_fanout_adaptor(i_llvm_fpga_fanout_i1_c1_ene18582_fanout_adaptor_conv2d1x19_q),
        .in_data_in(i_llvm_fpga_pop_f32_arrayidx131_14_promoted_e98_pop97_conv2d1x175_out_data_out),
        .in_feedback_stall_in_97(i_llvm_fpga_pop_f32_arrayidx131_14_promoted_e98_pop97_conv2d1x175_out_feedback_stall_out_97),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg53_q),
        .out_data_out(),
        .out_feedback_out_97(i_llvm_fpga_push_f32_arrayidx131_14_promoted_e98_push97_conv2d1x176_out_feedback_out_97),
        .out_feedback_valid_out_97(i_llvm_fpga_push_f32_arrayidx131_14_promoted_e98_push97_conv2d1x176_out_feedback_valid_out_97),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist17_sync_together342_aunroll_vunroll_x_in_c1_eni37_16_tpl_5_notEnable(LOGICAL,564)
    assign redist17_sync_together342_aunroll_vunroll_x_in_c1_eni37_16_tpl_5_notEnable_q = $unsigned(~ (VCC_q));

    // redist17_sync_together342_aunroll_vunroll_x_in_c1_eni37_16_tpl_5_nor(LOGICAL,565)
    assign redist17_sync_together342_aunroll_vunroll_x_in_c1_eni37_16_tpl_5_nor_q = ~ (redist17_sync_together342_aunroll_vunroll_x_in_c1_eni37_16_tpl_5_notEnable_q | redist17_sync_together342_aunroll_vunroll_x_in_c1_eni37_16_tpl_5_sticky_ena_q);

    // redist17_sync_together342_aunroll_vunroll_x_in_c1_eni37_16_tpl_5_mem_last(CONSTANT,561)
    assign redist17_sync_together342_aunroll_vunroll_x_in_c1_eni37_16_tpl_5_mem_last_q = $unsigned(2'b01);

    // redist17_sync_together342_aunroll_vunroll_x_in_c1_eni37_16_tpl_5_cmp(LOGICAL,562)
    assign redist17_sync_together342_aunroll_vunroll_x_in_c1_eni37_16_tpl_5_cmp_q = $unsigned(redist17_sync_together342_aunroll_vunroll_x_in_c1_eni37_16_tpl_5_mem_last_q == redist17_sync_together342_aunroll_vunroll_x_in_c1_eni37_16_tpl_5_rdcnt_q ? 1'b1 : 1'b0);

    // redist17_sync_together342_aunroll_vunroll_x_in_c1_eni37_16_tpl_5_cmpReg(REG,563)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist17_sync_together342_aunroll_vunroll_x_in_c1_eni37_16_tpl_5_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist17_sync_together342_aunroll_vunroll_x_in_c1_eni37_16_tpl_5_cmpReg_q <= $unsigned(redist17_sync_together342_aunroll_vunroll_x_in_c1_eni37_16_tpl_5_cmp_q);
        end
    end

    // redist17_sync_together342_aunroll_vunroll_x_in_c1_eni37_16_tpl_5_sticky_ena(REG,566)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist17_sync_together342_aunroll_vunroll_x_in_c1_eni37_16_tpl_5_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist17_sync_together342_aunroll_vunroll_x_in_c1_eni37_16_tpl_5_nor_q == 1'b1)
        begin
            redist17_sync_together342_aunroll_vunroll_x_in_c1_eni37_16_tpl_5_sticky_ena_q <= $unsigned(redist17_sync_together342_aunroll_vunroll_x_in_c1_eni37_16_tpl_5_cmpReg_q);
        end
    end

    // redist17_sync_together342_aunroll_vunroll_x_in_c1_eni37_16_tpl_5_enaAnd(LOGICAL,567)
    assign redist17_sync_together342_aunroll_vunroll_x_in_c1_eni37_16_tpl_5_enaAnd_q = redist17_sync_together342_aunroll_vunroll_x_in_c1_eni37_16_tpl_5_sticky_ena_q & VCC_q;

    // redist17_sync_together342_aunroll_vunroll_x_in_c1_eni37_16_tpl_5_rdcnt(COUNTER,559)
    // low=0, high=2, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist17_sync_together342_aunroll_vunroll_x_in_c1_eni37_16_tpl_5_rdcnt_i <= 2'd0;
            redist17_sync_together342_aunroll_vunroll_x_in_c1_eni37_16_tpl_5_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist17_sync_together342_aunroll_vunroll_x_in_c1_eni37_16_tpl_5_rdcnt_i == 2'd1)
            begin
                redist17_sync_together342_aunroll_vunroll_x_in_c1_eni37_16_tpl_5_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist17_sync_together342_aunroll_vunroll_x_in_c1_eni37_16_tpl_5_rdcnt_eq <= 1'b0;
            end
            if (redist17_sync_together342_aunroll_vunroll_x_in_c1_eni37_16_tpl_5_rdcnt_eq == 1'b1)
            begin
                redist17_sync_together342_aunroll_vunroll_x_in_c1_eni37_16_tpl_5_rdcnt_i <= $unsigned(redist17_sync_together342_aunroll_vunroll_x_in_c1_eni37_16_tpl_5_rdcnt_i) + $unsigned(2'd2);
            end
            else
            begin
                redist17_sync_together342_aunroll_vunroll_x_in_c1_eni37_16_tpl_5_rdcnt_i <= $unsigned(redist17_sync_together342_aunroll_vunroll_x_in_c1_eni37_16_tpl_5_rdcnt_i) + $unsigned(2'd1);
            end
        end
    end
    assign redist17_sync_together342_aunroll_vunroll_x_in_c1_eni37_16_tpl_5_rdcnt_q = redist17_sync_together342_aunroll_vunroll_x_in_c1_eni37_16_tpl_5_rdcnt_i[1:0];

    // redist17_sync_together342_aunroll_vunroll_x_in_c1_eni37_16_tpl_5_wraddr(REG,560)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist17_sync_together342_aunroll_vunroll_x_in_c1_eni37_16_tpl_5_wraddr_q <= $unsigned(2'b10);
        end
        else
        begin
            redist17_sync_together342_aunroll_vunroll_x_in_c1_eni37_16_tpl_5_wraddr_q <= $unsigned(redist17_sync_together342_aunroll_vunroll_x_in_c1_eni37_16_tpl_5_rdcnt_q);
        end
    end

    // redist17_sync_together342_aunroll_vunroll_x_in_c1_eni37_16_tpl_5_mem(DUALMEM,558)
    assign redist17_sync_together342_aunroll_vunroll_x_in_c1_eni37_16_tpl_5_mem_ia = $unsigned(in_c1_eni37_16_tpl);
    assign redist17_sync_together342_aunroll_vunroll_x_in_c1_eni37_16_tpl_5_mem_aa = redist17_sync_together342_aunroll_vunroll_x_in_c1_eni37_16_tpl_5_wraddr_q;
    assign redist17_sync_together342_aunroll_vunroll_x_in_c1_eni37_16_tpl_5_mem_ab = redist17_sync_together342_aunroll_vunroll_x_in_c1_eni37_16_tpl_5_rdcnt_q;
    assign redist17_sync_together342_aunroll_vunroll_x_in_c1_eni37_16_tpl_5_mem_reset0 = ~ (resetn);
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
    ) redist17_sync_together342_aunroll_vunroll_x_in_c1_eni37_16_tpl_5_mem_dmem (
        .clocken1(redist17_sync_together342_aunroll_vunroll_x_in_c1_eni37_16_tpl_5_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist17_sync_together342_aunroll_vunroll_x_in_c1_eni37_16_tpl_5_mem_reset0),
        .clock1(clock),
        .address_a(redist17_sync_together342_aunroll_vunroll_x_in_c1_eni37_16_tpl_5_mem_aa),
        .data_a(redist17_sync_together342_aunroll_vunroll_x_in_c1_eni37_16_tpl_5_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist17_sync_together342_aunroll_vunroll_x_in_c1_eni37_16_tpl_5_mem_ab),
        .q_b(redist17_sync_together342_aunroll_vunroll_x_in_c1_eni37_16_tpl_5_mem_iq),
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
    assign redist17_sync_together342_aunroll_vunroll_x_in_c1_eni37_16_tpl_5_mem_q = redist17_sync_together342_aunroll_vunroll_x_in_c1_eni37_16_tpl_5_mem_iq[31:0];

    // redist17_sync_together342_aunroll_vunroll_x_in_c1_eni37_16_tpl_5_outputreg0(DELAY,557)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist17_sync_together342_aunroll_vunroll_x_in_c1_eni37_16_tpl_5_outputreg0_q <= '0;
        end
        else
        begin
            redist17_sync_together342_aunroll_vunroll_x_in_c1_eni37_16_tpl_5_outputreg0_q <= $unsigned(redist17_sync_together342_aunroll_vunroll_x_in_c1_eni37_16_tpl_5_mem_q);
        end
    end

    // i_llvm_fpga_pop_f32_arrayidx131_14_promoted_e98_pop97_conv2d1x175(BLACKBOX,123)@153
    // out out_feedback_stall_out_97@20000000
    conv2d1x1_i_llvm_fpga_pop_f32_arrayidx130000promoted_e98_pop97_0 thei_llvm_fpga_pop_f32_arrayidx131_14_promoted_e98_pop97_conv2d1x175 (
        .in_data_in(redist17_sync_together342_aunroll_vunroll_x_in_c1_eni37_16_tpl_5_outputreg0_q),
        .in_dir(i_llvm_fpga_fanout_i1_c1_ene2566_fanout_adaptor596_conv2d1x12_q),
        .in_feedback_in_97(i_llvm_fpga_push_f32_arrayidx131_14_promoted_e98_push97_conv2d1x176_out_feedback_out_97),
        .in_feedback_valid_in_97(i_llvm_fpga_push_f32_arrayidx131_14_promoted_e98_push97_conv2d1x176_out_feedback_valid_out_97),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg52_q),
        .out_data_out(i_llvm_fpga_pop_f32_arrayidx131_14_promoted_e98_pop97_conv2d1x175_out_data_out),
        .out_feedback_stall_out_97(i_llvm_fpga_pop_f32_arrayidx131_14_promoted_e98_pop97_conv2d1x175_out_feedback_stall_out_97),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_select39_conv2d1x177(MUX,220)@153
    assign i_select39_conv2d1x177_s = i_llvm_fpga_fanout_i1_not_269_fanout_adaptor600_conv2d1x137_q;
    always @(i_select39_conv2d1x177_s or i_llvm_fpga_fp_multadd_mult_add101_conv2d1x146_out_primWireOut or i_llvm_fpga_pop_f32_arrayidx131_14_promoted_e98_pop97_conv2d1x175_out_data_out)
    begin
        unique case (i_select39_conv2d1x177_s)
            1'b0 : i_select39_conv2d1x177_q = i_llvm_fpga_fp_multadd_mult_add101_conv2d1x146_out_primWireOut;
            1'b1 : i_select39_conv2d1x177_q = i_llvm_fpga_pop_f32_arrayidx131_14_promoted_e98_pop97_conv2d1x175_out_data_out;
            default : i_select39_conv2d1x177_q = 32'b0;
        endcase
    end

    // valid_fanout_reg50(REG,295)@152 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg50_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg50_q <= $unsigned(redist56_sync_together342_aunroll_vunroll_x_in_i_valid_4_q);
        end
    end

    // valid_fanout_reg51(REG,296)@152 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg51_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg51_q <= $unsigned(redist56_sync_together342_aunroll_vunroll_x_in_i_valid_4_q);
        end
    end

    // i_llvm_fpga_push_f32_arrayidx131_15_promoted_e99_push98_conv2d1x173(BLACKBOX,172)@153
    // out out_feedback_out_98@20000000
    // out out_feedback_valid_out_98@20000000
    conv2d1x1_i_llvm_fpga_push_f32_arrayidx10000romoted_e99_push98_0 thei_llvm_fpga_push_f32_arrayidx131_15_promoted_e99_push98_conv2d1x173 (
        .in_c1_ene18582_fanout_adaptor(i_llvm_fpga_fanout_i1_c1_ene18582_fanout_adaptor_conv2d1x19_q),
        .in_data_in(i_llvm_fpga_pop_f32_arrayidx131_15_promoted_e99_pop98_conv2d1x172_out_data_out),
        .in_feedback_stall_in_98(i_llvm_fpga_pop_f32_arrayidx131_15_promoted_e99_pop98_conv2d1x172_out_feedback_stall_out_98),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg51_q),
        .out_data_out(),
        .out_feedback_out_98(i_llvm_fpga_push_f32_arrayidx131_15_promoted_e99_push98_conv2d1x173_out_feedback_out_98),
        .out_feedback_valid_out_98(i_llvm_fpga_push_f32_arrayidx131_15_promoted_e99_push98_conv2d1x173_out_feedback_valid_out_98),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist18_sync_together342_aunroll_vunroll_x_in_c1_eni37_17_tpl_5_notEnable(LOGICAL,575)
    assign redist18_sync_together342_aunroll_vunroll_x_in_c1_eni37_17_tpl_5_notEnable_q = $unsigned(~ (VCC_q));

    // redist18_sync_together342_aunroll_vunroll_x_in_c1_eni37_17_tpl_5_nor(LOGICAL,576)
    assign redist18_sync_together342_aunroll_vunroll_x_in_c1_eni37_17_tpl_5_nor_q = ~ (redist18_sync_together342_aunroll_vunroll_x_in_c1_eni37_17_tpl_5_notEnable_q | redist18_sync_together342_aunroll_vunroll_x_in_c1_eni37_17_tpl_5_sticky_ena_q);

    // redist18_sync_together342_aunroll_vunroll_x_in_c1_eni37_17_tpl_5_mem_last(CONSTANT,572)
    assign redist18_sync_together342_aunroll_vunroll_x_in_c1_eni37_17_tpl_5_mem_last_q = $unsigned(2'b01);

    // redist18_sync_together342_aunroll_vunroll_x_in_c1_eni37_17_tpl_5_cmp(LOGICAL,573)
    assign redist18_sync_together342_aunroll_vunroll_x_in_c1_eni37_17_tpl_5_cmp_q = $unsigned(redist18_sync_together342_aunroll_vunroll_x_in_c1_eni37_17_tpl_5_mem_last_q == redist18_sync_together342_aunroll_vunroll_x_in_c1_eni37_17_tpl_5_rdcnt_q ? 1'b1 : 1'b0);

    // redist18_sync_together342_aunroll_vunroll_x_in_c1_eni37_17_tpl_5_cmpReg(REG,574)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist18_sync_together342_aunroll_vunroll_x_in_c1_eni37_17_tpl_5_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist18_sync_together342_aunroll_vunroll_x_in_c1_eni37_17_tpl_5_cmpReg_q <= $unsigned(redist18_sync_together342_aunroll_vunroll_x_in_c1_eni37_17_tpl_5_cmp_q);
        end
    end

    // redist18_sync_together342_aunroll_vunroll_x_in_c1_eni37_17_tpl_5_sticky_ena(REG,577)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist18_sync_together342_aunroll_vunroll_x_in_c1_eni37_17_tpl_5_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist18_sync_together342_aunroll_vunroll_x_in_c1_eni37_17_tpl_5_nor_q == 1'b1)
        begin
            redist18_sync_together342_aunroll_vunroll_x_in_c1_eni37_17_tpl_5_sticky_ena_q <= $unsigned(redist18_sync_together342_aunroll_vunroll_x_in_c1_eni37_17_tpl_5_cmpReg_q);
        end
    end

    // redist18_sync_together342_aunroll_vunroll_x_in_c1_eni37_17_tpl_5_enaAnd(LOGICAL,578)
    assign redist18_sync_together342_aunroll_vunroll_x_in_c1_eni37_17_tpl_5_enaAnd_q = redist18_sync_together342_aunroll_vunroll_x_in_c1_eni37_17_tpl_5_sticky_ena_q & VCC_q;

    // redist18_sync_together342_aunroll_vunroll_x_in_c1_eni37_17_tpl_5_rdcnt(COUNTER,570)
    // low=0, high=2, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist18_sync_together342_aunroll_vunroll_x_in_c1_eni37_17_tpl_5_rdcnt_i <= 2'd0;
            redist18_sync_together342_aunroll_vunroll_x_in_c1_eni37_17_tpl_5_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist18_sync_together342_aunroll_vunroll_x_in_c1_eni37_17_tpl_5_rdcnt_i == 2'd1)
            begin
                redist18_sync_together342_aunroll_vunroll_x_in_c1_eni37_17_tpl_5_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist18_sync_together342_aunroll_vunroll_x_in_c1_eni37_17_tpl_5_rdcnt_eq <= 1'b0;
            end
            if (redist18_sync_together342_aunroll_vunroll_x_in_c1_eni37_17_tpl_5_rdcnt_eq == 1'b1)
            begin
                redist18_sync_together342_aunroll_vunroll_x_in_c1_eni37_17_tpl_5_rdcnt_i <= $unsigned(redist18_sync_together342_aunroll_vunroll_x_in_c1_eni37_17_tpl_5_rdcnt_i) + $unsigned(2'd2);
            end
            else
            begin
                redist18_sync_together342_aunroll_vunroll_x_in_c1_eni37_17_tpl_5_rdcnt_i <= $unsigned(redist18_sync_together342_aunroll_vunroll_x_in_c1_eni37_17_tpl_5_rdcnt_i) + $unsigned(2'd1);
            end
        end
    end
    assign redist18_sync_together342_aunroll_vunroll_x_in_c1_eni37_17_tpl_5_rdcnt_q = redist18_sync_together342_aunroll_vunroll_x_in_c1_eni37_17_tpl_5_rdcnt_i[1:0];

    // redist18_sync_together342_aunroll_vunroll_x_in_c1_eni37_17_tpl_5_wraddr(REG,571)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist18_sync_together342_aunroll_vunroll_x_in_c1_eni37_17_tpl_5_wraddr_q <= $unsigned(2'b10);
        end
        else
        begin
            redist18_sync_together342_aunroll_vunroll_x_in_c1_eni37_17_tpl_5_wraddr_q <= $unsigned(redist18_sync_together342_aunroll_vunroll_x_in_c1_eni37_17_tpl_5_rdcnt_q);
        end
    end

    // redist18_sync_together342_aunroll_vunroll_x_in_c1_eni37_17_tpl_5_mem(DUALMEM,569)
    assign redist18_sync_together342_aunroll_vunroll_x_in_c1_eni37_17_tpl_5_mem_ia = $unsigned(in_c1_eni37_17_tpl);
    assign redist18_sync_together342_aunroll_vunroll_x_in_c1_eni37_17_tpl_5_mem_aa = redist18_sync_together342_aunroll_vunroll_x_in_c1_eni37_17_tpl_5_wraddr_q;
    assign redist18_sync_together342_aunroll_vunroll_x_in_c1_eni37_17_tpl_5_mem_ab = redist18_sync_together342_aunroll_vunroll_x_in_c1_eni37_17_tpl_5_rdcnt_q;
    assign redist18_sync_together342_aunroll_vunroll_x_in_c1_eni37_17_tpl_5_mem_reset0 = ~ (resetn);
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
    ) redist18_sync_together342_aunroll_vunroll_x_in_c1_eni37_17_tpl_5_mem_dmem (
        .clocken1(redist18_sync_together342_aunroll_vunroll_x_in_c1_eni37_17_tpl_5_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist18_sync_together342_aunroll_vunroll_x_in_c1_eni37_17_tpl_5_mem_reset0),
        .clock1(clock),
        .address_a(redist18_sync_together342_aunroll_vunroll_x_in_c1_eni37_17_tpl_5_mem_aa),
        .data_a(redist18_sync_together342_aunroll_vunroll_x_in_c1_eni37_17_tpl_5_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist18_sync_together342_aunroll_vunroll_x_in_c1_eni37_17_tpl_5_mem_ab),
        .q_b(redist18_sync_together342_aunroll_vunroll_x_in_c1_eni37_17_tpl_5_mem_iq),
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
    assign redist18_sync_together342_aunroll_vunroll_x_in_c1_eni37_17_tpl_5_mem_q = redist18_sync_together342_aunroll_vunroll_x_in_c1_eni37_17_tpl_5_mem_iq[31:0];

    // redist18_sync_together342_aunroll_vunroll_x_in_c1_eni37_17_tpl_5_outputreg0(DELAY,568)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist18_sync_together342_aunroll_vunroll_x_in_c1_eni37_17_tpl_5_outputreg0_q <= '0;
        end
        else
        begin
            redist18_sync_together342_aunroll_vunroll_x_in_c1_eni37_17_tpl_5_outputreg0_q <= $unsigned(redist18_sync_together342_aunroll_vunroll_x_in_c1_eni37_17_tpl_5_mem_q);
        end
    end

    // i_llvm_fpga_pop_f32_arrayidx131_15_promoted_e99_pop98_conv2d1x172(BLACKBOX,124)@153
    // out out_feedback_stall_out_98@20000000
    conv2d1x1_i_llvm_fpga_pop_f32_arrayidx130000promoted_e99_pop98_0 thei_llvm_fpga_pop_f32_arrayidx131_15_promoted_e99_pop98_conv2d1x172 (
        .in_data_in(redist18_sync_together342_aunroll_vunroll_x_in_c1_eni37_17_tpl_5_outputreg0_q),
        .in_dir(i_llvm_fpga_fanout_i1_c1_ene2566_fanout_adaptor596_conv2d1x12_q),
        .in_feedback_in_98(i_llvm_fpga_push_f32_arrayidx131_15_promoted_e99_push98_conv2d1x173_out_feedback_out_98),
        .in_feedback_valid_in_98(i_llvm_fpga_push_f32_arrayidx131_15_promoted_e99_push98_conv2d1x173_out_feedback_valid_out_98),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg50_q),
        .out_data_out(i_llvm_fpga_pop_f32_arrayidx131_15_promoted_e99_pop98_conv2d1x172_out_data_out),
        .out_feedback_stall_out_98(i_llvm_fpga_pop_f32_arrayidx131_15_promoted_e99_pop98_conv2d1x172_out_feedback_stall_out_98),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist54_sync_together342_aunroll_vunroll_x_in_c1_eni37_37_tpl_5(DELAY,397)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist54_sync_together342_aunroll_vunroll_x_in_c1_eni37_37_tpl_5_delay_0 <= '0;
            redist54_sync_together342_aunroll_vunroll_x_in_c1_eni37_37_tpl_5_delay_1 <= '0;
            redist54_sync_together342_aunroll_vunroll_x_in_c1_eni37_37_tpl_5_delay_2 <= '0;
            redist54_sync_together342_aunroll_vunroll_x_in_c1_eni37_37_tpl_5_delay_3 <= '0;
            redist54_sync_together342_aunroll_vunroll_x_in_c1_eni37_37_tpl_5_q <= '0;
        end
        else
        begin
            redist54_sync_together342_aunroll_vunroll_x_in_c1_eni37_37_tpl_5_delay_0 <= $unsigned(in_c1_eni37_37_tpl);
            redist54_sync_together342_aunroll_vunroll_x_in_c1_eni37_37_tpl_5_delay_1 <= redist54_sync_together342_aunroll_vunroll_x_in_c1_eni37_37_tpl_5_delay_0;
            redist54_sync_together342_aunroll_vunroll_x_in_c1_eni37_37_tpl_5_delay_2 <= redist54_sync_together342_aunroll_vunroll_x_in_c1_eni37_37_tpl_5_delay_1;
            redist54_sync_together342_aunroll_vunroll_x_in_c1_eni37_37_tpl_5_delay_3 <= redist54_sync_together342_aunroll_vunroll_x_in_c1_eni37_37_tpl_5_delay_2;
            redist54_sync_together342_aunroll_vunroll_x_in_c1_eni37_37_tpl_5_q <= redist54_sync_together342_aunroll_vunroll_x_in_c1_eni37_37_tpl_5_delay_3;
        end
    end

    // i_select36_conv2d1x174(MUX,219)@153
    assign i_select36_conv2d1x174_s = redist54_sync_together342_aunroll_vunroll_x_in_c1_eni37_37_tpl_5_q;
    always @(i_select36_conv2d1x174_s or i_llvm_fpga_pop_f32_arrayidx131_15_promoted_e99_pop98_conv2d1x172_out_data_out or i_llvm_fpga_fp_multadd_mult_add_conv2d1x142_out_primWireOut)
    begin
        unique case (i_select36_conv2d1x174_s)
            1'b0 : i_select36_conv2d1x174_q = i_llvm_fpga_pop_f32_arrayidx131_15_promoted_e99_pop98_conv2d1x172_out_data_out;
            1'b1 : i_select36_conv2d1x174_q = i_llvm_fpga_fp_multadd_mult_add_conv2d1x142_out_primWireOut;
            default : i_select36_conv2d1x174_q = 32'b0;
        endcase
    end

    // valid_fanout_reg47(REG,292)@148 + 1
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

    // valid_fanout_reg48(REG,293)@150 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg48_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg48_q <= $unsigned(redist55_sync_together342_aunroll_vunroll_x_in_i_valid_2_q);
        end
    end

    // valid_fanout_reg8(REG,253)@150 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg8_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg8_q <= $unsigned(redist55_sync_together342_aunroll_vunroll_x_in_i_valid_2_q);
        end
    end

    // valid_fanout_reg24(REG,269)@152 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg24_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg24_q <= $unsigned(redist56_sync_together342_aunroll_vunroll_x_in_i_valid_4_q);
        end
    end

    // i_llvm_fpga_fanout_i1_c1_ene18582_fanout_adaptor599_conv2d1x16(REG,102)@152 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_llvm_fpga_fanout_i1_c1_ene18582_fanout_adaptor599_conv2d1x16_q <= $unsigned(1'b0);
        end
        else
        begin
            i_llvm_fpga_fanout_i1_c1_ene18582_fanout_adaptor599_conv2d1x16_q <= redist20_sync_together342_aunroll_vunroll_x_in_c1_eni37_18_tpl_4_q;
        end
    end

    // i_llvm_fpga_push_f32_push46_conv2d1x133(BLACKBOX,199)@153
    // out out_feedback_out_46@20000000
    // out out_feedback_valid_out_46@20000000
    conv2d1x1_i_llvm_fpga_push_f32_push46_0 thei_llvm_fpga_push_f32_push46_conv2d1x133 (
        .in_c1_ene18582_fanout_adaptor599(i_llvm_fpga_fanout_i1_c1_ene18582_fanout_adaptor599_conv2d1x16_q),
        .in_data_in(i_llvm_fpga_pop_f32_pop38_conv2d1x125_out_data_out),
        .in_feedback_stall_in_46(i_llvm_fpga_pop_f32_pop46_conv2d1x117_out_feedback_stall_out_46),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg24_q),
        .out_data_out(),
        .out_feedback_out_46(i_llvm_fpga_push_f32_push46_conv2d1x133_out_feedback_out_46),
        .out_feedback_valid_out_46(i_llvm_fpga_push_f32_push46_conv2d1x133_out_feedback_valid_out_46),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_f32_pop46_conv2d1x117(BLACKBOX,140)@151
    // out out_feedback_stall_out_46@20000000
    conv2d1x1_i_llvm_fpga_pop_f32_pop46_0 thei_llvm_fpga_pop_f32_pop46_conv2d1x117 (
        .in_data_in(redist9_sync_together342_aunroll_vunroll_x_in_c1_eni37_9_tpl_3_mem_q),
        .in_dir(i_llvm_fpga_fanout_i1_c1_ene2566_fanout_adaptor_conv2d1x15_q),
        .in_feedback_in_46(i_llvm_fpga_push_f32_push46_conv2d1x133_out_feedback_out_46),
        .in_feedback_valid_in_46(i_llvm_fpga_push_f32_push46_conv2d1x133_out_feedback_valid_out_46),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg8_q),
        .out_data_out(i_llvm_fpga_pop_f32_pop46_conv2d1x117_out_data_out),
        .out_feedback_stall_out_46(i_llvm_fpga_pop_f32_pop46_conv2d1x117_out_feedback_stall_out_46),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_fanout_i1_c1_ene18582_fanout_adaptor598_conv2d1x17(REG,101)@150 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_llvm_fpga_fanout_i1_c1_ene18582_fanout_adaptor598_conv2d1x17_q <= $unsigned(1'b0);
        end
        else
        begin
            i_llvm_fpga_fanout_i1_c1_ene18582_fanout_adaptor598_conv2d1x17_q <= redist19_sync_together342_aunroll_vunroll_x_in_c1_eni37_18_tpl_2_q;
        end
    end

    // i_llvm_fpga_push_f32_push54_conv2d1x169(BLACKBOX,207)@151
    // out out_feedback_out_54@20000000
    // out out_feedback_valid_out_54@20000000
    conv2d1x1_i_llvm_fpga_push_f32_push54_0 thei_llvm_fpga_push_f32_push54_conv2d1x169 (
        .in_c1_ene18582_fanout_adaptor598(i_llvm_fpga_fanout_i1_c1_ene18582_fanout_adaptor598_conv2d1x17_q),
        .in_data_in(i_llvm_fpga_pop_f32_pop46_conv2d1x117_out_data_out),
        .in_feedback_stall_in_54(i_llvm_fpga_pop_f32_pop54_conv2d1x168_out_feedback_stall_out_54),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg48_q),
        .out_data_out(),
        .out_feedback_out_54(i_llvm_fpga_push_f32_push54_conv2d1x169_out_feedback_out_54),
        .out_feedback_valid_out_54(i_llvm_fpga_push_f32_push54_conv2d1x169_out_feedback_valid_out_54),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_f32_pop54_conv2d1x168(BLACKBOX,148)@149
    // out out_feedback_stall_out_54@20000000
    conv2d1x1_i_llvm_fpga_pop_f32_pop54_0 thei_llvm_fpga_pop_f32_pop54_conv2d1x168 (
        .in_data_in(redist51_sync_together342_aunroll_vunroll_x_in_c1_eni37_35_tpl_1_q),
        .in_dir(i_llvm_fpga_fanout_i1_c1_ene2566_fanout_adaptor594_conv2d1x14_q),
        .in_feedback_in_54(i_llvm_fpga_push_f32_push54_conv2d1x169_out_feedback_out_54),
        .in_feedback_valid_in_54(i_llvm_fpga_push_f32_push54_conv2d1x169_out_feedback_valid_out_54),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg47_q),
        .out_data_out(i_llvm_fpga_pop_f32_pop54_conv2d1x168_out_data_out),
        .out_feedback_stall_out_54(i_llvm_fpga_pop_f32_pop54_conv2d1x168_out_feedback_stall_out_54),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist53_sync_together342_aunroll_vunroll_x_in_c1_eni37_36_tpl_1(DELAY,396)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist53_sync_together342_aunroll_vunroll_x_in_c1_eni37_36_tpl_1_q <= '0;
        end
        else
        begin
            redist53_sync_together342_aunroll_vunroll_x_in_c1_eni37_36_tpl_1_q <= $unsigned(in_c1_eni37_36_tpl);
        end
    end

    // redist29_sync_together342_aunroll_vunroll_x_in_c1_eni37_7_20_tpl_1(DELAY,372)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist29_sync_together342_aunroll_vunroll_x_in_c1_eni37_7_20_tpl_1_q <= '0;
        end
        else
        begin
            redist29_sync_together342_aunroll_vunroll_x_in_c1_eni37_7_20_tpl_1_q <= $unsigned(in_c1_eni37_7_20_tpl);
        end
    end

    // i_llvm_fpga_fp_multadd_mult_add107_conv2d1x170(BLACKBOX,117)@149
    // out out_primWireOut@153
    conv2d1x1_flt_i_sfc_logic_s_c1_in_for_bo0000xk5id06uq0cp0jv34qcz thei_llvm_fpga_fp_multadd_mult_add107_conv2d1x170 (
        .in_0(redist29_sync_together342_aunroll_vunroll_x_in_c1_eni37_7_20_tpl_1_q),
        .in_1(redist53_sync_together342_aunroll_vunroll_x_in_c1_eni37_36_tpl_1_q),
        .in_2(i_llvm_fpga_pop_f32_pop54_conv2d1x168_out_data_out),
        .out_primWireOut(i_llvm_fpga_fp_multadd_mult_add107_conv2d1x170_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg44(REG,289)@148 + 1
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

    // valid_fanout_reg45(REG,290)@150 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg45_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg45_q <= $unsigned(redist55_sync_together342_aunroll_vunroll_x_in_i_valid_2_q);
        end
    end

    // valid_fanout_reg7(REG,252)@150 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg7_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg7_q <= $unsigned(redist55_sync_together342_aunroll_vunroll_x_in_i_valid_2_q);
        end
    end

    // valid_fanout_reg23(REG,268)@152 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg23_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg23_q <= $unsigned(redist56_sync_together342_aunroll_vunroll_x_in_i_valid_4_q);
        end
    end

    // redist83_i_llvm_fpga_fanout_i1_c1_ene18582_fanout_adaptor598_conv2d1x17_q_2(DELAY,426)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist83_i_llvm_fpga_fanout_i1_c1_ene18582_fanout_adaptor598_conv2d1x17_q_2_delay_0 <= '0;
            redist83_i_llvm_fpga_fanout_i1_c1_ene18582_fanout_adaptor598_conv2d1x17_q_2_q <= '0;
        end
        else
        begin
            redist83_i_llvm_fpga_fanout_i1_c1_ene18582_fanout_adaptor598_conv2d1x17_q_2_delay_0 <= $unsigned(i_llvm_fpga_fanout_i1_c1_ene18582_fanout_adaptor598_conv2d1x17_q);
            redist83_i_llvm_fpga_fanout_i1_c1_ene18582_fanout_adaptor598_conv2d1x17_q_2_q <= redist83_i_llvm_fpga_fanout_i1_c1_ene18582_fanout_adaptor598_conv2d1x17_q_2_delay_0;
        end
    end

    // i_llvm_fpga_push_f32_push47_conv2d1x132(BLACKBOX,200)@153
    // out out_feedback_out_47@20000000
    // out out_feedback_valid_out_47@20000000
    conv2d1x1_i_llvm_fpga_push_f32_push47_0 thei_llvm_fpga_push_f32_push47_conv2d1x132 (
        .in_c1_ene18582_fanout_adaptor598(redist83_i_llvm_fpga_fanout_i1_c1_ene18582_fanout_adaptor598_conv2d1x17_q_2_q),
        .in_data_in(i_llvm_fpga_pop_f32_pop39_conv2d1x124_out_data_out),
        .in_feedback_stall_in_47(i_llvm_fpga_pop_f32_pop47_conv2d1x116_out_feedback_stall_out_47),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg23_q),
        .out_data_out(),
        .out_feedback_out_47(i_llvm_fpga_push_f32_push47_conv2d1x132_out_feedback_out_47),
        .out_feedback_valid_out_47(i_llvm_fpga_push_f32_push47_conv2d1x132_out_feedback_valid_out_47),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_f32_pop47_conv2d1x116(BLACKBOX,141)@151
    // out out_feedback_stall_out_47@20000000
    conv2d1x1_i_llvm_fpga_pop_f32_pop47_0 thei_llvm_fpga_pop_f32_pop47_conv2d1x116 (
        .in_data_in(redist8_sync_together342_aunroll_vunroll_x_in_c1_eni37_8_tpl_3_mem_q),
        .in_dir(i_llvm_fpga_fanout_i1_c1_ene2566_fanout_adaptor_conv2d1x15_q),
        .in_feedback_in_47(i_llvm_fpga_push_f32_push47_conv2d1x132_out_feedback_out_47),
        .in_feedback_valid_in_47(i_llvm_fpga_push_f32_push47_conv2d1x132_out_feedback_valid_out_47),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg7_q),
        .out_data_out(i_llvm_fpga_pop_f32_pop47_conv2d1x116_out_data_out),
        .out_feedback_stall_out_47(i_llvm_fpga_pop_f32_pop47_conv2d1x116_out_feedback_stall_out_47),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_f32_push55_conv2d1x165(BLACKBOX,208)@151
    // out out_feedback_out_55@20000000
    // out out_feedback_valid_out_55@20000000
    conv2d1x1_i_llvm_fpga_push_f32_push55_0 thei_llvm_fpga_push_f32_push55_conv2d1x165 (
        .in_c1_ene18582_fanout_adaptor598(i_llvm_fpga_fanout_i1_c1_ene18582_fanout_adaptor598_conv2d1x17_q),
        .in_data_in(i_llvm_fpga_pop_f32_pop47_conv2d1x116_out_data_out),
        .in_feedback_stall_in_55(i_llvm_fpga_pop_f32_pop55_conv2d1x164_out_feedback_stall_out_55),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg45_q),
        .out_data_out(),
        .out_feedback_out_55(i_llvm_fpga_push_f32_push55_conv2d1x165_out_feedback_out_55),
        .out_feedback_valid_out_55(i_llvm_fpga_push_f32_push55_conv2d1x165_out_feedback_valid_out_55),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_f32_pop55_conv2d1x164(BLACKBOX,149)@149
    // out out_feedback_stall_out_55@20000000
    conv2d1x1_i_llvm_fpga_pop_f32_pop55_0 thei_llvm_fpga_pop_f32_pop55_conv2d1x164 (
        .in_data_in(redist48_sync_together342_aunroll_vunroll_x_in_c1_eni37_33_tpl_1_q),
        .in_dir(i_llvm_fpga_fanout_i1_c1_ene2566_fanout_adaptor594_conv2d1x14_q),
        .in_feedback_in_55(i_llvm_fpga_push_f32_push55_conv2d1x165_out_feedback_out_55),
        .in_feedback_valid_in_55(i_llvm_fpga_push_f32_push55_conv2d1x165_out_feedback_valid_out_55),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg44_q),
        .out_data_out(i_llvm_fpga_pop_f32_pop55_conv2d1x164_out_data_out),
        .out_feedback_stall_out_55(i_llvm_fpga_pop_f32_pop55_conv2d1x164_out_feedback_stall_out_55),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist50_sync_together342_aunroll_vunroll_x_in_c1_eni37_34_tpl_1(DELAY,393)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist50_sync_together342_aunroll_vunroll_x_in_c1_eni37_34_tpl_1_q <= '0;
        end
        else
        begin
            redist50_sync_together342_aunroll_vunroll_x_in_c1_eni37_34_tpl_1_q <= $unsigned(in_c1_eni37_34_tpl);
        end
    end

    // redist28_sync_together342_aunroll_vunroll_x_in_c1_eni37_6_20_tpl_1(DELAY,371)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist28_sync_together342_aunroll_vunroll_x_in_c1_eni37_6_20_tpl_1_q <= '0;
        end
        else
        begin
            redist28_sync_together342_aunroll_vunroll_x_in_c1_eni37_6_20_tpl_1_q <= $unsigned(in_c1_eni37_6_20_tpl);
        end
    end

    // i_llvm_fpga_fp_multadd_mult_add106_conv2d1x166(BLACKBOX,116)@149
    // out out_primWireOut@153
    conv2d1x1_flt_i_sfc_logic_s_c1_in_for_bo0000xk5id06uq0cp0jv34qcz thei_llvm_fpga_fp_multadd_mult_add106_conv2d1x166 (
        .in_0(redist28_sync_together342_aunroll_vunroll_x_in_c1_eni37_6_20_tpl_1_q),
        .in_1(redist50_sync_together342_aunroll_vunroll_x_in_c1_eni37_34_tpl_1_q),
        .in_2(i_llvm_fpga_pop_f32_pop55_conv2d1x164_out_data_out),
        .out_primWireOut(i_llvm_fpga_fp_multadd_mult_add106_conv2d1x166_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg41(REG,286)@148 + 1
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

    // valid_fanout_reg42(REG,287)@150 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg42_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg42_q <= $unsigned(redist55_sync_together342_aunroll_vunroll_x_in_i_valid_2_q);
        end
    end

    // valid_fanout_reg6(REG,251)@150 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg6_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg6_q <= $unsigned(redist55_sync_together342_aunroll_vunroll_x_in_i_valid_2_q);
        end
    end

    // valid_fanout_reg22(REG,267)@152 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg22_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg22_q <= $unsigned(redist56_sync_together342_aunroll_vunroll_x_in_i_valid_4_q);
        end
    end

    // i_llvm_fpga_push_f32_push48_conv2d1x131(BLACKBOX,201)@153
    // out out_feedback_out_48@20000000
    // out out_feedback_valid_out_48@20000000
    conv2d1x1_i_llvm_fpga_push_f32_push48_0 thei_llvm_fpga_push_f32_push48_conv2d1x131 (
        .in_c1_ene18582_fanout_adaptor598(redist83_i_llvm_fpga_fanout_i1_c1_ene18582_fanout_adaptor598_conv2d1x17_q_2_q),
        .in_data_in(i_llvm_fpga_pop_f32_pop40_conv2d1x123_out_data_out),
        .in_feedback_stall_in_48(i_llvm_fpga_pop_f32_pop48_conv2d1x115_out_feedback_stall_out_48),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg22_q),
        .out_data_out(),
        .out_feedback_out_48(i_llvm_fpga_push_f32_push48_conv2d1x131_out_feedback_out_48),
        .out_feedback_valid_out_48(i_llvm_fpga_push_f32_push48_conv2d1x131_out_feedback_valid_out_48),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_f32_pop48_conv2d1x115(BLACKBOX,142)@151
    // out out_feedback_stall_out_48@20000000
    conv2d1x1_i_llvm_fpga_pop_f32_pop48_0 thei_llvm_fpga_pop_f32_pop48_conv2d1x115 (
        .in_data_in(redist7_sync_together342_aunroll_vunroll_x_in_c1_eni37_7_tpl_3_mem_q),
        .in_dir(i_llvm_fpga_fanout_i1_c1_ene2566_fanout_adaptor_conv2d1x15_q),
        .in_feedback_in_48(i_llvm_fpga_push_f32_push48_conv2d1x131_out_feedback_out_48),
        .in_feedback_valid_in_48(i_llvm_fpga_push_f32_push48_conv2d1x131_out_feedback_valid_out_48),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg6_q),
        .out_data_out(i_llvm_fpga_pop_f32_pop48_conv2d1x115_out_data_out),
        .out_feedback_stall_out_48(i_llvm_fpga_pop_f32_pop48_conv2d1x115_out_feedback_stall_out_48),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_f32_push56_conv2d1x161(BLACKBOX,209)@151
    // out out_feedback_out_56@20000000
    // out out_feedback_valid_out_56@20000000
    conv2d1x1_i_llvm_fpga_push_f32_push56_0 thei_llvm_fpga_push_f32_push56_conv2d1x161 (
        .in_c1_ene18582_fanout_adaptor598(i_llvm_fpga_fanout_i1_c1_ene18582_fanout_adaptor598_conv2d1x17_q),
        .in_data_in(i_llvm_fpga_pop_f32_pop48_conv2d1x115_out_data_out),
        .in_feedback_stall_in_56(i_llvm_fpga_pop_f32_pop56_conv2d1x160_out_feedback_stall_out_56),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg42_q),
        .out_data_out(),
        .out_feedback_out_56(i_llvm_fpga_push_f32_push56_conv2d1x161_out_feedback_out_56),
        .out_feedback_valid_out_56(i_llvm_fpga_push_f32_push56_conv2d1x161_out_feedback_valid_out_56),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_f32_pop56_conv2d1x160(BLACKBOX,150)@149
    // out out_feedback_stall_out_56@20000000
    conv2d1x1_i_llvm_fpga_pop_f32_pop56_0 thei_llvm_fpga_pop_f32_pop56_conv2d1x160 (
        .in_data_in(redist45_sync_together342_aunroll_vunroll_x_in_c1_eni37_31_tpl_1_q),
        .in_dir(i_llvm_fpga_fanout_i1_c1_ene2566_fanout_adaptor594_conv2d1x14_q),
        .in_feedback_in_56(i_llvm_fpga_push_f32_push56_conv2d1x161_out_feedback_out_56),
        .in_feedback_valid_in_56(i_llvm_fpga_push_f32_push56_conv2d1x161_out_feedback_valid_out_56),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg41_q),
        .out_data_out(i_llvm_fpga_pop_f32_pop56_conv2d1x160_out_data_out),
        .out_feedback_stall_out_56(i_llvm_fpga_pop_f32_pop56_conv2d1x160_out_feedback_stall_out_56),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist47_sync_together342_aunroll_vunroll_x_in_c1_eni37_32_tpl_1(DELAY,390)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist47_sync_together342_aunroll_vunroll_x_in_c1_eni37_32_tpl_1_q <= '0;
        end
        else
        begin
            redist47_sync_together342_aunroll_vunroll_x_in_c1_eni37_32_tpl_1_q <= $unsigned(in_c1_eni37_32_tpl);
        end
    end

    // redist27_sync_together342_aunroll_vunroll_x_in_c1_eni37_5_20_tpl_1(DELAY,370)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist27_sync_together342_aunroll_vunroll_x_in_c1_eni37_5_20_tpl_1_q <= '0;
        end
        else
        begin
            redist27_sync_together342_aunroll_vunroll_x_in_c1_eni37_5_20_tpl_1_q <= $unsigned(in_c1_eni37_5_20_tpl);
        end
    end

    // i_llvm_fpga_fp_multadd_mult_add105_conv2d1x162(BLACKBOX,115)@149
    // out out_primWireOut@153
    conv2d1x1_flt_i_sfc_logic_s_c1_in_for_bo0000xk5id06uq0cp0jv34qcz thei_llvm_fpga_fp_multadd_mult_add105_conv2d1x162 (
        .in_0(redist27_sync_together342_aunroll_vunroll_x_in_c1_eni37_5_20_tpl_1_q),
        .in_1(redist47_sync_together342_aunroll_vunroll_x_in_c1_eni37_32_tpl_1_q),
        .in_2(i_llvm_fpga_pop_f32_pop56_conv2d1x160_out_data_out),
        .out_primWireOut(i_llvm_fpga_fp_multadd_mult_add105_conv2d1x162_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg38(REG,283)@148 + 1
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

    // valid_fanout_reg39(REG,284)@150 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg39_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg39_q <= $unsigned(redist55_sync_together342_aunroll_vunroll_x_in_i_valid_2_q);
        end
    end

    // valid_fanout_reg5(REG,250)@150 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg5_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg5_q <= $unsigned(redist55_sync_together342_aunroll_vunroll_x_in_i_valid_2_q);
        end
    end

    // valid_fanout_reg21(REG,266)@152 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg21_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg21_q <= $unsigned(redist56_sync_together342_aunroll_vunroll_x_in_i_valid_4_q);
        end
    end

    // i_llvm_fpga_push_f32_push49_conv2d1x130(BLACKBOX,202)@153
    // out out_feedback_out_49@20000000
    // out out_feedback_valid_out_49@20000000
    conv2d1x1_i_llvm_fpga_push_f32_push49_0 thei_llvm_fpga_push_f32_push49_conv2d1x130 (
        .in_c1_ene18582_fanout_adaptor598(redist83_i_llvm_fpga_fanout_i1_c1_ene18582_fanout_adaptor598_conv2d1x17_q_2_q),
        .in_data_in(i_llvm_fpga_pop_f32_pop41_conv2d1x122_out_data_out),
        .in_feedback_stall_in_49(i_llvm_fpga_pop_f32_pop49_conv2d1x114_out_feedback_stall_out_49),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg21_q),
        .out_data_out(),
        .out_feedback_out_49(i_llvm_fpga_push_f32_push49_conv2d1x130_out_feedback_out_49),
        .out_feedback_valid_out_49(i_llvm_fpga_push_f32_push49_conv2d1x130_out_feedback_valid_out_49),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_f32_pop49_conv2d1x114(BLACKBOX,143)@151
    // out out_feedback_stall_out_49@20000000
    conv2d1x1_i_llvm_fpga_pop_f32_pop49_0 thei_llvm_fpga_pop_f32_pop49_conv2d1x114 (
        .in_data_in(redist6_sync_together342_aunroll_vunroll_x_in_c1_eni37_6_tpl_3_mem_q),
        .in_dir(redist82_i_llvm_fpga_fanout_i1_c1_ene2566_fanout_adaptor594_conv2d1x14_q_2_q),
        .in_feedback_in_49(i_llvm_fpga_push_f32_push49_conv2d1x130_out_feedback_out_49),
        .in_feedback_valid_in_49(i_llvm_fpga_push_f32_push49_conv2d1x130_out_feedback_valid_out_49),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_data_out(i_llvm_fpga_pop_f32_pop49_conv2d1x114_out_data_out),
        .out_feedback_stall_out_49(i_llvm_fpga_pop_f32_pop49_conv2d1x114_out_feedback_stall_out_49),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_f32_push57_conv2d1x157(BLACKBOX,210)@151
    // out out_feedback_out_57@20000000
    // out out_feedback_valid_out_57@20000000
    conv2d1x1_i_llvm_fpga_push_f32_push57_0 thei_llvm_fpga_push_f32_push57_conv2d1x157 (
        .in_c1_ene18582_fanout_adaptor598(i_llvm_fpga_fanout_i1_c1_ene18582_fanout_adaptor598_conv2d1x17_q),
        .in_data_in(i_llvm_fpga_pop_f32_pop49_conv2d1x114_out_data_out),
        .in_feedback_stall_in_57(i_llvm_fpga_pop_f32_pop57_conv2d1x156_out_feedback_stall_out_57),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg39_q),
        .out_data_out(),
        .out_feedback_out_57(i_llvm_fpga_push_f32_push57_conv2d1x157_out_feedback_out_57),
        .out_feedback_valid_out_57(i_llvm_fpga_push_f32_push57_conv2d1x157_out_feedback_valid_out_57),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_f32_pop57_conv2d1x156(BLACKBOX,151)@149
    // out out_feedback_stall_out_57@20000000
    conv2d1x1_i_llvm_fpga_pop_f32_pop57_0 thei_llvm_fpga_pop_f32_pop57_conv2d1x156 (
        .in_data_in(redist42_sync_together342_aunroll_vunroll_x_in_c1_eni37_29_tpl_1_q),
        .in_dir(i_llvm_fpga_fanout_i1_c1_ene2566_fanout_adaptor594_conv2d1x14_q),
        .in_feedback_in_57(i_llvm_fpga_push_f32_push57_conv2d1x157_out_feedback_out_57),
        .in_feedback_valid_in_57(i_llvm_fpga_push_f32_push57_conv2d1x157_out_feedback_valid_out_57),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg38_q),
        .out_data_out(i_llvm_fpga_pop_f32_pop57_conv2d1x156_out_data_out),
        .out_feedback_stall_out_57(i_llvm_fpga_pop_f32_pop57_conv2d1x156_out_feedback_stall_out_57),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist44_sync_together342_aunroll_vunroll_x_in_c1_eni37_30_tpl_1(DELAY,387)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist44_sync_together342_aunroll_vunroll_x_in_c1_eni37_30_tpl_1_q <= '0;
        end
        else
        begin
            redist44_sync_together342_aunroll_vunroll_x_in_c1_eni37_30_tpl_1_q <= $unsigned(in_c1_eni37_30_tpl);
        end
    end

    // redist26_sync_together342_aunroll_vunroll_x_in_c1_eni37_4_20_tpl_1(DELAY,369)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist26_sync_together342_aunroll_vunroll_x_in_c1_eni37_4_20_tpl_1_q <= '0;
        end
        else
        begin
            redist26_sync_together342_aunroll_vunroll_x_in_c1_eni37_4_20_tpl_1_q <= $unsigned(in_c1_eni37_4_20_tpl);
        end
    end

    // i_llvm_fpga_fp_multadd_mult_add104_conv2d1x158(BLACKBOX,114)@149
    // out out_primWireOut@153
    conv2d1x1_flt_i_sfc_logic_s_c1_in_for_bo0000xk5id06uq0cp0jv34qcz thei_llvm_fpga_fp_multadd_mult_add104_conv2d1x158 (
        .in_0(redist26_sync_together342_aunroll_vunroll_x_in_c1_eni37_4_20_tpl_1_q),
        .in_1(redist44_sync_together342_aunroll_vunroll_x_in_c1_eni37_30_tpl_1_q),
        .in_2(i_llvm_fpga_pop_f32_pop57_conv2d1x156_out_data_out),
        .out_primWireOut(i_llvm_fpga_fp_multadd_mult_add104_conv2d1x158_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg35(REG,280)@148 + 1
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

    // valid_fanout_reg36(REG,281)@150 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg36_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg36_q <= $unsigned(redist55_sync_together342_aunroll_vunroll_x_in_i_valid_2_q);
        end
    end

    // valid_fanout_reg4(REG,249)@150 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg4_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg4_q <= $unsigned(redist55_sync_together342_aunroll_vunroll_x_in_i_valid_2_q);
        end
    end

    // valid_fanout_reg20(REG,265)@152 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg20_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg20_q <= $unsigned(redist56_sync_together342_aunroll_vunroll_x_in_i_valid_4_q);
        end
    end

    // i_llvm_fpga_push_f32_push50_conv2d1x129(BLACKBOX,203)@153
    // out out_feedback_out_50@20000000
    // out out_feedback_valid_out_50@20000000
    conv2d1x1_i_llvm_fpga_push_f32_push50_0 thei_llvm_fpga_push_f32_push50_conv2d1x129 (
        .in_c1_ene18582_fanout_adaptor598(redist83_i_llvm_fpga_fanout_i1_c1_ene18582_fanout_adaptor598_conv2d1x17_q_2_q),
        .in_data_in(i_llvm_fpga_pop_f32_pop42_conv2d1x121_out_data_out),
        .in_feedback_stall_in_50(i_llvm_fpga_pop_f32_pop50_conv2d1x113_out_feedback_stall_out_50),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg20_q),
        .out_data_out(),
        .out_feedback_out_50(i_llvm_fpga_push_f32_push50_conv2d1x129_out_feedback_out_50),
        .out_feedback_valid_out_50(i_llvm_fpga_push_f32_push50_conv2d1x129_out_feedback_valid_out_50),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_f32_pop50_conv2d1x113(BLACKBOX,144)@151
    // out out_feedback_stall_out_50@20000000
    conv2d1x1_i_llvm_fpga_pop_f32_pop50_0 thei_llvm_fpga_pop_f32_pop50_conv2d1x113 (
        .in_data_in(redist5_sync_together342_aunroll_vunroll_x_in_c1_eni37_5_tpl_3_mem_q),
        .in_dir(redist82_i_llvm_fpga_fanout_i1_c1_ene2566_fanout_adaptor594_conv2d1x14_q_2_q),
        .in_feedback_in_50(i_llvm_fpga_push_f32_push50_conv2d1x129_out_feedback_out_50),
        .in_feedback_valid_in_50(i_llvm_fpga_push_f32_push50_conv2d1x129_out_feedback_valid_out_50),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_data_out(i_llvm_fpga_pop_f32_pop50_conv2d1x113_out_data_out),
        .out_feedback_stall_out_50(i_llvm_fpga_pop_f32_pop50_conv2d1x113_out_feedback_stall_out_50),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_f32_push58_conv2d1x153(BLACKBOX,211)@151
    // out out_feedback_out_58@20000000
    // out out_feedback_valid_out_58@20000000
    conv2d1x1_i_llvm_fpga_push_f32_push58_0 thei_llvm_fpga_push_f32_push58_conv2d1x153 (
        .in_c1_ene18582_fanout_adaptor598(i_llvm_fpga_fanout_i1_c1_ene18582_fanout_adaptor598_conv2d1x17_q),
        .in_data_in(i_llvm_fpga_pop_f32_pop50_conv2d1x113_out_data_out),
        .in_feedback_stall_in_58(i_llvm_fpga_pop_f32_pop58_conv2d1x152_out_feedback_stall_out_58),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg36_q),
        .out_data_out(),
        .out_feedback_out_58(i_llvm_fpga_push_f32_push58_conv2d1x153_out_feedback_out_58),
        .out_feedback_valid_out_58(i_llvm_fpga_push_f32_push58_conv2d1x153_out_feedback_valid_out_58),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_f32_pop58_conv2d1x152(BLACKBOX,152)@149
    // out out_feedback_stall_out_58@20000000
    conv2d1x1_i_llvm_fpga_pop_f32_pop58_0 thei_llvm_fpga_pop_f32_pop58_conv2d1x152 (
        .in_data_in(redist39_sync_together342_aunroll_vunroll_x_in_c1_eni37_27_tpl_1_q),
        .in_dir(i_llvm_fpga_fanout_i1_c1_ene2566_fanout_adaptor594_conv2d1x14_q),
        .in_feedback_in_58(i_llvm_fpga_push_f32_push58_conv2d1x153_out_feedback_out_58),
        .in_feedback_valid_in_58(i_llvm_fpga_push_f32_push58_conv2d1x153_out_feedback_valid_out_58),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg35_q),
        .out_data_out(i_llvm_fpga_pop_f32_pop58_conv2d1x152_out_data_out),
        .out_feedback_stall_out_58(i_llvm_fpga_pop_f32_pop58_conv2d1x152_out_feedback_stall_out_58),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist41_sync_together342_aunroll_vunroll_x_in_c1_eni37_28_tpl_1(DELAY,384)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist41_sync_together342_aunroll_vunroll_x_in_c1_eni37_28_tpl_1_q <= '0;
        end
        else
        begin
            redist41_sync_together342_aunroll_vunroll_x_in_c1_eni37_28_tpl_1_q <= $unsigned(in_c1_eni37_28_tpl);
        end
    end

    // redist25_sync_together342_aunroll_vunroll_x_in_c1_eni37_3_20_tpl_1(DELAY,368)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist25_sync_together342_aunroll_vunroll_x_in_c1_eni37_3_20_tpl_1_q <= '0;
        end
        else
        begin
            redist25_sync_together342_aunroll_vunroll_x_in_c1_eni37_3_20_tpl_1_q <= $unsigned(in_c1_eni37_3_20_tpl);
        end
    end

    // i_llvm_fpga_fp_multadd_mult_add103_conv2d1x154(BLACKBOX,113)@149
    // out out_primWireOut@153
    conv2d1x1_flt_i_sfc_logic_s_c1_in_for_bo0000xk5id06uq0cp0jv34qcz thei_llvm_fpga_fp_multadd_mult_add103_conv2d1x154 (
        .in_0(redist25_sync_together342_aunroll_vunroll_x_in_c1_eni37_3_20_tpl_1_q),
        .in_1(redist41_sync_together342_aunroll_vunroll_x_in_c1_eni37_28_tpl_1_q),
        .in_2(i_llvm_fpga_pop_f32_pop58_conv2d1x152_out_data_out),
        .out_primWireOut(i_llvm_fpga_fp_multadd_mult_add103_conv2d1x154_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg32(REG,277)@148 + 1
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

    // valid_fanout_reg33(REG,278)@150 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg33_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg33_q <= $unsigned(redist55_sync_together342_aunroll_vunroll_x_in_i_valid_2_q);
        end
    end

    // valid_fanout_reg3(REG,248)@150 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg3_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg3_q <= $unsigned(redist55_sync_together342_aunroll_vunroll_x_in_i_valid_2_q);
        end
    end

    // valid_fanout_reg19(REG,264)@152 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg19_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg19_q <= $unsigned(redist56_sync_together342_aunroll_vunroll_x_in_i_valid_4_q);
        end
    end

    // i_llvm_fpga_push_f32_push51_conv2d1x128(BLACKBOX,204)@153
    // out out_feedback_out_51@20000000
    // out out_feedback_valid_out_51@20000000
    conv2d1x1_i_llvm_fpga_push_f32_push51_0 thei_llvm_fpga_push_f32_push51_conv2d1x128 (
        .in_c1_ene18582_fanout_adaptor598(redist83_i_llvm_fpga_fanout_i1_c1_ene18582_fanout_adaptor598_conv2d1x17_q_2_q),
        .in_data_in(i_llvm_fpga_pop_f32_pop43_conv2d1x120_out_data_out),
        .in_feedback_stall_in_51(i_llvm_fpga_pop_f32_pop51_conv2d1x112_out_feedback_stall_out_51),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg19_q),
        .out_data_out(),
        .out_feedback_out_51(i_llvm_fpga_push_f32_push51_conv2d1x128_out_feedback_out_51),
        .out_feedback_valid_out_51(i_llvm_fpga_push_f32_push51_conv2d1x128_out_feedback_valid_out_51),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_f32_pop51_conv2d1x112(BLACKBOX,145)@151
    // out out_feedback_stall_out_51@20000000
    conv2d1x1_i_llvm_fpga_pop_f32_pop51_0 thei_llvm_fpga_pop_f32_pop51_conv2d1x112 (
        .in_data_in(redist4_sync_together342_aunroll_vunroll_x_in_c1_eni37_4_tpl_3_mem_q),
        .in_dir(redist82_i_llvm_fpga_fanout_i1_c1_ene2566_fanout_adaptor594_conv2d1x14_q_2_q),
        .in_feedback_in_51(i_llvm_fpga_push_f32_push51_conv2d1x128_out_feedback_out_51),
        .in_feedback_valid_in_51(i_llvm_fpga_push_f32_push51_conv2d1x128_out_feedback_valid_out_51),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_data_out(i_llvm_fpga_pop_f32_pop51_conv2d1x112_out_data_out),
        .out_feedback_stall_out_51(i_llvm_fpga_pop_f32_pop51_conv2d1x112_out_feedback_stall_out_51),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_f32_push59_conv2d1x149(BLACKBOX,212)@151
    // out out_feedback_out_59@20000000
    // out out_feedback_valid_out_59@20000000
    conv2d1x1_i_llvm_fpga_push_f32_push59_0 thei_llvm_fpga_push_f32_push59_conv2d1x149 (
        .in_c1_ene18582_fanout_adaptor598(i_llvm_fpga_fanout_i1_c1_ene18582_fanout_adaptor598_conv2d1x17_q),
        .in_data_in(i_llvm_fpga_pop_f32_pop51_conv2d1x112_out_data_out),
        .in_feedback_stall_in_59(i_llvm_fpga_pop_f32_pop59_conv2d1x148_out_feedback_stall_out_59),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg33_q),
        .out_data_out(),
        .out_feedback_out_59(i_llvm_fpga_push_f32_push59_conv2d1x149_out_feedback_out_59),
        .out_feedback_valid_out_59(i_llvm_fpga_push_f32_push59_conv2d1x149_out_feedback_valid_out_59),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_f32_pop59_conv2d1x148(BLACKBOX,153)@149
    // out out_feedback_stall_out_59@20000000
    conv2d1x1_i_llvm_fpga_pop_f32_pop59_0 thei_llvm_fpga_pop_f32_pop59_conv2d1x148 (
        .in_data_in(redist36_sync_together342_aunroll_vunroll_x_in_c1_eni37_25_tpl_1_q),
        .in_dir(i_llvm_fpga_fanout_i1_c1_ene2566_fanout_adaptor594_conv2d1x14_q),
        .in_feedback_in_59(i_llvm_fpga_push_f32_push59_conv2d1x149_out_feedback_out_59),
        .in_feedback_valid_in_59(i_llvm_fpga_push_f32_push59_conv2d1x149_out_feedback_valid_out_59),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg32_q),
        .out_data_out(i_llvm_fpga_pop_f32_pop59_conv2d1x148_out_data_out),
        .out_feedback_stall_out_59(i_llvm_fpga_pop_f32_pop59_conv2d1x148_out_feedback_stall_out_59),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist38_sync_together342_aunroll_vunroll_x_in_c1_eni37_26_tpl_1(DELAY,381)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist38_sync_together342_aunroll_vunroll_x_in_c1_eni37_26_tpl_1_q <= '0;
        end
        else
        begin
            redist38_sync_together342_aunroll_vunroll_x_in_c1_eni37_26_tpl_1_q <= $unsigned(in_c1_eni37_26_tpl);
        end
    end

    // redist24_sync_together342_aunroll_vunroll_x_in_c1_eni37_2_20_tpl_1(DELAY,367)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist24_sync_together342_aunroll_vunroll_x_in_c1_eni37_2_20_tpl_1_q <= '0;
        end
        else
        begin
            redist24_sync_together342_aunroll_vunroll_x_in_c1_eni37_2_20_tpl_1_q <= $unsigned(in_c1_eni37_2_20_tpl);
        end
    end

    // i_llvm_fpga_fp_multadd_mult_add102_conv2d1x150(BLACKBOX,112)@149
    // out out_primWireOut@153
    conv2d1x1_flt_i_sfc_logic_s_c1_in_for_bo0000xk5id06uq0cp0jv34qcz thei_llvm_fpga_fp_multadd_mult_add102_conv2d1x150 (
        .in_0(redist24_sync_together342_aunroll_vunroll_x_in_c1_eni37_2_20_tpl_1_q),
        .in_1(redist38_sync_together342_aunroll_vunroll_x_in_c1_eni37_26_tpl_1_q),
        .in_2(i_llvm_fpga_pop_f32_pop59_conv2d1x148_out_data_out),
        .out_primWireOut(i_llvm_fpga_fp_multadd_mult_add102_conv2d1x150_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg29(REG,274)@148 + 1
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

    // valid_fanout_reg30(REG,275)@150 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg30_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg30_q <= $unsigned(redist55_sync_together342_aunroll_vunroll_x_in_i_valid_2_q);
        end
    end

    // valid_fanout_reg2(REG,247)@150 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg2_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg2_q <= $unsigned(redist55_sync_together342_aunroll_vunroll_x_in_i_valid_2_q);
        end
    end

    // valid_fanout_reg18(REG,263)@152 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg18_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg18_q <= $unsigned(redist56_sync_together342_aunroll_vunroll_x_in_i_valid_4_q);
        end
    end

    // i_llvm_fpga_push_f32_push52_conv2d1x127(BLACKBOX,205)@153
    // out out_feedback_out_52@20000000
    // out out_feedback_valid_out_52@20000000
    conv2d1x1_i_llvm_fpga_push_f32_push52_0 thei_llvm_fpga_push_f32_push52_conv2d1x127 (
        .in_c1_ene18582_fanout_adaptor598(redist83_i_llvm_fpga_fanout_i1_c1_ene18582_fanout_adaptor598_conv2d1x17_q_2_q),
        .in_data_in(i_llvm_fpga_pop_f32_pop44_conv2d1x119_out_data_out),
        .in_feedback_stall_in_52(i_llvm_fpga_pop_f32_pop52_conv2d1x111_out_feedback_stall_out_52),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg18_q),
        .out_data_out(),
        .out_feedback_out_52(i_llvm_fpga_push_f32_push52_conv2d1x127_out_feedback_out_52),
        .out_feedback_valid_out_52(i_llvm_fpga_push_f32_push52_conv2d1x127_out_feedback_valid_out_52),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_f32_pop52_conv2d1x111(BLACKBOX,146)@151
    // out out_feedback_stall_out_52@20000000
    conv2d1x1_i_llvm_fpga_pop_f32_pop52_0 thei_llvm_fpga_pop_f32_pop52_conv2d1x111 (
        .in_data_in(redist3_sync_together342_aunroll_vunroll_x_in_c1_eni37_3_tpl_3_mem_q),
        .in_dir(redist82_i_llvm_fpga_fanout_i1_c1_ene2566_fanout_adaptor594_conv2d1x14_q_2_q),
        .in_feedback_in_52(i_llvm_fpga_push_f32_push52_conv2d1x127_out_feedback_out_52),
        .in_feedback_valid_in_52(i_llvm_fpga_push_f32_push52_conv2d1x127_out_feedback_valid_out_52),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(i_llvm_fpga_pop_f32_pop52_conv2d1x111_out_data_out),
        .out_feedback_stall_out_52(i_llvm_fpga_pop_f32_pop52_conv2d1x111_out_feedback_stall_out_52),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_f32_push60_conv2d1x145(BLACKBOX,213)@151
    // out out_feedback_out_60@20000000
    // out out_feedback_valid_out_60@20000000
    conv2d1x1_i_llvm_fpga_push_f32_push60_0 thei_llvm_fpga_push_f32_push60_conv2d1x145 (
        .in_c1_ene18582_fanout_adaptor597(i_llvm_fpga_fanout_i1_c1_ene18582_fanout_adaptor597_conv2d1x18_q),
        .in_data_in(i_llvm_fpga_pop_f32_pop52_conv2d1x111_out_data_out),
        .in_feedback_stall_in_60(i_llvm_fpga_pop_f32_pop60_conv2d1x144_out_feedback_stall_out_60),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg30_q),
        .out_data_out(),
        .out_feedback_out_60(i_llvm_fpga_push_f32_push60_conv2d1x145_out_feedback_out_60),
        .out_feedback_valid_out_60(i_llvm_fpga_push_f32_push60_conv2d1x145_out_feedback_valid_out_60),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_f32_pop60_conv2d1x144(BLACKBOX,154)@149
    // out out_feedback_stall_out_60@20000000
    conv2d1x1_i_llvm_fpga_pop_f32_pop60_0 thei_llvm_fpga_pop_f32_pop60_conv2d1x144 (
        .in_data_in(redist33_sync_together342_aunroll_vunroll_x_in_c1_eni37_23_tpl_1_q),
        .in_dir(i_llvm_fpga_fanout_i1_c1_ene2566_fanout_adaptor594_conv2d1x14_q),
        .in_feedback_in_60(i_llvm_fpga_push_f32_push60_conv2d1x145_out_feedback_out_60),
        .in_feedback_valid_in_60(i_llvm_fpga_push_f32_push60_conv2d1x145_out_feedback_valid_out_60),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg29_q),
        .out_data_out(i_llvm_fpga_pop_f32_pop60_conv2d1x144_out_data_out),
        .out_feedback_stall_out_60(i_llvm_fpga_pop_f32_pop60_conv2d1x144_out_feedback_stall_out_60),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist35_sync_together342_aunroll_vunroll_x_in_c1_eni37_24_tpl_1(DELAY,378)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist35_sync_together342_aunroll_vunroll_x_in_c1_eni37_24_tpl_1_q <= '0;
        end
        else
        begin
            redist35_sync_together342_aunroll_vunroll_x_in_c1_eni37_24_tpl_1_q <= $unsigned(in_c1_eni37_24_tpl);
        end
    end

    // redist23_sync_together342_aunroll_vunroll_x_in_c1_eni37_1_20_tpl_1(DELAY,366)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist23_sync_together342_aunroll_vunroll_x_in_c1_eni37_1_20_tpl_1_q <= '0;
        end
        else
        begin
            redist23_sync_together342_aunroll_vunroll_x_in_c1_eni37_1_20_tpl_1_q <= $unsigned(in_c1_eni37_1_20_tpl);
        end
    end

    // i_llvm_fpga_fp_multadd_mult_add101_conv2d1x146(BLACKBOX,111)@149
    // out out_primWireOut@153
    conv2d1x1_flt_i_sfc_logic_s_c1_in_for_bo0000xk5id06uq0cp0jv34qcz thei_llvm_fpga_fp_multadd_mult_add101_conv2d1x146 (
        .in_0(redist23_sync_together342_aunroll_vunroll_x_in_c1_eni37_1_20_tpl_1_q),
        .in_1(redist35_sync_together342_aunroll_vunroll_x_in_c1_eni37_24_tpl_1_q),
        .in_2(i_llvm_fpga_pop_f32_pop60_conv2d1x144_out_data_out),
        .out_primWireOut(i_llvm_fpga_fp_multadd_mult_add101_conv2d1x146_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg26(REG,271)@148 + 1
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

    // valid_fanout_reg27(REG,272)@150 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg27_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg27_q <= $unsigned(redist55_sync_together342_aunroll_vunroll_x_in_i_valid_2_q);
        end
    end

    // valid_fanout_reg1(REG,246)@150 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg1_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg1_q <= $unsigned(redist55_sync_together342_aunroll_vunroll_x_in_i_valid_2_q);
        end
    end

    // valid_fanout_reg17(REG,262)@152 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg17_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg17_q <= $unsigned(redist56_sync_together342_aunroll_vunroll_x_in_i_valid_4_q);
        end
    end

    // i_llvm_fpga_push_f32_push53_conv2d1x126(BLACKBOX,206)@153
    // out out_feedback_out_53@20000000
    // out out_feedback_valid_out_53@20000000
    conv2d1x1_i_llvm_fpga_push_f32_push53_0 thei_llvm_fpga_push_f32_push53_conv2d1x126 (
        .in_c1_ene18582_fanout_adaptor598(redist83_i_llvm_fpga_fanout_i1_c1_ene18582_fanout_adaptor598_conv2d1x17_q_2_q),
        .in_data_in(i_llvm_fpga_pop_f32_pop45_conv2d1x118_out_data_out),
        .in_feedback_stall_in_53(i_llvm_fpga_pop_f32_pop53_conv2d1x110_out_feedback_stall_out_53),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg17_q),
        .out_data_out(),
        .out_feedback_out_53(i_llvm_fpga_push_f32_push53_conv2d1x126_out_feedback_out_53),
        .out_feedback_valid_out_53(i_llvm_fpga_push_f32_push53_conv2d1x126_out_feedback_valid_out_53),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_f32_pop53_conv2d1x110(BLACKBOX,147)@151
    // out out_feedback_stall_out_53@20000000
    conv2d1x1_i_llvm_fpga_pop_f32_pop53_0 thei_llvm_fpga_pop_f32_pop53_conv2d1x110 (
        .in_data_in(redist0_sync_together342_aunroll_vunroll_x_in_c1_eni37_1_tpl_3_mem_q),
        .in_dir(i_llvm_fpga_fanout_i1_c1_ene2566_fanout_adaptor_conv2d1x15_q),
        .in_feedback_in_53(i_llvm_fpga_push_f32_push53_conv2d1x126_out_feedback_out_53),
        .in_feedback_valid_in_53(i_llvm_fpga_push_f32_push53_conv2d1x126_out_feedback_valid_out_53),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_data_out(i_llvm_fpga_pop_f32_pop53_conv2d1x110_out_data_out),
        .out_feedback_stall_out_53(i_llvm_fpga_pop_f32_pop53_conv2d1x110_out_feedback_stall_out_53),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_f32_push61_conv2d1x141(BLACKBOX,214)@151
    // out out_feedback_out_61@20000000
    // out out_feedback_valid_out_61@20000000
    conv2d1x1_i_llvm_fpga_push_f32_push61_0 thei_llvm_fpga_push_f32_push61_conv2d1x141 (
        .in_c1_ene18582_fanout_adaptor597(i_llvm_fpga_fanout_i1_c1_ene18582_fanout_adaptor597_conv2d1x18_q),
        .in_data_in(i_llvm_fpga_pop_f32_pop53_conv2d1x110_out_data_out),
        .in_feedback_stall_in_61(i_llvm_fpga_pop_f32_pop61_conv2d1x140_out_feedback_stall_out_61),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg27_q),
        .out_data_out(),
        .out_feedback_out_61(i_llvm_fpga_push_f32_push61_conv2d1x141_out_feedback_out_61),
        .out_feedback_valid_out_61(i_llvm_fpga_push_f32_push61_conv2d1x141_out_feedback_valid_out_61),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_f32_pop61_conv2d1x140(BLACKBOX,155)@149
    // out out_feedback_stall_out_61@20000000
    conv2d1x1_i_llvm_fpga_pop_f32_pop61_0 thei_llvm_fpga_pop_f32_pop61_conv2d1x140 (
        .in_data_in(redist30_sync_together342_aunroll_vunroll_x_in_c1_eni37_21_tpl_1_q),
        .in_dir(i_llvm_fpga_fanout_i1_c1_ene2566_fanout_adaptor594_conv2d1x14_q),
        .in_feedback_in_61(i_llvm_fpga_push_f32_push61_conv2d1x141_out_feedback_out_61),
        .in_feedback_valid_in_61(i_llvm_fpga_push_f32_push61_conv2d1x141_out_feedback_valid_out_61),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg26_q),
        .out_data_out(i_llvm_fpga_pop_f32_pop61_conv2d1x140_out_data_out),
        .out_feedback_stall_out_61(i_llvm_fpga_pop_f32_pop61_conv2d1x140_out_feedback_stall_out_61),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist22_sync_together342_aunroll_vunroll_x_in_c1_eni37_0_20_tpl_1(DELAY,365)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist22_sync_together342_aunroll_vunroll_x_in_c1_eni37_0_20_tpl_1_q <= '0;
        end
        else
        begin
            redist22_sync_together342_aunroll_vunroll_x_in_c1_eni37_0_20_tpl_1_q <= $unsigned(in_c1_eni37_0_20_tpl);
        end
    end

    // redist32_sync_together342_aunroll_vunroll_x_in_c1_eni37_22_tpl_1(DELAY,375)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist32_sync_together342_aunroll_vunroll_x_in_c1_eni37_22_tpl_1_q <= '0;
        end
        else
        begin
            redist32_sync_together342_aunroll_vunroll_x_in_c1_eni37_22_tpl_1_q <= $unsigned(in_c1_eni37_22_tpl);
        end
    end

    // i_llvm_fpga_fp_multadd_mult_add_conv2d1x142(BLACKBOX,118)@149
    // out out_primWireOut@153
    conv2d1x1_flt_i_sfc_logic_s_c1_in_for_bo0000xk5id06uq0cp0jv34qcz thei_llvm_fpga_fp_multadd_mult_add_conv2d1x142 (
        .in_0(redist32_sync_together342_aunroll_vunroll_x_in_c1_eni37_22_tpl_1_q),
        .in_1(redist22_sync_together342_aunroll_vunroll_x_in_c1_eni37_0_20_tpl_1_q),
        .in_2(i_llvm_fpga_pop_f32_pop61_conv2d1x140_out_data_out),
        .out_primWireOut(i_llvm_fpga_fp_multadd_mult_add_conv2d1x142_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg16(REG,261)@152 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg16_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg16_q <= $unsigned(redist56_sync_together342_aunroll_vunroll_x_in_i_valid_4_q);
        end
    end

    // valid_fanout_reg28(REG,273)@152 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg28_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg28_q <= $unsigned(redist56_sync_together342_aunroll_vunroll_x_in_i_valid_4_q);
        end
    end

    // i_llvm_fpga_push_f32_push38_conv2d1x143(BLACKBOX,191)@153
    // out out_feedback_out_38@20000000
    // out out_feedback_valid_out_38@20000000
    conv2d1x1_i_llvm_fpga_push_f32_push38_0 thei_llvm_fpga_push_f32_push38_conv2d1x143 (
        .in_c1_ene18582_fanout_adaptor599(i_llvm_fpga_fanout_i1_c1_ene18582_fanout_adaptor599_conv2d1x16_q),
        .in_data_in(i_llvm_fpga_fp_multadd_mult_add_conv2d1x142_out_primWireOut),
        .in_feedback_stall_in_38(i_llvm_fpga_pop_f32_pop38_conv2d1x125_out_feedback_stall_out_38),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg28_q),
        .out_data_out(),
        .out_feedback_out_38(i_llvm_fpga_push_f32_push38_conv2d1x143_out_feedback_out_38),
        .out_feedback_valid_out_38(i_llvm_fpga_push_f32_push38_conv2d1x143_out_feedback_valid_out_38),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist81_i_llvm_fpga_fanout_i1_c1_ene2566_fanout_adaptor_conv2d1x15_q_2(DELAY,424)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist81_i_llvm_fpga_fanout_i1_c1_ene2566_fanout_adaptor_conv2d1x15_q_2_delay_0 <= '0;
            redist81_i_llvm_fpga_fanout_i1_c1_ene2566_fanout_adaptor_conv2d1x15_q_2_q <= '0;
        end
        else
        begin
            redist81_i_llvm_fpga_fanout_i1_c1_ene2566_fanout_adaptor_conv2d1x15_q_2_delay_0 <= $unsigned(i_llvm_fpga_fanout_i1_c1_ene2566_fanout_adaptor_conv2d1x15_q);
            redist81_i_llvm_fpga_fanout_i1_c1_ene2566_fanout_adaptor_conv2d1x15_q_2_q <= redist81_i_llvm_fpga_fanout_i1_c1_ene2566_fanout_adaptor_conv2d1x15_q_2_delay_0;
        end
    end

    // i_llvm_fpga_pop_f32_pop38_conv2d1x125(BLACKBOX,132)@153
    // out out_feedback_stall_out_38@20000000
    conv2d1x1_i_llvm_fpga_pop_f32_pop38_0 thei_llvm_fpga_pop_f32_pop38_conv2d1x125 (
        .in_data_in(redist18_sync_together342_aunroll_vunroll_x_in_c1_eni37_17_tpl_5_outputreg0_q),
        .in_dir(redist81_i_llvm_fpga_fanout_i1_c1_ene2566_fanout_adaptor_conv2d1x15_q_2_q),
        .in_feedback_in_38(i_llvm_fpga_push_f32_push38_conv2d1x143_out_feedback_out_38),
        .in_feedback_valid_in_38(i_llvm_fpga_push_f32_push38_conv2d1x143_out_feedback_valid_out_38),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg16_q),
        .out_data_out(i_llvm_fpga_pop_f32_pop38_conv2d1x125_out_data_out),
        .out_feedback_stall_out_38(i_llvm_fpga_pop_f32_pop38_conv2d1x125_out_feedback_stall_out_38),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg15(REG,260)@152 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg15_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg15_q <= $unsigned(redist56_sync_together342_aunroll_vunroll_x_in_i_valid_4_q);
        end
    end

    // valid_fanout_reg31(REG,276)@152 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg31_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg31_q <= $unsigned(redist56_sync_together342_aunroll_vunroll_x_in_i_valid_4_q);
        end
    end

    // i_llvm_fpga_push_f32_push39_conv2d1x147(BLACKBOX,192)@153
    // out out_feedback_out_39@20000000
    // out out_feedback_valid_out_39@20000000
    conv2d1x1_i_llvm_fpga_push_f32_push39_0 thei_llvm_fpga_push_f32_push39_conv2d1x147 (
        .in_c1_ene18582_fanout_adaptor599(i_llvm_fpga_fanout_i1_c1_ene18582_fanout_adaptor599_conv2d1x16_q),
        .in_data_in(i_llvm_fpga_fp_multadd_mult_add101_conv2d1x146_out_primWireOut),
        .in_feedback_stall_in_39(i_llvm_fpga_pop_f32_pop39_conv2d1x124_out_feedback_stall_out_39),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg31_q),
        .out_data_out(),
        .out_feedback_out_39(i_llvm_fpga_push_f32_push39_conv2d1x147_out_feedback_out_39),
        .out_feedback_valid_out_39(i_llvm_fpga_push_f32_push39_conv2d1x147_out_feedback_valid_out_39),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_f32_pop39_conv2d1x124(BLACKBOX,133)@153
    // out out_feedback_stall_out_39@20000000
    conv2d1x1_i_llvm_fpga_pop_f32_pop39_0 thei_llvm_fpga_pop_f32_pop39_conv2d1x124 (
        .in_data_in(redist17_sync_together342_aunroll_vunroll_x_in_c1_eni37_16_tpl_5_outputreg0_q),
        .in_dir(redist81_i_llvm_fpga_fanout_i1_c1_ene2566_fanout_adaptor_conv2d1x15_q_2_q),
        .in_feedback_in_39(i_llvm_fpga_push_f32_push39_conv2d1x147_out_feedback_out_39),
        .in_feedback_valid_in_39(i_llvm_fpga_push_f32_push39_conv2d1x147_out_feedback_valid_out_39),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg15_q),
        .out_data_out(i_llvm_fpga_pop_f32_pop39_conv2d1x124_out_data_out),
        .out_feedback_stall_out_39(i_llvm_fpga_pop_f32_pop39_conv2d1x124_out_feedback_stall_out_39),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg14(REG,259)@152 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg14_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg14_q <= $unsigned(redist56_sync_together342_aunroll_vunroll_x_in_i_valid_4_q);
        end
    end

    // valid_fanout_reg34(REG,279)@152 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg34_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg34_q <= $unsigned(redist56_sync_together342_aunroll_vunroll_x_in_i_valid_4_q);
        end
    end

    // i_llvm_fpga_push_f32_push40_conv2d1x151(BLACKBOX,193)@153
    // out out_feedback_out_40@20000000
    // out out_feedback_valid_out_40@20000000
    conv2d1x1_i_llvm_fpga_push_f32_push40_0 thei_llvm_fpga_push_f32_push40_conv2d1x151 (
        .in_c1_ene18582_fanout_adaptor599(i_llvm_fpga_fanout_i1_c1_ene18582_fanout_adaptor599_conv2d1x16_q),
        .in_data_in(i_llvm_fpga_fp_multadd_mult_add102_conv2d1x150_out_primWireOut),
        .in_feedback_stall_in_40(i_llvm_fpga_pop_f32_pop40_conv2d1x123_out_feedback_stall_out_40),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg34_q),
        .out_data_out(),
        .out_feedback_out_40(i_llvm_fpga_push_f32_push40_conv2d1x151_out_feedback_out_40),
        .out_feedback_valid_out_40(i_llvm_fpga_push_f32_push40_conv2d1x151_out_feedback_valid_out_40),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_f32_pop40_conv2d1x123(BLACKBOX,134)@153
    // out out_feedback_stall_out_40@20000000
    conv2d1x1_i_llvm_fpga_pop_f32_pop40_0 thei_llvm_fpga_pop_f32_pop40_conv2d1x123 (
        .in_data_in(redist16_sync_together342_aunroll_vunroll_x_in_c1_eni37_15_tpl_5_outputreg0_q),
        .in_dir(redist81_i_llvm_fpga_fanout_i1_c1_ene2566_fanout_adaptor_conv2d1x15_q_2_q),
        .in_feedback_in_40(i_llvm_fpga_push_f32_push40_conv2d1x151_out_feedback_out_40),
        .in_feedback_valid_in_40(i_llvm_fpga_push_f32_push40_conv2d1x151_out_feedback_valid_out_40),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg14_q),
        .out_data_out(i_llvm_fpga_pop_f32_pop40_conv2d1x123_out_data_out),
        .out_feedback_stall_out_40(i_llvm_fpga_pop_f32_pop40_conv2d1x123_out_feedback_stall_out_40),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg13(REG,258)@152 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg13_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg13_q <= $unsigned(redist56_sync_together342_aunroll_vunroll_x_in_i_valid_4_q);
        end
    end

    // valid_fanout_reg37(REG,282)@152 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg37_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg37_q <= $unsigned(redist56_sync_together342_aunroll_vunroll_x_in_i_valid_4_q);
        end
    end

    // i_llvm_fpga_push_f32_push41_conv2d1x155(BLACKBOX,194)@153
    // out out_feedback_out_41@20000000
    // out out_feedback_valid_out_41@20000000
    conv2d1x1_i_llvm_fpga_push_f32_push41_0 thei_llvm_fpga_push_f32_push41_conv2d1x155 (
        .in_c1_ene18582_fanout_adaptor599(i_llvm_fpga_fanout_i1_c1_ene18582_fanout_adaptor599_conv2d1x16_q),
        .in_data_in(i_llvm_fpga_fp_multadd_mult_add103_conv2d1x154_out_primWireOut),
        .in_feedback_stall_in_41(i_llvm_fpga_pop_f32_pop41_conv2d1x122_out_feedback_stall_out_41),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg37_q),
        .out_data_out(),
        .out_feedback_out_41(i_llvm_fpga_push_f32_push41_conv2d1x155_out_feedback_out_41),
        .out_feedback_valid_out_41(i_llvm_fpga_push_f32_push41_conv2d1x155_out_feedback_valid_out_41),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_f32_pop41_conv2d1x122(BLACKBOX,135)@153
    // out out_feedback_stall_out_41@20000000
    conv2d1x1_i_llvm_fpga_pop_f32_pop41_0 thei_llvm_fpga_pop_f32_pop41_conv2d1x122 (
        .in_data_in(redist15_sync_together342_aunroll_vunroll_x_in_c1_eni37_14_tpl_5_outputreg0_q),
        .in_dir(redist81_i_llvm_fpga_fanout_i1_c1_ene2566_fanout_adaptor_conv2d1x15_q_2_q),
        .in_feedback_in_41(i_llvm_fpga_push_f32_push41_conv2d1x155_out_feedback_out_41),
        .in_feedback_valid_in_41(i_llvm_fpga_push_f32_push41_conv2d1x155_out_feedback_valid_out_41),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg13_q),
        .out_data_out(i_llvm_fpga_pop_f32_pop41_conv2d1x122_out_data_out),
        .out_feedback_stall_out_41(i_llvm_fpga_pop_f32_pop41_conv2d1x122_out_feedback_stall_out_41),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg12(REG,257)@152 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg12_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg12_q <= $unsigned(redist56_sync_together342_aunroll_vunroll_x_in_i_valid_4_q);
        end
    end

    // valid_fanout_reg40(REG,285)@152 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg40_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg40_q <= $unsigned(redist56_sync_together342_aunroll_vunroll_x_in_i_valid_4_q);
        end
    end

    // i_llvm_fpga_push_f32_push42_conv2d1x159(BLACKBOX,195)@153
    // out out_feedback_out_42@20000000
    // out out_feedback_valid_out_42@20000000
    conv2d1x1_i_llvm_fpga_push_f32_push42_0 thei_llvm_fpga_push_f32_push42_conv2d1x159 (
        .in_c1_ene18582_fanout_adaptor599(i_llvm_fpga_fanout_i1_c1_ene18582_fanout_adaptor599_conv2d1x16_q),
        .in_data_in(i_llvm_fpga_fp_multadd_mult_add104_conv2d1x158_out_primWireOut),
        .in_feedback_stall_in_42(i_llvm_fpga_pop_f32_pop42_conv2d1x121_out_feedback_stall_out_42),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg40_q),
        .out_data_out(),
        .out_feedback_out_42(i_llvm_fpga_push_f32_push42_conv2d1x159_out_feedback_out_42),
        .out_feedback_valid_out_42(i_llvm_fpga_push_f32_push42_conv2d1x159_out_feedback_valid_out_42),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_f32_pop42_conv2d1x121(BLACKBOX,136)@153
    // out out_feedback_stall_out_42@20000000
    conv2d1x1_i_llvm_fpga_pop_f32_pop42_0 thei_llvm_fpga_pop_f32_pop42_conv2d1x121 (
        .in_data_in(redist14_sync_together342_aunroll_vunroll_x_in_c1_eni37_13_tpl_5_outputreg0_q),
        .in_dir(redist81_i_llvm_fpga_fanout_i1_c1_ene2566_fanout_adaptor_conv2d1x15_q_2_q),
        .in_feedback_in_42(i_llvm_fpga_push_f32_push42_conv2d1x159_out_feedback_out_42),
        .in_feedback_valid_in_42(i_llvm_fpga_push_f32_push42_conv2d1x159_out_feedback_valid_out_42),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg12_q),
        .out_data_out(i_llvm_fpga_pop_f32_pop42_conv2d1x121_out_data_out),
        .out_feedback_stall_out_42(i_llvm_fpga_pop_f32_pop42_conv2d1x121_out_feedback_stall_out_42),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg11(REG,256)@152 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg11_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg11_q <= $unsigned(redist56_sync_together342_aunroll_vunroll_x_in_i_valid_4_q);
        end
    end

    // valid_fanout_reg43(REG,288)@152 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg43_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg43_q <= $unsigned(redist56_sync_together342_aunroll_vunroll_x_in_i_valid_4_q);
        end
    end

    // i_llvm_fpga_push_f32_push43_conv2d1x163(BLACKBOX,196)@153
    // out out_feedback_out_43@20000000
    // out out_feedback_valid_out_43@20000000
    conv2d1x1_i_llvm_fpga_push_f32_push43_0 thei_llvm_fpga_push_f32_push43_conv2d1x163 (
        .in_c1_ene18582_fanout_adaptor599(i_llvm_fpga_fanout_i1_c1_ene18582_fanout_adaptor599_conv2d1x16_q),
        .in_data_in(i_llvm_fpga_fp_multadd_mult_add105_conv2d1x162_out_primWireOut),
        .in_feedback_stall_in_43(i_llvm_fpga_pop_f32_pop43_conv2d1x120_out_feedback_stall_out_43),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg43_q),
        .out_data_out(),
        .out_feedback_out_43(i_llvm_fpga_push_f32_push43_conv2d1x163_out_feedback_out_43),
        .out_feedback_valid_out_43(i_llvm_fpga_push_f32_push43_conv2d1x163_out_feedback_valid_out_43),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_f32_pop43_conv2d1x120(BLACKBOX,137)@153
    // out out_feedback_stall_out_43@20000000
    conv2d1x1_i_llvm_fpga_pop_f32_pop43_0 thei_llvm_fpga_pop_f32_pop43_conv2d1x120 (
        .in_data_in(redist13_sync_together342_aunroll_vunroll_x_in_c1_eni37_12_tpl_5_outputreg0_q),
        .in_dir(redist81_i_llvm_fpga_fanout_i1_c1_ene2566_fanout_adaptor_conv2d1x15_q_2_q),
        .in_feedback_in_43(i_llvm_fpga_push_f32_push43_conv2d1x163_out_feedback_out_43),
        .in_feedback_valid_in_43(i_llvm_fpga_push_f32_push43_conv2d1x163_out_feedback_valid_out_43),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg11_q),
        .out_data_out(i_llvm_fpga_pop_f32_pop43_conv2d1x120_out_data_out),
        .out_feedback_stall_out_43(i_llvm_fpga_pop_f32_pop43_conv2d1x120_out_feedback_stall_out_43),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg10(REG,255)@152 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg10_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg10_q <= $unsigned(redist56_sync_together342_aunroll_vunroll_x_in_i_valid_4_q);
        end
    end

    // valid_fanout_reg46(REG,291)@152 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg46_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg46_q <= $unsigned(redist56_sync_together342_aunroll_vunroll_x_in_i_valid_4_q);
        end
    end

    // i_llvm_fpga_push_f32_push44_conv2d1x167(BLACKBOX,197)@153
    // out out_feedback_out_44@20000000
    // out out_feedback_valid_out_44@20000000
    conv2d1x1_i_llvm_fpga_push_f32_push44_0 thei_llvm_fpga_push_f32_push44_conv2d1x167 (
        .in_c1_ene18582_fanout_adaptor599(i_llvm_fpga_fanout_i1_c1_ene18582_fanout_adaptor599_conv2d1x16_q),
        .in_data_in(i_llvm_fpga_fp_multadd_mult_add106_conv2d1x166_out_primWireOut),
        .in_feedback_stall_in_44(i_llvm_fpga_pop_f32_pop44_conv2d1x119_out_feedback_stall_out_44),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg46_q),
        .out_data_out(),
        .out_feedback_out_44(i_llvm_fpga_push_f32_push44_conv2d1x167_out_feedback_out_44),
        .out_feedback_valid_out_44(i_llvm_fpga_push_f32_push44_conv2d1x167_out_feedback_valid_out_44),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_f32_pop44_conv2d1x119(BLACKBOX,138)@153
    // out out_feedback_stall_out_44@20000000
    conv2d1x1_i_llvm_fpga_pop_f32_pop44_0 thei_llvm_fpga_pop_f32_pop44_conv2d1x119 (
        .in_data_in(redist12_sync_together342_aunroll_vunroll_x_in_c1_eni37_11_tpl_5_outputreg0_q),
        .in_dir(redist81_i_llvm_fpga_fanout_i1_c1_ene2566_fanout_adaptor_conv2d1x15_q_2_q),
        .in_feedback_in_44(i_llvm_fpga_push_f32_push44_conv2d1x167_out_feedback_out_44),
        .in_feedback_valid_in_44(i_llvm_fpga_push_f32_push44_conv2d1x167_out_feedback_valid_out_44),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg10_q),
        .out_data_out(i_llvm_fpga_pop_f32_pop44_conv2d1x119_out_data_out),
        .out_feedback_stall_out_44(i_llvm_fpga_pop_f32_pop44_conv2d1x119_out_feedback_stall_out_44),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg9(REG,254)@152 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg9_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg9_q <= $unsigned(redist56_sync_together342_aunroll_vunroll_x_in_i_valid_4_q);
        end
    end

    // valid_fanout_reg49(REG,294)@152 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg49_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg49_q <= $unsigned(redist56_sync_together342_aunroll_vunroll_x_in_i_valid_4_q);
        end
    end

    // i_llvm_fpga_push_f32_push45_conv2d1x171(BLACKBOX,198)@153
    // out out_feedback_out_45@20000000
    // out out_feedback_valid_out_45@20000000
    conv2d1x1_i_llvm_fpga_push_f32_push45_0 thei_llvm_fpga_push_f32_push45_conv2d1x171 (
        .in_c1_ene18582_fanout_adaptor599(i_llvm_fpga_fanout_i1_c1_ene18582_fanout_adaptor599_conv2d1x16_q),
        .in_data_in(i_llvm_fpga_fp_multadd_mult_add107_conv2d1x170_out_primWireOut),
        .in_feedback_stall_in_45(i_llvm_fpga_pop_f32_pop45_conv2d1x118_out_feedback_stall_out_45),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg49_q),
        .out_data_out(),
        .out_feedback_out_45(i_llvm_fpga_push_f32_push45_conv2d1x171_out_feedback_out_45),
        .out_feedback_valid_out_45(i_llvm_fpga_push_f32_push45_conv2d1x171_out_feedback_valid_out_45),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_f32_pop45_conv2d1x118(BLACKBOX,139)@153
    // out out_feedback_stall_out_45@20000000
    conv2d1x1_i_llvm_fpga_pop_f32_pop45_0 thei_llvm_fpga_pop_f32_pop45_conv2d1x118 (
        .in_data_in(redist11_sync_together342_aunroll_vunroll_x_in_c1_eni37_10_tpl_5_outputreg0_q),
        .in_dir(redist81_i_llvm_fpga_fanout_i1_c1_ene2566_fanout_adaptor_conv2d1x15_q_2_q),
        .in_feedback_in_45(i_llvm_fpga_push_f32_push45_conv2d1x171_out_feedback_out_45),
        .in_feedback_valid_in_45(i_llvm_fpga_push_f32_push45_conv2d1x171_out_feedback_valid_out_45),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg9_q),
        .out_data_out(i_llvm_fpga_pop_f32_pop45_conv2d1x118_out_data_out),
        .out_feedback_stall_out_45(i_llvm_fpga_pop_f32_pop45_conv2d1x118_out_feedback_stall_out_45),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist76_i_llvm_fpga_pop_f32_pop46_conv2d1x117_out_data_out_2(DELAY,419)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist76_i_llvm_fpga_pop_f32_pop46_conv2d1x117_out_data_out_2_delay_0 <= '0;
            redist76_i_llvm_fpga_pop_f32_pop46_conv2d1x117_out_data_out_2_q <= '0;
        end
        else
        begin
            redist76_i_llvm_fpga_pop_f32_pop46_conv2d1x117_out_data_out_2_delay_0 <= $unsigned(i_llvm_fpga_pop_f32_pop46_conv2d1x117_out_data_out);
            redist76_i_llvm_fpga_pop_f32_pop46_conv2d1x117_out_data_out_2_q <= redist76_i_llvm_fpga_pop_f32_pop46_conv2d1x117_out_data_out_2_delay_0;
        end
    end

    // redist75_i_llvm_fpga_pop_f32_pop47_conv2d1x116_out_data_out_2(DELAY,418)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist75_i_llvm_fpga_pop_f32_pop47_conv2d1x116_out_data_out_2_delay_0 <= '0;
            redist75_i_llvm_fpga_pop_f32_pop47_conv2d1x116_out_data_out_2_q <= '0;
        end
        else
        begin
            redist75_i_llvm_fpga_pop_f32_pop47_conv2d1x116_out_data_out_2_delay_0 <= $unsigned(i_llvm_fpga_pop_f32_pop47_conv2d1x116_out_data_out);
            redist75_i_llvm_fpga_pop_f32_pop47_conv2d1x116_out_data_out_2_q <= redist75_i_llvm_fpga_pop_f32_pop47_conv2d1x116_out_data_out_2_delay_0;
        end
    end

    // redist74_i_llvm_fpga_pop_f32_pop48_conv2d1x115_out_data_out_2(DELAY,417)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist74_i_llvm_fpga_pop_f32_pop48_conv2d1x115_out_data_out_2_delay_0 <= '0;
            redist74_i_llvm_fpga_pop_f32_pop48_conv2d1x115_out_data_out_2_q <= '0;
        end
        else
        begin
            redist74_i_llvm_fpga_pop_f32_pop48_conv2d1x115_out_data_out_2_delay_0 <= $unsigned(i_llvm_fpga_pop_f32_pop48_conv2d1x115_out_data_out);
            redist74_i_llvm_fpga_pop_f32_pop48_conv2d1x115_out_data_out_2_q <= redist74_i_llvm_fpga_pop_f32_pop48_conv2d1x115_out_data_out_2_delay_0;
        end
    end

    // redist73_i_llvm_fpga_pop_f32_pop49_conv2d1x114_out_data_out_2(DELAY,416)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist73_i_llvm_fpga_pop_f32_pop49_conv2d1x114_out_data_out_2_delay_0 <= '0;
            redist73_i_llvm_fpga_pop_f32_pop49_conv2d1x114_out_data_out_2_q <= '0;
        end
        else
        begin
            redist73_i_llvm_fpga_pop_f32_pop49_conv2d1x114_out_data_out_2_delay_0 <= $unsigned(i_llvm_fpga_pop_f32_pop49_conv2d1x114_out_data_out);
            redist73_i_llvm_fpga_pop_f32_pop49_conv2d1x114_out_data_out_2_q <= redist73_i_llvm_fpga_pop_f32_pop49_conv2d1x114_out_data_out_2_delay_0;
        end
    end

    // redist72_i_llvm_fpga_pop_f32_pop50_conv2d1x113_out_data_out_2(DELAY,415)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist72_i_llvm_fpga_pop_f32_pop50_conv2d1x113_out_data_out_2_delay_0 <= '0;
            redist72_i_llvm_fpga_pop_f32_pop50_conv2d1x113_out_data_out_2_q <= '0;
        end
        else
        begin
            redist72_i_llvm_fpga_pop_f32_pop50_conv2d1x113_out_data_out_2_delay_0 <= $unsigned(i_llvm_fpga_pop_f32_pop50_conv2d1x113_out_data_out);
            redist72_i_llvm_fpga_pop_f32_pop50_conv2d1x113_out_data_out_2_q <= redist72_i_llvm_fpga_pop_f32_pop50_conv2d1x113_out_data_out_2_delay_0;
        end
    end

    // redist71_i_llvm_fpga_pop_f32_pop51_conv2d1x112_out_data_out_2(DELAY,414)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist71_i_llvm_fpga_pop_f32_pop51_conv2d1x112_out_data_out_2_delay_0 <= '0;
            redist71_i_llvm_fpga_pop_f32_pop51_conv2d1x112_out_data_out_2_q <= '0;
        end
        else
        begin
            redist71_i_llvm_fpga_pop_f32_pop51_conv2d1x112_out_data_out_2_delay_0 <= $unsigned(i_llvm_fpga_pop_f32_pop51_conv2d1x112_out_data_out);
            redist71_i_llvm_fpga_pop_f32_pop51_conv2d1x112_out_data_out_2_q <= redist71_i_llvm_fpga_pop_f32_pop51_conv2d1x112_out_data_out_2_delay_0;
        end
    end

    // redist70_i_llvm_fpga_pop_f32_pop52_conv2d1x111_out_data_out_2(DELAY,413)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist70_i_llvm_fpga_pop_f32_pop52_conv2d1x111_out_data_out_2_delay_0 <= '0;
            redist70_i_llvm_fpga_pop_f32_pop52_conv2d1x111_out_data_out_2_q <= '0;
        end
        else
        begin
            redist70_i_llvm_fpga_pop_f32_pop52_conv2d1x111_out_data_out_2_delay_0 <= $unsigned(i_llvm_fpga_pop_f32_pop52_conv2d1x111_out_data_out);
            redist70_i_llvm_fpga_pop_f32_pop52_conv2d1x111_out_data_out_2_q <= redist70_i_llvm_fpga_pop_f32_pop52_conv2d1x111_out_data_out_2_delay_0;
        end
    end

    // redist69_i_llvm_fpga_pop_f32_pop53_conv2d1x110_out_data_out_2(DELAY,412)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist69_i_llvm_fpga_pop_f32_pop53_conv2d1x110_out_data_out_2_delay_0 <= '0;
            redist69_i_llvm_fpga_pop_f32_pop53_conv2d1x110_out_data_out_2_q <= '0;
        end
        else
        begin
            redist69_i_llvm_fpga_pop_f32_pop53_conv2d1x110_out_data_out_2_delay_0 <= $unsigned(i_llvm_fpga_pop_f32_pop53_conv2d1x110_out_data_out);
            redist69_i_llvm_fpga_pop_f32_pop53_conv2d1x110_out_data_out_2_q <= redist69_i_llvm_fpga_pop_f32_pop53_conv2d1x110_out_data_out_2_delay_0;
        end
    end

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // sync_out_aunroll_x(GPOUT,243)@153
    assign out_c1_exi48_0_tpl = GND_q;
    assign out_c1_exi48_1_tpl = redist69_i_llvm_fpga_pop_f32_pop53_conv2d1x110_out_data_out_2_q;
    assign out_c1_exi48_2_tpl = redist70_i_llvm_fpga_pop_f32_pop52_conv2d1x111_out_data_out_2_q;
    assign out_c1_exi48_3_tpl = redist71_i_llvm_fpga_pop_f32_pop51_conv2d1x112_out_data_out_2_q;
    assign out_c1_exi48_4_tpl = redist72_i_llvm_fpga_pop_f32_pop50_conv2d1x113_out_data_out_2_q;
    assign out_c1_exi48_5_tpl = redist73_i_llvm_fpga_pop_f32_pop49_conv2d1x114_out_data_out_2_q;
    assign out_c1_exi48_6_tpl = redist74_i_llvm_fpga_pop_f32_pop48_conv2d1x115_out_data_out_2_q;
    assign out_c1_exi48_7_tpl = redist75_i_llvm_fpga_pop_f32_pop47_conv2d1x116_out_data_out_2_q;
    assign out_c1_exi48_8_tpl = redist76_i_llvm_fpga_pop_f32_pop46_conv2d1x117_out_data_out_2_q;
    assign out_c1_exi48_9_tpl = i_llvm_fpga_pop_f32_pop45_conv2d1x118_out_data_out;
    assign out_c1_exi48_10_tpl = i_llvm_fpga_pop_f32_pop44_conv2d1x119_out_data_out;
    assign out_c1_exi48_11_tpl = i_llvm_fpga_pop_f32_pop43_conv2d1x120_out_data_out;
    assign out_c1_exi48_12_tpl = i_llvm_fpga_pop_f32_pop42_conv2d1x121_out_data_out;
    assign out_c1_exi48_13_tpl = i_llvm_fpga_pop_f32_pop41_conv2d1x122_out_data_out;
    assign out_c1_exi48_14_tpl = i_llvm_fpga_pop_f32_pop40_conv2d1x123_out_data_out;
    assign out_c1_exi48_15_tpl = i_llvm_fpga_pop_f32_pop39_conv2d1x124_out_data_out;
    assign out_c1_exi48_16_tpl = i_llvm_fpga_pop_f32_pop38_conv2d1x125_out_data_out;
    assign out_c1_exi48_17_tpl = i_llvm_fpga_fp_multadd_mult_add_conv2d1x142_out_primWireOut;
    assign out_c1_exi48_18_tpl = i_llvm_fpga_fp_multadd_mult_add101_conv2d1x146_out_primWireOut;
    assign out_c1_exi48_19_tpl = i_llvm_fpga_fp_multadd_mult_add102_conv2d1x150_out_primWireOut;
    assign out_c1_exi48_20_tpl = i_llvm_fpga_fp_multadd_mult_add103_conv2d1x154_out_primWireOut;
    assign out_c1_exi48_21_tpl = i_llvm_fpga_fp_multadd_mult_add104_conv2d1x158_out_primWireOut;
    assign out_c1_exi48_22_tpl = i_llvm_fpga_fp_multadd_mult_add105_conv2d1x162_out_primWireOut;
    assign out_c1_exi48_23_tpl = i_llvm_fpga_fp_multadd_mult_add106_conv2d1x166_out_primWireOut;
    assign out_c1_exi48_24_tpl = i_llvm_fpga_fp_multadd_mult_add107_conv2d1x170_out_primWireOut;
    assign out_c1_exi48_25_tpl = i_select36_conv2d1x174_q;
    assign out_c1_exi48_26_tpl = i_select39_conv2d1x177_q;
    assign out_c1_exi48_27_tpl = i_select42_conv2d1x180_q;
    assign out_c1_exi48_28_tpl = i_select45_conv2d1x183_q;
    assign out_c1_exi48_29_tpl = i_select48_conv2d1x186_q;
    assign out_c1_exi48_30_tpl = i_select51_conv2d1x189_q;
    assign out_c1_exi48_31_tpl = i_select54_conv2d1x192_q;
    assign out_c1_exi48_32_tpl = i_select57_conv2d1x195_q;
    assign out_c1_exi48_33_tpl = i_select60_conv2d1x198_q;
    assign out_c1_exi48_34_tpl = i_select63_conv2d1x1101_q;
    assign out_c1_exi48_35_tpl = i_select66_conv2d1x1104_q;
    assign out_c1_exi48_36_tpl = i_select69_conv2d1x1107_q;
    assign out_c1_exi48_37_tpl = i_select72_conv2d1x1110_q;
    assign out_c1_exi48_38_tpl = i_select75_conv2d1x1113_q;
    assign out_c1_exi48_39_tpl = i_select78_conv2d1x1116_q;
    assign out_c1_exi48_40_tpl = i_select81_conv2d1x1119_q;
    assign out_c1_exi48_41_tpl = i_select84_conv2d1x1122_q;
    assign out_c1_exi48_42_tpl = i_select87_conv2d1x1125_q;
    assign out_c1_exi48_43_tpl = i_select90_conv2d1x1128_q;
    assign out_c1_exi48_44_tpl = i_select93_conv2d1x1131_q;
    assign out_c1_exi48_45_tpl = i_select96_conv2d1x1134_q;
    assign out_c1_exi48_46_tpl = i_select99_conv2d1x1137_q;
    assign out_c1_exi48_47_tpl = i_select102_conv2d1x1140_q;
    assign out_c1_exi48_48_tpl = i_select105_conv2d1x1143_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_conv2d1x16 = GND_q;

endmodule
