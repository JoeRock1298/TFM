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

// SystemVerilog created from conv2d1x1_i_sfc_logic_s_c0_in_for_body_s_c0_enter58_conv2d1x10
// SystemVerilog created on Tue May 23 20:43:36 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2d1x1_i_sfc_logic_s_c0_in_for_body_s_c0_enter58_conv2d1x10 (
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going32_conv2d1x18_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going32_conv2d1x18_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    output wire [0:0] out_c0_exi18_0_tpl,
    output wire [0:0] out_c0_exi18_1_tpl,
    output wire [31:0] out_c0_exi18_2_tpl,
    output wire [31:0] out_c0_exi18_3_tpl,
    output wire [31:0] out_c0_exi18_4_tpl,
    output wire [31:0] out_c0_exi18_5_tpl,
    output wire [31:0] out_c0_exi18_6_tpl,
    output wire [31:0] out_c0_exi18_7_tpl,
    output wire [31:0] out_c0_exi18_8_tpl,
    output wire [31:0] out_c0_exi18_9_tpl,
    output wire [31:0] out_c0_exi18_10_tpl,
    output wire [31:0] out_c0_exi18_11_tpl,
    output wire [31:0] out_c0_exi18_12_tpl,
    output wire [31:0] out_c0_exi18_13_tpl,
    output wire [31:0] out_c0_exi18_14_tpl,
    output wire [31:0] out_c0_exi18_15_tpl,
    output wire [31:0] out_c0_exi18_16_tpl,
    output wire [31:0] out_c0_exi18_17_tpl,
    output wire [0:0] out_c0_exi18_18_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_conv2d1x15,
    input wire [0:0] in_c0_eni1_0_tpl,
    input wire [0:0] in_c0_eni1_1_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] c_float_0_000000e_00174_q;
    wire [31:0] c_i32_0157_q;
    wire [31:0] c_i32_1172_q;
    wire [3:0] c_i4_7154_q;
    wire [5:0] c_i6_1177_q;
    wire [5:0] c_i6_15175_q;
    wire [3:0] i_cleanups_shl36_conv2d1x17_vt_join_q;
    wire [2:0] i_cleanups_shl36_conv2d1x17_vt_select_3_b;
    wire [0:0] i_first_cleanup_xor38_conv2d1x16_q;
    wire [6:0] i_fpga_indvars_iv_next305_conv2d1x1107_a;
    wire [6:0] i_fpga_indvars_iv_next305_conv2d1x1107_b;
    logic [6:0] i_fpga_indvars_iv_next305_conv2d1x1107_o;
    wire [6:0] i_fpga_indvars_iv_next305_conv2d1x1107_q;
    wire [32:0] i_inc_conv2d1x197_a;
    wire [32:0] i_inc_conv2d1x197_b;
    logic [32:0] i_inc_conv2d1x197_o;
    wire [32:0] i_inc_conv2d1x197_q;
    (* dont_merge *) reg [0:0] i_llvm_fpga_fanout_i1_c0_ene1_fanout_adaptor848_conv2d1x12_q;
    (* dont_merge *) reg [0:0] i_llvm_fpga_fanout_i1_c0_ene1_fanout_adaptor_conv2d1x13_q;
    (* dont_merge *) reg [0:0] i_llvm_fpga_fanout_i1_keep_going32_fanout_adaptor849_conv2d1x19_q;
    (* dont_merge *) reg [0:0] i_llvm_fpga_fanout_i1_keep_going32_fanout_adaptor_conv2d1x110_q;
    wire [0:0] i_llvm_fpga_pipeline_keep_going32_conv2d1x18_out_data_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going32_conv2d1x18_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going32_conv2d1x18_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going32_conv2d1x18_out_initeration_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going32_conv2d1x18_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going32_conv2d1x18_out_pipeline_valid_out;
    wire [31:0] i_llvm_fpga_pop_f32_shift_reg_sroa_0_0_pop43_conv2d1x149_out_data_out;
    wire [0:0] i_llvm_fpga_pop_f32_shift_reg_sroa_0_0_pop43_conv2d1x149_out_feedback_stall_out_43;
    wire [31:0] i_llvm_fpga_pop_f32_shift_reg_sroa_11_0_pop40_conv2d1x158_out_data_out;
    wire [0:0] i_llvm_fpga_pop_f32_shift_reg_sroa_11_0_pop40_conv2d1x158_out_feedback_stall_out_40;
    wire [31:0] i_llvm_fpga_pop_f32_shift_reg_sroa_14_0_pop39_conv2d1x161_out_data_out;
    wire [0:0] i_llvm_fpga_pop_f32_shift_reg_sroa_14_0_pop39_conv2d1x161_out_feedback_stall_out_39;
    wire [31:0] i_llvm_fpga_pop_f32_shift_reg_sroa_17_0_pop38_conv2d1x164_out_data_out;
    wire [0:0] i_llvm_fpga_pop_f32_shift_reg_sroa_17_0_pop38_conv2d1x164_out_feedback_stall_out_38;
    wire [31:0] i_llvm_fpga_pop_f32_shift_reg_sroa_20_0_pop37_conv2d1x167_out_data_out;
    wire [0:0] i_llvm_fpga_pop_f32_shift_reg_sroa_20_0_pop37_conv2d1x167_out_feedback_stall_out_37;
    wire [31:0] i_llvm_fpga_pop_f32_shift_reg_sroa_23_0_pop36_conv2d1x170_out_data_out;
    wire [0:0] i_llvm_fpga_pop_f32_shift_reg_sroa_23_0_pop36_conv2d1x170_out_feedback_stall_out_36;
    wire [31:0] i_llvm_fpga_pop_f32_shift_reg_sroa_26_0_pop35_conv2d1x173_out_data_out;
    wire [0:0] i_llvm_fpga_pop_f32_shift_reg_sroa_26_0_pop35_conv2d1x173_out_feedback_stall_out_35;
    wire [31:0] i_llvm_fpga_pop_f32_shift_reg_sroa_29_0_pop34_conv2d1x176_out_data_out;
    wire [0:0] i_llvm_fpga_pop_f32_shift_reg_sroa_29_0_pop34_conv2d1x176_out_feedback_stall_out_34;
    wire [31:0] i_llvm_fpga_pop_f32_shift_reg_sroa_32_0_pop33_conv2d1x179_out_data_out;
    wire [0:0] i_llvm_fpga_pop_f32_shift_reg_sroa_32_0_pop33_conv2d1x179_out_feedback_stall_out_33;
    wire [31:0] i_llvm_fpga_pop_f32_shift_reg_sroa_35_0_pop32_conv2d1x182_out_data_out;
    wire [0:0] i_llvm_fpga_pop_f32_shift_reg_sroa_35_0_pop32_conv2d1x182_out_feedback_stall_out_32;
    wire [31:0] i_llvm_fpga_pop_f32_shift_reg_sroa_38_0_pop31_conv2d1x185_out_data_out;
    wire [0:0] i_llvm_fpga_pop_f32_shift_reg_sroa_38_0_pop31_conv2d1x185_out_feedback_stall_out_31;
    wire [31:0] i_llvm_fpga_pop_f32_shift_reg_sroa_41_0_pop30_conv2d1x188_out_data_out;
    wire [0:0] i_llvm_fpga_pop_f32_shift_reg_sroa_41_0_pop30_conv2d1x188_out_feedback_stall_out_30;
    wire [31:0] i_llvm_fpga_pop_f32_shift_reg_sroa_44_0_pop29_conv2d1x191_out_data_out;
    wire [0:0] i_llvm_fpga_pop_f32_shift_reg_sroa_44_0_pop29_conv2d1x191_out_feedback_stall_out_29;
    wire [31:0] i_llvm_fpga_pop_f32_shift_reg_sroa_47_0_pop28_conv2d1x194_out_data_out;
    wire [0:0] i_llvm_fpga_pop_f32_shift_reg_sroa_47_0_pop28_conv2d1x194_out_feedback_stall_out_28;
    wire [31:0] i_llvm_fpga_pop_f32_shift_reg_sroa_5_0_pop42_conv2d1x152_out_data_out;
    wire [0:0] i_llvm_fpga_pop_f32_shift_reg_sroa_5_0_pop42_conv2d1x152_out_feedback_stall_out_42;
    wire [31:0] i_llvm_fpga_pop_f32_shift_reg_sroa_8_0_pop41_conv2d1x155_out_data_out;
    wire [0:0] i_llvm_fpga_pop_f32_shift_reg_sroa_8_0_pop41_conv2d1x155_out_feedback_stall_out_41;
    wire [31:0] i_llvm_fpga_pop_i32_i_072_pop44_conv2d1x116_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_i_072_pop44_conv2d1x116_out_feedback_stall_out_44;
    wire [3:0] i_llvm_fpga_pop_i4_cleanups35_pop46_conv2d1x14_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i4_cleanups35_pop46_conv2d1x14_out_feedback_stall_out_46;
    wire [3:0] i_llvm_fpga_pop_i4_initerations30_pop45_conv2d1x111_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i4_initerations30_pop45_conv2d1x111_out_feedback_stall_out_45;
    wire [5:0] i_llvm_fpga_pop_i6_fpga_indvars_iv304_pop27_conv2d1x199_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i6_fpga_indvars_iv304_pop27_conv2d1x199_out_feedback_stall_out_27;
    wire [31:0] i_llvm_fpga_push_f32_shift_reg_sroa_0_0_push43_conv2d1x151_out_feedback_out_43;
    wire [0:0] i_llvm_fpga_push_f32_shift_reg_sroa_0_0_push43_conv2d1x151_out_feedback_valid_out_43;
    wire [31:0] i_llvm_fpga_push_f32_shift_reg_sroa_11_0_push40_conv2d1x160_out_feedback_out_40;
    wire [0:0] i_llvm_fpga_push_f32_shift_reg_sroa_11_0_push40_conv2d1x160_out_feedback_valid_out_40;
    wire [31:0] i_llvm_fpga_push_f32_shift_reg_sroa_14_0_push39_conv2d1x163_out_feedback_out_39;
    wire [0:0] i_llvm_fpga_push_f32_shift_reg_sroa_14_0_push39_conv2d1x163_out_feedback_valid_out_39;
    wire [31:0] i_llvm_fpga_push_f32_shift_reg_sroa_17_0_push38_conv2d1x166_out_feedback_out_38;
    wire [0:0] i_llvm_fpga_push_f32_shift_reg_sroa_17_0_push38_conv2d1x166_out_feedback_valid_out_38;
    wire [31:0] i_llvm_fpga_push_f32_shift_reg_sroa_20_0_push37_conv2d1x169_out_feedback_out_37;
    wire [0:0] i_llvm_fpga_push_f32_shift_reg_sroa_20_0_push37_conv2d1x169_out_feedback_valid_out_37;
    wire [31:0] i_llvm_fpga_push_f32_shift_reg_sroa_23_0_push36_conv2d1x172_out_feedback_out_36;
    wire [0:0] i_llvm_fpga_push_f32_shift_reg_sroa_23_0_push36_conv2d1x172_out_feedback_valid_out_36;
    wire [31:0] i_llvm_fpga_push_f32_shift_reg_sroa_26_0_push35_conv2d1x175_out_feedback_out_35;
    wire [0:0] i_llvm_fpga_push_f32_shift_reg_sroa_26_0_push35_conv2d1x175_out_feedback_valid_out_35;
    wire [31:0] i_llvm_fpga_push_f32_shift_reg_sroa_29_0_push34_conv2d1x178_out_feedback_out_34;
    wire [0:0] i_llvm_fpga_push_f32_shift_reg_sroa_29_0_push34_conv2d1x178_out_feedback_valid_out_34;
    wire [31:0] i_llvm_fpga_push_f32_shift_reg_sroa_32_0_push33_conv2d1x181_out_feedback_out_33;
    wire [0:0] i_llvm_fpga_push_f32_shift_reg_sroa_32_0_push33_conv2d1x181_out_feedback_valid_out_33;
    wire [31:0] i_llvm_fpga_push_f32_shift_reg_sroa_35_0_push32_conv2d1x184_out_feedback_out_32;
    wire [0:0] i_llvm_fpga_push_f32_shift_reg_sroa_35_0_push32_conv2d1x184_out_feedback_valid_out_32;
    wire [31:0] i_llvm_fpga_push_f32_shift_reg_sroa_38_0_push31_conv2d1x187_out_feedback_out_31;
    wire [0:0] i_llvm_fpga_push_f32_shift_reg_sroa_38_0_push31_conv2d1x187_out_feedback_valid_out_31;
    wire [31:0] i_llvm_fpga_push_f32_shift_reg_sroa_41_0_push30_conv2d1x190_out_feedback_out_30;
    wire [0:0] i_llvm_fpga_push_f32_shift_reg_sroa_41_0_push30_conv2d1x190_out_feedback_valid_out_30;
    wire [31:0] i_llvm_fpga_push_f32_shift_reg_sroa_44_0_push29_conv2d1x193_out_feedback_out_29;
    wire [0:0] i_llvm_fpga_push_f32_shift_reg_sroa_44_0_push29_conv2d1x193_out_feedback_valid_out_29;
    wire [31:0] i_llvm_fpga_push_f32_shift_reg_sroa_47_0_push28_conv2d1x196_out_feedback_out_28;
    wire [0:0] i_llvm_fpga_push_f32_shift_reg_sroa_47_0_push28_conv2d1x196_out_feedback_valid_out_28;
    wire [31:0] i_llvm_fpga_push_f32_shift_reg_sroa_5_0_push42_conv2d1x154_out_feedback_out_42;
    wire [0:0] i_llvm_fpga_push_f32_shift_reg_sroa_5_0_push42_conv2d1x154_out_feedback_valid_out_42;
    wire [31:0] i_llvm_fpga_push_f32_shift_reg_sroa_8_0_push41_conv2d1x157_out_feedback_out_41;
    wire [0:0] i_llvm_fpga_push_f32_shift_reg_sroa_8_0_push41_conv2d1x157_out_feedback_valid_out_41;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration34_conv2d1x115_out_feedback_out_7;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration34_conv2d1x115_out_feedback_valid_out_7;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond42_conv2d1x1103_out_feedback_out_8;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond42_conv2d1x1103_out_feedback_valid_out_8;
    wire [31:0] i_llvm_fpga_push_i32_i_072_push44_conv2d1x198_out_feedback_out_44;
    wire [0:0] i_llvm_fpga_push_i32_i_072_push44_conv2d1x198_out_feedback_valid_out_44;
    wire [7:0] i_llvm_fpga_push_i4_cleanups35_push46_conv2d1x1106_out_feedback_out_46;
    wire [0:0] i_llvm_fpga_push_i4_cleanups35_push46_conv2d1x1106_out_feedback_valid_out_46;
    wire [7:0] i_llvm_fpga_push_i4_initerations30_push45_conv2d1x113_out_feedback_out_45;
    wire [0:0] i_llvm_fpga_push_i4_initerations30_push45_conv2d1x113_out_feedback_valid_out_45;
    wire [7:0] i_llvm_fpga_push_i6_fpga_indvars_iv304_push27_conv2d1x1108_out_feedback_out_27;
    wire [0:0] i_llvm_fpga_push_i6_fpga_indvars_iv304_push27_conv2d1x1108_out_feedback_valid_out_27;
    wire [0:0] i_masked41_conv2d1x1109_q;
    wire [0:0] i_next_cleanups40_conv2d1x1105_s;
    reg [3:0] i_next_cleanups40_conv2d1x1105_q;
    wire [3:0] i_next_initerations31_conv2d1x112_vt_join_q;
    wire [2:0] i_next_initerations31_conv2d1x112_vt_select_2_b;
    wire [0:0] i_notcmp28_conv2d1x1102_q;
    wire [0:0] i_or39_conv2d1x1104_q;
    wire [0:0] i_spec_select323_conv2d1x156_s;
    reg [31:0] i_spec_select323_conv2d1x156_q;
    wire [0:0] i_spec_select324_conv2d1x159_s;
    reg [31:0] i_spec_select324_conv2d1x159_q;
    wire [0:0] i_spec_select325_conv2d1x162_s;
    reg [31:0] i_spec_select325_conv2d1x162_q;
    wire [0:0] i_spec_select326_conv2d1x165_s;
    reg [31:0] i_spec_select326_conv2d1x165_q;
    wire [0:0] i_spec_select327_conv2d1x168_s;
    reg [31:0] i_spec_select327_conv2d1x168_q;
    wire [0:0] i_spec_select328_conv2d1x171_s;
    reg [31:0] i_spec_select328_conv2d1x171_q;
    wire [0:0] i_spec_select329_conv2d1x174_s;
    reg [31:0] i_spec_select329_conv2d1x174_q;
    wire [0:0] i_spec_select330_conv2d1x177_s;
    reg [31:0] i_spec_select330_conv2d1x177_q;
    wire [0:0] i_spec_select331_conv2d1x180_s;
    reg [31:0] i_spec_select331_conv2d1x180_q;
    wire [0:0] i_spec_select332_conv2d1x183_s;
    reg [31:0] i_spec_select332_conv2d1x183_q;
    wire [0:0] i_spec_select333_conv2d1x186_s;
    reg [31:0] i_spec_select333_conv2d1x186_q;
    wire [0:0] i_spec_select334_conv2d1x189_s;
    reg [31:0] i_spec_select334_conv2d1x189_q;
    wire [0:0] i_spec_select335_conv2d1x192_s;
    reg [31:0] i_spec_select335_conv2d1x192_q;
    wire [0:0] i_spec_select336_conv2d1x195_s;
    reg [31:0] i_spec_select336_conv2d1x195_q;
    wire [0:0] i_spec_select_conv2d1x150_s;
    reg [31:0] i_spec_select_conv2d1x150_q;
    wire [0:0] i_unnamed_conv2d1x117_q;
    wire [0:0] i_unnamed_conv2d1x119_q;
    wire [0:0] i_unnamed_conv2d1x121_q;
    wire [0:0] i_unnamed_conv2d1x123_q;
    wire [0:0] i_unnamed_conv2d1x125_q;
    wire [0:0] i_unnamed_conv2d1x127_q;
    wire [0:0] i_unnamed_conv2d1x129_q;
    wire [0:0] i_unnamed_conv2d1x131_q;
    wire [0:0] i_unnamed_conv2d1x133_q;
    wire [0:0] i_unnamed_conv2d1x135_q;
    wire [0:0] i_unnamed_conv2d1x137_q;
    wire [0:0] i_unnamed_conv2d1x139_q;
    wire [0:0] i_unnamed_conv2d1x141_q;
    wire [0:0] i_unnamed_conv2d1x143_q;
    wire [0:0] i_unnamed_conv2d1x145_q;
    wire [0:0] i_unnamed_conv2d1x147_q;
    wire [0:0] i_unnamed_conv2d1x153_s;
    reg [31:0] i_unnamed_conv2d1x153_q;
    wire [5:0] bgTrunc_i_fpga_indvars_iv_next305_conv2d1x1107_sel_x_b;
    wire [31:0] bgTrunc_i_inc_conv2d1x197_sel_x_b;
    wire [31:0] c_i32_10163_recast_x_q;
    wire [31:0] c_i32_11162_recast_x_q;
    wire [31:0] c_i32_12161_recast_x_q;
    wire [31:0] c_i32_13160_recast_x_q;
    wire [31:0] c_i32_14159_recast_x_q;
    wire [31:0] c_i32_15158_recast_x_q;
    wire [31:0] c_i32_2171_recast_x_q;
    wire [31:0] c_i32_3170_recast_x_q;
    wire [31:0] c_i32_4169_recast_x_q;
    wire [31:0] c_i32_5168_recast_x_q;
    wire [31:0] c_i32_6167_recast_x_q;
    wire [31:0] c_i32_7166_recast_x_q;
    wire [31:0] c_i32_8165_recast_x_q;
    wire [31:0] c_i32_9164_recast_x_q;
    wire [0:0] i_first_cleanup37_conv2d1x15_sel_x_b;
    wire [0:0] i_last_initeration33_conv2d1x114_sel_x_b;
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
    wire [0:0] i_exitcond306_conv2d1x1100_cmp_nsign_q;
    wire [2:0] leftShiftStage0Idx1Rng1_uid253_i_cleanups_shl36_conv2d1x10_shift_x_in;
    wire [2:0] leftShiftStage0Idx1Rng1_uid253_i_cleanups_shl36_conv2d1x10_shift_x_b;
    wire [3:0] leftShiftStage0Idx1_uid254_i_cleanups_shl36_conv2d1x10_shift_x_q;
    wire [0:0] leftShiftStage0_uid256_i_cleanups_shl36_conv2d1x10_shift_x_s;
    reg [3:0] leftShiftStage0_uid256_i_cleanups_shl36_conv2d1x10_shift_x_q;
    wire [2:0] rightShiftStage0Idx1Rng1_uid260_i_next_initerations31_conv2d1x10_shift_x_b;
    wire [3:0] rightShiftStage0Idx1_uid262_i_next_initerations31_conv2d1x10_shift_x_q;
    wire [0:0] rightShiftStage0_uid264_i_next_initerations31_conv2d1x10_shift_x_s;
    reg [3:0] rightShiftStage0_uid264_i_next_initerations31_conv2d1x10_shift_x_q;
    reg [0:0] redist0_sync_together223_aunroll_x_in_c0_eni1_1_tpl_1_q;
    reg [0:0] redist1_sync_together223_aunroll_x_in_i_valid_1_q;
    reg [0:0] redist2_i_llvm_fpga_pipeline_keep_going32_conv2d1x18_out_data_out_1_q;


    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist1_sync_together223_aunroll_x_in_i_valid_1(DELAY,266)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together223_aunroll_x_in_i_valid_1_q <= '0;
        end
        else
        begin
            redist1_sync_together223_aunroll_x_in_i_valid_1_q <= $unsigned(in_i_valid);
        end
    end

    // redist2_i_llvm_fpga_pipeline_keep_going32_conv2d1x18_out_data_out_1(DELAY,267)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_i_llvm_fpga_pipeline_keep_going32_conv2d1x18_out_data_out_1_q <= '0;
        end
        else
        begin
            redist2_i_llvm_fpga_pipeline_keep_going32_conv2d1x18_out_data_out_1_q <= $unsigned(i_llvm_fpga_pipeline_keep_going32_conv2d1x18_out_data_out);
        end
    end

    // leftShiftStage0Idx1Rng1_uid253_i_cleanups_shl36_conv2d1x10_shift_x(BITSELECT,252)@2
    assign leftShiftStage0Idx1Rng1_uid253_i_cleanups_shl36_conv2d1x10_shift_x_in = i_llvm_fpga_pop_i4_cleanups35_pop46_conv2d1x14_out_data_out[2:0];
    assign leftShiftStage0Idx1Rng1_uid253_i_cleanups_shl36_conv2d1x10_shift_x_b = leftShiftStage0Idx1Rng1_uid253_i_cleanups_shl36_conv2d1x10_shift_x_in[2:0];

    // leftShiftStage0Idx1_uid254_i_cleanups_shl36_conv2d1x10_shift_x(BITJOIN,253)@2
    assign leftShiftStage0Idx1_uid254_i_cleanups_shl36_conv2d1x10_shift_x_q = {leftShiftStage0Idx1Rng1_uid253_i_cleanups_shl36_conv2d1x10_shift_x_b, GND_q};

    // leftShiftStage0_uid256_i_cleanups_shl36_conv2d1x10_shift_x(MUX,255)@2
    assign leftShiftStage0_uid256_i_cleanups_shl36_conv2d1x10_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid256_i_cleanups_shl36_conv2d1x10_shift_x_s or i_llvm_fpga_pop_i4_cleanups35_pop46_conv2d1x14_out_data_out or leftShiftStage0Idx1_uid254_i_cleanups_shl36_conv2d1x10_shift_x_q)
    begin
        unique case (leftShiftStage0_uid256_i_cleanups_shl36_conv2d1x10_shift_x_s)
            1'b0 : leftShiftStage0_uid256_i_cleanups_shl36_conv2d1x10_shift_x_q = i_llvm_fpga_pop_i4_cleanups35_pop46_conv2d1x14_out_data_out;
            1'b1 : leftShiftStage0_uid256_i_cleanups_shl36_conv2d1x10_shift_x_q = leftShiftStage0Idx1_uid254_i_cleanups_shl36_conv2d1x10_shift_x_q;
            default : leftShiftStage0_uid256_i_cleanups_shl36_conv2d1x10_shift_x_q = 4'b0;
        endcase
    end

    // i_cleanups_shl36_conv2d1x17_vt_select_3(BITSELECT,59)@2
    assign i_cleanups_shl36_conv2d1x17_vt_select_3_b = leftShiftStage0_uid256_i_cleanups_shl36_conv2d1x10_shift_x_q[3:1];

    // i_cleanups_shl36_conv2d1x17_vt_join(BITJOIN,58)@2
    assign i_cleanups_shl36_conv2d1x17_vt_join_q = {i_cleanups_shl36_conv2d1x17_vt_select_3_b, GND_q};

    // i_first_cleanup_xor38_conv2d1x16(LOGICAL,62)@2
    assign i_first_cleanup_xor38_conv2d1x16_q = i_first_cleanup37_conv2d1x15_sel_x_b ^ VCC_q;

    // i_notcmp28_conv2d1x1102(LOGICAL,118)@2
    assign i_notcmp28_conv2d1x1102_q = i_exitcond306_conv2d1x1100_cmp_nsign_q ^ VCC_q;

    // i_or39_conv2d1x1104(LOGICAL,119)@2
    assign i_or39_conv2d1x1104_q = i_notcmp28_conv2d1x1102_q | i_first_cleanup_xor38_conv2d1x16_q;

    // i_next_cleanups40_conv2d1x1105(MUX,114)@2
    assign i_next_cleanups40_conv2d1x1105_s = i_or39_conv2d1x1104_q;
    always @(i_next_cleanups40_conv2d1x1105_s or i_llvm_fpga_pop_i4_cleanups35_pop46_conv2d1x14_out_data_out or i_cleanups_shl36_conv2d1x17_vt_join_q)
    begin
        unique case (i_next_cleanups40_conv2d1x1105_s)
            1'b0 : i_next_cleanups40_conv2d1x1105_q = i_llvm_fpga_pop_i4_cleanups35_pop46_conv2d1x14_out_data_out;
            1'b1 : i_next_cleanups40_conv2d1x1105_q = i_cleanups_shl36_conv2d1x17_vt_join_q;
            default : i_next_cleanups40_conv2d1x1105_q = 4'b0;
        endcase
    end

    // i_llvm_fpga_push_i4_cleanups35_push46_conv2d1x1106(BLACKBOX,110)@2
    // out out_feedback_out_46@20000000
    // out out_feedback_valid_out_46@20000000
    conv2d1x1_i_llvm_fpga_push_i4_cleanups35_push46_0 thei_llvm_fpga_push_i4_cleanups35_push46_conv2d1x1106 (
        .in_data_in(i_next_cleanups40_conv2d1x1105_q),
        .in_feedback_stall_in_46(i_llvm_fpga_pop_i4_cleanups35_pop46_conv2d1x14_out_feedback_stall_out_46),
        .in_keep_going32(redist2_i_llvm_fpga_pipeline_keep_going32_conv2d1x18_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist1_sync_together223_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_46(i_llvm_fpga_push_i4_cleanups35_push46_conv2d1x1106_out_feedback_out_46),
        .out_feedback_valid_out_46(i_llvm_fpga_push_i4_cleanups35_push46_conv2d1x1106_out_feedback_valid_out_46),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist0_sync_together223_aunroll_x_in_c0_eni1_1_tpl_1(DELAY,265)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_sync_together223_aunroll_x_in_c0_eni1_1_tpl_1_q <= '0;
        end
        else
        begin
            redist0_sync_together223_aunroll_x_in_c0_eni1_1_tpl_1_q <= $unsigned(in_c0_eni1_1_tpl);
        end
    end

    // c_i4_7154(CONSTANT,53)
    assign c_i4_7154_q = $unsigned(4'b0111);

    // i_llvm_fpga_pop_i4_cleanups35_pop46_conv2d1x14(BLACKBOX,88)@2
    // out out_feedback_stall_out_46@20000000
    conv2d1x1_i_llvm_fpga_pop_i4_cleanups35_pop46_0 thei_llvm_fpga_pop_i4_cleanups35_pop46_conv2d1x14 (
        .in_data_in(c_i4_7154_q),
        .in_dir(redist0_sync_together223_aunroll_x_in_c0_eni1_1_tpl_1_q),
        .in_feedback_in_46(i_llvm_fpga_push_i4_cleanups35_push46_conv2d1x1106_out_feedback_out_46),
        .in_feedback_valid_in_46(i_llvm_fpga_push_i4_cleanups35_push46_conv2d1x1106_out_feedback_valid_out_46),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist1_sync_together223_aunroll_x_in_i_valid_1_q),
        .out_data_out(i_llvm_fpga_pop_i4_cleanups35_pop46_conv2d1x14_out_data_out),
        .out_feedback_stall_out_46(i_llvm_fpga_pop_i4_cleanups35_pop46_conv2d1x14_out_feedback_stall_out_46),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_first_cleanup37_conv2d1x15_sel_x(BITSELECT,195)@2
    assign i_first_cleanup37_conv2d1x15_sel_x_b = i_llvm_fpga_pop_i4_cleanups35_pop46_conv2d1x14_out_data_out[0:0];

    // c_i6_1177(CONSTANT,54)
    assign c_i6_1177_q = $unsigned(6'b111111);

    // i_fpga_indvars_iv_next305_conv2d1x1107(ADD,63)@2
    assign i_fpga_indvars_iv_next305_conv2d1x1107_a = {1'b0, i_llvm_fpga_pop_i6_fpga_indvars_iv304_pop27_conv2d1x199_out_data_out};
    assign i_fpga_indvars_iv_next305_conv2d1x1107_b = {1'b0, c_i6_1177_q};
    assign i_fpga_indvars_iv_next305_conv2d1x1107_o = $unsigned(i_fpga_indvars_iv_next305_conv2d1x1107_a) + $unsigned(i_fpga_indvars_iv_next305_conv2d1x1107_b);
    assign i_fpga_indvars_iv_next305_conv2d1x1107_q = i_fpga_indvars_iv_next305_conv2d1x1107_o[6:0];

    // bgTrunc_i_fpga_indvars_iv_next305_conv2d1x1107_sel_x(BITSELECT,172)@2
    assign bgTrunc_i_fpga_indvars_iv_next305_conv2d1x1107_sel_x_b = i_fpga_indvars_iv_next305_conv2d1x1107_q[5:0];

    // i_llvm_fpga_push_i6_fpga_indvars_iv304_push27_conv2d1x1108(BLACKBOX,112)@2
    // out out_feedback_out_27@20000000
    // out out_feedback_valid_out_27@20000000
    conv2d1x1_i_llvm_fpga_push_i6_fpga_indvars_iv304_push27_0 thei_llvm_fpga_push_i6_fpga_indvars_iv304_push27_conv2d1x1108 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next305_conv2d1x1107_sel_x_b),
        .in_feedback_stall_in_27(i_llvm_fpga_pop_i6_fpga_indvars_iv304_pop27_conv2d1x199_out_feedback_stall_out_27),
        .in_keep_going32(redist2_i_llvm_fpga_pipeline_keep_going32_conv2d1x18_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist1_sync_together223_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_27(i_llvm_fpga_push_i6_fpga_indvars_iv304_push27_conv2d1x1108_out_feedback_out_27),
        .out_feedback_valid_out_27(i_llvm_fpga_push_i6_fpga_indvars_iv304_push27_conv2d1x1108_out_feedback_valid_out_27),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i6_15175(CONSTANT,55)
    assign c_i6_15175_q = $unsigned(6'b001111);

    // i_llvm_fpga_pop_i6_fpga_indvars_iv304_pop27_conv2d1x199(BLACKBOX,90)@2
    // out out_feedback_stall_out_27@20000000
    conv2d1x1_i_llvm_fpga_pop_i6_fpga_indvars_iv304_pop27_0 thei_llvm_fpga_pop_i6_fpga_indvars_iv304_pop27_conv2d1x199 (
        .in_data_in(c_i6_15175_q),
        .in_dir(redist0_sync_together223_aunroll_x_in_c0_eni1_1_tpl_1_q),
        .in_feedback_in_27(i_llvm_fpga_push_i6_fpga_indvars_iv304_push27_conv2d1x1108_out_feedback_out_27),
        .in_feedback_valid_in_27(i_llvm_fpga_push_i6_fpga_indvars_iv304_push27_conv2d1x1108_out_feedback_valid_out_27),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist1_sync_together223_aunroll_x_in_i_valid_1_q),
        .out_data_out(i_llvm_fpga_pop_i6_fpga_indvars_iv304_pop27_conv2d1x199_out_data_out),
        .out_feedback_stall_out_27(i_llvm_fpga_pop_i6_fpga_indvars_iv304_pop27_conv2d1x199_out_feedback_stall_out_27),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_exitcond306_conv2d1x1100_cmp_nsign(LOGICAL,248)@2
    assign i_exitcond306_conv2d1x1100_cmp_nsign_q = $unsigned(~ (i_llvm_fpga_pop_i6_fpga_indvars_iv304_pop27_conv2d1x199_out_data_out[5:5]));

    // i_llvm_fpga_push_i1_notexitcond42_conv2d1x1103(BLACKBOX,108)@2
    // out out_feedback_out_8@20000000
    // out out_feedback_valid_out_8@20000000
    conv2d1x1_i_llvm_fpga_push_i1_notexitcond42_0 thei_llvm_fpga_push_i1_notexitcond42_conv2d1x1103 (
        .in_data_in(i_exitcond306_conv2d1x1100_cmp_nsign_q),
        .in_feedback_stall_in_8(i_llvm_fpga_pipeline_keep_going32_conv2d1x18_out_not_exitcond_stall_out),
        .in_first_cleanup37(i_first_cleanup37_conv2d1x15_sel_x_b),
        .in_stall_in(GND_q),
        .in_valid_in(redist1_sync_together223_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_8(i_llvm_fpga_push_i1_notexitcond42_conv2d1x1103_out_feedback_out_8),
        .out_feedback_valid_out_8(i_llvm_fpga_push_i1_notexitcond42_conv2d1x1103_out_feedback_valid_out_8),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg3(REG,206)@1 + 1
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

    // rightShiftStage0Idx1Rng1_uid260_i_next_initerations31_conv2d1x10_shift_x(BITSELECT,259)@2
    assign rightShiftStage0Idx1Rng1_uid260_i_next_initerations31_conv2d1x10_shift_x_b = i_llvm_fpga_pop_i4_initerations30_pop45_conv2d1x111_out_data_out[3:1];

    // rightShiftStage0Idx1_uid262_i_next_initerations31_conv2d1x10_shift_x(BITJOIN,261)@2
    assign rightShiftStage0Idx1_uid262_i_next_initerations31_conv2d1x10_shift_x_q = {GND_q, rightShiftStage0Idx1Rng1_uid260_i_next_initerations31_conv2d1x10_shift_x_b};

    // valid_fanout_reg1(REG,204)@1 + 1
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

    // valid_fanout_reg2(REG,205)@1 + 1
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

    // i_llvm_fpga_push_i4_initerations30_push45_conv2d1x113(BLACKBOX,111)@2
    // out out_feedback_out_45@20000000
    // out out_feedback_valid_out_45@20000000
    conv2d1x1_i_llvm_fpga_push_i4_initerations30_push45_0 thei_llvm_fpga_push_i4_initerations30_push45_conv2d1x113 (
        .in_data_in(i_next_initerations31_conv2d1x112_vt_join_q),
        .in_feedback_stall_in_45(i_llvm_fpga_pop_i4_initerations30_pop45_conv2d1x111_out_feedback_stall_out_45),
        .in_keep_going32(redist2_i_llvm_fpga_pipeline_keep_going32_conv2d1x18_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(),
        .out_feedback_out_45(i_llvm_fpga_push_i4_initerations30_push45_conv2d1x113_out_feedback_out_45),
        .out_feedback_valid_out_45(i_llvm_fpga_push_i4_initerations30_push45_conv2d1x113_out_feedback_valid_out_45),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i4_initerations30_pop45_conv2d1x111(BLACKBOX,89)@2
    // out out_feedback_stall_out_45@20000000
    conv2d1x1_i_llvm_fpga_pop_i4_initerations30_pop45_0 thei_llvm_fpga_pop_i4_initerations30_pop45_conv2d1x111 (
        .in_data_in(c_i4_7154_q),
        .in_dir(redist0_sync_together223_aunroll_x_in_c0_eni1_1_tpl_1_q),
        .in_feedback_in_45(i_llvm_fpga_push_i4_initerations30_push45_conv2d1x113_out_feedback_out_45),
        .in_feedback_valid_in_45(i_llvm_fpga_push_i4_initerations30_push45_conv2d1x113_out_feedback_valid_out_45),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_data_out(i_llvm_fpga_pop_i4_initerations30_pop45_conv2d1x111_out_data_out),
        .out_feedback_stall_out_45(i_llvm_fpga_pop_i4_initerations30_pop45_conv2d1x111_out_feedback_stall_out_45),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // rightShiftStage0_uid264_i_next_initerations31_conv2d1x10_shift_x(MUX,263)@2
    assign rightShiftStage0_uid264_i_next_initerations31_conv2d1x10_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid264_i_next_initerations31_conv2d1x10_shift_x_s or i_llvm_fpga_pop_i4_initerations30_pop45_conv2d1x111_out_data_out or rightShiftStage0Idx1_uid262_i_next_initerations31_conv2d1x10_shift_x_q)
    begin
        unique case (rightShiftStage0_uid264_i_next_initerations31_conv2d1x10_shift_x_s)
            1'b0 : rightShiftStage0_uid264_i_next_initerations31_conv2d1x10_shift_x_q = i_llvm_fpga_pop_i4_initerations30_pop45_conv2d1x111_out_data_out;
            1'b1 : rightShiftStage0_uid264_i_next_initerations31_conv2d1x10_shift_x_q = rightShiftStage0Idx1_uid262_i_next_initerations31_conv2d1x10_shift_x_q;
            default : rightShiftStage0_uid264_i_next_initerations31_conv2d1x10_shift_x_q = 4'b0;
        endcase
    end

    // i_next_initerations31_conv2d1x112_vt_select_2(BITSELECT,117)@2
    assign i_next_initerations31_conv2d1x112_vt_select_2_b = rightShiftStage0_uid264_i_next_initerations31_conv2d1x10_shift_x_q[2:0];

    // i_next_initerations31_conv2d1x112_vt_join(BITJOIN,116)@2
    assign i_next_initerations31_conv2d1x112_vt_join_q = {GND_q, i_next_initerations31_conv2d1x112_vt_select_2_b};

    // i_last_initeration33_conv2d1x114_sel_x(BITSELECT,196)@2
    assign i_last_initeration33_conv2d1x114_sel_x_b = i_next_initerations31_conv2d1x112_vt_join_q[0:0];

    // i_llvm_fpga_push_i1_lastiniteration34_conv2d1x115(BLACKBOX,107)@2
    // out out_feedback_out_7@20000000
    // out out_feedback_valid_out_7@20000000
    conv2d1x1_i_llvm_fpga_push_i1_lastiniteration34_0 thei_llvm_fpga_push_i1_lastiniteration34_conv2d1x115 (
        .in_data_in(i_last_initeration33_conv2d1x114_sel_x_b),
        .in_feedback_stall_in_7(i_llvm_fpga_pipeline_keep_going32_conv2d1x18_out_initeration_stall_out),
        .in_keep_going32(redist2_i_llvm_fpga_pipeline_keep_going32_conv2d1x18_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_data_out(),
        .out_feedback_out_7(i_llvm_fpga_push_i1_lastiniteration34_conv2d1x115_out_feedback_out_7),
        .out_feedback_valid_out_7(i_llvm_fpga_push_i1_lastiniteration34_conv2d1x115_out_feedback_valid_out_7),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going32_conv2d1x18(BLACKBOX,70)@1
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    conv2d1x1_i_llvm_fpga_pipeline_keep_going32_0 thei_llvm_fpga_pipeline_keep_going32_conv2d1x18 (
        .in_data_in(in_c0_eni1_1_tpl),
        .in_initeration_in(i_llvm_fpga_push_i1_lastiniteration34_conv2d1x115_out_feedback_out_7),
        .in_initeration_valid_in(i_llvm_fpga_push_i1_lastiniteration34_conv2d1x115_out_feedback_valid_out_7),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond42_conv2d1x1103_out_feedback_out_8),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond42_conv2d1x1103_out_feedback_valid_out_8),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(i_llvm_fpga_pipeline_keep_going32_conv2d1x18_out_data_out),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going32_conv2d1x18_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going32_conv2d1x18_out_exiting_valid_out),
        .out_initeration_stall_out(i_llvm_fpga_pipeline_keep_going32_conv2d1x18_out_initeration_stall_out),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going32_conv2d1x18_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going32_conv2d1x18_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,56)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going32_conv2d1x18_exiting_valid_out = i_llvm_fpga_pipeline_keep_going32_conv2d1x18_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going32_conv2d1x18_exiting_stall_out = i_llvm_fpga_pipeline_keep_going32_conv2d1x18_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,170)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going32_conv2d1x18_out_pipeline_valid_out;

    // valid_fanout_reg0(REG,203)@1 + 1
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

    // i_masked41_conv2d1x1109(LOGICAL,113)@2
    assign i_masked41_conv2d1x1109_q = i_notcmp28_conv2d1x1102_q & i_first_cleanup37_conv2d1x15_sel_x_b;

    // c_float_0_000000e_00174(FLOATCONSTANT,4)
    assign c_float_0_000000e_00174_q = $unsigned(32'b00000000000000000000000000000000);

    // valid_fanout_reg35(REG,238)@1 + 1
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

    // valid_fanout_reg36(REG,239)@1 + 1
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

    // i_llvm_fpga_fanout_i1_keep_going32_fanout_adaptor849_conv2d1x19(REG,68)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_llvm_fpga_fanout_i1_keep_going32_fanout_adaptor849_conv2d1x19_q <= $unsigned(1'b0);
        end
        else
        begin
            i_llvm_fpga_fanout_i1_keep_going32_fanout_adaptor849_conv2d1x19_q <= i_llvm_fpga_pipeline_keep_going32_conv2d1x18_out_data_out;
        end
    end

    // i_llvm_fpga_push_f32_shift_reg_sroa_47_0_push28_conv2d1x196(BLACKBOX,104)@2
    // out out_feedback_out_28@20000000
    // out out_feedback_valid_out_28@20000000
    conv2d1x1_i_llvm_fpga_push_f32_shift_reg_sroa_47_0_push28_0 thei_llvm_fpga_push_f32_shift_reg_sroa_47_0_push28_conv2d1x196 (
        .in_data_in(i_spec_select336_conv2d1x195_q),
        .in_feedback_stall_in_28(i_llvm_fpga_pop_f32_shift_reg_sroa_47_0_pop28_conv2d1x194_out_feedback_stall_out_28),
        .in_keep_going32_fanout_adaptor849(i_llvm_fpga_fanout_i1_keep_going32_fanout_adaptor849_conv2d1x19_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg36_q),
        .out_data_out(),
        .out_feedback_out_28(i_llvm_fpga_push_f32_shift_reg_sroa_47_0_push28_conv2d1x196_out_feedback_out_28),
        .out_feedback_valid_out_28(i_llvm_fpga_push_f32_shift_reg_sroa_47_0_push28_conv2d1x196_out_feedback_valid_out_28),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_fanout_i1_c0_ene1_fanout_adaptor848_conv2d1x12(REG,66)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_llvm_fpga_fanout_i1_c0_ene1_fanout_adaptor848_conv2d1x12_q <= $unsigned(1'b0);
        end
        else
        begin
            i_llvm_fpga_fanout_i1_c0_ene1_fanout_adaptor848_conv2d1x12_q <= in_c0_eni1_1_tpl;
        end
    end

    // i_llvm_fpga_pop_f32_shift_reg_sroa_47_0_pop28_conv2d1x194(BLACKBOX,84)@2
    // out out_feedback_stall_out_28@20000000
    conv2d1x1_i_llvm_fpga_pop_f32_shift_reg_sroa_47_0_pop28_0 thei_llvm_fpga_pop_f32_shift_reg_sroa_47_0_pop28_conv2d1x194 (
        .in_data_in(c_float_0_000000e_00174_q),
        .in_dir(i_llvm_fpga_fanout_i1_c0_ene1_fanout_adaptor848_conv2d1x12_q),
        .in_feedback_in_28(i_llvm_fpga_push_f32_shift_reg_sroa_47_0_push28_conv2d1x196_out_feedback_out_28),
        .in_feedback_valid_in_28(i_llvm_fpga_push_f32_shift_reg_sroa_47_0_push28_conv2d1x196_out_feedback_valid_out_28),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg35_q),
        .out_data_out(i_llvm_fpga_pop_f32_shift_reg_sroa_47_0_pop28_conv2d1x194_out_data_out),
        .out_feedback_stall_out_28(i_llvm_fpga_pop_f32_shift_reg_sroa_47_0_pop28_conv2d1x194_out_feedback_stall_out_28),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_15158_recast_x(CONSTANT,181)
    assign c_i32_15158_recast_x_q = $unsigned(32'b00000000000000000000000000001111);

    // valid_fanout_reg4(REG,207)@1 + 1
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

    // valid_fanout_reg37(REG,240)@1 + 1
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

    // i_llvm_fpga_fanout_i1_keep_going32_fanout_adaptor_conv2d1x110(REG,69)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_llvm_fpga_fanout_i1_keep_going32_fanout_adaptor_conv2d1x110_q <= $unsigned(1'b0);
        end
        else
        begin
            i_llvm_fpga_fanout_i1_keep_going32_fanout_adaptor_conv2d1x110_q <= i_llvm_fpga_pipeline_keep_going32_conv2d1x18_out_data_out;
        end
    end

    // c_i32_1172(CONSTANT,51)
    assign c_i32_1172_q = $unsigned(32'b00000000000000000000000000000001);

    // i_inc_conv2d1x197(ADD,64)@2
    assign i_inc_conv2d1x197_a = {1'b0, i_llvm_fpga_pop_i32_i_072_pop44_conv2d1x116_out_data_out};
    assign i_inc_conv2d1x197_b = {1'b0, c_i32_1172_q};
    assign i_inc_conv2d1x197_o = $unsigned(i_inc_conv2d1x197_a) + $unsigned(i_inc_conv2d1x197_b);
    assign i_inc_conv2d1x197_q = i_inc_conv2d1x197_o[32:0];

    // bgTrunc_i_inc_conv2d1x197_sel_x(BITSELECT,173)@2
    assign bgTrunc_i_inc_conv2d1x197_sel_x_b = i_inc_conv2d1x197_q[31:0];

    // i_llvm_fpga_push_i32_i_072_push44_conv2d1x198(BLACKBOX,109)@2
    // out out_feedback_out_44@20000000
    // out out_feedback_valid_out_44@20000000
    conv2d1x1_i_llvm_fpga_push_i32_i_072_push44_0 thei_llvm_fpga_push_i32_i_072_push44_conv2d1x198 (
        .in_data_in(bgTrunc_i_inc_conv2d1x197_sel_x_b),
        .in_feedback_stall_in_44(i_llvm_fpga_pop_i32_i_072_pop44_conv2d1x116_out_feedback_stall_out_44),
        .in_keep_going32_fanout_adaptor(i_llvm_fpga_fanout_i1_keep_going32_fanout_adaptor_conv2d1x110_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg37_q),
        .out_data_out(),
        .out_feedback_out_44(i_llvm_fpga_push_i32_i_072_push44_conv2d1x198_out_feedback_out_44),
        .out_feedback_valid_out_44(i_llvm_fpga_push_i32_i_072_push44_conv2d1x198_out_feedback_valid_out_44),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_fanout_i1_c0_ene1_fanout_adaptor_conv2d1x13(REG,67)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_llvm_fpga_fanout_i1_c0_ene1_fanout_adaptor_conv2d1x13_q <= $unsigned(1'b0);
        end
        else
        begin
            i_llvm_fpga_fanout_i1_c0_ene1_fanout_adaptor_conv2d1x13_q <= in_c0_eni1_1_tpl;
        end
    end

    // c_i32_0157(CONSTANT,50)
    assign c_i32_0157_q = $unsigned(32'b00000000000000000000000000000000);

    // i_llvm_fpga_pop_i32_i_072_pop44_conv2d1x116(BLACKBOX,87)@2
    // out out_feedback_stall_out_44@20000000
    conv2d1x1_i_llvm_fpga_pop_i32_i_072_pop44_0 thei_llvm_fpga_pop_i32_i_072_pop44_conv2d1x116 (
        .in_data_in(c_i32_0157_q),
        .in_dir(i_llvm_fpga_fanout_i1_c0_ene1_fanout_adaptor_conv2d1x13_q),
        .in_feedback_in_44(i_llvm_fpga_push_i32_i_072_push44_conv2d1x198_out_feedback_out_44),
        .in_feedback_valid_in_44(i_llvm_fpga_push_i32_i_072_push44_conv2d1x198_out_feedback_valid_out_44),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_data_out(i_llvm_fpga_pop_i32_i_072_pop44_conv2d1x116_out_data_out),
        .out_feedback_stall_out_44(i_llvm_fpga_pop_i32_i_072_pop44_conv2d1x116_out_feedback_stall_out_44),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_conv2d1x117(LOGICAL,135)@2
    assign i_unnamed_conv2d1x117_q = $unsigned(i_llvm_fpga_pop_i32_i_072_pop44_conv2d1x116_out_data_out == c_i32_15158_recast_x_q ? 1'b1 : 1'b0);

    // i_spec_select336_conv2d1x195(MUX,133)@2
    assign i_spec_select336_conv2d1x195_s = i_unnamed_conv2d1x117_q;
    always @(i_spec_select336_conv2d1x195_s or i_llvm_fpga_pop_f32_shift_reg_sroa_47_0_pop28_conv2d1x194_out_data_out or c_float_0_000000e_00174_q)
    begin
        unique case (i_spec_select336_conv2d1x195_s)
            1'b0 : i_spec_select336_conv2d1x195_q = i_llvm_fpga_pop_f32_shift_reg_sroa_47_0_pop28_conv2d1x194_out_data_out;
            1'b1 : i_spec_select336_conv2d1x195_q = c_float_0_000000e_00174_q;
            default : i_spec_select336_conv2d1x195_q = 32'b0;
        endcase
    end

    // valid_fanout_reg33(REG,236)@1 + 1
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

    // valid_fanout_reg34(REG,237)@1 + 1
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

    // i_llvm_fpga_push_f32_shift_reg_sroa_44_0_push29_conv2d1x193(BLACKBOX,103)@2
    // out out_feedback_out_29@20000000
    // out out_feedback_valid_out_29@20000000
    conv2d1x1_i_llvm_fpga_push_f32_shift_reg_sroa_44_0_push29_0 thei_llvm_fpga_push_f32_shift_reg_sroa_44_0_push29_conv2d1x193 (
        .in_data_in(i_spec_select335_conv2d1x192_q),
        .in_feedback_stall_in_29(i_llvm_fpga_pop_f32_shift_reg_sroa_44_0_pop29_conv2d1x191_out_feedback_stall_out_29),
        .in_keep_going32_fanout_adaptor849(i_llvm_fpga_fanout_i1_keep_going32_fanout_adaptor849_conv2d1x19_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg34_q),
        .out_data_out(),
        .out_feedback_out_29(i_llvm_fpga_push_f32_shift_reg_sroa_44_0_push29_conv2d1x193_out_feedback_out_29),
        .out_feedback_valid_out_29(i_llvm_fpga_push_f32_shift_reg_sroa_44_0_push29_conv2d1x193_out_feedback_valid_out_29),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_f32_shift_reg_sroa_44_0_pop29_conv2d1x191(BLACKBOX,83)@2
    // out out_feedback_stall_out_29@20000000
    conv2d1x1_i_llvm_fpga_pop_f32_shift_reg_sroa_44_0_pop29_0 thei_llvm_fpga_pop_f32_shift_reg_sroa_44_0_pop29_conv2d1x191 (
        .in_data_in(c_float_0_000000e_00174_q),
        .in_dir(i_llvm_fpga_fanout_i1_c0_ene1_fanout_adaptor848_conv2d1x12_q),
        .in_feedback_in_29(i_llvm_fpga_push_f32_shift_reg_sroa_44_0_push29_conv2d1x193_out_feedback_out_29),
        .in_feedback_valid_in_29(i_llvm_fpga_push_f32_shift_reg_sroa_44_0_push29_conv2d1x193_out_feedback_valid_out_29),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg33_q),
        .out_data_out(i_llvm_fpga_pop_f32_shift_reg_sroa_44_0_pop29_conv2d1x191_out_data_out),
        .out_feedback_stall_out_29(i_llvm_fpga_pop_f32_shift_reg_sroa_44_0_pop29_conv2d1x191_out_feedback_stall_out_29),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_14159_recast_x(CONSTANT,180)
    assign c_i32_14159_recast_x_q = $unsigned(32'b00000000000000000000000000001110);

    // i_unnamed_conv2d1x119(LOGICAL,136)@2
    assign i_unnamed_conv2d1x119_q = $unsigned(i_llvm_fpga_pop_i32_i_072_pop44_conv2d1x116_out_data_out == c_i32_14159_recast_x_q ? 1'b1 : 1'b0);

    // i_spec_select335_conv2d1x192(MUX,132)@2
    assign i_spec_select335_conv2d1x192_s = i_unnamed_conv2d1x119_q;
    always @(i_spec_select335_conv2d1x192_s or i_llvm_fpga_pop_f32_shift_reg_sroa_44_0_pop29_conv2d1x191_out_data_out or c_float_0_000000e_00174_q)
    begin
        unique case (i_spec_select335_conv2d1x192_s)
            1'b0 : i_spec_select335_conv2d1x192_q = i_llvm_fpga_pop_f32_shift_reg_sroa_44_0_pop29_conv2d1x191_out_data_out;
            1'b1 : i_spec_select335_conv2d1x192_q = c_float_0_000000e_00174_q;
            default : i_spec_select335_conv2d1x192_q = 32'b0;
        endcase
    end

    // valid_fanout_reg31(REG,234)@1 + 1
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

    // valid_fanout_reg32(REG,235)@1 + 1
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

    // i_llvm_fpga_push_f32_shift_reg_sroa_41_0_push30_conv2d1x190(BLACKBOX,102)@2
    // out out_feedback_out_30@20000000
    // out out_feedback_valid_out_30@20000000
    conv2d1x1_i_llvm_fpga_push_f32_shift_reg_sroa_41_0_push30_0 thei_llvm_fpga_push_f32_shift_reg_sroa_41_0_push30_conv2d1x190 (
        .in_data_in(i_spec_select334_conv2d1x189_q),
        .in_feedback_stall_in_30(i_llvm_fpga_pop_f32_shift_reg_sroa_41_0_pop30_conv2d1x188_out_feedback_stall_out_30),
        .in_keep_going32_fanout_adaptor849(i_llvm_fpga_fanout_i1_keep_going32_fanout_adaptor849_conv2d1x19_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg32_q),
        .out_data_out(),
        .out_feedback_out_30(i_llvm_fpga_push_f32_shift_reg_sroa_41_0_push30_conv2d1x190_out_feedback_out_30),
        .out_feedback_valid_out_30(i_llvm_fpga_push_f32_shift_reg_sroa_41_0_push30_conv2d1x190_out_feedback_valid_out_30),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_f32_shift_reg_sroa_41_0_pop30_conv2d1x188(BLACKBOX,82)@2
    // out out_feedback_stall_out_30@20000000
    conv2d1x1_i_llvm_fpga_pop_f32_shift_reg_sroa_41_0_pop30_0 thei_llvm_fpga_pop_f32_shift_reg_sroa_41_0_pop30_conv2d1x188 (
        .in_data_in(c_float_0_000000e_00174_q),
        .in_dir(i_llvm_fpga_fanout_i1_c0_ene1_fanout_adaptor848_conv2d1x12_q),
        .in_feedback_in_30(i_llvm_fpga_push_f32_shift_reg_sroa_41_0_push30_conv2d1x190_out_feedback_out_30),
        .in_feedback_valid_in_30(i_llvm_fpga_push_f32_shift_reg_sroa_41_0_push30_conv2d1x190_out_feedback_valid_out_30),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg31_q),
        .out_data_out(i_llvm_fpga_pop_f32_shift_reg_sroa_41_0_pop30_conv2d1x188_out_data_out),
        .out_feedback_stall_out_30(i_llvm_fpga_pop_f32_shift_reg_sroa_41_0_pop30_conv2d1x188_out_feedback_stall_out_30),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_13160_recast_x(CONSTANT,179)
    assign c_i32_13160_recast_x_q = $unsigned(32'b00000000000000000000000000001101);

    // i_unnamed_conv2d1x121(LOGICAL,137)@2
    assign i_unnamed_conv2d1x121_q = $unsigned(i_llvm_fpga_pop_i32_i_072_pop44_conv2d1x116_out_data_out == c_i32_13160_recast_x_q ? 1'b1 : 1'b0);

    // i_spec_select334_conv2d1x189(MUX,131)@2
    assign i_spec_select334_conv2d1x189_s = i_unnamed_conv2d1x121_q;
    always @(i_spec_select334_conv2d1x189_s or i_llvm_fpga_pop_f32_shift_reg_sroa_41_0_pop30_conv2d1x188_out_data_out or c_float_0_000000e_00174_q)
    begin
        unique case (i_spec_select334_conv2d1x189_s)
            1'b0 : i_spec_select334_conv2d1x189_q = i_llvm_fpga_pop_f32_shift_reg_sroa_41_0_pop30_conv2d1x188_out_data_out;
            1'b1 : i_spec_select334_conv2d1x189_q = c_float_0_000000e_00174_q;
            default : i_spec_select334_conv2d1x189_q = 32'b0;
        endcase
    end

    // valid_fanout_reg29(REG,232)@1 + 1
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

    // valid_fanout_reg30(REG,233)@1 + 1
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

    // i_llvm_fpga_push_f32_shift_reg_sroa_38_0_push31_conv2d1x187(BLACKBOX,101)@2
    // out out_feedback_out_31@20000000
    // out out_feedback_valid_out_31@20000000
    conv2d1x1_i_llvm_fpga_push_f32_shift_reg_sroa_38_0_push31_0 thei_llvm_fpga_push_f32_shift_reg_sroa_38_0_push31_conv2d1x187 (
        .in_data_in(i_spec_select333_conv2d1x186_q),
        .in_feedback_stall_in_31(i_llvm_fpga_pop_f32_shift_reg_sroa_38_0_pop31_conv2d1x185_out_feedback_stall_out_31),
        .in_keep_going32_fanout_adaptor849(i_llvm_fpga_fanout_i1_keep_going32_fanout_adaptor849_conv2d1x19_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg30_q),
        .out_data_out(),
        .out_feedback_out_31(i_llvm_fpga_push_f32_shift_reg_sroa_38_0_push31_conv2d1x187_out_feedback_out_31),
        .out_feedback_valid_out_31(i_llvm_fpga_push_f32_shift_reg_sroa_38_0_push31_conv2d1x187_out_feedback_valid_out_31),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_f32_shift_reg_sroa_38_0_pop31_conv2d1x185(BLACKBOX,81)@2
    // out out_feedback_stall_out_31@20000000
    conv2d1x1_i_llvm_fpga_pop_f32_shift_reg_sroa_38_0_pop31_0 thei_llvm_fpga_pop_f32_shift_reg_sroa_38_0_pop31_conv2d1x185 (
        .in_data_in(c_float_0_000000e_00174_q),
        .in_dir(i_llvm_fpga_fanout_i1_c0_ene1_fanout_adaptor848_conv2d1x12_q),
        .in_feedback_in_31(i_llvm_fpga_push_f32_shift_reg_sroa_38_0_push31_conv2d1x187_out_feedback_out_31),
        .in_feedback_valid_in_31(i_llvm_fpga_push_f32_shift_reg_sroa_38_0_push31_conv2d1x187_out_feedback_valid_out_31),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg29_q),
        .out_data_out(i_llvm_fpga_pop_f32_shift_reg_sroa_38_0_pop31_conv2d1x185_out_data_out),
        .out_feedback_stall_out_31(i_llvm_fpga_pop_f32_shift_reg_sroa_38_0_pop31_conv2d1x185_out_feedback_stall_out_31),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_12161_recast_x(CONSTANT,178)
    assign c_i32_12161_recast_x_q = $unsigned(32'b00000000000000000000000000001100);

    // i_unnamed_conv2d1x123(LOGICAL,138)@2
    assign i_unnamed_conv2d1x123_q = $unsigned(i_llvm_fpga_pop_i32_i_072_pop44_conv2d1x116_out_data_out == c_i32_12161_recast_x_q ? 1'b1 : 1'b0);

    // i_spec_select333_conv2d1x186(MUX,130)@2
    assign i_spec_select333_conv2d1x186_s = i_unnamed_conv2d1x123_q;
    always @(i_spec_select333_conv2d1x186_s or i_llvm_fpga_pop_f32_shift_reg_sroa_38_0_pop31_conv2d1x185_out_data_out or c_float_0_000000e_00174_q)
    begin
        unique case (i_spec_select333_conv2d1x186_s)
            1'b0 : i_spec_select333_conv2d1x186_q = i_llvm_fpga_pop_f32_shift_reg_sroa_38_0_pop31_conv2d1x185_out_data_out;
            1'b1 : i_spec_select333_conv2d1x186_q = c_float_0_000000e_00174_q;
            default : i_spec_select333_conv2d1x186_q = 32'b0;
        endcase
    end

    // valid_fanout_reg27(REG,230)@1 + 1
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

    // valid_fanout_reg28(REG,231)@1 + 1
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

    // i_llvm_fpga_push_f32_shift_reg_sroa_35_0_push32_conv2d1x184(BLACKBOX,100)@2
    // out out_feedback_out_32@20000000
    // out out_feedback_valid_out_32@20000000
    conv2d1x1_i_llvm_fpga_push_f32_shift_reg_sroa_35_0_push32_0 thei_llvm_fpga_push_f32_shift_reg_sroa_35_0_push32_conv2d1x184 (
        .in_data_in(i_spec_select332_conv2d1x183_q),
        .in_feedback_stall_in_32(i_llvm_fpga_pop_f32_shift_reg_sroa_35_0_pop32_conv2d1x182_out_feedback_stall_out_32),
        .in_keep_going32_fanout_adaptor(i_llvm_fpga_fanout_i1_keep_going32_fanout_adaptor_conv2d1x110_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg28_q),
        .out_data_out(),
        .out_feedback_out_32(i_llvm_fpga_push_f32_shift_reg_sroa_35_0_push32_conv2d1x184_out_feedback_out_32),
        .out_feedback_valid_out_32(i_llvm_fpga_push_f32_shift_reg_sroa_35_0_push32_conv2d1x184_out_feedback_valid_out_32),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_f32_shift_reg_sroa_35_0_pop32_conv2d1x182(BLACKBOX,80)@2
    // out out_feedback_stall_out_32@20000000
    conv2d1x1_i_llvm_fpga_pop_f32_shift_reg_sroa_35_0_pop32_0 thei_llvm_fpga_pop_f32_shift_reg_sroa_35_0_pop32_conv2d1x182 (
        .in_data_in(c_float_0_000000e_00174_q),
        .in_dir(i_llvm_fpga_fanout_i1_c0_ene1_fanout_adaptor_conv2d1x13_q),
        .in_feedback_in_32(i_llvm_fpga_push_f32_shift_reg_sroa_35_0_push32_conv2d1x184_out_feedback_out_32),
        .in_feedback_valid_in_32(i_llvm_fpga_push_f32_shift_reg_sroa_35_0_push32_conv2d1x184_out_feedback_valid_out_32),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg27_q),
        .out_data_out(i_llvm_fpga_pop_f32_shift_reg_sroa_35_0_pop32_conv2d1x182_out_data_out),
        .out_feedback_stall_out_32(i_llvm_fpga_pop_f32_shift_reg_sroa_35_0_pop32_conv2d1x182_out_feedback_stall_out_32),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_11162_recast_x(CONSTANT,176)
    assign c_i32_11162_recast_x_q = $unsigned(32'b00000000000000000000000000001011);

    // i_unnamed_conv2d1x125(LOGICAL,139)@2
    assign i_unnamed_conv2d1x125_q = $unsigned(i_llvm_fpga_pop_i32_i_072_pop44_conv2d1x116_out_data_out == c_i32_11162_recast_x_q ? 1'b1 : 1'b0);

    // i_spec_select332_conv2d1x183(MUX,129)@2
    assign i_spec_select332_conv2d1x183_s = i_unnamed_conv2d1x125_q;
    always @(i_spec_select332_conv2d1x183_s or i_llvm_fpga_pop_f32_shift_reg_sroa_35_0_pop32_conv2d1x182_out_data_out or c_float_0_000000e_00174_q)
    begin
        unique case (i_spec_select332_conv2d1x183_s)
            1'b0 : i_spec_select332_conv2d1x183_q = i_llvm_fpga_pop_f32_shift_reg_sroa_35_0_pop32_conv2d1x182_out_data_out;
            1'b1 : i_spec_select332_conv2d1x183_q = c_float_0_000000e_00174_q;
            default : i_spec_select332_conv2d1x183_q = 32'b0;
        endcase
    end

    // valid_fanout_reg25(REG,228)@1 + 1
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

    // valid_fanout_reg26(REG,229)@1 + 1
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

    // i_llvm_fpga_push_f32_shift_reg_sroa_32_0_push33_conv2d1x181(BLACKBOX,99)@2
    // out out_feedback_out_33@20000000
    // out out_feedback_valid_out_33@20000000
    conv2d1x1_i_llvm_fpga_push_f32_shift_reg_sroa_32_0_push33_0 thei_llvm_fpga_push_f32_shift_reg_sroa_32_0_push33_conv2d1x181 (
        .in_data_in(i_spec_select331_conv2d1x180_q),
        .in_feedback_stall_in_33(i_llvm_fpga_pop_f32_shift_reg_sroa_32_0_pop33_conv2d1x179_out_feedback_stall_out_33),
        .in_keep_going32_fanout_adaptor(i_llvm_fpga_fanout_i1_keep_going32_fanout_adaptor_conv2d1x110_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg26_q),
        .out_data_out(),
        .out_feedback_out_33(i_llvm_fpga_push_f32_shift_reg_sroa_32_0_push33_conv2d1x181_out_feedback_out_33),
        .out_feedback_valid_out_33(i_llvm_fpga_push_f32_shift_reg_sroa_32_0_push33_conv2d1x181_out_feedback_valid_out_33),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_f32_shift_reg_sroa_32_0_pop33_conv2d1x179(BLACKBOX,79)@2
    // out out_feedback_stall_out_33@20000000
    conv2d1x1_i_llvm_fpga_pop_f32_shift_reg_sroa_32_0_pop33_0 thei_llvm_fpga_pop_f32_shift_reg_sroa_32_0_pop33_conv2d1x179 (
        .in_data_in(c_float_0_000000e_00174_q),
        .in_dir(i_llvm_fpga_fanout_i1_c0_ene1_fanout_adaptor_conv2d1x13_q),
        .in_feedback_in_33(i_llvm_fpga_push_f32_shift_reg_sroa_32_0_push33_conv2d1x181_out_feedback_out_33),
        .in_feedback_valid_in_33(i_llvm_fpga_push_f32_shift_reg_sroa_32_0_push33_conv2d1x181_out_feedback_valid_out_33),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg25_q),
        .out_data_out(i_llvm_fpga_pop_f32_shift_reg_sroa_32_0_pop33_conv2d1x179_out_data_out),
        .out_feedback_stall_out_33(i_llvm_fpga_pop_f32_shift_reg_sroa_32_0_pop33_conv2d1x179_out_feedback_stall_out_33),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_10163_recast_x(CONSTANT,175)
    assign c_i32_10163_recast_x_q = $unsigned(32'b00000000000000000000000000001010);

    // i_unnamed_conv2d1x127(LOGICAL,140)@2
    assign i_unnamed_conv2d1x127_q = $unsigned(i_llvm_fpga_pop_i32_i_072_pop44_conv2d1x116_out_data_out == c_i32_10163_recast_x_q ? 1'b1 : 1'b0);

    // i_spec_select331_conv2d1x180(MUX,128)@2
    assign i_spec_select331_conv2d1x180_s = i_unnamed_conv2d1x127_q;
    always @(i_spec_select331_conv2d1x180_s or i_llvm_fpga_pop_f32_shift_reg_sroa_32_0_pop33_conv2d1x179_out_data_out or c_float_0_000000e_00174_q)
    begin
        unique case (i_spec_select331_conv2d1x180_s)
            1'b0 : i_spec_select331_conv2d1x180_q = i_llvm_fpga_pop_f32_shift_reg_sroa_32_0_pop33_conv2d1x179_out_data_out;
            1'b1 : i_spec_select331_conv2d1x180_q = c_float_0_000000e_00174_q;
            default : i_spec_select331_conv2d1x180_q = 32'b0;
        endcase
    end

    // valid_fanout_reg23(REG,226)@1 + 1
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

    // valid_fanout_reg24(REG,227)@1 + 1
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

    // i_llvm_fpga_push_f32_shift_reg_sroa_29_0_push34_conv2d1x178(BLACKBOX,98)@2
    // out out_feedback_out_34@20000000
    // out out_feedback_valid_out_34@20000000
    conv2d1x1_i_llvm_fpga_push_f32_shift_reg_sroa_29_0_push34_0 thei_llvm_fpga_push_f32_shift_reg_sroa_29_0_push34_conv2d1x178 (
        .in_data_in(i_spec_select330_conv2d1x177_q),
        .in_feedback_stall_in_34(i_llvm_fpga_pop_f32_shift_reg_sroa_29_0_pop34_conv2d1x176_out_feedback_stall_out_34),
        .in_keep_going32_fanout_adaptor(i_llvm_fpga_fanout_i1_keep_going32_fanout_adaptor_conv2d1x110_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg24_q),
        .out_data_out(),
        .out_feedback_out_34(i_llvm_fpga_push_f32_shift_reg_sroa_29_0_push34_conv2d1x178_out_feedback_out_34),
        .out_feedback_valid_out_34(i_llvm_fpga_push_f32_shift_reg_sroa_29_0_push34_conv2d1x178_out_feedback_valid_out_34),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_f32_shift_reg_sroa_29_0_pop34_conv2d1x176(BLACKBOX,78)@2
    // out out_feedback_stall_out_34@20000000
    conv2d1x1_i_llvm_fpga_pop_f32_shift_reg_sroa_29_0_pop34_0 thei_llvm_fpga_pop_f32_shift_reg_sroa_29_0_pop34_conv2d1x176 (
        .in_data_in(c_float_0_000000e_00174_q),
        .in_dir(i_llvm_fpga_fanout_i1_c0_ene1_fanout_adaptor_conv2d1x13_q),
        .in_feedback_in_34(i_llvm_fpga_push_f32_shift_reg_sroa_29_0_push34_conv2d1x178_out_feedback_out_34),
        .in_feedback_valid_in_34(i_llvm_fpga_push_f32_shift_reg_sroa_29_0_push34_conv2d1x178_out_feedback_valid_out_34),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg23_q),
        .out_data_out(i_llvm_fpga_pop_f32_shift_reg_sroa_29_0_pop34_conv2d1x176_out_data_out),
        .out_feedback_stall_out_34(i_llvm_fpga_pop_f32_shift_reg_sroa_29_0_pop34_conv2d1x176_out_feedback_stall_out_34),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_9164_recast_x(CONSTANT,189)
    assign c_i32_9164_recast_x_q = $unsigned(32'b00000000000000000000000000001001);

    // i_unnamed_conv2d1x129(LOGICAL,141)@2
    assign i_unnamed_conv2d1x129_q = $unsigned(i_llvm_fpga_pop_i32_i_072_pop44_conv2d1x116_out_data_out == c_i32_9164_recast_x_q ? 1'b1 : 1'b0);

    // i_spec_select330_conv2d1x177(MUX,127)@2
    assign i_spec_select330_conv2d1x177_s = i_unnamed_conv2d1x129_q;
    always @(i_spec_select330_conv2d1x177_s or i_llvm_fpga_pop_f32_shift_reg_sroa_29_0_pop34_conv2d1x176_out_data_out or c_float_0_000000e_00174_q)
    begin
        unique case (i_spec_select330_conv2d1x177_s)
            1'b0 : i_spec_select330_conv2d1x177_q = i_llvm_fpga_pop_f32_shift_reg_sroa_29_0_pop34_conv2d1x176_out_data_out;
            1'b1 : i_spec_select330_conv2d1x177_q = c_float_0_000000e_00174_q;
            default : i_spec_select330_conv2d1x177_q = 32'b0;
        endcase
    end

    // valid_fanout_reg21(REG,224)@1 + 1
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

    // valid_fanout_reg22(REG,225)@1 + 1
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

    // i_llvm_fpga_push_f32_shift_reg_sroa_26_0_push35_conv2d1x175(BLACKBOX,97)@2
    // out out_feedback_out_35@20000000
    // out out_feedback_valid_out_35@20000000
    conv2d1x1_i_llvm_fpga_push_f32_shift_reg_sroa_26_0_push35_0 thei_llvm_fpga_push_f32_shift_reg_sroa_26_0_push35_conv2d1x175 (
        .in_data_in(i_spec_select329_conv2d1x174_q),
        .in_feedback_stall_in_35(i_llvm_fpga_pop_f32_shift_reg_sroa_26_0_pop35_conv2d1x173_out_feedback_stall_out_35),
        .in_keep_going32_fanout_adaptor(i_llvm_fpga_fanout_i1_keep_going32_fanout_adaptor_conv2d1x110_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg22_q),
        .out_data_out(),
        .out_feedback_out_35(i_llvm_fpga_push_f32_shift_reg_sroa_26_0_push35_conv2d1x175_out_feedback_out_35),
        .out_feedback_valid_out_35(i_llvm_fpga_push_f32_shift_reg_sroa_26_0_push35_conv2d1x175_out_feedback_valid_out_35),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_f32_shift_reg_sroa_26_0_pop35_conv2d1x173(BLACKBOX,77)@2
    // out out_feedback_stall_out_35@20000000
    conv2d1x1_i_llvm_fpga_pop_f32_shift_reg_sroa_26_0_pop35_0 thei_llvm_fpga_pop_f32_shift_reg_sroa_26_0_pop35_conv2d1x173 (
        .in_data_in(c_float_0_000000e_00174_q),
        .in_dir(i_llvm_fpga_fanout_i1_c0_ene1_fanout_adaptor_conv2d1x13_q),
        .in_feedback_in_35(i_llvm_fpga_push_f32_shift_reg_sroa_26_0_push35_conv2d1x175_out_feedback_out_35),
        .in_feedback_valid_in_35(i_llvm_fpga_push_f32_shift_reg_sroa_26_0_push35_conv2d1x175_out_feedback_valid_out_35),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg21_q),
        .out_data_out(i_llvm_fpga_pop_f32_shift_reg_sroa_26_0_pop35_conv2d1x173_out_data_out),
        .out_feedback_stall_out_35(i_llvm_fpga_pop_f32_shift_reg_sroa_26_0_pop35_conv2d1x173_out_feedback_stall_out_35),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_8165_recast_x(CONSTANT,188)
    assign c_i32_8165_recast_x_q = $unsigned(32'b00000000000000000000000000001000);

    // i_unnamed_conv2d1x131(LOGICAL,142)@2
    assign i_unnamed_conv2d1x131_q = $unsigned(i_llvm_fpga_pop_i32_i_072_pop44_conv2d1x116_out_data_out == c_i32_8165_recast_x_q ? 1'b1 : 1'b0);

    // i_spec_select329_conv2d1x174(MUX,126)@2
    assign i_spec_select329_conv2d1x174_s = i_unnamed_conv2d1x131_q;
    always @(i_spec_select329_conv2d1x174_s or i_llvm_fpga_pop_f32_shift_reg_sroa_26_0_pop35_conv2d1x173_out_data_out or c_float_0_000000e_00174_q)
    begin
        unique case (i_spec_select329_conv2d1x174_s)
            1'b0 : i_spec_select329_conv2d1x174_q = i_llvm_fpga_pop_f32_shift_reg_sroa_26_0_pop35_conv2d1x173_out_data_out;
            1'b1 : i_spec_select329_conv2d1x174_q = c_float_0_000000e_00174_q;
            default : i_spec_select329_conv2d1x174_q = 32'b0;
        endcase
    end

    // valid_fanout_reg19(REG,222)@1 + 1
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

    // valid_fanout_reg20(REG,223)@1 + 1
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

    // i_llvm_fpga_push_f32_shift_reg_sroa_23_0_push36_conv2d1x172(BLACKBOX,96)@2
    // out out_feedback_out_36@20000000
    // out out_feedback_valid_out_36@20000000
    conv2d1x1_i_llvm_fpga_push_f32_shift_reg_sroa_23_0_push36_0 thei_llvm_fpga_push_f32_shift_reg_sroa_23_0_push36_conv2d1x172 (
        .in_data_in(i_spec_select328_conv2d1x171_q),
        .in_feedback_stall_in_36(i_llvm_fpga_pop_f32_shift_reg_sroa_23_0_pop36_conv2d1x170_out_feedback_stall_out_36),
        .in_keep_going32_fanout_adaptor(i_llvm_fpga_fanout_i1_keep_going32_fanout_adaptor_conv2d1x110_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg20_q),
        .out_data_out(),
        .out_feedback_out_36(i_llvm_fpga_push_f32_shift_reg_sroa_23_0_push36_conv2d1x172_out_feedback_out_36),
        .out_feedback_valid_out_36(i_llvm_fpga_push_f32_shift_reg_sroa_23_0_push36_conv2d1x172_out_feedback_valid_out_36),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_f32_shift_reg_sroa_23_0_pop36_conv2d1x170(BLACKBOX,76)@2
    // out out_feedback_stall_out_36@20000000
    conv2d1x1_i_llvm_fpga_pop_f32_shift_reg_sroa_23_0_pop36_0 thei_llvm_fpga_pop_f32_shift_reg_sroa_23_0_pop36_conv2d1x170 (
        .in_data_in(c_float_0_000000e_00174_q),
        .in_dir(i_llvm_fpga_fanout_i1_c0_ene1_fanout_adaptor_conv2d1x13_q),
        .in_feedback_in_36(i_llvm_fpga_push_f32_shift_reg_sroa_23_0_push36_conv2d1x172_out_feedback_out_36),
        .in_feedback_valid_in_36(i_llvm_fpga_push_f32_shift_reg_sroa_23_0_push36_conv2d1x172_out_feedback_valid_out_36),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg19_q),
        .out_data_out(i_llvm_fpga_pop_f32_shift_reg_sroa_23_0_pop36_conv2d1x170_out_data_out),
        .out_feedback_stall_out_36(i_llvm_fpga_pop_f32_shift_reg_sroa_23_0_pop36_conv2d1x170_out_feedback_stall_out_36),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_7166_recast_x(CONSTANT,187)
    assign c_i32_7166_recast_x_q = $unsigned(32'b00000000000000000000000000000111);

    // i_unnamed_conv2d1x133(LOGICAL,143)@2
    assign i_unnamed_conv2d1x133_q = $unsigned(i_llvm_fpga_pop_i32_i_072_pop44_conv2d1x116_out_data_out == c_i32_7166_recast_x_q ? 1'b1 : 1'b0);

    // i_spec_select328_conv2d1x171(MUX,125)@2
    assign i_spec_select328_conv2d1x171_s = i_unnamed_conv2d1x133_q;
    always @(i_spec_select328_conv2d1x171_s or i_llvm_fpga_pop_f32_shift_reg_sroa_23_0_pop36_conv2d1x170_out_data_out or c_float_0_000000e_00174_q)
    begin
        unique case (i_spec_select328_conv2d1x171_s)
            1'b0 : i_spec_select328_conv2d1x171_q = i_llvm_fpga_pop_f32_shift_reg_sroa_23_0_pop36_conv2d1x170_out_data_out;
            1'b1 : i_spec_select328_conv2d1x171_q = c_float_0_000000e_00174_q;
            default : i_spec_select328_conv2d1x171_q = 32'b0;
        endcase
    end

    // valid_fanout_reg17(REG,220)@1 + 1
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

    // valid_fanout_reg18(REG,221)@1 + 1
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

    // i_llvm_fpga_push_f32_shift_reg_sroa_20_0_push37_conv2d1x169(BLACKBOX,95)@2
    // out out_feedback_out_37@20000000
    // out out_feedback_valid_out_37@20000000
    conv2d1x1_i_llvm_fpga_push_f32_shift_reg_sroa_20_0_push37_0 thei_llvm_fpga_push_f32_shift_reg_sroa_20_0_push37_conv2d1x169 (
        .in_data_in(i_spec_select327_conv2d1x168_q),
        .in_feedback_stall_in_37(i_llvm_fpga_pop_f32_shift_reg_sroa_20_0_pop37_conv2d1x167_out_feedback_stall_out_37),
        .in_keep_going32_fanout_adaptor(i_llvm_fpga_fanout_i1_keep_going32_fanout_adaptor_conv2d1x110_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg18_q),
        .out_data_out(),
        .out_feedback_out_37(i_llvm_fpga_push_f32_shift_reg_sroa_20_0_push37_conv2d1x169_out_feedback_out_37),
        .out_feedback_valid_out_37(i_llvm_fpga_push_f32_shift_reg_sroa_20_0_push37_conv2d1x169_out_feedback_valid_out_37),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_f32_shift_reg_sroa_20_0_pop37_conv2d1x167(BLACKBOX,75)@2
    // out out_feedback_stall_out_37@20000000
    conv2d1x1_i_llvm_fpga_pop_f32_shift_reg_sroa_20_0_pop37_0 thei_llvm_fpga_pop_f32_shift_reg_sroa_20_0_pop37_conv2d1x167 (
        .in_data_in(c_float_0_000000e_00174_q),
        .in_dir(i_llvm_fpga_fanout_i1_c0_ene1_fanout_adaptor_conv2d1x13_q),
        .in_feedback_in_37(i_llvm_fpga_push_f32_shift_reg_sroa_20_0_push37_conv2d1x169_out_feedback_out_37),
        .in_feedback_valid_in_37(i_llvm_fpga_push_f32_shift_reg_sroa_20_0_push37_conv2d1x169_out_feedback_valid_out_37),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg17_q),
        .out_data_out(i_llvm_fpga_pop_f32_shift_reg_sroa_20_0_pop37_conv2d1x167_out_data_out),
        .out_feedback_stall_out_37(i_llvm_fpga_pop_f32_shift_reg_sroa_20_0_pop37_conv2d1x167_out_feedback_stall_out_37),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_6167_recast_x(CONSTANT,186)
    assign c_i32_6167_recast_x_q = $unsigned(32'b00000000000000000000000000000110);

    // i_unnamed_conv2d1x135(LOGICAL,144)@2
    assign i_unnamed_conv2d1x135_q = $unsigned(i_llvm_fpga_pop_i32_i_072_pop44_conv2d1x116_out_data_out == c_i32_6167_recast_x_q ? 1'b1 : 1'b0);

    // i_spec_select327_conv2d1x168(MUX,124)@2
    assign i_spec_select327_conv2d1x168_s = i_unnamed_conv2d1x135_q;
    always @(i_spec_select327_conv2d1x168_s or i_llvm_fpga_pop_f32_shift_reg_sroa_20_0_pop37_conv2d1x167_out_data_out or c_float_0_000000e_00174_q)
    begin
        unique case (i_spec_select327_conv2d1x168_s)
            1'b0 : i_spec_select327_conv2d1x168_q = i_llvm_fpga_pop_f32_shift_reg_sroa_20_0_pop37_conv2d1x167_out_data_out;
            1'b1 : i_spec_select327_conv2d1x168_q = c_float_0_000000e_00174_q;
            default : i_spec_select327_conv2d1x168_q = 32'b0;
        endcase
    end

    // valid_fanout_reg15(REG,218)@1 + 1
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

    // valid_fanout_reg16(REG,219)@1 + 1
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

    // i_llvm_fpga_push_f32_shift_reg_sroa_17_0_push38_conv2d1x166(BLACKBOX,94)@2
    // out out_feedback_out_38@20000000
    // out out_feedback_valid_out_38@20000000
    conv2d1x1_i_llvm_fpga_push_f32_shift_reg_sroa_17_0_push38_0 thei_llvm_fpga_push_f32_shift_reg_sroa_17_0_push38_conv2d1x166 (
        .in_data_in(i_spec_select326_conv2d1x165_q),
        .in_feedback_stall_in_38(i_llvm_fpga_pop_f32_shift_reg_sroa_17_0_pop38_conv2d1x164_out_feedback_stall_out_38),
        .in_keep_going32_fanout_adaptor(i_llvm_fpga_fanout_i1_keep_going32_fanout_adaptor_conv2d1x110_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg16_q),
        .out_data_out(),
        .out_feedback_out_38(i_llvm_fpga_push_f32_shift_reg_sroa_17_0_push38_conv2d1x166_out_feedback_out_38),
        .out_feedback_valid_out_38(i_llvm_fpga_push_f32_shift_reg_sroa_17_0_push38_conv2d1x166_out_feedback_valid_out_38),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_f32_shift_reg_sroa_17_0_pop38_conv2d1x164(BLACKBOX,74)@2
    // out out_feedback_stall_out_38@20000000
    conv2d1x1_i_llvm_fpga_pop_f32_shift_reg_sroa_17_0_pop38_0 thei_llvm_fpga_pop_f32_shift_reg_sroa_17_0_pop38_conv2d1x164 (
        .in_data_in(c_float_0_000000e_00174_q),
        .in_dir(i_llvm_fpga_fanout_i1_c0_ene1_fanout_adaptor_conv2d1x13_q),
        .in_feedback_in_38(i_llvm_fpga_push_f32_shift_reg_sroa_17_0_push38_conv2d1x166_out_feedback_out_38),
        .in_feedback_valid_in_38(i_llvm_fpga_push_f32_shift_reg_sroa_17_0_push38_conv2d1x166_out_feedback_valid_out_38),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg15_q),
        .out_data_out(i_llvm_fpga_pop_f32_shift_reg_sroa_17_0_pop38_conv2d1x164_out_data_out),
        .out_feedback_stall_out_38(i_llvm_fpga_pop_f32_shift_reg_sroa_17_0_pop38_conv2d1x164_out_feedback_stall_out_38),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_5168_recast_x(CONSTANT,185)
    assign c_i32_5168_recast_x_q = $unsigned(32'b00000000000000000000000000000101);

    // i_unnamed_conv2d1x137(LOGICAL,145)@2
    assign i_unnamed_conv2d1x137_q = $unsigned(i_llvm_fpga_pop_i32_i_072_pop44_conv2d1x116_out_data_out == c_i32_5168_recast_x_q ? 1'b1 : 1'b0);

    // i_spec_select326_conv2d1x165(MUX,123)@2
    assign i_spec_select326_conv2d1x165_s = i_unnamed_conv2d1x137_q;
    always @(i_spec_select326_conv2d1x165_s or i_llvm_fpga_pop_f32_shift_reg_sroa_17_0_pop38_conv2d1x164_out_data_out or c_float_0_000000e_00174_q)
    begin
        unique case (i_spec_select326_conv2d1x165_s)
            1'b0 : i_spec_select326_conv2d1x165_q = i_llvm_fpga_pop_f32_shift_reg_sroa_17_0_pop38_conv2d1x164_out_data_out;
            1'b1 : i_spec_select326_conv2d1x165_q = c_float_0_000000e_00174_q;
            default : i_spec_select326_conv2d1x165_q = 32'b0;
        endcase
    end

    // valid_fanout_reg13(REG,216)@1 + 1
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

    // valid_fanout_reg14(REG,217)@1 + 1
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

    // i_llvm_fpga_push_f32_shift_reg_sroa_14_0_push39_conv2d1x163(BLACKBOX,93)@2
    // out out_feedback_out_39@20000000
    // out out_feedback_valid_out_39@20000000
    conv2d1x1_i_llvm_fpga_push_f32_shift_reg_sroa_14_0_push39_0 thei_llvm_fpga_push_f32_shift_reg_sroa_14_0_push39_conv2d1x163 (
        .in_data_in(i_spec_select325_conv2d1x162_q),
        .in_feedback_stall_in_39(i_llvm_fpga_pop_f32_shift_reg_sroa_14_0_pop39_conv2d1x161_out_feedback_stall_out_39),
        .in_keep_going32_fanout_adaptor(i_llvm_fpga_fanout_i1_keep_going32_fanout_adaptor_conv2d1x110_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg14_q),
        .out_data_out(),
        .out_feedback_out_39(i_llvm_fpga_push_f32_shift_reg_sroa_14_0_push39_conv2d1x163_out_feedback_out_39),
        .out_feedback_valid_out_39(i_llvm_fpga_push_f32_shift_reg_sroa_14_0_push39_conv2d1x163_out_feedback_valid_out_39),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_f32_shift_reg_sroa_14_0_pop39_conv2d1x161(BLACKBOX,73)@2
    // out out_feedback_stall_out_39@20000000
    conv2d1x1_i_llvm_fpga_pop_f32_shift_reg_sroa_14_0_pop39_0 thei_llvm_fpga_pop_f32_shift_reg_sroa_14_0_pop39_conv2d1x161 (
        .in_data_in(c_float_0_000000e_00174_q),
        .in_dir(i_llvm_fpga_fanout_i1_c0_ene1_fanout_adaptor_conv2d1x13_q),
        .in_feedback_in_39(i_llvm_fpga_push_f32_shift_reg_sroa_14_0_push39_conv2d1x163_out_feedback_out_39),
        .in_feedback_valid_in_39(i_llvm_fpga_push_f32_shift_reg_sroa_14_0_push39_conv2d1x163_out_feedback_valid_out_39),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg13_q),
        .out_data_out(i_llvm_fpga_pop_f32_shift_reg_sroa_14_0_pop39_conv2d1x161_out_data_out),
        .out_feedback_stall_out_39(i_llvm_fpga_pop_f32_shift_reg_sroa_14_0_pop39_conv2d1x161_out_feedback_stall_out_39),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_4169_recast_x(CONSTANT,184)
    assign c_i32_4169_recast_x_q = $unsigned(32'b00000000000000000000000000000100);

    // i_unnamed_conv2d1x139(LOGICAL,146)@2
    assign i_unnamed_conv2d1x139_q = $unsigned(i_llvm_fpga_pop_i32_i_072_pop44_conv2d1x116_out_data_out == c_i32_4169_recast_x_q ? 1'b1 : 1'b0);

    // i_spec_select325_conv2d1x162(MUX,122)@2
    assign i_spec_select325_conv2d1x162_s = i_unnamed_conv2d1x139_q;
    always @(i_spec_select325_conv2d1x162_s or i_llvm_fpga_pop_f32_shift_reg_sroa_14_0_pop39_conv2d1x161_out_data_out or c_float_0_000000e_00174_q)
    begin
        unique case (i_spec_select325_conv2d1x162_s)
            1'b0 : i_spec_select325_conv2d1x162_q = i_llvm_fpga_pop_f32_shift_reg_sroa_14_0_pop39_conv2d1x161_out_data_out;
            1'b1 : i_spec_select325_conv2d1x162_q = c_float_0_000000e_00174_q;
            default : i_spec_select325_conv2d1x162_q = 32'b0;
        endcase
    end

    // valid_fanout_reg11(REG,214)@1 + 1
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

    // valid_fanout_reg12(REG,215)@1 + 1
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

    // i_llvm_fpga_push_f32_shift_reg_sroa_11_0_push40_conv2d1x160(BLACKBOX,92)@2
    // out out_feedback_out_40@20000000
    // out out_feedback_valid_out_40@20000000
    conv2d1x1_i_llvm_fpga_push_f32_shift_reg_sroa_11_0_push40_0 thei_llvm_fpga_push_f32_shift_reg_sroa_11_0_push40_conv2d1x160 (
        .in_data_in(i_spec_select324_conv2d1x159_q),
        .in_feedback_stall_in_40(i_llvm_fpga_pop_f32_shift_reg_sroa_11_0_pop40_conv2d1x158_out_feedback_stall_out_40),
        .in_keep_going32_fanout_adaptor(i_llvm_fpga_fanout_i1_keep_going32_fanout_adaptor_conv2d1x110_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg12_q),
        .out_data_out(),
        .out_feedback_out_40(i_llvm_fpga_push_f32_shift_reg_sroa_11_0_push40_conv2d1x160_out_feedback_out_40),
        .out_feedback_valid_out_40(i_llvm_fpga_push_f32_shift_reg_sroa_11_0_push40_conv2d1x160_out_feedback_valid_out_40),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_f32_shift_reg_sroa_11_0_pop40_conv2d1x158(BLACKBOX,72)@2
    // out out_feedback_stall_out_40@20000000
    conv2d1x1_i_llvm_fpga_pop_f32_shift_reg_sroa_11_0_pop40_0 thei_llvm_fpga_pop_f32_shift_reg_sroa_11_0_pop40_conv2d1x158 (
        .in_data_in(c_float_0_000000e_00174_q),
        .in_dir(i_llvm_fpga_fanout_i1_c0_ene1_fanout_adaptor_conv2d1x13_q),
        .in_feedback_in_40(i_llvm_fpga_push_f32_shift_reg_sroa_11_0_push40_conv2d1x160_out_feedback_out_40),
        .in_feedback_valid_in_40(i_llvm_fpga_push_f32_shift_reg_sroa_11_0_push40_conv2d1x160_out_feedback_valid_out_40),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg11_q),
        .out_data_out(i_llvm_fpga_pop_f32_shift_reg_sroa_11_0_pop40_conv2d1x158_out_data_out),
        .out_feedback_stall_out_40(i_llvm_fpga_pop_f32_shift_reg_sroa_11_0_pop40_conv2d1x158_out_feedback_stall_out_40),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_3170_recast_x(CONSTANT,183)
    assign c_i32_3170_recast_x_q = $unsigned(32'b00000000000000000000000000000011);

    // i_unnamed_conv2d1x141(LOGICAL,147)@2
    assign i_unnamed_conv2d1x141_q = $unsigned(i_llvm_fpga_pop_i32_i_072_pop44_conv2d1x116_out_data_out == c_i32_3170_recast_x_q ? 1'b1 : 1'b0);

    // i_spec_select324_conv2d1x159(MUX,121)@2
    assign i_spec_select324_conv2d1x159_s = i_unnamed_conv2d1x141_q;
    always @(i_spec_select324_conv2d1x159_s or i_llvm_fpga_pop_f32_shift_reg_sroa_11_0_pop40_conv2d1x158_out_data_out or c_float_0_000000e_00174_q)
    begin
        unique case (i_spec_select324_conv2d1x159_s)
            1'b0 : i_spec_select324_conv2d1x159_q = i_llvm_fpga_pop_f32_shift_reg_sroa_11_0_pop40_conv2d1x158_out_data_out;
            1'b1 : i_spec_select324_conv2d1x159_q = c_float_0_000000e_00174_q;
            default : i_spec_select324_conv2d1x159_q = 32'b0;
        endcase
    end

    // valid_fanout_reg9(REG,212)@1 + 1
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

    // valid_fanout_reg10(REG,213)@1 + 1
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

    // i_llvm_fpga_push_f32_shift_reg_sroa_8_0_push41_conv2d1x157(BLACKBOX,106)@2
    // out out_feedback_out_41@20000000
    // out out_feedback_valid_out_41@20000000
    conv2d1x1_i_llvm_fpga_push_f32_shift_reg_sroa_8_0_push41_0 thei_llvm_fpga_push_f32_shift_reg_sroa_8_0_push41_conv2d1x157 (
        .in_data_in(i_spec_select323_conv2d1x156_q),
        .in_feedback_stall_in_41(i_llvm_fpga_pop_f32_shift_reg_sroa_8_0_pop41_conv2d1x155_out_feedback_stall_out_41),
        .in_keep_going32_fanout_adaptor(i_llvm_fpga_fanout_i1_keep_going32_fanout_adaptor_conv2d1x110_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg10_q),
        .out_data_out(),
        .out_feedback_out_41(i_llvm_fpga_push_f32_shift_reg_sroa_8_0_push41_conv2d1x157_out_feedback_out_41),
        .out_feedback_valid_out_41(i_llvm_fpga_push_f32_shift_reg_sroa_8_0_push41_conv2d1x157_out_feedback_valid_out_41),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_f32_shift_reg_sroa_8_0_pop41_conv2d1x155(BLACKBOX,86)@2
    // out out_feedback_stall_out_41@20000000
    conv2d1x1_i_llvm_fpga_pop_f32_shift_reg_sroa_8_0_pop41_0 thei_llvm_fpga_pop_f32_shift_reg_sroa_8_0_pop41_conv2d1x155 (
        .in_data_in(c_float_0_000000e_00174_q),
        .in_dir(i_llvm_fpga_fanout_i1_c0_ene1_fanout_adaptor_conv2d1x13_q),
        .in_feedback_in_41(i_llvm_fpga_push_f32_shift_reg_sroa_8_0_push41_conv2d1x157_out_feedback_out_41),
        .in_feedback_valid_in_41(i_llvm_fpga_push_f32_shift_reg_sroa_8_0_push41_conv2d1x157_out_feedback_valid_out_41),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg9_q),
        .out_data_out(i_llvm_fpga_pop_f32_shift_reg_sroa_8_0_pop41_conv2d1x155_out_data_out),
        .out_feedback_stall_out_41(i_llvm_fpga_pop_f32_shift_reg_sroa_8_0_pop41_conv2d1x155_out_feedback_stall_out_41),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_2171_recast_x(CONSTANT,182)
    assign c_i32_2171_recast_x_q = $unsigned(32'b00000000000000000000000000000010);

    // i_unnamed_conv2d1x143(LOGICAL,148)@2
    assign i_unnamed_conv2d1x143_q = $unsigned(i_llvm_fpga_pop_i32_i_072_pop44_conv2d1x116_out_data_out == c_i32_2171_recast_x_q ? 1'b1 : 1'b0);

    // i_spec_select323_conv2d1x156(MUX,120)@2
    assign i_spec_select323_conv2d1x156_s = i_unnamed_conv2d1x143_q;
    always @(i_spec_select323_conv2d1x156_s or i_llvm_fpga_pop_f32_shift_reg_sroa_8_0_pop41_conv2d1x155_out_data_out or c_float_0_000000e_00174_q)
    begin
        unique case (i_spec_select323_conv2d1x156_s)
            1'b0 : i_spec_select323_conv2d1x156_q = i_llvm_fpga_pop_f32_shift_reg_sroa_8_0_pop41_conv2d1x155_out_data_out;
            1'b1 : i_spec_select323_conv2d1x156_q = c_float_0_000000e_00174_q;
            default : i_spec_select323_conv2d1x156_q = 32'b0;
        endcase
    end

    // valid_fanout_reg7(REG,210)@1 + 1
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

    // valid_fanout_reg8(REG,211)@1 + 1
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

    // i_llvm_fpga_push_f32_shift_reg_sroa_5_0_push42_conv2d1x154(BLACKBOX,105)@2
    // out out_feedback_out_42@20000000
    // out out_feedback_valid_out_42@20000000
    conv2d1x1_i_llvm_fpga_push_f32_shift_reg_sroa_5_0_push42_0 thei_llvm_fpga_push_f32_shift_reg_sroa_5_0_push42_conv2d1x154 (
        .in_data_in(i_unnamed_conv2d1x153_q),
        .in_feedback_stall_in_42(i_llvm_fpga_pop_f32_shift_reg_sroa_5_0_pop42_conv2d1x152_out_feedback_stall_out_42),
        .in_keep_going32_fanout_adaptor(i_llvm_fpga_fanout_i1_keep_going32_fanout_adaptor_conv2d1x110_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg8_q),
        .out_data_out(),
        .out_feedback_out_42(i_llvm_fpga_push_f32_shift_reg_sroa_5_0_push42_conv2d1x154_out_feedback_out_42),
        .out_feedback_valid_out_42(i_llvm_fpga_push_f32_shift_reg_sroa_5_0_push42_conv2d1x154_out_feedback_valid_out_42),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_f32_shift_reg_sroa_5_0_pop42_conv2d1x152(BLACKBOX,85)@2
    // out out_feedback_stall_out_42@20000000
    conv2d1x1_i_llvm_fpga_pop_f32_shift_reg_sroa_5_0_pop42_0 thei_llvm_fpga_pop_f32_shift_reg_sroa_5_0_pop42_conv2d1x152 (
        .in_data_in(c_float_0_000000e_00174_q),
        .in_dir(i_llvm_fpga_fanout_i1_c0_ene1_fanout_adaptor_conv2d1x13_q),
        .in_feedback_in_42(i_llvm_fpga_push_f32_shift_reg_sroa_5_0_push42_conv2d1x154_out_feedback_out_42),
        .in_feedback_valid_in_42(i_llvm_fpga_push_f32_shift_reg_sroa_5_0_push42_conv2d1x154_out_feedback_valid_out_42),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg7_q),
        .out_data_out(i_llvm_fpga_pop_f32_shift_reg_sroa_5_0_pop42_conv2d1x152_out_data_out),
        .out_feedback_stall_out_42(i_llvm_fpga_pop_f32_shift_reg_sroa_5_0_pop42_conv2d1x152_out_feedback_stall_out_42),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_conv2d1x145(LOGICAL,149)@2
    assign i_unnamed_conv2d1x145_q = $unsigned(i_llvm_fpga_pop_i32_i_072_pop44_conv2d1x116_out_data_out == c_i32_1172_q ? 1'b1 : 1'b0);

    // i_unnamed_conv2d1x153(MUX,151)@2
    assign i_unnamed_conv2d1x153_s = i_unnamed_conv2d1x145_q;
    always @(i_unnamed_conv2d1x153_s or i_llvm_fpga_pop_f32_shift_reg_sroa_5_0_pop42_conv2d1x152_out_data_out or c_float_0_000000e_00174_q)
    begin
        unique case (i_unnamed_conv2d1x153_s)
            1'b0 : i_unnamed_conv2d1x153_q = i_llvm_fpga_pop_f32_shift_reg_sroa_5_0_pop42_conv2d1x152_out_data_out;
            1'b1 : i_unnamed_conv2d1x153_q = c_float_0_000000e_00174_q;
            default : i_unnamed_conv2d1x153_q = 32'b0;
        endcase
    end

    // valid_fanout_reg5(REG,208)@1 + 1
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

    // valid_fanout_reg6(REG,209)@1 + 1
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

    // i_llvm_fpga_push_f32_shift_reg_sroa_0_0_push43_conv2d1x151(BLACKBOX,91)@2
    // out out_feedback_out_43@20000000
    // out out_feedback_valid_out_43@20000000
    conv2d1x1_i_llvm_fpga_push_f32_shift_reg_sroa_0_0_push43_0 thei_llvm_fpga_push_f32_shift_reg_sroa_0_0_push43_conv2d1x151 (
        .in_data_in(i_spec_select_conv2d1x150_q),
        .in_feedback_stall_in_43(i_llvm_fpga_pop_f32_shift_reg_sroa_0_0_pop43_conv2d1x149_out_feedback_stall_out_43),
        .in_keep_going32_fanout_adaptor(i_llvm_fpga_fanout_i1_keep_going32_fanout_adaptor_conv2d1x110_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg6_q),
        .out_data_out(),
        .out_feedback_out_43(i_llvm_fpga_push_f32_shift_reg_sroa_0_0_push43_conv2d1x151_out_feedback_out_43),
        .out_feedback_valid_out_43(i_llvm_fpga_push_f32_shift_reg_sroa_0_0_push43_conv2d1x151_out_feedback_valid_out_43),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_f32_shift_reg_sroa_0_0_pop43_conv2d1x149(BLACKBOX,71)@2
    // out out_feedback_stall_out_43@20000000
    conv2d1x1_i_llvm_fpga_pop_f32_shift_reg_sroa_0_0_pop43_0 thei_llvm_fpga_pop_f32_shift_reg_sroa_0_0_pop43_conv2d1x149 (
        .in_data_in(c_float_0_000000e_00174_q),
        .in_dir(i_llvm_fpga_fanout_i1_c0_ene1_fanout_adaptor_conv2d1x13_q),
        .in_feedback_in_43(i_llvm_fpga_push_f32_shift_reg_sroa_0_0_push43_conv2d1x151_out_feedback_out_43),
        .in_feedback_valid_in_43(i_llvm_fpga_push_f32_shift_reg_sroa_0_0_push43_conv2d1x151_out_feedback_valid_out_43),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_data_out(i_llvm_fpga_pop_f32_shift_reg_sroa_0_0_pop43_conv2d1x149_out_data_out),
        .out_feedback_stall_out_43(i_llvm_fpga_pop_f32_shift_reg_sroa_0_0_pop43_conv2d1x149_out_feedback_stall_out_43),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_conv2d1x147(LOGICAL,150)@2
    assign i_unnamed_conv2d1x147_q = $unsigned(i_llvm_fpga_pop_i32_i_072_pop44_conv2d1x116_out_data_out == c_i32_0157_q ? 1'b1 : 1'b0);

    // i_spec_select_conv2d1x150(MUX,134)@2
    assign i_spec_select_conv2d1x150_s = i_unnamed_conv2d1x147_q;
    always @(i_spec_select_conv2d1x150_s or i_llvm_fpga_pop_f32_shift_reg_sroa_0_0_pop43_conv2d1x149_out_data_out or c_float_0_000000e_00174_q)
    begin
        unique case (i_spec_select_conv2d1x150_s)
            1'b0 : i_spec_select_conv2d1x150_q = i_llvm_fpga_pop_f32_shift_reg_sroa_0_0_pop43_conv2d1x149_out_data_out;
            1'b1 : i_spec_select_conv2d1x150_q = c_float_0_000000e_00174_q;
            default : i_spec_select_conv2d1x150_q = 32'b0;
        endcase
    end

    // sync_out_aunroll_x(GPOUT,201)@2
    assign out_c0_exi18_0_tpl = GND_q;
    assign out_c0_exi18_1_tpl = redist2_i_llvm_fpga_pipeline_keep_going32_conv2d1x18_out_data_out_1_q;
    assign out_c0_exi18_2_tpl = i_spec_select_conv2d1x150_q;
    assign out_c0_exi18_3_tpl = i_unnamed_conv2d1x153_q;
    assign out_c0_exi18_4_tpl = i_spec_select323_conv2d1x156_q;
    assign out_c0_exi18_5_tpl = i_spec_select324_conv2d1x159_q;
    assign out_c0_exi18_6_tpl = i_spec_select325_conv2d1x162_q;
    assign out_c0_exi18_7_tpl = i_spec_select326_conv2d1x165_q;
    assign out_c0_exi18_8_tpl = i_spec_select327_conv2d1x168_q;
    assign out_c0_exi18_9_tpl = i_spec_select328_conv2d1x171_q;
    assign out_c0_exi18_10_tpl = i_spec_select329_conv2d1x174_q;
    assign out_c0_exi18_11_tpl = i_spec_select330_conv2d1x177_q;
    assign out_c0_exi18_12_tpl = i_spec_select331_conv2d1x180_q;
    assign out_c0_exi18_13_tpl = i_spec_select332_conv2d1x183_q;
    assign out_c0_exi18_14_tpl = i_spec_select333_conv2d1x186_q;
    assign out_c0_exi18_15_tpl = i_spec_select334_conv2d1x189_q;
    assign out_c0_exi18_16_tpl = i_spec_select335_conv2d1x192_q;
    assign out_c0_exi18_17_tpl = i_spec_select336_conv2d1x195_q;
    assign out_c0_exi18_18_tpl = i_masked41_conv2d1x1109_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_conv2d1x15 = GND_q;

endmodule
