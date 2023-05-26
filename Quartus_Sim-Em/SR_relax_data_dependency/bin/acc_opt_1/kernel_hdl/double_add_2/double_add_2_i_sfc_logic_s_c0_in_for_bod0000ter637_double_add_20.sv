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

// SystemVerilog created from double_add_2_i_sfc_logic_s_c0_in_for_bod0000ter637_double_add_20
// SystemVerilog created on Tue May 23 14:04:37 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module double_add_2_i_sfc_logic_s_c0_in_for_bod0000ter637_double_add_20 (
    input wire [63:0] in_lm102_double_add_2_avm_readdata,
    input wire [0:0] in_lm102_double_add_2_avm_writeack,
    input wire [0:0] in_lm102_double_add_2_avm_waitrequest,
    input wire [0:0] in_lm102_double_add_2_avm_readdatavalid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going13_double_add_26_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going13_double_add_26_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_flush,
    input wire [0:0] in_intel_reserved_ffwd_0_0,
    input wire [63:0] in_memdep_4_double_add_2_avm_readdata,
    input wire [0:0] in_memdep_4_double_add_2_avm_writeack,
    input wire [0:0] in_memdep_4_double_add_2_avm_waitrequest,
    input wire [0:0] in_memdep_4_double_add_2_avm_readdatavalid,
    output wire [31:0] out_lm102_double_add_2_avm_address,
    output wire [0:0] out_lm102_double_add_2_avm_enable,
    output wire [0:0] out_lm102_double_add_2_avm_read,
    output wire [0:0] out_lm102_double_add_2_avm_write,
    output wire [63:0] out_lm102_double_add_2_avm_writedata,
    output wire [7:0] out_lm102_double_add_2_avm_byteenable,
    output wire [0:0] out_lm102_double_add_2_avm_burstcount,
    output wire [31:0] out_memdep_4_double_add_2_avm_address,
    output wire [0:0] out_memdep_4_double_add_2_avm_enable,
    output wire [0:0] out_memdep_4_double_add_2_avm_read,
    output wire [0:0] out_memdep_4_double_add_2_avm_write,
    output wire [63:0] out_memdep_4_double_add_2_avm_writedata,
    output wire [7:0] out_memdep_4_double_add_2_avm_byteenable,
    output wire [0:0] out_memdep_4_double_add_2_avm_burstcount,
    output wire [0:0] out_c0_exi6_0_tpl,
    output wire [0:0] out_c0_exi6_1_tpl,
    output wire [0:0] out_c0_exi6_2_tpl,
    output wire [0:0] out_c0_exi6_3_tpl,
    output wire [0:0] out_c0_exi6_4_tpl,
    output wire [0:0] out_c0_exi6_5_tpl,
    output wire [0:0] out_c0_exi6_6_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_double_add_23,
    input wire [0:0] in_c0_eni5_0_tpl,
    input wire [0:0] in_c0_eni5_1_tpl,
    input wire [0:0] in_c0_eni5_2_tpl,
    input wire [0:0] in_c0_eni5_3_tpl,
    input wire [0:0] in_c0_eni5_4_tpl,
    input wire [0:0] in_c0_eni5_5_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [63:0] c_double_add_2_shift_reg_pmem_q;
    wire [1:0] c_i2_170_q;
    wire [31:0] c_i32_072_q;
    wire [31:0] c_i32_173_q;
    wire [4:0] c_i5_1074_q;
    wire [4:0] c_i5_176_q;
    wire [32:0] i_add14_double_add_213_a;
    wire [32:0] i_add14_double_add_213_b;
    logic [32:0] i_add14_double_add_213_o;
    wire [32:0] i_add14_double_add_213_q;
    wire [2:0] i_arrayidx164_double_add_216_vt_const_2_q;
    wire [63:0] i_arrayidx164_double_add_216_vt_join_q;
    wire [60:0] i_arrayidx164_double_add_216_vt_select_63_b;
    wire [63:0] i_arrayidx185_double_add_227_vt_join_q;
    wire [60:0] i_arrayidx185_double_add_227_vt_select_63_b;
    wire [1:0] i_cleanups_shl17_double_add_25_vt_join_q;
    wire [0:0] i_cleanups_shl17_double_add_25_vt_select_1_b;
    wire [0:0] i_first_cleanup_xor19_double_add_24_q;
    wire [0:0] i_first_cleanup_xor19_or_double_add_219_qi;
    reg [0:0] i_first_cleanup_xor19_or_double_add_219_q;
    wire [5:0] i_fpga_indvars_iv_next7_double_add_233_a;
    wire [5:0] i_fpga_indvars_iv_next7_double_add_233_b;
    logic [5:0] i_fpga_indvars_iv_next7_double_add_233_o;
    wire [5:0] i_fpga_indvars_iv_next7_double_add_233_q;
    wire [63:0] i_idxprom15_double_add_215_vt_join_q;
    wire [31:0] i_idxprom15_double_add_215_vt_select_31_b;
    wire [63:0] i_idxprom17_double_add_226_vt_join_q;
    wire [31:0] i_idxprom17_double_add_226_vt_select_31_b;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp3193_double_add_235_out_dest_data_out_0_0;
    wire [31:0] i_llvm_fpga_mem_lm102_double_add_222_out_lm102_double_add_2_avm_address;
    wire [0:0] i_llvm_fpga_mem_lm102_double_add_222_out_lm102_double_add_2_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_lm102_double_add_222_out_lm102_double_add_2_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_lm102_double_add_222_out_lm102_double_add_2_avm_enable;
    wire [0:0] i_llvm_fpga_mem_lm102_double_add_222_out_lm102_double_add_2_avm_read;
    wire [0:0] i_llvm_fpga_mem_lm102_double_add_222_out_lm102_double_add_2_avm_write;
    wire [63:0] i_llvm_fpga_mem_lm102_double_add_222_out_lm102_double_add_2_avm_writedata;
    wire [63:0] i_llvm_fpga_mem_lm102_double_add_222_out_o_readdata;
    wire [31:0] i_llvm_fpga_mem_memdep_4_double_add_229_out_memdep_4_double_add_2_avm_address;
    wire [0:0] i_llvm_fpga_mem_memdep_4_double_add_229_out_memdep_4_double_add_2_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_memdep_4_double_add_229_out_memdep_4_double_add_2_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_memdep_4_double_add_229_out_memdep_4_double_add_2_avm_enable;
    wire [0:0] i_llvm_fpga_mem_memdep_4_double_add_229_out_memdep_4_double_add_2_avm_read;
    wire [0:0] i_llvm_fpga_mem_memdep_4_double_add_229_out_memdep_4_double_add_2_avm_write;
    wire [63:0] i_llvm_fpga_mem_memdep_4_double_add_229_out_memdep_4_double_add_2_avm_writedata;
    wire [0:0] i_llvm_fpga_mem_memdep_4_double_add_229_out_o_writeack;
    wire [0:0] i_llvm_fpga_pipeline_keep_going13_double_add_26_out_data_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going13_double_add_26_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going13_double_add_26_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going13_double_add_26_out_initeration_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going13_double_add_26_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going13_double_add_26_out_pipeline_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi5_pop1746_pop27_double_add_220_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi5_pop1746_pop27_double_add_220_out_feedback_stall_out_27;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp2647_pop29_double_add_245_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp2647_pop29_double_add_245_out_feedback_stall_out_29;
    wire [0:0] i_llvm_fpga_pop_i1_pop26_double_add_217_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_pop26_double_add_217_out_feedback_stall_out_26;
    wire [0:0] i_llvm_fpga_pop_i1_pop28_double_add_243_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_pop28_double_add_243_out_feedback_stall_out_28;
    wire [1:0] i_llvm_fpga_pop_i2_cleanups16_pop25_double_add_22_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i2_cleanups16_pop25_double_add_22_out_feedback_stall_out_25;
    wire [1:0] i_llvm_fpga_pop_i2_initerations11_pop24_double_add_27_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i2_initerations11_pop24_double_add_27_out_feedback_stall_out_24;
    wire [31:0] i_llvm_fpga_pop_i32_j_018_pop23_double_add_212_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_j_018_pop23_double_add_212_out_feedback_stall_out_23;
    wire [4:0] i_llvm_fpga_pop_i5_fpga_indvars_iv6_pop22_double_add_230_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i5_fpga_indvars_iv6_pop22_double_add_230_out_feedback_stall_out_22;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration15_double_add_211_out_feedback_out_3;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration15_double_add_211_out_feedback_valid_out_3;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi5_pop1746_push27_double_add_221_out_feedback_out_27;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi5_pop1746_push27_double_add_221_out_feedback_valid_out_27;
    wire [0:0] i_llvm_fpga_push_i1_notcmp2647_push29_double_add_246_out_feedback_out_29;
    wire [0:0] i_llvm_fpga_push_i1_notcmp2647_push29_double_add_246_out_feedback_valid_out_29;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond23_double_add_238_out_feedback_out_4;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond23_double_add_238_out_feedback_valid_out_4;
    wire [0:0] i_llvm_fpga_push_i1_push26_double_add_218_out_feedback_out_26;
    wire [0:0] i_llvm_fpga_push_i1_push26_double_add_218_out_feedback_valid_out_26;
    wire [0:0] i_llvm_fpga_push_i1_push28_double_add_244_out_feedback_out_28;
    wire [0:0] i_llvm_fpga_push_i1_push28_double_add_244_out_feedback_valid_out_28;
    wire [7:0] i_llvm_fpga_push_i2_cleanups16_push25_double_add_241_out_feedback_out_25;
    wire [0:0] i_llvm_fpga_push_i2_cleanups16_push25_double_add_241_out_feedback_valid_out_25;
    wire [7:0] i_llvm_fpga_push_i2_initerations11_push24_double_add_29_out_feedback_out_24;
    wire [0:0] i_llvm_fpga_push_i2_initerations11_push24_double_add_29_out_feedback_valid_out_24;
    wire [31:0] i_llvm_fpga_push_i32_j_018_push23_double_add_214_out_feedback_out_23;
    wire [0:0] i_llvm_fpga_push_i32_j_018_push23_double_add_214_out_feedback_valid_out_23;
    wire [7:0] i_llvm_fpga_push_i5_fpga_indvars_iv6_push22_double_add_234_out_feedback_out_22;
    wire [0:0] i_llvm_fpga_push_i5_fpga_indvars_iv6_push22_double_add_234_out_feedback_valid_out_22;
    wire [0:0] i_masked22_double_add_242_qi;
    reg [0:0] i_masked22_double_add_242_q;
    wire [0:0] i_next_cleanups21_double_add_240_s;
    reg [1:0] i_next_cleanups21_double_add_240_q;
    wire [1:0] i_next_initerations12_double_add_28_vt_join_q;
    wire [0:0] i_next_initerations12_double_add_28_vt_select_0_b;
    wire [0:0] i_notcmp9_double_add_237_q;
    wire [0:0] i_or20_double_add_239_q;
    wire [0:0] i_unnamed_double_add_236_q;
    wire [31:0] bgTrunc_i_add14_double_add_213_sel_x_b;
    wire [4:0] bgTrunc_i_fpga_indvars_iv_next7_double_add_233_sel_x_b;
    wire [7:0] i_arrayidx164_double_add_20_add_x_a;
    wire [7:0] i_arrayidx164_double_add_20_add_x_b;
    logic [7:0] i_arrayidx164_double_add_20_add_x_o;
    wire [7:0] i_arrayidx164_double_add_20_add_x_q;
    wire [63:0] i_arrayidx164_double_add_20_append_upper_bits_x_q;
    wire [3:0] i_arrayidx164_double_add_20_narrow_x_b;
    wire [6:0] i_arrayidx164_double_add_20_shift_join_x_q;
    wire [6:0] i_arrayidx164_double_add_20_dupName_0_trunc_sel_x_b;
    wire [6:0] i_arrayidx164_double_add_20_dupName_2_trunc_sel_x_b;
    wire [7:0] i_arrayidx185_double_add_20_add_x_a;
    wire [7:0] i_arrayidx185_double_add_20_add_x_b;
    logic [7:0] i_arrayidx185_double_add_20_add_x_o;
    wire [7:0] i_arrayidx185_double_add_20_add_x_q;
    wire [63:0] i_arrayidx185_double_add_20_append_upper_bits_x_q;
    wire [3:0] i_arrayidx185_double_add_20_narrow_x_b;
    wire [6:0] i_arrayidx185_double_add_20_shift_join_x_q;
    wire [6:0] i_arrayidx185_double_add_20_dupName_0_trunc_sel_x_b;
    wire [6:0] i_arrayidx185_double_add_20_dupName_2_trunc_sel_x_b;
    wire [0:0] i_first_cleanup18_double_add_23_sel_x_b;
    wire [63:0] i_idxprom15_double_add_215_sel_x_b;
    wire [63:0] i_idxprom17_double_add_226_sel_x_b;
    wire [0:0] i_last_initeration14_double_add_210_sel_x_b;
    wire [0:0] i_lm102_toi1_intcast_double_add_224_sel_x_b;
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
    wire [0:0] i_exitcond8_double_add_231_cmp_nsign_q;
    wire [0:0] leftShiftStage0Idx1Rng1_uid176_i_cleanups_shl17_double_add_20_shift_x_in;
    wire [0:0] leftShiftStage0Idx1Rng1_uid176_i_cleanups_shl17_double_add_20_shift_x_b;
    wire [1:0] leftShiftStage0Idx1_uid177_i_cleanups_shl17_double_add_20_shift_x_q;
    wire [0:0] leftShiftStage0_uid179_i_cleanups_shl17_double_add_20_shift_x_s;
    reg [1:0] leftShiftStage0_uid179_i_cleanups_shl17_double_add_20_shift_x_q;
    wire [0:0] rightShiftStage0Idx1Rng1_uid183_i_next_initerations12_double_add_20_shift_x_b;
    wire [1:0] rightShiftStage0Idx1_uid185_i_next_initerations12_double_add_20_shift_x_q;
    wire [0:0] rightShiftStage0_uid187_i_next_initerations12_double_add_20_shift_x_s;
    reg [1:0] rightShiftStage0_uid187_i_next_initerations12_double_add_20_shift_x_q;
    wire [56:0] i_arrayidx164_double_add_20_upper_bits_x_merged_bit_select_b;
    wire [6:0] i_arrayidx164_double_add_20_upper_bits_x_merged_bit_select_c;
    reg [0:0] redist0_valid_fanout_reg0_q_1_q;
    reg [0:0] redist1_sync_together100_aunroll_x_in_c0_eni5_1_tpl_1_q;
    reg [0:0] redist2_sync_together100_aunroll_x_in_c0_eni5_2_tpl_1_q;
    reg [0:0] redist3_sync_together100_aunroll_x_in_c0_eni5_3_tpl_1_q;
    reg [0:0] redist4_sync_together100_aunroll_x_in_c0_eni5_4_tpl_1_q;
    reg [0:0] redist5_sync_together100_aunroll_x_in_c0_eni5_5_tpl_1_q;
    reg [0:0] redist6_sync_together100_aunroll_x_in_i_valid_1_q;
    reg [0:0] redist7_sync_together100_aunroll_x_in_i_valid_6_q;
    reg [0:0] redist7_sync_together100_aunroll_x_in_i_valid_6_delay_0;
    reg [0:0] redist7_sync_together100_aunroll_x_in_i_valid_6_delay_1;
    reg [0:0] redist7_sync_together100_aunroll_x_in_i_valid_6_delay_2;
    reg [0:0] redist7_sync_together100_aunroll_x_in_i_valid_6_delay_3;
    reg [0:0] redist8_i_lm102_toi1_intcast_double_add_224_sel_x_b_1_q;
    reg [3:0] redist9_i_arrayidx185_double_add_20_narrow_x_b_1_q;
    reg [3:0] redist10_i_arrayidx164_double_add_20_narrow_x_b_1_q;
    reg [0:0] redist11_i_masked22_double_add_242_q_7_q;
    reg [0:0] redist12_i_llvm_fpga_pop_i1_pop28_double_add_243_out_data_out_1_q;
    reg [0:0] redist13_i_llvm_fpga_pop_i1_pop28_double_add_243_out_data_out_7_q;
    reg [0:0] redist14_i_llvm_fpga_pop_i1_notcmp2647_pop29_double_add_245_out_data_out_1_q;
    reg [0:0] redist15_i_llvm_fpga_pop_i1_notcmp2647_pop29_double_add_245_out_data_out_7_q;
    reg [0:0] redist16_i_llvm_fpga_pop_i1_memdep_phi5_pop1746_pop27_double_add_220_out_data_out_1_q;
    reg [0:0] redist17_i_llvm_fpga_pipeline_keep_going13_double_add_26_out_data_out_1_q;
    reg [0:0] redist18_i_llvm_fpga_pipeline_keep_going13_double_add_26_out_data_out_2_q;
    reg [0:0] redist19_i_llvm_fpga_pipeline_keep_going13_double_add_26_out_data_out_8_q;
    reg [0:0] redist20_i_first_cleanup_xor19_or_double_add_219_q_6_q;
    reg [0:0] redist20_i_first_cleanup_xor19_or_double_add_219_q_6_delay_0;
    reg [0:0] redist20_i_first_cleanup_xor19_or_double_add_219_q_6_delay_1;
    reg [0:0] redist20_i_first_cleanup_xor19_or_double_add_219_q_6_delay_2;
    reg [0:0] redist20_i_first_cleanup_xor19_or_double_add_219_q_6_delay_3;
    wire redist21_i_arrayidx185_double_add_227_vt_select_63_b_5_mem_reset0;
    wire [60:0] redist21_i_arrayidx185_double_add_227_vt_select_63_b_5_mem_ia;
    wire [1:0] redist21_i_arrayidx185_double_add_227_vt_select_63_b_5_mem_aa;
    wire [1:0] redist21_i_arrayidx185_double_add_227_vt_select_63_b_5_mem_ab;
    wire [60:0] redist21_i_arrayidx185_double_add_227_vt_select_63_b_5_mem_iq;
    wire [60:0] redist21_i_arrayidx185_double_add_227_vt_select_63_b_5_mem_q;
    wire [1:0] redist21_i_arrayidx185_double_add_227_vt_select_63_b_5_rdcnt_q;
    (* preserve *) reg [1:0] redist21_i_arrayidx185_double_add_227_vt_select_63_b_5_rdcnt_i;
    reg [1:0] redist21_i_arrayidx185_double_add_227_vt_select_63_b_5_wraddr_q;
    wire [2:0] redist21_i_arrayidx185_double_add_227_vt_select_63_b_5_mem_last_q;
    wire [2:0] redist21_i_arrayidx185_double_add_227_vt_select_63_b_5_cmp_b;
    wire [0:0] redist21_i_arrayidx185_double_add_227_vt_select_63_b_5_cmp_q;
    (* dont_merge *) reg [0:0] redist21_i_arrayidx185_double_add_227_vt_select_63_b_5_cmpReg_q;
    wire [0:0] redist21_i_arrayidx185_double_add_227_vt_select_63_b_5_notEnable_q;
    wire [0:0] redist21_i_arrayidx185_double_add_227_vt_select_63_b_5_nor_q;
    (* dont_merge *) reg [0:0] redist21_i_arrayidx185_double_add_227_vt_select_63_b_5_sticky_ena_q;
    wire [0:0] redist21_i_arrayidx185_double_add_227_vt_select_63_b_5_enaAnd_q;


    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist6_sync_together100_aunroll_x_in_i_valid_1(DELAY,195)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_sync_together100_aunroll_x_in_i_valid_1_q <= '0;
        end
        else
        begin
            redist6_sync_together100_aunroll_x_in_i_valid_1_q <= $unsigned(in_i_valid);
        end
    end

    // redist17_i_llvm_fpga_pipeline_keep_going13_double_add_26_out_data_out_1(DELAY,206)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist17_i_llvm_fpga_pipeline_keep_going13_double_add_26_out_data_out_1_q <= '0;
        end
        else
        begin
            redist17_i_llvm_fpga_pipeline_keep_going13_double_add_26_out_data_out_1_q <= $unsigned(i_llvm_fpga_pipeline_keep_going13_double_add_26_out_data_out);
        end
    end

    // leftShiftStage0Idx1Rng1_uid176_i_cleanups_shl17_double_add_20_shift_x(BITSELECT,175)@2
    assign leftShiftStage0Idx1Rng1_uid176_i_cleanups_shl17_double_add_20_shift_x_in = i_llvm_fpga_pop_i2_cleanups16_pop25_double_add_22_out_data_out[0:0];
    assign leftShiftStage0Idx1Rng1_uid176_i_cleanups_shl17_double_add_20_shift_x_b = leftShiftStage0Idx1Rng1_uid176_i_cleanups_shl17_double_add_20_shift_x_in[0:0];

    // leftShiftStage0Idx1_uid177_i_cleanups_shl17_double_add_20_shift_x(BITJOIN,176)@2
    assign leftShiftStage0Idx1_uid177_i_cleanups_shl17_double_add_20_shift_x_q = {leftShiftStage0Idx1Rng1_uid176_i_cleanups_shl17_double_add_20_shift_x_b, GND_q};

    // leftShiftStage0_uid179_i_cleanups_shl17_double_add_20_shift_x(MUX,178)@2
    assign leftShiftStage0_uid179_i_cleanups_shl17_double_add_20_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid179_i_cleanups_shl17_double_add_20_shift_x_s or i_llvm_fpga_pop_i2_cleanups16_pop25_double_add_22_out_data_out or leftShiftStage0Idx1_uid177_i_cleanups_shl17_double_add_20_shift_x_q)
    begin
        unique case (leftShiftStage0_uid179_i_cleanups_shl17_double_add_20_shift_x_s)
            1'b0 : leftShiftStage0_uid179_i_cleanups_shl17_double_add_20_shift_x_q = i_llvm_fpga_pop_i2_cleanups16_pop25_double_add_22_out_data_out;
            1'b1 : leftShiftStage0_uid179_i_cleanups_shl17_double_add_20_shift_x_q = leftShiftStage0Idx1_uid177_i_cleanups_shl17_double_add_20_shift_x_q;
            default : leftShiftStage0_uid179_i_cleanups_shl17_double_add_20_shift_x_q = 2'b0;
        endcase
    end

    // i_cleanups_shl17_double_add_25_vt_select_1(BITSELECT,44)@2
    assign i_cleanups_shl17_double_add_25_vt_select_1_b = leftShiftStage0_uid179_i_cleanups_shl17_double_add_20_shift_x_q[1:1];

    // i_cleanups_shl17_double_add_25_vt_join(BITJOIN,43)@2
    assign i_cleanups_shl17_double_add_25_vt_join_q = {i_cleanups_shl17_double_add_25_vt_select_1_b, GND_q};

    // i_first_cleanup_xor19_double_add_24(LOGICAL,47)@2
    assign i_first_cleanup_xor19_double_add_24_q = i_first_cleanup18_double_add_23_sel_x_b ^ VCC_q;

    // i_notcmp9_double_add_237(LOGICAL,88)@2
    assign i_notcmp9_double_add_237_q = i_unnamed_double_add_236_q ^ VCC_q;

    // i_or20_double_add_239(LOGICAL,89)@2
    assign i_or20_double_add_239_q = i_notcmp9_double_add_237_q | i_first_cleanup_xor19_double_add_24_q;

    // i_next_cleanups21_double_add_240(MUX,84)@2
    assign i_next_cleanups21_double_add_240_s = i_or20_double_add_239_q;
    always @(i_next_cleanups21_double_add_240_s or i_llvm_fpga_pop_i2_cleanups16_pop25_double_add_22_out_data_out or i_cleanups_shl17_double_add_25_vt_join_q)
    begin
        unique case (i_next_cleanups21_double_add_240_s)
            1'b0 : i_next_cleanups21_double_add_240_q = i_llvm_fpga_pop_i2_cleanups16_pop25_double_add_22_out_data_out;
            1'b1 : i_next_cleanups21_double_add_240_q = i_cleanups_shl17_double_add_25_vt_join_q;
            default : i_next_cleanups21_double_add_240_q = 2'b0;
        endcase
    end

    // i_llvm_fpga_push_i2_cleanups16_push25_double_add_241(BLACKBOX,77)@2
    // out out_feedback_out_25@20000000
    // out out_feedback_valid_out_25@20000000
    double_add_2_i_llvm_fpga_push_i2_cleanups16_push25_0 thei_llvm_fpga_push_i2_cleanups16_push25_double_add_241 (
        .in_data_in(i_next_cleanups21_double_add_240_q),
        .in_feedback_stall_in_25(i_llvm_fpga_pop_i2_cleanups16_pop25_double_add_22_out_feedback_stall_out_25),
        .in_keep_going13(redist17_i_llvm_fpga_pipeline_keep_going13_double_add_26_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist6_sync_together100_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_25(i_llvm_fpga_push_i2_cleanups16_push25_double_add_241_out_feedback_out_25),
        .out_feedback_valid_out_25(i_llvm_fpga_push_i2_cleanups16_push25_double_add_241_out_feedback_valid_out_25),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist1_sync_together100_aunroll_x_in_c0_eni5_1_tpl_1(DELAY,190)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together100_aunroll_x_in_c0_eni5_1_tpl_1_q <= '0;
        end
        else
        begin
            redist1_sync_together100_aunroll_x_in_c0_eni5_1_tpl_1_q <= $unsigned(in_c0_eni5_1_tpl);
        end
    end

    // c_i2_170(CONSTANT,28)
    assign c_i2_170_q = $unsigned(2'b01);

    // i_llvm_fpga_pop_i2_cleanups16_pop25_double_add_22(BLACKBOX,67)@2
    // out out_feedback_stall_out_25@20000000
    double_add_2_i_llvm_fpga_pop_i2_cleanups16_pop25_0 thei_llvm_fpga_pop_i2_cleanups16_pop25_double_add_22 (
        .in_data_in(c_i2_170_q),
        .in_dir(redist1_sync_together100_aunroll_x_in_c0_eni5_1_tpl_1_q),
        .in_feedback_in_25(i_llvm_fpga_push_i2_cleanups16_push25_double_add_241_out_feedback_out_25),
        .in_feedback_valid_in_25(i_llvm_fpga_push_i2_cleanups16_push25_double_add_241_out_feedback_valid_out_25),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist6_sync_together100_aunroll_x_in_i_valid_1_q),
        .out_data_out(i_llvm_fpga_pop_i2_cleanups16_pop25_double_add_22_out_data_out),
        .out_feedback_stall_out_25(i_llvm_fpga_pop_i2_cleanups16_pop25_double_add_22_out_feedback_stall_out_25),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_first_cleanup18_double_add_23_sel_x(BITSELECT,131)@2
    assign i_first_cleanup18_double_add_23_sel_x_b = i_llvm_fpga_pop_i2_cleanups16_pop25_double_add_22_out_data_out[0:0];

    // c_i5_176(CONSTANT,32)
    assign c_i5_176_q = $unsigned(5'b11111);

    // i_fpga_indvars_iv_next7_double_add_233(ADD,49)@2
    assign i_fpga_indvars_iv_next7_double_add_233_a = {1'b0, i_llvm_fpga_pop_i5_fpga_indvars_iv6_pop22_double_add_230_out_data_out};
    assign i_fpga_indvars_iv_next7_double_add_233_b = {1'b0, c_i5_176_q};
    assign i_fpga_indvars_iv_next7_double_add_233_o = $unsigned(i_fpga_indvars_iv_next7_double_add_233_a) + $unsigned(i_fpga_indvars_iv_next7_double_add_233_b);
    assign i_fpga_indvars_iv_next7_double_add_233_q = i_fpga_indvars_iv_next7_double_add_233_o[5:0];

    // bgTrunc_i_fpga_indvars_iv_next7_double_add_233_sel_x(BITSELECT,98)@2
    assign bgTrunc_i_fpga_indvars_iv_next7_double_add_233_sel_x_b = i_fpga_indvars_iv_next7_double_add_233_q[4:0];

    // i_llvm_fpga_push_i5_fpga_indvars_iv6_push22_double_add_234(BLACKBOX,80)@2
    // out out_feedback_out_22@20000000
    // out out_feedback_valid_out_22@20000000
    double_add_2_i_llvm_fpga_push_i5_fpga_indvars_iv6_push22_0 thei_llvm_fpga_push_i5_fpga_indvars_iv6_push22_double_add_234 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next7_double_add_233_sel_x_b),
        .in_feedback_stall_in_22(i_llvm_fpga_pop_i5_fpga_indvars_iv6_pop22_double_add_230_out_feedback_stall_out_22),
        .in_keep_going13(redist17_i_llvm_fpga_pipeline_keep_going13_double_add_26_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist6_sync_together100_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_22(i_llvm_fpga_push_i5_fpga_indvars_iv6_push22_double_add_234_out_feedback_out_22),
        .out_feedback_valid_out_22(i_llvm_fpga_push_i5_fpga_indvars_iv6_push22_double_add_234_out_feedback_valid_out_22),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i5_1074(CONSTANT,31)
    assign c_i5_1074_q = $unsigned(5'b01010);

    // i_llvm_fpga_pop_i5_fpga_indvars_iv6_pop22_double_add_230(BLACKBOX,70)@2
    // out out_feedback_stall_out_22@20000000
    double_add_2_i_llvm_fpga_pop_i5_fpga_indvars_iv6_pop22_0 thei_llvm_fpga_pop_i5_fpga_indvars_iv6_pop22_double_add_230 (
        .in_data_in(c_i5_1074_q),
        .in_dir(redist1_sync_together100_aunroll_x_in_c0_eni5_1_tpl_1_q),
        .in_feedback_in_22(i_llvm_fpga_push_i5_fpga_indvars_iv6_push22_double_add_234_out_feedback_out_22),
        .in_feedback_valid_in_22(i_llvm_fpga_push_i5_fpga_indvars_iv6_push22_double_add_234_out_feedback_valid_out_22),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist6_sync_together100_aunroll_x_in_i_valid_1_q),
        .out_data_out(i_llvm_fpga_pop_i5_fpga_indvars_iv6_pop22_double_add_230_out_data_out),
        .out_feedback_stall_out_22(i_llvm_fpga_pop_i5_fpga_indvars_iv6_pop22_double_add_230_out_feedback_stall_out_22),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_exitcond8_double_add_231_cmp_nsign(LOGICAL,171)@2
    assign i_exitcond8_double_add_231_cmp_nsign_q = $unsigned(~ (i_llvm_fpga_pop_i5_fpga_indvars_iv6_pop22_double_add_230_out_data_out[4:4]));

    // i_llvm_fpga_ffwd_dest_i1_cmp3193_double_add_235(BLACKBOX,59)@2
    double_add_2_i_llvm_fpga_ffwd_dest_i1_cmp3193_0 thei_llvm_fpga_ffwd_dest_i1_cmp3193_double_add_235 (
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_stall_in(GND_q),
        .in_valid_in(redist6_sync_together100_aunroll_x_in_i_valid_1_q),
        .out_dest_data_out_0_0(i_llvm_fpga_ffwd_dest_i1_cmp3193_double_add_235_out_dest_data_out_0_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_double_add_236(LOGICAL,90)@2
    assign i_unnamed_double_add_236_q = i_llvm_fpga_ffwd_dest_i1_cmp3193_double_add_235_out_dest_data_out_0_0 & i_exitcond8_double_add_231_cmp_nsign_q;

    // i_llvm_fpga_push_i1_notexitcond23_double_add_238(BLACKBOX,74)@2
    // out out_feedback_out_4@20000000
    // out out_feedback_valid_out_4@20000000
    double_add_2_i_llvm_fpga_push_i1_notexitcond23_0 thei_llvm_fpga_push_i1_notexitcond23_double_add_238 (
        .in_data_in(i_unnamed_double_add_236_q),
        .in_feedback_stall_in_4(i_llvm_fpga_pipeline_keep_going13_double_add_26_out_not_exitcond_stall_out),
        .in_first_cleanup18(i_first_cleanup18_double_add_23_sel_x_b),
        .in_stall_in(GND_q),
        .in_valid_in(redist6_sync_together100_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_4(i_llvm_fpga_push_i1_notexitcond23_double_add_238_out_feedback_out_4),
        .out_feedback_valid_out_4(i_llvm_fpga_push_i1_notexitcond23_double_add_238_out_feedback_valid_out_4),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg3(REG,148)@1 + 1
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

    // rightShiftStage0Idx1Rng1_uid183_i_next_initerations12_double_add_20_shift_x(BITSELECT,182)@2
    assign rightShiftStage0Idx1Rng1_uid183_i_next_initerations12_double_add_20_shift_x_b = i_llvm_fpga_pop_i2_initerations11_pop24_double_add_27_out_data_out[1:1];

    // rightShiftStage0Idx1_uid185_i_next_initerations12_double_add_20_shift_x(BITJOIN,184)@2
    assign rightShiftStage0Idx1_uid185_i_next_initerations12_double_add_20_shift_x_q = {GND_q, rightShiftStage0Idx1Rng1_uid183_i_next_initerations12_double_add_20_shift_x_b};

    // valid_fanout_reg1(REG,146)@1 + 1
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

    // valid_fanout_reg2(REG,147)@1 + 1
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

    // i_llvm_fpga_push_i2_initerations11_push24_double_add_29(BLACKBOX,78)@2
    // out out_feedback_out_24@20000000
    // out out_feedback_valid_out_24@20000000
    double_add_2_i_llvm_fpga_push_i2_initerations11_push24_0 thei_llvm_fpga_push_i2_initerations11_push24_double_add_29 (
        .in_data_in(i_next_initerations12_double_add_28_vt_join_q),
        .in_feedback_stall_in_24(i_llvm_fpga_pop_i2_initerations11_pop24_double_add_27_out_feedback_stall_out_24),
        .in_keep_going13(redist17_i_llvm_fpga_pipeline_keep_going13_double_add_26_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(),
        .out_feedback_out_24(i_llvm_fpga_push_i2_initerations11_push24_double_add_29_out_feedback_out_24),
        .out_feedback_valid_out_24(i_llvm_fpga_push_i2_initerations11_push24_double_add_29_out_feedback_valid_out_24),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i2_initerations11_pop24_double_add_27(BLACKBOX,68)@2
    // out out_feedback_stall_out_24@20000000
    double_add_2_i_llvm_fpga_pop_i2_initerations11_pop24_0 thei_llvm_fpga_pop_i2_initerations11_pop24_double_add_27 (
        .in_data_in(c_i2_170_q),
        .in_dir(redist1_sync_together100_aunroll_x_in_c0_eni5_1_tpl_1_q),
        .in_feedback_in_24(i_llvm_fpga_push_i2_initerations11_push24_double_add_29_out_feedback_out_24),
        .in_feedback_valid_in_24(i_llvm_fpga_push_i2_initerations11_push24_double_add_29_out_feedback_valid_out_24),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_data_out(i_llvm_fpga_pop_i2_initerations11_pop24_double_add_27_out_data_out),
        .out_feedback_stall_out_24(i_llvm_fpga_pop_i2_initerations11_pop24_double_add_27_out_feedback_stall_out_24),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // rightShiftStage0_uid187_i_next_initerations12_double_add_20_shift_x(MUX,186)@2
    assign rightShiftStage0_uid187_i_next_initerations12_double_add_20_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid187_i_next_initerations12_double_add_20_shift_x_s or i_llvm_fpga_pop_i2_initerations11_pop24_double_add_27_out_data_out or rightShiftStage0Idx1_uid185_i_next_initerations12_double_add_20_shift_x_q)
    begin
        unique case (rightShiftStage0_uid187_i_next_initerations12_double_add_20_shift_x_s)
            1'b0 : rightShiftStage0_uid187_i_next_initerations12_double_add_20_shift_x_q = i_llvm_fpga_pop_i2_initerations11_pop24_double_add_27_out_data_out;
            1'b1 : rightShiftStage0_uid187_i_next_initerations12_double_add_20_shift_x_q = rightShiftStage0Idx1_uid185_i_next_initerations12_double_add_20_shift_x_q;
            default : rightShiftStage0_uid187_i_next_initerations12_double_add_20_shift_x_q = 2'b0;
        endcase
    end

    // i_next_initerations12_double_add_28_vt_select_0(BITSELECT,87)@2
    assign i_next_initerations12_double_add_28_vt_select_0_b = rightShiftStage0_uid187_i_next_initerations12_double_add_20_shift_x_q[0:0];

    // i_next_initerations12_double_add_28_vt_join(BITJOIN,86)@2
    assign i_next_initerations12_double_add_28_vt_join_q = {GND_q, i_next_initerations12_double_add_28_vt_select_0_b};

    // i_last_initeration14_double_add_210_sel_x(BITSELECT,134)@2
    assign i_last_initeration14_double_add_210_sel_x_b = i_next_initerations12_double_add_28_vt_join_q[0:0];

    // i_llvm_fpga_push_i1_lastiniteration15_double_add_211(BLACKBOX,71)@2
    // out out_feedback_out_3@20000000
    // out out_feedback_valid_out_3@20000000
    double_add_2_i_llvm_fpga_push_i1_lastiniteration15_0 thei_llvm_fpga_push_i1_lastiniteration15_double_add_211 (
        .in_data_in(i_last_initeration14_double_add_210_sel_x_b),
        .in_feedback_stall_in_3(i_llvm_fpga_pipeline_keep_going13_double_add_26_out_initeration_stall_out),
        .in_keep_going13(redist17_i_llvm_fpga_pipeline_keep_going13_double_add_26_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_data_out(),
        .out_feedback_out_3(i_llvm_fpga_push_i1_lastiniteration15_double_add_211_out_feedback_out_3),
        .out_feedback_valid_out_3(i_llvm_fpga_push_i1_lastiniteration15_double_add_211_out_feedback_valid_out_3),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going13_double_add_26(BLACKBOX,62)@1
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    double_add_2_i_llvm_fpga_pipeline_keep_going13_0 thei_llvm_fpga_pipeline_keep_going13_double_add_26 (
        .in_data_in(in_c0_eni5_1_tpl),
        .in_initeration_in(i_llvm_fpga_push_i1_lastiniteration15_double_add_211_out_feedback_out_3),
        .in_initeration_valid_in(i_llvm_fpga_push_i1_lastiniteration15_double_add_211_out_feedback_valid_out_3),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond23_double_add_238_out_feedback_out_4),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond23_double_add_238_out_feedback_valid_out_4),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(i_llvm_fpga_pipeline_keep_going13_double_add_26_out_data_out),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going13_double_add_26_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going13_double_add_26_out_exiting_valid_out),
        .out_initeration_stall_out(i_llvm_fpga_pipeline_keep_going13_double_add_26_out_initeration_stall_out),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going13_double_add_26_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going13_double_add_26_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,34)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going13_double_add_26_exiting_valid_out = i_llvm_fpga_pipeline_keep_going13_double_add_26_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going13_double_add_26_exiting_stall_out = i_llvm_fpga_pipeline_keep_going13_double_add_26_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,93)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going13_double_add_26_out_pipeline_valid_out;

    // valid_fanout_reg10(REG,155)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg10_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg10_q <= $unsigned(redist6_sync_together100_aunroll_x_in_i_valid_1_q);
        end
    end

    // valid_fanout_reg6(REG,151)@1 + 1
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

    // valid_fanout_reg7(REG,152)@1 + 1
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

    // i_llvm_fpga_push_i1_push26_double_add_218(BLACKBOX,75)@2
    // out out_feedback_out_26@20000000
    // out out_feedback_valid_out_26@20000000
    double_add_2_i_llvm_fpga_push_i1_push26_0 thei_llvm_fpga_push_i1_push26_double_add_218 (
        .in_data_in(i_llvm_fpga_pop_i1_pop26_double_add_217_out_data_out),
        .in_feedback_stall_in_26(i_llvm_fpga_pop_i1_pop26_double_add_217_out_feedback_stall_out_26),
        .in_keep_going13(redist17_i_llvm_fpga_pipeline_keep_going13_double_add_26_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg7_q),
        .out_data_out(),
        .out_feedback_out_26(i_llvm_fpga_push_i1_push26_double_add_218_out_feedback_out_26),
        .out_feedback_valid_out_26(i_llvm_fpga_push_i1_push26_double_add_218_out_feedback_valid_out_26),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist2_sync_together100_aunroll_x_in_c0_eni5_2_tpl_1(DELAY,191)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_sync_together100_aunroll_x_in_c0_eni5_2_tpl_1_q <= '0;
        end
        else
        begin
            redist2_sync_together100_aunroll_x_in_c0_eni5_2_tpl_1_q <= $unsigned(in_c0_eni5_2_tpl);
        end
    end

    // i_llvm_fpga_pop_i1_pop26_double_add_217(BLACKBOX,65)@2
    // out out_feedback_stall_out_26@20000000
    double_add_2_i_llvm_fpga_pop_i1_pop26_0 thei_llvm_fpga_pop_i1_pop26_double_add_217 (
        .in_data_in(redist2_sync_together100_aunroll_x_in_c0_eni5_2_tpl_1_q),
        .in_dir(redist1_sync_together100_aunroll_x_in_c0_eni5_1_tpl_1_q),
        .in_feedback_in_26(i_llvm_fpga_push_i1_push26_double_add_218_out_feedback_out_26),
        .in_feedback_valid_in_26(i_llvm_fpga_push_i1_push26_double_add_218_out_feedback_valid_out_26),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg6_q),
        .out_data_out(i_llvm_fpga_pop_i1_pop26_double_add_217_out_data_out),
        .out_feedback_stall_out_26(i_llvm_fpga_pop_i1_pop26_double_add_217_out_feedback_stall_out_26),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_first_cleanup_xor19_or_double_add_219(LOGICAL,48)@2 + 1
    assign i_first_cleanup_xor19_or_double_add_219_qi = i_llvm_fpga_pop_i1_pop26_double_add_217_out_data_out | i_first_cleanup_xor19_double_add_24_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_first_cleanup_xor19_or_double_add_219_delay ( .xin(i_first_cleanup_xor19_or_double_add_219_qi), .xout(i_first_cleanup_xor19_or_double_add_219_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // valid_fanout_reg8(REG,153)@1 + 1
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

    // valid_fanout_reg9(REG,154)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg9_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg9_q <= $unsigned(redist6_sync_together100_aunroll_x_in_i_valid_1_q);
        end
    end

    // redist18_i_llvm_fpga_pipeline_keep_going13_double_add_26_out_data_out_2(DELAY,207)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist18_i_llvm_fpga_pipeline_keep_going13_double_add_26_out_data_out_2_q <= '0;
        end
        else
        begin
            redist18_i_llvm_fpga_pipeline_keep_going13_double_add_26_out_data_out_2_q <= $unsigned(redist17_i_llvm_fpga_pipeline_keep_going13_double_add_26_out_data_out_1_q);
        end
    end

    // i_llvm_fpga_push_i1_memdep_phi5_pop1746_push27_double_add_221(BLACKBOX,72)@3
    // out out_feedback_out_27@20000000
    // out out_feedback_valid_out_27@20000000
    double_add_2_i_llvm_fpga_push_i1_memdep_phi5_pop1746_push27_0 thei_llvm_fpga_push_i1_memdep_phi5_pop1746_push27_double_add_221 (
        .in_data_in(redist16_i_llvm_fpga_pop_i1_memdep_phi5_pop1746_pop27_double_add_220_out_data_out_1_q),
        .in_feedback_stall_in_27(i_llvm_fpga_pop_i1_memdep_phi5_pop1746_pop27_double_add_220_out_feedback_stall_out_27),
        .in_keep_going13(redist18_i_llvm_fpga_pipeline_keep_going13_double_add_26_out_data_out_2_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg9_q),
        .out_data_out(),
        .out_feedback_out_27(i_llvm_fpga_push_i1_memdep_phi5_pop1746_push27_double_add_221_out_feedback_out_27),
        .out_feedback_valid_out_27(i_llvm_fpga_push_i1_memdep_phi5_pop1746_push27_double_add_221_out_feedback_valid_out_27),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist3_sync_together100_aunroll_x_in_c0_eni5_3_tpl_1(DELAY,192)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_sync_together100_aunroll_x_in_c0_eni5_3_tpl_1_q <= '0;
        end
        else
        begin
            redist3_sync_together100_aunroll_x_in_c0_eni5_3_tpl_1_q <= $unsigned(in_c0_eni5_3_tpl);
        end
    end

    // i_llvm_fpga_pop_i1_memdep_phi5_pop1746_pop27_double_add_220(BLACKBOX,63)@2
    // out out_feedback_stall_out_27@20000000
    double_add_2_i_llvm_fpga_pop_i1_memdep_phi5_pop1746_pop27_0 thei_llvm_fpga_pop_i1_memdep_phi5_pop1746_pop27_double_add_220 (
        .in_data_in(redist3_sync_together100_aunroll_x_in_c0_eni5_3_tpl_1_q),
        .in_dir(redist1_sync_together100_aunroll_x_in_c0_eni5_1_tpl_1_q),
        .in_feedback_in_27(i_llvm_fpga_push_i1_memdep_phi5_pop1746_push27_double_add_221_out_feedback_out_27),
        .in_feedback_valid_in_27(i_llvm_fpga_push_i1_memdep_phi5_pop1746_push27_double_add_221_out_feedback_valid_out_27),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg8_q),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi5_pop1746_pop27_double_add_220_out_data_out),
        .out_feedback_stall_out_27(i_llvm_fpga_pop_i1_memdep_phi5_pop1746_pop27_double_add_220_out_feedback_stall_out_27),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist16_i_llvm_fpga_pop_i1_memdep_phi5_pop1746_pop27_double_add_220_out_data_out_1(DELAY,205)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist16_i_llvm_fpga_pop_i1_memdep_phi5_pop1746_pop27_double_add_220_out_data_out_1_q <= '0;
        end
        else
        begin
            redist16_i_llvm_fpga_pop_i1_memdep_phi5_pop1746_pop27_double_add_220_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i1_memdep_phi5_pop1746_pop27_double_add_220_out_data_out);
        end
    end

    // c_double_add_2_shift_reg_pmem(CONSTANT,4)
    assign c_double_add_2_shift_reg_pmem_q = $unsigned(64'b0100000001000000000000000000000000000000000000000000000000000000);

    // i_arrayidx164_double_add_20_upper_bits_x_merged_bit_select(BITSELECT,188)@3
    assign i_arrayidx164_double_add_20_upper_bits_x_merged_bit_select_b = c_double_add_2_shift_reg_pmem_q[63:7];
    assign i_arrayidx164_double_add_20_upper_bits_x_merged_bit_select_c = c_double_add_2_shift_reg_pmem_q[6:0];

    // c_i32_072(CONSTANT,29)
    assign c_i32_072_q = $unsigned(32'b00000000000000000000000000000000);

    // c_i32_173(CONSTANT,30)
    assign c_i32_173_q = $unsigned(32'b00000000000000000000000000000001);

    // valid_fanout_reg4(REG,149)@1 + 1
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

    // valid_fanout_reg5(REG,150)@1 + 1
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

    // i_llvm_fpga_push_i32_j_018_push23_double_add_214(BLACKBOX,79)@2
    // out out_feedback_out_23@20000000
    // out out_feedback_valid_out_23@20000000
    double_add_2_i_llvm_fpga_push_i32_j_018_push23_0 thei_llvm_fpga_push_i32_j_018_push23_double_add_214 (
        .in_data_in(bgTrunc_i_add14_double_add_213_sel_x_b),
        .in_feedback_stall_in_23(i_llvm_fpga_pop_i32_j_018_pop23_double_add_212_out_feedback_stall_out_23),
        .in_keep_going13(redist17_i_llvm_fpga_pipeline_keep_going13_double_add_26_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_data_out(),
        .out_feedback_out_23(i_llvm_fpga_push_i32_j_018_push23_double_add_214_out_feedback_out_23),
        .out_feedback_valid_out_23(i_llvm_fpga_push_i32_j_018_push23_double_add_214_out_feedback_valid_out_23),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_j_018_pop23_double_add_212(BLACKBOX,69)@2
    // out out_feedback_stall_out_23@20000000
    double_add_2_i_llvm_fpga_pop_i32_j_018_pop23_0 thei_llvm_fpga_pop_i32_j_018_pop23_double_add_212 (
        .in_data_in(c_i32_072_q),
        .in_dir(redist1_sync_together100_aunroll_x_in_c0_eni5_1_tpl_1_q),
        .in_feedback_in_23(i_llvm_fpga_push_i32_j_018_push23_double_add_214_out_feedback_out_23),
        .in_feedback_valid_in_23(i_llvm_fpga_push_i32_j_018_push23_double_add_214_out_feedback_valid_out_23),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_data_out(i_llvm_fpga_pop_i32_j_018_pop23_double_add_212_out_data_out),
        .out_feedback_stall_out_23(i_llvm_fpga_pop_i32_j_018_pop23_double_add_212_out_feedback_stall_out_23),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_add14_double_add_213(ADD,35)@2
    assign i_add14_double_add_213_a = {1'b0, i_llvm_fpga_pop_i32_j_018_pop23_double_add_212_out_data_out};
    assign i_add14_double_add_213_b = {1'b0, c_i32_173_q};
    assign i_add14_double_add_213_o = $unsigned(i_add14_double_add_213_a) + $unsigned(i_add14_double_add_213_b);
    assign i_add14_double_add_213_q = i_add14_double_add_213_o[32:0];

    // bgTrunc_i_add14_double_add_213_sel_x(BITSELECT,97)@2
    assign bgTrunc_i_add14_double_add_213_sel_x_b = i_add14_double_add_213_q[31:0];

    // i_idxprom15_double_add_215_sel_x(BITSELECT,132)@2
    assign i_idxprom15_double_add_215_sel_x_b = {32'b00000000000000000000000000000000, bgTrunc_i_add14_double_add_213_sel_x_b[31:0]};

    // i_idxprom15_double_add_215_vt_select_31(BITSELECT,53)@2
    assign i_idxprom15_double_add_215_vt_select_31_b = i_idxprom15_double_add_215_sel_x_b[31:0];

    // i_idxprom15_double_add_215_vt_join(BITJOIN,52)@2
    assign i_idxprom15_double_add_215_vt_join_q = {c_i32_072_q, i_idxprom15_double_add_215_vt_select_31_b};

    // i_arrayidx164_double_add_20_dupName_0_trunc_sel_x(BITSELECT,113)@2
    assign i_arrayidx164_double_add_20_dupName_0_trunc_sel_x_b = i_idxprom15_double_add_215_vt_join_q[6:0];

    // i_arrayidx164_double_add_20_narrow_x(BITSELECT,106)@2
    assign i_arrayidx164_double_add_20_narrow_x_b = i_arrayidx164_double_add_20_dupName_0_trunc_sel_x_b[3:0];

    // redist10_i_arrayidx164_double_add_20_narrow_x_b_1(DELAY,199)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_i_arrayidx164_double_add_20_narrow_x_b_1_q <= '0;
        end
        else
        begin
            redist10_i_arrayidx164_double_add_20_narrow_x_b_1_q <= $unsigned(i_arrayidx164_double_add_20_narrow_x_b);
        end
    end

    // i_arrayidx164_double_add_20_shift_join_x(BITJOIN,107)@3
    assign i_arrayidx164_double_add_20_shift_join_x_q = {redist10_i_arrayidx164_double_add_20_narrow_x_b_1_q, i_arrayidx164_double_add_216_vt_const_2_q};

    // i_arrayidx164_double_add_20_add_x(ADD,103)@3
    assign i_arrayidx164_double_add_20_add_x_a = {1'b0, i_arrayidx164_double_add_20_upper_bits_x_merged_bit_select_c};
    assign i_arrayidx164_double_add_20_add_x_b = {1'b0, i_arrayidx164_double_add_20_shift_join_x_q};
    assign i_arrayidx164_double_add_20_add_x_o = $unsigned(i_arrayidx164_double_add_20_add_x_a) + $unsigned(i_arrayidx164_double_add_20_add_x_b);
    assign i_arrayidx164_double_add_20_add_x_q = i_arrayidx164_double_add_20_add_x_o[7:0];

    // i_arrayidx164_double_add_20_dupName_2_trunc_sel_x(BITSELECT,114)@3
    assign i_arrayidx164_double_add_20_dupName_2_trunc_sel_x_b = i_arrayidx164_double_add_20_add_x_q[6:0];

    // i_arrayidx164_double_add_20_append_upper_bits_x(BITJOIN,104)@3
    assign i_arrayidx164_double_add_20_append_upper_bits_x_q = {i_arrayidx164_double_add_20_upper_bits_x_merged_bit_select_b, i_arrayidx164_double_add_20_dupName_2_trunc_sel_x_b};

    // i_arrayidx164_double_add_216_vt_select_63(BITSELECT,38)@3
    assign i_arrayidx164_double_add_216_vt_select_63_b = i_arrayidx164_double_add_20_append_upper_bits_x_q[63:3];

    // i_arrayidx164_double_add_216_vt_const_2(CONSTANT,36)
    assign i_arrayidx164_double_add_216_vt_const_2_q = $unsigned(3'b000);

    // i_arrayidx164_double_add_216_vt_join(BITJOIN,37)@3
    assign i_arrayidx164_double_add_216_vt_join_q = {i_arrayidx164_double_add_216_vt_select_63_b, i_arrayidx164_double_add_216_vt_const_2_q};

    // i_llvm_fpga_mem_lm102_double_add_222(BLACKBOX,60)@3
    // in in_i_stall@20000000
    // out out_lm102_double_add_2_avm_address@20000000
    // out out_lm102_double_add_2_avm_burstcount@20000000
    // out out_lm102_double_add_2_avm_byteenable@20000000
    // out out_lm102_double_add_2_avm_enable@20000000
    // out out_lm102_double_add_2_avm_read@20000000
    // out out_lm102_double_add_2_avm_write@20000000
    // out out_lm102_double_add_2_avm_writedata@20000000
    // out out_o_readdata@8
    // out out_o_stall@7
    // out out_o_valid@8
    double_add_2_i_llvm_fpga_mem_lm102_0 thei_llvm_fpga_mem_lm102_double_add_222 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx164_double_add_216_vt_join_q),
        .in_i_dependence(redist16_i_llvm_fpga_pop_i1_memdep_phi5_pop1746_pop27_double_add_220_out_data_out_1_q),
        .in_i_predicate(i_first_cleanup_xor19_or_double_add_219_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg10_q),
        .in_lm102_double_add_2_avm_readdata(in_lm102_double_add_2_avm_readdata),
        .in_lm102_double_add_2_avm_readdatavalid(in_lm102_double_add_2_avm_readdatavalid),
        .in_lm102_double_add_2_avm_waitrequest(in_lm102_double_add_2_avm_waitrequest),
        .in_lm102_double_add_2_avm_writeack(in_lm102_double_add_2_avm_writeack),
        .out_lm102_double_add_2_avm_address(i_llvm_fpga_mem_lm102_double_add_222_out_lm102_double_add_2_avm_address),
        .out_lm102_double_add_2_avm_burstcount(i_llvm_fpga_mem_lm102_double_add_222_out_lm102_double_add_2_avm_burstcount),
        .out_lm102_double_add_2_avm_byteenable(i_llvm_fpga_mem_lm102_double_add_222_out_lm102_double_add_2_avm_byteenable),
        .out_lm102_double_add_2_avm_enable(i_llvm_fpga_mem_lm102_double_add_222_out_lm102_double_add_2_avm_enable),
        .out_lm102_double_add_2_avm_read(i_llvm_fpga_mem_lm102_double_add_222_out_lm102_double_add_2_avm_read),
        .out_lm102_double_add_2_avm_write(i_llvm_fpga_mem_lm102_double_add_222_out_lm102_double_add_2_avm_write),
        .out_lm102_double_add_2_avm_writedata(i_llvm_fpga_mem_lm102_double_add_222_out_lm102_double_add_2_avm_writedata),
        .out_o_readdata(i_llvm_fpga_mem_lm102_double_add_222_out_o_readdata),
        .out_o_stall(),
        .out_o_valid(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_ext_sig_sync_out_x(GPOUT,101)
    assign out_lm102_double_add_2_avm_address = i_llvm_fpga_mem_lm102_double_add_222_out_lm102_double_add_2_avm_address;
    assign out_lm102_double_add_2_avm_enable = i_llvm_fpga_mem_lm102_double_add_222_out_lm102_double_add_2_avm_enable;
    assign out_lm102_double_add_2_avm_read = i_llvm_fpga_mem_lm102_double_add_222_out_lm102_double_add_2_avm_read;
    assign out_lm102_double_add_2_avm_write = i_llvm_fpga_mem_lm102_double_add_222_out_lm102_double_add_2_avm_write;
    assign out_lm102_double_add_2_avm_writedata = i_llvm_fpga_mem_lm102_double_add_222_out_lm102_double_add_2_avm_writedata;
    assign out_lm102_double_add_2_avm_byteenable = i_llvm_fpga_mem_lm102_double_add_222_out_lm102_double_add_2_avm_byteenable;
    assign out_lm102_double_add_2_avm_burstcount = i_llvm_fpga_mem_lm102_double_add_222_out_lm102_double_add_2_avm_burstcount;

    // redist7_sync_together100_aunroll_x_in_i_valid_6(DELAY,196)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_sync_together100_aunroll_x_in_i_valid_6_delay_0 <= '0;
            redist7_sync_together100_aunroll_x_in_i_valid_6_delay_1 <= '0;
            redist7_sync_together100_aunroll_x_in_i_valid_6_delay_2 <= '0;
            redist7_sync_together100_aunroll_x_in_i_valid_6_delay_3 <= '0;
            redist7_sync_together100_aunroll_x_in_i_valid_6_q <= '0;
        end
        else
        begin
            redist7_sync_together100_aunroll_x_in_i_valid_6_delay_0 <= $unsigned(redist6_sync_together100_aunroll_x_in_i_valid_1_q);
            redist7_sync_together100_aunroll_x_in_i_valid_6_delay_1 <= redist7_sync_together100_aunroll_x_in_i_valid_6_delay_0;
            redist7_sync_together100_aunroll_x_in_i_valid_6_delay_2 <= redist7_sync_together100_aunroll_x_in_i_valid_6_delay_1;
            redist7_sync_together100_aunroll_x_in_i_valid_6_delay_3 <= redist7_sync_together100_aunroll_x_in_i_valid_6_delay_2;
            redist7_sync_together100_aunroll_x_in_i_valid_6_q <= redist7_sync_together100_aunroll_x_in_i_valid_6_delay_3;
        end
    end

    // valid_fanout_reg11(REG,156)@7 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg11_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg11_q <= $unsigned(redist7_sync_together100_aunroll_x_in_i_valid_6_q);
        end
    end

    // redist20_i_first_cleanup_xor19_or_double_add_219_q_6(DELAY,209)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist20_i_first_cleanup_xor19_or_double_add_219_q_6_delay_0 <= '0;
            redist20_i_first_cleanup_xor19_or_double_add_219_q_6_delay_1 <= '0;
            redist20_i_first_cleanup_xor19_or_double_add_219_q_6_delay_2 <= '0;
            redist20_i_first_cleanup_xor19_or_double_add_219_q_6_delay_3 <= '0;
            redist20_i_first_cleanup_xor19_or_double_add_219_q_6_q <= '0;
        end
        else
        begin
            redist20_i_first_cleanup_xor19_or_double_add_219_q_6_delay_0 <= $unsigned(i_first_cleanup_xor19_or_double_add_219_q);
            redist20_i_first_cleanup_xor19_or_double_add_219_q_6_delay_1 <= redist20_i_first_cleanup_xor19_or_double_add_219_q_6_delay_0;
            redist20_i_first_cleanup_xor19_or_double_add_219_q_6_delay_2 <= redist20_i_first_cleanup_xor19_or_double_add_219_q_6_delay_1;
            redist20_i_first_cleanup_xor19_or_double_add_219_q_6_delay_3 <= redist20_i_first_cleanup_xor19_or_double_add_219_q_6_delay_2;
            redist20_i_first_cleanup_xor19_or_double_add_219_q_6_q <= redist20_i_first_cleanup_xor19_or_double_add_219_q_6_delay_3;
        end
    end

    // redist21_i_arrayidx185_double_add_227_vt_select_63_b_5_notEnable(LOGICAL,217)
    assign redist21_i_arrayidx185_double_add_227_vt_select_63_b_5_notEnable_q = $unsigned(~ (VCC_q));

    // redist21_i_arrayidx185_double_add_227_vt_select_63_b_5_nor(LOGICAL,218)
    assign redist21_i_arrayidx185_double_add_227_vt_select_63_b_5_nor_q = ~ (redist21_i_arrayidx185_double_add_227_vt_select_63_b_5_notEnable_q | redist21_i_arrayidx185_double_add_227_vt_select_63_b_5_sticky_ena_q);

    // redist21_i_arrayidx185_double_add_227_vt_select_63_b_5_mem_last(CONSTANT,214)
    assign redist21_i_arrayidx185_double_add_227_vt_select_63_b_5_mem_last_q = $unsigned(3'b010);

    // redist21_i_arrayidx185_double_add_227_vt_select_63_b_5_cmp(LOGICAL,215)
    assign redist21_i_arrayidx185_double_add_227_vt_select_63_b_5_cmp_b = {1'b0, redist21_i_arrayidx185_double_add_227_vt_select_63_b_5_rdcnt_q};
    assign redist21_i_arrayidx185_double_add_227_vt_select_63_b_5_cmp_q = $unsigned(redist21_i_arrayidx185_double_add_227_vt_select_63_b_5_mem_last_q == redist21_i_arrayidx185_double_add_227_vt_select_63_b_5_cmp_b ? 1'b1 : 1'b0);

    // redist21_i_arrayidx185_double_add_227_vt_select_63_b_5_cmpReg(REG,216)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist21_i_arrayidx185_double_add_227_vt_select_63_b_5_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist21_i_arrayidx185_double_add_227_vt_select_63_b_5_cmpReg_q <= $unsigned(redist21_i_arrayidx185_double_add_227_vt_select_63_b_5_cmp_q);
        end
    end

    // redist21_i_arrayidx185_double_add_227_vt_select_63_b_5_sticky_ena(REG,219)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist21_i_arrayidx185_double_add_227_vt_select_63_b_5_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist21_i_arrayidx185_double_add_227_vt_select_63_b_5_nor_q == 1'b1)
        begin
            redist21_i_arrayidx185_double_add_227_vt_select_63_b_5_sticky_ena_q <= $unsigned(redist21_i_arrayidx185_double_add_227_vt_select_63_b_5_cmpReg_q);
        end
    end

    // redist21_i_arrayidx185_double_add_227_vt_select_63_b_5_enaAnd(LOGICAL,220)
    assign redist21_i_arrayidx185_double_add_227_vt_select_63_b_5_enaAnd_q = redist21_i_arrayidx185_double_add_227_vt_select_63_b_5_sticky_ena_q & VCC_q;

    // redist21_i_arrayidx185_double_add_227_vt_select_63_b_5_rdcnt(COUNTER,212)
    // low=0, high=3, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist21_i_arrayidx185_double_add_227_vt_select_63_b_5_rdcnt_i <= 2'd0;
        end
        else
        begin
            redist21_i_arrayidx185_double_add_227_vt_select_63_b_5_rdcnt_i <= $unsigned(redist21_i_arrayidx185_double_add_227_vt_select_63_b_5_rdcnt_i) + $unsigned(2'd1);
        end
    end
    assign redist21_i_arrayidx185_double_add_227_vt_select_63_b_5_rdcnt_q = redist21_i_arrayidx185_double_add_227_vt_select_63_b_5_rdcnt_i[1:0];

    // i_idxprom17_double_add_226_sel_x(BITSELECT,133)@2
    assign i_idxprom17_double_add_226_sel_x_b = {32'b00000000000000000000000000000000, i_llvm_fpga_pop_i32_j_018_pop23_double_add_212_out_data_out[31:0]};

    // i_idxprom17_double_add_226_vt_select_31(BITSELECT,57)@2
    assign i_idxprom17_double_add_226_vt_select_31_b = i_idxprom17_double_add_226_sel_x_b[31:0];

    // i_idxprom17_double_add_226_vt_join(BITJOIN,56)@2
    assign i_idxprom17_double_add_226_vt_join_q = {c_i32_072_q, i_idxprom17_double_add_226_vt_select_31_b};

    // i_arrayidx185_double_add_20_dupName_0_trunc_sel_x(BITSELECT,125)@2
    assign i_arrayidx185_double_add_20_dupName_0_trunc_sel_x_b = i_idxprom17_double_add_226_vt_join_q[6:0];

    // i_arrayidx185_double_add_20_narrow_x(BITSELECT,118)@2
    assign i_arrayidx185_double_add_20_narrow_x_b = i_arrayidx185_double_add_20_dupName_0_trunc_sel_x_b[3:0];

    // redist9_i_arrayidx185_double_add_20_narrow_x_b_1(DELAY,198)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_i_arrayidx185_double_add_20_narrow_x_b_1_q <= '0;
        end
        else
        begin
            redist9_i_arrayidx185_double_add_20_narrow_x_b_1_q <= $unsigned(i_arrayidx185_double_add_20_narrow_x_b);
        end
    end

    // i_arrayidx185_double_add_20_shift_join_x(BITJOIN,119)@3
    assign i_arrayidx185_double_add_20_shift_join_x_q = {redist9_i_arrayidx185_double_add_20_narrow_x_b_1_q, i_arrayidx164_double_add_216_vt_const_2_q};

    // i_arrayidx185_double_add_20_add_x(ADD,115)@3
    assign i_arrayidx185_double_add_20_add_x_a = {1'b0, i_arrayidx164_double_add_20_upper_bits_x_merged_bit_select_c};
    assign i_arrayidx185_double_add_20_add_x_b = {1'b0, i_arrayidx185_double_add_20_shift_join_x_q};
    assign i_arrayidx185_double_add_20_add_x_o = $unsigned(i_arrayidx185_double_add_20_add_x_a) + $unsigned(i_arrayidx185_double_add_20_add_x_b);
    assign i_arrayidx185_double_add_20_add_x_q = i_arrayidx185_double_add_20_add_x_o[7:0];

    // i_arrayidx185_double_add_20_dupName_2_trunc_sel_x(BITSELECT,126)@3
    assign i_arrayidx185_double_add_20_dupName_2_trunc_sel_x_b = i_arrayidx185_double_add_20_add_x_q[6:0];

    // i_arrayidx185_double_add_20_append_upper_bits_x(BITJOIN,116)@3
    assign i_arrayidx185_double_add_20_append_upper_bits_x_q = {i_arrayidx164_double_add_20_upper_bits_x_merged_bit_select_b, i_arrayidx185_double_add_20_dupName_2_trunc_sel_x_b};

    // i_arrayidx185_double_add_227_vt_select_63(BITSELECT,41)@3
    assign i_arrayidx185_double_add_227_vt_select_63_b = i_arrayidx185_double_add_20_append_upper_bits_x_q[63:3];

    // redist21_i_arrayidx185_double_add_227_vt_select_63_b_5_wraddr(REG,213)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist21_i_arrayidx185_double_add_227_vt_select_63_b_5_wraddr_q <= $unsigned(2'b11);
        end
        else
        begin
            redist21_i_arrayidx185_double_add_227_vt_select_63_b_5_wraddr_q <= $unsigned(redist21_i_arrayidx185_double_add_227_vt_select_63_b_5_rdcnt_q);
        end
    end

    // redist21_i_arrayidx185_double_add_227_vt_select_63_b_5_mem(DUALMEM,211)
    assign redist21_i_arrayidx185_double_add_227_vt_select_63_b_5_mem_ia = $unsigned(i_arrayidx185_double_add_227_vt_select_63_b);
    assign redist21_i_arrayidx185_double_add_227_vt_select_63_b_5_mem_aa = redist21_i_arrayidx185_double_add_227_vt_select_63_b_5_wraddr_q;
    assign redist21_i_arrayidx185_double_add_227_vt_select_63_b_5_mem_ab = redist21_i_arrayidx185_double_add_227_vt_select_63_b_5_rdcnt_q;
    assign redist21_i_arrayidx185_double_add_227_vt_select_63_b_5_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(61),
        .widthad_a(2),
        .numwords_a(4),
        .width_b(61),
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
    ) redist21_i_arrayidx185_double_add_227_vt_select_63_b_5_mem_dmem (
        .clocken1(redist21_i_arrayidx185_double_add_227_vt_select_63_b_5_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist21_i_arrayidx185_double_add_227_vt_select_63_b_5_mem_reset0),
        .clock1(clock),
        .address_a(redist21_i_arrayidx185_double_add_227_vt_select_63_b_5_mem_aa),
        .data_a(redist21_i_arrayidx185_double_add_227_vt_select_63_b_5_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist21_i_arrayidx185_double_add_227_vt_select_63_b_5_mem_ab),
        .q_b(redist21_i_arrayidx185_double_add_227_vt_select_63_b_5_mem_iq),
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
    assign redist21_i_arrayidx185_double_add_227_vt_select_63_b_5_mem_q = redist21_i_arrayidx185_double_add_227_vt_select_63_b_5_mem_iq[60:0];

    // i_arrayidx185_double_add_227_vt_join(BITJOIN,40)@8
    assign i_arrayidx185_double_add_227_vt_join_q = {redist21_i_arrayidx185_double_add_227_vt_select_63_b_5_mem_q, i_arrayidx164_double_add_216_vt_const_2_q};

    // i_llvm_fpga_mem_memdep_4_double_add_229(BLACKBOX,61)@8
    // out out_memdep_4_double_add_2_avm_address@20000000
    // out out_memdep_4_double_add_2_avm_burstcount@20000000
    // out out_memdep_4_double_add_2_avm_byteenable@20000000
    // out out_memdep_4_double_add_2_avm_enable@20000000
    // out out_memdep_4_double_add_2_avm_read@20000000
    // out out_memdep_4_double_add_2_avm_write@20000000
    // out out_memdep_4_double_add_2_avm_writedata@20000000
    // out out_o_stall@9
    // out out_o_valid@9
    // out out_o_writeack@9
    double_add_2_i_llvm_fpga_mem_memdep_4_0 thei_llvm_fpga_mem_memdep_4_double_add_229 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx185_double_add_227_vt_join_q),
        .in_i_predicate(redist20_i_first_cleanup_xor19_or_double_add_219_q_6_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg11_q),
        .in_i_writedata(i_llvm_fpga_mem_lm102_double_add_222_out_o_readdata),
        .in_memdep_4_double_add_2_avm_readdata(in_memdep_4_double_add_2_avm_readdata),
        .in_memdep_4_double_add_2_avm_readdatavalid(in_memdep_4_double_add_2_avm_readdatavalid),
        .in_memdep_4_double_add_2_avm_waitrequest(in_memdep_4_double_add_2_avm_waitrequest),
        .in_memdep_4_double_add_2_avm_writeack(in_memdep_4_double_add_2_avm_writeack),
        .out_memdep_4_double_add_2_avm_address(i_llvm_fpga_mem_memdep_4_double_add_229_out_memdep_4_double_add_2_avm_address),
        .out_memdep_4_double_add_2_avm_burstcount(i_llvm_fpga_mem_memdep_4_double_add_229_out_memdep_4_double_add_2_avm_burstcount),
        .out_memdep_4_double_add_2_avm_byteenable(i_llvm_fpga_mem_memdep_4_double_add_229_out_memdep_4_double_add_2_avm_byteenable),
        .out_memdep_4_double_add_2_avm_enable(i_llvm_fpga_mem_memdep_4_double_add_229_out_memdep_4_double_add_2_avm_enable),
        .out_memdep_4_double_add_2_avm_read(i_llvm_fpga_mem_memdep_4_double_add_229_out_memdep_4_double_add_2_avm_read),
        .out_memdep_4_double_add_2_avm_write(i_llvm_fpga_mem_memdep_4_double_add_229_out_memdep_4_double_add_2_avm_write),
        .out_memdep_4_double_add_2_avm_writedata(i_llvm_fpga_mem_memdep_4_double_add_229_out_memdep_4_double_add_2_avm_writedata),
        .out_o_stall(),
        .out_o_valid(),
        .out_o_writeack(i_llvm_fpga_mem_memdep_4_double_add_229_out_o_writeack),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_1_ext_sig_sync_out_x(GPOUT,102)
    assign out_memdep_4_double_add_2_avm_address = i_llvm_fpga_mem_memdep_4_double_add_229_out_memdep_4_double_add_2_avm_address;
    assign out_memdep_4_double_add_2_avm_enable = i_llvm_fpga_mem_memdep_4_double_add_229_out_memdep_4_double_add_2_avm_enable;
    assign out_memdep_4_double_add_2_avm_read = i_llvm_fpga_mem_memdep_4_double_add_229_out_memdep_4_double_add_2_avm_read;
    assign out_memdep_4_double_add_2_avm_write = i_llvm_fpga_mem_memdep_4_double_add_229_out_memdep_4_double_add_2_avm_write;
    assign out_memdep_4_double_add_2_avm_writedata = i_llvm_fpga_mem_memdep_4_double_add_229_out_memdep_4_double_add_2_avm_writedata;
    assign out_memdep_4_double_add_2_avm_byteenable = i_llvm_fpga_mem_memdep_4_double_add_229_out_memdep_4_double_add_2_avm_byteenable;
    assign out_memdep_4_double_add_2_avm_burstcount = i_llvm_fpga_mem_memdep_4_double_add_229_out_memdep_4_double_add_2_avm_burstcount;

    // valid_fanout_reg0(REG,145)@7 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist7_sync_together100_aunroll_x_in_i_valid_6_q);
        end
    end

    // redist0_valid_fanout_reg0_q_1(DELAY,189)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_valid_fanout_reg0_q_1_q <= '0;
        end
        else
        begin
            redist0_valid_fanout_reg0_q_1_q <= $unsigned(valid_fanout_reg0_q);
        end
    end

    // valid_fanout_reg14(REG,159)@1 + 1
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

    // valid_fanout_reg15(REG,160)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg15_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg15_q <= $unsigned(redist6_sync_together100_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_push_i1_notcmp2647_push29_double_add_246(BLACKBOX,73)@3
    // out out_feedback_out_29@20000000
    // out out_feedback_valid_out_29@20000000
    double_add_2_i_llvm_fpga_push_i1_notcmp2647_push29_0 thei_llvm_fpga_push_i1_notcmp2647_push29_double_add_246 (
        .in_data_in(redist14_i_llvm_fpga_pop_i1_notcmp2647_pop29_double_add_245_out_data_out_1_q),
        .in_feedback_stall_in_29(i_llvm_fpga_pop_i1_notcmp2647_pop29_double_add_245_out_feedback_stall_out_29),
        .in_keep_going13(redist18_i_llvm_fpga_pipeline_keep_going13_double_add_26_out_data_out_2_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg15_q),
        .out_data_out(),
        .out_feedback_out_29(i_llvm_fpga_push_i1_notcmp2647_push29_double_add_246_out_feedback_out_29),
        .out_feedback_valid_out_29(i_llvm_fpga_push_i1_notcmp2647_push29_double_add_246_out_feedback_valid_out_29),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist5_sync_together100_aunroll_x_in_c0_eni5_5_tpl_1(DELAY,194)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_sync_together100_aunroll_x_in_c0_eni5_5_tpl_1_q <= '0;
        end
        else
        begin
            redist5_sync_together100_aunroll_x_in_c0_eni5_5_tpl_1_q <= $unsigned(in_c0_eni5_5_tpl);
        end
    end

    // i_llvm_fpga_pop_i1_notcmp2647_pop29_double_add_245(BLACKBOX,64)@2
    // out out_feedback_stall_out_29@20000000
    double_add_2_i_llvm_fpga_pop_i1_notcmp2647_pop29_0 thei_llvm_fpga_pop_i1_notcmp2647_pop29_double_add_245 (
        .in_data_in(redist5_sync_together100_aunroll_x_in_c0_eni5_5_tpl_1_q),
        .in_dir(redist1_sync_together100_aunroll_x_in_c0_eni5_1_tpl_1_q),
        .in_feedback_in_29(i_llvm_fpga_push_i1_notcmp2647_push29_double_add_246_out_feedback_out_29),
        .in_feedback_valid_in_29(i_llvm_fpga_push_i1_notcmp2647_push29_double_add_246_out_feedback_valid_out_29),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg14_q),
        .out_data_out(i_llvm_fpga_pop_i1_notcmp2647_pop29_double_add_245_out_data_out),
        .out_feedback_stall_out_29(i_llvm_fpga_pop_i1_notcmp2647_pop29_double_add_245_out_feedback_stall_out_29),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist14_i_llvm_fpga_pop_i1_notcmp2647_pop29_double_add_245_out_data_out_1(DELAY,203)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_i_llvm_fpga_pop_i1_notcmp2647_pop29_double_add_245_out_data_out_1_q <= '0;
        end
        else
        begin
            redist14_i_llvm_fpga_pop_i1_notcmp2647_pop29_double_add_245_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i1_notcmp2647_pop29_double_add_245_out_data_out);
        end
    end

    // redist15_i_llvm_fpga_pop_i1_notcmp2647_pop29_double_add_245_out_data_out_7(DELAY,204)
    dspba_delay_ver #( .width(1), .depth(6), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist15_i_llvm_fpga_pop_i1_notcmp2647_pop29_double_add_245_out_data_out_7 ( .xin(redist14_i_llvm_fpga_pop_i1_notcmp2647_pop29_double_add_245_out_data_out_1_q), .xout(redist15_i_llvm_fpga_pop_i1_notcmp2647_pop29_double_add_245_out_data_out_7_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // valid_fanout_reg12(REG,157)@1 + 1
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

    // valid_fanout_reg13(REG,158)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg13_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg13_q <= $unsigned(redist6_sync_together100_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_push_i1_push28_double_add_244(BLACKBOX,76)@3
    // out out_feedback_out_28@20000000
    // out out_feedback_valid_out_28@20000000
    double_add_2_i_llvm_fpga_push_i1_push28_0 thei_llvm_fpga_push_i1_push28_double_add_244 (
        .in_data_in(redist12_i_llvm_fpga_pop_i1_pop28_double_add_243_out_data_out_1_q),
        .in_feedback_stall_in_28(i_llvm_fpga_pop_i1_pop28_double_add_243_out_feedback_stall_out_28),
        .in_keep_going13(redist18_i_llvm_fpga_pipeline_keep_going13_double_add_26_out_data_out_2_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg13_q),
        .out_data_out(),
        .out_feedback_out_28(i_llvm_fpga_push_i1_push28_double_add_244_out_feedback_out_28),
        .out_feedback_valid_out_28(i_llvm_fpga_push_i1_push28_double_add_244_out_feedback_valid_out_28),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist4_sync_together100_aunroll_x_in_c0_eni5_4_tpl_1(DELAY,193)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_sync_together100_aunroll_x_in_c0_eni5_4_tpl_1_q <= '0;
        end
        else
        begin
            redist4_sync_together100_aunroll_x_in_c0_eni5_4_tpl_1_q <= $unsigned(in_c0_eni5_4_tpl);
        end
    end

    // i_llvm_fpga_pop_i1_pop28_double_add_243(BLACKBOX,66)@2
    // out out_feedback_stall_out_28@20000000
    double_add_2_i_llvm_fpga_pop_i1_pop28_0 thei_llvm_fpga_pop_i1_pop28_double_add_243 (
        .in_data_in(redist4_sync_together100_aunroll_x_in_c0_eni5_4_tpl_1_q),
        .in_dir(redist1_sync_together100_aunroll_x_in_c0_eni5_1_tpl_1_q),
        .in_feedback_in_28(i_llvm_fpga_push_i1_push28_double_add_244_out_feedback_out_28),
        .in_feedback_valid_in_28(i_llvm_fpga_push_i1_push28_double_add_244_out_feedback_valid_out_28),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg12_q),
        .out_data_out(i_llvm_fpga_pop_i1_pop28_double_add_243_out_data_out),
        .out_feedback_stall_out_28(i_llvm_fpga_pop_i1_pop28_double_add_243_out_feedback_stall_out_28),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist12_i_llvm_fpga_pop_i1_pop28_double_add_243_out_data_out_1(DELAY,201)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_i_llvm_fpga_pop_i1_pop28_double_add_243_out_data_out_1_q <= '0;
        end
        else
        begin
            redist12_i_llvm_fpga_pop_i1_pop28_double_add_243_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i1_pop28_double_add_243_out_data_out);
        end
    end

    // redist13_i_llvm_fpga_pop_i1_pop28_double_add_243_out_data_out_7(DELAY,202)
    dspba_delay_ver #( .width(1), .depth(6), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist13_i_llvm_fpga_pop_i1_pop28_double_add_243_out_data_out_7 ( .xin(redist12_i_llvm_fpga_pop_i1_pop28_double_add_243_out_data_out_1_q), .xout(redist13_i_llvm_fpga_pop_i1_pop28_double_add_243_out_data_out_7_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_masked22_double_add_242(LOGICAL,83)@2 + 1
    assign i_masked22_double_add_242_qi = i_notcmp9_double_add_237_q & i_first_cleanup18_double_add_23_sel_x_b;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_masked22_double_add_242_delay ( .xin(i_masked22_double_add_242_qi), .xout(i_masked22_double_add_242_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist11_i_masked22_double_add_242_q_7(DELAY,200)
    dspba_delay_ver #( .width(1), .depth(6), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist11_i_masked22_double_add_242_q_7 ( .xin(i_masked22_double_add_242_q), .xout(redist11_i_masked22_double_add_242_q_7_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_lm102_toi1_intcast_double_add_224_sel_x(BITSELECT,135)@8
    assign i_lm102_toi1_intcast_double_add_224_sel_x_b = i_llvm_fpga_mem_lm102_double_add_222_out_o_readdata[0:0];

    // redist8_i_lm102_toi1_intcast_double_add_224_sel_x_b_1(DELAY,197)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_i_lm102_toi1_intcast_double_add_224_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist8_i_lm102_toi1_intcast_double_add_224_sel_x_b_1_q <= $unsigned(i_lm102_toi1_intcast_double_add_224_sel_x_b);
        end
    end

    // redist19_i_llvm_fpga_pipeline_keep_going13_double_add_26_out_data_out_8(DELAY,208)
    dspba_delay_ver #( .width(1), .depth(6), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist19_i_llvm_fpga_pipeline_keep_going13_double_add_26_out_data_out_8 ( .xin(redist18_i_llvm_fpga_pipeline_keep_going13_double_add_26_out_data_out_2_q), .xout(redist19_i_llvm_fpga_pipeline_keep_going13_double_add_26_out_data_out_8_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // sync_out_aunroll_x(GPOUT,143)@9
    assign out_c0_exi6_0_tpl = GND_q;
    assign out_c0_exi6_1_tpl = redist19_i_llvm_fpga_pipeline_keep_going13_double_add_26_out_data_out_8_q;
    assign out_c0_exi6_2_tpl = redist8_i_lm102_toi1_intcast_double_add_224_sel_x_b_1_q;
    assign out_c0_exi6_3_tpl = i_llvm_fpga_mem_memdep_4_double_add_229_out_o_writeack;
    assign out_c0_exi6_4_tpl = redist11_i_masked22_double_add_242_q_7_q;
    assign out_c0_exi6_5_tpl = redist13_i_llvm_fpga_pop_i1_pop28_double_add_243_out_data_out_7_q;
    assign out_c0_exi6_6_tpl = redist15_i_llvm_fpga_pop_i1_notcmp2647_pop29_double_add_245_out_data_out_7_q;
    assign out_o_valid = redist0_valid_fanout_reg0_q_1_q;
    assign out_unnamed_double_add_23 = GND_q;

endmodule
