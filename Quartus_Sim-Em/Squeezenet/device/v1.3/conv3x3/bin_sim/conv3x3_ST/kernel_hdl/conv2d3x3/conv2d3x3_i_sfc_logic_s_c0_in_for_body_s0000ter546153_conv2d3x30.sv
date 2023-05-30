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

// SystemVerilog created from conv2d3x3_i_sfc_logic_s_c0_in_for_body_s0000ter546153_conv2d3x30
// SystemVerilog created on Tue May 30 12:33:16 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2d3x3_i_sfc_logic_s_c0_in_for_body_s0000ter546153_conv2d3x30 (
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going82_conv2d3x32_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going82_conv2d3x32_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [63:0] in_filter_bias,
    input wire [0:0] in_intel_reserved_ffwd_0_0,
    input wire [63:0] in_intel_reserved_ffwd_1_0,
    input wire [31:0] in_intel_reserved_ffwd_3_0,
    input wire [32:0] in_intel_reserved_ffwd_7_0,
    input wire [63:0] in_intel_reserved_ffwd_8_0,
    input wire [31:0] in_output_size,
    output wire [0:0] out_c0_exi6_0_tpl,
    output wire [63:0] out_c0_exi6_1_tpl,
    output wire [63:0] out_c0_exi6_2_tpl,
    output wire [0:0] out_c0_exi6_3_tpl,
    output wire [63:0] out_c0_exi6_4_tpl,
    output wire [0:0] out_c0_exi6_5_tpl,
    output wire [0:0] out_c0_exi6_6_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_conv2d3x311,
    input wire [0:0] in_c0_eni1_0_tpl,
    input wire [0:0] in_c0_eni1_1_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [63:0] c_float_addrspace_1024_undef57_q;
    wire [31:0] c_i32_059_q;
    wire [31:0] c_i32_162_q;
    wire [32:0] c_i33_161_q;
    wire [32:0] c_i33_undef58_q;
    wire [1:0] i_arrayidx2_conv2d3x319_vt_const_1_q;
    wire [63:0] i_arrayidx2_conv2d3x319_vt_join_q;
    wire [61:0] i_arrayidx2_conv2d3x319_vt_select_63_b;
    wire [0:0] i_filter_weight_addr_067_replace_phi_conv2d3x35_s;
    reg [63:0] i_filter_weight_addr_067_replace_phi_conv2d3x35_q;
    wire [0:0] i_fpga_indvars_iv101_replace_phi_conv2d3x38_s;
    reg [32:0] i_fpga_indvars_iv101_replace_phi_conv2d3x38_q;
    wire [33:0] i_fpga_indvars_iv_next102_conv2d3x326_a;
    wire [33:0] i_fpga_indvars_iv_next102_conv2d3x326_b;
    logic [33:0] i_fpga_indvars_iv_next102_conv2d3x326_o;
    wire [33:0] i_fpga_indvars_iv_next102_conv2d3x326_q;
    wire [63:0] i_idx_ext70_conv2d3x332_vt_join_q;
    wire [30:0] i_idx_ext70_conv2d3x332_vt_select_30_b;
    wire [63:0] i_idxprom_conv2d3x317_vt_join_q;
    wire [31:0] i_idxprom_conv2d3x317_vt_select_31_b;
    wire [32:0] i_inc73_conv2d3x328_a;
    wire [32:0] i_inc73_conv2d3x328_b;
    logic [32:0] i_inc73_conv2d3x328_o;
    wire [32:0] i_inc73_conv2d3x328_q;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp6629_conv2d3x312_out_dest_data_out_0_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp6630_conv2d3x322_out_dest_data_out_0_0;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_mul66_add233_conv2d3x314_out_dest_data_out_3_0;
    wire [32:0] i_llvm_fpga_ffwd_dest_i33_unnamed_conv2d3x312_conv2d3x36_out_dest_data_out_7_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024f32_add_ptr131_conv2d3x39_out_dest_data_out_1_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024f32_filter_weight_sync_buffer36_conv2d3x33_out_dest_data_out_8_0;
    wire [0:0] i_llvm_fpga_pipeline_keep_going82_conv2d3x32_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going82_conv2d3x32_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going82_conv2d3x32_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going82_conv2d3x32_out_pipeline_valid_out;
    wire [31:0] i_llvm_fpga_pop_i32_filter_index_069_pop14_conv2d3x316_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_filter_index_069_pop14_conv2d3x316_out_feedback_stall_out_14;
    wire [32:0] i_llvm_fpga_pop_i33_fpga_indvars_iv101_pop13_conv2d3x37_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i33_fpga_indvars_iv101_pop13_conv2d3x37_out_feedback_stall_out_13;
    wire [63:0] i_llvm_fpga_pop_p1024f32_filter_weight_addr_067_pop16_conv2d3x34_out_data_out;
    wire [0:0] i_llvm_fpga_pop_p1024f32_filter_weight_addr_067_pop16_conv2d3x34_out_feedback_stall_out_16;
    wire [63:0] i_llvm_fpga_pop_p1024f32_output_im_addr_068_pop15_conv2d3x310_out_data_out;
    wire [0:0] i_llvm_fpga_pop_p1024f32_output_im_addr_068_pop15_conv2d3x310_out_feedback_stall_out_15;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond83_conv2d3x325_out_feedback_out_12;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond83_conv2d3x325_out_feedback_valid_out_12;
    wire [31:0] i_llvm_fpga_push_i32_filter_index_069_push14_conv2d3x329_out_feedback_out_14;
    wire [0:0] i_llvm_fpga_push_i32_filter_index_069_push14_conv2d3x329_out_feedback_valid_out_14;
    wire [63:0] i_llvm_fpga_push_i33_fpga_indvars_iv101_push13_conv2d3x327_out_feedback_out_13;
    wire [0:0] i_llvm_fpga_push_i33_fpga_indvars_iv101_push13_conv2d3x327_out_feedback_valid_out_13;
    wire [63:0] i_llvm_fpga_push_p1024f32_filter_weight_addr_067_push16_conv2d3x336_out_feedback_out_16;
    wire [0:0] i_llvm_fpga_push_p1024f32_filter_weight_addr_067_push16_conv2d3x336_out_feedback_valid_out_16;
    wire [63:0] i_llvm_fpga_push_p1024f32_output_im_addr_068_push15_conv2d3x334_out_feedback_out_15;
    wire [0:0] i_llvm_fpga_push_p1024f32_output_im_addr_068_push15_conv2d3x334_out_feedback_valid_out_15;
    wire [31:0] i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer22_conv2d3x330_out_buffer_out;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024f32_filter_bias_sync_buffer_conv2d3x318_out_buffer_out;
    wire [9:0] i_llvm_fpga_sync_buffer_p1024f32_filter_bias_sync_buffer_conv2d3x318_vt_const_9_q;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024f32_filter_bias_sync_buffer_conv2d3x318_vt_join_q;
    wire [53:0] i_llvm_fpga_sync_buffer_p1024f32_filter_bias_sync_buffer_conv2d3x318_vt_select_63_b;
    wire [31:0] i_mul69_conv2d3x331_vt_join_q;
    wire [30:0] i_mul69_conv2d3x331_vt_select_30_b;
    wire [0:0] i_notcmp81_conv2d3x324_q;
    wire [0:0] i_output_im_addr_068_replace_phi_conv2d3x311_s;
    reg [63:0] i_output_im_addr_068_replace_phi_conv2d3x311_q;
    wire [0:0] i_unnamed_conv2d3x313_q;
    wire [0:0] i_unnamed_conv2d3x323_q;
    wire [32:0] bgTrunc_i_fpga_indvars_iv_next102_conv2d3x326_sel_x_b;
    wire [31:0] bgTrunc_i_inc73_conv2d3x328_sel_x_b;
    wire [63:0] bgTrunc_i_mul69_conv2d3x331_sel_x_in;
    wire [31:0] bgTrunc_i_mul69_conv2d3x331_sel_x_b;
    wire [64:0] i_add_ptr68_conv2d3x30_add_x_a;
    wire [64:0] i_add_ptr68_conv2d3x30_add_x_b;
    logic [64:0] i_add_ptr68_conv2d3x30_add_x_o;
    wire [64:0] i_add_ptr68_conv2d3x30_add_x_q;
    wire [61:0] i_add_ptr68_conv2d3x30_narrow_x_b;
    wire [63:0] i_add_ptr68_conv2d3x30_shift_join_x_q;
    wire [63:0] i_add_ptr68_conv2d3x30_dupName_0_trunc_sel_x_b;
    wire [64:0] i_add_ptr71_conv2d3x30_add_x_a;
    wire [64:0] i_add_ptr71_conv2d3x30_add_x_b;
    logic [64:0] i_add_ptr71_conv2d3x30_add_x_o;
    wire [64:0] i_add_ptr71_conv2d3x30_add_x_q;
    wire [61:0] i_add_ptr71_conv2d3x30_narrow_x_b;
    wire [63:0] i_add_ptr71_conv2d3x30_shift_join_x_q;
    wire [63:0] i_add_ptr71_conv2d3x30_dupName_0_trunc_sel_x_b;
    wire [64:0] i_arrayidx2_conv2d3x30_add_x_a;
    wire [64:0] i_arrayidx2_conv2d3x30_add_x_b;
    logic [64:0] i_arrayidx2_conv2d3x30_add_x_o;
    wire [64:0] i_arrayidx2_conv2d3x30_add_x_q;
    wire [61:0] i_arrayidx2_conv2d3x30_narrow_x_b;
    wire [63:0] i_arrayidx2_conv2d3x30_shift_join_x_q;
    wire [63:0] i_arrayidx2_conv2d3x30_dupName_0_trunc_sel_x_b;
    wire [63:0] i_idx_ext67_conv2d3x315_sel_x_b;
    wire [63:0] i_idx_ext70_conv2d3x332_sel_x_b;
    wire [63:0] i_idxprom_conv2d3x317_sel_x_b;
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
    wire [0:0] i_exitcond103_conv2d3x320_cmp_nsign_q;
    wire [63:0] i_mul69_conv2d3x331_sums_join_0_q;
    wire [50:0] i_mul69_conv2d3x331_sums_align_1_q;
    wire [50:0] i_mul69_conv2d3x331_sums_align_1_qint;
    wire [64:0] i_mul69_conv2d3x331_sums_result_add_0_0_a;
    wire [64:0] i_mul69_conv2d3x331_sums_result_add_0_0_b;
    logic [64:0] i_mul69_conv2d3x331_sums_result_add_0_0_o;
    wire [64:0] i_mul69_conv2d3x331_sums_result_add_0_0_q;
    wire i_mul69_conv2d3x331_im0_cma_reset;
    wire [13:0] i_mul69_conv2d3x331_im0_cma_a0;
    wire [13:0] i_mul69_conv2d3x331_im0_cma_c0;
    wire [27:0] i_mul69_conv2d3x331_im0_cma_s0;
    wire [27:0] i_mul69_conv2d3x331_im0_cma_qq;
    wire [27:0] i_mul69_conv2d3x331_im0_cma_q;
    wire i_mul69_conv2d3x331_im0_cma_ena0;
    wire i_mul69_conv2d3x331_im0_cma_ena1;
    wire i_mul69_conv2d3x331_im0_cma_ena2;
    wire i_mul69_conv2d3x331_im8_cma_reset;
    wire [17:0] i_mul69_conv2d3x331_im8_cma_a0;
    wire [17:0] i_mul69_conv2d3x331_im8_cma_c0;
    wire [35:0] i_mul69_conv2d3x331_im8_cma_s0;
    wire [35:0] i_mul69_conv2d3x331_im8_cma_qq;
    wire [35:0] i_mul69_conv2d3x331_im8_cma_q;
    wire i_mul69_conv2d3x331_im8_cma_ena0;
    wire i_mul69_conv2d3x331_im8_cma_ena1;
    wire i_mul69_conv2d3x331_im8_cma_ena2;
    wire i_mul69_conv2d3x331_ma3_cma_reset;
    wire [13:0] i_mul69_conv2d3x331_ma3_cma_a0;
    wire [17:0] i_mul69_conv2d3x331_ma3_cma_c0;
    wire [13:0] i_mul69_conv2d3x331_ma3_cma_a1;
    wire [17:0] i_mul69_conv2d3x331_ma3_cma_c1;
    wire [32:0] i_mul69_conv2d3x331_ma3_cma_s0;
    wire [32:0] i_mul69_conv2d3x331_ma3_cma_qq;
    wire [32:0] i_mul69_conv2d3x331_ma3_cma_q;
    wire i_mul69_conv2d3x331_ma3_cma_ena0;
    wire i_mul69_conv2d3x331_ma3_cma_ena1;
    wire i_mul69_conv2d3x331_ma3_cma_ena2;
    wire [13:0] i_mul69_conv2d3x331_bs1_merged_bit_select_b;
    wire [17:0] i_mul69_conv2d3x331_bs1_merged_bit_select_c;
    reg [0:0] redist0_sync_together83_aunroll_x_in_c0_eni1_1_tpl_5_q;
    reg [0:0] redist0_sync_together83_aunroll_x_in_c0_eni1_1_tpl_5_delay_0;
    reg [0:0] redist0_sync_together83_aunroll_x_in_c0_eni1_1_tpl_5_delay_1;
    reg [0:0] redist0_sync_together83_aunroll_x_in_c0_eni1_1_tpl_5_delay_2;
    reg [0:0] redist0_sync_together83_aunroll_x_in_c0_eni1_1_tpl_5_delay_3;
    reg [0:0] redist1_sync_together83_aunroll_x_in_i_valid_4_q;
    reg [0:0] redist1_sync_together83_aunroll_x_in_i_valid_4_delay_0;
    reg [0:0] redist1_sync_together83_aunroll_x_in_i_valid_4_delay_1;
    reg [0:0] redist1_sync_together83_aunroll_x_in_i_valid_4_delay_2;
    reg [0:0] redist2_i_unnamed_conv2d3x323_q_5_q;
    reg [0:0] redist2_i_unnamed_conv2d3x323_q_5_delay_0;
    reg [0:0] redist2_i_unnamed_conv2d3x323_q_5_delay_1;
    reg [0:0] redist2_i_unnamed_conv2d3x323_q_5_delay_2;
    reg [0:0] redist2_i_unnamed_conv2d3x323_q_5_delay_3;
    reg [30:0] redist3_i_idx_ext70_conv2d3x332_vt_select_30_b_1_q;


    // i_llvm_fpga_ffwd_dest_i33_unnamed_conv2d3x312_conv2d3x36(BLACKBOX,53)@1
    conv2d3x3_i_llvm_fpga_ffwd_dest_i33_unnamed_12_conv2d3x30 thei_llvm_fpga_ffwd_dest_i33_unnamed_conv2d3x312_conv2d3x36 (
        .in_intel_reserved_ffwd_7_0(in_intel_reserved_ffwd_7_0),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_dest_data_out_7_0(i_llvm_fpga_ffwd_dest_i33_unnamed_conv2d3x312_conv2d3x36_out_dest_data_out_7_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i33_161(CONSTANT,29)
    assign c_i33_161_q = $unsigned(33'b111111111111111111111111111111111);

    // i_fpga_indvars_iv_next102_conv2d3x326(ADD,38)@1
    assign i_fpga_indvars_iv_next102_conv2d3x326_a = {1'b0, i_fpga_indvars_iv101_replace_phi_conv2d3x38_q};
    assign i_fpga_indvars_iv_next102_conv2d3x326_b = {1'b0, c_i33_161_q};
    assign i_fpga_indvars_iv_next102_conv2d3x326_o = $unsigned(i_fpga_indvars_iv_next102_conv2d3x326_a) + $unsigned(i_fpga_indvars_iv_next102_conv2d3x326_b);
    assign i_fpga_indvars_iv_next102_conv2d3x326_q = i_fpga_indvars_iv_next102_conv2d3x326_o[33:0];

    // bgTrunc_i_fpga_indvars_iv_next102_conv2d3x326_sel_x(BITSELECT,91)@1
    assign bgTrunc_i_fpga_indvars_iv_next102_conv2d3x326_sel_x_b = i_fpga_indvars_iv_next102_conv2d3x326_q[32:0];

    // i_llvm_fpga_push_i33_fpga_indvars_iv101_push13_conv2d3x327(BLACKBOX,63)@1
    // out out_feedback_out_13@20000000
    // out out_feedback_valid_out_13@20000000
    conv2d3x3_i_llvm_fpga_push_i33_fpga_indvars_iv101_push13_0 thei_llvm_fpga_push_i33_fpga_indvars_iv101_push13_conv2d3x327 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next102_conv2d3x326_sel_x_b),
        .in_feedback_stall_in_13(i_llvm_fpga_pop_i33_fpga_indvars_iv101_pop13_conv2d3x37_out_feedback_stall_out_13),
        .in_stall_in(GND_q),
        .in_unnamed_conv2d3x322(i_unnamed_conv2d3x323_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_feedback_out_13(i_llvm_fpga_push_i33_fpga_indvars_iv101_push13_conv2d3x327_out_feedback_out_13),
        .out_feedback_valid_out_13(i_llvm_fpga_push_i33_fpga_indvars_iv101_push13_conv2d3x327_out_feedback_valid_out_13),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i33_undef58(CONSTANT,30)
    assign c_i33_undef58_q = $unsigned(33'b000000000000000000000000000000000);

    // i_llvm_fpga_pop_i33_fpga_indvars_iv101_pop13_conv2d3x37(BLACKBOX,58)@1
    // out out_feedback_stall_out_13@20000000
    conv2d3x3_i_llvm_fpga_pop_i33_fpga_indvars_iv101_pop13_0 thei_llvm_fpga_pop_i33_fpga_indvars_iv101_pop13_conv2d3x37 (
        .in_data_in(c_i33_undef58_q),
        .in_dir(in_c0_eni1_1_tpl),
        .in_feedback_in_13(i_llvm_fpga_push_i33_fpga_indvars_iv101_push13_conv2d3x327_out_feedback_out_13),
        .in_feedback_valid_in_13(i_llvm_fpga_push_i33_fpga_indvars_iv101_push13_conv2d3x327_out_feedback_valid_out_13),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(i_llvm_fpga_pop_i33_fpga_indvars_iv101_pop13_conv2d3x37_out_data_out),
        .out_feedback_stall_out_13(i_llvm_fpga_pop_i33_fpga_indvars_iv101_pop13_conv2d3x37_out_feedback_stall_out_13),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_fpga_indvars_iv101_replace_phi_conv2d3x38(MUX,37)@1
    assign i_fpga_indvars_iv101_replace_phi_conv2d3x38_s = in_c0_eni1_1_tpl;
    always @(i_fpga_indvars_iv101_replace_phi_conv2d3x38_s or i_llvm_fpga_pop_i33_fpga_indvars_iv101_pop13_conv2d3x37_out_data_out or i_llvm_fpga_ffwd_dest_i33_unnamed_conv2d3x312_conv2d3x36_out_dest_data_out_7_0)
    begin
        unique case (i_fpga_indvars_iv101_replace_phi_conv2d3x38_s)
            1'b0 : i_fpga_indvars_iv101_replace_phi_conv2d3x38_q = i_llvm_fpga_pop_i33_fpga_indvars_iv101_pop13_conv2d3x37_out_data_out;
            1'b1 : i_fpga_indvars_iv101_replace_phi_conv2d3x38_q = i_llvm_fpga_ffwd_dest_i33_unnamed_conv2d3x312_conv2d3x36_out_dest_data_out_7_0;
            default : i_fpga_indvars_iv101_replace_phi_conv2d3x38_q = 33'b0;
        endcase
    end

    // i_exitcond103_conv2d3x320_cmp_nsign(LOGICAL,138)@1
    assign i_exitcond103_conv2d3x320_cmp_nsign_q = $unsigned(~ (i_fpga_indvars_iv101_replace_phi_conv2d3x38_q[32:32]));

    // i_llvm_fpga_ffwd_dest_i1_cmp6630_conv2d3x322(BLACKBOX,51)@1
    conv2d3x3_i_llvm_fpga_ffwd_dest_i1_cmp6630_0 thei_llvm_fpga_ffwd_dest_i1_cmp6630_conv2d3x322 (
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_dest_data_out_0_0(i_llvm_fpga_ffwd_dest_i1_cmp6630_conv2d3x322_out_dest_data_out_0_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_conv2d3x323(LOGICAL,78)@1
    assign i_unnamed_conv2d3x323_q = i_llvm_fpga_ffwd_dest_i1_cmp6630_conv2d3x322_out_dest_data_out_0_0 & i_exitcond103_conv2d3x320_cmp_nsign_q;

    // i_llvm_fpga_push_i1_notexitcond83_conv2d3x325(BLACKBOX,61)@1
    // out out_feedback_out_12@20000000
    // out out_feedback_valid_out_12@20000000
    conv2d3x3_i_llvm_fpga_push_i1_notexitcond83_0 thei_llvm_fpga_push_i1_notexitcond83_conv2d3x325 (
        .in_data_in(i_unnamed_conv2d3x323_q),
        .in_feedback_stall_in_12(i_llvm_fpga_pipeline_keep_going82_conv2d3x32_out_not_exitcond_stall_out),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_feedback_out_12(i_llvm_fpga_push_i1_notexitcond83_conv2d3x325_out_feedback_out_12),
        .out_feedback_valid_out_12(i_llvm_fpga_push_i1_notexitcond83_conv2d3x325_out_feedback_valid_out_12),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // i_llvm_fpga_pipeline_keep_going82_conv2d3x32(BLACKBOX,56)@1
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    conv2d3x3_i_llvm_fpga_pipeline_keep_going82_0 thei_llvm_fpga_pipeline_keep_going82_conv2d3x32 (
        .in_data_in(VCC_q),
        .in_initeration_in(GND_q),
        .in_initeration_valid_in(GND_q),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond83_conv2d3x325_out_feedback_out_12),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond83_conv2d3x325_out_feedback_valid_out_12),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going82_conv2d3x32_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going82_conv2d3x32_out_exiting_valid_out),
        .out_initeration_stall_out(),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going82_conv2d3x32_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going82_conv2d3x32_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,31)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going82_conv2d3x32_exiting_valid_out = i_llvm_fpga_pipeline_keep_going82_conv2d3x32_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going82_conv2d3x32_exiting_stall_out = i_llvm_fpga_pipeline_keep_going82_conv2d3x32_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,82)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going82_conv2d3x32_out_pipeline_valid_out;

    // redist1_sync_together83_aunroll_x_in_i_valid_4(DELAY,159)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together83_aunroll_x_in_i_valid_4_delay_0 <= '0;
            redist1_sync_together83_aunroll_x_in_i_valid_4_delay_1 <= '0;
            redist1_sync_together83_aunroll_x_in_i_valid_4_delay_2 <= '0;
            redist1_sync_together83_aunroll_x_in_i_valid_4_q <= '0;
        end
        else
        begin
            redist1_sync_together83_aunroll_x_in_i_valid_4_delay_0 <= $unsigned(in_i_valid);
            redist1_sync_together83_aunroll_x_in_i_valid_4_delay_1 <= redist1_sync_together83_aunroll_x_in_i_valid_4_delay_0;
            redist1_sync_together83_aunroll_x_in_i_valid_4_delay_2 <= redist1_sync_together83_aunroll_x_in_i_valid_4_delay_1;
            redist1_sync_together83_aunroll_x_in_i_valid_4_q <= redist1_sync_together83_aunroll_x_in_i_valid_4_delay_2;
        end
    end

    // valid_fanout_reg0(REG,118)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist1_sync_together83_aunroll_x_in_i_valid_4_q);
        end
    end

    // i_notcmp81_conv2d3x324(LOGICAL,75)@6
    assign i_notcmp81_conv2d3x324_q = redist2_i_unnamed_conv2d3x323_q_5_q ^ VCC_q;

    // redist2_i_unnamed_conv2d3x323_q_5(DELAY,160)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_i_unnamed_conv2d3x323_q_5_delay_0 <= '0;
            redist2_i_unnamed_conv2d3x323_q_5_delay_1 <= '0;
            redist2_i_unnamed_conv2d3x323_q_5_delay_2 <= '0;
            redist2_i_unnamed_conv2d3x323_q_5_delay_3 <= '0;
            redist2_i_unnamed_conv2d3x323_q_5_q <= '0;
        end
        else
        begin
            redist2_i_unnamed_conv2d3x323_q_5_delay_0 <= $unsigned(i_unnamed_conv2d3x323_q);
            redist2_i_unnamed_conv2d3x323_q_5_delay_1 <= redist2_i_unnamed_conv2d3x323_q_5_delay_0;
            redist2_i_unnamed_conv2d3x323_q_5_delay_2 <= redist2_i_unnamed_conv2d3x323_q_5_delay_1;
            redist2_i_unnamed_conv2d3x323_q_5_delay_3 <= redist2_i_unnamed_conv2d3x323_q_5_delay_2;
            redist2_i_unnamed_conv2d3x323_q_5_q <= redist2_i_unnamed_conv2d3x323_q_5_delay_3;
        end
    end

    // c_i32_059(CONSTANT,27)
    assign c_i32_059_q = $unsigned(32'b00000000000000000000000000000000);

    // valid_fanout_reg7(REG,125)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg7_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg7_q <= $unsigned(redist1_sync_together83_aunroll_x_in_i_valid_4_q);
        end
    end

    // valid_fanout_reg9(REG,127)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg9_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg9_q <= $unsigned(redist1_sync_together83_aunroll_x_in_i_valid_4_q);
        end
    end

    // c_i32_162(CONSTANT,28)
    assign c_i32_162_q = $unsigned(32'b00000000000000000000000000000001);

    // i_inc73_conv2d3x328(ADD,49)@6
    assign i_inc73_conv2d3x328_a = {1'b0, i_llvm_fpga_pop_i32_filter_index_069_pop14_conv2d3x316_out_data_out};
    assign i_inc73_conv2d3x328_b = {1'b0, c_i32_162_q};
    assign i_inc73_conv2d3x328_o = $unsigned(i_inc73_conv2d3x328_a) + $unsigned(i_inc73_conv2d3x328_b);
    assign i_inc73_conv2d3x328_q = i_inc73_conv2d3x328_o[32:0];

    // bgTrunc_i_inc73_conv2d3x328_sel_x(BITSELECT,92)@6
    assign bgTrunc_i_inc73_conv2d3x328_sel_x_b = i_inc73_conv2d3x328_q[31:0];

    // i_llvm_fpga_push_i32_filter_index_069_push14_conv2d3x329(BLACKBOX,62)@6
    // out out_feedback_out_14@20000000
    // out out_feedback_valid_out_14@20000000
    conv2d3x3_i_llvm_fpga_push_i32_filter_index_069_push14_0 thei_llvm_fpga_push_i32_filter_index_069_push14_conv2d3x329 (
        .in_data_in(bgTrunc_i_inc73_conv2d3x328_sel_x_b),
        .in_feedback_stall_in_14(i_llvm_fpga_pop_i32_filter_index_069_pop14_conv2d3x316_out_feedback_stall_out_14),
        .in_stall_in(GND_q),
        .in_unnamed_conv2d3x322(redist2_i_unnamed_conv2d3x323_q_5_q),
        .in_valid_in(valid_fanout_reg9_q),
        .out_data_out(),
        .out_feedback_out_14(i_llvm_fpga_push_i32_filter_index_069_push14_conv2d3x329_out_feedback_out_14),
        .out_feedback_valid_out_14(i_llvm_fpga_push_i32_filter_index_069_push14_conv2d3x329_out_feedback_valid_out_14),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist0_sync_together83_aunroll_x_in_c0_eni1_1_tpl_5(DELAY,158)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_sync_together83_aunroll_x_in_c0_eni1_1_tpl_5_delay_0 <= '0;
            redist0_sync_together83_aunroll_x_in_c0_eni1_1_tpl_5_delay_1 <= '0;
            redist0_sync_together83_aunroll_x_in_c0_eni1_1_tpl_5_delay_2 <= '0;
            redist0_sync_together83_aunroll_x_in_c0_eni1_1_tpl_5_delay_3 <= '0;
            redist0_sync_together83_aunroll_x_in_c0_eni1_1_tpl_5_q <= '0;
        end
        else
        begin
            redist0_sync_together83_aunroll_x_in_c0_eni1_1_tpl_5_delay_0 <= $unsigned(in_c0_eni1_1_tpl);
            redist0_sync_together83_aunroll_x_in_c0_eni1_1_tpl_5_delay_1 <= redist0_sync_together83_aunroll_x_in_c0_eni1_1_tpl_5_delay_0;
            redist0_sync_together83_aunroll_x_in_c0_eni1_1_tpl_5_delay_2 <= redist0_sync_together83_aunroll_x_in_c0_eni1_1_tpl_5_delay_1;
            redist0_sync_together83_aunroll_x_in_c0_eni1_1_tpl_5_delay_3 <= redist0_sync_together83_aunroll_x_in_c0_eni1_1_tpl_5_delay_2;
            redist0_sync_together83_aunroll_x_in_c0_eni1_1_tpl_5_q <= redist0_sync_together83_aunroll_x_in_c0_eni1_1_tpl_5_delay_3;
        end
    end

    // i_llvm_fpga_pop_i32_filter_index_069_pop14_conv2d3x316(BLACKBOX,57)@6
    // out out_feedback_stall_out_14@20000000
    conv2d3x3_i_llvm_fpga_pop_i32_filter_index_069_pop14_0 thei_llvm_fpga_pop_i32_filter_index_069_pop14_conv2d3x316 (
        .in_data_in(c_i32_059_q),
        .in_dir(redist0_sync_together83_aunroll_x_in_c0_eni1_1_tpl_5_q),
        .in_feedback_in_14(i_llvm_fpga_push_i32_filter_index_069_push14_conv2d3x329_out_feedback_out_14),
        .in_feedback_valid_in_14(i_llvm_fpga_push_i32_filter_index_069_push14_conv2d3x329_out_feedback_valid_out_14),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg7_q),
        .out_data_out(i_llvm_fpga_pop_i32_filter_index_069_pop14_conv2d3x316_out_data_out),
        .out_feedback_stall_out_14(i_llvm_fpga_pop_i32_filter_index_069_pop14_conv2d3x316_out_feedback_stall_out_14),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_idxprom_conv2d3x317_sel_x(BITSELECT,115)@6
    assign i_idxprom_conv2d3x317_sel_x_b = {32'b00000000000000000000000000000000, i_llvm_fpga_pop_i32_filter_index_069_pop14_conv2d3x316_out_data_out[31:0]};

    // i_idxprom_conv2d3x317_vt_select_31(BITSELECT,48)@6
    assign i_idxprom_conv2d3x317_vt_select_31_b = i_idxprom_conv2d3x317_sel_x_b[31:0];

    // i_idxprom_conv2d3x317_vt_join(BITJOIN,47)@6
    assign i_idxprom_conv2d3x317_vt_join_q = {c_i32_059_q, i_idxprom_conv2d3x317_vt_select_31_b};

    // i_arrayidx2_conv2d3x30_narrow_x(BITSELECT,109)@6
    assign i_arrayidx2_conv2d3x30_narrow_x_b = i_idxprom_conv2d3x317_vt_join_q[61:0];

    // i_arrayidx2_conv2d3x30_shift_join_x(BITJOIN,110)@6
    assign i_arrayidx2_conv2d3x30_shift_join_x_q = {i_arrayidx2_conv2d3x30_narrow_x_b, i_arrayidx2_conv2d3x319_vt_const_1_q};

    // valid_fanout_reg8(REG,126)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg8_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg8_q <= $unsigned(redist1_sync_together83_aunroll_x_in_i_valid_4_q);
        end
    end

    // i_llvm_fpga_sync_buffer_p1024f32_filter_bias_sync_buffer_conv2d3x318(BLACKBOX,67)@0
    // in in_i_dependence@6
    // in in_valid_in@6
    // out out_buffer_out@6
    // out out_valid_out@6
    conv2d3x3_i_llvm_fpga_sync_buffer_p1024f0000r_bias_sync_buffer_0 thei_llvm_fpga_sync_buffer_p1024f32_filter_bias_sync_buffer_conv2d3x318 (
        .in_buffer_in(in_filter_bias),
        .in_i_dependence(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg8_q),
        .out_buffer_out(i_llvm_fpga_sync_buffer_p1024f32_filter_bias_sync_buffer_conv2d3x318_out_buffer_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_sync_buffer_p1024f32_filter_bias_sync_buffer_conv2d3x318_vt_select_63(BITSELECT,70)@6
    assign i_llvm_fpga_sync_buffer_p1024f32_filter_bias_sync_buffer_conv2d3x318_vt_select_63_b = i_llvm_fpga_sync_buffer_p1024f32_filter_bias_sync_buffer_conv2d3x318_out_buffer_out[63:10];

    // i_llvm_fpga_sync_buffer_p1024f32_filter_bias_sync_buffer_conv2d3x318_vt_const_9(CONSTANT,68)
    assign i_llvm_fpga_sync_buffer_p1024f32_filter_bias_sync_buffer_conv2d3x318_vt_const_9_q = $unsigned(10'b0000000000);

    // i_llvm_fpga_sync_buffer_p1024f32_filter_bias_sync_buffer_conv2d3x318_vt_join(BITJOIN,69)@6
    assign i_llvm_fpga_sync_buffer_p1024f32_filter_bias_sync_buffer_conv2d3x318_vt_join_q = {i_llvm_fpga_sync_buffer_p1024f32_filter_bias_sync_buffer_conv2d3x318_vt_select_63_b, i_llvm_fpga_sync_buffer_p1024f32_filter_bias_sync_buffer_conv2d3x318_vt_const_9_q};

    // i_arrayidx2_conv2d3x30_add_x(ADD,107)@6
    assign i_arrayidx2_conv2d3x30_add_x_a = {1'b0, i_llvm_fpga_sync_buffer_p1024f32_filter_bias_sync_buffer_conv2d3x318_vt_join_q};
    assign i_arrayidx2_conv2d3x30_add_x_b = {1'b0, i_arrayidx2_conv2d3x30_shift_join_x_q};
    assign i_arrayidx2_conv2d3x30_add_x_o = $unsigned(i_arrayidx2_conv2d3x30_add_x_a) + $unsigned(i_arrayidx2_conv2d3x30_add_x_b);
    assign i_arrayidx2_conv2d3x30_add_x_q = i_arrayidx2_conv2d3x30_add_x_o[64:0];

    // i_arrayidx2_conv2d3x30_dupName_0_trunc_sel_x(BITSELECT,112)@6
    assign i_arrayidx2_conv2d3x30_dupName_0_trunc_sel_x_b = i_arrayidx2_conv2d3x30_add_x_q[63:0];

    // i_arrayidx2_conv2d3x319_vt_select_63(BITSELECT,34)@6
    assign i_arrayidx2_conv2d3x319_vt_select_63_b = i_arrayidx2_conv2d3x30_dupName_0_trunc_sel_x_b[63:2];

    // i_arrayidx2_conv2d3x319_vt_const_1(CONSTANT,32)
    assign i_arrayidx2_conv2d3x319_vt_const_1_q = $unsigned(2'b00);

    // i_arrayidx2_conv2d3x319_vt_join(BITJOIN,33)@6
    assign i_arrayidx2_conv2d3x319_vt_join_q = {i_arrayidx2_conv2d3x319_vt_select_63_b, i_arrayidx2_conv2d3x319_vt_const_1_q};

    // valid_fanout_reg5(REG,123)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg5_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg5_q <= $unsigned(redist1_sync_together83_aunroll_x_in_i_valid_4_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i1_cmp6629_conv2d3x312(BLACKBOX,50)@6
    conv2d3x3_i_llvm_fpga_ffwd_dest_i1_cmp6629_0 thei_llvm_fpga_ffwd_dest_i1_cmp6629_conv2d3x312 (
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_dest_data_out_0_0(i_llvm_fpga_ffwd_dest_i1_cmp6629_conv2d3x312_out_dest_data_out_0_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_conv2d3x313(LOGICAL,77)@6
    assign i_unnamed_conv2d3x313_q = i_llvm_fpga_ffwd_dest_i1_cmp6629_conv2d3x312_out_dest_data_out_0_0 ^ VCC_q;

    // valid_fanout_reg3(REG,121)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg3_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg3_q <= $unsigned(redist1_sync_together83_aunroll_x_in_i_valid_4_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1024f32_add_ptr131_conv2d3x39(BLACKBOX,54)@6
    conv2d3x3_i_llvm_fpga_ffwd_dest_p1024f32_add_ptr131_0 thei_llvm_fpga_ffwd_dest_p1024f32_add_ptr131_conv2d3x39 (
        .in_intel_reserved_ffwd_1_0(in_intel_reserved_ffwd_1_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_dest_data_out_1_0(i_llvm_fpga_ffwd_dest_p1024f32_add_ptr131_conv2d3x39_out_dest_data_out_1_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg4(REG,122)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg4_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg4_q <= $unsigned(redist1_sync_together83_aunroll_x_in_i_valid_4_q);
        end
    end

    // valid_fanout_reg11(REG,129)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg11_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg11_q <= $unsigned(redist1_sync_together83_aunroll_x_in_i_valid_4_q);
        end
    end

    // valid_fanout_reg10(REG,128)@1 + 1
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

    // i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer22_conv2d3x330(BLACKBOX,66)@0
    // in in_i_dependence@2
    // in in_valid_in@2
    // out out_buffer_out@2
    // out out_valid_out@2
    conv2d3x3_i_llvm_fpga_sync_buffer_i32_ou0000size_sync_buffer22_0 thei_llvm_fpga_sync_buffer_i32_output_size_sync_buffer22_conv2d3x330 (
        .in_buffer_in(in_output_size),
        .in_i_dependence(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg10_q),
        .out_buffer_out(i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer22_conv2d3x330_out_buffer_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_mul69_conv2d3x331_bs1_merged_bit_select(BITSELECT,157)@2
    assign i_mul69_conv2d3x331_bs1_merged_bit_select_b = i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer22_conv2d3x330_out_buffer_out[31:18];
    assign i_mul69_conv2d3x331_bs1_merged_bit_select_c = i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer22_conv2d3x330_out_buffer_out[17:0];

    // i_mul69_conv2d3x331_ma3_cma(CHAINMULTADD,156)@2 + 3
    assign i_mul69_conv2d3x331_ma3_cma_reset = ~ (resetn);
    assign i_mul69_conv2d3x331_ma3_cma_ena0 = 1'b1;
    assign i_mul69_conv2d3x331_ma3_cma_ena1 = i_mul69_conv2d3x331_ma3_cma_ena0;
    assign i_mul69_conv2d3x331_ma3_cma_ena2 = i_mul69_conv2d3x331_ma3_cma_ena0;

    assign i_mul69_conv2d3x331_ma3_cma_a0 = i_mul69_conv2d3x331_bs1_merged_bit_select_b;
    assign i_mul69_conv2d3x331_ma3_cma_c0 = i_mul69_conv2d3x331_bs1_merged_bit_select_c;
    assign i_mul69_conv2d3x331_ma3_cma_a1 = i_mul69_conv2d3x331_bs1_merged_bit_select_b;
    assign i_mul69_conv2d3x331_ma3_cma_c1 = i_mul69_conv2d3x331_bs1_merged_bit_select_c;
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
    ) i_mul69_conv2d3x331_ma3_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul69_conv2d3x331_ma3_cma_ena2, i_mul69_conv2d3x331_ma3_cma_ena1, i_mul69_conv2d3x331_ma3_cma_ena0 }),
        .aclr({ i_mul69_conv2d3x331_ma3_cma_reset, i_mul69_conv2d3x331_ma3_cma_reset }),
        .ay(i_mul69_conv2d3x331_ma3_cma_a1),
        .by(i_mul69_conv2d3x331_ma3_cma_a0),
        .ax(i_mul69_conv2d3x331_ma3_cma_c1),
        .bx(i_mul69_conv2d3x331_ma3_cma_c0),
        .resulta(i_mul69_conv2d3x331_ma3_cma_s0),
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
    i_mul69_conv2d3x331_ma3_cma_delay ( .xin(i_mul69_conv2d3x331_ma3_cma_s0), .xout(i_mul69_conv2d3x331_ma3_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul69_conv2d3x331_ma3_cma_q = $unsigned(i_mul69_conv2d3x331_ma3_cma_qq[32:0]);

    // i_mul69_conv2d3x331_sums_align_1(BITSHIFT,151)@5
    assign i_mul69_conv2d3x331_sums_align_1_qint = { i_mul69_conv2d3x331_ma3_cma_q, 18'b000000000000000000 };
    assign i_mul69_conv2d3x331_sums_align_1_q = i_mul69_conv2d3x331_sums_align_1_qint[50:0];

    // i_mul69_conv2d3x331_im0_cma(CHAINMULTADD,154)@2 + 3
    assign i_mul69_conv2d3x331_im0_cma_reset = ~ (resetn);
    assign i_mul69_conv2d3x331_im0_cma_ena0 = 1'b1;
    assign i_mul69_conv2d3x331_im0_cma_ena1 = i_mul69_conv2d3x331_im0_cma_ena0;
    assign i_mul69_conv2d3x331_im0_cma_ena2 = i_mul69_conv2d3x331_im0_cma_ena0;

    assign i_mul69_conv2d3x331_im0_cma_a0 = i_mul69_conv2d3x331_bs1_merged_bit_select_b;
    assign i_mul69_conv2d3x331_im0_cma_c0 = i_mul69_conv2d3x331_bs1_merged_bit_select_b;
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
    ) i_mul69_conv2d3x331_im0_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul69_conv2d3x331_im0_cma_ena2, i_mul69_conv2d3x331_im0_cma_ena1, i_mul69_conv2d3x331_im0_cma_ena0 }),
        .aclr({ i_mul69_conv2d3x331_im0_cma_reset, i_mul69_conv2d3x331_im0_cma_reset }),
        .ay(i_mul69_conv2d3x331_im0_cma_a0),
        .ax(i_mul69_conv2d3x331_im0_cma_c0),
        .resulta(i_mul69_conv2d3x331_im0_cma_s0),
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
    i_mul69_conv2d3x331_im0_cma_delay ( .xin(i_mul69_conv2d3x331_im0_cma_s0), .xout(i_mul69_conv2d3x331_im0_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul69_conv2d3x331_im0_cma_q = $unsigned(i_mul69_conv2d3x331_im0_cma_qq[27:0]);

    // i_mul69_conv2d3x331_im8_cma(CHAINMULTADD,155)@2 + 3
    assign i_mul69_conv2d3x331_im8_cma_reset = ~ (resetn);
    assign i_mul69_conv2d3x331_im8_cma_ena0 = 1'b1;
    assign i_mul69_conv2d3x331_im8_cma_ena1 = i_mul69_conv2d3x331_im8_cma_ena0;
    assign i_mul69_conv2d3x331_im8_cma_ena2 = i_mul69_conv2d3x331_im8_cma_ena0;

    assign i_mul69_conv2d3x331_im8_cma_a0 = i_mul69_conv2d3x331_bs1_merged_bit_select_c;
    assign i_mul69_conv2d3x331_im8_cma_c0 = i_mul69_conv2d3x331_bs1_merged_bit_select_c;
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
    ) i_mul69_conv2d3x331_im8_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul69_conv2d3x331_im8_cma_ena2, i_mul69_conv2d3x331_im8_cma_ena1, i_mul69_conv2d3x331_im8_cma_ena0 }),
        .aclr({ i_mul69_conv2d3x331_im8_cma_reset, i_mul69_conv2d3x331_im8_cma_reset }),
        .ay(i_mul69_conv2d3x331_im8_cma_a0),
        .ax(i_mul69_conv2d3x331_im8_cma_c0),
        .resulta(i_mul69_conv2d3x331_im8_cma_s0),
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
    i_mul69_conv2d3x331_im8_cma_delay ( .xin(i_mul69_conv2d3x331_im8_cma_s0), .xout(i_mul69_conv2d3x331_im8_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul69_conv2d3x331_im8_cma_q = $unsigned(i_mul69_conv2d3x331_im8_cma_qq[35:0]);

    // i_mul69_conv2d3x331_sums_join_0(BITJOIN,150)@5
    assign i_mul69_conv2d3x331_sums_join_0_q = {i_mul69_conv2d3x331_im0_cma_q, i_mul69_conv2d3x331_im8_cma_q};

    // i_mul69_conv2d3x331_sums_result_add_0_0(ADD,153)@5
    assign i_mul69_conv2d3x331_sums_result_add_0_0_a = {1'b0, i_mul69_conv2d3x331_sums_join_0_q};
    assign i_mul69_conv2d3x331_sums_result_add_0_0_b = {14'b00000000000000, i_mul69_conv2d3x331_sums_align_1_q};
    assign i_mul69_conv2d3x331_sums_result_add_0_0_o = $unsigned(i_mul69_conv2d3x331_sums_result_add_0_0_a) + $unsigned(i_mul69_conv2d3x331_sums_result_add_0_0_b);
    assign i_mul69_conv2d3x331_sums_result_add_0_0_q = i_mul69_conv2d3x331_sums_result_add_0_0_o[64:0];

    // bgTrunc_i_mul69_conv2d3x331_sel_x(BITSELECT,93)@5
    assign bgTrunc_i_mul69_conv2d3x331_sel_x_in = i_mul69_conv2d3x331_sums_result_add_0_0_q[63:0];
    assign bgTrunc_i_mul69_conv2d3x331_sel_x_b = bgTrunc_i_mul69_conv2d3x331_sel_x_in[31:0];

    // i_mul69_conv2d3x331_vt_select_30(BITSELECT,74)@5
    assign i_mul69_conv2d3x331_vt_select_30_b = bgTrunc_i_mul69_conv2d3x331_sel_x_b[30:0];

    // i_mul69_conv2d3x331_vt_join(BITJOIN,73)@5
    assign i_mul69_conv2d3x331_vt_join_q = {GND_q, i_mul69_conv2d3x331_vt_select_30_b};

    // i_idx_ext70_conv2d3x332_sel_x(BITSELECT,114)@5
    assign i_idx_ext70_conv2d3x332_sel_x_b = {32'b00000000000000000000000000000000, i_mul69_conv2d3x331_vt_join_q[31:0]};

    // i_idx_ext70_conv2d3x332_vt_select_30(BITSELECT,44)@5
    assign i_idx_ext70_conv2d3x332_vt_select_30_b = i_idx_ext70_conv2d3x332_sel_x_b[30:0];

    // redist3_i_idx_ext70_conv2d3x332_vt_select_30_b_1(DELAY,161)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_i_idx_ext70_conv2d3x332_vt_select_30_b_1_q <= '0;
        end
        else
        begin
            redist3_i_idx_ext70_conv2d3x332_vt_select_30_b_1_q <= $unsigned(i_idx_ext70_conv2d3x332_vt_select_30_b);
        end
    end

    // i_idx_ext70_conv2d3x332_vt_join(BITJOIN,43)@6
    assign i_idx_ext70_conv2d3x332_vt_join_q = {c_i33_undef58_q, redist3_i_idx_ext70_conv2d3x332_vt_select_30_b_1_q};

    // i_add_ptr71_conv2d3x30_narrow_x(BITSELECT,103)@6
    assign i_add_ptr71_conv2d3x30_narrow_x_b = i_idx_ext70_conv2d3x332_vt_join_q[61:0];

    // i_add_ptr71_conv2d3x30_shift_join_x(BITJOIN,104)@6
    assign i_add_ptr71_conv2d3x30_shift_join_x_q = {i_add_ptr71_conv2d3x30_narrow_x_b, i_arrayidx2_conv2d3x319_vt_const_1_q};

    // i_add_ptr71_conv2d3x30_add_x(ADD,101)@6
    assign i_add_ptr71_conv2d3x30_add_x_a = {1'b0, i_output_im_addr_068_replace_phi_conv2d3x311_q};
    assign i_add_ptr71_conv2d3x30_add_x_b = {1'b0, i_add_ptr71_conv2d3x30_shift_join_x_q};
    assign i_add_ptr71_conv2d3x30_add_x_o = $unsigned(i_add_ptr71_conv2d3x30_add_x_a) + $unsigned(i_add_ptr71_conv2d3x30_add_x_b);
    assign i_add_ptr71_conv2d3x30_add_x_q = i_add_ptr71_conv2d3x30_add_x_o[64:0];

    // i_add_ptr71_conv2d3x30_dupName_0_trunc_sel_x(BITSELECT,106)@6
    assign i_add_ptr71_conv2d3x30_dupName_0_trunc_sel_x_b = i_add_ptr71_conv2d3x30_add_x_q[63:0];

    // i_llvm_fpga_push_p1024f32_output_im_addr_068_push15_conv2d3x334(BLACKBOX,65)@6
    // out out_feedback_out_15@20000000
    // out out_feedback_valid_out_15@20000000
    conv2d3x3_i_llvm_fpga_push_p1024f32_output_im_addr_068_push15_0 thei_llvm_fpga_push_p1024f32_output_im_addr_068_push15_conv2d3x334 (
        .in_data_in(i_add_ptr71_conv2d3x30_dupName_0_trunc_sel_x_b),
        .in_feedback_stall_in_15(i_llvm_fpga_pop_p1024f32_output_im_addr_068_pop15_conv2d3x310_out_feedback_stall_out_15),
        .in_stall_in(GND_q),
        .in_unnamed_conv2d3x322(redist2_i_unnamed_conv2d3x323_q_5_q),
        .in_valid_in(valid_fanout_reg11_q),
        .out_data_out(),
        .out_feedback_out_15(i_llvm_fpga_push_p1024f32_output_im_addr_068_push15_conv2d3x334_out_feedback_out_15),
        .out_feedback_valid_out_15(i_llvm_fpga_push_p1024f32_output_im_addr_068_push15_conv2d3x334_out_feedback_valid_out_15),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_float_addrspace_1024_undef57(CONSTANT,5)
    assign c_float_addrspace_1024_undef57_q = $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);

    // i_llvm_fpga_pop_p1024f32_output_im_addr_068_pop15_conv2d3x310(BLACKBOX,60)@6
    // out out_feedback_stall_out_15@20000000
    conv2d3x3_i_llvm_fpga_pop_p1024f32_output_im_addr_068_pop15_0 thei_llvm_fpga_pop_p1024f32_output_im_addr_068_pop15_conv2d3x310 (
        .in_data_in(c_float_addrspace_1024_undef57_q),
        .in_dir(redist0_sync_together83_aunroll_x_in_c0_eni1_1_tpl_5_q),
        .in_feedback_in_15(i_llvm_fpga_push_p1024f32_output_im_addr_068_push15_conv2d3x334_out_feedback_out_15),
        .in_feedback_valid_in_15(i_llvm_fpga_push_p1024f32_output_im_addr_068_push15_conv2d3x334_out_feedback_valid_out_15),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_data_out(i_llvm_fpga_pop_p1024f32_output_im_addr_068_pop15_conv2d3x310_out_data_out),
        .out_feedback_stall_out_15(i_llvm_fpga_pop_p1024f32_output_im_addr_068_pop15_conv2d3x310_out_feedback_stall_out_15),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_output_im_addr_068_replace_phi_conv2d3x311(MUX,76)@6
    assign i_output_im_addr_068_replace_phi_conv2d3x311_s = redist0_sync_together83_aunroll_x_in_c0_eni1_1_tpl_5_q;
    always @(i_output_im_addr_068_replace_phi_conv2d3x311_s or i_llvm_fpga_pop_p1024f32_output_im_addr_068_pop15_conv2d3x310_out_data_out or i_llvm_fpga_ffwd_dest_p1024f32_add_ptr131_conv2d3x39_out_dest_data_out_1_0)
    begin
        unique case (i_output_im_addr_068_replace_phi_conv2d3x311_s)
            1'b0 : i_output_im_addr_068_replace_phi_conv2d3x311_q = i_llvm_fpga_pop_p1024f32_output_im_addr_068_pop15_conv2d3x310_out_data_out;
            1'b1 : i_output_im_addr_068_replace_phi_conv2d3x311_q = i_llvm_fpga_ffwd_dest_p1024f32_add_ptr131_conv2d3x39_out_dest_data_out_1_0;
            default : i_output_im_addr_068_replace_phi_conv2d3x311_q = 64'b0;
        endcase
    end

    // valid_fanout_reg1(REG,119)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg1_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg1_q <= $unsigned(redist1_sync_together83_aunroll_x_in_i_valid_4_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1024f32_filter_weight_sync_buffer36_conv2d3x33(BLACKBOX,55)@6
    conv2d3x3_i_llvm_fpga_ffwd_dest_p1024f320000ight_sync_buffer36_0 thei_llvm_fpga_ffwd_dest_p1024f32_filter_weight_sync_buffer36_conv2d3x33 (
        .in_intel_reserved_ffwd_8_0(in_intel_reserved_ffwd_8_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_dest_data_out_8_0(i_llvm_fpga_ffwd_dest_p1024f32_filter_weight_sync_buffer36_conv2d3x33_out_dest_data_out_8_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg2(REG,120)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg2_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg2_q <= $unsigned(redist1_sync_together83_aunroll_x_in_i_valid_4_q);
        end
    end

    // valid_fanout_reg12(REG,130)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg12_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg12_q <= $unsigned(redist1_sync_together83_aunroll_x_in_i_valid_4_q);
        end
    end

    // valid_fanout_reg6(REG,124)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg6_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg6_q <= $unsigned(redist1_sync_together83_aunroll_x_in_i_valid_4_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i32_mul66_add233_conv2d3x314(BLACKBOX,52)@6
    conv2d3x3_i_llvm_fpga_ffwd_dest_i32_mul66_add233_0 thei_llvm_fpga_ffwd_dest_i32_mul66_add233_conv2d3x314 (
        .in_intel_reserved_ffwd_3_0(in_intel_reserved_ffwd_3_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg6_q),
        .out_dest_data_out_3_0(i_llvm_fpga_ffwd_dest_i32_mul66_add233_conv2d3x314_out_dest_data_out_3_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_idx_ext67_conv2d3x315_sel_x(BITSELECT,113)@6
    assign i_idx_ext67_conv2d3x315_sel_x_b = $unsigned({{32{i_llvm_fpga_ffwd_dest_i32_mul66_add233_conv2d3x314_out_dest_data_out_3_0[31]}}, i_llvm_fpga_ffwd_dest_i32_mul66_add233_conv2d3x314_out_dest_data_out_3_0[31:0]});

    // i_add_ptr68_conv2d3x30_narrow_x(BITSELECT,97)@6
    assign i_add_ptr68_conv2d3x30_narrow_x_b = i_idx_ext67_conv2d3x315_sel_x_b[61:0];

    // i_add_ptr68_conv2d3x30_shift_join_x(BITJOIN,98)@6
    assign i_add_ptr68_conv2d3x30_shift_join_x_q = {i_add_ptr68_conv2d3x30_narrow_x_b, i_arrayidx2_conv2d3x319_vt_const_1_q};

    // i_add_ptr68_conv2d3x30_add_x(ADD,95)@6
    assign i_add_ptr68_conv2d3x30_add_x_a = {1'b0, i_filter_weight_addr_067_replace_phi_conv2d3x35_q};
    assign i_add_ptr68_conv2d3x30_add_x_b = {1'b0, i_add_ptr68_conv2d3x30_shift_join_x_q};
    assign i_add_ptr68_conv2d3x30_add_x_o = $unsigned(i_add_ptr68_conv2d3x30_add_x_a) + $unsigned(i_add_ptr68_conv2d3x30_add_x_b);
    assign i_add_ptr68_conv2d3x30_add_x_q = i_add_ptr68_conv2d3x30_add_x_o[64:0];

    // i_add_ptr68_conv2d3x30_dupName_0_trunc_sel_x(BITSELECT,100)@6
    assign i_add_ptr68_conv2d3x30_dupName_0_trunc_sel_x_b = i_add_ptr68_conv2d3x30_add_x_q[63:0];

    // i_llvm_fpga_push_p1024f32_filter_weight_addr_067_push16_conv2d3x336(BLACKBOX,64)@6
    // out out_feedback_out_16@20000000
    // out out_feedback_valid_out_16@20000000
    conv2d3x3_i_llvm_fpga_push_p1024f32_filt0000ht_addr_067_push16_0 thei_llvm_fpga_push_p1024f32_filter_weight_addr_067_push16_conv2d3x336 (
        .in_data_in(i_add_ptr68_conv2d3x30_dupName_0_trunc_sel_x_b),
        .in_feedback_stall_in_16(i_llvm_fpga_pop_p1024f32_filter_weight_addr_067_pop16_conv2d3x34_out_feedback_stall_out_16),
        .in_stall_in(GND_q),
        .in_unnamed_conv2d3x322(redist2_i_unnamed_conv2d3x323_q_5_q),
        .in_valid_in(valid_fanout_reg12_q),
        .out_data_out(),
        .out_feedback_out_16(i_llvm_fpga_push_p1024f32_filter_weight_addr_067_push16_conv2d3x336_out_feedback_out_16),
        .out_feedback_valid_out_16(i_llvm_fpga_push_p1024f32_filter_weight_addr_067_push16_conv2d3x336_out_feedback_valid_out_16),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_p1024f32_filter_weight_addr_067_pop16_conv2d3x34(BLACKBOX,59)@6
    // out out_feedback_stall_out_16@20000000
    conv2d3x3_i_llvm_fpga_pop_p1024f32_filte0000ght_addr_067_pop16_0 thei_llvm_fpga_pop_p1024f32_filter_weight_addr_067_pop16_conv2d3x34 (
        .in_data_in(c_float_addrspace_1024_undef57_q),
        .in_dir(redist0_sync_together83_aunroll_x_in_c0_eni1_1_tpl_5_q),
        .in_feedback_in_16(i_llvm_fpga_push_p1024f32_filter_weight_addr_067_push16_conv2d3x336_out_feedback_out_16),
        .in_feedback_valid_in_16(i_llvm_fpga_push_p1024f32_filter_weight_addr_067_push16_conv2d3x336_out_feedback_valid_out_16),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(i_llvm_fpga_pop_p1024f32_filter_weight_addr_067_pop16_conv2d3x34_out_data_out),
        .out_feedback_stall_out_16(i_llvm_fpga_pop_p1024f32_filter_weight_addr_067_pop16_conv2d3x34_out_feedback_stall_out_16),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_filter_weight_addr_067_replace_phi_conv2d3x35(MUX,36)@6
    assign i_filter_weight_addr_067_replace_phi_conv2d3x35_s = redist0_sync_together83_aunroll_x_in_c0_eni1_1_tpl_5_q;
    always @(i_filter_weight_addr_067_replace_phi_conv2d3x35_s or i_llvm_fpga_pop_p1024f32_filter_weight_addr_067_pop16_conv2d3x34_out_data_out or i_llvm_fpga_ffwd_dest_p1024f32_filter_weight_sync_buffer36_conv2d3x33_out_dest_data_out_8_0)
    begin
        unique case (i_filter_weight_addr_067_replace_phi_conv2d3x35_s)
            1'b0 : i_filter_weight_addr_067_replace_phi_conv2d3x35_q = i_llvm_fpga_pop_p1024f32_filter_weight_addr_067_pop16_conv2d3x34_out_data_out;
            1'b1 : i_filter_weight_addr_067_replace_phi_conv2d3x35_q = i_llvm_fpga_ffwd_dest_p1024f32_filter_weight_sync_buffer36_conv2d3x33_out_dest_data_out_8_0;
            default : i_filter_weight_addr_067_replace_phi_conv2d3x35_q = 64'b0;
        endcase
    end

    // sync_out_aunroll_x(GPOUT,116)@6
    assign out_c0_exi6_0_tpl = GND_q;
    assign out_c0_exi6_1_tpl = i_filter_weight_addr_067_replace_phi_conv2d3x35_q;
    assign out_c0_exi6_2_tpl = i_output_im_addr_068_replace_phi_conv2d3x311_q;
    assign out_c0_exi6_3_tpl = i_unnamed_conv2d3x313_q;
    assign out_c0_exi6_4_tpl = i_arrayidx2_conv2d3x319_vt_join_q;
    assign out_c0_exi6_5_tpl = redist2_i_unnamed_conv2d3x323_q_5_q;
    assign out_c0_exi6_6_tpl = i_notcmp81_conv2d3x324_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_conv2d3x311 = GND_q;

endmodule
