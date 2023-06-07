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

// SystemVerilog created from maxpool2d_i_sfc_logic_s_c0_in_for_cond1_00000_enter21_maxpool2d0
// SystemVerilog created on Tue Jun  6 18:48:20 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module maxpool2d_i_sfc_logic_s_c0_in_for_cond1_00000_enter21_maxpool2d0 (
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going28_maxpool2d2_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going28_maxpool2d2_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [31:0] in_input_size,
    input wire [0:0] in_intel_reserved_ffwd_0_0,
    input wire [32:0] in_intel_reserved_ffwd_3_0,
    input wire [63:0] in_intel_reserved_ffwd_4_0,
    input wire [63:0] in_intel_reserved_ffwd_5_0,
    input wire [31:0] in_output_size,
    output wire [0:0] out_c0_exi4_0_tpl,
    output wire [63:0] out_c0_exi4_1_tpl,
    output wire [63:0] out_c0_exi4_2_tpl,
    output wire [0:0] out_c0_exi4_3_tpl,
    output wire [0:0] out_c0_exi4_4_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_maxpool2d7,
    input wire [0:0] in_c0_eni1_0_tpl,
    input wire [0:0] in_c0_eni1_1_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [63:0] c_float_addrspace_1024_undef46_q;
    wire [32:0] c_i33_149_q;
    wire [32:0] c_i33_undef47_q;
    wire [0:0] i_fpga_indvars_iv36_replace_phi_maxpool2d11_s;
    reg [32:0] i_fpga_indvars_iv36_replace_phi_maxpool2d11_q;
    wire [33:0] i_fpga_indvars_iv_next37_maxpool2d18_a;
    wire [33:0] i_fpga_indvars_iv_next37_maxpool2d18_b;
    logic [33:0] i_fpga_indvars_iv_next37_maxpool2d18_o;
    wire [33:0] i_fpga_indvars_iv_next37_maxpool2d18_q;
    wire [63:0] i_idx_ext37_maxpool2d22_vt_join_q;
    wire [30:0] i_idx_ext37_maxpool2d22_vt_select_30_b;
    wire [63:0] i_idx_ext_maxpool2d27_vt_join_q;
    wire [30:0] i_idx_ext_maxpool2d27_vt_select_30_b;
    wire [0:0] i_input_im_addr_041_replace_phi_maxpool2d8_s;
    reg [63:0] i_input_im_addr_041_replace_phi_maxpool2d8_q;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp408_maxpool2d14_out_dest_data_out_0_0;
    wire [32:0] i_llvm_fpga_ffwd_dest_i33_unnamed_maxpool2d6_maxpool2d9_out_dest_data_out_3_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024f32_input_im_sync_buffer11_maxpool2d6_out_dest_data_out_4_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024f32_output_im_sync_buffer12_maxpool2d3_out_dest_data_out_5_0;
    wire [0:0] i_llvm_fpga_pipeline_keep_going28_maxpool2d2_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going28_maxpool2d2_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going28_maxpool2d2_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going28_maxpool2d2_out_pipeline_valid_out;
    wire [32:0] i_llvm_fpga_pop_i33_fpga_indvars_iv36_pop11_maxpool2d10_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i33_fpga_indvars_iv36_pop11_maxpool2d10_out_feedback_stall_out_11;
    wire [63:0] i_llvm_fpga_pop_p1024f32_input_im_addr_041_pop13_maxpool2d7_out_data_out;
    wire [0:0] i_llvm_fpga_pop_p1024f32_input_im_addr_041_pop13_maxpool2d7_out_feedback_stall_out_13;
    wire [63:0] i_llvm_fpga_pop_p1024f32_output_im_addr_042_pop12_maxpool2d4_out_data_out;
    wire [0:0] i_llvm_fpga_pop_p1024f32_output_im_addr_042_pop12_maxpool2d4_out_feedback_stall_out_12;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond29_maxpool2d17_out_feedback_out_10;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond29_maxpool2d17_out_feedback_valid_out_10;
    wire [63:0] i_llvm_fpga_push_i33_fpga_indvars_iv36_push11_maxpool2d19_out_feedback_out_11;
    wire [0:0] i_llvm_fpga_push_i33_fpga_indvars_iv36_push11_maxpool2d19_out_feedback_valid_out_11;
    wire [63:0] i_llvm_fpga_push_p1024f32_input_im_addr_041_push13_maxpool2d29_out_feedback_out_13;
    wire [0:0] i_llvm_fpga_push_p1024f32_input_im_addr_041_push13_maxpool2d29_out_feedback_valid_out_13;
    wire [63:0] i_llvm_fpga_push_p1024f32_output_im_addr_042_push12_maxpool2d24_out_feedback_out_12;
    wire [0:0] i_llvm_fpga_push_p1024f32_output_im_addr_042_push12_maxpool2d24_out_feedback_valid_out_12;
    wire [31:0] i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer1_maxpool2d25_out_buffer_out;
    wire [31:0] i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer3_maxpool2d20_out_buffer_out;
    wire [31:0] i_mul35_maxpool2d26_vt_join_q;
    wire [30:0] i_mul35_maxpool2d26_vt_select_30_b;
    wire [31:0] i_mul36_maxpool2d21_vt_join_q;
    wire [30:0] i_mul36_maxpool2d21_vt_select_30_b;
    wire [0:0] i_notcmp27_maxpool2d16_q;
    wire [0:0] i_output_im_addr_042_replace_phi_maxpool2d5_s;
    reg [63:0] i_output_im_addr_042_replace_phi_maxpool2d5_q;
    wire [0:0] i_unnamed_maxpool2d15_q;
    wire [32:0] bgTrunc_i_fpga_indvars_iv_next37_maxpool2d18_sel_x_b;
    wire [63:0] bgTrunc_i_mul35_maxpool2d26_sel_x_in;
    wire [31:0] bgTrunc_i_mul35_maxpool2d26_sel_x_b;
    wire [63:0] bgTrunc_i_mul36_maxpool2d21_sel_x_in;
    wire [31:0] bgTrunc_i_mul36_maxpool2d21_sel_x_b;
    wire [64:0] i_add_ptr38_maxpool2d0_add_x_a;
    wire [64:0] i_add_ptr38_maxpool2d0_add_x_b;
    logic [64:0] i_add_ptr38_maxpool2d0_add_x_o;
    wire [64:0] i_add_ptr38_maxpool2d0_add_x_q;
    wire [1:0] i_add_ptr38_maxpool2d0_c_i2_01_x_q;
    wire [61:0] i_add_ptr38_maxpool2d0_narrow_x_b;
    wire [63:0] i_add_ptr38_maxpool2d0_shift_join_x_q;
    wire [63:0] i_add_ptr38_maxpool2d0_dupName_0_trunc_sel_x_b;
    wire [64:0] i_add_ptr_maxpool2d0_add_x_a;
    wire [64:0] i_add_ptr_maxpool2d0_add_x_b;
    logic [64:0] i_add_ptr_maxpool2d0_add_x_o;
    wire [64:0] i_add_ptr_maxpool2d0_add_x_q;
    wire [61:0] i_add_ptr_maxpool2d0_narrow_x_b;
    wire [63:0] i_add_ptr_maxpool2d0_shift_join_x_q;
    wire [63:0] i_add_ptr_maxpool2d0_dupName_0_trunc_sel_x_b;
    wire [63:0] i_idx_ext37_maxpool2d22_sel_x_b;
    wire [63:0] i_idx_ext_maxpool2d27_sel_x_b;
    (* dont_merge *) reg [0:0] valid_fanout_reg0_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg1_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg2_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg3_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg4_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg5_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg6_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg7_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg8_q;
    wire [0:0] i_exitcond38_maxpool2d12_cmp_nsign_q;
    wire [63:0] i_mul35_maxpool2d26_sums_join_0_q;
    wire [50:0] i_mul35_maxpool2d26_sums_align_1_q;
    wire [50:0] i_mul35_maxpool2d26_sums_align_1_qint;
    wire [64:0] i_mul35_maxpool2d26_sums_result_add_0_0_a;
    wire [64:0] i_mul35_maxpool2d26_sums_result_add_0_0_b;
    logic [64:0] i_mul35_maxpool2d26_sums_result_add_0_0_o;
    wire [64:0] i_mul35_maxpool2d26_sums_result_add_0_0_q;
    wire [63:0] i_mul36_maxpool2d21_sums_join_0_q;
    wire [50:0] i_mul36_maxpool2d21_sums_align_1_q;
    wire [50:0] i_mul36_maxpool2d21_sums_align_1_qint;
    wire [64:0] i_mul36_maxpool2d21_sums_result_add_0_0_a;
    wire [64:0] i_mul36_maxpool2d21_sums_result_add_0_0_b;
    logic [64:0] i_mul36_maxpool2d21_sums_result_add_0_0_o;
    wire [64:0] i_mul36_maxpool2d21_sums_result_add_0_0_q;
    wire i_mul35_maxpool2d26_im0_cma_reset;
    wire [13:0] i_mul35_maxpool2d26_im0_cma_a0;
    wire [13:0] i_mul35_maxpool2d26_im0_cma_c0;
    wire [27:0] i_mul35_maxpool2d26_im0_cma_s0;
    wire [27:0] i_mul35_maxpool2d26_im0_cma_qq;
    wire [27:0] i_mul35_maxpool2d26_im0_cma_q;
    wire i_mul35_maxpool2d26_im0_cma_ena0;
    wire i_mul35_maxpool2d26_im0_cma_ena1;
    wire i_mul35_maxpool2d26_im0_cma_ena2;
    wire i_mul35_maxpool2d26_im8_cma_reset;
    wire [17:0] i_mul35_maxpool2d26_im8_cma_a0;
    wire [17:0] i_mul35_maxpool2d26_im8_cma_c0;
    wire [35:0] i_mul35_maxpool2d26_im8_cma_s0;
    wire [35:0] i_mul35_maxpool2d26_im8_cma_qq;
    wire [35:0] i_mul35_maxpool2d26_im8_cma_q;
    wire i_mul35_maxpool2d26_im8_cma_ena0;
    wire i_mul35_maxpool2d26_im8_cma_ena1;
    wire i_mul35_maxpool2d26_im8_cma_ena2;
    wire i_mul36_maxpool2d21_im0_cma_reset;
    wire [13:0] i_mul36_maxpool2d21_im0_cma_a0;
    wire [13:0] i_mul36_maxpool2d21_im0_cma_c0;
    wire [27:0] i_mul36_maxpool2d21_im0_cma_s0;
    wire [27:0] i_mul36_maxpool2d21_im0_cma_qq;
    wire [27:0] i_mul36_maxpool2d21_im0_cma_q;
    wire i_mul36_maxpool2d21_im0_cma_ena0;
    wire i_mul36_maxpool2d21_im0_cma_ena1;
    wire i_mul36_maxpool2d21_im0_cma_ena2;
    wire i_mul36_maxpool2d21_im8_cma_reset;
    wire [17:0] i_mul36_maxpool2d21_im8_cma_a0;
    wire [17:0] i_mul36_maxpool2d21_im8_cma_c0;
    wire [35:0] i_mul36_maxpool2d21_im8_cma_s0;
    wire [35:0] i_mul36_maxpool2d21_im8_cma_qq;
    wire [35:0] i_mul36_maxpool2d21_im8_cma_q;
    wire i_mul36_maxpool2d21_im8_cma_ena0;
    wire i_mul36_maxpool2d21_im8_cma_ena1;
    wire i_mul36_maxpool2d21_im8_cma_ena2;
    wire i_mul35_maxpool2d26_ma3_cma_reset;
    wire [13:0] i_mul35_maxpool2d26_ma3_cma_a0;
    wire [17:0] i_mul35_maxpool2d26_ma3_cma_c0;
    wire [13:0] i_mul35_maxpool2d26_ma3_cma_a1;
    wire [17:0] i_mul35_maxpool2d26_ma3_cma_c1;
    wire [32:0] i_mul35_maxpool2d26_ma3_cma_s0;
    wire [32:0] i_mul35_maxpool2d26_ma3_cma_qq;
    wire [32:0] i_mul35_maxpool2d26_ma3_cma_q;
    wire i_mul35_maxpool2d26_ma3_cma_ena0;
    wire i_mul35_maxpool2d26_ma3_cma_ena1;
    wire i_mul35_maxpool2d26_ma3_cma_ena2;
    wire i_mul36_maxpool2d21_ma3_cma_reset;
    wire [13:0] i_mul36_maxpool2d21_ma3_cma_a0;
    wire [17:0] i_mul36_maxpool2d21_ma3_cma_c0;
    wire [13:0] i_mul36_maxpool2d21_ma3_cma_a1;
    wire [17:0] i_mul36_maxpool2d21_ma3_cma_c1;
    wire [32:0] i_mul36_maxpool2d21_ma3_cma_s0;
    wire [32:0] i_mul36_maxpool2d21_ma3_cma_qq;
    wire [32:0] i_mul36_maxpool2d21_ma3_cma_q;
    wire i_mul36_maxpool2d21_ma3_cma_ena0;
    wire i_mul36_maxpool2d21_ma3_cma_ena1;
    wire i_mul36_maxpool2d21_ma3_cma_ena2;
    wire [13:0] i_mul35_maxpool2d26_bs1_merged_bit_select_b;
    wire [17:0] i_mul35_maxpool2d26_bs1_merged_bit_select_c;
    wire [13:0] i_mul36_maxpool2d21_bs1_merged_bit_select_b;
    wire [17:0] i_mul36_maxpool2d21_bs1_merged_bit_select_c;
    reg [0:0] redist0_sync_together67_aunroll_x_in_c0_eni1_1_tpl_5_q;
    reg [0:0] redist0_sync_together67_aunroll_x_in_c0_eni1_1_tpl_5_delay_0;
    reg [0:0] redist0_sync_together67_aunroll_x_in_c0_eni1_1_tpl_5_delay_1;
    reg [0:0] redist0_sync_together67_aunroll_x_in_c0_eni1_1_tpl_5_delay_2;
    reg [0:0] redist0_sync_together67_aunroll_x_in_c0_eni1_1_tpl_5_delay_3;
    reg [0:0] redist1_sync_together67_aunroll_x_in_i_valid_4_q;
    reg [0:0] redist1_sync_together67_aunroll_x_in_i_valid_4_delay_0;
    reg [0:0] redist1_sync_together67_aunroll_x_in_i_valid_4_delay_1;
    reg [0:0] redist1_sync_together67_aunroll_x_in_i_valid_4_delay_2;
    reg [0:0] redist2_i_unnamed_maxpool2d15_q_5_q;
    reg [0:0] redist2_i_unnamed_maxpool2d15_q_5_delay_0;
    reg [0:0] redist2_i_unnamed_maxpool2d15_q_5_delay_1;
    reg [0:0] redist2_i_unnamed_maxpool2d15_q_5_delay_2;
    reg [0:0] redist2_i_unnamed_maxpool2d15_q_5_delay_3;
    reg [30:0] redist3_i_idx_ext_maxpool2d27_vt_select_30_b_1_q;
    reg [30:0] redist4_i_idx_ext37_maxpool2d22_vt_select_30_b_1_q;


    // i_llvm_fpga_ffwd_dest_i33_unnamed_maxpool2d6_maxpool2d9(BLACKBOX,39)@1
    maxpool2d_i_llvm_fpga_ffwd_dest_i33_unnamed_6_maxpool2d0 thei_llvm_fpga_ffwd_dest_i33_unnamed_maxpool2d6_maxpool2d9 (
        .in_intel_reserved_ffwd_3_0(in_intel_reserved_ffwd_3_0),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_dest_data_out_3_0(i_llvm_fpga_ffwd_dest_i33_unnamed_maxpool2d6_maxpool2d9_out_dest_data_out_3_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i33_149(CONSTANT,23)
    assign c_i33_149_q = $unsigned(33'b111111111111111111111111111111111);

    // i_fpga_indvars_iv_next37_maxpool2d18(ADD,28)@1
    assign i_fpga_indvars_iv_next37_maxpool2d18_a = {1'b0, i_fpga_indvars_iv36_replace_phi_maxpool2d11_q};
    assign i_fpga_indvars_iv_next37_maxpool2d18_b = {1'b0, c_i33_149_q};
    assign i_fpga_indvars_iv_next37_maxpool2d18_o = $unsigned(i_fpga_indvars_iv_next37_maxpool2d18_a) + $unsigned(i_fpga_indvars_iv_next37_maxpool2d18_b);
    assign i_fpga_indvars_iv_next37_maxpool2d18_q = i_fpga_indvars_iv_next37_maxpool2d18_o[33:0];

    // bgTrunc_i_fpga_indvars_iv_next37_maxpool2d18_sel_x(BITSELECT,73)@1
    assign bgTrunc_i_fpga_indvars_iv_next37_maxpool2d18_sel_x_b = i_fpga_indvars_iv_next37_maxpool2d18_q[32:0];

    // i_llvm_fpga_push_i33_fpga_indvars_iv36_push11_maxpool2d19(BLACKBOX,47)@1
    // out out_feedback_out_11@20000000
    // out out_feedback_valid_out_11@20000000
    maxpool2d_i_llvm_fpga_push_i33_fpga_indvars_iv36_push11_0 thei_llvm_fpga_push_i33_fpga_indvars_iv36_push11_maxpool2d19 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next37_maxpool2d18_sel_x_b),
        .in_feedback_stall_in_11(i_llvm_fpga_pop_i33_fpga_indvars_iv36_pop11_maxpool2d10_out_feedback_stall_out_11),
        .in_stall_in(GND_q),
        .in_unnamed_maxpool2d17(i_unnamed_maxpool2d15_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_feedback_out_11(i_llvm_fpga_push_i33_fpga_indvars_iv36_push11_maxpool2d19_out_feedback_out_11),
        .out_feedback_valid_out_11(i_llvm_fpga_push_i33_fpga_indvars_iv36_push11_maxpool2d19_out_feedback_valid_out_11),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i33_undef47(CONSTANT,24)
    assign c_i33_undef47_q = $unsigned(33'b000000000000000000000000000000000);

    // i_llvm_fpga_pop_i33_fpga_indvars_iv36_pop11_maxpool2d10(BLACKBOX,43)@1
    // out out_feedback_stall_out_11@20000000
    maxpool2d_i_llvm_fpga_pop_i33_fpga_indvars_iv36_pop11_0 thei_llvm_fpga_pop_i33_fpga_indvars_iv36_pop11_maxpool2d10 (
        .in_data_in(c_i33_undef47_q),
        .in_dir(in_c0_eni1_1_tpl),
        .in_feedback_in_11(i_llvm_fpga_push_i33_fpga_indvars_iv36_push11_maxpool2d19_out_feedback_out_11),
        .in_feedback_valid_in_11(i_llvm_fpga_push_i33_fpga_indvars_iv36_push11_maxpool2d19_out_feedback_valid_out_11),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(i_llvm_fpga_pop_i33_fpga_indvars_iv36_pop11_maxpool2d10_out_data_out),
        .out_feedback_stall_out_11(i_llvm_fpga_pop_i33_fpga_indvars_iv36_pop11_maxpool2d10_out_feedback_stall_out_11),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_fpga_indvars_iv36_replace_phi_maxpool2d11(MUX,27)@1
    assign i_fpga_indvars_iv36_replace_phi_maxpool2d11_s = in_c0_eni1_1_tpl;
    always @(i_fpga_indvars_iv36_replace_phi_maxpool2d11_s or i_llvm_fpga_pop_i33_fpga_indvars_iv36_pop11_maxpool2d10_out_data_out or i_llvm_fpga_ffwd_dest_i33_unnamed_maxpool2d6_maxpool2d9_out_dest_data_out_3_0)
    begin
        unique case (i_fpga_indvars_iv36_replace_phi_maxpool2d11_s)
            1'b0 : i_fpga_indvars_iv36_replace_phi_maxpool2d11_q = i_llvm_fpga_pop_i33_fpga_indvars_iv36_pop11_maxpool2d10_out_data_out;
            1'b1 : i_fpga_indvars_iv36_replace_phi_maxpool2d11_q = i_llvm_fpga_ffwd_dest_i33_unnamed_maxpool2d6_maxpool2d9_out_dest_data_out_3_0;
            default : i_fpga_indvars_iv36_replace_phi_maxpool2d11_q = 33'b0;
        endcase
    end

    // i_exitcond38_maxpool2d12_cmp_nsign(LOGICAL,108)@1
    assign i_exitcond38_maxpool2d12_cmp_nsign_q = $unsigned(~ (i_fpga_indvars_iv36_replace_phi_maxpool2d11_q[32:32]));

    // i_llvm_fpga_ffwd_dest_i1_cmp408_maxpool2d14(BLACKBOX,38)@1
    maxpool2d_i_llvm_fpga_ffwd_dest_i1_cmp408_0 thei_llvm_fpga_ffwd_dest_i1_cmp408_maxpool2d14 (
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_dest_data_out_0_0(i_llvm_fpga_ffwd_dest_i1_cmp408_maxpool2d14_out_dest_data_out_0_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_maxpool2d15(LOGICAL,62)@1
    assign i_unnamed_maxpool2d15_q = i_llvm_fpga_ffwd_dest_i1_cmp408_maxpool2d14_out_dest_data_out_0_0 & i_exitcond38_maxpool2d12_cmp_nsign_q;

    // i_llvm_fpga_push_i1_notexitcond29_maxpool2d17(BLACKBOX,46)@1
    // out out_feedback_out_10@20000000
    // out out_feedback_valid_out_10@20000000
    maxpool2d_i_llvm_fpga_push_i1_notexitcond29_0 thei_llvm_fpga_push_i1_notexitcond29_maxpool2d17 (
        .in_data_in(i_unnamed_maxpool2d15_q),
        .in_feedback_stall_in_10(i_llvm_fpga_pipeline_keep_going28_maxpool2d2_out_not_exitcond_stall_out),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_feedback_out_10(i_llvm_fpga_push_i1_notexitcond29_maxpool2d17_out_feedback_out_10),
        .out_feedback_valid_out_10(i_llvm_fpga_push_i1_notexitcond29_maxpool2d17_out_feedback_valid_out_10),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // i_llvm_fpga_pipeline_keep_going28_maxpool2d2(BLACKBOX,42)@1
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    maxpool2d_i_llvm_fpga_pipeline_keep_going28_0 thei_llvm_fpga_pipeline_keep_going28_maxpool2d2 (
        .in_data_in(VCC_q),
        .in_initeration_in(GND_q),
        .in_initeration_valid_in(GND_q),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond29_maxpool2d17_out_feedback_out_10),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond29_maxpool2d17_out_feedback_valid_out_10),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going28_maxpool2d2_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going28_maxpool2d2_out_exiting_valid_out),
        .out_initeration_stall_out(),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going28_maxpool2d2_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going28_maxpool2d2_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,25)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going28_maxpool2d2_exiting_valid_out = i_llvm_fpga_pipeline_keep_going28_maxpool2d2_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going28_maxpool2d2_exiting_stall_out = i_llvm_fpga_pipeline_keep_going28_maxpool2d2_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,65)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going28_maxpool2d2_out_pipeline_valid_out;

    // redist1_sync_together67_aunroll_x_in_i_valid_4(DELAY,148)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together67_aunroll_x_in_i_valid_4_delay_0 <= '0;
            redist1_sync_together67_aunroll_x_in_i_valid_4_delay_1 <= '0;
            redist1_sync_together67_aunroll_x_in_i_valid_4_delay_2 <= '0;
            redist1_sync_together67_aunroll_x_in_i_valid_4_q <= '0;
        end
        else
        begin
            redist1_sync_together67_aunroll_x_in_i_valid_4_delay_0 <= $unsigned(in_i_valid);
            redist1_sync_together67_aunroll_x_in_i_valid_4_delay_1 <= redist1_sync_together67_aunroll_x_in_i_valid_4_delay_0;
            redist1_sync_together67_aunroll_x_in_i_valid_4_delay_2 <= redist1_sync_together67_aunroll_x_in_i_valid_4_delay_1;
            redist1_sync_together67_aunroll_x_in_i_valid_4_q <= redist1_sync_together67_aunroll_x_in_i_valid_4_delay_2;
        end
    end

    // valid_fanout_reg0(REG,93)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist1_sync_together67_aunroll_x_in_i_valid_4_q);
        end
    end

    // i_notcmp27_maxpool2d16(LOGICAL,60)@6
    assign i_notcmp27_maxpool2d16_q = redist2_i_unnamed_maxpool2d15_q_5_q ^ VCC_q;

    // redist2_i_unnamed_maxpool2d15_q_5(DELAY,149)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_i_unnamed_maxpool2d15_q_5_delay_0 <= '0;
            redist2_i_unnamed_maxpool2d15_q_5_delay_1 <= '0;
            redist2_i_unnamed_maxpool2d15_q_5_delay_2 <= '0;
            redist2_i_unnamed_maxpool2d15_q_5_delay_3 <= '0;
            redist2_i_unnamed_maxpool2d15_q_5_q <= '0;
        end
        else
        begin
            redist2_i_unnamed_maxpool2d15_q_5_delay_0 <= $unsigned(i_unnamed_maxpool2d15_q);
            redist2_i_unnamed_maxpool2d15_q_5_delay_1 <= redist2_i_unnamed_maxpool2d15_q_5_delay_0;
            redist2_i_unnamed_maxpool2d15_q_5_delay_2 <= redist2_i_unnamed_maxpool2d15_q_5_delay_1;
            redist2_i_unnamed_maxpool2d15_q_5_delay_3 <= redist2_i_unnamed_maxpool2d15_q_5_delay_2;
            redist2_i_unnamed_maxpool2d15_q_5_q <= redist2_i_unnamed_maxpool2d15_q_5_delay_3;
        end
    end

    // valid_fanout_reg3(REG,96)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg3_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg3_q <= $unsigned(redist1_sync_together67_aunroll_x_in_i_valid_4_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1024f32_input_im_sync_buffer11_maxpool2d6(BLACKBOX,40)@6
    maxpool2d_i_llvm_fpga_ffwd_dest_p1024f320000t_im_sync_buffer11_0 thei_llvm_fpga_ffwd_dest_p1024f32_input_im_sync_buffer11_maxpool2d6 (
        .in_intel_reserved_ffwd_4_0(in_intel_reserved_ffwd_4_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_dest_data_out_4_0(i_llvm_fpga_ffwd_dest_p1024f32_input_im_sync_buffer11_maxpool2d6_out_dest_data_out_4_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg4(REG,97)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg4_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg4_q <= $unsigned(redist1_sync_together67_aunroll_x_in_i_valid_4_q);
        end
    end

    // valid_fanout_reg8(REG,101)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg8_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg8_q <= $unsigned(redist1_sync_together67_aunroll_x_in_i_valid_4_q);
        end
    end

    // valid_fanout_reg7(REG,100)@1 + 1
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

    // i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer1_maxpool2d25(BLACKBOX,50)@0
    // in in_i_dependence@2
    // in in_valid_in@2
    // out out_buffer_out@2
    // out out_valid_out@2
    maxpool2d_i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer1_0 thei_llvm_fpga_sync_buffer_i32_input_size_sync_buffer1_maxpool2d25 (
        .in_buffer_in(in_input_size),
        .in_i_dependence(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg7_q),
        .out_buffer_out(i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer1_maxpool2d25_out_buffer_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_mul35_maxpool2d26_bs1_merged_bit_select(BITSELECT,145)@2
    assign i_mul35_maxpool2d26_bs1_merged_bit_select_b = i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer1_maxpool2d25_out_buffer_out[31:18];
    assign i_mul35_maxpool2d26_bs1_merged_bit_select_c = i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer1_maxpool2d25_out_buffer_out[17:0];

    // i_mul35_maxpool2d26_ma3_cma(CHAINMULTADD,143)@2 + 3
    assign i_mul35_maxpool2d26_ma3_cma_reset = ~ (resetn);
    assign i_mul35_maxpool2d26_ma3_cma_ena0 = 1'b1;
    assign i_mul35_maxpool2d26_ma3_cma_ena1 = i_mul35_maxpool2d26_ma3_cma_ena0;
    assign i_mul35_maxpool2d26_ma3_cma_ena2 = i_mul35_maxpool2d26_ma3_cma_ena0;

    assign i_mul35_maxpool2d26_ma3_cma_a0 = i_mul35_maxpool2d26_bs1_merged_bit_select_b;
    assign i_mul35_maxpool2d26_ma3_cma_c0 = i_mul35_maxpool2d26_bs1_merged_bit_select_c;
    assign i_mul35_maxpool2d26_ma3_cma_a1 = i_mul35_maxpool2d26_bs1_merged_bit_select_b;
    assign i_mul35_maxpool2d26_ma3_cma_c1 = i_mul35_maxpool2d26_bs1_merged_bit_select_c;
    twentynm_mac #(
        .operation_mode("m18x18_sumof2"),
        .use_chainadder("false"),
        .ay_scan_in_clock("0"),
        .ay_scan_in_width(14),
        .by_clock("0"),
        .by_width(14),
        .ax_clock("0"),
        .bx_clock("0"),
        .ax_width(18),
        .bx_width(18),
        .signed_may("false"),
        .signed_mby("false"),
        .signed_max("false"),
        .signed_mbx("false"),
        .input_pipeline_clock("2"),
        .output_clock("1"),
        .result_a_width(33)
    ) i_mul35_maxpool2d26_ma3_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul35_maxpool2d26_ma3_cma_ena2, i_mul35_maxpool2d26_ma3_cma_ena1, i_mul35_maxpool2d26_ma3_cma_ena0 }),
        .aclr({ i_mul35_maxpool2d26_ma3_cma_reset, i_mul35_maxpool2d26_ma3_cma_reset }),
        .ay(i_mul35_maxpool2d26_ma3_cma_a1),
        .by(i_mul35_maxpool2d26_ma3_cma_a0),
        .ax(i_mul35_maxpool2d26_ma3_cma_c1),
        .bx(i_mul35_maxpool2d26_ma3_cma_c0),
        .resulta(i_mul35_maxpool2d26_ma3_cma_s0),
        .accumulate(),
        .loadconst(),
        .negate(),
        .sub(),
        .az(),
        .coefsela(),
        .bz(),
        .coefselb(),
        .scanin(),
        .scanout(),
        .chainin(),
        .chainout(),
        .resultb(),
        .dftout()
    );
    dspba_delay_ver #( .width(33), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_mul35_maxpool2d26_ma3_cma_delay ( .xin(i_mul35_maxpool2d26_ma3_cma_s0), .xout(i_mul35_maxpool2d26_ma3_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul35_maxpool2d26_ma3_cma_q = $unsigned(i_mul35_maxpool2d26_ma3_cma_qq[32:0]);

    // i_mul35_maxpool2d26_sums_align_1(BITSHIFT,121)@5
    assign i_mul35_maxpool2d26_sums_align_1_qint = { i_mul35_maxpool2d26_ma3_cma_q, 18'b000000000000000000 };
    assign i_mul35_maxpool2d26_sums_align_1_q = i_mul35_maxpool2d26_sums_align_1_qint[50:0];

    // i_mul35_maxpool2d26_im0_cma(CHAINMULTADD,139)@2 + 3
    assign i_mul35_maxpool2d26_im0_cma_reset = ~ (resetn);
    assign i_mul35_maxpool2d26_im0_cma_ena0 = 1'b1;
    assign i_mul35_maxpool2d26_im0_cma_ena1 = i_mul35_maxpool2d26_im0_cma_ena0;
    assign i_mul35_maxpool2d26_im0_cma_ena2 = i_mul35_maxpool2d26_im0_cma_ena0;

    assign i_mul35_maxpool2d26_im0_cma_a0 = i_mul35_maxpool2d26_bs1_merged_bit_select_b;
    assign i_mul35_maxpool2d26_im0_cma_c0 = i_mul35_maxpool2d26_bs1_merged_bit_select_b;
    twentynm_mac #(
        .operation_mode("m18x18_full"),
        .ay_scan_in_clock("0"),
        .ay_scan_in_width(14),
        .ax_clock("0"),
        .ax_width(14),
        .signed_may("false"),
        .signed_max("false"),
        .input_pipeline_clock("2"),
        .output_clock("1"),
        .result_a_width(28)
    ) i_mul35_maxpool2d26_im0_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul35_maxpool2d26_im0_cma_ena2, i_mul35_maxpool2d26_im0_cma_ena1, i_mul35_maxpool2d26_im0_cma_ena0 }),
        .aclr({ i_mul35_maxpool2d26_im0_cma_reset, i_mul35_maxpool2d26_im0_cma_reset }),
        .ay(i_mul35_maxpool2d26_im0_cma_a0),
        .ax(i_mul35_maxpool2d26_im0_cma_c0),
        .resulta(i_mul35_maxpool2d26_im0_cma_s0),
        .accumulate(),
        .loadconst(),
        .negate(),
        .sub(),
        .az(),
        .coefsela(),
        .bx(),
        .by(),
        .bz(),
        .coefselb(),
        .scanin(),
        .scanout(),
        .chainin(),
        .chainout(),
        .resultb(),
        .dftout()
    );
    dspba_delay_ver #( .width(28), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_mul35_maxpool2d26_im0_cma_delay ( .xin(i_mul35_maxpool2d26_im0_cma_s0), .xout(i_mul35_maxpool2d26_im0_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul35_maxpool2d26_im0_cma_q = $unsigned(i_mul35_maxpool2d26_im0_cma_qq[27:0]);

    // i_mul35_maxpool2d26_im8_cma(CHAINMULTADD,140)@2 + 3
    assign i_mul35_maxpool2d26_im8_cma_reset = ~ (resetn);
    assign i_mul35_maxpool2d26_im8_cma_ena0 = 1'b1;
    assign i_mul35_maxpool2d26_im8_cma_ena1 = i_mul35_maxpool2d26_im8_cma_ena0;
    assign i_mul35_maxpool2d26_im8_cma_ena2 = i_mul35_maxpool2d26_im8_cma_ena0;

    assign i_mul35_maxpool2d26_im8_cma_a0 = i_mul35_maxpool2d26_bs1_merged_bit_select_c;
    assign i_mul35_maxpool2d26_im8_cma_c0 = i_mul35_maxpool2d26_bs1_merged_bit_select_c;
    twentynm_mac #(
        .operation_mode("m18x18_full"),
        .ay_scan_in_clock("0"),
        .ay_scan_in_width(18),
        .ax_clock("0"),
        .ax_width(18),
        .signed_may("false"),
        .signed_max("false"),
        .input_pipeline_clock("2"),
        .output_clock("1"),
        .result_a_width(36)
    ) i_mul35_maxpool2d26_im8_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul35_maxpool2d26_im8_cma_ena2, i_mul35_maxpool2d26_im8_cma_ena1, i_mul35_maxpool2d26_im8_cma_ena0 }),
        .aclr({ i_mul35_maxpool2d26_im8_cma_reset, i_mul35_maxpool2d26_im8_cma_reset }),
        .ay(i_mul35_maxpool2d26_im8_cma_a0),
        .ax(i_mul35_maxpool2d26_im8_cma_c0),
        .resulta(i_mul35_maxpool2d26_im8_cma_s0),
        .accumulate(),
        .loadconst(),
        .negate(),
        .sub(),
        .az(),
        .coefsela(),
        .bx(),
        .by(),
        .bz(),
        .coefselb(),
        .scanin(),
        .scanout(),
        .chainin(),
        .chainout(),
        .resultb(),
        .dftout()
    );
    dspba_delay_ver #( .width(36), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_mul35_maxpool2d26_im8_cma_delay ( .xin(i_mul35_maxpool2d26_im8_cma_s0), .xout(i_mul35_maxpool2d26_im8_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul35_maxpool2d26_im8_cma_q = $unsigned(i_mul35_maxpool2d26_im8_cma_qq[35:0]);

    // i_mul35_maxpool2d26_sums_join_0(BITJOIN,120)@5
    assign i_mul35_maxpool2d26_sums_join_0_q = {i_mul35_maxpool2d26_im0_cma_q, i_mul35_maxpool2d26_im8_cma_q};

    // i_mul35_maxpool2d26_sums_result_add_0_0(ADD,123)@5
    assign i_mul35_maxpool2d26_sums_result_add_0_0_a = {1'b0, i_mul35_maxpool2d26_sums_join_0_q};
    assign i_mul35_maxpool2d26_sums_result_add_0_0_b = {14'b00000000000000, i_mul35_maxpool2d26_sums_align_1_q};
    assign i_mul35_maxpool2d26_sums_result_add_0_0_o = $unsigned(i_mul35_maxpool2d26_sums_result_add_0_0_a) + $unsigned(i_mul35_maxpool2d26_sums_result_add_0_0_b);
    assign i_mul35_maxpool2d26_sums_result_add_0_0_q = i_mul35_maxpool2d26_sums_result_add_0_0_o[64:0];

    // bgTrunc_i_mul35_maxpool2d26_sel_x(BITSELECT,74)@5
    assign bgTrunc_i_mul35_maxpool2d26_sel_x_in = i_mul35_maxpool2d26_sums_result_add_0_0_q[63:0];
    assign bgTrunc_i_mul35_maxpool2d26_sel_x_b = bgTrunc_i_mul35_maxpool2d26_sel_x_in[31:0];

    // i_mul35_maxpool2d26_vt_select_30(BITSELECT,55)@5
    assign i_mul35_maxpool2d26_vt_select_30_b = bgTrunc_i_mul35_maxpool2d26_sel_x_b[30:0];

    // i_mul35_maxpool2d26_vt_join(BITJOIN,54)@5
    assign i_mul35_maxpool2d26_vt_join_q = {GND_q, i_mul35_maxpool2d26_vt_select_30_b};

    // i_idx_ext_maxpool2d27_sel_x(BITSELECT,90)@5
    assign i_idx_ext_maxpool2d27_sel_x_b = {32'b00000000000000000000000000000000, i_mul35_maxpool2d26_vt_join_q[31:0]};

    // i_idx_ext_maxpool2d27_vt_select_30(BITSELECT,36)@5
    assign i_idx_ext_maxpool2d27_vt_select_30_b = i_idx_ext_maxpool2d27_sel_x_b[30:0];

    // redist3_i_idx_ext_maxpool2d27_vt_select_30_b_1(DELAY,150)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_i_idx_ext_maxpool2d27_vt_select_30_b_1_q <= '0;
        end
        else
        begin
            redist3_i_idx_ext_maxpool2d27_vt_select_30_b_1_q <= $unsigned(i_idx_ext_maxpool2d27_vt_select_30_b);
        end
    end

    // i_idx_ext_maxpool2d27_vt_join(BITJOIN,35)@6
    assign i_idx_ext_maxpool2d27_vt_join_q = {c_i33_undef47_q, redist3_i_idx_ext_maxpool2d27_vt_select_30_b_1_q};

    // i_add_ptr_maxpool2d0_narrow_x(BITSELECT,85)@6
    assign i_add_ptr_maxpool2d0_narrow_x_b = i_idx_ext_maxpool2d27_vt_join_q[61:0];

    // i_add_ptr38_maxpool2d0_c_i2_01_x(CONSTANT,78)
    assign i_add_ptr38_maxpool2d0_c_i2_01_x_q = $unsigned(2'b00);

    // i_add_ptr_maxpool2d0_shift_join_x(BITJOIN,86)@6
    assign i_add_ptr_maxpool2d0_shift_join_x_q = {i_add_ptr_maxpool2d0_narrow_x_b, i_add_ptr38_maxpool2d0_c_i2_01_x_q};

    // i_add_ptr_maxpool2d0_add_x(ADD,83)@6
    assign i_add_ptr_maxpool2d0_add_x_a = {1'b0, i_input_im_addr_041_replace_phi_maxpool2d8_q};
    assign i_add_ptr_maxpool2d0_add_x_b = {1'b0, i_add_ptr_maxpool2d0_shift_join_x_q};
    assign i_add_ptr_maxpool2d0_add_x_o = $unsigned(i_add_ptr_maxpool2d0_add_x_a) + $unsigned(i_add_ptr_maxpool2d0_add_x_b);
    assign i_add_ptr_maxpool2d0_add_x_q = i_add_ptr_maxpool2d0_add_x_o[64:0];

    // i_add_ptr_maxpool2d0_dupName_0_trunc_sel_x(BITSELECT,88)@6
    assign i_add_ptr_maxpool2d0_dupName_0_trunc_sel_x_b = i_add_ptr_maxpool2d0_add_x_q[63:0];

    // i_llvm_fpga_push_p1024f32_input_im_addr_041_push13_maxpool2d29(BLACKBOX,48)@6
    // out out_feedback_out_13@20000000
    // out out_feedback_valid_out_13@20000000
    maxpool2d_i_llvm_fpga_push_p1024f32_input_im_addr_041_push13_0 thei_llvm_fpga_push_p1024f32_input_im_addr_041_push13_maxpool2d29 (
        .in_data_in(i_add_ptr_maxpool2d0_dupName_0_trunc_sel_x_b),
        .in_feedback_stall_in_13(i_llvm_fpga_pop_p1024f32_input_im_addr_041_pop13_maxpool2d7_out_feedback_stall_out_13),
        .in_stall_in(GND_q),
        .in_unnamed_maxpool2d17(redist2_i_unnamed_maxpool2d15_q_5_q),
        .in_valid_in(valid_fanout_reg8_q),
        .out_data_out(),
        .out_feedback_out_13(i_llvm_fpga_push_p1024f32_input_im_addr_041_push13_maxpool2d29_out_feedback_out_13),
        .out_feedback_valid_out_13(i_llvm_fpga_push_p1024f32_input_im_addr_041_push13_maxpool2d29_out_feedback_valid_out_13),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_float_addrspace_1024_undef46(CONSTANT,5)
    assign c_float_addrspace_1024_undef46_q = $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);

    // i_llvm_fpga_pop_p1024f32_input_im_addr_041_pop13_maxpool2d7(BLACKBOX,44)@6
    // out out_feedback_stall_out_13@20000000
    maxpool2d_i_llvm_fpga_pop_p1024f32_input_im_addr_041_pop13_0 thei_llvm_fpga_pop_p1024f32_input_im_addr_041_pop13_maxpool2d7 (
        .in_data_in(c_float_addrspace_1024_undef46_q),
        .in_dir(redist0_sync_together67_aunroll_x_in_c0_eni1_1_tpl_5_q),
        .in_feedback_in_13(i_llvm_fpga_push_p1024f32_input_im_addr_041_push13_maxpool2d29_out_feedback_out_13),
        .in_feedback_valid_in_13(i_llvm_fpga_push_p1024f32_input_im_addr_041_push13_maxpool2d29_out_feedback_valid_out_13),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_data_out(i_llvm_fpga_pop_p1024f32_input_im_addr_041_pop13_maxpool2d7_out_data_out),
        .out_feedback_stall_out_13(i_llvm_fpga_pop_p1024f32_input_im_addr_041_pop13_maxpool2d7_out_feedback_stall_out_13),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist0_sync_together67_aunroll_x_in_c0_eni1_1_tpl_5(DELAY,147)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_sync_together67_aunroll_x_in_c0_eni1_1_tpl_5_delay_0 <= '0;
            redist0_sync_together67_aunroll_x_in_c0_eni1_1_tpl_5_delay_1 <= '0;
            redist0_sync_together67_aunroll_x_in_c0_eni1_1_tpl_5_delay_2 <= '0;
            redist0_sync_together67_aunroll_x_in_c0_eni1_1_tpl_5_delay_3 <= '0;
            redist0_sync_together67_aunroll_x_in_c0_eni1_1_tpl_5_q <= '0;
        end
        else
        begin
            redist0_sync_together67_aunroll_x_in_c0_eni1_1_tpl_5_delay_0 <= $unsigned(in_c0_eni1_1_tpl);
            redist0_sync_together67_aunroll_x_in_c0_eni1_1_tpl_5_delay_1 <= redist0_sync_together67_aunroll_x_in_c0_eni1_1_tpl_5_delay_0;
            redist0_sync_together67_aunroll_x_in_c0_eni1_1_tpl_5_delay_2 <= redist0_sync_together67_aunroll_x_in_c0_eni1_1_tpl_5_delay_1;
            redist0_sync_together67_aunroll_x_in_c0_eni1_1_tpl_5_delay_3 <= redist0_sync_together67_aunroll_x_in_c0_eni1_1_tpl_5_delay_2;
            redist0_sync_together67_aunroll_x_in_c0_eni1_1_tpl_5_q <= redist0_sync_together67_aunroll_x_in_c0_eni1_1_tpl_5_delay_3;
        end
    end

    // i_input_im_addr_041_replace_phi_maxpool2d8(MUX,37)@6
    assign i_input_im_addr_041_replace_phi_maxpool2d8_s = redist0_sync_together67_aunroll_x_in_c0_eni1_1_tpl_5_q;
    always @(i_input_im_addr_041_replace_phi_maxpool2d8_s or i_llvm_fpga_pop_p1024f32_input_im_addr_041_pop13_maxpool2d7_out_data_out or i_llvm_fpga_ffwd_dest_p1024f32_input_im_sync_buffer11_maxpool2d6_out_dest_data_out_4_0)
    begin
        unique case (i_input_im_addr_041_replace_phi_maxpool2d8_s)
            1'b0 : i_input_im_addr_041_replace_phi_maxpool2d8_q = i_llvm_fpga_pop_p1024f32_input_im_addr_041_pop13_maxpool2d7_out_data_out;
            1'b1 : i_input_im_addr_041_replace_phi_maxpool2d8_q = i_llvm_fpga_ffwd_dest_p1024f32_input_im_sync_buffer11_maxpool2d6_out_dest_data_out_4_0;
            default : i_input_im_addr_041_replace_phi_maxpool2d8_q = 64'b0;
        endcase
    end

    // valid_fanout_reg1(REG,94)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg1_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg1_q <= $unsigned(redist1_sync_together67_aunroll_x_in_i_valid_4_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1024f32_output_im_sync_buffer12_maxpool2d3(BLACKBOX,41)@6
    maxpool2d_i_llvm_fpga_ffwd_dest_p1024f320000t_im_sync_buffer12_0 thei_llvm_fpga_ffwd_dest_p1024f32_output_im_sync_buffer12_maxpool2d3 (
        .in_intel_reserved_ffwd_5_0(in_intel_reserved_ffwd_5_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_dest_data_out_5_0(i_llvm_fpga_ffwd_dest_p1024f32_output_im_sync_buffer12_maxpool2d3_out_dest_data_out_5_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg2(REG,95)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg2_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg2_q <= $unsigned(redist1_sync_together67_aunroll_x_in_i_valid_4_q);
        end
    end

    // valid_fanout_reg6(REG,99)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg6_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg6_q <= $unsigned(redist1_sync_together67_aunroll_x_in_i_valid_4_q);
        end
    end

    // valid_fanout_reg5(REG,98)@1 + 1
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

    // i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer3_maxpool2d20(BLACKBOX,51)@0
    // in in_i_dependence@2
    // in in_valid_in@2
    // out out_buffer_out@2
    // out out_valid_out@2
    maxpool2d_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer3_0 thei_llvm_fpga_sync_buffer_i32_output_size_sync_buffer3_maxpool2d20 (
        .in_buffer_in(in_output_size),
        .in_i_dependence(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_buffer_out(i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer3_maxpool2d20_out_buffer_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_mul36_maxpool2d21_bs1_merged_bit_select(BITSELECT,146)@2
    assign i_mul36_maxpool2d21_bs1_merged_bit_select_b = i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer3_maxpool2d20_out_buffer_out[31:18];
    assign i_mul36_maxpool2d21_bs1_merged_bit_select_c = i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer3_maxpool2d20_out_buffer_out[17:0];

    // i_mul36_maxpool2d21_ma3_cma(CHAINMULTADD,144)@2 + 3
    assign i_mul36_maxpool2d21_ma3_cma_reset = ~ (resetn);
    assign i_mul36_maxpool2d21_ma3_cma_ena0 = 1'b1;
    assign i_mul36_maxpool2d21_ma3_cma_ena1 = i_mul36_maxpool2d21_ma3_cma_ena0;
    assign i_mul36_maxpool2d21_ma3_cma_ena2 = i_mul36_maxpool2d21_ma3_cma_ena0;

    assign i_mul36_maxpool2d21_ma3_cma_a0 = i_mul36_maxpool2d21_bs1_merged_bit_select_b;
    assign i_mul36_maxpool2d21_ma3_cma_c0 = i_mul36_maxpool2d21_bs1_merged_bit_select_c;
    assign i_mul36_maxpool2d21_ma3_cma_a1 = i_mul36_maxpool2d21_bs1_merged_bit_select_b;
    assign i_mul36_maxpool2d21_ma3_cma_c1 = i_mul36_maxpool2d21_bs1_merged_bit_select_c;
    twentynm_mac #(
        .operation_mode("m18x18_sumof2"),
        .use_chainadder("false"),
        .ay_scan_in_clock("0"),
        .ay_scan_in_width(14),
        .by_clock("0"),
        .by_width(14),
        .ax_clock("0"),
        .bx_clock("0"),
        .ax_width(18),
        .bx_width(18),
        .signed_may("false"),
        .signed_mby("false"),
        .signed_max("false"),
        .signed_mbx("false"),
        .input_pipeline_clock("2"),
        .output_clock("1"),
        .result_a_width(33)
    ) i_mul36_maxpool2d21_ma3_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul36_maxpool2d21_ma3_cma_ena2, i_mul36_maxpool2d21_ma3_cma_ena1, i_mul36_maxpool2d21_ma3_cma_ena0 }),
        .aclr({ i_mul36_maxpool2d21_ma3_cma_reset, i_mul36_maxpool2d21_ma3_cma_reset }),
        .ay(i_mul36_maxpool2d21_ma3_cma_a1),
        .by(i_mul36_maxpool2d21_ma3_cma_a0),
        .ax(i_mul36_maxpool2d21_ma3_cma_c1),
        .bx(i_mul36_maxpool2d21_ma3_cma_c0),
        .resulta(i_mul36_maxpool2d21_ma3_cma_s0),
        .accumulate(),
        .loadconst(),
        .negate(),
        .sub(),
        .az(),
        .coefsela(),
        .bz(),
        .coefselb(),
        .scanin(),
        .scanout(),
        .chainin(),
        .chainout(),
        .resultb(),
        .dftout()
    );
    dspba_delay_ver #( .width(33), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_mul36_maxpool2d21_ma3_cma_delay ( .xin(i_mul36_maxpool2d21_ma3_cma_s0), .xout(i_mul36_maxpool2d21_ma3_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul36_maxpool2d21_ma3_cma_q = $unsigned(i_mul36_maxpool2d21_ma3_cma_qq[32:0]);

    // i_mul36_maxpool2d21_sums_align_1(BITSHIFT,136)@5
    assign i_mul36_maxpool2d21_sums_align_1_qint = { i_mul36_maxpool2d21_ma3_cma_q, 18'b000000000000000000 };
    assign i_mul36_maxpool2d21_sums_align_1_q = i_mul36_maxpool2d21_sums_align_1_qint[50:0];

    // i_mul36_maxpool2d21_im0_cma(CHAINMULTADD,141)@2 + 3
    assign i_mul36_maxpool2d21_im0_cma_reset = ~ (resetn);
    assign i_mul36_maxpool2d21_im0_cma_ena0 = 1'b1;
    assign i_mul36_maxpool2d21_im0_cma_ena1 = i_mul36_maxpool2d21_im0_cma_ena0;
    assign i_mul36_maxpool2d21_im0_cma_ena2 = i_mul36_maxpool2d21_im0_cma_ena0;

    assign i_mul36_maxpool2d21_im0_cma_a0 = i_mul36_maxpool2d21_bs1_merged_bit_select_b;
    assign i_mul36_maxpool2d21_im0_cma_c0 = i_mul36_maxpool2d21_bs1_merged_bit_select_b;
    twentynm_mac #(
        .operation_mode("m18x18_full"),
        .ay_scan_in_clock("0"),
        .ay_scan_in_width(14),
        .ax_clock("0"),
        .ax_width(14),
        .signed_may("false"),
        .signed_max("false"),
        .input_pipeline_clock("2"),
        .output_clock("1"),
        .result_a_width(28)
    ) i_mul36_maxpool2d21_im0_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul36_maxpool2d21_im0_cma_ena2, i_mul36_maxpool2d21_im0_cma_ena1, i_mul36_maxpool2d21_im0_cma_ena0 }),
        .aclr({ i_mul36_maxpool2d21_im0_cma_reset, i_mul36_maxpool2d21_im0_cma_reset }),
        .ay(i_mul36_maxpool2d21_im0_cma_a0),
        .ax(i_mul36_maxpool2d21_im0_cma_c0),
        .resulta(i_mul36_maxpool2d21_im0_cma_s0),
        .accumulate(),
        .loadconst(),
        .negate(),
        .sub(),
        .az(),
        .coefsela(),
        .bx(),
        .by(),
        .bz(),
        .coefselb(),
        .scanin(),
        .scanout(),
        .chainin(),
        .chainout(),
        .resultb(),
        .dftout()
    );
    dspba_delay_ver #( .width(28), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_mul36_maxpool2d21_im0_cma_delay ( .xin(i_mul36_maxpool2d21_im0_cma_s0), .xout(i_mul36_maxpool2d21_im0_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul36_maxpool2d21_im0_cma_q = $unsigned(i_mul36_maxpool2d21_im0_cma_qq[27:0]);

    // i_mul36_maxpool2d21_im8_cma(CHAINMULTADD,142)@2 + 3
    assign i_mul36_maxpool2d21_im8_cma_reset = ~ (resetn);
    assign i_mul36_maxpool2d21_im8_cma_ena0 = 1'b1;
    assign i_mul36_maxpool2d21_im8_cma_ena1 = i_mul36_maxpool2d21_im8_cma_ena0;
    assign i_mul36_maxpool2d21_im8_cma_ena2 = i_mul36_maxpool2d21_im8_cma_ena0;

    assign i_mul36_maxpool2d21_im8_cma_a0 = i_mul36_maxpool2d21_bs1_merged_bit_select_c;
    assign i_mul36_maxpool2d21_im8_cma_c0 = i_mul36_maxpool2d21_bs1_merged_bit_select_c;
    twentynm_mac #(
        .operation_mode("m18x18_full"),
        .ay_scan_in_clock("0"),
        .ay_scan_in_width(18),
        .ax_clock("0"),
        .ax_width(18),
        .signed_may("false"),
        .signed_max("false"),
        .input_pipeline_clock("2"),
        .output_clock("1"),
        .result_a_width(36)
    ) i_mul36_maxpool2d21_im8_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul36_maxpool2d21_im8_cma_ena2, i_mul36_maxpool2d21_im8_cma_ena1, i_mul36_maxpool2d21_im8_cma_ena0 }),
        .aclr({ i_mul36_maxpool2d21_im8_cma_reset, i_mul36_maxpool2d21_im8_cma_reset }),
        .ay(i_mul36_maxpool2d21_im8_cma_a0),
        .ax(i_mul36_maxpool2d21_im8_cma_c0),
        .resulta(i_mul36_maxpool2d21_im8_cma_s0),
        .accumulate(),
        .loadconst(),
        .negate(),
        .sub(),
        .az(),
        .coefsela(),
        .bx(),
        .by(),
        .bz(),
        .coefselb(),
        .scanin(),
        .scanout(),
        .chainin(),
        .chainout(),
        .resultb(),
        .dftout()
    );
    dspba_delay_ver #( .width(36), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_mul36_maxpool2d21_im8_cma_delay ( .xin(i_mul36_maxpool2d21_im8_cma_s0), .xout(i_mul36_maxpool2d21_im8_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul36_maxpool2d21_im8_cma_q = $unsigned(i_mul36_maxpool2d21_im8_cma_qq[35:0]);

    // i_mul36_maxpool2d21_sums_join_0(BITJOIN,135)@5
    assign i_mul36_maxpool2d21_sums_join_0_q = {i_mul36_maxpool2d21_im0_cma_q, i_mul36_maxpool2d21_im8_cma_q};

    // i_mul36_maxpool2d21_sums_result_add_0_0(ADD,138)@5
    assign i_mul36_maxpool2d21_sums_result_add_0_0_a = {1'b0, i_mul36_maxpool2d21_sums_join_0_q};
    assign i_mul36_maxpool2d21_sums_result_add_0_0_b = {14'b00000000000000, i_mul36_maxpool2d21_sums_align_1_q};
    assign i_mul36_maxpool2d21_sums_result_add_0_0_o = $unsigned(i_mul36_maxpool2d21_sums_result_add_0_0_a) + $unsigned(i_mul36_maxpool2d21_sums_result_add_0_0_b);
    assign i_mul36_maxpool2d21_sums_result_add_0_0_q = i_mul36_maxpool2d21_sums_result_add_0_0_o[64:0];

    // bgTrunc_i_mul36_maxpool2d21_sel_x(BITSELECT,75)@5
    assign bgTrunc_i_mul36_maxpool2d21_sel_x_in = i_mul36_maxpool2d21_sums_result_add_0_0_q[63:0];
    assign bgTrunc_i_mul36_maxpool2d21_sel_x_b = bgTrunc_i_mul36_maxpool2d21_sel_x_in[31:0];

    // i_mul36_maxpool2d21_vt_select_30(BITSELECT,59)@5
    assign i_mul36_maxpool2d21_vt_select_30_b = bgTrunc_i_mul36_maxpool2d21_sel_x_b[30:0];

    // i_mul36_maxpool2d21_vt_join(BITJOIN,58)@5
    assign i_mul36_maxpool2d21_vt_join_q = {GND_q, i_mul36_maxpool2d21_vt_select_30_b};

    // i_idx_ext37_maxpool2d22_sel_x(BITSELECT,89)@5
    assign i_idx_ext37_maxpool2d22_sel_x_b = {32'b00000000000000000000000000000000, i_mul36_maxpool2d21_vt_join_q[31:0]};

    // i_idx_ext37_maxpool2d22_vt_select_30(BITSELECT,32)@5
    assign i_idx_ext37_maxpool2d22_vt_select_30_b = i_idx_ext37_maxpool2d22_sel_x_b[30:0];

    // redist4_i_idx_ext37_maxpool2d22_vt_select_30_b_1(DELAY,151)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_i_idx_ext37_maxpool2d22_vt_select_30_b_1_q <= '0;
        end
        else
        begin
            redist4_i_idx_ext37_maxpool2d22_vt_select_30_b_1_q <= $unsigned(i_idx_ext37_maxpool2d22_vt_select_30_b);
        end
    end

    // i_idx_ext37_maxpool2d22_vt_join(BITJOIN,31)@6
    assign i_idx_ext37_maxpool2d22_vt_join_q = {c_i33_undef47_q, redist4_i_idx_ext37_maxpool2d22_vt_select_30_b_1_q};

    // i_add_ptr38_maxpool2d0_narrow_x(BITSELECT,79)@6
    assign i_add_ptr38_maxpool2d0_narrow_x_b = i_idx_ext37_maxpool2d22_vt_join_q[61:0];

    // i_add_ptr38_maxpool2d0_shift_join_x(BITJOIN,80)@6
    assign i_add_ptr38_maxpool2d0_shift_join_x_q = {i_add_ptr38_maxpool2d0_narrow_x_b, i_add_ptr38_maxpool2d0_c_i2_01_x_q};

    // i_add_ptr38_maxpool2d0_add_x(ADD,77)@6
    assign i_add_ptr38_maxpool2d0_add_x_a = {1'b0, i_output_im_addr_042_replace_phi_maxpool2d5_q};
    assign i_add_ptr38_maxpool2d0_add_x_b = {1'b0, i_add_ptr38_maxpool2d0_shift_join_x_q};
    assign i_add_ptr38_maxpool2d0_add_x_o = $unsigned(i_add_ptr38_maxpool2d0_add_x_a) + $unsigned(i_add_ptr38_maxpool2d0_add_x_b);
    assign i_add_ptr38_maxpool2d0_add_x_q = i_add_ptr38_maxpool2d0_add_x_o[64:0];

    // i_add_ptr38_maxpool2d0_dupName_0_trunc_sel_x(BITSELECT,82)@6
    assign i_add_ptr38_maxpool2d0_dupName_0_trunc_sel_x_b = i_add_ptr38_maxpool2d0_add_x_q[63:0];

    // i_llvm_fpga_push_p1024f32_output_im_addr_042_push12_maxpool2d24(BLACKBOX,49)@6
    // out out_feedback_out_12@20000000
    // out out_feedback_valid_out_12@20000000
    maxpool2d_i_llvm_fpga_push_p1024f32_output_im_addr_042_push12_0 thei_llvm_fpga_push_p1024f32_output_im_addr_042_push12_maxpool2d24 (
        .in_data_in(i_add_ptr38_maxpool2d0_dupName_0_trunc_sel_x_b),
        .in_feedback_stall_in_12(i_llvm_fpga_pop_p1024f32_output_im_addr_042_pop12_maxpool2d4_out_feedback_stall_out_12),
        .in_stall_in(GND_q),
        .in_unnamed_maxpool2d17(redist2_i_unnamed_maxpool2d15_q_5_q),
        .in_valid_in(valid_fanout_reg6_q),
        .out_data_out(),
        .out_feedback_out_12(i_llvm_fpga_push_p1024f32_output_im_addr_042_push12_maxpool2d24_out_feedback_out_12),
        .out_feedback_valid_out_12(i_llvm_fpga_push_p1024f32_output_im_addr_042_push12_maxpool2d24_out_feedback_valid_out_12),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_p1024f32_output_im_addr_042_pop12_maxpool2d4(BLACKBOX,45)@6
    // out out_feedback_stall_out_12@20000000
    maxpool2d_i_llvm_fpga_pop_p1024f32_output_im_addr_042_pop12_0 thei_llvm_fpga_pop_p1024f32_output_im_addr_042_pop12_maxpool2d4 (
        .in_data_in(c_float_addrspace_1024_undef46_q),
        .in_dir(redist0_sync_together67_aunroll_x_in_c0_eni1_1_tpl_5_q),
        .in_feedback_in_12(i_llvm_fpga_push_p1024f32_output_im_addr_042_push12_maxpool2d24_out_feedback_out_12),
        .in_feedback_valid_in_12(i_llvm_fpga_push_p1024f32_output_im_addr_042_push12_maxpool2d24_out_feedback_valid_out_12),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(i_llvm_fpga_pop_p1024f32_output_im_addr_042_pop12_maxpool2d4_out_data_out),
        .out_feedback_stall_out_12(i_llvm_fpga_pop_p1024f32_output_im_addr_042_pop12_maxpool2d4_out_feedback_stall_out_12),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_output_im_addr_042_replace_phi_maxpool2d5(MUX,61)@6
    assign i_output_im_addr_042_replace_phi_maxpool2d5_s = redist0_sync_together67_aunroll_x_in_c0_eni1_1_tpl_5_q;
    always @(i_output_im_addr_042_replace_phi_maxpool2d5_s or i_llvm_fpga_pop_p1024f32_output_im_addr_042_pop12_maxpool2d4_out_data_out or i_llvm_fpga_ffwd_dest_p1024f32_output_im_sync_buffer12_maxpool2d3_out_dest_data_out_5_0)
    begin
        unique case (i_output_im_addr_042_replace_phi_maxpool2d5_s)
            1'b0 : i_output_im_addr_042_replace_phi_maxpool2d5_q = i_llvm_fpga_pop_p1024f32_output_im_addr_042_pop12_maxpool2d4_out_data_out;
            1'b1 : i_output_im_addr_042_replace_phi_maxpool2d5_q = i_llvm_fpga_ffwd_dest_p1024f32_output_im_sync_buffer12_maxpool2d3_out_dest_data_out_5_0;
            default : i_output_im_addr_042_replace_phi_maxpool2d5_q = 64'b0;
        endcase
    end

    // sync_out_aunroll_x(GPOUT,91)@6
    assign out_c0_exi4_0_tpl = GND_q;
    assign out_c0_exi4_1_tpl = i_output_im_addr_042_replace_phi_maxpool2d5_q;
    assign out_c0_exi4_2_tpl = i_input_im_addr_041_replace_phi_maxpool2d8_q;
    assign out_c0_exi4_3_tpl = redist2_i_unnamed_maxpool2d15_q_5_q;
    assign out_c0_exi4_4_tpl = i_notcmp27_maxpool2d16_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_maxpool2d7 = GND_q;

endmodule
