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

// SystemVerilog created from mmul_i_sfc_logic_s_c0_in_entry_s_c0_enter_mmul0
// SystemVerilog created on Sat May  6 18:14:24 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module mmul_i_sfc_logic_s_c0_in_entry_s_c0_enter_mmul0 (
    input wire [31:0] in_N,
    output wire [0:0] out_c0_exi9_0_tpl,
    output wire [31:0] out_c0_exi9_1_tpl,
    output wire [31:0] out_c0_exi9_2_tpl,
    output wire [0:0] out_c0_exi9_3_tpl,
    output wire [31:0] out_c0_exi9_4_tpl,
    output wire [31:0] out_c0_exi9_5_tpl,
    output wire [31:0] out_c0_exi9_6_tpl,
    output wire [63:0] out_c0_exi9_7_tpl,
    output wire [63:0] out_c0_exi9_8_tpl,
    output wire [63:0] out_c0_exi9_9_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_mmul0,
    input wire [0:0] in_c0_eni4_0_tpl,
    input wire [31:0] in_c0_eni4_1_tpl,
    input wire [31:0] in_c0_eni4_2_tpl,
    input wire [31:0] in_c0_eni4_3_tpl,
    input wire [31:0] in_c0_eni4_4_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [63:0] c_Awrk_q;
    wire [63:0] c_Bwrk_q;
    wire [32:0] i_add18_mmul14_a;
    wire [32:0] i_add18_mmul14_b;
    logic [32:0] i_add18_mmul14_o;
    wire [32:0] i_add18_mmul14_q;
    wire [32:0] i_add_mmul12_a;
    wire [32:0] i_add_mmul12_b;
    logic [32:0] i_add_mmul12_o;
    wire [32:0] i_add_mmul12_q;
    wire [1:0] i_arrayidx201_mmul16_vt_const_1_q;
    wire [63:0] i_arrayidx201_mmul16_vt_join_q;
    wire [61:0] i_arrayidx201_mmul16_vt_select_63_b;
    wire [63:0] i_arrayidx292_mmul17_vt_join_q;
    wire [61:0] i_arrayidx292_mmul17_vt_select_63_b;
    wire [6:0] i_arrayidx373_mmul19_vt_const_6_q;
    wire [63:0] i_arrayidx373_mmul19_vt_join_q;
    wire [56:0] i_arrayidx373_mmul19_vt_select_63_b;
    wire [0:0] i_cmp62_mmul6_q;
    wire [4:0] i_div_mmul3_vt_const_31_q;
    wire [31:0] i_div_mmul3_vt_join_q;
    wire [26:0] i_div_mmul3_vt_select_26_b;
    wire [63:0] i_idxprom36_mmul18_vt_join_q;
    wire [58:0] i_idxprom36_mmul18_vt_select_63_b;
    wire [31:0] i_llvm_fpga_sync_buffer_i32_n_sync_buffer1_mmul4_out_buffer_out;
    wire [31:0] i_llvm_fpga_sync_buffer_i32_n_sync_buffer2_mmul10_out_buffer_out;
    wire [31:0] i_llvm_fpga_sync_buffer_i32_n_sync_buffer_mmul2_out_buffer_out;
    wire [63:0] i_memcoalesce_bitcast_mmul_fpgaunique_32_mmul20_vt_join_q;
    wire [56:0] i_memcoalesce_bitcast_mmul_fpgaunique_32_mmul20_vt_select_63_b;
    wire [31:0] i_mul11_mmul9_vt_join_q;
    wire [26:0] i_mul11_mmul9_vt_select_31_b;
    wire [31:0] i_mul12_mmul8_vt_join_q;
    wire [26:0] i_mul12_mmul8_vt_select_31_b;
    wire [31:0] i_mul13_mmul5_vt_join_q;
    wire [26:0] i_mul13_mmul5_vt_select_31_b;
    wire [31:0] i_mul17_mmul13_vt_join_q;
    wire [26:0] i_mul17_mmul13_vt_select_31_b;
    wire [31:0] bgTrunc_i_add18_mmul14_sel_x_b;
    wire [31:0] bgTrunc_i_add_mmul12_sel_x_b;
    wire [63:0] bgTrunc_i_mul11_mmul9_sel_x_in;
    wire [31:0] bgTrunc_i_mul11_mmul9_sel_x_b;
    wire [63:0] bgTrunc_i_mul15_mmul11_sel_x_in;
    wire [31:0] bgTrunc_i_mul15_mmul11_sel_x_b;
    wire [31:0] c_i32_026_recast_x_q;
    wire [14:0] i_arrayidx201_mmul0_add_x_a;
    wire [14:0] i_arrayidx201_mmul0_add_x_b;
    logic [14:0] i_arrayidx201_mmul0_add_x_o;
    wire [14:0] i_arrayidx201_mmul0_add_x_q;
    wire [63:0] i_arrayidx201_mmul0_append_upper_bits_x_q;
    wire [11:0] i_arrayidx201_mmul0_narrow_x_b;
    wire [13:0] i_arrayidx201_mmul0_shift_join_x_q;
    wire [13:0] i_arrayidx201_mmul0_dupName_0_trunc_sel_x_b;
    wire [13:0] i_arrayidx201_mmul0_dupName_2_trunc_sel_x_b;
    wire [14:0] i_arrayidx292_mmul0_add_x_a;
    wire [14:0] i_arrayidx292_mmul0_add_x_b;
    logic [14:0] i_arrayidx292_mmul0_add_x_o;
    wire [14:0] i_arrayidx292_mmul0_add_x_q;
    wire [63:0] i_arrayidx292_mmul0_append_upper_bits_x_q;
    wire [13:0] i_arrayidx292_mmul0_dupName_2_trunc_sel_x_b;
    wire [14:0] i_arrayidx373_mmul0_add_x_a;
    wire [14:0] i_arrayidx373_mmul0_add_x_b;
    logic [14:0] i_arrayidx373_mmul0_add_x_o;
    wire [14:0] i_arrayidx373_mmul0_add_x_q;
    wire [63:0] i_arrayidx373_mmul0_append_upper_bits_x_q;
    wire [11:0] i_arrayidx373_mmul0_narrow_x_b;
    wire [13:0] i_arrayidx373_mmul0_shift_join_x_q;
    wire [13:0] i_arrayidx373_mmul0_dupName_0_trunc_sel_x_b;
    wire [13:0] i_arrayidx373_mmul0_dupName_2_trunc_sel_x_b;
    wire [63:0] i_idxprom19_mmul15_sel_x_b;
    wire [63:0] i_idxprom36_mmul18_sel_x_b;
    (* dont_merge *) reg [0:0] valid_fanout_reg0_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg1_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg2_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg3_q;
    wire [63:0] i_mul11_mmul9_sums_join_0_q;
    wire [50:0] i_mul11_mmul9_sums_align_1_q;
    wire [50:0] i_mul11_mmul9_sums_align_1_qint;
    wire [64:0] i_mul11_mmul9_sums_result_add_0_0_a;
    wire [64:0] i_mul11_mmul9_sums_result_add_0_0_b;
    logic [64:0] i_mul11_mmul9_sums_result_add_0_0_o;
    wire [64:0] i_mul11_mmul9_sums_result_add_0_0_q;
    wire [13:0] i_mul15_mmul11_bs1_b;
    wire [17:0] i_mul15_mmul11_bs4_in;
    wire [17:0] i_mul15_mmul11_bs4_b;
    wire [63:0] i_mul15_mmul11_sums_join_0_q;
    wire [50:0] i_mul15_mmul11_sums_align_1_q;
    wire [50:0] i_mul15_mmul11_sums_align_1_qint;
    wire [64:0] i_mul15_mmul11_sums_result_add_0_0_a;
    wire [64:0] i_mul15_mmul11_sums_result_add_0_0_b;
    logic [64:0] i_mul15_mmul11_sums_result_add_0_0_o;
    wire [64:0] i_mul15_mmul11_sums_result_add_0_0_q;
    wire [30:0] rightShiftStage0Idx1Rng1_uid166_i_div_mmul0_shift_x_b;
    wire [31:0] rightShiftStage0Idx1_uid168_i_div_mmul0_shift_x_q;
    wire [0:0] rightShiftStage0_uid170_i_div_mmul0_shift_x_s;
    reg [31:0] rightShiftStage0_uid170_i_div_mmul0_shift_x_q;
    wire [27:0] rightShiftStage1Idx1Rng4_uid171_i_div_mmul0_shift_x_b;
    wire [3:0] rightShiftStage1Idx1Pad4_uid172_i_div_mmul0_shift_x_q;
    wire [31:0] rightShiftStage1Idx1_uid173_i_div_mmul0_shift_x_q;
    wire [0:0] rightShiftStage1_uid175_i_div_mmul0_shift_x_s;
    reg [31:0] rightShiftStage1_uid175_i_div_mmul0_shift_x_q;
    wire [30:0] leftShiftStage0Idx1Rng1_uid180_i_mul12_mmul0_shift_x_in;
    wire [30:0] leftShiftStage0Idx1Rng1_uid180_i_mul12_mmul0_shift_x_b;
    wire [31:0] leftShiftStage0Idx1_uid181_i_mul12_mmul0_shift_x_q;
    wire [0:0] leftShiftStage0_uid183_i_mul12_mmul0_shift_x_s;
    reg [31:0] leftShiftStage0_uid183_i_mul12_mmul0_shift_x_q;
    wire [27:0] leftShiftStage1Idx1Rng4_uid185_i_mul12_mmul0_shift_x_in;
    wire [27:0] leftShiftStage1Idx1Rng4_uid185_i_mul12_mmul0_shift_x_b;
    wire [31:0] leftShiftStage1Idx1_uid186_i_mul12_mmul0_shift_x_q;
    wire [0:0] leftShiftStage1_uid188_i_mul12_mmul0_shift_x_s;
    reg [31:0] leftShiftStage1_uid188_i_mul12_mmul0_shift_x_q;
    wire [30:0] leftShiftStage0Idx1Rng1_uid193_i_mul13_mmul0_shift_x_in;
    wire [30:0] leftShiftStage0Idx1Rng1_uid193_i_mul13_mmul0_shift_x_b;
    wire [31:0] leftShiftStage0Idx1_uid194_i_mul13_mmul0_shift_x_q;
    wire [0:0] leftShiftStage0_uid196_i_mul13_mmul0_shift_x_s;
    reg [31:0] leftShiftStage0_uid196_i_mul13_mmul0_shift_x_q;
    wire [27:0] leftShiftStage1Idx1Rng4_uid198_i_mul13_mmul0_shift_x_in;
    wire [27:0] leftShiftStage1Idx1Rng4_uid198_i_mul13_mmul0_shift_x_b;
    wire [31:0] leftShiftStage1Idx1_uid199_i_mul13_mmul0_shift_x_q;
    wire [0:0] leftShiftStage1_uid201_i_mul13_mmul0_shift_x_s;
    reg [31:0] leftShiftStage1_uid201_i_mul13_mmul0_shift_x_q;
    wire [30:0] leftShiftStage0Idx1Rng1_uid206_i_mul17_mmul0_shift_x_in;
    wire [30:0] leftShiftStage0Idx1Rng1_uid206_i_mul17_mmul0_shift_x_b;
    wire [31:0] leftShiftStage0Idx1_uid207_i_mul17_mmul0_shift_x_q;
    wire [0:0] leftShiftStage0_uid209_i_mul17_mmul0_shift_x_s;
    reg [31:0] leftShiftStage0_uid209_i_mul17_mmul0_shift_x_q;
    wire [27:0] leftShiftStage1Idx1Rng4_uid211_i_mul17_mmul0_shift_x_in;
    wire [27:0] leftShiftStage1Idx1Rng4_uid211_i_mul17_mmul0_shift_x_b;
    wire [31:0] leftShiftStage1Idx1_uid212_i_mul17_mmul0_shift_x_q;
    wire [0:0] leftShiftStage1_uid214_i_mul17_mmul0_shift_x_s;
    reg [31:0] leftShiftStage1_uid214_i_mul17_mmul0_shift_x_q;
    wire i_mul11_mmul9_im0_cma_reset;
    wire [13:0] i_mul11_mmul9_im0_cma_a0;
    wire [13:0] i_mul11_mmul9_im0_cma_c0;
    wire [27:0] i_mul11_mmul9_im0_cma_s0;
    wire [27:0] i_mul11_mmul9_im0_cma_qq;
    wire [27:0] i_mul11_mmul9_im0_cma_q;
    wire i_mul11_mmul9_im0_cma_ena0;
    wire i_mul11_mmul9_im0_cma_ena1;
    wire i_mul11_mmul9_im0_cma_ena2;
    wire i_mul11_mmul9_im8_cma_reset;
    wire [17:0] i_mul11_mmul9_im8_cma_a0;
    wire [17:0] i_mul11_mmul9_im8_cma_c0;
    wire [35:0] i_mul11_mmul9_im8_cma_s0;
    wire [35:0] i_mul11_mmul9_im8_cma_qq;
    wire [35:0] i_mul11_mmul9_im8_cma_q;
    wire i_mul11_mmul9_im8_cma_ena0;
    wire i_mul11_mmul9_im8_cma_ena1;
    wire i_mul11_mmul9_im8_cma_ena2;
    wire i_mul15_mmul11_im0_cma_reset;
    wire [13:0] i_mul15_mmul11_im0_cma_a0;
    wire [13:0] i_mul15_mmul11_im0_cma_c0;
    wire [27:0] i_mul15_mmul11_im0_cma_s0;
    wire [27:0] i_mul15_mmul11_im0_cma_qq;
    wire [27:0] i_mul15_mmul11_im0_cma_q;
    wire i_mul15_mmul11_im0_cma_ena0;
    wire i_mul15_mmul11_im0_cma_ena1;
    wire i_mul15_mmul11_im0_cma_ena2;
    wire i_mul15_mmul11_im8_cma_reset;
    wire [17:0] i_mul15_mmul11_im8_cma_a0;
    wire [17:0] i_mul15_mmul11_im8_cma_c0;
    wire [35:0] i_mul15_mmul11_im8_cma_s0;
    wire [35:0] i_mul15_mmul11_im8_cma_qq;
    wire [35:0] i_mul15_mmul11_im8_cma_q;
    wire i_mul15_mmul11_im8_cma_ena0;
    wire i_mul15_mmul11_im8_cma_ena1;
    wire i_mul15_mmul11_im8_cma_ena2;
    wire i_mul11_mmul9_ma3_cma_reset;
    wire [13:0] i_mul11_mmul9_ma3_cma_a0;
    wire [17:0] i_mul11_mmul9_ma3_cma_c0;
    wire [13:0] i_mul11_mmul9_ma3_cma_a1;
    wire [17:0] i_mul11_mmul9_ma3_cma_c1;
    wire [32:0] i_mul11_mmul9_ma3_cma_s0;
    wire [32:0] i_mul11_mmul9_ma3_cma_qq;
    wire [32:0] i_mul11_mmul9_ma3_cma_q;
    wire i_mul11_mmul9_ma3_cma_ena0;
    wire i_mul11_mmul9_ma3_cma_ena1;
    wire i_mul11_mmul9_ma3_cma_ena2;
    wire i_mul15_mmul11_ma3_cma_reset;
    wire [13:0] i_mul15_mmul11_ma3_cma_a0;
    wire [17:0] i_mul15_mmul11_ma3_cma_c0;
    wire [13:0] i_mul15_mmul11_ma3_cma_a1;
    wire [17:0] i_mul15_mmul11_ma3_cma_c1;
    wire [32:0] i_mul15_mmul11_ma3_cma_s0;
    wire [32:0] i_mul15_mmul11_ma3_cma_qq;
    wire [32:0] i_mul15_mmul11_ma3_cma_q;
    wire i_mul15_mmul11_ma3_cma_ena0;
    wire i_mul15_mmul11_ma3_cma_ena1;
    wire i_mul15_mmul11_ma3_cma_ena2;
    wire [49:0] i_arrayidx201_mmul0_upper_bits_x_merged_bit_select_b;
    wire [13:0] i_arrayidx201_mmul0_upper_bits_x_merged_bit_select_c;
    wire [49:0] i_arrayidx292_mmul0_upper_bits_x_merged_bit_select_b;
    wire [13:0] i_arrayidx292_mmul0_upper_bits_x_merged_bit_select_c;
    wire [13:0] i_mul15_mmul11_bs2_merged_bit_select_b;
    wire [17:0] i_mul15_mmul11_bs2_merged_bit_select_c;
    wire [13:0] i_mul11_mmul9_bs1_merged_bit_select_b;
    wire [17:0] i_mul11_mmul9_bs1_merged_bit_select_c;
    wire [13:0] i_mul11_mmul9_bs2_merged_bit_select_b;
    wire [17:0] i_mul11_mmul9_bs2_merged_bit_select_c;
    reg [31:0] redist0_sync_together29_aunroll_x_in_c0_eni4_2_tpl_2_q;
    reg [31:0] redist0_sync_together29_aunroll_x_in_c0_eni4_2_tpl_2_delay_0;
    reg [31:0] redist1_sync_together29_aunroll_x_in_c0_eni4_3_tpl_1_q;
    reg [31:0] redist2_sync_together29_aunroll_x_in_c0_eni4_4_tpl_1_q;
    reg [0:0] redist4_sync_together29_aunroll_x_in_i_valid_1_q;
    reg [0:0] redist5_sync_together29_aunroll_x_in_i_valid_4_q;
    reg [0:0] redist5_sync_together29_aunroll_x_in_i_valid_4_delay_0;
    reg [0:0] redist5_sync_together29_aunroll_x_in_i_valid_4_delay_1;
    reg [11:0] redist6_i_arrayidx373_mmul0_narrow_x_b_4_q;
    reg [11:0] redist6_i_arrayidx373_mmul0_narrow_x_b_4_delay_0;
    reg [11:0] redist6_i_arrayidx373_mmul0_narrow_x_b_4_delay_1;
    reg [11:0] redist7_i_arrayidx201_mmul0_narrow_x_b_4_q;
    reg [11:0] redist7_i_arrayidx201_mmul0_narrow_x_b_4_delay_0;
    reg [11:0] redist7_i_arrayidx201_mmul0_narrow_x_b_4_delay_1;
    reg [31:0] redist8_bgTrunc_i_mul15_mmul11_sel_x_b_1_q;
    reg [31:0] redist3_sync_together29_aunroll_x_in_c0_eni4_4_tpl_5_outputreg0_q;
    wire redist3_sync_together29_aunroll_x_in_c0_eni4_4_tpl_5_mem_reset0;
    wire [31:0] redist3_sync_together29_aunroll_x_in_c0_eni4_4_tpl_5_mem_ia;
    wire [0:0] redist3_sync_together29_aunroll_x_in_c0_eni4_4_tpl_5_mem_aa;
    wire [0:0] redist3_sync_together29_aunroll_x_in_c0_eni4_4_tpl_5_mem_ab;
    wire [31:0] redist3_sync_together29_aunroll_x_in_c0_eni4_4_tpl_5_mem_iq;
    wire [31:0] redist3_sync_together29_aunroll_x_in_c0_eni4_4_tpl_5_mem_q;
    wire [0:0] redist3_sync_together29_aunroll_x_in_c0_eni4_4_tpl_5_rdcnt_q;
    (* preserve *) reg [0:0] redist3_sync_together29_aunroll_x_in_c0_eni4_4_tpl_5_rdcnt_i;
    reg [0:0] redist3_sync_together29_aunroll_x_in_c0_eni4_4_tpl_5_wraddr_q;
    (* dont_merge *) reg [0:0] redist3_sync_together29_aunroll_x_in_c0_eni4_4_tpl_5_cmpReg_q;
    wire [0:0] redist3_sync_together29_aunroll_x_in_c0_eni4_4_tpl_5_notEnable_q;
    wire [0:0] redist3_sync_together29_aunroll_x_in_c0_eni4_4_tpl_5_nor_q;
    (* dont_merge *) reg [0:0] redist3_sync_together29_aunroll_x_in_c0_eni4_4_tpl_5_sticky_ena_q;
    wire [0:0] redist3_sync_together29_aunroll_x_in_c0_eni4_4_tpl_5_enaAnd_q;
    reg [11:0] redist6_i_arrayidx373_mmul0_narrow_x_b_4_outputreg0_q;
    reg [11:0] redist7_i_arrayidx201_mmul0_narrow_x_b_4_outputreg0_q;
    wire redist9_i_mul13_mmul5_vt_join_q_3_mem_reset0;
    wire [31:0] redist9_i_mul13_mmul5_vt_join_q_3_mem_ia;
    wire [0:0] redist9_i_mul13_mmul5_vt_join_q_3_mem_aa;
    wire [0:0] redist9_i_mul13_mmul5_vt_join_q_3_mem_ab;
    wire [31:0] redist9_i_mul13_mmul5_vt_join_q_3_mem_iq;
    wire [31:0] redist9_i_mul13_mmul5_vt_join_q_3_mem_q;
    wire [0:0] redist9_i_mul13_mmul5_vt_join_q_3_rdcnt_q;
    (* preserve *) reg [0:0] redist9_i_mul13_mmul5_vt_join_q_3_rdcnt_i;
    reg [0:0] redist9_i_mul13_mmul5_vt_join_q_3_wraddr_q;
    (* dont_merge *) reg [0:0] redist9_i_mul13_mmul5_vt_join_q_3_cmpReg_q;
    wire [0:0] redist9_i_mul13_mmul5_vt_join_q_3_notEnable_q;
    wire [0:0] redist9_i_mul13_mmul5_vt_join_q_3_nor_q;
    (* dont_merge *) reg [0:0] redist9_i_mul13_mmul5_vt_join_q_3_sticky_ena_q;
    wire [0:0] redist9_i_mul13_mmul5_vt_join_q_3_enaAnd_q;
    wire redist10_i_mul12_mmul8_vt_select_31_b_5_mem_reset0;
    wire [26:0] redist10_i_mul12_mmul8_vt_select_31_b_5_mem_ia;
    wire [1:0] redist10_i_mul12_mmul8_vt_select_31_b_5_mem_aa;
    wire [1:0] redist10_i_mul12_mmul8_vt_select_31_b_5_mem_ab;
    wire [26:0] redist10_i_mul12_mmul8_vt_select_31_b_5_mem_iq;
    wire [26:0] redist10_i_mul12_mmul8_vt_select_31_b_5_mem_q;
    wire [1:0] redist10_i_mul12_mmul8_vt_select_31_b_5_rdcnt_q;
    (* preserve *) reg [1:0] redist10_i_mul12_mmul8_vt_select_31_b_5_rdcnt_i;
    reg [1:0] redist10_i_mul12_mmul8_vt_select_31_b_5_wraddr_q;
    wire [2:0] redist10_i_mul12_mmul8_vt_select_31_b_5_mem_last_q;
    wire [2:0] redist10_i_mul12_mmul8_vt_select_31_b_5_cmp_b;
    wire [0:0] redist10_i_mul12_mmul8_vt_select_31_b_5_cmp_q;
    (* dont_merge *) reg [0:0] redist10_i_mul12_mmul8_vt_select_31_b_5_cmpReg_q;
    wire [0:0] redist10_i_mul12_mmul8_vt_select_31_b_5_notEnable_q;
    wire [0:0] redist10_i_mul12_mmul8_vt_select_31_b_5_nor_q;
    (* dont_merge *) reg [0:0] redist10_i_mul12_mmul8_vt_select_31_b_5_sticky_ena_q;
    wire [0:0] redist10_i_mul12_mmul8_vt_select_31_b_5_enaAnd_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist4_sync_together29_aunroll_x_in_i_valid_1(DELAY,230)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_sync_together29_aunroll_x_in_i_valid_1_q <= '0;
        end
        else
        begin
            redist4_sync_together29_aunroll_x_in_i_valid_1_q <= $unsigned(in_i_valid);
        end
    end

    // redist5_sync_together29_aunroll_x_in_i_valid_4(DELAY,231)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_sync_together29_aunroll_x_in_i_valid_4_delay_0 <= '0;
            redist5_sync_together29_aunroll_x_in_i_valid_4_delay_1 <= '0;
            redist5_sync_together29_aunroll_x_in_i_valid_4_q <= '0;
        end
        else
        begin
            redist5_sync_together29_aunroll_x_in_i_valid_4_delay_0 <= $unsigned(redist4_sync_together29_aunroll_x_in_i_valid_1_q);
            redist5_sync_together29_aunroll_x_in_i_valid_4_delay_1 <= redist5_sync_together29_aunroll_x_in_i_valid_4_delay_0;
            redist5_sync_together29_aunroll_x_in_i_valid_4_q <= redist5_sync_together29_aunroll_x_in_i_valid_4_delay_1;
        end
    end

    // valid_fanout_reg0(REG,119)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist5_sync_together29_aunroll_x_in_i_valid_4_q);
        end
    end

    // c_Awrk(CONSTANT,6)
    assign c_Awrk_q = $unsigned(64'b0100000001000000000000000000000000000000000000000000000000000000);

    // i_arrayidx201_mmul0_upper_bits_x_merged_bit_select(BITSELECT,221)@6
    assign i_arrayidx201_mmul0_upper_bits_x_merged_bit_select_b = c_Awrk_q[63:14];
    assign i_arrayidx201_mmul0_upper_bits_x_merged_bit_select_c = c_Awrk_q[13:0];

    // leftShiftStage1Idx1Rng4_uid211_i_mul17_mmul0_shift_x(BITSELECT,210)@2
    assign leftShiftStage1Idx1Rng4_uid211_i_mul17_mmul0_shift_x_in = leftShiftStage0_uid209_i_mul17_mmul0_shift_x_q[27:0];
    assign leftShiftStage1Idx1Rng4_uid211_i_mul17_mmul0_shift_x_b = leftShiftStage1Idx1Rng4_uid211_i_mul17_mmul0_shift_x_in[27:0];

    // rightShiftStage1Idx1Pad4_uid172_i_div_mmul0_shift_x(CONSTANT,171)
    assign rightShiftStage1Idx1Pad4_uid172_i_div_mmul0_shift_x_q = $unsigned(4'b0000);

    // leftShiftStage1Idx1_uid212_i_mul17_mmul0_shift_x(BITJOIN,211)@2
    assign leftShiftStage1Idx1_uid212_i_mul17_mmul0_shift_x_q = {leftShiftStage1Idx1Rng4_uid211_i_mul17_mmul0_shift_x_b, rightShiftStage1Idx1Pad4_uid172_i_div_mmul0_shift_x_q};

    // leftShiftStage0Idx1Rng1_uid206_i_mul17_mmul0_shift_x(BITSELECT,205)@2
    assign leftShiftStage0Idx1Rng1_uid206_i_mul17_mmul0_shift_x_in = redist1_sync_together29_aunroll_x_in_c0_eni4_3_tpl_1_q[30:0];
    assign leftShiftStage0Idx1Rng1_uid206_i_mul17_mmul0_shift_x_b = leftShiftStage0Idx1Rng1_uid206_i_mul17_mmul0_shift_x_in[30:0];

    // leftShiftStage0Idx1_uid207_i_mul17_mmul0_shift_x(BITJOIN,206)@2
    assign leftShiftStage0Idx1_uid207_i_mul17_mmul0_shift_x_q = {leftShiftStage0Idx1Rng1_uid206_i_mul17_mmul0_shift_x_b, GND_q};

    // redist1_sync_together29_aunroll_x_in_c0_eni4_3_tpl_1(DELAY,227)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together29_aunroll_x_in_c0_eni4_3_tpl_1_q <= '0;
        end
        else
        begin
            redist1_sync_together29_aunroll_x_in_c0_eni4_3_tpl_1_q <= $unsigned(in_c0_eni4_3_tpl);
        end
    end

    // leftShiftStage0_uid209_i_mul17_mmul0_shift_x(MUX,208)@2
    assign leftShiftStage0_uid209_i_mul17_mmul0_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid209_i_mul17_mmul0_shift_x_s or redist1_sync_together29_aunroll_x_in_c0_eni4_3_tpl_1_q or leftShiftStage0Idx1_uid207_i_mul17_mmul0_shift_x_q)
    begin
        unique case (leftShiftStage0_uid209_i_mul17_mmul0_shift_x_s)
            1'b0 : leftShiftStage0_uid209_i_mul17_mmul0_shift_x_q = redist1_sync_together29_aunroll_x_in_c0_eni4_3_tpl_1_q;
            1'b1 : leftShiftStage0_uid209_i_mul17_mmul0_shift_x_q = leftShiftStage0Idx1_uid207_i_mul17_mmul0_shift_x_q;
            default : leftShiftStage0_uid209_i_mul17_mmul0_shift_x_q = 32'b0;
        endcase
    end

    // leftShiftStage1_uid214_i_mul17_mmul0_shift_x(MUX,213)@2
    assign leftShiftStage1_uid214_i_mul17_mmul0_shift_x_s = VCC_q;
    always @(leftShiftStage1_uid214_i_mul17_mmul0_shift_x_s or leftShiftStage0_uid209_i_mul17_mmul0_shift_x_q or leftShiftStage1Idx1_uid212_i_mul17_mmul0_shift_x_q)
    begin
        unique case (leftShiftStage1_uid214_i_mul17_mmul0_shift_x_s)
            1'b0 : leftShiftStage1_uid214_i_mul17_mmul0_shift_x_q = leftShiftStage0_uid209_i_mul17_mmul0_shift_x_q;
            1'b1 : leftShiftStage1_uid214_i_mul17_mmul0_shift_x_q = leftShiftStage1Idx1_uid212_i_mul17_mmul0_shift_x_q;
            default : leftShiftStage1_uid214_i_mul17_mmul0_shift_x_q = 32'b0;
        endcase
    end

    // i_mul17_mmul13_vt_select_31(BITSELECT,52)@2
    assign i_mul17_mmul13_vt_select_31_b = leftShiftStage1_uid214_i_mul17_mmul0_shift_x_q[31:5];

    // i_mul17_mmul13_vt_join(BITJOIN,51)@2
    assign i_mul17_mmul13_vt_join_q = {i_mul17_mmul13_vt_select_31_b, i_div_mmul3_vt_const_31_q};

    // i_idxprom36_mmul18_sel_x(BITSELECT,104)@2
    assign i_idxprom36_mmul18_sel_x_b = $unsigned({{32{i_mul17_mmul13_vt_join_q[31]}}, i_mul17_mmul13_vt_join_q[31:0]});

    // i_idxprom36_mmul18_vt_select_63(BITSELECT,32)@2
    assign i_idxprom36_mmul18_vt_select_63_b = $unsigned(i_idxprom36_mmul18_sel_x_b[63:5]);

    // i_div_mmul3_vt_const_31(CONSTANT,24)
    assign i_div_mmul3_vt_const_31_q = $unsigned(5'b00000);

    // i_idxprom36_mmul18_vt_join(BITJOIN,31)@2
    assign i_idxprom36_mmul18_vt_join_q = {i_idxprom36_mmul18_vt_select_63_b, i_div_mmul3_vt_const_31_q};

    // i_arrayidx373_mmul0_dupName_0_trunc_sel_x(BITSELECT,97)@2
    assign i_arrayidx373_mmul0_dupName_0_trunc_sel_x_b = i_idxprom36_mmul18_vt_join_q[13:0];

    // i_arrayidx373_mmul0_narrow_x(BITSELECT,90)@2
    assign i_arrayidx373_mmul0_narrow_x_b = i_arrayidx373_mmul0_dupName_0_trunc_sel_x_b[11:0];

    // redist6_i_arrayidx373_mmul0_narrow_x_b_4(DELAY,232)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_i_arrayidx373_mmul0_narrow_x_b_4_delay_0 <= '0;
            redist6_i_arrayidx373_mmul0_narrow_x_b_4_delay_1 <= '0;
            redist6_i_arrayidx373_mmul0_narrow_x_b_4_q <= '0;
        end
        else
        begin
            redist6_i_arrayidx373_mmul0_narrow_x_b_4_delay_0 <= $unsigned(i_arrayidx373_mmul0_narrow_x_b);
            redist6_i_arrayidx373_mmul0_narrow_x_b_4_delay_1 <= redist6_i_arrayidx373_mmul0_narrow_x_b_4_delay_0;
            redist6_i_arrayidx373_mmul0_narrow_x_b_4_q <= redist6_i_arrayidx373_mmul0_narrow_x_b_4_delay_1;
        end
    end

    // redist6_i_arrayidx373_mmul0_narrow_x_b_4_outputreg0(DELAY,246)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_i_arrayidx373_mmul0_narrow_x_b_4_outputreg0_q <= '0;
        end
        else
        begin
            redist6_i_arrayidx373_mmul0_narrow_x_b_4_outputreg0_q <= $unsigned(redist6_i_arrayidx373_mmul0_narrow_x_b_4_q);
        end
    end

    // i_arrayidx201_mmul16_vt_const_1(CONSTANT,14)
    assign i_arrayidx201_mmul16_vt_const_1_q = $unsigned(2'b00);

    // i_arrayidx373_mmul0_shift_join_x(BITJOIN,91)@6
    assign i_arrayidx373_mmul0_shift_join_x_q = {redist6_i_arrayidx373_mmul0_narrow_x_b_4_outputreg0_q, i_arrayidx201_mmul16_vt_const_1_q};

    // i_arrayidx373_mmul0_add_x(ADD,87)@6
    assign i_arrayidx373_mmul0_add_x_a = {1'b0, i_arrayidx201_mmul0_upper_bits_x_merged_bit_select_c};
    assign i_arrayidx373_mmul0_add_x_b = {1'b0, i_arrayidx373_mmul0_shift_join_x_q};
    assign i_arrayidx373_mmul0_add_x_o = $unsigned(i_arrayidx373_mmul0_add_x_a) + $unsigned(i_arrayidx373_mmul0_add_x_b);
    assign i_arrayidx373_mmul0_add_x_q = i_arrayidx373_mmul0_add_x_o[14:0];

    // i_arrayidx373_mmul0_dupName_2_trunc_sel_x(BITSELECT,98)@6
    assign i_arrayidx373_mmul0_dupName_2_trunc_sel_x_b = i_arrayidx373_mmul0_add_x_q[13:0];

    // i_arrayidx373_mmul0_append_upper_bits_x(BITJOIN,88)@6
    assign i_arrayidx373_mmul0_append_upper_bits_x_q = {i_arrayidx201_mmul0_upper_bits_x_merged_bit_select_b, i_arrayidx373_mmul0_dupName_2_trunc_sel_x_b};

    // i_arrayidx373_mmul19_vt_select_63(BITSELECT,22)@6
    assign i_arrayidx373_mmul19_vt_select_63_b = i_arrayidx373_mmul0_append_upper_bits_x_q[63:7];

    // i_arrayidx373_mmul19_vt_join(BITJOIN,21)@6
    assign i_arrayidx373_mmul19_vt_join_q = {i_arrayidx373_mmul19_vt_select_63_b, i_arrayidx373_mmul19_vt_const_6_q};

    // i_memcoalesce_bitcast_mmul_fpgaunique_32_mmul20_vt_select_63(BITSELECT,38)@6
    assign i_memcoalesce_bitcast_mmul_fpgaunique_32_mmul20_vt_select_63_b = i_arrayidx373_mmul19_vt_join_q[63:7];

    // i_arrayidx373_mmul19_vt_const_6(CONSTANT,20)
    assign i_arrayidx373_mmul19_vt_const_6_q = $unsigned(7'b0000000);

    // i_memcoalesce_bitcast_mmul_fpgaunique_32_mmul20_vt_join(BITJOIN,37)@6
    assign i_memcoalesce_bitcast_mmul_fpgaunique_32_mmul20_vt_join_q = {i_memcoalesce_bitcast_mmul_fpgaunique_32_mmul20_vt_select_63_b, i_arrayidx373_mmul19_vt_const_6_q};

    // c_Bwrk(CONSTANT,7)
    assign c_Bwrk_q = $unsigned(64'b0100000001000001000000000000000000000000000000000000000000000000);

    // i_arrayidx292_mmul0_upper_bits_x_merged_bit_select(BITSELECT,222)@6
    assign i_arrayidx292_mmul0_upper_bits_x_merged_bit_select_b = c_Bwrk_q[63:14];
    assign i_arrayidx292_mmul0_upper_bits_x_merged_bit_select_c = c_Bwrk_q[13:0];

    // redist2_sync_together29_aunroll_x_in_c0_eni4_4_tpl_1(DELAY,228)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_sync_together29_aunroll_x_in_c0_eni4_4_tpl_1_q <= '0;
        end
        else
        begin
            redist2_sync_together29_aunroll_x_in_c0_eni4_4_tpl_1_q <= $unsigned(in_c0_eni4_4_tpl);
        end
    end

    // i_add18_mmul14(ADD,12)@2
    assign i_add18_mmul14_a = {1'b0, i_mul17_mmul13_vt_join_q};
    assign i_add18_mmul14_b = {1'b0, redist2_sync_together29_aunroll_x_in_c0_eni4_4_tpl_1_q};
    assign i_add18_mmul14_o = $unsigned(i_add18_mmul14_a) + $unsigned(i_add18_mmul14_b);
    assign i_add18_mmul14_q = i_add18_mmul14_o[32:0];

    // bgTrunc_i_add18_mmul14_sel_x(BITSELECT,57)@2
    assign bgTrunc_i_add18_mmul14_sel_x_b = i_add18_mmul14_q[31:0];

    // i_idxprom19_mmul15_sel_x(BITSELECT,103)@2
    assign i_idxprom19_mmul15_sel_x_b = $unsigned({{32{bgTrunc_i_add18_mmul14_sel_x_b[31]}}, bgTrunc_i_add18_mmul14_sel_x_b[31:0]});

    // i_arrayidx201_mmul0_dupName_0_trunc_sel_x(BITSELECT,73)@2
    assign i_arrayidx201_mmul0_dupName_0_trunc_sel_x_b = i_idxprom19_mmul15_sel_x_b[13:0];

    // i_arrayidx201_mmul0_narrow_x(BITSELECT,66)@2
    assign i_arrayidx201_mmul0_narrow_x_b = i_arrayidx201_mmul0_dupName_0_trunc_sel_x_b[11:0];

    // redist7_i_arrayidx201_mmul0_narrow_x_b_4(DELAY,233)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_i_arrayidx201_mmul0_narrow_x_b_4_delay_0 <= '0;
            redist7_i_arrayidx201_mmul0_narrow_x_b_4_delay_1 <= '0;
            redist7_i_arrayidx201_mmul0_narrow_x_b_4_q <= '0;
        end
        else
        begin
            redist7_i_arrayidx201_mmul0_narrow_x_b_4_delay_0 <= $unsigned(i_arrayidx201_mmul0_narrow_x_b);
            redist7_i_arrayidx201_mmul0_narrow_x_b_4_delay_1 <= redist7_i_arrayidx201_mmul0_narrow_x_b_4_delay_0;
            redist7_i_arrayidx201_mmul0_narrow_x_b_4_q <= redist7_i_arrayidx201_mmul0_narrow_x_b_4_delay_1;
        end
    end

    // redist7_i_arrayidx201_mmul0_narrow_x_b_4_outputreg0(DELAY,247)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_i_arrayidx201_mmul0_narrow_x_b_4_outputreg0_q <= '0;
        end
        else
        begin
            redist7_i_arrayidx201_mmul0_narrow_x_b_4_outputreg0_q <= $unsigned(redist7_i_arrayidx201_mmul0_narrow_x_b_4_q);
        end
    end

    // i_arrayidx201_mmul0_shift_join_x(BITJOIN,67)@6
    assign i_arrayidx201_mmul0_shift_join_x_q = {redist7_i_arrayidx201_mmul0_narrow_x_b_4_outputreg0_q, i_arrayidx201_mmul16_vt_const_1_q};

    // i_arrayidx292_mmul0_add_x(ADD,75)@6
    assign i_arrayidx292_mmul0_add_x_a = {1'b0, i_arrayidx292_mmul0_upper_bits_x_merged_bit_select_c};
    assign i_arrayidx292_mmul0_add_x_b = {1'b0, i_arrayidx201_mmul0_shift_join_x_q};
    assign i_arrayidx292_mmul0_add_x_o = $unsigned(i_arrayidx292_mmul0_add_x_a) + $unsigned(i_arrayidx292_mmul0_add_x_b);
    assign i_arrayidx292_mmul0_add_x_q = i_arrayidx292_mmul0_add_x_o[14:0];

    // i_arrayidx292_mmul0_dupName_2_trunc_sel_x(BITSELECT,86)@6
    assign i_arrayidx292_mmul0_dupName_2_trunc_sel_x_b = i_arrayidx292_mmul0_add_x_q[13:0];

    // i_arrayidx292_mmul0_append_upper_bits_x(BITJOIN,76)@6
    assign i_arrayidx292_mmul0_append_upper_bits_x_q = {i_arrayidx292_mmul0_upper_bits_x_merged_bit_select_b, i_arrayidx292_mmul0_dupName_2_trunc_sel_x_b};

    // i_arrayidx292_mmul17_vt_select_63(BITSELECT,19)@6
    assign i_arrayidx292_mmul17_vt_select_63_b = i_arrayidx292_mmul0_append_upper_bits_x_q[63:2];

    // i_arrayidx292_mmul17_vt_join(BITJOIN,18)@6
    assign i_arrayidx292_mmul17_vt_join_q = {i_arrayidx292_mmul17_vt_select_63_b, i_arrayidx201_mmul16_vt_const_1_q};

    // i_arrayidx201_mmul0_add_x(ADD,63)@6
    assign i_arrayidx201_mmul0_add_x_a = {1'b0, i_arrayidx201_mmul0_upper_bits_x_merged_bit_select_c};
    assign i_arrayidx201_mmul0_add_x_b = {1'b0, i_arrayidx201_mmul0_shift_join_x_q};
    assign i_arrayidx201_mmul0_add_x_o = $unsigned(i_arrayidx201_mmul0_add_x_a) + $unsigned(i_arrayidx201_mmul0_add_x_b);
    assign i_arrayidx201_mmul0_add_x_q = i_arrayidx201_mmul0_add_x_o[14:0];

    // i_arrayidx201_mmul0_dupName_2_trunc_sel_x(BITSELECT,74)@6
    assign i_arrayidx201_mmul0_dupName_2_trunc_sel_x_b = i_arrayidx201_mmul0_add_x_q[13:0];

    // i_arrayidx201_mmul0_append_upper_bits_x(BITJOIN,64)@6
    assign i_arrayidx201_mmul0_append_upper_bits_x_q = {i_arrayidx201_mmul0_upper_bits_x_merged_bit_select_b, i_arrayidx201_mmul0_dupName_2_trunc_sel_x_b};

    // i_arrayidx201_mmul16_vt_select_63(BITSELECT,16)@6
    assign i_arrayidx201_mmul16_vt_select_63_b = i_arrayidx201_mmul0_append_upper_bits_x_q[63:2];

    // i_arrayidx201_mmul16_vt_join(BITJOIN,15)@6
    assign i_arrayidx201_mmul16_vt_join_q = {i_arrayidx201_mmul16_vt_select_63_b, i_arrayidx201_mmul16_vt_const_1_q};

    // redist3_sync_together29_aunroll_x_in_c0_eni4_4_tpl_5_notEnable(LOGICAL,242)
    assign redist3_sync_together29_aunroll_x_in_c0_eni4_4_tpl_5_notEnable_q = $unsigned(~ (VCC_q));

    // redist3_sync_together29_aunroll_x_in_c0_eni4_4_tpl_5_nor(LOGICAL,243)
    assign redist3_sync_together29_aunroll_x_in_c0_eni4_4_tpl_5_nor_q = ~ (redist3_sync_together29_aunroll_x_in_c0_eni4_4_tpl_5_notEnable_q | redist3_sync_together29_aunroll_x_in_c0_eni4_4_tpl_5_sticky_ena_q);

    // redist3_sync_together29_aunroll_x_in_c0_eni4_4_tpl_5_cmpReg(REG,241)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_sync_together29_aunroll_x_in_c0_eni4_4_tpl_5_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist3_sync_together29_aunroll_x_in_c0_eni4_4_tpl_5_cmpReg_q <= $unsigned(VCC_q);
        end
    end

    // redist3_sync_together29_aunroll_x_in_c0_eni4_4_tpl_5_sticky_ena(REG,244)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_sync_together29_aunroll_x_in_c0_eni4_4_tpl_5_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist3_sync_together29_aunroll_x_in_c0_eni4_4_tpl_5_nor_q == 1'b1)
        begin
            redist3_sync_together29_aunroll_x_in_c0_eni4_4_tpl_5_sticky_ena_q <= $unsigned(redist3_sync_together29_aunroll_x_in_c0_eni4_4_tpl_5_cmpReg_q);
        end
    end

    // redist3_sync_together29_aunroll_x_in_c0_eni4_4_tpl_5_enaAnd(LOGICAL,245)
    assign redist3_sync_together29_aunroll_x_in_c0_eni4_4_tpl_5_enaAnd_q = redist3_sync_together29_aunroll_x_in_c0_eni4_4_tpl_5_sticky_ena_q & VCC_q;

    // redist3_sync_together29_aunroll_x_in_c0_eni4_4_tpl_5_rdcnt(COUNTER,239)
    // low=0, high=1, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_sync_together29_aunroll_x_in_c0_eni4_4_tpl_5_rdcnt_i <= 1'd0;
        end
        else
        begin
            redist3_sync_together29_aunroll_x_in_c0_eni4_4_tpl_5_rdcnt_i <= $unsigned(redist3_sync_together29_aunroll_x_in_c0_eni4_4_tpl_5_rdcnt_i) + $unsigned(1'd1);
        end
    end
    assign redist3_sync_together29_aunroll_x_in_c0_eni4_4_tpl_5_rdcnt_q = redist3_sync_together29_aunroll_x_in_c0_eni4_4_tpl_5_rdcnt_i[0:0];

    // redist3_sync_together29_aunroll_x_in_c0_eni4_4_tpl_5_wraddr(REG,240)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_sync_together29_aunroll_x_in_c0_eni4_4_tpl_5_wraddr_q <= $unsigned(1'b1);
        end
        else
        begin
            redist3_sync_together29_aunroll_x_in_c0_eni4_4_tpl_5_wraddr_q <= $unsigned(redist3_sync_together29_aunroll_x_in_c0_eni4_4_tpl_5_rdcnt_q);
        end
    end

    // redist3_sync_together29_aunroll_x_in_c0_eni4_4_tpl_5_mem(DUALMEM,238)
    assign redist3_sync_together29_aunroll_x_in_c0_eni4_4_tpl_5_mem_ia = $unsigned(redist2_sync_together29_aunroll_x_in_c0_eni4_4_tpl_1_q);
    assign redist3_sync_together29_aunroll_x_in_c0_eni4_4_tpl_5_mem_aa = redist3_sync_together29_aunroll_x_in_c0_eni4_4_tpl_5_wraddr_q;
    assign redist3_sync_together29_aunroll_x_in_c0_eni4_4_tpl_5_mem_ab = redist3_sync_together29_aunroll_x_in_c0_eni4_4_tpl_5_rdcnt_q;
    assign redist3_sync_together29_aunroll_x_in_c0_eni4_4_tpl_5_mem_reset0 = ~ (resetn);
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
    ) redist3_sync_together29_aunroll_x_in_c0_eni4_4_tpl_5_mem_dmem (
        .clocken1(redist3_sync_together29_aunroll_x_in_c0_eni4_4_tpl_5_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist3_sync_together29_aunroll_x_in_c0_eni4_4_tpl_5_mem_reset0),
        .clock1(clock),
        .address_a(redist3_sync_together29_aunroll_x_in_c0_eni4_4_tpl_5_mem_aa),
        .data_a(redist3_sync_together29_aunroll_x_in_c0_eni4_4_tpl_5_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist3_sync_together29_aunroll_x_in_c0_eni4_4_tpl_5_mem_ab),
        .q_b(redist3_sync_together29_aunroll_x_in_c0_eni4_4_tpl_5_mem_iq),
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
    assign redist3_sync_together29_aunroll_x_in_c0_eni4_4_tpl_5_mem_q = redist3_sync_together29_aunroll_x_in_c0_eni4_4_tpl_5_mem_iq[31:0];

    // redist3_sync_together29_aunroll_x_in_c0_eni4_4_tpl_5_outputreg0(DELAY,237)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_sync_together29_aunroll_x_in_c0_eni4_4_tpl_5_outputreg0_q <= '0;
        end
        else
        begin
            redist3_sync_together29_aunroll_x_in_c0_eni4_4_tpl_5_outputreg0_q <= $unsigned(redist3_sync_together29_aunroll_x_in_c0_eni4_4_tpl_5_mem_q);
        end
    end

    // i_mul15_mmul11_bs4(BITSELECT,152)@2
    assign i_mul15_mmul11_bs4_in = redist1_sync_together29_aunroll_x_in_c0_eni4_3_tpl_1_q[17:0];
    assign i_mul15_mmul11_bs4_b = i_mul15_mmul11_bs4_in[17:0];

    // valid_fanout_reg3(REG,122)@1 + 1
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

    // i_llvm_fpga_sync_buffer_i32_n_sync_buffer2_mmul10(BLACKBOX,34)@0
    // in in_i_dependence@2
    // in in_valid_in@2
    // out out_buffer_out@2
    // out out_valid_out@2
    mmul_i_llvm_fpga_sync_buffer_i32_n_sync_buffer2_0 thei_llvm_fpga_sync_buffer_i32_n_sync_buffer2_mmul10 (
        .in_buffer_in(in_N),
        .in_i_dependence(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_buffer_out(i_llvm_fpga_sync_buffer_i32_n_sync_buffer2_mmul10_out_buffer_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_mul15_mmul11_bs2_merged_bit_select(BITSELECT,223)@2
    assign i_mul15_mmul11_bs2_merged_bit_select_b = i_llvm_fpga_sync_buffer_i32_n_sync_buffer2_mmul10_out_buffer_out[31:18];
    assign i_mul15_mmul11_bs2_merged_bit_select_c = i_llvm_fpga_sync_buffer_i32_n_sync_buffer2_mmul10_out_buffer_out[17:0];

    // i_mul15_mmul11_bs1(BITSELECT,149)@2
    assign i_mul15_mmul11_bs1_b = redist1_sync_together29_aunroll_x_in_c0_eni4_3_tpl_1_q[31:18];

    // i_mul15_mmul11_ma3_cma(CHAINMULTADD,220)@2 + 3
    assign i_mul15_mmul11_ma3_cma_reset = ~ (resetn);
    assign i_mul15_mmul11_ma3_cma_ena0 = 1'b1;
    assign i_mul15_mmul11_ma3_cma_ena1 = i_mul15_mmul11_ma3_cma_ena0;
    assign i_mul15_mmul11_ma3_cma_ena2 = i_mul15_mmul11_ma3_cma_ena0;

    assign i_mul15_mmul11_ma3_cma_a0 = i_mul15_mmul11_bs1_b;
    assign i_mul15_mmul11_ma3_cma_c0 = i_mul15_mmul11_bs2_merged_bit_select_c;
    assign i_mul15_mmul11_ma3_cma_a1 = i_mul15_mmul11_bs2_merged_bit_select_b;
    assign i_mul15_mmul11_ma3_cma_c1 = i_mul15_mmul11_bs4_b;
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
    ) i_mul15_mmul11_ma3_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul15_mmul11_ma3_cma_ena2, i_mul15_mmul11_ma3_cma_ena1, i_mul15_mmul11_ma3_cma_ena0 }),
        .aclr({ i_mul15_mmul11_ma3_cma_reset, i_mul15_mmul11_ma3_cma_reset }),
        .ay(i_mul15_mmul11_ma3_cma_a1),
        .by(i_mul15_mmul11_ma3_cma_a0),
        .ax(i_mul15_mmul11_ma3_cma_c1),
        .bx(i_mul15_mmul11_ma3_cma_c0),
        .resulta(i_mul15_mmul11_ma3_cma_s0),
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
    i_mul15_mmul11_ma3_cma_delay ( .xin(i_mul15_mmul11_ma3_cma_s0), .xout(i_mul15_mmul11_ma3_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul15_mmul11_ma3_cma_q = $unsigned(i_mul15_mmul11_ma3_cma_qq[32:0]);

    // i_mul15_mmul11_sums_align_1(BITSHIFT,160)@5
    assign i_mul15_mmul11_sums_align_1_qint = { i_mul15_mmul11_ma3_cma_q, 18'b000000000000000000 };
    assign i_mul15_mmul11_sums_align_1_q = i_mul15_mmul11_sums_align_1_qint[50:0];

    // i_mul15_mmul11_im0_cma(CHAINMULTADD,217)@2 + 3
    assign i_mul15_mmul11_im0_cma_reset = ~ (resetn);
    assign i_mul15_mmul11_im0_cma_ena0 = 1'b1;
    assign i_mul15_mmul11_im0_cma_ena1 = i_mul15_mmul11_im0_cma_ena0;
    assign i_mul15_mmul11_im0_cma_ena2 = i_mul15_mmul11_im0_cma_ena0;

    assign i_mul15_mmul11_im0_cma_a0 = i_mul15_mmul11_bs1_b;
    assign i_mul15_mmul11_im0_cma_c0 = i_mul15_mmul11_bs2_merged_bit_select_b;
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
    ) i_mul15_mmul11_im0_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul15_mmul11_im0_cma_ena2, i_mul15_mmul11_im0_cma_ena1, i_mul15_mmul11_im0_cma_ena0 }),
        .aclr({ i_mul15_mmul11_im0_cma_reset, i_mul15_mmul11_im0_cma_reset }),
        .ay(i_mul15_mmul11_im0_cma_a0),
        .ax(i_mul15_mmul11_im0_cma_c0),
        .resulta(i_mul15_mmul11_im0_cma_s0),
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
    i_mul15_mmul11_im0_cma_delay ( .xin(i_mul15_mmul11_im0_cma_s0), .xout(i_mul15_mmul11_im0_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul15_mmul11_im0_cma_q = $unsigned(i_mul15_mmul11_im0_cma_qq[27:0]);

    // i_mul15_mmul11_im8_cma(CHAINMULTADD,218)@2 + 3
    assign i_mul15_mmul11_im8_cma_reset = ~ (resetn);
    assign i_mul15_mmul11_im8_cma_ena0 = 1'b1;
    assign i_mul15_mmul11_im8_cma_ena1 = i_mul15_mmul11_im8_cma_ena0;
    assign i_mul15_mmul11_im8_cma_ena2 = i_mul15_mmul11_im8_cma_ena0;

    assign i_mul15_mmul11_im8_cma_a0 = i_mul15_mmul11_bs4_b;
    assign i_mul15_mmul11_im8_cma_c0 = i_mul15_mmul11_bs2_merged_bit_select_c;
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
    ) i_mul15_mmul11_im8_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul15_mmul11_im8_cma_ena2, i_mul15_mmul11_im8_cma_ena1, i_mul15_mmul11_im8_cma_ena0 }),
        .aclr({ i_mul15_mmul11_im8_cma_reset, i_mul15_mmul11_im8_cma_reset }),
        .ay(i_mul15_mmul11_im8_cma_a0),
        .ax(i_mul15_mmul11_im8_cma_c0),
        .resulta(i_mul15_mmul11_im8_cma_s0),
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
    i_mul15_mmul11_im8_cma_delay ( .xin(i_mul15_mmul11_im8_cma_s0), .xout(i_mul15_mmul11_im8_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul15_mmul11_im8_cma_q = $unsigned(i_mul15_mmul11_im8_cma_qq[35:0]);

    // i_mul15_mmul11_sums_join_0(BITJOIN,159)@5
    assign i_mul15_mmul11_sums_join_0_q = {i_mul15_mmul11_im0_cma_q, i_mul15_mmul11_im8_cma_q};

    // i_mul15_mmul11_sums_result_add_0_0(ADD,162)@5
    assign i_mul15_mmul11_sums_result_add_0_0_a = {1'b0, i_mul15_mmul11_sums_join_0_q};
    assign i_mul15_mmul11_sums_result_add_0_0_b = {14'b00000000000000, i_mul15_mmul11_sums_align_1_q};
    assign i_mul15_mmul11_sums_result_add_0_0_o = $unsigned(i_mul15_mmul11_sums_result_add_0_0_a) + $unsigned(i_mul15_mmul11_sums_result_add_0_0_b);
    assign i_mul15_mmul11_sums_result_add_0_0_q = i_mul15_mmul11_sums_result_add_0_0_o[64:0];

    // bgTrunc_i_mul15_mmul11_sel_x(BITSELECT,60)@5
    assign bgTrunc_i_mul15_mmul11_sel_x_in = i_mul15_mmul11_sums_result_add_0_0_q[63:0];
    assign bgTrunc_i_mul15_mmul11_sel_x_b = bgTrunc_i_mul15_mmul11_sel_x_in[31:0];

    // redist8_bgTrunc_i_mul15_mmul11_sel_x_b_1(DELAY,234)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_bgTrunc_i_mul15_mmul11_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist8_bgTrunc_i_mul15_mmul11_sel_x_b_1_q <= $unsigned(bgTrunc_i_mul15_mmul11_sel_x_b);
        end
    end

    // i_add_mmul12(ADD,13)@6
    assign i_add_mmul12_a = {1'b0, redist8_bgTrunc_i_mul15_mmul11_sel_x_b_1_q};
    assign i_add_mmul12_b = {1'b0, redist3_sync_together29_aunroll_x_in_c0_eni4_4_tpl_5_outputreg0_q};
    assign i_add_mmul12_o = $unsigned(i_add_mmul12_a) + $unsigned(i_add_mmul12_b);
    assign i_add_mmul12_q = i_add_mmul12_o[32:0];

    // bgTrunc_i_add_mmul12_sel_x(BITSELECT,58)@6
    assign bgTrunc_i_add_mmul12_sel_x_b = i_add_mmul12_q[31:0];

    // redist0_sync_together29_aunroll_x_in_c0_eni4_2_tpl_2(DELAY,226)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_sync_together29_aunroll_x_in_c0_eni4_2_tpl_2_delay_0 <= '0;
            redist0_sync_together29_aunroll_x_in_c0_eni4_2_tpl_2_q <= '0;
        end
        else
        begin
            redist0_sync_together29_aunroll_x_in_c0_eni4_2_tpl_2_delay_0 <= $unsigned(in_c0_eni4_2_tpl);
            redist0_sync_together29_aunroll_x_in_c0_eni4_2_tpl_2_q <= redist0_sync_together29_aunroll_x_in_c0_eni4_2_tpl_2_delay_0;
        end
    end

    // i_mul11_mmul9_bs2_merged_bit_select(BITSELECT,225)@3
    assign i_mul11_mmul9_bs2_merged_bit_select_b = redist0_sync_together29_aunroll_x_in_c0_eni4_2_tpl_2_q[31:18];
    assign i_mul11_mmul9_bs2_merged_bit_select_c = redist0_sync_together29_aunroll_x_in_c0_eni4_2_tpl_2_q[17:0];

    // leftShiftStage1Idx1Rng4_uid198_i_mul13_mmul0_shift_x(BITSELECT,197)@3
    assign leftShiftStage1Idx1Rng4_uid198_i_mul13_mmul0_shift_x_in = leftShiftStage0_uid196_i_mul13_mmul0_shift_x_q[27:0];
    assign leftShiftStage1Idx1Rng4_uid198_i_mul13_mmul0_shift_x_b = leftShiftStage1Idx1Rng4_uid198_i_mul13_mmul0_shift_x_in[27:0];

    // leftShiftStage1Idx1_uid199_i_mul13_mmul0_shift_x(BITJOIN,198)@3
    assign leftShiftStage1Idx1_uid199_i_mul13_mmul0_shift_x_q = {leftShiftStage1Idx1Rng4_uid198_i_mul13_mmul0_shift_x_b, rightShiftStage1Idx1Pad4_uid172_i_div_mmul0_shift_x_q};

    // leftShiftStage0Idx1Rng1_uid193_i_mul13_mmul0_shift_x(BITSELECT,192)@3
    assign leftShiftStage0Idx1Rng1_uid193_i_mul13_mmul0_shift_x_in = i_llvm_fpga_sync_buffer_i32_n_sync_buffer1_mmul4_out_buffer_out[30:0];
    assign leftShiftStage0Idx1Rng1_uid193_i_mul13_mmul0_shift_x_b = leftShiftStage0Idx1Rng1_uid193_i_mul13_mmul0_shift_x_in[30:0];

    // leftShiftStage0Idx1_uid194_i_mul13_mmul0_shift_x(BITJOIN,193)@3
    assign leftShiftStage0Idx1_uid194_i_mul13_mmul0_shift_x_q = {leftShiftStage0Idx1Rng1_uid193_i_mul13_mmul0_shift_x_b, GND_q};

    // valid_fanout_reg2(REG,121)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg2_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg2_q <= $unsigned(redist4_sync_together29_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_sync_buffer_i32_n_sync_buffer1_mmul4(BLACKBOX,33)@0
    // in in_i_dependence@3
    // in in_valid_in@3
    // out out_buffer_out@3
    // out out_valid_out@3
    mmul_i_llvm_fpga_sync_buffer_i32_n_sync_buffer1_0 thei_llvm_fpga_sync_buffer_i32_n_sync_buffer1_mmul4 (
        .in_buffer_in(in_N),
        .in_i_dependence(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_buffer_out(i_llvm_fpga_sync_buffer_i32_n_sync_buffer1_mmul4_out_buffer_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // leftShiftStage0_uid196_i_mul13_mmul0_shift_x(MUX,195)@3
    assign leftShiftStage0_uid196_i_mul13_mmul0_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid196_i_mul13_mmul0_shift_x_s or i_llvm_fpga_sync_buffer_i32_n_sync_buffer1_mmul4_out_buffer_out or leftShiftStage0Idx1_uid194_i_mul13_mmul0_shift_x_q)
    begin
        unique case (leftShiftStage0_uid196_i_mul13_mmul0_shift_x_s)
            1'b0 : leftShiftStage0_uid196_i_mul13_mmul0_shift_x_q = i_llvm_fpga_sync_buffer_i32_n_sync_buffer1_mmul4_out_buffer_out;
            1'b1 : leftShiftStage0_uid196_i_mul13_mmul0_shift_x_q = leftShiftStage0Idx1_uid194_i_mul13_mmul0_shift_x_q;
            default : leftShiftStage0_uid196_i_mul13_mmul0_shift_x_q = 32'b0;
        endcase
    end

    // leftShiftStage1_uid201_i_mul13_mmul0_shift_x(MUX,200)@3
    assign leftShiftStage1_uid201_i_mul13_mmul0_shift_x_s = VCC_q;
    always @(leftShiftStage1_uid201_i_mul13_mmul0_shift_x_s or leftShiftStage0_uid196_i_mul13_mmul0_shift_x_q or leftShiftStage1Idx1_uid199_i_mul13_mmul0_shift_x_q)
    begin
        unique case (leftShiftStage1_uid201_i_mul13_mmul0_shift_x_s)
            1'b0 : leftShiftStage1_uid201_i_mul13_mmul0_shift_x_q = leftShiftStage0_uid196_i_mul13_mmul0_shift_x_q;
            1'b1 : leftShiftStage1_uid201_i_mul13_mmul0_shift_x_q = leftShiftStage1Idx1_uid199_i_mul13_mmul0_shift_x_q;
            default : leftShiftStage1_uid201_i_mul13_mmul0_shift_x_q = 32'b0;
        endcase
    end

    // i_mul13_mmul5_vt_select_31(BITSELECT,48)@3
    assign i_mul13_mmul5_vt_select_31_b = leftShiftStage1_uid201_i_mul13_mmul0_shift_x_q[31:5];

    // i_mul13_mmul5_vt_join(BITJOIN,47)@3
    assign i_mul13_mmul5_vt_join_q = {i_mul13_mmul5_vt_select_31_b, i_div_mmul3_vt_const_31_q};

    // i_mul11_mmul9_bs1_merged_bit_select(BITSELECT,224)@3
    assign i_mul11_mmul9_bs1_merged_bit_select_b = i_mul13_mmul5_vt_join_q[31:18];
    assign i_mul11_mmul9_bs1_merged_bit_select_c = i_mul13_mmul5_vt_join_q[17:0];

    // i_mul11_mmul9_ma3_cma(CHAINMULTADD,219)@3 + 3
    assign i_mul11_mmul9_ma3_cma_reset = ~ (resetn);
    assign i_mul11_mmul9_ma3_cma_ena0 = 1'b1;
    assign i_mul11_mmul9_ma3_cma_ena1 = i_mul11_mmul9_ma3_cma_ena0;
    assign i_mul11_mmul9_ma3_cma_ena2 = i_mul11_mmul9_ma3_cma_ena0;

    assign i_mul11_mmul9_ma3_cma_a0 = i_mul11_mmul9_bs1_merged_bit_select_b;
    assign i_mul11_mmul9_ma3_cma_c0 = i_mul11_mmul9_bs2_merged_bit_select_c;
    assign i_mul11_mmul9_ma3_cma_a1 = i_mul11_mmul9_bs2_merged_bit_select_b;
    assign i_mul11_mmul9_ma3_cma_c1 = i_mul11_mmul9_bs1_merged_bit_select_c;
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
    ) i_mul11_mmul9_ma3_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul11_mmul9_ma3_cma_ena2, i_mul11_mmul9_ma3_cma_ena1, i_mul11_mmul9_ma3_cma_ena0 }),
        .aclr({ i_mul11_mmul9_ma3_cma_reset, i_mul11_mmul9_ma3_cma_reset }),
        .ay(i_mul11_mmul9_ma3_cma_a1),
        .by(i_mul11_mmul9_ma3_cma_a0),
        .ax(i_mul11_mmul9_ma3_cma_c1),
        .bx(i_mul11_mmul9_ma3_cma_c0),
        .resulta(i_mul11_mmul9_ma3_cma_s0),
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
    i_mul11_mmul9_ma3_cma_delay ( .xin(i_mul11_mmul9_ma3_cma_s0), .xout(i_mul11_mmul9_ma3_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul11_mmul9_ma3_cma_q = $unsigned(i_mul11_mmul9_ma3_cma_qq[32:0]);

    // i_mul11_mmul9_sums_align_1(BITSHIFT,145)@6
    assign i_mul11_mmul9_sums_align_1_qint = { i_mul11_mmul9_ma3_cma_q, 18'b000000000000000000 };
    assign i_mul11_mmul9_sums_align_1_q = i_mul11_mmul9_sums_align_1_qint[50:0];

    // i_mul11_mmul9_im0_cma(CHAINMULTADD,215)@3 + 3
    assign i_mul11_mmul9_im0_cma_reset = ~ (resetn);
    assign i_mul11_mmul9_im0_cma_ena0 = 1'b1;
    assign i_mul11_mmul9_im0_cma_ena1 = i_mul11_mmul9_im0_cma_ena0;
    assign i_mul11_mmul9_im0_cma_ena2 = i_mul11_mmul9_im0_cma_ena0;

    assign i_mul11_mmul9_im0_cma_a0 = i_mul11_mmul9_bs1_merged_bit_select_b;
    assign i_mul11_mmul9_im0_cma_c0 = i_mul11_mmul9_bs2_merged_bit_select_b;
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
    ) i_mul11_mmul9_im0_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul11_mmul9_im0_cma_ena2, i_mul11_mmul9_im0_cma_ena1, i_mul11_mmul9_im0_cma_ena0 }),
        .aclr({ i_mul11_mmul9_im0_cma_reset, i_mul11_mmul9_im0_cma_reset }),
        .ay(i_mul11_mmul9_im0_cma_a0),
        .ax(i_mul11_mmul9_im0_cma_c0),
        .resulta(i_mul11_mmul9_im0_cma_s0),
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
    i_mul11_mmul9_im0_cma_delay ( .xin(i_mul11_mmul9_im0_cma_s0), .xout(i_mul11_mmul9_im0_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul11_mmul9_im0_cma_q = $unsigned(i_mul11_mmul9_im0_cma_qq[27:0]);

    // i_mul11_mmul9_im8_cma(CHAINMULTADD,216)@3 + 3
    assign i_mul11_mmul9_im8_cma_reset = ~ (resetn);
    assign i_mul11_mmul9_im8_cma_ena0 = 1'b1;
    assign i_mul11_mmul9_im8_cma_ena1 = i_mul11_mmul9_im8_cma_ena0;
    assign i_mul11_mmul9_im8_cma_ena2 = i_mul11_mmul9_im8_cma_ena0;

    assign i_mul11_mmul9_im8_cma_a0 = i_mul11_mmul9_bs1_merged_bit_select_c;
    assign i_mul11_mmul9_im8_cma_c0 = i_mul11_mmul9_bs2_merged_bit_select_c;
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
    ) i_mul11_mmul9_im8_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul11_mmul9_im8_cma_ena2, i_mul11_mmul9_im8_cma_ena1, i_mul11_mmul9_im8_cma_ena0 }),
        .aclr({ i_mul11_mmul9_im8_cma_reset, i_mul11_mmul9_im8_cma_reset }),
        .ay(i_mul11_mmul9_im8_cma_a0),
        .ax(i_mul11_mmul9_im8_cma_c0),
        .resulta(i_mul11_mmul9_im8_cma_s0),
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
    i_mul11_mmul9_im8_cma_delay ( .xin(i_mul11_mmul9_im8_cma_s0), .xout(i_mul11_mmul9_im8_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul11_mmul9_im8_cma_q = $unsigned(i_mul11_mmul9_im8_cma_qq[35:0]);

    // i_mul11_mmul9_sums_join_0(BITJOIN,144)@6
    assign i_mul11_mmul9_sums_join_0_q = {i_mul11_mmul9_im0_cma_q, i_mul11_mmul9_im8_cma_q};

    // i_mul11_mmul9_sums_result_add_0_0(ADD,147)@6
    assign i_mul11_mmul9_sums_result_add_0_0_a = {1'b0, i_mul11_mmul9_sums_join_0_q};
    assign i_mul11_mmul9_sums_result_add_0_0_b = {14'b00000000000000, i_mul11_mmul9_sums_align_1_q};
    assign i_mul11_mmul9_sums_result_add_0_0_o = $unsigned(i_mul11_mmul9_sums_result_add_0_0_a) + $unsigned(i_mul11_mmul9_sums_result_add_0_0_b);
    assign i_mul11_mmul9_sums_result_add_0_0_q = i_mul11_mmul9_sums_result_add_0_0_o[64:0];

    // bgTrunc_i_mul11_mmul9_sel_x(BITSELECT,59)@6
    assign bgTrunc_i_mul11_mmul9_sel_x_in = i_mul11_mmul9_sums_result_add_0_0_q[63:0];
    assign bgTrunc_i_mul11_mmul9_sel_x_b = bgTrunc_i_mul11_mmul9_sel_x_in[31:0];

    // i_mul11_mmul9_vt_select_31(BITSELECT,42)@6
    assign i_mul11_mmul9_vt_select_31_b = bgTrunc_i_mul11_mmul9_sel_x_b[31:5];

    // i_mul11_mmul9_vt_join(BITJOIN,41)@6
    assign i_mul11_mmul9_vt_join_q = {i_mul11_mmul9_vt_select_31_b, i_div_mmul3_vt_const_31_q};

    // redist10_i_mul12_mmul8_vt_select_31_b_5_notEnable(LOGICAL,262)
    assign redist10_i_mul12_mmul8_vt_select_31_b_5_notEnable_q = $unsigned(~ (VCC_q));

    // redist10_i_mul12_mmul8_vt_select_31_b_5_nor(LOGICAL,263)
    assign redist10_i_mul12_mmul8_vt_select_31_b_5_nor_q = ~ (redist10_i_mul12_mmul8_vt_select_31_b_5_notEnable_q | redist10_i_mul12_mmul8_vt_select_31_b_5_sticky_ena_q);

    // redist10_i_mul12_mmul8_vt_select_31_b_5_mem_last(CONSTANT,259)
    assign redist10_i_mul12_mmul8_vt_select_31_b_5_mem_last_q = $unsigned(3'b010);

    // redist10_i_mul12_mmul8_vt_select_31_b_5_cmp(LOGICAL,260)
    assign redist10_i_mul12_mmul8_vt_select_31_b_5_cmp_b = {1'b0, redist10_i_mul12_mmul8_vt_select_31_b_5_rdcnt_q};
    assign redist10_i_mul12_mmul8_vt_select_31_b_5_cmp_q = $unsigned(redist10_i_mul12_mmul8_vt_select_31_b_5_mem_last_q == redist10_i_mul12_mmul8_vt_select_31_b_5_cmp_b ? 1'b1 : 1'b0);

    // redist10_i_mul12_mmul8_vt_select_31_b_5_cmpReg(REG,261)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_i_mul12_mmul8_vt_select_31_b_5_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist10_i_mul12_mmul8_vt_select_31_b_5_cmpReg_q <= $unsigned(redist10_i_mul12_mmul8_vt_select_31_b_5_cmp_q);
        end
    end

    // redist10_i_mul12_mmul8_vt_select_31_b_5_sticky_ena(REG,264)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_i_mul12_mmul8_vt_select_31_b_5_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist10_i_mul12_mmul8_vt_select_31_b_5_nor_q == 1'b1)
        begin
            redist10_i_mul12_mmul8_vt_select_31_b_5_sticky_ena_q <= $unsigned(redist10_i_mul12_mmul8_vt_select_31_b_5_cmpReg_q);
        end
    end

    // redist10_i_mul12_mmul8_vt_select_31_b_5_enaAnd(LOGICAL,265)
    assign redist10_i_mul12_mmul8_vt_select_31_b_5_enaAnd_q = redist10_i_mul12_mmul8_vt_select_31_b_5_sticky_ena_q & VCC_q;

    // redist10_i_mul12_mmul8_vt_select_31_b_5_rdcnt(COUNTER,257)
    // low=0, high=3, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_i_mul12_mmul8_vt_select_31_b_5_rdcnt_i <= 2'd0;
        end
        else
        begin
            redist10_i_mul12_mmul8_vt_select_31_b_5_rdcnt_i <= $unsigned(redist10_i_mul12_mmul8_vt_select_31_b_5_rdcnt_i) + $unsigned(2'd1);
        end
    end
    assign redist10_i_mul12_mmul8_vt_select_31_b_5_rdcnt_q = redist10_i_mul12_mmul8_vt_select_31_b_5_rdcnt_i[1:0];

    // leftShiftStage1Idx1Rng4_uid185_i_mul12_mmul0_shift_x(BITSELECT,184)@1
    assign leftShiftStage1Idx1Rng4_uid185_i_mul12_mmul0_shift_x_in = leftShiftStage0_uid183_i_mul12_mmul0_shift_x_q[27:0];
    assign leftShiftStage1Idx1Rng4_uid185_i_mul12_mmul0_shift_x_b = leftShiftStage1Idx1Rng4_uid185_i_mul12_mmul0_shift_x_in[27:0];

    // leftShiftStage1Idx1_uid186_i_mul12_mmul0_shift_x(BITJOIN,185)@1
    assign leftShiftStage1Idx1_uid186_i_mul12_mmul0_shift_x_q = {leftShiftStage1Idx1Rng4_uid185_i_mul12_mmul0_shift_x_b, rightShiftStage1Idx1Pad4_uid172_i_div_mmul0_shift_x_q};

    // leftShiftStage0Idx1Rng1_uid180_i_mul12_mmul0_shift_x(BITSELECT,179)@1
    assign leftShiftStage0Idx1Rng1_uid180_i_mul12_mmul0_shift_x_in = in_c0_eni4_1_tpl[30:0];
    assign leftShiftStage0Idx1Rng1_uid180_i_mul12_mmul0_shift_x_b = leftShiftStage0Idx1Rng1_uid180_i_mul12_mmul0_shift_x_in[30:0];

    // leftShiftStage0Idx1_uid181_i_mul12_mmul0_shift_x(BITJOIN,180)@1
    assign leftShiftStage0Idx1_uid181_i_mul12_mmul0_shift_x_q = {leftShiftStage0Idx1Rng1_uid180_i_mul12_mmul0_shift_x_b, GND_q};

    // leftShiftStage0_uid183_i_mul12_mmul0_shift_x(MUX,182)@1
    assign leftShiftStage0_uid183_i_mul12_mmul0_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid183_i_mul12_mmul0_shift_x_s or in_c0_eni4_1_tpl or leftShiftStage0Idx1_uid181_i_mul12_mmul0_shift_x_q)
    begin
        unique case (leftShiftStage0_uid183_i_mul12_mmul0_shift_x_s)
            1'b0 : leftShiftStage0_uid183_i_mul12_mmul0_shift_x_q = in_c0_eni4_1_tpl;
            1'b1 : leftShiftStage0_uid183_i_mul12_mmul0_shift_x_q = leftShiftStage0Idx1_uid181_i_mul12_mmul0_shift_x_q;
            default : leftShiftStage0_uid183_i_mul12_mmul0_shift_x_q = 32'b0;
        endcase
    end

    // leftShiftStage1_uid188_i_mul12_mmul0_shift_x(MUX,187)@1
    assign leftShiftStage1_uid188_i_mul12_mmul0_shift_x_s = VCC_q;
    always @(leftShiftStage1_uid188_i_mul12_mmul0_shift_x_s or leftShiftStage0_uid183_i_mul12_mmul0_shift_x_q or leftShiftStage1Idx1_uid186_i_mul12_mmul0_shift_x_q)
    begin
        unique case (leftShiftStage1_uid188_i_mul12_mmul0_shift_x_s)
            1'b0 : leftShiftStage1_uid188_i_mul12_mmul0_shift_x_q = leftShiftStage0_uid183_i_mul12_mmul0_shift_x_q;
            1'b1 : leftShiftStage1_uid188_i_mul12_mmul0_shift_x_q = leftShiftStage1Idx1_uid186_i_mul12_mmul0_shift_x_q;
            default : leftShiftStage1_uid188_i_mul12_mmul0_shift_x_q = 32'b0;
        endcase
    end

    // i_mul12_mmul8_vt_select_31(BITSELECT,45)@1
    assign i_mul12_mmul8_vt_select_31_b = leftShiftStage1_uid188_i_mul12_mmul0_shift_x_q[31:5];

    // redist10_i_mul12_mmul8_vt_select_31_b_5_wraddr(REG,258)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_i_mul12_mmul8_vt_select_31_b_5_wraddr_q <= $unsigned(2'b11);
        end
        else
        begin
            redist10_i_mul12_mmul8_vt_select_31_b_5_wraddr_q <= $unsigned(redist10_i_mul12_mmul8_vt_select_31_b_5_rdcnt_q);
        end
    end

    // redist10_i_mul12_mmul8_vt_select_31_b_5_mem(DUALMEM,256)
    assign redist10_i_mul12_mmul8_vt_select_31_b_5_mem_ia = $unsigned(i_mul12_mmul8_vt_select_31_b);
    assign redist10_i_mul12_mmul8_vt_select_31_b_5_mem_aa = redist10_i_mul12_mmul8_vt_select_31_b_5_wraddr_q;
    assign redist10_i_mul12_mmul8_vt_select_31_b_5_mem_ab = redist10_i_mul12_mmul8_vt_select_31_b_5_rdcnt_q;
    assign redist10_i_mul12_mmul8_vt_select_31_b_5_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(27),
        .widthad_a(2),
        .numwords_a(4),
        .width_b(27),
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
    ) redist10_i_mul12_mmul8_vt_select_31_b_5_mem_dmem (
        .clocken1(redist10_i_mul12_mmul8_vt_select_31_b_5_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist10_i_mul12_mmul8_vt_select_31_b_5_mem_reset0),
        .clock1(clock),
        .address_a(redist10_i_mul12_mmul8_vt_select_31_b_5_mem_aa),
        .data_a(redist10_i_mul12_mmul8_vt_select_31_b_5_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist10_i_mul12_mmul8_vt_select_31_b_5_mem_ab),
        .q_b(redist10_i_mul12_mmul8_vt_select_31_b_5_mem_iq),
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
    assign redist10_i_mul12_mmul8_vt_select_31_b_5_mem_q = redist10_i_mul12_mmul8_vt_select_31_b_5_mem_iq[26:0];

    // i_mul12_mmul8_vt_join(BITJOIN,44)@6
    assign i_mul12_mmul8_vt_join_q = {redist10_i_mul12_mmul8_vt_select_31_b_5_mem_q, i_div_mmul3_vt_const_31_q};

    // c_i32_026_recast_x(CONSTANT,61)
    assign c_i32_026_recast_x_q = $unsigned(32'b00000000000000000000000000000000);

    // i_cmp62_mmul6(LOGICAL,23)@6
    assign i_cmp62_mmul6_q = $unsigned(i_div_mmul3_vt_join_q == c_i32_026_recast_x_q ? 1'b1 : 1'b0);

    // redist9_i_mul13_mmul5_vt_join_q_3_notEnable(LOGICAL,252)
    assign redist9_i_mul13_mmul5_vt_join_q_3_notEnable_q = $unsigned(~ (VCC_q));

    // redist9_i_mul13_mmul5_vt_join_q_3_nor(LOGICAL,253)
    assign redist9_i_mul13_mmul5_vt_join_q_3_nor_q = ~ (redist9_i_mul13_mmul5_vt_join_q_3_notEnable_q | redist9_i_mul13_mmul5_vt_join_q_3_sticky_ena_q);

    // redist9_i_mul13_mmul5_vt_join_q_3_cmpReg(REG,251)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_i_mul13_mmul5_vt_join_q_3_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist9_i_mul13_mmul5_vt_join_q_3_cmpReg_q <= $unsigned(VCC_q);
        end
    end

    // redist9_i_mul13_mmul5_vt_join_q_3_sticky_ena(REG,254)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_i_mul13_mmul5_vt_join_q_3_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist9_i_mul13_mmul5_vt_join_q_3_nor_q == 1'b1)
        begin
            redist9_i_mul13_mmul5_vt_join_q_3_sticky_ena_q <= $unsigned(redist9_i_mul13_mmul5_vt_join_q_3_cmpReg_q);
        end
    end

    // redist9_i_mul13_mmul5_vt_join_q_3_enaAnd(LOGICAL,255)
    assign redist9_i_mul13_mmul5_vt_join_q_3_enaAnd_q = redist9_i_mul13_mmul5_vt_join_q_3_sticky_ena_q & VCC_q;

    // redist9_i_mul13_mmul5_vt_join_q_3_rdcnt(COUNTER,249)
    // low=0, high=1, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_i_mul13_mmul5_vt_join_q_3_rdcnt_i <= 1'd0;
        end
        else
        begin
            redist9_i_mul13_mmul5_vt_join_q_3_rdcnt_i <= $unsigned(redist9_i_mul13_mmul5_vt_join_q_3_rdcnt_i) + $unsigned(1'd1);
        end
    end
    assign redist9_i_mul13_mmul5_vt_join_q_3_rdcnt_q = redist9_i_mul13_mmul5_vt_join_q_3_rdcnt_i[0:0];

    // redist9_i_mul13_mmul5_vt_join_q_3_wraddr(REG,250)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_i_mul13_mmul5_vt_join_q_3_wraddr_q <= $unsigned(1'b1);
        end
        else
        begin
            redist9_i_mul13_mmul5_vt_join_q_3_wraddr_q <= $unsigned(redist9_i_mul13_mmul5_vt_join_q_3_rdcnt_q);
        end
    end

    // redist9_i_mul13_mmul5_vt_join_q_3_mem(DUALMEM,248)
    assign redist9_i_mul13_mmul5_vt_join_q_3_mem_ia = $unsigned(i_mul13_mmul5_vt_join_q);
    assign redist9_i_mul13_mmul5_vt_join_q_3_mem_aa = redist9_i_mul13_mmul5_vt_join_q_3_wraddr_q;
    assign redist9_i_mul13_mmul5_vt_join_q_3_mem_ab = redist9_i_mul13_mmul5_vt_join_q_3_rdcnt_q;
    assign redist9_i_mul13_mmul5_vt_join_q_3_mem_reset0 = ~ (resetn);
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
    ) redist9_i_mul13_mmul5_vt_join_q_3_mem_dmem (
        .clocken1(redist9_i_mul13_mmul5_vt_join_q_3_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist9_i_mul13_mmul5_vt_join_q_3_mem_reset0),
        .clock1(clock),
        .address_a(redist9_i_mul13_mmul5_vt_join_q_3_mem_aa),
        .data_a(redist9_i_mul13_mmul5_vt_join_q_3_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist9_i_mul13_mmul5_vt_join_q_3_mem_ab),
        .q_b(redist9_i_mul13_mmul5_vt_join_q_3_mem_iq),
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
    assign redist9_i_mul13_mmul5_vt_join_q_3_mem_q = redist9_i_mul13_mmul5_vt_join_q_3_mem_iq[31:0];

    // rightShiftStage1Idx1Rng4_uid171_i_div_mmul0_shift_x(BITSELECT,170)@6
    assign rightShiftStage1Idx1Rng4_uid171_i_div_mmul0_shift_x_b = rightShiftStage0_uid170_i_div_mmul0_shift_x_q[31:4];

    // rightShiftStage1Idx1_uid173_i_div_mmul0_shift_x(BITJOIN,172)@6
    assign rightShiftStage1Idx1_uid173_i_div_mmul0_shift_x_q = {rightShiftStage1Idx1Pad4_uid172_i_div_mmul0_shift_x_q, rightShiftStage1Idx1Rng4_uid171_i_div_mmul0_shift_x_b};

    // rightShiftStage0Idx1Rng1_uid166_i_div_mmul0_shift_x(BITSELECT,165)@6
    assign rightShiftStage0Idx1Rng1_uid166_i_div_mmul0_shift_x_b = i_llvm_fpga_sync_buffer_i32_n_sync_buffer_mmul2_out_buffer_out[31:1];

    // rightShiftStage0Idx1_uid168_i_div_mmul0_shift_x(BITJOIN,167)@6
    assign rightShiftStage0Idx1_uid168_i_div_mmul0_shift_x_q = {GND_q, rightShiftStage0Idx1Rng1_uid166_i_div_mmul0_shift_x_b};

    // valid_fanout_reg1(REG,120)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg1_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg1_q <= $unsigned(redist5_sync_together29_aunroll_x_in_i_valid_4_q);
        end
    end

    // i_llvm_fpga_sync_buffer_i32_n_sync_buffer_mmul2(BLACKBOX,35)@0
    // in in_i_dependence@6
    // in in_valid_in@6
    // out out_buffer_out@6
    // out out_valid_out@6
    mmul_i_llvm_fpga_sync_buffer_i32_n_sync_buffer_0 thei_llvm_fpga_sync_buffer_i32_n_sync_buffer_mmul2 (
        .in_buffer_in(in_N),
        .in_i_dependence(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_buffer_out(i_llvm_fpga_sync_buffer_i32_n_sync_buffer_mmul2_out_buffer_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // rightShiftStage0_uid170_i_div_mmul0_shift_x(MUX,169)@6
    assign rightShiftStage0_uid170_i_div_mmul0_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid170_i_div_mmul0_shift_x_s or i_llvm_fpga_sync_buffer_i32_n_sync_buffer_mmul2_out_buffer_out or rightShiftStage0Idx1_uid168_i_div_mmul0_shift_x_q)
    begin
        unique case (rightShiftStage0_uid170_i_div_mmul0_shift_x_s)
            1'b0 : rightShiftStage0_uid170_i_div_mmul0_shift_x_q = i_llvm_fpga_sync_buffer_i32_n_sync_buffer_mmul2_out_buffer_out;
            1'b1 : rightShiftStage0_uid170_i_div_mmul0_shift_x_q = rightShiftStage0Idx1_uid168_i_div_mmul0_shift_x_q;
            default : rightShiftStage0_uid170_i_div_mmul0_shift_x_q = 32'b0;
        endcase
    end

    // rightShiftStage1_uid175_i_div_mmul0_shift_x(MUX,174)@6
    assign rightShiftStage1_uid175_i_div_mmul0_shift_x_s = VCC_q;
    always @(rightShiftStage1_uid175_i_div_mmul0_shift_x_s or rightShiftStage0_uid170_i_div_mmul0_shift_x_q or rightShiftStage1Idx1_uid173_i_div_mmul0_shift_x_q)
    begin
        unique case (rightShiftStage1_uid175_i_div_mmul0_shift_x_s)
            1'b0 : rightShiftStage1_uid175_i_div_mmul0_shift_x_q = rightShiftStage0_uid170_i_div_mmul0_shift_x_q;
            1'b1 : rightShiftStage1_uid175_i_div_mmul0_shift_x_q = rightShiftStage1Idx1_uid173_i_div_mmul0_shift_x_q;
            default : rightShiftStage1_uid175_i_div_mmul0_shift_x_q = 32'b0;
        endcase
    end

    // i_div_mmul3_vt_select_26(BITSELECT,26)@6
    assign i_div_mmul3_vt_select_26_b = rightShiftStage1_uid175_i_div_mmul0_shift_x_q[26:0];

    // i_div_mmul3_vt_join(BITJOIN,25)@6
    assign i_div_mmul3_vt_join_q = {i_div_mmul3_vt_const_31_q, i_div_mmul3_vt_select_26_b};

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // sync_out_aunroll_x(GPOUT,117)@6
    assign out_c0_exi9_0_tpl = GND_q;
    assign out_c0_exi9_1_tpl = i_div_mmul3_vt_join_q;
    assign out_c0_exi9_2_tpl = redist9_i_mul13_mmul5_vt_join_q_3_mem_q;
    assign out_c0_exi9_3_tpl = i_cmp62_mmul6_q;
    assign out_c0_exi9_4_tpl = i_mul12_mmul8_vt_join_q;
    assign out_c0_exi9_5_tpl = i_mul11_mmul9_vt_join_q;
    assign out_c0_exi9_6_tpl = bgTrunc_i_add_mmul12_sel_x_b;
    assign out_c0_exi9_7_tpl = i_arrayidx201_mmul16_vt_join_q;
    assign out_c0_exi9_8_tpl = i_arrayidx292_mmul17_vt_join_q;
    assign out_c0_exi9_9_tpl = i_memcoalesce_bitcast_mmul_fpgaunique_32_mmul20_vt_join_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_mmul0 = GND_q;

endmodule
