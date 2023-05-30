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

// SystemVerilog created from conv2d3x3_i_sfc_logic_s_c0_in_entry_s_c0_enter_conv2d3x30
// SystemVerilog created on Tue May 30 12:33:16 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2d3x3_i_sfc_logic_s_c0_in_entry_s_c0_enter_conv2d3x30 (
    input wire [31:0] in_filter_size,
    input wire [63:0] in_filter_weight,
    input wire [31:0] in_input_channels,
    input wire [63:0] in_output_im,
    input wire [31:0] in_output_size,
    input wire [31:0] in_start_channel,
    output wire [0:0] out_intel_reserved_ffwd_0_0,
    input wire [0:0] in_i_valid,
    output wire [63:0] out_intel_reserved_ffwd_1_0,
    output wire [0:0] out_intel_reserved_ffwd_2_0,
    output wire [31:0] out_intel_reserved_ffwd_3_0,
    output wire [0:0] out_intel_reserved_ffwd_4_0,
    output wire [0:0] out_intel_reserved_ffwd_5_0,
    output wire [32:0] out_intel_reserved_ffwd_6_0,
    output wire [32:0] out_intel_reserved_ffwd_7_0,
    output wire [63:0] out_intel_reserved_ffwd_8_0,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_conv2d3x310_0_tpl,
    output wire [0:0] out_unnamed_conv2d3x311,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] c_i32_178_q;
    wire [31:0] c_i32_179_q;
    wire [32:0] c_i33_180_q;
    wire [1:0] i_add_ptr1_conv2d3x311_vt_const_1_q;
    wire [63:0] i_add_ptr1_conv2d3x311_vt_join_q;
    wire [61:0] i_add_ptr1_conv2d3x311_vt_select_63_b;
    wire [33:0] i_cmp1157_conv2d3x316_a;
    wire [33:0] i_cmp1157_conv2d3x316_b;
    logic [33:0] i_cmp1157_conv2d3x316_o;
    wire [0:0] i_cmp1157_conv2d3x316_c;
    wire [33:0] i_cmp363_conv2d3x313_a;
    wire [33:0] i_cmp363_conv2d3x313_b;
    logic [33:0] i_cmp363_conv2d3x313_o;
    wire [0:0] i_cmp363_conv2d3x313_c;
    wire [33:0] i_cmp66_conv2d3x32_a;
    wire [33:0] i_cmp66_conv2d3x32_b;
    logic [33:0] i_cmp66_conv2d3x32_o;
    wire [0:0] i_cmp66_conv2d3x32_c;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_conv2d3x31_conv2d3x341_out_intel_reserved_ffwd_0_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_conv2d3x33_conv2d3x343_out_intel_reserved_ffwd_2_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_conv2d3x35_conv2d3x345_out_intel_reserved_ffwd_4_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_conv2d3x36_conv2d3x346_out_intel_reserved_ffwd_5_0;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_conv2d3x34_conv2d3x344_out_intel_reserved_ffwd_3_0;
    wire [32:0] i_llvm_fpga_ffwd_source_i33_unnamed_conv2d3x37_conv2d3x347_out_intel_reserved_ffwd_6_0;
    wire [32:0] i_llvm_fpga_ffwd_source_i33_unnamed_conv2d3x38_conv2d3x348_out_intel_reserved_ffwd_7_0;
    wire [63:0] i_llvm_fpga_ffwd_source_p1024f32_unnamed_conv2d3x32_conv2d3x342_out_intel_reserved_ffwd_1_0;
    wire [63:0] i_llvm_fpga_ffwd_source_p1024f32_unnamed_conv2d3x39_conv2d3x349_out_intel_reserved_ffwd_8_0;
    wire [31:0] i_llvm_fpga_sync_buffer_i32_filter_size_sync_buffer25_conv2d3x332_out_buffer_out;
    wire [31:0] i_llvm_fpga_sync_buffer_i32_filter_size_sync_buffer26_conv2d3x335_out_buffer_out;
    wire [31:0] i_llvm_fpga_sync_buffer_i32_filter_size_sync_buffer_conv2d3x31_out_buffer_out;
    wire [31:0] i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer5_conv2d3x318_out_buffer_out;
    wire [31:0] i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer6_conv2d3x315_out_buffer_out;
    wire [31:0] i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer_conv2d3x319_out_buffer_out;
    wire [31:0] i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer20_conv2d3x37_out_buffer_out;
    wire [31:0] i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer21_conv2d3x35_out_buffer_out;
    wire [31:0] i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer23_conv2d3x324_out_buffer_out;
    wire [31:0] i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer24_conv2d3x327_out_buffer_out;
    wire [31:0] i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer_conv2d3x312_out_buffer_out;
    wire [31:0] i_llvm_fpga_sync_buffer_i32_start_channel_sync_buffer_conv2d3x34_out_buffer_out;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024f32_filter_weight_sync_buffer_conv2d3x340_out_buffer_out;
    wire [9:0] i_llvm_fpga_sync_buffer_p1024f32_filter_weight_sync_buffer_conv2d3x340_vt_const_9_q;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024f32_filter_weight_sync_buffer_conv2d3x340_vt_join_q;
    wire [53:0] i_llvm_fpga_sync_buffer_p1024f32_filter_weight_sync_buffer_conv2d3x340_vt_select_63_b;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_conv2d3x310_out_buffer_out;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_conv2d3x310_vt_join_q;
    wire [53:0] i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_conv2d3x310_vt_select_63_b;
    wire [32:0] i_mul66_add2_conv2d3x321_a;
    wire [32:0] i_mul66_add2_conv2d3x321_b;
    logic [32:0] i_mul66_add2_conv2d3x321_o;
    wire [32:0] i_mul66_add2_conv2d3x321_q;
    wire [0:0] i_smax100_conv2d3x336_s;
    reg [31:0] i_smax100_conv2d3x336_q;
    wire [0:0] i_smax_conv2d3x328_s;
    reg [31:0] i_smax_conv2d3x328_q;
    wire [2:0] i_unnamed_conv2d3x320_vt_const_2_q;
    wire [31:0] i_unnamed_conv2d3x320_vt_join_q;
    wire [28:0] i_unnamed_conv2d3x320_vt_select_31_b;
    wire [0:0] i_unnamed_conv2d3x322_q;
    wire [0:0] i_unnamed_conv2d3x323_q;
    wire [33:0] i_unnamed_conv2d3x325_a;
    wire [33:0] i_unnamed_conv2d3x325_b;
    logic [33:0] i_unnamed_conv2d3x325_o;
    wire [0:0] i_unnamed_conv2d3x325_c;
    wire [32:0] i_unnamed_conv2d3x329_a;
    wire [32:0] i_unnamed_conv2d3x329_b;
    logic [32:0] i_unnamed_conv2d3x329_o;
    wire [32:0] i_unnamed_conv2d3x329_q;
    wire [32:0] i_unnamed_conv2d3x330_vt_join_q;
    wire [31:0] i_unnamed_conv2d3x330_vt_select_31_b;
    wire [33:0] i_unnamed_conv2d3x331_a;
    wire [33:0] i_unnamed_conv2d3x331_b;
    logic [33:0] i_unnamed_conv2d3x331_o;
    wire [33:0] i_unnamed_conv2d3x331_q;
    wire [33:0] i_unnamed_conv2d3x333_a;
    wire [33:0] i_unnamed_conv2d3x333_b;
    logic [33:0] i_unnamed_conv2d3x333_o;
    wire [0:0] i_unnamed_conv2d3x333_c;
    wire [32:0] i_unnamed_conv2d3x337_a;
    wire [32:0] i_unnamed_conv2d3x337_b;
    logic [32:0] i_unnamed_conv2d3x337_o;
    wire [32:0] i_unnamed_conv2d3x337_q;
    wire [32:0] i_unnamed_conv2d3x338_vt_join_q;
    wire [31:0] i_unnamed_conv2d3x338_vt_select_31_b;
    wire [33:0] i_unnamed_conv2d3x339_a;
    wire [33:0] i_unnamed_conv2d3x339_b;
    logic [33:0] i_unnamed_conv2d3x339_o;
    wire [33:0] i_unnamed_conv2d3x339_q;
    wire [63:0] bgTrunc_i_mul1_conv2d3x38_sel_x_in;
    wire [31:0] bgTrunc_i_mul1_conv2d3x38_sel_x_b;
    wire [31:0] bgTrunc_i_mul66_add2_conv2d3x321_sel_x_b;
    wire [63:0] bgTrunc_i_mul_conv2d3x36_sel_x_in;
    wire [31:0] bgTrunc_i_mul_conv2d3x36_sel_x_b;
    wire [31:0] bgTrunc_i_unnamed_conv2d3x329_sel_x_b;
    wire [32:0] bgTrunc_i_unnamed_conv2d3x331_sel_x_b;
    wire [31:0] bgTrunc_i_unnamed_conv2d3x337_sel_x_b;
    wire [32:0] bgTrunc_i_unnamed_conv2d3x339_sel_x_b;
    wire [31:0] c_i32_075_recast_x_q;
    wire [64:0] i_add_ptr1_conv2d3x30_add_x_a;
    wire [64:0] i_add_ptr1_conv2d3x30_add_x_b;
    logic [64:0] i_add_ptr1_conv2d3x30_add_x_o;
    wire [64:0] i_add_ptr1_conv2d3x30_add_x_q;
    wire [61:0] i_add_ptr1_conv2d3x30_narrow_x_b;
    wire [63:0] i_add_ptr1_conv2d3x30_shift_join_x_q;
    wire [63:0] i_add_ptr1_conv2d3x30_dupName_0_trunc_sel_x_b;
    wire [63:0] i_idx_ext_conv2d3x39_sel_x_b;
    wire [32:0] i_unnamed_conv2d3x330_sel_x_b;
    wire [32:0] i_unnamed_conv2d3x338_sel_x_b;
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
    wire [63:0] i_mul1_conv2d3x38_sums_join_0_q;
    wire [50:0] i_mul1_conv2d3x38_sums_align_1_q;
    wire [50:0] i_mul1_conv2d3x38_sums_align_1_qint;
    wire [64:0] i_mul1_conv2d3x38_sums_result_add_0_0_a;
    wire [64:0] i_mul1_conv2d3x38_sums_result_add_0_0_b;
    logic [64:0] i_mul1_conv2d3x38_sums_result_add_0_0_o;
    wire [64:0] i_mul1_conv2d3x38_sums_result_add_0_0_q;
    wire [63:0] i_mul_conv2d3x36_sums_join_0_q;
    wire [50:0] i_mul_conv2d3x36_sums_align_1_q;
    wire [50:0] i_mul_conv2d3x36_sums_align_1_qint;
    wire [64:0] i_mul_conv2d3x36_sums_result_add_0_0_a;
    wire [64:0] i_mul_conv2d3x36_sums_result_add_0_0_b;
    logic [64:0] i_mul_conv2d3x36_sums_result_add_0_0_o;
    wire [64:0] i_mul_conv2d3x36_sums_result_add_0_0_q;
    wire [30:0] leftShiftStage0Idx1Rng1_uid216_i_unnamed_conv2d3x30_shift_x_in;
    wire [30:0] leftShiftStage0Idx1Rng1_uid216_i_unnamed_conv2d3x30_shift_x_b;
    wire [31:0] leftShiftStage0Idx1_uid217_i_unnamed_conv2d3x30_shift_x_q;
    wire [0:0] leftShiftStage0_uid219_i_unnamed_conv2d3x30_shift_x_s;
    reg [31:0] leftShiftStage0_uid219_i_unnamed_conv2d3x30_shift_x_q;
    wire [29:0] leftShiftStage1Idx1Rng2_uid221_i_unnamed_conv2d3x30_shift_x_in;
    wire [29:0] leftShiftStage1Idx1Rng2_uid221_i_unnamed_conv2d3x30_shift_x_b;
    wire [31:0] leftShiftStage1Idx1_uid222_i_unnamed_conv2d3x30_shift_x_q;
    wire [0:0] leftShiftStage1_uid224_i_unnamed_conv2d3x30_shift_x_s;
    reg [31:0] leftShiftStage1_uid224_i_unnamed_conv2d3x30_shift_x_q;
    wire i_mul1_conv2d3x38_im0_cma_reset;
    wire [13:0] i_mul1_conv2d3x38_im0_cma_a0;
    wire [13:0] i_mul1_conv2d3x38_im0_cma_c0;
    wire [27:0] i_mul1_conv2d3x38_im0_cma_s0;
    wire [27:0] i_mul1_conv2d3x38_im0_cma_qq;
    wire [27:0] i_mul1_conv2d3x38_im0_cma_q;
    wire i_mul1_conv2d3x38_im0_cma_ena0;
    wire i_mul1_conv2d3x38_im0_cma_ena1;
    wire i_mul1_conv2d3x38_im0_cma_ena2;
    wire i_mul1_conv2d3x38_im8_cma_reset;
    wire [17:0] i_mul1_conv2d3x38_im8_cma_a0;
    wire [17:0] i_mul1_conv2d3x38_im8_cma_c0;
    wire [35:0] i_mul1_conv2d3x38_im8_cma_s0;
    wire [35:0] i_mul1_conv2d3x38_im8_cma_qq;
    wire [35:0] i_mul1_conv2d3x38_im8_cma_q;
    wire i_mul1_conv2d3x38_im8_cma_ena0;
    wire i_mul1_conv2d3x38_im8_cma_ena1;
    wire i_mul1_conv2d3x38_im8_cma_ena2;
    wire i_mul_conv2d3x36_im0_cma_reset;
    wire [13:0] i_mul_conv2d3x36_im0_cma_a0;
    wire [13:0] i_mul_conv2d3x36_im0_cma_c0;
    wire [27:0] i_mul_conv2d3x36_im0_cma_s0;
    wire [27:0] i_mul_conv2d3x36_im0_cma_qq;
    wire [27:0] i_mul_conv2d3x36_im0_cma_q;
    wire i_mul_conv2d3x36_im0_cma_ena0;
    wire i_mul_conv2d3x36_im0_cma_ena1;
    wire i_mul_conv2d3x36_im0_cma_ena2;
    wire i_mul_conv2d3x36_im8_cma_reset;
    wire [17:0] i_mul_conv2d3x36_im8_cma_a0;
    wire [17:0] i_mul_conv2d3x36_im8_cma_c0;
    wire [35:0] i_mul_conv2d3x36_im8_cma_s0;
    wire [35:0] i_mul_conv2d3x36_im8_cma_qq;
    wire [35:0] i_mul_conv2d3x36_im8_cma_q;
    wire i_mul_conv2d3x36_im8_cma_ena0;
    wire i_mul_conv2d3x36_im8_cma_ena1;
    wire i_mul_conv2d3x36_im8_cma_ena2;
    wire i_mul1_conv2d3x38_ma3_cma_reset;
    wire [13:0] i_mul1_conv2d3x38_ma3_cma_a0;
    wire [17:0] i_mul1_conv2d3x38_ma3_cma_c0;
    wire [13:0] i_mul1_conv2d3x38_ma3_cma_a1;
    wire [17:0] i_mul1_conv2d3x38_ma3_cma_c1;
    wire [32:0] i_mul1_conv2d3x38_ma3_cma_s0;
    wire [32:0] i_mul1_conv2d3x38_ma3_cma_qq;
    wire [32:0] i_mul1_conv2d3x38_ma3_cma_q;
    wire i_mul1_conv2d3x38_ma3_cma_ena0;
    wire i_mul1_conv2d3x38_ma3_cma_ena1;
    wire i_mul1_conv2d3x38_ma3_cma_ena2;
    wire i_mul_conv2d3x36_ma3_cma_reset;
    wire [13:0] i_mul_conv2d3x36_ma3_cma_a0;
    wire [17:0] i_mul_conv2d3x36_ma3_cma_c0;
    wire [13:0] i_mul_conv2d3x36_ma3_cma_a1;
    wire [17:0] i_mul_conv2d3x36_ma3_cma_c1;
    wire [32:0] i_mul_conv2d3x36_ma3_cma_s0;
    wire [32:0] i_mul_conv2d3x36_ma3_cma_qq;
    wire [32:0] i_mul_conv2d3x36_ma3_cma_q;
    wire i_mul_conv2d3x36_ma3_cma_ena0;
    wire i_mul_conv2d3x36_ma3_cma_ena1;
    wire i_mul_conv2d3x36_ma3_cma_ena2;
    wire [13:0] i_mul1_conv2d3x38_bs2_merged_bit_select_b;
    wire [17:0] i_mul1_conv2d3x38_bs2_merged_bit_select_c;
    wire [13:0] i_mul_conv2d3x36_bs1_merged_bit_select_b;
    wire [17:0] i_mul_conv2d3x36_bs1_merged_bit_select_c;
    wire [13:0] i_mul_conv2d3x36_bs2_merged_bit_select_b;
    wire [17:0] i_mul_conv2d3x36_bs2_merged_bit_select_c;
    wire [13:0] i_mul1_conv2d3x38_bs1_merged_bit_select_b;
    wire [17:0] i_mul1_conv2d3x38_bs1_merged_bit_select_c;
    reg [31:0] redist0_bgTrunc_i_mul1_conv2d3x38_sel_x_b_1_q;
    reg [0:0] redist1_sync_together87_in_i_valid_1_q;
    reg [0:0] redist2_sync_together87_in_i_valid_3_q;
    reg [0:0] redist2_sync_together87_in_i_valid_3_delay_0;
    reg [0:0] redist3_sync_together87_in_i_valid_6_q;
    reg [0:0] redist3_sync_together87_in_i_valid_6_delay_0;
    reg [0:0] redist3_sync_together87_in_i_valid_6_delay_1;
    reg [0:0] redist4_sync_together87_in_i_valid_7_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // valid_fanout_reg15(REG,162)@1 + 1
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

    // valid_fanout_reg1(REG,148)@1 + 1
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

    // i_llvm_fpga_sync_buffer_i32_filter_size_sync_buffer_conv2d3x31(BLACKBOX,56)@0
    // in in_i_dependence@2
    // in in_valid_in@2
    // out out_buffer_out@2
    // out out_valid_out@2
    conv2d3x3_i_llvm_fpga_sync_buffer_i32_filter_size_sync_buffer_0 thei_llvm_fpga_sync_buffer_i32_filter_size_sync_buffer_conv2d3x31 (
        .in_buffer_in(in_filter_size),
        .in_i_dependence(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_buffer_out(i_llvm_fpga_sync_buffer_i32_filter_size_sync_buffer_conv2d3x31_out_buffer_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_075_recast_x(CONSTANT,120)
    assign c_i32_075_recast_x_q = $unsigned(32'b00000000000000000000000000000000);

    // i_cmp66_conv2d3x32(COMPARE,42)@2
    assign i_cmp66_conv2d3x32_a = $unsigned({{2{c_i32_075_recast_x_q[31]}}, c_i32_075_recast_x_q});
    assign i_cmp66_conv2d3x32_b = $unsigned({{2{i_llvm_fpga_sync_buffer_i32_filter_size_sync_buffer_conv2d3x31_out_buffer_out[31]}}, i_llvm_fpga_sync_buffer_i32_filter_size_sync_buffer_conv2d3x31_out_buffer_out});
    assign i_cmp66_conv2d3x32_o = $unsigned($signed(i_cmp66_conv2d3x32_a) - $signed(i_cmp66_conv2d3x32_b));
    assign i_cmp66_conv2d3x32_c[0] = i_cmp66_conv2d3x32_o[33];

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_llvm_fpga_ffwd_source_i1_unnamed_conv2d3x31_conv2d3x341(BLACKBOX,45)@2
    // out out_intel_reserved_ffwd_0_0@20000000
    conv2d3x3_i_llvm_fpga_ffwd_source_i1_unnamed_1_conv2d3x30 thei_llvm_fpga_ffwd_source_i1_unnamed_conv2d3x31_conv2d3x341 (
        .in_predicate_in(GND_q),
        .in_src_data_in_0_0(i_cmp66_conv2d3x32_c),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg15_q),
        .out_intel_reserved_ffwd_0_0(i_llvm_fpga_ffwd_source_i1_unnamed_conv2d3x31_conv2d3x341_out_intel_reserved_ffwd_0_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // regfree_osync(GPOUT,110)
    assign out_intel_reserved_ffwd_0_0 = i_llvm_fpga_ffwd_source_i1_unnamed_conv2d3x31_conv2d3x341_out_intel_reserved_ffwd_0_0;

    // redist1_sync_together87_in_i_valid_1(DELAY,236)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together87_in_i_valid_1_q <= '0;
        end
        else
        begin
            redist1_sync_together87_in_i_valid_1_q <= $unsigned(in_i_valid);
        end
    end

    // redist2_sync_together87_in_i_valid_3(DELAY,237)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_sync_together87_in_i_valid_3_delay_0 <= '0;
            redist2_sync_together87_in_i_valid_3_q <= '0;
        end
        else
        begin
            redist2_sync_together87_in_i_valid_3_delay_0 <= $unsigned(redist1_sync_together87_in_i_valid_1_q);
            redist2_sync_together87_in_i_valid_3_q <= redist2_sync_together87_in_i_valid_3_delay_0;
        end
    end

    // redist3_sync_together87_in_i_valid_6(DELAY,238)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_sync_together87_in_i_valid_6_delay_0 <= '0;
            redist3_sync_together87_in_i_valid_6_delay_1 <= '0;
            redist3_sync_together87_in_i_valid_6_q <= '0;
        end
        else
        begin
            redist3_sync_together87_in_i_valid_6_delay_0 <= $unsigned(redist2_sync_together87_in_i_valid_3_q);
            redist3_sync_together87_in_i_valid_6_delay_1 <= redist3_sync_together87_in_i_valid_6_delay_0;
            redist3_sync_together87_in_i_valid_6_q <= redist3_sync_together87_in_i_valid_6_delay_1;
        end
    end

    // redist4_sync_together87_in_i_valid_7(DELAY,239)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_sync_together87_in_i_valid_7_q <= '0;
        end
        else
        begin
            redist4_sync_together87_in_i_valid_7_q <= $unsigned(redist3_sync_together87_in_i_valid_6_q);
        end
    end

    // valid_fanout_reg16(REG,163)@8 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg16_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg16_q <= $unsigned(redist4_sync_together87_in_i_valid_7_q);
        end
    end

    // valid_fanout_reg4(REG,151)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg4_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg4_q <= $unsigned(redist2_sync_together87_in_i_valid_3_q);
        end
    end

    // i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer20_conv2d3x37(BLACKBOX,60)@0
    // in in_i_dependence@5
    // in in_valid_in@5
    // out out_buffer_out@5
    // out out_valid_out@5
    conv2d3x3_i_llvm_fpga_sync_buffer_i32_ou0000size_sync_buffer20_0 thei_llvm_fpga_sync_buffer_i32_output_size_sync_buffer20_conv2d3x37 (
        .in_buffer_in(in_output_size),
        .in_i_dependence(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_buffer_out(i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer20_conv2d3x37_out_buffer_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_mul1_conv2d3x38_bs2_merged_bit_select(BITSELECT,231)@5
    assign i_mul1_conv2d3x38_bs2_merged_bit_select_b = i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer20_conv2d3x37_out_buffer_out[31:18];
    assign i_mul1_conv2d3x38_bs2_merged_bit_select_c = i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer20_conv2d3x37_out_buffer_out[17:0];

    // valid_fanout_reg2(REG,149)@1 + 1
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

    // i_llvm_fpga_sync_buffer_i32_start_channel_sync_buffer_conv2d3x34(BLACKBOX,65)@0
    // in in_i_dependence@2
    // in in_valid_in@2
    // out out_buffer_out@2
    // out out_valid_out@2
    conv2d3x3_i_llvm_fpga_sync_buffer_i32_st0000hannel_sync_buffer_0 thei_llvm_fpga_sync_buffer_i32_start_channel_sync_buffer_conv2d3x34 (
        .in_buffer_in(in_start_channel),
        .in_i_dependence(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_buffer_out(i_llvm_fpga_sync_buffer_i32_start_channel_sync_buffer_conv2d3x34_out_buffer_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_mul_conv2d3x36_bs2_merged_bit_select(BITSELECT,233)@2
    assign i_mul_conv2d3x36_bs2_merged_bit_select_b = i_llvm_fpga_sync_buffer_i32_start_channel_sync_buffer_conv2d3x34_out_buffer_out[31:18];
    assign i_mul_conv2d3x36_bs2_merged_bit_select_c = i_llvm_fpga_sync_buffer_i32_start_channel_sync_buffer_conv2d3x34_out_buffer_out[17:0];

    // valid_fanout_reg3(REG,150)@1 + 1
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

    // i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer21_conv2d3x35(BLACKBOX,61)@0
    // in in_i_dependence@2
    // in in_valid_in@2
    // out out_buffer_out@2
    // out out_valid_out@2
    conv2d3x3_i_llvm_fpga_sync_buffer_i32_ou0000size_sync_buffer21_0 thei_llvm_fpga_sync_buffer_i32_output_size_sync_buffer21_conv2d3x35 (
        .in_buffer_in(in_output_size),
        .in_i_dependence(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_buffer_out(i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer21_conv2d3x35_out_buffer_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_mul_conv2d3x36_bs1_merged_bit_select(BITSELECT,232)@2
    assign i_mul_conv2d3x36_bs1_merged_bit_select_b = i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer21_conv2d3x35_out_buffer_out[31:18];
    assign i_mul_conv2d3x36_bs1_merged_bit_select_c = i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer21_conv2d3x35_out_buffer_out[17:0];

    // i_mul_conv2d3x36_ma3_cma(CHAINMULTADD,230)@2 + 3
    assign i_mul_conv2d3x36_ma3_cma_reset = ~ (resetn);
    assign i_mul_conv2d3x36_ma3_cma_ena0 = 1'b1;
    assign i_mul_conv2d3x36_ma3_cma_ena1 = i_mul_conv2d3x36_ma3_cma_ena0;
    assign i_mul_conv2d3x36_ma3_cma_ena2 = i_mul_conv2d3x36_ma3_cma_ena0;

    assign i_mul_conv2d3x36_ma3_cma_a0 = i_mul_conv2d3x36_bs1_merged_bit_select_b;
    assign i_mul_conv2d3x36_ma3_cma_c0 = i_mul_conv2d3x36_bs2_merged_bit_select_c;
    assign i_mul_conv2d3x36_ma3_cma_a1 = i_mul_conv2d3x36_bs2_merged_bit_select_b;
    assign i_mul_conv2d3x36_ma3_cma_c1 = i_mul_conv2d3x36_bs1_merged_bit_select_c;
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
    ) i_mul_conv2d3x36_ma3_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul_conv2d3x36_ma3_cma_ena2, i_mul_conv2d3x36_ma3_cma_ena1, i_mul_conv2d3x36_ma3_cma_ena0 }),
        .aclr({ i_mul_conv2d3x36_ma3_cma_reset, i_mul_conv2d3x36_ma3_cma_reset }),
        .ay(i_mul_conv2d3x36_ma3_cma_a1),
        .by(i_mul_conv2d3x36_ma3_cma_a0),
        .ax(i_mul_conv2d3x36_ma3_cma_c1),
        .bx(i_mul_conv2d3x36_ma3_cma_c0),
        .resulta(i_mul_conv2d3x36_ma3_cma_s0),
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
    i_mul_conv2d3x36_ma3_cma_delay ( .xin(i_mul_conv2d3x36_ma3_cma_s0), .xout(i_mul_conv2d3x36_ma3_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul_conv2d3x36_ma3_cma_q = $unsigned(i_mul_conv2d3x36_ma3_cma_qq[32:0]);

    // i_mul_conv2d3x36_sums_align_1(BITSHIFT,209)@5
    assign i_mul_conv2d3x36_sums_align_1_qint = { i_mul_conv2d3x36_ma3_cma_q, 18'b000000000000000000 };
    assign i_mul_conv2d3x36_sums_align_1_q = i_mul_conv2d3x36_sums_align_1_qint[50:0];

    // i_mul_conv2d3x36_im0_cma(CHAINMULTADD,227)@2 + 3
    assign i_mul_conv2d3x36_im0_cma_reset = ~ (resetn);
    assign i_mul_conv2d3x36_im0_cma_ena0 = 1'b1;
    assign i_mul_conv2d3x36_im0_cma_ena1 = i_mul_conv2d3x36_im0_cma_ena0;
    assign i_mul_conv2d3x36_im0_cma_ena2 = i_mul_conv2d3x36_im0_cma_ena0;

    assign i_mul_conv2d3x36_im0_cma_a0 = i_mul_conv2d3x36_bs1_merged_bit_select_b;
    assign i_mul_conv2d3x36_im0_cma_c0 = i_mul_conv2d3x36_bs2_merged_bit_select_b;
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
    ) i_mul_conv2d3x36_im0_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul_conv2d3x36_im0_cma_ena2, i_mul_conv2d3x36_im0_cma_ena1, i_mul_conv2d3x36_im0_cma_ena0 }),
        .aclr({ i_mul_conv2d3x36_im0_cma_reset, i_mul_conv2d3x36_im0_cma_reset }),
        .ay(i_mul_conv2d3x36_im0_cma_a0),
        .ax(i_mul_conv2d3x36_im0_cma_c0),
        .resulta(i_mul_conv2d3x36_im0_cma_s0),
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
    i_mul_conv2d3x36_im0_cma_delay ( .xin(i_mul_conv2d3x36_im0_cma_s0), .xout(i_mul_conv2d3x36_im0_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul_conv2d3x36_im0_cma_q = $unsigned(i_mul_conv2d3x36_im0_cma_qq[27:0]);

    // i_mul_conv2d3x36_im8_cma(CHAINMULTADD,228)@2 + 3
    assign i_mul_conv2d3x36_im8_cma_reset = ~ (resetn);
    assign i_mul_conv2d3x36_im8_cma_ena0 = 1'b1;
    assign i_mul_conv2d3x36_im8_cma_ena1 = i_mul_conv2d3x36_im8_cma_ena0;
    assign i_mul_conv2d3x36_im8_cma_ena2 = i_mul_conv2d3x36_im8_cma_ena0;

    assign i_mul_conv2d3x36_im8_cma_a0 = i_mul_conv2d3x36_bs1_merged_bit_select_c;
    assign i_mul_conv2d3x36_im8_cma_c0 = i_mul_conv2d3x36_bs2_merged_bit_select_c;
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
    ) i_mul_conv2d3x36_im8_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul_conv2d3x36_im8_cma_ena2, i_mul_conv2d3x36_im8_cma_ena1, i_mul_conv2d3x36_im8_cma_ena0 }),
        .aclr({ i_mul_conv2d3x36_im8_cma_reset, i_mul_conv2d3x36_im8_cma_reset }),
        .ay(i_mul_conv2d3x36_im8_cma_a0),
        .ax(i_mul_conv2d3x36_im8_cma_c0),
        .resulta(i_mul_conv2d3x36_im8_cma_s0),
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
    i_mul_conv2d3x36_im8_cma_delay ( .xin(i_mul_conv2d3x36_im8_cma_s0), .xout(i_mul_conv2d3x36_im8_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul_conv2d3x36_im8_cma_q = $unsigned(i_mul_conv2d3x36_im8_cma_qq[35:0]);

    // i_mul_conv2d3x36_sums_join_0(BITJOIN,208)@5
    assign i_mul_conv2d3x36_sums_join_0_q = {i_mul_conv2d3x36_im0_cma_q, i_mul_conv2d3x36_im8_cma_q};

    // i_mul_conv2d3x36_sums_result_add_0_0(ADD,211)@5
    assign i_mul_conv2d3x36_sums_result_add_0_0_a = {1'b0, i_mul_conv2d3x36_sums_join_0_q};
    assign i_mul_conv2d3x36_sums_result_add_0_0_b = {14'b00000000000000, i_mul_conv2d3x36_sums_align_1_q};
    assign i_mul_conv2d3x36_sums_result_add_0_0_o = $unsigned(i_mul_conv2d3x36_sums_result_add_0_0_a) + $unsigned(i_mul_conv2d3x36_sums_result_add_0_0_b);
    assign i_mul_conv2d3x36_sums_result_add_0_0_q = i_mul_conv2d3x36_sums_result_add_0_0_o[64:0];

    // bgTrunc_i_mul_conv2d3x36_sel_x(BITSELECT,115)@5
    assign bgTrunc_i_mul_conv2d3x36_sel_x_in = i_mul_conv2d3x36_sums_result_add_0_0_q[63:0];
    assign bgTrunc_i_mul_conv2d3x36_sel_x_b = bgTrunc_i_mul_conv2d3x36_sel_x_in[31:0];

    // i_mul1_conv2d3x38_bs1_merged_bit_select(BITSELECT,234)@5
    assign i_mul1_conv2d3x38_bs1_merged_bit_select_b = bgTrunc_i_mul_conv2d3x36_sel_x_b[31:18];
    assign i_mul1_conv2d3x38_bs1_merged_bit_select_c = bgTrunc_i_mul_conv2d3x36_sel_x_b[17:0];

    // i_mul1_conv2d3x38_ma3_cma(CHAINMULTADD,229)@5 + 3
    assign i_mul1_conv2d3x38_ma3_cma_reset = ~ (resetn);
    assign i_mul1_conv2d3x38_ma3_cma_ena0 = 1'b1;
    assign i_mul1_conv2d3x38_ma3_cma_ena1 = i_mul1_conv2d3x38_ma3_cma_ena0;
    assign i_mul1_conv2d3x38_ma3_cma_ena2 = i_mul1_conv2d3x38_ma3_cma_ena0;

    assign i_mul1_conv2d3x38_ma3_cma_a0 = i_mul1_conv2d3x38_bs1_merged_bit_select_b;
    assign i_mul1_conv2d3x38_ma3_cma_c0 = i_mul1_conv2d3x38_bs2_merged_bit_select_c;
    assign i_mul1_conv2d3x38_ma3_cma_a1 = i_mul1_conv2d3x38_bs2_merged_bit_select_b;
    assign i_mul1_conv2d3x38_ma3_cma_c1 = i_mul1_conv2d3x38_bs1_merged_bit_select_c;
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
    ) i_mul1_conv2d3x38_ma3_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul1_conv2d3x38_ma3_cma_ena2, i_mul1_conv2d3x38_ma3_cma_ena1, i_mul1_conv2d3x38_ma3_cma_ena0 }),
        .aclr({ i_mul1_conv2d3x38_ma3_cma_reset, i_mul1_conv2d3x38_ma3_cma_reset }),
        .ay(i_mul1_conv2d3x38_ma3_cma_a1),
        .by(i_mul1_conv2d3x38_ma3_cma_a0),
        .ax(i_mul1_conv2d3x38_ma3_cma_c1),
        .bx(i_mul1_conv2d3x38_ma3_cma_c0),
        .resulta(i_mul1_conv2d3x38_ma3_cma_s0),
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
    i_mul1_conv2d3x38_ma3_cma_delay ( .xin(i_mul1_conv2d3x38_ma3_cma_s0), .xout(i_mul1_conv2d3x38_ma3_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul1_conv2d3x38_ma3_cma_q = $unsigned(i_mul1_conv2d3x38_ma3_cma_qq[32:0]);

    // i_mul1_conv2d3x38_sums_align_1(BITSHIFT,194)@8
    assign i_mul1_conv2d3x38_sums_align_1_qint = { i_mul1_conv2d3x38_ma3_cma_q, 18'b000000000000000000 };
    assign i_mul1_conv2d3x38_sums_align_1_q = i_mul1_conv2d3x38_sums_align_1_qint[50:0];

    // i_mul1_conv2d3x38_im0_cma(CHAINMULTADD,225)@5 + 3
    assign i_mul1_conv2d3x38_im0_cma_reset = ~ (resetn);
    assign i_mul1_conv2d3x38_im0_cma_ena0 = 1'b1;
    assign i_mul1_conv2d3x38_im0_cma_ena1 = i_mul1_conv2d3x38_im0_cma_ena0;
    assign i_mul1_conv2d3x38_im0_cma_ena2 = i_mul1_conv2d3x38_im0_cma_ena0;

    assign i_mul1_conv2d3x38_im0_cma_a0 = i_mul1_conv2d3x38_bs1_merged_bit_select_b;
    assign i_mul1_conv2d3x38_im0_cma_c0 = i_mul1_conv2d3x38_bs2_merged_bit_select_b;
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
    ) i_mul1_conv2d3x38_im0_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul1_conv2d3x38_im0_cma_ena2, i_mul1_conv2d3x38_im0_cma_ena1, i_mul1_conv2d3x38_im0_cma_ena0 }),
        .aclr({ i_mul1_conv2d3x38_im0_cma_reset, i_mul1_conv2d3x38_im0_cma_reset }),
        .ay(i_mul1_conv2d3x38_im0_cma_a0),
        .ax(i_mul1_conv2d3x38_im0_cma_c0),
        .resulta(i_mul1_conv2d3x38_im0_cma_s0),
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
    i_mul1_conv2d3x38_im0_cma_delay ( .xin(i_mul1_conv2d3x38_im0_cma_s0), .xout(i_mul1_conv2d3x38_im0_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul1_conv2d3x38_im0_cma_q = $unsigned(i_mul1_conv2d3x38_im0_cma_qq[27:0]);

    // i_mul1_conv2d3x38_im8_cma(CHAINMULTADD,226)@5 + 3
    assign i_mul1_conv2d3x38_im8_cma_reset = ~ (resetn);
    assign i_mul1_conv2d3x38_im8_cma_ena0 = 1'b1;
    assign i_mul1_conv2d3x38_im8_cma_ena1 = i_mul1_conv2d3x38_im8_cma_ena0;
    assign i_mul1_conv2d3x38_im8_cma_ena2 = i_mul1_conv2d3x38_im8_cma_ena0;

    assign i_mul1_conv2d3x38_im8_cma_a0 = i_mul1_conv2d3x38_bs1_merged_bit_select_c;
    assign i_mul1_conv2d3x38_im8_cma_c0 = i_mul1_conv2d3x38_bs2_merged_bit_select_c;
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
    ) i_mul1_conv2d3x38_im8_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul1_conv2d3x38_im8_cma_ena2, i_mul1_conv2d3x38_im8_cma_ena1, i_mul1_conv2d3x38_im8_cma_ena0 }),
        .aclr({ i_mul1_conv2d3x38_im8_cma_reset, i_mul1_conv2d3x38_im8_cma_reset }),
        .ay(i_mul1_conv2d3x38_im8_cma_a0),
        .ax(i_mul1_conv2d3x38_im8_cma_c0),
        .resulta(i_mul1_conv2d3x38_im8_cma_s0),
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
    i_mul1_conv2d3x38_im8_cma_delay ( .xin(i_mul1_conv2d3x38_im8_cma_s0), .xout(i_mul1_conv2d3x38_im8_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul1_conv2d3x38_im8_cma_q = $unsigned(i_mul1_conv2d3x38_im8_cma_qq[35:0]);

    // i_mul1_conv2d3x38_sums_join_0(BITJOIN,193)@8
    assign i_mul1_conv2d3x38_sums_join_0_q = {i_mul1_conv2d3x38_im0_cma_q, i_mul1_conv2d3x38_im8_cma_q};

    // i_mul1_conv2d3x38_sums_result_add_0_0(ADD,196)@8
    assign i_mul1_conv2d3x38_sums_result_add_0_0_a = {1'b0, i_mul1_conv2d3x38_sums_join_0_q};
    assign i_mul1_conv2d3x38_sums_result_add_0_0_b = {14'b00000000000000, i_mul1_conv2d3x38_sums_align_1_q};
    assign i_mul1_conv2d3x38_sums_result_add_0_0_o = $unsigned(i_mul1_conv2d3x38_sums_result_add_0_0_a) + $unsigned(i_mul1_conv2d3x38_sums_result_add_0_0_b);
    assign i_mul1_conv2d3x38_sums_result_add_0_0_q = i_mul1_conv2d3x38_sums_result_add_0_0_o[64:0];

    // bgTrunc_i_mul1_conv2d3x38_sel_x(BITSELECT,113)@8
    assign bgTrunc_i_mul1_conv2d3x38_sel_x_in = i_mul1_conv2d3x38_sums_result_add_0_0_q[63:0];
    assign bgTrunc_i_mul1_conv2d3x38_sel_x_b = bgTrunc_i_mul1_conv2d3x38_sel_x_in[31:0];

    // redist0_bgTrunc_i_mul1_conv2d3x38_sel_x_b_1(DELAY,235)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_bgTrunc_i_mul1_conv2d3x38_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist0_bgTrunc_i_mul1_conv2d3x38_sel_x_b_1_q <= $unsigned(bgTrunc_i_mul1_conv2d3x38_sel_x_b);
        end
    end

    // i_idx_ext_conv2d3x39_sel_x(BITSELECT,139)@9
    assign i_idx_ext_conv2d3x39_sel_x_b = $unsigned({{32{redist0_bgTrunc_i_mul1_conv2d3x38_sel_x_b_1_q[31]}}, redist0_bgTrunc_i_mul1_conv2d3x38_sel_x_b_1_q[31:0]});

    // i_add_ptr1_conv2d3x30_narrow_x(BITSELECT,135)@9
    assign i_add_ptr1_conv2d3x30_narrow_x_b = i_idx_ext_conv2d3x39_sel_x_b[61:0];

    // i_add_ptr1_conv2d3x30_shift_join_x(BITJOIN,136)@9
    assign i_add_ptr1_conv2d3x30_shift_join_x_q = {i_add_ptr1_conv2d3x30_narrow_x_b, i_add_ptr1_conv2d3x311_vt_const_1_q};

    // valid_fanout_reg5(REG,152)@8 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg5_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg5_q <= $unsigned(redist4_sync_together87_in_i_valid_7_q);
        end
    end

    // i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_conv2d3x310(BLACKBOX,70)@0
    // in in_i_dependence@9
    // in in_valid_in@9
    // out out_buffer_out@9
    // out out_valid_out@9
    conv2d3x3_i_llvm_fpga_sync_buffer_p1024f0000put_im_sync_buffer_0 thei_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_conv2d3x310 (
        .in_buffer_in(in_output_im),
        .in_i_dependence(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_buffer_out(i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_conv2d3x310_out_buffer_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_conv2d3x310_vt_select_63(BITSELECT,73)@9
    assign i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_conv2d3x310_vt_select_63_b = i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_conv2d3x310_out_buffer_out[63:10];

    // i_llvm_fpga_sync_buffer_p1024f32_filter_weight_sync_buffer_conv2d3x340_vt_const_9(CONSTANT,67)
    assign i_llvm_fpga_sync_buffer_p1024f32_filter_weight_sync_buffer_conv2d3x340_vt_const_9_q = $unsigned(10'b0000000000);

    // i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_conv2d3x310_vt_join(BITJOIN,72)@9
    assign i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_conv2d3x310_vt_join_q = {i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_conv2d3x310_vt_select_63_b, i_llvm_fpga_sync_buffer_p1024f32_filter_weight_sync_buffer_conv2d3x340_vt_const_9_q};

    // i_add_ptr1_conv2d3x30_add_x(ADD,133)@9
    assign i_add_ptr1_conv2d3x30_add_x_a = {1'b0, i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_conv2d3x310_vt_join_q};
    assign i_add_ptr1_conv2d3x30_add_x_b = {1'b0, i_add_ptr1_conv2d3x30_shift_join_x_q};
    assign i_add_ptr1_conv2d3x30_add_x_o = $unsigned(i_add_ptr1_conv2d3x30_add_x_a) + $unsigned(i_add_ptr1_conv2d3x30_add_x_b);
    assign i_add_ptr1_conv2d3x30_add_x_q = i_add_ptr1_conv2d3x30_add_x_o[64:0];

    // i_add_ptr1_conv2d3x30_dupName_0_trunc_sel_x(BITSELECT,138)@9
    assign i_add_ptr1_conv2d3x30_dupName_0_trunc_sel_x_b = i_add_ptr1_conv2d3x30_add_x_q[63:0];

    // i_add_ptr1_conv2d3x311_vt_select_63(BITSELECT,39)@9
    assign i_add_ptr1_conv2d3x311_vt_select_63_b = i_add_ptr1_conv2d3x30_dupName_0_trunc_sel_x_b[63:2];

    // i_add_ptr1_conv2d3x311_vt_const_1(CONSTANT,37)
    assign i_add_ptr1_conv2d3x311_vt_const_1_q = $unsigned(2'b00);

    // i_add_ptr1_conv2d3x311_vt_join(BITJOIN,38)@9
    assign i_add_ptr1_conv2d3x311_vt_join_q = {i_add_ptr1_conv2d3x311_vt_select_63_b, i_add_ptr1_conv2d3x311_vt_const_1_q};

    // i_llvm_fpga_ffwd_source_p1024f32_unnamed_conv2d3x32_conv2d3x342(BLACKBOX,52)@9
    // out out_intel_reserved_ffwd_1_0@20000000
    conv2d3x3_i_llvm_fpga_ffwd_source_p1024f32_unnamed_2_conv2d3x30 thei_llvm_fpga_ffwd_source_p1024f32_unnamed_conv2d3x32_conv2d3x342 (
        .in_predicate_in(GND_q),
        .in_src_data_in_1_0(i_add_ptr1_conv2d3x311_vt_join_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg16_q),
        .out_intel_reserved_ffwd_1_0(i_llvm_fpga_ffwd_source_p1024f32_unnamed_conv2d3x32_conv2d3x342_out_intel_reserved_ffwd_1_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_regfree_osync_x(GPOUT,122)
    assign out_intel_reserved_ffwd_1_0 = i_llvm_fpga_ffwd_source_p1024f32_unnamed_conv2d3x32_conv2d3x342_out_intel_reserved_ffwd_1_0;

    // valid_fanout_reg17(REG,164)@1 + 1
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

    // valid_fanout_reg7(REG,154)@1 + 1
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

    // i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer6_conv2d3x315(BLACKBOX,58)@0
    // in in_i_dependence@2
    // in in_valid_in@2
    // out out_buffer_out@2
    // out out_valid_out@2
    conv2d3x3_i_llvm_fpga_sync_buffer_i32_in0000nnels_sync_buffer6_0 thei_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer6_conv2d3x315 (
        .in_buffer_in(in_input_channels),
        .in_i_dependence(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg7_q),
        .out_buffer_out(i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer6_conv2d3x315_out_buffer_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_cmp1157_conv2d3x316(COMPARE,40)@2
    assign i_cmp1157_conv2d3x316_a = $unsigned({{2{c_i32_075_recast_x_q[31]}}, c_i32_075_recast_x_q});
    assign i_cmp1157_conv2d3x316_b = $unsigned({{2{i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer6_conv2d3x315_out_buffer_out[31]}}, i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer6_conv2d3x315_out_buffer_out});
    assign i_cmp1157_conv2d3x316_o = $unsigned($signed(i_cmp1157_conv2d3x316_a) - $signed(i_cmp1157_conv2d3x316_b));
    assign i_cmp1157_conv2d3x316_c[0] = i_cmp1157_conv2d3x316_o[33];

    // i_llvm_fpga_ffwd_source_i1_unnamed_conv2d3x33_conv2d3x343(BLACKBOX,46)@2
    // out out_intel_reserved_ffwd_2_0@20000000
    conv2d3x3_i_llvm_fpga_ffwd_source_i1_unnamed_3_conv2d3x30 thei_llvm_fpga_ffwd_source_i1_unnamed_conv2d3x33_conv2d3x343 (
        .in_predicate_in(GND_q),
        .in_src_data_in_2_0(i_cmp1157_conv2d3x316_c),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg17_q),
        .out_intel_reserved_ffwd_2_0(i_llvm_fpga_ffwd_source_i1_unnamed_conv2d3x33_conv2d3x343_out_intel_reserved_ffwd_2_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_1_regfree_osync_x(GPOUT,125)
    assign out_intel_reserved_ffwd_2_0 = i_llvm_fpga_ffwd_source_i1_unnamed_conv2d3x33_conv2d3x343_out_intel_reserved_ffwd_2_0;

    // valid_fanout_reg18(REG,165)@1 + 1
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

    // leftShiftStage1Idx1Rng2_uid221_i_unnamed_conv2d3x30_shift_x(BITSELECT,220)@2
    assign leftShiftStage1Idx1Rng2_uid221_i_unnamed_conv2d3x30_shift_x_in = leftShiftStage0_uid219_i_unnamed_conv2d3x30_shift_x_q[29:0];
    assign leftShiftStage1Idx1Rng2_uid221_i_unnamed_conv2d3x30_shift_x_b = leftShiftStage1Idx1Rng2_uid221_i_unnamed_conv2d3x30_shift_x_in[29:0];

    // leftShiftStage1Idx1_uid222_i_unnamed_conv2d3x30_shift_x(BITJOIN,221)@2
    assign leftShiftStage1Idx1_uid222_i_unnamed_conv2d3x30_shift_x_q = {leftShiftStage1Idx1Rng2_uid221_i_unnamed_conv2d3x30_shift_x_b, i_add_ptr1_conv2d3x311_vt_const_1_q};

    // leftShiftStage0Idx1Rng1_uid216_i_unnamed_conv2d3x30_shift_x(BITSELECT,215)@2
    assign leftShiftStage0Idx1Rng1_uid216_i_unnamed_conv2d3x30_shift_x_in = i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer_conv2d3x319_out_buffer_out[30:0];
    assign leftShiftStage0Idx1Rng1_uid216_i_unnamed_conv2d3x30_shift_x_b = leftShiftStage0Idx1Rng1_uid216_i_unnamed_conv2d3x30_shift_x_in[30:0];

    // leftShiftStage0Idx1_uid217_i_unnamed_conv2d3x30_shift_x(BITJOIN,216)@2
    assign leftShiftStage0Idx1_uid217_i_unnamed_conv2d3x30_shift_x_q = {leftShiftStage0Idx1Rng1_uid216_i_unnamed_conv2d3x30_shift_x_b, GND_q};

    // valid_fanout_reg9(REG,156)@1 + 1
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

    // i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer_conv2d3x319(BLACKBOX,59)@0
    // in in_i_dependence@2
    // in in_valid_in@2
    // out out_buffer_out@2
    // out out_valid_out@2
    conv2d3x3_i_llvm_fpga_sync_buffer_i32_in0000annels_sync_buffer_0 thei_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer_conv2d3x319 (
        .in_buffer_in(in_input_channels),
        .in_i_dependence(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg9_q),
        .out_buffer_out(i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer_conv2d3x319_out_buffer_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // leftShiftStage0_uid219_i_unnamed_conv2d3x30_shift_x(MUX,218)@2
    assign leftShiftStage0_uid219_i_unnamed_conv2d3x30_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid219_i_unnamed_conv2d3x30_shift_x_s or i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer_conv2d3x319_out_buffer_out or leftShiftStage0Idx1_uid217_i_unnamed_conv2d3x30_shift_x_q)
    begin
        unique case (leftShiftStage0_uid219_i_unnamed_conv2d3x30_shift_x_s)
            1'b0 : leftShiftStage0_uid219_i_unnamed_conv2d3x30_shift_x_q = i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer_conv2d3x319_out_buffer_out;
            1'b1 : leftShiftStage0_uid219_i_unnamed_conv2d3x30_shift_x_q = leftShiftStage0Idx1_uid217_i_unnamed_conv2d3x30_shift_x_q;
            default : leftShiftStage0_uid219_i_unnamed_conv2d3x30_shift_x_q = 32'b0;
        endcase
    end

    // leftShiftStage1_uid224_i_unnamed_conv2d3x30_shift_x(MUX,223)@2
    assign leftShiftStage1_uid224_i_unnamed_conv2d3x30_shift_x_s = VCC_q;
    always @(leftShiftStage1_uid224_i_unnamed_conv2d3x30_shift_x_s or leftShiftStage0_uid219_i_unnamed_conv2d3x30_shift_x_q or leftShiftStage1Idx1_uid222_i_unnamed_conv2d3x30_shift_x_q)
    begin
        unique case (leftShiftStage1_uid224_i_unnamed_conv2d3x30_shift_x_s)
            1'b0 : leftShiftStage1_uid224_i_unnamed_conv2d3x30_shift_x_q = leftShiftStage0_uid219_i_unnamed_conv2d3x30_shift_x_q;
            1'b1 : leftShiftStage1_uid224_i_unnamed_conv2d3x30_shift_x_q = leftShiftStage1Idx1_uid222_i_unnamed_conv2d3x30_shift_x_q;
            default : leftShiftStage1_uid224_i_unnamed_conv2d3x30_shift_x_q = 32'b0;
        endcase
    end

    // i_unnamed_conv2d3x320_vt_select_31(BITSELECT,81)@2
    assign i_unnamed_conv2d3x320_vt_select_31_b = leftShiftStage1_uid224_i_unnamed_conv2d3x30_shift_x_q[31:3];

    // i_unnamed_conv2d3x320_vt_const_2(CONSTANT,79)
    assign i_unnamed_conv2d3x320_vt_const_2_q = $unsigned(3'b000);

    // i_unnamed_conv2d3x320_vt_join(BITJOIN,80)@2
    assign i_unnamed_conv2d3x320_vt_join_q = {i_unnamed_conv2d3x320_vt_select_31_b, i_unnamed_conv2d3x320_vt_const_2_q};

    // valid_fanout_reg8(REG,155)@1 + 1
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

    // i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer5_conv2d3x318(BLACKBOX,57)@0
    // in in_i_dependence@2
    // in in_valid_in@2
    // out out_buffer_out@2
    // out out_valid_out@2
    conv2d3x3_i_llvm_fpga_sync_buffer_i32_in0000nnels_sync_buffer5_0 thei_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer5_conv2d3x318 (
        .in_buffer_in(in_input_channels),
        .in_i_dependence(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg8_q),
        .out_buffer_out(i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer5_conv2d3x318_out_buffer_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_mul66_add2_conv2d3x321(ADD,75)@2
    assign i_mul66_add2_conv2d3x321_a = {1'b0, i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer5_conv2d3x318_out_buffer_out};
    assign i_mul66_add2_conv2d3x321_b = {1'b0, i_unnamed_conv2d3x320_vt_join_q};
    assign i_mul66_add2_conv2d3x321_o = $unsigned(i_mul66_add2_conv2d3x321_a) + $unsigned(i_mul66_add2_conv2d3x321_b);
    assign i_mul66_add2_conv2d3x321_q = i_mul66_add2_conv2d3x321_o[32:0];

    // bgTrunc_i_mul66_add2_conv2d3x321_sel_x(BITSELECT,114)@2
    assign bgTrunc_i_mul66_add2_conv2d3x321_sel_x_b = i_mul66_add2_conv2d3x321_q[31:0];

    // i_llvm_fpga_ffwd_source_i32_unnamed_conv2d3x34_conv2d3x344(BLACKBOX,49)@2
    // out out_intel_reserved_ffwd_3_0@20000000
    conv2d3x3_i_llvm_fpga_ffwd_source_i32_unnamed_4_conv2d3x30 thei_llvm_fpga_ffwd_source_i32_unnamed_conv2d3x34_conv2d3x344 (
        .in_predicate_in(GND_q),
        .in_src_data_in_3_0(bgTrunc_i_mul66_add2_conv2d3x321_sel_x_b),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg18_q),
        .out_intel_reserved_ffwd_3_0(i_llvm_fpga_ffwd_source_i32_unnamed_conv2d3x34_conv2d3x344_out_intel_reserved_ffwd_3_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_2_regfree_osync_x(GPOUT,127)
    assign out_intel_reserved_ffwd_3_0 = i_llvm_fpga_ffwd_source_i32_unnamed_conv2d3x34_conv2d3x344_out_intel_reserved_ffwd_3_0;

    // valid_fanout_reg19(REG,166)@1 + 1
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

    // valid_fanout_reg6(REG,153)@1 + 1
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

    // i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer_conv2d3x312(BLACKBOX,64)@0
    // in in_i_dependence@2
    // in in_valid_in@2
    // out out_buffer_out@2
    // out out_valid_out@2
    conv2d3x3_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer_0 thei_llvm_fpga_sync_buffer_i32_output_size_sync_buffer_conv2d3x312 (
        .in_buffer_in(in_output_size),
        .in_i_dependence(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg6_q),
        .out_buffer_out(i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer_conv2d3x312_out_buffer_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_cmp363_conv2d3x313(COMPARE,41)@2
    assign i_cmp363_conv2d3x313_a = $unsigned({{2{c_i32_075_recast_x_q[31]}}, c_i32_075_recast_x_q});
    assign i_cmp363_conv2d3x313_b = $unsigned({{2{i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer_conv2d3x312_out_buffer_out[31]}}, i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer_conv2d3x312_out_buffer_out});
    assign i_cmp363_conv2d3x313_o = $unsigned($signed(i_cmp363_conv2d3x313_a) - $signed(i_cmp363_conv2d3x313_b));
    assign i_cmp363_conv2d3x313_c[0] = i_cmp363_conv2d3x313_o[33];

    // i_unnamed_conv2d3x322(LOGICAL,82)@2
    assign i_unnamed_conv2d3x322_q = i_cmp66_conv2d3x32_c & i_cmp363_conv2d3x313_c;

    // i_llvm_fpga_ffwd_source_i1_unnamed_conv2d3x35_conv2d3x345(BLACKBOX,47)@2
    // out out_intel_reserved_ffwd_4_0@20000000
    conv2d3x3_i_llvm_fpga_ffwd_source_i1_unnamed_5_conv2d3x30 thei_llvm_fpga_ffwd_source_i1_unnamed_conv2d3x35_conv2d3x345 (
        .in_predicate_in(GND_q),
        .in_src_data_in_4_0(i_unnamed_conv2d3x322_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg19_q),
        .out_intel_reserved_ffwd_4_0(i_llvm_fpga_ffwd_source_i1_unnamed_conv2d3x35_conv2d3x345_out_intel_reserved_ffwd_4_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_3_regfree_osync_x(GPOUT,128)
    assign out_intel_reserved_ffwd_4_0 = i_llvm_fpga_ffwd_source_i1_unnamed_conv2d3x35_conv2d3x345_out_intel_reserved_ffwd_4_0;

    // valid_fanout_reg20(REG,167)@1 + 1
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

    // i_unnamed_conv2d3x323(LOGICAL,83)@2
    assign i_unnamed_conv2d3x323_q = i_unnamed_conv2d3x322_q ^ VCC_q;

    // i_llvm_fpga_ffwd_source_i1_unnamed_conv2d3x36_conv2d3x346(BLACKBOX,48)@2
    // out out_intel_reserved_ffwd_5_0@20000000
    conv2d3x3_i_llvm_fpga_ffwd_source_i1_unnamed_6_conv2d3x30 thei_llvm_fpga_ffwd_source_i1_unnamed_conv2d3x36_conv2d3x346 (
        .in_predicate_in(GND_q),
        .in_src_data_in_5_0(i_unnamed_conv2d3x323_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg20_q),
        .out_intel_reserved_ffwd_5_0(i_llvm_fpga_ffwd_source_i1_unnamed_conv2d3x36_conv2d3x346_out_intel_reserved_ffwd_5_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_4_regfree_osync_x(GPOUT,129)
    assign out_intel_reserved_ffwd_5_0 = i_llvm_fpga_ffwd_source_i1_unnamed_conv2d3x36_conv2d3x346_out_intel_reserved_ffwd_5_0;

    // valid_fanout_reg21(REG,168)@8 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg21_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg21_q <= $unsigned(redist4_sync_together87_in_i_valid_7_q);
        end
    end

    // c_i33_180(CONSTANT,36)
    assign c_i33_180_q = $unsigned(33'b111111111111111111111111111111111);

    // c_i32_179(CONSTANT,34)
    assign c_i32_179_q = $unsigned(32'b11111111111111111111111111111111);

    // valid_fanout_reg11(REG,158)@8 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg11_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg11_q <= $unsigned(redist4_sync_together87_in_i_valid_7_q);
        end
    end

    // i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer24_conv2d3x327(BLACKBOX,63)@0
    // in in_i_dependence@9
    // in in_valid_in@9
    // out out_buffer_out@9
    // out out_valid_out@9
    conv2d3x3_i_llvm_fpga_sync_buffer_i32_ou0000size_sync_buffer24_0 thei_llvm_fpga_sync_buffer_i32_output_size_sync_buffer24_conv2d3x327 (
        .in_buffer_in(in_output_size),
        .in_i_dependence(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg11_q),
        .out_buffer_out(i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer24_conv2d3x327_out_buffer_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_178(CONSTANT,33)
    assign c_i32_178_q = $unsigned(32'b00000000000000000000000000000001);

    // valid_fanout_reg10(REG,157)@7 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg10_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg10_q <= $unsigned(redist3_sync_together87_in_i_valid_6_q);
        end
    end

    // i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer23_conv2d3x324(BLACKBOX,62)@0
    // in in_i_dependence@8
    // in in_valid_in@8
    // out out_buffer_out@8
    // out out_valid_out@8
    conv2d3x3_i_llvm_fpga_sync_buffer_i32_ou0000size_sync_buffer23_0 thei_llvm_fpga_sync_buffer_i32_output_size_sync_buffer23_conv2d3x324 (
        .in_buffer_in(in_output_size),
        .in_i_dependence(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg10_q),
        .out_buffer_out(i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer23_conv2d3x324_out_buffer_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_conv2d3x325(COMPARE,84)@8 + 1
    assign i_unnamed_conv2d3x325_a = $unsigned({{2{c_i32_178_q[31]}}, c_i32_178_q});
    assign i_unnamed_conv2d3x325_b = $unsigned({{2{i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer23_conv2d3x324_out_buffer_out[31]}}, i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer23_conv2d3x324_out_buffer_out});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_unnamed_conv2d3x325_o <= 34'b0;
        end
        else
        begin
            i_unnamed_conv2d3x325_o <= $unsigned($signed(i_unnamed_conv2d3x325_a) - $signed(i_unnamed_conv2d3x325_b));
        end
    end
    assign i_unnamed_conv2d3x325_c[0] = i_unnamed_conv2d3x325_o[33];

    // i_smax_conv2d3x328(MUX,78)@9
    assign i_smax_conv2d3x328_s = i_unnamed_conv2d3x325_c;
    always @(i_smax_conv2d3x328_s or c_i32_178_q or i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer24_conv2d3x327_out_buffer_out)
    begin
        unique case (i_smax_conv2d3x328_s)
            1'b0 : i_smax_conv2d3x328_q = c_i32_178_q;
            1'b1 : i_smax_conv2d3x328_q = i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer24_conv2d3x327_out_buffer_out;
            default : i_smax_conv2d3x328_q = 32'b0;
        endcase
    end

    // i_unnamed_conv2d3x329(ADD,85)@9
    assign i_unnamed_conv2d3x329_a = {1'b0, i_smax_conv2d3x328_q};
    assign i_unnamed_conv2d3x329_b = {1'b0, c_i32_179_q};
    assign i_unnamed_conv2d3x329_o = $unsigned(i_unnamed_conv2d3x329_a) + $unsigned(i_unnamed_conv2d3x329_b);
    assign i_unnamed_conv2d3x329_q = i_unnamed_conv2d3x329_o[32:0];

    // bgTrunc_i_unnamed_conv2d3x329_sel_x(BITSELECT,116)@9
    assign bgTrunc_i_unnamed_conv2d3x329_sel_x_b = i_unnamed_conv2d3x329_q[31:0];

    // i_unnamed_conv2d3x330_sel_x(BITSELECT,144)@9
    assign i_unnamed_conv2d3x330_sel_x_b = {1'b0, bgTrunc_i_unnamed_conv2d3x329_sel_x_b[31:0]};

    // i_unnamed_conv2d3x330_vt_select_31(BITSELECT,89)@9
    assign i_unnamed_conv2d3x330_vt_select_31_b = i_unnamed_conv2d3x330_sel_x_b[31:0];

    // i_unnamed_conv2d3x330_vt_join(BITJOIN,88)@9
    assign i_unnamed_conv2d3x330_vt_join_q = {GND_q, i_unnamed_conv2d3x330_vt_select_31_b};

    // i_unnamed_conv2d3x331(ADD,90)@9
    assign i_unnamed_conv2d3x331_a = {1'b0, i_unnamed_conv2d3x330_vt_join_q};
    assign i_unnamed_conv2d3x331_b = {1'b0, c_i33_180_q};
    assign i_unnamed_conv2d3x331_o = $unsigned(i_unnamed_conv2d3x331_a) + $unsigned(i_unnamed_conv2d3x331_b);
    assign i_unnamed_conv2d3x331_q = i_unnamed_conv2d3x331_o[33:0];

    // bgTrunc_i_unnamed_conv2d3x331_sel_x(BITSELECT,117)@9
    assign bgTrunc_i_unnamed_conv2d3x331_sel_x_b = i_unnamed_conv2d3x331_q[32:0];

    // i_llvm_fpga_ffwd_source_i33_unnamed_conv2d3x37_conv2d3x347(BLACKBOX,50)@9
    // out out_intel_reserved_ffwd_6_0@20000000
    conv2d3x3_i_llvm_fpga_ffwd_source_i33_unnamed_7_conv2d3x30 thei_llvm_fpga_ffwd_source_i33_unnamed_conv2d3x37_conv2d3x347 (
        .in_predicate_in(GND_q),
        .in_src_data_in_6_0(bgTrunc_i_unnamed_conv2d3x331_sel_x_b),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg21_q),
        .out_intel_reserved_ffwd_6_0(i_llvm_fpga_ffwd_source_i33_unnamed_conv2d3x37_conv2d3x347_out_intel_reserved_ffwd_6_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_5_regfree_osync_x(GPOUT,130)
    assign out_intel_reserved_ffwd_6_0 = i_llvm_fpga_ffwd_source_i33_unnamed_conv2d3x37_conv2d3x347_out_intel_reserved_ffwd_6_0;

    // valid_fanout_reg22(REG,169)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg22_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg22_q <= $unsigned(redist1_sync_together87_in_i_valid_1_q);
        end
    end

    // valid_fanout_reg13(REG,160)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg13_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg13_q <= $unsigned(redist1_sync_together87_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_sync_buffer_i32_filter_size_sync_buffer26_conv2d3x335(BLACKBOX,55)@0
    // in in_i_dependence@3
    // in in_valid_in@3
    // out out_buffer_out@3
    // out out_valid_out@3
    conv2d3x3_i_llvm_fpga_sync_buffer_i32_fi0000size_sync_buffer26_0 thei_llvm_fpga_sync_buffer_i32_filter_size_sync_buffer26_conv2d3x335 (
        .in_buffer_in(in_filter_size),
        .in_i_dependence(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg13_q),
        .out_buffer_out(i_llvm_fpga_sync_buffer_i32_filter_size_sync_buffer26_conv2d3x335_out_buffer_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg12(REG,159)@1 + 1
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

    // i_llvm_fpga_sync_buffer_i32_filter_size_sync_buffer25_conv2d3x332(BLACKBOX,54)@0
    // in in_i_dependence@2
    // in in_valid_in@2
    // out out_buffer_out@2
    // out out_valid_out@2
    conv2d3x3_i_llvm_fpga_sync_buffer_i32_fi0000size_sync_buffer25_0 thei_llvm_fpga_sync_buffer_i32_filter_size_sync_buffer25_conv2d3x332 (
        .in_buffer_in(in_filter_size),
        .in_i_dependence(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg12_q),
        .out_buffer_out(i_llvm_fpga_sync_buffer_i32_filter_size_sync_buffer25_conv2d3x332_out_buffer_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_conv2d3x333(COMPARE,91)@2 + 1
    assign i_unnamed_conv2d3x333_a = $unsigned({{2{c_i32_178_q[31]}}, c_i32_178_q});
    assign i_unnamed_conv2d3x333_b = $unsigned({{2{i_llvm_fpga_sync_buffer_i32_filter_size_sync_buffer25_conv2d3x332_out_buffer_out[31]}}, i_llvm_fpga_sync_buffer_i32_filter_size_sync_buffer25_conv2d3x332_out_buffer_out});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_unnamed_conv2d3x333_o <= 34'b0;
        end
        else
        begin
            i_unnamed_conv2d3x333_o <= $unsigned($signed(i_unnamed_conv2d3x333_a) - $signed(i_unnamed_conv2d3x333_b));
        end
    end
    assign i_unnamed_conv2d3x333_c[0] = i_unnamed_conv2d3x333_o[33];

    // i_smax100_conv2d3x336(MUX,77)@3
    assign i_smax100_conv2d3x336_s = i_unnamed_conv2d3x333_c;
    always @(i_smax100_conv2d3x336_s or c_i32_178_q or i_llvm_fpga_sync_buffer_i32_filter_size_sync_buffer26_conv2d3x335_out_buffer_out)
    begin
        unique case (i_smax100_conv2d3x336_s)
            1'b0 : i_smax100_conv2d3x336_q = c_i32_178_q;
            1'b1 : i_smax100_conv2d3x336_q = i_llvm_fpga_sync_buffer_i32_filter_size_sync_buffer26_conv2d3x335_out_buffer_out;
            default : i_smax100_conv2d3x336_q = 32'b0;
        endcase
    end

    // i_unnamed_conv2d3x337(ADD,92)@3
    assign i_unnamed_conv2d3x337_a = {1'b0, i_smax100_conv2d3x336_q};
    assign i_unnamed_conv2d3x337_b = {1'b0, c_i32_179_q};
    assign i_unnamed_conv2d3x337_o = $unsigned(i_unnamed_conv2d3x337_a) + $unsigned(i_unnamed_conv2d3x337_b);
    assign i_unnamed_conv2d3x337_q = i_unnamed_conv2d3x337_o[32:0];

    // bgTrunc_i_unnamed_conv2d3x337_sel_x(BITSELECT,118)@3
    assign bgTrunc_i_unnamed_conv2d3x337_sel_x_b = i_unnamed_conv2d3x337_q[31:0];

    // i_unnamed_conv2d3x338_sel_x(BITSELECT,145)@3
    assign i_unnamed_conv2d3x338_sel_x_b = {1'b0, bgTrunc_i_unnamed_conv2d3x337_sel_x_b[31:0]};

    // i_unnamed_conv2d3x338_vt_select_31(BITSELECT,96)@3
    assign i_unnamed_conv2d3x338_vt_select_31_b = i_unnamed_conv2d3x338_sel_x_b[31:0];

    // i_unnamed_conv2d3x338_vt_join(BITJOIN,95)@3
    assign i_unnamed_conv2d3x338_vt_join_q = {GND_q, i_unnamed_conv2d3x338_vt_select_31_b};

    // i_unnamed_conv2d3x339(ADD,97)@3
    assign i_unnamed_conv2d3x339_a = {1'b0, i_unnamed_conv2d3x338_vt_join_q};
    assign i_unnamed_conv2d3x339_b = {1'b0, c_i33_180_q};
    assign i_unnamed_conv2d3x339_o = $unsigned(i_unnamed_conv2d3x339_a) + $unsigned(i_unnamed_conv2d3x339_b);
    assign i_unnamed_conv2d3x339_q = i_unnamed_conv2d3x339_o[33:0];

    // bgTrunc_i_unnamed_conv2d3x339_sel_x(BITSELECT,119)@3
    assign bgTrunc_i_unnamed_conv2d3x339_sel_x_b = i_unnamed_conv2d3x339_q[32:0];

    // i_llvm_fpga_ffwd_source_i33_unnamed_conv2d3x38_conv2d3x348(BLACKBOX,51)@3
    // out out_intel_reserved_ffwd_7_0@20000000
    conv2d3x3_i_llvm_fpga_ffwd_source_i33_unnamed_8_conv2d3x30 thei_llvm_fpga_ffwd_source_i33_unnamed_conv2d3x38_conv2d3x348 (
        .in_predicate_in(GND_q),
        .in_src_data_in_7_0(bgTrunc_i_unnamed_conv2d3x339_sel_x_b),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg22_q),
        .out_intel_reserved_ffwd_7_0(i_llvm_fpga_ffwd_source_i33_unnamed_conv2d3x38_conv2d3x348_out_intel_reserved_ffwd_7_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_6_regfree_osync_x(GPOUT,131)
    assign out_intel_reserved_ffwd_7_0 = i_llvm_fpga_ffwd_source_i33_unnamed_conv2d3x38_conv2d3x348_out_intel_reserved_ffwd_7_0;

    // valid_fanout_reg23(REG,170)@1 + 1
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

    // valid_fanout_reg14(REG,161)@1 + 1
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

    // i_llvm_fpga_sync_buffer_p1024f32_filter_weight_sync_buffer_conv2d3x340(BLACKBOX,66)@0
    // in in_i_dependence@2
    // in in_valid_in@2
    // out out_buffer_out@2
    // out out_valid_out@2
    conv2d3x3_i_llvm_fpga_sync_buffer_p1024f0000weight_sync_buffer_0 thei_llvm_fpga_sync_buffer_p1024f32_filter_weight_sync_buffer_conv2d3x340 (
        .in_buffer_in(in_filter_weight),
        .in_i_dependence(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg14_q),
        .out_buffer_out(i_llvm_fpga_sync_buffer_p1024f32_filter_weight_sync_buffer_conv2d3x340_out_buffer_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_sync_buffer_p1024f32_filter_weight_sync_buffer_conv2d3x340_vt_select_63(BITSELECT,69)@2
    assign i_llvm_fpga_sync_buffer_p1024f32_filter_weight_sync_buffer_conv2d3x340_vt_select_63_b = i_llvm_fpga_sync_buffer_p1024f32_filter_weight_sync_buffer_conv2d3x340_out_buffer_out[63:10];

    // i_llvm_fpga_sync_buffer_p1024f32_filter_weight_sync_buffer_conv2d3x340_vt_join(BITJOIN,68)@2
    assign i_llvm_fpga_sync_buffer_p1024f32_filter_weight_sync_buffer_conv2d3x340_vt_join_q = {i_llvm_fpga_sync_buffer_p1024f32_filter_weight_sync_buffer_conv2d3x340_vt_select_63_b, i_llvm_fpga_sync_buffer_p1024f32_filter_weight_sync_buffer_conv2d3x340_vt_const_9_q};

    // i_llvm_fpga_ffwd_source_p1024f32_unnamed_conv2d3x39_conv2d3x349(BLACKBOX,53)@2
    // out out_intel_reserved_ffwd_8_0@20000000
    conv2d3x3_i_llvm_fpga_ffwd_source_p1024f32_unnamed_9_conv2d3x30 thei_llvm_fpga_ffwd_source_p1024f32_unnamed_conv2d3x39_conv2d3x349 (
        .in_predicate_in(GND_q),
        .in_src_data_in_8_0(i_llvm_fpga_sync_buffer_p1024f32_filter_weight_sync_buffer_conv2d3x340_vt_join_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg23_q),
        .out_intel_reserved_ffwd_8_0(i_llvm_fpga_ffwd_source_p1024f32_unnamed_conv2d3x39_conv2d3x349_out_intel_reserved_ffwd_8_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_7_regfree_osync_x(GPOUT,132)
    assign out_intel_reserved_ffwd_8_0 = i_llvm_fpga_ffwd_source_p1024f32_unnamed_conv2d3x39_conv2d3x349_out_intel_reserved_ffwd_8_0;

    // valid_fanout_reg0(REG,147)@8 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist4_sync_together87_in_i_valid_7_q);
        end
    end

    // sync_out_aunroll_x(GPOUT,146)@9
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_conv2d3x310_0_tpl = GND_q;
    assign out_unnamed_conv2d3x311 = GND_q;

endmodule
