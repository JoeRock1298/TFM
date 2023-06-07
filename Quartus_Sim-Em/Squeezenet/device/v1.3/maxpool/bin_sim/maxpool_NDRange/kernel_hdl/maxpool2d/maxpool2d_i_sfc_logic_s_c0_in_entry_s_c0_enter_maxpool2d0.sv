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

// SystemVerilog created from maxpool2d_i_sfc_logic_s_c0_in_entry_s_c0_enter_maxpool2d0
// SystemVerilog created on Sat Jun  3 12:58:36 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module maxpool2d_i_sfc_logic_s_c0_in_entry_s_c0_enter_maxpool2d0 (
    input wire [63:0] in_input_im,
    input wire [31:0] in_input_size,
    input wire [63:0] in_output_im,
    input wire [31:0] in_output_size,
    output wire [0:0] out_c0_exi4_0_tpl,
    output wire [63:0] out_c0_exi4_1_tpl,
    output wire [63:0] out_c0_exi4_2_tpl,
    output wire [0:0] out_c0_exi4_3_tpl,
    output wire [0:0] out_c0_exi4_4_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_maxpool2d0,
    input wire [0:0] in_c0_eni1_0_tpl,
    input wire [63:0] in_c0_eni1_1_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [1:0] i_add_ptr1_maxpool2d8_vt_const_1_q;
    wire [63:0] i_add_ptr1_maxpool2d8_vt_join_q;
    wire [61:0] i_add_ptr1_maxpool2d8_vt_select_63_b;
    wire [63:0] i_add_ptr52_maxpool2d14_vt_join_q;
    wire [61:0] i_add_ptr52_maxpool2d14_vt_select_63_b;
    wire [33:0] i_cmp37_maxpool2d16_a;
    wire [33:0] i_cmp37_maxpool2d16_b;
    logic [33:0] i_cmp37_maxpool2d16_o;
    wire [0:0] i_cmp37_maxpool2d16_c;
    wire [31:0] i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer1_maxpool2d3_out_buffer_out;
    wire [31:0] i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer3_maxpool2d9_out_buffer_out;
    wire [31:0] i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer_maxpool2d15_out_buffer_out;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer_maxpool2d7_out_buffer_out;
    wire [9:0] i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer_maxpool2d7_vt_const_9_q;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer_maxpool2d7_vt_join_q;
    wire [53:0] i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer_maxpool2d7_vt_select_63_b;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_maxpool2d13_out_buffer_out;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_maxpool2d13_vt_join_q;
    wire [53:0] i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_maxpool2d13_vt_select_63_b;
    wire [0:0] i_unnamed_maxpool2d18_q;
    wire [63:0] bgTrunc_i_mul1_maxpool2d5_sel_x_in;
    wire [31:0] bgTrunc_i_mul1_maxpool2d5_sel_x_b;
    wire [63:0] bgTrunc_i_mul2_maxpool2d10_sel_x_in;
    wire [31:0] bgTrunc_i_mul2_maxpool2d10_sel_x_b;
    wire [63:0] bgTrunc_i_mul3_maxpool2d11_sel_x_in;
    wire [31:0] bgTrunc_i_mul3_maxpool2d11_sel_x_b;
    wire [63:0] bgTrunc_i_mul_maxpool2d4_sel_x_in;
    wire [31:0] bgTrunc_i_mul_maxpool2d4_sel_x_b;
    wire [31:0] c_i32_025_recast_x_q;
    wire [64:0] i_add_ptr1_maxpool2d0_add_x_a;
    wire [64:0] i_add_ptr1_maxpool2d0_add_x_b;
    logic [64:0] i_add_ptr1_maxpool2d0_add_x_o;
    wire [64:0] i_add_ptr1_maxpool2d0_add_x_q;
    wire [61:0] i_add_ptr1_maxpool2d0_narrow_x_b;
    wire [63:0] i_add_ptr1_maxpool2d0_shift_join_x_q;
    wire [63:0] i_add_ptr1_maxpool2d0_dupName_0_trunc_sel_x_b;
    wire [64:0] i_add_ptr52_maxpool2d0_add_x_a;
    wire [64:0] i_add_ptr52_maxpool2d0_add_x_b;
    logic [64:0] i_add_ptr52_maxpool2d0_add_x_o;
    wire [64:0] i_add_ptr52_maxpool2d0_add_x_q;
    wire [61:0] i_add_ptr52_maxpool2d0_narrow_x_b;
    wire [63:0] i_add_ptr52_maxpool2d0_shift_join_x_q;
    wire [63:0] i_add_ptr52_maxpool2d0_dupName_0_trunc_sel_x_b;
    wire [31:0] i_conv_maxpool2d2_sel_x_b;
    wire [63:0] i_idx_ext4_maxpool2d12_sel_x_b;
    wire [63:0] i_idx_ext_maxpool2d6_sel_x_b;
    (* dont_merge *) reg [0:0] valid_fanout_reg0_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg1_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg2_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg3_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg4_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg5_q;
    wire [63:0] i_mul1_maxpool2d5_sums_join_0_q;
    wire [50:0] i_mul1_maxpool2d5_sums_align_1_q;
    wire [50:0] i_mul1_maxpool2d5_sums_align_1_qint;
    wire [64:0] i_mul1_maxpool2d5_sums_result_add_0_0_a;
    wire [64:0] i_mul1_maxpool2d5_sums_result_add_0_0_b;
    logic [64:0] i_mul1_maxpool2d5_sums_result_add_0_0_o;
    wire [64:0] i_mul1_maxpool2d5_sums_result_add_0_0_q;
    wire [63:0] i_mul2_maxpool2d10_sums_join_0_q;
    wire [50:0] i_mul2_maxpool2d10_sums_align_1_q;
    wire [50:0] i_mul2_maxpool2d10_sums_align_1_qint;
    wire [64:0] i_mul2_maxpool2d10_sums_result_add_0_0_a;
    wire [64:0] i_mul2_maxpool2d10_sums_result_add_0_0_b;
    logic [64:0] i_mul2_maxpool2d10_sums_result_add_0_0_o;
    wire [64:0] i_mul2_maxpool2d10_sums_result_add_0_0_q;
    wire [63:0] i_mul3_maxpool2d11_sums_join_0_q;
    wire [50:0] i_mul3_maxpool2d11_sums_align_1_q;
    wire [50:0] i_mul3_maxpool2d11_sums_align_1_qint;
    wire [64:0] i_mul3_maxpool2d11_sums_result_add_0_0_a;
    wire [64:0] i_mul3_maxpool2d11_sums_result_add_0_0_b;
    logic [64:0] i_mul3_maxpool2d11_sums_result_add_0_0_o;
    wire [64:0] i_mul3_maxpool2d11_sums_result_add_0_0_q;
    wire [63:0] i_mul_maxpool2d4_sums_join_0_q;
    wire [50:0] i_mul_maxpool2d4_sums_align_1_q;
    wire [50:0] i_mul_maxpool2d4_sums_align_1_qint;
    wire [64:0] i_mul_maxpool2d4_sums_result_add_0_0_a;
    wire [64:0] i_mul_maxpool2d4_sums_result_add_0_0_b;
    logic [64:0] i_mul_maxpool2d4_sums_result_add_0_0_o;
    wire [64:0] i_mul_maxpool2d4_sums_result_add_0_0_q;
    wire i_mul1_maxpool2d5_im0_cma_reset;
    wire [13:0] i_mul1_maxpool2d5_im0_cma_a0;
    wire [13:0] i_mul1_maxpool2d5_im0_cma_c0;
    wire [27:0] i_mul1_maxpool2d5_im0_cma_s0;
    wire [27:0] i_mul1_maxpool2d5_im0_cma_qq;
    wire [27:0] i_mul1_maxpool2d5_im0_cma_q;
    wire i_mul1_maxpool2d5_im0_cma_ena0;
    wire i_mul1_maxpool2d5_im0_cma_ena1;
    wire i_mul1_maxpool2d5_im0_cma_ena2;
    wire i_mul1_maxpool2d5_im8_cma_reset;
    wire [17:0] i_mul1_maxpool2d5_im8_cma_a0;
    wire [17:0] i_mul1_maxpool2d5_im8_cma_c0;
    wire [35:0] i_mul1_maxpool2d5_im8_cma_s0;
    wire [35:0] i_mul1_maxpool2d5_im8_cma_qq;
    wire [35:0] i_mul1_maxpool2d5_im8_cma_q;
    wire i_mul1_maxpool2d5_im8_cma_ena0;
    wire i_mul1_maxpool2d5_im8_cma_ena1;
    wire i_mul1_maxpool2d5_im8_cma_ena2;
    wire i_mul2_maxpool2d10_im0_cma_reset;
    wire [13:0] i_mul2_maxpool2d10_im0_cma_a0;
    wire [13:0] i_mul2_maxpool2d10_im0_cma_c0;
    wire [27:0] i_mul2_maxpool2d10_im0_cma_s0;
    wire [27:0] i_mul2_maxpool2d10_im0_cma_qq;
    wire [27:0] i_mul2_maxpool2d10_im0_cma_q;
    wire i_mul2_maxpool2d10_im0_cma_ena0;
    wire i_mul2_maxpool2d10_im0_cma_ena1;
    wire i_mul2_maxpool2d10_im0_cma_ena2;
    wire i_mul2_maxpool2d10_im8_cma_reset;
    wire [17:0] i_mul2_maxpool2d10_im8_cma_a0;
    wire [17:0] i_mul2_maxpool2d10_im8_cma_c0;
    wire [35:0] i_mul2_maxpool2d10_im8_cma_s0;
    wire [35:0] i_mul2_maxpool2d10_im8_cma_qq;
    wire [35:0] i_mul2_maxpool2d10_im8_cma_q;
    wire i_mul2_maxpool2d10_im8_cma_ena0;
    wire i_mul2_maxpool2d10_im8_cma_ena1;
    wire i_mul2_maxpool2d10_im8_cma_ena2;
    wire i_mul3_maxpool2d11_im0_cma_reset;
    wire [13:0] i_mul3_maxpool2d11_im0_cma_a0;
    wire [13:0] i_mul3_maxpool2d11_im0_cma_c0;
    wire [27:0] i_mul3_maxpool2d11_im0_cma_s0;
    wire [27:0] i_mul3_maxpool2d11_im0_cma_qq;
    wire [27:0] i_mul3_maxpool2d11_im0_cma_q;
    wire i_mul3_maxpool2d11_im0_cma_ena0;
    wire i_mul3_maxpool2d11_im0_cma_ena1;
    wire i_mul3_maxpool2d11_im0_cma_ena2;
    wire i_mul3_maxpool2d11_im8_cma_reset;
    wire [17:0] i_mul3_maxpool2d11_im8_cma_a0;
    wire [17:0] i_mul3_maxpool2d11_im8_cma_c0;
    wire [35:0] i_mul3_maxpool2d11_im8_cma_s0;
    wire [35:0] i_mul3_maxpool2d11_im8_cma_qq;
    wire [35:0] i_mul3_maxpool2d11_im8_cma_q;
    wire i_mul3_maxpool2d11_im8_cma_ena0;
    wire i_mul3_maxpool2d11_im8_cma_ena1;
    wire i_mul3_maxpool2d11_im8_cma_ena2;
    wire i_mul_maxpool2d4_im0_cma_reset;
    wire [13:0] i_mul_maxpool2d4_im0_cma_a0;
    wire [13:0] i_mul_maxpool2d4_im0_cma_c0;
    wire [27:0] i_mul_maxpool2d4_im0_cma_s0;
    wire [27:0] i_mul_maxpool2d4_im0_cma_qq;
    wire [27:0] i_mul_maxpool2d4_im0_cma_q;
    wire i_mul_maxpool2d4_im0_cma_ena0;
    wire i_mul_maxpool2d4_im0_cma_ena1;
    wire i_mul_maxpool2d4_im0_cma_ena2;
    wire i_mul_maxpool2d4_im8_cma_reset;
    wire [17:0] i_mul_maxpool2d4_im8_cma_a0;
    wire [17:0] i_mul_maxpool2d4_im8_cma_c0;
    wire [35:0] i_mul_maxpool2d4_im8_cma_s0;
    wire [35:0] i_mul_maxpool2d4_im8_cma_qq;
    wire [35:0] i_mul_maxpool2d4_im8_cma_q;
    wire i_mul_maxpool2d4_im8_cma_ena0;
    wire i_mul_maxpool2d4_im8_cma_ena1;
    wire i_mul_maxpool2d4_im8_cma_ena2;
    wire i_mul1_maxpool2d5_ma3_cma_reset;
    wire [13:0] i_mul1_maxpool2d5_ma3_cma_a0;
    wire [17:0] i_mul1_maxpool2d5_ma3_cma_c0;
    wire [13:0] i_mul1_maxpool2d5_ma3_cma_a1;
    wire [17:0] i_mul1_maxpool2d5_ma3_cma_c1;
    wire [32:0] i_mul1_maxpool2d5_ma3_cma_s0;
    wire [32:0] i_mul1_maxpool2d5_ma3_cma_qq;
    wire [32:0] i_mul1_maxpool2d5_ma3_cma_q;
    wire i_mul1_maxpool2d5_ma3_cma_ena0;
    wire i_mul1_maxpool2d5_ma3_cma_ena1;
    wire i_mul1_maxpool2d5_ma3_cma_ena2;
    wire i_mul2_maxpool2d10_ma3_cma_reset;
    wire [13:0] i_mul2_maxpool2d10_ma3_cma_a0;
    wire [17:0] i_mul2_maxpool2d10_ma3_cma_c0;
    wire [13:0] i_mul2_maxpool2d10_ma3_cma_a1;
    wire [17:0] i_mul2_maxpool2d10_ma3_cma_c1;
    wire [32:0] i_mul2_maxpool2d10_ma3_cma_s0;
    wire [32:0] i_mul2_maxpool2d10_ma3_cma_qq;
    wire [32:0] i_mul2_maxpool2d10_ma3_cma_q;
    wire i_mul2_maxpool2d10_ma3_cma_ena0;
    wire i_mul2_maxpool2d10_ma3_cma_ena1;
    wire i_mul2_maxpool2d10_ma3_cma_ena2;
    wire i_mul3_maxpool2d11_ma3_cma_reset;
    wire [13:0] i_mul3_maxpool2d11_ma3_cma_a0;
    wire [17:0] i_mul3_maxpool2d11_ma3_cma_c0;
    wire [13:0] i_mul3_maxpool2d11_ma3_cma_a1;
    wire [17:0] i_mul3_maxpool2d11_ma3_cma_c1;
    wire [32:0] i_mul3_maxpool2d11_ma3_cma_s0;
    wire [32:0] i_mul3_maxpool2d11_ma3_cma_qq;
    wire [32:0] i_mul3_maxpool2d11_ma3_cma_q;
    wire i_mul3_maxpool2d11_ma3_cma_ena0;
    wire i_mul3_maxpool2d11_ma3_cma_ena1;
    wire i_mul3_maxpool2d11_ma3_cma_ena2;
    wire i_mul_maxpool2d4_ma3_cma_reset;
    wire [13:0] i_mul_maxpool2d4_ma3_cma_a0;
    wire [17:0] i_mul_maxpool2d4_ma3_cma_c0;
    wire [13:0] i_mul_maxpool2d4_ma3_cma_a1;
    wire [17:0] i_mul_maxpool2d4_ma3_cma_c1;
    wire [32:0] i_mul_maxpool2d4_ma3_cma_s0;
    wire [32:0] i_mul_maxpool2d4_ma3_cma_qq;
    wire [32:0] i_mul_maxpool2d4_ma3_cma_q;
    wire i_mul_maxpool2d4_ma3_cma_ena0;
    wire i_mul_maxpool2d4_ma3_cma_ena1;
    wire i_mul_maxpool2d4_ma3_cma_ena2;
    wire [13:0] i_mul_maxpool2d4_bs1_merged_bit_select_b;
    wire [17:0] i_mul_maxpool2d4_bs1_merged_bit_select_c;
    wire [13:0] i_mul2_maxpool2d10_bs1_merged_bit_select_b;
    wire [17:0] i_mul2_maxpool2d10_bs1_merged_bit_select_c;
    wire [13:0] i_mul3_maxpool2d11_bs1_merged_bit_select_b;
    wire [17:0] i_mul3_maxpool2d11_bs1_merged_bit_select_c;
    wire [13:0] i_mul1_maxpool2d5_bs1_merged_bit_select_b;
    wire [17:0] i_mul1_maxpool2d5_bs1_merged_bit_select_c;
    wire [13:0] i_mul1_maxpool2d5_bs2_merged_bit_select_b;
    wire [17:0] i_mul1_maxpool2d5_bs2_merged_bit_select_c;
    reg [0:0] redist0_sync_together32_aunroll_x_in_i_valid_7_q;
    reg [31:0] redist2_bgTrunc_i_mul3_maxpool2d11_sel_x_b_1_q;
    reg [31:0] redist3_bgTrunc_i_mul1_maxpool2d5_sel_x_b_1_q;
    wire redist1_i_conv_maxpool2d2_sel_x_b_4_mem_reset0;
    wire [31:0] redist1_i_conv_maxpool2d2_sel_x_b_4_mem_ia;
    wire [1:0] redist1_i_conv_maxpool2d2_sel_x_b_4_mem_aa;
    wire [1:0] redist1_i_conv_maxpool2d2_sel_x_b_4_mem_ab;
    wire [31:0] redist1_i_conv_maxpool2d2_sel_x_b_4_mem_iq;
    wire [31:0] redist1_i_conv_maxpool2d2_sel_x_b_4_mem_q;
    wire [1:0] redist1_i_conv_maxpool2d2_sel_x_b_4_rdcnt_q;
    (* preserve *) reg [1:0] redist1_i_conv_maxpool2d2_sel_x_b_4_rdcnt_i;
    (* preserve *) reg redist1_i_conv_maxpool2d2_sel_x_b_4_rdcnt_eq;
    reg [1:0] redist1_i_conv_maxpool2d2_sel_x_b_4_wraddr_q;
    wire [1:0] redist1_i_conv_maxpool2d2_sel_x_b_4_mem_last_q;
    wire [0:0] redist1_i_conv_maxpool2d2_sel_x_b_4_cmp_q;
    (* dont_merge *) reg [0:0] redist1_i_conv_maxpool2d2_sel_x_b_4_cmpReg_q;
    wire [0:0] redist1_i_conv_maxpool2d2_sel_x_b_4_notEnable_q;
    wire [0:0] redist1_i_conv_maxpool2d2_sel_x_b_4_nor_q;
    (* dont_merge *) reg [0:0] redist1_i_conv_maxpool2d2_sel_x_b_4_sticky_ena_q;
    wire [0:0] redist1_i_conv_maxpool2d2_sel_x_b_4_enaAnd_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist0_sync_together32_aunroll_x_in_i_valid_7(DELAY,160)
    dspba_delay_ver #( .width(1), .depth(7), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist0_sync_together32_aunroll_x_in_i_valid_7 ( .xin(in_i_valid), .xout(redist0_sync_together32_aunroll_x_in_i_valid_7_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // valid_fanout_reg0(REG,70)@8 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist0_sync_together32_aunroll_x_in_i_valid_7_q);
        end
    end

    // i_unnamed_maxpool2d18(LOGICAL,39)@9
    assign i_unnamed_maxpool2d18_q = i_cmp37_maxpool2d16_c ^ VCC_q;

    // valid_fanout_reg5(REG,75)@8 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg5_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg5_q <= $unsigned(redist0_sync_together32_aunroll_x_in_i_valid_7_q);
        end
    end

    // i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer_maxpool2d15(BLACKBOX,26)@0
    // in in_i_dependence@9
    // in in_valid_in@9
    // out out_buffer_out@9
    // out out_valid_out@9
    maxpool2d_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer_0 thei_llvm_fpga_sync_buffer_i32_output_size_sync_buffer_maxpool2d15 (
        .in_buffer_in(in_output_size),
        .in_i_dependence(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_buffer_out(i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer_maxpool2d15_out_buffer_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_025_recast_x(CONSTANT,51)
    assign c_i32_025_recast_x_q = $unsigned(32'b00000000000000000000000000000000);

    // i_cmp37_maxpool2d16(COMPARE,18)@9
    assign i_cmp37_maxpool2d16_a = $unsigned({{2{c_i32_025_recast_x_q[31]}}, c_i32_025_recast_x_q});
    assign i_cmp37_maxpool2d16_b = $unsigned({{2{i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer_maxpool2d15_out_buffer_out[31]}}, i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer_maxpool2d15_out_buffer_out});
    assign i_cmp37_maxpool2d16_o = $unsigned($signed(i_cmp37_maxpool2d16_a) - $signed(i_cmp37_maxpool2d16_b));
    assign i_cmp37_maxpool2d16_c[0] = i_cmp37_maxpool2d16_o[33];

    // redist1_i_conv_maxpool2d2_sel_x_b_4_notEnable(LOGICAL,170)
    assign redist1_i_conv_maxpool2d2_sel_x_b_4_notEnable_q = $unsigned(~ (VCC_q));

    // redist1_i_conv_maxpool2d2_sel_x_b_4_nor(LOGICAL,171)
    assign redist1_i_conv_maxpool2d2_sel_x_b_4_nor_q = ~ (redist1_i_conv_maxpool2d2_sel_x_b_4_notEnable_q | redist1_i_conv_maxpool2d2_sel_x_b_4_sticky_ena_q);

    // redist1_i_conv_maxpool2d2_sel_x_b_4_mem_last(CONSTANT,167)
    assign redist1_i_conv_maxpool2d2_sel_x_b_4_mem_last_q = $unsigned(2'b01);

    // redist1_i_conv_maxpool2d2_sel_x_b_4_cmp(LOGICAL,168)
    assign redist1_i_conv_maxpool2d2_sel_x_b_4_cmp_q = $unsigned(redist1_i_conv_maxpool2d2_sel_x_b_4_mem_last_q == redist1_i_conv_maxpool2d2_sel_x_b_4_rdcnt_q ? 1'b1 : 1'b0);

    // redist1_i_conv_maxpool2d2_sel_x_b_4_cmpReg(REG,169)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_i_conv_maxpool2d2_sel_x_b_4_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist1_i_conv_maxpool2d2_sel_x_b_4_cmpReg_q <= $unsigned(redist1_i_conv_maxpool2d2_sel_x_b_4_cmp_q);
        end
    end

    // redist1_i_conv_maxpool2d2_sel_x_b_4_sticky_ena(REG,172)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_i_conv_maxpool2d2_sel_x_b_4_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist1_i_conv_maxpool2d2_sel_x_b_4_nor_q == 1'b1)
        begin
            redist1_i_conv_maxpool2d2_sel_x_b_4_sticky_ena_q <= $unsigned(redist1_i_conv_maxpool2d2_sel_x_b_4_cmpReg_q);
        end
    end

    // redist1_i_conv_maxpool2d2_sel_x_b_4_enaAnd(LOGICAL,173)
    assign redist1_i_conv_maxpool2d2_sel_x_b_4_enaAnd_q = redist1_i_conv_maxpool2d2_sel_x_b_4_sticky_ena_q & VCC_q;

    // redist1_i_conv_maxpool2d2_sel_x_b_4_rdcnt(COUNTER,165)
    // low=0, high=2, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_i_conv_maxpool2d2_sel_x_b_4_rdcnt_i <= 2'd0;
            redist1_i_conv_maxpool2d2_sel_x_b_4_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist1_i_conv_maxpool2d2_sel_x_b_4_rdcnt_i == 2'd1)
            begin
                redist1_i_conv_maxpool2d2_sel_x_b_4_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist1_i_conv_maxpool2d2_sel_x_b_4_rdcnt_eq <= 1'b0;
            end
            if (redist1_i_conv_maxpool2d2_sel_x_b_4_rdcnt_eq == 1'b1)
            begin
                redist1_i_conv_maxpool2d2_sel_x_b_4_rdcnt_i <= $unsigned(redist1_i_conv_maxpool2d2_sel_x_b_4_rdcnt_i) + $unsigned(2'd2);
            end
            else
            begin
                redist1_i_conv_maxpool2d2_sel_x_b_4_rdcnt_i <= $unsigned(redist1_i_conv_maxpool2d2_sel_x_b_4_rdcnt_i) + $unsigned(2'd1);
            end
        end
    end
    assign redist1_i_conv_maxpool2d2_sel_x_b_4_rdcnt_q = redist1_i_conv_maxpool2d2_sel_x_b_4_rdcnt_i[1:0];

    // i_conv_maxpool2d2_sel_x(BITSELECT,65)@1
    assign i_conv_maxpool2d2_sel_x_b = in_c0_eni1_1_tpl[31:0];

    // redist1_i_conv_maxpool2d2_sel_x_b_4_wraddr(REG,166)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_i_conv_maxpool2d2_sel_x_b_4_wraddr_q <= $unsigned(2'b10);
        end
        else
        begin
            redist1_i_conv_maxpool2d2_sel_x_b_4_wraddr_q <= $unsigned(redist1_i_conv_maxpool2d2_sel_x_b_4_rdcnt_q);
        end
    end

    // redist1_i_conv_maxpool2d2_sel_x_b_4_mem(DUALMEM,164)
    assign redist1_i_conv_maxpool2d2_sel_x_b_4_mem_ia = $unsigned(i_conv_maxpool2d2_sel_x_b);
    assign redist1_i_conv_maxpool2d2_sel_x_b_4_mem_aa = redist1_i_conv_maxpool2d2_sel_x_b_4_wraddr_q;
    assign redist1_i_conv_maxpool2d2_sel_x_b_4_mem_ab = redist1_i_conv_maxpool2d2_sel_x_b_4_rdcnt_q;
    assign redist1_i_conv_maxpool2d2_sel_x_b_4_mem_reset0 = ~ (resetn);
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
    ) redist1_i_conv_maxpool2d2_sel_x_b_4_mem_dmem (
        .clocken1(redist1_i_conv_maxpool2d2_sel_x_b_4_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist1_i_conv_maxpool2d2_sel_x_b_4_mem_reset0),
        .clock1(clock),
        .address_a(redist1_i_conv_maxpool2d2_sel_x_b_4_mem_aa),
        .data_a(redist1_i_conv_maxpool2d2_sel_x_b_4_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist1_i_conv_maxpool2d2_sel_x_b_4_mem_ab),
        .q_b(redist1_i_conv_maxpool2d2_sel_x_b_4_mem_iq),
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
    assign redist1_i_conv_maxpool2d2_sel_x_b_4_mem_q = redist1_i_conv_maxpool2d2_sel_x_b_4_mem_iq[31:0];

    // i_mul1_maxpool2d5_bs2_merged_bit_select(BITSELECT,159)@5
    assign i_mul1_maxpool2d5_bs2_merged_bit_select_b = redist1_i_conv_maxpool2d2_sel_x_b_4_mem_q[31:18];
    assign i_mul1_maxpool2d5_bs2_merged_bit_select_c = redist1_i_conv_maxpool2d2_sel_x_b_4_mem_q[17:0];

    // valid_fanout_reg3(REG,73)@1 + 1
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

    // i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer3_maxpool2d9(BLACKBOX,25)@0
    // in in_i_dependence@2
    // in in_valid_in@2
    // out out_buffer_out@2
    // out out_valid_out@2
    maxpool2d_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer3_0 thei_llvm_fpga_sync_buffer_i32_output_size_sync_buffer3_maxpool2d9 (
        .in_buffer_in(in_output_size),
        .in_i_dependence(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_buffer_out(i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer3_maxpool2d9_out_buffer_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_mul2_maxpool2d10_bs1_merged_bit_select(BITSELECT,156)@2
    assign i_mul2_maxpool2d10_bs1_merged_bit_select_b = i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer3_maxpool2d9_out_buffer_out[31:18];
    assign i_mul2_maxpool2d10_bs1_merged_bit_select_c = i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer3_maxpool2d9_out_buffer_out[17:0];

    // i_mul2_maxpool2d10_ma3_cma(CHAINMULTADD,152)@2 + 3
    assign i_mul2_maxpool2d10_ma3_cma_reset = ~ (resetn);
    assign i_mul2_maxpool2d10_ma3_cma_ena0 = 1'b1;
    assign i_mul2_maxpool2d10_ma3_cma_ena1 = i_mul2_maxpool2d10_ma3_cma_ena0;
    assign i_mul2_maxpool2d10_ma3_cma_ena2 = i_mul2_maxpool2d10_ma3_cma_ena0;

    assign i_mul2_maxpool2d10_ma3_cma_a0 = i_mul2_maxpool2d10_bs1_merged_bit_select_b;
    assign i_mul2_maxpool2d10_ma3_cma_c0 = i_mul2_maxpool2d10_bs1_merged_bit_select_c;
    assign i_mul2_maxpool2d10_ma3_cma_a1 = i_mul2_maxpool2d10_bs1_merged_bit_select_b;
    assign i_mul2_maxpool2d10_ma3_cma_c1 = i_mul2_maxpool2d10_bs1_merged_bit_select_c;
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
    ) i_mul2_maxpool2d10_ma3_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul2_maxpool2d10_ma3_cma_ena2, i_mul2_maxpool2d10_ma3_cma_ena1, i_mul2_maxpool2d10_ma3_cma_ena0 }),
        .aclr({ i_mul2_maxpool2d10_ma3_cma_reset, i_mul2_maxpool2d10_ma3_cma_reset }),
        .ay(i_mul2_maxpool2d10_ma3_cma_a1),
        .by(i_mul2_maxpool2d10_ma3_cma_a0),
        .ax(i_mul2_maxpool2d10_ma3_cma_c1),
        .bx(i_mul2_maxpool2d10_ma3_cma_c0),
        .resulta(i_mul2_maxpool2d10_ma3_cma_s0),
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
    i_mul2_maxpool2d10_ma3_cma_delay ( .xin(i_mul2_maxpool2d10_ma3_cma_s0), .xout(i_mul2_maxpool2d10_ma3_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul2_maxpool2d10_ma3_cma_q = $unsigned(i_mul2_maxpool2d10_ma3_cma_qq[32:0]);

    // i_mul2_maxpool2d10_sums_align_1(BITSHIFT,110)@5
    assign i_mul2_maxpool2d10_sums_align_1_qint = { i_mul2_maxpool2d10_ma3_cma_q, 18'b000000000000000000 };
    assign i_mul2_maxpool2d10_sums_align_1_q = i_mul2_maxpool2d10_sums_align_1_qint[50:0];

    // i_mul2_maxpool2d10_im0_cma(CHAINMULTADD,145)@2 + 3
    assign i_mul2_maxpool2d10_im0_cma_reset = ~ (resetn);
    assign i_mul2_maxpool2d10_im0_cma_ena0 = 1'b1;
    assign i_mul2_maxpool2d10_im0_cma_ena1 = i_mul2_maxpool2d10_im0_cma_ena0;
    assign i_mul2_maxpool2d10_im0_cma_ena2 = i_mul2_maxpool2d10_im0_cma_ena0;

    assign i_mul2_maxpool2d10_im0_cma_a0 = i_mul2_maxpool2d10_bs1_merged_bit_select_b;
    assign i_mul2_maxpool2d10_im0_cma_c0 = i_mul2_maxpool2d10_bs1_merged_bit_select_b;
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
    ) i_mul2_maxpool2d10_im0_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul2_maxpool2d10_im0_cma_ena2, i_mul2_maxpool2d10_im0_cma_ena1, i_mul2_maxpool2d10_im0_cma_ena0 }),
        .aclr({ i_mul2_maxpool2d10_im0_cma_reset, i_mul2_maxpool2d10_im0_cma_reset }),
        .ay(i_mul2_maxpool2d10_im0_cma_a0),
        .ax(i_mul2_maxpool2d10_im0_cma_c0),
        .resulta(i_mul2_maxpool2d10_im0_cma_s0),
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
    i_mul2_maxpool2d10_im0_cma_delay ( .xin(i_mul2_maxpool2d10_im0_cma_s0), .xout(i_mul2_maxpool2d10_im0_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul2_maxpool2d10_im0_cma_q = $unsigned(i_mul2_maxpool2d10_im0_cma_qq[27:0]);

    // i_mul2_maxpool2d10_im8_cma(CHAINMULTADD,146)@2 + 3
    assign i_mul2_maxpool2d10_im8_cma_reset = ~ (resetn);
    assign i_mul2_maxpool2d10_im8_cma_ena0 = 1'b1;
    assign i_mul2_maxpool2d10_im8_cma_ena1 = i_mul2_maxpool2d10_im8_cma_ena0;
    assign i_mul2_maxpool2d10_im8_cma_ena2 = i_mul2_maxpool2d10_im8_cma_ena0;

    assign i_mul2_maxpool2d10_im8_cma_a0 = i_mul2_maxpool2d10_bs1_merged_bit_select_c;
    assign i_mul2_maxpool2d10_im8_cma_c0 = i_mul2_maxpool2d10_bs1_merged_bit_select_c;
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
    ) i_mul2_maxpool2d10_im8_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul2_maxpool2d10_im8_cma_ena2, i_mul2_maxpool2d10_im8_cma_ena1, i_mul2_maxpool2d10_im8_cma_ena0 }),
        .aclr({ i_mul2_maxpool2d10_im8_cma_reset, i_mul2_maxpool2d10_im8_cma_reset }),
        .ay(i_mul2_maxpool2d10_im8_cma_a0),
        .ax(i_mul2_maxpool2d10_im8_cma_c0),
        .resulta(i_mul2_maxpool2d10_im8_cma_s0),
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
    i_mul2_maxpool2d10_im8_cma_delay ( .xin(i_mul2_maxpool2d10_im8_cma_s0), .xout(i_mul2_maxpool2d10_im8_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul2_maxpool2d10_im8_cma_q = $unsigned(i_mul2_maxpool2d10_im8_cma_qq[35:0]);

    // i_mul2_maxpool2d10_sums_join_0(BITJOIN,109)@5
    assign i_mul2_maxpool2d10_sums_join_0_q = {i_mul2_maxpool2d10_im0_cma_q, i_mul2_maxpool2d10_im8_cma_q};

    // i_mul2_maxpool2d10_sums_result_add_0_0(ADD,112)@5
    assign i_mul2_maxpool2d10_sums_result_add_0_0_a = {1'b0, i_mul2_maxpool2d10_sums_join_0_q};
    assign i_mul2_maxpool2d10_sums_result_add_0_0_b = {14'b00000000000000, i_mul2_maxpool2d10_sums_align_1_q};
    assign i_mul2_maxpool2d10_sums_result_add_0_0_o = $unsigned(i_mul2_maxpool2d10_sums_result_add_0_0_a) + $unsigned(i_mul2_maxpool2d10_sums_result_add_0_0_b);
    assign i_mul2_maxpool2d10_sums_result_add_0_0_q = i_mul2_maxpool2d10_sums_result_add_0_0_o[64:0];

    // bgTrunc_i_mul2_maxpool2d10_sel_x(BITSELECT,48)@5
    assign bgTrunc_i_mul2_maxpool2d10_sel_x_in = i_mul2_maxpool2d10_sums_result_add_0_0_q[63:0];
    assign bgTrunc_i_mul2_maxpool2d10_sel_x_b = bgTrunc_i_mul2_maxpool2d10_sel_x_in[31:0];

    // i_mul3_maxpool2d11_bs1_merged_bit_select(BITSELECT,157)@5
    assign i_mul3_maxpool2d11_bs1_merged_bit_select_b = bgTrunc_i_mul2_maxpool2d10_sel_x_b[31:18];
    assign i_mul3_maxpool2d11_bs1_merged_bit_select_c = bgTrunc_i_mul2_maxpool2d10_sel_x_b[17:0];

    // i_mul3_maxpool2d11_ma3_cma(CHAINMULTADD,153)@5 + 3
    assign i_mul3_maxpool2d11_ma3_cma_reset = ~ (resetn);
    assign i_mul3_maxpool2d11_ma3_cma_ena0 = 1'b1;
    assign i_mul3_maxpool2d11_ma3_cma_ena1 = i_mul3_maxpool2d11_ma3_cma_ena0;
    assign i_mul3_maxpool2d11_ma3_cma_ena2 = i_mul3_maxpool2d11_ma3_cma_ena0;

    assign i_mul3_maxpool2d11_ma3_cma_a0 = i_mul3_maxpool2d11_bs1_merged_bit_select_b;
    assign i_mul3_maxpool2d11_ma3_cma_c0 = i_mul1_maxpool2d5_bs2_merged_bit_select_c;
    assign i_mul3_maxpool2d11_ma3_cma_a1 = i_mul1_maxpool2d5_bs2_merged_bit_select_b;
    assign i_mul3_maxpool2d11_ma3_cma_c1 = i_mul3_maxpool2d11_bs1_merged_bit_select_c;
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
    ) i_mul3_maxpool2d11_ma3_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul3_maxpool2d11_ma3_cma_ena2, i_mul3_maxpool2d11_ma3_cma_ena1, i_mul3_maxpool2d11_ma3_cma_ena0 }),
        .aclr({ i_mul3_maxpool2d11_ma3_cma_reset, i_mul3_maxpool2d11_ma3_cma_reset }),
        .ay(i_mul3_maxpool2d11_ma3_cma_a1),
        .by(i_mul3_maxpool2d11_ma3_cma_a0),
        .ax(i_mul3_maxpool2d11_ma3_cma_c1),
        .bx(i_mul3_maxpool2d11_ma3_cma_c0),
        .resulta(i_mul3_maxpool2d11_ma3_cma_s0),
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
    i_mul3_maxpool2d11_ma3_cma_delay ( .xin(i_mul3_maxpool2d11_ma3_cma_s0), .xout(i_mul3_maxpool2d11_ma3_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul3_maxpool2d11_ma3_cma_q = $unsigned(i_mul3_maxpool2d11_ma3_cma_qq[32:0]);

    // i_mul3_maxpool2d11_sums_align_1(BITSHIFT,125)@8
    assign i_mul3_maxpool2d11_sums_align_1_qint = { i_mul3_maxpool2d11_ma3_cma_q, 18'b000000000000000000 };
    assign i_mul3_maxpool2d11_sums_align_1_q = i_mul3_maxpool2d11_sums_align_1_qint[50:0];

    // i_mul3_maxpool2d11_im0_cma(CHAINMULTADD,147)@5 + 3
    assign i_mul3_maxpool2d11_im0_cma_reset = ~ (resetn);
    assign i_mul3_maxpool2d11_im0_cma_ena0 = 1'b1;
    assign i_mul3_maxpool2d11_im0_cma_ena1 = i_mul3_maxpool2d11_im0_cma_ena0;
    assign i_mul3_maxpool2d11_im0_cma_ena2 = i_mul3_maxpool2d11_im0_cma_ena0;

    assign i_mul3_maxpool2d11_im0_cma_a0 = i_mul3_maxpool2d11_bs1_merged_bit_select_b;
    assign i_mul3_maxpool2d11_im0_cma_c0 = i_mul1_maxpool2d5_bs2_merged_bit_select_b;
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
    ) i_mul3_maxpool2d11_im0_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul3_maxpool2d11_im0_cma_ena2, i_mul3_maxpool2d11_im0_cma_ena1, i_mul3_maxpool2d11_im0_cma_ena0 }),
        .aclr({ i_mul3_maxpool2d11_im0_cma_reset, i_mul3_maxpool2d11_im0_cma_reset }),
        .ay(i_mul3_maxpool2d11_im0_cma_a0),
        .ax(i_mul3_maxpool2d11_im0_cma_c0),
        .resulta(i_mul3_maxpool2d11_im0_cma_s0),
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
    i_mul3_maxpool2d11_im0_cma_delay ( .xin(i_mul3_maxpool2d11_im0_cma_s0), .xout(i_mul3_maxpool2d11_im0_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul3_maxpool2d11_im0_cma_q = $unsigned(i_mul3_maxpool2d11_im0_cma_qq[27:0]);

    // i_mul3_maxpool2d11_im8_cma(CHAINMULTADD,148)@5 + 3
    assign i_mul3_maxpool2d11_im8_cma_reset = ~ (resetn);
    assign i_mul3_maxpool2d11_im8_cma_ena0 = 1'b1;
    assign i_mul3_maxpool2d11_im8_cma_ena1 = i_mul3_maxpool2d11_im8_cma_ena0;
    assign i_mul3_maxpool2d11_im8_cma_ena2 = i_mul3_maxpool2d11_im8_cma_ena0;

    assign i_mul3_maxpool2d11_im8_cma_a0 = i_mul3_maxpool2d11_bs1_merged_bit_select_c;
    assign i_mul3_maxpool2d11_im8_cma_c0 = i_mul1_maxpool2d5_bs2_merged_bit_select_c;
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
    ) i_mul3_maxpool2d11_im8_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul3_maxpool2d11_im8_cma_ena2, i_mul3_maxpool2d11_im8_cma_ena1, i_mul3_maxpool2d11_im8_cma_ena0 }),
        .aclr({ i_mul3_maxpool2d11_im8_cma_reset, i_mul3_maxpool2d11_im8_cma_reset }),
        .ay(i_mul3_maxpool2d11_im8_cma_a0),
        .ax(i_mul3_maxpool2d11_im8_cma_c0),
        .resulta(i_mul3_maxpool2d11_im8_cma_s0),
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
    i_mul3_maxpool2d11_im8_cma_delay ( .xin(i_mul3_maxpool2d11_im8_cma_s0), .xout(i_mul3_maxpool2d11_im8_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul3_maxpool2d11_im8_cma_q = $unsigned(i_mul3_maxpool2d11_im8_cma_qq[35:0]);

    // i_mul3_maxpool2d11_sums_join_0(BITJOIN,124)@8
    assign i_mul3_maxpool2d11_sums_join_0_q = {i_mul3_maxpool2d11_im0_cma_q, i_mul3_maxpool2d11_im8_cma_q};

    // i_mul3_maxpool2d11_sums_result_add_0_0(ADD,127)@8
    assign i_mul3_maxpool2d11_sums_result_add_0_0_a = {1'b0, i_mul3_maxpool2d11_sums_join_0_q};
    assign i_mul3_maxpool2d11_sums_result_add_0_0_b = {14'b00000000000000, i_mul3_maxpool2d11_sums_align_1_q};
    assign i_mul3_maxpool2d11_sums_result_add_0_0_o = $unsigned(i_mul3_maxpool2d11_sums_result_add_0_0_a) + $unsigned(i_mul3_maxpool2d11_sums_result_add_0_0_b);
    assign i_mul3_maxpool2d11_sums_result_add_0_0_q = i_mul3_maxpool2d11_sums_result_add_0_0_o[64:0];

    // bgTrunc_i_mul3_maxpool2d11_sel_x(BITSELECT,49)@8
    assign bgTrunc_i_mul3_maxpool2d11_sel_x_in = i_mul3_maxpool2d11_sums_result_add_0_0_q[63:0];
    assign bgTrunc_i_mul3_maxpool2d11_sel_x_b = bgTrunc_i_mul3_maxpool2d11_sel_x_in[31:0];

    // redist2_bgTrunc_i_mul3_maxpool2d11_sel_x_b_1(DELAY,162)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_bgTrunc_i_mul3_maxpool2d11_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist2_bgTrunc_i_mul3_maxpool2d11_sel_x_b_1_q <= $unsigned(bgTrunc_i_mul3_maxpool2d11_sel_x_b);
        end
    end

    // i_idx_ext4_maxpool2d12_sel_x(BITSELECT,66)@9
    assign i_idx_ext4_maxpool2d12_sel_x_b = $unsigned({{32{redist2_bgTrunc_i_mul3_maxpool2d11_sel_x_b_1_q[31]}}, redist2_bgTrunc_i_mul3_maxpool2d11_sel_x_b_1_q[31:0]});

    // i_add_ptr52_maxpool2d0_narrow_x(BITSELECT,61)@9
    assign i_add_ptr52_maxpool2d0_narrow_x_b = i_idx_ext4_maxpool2d12_sel_x_b[61:0];

    // i_add_ptr52_maxpool2d0_shift_join_x(BITJOIN,62)@9
    assign i_add_ptr52_maxpool2d0_shift_join_x_q = {i_add_ptr52_maxpool2d0_narrow_x_b, i_add_ptr1_maxpool2d8_vt_const_1_q};

    // valid_fanout_reg4(REG,74)@8 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg4_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg4_q <= $unsigned(redist0_sync_together32_aunroll_x_in_i_valid_7_q);
        end
    end

    // i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_maxpool2d13(BLACKBOX,31)@0
    // in in_i_dependence@9
    // in in_valid_in@9
    // out out_buffer_out@9
    // out out_valid_out@9
    maxpool2d_i_llvm_fpga_sync_buffer_p1024f0001put_im_sync_buffer_0 thei_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_maxpool2d13 (
        .in_buffer_in(in_output_im),
        .in_i_dependence(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_buffer_out(i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_maxpool2d13_out_buffer_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_maxpool2d13_vt_select_63(BITSELECT,34)@9
    assign i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_maxpool2d13_vt_select_63_b = i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_maxpool2d13_out_buffer_out[63:10];

    // i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer_maxpool2d7_vt_const_9(CONSTANT,28)
    assign i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer_maxpool2d7_vt_const_9_q = $unsigned(10'b0000000000);

    // i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_maxpool2d13_vt_join(BITJOIN,33)@9
    assign i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_maxpool2d13_vt_join_q = {i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_maxpool2d13_vt_select_63_b, i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer_maxpool2d7_vt_const_9_q};

    // i_add_ptr52_maxpool2d0_add_x(ADD,59)@9
    assign i_add_ptr52_maxpool2d0_add_x_a = {1'b0, i_llvm_fpga_sync_buffer_p1024f32_output_im_sync_buffer_maxpool2d13_vt_join_q};
    assign i_add_ptr52_maxpool2d0_add_x_b = {1'b0, i_add_ptr52_maxpool2d0_shift_join_x_q};
    assign i_add_ptr52_maxpool2d0_add_x_o = $unsigned(i_add_ptr52_maxpool2d0_add_x_a) + $unsigned(i_add_ptr52_maxpool2d0_add_x_b);
    assign i_add_ptr52_maxpool2d0_add_x_q = i_add_ptr52_maxpool2d0_add_x_o[64:0];

    // i_add_ptr52_maxpool2d0_dupName_0_trunc_sel_x(BITSELECT,64)@9
    assign i_add_ptr52_maxpool2d0_dupName_0_trunc_sel_x_b = i_add_ptr52_maxpool2d0_add_x_q[63:0];

    // i_add_ptr52_maxpool2d14_vt_select_63(BITSELECT,17)@9
    assign i_add_ptr52_maxpool2d14_vt_select_63_b = i_add_ptr52_maxpool2d0_dupName_0_trunc_sel_x_b[63:2];

    // i_add_ptr1_maxpool2d8_vt_const_1(CONSTANT,12)
    assign i_add_ptr1_maxpool2d8_vt_const_1_q = $unsigned(2'b00);

    // i_add_ptr52_maxpool2d14_vt_join(BITJOIN,16)@9
    assign i_add_ptr52_maxpool2d14_vt_join_q = {i_add_ptr52_maxpool2d14_vt_select_63_b, i_add_ptr1_maxpool2d8_vt_const_1_q};

    // valid_fanout_reg1(REG,71)@1 + 1
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

    // i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer1_maxpool2d3(BLACKBOX,24)@0
    // in in_i_dependence@2
    // in in_valid_in@2
    // out out_buffer_out@2
    // out out_valid_out@2
    maxpool2d_i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer1_0 thei_llvm_fpga_sync_buffer_i32_input_size_sync_buffer1_maxpool2d3 (
        .in_buffer_in(in_input_size),
        .in_i_dependence(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_buffer_out(i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer1_maxpool2d3_out_buffer_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_mul_maxpool2d4_bs1_merged_bit_select(BITSELECT,155)@2
    assign i_mul_maxpool2d4_bs1_merged_bit_select_b = i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer1_maxpool2d3_out_buffer_out[31:18];
    assign i_mul_maxpool2d4_bs1_merged_bit_select_c = i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer1_maxpool2d3_out_buffer_out[17:0];

    // i_mul_maxpool2d4_ma3_cma(CHAINMULTADD,154)@2 + 3
    assign i_mul_maxpool2d4_ma3_cma_reset = ~ (resetn);
    assign i_mul_maxpool2d4_ma3_cma_ena0 = 1'b1;
    assign i_mul_maxpool2d4_ma3_cma_ena1 = i_mul_maxpool2d4_ma3_cma_ena0;
    assign i_mul_maxpool2d4_ma3_cma_ena2 = i_mul_maxpool2d4_ma3_cma_ena0;

    assign i_mul_maxpool2d4_ma3_cma_a0 = i_mul_maxpool2d4_bs1_merged_bit_select_b;
    assign i_mul_maxpool2d4_ma3_cma_c0 = i_mul_maxpool2d4_bs1_merged_bit_select_c;
    assign i_mul_maxpool2d4_ma3_cma_a1 = i_mul_maxpool2d4_bs1_merged_bit_select_b;
    assign i_mul_maxpool2d4_ma3_cma_c1 = i_mul_maxpool2d4_bs1_merged_bit_select_c;
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
    ) i_mul_maxpool2d4_ma3_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul_maxpool2d4_ma3_cma_ena2, i_mul_maxpool2d4_ma3_cma_ena1, i_mul_maxpool2d4_ma3_cma_ena0 }),
        .aclr({ i_mul_maxpool2d4_ma3_cma_reset, i_mul_maxpool2d4_ma3_cma_reset }),
        .ay(i_mul_maxpool2d4_ma3_cma_a1),
        .by(i_mul_maxpool2d4_ma3_cma_a0),
        .ax(i_mul_maxpool2d4_ma3_cma_c1),
        .bx(i_mul_maxpool2d4_ma3_cma_c0),
        .resulta(i_mul_maxpool2d4_ma3_cma_s0),
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
    i_mul_maxpool2d4_ma3_cma_delay ( .xin(i_mul_maxpool2d4_ma3_cma_s0), .xout(i_mul_maxpool2d4_ma3_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul_maxpool2d4_ma3_cma_q = $unsigned(i_mul_maxpool2d4_ma3_cma_qq[32:0]);

    // i_mul_maxpool2d4_sums_align_1(BITSHIFT,140)@5
    assign i_mul_maxpool2d4_sums_align_1_qint = { i_mul_maxpool2d4_ma3_cma_q, 18'b000000000000000000 };
    assign i_mul_maxpool2d4_sums_align_1_q = i_mul_maxpool2d4_sums_align_1_qint[50:0];

    // i_mul_maxpool2d4_im0_cma(CHAINMULTADD,149)@2 + 3
    assign i_mul_maxpool2d4_im0_cma_reset = ~ (resetn);
    assign i_mul_maxpool2d4_im0_cma_ena0 = 1'b1;
    assign i_mul_maxpool2d4_im0_cma_ena1 = i_mul_maxpool2d4_im0_cma_ena0;
    assign i_mul_maxpool2d4_im0_cma_ena2 = i_mul_maxpool2d4_im0_cma_ena0;

    assign i_mul_maxpool2d4_im0_cma_a0 = i_mul_maxpool2d4_bs1_merged_bit_select_b;
    assign i_mul_maxpool2d4_im0_cma_c0 = i_mul_maxpool2d4_bs1_merged_bit_select_b;
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
    ) i_mul_maxpool2d4_im0_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul_maxpool2d4_im0_cma_ena2, i_mul_maxpool2d4_im0_cma_ena1, i_mul_maxpool2d4_im0_cma_ena0 }),
        .aclr({ i_mul_maxpool2d4_im0_cma_reset, i_mul_maxpool2d4_im0_cma_reset }),
        .ay(i_mul_maxpool2d4_im0_cma_a0),
        .ax(i_mul_maxpool2d4_im0_cma_c0),
        .resulta(i_mul_maxpool2d4_im0_cma_s0),
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
    i_mul_maxpool2d4_im0_cma_delay ( .xin(i_mul_maxpool2d4_im0_cma_s0), .xout(i_mul_maxpool2d4_im0_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul_maxpool2d4_im0_cma_q = $unsigned(i_mul_maxpool2d4_im0_cma_qq[27:0]);

    // i_mul_maxpool2d4_im8_cma(CHAINMULTADD,150)@2 + 3
    assign i_mul_maxpool2d4_im8_cma_reset = ~ (resetn);
    assign i_mul_maxpool2d4_im8_cma_ena0 = 1'b1;
    assign i_mul_maxpool2d4_im8_cma_ena1 = i_mul_maxpool2d4_im8_cma_ena0;
    assign i_mul_maxpool2d4_im8_cma_ena2 = i_mul_maxpool2d4_im8_cma_ena0;

    assign i_mul_maxpool2d4_im8_cma_a0 = i_mul_maxpool2d4_bs1_merged_bit_select_c;
    assign i_mul_maxpool2d4_im8_cma_c0 = i_mul_maxpool2d4_bs1_merged_bit_select_c;
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
    ) i_mul_maxpool2d4_im8_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul_maxpool2d4_im8_cma_ena2, i_mul_maxpool2d4_im8_cma_ena1, i_mul_maxpool2d4_im8_cma_ena0 }),
        .aclr({ i_mul_maxpool2d4_im8_cma_reset, i_mul_maxpool2d4_im8_cma_reset }),
        .ay(i_mul_maxpool2d4_im8_cma_a0),
        .ax(i_mul_maxpool2d4_im8_cma_c0),
        .resulta(i_mul_maxpool2d4_im8_cma_s0),
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
    i_mul_maxpool2d4_im8_cma_delay ( .xin(i_mul_maxpool2d4_im8_cma_s0), .xout(i_mul_maxpool2d4_im8_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul_maxpool2d4_im8_cma_q = $unsigned(i_mul_maxpool2d4_im8_cma_qq[35:0]);

    // i_mul_maxpool2d4_sums_join_0(BITJOIN,139)@5
    assign i_mul_maxpool2d4_sums_join_0_q = {i_mul_maxpool2d4_im0_cma_q, i_mul_maxpool2d4_im8_cma_q};

    // i_mul_maxpool2d4_sums_result_add_0_0(ADD,142)@5
    assign i_mul_maxpool2d4_sums_result_add_0_0_a = {1'b0, i_mul_maxpool2d4_sums_join_0_q};
    assign i_mul_maxpool2d4_sums_result_add_0_0_b = {14'b00000000000000, i_mul_maxpool2d4_sums_align_1_q};
    assign i_mul_maxpool2d4_sums_result_add_0_0_o = $unsigned(i_mul_maxpool2d4_sums_result_add_0_0_a) + $unsigned(i_mul_maxpool2d4_sums_result_add_0_0_b);
    assign i_mul_maxpool2d4_sums_result_add_0_0_q = i_mul_maxpool2d4_sums_result_add_0_0_o[64:0];

    // bgTrunc_i_mul_maxpool2d4_sel_x(BITSELECT,50)@5
    assign bgTrunc_i_mul_maxpool2d4_sel_x_in = i_mul_maxpool2d4_sums_result_add_0_0_q[63:0];
    assign bgTrunc_i_mul_maxpool2d4_sel_x_b = bgTrunc_i_mul_maxpool2d4_sel_x_in[31:0];

    // i_mul1_maxpool2d5_bs1_merged_bit_select(BITSELECT,158)@5
    assign i_mul1_maxpool2d5_bs1_merged_bit_select_b = bgTrunc_i_mul_maxpool2d4_sel_x_b[31:18];
    assign i_mul1_maxpool2d5_bs1_merged_bit_select_c = bgTrunc_i_mul_maxpool2d4_sel_x_b[17:0];

    // i_mul1_maxpool2d5_ma3_cma(CHAINMULTADD,151)@5 + 3
    assign i_mul1_maxpool2d5_ma3_cma_reset = ~ (resetn);
    assign i_mul1_maxpool2d5_ma3_cma_ena0 = 1'b1;
    assign i_mul1_maxpool2d5_ma3_cma_ena1 = i_mul1_maxpool2d5_ma3_cma_ena0;
    assign i_mul1_maxpool2d5_ma3_cma_ena2 = i_mul1_maxpool2d5_ma3_cma_ena0;

    assign i_mul1_maxpool2d5_ma3_cma_a0 = i_mul1_maxpool2d5_bs1_merged_bit_select_b;
    assign i_mul1_maxpool2d5_ma3_cma_c0 = i_mul1_maxpool2d5_bs2_merged_bit_select_c;
    assign i_mul1_maxpool2d5_ma3_cma_a1 = i_mul1_maxpool2d5_bs2_merged_bit_select_b;
    assign i_mul1_maxpool2d5_ma3_cma_c1 = i_mul1_maxpool2d5_bs1_merged_bit_select_c;
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
    ) i_mul1_maxpool2d5_ma3_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul1_maxpool2d5_ma3_cma_ena2, i_mul1_maxpool2d5_ma3_cma_ena1, i_mul1_maxpool2d5_ma3_cma_ena0 }),
        .aclr({ i_mul1_maxpool2d5_ma3_cma_reset, i_mul1_maxpool2d5_ma3_cma_reset }),
        .ay(i_mul1_maxpool2d5_ma3_cma_a1),
        .by(i_mul1_maxpool2d5_ma3_cma_a0),
        .ax(i_mul1_maxpool2d5_ma3_cma_c1),
        .bx(i_mul1_maxpool2d5_ma3_cma_c0),
        .resulta(i_mul1_maxpool2d5_ma3_cma_s0),
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
    i_mul1_maxpool2d5_ma3_cma_delay ( .xin(i_mul1_maxpool2d5_ma3_cma_s0), .xout(i_mul1_maxpool2d5_ma3_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul1_maxpool2d5_ma3_cma_q = $unsigned(i_mul1_maxpool2d5_ma3_cma_qq[32:0]);

    // i_mul1_maxpool2d5_sums_align_1(BITSHIFT,95)@8
    assign i_mul1_maxpool2d5_sums_align_1_qint = { i_mul1_maxpool2d5_ma3_cma_q, 18'b000000000000000000 };
    assign i_mul1_maxpool2d5_sums_align_1_q = i_mul1_maxpool2d5_sums_align_1_qint[50:0];

    // i_mul1_maxpool2d5_im0_cma(CHAINMULTADD,143)@5 + 3
    assign i_mul1_maxpool2d5_im0_cma_reset = ~ (resetn);
    assign i_mul1_maxpool2d5_im0_cma_ena0 = 1'b1;
    assign i_mul1_maxpool2d5_im0_cma_ena1 = i_mul1_maxpool2d5_im0_cma_ena0;
    assign i_mul1_maxpool2d5_im0_cma_ena2 = i_mul1_maxpool2d5_im0_cma_ena0;

    assign i_mul1_maxpool2d5_im0_cma_a0 = i_mul1_maxpool2d5_bs1_merged_bit_select_b;
    assign i_mul1_maxpool2d5_im0_cma_c0 = i_mul1_maxpool2d5_bs2_merged_bit_select_b;
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
    ) i_mul1_maxpool2d5_im0_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul1_maxpool2d5_im0_cma_ena2, i_mul1_maxpool2d5_im0_cma_ena1, i_mul1_maxpool2d5_im0_cma_ena0 }),
        .aclr({ i_mul1_maxpool2d5_im0_cma_reset, i_mul1_maxpool2d5_im0_cma_reset }),
        .ay(i_mul1_maxpool2d5_im0_cma_a0),
        .ax(i_mul1_maxpool2d5_im0_cma_c0),
        .resulta(i_mul1_maxpool2d5_im0_cma_s0),
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
    i_mul1_maxpool2d5_im0_cma_delay ( .xin(i_mul1_maxpool2d5_im0_cma_s0), .xout(i_mul1_maxpool2d5_im0_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul1_maxpool2d5_im0_cma_q = $unsigned(i_mul1_maxpool2d5_im0_cma_qq[27:0]);

    // i_mul1_maxpool2d5_im8_cma(CHAINMULTADD,144)@5 + 3
    assign i_mul1_maxpool2d5_im8_cma_reset = ~ (resetn);
    assign i_mul1_maxpool2d5_im8_cma_ena0 = 1'b1;
    assign i_mul1_maxpool2d5_im8_cma_ena1 = i_mul1_maxpool2d5_im8_cma_ena0;
    assign i_mul1_maxpool2d5_im8_cma_ena2 = i_mul1_maxpool2d5_im8_cma_ena0;

    assign i_mul1_maxpool2d5_im8_cma_a0 = i_mul1_maxpool2d5_bs1_merged_bit_select_c;
    assign i_mul1_maxpool2d5_im8_cma_c0 = i_mul1_maxpool2d5_bs2_merged_bit_select_c;
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
    ) i_mul1_maxpool2d5_im8_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul1_maxpool2d5_im8_cma_ena2, i_mul1_maxpool2d5_im8_cma_ena1, i_mul1_maxpool2d5_im8_cma_ena0 }),
        .aclr({ i_mul1_maxpool2d5_im8_cma_reset, i_mul1_maxpool2d5_im8_cma_reset }),
        .ay(i_mul1_maxpool2d5_im8_cma_a0),
        .ax(i_mul1_maxpool2d5_im8_cma_c0),
        .resulta(i_mul1_maxpool2d5_im8_cma_s0),
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
    i_mul1_maxpool2d5_im8_cma_delay ( .xin(i_mul1_maxpool2d5_im8_cma_s0), .xout(i_mul1_maxpool2d5_im8_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul1_maxpool2d5_im8_cma_q = $unsigned(i_mul1_maxpool2d5_im8_cma_qq[35:0]);

    // i_mul1_maxpool2d5_sums_join_0(BITJOIN,94)@8
    assign i_mul1_maxpool2d5_sums_join_0_q = {i_mul1_maxpool2d5_im0_cma_q, i_mul1_maxpool2d5_im8_cma_q};

    // i_mul1_maxpool2d5_sums_result_add_0_0(ADD,97)@8
    assign i_mul1_maxpool2d5_sums_result_add_0_0_a = {1'b0, i_mul1_maxpool2d5_sums_join_0_q};
    assign i_mul1_maxpool2d5_sums_result_add_0_0_b = {14'b00000000000000, i_mul1_maxpool2d5_sums_align_1_q};
    assign i_mul1_maxpool2d5_sums_result_add_0_0_o = $unsigned(i_mul1_maxpool2d5_sums_result_add_0_0_a) + $unsigned(i_mul1_maxpool2d5_sums_result_add_0_0_b);
    assign i_mul1_maxpool2d5_sums_result_add_0_0_q = i_mul1_maxpool2d5_sums_result_add_0_0_o[64:0];

    // bgTrunc_i_mul1_maxpool2d5_sel_x(BITSELECT,47)@8
    assign bgTrunc_i_mul1_maxpool2d5_sel_x_in = i_mul1_maxpool2d5_sums_result_add_0_0_q[63:0];
    assign bgTrunc_i_mul1_maxpool2d5_sel_x_b = bgTrunc_i_mul1_maxpool2d5_sel_x_in[31:0];

    // redist3_bgTrunc_i_mul1_maxpool2d5_sel_x_b_1(DELAY,163)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_bgTrunc_i_mul1_maxpool2d5_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist3_bgTrunc_i_mul1_maxpool2d5_sel_x_b_1_q <= $unsigned(bgTrunc_i_mul1_maxpool2d5_sel_x_b);
        end
    end

    // i_idx_ext_maxpool2d6_sel_x(BITSELECT,67)@9
    assign i_idx_ext_maxpool2d6_sel_x_b = $unsigned({{32{redist3_bgTrunc_i_mul1_maxpool2d5_sel_x_b_1_q[31]}}, redist3_bgTrunc_i_mul1_maxpool2d5_sel_x_b_1_q[31:0]});

    // i_add_ptr1_maxpool2d0_narrow_x(BITSELECT,55)@9
    assign i_add_ptr1_maxpool2d0_narrow_x_b = i_idx_ext_maxpool2d6_sel_x_b[61:0];

    // i_add_ptr1_maxpool2d0_shift_join_x(BITJOIN,56)@9
    assign i_add_ptr1_maxpool2d0_shift_join_x_q = {i_add_ptr1_maxpool2d0_narrow_x_b, i_add_ptr1_maxpool2d8_vt_const_1_q};

    // valid_fanout_reg2(REG,72)@8 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg2_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg2_q <= $unsigned(redist0_sync_together32_aunroll_x_in_i_valid_7_q);
        end
    end

    // i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer_maxpool2d7(BLACKBOX,27)@0
    // in in_i_dependence@9
    // in in_valid_in@9
    // out out_buffer_out@9
    // out out_valid_out@9
    maxpool2d_i_llvm_fpga_sync_buffer_p1024f0000put_im_sync_buffer_0 thei_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer_maxpool2d7 (
        .in_buffer_in(in_input_im),
        .in_i_dependence(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_buffer_out(i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer_maxpool2d7_out_buffer_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer_maxpool2d7_vt_select_63(BITSELECT,30)@9
    assign i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer_maxpool2d7_vt_select_63_b = i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer_maxpool2d7_out_buffer_out[63:10];

    // i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer_maxpool2d7_vt_join(BITJOIN,29)@9
    assign i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer_maxpool2d7_vt_join_q = {i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer_maxpool2d7_vt_select_63_b, i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer_maxpool2d7_vt_const_9_q};

    // i_add_ptr1_maxpool2d0_add_x(ADD,53)@9
    assign i_add_ptr1_maxpool2d0_add_x_a = {1'b0, i_llvm_fpga_sync_buffer_p1024f32_input_im_sync_buffer_maxpool2d7_vt_join_q};
    assign i_add_ptr1_maxpool2d0_add_x_b = {1'b0, i_add_ptr1_maxpool2d0_shift_join_x_q};
    assign i_add_ptr1_maxpool2d0_add_x_o = $unsigned(i_add_ptr1_maxpool2d0_add_x_a) + $unsigned(i_add_ptr1_maxpool2d0_add_x_b);
    assign i_add_ptr1_maxpool2d0_add_x_q = i_add_ptr1_maxpool2d0_add_x_o[64:0];

    // i_add_ptr1_maxpool2d0_dupName_0_trunc_sel_x(BITSELECT,58)@9
    assign i_add_ptr1_maxpool2d0_dupName_0_trunc_sel_x_b = i_add_ptr1_maxpool2d0_add_x_q[63:0];

    // i_add_ptr1_maxpool2d8_vt_select_63(BITSELECT,14)@9
    assign i_add_ptr1_maxpool2d8_vt_select_63_b = i_add_ptr1_maxpool2d0_dupName_0_trunc_sel_x_b[63:2];

    // i_add_ptr1_maxpool2d8_vt_join(BITJOIN,13)@9
    assign i_add_ptr1_maxpool2d8_vt_join_q = {i_add_ptr1_maxpool2d8_vt_select_63_b, i_add_ptr1_maxpool2d8_vt_const_1_q};

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // sync_out_aunroll_x(GPOUT,68)@9
    assign out_c0_exi4_0_tpl = GND_q;
    assign out_c0_exi4_1_tpl = i_add_ptr1_maxpool2d8_vt_join_q;
    assign out_c0_exi4_2_tpl = i_add_ptr52_maxpool2d14_vt_join_q;
    assign out_c0_exi4_3_tpl = i_cmp37_maxpool2d16_c;
    assign out_c0_exi4_4_tpl = i_unnamed_maxpool2d18_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_maxpool2d0 = GND_q;

endmodule
