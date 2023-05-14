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
// SystemVerilog created on Wed May 10 11:34:06 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module mmul_i_sfc_logic_s_c0_in_entry_s_c0_enter_mmul0 (
    input wire [31:0] in_N,
    input wire [31:0] in_i_m,
    output wire [0:0] out_intel_reserved_ffwd_0_0,
    input wire [0:0] in_i_valid,
    output wire [31:0] out_intel_reserved_ffwd_1_0,
    output wire [32:0] out_intel_reserved_ffwd_2_0,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_mmul4_0_tpl,
    output wire [0:0] out_unnamed_mmul5,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] c_i32_129_q;
    wire [31:0] c_i32_130_q;
    wire [32:0] c_i33_131_q;
    wire [33:0] i_cmp12_mmul2_a;
    wire [33:0] i_cmp12_mmul2_b;
    logic [33:0] i_cmp12_mmul2_o;
    wire [0:0] i_cmp12_mmul2_c;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_mmul1_mmul15_out_intel_reserved_ffwd_0_0;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_mmul2_mmul16_out_intel_reserved_ffwd_1_0;
    wire [32:0] i_llvm_fpga_ffwd_source_i33_unnamed_mmul3_mmul17_out_intel_reserved_ffwd_2_0;
    wire [31:0] i_llvm_fpga_sync_buffer_i32_i_m_sync_buffer_mmul5_out_buffer_out;
    wire [31:0] i_llvm_fpga_sync_buffer_i32_n_sync_buffer2_mmul4_out_buffer_out;
    wire [31:0] i_llvm_fpga_sync_buffer_i32_n_sync_buffer3_mmul7_out_buffer_out;
    wire [31:0] i_llvm_fpga_sync_buffer_i32_n_sync_buffer4_mmul10_out_buffer_out;
    wire [31:0] i_llvm_fpga_sync_buffer_i32_n_sync_buffer_mmul1_out_buffer_out;
    wire [0:0] i_smax_mmul11_s;
    reg [31:0] i_smax_mmul11_q;
    wire [32:0] i_unnamed_mmul12_a;
    wire [32:0] i_unnamed_mmul12_b;
    logic [32:0] i_unnamed_mmul12_o;
    wire [32:0] i_unnamed_mmul12_q;
    wire [32:0] i_unnamed_mmul13_vt_join_q;
    wire [31:0] i_unnamed_mmul13_vt_select_31_b;
    wire [33:0] i_unnamed_mmul14_a;
    wire [33:0] i_unnamed_mmul14_b;
    logic [33:0] i_unnamed_mmul14_o;
    wire [33:0] i_unnamed_mmul14_q;
    wire [33:0] i_unnamed_mmul8_a;
    wire [33:0] i_unnamed_mmul8_b;
    logic [33:0] i_unnamed_mmul8_o;
    wire [0:0] i_unnamed_mmul8_c;
    wire [63:0] bgTrunc_i_mul_mmul6_sel_x_in;
    wire [31:0] bgTrunc_i_mul_mmul6_sel_x_b;
    wire [31:0] bgTrunc_i_unnamed_mmul12_sel_x_b;
    wire [32:0] bgTrunc_i_unnamed_mmul14_sel_x_b;
    wire [31:0] c_i32_028_recast_x_q;
    wire [32:0] i_unnamed_mmul13_sel_x_b;
    (* dont_merge *) reg [0:0] valid_fanout_reg0_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg1_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg2_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg3_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg4_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg5_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg6_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg7_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg8_q;
    wire [63:0] i_mul_mmul6_sums_join_0_q;
    wire [50:0] i_mul_mmul6_sums_align_1_q;
    wire [50:0] i_mul_mmul6_sums_align_1_qint;
    wire [64:0] i_mul_mmul6_sums_result_add_0_0_a;
    wire [64:0] i_mul_mmul6_sums_result_add_0_0_b;
    logic [64:0] i_mul_mmul6_sums_result_add_0_0_o;
    wire [64:0] i_mul_mmul6_sums_result_add_0_0_q;
    wire i_mul_mmul6_im0_cma_reset;
    wire [13:0] i_mul_mmul6_im0_cma_a0;
    wire [13:0] i_mul_mmul6_im0_cma_c0;
    wire [27:0] i_mul_mmul6_im0_cma_s0;
    wire [27:0] i_mul_mmul6_im0_cma_qq;
    wire [27:0] i_mul_mmul6_im0_cma_q;
    wire i_mul_mmul6_im0_cma_ena0;
    wire i_mul_mmul6_im0_cma_ena1;
    wire i_mul_mmul6_im0_cma_ena2;
    wire i_mul_mmul6_im8_cma_reset;
    wire [17:0] i_mul_mmul6_im8_cma_a0;
    wire [17:0] i_mul_mmul6_im8_cma_c0;
    wire [35:0] i_mul_mmul6_im8_cma_s0;
    wire [35:0] i_mul_mmul6_im8_cma_qq;
    wire [35:0] i_mul_mmul6_im8_cma_q;
    wire i_mul_mmul6_im8_cma_ena0;
    wire i_mul_mmul6_im8_cma_ena1;
    wire i_mul_mmul6_im8_cma_ena2;
    wire i_mul_mmul6_ma3_cma_reset;
    wire [13:0] i_mul_mmul6_ma3_cma_a0;
    wire [17:0] i_mul_mmul6_ma3_cma_c0;
    wire [13:0] i_mul_mmul6_ma3_cma_a1;
    wire [17:0] i_mul_mmul6_ma3_cma_c1;
    wire [32:0] i_mul_mmul6_ma3_cma_s0;
    wire [32:0] i_mul_mmul6_ma3_cma_qq;
    wire [32:0] i_mul_mmul6_ma3_cma_q;
    wire i_mul_mmul6_ma3_cma_ena0;
    wire i_mul_mmul6_ma3_cma_ena1;
    wire i_mul_mmul6_ma3_cma_ena2;
    wire [13:0] i_mul_mmul6_bs1_merged_bit_select_b;
    wire [17:0] i_mul_mmul6_bs1_merged_bit_select_c;
    wire [13:0] i_mul_mmul6_bs2_merged_bit_select_b;
    wire [17:0] i_mul_mmul6_bs2_merged_bit_select_c;
    reg [0:0] redist0_sync_together34_in_i_valid_2_q;
    reg [0:0] redist0_sync_together34_in_i_valid_2_delay_0;
    reg [0:0] redist1_sync_together34_in_i_valid_3_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // valid_fanout_reg6(REG,56)@1 + 1
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

    // valid_fanout_reg1(REG,51)@1 + 1
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

    // i_llvm_fpga_sync_buffer_i32_n_sync_buffer_mmul1(BLACKBOX,24)@0
    // in in_i_dependence@2
    // in in_valid_in@2
    // out out_buffer_out@2
    // out out_valid_out@2
    mmul_i_llvm_fpga_sync_buffer_i32_n_sync_buffer_0 thei_llvm_fpga_sync_buffer_i32_n_sync_buffer_mmul1 (
        .in_buffer_in(in_N),
        .in_i_dependence(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_buffer_out(i_llvm_fpga_sync_buffer_i32_n_sync_buffer_mmul1_out_buffer_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_028_recast_x(CONSTANT,44)
    assign c_i32_028_recast_x_q = $unsigned(32'b00000000000000000000000000000000);

    // i_cmp12_mmul2(COMPARE,16)@2
    assign i_cmp12_mmul2_a = $unsigned({{2{c_i32_028_recast_x_q[31]}}, c_i32_028_recast_x_q});
    assign i_cmp12_mmul2_b = $unsigned({{2{i_llvm_fpga_sync_buffer_i32_n_sync_buffer_mmul1_out_buffer_out[31]}}, i_llvm_fpga_sync_buffer_i32_n_sync_buffer_mmul1_out_buffer_out});
    assign i_cmp12_mmul2_o = $unsigned($signed(i_cmp12_mmul2_a) - $signed(i_cmp12_mmul2_b));
    assign i_cmp12_mmul2_c[0] = i_cmp12_mmul2_o[33];

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_llvm_fpga_ffwd_source_i1_unnamed_mmul1_mmul15(BLACKBOX,17)@2
    // out out_intel_reserved_ffwd_0_0@20000000
    mmul_i_llvm_fpga_ffwd_source_i1_unnamed_1_mmul0 thei_llvm_fpga_ffwd_source_i1_unnamed_mmul1_mmul15 (
        .in_predicate_in(GND_q),
        .in_src_data_in_0_0(i_cmp12_mmul2_c),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg6_q),
        .out_intel_reserved_ffwd_0_0(i_llvm_fpga_ffwd_source_i1_unnamed_mmul1_mmul15_out_intel_reserved_ffwd_0_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // regfree_osync(GPOUT,38)
    assign out_intel_reserved_ffwd_0_0 = i_llvm_fpga_ffwd_source_i1_unnamed_mmul1_mmul15_out_intel_reserved_ffwd_0_0;

    // redist0_sync_together34_in_i_valid_2(DELAY,83)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_sync_together34_in_i_valid_2_delay_0 <= '0;
            redist0_sync_together34_in_i_valid_2_q <= '0;
        end
        else
        begin
            redist0_sync_together34_in_i_valid_2_delay_0 <= $unsigned(in_i_valid);
            redist0_sync_together34_in_i_valid_2_q <= redist0_sync_together34_in_i_valid_2_delay_0;
        end
    end

    // redist1_sync_together34_in_i_valid_3(DELAY,84)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together34_in_i_valid_3_q <= '0;
        end
        else
        begin
            redist1_sync_together34_in_i_valid_3_q <= $unsigned(redist0_sync_together34_in_i_valid_2_q);
        end
    end

    // valid_fanout_reg7(REG,57)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg7_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg7_q <= $unsigned(redist1_sync_together34_in_i_valid_3_q);
        end
    end

    // valid_fanout_reg2(REG,52)@1 + 1
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

    // i_llvm_fpga_sync_buffer_i32_n_sync_buffer2_mmul4(BLACKBOX,21)@0
    // in in_i_dependence@2
    // in in_valid_in@2
    // out out_buffer_out@2
    // out out_valid_out@2
    mmul_i_llvm_fpga_sync_buffer_i32_n_sync_buffer2_0 thei_llvm_fpga_sync_buffer_i32_n_sync_buffer2_mmul4 (
        .in_buffer_in(in_N),
        .in_i_dependence(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_buffer_out(i_llvm_fpga_sync_buffer_i32_n_sync_buffer2_mmul4_out_buffer_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_mul_mmul6_bs2_merged_bit_select(BITSELECT,82)@2
    assign i_mul_mmul6_bs2_merged_bit_select_b = i_llvm_fpga_sync_buffer_i32_n_sync_buffer2_mmul4_out_buffer_out[31:18];
    assign i_mul_mmul6_bs2_merged_bit_select_c = i_llvm_fpga_sync_buffer_i32_n_sync_buffer2_mmul4_out_buffer_out[17:0];

    // valid_fanout_reg3(REG,53)@1 + 1
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

    // i_llvm_fpga_sync_buffer_i32_i_m_sync_buffer_mmul5(BLACKBOX,20)@0
    // in in_i_dependence@2
    // in in_valid_in@2
    // out out_buffer_out@2
    // out out_valid_out@2
    mmul_i_llvm_fpga_sync_buffer_i32_i_m_sync_buffer_0 thei_llvm_fpga_sync_buffer_i32_i_m_sync_buffer_mmul5 (
        .in_buffer_in(in_i_m),
        .in_i_dependence(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_buffer_out(i_llvm_fpga_sync_buffer_i32_i_m_sync_buffer_mmul5_out_buffer_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_mul_mmul6_bs1_merged_bit_select(BITSELECT,81)@2
    assign i_mul_mmul6_bs1_merged_bit_select_b = i_llvm_fpga_sync_buffer_i32_i_m_sync_buffer_mmul5_out_buffer_out[31:18];
    assign i_mul_mmul6_bs1_merged_bit_select_c = i_llvm_fpga_sync_buffer_i32_i_m_sync_buffer_mmul5_out_buffer_out[17:0];

    // i_mul_mmul6_ma3_cma(CHAINMULTADD,80)@2 + 3
    assign i_mul_mmul6_ma3_cma_reset = ~ (resetn);
    assign i_mul_mmul6_ma3_cma_ena0 = 1'b1;
    assign i_mul_mmul6_ma3_cma_ena1 = i_mul_mmul6_ma3_cma_ena0;
    assign i_mul_mmul6_ma3_cma_ena2 = i_mul_mmul6_ma3_cma_ena0;

    assign i_mul_mmul6_ma3_cma_a0 = i_mul_mmul6_bs1_merged_bit_select_b;
    assign i_mul_mmul6_ma3_cma_c0 = i_mul_mmul6_bs2_merged_bit_select_c;
    assign i_mul_mmul6_ma3_cma_a1 = i_mul_mmul6_bs2_merged_bit_select_b;
    assign i_mul_mmul6_ma3_cma_c1 = i_mul_mmul6_bs1_merged_bit_select_c;
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
    ) i_mul_mmul6_ma3_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul_mmul6_ma3_cma_ena2, i_mul_mmul6_ma3_cma_ena1, i_mul_mmul6_ma3_cma_ena0 }),
        .aclr({ i_mul_mmul6_ma3_cma_reset, i_mul_mmul6_ma3_cma_reset }),
        .ay(i_mul_mmul6_ma3_cma_a1),
        .by(i_mul_mmul6_ma3_cma_a0),
        .ax(i_mul_mmul6_ma3_cma_c1),
        .bx(i_mul_mmul6_ma3_cma_c0),
        .resulta(i_mul_mmul6_ma3_cma_s0),
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
    i_mul_mmul6_ma3_cma_delay ( .xin(i_mul_mmul6_ma3_cma_s0), .xout(i_mul_mmul6_ma3_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul_mmul6_ma3_cma_q = $unsigned(i_mul_mmul6_ma3_cma_qq[32:0]);

    // i_mul_mmul6_sums_align_1(BITSHIFT,75)@5
    assign i_mul_mmul6_sums_align_1_qint = { i_mul_mmul6_ma3_cma_q, 18'b000000000000000000 };
    assign i_mul_mmul6_sums_align_1_q = i_mul_mmul6_sums_align_1_qint[50:0];

    // i_mul_mmul6_im0_cma(CHAINMULTADD,78)@2 + 3
    assign i_mul_mmul6_im0_cma_reset = ~ (resetn);
    assign i_mul_mmul6_im0_cma_ena0 = 1'b1;
    assign i_mul_mmul6_im0_cma_ena1 = i_mul_mmul6_im0_cma_ena0;
    assign i_mul_mmul6_im0_cma_ena2 = i_mul_mmul6_im0_cma_ena0;

    assign i_mul_mmul6_im0_cma_a0 = i_mul_mmul6_bs1_merged_bit_select_b;
    assign i_mul_mmul6_im0_cma_c0 = i_mul_mmul6_bs2_merged_bit_select_b;
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
    ) i_mul_mmul6_im0_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul_mmul6_im0_cma_ena2, i_mul_mmul6_im0_cma_ena1, i_mul_mmul6_im0_cma_ena0 }),
        .aclr({ i_mul_mmul6_im0_cma_reset, i_mul_mmul6_im0_cma_reset }),
        .ay(i_mul_mmul6_im0_cma_a0),
        .ax(i_mul_mmul6_im0_cma_c0),
        .resulta(i_mul_mmul6_im0_cma_s0),
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
    i_mul_mmul6_im0_cma_delay ( .xin(i_mul_mmul6_im0_cma_s0), .xout(i_mul_mmul6_im0_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul_mmul6_im0_cma_q = $unsigned(i_mul_mmul6_im0_cma_qq[27:0]);

    // i_mul_mmul6_im8_cma(CHAINMULTADD,79)@2 + 3
    assign i_mul_mmul6_im8_cma_reset = ~ (resetn);
    assign i_mul_mmul6_im8_cma_ena0 = 1'b1;
    assign i_mul_mmul6_im8_cma_ena1 = i_mul_mmul6_im8_cma_ena0;
    assign i_mul_mmul6_im8_cma_ena2 = i_mul_mmul6_im8_cma_ena0;

    assign i_mul_mmul6_im8_cma_a0 = i_mul_mmul6_bs1_merged_bit_select_c;
    assign i_mul_mmul6_im8_cma_c0 = i_mul_mmul6_bs2_merged_bit_select_c;
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
    ) i_mul_mmul6_im8_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul_mmul6_im8_cma_ena2, i_mul_mmul6_im8_cma_ena1, i_mul_mmul6_im8_cma_ena0 }),
        .aclr({ i_mul_mmul6_im8_cma_reset, i_mul_mmul6_im8_cma_reset }),
        .ay(i_mul_mmul6_im8_cma_a0),
        .ax(i_mul_mmul6_im8_cma_c0),
        .resulta(i_mul_mmul6_im8_cma_s0),
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
    i_mul_mmul6_im8_cma_delay ( .xin(i_mul_mmul6_im8_cma_s0), .xout(i_mul_mmul6_im8_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul_mmul6_im8_cma_q = $unsigned(i_mul_mmul6_im8_cma_qq[35:0]);

    // i_mul_mmul6_sums_join_0(BITJOIN,74)@5
    assign i_mul_mmul6_sums_join_0_q = {i_mul_mmul6_im0_cma_q, i_mul_mmul6_im8_cma_q};

    // i_mul_mmul6_sums_result_add_0_0(ADD,77)@5
    assign i_mul_mmul6_sums_result_add_0_0_a = {1'b0, i_mul_mmul6_sums_join_0_q};
    assign i_mul_mmul6_sums_result_add_0_0_b = {14'b00000000000000, i_mul_mmul6_sums_align_1_q};
    assign i_mul_mmul6_sums_result_add_0_0_o = $unsigned(i_mul_mmul6_sums_result_add_0_0_a) + $unsigned(i_mul_mmul6_sums_result_add_0_0_b);
    assign i_mul_mmul6_sums_result_add_0_0_q = i_mul_mmul6_sums_result_add_0_0_o[64:0];

    // bgTrunc_i_mul_mmul6_sel_x(BITSELECT,41)@5
    assign bgTrunc_i_mul_mmul6_sel_x_in = i_mul_mmul6_sums_result_add_0_0_q[63:0];
    assign bgTrunc_i_mul_mmul6_sel_x_b = bgTrunc_i_mul_mmul6_sel_x_in[31:0];

    // i_llvm_fpga_ffwd_source_i32_unnamed_mmul2_mmul16(BLACKBOX,18)@5
    // out out_intel_reserved_ffwd_1_0@20000000
    mmul_i_llvm_fpga_ffwd_source_i32_unnamed_2_mmul0 thei_llvm_fpga_ffwd_source_i32_unnamed_mmul2_mmul16 (
        .in_predicate_in(GND_q),
        .in_src_data_in_1_0(bgTrunc_i_mul_mmul6_sel_x_b),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg7_q),
        .out_intel_reserved_ffwd_1_0(i_llvm_fpga_ffwd_source_i32_unnamed_mmul2_mmul16_out_intel_reserved_ffwd_1_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_regfree_osync_x(GPOUT,46)
    assign out_intel_reserved_ffwd_1_0 = i_llvm_fpga_ffwd_source_i32_unnamed_mmul2_mmul16_out_intel_reserved_ffwd_1_0;

    // valid_fanout_reg8(REG,58)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg8_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg8_q <= $unsigned(redist1_sync_together34_in_i_valid_3_q);
        end
    end

    // c_i33_131(CONSTANT,15)
    assign c_i33_131_q = $unsigned(33'b111111111111111111111111111111111);

    // c_i32_130(CONSTANT,14)
    assign c_i32_130_q = $unsigned(32'b11111111111111111111111111111111);

    // valid_fanout_reg5(REG,55)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg5_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg5_q <= $unsigned(redist1_sync_together34_in_i_valid_3_q);
        end
    end

    // i_llvm_fpga_sync_buffer_i32_n_sync_buffer4_mmul10(BLACKBOX,23)@0
    // in in_i_dependence@5
    // in in_valid_in@5
    // out out_buffer_out@5
    // out out_valid_out@5
    mmul_i_llvm_fpga_sync_buffer_i32_n_sync_buffer4_0 thei_llvm_fpga_sync_buffer_i32_n_sync_buffer4_mmul10 (
        .in_buffer_in(in_N),
        .in_i_dependence(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_buffer_out(i_llvm_fpga_sync_buffer_i32_n_sync_buffer4_mmul10_out_buffer_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_129(CONSTANT,13)
    assign c_i32_129_q = $unsigned(32'b00000000000000000000000000000001);

    // valid_fanout_reg4(REG,54)@3 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg4_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg4_q <= $unsigned(redist0_sync_together34_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_sync_buffer_i32_n_sync_buffer3_mmul7(BLACKBOX,22)@0
    // in in_i_dependence@4
    // in in_valid_in@4
    // out out_buffer_out@4
    // out out_valid_out@4
    mmul_i_llvm_fpga_sync_buffer_i32_n_sync_buffer3_0 thei_llvm_fpga_sync_buffer_i32_n_sync_buffer3_mmul7 (
        .in_buffer_in(in_N),
        .in_i_dependence(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_buffer_out(i_llvm_fpga_sync_buffer_i32_n_sync_buffer3_mmul7_out_buffer_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_mmul8(COMPARE,33)@4 + 1
    assign i_unnamed_mmul8_a = $unsigned({{2{c_i32_129_q[31]}}, c_i32_129_q});
    assign i_unnamed_mmul8_b = $unsigned({{2{i_llvm_fpga_sync_buffer_i32_n_sync_buffer3_mmul7_out_buffer_out[31]}}, i_llvm_fpga_sync_buffer_i32_n_sync_buffer3_mmul7_out_buffer_out});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_unnamed_mmul8_o <= 34'b0;
        end
        else
        begin
            i_unnamed_mmul8_o <= $unsigned($signed(i_unnamed_mmul8_a) - $signed(i_unnamed_mmul8_b));
        end
    end
    assign i_unnamed_mmul8_c[0] = i_unnamed_mmul8_o[33];

    // i_smax_mmul11(MUX,26)@5
    assign i_smax_mmul11_s = i_unnamed_mmul8_c;
    always @(i_smax_mmul11_s or c_i32_129_q or i_llvm_fpga_sync_buffer_i32_n_sync_buffer4_mmul10_out_buffer_out)
    begin
        unique case (i_smax_mmul11_s)
            1'b0 : i_smax_mmul11_q = c_i32_129_q;
            1'b1 : i_smax_mmul11_q = i_llvm_fpga_sync_buffer_i32_n_sync_buffer4_mmul10_out_buffer_out;
            default : i_smax_mmul11_q = 32'b0;
        endcase
    end

    // i_unnamed_mmul12(ADD,27)@5
    assign i_unnamed_mmul12_a = {1'b0, i_smax_mmul11_q};
    assign i_unnamed_mmul12_b = {1'b0, c_i32_130_q};
    assign i_unnamed_mmul12_o = $unsigned(i_unnamed_mmul12_a) + $unsigned(i_unnamed_mmul12_b);
    assign i_unnamed_mmul12_q = i_unnamed_mmul12_o[32:0];

    // bgTrunc_i_unnamed_mmul12_sel_x(BITSELECT,42)@5
    assign bgTrunc_i_unnamed_mmul12_sel_x_b = i_unnamed_mmul12_q[31:0];

    // i_unnamed_mmul13_sel_x(BITSELECT,48)@5
    assign i_unnamed_mmul13_sel_x_b = {1'b0, bgTrunc_i_unnamed_mmul12_sel_x_b[31:0]};

    // i_unnamed_mmul13_vt_select_31(BITSELECT,31)@5
    assign i_unnamed_mmul13_vt_select_31_b = i_unnamed_mmul13_sel_x_b[31:0];

    // i_unnamed_mmul13_vt_join(BITJOIN,30)@5
    assign i_unnamed_mmul13_vt_join_q = {GND_q, i_unnamed_mmul13_vt_select_31_b};

    // i_unnamed_mmul14(ADD,32)@5
    assign i_unnamed_mmul14_a = {1'b0, i_unnamed_mmul13_vt_join_q};
    assign i_unnamed_mmul14_b = {1'b0, c_i33_131_q};
    assign i_unnamed_mmul14_o = $unsigned(i_unnamed_mmul14_a) + $unsigned(i_unnamed_mmul14_b);
    assign i_unnamed_mmul14_q = i_unnamed_mmul14_o[33:0];

    // bgTrunc_i_unnamed_mmul14_sel_x(BITSELECT,43)@5
    assign bgTrunc_i_unnamed_mmul14_sel_x_b = i_unnamed_mmul14_q[32:0];

    // i_llvm_fpga_ffwd_source_i33_unnamed_mmul3_mmul17(BLACKBOX,19)@5
    // out out_intel_reserved_ffwd_2_0@20000000
    mmul_i_llvm_fpga_ffwd_source_i33_unnamed_3_mmul0 thei_llvm_fpga_ffwd_source_i33_unnamed_mmul3_mmul17 (
        .in_predicate_in(GND_q),
        .in_src_data_in_2_0(bgTrunc_i_unnamed_mmul14_sel_x_b),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg8_q),
        .out_intel_reserved_ffwd_2_0(i_llvm_fpga_ffwd_source_i33_unnamed_mmul3_mmul17_out_intel_reserved_ffwd_2_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_1_regfree_osync_x(GPOUT,47)
    assign out_intel_reserved_ffwd_2_0 = i_llvm_fpga_ffwd_source_i33_unnamed_mmul3_mmul17_out_intel_reserved_ffwd_2_0;

    // valid_fanout_reg0(REG,50)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist1_sync_together34_in_i_valid_3_q);
        end
    end

    // sync_out_aunroll_x(GPOUT,49)@5
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_mmul4_0_tpl = GND_q;
    assign out_unnamed_mmul5 = GND_q;

endmodule
