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

// SystemVerilog created from conv2d1x1_i_sfc_logic_s_c0_in_for_cond820000_enter543_conv2d1x10
// SystemVerilog created on Tue May 23 20:43:36 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2d1x1_i_sfc_logic_s_c0_in_for_cond820000_enter543_conv2d1x10 (
    input wire [63:0] in_input_im,
    output wire [0:0] out_c0_exi3549_0_tpl,
    output wire [63:0] out_c0_exi3549_1_tpl,
    output wire [63:0] out_c0_exi3549_2_tpl,
    output wire [63:0] out_c0_exi3549_3_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_conv2d1x15,
    input wire [0:0] in_c0_eni3542_0_tpl,
    input wire [31:0] in_c0_eni3542_1_tpl,
    input wire [31:0] in_c0_eni3542_2_tpl,
    input wire [31:0] in_c0_eni3542_3_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] c_i32_123_q;
    wire [31:0] c_i32_224_q;
    wire [32:0] i_add18_le_conv2d1x13_a;
    wire [32:0] i_add18_le_conv2d1x13_b;
    logic [32:0] i_add18_le_conv2d1x13_o;
    wire [32:0] i_add18_le_conv2d1x13_q;
    wire [31:0] i_add28_le_conv2d1x17_q;
    wire [31:0] i_add28_le_conv2d1x17_vt_join_q;
    wire [30:0] i_add28_le_conv2d1x17_vt_select_31_b;
    wire [32:0] i_add31_le_conv2d1x19_a;
    wire [32:0] i_add31_le_conv2d1x19_b;
    logic [32:0] i_add31_le_conv2d1x19_o;
    wire [32:0] i_add31_le_conv2d1x19_q;
    wire [31:0] i_add41_le_conv2d1x113_q;
    wire [31:0] i_add41_le_conv2d1x113_vt_join_q;
    wire [32:0] i_add44_le_conv2d1x115_a;
    wire [32:0] i_add44_le_conv2d1x115_b;
    logic [32:0] i_add44_le_conv2d1x115_o;
    wire [32:0] i_add44_le_conv2d1x115_q;
    wire [1:0] i_arrayidx20_le5_conv2d1x16_vt_const_1_q;
    wire [63:0] i_arrayidx20_le5_conv2d1x16_vt_join_q;
    wire [61:0] i_arrayidx20_le5_conv2d1x16_vt_select_63_b;
    wire [63:0] i_arrayidx33_le6_conv2d1x112_vt_join_q;
    wire [61:0] i_arrayidx33_le6_conv2d1x112_vt_select_63_b;
    wire [63:0] i_arrayidx46_le7_conv2d1x118_vt_join_q;
    wire [61:0] i_arrayidx46_le7_conv2d1x118_vt_select_63_b;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer6_conv2d1x15_out_buffer_out;
    wire [9:0] i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer6_conv2d1x15_vt_const_9_q;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer6_conv2d1x15_vt_join_q;
    wire [53:0] i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer6_conv2d1x15_vt_select_63_b;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer7_conv2d1x111_out_buffer_out;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer7_conv2d1x111_vt_join_q;
    wire [53:0] i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer7_conv2d1x111_vt_select_63_b;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer8_conv2d1x117_out_buffer_out;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer8_conv2d1x117_vt_join_q;
    wire [53:0] i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer8_conv2d1x117_vt_select_63_b;
    wire [31:0] bgTrunc_i_add18_le_conv2d1x13_sel_x_b;
    wire [31:0] bgTrunc_i_add31_le_conv2d1x19_sel_x_b;
    wire [31:0] bgTrunc_i_add44_le_conv2d1x115_sel_x_b;
    wire [63:0] bgTrunc_i_mul17_le_conv2d1x12_sel_x_in;
    wire [31:0] bgTrunc_i_mul17_le_conv2d1x12_sel_x_b;
    wire [63:0] bgTrunc_i_mul30_le_conv2d1x18_sel_x_in;
    wire [31:0] bgTrunc_i_mul30_le_conv2d1x18_sel_x_b;
    wire [63:0] bgTrunc_i_mul43_le_conv2d1x114_sel_x_in;
    wire [31:0] bgTrunc_i_mul43_le_conv2d1x114_sel_x_b;
    wire [64:0] i_arrayidx20_le5_conv2d1x10_add_x_a;
    wire [64:0] i_arrayidx20_le5_conv2d1x10_add_x_b;
    logic [64:0] i_arrayidx20_le5_conv2d1x10_add_x_o;
    wire [64:0] i_arrayidx20_le5_conv2d1x10_add_x_q;
    wire [61:0] i_arrayidx20_le5_conv2d1x10_narrow_x_b;
    wire [63:0] i_arrayidx20_le5_conv2d1x10_shift_join_x_q;
    wire [63:0] i_arrayidx20_le5_conv2d1x10_dupName_0_trunc_sel_x_b;
    wire [64:0] i_arrayidx33_le6_conv2d1x10_add_x_a;
    wire [64:0] i_arrayidx33_le6_conv2d1x10_add_x_b;
    logic [64:0] i_arrayidx33_le6_conv2d1x10_add_x_o;
    wire [64:0] i_arrayidx33_le6_conv2d1x10_add_x_q;
    wire [61:0] i_arrayidx33_le6_conv2d1x10_narrow_x_b;
    wire [63:0] i_arrayidx33_le6_conv2d1x10_shift_join_x_q;
    wire [63:0] i_arrayidx33_le6_conv2d1x10_dupName_0_trunc_sel_x_b;
    wire [64:0] i_arrayidx46_le7_conv2d1x10_add_x_a;
    wire [64:0] i_arrayidx46_le7_conv2d1x10_add_x_b;
    logic [64:0] i_arrayidx46_le7_conv2d1x10_add_x_o;
    wire [64:0] i_arrayidx46_le7_conv2d1x10_add_x_q;
    wire [61:0] i_arrayidx46_le7_conv2d1x10_narrow_x_b;
    wire [63:0] i_arrayidx46_le7_conv2d1x10_shift_join_x_q;
    wire [63:0] i_arrayidx46_le7_conv2d1x10_dupName_0_trunc_sel_x_b;
    wire [63:0] i_idxprom19_le_conv2d1x14_sel_x_b;
    wire [63:0] i_idxprom32_le_conv2d1x110_sel_x_b;
    wire [63:0] i_idxprom45_le_conv2d1x116_sel_x_b;
    (* dont_merge *) reg [0:0] valid_fanout_reg0_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg1_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg2_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg3_q;
    wire [63:0] i_mul17_le_conv2d1x12_sums_join_0_q;
    wire [50:0] i_mul17_le_conv2d1x12_sums_align_1_q;
    wire [50:0] i_mul17_le_conv2d1x12_sums_align_1_qint;
    wire [64:0] i_mul17_le_conv2d1x12_sums_result_add_0_0_a;
    wire [64:0] i_mul17_le_conv2d1x12_sums_result_add_0_0_b;
    logic [64:0] i_mul17_le_conv2d1x12_sums_result_add_0_0_o;
    wire [64:0] i_mul17_le_conv2d1x12_sums_result_add_0_0_q;
    wire [63:0] i_mul30_le_conv2d1x18_sums_join_0_q;
    wire [50:0] i_mul30_le_conv2d1x18_sums_align_1_q;
    wire [50:0] i_mul30_le_conv2d1x18_sums_align_1_qint;
    wire [64:0] i_mul30_le_conv2d1x18_sums_result_add_0_0_a;
    wire [64:0] i_mul30_le_conv2d1x18_sums_result_add_0_0_b;
    logic [64:0] i_mul30_le_conv2d1x18_sums_result_add_0_0_o;
    wire [64:0] i_mul30_le_conv2d1x18_sums_result_add_0_0_q;
    wire [63:0] i_mul43_le_conv2d1x114_sums_join_0_q;
    wire [50:0] i_mul43_le_conv2d1x114_sums_align_1_q;
    wire [50:0] i_mul43_le_conv2d1x114_sums_align_1_qint;
    wire [64:0] i_mul43_le_conv2d1x114_sums_result_add_0_0_a;
    wire [64:0] i_mul43_le_conv2d1x114_sums_result_add_0_0_b;
    logic [64:0] i_mul43_le_conv2d1x114_sums_result_add_0_0_o;
    wire [64:0] i_mul43_le_conv2d1x114_sums_result_add_0_0_q;
    wire i_mul17_le_conv2d1x12_im0_cma_reset;
    wire [13:0] i_mul17_le_conv2d1x12_im0_cma_a0;
    wire [13:0] i_mul17_le_conv2d1x12_im0_cma_c0;
    wire [27:0] i_mul17_le_conv2d1x12_im0_cma_s0;
    wire [27:0] i_mul17_le_conv2d1x12_im0_cma_qq;
    wire [27:0] i_mul17_le_conv2d1x12_im0_cma_q;
    wire i_mul17_le_conv2d1x12_im0_cma_ena0;
    wire i_mul17_le_conv2d1x12_im0_cma_ena1;
    wire i_mul17_le_conv2d1x12_im0_cma_ena2;
    wire i_mul17_le_conv2d1x12_im8_cma_reset;
    wire [17:0] i_mul17_le_conv2d1x12_im8_cma_a0;
    wire [17:0] i_mul17_le_conv2d1x12_im8_cma_c0;
    wire [35:0] i_mul17_le_conv2d1x12_im8_cma_s0;
    wire [35:0] i_mul17_le_conv2d1x12_im8_cma_qq;
    wire [35:0] i_mul17_le_conv2d1x12_im8_cma_q;
    wire i_mul17_le_conv2d1x12_im8_cma_ena0;
    wire i_mul17_le_conv2d1x12_im8_cma_ena1;
    wire i_mul17_le_conv2d1x12_im8_cma_ena2;
    wire i_mul30_le_conv2d1x18_im0_cma_reset;
    wire [13:0] i_mul30_le_conv2d1x18_im0_cma_a0;
    wire [13:0] i_mul30_le_conv2d1x18_im0_cma_c0;
    wire [27:0] i_mul30_le_conv2d1x18_im0_cma_s0;
    wire [27:0] i_mul30_le_conv2d1x18_im0_cma_qq;
    wire [27:0] i_mul30_le_conv2d1x18_im0_cma_q;
    wire i_mul30_le_conv2d1x18_im0_cma_ena0;
    wire i_mul30_le_conv2d1x18_im0_cma_ena1;
    wire i_mul30_le_conv2d1x18_im0_cma_ena2;
    wire i_mul30_le_conv2d1x18_im8_cma_reset;
    wire [17:0] i_mul30_le_conv2d1x18_im8_cma_a0;
    wire [17:0] i_mul30_le_conv2d1x18_im8_cma_c0;
    wire [35:0] i_mul30_le_conv2d1x18_im8_cma_s0;
    wire [35:0] i_mul30_le_conv2d1x18_im8_cma_qq;
    wire [35:0] i_mul30_le_conv2d1x18_im8_cma_q;
    wire i_mul30_le_conv2d1x18_im8_cma_ena0;
    wire i_mul30_le_conv2d1x18_im8_cma_ena1;
    wire i_mul30_le_conv2d1x18_im8_cma_ena2;
    wire i_mul43_le_conv2d1x114_im0_cma_reset;
    wire [13:0] i_mul43_le_conv2d1x114_im0_cma_a0;
    wire [13:0] i_mul43_le_conv2d1x114_im0_cma_c0;
    wire [27:0] i_mul43_le_conv2d1x114_im0_cma_s0;
    wire [27:0] i_mul43_le_conv2d1x114_im0_cma_qq;
    wire [27:0] i_mul43_le_conv2d1x114_im0_cma_q;
    wire i_mul43_le_conv2d1x114_im0_cma_ena0;
    wire i_mul43_le_conv2d1x114_im0_cma_ena1;
    wire i_mul43_le_conv2d1x114_im0_cma_ena2;
    wire i_mul43_le_conv2d1x114_im8_cma_reset;
    wire [17:0] i_mul43_le_conv2d1x114_im8_cma_a0;
    wire [17:0] i_mul43_le_conv2d1x114_im8_cma_c0;
    wire [35:0] i_mul43_le_conv2d1x114_im8_cma_s0;
    wire [35:0] i_mul43_le_conv2d1x114_im8_cma_qq;
    wire [35:0] i_mul43_le_conv2d1x114_im8_cma_q;
    wire i_mul43_le_conv2d1x114_im8_cma_ena0;
    wire i_mul43_le_conv2d1x114_im8_cma_ena1;
    wire i_mul43_le_conv2d1x114_im8_cma_ena2;
    wire i_mul17_le_conv2d1x12_ma3_cma_reset;
    wire [13:0] i_mul17_le_conv2d1x12_ma3_cma_a0;
    wire [17:0] i_mul17_le_conv2d1x12_ma3_cma_c0;
    wire [13:0] i_mul17_le_conv2d1x12_ma3_cma_a1;
    wire [17:0] i_mul17_le_conv2d1x12_ma3_cma_c1;
    wire [32:0] i_mul17_le_conv2d1x12_ma3_cma_s0;
    wire [32:0] i_mul17_le_conv2d1x12_ma3_cma_qq;
    wire [32:0] i_mul17_le_conv2d1x12_ma3_cma_q;
    wire i_mul17_le_conv2d1x12_ma3_cma_ena0;
    wire i_mul17_le_conv2d1x12_ma3_cma_ena1;
    wire i_mul17_le_conv2d1x12_ma3_cma_ena2;
    wire i_mul30_le_conv2d1x18_ma3_cma_reset;
    wire [13:0] i_mul30_le_conv2d1x18_ma3_cma_a0;
    wire [17:0] i_mul30_le_conv2d1x18_ma3_cma_c0;
    wire [13:0] i_mul30_le_conv2d1x18_ma3_cma_a1;
    wire [17:0] i_mul30_le_conv2d1x18_ma3_cma_c1;
    wire [32:0] i_mul30_le_conv2d1x18_ma3_cma_s0;
    wire [32:0] i_mul30_le_conv2d1x18_ma3_cma_qq;
    wire [32:0] i_mul30_le_conv2d1x18_ma3_cma_q;
    wire i_mul30_le_conv2d1x18_ma3_cma_ena0;
    wire i_mul30_le_conv2d1x18_ma3_cma_ena1;
    wire i_mul30_le_conv2d1x18_ma3_cma_ena2;
    wire i_mul43_le_conv2d1x114_ma3_cma_reset;
    wire [13:0] i_mul43_le_conv2d1x114_ma3_cma_a0;
    wire [17:0] i_mul43_le_conv2d1x114_ma3_cma_c0;
    wire [13:0] i_mul43_le_conv2d1x114_ma3_cma_a1;
    wire [17:0] i_mul43_le_conv2d1x114_ma3_cma_c1;
    wire [32:0] i_mul43_le_conv2d1x114_ma3_cma_s0;
    wire [32:0] i_mul43_le_conv2d1x114_ma3_cma_qq;
    wire [32:0] i_mul43_le_conv2d1x114_ma3_cma_q;
    wire i_mul43_le_conv2d1x114_ma3_cma_ena0;
    wire i_mul43_le_conv2d1x114_ma3_cma_ena1;
    wire i_mul43_le_conv2d1x114_ma3_cma_ena2;
    wire [13:0] i_mul30_le_conv2d1x18_bs2_merged_bit_select_b;
    wire [17:0] i_mul30_le_conv2d1x18_bs2_merged_bit_select_c;
    wire [0:0] i_add41_le_conv2d1x113_vt_select_0_merged_bit_select_b;
    wire [29:0] i_add41_le_conv2d1x113_vt_select_0_merged_bit_select_c;
    wire [13:0] i_mul43_le_conv2d1x114_bs2_merged_bit_select_b;
    wire [17:0] i_mul43_le_conv2d1x114_bs2_merged_bit_select_c;
    wire [13:0] i_mul17_le_conv2d1x12_bs1_merged_bit_select_b;
    wire [17:0] i_mul17_le_conv2d1x12_bs1_merged_bit_select_c;
    wire [13:0] i_mul17_le_conv2d1x12_bs2_merged_bit_select_b;
    wire [17:0] i_mul17_le_conv2d1x12_bs2_merged_bit_select_c;
    reg [0:0] redist1_sync_together27_aunroll_x_in_i_valid_3_q;
    reg [0:0] redist1_sync_together27_aunroll_x_in_i_valid_3_delay_0;
    reg [0:0] redist1_sync_together27_aunroll_x_in_i_valid_3_delay_1;
    reg [31:0] redist2_bgTrunc_i_mul43_le_conv2d1x114_sel_x_b_1_q;
    reg [31:0] redist3_bgTrunc_i_mul30_le_conv2d1x18_sel_x_b_1_q;
    reg [31:0] redist4_bgTrunc_i_mul17_le_conv2d1x12_sel_x_b_1_q;
    reg [31:0] redist0_sync_together27_aunroll_x_in_c0_eni3542_3_tpl_4_outputreg0_q;
    wire redist0_sync_together27_aunroll_x_in_c0_eni3542_3_tpl_4_mem_reset0;
    wire [31:0] redist0_sync_together27_aunroll_x_in_c0_eni3542_3_tpl_4_mem_ia;
    wire [0:0] redist0_sync_together27_aunroll_x_in_c0_eni3542_3_tpl_4_mem_aa;
    wire [0:0] redist0_sync_together27_aunroll_x_in_c0_eni3542_3_tpl_4_mem_ab;
    wire [31:0] redist0_sync_together27_aunroll_x_in_c0_eni3542_3_tpl_4_mem_iq;
    wire [31:0] redist0_sync_together27_aunroll_x_in_c0_eni3542_3_tpl_4_mem_q;
    wire [0:0] redist0_sync_together27_aunroll_x_in_c0_eni3542_3_tpl_4_rdcnt_q;
    (* preserve *) reg [0:0] redist0_sync_together27_aunroll_x_in_c0_eni3542_3_tpl_4_rdcnt_i;
    reg [0:0] redist0_sync_together27_aunroll_x_in_c0_eni3542_3_tpl_4_wraddr_q;
    (* dont_merge *) reg [0:0] redist0_sync_together27_aunroll_x_in_c0_eni3542_3_tpl_4_cmpReg_q;
    wire [0:0] redist0_sync_together27_aunroll_x_in_c0_eni3542_3_tpl_4_notEnable_q;
    wire [0:0] redist0_sync_together27_aunroll_x_in_c0_eni3542_3_tpl_4_nor_q;
    (* dont_merge *) reg [0:0] redist0_sync_together27_aunroll_x_in_c0_eni3542_3_tpl_4_sticky_ena_q;
    wire [0:0] redist0_sync_together27_aunroll_x_in_c0_eni3542_3_tpl_4_enaAnd_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist1_sync_together27_aunroll_x_in_i_valid_3(DELAY,162)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together27_aunroll_x_in_i_valid_3_delay_0 <= '0;
            redist1_sync_together27_aunroll_x_in_i_valid_3_delay_1 <= '0;
            redist1_sync_together27_aunroll_x_in_i_valid_3_q <= '0;
        end
        else
        begin
            redist1_sync_together27_aunroll_x_in_i_valid_3_delay_0 <= $unsigned(in_i_valid);
            redist1_sync_together27_aunroll_x_in_i_valid_3_delay_1 <= redist1_sync_together27_aunroll_x_in_i_valid_3_delay_0;
            redist1_sync_together27_aunroll_x_in_i_valid_3_q <= redist1_sync_together27_aunroll_x_in_i_valid_3_delay_1;
        end
    end

    // valid_fanout_reg0(REG,89)@3 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist1_sync_together27_aunroll_x_in_i_valid_3_q);
        end
    end

    // redist0_sync_together27_aunroll_x_in_c0_eni3542_3_tpl_4_notEnable(LOGICAL,171)
    assign redist0_sync_together27_aunroll_x_in_c0_eni3542_3_tpl_4_notEnable_q = $unsigned(~ (VCC_q));

    // redist0_sync_together27_aunroll_x_in_c0_eni3542_3_tpl_4_nor(LOGICAL,172)
    assign redist0_sync_together27_aunroll_x_in_c0_eni3542_3_tpl_4_nor_q = ~ (redist0_sync_together27_aunroll_x_in_c0_eni3542_3_tpl_4_notEnable_q | redist0_sync_together27_aunroll_x_in_c0_eni3542_3_tpl_4_sticky_ena_q);

    // redist0_sync_together27_aunroll_x_in_c0_eni3542_3_tpl_4_cmpReg(REG,170)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_sync_together27_aunroll_x_in_c0_eni3542_3_tpl_4_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist0_sync_together27_aunroll_x_in_c0_eni3542_3_tpl_4_cmpReg_q <= $unsigned(VCC_q);
        end
    end

    // redist0_sync_together27_aunroll_x_in_c0_eni3542_3_tpl_4_sticky_ena(REG,173)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_sync_together27_aunroll_x_in_c0_eni3542_3_tpl_4_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist0_sync_together27_aunroll_x_in_c0_eni3542_3_tpl_4_nor_q == 1'b1)
        begin
            redist0_sync_together27_aunroll_x_in_c0_eni3542_3_tpl_4_sticky_ena_q <= $unsigned(redist0_sync_together27_aunroll_x_in_c0_eni3542_3_tpl_4_cmpReg_q);
        end
    end

    // redist0_sync_together27_aunroll_x_in_c0_eni3542_3_tpl_4_enaAnd(LOGICAL,174)
    assign redist0_sync_together27_aunroll_x_in_c0_eni3542_3_tpl_4_enaAnd_q = redist0_sync_together27_aunroll_x_in_c0_eni3542_3_tpl_4_sticky_ena_q & VCC_q;

    // redist0_sync_together27_aunroll_x_in_c0_eni3542_3_tpl_4_rdcnt(COUNTER,168)
    // low=0, high=1, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_sync_together27_aunroll_x_in_c0_eni3542_3_tpl_4_rdcnt_i <= 1'd0;
        end
        else
        begin
            redist0_sync_together27_aunroll_x_in_c0_eni3542_3_tpl_4_rdcnt_i <= $unsigned(redist0_sync_together27_aunroll_x_in_c0_eni3542_3_tpl_4_rdcnt_i) + $unsigned(1'd1);
        end
    end
    assign redist0_sync_together27_aunroll_x_in_c0_eni3542_3_tpl_4_rdcnt_q = redist0_sync_together27_aunroll_x_in_c0_eni3542_3_tpl_4_rdcnt_i[0:0];

    // redist0_sync_together27_aunroll_x_in_c0_eni3542_3_tpl_4_wraddr(REG,169)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_sync_together27_aunroll_x_in_c0_eni3542_3_tpl_4_wraddr_q <= $unsigned(1'b1);
        end
        else
        begin
            redist0_sync_together27_aunroll_x_in_c0_eni3542_3_tpl_4_wraddr_q <= $unsigned(redist0_sync_together27_aunroll_x_in_c0_eni3542_3_tpl_4_rdcnt_q);
        end
    end

    // redist0_sync_together27_aunroll_x_in_c0_eni3542_3_tpl_4_mem(DUALMEM,167)
    assign redist0_sync_together27_aunroll_x_in_c0_eni3542_3_tpl_4_mem_ia = $unsigned(in_c0_eni3542_3_tpl);
    assign redist0_sync_together27_aunroll_x_in_c0_eni3542_3_tpl_4_mem_aa = redist0_sync_together27_aunroll_x_in_c0_eni3542_3_tpl_4_wraddr_q;
    assign redist0_sync_together27_aunroll_x_in_c0_eni3542_3_tpl_4_mem_ab = redist0_sync_together27_aunroll_x_in_c0_eni3542_3_tpl_4_rdcnt_q;
    assign redist0_sync_together27_aunroll_x_in_c0_eni3542_3_tpl_4_mem_reset0 = ~ (resetn);
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
    ) redist0_sync_together27_aunroll_x_in_c0_eni3542_3_tpl_4_mem_dmem (
        .clocken1(redist0_sync_together27_aunroll_x_in_c0_eni3542_3_tpl_4_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist0_sync_together27_aunroll_x_in_c0_eni3542_3_tpl_4_mem_reset0),
        .clock1(clock),
        .address_a(redist0_sync_together27_aunroll_x_in_c0_eni3542_3_tpl_4_mem_aa),
        .data_a(redist0_sync_together27_aunroll_x_in_c0_eni3542_3_tpl_4_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist0_sync_together27_aunroll_x_in_c0_eni3542_3_tpl_4_mem_ab),
        .q_b(redist0_sync_together27_aunroll_x_in_c0_eni3542_3_tpl_4_mem_iq),
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
    assign redist0_sync_together27_aunroll_x_in_c0_eni3542_3_tpl_4_mem_q = redist0_sync_together27_aunroll_x_in_c0_eni3542_3_tpl_4_mem_iq[31:0];

    // redist0_sync_together27_aunroll_x_in_c0_eni3542_3_tpl_4_outputreg0(DELAY,166)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_sync_together27_aunroll_x_in_c0_eni3542_3_tpl_4_outputreg0_q <= '0;
        end
        else
        begin
            redist0_sync_together27_aunroll_x_in_c0_eni3542_3_tpl_4_outputreg0_q <= $unsigned(redist0_sync_together27_aunroll_x_in_c0_eni3542_3_tpl_4_mem_q);
        end
    end

    // c_i32_224(CONSTANT,12)
    assign c_i32_224_q = $unsigned(32'b00000000000000000000000000000010);

    // i_add41_le_conv2d1x113(LOGICAL,19)@0
    assign i_add41_le_conv2d1x113_q = in_c0_eni3542_2_tpl | c_i32_224_q;

    // i_add41_le_conv2d1x113_vt_select_0_merged_bit_select(BITSELECT,157)@0
    assign i_add41_le_conv2d1x113_vt_select_0_merged_bit_select_b = i_add41_le_conv2d1x113_q[0:0];
    assign i_add41_le_conv2d1x113_vt_select_0_merged_bit_select_c = i_add41_le_conv2d1x113_q[31:2];

    // i_add41_le_conv2d1x113_vt_join(BITJOIN,21)@0
    assign i_add41_le_conv2d1x113_vt_join_q = {i_add41_le_conv2d1x113_vt_select_0_merged_bit_select_c, VCC_q, i_add41_le_conv2d1x113_vt_select_0_merged_bit_select_b};

    // i_mul43_le_conv2d1x114_bs2_merged_bit_select(BITSELECT,158)@0
    assign i_mul43_le_conv2d1x114_bs2_merged_bit_select_b = i_add41_le_conv2d1x113_vt_join_q[31:18];
    assign i_mul43_le_conv2d1x114_bs2_merged_bit_select_c = i_add41_le_conv2d1x113_vt_join_q[17:0];

    // i_mul17_le_conv2d1x12_bs1_merged_bit_select(BITSELECT,159)@0
    assign i_mul17_le_conv2d1x12_bs1_merged_bit_select_b = in_c0_eni3542_1_tpl[31:18];
    assign i_mul17_le_conv2d1x12_bs1_merged_bit_select_c = in_c0_eni3542_1_tpl[17:0];

    // i_mul43_le_conv2d1x114_ma3_cma(CHAINMULTADD,155)@0 + 3
    assign i_mul43_le_conv2d1x114_ma3_cma_reset = ~ (resetn);
    assign i_mul43_le_conv2d1x114_ma3_cma_ena0 = 1'b1;
    assign i_mul43_le_conv2d1x114_ma3_cma_ena1 = i_mul43_le_conv2d1x114_ma3_cma_ena0;
    assign i_mul43_le_conv2d1x114_ma3_cma_ena2 = i_mul43_le_conv2d1x114_ma3_cma_ena0;

    assign i_mul43_le_conv2d1x114_ma3_cma_a0 = i_mul17_le_conv2d1x12_bs1_merged_bit_select_b;
    assign i_mul43_le_conv2d1x114_ma3_cma_c0 = i_mul43_le_conv2d1x114_bs2_merged_bit_select_c;
    assign i_mul43_le_conv2d1x114_ma3_cma_a1 = i_mul43_le_conv2d1x114_bs2_merged_bit_select_b;
    assign i_mul43_le_conv2d1x114_ma3_cma_c1 = i_mul17_le_conv2d1x12_bs1_merged_bit_select_c;
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
    ) i_mul43_le_conv2d1x114_ma3_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul43_le_conv2d1x114_ma3_cma_ena2, i_mul43_le_conv2d1x114_ma3_cma_ena1, i_mul43_le_conv2d1x114_ma3_cma_ena0 }),
        .aclr({ i_mul43_le_conv2d1x114_ma3_cma_reset, i_mul43_le_conv2d1x114_ma3_cma_reset }),
        .ay(i_mul43_le_conv2d1x114_ma3_cma_a1),
        .by(i_mul43_le_conv2d1x114_ma3_cma_a0),
        .ax(i_mul43_le_conv2d1x114_ma3_cma_c1),
        .bx(i_mul43_le_conv2d1x114_ma3_cma_c0),
        .resulta(i_mul43_le_conv2d1x114_ma3_cma_s0),
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
    i_mul43_le_conv2d1x114_ma3_cma_delay ( .xin(i_mul43_le_conv2d1x114_ma3_cma_s0), .xout(i_mul43_le_conv2d1x114_ma3_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul43_le_conv2d1x114_ma3_cma_q = $unsigned(i_mul43_le_conv2d1x114_ma3_cma_qq[32:0]);

    // i_mul43_le_conv2d1x114_sums_align_1(BITSHIFT,144)@3
    assign i_mul43_le_conv2d1x114_sums_align_1_qint = { i_mul43_le_conv2d1x114_ma3_cma_q, 18'b000000000000000000 };
    assign i_mul43_le_conv2d1x114_sums_align_1_q = i_mul43_le_conv2d1x114_sums_align_1_qint[50:0];

    // i_mul43_le_conv2d1x114_im0_cma(CHAINMULTADD,151)@0 + 3
    assign i_mul43_le_conv2d1x114_im0_cma_reset = ~ (resetn);
    assign i_mul43_le_conv2d1x114_im0_cma_ena0 = 1'b1;
    assign i_mul43_le_conv2d1x114_im0_cma_ena1 = i_mul43_le_conv2d1x114_im0_cma_ena0;
    assign i_mul43_le_conv2d1x114_im0_cma_ena2 = i_mul43_le_conv2d1x114_im0_cma_ena0;

    assign i_mul43_le_conv2d1x114_im0_cma_a0 = i_mul17_le_conv2d1x12_bs1_merged_bit_select_b;
    assign i_mul43_le_conv2d1x114_im0_cma_c0 = i_mul43_le_conv2d1x114_bs2_merged_bit_select_b;
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
    ) i_mul43_le_conv2d1x114_im0_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul43_le_conv2d1x114_im0_cma_ena2, i_mul43_le_conv2d1x114_im0_cma_ena1, i_mul43_le_conv2d1x114_im0_cma_ena0 }),
        .aclr({ i_mul43_le_conv2d1x114_im0_cma_reset, i_mul43_le_conv2d1x114_im0_cma_reset }),
        .ay(i_mul43_le_conv2d1x114_im0_cma_a0),
        .ax(i_mul43_le_conv2d1x114_im0_cma_c0),
        .resulta(i_mul43_le_conv2d1x114_im0_cma_s0),
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
    i_mul43_le_conv2d1x114_im0_cma_delay ( .xin(i_mul43_le_conv2d1x114_im0_cma_s0), .xout(i_mul43_le_conv2d1x114_im0_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul43_le_conv2d1x114_im0_cma_q = $unsigned(i_mul43_le_conv2d1x114_im0_cma_qq[27:0]);

    // i_mul43_le_conv2d1x114_im8_cma(CHAINMULTADD,152)@0 + 3
    assign i_mul43_le_conv2d1x114_im8_cma_reset = ~ (resetn);
    assign i_mul43_le_conv2d1x114_im8_cma_ena0 = 1'b1;
    assign i_mul43_le_conv2d1x114_im8_cma_ena1 = i_mul43_le_conv2d1x114_im8_cma_ena0;
    assign i_mul43_le_conv2d1x114_im8_cma_ena2 = i_mul43_le_conv2d1x114_im8_cma_ena0;

    assign i_mul43_le_conv2d1x114_im8_cma_a0 = i_mul17_le_conv2d1x12_bs1_merged_bit_select_c;
    assign i_mul43_le_conv2d1x114_im8_cma_c0 = i_mul43_le_conv2d1x114_bs2_merged_bit_select_c;
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
    ) i_mul43_le_conv2d1x114_im8_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul43_le_conv2d1x114_im8_cma_ena2, i_mul43_le_conv2d1x114_im8_cma_ena1, i_mul43_le_conv2d1x114_im8_cma_ena0 }),
        .aclr({ i_mul43_le_conv2d1x114_im8_cma_reset, i_mul43_le_conv2d1x114_im8_cma_reset }),
        .ay(i_mul43_le_conv2d1x114_im8_cma_a0),
        .ax(i_mul43_le_conv2d1x114_im8_cma_c0),
        .resulta(i_mul43_le_conv2d1x114_im8_cma_s0),
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
    i_mul43_le_conv2d1x114_im8_cma_delay ( .xin(i_mul43_le_conv2d1x114_im8_cma_s0), .xout(i_mul43_le_conv2d1x114_im8_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul43_le_conv2d1x114_im8_cma_q = $unsigned(i_mul43_le_conv2d1x114_im8_cma_qq[35:0]);

    // i_mul43_le_conv2d1x114_sums_join_0(BITJOIN,143)@3
    assign i_mul43_le_conv2d1x114_sums_join_0_q = {i_mul43_le_conv2d1x114_im0_cma_q, i_mul43_le_conv2d1x114_im8_cma_q};

    // i_mul43_le_conv2d1x114_sums_result_add_0_0(ADD,146)@3
    assign i_mul43_le_conv2d1x114_sums_result_add_0_0_a = {1'b0, i_mul43_le_conv2d1x114_sums_join_0_q};
    assign i_mul43_le_conv2d1x114_sums_result_add_0_0_b = {14'b00000000000000, i_mul43_le_conv2d1x114_sums_align_1_q};
    assign i_mul43_le_conv2d1x114_sums_result_add_0_0_o = $unsigned(i_mul43_le_conv2d1x114_sums_result_add_0_0_a) + $unsigned(i_mul43_le_conv2d1x114_sums_result_add_0_0_b);
    assign i_mul43_le_conv2d1x114_sums_result_add_0_0_q = i_mul43_le_conv2d1x114_sums_result_add_0_0_o[64:0];

    // bgTrunc_i_mul43_le_conv2d1x114_sel_x(BITSELECT,63)@3
    assign bgTrunc_i_mul43_le_conv2d1x114_sel_x_in = i_mul43_le_conv2d1x114_sums_result_add_0_0_q[63:0];
    assign bgTrunc_i_mul43_le_conv2d1x114_sel_x_b = bgTrunc_i_mul43_le_conv2d1x114_sel_x_in[31:0];

    // redist2_bgTrunc_i_mul43_le_conv2d1x114_sel_x_b_1(DELAY,163)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_bgTrunc_i_mul43_le_conv2d1x114_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist2_bgTrunc_i_mul43_le_conv2d1x114_sel_x_b_1_q <= $unsigned(bgTrunc_i_mul43_le_conv2d1x114_sel_x_b);
        end
    end

    // i_add44_le_conv2d1x115(ADD,24)@4
    assign i_add44_le_conv2d1x115_a = {1'b0, redist2_bgTrunc_i_mul43_le_conv2d1x114_sel_x_b_1_q};
    assign i_add44_le_conv2d1x115_b = {1'b0, redist0_sync_together27_aunroll_x_in_c0_eni3542_3_tpl_4_outputreg0_q};
    assign i_add44_le_conv2d1x115_o = $unsigned(i_add44_le_conv2d1x115_a) + $unsigned(i_add44_le_conv2d1x115_b);
    assign i_add44_le_conv2d1x115_q = i_add44_le_conv2d1x115_o[32:0];

    // bgTrunc_i_add44_le_conv2d1x115_sel_x(BITSELECT,60)@4
    assign bgTrunc_i_add44_le_conv2d1x115_sel_x_b = i_add44_le_conv2d1x115_q[31:0];

    // i_idxprom45_le_conv2d1x116_sel_x(BITSELECT,86)@4
    assign i_idxprom45_le_conv2d1x116_sel_x_b = $unsigned({{32{bgTrunc_i_add44_le_conv2d1x115_sel_x_b[31]}}, bgTrunc_i_add44_le_conv2d1x115_sel_x_b[31:0]});

    // i_arrayidx46_le7_conv2d1x10_narrow_x(BITSELECT,80)@4
    assign i_arrayidx46_le7_conv2d1x10_narrow_x_b = i_idxprom45_le_conv2d1x116_sel_x_b[61:0];

    // i_arrayidx46_le7_conv2d1x10_shift_join_x(BITJOIN,81)@4
    assign i_arrayidx46_le7_conv2d1x10_shift_join_x_q = {i_arrayidx46_le7_conv2d1x10_narrow_x_b, i_arrayidx20_le5_conv2d1x16_vt_const_1_q};

    // valid_fanout_reg3(REG,92)@3 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg3_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg3_q <= $unsigned(redist1_sync_together27_aunroll_x_in_i_valid_3_q);
        end
    end

    // i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer8_conv2d1x117(BLACKBOX,48)@0
    // in in_i_dependence@4
    // in in_valid_in@4
    // out out_buffer_out@4
    // out out_valid_out@4
    conv2d1x1_i_llvm_fpga_sync_buffer_p1024f0000ut_im_sync_buffer8_0 thei_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer8_conv2d1x117 (
        .in_buffer_in(in_input_im),
        .in_i_dependence(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_buffer_out(i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer8_conv2d1x117_out_buffer_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer8_conv2d1x117_vt_select_63(BITSELECT,51)@4
    assign i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer8_conv2d1x117_vt_select_63_b = i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer8_conv2d1x117_out_buffer_out[63:10];

    // i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer6_conv2d1x15_vt_const_9(CONSTANT,41)
    assign i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer6_conv2d1x15_vt_const_9_q = $unsigned(10'b0000000000);

    // i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer8_conv2d1x117_vt_join(BITJOIN,50)@4
    assign i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer8_conv2d1x117_vt_join_q = {i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer8_conv2d1x117_vt_select_63_b, i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer6_conv2d1x15_vt_const_9_q};

    // i_arrayidx46_le7_conv2d1x10_add_x(ADD,78)@4
    assign i_arrayidx46_le7_conv2d1x10_add_x_a = {1'b0, i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer8_conv2d1x117_vt_join_q};
    assign i_arrayidx46_le7_conv2d1x10_add_x_b = {1'b0, i_arrayidx46_le7_conv2d1x10_shift_join_x_q};
    assign i_arrayidx46_le7_conv2d1x10_add_x_o = $unsigned(i_arrayidx46_le7_conv2d1x10_add_x_a) + $unsigned(i_arrayidx46_le7_conv2d1x10_add_x_b);
    assign i_arrayidx46_le7_conv2d1x10_add_x_q = i_arrayidx46_le7_conv2d1x10_add_x_o[64:0];

    // i_arrayidx46_le7_conv2d1x10_dupName_0_trunc_sel_x(BITSELECT,83)@4
    assign i_arrayidx46_le7_conv2d1x10_dupName_0_trunc_sel_x_b = i_arrayidx46_le7_conv2d1x10_add_x_q[63:0];

    // i_arrayidx46_le7_conv2d1x118_vt_select_63(BITSELECT,33)@4
    assign i_arrayidx46_le7_conv2d1x118_vt_select_63_b = i_arrayidx46_le7_conv2d1x10_dupName_0_trunc_sel_x_b[63:2];

    // i_arrayidx20_le5_conv2d1x16_vt_const_1(CONSTANT,25)
    assign i_arrayidx20_le5_conv2d1x16_vt_const_1_q = $unsigned(2'b00);

    // i_arrayidx46_le7_conv2d1x118_vt_join(BITJOIN,32)@4
    assign i_arrayidx46_le7_conv2d1x118_vt_join_q = {i_arrayidx46_le7_conv2d1x118_vt_select_63_b, i_arrayidx20_le5_conv2d1x16_vt_const_1_q};

    // c_i32_123(CONSTANT,11)
    assign c_i32_123_q = $unsigned(32'b00000000000000000000000000000001);

    // i_add28_le_conv2d1x17(LOGICAL,14)@0
    assign i_add28_le_conv2d1x17_q = in_c0_eni3542_2_tpl | c_i32_123_q;

    // i_add28_le_conv2d1x17_vt_select_31(BITSELECT,17)@0
    assign i_add28_le_conv2d1x17_vt_select_31_b = i_add28_le_conv2d1x17_q[31:1];

    // i_add28_le_conv2d1x17_vt_join(BITJOIN,16)@0
    assign i_add28_le_conv2d1x17_vt_join_q = {i_add28_le_conv2d1x17_vt_select_31_b, VCC_q};

    // i_mul30_le_conv2d1x18_bs2_merged_bit_select(BITSELECT,156)@0
    assign i_mul30_le_conv2d1x18_bs2_merged_bit_select_b = i_add28_le_conv2d1x17_vt_join_q[31:18];
    assign i_mul30_le_conv2d1x18_bs2_merged_bit_select_c = i_add28_le_conv2d1x17_vt_join_q[17:0];

    // i_mul30_le_conv2d1x18_ma3_cma(CHAINMULTADD,154)@0 + 3
    assign i_mul30_le_conv2d1x18_ma3_cma_reset = ~ (resetn);
    assign i_mul30_le_conv2d1x18_ma3_cma_ena0 = 1'b1;
    assign i_mul30_le_conv2d1x18_ma3_cma_ena1 = i_mul30_le_conv2d1x18_ma3_cma_ena0;
    assign i_mul30_le_conv2d1x18_ma3_cma_ena2 = i_mul30_le_conv2d1x18_ma3_cma_ena0;

    assign i_mul30_le_conv2d1x18_ma3_cma_a0 = i_mul17_le_conv2d1x12_bs1_merged_bit_select_b;
    assign i_mul30_le_conv2d1x18_ma3_cma_c0 = i_mul30_le_conv2d1x18_bs2_merged_bit_select_c;
    assign i_mul30_le_conv2d1x18_ma3_cma_a1 = i_mul30_le_conv2d1x18_bs2_merged_bit_select_b;
    assign i_mul30_le_conv2d1x18_ma3_cma_c1 = i_mul17_le_conv2d1x12_bs1_merged_bit_select_c;
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
    ) i_mul30_le_conv2d1x18_ma3_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul30_le_conv2d1x18_ma3_cma_ena2, i_mul30_le_conv2d1x18_ma3_cma_ena1, i_mul30_le_conv2d1x18_ma3_cma_ena0 }),
        .aclr({ i_mul30_le_conv2d1x18_ma3_cma_reset, i_mul30_le_conv2d1x18_ma3_cma_reset }),
        .ay(i_mul30_le_conv2d1x18_ma3_cma_a1),
        .by(i_mul30_le_conv2d1x18_ma3_cma_a0),
        .ax(i_mul30_le_conv2d1x18_ma3_cma_c1),
        .bx(i_mul30_le_conv2d1x18_ma3_cma_c0),
        .resulta(i_mul30_le_conv2d1x18_ma3_cma_s0),
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
    i_mul30_le_conv2d1x18_ma3_cma_delay ( .xin(i_mul30_le_conv2d1x18_ma3_cma_s0), .xout(i_mul30_le_conv2d1x18_ma3_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul30_le_conv2d1x18_ma3_cma_q = $unsigned(i_mul30_le_conv2d1x18_ma3_cma_qq[32:0]);

    // i_mul30_le_conv2d1x18_sums_align_1(BITSHIFT,129)@3
    assign i_mul30_le_conv2d1x18_sums_align_1_qint = { i_mul30_le_conv2d1x18_ma3_cma_q, 18'b000000000000000000 };
    assign i_mul30_le_conv2d1x18_sums_align_1_q = i_mul30_le_conv2d1x18_sums_align_1_qint[50:0];

    // i_mul30_le_conv2d1x18_im0_cma(CHAINMULTADD,149)@0 + 3
    assign i_mul30_le_conv2d1x18_im0_cma_reset = ~ (resetn);
    assign i_mul30_le_conv2d1x18_im0_cma_ena0 = 1'b1;
    assign i_mul30_le_conv2d1x18_im0_cma_ena1 = i_mul30_le_conv2d1x18_im0_cma_ena0;
    assign i_mul30_le_conv2d1x18_im0_cma_ena2 = i_mul30_le_conv2d1x18_im0_cma_ena0;

    assign i_mul30_le_conv2d1x18_im0_cma_a0 = i_mul17_le_conv2d1x12_bs1_merged_bit_select_b;
    assign i_mul30_le_conv2d1x18_im0_cma_c0 = i_mul30_le_conv2d1x18_bs2_merged_bit_select_b;
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
    ) i_mul30_le_conv2d1x18_im0_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul30_le_conv2d1x18_im0_cma_ena2, i_mul30_le_conv2d1x18_im0_cma_ena1, i_mul30_le_conv2d1x18_im0_cma_ena0 }),
        .aclr({ i_mul30_le_conv2d1x18_im0_cma_reset, i_mul30_le_conv2d1x18_im0_cma_reset }),
        .ay(i_mul30_le_conv2d1x18_im0_cma_a0),
        .ax(i_mul30_le_conv2d1x18_im0_cma_c0),
        .resulta(i_mul30_le_conv2d1x18_im0_cma_s0),
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
    i_mul30_le_conv2d1x18_im0_cma_delay ( .xin(i_mul30_le_conv2d1x18_im0_cma_s0), .xout(i_mul30_le_conv2d1x18_im0_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul30_le_conv2d1x18_im0_cma_q = $unsigned(i_mul30_le_conv2d1x18_im0_cma_qq[27:0]);

    // i_mul30_le_conv2d1x18_im8_cma(CHAINMULTADD,150)@0 + 3
    assign i_mul30_le_conv2d1x18_im8_cma_reset = ~ (resetn);
    assign i_mul30_le_conv2d1x18_im8_cma_ena0 = 1'b1;
    assign i_mul30_le_conv2d1x18_im8_cma_ena1 = i_mul30_le_conv2d1x18_im8_cma_ena0;
    assign i_mul30_le_conv2d1x18_im8_cma_ena2 = i_mul30_le_conv2d1x18_im8_cma_ena0;

    assign i_mul30_le_conv2d1x18_im8_cma_a0 = i_mul17_le_conv2d1x12_bs1_merged_bit_select_c;
    assign i_mul30_le_conv2d1x18_im8_cma_c0 = i_mul30_le_conv2d1x18_bs2_merged_bit_select_c;
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
    ) i_mul30_le_conv2d1x18_im8_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul30_le_conv2d1x18_im8_cma_ena2, i_mul30_le_conv2d1x18_im8_cma_ena1, i_mul30_le_conv2d1x18_im8_cma_ena0 }),
        .aclr({ i_mul30_le_conv2d1x18_im8_cma_reset, i_mul30_le_conv2d1x18_im8_cma_reset }),
        .ay(i_mul30_le_conv2d1x18_im8_cma_a0),
        .ax(i_mul30_le_conv2d1x18_im8_cma_c0),
        .resulta(i_mul30_le_conv2d1x18_im8_cma_s0),
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
    i_mul30_le_conv2d1x18_im8_cma_delay ( .xin(i_mul30_le_conv2d1x18_im8_cma_s0), .xout(i_mul30_le_conv2d1x18_im8_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul30_le_conv2d1x18_im8_cma_q = $unsigned(i_mul30_le_conv2d1x18_im8_cma_qq[35:0]);

    // i_mul30_le_conv2d1x18_sums_join_0(BITJOIN,128)@3
    assign i_mul30_le_conv2d1x18_sums_join_0_q = {i_mul30_le_conv2d1x18_im0_cma_q, i_mul30_le_conv2d1x18_im8_cma_q};

    // i_mul30_le_conv2d1x18_sums_result_add_0_0(ADD,131)@3
    assign i_mul30_le_conv2d1x18_sums_result_add_0_0_a = {1'b0, i_mul30_le_conv2d1x18_sums_join_0_q};
    assign i_mul30_le_conv2d1x18_sums_result_add_0_0_b = {14'b00000000000000, i_mul30_le_conv2d1x18_sums_align_1_q};
    assign i_mul30_le_conv2d1x18_sums_result_add_0_0_o = $unsigned(i_mul30_le_conv2d1x18_sums_result_add_0_0_a) + $unsigned(i_mul30_le_conv2d1x18_sums_result_add_0_0_b);
    assign i_mul30_le_conv2d1x18_sums_result_add_0_0_q = i_mul30_le_conv2d1x18_sums_result_add_0_0_o[64:0];

    // bgTrunc_i_mul30_le_conv2d1x18_sel_x(BITSELECT,62)@3
    assign bgTrunc_i_mul30_le_conv2d1x18_sel_x_in = i_mul30_le_conv2d1x18_sums_result_add_0_0_q[63:0];
    assign bgTrunc_i_mul30_le_conv2d1x18_sel_x_b = bgTrunc_i_mul30_le_conv2d1x18_sel_x_in[31:0];

    // redist3_bgTrunc_i_mul30_le_conv2d1x18_sel_x_b_1(DELAY,164)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_bgTrunc_i_mul30_le_conv2d1x18_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist3_bgTrunc_i_mul30_le_conv2d1x18_sel_x_b_1_q <= $unsigned(bgTrunc_i_mul30_le_conv2d1x18_sel_x_b);
        end
    end

    // i_add31_le_conv2d1x19(ADD,18)@4
    assign i_add31_le_conv2d1x19_a = {1'b0, redist3_bgTrunc_i_mul30_le_conv2d1x18_sel_x_b_1_q};
    assign i_add31_le_conv2d1x19_b = {1'b0, redist0_sync_together27_aunroll_x_in_c0_eni3542_3_tpl_4_outputreg0_q};
    assign i_add31_le_conv2d1x19_o = $unsigned(i_add31_le_conv2d1x19_a) + $unsigned(i_add31_le_conv2d1x19_b);
    assign i_add31_le_conv2d1x19_q = i_add31_le_conv2d1x19_o[32:0];

    // bgTrunc_i_add31_le_conv2d1x19_sel_x(BITSELECT,59)@4
    assign bgTrunc_i_add31_le_conv2d1x19_sel_x_b = i_add31_le_conv2d1x19_q[31:0];

    // i_idxprom32_le_conv2d1x110_sel_x(BITSELECT,85)@4
    assign i_idxprom32_le_conv2d1x110_sel_x_b = $unsigned({{32{bgTrunc_i_add31_le_conv2d1x19_sel_x_b[31]}}, bgTrunc_i_add31_le_conv2d1x19_sel_x_b[31:0]});

    // i_arrayidx33_le6_conv2d1x10_narrow_x(BITSELECT,74)@4
    assign i_arrayidx33_le6_conv2d1x10_narrow_x_b = i_idxprom32_le_conv2d1x110_sel_x_b[61:0];

    // i_arrayidx33_le6_conv2d1x10_shift_join_x(BITJOIN,75)@4
    assign i_arrayidx33_le6_conv2d1x10_shift_join_x_q = {i_arrayidx33_le6_conv2d1x10_narrow_x_b, i_arrayidx20_le5_conv2d1x16_vt_const_1_q};

    // valid_fanout_reg2(REG,91)@3 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg2_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg2_q <= $unsigned(redist1_sync_together27_aunroll_x_in_i_valid_3_q);
        end
    end

    // i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer7_conv2d1x111(BLACKBOX,44)@0
    // in in_i_dependence@4
    // in in_valid_in@4
    // out out_buffer_out@4
    // out out_valid_out@4
    conv2d1x1_i_llvm_fpga_sync_buffer_p1024f0000ut_im_sync_buffer7_0 thei_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer7_conv2d1x111 (
        .in_buffer_in(in_input_im),
        .in_i_dependence(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_buffer_out(i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer7_conv2d1x111_out_buffer_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer7_conv2d1x111_vt_select_63(BITSELECT,47)@4
    assign i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer7_conv2d1x111_vt_select_63_b = i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer7_conv2d1x111_out_buffer_out[63:10];

    // i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer7_conv2d1x111_vt_join(BITJOIN,46)@4
    assign i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer7_conv2d1x111_vt_join_q = {i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer7_conv2d1x111_vt_select_63_b, i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer6_conv2d1x15_vt_const_9_q};

    // i_arrayidx33_le6_conv2d1x10_add_x(ADD,72)@4
    assign i_arrayidx33_le6_conv2d1x10_add_x_a = {1'b0, i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer7_conv2d1x111_vt_join_q};
    assign i_arrayidx33_le6_conv2d1x10_add_x_b = {1'b0, i_arrayidx33_le6_conv2d1x10_shift_join_x_q};
    assign i_arrayidx33_le6_conv2d1x10_add_x_o = $unsigned(i_arrayidx33_le6_conv2d1x10_add_x_a) + $unsigned(i_arrayidx33_le6_conv2d1x10_add_x_b);
    assign i_arrayidx33_le6_conv2d1x10_add_x_q = i_arrayidx33_le6_conv2d1x10_add_x_o[64:0];

    // i_arrayidx33_le6_conv2d1x10_dupName_0_trunc_sel_x(BITSELECT,77)@4
    assign i_arrayidx33_le6_conv2d1x10_dupName_0_trunc_sel_x_b = i_arrayidx33_le6_conv2d1x10_add_x_q[63:0];

    // i_arrayidx33_le6_conv2d1x112_vt_select_63(BITSELECT,30)@4
    assign i_arrayidx33_le6_conv2d1x112_vt_select_63_b = i_arrayidx33_le6_conv2d1x10_dupName_0_trunc_sel_x_b[63:2];

    // i_arrayidx33_le6_conv2d1x112_vt_join(BITJOIN,29)@4
    assign i_arrayidx33_le6_conv2d1x112_vt_join_q = {i_arrayidx33_le6_conv2d1x112_vt_select_63_b, i_arrayidx20_le5_conv2d1x16_vt_const_1_q};

    // i_mul17_le_conv2d1x12_bs2_merged_bit_select(BITSELECT,160)@0
    assign i_mul17_le_conv2d1x12_bs2_merged_bit_select_b = in_c0_eni3542_2_tpl[31:18];
    assign i_mul17_le_conv2d1x12_bs2_merged_bit_select_c = in_c0_eni3542_2_tpl[17:0];

    // i_mul17_le_conv2d1x12_ma3_cma(CHAINMULTADD,153)@0 + 3
    assign i_mul17_le_conv2d1x12_ma3_cma_reset = ~ (resetn);
    assign i_mul17_le_conv2d1x12_ma3_cma_ena0 = 1'b1;
    assign i_mul17_le_conv2d1x12_ma3_cma_ena1 = i_mul17_le_conv2d1x12_ma3_cma_ena0;
    assign i_mul17_le_conv2d1x12_ma3_cma_ena2 = i_mul17_le_conv2d1x12_ma3_cma_ena0;

    assign i_mul17_le_conv2d1x12_ma3_cma_a0 = i_mul17_le_conv2d1x12_bs1_merged_bit_select_b;
    assign i_mul17_le_conv2d1x12_ma3_cma_c0 = i_mul17_le_conv2d1x12_bs2_merged_bit_select_c;
    assign i_mul17_le_conv2d1x12_ma3_cma_a1 = i_mul17_le_conv2d1x12_bs2_merged_bit_select_b;
    assign i_mul17_le_conv2d1x12_ma3_cma_c1 = i_mul17_le_conv2d1x12_bs1_merged_bit_select_c;
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
    ) i_mul17_le_conv2d1x12_ma3_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul17_le_conv2d1x12_ma3_cma_ena2, i_mul17_le_conv2d1x12_ma3_cma_ena1, i_mul17_le_conv2d1x12_ma3_cma_ena0 }),
        .aclr({ i_mul17_le_conv2d1x12_ma3_cma_reset, i_mul17_le_conv2d1x12_ma3_cma_reset }),
        .ay(i_mul17_le_conv2d1x12_ma3_cma_a1),
        .by(i_mul17_le_conv2d1x12_ma3_cma_a0),
        .ax(i_mul17_le_conv2d1x12_ma3_cma_c1),
        .bx(i_mul17_le_conv2d1x12_ma3_cma_c0),
        .resulta(i_mul17_le_conv2d1x12_ma3_cma_s0),
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
    i_mul17_le_conv2d1x12_ma3_cma_delay ( .xin(i_mul17_le_conv2d1x12_ma3_cma_s0), .xout(i_mul17_le_conv2d1x12_ma3_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul17_le_conv2d1x12_ma3_cma_q = $unsigned(i_mul17_le_conv2d1x12_ma3_cma_qq[32:0]);

    // i_mul17_le_conv2d1x12_sums_align_1(BITSHIFT,114)@3
    assign i_mul17_le_conv2d1x12_sums_align_1_qint = { i_mul17_le_conv2d1x12_ma3_cma_q, 18'b000000000000000000 };
    assign i_mul17_le_conv2d1x12_sums_align_1_q = i_mul17_le_conv2d1x12_sums_align_1_qint[50:0];

    // i_mul17_le_conv2d1x12_im0_cma(CHAINMULTADD,147)@0 + 3
    assign i_mul17_le_conv2d1x12_im0_cma_reset = ~ (resetn);
    assign i_mul17_le_conv2d1x12_im0_cma_ena0 = 1'b1;
    assign i_mul17_le_conv2d1x12_im0_cma_ena1 = i_mul17_le_conv2d1x12_im0_cma_ena0;
    assign i_mul17_le_conv2d1x12_im0_cma_ena2 = i_mul17_le_conv2d1x12_im0_cma_ena0;

    assign i_mul17_le_conv2d1x12_im0_cma_a0 = i_mul17_le_conv2d1x12_bs1_merged_bit_select_b;
    assign i_mul17_le_conv2d1x12_im0_cma_c0 = i_mul17_le_conv2d1x12_bs2_merged_bit_select_b;
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
    ) i_mul17_le_conv2d1x12_im0_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul17_le_conv2d1x12_im0_cma_ena2, i_mul17_le_conv2d1x12_im0_cma_ena1, i_mul17_le_conv2d1x12_im0_cma_ena0 }),
        .aclr({ i_mul17_le_conv2d1x12_im0_cma_reset, i_mul17_le_conv2d1x12_im0_cma_reset }),
        .ay(i_mul17_le_conv2d1x12_im0_cma_a0),
        .ax(i_mul17_le_conv2d1x12_im0_cma_c0),
        .resulta(i_mul17_le_conv2d1x12_im0_cma_s0),
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
    i_mul17_le_conv2d1x12_im0_cma_delay ( .xin(i_mul17_le_conv2d1x12_im0_cma_s0), .xout(i_mul17_le_conv2d1x12_im0_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul17_le_conv2d1x12_im0_cma_q = $unsigned(i_mul17_le_conv2d1x12_im0_cma_qq[27:0]);

    // i_mul17_le_conv2d1x12_im8_cma(CHAINMULTADD,148)@0 + 3
    assign i_mul17_le_conv2d1x12_im8_cma_reset = ~ (resetn);
    assign i_mul17_le_conv2d1x12_im8_cma_ena0 = 1'b1;
    assign i_mul17_le_conv2d1x12_im8_cma_ena1 = i_mul17_le_conv2d1x12_im8_cma_ena0;
    assign i_mul17_le_conv2d1x12_im8_cma_ena2 = i_mul17_le_conv2d1x12_im8_cma_ena0;

    assign i_mul17_le_conv2d1x12_im8_cma_a0 = i_mul17_le_conv2d1x12_bs1_merged_bit_select_c;
    assign i_mul17_le_conv2d1x12_im8_cma_c0 = i_mul17_le_conv2d1x12_bs2_merged_bit_select_c;
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
    ) i_mul17_le_conv2d1x12_im8_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul17_le_conv2d1x12_im8_cma_ena2, i_mul17_le_conv2d1x12_im8_cma_ena1, i_mul17_le_conv2d1x12_im8_cma_ena0 }),
        .aclr({ i_mul17_le_conv2d1x12_im8_cma_reset, i_mul17_le_conv2d1x12_im8_cma_reset }),
        .ay(i_mul17_le_conv2d1x12_im8_cma_a0),
        .ax(i_mul17_le_conv2d1x12_im8_cma_c0),
        .resulta(i_mul17_le_conv2d1x12_im8_cma_s0),
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
    i_mul17_le_conv2d1x12_im8_cma_delay ( .xin(i_mul17_le_conv2d1x12_im8_cma_s0), .xout(i_mul17_le_conv2d1x12_im8_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul17_le_conv2d1x12_im8_cma_q = $unsigned(i_mul17_le_conv2d1x12_im8_cma_qq[35:0]);

    // i_mul17_le_conv2d1x12_sums_join_0(BITJOIN,113)@3
    assign i_mul17_le_conv2d1x12_sums_join_0_q = {i_mul17_le_conv2d1x12_im0_cma_q, i_mul17_le_conv2d1x12_im8_cma_q};

    // i_mul17_le_conv2d1x12_sums_result_add_0_0(ADD,116)@3
    assign i_mul17_le_conv2d1x12_sums_result_add_0_0_a = {1'b0, i_mul17_le_conv2d1x12_sums_join_0_q};
    assign i_mul17_le_conv2d1x12_sums_result_add_0_0_b = {14'b00000000000000, i_mul17_le_conv2d1x12_sums_align_1_q};
    assign i_mul17_le_conv2d1x12_sums_result_add_0_0_o = $unsigned(i_mul17_le_conv2d1x12_sums_result_add_0_0_a) + $unsigned(i_mul17_le_conv2d1x12_sums_result_add_0_0_b);
    assign i_mul17_le_conv2d1x12_sums_result_add_0_0_q = i_mul17_le_conv2d1x12_sums_result_add_0_0_o[64:0];

    // bgTrunc_i_mul17_le_conv2d1x12_sel_x(BITSELECT,61)@3
    assign bgTrunc_i_mul17_le_conv2d1x12_sel_x_in = i_mul17_le_conv2d1x12_sums_result_add_0_0_q[63:0];
    assign bgTrunc_i_mul17_le_conv2d1x12_sel_x_b = bgTrunc_i_mul17_le_conv2d1x12_sel_x_in[31:0];

    // redist4_bgTrunc_i_mul17_le_conv2d1x12_sel_x_b_1(DELAY,165)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_bgTrunc_i_mul17_le_conv2d1x12_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist4_bgTrunc_i_mul17_le_conv2d1x12_sel_x_b_1_q <= $unsigned(bgTrunc_i_mul17_le_conv2d1x12_sel_x_b);
        end
    end

    // i_add18_le_conv2d1x13(ADD,13)@4
    assign i_add18_le_conv2d1x13_a = {1'b0, redist4_bgTrunc_i_mul17_le_conv2d1x12_sel_x_b_1_q};
    assign i_add18_le_conv2d1x13_b = {1'b0, redist0_sync_together27_aunroll_x_in_c0_eni3542_3_tpl_4_outputreg0_q};
    assign i_add18_le_conv2d1x13_o = $unsigned(i_add18_le_conv2d1x13_a) + $unsigned(i_add18_le_conv2d1x13_b);
    assign i_add18_le_conv2d1x13_q = i_add18_le_conv2d1x13_o[32:0];

    // bgTrunc_i_add18_le_conv2d1x13_sel_x(BITSELECT,58)@4
    assign bgTrunc_i_add18_le_conv2d1x13_sel_x_b = i_add18_le_conv2d1x13_q[31:0];

    // i_idxprom19_le_conv2d1x14_sel_x(BITSELECT,84)@4
    assign i_idxprom19_le_conv2d1x14_sel_x_b = $unsigned({{32{bgTrunc_i_add18_le_conv2d1x13_sel_x_b[31]}}, bgTrunc_i_add18_le_conv2d1x13_sel_x_b[31:0]});

    // i_arrayidx20_le5_conv2d1x10_narrow_x(BITSELECT,68)@4
    assign i_arrayidx20_le5_conv2d1x10_narrow_x_b = i_idxprom19_le_conv2d1x14_sel_x_b[61:0];

    // i_arrayidx20_le5_conv2d1x10_shift_join_x(BITJOIN,69)@4
    assign i_arrayidx20_le5_conv2d1x10_shift_join_x_q = {i_arrayidx20_le5_conv2d1x10_narrow_x_b, i_arrayidx20_le5_conv2d1x16_vt_const_1_q};

    // valid_fanout_reg1(REG,90)@3 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg1_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg1_q <= $unsigned(redist1_sync_together27_aunroll_x_in_i_valid_3_q);
        end
    end

    // i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer6_conv2d1x15(BLACKBOX,40)@0
    // in in_i_dependence@4
    // in in_valid_in@4
    // out out_buffer_out@4
    // out out_valid_out@4
    conv2d1x1_i_llvm_fpga_sync_buffer_p1024f0000ut_im_sync_buffer6_0 thei_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer6_conv2d1x15 (
        .in_buffer_in(in_input_im),
        .in_i_dependence(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_buffer_out(i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer6_conv2d1x15_out_buffer_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer6_conv2d1x15_vt_select_63(BITSELECT,43)@4
    assign i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer6_conv2d1x15_vt_select_63_b = i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer6_conv2d1x15_out_buffer_out[63:10];

    // i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer6_conv2d1x15_vt_join(BITJOIN,42)@4
    assign i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer6_conv2d1x15_vt_join_q = {i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer6_conv2d1x15_vt_select_63_b, i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer6_conv2d1x15_vt_const_9_q};

    // i_arrayidx20_le5_conv2d1x10_add_x(ADD,66)@4
    assign i_arrayidx20_le5_conv2d1x10_add_x_a = {1'b0, i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer6_conv2d1x15_vt_join_q};
    assign i_arrayidx20_le5_conv2d1x10_add_x_b = {1'b0, i_arrayidx20_le5_conv2d1x10_shift_join_x_q};
    assign i_arrayidx20_le5_conv2d1x10_add_x_o = $unsigned(i_arrayidx20_le5_conv2d1x10_add_x_a) + $unsigned(i_arrayidx20_le5_conv2d1x10_add_x_b);
    assign i_arrayidx20_le5_conv2d1x10_add_x_q = i_arrayidx20_le5_conv2d1x10_add_x_o[64:0];

    // i_arrayidx20_le5_conv2d1x10_dupName_0_trunc_sel_x(BITSELECT,71)@4
    assign i_arrayidx20_le5_conv2d1x10_dupName_0_trunc_sel_x_b = i_arrayidx20_le5_conv2d1x10_add_x_q[63:0];

    // i_arrayidx20_le5_conv2d1x16_vt_select_63(BITSELECT,27)@4
    assign i_arrayidx20_le5_conv2d1x16_vt_select_63_b = i_arrayidx20_le5_conv2d1x10_dupName_0_trunc_sel_x_b[63:2];

    // i_arrayidx20_le5_conv2d1x16_vt_join(BITJOIN,26)@4
    assign i_arrayidx20_le5_conv2d1x16_vt_join_q = {i_arrayidx20_le5_conv2d1x16_vt_select_63_b, i_arrayidx20_le5_conv2d1x16_vt_const_1_q};

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // sync_out_aunroll_x(GPOUT,87)@4
    assign out_c0_exi3549_0_tpl = GND_q;
    assign out_c0_exi3549_1_tpl = i_arrayidx20_le5_conv2d1x16_vt_join_q;
    assign out_c0_exi3549_2_tpl = i_arrayidx33_le6_conv2d1x112_vt_join_q;
    assign out_c0_exi3549_3_tpl = i_arrayidx46_le7_conv2d1x118_vt_join_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_conv2d1x15 = GND_q;

endmodule
