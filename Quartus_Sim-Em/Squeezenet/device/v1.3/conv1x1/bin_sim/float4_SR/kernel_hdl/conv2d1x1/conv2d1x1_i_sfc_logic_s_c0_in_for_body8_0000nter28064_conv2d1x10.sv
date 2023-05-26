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

// SystemVerilog created from conv2d1x1_i_sfc_logic_s_c0_in_for_body8_0000nter28064_conv2d1x10
// SystemVerilog created on Wed May 24 11:22:00 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2d1x1_i_sfc_logic_s_c0_in_for_body8_0000nter28064_conv2d1x10 (
    input wire [511:0] in_unnamed_conv2d1x115_conv2d1x1_avm_readdata,
    input wire [0:0] in_unnamed_conv2d1x115_conv2d1x1_avm_writeack,
    input wire [0:0] in_unnamed_conv2d1x115_conv2d1x1_avm_waitrequest,
    input wire [0:0] in_unnamed_conv2d1x115_conv2d1x1_avm_readdatavalid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going26_conv2d1x16_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going26_conv2d1x16_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_flush,
    output wire [31:0] out_unnamed_conv2d1x115_conv2d1x1_avm_address,
    output wire [0:0] out_unnamed_conv2d1x115_conv2d1x1_avm_enable,
    output wire [0:0] out_unnamed_conv2d1x115_conv2d1x1_avm_read,
    output wire [0:0] out_unnamed_conv2d1x115_conv2d1x1_avm_write,
    output wire [511:0] out_unnamed_conv2d1x115_conv2d1x1_avm_writedata,
    output wire [63:0] out_unnamed_conv2d1x115_conv2d1x1_avm_byteenable,
    output wire [0:0] out_unnamed_conv2d1x115_conv2d1x1_avm_burstcount,
    output wire [0:0] out_c0_exi22_0_tpl,
    output wire [0:0] out_c0_exi22_1_tpl,
    output wire [63:0] out_c0_exi22_2_tpl,
    output wire [0:0] out_c0_exi22_3_tpl,
    output wire [0:0] out_c0_exi22_4_tpl,
    output wire [0:0] out_c0_exi22_5_tpl,
    output wire [31:0] out_c0_exi22_6_tpl,
    output wire [0:0] out_c0_exi22_7_tpl,
    output wire [31:0] out_c0_exi22_8_tpl,
    output wire [31:0] out_c0_exi22_9_tpl,
    output wire [31:0] out_c0_exi22_10_tpl,
    output wire [0:0] out_c0_exi22_11_tpl,
    output wire [0:0] out_c0_exi22_12_tpl,
    output wire [31:0] out_c0_exi22_13_tpl,
    output wire [31:0] out_c0_exi22_14_tpl,
    output wire [0:0] out_c0_exi22_15_tpl,
    output wire [0:0] out_c0_exi22_16_tpl,
    output wire [0:0] out_c0_exi22_17_tpl,
    output wire [32:0] out_c0_exi22_18_tpl,
    output wire [31:0] out_c0_exi22_19_tpl,
    output wire [31:0] out_c0_exi22_20_tpl,
    output wire [31:0] out_c0_exi22_21_tpl,
    output wire [0:0] out_c0_exi22_22_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_conv2d1x16,
    input wire [0:0] in_c0_eni21_0_tpl,
    input wire [0:0] in_c0_eni21_1_tpl,
    input wire [9:0] in_c0_eni21_2_tpl,
    input wire [0:0] in_c0_eni21_3_tpl,
    input wire [0:0] in_c0_eni21_4_tpl,
    input wire [31:0] in_c0_eni21_5_tpl,
    input wire [0:0] in_c0_eni21_6_tpl,
    input wire [31:0] in_c0_eni21_7_tpl,
    input wire [31:0] in_c0_eni21_8_tpl,
    input wire [31:0] in_c0_eni21_9_tpl,
    input wire [0:0] in_c0_eni21_10_tpl,
    input wire [0:0] in_c0_eni21_11_tpl,
    input wire [31:0] in_c0_eni21_12_tpl,
    input wire [31:0] in_c0_eni21_13_tpl,
    input wire [0:0] in_c0_eni21_14_tpl,
    input wire [0:0] in_c0_eni21_15_tpl,
    input wire [0:0] in_c0_eni21_16_tpl,
    input wire [32:0] in_c0_eni21_17_tpl,
    input wire [31:0] in_c0_eni21_18_tpl,
    input wire [31:0] in_c0_eni21_19_tpl,
    input wire [31:0] in_c0_eni21_20_tpl,
    input wire [0:0] in_c0_eni21_21_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [63:0] c_conv2d1x1_shift_reg_pmem_q;
    wire [31:0] c_float_0_000000e_0092_q;
    wire [1:0] c_i2_189_q;
    wire [31:0] c_i32_091_q;
    wire [31:0] c_i32_193_q;
    wire [5:0] c_i6_1894_q;
    wire [5:0] c_i6_196_q;
    wire [53:0] i_ap_pop_ext7_conv2d1x114_vt_const_63_q;
    wire [63:0] i_ap_pop_ext7_conv2d1x114_vt_join_q;
    wire [9:0] i_ap_pop_ext7_conv2d1x114_vt_select_9_b;
    wire [1:0] i_arrayidx102_conv2d1x117_vt_const_1_q;
    wire [63:0] i_arrayidx102_conv2d1x117_vt_join_q;
    wire [61:0] i_arrayidx102_conv2d1x117_vt_select_63_b;
    wire [1:0] i_cleanups_shl30_conv2d1x15_vt_join_q;
    wire [0:0] i_cleanups_shl30_conv2d1x15_vt_select_1_b;
    wire [0:0] i_first_cleanup_xor32_conv2d1x14_q;
    wire [0:0] i_first_cleanup_xor32_or_conv2d1x120_q;
    wire [6:0] i_fpga_indvars_iv_next_conv2d1x127_a;
    wire [6:0] i_fpga_indvars_iv_next_conv2d1x127_b;
    logic [6:0] i_fpga_indvars_iv_next_conv2d1x127_o;
    wire [6:0] i_fpga_indvars_iv_next_conv2d1x127_q;
    wire [63:0] i_idxprom9_conv2d1x116_vt_join_q;
    wire [31:0] i_idxprom9_conv2d1x116_vt_select_31_b;
    wire [32:0] i_inc_conv2d1x122_a;
    wire [32:0] i_inc_conv2d1x122_b;
    logic [32:0] i_inc_conv2d1x122_o;
    wire [32:0] i_inc_conv2d1x122_q;
    wire [31:0] i_llvm_fpga_mem_unnamed_conv2d1x115_conv2d1x121_out_unnamed_conv2d1x115_conv2d1x1_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_conv2d1x115_conv2d1x121_out_unnamed_conv2d1x115_conv2d1x1_avm_burstcount;
    wire [63:0] i_llvm_fpga_mem_unnamed_conv2d1x115_conv2d1x121_out_unnamed_conv2d1x115_conv2d1x1_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_conv2d1x115_conv2d1x121_out_unnamed_conv2d1x115_conv2d1x1_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_conv2d1x115_conv2d1x121_out_unnamed_conv2d1x115_conv2d1x1_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_conv2d1x115_conv2d1x121_out_unnamed_conv2d1x115_conv2d1x1_avm_write;
    wire [511:0] i_llvm_fpga_mem_unnamed_conv2d1x115_conv2d1x121_out_unnamed_conv2d1x115_conv2d1x1_avm_writedata;
    wire [0:0] i_llvm_fpga_pipeline_keep_going26_conv2d1x16_out_data_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going26_conv2d1x16_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going26_conv2d1x16_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going26_conv2d1x16_out_initeration_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going26_conv2d1x16_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going26_conv2d1x16_out_pipeline_valid_out;
    wire [31:0] i_llvm_fpga_pop_f32_lm52_pop30_conv2d1x142_out_data_out;
    wire [0:0] i_llvm_fpga_pop_f32_lm52_pop30_conv2d1x142_out_feedback_stall_out_30;
    wire [9:0] i_llvm_fpga_pop_i10_ap_pop63_pop34_conv2d1x112_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i10_ap_pop63_pop34_conv2d1x112_out_feedback_stall_out_34;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp3864_pop35_conv2d1x150_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp3864_pop35_conv2d1x150_out_feedback_stall_out_35;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp4361_pop33_conv2d1x148_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp4361_pop33_conv2d1x148_out_feedback_stall_out_33;
    wire [0:0] i_llvm_fpga_pop_i1_pop27_conv2d1x118_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_pop27_conv2d1x118_out_feedback_stall_out_27;
    wire [0:0] i_llvm_fpga_pop_i1_pop28_conv2d1x129_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_pop28_conv2d1x129_out_feedback_stall_out_28;
    wire [0:0] i_llvm_fpga_pop_i1_pop29_conv2d1x140_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_pop29_conv2d1x140_out_feedback_stall_out_29;
    wire [1:0] i_llvm_fpga_pop_i2_cleanups29_pop25_conv2d1x12_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i2_cleanups29_pop25_conv2d1x12_out_feedback_stall_out_25;
    wire [1:0] i_llvm_fpga_pop_i2_initerations24_pop24_conv2d1x17_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i2_initerations24_pop24_conv2d1x17_out_feedback_stall_out_24;
    wire [31:0] i_llvm_fpga_pop_i32_i_061_pop23_conv2d1x115_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_i_061_pop23_conv2d1x115_out_feedback_stall_out_23;
    wire [31:0] i_llvm_fpga_pop_i32_ij_068_pop1366_pop36_conv2d1x152_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_ij_068_pop1366_pop36_conv2d1x152_out_feedback_stall_out_36;
    wire [31:0] i_llvm_fpga_pop_i32_mul10058_pop32_conv2d1x146_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_mul10058_pop32_conv2d1x146_out_feedback_stall_out_32;
    wire [31:0] i_llvm_fpga_pop_i32_mul2155_pop31_conv2d1x144_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_mul2155_pop31_conv2d1x144_out_feedback_stall_out_31;
    wire [31:0] i_llvm_fpga_pop_i32_mul49_pop26_conv2d1x138_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_mul49_pop26_conv2d1x138_out_feedback_stall_out_26;
    wire [5:0] i_llvm_fpga_pop_i6_fpga_indvars_iv_pop22_conv2d1x124_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i6_fpga_indvars_iv_pop22_conv2d1x124_out_feedback_stall_out_22;
    wire [31:0] i_llvm_fpga_push_f32_lm52_push30_conv2d1x143_out_feedback_out_30;
    wire [0:0] i_llvm_fpga_push_f32_lm52_push30_conv2d1x143_out_feedback_valid_out_30;
    wire [15:0] i_llvm_fpga_push_i10_ap_pop63_push34_conv2d1x113_out_feedback_out_34;
    wire [0:0] i_llvm_fpga_push_i10_ap_pop63_push34_conv2d1x113_out_feedback_valid_out_34;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration28_conv2d1x111_out_feedback_out_4;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration28_conv2d1x111_out_feedback_valid_out_4;
    wire [0:0] i_llvm_fpga_push_i1_notcmp3864_push35_conv2d1x151_out_feedback_out_35;
    wire [0:0] i_llvm_fpga_push_i1_notcmp3864_push35_conv2d1x151_out_feedback_valid_out_35;
    wire [0:0] i_llvm_fpga_push_i1_notcmp4361_push33_conv2d1x149_out_feedback_out_33;
    wire [0:0] i_llvm_fpga_push_i1_notcmp4361_push33_conv2d1x149_out_feedback_valid_out_33;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond36_conv2d1x133_out_feedback_out_5;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond36_conv2d1x133_out_feedback_valid_out_5;
    wire [0:0] i_llvm_fpga_push_i1_push27_conv2d1x119_out_feedback_out_27;
    wire [0:0] i_llvm_fpga_push_i1_push27_conv2d1x119_out_feedback_valid_out_27;
    wire [0:0] i_llvm_fpga_push_i1_push28_conv2d1x130_out_feedback_out_28;
    wire [0:0] i_llvm_fpga_push_i1_push28_conv2d1x130_out_feedback_valid_out_28;
    wire [0:0] i_llvm_fpga_push_i1_push29_conv2d1x141_out_feedback_out_29;
    wire [0:0] i_llvm_fpga_push_i1_push29_conv2d1x141_out_feedback_valid_out_29;
    wire [7:0] i_llvm_fpga_push_i2_cleanups29_push25_conv2d1x136_out_feedback_out_25;
    wire [0:0] i_llvm_fpga_push_i2_cleanups29_push25_conv2d1x136_out_feedback_valid_out_25;
    wire [7:0] i_llvm_fpga_push_i2_initerations24_push24_conv2d1x19_out_feedback_out_24;
    wire [0:0] i_llvm_fpga_push_i2_initerations24_push24_conv2d1x19_out_feedback_valid_out_24;
    wire [31:0] i_llvm_fpga_push_i32_i_061_push23_conv2d1x123_out_feedback_out_23;
    wire [0:0] i_llvm_fpga_push_i32_i_061_push23_conv2d1x123_out_feedback_valid_out_23;
    wire [31:0] i_llvm_fpga_push_i32_ij_068_pop1366_push36_conv2d1x153_out_feedback_out_36;
    wire [0:0] i_llvm_fpga_push_i32_ij_068_pop1366_push36_conv2d1x153_out_feedback_valid_out_36;
    wire [31:0] i_llvm_fpga_push_i32_mul10058_push32_conv2d1x147_out_feedback_out_32;
    wire [0:0] i_llvm_fpga_push_i32_mul10058_push32_conv2d1x147_out_feedback_valid_out_32;
    wire [31:0] i_llvm_fpga_push_i32_mul2155_push31_conv2d1x145_out_feedback_out_31;
    wire [0:0] i_llvm_fpga_push_i32_mul2155_push31_conv2d1x145_out_feedback_valid_out_31;
    wire [31:0] i_llvm_fpga_push_i32_mul49_push26_conv2d1x139_out_feedback_out_26;
    wire [0:0] i_llvm_fpga_push_i32_mul49_push26_conv2d1x139_out_feedback_valid_out_26;
    wire [7:0] i_llvm_fpga_push_i6_fpga_indvars_iv_push22_conv2d1x128_out_feedback_out_22;
    wire [0:0] i_llvm_fpga_push_i6_fpga_indvars_iv_push22_conv2d1x128_out_feedback_valid_out_22;
    wire [0:0] i_masked35_conv2d1x137_qi;
    reg [0:0] i_masked35_conv2d1x137_q;
    wire [0:0] i_next_cleanups34_conv2d1x135_s;
    reg [1:0] i_next_cleanups34_conv2d1x135_q;
    wire [1:0] i_next_initerations25_conv2d1x18_vt_join_q;
    wire [0:0] i_next_initerations25_conv2d1x18_vt_select_0_b;
    wire [0:0] i_notcmp22_conv2d1x132_q;
    wire [0:0] i_or33_conv2d1x134_q;
    wire [0:0] i_unnamed_conv2d1x131_q;
    wire [5:0] bgTrunc_i_fpga_indvars_iv_next_conv2d1x127_sel_x_b;
    wire [31:0] bgTrunc_i_inc_conv2d1x122_sel_x_b;
    wire [63:0] i_ap_pop_ext7_conv2d1x114_sel_x_b;
    wire [7:0] i_arrayidx102_conv2d1x10_add_x_a;
    wire [7:0] i_arrayidx102_conv2d1x10_add_x_b;
    logic [7:0] i_arrayidx102_conv2d1x10_add_x_o;
    wire [7:0] i_arrayidx102_conv2d1x10_add_x_q;
    wire [63:0] i_arrayidx102_conv2d1x10_append_upper_bits_x_q;
    wire [4:0] i_arrayidx102_conv2d1x10_narrow_x_b;
    wire [6:0] i_arrayidx102_conv2d1x10_shift_join_x_q;
    wire [6:0] i_arrayidx102_conv2d1x10_dupName_0_trunc_sel_x_b;
    wire [6:0] i_arrayidx102_conv2d1x10_dupName_2_trunc_sel_x_b;
    wire [0:0] i_first_cleanup31_conv2d1x13_sel_x_b;
    wire [63:0] i_idxprom9_conv2d1x116_sel_x_b;
    wire [0:0] i_last_initeration27_conv2d1x110_sel_x_b;
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
    wire [0:0] i_exitcond_conv2d1x125_cmp_nsign_q;
    wire [0:0] leftShiftStage0Idx1Rng1_uid187_i_cleanups_shl30_conv2d1x10_shift_x_in;
    wire [0:0] leftShiftStage0Idx1Rng1_uid187_i_cleanups_shl30_conv2d1x10_shift_x_b;
    wire [1:0] leftShiftStage0Idx1_uid188_i_cleanups_shl30_conv2d1x10_shift_x_q;
    wire [0:0] leftShiftStage0_uid190_i_cleanups_shl30_conv2d1x10_shift_x_s;
    reg [1:0] leftShiftStage0_uid190_i_cleanups_shl30_conv2d1x10_shift_x_q;
    wire [0:0] rightShiftStage0Idx1Rng1_uid194_i_next_initerations25_conv2d1x10_shift_x_b;
    wire [1:0] rightShiftStage0Idx1_uid196_i_next_initerations25_conv2d1x10_shift_x_q;
    wire [0:0] rightShiftStage0_uid198_i_next_initerations25_conv2d1x10_shift_x_s;
    reg [1:0] rightShiftStage0_uid198_i_next_initerations25_conv2d1x10_shift_x_q;
    wire [56:0] i_arrayidx102_conv2d1x10_upper_bits_x_merged_bit_select_b;
    wire [6:0] i_arrayidx102_conv2d1x10_upper_bits_x_merged_bit_select_c;
    reg [0:0] redist0_sync_together135_aunroll_x_in_c0_eni21_1_tpl_1_q;
    reg [9:0] redist1_sync_together135_aunroll_x_in_c0_eni21_2_tpl_1_q;
    reg [0:0] redist2_sync_together135_aunroll_x_in_c0_eni21_3_tpl_1_q;
    reg [0:0] redist3_sync_together135_aunroll_x_in_c0_eni21_4_tpl_1_q;
    reg [31:0] redist4_sync_together135_aunroll_x_in_c0_eni21_5_tpl_1_q;
    reg [0:0] redist5_sync_together135_aunroll_x_in_c0_eni21_6_tpl_1_q;
    reg [31:0] redist6_sync_together135_aunroll_x_in_c0_eni21_7_tpl_1_q;
    reg [31:0] redist7_sync_together135_aunroll_x_in_c0_eni21_8_tpl_1_q;
    reg [31:0] redist8_sync_together135_aunroll_x_in_c0_eni21_9_tpl_1_q;
    reg [0:0] redist9_sync_together135_aunroll_x_in_c0_eni21_10_tpl_1_q;
    reg [0:0] redist10_sync_together135_aunroll_x_in_c0_eni21_11_tpl_1_q;
    reg [31:0] redist11_sync_together135_aunroll_x_in_c0_eni21_12_tpl_1_q;
    reg [31:0] redist12_sync_together135_aunroll_x_in_c0_eni21_13_tpl_2_q;
    reg [31:0] redist12_sync_together135_aunroll_x_in_c0_eni21_13_tpl_2_delay_0;
    reg [0:0] redist13_sync_together135_aunroll_x_in_c0_eni21_14_tpl_2_q;
    reg [0:0] redist13_sync_together135_aunroll_x_in_c0_eni21_14_tpl_2_delay_0;
    reg [0:0] redist14_sync_together135_aunroll_x_in_c0_eni21_15_tpl_2_q;
    reg [0:0] redist14_sync_together135_aunroll_x_in_c0_eni21_15_tpl_2_delay_0;
    reg [0:0] redist15_sync_together135_aunroll_x_in_c0_eni21_16_tpl_2_q;
    reg [0:0] redist15_sync_together135_aunroll_x_in_c0_eni21_16_tpl_2_delay_0;
    reg [32:0] redist16_sync_together135_aunroll_x_in_c0_eni21_17_tpl_2_q;
    reg [32:0] redist16_sync_together135_aunroll_x_in_c0_eni21_17_tpl_2_delay_0;
    reg [31:0] redist17_sync_together135_aunroll_x_in_c0_eni21_18_tpl_2_q;
    reg [31:0] redist17_sync_together135_aunroll_x_in_c0_eni21_18_tpl_2_delay_0;
    reg [31:0] redist18_sync_together135_aunroll_x_in_c0_eni21_19_tpl_2_q;
    reg [31:0] redist18_sync_together135_aunroll_x_in_c0_eni21_19_tpl_2_delay_0;
    reg [31:0] redist19_sync_together135_aunroll_x_in_c0_eni21_20_tpl_2_q;
    reg [31:0] redist19_sync_together135_aunroll_x_in_c0_eni21_20_tpl_2_delay_0;
    reg [0:0] redist20_sync_together135_aunroll_x_in_c0_eni21_21_tpl_2_q;
    reg [0:0] redist20_sync_together135_aunroll_x_in_c0_eni21_21_tpl_2_delay_0;
    reg [0:0] redist21_sync_together135_aunroll_x_in_i_valid_1_q;
    reg [31:0] redist22_i_llvm_fpga_pop_i32_mul49_pop26_conv2d1x138_out_data_out_1_q;
    reg [31:0] redist23_i_llvm_fpga_pop_i32_mul2155_pop31_conv2d1x144_out_data_out_1_q;
    reg [31:0] redist24_i_llvm_fpga_pop_i32_mul10058_pop32_conv2d1x146_out_data_out_1_q;
    reg [31:0] redist25_i_llvm_fpga_pop_i32_ij_068_pop1366_pop36_conv2d1x152_out_data_out_1_q;
    reg [0:0] redist26_i_llvm_fpga_pop_i1_pop29_conv2d1x140_out_data_out_1_q;
    reg [0:0] redist27_i_llvm_fpga_pop_i1_pop28_conv2d1x129_out_data_out_1_q;
    reg [0:0] redist28_i_llvm_fpga_pop_i1_pop27_conv2d1x118_out_data_out_1_q;
    reg [0:0] redist29_i_llvm_fpga_pop_i1_notcmp4361_pop33_conv2d1x148_out_data_out_1_q;
    reg [0:0] redist30_i_llvm_fpga_pop_i1_notcmp3864_pop35_conv2d1x150_out_data_out_1_q;
    reg [31:0] redist31_i_llvm_fpga_pop_f32_lm52_pop30_conv2d1x142_out_data_out_1_q;
    reg [0:0] redist32_i_llvm_fpga_pipeline_keep_going26_conv2d1x16_out_data_out_1_q;
    reg [0:0] redist33_i_llvm_fpga_pipeline_keep_going26_conv2d1x16_out_data_out_2_q;
    reg [63:0] redist34_i_ap_pop_ext7_conv2d1x114_vt_join_q_1_q;


    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist21_sync_together135_aunroll_x_in_i_valid_1(DELAY,221)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist21_sync_together135_aunroll_x_in_i_valid_1_q <= '0;
        end
        else
        begin
            redist21_sync_together135_aunroll_x_in_i_valid_1_q <= $unsigned(in_i_valid);
        end
    end

    // redist32_i_llvm_fpga_pipeline_keep_going26_conv2d1x16_out_data_out_1(DELAY,232)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist32_i_llvm_fpga_pipeline_keep_going26_conv2d1x16_out_data_out_1_q <= '0;
        end
        else
        begin
            redist32_i_llvm_fpga_pipeline_keep_going26_conv2d1x16_out_data_out_1_q <= $unsigned(i_llvm_fpga_pipeline_keep_going26_conv2d1x16_out_data_out);
        end
    end

    // leftShiftStage0Idx1Rng1_uid187_i_cleanups_shl30_conv2d1x10_shift_x(BITSELECT,186)@2
    assign leftShiftStage0Idx1Rng1_uid187_i_cleanups_shl30_conv2d1x10_shift_x_in = i_llvm_fpga_pop_i2_cleanups29_pop25_conv2d1x12_out_data_out[0:0];
    assign leftShiftStage0Idx1Rng1_uid187_i_cleanups_shl30_conv2d1x10_shift_x_b = leftShiftStage0Idx1Rng1_uid187_i_cleanups_shl30_conv2d1x10_shift_x_in[0:0];

    // leftShiftStage0Idx1_uid188_i_cleanups_shl30_conv2d1x10_shift_x(BITJOIN,187)@2
    assign leftShiftStage0Idx1_uid188_i_cleanups_shl30_conv2d1x10_shift_x_q = {leftShiftStage0Idx1Rng1_uid187_i_cleanups_shl30_conv2d1x10_shift_x_b, GND_q};

    // leftShiftStage0_uid190_i_cleanups_shl30_conv2d1x10_shift_x(MUX,189)@2
    assign leftShiftStage0_uid190_i_cleanups_shl30_conv2d1x10_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid190_i_cleanups_shl30_conv2d1x10_shift_x_s or i_llvm_fpga_pop_i2_cleanups29_pop25_conv2d1x12_out_data_out or leftShiftStage0Idx1_uid188_i_cleanups_shl30_conv2d1x10_shift_x_q)
    begin
        unique case (leftShiftStage0_uid190_i_cleanups_shl30_conv2d1x10_shift_x_s)
            1'b0 : leftShiftStage0_uid190_i_cleanups_shl30_conv2d1x10_shift_x_q = i_llvm_fpga_pop_i2_cleanups29_pop25_conv2d1x12_out_data_out;
            1'b1 : leftShiftStage0_uid190_i_cleanups_shl30_conv2d1x10_shift_x_q = leftShiftStage0Idx1_uid188_i_cleanups_shl30_conv2d1x10_shift_x_q;
            default : leftShiftStage0_uid190_i_cleanups_shl30_conv2d1x10_shift_x_q = 2'b0;
        endcase
    end

    // i_cleanups_shl30_conv2d1x15_vt_select_1(BITSELECT,57)@2
    assign i_cleanups_shl30_conv2d1x15_vt_select_1_b = leftShiftStage0_uid190_i_cleanups_shl30_conv2d1x10_shift_x_q[1:1];

    // i_cleanups_shl30_conv2d1x15_vt_join(BITJOIN,56)@2
    assign i_cleanups_shl30_conv2d1x15_vt_join_q = {i_cleanups_shl30_conv2d1x15_vt_select_1_b, GND_q};

    // i_first_cleanup_xor32_conv2d1x14(LOGICAL,60)@2
    assign i_first_cleanup_xor32_conv2d1x14_q = i_first_cleanup31_conv2d1x13_sel_x_b ^ VCC_q;

    // i_notcmp22_conv2d1x132(LOGICAL,108)@2
    assign i_notcmp22_conv2d1x132_q = i_unnamed_conv2d1x131_q ^ VCC_q;

    // i_or33_conv2d1x134(LOGICAL,109)@2
    assign i_or33_conv2d1x134_q = i_notcmp22_conv2d1x132_q | i_first_cleanup_xor32_conv2d1x14_q;

    // i_next_cleanups34_conv2d1x135(MUX,104)@2
    assign i_next_cleanups34_conv2d1x135_s = i_or33_conv2d1x134_q;
    always @(i_next_cleanups34_conv2d1x135_s or i_llvm_fpga_pop_i2_cleanups29_pop25_conv2d1x12_out_data_out or i_cleanups_shl30_conv2d1x15_vt_join_q)
    begin
        unique case (i_next_cleanups34_conv2d1x135_s)
            1'b0 : i_next_cleanups34_conv2d1x135_q = i_llvm_fpga_pop_i2_cleanups29_pop25_conv2d1x12_out_data_out;
            1'b1 : i_next_cleanups34_conv2d1x135_q = i_cleanups_shl30_conv2d1x15_vt_join_q;
            default : i_next_cleanups34_conv2d1x135_q = 2'b0;
        endcase
    end

    // i_llvm_fpga_push_i2_cleanups29_push25_conv2d1x136(BLACKBOX,95)@2
    // out out_feedback_out_25@20000000
    // out out_feedback_valid_out_25@20000000
    conv2d1x1_i_llvm_fpga_push_i2_cleanups29_push25_0 thei_llvm_fpga_push_i2_cleanups29_push25_conv2d1x136 (
        .in_data_in(i_next_cleanups34_conv2d1x135_q),
        .in_feedback_stall_in_25(i_llvm_fpga_pop_i2_cleanups29_pop25_conv2d1x12_out_feedback_stall_out_25),
        .in_keep_going26(redist32_i_llvm_fpga_pipeline_keep_going26_conv2d1x16_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist21_sync_together135_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_25(i_llvm_fpga_push_i2_cleanups29_push25_conv2d1x136_out_feedback_out_25),
        .out_feedback_valid_out_25(i_llvm_fpga_push_i2_cleanups29_push25_conv2d1x136_out_feedback_valid_out_25),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist0_sync_together135_aunroll_x_in_c0_eni21_1_tpl_1(DELAY,200)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_sync_together135_aunroll_x_in_c0_eni21_1_tpl_1_q <= '0;
        end
        else
        begin
            redist0_sync_together135_aunroll_x_in_c0_eni21_1_tpl_1_q <= $unsigned(in_c0_eni21_1_tpl);
        end
    end

    // c_i2_189(CONSTANT,41)
    assign c_i2_189_q = $unsigned(2'b01);

    // i_llvm_fpga_pop_i2_cleanups29_pop25_conv2d1x12(BLACKBOX,78)@2
    // out out_feedback_stall_out_25@20000000
    conv2d1x1_i_llvm_fpga_pop_i2_cleanups29_pop25_0 thei_llvm_fpga_pop_i2_cleanups29_pop25_conv2d1x12 (
        .in_data_in(c_i2_189_q),
        .in_dir(redist0_sync_together135_aunroll_x_in_c0_eni21_1_tpl_1_q),
        .in_feedback_in_25(i_llvm_fpga_push_i2_cleanups29_push25_conv2d1x136_out_feedback_out_25),
        .in_feedback_valid_in_25(i_llvm_fpga_push_i2_cleanups29_push25_conv2d1x136_out_feedback_valid_out_25),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist21_sync_together135_aunroll_x_in_i_valid_1_q),
        .out_data_out(i_llvm_fpga_pop_i2_cleanups29_pop25_conv2d1x12_out_data_out),
        .out_feedback_stall_out_25(i_llvm_fpga_pop_i2_cleanups29_pop25_conv2d1x12_out_feedback_stall_out_25),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_first_cleanup31_conv2d1x13_sel_x(BITSELECT,137)@2
    assign i_first_cleanup31_conv2d1x13_sel_x_b = i_llvm_fpga_pop_i2_cleanups29_pop25_conv2d1x12_out_data_out[0:0];

    // i_llvm_fpga_push_i1_push28_conv2d1x130(BLACKBOX,93)@2
    // out out_feedback_out_28@20000000
    // out out_feedback_valid_out_28@20000000
    conv2d1x1_i_llvm_fpga_push_i1_push28_0 thei_llvm_fpga_push_i1_push28_conv2d1x130 (
        .in_data_in(i_llvm_fpga_pop_i1_pop28_conv2d1x129_out_data_out),
        .in_feedback_stall_in_28(i_llvm_fpga_pop_i1_pop28_conv2d1x129_out_feedback_stall_out_28),
        .in_keep_going26(redist32_i_llvm_fpga_pipeline_keep_going26_conv2d1x16_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist21_sync_together135_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_28(i_llvm_fpga_push_i1_push28_conv2d1x130_out_feedback_out_28),
        .out_feedback_valid_out_28(i_llvm_fpga_push_i1_push28_conv2d1x130_out_feedback_valid_out_28),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist3_sync_together135_aunroll_x_in_c0_eni21_4_tpl_1(DELAY,203)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_sync_together135_aunroll_x_in_c0_eni21_4_tpl_1_q <= '0;
        end
        else
        begin
            redist3_sync_together135_aunroll_x_in_c0_eni21_4_tpl_1_q <= $unsigned(in_c0_eni21_4_tpl);
        end
    end

    // i_llvm_fpga_pop_i1_pop28_conv2d1x129(BLACKBOX,76)@2
    // out out_feedback_stall_out_28@20000000
    conv2d1x1_i_llvm_fpga_pop_i1_pop28_0 thei_llvm_fpga_pop_i1_pop28_conv2d1x129 (
        .in_data_in(redist3_sync_together135_aunroll_x_in_c0_eni21_4_tpl_1_q),
        .in_dir(redist0_sync_together135_aunroll_x_in_c0_eni21_1_tpl_1_q),
        .in_feedback_in_28(i_llvm_fpga_push_i1_push28_conv2d1x130_out_feedback_out_28),
        .in_feedback_valid_in_28(i_llvm_fpga_push_i1_push28_conv2d1x130_out_feedback_valid_out_28),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist21_sync_together135_aunroll_x_in_i_valid_1_q),
        .out_data_out(i_llvm_fpga_pop_i1_pop28_conv2d1x129_out_data_out),
        .out_feedback_stall_out_28(i_llvm_fpga_pop_i1_pop28_conv2d1x129_out_feedback_stall_out_28),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i6_196(CONSTANT,45)
    assign c_i6_196_q = $unsigned(6'b111111);

    // i_fpga_indvars_iv_next_conv2d1x127(ADD,62)@2
    assign i_fpga_indvars_iv_next_conv2d1x127_a = {1'b0, i_llvm_fpga_pop_i6_fpga_indvars_iv_pop22_conv2d1x124_out_data_out};
    assign i_fpga_indvars_iv_next_conv2d1x127_b = {1'b0, c_i6_196_q};
    assign i_fpga_indvars_iv_next_conv2d1x127_o = $unsigned(i_fpga_indvars_iv_next_conv2d1x127_a) + $unsigned(i_fpga_indvars_iv_next_conv2d1x127_b);
    assign i_fpga_indvars_iv_next_conv2d1x127_q = i_fpga_indvars_iv_next_conv2d1x127_o[6:0];

    // bgTrunc_i_fpga_indvars_iv_next_conv2d1x127_sel_x(BITSELECT,116)@2
    assign bgTrunc_i_fpga_indvars_iv_next_conv2d1x127_sel_x_b = i_fpga_indvars_iv_next_conv2d1x127_q[5:0];

    // i_llvm_fpga_push_i6_fpga_indvars_iv_push22_conv2d1x128(BLACKBOX,102)@2
    // out out_feedback_out_22@20000000
    // out out_feedback_valid_out_22@20000000
    conv2d1x1_i_llvm_fpga_push_i6_fpga_indvars_iv_push22_0 thei_llvm_fpga_push_i6_fpga_indvars_iv_push22_conv2d1x128 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next_conv2d1x127_sel_x_b),
        .in_feedback_stall_in_22(i_llvm_fpga_pop_i6_fpga_indvars_iv_pop22_conv2d1x124_out_feedback_stall_out_22),
        .in_keep_going26(redist32_i_llvm_fpga_pipeline_keep_going26_conv2d1x16_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist21_sync_together135_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_22(i_llvm_fpga_push_i6_fpga_indvars_iv_push22_conv2d1x128_out_feedback_out_22),
        .out_feedback_valid_out_22(i_llvm_fpga_push_i6_fpga_indvars_iv_push22_conv2d1x128_out_feedback_valid_out_22),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i6_1894(CONSTANT,44)
    assign c_i6_1894_q = $unsigned(6'b010010);

    // i_llvm_fpga_pop_i6_fpga_indvars_iv_pop22_conv2d1x124(BLACKBOX,85)@2
    // out out_feedback_stall_out_22@20000000
    conv2d1x1_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop22_0 thei_llvm_fpga_pop_i6_fpga_indvars_iv_pop22_conv2d1x124 (
        .in_data_in(c_i6_1894_q),
        .in_dir(redist0_sync_together135_aunroll_x_in_c0_eni21_1_tpl_1_q),
        .in_feedback_in_22(i_llvm_fpga_push_i6_fpga_indvars_iv_push22_conv2d1x128_out_feedback_out_22),
        .in_feedback_valid_in_22(i_llvm_fpga_push_i6_fpga_indvars_iv_push22_conv2d1x128_out_feedback_valid_out_22),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist21_sync_together135_aunroll_x_in_i_valid_1_q),
        .out_data_out(i_llvm_fpga_pop_i6_fpga_indvars_iv_pop22_conv2d1x124_out_data_out),
        .out_feedback_stall_out_22(i_llvm_fpga_pop_i6_fpga_indvars_iv_pop22_conv2d1x124_out_feedback_stall_out_22),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_exitcond_conv2d1x125_cmp_nsign(LOGICAL,182)@2
    assign i_exitcond_conv2d1x125_cmp_nsign_q = $unsigned(~ (i_llvm_fpga_pop_i6_fpga_indvars_iv_pop22_conv2d1x124_out_data_out[5:5]));

    // i_unnamed_conv2d1x131(LOGICAL,110)@2
    assign i_unnamed_conv2d1x131_q = i_exitcond_conv2d1x125_cmp_nsign_q & i_llvm_fpga_pop_i1_pop28_conv2d1x129_out_data_out;

    // i_llvm_fpga_push_i1_notexitcond36_conv2d1x133(BLACKBOX,91)@2
    // out out_feedback_out_5@20000000
    // out out_feedback_valid_out_5@20000000
    conv2d1x1_i_llvm_fpga_push_i1_notexitcond36_0 thei_llvm_fpga_push_i1_notexitcond36_conv2d1x133 (
        .in_data_in(i_unnamed_conv2d1x131_q),
        .in_feedback_stall_in_5(i_llvm_fpga_pipeline_keep_going26_conv2d1x16_out_not_exitcond_stall_out),
        .in_first_cleanup31(i_first_cleanup31_conv2d1x13_sel_x_b),
        .in_stall_in(GND_q),
        .in_valid_in(redist21_sync_together135_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_5(i_llvm_fpga_push_i1_notexitcond36_conv2d1x133_out_feedback_out_5),
        .out_feedback_valid_out_5(i_llvm_fpga_push_i1_notexitcond36_conv2d1x133_out_feedback_valid_out_5),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg3(REG,149)@1 + 1
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

    // rightShiftStage0Idx1Rng1_uid194_i_next_initerations25_conv2d1x10_shift_x(BITSELECT,193)@2
    assign rightShiftStage0Idx1Rng1_uid194_i_next_initerations25_conv2d1x10_shift_x_b = i_llvm_fpga_pop_i2_initerations24_pop24_conv2d1x17_out_data_out[1:1];

    // rightShiftStage0Idx1_uid196_i_next_initerations25_conv2d1x10_shift_x(BITJOIN,195)@2
    assign rightShiftStage0Idx1_uid196_i_next_initerations25_conv2d1x10_shift_x_q = {GND_q, rightShiftStage0Idx1Rng1_uid194_i_next_initerations25_conv2d1x10_shift_x_b};

    // valid_fanout_reg1(REG,147)@1 + 1
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

    // valid_fanout_reg2(REG,148)@1 + 1
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

    // i_llvm_fpga_push_i2_initerations24_push24_conv2d1x19(BLACKBOX,96)@2
    // out out_feedback_out_24@20000000
    // out out_feedback_valid_out_24@20000000
    conv2d1x1_i_llvm_fpga_push_i2_initerations24_push24_0 thei_llvm_fpga_push_i2_initerations24_push24_conv2d1x19 (
        .in_data_in(i_next_initerations25_conv2d1x18_vt_join_q),
        .in_feedback_stall_in_24(i_llvm_fpga_pop_i2_initerations24_pop24_conv2d1x17_out_feedback_stall_out_24),
        .in_keep_going26(redist32_i_llvm_fpga_pipeline_keep_going26_conv2d1x16_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(),
        .out_feedback_out_24(i_llvm_fpga_push_i2_initerations24_push24_conv2d1x19_out_feedback_out_24),
        .out_feedback_valid_out_24(i_llvm_fpga_push_i2_initerations24_push24_conv2d1x19_out_feedback_valid_out_24),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i2_initerations24_pop24_conv2d1x17(BLACKBOX,79)@2
    // out out_feedback_stall_out_24@20000000
    conv2d1x1_i_llvm_fpga_pop_i2_initerations24_pop24_0 thei_llvm_fpga_pop_i2_initerations24_pop24_conv2d1x17 (
        .in_data_in(c_i2_189_q),
        .in_dir(redist0_sync_together135_aunroll_x_in_c0_eni21_1_tpl_1_q),
        .in_feedback_in_24(i_llvm_fpga_push_i2_initerations24_push24_conv2d1x19_out_feedback_out_24),
        .in_feedback_valid_in_24(i_llvm_fpga_push_i2_initerations24_push24_conv2d1x19_out_feedback_valid_out_24),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_data_out(i_llvm_fpga_pop_i2_initerations24_pop24_conv2d1x17_out_data_out),
        .out_feedback_stall_out_24(i_llvm_fpga_pop_i2_initerations24_pop24_conv2d1x17_out_feedback_stall_out_24),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // rightShiftStage0_uid198_i_next_initerations25_conv2d1x10_shift_x(MUX,197)@2
    assign rightShiftStage0_uid198_i_next_initerations25_conv2d1x10_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid198_i_next_initerations25_conv2d1x10_shift_x_s or i_llvm_fpga_pop_i2_initerations24_pop24_conv2d1x17_out_data_out or rightShiftStage0Idx1_uid196_i_next_initerations25_conv2d1x10_shift_x_q)
    begin
        unique case (rightShiftStage0_uid198_i_next_initerations25_conv2d1x10_shift_x_s)
            1'b0 : rightShiftStage0_uid198_i_next_initerations25_conv2d1x10_shift_x_q = i_llvm_fpga_pop_i2_initerations24_pop24_conv2d1x17_out_data_out;
            1'b1 : rightShiftStage0_uid198_i_next_initerations25_conv2d1x10_shift_x_q = rightShiftStage0Idx1_uid196_i_next_initerations25_conv2d1x10_shift_x_q;
            default : rightShiftStage0_uid198_i_next_initerations25_conv2d1x10_shift_x_q = 2'b0;
        endcase
    end

    // i_next_initerations25_conv2d1x18_vt_select_0(BITSELECT,107)@2
    assign i_next_initerations25_conv2d1x18_vt_select_0_b = rightShiftStage0_uid198_i_next_initerations25_conv2d1x10_shift_x_q[0:0];

    // i_next_initerations25_conv2d1x18_vt_join(BITJOIN,106)@2
    assign i_next_initerations25_conv2d1x18_vt_join_q = {GND_q, i_next_initerations25_conv2d1x18_vt_select_0_b};

    // i_last_initeration27_conv2d1x110_sel_x(BITSELECT,139)@2
    assign i_last_initeration27_conv2d1x110_sel_x_b = i_next_initerations25_conv2d1x18_vt_join_q[0:0];

    // i_llvm_fpga_push_i1_lastiniteration28_conv2d1x111(BLACKBOX,88)@2
    // out out_feedback_out_4@20000000
    // out out_feedback_valid_out_4@20000000
    conv2d1x1_i_llvm_fpga_push_i1_lastiniteration28_0 thei_llvm_fpga_push_i1_lastiniteration28_conv2d1x111 (
        .in_data_in(i_last_initeration27_conv2d1x110_sel_x_b),
        .in_feedback_stall_in_4(i_llvm_fpga_pipeline_keep_going26_conv2d1x16_out_initeration_stall_out),
        .in_keep_going26(redist32_i_llvm_fpga_pipeline_keep_going26_conv2d1x16_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_data_out(),
        .out_feedback_out_4(i_llvm_fpga_push_i1_lastiniteration28_conv2d1x111_out_feedback_out_4),
        .out_feedback_valid_out_4(i_llvm_fpga_push_i1_lastiniteration28_conv2d1x111_out_feedback_valid_out_4),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going26_conv2d1x16(BLACKBOX,70)@1
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    conv2d1x1_i_llvm_fpga_pipeline_keep_going26_0 thei_llvm_fpga_pipeline_keep_going26_conv2d1x16 (
        .in_data_in(in_c0_eni21_1_tpl),
        .in_initeration_in(i_llvm_fpga_push_i1_lastiniteration28_conv2d1x111_out_feedback_out_4),
        .in_initeration_valid_in(i_llvm_fpga_push_i1_lastiniteration28_conv2d1x111_out_feedback_valid_out_4),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond36_conv2d1x133_out_feedback_out_5),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond36_conv2d1x133_out_feedback_valid_out_5),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(i_llvm_fpga_pipeline_keep_going26_conv2d1x16_out_data_out),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going26_conv2d1x16_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going26_conv2d1x16_out_exiting_valid_out),
        .out_initeration_stall_out(i_llvm_fpga_pipeline_keep_going26_conv2d1x16_out_initeration_stall_out),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going26_conv2d1x16_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going26_conv2d1x16_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,47)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going26_conv2d1x16_exiting_valid_out = i_llvm_fpga_pipeline_keep_going26_conv2d1x16_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going26_conv2d1x16_exiting_stall_out = i_llvm_fpga_pipeline_keep_going26_conv2d1x16_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,113)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going26_conv2d1x16_out_pipeline_valid_out;

    // c_float_0_000000e_0092(FLOATCONSTANT,5)
    assign c_float_0_000000e_0092_q = $unsigned(32'b00000000000000000000000000000000);

    // valid_fanout_reg9(REG,155)@1 + 1
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

    // valid_fanout_reg7(REG,153)@1 + 1
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

    // valid_fanout_reg8(REG,154)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg8_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg8_q <= $unsigned(redist21_sync_together135_aunroll_x_in_i_valid_1_q);
        end
    end

    // redist33_i_llvm_fpga_pipeline_keep_going26_conv2d1x16_out_data_out_2(DELAY,233)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist33_i_llvm_fpga_pipeline_keep_going26_conv2d1x16_out_data_out_2_q <= '0;
        end
        else
        begin
            redist33_i_llvm_fpga_pipeline_keep_going26_conv2d1x16_out_data_out_2_q <= $unsigned(redist32_i_llvm_fpga_pipeline_keep_going26_conv2d1x16_out_data_out_1_q);
        end
    end

    // redist28_i_llvm_fpga_pop_i1_pop27_conv2d1x118_out_data_out_1(DELAY,228)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist28_i_llvm_fpga_pop_i1_pop27_conv2d1x118_out_data_out_1_q <= '0;
        end
        else
        begin
            redist28_i_llvm_fpga_pop_i1_pop27_conv2d1x118_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i1_pop27_conv2d1x118_out_data_out);
        end
    end

    // i_llvm_fpga_push_i1_push27_conv2d1x119(BLACKBOX,92)@3
    // out out_feedback_out_27@20000000
    // out out_feedback_valid_out_27@20000000
    conv2d1x1_i_llvm_fpga_push_i1_push27_0 thei_llvm_fpga_push_i1_push27_conv2d1x119 (
        .in_data_in(redist28_i_llvm_fpga_pop_i1_pop27_conv2d1x118_out_data_out_1_q),
        .in_feedback_stall_in_27(i_llvm_fpga_pop_i1_pop27_conv2d1x118_out_feedback_stall_out_27),
        .in_keep_going26(redist33_i_llvm_fpga_pipeline_keep_going26_conv2d1x16_out_data_out_2_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg8_q),
        .out_data_out(),
        .out_feedback_out_27(i_llvm_fpga_push_i1_push27_conv2d1x119_out_feedback_out_27),
        .out_feedback_valid_out_27(i_llvm_fpga_push_i1_push27_conv2d1x119_out_feedback_valid_out_27),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist2_sync_together135_aunroll_x_in_c0_eni21_3_tpl_1(DELAY,202)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_sync_together135_aunroll_x_in_c0_eni21_3_tpl_1_q <= '0;
        end
        else
        begin
            redist2_sync_together135_aunroll_x_in_c0_eni21_3_tpl_1_q <= $unsigned(in_c0_eni21_3_tpl);
        end
    end

    // i_llvm_fpga_pop_i1_pop27_conv2d1x118(BLACKBOX,75)@2
    // out out_feedback_stall_out_27@20000000
    conv2d1x1_i_llvm_fpga_pop_i1_pop27_0 thei_llvm_fpga_pop_i1_pop27_conv2d1x118 (
        .in_data_in(redist2_sync_together135_aunroll_x_in_c0_eni21_3_tpl_1_q),
        .in_dir(redist0_sync_together135_aunroll_x_in_c0_eni21_1_tpl_1_q),
        .in_feedback_in_27(i_llvm_fpga_push_i1_push27_conv2d1x119_out_feedback_out_27),
        .in_feedback_valid_in_27(i_llvm_fpga_push_i1_push27_conv2d1x119_out_feedback_valid_out_27),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg7_q),
        .out_data_out(i_llvm_fpga_pop_i1_pop27_conv2d1x118_out_data_out),
        .out_feedback_stall_out_27(i_llvm_fpga_pop_i1_pop27_conv2d1x118_out_feedback_stall_out_27),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_first_cleanup_xor32_or_conv2d1x120(LOGICAL,61)@2
    assign i_first_cleanup_xor32_or_conv2d1x120_q = i_llvm_fpga_pop_i1_pop27_conv2d1x118_out_data_out | i_first_cleanup_xor32_conv2d1x14_q;

    // c_conv2d1x1_shift_reg_pmem(CONSTANT,4)
    assign c_conv2d1x1_shift_reg_pmem_q = $unsigned(64'b0100000001000000000000000000000000000000000000000000000000000000);

    // i_arrayidx102_conv2d1x10_upper_bits_x_merged_bit_select(BITSELECT,199)@2
    assign i_arrayidx102_conv2d1x10_upper_bits_x_merged_bit_select_b = c_conv2d1x1_shift_reg_pmem_q[63:7];
    assign i_arrayidx102_conv2d1x10_upper_bits_x_merged_bit_select_c = c_conv2d1x1_shift_reg_pmem_q[6:0];

    // c_i32_091(CONSTANT,42)
    assign c_i32_091_q = $unsigned(32'b00000000000000000000000000000000);

    // valid_fanout_reg6(REG,152)@1 + 1
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

    // valid_fanout_reg10(REG,156)@1 + 1
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

    // c_i32_193(CONSTANT,43)
    assign c_i32_193_q = $unsigned(32'b00000000000000000000000000000001);

    // i_inc_conv2d1x122(ADD,67)@2
    assign i_inc_conv2d1x122_a = {1'b0, i_llvm_fpga_pop_i32_i_061_pop23_conv2d1x115_out_data_out};
    assign i_inc_conv2d1x122_b = {1'b0, c_i32_193_q};
    assign i_inc_conv2d1x122_o = $unsigned(i_inc_conv2d1x122_a) + $unsigned(i_inc_conv2d1x122_b);
    assign i_inc_conv2d1x122_q = i_inc_conv2d1x122_o[32:0];

    // bgTrunc_i_inc_conv2d1x122_sel_x(BITSELECT,117)@2
    assign bgTrunc_i_inc_conv2d1x122_sel_x_b = i_inc_conv2d1x122_q[31:0];

    // i_llvm_fpga_push_i32_i_061_push23_conv2d1x123(BLACKBOX,97)@2
    // out out_feedback_out_23@20000000
    // out out_feedback_valid_out_23@20000000
    conv2d1x1_i_llvm_fpga_push_i32_i_061_push23_0 thei_llvm_fpga_push_i32_i_061_push23_conv2d1x123 (
        .in_data_in(bgTrunc_i_inc_conv2d1x122_sel_x_b),
        .in_feedback_stall_in_23(i_llvm_fpga_pop_i32_i_061_pop23_conv2d1x115_out_feedback_stall_out_23),
        .in_keep_going26(redist32_i_llvm_fpga_pipeline_keep_going26_conv2d1x16_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg10_q),
        .out_data_out(),
        .out_feedback_out_23(i_llvm_fpga_push_i32_i_061_push23_conv2d1x123_out_feedback_out_23),
        .out_feedback_valid_out_23(i_llvm_fpga_push_i32_i_061_push23_conv2d1x123_out_feedback_valid_out_23),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_i_061_pop23_conv2d1x115(BLACKBOX,80)@2
    // out out_feedback_stall_out_23@20000000
    conv2d1x1_i_llvm_fpga_pop_i32_i_061_pop23_0 thei_llvm_fpga_pop_i32_i_061_pop23_conv2d1x115 (
        .in_data_in(c_i32_091_q),
        .in_dir(redist0_sync_together135_aunroll_x_in_c0_eni21_1_tpl_1_q),
        .in_feedback_in_23(i_llvm_fpga_push_i32_i_061_push23_conv2d1x123_out_feedback_out_23),
        .in_feedback_valid_in_23(i_llvm_fpga_push_i32_i_061_push23_conv2d1x123_out_feedback_valid_out_23),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg6_q),
        .out_data_out(i_llvm_fpga_pop_i32_i_061_pop23_conv2d1x115_out_data_out),
        .out_feedback_stall_out_23(i_llvm_fpga_pop_i32_i_061_pop23_conv2d1x115_out_feedback_stall_out_23),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_idxprom9_conv2d1x116_sel_x(BITSELECT,138)@2
    assign i_idxprom9_conv2d1x116_sel_x_b = {32'b00000000000000000000000000000000, i_llvm_fpga_pop_i32_i_061_pop23_conv2d1x115_out_data_out[31:0]};

    // i_idxprom9_conv2d1x116_vt_select_31(BITSELECT,66)@2
    assign i_idxprom9_conv2d1x116_vt_select_31_b = i_idxprom9_conv2d1x116_sel_x_b[31:0];

    // i_idxprom9_conv2d1x116_vt_join(BITJOIN,65)@2
    assign i_idxprom9_conv2d1x116_vt_join_q = {c_i32_091_q, i_idxprom9_conv2d1x116_vt_select_31_b};

    // i_arrayidx102_conv2d1x10_dupName_0_trunc_sel_x(BITSELECT,131)@2
    assign i_arrayidx102_conv2d1x10_dupName_0_trunc_sel_x_b = i_idxprom9_conv2d1x116_vt_join_q[6:0];

    // i_arrayidx102_conv2d1x10_narrow_x(BITSELECT,124)@2
    assign i_arrayidx102_conv2d1x10_narrow_x_b = i_arrayidx102_conv2d1x10_dupName_0_trunc_sel_x_b[4:0];

    // i_arrayidx102_conv2d1x10_shift_join_x(BITJOIN,125)@2
    assign i_arrayidx102_conv2d1x10_shift_join_x_q = {i_arrayidx102_conv2d1x10_narrow_x_b, i_arrayidx102_conv2d1x117_vt_const_1_q};

    // i_arrayidx102_conv2d1x10_add_x(ADD,121)@2
    assign i_arrayidx102_conv2d1x10_add_x_a = {1'b0, i_arrayidx102_conv2d1x10_upper_bits_x_merged_bit_select_c};
    assign i_arrayidx102_conv2d1x10_add_x_b = {1'b0, i_arrayidx102_conv2d1x10_shift_join_x_q};
    assign i_arrayidx102_conv2d1x10_add_x_o = $unsigned(i_arrayidx102_conv2d1x10_add_x_a) + $unsigned(i_arrayidx102_conv2d1x10_add_x_b);
    assign i_arrayidx102_conv2d1x10_add_x_q = i_arrayidx102_conv2d1x10_add_x_o[7:0];

    // i_arrayidx102_conv2d1x10_dupName_2_trunc_sel_x(BITSELECT,132)@2
    assign i_arrayidx102_conv2d1x10_dupName_2_trunc_sel_x_b = i_arrayidx102_conv2d1x10_add_x_q[6:0];

    // i_arrayidx102_conv2d1x10_append_upper_bits_x(BITJOIN,122)@2
    assign i_arrayidx102_conv2d1x10_append_upper_bits_x_q = {i_arrayidx102_conv2d1x10_upper_bits_x_merged_bit_select_b, i_arrayidx102_conv2d1x10_dupName_2_trunc_sel_x_b};

    // i_arrayidx102_conv2d1x117_vt_select_63(BITSELECT,54)@2
    assign i_arrayidx102_conv2d1x117_vt_select_63_b = i_arrayidx102_conv2d1x10_append_upper_bits_x_q[63:2];

    // i_arrayidx102_conv2d1x117_vt_const_1(CONSTANT,52)
    assign i_arrayidx102_conv2d1x117_vt_const_1_q = $unsigned(2'b00);

    // i_arrayidx102_conv2d1x117_vt_join(BITJOIN,53)@2
    assign i_arrayidx102_conv2d1x117_vt_join_q = {i_arrayidx102_conv2d1x117_vt_select_63_b, i_arrayidx102_conv2d1x117_vt_const_1_q};

    // i_ap_pop_ext7_conv2d1x114_vt_const_63(CONSTANT,49)
    assign i_ap_pop_ext7_conv2d1x114_vt_const_63_q = $unsigned(54'b000000000000000000000000000000000000000000000000000000);

    // valid_fanout_reg4(REG,150)@1 + 1
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

    // valid_fanout_reg5(REG,151)@1 + 1
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

    // i_llvm_fpga_push_i10_ap_pop63_push34_conv2d1x113(BLACKBOX,87)@2
    // out out_feedback_out_34@20000000
    // out out_feedback_valid_out_34@20000000
    conv2d1x1_i_llvm_fpga_push_i10_ap_pop63_push34_0 thei_llvm_fpga_push_i10_ap_pop63_push34_conv2d1x113 (
        .in_data_in(i_llvm_fpga_pop_i10_ap_pop63_pop34_conv2d1x112_out_data_out),
        .in_feedback_stall_in_34(i_llvm_fpga_pop_i10_ap_pop63_pop34_conv2d1x112_out_feedback_stall_out_34),
        .in_keep_going26(redist32_i_llvm_fpga_pipeline_keep_going26_conv2d1x16_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_data_out(),
        .out_feedback_out_34(i_llvm_fpga_push_i10_ap_pop63_push34_conv2d1x113_out_feedback_out_34),
        .out_feedback_valid_out_34(i_llvm_fpga_push_i10_ap_pop63_push34_conv2d1x113_out_feedback_valid_out_34),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist1_sync_together135_aunroll_x_in_c0_eni21_2_tpl_1(DELAY,201)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together135_aunroll_x_in_c0_eni21_2_tpl_1_q <= '0;
        end
        else
        begin
            redist1_sync_together135_aunroll_x_in_c0_eni21_2_tpl_1_q <= $unsigned(in_c0_eni21_2_tpl);
        end
    end

    // i_llvm_fpga_pop_i10_ap_pop63_pop34_conv2d1x112(BLACKBOX,72)@2
    // out out_feedback_stall_out_34@20000000
    conv2d1x1_i_llvm_fpga_pop_i10_ap_pop63_pop34_0 thei_llvm_fpga_pop_i10_ap_pop63_pop34_conv2d1x112 (
        .in_data_in(redist1_sync_together135_aunroll_x_in_c0_eni21_2_tpl_1_q),
        .in_dir(redist0_sync_together135_aunroll_x_in_c0_eni21_1_tpl_1_q),
        .in_feedback_in_34(i_llvm_fpga_push_i10_ap_pop63_push34_conv2d1x113_out_feedback_out_34),
        .in_feedback_valid_in_34(i_llvm_fpga_push_i10_ap_pop63_push34_conv2d1x113_out_feedback_valid_out_34),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_data_out(i_llvm_fpga_pop_i10_ap_pop63_pop34_conv2d1x112_out_data_out),
        .out_feedback_stall_out_34(i_llvm_fpga_pop_i10_ap_pop63_pop34_conv2d1x112_out_feedback_stall_out_34),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_ap_pop_ext7_conv2d1x114_sel_x(BITSELECT,120)@2
    assign i_ap_pop_ext7_conv2d1x114_sel_x_b = {54'b000000000000000000000000000000000000000000000000000000, i_llvm_fpga_pop_i10_ap_pop63_pop34_conv2d1x112_out_data_out[9:0]};

    // i_ap_pop_ext7_conv2d1x114_vt_select_9(BITSELECT,51)@2
    assign i_ap_pop_ext7_conv2d1x114_vt_select_9_b = i_ap_pop_ext7_conv2d1x114_sel_x_b[9:0];

    // i_ap_pop_ext7_conv2d1x114_vt_join(BITJOIN,50)@2
    assign i_ap_pop_ext7_conv2d1x114_vt_join_q = {i_ap_pop_ext7_conv2d1x114_vt_const_63_q, i_ap_pop_ext7_conv2d1x114_vt_select_9_b};

    // i_llvm_fpga_mem_unnamed_conv2d1x115_conv2d1x121(BLACKBOX,69)@2
    // out out_o_stall@3
    // out out_o_valid@3
    // out out_unnamed_conv2d1x115_conv2d1x1_avm_address@20000000
    // out out_unnamed_conv2d1x115_conv2d1x1_avm_burstcount@20000000
    // out out_unnamed_conv2d1x115_conv2d1x1_avm_byteenable@20000000
    // out out_unnamed_conv2d1x115_conv2d1x1_avm_enable@20000000
    // out out_unnamed_conv2d1x115_conv2d1x1_avm_read@20000000
    // out out_unnamed_conv2d1x115_conv2d1x1_avm_write@20000000
    // out out_unnamed_conv2d1x115_conv2d1x1_avm_writedata@20000000
    conv2d1x1_i_llvm_fpga_mem_unnamed_15_conv2d1x10 thei_llvm_fpga_mem_unnamed_conv2d1x115_conv2d1x121 (
        .in_AddrOffset(i_ap_pop_ext7_conv2d1x114_vt_join_q),
        .in_flush(in_flush),
        .in_i_address(i_arrayidx102_conv2d1x117_vt_join_q),
        .in_i_predicate(i_first_cleanup_xor32_or_conv2d1x120_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg9_q),
        .in_i_writedata(c_float_0_000000e_0092_q),
        .in_unnamed_conv2d1x115_conv2d1x1_avm_readdata(in_unnamed_conv2d1x115_conv2d1x1_avm_readdata),
        .in_unnamed_conv2d1x115_conv2d1x1_avm_readdatavalid(in_unnamed_conv2d1x115_conv2d1x1_avm_readdatavalid),
        .in_unnamed_conv2d1x115_conv2d1x1_avm_waitrequest(in_unnamed_conv2d1x115_conv2d1x1_avm_waitrequest),
        .in_unnamed_conv2d1x115_conv2d1x1_avm_writeack(in_unnamed_conv2d1x115_conv2d1x1_avm_writeack),
        .out_o_stall(),
        .out_o_valid(),
        .out_unnamed_conv2d1x115_conv2d1x1_avm_address(i_llvm_fpga_mem_unnamed_conv2d1x115_conv2d1x121_out_unnamed_conv2d1x115_conv2d1x1_avm_address),
        .out_unnamed_conv2d1x115_conv2d1x1_avm_burstcount(i_llvm_fpga_mem_unnamed_conv2d1x115_conv2d1x121_out_unnamed_conv2d1x115_conv2d1x1_avm_burstcount),
        .out_unnamed_conv2d1x115_conv2d1x1_avm_byteenable(i_llvm_fpga_mem_unnamed_conv2d1x115_conv2d1x121_out_unnamed_conv2d1x115_conv2d1x1_avm_byteenable),
        .out_unnamed_conv2d1x115_conv2d1x1_avm_enable(i_llvm_fpga_mem_unnamed_conv2d1x115_conv2d1x121_out_unnamed_conv2d1x115_conv2d1x1_avm_enable),
        .out_unnamed_conv2d1x115_conv2d1x1_avm_read(i_llvm_fpga_mem_unnamed_conv2d1x115_conv2d1x121_out_unnamed_conv2d1x115_conv2d1x1_avm_read),
        .out_unnamed_conv2d1x115_conv2d1x1_avm_write(i_llvm_fpga_mem_unnamed_conv2d1x115_conv2d1x121_out_unnamed_conv2d1x115_conv2d1x1_avm_write),
        .out_unnamed_conv2d1x115_conv2d1x1_avm_writedata(i_llvm_fpga_mem_unnamed_conv2d1x115_conv2d1x121_out_unnamed_conv2d1x115_conv2d1x1_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_ext_sig_sync_out_x(GPOUT,119)
    assign out_unnamed_conv2d1x115_conv2d1x1_avm_address = i_llvm_fpga_mem_unnamed_conv2d1x115_conv2d1x121_out_unnamed_conv2d1x115_conv2d1x1_avm_address;
    assign out_unnamed_conv2d1x115_conv2d1x1_avm_enable = i_llvm_fpga_mem_unnamed_conv2d1x115_conv2d1x121_out_unnamed_conv2d1x115_conv2d1x1_avm_enable;
    assign out_unnamed_conv2d1x115_conv2d1x1_avm_read = i_llvm_fpga_mem_unnamed_conv2d1x115_conv2d1x121_out_unnamed_conv2d1x115_conv2d1x1_avm_read;
    assign out_unnamed_conv2d1x115_conv2d1x1_avm_write = i_llvm_fpga_mem_unnamed_conv2d1x115_conv2d1x121_out_unnamed_conv2d1x115_conv2d1x1_avm_write;
    assign out_unnamed_conv2d1x115_conv2d1x1_avm_writedata = i_llvm_fpga_mem_unnamed_conv2d1x115_conv2d1x121_out_unnamed_conv2d1x115_conv2d1x1_avm_writedata;
    assign out_unnamed_conv2d1x115_conv2d1x1_avm_byteenable = i_llvm_fpga_mem_unnamed_conv2d1x115_conv2d1x121_out_unnamed_conv2d1x115_conv2d1x1_avm_byteenable;
    assign out_unnamed_conv2d1x115_conv2d1x1_avm_burstcount = i_llvm_fpga_mem_unnamed_conv2d1x115_conv2d1x121_out_unnamed_conv2d1x115_conv2d1x1_avm_burstcount;

    // valid_fanout_reg0(REG,146)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist21_sync_together135_aunroll_x_in_i_valid_1_q);
        end
    end

    // redist20_sync_together135_aunroll_x_in_c0_eni21_21_tpl_2(DELAY,220)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist20_sync_together135_aunroll_x_in_c0_eni21_21_tpl_2_delay_0 <= '0;
            redist20_sync_together135_aunroll_x_in_c0_eni21_21_tpl_2_q <= '0;
        end
        else
        begin
            redist20_sync_together135_aunroll_x_in_c0_eni21_21_tpl_2_delay_0 <= $unsigned(in_c0_eni21_21_tpl);
            redist20_sync_together135_aunroll_x_in_c0_eni21_21_tpl_2_q <= redist20_sync_together135_aunroll_x_in_c0_eni21_21_tpl_2_delay_0;
        end
    end

    // redist19_sync_together135_aunroll_x_in_c0_eni21_20_tpl_2(DELAY,219)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist19_sync_together135_aunroll_x_in_c0_eni21_20_tpl_2_delay_0 <= '0;
            redist19_sync_together135_aunroll_x_in_c0_eni21_20_tpl_2_q <= '0;
        end
        else
        begin
            redist19_sync_together135_aunroll_x_in_c0_eni21_20_tpl_2_delay_0 <= $unsigned(in_c0_eni21_20_tpl);
            redist19_sync_together135_aunroll_x_in_c0_eni21_20_tpl_2_q <= redist19_sync_together135_aunroll_x_in_c0_eni21_20_tpl_2_delay_0;
        end
    end

    // redist18_sync_together135_aunroll_x_in_c0_eni21_19_tpl_2(DELAY,218)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist18_sync_together135_aunroll_x_in_c0_eni21_19_tpl_2_delay_0 <= '0;
            redist18_sync_together135_aunroll_x_in_c0_eni21_19_tpl_2_q <= '0;
        end
        else
        begin
            redist18_sync_together135_aunroll_x_in_c0_eni21_19_tpl_2_delay_0 <= $unsigned(in_c0_eni21_19_tpl);
            redist18_sync_together135_aunroll_x_in_c0_eni21_19_tpl_2_q <= redist18_sync_together135_aunroll_x_in_c0_eni21_19_tpl_2_delay_0;
        end
    end

    // redist17_sync_together135_aunroll_x_in_c0_eni21_18_tpl_2(DELAY,217)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist17_sync_together135_aunroll_x_in_c0_eni21_18_tpl_2_delay_0 <= '0;
            redist17_sync_together135_aunroll_x_in_c0_eni21_18_tpl_2_q <= '0;
        end
        else
        begin
            redist17_sync_together135_aunroll_x_in_c0_eni21_18_tpl_2_delay_0 <= $unsigned(in_c0_eni21_18_tpl);
            redist17_sync_together135_aunroll_x_in_c0_eni21_18_tpl_2_q <= redist17_sync_together135_aunroll_x_in_c0_eni21_18_tpl_2_delay_0;
        end
    end

    // redist16_sync_together135_aunroll_x_in_c0_eni21_17_tpl_2(DELAY,216)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist16_sync_together135_aunroll_x_in_c0_eni21_17_tpl_2_delay_0 <= '0;
            redist16_sync_together135_aunroll_x_in_c0_eni21_17_tpl_2_q <= '0;
        end
        else
        begin
            redist16_sync_together135_aunroll_x_in_c0_eni21_17_tpl_2_delay_0 <= $unsigned(in_c0_eni21_17_tpl);
            redist16_sync_together135_aunroll_x_in_c0_eni21_17_tpl_2_q <= redist16_sync_together135_aunroll_x_in_c0_eni21_17_tpl_2_delay_0;
        end
    end

    // redist15_sync_together135_aunroll_x_in_c0_eni21_16_tpl_2(DELAY,215)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist15_sync_together135_aunroll_x_in_c0_eni21_16_tpl_2_delay_0 <= '0;
            redist15_sync_together135_aunroll_x_in_c0_eni21_16_tpl_2_q <= '0;
        end
        else
        begin
            redist15_sync_together135_aunroll_x_in_c0_eni21_16_tpl_2_delay_0 <= $unsigned(in_c0_eni21_16_tpl);
            redist15_sync_together135_aunroll_x_in_c0_eni21_16_tpl_2_q <= redist15_sync_together135_aunroll_x_in_c0_eni21_16_tpl_2_delay_0;
        end
    end

    // redist14_sync_together135_aunroll_x_in_c0_eni21_15_tpl_2(DELAY,214)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_sync_together135_aunroll_x_in_c0_eni21_15_tpl_2_delay_0 <= '0;
            redist14_sync_together135_aunroll_x_in_c0_eni21_15_tpl_2_q <= '0;
        end
        else
        begin
            redist14_sync_together135_aunroll_x_in_c0_eni21_15_tpl_2_delay_0 <= $unsigned(in_c0_eni21_15_tpl);
            redist14_sync_together135_aunroll_x_in_c0_eni21_15_tpl_2_q <= redist14_sync_together135_aunroll_x_in_c0_eni21_15_tpl_2_delay_0;
        end
    end

    // redist13_sync_together135_aunroll_x_in_c0_eni21_14_tpl_2(DELAY,213)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_sync_together135_aunroll_x_in_c0_eni21_14_tpl_2_delay_0 <= '0;
            redist13_sync_together135_aunroll_x_in_c0_eni21_14_tpl_2_q <= '0;
        end
        else
        begin
            redist13_sync_together135_aunroll_x_in_c0_eni21_14_tpl_2_delay_0 <= $unsigned(in_c0_eni21_14_tpl);
            redist13_sync_together135_aunroll_x_in_c0_eni21_14_tpl_2_q <= redist13_sync_together135_aunroll_x_in_c0_eni21_14_tpl_2_delay_0;
        end
    end

    // redist12_sync_together135_aunroll_x_in_c0_eni21_13_tpl_2(DELAY,212)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_sync_together135_aunroll_x_in_c0_eni21_13_tpl_2_delay_0 <= '0;
            redist12_sync_together135_aunroll_x_in_c0_eni21_13_tpl_2_q <= '0;
        end
        else
        begin
            redist12_sync_together135_aunroll_x_in_c0_eni21_13_tpl_2_delay_0 <= $unsigned(in_c0_eni21_13_tpl);
            redist12_sync_together135_aunroll_x_in_c0_eni21_13_tpl_2_q <= redist12_sync_together135_aunroll_x_in_c0_eni21_13_tpl_2_delay_0;
        end
    end

    // valid_fanout_reg25(REG,171)@1 + 1
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

    // valid_fanout_reg26(REG,172)@1 + 1
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

    // i_llvm_fpga_push_i32_ij_068_pop1366_push36_conv2d1x153(BLACKBOX,98)@2
    // out out_feedback_out_36@20000000
    // out out_feedback_valid_out_36@20000000
    conv2d1x1_i_llvm_fpga_push_i32_ij_068_pop1366_push36_0 thei_llvm_fpga_push_i32_ij_068_pop1366_push36_conv2d1x153 (
        .in_data_in(i_llvm_fpga_pop_i32_ij_068_pop1366_pop36_conv2d1x152_out_data_out),
        .in_feedback_stall_in_36(i_llvm_fpga_pop_i32_ij_068_pop1366_pop36_conv2d1x152_out_feedback_stall_out_36),
        .in_keep_going26(redist32_i_llvm_fpga_pipeline_keep_going26_conv2d1x16_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg26_q),
        .out_data_out(),
        .out_feedback_out_36(i_llvm_fpga_push_i32_ij_068_pop1366_push36_conv2d1x153_out_feedback_out_36),
        .out_feedback_valid_out_36(i_llvm_fpga_push_i32_ij_068_pop1366_push36_conv2d1x153_out_feedback_valid_out_36),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist11_sync_together135_aunroll_x_in_c0_eni21_12_tpl_1(DELAY,211)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_sync_together135_aunroll_x_in_c0_eni21_12_tpl_1_q <= '0;
        end
        else
        begin
            redist11_sync_together135_aunroll_x_in_c0_eni21_12_tpl_1_q <= $unsigned(in_c0_eni21_12_tpl);
        end
    end

    // i_llvm_fpga_pop_i32_ij_068_pop1366_pop36_conv2d1x152(BLACKBOX,81)@2
    // out out_feedback_stall_out_36@20000000
    conv2d1x1_i_llvm_fpga_pop_i32_ij_068_pop1366_pop36_0 thei_llvm_fpga_pop_i32_ij_068_pop1366_pop36_conv2d1x152 (
        .in_data_in(redist11_sync_together135_aunroll_x_in_c0_eni21_12_tpl_1_q),
        .in_dir(redist0_sync_together135_aunroll_x_in_c0_eni21_1_tpl_1_q),
        .in_feedback_in_36(i_llvm_fpga_push_i32_ij_068_pop1366_push36_conv2d1x153_out_feedback_out_36),
        .in_feedback_valid_in_36(i_llvm_fpga_push_i32_ij_068_pop1366_push36_conv2d1x153_out_feedback_valid_out_36),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg25_q),
        .out_data_out(i_llvm_fpga_pop_i32_ij_068_pop1366_pop36_conv2d1x152_out_data_out),
        .out_feedback_stall_out_36(i_llvm_fpga_pop_i32_ij_068_pop1366_pop36_conv2d1x152_out_feedback_stall_out_36),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist25_i_llvm_fpga_pop_i32_ij_068_pop1366_pop36_conv2d1x152_out_data_out_1(DELAY,225)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist25_i_llvm_fpga_pop_i32_ij_068_pop1366_pop36_conv2d1x152_out_data_out_1_q <= '0;
        end
        else
        begin
            redist25_i_llvm_fpga_pop_i32_ij_068_pop1366_pop36_conv2d1x152_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i32_ij_068_pop1366_pop36_conv2d1x152_out_data_out);
        end
    end

    // valid_fanout_reg23(REG,169)@1 + 1
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

    // valid_fanout_reg24(REG,170)@1 + 1
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

    // i_llvm_fpga_push_i1_notcmp3864_push35_conv2d1x151(BLACKBOX,89)@2
    // out out_feedback_out_35@20000000
    // out out_feedback_valid_out_35@20000000
    conv2d1x1_i_llvm_fpga_push_i1_notcmp3864_push35_0 thei_llvm_fpga_push_i1_notcmp3864_push35_conv2d1x151 (
        .in_data_in(i_llvm_fpga_pop_i1_notcmp3864_pop35_conv2d1x150_out_data_out),
        .in_feedback_stall_in_35(i_llvm_fpga_pop_i1_notcmp3864_pop35_conv2d1x150_out_feedback_stall_out_35),
        .in_keep_going26(redist32_i_llvm_fpga_pipeline_keep_going26_conv2d1x16_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg24_q),
        .out_data_out(),
        .out_feedback_out_35(i_llvm_fpga_push_i1_notcmp3864_push35_conv2d1x151_out_feedback_out_35),
        .out_feedback_valid_out_35(i_llvm_fpga_push_i1_notcmp3864_push35_conv2d1x151_out_feedback_valid_out_35),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist10_sync_together135_aunroll_x_in_c0_eni21_11_tpl_1(DELAY,210)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_sync_together135_aunroll_x_in_c0_eni21_11_tpl_1_q <= '0;
        end
        else
        begin
            redist10_sync_together135_aunroll_x_in_c0_eni21_11_tpl_1_q <= $unsigned(in_c0_eni21_11_tpl);
        end
    end

    // i_llvm_fpga_pop_i1_notcmp3864_pop35_conv2d1x150(BLACKBOX,73)@2
    // out out_feedback_stall_out_35@20000000
    conv2d1x1_i_llvm_fpga_pop_i1_notcmp3864_pop35_0 thei_llvm_fpga_pop_i1_notcmp3864_pop35_conv2d1x150 (
        .in_data_in(redist10_sync_together135_aunroll_x_in_c0_eni21_11_tpl_1_q),
        .in_dir(redist0_sync_together135_aunroll_x_in_c0_eni21_1_tpl_1_q),
        .in_feedback_in_35(i_llvm_fpga_push_i1_notcmp3864_push35_conv2d1x151_out_feedback_out_35),
        .in_feedback_valid_in_35(i_llvm_fpga_push_i1_notcmp3864_push35_conv2d1x151_out_feedback_valid_out_35),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg23_q),
        .out_data_out(i_llvm_fpga_pop_i1_notcmp3864_pop35_conv2d1x150_out_data_out),
        .out_feedback_stall_out_35(i_llvm_fpga_pop_i1_notcmp3864_pop35_conv2d1x150_out_feedback_stall_out_35),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist30_i_llvm_fpga_pop_i1_notcmp3864_pop35_conv2d1x150_out_data_out_1(DELAY,230)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist30_i_llvm_fpga_pop_i1_notcmp3864_pop35_conv2d1x150_out_data_out_1_q <= '0;
        end
        else
        begin
            redist30_i_llvm_fpga_pop_i1_notcmp3864_pop35_conv2d1x150_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i1_notcmp3864_pop35_conv2d1x150_out_data_out);
        end
    end

    // valid_fanout_reg21(REG,167)@1 + 1
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

    // valid_fanout_reg22(REG,168)@1 + 1
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

    // i_llvm_fpga_push_i1_notcmp4361_push33_conv2d1x149(BLACKBOX,90)@2
    // out out_feedback_out_33@20000000
    // out out_feedback_valid_out_33@20000000
    conv2d1x1_i_llvm_fpga_push_i1_notcmp4361_push33_0 thei_llvm_fpga_push_i1_notcmp4361_push33_conv2d1x149 (
        .in_data_in(i_llvm_fpga_pop_i1_notcmp4361_pop33_conv2d1x148_out_data_out),
        .in_feedback_stall_in_33(i_llvm_fpga_pop_i1_notcmp4361_pop33_conv2d1x148_out_feedback_stall_out_33),
        .in_keep_going26(redist32_i_llvm_fpga_pipeline_keep_going26_conv2d1x16_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg22_q),
        .out_data_out(),
        .out_feedback_out_33(i_llvm_fpga_push_i1_notcmp4361_push33_conv2d1x149_out_feedback_out_33),
        .out_feedback_valid_out_33(i_llvm_fpga_push_i1_notcmp4361_push33_conv2d1x149_out_feedback_valid_out_33),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist9_sync_together135_aunroll_x_in_c0_eni21_10_tpl_1(DELAY,209)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_sync_together135_aunroll_x_in_c0_eni21_10_tpl_1_q <= '0;
        end
        else
        begin
            redist9_sync_together135_aunroll_x_in_c0_eni21_10_tpl_1_q <= $unsigned(in_c0_eni21_10_tpl);
        end
    end

    // i_llvm_fpga_pop_i1_notcmp4361_pop33_conv2d1x148(BLACKBOX,74)@2
    // out out_feedback_stall_out_33@20000000
    conv2d1x1_i_llvm_fpga_pop_i1_notcmp4361_pop33_0 thei_llvm_fpga_pop_i1_notcmp4361_pop33_conv2d1x148 (
        .in_data_in(redist9_sync_together135_aunroll_x_in_c0_eni21_10_tpl_1_q),
        .in_dir(redist0_sync_together135_aunroll_x_in_c0_eni21_1_tpl_1_q),
        .in_feedback_in_33(i_llvm_fpga_push_i1_notcmp4361_push33_conv2d1x149_out_feedback_out_33),
        .in_feedback_valid_in_33(i_llvm_fpga_push_i1_notcmp4361_push33_conv2d1x149_out_feedback_valid_out_33),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg21_q),
        .out_data_out(i_llvm_fpga_pop_i1_notcmp4361_pop33_conv2d1x148_out_data_out),
        .out_feedback_stall_out_33(i_llvm_fpga_pop_i1_notcmp4361_pop33_conv2d1x148_out_feedback_stall_out_33),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist29_i_llvm_fpga_pop_i1_notcmp4361_pop33_conv2d1x148_out_data_out_1(DELAY,229)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist29_i_llvm_fpga_pop_i1_notcmp4361_pop33_conv2d1x148_out_data_out_1_q <= '0;
        end
        else
        begin
            redist29_i_llvm_fpga_pop_i1_notcmp4361_pop33_conv2d1x148_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i1_notcmp4361_pop33_conv2d1x148_out_data_out);
        end
    end

    // valid_fanout_reg19(REG,165)@1 + 1
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

    // valid_fanout_reg20(REG,166)@1 + 1
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

    // i_llvm_fpga_push_i32_mul10058_push32_conv2d1x147(BLACKBOX,99)@2
    // out out_feedback_out_32@20000000
    // out out_feedback_valid_out_32@20000000
    conv2d1x1_i_llvm_fpga_push_i32_mul10058_push32_0 thei_llvm_fpga_push_i32_mul10058_push32_conv2d1x147 (
        .in_data_in(i_llvm_fpga_pop_i32_mul10058_pop32_conv2d1x146_out_data_out),
        .in_feedback_stall_in_32(i_llvm_fpga_pop_i32_mul10058_pop32_conv2d1x146_out_feedback_stall_out_32),
        .in_keep_going26(redist32_i_llvm_fpga_pipeline_keep_going26_conv2d1x16_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg20_q),
        .out_data_out(),
        .out_feedback_out_32(i_llvm_fpga_push_i32_mul10058_push32_conv2d1x147_out_feedback_out_32),
        .out_feedback_valid_out_32(i_llvm_fpga_push_i32_mul10058_push32_conv2d1x147_out_feedback_valid_out_32),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist8_sync_together135_aunroll_x_in_c0_eni21_9_tpl_1(DELAY,208)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_sync_together135_aunroll_x_in_c0_eni21_9_tpl_1_q <= '0;
        end
        else
        begin
            redist8_sync_together135_aunroll_x_in_c0_eni21_9_tpl_1_q <= $unsigned(in_c0_eni21_9_tpl);
        end
    end

    // i_llvm_fpga_pop_i32_mul10058_pop32_conv2d1x146(BLACKBOX,82)@2
    // out out_feedback_stall_out_32@20000000
    conv2d1x1_i_llvm_fpga_pop_i32_mul10058_pop32_0 thei_llvm_fpga_pop_i32_mul10058_pop32_conv2d1x146 (
        .in_data_in(redist8_sync_together135_aunroll_x_in_c0_eni21_9_tpl_1_q),
        .in_dir(redist0_sync_together135_aunroll_x_in_c0_eni21_1_tpl_1_q),
        .in_feedback_in_32(i_llvm_fpga_push_i32_mul10058_push32_conv2d1x147_out_feedback_out_32),
        .in_feedback_valid_in_32(i_llvm_fpga_push_i32_mul10058_push32_conv2d1x147_out_feedback_valid_out_32),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg19_q),
        .out_data_out(i_llvm_fpga_pop_i32_mul10058_pop32_conv2d1x146_out_data_out),
        .out_feedback_stall_out_32(i_llvm_fpga_pop_i32_mul10058_pop32_conv2d1x146_out_feedback_stall_out_32),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist24_i_llvm_fpga_pop_i32_mul10058_pop32_conv2d1x146_out_data_out_1(DELAY,224)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist24_i_llvm_fpga_pop_i32_mul10058_pop32_conv2d1x146_out_data_out_1_q <= '0;
        end
        else
        begin
            redist24_i_llvm_fpga_pop_i32_mul10058_pop32_conv2d1x146_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i32_mul10058_pop32_conv2d1x146_out_data_out);
        end
    end

    // valid_fanout_reg17(REG,163)@1 + 1
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

    // valid_fanout_reg18(REG,164)@1 + 1
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

    // i_llvm_fpga_push_i32_mul2155_push31_conv2d1x145(BLACKBOX,100)@2
    // out out_feedback_out_31@20000000
    // out out_feedback_valid_out_31@20000000
    conv2d1x1_i_llvm_fpga_push_i32_mul2155_push31_0 thei_llvm_fpga_push_i32_mul2155_push31_conv2d1x145 (
        .in_data_in(i_llvm_fpga_pop_i32_mul2155_pop31_conv2d1x144_out_data_out),
        .in_feedback_stall_in_31(i_llvm_fpga_pop_i32_mul2155_pop31_conv2d1x144_out_feedback_stall_out_31),
        .in_keep_going26(redist32_i_llvm_fpga_pipeline_keep_going26_conv2d1x16_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg18_q),
        .out_data_out(),
        .out_feedback_out_31(i_llvm_fpga_push_i32_mul2155_push31_conv2d1x145_out_feedback_out_31),
        .out_feedback_valid_out_31(i_llvm_fpga_push_i32_mul2155_push31_conv2d1x145_out_feedback_valid_out_31),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist7_sync_together135_aunroll_x_in_c0_eni21_8_tpl_1(DELAY,207)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_sync_together135_aunroll_x_in_c0_eni21_8_tpl_1_q <= '0;
        end
        else
        begin
            redist7_sync_together135_aunroll_x_in_c0_eni21_8_tpl_1_q <= $unsigned(in_c0_eni21_8_tpl);
        end
    end

    // i_llvm_fpga_pop_i32_mul2155_pop31_conv2d1x144(BLACKBOX,83)@2
    // out out_feedback_stall_out_31@20000000
    conv2d1x1_i_llvm_fpga_pop_i32_mul2155_pop31_0 thei_llvm_fpga_pop_i32_mul2155_pop31_conv2d1x144 (
        .in_data_in(redist7_sync_together135_aunroll_x_in_c0_eni21_8_tpl_1_q),
        .in_dir(redist0_sync_together135_aunroll_x_in_c0_eni21_1_tpl_1_q),
        .in_feedback_in_31(i_llvm_fpga_push_i32_mul2155_push31_conv2d1x145_out_feedback_out_31),
        .in_feedback_valid_in_31(i_llvm_fpga_push_i32_mul2155_push31_conv2d1x145_out_feedback_valid_out_31),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg17_q),
        .out_data_out(i_llvm_fpga_pop_i32_mul2155_pop31_conv2d1x144_out_data_out),
        .out_feedback_stall_out_31(i_llvm_fpga_pop_i32_mul2155_pop31_conv2d1x144_out_feedback_stall_out_31),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist23_i_llvm_fpga_pop_i32_mul2155_pop31_conv2d1x144_out_data_out_1(DELAY,223)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist23_i_llvm_fpga_pop_i32_mul2155_pop31_conv2d1x144_out_data_out_1_q <= '0;
        end
        else
        begin
            redist23_i_llvm_fpga_pop_i32_mul2155_pop31_conv2d1x144_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i32_mul2155_pop31_conv2d1x144_out_data_out);
        end
    end

    // valid_fanout_reg15(REG,161)@1 + 1
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

    // valid_fanout_reg16(REG,162)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg16_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg16_q <= $unsigned(redist21_sync_together135_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_push_f32_lm52_push30_conv2d1x143(BLACKBOX,86)@3
    // out out_feedback_out_30@20000000
    // out out_feedback_valid_out_30@20000000
    conv2d1x1_i_llvm_fpga_push_f32_lm52_push30_0 thei_llvm_fpga_push_f32_lm52_push30_conv2d1x143 (
        .in_data_in(redist31_i_llvm_fpga_pop_f32_lm52_pop30_conv2d1x142_out_data_out_1_q),
        .in_feedback_stall_in_30(i_llvm_fpga_pop_f32_lm52_pop30_conv2d1x142_out_feedback_stall_out_30),
        .in_keep_going26(redist33_i_llvm_fpga_pipeline_keep_going26_conv2d1x16_out_data_out_2_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg16_q),
        .out_data_out(),
        .out_feedback_out_30(i_llvm_fpga_push_f32_lm52_push30_conv2d1x143_out_feedback_out_30),
        .out_feedback_valid_out_30(i_llvm_fpga_push_f32_lm52_push30_conv2d1x143_out_feedback_valid_out_30),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist6_sync_together135_aunroll_x_in_c0_eni21_7_tpl_1(DELAY,206)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_sync_together135_aunroll_x_in_c0_eni21_7_tpl_1_q <= '0;
        end
        else
        begin
            redist6_sync_together135_aunroll_x_in_c0_eni21_7_tpl_1_q <= $unsigned(in_c0_eni21_7_tpl);
        end
    end

    // i_llvm_fpga_pop_f32_lm52_pop30_conv2d1x142(BLACKBOX,71)@2
    // out out_feedback_stall_out_30@20000000
    conv2d1x1_i_llvm_fpga_pop_f32_lm52_pop30_0 thei_llvm_fpga_pop_f32_lm52_pop30_conv2d1x142 (
        .in_data_in(redist6_sync_together135_aunroll_x_in_c0_eni21_7_tpl_1_q),
        .in_dir(redist0_sync_together135_aunroll_x_in_c0_eni21_1_tpl_1_q),
        .in_feedback_in_30(i_llvm_fpga_push_f32_lm52_push30_conv2d1x143_out_feedback_out_30),
        .in_feedback_valid_in_30(i_llvm_fpga_push_f32_lm52_push30_conv2d1x143_out_feedback_valid_out_30),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg15_q),
        .out_data_out(i_llvm_fpga_pop_f32_lm52_pop30_conv2d1x142_out_data_out),
        .out_feedback_stall_out_30(i_llvm_fpga_pop_f32_lm52_pop30_conv2d1x142_out_feedback_stall_out_30),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist31_i_llvm_fpga_pop_f32_lm52_pop30_conv2d1x142_out_data_out_1(DELAY,231)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist31_i_llvm_fpga_pop_f32_lm52_pop30_conv2d1x142_out_data_out_1_q <= '0;
        end
        else
        begin
            redist31_i_llvm_fpga_pop_f32_lm52_pop30_conv2d1x142_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_f32_lm52_pop30_conv2d1x142_out_data_out);
        end
    end

    // valid_fanout_reg13(REG,159)@1 + 1
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

    // valid_fanout_reg14(REG,160)@1 + 1
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

    // i_llvm_fpga_push_i1_push29_conv2d1x141(BLACKBOX,94)@2
    // out out_feedback_out_29@20000000
    // out out_feedback_valid_out_29@20000000
    conv2d1x1_i_llvm_fpga_push_i1_push29_0 thei_llvm_fpga_push_i1_push29_conv2d1x141 (
        .in_data_in(i_llvm_fpga_pop_i1_pop29_conv2d1x140_out_data_out),
        .in_feedback_stall_in_29(i_llvm_fpga_pop_i1_pop29_conv2d1x140_out_feedback_stall_out_29),
        .in_keep_going26(redist32_i_llvm_fpga_pipeline_keep_going26_conv2d1x16_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg14_q),
        .out_data_out(),
        .out_feedback_out_29(i_llvm_fpga_push_i1_push29_conv2d1x141_out_feedback_out_29),
        .out_feedback_valid_out_29(i_llvm_fpga_push_i1_push29_conv2d1x141_out_feedback_valid_out_29),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist5_sync_together135_aunroll_x_in_c0_eni21_6_tpl_1(DELAY,205)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_sync_together135_aunroll_x_in_c0_eni21_6_tpl_1_q <= '0;
        end
        else
        begin
            redist5_sync_together135_aunroll_x_in_c0_eni21_6_tpl_1_q <= $unsigned(in_c0_eni21_6_tpl);
        end
    end

    // i_llvm_fpga_pop_i1_pop29_conv2d1x140(BLACKBOX,77)@2
    // out out_feedback_stall_out_29@20000000
    conv2d1x1_i_llvm_fpga_pop_i1_pop29_0 thei_llvm_fpga_pop_i1_pop29_conv2d1x140 (
        .in_data_in(redist5_sync_together135_aunroll_x_in_c0_eni21_6_tpl_1_q),
        .in_dir(redist0_sync_together135_aunroll_x_in_c0_eni21_1_tpl_1_q),
        .in_feedback_in_29(i_llvm_fpga_push_i1_push29_conv2d1x141_out_feedback_out_29),
        .in_feedback_valid_in_29(i_llvm_fpga_push_i1_push29_conv2d1x141_out_feedback_valid_out_29),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg13_q),
        .out_data_out(i_llvm_fpga_pop_i1_pop29_conv2d1x140_out_data_out),
        .out_feedback_stall_out_29(i_llvm_fpga_pop_i1_pop29_conv2d1x140_out_feedback_stall_out_29),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist26_i_llvm_fpga_pop_i1_pop29_conv2d1x140_out_data_out_1(DELAY,226)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist26_i_llvm_fpga_pop_i1_pop29_conv2d1x140_out_data_out_1_q <= '0;
        end
        else
        begin
            redist26_i_llvm_fpga_pop_i1_pop29_conv2d1x140_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i1_pop29_conv2d1x140_out_data_out);
        end
    end

    // valid_fanout_reg11(REG,157)@1 + 1
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

    // valid_fanout_reg12(REG,158)@1 + 1
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

    // i_llvm_fpga_push_i32_mul49_push26_conv2d1x139(BLACKBOX,101)@2
    // out out_feedback_out_26@20000000
    // out out_feedback_valid_out_26@20000000
    conv2d1x1_i_llvm_fpga_push_i32_mul49_push26_0 thei_llvm_fpga_push_i32_mul49_push26_conv2d1x139 (
        .in_data_in(i_llvm_fpga_pop_i32_mul49_pop26_conv2d1x138_out_data_out),
        .in_feedback_stall_in_26(i_llvm_fpga_pop_i32_mul49_pop26_conv2d1x138_out_feedback_stall_out_26),
        .in_keep_going26(redist32_i_llvm_fpga_pipeline_keep_going26_conv2d1x16_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg12_q),
        .out_data_out(),
        .out_feedback_out_26(i_llvm_fpga_push_i32_mul49_push26_conv2d1x139_out_feedback_out_26),
        .out_feedback_valid_out_26(i_llvm_fpga_push_i32_mul49_push26_conv2d1x139_out_feedback_valid_out_26),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist4_sync_together135_aunroll_x_in_c0_eni21_5_tpl_1(DELAY,204)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_sync_together135_aunroll_x_in_c0_eni21_5_tpl_1_q <= '0;
        end
        else
        begin
            redist4_sync_together135_aunroll_x_in_c0_eni21_5_tpl_1_q <= $unsigned(in_c0_eni21_5_tpl);
        end
    end

    // i_llvm_fpga_pop_i32_mul49_pop26_conv2d1x138(BLACKBOX,84)@2
    // out out_feedback_stall_out_26@20000000
    conv2d1x1_i_llvm_fpga_pop_i32_mul49_pop26_0 thei_llvm_fpga_pop_i32_mul49_pop26_conv2d1x138 (
        .in_data_in(redist4_sync_together135_aunroll_x_in_c0_eni21_5_tpl_1_q),
        .in_dir(redist0_sync_together135_aunroll_x_in_c0_eni21_1_tpl_1_q),
        .in_feedback_in_26(i_llvm_fpga_push_i32_mul49_push26_conv2d1x139_out_feedback_out_26),
        .in_feedback_valid_in_26(i_llvm_fpga_push_i32_mul49_push26_conv2d1x139_out_feedback_valid_out_26),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg11_q),
        .out_data_out(i_llvm_fpga_pop_i32_mul49_pop26_conv2d1x138_out_data_out),
        .out_feedback_stall_out_26(i_llvm_fpga_pop_i32_mul49_pop26_conv2d1x138_out_feedback_stall_out_26),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist22_i_llvm_fpga_pop_i32_mul49_pop26_conv2d1x138_out_data_out_1(DELAY,222)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist22_i_llvm_fpga_pop_i32_mul49_pop26_conv2d1x138_out_data_out_1_q <= '0;
        end
        else
        begin
            redist22_i_llvm_fpga_pop_i32_mul49_pop26_conv2d1x138_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i32_mul49_pop26_conv2d1x138_out_data_out);
        end
    end

    // i_masked35_conv2d1x137(LOGICAL,103)@2 + 1
    assign i_masked35_conv2d1x137_qi = i_notcmp22_conv2d1x132_q & i_first_cleanup31_conv2d1x13_sel_x_b;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_masked35_conv2d1x137_delay ( .xin(i_masked35_conv2d1x137_qi), .xout(i_masked35_conv2d1x137_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist27_i_llvm_fpga_pop_i1_pop28_conv2d1x129_out_data_out_1(DELAY,227)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist27_i_llvm_fpga_pop_i1_pop28_conv2d1x129_out_data_out_1_q <= '0;
        end
        else
        begin
            redist27_i_llvm_fpga_pop_i1_pop28_conv2d1x129_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i1_pop28_conv2d1x129_out_data_out);
        end
    end

    // redist34_i_ap_pop_ext7_conv2d1x114_vt_join_q_1(DELAY,234)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist34_i_ap_pop_ext7_conv2d1x114_vt_join_q_1_q <= '0;
        end
        else
        begin
            redist34_i_ap_pop_ext7_conv2d1x114_vt_join_q_1_q <= $unsigned(i_ap_pop_ext7_conv2d1x114_vt_join_q);
        end
    end

    // sync_out_aunroll_x(GPOUT,144)@3
    assign out_c0_exi22_0_tpl = GND_q;
    assign out_c0_exi22_1_tpl = redist33_i_llvm_fpga_pipeline_keep_going26_conv2d1x16_out_data_out_2_q;
    assign out_c0_exi22_2_tpl = redist34_i_ap_pop_ext7_conv2d1x114_vt_join_q_1_q;
    assign out_c0_exi22_3_tpl = redist28_i_llvm_fpga_pop_i1_pop27_conv2d1x118_out_data_out_1_q;
    assign out_c0_exi22_4_tpl = redist27_i_llvm_fpga_pop_i1_pop28_conv2d1x129_out_data_out_1_q;
    assign out_c0_exi22_5_tpl = i_masked35_conv2d1x137_q;
    assign out_c0_exi22_6_tpl = redist22_i_llvm_fpga_pop_i32_mul49_pop26_conv2d1x138_out_data_out_1_q;
    assign out_c0_exi22_7_tpl = redist26_i_llvm_fpga_pop_i1_pop29_conv2d1x140_out_data_out_1_q;
    assign out_c0_exi22_8_tpl = redist31_i_llvm_fpga_pop_f32_lm52_pop30_conv2d1x142_out_data_out_1_q;
    assign out_c0_exi22_9_tpl = redist23_i_llvm_fpga_pop_i32_mul2155_pop31_conv2d1x144_out_data_out_1_q;
    assign out_c0_exi22_10_tpl = redist24_i_llvm_fpga_pop_i32_mul10058_pop32_conv2d1x146_out_data_out_1_q;
    assign out_c0_exi22_11_tpl = redist29_i_llvm_fpga_pop_i1_notcmp4361_pop33_conv2d1x148_out_data_out_1_q;
    assign out_c0_exi22_12_tpl = redist30_i_llvm_fpga_pop_i1_notcmp3864_pop35_conv2d1x150_out_data_out_1_q;
    assign out_c0_exi22_13_tpl = redist25_i_llvm_fpga_pop_i32_ij_068_pop1366_pop36_conv2d1x152_out_data_out_1_q;
    assign out_c0_exi22_14_tpl = redist12_sync_together135_aunroll_x_in_c0_eni21_13_tpl_2_q;
    assign out_c0_exi22_15_tpl = redist13_sync_together135_aunroll_x_in_c0_eni21_14_tpl_2_q;
    assign out_c0_exi22_16_tpl = redist14_sync_together135_aunroll_x_in_c0_eni21_15_tpl_2_q;
    assign out_c0_exi22_17_tpl = redist15_sync_together135_aunroll_x_in_c0_eni21_16_tpl_2_q;
    assign out_c0_exi22_18_tpl = redist16_sync_together135_aunroll_x_in_c0_eni21_17_tpl_2_q;
    assign out_c0_exi22_19_tpl = redist17_sync_together135_aunroll_x_in_c0_eni21_18_tpl_2_q;
    assign out_c0_exi22_20_tpl = redist18_sync_together135_aunroll_x_in_c0_eni21_19_tpl_2_q;
    assign out_c0_exi22_21_tpl = redist19_sync_together135_aunroll_x_in_c0_eni21_20_tpl_2_q;
    assign out_c0_exi22_22_tpl = redist20_sync_together135_aunroll_x_in_c0_eni21_21_tpl_2_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_conv2d1x16 = GND_q;

endmodule
