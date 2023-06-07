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

// SystemVerilog created from conv2d3x3_i_sfc_logic_s_c0_in_for_cond140000ter618156_conv2d3x30
// SystemVerilog created on Tue Jun  6 18:48:20 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2d3x3_i_sfc_logic_s_c0_in_for_cond140000ter618156_conv2d3x30 (
    input wire [31:0] in_input_channels,
    input wire [31:0] in_input_size,
    input wire [0:0] in_intel_reserved_ffwd_2_0,
    input wire [0:0] in_intel_reserved_ffwd_4_0,
    output wire [0:0] out_c0_exi5625_0_tpl,
    output wire [0:0] out_c0_exi5625_1_tpl,
    output wire [31:0] out_c0_exi5625_2_tpl,
    output wire [31:0] out_c0_exi5625_3_tpl,
    output wire [31:0] out_c0_exi5625_4_tpl,
    output wire [0:0] out_c0_exi5625_5_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_conv2d3x311,
    input wire [0:0] in_c0_eni2617_0_tpl,
    input wire [31:0] in_c0_eni2617_1_tpl,
    input wire [31:0] in_c0_eni2617_2_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] c_i32_121_q;
    wire [33:0] i_cmp11_conv2d3x312_a;
    wire [33:0] i_cmp11_conv2d3x312_b;
    logic [33:0] i_cmp11_conv2d3x312_o;
    wire [0:0] i_cmp11_conv2d3x312_c;
    wire [32:0] i_inc50_conv2d3x310_a;
    wire [32:0] i_inc50_conv2d3x310_b;
    logic [32:0] i_inc50_conv2d3x310_o;
    wire [32:0] i_inc50_conv2d3x310_q;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp115732_conv2d3x32_out_dest_data_out_2_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_conv2d3x317_conv2d3x33_out_dest_data_out_4_0;
    wire [31:0] i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer7_conv2d3x311_out_buffer_out;
    wire [31:0] i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer13_conv2d3x38_out_buffer_out;
    wire [31:0] i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer14_conv2d3x35_out_buffer_out;
    wire [32:0] i_mul3350_conv2d3x37_a;
    wire [32:0] i_mul3350_conv2d3x37_b;
    logic [32:0] i_mul3350_conv2d3x37_o;
    wire [32:0] i_mul3350_conv2d3x37_q;
    wire [0:0] i_unnamed_conv2d3x314_q;
    wire [0:0] i_unnamed_conv2d3x34_q;
    wire [63:0] bgTrunc_i_add35_conv2d3x39_sel_x_in;
    wire [31:0] bgTrunc_i_add35_conv2d3x39_sel_x_b;
    wire [31:0] bgTrunc_i_inc50_conv2d3x310_sel_x_b;
    wire [63:0] bgTrunc_i_mul32_conv2d3x36_sel_x_in;
    wire [31:0] bgTrunc_i_mul32_conv2d3x36_sel_x_b;
    wire [31:0] bgTrunc_i_mul3350_conv2d3x37_sel_x_b;
    (* dont_merge *) reg [0:0] valid_fanout_reg0_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg1_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg2_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg3_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg4_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg5_q;
    wire [63:0] i_add35_conv2d3x39_sums_join_0_q;
    wire [50:0] i_add35_conv2d3x39_sums_align_1_q;
    wire [50:0] i_add35_conv2d3x39_sums_align_1_qint;
    wire [64:0] i_add35_conv2d3x39_sums_result_add_0_0_a;
    wire [64:0] i_add35_conv2d3x39_sums_result_add_0_0_b;
    logic [64:0] i_add35_conv2d3x39_sums_result_add_0_0_o;
    wire [64:0] i_add35_conv2d3x39_sums_result_add_0_0_q;
    wire [63:0] i_mul32_conv2d3x36_sums_join_0_q;
    wire [50:0] i_mul32_conv2d3x36_sums_align_1_q;
    wire [50:0] i_mul32_conv2d3x36_sums_align_1_qint;
    wire [64:0] i_mul32_conv2d3x36_sums_result_add_0_0_a;
    wire [64:0] i_mul32_conv2d3x36_sums_result_add_0_0_b;
    logic [64:0] i_mul32_conv2d3x36_sums_result_add_0_0_o;
    wire [64:0] i_mul32_conv2d3x36_sums_result_add_0_0_q;
    wire i_add35_conv2d3x39_im0_cma_reset;
    wire [13:0] i_add35_conv2d3x39_im0_cma_a0;
    wire [13:0] i_add35_conv2d3x39_im0_cma_c0;
    wire [27:0] i_add35_conv2d3x39_im0_cma_s0;
    wire [27:0] i_add35_conv2d3x39_im0_cma_qq;
    wire [27:0] i_add35_conv2d3x39_im0_cma_q;
    wire i_add35_conv2d3x39_im0_cma_ena0;
    wire i_add35_conv2d3x39_im0_cma_ena1;
    wire i_add35_conv2d3x39_im0_cma_ena2;
    wire i_add35_conv2d3x39_im8_cma_reset;
    wire [17:0] i_add35_conv2d3x39_im8_cma_a0;
    wire [17:0] i_add35_conv2d3x39_im8_cma_c0;
    wire [35:0] i_add35_conv2d3x39_im8_cma_s0;
    wire [35:0] i_add35_conv2d3x39_im8_cma_qq;
    wire [35:0] i_add35_conv2d3x39_im8_cma_q;
    wire i_add35_conv2d3x39_im8_cma_ena0;
    wire i_add35_conv2d3x39_im8_cma_ena1;
    wire i_add35_conv2d3x39_im8_cma_ena2;
    wire i_mul32_conv2d3x36_im0_cma_reset;
    wire [13:0] i_mul32_conv2d3x36_im0_cma_a0;
    wire [13:0] i_mul32_conv2d3x36_im0_cma_c0;
    wire [27:0] i_mul32_conv2d3x36_im0_cma_s0;
    wire [27:0] i_mul32_conv2d3x36_im0_cma_qq;
    wire [27:0] i_mul32_conv2d3x36_im0_cma_q;
    wire i_mul32_conv2d3x36_im0_cma_ena0;
    wire i_mul32_conv2d3x36_im0_cma_ena1;
    wire i_mul32_conv2d3x36_im0_cma_ena2;
    wire i_mul32_conv2d3x36_im8_cma_reset;
    wire [17:0] i_mul32_conv2d3x36_im8_cma_a0;
    wire [17:0] i_mul32_conv2d3x36_im8_cma_c0;
    wire [35:0] i_mul32_conv2d3x36_im8_cma_s0;
    wire [35:0] i_mul32_conv2d3x36_im8_cma_qq;
    wire [35:0] i_mul32_conv2d3x36_im8_cma_q;
    wire i_mul32_conv2d3x36_im8_cma_ena0;
    wire i_mul32_conv2d3x36_im8_cma_ena1;
    wire i_mul32_conv2d3x36_im8_cma_ena2;
    wire i_add35_conv2d3x39_ma3_cma_reset;
    wire [13:0] i_add35_conv2d3x39_ma3_cma_a0;
    wire [17:0] i_add35_conv2d3x39_ma3_cma_c0;
    wire [13:0] i_add35_conv2d3x39_ma3_cma_a1;
    wire [17:0] i_add35_conv2d3x39_ma3_cma_c1;
    wire [32:0] i_add35_conv2d3x39_ma3_cma_s0;
    wire [32:0] i_add35_conv2d3x39_ma3_cma_qq;
    wire [32:0] i_add35_conv2d3x39_ma3_cma_q;
    wire i_add35_conv2d3x39_ma3_cma_ena0;
    wire i_add35_conv2d3x39_ma3_cma_ena1;
    wire i_add35_conv2d3x39_ma3_cma_ena2;
    wire i_mul32_conv2d3x36_ma3_cma_reset;
    wire [13:0] i_mul32_conv2d3x36_ma3_cma_a0;
    wire [17:0] i_mul32_conv2d3x36_ma3_cma_c0;
    wire [13:0] i_mul32_conv2d3x36_ma3_cma_a1;
    wire [17:0] i_mul32_conv2d3x36_ma3_cma_c1;
    wire [32:0] i_mul32_conv2d3x36_ma3_cma_s0;
    wire [32:0] i_mul32_conv2d3x36_ma3_cma_qq;
    wire [32:0] i_mul32_conv2d3x36_ma3_cma_q;
    wire i_mul32_conv2d3x36_ma3_cma_ena0;
    wire i_mul32_conv2d3x36_ma3_cma_ena1;
    wire i_mul32_conv2d3x36_ma3_cma_ena2;
    wire [13:0] i_add35_conv2d3x39_bs2_merged_bit_select_b;
    wire [17:0] i_add35_conv2d3x39_bs2_merged_bit_select_c;
    wire [13:0] i_mul32_conv2d3x36_bs2_merged_bit_select_b;
    wire [17:0] i_mul32_conv2d3x36_bs2_merged_bit_select_c;
    wire [13:0] i_add35_conv2d3x39_bs1_merged_bit_select_b;
    wire [17:0] i_add35_conv2d3x39_bs1_merged_bit_select_c;
    wire [13:0] i_mul32_conv2d3x36_bs1_merged_bit_select_b;
    wire [17:0] i_mul32_conv2d3x36_bs1_merged_bit_select_c;
    reg [31:0] redist0_sync_together28_aunroll_x_in_c0_eni2617_1_tpl_1_q;
    reg [0:0] redist3_sync_together28_aunroll_x_in_i_valid_4_q;
    reg [0:0] redist3_sync_together28_aunroll_x_in_i_valid_4_delay_0;
    reg [0:0] redist3_sync_together28_aunroll_x_in_i_valid_4_delay_1;
    reg [0:0] redist3_sync_together28_aunroll_x_in_i_valid_4_delay_2;
    reg [0:0] redist4_sync_together28_aunroll_x_in_i_valid_7_q;
    reg [0:0] redist4_sync_together28_aunroll_x_in_i_valid_7_delay_0;
    reg [0:0] redist4_sync_together28_aunroll_x_in_i_valid_7_delay_1;
    reg [31:0] redist5_bgTrunc_i_mul32_conv2d3x36_sel_x_b_1_q;
    reg [31:0] redist7_bgTrunc_i_inc50_conv2d3x310_sel_x_b_1_q;
    reg [31:0] redist1_sync_together28_aunroll_x_in_c0_eni2617_1_tpl_7_outputreg0_q;
    wire redist1_sync_together28_aunroll_x_in_c0_eni2617_1_tpl_7_mem_reset0;
    wire [31:0] redist1_sync_together28_aunroll_x_in_c0_eni2617_1_tpl_7_mem_ia;
    wire [1:0] redist1_sync_together28_aunroll_x_in_c0_eni2617_1_tpl_7_mem_aa;
    wire [1:0] redist1_sync_together28_aunroll_x_in_c0_eni2617_1_tpl_7_mem_ab;
    wire [31:0] redist1_sync_together28_aunroll_x_in_c0_eni2617_1_tpl_7_mem_iq;
    wire [31:0] redist1_sync_together28_aunroll_x_in_c0_eni2617_1_tpl_7_mem_q;
    wire [1:0] redist1_sync_together28_aunroll_x_in_c0_eni2617_1_tpl_7_rdcnt_q;
    (* preserve *) reg [1:0] redist1_sync_together28_aunroll_x_in_c0_eni2617_1_tpl_7_rdcnt_i;
    reg [1:0] redist1_sync_together28_aunroll_x_in_c0_eni2617_1_tpl_7_wraddr_q;
    wire [2:0] redist1_sync_together28_aunroll_x_in_c0_eni2617_1_tpl_7_mem_last_q;
    wire [2:0] redist1_sync_together28_aunroll_x_in_c0_eni2617_1_tpl_7_cmp_b;
    wire [0:0] redist1_sync_together28_aunroll_x_in_c0_eni2617_1_tpl_7_cmp_q;
    (* dont_merge *) reg [0:0] redist1_sync_together28_aunroll_x_in_c0_eni2617_1_tpl_7_cmpReg_q;
    wire [0:0] redist1_sync_together28_aunroll_x_in_c0_eni2617_1_tpl_7_notEnable_q;
    wire [0:0] redist1_sync_together28_aunroll_x_in_c0_eni2617_1_tpl_7_nor_q;
    (* dont_merge *) reg [0:0] redist1_sync_together28_aunroll_x_in_c0_eni2617_1_tpl_7_sticky_ena_q;
    wire [0:0] redist1_sync_together28_aunroll_x_in_c0_eni2617_1_tpl_7_enaAnd_q;
    reg [31:0] redist2_sync_together28_aunroll_x_in_c0_eni2617_2_tpl_5_outputreg0_q;
    wire redist2_sync_together28_aunroll_x_in_c0_eni2617_2_tpl_5_mem_reset0;
    wire [31:0] redist2_sync_together28_aunroll_x_in_c0_eni2617_2_tpl_5_mem_ia;
    wire [1:0] redist2_sync_together28_aunroll_x_in_c0_eni2617_2_tpl_5_mem_aa;
    wire [1:0] redist2_sync_together28_aunroll_x_in_c0_eni2617_2_tpl_5_mem_ab;
    wire [31:0] redist2_sync_together28_aunroll_x_in_c0_eni2617_2_tpl_5_mem_iq;
    wire [31:0] redist2_sync_together28_aunroll_x_in_c0_eni2617_2_tpl_5_mem_q;
    wire [1:0] redist2_sync_together28_aunroll_x_in_c0_eni2617_2_tpl_5_rdcnt_q;
    (* preserve *) reg [1:0] redist2_sync_together28_aunroll_x_in_c0_eni2617_2_tpl_5_rdcnt_i;
    (* preserve *) reg redist2_sync_together28_aunroll_x_in_c0_eni2617_2_tpl_5_rdcnt_eq;
    reg [1:0] redist2_sync_together28_aunroll_x_in_c0_eni2617_2_tpl_5_wraddr_q;
    wire [1:0] redist2_sync_together28_aunroll_x_in_c0_eni2617_2_tpl_5_mem_last_q;
    wire [0:0] redist2_sync_together28_aunroll_x_in_c0_eni2617_2_tpl_5_cmp_q;
    (* dont_merge *) reg [0:0] redist2_sync_together28_aunroll_x_in_c0_eni2617_2_tpl_5_cmpReg_q;
    wire [0:0] redist2_sync_together28_aunroll_x_in_c0_eni2617_2_tpl_5_notEnable_q;
    wire [0:0] redist2_sync_together28_aunroll_x_in_c0_eni2617_2_tpl_5_nor_q;
    (* dont_merge *) reg [0:0] redist2_sync_together28_aunroll_x_in_c0_eni2617_2_tpl_5_sticky_ena_q;
    wire [0:0] redist2_sync_together28_aunroll_x_in_c0_eni2617_2_tpl_5_enaAnd_q;
    wire redist6_bgTrunc_i_mul32_conv2d3x36_sel_x_b_4_mem_reset0;
    wire [31:0] redist6_bgTrunc_i_mul32_conv2d3x36_sel_x_b_4_mem_ia;
    wire [0:0] redist6_bgTrunc_i_mul32_conv2d3x36_sel_x_b_4_mem_aa;
    wire [0:0] redist6_bgTrunc_i_mul32_conv2d3x36_sel_x_b_4_mem_ab;
    wire [31:0] redist6_bgTrunc_i_mul32_conv2d3x36_sel_x_b_4_mem_iq;
    wire [31:0] redist6_bgTrunc_i_mul32_conv2d3x36_sel_x_b_4_mem_q;
    wire [0:0] redist6_bgTrunc_i_mul32_conv2d3x36_sel_x_b_4_rdcnt_q;
    (* preserve *) reg [0:0] redist6_bgTrunc_i_mul32_conv2d3x36_sel_x_b_4_rdcnt_i;
    reg [0:0] redist6_bgTrunc_i_mul32_conv2d3x36_sel_x_b_4_wraddr_q;
    (* dont_merge *) reg [0:0] redist6_bgTrunc_i_mul32_conv2d3x36_sel_x_b_4_cmpReg_q;
    wire [0:0] redist6_bgTrunc_i_mul32_conv2d3x36_sel_x_b_4_notEnable_q;
    wire [0:0] redist6_bgTrunc_i_mul32_conv2d3x36_sel_x_b_4_nor_q;
    (* dont_merge *) reg [0:0] redist6_bgTrunc_i_mul32_conv2d3x36_sel_x_b_4_sticky_ena_q;
    wire [0:0] redist6_bgTrunc_i_mul32_conv2d3x36_sel_x_b_4_enaAnd_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist3_sync_together28_aunroll_x_in_i_valid_4(DELAY,90)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_sync_together28_aunroll_x_in_i_valid_4_delay_0 <= '0;
            redist3_sync_together28_aunroll_x_in_i_valid_4_delay_1 <= '0;
            redist3_sync_together28_aunroll_x_in_i_valid_4_delay_2 <= '0;
            redist3_sync_together28_aunroll_x_in_i_valid_4_q <= '0;
        end
        else
        begin
            redist3_sync_together28_aunroll_x_in_i_valid_4_delay_0 <= $unsigned(in_i_valid);
            redist3_sync_together28_aunroll_x_in_i_valid_4_delay_1 <= redist3_sync_together28_aunroll_x_in_i_valid_4_delay_0;
            redist3_sync_together28_aunroll_x_in_i_valid_4_delay_2 <= redist3_sync_together28_aunroll_x_in_i_valid_4_delay_1;
            redist3_sync_together28_aunroll_x_in_i_valid_4_q <= redist3_sync_together28_aunroll_x_in_i_valid_4_delay_2;
        end
    end

    // redist4_sync_together28_aunroll_x_in_i_valid_7(DELAY,91)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_sync_together28_aunroll_x_in_i_valid_7_delay_0 <= '0;
            redist4_sync_together28_aunroll_x_in_i_valid_7_delay_1 <= '0;
            redist4_sync_together28_aunroll_x_in_i_valid_7_q <= '0;
        end
        else
        begin
            redist4_sync_together28_aunroll_x_in_i_valid_7_delay_0 <= $unsigned(redist3_sync_together28_aunroll_x_in_i_valid_4_q);
            redist4_sync_together28_aunroll_x_in_i_valid_7_delay_1 <= redist4_sync_together28_aunroll_x_in_i_valid_7_delay_0;
            redist4_sync_together28_aunroll_x_in_i_valid_7_q <= redist4_sync_together28_aunroll_x_in_i_valid_7_delay_1;
        end
    end

    // valid_fanout_reg0(REG,37)@8 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist4_sync_together28_aunroll_x_in_i_valid_7_q);
        end
    end

    // valid_fanout_reg5(REG,42)@8 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg5_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg5_q <= $unsigned(redist4_sync_together28_aunroll_x_in_i_valid_7_q);
        end
    end

    // i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer7_conv2d3x311(BLACKBOX,17)@0
    // in in_i_dependence@9
    // in in_valid_in@9
    // out out_buffer_out@9
    // out out_valid_out@9
    conv2d3x3_i_llvm_fpga_sync_buffer_i32_in0000nnels_sync_buffer7_0 thei_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer7_conv2d3x311 (
        .in_buffer_in(in_input_channels),
        .in_i_dependence(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_buffer_out(i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer7_conv2d3x311_out_buffer_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_cmp11_conv2d3x312(COMPARE,13)@9
    assign i_cmp11_conv2d3x312_a = $unsigned({{2{redist7_bgTrunc_i_inc50_conv2d3x310_sel_x_b_1_q[31]}}, redist7_bgTrunc_i_inc50_conv2d3x310_sel_x_b_1_q});
    assign i_cmp11_conv2d3x312_b = $unsigned({{2{i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer7_conv2d3x311_out_buffer_out[31]}}, i_llvm_fpga_sync_buffer_i32_input_channels_sync_buffer7_conv2d3x311_out_buffer_out});
    assign i_cmp11_conv2d3x312_o = $unsigned($signed(i_cmp11_conv2d3x312_a) - $signed(i_cmp11_conv2d3x312_b));
    assign i_cmp11_conv2d3x312_c[0] = i_cmp11_conv2d3x312_o[33];

    // i_unnamed_conv2d3x314(LOGICAL,22)@9
    assign i_unnamed_conv2d3x314_q = i_unnamed_conv2d3x34_q & i_cmp11_conv2d3x312_c;

    // c_i32_121(CONSTANT,11)
    assign c_i32_121_q = $unsigned(32'b00000000000000000000000000000001);

    // redist1_sync_together28_aunroll_x_in_c0_eni2617_1_tpl_7_notEnable(LOGICAL,102)
    assign redist1_sync_together28_aunroll_x_in_c0_eni2617_1_tpl_7_notEnable_q = $unsigned(~ (VCC_q));

    // redist1_sync_together28_aunroll_x_in_c0_eni2617_1_tpl_7_nor(LOGICAL,103)
    assign redist1_sync_together28_aunroll_x_in_c0_eni2617_1_tpl_7_nor_q = ~ (redist1_sync_together28_aunroll_x_in_c0_eni2617_1_tpl_7_notEnable_q | redist1_sync_together28_aunroll_x_in_c0_eni2617_1_tpl_7_sticky_ena_q);

    // redist1_sync_together28_aunroll_x_in_c0_eni2617_1_tpl_7_mem_last(CONSTANT,99)
    assign redist1_sync_together28_aunroll_x_in_c0_eni2617_1_tpl_7_mem_last_q = $unsigned(3'b010);

    // redist1_sync_together28_aunroll_x_in_c0_eni2617_1_tpl_7_cmp(LOGICAL,100)
    assign redist1_sync_together28_aunroll_x_in_c0_eni2617_1_tpl_7_cmp_b = {1'b0, redist1_sync_together28_aunroll_x_in_c0_eni2617_1_tpl_7_rdcnt_q};
    assign redist1_sync_together28_aunroll_x_in_c0_eni2617_1_tpl_7_cmp_q = $unsigned(redist1_sync_together28_aunroll_x_in_c0_eni2617_1_tpl_7_mem_last_q == redist1_sync_together28_aunroll_x_in_c0_eni2617_1_tpl_7_cmp_b ? 1'b1 : 1'b0);

    // redist1_sync_together28_aunroll_x_in_c0_eni2617_1_tpl_7_cmpReg(REG,101)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together28_aunroll_x_in_c0_eni2617_1_tpl_7_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist1_sync_together28_aunroll_x_in_c0_eni2617_1_tpl_7_cmpReg_q <= $unsigned(redist1_sync_together28_aunroll_x_in_c0_eni2617_1_tpl_7_cmp_q);
        end
    end

    // redist1_sync_together28_aunroll_x_in_c0_eni2617_1_tpl_7_sticky_ena(REG,104)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together28_aunroll_x_in_c0_eni2617_1_tpl_7_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist1_sync_together28_aunroll_x_in_c0_eni2617_1_tpl_7_nor_q == 1'b1)
        begin
            redist1_sync_together28_aunroll_x_in_c0_eni2617_1_tpl_7_sticky_ena_q <= $unsigned(redist1_sync_together28_aunroll_x_in_c0_eni2617_1_tpl_7_cmpReg_q);
        end
    end

    // redist1_sync_together28_aunroll_x_in_c0_eni2617_1_tpl_7_enaAnd(LOGICAL,105)
    assign redist1_sync_together28_aunroll_x_in_c0_eni2617_1_tpl_7_enaAnd_q = redist1_sync_together28_aunroll_x_in_c0_eni2617_1_tpl_7_sticky_ena_q & VCC_q;

    // redist1_sync_together28_aunroll_x_in_c0_eni2617_1_tpl_7_rdcnt(COUNTER,97)
    // low=0, high=3, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together28_aunroll_x_in_c0_eni2617_1_tpl_7_rdcnt_i <= 2'd0;
        end
        else
        begin
            redist1_sync_together28_aunroll_x_in_c0_eni2617_1_tpl_7_rdcnt_i <= $unsigned(redist1_sync_together28_aunroll_x_in_c0_eni2617_1_tpl_7_rdcnt_i) + $unsigned(2'd1);
        end
    end
    assign redist1_sync_together28_aunroll_x_in_c0_eni2617_1_tpl_7_rdcnt_q = redist1_sync_together28_aunroll_x_in_c0_eni2617_1_tpl_7_rdcnt_i[1:0];

    // redist0_sync_together28_aunroll_x_in_c0_eni2617_1_tpl_1(DELAY,87)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_sync_together28_aunroll_x_in_c0_eni2617_1_tpl_1_q <= '0;
        end
        else
        begin
            redist0_sync_together28_aunroll_x_in_c0_eni2617_1_tpl_1_q <= $unsigned(in_c0_eni2617_1_tpl);
        end
    end

    // redist1_sync_together28_aunroll_x_in_c0_eni2617_1_tpl_7_wraddr(REG,98)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together28_aunroll_x_in_c0_eni2617_1_tpl_7_wraddr_q <= $unsigned(2'b11);
        end
        else
        begin
            redist1_sync_together28_aunroll_x_in_c0_eni2617_1_tpl_7_wraddr_q <= $unsigned(redist1_sync_together28_aunroll_x_in_c0_eni2617_1_tpl_7_rdcnt_q);
        end
    end

    // redist1_sync_together28_aunroll_x_in_c0_eni2617_1_tpl_7_mem(DUALMEM,96)
    assign redist1_sync_together28_aunroll_x_in_c0_eni2617_1_tpl_7_mem_ia = $unsigned(redist0_sync_together28_aunroll_x_in_c0_eni2617_1_tpl_1_q);
    assign redist1_sync_together28_aunroll_x_in_c0_eni2617_1_tpl_7_mem_aa = redist1_sync_together28_aunroll_x_in_c0_eni2617_1_tpl_7_wraddr_q;
    assign redist1_sync_together28_aunroll_x_in_c0_eni2617_1_tpl_7_mem_ab = redist1_sync_together28_aunroll_x_in_c0_eni2617_1_tpl_7_rdcnt_q;
    assign redist1_sync_together28_aunroll_x_in_c0_eni2617_1_tpl_7_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(2),
        .numwords_a(4),
        .width_b(32),
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
    ) redist1_sync_together28_aunroll_x_in_c0_eni2617_1_tpl_7_mem_dmem (
        .clocken1(redist1_sync_together28_aunroll_x_in_c0_eni2617_1_tpl_7_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist1_sync_together28_aunroll_x_in_c0_eni2617_1_tpl_7_mem_reset0),
        .clock1(clock),
        .address_a(redist1_sync_together28_aunroll_x_in_c0_eni2617_1_tpl_7_mem_aa),
        .data_a(redist1_sync_together28_aunroll_x_in_c0_eni2617_1_tpl_7_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist1_sync_together28_aunroll_x_in_c0_eni2617_1_tpl_7_mem_ab),
        .q_b(redist1_sync_together28_aunroll_x_in_c0_eni2617_1_tpl_7_mem_iq),
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
    assign redist1_sync_together28_aunroll_x_in_c0_eni2617_1_tpl_7_mem_q = redist1_sync_together28_aunroll_x_in_c0_eni2617_1_tpl_7_mem_iq[31:0];

    // redist1_sync_together28_aunroll_x_in_c0_eni2617_1_tpl_7_outputreg0(DELAY,95)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together28_aunroll_x_in_c0_eni2617_1_tpl_7_outputreg0_q <= '0;
        end
        else
        begin
            redist1_sync_together28_aunroll_x_in_c0_eni2617_1_tpl_7_outputreg0_q <= $unsigned(redist1_sync_together28_aunroll_x_in_c0_eni2617_1_tpl_7_mem_q);
        end
    end

    // i_inc50_conv2d3x310(ADD,14)@8
    assign i_inc50_conv2d3x310_a = {1'b0, redist1_sync_together28_aunroll_x_in_c0_eni2617_1_tpl_7_outputreg0_q};
    assign i_inc50_conv2d3x310_b = {1'b0, c_i32_121_q};
    assign i_inc50_conv2d3x310_o = $unsigned(i_inc50_conv2d3x310_a) + $unsigned(i_inc50_conv2d3x310_b);
    assign i_inc50_conv2d3x310_q = i_inc50_conv2d3x310_o[32:0];

    // bgTrunc_i_inc50_conv2d3x310_sel_x(BITSELECT,32)@8
    assign bgTrunc_i_inc50_conv2d3x310_sel_x_b = i_inc50_conv2d3x310_q[31:0];

    // redist7_bgTrunc_i_inc50_conv2d3x310_sel_x_b_1(DELAY,94)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_bgTrunc_i_inc50_conv2d3x310_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist7_bgTrunc_i_inc50_conv2d3x310_sel_x_b_1_q <= $unsigned(bgTrunc_i_inc50_conv2d3x310_sel_x_b);
        end
    end

    // valid_fanout_reg4(REG,41)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg4_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg4_q <= $unsigned(redist3_sync_together28_aunroll_x_in_i_valid_4_q);
        end
    end

    // i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer13_conv2d3x38(BLACKBOX,18)@0
    // in in_i_dependence@6
    // in in_valid_in@6
    // out out_buffer_out@6
    // out out_valid_out@6
    conv2d3x3_i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer13_0 thei_llvm_fpga_sync_buffer_i32_input_size_sync_buffer13_conv2d3x38 (
        .in_buffer_in(in_input_size),
        .in_i_dependence(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_buffer_out(i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer13_conv2d3x38_out_buffer_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_add35_conv2d3x39_bs2_merged_bit_select(BITSELECT,83)@6
    assign i_add35_conv2d3x39_bs2_merged_bit_select_b = i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer13_conv2d3x38_out_buffer_out[31:18];
    assign i_add35_conv2d3x39_bs2_merged_bit_select_c = i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer13_conv2d3x38_out_buffer_out[17:0];

    // valid_fanout_reg3(REG,40)@1 + 1
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

    // i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer14_conv2d3x35(BLACKBOX,19)@0
    // in in_i_dependence@2
    // in in_valid_in@2
    // out out_buffer_out@2
    // out out_valid_out@2
    conv2d3x3_i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer14_0 thei_llvm_fpga_sync_buffer_i32_input_size_sync_buffer14_conv2d3x35 (
        .in_buffer_in(in_input_size),
        .in_i_dependence(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_buffer_out(i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer14_conv2d3x35_out_buffer_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_mul32_conv2d3x36_bs2_merged_bit_select(BITSELECT,84)@2
    assign i_mul32_conv2d3x36_bs2_merged_bit_select_b = i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer14_conv2d3x35_out_buffer_out[31:18];
    assign i_mul32_conv2d3x36_bs2_merged_bit_select_c = i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer14_conv2d3x35_out_buffer_out[17:0];

    // i_mul32_conv2d3x36_bs1_merged_bit_select(BITSELECT,86)@2
    assign i_mul32_conv2d3x36_bs1_merged_bit_select_b = redist0_sync_together28_aunroll_x_in_c0_eni2617_1_tpl_1_q[31:18];
    assign i_mul32_conv2d3x36_bs1_merged_bit_select_c = redist0_sync_together28_aunroll_x_in_c0_eni2617_1_tpl_1_q[17:0];

    // i_mul32_conv2d3x36_ma3_cma(CHAINMULTADD,82)@2 + 3
    assign i_mul32_conv2d3x36_ma3_cma_reset = ~ (resetn);
    assign i_mul32_conv2d3x36_ma3_cma_ena0 = 1'b1;
    assign i_mul32_conv2d3x36_ma3_cma_ena1 = i_mul32_conv2d3x36_ma3_cma_ena0;
    assign i_mul32_conv2d3x36_ma3_cma_ena2 = i_mul32_conv2d3x36_ma3_cma_ena0;

    assign i_mul32_conv2d3x36_ma3_cma_a0 = i_mul32_conv2d3x36_bs1_merged_bit_select_b;
    assign i_mul32_conv2d3x36_ma3_cma_c0 = i_mul32_conv2d3x36_bs2_merged_bit_select_c;
    assign i_mul32_conv2d3x36_ma3_cma_a1 = i_mul32_conv2d3x36_bs2_merged_bit_select_b;
    assign i_mul32_conv2d3x36_ma3_cma_c1 = i_mul32_conv2d3x36_bs1_merged_bit_select_c;
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
    ) i_mul32_conv2d3x36_ma3_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul32_conv2d3x36_ma3_cma_ena2, i_mul32_conv2d3x36_ma3_cma_ena1, i_mul32_conv2d3x36_ma3_cma_ena0 }),
        .aclr({ i_mul32_conv2d3x36_ma3_cma_reset, i_mul32_conv2d3x36_ma3_cma_reset }),
        .ay(i_mul32_conv2d3x36_ma3_cma_a1),
        .by(i_mul32_conv2d3x36_ma3_cma_a0),
        .ax(i_mul32_conv2d3x36_ma3_cma_c1),
        .bx(i_mul32_conv2d3x36_ma3_cma_c0),
        .resulta(i_mul32_conv2d3x36_ma3_cma_s0),
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
    i_mul32_conv2d3x36_ma3_cma_delay ( .xin(i_mul32_conv2d3x36_ma3_cma_s0), .xout(i_mul32_conv2d3x36_ma3_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul32_conv2d3x36_ma3_cma_q = $unsigned(i_mul32_conv2d3x36_ma3_cma_qq[32:0]);

    // i_mul32_conv2d3x36_sums_align_1(BITSHIFT,74)@5
    assign i_mul32_conv2d3x36_sums_align_1_qint = { i_mul32_conv2d3x36_ma3_cma_q, 18'b000000000000000000 };
    assign i_mul32_conv2d3x36_sums_align_1_q = i_mul32_conv2d3x36_sums_align_1_qint[50:0];

    // i_mul32_conv2d3x36_im0_cma(CHAINMULTADD,79)@2 + 3
    assign i_mul32_conv2d3x36_im0_cma_reset = ~ (resetn);
    assign i_mul32_conv2d3x36_im0_cma_ena0 = 1'b1;
    assign i_mul32_conv2d3x36_im0_cma_ena1 = i_mul32_conv2d3x36_im0_cma_ena0;
    assign i_mul32_conv2d3x36_im0_cma_ena2 = i_mul32_conv2d3x36_im0_cma_ena0;

    assign i_mul32_conv2d3x36_im0_cma_a0 = i_mul32_conv2d3x36_bs1_merged_bit_select_b;
    assign i_mul32_conv2d3x36_im0_cma_c0 = i_mul32_conv2d3x36_bs2_merged_bit_select_b;
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
    ) i_mul32_conv2d3x36_im0_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul32_conv2d3x36_im0_cma_ena2, i_mul32_conv2d3x36_im0_cma_ena1, i_mul32_conv2d3x36_im0_cma_ena0 }),
        .aclr({ i_mul32_conv2d3x36_im0_cma_reset, i_mul32_conv2d3x36_im0_cma_reset }),
        .ay(i_mul32_conv2d3x36_im0_cma_a0),
        .ax(i_mul32_conv2d3x36_im0_cma_c0),
        .resulta(i_mul32_conv2d3x36_im0_cma_s0),
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
    i_mul32_conv2d3x36_im0_cma_delay ( .xin(i_mul32_conv2d3x36_im0_cma_s0), .xout(i_mul32_conv2d3x36_im0_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul32_conv2d3x36_im0_cma_q = $unsigned(i_mul32_conv2d3x36_im0_cma_qq[27:0]);

    // i_mul32_conv2d3x36_im8_cma(CHAINMULTADD,80)@2 + 3
    assign i_mul32_conv2d3x36_im8_cma_reset = ~ (resetn);
    assign i_mul32_conv2d3x36_im8_cma_ena0 = 1'b1;
    assign i_mul32_conv2d3x36_im8_cma_ena1 = i_mul32_conv2d3x36_im8_cma_ena0;
    assign i_mul32_conv2d3x36_im8_cma_ena2 = i_mul32_conv2d3x36_im8_cma_ena0;

    assign i_mul32_conv2d3x36_im8_cma_a0 = i_mul32_conv2d3x36_bs1_merged_bit_select_c;
    assign i_mul32_conv2d3x36_im8_cma_c0 = i_mul32_conv2d3x36_bs2_merged_bit_select_c;
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
    ) i_mul32_conv2d3x36_im8_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul32_conv2d3x36_im8_cma_ena2, i_mul32_conv2d3x36_im8_cma_ena1, i_mul32_conv2d3x36_im8_cma_ena0 }),
        .aclr({ i_mul32_conv2d3x36_im8_cma_reset, i_mul32_conv2d3x36_im8_cma_reset }),
        .ay(i_mul32_conv2d3x36_im8_cma_a0),
        .ax(i_mul32_conv2d3x36_im8_cma_c0),
        .resulta(i_mul32_conv2d3x36_im8_cma_s0),
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
    i_mul32_conv2d3x36_im8_cma_delay ( .xin(i_mul32_conv2d3x36_im8_cma_s0), .xout(i_mul32_conv2d3x36_im8_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul32_conv2d3x36_im8_cma_q = $unsigned(i_mul32_conv2d3x36_im8_cma_qq[35:0]);

    // i_mul32_conv2d3x36_sums_join_0(BITJOIN,73)@5
    assign i_mul32_conv2d3x36_sums_join_0_q = {i_mul32_conv2d3x36_im0_cma_q, i_mul32_conv2d3x36_im8_cma_q};

    // i_mul32_conv2d3x36_sums_result_add_0_0(ADD,76)@5
    assign i_mul32_conv2d3x36_sums_result_add_0_0_a = {1'b0, i_mul32_conv2d3x36_sums_join_0_q};
    assign i_mul32_conv2d3x36_sums_result_add_0_0_b = {14'b00000000000000, i_mul32_conv2d3x36_sums_align_1_q};
    assign i_mul32_conv2d3x36_sums_result_add_0_0_o = $unsigned(i_mul32_conv2d3x36_sums_result_add_0_0_a) + $unsigned(i_mul32_conv2d3x36_sums_result_add_0_0_b);
    assign i_mul32_conv2d3x36_sums_result_add_0_0_q = i_mul32_conv2d3x36_sums_result_add_0_0_o[64:0];

    // bgTrunc_i_mul32_conv2d3x36_sel_x(BITSELECT,33)@5
    assign bgTrunc_i_mul32_conv2d3x36_sel_x_in = i_mul32_conv2d3x36_sums_result_add_0_0_q[63:0];
    assign bgTrunc_i_mul32_conv2d3x36_sel_x_b = bgTrunc_i_mul32_conv2d3x36_sel_x_in[31:0];

    // redist5_bgTrunc_i_mul32_conv2d3x36_sel_x_b_1(DELAY,92)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_bgTrunc_i_mul32_conv2d3x36_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist5_bgTrunc_i_mul32_conv2d3x36_sel_x_b_1_q <= $unsigned(bgTrunc_i_mul32_conv2d3x36_sel_x_b);
        end
    end

    // redist2_sync_together28_aunroll_x_in_c0_eni2617_2_tpl_5_notEnable(LOGICAL,113)
    assign redist2_sync_together28_aunroll_x_in_c0_eni2617_2_tpl_5_notEnable_q = $unsigned(~ (VCC_q));

    // redist2_sync_together28_aunroll_x_in_c0_eni2617_2_tpl_5_nor(LOGICAL,114)
    assign redist2_sync_together28_aunroll_x_in_c0_eni2617_2_tpl_5_nor_q = ~ (redist2_sync_together28_aunroll_x_in_c0_eni2617_2_tpl_5_notEnable_q | redist2_sync_together28_aunroll_x_in_c0_eni2617_2_tpl_5_sticky_ena_q);

    // redist2_sync_together28_aunroll_x_in_c0_eni2617_2_tpl_5_mem_last(CONSTANT,110)
    assign redist2_sync_together28_aunroll_x_in_c0_eni2617_2_tpl_5_mem_last_q = $unsigned(2'b01);

    // redist2_sync_together28_aunroll_x_in_c0_eni2617_2_tpl_5_cmp(LOGICAL,111)
    assign redist2_sync_together28_aunroll_x_in_c0_eni2617_2_tpl_5_cmp_q = $unsigned(redist2_sync_together28_aunroll_x_in_c0_eni2617_2_tpl_5_mem_last_q == redist2_sync_together28_aunroll_x_in_c0_eni2617_2_tpl_5_rdcnt_q ? 1'b1 : 1'b0);

    // redist2_sync_together28_aunroll_x_in_c0_eni2617_2_tpl_5_cmpReg(REG,112)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_sync_together28_aunroll_x_in_c0_eni2617_2_tpl_5_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist2_sync_together28_aunroll_x_in_c0_eni2617_2_tpl_5_cmpReg_q <= $unsigned(redist2_sync_together28_aunroll_x_in_c0_eni2617_2_tpl_5_cmp_q);
        end
    end

    // redist2_sync_together28_aunroll_x_in_c0_eni2617_2_tpl_5_sticky_ena(REG,115)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_sync_together28_aunroll_x_in_c0_eni2617_2_tpl_5_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist2_sync_together28_aunroll_x_in_c0_eni2617_2_tpl_5_nor_q == 1'b1)
        begin
            redist2_sync_together28_aunroll_x_in_c0_eni2617_2_tpl_5_sticky_ena_q <= $unsigned(redist2_sync_together28_aunroll_x_in_c0_eni2617_2_tpl_5_cmpReg_q);
        end
    end

    // redist2_sync_together28_aunroll_x_in_c0_eni2617_2_tpl_5_enaAnd(LOGICAL,116)
    assign redist2_sync_together28_aunroll_x_in_c0_eni2617_2_tpl_5_enaAnd_q = redist2_sync_together28_aunroll_x_in_c0_eni2617_2_tpl_5_sticky_ena_q & VCC_q;

    // redist2_sync_together28_aunroll_x_in_c0_eni2617_2_tpl_5_rdcnt(COUNTER,108)
    // low=0, high=2, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_sync_together28_aunroll_x_in_c0_eni2617_2_tpl_5_rdcnt_i <= 2'd0;
            redist2_sync_together28_aunroll_x_in_c0_eni2617_2_tpl_5_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist2_sync_together28_aunroll_x_in_c0_eni2617_2_tpl_5_rdcnt_i == 2'd1)
            begin
                redist2_sync_together28_aunroll_x_in_c0_eni2617_2_tpl_5_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist2_sync_together28_aunroll_x_in_c0_eni2617_2_tpl_5_rdcnt_eq <= 1'b0;
            end
            if (redist2_sync_together28_aunroll_x_in_c0_eni2617_2_tpl_5_rdcnt_eq == 1'b1)
            begin
                redist2_sync_together28_aunroll_x_in_c0_eni2617_2_tpl_5_rdcnt_i <= $unsigned(redist2_sync_together28_aunroll_x_in_c0_eni2617_2_tpl_5_rdcnt_i) + $unsigned(2'd2);
            end
            else
            begin
                redist2_sync_together28_aunroll_x_in_c0_eni2617_2_tpl_5_rdcnt_i <= $unsigned(redist2_sync_together28_aunroll_x_in_c0_eni2617_2_tpl_5_rdcnt_i) + $unsigned(2'd1);
            end
        end
    end
    assign redist2_sync_together28_aunroll_x_in_c0_eni2617_2_tpl_5_rdcnt_q = redist2_sync_together28_aunroll_x_in_c0_eni2617_2_tpl_5_rdcnt_i[1:0];

    // redist2_sync_together28_aunroll_x_in_c0_eni2617_2_tpl_5_wraddr(REG,109)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_sync_together28_aunroll_x_in_c0_eni2617_2_tpl_5_wraddr_q <= $unsigned(2'b10);
        end
        else
        begin
            redist2_sync_together28_aunroll_x_in_c0_eni2617_2_tpl_5_wraddr_q <= $unsigned(redist2_sync_together28_aunroll_x_in_c0_eni2617_2_tpl_5_rdcnt_q);
        end
    end

    // redist2_sync_together28_aunroll_x_in_c0_eni2617_2_tpl_5_mem(DUALMEM,107)
    assign redist2_sync_together28_aunroll_x_in_c0_eni2617_2_tpl_5_mem_ia = $unsigned(in_c0_eni2617_2_tpl);
    assign redist2_sync_together28_aunroll_x_in_c0_eni2617_2_tpl_5_mem_aa = redist2_sync_together28_aunroll_x_in_c0_eni2617_2_tpl_5_wraddr_q;
    assign redist2_sync_together28_aunroll_x_in_c0_eni2617_2_tpl_5_mem_ab = redist2_sync_together28_aunroll_x_in_c0_eni2617_2_tpl_5_rdcnt_q;
    assign redist2_sync_together28_aunroll_x_in_c0_eni2617_2_tpl_5_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(2),
        .numwords_a(3),
        .width_b(32),
        .widthad_b(2),
        .numwords_b(3),
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
    ) redist2_sync_together28_aunroll_x_in_c0_eni2617_2_tpl_5_mem_dmem (
        .clocken1(redist2_sync_together28_aunroll_x_in_c0_eni2617_2_tpl_5_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist2_sync_together28_aunroll_x_in_c0_eni2617_2_tpl_5_mem_reset0),
        .clock1(clock),
        .address_a(redist2_sync_together28_aunroll_x_in_c0_eni2617_2_tpl_5_mem_aa),
        .data_a(redist2_sync_together28_aunroll_x_in_c0_eni2617_2_tpl_5_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist2_sync_together28_aunroll_x_in_c0_eni2617_2_tpl_5_mem_ab),
        .q_b(redist2_sync_together28_aunroll_x_in_c0_eni2617_2_tpl_5_mem_iq),
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
    assign redist2_sync_together28_aunroll_x_in_c0_eni2617_2_tpl_5_mem_q = redist2_sync_together28_aunroll_x_in_c0_eni2617_2_tpl_5_mem_iq[31:0];

    // redist2_sync_together28_aunroll_x_in_c0_eni2617_2_tpl_5_outputreg0(DELAY,106)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_sync_together28_aunroll_x_in_c0_eni2617_2_tpl_5_outputreg0_q <= '0;
        end
        else
        begin
            redist2_sync_together28_aunroll_x_in_c0_eni2617_2_tpl_5_outputreg0_q <= $unsigned(redist2_sync_together28_aunroll_x_in_c0_eni2617_2_tpl_5_mem_q);
        end
    end

    // i_mul3350_conv2d3x37(ADD,21)@6
    assign i_mul3350_conv2d3x37_a = {1'b0, redist2_sync_together28_aunroll_x_in_c0_eni2617_2_tpl_5_outputreg0_q};
    assign i_mul3350_conv2d3x37_b = {1'b0, redist5_bgTrunc_i_mul32_conv2d3x36_sel_x_b_1_q};
    assign i_mul3350_conv2d3x37_o = $unsigned(i_mul3350_conv2d3x37_a) + $unsigned(i_mul3350_conv2d3x37_b);
    assign i_mul3350_conv2d3x37_q = i_mul3350_conv2d3x37_o[32:0];

    // bgTrunc_i_mul3350_conv2d3x37_sel_x(BITSELECT,34)@6
    assign bgTrunc_i_mul3350_conv2d3x37_sel_x_b = i_mul3350_conv2d3x37_q[31:0];

    // i_add35_conv2d3x39_bs1_merged_bit_select(BITSELECT,85)@6
    assign i_add35_conv2d3x39_bs1_merged_bit_select_b = bgTrunc_i_mul3350_conv2d3x37_sel_x_b[31:18];
    assign i_add35_conv2d3x39_bs1_merged_bit_select_c = bgTrunc_i_mul3350_conv2d3x37_sel_x_b[17:0];

    // i_add35_conv2d3x39_ma3_cma(CHAINMULTADD,81)@6 + 3
    assign i_add35_conv2d3x39_ma3_cma_reset = ~ (resetn);
    assign i_add35_conv2d3x39_ma3_cma_ena0 = 1'b1;
    assign i_add35_conv2d3x39_ma3_cma_ena1 = i_add35_conv2d3x39_ma3_cma_ena0;
    assign i_add35_conv2d3x39_ma3_cma_ena2 = i_add35_conv2d3x39_ma3_cma_ena0;

    assign i_add35_conv2d3x39_ma3_cma_a0 = i_add35_conv2d3x39_bs1_merged_bit_select_b;
    assign i_add35_conv2d3x39_ma3_cma_c0 = i_add35_conv2d3x39_bs2_merged_bit_select_c;
    assign i_add35_conv2d3x39_ma3_cma_a1 = i_add35_conv2d3x39_bs2_merged_bit_select_b;
    assign i_add35_conv2d3x39_ma3_cma_c1 = i_add35_conv2d3x39_bs1_merged_bit_select_c;
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
    ) i_add35_conv2d3x39_ma3_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_add35_conv2d3x39_ma3_cma_ena2, i_add35_conv2d3x39_ma3_cma_ena1, i_add35_conv2d3x39_ma3_cma_ena0 }),
        .aclr({ i_add35_conv2d3x39_ma3_cma_reset, i_add35_conv2d3x39_ma3_cma_reset }),
        .ay(i_add35_conv2d3x39_ma3_cma_a1),
        .by(i_add35_conv2d3x39_ma3_cma_a0),
        .ax(i_add35_conv2d3x39_ma3_cma_c1),
        .bx(i_add35_conv2d3x39_ma3_cma_c0),
        .resulta(i_add35_conv2d3x39_ma3_cma_s0),
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
    i_add35_conv2d3x39_ma3_cma_delay ( .xin(i_add35_conv2d3x39_ma3_cma_s0), .xout(i_add35_conv2d3x39_ma3_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_add35_conv2d3x39_ma3_cma_q = $unsigned(i_add35_conv2d3x39_ma3_cma_qq[32:0]);

    // i_add35_conv2d3x39_sums_align_1(BITSHIFT,59)@9
    assign i_add35_conv2d3x39_sums_align_1_qint = { i_add35_conv2d3x39_ma3_cma_q, 18'b000000000000000000 };
    assign i_add35_conv2d3x39_sums_align_1_q = i_add35_conv2d3x39_sums_align_1_qint[50:0];

    // i_add35_conv2d3x39_im0_cma(CHAINMULTADD,77)@6 + 3
    assign i_add35_conv2d3x39_im0_cma_reset = ~ (resetn);
    assign i_add35_conv2d3x39_im0_cma_ena0 = 1'b1;
    assign i_add35_conv2d3x39_im0_cma_ena1 = i_add35_conv2d3x39_im0_cma_ena0;
    assign i_add35_conv2d3x39_im0_cma_ena2 = i_add35_conv2d3x39_im0_cma_ena0;

    assign i_add35_conv2d3x39_im0_cma_a0 = i_add35_conv2d3x39_bs1_merged_bit_select_b;
    assign i_add35_conv2d3x39_im0_cma_c0 = i_add35_conv2d3x39_bs2_merged_bit_select_b;
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
    ) i_add35_conv2d3x39_im0_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_add35_conv2d3x39_im0_cma_ena2, i_add35_conv2d3x39_im0_cma_ena1, i_add35_conv2d3x39_im0_cma_ena0 }),
        .aclr({ i_add35_conv2d3x39_im0_cma_reset, i_add35_conv2d3x39_im0_cma_reset }),
        .ay(i_add35_conv2d3x39_im0_cma_a0),
        .ax(i_add35_conv2d3x39_im0_cma_c0),
        .resulta(i_add35_conv2d3x39_im0_cma_s0),
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
    i_add35_conv2d3x39_im0_cma_delay ( .xin(i_add35_conv2d3x39_im0_cma_s0), .xout(i_add35_conv2d3x39_im0_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_add35_conv2d3x39_im0_cma_q = $unsigned(i_add35_conv2d3x39_im0_cma_qq[27:0]);

    // i_add35_conv2d3x39_im8_cma(CHAINMULTADD,78)@6 + 3
    assign i_add35_conv2d3x39_im8_cma_reset = ~ (resetn);
    assign i_add35_conv2d3x39_im8_cma_ena0 = 1'b1;
    assign i_add35_conv2d3x39_im8_cma_ena1 = i_add35_conv2d3x39_im8_cma_ena0;
    assign i_add35_conv2d3x39_im8_cma_ena2 = i_add35_conv2d3x39_im8_cma_ena0;

    assign i_add35_conv2d3x39_im8_cma_a0 = i_add35_conv2d3x39_bs1_merged_bit_select_c;
    assign i_add35_conv2d3x39_im8_cma_c0 = i_add35_conv2d3x39_bs2_merged_bit_select_c;
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
    ) i_add35_conv2d3x39_im8_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_add35_conv2d3x39_im8_cma_ena2, i_add35_conv2d3x39_im8_cma_ena1, i_add35_conv2d3x39_im8_cma_ena0 }),
        .aclr({ i_add35_conv2d3x39_im8_cma_reset, i_add35_conv2d3x39_im8_cma_reset }),
        .ay(i_add35_conv2d3x39_im8_cma_a0),
        .ax(i_add35_conv2d3x39_im8_cma_c0),
        .resulta(i_add35_conv2d3x39_im8_cma_s0),
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
    i_add35_conv2d3x39_im8_cma_delay ( .xin(i_add35_conv2d3x39_im8_cma_s0), .xout(i_add35_conv2d3x39_im8_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_add35_conv2d3x39_im8_cma_q = $unsigned(i_add35_conv2d3x39_im8_cma_qq[35:0]);

    // i_add35_conv2d3x39_sums_join_0(BITJOIN,58)@9
    assign i_add35_conv2d3x39_sums_join_0_q = {i_add35_conv2d3x39_im0_cma_q, i_add35_conv2d3x39_im8_cma_q};

    // i_add35_conv2d3x39_sums_result_add_0_0(ADD,61)@9
    assign i_add35_conv2d3x39_sums_result_add_0_0_a = {1'b0, i_add35_conv2d3x39_sums_join_0_q};
    assign i_add35_conv2d3x39_sums_result_add_0_0_b = {14'b00000000000000, i_add35_conv2d3x39_sums_align_1_q};
    assign i_add35_conv2d3x39_sums_result_add_0_0_o = $unsigned(i_add35_conv2d3x39_sums_result_add_0_0_a) + $unsigned(i_add35_conv2d3x39_sums_result_add_0_0_b);
    assign i_add35_conv2d3x39_sums_result_add_0_0_q = i_add35_conv2d3x39_sums_result_add_0_0_o[64:0];

    // bgTrunc_i_add35_conv2d3x39_sel_x(BITSELECT,31)@9
    assign bgTrunc_i_add35_conv2d3x39_sel_x_in = i_add35_conv2d3x39_sums_result_add_0_0_q[63:0];
    assign bgTrunc_i_add35_conv2d3x39_sel_x_b = bgTrunc_i_add35_conv2d3x39_sel_x_in[31:0];

    // redist6_bgTrunc_i_mul32_conv2d3x36_sel_x_b_4_notEnable(LOGICAL,121)
    assign redist6_bgTrunc_i_mul32_conv2d3x36_sel_x_b_4_notEnable_q = $unsigned(~ (VCC_q));

    // redist6_bgTrunc_i_mul32_conv2d3x36_sel_x_b_4_nor(LOGICAL,122)
    assign redist6_bgTrunc_i_mul32_conv2d3x36_sel_x_b_4_nor_q = ~ (redist6_bgTrunc_i_mul32_conv2d3x36_sel_x_b_4_notEnable_q | redist6_bgTrunc_i_mul32_conv2d3x36_sel_x_b_4_sticky_ena_q);

    // redist6_bgTrunc_i_mul32_conv2d3x36_sel_x_b_4_cmpReg(REG,120)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_bgTrunc_i_mul32_conv2d3x36_sel_x_b_4_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist6_bgTrunc_i_mul32_conv2d3x36_sel_x_b_4_cmpReg_q <= $unsigned(VCC_q);
        end
    end

    // redist6_bgTrunc_i_mul32_conv2d3x36_sel_x_b_4_sticky_ena(REG,123)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_bgTrunc_i_mul32_conv2d3x36_sel_x_b_4_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist6_bgTrunc_i_mul32_conv2d3x36_sel_x_b_4_nor_q == 1'b1)
        begin
            redist6_bgTrunc_i_mul32_conv2d3x36_sel_x_b_4_sticky_ena_q <= $unsigned(redist6_bgTrunc_i_mul32_conv2d3x36_sel_x_b_4_cmpReg_q);
        end
    end

    // redist6_bgTrunc_i_mul32_conv2d3x36_sel_x_b_4_enaAnd(LOGICAL,124)
    assign redist6_bgTrunc_i_mul32_conv2d3x36_sel_x_b_4_enaAnd_q = redist6_bgTrunc_i_mul32_conv2d3x36_sel_x_b_4_sticky_ena_q & VCC_q;

    // redist6_bgTrunc_i_mul32_conv2d3x36_sel_x_b_4_rdcnt(COUNTER,118)
    // low=0, high=1, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_bgTrunc_i_mul32_conv2d3x36_sel_x_b_4_rdcnt_i <= 1'd0;
        end
        else
        begin
            redist6_bgTrunc_i_mul32_conv2d3x36_sel_x_b_4_rdcnt_i <= $unsigned(redist6_bgTrunc_i_mul32_conv2d3x36_sel_x_b_4_rdcnt_i) + $unsigned(1'd1);
        end
    end
    assign redist6_bgTrunc_i_mul32_conv2d3x36_sel_x_b_4_rdcnt_q = redist6_bgTrunc_i_mul32_conv2d3x36_sel_x_b_4_rdcnt_i[0:0];

    // redist6_bgTrunc_i_mul32_conv2d3x36_sel_x_b_4_wraddr(REG,119)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_bgTrunc_i_mul32_conv2d3x36_sel_x_b_4_wraddr_q <= $unsigned(1'b1);
        end
        else
        begin
            redist6_bgTrunc_i_mul32_conv2d3x36_sel_x_b_4_wraddr_q <= $unsigned(redist6_bgTrunc_i_mul32_conv2d3x36_sel_x_b_4_rdcnt_q);
        end
    end

    // redist6_bgTrunc_i_mul32_conv2d3x36_sel_x_b_4_mem(DUALMEM,117)
    assign redist6_bgTrunc_i_mul32_conv2d3x36_sel_x_b_4_mem_ia = $unsigned(redist5_bgTrunc_i_mul32_conv2d3x36_sel_x_b_1_q);
    assign redist6_bgTrunc_i_mul32_conv2d3x36_sel_x_b_4_mem_aa = redist6_bgTrunc_i_mul32_conv2d3x36_sel_x_b_4_wraddr_q;
    assign redist6_bgTrunc_i_mul32_conv2d3x36_sel_x_b_4_mem_ab = redist6_bgTrunc_i_mul32_conv2d3x36_sel_x_b_4_rdcnt_q;
    assign redist6_bgTrunc_i_mul32_conv2d3x36_sel_x_b_4_mem_reset0 = ~ (resetn);
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
    ) redist6_bgTrunc_i_mul32_conv2d3x36_sel_x_b_4_mem_dmem (
        .clocken1(redist6_bgTrunc_i_mul32_conv2d3x36_sel_x_b_4_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist6_bgTrunc_i_mul32_conv2d3x36_sel_x_b_4_mem_reset0),
        .clock1(clock),
        .address_a(redist6_bgTrunc_i_mul32_conv2d3x36_sel_x_b_4_mem_aa),
        .data_a(redist6_bgTrunc_i_mul32_conv2d3x36_sel_x_b_4_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist6_bgTrunc_i_mul32_conv2d3x36_sel_x_b_4_mem_ab),
        .q_b(redist6_bgTrunc_i_mul32_conv2d3x36_sel_x_b_4_mem_iq),
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
    assign redist6_bgTrunc_i_mul32_conv2d3x36_sel_x_b_4_mem_q = redist6_bgTrunc_i_mul32_conv2d3x36_sel_x_b_4_mem_iq[31:0];

    // valid_fanout_reg1(REG,38)@8 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg1_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg1_q <= $unsigned(redist4_sync_together28_aunroll_x_in_i_valid_7_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i1_cmp115732_conv2d3x32(BLACKBOX,15)@9
    conv2d3x3_i_llvm_fpga_ffwd_dest_i1_cmp115732_0 thei_llvm_fpga_ffwd_dest_i1_cmp115732_conv2d3x32 (
        .in_intel_reserved_ffwd_2_0(in_intel_reserved_ffwd_2_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_dest_data_out_2_0(i_llvm_fpga_ffwd_dest_i1_cmp115732_conv2d3x32_out_dest_data_out_2_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg2(REG,39)@8 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg2_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg2_q <= $unsigned(redist4_sync_together28_aunroll_x_in_i_valid_7_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i1_unnamed_conv2d3x317_conv2d3x33(BLACKBOX,16)@9
    conv2d3x3_i_llvm_fpga_ffwd_dest_i1_unnamed_17_conv2d3x30 thei_llvm_fpga_ffwd_dest_i1_unnamed_conv2d3x317_conv2d3x33 (
        .in_intel_reserved_ffwd_4_0(in_intel_reserved_ffwd_4_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_dest_data_out_4_0(i_llvm_fpga_ffwd_dest_i1_unnamed_conv2d3x317_conv2d3x33_out_dest_data_out_4_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_conv2d3x34(LOGICAL,23)@9
    assign i_unnamed_conv2d3x34_q = i_llvm_fpga_ffwd_dest_i1_unnamed_conv2d3x317_conv2d3x33_out_dest_data_out_4_0 & i_llvm_fpga_ffwd_dest_i1_cmp115732_conv2d3x32_out_dest_data_out_2_0;

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // sync_out_aunroll_x(GPOUT,35)@9
    assign out_c0_exi5625_0_tpl = GND_q;
    assign out_c0_exi5625_1_tpl = i_unnamed_conv2d3x34_q;
    assign out_c0_exi5625_2_tpl = redist6_bgTrunc_i_mul32_conv2d3x36_sel_x_b_4_mem_q;
    assign out_c0_exi5625_3_tpl = bgTrunc_i_add35_conv2d3x39_sel_x_b;
    assign out_c0_exi5625_4_tpl = redist7_bgTrunc_i_inc50_conv2d3x310_sel_x_b_1_q;
    assign out_c0_exi5625_5_tpl = i_unnamed_conv2d3x314_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_conv2d3x311 = GND_q;

endmodule
