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

// SystemVerilog created from conv2d3x3_i_sfc_logic_s_c0_in_for_cond100000ter569155_conv2d3x30
// SystemVerilog created on Tue May 30 12:33:16 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2d3x3_i_sfc_logic_s_c0_in_for_cond100000ter569155_conv2d3x30 (
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going74_conv2d3x33_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going74_conv2d3x33_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_intel_reserved_ffwd_4_0,
    input wire [32:0] in_intel_reserved_ffwd_6_0,
    input wire [31:0] in_pad,
    input wire [31:0] in_stride,
    output wire [0:0] out_c0_exi39_0_tpl,
    output wire [31:0] out_c0_exi39_1_tpl,
    output wire [31:0] out_c0_exi39_2_tpl,
    output wire [0:0] out_c0_exi39_3_tpl,
    output wire [0:0] out_c0_exi39_4_tpl,
    output wire [31:0] out_c0_exi39_5_tpl,
    output wire [63:0] out_c0_exi39_6_tpl,
    output wire [63:0] out_c0_exi39_7_tpl,
    output wire [31:0] out_c0_exi39_8_tpl,
    output wire [0:0] out_c0_exi39_9_tpl,
    output wire [31:0] out_c0_exi39_10_tpl,
    output wire [31:0] out_c0_exi39_11_tpl,
    output wire [0:0] out_c0_exi39_12_tpl,
    output wire [0:0] out_c0_exi39_13_tpl,
    output wire [31:0] out_c0_exi39_14_tpl,
    output wire [0:0] out_c0_exi39_15_tpl,
    output wire [0:0] out_c0_exi39_16_tpl,
    output wire [31:0] out_c0_exi39_17_tpl,
    output wire [0:0] out_c0_exi39_18_tpl,
    output wire [0:0] out_c0_exi39_19_tpl,
    output wire [0:0] out_c0_exi39_20_tpl,
    output wire [63:0] out_c0_exi39_21_tpl,
    output wire [63:0] out_c0_exi39_22_tpl,
    output wire [31:0] out_c0_exi39_23_tpl,
    output wire [0:0] out_c0_exi39_24_tpl,
    output wire [31:0] out_c0_exi39_25_tpl,
    output wire [31:0] out_c0_exi39_26_tpl,
    output wire [0:0] out_c0_exi39_27_tpl,
    output wire [0:0] out_c0_exi39_28_tpl,
    output wire [31:0] out_c0_exi39_29_tpl,
    output wire [0:0] out_c0_exi39_30_tpl,
    output wire [0:0] out_c0_exi39_31_tpl,
    output wire [31:0] out_c0_exi39_32_tpl,
    output wire [0:0] out_c0_exi39_33_tpl,
    output wire [0:0] out_c0_exi39_34_tpl,
    output wire [0:0] out_c0_exi39_35_tpl,
    output wire [63:0] out_c0_exi39_36_tpl,
    output wire [63:0] out_c0_exi39_37_tpl,
    output wire [31:0] out_c0_exi39_38_tpl,
    output wire [0:0] out_c0_exi39_39_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_conv2d3x311,
    input wire [0:0] in_c0_eni20_0_tpl,
    input wire [0:0] in_c0_eni20_1_tpl,
    input wire [63:0] in_c0_eni20_2_tpl,
    input wire [63:0] in_c0_eni20_3_tpl,
    input wire [31:0] in_c0_eni20_4_tpl,
    input wire [0:0] in_c0_eni20_5_tpl,
    input wire [31:0] in_c0_eni20_6_tpl,
    input wire [31:0] in_c0_eni20_7_tpl,
    input wire [0:0] in_c0_eni20_8_tpl,
    input wire [0:0] in_c0_eni20_9_tpl,
    input wire [31:0] in_c0_eni20_10_tpl,
    input wire [0:0] in_c0_eni20_11_tpl,
    input wire [0:0] in_c0_eni20_12_tpl,
    input wire [31:0] in_c0_eni20_13_tpl,
    input wire [0:0] in_c0_eni20_14_tpl,
    input wire [0:0] in_c0_eni20_15_tpl,
    input wire [0:0] in_c0_eni20_16_tpl,
    input wire [63:0] in_c0_eni20_17_tpl,
    input wire [63:0] in_c0_eni20_18_tpl,
    input wire [31:0] in_c0_eni20_19_tpl,
    input wire [0:0] in_c0_eni20_20_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] c_i32_096_q;
    wire [31:0] c_i32_197_q;
    wire [32:0] c_i33_195_q;
    wire [32:0] c_i33_undef93_q;
    wire [0:0] i_fpga_indvars_iv94_replace_phi_conv2d3x36_s;
    reg [32:0] i_fpga_indvars_iv94_replace_phi_conv2d3x36_q;
    wire [33:0] i_fpga_indvars_iv_next95_conv2d3x316_a;
    wire [33:0] i_fpga_indvars_iv_next95_conv2d3x316_b;
    logic [33:0] i_fpga_indvars_iv_next95_conv2d3x316_o;
    wire [33:0] i_fpga_indvars_iv_next95_conv2d3x316_q;
    wire [32:0] i_inc61_conv2d3x319_a;
    wire [32:0] i_inc61_conv2d3x319_b;
    logic [32:0] i_inc61_conv2d3x319_o;
    wire [32:0] i_inc61_conv2d3x319_q;
    (* dont_merge *) reg [0:0] i_llvm_fpga_fanout_i1_c0_ene1570_fanout_adaptor_conv2d3x32_q;
    (* dont_merge *) reg [0:0] i_llvm_fpga_fanout_i1_fanout_adaptor_conv2d3x313_q;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_conv2d3x316_conv2d3x311_out_dest_data_out_4_0;
    wire [32:0] i_llvm_fpga_ffwd_dest_i33_unnamed_conv2d3x315_conv2d3x34_out_dest_data_out_6_0;
    wire [0:0] i_llvm_fpga_pipeline_keep_going74_conv2d3x33_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going74_conv2d3x33_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going74_conv2d3x33_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going74_conv2d3x33_out_pipeline_valid_out;
    wire [31:0] i_llvm_fpga_pop_f32_lm2598_pop27_conv2d3x325_out_data_out;
    wire [0:0] i_llvm_fpga_pop_f32_lm2598_pop27_conv2d3x325_out_feedback_stall_out_27;
    wire [0:0] i_llvm_fpga_pop_i1_cmp26119_pop31_conv2d3x333_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_cmp26119_pop31_conv2d3x333_out_feedback_stall_out_31;
    wire [0:0] i_llvm_fpga_pop_i1_cmp26_1134_pop34_conv2d3x339_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_cmp26_1134_pop34_conv2d3x339_out_feedback_stall_out_34;
    wire [0:0] i_llvm_fpga_pop_i1_cmp26_2149_pop37_conv2d3x345_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_cmp26_2149_pop37_conv2d3x345_out_feedback_stall_out_37;
    wire [0:0] i_llvm_fpga_pop_i1_cmp27124_pop32_conv2d3x335_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_cmp27124_pop32_conv2d3x335_out_feedback_stall_out_32;
    wire [0:0] i_llvm_fpga_pop_i1_cmp27_1139_pop35_conv2d3x341_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_cmp27_1139_pop35_conv2d3x341_out_feedback_stall_out_35;
    wire [0:0] i_llvm_fpga_pop_i1_cmp27_2154_pop38_conv2d3x347_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_cmp27_2154_pop38_conv2d3x347_out_feedback_stall_out_38;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp77159_pop39_conv2d3x349_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp77159_pop39_conv2d3x349_out_feedback_stall_out_39;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp81104_pop28_conv2d3x327_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp81104_pop28_conv2d3x327_out_feedback_stall_out_28;
    wire [31:0] i_llvm_fpga_pop_i32_add109_pop29_conv2d3x329_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_add109_pop29_conv2d3x329_out_feedback_stall_out_29;
    wire [31:0] i_llvm_fpga_pop_i32_j_061_pop24_conv2d3x318_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_j_061_pop24_conv2d3x318_out_feedback_stall_out_24;
    wire [31:0] i_llvm_fpga_pop_i32_mul56114_pop30_conv2d3x331_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_mul56114_pop30_conv2d3x331_out_feedback_stall_out_30;
    wire [31:0] i_llvm_fpga_pop_i32_sub_1129_pop33_conv2d3x337_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_sub_1129_pop33_conv2d3x337_out_feedback_stall_out_33;
    wire [31:0] i_llvm_fpga_pop_i32_sub_2144_pop36_conv2d3x343_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_sub_2144_pop36_conv2d3x343_out_feedback_stall_out_36;
    wire [32:0] i_llvm_fpga_pop_i33_fpga_indvars_iv94_pop23_conv2d3x35_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i33_fpga_indvars_iv94_pop23_conv2d3x35_out_feedback_stall_out_23;
    wire [63:0] i_llvm_fpga_pop_p1024f32_filter_weight_addr_067_replace_phi86_pop25_conv2d3x321_out_data_out;
    wire [0:0] i_llvm_fpga_pop_p1024f32_filter_weight_addr_067_replace_phi86_pop25_conv2d3x321_out_feedback_stall_out_25;
    wire [63:0] i_llvm_fpga_pop_p1024f32_output_im_addr_068_replace_phi92_pop26_conv2d3x323_out_data_out;
    wire [0:0] i_llvm_fpga_pop_p1024f32_output_im_addr_068_replace_phi92_pop26_conv2d3x323_out_feedback_stall_out_26;
    wire [31:0] i_llvm_fpga_push_f32_lm2598_push27_conv2d3x326_out_feedback_out_27;
    wire [0:0] i_llvm_fpga_push_f32_lm2598_push27_conv2d3x326_out_feedback_valid_out_27;
    wire [0:0] i_llvm_fpga_push_i1_cmp26119_push31_conv2d3x334_out_feedback_out_31;
    wire [0:0] i_llvm_fpga_push_i1_cmp26119_push31_conv2d3x334_out_feedback_valid_out_31;
    wire [0:0] i_llvm_fpga_push_i1_cmp26_1134_push34_conv2d3x340_out_feedback_out_34;
    wire [0:0] i_llvm_fpga_push_i1_cmp26_1134_push34_conv2d3x340_out_feedback_valid_out_34;
    wire [0:0] i_llvm_fpga_push_i1_cmp26_2149_push37_conv2d3x346_out_feedback_out_37;
    wire [0:0] i_llvm_fpga_push_i1_cmp26_2149_push37_conv2d3x346_out_feedback_valid_out_37;
    wire [0:0] i_llvm_fpga_push_i1_cmp27124_push32_conv2d3x336_out_feedback_out_32;
    wire [0:0] i_llvm_fpga_push_i1_cmp27124_push32_conv2d3x336_out_feedback_valid_out_32;
    wire [0:0] i_llvm_fpga_push_i1_cmp27_1139_push35_conv2d3x342_out_feedback_out_35;
    wire [0:0] i_llvm_fpga_push_i1_cmp27_1139_push35_conv2d3x342_out_feedback_valid_out_35;
    wire [0:0] i_llvm_fpga_push_i1_cmp27_2154_push38_conv2d3x348_out_feedback_out_38;
    wire [0:0] i_llvm_fpga_push_i1_cmp27_2154_push38_conv2d3x348_out_feedback_valid_out_38;
    wire [0:0] i_llvm_fpga_push_i1_notcmp77159_push39_conv2d3x350_out_feedback_out_39;
    wire [0:0] i_llvm_fpga_push_i1_notcmp77159_push39_conv2d3x350_out_feedback_valid_out_39;
    wire [0:0] i_llvm_fpga_push_i1_notcmp81104_push28_conv2d3x328_out_feedback_out_28;
    wire [0:0] i_llvm_fpga_push_i1_notcmp81104_push28_conv2d3x328_out_feedback_valid_out_28;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond75_conv2d3x315_out_feedback_out_8;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond75_conv2d3x315_out_feedback_valid_out_8;
    wire [31:0] i_llvm_fpga_push_i32_add109_push29_conv2d3x330_out_feedback_out_29;
    wire [0:0] i_llvm_fpga_push_i32_add109_push29_conv2d3x330_out_feedback_valid_out_29;
    wire [31:0] i_llvm_fpga_push_i32_j_061_push24_conv2d3x320_out_feedback_out_24;
    wire [0:0] i_llvm_fpga_push_i32_j_061_push24_conv2d3x320_out_feedback_valid_out_24;
    wire [31:0] i_llvm_fpga_push_i32_mul56114_push30_conv2d3x332_out_feedback_out_30;
    wire [0:0] i_llvm_fpga_push_i32_mul56114_push30_conv2d3x332_out_feedback_valid_out_30;
    wire [31:0] i_llvm_fpga_push_i32_sub_1129_push33_conv2d3x338_out_feedback_out_33;
    wire [0:0] i_llvm_fpga_push_i32_sub_1129_push33_conv2d3x338_out_feedback_valid_out_33;
    wire [31:0] i_llvm_fpga_push_i32_sub_2144_push36_conv2d3x344_out_feedback_out_36;
    wire [0:0] i_llvm_fpga_push_i32_sub_2144_push36_conv2d3x344_out_feedback_valid_out_36;
    wire [63:0] i_llvm_fpga_push_i33_fpga_indvars_iv94_push23_conv2d3x317_out_feedback_out_23;
    wire [0:0] i_llvm_fpga_push_i33_fpga_indvars_iv94_push23_conv2d3x317_out_feedback_valid_out_23;
    wire [63:0] i_llvm_fpga_push_p1024f32_filter_weight_addr_067_replace_phi86_push25_conv2d3x322_out_feedback_out_25;
    wire [0:0] i_llvm_fpga_push_p1024f32_filter_weight_addr_067_replace_phi86_push25_conv2d3x322_out_feedback_valid_out_25;
    wire [63:0] i_llvm_fpga_push_p1024f32_output_im_addr_068_replace_phi92_push26_conv2d3x324_out_feedback_out_26;
    wire [0:0] i_llvm_fpga_push_p1024f32_output_im_addr_068_replace_phi92_push26_conv2d3x324_out_feedback_valid_out_26;
    wire [31:0] i_llvm_fpga_sync_buffer_i32_pad_sync_buffer_conv2d3x38_out_buffer_out;
    wire [31:0] i_llvm_fpga_sync_buffer_i32_stride_sync_buffer_conv2d3x37_out_buffer_out;
    wire [0:0] i_notcmp73_conv2d3x314_q;
    wire [0:0] i_unnamed_conv2d3x312_q;
    wire [32:0] bgTrunc_i_fpga_indvars_iv_next95_conv2d3x316_sel_x_b;
    wire [31:0] bgTrunc_i_inc61_conv2d3x319_sel_x_b;
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
    wire [0:0] i_exitcond96_conv2d3x39_cmp_nsign_q;
    reg [63:0] redist0_sync_together142_aunroll_x_in_c0_eni20_2_tpl_1_q;
    reg [63:0] redist1_sync_together142_aunroll_x_in_c0_eni20_3_tpl_1_q;
    reg [31:0] redist2_sync_together142_aunroll_x_in_c0_eni20_4_tpl_1_q;
    reg [0:0] redist3_sync_together142_aunroll_x_in_c0_eni20_5_tpl_1_q;
    reg [31:0] redist4_sync_together142_aunroll_x_in_c0_eni20_6_tpl_1_q;
    reg [31:0] redist5_sync_together142_aunroll_x_in_c0_eni20_7_tpl_1_q;
    reg [0:0] redist6_sync_together142_aunroll_x_in_c0_eni20_8_tpl_1_q;
    reg [0:0] redist7_sync_together142_aunroll_x_in_c0_eni20_9_tpl_1_q;
    reg [31:0] redist8_sync_together142_aunroll_x_in_c0_eni20_10_tpl_1_q;
    reg [0:0] redist9_sync_together142_aunroll_x_in_c0_eni20_11_tpl_1_q;
    reg [0:0] redist10_sync_together142_aunroll_x_in_c0_eni20_12_tpl_1_q;
    reg [31:0] redist11_sync_together142_aunroll_x_in_c0_eni20_13_tpl_1_q;
    reg [0:0] redist12_sync_together142_aunroll_x_in_c0_eni20_14_tpl_1_q;
    reg [0:0] redist13_sync_together142_aunroll_x_in_c0_eni20_15_tpl_1_q;
    reg [0:0] redist14_sync_together142_aunroll_x_in_c0_eni20_16_tpl_1_q;
    reg [63:0] redist15_sync_together142_aunroll_x_in_c0_eni20_17_tpl_1_q;
    reg [63:0] redist16_sync_together142_aunroll_x_in_c0_eni20_18_tpl_1_q;
    reg [31:0] redist17_sync_together142_aunroll_x_in_c0_eni20_19_tpl_1_q;
    reg [0:0] redist18_sync_together142_aunroll_x_in_c0_eni20_20_tpl_1_q;
    reg [0:0] redist19_i_unnamed_conv2d3x312_q_1_q;


    // i_llvm_fpga_ffwd_dest_i33_unnamed_conv2d3x315_conv2d3x34(BLACKBOX,59)@1
    conv2d3x3_i_llvm_fpga_ffwd_dest_i33_unnamed_15_conv2d3x30 thei_llvm_fpga_ffwd_dest_i33_unnamed_conv2d3x315_conv2d3x34 (
        .in_intel_reserved_ffwd_6_0(in_intel_reserved_ffwd_6_0),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_dest_data_out_6_0(i_llvm_fpga_ffwd_dest_i33_unnamed_conv2d3x315_conv2d3x34_out_dest_data_out_6_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i33_195(CONSTANT,49)
    assign c_i33_195_q = $unsigned(33'b111111111111111111111111111111111);

    // i_fpga_indvars_iv_next95_conv2d3x316(ADD,54)@1
    assign i_fpga_indvars_iv_next95_conv2d3x316_a = {1'b0, i_fpga_indvars_iv94_replace_phi_conv2d3x36_q};
    assign i_fpga_indvars_iv_next95_conv2d3x316_b = {1'b0, c_i33_195_q};
    assign i_fpga_indvars_iv_next95_conv2d3x316_o = $unsigned(i_fpga_indvars_iv_next95_conv2d3x316_a) + $unsigned(i_fpga_indvars_iv_next95_conv2d3x316_b);
    assign i_fpga_indvars_iv_next95_conv2d3x316_q = i_fpga_indvars_iv_next95_conv2d3x316_o[33:0];

    // bgTrunc_i_fpga_indvars_iv_next95_conv2d3x316_sel_x(BITSELECT,108)@1
    assign bgTrunc_i_fpga_indvars_iv_next95_conv2d3x316_sel_x_b = i_fpga_indvars_iv_next95_conv2d3x316_q[32:0];

    // i_llvm_fpga_push_i33_fpga_indvars_iv94_push23_conv2d3x317(BLACKBOX,93)@1
    // out out_feedback_out_23@20000000
    // out out_feedback_valid_out_23@20000000
    conv2d3x3_i_llvm_fpga_push_i33_fpga_indvars_iv94_push23_0 thei_llvm_fpga_push_i33_fpga_indvars_iv94_push23_conv2d3x317 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next95_conv2d3x316_sel_x_b),
        .in_feedback_stall_in_23(i_llvm_fpga_pop_i33_fpga_indvars_iv94_pop23_conv2d3x35_out_feedback_stall_out_23),
        .in_stall_in(GND_q),
        .in_unnamed_conv2d3x324(i_unnamed_conv2d3x312_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_feedback_out_23(i_llvm_fpga_push_i33_fpga_indvars_iv94_push23_conv2d3x317_out_feedback_out_23),
        .out_feedback_valid_out_23(i_llvm_fpga_push_i33_fpga_indvars_iv94_push23_conv2d3x317_out_feedback_valid_out_23),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i33_undef93(CONSTANT,50)
    assign c_i33_undef93_q = $unsigned(33'b000000000000000000000000000000000);

    // i_llvm_fpga_pop_i33_fpga_indvars_iv94_pop23_conv2d3x35(BLACKBOX,75)@1
    // out out_feedback_stall_out_23@20000000
    conv2d3x3_i_llvm_fpga_pop_i33_fpga_indvars_iv94_pop23_0 thei_llvm_fpga_pop_i33_fpga_indvars_iv94_pop23_conv2d3x35 (
        .in_data_in(c_i33_undef93_q),
        .in_dir(in_c0_eni20_1_tpl),
        .in_feedback_in_23(i_llvm_fpga_push_i33_fpga_indvars_iv94_push23_conv2d3x317_out_feedback_out_23),
        .in_feedback_valid_in_23(i_llvm_fpga_push_i33_fpga_indvars_iv94_push23_conv2d3x317_out_feedback_valid_out_23),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(i_llvm_fpga_pop_i33_fpga_indvars_iv94_pop23_conv2d3x35_out_data_out),
        .out_feedback_stall_out_23(i_llvm_fpga_pop_i33_fpga_indvars_iv94_pop23_conv2d3x35_out_feedback_stall_out_23),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_fpga_indvars_iv94_replace_phi_conv2d3x36(MUX,53)@1
    assign i_fpga_indvars_iv94_replace_phi_conv2d3x36_s = in_c0_eni20_1_tpl;
    always @(i_fpga_indvars_iv94_replace_phi_conv2d3x36_s or i_llvm_fpga_pop_i33_fpga_indvars_iv94_pop23_conv2d3x35_out_data_out or i_llvm_fpga_ffwd_dest_i33_unnamed_conv2d3x315_conv2d3x34_out_dest_data_out_6_0)
    begin
        unique case (i_fpga_indvars_iv94_replace_phi_conv2d3x36_s)
            1'b0 : i_fpga_indvars_iv94_replace_phi_conv2d3x36_q = i_llvm_fpga_pop_i33_fpga_indvars_iv94_pop23_conv2d3x35_out_data_out;
            1'b1 : i_fpga_indvars_iv94_replace_phi_conv2d3x36_q = i_llvm_fpga_ffwd_dest_i33_unnamed_conv2d3x315_conv2d3x34_out_dest_data_out_6_0;
            default : i_fpga_indvars_iv94_replace_phi_conv2d3x36_q = 33'b0;
        endcase
    end

    // i_exitcond96_conv2d3x39_cmp_nsign(LOGICAL,151)@1
    assign i_exitcond96_conv2d3x39_cmp_nsign_q = $unsigned(~ (i_fpga_indvars_iv94_replace_phi_conv2d3x36_q[32:32]));

    // i_llvm_fpga_ffwd_dest_i1_unnamed_conv2d3x316_conv2d3x311(BLACKBOX,58)@1
    conv2d3x3_i_llvm_fpga_ffwd_dest_i1_unnamed_16_conv2d3x30 thei_llvm_fpga_ffwd_dest_i1_unnamed_conv2d3x316_conv2d3x311 (
        .in_intel_reserved_ffwd_4_0(in_intel_reserved_ffwd_4_0),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_dest_data_out_4_0(i_llvm_fpga_ffwd_dest_i1_unnamed_conv2d3x316_conv2d3x311_out_dest_data_out_4_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_conv2d3x312(LOGICAL,99)@1
    assign i_unnamed_conv2d3x312_q = i_llvm_fpga_ffwd_dest_i1_unnamed_conv2d3x316_conv2d3x311_out_dest_data_out_4_0 & i_exitcond96_conv2d3x39_cmp_nsign_q;

    // i_llvm_fpga_push_i1_notexitcond75_conv2d3x315(BLACKBOX,87)@1
    // out out_feedback_out_8@20000000
    // out out_feedback_valid_out_8@20000000
    conv2d3x3_i_llvm_fpga_push_i1_notexitcond75_0 thei_llvm_fpga_push_i1_notexitcond75_conv2d3x315 (
        .in_data_in(i_unnamed_conv2d3x312_q),
        .in_feedback_stall_in_8(i_llvm_fpga_pipeline_keep_going74_conv2d3x33_out_not_exitcond_stall_out),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_feedback_out_8(i_llvm_fpga_push_i1_notexitcond75_conv2d3x315_out_feedback_out_8),
        .out_feedback_valid_out_8(i_llvm_fpga_push_i1_notexitcond75_conv2d3x315_out_feedback_valid_out_8),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // i_llvm_fpga_pipeline_keep_going74_conv2d3x33(BLACKBOX,60)@1
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    conv2d3x3_i_llvm_fpga_pipeline_keep_going74_0 thei_llvm_fpga_pipeline_keep_going74_conv2d3x33 (
        .in_data_in(VCC_q),
        .in_initeration_in(GND_q),
        .in_initeration_valid_in(GND_q),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond75_conv2d3x315_out_feedback_out_8),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond75_conv2d3x315_out_feedback_valid_out_8),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going74_conv2d3x33_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going74_conv2d3x33_out_exiting_valid_out),
        .out_initeration_stall_out(),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going74_conv2d3x33_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going74_conv2d3x33_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,51)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going74_conv2d3x33_exiting_valid_out = i_llvm_fpga_pipeline_keep_going74_conv2d3x33_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going74_conv2d3x33_exiting_stall_out = i_llvm_fpga_pipeline_keep_going74_conv2d3x33_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,102)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going74_conv2d3x33_out_pipeline_valid_out;

    // valid_fanout_reg0(REG,113)@1 + 1
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

    // redist3_sync_together142_aunroll_x_in_c0_eni20_5_tpl_1(DELAY,155)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_sync_together142_aunroll_x_in_c0_eni20_5_tpl_1_q <= '0;
        end
        else
        begin
            redist3_sync_together142_aunroll_x_in_c0_eni20_5_tpl_1_q <= $unsigned(in_c0_eni20_5_tpl);
        end
    end

    // redist2_sync_together142_aunroll_x_in_c0_eni20_4_tpl_1(DELAY,154)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_sync_together142_aunroll_x_in_c0_eni20_4_tpl_1_q <= '0;
        end
        else
        begin
            redist2_sync_together142_aunroll_x_in_c0_eni20_4_tpl_1_q <= $unsigned(in_c0_eni20_4_tpl);
        end
    end

    // redist1_sync_together142_aunroll_x_in_c0_eni20_3_tpl_1(DELAY,153)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together142_aunroll_x_in_c0_eni20_3_tpl_1_q <= '0;
        end
        else
        begin
            redist1_sync_together142_aunroll_x_in_c0_eni20_3_tpl_1_q <= $unsigned(in_c0_eni20_3_tpl);
        end
    end

    // redist0_sync_together142_aunroll_x_in_c0_eni20_2_tpl_1(DELAY,152)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_sync_together142_aunroll_x_in_c0_eni20_2_tpl_1_q <= '0;
        end
        else
        begin
            redist0_sync_together142_aunroll_x_in_c0_eni20_2_tpl_1_q <= $unsigned(in_c0_eni20_2_tpl);
        end
    end

    // redist14_sync_together142_aunroll_x_in_c0_eni20_16_tpl_1(DELAY,166)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_sync_together142_aunroll_x_in_c0_eni20_16_tpl_1_q <= '0;
        end
        else
        begin
            redist14_sync_together142_aunroll_x_in_c0_eni20_16_tpl_1_q <= $unsigned(in_c0_eni20_16_tpl);
        end
    end

    // redist13_sync_together142_aunroll_x_in_c0_eni20_15_tpl_1(DELAY,165)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_sync_together142_aunroll_x_in_c0_eni20_15_tpl_1_q <= '0;
        end
        else
        begin
            redist13_sync_together142_aunroll_x_in_c0_eni20_15_tpl_1_q <= $unsigned(in_c0_eni20_15_tpl);
        end
    end

    // redist12_sync_together142_aunroll_x_in_c0_eni20_14_tpl_1(DELAY,164)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_sync_together142_aunroll_x_in_c0_eni20_14_tpl_1_q <= '0;
        end
        else
        begin
            redist12_sync_together142_aunroll_x_in_c0_eni20_14_tpl_1_q <= $unsigned(in_c0_eni20_14_tpl);
        end
    end

    // redist11_sync_together142_aunroll_x_in_c0_eni20_13_tpl_1(DELAY,163)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_sync_together142_aunroll_x_in_c0_eni20_13_tpl_1_q <= '0;
        end
        else
        begin
            redist11_sync_together142_aunroll_x_in_c0_eni20_13_tpl_1_q <= $unsigned(in_c0_eni20_13_tpl);
        end
    end

    // redist10_sync_together142_aunroll_x_in_c0_eni20_12_tpl_1(DELAY,162)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_sync_together142_aunroll_x_in_c0_eni20_12_tpl_1_q <= '0;
        end
        else
        begin
            redist10_sync_together142_aunroll_x_in_c0_eni20_12_tpl_1_q <= $unsigned(in_c0_eni20_12_tpl);
        end
    end

    // redist9_sync_together142_aunroll_x_in_c0_eni20_11_tpl_1(DELAY,161)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_sync_together142_aunroll_x_in_c0_eni20_11_tpl_1_q <= '0;
        end
        else
        begin
            redist9_sync_together142_aunroll_x_in_c0_eni20_11_tpl_1_q <= $unsigned(in_c0_eni20_11_tpl);
        end
    end

    // redist8_sync_together142_aunroll_x_in_c0_eni20_10_tpl_1(DELAY,160)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_sync_together142_aunroll_x_in_c0_eni20_10_tpl_1_q <= '0;
        end
        else
        begin
            redist8_sync_together142_aunroll_x_in_c0_eni20_10_tpl_1_q <= $unsigned(in_c0_eni20_10_tpl);
        end
    end

    // redist7_sync_together142_aunroll_x_in_c0_eni20_9_tpl_1(DELAY,159)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_sync_together142_aunroll_x_in_c0_eni20_9_tpl_1_q <= '0;
        end
        else
        begin
            redist7_sync_together142_aunroll_x_in_c0_eni20_9_tpl_1_q <= $unsigned(in_c0_eni20_9_tpl);
        end
    end

    // redist6_sync_together142_aunroll_x_in_c0_eni20_8_tpl_1(DELAY,158)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_sync_together142_aunroll_x_in_c0_eni20_8_tpl_1_q <= '0;
        end
        else
        begin
            redist6_sync_together142_aunroll_x_in_c0_eni20_8_tpl_1_q <= $unsigned(in_c0_eni20_8_tpl);
        end
    end

    // redist5_sync_together142_aunroll_x_in_c0_eni20_7_tpl_1(DELAY,157)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_sync_together142_aunroll_x_in_c0_eni20_7_tpl_1_q <= '0;
        end
        else
        begin
            redist5_sync_together142_aunroll_x_in_c0_eni20_7_tpl_1_q <= $unsigned(in_c0_eni20_7_tpl);
        end
    end

    // redist4_sync_together142_aunroll_x_in_c0_eni20_6_tpl_1(DELAY,156)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_sync_together142_aunroll_x_in_c0_eni20_6_tpl_1_q <= '0;
        end
        else
        begin
            redist4_sync_together142_aunroll_x_in_c0_eni20_6_tpl_1_q <= $unsigned(in_c0_eni20_6_tpl);
        end
    end

    // redist18_sync_together142_aunroll_x_in_c0_eni20_20_tpl_1(DELAY,170)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist18_sync_together142_aunroll_x_in_c0_eni20_20_tpl_1_q <= '0;
        end
        else
        begin
            redist18_sync_together142_aunroll_x_in_c0_eni20_20_tpl_1_q <= $unsigned(in_c0_eni20_20_tpl);
        end
    end

    // redist17_sync_together142_aunroll_x_in_c0_eni20_19_tpl_1(DELAY,169)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist17_sync_together142_aunroll_x_in_c0_eni20_19_tpl_1_q <= '0;
        end
        else
        begin
            redist17_sync_together142_aunroll_x_in_c0_eni20_19_tpl_1_q <= $unsigned(in_c0_eni20_19_tpl);
        end
    end

    // redist16_sync_together142_aunroll_x_in_c0_eni20_18_tpl_1(DELAY,168)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist16_sync_together142_aunroll_x_in_c0_eni20_18_tpl_1_q <= '0;
        end
        else
        begin
            redist16_sync_together142_aunroll_x_in_c0_eni20_18_tpl_1_q <= $unsigned(in_c0_eni20_18_tpl);
        end
    end

    // redist15_sync_together142_aunroll_x_in_c0_eni20_17_tpl_1(DELAY,167)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist15_sync_together142_aunroll_x_in_c0_eni20_17_tpl_1_q <= '0;
        end
        else
        begin
            redist15_sync_together142_aunroll_x_in_c0_eni20_17_tpl_1_q <= $unsigned(in_c0_eni20_17_tpl);
        end
    end

    // valid_fanout_reg33(REG,146)@1 + 1
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

    // valid_fanout_reg34(REG,147)@1 + 1
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

    // i_llvm_fpga_fanout_i1_fanout_adaptor_conv2d3x313(REG,57)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_llvm_fpga_fanout_i1_fanout_adaptor_conv2d3x313_q <= $unsigned(1'b0);
        end
        else
        begin
            i_llvm_fpga_fanout_i1_fanout_adaptor_conv2d3x313_q <= i_unnamed_conv2d3x312_q;
        end
    end

    // i_llvm_fpga_push_i1_notcmp77159_push39_conv2d3x350(BLACKBOX,85)@2
    // out out_feedback_out_39@20000000
    // out out_feedback_valid_out_39@20000000
    conv2d3x3_i_llvm_fpga_push_i1_notcmp77159_push39_0 thei_llvm_fpga_push_i1_notcmp77159_push39_conv2d3x350 (
        .in_data_in(i_llvm_fpga_pop_i1_notcmp77159_pop39_conv2d3x349_out_data_out),
        .in_fanout_adaptor(i_llvm_fpga_fanout_i1_fanout_adaptor_conv2d3x313_q),
        .in_feedback_stall_in_39(i_llvm_fpga_pop_i1_notcmp77159_pop39_conv2d3x349_out_feedback_stall_out_39),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg34_q),
        .out_data_out(),
        .out_feedback_out_39(i_llvm_fpga_push_i1_notcmp77159_push39_conv2d3x350_out_feedback_out_39),
        .out_feedback_valid_out_39(i_llvm_fpga_push_i1_notcmp77159_push39_conv2d3x350_out_feedback_valid_out_39),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_fanout_i1_c0_ene1570_fanout_adaptor_conv2d3x32(REG,56)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_llvm_fpga_fanout_i1_c0_ene1570_fanout_adaptor_conv2d3x32_q <= $unsigned(1'b0);
        end
        else
        begin
            i_llvm_fpga_fanout_i1_c0_ene1570_fanout_adaptor_conv2d3x32_q <= in_c0_eni20_1_tpl;
        end
    end

    // i_llvm_fpga_pop_i1_notcmp77159_pop39_conv2d3x349(BLACKBOX,68)@2
    // out out_feedback_stall_out_39@20000000
    conv2d3x3_i_llvm_fpga_pop_i1_notcmp77159_pop39_0 thei_llvm_fpga_pop_i1_notcmp77159_pop39_conv2d3x349 (
        .in_data_in(redist14_sync_together142_aunroll_x_in_c0_eni20_16_tpl_1_q),
        .in_dir(i_llvm_fpga_fanout_i1_c0_ene1570_fanout_adaptor_conv2d3x32_q),
        .in_feedback_in_39(i_llvm_fpga_push_i1_notcmp77159_push39_conv2d3x350_out_feedback_out_39),
        .in_feedback_valid_in_39(i_llvm_fpga_push_i1_notcmp77159_push39_conv2d3x350_out_feedback_valid_out_39),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg33_q),
        .out_data_out(i_llvm_fpga_pop_i1_notcmp77159_pop39_conv2d3x349_out_data_out),
        .out_feedback_stall_out_39(i_llvm_fpga_pop_i1_notcmp77159_pop39_conv2d3x349_out_feedback_stall_out_39),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg31(REG,144)@1 + 1
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

    // valid_fanout_reg32(REG,145)@1 + 1
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

    // i_llvm_fpga_push_i1_cmp27_2154_push38_conv2d3x348(BLACKBOX,84)@2
    // out out_feedback_out_38@20000000
    // out out_feedback_valid_out_38@20000000
    conv2d3x3_i_llvm_fpga_push_i1_cmp27_2154_push38_0 thei_llvm_fpga_push_i1_cmp27_2154_push38_conv2d3x348 (
        .in_data_in(i_llvm_fpga_pop_i1_cmp27_2154_pop38_conv2d3x347_out_data_out),
        .in_fanout_adaptor(i_llvm_fpga_fanout_i1_fanout_adaptor_conv2d3x313_q),
        .in_feedback_stall_in_38(i_llvm_fpga_pop_i1_cmp27_2154_pop38_conv2d3x347_out_feedback_stall_out_38),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg32_q),
        .out_data_out(),
        .out_feedback_out_38(i_llvm_fpga_push_i1_cmp27_2154_push38_conv2d3x348_out_feedback_out_38),
        .out_feedback_valid_out_38(i_llvm_fpga_push_i1_cmp27_2154_push38_conv2d3x348_out_feedback_valid_out_38),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i1_cmp27_2154_pop38_conv2d3x347(BLACKBOX,67)@2
    // out out_feedback_stall_out_38@20000000
    conv2d3x3_i_llvm_fpga_pop_i1_cmp27_2154_pop38_0 thei_llvm_fpga_pop_i1_cmp27_2154_pop38_conv2d3x347 (
        .in_data_in(redist13_sync_together142_aunroll_x_in_c0_eni20_15_tpl_1_q),
        .in_dir(i_llvm_fpga_fanout_i1_c0_ene1570_fanout_adaptor_conv2d3x32_q),
        .in_feedback_in_38(i_llvm_fpga_push_i1_cmp27_2154_push38_conv2d3x348_out_feedback_out_38),
        .in_feedback_valid_in_38(i_llvm_fpga_push_i1_cmp27_2154_push38_conv2d3x348_out_feedback_valid_out_38),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg31_q),
        .out_data_out(i_llvm_fpga_pop_i1_cmp27_2154_pop38_conv2d3x347_out_data_out),
        .out_feedback_stall_out_38(i_llvm_fpga_pop_i1_cmp27_2154_pop38_conv2d3x347_out_feedback_stall_out_38),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg29(REG,142)@1 + 1
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

    // valid_fanout_reg30(REG,143)@1 + 1
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

    // i_llvm_fpga_push_i1_cmp26_2149_push37_conv2d3x346(BLACKBOX,81)@2
    // out out_feedback_out_37@20000000
    // out out_feedback_valid_out_37@20000000
    conv2d3x3_i_llvm_fpga_push_i1_cmp26_2149_push37_0 thei_llvm_fpga_push_i1_cmp26_2149_push37_conv2d3x346 (
        .in_data_in(i_llvm_fpga_pop_i1_cmp26_2149_pop37_conv2d3x345_out_data_out),
        .in_fanout_adaptor(i_llvm_fpga_fanout_i1_fanout_adaptor_conv2d3x313_q),
        .in_feedback_stall_in_37(i_llvm_fpga_pop_i1_cmp26_2149_pop37_conv2d3x345_out_feedback_stall_out_37),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg30_q),
        .out_data_out(),
        .out_feedback_out_37(i_llvm_fpga_push_i1_cmp26_2149_push37_conv2d3x346_out_feedback_out_37),
        .out_feedback_valid_out_37(i_llvm_fpga_push_i1_cmp26_2149_push37_conv2d3x346_out_feedback_valid_out_37),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i1_cmp26_2149_pop37_conv2d3x345(BLACKBOX,64)@2
    // out out_feedback_stall_out_37@20000000
    conv2d3x3_i_llvm_fpga_pop_i1_cmp26_2149_pop37_0 thei_llvm_fpga_pop_i1_cmp26_2149_pop37_conv2d3x345 (
        .in_data_in(redist12_sync_together142_aunroll_x_in_c0_eni20_14_tpl_1_q),
        .in_dir(i_llvm_fpga_fanout_i1_c0_ene1570_fanout_adaptor_conv2d3x32_q),
        .in_feedback_in_37(i_llvm_fpga_push_i1_cmp26_2149_push37_conv2d3x346_out_feedback_out_37),
        .in_feedback_valid_in_37(i_llvm_fpga_push_i1_cmp26_2149_push37_conv2d3x346_out_feedback_valid_out_37),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg29_q),
        .out_data_out(i_llvm_fpga_pop_i1_cmp26_2149_pop37_conv2d3x345_out_data_out),
        .out_feedback_stall_out_37(i_llvm_fpga_pop_i1_cmp26_2149_pop37_conv2d3x345_out_feedback_stall_out_37),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg27(REG,140)@1 + 1
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

    // valid_fanout_reg28(REG,141)@1 + 1
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

    // i_llvm_fpga_push_i32_sub_2144_push36_conv2d3x344(BLACKBOX,92)@2
    // out out_feedback_out_36@20000000
    // out out_feedback_valid_out_36@20000000
    conv2d3x3_i_llvm_fpga_push_i32_sub_2144_push36_0 thei_llvm_fpga_push_i32_sub_2144_push36_conv2d3x344 (
        .in_data_in(i_llvm_fpga_pop_i32_sub_2144_pop36_conv2d3x343_out_data_out),
        .in_fanout_adaptor(i_llvm_fpga_fanout_i1_fanout_adaptor_conv2d3x313_q),
        .in_feedback_stall_in_36(i_llvm_fpga_pop_i32_sub_2144_pop36_conv2d3x343_out_feedback_stall_out_36),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg28_q),
        .out_data_out(),
        .out_feedback_out_36(i_llvm_fpga_push_i32_sub_2144_push36_conv2d3x344_out_feedback_out_36),
        .out_feedback_valid_out_36(i_llvm_fpga_push_i32_sub_2144_push36_conv2d3x344_out_feedback_valid_out_36),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_sub_2144_pop36_conv2d3x343(BLACKBOX,74)@2
    // out out_feedback_stall_out_36@20000000
    conv2d3x3_i_llvm_fpga_pop_i32_sub_2144_pop36_0 thei_llvm_fpga_pop_i32_sub_2144_pop36_conv2d3x343 (
        .in_data_in(redist11_sync_together142_aunroll_x_in_c0_eni20_13_tpl_1_q),
        .in_dir(i_llvm_fpga_fanout_i1_c0_ene1570_fanout_adaptor_conv2d3x32_q),
        .in_feedback_in_36(i_llvm_fpga_push_i32_sub_2144_push36_conv2d3x344_out_feedback_out_36),
        .in_feedback_valid_in_36(i_llvm_fpga_push_i32_sub_2144_push36_conv2d3x344_out_feedback_valid_out_36),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg27_q),
        .out_data_out(i_llvm_fpga_pop_i32_sub_2144_pop36_conv2d3x343_out_data_out),
        .out_feedback_stall_out_36(i_llvm_fpga_pop_i32_sub_2144_pop36_conv2d3x343_out_feedback_stall_out_36),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg25(REG,138)@1 + 1
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

    // valid_fanout_reg26(REG,139)@1 + 1
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

    // i_llvm_fpga_push_i1_cmp27_1139_push35_conv2d3x342(BLACKBOX,83)@2
    // out out_feedback_out_35@20000000
    // out out_feedback_valid_out_35@20000000
    conv2d3x3_i_llvm_fpga_push_i1_cmp27_1139_push35_0 thei_llvm_fpga_push_i1_cmp27_1139_push35_conv2d3x342 (
        .in_data_in(i_llvm_fpga_pop_i1_cmp27_1139_pop35_conv2d3x341_out_data_out),
        .in_fanout_adaptor(i_llvm_fpga_fanout_i1_fanout_adaptor_conv2d3x313_q),
        .in_feedback_stall_in_35(i_llvm_fpga_pop_i1_cmp27_1139_pop35_conv2d3x341_out_feedback_stall_out_35),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg26_q),
        .out_data_out(),
        .out_feedback_out_35(i_llvm_fpga_push_i1_cmp27_1139_push35_conv2d3x342_out_feedback_out_35),
        .out_feedback_valid_out_35(i_llvm_fpga_push_i1_cmp27_1139_push35_conv2d3x342_out_feedback_valid_out_35),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i1_cmp27_1139_pop35_conv2d3x341(BLACKBOX,66)@2
    // out out_feedback_stall_out_35@20000000
    conv2d3x3_i_llvm_fpga_pop_i1_cmp27_1139_pop35_0 thei_llvm_fpga_pop_i1_cmp27_1139_pop35_conv2d3x341 (
        .in_data_in(redist10_sync_together142_aunroll_x_in_c0_eni20_12_tpl_1_q),
        .in_dir(i_llvm_fpga_fanout_i1_c0_ene1570_fanout_adaptor_conv2d3x32_q),
        .in_feedback_in_35(i_llvm_fpga_push_i1_cmp27_1139_push35_conv2d3x342_out_feedback_out_35),
        .in_feedback_valid_in_35(i_llvm_fpga_push_i1_cmp27_1139_push35_conv2d3x342_out_feedback_valid_out_35),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg25_q),
        .out_data_out(i_llvm_fpga_pop_i1_cmp27_1139_pop35_conv2d3x341_out_data_out),
        .out_feedback_stall_out_35(i_llvm_fpga_pop_i1_cmp27_1139_pop35_conv2d3x341_out_feedback_stall_out_35),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg23(REG,136)@1 + 1
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

    // valid_fanout_reg24(REG,137)@1 + 1
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

    // i_llvm_fpga_push_i1_cmp26_1134_push34_conv2d3x340(BLACKBOX,80)@2
    // out out_feedback_out_34@20000000
    // out out_feedback_valid_out_34@20000000
    conv2d3x3_i_llvm_fpga_push_i1_cmp26_1134_push34_0 thei_llvm_fpga_push_i1_cmp26_1134_push34_conv2d3x340 (
        .in_data_in(i_llvm_fpga_pop_i1_cmp26_1134_pop34_conv2d3x339_out_data_out),
        .in_fanout_adaptor(i_llvm_fpga_fanout_i1_fanout_adaptor_conv2d3x313_q),
        .in_feedback_stall_in_34(i_llvm_fpga_pop_i1_cmp26_1134_pop34_conv2d3x339_out_feedback_stall_out_34),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg24_q),
        .out_data_out(),
        .out_feedback_out_34(i_llvm_fpga_push_i1_cmp26_1134_push34_conv2d3x340_out_feedback_out_34),
        .out_feedback_valid_out_34(i_llvm_fpga_push_i1_cmp26_1134_push34_conv2d3x340_out_feedback_valid_out_34),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i1_cmp26_1134_pop34_conv2d3x339(BLACKBOX,63)@2
    // out out_feedback_stall_out_34@20000000
    conv2d3x3_i_llvm_fpga_pop_i1_cmp26_1134_pop34_0 thei_llvm_fpga_pop_i1_cmp26_1134_pop34_conv2d3x339 (
        .in_data_in(redist9_sync_together142_aunroll_x_in_c0_eni20_11_tpl_1_q),
        .in_dir(i_llvm_fpga_fanout_i1_c0_ene1570_fanout_adaptor_conv2d3x32_q),
        .in_feedback_in_34(i_llvm_fpga_push_i1_cmp26_1134_push34_conv2d3x340_out_feedback_out_34),
        .in_feedback_valid_in_34(i_llvm_fpga_push_i1_cmp26_1134_push34_conv2d3x340_out_feedback_valid_out_34),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg23_q),
        .out_data_out(i_llvm_fpga_pop_i1_cmp26_1134_pop34_conv2d3x339_out_data_out),
        .out_feedback_stall_out_34(i_llvm_fpga_pop_i1_cmp26_1134_pop34_conv2d3x339_out_feedback_stall_out_34),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg21(REG,134)@1 + 1
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

    // valid_fanout_reg22(REG,135)@1 + 1
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

    // i_llvm_fpga_push_i32_sub_1129_push33_conv2d3x338(BLACKBOX,91)@2
    // out out_feedback_out_33@20000000
    // out out_feedback_valid_out_33@20000000
    conv2d3x3_i_llvm_fpga_push_i32_sub_1129_push33_0 thei_llvm_fpga_push_i32_sub_1129_push33_conv2d3x338 (
        .in_data_in(i_llvm_fpga_pop_i32_sub_1129_pop33_conv2d3x337_out_data_out),
        .in_fanout_adaptor(i_llvm_fpga_fanout_i1_fanout_adaptor_conv2d3x313_q),
        .in_feedback_stall_in_33(i_llvm_fpga_pop_i32_sub_1129_pop33_conv2d3x337_out_feedback_stall_out_33),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg22_q),
        .out_data_out(),
        .out_feedback_out_33(i_llvm_fpga_push_i32_sub_1129_push33_conv2d3x338_out_feedback_out_33),
        .out_feedback_valid_out_33(i_llvm_fpga_push_i32_sub_1129_push33_conv2d3x338_out_feedback_valid_out_33),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_sub_1129_pop33_conv2d3x337(BLACKBOX,73)@2
    // out out_feedback_stall_out_33@20000000
    conv2d3x3_i_llvm_fpga_pop_i32_sub_1129_pop33_0 thei_llvm_fpga_pop_i32_sub_1129_pop33_conv2d3x337 (
        .in_data_in(redist8_sync_together142_aunroll_x_in_c0_eni20_10_tpl_1_q),
        .in_dir(i_llvm_fpga_fanout_i1_c0_ene1570_fanout_adaptor_conv2d3x32_q),
        .in_feedback_in_33(i_llvm_fpga_push_i32_sub_1129_push33_conv2d3x338_out_feedback_out_33),
        .in_feedback_valid_in_33(i_llvm_fpga_push_i32_sub_1129_push33_conv2d3x338_out_feedback_valid_out_33),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg21_q),
        .out_data_out(i_llvm_fpga_pop_i32_sub_1129_pop33_conv2d3x337_out_data_out),
        .out_feedback_stall_out_33(i_llvm_fpga_pop_i32_sub_1129_pop33_conv2d3x337_out_feedback_stall_out_33),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg19(REG,132)@1 + 1
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

    // valid_fanout_reg20(REG,133)@1 + 1
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

    // i_llvm_fpga_push_i1_cmp27124_push32_conv2d3x336(BLACKBOX,82)@2
    // out out_feedback_out_32@20000000
    // out out_feedback_valid_out_32@20000000
    conv2d3x3_i_llvm_fpga_push_i1_cmp27124_push32_0 thei_llvm_fpga_push_i1_cmp27124_push32_conv2d3x336 (
        .in_data_in(i_llvm_fpga_pop_i1_cmp27124_pop32_conv2d3x335_out_data_out),
        .in_fanout_adaptor(i_llvm_fpga_fanout_i1_fanout_adaptor_conv2d3x313_q),
        .in_feedback_stall_in_32(i_llvm_fpga_pop_i1_cmp27124_pop32_conv2d3x335_out_feedback_stall_out_32),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg20_q),
        .out_data_out(),
        .out_feedback_out_32(i_llvm_fpga_push_i1_cmp27124_push32_conv2d3x336_out_feedback_out_32),
        .out_feedback_valid_out_32(i_llvm_fpga_push_i1_cmp27124_push32_conv2d3x336_out_feedback_valid_out_32),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i1_cmp27124_pop32_conv2d3x335(BLACKBOX,65)@2
    // out out_feedback_stall_out_32@20000000
    conv2d3x3_i_llvm_fpga_pop_i1_cmp27124_pop32_0 thei_llvm_fpga_pop_i1_cmp27124_pop32_conv2d3x335 (
        .in_data_in(redist7_sync_together142_aunroll_x_in_c0_eni20_9_tpl_1_q),
        .in_dir(i_llvm_fpga_fanout_i1_c0_ene1570_fanout_adaptor_conv2d3x32_q),
        .in_feedback_in_32(i_llvm_fpga_push_i1_cmp27124_push32_conv2d3x336_out_feedback_out_32),
        .in_feedback_valid_in_32(i_llvm_fpga_push_i1_cmp27124_push32_conv2d3x336_out_feedback_valid_out_32),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg19_q),
        .out_data_out(i_llvm_fpga_pop_i1_cmp27124_pop32_conv2d3x335_out_data_out),
        .out_feedback_stall_out_32(i_llvm_fpga_pop_i1_cmp27124_pop32_conv2d3x335_out_feedback_stall_out_32),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg17(REG,130)@1 + 1
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

    // valid_fanout_reg18(REG,131)@1 + 1
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

    // i_llvm_fpga_push_i1_cmp26119_push31_conv2d3x334(BLACKBOX,79)@2
    // out out_feedback_out_31@20000000
    // out out_feedback_valid_out_31@20000000
    conv2d3x3_i_llvm_fpga_push_i1_cmp26119_push31_0 thei_llvm_fpga_push_i1_cmp26119_push31_conv2d3x334 (
        .in_data_in(i_llvm_fpga_pop_i1_cmp26119_pop31_conv2d3x333_out_data_out),
        .in_fanout_adaptor(i_llvm_fpga_fanout_i1_fanout_adaptor_conv2d3x313_q),
        .in_feedback_stall_in_31(i_llvm_fpga_pop_i1_cmp26119_pop31_conv2d3x333_out_feedback_stall_out_31),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg18_q),
        .out_data_out(),
        .out_feedback_out_31(i_llvm_fpga_push_i1_cmp26119_push31_conv2d3x334_out_feedback_out_31),
        .out_feedback_valid_out_31(i_llvm_fpga_push_i1_cmp26119_push31_conv2d3x334_out_feedback_valid_out_31),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i1_cmp26119_pop31_conv2d3x333(BLACKBOX,62)@2
    // out out_feedback_stall_out_31@20000000
    conv2d3x3_i_llvm_fpga_pop_i1_cmp26119_pop31_0 thei_llvm_fpga_pop_i1_cmp26119_pop31_conv2d3x333 (
        .in_data_in(redist6_sync_together142_aunroll_x_in_c0_eni20_8_tpl_1_q),
        .in_dir(i_llvm_fpga_fanout_i1_c0_ene1570_fanout_adaptor_conv2d3x32_q),
        .in_feedback_in_31(i_llvm_fpga_push_i1_cmp26119_push31_conv2d3x334_out_feedback_out_31),
        .in_feedback_valid_in_31(i_llvm_fpga_push_i1_cmp26119_push31_conv2d3x334_out_feedback_valid_out_31),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg17_q),
        .out_data_out(i_llvm_fpga_pop_i1_cmp26119_pop31_conv2d3x333_out_data_out),
        .out_feedback_stall_out_31(i_llvm_fpga_pop_i1_cmp26119_pop31_conv2d3x333_out_feedback_stall_out_31),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg15(REG,128)@1 + 1
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

    // valid_fanout_reg16(REG,129)@1 + 1
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

    // i_llvm_fpga_push_i32_mul56114_push30_conv2d3x332(BLACKBOX,90)@2
    // out out_feedback_out_30@20000000
    // out out_feedback_valid_out_30@20000000
    conv2d3x3_i_llvm_fpga_push_i32_mul56114_push30_0 thei_llvm_fpga_push_i32_mul56114_push30_conv2d3x332 (
        .in_data_in(i_llvm_fpga_pop_i32_mul56114_pop30_conv2d3x331_out_data_out),
        .in_fanout_adaptor(i_llvm_fpga_fanout_i1_fanout_adaptor_conv2d3x313_q),
        .in_feedback_stall_in_30(i_llvm_fpga_pop_i32_mul56114_pop30_conv2d3x331_out_feedback_stall_out_30),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg16_q),
        .out_data_out(),
        .out_feedback_out_30(i_llvm_fpga_push_i32_mul56114_push30_conv2d3x332_out_feedback_out_30),
        .out_feedback_valid_out_30(i_llvm_fpga_push_i32_mul56114_push30_conv2d3x332_out_feedback_valid_out_30),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_mul56114_pop30_conv2d3x331(BLACKBOX,72)@2
    // out out_feedback_stall_out_30@20000000
    conv2d3x3_i_llvm_fpga_pop_i32_mul56114_pop30_0 thei_llvm_fpga_pop_i32_mul56114_pop30_conv2d3x331 (
        .in_data_in(redist5_sync_together142_aunroll_x_in_c0_eni20_7_tpl_1_q),
        .in_dir(i_llvm_fpga_fanout_i1_c0_ene1570_fanout_adaptor_conv2d3x32_q),
        .in_feedback_in_30(i_llvm_fpga_push_i32_mul56114_push30_conv2d3x332_out_feedback_out_30),
        .in_feedback_valid_in_30(i_llvm_fpga_push_i32_mul56114_push30_conv2d3x332_out_feedback_valid_out_30),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg15_q),
        .out_data_out(i_llvm_fpga_pop_i32_mul56114_pop30_conv2d3x331_out_data_out),
        .out_feedback_stall_out_30(i_llvm_fpga_pop_i32_mul56114_pop30_conv2d3x331_out_feedback_stall_out_30),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg13(REG,126)@1 + 1
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

    // valid_fanout_reg14(REG,127)@1 + 1
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

    // i_llvm_fpga_push_i32_add109_push29_conv2d3x330(BLACKBOX,88)@2
    // out out_feedback_out_29@20000000
    // out out_feedback_valid_out_29@20000000
    conv2d3x3_i_llvm_fpga_push_i32_add109_push29_0 thei_llvm_fpga_push_i32_add109_push29_conv2d3x330 (
        .in_data_in(i_llvm_fpga_pop_i32_add109_pop29_conv2d3x329_out_data_out),
        .in_fanout_adaptor(i_llvm_fpga_fanout_i1_fanout_adaptor_conv2d3x313_q),
        .in_feedback_stall_in_29(i_llvm_fpga_pop_i32_add109_pop29_conv2d3x329_out_feedback_stall_out_29),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg14_q),
        .out_data_out(),
        .out_feedback_out_29(i_llvm_fpga_push_i32_add109_push29_conv2d3x330_out_feedback_out_29),
        .out_feedback_valid_out_29(i_llvm_fpga_push_i32_add109_push29_conv2d3x330_out_feedback_valid_out_29),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_add109_pop29_conv2d3x329(BLACKBOX,70)@2
    // out out_feedback_stall_out_29@20000000
    conv2d3x3_i_llvm_fpga_pop_i32_add109_pop29_0 thei_llvm_fpga_pop_i32_add109_pop29_conv2d3x329 (
        .in_data_in(redist4_sync_together142_aunroll_x_in_c0_eni20_6_tpl_1_q),
        .in_dir(i_llvm_fpga_fanout_i1_c0_ene1570_fanout_adaptor_conv2d3x32_q),
        .in_feedback_in_29(i_llvm_fpga_push_i32_add109_push29_conv2d3x330_out_feedback_out_29),
        .in_feedback_valid_in_29(i_llvm_fpga_push_i32_add109_push29_conv2d3x330_out_feedback_valid_out_29),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg13_q),
        .out_data_out(i_llvm_fpga_pop_i32_add109_pop29_conv2d3x329_out_data_out),
        .out_feedback_stall_out_29(i_llvm_fpga_pop_i32_add109_pop29_conv2d3x329_out_feedback_stall_out_29),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg11(REG,124)@1 + 1
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

    // valid_fanout_reg12(REG,125)@1 + 1
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

    // i_llvm_fpga_push_i1_notcmp81104_push28_conv2d3x328(BLACKBOX,86)@2
    // out out_feedback_out_28@20000000
    // out out_feedback_valid_out_28@20000000
    conv2d3x3_i_llvm_fpga_push_i1_notcmp81104_push28_0 thei_llvm_fpga_push_i1_notcmp81104_push28_conv2d3x328 (
        .in_data_in(i_llvm_fpga_pop_i1_notcmp81104_pop28_conv2d3x327_out_data_out),
        .in_fanout_adaptor(i_llvm_fpga_fanout_i1_fanout_adaptor_conv2d3x313_q),
        .in_feedback_stall_in_28(i_llvm_fpga_pop_i1_notcmp81104_pop28_conv2d3x327_out_feedback_stall_out_28),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg12_q),
        .out_data_out(),
        .out_feedback_out_28(i_llvm_fpga_push_i1_notcmp81104_push28_conv2d3x328_out_feedback_out_28),
        .out_feedback_valid_out_28(i_llvm_fpga_push_i1_notcmp81104_push28_conv2d3x328_out_feedback_valid_out_28),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i1_notcmp81104_pop28_conv2d3x327(BLACKBOX,69)@2
    // out out_feedback_stall_out_28@20000000
    conv2d3x3_i_llvm_fpga_pop_i1_notcmp81104_pop28_0 thei_llvm_fpga_pop_i1_notcmp81104_pop28_conv2d3x327 (
        .in_data_in(redist3_sync_together142_aunroll_x_in_c0_eni20_5_tpl_1_q),
        .in_dir(i_llvm_fpga_fanout_i1_c0_ene1570_fanout_adaptor_conv2d3x32_q),
        .in_feedback_in_28(i_llvm_fpga_push_i1_notcmp81104_push28_conv2d3x328_out_feedback_out_28),
        .in_feedback_valid_in_28(i_llvm_fpga_push_i1_notcmp81104_push28_conv2d3x328_out_feedback_valid_out_28),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg11_q),
        .out_data_out(i_llvm_fpga_pop_i1_notcmp81104_pop28_conv2d3x327_out_data_out),
        .out_feedback_stall_out_28(i_llvm_fpga_pop_i1_notcmp81104_pop28_conv2d3x327_out_feedback_stall_out_28),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg9(REG,122)@1 + 1
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

    // valid_fanout_reg10(REG,123)@1 + 1
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

    // i_llvm_fpga_push_f32_lm2598_push27_conv2d3x326(BLACKBOX,78)@2
    // out out_feedback_out_27@20000000
    // out out_feedback_valid_out_27@20000000
    conv2d3x3_i_llvm_fpga_push_f32_lm2598_push27_0 thei_llvm_fpga_push_f32_lm2598_push27_conv2d3x326 (
        .in_data_in(i_llvm_fpga_pop_f32_lm2598_pop27_conv2d3x325_out_data_out),
        .in_fanout_adaptor(i_llvm_fpga_fanout_i1_fanout_adaptor_conv2d3x313_q),
        .in_feedback_stall_in_27(i_llvm_fpga_pop_f32_lm2598_pop27_conv2d3x325_out_feedback_stall_out_27),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg10_q),
        .out_data_out(),
        .out_feedback_out_27(i_llvm_fpga_push_f32_lm2598_push27_conv2d3x326_out_feedback_out_27),
        .out_feedback_valid_out_27(i_llvm_fpga_push_f32_lm2598_push27_conv2d3x326_out_feedback_valid_out_27),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_f32_lm2598_pop27_conv2d3x325(BLACKBOX,61)@2
    // out out_feedback_stall_out_27@20000000
    conv2d3x3_i_llvm_fpga_pop_f32_lm2598_pop27_0 thei_llvm_fpga_pop_f32_lm2598_pop27_conv2d3x325 (
        .in_data_in(redist2_sync_together142_aunroll_x_in_c0_eni20_4_tpl_1_q),
        .in_dir(i_llvm_fpga_fanout_i1_c0_ene1570_fanout_adaptor_conv2d3x32_q),
        .in_feedback_in_27(i_llvm_fpga_push_f32_lm2598_push27_conv2d3x326_out_feedback_out_27),
        .in_feedback_valid_in_27(i_llvm_fpga_push_f32_lm2598_push27_conv2d3x326_out_feedback_valid_out_27),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg9_q),
        .out_data_out(i_llvm_fpga_pop_f32_lm2598_pop27_conv2d3x325_out_data_out),
        .out_feedback_stall_out_27(i_llvm_fpga_pop_f32_lm2598_pop27_conv2d3x325_out_feedback_stall_out_27),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg7(REG,120)@1 + 1
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

    // valid_fanout_reg8(REG,121)@1 + 1
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

    // i_llvm_fpga_push_p1024f32_output_im_addr_068_replace_phi92_push26_conv2d3x324(BLACKBOX,95)@2
    // out out_feedback_out_26@20000000
    // out out_feedback_valid_out_26@20000000
    conv2d3x3_i_llvm_fpga_push_p1024f32_outp0000place_phi92_push26_0 thei_llvm_fpga_push_p1024f32_output_im_addr_068_replace_phi92_push26_conv2d3x324 (
        .in_data_in(i_llvm_fpga_pop_p1024f32_output_im_addr_068_replace_phi92_pop26_conv2d3x323_out_data_out),
        .in_fanout_adaptor(i_llvm_fpga_fanout_i1_fanout_adaptor_conv2d3x313_q),
        .in_feedback_stall_in_26(i_llvm_fpga_pop_p1024f32_output_im_addr_068_replace_phi92_pop26_conv2d3x323_out_feedback_stall_out_26),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg8_q),
        .out_data_out(),
        .out_feedback_out_26(i_llvm_fpga_push_p1024f32_output_im_addr_068_replace_phi92_push26_conv2d3x324_out_feedback_out_26),
        .out_feedback_valid_out_26(i_llvm_fpga_push_p1024f32_output_im_addr_068_replace_phi92_push26_conv2d3x324_out_feedback_valid_out_26),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_p1024f32_output_im_addr_068_replace_phi92_pop26_conv2d3x323(BLACKBOX,77)@2
    // out out_feedback_stall_out_26@20000000
    conv2d3x3_i_llvm_fpga_pop_p1024f32_outpu0000eplace_phi92_pop26_0 thei_llvm_fpga_pop_p1024f32_output_im_addr_068_replace_phi92_pop26_conv2d3x323 (
        .in_data_in(redist1_sync_together142_aunroll_x_in_c0_eni20_3_tpl_1_q),
        .in_dir(i_llvm_fpga_fanout_i1_c0_ene1570_fanout_adaptor_conv2d3x32_q),
        .in_feedback_in_26(i_llvm_fpga_push_p1024f32_output_im_addr_068_replace_phi92_push26_conv2d3x324_out_feedback_out_26),
        .in_feedback_valid_in_26(i_llvm_fpga_push_p1024f32_output_im_addr_068_replace_phi92_push26_conv2d3x324_out_feedback_valid_out_26),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg7_q),
        .out_data_out(i_llvm_fpga_pop_p1024f32_output_im_addr_068_replace_phi92_pop26_conv2d3x323_out_data_out),
        .out_feedback_stall_out_26(i_llvm_fpga_pop_p1024f32_output_im_addr_068_replace_phi92_pop26_conv2d3x323_out_feedback_stall_out_26),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg5(REG,118)@1 + 1
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

    // valid_fanout_reg6(REG,119)@1 + 1
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

    // i_llvm_fpga_push_p1024f32_filter_weight_addr_067_replace_phi86_push25_conv2d3x322(BLACKBOX,94)@2
    // out out_feedback_out_25@20000000
    // out out_feedback_valid_out_25@20000000
    conv2d3x3_i_llvm_fpga_push_p1024f32_filt0000place_phi86_push25_0 thei_llvm_fpga_push_p1024f32_filter_weight_addr_067_replace_phi86_push25_conv2d3x322 (
        .in_data_in(i_llvm_fpga_pop_p1024f32_filter_weight_addr_067_replace_phi86_pop25_conv2d3x321_out_data_out),
        .in_fanout_adaptor(i_llvm_fpga_fanout_i1_fanout_adaptor_conv2d3x313_q),
        .in_feedback_stall_in_25(i_llvm_fpga_pop_p1024f32_filter_weight_addr_067_replace_phi86_pop25_conv2d3x321_out_feedback_stall_out_25),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg6_q),
        .out_data_out(),
        .out_feedback_out_25(i_llvm_fpga_push_p1024f32_filter_weight_addr_067_replace_phi86_push25_conv2d3x322_out_feedback_out_25),
        .out_feedback_valid_out_25(i_llvm_fpga_push_p1024f32_filter_weight_addr_067_replace_phi86_push25_conv2d3x322_out_feedback_valid_out_25),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_p1024f32_filter_weight_addr_067_replace_phi86_pop25_conv2d3x321(BLACKBOX,76)@2
    // out out_feedback_stall_out_25@20000000
    conv2d3x3_i_llvm_fpga_pop_p1024f32_filte0000eplace_phi86_pop25_0 thei_llvm_fpga_pop_p1024f32_filter_weight_addr_067_replace_phi86_pop25_conv2d3x321 (
        .in_data_in(redist0_sync_together142_aunroll_x_in_c0_eni20_2_tpl_1_q),
        .in_dir(i_llvm_fpga_fanout_i1_c0_ene1570_fanout_adaptor_conv2d3x32_q),
        .in_feedback_in_25(i_llvm_fpga_push_p1024f32_filter_weight_addr_067_replace_phi86_push25_conv2d3x322_out_feedback_out_25),
        .in_feedback_valid_in_25(i_llvm_fpga_push_p1024f32_filter_weight_addr_067_replace_phi86_push25_conv2d3x322_out_feedback_valid_out_25),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_data_out(i_llvm_fpga_pop_p1024f32_filter_weight_addr_067_replace_phi86_pop25_conv2d3x321_out_data_out),
        .out_feedback_stall_out_25(i_llvm_fpga_pop_p1024f32_filter_weight_addr_067_replace_phi86_pop25_conv2d3x321_out_feedback_stall_out_25),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg3(REG,116)@1 + 1
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

    // valid_fanout_reg4(REG,117)@1 + 1
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

    // c_i32_197(CONSTANT,48)
    assign c_i32_197_q = $unsigned(32'b00000000000000000000000000000001);

    // i_inc61_conv2d3x319(ADD,55)@2
    assign i_inc61_conv2d3x319_a = {1'b0, i_llvm_fpga_pop_i32_j_061_pop24_conv2d3x318_out_data_out};
    assign i_inc61_conv2d3x319_b = {1'b0, c_i32_197_q};
    assign i_inc61_conv2d3x319_o = $unsigned(i_inc61_conv2d3x319_a) + $unsigned(i_inc61_conv2d3x319_b);
    assign i_inc61_conv2d3x319_q = i_inc61_conv2d3x319_o[32:0];

    // bgTrunc_i_inc61_conv2d3x319_sel_x(BITSELECT,109)@2
    assign bgTrunc_i_inc61_conv2d3x319_sel_x_b = i_inc61_conv2d3x319_q[31:0];

    // i_llvm_fpga_push_i32_j_061_push24_conv2d3x320(BLACKBOX,89)@2
    // out out_feedback_out_24@20000000
    // out out_feedback_valid_out_24@20000000
    conv2d3x3_i_llvm_fpga_push_i32_j_061_push24_0 thei_llvm_fpga_push_i32_j_061_push24_conv2d3x320 (
        .in_data_in(bgTrunc_i_inc61_conv2d3x319_sel_x_b),
        .in_fanout_adaptor(i_llvm_fpga_fanout_i1_fanout_adaptor_conv2d3x313_q),
        .in_feedback_stall_in_24(i_llvm_fpga_pop_i32_j_061_pop24_conv2d3x318_out_feedback_stall_out_24),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_data_out(),
        .out_feedback_out_24(i_llvm_fpga_push_i32_j_061_push24_conv2d3x320_out_feedback_out_24),
        .out_feedback_valid_out_24(i_llvm_fpga_push_i32_j_061_push24_conv2d3x320_out_feedback_valid_out_24),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_096(CONSTANT,47)
    assign c_i32_096_q = $unsigned(32'b00000000000000000000000000000000);

    // i_llvm_fpga_pop_i32_j_061_pop24_conv2d3x318(BLACKBOX,71)@2
    // out out_feedback_stall_out_24@20000000
    conv2d3x3_i_llvm_fpga_pop_i32_j_061_pop24_0 thei_llvm_fpga_pop_i32_j_061_pop24_conv2d3x318 (
        .in_data_in(c_i32_096_q),
        .in_dir(i_llvm_fpga_fanout_i1_c0_ene1570_fanout_adaptor_conv2d3x32_q),
        .in_feedback_in_24(i_llvm_fpga_push_i32_j_061_push24_conv2d3x320_out_feedback_out_24),
        .in_feedback_valid_in_24(i_llvm_fpga_push_i32_j_061_push24_conv2d3x320_out_feedback_valid_out_24),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_data_out(i_llvm_fpga_pop_i32_j_061_pop24_conv2d3x318_out_data_out),
        .out_feedback_stall_out_24(i_llvm_fpga_pop_i32_j_061_pop24_conv2d3x318_out_feedback_stall_out_24),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_notcmp73_conv2d3x314(LOGICAL,98)@2
    assign i_notcmp73_conv2d3x314_q = i_llvm_fpga_fanout_i1_fanout_adaptor_conv2d3x313_q ^ VCC_q;

    // redist19_i_unnamed_conv2d3x312_q_1(DELAY,171)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist19_i_unnamed_conv2d3x312_q_1_q <= '0;
        end
        else
        begin
            redist19_i_unnamed_conv2d3x312_q_1_q <= $unsigned(i_unnamed_conv2d3x312_q);
        end
    end

    // valid_fanout_reg2(REG,115)@1 + 1
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

    // i_llvm_fpga_sync_buffer_i32_pad_sync_buffer_conv2d3x38(BLACKBOX,96)@0
    // in in_i_dependence@2
    // in in_valid_in@2
    // out out_buffer_out@2
    // out out_valid_out@2
    conv2d3x3_i_llvm_fpga_sync_buffer_i32_pad_sync_buffer_0 thei_llvm_fpga_sync_buffer_i32_pad_sync_buffer_conv2d3x38 (
        .in_buffer_in(in_pad),
        .in_i_dependence(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_buffer_out(i_llvm_fpga_sync_buffer_i32_pad_sync_buffer_conv2d3x38_out_buffer_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg1(REG,114)@1 + 1
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

    // i_llvm_fpga_sync_buffer_i32_stride_sync_buffer_conv2d3x37(BLACKBOX,97)@0
    // in in_i_dependence@2
    // in in_valid_in@2
    // out out_buffer_out@2
    // out out_valid_out@2
    conv2d3x3_i_llvm_fpga_sync_buffer_i32_stride_sync_buffer_0 thei_llvm_fpga_sync_buffer_i32_stride_sync_buffer_conv2d3x37 (
        .in_buffer_in(in_stride),
        .in_i_dependence(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_buffer_out(i_llvm_fpga_sync_buffer_i32_stride_sync_buffer_conv2d3x37_out_buffer_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // sync_out_aunroll_x(GPOUT,111)@2
    assign out_c0_exi39_0_tpl = GND_q;
    assign out_c0_exi39_1_tpl = i_llvm_fpga_sync_buffer_i32_stride_sync_buffer_conv2d3x37_out_buffer_out;
    assign out_c0_exi39_2_tpl = i_llvm_fpga_sync_buffer_i32_pad_sync_buffer_conv2d3x38_out_buffer_out;
    assign out_c0_exi39_3_tpl = redist19_i_unnamed_conv2d3x312_q_1_q;
    assign out_c0_exi39_4_tpl = i_notcmp73_conv2d3x314_q;
    assign out_c0_exi39_5_tpl = i_llvm_fpga_pop_i32_j_061_pop24_conv2d3x318_out_data_out;
    assign out_c0_exi39_6_tpl = i_llvm_fpga_pop_p1024f32_filter_weight_addr_067_replace_phi86_pop25_conv2d3x321_out_data_out;
    assign out_c0_exi39_7_tpl = i_llvm_fpga_pop_p1024f32_output_im_addr_068_replace_phi92_pop26_conv2d3x323_out_data_out;
    assign out_c0_exi39_8_tpl = i_llvm_fpga_pop_f32_lm2598_pop27_conv2d3x325_out_data_out;
    assign out_c0_exi39_9_tpl = i_llvm_fpga_pop_i1_notcmp81104_pop28_conv2d3x327_out_data_out;
    assign out_c0_exi39_10_tpl = i_llvm_fpga_pop_i32_add109_pop29_conv2d3x329_out_data_out;
    assign out_c0_exi39_11_tpl = i_llvm_fpga_pop_i32_mul56114_pop30_conv2d3x331_out_data_out;
    assign out_c0_exi39_12_tpl = i_llvm_fpga_pop_i1_cmp26119_pop31_conv2d3x333_out_data_out;
    assign out_c0_exi39_13_tpl = i_llvm_fpga_pop_i1_cmp27124_pop32_conv2d3x335_out_data_out;
    assign out_c0_exi39_14_tpl = i_llvm_fpga_pop_i32_sub_1129_pop33_conv2d3x337_out_data_out;
    assign out_c0_exi39_15_tpl = i_llvm_fpga_pop_i1_cmp26_1134_pop34_conv2d3x339_out_data_out;
    assign out_c0_exi39_16_tpl = i_llvm_fpga_pop_i1_cmp27_1139_pop35_conv2d3x341_out_data_out;
    assign out_c0_exi39_17_tpl = i_llvm_fpga_pop_i32_sub_2144_pop36_conv2d3x343_out_data_out;
    assign out_c0_exi39_18_tpl = i_llvm_fpga_pop_i1_cmp26_2149_pop37_conv2d3x345_out_data_out;
    assign out_c0_exi39_19_tpl = i_llvm_fpga_pop_i1_cmp27_2154_pop38_conv2d3x347_out_data_out;
    assign out_c0_exi39_20_tpl = i_llvm_fpga_pop_i1_notcmp77159_pop39_conv2d3x349_out_data_out;
    assign out_c0_exi39_21_tpl = redist15_sync_together142_aunroll_x_in_c0_eni20_17_tpl_1_q;
    assign out_c0_exi39_22_tpl = redist16_sync_together142_aunroll_x_in_c0_eni20_18_tpl_1_q;
    assign out_c0_exi39_23_tpl = redist17_sync_together142_aunroll_x_in_c0_eni20_19_tpl_1_q;
    assign out_c0_exi39_24_tpl = redist18_sync_together142_aunroll_x_in_c0_eni20_20_tpl_1_q;
    assign out_c0_exi39_25_tpl = redist4_sync_together142_aunroll_x_in_c0_eni20_6_tpl_1_q;
    assign out_c0_exi39_26_tpl = redist5_sync_together142_aunroll_x_in_c0_eni20_7_tpl_1_q;
    assign out_c0_exi39_27_tpl = redist6_sync_together142_aunroll_x_in_c0_eni20_8_tpl_1_q;
    assign out_c0_exi39_28_tpl = redist7_sync_together142_aunroll_x_in_c0_eni20_9_tpl_1_q;
    assign out_c0_exi39_29_tpl = redist8_sync_together142_aunroll_x_in_c0_eni20_10_tpl_1_q;
    assign out_c0_exi39_30_tpl = redist9_sync_together142_aunroll_x_in_c0_eni20_11_tpl_1_q;
    assign out_c0_exi39_31_tpl = redist10_sync_together142_aunroll_x_in_c0_eni20_12_tpl_1_q;
    assign out_c0_exi39_32_tpl = redist11_sync_together142_aunroll_x_in_c0_eni20_13_tpl_1_q;
    assign out_c0_exi39_33_tpl = redist12_sync_together142_aunroll_x_in_c0_eni20_14_tpl_1_q;
    assign out_c0_exi39_34_tpl = redist13_sync_together142_aunroll_x_in_c0_eni20_15_tpl_1_q;
    assign out_c0_exi39_35_tpl = redist14_sync_together142_aunroll_x_in_c0_eni20_16_tpl_1_q;
    assign out_c0_exi39_36_tpl = redist0_sync_together142_aunroll_x_in_c0_eni20_2_tpl_1_q;
    assign out_c0_exi39_37_tpl = redist1_sync_together142_aunroll_x_in_c0_eni20_3_tpl_1_q;
    assign out_c0_exi39_38_tpl = redist2_sync_together142_aunroll_x_in_c0_eni20_4_tpl_1_q;
    assign out_c0_exi39_39_tpl = redist3_sync_together142_aunroll_x_in_c0_eni20_5_tpl_1_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_conv2d3x311 = GND_q;

endmodule
