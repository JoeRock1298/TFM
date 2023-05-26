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

// SystemVerilog created from conv2d1x1_i_sfc_logic_s_c1_in_for_body13_s_c1_enter_conv2d1x10
// SystemVerilog created on Wed May 24 18:10:55 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2d1x1_i_sfc_logic_s_c1_in_for_body13_s_c1_enter_conv2d1x10 (
    input wire [127:0] in_memdep_78_conv2d1x1_avm_readdata,
    input wire [0:0] in_memdep_78_conv2d1x1_avm_writeack,
    input wire [0:0] in_memdep_78_conv2d1x1_avm_waitrequest,
    input wire [0:0] in_memdep_78_conv2d1x1_avm_readdatavalid,
    output wire [31:0] out_memdep_78_conv2d1x1_avm_address,
    output wire [0:0] out_memdep_78_conv2d1x1_avm_enable,
    output wire [0:0] out_memdep_78_conv2d1x1_avm_read,
    output wire [0:0] out_memdep_78_conv2d1x1_avm_write,
    output wire [127:0] out_memdep_78_conv2d1x1_avm_writedata,
    output wire [15:0] out_memdep_78_conv2d1x1_avm_byteenable,
    output wire [0:0] out_memdep_78_conv2d1x1_avm_burstcount,
    input wire [0:0] in_flush,
    input wire [127:0] in_lm28179_conv2d1x1_avm_readdata,
    input wire [0:0] in_lm28179_conv2d1x1_avm_writeack,
    input wire [0:0] in_lm28179_conv2d1x1_avm_waitrequest,
    input wire [0:0] in_lm28179_conv2d1x1_avm_readdatavalid,
    output wire [31:0] out_lm28179_conv2d1x1_avm_address,
    output wire [0:0] out_lm28179_conv2d1x1_avm_enable,
    output wire [0:0] out_lm28179_conv2d1x1_avm_read,
    output wire [0:0] out_lm28179_conv2d1x1_avm_write,
    output wire [127:0] out_lm28179_conv2d1x1_avm_writedata,
    output wire [15:0] out_lm28179_conv2d1x1_avm_byteenable,
    output wire [0:0] out_lm28179_conv2d1x1_avm_burstcount,
    output wire [0:0] out_c1_exi1_0_tpl,
    output wire [31:0] out_c1_exi1_1_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_conv2d1x11,
    input wire [0:0] in_c1_eni11_0_tpl,
    input wire [31:0] in_c1_eni11_1_tpl,
    input wire [63:0] in_c1_eni11_2_tpl,
    input wire [31:0] in_c1_eni11_3_tpl,
    input wire [31:0] in_c1_eni11_4_tpl,
    input wire [31:0] in_c1_eni11_5_tpl,
    input wire [31:0] in_c1_eni11_6_tpl,
    input wire [31:0] in_c1_eni11_7_tpl,
    input wire [0:0] in_c1_eni11_8_tpl,
    input wire [63:0] in_c1_eni11_9_tpl,
    input wire [31:0] in_c1_eni11_0_10_tpl,
    input wire [31:0] in_c1_eni11_1_10_tpl,
    input wire [31:0] in_c1_eni11_2_10_tpl,
    input wire [31:0] in_c1_eni11_3_10_tpl,
    input wire [31:0] in_c1_eni11_11_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [63:0] c_conv2d1x1_im_in_pmem_q;
    wire [31:0] i_add75_conv2d1x132_out_primWireOut;
    wire [3:0] i_arrayidx217_conv2d1x13_vt_const_3_q;
    wire [63:0] i_arrayidx217_conv2d1x13_vt_join_q;
    wire [59:0] i_arrayidx217_conv2d1x13_vt_select_63_b;
    wire [63:0] i_arrayidx5611_conv2d1x114_vt_join_q;
    wire [59:0] i_arrayidx5611_conv2d1x114_vt_select_63_b;
    wire [31:0] i_idxprom20_conv2d1x12_vt_const_63_q;
    wire [63:0] i_idxprom20_conv2d1x12_vt_join_q;
    wire [31:0] i_idxprom20_conv2d1x12_vt_select_31_b;
    wire [63:0] i_l_grpid_0_ext_conv2d1x111_vt_join_q;
    wire [31:0] i_l_grpid_0_ext_conv2d1x111_vt_select_31_b;
    wire [16:0] i_l_grpid_0_ext_offset_conv2d1x112_vt_const_16_q;
    wire [14:0] i_l_grpid_0_ext_offset_conv2d1x112_vt_const_63_q;
    wire [63:0] i_l_grpid_0_ext_offset_conv2d1x112_vt_join_q;
    wire [31:0] i_l_grpid_0_ext_offset_conv2d1x112_vt_select_48_b;
    wire [21:0] i_arrayidx217_conv2d1x10_add_x_a;
    wire [21:0] i_arrayidx217_conv2d1x10_add_x_b;
    logic [21:0] i_arrayidx217_conv2d1x10_add_x_o;
    wire [21:0] i_arrayidx217_conv2d1x10_add_x_q;
    wire [63:0] i_arrayidx217_conv2d1x10_append_upper_bits_x_q;
    wire [16:0] i_arrayidx217_conv2d1x10_narrow_x_b;
    wire [20:0] i_arrayidx217_conv2d1x10_shift_join_x_q;
    wire [21:0] i_arrayidx217_conv2d1x10_dupName_0_add_x_a;
    wire [21:0] i_arrayidx217_conv2d1x10_dupName_0_add_x_b;
    logic [21:0] i_arrayidx217_conv2d1x10_dupName_0_add_x_o;
    wire [21:0] i_arrayidx217_conv2d1x10_dupName_0_add_x_q;
    wire [41:0] i_arrayidx217_conv2d1x10_mult_extender_x_q;
    wire [8:0] i_arrayidx217_conv2d1x10_mult_multconst_x_q;
    wire [20:0] i_arrayidx217_conv2d1x10_dupName_0_trunc_sel_x_b;
    wire [20:0] i_arrayidx217_conv2d1x10_dupName_1_trunc_sel_x_b;
    wire [20:0] i_arrayidx217_conv2d1x10_dupName_2_trunc_sel_x_b;
    wire [20:0] i_arrayidx217_conv2d1x10_dupName_3_trunc_sel_x_b;
    wire [20:0] i_arrayidx217_conv2d1x10_dupName_5_trunc_sel_x_b;
    wire [63:0] i_arrayidx5611_conv2d1x10_append_upper_bits_x_q;
    wire [16:0] i_arrayidx5611_conv2d1x10_narrow_x_b;
    wire [20:0] i_arrayidx5611_conv2d1x10_shift_join_x_q;
    wire [21:0] i_arrayidx5611_conv2d1x10_dupName_0_add_x_a;
    wire [21:0] i_arrayidx5611_conv2d1x10_dupName_0_add_x_b;
    logic [21:0] i_arrayidx5611_conv2d1x10_dupName_0_add_x_o;
    wire [21:0] i_arrayidx5611_conv2d1x10_dupName_0_add_x_q;
    wire [20:0] i_arrayidx5611_conv2d1x10_dupName_3_trunc_sel_x_b;
    wire [20:0] i_arrayidx5611_conv2d1x10_dupName_5_trunc_sel_x_b;
    wire [63:0] i_idxprom20_conv2d1x12_sel_x_b;
    wire [63:0] i_l_grpid_0_ext_conv2d1x111_sel_x_b;
    wire [31:0] i_llvm_fpga_dot_product_f32_f32_v2f32_v2f32_dot_prod16_conv2d1x10_dspb_native_dot_product_vunroll_x_out_primWireOut;
    wire [31:0] i_llvm_fpga_dot_product_f32_f32_v2f32_v2f32_dot_prod_conv2d1x10_dspb_native_dot_product_vunroll_x_out_primWireOut;
    wire [31:0] i_llvm_fpga_mem_lm28179_conv2d1x115_vunroll_x_out_lm28179_conv2d1x1_avm_address;
    wire [0:0] i_llvm_fpga_mem_lm28179_conv2d1x115_vunroll_x_out_lm28179_conv2d1x1_avm_burstcount;
    wire [15:0] i_llvm_fpga_mem_lm28179_conv2d1x115_vunroll_x_out_lm28179_conv2d1x1_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_lm28179_conv2d1x115_vunroll_x_out_lm28179_conv2d1x1_avm_enable;
    wire [0:0] i_llvm_fpga_mem_lm28179_conv2d1x115_vunroll_x_out_lm28179_conv2d1x1_avm_read;
    wire [0:0] i_llvm_fpga_mem_lm28179_conv2d1x115_vunroll_x_out_lm28179_conv2d1x1_avm_write;
    wire [127:0] i_llvm_fpga_mem_lm28179_conv2d1x115_vunroll_x_out_lm28179_conv2d1x1_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_lm28179_conv2d1x115_vunroll_x_out_o_readdata_0_tpl;
    wire [31:0] i_llvm_fpga_mem_lm28179_conv2d1x115_vunroll_x_out_o_readdata_1_tpl;
    wire [31:0] i_llvm_fpga_mem_lm28179_conv2d1x115_vunroll_x_out_o_readdata_2_tpl;
    wire [31:0] i_llvm_fpga_mem_lm28179_conv2d1x115_vunroll_x_out_o_readdata_3_tpl;
    wire [31:0] i_llvm_fpga_mem_memdep_78_conv2d1x113_vunroll_x_out_memdep_78_conv2d1x1_avm_address;
    wire [0:0] i_llvm_fpga_mem_memdep_78_conv2d1x113_vunroll_x_out_memdep_78_conv2d1x1_avm_burstcount;
    wire [15:0] i_llvm_fpga_mem_memdep_78_conv2d1x113_vunroll_x_out_memdep_78_conv2d1x1_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_memdep_78_conv2d1x113_vunroll_x_out_memdep_78_conv2d1x1_avm_enable;
    wire [0:0] i_llvm_fpga_mem_memdep_78_conv2d1x113_vunroll_x_out_memdep_78_conv2d1x1_avm_read;
    wire [0:0] i_llvm_fpga_mem_memdep_78_conv2d1x113_vunroll_x_out_memdep_78_conv2d1x1_avm_write;
    wire [127:0] i_llvm_fpga_mem_memdep_78_conv2d1x113_vunroll_x_out_memdep_78_conv2d1x1_avm_writedata;
    (* dont_merge *) reg [0:0] valid_fanout_reg0_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg1_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg2_q;
    wire [21:0] xIfSign_mergedSignalTM_uid133_i_arrayidx217_conv2d1x10_mult_x_q;
    wire [21:0] inv0_uid137_i_arrayidx217_conv2d1x10_mult_x_q;
    wire [4:0] lowRangeB_uid139_i_arrayidx217_conv2d1x10_mult_x_in;
    wire [4:0] lowRangeB_uid139_i_arrayidx217_conv2d1x10_mult_x_b;
    wire [16:0] highBBits_uid140_i_arrayidx217_conv2d1x10_mult_x_b;
    wire [23:0] lev1_a0sumAHighB_uid141_i_arrayidx217_conv2d1x10_mult_x_a;
    wire [23:0] lev1_a0sumAHighB_uid141_i_arrayidx217_conv2d1x10_mult_x_b;
    logic [23:0] lev1_a0sumAHighB_uid141_i_arrayidx217_conv2d1x10_mult_x_o;
    wire [22:0] lev1_a0sumAHighB_uid141_i_arrayidx217_conv2d1x10_mult_x_q;
    wire [27:0] lev1_a0_uid142_i_arrayidx217_conv2d1x10_mult_x_q;
    wire [29:0] NodeSumsumAHighB_uid146_i_arrayidx217_conv2d1x10_mult_x_a;
    wire [29:0] NodeSumsumAHighB_uid146_i_arrayidx217_conv2d1x10_mult_x_b;
    logic [29:0] NodeSumsumAHighB_uid146_i_arrayidx217_conv2d1x10_mult_x_o;
    wire [28:0] NodeSumsumAHighB_uid146_i_arrayidx217_conv2d1x10_mult_x_q;
    wire [30:0] NodeSum_uid147_i_arrayidx217_conv2d1x10_mult_x_q;
    wire [11:0] onesCompToTwosComp_uid149_i_arrayidx217_conv2d1x10_mult_x_q;
    wire [32:0] correctionForCSDsumAHighB_uid153_i_arrayidx217_conv2d1x10_mult_x_a;
    wire [32:0] correctionForCSDsumAHighB_uid153_i_arrayidx217_conv2d1x10_mult_x_b;
    logic [32:0] correctionForCSDsumAHighB_uid153_i_arrayidx217_conv2d1x10_mult_x_o;
    wire [31:0] correctionForCSDsumAHighB_uid153_i_arrayidx217_conv2d1x10_mult_x_q;
    wire [36:0] correctionForCSD_uid154_i_arrayidx217_conv2d1x10_mult_x_q;
    wire [32:0] sR_uid156_i_arrayidx217_conv2d1x10_mult_x_in;
    wire [32:0] sR_uid156_i_arrayidx217_conv2d1x10_mult_x_b;
    wire [62:0] leftShiftStage0Idx1Rng1_uid269_i_l_grpid_0_ext_offset_conv2d1x10_shift_x_in;
    wire [62:0] leftShiftStage0Idx1Rng1_uid269_i_l_grpid_0_ext_offset_conv2d1x10_shift_x_b;
    wire [63:0] leftShiftStage0Idx1_uid270_i_l_grpid_0_ext_offset_conv2d1x10_shift_x_q;
    wire [0:0] leftShiftStage0_uid272_i_l_grpid_0_ext_offset_conv2d1x10_shift_x_s;
    reg [63:0] leftShiftStage0_uid272_i_l_grpid_0_ext_offset_conv2d1x10_shift_x_q;
    wire [15:0] leftShiftStage1Idx1Pad16_uid273_i_l_grpid_0_ext_offset_conv2d1x10_shift_x_q;
    wire [47:0] leftShiftStage1Idx1Rng16_uid274_i_l_grpid_0_ext_offset_conv2d1x10_shift_x_in;
    wire [47:0] leftShiftStage1Idx1Rng16_uid274_i_l_grpid_0_ext_offset_conv2d1x10_shift_x_b;
    wire [63:0] leftShiftStage1Idx1_uid275_i_l_grpid_0_ext_offset_conv2d1x10_shift_x_q;
    wire [0:0] leftShiftStage1_uid277_i_l_grpid_0_ext_offset_conv2d1x10_shift_x_s;
    reg [63:0] leftShiftStage1_uid277_i_l_grpid_0_ext_offset_conv2d1x10_shift_x_q;
    wire [42:0] i_arrayidx217_conv2d1x10_upper_bits_x_merged_bit_select_b;
    wire [20:0] i_arrayidx217_conv2d1x10_upper_bits_x_merged_bit_select_c;
    wire [1:0] lowRangeB_uid144_i_arrayidx217_conv2d1x10_mult_x_merged_bit_select_b;
    wire [18:0] lowRangeB_uid144_i_arrayidx217_conv2d1x10_mult_x_merged_bit_select_c;
    wire [4:0] lowRangeB_uid151_i_arrayidx217_conv2d1x10_mult_x_merged_bit_select_b;
    wire [6:0] lowRangeB_uid151_i_arrayidx217_conv2d1x10_mult_x_merged_bit_select_c;
    reg [1:0] redist0_lowRangeB_uid144_i_arrayidx217_conv2d1x10_mult_x_merged_bit_select_b_1_q;
    reg [42:0] redist1_i_arrayidx217_conv2d1x10_upper_bits_x_merged_bit_select_b_1_q;
    reg [31:0] redist2_sync_together39_aunroll_vunroll_x_in_c1_eni11_3_tpl_2_q;
    reg [31:0] redist2_sync_together39_aunroll_vunroll_x_in_c1_eni11_3_tpl_2_delay_0;
    reg [31:0] redist3_sync_together39_aunroll_vunroll_x_in_c1_eni11_4_tpl_2_q;
    reg [31:0] redist3_sync_together39_aunroll_vunroll_x_in_c1_eni11_4_tpl_2_delay_0;
    reg [31:0] redist4_sync_together39_aunroll_vunroll_x_in_c1_eni11_5_tpl_2_q;
    reg [31:0] redist4_sync_together39_aunroll_vunroll_x_in_c1_eni11_5_tpl_2_delay_0;
    reg [31:0] redist5_sync_together39_aunroll_vunroll_x_in_c1_eni11_6_tpl_2_q;
    reg [31:0] redist5_sync_together39_aunroll_vunroll_x_in_c1_eni11_6_tpl_2_delay_0;
    reg [0:0] redist6_sync_together39_aunroll_vunroll_x_in_c1_eni11_8_tpl_2_q;
    reg [0:0] redist6_sync_together39_aunroll_vunroll_x_in_c1_eni11_8_tpl_2_delay_0;
    reg [0:0] redist7_sync_together39_aunroll_vunroll_x_in_c1_eni11_8_tpl_3_q;
    reg [0:0] redist13_sync_together39_aunroll_vunroll_x_in_i_valid_1_q;
    reg [0:0] redist14_sync_together39_aunroll_vunroll_x_in_i_valid_2_q;
    reg [0:0] redist15_sync_together39_aunroll_vunroll_x_in_i_valid_20_q;
    reg [31:0] redist16_i_llvm_fpga_mem_lm28179_conv2d1x115_vunroll_x_out_o_readdata_1_tpl_1_q;
    reg [16:0] redist19_i_arrayidx5611_conv2d1x10_narrow_x_b_2_q;
    reg [16:0] redist19_i_arrayidx5611_conv2d1x10_narrow_x_b_2_delay_0;
    reg [20:0] redist20_i_arrayidx217_conv2d1x10_dupName_2_trunc_sel_x_b_1_q;
    reg [16:0] redist21_i_arrayidx217_conv2d1x10_narrow_x_b_2_q;
    reg [16:0] redist21_i_arrayidx217_conv2d1x10_narrow_x_b_2_delay_0;
    reg [31:0] redist22_i_l_grpid_0_ext_offset_conv2d1x112_vt_select_48_b_2_q;
    reg [31:0] redist22_i_l_grpid_0_ext_offset_conv2d1x112_vt_select_48_b_2_delay_0;
    reg [63:0] redist23_i_l_grpid_0_ext_offset_conv2d1x112_vt_join_q_1_q;
    reg [59:0] redist24_i_arrayidx5611_conv2d1x114_vt_select_63_b_1_q;
    reg [31:0] redist8_sync_together39_aunroll_vunroll_x_in_c1_eni11_0_10_tpl_7_outputreg0_q;
    wire redist8_sync_together39_aunroll_vunroll_x_in_c1_eni11_0_10_tpl_7_mem_reset0;
    wire [31:0] redist8_sync_together39_aunroll_vunroll_x_in_c1_eni11_0_10_tpl_7_mem_ia;
    wire [2:0] redist8_sync_together39_aunroll_vunroll_x_in_c1_eni11_0_10_tpl_7_mem_aa;
    wire [2:0] redist8_sync_together39_aunroll_vunroll_x_in_c1_eni11_0_10_tpl_7_mem_ab;
    wire [31:0] redist8_sync_together39_aunroll_vunroll_x_in_c1_eni11_0_10_tpl_7_mem_iq;
    wire [31:0] redist8_sync_together39_aunroll_vunroll_x_in_c1_eni11_0_10_tpl_7_mem_q;
    wire [2:0] redist8_sync_together39_aunroll_vunroll_x_in_c1_eni11_0_10_tpl_7_rdcnt_q;
    (* preserve *) reg [2:0] redist8_sync_together39_aunroll_vunroll_x_in_c1_eni11_0_10_tpl_7_rdcnt_i;
    (* preserve *) reg redist8_sync_together39_aunroll_vunroll_x_in_c1_eni11_0_10_tpl_7_rdcnt_eq;
    reg [2:0] redist8_sync_together39_aunroll_vunroll_x_in_c1_eni11_0_10_tpl_7_wraddr_q;
    wire [2:0] redist8_sync_together39_aunroll_vunroll_x_in_c1_eni11_0_10_tpl_7_mem_last_q;
    wire [0:0] redist8_sync_together39_aunroll_vunroll_x_in_c1_eni11_0_10_tpl_7_cmp_q;
    (* dont_merge *) reg [0:0] redist8_sync_together39_aunroll_vunroll_x_in_c1_eni11_0_10_tpl_7_cmpReg_q;
    wire [0:0] redist8_sync_together39_aunroll_vunroll_x_in_c1_eni11_0_10_tpl_7_notEnable_q;
    wire [0:0] redist8_sync_together39_aunroll_vunroll_x_in_c1_eni11_0_10_tpl_7_nor_q;
    (* dont_merge *) reg [0:0] redist8_sync_together39_aunroll_vunroll_x_in_c1_eni11_0_10_tpl_7_sticky_ena_q;
    wire [0:0] redist8_sync_together39_aunroll_vunroll_x_in_c1_eni11_0_10_tpl_7_enaAnd_q;
    wire redist9_sync_together39_aunroll_vunroll_x_in_c1_eni11_1_10_tpl_8_mem_reset0;
    wire [31:0] redist9_sync_together39_aunroll_vunroll_x_in_c1_eni11_1_10_tpl_8_mem_ia;
    wire [2:0] redist9_sync_together39_aunroll_vunroll_x_in_c1_eni11_1_10_tpl_8_mem_aa;
    wire [2:0] redist9_sync_together39_aunroll_vunroll_x_in_c1_eni11_1_10_tpl_8_mem_ab;
    wire [31:0] redist9_sync_together39_aunroll_vunroll_x_in_c1_eni11_1_10_tpl_8_mem_iq;
    wire [31:0] redist9_sync_together39_aunroll_vunroll_x_in_c1_eni11_1_10_tpl_8_mem_q;
    wire [2:0] redist9_sync_together39_aunroll_vunroll_x_in_c1_eni11_1_10_tpl_8_rdcnt_q;
    (* preserve *) reg [2:0] redist9_sync_together39_aunroll_vunroll_x_in_c1_eni11_1_10_tpl_8_rdcnt_i;
    (* preserve *) reg redist9_sync_together39_aunroll_vunroll_x_in_c1_eni11_1_10_tpl_8_rdcnt_eq;
    reg [2:0] redist9_sync_together39_aunroll_vunroll_x_in_c1_eni11_1_10_tpl_8_wraddr_q;
    wire [3:0] redist9_sync_together39_aunroll_vunroll_x_in_c1_eni11_1_10_tpl_8_mem_last_q;
    wire [3:0] redist9_sync_together39_aunroll_vunroll_x_in_c1_eni11_1_10_tpl_8_cmp_b;
    wire [0:0] redist9_sync_together39_aunroll_vunroll_x_in_c1_eni11_1_10_tpl_8_cmp_q;
    (* dont_merge *) reg [0:0] redist9_sync_together39_aunroll_vunroll_x_in_c1_eni11_1_10_tpl_8_cmpReg_q;
    wire [0:0] redist9_sync_together39_aunroll_vunroll_x_in_c1_eni11_1_10_tpl_8_notEnable_q;
    wire [0:0] redist9_sync_together39_aunroll_vunroll_x_in_c1_eni11_1_10_tpl_8_nor_q;
    (* dont_merge *) reg [0:0] redist9_sync_together39_aunroll_vunroll_x_in_c1_eni11_1_10_tpl_8_sticky_ena_q;
    wire [0:0] redist9_sync_together39_aunroll_vunroll_x_in_c1_eni11_1_10_tpl_8_enaAnd_q;
    reg [31:0] redist10_sync_together39_aunroll_vunroll_x_in_c1_eni11_2_10_tpl_11_outputreg0_q;
    wire redist10_sync_together39_aunroll_vunroll_x_in_c1_eni11_2_10_tpl_11_mem_reset0;
    wire [31:0] redist10_sync_together39_aunroll_vunroll_x_in_c1_eni11_2_10_tpl_11_mem_ia;
    wire [3:0] redist10_sync_together39_aunroll_vunroll_x_in_c1_eni11_2_10_tpl_11_mem_aa;
    wire [3:0] redist10_sync_together39_aunroll_vunroll_x_in_c1_eni11_2_10_tpl_11_mem_ab;
    wire [31:0] redist10_sync_together39_aunroll_vunroll_x_in_c1_eni11_2_10_tpl_11_mem_iq;
    wire [31:0] redist10_sync_together39_aunroll_vunroll_x_in_c1_eni11_2_10_tpl_11_mem_q;
    wire [3:0] redist10_sync_together39_aunroll_vunroll_x_in_c1_eni11_2_10_tpl_11_rdcnt_q;
    (* preserve *) reg [3:0] redist10_sync_together39_aunroll_vunroll_x_in_c1_eni11_2_10_tpl_11_rdcnt_i;
    (* preserve *) reg redist10_sync_together39_aunroll_vunroll_x_in_c1_eni11_2_10_tpl_11_rdcnt_eq;
    reg [3:0] redist10_sync_together39_aunroll_vunroll_x_in_c1_eni11_2_10_tpl_11_wraddr_q;
    wire [3:0] redist10_sync_together39_aunroll_vunroll_x_in_c1_eni11_2_10_tpl_11_mem_last_q;
    wire [0:0] redist10_sync_together39_aunroll_vunroll_x_in_c1_eni11_2_10_tpl_11_cmp_q;
    (* dont_merge *) reg [0:0] redist10_sync_together39_aunroll_vunroll_x_in_c1_eni11_2_10_tpl_11_cmpReg_q;
    wire [0:0] redist10_sync_together39_aunroll_vunroll_x_in_c1_eni11_2_10_tpl_11_notEnable_q;
    wire [0:0] redist10_sync_together39_aunroll_vunroll_x_in_c1_eni11_2_10_tpl_11_nor_q;
    (* dont_merge *) reg [0:0] redist10_sync_together39_aunroll_vunroll_x_in_c1_eni11_2_10_tpl_11_sticky_ena_q;
    wire [0:0] redist10_sync_together39_aunroll_vunroll_x_in_c1_eni11_2_10_tpl_11_enaAnd_q;
    wire redist11_sync_together39_aunroll_vunroll_x_in_c1_eni11_3_10_tpl_14_mem_reset0;
    wire [31:0] redist11_sync_together39_aunroll_vunroll_x_in_c1_eni11_3_10_tpl_14_mem_ia;
    wire [3:0] redist11_sync_together39_aunroll_vunroll_x_in_c1_eni11_3_10_tpl_14_mem_aa;
    wire [3:0] redist11_sync_together39_aunroll_vunroll_x_in_c1_eni11_3_10_tpl_14_mem_ab;
    wire [31:0] redist11_sync_together39_aunroll_vunroll_x_in_c1_eni11_3_10_tpl_14_mem_iq;
    wire [31:0] redist11_sync_together39_aunroll_vunroll_x_in_c1_eni11_3_10_tpl_14_mem_q;
    wire [3:0] redist11_sync_together39_aunroll_vunroll_x_in_c1_eni11_3_10_tpl_14_rdcnt_q;
    (* preserve *) reg [3:0] redist11_sync_together39_aunroll_vunroll_x_in_c1_eni11_3_10_tpl_14_rdcnt_i;
    (* preserve *) reg redist11_sync_together39_aunroll_vunroll_x_in_c1_eni11_3_10_tpl_14_rdcnt_eq;
    reg [3:0] redist11_sync_together39_aunroll_vunroll_x_in_c1_eni11_3_10_tpl_14_wraddr_q;
    wire [4:0] redist11_sync_together39_aunroll_vunroll_x_in_c1_eni11_3_10_tpl_14_mem_last_q;
    wire [4:0] redist11_sync_together39_aunroll_vunroll_x_in_c1_eni11_3_10_tpl_14_cmp_b;
    wire [0:0] redist11_sync_together39_aunroll_vunroll_x_in_c1_eni11_3_10_tpl_14_cmp_q;
    (* dont_merge *) reg [0:0] redist11_sync_together39_aunroll_vunroll_x_in_c1_eni11_3_10_tpl_14_cmpReg_q;
    wire [0:0] redist11_sync_together39_aunroll_vunroll_x_in_c1_eni11_3_10_tpl_14_notEnable_q;
    wire [0:0] redist11_sync_together39_aunroll_vunroll_x_in_c1_eni11_3_10_tpl_14_nor_q;
    (* dont_merge *) reg [0:0] redist11_sync_together39_aunroll_vunroll_x_in_c1_eni11_3_10_tpl_14_sticky_ena_q;
    wire [0:0] redist11_sync_together39_aunroll_vunroll_x_in_c1_eni11_3_10_tpl_14_enaAnd_q;
    reg [31:0] redist12_sync_together39_aunroll_vunroll_x_in_c1_eni11_11_tpl_18_outputreg0_q;
    wire redist12_sync_together39_aunroll_vunroll_x_in_c1_eni11_11_tpl_18_mem_reset0;
    wire [31:0] redist12_sync_together39_aunroll_vunroll_x_in_c1_eni11_11_tpl_18_mem_ia;
    wire [3:0] redist12_sync_together39_aunroll_vunroll_x_in_c1_eni11_11_tpl_18_mem_aa;
    wire [3:0] redist12_sync_together39_aunroll_vunroll_x_in_c1_eni11_11_tpl_18_mem_ab;
    wire [31:0] redist12_sync_together39_aunroll_vunroll_x_in_c1_eni11_11_tpl_18_mem_iq;
    wire [31:0] redist12_sync_together39_aunroll_vunroll_x_in_c1_eni11_11_tpl_18_mem_q;
    wire [3:0] redist12_sync_together39_aunroll_vunroll_x_in_c1_eni11_11_tpl_18_rdcnt_q;
    (* preserve *) reg [3:0] redist12_sync_together39_aunroll_vunroll_x_in_c1_eni11_11_tpl_18_rdcnt_i;
    reg [3:0] redist12_sync_together39_aunroll_vunroll_x_in_c1_eni11_11_tpl_18_wraddr_q;
    wire [4:0] redist12_sync_together39_aunroll_vunroll_x_in_c1_eni11_11_tpl_18_mem_last_q;
    wire [4:0] redist12_sync_together39_aunroll_vunroll_x_in_c1_eni11_11_tpl_18_cmp_b;
    wire [0:0] redist12_sync_together39_aunroll_vunroll_x_in_c1_eni11_11_tpl_18_cmp_q;
    (* dont_merge *) reg [0:0] redist12_sync_together39_aunroll_vunroll_x_in_c1_eni11_11_tpl_18_cmpReg_q;
    wire [0:0] redist12_sync_together39_aunroll_vunroll_x_in_c1_eni11_11_tpl_18_notEnable_q;
    wire [0:0] redist12_sync_together39_aunroll_vunroll_x_in_c1_eni11_11_tpl_18_nor_q;
    (* dont_merge *) reg [0:0] redist12_sync_together39_aunroll_vunroll_x_in_c1_eni11_11_tpl_18_sticky_ena_q;
    wire [0:0] redist12_sync_together39_aunroll_vunroll_x_in_c1_eni11_11_tpl_18_enaAnd_q;
    reg [31:0] redist17_i_llvm_fpga_mem_lm28179_conv2d1x115_vunroll_x_out_o_readdata_2_tpl_4_outputreg0_q;
    wire redist17_i_llvm_fpga_mem_lm28179_conv2d1x115_vunroll_x_out_o_readdata_2_tpl_4_mem_reset0;
    wire [31:0] redist17_i_llvm_fpga_mem_lm28179_conv2d1x115_vunroll_x_out_o_readdata_2_tpl_4_mem_ia;
    wire [0:0] redist17_i_llvm_fpga_mem_lm28179_conv2d1x115_vunroll_x_out_o_readdata_2_tpl_4_mem_aa;
    wire [0:0] redist17_i_llvm_fpga_mem_lm28179_conv2d1x115_vunroll_x_out_o_readdata_2_tpl_4_mem_ab;
    wire [31:0] redist17_i_llvm_fpga_mem_lm28179_conv2d1x115_vunroll_x_out_o_readdata_2_tpl_4_mem_iq;
    wire [31:0] redist17_i_llvm_fpga_mem_lm28179_conv2d1x115_vunroll_x_out_o_readdata_2_tpl_4_mem_q;
    wire [0:0] redist17_i_llvm_fpga_mem_lm28179_conv2d1x115_vunroll_x_out_o_readdata_2_tpl_4_rdcnt_q;
    (* preserve *) reg [0:0] redist17_i_llvm_fpga_mem_lm28179_conv2d1x115_vunroll_x_out_o_readdata_2_tpl_4_rdcnt_i;
    reg [0:0] redist17_i_llvm_fpga_mem_lm28179_conv2d1x115_vunroll_x_out_o_readdata_2_tpl_4_wraddr_q;
    (* dont_merge *) reg [0:0] redist17_i_llvm_fpga_mem_lm28179_conv2d1x115_vunroll_x_out_o_readdata_2_tpl_4_cmpReg_q;
    wire [0:0] redist17_i_llvm_fpga_mem_lm28179_conv2d1x115_vunroll_x_out_o_readdata_2_tpl_4_notEnable_q;
    wire [0:0] redist17_i_llvm_fpga_mem_lm28179_conv2d1x115_vunroll_x_out_o_readdata_2_tpl_4_nor_q;
    (* dont_merge *) reg [0:0] redist17_i_llvm_fpga_mem_lm28179_conv2d1x115_vunroll_x_out_o_readdata_2_tpl_4_sticky_ena_q;
    wire [0:0] redist17_i_llvm_fpga_mem_lm28179_conv2d1x115_vunroll_x_out_o_readdata_2_tpl_4_enaAnd_q;
    wire redist18_i_llvm_fpga_mem_lm28179_conv2d1x115_vunroll_x_out_o_readdata_3_tpl_7_mem_reset0;
    wire [31:0] redist18_i_llvm_fpga_mem_lm28179_conv2d1x115_vunroll_x_out_o_readdata_3_tpl_7_mem_ia;
    wire [2:0] redist18_i_llvm_fpga_mem_lm28179_conv2d1x115_vunroll_x_out_o_readdata_3_tpl_7_mem_aa;
    wire [2:0] redist18_i_llvm_fpga_mem_lm28179_conv2d1x115_vunroll_x_out_o_readdata_3_tpl_7_mem_ab;
    wire [31:0] redist18_i_llvm_fpga_mem_lm28179_conv2d1x115_vunroll_x_out_o_readdata_3_tpl_7_mem_iq;
    wire [31:0] redist18_i_llvm_fpga_mem_lm28179_conv2d1x115_vunroll_x_out_o_readdata_3_tpl_7_mem_q;
    wire [2:0] redist18_i_llvm_fpga_mem_lm28179_conv2d1x115_vunroll_x_out_o_readdata_3_tpl_7_rdcnt_q;
    (* preserve *) reg [2:0] redist18_i_llvm_fpga_mem_lm28179_conv2d1x115_vunroll_x_out_o_readdata_3_tpl_7_rdcnt_i;
    (* preserve *) reg redist18_i_llvm_fpga_mem_lm28179_conv2d1x115_vunroll_x_out_o_readdata_3_tpl_7_rdcnt_eq;
    reg [2:0] redist18_i_llvm_fpga_mem_lm28179_conv2d1x115_vunroll_x_out_o_readdata_3_tpl_7_wraddr_q;
    wire [3:0] redist18_i_llvm_fpga_mem_lm28179_conv2d1x115_vunroll_x_out_o_readdata_3_tpl_7_mem_last_q;
    wire [3:0] redist18_i_llvm_fpga_mem_lm28179_conv2d1x115_vunroll_x_out_o_readdata_3_tpl_7_cmp_b;
    wire [0:0] redist18_i_llvm_fpga_mem_lm28179_conv2d1x115_vunroll_x_out_o_readdata_3_tpl_7_cmp_q;
    (* dont_merge *) reg [0:0] redist18_i_llvm_fpga_mem_lm28179_conv2d1x115_vunroll_x_out_o_readdata_3_tpl_7_cmpReg_q;
    wire [0:0] redist18_i_llvm_fpga_mem_lm28179_conv2d1x115_vunroll_x_out_o_readdata_3_tpl_7_notEnable_q;
    wire [0:0] redist18_i_llvm_fpga_mem_lm28179_conv2d1x115_vunroll_x_out_o_readdata_3_tpl_7_nor_q;
    (* dont_merge *) reg [0:0] redist18_i_llvm_fpga_mem_lm28179_conv2d1x115_vunroll_x_out_o_readdata_3_tpl_7_sticky_ena_q;
    wire [0:0] redist18_i_llvm_fpga_mem_lm28179_conv2d1x115_vunroll_x_out_o_readdata_3_tpl_7_enaAnd_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist5_sync_together39_aunroll_vunroll_x_in_c1_eni11_6_tpl_2(DELAY,286)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_sync_together39_aunroll_vunroll_x_in_c1_eni11_6_tpl_2_delay_0 <= '0;
            redist5_sync_together39_aunroll_vunroll_x_in_c1_eni11_6_tpl_2_q <= '0;
        end
        else
        begin
            redist5_sync_together39_aunroll_vunroll_x_in_c1_eni11_6_tpl_2_delay_0 <= $unsigned(in_c1_eni11_6_tpl);
            redist5_sync_together39_aunroll_vunroll_x_in_c1_eni11_6_tpl_2_q <= redist5_sync_together39_aunroll_vunroll_x_in_c1_eni11_6_tpl_2_delay_0;
        end
    end

    // redist4_sync_together39_aunroll_vunroll_x_in_c1_eni11_5_tpl_2(DELAY,285)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_sync_together39_aunroll_vunroll_x_in_c1_eni11_5_tpl_2_delay_0 <= '0;
            redist4_sync_together39_aunroll_vunroll_x_in_c1_eni11_5_tpl_2_q <= '0;
        end
        else
        begin
            redist4_sync_together39_aunroll_vunroll_x_in_c1_eni11_5_tpl_2_delay_0 <= $unsigned(in_c1_eni11_5_tpl);
            redist4_sync_together39_aunroll_vunroll_x_in_c1_eni11_5_tpl_2_q <= redist4_sync_together39_aunroll_vunroll_x_in_c1_eni11_5_tpl_2_delay_0;
        end
    end

    // redist3_sync_together39_aunroll_vunroll_x_in_c1_eni11_4_tpl_2(DELAY,284)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_sync_together39_aunroll_vunroll_x_in_c1_eni11_4_tpl_2_delay_0 <= '0;
            redist3_sync_together39_aunroll_vunroll_x_in_c1_eni11_4_tpl_2_q <= '0;
        end
        else
        begin
            redist3_sync_together39_aunroll_vunroll_x_in_c1_eni11_4_tpl_2_delay_0 <= $unsigned(in_c1_eni11_4_tpl);
            redist3_sync_together39_aunroll_vunroll_x_in_c1_eni11_4_tpl_2_q <= redist3_sync_together39_aunroll_vunroll_x_in_c1_eni11_4_tpl_2_delay_0;
        end
    end

    // redist2_sync_together39_aunroll_vunroll_x_in_c1_eni11_3_tpl_2(DELAY,283)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_sync_together39_aunroll_vunroll_x_in_c1_eni11_3_tpl_2_delay_0 <= '0;
            redist2_sync_together39_aunroll_vunroll_x_in_c1_eni11_3_tpl_2_q <= '0;
        end
        else
        begin
            redist2_sync_together39_aunroll_vunroll_x_in_c1_eni11_3_tpl_2_delay_0 <= $unsigned(in_c1_eni11_3_tpl);
            redist2_sync_together39_aunroll_vunroll_x_in_c1_eni11_3_tpl_2_q <= redist2_sync_together39_aunroll_vunroll_x_in_c1_eni11_3_tpl_2_delay_0;
        end
    end

    // redist13_sync_together39_aunroll_vunroll_x_in_i_valid_1(DELAY,294)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_sync_together39_aunroll_vunroll_x_in_i_valid_1_q <= '0;
        end
        else
        begin
            redist13_sync_together39_aunroll_vunroll_x_in_i_valid_1_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg1(REG,92)@138 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg1_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg1_q <= $unsigned(redist13_sync_together39_aunroll_vunroll_x_in_i_valid_1_q);
        end
    end

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // redist6_sync_together39_aunroll_vunroll_x_in_c1_eni11_8_tpl_2(DELAY,287)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_sync_together39_aunroll_vunroll_x_in_c1_eni11_8_tpl_2_delay_0 <= '0;
            redist6_sync_together39_aunroll_vunroll_x_in_c1_eni11_8_tpl_2_q <= '0;
        end
        else
        begin
            redist6_sync_together39_aunroll_vunroll_x_in_c1_eni11_8_tpl_2_delay_0 <= $unsigned(in_c1_eni11_8_tpl);
            redist6_sync_together39_aunroll_vunroll_x_in_c1_eni11_8_tpl_2_q <= redist6_sync_together39_aunroll_vunroll_x_in_c1_eni11_8_tpl_2_delay_0;
        end
    end

    // c_conv2d1x1_im_in_pmem(CONSTANT,2)
    assign c_conv2d1x1_im_in_pmem_q = $unsigned(64'b0100000001000000000000000000000000000000000000000000000000000000);

    // i_arrayidx217_conv2d1x10_upper_bits_x_merged_bit_select(BITSELECT,278)@138
    assign i_arrayidx217_conv2d1x10_upper_bits_x_merged_bit_select_b = c_conv2d1x1_im_in_pmem_q[63:21];
    assign i_arrayidx217_conv2d1x10_upper_bits_x_merged_bit_select_c = c_conv2d1x1_im_in_pmem_q[20:0];

    // redist1_i_arrayidx217_conv2d1x10_upper_bits_x_merged_bit_select_b_1(DELAY,282)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_i_arrayidx217_conv2d1x10_upper_bits_x_merged_bit_select_b_1_q <= '0;
        end
        else
        begin
            redist1_i_arrayidx217_conv2d1x10_upper_bits_x_merged_bit_select_b_1_q <= $unsigned(i_arrayidx217_conv2d1x10_upper_bits_x_merged_bit_select_b);
        end
    end

    // i_idxprom20_conv2d1x12_vt_const_63(CONSTANT,16)
    assign i_idxprom20_conv2d1x12_vt_const_63_q = $unsigned(32'b00000000000000000000000000000000);

    // i_idxprom20_conv2d1x12_sel_x(BITSELECT,79)@137
    assign i_idxprom20_conv2d1x12_sel_x_b = {32'b00000000000000000000000000000000, in_c1_eni11_1_tpl[31:0]};

    // i_idxprom20_conv2d1x12_vt_select_31(BITSELECT,18)@137
    assign i_idxprom20_conv2d1x12_vt_select_31_b = i_idxprom20_conv2d1x12_sel_x_b[31:0];

    // i_idxprom20_conv2d1x12_vt_join(BITJOIN,17)@137
    assign i_idxprom20_conv2d1x12_vt_join_q = {i_idxprom20_conv2d1x12_vt_const_63_q, i_idxprom20_conv2d1x12_vt_select_31_b};

    // i_arrayidx217_conv2d1x10_dupName_3_trunc_sel_x(BITSELECT,53)@137
    assign i_arrayidx217_conv2d1x10_dupName_3_trunc_sel_x_b = i_idxprom20_conv2d1x12_vt_join_q[20:0];

    // i_arrayidx217_conv2d1x10_narrow_x(BITSELECT,36)@137
    assign i_arrayidx217_conv2d1x10_narrow_x_b = i_arrayidx217_conv2d1x10_dupName_3_trunc_sel_x_b[16:0];

    // redist21_i_arrayidx217_conv2d1x10_narrow_x_b_2(DELAY,302)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist21_i_arrayidx217_conv2d1x10_narrow_x_b_2_delay_0 <= '0;
            redist21_i_arrayidx217_conv2d1x10_narrow_x_b_2_q <= '0;
        end
        else
        begin
            redist21_i_arrayidx217_conv2d1x10_narrow_x_b_2_delay_0 <= $unsigned(i_arrayidx217_conv2d1x10_narrow_x_b);
            redist21_i_arrayidx217_conv2d1x10_narrow_x_b_2_q <= redist21_i_arrayidx217_conv2d1x10_narrow_x_b_2_delay_0;
        end
    end

    // i_arrayidx217_conv2d1x10_shift_join_x(BITJOIN,37)@139
    assign i_arrayidx217_conv2d1x10_shift_join_x_q = {redist21_i_arrayidx217_conv2d1x10_narrow_x_b_2_q, i_arrayidx217_conv2d1x13_vt_const_3_q};

    // i_arrayidx217_conv2d1x10_mult_multconst_x(CONSTANT,48)
    assign i_arrayidx217_conv2d1x10_mult_multconst_x_q = $unsigned(9'b000000000);

    // i_arrayidx217_conv2d1x10_dupName_0_trunc_sel_x(BITSELECT,50)@137
    assign i_arrayidx217_conv2d1x10_dupName_0_trunc_sel_x_b = in_c1_eni11_2_tpl[20:0];

    // lowRangeB_uid144_i_arrayidx217_conv2d1x10_mult_x_merged_bit_select(BITSELECT,279)@137
    assign lowRangeB_uid144_i_arrayidx217_conv2d1x10_mult_x_merged_bit_select_b = i_arrayidx217_conv2d1x10_dupName_0_trunc_sel_x_b[1:0];
    assign lowRangeB_uid144_i_arrayidx217_conv2d1x10_mult_x_merged_bit_select_c = i_arrayidx217_conv2d1x10_dupName_0_trunc_sel_x_b[20:2];

    // xIfSign_mergedSignalTM_uid133_i_arrayidx217_conv2d1x10_mult_x(BITJOIN,132)@137
    assign xIfSign_mergedSignalTM_uid133_i_arrayidx217_conv2d1x10_mult_x_q = {GND_q, i_arrayidx217_conv2d1x10_dupName_0_trunc_sel_x_b};

    // inv0_uid137_i_arrayidx217_conv2d1x10_mult_x(LOGICAL,136)@137
    assign inv0_uid137_i_arrayidx217_conv2d1x10_mult_x_q = ~ (xIfSign_mergedSignalTM_uid133_i_arrayidx217_conv2d1x10_mult_x_q);

    // highBBits_uid140_i_arrayidx217_conv2d1x10_mult_x(BITSELECT,139)@137
    assign highBBits_uid140_i_arrayidx217_conv2d1x10_mult_x_b = $unsigned(inv0_uid137_i_arrayidx217_conv2d1x10_mult_x_q[21:5]);

    // lev1_a0sumAHighB_uid141_i_arrayidx217_conv2d1x10_mult_x(ADD,140)@137
    assign lev1_a0sumAHighB_uid141_i_arrayidx217_conv2d1x10_mult_x_a = $unsigned({3'b000, i_arrayidx217_conv2d1x10_dupName_0_trunc_sel_x_b});
    assign lev1_a0sumAHighB_uid141_i_arrayidx217_conv2d1x10_mult_x_b = $unsigned({{7{highBBits_uid140_i_arrayidx217_conv2d1x10_mult_x_b[16]}}, highBBits_uid140_i_arrayidx217_conv2d1x10_mult_x_b});
    assign lev1_a0sumAHighB_uid141_i_arrayidx217_conv2d1x10_mult_x_o = $unsigned($signed(lev1_a0sumAHighB_uid141_i_arrayidx217_conv2d1x10_mult_x_a) + $signed(lev1_a0sumAHighB_uid141_i_arrayidx217_conv2d1x10_mult_x_b));
    assign lev1_a0sumAHighB_uid141_i_arrayidx217_conv2d1x10_mult_x_q = lev1_a0sumAHighB_uid141_i_arrayidx217_conv2d1x10_mult_x_o[22:0];

    // lowRangeB_uid139_i_arrayidx217_conv2d1x10_mult_x(BITSELECT,138)@137
    assign lowRangeB_uid139_i_arrayidx217_conv2d1x10_mult_x_in = inv0_uid137_i_arrayidx217_conv2d1x10_mult_x_q[4:0];
    assign lowRangeB_uid139_i_arrayidx217_conv2d1x10_mult_x_b = lowRangeB_uid139_i_arrayidx217_conv2d1x10_mult_x_in[4:0];

    // lev1_a0_uid142_i_arrayidx217_conv2d1x10_mult_x(BITJOIN,141)@137
    assign lev1_a0_uid142_i_arrayidx217_conv2d1x10_mult_x_q = {lev1_a0sumAHighB_uid141_i_arrayidx217_conv2d1x10_mult_x_q, lowRangeB_uid139_i_arrayidx217_conv2d1x10_mult_x_b};

    // NodeSumsumAHighB_uid146_i_arrayidx217_conv2d1x10_mult_x(ADD,145)@137 + 1
    assign NodeSumsumAHighB_uid146_i_arrayidx217_conv2d1x10_mult_x_a = $unsigned({{2{lev1_a0_uid142_i_arrayidx217_conv2d1x10_mult_x_q[27]}}, lev1_a0_uid142_i_arrayidx217_conv2d1x10_mult_x_q});
    assign NodeSumsumAHighB_uid146_i_arrayidx217_conv2d1x10_mult_x_b = $unsigned({11'b00000000000, lowRangeB_uid144_i_arrayidx217_conv2d1x10_mult_x_merged_bit_select_c});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            NodeSumsumAHighB_uid146_i_arrayidx217_conv2d1x10_mult_x_o <= 30'b0;
        end
        else
        begin
            NodeSumsumAHighB_uid146_i_arrayidx217_conv2d1x10_mult_x_o <= $unsigned($signed(NodeSumsumAHighB_uid146_i_arrayidx217_conv2d1x10_mult_x_a) + $signed(NodeSumsumAHighB_uid146_i_arrayidx217_conv2d1x10_mult_x_b));
        end
    end
    assign NodeSumsumAHighB_uid146_i_arrayidx217_conv2d1x10_mult_x_q = NodeSumsumAHighB_uid146_i_arrayidx217_conv2d1x10_mult_x_o[28:0];

    // redist0_lowRangeB_uid144_i_arrayidx217_conv2d1x10_mult_x_merged_bit_select_b_1(DELAY,281)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_lowRangeB_uid144_i_arrayidx217_conv2d1x10_mult_x_merged_bit_select_b_1_q <= '0;
        end
        else
        begin
            redist0_lowRangeB_uid144_i_arrayidx217_conv2d1x10_mult_x_merged_bit_select_b_1_q <= $unsigned(lowRangeB_uid144_i_arrayidx217_conv2d1x10_mult_x_merged_bit_select_b);
        end
    end

    // NodeSum_uid147_i_arrayidx217_conv2d1x10_mult_x(BITJOIN,146)@138
    assign NodeSum_uid147_i_arrayidx217_conv2d1x10_mult_x_q = {NodeSumsumAHighB_uid146_i_arrayidx217_conv2d1x10_mult_x_q, redist0_lowRangeB_uid144_i_arrayidx217_conv2d1x10_mult_x_merged_bit_select_b_1_q};

    // correctionForCSDsumAHighB_uid153_i_arrayidx217_conv2d1x10_mult_x(ADD,152)@138
    assign correctionForCSDsumAHighB_uid153_i_arrayidx217_conv2d1x10_mult_x_a = $unsigned({{2{NodeSum_uid147_i_arrayidx217_conv2d1x10_mult_x_q[30]}}, NodeSum_uid147_i_arrayidx217_conv2d1x10_mult_x_q});
    assign correctionForCSDsumAHighB_uid153_i_arrayidx217_conv2d1x10_mult_x_b = $unsigned({26'b00000000000000000000000000, lowRangeB_uid151_i_arrayidx217_conv2d1x10_mult_x_merged_bit_select_c});
    assign correctionForCSDsumAHighB_uid153_i_arrayidx217_conv2d1x10_mult_x_o = $unsigned($signed(correctionForCSDsumAHighB_uid153_i_arrayidx217_conv2d1x10_mult_x_a) + $signed(correctionForCSDsumAHighB_uid153_i_arrayidx217_conv2d1x10_mult_x_b));
    assign correctionForCSDsumAHighB_uid153_i_arrayidx217_conv2d1x10_mult_x_q = correctionForCSDsumAHighB_uid153_i_arrayidx217_conv2d1x10_mult_x_o[31:0];

    // onesCompToTwosComp_uid149_i_arrayidx217_conv2d1x10_mult_x(CONSTANT,148)
    assign onesCompToTwosComp_uid149_i_arrayidx217_conv2d1x10_mult_x_q = $unsigned(12'b000010000000);

    // lowRangeB_uid151_i_arrayidx217_conv2d1x10_mult_x_merged_bit_select(BITSELECT,280)
    assign lowRangeB_uid151_i_arrayidx217_conv2d1x10_mult_x_merged_bit_select_b = onesCompToTwosComp_uid149_i_arrayidx217_conv2d1x10_mult_x_q[4:0];
    assign lowRangeB_uid151_i_arrayidx217_conv2d1x10_mult_x_merged_bit_select_c = onesCompToTwosComp_uid149_i_arrayidx217_conv2d1x10_mult_x_q[11:5];

    // correctionForCSD_uid154_i_arrayidx217_conv2d1x10_mult_x(BITJOIN,153)@138
    assign correctionForCSD_uid154_i_arrayidx217_conv2d1x10_mult_x_q = {correctionForCSDsumAHighB_uid153_i_arrayidx217_conv2d1x10_mult_x_q, lowRangeB_uid151_i_arrayidx217_conv2d1x10_mult_x_merged_bit_select_b};

    // sR_uid156_i_arrayidx217_conv2d1x10_mult_x(BITSELECT,155)@138
    assign sR_uid156_i_arrayidx217_conv2d1x10_mult_x_in = correctionForCSD_uid154_i_arrayidx217_conv2d1x10_mult_x_q[32:0];
    assign sR_uid156_i_arrayidx217_conv2d1x10_mult_x_b = sR_uid156_i_arrayidx217_conv2d1x10_mult_x_in[32:0];

    // i_arrayidx217_conv2d1x10_mult_extender_x(BITJOIN,47)@138
    assign i_arrayidx217_conv2d1x10_mult_extender_x_q = {i_arrayidx217_conv2d1x10_mult_multconst_x_q, sR_uid156_i_arrayidx217_conv2d1x10_mult_x_b};

    // i_arrayidx217_conv2d1x10_dupName_1_trunc_sel_x(BITSELECT,51)@138
    assign i_arrayidx217_conv2d1x10_dupName_1_trunc_sel_x_b = i_arrayidx217_conv2d1x10_mult_extender_x_q[20:0];

    // i_arrayidx217_conv2d1x10_add_x(ADD,31)@138
    assign i_arrayidx217_conv2d1x10_add_x_a = {1'b0, i_arrayidx217_conv2d1x10_upper_bits_x_merged_bit_select_c};
    assign i_arrayidx217_conv2d1x10_add_x_b = {1'b0, i_arrayidx217_conv2d1x10_dupName_1_trunc_sel_x_b};
    assign i_arrayidx217_conv2d1x10_add_x_o = $unsigned(i_arrayidx217_conv2d1x10_add_x_a) + $unsigned(i_arrayidx217_conv2d1x10_add_x_b);
    assign i_arrayidx217_conv2d1x10_add_x_q = i_arrayidx217_conv2d1x10_add_x_o[21:0];

    // i_arrayidx217_conv2d1x10_dupName_2_trunc_sel_x(BITSELECT,52)@138
    assign i_arrayidx217_conv2d1x10_dupName_2_trunc_sel_x_b = i_arrayidx217_conv2d1x10_add_x_q[20:0];

    // redist20_i_arrayidx217_conv2d1x10_dupName_2_trunc_sel_x_b_1(DELAY,301)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist20_i_arrayidx217_conv2d1x10_dupName_2_trunc_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist20_i_arrayidx217_conv2d1x10_dupName_2_trunc_sel_x_b_1_q <= $unsigned(i_arrayidx217_conv2d1x10_dupName_2_trunc_sel_x_b);
        end
    end

    // i_arrayidx217_conv2d1x10_dupName_0_add_x(ADD,41)@139
    assign i_arrayidx217_conv2d1x10_dupName_0_add_x_a = {1'b0, redist20_i_arrayidx217_conv2d1x10_dupName_2_trunc_sel_x_b_1_q};
    assign i_arrayidx217_conv2d1x10_dupName_0_add_x_b = {1'b0, i_arrayidx217_conv2d1x10_shift_join_x_q};
    assign i_arrayidx217_conv2d1x10_dupName_0_add_x_o = $unsigned(i_arrayidx217_conv2d1x10_dupName_0_add_x_a) + $unsigned(i_arrayidx217_conv2d1x10_dupName_0_add_x_b);
    assign i_arrayidx217_conv2d1x10_dupName_0_add_x_q = i_arrayidx217_conv2d1x10_dupName_0_add_x_o[21:0];

    // i_arrayidx217_conv2d1x10_dupName_5_trunc_sel_x(BITSELECT,54)@139
    assign i_arrayidx217_conv2d1x10_dupName_5_trunc_sel_x_b = i_arrayidx217_conv2d1x10_dupName_0_add_x_q[20:0];

    // i_arrayidx217_conv2d1x10_append_upper_bits_x(BITJOIN,32)@139
    assign i_arrayidx217_conv2d1x10_append_upper_bits_x_q = {redist1_i_arrayidx217_conv2d1x10_upper_bits_x_merged_bit_select_b_1_q, i_arrayidx217_conv2d1x10_dupName_5_trunc_sel_x_b};

    // i_arrayidx217_conv2d1x13_vt_select_63(BITSELECT,11)@139
    assign i_arrayidx217_conv2d1x13_vt_select_63_b = i_arrayidx217_conv2d1x10_append_upper_bits_x_q[63:4];

    // i_arrayidx217_conv2d1x13_vt_const_3(CONSTANT,9)
    assign i_arrayidx217_conv2d1x13_vt_const_3_q = $unsigned(4'b0000);

    // i_arrayidx217_conv2d1x13_vt_join(BITJOIN,10)@139
    assign i_arrayidx217_conv2d1x13_vt_join_q = {i_arrayidx217_conv2d1x13_vt_select_63_b, i_arrayidx217_conv2d1x13_vt_const_3_q};

    // i_l_grpid_0_ext_offset_conv2d1x112_vt_const_63(CONSTANT,24)
    assign i_l_grpid_0_ext_offset_conv2d1x112_vt_const_63_q = $unsigned(15'b000000000000000);

    // leftShiftStage1Idx1Rng16_uid274_i_l_grpid_0_ext_offset_conv2d1x10_shift_x(BITSELECT,273)@137
    assign leftShiftStage1Idx1Rng16_uid274_i_l_grpid_0_ext_offset_conv2d1x10_shift_x_in = leftShiftStage0_uid272_i_l_grpid_0_ext_offset_conv2d1x10_shift_x_q[47:0];
    assign leftShiftStage1Idx1Rng16_uid274_i_l_grpid_0_ext_offset_conv2d1x10_shift_x_b = leftShiftStage1Idx1Rng16_uid274_i_l_grpid_0_ext_offset_conv2d1x10_shift_x_in[47:0];

    // leftShiftStage1Idx1Pad16_uid273_i_l_grpid_0_ext_offset_conv2d1x10_shift_x(CONSTANT,272)
    assign leftShiftStage1Idx1Pad16_uid273_i_l_grpid_0_ext_offset_conv2d1x10_shift_x_q = $unsigned(16'b0000000000000000);

    // leftShiftStage1Idx1_uid275_i_l_grpid_0_ext_offset_conv2d1x10_shift_x(BITJOIN,274)@137
    assign leftShiftStage1Idx1_uid275_i_l_grpid_0_ext_offset_conv2d1x10_shift_x_q = {leftShiftStage1Idx1Rng16_uid274_i_l_grpid_0_ext_offset_conv2d1x10_shift_x_b, leftShiftStage1Idx1Pad16_uid273_i_l_grpid_0_ext_offset_conv2d1x10_shift_x_q};

    // leftShiftStage0Idx1Rng1_uid269_i_l_grpid_0_ext_offset_conv2d1x10_shift_x(BITSELECT,268)@137
    assign leftShiftStage0Idx1Rng1_uid269_i_l_grpid_0_ext_offset_conv2d1x10_shift_x_in = i_l_grpid_0_ext_conv2d1x111_vt_join_q[62:0];
    assign leftShiftStage0Idx1Rng1_uid269_i_l_grpid_0_ext_offset_conv2d1x10_shift_x_b = leftShiftStage0Idx1Rng1_uid269_i_l_grpid_0_ext_offset_conv2d1x10_shift_x_in[62:0];

    // leftShiftStage0Idx1_uid270_i_l_grpid_0_ext_offset_conv2d1x10_shift_x(BITJOIN,269)@137
    assign leftShiftStage0Idx1_uid270_i_l_grpid_0_ext_offset_conv2d1x10_shift_x_q = {leftShiftStage0Idx1Rng1_uid269_i_l_grpid_0_ext_offset_conv2d1x10_shift_x_b, GND_q};

    // i_l_grpid_0_ext_conv2d1x111_sel_x(BITSELECT,80)@137
    assign i_l_grpid_0_ext_conv2d1x111_sel_x_b = {32'b00000000000000000000000000000000, in_c1_eni11_7_tpl[31:0]};

    // i_l_grpid_0_ext_conv2d1x111_vt_select_31(BITSELECT,22)@137
    assign i_l_grpid_0_ext_conv2d1x111_vt_select_31_b = i_l_grpid_0_ext_conv2d1x111_sel_x_b[31:0];

    // i_l_grpid_0_ext_conv2d1x111_vt_join(BITJOIN,21)@137
    assign i_l_grpid_0_ext_conv2d1x111_vt_join_q = {i_idxprom20_conv2d1x12_vt_const_63_q, i_l_grpid_0_ext_conv2d1x111_vt_select_31_b};

    // leftShiftStage0_uid272_i_l_grpid_0_ext_offset_conv2d1x10_shift_x(MUX,271)@137
    assign leftShiftStage0_uid272_i_l_grpid_0_ext_offset_conv2d1x10_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid272_i_l_grpid_0_ext_offset_conv2d1x10_shift_x_s or i_l_grpid_0_ext_conv2d1x111_vt_join_q or leftShiftStage0Idx1_uid270_i_l_grpid_0_ext_offset_conv2d1x10_shift_x_q)
    begin
        unique case (leftShiftStage0_uid272_i_l_grpid_0_ext_offset_conv2d1x10_shift_x_s)
            1'b0 : leftShiftStage0_uid272_i_l_grpid_0_ext_offset_conv2d1x10_shift_x_q = i_l_grpid_0_ext_conv2d1x111_vt_join_q;
            1'b1 : leftShiftStage0_uid272_i_l_grpid_0_ext_offset_conv2d1x10_shift_x_q = leftShiftStage0Idx1_uid270_i_l_grpid_0_ext_offset_conv2d1x10_shift_x_q;
            default : leftShiftStage0_uid272_i_l_grpid_0_ext_offset_conv2d1x10_shift_x_q = 64'b0;
        endcase
    end

    // leftShiftStage1_uid277_i_l_grpid_0_ext_offset_conv2d1x10_shift_x(MUX,276)@137
    assign leftShiftStage1_uid277_i_l_grpid_0_ext_offset_conv2d1x10_shift_x_s = VCC_q;
    always @(leftShiftStage1_uid277_i_l_grpid_0_ext_offset_conv2d1x10_shift_x_s or leftShiftStage0_uid272_i_l_grpid_0_ext_offset_conv2d1x10_shift_x_q or leftShiftStage1Idx1_uid275_i_l_grpid_0_ext_offset_conv2d1x10_shift_x_q)
    begin
        unique case (leftShiftStage1_uid277_i_l_grpid_0_ext_offset_conv2d1x10_shift_x_s)
            1'b0 : leftShiftStage1_uid277_i_l_grpid_0_ext_offset_conv2d1x10_shift_x_q = leftShiftStage0_uid272_i_l_grpid_0_ext_offset_conv2d1x10_shift_x_q;
            1'b1 : leftShiftStage1_uid277_i_l_grpid_0_ext_offset_conv2d1x10_shift_x_q = leftShiftStage1Idx1_uid275_i_l_grpid_0_ext_offset_conv2d1x10_shift_x_q;
            default : leftShiftStage1_uid277_i_l_grpid_0_ext_offset_conv2d1x10_shift_x_q = 64'b0;
        endcase
    end

    // i_l_grpid_0_ext_offset_conv2d1x112_vt_select_48(BITSELECT,26)@137
    assign i_l_grpid_0_ext_offset_conv2d1x112_vt_select_48_b = leftShiftStage1_uid277_i_l_grpid_0_ext_offset_conv2d1x10_shift_x_q[48:17];

    // redist22_i_l_grpid_0_ext_offset_conv2d1x112_vt_select_48_b_2(DELAY,303)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist22_i_l_grpid_0_ext_offset_conv2d1x112_vt_select_48_b_2_delay_0 <= '0;
            redist22_i_l_grpid_0_ext_offset_conv2d1x112_vt_select_48_b_2_q <= '0;
        end
        else
        begin
            redist22_i_l_grpid_0_ext_offset_conv2d1x112_vt_select_48_b_2_delay_0 <= $unsigned(i_l_grpid_0_ext_offset_conv2d1x112_vt_select_48_b);
            redist22_i_l_grpid_0_ext_offset_conv2d1x112_vt_select_48_b_2_q <= redist22_i_l_grpid_0_ext_offset_conv2d1x112_vt_select_48_b_2_delay_0;
        end
    end

    // i_l_grpid_0_ext_offset_conv2d1x112_vt_const_16(CONSTANT,23)
    assign i_l_grpid_0_ext_offset_conv2d1x112_vt_const_16_q = $unsigned(17'b00000000000000000);

    // i_l_grpid_0_ext_offset_conv2d1x112_vt_join(BITJOIN,25)@139
    assign i_l_grpid_0_ext_offset_conv2d1x112_vt_join_q = {i_l_grpid_0_ext_offset_conv2d1x112_vt_const_63_q, redist22_i_l_grpid_0_ext_offset_conv2d1x112_vt_select_48_b_2_q, i_l_grpid_0_ext_offset_conv2d1x112_vt_const_16_q};

    // i_llvm_fpga_mem_memdep_78_conv2d1x113_vunroll_x(BLACKBOX,88)@139
    // out out_memdep_78_conv2d1x1_avm_address@20000000
    // out out_memdep_78_conv2d1x1_avm_burstcount@20000000
    // out out_memdep_78_conv2d1x1_avm_byteenable@20000000
    // out out_memdep_78_conv2d1x1_avm_enable@20000000
    // out out_memdep_78_conv2d1x1_avm_read@20000000
    // out out_memdep_78_conv2d1x1_avm_write@20000000
    // out out_memdep_78_conv2d1x1_avm_writedata@20000000
    // out out_o_stall@140
    // out out_o_valid@140
    // out out_o_writeack@140
    conv2d1x1_i_llvm_fpga_mem_memdep_78_0 thei_llvm_fpga_mem_memdep_78_conv2d1x113_vunroll_x (
        .in_AddrOffset(i_l_grpid_0_ext_offset_conv2d1x112_vt_join_q),
        .in_flush(in_flush),
        .in_i_address(i_arrayidx217_conv2d1x13_vt_join_q),
        .in_i_predicate(redist6_sync_together39_aunroll_vunroll_x_in_c1_eni11_8_tpl_2_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg1_q),
        .in_memdep_78_conv2d1x1_avm_readdata(in_memdep_78_conv2d1x1_avm_readdata),
        .in_memdep_78_conv2d1x1_avm_readdatavalid(in_memdep_78_conv2d1x1_avm_readdatavalid),
        .in_memdep_78_conv2d1x1_avm_waitrequest(in_memdep_78_conv2d1x1_avm_waitrequest),
        .in_memdep_78_conv2d1x1_avm_writeack(in_memdep_78_conv2d1x1_avm_writeack),
        .in_i_writedata_0_tpl(redist2_sync_together39_aunroll_vunroll_x_in_c1_eni11_3_tpl_2_q),
        .in_i_writedata_1_tpl(redist3_sync_together39_aunroll_vunroll_x_in_c1_eni11_4_tpl_2_q),
        .in_i_writedata_2_tpl(redist4_sync_together39_aunroll_vunroll_x_in_c1_eni11_5_tpl_2_q),
        .in_i_writedata_3_tpl(redist5_sync_together39_aunroll_vunroll_x_in_c1_eni11_6_tpl_2_q),
        .out_memdep_78_conv2d1x1_avm_address(i_llvm_fpga_mem_memdep_78_conv2d1x113_vunroll_x_out_memdep_78_conv2d1x1_avm_address),
        .out_memdep_78_conv2d1x1_avm_burstcount(i_llvm_fpga_mem_memdep_78_conv2d1x113_vunroll_x_out_memdep_78_conv2d1x1_avm_burstcount),
        .out_memdep_78_conv2d1x1_avm_byteenable(i_llvm_fpga_mem_memdep_78_conv2d1x113_vunroll_x_out_memdep_78_conv2d1x1_avm_byteenable),
        .out_memdep_78_conv2d1x1_avm_enable(i_llvm_fpga_mem_memdep_78_conv2d1x113_vunroll_x_out_memdep_78_conv2d1x1_avm_enable),
        .out_memdep_78_conv2d1x1_avm_read(i_llvm_fpga_mem_memdep_78_conv2d1x113_vunroll_x_out_memdep_78_conv2d1x1_avm_read),
        .out_memdep_78_conv2d1x1_avm_write(i_llvm_fpga_mem_memdep_78_conv2d1x113_vunroll_x_out_memdep_78_conv2d1x1_avm_write),
        .out_memdep_78_conv2d1x1_avm_writedata(i_llvm_fpga_mem_memdep_78_conv2d1x113_vunroll_x_out_memdep_78_conv2d1x1_avm_writedata),
        .out_o_stall(),
        .out_o_valid(),
        .out_o_writeack(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,7)
    assign out_memdep_78_conv2d1x1_avm_address = i_llvm_fpga_mem_memdep_78_conv2d1x113_vunroll_x_out_memdep_78_conv2d1x1_avm_address;
    assign out_memdep_78_conv2d1x1_avm_enable = i_llvm_fpga_mem_memdep_78_conv2d1x113_vunroll_x_out_memdep_78_conv2d1x1_avm_enable;
    assign out_memdep_78_conv2d1x1_avm_read = i_llvm_fpga_mem_memdep_78_conv2d1x113_vunroll_x_out_memdep_78_conv2d1x1_avm_read;
    assign out_memdep_78_conv2d1x1_avm_write = i_llvm_fpga_mem_memdep_78_conv2d1x113_vunroll_x_out_memdep_78_conv2d1x1_avm_write;
    assign out_memdep_78_conv2d1x1_avm_writedata = i_llvm_fpga_mem_memdep_78_conv2d1x113_vunroll_x_out_memdep_78_conv2d1x1_avm_writedata;
    assign out_memdep_78_conv2d1x1_avm_byteenable = i_llvm_fpga_mem_memdep_78_conv2d1x113_vunroll_x_out_memdep_78_conv2d1x1_avm_byteenable;
    assign out_memdep_78_conv2d1x1_avm_burstcount = i_llvm_fpga_mem_memdep_78_conv2d1x113_vunroll_x_out_memdep_78_conv2d1x1_avm_burstcount;

    // redist14_sync_together39_aunroll_vunroll_x_in_i_valid_2(DELAY,295)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_sync_together39_aunroll_vunroll_x_in_i_valid_2_q <= '0;
        end
        else
        begin
            redist14_sync_together39_aunroll_vunroll_x_in_i_valid_2_q <= $unsigned(redist13_sync_together39_aunroll_vunroll_x_in_i_valid_1_q);
        end
    end

    // valid_fanout_reg2(REG,93)@139 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg2_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg2_q <= $unsigned(redist14_sync_together39_aunroll_vunroll_x_in_i_valid_2_q);
        end
    end

    // redist7_sync_together39_aunroll_vunroll_x_in_c1_eni11_8_tpl_3(DELAY,288)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_sync_together39_aunroll_vunroll_x_in_c1_eni11_8_tpl_3_q <= '0;
        end
        else
        begin
            redist7_sync_together39_aunroll_vunroll_x_in_c1_eni11_8_tpl_3_q <= $unsigned(redist6_sync_together39_aunroll_vunroll_x_in_c1_eni11_8_tpl_2_q);
        end
    end

    // i_arrayidx5611_conv2d1x10_dupName_3_trunc_sel_x(BITSELECT,77)@137
    assign i_arrayidx5611_conv2d1x10_dupName_3_trunc_sel_x_b = in_c1_eni11_9_tpl[20:0];

    // i_arrayidx5611_conv2d1x10_narrow_x(BITSELECT,60)@137
    assign i_arrayidx5611_conv2d1x10_narrow_x_b = i_arrayidx5611_conv2d1x10_dupName_3_trunc_sel_x_b[16:0];

    // redist19_i_arrayidx5611_conv2d1x10_narrow_x_b_2(DELAY,300)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist19_i_arrayidx5611_conv2d1x10_narrow_x_b_2_delay_0 <= '0;
            redist19_i_arrayidx5611_conv2d1x10_narrow_x_b_2_q <= '0;
        end
        else
        begin
            redist19_i_arrayidx5611_conv2d1x10_narrow_x_b_2_delay_0 <= $unsigned(i_arrayidx5611_conv2d1x10_narrow_x_b);
            redist19_i_arrayidx5611_conv2d1x10_narrow_x_b_2_q <= redist19_i_arrayidx5611_conv2d1x10_narrow_x_b_2_delay_0;
        end
    end

    // i_arrayidx5611_conv2d1x10_shift_join_x(BITJOIN,61)@139
    assign i_arrayidx5611_conv2d1x10_shift_join_x_q = {redist19_i_arrayidx5611_conv2d1x10_narrow_x_b_2_q, i_arrayidx217_conv2d1x13_vt_const_3_q};

    // i_arrayidx5611_conv2d1x10_dupName_0_add_x(ADD,65)@139
    assign i_arrayidx5611_conv2d1x10_dupName_0_add_x_a = {1'b0, redist20_i_arrayidx217_conv2d1x10_dupName_2_trunc_sel_x_b_1_q};
    assign i_arrayidx5611_conv2d1x10_dupName_0_add_x_b = {1'b0, i_arrayidx5611_conv2d1x10_shift_join_x_q};
    assign i_arrayidx5611_conv2d1x10_dupName_0_add_x_o = $unsigned(i_arrayidx5611_conv2d1x10_dupName_0_add_x_a) + $unsigned(i_arrayidx5611_conv2d1x10_dupName_0_add_x_b);
    assign i_arrayidx5611_conv2d1x10_dupName_0_add_x_q = i_arrayidx5611_conv2d1x10_dupName_0_add_x_o[21:0];

    // i_arrayidx5611_conv2d1x10_dupName_5_trunc_sel_x(BITSELECT,78)@139
    assign i_arrayidx5611_conv2d1x10_dupName_5_trunc_sel_x_b = i_arrayidx5611_conv2d1x10_dupName_0_add_x_q[20:0];

    // i_arrayidx5611_conv2d1x10_append_upper_bits_x(BITJOIN,56)@139
    assign i_arrayidx5611_conv2d1x10_append_upper_bits_x_q = {redist1_i_arrayidx217_conv2d1x10_upper_bits_x_merged_bit_select_b_1_q, i_arrayidx5611_conv2d1x10_dupName_5_trunc_sel_x_b};

    // i_arrayidx5611_conv2d1x114_vt_select_63(BITSELECT,14)@139
    assign i_arrayidx5611_conv2d1x114_vt_select_63_b = i_arrayidx5611_conv2d1x10_append_upper_bits_x_q[63:4];

    // redist24_i_arrayidx5611_conv2d1x114_vt_select_63_b_1(DELAY,305)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist24_i_arrayidx5611_conv2d1x114_vt_select_63_b_1_q <= '0;
        end
        else
        begin
            redist24_i_arrayidx5611_conv2d1x114_vt_select_63_b_1_q <= $unsigned(i_arrayidx5611_conv2d1x114_vt_select_63_b);
        end
    end

    // i_arrayidx5611_conv2d1x114_vt_join(BITJOIN,13)@140
    assign i_arrayidx5611_conv2d1x114_vt_join_q = {redist24_i_arrayidx5611_conv2d1x114_vt_select_63_b_1_q, i_arrayidx217_conv2d1x13_vt_const_3_q};

    // redist23_i_l_grpid_0_ext_offset_conv2d1x112_vt_join_q_1(DELAY,304)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist23_i_l_grpid_0_ext_offset_conv2d1x112_vt_join_q_1_q <= '0;
        end
        else
        begin
            redist23_i_l_grpid_0_ext_offset_conv2d1x112_vt_join_q_1_q <= $unsigned(i_l_grpid_0_ext_offset_conv2d1x112_vt_join_q);
        end
    end

    // i_llvm_fpga_mem_lm28179_conv2d1x115_vunroll_x(BLACKBOX,87)@140
    // in in_i_stall@20000000
    // out out_lm28179_conv2d1x1_avm_address@20000000
    // out out_lm28179_conv2d1x1_avm_burstcount@20000000
    // out out_lm28179_conv2d1x1_avm_byteenable@20000000
    // out out_lm28179_conv2d1x1_avm_enable@20000000
    // out out_lm28179_conv2d1x1_avm_read@20000000
    // out out_lm28179_conv2d1x1_avm_write@20000000
    // out out_lm28179_conv2d1x1_avm_writedata@20000000
    // out out_o_stall@143
    // out out_o_valid@144
    // out out_o_readdata_0_tpl@144
    // out out_o_readdata_1_tpl@144
    // out out_o_readdata_2_tpl@144
    // out out_o_readdata_3_tpl@144
    conv2d1x1_i_llvm_fpga_mem_lm28179_0 thei_llvm_fpga_mem_lm28179_conv2d1x115_vunroll_x (
        .in_AddrOffset(redist23_i_l_grpid_0_ext_offset_conv2d1x112_vt_join_q_1_q),
        .in_flush(in_flush),
        .in_i_address(i_arrayidx5611_conv2d1x114_vt_join_q),
        .in_i_predicate(redist7_sync_together39_aunroll_vunroll_x_in_c1_eni11_8_tpl_3_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg2_q),
        .in_lm28179_conv2d1x1_avm_readdata(in_lm28179_conv2d1x1_avm_readdata),
        .in_lm28179_conv2d1x1_avm_readdatavalid(in_lm28179_conv2d1x1_avm_readdatavalid),
        .in_lm28179_conv2d1x1_avm_waitrequest(in_lm28179_conv2d1x1_avm_waitrequest),
        .in_lm28179_conv2d1x1_avm_writeack(in_lm28179_conv2d1x1_avm_writeack),
        .out_lm28179_conv2d1x1_avm_address(i_llvm_fpga_mem_lm28179_conv2d1x115_vunroll_x_out_lm28179_conv2d1x1_avm_address),
        .out_lm28179_conv2d1x1_avm_burstcount(i_llvm_fpga_mem_lm28179_conv2d1x115_vunroll_x_out_lm28179_conv2d1x1_avm_burstcount),
        .out_lm28179_conv2d1x1_avm_byteenable(i_llvm_fpga_mem_lm28179_conv2d1x115_vunroll_x_out_lm28179_conv2d1x1_avm_byteenable),
        .out_lm28179_conv2d1x1_avm_enable(i_llvm_fpga_mem_lm28179_conv2d1x115_vunroll_x_out_lm28179_conv2d1x1_avm_enable),
        .out_lm28179_conv2d1x1_avm_read(i_llvm_fpga_mem_lm28179_conv2d1x115_vunroll_x_out_lm28179_conv2d1x1_avm_read),
        .out_lm28179_conv2d1x1_avm_write(i_llvm_fpga_mem_lm28179_conv2d1x115_vunroll_x_out_lm28179_conv2d1x1_avm_write),
        .out_lm28179_conv2d1x1_avm_writedata(i_llvm_fpga_mem_lm28179_conv2d1x115_vunroll_x_out_lm28179_conv2d1x1_avm_writedata),
        .out_o_stall(),
        .out_o_valid(),
        .out_o_readdata_0_tpl(i_llvm_fpga_mem_lm28179_conv2d1x115_vunroll_x_out_o_readdata_0_tpl),
        .out_o_readdata_1_tpl(i_llvm_fpga_mem_lm28179_conv2d1x115_vunroll_x_out_o_readdata_1_tpl),
        .out_o_readdata_2_tpl(i_llvm_fpga_mem_lm28179_conv2d1x115_vunroll_x_out_o_readdata_2_tpl),
        .out_o_readdata_3_tpl(i_llvm_fpga_mem_lm28179_conv2d1x115_vunroll_x_out_o_readdata_3_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_ext_sig_sync_out_x(GPOUT,30)
    assign out_lm28179_conv2d1x1_avm_address = i_llvm_fpga_mem_lm28179_conv2d1x115_vunroll_x_out_lm28179_conv2d1x1_avm_address;
    assign out_lm28179_conv2d1x1_avm_enable = i_llvm_fpga_mem_lm28179_conv2d1x115_vunroll_x_out_lm28179_conv2d1x1_avm_enable;
    assign out_lm28179_conv2d1x1_avm_read = i_llvm_fpga_mem_lm28179_conv2d1x115_vunroll_x_out_lm28179_conv2d1x1_avm_read;
    assign out_lm28179_conv2d1x1_avm_write = i_llvm_fpga_mem_lm28179_conv2d1x115_vunroll_x_out_lm28179_conv2d1x1_avm_write;
    assign out_lm28179_conv2d1x1_avm_writedata = i_llvm_fpga_mem_lm28179_conv2d1x115_vunroll_x_out_lm28179_conv2d1x1_avm_writedata;
    assign out_lm28179_conv2d1x1_avm_byteenable = i_llvm_fpga_mem_lm28179_conv2d1x115_vunroll_x_out_lm28179_conv2d1x1_avm_byteenable;
    assign out_lm28179_conv2d1x1_avm_burstcount = i_llvm_fpga_mem_lm28179_conv2d1x115_vunroll_x_out_lm28179_conv2d1x1_avm_burstcount;

    // redist15_sync_together39_aunroll_vunroll_x_in_i_valid_20(DELAY,296)
    dspba_delay_ver #( .width(1), .depth(18), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist15_sync_together39_aunroll_vunroll_x_in_i_valid_20 ( .xin(redist14_sync_together39_aunroll_vunroll_x_in_i_valid_2_q), .xout(redist15_sync_together39_aunroll_vunroll_x_in_i_valid_20_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // valid_fanout_reg0(REG,91)@157 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist15_sync_together39_aunroll_vunroll_x_in_i_valid_20_q);
        end
    end

    // redist8_sync_together39_aunroll_vunroll_x_in_c1_eni11_0_10_tpl_7_notEnable(LOGICAL,313)
    assign redist8_sync_together39_aunroll_vunroll_x_in_c1_eni11_0_10_tpl_7_notEnable_q = $unsigned(~ (VCC_q));

    // redist8_sync_together39_aunroll_vunroll_x_in_c1_eni11_0_10_tpl_7_nor(LOGICAL,314)
    assign redist8_sync_together39_aunroll_vunroll_x_in_c1_eni11_0_10_tpl_7_nor_q = ~ (redist8_sync_together39_aunroll_vunroll_x_in_c1_eni11_0_10_tpl_7_notEnable_q | redist8_sync_together39_aunroll_vunroll_x_in_c1_eni11_0_10_tpl_7_sticky_ena_q);

    // redist8_sync_together39_aunroll_vunroll_x_in_c1_eni11_0_10_tpl_7_mem_last(CONSTANT,310)
    assign redist8_sync_together39_aunroll_vunroll_x_in_c1_eni11_0_10_tpl_7_mem_last_q = $unsigned(3'b011);

    // redist8_sync_together39_aunroll_vunroll_x_in_c1_eni11_0_10_tpl_7_cmp(LOGICAL,311)
    assign redist8_sync_together39_aunroll_vunroll_x_in_c1_eni11_0_10_tpl_7_cmp_q = $unsigned(redist8_sync_together39_aunroll_vunroll_x_in_c1_eni11_0_10_tpl_7_mem_last_q == redist8_sync_together39_aunroll_vunroll_x_in_c1_eni11_0_10_tpl_7_rdcnt_q ? 1'b1 : 1'b0);

    // redist8_sync_together39_aunroll_vunroll_x_in_c1_eni11_0_10_tpl_7_cmpReg(REG,312)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_sync_together39_aunroll_vunroll_x_in_c1_eni11_0_10_tpl_7_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist8_sync_together39_aunroll_vunroll_x_in_c1_eni11_0_10_tpl_7_cmpReg_q <= $unsigned(redist8_sync_together39_aunroll_vunroll_x_in_c1_eni11_0_10_tpl_7_cmp_q);
        end
    end

    // redist8_sync_together39_aunroll_vunroll_x_in_c1_eni11_0_10_tpl_7_sticky_ena(REG,315)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_sync_together39_aunroll_vunroll_x_in_c1_eni11_0_10_tpl_7_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist8_sync_together39_aunroll_vunroll_x_in_c1_eni11_0_10_tpl_7_nor_q == 1'b1)
        begin
            redist8_sync_together39_aunroll_vunroll_x_in_c1_eni11_0_10_tpl_7_sticky_ena_q <= $unsigned(redist8_sync_together39_aunroll_vunroll_x_in_c1_eni11_0_10_tpl_7_cmpReg_q);
        end
    end

    // redist8_sync_together39_aunroll_vunroll_x_in_c1_eni11_0_10_tpl_7_enaAnd(LOGICAL,316)
    assign redist8_sync_together39_aunroll_vunroll_x_in_c1_eni11_0_10_tpl_7_enaAnd_q = redist8_sync_together39_aunroll_vunroll_x_in_c1_eni11_0_10_tpl_7_sticky_ena_q & VCC_q;

    // redist8_sync_together39_aunroll_vunroll_x_in_c1_eni11_0_10_tpl_7_rdcnt(COUNTER,308)
    // low=0, high=4, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_sync_together39_aunroll_vunroll_x_in_c1_eni11_0_10_tpl_7_rdcnt_i <= 3'd0;
            redist8_sync_together39_aunroll_vunroll_x_in_c1_eni11_0_10_tpl_7_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist8_sync_together39_aunroll_vunroll_x_in_c1_eni11_0_10_tpl_7_rdcnt_i == 3'd3)
            begin
                redist8_sync_together39_aunroll_vunroll_x_in_c1_eni11_0_10_tpl_7_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist8_sync_together39_aunroll_vunroll_x_in_c1_eni11_0_10_tpl_7_rdcnt_eq <= 1'b0;
            end
            if (redist8_sync_together39_aunroll_vunroll_x_in_c1_eni11_0_10_tpl_7_rdcnt_eq == 1'b1)
            begin
                redist8_sync_together39_aunroll_vunroll_x_in_c1_eni11_0_10_tpl_7_rdcnt_i <= $unsigned(redist8_sync_together39_aunroll_vunroll_x_in_c1_eni11_0_10_tpl_7_rdcnt_i) + $unsigned(3'd4);
            end
            else
            begin
                redist8_sync_together39_aunroll_vunroll_x_in_c1_eni11_0_10_tpl_7_rdcnt_i <= $unsigned(redist8_sync_together39_aunroll_vunroll_x_in_c1_eni11_0_10_tpl_7_rdcnt_i) + $unsigned(3'd1);
            end
        end
    end
    assign redist8_sync_together39_aunroll_vunroll_x_in_c1_eni11_0_10_tpl_7_rdcnt_q = redist8_sync_together39_aunroll_vunroll_x_in_c1_eni11_0_10_tpl_7_rdcnt_i[2:0];

    // redist8_sync_together39_aunroll_vunroll_x_in_c1_eni11_0_10_tpl_7_wraddr(REG,309)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_sync_together39_aunroll_vunroll_x_in_c1_eni11_0_10_tpl_7_wraddr_q <= $unsigned(3'b100);
        end
        else
        begin
            redist8_sync_together39_aunroll_vunroll_x_in_c1_eni11_0_10_tpl_7_wraddr_q <= $unsigned(redist8_sync_together39_aunroll_vunroll_x_in_c1_eni11_0_10_tpl_7_rdcnt_q);
        end
    end

    // redist8_sync_together39_aunroll_vunroll_x_in_c1_eni11_0_10_tpl_7_mem(DUALMEM,307)
    assign redist8_sync_together39_aunroll_vunroll_x_in_c1_eni11_0_10_tpl_7_mem_ia = $unsigned(in_c1_eni11_0_10_tpl);
    assign redist8_sync_together39_aunroll_vunroll_x_in_c1_eni11_0_10_tpl_7_mem_aa = redist8_sync_together39_aunroll_vunroll_x_in_c1_eni11_0_10_tpl_7_wraddr_q;
    assign redist8_sync_together39_aunroll_vunroll_x_in_c1_eni11_0_10_tpl_7_mem_ab = redist8_sync_together39_aunroll_vunroll_x_in_c1_eni11_0_10_tpl_7_rdcnt_q;
    assign redist8_sync_together39_aunroll_vunroll_x_in_c1_eni11_0_10_tpl_7_mem_reset0 = ~ (resetn);
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
    ) redist8_sync_together39_aunroll_vunroll_x_in_c1_eni11_0_10_tpl_7_mem_dmem (
        .clocken1(redist8_sync_together39_aunroll_vunroll_x_in_c1_eni11_0_10_tpl_7_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist8_sync_together39_aunroll_vunroll_x_in_c1_eni11_0_10_tpl_7_mem_reset0),
        .clock1(clock),
        .address_a(redist8_sync_together39_aunroll_vunroll_x_in_c1_eni11_0_10_tpl_7_mem_aa),
        .data_a(redist8_sync_together39_aunroll_vunroll_x_in_c1_eni11_0_10_tpl_7_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist8_sync_together39_aunroll_vunroll_x_in_c1_eni11_0_10_tpl_7_mem_ab),
        .q_b(redist8_sync_together39_aunroll_vunroll_x_in_c1_eni11_0_10_tpl_7_mem_iq),
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
    assign redist8_sync_together39_aunroll_vunroll_x_in_c1_eni11_0_10_tpl_7_mem_q = redist8_sync_together39_aunroll_vunroll_x_in_c1_eni11_0_10_tpl_7_mem_iq[31:0];

    // redist8_sync_together39_aunroll_vunroll_x_in_c1_eni11_0_10_tpl_7_outputreg0(DELAY,306)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_sync_together39_aunroll_vunroll_x_in_c1_eni11_0_10_tpl_7_outputreg0_q <= '0;
        end
        else
        begin
            redist8_sync_together39_aunroll_vunroll_x_in_c1_eni11_0_10_tpl_7_outputreg0_q <= $unsigned(redist8_sync_together39_aunroll_vunroll_x_in_c1_eni11_0_10_tpl_7_mem_q);
        end
    end

    // redist9_sync_together39_aunroll_vunroll_x_in_c1_eni11_1_10_tpl_8_notEnable(LOGICAL,323)
    assign redist9_sync_together39_aunroll_vunroll_x_in_c1_eni11_1_10_tpl_8_notEnable_q = $unsigned(~ (VCC_q));

    // redist9_sync_together39_aunroll_vunroll_x_in_c1_eni11_1_10_tpl_8_nor(LOGICAL,324)
    assign redist9_sync_together39_aunroll_vunroll_x_in_c1_eni11_1_10_tpl_8_nor_q = ~ (redist9_sync_together39_aunroll_vunroll_x_in_c1_eni11_1_10_tpl_8_notEnable_q | redist9_sync_together39_aunroll_vunroll_x_in_c1_eni11_1_10_tpl_8_sticky_ena_q);

    // redist9_sync_together39_aunroll_vunroll_x_in_c1_eni11_1_10_tpl_8_mem_last(CONSTANT,320)
    assign redist9_sync_together39_aunroll_vunroll_x_in_c1_eni11_1_10_tpl_8_mem_last_q = $unsigned(4'b0101);

    // redist9_sync_together39_aunroll_vunroll_x_in_c1_eni11_1_10_tpl_8_cmp(LOGICAL,321)
    assign redist9_sync_together39_aunroll_vunroll_x_in_c1_eni11_1_10_tpl_8_cmp_b = {1'b0, redist9_sync_together39_aunroll_vunroll_x_in_c1_eni11_1_10_tpl_8_rdcnt_q};
    assign redist9_sync_together39_aunroll_vunroll_x_in_c1_eni11_1_10_tpl_8_cmp_q = $unsigned(redist9_sync_together39_aunroll_vunroll_x_in_c1_eni11_1_10_tpl_8_mem_last_q == redist9_sync_together39_aunroll_vunroll_x_in_c1_eni11_1_10_tpl_8_cmp_b ? 1'b1 : 1'b0);

    // redist9_sync_together39_aunroll_vunroll_x_in_c1_eni11_1_10_tpl_8_cmpReg(REG,322)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_sync_together39_aunroll_vunroll_x_in_c1_eni11_1_10_tpl_8_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist9_sync_together39_aunroll_vunroll_x_in_c1_eni11_1_10_tpl_8_cmpReg_q <= $unsigned(redist9_sync_together39_aunroll_vunroll_x_in_c1_eni11_1_10_tpl_8_cmp_q);
        end
    end

    // redist9_sync_together39_aunroll_vunroll_x_in_c1_eni11_1_10_tpl_8_sticky_ena(REG,325)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_sync_together39_aunroll_vunroll_x_in_c1_eni11_1_10_tpl_8_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist9_sync_together39_aunroll_vunroll_x_in_c1_eni11_1_10_tpl_8_nor_q == 1'b1)
        begin
            redist9_sync_together39_aunroll_vunroll_x_in_c1_eni11_1_10_tpl_8_sticky_ena_q <= $unsigned(redist9_sync_together39_aunroll_vunroll_x_in_c1_eni11_1_10_tpl_8_cmpReg_q);
        end
    end

    // redist9_sync_together39_aunroll_vunroll_x_in_c1_eni11_1_10_tpl_8_enaAnd(LOGICAL,326)
    assign redist9_sync_together39_aunroll_vunroll_x_in_c1_eni11_1_10_tpl_8_enaAnd_q = redist9_sync_together39_aunroll_vunroll_x_in_c1_eni11_1_10_tpl_8_sticky_ena_q & VCC_q;

    // redist9_sync_together39_aunroll_vunroll_x_in_c1_eni11_1_10_tpl_8_rdcnt(COUNTER,318)
    // low=0, high=6, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_sync_together39_aunroll_vunroll_x_in_c1_eni11_1_10_tpl_8_rdcnt_i <= 3'd0;
            redist9_sync_together39_aunroll_vunroll_x_in_c1_eni11_1_10_tpl_8_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist9_sync_together39_aunroll_vunroll_x_in_c1_eni11_1_10_tpl_8_rdcnt_i == 3'd5)
            begin
                redist9_sync_together39_aunroll_vunroll_x_in_c1_eni11_1_10_tpl_8_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist9_sync_together39_aunroll_vunroll_x_in_c1_eni11_1_10_tpl_8_rdcnt_eq <= 1'b0;
            end
            if (redist9_sync_together39_aunroll_vunroll_x_in_c1_eni11_1_10_tpl_8_rdcnt_eq == 1'b1)
            begin
                redist9_sync_together39_aunroll_vunroll_x_in_c1_eni11_1_10_tpl_8_rdcnt_i <= $unsigned(redist9_sync_together39_aunroll_vunroll_x_in_c1_eni11_1_10_tpl_8_rdcnt_i) + $unsigned(3'd2);
            end
            else
            begin
                redist9_sync_together39_aunroll_vunroll_x_in_c1_eni11_1_10_tpl_8_rdcnt_i <= $unsigned(redist9_sync_together39_aunroll_vunroll_x_in_c1_eni11_1_10_tpl_8_rdcnt_i) + $unsigned(3'd1);
            end
        end
    end
    assign redist9_sync_together39_aunroll_vunroll_x_in_c1_eni11_1_10_tpl_8_rdcnt_q = redist9_sync_together39_aunroll_vunroll_x_in_c1_eni11_1_10_tpl_8_rdcnt_i[2:0];

    // redist9_sync_together39_aunroll_vunroll_x_in_c1_eni11_1_10_tpl_8_wraddr(REG,319)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_sync_together39_aunroll_vunroll_x_in_c1_eni11_1_10_tpl_8_wraddr_q <= $unsigned(3'b110);
        end
        else
        begin
            redist9_sync_together39_aunroll_vunroll_x_in_c1_eni11_1_10_tpl_8_wraddr_q <= $unsigned(redist9_sync_together39_aunroll_vunroll_x_in_c1_eni11_1_10_tpl_8_rdcnt_q);
        end
    end

    // redist9_sync_together39_aunroll_vunroll_x_in_c1_eni11_1_10_tpl_8_mem(DUALMEM,317)
    assign redist9_sync_together39_aunroll_vunroll_x_in_c1_eni11_1_10_tpl_8_mem_ia = $unsigned(in_c1_eni11_1_10_tpl);
    assign redist9_sync_together39_aunroll_vunroll_x_in_c1_eni11_1_10_tpl_8_mem_aa = redist9_sync_together39_aunroll_vunroll_x_in_c1_eni11_1_10_tpl_8_wraddr_q;
    assign redist9_sync_together39_aunroll_vunroll_x_in_c1_eni11_1_10_tpl_8_mem_ab = redist9_sync_together39_aunroll_vunroll_x_in_c1_eni11_1_10_tpl_8_rdcnt_q;
    assign redist9_sync_together39_aunroll_vunroll_x_in_c1_eni11_1_10_tpl_8_mem_reset0 = ~ (resetn);
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
    ) redist9_sync_together39_aunroll_vunroll_x_in_c1_eni11_1_10_tpl_8_mem_dmem (
        .clocken1(redist9_sync_together39_aunroll_vunroll_x_in_c1_eni11_1_10_tpl_8_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist9_sync_together39_aunroll_vunroll_x_in_c1_eni11_1_10_tpl_8_mem_reset0),
        .clock1(clock),
        .address_a(redist9_sync_together39_aunroll_vunroll_x_in_c1_eni11_1_10_tpl_8_mem_aa),
        .data_a(redist9_sync_together39_aunroll_vunroll_x_in_c1_eni11_1_10_tpl_8_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist9_sync_together39_aunroll_vunroll_x_in_c1_eni11_1_10_tpl_8_mem_ab),
        .q_b(redist9_sync_together39_aunroll_vunroll_x_in_c1_eni11_1_10_tpl_8_mem_iq),
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
    assign redist9_sync_together39_aunroll_vunroll_x_in_c1_eni11_1_10_tpl_8_mem_q = redist9_sync_together39_aunroll_vunroll_x_in_c1_eni11_1_10_tpl_8_mem_iq[31:0];

    // redist16_i_llvm_fpga_mem_lm28179_conv2d1x115_vunroll_x_out_o_readdata_1_tpl_1(DELAY,297)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist16_i_llvm_fpga_mem_lm28179_conv2d1x115_vunroll_x_out_o_readdata_1_tpl_1_q <= '0;
        end
        else
        begin
            redist16_i_llvm_fpga_mem_lm28179_conv2d1x115_vunroll_x_out_o_readdata_1_tpl_1_q <= $unsigned(i_llvm_fpga_mem_lm28179_conv2d1x115_vunroll_x_out_o_readdata_1_tpl);
        end
    end

    // i_llvm_fpga_dot_product_f32_f32_v2f32_v2f32_dot_prod_conv2d1x10_dspb_native_dot_product_vunroll_x(BLACKBOX,86)@144
    // in in_0@145
    // in in_1@145
    // out out_primWireOut@149
    conv2d1x1_flt_i_llvm_fpga_dot_product_f30001q0cp0jv24cp06c00qfzo thei_llvm_fpga_dot_product_f32_f32_v2f32_v2f32_dot_prod_conv2d1x10_dspb_native_dot_product_vunroll_x (
        .in_0(redist16_i_llvm_fpga_mem_lm28179_conv2d1x115_vunroll_x_out_o_readdata_1_tpl_1_q),
        .in_1(redist9_sync_together39_aunroll_vunroll_x_in_c1_eni11_1_10_tpl_8_mem_q),
        .in_2(i_llvm_fpga_mem_lm28179_conv2d1x115_vunroll_x_out_o_readdata_0_tpl),
        .in_3(redist8_sync_together39_aunroll_vunroll_x_in_c1_eni11_0_10_tpl_7_outputreg0_q),
        .out_primWireOut(i_llvm_fpga_dot_product_f32_f32_v2f32_v2f32_dot_prod_conv2d1x10_dspb_native_dot_product_vunroll_x_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // redist10_sync_together39_aunroll_vunroll_x_in_c1_eni11_2_10_tpl_11_notEnable(LOGICAL,334)
    assign redist10_sync_together39_aunroll_vunroll_x_in_c1_eni11_2_10_tpl_11_notEnable_q = $unsigned(~ (VCC_q));

    // redist10_sync_together39_aunroll_vunroll_x_in_c1_eni11_2_10_tpl_11_nor(LOGICAL,335)
    assign redist10_sync_together39_aunroll_vunroll_x_in_c1_eni11_2_10_tpl_11_nor_q = ~ (redist10_sync_together39_aunroll_vunroll_x_in_c1_eni11_2_10_tpl_11_notEnable_q | redist10_sync_together39_aunroll_vunroll_x_in_c1_eni11_2_10_tpl_11_sticky_ena_q);

    // redist10_sync_together39_aunroll_vunroll_x_in_c1_eni11_2_10_tpl_11_mem_last(CONSTANT,331)
    assign redist10_sync_together39_aunroll_vunroll_x_in_c1_eni11_2_10_tpl_11_mem_last_q = $unsigned(4'b0111);

    // redist10_sync_together39_aunroll_vunroll_x_in_c1_eni11_2_10_tpl_11_cmp(LOGICAL,332)
    assign redist10_sync_together39_aunroll_vunroll_x_in_c1_eni11_2_10_tpl_11_cmp_q = $unsigned(redist10_sync_together39_aunroll_vunroll_x_in_c1_eni11_2_10_tpl_11_mem_last_q == redist10_sync_together39_aunroll_vunroll_x_in_c1_eni11_2_10_tpl_11_rdcnt_q ? 1'b1 : 1'b0);

    // redist10_sync_together39_aunroll_vunroll_x_in_c1_eni11_2_10_tpl_11_cmpReg(REG,333)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_sync_together39_aunroll_vunroll_x_in_c1_eni11_2_10_tpl_11_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist10_sync_together39_aunroll_vunroll_x_in_c1_eni11_2_10_tpl_11_cmpReg_q <= $unsigned(redist10_sync_together39_aunroll_vunroll_x_in_c1_eni11_2_10_tpl_11_cmp_q);
        end
    end

    // redist10_sync_together39_aunroll_vunroll_x_in_c1_eni11_2_10_tpl_11_sticky_ena(REG,336)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_sync_together39_aunroll_vunroll_x_in_c1_eni11_2_10_tpl_11_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist10_sync_together39_aunroll_vunroll_x_in_c1_eni11_2_10_tpl_11_nor_q == 1'b1)
        begin
            redist10_sync_together39_aunroll_vunroll_x_in_c1_eni11_2_10_tpl_11_sticky_ena_q <= $unsigned(redist10_sync_together39_aunroll_vunroll_x_in_c1_eni11_2_10_tpl_11_cmpReg_q);
        end
    end

    // redist10_sync_together39_aunroll_vunroll_x_in_c1_eni11_2_10_tpl_11_enaAnd(LOGICAL,337)
    assign redist10_sync_together39_aunroll_vunroll_x_in_c1_eni11_2_10_tpl_11_enaAnd_q = redist10_sync_together39_aunroll_vunroll_x_in_c1_eni11_2_10_tpl_11_sticky_ena_q & VCC_q;

    // redist10_sync_together39_aunroll_vunroll_x_in_c1_eni11_2_10_tpl_11_rdcnt(COUNTER,329)
    // low=0, high=8, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_sync_together39_aunroll_vunroll_x_in_c1_eni11_2_10_tpl_11_rdcnt_i <= 4'd0;
            redist10_sync_together39_aunroll_vunroll_x_in_c1_eni11_2_10_tpl_11_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist10_sync_together39_aunroll_vunroll_x_in_c1_eni11_2_10_tpl_11_rdcnt_i == 4'd7)
            begin
                redist10_sync_together39_aunroll_vunroll_x_in_c1_eni11_2_10_tpl_11_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist10_sync_together39_aunroll_vunroll_x_in_c1_eni11_2_10_tpl_11_rdcnt_eq <= 1'b0;
            end
            if (redist10_sync_together39_aunroll_vunroll_x_in_c1_eni11_2_10_tpl_11_rdcnt_eq == 1'b1)
            begin
                redist10_sync_together39_aunroll_vunroll_x_in_c1_eni11_2_10_tpl_11_rdcnt_i <= $unsigned(redist10_sync_together39_aunroll_vunroll_x_in_c1_eni11_2_10_tpl_11_rdcnt_i) + $unsigned(4'd8);
            end
            else
            begin
                redist10_sync_together39_aunroll_vunroll_x_in_c1_eni11_2_10_tpl_11_rdcnt_i <= $unsigned(redist10_sync_together39_aunroll_vunroll_x_in_c1_eni11_2_10_tpl_11_rdcnt_i) + $unsigned(4'd1);
            end
        end
    end
    assign redist10_sync_together39_aunroll_vunroll_x_in_c1_eni11_2_10_tpl_11_rdcnt_q = redist10_sync_together39_aunroll_vunroll_x_in_c1_eni11_2_10_tpl_11_rdcnt_i[3:0];

    // redist10_sync_together39_aunroll_vunroll_x_in_c1_eni11_2_10_tpl_11_wraddr(REG,330)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_sync_together39_aunroll_vunroll_x_in_c1_eni11_2_10_tpl_11_wraddr_q <= $unsigned(4'b1000);
        end
        else
        begin
            redist10_sync_together39_aunroll_vunroll_x_in_c1_eni11_2_10_tpl_11_wraddr_q <= $unsigned(redist10_sync_together39_aunroll_vunroll_x_in_c1_eni11_2_10_tpl_11_rdcnt_q);
        end
    end

    // redist10_sync_together39_aunroll_vunroll_x_in_c1_eni11_2_10_tpl_11_mem(DUALMEM,328)
    assign redist10_sync_together39_aunroll_vunroll_x_in_c1_eni11_2_10_tpl_11_mem_ia = $unsigned(in_c1_eni11_2_10_tpl);
    assign redist10_sync_together39_aunroll_vunroll_x_in_c1_eni11_2_10_tpl_11_mem_aa = redist10_sync_together39_aunroll_vunroll_x_in_c1_eni11_2_10_tpl_11_wraddr_q;
    assign redist10_sync_together39_aunroll_vunroll_x_in_c1_eni11_2_10_tpl_11_mem_ab = redist10_sync_together39_aunroll_vunroll_x_in_c1_eni11_2_10_tpl_11_rdcnt_q;
    assign redist10_sync_together39_aunroll_vunroll_x_in_c1_eni11_2_10_tpl_11_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(4),
        .numwords_a(9),
        .width_b(32),
        .widthad_b(4),
        .numwords_b(9),
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
    ) redist10_sync_together39_aunroll_vunroll_x_in_c1_eni11_2_10_tpl_11_mem_dmem (
        .clocken1(redist10_sync_together39_aunroll_vunroll_x_in_c1_eni11_2_10_tpl_11_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist10_sync_together39_aunroll_vunroll_x_in_c1_eni11_2_10_tpl_11_mem_reset0),
        .clock1(clock),
        .address_a(redist10_sync_together39_aunroll_vunroll_x_in_c1_eni11_2_10_tpl_11_mem_aa),
        .data_a(redist10_sync_together39_aunroll_vunroll_x_in_c1_eni11_2_10_tpl_11_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist10_sync_together39_aunroll_vunroll_x_in_c1_eni11_2_10_tpl_11_mem_ab),
        .q_b(redist10_sync_together39_aunroll_vunroll_x_in_c1_eni11_2_10_tpl_11_mem_iq),
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
    assign redist10_sync_together39_aunroll_vunroll_x_in_c1_eni11_2_10_tpl_11_mem_q = redist10_sync_together39_aunroll_vunroll_x_in_c1_eni11_2_10_tpl_11_mem_iq[31:0];

    // redist10_sync_together39_aunroll_vunroll_x_in_c1_eni11_2_10_tpl_11_outputreg0(DELAY,327)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_sync_together39_aunroll_vunroll_x_in_c1_eni11_2_10_tpl_11_outputreg0_q <= '0;
        end
        else
        begin
            redist10_sync_together39_aunroll_vunroll_x_in_c1_eni11_2_10_tpl_11_outputreg0_q <= $unsigned(redist10_sync_together39_aunroll_vunroll_x_in_c1_eni11_2_10_tpl_11_mem_q);
        end
    end

    // redist17_i_llvm_fpga_mem_lm28179_conv2d1x115_vunroll_x_out_o_readdata_2_tpl_4_notEnable(LOGICAL,364)
    assign redist17_i_llvm_fpga_mem_lm28179_conv2d1x115_vunroll_x_out_o_readdata_2_tpl_4_notEnable_q = $unsigned(~ (VCC_q));

    // redist17_i_llvm_fpga_mem_lm28179_conv2d1x115_vunroll_x_out_o_readdata_2_tpl_4_nor(LOGICAL,365)
    assign redist17_i_llvm_fpga_mem_lm28179_conv2d1x115_vunroll_x_out_o_readdata_2_tpl_4_nor_q = ~ (redist17_i_llvm_fpga_mem_lm28179_conv2d1x115_vunroll_x_out_o_readdata_2_tpl_4_notEnable_q | redist17_i_llvm_fpga_mem_lm28179_conv2d1x115_vunroll_x_out_o_readdata_2_tpl_4_sticky_ena_q);

    // redist17_i_llvm_fpga_mem_lm28179_conv2d1x115_vunroll_x_out_o_readdata_2_tpl_4_cmpReg(REG,363)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist17_i_llvm_fpga_mem_lm28179_conv2d1x115_vunroll_x_out_o_readdata_2_tpl_4_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist17_i_llvm_fpga_mem_lm28179_conv2d1x115_vunroll_x_out_o_readdata_2_tpl_4_cmpReg_q <= $unsigned(VCC_q);
        end
    end

    // redist17_i_llvm_fpga_mem_lm28179_conv2d1x115_vunroll_x_out_o_readdata_2_tpl_4_sticky_ena(REG,366)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist17_i_llvm_fpga_mem_lm28179_conv2d1x115_vunroll_x_out_o_readdata_2_tpl_4_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist17_i_llvm_fpga_mem_lm28179_conv2d1x115_vunroll_x_out_o_readdata_2_tpl_4_nor_q == 1'b1)
        begin
            redist17_i_llvm_fpga_mem_lm28179_conv2d1x115_vunroll_x_out_o_readdata_2_tpl_4_sticky_ena_q <= $unsigned(redist17_i_llvm_fpga_mem_lm28179_conv2d1x115_vunroll_x_out_o_readdata_2_tpl_4_cmpReg_q);
        end
    end

    // redist17_i_llvm_fpga_mem_lm28179_conv2d1x115_vunroll_x_out_o_readdata_2_tpl_4_enaAnd(LOGICAL,367)
    assign redist17_i_llvm_fpga_mem_lm28179_conv2d1x115_vunroll_x_out_o_readdata_2_tpl_4_enaAnd_q = redist17_i_llvm_fpga_mem_lm28179_conv2d1x115_vunroll_x_out_o_readdata_2_tpl_4_sticky_ena_q & VCC_q;

    // redist17_i_llvm_fpga_mem_lm28179_conv2d1x115_vunroll_x_out_o_readdata_2_tpl_4_rdcnt(COUNTER,361)
    // low=0, high=1, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist17_i_llvm_fpga_mem_lm28179_conv2d1x115_vunroll_x_out_o_readdata_2_tpl_4_rdcnt_i <= 1'd0;
        end
        else
        begin
            redist17_i_llvm_fpga_mem_lm28179_conv2d1x115_vunroll_x_out_o_readdata_2_tpl_4_rdcnt_i <= $unsigned(redist17_i_llvm_fpga_mem_lm28179_conv2d1x115_vunroll_x_out_o_readdata_2_tpl_4_rdcnt_i) + $unsigned(1'd1);
        end
    end
    assign redist17_i_llvm_fpga_mem_lm28179_conv2d1x115_vunroll_x_out_o_readdata_2_tpl_4_rdcnt_q = redist17_i_llvm_fpga_mem_lm28179_conv2d1x115_vunroll_x_out_o_readdata_2_tpl_4_rdcnt_i[0:0];

    // redist17_i_llvm_fpga_mem_lm28179_conv2d1x115_vunroll_x_out_o_readdata_2_tpl_4_wraddr(REG,362)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist17_i_llvm_fpga_mem_lm28179_conv2d1x115_vunroll_x_out_o_readdata_2_tpl_4_wraddr_q <= $unsigned(1'b1);
        end
        else
        begin
            redist17_i_llvm_fpga_mem_lm28179_conv2d1x115_vunroll_x_out_o_readdata_2_tpl_4_wraddr_q <= $unsigned(redist17_i_llvm_fpga_mem_lm28179_conv2d1x115_vunroll_x_out_o_readdata_2_tpl_4_rdcnt_q);
        end
    end

    // redist17_i_llvm_fpga_mem_lm28179_conv2d1x115_vunroll_x_out_o_readdata_2_tpl_4_mem(DUALMEM,360)
    assign redist17_i_llvm_fpga_mem_lm28179_conv2d1x115_vunroll_x_out_o_readdata_2_tpl_4_mem_ia = $unsigned(i_llvm_fpga_mem_lm28179_conv2d1x115_vunroll_x_out_o_readdata_2_tpl);
    assign redist17_i_llvm_fpga_mem_lm28179_conv2d1x115_vunroll_x_out_o_readdata_2_tpl_4_mem_aa = redist17_i_llvm_fpga_mem_lm28179_conv2d1x115_vunroll_x_out_o_readdata_2_tpl_4_wraddr_q;
    assign redist17_i_llvm_fpga_mem_lm28179_conv2d1x115_vunroll_x_out_o_readdata_2_tpl_4_mem_ab = redist17_i_llvm_fpga_mem_lm28179_conv2d1x115_vunroll_x_out_o_readdata_2_tpl_4_rdcnt_q;
    assign redist17_i_llvm_fpga_mem_lm28179_conv2d1x115_vunroll_x_out_o_readdata_2_tpl_4_mem_reset0 = ~ (resetn);
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
    ) redist17_i_llvm_fpga_mem_lm28179_conv2d1x115_vunroll_x_out_o_readdata_2_tpl_4_mem_dmem (
        .clocken1(redist17_i_llvm_fpga_mem_lm28179_conv2d1x115_vunroll_x_out_o_readdata_2_tpl_4_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist17_i_llvm_fpga_mem_lm28179_conv2d1x115_vunroll_x_out_o_readdata_2_tpl_4_mem_reset0),
        .clock1(clock),
        .address_a(redist17_i_llvm_fpga_mem_lm28179_conv2d1x115_vunroll_x_out_o_readdata_2_tpl_4_mem_aa),
        .data_a(redist17_i_llvm_fpga_mem_lm28179_conv2d1x115_vunroll_x_out_o_readdata_2_tpl_4_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist17_i_llvm_fpga_mem_lm28179_conv2d1x115_vunroll_x_out_o_readdata_2_tpl_4_mem_ab),
        .q_b(redist17_i_llvm_fpga_mem_lm28179_conv2d1x115_vunroll_x_out_o_readdata_2_tpl_4_mem_iq),
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
    assign redist17_i_llvm_fpga_mem_lm28179_conv2d1x115_vunroll_x_out_o_readdata_2_tpl_4_mem_q = redist17_i_llvm_fpga_mem_lm28179_conv2d1x115_vunroll_x_out_o_readdata_2_tpl_4_mem_iq[31:0];

    // redist17_i_llvm_fpga_mem_lm28179_conv2d1x115_vunroll_x_out_o_readdata_2_tpl_4_outputreg0(DELAY,359)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist17_i_llvm_fpga_mem_lm28179_conv2d1x115_vunroll_x_out_o_readdata_2_tpl_4_outputreg0_q <= '0;
        end
        else
        begin
            redist17_i_llvm_fpga_mem_lm28179_conv2d1x115_vunroll_x_out_o_readdata_2_tpl_4_outputreg0_q <= $unsigned(redist17_i_llvm_fpga_mem_lm28179_conv2d1x115_vunroll_x_out_o_readdata_2_tpl_4_mem_q);
        end
    end

    // redist11_sync_together39_aunroll_vunroll_x_in_c1_eni11_3_10_tpl_14_notEnable(LOGICAL,344)
    assign redist11_sync_together39_aunroll_vunroll_x_in_c1_eni11_3_10_tpl_14_notEnable_q = $unsigned(~ (VCC_q));

    // redist11_sync_together39_aunroll_vunroll_x_in_c1_eni11_3_10_tpl_14_nor(LOGICAL,345)
    assign redist11_sync_together39_aunroll_vunroll_x_in_c1_eni11_3_10_tpl_14_nor_q = ~ (redist11_sync_together39_aunroll_vunroll_x_in_c1_eni11_3_10_tpl_14_notEnable_q | redist11_sync_together39_aunroll_vunroll_x_in_c1_eni11_3_10_tpl_14_sticky_ena_q);

    // redist11_sync_together39_aunroll_vunroll_x_in_c1_eni11_3_10_tpl_14_mem_last(CONSTANT,341)
    assign redist11_sync_together39_aunroll_vunroll_x_in_c1_eni11_3_10_tpl_14_mem_last_q = $unsigned(5'b01011);

    // redist11_sync_together39_aunroll_vunroll_x_in_c1_eni11_3_10_tpl_14_cmp(LOGICAL,342)
    assign redist11_sync_together39_aunroll_vunroll_x_in_c1_eni11_3_10_tpl_14_cmp_b = {1'b0, redist11_sync_together39_aunroll_vunroll_x_in_c1_eni11_3_10_tpl_14_rdcnt_q};
    assign redist11_sync_together39_aunroll_vunroll_x_in_c1_eni11_3_10_tpl_14_cmp_q = $unsigned(redist11_sync_together39_aunroll_vunroll_x_in_c1_eni11_3_10_tpl_14_mem_last_q == redist11_sync_together39_aunroll_vunroll_x_in_c1_eni11_3_10_tpl_14_cmp_b ? 1'b1 : 1'b0);

    // redist11_sync_together39_aunroll_vunroll_x_in_c1_eni11_3_10_tpl_14_cmpReg(REG,343)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_sync_together39_aunroll_vunroll_x_in_c1_eni11_3_10_tpl_14_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist11_sync_together39_aunroll_vunroll_x_in_c1_eni11_3_10_tpl_14_cmpReg_q <= $unsigned(redist11_sync_together39_aunroll_vunroll_x_in_c1_eni11_3_10_tpl_14_cmp_q);
        end
    end

    // redist11_sync_together39_aunroll_vunroll_x_in_c1_eni11_3_10_tpl_14_sticky_ena(REG,346)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_sync_together39_aunroll_vunroll_x_in_c1_eni11_3_10_tpl_14_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist11_sync_together39_aunroll_vunroll_x_in_c1_eni11_3_10_tpl_14_nor_q == 1'b1)
        begin
            redist11_sync_together39_aunroll_vunroll_x_in_c1_eni11_3_10_tpl_14_sticky_ena_q <= $unsigned(redist11_sync_together39_aunroll_vunroll_x_in_c1_eni11_3_10_tpl_14_cmpReg_q);
        end
    end

    // redist11_sync_together39_aunroll_vunroll_x_in_c1_eni11_3_10_tpl_14_enaAnd(LOGICAL,347)
    assign redist11_sync_together39_aunroll_vunroll_x_in_c1_eni11_3_10_tpl_14_enaAnd_q = redist11_sync_together39_aunroll_vunroll_x_in_c1_eni11_3_10_tpl_14_sticky_ena_q & VCC_q;

    // redist11_sync_together39_aunroll_vunroll_x_in_c1_eni11_3_10_tpl_14_rdcnt(COUNTER,339)
    // low=0, high=12, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_sync_together39_aunroll_vunroll_x_in_c1_eni11_3_10_tpl_14_rdcnt_i <= 4'd0;
            redist11_sync_together39_aunroll_vunroll_x_in_c1_eni11_3_10_tpl_14_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist11_sync_together39_aunroll_vunroll_x_in_c1_eni11_3_10_tpl_14_rdcnt_i == 4'd11)
            begin
                redist11_sync_together39_aunroll_vunroll_x_in_c1_eni11_3_10_tpl_14_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist11_sync_together39_aunroll_vunroll_x_in_c1_eni11_3_10_tpl_14_rdcnt_eq <= 1'b0;
            end
            if (redist11_sync_together39_aunroll_vunroll_x_in_c1_eni11_3_10_tpl_14_rdcnt_eq == 1'b1)
            begin
                redist11_sync_together39_aunroll_vunroll_x_in_c1_eni11_3_10_tpl_14_rdcnt_i <= $unsigned(redist11_sync_together39_aunroll_vunroll_x_in_c1_eni11_3_10_tpl_14_rdcnt_i) + $unsigned(4'd4);
            end
            else
            begin
                redist11_sync_together39_aunroll_vunroll_x_in_c1_eni11_3_10_tpl_14_rdcnt_i <= $unsigned(redist11_sync_together39_aunroll_vunroll_x_in_c1_eni11_3_10_tpl_14_rdcnt_i) + $unsigned(4'd1);
            end
        end
    end
    assign redist11_sync_together39_aunroll_vunroll_x_in_c1_eni11_3_10_tpl_14_rdcnt_q = redist11_sync_together39_aunroll_vunroll_x_in_c1_eni11_3_10_tpl_14_rdcnt_i[3:0];

    // redist11_sync_together39_aunroll_vunroll_x_in_c1_eni11_3_10_tpl_14_wraddr(REG,340)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_sync_together39_aunroll_vunroll_x_in_c1_eni11_3_10_tpl_14_wraddr_q <= $unsigned(4'b1100);
        end
        else
        begin
            redist11_sync_together39_aunroll_vunroll_x_in_c1_eni11_3_10_tpl_14_wraddr_q <= $unsigned(redist11_sync_together39_aunroll_vunroll_x_in_c1_eni11_3_10_tpl_14_rdcnt_q);
        end
    end

    // redist11_sync_together39_aunroll_vunroll_x_in_c1_eni11_3_10_tpl_14_mem(DUALMEM,338)
    assign redist11_sync_together39_aunroll_vunroll_x_in_c1_eni11_3_10_tpl_14_mem_ia = $unsigned(in_c1_eni11_3_10_tpl);
    assign redist11_sync_together39_aunroll_vunroll_x_in_c1_eni11_3_10_tpl_14_mem_aa = redist11_sync_together39_aunroll_vunroll_x_in_c1_eni11_3_10_tpl_14_wraddr_q;
    assign redist11_sync_together39_aunroll_vunroll_x_in_c1_eni11_3_10_tpl_14_mem_ab = redist11_sync_together39_aunroll_vunroll_x_in_c1_eni11_3_10_tpl_14_rdcnt_q;
    assign redist11_sync_together39_aunroll_vunroll_x_in_c1_eni11_3_10_tpl_14_mem_reset0 = ~ (resetn);
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
    ) redist11_sync_together39_aunroll_vunroll_x_in_c1_eni11_3_10_tpl_14_mem_dmem (
        .clocken1(redist11_sync_together39_aunroll_vunroll_x_in_c1_eni11_3_10_tpl_14_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist11_sync_together39_aunroll_vunroll_x_in_c1_eni11_3_10_tpl_14_mem_reset0),
        .clock1(clock),
        .address_a(redist11_sync_together39_aunroll_vunroll_x_in_c1_eni11_3_10_tpl_14_mem_aa),
        .data_a(redist11_sync_together39_aunroll_vunroll_x_in_c1_eni11_3_10_tpl_14_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist11_sync_together39_aunroll_vunroll_x_in_c1_eni11_3_10_tpl_14_mem_ab),
        .q_b(redist11_sync_together39_aunroll_vunroll_x_in_c1_eni11_3_10_tpl_14_mem_iq),
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
    assign redist11_sync_together39_aunroll_vunroll_x_in_c1_eni11_3_10_tpl_14_mem_q = redist11_sync_together39_aunroll_vunroll_x_in_c1_eni11_3_10_tpl_14_mem_iq[31:0];

    // redist18_i_llvm_fpga_mem_lm28179_conv2d1x115_vunroll_x_out_o_readdata_3_tpl_7_notEnable(LOGICAL,374)
    assign redist18_i_llvm_fpga_mem_lm28179_conv2d1x115_vunroll_x_out_o_readdata_3_tpl_7_notEnable_q = $unsigned(~ (VCC_q));

    // redist18_i_llvm_fpga_mem_lm28179_conv2d1x115_vunroll_x_out_o_readdata_3_tpl_7_nor(LOGICAL,375)
    assign redist18_i_llvm_fpga_mem_lm28179_conv2d1x115_vunroll_x_out_o_readdata_3_tpl_7_nor_q = ~ (redist18_i_llvm_fpga_mem_lm28179_conv2d1x115_vunroll_x_out_o_readdata_3_tpl_7_notEnable_q | redist18_i_llvm_fpga_mem_lm28179_conv2d1x115_vunroll_x_out_o_readdata_3_tpl_7_sticky_ena_q);

    // redist18_i_llvm_fpga_mem_lm28179_conv2d1x115_vunroll_x_out_o_readdata_3_tpl_7_mem_last(CONSTANT,371)
    assign redist18_i_llvm_fpga_mem_lm28179_conv2d1x115_vunroll_x_out_o_readdata_3_tpl_7_mem_last_q = $unsigned(4'b0100);

    // redist18_i_llvm_fpga_mem_lm28179_conv2d1x115_vunroll_x_out_o_readdata_3_tpl_7_cmp(LOGICAL,372)
    assign redist18_i_llvm_fpga_mem_lm28179_conv2d1x115_vunroll_x_out_o_readdata_3_tpl_7_cmp_b = {1'b0, redist18_i_llvm_fpga_mem_lm28179_conv2d1x115_vunroll_x_out_o_readdata_3_tpl_7_rdcnt_q};
    assign redist18_i_llvm_fpga_mem_lm28179_conv2d1x115_vunroll_x_out_o_readdata_3_tpl_7_cmp_q = $unsigned(redist18_i_llvm_fpga_mem_lm28179_conv2d1x115_vunroll_x_out_o_readdata_3_tpl_7_mem_last_q == redist18_i_llvm_fpga_mem_lm28179_conv2d1x115_vunroll_x_out_o_readdata_3_tpl_7_cmp_b ? 1'b1 : 1'b0);

    // redist18_i_llvm_fpga_mem_lm28179_conv2d1x115_vunroll_x_out_o_readdata_3_tpl_7_cmpReg(REG,373)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist18_i_llvm_fpga_mem_lm28179_conv2d1x115_vunroll_x_out_o_readdata_3_tpl_7_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist18_i_llvm_fpga_mem_lm28179_conv2d1x115_vunroll_x_out_o_readdata_3_tpl_7_cmpReg_q <= $unsigned(redist18_i_llvm_fpga_mem_lm28179_conv2d1x115_vunroll_x_out_o_readdata_3_tpl_7_cmp_q);
        end
    end

    // redist18_i_llvm_fpga_mem_lm28179_conv2d1x115_vunroll_x_out_o_readdata_3_tpl_7_sticky_ena(REG,376)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist18_i_llvm_fpga_mem_lm28179_conv2d1x115_vunroll_x_out_o_readdata_3_tpl_7_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist18_i_llvm_fpga_mem_lm28179_conv2d1x115_vunroll_x_out_o_readdata_3_tpl_7_nor_q == 1'b1)
        begin
            redist18_i_llvm_fpga_mem_lm28179_conv2d1x115_vunroll_x_out_o_readdata_3_tpl_7_sticky_ena_q <= $unsigned(redist18_i_llvm_fpga_mem_lm28179_conv2d1x115_vunroll_x_out_o_readdata_3_tpl_7_cmpReg_q);
        end
    end

    // redist18_i_llvm_fpga_mem_lm28179_conv2d1x115_vunroll_x_out_o_readdata_3_tpl_7_enaAnd(LOGICAL,377)
    assign redist18_i_llvm_fpga_mem_lm28179_conv2d1x115_vunroll_x_out_o_readdata_3_tpl_7_enaAnd_q = redist18_i_llvm_fpga_mem_lm28179_conv2d1x115_vunroll_x_out_o_readdata_3_tpl_7_sticky_ena_q & VCC_q;

    // redist18_i_llvm_fpga_mem_lm28179_conv2d1x115_vunroll_x_out_o_readdata_3_tpl_7_rdcnt(COUNTER,369)
    // low=0, high=5, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist18_i_llvm_fpga_mem_lm28179_conv2d1x115_vunroll_x_out_o_readdata_3_tpl_7_rdcnt_i <= 3'd0;
            redist18_i_llvm_fpga_mem_lm28179_conv2d1x115_vunroll_x_out_o_readdata_3_tpl_7_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist18_i_llvm_fpga_mem_lm28179_conv2d1x115_vunroll_x_out_o_readdata_3_tpl_7_rdcnt_i == 3'd4)
            begin
                redist18_i_llvm_fpga_mem_lm28179_conv2d1x115_vunroll_x_out_o_readdata_3_tpl_7_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist18_i_llvm_fpga_mem_lm28179_conv2d1x115_vunroll_x_out_o_readdata_3_tpl_7_rdcnt_eq <= 1'b0;
            end
            if (redist18_i_llvm_fpga_mem_lm28179_conv2d1x115_vunroll_x_out_o_readdata_3_tpl_7_rdcnt_eq == 1'b1)
            begin
                redist18_i_llvm_fpga_mem_lm28179_conv2d1x115_vunroll_x_out_o_readdata_3_tpl_7_rdcnt_i <= $unsigned(redist18_i_llvm_fpga_mem_lm28179_conv2d1x115_vunroll_x_out_o_readdata_3_tpl_7_rdcnt_i) + $unsigned(3'd3);
            end
            else
            begin
                redist18_i_llvm_fpga_mem_lm28179_conv2d1x115_vunroll_x_out_o_readdata_3_tpl_7_rdcnt_i <= $unsigned(redist18_i_llvm_fpga_mem_lm28179_conv2d1x115_vunroll_x_out_o_readdata_3_tpl_7_rdcnt_i) + $unsigned(3'd1);
            end
        end
    end
    assign redist18_i_llvm_fpga_mem_lm28179_conv2d1x115_vunroll_x_out_o_readdata_3_tpl_7_rdcnt_q = redist18_i_llvm_fpga_mem_lm28179_conv2d1x115_vunroll_x_out_o_readdata_3_tpl_7_rdcnt_i[2:0];

    // redist18_i_llvm_fpga_mem_lm28179_conv2d1x115_vunroll_x_out_o_readdata_3_tpl_7_wraddr(REG,370)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist18_i_llvm_fpga_mem_lm28179_conv2d1x115_vunroll_x_out_o_readdata_3_tpl_7_wraddr_q <= $unsigned(3'b101);
        end
        else
        begin
            redist18_i_llvm_fpga_mem_lm28179_conv2d1x115_vunroll_x_out_o_readdata_3_tpl_7_wraddr_q <= $unsigned(redist18_i_llvm_fpga_mem_lm28179_conv2d1x115_vunroll_x_out_o_readdata_3_tpl_7_rdcnt_q);
        end
    end

    // redist18_i_llvm_fpga_mem_lm28179_conv2d1x115_vunroll_x_out_o_readdata_3_tpl_7_mem(DUALMEM,368)
    assign redist18_i_llvm_fpga_mem_lm28179_conv2d1x115_vunroll_x_out_o_readdata_3_tpl_7_mem_ia = $unsigned(i_llvm_fpga_mem_lm28179_conv2d1x115_vunroll_x_out_o_readdata_3_tpl);
    assign redist18_i_llvm_fpga_mem_lm28179_conv2d1x115_vunroll_x_out_o_readdata_3_tpl_7_mem_aa = redist18_i_llvm_fpga_mem_lm28179_conv2d1x115_vunroll_x_out_o_readdata_3_tpl_7_wraddr_q;
    assign redist18_i_llvm_fpga_mem_lm28179_conv2d1x115_vunroll_x_out_o_readdata_3_tpl_7_mem_ab = redist18_i_llvm_fpga_mem_lm28179_conv2d1x115_vunroll_x_out_o_readdata_3_tpl_7_rdcnt_q;
    assign redist18_i_llvm_fpga_mem_lm28179_conv2d1x115_vunroll_x_out_o_readdata_3_tpl_7_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(3),
        .numwords_a(6),
        .width_b(32),
        .widthad_b(3),
        .numwords_b(6),
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
    ) redist18_i_llvm_fpga_mem_lm28179_conv2d1x115_vunroll_x_out_o_readdata_3_tpl_7_mem_dmem (
        .clocken1(redist18_i_llvm_fpga_mem_lm28179_conv2d1x115_vunroll_x_out_o_readdata_3_tpl_7_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist18_i_llvm_fpga_mem_lm28179_conv2d1x115_vunroll_x_out_o_readdata_3_tpl_7_mem_reset0),
        .clock1(clock),
        .address_a(redist18_i_llvm_fpga_mem_lm28179_conv2d1x115_vunroll_x_out_o_readdata_3_tpl_7_mem_aa),
        .data_a(redist18_i_llvm_fpga_mem_lm28179_conv2d1x115_vunroll_x_out_o_readdata_3_tpl_7_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist18_i_llvm_fpga_mem_lm28179_conv2d1x115_vunroll_x_out_o_readdata_3_tpl_7_mem_ab),
        .q_b(redist18_i_llvm_fpga_mem_lm28179_conv2d1x115_vunroll_x_out_o_readdata_3_tpl_7_mem_iq),
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
    assign redist18_i_llvm_fpga_mem_lm28179_conv2d1x115_vunroll_x_out_o_readdata_3_tpl_7_mem_q = redist18_i_llvm_fpga_mem_lm28179_conv2d1x115_vunroll_x_out_o_readdata_3_tpl_7_mem_iq[31:0];

    // i_llvm_fpga_dot_product_f32_f32_v2f32_v2f32_dot_prod16_conv2d1x10_dspb_native_dot_product_vunroll_x(BLACKBOX,85)@148
    // in in_0@151
    // in in_1@151
    // in in_scalarProductPortChainin@149
    // out out_primWireOut@155
    conv2d1x1_flt_i_llvm_fpga_dot_product_f30000q0cp0jv24cp06c00qfzo thei_llvm_fpga_dot_product_f32_f32_v2f32_v2f32_dot_prod16_conv2d1x10_dspb_native_dot_product_vunroll_x (
        .in_0(redist18_i_llvm_fpga_mem_lm28179_conv2d1x115_vunroll_x_out_o_readdata_3_tpl_7_mem_q),
        .in_1(redist11_sync_together39_aunroll_vunroll_x_in_c1_eni11_3_10_tpl_14_mem_q),
        .in_2(redist17_i_llvm_fpga_mem_lm28179_conv2d1x115_vunroll_x_out_o_readdata_2_tpl_4_outputreg0_q),
        .in_3(redist10_sync_together39_aunroll_vunroll_x_in_c1_eni11_2_10_tpl_11_outputreg0_q),
        .in_scalarProductPortChainin(i_llvm_fpga_dot_product_f32_f32_v2f32_v2f32_dot_prod_conv2d1x10_dspb_native_dot_product_vunroll_x_out_primWireOut),
        .out_primWireOut(i_llvm_fpga_dot_product_f32_f32_v2f32_v2f32_dot_prod16_conv2d1x10_dspb_native_dot_product_vunroll_x_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // redist12_sync_together39_aunroll_vunroll_x_in_c1_eni11_11_tpl_18_notEnable(LOGICAL,355)
    assign redist12_sync_together39_aunroll_vunroll_x_in_c1_eni11_11_tpl_18_notEnable_q = $unsigned(~ (VCC_q));

    // redist12_sync_together39_aunroll_vunroll_x_in_c1_eni11_11_tpl_18_nor(LOGICAL,356)
    assign redist12_sync_together39_aunroll_vunroll_x_in_c1_eni11_11_tpl_18_nor_q = ~ (redist12_sync_together39_aunroll_vunroll_x_in_c1_eni11_11_tpl_18_notEnable_q | redist12_sync_together39_aunroll_vunroll_x_in_c1_eni11_11_tpl_18_sticky_ena_q);

    // redist12_sync_together39_aunroll_vunroll_x_in_c1_eni11_11_tpl_18_mem_last(CONSTANT,352)
    assign redist12_sync_together39_aunroll_vunroll_x_in_c1_eni11_11_tpl_18_mem_last_q = $unsigned(5'b01110);

    // redist12_sync_together39_aunroll_vunroll_x_in_c1_eni11_11_tpl_18_cmp(LOGICAL,353)
    assign redist12_sync_together39_aunroll_vunroll_x_in_c1_eni11_11_tpl_18_cmp_b = {1'b0, redist12_sync_together39_aunroll_vunroll_x_in_c1_eni11_11_tpl_18_rdcnt_q};
    assign redist12_sync_together39_aunroll_vunroll_x_in_c1_eni11_11_tpl_18_cmp_q = $unsigned(redist12_sync_together39_aunroll_vunroll_x_in_c1_eni11_11_tpl_18_mem_last_q == redist12_sync_together39_aunroll_vunroll_x_in_c1_eni11_11_tpl_18_cmp_b ? 1'b1 : 1'b0);

    // redist12_sync_together39_aunroll_vunroll_x_in_c1_eni11_11_tpl_18_cmpReg(REG,354)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_sync_together39_aunroll_vunroll_x_in_c1_eni11_11_tpl_18_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist12_sync_together39_aunroll_vunroll_x_in_c1_eni11_11_tpl_18_cmpReg_q <= $unsigned(redist12_sync_together39_aunroll_vunroll_x_in_c1_eni11_11_tpl_18_cmp_q);
        end
    end

    // redist12_sync_together39_aunroll_vunroll_x_in_c1_eni11_11_tpl_18_sticky_ena(REG,357)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_sync_together39_aunroll_vunroll_x_in_c1_eni11_11_tpl_18_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist12_sync_together39_aunroll_vunroll_x_in_c1_eni11_11_tpl_18_nor_q == 1'b1)
        begin
            redist12_sync_together39_aunroll_vunroll_x_in_c1_eni11_11_tpl_18_sticky_ena_q <= $unsigned(redist12_sync_together39_aunroll_vunroll_x_in_c1_eni11_11_tpl_18_cmpReg_q);
        end
    end

    // redist12_sync_together39_aunroll_vunroll_x_in_c1_eni11_11_tpl_18_enaAnd(LOGICAL,358)
    assign redist12_sync_together39_aunroll_vunroll_x_in_c1_eni11_11_tpl_18_enaAnd_q = redist12_sync_together39_aunroll_vunroll_x_in_c1_eni11_11_tpl_18_sticky_ena_q & VCC_q;

    // redist12_sync_together39_aunroll_vunroll_x_in_c1_eni11_11_tpl_18_rdcnt(COUNTER,350)
    // low=0, high=15, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_sync_together39_aunroll_vunroll_x_in_c1_eni11_11_tpl_18_rdcnt_i <= 4'd0;
        end
        else
        begin
            redist12_sync_together39_aunroll_vunroll_x_in_c1_eni11_11_tpl_18_rdcnt_i <= $unsigned(redist12_sync_together39_aunroll_vunroll_x_in_c1_eni11_11_tpl_18_rdcnt_i) + $unsigned(4'd1);
        end
    end
    assign redist12_sync_together39_aunroll_vunroll_x_in_c1_eni11_11_tpl_18_rdcnt_q = redist12_sync_together39_aunroll_vunroll_x_in_c1_eni11_11_tpl_18_rdcnt_i[3:0];

    // redist12_sync_together39_aunroll_vunroll_x_in_c1_eni11_11_tpl_18_wraddr(REG,351)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_sync_together39_aunroll_vunroll_x_in_c1_eni11_11_tpl_18_wraddr_q <= $unsigned(4'b1111);
        end
        else
        begin
            redist12_sync_together39_aunroll_vunroll_x_in_c1_eni11_11_tpl_18_wraddr_q <= $unsigned(redist12_sync_together39_aunroll_vunroll_x_in_c1_eni11_11_tpl_18_rdcnt_q);
        end
    end

    // redist12_sync_together39_aunroll_vunroll_x_in_c1_eni11_11_tpl_18_mem(DUALMEM,349)
    assign redist12_sync_together39_aunroll_vunroll_x_in_c1_eni11_11_tpl_18_mem_ia = $unsigned(in_c1_eni11_11_tpl);
    assign redist12_sync_together39_aunroll_vunroll_x_in_c1_eni11_11_tpl_18_mem_aa = redist12_sync_together39_aunroll_vunroll_x_in_c1_eni11_11_tpl_18_wraddr_q;
    assign redist12_sync_together39_aunroll_vunroll_x_in_c1_eni11_11_tpl_18_mem_ab = redist12_sync_together39_aunroll_vunroll_x_in_c1_eni11_11_tpl_18_rdcnt_q;
    assign redist12_sync_together39_aunroll_vunroll_x_in_c1_eni11_11_tpl_18_mem_reset0 = ~ (resetn);
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
    ) redist12_sync_together39_aunroll_vunroll_x_in_c1_eni11_11_tpl_18_mem_dmem (
        .clocken1(redist12_sync_together39_aunroll_vunroll_x_in_c1_eni11_11_tpl_18_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist12_sync_together39_aunroll_vunroll_x_in_c1_eni11_11_tpl_18_mem_reset0),
        .clock1(clock),
        .address_a(redist12_sync_together39_aunroll_vunroll_x_in_c1_eni11_11_tpl_18_mem_aa),
        .data_a(redist12_sync_together39_aunroll_vunroll_x_in_c1_eni11_11_tpl_18_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist12_sync_together39_aunroll_vunroll_x_in_c1_eni11_11_tpl_18_mem_ab),
        .q_b(redist12_sync_together39_aunroll_vunroll_x_in_c1_eni11_11_tpl_18_mem_iq),
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
    assign redist12_sync_together39_aunroll_vunroll_x_in_c1_eni11_11_tpl_18_mem_q = redist12_sync_together39_aunroll_vunroll_x_in_c1_eni11_11_tpl_18_mem_iq[31:0];

    // redist12_sync_together39_aunroll_vunroll_x_in_c1_eni11_11_tpl_18_outputreg0(DELAY,348)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_sync_together39_aunroll_vunroll_x_in_c1_eni11_11_tpl_18_outputreg0_q <= '0;
        end
        else
        begin
            redist12_sync_together39_aunroll_vunroll_x_in_c1_eni11_11_tpl_18_outputreg0_q <= $unsigned(redist12_sync_together39_aunroll_vunroll_x_in_c1_eni11_11_tpl_18_mem_q);
        end
    end

    // i_add75_conv2d1x132(BLACKBOX,8)@155
    // out out_primWireOut@158
    conv2d1x1_flt_i_sfc_logic_s_c1_in_for_bo00003a0054c2a6344c246w65 thei_add75_conv2d1x132 (
        .in_0(redist12_sync_together39_aunroll_vunroll_x_in_c1_eni11_11_tpl_18_outputreg0_q),
        .in_1(i_llvm_fpga_dot_product_f32_f32_v2f32_v2f32_dot_prod16_conv2d1x10_dspb_native_dot_product_vunroll_x_out_primWireOut),
        .out_primWireOut(i_add75_conv2d1x132_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // sync_out_aunroll_x(GPOUT,89)@158
    assign out_c1_exi1_0_tpl = GND_q;
    assign out_c1_exi1_1_tpl = i_add75_conv2d1x132_out_primWireOut;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_conv2d1x11 = GND_q;

endmodule
