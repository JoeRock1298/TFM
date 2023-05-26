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

// SystemVerilog created from double_add_2_i_sfc_logic_s_c0_in_for_bod0000ter108_double_add_20
// SystemVerilog created on Tue May 23 13:58:22 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module double_add_2_i_sfc_logic_s_c0_in_for_bod0000ter108_double_add_20 (
    input wire [63:0] in_intel_reserved_ffwd_10_0,
    input wire [63:0] in_intel_reserved_ffwd_11_0,
    input wire [63:0] in_intel_reserved_ffwd_12_0,
    input wire [63:0] in_intel_reserved_ffwd_13_0,
    input wire [63:0] in_intel_reserved_ffwd_2_0,
    input wire [63:0] in_intel_reserved_ffwd_3_0,
    input wire [63:0] in_intel_reserved_ffwd_4_0,
    input wire [63:0] in_intel_reserved_ffwd_5_0,
    input wire [63:0] in_intel_reserved_ffwd_6_0,
    input wire [63:0] in_intel_reserved_ffwd_7_0,
    input wire [63:0] in_intel_reserved_ffwd_8_0,
    input wire [63:0] in_intel_reserved_ffwd_9_0,
    output wire [63:0] out_intel_reserved_ffwd_14_0,
    output wire [63:0] out_intel_reserved_ffwd_15_0,
    output wire [63:0] out_intel_reserved_ffwd_16_0,
    output wire [63:0] out_intel_reserved_ffwd_17_0,
    output wire [63:0] out_intel_reserved_ffwd_18_0,
    output wire [63:0] out_intel_reserved_ffwd_19_0,
    output wire [63:0] out_intel_reserved_ffwd_20_0,
    output wire [63:0] out_intel_reserved_ffwd_21_0,
    output wire [63:0] out_intel_reserved_ffwd_22_0,
    output wire [63:0] out_intel_reserved_ffwd_23_0,
    output wire [63:0] out_intel_reserved_ffwd_24_0,
    output wire [63:0] out_intel_reserved_ffwd_25_0,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_double_add_214,
    output wire [0:0] out_unnamed_double_add_231_0_tpl,
    input wire [0:0] in_c0_eni4_0_tpl,
    input wire [0:0] in_c0_eni4_1_tpl,
    input wire [0:0] in_c0_eni4_2_tpl,
    input wire [63:0] in_c0_eni4_3_tpl,
    input wire [0:0] in_c0_eni4_4_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [63:0] c_double_undef118_q;
    wire [63:0] i_add_double_add_255_out_primWireOut;
    (* dont_merge *) reg [0:0] i_llvm_fpga_fanout_i1_c0_ene1109_fanout_adaptor113_double_add_24_q;
    (* dont_merge *) reg [0:0] i_llvm_fpga_fanout_i1_c0_ene1109_fanout_adaptor114_double_add_23_q;
    (* dont_merge *) reg [0:0] i_llvm_fpga_fanout_i1_c0_ene1109_fanout_adaptor115_double_add_22_q;
    (* dont_merge *) reg [0:0] i_llvm_fpga_fanout_i1_c0_ene1109_fanout_adaptor_double_add_25_q;
    (* dont_merge *) reg [0:0] i_llvm_fpga_fanout_i1_c0_ene2_fanout_adaptor116_double_add_26_q;
    (* dont_merge *) reg [0:0] i_llvm_fpga_fanout_i1_c0_ene2_fanout_adaptor_double_add_27_q;
    wire [63:0] i_llvm_fpga_ffwd_dest_f64_spec_select14422_double_add_243_out_dest_data_out_4_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_f64_spec_select14525_double_add_239_out_dest_data_out_5_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_f64_spec_select14628_double_add_235_out_dest_data_out_6_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_f64_spec_select14731_double_add_231_out_dest_data_out_7_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_f64_spec_select14834_double_add_227_out_dest_data_out_8_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_f64_spec_select14937_double_add_223_out_dest_data_out_9_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_f64_spec_select15040_double_add_219_out_dest_data_out_10_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_f64_spec_select15143_double_add_215_out_dest_data_out_11_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_f64_spec_select15246_double_add_211_out_dest_data_out_12_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_f64_spec_select15349_double_add_28_out_dest_data_out_13_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_f64_spec_select18_double_add_251_out_dest_data_out_2_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_f64_unnamed_double_add_218_double_add_247_out_dest_data_out_3_0;
    wire [63:0] i_llvm_fpga_ffwd_source_f64_unnamed_double_add_219_double_add_257_out_intel_reserved_ffwd_14_0;
    wire [63:0] i_llvm_fpga_ffwd_source_f64_unnamed_double_add_220_double_add_258_out_intel_reserved_ffwd_15_0;
    wire [63:0] i_llvm_fpga_ffwd_source_f64_unnamed_double_add_221_double_add_259_out_intel_reserved_ffwd_16_0;
    wire [63:0] i_llvm_fpga_ffwd_source_f64_unnamed_double_add_222_double_add_260_out_intel_reserved_ffwd_17_0;
    wire [63:0] i_llvm_fpga_ffwd_source_f64_unnamed_double_add_223_double_add_261_out_intel_reserved_ffwd_18_0;
    wire [63:0] i_llvm_fpga_ffwd_source_f64_unnamed_double_add_224_double_add_262_out_intel_reserved_ffwd_19_0;
    wire [63:0] i_llvm_fpga_ffwd_source_f64_unnamed_double_add_225_double_add_263_out_intel_reserved_ffwd_20_0;
    wire [63:0] i_llvm_fpga_ffwd_source_f64_unnamed_double_add_226_double_add_264_out_intel_reserved_ffwd_21_0;
    wire [63:0] i_llvm_fpga_ffwd_source_f64_unnamed_double_add_227_double_add_265_out_intel_reserved_ffwd_22_0;
    wire [63:0] i_llvm_fpga_ffwd_source_f64_unnamed_double_add_228_double_add_266_out_intel_reserved_ffwd_23_0;
    wire [63:0] i_llvm_fpga_ffwd_source_f64_unnamed_double_add_229_double_add_267_out_intel_reserved_ffwd_24_0;
    wire [63:0] i_llvm_fpga_ffwd_source_f64_unnamed_double_add_230_double_add_268_out_intel_reserved_ffwd_25_0;
    wire [63:0] i_llvm_fpga_pop_f64_pop10_double_add_224_out_data_out;
    wire [0:0] i_llvm_fpga_pop_f64_pop10_double_add_224_out_feedback_stall_out_10;
    wire [63:0] i_llvm_fpga_pop_f64_pop11_double_add_228_out_data_out;
    wire [0:0] i_llvm_fpga_pop_f64_pop11_double_add_228_out_feedback_stall_out_11;
    wire [63:0] i_llvm_fpga_pop_f64_pop12_double_add_232_out_data_out;
    wire [0:0] i_llvm_fpga_pop_f64_pop12_double_add_232_out_feedback_stall_out_12;
    wire [63:0] i_llvm_fpga_pop_f64_pop13_double_add_236_out_data_out;
    wire [0:0] i_llvm_fpga_pop_f64_pop13_double_add_236_out_feedback_stall_out_13;
    wire [63:0] i_llvm_fpga_pop_f64_pop14_double_add_240_out_data_out;
    wire [0:0] i_llvm_fpga_pop_f64_pop14_double_add_240_out_feedback_stall_out_14;
    wire [63:0] i_llvm_fpga_pop_f64_pop15_double_add_244_out_data_out;
    wire [0:0] i_llvm_fpga_pop_f64_pop15_double_add_244_out_feedback_stall_out_15;
    wire [63:0] i_llvm_fpga_pop_f64_pop16_double_add_248_out_data_out;
    wire [0:0] i_llvm_fpga_pop_f64_pop16_double_add_248_out_feedback_stall_out_16;
    wire [63:0] i_llvm_fpga_pop_f64_pop17_double_add_252_out_data_out;
    wire [0:0] i_llvm_fpga_pop_f64_pop17_double_add_252_out_feedback_stall_out_17;
    wire [63:0] i_llvm_fpga_pop_f64_pop6_double_add_29_out_data_out;
    wire [0:0] i_llvm_fpga_pop_f64_pop6_double_add_29_out_feedback_stall_out_6;
    wire [63:0] i_llvm_fpga_pop_f64_pop7_double_add_212_out_data_out;
    wire [0:0] i_llvm_fpga_pop_f64_pop7_double_add_212_out_feedback_stall_out_7;
    wire [63:0] i_llvm_fpga_pop_f64_pop8_double_add_216_out_data_out;
    wire [0:0] i_llvm_fpga_pop_f64_pop8_double_add_216_out_feedback_stall_out_8;
    wire [63:0] i_llvm_fpga_pop_f64_pop9_double_add_220_out_data_out;
    wire [0:0] i_llvm_fpga_pop_f64_pop9_double_add_220_out_feedback_stall_out_9;
    wire [63:0] i_llvm_fpga_push_f64_push10_double_add_225_out_feedback_out_10;
    wire [0:0] i_llvm_fpga_push_f64_push10_double_add_225_out_feedback_valid_out_10;
    wire [63:0] i_llvm_fpga_push_f64_push11_double_add_229_out_feedback_out_11;
    wire [0:0] i_llvm_fpga_push_f64_push11_double_add_229_out_feedback_valid_out_11;
    wire [63:0] i_llvm_fpga_push_f64_push12_double_add_233_out_feedback_out_12;
    wire [0:0] i_llvm_fpga_push_f64_push12_double_add_233_out_feedback_valid_out_12;
    wire [63:0] i_llvm_fpga_push_f64_push13_double_add_237_out_feedback_out_13;
    wire [0:0] i_llvm_fpga_push_f64_push13_double_add_237_out_feedback_valid_out_13;
    wire [63:0] i_llvm_fpga_push_f64_push14_double_add_241_out_feedback_out_14;
    wire [0:0] i_llvm_fpga_push_f64_push14_double_add_241_out_feedback_valid_out_14;
    wire [63:0] i_llvm_fpga_push_f64_push15_double_add_245_out_feedback_out_15;
    wire [0:0] i_llvm_fpga_push_f64_push15_double_add_245_out_feedback_valid_out_15;
    wire [63:0] i_llvm_fpga_push_f64_push16_double_add_249_out_feedback_out_16;
    wire [0:0] i_llvm_fpga_push_f64_push16_double_add_249_out_feedback_valid_out_16;
    wire [63:0] i_llvm_fpga_push_f64_push17_double_add_253_out_feedback_out_17;
    wire [0:0] i_llvm_fpga_push_f64_push17_double_add_253_out_feedback_valid_out_17;
    wire [63:0] i_llvm_fpga_push_f64_push6_double_add_256_out_feedback_out_6;
    wire [0:0] i_llvm_fpga_push_f64_push6_double_add_256_out_feedback_valid_out_6;
    wire [63:0] i_llvm_fpga_push_f64_push7_double_add_213_out_feedback_out_7;
    wire [0:0] i_llvm_fpga_push_f64_push7_double_add_213_out_feedback_valid_out_7;
    wire [63:0] i_llvm_fpga_push_f64_push8_double_add_217_out_feedback_out_8;
    wire [0:0] i_llvm_fpga_push_f64_push8_double_add_217_out_feedback_valid_out_8;
    wire [63:0] i_llvm_fpga_push_f64_push9_double_add_221_out_feedback_out_9;
    wire [0:0] i_llvm_fpga_push_f64_push9_double_add_221_out_feedback_valid_out_9;
    wire [0:0] i_replace_phi19_double_add_250_s;
    reg [63:0] i_replace_phi19_double_add_250_q;
    wire [0:0] i_replace_phi21_double_add_246_s;
    reg [63:0] i_replace_phi21_double_add_246_q;
    wire [0:0] i_replace_phi24_double_add_242_s;
    reg [63:0] i_replace_phi24_double_add_242_q;
    wire [0:0] i_replace_phi27_double_add_238_s;
    reg [63:0] i_replace_phi27_double_add_238_q;
    wire [0:0] i_replace_phi30_double_add_234_s;
    reg [63:0] i_replace_phi30_double_add_234_q;
    wire [0:0] i_replace_phi33_double_add_230_s;
    reg [63:0] i_replace_phi33_double_add_230_q;
    wire [0:0] i_replace_phi36_double_add_226_s;
    reg [63:0] i_replace_phi36_double_add_226_q;
    wire [0:0] i_replace_phi39_double_add_222_s;
    reg [63:0] i_replace_phi39_double_add_222_q;
    wire [0:0] i_replace_phi42_double_add_218_s;
    reg [63:0] i_replace_phi42_double_add_218_q;
    wire [0:0] i_replace_phi45_double_add_214_s;
    reg [63:0] i_replace_phi45_double_add_214_q;
    wire [0:0] i_replace_phi48_double_add_210_s;
    reg [63:0] i_replace_phi48_double_add_210_q;
    wire [0:0] i_replace_phi_double_add_254_s;
    reg [63:0] i_replace_phi_double_add_254_q;
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
    reg [0:0] redist0_sync_together155_aunroll_x_in_c0_eni4_1_tpl_2_q;
    reg [0:0] redist0_sync_together155_aunroll_x_in_c0_eni4_1_tpl_2_delay_0;
    reg [0:0] redist1_sync_together155_aunroll_x_in_c0_eni4_1_tpl_4_q;
    reg [0:0] redist1_sync_together155_aunroll_x_in_c0_eni4_1_tpl_4_delay_0;
    reg [0:0] redist2_sync_together155_aunroll_x_in_c0_eni4_2_tpl_1_q;
    reg [0:0] redist3_sync_together155_aunroll_x_in_c0_eni4_2_tpl_7_q;
    reg [63:0] redist4_sync_together155_aunroll_x_in_c0_eni4_3_tpl_1_q;
    reg [0:0] redist5_sync_together155_aunroll_x_in_c0_eni4_4_tpl_2_q;
    reg [0:0] redist5_sync_together155_aunroll_x_in_c0_eni4_4_tpl_2_delay_0;
    reg [0:0] redist6_sync_together155_aunroll_x_in_c0_eni4_4_tpl_3_q;
    reg [0:0] redist7_sync_together155_aunroll_x_in_c0_eni4_4_tpl_4_q;
    reg [0:0] redist8_sync_together155_aunroll_x_in_c0_eni4_4_tpl_5_q;
    reg [0:0] redist9_sync_together155_aunroll_x_in_c0_eni4_4_tpl_6_q;
    reg [0:0] redist10_sync_together155_aunroll_x_in_c0_eni4_4_tpl_7_q;
    reg [0:0] redist11_sync_together155_aunroll_x_in_c0_eni4_4_tpl_8_q;
    reg [0:0] redist12_sync_together155_aunroll_x_in_c0_eni4_4_tpl_9_q;
    reg [0:0] redist13_sync_together155_aunroll_x_in_c0_eni4_4_tpl_10_q;
    reg [0:0] redist14_sync_together155_aunroll_x_in_c0_eni4_4_tpl_11_q;
    reg [0:0] redist15_sync_together155_aunroll_x_in_i_valid_1_q;
    reg [0:0] redist16_sync_together155_aunroll_x_in_i_valid_2_q;
    reg [0:0] redist17_sync_together155_aunroll_x_in_i_valid_3_q;
    reg [0:0] redist18_sync_together155_aunroll_x_in_i_valid_4_q;
    reg [0:0] redist19_sync_together155_aunroll_x_in_i_valid_5_q;
    reg [0:0] redist20_sync_together155_aunroll_x_in_i_valid_6_q;
    reg [0:0] redist21_sync_together155_aunroll_x_in_i_valid_7_q;
    reg [0:0] redist22_sync_together155_aunroll_x_in_i_valid_8_q;
    reg [0:0] redist23_sync_together155_aunroll_x_in_i_valid_9_q;
    reg [0:0] redist24_sync_together155_aunroll_x_in_i_valid_10_q;
    reg [0:0] redist25_i_llvm_fpga_fanout_i1_c0_ene2_fanout_adaptor_double_add_27_q_1_q;
    reg [0:0] redist26_i_llvm_fpga_fanout_i1_c0_ene2_fanout_adaptor_double_add_27_q_2_q;
    reg [0:0] redist27_i_llvm_fpga_fanout_i1_c0_ene2_fanout_adaptor_double_add_27_q_3_q;
    reg [0:0] redist28_i_llvm_fpga_fanout_i1_c0_ene2_fanout_adaptor_double_add_27_q_4_q;
    reg [0:0] redist29_i_llvm_fpga_fanout_i1_c0_ene2_fanout_adaptor_double_add_27_q_5_q;
    reg [0:0] redist30_i_llvm_fpga_fanout_i1_c0_ene2_fanout_adaptor116_double_add_26_q_1_q;
    reg [0:0] redist31_i_llvm_fpga_fanout_i1_c0_ene2_fanout_adaptor116_double_add_26_q_2_q;
    reg [0:0] redist32_i_llvm_fpga_fanout_i1_c0_ene2_fanout_adaptor116_double_add_26_q_3_q;
    reg [0:0] redist33_i_llvm_fpga_fanout_i1_c0_ene1109_fanout_adaptor_double_add_25_q_1_q;
    reg [0:0] redist34_i_llvm_fpga_fanout_i1_c0_ene1109_fanout_adaptor_double_add_25_q_2_q;
    reg [0:0] redist35_i_llvm_fpga_fanout_i1_c0_ene1109_fanout_adaptor_double_add_25_q_3_q;
    reg [0:0] redist36_i_llvm_fpga_fanout_i1_c0_ene1109_fanout_adaptor_double_add_25_q_4_q;
    reg [0:0] redist37_i_llvm_fpga_fanout_i1_c0_ene1109_fanout_adaptor_double_add_25_q_5_q;
    reg [0:0] redist38_i_llvm_fpga_fanout_i1_c0_ene1109_fanout_adaptor115_double_add_22_q_1_q;
    reg [0:0] redist39_i_llvm_fpga_fanout_i1_c0_ene1109_fanout_adaptor114_double_add_23_q_1_q;
    reg [0:0] redist40_i_llvm_fpga_fanout_i1_c0_ene1109_fanout_adaptor114_double_add_23_q_2_q;
    reg [0:0] redist41_i_llvm_fpga_fanout_i1_c0_ene1109_fanout_adaptor114_double_add_23_q_3_q;
    reg [0:0] redist42_i_llvm_fpga_fanout_i1_c0_ene1109_fanout_adaptor114_double_add_23_q_4_q;
    reg [0:0] redist43_i_llvm_fpga_fanout_i1_c0_ene1109_fanout_adaptor114_double_add_23_q_5_q;
    reg [0:0] redist44_i_llvm_fpga_fanout_i1_c0_ene1109_fanout_adaptor113_double_add_24_q_1_q;
    reg [0:0] redist45_i_llvm_fpga_fanout_i1_c0_ene1109_fanout_adaptor113_double_add_24_q_2_q;
    reg [0:0] redist46_i_llvm_fpga_fanout_i1_c0_ene1109_fanout_adaptor113_double_add_24_q_3_q;
    reg [0:0] redist47_i_llvm_fpga_fanout_i1_c0_ene1109_fanout_adaptor113_double_add_24_q_8_q;
    reg [0:0] redist47_i_llvm_fpga_fanout_i1_c0_ene1109_fanout_adaptor113_double_add_24_q_8_delay_0;
    reg [0:0] redist47_i_llvm_fpga_fanout_i1_c0_ene1109_fanout_adaptor113_double_add_24_q_8_delay_1;
    reg [0:0] redist47_i_llvm_fpga_fanout_i1_c0_ene1109_fanout_adaptor113_double_add_24_q_8_delay_2;
    reg [0:0] redist47_i_llvm_fpga_fanout_i1_c0_ene1109_fanout_adaptor113_double_add_24_q_8_delay_3;
    reg [0:0] redist48_i_llvm_fpga_fanout_i1_c0_ene1109_fanout_adaptor113_double_add_24_q_9_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist15_sync_together155_aunroll_x_in_i_valid_1(DELAY,209)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist15_sync_together155_aunroll_x_in_i_valid_1_q <= '0;
        end
        else
        begin
            redist15_sync_together155_aunroll_x_in_i_valid_1_q <= $unsigned(in_i_valid);
        end
    end

    // redist16_sync_together155_aunroll_x_in_i_valid_2(DELAY,210)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist16_sync_together155_aunroll_x_in_i_valid_2_q <= '0;
        end
        else
        begin
            redist16_sync_together155_aunroll_x_in_i_valid_2_q <= $unsigned(redist15_sync_together155_aunroll_x_in_i_valid_1_q);
        end
    end

    // redist17_sync_together155_aunroll_x_in_i_valid_3(DELAY,211)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist17_sync_together155_aunroll_x_in_i_valid_3_q <= '0;
        end
        else
        begin
            redist17_sync_together155_aunroll_x_in_i_valid_3_q <= $unsigned(redist16_sync_together155_aunroll_x_in_i_valid_2_q);
        end
    end

    // redist18_sync_together155_aunroll_x_in_i_valid_4(DELAY,212)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist18_sync_together155_aunroll_x_in_i_valid_4_q <= '0;
        end
        else
        begin
            redist18_sync_together155_aunroll_x_in_i_valid_4_q <= $unsigned(redist17_sync_together155_aunroll_x_in_i_valid_3_q);
        end
    end

    // redist19_sync_together155_aunroll_x_in_i_valid_5(DELAY,213)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist19_sync_together155_aunroll_x_in_i_valid_5_q <= '0;
        end
        else
        begin
            redist19_sync_together155_aunroll_x_in_i_valid_5_q <= $unsigned(redist18_sync_together155_aunroll_x_in_i_valid_4_q);
        end
    end

    // redist20_sync_together155_aunroll_x_in_i_valid_6(DELAY,214)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist20_sync_together155_aunroll_x_in_i_valid_6_q <= '0;
        end
        else
        begin
            redist20_sync_together155_aunroll_x_in_i_valid_6_q <= $unsigned(redist19_sync_together155_aunroll_x_in_i_valid_5_q);
        end
    end

    // redist21_sync_together155_aunroll_x_in_i_valid_7(DELAY,215)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist21_sync_together155_aunroll_x_in_i_valid_7_q <= '0;
        end
        else
        begin
            redist21_sync_together155_aunroll_x_in_i_valid_7_q <= $unsigned(redist20_sync_together155_aunroll_x_in_i_valid_6_q);
        end
    end

    // redist22_sync_together155_aunroll_x_in_i_valid_8(DELAY,216)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist22_sync_together155_aunroll_x_in_i_valid_8_q <= '0;
        end
        else
        begin
            redist22_sync_together155_aunroll_x_in_i_valid_8_q <= $unsigned(redist21_sync_together155_aunroll_x_in_i_valid_7_q);
        end
    end

    // redist23_sync_together155_aunroll_x_in_i_valid_9(DELAY,217)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist23_sync_together155_aunroll_x_in_i_valid_9_q <= '0;
        end
        else
        begin
            redist23_sync_together155_aunroll_x_in_i_valid_9_q <= $unsigned(redist22_sync_together155_aunroll_x_in_i_valid_8_q);
        end
    end

    // valid_fanout_reg37(REG,182)@17 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg37_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg37_q <= $unsigned(redist23_sync_together155_aunroll_x_in_i_valid_9_q);
        end
    end

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // valid_fanout_reg1(REG,146)@17 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg1_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg1_q <= $unsigned(redist23_sync_together155_aunroll_x_in_i_valid_9_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_f64_spec_select15349_double_add_28(BLACKBOX,67)@18
    double_add_2_i_llvm_fpga_ffwd_dest_f64_spec_select15349_0 thei_llvm_fpga_ffwd_dest_f64_spec_select15349_double_add_28 (
        .in_intel_reserved_ffwd_13_0(in_intel_reserved_ffwd_13_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_dest_data_out_13_0(i_llvm_fpga_ffwd_dest_f64_spec_select15349_double_add_28_out_dest_data_out_13_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg2(REG,147)@17 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg2_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg2_q <= $unsigned(redist23_sync_together155_aunroll_x_in_i_valid_9_q);
        end
    end

    // redist24_sync_together155_aunroll_x_in_i_valid_10(DELAY,218)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist24_sync_together155_aunroll_x_in_i_valid_10_q <= '0;
        end
        else
        begin
            redist24_sync_together155_aunroll_x_in_i_valid_10_q <= $unsigned(redist23_sync_together155_aunroll_x_in_i_valid_9_q);
        end
    end

    // valid_fanout_reg36(REG,181)@18 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg36_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg36_q <= $unsigned(redist24_sync_together155_aunroll_x_in_i_valid_10_q);
        end
    end

    // redist4_sync_together155_aunroll_x_in_c0_eni4_3_tpl_1(DELAY,198)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_sync_together155_aunroll_x_in_c0_eni4_3_tpl_1_q <= '0;
        end
        else
        begin
            redist4_sync_together155_aunroll_x_in_c0_eni4_3_tpl_1_q <= $unsigned(in_c0_eni4_3_tpl);
        end
    end

    // valid_fanout_reg33(REG,178)@8 + 1
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

    // i_llvm_fpga_ffwd_dest_f64_spec_select18_double_add_251(BLACKBOX,68)@9
    double_add_2_i_llvm_fpga_ffwd_dest_f64_spec_select18_0 thei_llvm_fpga_ffwd_dest_f64_spec_select18_double_add_251 (
        .in_intel_reserved_ffwd_2_0(in_intel_reserved_ffwd_2_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg33_q),
        .out_dest_data_out_2_0(i_llvm_fpga_ffwd_dest_f64_spec_select18_double_add_251_out_dest_data_out_2_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg34(REG,179)@8 + 1
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

    // valid_fanout_reg35(REG,180)@9 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg35_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg35_q <= $unsigned(redist15_sync_together155_aunroll_x_in_i_valid_1_q);
        end
    end

    // valid_fanout_reg30(REG,175)@9 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg30_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg30_q <= $unsigned(redist15_sync_together155_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_f64_unnamed_double_add_218_double_add_247(BLACKBOX,69)@10
    double_add_2_i_llvm_fpga_ffwd_dest_f64_unnamed_18_double_add_20 thei_llvm_fpga_ffwd_dest_f64_unnamed_double_add_218_double_add_247 (
        .in_intel_reserved_ffwd_3_0(in_intel_reserved_ffwd_3_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg30_q),
        .out_dest_data_out_3_0(i_llvm_fpga_ffwd_dest_f64_unnamed_double_add_218_double_add_247_out_dest_data_out_3_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg31(REG,176)@9 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg31_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg31_q <= $unsigned(redist15_sync_together155_aunroll_x_in_i_valid_1_q);
        end
    end

    // valid_fanout_reg32(REG,177)@9 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg32_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg32_q <= $unsigned(redist15_sync_together155_aunroll_x_in_i_valid_1_q);
        end
    end

    // valid_fanout_reg27(REG,172)@9 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg27_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg27_q <= $unsigned(redist15_sync_together155_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_f64_spec_select14422_double_add_243(BLACKBOX,58)@10
    double_add_2_i_llvm_fpga_ffwd_dest_f64_spec_select14422_0 thei_llvm_fpga_ffwd_dest_f64_spec_select14422_double_add_243 (
        .in_intel_reserved_ffwd_4_0(in_intel_reserved_ffwd_4_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg27_q),
        .out_dest_data_out_4_0(i_llvm_fpga_ffwd_dest_f64_spec_select14422_double_add_243_out_dest_data_out_4_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg28(REG,173)@9 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg28_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg28_q <= $unsigned(redist15_sync_together155_aunroll_x_in_i_valid_1_q);
        end
    end

    // valid_fanout_reg29(REG,174)@10 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg29_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg29_q <= $unsigned(redist16_sync_together155_aunroll_x_in_i_valid_2_q);
        end
    end

    // valid_fanout_reg24(REG,169)@10 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg24_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg24_q <= $unsigned(redist16_sync_together155_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_f64_spec_select14525_double_add_239(BLACKBOX,59)@11
    double_add_2_i_llvm_fpga_ffwd_dest_f64_spec_select14525_0 thei_llvm_fpga_ffwd_dest_f64_spec_select14525_double_add_239 (
        .in_intel_reserved_ffwd_5_0(in_intel_reserved_ffwd_5_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg24_q),
        .out_dest_data_out_5_0(i_llvm_fpga_ffwd_dest_f64_spec_select14525_double_add_239_out_dest_data_out_5_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg25(REG,170)@10 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg25_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg25_q <= $unsigned(redist16_sync_together155_aunroll_x_in_i_valid_2_q);
        end
    end

    // valid_fanout_reg26(REG,171)@11 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg26_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg26_q <= $unsigned(redist17_sync_together155_aunroll_x_in_i_valid_3_q);
        end
    end

    // valid_fanout_reg21(REG,166)@11 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg21_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg21_q <= $unsigned(redist17_sync_together155_aunroll_x_in_i_valid_3_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_f64_spec_select14628_double_add_235(BLACKBOX,60)@12
    double_add_2_i_llvm_fpga_ffwd_dest_f64_spec_select14628_0 thei_llvm_fpga_ffwd_dest_f64_spec_select14628_double_add_235 (
        .in_intel_reserved_ffwd_6_0(in_intel_reserved_ffwd_6_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg21_q),
        .out_dest_data_out_6_0(i_llvm_fpga_ffwd_dest_f64_spec_select14628_double_add_235_out_dest_data_out_6_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg22(REG,167)@11 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg22_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg22_q <= $unsigned(redist17_sync_together155_aunroll_x_in_i_valid_3_q);
        end
    end

    // valid_fanout_reg23(REG,168)@12 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg23_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg23_q <= $unsigned(redist18_sync_together155_aunroll_x_in_i_valid_4_q);
        end
    end

    // valid_fanout_reg18(REG,163)@12 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg18_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg18_q <= $unsigned(redist18_sync_together155_aunroll_x_in_i_valid_4_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_f64_spec_select14731_double_add_231(BLACKBOX,61)@13
    double_add_2_i_llvm_fpga_ffwd_dest_f64_spec_select14731_0 thei_llvm_fpga_ffwd_dest_f64_spec_select14731_double_add_231 (
        .in_intel_reserved_ffwd_7_0(in_intel_reserved_ffwd_7_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg18_q),
        .out_dest_data_out_7_0(i_llvm_fpga_ffwd_dest_f64_spec_select14731_double_add_231_out_dest_data_out_7_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg19(REG,164)@12 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg19_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg19_q <= $unsigned(redist18_sync_together155_aunroll_x_in_i_valid_4_q);
        end
    end

    // valid_fanout_reg20(REG,165)@13 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg20_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg20_q <= $unsigned(redist19_sync_together155_aunroll_x_in_i_valid_5_q);
        end
    end

    // valid_fanout_reg15(REG,160)@13 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg15_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg15_q <= $unsigned(redist19_sync_together155_aunroll_x_in_i_valid_5_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_f64_spec_select14834_double_add_227(BLACKBOX,62)@14
    double_add_2_i_llvm_fpga_ffwd_dest_f64_spec_select14834_0 thei_llvm_fpga_ffwd_dest_f64_spec_select14834_double_add_227 (
        .in_intel_reserved_ffwd_8_0(in_intel_reserved_ffwd_8_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg15_q),
        .out_dest_data_out_8_0(i_llvm_fpga_ffwd_dest_f64_spec_select14834_double_add_227_out_dest_data_out_8_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg16(REG,161)@13 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg16_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg16_q <= $unsigned(redist19_sync_together155_aunroll_x_in_i_valid_5_q);
        end
    end

    // valid_fanout_reg17(REG,162)@14 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg17_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg17_q <= $unsigned(redist20_sync_together155_aunroll_x_in_i_valid_6_q);
        end
    end

    // valid_fanout_reg12(REG,157)@14 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg12_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg12_q <= $unsigned(redist20_sync_together155_aunroll_x_in_i_valid_6_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_f64_spec_select14937_double_add_223(BLACKBOX,63)@15
    double_add_2_i_llvm_fpga_ffwd_dest_f64_spec_select14937_0 thei_llvm_fpga_ffwd_dest_f64_spec_select14937_double_add_223 (
        .in_intel_reserved_ffwd_9_0(in_intel_reserved_ffwd_9_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg12_q),
        .out_dest_data_out_9_0(i_llvm_fpga_ffwd_dest_f64_spec_select14937_double_add_223_out_dest_data_out_9_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg13(REG,158)@14 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg13_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg13_q <= $unsigned(redist20_sync_together155_aunroll_x_in_i_valid_6_q);
        end
    end

    // valid_fanout_reg14(REG,159)@15 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg14_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg14_q <= $unsigned(redist21_sync_together155_aunroll_x_in_i_valid_7_q);
        end
    end

    // valid_fanout_reg9(REG,154)@15 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg9_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg9_q <= $unsigned(redist21_sync_together155_aunroll_x_in_i_valid_7_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_f64_spec_select15040_double_add_219(BLACKBOX,64)@16
    double_add_2_i_llvm_fpga_ffwd_dest_f64_spec_select15040_0 thei_llvm_fpga_ffwd_dest_f64_spec_select15040_double_add_219 (
        .in_intel_reserved_ffwd_10_0(in_intel_reserved_ffwd_10_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg9_q),
        .out_dest_data_out_10_0(i_llvm_fpga_ffwd_dest_f64_spec_select15040_double_add_219_out_dest_data_out_10_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg10(REG,155)@15 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg10_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg10_q <= $unsigned(redist21_sync_together155_aunroll_x_in_i_valid_7_q);
        end
    end

    // valid_fanout_reg11(REG,156)@15 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg11_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg11_q <= $unsigned(redist21_sync_together155_aunroll_x_in_i_valid_7_q);
        end
    end

    // valid_fanout_reg6(REG,151)@15 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg6_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg6_q <= $unsigned(redist21_sync_together155_aunroll_x_in_i_valid_7_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_f64_spec_select15143_double_add_215(BLACKBOX,65)@16
    double_add_2_i_llvm_fpga_ffwd_dest_f64_spec_select15143_0 thei_llvm_fpga_ffwd_dest_f64_spec_select15143_double_add_215 (
        .in_intel_reserved_ffwd_11_0(in_intel_reserved_ffwd_11_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg6_q),
        .out_dest_data_out_11_0(i_llvm_fpga_ffwd_dest_f64_spec_select15143_double_add_215_out_dest_data_out_11_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg7(REG,152)@15 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg7_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg7_q <= $unsigned(redist21_sync_together155_aunroll_x_in_i_valid_7_q);
        end
    end

    // valid_fanout_reg8(REG,153)@16 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg8_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg8_q <= $unsigned(redist22_sync_together155_aunroll_x_in_i_valid_8_q);
        end
    end

    // valid_fanout_reg3(REG,148)@16 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg3_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg3_q <= $unsigned(redist22_sync_together155_aunroll_x_in_i_valid_8_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_f64_spec_select15246_double_add_211(BLACKBOX,66)@17
    double_add_2_i_llvm_fpga_ffwd_dest_f64_spec_select15246_0 thei_llvm_fpga_ffwd_dest_f64_spec_select15246_double_add_211 (
        .in_intel_reserved_ffwd_12_0(in_intel_reserved_ffwd_12_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_dest_data_out_12_0(i_llvm_fpga_ffwd_dest_f64_spec_select15246_double_add_211_out_dest_data_out_12_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg4(REG,149)@16 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg4_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg4_q <= $unsigned(redist22_sync_together155_aunroll_x_in_i_valid_8_q);
        end
    end

    // valid_fanout_reg5(REG,150)@17 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg5_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg5_q <= $unsigned(redist23_sync_together155_aunroll_x_in_i_valid_9_q);
        end
    end

    // redist31_i_llvm_fpga_fanout_i1_c0_ene2_fanout_adaptor116_double_add_26_q_2(DELAY,225)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist31_i_llvm_fpga_fanout_i1_c0_ene2_fanout_adaptor116_double_add_26_q_2_q <= '0;
        end
        else
        begin
            redist31_i_llvm_fpga_fanout_i1_c0_ene2_fanout_adaptor116_double_add_26_q_2_q <= $unsigned(redist30_i_llvm_fpga_fanout_i1_c0_ene2_fanout_adaptor116_double_add_26_q_1_q);
        end
    end

    // i_llvm_fpga_push_f64_push7_double_add_213(BLACKBOX,103)@18
    // out out_feedback_out_7@20000000
    // out out_feedback_valid_out_7@20000000
    double_add_2_i_llvm_fpga_push_f64_push7_0 thei_llvm_fpga_push_f64_push7_double_add_213 (
        .in_c0_ene2_fanout_adaptor116(redist31_i_llvm_fpga_fanout_i1_c0_ene2_fanout_adaptor116_double_add_26_q_2_q),
        .in_data_in(i_replace_phi48_double_add_210_q),
        .in_feedback_stall_in_7(i_llvm_fpga_pop_f64_pop7_double_add_212_out_feedback_stall_out_7),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_data_out(),
        .out_feedback_out_7(i_llvm_fpga_push_f64_push7_double_add_213_out_feedback_out_7),
        .out_feedback_valid_out_7(i_llvm_fpga_push_f64_push7_double_add_213_out_feedback_valid_out_7),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist36_i_llvm_fpga_fanout_i1_c0_ene1109_fanout_adaptor_double_add_25_q_4(DELAY,230)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist36_i_llvm_fpga_fanout_i1_c0_ene1109_fanout_adaptor_double_add_25_q_4_q <= '0;
        end
        else
        begin
            redist36_i_llvm_fpga_fanout_i1_c0_ene1109_fanout_adaptor_double_add_25_q_4_q <= $unsigned(redist35_i_llvm_fpga_fanout_i1_c0_ene1109_fanout_adaptor_double_add_25_q_3_q);
        end
    end

    // i_llvm_fpga_pop_f64_pop7_double_add_212(BLACKBOX,91)@17
    // out out_feedback_stall_out_7@20000000
    double_add_2_i_llvm_fpga_pop_f64_pop7_0 thei_llvm_fpga_pop_f64_pop7_double_add_212 (
        .in_data_in(c_double_undef118_q),
        .in_dir(redist36_i_llvm_fpga_fanout_i1_c0_ene1109_fanout_adaptor_double_add_25_q_4_q),
        .in_feedback_in_7(i_llvm_fpga_push_f64_push7_double_add_213_out_feedback_out_7),
        .in_feedback_valid_in_7(i_llvm_fpga_push_f64_push7_double_add_213_out_feedback_valid_out_7),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_data_out(i_llvm_fpga_pop_f64_pop7_double_add_212_out_data_out),
        .out_feedback_stall_out_7(i_llvm_fpga_pop_f64_pop7_double_add_212_out_feedback_stall_out_7),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist47_i_llvm_fpga_fanout_i1_c0_ene1109_fanout_adaptor113_double_add_24_q_8(DELAY,241)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist47_i_llvm_fpga_fanout_i1_c0_ene1109_fanout_adaptor113_double_add_24_q_8_delay_0 <= '0;
            redist47_i_llvm_fpga_fanout_i1_c0_ene1109_fanout_adaptor113_double_add_24_q_8_delay_1 <= '0;
            redist47_i_llvm_fpga_fanout_i1_c0_ene1109_fanout_adaptor113_double_add_24_q_8_delay_2 <= '0;
            redist47_i_llvm_fpga_fanout_i1_c0_ene1109_fanout_adaptor113_double_add_24_q_8_delay_3 <= '0;
            redist47_i_llvm_fpga_fanout_i1_c0_ene1109_fanout_adaptor113_double_add_24_q_8_q <= '0;
        end
        else
        begin
            redist47_i_llvm_fpga_fanout_i1_c0_ene1109_fanout_adaptor113_double_add_24_q_8_delay_0 <= $unsigned(redist46_i_llvm_fpga_fanout_i1_c0_ene1109_fanout_adaptor113_double_add_24_q_3_q);
            redist47_i_llvm_fpga_fanout_i1_c0_ene1109_fanout_adaptor113_double_add_24_q_8_delay_1 <= redist47_i_llvm_fpga_fanout_i1_c0_ene1109_fanout_adaptor113_double_add_24_q_8_delay_0;
            redist47_i_llvm_fpga_fanout_i1_c0_ene1109_fanout_adaptor113_double_add_24_q_8_delay_2 <= redist47_i_llvm_fpga_fanout_i1_c0_ene1109_fanout_adaptor113_double_add_24_q_8_delay_1;
            redist47_i_llvm_fpga_fanout_i1_c0_ene1109_fanout_adaptor113_double_add_24_q_8_delay_3 <= redist47_i_llvm_fpga_fanout_i1_c0_ene1109_fanout_adaptor113_double_add_24_q_8_delay_2;
            redist47_i_llvm_fpga_fanout_i1_c0_ene1109_fanout_adaptor113_double_add_24_q_8_q <= redist47_i_llvm_fpga_fanout_i1_c0_ene1109_fanout_adaptor113_double_add_24_q_8_delay_3;
        end
    end

    // i_replace_phi45_double_add_214(MUX,115)@17
    assign i_replace_phi45_double_add_214_s = redist47_i_llvm_fpga_fanout_i1_c0_ene1109_fanout_adaptor113_double_add_24_q_8_q;
    always @(i_replace_phi45_double_add_214_s or i_llvm_fpga_pop_f64_pop7_double_add_212_out_data_out or i_llvm_fpga_ffwd_dest_f64_spec_select15246_double_add_211_out_dest_data_out_12_0)
    begin
        unique case (i_replace_phi45_double_add_214_s)
            1'b0 : i_replace_phi45_double_add_214_q = i_llvm_fpga_pop_f64_pop7_double_add_212_out_data_out;
            1'b1 : i_replace_phi45_double_add_214_q = i_llvm_fpga_ffwd_dest_f64_spec_select15246_double_add_211_out_dest_data_out_12_0;
            default : i_replace_phi45_double_add_214_q = 64'b0;
        endcase
    end

    // redist30_i_llvm_fpga_fanout_i1_c0_ene2_fanout_adaptor116_double_add_26_q_1(DELAY,224)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist30_i_llvm_fpga_fanout_i1_c0_ene2_fanout_adaptor116_double_add_26_q_1_q <= '0;
        end
        else
        begin
            redist30_i_llvm_fpga_fanout_i1_c0_ene2_fanout_adaptor116_double_add_26_q_1_q <= $unsigned(i_llvm_fpga_fanout_i1_c0_ene2_fanout_adaptor116_double_add_26_q);
        end
    end

    // i_llvm_fpga_push_f64_push8_double_add_217(BLACKBOX,104)@17
    // out out_feedback_out_8@20000000
    // out out_feedback_valid_out_8@20000000
    double_add_2_i_llvm_fpga_push_f64_push8_0 thei_llvm_fpga_push_f64_push8_double_add_217 (
        .in_c0_ene2_fanout_adaptor116(redist30_i_llvm_fpga_fanout_i1_c0_ene2_fanout_adaptor116_double_add_26_q_1_q),
        .in_data_in(i_replace_phi45_double_add_214_q),
        .in_feedback_stall_in_8(i_llvm_fpga_pop_f64_pop8_double_add_216_out_feedback_stall_out_8),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg8_q),
        .out_data_out(),
        .out_feedback_out_8(i_llvm_fpga_push_f64_push8_double_add_217_out_feedback_out_8),
        .out_feedback_valid_out_8(i_llvm_fpga_push_f64_push8_double_add_217_out_feedback_valid_out_8),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_f64_pop8_double_add_216(BLACKBOX,92)@16
    // out out_feedback_stall_out_8@20000000
    double_add_2_i_llvm_fpga_pop_f64_pop8_0 thei_llvm_fpga_pop_f64_pop8_double_add_216 (
        .in_data_in(c_double_undef118_q),
        .in_dir(redist35_i_llvm_fpga_fanout_i1_c0_ene1109_fanout_adaptor_double_add_25_q_3_q),
        .in_feedback_in_8(i_llvm_fpga_push_f64_push8_double_add_217_out_feedback_out_8),
        .in_feedback_valid_in_8(i_llvm_fpga_push_f64_push8_double_add_217_out_feedback_valid_out_8),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg7_q),
        .out_data_out(i_llvm_fpga_pop_f64_pop8_double_add_216_out_data_out),
        .out_feedback_stall_out_8(i_llvm_fpga_pop_f64_pop8_double_add_216_out_feedback_stall_out_8),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_replace_phi42_double_add_218(MUX,114)@16
    assign i_replace_phi42_double_add_218_s = redist43_i_llvm_fpga_fanout_i1_c0_ene1109_fanout_adaptor114_double_add_23_q_5_q;
    always @(i_replace_phi42_double_add_218_s or i_llvm_fpga_pop_f64_pop8_double_add_216_out_data_out or i_llvm_fpga_ffwd_dest_f64_spec_select15143_double_add_215_out_dest_data_out_11_0)
    begin
        unique case (i_replace_phi42_double_add_218_s)
            1'b0 : i_replace_phi42_double_add_218_q = i_llvm_fpga_pop_f64_pop8_double_add_216_out_data_out;
            1'b1 : i_replace_phi42_double_add_218_q = i_llvm_fpga_ffwd_dest_f64_spec_select15143_double_add_215_out_dest_data_out_11_0;
            default : i_replace_phi42_double_add_218_q = 64'b0;
        endcase
    end

    // i_llvm_fpga_push_f64_push9_double_add_221(BLACKBOX,105)@16
    // out out_feedback_out_9@20000000
    // out out_feedback_valid_out_9@20000000
    double_add_2_i_llvm_fpga_push_f64_push9_0 thei_llvm_fpga_push_f64_push9_double_add_221 (
        .in_c0_ene2_fanout_adaptor116(i_llvm_fpga_fanout_i1_c0_ene2_fanout_adaptor116_double_add_26_q),
        .in_data_in(i_replace_phi42_double_add_218_q),
        .in_feedback_stall_in_9(i_llvm_fpga_pop_f64_pop9_double_add_220_out_feedback_stall_out_9),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg11_q),
        .out_data_out(),
        .out_feedback_out_9(i_llvm_fpga_push_f64_push9_double_add_221_out_feedback_out_9),
        .out_feedback_valid_out_9(i_llvm_fpga_push_f64_push9_double_add_221_out_feedback_valid_out_9),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist35_i_llvm_fpga_fanout_i1_c0_ene1109_fanout_adaptor_double_add_25_q_3(DELAY,229)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist35_i_llvm_fpga_fanout_i1_c0_ene1109_fanout_adaptor_double_add_25_q_3_q <= '0;
        end
        else
        begin
            redist35_i_llvm_fpga_fanout_i1_c0_ene1109_fanout_adaptor_double_add_25_q_3_q <= $unsigned(redist34_i_llvm_fpga_fanout_i1_c0_ene1109_fanout_adaptor_double_add_25_q_2_q);
        end
    end

    // i_llvm_fpga_pop_f64_pop9_double_add_220(BLACKBOX,93)@16
    // out out_feedback_stall_out_9@20000000
    double_add_2_i_llvm_fpga_pop_f64_pop9_0 thei_llvm_fpga_pop_f64_pop9_double_add_220 (
        .in_data_in(c_double_undef118_q),
        .in_dir(redist35_i_llvm_fpga_fanout_i1_c0_ene1109_fanout_adaptor_double_add_25_q_3_q),
        .in_feedback_in_9(i_llvm_fpga_push_f64_push9_double_add_221_out_feedback_out_9),
        .in_feedback_valid_in_9(i_llvm_fpga_push_f64_push9_double_add_221_out_feedback_valid_out_9),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg10_q),
        .out_data_out(i_llvm_fpga_pop_f64_pop9_double_add_220_out_data_out),
        .out_feedback_stall_out_9(i_llvm_fpga_pop_f64_pop9_double_add_220_out_feedback_stall_out_9),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist43_i_llvm_fpga_fanout_i1_c0_ene1109_fanout_adaptor114_double_add_23_q_5(DELAY,237)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist43_i_llvm_fpga_fanout_i1_c0_ene1109_fanout_adaptor114_double_add_23_q_5_q <= '0;
        end
        else
        begin
            redist43_i_llvm_fpga_fanout_i1_c0_ene1109_fanout_adaptor114_double_add_23_q_5_q <= $unsigned(redist42_i_llvm_fpga_fanout_i1_c0_ene1109_fanout_adaptor114_double_add_23_q_4_q);
        end
    end

    // i_replace_phi39_double_add_222(MUX,113)@16
    assign i_replace_phi39_double_add_222_s = redist43_i_llvm_fpga_fanout_i1_c0_ene1109_fanout_adaptor114_double_add_23_q_5_q;
    always @(i_replace_phi39_double_add_222_s or i_llvm_fpga_pop_f64_pop9_double_add_220_out_data_out or i_llvm_fpga_ffwd_dest_f64_spec_select15040_double_add_219_out_dest_data_out_10_0)
    begin
        unique case (i_replace_phi39_double_add_222_s)
            1'b0 : i_replace_phi39_double_add_222_q = i_llvm_fpga_pop_f64_pop9_double_add_220_out_data_out;
            1'b1 : i_replace_phi39_double_add_222_q = i_llvm_fpga_ffwd_dest_f64_spec_select15040_double_add_219_out_dest_data_out_10_0;
            default : i_replace_phi39_double_add_222_q = 64'b0;
        endcase
    end

    // redist2_sync_together155_aunroll_x_in_c0_eni4_2_tpl_1(DELAY,196)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_sync_together155_aunroll_x_in_c0_eni4_2_tpl_1_q <= '0;
        end
        else
        begin
            redist2_sync_together155_aunroll_x_in_c0_eni4_2_tpl_1_q <= $unsigned(in_c0_eni4_2_tpl);
        end
    end

    // redist3_sync_together155_aunroll_x_in_c0_eni4_2_tpl_7(DELAY,197)
    dspba_delay_ver #( .width(1), .depth(6), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist3_sync_together155_aunroll_x_in_c0_eni4_2_tpl_7 ( .xin(redist2_sync_together155_aunroll_x_in_c0_eni4_2_tpl_1_q), .xout(redist3_sync_together155_aunroll_x_in_c0_eni4_2_tpl_7_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_llvm_fpga_fanout_i1_c0_ene2_fanout_adaptor116_double_add_26(REG,56)@15 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_llvm_fpga_fanout_i1_c0_ene2_fanout_adaptor116_double_add_26_q <= $unsigned(1'b0);
        end
        else
        begin
            i_llvm_fpga_fanout_i1_c0_ene2_fanout_adaptor116_double_add_26_q <= redist3_sync_together155_aunroll_x_in_c0_eni4_2_tpl_7_q;
        end
    end

    // i_llvm_fpga_push_f64_push10_double_add_225(BLACKBOX,94)@16
    // out out_feedback_out_10@20000000
    // out out_feedback_valid_out_10@20000000
    double_add_2_i_llvm_fpga_push_f64_push10_0 thei_llvm_fpga_push_f64_push10_double_add_225 (
        .in_c0_ene2_fanout_adaptor116(i_llvm_fpga_fanout_i1_c0_ene2_fanout_adaptor116_double_add_26_q),
        .in_data_in(i_replace_phi39_double_add_222_q),
        .in_feedback_stall_in_10(i_llvm_fpga_pop_f64_pop10_double_add_224_out_feedback_stall_out_10),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg14_q),
        .out_data_out(),
        .out_feedback_out_10(i_llvm_fpga_push_f64_push10_double_add_225_out_feedback_out_10),
        .out_feedback_valid_out_10(i_llvm_fpga_push_f64_push10_double_add_225_out_feedback_valid_out_10),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist34_i_llvm_fpga_fanout_i1_c0_ene1109_fanout_adaptor_double_add_25_q_2(DELAY,228)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist34_i_llvm_fpga_fanout_i1_c0_ene1109_fanout_adaptor_double_add_25_q_2_q <= '0;
        end
        else
        begin
            redist34_i_llvm_fpga_fanout_i1_c0_ene1109_fanout_adaptor_double_add_25_q_2_q <= $unsigned(redist33_i_llvm_fpga_fanout_i1_c0_ene1109_fanout_adaptor_double_add_25_q_1_q);
        end
    end

    // i_llvm_fpga_pop_f64_pop10_double_add_224(BLACKBOX,82)@15
    // out out_feedback_stall_out_10@20000000
    double_add_2_i_llvm_fpga_pop_f64_pop10_0 thei_llvm_fpga_pop_f64_pop10_double_add_224 (
        .in_data_in(c_double_undef118_q),
        .in_dir(redist34_i_llvm_fpga_fanout_i1_c0_ene1109_fanout_adaptor_double_add_25_q_2_q),
        .in_feedback_in_10(i_llvm_fpga_push_f64_push10_double_add_225_out_feedback_out_10),
        .in_feedback_valid_in_10(i_llvm_fpga_push_f64_push10_double_add_225_out_feedback_valid_out_10),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg13_q),
        .out_data_out(i_llvm_fpga_pop_f64_pop10_double_add_224_out_data_out),
        .out_feedback_stall_out_10(i_llvm_fpga_pop_f64_pop10_double_add_224_out_feedback_stall_out_10),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist42_i_llvm_fpga_fanout_i1_c0_ene1109_fanout_adaptor114_double_add_23_q_4(DELAY,236)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist42_i_llvm_fpga_fanout_i1_c0_ene1109_fanout_adaptor114_double_add_23_q_4_q <= '0;
        end
        else
        begin
            redist42_i_llvm_fpga_fanout_i1_c0_ene1109_fanout_adaptor114_double_add_23_q_4_q <= $unsigned(redist41_i_llvm_fpga_fanout_i1_c0_ene1109_fanout_adaptor114_double_add_23_q_3_q);
        end
    end

    // i_replace_phi36_double_add_226(MUX,112)@15
    assign i_replace_phi36_double_add_226_s = redist42_i_llvm_fpga_fanout_i1_c0_ene1109_fanout_adaptor114_double_add_23_q_4_q;
    always @(i_replace_phi36_double_add_226_s or i_llvm_fpga_pop_f64_pop10_double_add_224_out_data_out or i_llvm_fpga_ffwd_dest_f64_spec_select14937_double_add_223_out_dest_data_out_9_0)
    begin
        unique case (i_replace_phi36_double_add_226_s)
            1'b0 : i_replace_phi36_double_add_226_q = i_llvm_fpga_pop_f64_pop10_double_add_224_out_data_out;
            1'b1 : i_replace_phi36_double_add_226_q = i_llvm_fpga_ffwd_dest_f64_spec_select14937_double_add_223_out_dest_data_out_9_0;
            default : i_replace_phi36_double_add_226_q = 64'b0;
        endcase
    end

    // redist29_i_llvm_fpga_fanout_i1_c0_ene2_fanout_adaptor_double_add_27_q_5(DELAY,223)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist29_i_llvm_fpga_fanout_i1_c0_ene2_fanout_adaptor_double_add_27_q_5_q <= '0;
        end
        else
        begin
            redist29_i_llvm_fpga_fanout_i1_c0_ene2_fanout_adaptor_double_add_27_q_5_q <= $unsigned(redist28_i_llvm_fpga_fanout_i1_c0_ene2_fanout_adaptor_double_add_27_q_4_q);
        end
    end

    // i_llvm_fpga_push_f64_push11_double_add_229(BLACKBOX,95)@15
    // out out_feedback_out_11@20000000
    // out out_feedback_valid_out_11@20000000
    double_add_2_i_llvm_fpga_push_f64_push11_0 thei_llvm_fpga_push_f64_push11_double_add_229 (
        .in_c0_ene2_fanout_adaptor(redist29_i_llvm_fpga_fanout_i1_c0_ene2_fanout_adaptor_double_add_27_q_5_q),
        .in_data_in(i_replace_phi36_double_add_226_q),
        .in_feedback_stall_in_11(i_llvm_fpga_pop_f64_pop11_double_add_228_out_feedback_stall_out_11),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg17_q),
        .out_data_out(),
        .out_feedback_out_11(i_llvm_fpga_push_f64_push11_double_add_229_out_feedback_out_11),
        .out_feedback_valid_out_11(i_llvm_fpga_push_f64_push11_double_add_229_out_feedback_valid_out_11),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist33_i_llvm_fpga_fanout_i1_c0_ene1109_fanout_adaptor_double_add_25_q_1(DELAY,227)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist33_i_llvm_fpga_fanout_i1_c0_ene1109_fanout_adaptor_double_add_25_q_1_q <= '0;
        end
        else
        begin
            redist33_i_llvm_fpga_fanout_i1_c0_ene1109_fanout_adaptor_double_add_25_q_1_q <= $unsigned(i_llvm_fpga_fanout_i1_c0_ene1109_fanout_adaptor_double_add_25_q);
        end
    end

    // i_llvm_fpga_pop_f64_pop11_double_add_228(BLACKBOX,83)@14
    // out out_feedback_stall_out_11@20000000
    double_add_2_i_llvm_fpga_pop_f64_pop11_0 thei_llvm_fpga_pop_f64_pop11_double_add_228 (
        .in_data_in(c_double_undef118_q),
        .in_dir(redist33_i_llvm_fpga_fanout_i1_c0_ene1109_fanout_adaptor_double_add_25_q_1_q),
        .in_feedback_in_11(i_llvm_fpga_push_f64_push11_double_add_229_out_feedback_out_11),
        .in_feedback_valid_in_11(i_llvm_fpga_push_f64_push11_double_add_229_out_feedback_valid_out_11),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg16_q),
        .out_data_out(i_llvm_fpga_pop_f64_pop11_double_add_228_out_data_out),
        .out_feedback_stall_out_11(i_llvm_fpga_pop_f64_pop11_double_add_228_out_feedback_stall_out_11),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist41_i_llvm_fpga_fanout_i1_c0_ene1109_fanout_adaptor114_double_add_23_q_3(DELAY,235)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist41_i_llvm_fpga_fanout_i1_c0_ene1109_fanout_adaptor114_double_add_23_q_3_q <= '0;
        end
        else
        begin
            redist41_i_llvm_fpga_fanout_i1_c0_ene1109_fanout_adaptor114_double_add_23_q_3_q <= $unsigned(redist40_i_llvm_fpga_fanout_i1_c0_ene1109_fanout_adaptor114_double_add_23_q_2_q);
        end
    end

    // i_replace_phi33_double_add_230(MUX,111)@14
    assign i_replace_phi33_double_add_230_s = redist41_i_llvm_fpga_fanout_i1_c0_ene1109_fanout_adaptor114_double_add_23_q_3_q;
    always @(i_replace_phi33_double_add_230_s or i_llvm_fpga_pop_f64_pop11_double_add_228_out_data_out or i_llvm_fpga_ffwd_dest_f64_spec_select14834_double_add_227_out_dest_data_out_8_0)
    begin
        unique case (i_replace_phi33_double_add_230_s)
            1'b0 : i_replace_phi33_double_add_230_q = i_llvm_fpga_pop_f64_pop11_double_add_228_out_data_out;
            1'b1 : i_replace_phi33_double_add_230_q = i_llvm_fpga_ffwd_dest_f64_spec_select14834_double_add_227_out_dest_data_out_8_0;
            default : i_replace_phi33_double_add_230_q = 64'b0;
        endcase
    end

    // redist28_i_llvm_fpga_fanout_i1_c0_ene2_fanout_adaptor_double_add_27_q_4(DELAY,222)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist28_i_llvm_fpga_fanout_i1_c0_ene2_fanout_adaptor_double_add_27_q_4_q <= '0;
        end
        else
        begin
            redist28_i_llvm_fpga_fanout_i1_c0_ene2_fanout_adaptor_double_add_27_q_4_q <= $unsigned(redist27_i_llvm_fpga_fanout_i1_c0_ene2_fanout_adaptor_double_add_27_q_3_q);
        end
    end

    // i_llvm_fpga_push_f64_push12_double_add_233(BLACKBOX,96)@14
    // out out_feedback_out_12@20000000
    // out out_feedback_valid_out_12@20000000
    double_add_2_i_llvm_fpga_push_f64_push12_0 thei_llvm_fpga_push_f64_push12_double_add_233 (
        .in_c0_ene2_fanout_adaptor(redist28_i_llvm_fpga_fanout_i1_c0_ene2_fanout_adaptor_double_add_27_q_4_q),
        .in_data_in(i_replace_phi33_double_add_230_q),
        .in_feedback_stall_in_12(i_llvm_fpga_pop_f64_pop12_double_add_232_out_feedback_stall_out_12),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg20_q),
        .out_data_out(),
        .out_feedback_out_12(i_llvm_fpga_push_f64_push12_double_add_233_out_feedback_out_12),
        .out_feedback_valid_out_12(i_llvm_fpga_push_f64_push12_double_add_233_out_feedback_valid_out_12),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist0_sync_together155_aunroll_x_in_c0_eni4_1_tpl_2(DELAY,194)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_sync_together155_aunroll_x_in_c0_eni4_1_tpl_2_delay_0 <= '0;
            redist0_sync_together155_aunroll_x_in_c0_eni4_1_tpl_2_q <= '0;
        end
        else
        begin
            redist0_sync_together155_aunroll_x_in_c0_eni4_1_tpl_2_delay_0 <= $unsigned(in_c0_eni4_1_tpl);
            redist0_sync_together155_aunroll_x_in_c0_eni4_1_tpl_2_q <= redist0_sync_together155_aunroll_x_in_c0_eni4_1_tpl_2_delay_0;
        end
    end

    // redist1_sync_together155_aunroll_x_in_c0_eni4_1_tpl_4(DELAY,195)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together155_aunroll_x_in_c0_eni4_1_tpl_4_delay_0 <= '0;
            redist1_sync_together155_aunroll_x_in_c0_eni4_1_tpl_4_q <= '0;
        end
        else
        begin
            redist1_sync_together155_aunroll_x_in_c0_eni4_1_tpl_4_delay_0 <= $unsigned(redist0_sync_together155_aunroll_x_in_c0_eni4_1_tpl_2_q);
            redist1_sync_together155_aunroll_x_in_c0_eni4_1_tpl_4_q <= redist1_sync_together155_aunroll_x_in_c0_eni4_1_tpl_4_delay_0;
        end
    end

    // i_llvm_fpga_fanout_i1_c0_ene1109_fanout_adaptor_double_add_25(REG,55)@12 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_llvm_fpga_fanout_i1_c0_ene1109_fanout_adaptor_double_add_25_q <= $unsigned(1'b0);
        end
        else
        begin
            i_llvm_fpga_fanout_i1_c0_ene1109_fanout_adaptor_double_add_25_q <= redist1_sync_together155_aunroll_x_in_c0_eni4_1_tpl_4_q;
        end
    end

    // i_llvm_fpga_pop_f64_pop12_double_add_232(BLACKBOX,84)@13
    // out out_feedback_stall_out_12@20000000
    double_add_2_i_llvm_fpga_pop_f64_pop12_0 thei_llvm_fpga_pop_f64_pop12_double_add_232 (
        .in_data_in(c_double_undef118_q),
        .in_dir(i_llvm_fpga_fanout_i1_c0_ene1109_fanout_adaptor_double_add_25_q),
        .in_feedback_in_12(i_llvm_fpga_push_f64_push12_double_add_233_out_feedback_out_12),
        .in_feedback_valid_in_12(i_llvm_fpga_push_f64_push12_double_add_233_out_feedback_valid_out_12),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg19_q),
        .out_data_out(i_llvm_fpga_pop_f64_pop12_double_add_232_out_data_out),
        .out_feedback_stall_out_12(i_llvm_fpga_pop_f64_pop12_double_add_232_out_feedback_stall_out_12),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist40_i_llvm_fpga_fanout_i1_c0_ene1109_fanout_adaptor114_double_add_23_q_2(DELAY,234)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist40_i_llvm_fpga_fanout_i1_c0_ene1109_fanout_adaptor114_double_add_23_q_2_q <= '0;
        end
        else
        begin
            redist40_i_llvm_fpga_fanout_i1_c0_ene1109_fanout_adaptor114_double_add_23_q_2_q <= $unsigned(redist39_i_llvm_fpga_fanout_i1_c0_ene1109_fanout_adaptor114_double_add_23_q_1_q);
        end
    end

    // i_replace_phi30_double_add_234(MUX,110)@13
    assign i_replace_phi30_double_add_234_s = redist40_i_llvm_fpga_fanout_i1_c0_ene1109_fanout_adaptor114_double_add_23_q_2_q;
    always @(i_replace_phi30_double_add_234_s or i_llvm_fpga_pop_f64_pop12_double_add_232_out_data_out or i_llvm_fpga_ffwd_dest_f64_spec_select14731_double_add_231_out_dest_data_out_7_0)
    begin
        unique case (i_replace_phi30_double_add_234_s)
            1'b0 : i_replace_phi30_double_add_234_q = i_llvm_fpga_pop_f64_pop12_double_add_232_out_data_out;
            1'b1 : i_replace_phi30_double_add_234_q = i_llvm_fpga_ffwd_dest_f64_spec_select14731_double_add_231_out_dest_data_out_7_0;
            default : i_replace_phi30_double_add_234_q = 64'b0;
        endcase
    end

    // redist27_i_llvm_fpga_fanout_i1_c0_ene2_fanout_adaptor_double_add_27_q_3(DELAY,221)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist27_i_llvm_fpga_fanout_i1_c0_ene2_fanout_adaptor_double_add_27_q_3_q <= '0;
        end
        else
        begin
            redist27_i_llvm_fpga_fanout_i1_c0_ene2_fanout_adaptor_double_add_27_q_3_q <= $unsigned(redist26_i_llvm_fpga_fanout_i1_c0_ene2_fanout_adaptor_double_add_27_q_2_q);
        end
    end

    // i_llvm_fpga_push_f64_push13_double_add_237(BLACKBOX,97)@13
    // out out_feedback_out_13@20000000
    // out out_feedback_valid_out_13@20000000
    double_add_2_i_llvm_fpga_push_f64_push13_0 thei_llvm_fpga_push_f64_push13_double_add_237 (
        .in_c0_ene2_fanout_adaptor(redist27_i_llvm_fpga_fanout_i1_c0_ene2_fanout_adaptor_double_add_27_q_3_q),
        .in_data_in(i_replace_phi30_double_add_234_q),
        .in_feedback_stall_in_13(i_llvm_fpga_pop_f64_pop13_double_add_236_out_feedback_stall_out_13),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg23_q),
        .out_data_out(),
        .out_feedback_out_13(i_llvm_fpga_push_f64_push13_double_add_237_out_feedback_out_13),
        .out_feedback_valid_out_13(i_llvm_fpga_push_f64_push13_double_add_237_out_feedback_valid_out_13),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist46_i_llvm_fpga_fanout_i1_c0_ene1109_fanout_adaptor113_double_add_24_q_3(DELAY,240)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist46_i_llvm_fpga_fanout_i1_c0_ene1109_fanout_adaptor113_double_add_24_q_3_q <= '0;
        end
        else
        begin
            redist46_i_llvm_fpga_fanout_i1_c0_ene1109_fanout_adaptor113_double_add_24_q_3_q <= $unsigned(redist45_i_llvm_fpga_fanout_i1_c0_ene1109_fanout_adaptor113_double_add_24_q_2_q);
        end
    end

    // i_llvm_fpga_pop_f64_pop13_double_add_236(BLACKBOX,85)@12
    // out out_feedback_stall_out_13@20000000
    double_add_2_i_llvm_fpga_pop_f64_pop13_0 thei_llvm_fpga_pop_f64_pop13_double_add_236 (
        .in_data_in(c_double_undef118_q),
        .in_dir(redist46_i_llvm_fpga_fanout_i1_c0_ene1109_fanout_adaptor113_double_add_24_q_3_q),
        .in_feedback_in_13(i_llvm_fpga_push_f64_push13_double_add_237_out_feedback_out_13),
        .in_feedback_valid_in_13(i_llvm_fpga_push_f64_push13_double_add_237_out_feedback_valid_out_13),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg22_q),
        .out_data_out(i_llvm_fpga_pop_f64_pop13_double_add_236_out_data_out),
        .out_feedback_stall_out_13(i_llvm_fpga_pop_f64_pop13_double_add_236_out_feedback_stall_out_13),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist39_i_llvm_fpga_fanout_i1_c0_ene1109_fanout_adaptor114_double_add_23_q_1(DELAY,233)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist39_i_llvm_fpga_fanout_i1_c0_ene1109_fanout_adaptor114_double_add_23_q_1_q <= '0;
        end
        else
        begin
            redist39_i_llvm_fpga_fanout_i1_c0_ene1109_fanout_adaptor114_double_add_23_q_1_q <= $unsigned(i_llvm_fpga_fanout_i1_c0_ene1109_fanout_adaptor114_double_add_23_q);
        end
    end

    // i_replace_phi27_double_add_238(MUX,109)@12
    assign i_replace_phi27_double_add_238_s = redist39_i_llvm_fpga_fanout_i1_c0_ene1109_fanout_adaptor114_double_add_23_q_1_q;
    always @(i_replace_phi27_double_add_238_s or i_llvm_fpga_pop_f64_pop13_double_add_236_out_data_out or i_llvm_fpga_ffwd_dest_f64_spec_select14628_double_add_235_out_dest_data_out_6_0)
    begin
        unique case (i_replace_phi27_double_add_238_s)
            1'b0 : i_replace_phi27_double_add_238_q = i_llvm_fpga_pop_f64_pop13_double_add_236_out_data_out;
            1'b1 : i_replace_phi27_double_add_238_q = i_llvm_fpga_ffwd_dest_f64_spec_select14628_double_add_235_out_dest_data_out_6_0;
            default : i_replace_phi27_double_add_238_q = 64'b0;
        endcase
    end

    // redist26_i_llvm_fpga_fanout_i1_c0_ene2_fanout_adaptor_double_add_27_q_2(DELAY,220)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist26_i_llvm_fpga_fanout_i1_c0_ene2_fanout_adaptor_double_add_27_q_2_q <= '0;
        end
        else
        begin
            redist26_i_llvm_fpga_fanout_i1_c0_ene2_fanout_adaptor_double_add_27_q_2_q <= $unsigned(redist25_i_llvm_fpga_fanout_i1_c0_ene2_fanout_adaptor_double_add_27_q_1_q);
        end
    end

    // i_llvm_fpga_push_f64_push14_double_add_241(BLACKBOX,98)@12
    // out out_feedback_out_14@20000000
    // out out_feedback_valid_out_14@20000000
    double_add_2_i_llvm_fpga_push_f64_push14_0 thei_llvm_fpga_push_f64_push14_double_add_241 (
        .in_c0_ene2_fanout_adaptor(redist26_i_llvm_fpga_fanout_i1_c0_ene2_fanout_adaptor_double_add_27_q_2_q),
        .in_data_in(i_replace_phi27_double_add_238_q),
        .in_feedback_stall_in_14(i_llvm_fpga_pop_f64_pop14_double_add_240_out_feedback_stall_out_14),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg26_q),
        .out_data_out(),
        .out_feedback_out_14(i_llvm_fpga_push_f64_push14_double_add_241_out_feedback_out_14),
        .out_feedback_valid_out_14(i_llvm_fpga_push_f64_push14_double_add_241_out_feedback_valid_out_14),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist45_i_llvm_fpga_fanout_i1_c0_ene1109_fanout_adaptor113_double_add_24_q_2(DELAY,239)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist45_i_llvm_fpga_fanout_i1_c0_ene1109_fanout_adaptor113_double_add_24_q_2_q <= '0;
        end
        else
        begin
            redist45_i_llvm_fpga_fanout_i1_c0_ene1109_fanout_adaptor113_double_add_24_q_2_q <= $unsigned(redist44_i_llvm_fpga_fanout_i1_c0_ene1109_fanout_adaptor113_double_add_24_q_1_q);
        end
    end

    // i_llvm_fpga_pop_f64_pop14_double_add_240(BLACKBOX,86)@11
    // out out_feedback_stall_out_14@20000000
    double_add_2_i_llvm_fpga_pop_f64_pop14_0 thei_llvm_fpga_pop_f64_pop14_double_add_240 (
        .in_data_in(c_double_undef118_q),
        .in_dir(redist45_i_llvm_fpga_fanout_i1_c0_ene1109_fanout_adaptor113_double_add_24_q_2_q),
        .in_feedback_in_14(i_llvm_fpga_push_f64_push14_double_add_241_out_feedback_out_14),
        .in_feedback_valid_in_14(i_llvm_fpga_push_f64_push14_double_add_241_out_feedback_valid_out_14),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg25_q),
        .out_data_out(i_llvm_fpga_pop_f64_pop14_double_add_240_out_data_out),
        .out_feedback_stall_out_14(i_llvm_fpga_pop_f64_pop14_double_add_240_out_feedback_stall_out_14),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_fanout_i1_c0_ene1109_fanout_adaptor114_double_add_23(REG,53)@10 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_llvm_fpga_fanout_i1_c0_ene1109_fanout_adaptor114_double_add_23_q <= $unsigned(1'b0);
        end
        else
        begin
            i_llvm_fpga_fanout_i1_c0_ene1109_fanout_adaptor114_double_add_23_q <= redist0_sync_together155_aunroll_x_in_c0_eni4_1_tpl_2_q;
        end
    end

    // i_replace_phi24_double_add_242(MUX,108)@11
    assign i_replace_phi24_double_add_242_s = i_llvm_fpga_fanout_i1_c0_ene1109_fanout_adaptor114_double_add_23_q;
    always @(i_replace_phi24_double_add_242_s or i_llvm_fpga_pop_f64_pop14_double_add_240_out_data_out or i_llvm_fpga_ffwd_dest_f64_spec_select14525_double_add_239_out_dest_data_out_5_0)
    begin
        unique case (i_replace_phi24_double_add_242_s)
            1'b0 : i_replace_phi24_double_add_242_q = i_llvm_fpga_pop_f64_pop14_double_add_240_out_data_out;
            1'b1 : i_replace_phi24_double_add_242_q = i_llvm_fpga_ffwd_dest_f64_spec_select14525_double_add_239_out_dest_data_out_5_0;
            default : i_replace_phi24_double_add_242_q = 64'b0;
        endcase
    end

    // redist25_i_llvm_fpga_fanout_i1_c0_ene2_fanout_adaptor_double_add_27_q_1(DELAY,219)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist25_i_llvm_fpga_fanout_i1_c0_ene2_fanout_adaptor_double_add_27_q_1_q <= '0;
        end
        else
        begin
            redist25_i_llvm_fpga_fanout_i1_c0_ene2_fanout_adaptor_double_add_27_q_1_q <= $unsigned(i_llvm_fpga_fanout_i1_c0_ene2_fanout_adaptor_double_add_27_q);
        end
    end

    // i_llvm_fpga_push_f64_push15_double_add_245(BLACKBOX,99)@11
    // out out_feedback_out_15@20000000
    // out out_feedback_valid_out_15@20000000
    double_add_2_i_llvm_fpga_push_f64_push15_0 thei_llvm_fpga_push_f64_push15_double_add_245 (
        .in_c0_ene2_fanout_adaptor(redist25_i_llvm_fpga_fanout_i1_c0_ene2_fanout_adaptor_double_add_27_q_1_q),
        .in_data_in(i_replace_phi24_double_add_242_q),
        .in_feedback_stall_in_15(i_llvm_fpga_pop_f64_pop15_double_add_244_out_feedback_stall_out_15),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg29_q),
        .out_data_out(),
        .out_feedback_out_15(i_llvm_fpga_push_f64_push15_double_add_245_out_feedback_out_15),
        .out_feedback_valid_out_15(i_llvm_fpga_push_f64_push15_double_add_245_out_feedback_valid_out_15),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_f64_pop15_double_add_244(BLACKBOX,87)@10
    // out out_feedback_stall_out_15@20000000
    double_add_2_i_llvm_fpga_pop_f64_pop15_0 thei_llvm_fpga_pop_f64_pop15_double_add_244 (
        .in_data_in(c_double_undef118_q),
        .in_dir(redist44_i_llvm_fpga_fanout_i1_c0_ene1109_fanout_adaptor113_double_add_24_q_1_q),
        .in_feedback_in_15(i_llvm_fpga_push_f64_push15_double_add_245_out_feedback_out_15),
        .in_feedback_valid_in_15(i_llvm_fpga_push_f64_push15_double_add_245_out_feedback_valid_out_15),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg28_q),
        .out_data_out(i_llvm_fpga_pop_f64_pop15_double_add_244_out_data_out),
        .out_feedback_stall_out_15(i_llvm_fpga_pop_f64_pop15_double_add_244_out_feedback_stall_out_15),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_replace_phi21_double_add_246(MUX,107)@10
    assign i_replace_phi21_double_add_246_s = redist38_i_llvm_fpga_fanout_i1_c0_ene1109_fanout_adaptor115_double_add_22_q_1_q;
    always @(i_replace_phi21_double_add_246_s or i_llvm_fpga_pop_f64_pop15_double_add_244_out_data_out or i_llvm_fpga_ffwd_dest_f64_spec_select14422_double_add_243_out_dest_data_out_4_0)
    begin
        unique case (i_replace_phi21_double_add_246_s)
            1'b0 : i_replace_phi21_double_add_246_q = i_llvm_fpga_pop_f64_pop15_double_add_244_out_data_out;
            1'b1 : i_replace_phi21_double_add_246_q = i_llvm_fpga_ffwd_dest_f64_spec_select14422_double_add_243_out_dest_data_out_4_0;
            default : i_replace_phi21_double_add_246_q = 64'b0;
        endcase
    end

    // i_llvm_fpga_push_f64_push16_double_add_249(BLACKBOX,100)@10
    // out out_feedback_out_16@20000000
    // out out_feedback_valid_out_16@20000000
    double_add_2_i_llvm_fpga_push_f64_push16_0 thei_llvm_fpga_push_f64_push16_double_add_249 (
        .in_c0_ene2_fanout_adaptor(i_llvm_fpga_fanout_i1_c0_ene2_fanout_adaptor_double_add_27_q),
        .in_data_in(i_replace_phi21_double_add_246_q),
        .in_feedback_stall_in_16(i_llvm_fpga_pop_f64_pop16_double_add_248_out_feedback_stall_out_16),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg32_q),
        .out_data_out(),
        .out_feedback_out_16(i_llvm_fpga_push_f64_push16_double_add_249_out_feedback_out_16),
        .out_feedback_valid_out_16(i_llvm_fpga_push_f64_push16_double_add_249_out_feedback_valid_out_16),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist44_i_llvm_fpga_fanout_i1_c0_ene1109_fanout_adaptor113_double_add_24_q_1(DELAY,238)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist44_i_llvm_fpga_fanout_i1_c0_ene1109_fanout_adaptor113_double_add_24_q_1_q <= '0;
        end
        else
        begin
            redist44_i_llvm_fpga_fanout_i1_c0_ene1109_fanout_adaptor113_double_add_24_q_1_q <= $unsigned(i_llvm_fpga_fanout_i1_c0_ene1109_fanout_adaptor113_double_add_24_q);
        end
    end

    // i_llvm_fpga_pop_f64_pop16_double_add_248(BLACKBOX,88)@10
    // out out_feedback_stall_out_16@20000000
    double_add_2_i_llvm_fpga_pop_f64_pop16_0 thei_llvm_fpga_pop_f64_pop16_double_add_248 (
        .in_data_in(c_double_undef118_q),
        .in_dir(redist44_i_llvm_fpga_fanout_i1_c0_ene1109_fanout_adaptor113_double_add_24_q_1_q),
        .in_feedback_in_16(i_llvm_fpga_push_f64_push16_double_add_249_out_feedback_out_16),
        .in_feedback_valid_in_16(i_llvm_fpga_push_f64_push16_double_add_249_out_feedback_valid_out_16),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg31_q),
        .out_data_out(i_llvm_fpga_pop_f64_pop16_double_add_248_out_data_out),
        .out_feedback_stall_out_16(i_llvm_fpga_pop_f64_pop16_double_add_248_out_feedback_stall_out_16),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist38_i_llvm_fpga_fanout_i1_c0_ene1109_fanout_adaptor115_double_add_22_q_1(DELAY,232)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist38_i_llvm_fpga_fanout_i1_c0_ene1109_fanout_adaptor115_double_add_22_q_1_q <= '0;
        end
        else
        begin
            redist38_i_llvm_fpga_fanout_i1_c0_ene1109_fanout_adaptor115_double_add_22_q_1_q <= $unsigned(i_llvm_fpga_fanout_i1_c0_ene1109_fanout_adaptor115_double_add_22_q);
        end
    end

    // i_replace_phi19_double_add_250(MUX,106)@10
    assign i_replace_phi19_double_add_250_s = redist38_i_llvm_fpga_fanout_i1_c0_ene1109_fanout_adaptor115_double_add_22_q_1_q;
    always @(i_replace_phi19_double_add_250_s or i_llvm_fpga_pop_f64_pop16_double_add_248_out_data_out or i_llvm_fpga_ffwd_dest_f64_unnamed_double_add_218_double_add_247_out_dest_data_out_3_0)
    begin
        unique case (i_replace_phi19_double_add_250_s)
            1'b0 : i_replace_phi19_double_add_250_q = i_llvm_fpga_pop_f64_pop16_double_add_248_out_data_out;
            1'b1 : i_replace_phi19_double_add_250_q = i_llvm_fpga_ffwd_dest_f64_unnamed_double_add_218_double_add_247_out_dest_data_out_3_0;
            default : i_replace_phi19_double_add_250_q = 64'b0;
        endcase
    end

    // i_llvm_fpga_fanout_i1_c0_ene2_fanout_adaptor_double_add_27(REG,57)@9 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_llvm_fpga_fanout_i1_c0_ene2_fanout_adaptor_double_add_27_q <= $unsigned(1'b0);
        end
        else
        begin
            i_llvm_fpga_fanout_i1_c0_ene2_fanout_adaptor_double_add_27_q <= redist2_sync_together155_aunroll_x_in_c0_eni4_2_tpl_1_q;
        end
    end

    // i_llvm_fpga_push_f64_push17_double_add_253(BLACKBOX,101)@10
    // out out_feedback_out_17@20000000
    // out out_feedback_valid_out_17@20000000
    double_add_2_i_llvm_fpga_push_f64_push17_0 thei_llvm_fpga_push_f64_push17_double_add_253 (
        .in_c0_ene2_fanout_adaptor(i_llvm_fpga_fanout_i1_c0_ene2_fanout_adaptor_double_add_27_q),
        .in_data_in(i_replace_phi19_double_add_250_q),
        .in_feedback_stall_in_17(i_llvm_fpga_pop_f64_pop17_double_add_252_out_feedback_stall_out_17),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg35_q),
        .out_data_out(),
        .out_feedback_out_17(i_llvm_fpga_push_f64_push17_double_add_253_out_feedback_out_17),
        .out_feedback_valid_out_17(i_llvm_fpga_push_f64_push17_double_add_253_out_feedback_valid_out_17),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_fanout_i1_c0_ene1109_fanout_adaptor113_double_add_24(REG,52)@8 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_llvm_fpga_fanout_i1_c0_ene1109_fanout_adaptor113_double_add_24_q <= $unsigned(1'b0);
        end
        else
        begin
            i_llvm_fpga_fanout_i1_c0_ene1109_fanout_adaptor113_double_add_24_q <= in_c0_eni4_1_tpl;
        end
    end

    // i_llvm_fpga_pop_f64_pop17_double_add_252(BLACKBOX,89)@9
    // out out_feedback_stall_out_17@20000000
    double_add_2_i_llvm_fpga_pop_f64_pop17_0 thei_llvm_fpga_pop_f64_pop17_double_add_252 (
        .in_data_in(c_double_undef118_q),
        .in_dir(i_llvm_fpga_fanout_i1_c0_ene1109_fanout_adaptor113_double_add_24_q),
        .in_feedback_in_17(i_llvm_fpga_push_f64_push17_double_add_253_out_feedback_out_17),
        .in_feedback_valid_in_17(i_llvm_fpga_push_f64_push17_double_add_253_out_feedback_valid_out_17),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg34_q),
        .out_data_out(i_llvm_fpga_pop_f64_pop17_double_add_252_out_data_out),
        .out_feedback_stall_out_17(i_llvm_fpga_pop_f64_pop17_double_add_252_out_feedback_stall_out_17),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_fanout_i1_c0_ene1109_fanout_adaptor115_double_add_22(REG,54)@8 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_llvm_fpga_fanout_i1_c0_ene1109_fanout_adaptor115_double_add_22_q <= $unsigned(1'b0);
        end
        else
        begin
            i_llvm_fpga_fanout_i1_c0_ene1109_fanout_adaptor115_double_add_22_q <= in_c0_eni4_1_tpl;
        end
    end

    // i_replace_phi_double_add_254(MUX,117)@9
    assign i_replace_phi_double_add_254_s = i_llvm_fpga_fanout_i1_c0_ene1109_fanout_adaptor115_double_add_22_q;
    always @(i_replace_phi_double_add_254_s or i_llvm_fpga_pop_f64_pop17_double_add_252_out_data_out or i_llvm_fpga_ffwd_dest_f64_spec_select18_double_add_251_out_dest_data_out_2_0)
    begin
        unique case (i_replace_phi_double_add_254_s)
            1'b0 : i_replace_phi_double_add_254_q = i_llvm_fpga_pop_f64_pop17_double_add_252_out_data_out;
            1'b1 : i_replace_phi_double_add_254_q = i_llvm_fpga_ffwd_dest_f64_spec_select18_double_add_251_out_dest_data_out_2_0;
            default : i_replace_phi_double_add_254_q = 64'b0;
        endcase
    end

    // i_add_double_add_255(BLACKBOX,51)@9
    // out out_primWireOut@19
    double_add_2_flt_i_sfc_logic_s_c0_in_for0000cdd6oq3cd06o20cp0doz thei_add_double_add_255 (
        .in_0(i_replace_phi_double_add_254_q),
        .in_1(redist4_sync_together155_aunroll_x_in_c0_eni4_3_tpl_1_q),
        .out_primWireOut(i_add_double_add_255_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // redist32_i_llvm_fpga_fanout_i1_c0_ene2_fanout_adaptor116_double_add_26_q_3(DELAY,226)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist32_i_llvm_fpga_fanout_i1_c0_ene2_fanout_adaptor116_double_add_26_q_3_q <= '0;
        end
        else
        begin
            redist32_i_llvm_fpga_fanout_i1_c0_ene2_fanout_adaptor116_double_add_26_q_3_q <= $unsigned(redist31_i_llvm_fpga_fanout_i1_c0_ene2_fanout_adaptor116_double_add_26_q_2_q);
        end
    end

    // i_llvm_fpga_push_f64_push6_double_add_256(BLACKBOX,102)@19
    // out out_feedback_out_6@20000000
    // out out_feedback_valid_out_6@20000000
    double_add_2_i_llvm_fpga_push_f64_push6_0 thei_llvm_fpga_push_f64_push6_double_add_256 (
        .in_c0_ene2_fanout_adaptor116(redist32_i_llvm_fpga_fanout_i1_c0_ene2_fanout_adaptor116_double_add_26_q_3_q),
        .in_data_in(i_add_double_add_255_out_primWireOut),
        .in_feedback_stall_in_6(i_llvm_fpga_pop_f64_pop6_double_add_29_out_feedback_stall_out_6),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg36_q),
        .out_data_out(),
        .out_feedback_out_6(i_llvm_fpga_push_f64_push6_double_add_256_out_feedback_out_6),
        .out_feedback_valid_out_6(i_llvm_fpga_push_f64_push6_double_add_256_out_feedback_valid_out_6),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist37_i_llvm_fpga_fanout_i1_c0_ene1109_fanout_adaptor_double_add_25_q_5(DELAY,231)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist37_i_llvm_fpga_fanout_i1_c0_ene1109_fanout_adaptor_double_add_25_q_5_q <= '0;
        end
        else
        begin
            redist37_i_llvm_fpga_fanout_i1_c0_ene1109_fanout_adaptor_double_add_25_q_5_q <= $unsigned(redist36_i_llvm_fpga_fanout_i1_c0_ene1109_fanout_adaptor_double_add_25_q_4_q);
        end
    end

    // c_double_undef118(FLOATCONSTANT,2)
    assign c_double_undef118_q = $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);

    // i_llvm_fpga_pop_f64_pop6_double_add_29(BLACKBOX,90)@18
    // out out_feedback_stall_out_6@20000000
    double_add_2_i_llvm_fpga_pop_f64_pop6_0 thei_llvm_fpga_pop_f64_pop6_double_add_29 (
        .in_data_in(c_double_undef118_q),
        .in_dir(redist37_i_llvm_fpga_fanout_i1_c0_ene1109_fanout_adaptor_double_add_25_q_5_q),
        .in_feedback_in_6(i_llvm_fpga_push_f64_push6_double_add_256_out_feedback_out_6),
        .in_feedback_valid_in_6(i_llvm_fpga_push_f64_push6_double_add_256_out_feedback_valid_out_6),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(i_llvm_fpga_pop_f64_pop6_double_add_29_out_data_out),
        .out_feedback_stall_out_6(i_llvm_fpga_pop_f64_pop6_double_add_29_out_feedback_stall_out_6),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist48_i_llvm_fpga_fanout_i1_c0_ene1109_fanout_adaptor113_double_add_24_q_9(DELAY,242)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist48_i_llvm_fpga_fanout_i1_c0_ene1109_fanout_adaptor113_double_add_24_q_9_q <= '0;
        end
        else
        begin
            redist48_i_llvm_fpga_fanout_i1_c0_ene1109_fanout_adaptor113_double_add_24_q_9_q <= $unsigned(redist47_i_llvm_fpga_fanout_i1_c0_ene1109_fanout_adaptor113_double_add_24_q_8_q);
        end
    end

    // i_replace_phi48_double_add_210(MUX,116)@18
    assign i_replace_phi48_double_add_210_s = redist48_i_llvm_fpga_fanout_i1_c0_ene1109_fanout_adaptor113_double_add_24_q_9_q;
    always @(i_replace_phi48_double_add_210_s or i_llvm_fpga_pop_f64_pop6_double_add_29_out_data_out or i_llvm_fpga_ffwd_dest_f64_spec_select15349_double_add_28_out_dest_data_out_13_0)
    begin
        unique case (i_replace_phi48_double_add_210_s)
            1'b0 : i_replace_phi48_double_add_210_q = i_llvm_fpga_pop_f64_pop6_double_add_29_out_data_out;
            1'b1 : i_replace_phi48_double_add_210_q = i_llvm_fpga_ffwd_dest_f64_spec_select15349_double_add_28_out_dest_data_out_13_0;
            default : i_replace_phi48_double_add_210_q = 64'b0;
        endcase
    end

    // redist5_sync_together155_aunroll_x_in_c0_eni4_4_tpl_2(DELAY,199)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_sync_together155_aunroll_x_in_c0_eni4_4_tpl_2_delay_0 <= '0;
            redist5_sync_together155_aunroll_x_in_c0_eni4_4_tpl_2_q <= '0;
        end
        else
        begin
            redist5_sync_together155_aunroll_x_in_c0_eni4_4_tpl_2_delay_0 <= $unsigned(in_c0_eni4_4_tpl);
            redist5_sync_together155_aunroll_x_in_c0_eni4_4_tpl_2_q <= redist5_sync_together155_aunroll_x_in_c0_eni4_4_tpl_2_delay_0;
        end
    end

    // redist6_sync_together155_aunroll_x_in_c0_eni4_4_tpl_3(DELAY,200)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_sync_together155_aunroll_x_in_c0_eni4_4_tpl_3_q <= '0;
        end
        else
        begin
            redist6_sync_together155_aunroll_x_in_c0_eni4_4_tpl_3_q <= $unsigned(redist5_sync_together155_aunroll_x_in_c0_eni4_4_tpl_2_q);
        end
    end

    // redist7_sync_together155_aunroll_x_in_c0_eni4_4_tpl_4(DELAY,201)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_sync_together155_aunroll_x_in_c0_eni4_4_tpl_4_q <= '0;
        end
        else
        begin
            redist7_sync_together155_aunroll_x_in_c0_eni4_4_tpl_4_q <= $unsigned(redist6_sync_together155_aunroll_x_in_c0_eni4_4_tpl_3_q);
        end
    end

    // redist8_sync_together155_aunroll_x_in_c0_eni4_4_tpl_5(DELAY,202)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_sync_together155_aunroll_x_in_c0_eni4_4_tpl_5_q <= '0;
        end
        else
        begin
            redist8_sync_together155_aunroll_x_in_c0_eni4_4_tpl_5_q <= $unsigned(redist7_sync_together155_aunroll_x_in_c0_eni4_4_tpl_4_q);
        end
    end

    // redist9_sync_together155_aunroll_x_in_c0_eni4_4_tpl_6(DELAY,203)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_sync_together155_aunroll_x_in_c0_eni4_4_tpl_6_q <= '0;
        end
        else
        begin
            redist9_sync_together155_aunroll_x_in_c0_eni4_4_tpl_6_q <= $unsigned(redist8_sync_together155_aunroll_x_in_c0_eni4_4_tpl_5_q);
        end
    end

    // redist10_sync_together155_aunroll_x_in_c0_eni4_4_tpl_7(DELAY,204)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_sync_together155_aunroll_x_in_c0_eni4_4_tpl_7_q <= '0;
        end
        else
        begin
            redist10_sync_together155_aunroll_x_in_c0_eni4_4_tpl_7_q <= $unsigned(redist9_sync_together155_aunroll_x_in_c0_eni4_4_tpl_6_q);
        end
    end

    // redist11_sync_together155_aunroll_x_in_c0_eni4_4_tpl_8(DELAY,205)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_sync_together155_aunroll_x_in_c0_eni4_4_tpl_8_q <= '0;
        end
        else
        begin
            redist11_sync_together155_aunroll_x_in_c0_eni4_4_tpl_8_q <= $unsigned(redist10_sync_together155_aunroll_x_in_c0_eni4_4_tpl_7_q);
        end
    end

    // redist12_sync_together155_aunroll_x_in_c0_eni4_4_tpl_9(DELAY,206)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_sync_together155_aunroll_x_in_c0_eni4_4_tpl_9_q <= '0;
        end
        else
        begin
            redist12_sync_together155_aunroll_x_in_c0_eni4_4_tpl_9_q <= $unsigned(redist11_sync_together155_aunroll_x_in_c0_eni4_4_tpl_8_q);
        end
    end

    // redist13_sync_together155_aunroll_x_in_c0_eni4_4_tpl_10(DELAY,207)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_sync_together155_aunroll_x_in_c0_eni4_4_tpl_10_q <= '0;
        end
        else
        begin
            redist13_sync_together155_aunroll_x_in_c0_eni4_4_tpl_10_q <= $unsigned(redist12_sync_together155_aunroll_x_in_c0_eni4_4_tpl_9_q);
        end
    end

    // i_llvm_fpga_ffwd_source_f64_unnamed_double_add_219_double_add_257(BLACKBOX,70)@18
    // out out_intel_reserved_ffwd_14_0@20000000
    double_add_2_i_llvm_fpga_ffwd_source_f640000med_19_double_add_20 thei_llvm_fpga_ffwd_source_f64_unnamed_double_add_219_double_add_257 (
        .in_predicate_in(redist13_sync_together155_aunroll_x_in_c0_eni4_4_tpl_10_q),
        .in_src_data_in_14_0(i_replace_phi48_double_add_210_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg37_q),
        .out_intel_reserved_ffwd_14_0(i_llvm_fpga_ffwd_source_f64_unnamed_double_add_219_double_add_257_out_intel_reserved_ffwd_14_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // regfree_osync(GPOUT,130)
    assign out_intel_reserved_ffwd_14_0 = i_llvm_fpga_ffwd_source_f64_unnamed_double_add_219_double_add_257_out_intel_reserved_ffwd_14_0;

    // valid_fanout_reg38(REG,183)@16 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg38_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg38_q <= $unsigned(redist22_sync_together155_aunroll_x_in_i_valid_8_q);
        end
    end

    // i_llvm_fpga_ffwd_source_f64_unnamed_double_add_220_double_add_258(BLACKBOX,71)@17
    // out out_intel_reserved_ffwd_15_0@20000000
    double_add_2_i_llvm_fpga_ffwd_source_f640000med_20_double_add_20 thei_llvm_fpga_ffwd_source_f64_unnamed_double_add_220_double_add_258 (
        .in_predicate_in(redist12_sync_together155_aunroll_x_in_c0_eni4_4_tpl_9_q),
        .in_src_data_in_15_0(i_replace_phi45_double_add_214_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg38_q),
        .out_intel_reserved_ffwd_15_0(i_llvm_fpga_ffwd_source_f64_unnamed_double_add_220_double_add_258_out_intel_reserved_ffwd_15_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_regfree_osync_x(GPOUT,132)
    assign out_intel_reserved_ffwd_15_0 = i_llvm_fpga_ffwd_source_f64_unnamed_double_add_220_double_add_258_out_intel_reserved_ffwd_15_0;

    // valid_fanout_reg39(REG,184)@15 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg39_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg39_q <= $unsigned(redist21_sync_together155_aunroll_x_in_i_valid_7_q);
        end
    end

    // i_llvm_fpga_ffwd_source_f64_unnamed_double_add_221_double_add_259(BLACKBOX,72)@16
    // out out_intel_reserved_ffwd_16_0@20000000
    double_add_2_i_llvm_fpga_ffwd_source_f640000med_21_double_add_20 thei_llvm_fpga_ffwd_source_f64_unnamed_double_add_221_double_add_259 (
        .in_predicate_in(redist11_sync_together155_aunroll_x_in_c0_eni4_4_tpl_8_q),
        .in_src_data_in_16_0(i_replace_phi42_double_add_218_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg39_q),
        .out_intel_reserved_ffwd_16_0(i_llvm_fpga_ffwd_source_f64_unnamed_double_add_221_double_add_259_out_intel_reserved_ffwd_16_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_1_regfree_osync_x(GPOUT,133)
    assign out_intel_reserved_ffwd_16_0 = i_llvm_fpga_ffwd_source_f64_unnamed_double_add_221_double_add_259_out_intel_reserved_ffwd_16_0;

    // valid_fanout_reg40(REG,185)@15 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg40_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg40_q <= $unsigned(redist21_sync_together155_aunroll_x_in_i_valid_7_q);
        end
    end

    // i_llvm_fpga_ffwd_source_f64_unnamed_double_add_222_double_add_260(BLACKBOX,73)@16
    // out out_intel_reserved_ffwd_17_0@20000000
    double_add_2_i_llvm_fpga_ffwd_source_f640000med_22_double_add_20 thei_llvm_fpga_ffwd_source_f64_unnamed_double_add_222_double_add_260 (
        .in_predicate_in(redist11_sync_together155_aunroll_x_in_c0_eni4_4_tpl_8_q),
        .in_src_data_in_17_0(i_replace_phi39_double_add_222_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg40_q),
        .out_intel_reserved_ffwd_17_0(i_llvm_fpga_ffwd_source_f64_unnamed_double_add_222_double_add_260_out_intel_reserved_ffwd_17_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_2_regfree_osync_x(GPOUT,134)
    assign out_intel_reserved_ffwd_17_0 = i_llvm_fpga_ffwd_source_f64_unnamed_double_add_222_double_add_260_out_intel_reserved_ffwd_17_0;

    // valid_fanout_reg41(REG,186)@14 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg41_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg41_q <= $unsigned(redist20_sync_together155_aunroll_x_in_i_valid_6_q);
        end
    end

    // i_llvm_fpga_ffwd_source_f64_unnamed_double_add_223_double_add_261(BLACKBOX,74)@15
    // out out_intel_reserved_ffwd_18_0@20000000
    double_add_2_i_llvm_fpga_ffwd_source_f640000med_23_double_add_20 thei_llvm_fpga_ffwd_source_f64_unnamed_double_add_223_double_add_261 (
        .in_predicate_in(redist10_sync_together155_aunroll_x_in_c0_eni4_4_tpl_7_q),
        .in_src_data_in_18_0(i_replace_phi36_double_add_226_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg41_q),
        .out_intel_reserved_ffwd_18_0(i_llvm_fpga_ffwd_source_f64_unnamed_double_add_223_double_add_261_out_intel_reserved_ffwd_18_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_3_regfree_osync_x(GPOUT,135)
    assign out_intel_reserved_ffwd_18_0 = i_llvm_fpga_ffwd_source_f64_unnamed_double_add_223_double_add_261_out_intel_reserved_ffwd_18_0;

    // valid_fanout_reg42(REG,187)@13 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg42_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg42_q <= $unsigned(redist19_sync_together155_aunroll_x_in_i_valid_5_q);
        end
    end

    // i_llvm_fpga_ffwd_source_f64_unnamed_double_add_224_double_add_262(BLACKBOX,75)@14
    // out out_intel_reserved_ffwd_19_0@20000000
    double_add_2_i_llvm_fpga_ffwd_source_f640000med_24_double_add_20 thei_llvm_fpga_ffwd_source_f64_unnamed_double_add_224_double_add_262 (
        .in_predicate_in(redist9_sync_together155_aunroll_x_in_c0_eni4_4_tpl_6_q),
        .in_src_data_in_19_0(i_replace_phi33_double_add_230_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg42_q),
        .out_intel_reserved_ffwd_19_0(i_llvm_fpga_ffwd_source_f64_unnamed_double_add_224_double_add_262_out_intel_reserved_ffwd_19_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_4_regfree_osync_x(GPOUT,136)
    assign out_intel_reserved_ffwd_19_0 = i_llvm_fpga_ffwd_source_f64_unnamed_double_add_224_double_add_262_out_intel_reserved_ffwd_19_0;

    // valid_fanout_reg43(REG,188)@12 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg43_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg43_q <= $unsigned(redist18_sync_together155_aunroll_x_in_i_valid_4_q);
        end
    end

    // i_llvm_fpga_ffwd_source_f64_unnamed_double_add_225_double_add_263(BLACKBOX,76)@13
    // out out_intel_reserved_ffwd_20_0@20000000
    double_add_2_i_llvm_fpga_ffwd_source_f640000med_25_double_add_20 thei_llvm_fpga_ffwd_source_f64_unnamed_double_add_225_double_add_263 (
        .in_predicate_in(redist8_sync_together155_aunroll_x_in_c0_eni4_4_tpl_5_q),
        .in_src_data_in_20_0(i_replace_phi30_double_add_234_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg43_q),
        .out_intel_reserved_ffwd_20_0(i_llvm_fpga_ffwd_source_f64_unnamed_double_add_225_double_add_263_out_intel_reserved_ffwd_20_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_5_regfree_osync_x(GPOUT,137)
    assign out_intel_reserved_ffwd_20_0 = i_llvm_fpga_ffwd_source_f64_unnamed_double_add_225_double_add_263_out_intel_reserved_ffwd_20_0;

    // valid_fanout_reg44(REG,189)@11 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg44_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg44_q <= $unsigned(redist17_sync_together155_aunroll_x_in_i_valid_3_q);
        end
    end

    // i_llvm_fpga_ffwd_source_f64_unnamed_double_add_226_double_add_264(BLACKBOX,77)@12
    // out out_intel_reserved_ffwd_21_0@20000000
    double_add_2_i_llvm_fpga_ffwd_source_f640000med_26_double_add_20 thei_llvm_fpga_ffwd_source_f64_unnamed_double_add_226_double_add_264 (
        .in_predicate_in(redist7_sync_together155_aunroll_x_in_c0_eni4_4_tpl_4_q),
        .in_src_data_in_21_0(i_replace_phi27_double_add_238_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg44_q),
        .out_intel_reserved_ffwd_21_0(i_llvm_fpga_ffwd_source_f64_unnamed_double_add_226_double_add_264_out_intel_reserved_ffwd_21_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_6_regfree_osync_x(GPOUT,138)
    assign out_intel_reserved_ffwd_21_0 = i_llvm_fpga_ffwd_source_f64_unnamed_double_add_226_double_add_264_out_intel_reserved_ffwd_21_0;

    // valid_fanout_reg45(REG,190)@10 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg45_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg45_q <= $unsigned(redist16_sync_together155_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_ffwd_source_f64_unnamed_double_add_227_double_add_265(BLACKBOX,78)@11
    // out out_intel_reserved_ffwd_22_0@20000000
    double_add_2_i_llvm_fpga_ffwd_source_f640000med_27_double_add_20 thei_llvm_fpga_ffwd_source_f64_unnamed_double_add_227_double_add_265 (
        .in_predicate_in(redist6_sync_together155_aunroll_x_in_c0_eni4_4_tpl_3_q),
        .in_src_data_in_22_0(i_replace_phi24_double_add_242_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg45_q),
        .out_intel_reserved_ffwd_22_0(i_llvm_fpga_ffwd_source_f64_unnamed_double_add_227_double_add_265_out_intel_reserved_ffwd_22_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_7_regfree_osync_x(GPOUT,139)
    assign out_intel_reserved_ffwd_22_0 = i_llvm_fpga_ffwd_source_f64_unnamed_double_add_227_double_add_265_out_intel_reserved_ffwd_22_0;

    // valid_fanout_reg46(REG,191)@9 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg46_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg46_q <= $unsigned(redist15_sync_together155_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_ffwd_source_f64_unnamed_double_add_228_double_add_266(BLACKBOX,79)@10
    // out out_intel_reserved_ffwd_23_0@20000000
    double_add_2_i_llvm_fpga_ffwd_source_f640000med_28_double_add_20 thei_llvm_fpga_ffwd_source_f64_unnamed_double_add_228_double_add_266 (
        .in_predicate_in(redist5_sync_together155_aunroll_x_in_c0_eni4_4_tpl_2_q),
        .in_src_data_in_23_0(i_replace_phi21_double_add_246_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg46_q),
        .out_intel_reserved_ffwd_23_0(i_llvm_fpga_ffwd_source_f64_unnamed_double_add_228_double_add_266_out_intel_reserved_ffwd_23_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_8_regfree_osync_x(GPOUT,140)
    assign out_intel_reserved_ffwd_23_0 = i_llvm_fpga_ffwd_source_f64_unnamed_double_add_228_double_add_266_out_intel_reserved_ffwd_23_0;

    // valid_fanout_reg47(REG,192)@9 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg47_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg47_q <= $unsigned(redist15_sync_together155_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_ffwd_source_f64_unnamed_double_add_229_double_add_267(BLACKBOX,80)@10
    // out out_intel_reserved_ffwd_24_0@20000000
    double_add_2_i_llvm_fpga_ffwd_source_f640000med_29_double_add_20 thei_llvm_fpga_ffwd_source_f64_unnamed_double_add_229_double_add_267 (
        .in_predicate_in(redist5_sync_together155_aunroll_x_in_c0_eni4_4_tpl_2_q),
        .in_src_data_in_24_0(i_replace_phi19_double_add_250_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg47_q),
        .out_intel_reserved_ffwd_24_0(i_llvm_fpga_ffwd_source_f64_unnamed_double_add_229_double_add_267_out_intel_reserved_ffwd_24_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_9_regfree_osync_x(GPOUT,141)
    assign out_intel_reserved_ffwd_24_0 = i_llvm_fpga_ffwd_source_f64_unnamed_double_add_229_double_add_267_out_intel_reserved_ffwd_24_0;

    // valid_fanout_reg48(REG,193)@18 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg48_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg48_q <= $unsigned(redist24_sync_together155_aunroll_x_in_i_valid_10_q);
        end
    end

    // redist14_sync_together155_aunroll_x_in_c0_eni4_4_tpl_11(DELAY,208)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_sync_together155_aunroll_x_in_c0_eni4_4_tpl_11_q <= '0;
        end
        else
        begin
            redist14_sync_together155_aunroll_x_in_c0_eni4_4_tpl_11_q <= $unsigned(redist13_sync_together155_aunroll_x_in_c0_eni4_4_tpl_10_q);
        end
    end

    // i_llvm_fpga_ffwd_source_f64_unnamed_double_add_230_double_add_268(BLACKBOX,81)@19
    // out out_intel_reserved_ffwd_25_0@20000000
    double_add_2_i_llvm_fpga_ffwd_source_f640000med_30_double_add_20 thei_llvm_fpga_ffwd_source_f64_unnamed_double_add_230_double_add_268 (
        .in_predicate_in(redist14_sync_together155_aunroll_x_in_c0_eni4_4_tpl_11_q),
        .in_src_data_in_25_0(i_add_double_add_255_out_primWireOut),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg48_q),
        .out_intel_reserved_ffwd_25_0(i_llvm_fpga_ffwd_source_f64_unnamed_double_add_230_double_add_268_out_intel_reserved_ffwd_25_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_10_regfree_osync_x(GPOUT,142)
    assign out_intel_reserved_ffwd_25_0 = i_llvm_fpga_ffwd_source_f64_unnamed_double_add_230_double_add_268_out_intel_reserved_ffwd_25_0;

    // valid_fanout_reg0(REG,145)@18 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist24_sync_together155_aunroll_x_in_i_valid_10_q);
        end
    end

    // sync_out_aunroll_x(GPOUT,143)@19
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_double_add_214 = GND_q;
    assign out_unnamed_double_add_231_0_tpl = GND_q;

endmodule
