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

// SystemVerilog created from maxpool2d_i_sfc_logic_s_c0_in_for_cond120000enter2422_maxpool2d0
// SystemVerilog created on Tue Jun  6 18:45:14 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module maxpool2d_i_sfc_logic_s_c0_in_for_cond120000enter2422_maxpool2d0 (
    input wire [31:0] in_output_size,
    output wire [0:0] out_c0_exi126_0_tpl,
    output wire [31:0] out_c0_exi126_1_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_maxpool2d0,
    input wire [0:0] in_c0_eni123_0_tpl,
    input wire [31:0] in_c0_eni123_1_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer2_maxpool2d2_out_buffer_out;
    wire [63:0] bgTrunc_i_mul32_maxpool2d3_sel_x_in;
    wire [31:0] bgTrunc_i_mul32_maxpool2d3_sel_x_b;
    (* dont_merge *) reg [0:0] valid_fanout_reg0_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg1_q;
    wire [63:0] i_mul32_maxpool2d3_sums_join_0_q;
    wire [50:0] i_mul32_maxpool2d3_sums_align_1_q;
    wire [50:0] i_mul32_maxpool2d3_sums_align_1_qint;
    wire [64:0] i_mul32_maxpool2d3_sums_result_add_0_0_a;
    wire [64:0] i_mul32_maxpool2d3_sums_result_add_0_0_b;
    logic [64:0] i_mul32_maxpool2d3_sums_result_add_0_0_o;
    wire [64:0] i_mul32_maxpool2d3_sums_result_add_0_0_q;
    wire i_mul32_maxpool2d3_im0_cma_reset;
    wire [13:0] i_mul32_maxpool2d3_im0_cma_a0;
    wire [13:0] i_mul32_maxpool2d3_im0_cma_c0;
    wire [27:0] i_mul32_maxpool2d3_im0_cma_s0;
    wire [27:0] i_mul32_maxpool2d3_im0_cma_qq;
    wire [27:0] i_mul32_maxpool2d3_im0_cma_q;
    wire i_mul32_maxpool2d3_im0_cma_ena0;
    wire i_mul32_maxpool2d3_im0_cma_ena1;
    wire i_mul32_maxpool2d3_im0_cma_ena2;
    wire i_mul32_maxpool2d3_im8_cma_reset;
    wire [17:0] i_mul32_maxpool2d3_im8_cma_a0;
    wire [17:0] i_mul32_maxpool2d3_im8_cma_c0;
    wire [35:0] i_mul32_maxpool2d3_im8_cma_s0;
    wire [35:0] i_mul32_maxpool2d3_im8_cma_qq;
    wire [35:0] i_mul32_maxpool2d3_im8_cma_q;
    wire i_mul32_maxpool2d3_im8_cma_ena0;
    wire i_mul32_maxpool2d3_im8_cma_ena1;
    wire i_mul32_maxpool2d3_im8_cma_ena2;
    wire i_mul32_maxpool2d3_ma3_cma_reset;
    wire [13:0] i_mul32_maxpool2d3_ma3_cma_a0;
    wire [17:0] i_mul32_maxpool2d3_ma3_cma_c0;
    wire [13:0] i_mul32_maxpool2d3_ma3_cma_a1;
    wire [17:0] i_mul32_maxpool2d3_ma3_cma_c1;
    wire [32:0] i_mul32_maxpool2d3_ma3_cma_s0;
    wire [32:0] i_mul32_maxpool2d3_ma3_cma_qq;
    wire [32:0] i_mul32_maxpool2d3_ma3_cma_q;
    wire i_mul32_maxpool2d3_ma3_cma_ena0;
    wire i_mul32_maxpool2d3_ma3_cma_ena1;
    wire i_mul32_maxpool2d3_ma3_cma_ena2;
    wire [13:0] i_mul32_maxpool2d3_bs2_merged_bit_select_b;
    wire [17:0] i_mul32_maxpool2d3_bs2_merged_bit_select_c;
    wire [13:0] i_mul32_maxpool2d3_bs1_merged_bit_select_b;
    wire [17:0] i_mul32_maxpool2d3_bs1_merged_bit_select_c;
    reg [31:0] redist0_sync_together9_aunroll_x_in_c0_eni123_1_tpl_1_q;
    reg [0:0] redist1_sync_together9_aunroll_x_in_i_valid_3_q;
    reg [0:0] redist1_sync_together9_aunroll_x_in_i_valid_3_delay_0;
    reg [0:0] redist1_sync_together9_aunroll_x_in_i_valid_3_delay_1;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist1_sync_together9_aunroll_x_in_i_valid_3(DELAY,35)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together9_aunroll_x_in_i_valid_3_delay_0 <= '0;
            redist1_sync_together9_aunroll_x_in_i_valid_3_delay_1 <= '0;
            redist1_sync_together9_aunroll_x_in_i_valid_3_q <= '0;
        end
        else
        begin
            redist1_sync_together9_aunroll_x_in_i_valid_3_delay_0 <= $unsigned(in_i_valid);
            redist1_sync_together9_aunroll_x_in_i_valid_3_delay_1 <= redist1_sync_together9_aunroll_x_in_i_valid_3_delay_0;
            redist1_sync_together9_aunroll_x_in_i_valid_3_q <= redist1_sync_together9_aunroll_x_in_i_valid_3_delay_1;
        end
    end

    // valid_fanout_reg0(REG,11)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist1_sync_together9_aunroll_x_in_i_valid_3_q);
        end
    end

    // valid_fanout_reg1(REG,12)@1 + 1
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

    // i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer2_maxpool2d2(BLACKBOX,4)@0
    // in in_i_dependence@2
    // in in_valid_in@2
    // out out_buffer_out@2
    // out out_valid_out@2
    maxpool2d_i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer2_0 thei_llvm_fpga_sync_buffer_i32_output_size_sync_buffer2_maxpool2d2 (
        .in_buffer_in(in_output_size),
        .in_i_dependence(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_buffer_out(i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer2_maxpool2d2_out_buffer_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_mul32_maxpool2d3_bs2_merged_bit_select(BITSELECT,32)@2
    assign i_mul32_maxpool2d3_bs2_merged_bit_select_b = i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer2_maxpool2d2_out_buffer_out[31:18];
    assign i_mul32_maxpool2d3_bs2_merged_bit_select_c = i_llvm_fpga_sync_buffer_i32_output_size_sync_buffer2_maxpool2d2_out_buffer_out[17:0];

    // redist0_sync_together9_aunroll_x_in_c0_eni123_1_tpl_1(DELAY,34)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_sync_together9_aunroll_x_in_c0_eni123_1_tpl_1_q <= '0;
        end
        else
        begin
            redist0_sync_together9_aunroll_x_in_c0_eni123_1_tpl_1_q <= $unsigned(in_c0_eni123_1_tpl);
        end
    end

    // i_mul32_maxpool2d3_bs1_merged_bit_select(BITSELECT,33)@2
    assign i_mul32_maxpool2d3_bs1_merged_bit_select_b = redist0_sync_together9_aunroll_x_in_c0_eni123_1_tpl_1_q[31:18];
    assign i_mul32_maxpool2d3_bs1_merged_bit_select_c = redist0_sync_together9_aunroll_x_in_c0_eni123_1_tpl_1_q[17:0];

    // i_mul32_maxpool2d3_ma3_cma(CHAINMULTADD,31)@2 + 3
    assign i_mul32_maxpool2d3_ma3_cma_reset = ~ (resetn);
    assign i_mul32_maxpool2d3_ma3_cma_ena0 = 1'b1;
    assign i_mul32_maxpool2d3_ma3_cma_ena1 = i_mul32_maxpool2d3_ma3_cma_ena0;
    assign i_mul32_maxpool2d3_ma3_cma_ena2 = i_mul32_maxpool2d3_ma3_cma_ena0;

    assign i_mul32_maxpool2d3_ma3_cma_a0 = i_mul32_maxpool2d3_bs1_merged_bit_select_b;
    assign i_mul32_maxpool2d3_ma3_cma_c0 = i_mul32_maxpool2d3_bs2_merged_bit_select_c;
    assign i_mul32_maxpool2d3_ma3_cma_a1 = i_mul32_maxpool2d3_bs2_merged_bit_select_b;
    assign i_mul32_maxpool2d3_ma3_cma_c1 = i_mul32_maxpool2d3_bs1_merged_bit_select_c;
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
    ) i_mul32_maxpool2d3_ma3_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul32_maxpool2d3_ma3_cma_ena2, i_mul32_maxpool2d3_ma3_cma_ena1, i_mul32_maxpool2d3_ma3_cma_ena0 }),
        .aclr({ i_mul32_maxpool2d3_ma3_cma_reset, i_mul32_maxpool2d3_ma3_cma_reset }),
        .ay(i_mul32_maxpool2d3_ma3_cma_a1),
        .by(i_mul32_maxpool2d3_ma3_cma_a0),
        .ax(i_mul32_maxpool2d3_ma3_cma_c1),
        .bx(i_mul32_maxpool2d3_ma3_cma_c0),
        .resulta(i_mul32_maxpool2d3_ma3_cma_s0),
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
    i_mul32_maxpool2d3_ma3_cma_delay ( .xin(i_mul32_maxpool2d3_ma3_cma_s0), .xout(i_mul32_maxpool2d3_ma3_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul32_maxpool2d3_ma3_cma_q = $unsigned(i_mul32_maxpool2d3_ma3_cma_qq[32:0]);

    // i_mul32_maxpool2d3_sums_align_1(BITSHIFT,26)@5
    assign i_mul32_maxpool2d3_sums_align_1_qint = { i_mul32_maxpool2d3_ma3_cma_q, 18'b000000000000000000 };
    assign i_mul32_maxpool2d3_sums_align_1_q = i_mul32_maxpool2d3_sums_align_1_qint[50:0];

    // i_mul32_maxpool2d3_im0_cma(CHAINMULTADD,29)@2 + 3
    assign i_mul32_maxpool2d3_im0_cma_reset = ~ (resetn);
    assign i_mul32_maxpool2d3_im0_cma_ena0 = 1'b1;
    assign i_mul32_maxpool2d3_im0_cma_ena1 = i_mul32_maxpool2d3_im0_cma_ena0;
    assign i_mul32_maxpool2d3_im0_cma_ena2 = i_mul32_maxpool2d3_im0_cma_ena0;

    assign i_mul32_maxpool2d3_im0_cma_a0 = i_mul32_maxpool2d3_bs1_merged_bit_select_b;
    assign i_mul32_maxpool2d3_im0_cma_c0 = i_mul32_maxpool2d3_bs2_merged_bit_select_b;
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
    ) i_mul32_maxpool2d3_im0_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul32_maxpool2d3_im0_cma_ena2, i_mul32_maxpool2d3_im0_cma_ena1, i_mul32_maxpool2d3_im0_cma_ena0 }),
        .aclr({ i_mul32_maxpool2d3_im0_cma_reset, i_mul32_maxpool2d3_im0_cma_reset }),
        .ay(i_mul32_maxpool2d3_im0_cma_a0),
        .ax(i_mul32_maxpool2d3_im0_cma_c0),
        .resulta(i_mul32_maxpool2d3_im0_cma_s0),
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
    i_mul32_maxpool2d3_im0_cma_delay ( .xin(i_mul32_maxpool2d3_im0_cma_s0), .xout(i_mul32_maxpool2d3_im0_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul32_maxpool2d3_im0_cma_q = $unsigned(i_mul32_maxpool2d3_im0_cma_qq[27:0]);

    // i_mul32_maxpool2d3_im8_cma(CHAINMULTADD,30)@2 + 3
    assign i_mul32_maxpool2d3_im8_cma_reset = ~ (resetn);
    assign i_mul32_maxpool2d3_im8_cma_ena0 = 1'b1;
    assign i_mul32_maxpool2d3_im8_cma_ena1 = i_mul32_maxpool2d3_im8_cma_ena0;
    assign i_mul32_maxpool2d3_im8_cma_ena2 = i_mul32_maxpool2d3_im8_cma_ena0;

    assign i_mul32_maxpool2d3_im8_cma_a0 = i_mul32_maxpool2d3_bs1_merged_bit_select_c;
    assign i_mul32_maxpool2d3_im8_cma_c0 = i_mul32_maxpool2d3_bs2_merged_bit_select_c;
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
    ) i_mul32_maxpool2d3_im8_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul32_maxpool2d3_im8_cma_ena2, i_mul32_maxpool2d3_im8_cma_ena1, i_mul32_maxpool2d3_im8_cma_ena0 }),
        .aclr({ i_mul32_maxpool2d3_im8_cma_reset, i_mul32_maxpool2d3_im8_cma_reset }),
        .ay(i_mul32_maxpool2d3_im8_cma_a0),
        .ax(i_mul32_maxpool2d3_im8_cma_c0),
        .resulta(i_mul32_maxpool2d3_im8_cma_s0),
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
    i_mul32_maxpool2d3_im8_cma_delay ( .xin(i_mul32_maxpool2d3_im8_cma_s0), .xout(i_mul32_maxpool2d3_im8_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul32_maxpool2d3_im8_cma_q = $unsigned(i_mul32_maxpool2d3_im8_cma_qq[35:0]);

    // i_mul32_maxpool2d3_sums_join_0(BITJOIN,25)@5
    assign i_mul32_maxpool2d3_sums_join_0_q = {i_mul32_maxpool2d3_im0_cma_q, i_mul32_maxpool2d3_im8_cma_q};

    // i_mul32_maxpool2d3_sums_result_add_0_0(ADD,28)@5
    assign i_mul32_maxpool2d3_sums_result_add_0_0_a = {1'b0, i_mul32_maxpool2d3_sums_join_0_q};
    assign i_mul32_maxpool2d3_sums_result_add_0_0_b = {14'b00000000000000, i_mul32_maxpool2d3_sums_align_1_q};
    assign i_mul32_maxpool2d3_sums_result_add_0_0_o = $unsigned(i_mul32_maxpool2d3_sums_result_add_0_0_a) + $unsigned(i_mul32_maxpool2d3_sums_result_add_0_0_b);
    assign i_mul32_maxpool2d3_sums_result_add_0_0_q = i_mul32_maxpool2d3_sums_result_add_0_0_o[64:0];

    // bgTrunc_i_mul32_maxpool2d3_sel_x(BITSELECT,8)@5
    assign bgTrunc_i_mul32_maxpool2d3_sel_x_in = i_mul32_maxpool2d3_sums_result_add_0_0_q[63:0];
    assign bgTrunc_i_mul32_maxpool2d3_sel_x_b = bgTrunc_i_mul32_maxpool2d3_sel_x_in[31:0];

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // sync_out_aunroll_x(GPOUT,9)@5
    assign out_c0_exi126_0_tpl = GND_q;
    assign out_c0_exi126_1_tpl = bgTrunc_i_mul32_maxpool2d3_sel_x_b;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_maxpool2d0 = GND_q;

endmodule
