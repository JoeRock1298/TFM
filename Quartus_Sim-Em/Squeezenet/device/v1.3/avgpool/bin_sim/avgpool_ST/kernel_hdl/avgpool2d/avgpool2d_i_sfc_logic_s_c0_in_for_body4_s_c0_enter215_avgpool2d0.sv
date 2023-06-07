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

// SystemVerilog created from avgpool2d_i_sfc_logic_s_c0_in_for_body4_s_c0_enter215_avgpool2d0
// SystemVerilog created on Mon Jun  5 12:30:27 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module avgpool2d_i_sfc_logic_s_c0_in_for_body4_s_c0_enter215_avgpool2d0 (
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_avgpool2d6_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_avgpool2d6_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [63:0] in_input_im,
    output wire [0:0] out_c0_exi8_0_tpl,
    output wire [0:0] out_c0_exi8_1_tpl,
    output wire [0:0] out_c0_exi8_2_tpl,
    output wire [31:0] out_c0_exi8_3_tpl,
    output wire [63:0] out_c0_exi8_4_tpl,
    output wire [0:0] out_c0_exi8_5_tpl,
    output wire [0:0] out_c0_exi8_6_tpl,
    output wire [0:0] out_c0_exi8_7_tpl,
    output wire [0:0] out_c0_exi8_8_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_avgpool2d0,
    input wire [0:0] in_c0_eni3_0_tpl,
    input wire [0:0] in_c0_eni3_1_tpl,
    input wire [31:0] in_c0_eni3_2_tpl,
    input wire [0:0] in_c0_eni3_3_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [1:0] c_i2_153_q;
    wire [31:0] c_i32_055_q;
    wire [31:0] c_i32_157_q;
    wire [8:0] c_i9_160_q;
    wire [8:0] c_i9_16758_q;
    wire [0:0] i_acc_control_signal_avgpool2d20_q;
    wire [1:0] i_arrayidx1_avgpool2d19_vt_const_1_q;
    wire [63:0] i_arrayidx1_avgpool2d19_vt_join_q;
    wire [61:0] i_arrayidx1_avgpool2d19_vt_select_63_b;
    wire [1:0] i_cleanups_shl_avgpool2d5_vt_join_q;
    wire [0:0] i_cleanups_shl_avgpool2d5_vt_select_1_b;
    wire [32:0] i_dot_prod_add_avgpool2d16_a;
    wire [32:0] i_dot_prod_add_avgpool2d16_b;
    logic [32:0] i_dot_prod_add_avgpool2d16_o;
    wire [32:0] i_dot_prod_add_avgpool2d16_q;
    wire [0:0] i_first_cleanup_xor_avgpool2d4_q;
    wire [9:0] i_fpga_indvars_iv_next_avgpool2d31_a;
    wire [9:0] i_fpga_indvars_iv_next_avgpool2d31_b;
    logic [9:0] i_fpga_indvars_iv_next_avgpool2d31_o;
    wire [9:0] i_fpga_indvars_iv_next_avgpool2d31_q;
    wire [63:0] i_idxprom_avgpool2d17_vt_join_q;
    wire [31:0] i_idxprom_avgpool2d17_vt_select_31_b;
    wire [32:0] i_inc_avgpool2d21_a;
    wire [32:0] i_inc_avgpool2d21_b;
    logic [32:0] i_inc_avgpool2d21_o;
    wire [32:0] i_inc_avgpool2d21_q;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_avgpool2d6_out_data_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_avgpool2d6_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_avgpool2d6_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_avgpool2d6_out_initeration_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_avgpool2d6_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_avgpool2d6_out_pipeline_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp17_pop12_avgpool2d34_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp17_pop12_avgpool2d34_out_feedback_stall_out_12;
    wire [1:0] i_llvm_fpga_pop_i2_cleanups_pop11_avgpool2d2_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i2_cleanups_pop11_avgpool2d2_out_feedback_stall_out_11;
    wire [1:0] i_llvm_fpga_pop_i2_initerations_pop10_avgpool2d7_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i2_initerations_pop10_avgpool2d7_out_feedback_stall_out_10;
    wire [31:0] i_llvm_fpga_pop_i32_class_index_012_pop68_pop13_avgpool2d12_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_class_index_012_pop68_pop13_avgpool2d12_out_feedback_stall_out_13;
    wire [31:0] i_llvm_fpga_pop_i32_i_011_pop8_avgpool2d14_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_i_011_pop8_avgpool2d14_out_feedback_stall_out_8;
    wire [8:0] i_llvm_fpga_pop_i9_fpga_indvars_iv_pop7_avgpool2d23_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i9_fpga_indvars_iv_pop7_avgpool2d23_out_feedback_stall_out_7;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_avgpool2d11_out_feedback_out_1;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_avgpool2d11_out_feedback_valid_out_1;
    wire [0:0] i_llvm_fpga_push_i1_notcmp17_push12_avgpool2d35_out_feedback_out_12;
    wire [0:0] i_llvm_fpga_push_i1_notcmp17_push12_avgpool2d35_out_feedback_valid_out_12;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_avgpool2d27_out_feedback_out_2;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_avgpool2d27_out_feedback_valid_out_2;
    wire [7:0] i_llvm_fpga_push_i2_cleanups_push11_avgpool2d30_out_feedback_out_11;
    wire [0:0] i_llvm_fpga_push_i2_cleanups_push11_avgpool2d30_out_feedback_valid_out_11;
    wire [7:0] i_llvm_fpga_push_i2_initerations_push10_avgpool2d9_out_feedback_out_10;
    wire [0:0] i_llvm_fpga_push_i2_initerations_push10_avgpool2d9_out_feedback_valid_out_10;
    wire [31:0] i_llvm_fpga_push_i32_class_index_012_pop68_push13_avgpool2d13_out_feedback_out_13;
    wire [0:0] i_llvm_fpga_push_i32_class_index_012_pop68_push13_avgpool2d13_out_feedback_valid_out_13;
    wire [31:0] i_llvm_fpga_push_i32_i_011_push8_avgpool2d22_out_feedback_out_8;
    wire [0:0] i_llvm_fpga_push_i32_i_011_push8_avgpool2d22_out_feedback_valid_out_8;
    wire [15:0] i_llvm_fpga_push_i9_fpga_indvars_iv_push7_avgpool2d32_out_feedback_out_7;
    wire [0:0] i_llvm_fpga_push_i9_fpga_indvars_iv_push7_avgpool2d32_out_feedback_valid_out_7;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer_avgpool2d18_out_buffer_out;
    wire [9:0] i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer_avgpool2d18_vt_const_9_q;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer_avgpool2d18_vt_join_q;
    wire [53:0] i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer_avgpool2d18_vt_select_63_b;
    wire [0:0] i_masked_avgpool2d33_qi;
    reg [0:0] i_masked_avgpool2d33_q;
    wire [0:0] i_next_cleanups_avgpool2d29_s;
    reg [1:0] i_next_cleanups_avgpool2d29_q;
    wire [1:0] i_next_initerations_avgpool2d8_vt_join_q;
    wire [0:0] i_next_initerations_avgpool2d8_vt_select_0_b;
    wire [0:0] i_notcmp_avgpool2d26_q;
    wire [0:0] i_or_avgpool2d28_q;
    wire [31:0] bgTrunc_i_dot1_prod_avgpool2d15_sel_x_b;
    wire [31:0] bgTrunc_i_dot_prod_add_avgpool2d16_sel_x_b;
    wire [8:0] bgTrunc_i_fpga_indvars_iv_next_avgpool2d31_sel_x_b;
    wire [31:0] bgTrunc_i_inc_avgpool2d21_sel_x_b;
    wire [64:0] i_arrayidx1_avgpool2d0_add_x_a;
    wire [64:0] i_arrayidx1_avgpool2d0_add_x_b;
    logic [64:0] i_arrayidx1_avgpool2d0_add_x_o;
    wire [64:0] i_arrayidx1_avgpool2d0_add_x_q;
    wire [61:0] i_arrayidx1_avgpool2d0_narrow_x_b;
    wire [63:0] i_arrayidx1_avgpool2d0_shift_join_x_q;
    wire [63:0] i_arrayidx1_avgpool2d0_dupName_0_trunc_sel_x_b;
    wire [63:0] i_dot1_prod_avgpool2d15_extender_x_q;
    wire [23:0] i_dot1_prod_avgpool2d15_multconst_x_q;
    wire [0:0] i_first_cleanup_avgpool2d3_sel_x_b;
    wire [63:0] i_idxprom_avgpool2d17_sel_x_b;
    wire [0:0] i_last_initeration_avgpool2d10_sel_x_b;
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
    wire [39:0] i_dot1_prod_avgpool2d15_sums_align_1_q;
    wire [39:0] i_dot1_prod_avgpool2d15_sums_align_1_qint;
    wire [40:0] i_dot1_prod_avgpool2d15_sums_result_add_0_0_a;
    wire [40:0] i_dot1_prod_avgpool2d15_sums_result_add_0_0_b;
    logic [40:0] i_dot1_prod_avgpool2d15_sums_result_add_0_0_o;
    wire [40:0] i_dot1_prod_avgpool2d15_sums_result_add_0_0_q;
    wire [0:0] i_exitcond_avgpool2d24_cmp_nsign_q;
    wire [0:0] leftShiftStage0Idx1Rng1_uid143_i_cleanups_shl_avgpool2d0_shift_x_in;
    wire [0:0] leftShiftStage0Idx1Rng1_uid143_i_cleanups_shl_avgpool2d0_shift_x_b;
    wire [1:0] leftShiftStage0Idx1_uid144_i_cleanups_shl_avgpool2d0_shift_x_q;
    wire [0:0] leftShiftStage0_uid146_i_cleanups_shl_avgpool2d0_shift_x_s;
    reg [1:0] leftShiftStage0_uid146_i_cleanups_shl_avgpool2d0_shift_x_q;
    wire [0:0] rightShiftStage0Idx1Rng1_uid150_i_next_initerations_avgpool2d0_shift_x_b;
    wire [1:0] rightShiftStage0Idx1_uid152_i_next_initerations_avgpool2d0_shift_x_q;
    wire [0:0] rightShiftStage0_uid154_i_next_initerations_avgpool2d0_shift_x_s;
    reg [1:0] rightShiftStage0_uid154_i_next_initerations_avgpool2d0_shift_x_q;
    wire [1:0] lowRangeB_uid163_i_dot1_prod_avgpool2d15_im0_in;
    wire [1:0] lowRangeB_uid163_i_dot1_prod_avgpool2d15_im0_b;
    wire [11:0] highBBits_uid164_i_dot1_prod_avgpool2d15_im0_b;
    wire [14:0] lev1_a0sumAHighB_uid165_i_dot1_prod_avgpool2d15_im0_a;
    wire [14:0] lev1_a0sumAHighB_uid165_i_dot1_prod_avgpool2d15_im0_b;
    logic [14:0] lev1_a0sumAHighB_uid165_i_dot1_prod_avgpool2d15_im0_o;
    wire [14:0] lev1_a0sumAHighB_uid165_i_dot1_prod_avgpool2d15_im0_q;
    wire [16:0] lev1_a0_uid166_i_dot1_prod_avgpool2d15_im0_q;
    wire [2:0] lowRangeB_uid169_i_dot1_prod_avgpool2d15_im0_in;
    wire [2:0] lowRangeB_uid169_i_dot1_prod_avgpool2d15_im0_b;
    wire [10:0] highBBits_uid170_i_dot1_prod_avgpool2d15_im0_b;
    wire [14:0] lev1_a0sumAHighB_uid171_i_dot1_prod_avgpool2d15_im0_a;
    wire [14:0] lev1_a0sumAHighB_uid171_i_dot1_prod_avgpool2d15_im0_b;
    logic [14:0] lev1_a0sumAHighB_uid171_i_dot1_prod_avgpool2d15_im0_o;
    wire [14:0] lev1_a0sumAHighB_uid171_i_dot1_prod_avgpool2d15_im0_q;
    wire [17:0] lev1_a0_uid172_i_dot1_prod_avgpool2d15_im0_q;
    wire [17:0] NodeSumsumAHighB_uid176_i_dot1_prod_avgpool2d15_im0_a;
    wire [17:0] NodeSumsumAHighB_uid176_i_dot1_prod_avgpool2d15_im0_b;
    logic [17:0] NodeSumsumAHighB_uid176_i_dot1_prod_avgpool2d15_im0_o;
    wire [17:0] NodeSumsumAHighB_uid176_i_dot1_prod_avgpool2d15_im0_q;
    wire [22:0] NodeSum_uid177_i_dot1_prod_avgpool2d15_im0_q;
    wire [21:0] sR_uid180_i_dot1_prod_avgpool2d15_im0_in;
    wire [21:0] sR_uid180_i_dot1_prod_avgpool2d15_im0_b;
    wire [1:0] lowRangeB_uid228_i_dot1_prod_avgpool2d15_im3_in;
    wire [1:0] lowRangeB_uid228_i_dot1_prod_avgpool2d15_im3_b;
    wire [15:0] highBBits_uid229_i_dot1_prod_avgpool2d15_im3_b;
    wire [18:0] lev1_a0sumAHighB_uid230_i_dot1_prod_avgpool2d15_im3_a;
    wire [18:0] lev1_a0sumAHighB_uid230_i_dot1_prod_avgpool2d15_im3_b;
    logic [18:0] lev1_a0sumAHighB_uid230_i_dot1_prod_avgpool2d15_im3_o;
    wire [18:0] lev1_a0sumAHighB_uid230_i_dot1_prod_avgpool2d15_im3_q;
    wire [20:0] lev1_a0_uid231_i_dot1_prod_avgpool2d15_im3_q;
    wire [2:0] lowRangeB_uid234_i_dot1_prod_avgpool2d15_im3_in;
    wire [2:0] lowRangeB_uid234_i_dot1_prod_avgpool2d15_im3_b;
    wire [14:0] highBBits_uid235_i_dot1_prod_avgpool2d15_im3_b;
    wire [18:0] lev1_a0sumAHighB_uid236_i_dot1_prod_avgpool2d15_im3_a;
    wire [18:0] lev1_a0sumAHighB_uid236_i_dot1_prod_avgpool2d15_im3_b;
    logic [18:0] lev1_a0sumAHighB_uid236_i_dot1_prod_avgpool2d15_im3_o;
    wire [18:0] lev1_a0sumAHighB_uid236_i_dot1_prod_avgpool2d15_im3_q;
    wire [21:0] lev1_a0_uid237_i_dot1_prod_avgpool2d15_im3_q;
    wire [21:0] NodeSumsumAHighB_uid241_i_dot1_prod_avgpool2d15_im3_a;
    wire [21:0] NodeSumsumAHighB_uid241_i_dot1_prod_avgpool2d15_im3_b;
    logic [21:0] NodeSumsumAHighB_uid241_i_dot1_prod_avgpool2d15_im3_o;
    wire [21:0] NodeSumsumAHighB_uid241_i_dot1_prod_avgpool2d15_im3_q;
    wire [26:0] NodeSum_uid242_i_dot1_prod_avgpool2d15_im3_q;
    wire [25:0] sR_uid245_i_dot1_prod_avgpool2d15_im3_in;
    wire [25:0] sR_uid245_i_dot1_prod_avgpool2d15_im3_b;
    wire [13:0] i_dot1_prod_avgpool2d15_bs1_merged_bit_select_b;
    wire [17:0] i_dot1_prod_avgpool2d15_bs1_merged_bit_select_c;
    wire [4:0] lowRangeB_uid174_i_dot1_prod_avgpool2d15_im0_merged_bit_select_b;
    wire [12:0] lowRangeB_uid174_i_dot1_prod_avgpool2d15_im0_merged_bit_select_c;
    wire [4:0] lowRangeB_uid239_i_dot1_prod_avgpool2d15_im3_merged_bit_select_b;
    wire [16:0] lowRangeB_uid239_i_dot1_prod_avgpool2d15_im3_merged_bit_select_c;
    reg [25:0] redist0_sR_uid245_i_dot1_prod_avgpool2d15_im3_b_1_q;
    reg [21:0] redist1_sR_uid180_i_dot1_prod_avgpool2d15_im0_b_1_q;
    reg [0:0] redist2_sync_together79_aunroll_x_in_c0_eni3_1_tpl_1_q;
    reg [0:0] redist3_sync_together79_aunroll_x_in_c0_eni3_1_tpl_3_q;
    reg [0:0] redist3_sync_together79_aunroll_x_in_c0_eni3_1_tpl_3_delay_0;
    reg [0:0] redist4_sync_together79_aunroll_x_in_c0_eni3_1_tpl_4_q;
    reg [31:0] redist5_sync_together79_aunroll_x_in_c0_eni3_2_tpl_1_q;
    reg [0:0] redist6_sync_together79_aunroll_x_in_c0_eni3_3_tpl_4_q;
    reg [0:0] redist6_sync_together79_aunroll_x_in_c0_eni3_3_tpl_4_delay_0;
    reg [0:0] redist6_sync_together79_aunroll_x_in_c0_eni3_3_tpl_4_delay_1;
    reg [0:0] redist6_sync_together79_aunroll_x_in_c0_eni3_3_tpl_4_delay_2;
    reg [0:0] redist7_sync_together79_aunroll_x_in_i_valid_1_q;
    reg [0:0] redist8_sync_together79_aunroll_x_in_i_valid_2_q;
    reg [0:0] redist9_sync_together79_aunroll_x_in_i_valid_3_q;
    reg [31:0] redist10_bgTrunc_i_dot_prod_add_avgpool2d16_sel_x_b_1_q;
    reg [0:0] redist11_i_masked_avgpool2d33_q_3_q;
    reg [0:0] redist11_i_masked_avgpool2d33_q_3_delay_0;
    reg [31:0] redist12_i_llvm_fpga_pop_i32_class_index_012_pop68_pop13_avgpool2d12_out_data_out_1_q;
    reg [31:0] redist13_i_llvm_fpga_pop_i32_class_index_012_pop68_pop13_avgpool2d12_out_data_out_3_q;
    reg [31:0] redist13_i_llvm_fpga_pop_i32_class_index_012_pop68_pop13_avgpool2d12_out_data_out_3_delay_0;
    reg [0:0] redist14_i_llvm_fpga_pipeline_keep_going_avgpool2d6_out_data_out_1_q;
    reg [0:0] redist15_i_llvm_fpga_pipeline_keep_going_avgpool2d6_out_data_out_3_q;
    reg [0:0] redist15_i_llvm_fpga_pipeline_keep_going_avgpool2d6_out_data_out_3_delay_0;
    reg [0:0] redist16_i_llvm_fpga_pipeline_keep_going_avgpool2d6_out_data_out_4_q;
    reg [0:0] redist17_i_first_cleanup_xor_avgpool2d4_q_3_q;
    reg [0:0] redist17_i_first_cleanup_xor_avgpool2d4_q_3_delay_0;
    reg [0:0] redist17_i_first_cleanup_xor_avgpool2d4_q_3_delay_1;


    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist7_sync_together79_aunroll_x_in_i_valid_1(DELAY,301)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_sync_together79_aunroll_x_in_i_valid_1_q <= '0;
        end
        else
        begin
            redist7_sync_together79_aunroll_x_in_i_valid_1_q <= $unsigned(in_i_valid);
        end
    end

    // redist14_i_llvm_fpga_pipeline_keep_going_avgpool2d6_out_data_out_1(DELAY,308)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_i_llvm_fpga_pipeline_keep_going_avgpool2d6_out_data_out_1_q <= '0;
        end
        else
        begin
            redist14_i_llvm_fpga_pipeline_keep_going_avgpool2d6_out_data_out_1_q <= $unsigned(i_llvm_fpga_pipeline_keep_going_avgpool2d6_out_data_out);
        end
    end

    // leftShiftStage0Idx1Rng1_uid143_i_cleanups_shl_avgpool2d0_shift_x(BITSELECT,142)@2
    assign leftShiftStage0Idx1Rng1_uid143_i_cleanups_shl_avgpool2d0_shift_x_in = i_llvm_fpga_pop_i2_cleanups_pop11_avgpool2d2_out_data_out[0:0];
    assign leftShiftStage0Idx1Rng1_uid143_i_cleanups_shl_avgpool2d0_shift_x_b = leftShiftStage0Idx1Rng1_uid143_i_cleanups_shl_avgpool2d0_shift_x_in[0:0];

    // leftShiftStage0Idx1_uid144_i_cleanups_shl_avgpool2d0_shift_x(BITJOIN,143)@2
    assign leftShiftStage0Idx1_uid144_i_cleanups_shl_avgpool2d0_shift_x_q = {leftShiftStage0Idx1Rng1_uid143_i_cleanups_shl_avgpool2d0_shift_x_b, GND_q};

    // leftShiftStage0_uid146_i_cleanups_shl_avgpool2d0_shift_x(MUX,145)@2
    assign leftShiftStage0_uid146_i_cleanups_shl_avgpool2d0_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid146_i_cleanups_shl_avgpool2d0_shift_x_s or i_llvm_fpga_pop_i2_cleanups_pop11_avgpool2d2_out_data_out or leftShiftStage0Idx1_uid144_i_cleanups_shl_avgpool2d0_shift_x_q)
    begin
        unique case (leftShiftStage0_uid146_i_cleanups_shl_avgpool2d0_shift_x_s)
            1'b0 : leftShiftStage0_uid146_i_cleanups_shl_avgpool2d0_shift_x_q = i_llvm_fpga_pop_i2_cleanups_pop11_avgpool2d2_out_data_out;
            1'b1 : leftShiftStage0_uid146_i_cleanups_shl_avgpool2d0_shift_x_q = leftShiftStage0Idx1_uid144_i_cleanups_shl_avgpool2d0_shift_x_q;
            default : leftShiftStage0_uid146_i_cleanups_shl_avgpool2d0_shift_x_q = 2'b0;
        endcase
    end

    // i_cleanups_shl_avgpool2d5_vt_select_1(BITSELECT,36)@2
    assign i_cleanups_shl_avgpool2d5_vt_select_1_b = leftShiftStage0_uid146_i_cleanups_shl_avgpool2d0_shift_x_q[1:1];

    // i_cleanups_shl_avgpool2d5_vt_join(BITJOIN,35)@2
    assign i_cleanups_shl_avgpool2d5_vt_join_q = {i_cleanups_shl_avgpool2d5_vt_select_1_b, GND_q};

    // i_first_cleanup_xor_avgpool2d4(LOGICAL,41)@2
    assign i_first_cleanup_xor_avgpool2d4_q = i_first_cleanup_avgpool2d3_sel_x_b ^ VCC_q;

    // i_notcmp_avgpool2d26(LOGICAL,73)@2
    assign i_notcmp_avgpool2d26_q = i_exitcond_avgpool2d24_cmp_nsign_q ^ VCC_q;

    // i_or_avgpool2d28(LOGICAL,74)@2
    assign i_or_avgpool2d28_q = i_notcmp_avgpool2d26_q | i_first_cleanup_xor_avgpool2d4_q;

    // i_next_cleanups_avgpool2d29(MUX,69)@2
    assign i_next_cleanups_avgpool2d29_s = i_or_avgpool2d28_q;
    always @(i_next_cleanups_avgpool2d29_s or i_llvm_fpga_pop_i2_cleanups_pop11_avgpool2d2_out_data_out or i_cleanups_shl_avgpool2d5_vt_join_q)
    begin
        unique case (i_next_cleanups_avgpool2d29_s)
            1'b0 : i_next_cleanups_avgpool2d29_q = i_llvm_fpga_pop_i2_cleanups_pop11_avgpool2d2_out_data_out;
            1'b1 : i_next_cleanups_avgpool2d29_q = i_cleanups_shl_avgpool2d5_vt_join_q;
            default : i_next_cleanups_avgpool2d29_q = 2'b0;
        endcase
    end

    // i_llvm_fpga_push_i2_cleanups_push11_avgpool2d30(BLACKBOX,59)@2
    // out out_feedback_out_11@20000000
    // out out_feedback_valid_out_11@20000000
    avgpool2d_i_llvm_fpga_push_i2_cleanups_push11_0 thei_llvm_fpga_push_i2_cleanups_push11_avgpool2d30 (
        .in_data_in(i_next_cleanups_avgpool2d29_q),
        .in_feedback_stall_in_11(i_llvm_fpga_pop_i2_cleanups_pop11_avgpool2d2_out_feedback_stall_out_11),
        .in_keep_going(redist14_i_llvm_fpga_pipeline_keep_going_avgpool2d6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist7_sync_together79_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_11(i_llvm_fpga_push_i2_cleanups_push11_avgpool2d30_out_feedback_out_11),
        .out_feedback_valid_out_11(i_llvm_fpga_push_i2_cleanups_push11_avgpool2d30_out_feedback_valid_out_11),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist2_sync_together79_aunroll_x_in_c0_eni3_1_tpl_1(DELAY,296)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_sync_together79_aunroll_x_in_c0_eni3_1_tpl_1_q <= '0;
        end
        else
        begin
            redist2_sync_together79_aunroll_x_in_c0_eni3_1_tpl_1_q <= $unsigned(in_c0_eni3_1_tpl);
        end
    end

    // c_i2_153(CONSTANT,23)
    assign c_i2_153_q = $unsigned(2'b01);

    // i_llvm_fpga_pop_i2_cleanups_pop11_avgpool2d2(BLACKBOX,51)@2
    // out out_feedback_stall_out_11@20000000
    avgpool2d_i_llvm_fpga_pop_i2_cleanups_pop11_0 thei_llvm_fpga_pop_i2_cleanups_pop11_avgpool2d2 (
        .in_data_in(c_i2_153_q),
        .in_dir(redist2_sync_together79_aunroll_x_in_c0_eni3_1_tpl_1_q),
        .in_feedback_in_11(i_llvm_fpga_push_i2_cleanups_push11_avgpool2d30_out_feedback_out_11),
        .in_feedback_valid_in_11(i_llvm_fpga_push_i2_cleanups_push11_avgpool2d30_out_feedback_valid_out_11),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist7_sync_together79_aunroll_x_in_i_valid_1_q),
        .out_data_out(i_llvm_fpga_pop_i2_cleanups_pop11_avgpool2d2_out_data_out),
        .out_feedback_stall_out_11(i_llvm_fpga_pop_i2_cleanups_pop11_avgpool2d2_out_feedback_stall_out_11),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_first_cleanup_avgpool2d3_sel_x(BITSELECT,98)@2
    assign i_first_cleanup_avgpool2d3_sel_x_b = i_llvm_fpga_pop_i2_cleanups_pop11_avgpool2d2_out_data_out[0:0];

    // c_i9_160(CONSTANT,27)
    assign c_i9_160_q = $unsigned(9'b111111111);

    // i_fpga_indvars_iv_next_avgpool2d31(ADD,42)@2
    assign i_fpga_indvars_iv_next_avgpool2d31_a = {1'b0, i_llvm_fpga_pop_i9_fpga_indvars_iv_pop7_avgpool2d23_out_data_out};
    assign i_fpga_indvars_iv_next_avgpool2d31_b = {1'b0, c_i9_160_q};
    assign i_fpga_indvars_iv_next_avgpool2d31_o = $unsigned(i_fpga_indvars_iv_next_avgpool2d31_a) + $unsigned(i_fpga_indvars_iv_next_avgpool2d31_b);
    assign i_fpga_indvars_iv_next_avgpool2d31_q = i_fpga_indvars_iv_next_avgpool2d31_o[9:0];

    // bgTrunc_i_fpga_indvars_iv_next_avgpool2d31_sel_x(BITSELECT,82)@2
    assign bgTrunc_i_fpga_indvars_iv_next_avgpool2d31_sel_x_b = i_fpga_indvars_iv_next_avgpool2d31_q[8:0];

    // i_llvm_fpga_push_i9_fpga_indvars_iv_push7_avgpool2d32(BLACKBOX,63)@2
    // out out_feedback_out_7@20000000
    // out out_feedback_valid_out_7@20000000
    avgpool2d_i_llvm_fpga_push_i9_fpga_indvars_iv_push7_0 thei_llvm_fpga_push_i9_fpga_indvars_iv_push7_avgpool2d32 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next_avgpool2d31_sel_x_b),
        .in_feedback_stall_in_7(i_llvm_fpga_pop_i9_fpga_indvars_iv_pop7_avgpool2d23_out_feedback_stall_out_7),
        .in_keep_going(redist14_i_llvm_fpga_pipeline_keep_going_avgpool2d6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist7_sync_together79_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_7(i_llvm_fpga_push_i9_fpga_indvars_iv_push7_avgpool2d32_out_feedback_out_7),
        .out_feedback_valid_out_7(i_llvm_fpga_push_i9_fpga_indvars_iv_push7_avgpool2d32_out_feedback_valid_out_7),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i9_16758(CONSTANT,28)
    assign c_i9_16758_q = $unsigned(9'b010100111);

    // i_llvm_fpga_pop_i9_fpga_indvars_iv_pop7_avgpool2d23(BLACKBOX,55)@2
    // out out_feedback_stall_out_7@20000000
    avgpool2d_i_llvm_fpga_pop_i9_fpga_indvars_iv_pop7_0 thei_llvm_fpga_pop_i9_fpga_indvars_iv_pop7_avgpool2d23 (
        .in_data_in(c_i9_16758_q),
        .in_dir(redist2_sync_together79_aunroll_x_in_c0_eni3_1_tpl_1_q),
        .in_feedback_in_7(i_llvm_fpga_push_i9_fpga_indvars_iv_push7_avgpool2d32_out_feedback_out_7),
        .in_feedback_valid_in_7(i_llvm_fpga_push_i9_fpga_indvars_iv_push7_avgpool2d32_out_feedback_valid_out_7),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist7_sync_together79_aunroll_x_in_i_valid_1_q),
        .out_data_out(i_llvm_fpga_pop_i9_fpga_indvars_iv_pop7_avgpool2d23_out_data_out),
        .out_feedback_stall_out_7(i_llvm_fpga_pop_i9_fpga_indvars_iv_pop7_avgpool2d23_out_feedback_stall_out_7),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_exitcond_avgpool2d24_cmp_nsign(LOGICAL,138)@2
    assign i_exitcond_avgpool2d24_cmp_nsign_q = $unsigned(~ (i_llvm_fpga_pop_i9_fpga_indvars_iv_pop7_avgpool2d23_out_data_out[8:8]));

    // i_llvm_fpga_push_i1_notexitcond_avgpool2d27(BLACKBOX,58)@2
    // out out_feedback_out_2@20000000
    // out out_feedback_valid_out_2@20000000
    avgpool2d_i_llvm_fpga_push_i1_notexitcond_0 thei_llvm_fpga_push_i1_notexitcond_avgpool2d27 (
        .in_data_in(i_exitcond_avgpool2d24_cmp_nsign_q),
        .in_feedback_stall_in_2(i_llvm_fpga_pipeline_keep_going_avgpool2d6_out_not_exitcond_stall_out),
        .in_first_cleanup(i_first_cleanup_avgpool2d3_sel_x_b),
        .in_stall_in(GND_q),
        .in_valid_in(redist7_sync_together79_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_2(i_llvm_fpga_push_i1_notexitcond_avgpool2d27_out_feedback_out_2),
        .out_feedback_valid_out_2(i_llvm_fpga_push_i1_notexitcond_avgpool2d27_out_feedback_valid_out_2),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg3(REG,110)@1 + 1
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

    // rightShiftStage0Idx1Rng1_uid150_i_next_initerations_avgpool2d0_shift_x(BITSELECT,149)@2
    assign rightShiftStage0Idx1Rng1_uid150_i_next_initerations_avgpool2d0_shift_x_b = i_llvm_fpga_pop_i2_initerations_pop10_avgpool2d7_out_data_out[1:1];

    // rightShiftStage0Idx1_uid152_i_next_initerations_avgpool2d0_shift_x(BITJOIN,151)@2
    assign rightShiftStage0Idx1_uid152_i_next_initerations_avgpool2d0_shift_x_q = {GND_q, rightShiftStage0Idx1Rng1_uid150_i_next_initerations_avgpool2d0_shift_x_b};

    // valid_fanout_reg1(REG,108)@1 + 1
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

    // valid_fanout_reg2(REG,109)@1 + 1
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

    // i_llvm_fpga_push_i2_initerations_push10_avgpool2d9(BLACKBOX,60)@2
    // out out_feedback_out_10@20000000
    // out out_feedback_valid_out_10@20000000
    avgpool2d_i_llvm_fpga_push_i2_initerations_push10_0 thei_llvm_fpga_push_i2_initerations_push10_avgpool2d9 (
        .in_data_in(i_next_initerations_avgpool2d8_vt_join_q),
        .in_feedback_stall_in_10(i_llvm_fpga_pop_i2_initerations_pop10_avgpool2d7_out_feedback_stall_out_10),
        .in_keep_going(redist14_i_llvm_fpga_pipeline_keep_going_avgpool2d6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(),
        .out_feedback_out_10(i_llvm_fpga_push_i2_initerations_push10_avgpool2d9_out_feedback_out_10),
        .out_feedback_valid_out_10(i_llvm_fpga_push_i2_initerations_push10_avgpool2d9_out_feedback_valid_out_10),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i2_initerations_pop10_avgpool2d7(BLACKBOX,52)@2
    // out out_feedback_stall_out_10@20000000
    avgpool2d_i_llvm_fpga_pop_i2_initerations_pop10_0 thei_llvm_fpga_pop_i2_initerations_pop10_avgpool2d7 (
        .in_data_in(c_i2_153_q),
        .in_dir(redist2_sync_together79_aunroll_x_in_c0_eni3_1_tpl_1_q),
        .in_feedback_in_10(i_llvm_fpga_push_i2_initerations_push10_avgpool2d9_out_feedback_out_10),
        .in_feedback_valid_in_10(i_llvm_fpga_push_i2_initerations_push10_avgpool2d9_out_feedback_valid_out_10),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_data_out(i_llvm_fpga_pop_i2_initerations_pop10_avgpool2d7_out_data_out),
        .out_feedback_stall_out_10(i_llvm_fpga_pop_i2_initerations_pop10_avgpool2d7_out_feedback_stall_out_10),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // rightShiftStage0_uid154_i_next_initerations_avgpool2d0_shift_x(MUX,153)@2
    assign rightShiftStage0_uid154_i_next_initerations_avgpool2d0_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid154_i_next_initerations_avgpool2d0_shift_x_s or i_llvm_fpga_pop_i2_initerations_pop10_avgpool2d7_out_data_out or rightShiftStage0Idx1_uid152_i_next_initerations_avgpool2d0_shift_x_q)
    begin
        unique case (rightShiftStage0_uid154_i_next_initerations_avgpool2d0_shift_x_s)
            1'b0 : rightShiftStage0_uid154_i_next_initerations_avgpool2d0_shift_x_q = i_llvm_fpga_pop_i2_initerations_pop10_avgpool2d7_out_data_out;
            1'b1 : rightShiftStage0_uid154_i_next_initerations_avgpool2d0_shift_x_q = rightShiftStage0Idx1_uid152_i_next_initerations_avgpool2d0_shift_x_q;
            default : rightShiftStage0_uid154_i_next_initerations_avgpool2d0_shift_x_q = 2'b0;
        endcase
    end

    // i_next_initerations_avgpool2d8_vt_select_0(BITSELECT,72)@2
    assign i_next_initerations_avgpool2d8_vt_select_0_b = rightShiftStage0_uid154_i_next_initerations_avgpool2d0_shift_x_q[0:0];

    // i_next_initerations_avgpool2d8_vt_join(BITJOIN,71)@2
    assign i_next_initerations_avgpool2d8_vt_join_q = {GND_q, i_next_initerations_avgpool2d8_vt_select_0_b};

    // i_last_initeration_avgpool2d10_sel_x(BITSELECT,100)@2
    assign i_last_initeration_avgpool2d10_sel_x_b = i_next_initerations_avgpool2d8_vt_join_q[0:0];

    // i_llvm_fpga_push_i1_lastiniteration_avgpool2d11(BLACKBOX,56)@2
    // out out_feedback_out_1@20000000
    // out out_feedback_valid_out_1@20000000
    avgpool2d_i_llvm_fpga_push_i1_lastiniteration_0 thei_llvm_fpga_push_i1_lastiniteration_avgpool2d11 (
        .in_data_in(i_last_initeration_avgpool2d10_sel_x_b),
        .in_feedback_stall_in_1(i_llvm_fpga_pipeline_keep_going_avgpool2d6_out_initeration_stall_out),
        .in_keep_going(redist14_i_llvm_fpga_pipeline_keep_going_avgpool2d6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_data_out(),
        .out_feedback_out_1(i_llvm_fpga_push_i1_lastiniteration_avgpool2d11_out_feedback_out_1),
        .out_feedback_valid_out_1(i_llvm_fpga_push_i1_lastiniteration_avgpool2d11_out_feedback_valid_out_1),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going_avgpool2d6(BLACKBOX,49)@1
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    avgpool2d_i_llvm_fpga_pipeline_keep_going_0 thei_llvm_fpga_pipeline_keep_going_avgpool2d6 (
        .in_data_in(in_c0_eni3_1_tpl),
        .in_initeration_in(i_llvm_fpga_push_i1_lastiniteration_avgpool2d11_out_feedback_out_1),
        .in_initeration_valid_in(i_llvm_fpga_push_i1_lastiniteration_avgpool2d11_out_feedback_valid_out_1),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond_avgpool2d27_out_feedback_out_2),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond_avgpool2d27_out_feedback_valid_out_2),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(i_llvm_fpga_pipeline_keep_going_avgpool2d6_out_data_out),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going_avgpool2d6_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going_avgpool2d6_out_exiting_valid_out),
        .out_initeration_stall_out(i_llvm_fpga_pipeline_keep_going_avgpool2d6_out_initeration_stall_out),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going_avgpool2d6_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going_avgpool2d6_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,29)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_avgpool2d6_exiting_valid_out = i_llvm_fpga_pipeline_keep_going_avgpool2d6_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_avgpool2d6_exiting_stall_out = i_llvm_fpga_pipeline_keep_going_avgpool2d6_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,77)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going_avgpool2d6_out_pipeline_valid_out;

    // redist8_sync_together79_aunroll_x_in_i_valid_2(DELAY,302)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_sync_together79_aunroll_x_in_i_valid_2_q <= '0;
        end
        else
        begin
            redist8_sync_together79_aunroll_x_in_i_valid_2_q <= $unsigned(redist7_sync_together79_aunroll_x_in_i_valid_1_q);
        end
    end

    // redist9_sync_together79_aunroll_x_in_i_valid_3(DELAY,303)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_sync_together79_aunroll_x_in_i_valid_3_q <= '0;
        end
        else
        begin
            redist9_sync_together79_aunroll_x_in_i_valid_3_q <= $unsigned(redist8_sync_together79_aunroll_x_in_i_valid_2_q);
        end
    end

    // valid_fanout_reg0(REG,107)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist9_sync_together79_aunroll_x_in_i_valid_3_q);
        end
    end

    // redist3_sync_together79_aunroll_x_in_c0_eni3_1_tpl_3(DELAY,297)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_sync_together79_aunroll_x_in_c0_eni3_1_tpl_3_delay_0 <= '0;
            redist3_sync_together79_aunroll_x_in_c0_eni3_1_tpl_3_q <= '0;
        end
        else
        begin
            redist3_sync_together79_aunroll_x_in_c0_eni3_1_tpl_3_delay_0 <= $unsigned(redist2_sync_together79_aunroll_x_in_c0_eni3_1_tpl_1_q);
            redist3_sync_together79_aunroll_x_in_c0_eni3_1_tpl_3_q <= redist3_sync_together79_aunroll_x_in_c0_eni3_1_tpl_3_delay_0;
        end
    end

    // redist4_sync_together79_aunroll_x_in_c0_eni3_1_tpl_4(DELAY,298)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_sync_together79_aunroll_x_in_c0_eni3_1_tpl_4_q <= '0;
        end
        else
        begin
            redist4_sync_together79_aunroll_x_in_c0_eni3_1_tpl_4_q <= $unsigned(redist3_sync_together79_aunroll_x_in_c0_eni3_1_tpl_3_q);
        end
    end

    // valid_fanout_reg9(REG,116)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg9_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg9_q <= $unsigned(redist9_sync_together79_aunroll_x_in_i_valid_3_q);
        end
    end

    // valid_fanout_reg10(REG,117)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg10_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg10_q <= $unsigned(redist9_sync_together79_aunroll_x_in_i_valid_3_q);
        end
    end

    // i_llvm_fpga_push_i1_notcmp17_push12_avgpool2d35(BLACKBOX,57)@5
    // out out_feedback_out_12@20000000
    // out out_feedback_valid_out_12@20000000
    avgpool2d_i_llvm_fpga_push_i1_notcmp17_push12_0 thei_llvm_fpga_push_i1_notcmp17_push12_avgpool2d35 (
        .in_data_in(i_llvm_fpga_pop_i1_notcmp17_pop12_avgpool2d34_out_data_out),
        .in_feedback_stall_in_12(i_llvm_fpga_pop_i1_notcmp17_pop12_avgpool2d34_out_feedback_stall_out_12),
        .in_keep_going(redist16_i_llvm_fpga_pipeline_keep_going_avgpool2d6_out_data_out_4_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg10_q),
        .out_data_out(),
        .out_feedback_out_12(i_llvm_fpga_push_i1_notcmp17_push12_avgpool2d35_out_feedback_out_12),
        .out_feedback_valid_out_12(i_llvm_fpga_push_i1_notcmp17_push12_avgpool2d35_out_feedback_valid_out_12),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist6_sync_together79_aunroll_x_in_c0_eni3_3_tpl_4(DELAY,300)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_sync_together79_aunroll_x_in_c0_eni3_3_tpl_4_delay_0 <= '0;
            redist6_sync_together79_aunroll_x_in_c0_eni3_3_tpl_4_delay_1 <= '0;
            redist6_sync_together79_aunroll_x_in_c0_eni3_3_tpl_4_delay_2 <= '0;
            redist6_sync_together79_aunroll_x_in_c0_eni3_3_tpl_4_q <= '0;
        end
        else
        begin
            redist6_sync_together79_aunroll_x_in_c0_eni3_3_tpl_4_delay_0 <= $unsigned(in_c0_eni3_3_tpl);
            redist6_sync_together79_aunroll_x_in_c0_eni3_3_tpl_4_delay_1 <= redist6_sync_together79_aunroll_x_in_c0_eni3_3_tpl_4_delay_0;
            redist6_sync_together79_aunroll_x_in_c0_eni3_3_tpl_4_delay_2 <= redist6_sync_together79_aunroll_x_in_c0_eni3_3_tpl_4_delay_1;
            redist6_sync_together79_aunroll_x_in_c0_eni3_3_tpl_4_q <= redist6_sync_together79_aunroll_x_in_c0_eni3_3_tpl_4_delay_2;
        end
    end

    // i_llvm_fpga_pop_i1_notcmp17_pop12_avgpool2d34(BLACKBOX,50)@5
    // out out_feedback_stall_out_12@20000000
    avgpool2d_i_llvm_fpga_pop_i1_notcmp17_pop12_0 thei_llvm_fpga_pop_i1_notcmp17_pop12_avgpool2d34 (
        .in_data_in(redist6_sync_together79_aunroll_x_in_c0_eni3_3_tpl_4_q),
        .in_dir(redist4_sync_together79_aunroll_x_in_c0_eni3_1_tpl_4_q),
        .in_feedback_in_12(i_llvm_fpga_push_i1_notcmp17_push12_avgpool2d35_out_feedback_out_12),
        .in_feedback_valid_in_12(i_llvm_fpga_push_i1_notcmp17_push12_avgpool2d35_out_feedback_valid_out_12),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg9_q),
        .out_data_out(i_llvm_fpga_pop_i1_notcmp17_pop12_avgpool2d34_out_data_out),
        .out_feedback_stall_out_12(i_llvm_fpga_pop_i1_notcmp17_pop12_avgpool2d34_out_feedback_stall_out_12),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_masked_avgpool2d33(LOGICAL,68)@2 + 1
    assign i_masked_avgpool2d33_qi = i_notcmp_avgpool2d26_q & i_first_cleanup_avgpool2d3_sel_x_b;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_masked_avgpool2d33_delay ( .xin(i_masked_avgpool2d33_qi), .xout(i_masked_avgpool2d33_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist11_i_masked_avgpool2d33_q_3(DELAY,305)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_i_masked_avgpool2d33_q_3_delay_0 <= '0;
            redist11_i_masked_avgpool2d33_q_3_q <= '0;
        end
        else
        begin
            redist11_i_masked_avgpool2d33_q_3_delay_0 <= $unsigned(i_masked_avgpool2d33_q);
            redist11_i_masked_avgpool2d33_q_3_q <= redist11_i_masked_avgpool2d33_q_3_delay_0;
        end
    end

    // i_acc_control_signal_avgpool2d20(LOGICAL,30)@5
    assign i_acc_control_signal_avgpool2d20_q = redist4_sync_together79_aunroll_x_in_c0_eni3_1_tpl_4_q ^ VCC_q;

    // c_i32_055(CONSTANT,24)
    assign c_i32_055_q = $unsigned(32'b00000000000000000000000000000000);

    // valid_fanout_reg6(REG,113)@3 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg6_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg6_q <= $unsigned(redist8_sync_together79_aunroll_x_in_i_valid_2_q);
        end
    end

    // valid_fanout_reg8(REG,115)@3 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg8_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg8_q <= $unsigned(redist8_sync_together79_aunroll_x_in_i_valid_2_q);
        end
    end

    // redist15_i_llvm_fpga_pipeline_keep_going_avgpool2d6_out_data_out_3(DELAY,309)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist15_i_llvm_fpga_pipeline_keep_going_avgpool2d6_out_data_out_3_delay_0 <= '0;
            redist15_i_llvm_fpga_pipeline_keep_going_avgpool2d6_out_data_out_3_q <= '0;
        end
        else
        begin
            redist15_i_llvm_fpga_pipeline_keep_going_avgpool2d6_out_data_out_3_delay_0 <= $unsigned(redist14_i_llvm_fpga_pipeline_keep_going_avgpool2d6_out_data_out_1_q);
            redist15_i_llvm_fpga_pipeline_keep_going_avgpool2d6_out_data_out_3_q <= redist15_i_llvm_fpga_pipeline_keep_going_avgpool2d6_out_data_out_3_delay_0;
        end
    end

    // c_i32_157(CONSTANT,25)
    assign c_i32_157_q = $unsigned(32'b00000000000000000000000000000001);

    // i_inc_avgpool2d21(ADD,47)@4
    assign i_inc_avgpool2d21_a = {1'b0, i_llvm_fpga_pop_i32_i_011_pop8_avgpool2d14_out_data_out};
    assign i_inc_avgpool2d21_b = {1'b0, c_i32_157_q};
    assign i_inc_avgpool2d21_o = $unsigned(i_inc_avgpool2d21_a) + $unsigned(i_inc_avgpool2d21_b);
    assign i_inc_avgpool2d21_q = i_inc_avgpool2d21_o[32:0];

    // bgTrunc_i_inc_avgpool2d21_sel_x(BITSELECT,83)@4
    assign bgTrunc_i_inc_avgpool2d21_sel_x_b = i_inc_avgpool2d21_q[31:0];

    // i_llvm_fpga_push_i32_i_011_push8_avgpool2d22(BLACKBOX,62)@4
    // out out_feedback_out_8@20000000
    // out out_feedback_valid_out_8@20000000
    avgpool2d_i_llvm_fpga_push_i32_i_011_push8_0 thei_llvm_fpga_push_i32_i_011_push8_avgpool2d22 (
        .in_data_in(bgTrunc_i_inc_avgpool2d21_sel_x_b),
        .in_feedback_stall_in_8(i_llvm_fpga_pop_i32_i_011_pop8_avgpool2d14_out_feedback_stall_out_8),
        .in_keep_going(redist15_i_llvm_fpga_pipeline_keep_going_avgpool2d6_out_data_out_3_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg8_q),
        .out_data_out(),
        .out_feedback_out_8(i_llvm_fpga_push_i32_i_011_push8_avgpool2d22_out_feedback_out_8),
        .out_feedback_valid_out_8(i_llvm_fpga_push_i32_i_011_push8_avgpool2d22_out_feedback_valid_out_8),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_i_011_pop8_avgpool2d14(BLACKBOX,54)@4
    // out out_feedback_stall_out_8@20000000
    avgpool2d_i_llvm_fpga_pop_i32_i_011_pop8_0 thei_llvm_fpga_pop_i32_i_011_pop8_avgpool2d14 (
        .in_data_in(c_i32_055_q),
        .in_dir(redist3_sync_together79_aunroll_x_in_c0_eni3_1_tpl_3_q),
        .in_feedback_in_8(i_llvm_fpga_push_i32_i_011_push8_avgpool2d22_out_feedback_out_8),
        .in_feedback_valid_in_8(i_llvm_fpga_push_i32_i_011_push8_avgpool2d22_out_feedback_valid_out_8),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg6_q),
        .out_data_out(i_llvm_fpga_pop_i32_i_011_pop8_avgpool2d14_out_data_out),
        .out_feedback_stall_out_8(i_llvm_fpga_pop_i32_i_011_pop8_avgpool2d14_out_feedback_stall_out_8),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_dot1_prod_avgpool2d15_multconst_x(CONSTANT,97)
    assign i_dot1_prod_avgpool2d15_multconst_x_q = $unsigned(24'b000000000000000000000000);

    // highBBits_uid164_i_dot1_prod_avgpool2d15_im0(BITSELECT,163)@3
    assign highBBits_uid164_i_dot1_prod_avgpool2d15_im0_b = i_dot1_prod_avgpool2d15_bs1_merged_bit_select_b[13:2];

    // valid_fanout_reg4(REG,111)@1 + 1
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

    // valid_fanout_reg5(REG,112)@1 + 1
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

    // i_llvm_fpga_push_i32_class_index_012_pop68_push13_avgpool2d13(BLACKBOX,61)@2
    // out out_feedback_out_13@20000000
    // out out_feedback_valid_out_13@20000000
    avgpool2d_i_llvm_fpga_push_i32_class_index_012_pop68_push13_0 thei_llvm_fpga_push_i32_class_index_012_pop68_push13_avgpool2d13 (
        .in_data_in(i_llvm_fpga_pop_i32_class_index_012_pop68_pop13_avgpool2d12_out_data_out),
        .in_feedback_stall_in_13(i_llvm_fpga_pop_i32_class_index_012_pop68_pop13_avgpool2d12_out_feedback_stall_out_13),
        .in_keep_going(redist14_i_llvm_fpga_pipeline_keep_going_avgpool2d6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_data_out(),
        .out_feedback_out_13(i_llvm_fpga_push_i32_class_index_012_pop68_push13_avgpool2d13_out_feedback_out_13),
        .out_feedback_valid_out_13(i_llvm_fpga_push_i32_class_index_012_pop68_push13_avgpool2d13_out_feedback_valid_out_13),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist5_sync_together79_aunroll_x_in_c0_eni3_2_tpl_1(DELAY,299)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_sync_together79_aunroll_x_in_c0_eni3_2_tpl_1_q <= '0;
        end
        else
        begin
            redist5_sync_together79_aunroll_x_in_c0_eni3_2_tpl_1_q <= $unsigned(in_c0_eni3_2_tpl);
        end
    end

    // i_llvm_fpga_pop_i32_class_index_012_pop68_pop13_avgpool2d12(BLACKBOX,53)@2
    // out out_feedback_stall_out_13@20000000
    avgpool2d_i_llvm_fpga_pop_i32_class_index_012_pop68_pop13_0 thei_llvm_fpga_pop_i32_class_index_012_pop68_pop13_avgpool2d12 (
        .in_data_in(redist5_sync_together79_aunroll_x_in_c0_eni3_2_tpl_1_q),
        .in_dir(redist2_sync_together79_aunroll_x_in_c0_eni3_1_tpl_1_q),
        .in_feedback_in_13(i_llvm_fpga_push_i32_class_index_012_pop68_push13_avgpool2d13_out_feedback_out_13),
        .in_feedback_valid_in_13(i_llvm_fpga_push_i32_class_index_012_pop68_push13_avgpool2d13_out_feedback_valid_out_13),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_data_out(i_llvm_fpga_pop_i32_class_index_012_pop68_pop13_avgpool2d12_out_data_out),
        .out_feedback_stall_out_13(i_llvm_fpga_pop_i32_class_index_012_pop68_pop13_avgpool2d12_out_feedback_stall_out_13),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist12_i_llvm_fpga_pop_i32_class_index_012_pop68_pop13_avgpool2d12_out_data_out_1(DELAY,306)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_i_llvm_fpga_pop_i32_class_index_012_pop68_pop13_avgpool2d12_out_data_out_1_q <= '0;
        end
        else
        begin
            redist12_i_llvm_fpga_pop_i32_class_index_012_pop68_pop13_avgpool2d12_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i32_class_index_012_pop68_pop13_avgpool2d12_out_data_out);
        end
    end

    // i_dot1_prod_avgpool2d15_bs1_merged_bit_select(BITSELECT,291)@3
    assign i_dot1_prod_avgpool2d15_bs1_merged_bit_select_b = redist12_i_llvm_fpga_pop_i32_class_index_012_pop68_pop13_avgpool2d12_out_data_out_1_q[31:18];
    assign i_dot1_prod_avgpool2d15_bs1_merged_bit_select_c = redist12_i_llvm_fpga_pop_i32_class_index_012_pop68_pop13_avgpool2d12_out_data_out_1_q[17:0];

    // lev1_a0sumAHighB_uid165_i_dot1_prod_avgpool2d15_im0(ADD,164)@3
    assign lev1_a0sumAHighB_uid165_i_dot1_prod_avgpool2d15_im0_a = {1'b0, i_dot1_prod_avgpool2d15_bs1_merged_bit_select_b};
    assign lev1_a0sumAHighB_uid165_i_dot1_prod_avgpool2d15_im0_b = {3'b000, highBBits_uid164_i_dot1_prod_avgpool2d15_im0_b};
    assign lev1_a0sumAHighB_uid165_i_dot1_prod_avgpool2d15_im0_o = $unsigned(lev1_a0sumAHighB_uid165_i_dot1_prod_avgpool2d15_im0_a) + $unsigned(lev1_a0sumAHighB_uid165_i_dot1_prod_avgpool2d15_im0_b);
    assign lev1_a0sumAHighB_uid165_i_dot1_prod_avgpool2d15_im0_q = lev1_a0sumAHighB_uid165_i_dot1_prod_avgpool2d15_im0_o[14:0];

    // lowRangeB_uid163_i_dot1_prod_avgpool2d15_im0(BITSELECT,162)@3
    assign lowRangeB_uid163_i_dot1_prod_avgpool2d15_im0_in = i_dot1_prod_avgpool2d15_bs1_merged_bit_select_b[1:0];
    assign lowRangeB_uid163_i_dot1_prod_avgpool2d15_im0_b = lowRangeB_uid163_i_dot1_prod_avgpool2d15_im0_in[1:0];

    // lev1_a0_uid166_i_dot1_prod_avgpool2d15_im0(BITJOIN,165)@3
    assign lev1_a0_uid166_i_dot1_prod_avgpool2d15_im0_q = {lev1_a0sumAHighB_uid165_i_dot1_prod_avgpool2d15_im0_q, lowRangeB_uid163_i_dot1_prod_avgpool2d15_im0_b};

    // NodeSumsumAHighB_uid176_i_dot1_prod_avgpool2d15_im0(ADD,175)@3
    assign NodeSumsumAHighB_uid176_i_dot1_prod_avgpool2d15_im0_a = {1'b0, lev1_a0_uid166_i_dot1_prod_avgpool2d15_im0_q};
    assign NodeSumsumAHighB_uid176_i_dot1_prod_avgpool2d15_im0_b = {5'b00000, lowRangeB_uid174_i_dot1_prod_avgpool2d15_im0_merged_bit_select_c};
    assign NodeSumsumAHighB_uid176_i_dot1_prod_avgpool2d15_im0_o = $unsigned(NodeSumsumAHighB_uid176_i_dot1_prod_avgpool2d15_im0_a) + $unsigned(NodeSumsumAHighB_uid176_i_dot1_prod_avgpool2d15_im0_b);
    assign NodeSumsumAHighB_uid176_i_dot1_prod_avgpool2d15_im0_q = NodeSumsumAHighB_uid176_i_dot1_prod_avgpool2d15_im0_o[17:0];

    // highBBits_uid170_i_dot1_prod_avgpool2d15_im0(BITSELECT,169)@3
    assign highBBits_uid170_i_dot1_prod_avgpool2d15_im0_b = i_dot1_prod_avgpool2d15_bs1_merged_bit_select_b[13:3];

    // lev1_a0sumAHighB_uid171_i_dot1_prod_avgpool2d15_im0(ADD,170)@3
    assign lev1_a0sumAHighB_uid171_i_dot1_prod_avgpool2d15_im0_a = {1'b0, i_dot1_prod_avgpool2d15_bs1_merged_bit_select_b};
    assign lev1_a0sumAHighB_uid171_i_dot1_prod_avgpool2d15_im0_b = {4'b0000, highBBits_uid170_i_dot1_prod_avgpool2d15_im0_b};
    assign lev1_a0sumAHighB_uid171_i_dot1_prod_avgpool2d15_im0_o = $unsigned(lev1_a0sumAHighB_uid171_i_dot1_prod_avgpool2d15_im0_a) + $unsigned(lev1_a0sumAHighB_uid171_i_dot1_prod_avgpool2d15_im0_b);
    assign lev1_a0sumAHighB_uid171_i_dot1_prod_avgpool2d15_im0_q = lev1_a0sumAHighB_uid171_i_dot1_prod_avgpool2d15_im0_o[14:0];

    // lowRangeB_uid169_i_dot1_prod_avgpool2d15_im0(BITSELECT,168)@3
    assign lowRangeB_uid169_i_dot1_prod_avgpool2d15_im0_in = i_dot1_prod_avgpool2d15_bs1_merged_bit_select_b[2:0];
    assign lowRangeB_uid169_i_dot1_prod_avgpool2d15_im0_b = lowRangeB_uid169_i_dot1_prod_avgpool2d15_im0_in[2:0];

    // lev1_a0_uid172_i_dot1_prod_avgpool2d15_im0(BITJOIN,171)@3
    assign lev1_a0_uid172_i_dot1_prod_avgpool2d15_im0_q = {lev1_a0sumAHighB_uid171_i_dot1_prod_avgpool2d15_im0_q, lowRangeB_uid169_i_dot1_prod_avgpool2d15_im0_b};

    // lowRangeB_uid174_i_dot1_prod_avgpool2d15_im0_merged_bit_select(BITSELECT,292)@3
    assign lowRangeB_uid174_i_dot1_prod_avgpool2d15_im0_merged_bit_select_b = lev1_a0_uid172_i_dot1_prod_avgpool2d15_im0_q[4:0];
    assign lowRangeB_uid174_i_dot1_prod_avgpool2d15_im0_merged_bit_select_c = lev1_a0_uid172_i_dot1_prod_avgpool2d15_im0_q[17:5];

    // NodeSum_uid177_i_dot1_prod_avgpool2d15_im0(BITJOIN,176)@3
    assign NodeSum_uid177_i_dot1_prod_avgpool2d15_im0_q = {NodeSumsumAHighB_uid176_i_dot1_prod_avgpool2d15_im0_q, lowRangeB_uid174_i_dot1_prod_avgpool2d15_im0_merged_bit_select_b};

    // sR_uid180_i_dot1_prod_avgpool2d15_im0(BITSELECT,179)@3
    assign sR_uid180_i_dot1_prod_avgpool2d15_im0_in = NodeSum_uid177_i_dot1_prod_avgpool2d15_im0_q[21:0];
    assign sR_uid180_i_dot1_prod_avgpool2d15_im0_b = sR_uid180_i_dot1_prod_avgpool2d15_im0_in[21:0];

    // redist1_sR_uid180_i_dot1_prod_avgpool2d15_im0_b_1(DELAY,295)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sR_uid180_i_dot1_prod_avgpool2d15_im0_b_1_q <= '0;
        end
        else
        begin
            redist1_sR_uid180_i_dot1_prod_avgpool2d15_im0_b_1_q <= $unsigned(sR_uid180_i_dot1_prod_avgpool2d15_im0_b);
        end
    end

    // i_dot1_prod_avgpool2d15_sums_align_1(BITSHIFT,134)@4
    assign i_dot1_prod_avgpool2d15_sums_align_1_qint = { redist1_sR_uid180_i_dot1_prod_avgpool2d15_im0_b_1_q, 18'b000000000000000000 };
    assign i_dot1_prod_avgpool2d15_sums_align_1_q = i_dot1_prod_avgpool2d15_sums_align_1_qint[39:0];

    // highBBits_uid229_i_dot1_prod_avgpool2d15_im3(BITSELECT,228)@3
    assign highBBits_uid229_i_dot1_prod_avgpool2d15_im3_b = i_dot1_prod_avgpool2d15_bs1_merged_bit_select_c[17:2];

    // lev1_a0sumAHighB_uid230_i_dot1_prod_avgpool2d15_im3(ADD,229)@3
    assign lev1_a0sumAHighB_uid230_i_dot1_prod_avgpool2d15_im3_a = {1'b0, i_dot1_prod_avgpool2d15_bs1_merged_bit_select_c};
    assign lev1_a0sumAHighB_uid230_i_dot1_prod_avgpool2d15_im3_b = {3'b000, highBBits_uid229_i_dot1_prod_avgpool2d15_im3_b};
    assign lev1_a0sumAHighB_uid230_i_dot1_prod_avgpool2d15_im3_o = $unsigned(lev1_a0sumAHighB_uid230_i_dot1_prod_avgpool2d15_im3_a) + $unsigned(lev1_a0sumAHighB_uid230_i_dot1_prod_avgpool2d15_im3_b);
    assign lev1_a0sumAHighB_uid230_i_dot1_prod_avgpool2d15_im3_q = lev1_a0sumAHighB_uid230_i_dot1_prod_avgpool2d15_im3_o[18:0];

    // lowRangeB_uid228_i_dot1_prod_avgpool2d15_im3(BITSELECT,227)@3
    assign lowRangeB_uid228_i_dot1_prod_avgpool2d15_im3_in = i_dot1_prod_avgpool2d15_bs1_merged_bit_select_c[1:0];
    assign lowRangeB_uid228_i_dot1_prod_avgpool2d15_im3_b = lowRangeB_uid228_i_dot1_prod_avgpool2d15_im3_in[1:0];

    // lev1_a0_uid231_i_dot1_prod_avgpool2d15_im3(BITJOIN,230)@3
    assign lev1_a0_uid231_i_dot1_prod_avgpool2d15_im3_q = {lev1_a0sumAHighB_uid230_i_dot1_prod_avgpool2d15_im3_q, lowRangeB_uid228_i_dot1_prod_avgpool2d15_im3_b};

    // NodeSumsumAHighB_uid241_i_dot1_prod_avgpool2d15_im3(ADD,240)@3
    assign NodeSumsumAHighB_uid241_i_dot1_prod_avgpool2d15_im3_a = {1'b0, lev1_a0_uid231_i_dot1_prod_avgpool2d15_im3_q};
    assign NodeSumsumAHighB_uid241_i_dot1_prod_avgpool2d15_im3_b = {5'b00000, lowRangeB_uid239_i_dot1_prod_avgpool2d15_im3_merged_bit_select_c};
    assign NodeSumsumAHighB_uid241_i_dot1_prod_avgpool2d15_im3_o = $unsigned(NodeSumsumAHighB_uid241_i_dot1_prod_avgpool2d15_im3_a) + $unsigned(NodeSumsumAHighB_uid241_i_dot1_prod_avgpool2d15_im3_b);
    assign NodeSumsumAHighB_uid241_i_dot1_prod_avgpool2d15_im3_q = NodeSumsumAHighB_uid241_i_dot1_prod_avgpool2d15_im3_o[21:0];

    // highBBits_uid235_i_dot1_prod_avgpool2d15_im3(BITSELECT,234)@3
    assign highBBits_uid235_i_dot1_prod_avgpool2d15_im3_b = i_dot1_prod_avgpool2d15_bs1_merged_bit_select_c[17:3];

    // lev1_a0sumAHighB_uid236_i_dot1_prod_avgpool2d15_im3(ADD,235)@3
    assign lev1_a0sumAHighB_uid236_i_dot1_prod_avgpool2d15_im3_a = {1'b0, i_dot1_prod_avgpool2d15_bs1_merged_bit_select_c};
    assign lev1_a0sumAHighB_uid236_i_dot1_prod_avgpool2d15_im3_b = {4'b0000, highBBits_uid235_i_dot1_prod_avgpool2d15_im3_b};
    assign lev1_a0sumAHighB_uid236_i_dot1_prod_avgpool2d15_im3_o = $unsigned(lev1_a0sumAHighB_uid236_i_dot1_prod_avgpool2d15_im3_a) + $unsigned(lev1_a0sumAHighB_uid236_i_dot1_prod_avgpool2d15_im3_b);
    assign lev1_a0sumAHighB_uid236_i_dot1_prod_avgpool2d15_im3_q = lev1_a0sumAHighB_uid236_i_dot1_prod_avgpool2d15_im3_o[18:0];

    // lowRangeB_uid234_i_dot1_prod_avgpool2d15_im3(BITSELECT,233)@3
    assign lowRangeB_uid234_i_dot1_prod_avgpool2d15_im3_in = i_dot1_prod_avgpool2d15_bs1_merged_bit_select_c[2:0];
    assign lowRangeB_uid234_i_dot1_prod_avgpool2d15_im3_b = lowRangeB_uid234_i_dot1_prod_avgpool2d15_im3_in[2:0];

    // lev1_a0_uid237_i_dot1_prod_avgpool2d15_im3(BITJOIN,236)@3
    assign lev1_a0_uid237_i_dot1_prod_avgpool2d15_im3_q = {lev1_a0sumAHighB_uid236_i_dot1_prod_avgpool2d15_im3_q, lowRangeB_uid234_i_dot1_prod_avgpool2d15_im3_b};

    // lowRangeB_uid239_i_dot1_prod_avgpool2d15_im3_merged_bit_select(BITSELECT,293)@3
    assign lowRangeB_uid239_i_dot1_prod_avgpool2d15_im3_merged_bit_select_b = lev1_a0_uid237_i_dot1_prod_avgpool2d15_im3_q[4:0];
    assign lowRangeB_uid239_i_dot1_prod_avgpool2d15_im3_merged_bit_select_c = lev1_a0_uid237_i_dot1_prod_avgpool2d15_im3_q[21:5];

    // NodeSum_uid242_i_dot1_prod_avgpool2d15_im3(BITJOIN,241)@3
    assign NodeSum_uid242_i_dot1_prod_avgpool2d15_im3_q = {NodeSumsumAHighB_uid241_i_dot1_prod_avgpool2d15_im3_q, lowRangeB_uid239_i_dot1_prod_avgpool2d15_im3_merged_bit_select_b};

    // sR_uid245_i_dot1_prod_avgpool2d15_im3(BITSELECT,244)@3
    assign sR_uid245_i_dot1_prod_avgpool2d15_im3_in = NodeSum_uid242_i_dot1_prod_avgpool2d15_im3_q[25:0];
    assign sR_uid245_i_dot1_prod_avgpool2d15_im3_b = sR_uid245_i_dot1_prod_avgpool2d15_im3_in[25:0];

    // redist0_sR_uid245_i_dot1_prod_avgpool2d15_im3_b_1(DELAY,294)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_sR_uid245_i_dot1_prod_avgpool2d15_im3_b_1_q <= '0;
        end
        else
        begin
            redist0_sR_uid245_i_dot1_prod_avgpool2d15_im3_b_1_q <= $unsigned(sR_uid245_i_dot1_prod_avgpool2d15_im3_b);
        end
    end

    // i_dot1_prod_avgpool2d15_sums_result_add_0_0(ADD,136)@4
    assign i_dot1_prod_avgpool2d15_sums_result_add_0_0_a = {15'b000000000000000, redist0_sR_uid245_i_dot1_prod_avgpool2d15_im3_b_1_q};
    assign i_dot1_prod_avgpool2d15_sums_result_add_0_0_b = {1'b0, i_dot1_prod_avgpool2d15_sums_align_1_q};
    assign i_dot1_prod_avgpool2d15_sums_result_add_0_0_o = $unsigned(i_dot1_prod_avgpool2d15_sums_result_add_0_0_a) + $unsigned(i_dot1_prod_avgpool2d15_sums_result_add_0_0_b);
    assign i_dot1_prod_avgpool2d15_sums_result_add_0_0_q = i_dot1_prod_avgpool2d15_sums_result_add_0_0_o[40:0];

    // i_dot1_prod_avgpool2d15_extender_x(BITJOIN,96)@4
    assign i_dot1_prod_avgpool2d15_extender_x_q = {i_dot1_prod_avgpool2d15_multconst_x_q, i_dot1_prod_avgpool2d15_sums_result_add_0_0_q[39:0]};

    // bgTrunc_i_dot1_prod_avgpool2d15_sel_x(BITSELECT,80)@4
    assign bgTrunc_i_dot1_prod_avgpool2d15_sel_x_b = i_dot1_prod_avgpool2d15_extender_x_q[31:0];

    // i_dot_prod_add_avgpool2d16(ADD,38)@4
    assign i_dot_prod_add_avgpool2d16_a = {1'b0, bgTrunc_i_dot1_prod_avgpool2d15_sel_x_b};
    assign i_dot_prod_add_avgpool2d16_b = {1'b0, i_llvm_fpga_pop_i32_i_011_pop8_avgpool2d14_out_data_out};
    assign i_dot_prod_add_avgpool2d16_o = $unsigned(i_dot_prod_add_avgpool2d16_a) + $unsigned(i_dot_prod_add_avgpool2d16_b);
    assign i_dot_prod_add_avgpool2d16_q = i_dot_prod_add_avgpool2d16_o[32:0];

    // bgTrunc_i_dot_prod_add_avgpool2d16_sel_x(BITSELECT,81)@4
    assign bgTrunc_i_dot_prod_add_avgpool2d16_sel_x_b = i_dot_prod_add_avgpool2d16_q[31:0];

    // redist10_bgTrunc_i_dot_prod_add_avgpool2d16_sel_x_b_1(DELAY,304)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_bgTrunc_i_dot_prod_add_avgpool2d16_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist10_bgTrunc_i_dot_prod_add_avgpool2d16_sel_x_b_1_q <= $unsigned(bgTrunc_i_dot_prod_add_avgpool2d16_sel_x_b);
        end
    end

    // i_idxprom_avgpool2d17_sel_x(BITSELECT,99)@5
    assign i_idxprom_avgpool2d17_sel_x_b = {32'b00000000000000000000000000000000, redist10_bgTrunc_i_dot_prod_add_avgpool2d16_sel_x_b_1_q[31:0]};

    // i_idxprom_avgpool2d17_vt_select_31(BITSELECT,46)@5
    assign i_idxprom_avgpool2d17_vt_select_31_b = i_idxprom_avgpool2d17_sel_x_b[31:0];

    // i_idxprom_avgpool2d17_vt_join(BITJOIN,45)@5
    assign i_idxprom_avgpool2d17_vt_join_q = {c_i32_055_q, i_idxprom_avgpool2d17_vt_select_31_b};

    // i_arrayidx1_avgpool2d0_narrow_x(BITSELECT,88)@5
    assign i_arrayidx1_avgpool2d0_narrow_x_b = i_idxprom_avgpool2d17_vt_join_q[61:0];

    // i_arrayidx1_avgpool2d0_shift_join_x(BITJOIN,89)@5
    assign i_arrayidx1_avgpool2d0_shift_join_x_q = {i_arrayidx1_avgpool2d0_narrow_x_b, i_arrayidx1_avgpool2d19_vt_const_1_q};

    // valid_fanout_reg7(REG,114)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg7_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg7_q <= $unsigned(redist9_sync_together79_aunroll_x_in_i_valid_3_q);
        end
    end

    // i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer_avgpool2d18(BLACKBOX,64)@0
    // in in_i_dependence@5
    // in in_valid_in@5
    // out out_buffer_out@5
    // out out_valid_out@5
    avgpool2d_i_llvm_fpga_sync_buffer_p1024f0001put_im_sync_buffer_0 thei_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer_avgpool2d18 (
        .in_buffer_in(in_input_im),
        .in_i_dependence(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg7_q),
        .out_buffer_out(i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer_avgpool2d18_out_buffer_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer_avgpool2d18_vt_select_63(BITSELECT,67)@5
    assign i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer_avgpool2d18_vt_select_63_b = i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer_avgpool2d18_out_buffer_out[63:10];

    // i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer_avgpool2d18_vt_const_9(CONSTANT,65)
    assign i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer_avgpool2d18_vt_const_9_q = $unsigned(10'b0000000000);

    // i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer_avgpool2d18_vt_join(BITJOIN,66)@5
    assign i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer_avgpool2d18_vt_join_q = {i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer_avgpool2d18_vt_select_63_b, i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer_avgpool2d18_vt_const_9_q};

    // i_arrayidx1_avgpool2d0_add_x(ADD,86)@5
    assign i_arrayidx1_avgpool2d0_add_x_a = {1'b0, i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer_avgpool2d18_vt_join_q};
    assign i_arrayidx1_avgpool2d0_add_x_b = {1'b0, i_arrayidx1_avgpool2d0_shift_join_x_q};
    assign i_arrayidx1_avgpool2d0_add_x_o = $unsigned(i_arrayidx1_avgpool2d0_add_x_a) + $unsigned(i_arrayidx1_avgpool2d0_add_x_b);
    assign i_arrayidx1_avgpool2d0_add_x_q = i_arrayidx1_avgpool2d0_add_x_o[64:0];

    // i_arrayidx1_avgpool2d0_dupName_0_trunc_sel_x(BITSELECT,91)@5
    assign i_arrayidx1_avgpool2d0_dupName_0_trunc_sel_x_b = i_arrayidx1_avgpool2d0_add_x_q[63:0];

    // i_arrayidx1_avgpool2d19_vt_select_63(BITSELECT,33)@5
    assign i_arrayidx1_avgpool2d19_vt_select_63_b = i_arrayidx1_avgpool2d0_dupName_0_trunc_sel_x_b[63:2];

    // i_arrayidx1_avgpool2d19_vt_const_1(CONSTANT,31)
    assign i_arrayidx1_avgpool2d19_vt_const_1_q = $unsigned(2'b00);

    // i_arrayidx1_avgpool2d19_vt_join(BITJOIN,32)@5
    assign i_arrayidx1_avgpool2d19_vt_join_q = {i_arrayidx1_avgpool2d19_vt_select_63_b, i_arrayidx1_avgpool2d19_vt_const_1_q};

    // redist13_i_llvm_fpga_pop_i32_class_index_012_pop68_pop13_avgpool2d12_out_data_out_3(DELAY,307)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_i_llvm_fpga_pop_i32_class_index_012_pop68_pop13_avgpool2d12_out_data_out_3_delay_0 <= '0;
            redist13_i_llvm_fpga_pop_i32_class_index_012_pop68_pop13_avgpool2d12_out_data_out_3_q <= '0;
        end
        else
        begin
            redist13_i_llvm_fpga_pop_i32_class_index_012_pop68_pop13_avgpool2d12_out_data_out_3_delay_0 <= $unsigned(redist12_i_llvm_fpga_pop_i32_class_index_012_pop68_pop13_avgpool2d12_out_data_out_1_q);
            redist13_i_llvm_fpga_pop_i32_class_index_012_pop68_pop13_avgpool2d12_out_data_out_3_q <= redist13_i_llvm_fpga_pop_i32_class_index_012_pop68_pop13_avgpool2d12_out_data_out_3_delay_0;
        end
    end

    // redist16_i_llvm_fpga_pipeline_keep_going_avgpool2d6_out_data_out_4(DELAY,310)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist16_i_llvm_fpga_pipeline_keep_going_avgpool2d6_out_data_out_4_q <= '0;
        end
        else
        begin
            redist16_i_llvm_fpga_pipeline_keep_going_avgpool2d6_out_data_out_4_q <= $unsigned(redist15_i_llvm_fpga_pipeline_keep_going_avgpool2d6_out_data_out_3_q);
        end
    end

    // redist17_i_first_cleanup_xor_avgpool2d4_q_3(DELAY,311)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist17_i_first_cleanup_xor_avgpool2d4_q_3_delay_0 <= '0;
            redist17_i_first_cleanup_xor_avgpool2d4_q_3_delay_1 <= '0;
            redist17_i_first_cleanup_xor_avgpool2d4_q_3_q <= '0;
        end
        else
        begin
            redist17_i_first_cleanup_xor_avgpool2d4_q_3_delay_0 <= $unsigned(i_first_cleanup_xor_avgpool2d4_q);
            redist17_i_first_cleanup_xor_avgpool2d4_q_3_delay_1 <= redist17_i_first_cleanup_xor_avgpool2d4_q_3_delay_0;
            redist17_i_first_cleanup_xor_avgpool2d4_q_3_q <= redist17_i_first_cleanup_xor_avgpool2d4_q_3_delay_1;
        end
    end

    // sync_out_aunroll_x(GPOUT,105)@5
    assign out_c0_exi8_0_tpl = GND_q;
    assign out_c0_exi8_1_tpl = redist17_i_first_cleanup_xor_avgpool2d4_q_3_q;
    assign out_c0_exi8_2_tpl = redist16_i_llvm_fpga_pipeline_keep_going_avgpool2d6_out_data_out_4_q;
    assign out_c0_exi8_3_tpl = redist13_i_llvm_fpga_pop_i32_class_index_012_pop68_pop13_avgpool2d12_out_data_out_3_q;
    assign out_c0_exi8_4_tpl = i_arrayidx1_avgpool2d19_vt_join_q;
    assign out_c0_exi8_5_tpl = i_acc_control_signal_avgpool2d20_q;
    assign out_c0_exi8_6_tpl = redist11_i_masked_avgpool2d33_q_3_q;
    assign out_c0_exi8_7_tpl = i_llvm_fpga_pop_i1_notcmp17_pop12_avgpool2d34_out_data_out;
    assign out_c0_exi8_8_tpl = redist4_sync_together79_aunroll_x_in_c0_eni3_1_tpl_4_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_avgpool2d0 = GND_q;

endmodule
