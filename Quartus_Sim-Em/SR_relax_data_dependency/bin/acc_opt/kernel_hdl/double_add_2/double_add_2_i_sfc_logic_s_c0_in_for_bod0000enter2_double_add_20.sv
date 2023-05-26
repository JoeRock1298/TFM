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

// SystemVerilog created from double_add_2_i_sfc_logic_s_c0_in_for_bod0000enter2_double_add_20
// SystemVerilog created on Tue May 23 13:58:22 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module double_add_2_i_sfc_logic_s_c0_in_for_bod0000enter2_double_add_20 (
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going78_double_add_28_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going78_double_add_28_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    output wire [63:0] out_intel_reserved_ffwd_10_0,
    output wire [63:0] out_intel_reserved_ffwd_11_0,
    output wire [63:0] out_intel_reserved_ffwd_12_0,
    output wire [63:0] out_intel_reserved_ffwd_13_0,
    output wire [63:0] out_intel_reserved_ffwd_2_0,
    output wire [63:0] out_intel_reserved_ffwd_3_0,
    output wire [63:0] out_intel_reserved_ffwd_4_0,
    output wire [63:0] out_intel_reserved_ffwd_5_0,
    output wire [63:0] out_intel_reserved_ffwd_6_0,
    output wire [63:0] out_intel_reserved_ffwd_7_0,
    output wire [63:0] out_intel_reserved_ffwd_8_0,
    output wire [63:0] out_intel_reserved_ffwd_9_0,
    output wire [0:0] out_c0_exi2_0_tpl,
    output wire [0:0] out_c0_exi2_1_tpl,
    output wire [0:0] out_c0_exi2_2_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_double_add_214,
    input wire [0:0] in_c0_eni1_0_tpl,
    input wire [0:0] in_c0_eni1_1_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [63:0] c_double_0_000000e_00166_q;
    wire [31:0] c_i32_0153_q;
    wire [31:0] c_i32_1164_q;
    wire [3:0] c_i4_7150_q;
    wire [4:0] c_i5_11167_q;
    wire [4:0] c_i5_1169_q;
    wire [3:0] i_cleanups_shl82_double_add_27_vt_join_q;
    wire [2:0] i_cleanups_shl82_double_add_27_vt_select_3_b;
    wire [0:0] i_first_cleanup_xor84_double_add_26_q;
    wire [5:0] i_fpga_indvars_iv_next120_double_add_287_a;
    wire [5:0] i_fpga_indvars_iv_next120_double_add_287_b;
    logic [5:0] i_fpga_indvars_iv_next120_double_add_287_o;
    wire [5:0] i_fpga_indvars_iv_next120_double_add_287_q;
    wire [32:0] i_inc_double_add_277_a;
    wire [32:0] i_inc_double_add_277_b;
    logic [32:0] i_inc_double_add_277_o;
    wire [32:0] i_inc_double_add_277_q;
    (* dont_merge *) reg [0:0] i_llvm_fpga_fanout_i1_c0_ene1_fanout_adaptor111_double_add_22_q;
    (* dont_merge *) reg [0:0] i_llvm_fpga_fanout_i1_c0_ene1_fanout_adaptor_double_add_23_q;
    (* dont_merge *) reg [0:0] i_llvm_fpga_fanout_i1_keep_going78_fanout_adaptor112_double_add_29_q;
    (* dont_merge *) reg [0:0] i_llvm_fpga_fanout_i1_keep_going78_fanout_adaptor_double_add_210_q;
    wire [63:0] i_llvm_fpga_ffwd_source_f64_unnamed_double_add_210_double_add_297_out_intel_reserved_ffwd_10_0;
    wire [63:0] i_llvm_fpga_ffwd_source_f64_unnamed_double_add_211_double_add_298_out_intel_reserved_ffwd_11_0;
    wire [63:0] i_llvm_fpga_ffwd_source_f64_unnamed_double_add_212_double_add_299_out_intel_reserved_ffwd_12_0;
    wire [63:0] i_llvm_fpga_ffwd_source_f64_unnamed_double_add_213_double_add_2100_out_intel_reserved_ffwd_13_0;
    wire [63:0] i_llvm_fpga_ffwd_source_f64_unnamed_double_add_22_double_add_289_out_intel_reserved_ffwd_2_0;
    wire [63:0] i_llvm_fpga_ffwd_source_f64_unnamed_double_add_23_double_add_290_out_intel_reserved_ffwd_3_0;
    wire [63:0] i_llvm_fpga_ffwd_source_f64_unnamed_double_add_24_double_add_291_out_intel_reserved_ffwd_4_0;
    wire [63:0] i_llvm_fpga_ffwd_source_f64_unnamed_double_add_25_double_add_292_out_intel_reserved_ffwd_5_0;
    wire [63:0] i_llvm_fpga_ffwd_source_f64_unnamed_double_add_26_double_add_293_out_intel_reserved_ffwd_6_0;
    wire [63:0] i_llvm_fpga_ffwd_source_f64_unnamed_double_add_27_double_add_294_out_intel_reserved_ffwd_7_0;
    wire [63:0] i_llvm_fpga_ffwd_source_f64_unnamed_double_add_28_double_add_295_out_intel_reserved_ffwd_8_0;
    wire [63:0] i_llvm_fpga_ffwd_source_f64_unnamed_double_add_29_double_add_296_out_intel_reserved_ffwd_9_0;
    wire [0:0] i_llvm_fpga_pipeline_keep_going78_double_add_28_out_data_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going78_double_add_28_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going78_double_add_28_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going78_double_add_28_out_initeration_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going78_double_add_28_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going78_double_add_28_out_pipeline_valid_out;
    wire [63:0] i_llvm_fpga_pop_f64_shift_reg_sroa_0_0_pop33_double_add_241_out_data_out;
    wire [0:0] i_llvm_fpga_pop_f64_shift_reg_sroa_0_0_pop33_double_add_241_out_feedback_stall_out_33;
    wire [63:0] i_llvm_fpga_pop_f64_shift_reg_sroa_10_0_pop31_double_add_247_out_data_out;
    wire [0:0] i_llvm_fpga_pop_f64_shift_reg_sroa_10_0_pop31_double_add_247_out_feedback_stall_out_31;
    wire [63:0] i_llvm_fpga_pop_f64_shift_reg_sroa_14_0_pop30_double_add_250_out_data_out;
    wire [0:0] i_llvm_fpga_pop_f64_shift_reg_sroa_14_0_pop30_double_add_250_out_feedback_stall_out_30;
    wire [63:0] i_llvm_fpga_pop_f64_shift_reg_sroa_18_0_pop29_double_add_253_out_data_out;
    wire [0:0] i_llvm_fpga_pop_f64_shift_reg_sroa_18_0_pop29_double_add_253_out_feedback_stall_out_29;
    wire [63:0] i_llvm_fpga_pop_f64_shift_reg_sroa_22_0_pop28_double_add_256_out_data_out;
    wire [0:0] i_llvm_fpga_pop_f64_shift_reg_sroa_22_0_pop28_double_add_256_out_feedback_stall_out_28;
    wire [63:0] i_llvm_fpga_pop_f64_shift_reg_sroa_26_0_pop27_double_add_259_out_data_out;
    wire [0:0] i_llvm_fpga_pop_f64_shift_reg_sroa_26_0_pop27_double_add_259_out_feedback_stall_out_27;
    wire [63:0] i_llvm_fpga_pop_f64_shift_reg_sroa_30_0_pop26_double_add_262_out_data_out;
    wire [0:0] i_llvm_fpga_pop_f64_shift_reg_sroa_30_0_pop26_double_add_262_out_feedback_stall_out_26;
    wire [63:0] i_llvm_fpga_pop_f64_shift_reg_sroa_34_0_pop25_double_add_265_out_data_out;
    wire [0:0] i_llvm_fpga_pop_f64_shift_reg_sroa_34_0_pop25_double_add_265_out_feedback_stall_out_25;
    wire [63:0] i_llvm_fpga_pop_f64_shift_reg_sroa_38_0_pop24_double_add_268_out_data_out;
    wire [0:0] i_llvm_fpga_pop_f64_shift_reg_sroa_38_0_pop24_double_add_268_out_feedback_stall_out_24;
    wire [63:0] i_llvm_fpga_pop_f64_shift_reg_sroa_42_0_pop23_double_add_271_out_data_out;
    wire [0:0] i_llvm_fpga_pop_f64_shift_reg_sroa_42_0_pop23_double_add_271_out_feedback_stall_out_23;
    wire [63:0] i_llvm_fpga_pop_f64_shift_reg_sroa_46_0_pop22_double_add_274_out_data_out;
    wire [0:0] i_llvm_fpga_pop_f64_shift_reg_sroa_46_0_pop22_double_add_274_out_feedback_stall_out_22;
    wire [63:0] i_llvm_fpga_pop_f64_shift_reg_sroa_6_0_pop32_double_add_244_out_data_out;
    wire [0:0] i_llvm_fpga_pop_f64_shift_reg_sroa_6_0_pop32_double_add_244_out_feedback_stall_out_32;
    wire [31:0] i_llvm_fpga_pop_i32_i_021_pop34_double_add_216_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_i_021_pop34_double_add_216_out_feedback_stall_out_34;
    wire [3:0] i_llvm_fpga_pop_i4_cleanups81_pop36_double_add_24_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i4_cleanups81_pop36_double_add_24_out_feedback_stall_out_36;
    wire [3:0] i_llvm_fpga_pop_i4_initerations76_pop35_double_add_211_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i4_initerations76_pop35_double_add_211_out_feedback_stall_out_35;
    wire [4:0] i_llvm_fpga_pop_i5_fpga_indvars_iv119_pop21_double_add_279_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i5_fpga_indvars_iv119_pop21_double_add_279_out_feedback_stall_out_21;
    wire [63:0] i_llvm_fpga_push_f64_shift_reg_sroa_0_0_push33_double_add_243_out_feedback_out_33;
    wire [0:0] i_llvm_fpga_push_f64_shift_reg_sroa_0_0_push33_double_add_243_out_feedback_valid_out_33;
    wire [63:0] i_llvm_fpga_push_f64_shift_reg_sroa_10_0_push31_double_add_249_out_feedback_out_31;
    wire [0:0] i_llvm_fpga_push_f64_shift_reg_sroa_10_0_push31_double_add_249_out_feedback_valid_out_31;
    wire [63:0] i_llvm_fpga_push_f64_shift_reg_sroa_14_0_push30_double_add_252_out_feedback_out_30;
    wire [0:0] i_llvm_fpga_push_f64_shift_reg_sroa_14_0_push30_double_add_252_out_feedback_valid_out_30;
    wire [63:0] i_llvm_fpga_push_f64_shift_reg_sroa_18_0_push29_double_add_255_out_feedback_out_29;
    wire [0:0] i_llvm_fpga_push_f64_shift_reg_sroa_18_0_push29_double_add_255_out_feedback_valid_out_29;
    wire [63:0] i_llvm_fpga_push_f64_shift_reg_sroa_22_0_push28_double_add_258_out_feedback_out_28;
    wire [0:0] i_llvm_fpga_push_f64_shift_reg_sroa_22_0_push28_double_add_258_out_feedback_valid_out_28;
    wire [63:0] i_llvm_fpga_push_f64_shift_reg_sroa_26_0_push27_double_add_261_out_feedback_out_27;
    wire [0:0] i_llvm_fpga_push_f64_shift_reg_sroa_26_0_push27_double_add_261_out_feedback_valid_out_27;
    wire [63:0] i_llvm_fpga_push_f64_shift_reg_sroa_30_0_push26_double_add_264_out_feedback_out_26;
    wire [0:0] i_llvm_fpga_push_f64_shift_reg_sroa_30_0_push26_double_add_264_out_feedback_valid_out_26;
    wire [63:0] i_llvm_fpga_push_f64_shift_reg_sroa_34_0_push25_double_add_267_out_feedback_out_25;
    wire [0:0] i_llvm_fpga_push_f64_shift_reg_sroa_34_0_push25_double_add_267_out_feedback_valid_out_25;
    wire [63:0] i_llvm_fpga_push_f64_shift_reg_sroa_38_0_push24_double_add_270_out_feedback_out_24;
    wire [0:0] i_llvm_fpga_push_f64_shift_reg_sroa_38_0_push24_double_add_270_out_feedback_valid_out_24;
    wire [63:0] i_llvm_fpga_push_f64_shift_reg_sroa_42_0_push23_double_add_273_out_feedback_out_23;
    wire [0:0] i_llvm_fpga_push_f64_shift_reg_sroa_42_0_push23_double_add_273_out_feedback_valid_out_23;
    wire [63:0] i_llvm_fpga_push_f64_shift_reg_sroa_46_0_push22_double_add_276_out_feedback_out_22;
    wire [0:0] i_llvm_fpga_push_f64_shift_reg_sroa_46_0_push22_double_add_276_out_feedback_valid_out_22;
    wire [63:0] i_llvm_fpga_push_f64_shift_reg_sroa_6_0_push32_double_add_246_out_feedback_out_32;
    wire [0:0] i_llvm_fpga_push_f64_shift_reg_sroa_6_0_push32_double_add_246_out_feedback_valid_out_32;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration80_double_add_215_out_feedback_out_3;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration80_double_add_215_out_feedback_valid_out_3;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond88_double_add_283_out_feedback_out_4;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond88_double_add_283_out_feedback_valid_out_4;
    wire [31:0] i_llvm_fpga_push_i32_i_021_push34_double_add_278_out_feedback_out_34;
    wire [0:0] i_llvm_fpga_push_i32_i_021_push34_double_add_278_out_feedback_valid_out_34;
    wire [7:0] i_llvm_fpga_push_i4_cleanups81_push36_double_add_286_out_feedback_out_36;
    wire [0:0] i_llvm_fpga_push_i4_cleanups81_push36_double_add_286_out_feedback_valid_out_36;
    wire [7:0] i_llvm_fpga_push_i4_initerations76_push35_double_add_213_out_feedback_out_35;
    wire [0:0] i_llvm_fpga_push_i4_initerations76_push35_double_add_213_out_feedback_valid_out_35;
    wire [7:0] i_llvm_fpga_push_i5_fpga_indvars_iv119_push21_double_add_288_out_feedback_out_21;
    wire [0:0] i_llvm_fpga_push_i5_fpga_indvars_iv119_push21_double_add_288_out_feedback_valid_out_21;
    wire [0:0] i_masked87_double_add_2101_q;
    wire [0:0] i_next_cleanups86_double_add_285_s;
    reg [3:0] i_next_cleanups86_double_add_285_q;
    wire [3:0] i_next_initerations77_double_add_212_vt_join_q;
    wire [2:0] i_next_initerations77_double_add_212_vt_select_2_b;
    wire [0:0] i_notcmp74_double_add_282_q;
    wire [0:0] i_or85_double_add_284_q;
    wire [0:0] i_spec_select144_double_add_248_s;
    reg [63:0] i_spec_select144_double_add_248_q;
    wire [0:0] i_spec_select145_double_add_251_s;
    reg [63:0] i_spec_select145_double_add_251_q;
    wire [0:0] i_spec_select146_double_add_254_s;
    reg [63:0] i_spec_select146_double_add_254_q;
    wire [0:0] i_spec_select147_double_add_257_s;
    reg [63:0] i_spec_select147_double_add_257_q;
    wire [0:0] i_spec_select148_double_add_260_s;
    reg [63:0] i_spec_select148_double_add_260_q;
    wire [0:0] i_spec_select149_double_add_263_s;
    reg [63:0] i_spec_select149_double_add_263_q;
    wire [0:0] i_spec_select150_double_add_266_s;
    reg [63:0] i_spec_select150_double_add_266_q;
    wire [0:0] i_spec_select151_double_add_269_s;
    reg [63:0] i_spec_select151_double_add_269_q;
    wire [0:0] i_spec_select152_double_add_272_s;
    reg [63:0] i_spec_select152_double_add_272_q;
    wire [0:0] i_spec_select153_double_add_275_s;
    reg [63:0] i_spec_select153_double_add_275_q;
    wire [0:0] i_spec_select_double_add_242_s;
    reg [63:0] i_spec_select_double_add_242_q;
    wire [0:0] i_unnamed_double_add_217_q;
    wire [0:0] i_unnamed_double_add_219_q;
    wire [0:0] i_unnamed_double_add_221_q;
    wire [0:0] i_unnamed_double_add_223_q;
    wire [0:0] i_unnamed_double_add_225_q;
    wire [0:0] i_unnamed_double_add_227_q;
    wire [0:0] i_unnamed_double_add_229_q;
    wire [0:0] i_unnamed_double_add_231_q;
    wire [0:0] i_unnamed_double_add_233_q;
    wire [0:0] i_unnamed_double_add_235_q;
    wire [0:0] i_unnamed_double_add_237_q;
    wire [0:0] i_unnamed_double_add_239_q;
    wire [0:0] i_unnamed_double_add_245_s;
    reg [63:0] i_unnamed_double_add_245_q;
    wire [4:0] bgTrunc_i_fpga_indvars_iv_next120_double_add_287_sel_x_b;
    wire [31:0] bgTrunc_i_inc_double_add_277_sel_x_b;
    wire [31:0] c_i32_10155_recast_x_q;
    wire [31:0] c_i32_11154_recast_x_q;
    wire [31:0] c_i32_2163_recast_x_q;
    wire [31:0] c_i32_3162_recast_x_q;
    wire [31:0] c_i32_4161_recast_x_q;
    wire [31:0] c_i32_5160_recast_x_q;
    wire [31:0] c_i32_6159_recast_x_q;
    wire [31:0] c_i32_7158_recast_x_q;
    wire [31:0] c_i32_8157_recast_x_q;
    wire [31:0] c_i32_9156_recast_x_q;
    wire [0:0] i_first_cleanup83_double_add_25_sel_x_b;
    wire [0:0] i_last_initeration79_double_add_214_sel_x_b;
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
    wire [0:0] i_exitcond121_double_add_280_cmp_nsign_q;
    wire [2:0] leftShiftStage0Idx1Rng1_uid261_i_cleanups_shl82_double_add_20_shift_x_in;
    wire [2:0] leftShiftStage0Idx1Rng1_uid261_i_cleanups_shl82_double_add_20_shift_x_b;
    wire [3:0] leftShiftStage0Idx1_uid262_i_cleanups_shl82_double_add_20_shift_x_q;
    wire [0:0] leftShiftStage0_uid264_i_cleanups_shl82_double_add_20_shift_x_s;
    reg [3:0] leftShiftStage0_uid264_i_cleanups_shl82_double_add_20_shift_x_q;
    wire [2:0] rightShiftStage0Idx1Rng1_uid268_i_next_initerations77_double_add_20_shift_x_b;
    wire [3:0] rightShiftStage0Idx1_uid270_i_next_initerations77_double_add_20_shift_x_q;
    wire [0:0] rightShiftStage0_uid272_i_next_initerations77_double_add_20_shift_x_s;
    reg [3:0] rightShiftStage0_uid272_i_next_initerations77_double_add_20_shift_x_q;
    reg [0:0] redist0_sync_together207_aunroll_x_in_c0_eni1_1_tpl_1_q;
    reg [0:0] redist1_sync_together207_aunroll_x_in_i_valid_1_q;
    reg [0:0] redist2_i_llvm_fpga_pipeline_keep_going78_double_add_28_out_data_out_1_q;


    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist1_sync_together207_aunroll_x_in_i_valid_1(DELAY,274)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together207_aunroll_x_in_i_valid_1_q <= '0;
        end
        else
        begin
            redist1_sync_together207_aunroll_x_in_i_valid_1_q <= $unsigned(in_i_valid);
        end
    end

    // redist2_i_llvm_fpga_pipeline_keep_going78_double_add_28_out_data_out_1(DELAY,275)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_i_llvm_fpga_pipeline_keep_going78_double_add_28_out_data_out_1_q <= '0;
        end
        else
        begin
            redist2_i_llvm_fpga_pipeline_keep_going78_double_add_28_out_data_out_1_q <= $unsigned(i_llvm_fpga_pipeline_keep_going78_double_add_28_out_data_out);
        end
    end

    // leftShiftStage0Idx1Rng1_uid261_i_cleanups_shl82_double_add_20_shift_x(BITSELECT,260)@2
    assign leftShiftStage0Idx1Rng1_uid261_i_cleanups_shl82_double_add_20_shift_x_in = i_llvm_fpga_pop_i4_cleanups81_pop36_double_add_24_out_data_out[2:0];
    assign leftShiftStage0Idx1Rng1_uid261_i_cleanups_shl82_double_add_20_shift_x_b = leftShiftStage0Idx1Rng1_uid261_i_cleanups_shl82_double_add_20_shift_x_in[2:0];

    // leftShiftStage0Idx1_uid262_i_cleanups_shl82_double_add_20_shift_x(BITJOIN,261)@2
    assign leftShiftStage0Idx1_uid262_i_cleanups_shl82_double_add_20_shift_x_q = {leftShiftStage0Idx1Rng1_uid261_i_cleanups_shl82_double_add_20_shift_x_b, GND_q};

    // leftShiftStage0_uid264_i_cleanups_shl82_double_add_20_shift_x(MUX,263)@2
    assign leftShiftStage0_uid264_i_cleanups_shl82_double_add_20_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid264_i_cleanups_shl82_double_add_20_shift_x_s or i_llvm_fpga_pop_i4_cleanups81_pop36_double_add_24_out_data_out or leftShiftStage0Idx1_uid262_i_cleanups_shl82_double_add_20_shift_x_q)
    begin
        unique case (leftShiftStage0_uid264_i_cleanups_shl82_double_add_20_shift_x_s)
            1'b0 : leftShiftStage0_uid264_i_cleanups_shl82_double_add_20_shift_x_q = i_llvm_fpga_pop_i4_cleanups81_pop36_double_add_24_out_data_out;
            1'b1 : leftShiftStage0_uid264_i_cleanups_shl82_double_add_20_shift_x_q = leftShiftStage0Idx1_uid262_i_cleanups_shl82_double_add_20_shift_x_q;
            default : leftShiftStage0_uid264_i_cleanups_shl82_double_add_20_shift_x_q = 4'b0;
        endcase
    end

    // i_cleanups_shl82_double_add_27_vt_select_3(BITSELECT,63)@2
    assign i_cleanups_shl82_double_add_27_vt_select_3_b = leftShiftStage0_uid264_i_cleanups_shl82_double_add_20_shift_x_q[3:1];

    // i_cleanups_shl82_double_add_27_vt_join(BITJOIN,62)@2
    assign i_cleanups_shl82_double_add_27_vt_join_q = {i_cleanups_shl82_double_add_27_vt_select_3_b, GND_q};

    // i_first_cleanup_xor84_double_add_26(LOGICAL,66)@2
    assign i_first_cleanup_xor84_double_add_26_q = i_first_cleanup83_double_add_25_sel_x_b ^ VCC_q;

    // i_notcmp74_double_add_282(LOGICAL,126)@2
    assign i_notcmp74_double_add_282_q = i_exitcond121_double_add_280_cmp_nsign_q ^ VCC_q;

    // i_or85_double_add_284(LOGICAL,127)@2
    assign i_or85_double_add_284_q = i_notcmp74_double_add_282_q | i_first_cleanup_xor84_double_add_26_q;

    // i_next_cleanups86_double_add_285(MUX,122)@2
    assign i_next_cleanups86_double_add_285_s = i_or85_double_add_284_q;
    always @(i_next_cleanups86_double_add_285_s or i_llvm_fpga_pop_i4_cleanups81_pop36_double_add_24_out_data_out or i_cleanups_shl82_double_add_27_vt_join_q)
    begin
        unique case (i_next_cleanups86_double_add_285_s)
            1'b0 : i_next_cleanups86_double_add_285_q = i_llvm_fpga_pop_i4_cleanups81_pop36_double_add_24_out_data_out;
            1'b1 : i_next_cleanups86_double_add_285_q = i_cleanups_shl82_double_add_27_vt_join_q;
            default : i_next_cleanups86_double_add_285_q = 4'b0;
        endcase
    end

    // i_llvm_fpga_push_i4_cleanups81_push36_double_add_286(BLACKBOX,118)@2
    // out out_feedback_out_36@20000000
    // out out_feedback_valid_out_36@20000000
    double_add_2_i_llvm_fpga_push_i4_cleanups81_push36_0 thei_llvm_fpga_push_i4_cleanups81_push36_double_add_286 (
        .in_data_in(i_next_cleanups86_double_add_285_q),
        .in_feedback_stall_in_36(i_llvm_fpga_pop_i4_cleanups81_pop36_double_add_24_out_feedback_stall_out_36),
        .in_keep_going78(redist2_i_llvm_fpga_pipeline_keep_going78_double_add_28_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist1_sync_together207_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_36(i_llvm_fpga_push_i4_cleanups81_push36_double_add_286_out_feedback_out_36),
        .out_feedback_valid_out_36(i_llvm_fpga_push_i4_cleanups81_push36_double_add_286_out_feedback_valid_out_36),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist0_sync_together207_aunroll_x_in_c0_eni1_1_tpl_1(DELAY,273)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_sync_together207_aunroll_x_in_c0_eni1_1_tpl_1_q <= '0;
        end
        else
        begin
            redist0_sync_together207_aunroll_x_in_c0_eni1_1_tpl_1_q <= $unsigned(in_c0_eni1_1_tpl);
        end
    end

    // c_i4_7150(CONSTANT,57)
    assign c_i4_7150_q = $unsigned(4'b0111);

    // i_llvm_fpga_pop_i4_cleanups81_pop36_double_add_24(BLACKBOX,100)@2
    // out out_feedback_stall_out_36@20000000
    double_add_2_i_llvm_fpga_pop_i4_cleanups81_pop36_0 thei_llvm_fpga_pop_i4_cleanups81_pop36_double_add_24 (
        .in_data_in(c_i4_7150_q),
        .in_dir(redist0_sync_together207_aunroll_x_in_c0_eni1_1_tpl_1_q),
        .in_feedback_in_36(i_llvm_fpga_push_i4_cleanups81_push36_double_add_286_out_feedback_out_36),
        .in_feedback_valid_in_36(i_llvm_fpga_push_i4_cleanups81_push36_double_add_286_out_feedback_valid_out_36),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist1_sync_together207_aunroll_x_in_i_valid_1_q),
        .out_data_out(i_llvm_fpga_pop_i4_cleanups81_pop36_double_add_24_out_data_out),
        .out_feedback_stall_out_36(i_llvm_fpga_pop_i4_cleanups81_pop36_double_add_24_out_feedback_stall_out_36),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_first_cleanup83_double_add_25_sel_x(BITSELECT,199)@2
    assign i_first_cleanup83_double_add_25_sel_x_b = i_llvm_fpga_pop_i4_cleanups81_pop36_double_add_24_out_data_out[0:0];

    // c_i5_1169(CONSTANT,59)
    assign c_i5_1169_q = $unsigned(5'b11111);

    // i_fpga_indvars_iv_next120_double_add_287(ADD,67)@2
    assign i_fpga_indvars_iv_next120_double_add_287_a = {1'b0, i_llvm_fpga_pop_i5_fpga_indvars_iv119_pop21_double_add_279_out_data_out};
    assign i_fpga_indvars_iv_next120_double_add_287_b = {1'b0, c_i5_1169_q};
    assign i_fpga_indvars_iv_next120_double_add_287_o = $unsigned(i_fpga_indvars_iv_next120_double_add_287_a) + $unsigned(i_fpga_indvars_iv_next120_double_add_287_b);
    assign i_fpga_indvars_iv_next120_double_add_287_q = i_fpga_indvars_iv_next120_double_add_287_o[5:0];

    // bgTrunc_i_fpga_indvars_iv_next120_double_add_287_sel_x(BITSELECT,169)@2
    assign bgTrunc_i_fpga_indvars_iv_next120_double_add_287_sel_x_b = i_fpga_indvars_iv_next120_double_add_287_q[4:0];

    // i_llvm_fpga_push_i5_fpga_indvars_iv119_push21_double_add_288(BLACKBOX,120)@2
    // out out_feedback_out_21@20000000
    // out out_feedback_valid_out_21@20000000
    double_add_2_i_llvm_fpga_push_i5_fpga_indvars_iv119_push21_0 thei_llvm_fpga_push_i5_fpga_indvars_iv119_push21_double_add_288 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next120_double_add_287_sel_x_b),
        .in_feedback_stall_in_21(i_llvm_fpga_pop_i5_fpga_indvars_iv119_pop21_double_add_279_out_feedback_stall_out_21),
        .in_keep_going78(redist2_i_llvm_fpga_pipeline_keep_going78_double_add_28_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist1_sync_together207_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_21(i_llvm_fpga_push_i5_fpga_indvars_iv119_push21_double_add_288_out_feedback_out_21),
        .out_feedback_valid_out_21(i_llvm_fpga_push_i5_fpga_indvars_iv119_push21_double_add_288_out_feedback_valid_out_21),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i5_11167(CONSTANT,58)
    assign c_i5_11167_q = $unsigned(5'b01011);

    // i_llvm_fpga_pop_i5_fpga_indvars_iv119_pop21_double_add_279(BLACKBOX,102)@2
    // out out_feedback_stall_out_21@20000000
    double_add_2_i_llvm_fpga_pop_i5_fpga_indvars_iv119_pop21_0 thei_llvm_fpga_pop_i5_fpga_indvars_iv119_pop21_double_add_279 (
        .in_data_in(c_i5_11167_q),
        .in_dir(redist0_sync_together207_aunroll_x_in_c0_eni1_1_tpl_1_q),
        .in_feedback_in_21(i_llvm_fpga_push_i5_fpga_indvars_iv119_push21_double_add_288_out_feedback_out_21),
        .in_feedback_valid_in_21(i_llvm_fpga_push_i5_fpga_indvars_iv119_push21_double_add_288_out_feedback_valid_out_21),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist1_sync_together207_aunroll_x_in_i_valid_1_q),
        .out_data_out(i_llvm_fpga_pop_i5_fpga_indvars_iv119_pop21_double_add_279_out_data_out),
        .out_feedback_stall_out_21(i_llvm_fpga_pop_i5_fpga_indvars_iv119_pop21_double_add_279_out_feedback_stall_out_21),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_exitcond121_double_add_280_cmp_nsign(LOGICAL,256)@2
    assign i_exitcond121_double_add_280_cmp_nsign_q = $unsigned(~ (i_llvm_fpga_pop_i5_fpga_indvars_iv119_pop21_double_add_279_out_data_out[4:4]));

    // i_llvm_fpga_push_i1_notexitcond88_double_add_283(BLACKBOX,116)@2
    // out out_feedback_out_4@20000000
    // out out_feedback_valid_out_4@20000000
    double_add_2_i_llvm_fpga_push_i1_notexitcond88_0 thei_llvm_fpga_push_i1_notexitcond88_double_add_283 (
        .in_data_in(i_exitcond121_double_add_280_cmp_nsign_q),
        .in_feedback_stall_in_4(i_llvm_fpga_pipeline_keep_going78_double_add_28_out_not_exitcond_stall_out),
        .in_first_cleanup83(i_first_cleanup83_double_add_25_sel_x_b),
        .in_stall_in(GND_q),
        .in_valid_in(redist1_sync_together207_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_4(i_llvm_fpga_push_i1_notexitcond88_double_add_283_out_feedback_out_4),
        .out_feedback_valid_out_4(i_llvm_fpga_push_i1_notexitcond88_double_add_283_out_feedback_valid_out_4),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg3(REG,210)@1 + 1
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

    // rightShiftStage0Idx1Rng1_uid268_i_next_initerations77_double_add_20_shift_x(BITSELECT,267)@2
    assign rightShiftStage0Idx1Rng1_uid268_i_next_initerations77_double_add_20_shift_x_b = i_llvm_fpga_pop_i4_initerations76_pop35_double_add_211_out_data_out[3:1];

    // rightShiftStage0Idx1_uid270_i_next_initerations77_double_add_20_shift_x(BITJOIN,269)@2
    assign rightShiftStage0Idx1_uid270_i_next_initerations77_double_add_20_shift_x_q = {GND_q, rightShiftStage0Idx1Rng1_uid268_i_next_initerations77_double_add_20_shift_x_b};

    // valid_fanout_reg1(REG,208)@1 + 1
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

    // valid_fanout_reg2(REG,209)@1 + 1
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

    // i_llvm_fpga_push_i4_initerations76_push35_double_add_213(BLACKBOX,119)@2
    // out out_feedback_out_35@20000000
    // out out_feedback_valid_out_35@20000000
    double_add_2_i_llvm_fpga_push_i4_initerations76_push35_0 thei_llvm_fpga_push_i4_initerations76_push35_double_add_213 (
        .in_data_in(i_next_initerations77_double_add_212_vt_join_q),
        .in_feedback_stall_in_35(i_llvm_fpga_pop_i4_initerations76_pop35_double_add_211_out_feedback_stall_out_35),
        .in_keep_going78(redist2_i_llvm_fpga_pipeline_keep_going78_double_add_28_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(),
        .out_feedback_out_35(i_llvm_fpga_push_i4_initerations76_push35_double_add_213_out_feedback_out_35),
        .out_feedback_valid_out_35(i_llvm_fpga_push_i4_initerations76_push35_double_add_213_out_feedback_valid_out_35),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i4_initerations76_pop35_double_add_211(BLACKBOX,101)@2
    // out out_feedback_stall_out_35@20000000
    double_add_2_i_llvm_fpga_pop_i4_initerations76_pop35_0 thei_llvm_fpga_pop_i4_initerations76_pop35_double_add_211 (
        .in_data_in(c_i4_7150_q),
        .in_dir(redist0_sync_together207_aunroll_x_in_c0_eni1_1_tpl_1_q),
        .in_feedback_in_35(i_llvm_fpga_push_i4_initerations76_push35_double_add_213_out_feedback_out_35),
        .in_feedback_valid_in_35(i_llvm_fpga_push_i4_initerations76_push35_double_add_213_out_feedback_valid_out_35),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_data_out(i_llvm_fpga_pop_i4_initerations76_pop35_double_add_211_out_data_out),
        .out_feedback_stall_out_35(i_llvm_fpga_pop_i4_initerations76_pop35_double_add_211_out_feedback_stall_out_35),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // rightShiftStage0_uid272_i_next_initerations77_double_add_20_shift_x(MUX,271)@2
    assign rightShiftStage0_uid272_i_next_initerations77_double_add_20_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid272_i_next_initerations77_double_add_20_shift_x_s or i_llvm_fpga_pop_i4_initerations76_pop35_double_add_211_out_data_out or rightShiftStage0Idx1_uid270_i_next_initerations77_double_add_20_shift_x_q)
    begin
        unique case (rightShiftStage0_uid272_i_next_initerations77_double_add_20_shift_x_s)
            1'b0 : rightShiftStage0_uid272_i_next_initerations77_double_add_20_shift_x_q = i_llvm_fpga_pop_i4_initerations76_pop35_double_add_211_out_data_out;
            1'b1 : rightShiftStage0_uid272_i_next_initerations77_double_add_20_shift_x_q = rightShiftStage0Idx1_uid270_i_next_initerations77_double_add_20_shift_x_q;
            default : rightShiftStage0_uid272_i_next_initerations77_double_add_20_shift_x_q = 4'b0;
        endcase
    end

    // i_next_initerations77_double_add_212_vt_select_2(BITSELECT,125)@2
    assign i_next_initerations77_double_add_212_vt_select_2_b = rightShiftStage0_uid272_i_next_initerations77_double_add_20_shift_x_q[2:0];

    // i_next_initerations77_double_add_212_vt_join(BITJOIN,124)@2
    assign i_next_initerations77_double_add_212_vt_join_q = {GND_q, i_next_initerations77_double_add_212_vt_select_2_b};

    // i_last_initeration79_double_add_214_sel_x(BITSELECT,200)@2
    assign i_last_initeration79_double_add_214_sel_x_b = i_next_initerations77_double_add_212_vt_join_q[0:0];

    // i_llvm_fpga_push_i1_lastiniteration80_double_add_215(BLACKBOX,115)@2
    // out out_feedback_out_3@20000000
    // out out_feedback_valid_out_3@20000000
    double_add_2_i_llvm_fpga_push_i1_lastiniteration80_0 thei_llvm_fpga_push_i1_lastiniteration80_double_add_215 (
        .in_data_in(i_last_initeration79_double_add_214_sel_x_b),
        .in_feedback_stall_in_3(i_llvm_fpga_pipeline_keep_going78_double_add_28_out_initeration_stall_out),
        .in_keep_going78(redist2_i_llvm_fpga_pipeline_keep_going78_double_add_28_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_data_out(),
        .out_feedback_out_3(i_llvm_fpga_push_i1_lastiniteration80_double_add_215_out_feedback_out_3),
        .out_feedback_valid_out_3(i_llvm_fpga_push_i1_lastiniteration80_double_add_215_out_feedback_valid_out_3),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going78_double_add_28(BLACKBOX,86)@1
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    double_add_2_i_llvm_fpga_pipeline_keep_going78_0 thei_llvm_fpga_pipeline_keep_going78_double_add_28 (
        .in_data_in(in_c0_eni1_1_tpl),
        .in_initeration_in(i_llvm_fpga_push_i1_lastiniteration80_double_add_215_out_feedback_out_3),
        .in_initeration_valid_in(i_llvm_fpga_push_i1_lastiniteration80_double_add_215_out_feedback_valid_out_3),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond88_double_add_283_out_feedback_out_4),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond88_double_add_283_out_feedback_valid_out_4),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(i_llvm_fpga_pipeline_keep_going78_double_add_28_out_data_out),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going78_double_add_28_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going78_double_add_28_out_exiting_valid_out),
        .out_initeration_stall_out(i_llvm_fpga_pipeline_keep_going78_double_add_28_out_initeration_stall_out),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going78_double_add_28_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going78_double_add_28_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,60)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going78_double_add_28_exiting_valid_out = i_llvm_fpga_pipeline_keep_going78_double_add_28_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going78_double_add_28_exiting_stall_out = i_llvm_fpga_pipeline_keep_going78_double_add_28_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,166)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going78_double_add_28_out_pipeline_valid_out;

    // valid_fanout_reg38(REG,245)@1 + 1
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

    // c_double_0_000000e_00166(FLOATCONSTANT,4)
    assign c_double_0_000000e_00166_q = $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);

    // valid_fanout_reg21(REG,228)@1 + 1
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

    // valid_fanout_reg22(REG,229)@1 + 1
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

    // i_llvm_fpga_fanout_i1_keep_going78_fanout_adaptor112_double_add_29(REG,72)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_llvm_fpga_fanout_i1_keep_going78_fanout_adaptor112_double_add_29_q <= $unsigned(1'b0);
        end
        else
        begin
            i_llvm_fpga_fanout_i1_keep_going78_fanout_adaptor112_double_add_29_q <= i_llvm_fpga_pipeline_keep_going78_double_add_28_out_data_out;
        end
    end

    // i_llvm_fpga_push_f64_shift_reg_sroa_34_0_push25_double_add_267(BLACKBOX,110)@2
    // out out_feedback_out_25@20000000
    // out out_feedback_valid_out_25@20000000
    double_add_2_i_llvm_fpga_push_f64_shift_reg_sroa_34_0_push25_0 thei_llvm_fpga_push_f64_shift_reg_sroa_34_0_push25_double_add_267 (
        .in_data_in(i_spec_select150_double_add_266_q),
        .in_feedback_stall_in_25(i_llvm_fpga_pop_f64_shift_reg_sroa_34_0_pop25_double_add_265_out_feedback_stall_out_25),
        .in_keep_going78_fanout_adaptor112(i_llvm_fpga_fanout_i1_keep_going78_fanout_adaptor112_double_add_29_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg22_q),
        .out_data_out(),
        .out_feedback_out_25(i_llvm_fpga_push_f64_shift_reg_sroa_34_0_push25_double_add_267_out_feedback_out_25),
        .out_feedback_valid_out_25(i_llvm_fpga_push_f64_shift_reg_sroa_34_0_push25_double_add_267_out_feedback_valid_out_25),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_fanout_i1_c0_ene1_fanout_adaptor111_double_add_22(REG,70)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_llvm_fpga_fanout_i1_c0_ene1_fanout_adaptor111_double_add_22_q <= $unsigned(1'b0);
        end
        else
        begin
            i_llvm_fpga_fanout_i1_c0_ene1_fanout_adaptor111_double_add_22_q <= in_c0_eni1_1_tpl;
        end
    end

    // i_llvm_fpga_pop_f64_shift_reg_sroa_34_0_pop25_double_add_265(BLACKBOX,94)@2
    // out out_feedback_stall_out_25@20000000
    double_add_2_i_llvm_fpga_pop_f64_shift_reg_sroa_34_0_pop25_0 thei_llvm_fpga_pop_f64_shift_reg_sroa_34_0_pop25_double_add_265 (
        .in_data_in(c_double_0_000000e_00166_q),
        .in_dir(i_llvm_fpga_fanout_i1_c0_ene1_fanout_adaptor111_double_add_22_q),
        .in_feedback_in_25(i_llvm_fpga_push_f64_shift_reg_sroa_34_0_push25_double_add_267_out_feedback_out_25),
        .in_feedback_valid_in_25(i_llvm_fpga_push_f64_shift_reg_sroa_34_0_push25_double_add_267_out_feedback_valid_out_25),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg21_q),
        .out_data_out(i_llvm_fpga_pop_f64_shift_reg_sroa_34_0_pop25_double_add_265_out_data_out),
        .out_feedback_stall_out_25(i_llvm_fpga_pop_f64_shift_reg_sroa_34_0_pop25_double_add_265_out_feedback_stall_out_25),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_8157_recast_x(CONSTANT,181)
    assign c_i32_8157_recast_x_q = $unsigned(32'b00000000000000000000000000001000);

    // valid_fanout_reg4(REG,211)@1 + 1
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

    // valid_fanout_reg29(REG,236)@1 + 1
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

    // i_llvm_fpga_fanout_i1_keep_going78_fanout_adaptor_double_add_210(REG,73)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_llvm_fpga_fanout_i1_keep_going78_fanout_adaptor_double_add_210_q <= $unsigned(1'b0);
        end
        else
        begin
            i_llvm_fpga_fanout_i1_keep_going78_fanout_adaptor_double_add_210_q <= i_llvm_fpga_pipeline_keep_going78_double_add_28_out_data_out;
        end
    end

    // c_i32_1164(CONSTANT,55)
    assign c_i32_1164_q = $unsigned(32'b00000000000000000000000000000001);

    // i_inc_double_add_277(ADD,68)@2
    assign i_inc_double_add_277_a = {1'b0, i_llvm_fpga_pop_i32_i_021_pop34_double_add_216_out_data_out};
    assign i_inc_double_add_277_b = {1'b0, c_i32_1164_q};
    assign i_inc_double_add_277_o = $unsigned(i_inc_double_add_277_a) + $unsigned(i_inc_double_add_277_b);
    assign i_inc_double_add_277_q = i_inc_double_add_277_o[32:0];

    // bgTrunc_i_inc_double_add_277_sel_x(BITSELECT,170)@2
    assign bgTrunc_i_inc_double_add_277_sel_x_b = i_inc_double_add_277_q[31:0];

    // i_llvm_fpga_push_i32_i_021_push34_double_add_278(BLACKBOX,117)@2
    // out out_feedback_out_34@20000000
    // out out_feedback_valid_out_34@20000000
    double_add_2_i_llvm_fpga_push_i32_i_021_push34_0 thei_llvm_fpga_push_i32_i_021_push34_double_add_278 (
        .in_data_in(bgTrunc_i_inc_double_add_277_sel_x_b),
        .in_feedback_stall_in_34(i_llvm_fpga_pop_i32_i_021_pop34_double_add_216_out_feedback_stall_out_34),
        .in_keep_going78_fanout_adaptor(i_llvm_fpga_fanout_i1_keep_going78_fanout_adaptor_double_add_210_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg29_q),
        .out_data_out(),
        .out_feedback_out_34(i_llvm_fpga_push_i32_i_021_push34_double_add_278_out_feedback_out_34),
        .out_feedback_valid_out_34(i_llvm_fpga_push_i32_i_021_push34_double_add_278_out_feedback_valid_out_34),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_fanout_i1_c0_ene1_fanout_adaptor_double_add_23(REG,71)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_llvm_fpga_fanout_i1_c0_ene1_fanout_adaptor_double_add_23_q <= $unsigned(1'b0);
        end
        else
        begin
            i_llvm_fpga_fanout_i1_c0_ene1_fanout_adaptor_double_add_23_q <= in_c0_eni1_1_tpl;
        end
    end

    // c_i32_0153(CONSTANT,54)
    assign c_i32_0153_q = $unsigned(32'b00000000000000000000000000000000);

    // i_llvm_fpga_pop_i32_i_021_pop34_double_add_216(BLACKBOX,99)@2
    // out out_feedback_stall_out_34@20000000
    double_add_2_i_llvm_fpga_pop_i32_i_021_pop34_0 thei_llvm_fpga_pop_i32_i_021_pop34_double_add_216 (
        .in_data_in(c_i32_0153_q),
        .in_dir(i_llvm_fpga_fanout_i1_c0_ene1_fanout_adaptor_double_add_23_q),
        .in_feedback_in_34(i_llvm_fpga_push_i32_i_021_push34_double_add_278_out_feedback_out_34),
        .in_feedback_valid_in_34(i_llvm_fpga_push_i32_i_021_push34_double_add_278_out_feedback_valid_out_34),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_data_out(i_llvm_fpga_pop_i32_i_021_pop34_double_add_216_out_data_out),
        .out_feedback_stall_out_34(i_llvm_fpga_pop_i32_i_021_pop34_double_add_216_out_feedback_stall_out_34),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_double_add_223(LOGICAL,142)@2
    assign i_unnamed_double_add_223_q = $unsigned(i_llvm_fpga_pop_i32_i_021_pop34_double_add_216_out_data_out == c_i32_8157_recast_x_q ? 1'b1 : 1'b0);

    // i_spec_select150_double_add_266(MUX,134)@2
    assign i_spec_select150_double_add_266_s = i_unnamed_double_add_223_q;
    always @(i_spec_select150_double_add_266_s or i_llvm_fpga_pop_f64_shift_reg_sroa_34_0_pop25_double_add_265_out_data_out or c_double_0_000000e_00166_q)
    begin
        unique case (i_spec_select150_double_add_266_s)
            1'b0 : i_spec_select150_double_add_266_q = i_llvm_fpga_pop_f64_shift_reg_sroa_34_0_pop25_double_add_265_out_data_out;
            1'b1 : i_spec_select150_double_add_266_q = c_double_0_000000e_00166_q;
            default : i_spec_select150_double_add_266_q = 64'b0;
        endcase
    end

    // i_llvm_fpga_ffwd_source_f64_unnamed_double_add_210_double_add_297(BLACKBOX,74)@2
    // out out_intel_reserved_ffwd_10_0@20000000
    double_add_2_i_llvm_fpga_ffwd_source_f640000med_10_double_add_20 thei_llvm_fpga_ffwd_source_f64_unnamed_double_add_210_double_add_297 (
        .in_predicate_in(i_first_cleanup_xor84_double_add_26_q),
        .in_src_data_in_10_0(i_spec_select150_double_add_266_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg38_q),
        .out_intel_reserved_ffwd_10_0(i_llvm_fpga_ffwd_source_f64_unnamed_double_add_210_double_add_297_out_intel_reserved_ffwd_10_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // regfree_osync(GPOUT,167)
    assign out_intel_reserved_ffwd_10_0 = i_llvm_fpga_ffwd_source_f64_unnamed_double_add_210_double_add_297_out_intel_reserved_ffwd_10_0;

    // valid_fanout_reg39(REG,246)@1 + 1
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

    // valid_fanout_reg23(REG,230)@1 + 1
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

    // valid_fanout_reg24(REG,231)@1 + 1
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

    // i_llvm_fpga_push_f64_shift_reg_sroa_38_0_push24_double_add_270(BLACKBOX,111)@2
    // out out_feedback_out_24@20000000
    // out out_feedback_valid_out_24@20000000
    double_add_2_i_llvm_fpga_push_f64_shift_reg_sroa_38_0_push24_0 thei_llvm_fpga_push_f64_shift_reg_sroa_38_0_push24_double_add_270 (
        .in_data_in(i_spec_select151_double_add_269_q),
        .in_feedback_stall_in_24(i_llvm_fpga_pop_f64_shift_reg_sroa_38_0_pop24_double_add_268_out_feedback_stall_out_24),
        .in_keep_going78_fanout_adaptor112(i_llvm_fpga_fanout_i1_keep_going78_fanout_adaptor112_double_add_29_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg24_q),
        .out_data_out(),
        .out_feedback_out_24(i_llvm_fpga_push_f64_shift_reg_sroa_38_0_push24_double_add_270_out_feedback_out_24),
        .out_feedback_valid_out_24(i_llvm_fpga_push_f64_shift_reg_sroa_38_0_push24_double_add_270_out_feedback_valid_out_24),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_f64_shift_reg_sroa_38_0_pop24_double_add_268(BLACKBOX,95)@2
    // out out_feedback_stall_out_24@20000000
    double_add_2_i_llvm_fpga_pop_f64_shift_reg_sroa_38_0_pop24_0 thei_llvm_fpga_pop_f64_shift_reg_sroa_38_0_pop24_double_add_268 (
        .in_data_in(c_double_0_000000e_00166_q),
        .in_dir(i_llvm_fpga_fanout_i1_c0_ene1_fanout_adaptor111_double_add_22_q),
        .in_feedback_in_24(i_llvm_fpga_push_f64_shift_reg_sroa_38_0_push24_double_add_270_out_feedback_out_24),
        .in_feedback_valid_in_24(i_llvm_fpga_push_f64_shift_reg_sroa_38_0_push24_double_add_270_out_feedback_valid_out_24),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg23_q),
        .out_data_out(i_llvm_fpga_pop_f64_shift_reg_sroa_38_0_pop24_double_add_268_out_data_out),
        .out_feedback_stall_out_24(i_llvm_fpga_pop_f64_shift_reg_sroa_38_0_pop24_double_add_268_out_feedback_stall_out_24),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_9156_recast_x(CONSTANT,182)
    assign c_i32_9156_recast_x_q = $unsigned(32'b00000000000000000000000000001001);

    // i_unnamed_double_add_221(LOGICAL,141)@2
    assign i_unnamed_double_add_221_q = $unsigned(i_llvm_fpga_pop_i32_i_021_pop34_double_add_216_out_data_out == c_i32_9156_recast_x_q ? 1'b1 : 1'b0);

    // i_spec_select151_double_add_269(MUX,135)@2
    assign i_spec_select151_double_add_269_s = i_unnamed_double_add_221_q;
    always @(i_spec_select151_double_add_269_s or i_llvm_fpga_pop_f64_shift_reg_sroa_38_0_pop24_double_add_268_out_data_out or c_double_0_000000e_00166_q)
    begin
        unique case (i_spec_select151_double_add_269_s)
            1'b0 : i_spec_select151_double_add_269_q = i_llvm_fpga_pop_f64_shift_reg_sroa_38_0_pop24_double_add_268_out_data_out;
            1'b1 : i_spec_select151_double_add_269_q = c_double_0_000000e_00166_q;
            default : i_spec_select151_double_add_269_q = 64'b0;
        endcase
    end

    // i_llvm_fpga_ffwd_source_f64_unnamed_double_add_211_double_add_298(BLACKBOX,75)@2
    // out out_intel_reserved_ffwd_11_0@20000000
    double_add_2_i_llvm_fpga_ffwd_source_f640000med_11_double_add_20 thei_llvm_fpga_ffwd_source_f64_unnamed_double_add_211_double_add_298 (
        .in_predicate_in(i_first_cleanup_xor84_double_add_26_q),
        .in_src_data_in_11_0(i_spec_select151_double_add_269_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg39_q),
        .out_intel_reserved_ffwd_11_0(i_llvm_fpga_ffwd_source_f64_unnamed_double_add_211_double_add_298_out_intel_reserved_ffwd_11_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_regfree_osync_x(GPOUT,184)
    assign out_intel_reserved_ffwd_11_0 = i_llvm_fpga_ffwd_source_f64_unnamed_double_add_211_double_add_298_out_intel_reserved_ffwd_11_0;

    // valid_fanout_reg40(REG,247)@1 + 1
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

    // valid_fanout_reg25(REG,232)@1 + 1
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

    // valid_fanout_reg26(REG,233)@1 + 1
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

    // i_llvm_fpga_push_f64_shift_reg_sroa_42_0_push23_double_add_273(BLACKBOX,112)@2
    // out out_feedback_out_23@20000000
    // out out_feedback_valid_out_23@20000000
    double_add_2_i_llvm_fpga_push_f64_shift_reg_sroa_42_0_push23_0 thei_llvm_fpga_push_f64_shift_reg_sroa_42_0_push23_double_add_273 (
        .in_data_in(i_spec_select152_double_add_272_q),
        .in_feedback_stall_in_23(i_llvm_fpga_pop_f64_shift_reg_sroa_42_0_pop23_double_add_271_out_feedback_stall_out_23),
        .in_keep_going78_fanout_adaptor112(i_llvm_fpga_fanout_i1_keep_going78_fanout_adaptor112_double_add_29_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg26_q),
        .out_data_out(),
        .out_feedback_out_23(i_llvm_fpga_push_f64_shift_reg_sroa_42_0_push23_double_add_273_out_feedback_out_23),
        .out_feedback_valid_out_23(i_llvm_fpga_push_f64_shift_reg_sroa_42_0_push23_double_add_273_out_feedback_valid_out_23),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_f64_shift_reg_sroa_42_0_pop23_double_add_271(BLACKBOX,96)@2
    // out out_feedback_stall_out_23@20000000
    double_add_2_i_llvm_fpga_pop_f64_shift_reg_sroa_42_0_pop23_0 thei_llvm_fpga_pop_f64_shift_reg_sroa_42_0_pop23_double_add_271 (
        .in_data_in(c_double_0_000000e_00166_q),
        .in_dir(i_llvm_fpga_fanout_i1_c0_ene1_fanout_adaptor111_double_add_22_q),
        .in_feedback_in_23(i_llvm_fpga_push_f64_shift_reg_sroa_42_0_push23_double_add_273_out_feedback_out_23),
        .in_feedback_valid_in_23(i_llvm_fpga_push_f64_shift_reg_sroa_42_0_push23_double_add_273_out_feedback_valid_out_23),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg25_q),
        .out_data_out(i_llvm_fpga_pop_f64_shift_reg_sroa_42_0_pop23_double_add_271_out_data_out),
        .out_feedback_stall_out_23(i_llvm_fpga_pop_f64_shift_reg_sroa_42_0_pop23_double_add_271_out_feedback_stall_out_23),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_10155_recast_x(CONSTANT,172)
    assign c_i32_10155_recast_x_q = $unsigned(32'b00000000000000000000000000001010);

    // i_unnamed_double_add_219(LOGICAL,140)@2
    assign i_unnamed_double_add_219_q = $unsigned(i_llvm_fpga_pop_i32_i_021_pop34_double_add_216_out_data_out == c_i32_10155_recast_x_q ? 1'b1 : 1'b0);

    // i_spec_select152_double_add_272(MUX,136)@2
    assign i_spec_select152_double_add_272_s = i_unnamed_double_add_219_q;
    always @(i_spec_select152_double_add_272_s or i_llvm_fpga_pop_f64_shift_reg_sroa_42_0_pop23_double_add_271_out_data_out or c_double_0_000000e_00166_q)
    begin
        unique case (i_spec_select152_double_add_272_s)
            1'b0 : i_spec_select152_double_add_272_q = i_llvm_fpga_pop_f64_shift_reg_sroa_42_0_pop23_double_add_271_out_data_out;
            1'b1 : i_spec_select152_double_add_272_q = c_double_0_000000e_00166_q;
            default : i_spec_select152_double_add_272_q = 64'b0;
        endcase
    end

    // i_llvm_fpga_ffwd_source_f64_unnamed_double_add_212_double_add_299(BLACKBOX,76)@2
    // out out_intel_reserved_ffwd_12_0@20000000
    double_add_2_i_llvm_fpga_ffwd_source_f640000med_12_double_add_20 thei_llvm_fpga_ffwd_source_f64_unnamed_double_add_212_double_add_299 (
        .in_predicate_in(i_first_cleanup_xor84_double_add_26_q),
        .in_src_data_in_12_0(i_spec_select152_double_add_272_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg40_q),
        .out_intel_reserved_ffwd_12_0(i_llvm_fpga_ffwd_source_f64_unnamed_double_add_212_double_add_299_out_intel_reserved_ffwd_12_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_1_regfree_osync_x(GPOUT,185)
    assign out_intel_reserved_ffwd_12_0 = i_llvm_fpga_ffwd_source_f64_unnamed_double_add_212_double_add_299_out_intel_reserved_ffwd_12_0;

    // valid_fanout_reg41(REG,248)@1 + 1
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

    // valid_fanout_reg27(REG,234)@1 + 1
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

    // valid_fanout_reg28(REG,235)@1 + 1
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

    // i_llvm_fpga_push_f64_shift_reg_sroa_46_0_push22_double_add_276(BLACKBOX,113)@2
    // out out_feedback_out_22@20000000
    // out out_feedback_valid_out_22@20000000
    double_add_2_i_llvm_fpga_push_f64_shift_reg_sroa_46_0_push22_0 thei_llvm_fpga_push_f64_shift_reg_sroa_46_0_push22_double_add_276 (
        .in_data_in(i_spec_select153_double_add_275_q),
        .in_feedback_stall_in_22(i_llvm_fpga_pop_f64_shift_reg_sroa_46_0_pop22_double_add_274_out_feedback_stall_out_22),
        .in_keep_going78_fanout_adaptor112(i_llvm_fpga_fanout_i1_keep_going78_fanout_adaptor112_double_add_29_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg28_q),
        .out_data_out(),
        .out_feedback_out_22(i_llvm_fpga_push_f64_shift_reg_sroa_46_0_push22_double_add_276_out_feedback_out_22),
        .out_feedback_valid_out_22(i_llvm_fpga_push_f64_shift_reg_sroa_46_0_push22_double_add_276_out_feedback_valid_out_22),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_f64_shift_reg_sroa_46_0_pop22_double_add_274(BLACKBOX,97)@2
    // out out_feedback_stall_out_22@20000000
    double_add_2_i_llvm_fpga_pop_f64_shift_reg_sroa_46_0_pop22_0 thei_llvm_fpga_pop_f64_shift_reg_sroa_46_0_pop22_double_add_274 (
        .in_data_in(c_double_0_000000e_00166_q),
        .in_dir(i_llvm_fpga_fanout_i1_c0_ene1_fanout_adaptor111_double_add_22_q),
        .in_feedback_in_22(i_llvm_fpga_push_f64_shift_reg_sroa_46_0_push22_double_add_276_out_feedback_out_22),
        .in_feedback_valid_in_22(i_llvm_fpga_push_f64_shift_reg_sroa_46_0_push22_double_add_276_out_feedback_valid_out_22),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg27_q),
        .out_data_out(i_llvm_fpga_pop_f64_shift_reg_sroa_46_0_pop22_double_add_274_out_data_out),
        .out_feedback_stall_out_22(i_llvm_fpga_pop_f64_shift_reg_sroa_46_0_pop22_double_add_274_out_feedback_stall_out_22),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_11154_recast_x(CONSTANT,173)
    assign c_i32_11154_recast_x_q = $unsigned(32'b00000000000000000000000000001011);

    // i_unnamed_double_add_217(LOGICAL,139)@2
    assign i_unnamed_double_add_217_q = $unsigned(i_llvm_fpga_pop_i32_i_021_pop34_double_add_216_out_data_out == c_i32_11154_recast_x_q ? 1'b1 : 1'b0);

    // i_spec_select153_double_add_275(MUX,137)@2
    assign i_spec_select153_double_add_275_s = i_unnamed_double_add_217_q;
    always @(i_spec_select153_double_add_275_s or i_llvm_fpga_pop_f64_shift_reg_sroa_46_0_pop22_double_add_274_out_data_out or c_double_0_000000e_00166_q)
    begin
        unique case (i_spec_select153_double_add_275_s)
            1'b0 : i_spec_select153_double_add_275_q = i_llvm_fpga_pop_f64_shift_reg_sroa_46_0_pop22_double_add_274_out_data_out;
            1'b1 : i_spec_select153_double_add_275_q = c_double_0_000000e_00166_q;
            default : i_spec_select153_double_add_275_q = 64'b0;
        endcase
    end

    // i_llvm_fpga_ffwd_source_f64_unnamed_double_add_213_double_add_2100(BLACKBOX,77)@2
    // out out_intel_reserved_ffwd_13_0@20000000
    double_add_2_i_llvm_fpga_ffwd_source_f640000med_13_double_add_20 thei_llvm_fpga_ffwd_source_f64_unnamed_double_add_213_double_add_2100 (
        .in_predicate_in(i_first_cleanup_xor84_double_add_26_q),
        .in_src_data_in_13_0(i_spec_select153_double_add_275_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg41_q),
        .out_intel_reserved_ffwd_13_0(i_llvm_fpga_ffwd_source_f64_unnamed_double_add_213_double_add_2100_out_intel_reserved_ffwd_13_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_2_regfree_osync_x(GPOUT,186)
    assign out_intel_reserved_ffwd_13_0 = i_llvm_fpga_ffwd_source_f64_unnamed_double_add_213_double_add_2100_out_intel_reserved_ffwd_13_0;

    // valid_fanout_reg30(REG,237)@1 + 1
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

    // valid_fanout_reg5(REG,212)@1 + 1
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

    // valid_fanout_reg6(REG,213)@1 + 1
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

    // i_llvm_fpga_push_f64_shift_reg_sroa_0_0_push33_double_add_243(BLACKBOX,103)@2
    // out out_feedback_out_33@20000000
    // out out_feedback_valid_out_33@20000000
    double_add_2_i_llvm_fpga_push_f64_shift_reg_sroa_0_0_push33_0 thei_llvm_fpga_push_f64_shift_reg_sroa_0_0_push33_double_add_243 (
        .in_data_in(i_spec_select_double_add_242_q),
        .in_feedback_stall_in_33(i_llvm_fpga_pop_f64_shift_reg_sroa_0_0_pop33_double_add_241_out_feedback_stall_out_33),
        .in_keep_going78_fanout_adaptor(i_llvm_fpga_fanout_i1_keep_going78_fanout_adaptor_double_add_210_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg6_q),
        .out_data_out(),
        .out_feedback_out_33(i_llvm_fpga_push_f64_shift_reg_sroa_0_0_push33_double_add_243_out_feedback_out_33),
        .out_feedback_valid_out_33(i_llvm_fpga_push_f64_shift_reg_sroa_0_0_push33_double_add_243_out_feedback_valid_out_33),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_f64_shift_reg_sroa_0_0_pop33_double_add_241(BLACKBOX,87)@2
    // out out_feedback_stall_out_33@20000000
    double_add_2_i_llvm_fpga_pop_f64_shift_reg_sroa_0_0_pop33_0 thei_llvm_fpga_pop_f64_shift_reg_sroa_0_0_pop33_double_add_241 (
        .in_data_in(c_double_0_000000e_00166_q),
        .in_dir(i_llvm_fpga_fanout_i1_c0_ene1_fanout_adaptor_double_add_23_q),
        .in_feedback_in_33(i_llvm_fpga_push_f64_shift_reg_sroa_0_0_push33_double_add_243_out_feedback_out_33),
        .in_feedback_valid_in_33(i_llvm_fpga_push_f64_shift_reg_sroa_0_0_push33_double_add_243_out_feedback_valid_out_33),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_data_out(i_llvm_fpga_pop_f64_shift_reg_sroa_0_0_pop33_double_add_241_out_data_out),
        .out_feedback_stall_out_33(i_llvm_fpga_pop_f64_shift_reg_sroa_0_0_pop33_double_add_241_out_feedback_stall_out_33),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_double_add_239(LOGICAL,150)@2
    assign i_unnamed_double_add_239_q = $unsigned(i_llvm_fpga_pop_i32_i_021_pop34_double_add_216_out_data_out == c_i32_0153_q ? 1'b1 : 1'b0);

    // i_spec_select_double_add_242(MUX,138)@2
    assign i_spec_select_double_add_242_s = i_unnamed_double_add_239_q;
    always @(i_spec_select_double_add_242_s or i_llvm_fpga_pop_f64_shift_reg_sroa_0_0_pop33_double_add_241_out_data_out or c_double_0_000000e_00166_q)
    begin
        unique case (i_spec_select_double_add_242_s)
            1'b0 : i_spec_select_double_add_242_q = i_llvm_fpga_pop_f64_shift_reg_sroa_0_0_pop33_double_add_241_out_data_out;
            1'b1 : i_spec_select_double_add_242_q = c_double_0_000000e_00166_q;
            default : i_spec_select_double_add_242_q = 64'b0;
        endcase
    end

    // i_llvm_fpga_ffwd_source_f64_unnamed_double_add_22_double_add_289(BLACKBOX,78)@2
    // out out_intel_reserved_ffwd_2_0@20000000
    double_add_2_i_llvm_fpga_ffwd_source_f64_unnamed_2_double_add_20 thei_llvm_fpga_ffwd_source_f64_unnamed_double_add_22_double_add_289 (
        .in_predicate_in(i_first_cleanup_xor84_double_add_26_q),
        .in_src_data_in_2_0(i_spec_select_double_add_242_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg30_q),
        .out_intel_reserved_ffwd_2_0(i_llvm_fpga_ffwd_source_f64_unnamed_double_add_22_double_add_289_out_intel_reserved_ffwd_2_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_3_regfree_osync_x(GPOUT,187)
    assign out_intel_reserved_ffwd_2_0 = i_llvm_fpga_ffwd_source_f64_unnamed_double_add_22_double_add_289_out_intel_reserved_ffwd_2_0;

    // valid_fanout_reg31(REG,238)@1 + 1
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

    // valid_fanout_reg7(REG,214)@1 + 1
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

    // valid_fanout_reg8(REG,215)@1 + 1
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

    // i_llvm_fpga_push_f64_shift_reg_sroa_6_0_push32_double_add_246(BLACKBOX,114)@2
    // out out_feedback_out_32@20000000
    // out out_feedback_valid_out_32@20000000
    double_add_2_i_llvm_fpga_push_f64_shift_reg_sroa_6_0_push32_0 thei_llvm_fpga_push_f64_shift_reg_sroa_6_0_push32_double_add_246 (
        .in_data_in(i_unnamed_double_add_245_q),
        .in_feedback_stall_in_32(i_llvm_fpga_pop_f64_shift_reg_sroa_6_0_pop32_double_add_244_out_feedback_stall_out_32),
        .in_keep_going78_fanout_adaptor(i_llvm_fpga_fanout_i1_keep_going78_fanout_adaptor_double_add_210_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg8_q),
        .out_data_out(),
        .out_feedback_out_32(i_llvm_fpga_push_f64_shift_reg_sroa_6_0_push32_double_add_246_out_feedback_out_32),
        .out_feedback_valid_out_32(i_llvm_fpga_push_f64_shift_reg_sroa_6_0_push32_double_add_246_out_feedback_valid_out_32),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_f64_shift_reg_sroa_6_0_pop32_double_add_244(BLACKBOX,98)@2
    // out out_feedback_stall_out_32@20000000
    double_add_2_i_llvm_fpga_pop_f64_shift_reg_sroa_6_0_pop32_0 thei_llvm_fpga_pop_f64_shift_reg_sroa_6_0_pop32_double_add_244 (
        .in_data_in(c_double_0_000000e_00166_q),
        .in_dir(i_llvm_fpga_fanout_i1_c0_ene1_fanout_adaptor_double_add_23_q),
        .in_feedback_in_32(i_llvm_fpga_push_f64_shift_reg_sroa_6_0_push32_double_add_246_out_feedback_out_32),
        .in_feedback_valid_in_32(i_llvm_fpga_push_f64_shift_reg_sroa_6_0_push32_double_add_246_out_feedback_valid_out_32),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg7_q),
        .out_data_out(i_llvm_fpga_pop_f64_shift_reg_sroa_6_0_pop32_double_add_244_out_data_out),
        .out_feedback_stall_out_32(i_llvm_fpga_pop_f64_shift_reg_sroa_6_0_pop32_double_add_244_out_feedback_stall_out_32),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_double_add_237(LOGICAL,149)@2
    assign i_unnamed_double_add_237_q = $unsigned(i_llvm_fpga_pop_i32_i_021_pop34_double_add_216_out_data_out == c_i32_1164_q ? 1'b1 : 1'b0);

    // i_unnamed_double_add_245(MUX,151)@2
    assign i_unnamed_double_add_245_s = i_unnamed_double_add_237_q;
    always @(i_unnamed_double_add_245_s or i_llvm_fpga_pop_f64_shift_reg_sroa_6_0_pop32_double_add_244_out_data_out or c_double_0_000000e_00166_q)
    begin
        unique case (i_unnamed_double_add_245_s)
            1'b0 : i_unnamed_double_add_245_q = i_llvm_fpga_pop_f64_shift_reg_sroa_6_0_pop32_double_add_244_out_data_out;
            1'b1 : i_unnamed_double_add_245_q = c_double_0_000000e_00166_q;
            default : i_unnamed_double_add_245_q = 64'b0;
        endcase
    end

    // i_llvm_fpga_ffwd_source_f64_unnamed_double_add_23_double_add_290(BLACKBOX,79)@2
    // out out_intel_reserved_ffwd_3_0@20000000
    double_add_2_i_llvm_fpga_ffwd_source_f64_unnamed_3_double_add_20 thei_llvm_fpga_ffwd_source_f64_unnamed_double_add_23_double_add_290 (
        .in_predicate_in(i_first_cleanup_xor84_double_add_26_q),
        .in_src_data_in_3_0(i_unnamed_double_add_245_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg31_q),
        .out_intel_reserved_ffwd_3_0(i_llvm_fpga_ffwd_source_f64_unnamed_double_add_23_double_add_290_out_intel_reserved_ffwd_3_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_4_regfree_osync_x(GPOUT,188)
    assign out_intel_reserved_ffwd_3_0 = i_llvm_fpga_ffwd_source_f64_unnamed_double_add_23_double_add_290_out_intel_reserved_ffwd_3_0;

    // valid_fanout_reg32(REG,239)@1 + 1
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

    // valid_fanout_reg9(REG,216)@1 + 1
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

    // valid_fanout_reg10(REG,217)@1 + 1
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

    // i_llvm_fpga_push_f64_shift_reg_sroa_10_0_push31_double_add_249(BLACKBOX,104)@2
    // out out_feedback_out_31@20000000
    // out out_feedback_valid_out_31@20000000
    double_add_2_i_llvm_fpga_push_f64_shift_reg_sroa_10_0_push31_0 thei_llvm_fpga_push_f64_shift_reg_sroa_10_0_push31_double_add_249 (
        .in_data_in(i_spec_select144_double_add_248_q),
        .in_feedback_stall_in_31(i_llvm_fpga_pop_f64_shift_reg_sroa_10_0_pop31_double_add_247_out_feedback_stall_out_31),
        .in_keep_going78_fanout_adaptor(i_llvm_fpga_fanout_i1_keep_going78_fanout_adaptor_double_add_210_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg10_q),
        .out_data_out(),
        .out_feedback_out_31(i_llvm_fpga_push_f64_shift_reg_sroa_10_0_push31_double_add_249_out_feedback_out_31),
        .out_feedback_valid_out_31(i_llvm_fpga_push_f64_shift_reg_sroa_10_0_push31_double_add_249_out_feedback_valid_out_31),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_f64_shift_reg_sroa_10_0_pop31_double_add_247(BLACKBOX,88)@2
    // out out_feedback_stall_out_31@20000000
    double_add_2_i_llvm_fpga_pop_f64_shift_reg_sroa_10_0_pop31_0 thei_llvm_fpga_pop_f64_shift_reg_sroa_10_0_pop31_double_add_247 (
        .in_data_in(c_double_0_000000e_00166_q),
        .in_dir(i_llvm_fpga_fanout_i1_c0_ene1_fanout_adaptor_double_add_23_q),
        .in_feedback_in_31(i_llvm_fpga_push_f64_shift_reg_sroa_10_0_push31_double_add_249_out_feedback_out_31),
        .in_feedback_valid_in_31(i_llvm_fpga_push_f64_shift_reg_sroa_10_0_push31_double_add_249_out_feedback_valid_out_31),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg9_q),
        .out_data_out(i_llvm_fpga_pop_f64_shift_reg_sroa_10_0_pop31_double_add_247_out_data_out),
        .out_feedback_stall_out_31(i_llvm_fpga_pop_f64_shift_reg_sroa_10_0_pop31_double_add_247_out_feedback_stall_out_31),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_2163_recast_x(CONSTANT,175)
    assign c_i32_2163_recast_x_q = $unsigned(32'b00000000000000000000000000000010);

    // i_unnamed_double_add_235(LOGICAL,148)@2
    assign i_unnamed_double_add_235_q = $unsigned(i_llvm_fpga_pop_i32_i_021_pop34_double_add_216_out_data_out == c_i32_2163_recast_x_q ? 1'b1 : 1'b0);

    // i_spec_select144_double_add_248(MUX,128)@2
    assign i_spec_select144_double_add_248_s = i_unnamed_double_add_235_q;
    always @(i_spec_select144_double_add_248_s or i_llvm_fpga_pop_f64_shift_reg_sroa_10_0_pop31_double_add_247_out_data_out or c_double_0_000000e_00166_q)
    begin
        unique case (i_spec_select144_double_add_248_s)
            1'b0 : i_spec_select144_double_add_248_q = i_llvm_fpga_pop_f64_shift_reg_sroa_10_0_pop31_double_add_247_out_data_out;
            1'b1 : i_spec_select144_double_add_248_q = c_double_0_000000e_00166_q;
            default : i_spec_select144_double_add_248_q = 64'b0;
        endcase
    end

    // i_llvm_fpga_ffwd_source_f64_unnamed_double_add_24_double_add_291(BLACKBOX,80)@2
    // out out_intel_reserved_ffwd_4_0@20000000
    double_add_2_i_llvm_fpga_ffwd_source_f64_unnamed_4_double_add_20 thei_llvm_fpga_ffwd_source_f64_unnamed_double_add_24_double_add_291 (
        .in_predicate_in(i_first_cleanup_xor84_double_add_26_q),
        .in_src_data_in_4_0(i_spec_select144_double_add_248_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg32_q),
        .out_intel_reserved_ffwd_4_0(i_llvm_fpga_ffwd_source_f64_unnamed_double_add_24_double_add_291_out_intel_reserved_ffwd_4_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_5_regfree_osync_x(GPOUT,189)
    assign out_intel_reserved_ffwd_4_0 = i_llvm_fpga_ffwd_source_f64_unnamed_double_add_24_double_add_291_out_intel_reserved_ffwd_4_0;

    // valid_fanout_reg33(REG,240)@1 + 1
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

    // valid_fanout_reg11(REG,218)@1 + 1
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

    // valid_fanout_reg12(REG,219)@1 + 1
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

    // i_llvm_fpga_push_f64_shift_reg_sroa_14_0_push30_double_add_252(BLACKBOX,105)@2
    // out out_feedback_out_30@20000000
    // out out_feedback_valid_out_30@20000000
    double_add_2_i_llvm_fpga_push_f64_shift_reg_sroa_14_0_push30_0 thei_llvm_fpga_push_f64_shift_reg_sroa_14_0_push30_double_add_252 (
        .in_data_in(i_spec_select145_double_add_251_q),
        .in_feedback_stall_in_30(i_llvm_fpga_pop_f64_shift_reg_sroa_14_0_pop30_double_add_250_out_feedback_stall_out_30),
        .in_keep_going78_fanout_adaptor(i_llvm_fpga_fanout_i1_keep_going78_fanout_adaptor_double_add_210_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg12_q),
        .out_data_out(),
        .out_feedback_out_30(i_llvm_fpga_push_f64_shift_reg_sroa_14_0_push30_double_add_252_out_feedback_out_30),
        .out_feedback_valid_out_30(i_llvm_fpga_push_f64_shift_reg_sroa_14_0_push30_double_add_252_out_feedback_valid_out_30),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_f64_shift_reg_sroa_14_0_pop30_double_add_250(BLACKBOX,89)@2
    // out out_feedback_stall_out_30@20000000
    double_add_2_i_llvm_fpga_pop_f64_shift_reg_sroa_14_0_pop30_0 thei_llvm_fpga_pop_f64_shift_reg_sroa_14_0_pop30_double_add_250 (
        .in_data_in(c_double_0_000000e_00166_q),
        .in_dir(i_llvm_fpga_fanout_i1_c0_ene1_fanout_adaptor_double_add_23_q),
        .in_feedback_in_30(i_llvm_fpga_push_f64_shift_reg_sroa_14_0_push30_double_add_252_out_feedback_out_30),
        .in_feedback_valid_in_30(i_llvm_fpga_push_f64_shift_reg_sroa_14_0_push30_double_add_252_out_feedback_valid_out_30),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg11_q),
        .out_data_out(i_llvm_fpga_pop_f64_shift_reg_sroa_14_0_pop30_double_add_250_out_data_out),
        .out_feedback_stall_out_30(i_llvm_fpga_pop_f64_shift_reg_sroa_14_0_pop30_double_add_250_out_feedback_stall_out_30),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_3162_recast_x(CONSTANT,176)
    assign c_i32_3162_recast_x_q = $unsigned(32'b00000000000000000000000000000011);

    // i_unnamed_double_add_233(LOGICAL,147)@2
    assign i_unnamed_double_add_233_q = $unsigned(i_llvm_fpga_pop_i32_i_021_pop34_double_add_216_out_data_out == c_i32_3162_recast_x_q ? 1'b1 : 1'b0);

    // i_spec_select145_double_add_251(MUX,129)@2
    assign i_spec_select145_double_add_251_s = i_unnamed_double_add_233_q;
    always @(i_spec_select145_double_add_251_s or i_llvm_fpga_pop_f64_shift_reg_sroa_14_0_pop30_double_add_250_out_data_out or c_double_0_000000e_00166_q)
    begin
        unique case (i_spec_select145_double_add_251_s)
            1'b0 : i_spec_select145_double_add_251_q = i_llvm_fpga_pop_f64_shift_reg_sroa_14_0_pop30_double_add_250_out_data_out;
            1'b1 : i_spec_select145_double_add_251_q = c_double_0_000000e_00166_q;
            default : i_spec_select145_double_add_251_q = 64'b0;
        endcase
    end

    // i_llvm_fpga_ffwd_source_f64_unnamed_double_add_25_double_add_292(BLACKBOX,81)@2
    // out out_intel_reserved_ffwd_5_0@20000000
    double_add_2_i_llvm_fpga_ffwd_source_f64_unnamed_5_double_add_20 thei_llvm_fpga_ffwd_source_f64_unnamed_double_add_25_double_add_292 (
        .in_predicate_in(i_first_cleanup_xor84_double_add_26_q),
        .in_src_data_in_5_0(i_spec_select145_double_add_251_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg33_q),
        .out_intel_reserved_ffwd_5_0(i_llvm_fpga_ffwd_source_f64_unnamed_double_add_25_double_add_292_out_intel_reserved_ffwd_5_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_6_regfree_osync_x(GPOUT,190)
    assign out_intel_reserved_ffwd_5_0 = i_llvm_fpga_ffwd_source_f64_unnamed_double_add_25_double_add_292_out_intel_reserved_ffwd_5_0;

    // valid_fanout_reg34(REG,241)@1 + 1
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

    // valid_fanout_reg13(REG,220)@1 + 1
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

    // valid_fanout_reg14(REG,221)@1 + 1
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

    // i_llvm_fpga_push_f64_shift_reg_sroa_18_0_push29_double_add_255(BLACKBOX,106)@2
    // out out_feedback_out_29@20000000
    // out out_feedback_valid_out_29@20000000
    double_add_2_i_llvm_fpga_push_f64_shift_reg_sroa_18_0_push29_0 thei_llvm_fpga_push_f64_shift_reg_sroa_18_0_push29_double_add_255 (
        .in_data_in(i_spec_select146_double_add_254_q),
        .in_feedback_stall_in_29(i_llvm_fpga_pop_f64_shift_reg_sroa_18_0_pop29_double_add_253_out_feedback_stall_out_29),
        .in_keep_going78_fanout_adaptor(i_llvm_fpga_fanout_i1_keep_going78_fanout_adaptor_double_add_210_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg14_q),
        .out_data_out(),
        .out_feedback_out_29(i_llvm_fpga_push_f64_shift_reg_sroa_18_0_push29_double_add_255_out_feedback_out_29),
        .out_feedback_valid_out_29(i_llvm_fpga_push_f64_shift_reg_sroa_18_0_push29_double_add_255_out_feedback_valid_out_29),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_f64_shift_reg_sroa_18_0_pop29_double_add_253(BLACKBOX,90)@2
    // out out_feedback_stall_out_29@20000000
    double_add_2_i_llvm_fpga_pop_f64_shift_reg_sroa_18_0_pop29_0 thei_llvm_fpga_pop_f64_shift_reg_sroa_18_0_pop29_double_add_253 (
        .in_data_in(c_double_0_000000e_00166_q),
        .in_dir(i_llvm_fpga_fanout_i1_c0_ene1_fanout_adaptor_double_add_23_q),
        .in_feedback_in_29(i_llvm_fpga_push_f64_shift_reg_sroa_18_0_push29_double_add_255_out_feedback_out_29),
        .in_feedback_valid_in_29(i_llvm_fpga_push_f64_shift_reg_sroa_18_0_push29_double_add_255_out_feedback_valid_out_29),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg13_q),
        .out_data_out(i_llvm_fpga_pop_f64_shift_reg_sroa_18_0_pop29_double_add_253_out_data_out),
        .out_feedback_stall_out_29(i_llvm_fpga_pop_f64_shift_reg_sroa_18_0_pop29_double_add_253_out_feedback_stall_out_29),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_4161_recast_x(CONSTANT,177)
    assign c_i32_4161_recast_x_q = $unsigned(32'b00000000000000000000000000000100);

    // i_unnamed_double_add_231(LOGICAL,146)@2
    assign i_unnamed_double_add_231_q = $unsigned(i_llvm_fpga_pop_i32_i_021_pop34_double_add_216_out_data_out == c_i32_4161_recast_x_q ? 1'b1 : 1'b0);

    // i_spec_select146_double_add_254(MUX,130)@2
    assign i_spec_select146_double_add_254_s = i_unnamed_double_add_231_q;
    always @(i_spec_select146_double_add_254_s or i_llvm_fpga_pop_f64_shift_reg_sroa_18_0_pop29_double_add_253_out_data_out or c_double_0_000000e_00166_q)
    begin
        unique case (i_spec_select146_double_add_254_s)
            1'b0 : i_spec_select146_double_add_254_q = i_llvm_fpga_pop_f64_shift_reg_sroa_18_0_pop29_double_add_253_out_data_out;
            1'b1 : i_spec_select146_double_add_254_q = c_double_0_000000e_00166_q;
            default : i_spec_select146_double_add_254_q = 64'b0;
        endcase
    end

    // i_llvm_fpga_ffwd_source_f64_unnamed_double_add_26_double_add_293(BLACKBOX,82)@2
    // out out_intel_reserved_ffwd_6_0@20000000
    double_add_2_i_llvm_fpga_ffwd_source_f64_unnamed_6_double_add_20 thei_llvm_fpga_ffwd_source_f64_unnamed_double_add_26_double_add_293 (
        .in_predicate_in(i_first_cleanup_xor84_double_add_26_q),
        .in_src_data_in_6_0(i_spec_select146_double_add_254_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg34_q),
        .out_intel_reserved_ffwd_6_0(i_llvm_fpga_ffwd_source_f64_unnamed_double_add_26_double_add_293_out_intel_reserved_ffwd_6_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_7_regfree_osync_x(GPOUT,191)
    assign out_intel_reserved_ffwd_6_0 = i_llvm_fpga_ffwd_source_f64_unnamed_double_add_26_double_add_293_out_intel_reserved_ffwd_6_0;

    // valid_fanout_reg35(REG,242)@1 + 1
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

    // valid_fanout_reg15(REG,222)@1 + 1
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

    // valid_fanout_reg16(REG,223)@1 + 1
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

    // i_llvm_fpga_push_f64_shift_reg_sroa_22_0_push28_double_add_258(BLACKBOX,107)@2
    // out out_feedback_out_28@20000000
    // out out_feedback_valid_out_28@20000000
    double_add_2_i_llvm_fpga_push_f64_shift_reg_sroa_22_0_push28_0 thei_llvm_fpga_push_f64_shift_reg_sroa_22_0_push28_double_add_258 (
        .in_data_in(i_spec_select147_double_add_257_q),
        .in_feedback_stall_in_28(i_llvm_fpga_pop_f64_shift_reg_sroa_22_0_pop28_double_add_256_out_feedback_stall_out_28),
        .in_keep_going78_fanout_adaptor(i_llvm_fpga_fanout_i1_keep_going78_fanout_adaptor_double_add_210_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg16_q),
        .out_data_out(),
        .out_feedback_out_28(i_llvm_fpga_push_f64_shift_reg_sroa_22_0_push28_double_add_258_out_feedback_out_28),
        .out_feedback_valid_out_28(i_llvm_fpga_push_f64_shift_reg_sroa_22_0_push28_double_add_258_out_feedback_valid_out_28),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_f64_shift_reg_sroa_22_0_pop28_double_add_256(BLACKBOX,91)@2
    // out out_feedback_stall_out_28@20000000
    double_add_2_i_llvm_fpga_pop_f64_shift_reg_sroa_22_0_pop28_0 thei_llvm_fpga_pop_f64_shift_reg_sroa_22_0_pop28_double_add_256 (
        .in_data_in(c_double_0_000000e_00166_q),
        .in_dir(i_llvm_fpga_fanout_i1_c0_ene1_fanout_adaptor_double_add_23_q),
        .in_feedback_in_28(i_llvm_fpga_push_f64_shift_reg_sroa_22_0_push28_double_add_258_out_feedback_out_28),
        .in_feedback_valid_in_28(i_llvm_fpga_push_f64_shift_reg_sroa_22_0_push28_double_add_258_out_feedback_valid_out_28),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg15_q),
        .out_data_out(i_llvm_fpga_pop_f64_shift_reg_sroa_22_0_pop28_double_add_256_out_data_out),
        .out_feedback_stall_out_28(i_llvm_fpga_pop_f64_shift_reg_sroa_22_0_pop28_double_add_256_out_feedback_stall_out_28),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_5160_recast_x(CONSTANT,178)
    assign c_i32_5160_recast_x_q = $unsigned(32'b00000000000000000000000000000101);

    // i_unnamed_double_add_229(LOGICAL,145)@2
    assign i_unnamed_double_add_229_q = $unsigned(i_llvm_fpga_pop_i32_i_021_pop34_double_add_216_out_data_out == c_i32_5160_recast_x_q ? 1'b1 : 1'b0);

    // i_spec_select147_double_add_257(MUX,131)@2
    assign i_spec_select147_double_add_257_s = i_unnamed_double_add_229_q;
    always @(i_spec_select147_double_add_257_s or i_llvm_fpga_pop_f64_shift_reg_sroa_22_0_pop28_double_add_256_out_data_out or c_double_0_000000e_00166_q)
    begin
        unique case (i_spec_select147_double_add_257_s)
            1'b0 : i_spec_select147_double_add_257_q = i_llvm_fpga_pop_f64_shift_reg_sroa_22_0_pop28_double_add_256_out_data_out;
            1'b1 : i_spec_select147_double_add_257_q = c_double_0_000000e_00166_q;
            default : i_spec_select147_double_add_257_q = 64'b0;
        endcase
    end

    // i_llvm_fpga_ffwd_source_f64_unnamed_double_add_27_double_add_294(BLACKBOX,83)@2
    // out out_intel_reserved_ffwd_7_0@20000000
    double_add_2_i_llvm_fpga_ffwd_source_f64_unnamed_7_double_add_20 thei_llvm_fpga_ffwd_source_f64_unnamed_double_add_27_double_add_294 (
        .in_predicate_in(i_first_cleanup_xor84_double_add_26_q),
        .in_src_data_in_7_0(i_spec_select147_double_add_257_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg35_q),
        .out_intel_reserved_ffwd_7_0(i_llvm_fpga_ffwd_source_f64_unnamed_double_add_27_double_add_294_out_intel_reserved_ffwd_7_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_8_regfree_osync_x(GPOUT,192)
    assign out_intel_reserved_ffwd_7_0 = i_llvm_fpga_ffwd_source_f64_unnamed_double_add_27_double_add_294_out_intel_reserved_ffwd_7_0;

    // valid_fanout_reg36(REG,243)@1 + 1
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

    // valid_fanout_reg17(REG,224)@1 + 1
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

    // valid_fanout_reg18(REG,225)@1 + 1
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

    // i_llvm_fpga_push_f64_shift_reg_sroa_26_0_push27_double_add_261(BLACKBOX,108)@2
    // out out_feedback_out_27@20000000
    // out out_feedback_valid_out_27@20000000
    double_add_2_i_llvm_fpga_push_f64_shift_reg_sroa_26_0_push27_0 thei_llvm_fpga_push_f64_shift_reg_sroa_26_0_push27_double_add_261 (
        .in_data_in(i_spec_select148_double_add_260_q),
        .in_feedback_stall_in_27(i_llvm_fpga_pop_f64_shift_reg_sroa_26_0_pop27_double_add_259_out_feedback_stall_out_27),
        .in_keep_going78_fanout_adaptor112(i_llvm_fpga_fanout_i1_keep_going78_fanout_adaptor112_double_add_29_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg18_q),
        .out_data_out(),
        .out_feedback_out_27(i_llvm_fpga_push_f64_shift_reg_sroa_26_0_push27_double_add_261_out_feedback_out_27),
        .out_feedback_valid_out_27(i_llvm_fpga_push_f64_shift_reg_sroa_26_0_push27_double_add_261_out_feedback_valid_out_27),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_f64_shift_reg_sroa_26_0_pop27_double_add_259(BLACKBOX,92)@2
    // out out_feedback_stall_out_27@20000000
    double_add_2_i_llvm_fpga_pop_f64_shift_reg_sroa_26_0_pop27_0 thei_llvm_fpga_pop_f64_shift_reg_sroa_26_0_pop27_double_add_259 (
        .in_data_in(c_double_0_000000e_00166_q),
        .in_dir(i_llvm_fpga_fanout_i1_c0_ene1_fanout_adaptor111_double_add_22_q),
        .in_feedback_in_27(i_llvm_fpga_push_f64_shift_reg_sroa_26_0_push27_double_add_261_out_feedback_out_27),
        .in_feedback_valid_in_27(i_llvm_fpga_push_f64_shift_reg_sroa_26_0_push27_double_add_261_out_feedback_valid_out_27),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg17_q),
        .out_data_out(i_llvm_fpga_pop_f64_shift_reg_sroa_26_0_pop27_double_add_259_out_data_out),
        .out_feedback_stall_out_27(i_llvm_fpga_pop_f64_shift_reg_sroa_26_0_pop27_double_add_259_out_feedback_stall_out_27),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_6159_recast_x(CONSTANT,179)
    assign c_i32_6159_recast_x_q = $unsigned(32'b00000000000000000000000000000110);

    // i_unnamed_double_add_227(LOGICAL,144)@2
    assign i_unnamed_double_add_227_q = $unsigned(i_llvm_fpga_pop_i32_i_021_pop34_double_add_216_out_data_out == c_i32_6159_recast_x_q ? 1'b1 : 1'b0);

    // i_spec_select148_double_add_260(MUX,132)@2
    assign i_spec_select148_double_add_260_s = i_unnamed_double_add_227_q;
    always @(i_spec_select148_double_add_260_s or i_llvm_fpga_pop_f64_shift_reg_sroa_26_0_pop27_double_add_259_out_data_out or c_double_0_000000e_00166_q)
    begin
        unique case (i_spec_select148_double_add_260_s)
            1'b0 : i_spec_select148_double_add_260_q = i_llvm_fpga_pop_f64_shift_reg_sroa_26_0_pop27_double_add_259_out_data_out;
            1'b1 : i_spec_select148_double_add_260_q = c_double_0_000000e_00166_q;
            default : i_spec_select148_double_add_260_q = 64'b0;
        endcase
    end

    // i_llvm_fpga_ffwd_source_f64_unnamed_double_add_28_double_add_295(BLACKBOX,84)@2
    // out out_intel_reserved_ffwd_8_0@20000000
    double_add_2_i_llvm_fpga_ffwd_source_f64_unnamed_8_double_add_20 thei_llvm_fpga_ffwd_source_f64_unnamed_double_add_28_double_add_295 (
        .in_predicate_in(i_first_cleanup_xor84_double_add_26_q),
        .in_src_data_in_8_0(i_spec_select148_double_add_260_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg36_q),
        .out_intel_reserved_ffwd_8_0(i_llvm_fpga_ffwd_source_f64_unnamed_double_add_28_double_add_295_out_intel_reserved_ffwd_8_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_9_regfree_osync_x(GPOUT,193)
    assign out_intel_reserved_ffwd_8_0 = i_llvm_fpga_ffwd_source_f64_unnamed_double_add_28_double_add_295_out_intel_reserved_ffwd_8_0;

    // valid_fanout_reg37(REG,244)@1 + 1
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

    // valid_fanout_reg19(REG,226)@1 + 1
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

    // valid_fanout_reg20(REG,227)@1 + 1
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

    // i_llvm_fpga_push_f64_shift_reg_sroa_30_0_push26_double_add_264(BLACKBOX,109)@2
    // out out_feedback_out_26@20000000
    // out out_feedback_valid_out_26@20000000
    double_add_2_i_llvm_fpga_push_f64_shift_reg_sroa_30_0_push26_0 thei_llvm_fpga_push_f64_shift_reg_sroa_30_0_push26_double_add_264 (
        .in_data_in(i_spec_select149_double_add_263_q),
        .in_feedback_stall_in_26(i_llvm_fpga_pop_f64_shift_reg_sroa_30_0_pop26_double_add_262_out_feedback_stall_out_26),
        .in_keep_going78_fanout_adaptor112(i_llvm_fpga_fanout_i1_keep_going78_fanout_adaptor112_double_add_29_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg20_q),
        .out_data_out(),
        .out_feedback_out_26(i_llvm_fpga_push_f64_shift_reg_sroa_30_0_push26_double_add_264_out_feedback_out_26),
        .out_feedback_valid_out_26(i_llvm_fpga_push_f64_shift_reg_sroa_30_0_push26_double_add_264_out_feedback_valid_out_26),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_f64_shift_reg_sroa_30_0_pop26_double_add_262(BLACKBOX,93)@2
    // out out_feedback_stall_out_26@20000000
    double_add_2_i_llvm_fpga_pop_f64_shift_reg_sroa_30_0_pop26_0 thei_llvm_fpga_pop_f64_shift_reg_sroa_30_0_pop26_double_add_262 (
        .in_data_in(c_double_0_000000e_00166_q),
        .in_dir(i_llvm_fpga_fanout_i1_c0_ene1_fanout_adaptor111_double_add_22_q),
        .in_feedback_in_26(i_llvm_fpga_push_f64_shift_reg_sroa_30_0_push26_double_add_264_out_feedback_out_26),
        .in_feedback_valid_in_26(i_llvm_fpga_push_f64_shift_reg_sroa_30_0_push26_double_add_264_out_feedback_valid_out_26),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg19_q),
        .out_data_out(i_llvm_fpga_pop_f64_shift_reg_sroa_30_0_pop26_double_add_262_out_data_out),
        .out_feedback_stall_out_26(i_llvm_fpga_pop_f64_shift_reg_sroa_30_0_pop26_double_add_262_out_feedback_stall_out_26),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_7158_recast_x(CONSTANT,180)
    assign c_i32_7158_recast_x_q = $unsigned(32'b00000000000000000000000000000111);

    // i_unnamed_double_add_225(LOGICAL,143)@2
    assign i_unnamed_double_add_225_q = $unsigned(i_llvm_fpga_pop_i32_i_021_pop34_double_add_216_out_data_out == c_i32_7158_recast_x_q ? 1'b1 : 1'b0);

    // i_spec_select149_double_add_263(MUX,133)@2
    assign i_spec_select149_double_add_263_s = i_unnamed_double_add_225_q;
    always @(i_spec_select149_double_add_263_s or i_llvm_fpga_pop_f64_shift_reg_sroa_30_0_pop26_double_add_262_out_data_out or c_double_0_000000e_00166_q)
    begin
        unique case (i_spec_select149_double_add_263_s)
            1'b0 : i_spec_select149_double_add_263_q = i_llvm_fpga_pop_f64_shift_reg_sroa_30_0_pop26_double_add_262_out_data_out;
            1'b1 : i_spec_select149_double_add_263_q = c_double_0_000000e_00166_q;
            default : i_spec_select149_double_add_263_q = 64'b0;
        endcase
    end

    // i_llvm_fpga_ffwd_source_f64_unnamed_double_add_29_double_add_296(BLACKBOX,85)@2
    // out out_intel_reserved_ffwd_9_0@20000000
    double_add_2_i_llvm_fpga_ffwd_source_f64_unnamed_9_double_add_20 thei_llvm_fpga_ffwd_source_f64_unnamed_double_add_29_double_add_296 (
        .in_predicate_in(i_first_cleanup_xor84_double_add_26_q),
        .in_src_data_in_9_0(i_spec_select149_double_add_263_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg37_q),
        .out_intel_reserved_ffwd_9_0(i_llvm_fpga_ffwd_source_f64_unnamed_double_add_29_double_add_296_out_intel_reserved_ffwd_9_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_10_regfree_osync_x(GPOUT,194)
    assign out_intel_reserved_ffwd_9_0 = i_llvm_fpga_ffwd_source_f64_unnamed_double_add_29_double_add_296_out_intel_reserved_ffwd_9_0;

    // valid_fanout_reg0(REG,207)@1 + 1
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

    // i_masked87_double_add_2101(LOGICAL,121)@2
    assign i_masked87_double_add_2101_q = i_notcmp74_double_add_282_q & i_first_cleanup83_double_add_25_sel_x_b;

    // sync_out_aunroll_x(GPOUT,205)@2
    assign out_c0_exi2_0_tpl = GND_q;
    assign out_c0_exi2_1_tpl = redist2_i_llvm_fpga_pipeline_keep_going78_double_add_28_out_data_out_1_q;
    assign out_c0_exi2_2_tpl = i_masked87_double_add_2101_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_double_add_214 = GND_q;

endmodule
