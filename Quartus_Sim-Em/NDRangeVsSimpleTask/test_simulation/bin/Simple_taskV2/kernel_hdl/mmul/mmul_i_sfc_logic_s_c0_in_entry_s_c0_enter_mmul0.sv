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
// SystemVerilog created on Tue May  9 13:46:47 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module mmul_i_sfc_logic_s_c0_in_entry_s_c0_enter_mmul0 (
    input wire [31:0] in_N,
    output wire [0:0] out_intel_reserved_ffwd_0_0,
    input wire [0:0] in_i_valid,
    output wire [0:0] out_intel_reserved_ffwd_1_0,
    output wire [32:0] out_intel_reserved_ffwd_2_0,
    output wire [32:0] out_intel_reserved_ffwd_3_0,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_mmul5_0_tpl,
    output wire [0:0] out_unnamed_mmul6,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] c_i32_142_q;
    wire [31:0] c_i32_143_q;
    wire [32:0] c_i33_144_q;
    wire [33:0] i_cmp222_mmul6_a;
    wire [33:0] i_cmp222_mmul6_b;
    logic [33:0] i_cmp222_mmul6_o;
    wire [0:0] i_cmp222_mmul6_c;
    wire [0:0] i_cmp26_mmul3_q;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_mmul1_mmul25_out_intel_reserved_ffwd_0_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_mmul2_mmul26_out_intel_reserved_ffwd_1_0;
    wire [32:0] i_llvm_fpga_ffwd_source_i33_unnamed_mmul3_mmul27_out_intel_reserved_ffwd_2_0;
    wire [32:0] i_llvm_fpga_ffwd_source_i33_unnamed_mmul4_mmul28_out_intel_reserved_ffwd_3_0;
    wire [31:0] i_llvm_fpga_sync_buffer_i32_n_sync_buffer2_mmul1_out_buffer_out;
    wire [31:0] i_llvm_fpga_sync_buffer_i32_n_sync_buffer4_mmul10_out_buffer_out;
    wire [31:0] i_llvm_fpga_sync_buffer_i32_n_sync_buffer5_mmul13_out_buffer_out;
    wire [31:0] i_llvm_fpga_sync_buffer_i32_n_sync_buffer6_mmul18_out_buffer_out;
    wire [31:0] i_llvm_fpga_sync_buffer_i32_n_sync_buffer_mmul5_out_buffer_out;
    wire [31:0] i_mul_mmul2_vt_join_q;
    wire [30:0] i_mul_mmul2_vt_select_30_b;
    wire [0:0] i_smax_mmul14_s;
    reg [31:0] i_smax_mmul14_q;
    wire [0:0] i_umax_mmul21_s;
    reg [31:0] i_umax_mmul21_q;
    wire [33:0] i_unnamed_mmul11_a;
    wire [33:0] i_unnamed_mmul11_b;
    logic [33:0] i_unnamed_mmul11_o;
    wire [0:0] i_unnamed_mmul11_c;
    wire [32:0] i_unnamed_mmul15_a;
    wire [32:0] i_unnamed_mmul15_b;
    logic [32:0] i_unnamed_mmul15_o;
    wire [32:0] i_unnamed_mmul15_q;
    wire [32:0] i_unnamed_mmul16_vt_join_q;
    wire [31:0] i_unnamed_mmul16_vt_select_31_b;
    wire [33:0] i_unnamed_mmul17_a;
    wire [33:0] i_unnamed_mmul17_b;
    logic [33:0] i_unnamed_mmul17_o;
    wire [33:0] i_unnamed_mmul17_q;
    wire [33:0] i_unnamed_mmul20_a;
    wire [33:0] i_unnamed_mmul20_b;
    logic [33:0] i_unnamed_mmul20_o;
    wire [0:0] i_unnamed_mmul20_c;
    wire [32:0] i_unnamed_mmul22_a;
    wire [32:0] i_unnamed_mmul22_b;
    logic [32:0] i_unnamed_mmul22_o;
    wire [32:0] i_unnamed_mmul22_q;
    wire [32:0] i_unnamed_mmul23_vt_join_q;
    wire [31:0] i_unnamed_mmul23_vt_select_31_b;
    wire [33:0] i_unnamed_mmul24_a;
    wire [33:0] i_unnamed_mmul24_b;
    logic [33:0] i_unnamed_mmul24_o;
    wire [33:0] i_unnamed_mmul24_q;
    wire [0:0] i_unnamed_mmul8_q;
    wire [0:0] i_unnamed_mmul9_q;
    wire [63:0] bgTrunc_i_mul_mmul2_sel_x_in;
    wire [31:0] bgTrunc_i_mul_mmul2_sel_x_b;
    wire [31:0] bgTrunc_i_unnamed_mmul15_sel_x_b;
    wire [32:0] bgTrunc_i_unnamed_mmul17_sel_x_b;
    wire [63:0] bgTrunc_i_unnamed_mmul19_sel_x_in;
    wire [31:0] bgTrunc_i_unnamed_mmul19_sel_x_b;
    wire [31:0] bgTrunc_i_unnamed_mmul22_sel_x_b;
    wire [32:0] bgTrunc_i_unnamed_mmul24_sel_x_b;
    wire [31:0] c_i32_040_recast_x_q;
    wire [32:0] i_unnamed_mmul16_sel_x_b;
    wire [32:0] i_unnamed_mmul23_sel_x_b;
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
    wire [63:0] i_mul_mmul2_sums_join_0_q;
    wire [50:0] i_mul_mmul2_sums_align_1_q;
    wire [50:0] i_mul_mmul2_sums_align_1_qint;
    wire [64:0] i_mul_mmul2_sums_result_add_0_0_a;
    wire [64:0] i_mul_mmul2_sums_result_add_0_0_b;
    logic [64:0] i_mul_mmul2_sums_result_add_0_0_o;
    wire [64:0] i_mul_mmul2_sums_result_add_0_0_q;
    wire [63:0] i_unnamed_mmul19_sums_join_0_q;
    wire [50:0] i_unnamed_mmul19_sums_align_1_q;
    wire [50:0] i_unnamed_mmul19_sums_align_1_qint;
    wire [64:0] i_unnamed_mmul19_sums_result_add_0_0_a;
    wire [64:0] i_unnamed_mmul19_sums_result_add_0_0_b;
    logic [64:0] i_unnamed_mmul19_sums_result_add_0_0_o;
    wire [64:0] i_unnamed_mmul19_sums_result_add_0_0_q;
    wire i_mul_mmul2_im0_cma_reset;
    wire [13:0] i_mul_mmul2_im0_cma_a0;
    wire [13:0] i_mul_mmul2_im0_cma_c0;
    wire [27:0] i_mul_mmul2_im0_cma_s0;
    wire [27:0] i_mul_mmul2_im0_cma_qq;
    wire [27:0] i_mul_mmul2_im0_cma_q;
    wire i_mul_mmul2_im0_cma_ena0;
    wire i_mul_mmul2_im0_cma_ena1;
    wire i_mul_mmul2_im0_cma_ena2;
    wire i_mul_mmul2_im8_cma_reset;
    wire [17:0] i_mul_mmul2_im8_cma_a0;
    wire [17:0] i_mul_mmul2_im8_cma_c0;
    wire [35:0] i_mul_mmul2_im8_cma_s0;
    wire [35:0] i_mul_mmul2_im8_cma_qq;
    wire [35:0] i_mul_mmul2_im8_cma_q;
    wire i_mul_mmul2_im8_cma_ena0;
    wire i_mul_mmul2_im8_cma_ena1;
    wire i_mul_mmul2_im8_cma_ena2;
    wire i_unnamed_mmul19_im0_cma_reset;
    wire [13:0] i_unnamed_mmul19_im0_cma_a0;
    wire [13:0] i_unnamed_mmul19_im0_cma_c0;
    wire [27:0] i_unnamed_mmul19_im0_cma_s0;
    wire [27:0] i_unnamed_mmul19_im0_cma_qq;
    wire [27:0] i_unnamed_mmul19_im0_cma_q;
    wire i_unnamed_mmul19_im0_cma_ena0;
    wire i_unnamed_mmul19_im0_cma_ena1;
    wire i_unnamed_mmul19_im0_cma_ena2;
    wire i_unnamed_mmul19_im8_cma_reset;
    wire [17:0] i_unnamed_mmul19_im8_cma_a0;
    wire [17:0] i_unnamed_mmul19_im8_cma_c0;
    wire [35:0] i_unnamed_mmul19_im8_cma_s0;
    wire [35:0] i_unnamed_mmul19_im8_cma_qq;
    wire [35:0] i_unnamed_mmul19_im8_cma_q;
    wire i_unnamed_mmul19_im8_cma_ena0;
    wire i_unnamed_mmul19_im8_cma_ena1;
    wire i_unnamed_mmul19_im8_cma_ena2;
    wire i_mul_mmul2_ma3_cma_reset;
    wire [13:0] i_mul_mmul2_ma3_cma_a0;
    wire [17:0] i_mul_mmul2_ma3_cma_c0;
    wire [13:0] i_mul_mmul2_ma3_cma_a1;
    wire [17:0] i_mul_mmul2_ma3_cma_c1;
    wire [32:0] i_mul_mmul2_ma3_cma_s0;
    wire [32:0] i_mul_mmul2_ma3_cma_qq;
    wire [32:0] i_mul_mmul2_ma3_cma_q;
    wire i_mul_mmul2_ma3_cma_ena0;
    wire i_mul_mmul2_ma3_cma_ena1;
    wire i_mul_mmul2_ma3_cma_ena2;
    wire i_unnamed_mmul19_ma3_cma_reset;
    wire [13:0] i_unnamed_mmul19_ma3_cma_a0;
    wire [17:0] i_unnamed_mmul19_ma3_cma_c0;
    wire [13:0] i_unnamed_mmul19_ma3_cma_a1;
    wire [17:0] i_unnamed_mmul19_ma3_cma_c1;
    wire [32:0] i_unnamed_mmul19_ma3_cma_s0;
    wire [32:0] i_unnamed_mmul19_ma3_cma_qq;
    wire [32:0] i_unnamed_mmul19_ma3_cma_q;
    wire i_unnamed_mmul19_ma3_cma_ena0;
    wire i_unnamed_mmul19_ma3_cma_ena1;
    wire i_unnamed_mmul19_ma3_cma_ena2;
    wire [13:0] i_mul_mmul2_bs1_merged_bit_select_b;
    wire [17:0] i_mul_mmul2_bs1_merged_bit_select_c;
    wire [13:0] i_unnamed_mmul19_bs1_merged_bit_select_b;
    wire [17:0] i_unnamed_mmul19_bs1_merged_bit_select_c;
    reg [31:0] redist0_bgTrunc_i_unnamed_mmul19_sel_x_b_1_q;
    reg [0:0] redist1_sync_together46_in_i_valid_1_q;
    reg [0:0] redist2_sync_together46_in_i_valid_4_q;
    reg [0:0] redist2_sync_together46_in_i_valid_4_delay_0;
    reg [0:0] redist2_sync_together46_in_i_valid_4_delay_1;
    reg [0:0] redist3_sync_together46_in_i_valid_5_q;
    reg [31:0] redist4_i_unnamed_mmul23_vt_select_31_b_1_q;
    reg [0:0] redist5_i_cmp26_mmul3_q_1_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist1_sync_together46_in_i_valid_1(DELAY,134)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together46_in_i_valid_1_q <= '0;
        end
        else
        begin
            redist1_sync_together46_in_i_valid_1_q <= $unsigned(in_i_valid);
        end
    end

    // redist2_sync_together46_in_i_valid_4(DELAY,135)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_sync_together46_in_i_valid_4_delay_0 <= '0;
            redist2_sync_together46_in_i_valid_4_delay_1 <= '0;
            redist2_sync_together46_in_i_valid_4_q <= '0;
        end
        else
        begin
            redist2_sync_together46_in_i_valid_4_delay_0 <= $unsigned(redist1_sync_together46_in_i_valid_1_q);
            redist2_sync_together46_in_i_valid_4_delay_1 <= redist2_sync_together46_in_i_valid_4_delay_0;
            redist2_sync_together46_in_i_valid_4_q <= redist2_sync_together46_in_i_valid_4_delay_1;
        end
    end

    // redist3_sync_together46_in_i_valid_5(DELAY,136)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_sync_together46_in_i_valid_5_q <= '0;
        end
        else
        begin
            redist3_sync_together46_in_i_valid_5_q <= $unsigned(redist2_sync_together46_in_i_valid_4_q);
        end
    end

    // valid_fanout_reg6(REG,83)@6 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg6_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg6_q <= $unsigned(redist3_sync_together46_in_i_valid_5_q);
        end
    end

    // c_i32_040_recast_x(CONSTANT,68)
    assign c_i32_040_recast_x_q = $unsigned(32'b00000000000000000000000000000000);

    // valid_fanout_reg1(REG,78)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg1_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg1_q <= $unsigned(redist1_sync_together46_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_sync_buffer_i32_n_sync_buffer2_mmul1(BLACKBOX,27)@0
    // in in_i_dependence@3
    // in in_valid_in@3
    // out out_buffer_out@3
    // out out_valid_out@3
    mmul_i_llvm_fpga_sync_buffer_i32_n_sync_buffer2_0 thei_llvm_fpga_sync_buffer_i32_n_sync_buffer2_mmul1 (
        .in_buffer_in(in_N),
        .in_i_dependence(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_buffer_out(i_llvm_fpga_sync_buffer_i32_n_sync_buffer2_mmul1_out_buffer_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_mul_mmul2_bs1_merged_bit_select(BITSELECT,131)@3
    assign i_mul_mmul2_bs1_merged_bit_select_b = i_llvm_fpga_sync_buffer_i32_n_sync_buffer2_mmul1_out_buffer_out[31:18];
    assign i_mul_mmul2_bs1_merged_bit_select_c = i_llvm_fpga_sync_buffer_i32_n_sync_buffer2_mmul1_out_buffer_out[17:0];

    // i_mul_mmul2_ma3_cma(CHAINMULTADD,129)@3 + 3
    assign i_mul_mmul2_ma3_cma_reset = ~ (resetn);
    assign i_mul_mmul2_ma3_cma_ena0 = 1'b1;
    assign i_mul_mmul2_ma3_cma_ena1 = i_mul_mmul2_ma3_cma_ena0;
    assign i_mul_mmul2_ma3_cma_ena2 = i_mul_mmul2_ma3_cma_ena0;

    assign i_mul_mmul2_ma3_cma_a0 = i_mul_mmul2_bs1_merged_bit_select_b;
    assign i_mul_mmul2_ma3_cma_c0 = i_mul_mmul2_bs1_merged_bit_select_c;
    assign i_mul_mmul2_ma3_cma_a1 = i_mul_mmul2_bs1_merged_bit_select_b;
    assign i_mul_mmul2_ma3_cma_c1 = i_mul_mmul2_bs1_merged_bit_select_c;
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
    ) i_mul_mmul2_ma3_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul_mmul2_ma3_cma_ena2, i_mul_mmul2_ma3_cma_ena1, i_mul_mmul2_ma3_cma_ena0 }),
        .aclr({ i_mul_mmul2_ma3_cma_reset, i_mul_mmul2_ma3_cma_reset }),
        .ay(i_mul_mmul2_ma3_cma_a1),
        .by(i_mul_mmul2_ma3_cma_a0),
        .ax(i_mul_mmul2_ma3_cma_c1),
        .bx(i_mul_mmul2_ma3_cma_c0),
        .resulta(i_mul_mmul2_ma3_cma_s0),
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
    i_mul_mmul2_ma3_cma_delay ( .xin(i_mul_mmul2_ma3_cma_s0), .xout(i_mul_mmul2_ma3_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul_mmul2_ma3_cma_q = $unsigned(i_mul_mmul2_ma3_cma_qq[32:0]);

    // i_mul_mmul2_sums_align_1(BITSHIFT,107)@6
    assign i_mul_mmul2_sums_align_1_qint = { i_mul_mmul2_ma3_cma_q, 18'b000000000000000000 };
    assign i_mul_mmul2_sums_align_1_q = i_mul_mmul2_sums_align_1_qint[50:0];

    // i_mul_mmul2_im0_cma(CHAINMULTADD,125)@3 + 3
    assign i_mul_mmul2_im0_cma_reset = ~ (resetn);
    assign i_mul_mmul2_im0_cma_ena0 = 1'b1;
    assign i_mul_mmul2_im0_cma_ena1 = i_mul_mmul2_im0_cma_ena0;
    assign i_mul_mmul2_im0_cma_ena2 = i_mul_mmul2_im0_cma_ena0;

    assign i_mul_mmul2_im0_cma_a0 = i_mul_mmul2_bs1_merged_bit_select_b;
    assign i_mul_mmul2_im0_cma_c0 = i_mul_mmul2_bs1_merged_bit_select_b;
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
    ) i_mul_mmul2_im0_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul_mmul2_im0_cma_ena2, i_mul_mmul2_im0_cma_ena1, i_mul_mmul2_im0_cma_ena0 }),
        .aclr({ i_mul_mmul2_im0_cma_reset, i_mul_mmul2_im0_cma_reset }),
        .ay(i_mul_mmul2_im0_cma_a0),
        .ax(i_mul_mmul2_im0_cma_c0),
        .resulta(i_mul_mmul2_im0_cma_s0),
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
    i_mul_mmul2_im0_cma_delay ( .xin(i_mul_mmul2_im0_cma_s0), .xout(i_mul_mmul2_im0_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul_mmul2_im0_cma_q = $unsigned(i_mul_mmul2_im0_cma_qq[27:0]);

    // i_mul_mmul2_im8_cma(CHAINMULTADD,126)@3 + 3
    assign i_mul_mmul2_im8_cma_reset = ~ (resetn);
    assign i_mul_mmul2_im8_cma_ena0 = 1'b1;
    assign i_mul_mmul2_im8_cma_ena1 = i_mul_mmul2_im8_cma_ena0;
    assign i_mul_mmul2_im8_cma_ena2 = i_mul_mmul2_im8_cma_ena0;

    assign i_mul_mmul2_im8_cma_a0 = i_mul_mmul2_bs1_merged_bit_select_c;
    assign i_mul_mmul2_im8_cma_c0 = i_mul_mmul2_bs1_merged_bit_select_c;
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
    ) i_mul_mmul2_im8_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul_mmul2_im8_cma_ena2, i_mul_mmul2_im8_cma_ena1, i_mul_mmul2_im8_cma_ena0 }),
        .aclr({ i_mul_mmul2_im8_cma_reset, i_mul_mmul2_im8_cma_reset }),
        .ay(i_mul_mmul2_im8_cma_a0),
        .ax(i_mul_mmul2_im8_cma_c0),
        .resulta(i_mul_mmul2_im8_cma_s0),
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
    i_mul_mmul2_im8_cma_delay ( .xin(i_mul_mmul2_im8_cma_s0), .xout(i_mul_mmul2_im8_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul_mmul2_im8_cma_q = $unsigned(i_mul_mmul2_im8_cma_qq[35:0]);

    // i_mul_mmul2_sums_join_0(BITJOIN,106)@6
    assign i_mul_mmul2_sums_join_0_q = {i_mul_mmul2_im0_cma_q, i_mul_mmul2_im8_cma_q};

    // i_mul_mmul2_sums_result_add_0_0(ADD,109)@6
    assign i_mul_mmul2_sums_result_add_0_0_a = {1'b0, i_mul_mmul2_sums_join_0_q};
    assign i_mul_mmul2_sums_result_add_0_0_b = {14'b00000000000000, i_mul_mmul2_sums_align_1_q};
    assign i_mul_mmul2_sums_result_add_0_0_o = $unsigned(i_mul_mmul2_sums_result_add_0_0_a) + $unsigned(i_mul_mmul2_sums_result_add_0_0_b);
    assign i_mul_mmul2_sums_result_add_0_0_q = i_mul_mmul2_sums_result_add_0_0_o[64:0];

    // bgTrunc_i_mul_mmul2_sel_x(BITSELECT,62)@6
    assign bgTrunc_i_mul_mmul2_sel_x_in = i_mul_mmul2_sums_result_add_0_0_q[63:0];
    assign bgTrunc_i_mul_mmul2_sel_x_b = bgTrunc_i_mul_mmul2_sel_x_in[31:0];

    // i_mul_mmul2_vt_select_30(BITSELECT,35)@6
    assign i_mul_mmul2_vt_select_30_b = bgTrunc_i_mul_mmul2_sel_x_b[30:0];

    // i_mul_mmul2_vt_join(BITJOIN,34)@6
    assign i_mul_mmul2_vt_join_q = {GND_q, i_mul_mmul2_vt_select_30_b};

    // i_cmp26_mmul3(LOGICAL,22)@6
    assign i_cmp26_mmul3_q = $unsigned(i_mul_mmul2_vt_join_q != c_i32_040_recast_x_q ? 1'b1 : 1'b0);

    // redist5_i_cmp26_mmul3_q_1(DELAY,138)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_i_cmp26_mmul3_q_1_q <= '0;
        end
        else
        begin
            redist5_i_cmp26_mmul3_q_1_q <= $unsigned(i_cmp26_mmul3_q);
        end
    end

    // valid_fanout_reg2(REG,79)@6 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg2_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg2_q <= $unsigned(redist3_sync_together46_in_i_valid_5_q);
        end
    end

    // i_llvm_fpga_sync_buffer_i32_n_sync_buffer_mmul5(BLACKBOX,31)@0
    // in in_i_dependence@7
    // in in_valid_in@7
    // out out_buffer_out@7
    // out out_valid_out@7
    mmul_i_llvm_fpga_sync_buffer_i32_n_sync_buffer_0 thei_llvm_fpga_sync_buffer_i32_n_sync_buffer_mmul5 (
        .in_buffer_in(in_N),
        .in_i_dependence(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_buffer_out(i_llvm_fpga_sync_buffer_i32_n_sync_buffer_mmul5_out_buffer_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_cmp222_mmul6(COMPARE,21)@7
    assign i_cmp222_mmul6_a = $unsigned({{2{c_i32_040_recast_x_q[31]}}, c_i32_040_recast_x_q});
    assign i_cmp222_mmul6_b = $unsigned({{2{i_llvm_fpga_sync_buffer_i32_n_sync_buffer_mmul5_out_buffer_out[31]}}, i_llvm_fpga_sync_buffer_i32_n_sync_buffer_mmul5_out_buffer_out});
    assign i_cmp222_mmul6_o = $unsigned($signed(i_cmp222_mmul6_a) - $signed(i_cmp222_mmul6_b));
    assign i_cmp222_mmul6_c[0] = i_cmp222_mmul6_o[33];

    // i_unnamed_mmul8(LOGICAL,53)@7
    assign i_unnamed_mmul8_q = i_cmp222_mmul6_c & redist5_i_cmp26_mmul3_q_1_q;

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_llvm_fpga_ffwd_source_i1_unnamed_mmul1_mmul25(BLACKBOX,23)@7
    // out out_intel_reserved_ffwd_0_0@20000000
    mmul_i_llvm_fpga_ffwd_source_i1_unnamed_1_mmul0 thei_llvm_fpga_ffwd_source_i1_unnamed_mmul1_mmul25 (
        .in_predicate_in(GND_q),
        .in_src_data_in_0_0(i_unnamed_mmul8_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg6_q),
        .out_intel_reserved_ffwd_0_0(i_llvm_fpga_ffwd_source_i1_unnamed_mmul1_mmul25_out_intel_reserved_ffwd_0_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // regfree_osync(GPOUT,59)
    assign out_intel_reserved_ffwd_0_0 = i_llvm_fpga_ffwd_source_i1_unnamed_mmul1_mmul25_out_intel_reserved_ffwd_0_0;

    // valid_fanout_reg7(REG,84)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg7_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg7_q <= $unsigned(redist2_sync_together46_in_i_valid_4_q);
        end
    end

    // i_unnamed_mmul9(LOGICAL,54)@6
    assign i_unnamed_mmul9_q = i_cmp26_mmul3_q ^ VCC_q;

    // i_llvm_fpga_ffwd_source_i1_unnamed_mmul2_mmul26(BLACKBOX,24)@6
    // out out_intel_reserved_ffwd_1_0@20000000
    mmul_i_llvm_fpga_ffwd_source_i1_unnamed_2_mmul0 thei_llvm_fpga_ffwd_source_i1_unnamed_mmul2_mmul26 (
        .in_predicate_in(GND_q),
        .in_src_data_in_1_0(i_unnamed_mmul9_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg7_q),
        .out_intel_reserved_ffwd_1_0(i_llvm_fpga_ffwd_source_i1_unnamed_mmul2_mmul26_out_intel_reserved_ffwd_1_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_regfree_osync_x(GPOUT,70)
    assign out_intel_reserved_ffwd_1_0 = i_llvm_fpga_ffwd_source_i1_unnamed_mmul2_mmul26_out_intel_reserved_ffwd_1_0;

    // valid_fanout_reg8(REG,85)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg8_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg8_q <= $unsigned(redist1_sync_together46_in_i_valid_1_q);
        end
    end

    // c_i33_144(CONSTANT,20)
    assign c_i33_144_q = $unsigned(33'b111111111111111111111111111111111);

    // c_i32_143(CONSTANT,19)
    assign c_i32_143_q = $unsigned(32'b11111111111111111111111111111111);

    // valid_fanout_reg4(REG,81)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg4_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg4_q <= $unsigned(redist1_sync_together46_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_sync_buffer_i32_n_sync_buffer5_mmul13(BLACKBOX,29)@0
    // in in_i_dependence@3
    // in in_valid_in@3
    // out out_buffer_out@3
    // out out_valid_out@3
    mmul_i_llvm_fpga_sync_buffer_i32_n_sync_buffer5_0 thei_llvm_fpga_sync_buffer_i32_n_sync_buffer5_mmul13 (
        .in_buffer_in(in_N),
        .in_i_dependence(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_buffer_out(i_llvm_fpga_sync_buffer_i32_n_sync_buffer5_mmul13_out_buffer_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_142(CONSTANT,18)
    assign c_i32_142_q = $unsigned(32'b00000000000000000000000000000001);

    // valid_fanout_reg3(REG,80)@1 + 1
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

    // i_llvm_fpga_sync_buffer_i32_n_sync_buffer4_mmul10(BLACKBOX,28)@0
    // in in_i_dependence@2
    // in in_valid_in@2
    // out out_buffer_out@2
    // out out_valid_out@2
    mmul_i_llvm_fpga_sync_buffer_i32_n_sync_buffer4_0 thei_llvm_fpga_sync_buffer_i32_n_sync_buffer4_mmul10 (
        .in_buffer_in(in_N),
        .in_i_dependence(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_buffer_out(i_llvm_fpga_sync_buffer_i32_n_sync_buffer4_mmul10_out_buffer_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_mmul11(COMPARE,38)@2 + 1
    assign i_unnamed_mmul11_a = $unsigned({{2{c_i32_142_q[31]}}, c_i32_142_q});
    assign i_unnamed_mmul11_b = $unsigned({{2{i_llvm_fpga_sync_buffer_i32_n_sync_buffer4_mmul10_out_buffer_out[31]}}, i_llvm_fpga_sync_buffer_i32_n_sync_buffer4_mmul10_out_buffer_out});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_unnamed_mmul11_o <= 34'b0;
        end
        else
        begin
            i_unnamed_mmul11_o <= $unsigned($signed(i_unnamed_mmul11_a) - $signed(i_unnamed_mmul11_b));
        end
    end
    assign i_unnamed_mmul11_c[0] = i_unnamed_mmul11_o[33];

    // i_smax_mmul14(MUX,36)@3
    assign i_smax_mmul14_s = i_unnamed_mmul11_c;
    always @(i_smax_mmul14_s or c_i32_142_q or i_llvm_fpga_sync_buffer_i32_n_sync_buffer5_mmul13_out_buffer_out)
    begin
        unique case (i_smax_mmul14_s)
            1'b0 : i_smax_mmul14_q = c_i32_142_q;
            1'b1 : i_smax_mmul14_q = i_llvm_fpga_sync_buffer_i32_n_sync_buffer5_mmul13_out_buffer_out;
            default : i_smax_mmul14_q = 32'b0;
        endcase
    end

    // i_unnamed_mmul15(ADD,39)@3
    assign i_unnamed_mmul15_a = {1'b0, i_smax_mmul14_q};
    assign i_unnamed_mmul15_b = {1'b0, c_i32_143_q};
    assign i_unnamed_mmul15_o = $unsigned(i_unnamed_mmul15_a) + $unsigned(i_unnamed_mmul15_b);
    assign i_unnamed_mmul15_q = i_unnamed_mmul15_o[32:0];

    // bgTrunc_i_unnamed_mmul15_sel_x(BITSELECT,63)@3
    assign bgTrunc_i_unnamed_mmul15_sel_x_b = i_unnamed_mmul15_q[31:0];

    // i_unnamed_mmul16_sel_x(BITSELECT,74)@3
    assign i_unnamed_mmul16_sel_x_b = {1'b0, bgTrunc_i_unnamed_mmul15_sel_x_b[31:0]};

    // i_unnamed_mmul16_vt_select_31(BITSELECT,43)@3
    assign i_unnamed_mmul16_vt_select_31_b = i_unnamed_mmul16_sel_x_b[31:0];

    // i_unnamed_mmul16_vt_join(BITJOIN,42)@3
    assign i_unnamed_mmul16_vt_join_q = {GND_q, i_unnamed_mmul16_vt_select_31_b};

    // i_unnamed_mmul17(ADD,44)@3
    assign i_unnamed_mmul17_a = {1'b0, i_unnamed_mmul16_vt_join_q};
    assign i_unnamed_mmul17_b = {1'b0, c_i33_144_q};
    assign i_unnamed_mmul17_o = $unsigned(i_unnamed_mmul17_a) + $unsigned(i_unnamed_mmul17_b);
    assign i_unnamed_mmul17_q = i_unnamed_mmul17_o[33:0];

    // bgTrunc_i_unnamed_mmul17_sel_x(BITSELECT,64)@3
    assign bgTrunc_i_unnamed_mmul17_sel_x_b = i_unnamed_mmul17_q[32:0];

    // i_llvm_fpga_ffwd_source_i33_unnamed_mmul3_mmul27(BLACKBOX,25)@3
    // out out_intel_reserved_ffwd_2_0@20000000
    mmul_i_llvm_fpga_ffwd_source_i33_unnamed_3_mmul0 thei_llvm_fpga_ffwd_source_i33_unnamed_mmul3_mmul27 (
        .in_predicate_in(GND_q),
        .in_src_data_in_2_0(bgTrunc_i_unnamed_mmul17_sel_x_b),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg8_q),
        .out_intel_reserved_ffwd_2_0(i_llvm_fpga_ffwd_source_i33_unnamed_mmul3_mmul27_out_intel_reserved_ffwd_2_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_1_regfree_osync_x(GPOUT,72)
    assign out_intel_reserved_ffwd_2_0 = i_llvm_fpga_ffwd_source_i33_unnamed_mmul3_mmul27_out_intel_reserved_ffwd_2_0;

    // valid_fanout_reg9(REG,86)@6 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg9_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg9_q <= $unsigned(redist3_sync_together46_in_i_valid_5_q);
        end
    end

    // valid_fanout_reg5(REG,82)@1 + 1
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

    // i_llvm_fpga_sync_buffer_i32_n_sync_buffer6_mmul18(BLACKBOX,30)@0
    // in in_i_dependence@2
    // in in_valid_in@2
    // out out_buffer_out@2
    // out out_valid_out@2
    mmul_i_llvm_fpga_sync_buffer_i32_n_sync_buffer6_0 thei_llvm_fpga_sync_buffer_i32_n_sync_buffer6_mmul18 (
        .in_buffer_in(in_N),
        .in_i_dependence(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_buffer_out(i_llvm_fpga_sync_buffer_i32_n_sync_buffer6_mmul18_out_buffer_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_mmul19_bs1_merged_bit_select(BITSELECT,132)@2
    assign i_unnamed_mmul19_bs1_merged_bit_select_b = i_llvm_fpga_sync_buffer_i32_n_sync_buffer6_mmul18_out_buffer_out[31:18];
    assign i_unnamed_mmul19_bs1_merged_bit_select_c = i_llvm_fpga_sync_buffer_i32_n_sync_buffer6_mmul18_out_buffer_out[17:0];

    // i_unnamed_mmul19_ma3_cma(CHAINMULTADD,130)@2 + 3
    assign i_unnamed_mmul19_ma3_cma_reset = ~ (resetn);
    assign i_unnamed_mmul19_ma3_cma_ena0 = 1'b1;
    assign i_unnamed_mmul19_ma3_cma_ena1 = i_unnamed_mmul19_ma3_cma_ena0;
    assign i_unnamed_mmul19_ma3_cma_ena2 = i_unnamed_mmul19_ma3_cma_ena0;

    assign i_unnamed_mmul19_ma3_cma_a0 = i_unnamed_mmul19_bs1_merged_bit_select_b;
    assign i_unnamed_mmul19_ma3_cma_c0 = i_unnamed_mmul19_bs1_merged_bit_select_c;
    assign i_unnamed_mmul19_ma3_cma_a1 = i_unnamed_mmul19_bs1_merged_bit_select_b;
    assign i_unnamed_mmul19_ma3_cma_c1 = i_unnamed_mmul19_bs1_merged_bit_select_c;
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
    ) i_unnamed_mmul19_ma3_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_unnamed_mmul19_ma3_cma_ena2, i_unnamed_mmul19_ma3_cma_ena1, i_unnamed_mmul19_ma3_cma_ena0 }),
        .aclr({ i_unnamed_mmul19_ma3_cma_reset, i_unnamed_mmul19_ma3_cma_reset }),
        .ay(i_unnamed_mmul19_ma3_cma_a1),
        .by(i_unnamed_mmul19_ma3_cma_a0),
        .ax(i_unnamed_mmul19_ma3_cma_c1),
        .bx(i_unnamed_mmul19_ma3_cma_c0),
        .resulta(i_unnamed_mmul19_ma3_cma_s0),
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
    i_unnamed_mmul19_ma3_cma_delay ( .xin(i_unnamed_mmul19_ma3_cma_s0), .xout(i_unnamed_mmul19_ma3_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_unnamed_mmul19_ma3_cma_q = $unsigned(i_unnamed_mmul19_ma3_cma_qq[32:0]);

    // i_unnamed_mmul19_sums_align_1(BITSHIFT,122)@5
    assign i_unnamed_mmul19_sums_align_1_qint = { i_unnamed_mmul19_ma3_cma_q, 18'b000000000000000000 };
    assign i_unnamed_mmul19_sums_align_1_q = i_unnamed_mmul19_sums_align_1_qint[50:0];

    // i_unnamed_mmul19_im0_cma(CHAINMULTADD,127)@2 + 3
    assign i_unnamed_mmul19_im0_cma_reset = ~ (resetn);
    assign i_unnamed_mmul19_im0_cma_ena0 = 1'b1;
    assign i_unnamed_mmul19_im0_cma_ena1 = i_unnamed_mmul19_im0_cma_ena0;
    assign i_unnamed_mmul19_im0_cma_ena2 = i_unnamed_mmul19_im0_cma_ena0;

    assign i_unnamed_mmul19_im0_cma_a0 = i_unnamed_mmul19_bs1_merged_bit_select_b;
    assign i_unnamed_mmul19_im0_cma_c0 = i_unnamed_mmul19_bs1_merged_bit_select_b;
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
    ) i_unnamed_mmul19_im0_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_unnamed_mmul19_im0_cma_ena2, i_unnamed_mmul19_im0_cma_ena1, i_unnamed_mmul19_im0_cma_ena0 }),
        .aclr({ i_unnamed_mmul19_im0_cma_reset, i_unnamed_mmul19_im0_cma_reset }),
        .ay(i_unnamed_mmul19_im0_cma_a0),
        .ax(i_unnamed_mmul19_im0_cma_c0),
        .resulta(i_unnamed_mmul19_im0_cma_s0),
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
    i_unnamed_mmul19_im0_cma_delay ( .xin(i_unnamed_mmul19_im0_cma_s0), .xout(i_unnamed_mmul19_im0_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_unnamed_mmul19_im0_cma_q = $unsigned(i_unnamed_mmul19_im0_cma_qq[27:0]);

    // i_unnamed_mmul19_im8_cma(CHAINMULTADD,128)@2 + 3
    assign i_unnamed_mmul19_im8_cma_reset = ~ (resetn);
    assign i_unnamed_mmul19_im8_cma_ena0 = 1'b1;
    assign i_unnamed_mmul19_im8_cma_ena1 = i_unnamed_mmul19_im8_cma_ena0;
    assign i_unnamed_mmul19_im8_cma_ena2 = i_unnamed_mmul19_im8_cma_ena0;

    assign i_unnamed_mmul19_im8_cma_a0 = i_unnamed_mmul19_bs1_merged_bit_select_c;
    assign i_unnamed_mmul19_im8_cma_c0 = i_unnamed_mmul19_bs1_merged_bit_select_c;
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
    ) i_unnamed_mmul19_im8_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_unnamed_mmul19_im8_cma_ena2, i_unnamed_mmul19_im8_cma_ena1, i_unnamed_mmul19_im8_cma_ena0 }),
        .aclr({ i_unnamed_mmul19_im8_cma_reset, i_unnamed_mmul19_im8_cma_reset }),
        .ay(i_unnamed_mmul19_im8_cma_a0),
        .ax(i_unnamed_mmul19_im8_cma_c0),
        .resulta(i_unnamed_mmul19_im8_cma_s0),
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
    i_unnamed_mmul19_im8_cma_delay ( .xin(i_unnamed_mmul19_im8_cma_s0), .xout(i_unnamed_mmul19_im8_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_unnamed_mmul19_im8_cma_q = $unsigned(i_unnamed_mmul19_im8_cma_qq[35:0]);

    // i_unnamed_mmul19_sums_join_0(BITJOIN,121)@5
    assign i_unnamed_mmul19_sums_join_0_q = {i_unnamed_mmul19_im0_cma_q, i_unnamed_mmul19_im8_cma_q};

    // i_unnamed_mmul19_sums_result_add_0_0(ADD,124)@5
    assign i_unnamed_mmul19_sums_result_add_0_0_a = {1'b0, i_unnamed_mmul19_sums_join_0_q};
    assign i_unnamed_mmul19_sums_result_add_0_0_b = {14'b00000000000000, i_unnamed_mmul19_sums_align_1_q};
    assign i_unnamed_mmul19_sums_result_add_0_0_o = $unsigned(i_unnamed_mmul19_sums_result_add_0_0_a) + $unsigned(i_unnamed_mmul19_sums_result_add_0_0_b);
    assign i_unnamed_mmul19_sums_result_add_0_0_q = i_unnamed_mmul19_sums_result_add_0_0_o[64:0];

    // bgTrunc_i_unnamed_mmul19_sel_x(BITSELECT,65)@5
    assign bgTrunc_i_unnamed_mmul19_sel_x_in = i_unnamed_mmul19_sums_result_add_0_0_q[63:0];
    assign bgTrunc_i_unnamed_mmul19_sel_x_b = bgTrunc_i_unnamed_mmul19_sel_x_in[31:0];

    // redist0_bgTrunc_i_unnamed_mmul19_sel_x_b_1(DELAY,133)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_bgTrunc_i_unnamed_mmul19_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist0_bgTrunc_i_unnamed_mmul19_sel_x_b_1_q <= $unsigned(bgTrunc_i_unnamed_mmul19_sel_x_b);
        end
    end

    // i_unnamed_mmul20(COMPARE,46)@6
    assign i_unnamed_mmul20_a = {2'b00, c_i32_142_q};
    assign i_unnamed_mmul20_b = {2'b00, redist0_bgTrunc_i_unnamed_mmul19_sel_x_b_1_q};
    assign i_unnamed_mmul20_o = $unsigned(i_unnamed_mmul20_a) - $unsigned(i_unnamed_mmul20_b);
    assign i_unnamed_mmul20_c[0] = i_unnamed_mmul20_o[33];

    // i_umax_mmul21(MUX,37)@6
    assign i_umax_mmul21_s = i_unnamed_mmul20_c;
    always @(i_umax_mmul21_s or c_i32_142_q or redist0_bgTrunc_i_unnamed_mmul19_sel_x_b_1_q)
    begin
        unique case (i_umax_mmul21_s)
            1'b0 : i_umax_mmul21_q = c_i32_142_q;
            1'b1 : i_umax_mmul21_q = redist0_bgTrunc_i_unnamed_mmul19_sel_x_b_1_q;
            default : i_umax_mmul21_q = 32'b0;
        endcase
    end

    // i_unnamed_mmul22(ADD,47)@6
    assign i_unnamed_mmul22_a = {1'b0, i_umax_mmul21_q};
    assign i_unnamed_mmul22_b = {1'b0, c_i32_143_q};
    assign i_unnamed_mmul22_o = $unsigned(i_unnamed_mmul22_a) + $unsigned(i_unnamed_mmul22_b);
    assign i_unnamed_mmul22_q = i_unnamed_mmul22_o[32:0];

    // bgTrunc_i_unnamed_mmul22_sel_x(BITSELECT,66)@6
    assign bgTrunc_i_unnamed_mmul22_sel_x_b = i_unnamed_mmul22_q[31:0];

    // i_unnamed_mmul23_sel_x(BITSELECT,75)@6
    assign i_unnamed_mmul23_sel_x_b = {1'b0, bgTrunc_i_unnamed_mmul22_sel_x_b[31:0]};

    // i_unnamed_mmul23_vt_select_31(BITSELECT,51)@6
    assign i_unnamed_mmul23_vt_select_31_b = i_unnamed_mmul23_sel_x_b[31:0];

    // redist4_i_unnamed_mmul23_vt_select_31_b_1(DELAY,137)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_i_unnamed_mmul23_vt_select_31_b_1_q <= '0;
        end
        else
        begin
            redist4_i_unnamed_mmul23_vt_select_31_b_1_q <= $unsigned(i_unnamed_mmul23_vt_select_31_b);
        end
    end

    // i_unnamed_mmul23_vt_join(BITJOIN,50)@7
    assign i_unnamed_mmul23_vt_join_q = {GND_q, redist4_i_unnamed_mmul23_vt_select_31_b_1_q};

    // i_unnamed_mmul24(ADD,52)@7
    assign i_unnamed_mmul24_a = {1'b0, i_unnamed_mmul23_vt_join_q};
    assign i_unnamed_mmul24_b = {1'b0, c_i33_144_q};
    assign i_unnamed_mmul24_o = $unsigned(i_unnamed_mmul24_a) + $unsigned(i_unnamed_mmul24_b);
    assign i_unnamed_mmul24_q = i_unnamed_mmul24_o[33:0];

    // bgTrunc_i_unnamed_mmul24_sel_x(BITSELECT,67)@7
    assign bgTrunc_i_unnamed_mmul24_sel_x_b = i_unnamed_mmul24_q[32:0];

    // i_llvm_fpga_ffwd_source_i33_unnamed_mmul4_mmul28(BLACKBOX,26)@7
    // out out_intel_reserved_ffwd_3_0@20000000
    mmul_i_llvm_fpga_ffwd_source_i33_unnamed_4_mmul0 thei_llvm_fpga_ffwd_source_i33_unnamed_mmul4_mmul28 (
        .in_predicate_in(GND_q),
        .in_src_data_in_3_0(bgTrunc_i_unnamed_mmul24_sel_x_b),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg9_q),
        .out_intel_reserved_ffwd_3_0(i_llvm_fpga_ffwd_source_i33_unnamed_mmul4_mmul28_out_intel_reserved_ffwd_3_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_2_regfree_osync_x(GPOUT,73)
    assign out_intel_reserved_ffwd_3_0 = i_llvm_fpga_ffwd_source_i33_unnamed_mmul4_mmul28_out_intel_reserved_ffwd_3_0;

    // valid_fanout_reg0(REG,77)@6 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist3_sync_together46_in_i_valid_5_q);
        end
    end

    // sync_out_aunroll_x(GPOUT,76)@7
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_mmul5_0_tpl = GND_q;
    assign out_unnamed_mmul6 = GND_q;

endmodule
