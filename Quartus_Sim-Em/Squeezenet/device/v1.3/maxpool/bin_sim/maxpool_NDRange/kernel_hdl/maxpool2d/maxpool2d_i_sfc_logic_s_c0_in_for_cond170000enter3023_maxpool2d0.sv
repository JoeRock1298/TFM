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

// SystemVerilog created from maxpool2d_i_sfc_logic_s_c0_in_for_cond170000enter3023_maxpool2d0
// SystemVerilog created on Sat Jun  3 12:58:36 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module maxpool2d_i_sfc_logic_s_c0_in_for_cond170000enter3023_maxpool2d0 (
    input wire [31:0] in_input_size,
    output wire [0:0] out_c0_exi132_0_tpl,
    output wire [63:0] out_c0_exi132_1_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_maxpool2d0,
    input wire [0:0] in_c0_eni5_0_tpl,
    input wire [31:0] in_c0_eni5_1_tpl,
    input wire [31:0] in_c0_eni5_2_tpl,
    input wire [31:0] in_c0_eni5_3_tpl,
    input wire [31:0] in_c0_eni5_4_tpl,
    input wire [63:0] in_c0_eni5_5_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [32:0] i_add25_maxpool2d5_a;
    wire [32:0] i_add25_maxpool2d5_b;
    logic [32:0] i_add25_maxpool2d5_o;
    wire [32:0] i_add25_maxpool2d5_q;
    wire [32:0] i_add26_maxpool2d6_a;
    wire [32:0] i_add26_maxpool2d6_b;
    logic [32:0] i_add26_maxpool2d6_o;
    wire [32:0] i_add26_maxpool2d6_q;
    wire [32:0] i_add_maxpool2d2_a;
    wire [32:0] i_add_maxpool2d2_b;
    logic [32:0] i_add_maxpool2d2_o;
    wire [32:0] i_add_maxpool2d2_q;
    wire [31:0] i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer_maxpool2d3_out_buffer_out;
    wire [31:0] bgTrunc_i_add25_maxpool2d5_sel_x_b;
    wire [31:0] bgTrunc_i_add26_maxpool2d6_sel_x_b;
    wire [31:0] bgTrunc_i_add_maxpool2d2_sel_x_b;
    wire [63:0] bgTrunc_i_mul23_maxpool2d4_sel_x_in;
    wire [31:0] bgTrunc_i_mul23_maxpool2d4_sel_x_b;
    wire [64:0] i_arrayidx3_maxpool2d0_add_x_a;
    wire [64:0] i_arrayidx3_maxpool2d0_add_x_b;
    logic [64:0] i_arrayidx3_maxpool2d0_add_x_o;
    wire [64:0] i_arrayidx3_maxpool2d0_add_x_q;
    wire [1:0] i_arrayidx3_maxpool2d0_c_i2_01_x_q;
    wire [61:0] i_arrayidx3_maxpool2d0_narrow_x_b;
    wire [63:0] i_arrayidx3_maxpool2d0_shift_join_x_q;
    wire [63:0] i_arrayidx3_maxpool2d0_dupName_0_trunc_sel_x_b;
    wire [63:0] i_idxprom_maxpool2d7_sel_x_b;
    (* dont_merge *) reg [0:0] valid_fanout_reg0_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg1_q;
    wire [63:0] i_mul23_maxpool2d4_sums_join_0_q;
    wire [50:0] i_mul23_maxpool2d4_sums_align_1_q;
    wire [50:0] i_mul23_maxpool2d4_sums_align_1_qint;
    wire [64:0] i_mul23_maxpool2d4_sums_result_add_0_0_a;
    wire [64:0] i_mul23_maxpool2d4_sums_result_add_0_0_b;
    logic [64:0] i_mul23_maxpool2d4_sums_result_add_0_0_o;
    wire [64:0] i_mul23_maxpool2d4_sums_result_add_0_0_q;
    wire i_mul23_maxpool2d4_im0_cma_reset;
    wire [13:0] i_mul23_maxpool2d4_im0_cma_a0;
    wire [13:0] i_mul23_maxpool2d4_im0_cma_c0;
    wire [27:0] i_mul23_maxpool2d4_im0_cma_s0;
    wire [27:0] i_mul23_maxpool2d4_im0_cma_qq;
    wire [27:0] i_mul23_maxpool2d4_im0_cma_q;
    wire i_mul23_maxpool2d4_im0_cma_ena0;
    wire i_mul23_maxpool2d4_im0_cma_ena1;
    wire i_mul23_maxpool2d4_im0_cma_ena2;
    wire i_mul23_maxpool2d4_im8_cma_reset;
    wire [17:0] i_mul23_maxpool2d4_im8_cma_a0;
    wire [17:0] i_mul23_maxpool2d4_im8_cma_c0;
    wire [35:0] i_mul23_maxpool2d4_im8_cma_s0;
    wire [35:0] i_mul23_maxpool2d4_im8_cma_qq;
    wire [35:0] i_mul23_maxpool2d4_im8_cma_q;
    wire i_mul23_maxpool2d4_im8_cma_ena0;
    wire i_mul23_maxpool2d4_im8_cma_ena1;
    wire i_mul23_maxpool2d4_im8_cma_ena2;
    wire i_mul23_maxpool2d4_ma3_cma_reset;
    wire [13:0] i_mul23_maxpool2d4_ma3_cma_a0;
    wire [17:0] i_mul23_maxpool2d4_ma3_cma_c0;
    wire [13:0] i_mul23_maxpool2d4_ma3_cma_a1;
    wire [17:0] i_mul23_maxpool2d4_ma3_cma_c1;
    wire [32:0] i_mul23_maxpool2d4_ma3_cma_s0;
    wire [32:0] i_mul23_maxpool2d4_ma3_cma_qq;
    wire [32:0] i_mul23_maxpool2d4_ma3_cma_q;
    wire i_mul23_maxpool2d4_ma3_cma_ena0;
    wire i_mul23_maxpool2d4_ma3_cma_ena1;
    wire i_mul23_maxpool2d4_ma3_cma_ena2;
    wire [13:0] i_mul23_maxpool2d4_bs2_merged_bit_select_b;
    wire [17:0] i_mul23_maxpool2d4_bs2_merged_bit_select_c;
    wire [13:0] i_mul23_maxpool2d4_bs1_merged_bit_select_b;
    wire [17:0] i_mul23_maxpool2d4_bs1_merged_bit_select_c;
    reg [0:0] redist0_valid_fanout_reg0_q_5_q;
    reg [0:0] redist0_valid_fanout_reg0_q_5_delay_0;
    reg [0:0] redist0_valid_fanout_reg0_q_5_delay_1;
    reg [0:0] redist0_valid_fanout_reg0_q_5_delay_2;
    reg [0:0] redist0_valid_fanout_reg0_q_5_delay_3;
    reg [31:0] redist4_bgTrunc_i_mul23_maxpool2d4_sel_x_b_1_q;
    reg [31:0] redist5_bgTrunc_i_add_maxpool2d2_sel_x_b_1_q;
    reg [31:0] redist6_bgTrunc_i_add26_maxpool2d6_sel_x_b_1_q;
    reg [31:0] redist1_sync_together13_aunroll_x_in_c0_eni5_3_tpl_5_outputreg0_q;
    wire redist1_sync_together13_aunroll_x_in_c0_eni5_3_tpl_5_mem_reset0;
    wire [31:0] redist1_sync_together13_aunroll_x_in_c0_eni5_3_tpl_5_mem_ia;
    wire [1:0] redist1_sync_together13_aunroll_x_in_c0_eni5_3_tpl_5_mem_aa;
    wire [1:0] redist1_sync_together13_aunroll_x_in_c0_eni5_3_tpl_5_mem_ab;
    wire [31:0] redist1_sync_together13_aunroll_x_in_c0_eni5_3_tpl_5_mem_iq;
    wire [31:0] redist1_sync_together13_aunroll_x_in_c0_eni5_3_tpl_5_mem_q;
    wire [1:0] redist1_sync_together13_aunroll_x_in_c0_eni5_3_tpl_5_rdcnt_q;
    (* preserve *) reg [1:0] redist1_sync_together13_aunroll_x_in_c0_eni5_3_tpl_5_rdcnt_i;
    (* preserve *) reg redist1_sync_together13_aunroll_x_in_c0_eni5_3_tpl_5_rdcnt_eq;
    reg [1:0] redist1_sync_together13_aunroll_x_in_c0_eni5_3_tpl_5_wraddr_q;
    wire [1:0] redist1_sync_together13_aunroll_x_in_c0_eni5_3_tpl_5_mem_last_q;
    wire [0:0] redist1_sync_together13_aunroll_x_in_c0_eni5_3_tpl_5_cmp_q;
    (* dont_merge *) reg [0:0] redist1_sync_together13_aunroll_x_in_c0_eni5_3_tpl_5_cmpReg_q;
    wire [0:0] redist1_sync_together13_aunroll_x_in_c0_eni5_3_tpl_5_notEnable_q;
    wire [0:0] redist1_sync_together13_aunroll_x_in_c0_eni5_3_tpl_5_nor_q;
    (* dont_merge *) reg [0:0] redist1_sync_together13_aunroll_x_in_c0_eni5_3_tpl_5_sticky_ena_q;
    wire [0:0] redist1_sync_together13_aunroll_x_in_c0_eni5_3_tpl_5_enaAnd_q;
    reg [31:0] redist2_sync_together13_aunroll_x_in_c0_eni5_4_tpl_5_outputreg0_q;
    wire redist2_sync_together13_aunroll_x_in_c0_eni5_4_tpl_5_mem_reset0;
    wire [31:0] redist2_sync_together13_aunroll_x_in_c0_eni5_4_tpl_5_mem_ia;
    wire [1:0] redist2_sync_together13_aunroll_x_in_c0_eni5_4_tpl_5_mem_aa;
    wire [1:0] redist2_sync_together13_aunroll_x_in_c0_eni5_4_tpl_5_mem_ab;
    wire [31:0] redist2_sync_together13_aunroll_x_in_c0_eni5_4_tpl_5_mem_iq;
    wire [31:0] redist2_sync_together13_aunroll_x_in_c0_eni5_4_tpl_5_mem_q;
    wire [1:0] redist2_sync_together13_aunroll_x_in_c0_eni5_4_tpl_5_rdcnt_q;
    (* preserve *) reg [1:0] redist2_sync_together13_aunroll_x_in_c0_eni5_4_tpl_5_rdcnt_i;
    (* preserve *) reg redist2_sync_together13_aunroll_x_in_c0_eni5_4_tpl_5_rdcnt_eq;
    reg [1:0] redist2_sync_together13_aunroll_x_in_c0_eni5_4_tpl_5_wraddr_q;
    wire [1:0] redist2_sync_together13_aunroll_x_in_c0_eni5_4_tpl_5_mem_last_q;
    wire [0:0] redist2_sync_together13_aunroll_x_in_c0_eni5_4_tpl_5_cmp_q;
    (* dont_merge *) reg [0:0] redist2_sync_together13_aunroll_x_in_c0_eni5_4_tpl_5_cmpReg_q;
    wire [0:0] redist2_sync_together13_aunroll_x_in_c0_eni5_4_tpl_5_notEnable_q;
    wire [0:0] redist2_sync_together13_aunroll_x_in_c0_eni5_4_tpl_5_nor_q;
    (* dont_merge *) reg [0:0] redist2_sync_together13_aunroll_x_in_c0_eni5_4_tpl_5_sticky_ena_q;
    wire [0:0] redist2_sync_together13_aunroll_x_in_c0_eni5_4_tpl_5_enaAnd_q;
    reg [63:0] redist3_sync_together13_aunroll_x_in_c0_eni5_5_tpl_6_outputreg0_q;
    wire redist3_sync_together13_aunroll_x_in_c0_eni5_5_tpl_6_mem_reset0;
    wire [63:0] redist3_sync_together13_aunroll_x_in_c0_eni5_5_tpl_6_mem_ia;
    wire [1:0] redist3_sync_together13_aunroll_x_in_c0_eni5_5_tpl_6_mem_aa;
    wire [1:0] redist3_sync_together13_aunroll_x_in_c0_eni5_5_tpl_6_mem_ab;
    wire [63:0] redist3_sync_together13_aunroll_x_in_c0_eni5_5_tpl_6_mem_iq;
    wire [63:0] redist3_sync_together13_aunroll_x_in_c0_eni5_5_tpl_6_mem_q;
    wire [1:0] redist3_sync_together13_aunroll_x_in_c0_eni5_5_tpl_6_rdcnt_q;
    (* preserve *) reg [1:0] redist3_sync_together13_aunroll_x_in_c0_eni5_5_tpl_6_rdcnt_i;
    reg [1:0] redist3_sync_together13_aunroll_x_in_c0_eni5_5_tpl_6_wraddr_q;
    wire [2:0] redist3_sync_together13_aunroll_x_in_c0_eni5_5_tpl_6_mem_last_q;
    wire [2:0] redist3_sync_together13_aunroll_x_in_c0_eni5_5_tpl_6_cmp_b;
    wire [0:0] redist3_sync_together13_aunroll_x_in_c0_eni5_5_tpl_6_cmp_q;
    (* dont_merge *) reg [0:0] redist3_sync_together13_aunroll_x_in_c0_eni5_5_tpl_6_cmpReg_q;
    wire [0:0] redist3_sync_together13_aunroll_x_in_c0_eni5_5_tpl_6_notEnable_q;
    wire [0:0] redist3_sync_together13_aunroll_x_in_c0_eni5_5_tpl_6_nor_q;
    (* dont_merge *) reg [0:0] redist3_sync_together13_aunroll_x_in_c0_eni5_5_tpl_6_sticky_ena_q;
    wire [0:0] redist3_sync_together13_aunroll_x_in_c0_eni5_5_tpl_6_enaAnd_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // valid_fanout_reg0(REG,30)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(in_i_valid);
        end
    end

    // redist0_valid_fanout_reg0_q_5(DELAY,57)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_valid_fanout_reg0_q_5_delay_0 <= '0;
            redist0_valid_fanout_reg0_q_5_delay_1 <= '0;
            redist0_valid_fanout_reg0_q_5_delay_2 <= '0;
            redist0_valid_fanout_reg0_q_5_delay_3 <= '0;
            redist0_valid_fanout_reg0_q_5_q <= '0;
        end
        else
        begin
            redist0_valid_fanout_reg0_q_5_delay_0 <= $unsigned(valid_fanout_reg0_q);
            redist0_valid_fanout_reg0_q_5_delay_1 <= redist0_valid_fanout_reg0_q_5_delay_0;
            redist0_valid_fanout_reg0_q_5_delay_2 <= redist0_valid_fanout_reg0_q_5_delay_1;
            redist0_valid_fanout_reg0_q_5_delay_3 <= redist0_valid_fanout_reg0_q_5_delay_2;
            redist0_valid_fanout_reg0_q_5_q <= redist0_valid_fanout_reg0_q_5_delay_3;
        end
    end

    // redist2_sync_together13_aunroll_x_in_c0_eni5_4_tpl_5_notEnable(LOGICAL,82)
    assign redist2_sync_together13_aunroll_x_in_c0_eni5_4_tpl_5_notEnable_q = $unsigned(~ (VCC_q));

    // redist2_sync_together13_aunroll_x_in_c0_eni5_4_tpl_5_nor(LOGICAL,83)
    assign redist2_sync_together13_aunroll_x_in_c0_eni5_4_tpl_5_nor_q = ~ (redist2_sync_together13_aunroll_x_in_c0_eni5_4_tpl_5_notEnable_q | redist2_sync_together13_aunroll_x_in_c0_eni5_4_tpl_5_sticky_ena_q);

    // redist2_sync_together13_aunroll_x_in_c0_eni5_4_tpl_5_mem_last(CONSTANT,79)
    assign redist2_sync_together13_aunroll_x_in_c0_eni5_4_tpl_5_mem_last_q = $unsigned(2'b01);

    // redist2_sync_together13_aunroll_x_in_c0_eni5_4_tpl_5_cmp(LOGICAL,80)
    assign redist2_sync_together13_aunroll_x_in_c0_eni5_4_tpl_5_cmp_q = $unsigned(redist2_sync_together13_aunroll_x_in_c0_eni5_4_tpl_5_mem_last_q == redist2_sync_together13_aunroll_x_in_c0_eni5_4_tpl_5_rdcnt_q ? 1'b1 : 1'b0);

    // redist2_sync_together13_aunroll_x_in_c0_eni5_4_tpl_5_cmpReg(REG,81)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_sync_together13_aunroll_x_in_c0_eni5_4_tpl_5_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist2_sync_together13_aunroll_x_in_c0_eni5_4_tpl_5_cmpReg_q <= $unsigned(redist2_sync_together13_aunroll_x_in_c0_eni5_4_tpl_5_cmp_q);
        end
    end

    // redist2_sync_together13_aunroll_x_in_c0_eni5_4_tpl_5_sticky_ena(REG,84)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_sync_together13_aunroll_x_in_c0_eni5_4_tpl_5_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist2_sync_together13_aunroll_x_in_c0_eni5_4_tpl_5_nor_q == 1'b1)
        begin
            redist2_sync_together13_aunroll_x_in_c0_eni5_4_tpl_5_sticky_ena_q <= $unsigned(redist2_sync_together13_aunroll_x_in_c0_eni5_4_tpl_5_cmpReg_q);
        end
    end

    // redist2_sync_together13_aunroll_x_in_c0_eni5_4_tpl_5_enaAnd(LOGICAL,85)
    assign redist2_sync_together13_aunroll_x_in_c0_eni5_4_tpl_5_enaAnd_q = redist2_sync_together13_aunroll_x_in_c0_eni5_4_tpl_5_sticky_ena_q & VCC_q;

    // redist2_sync_together13_aunroll_x_in_c0_eni5_4_tpl_5_rdcnt(COUNTER,77)
    // low=0, high=2, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_sync_together13_aunroll_x_in_c0_eni5_4_tpl_5_rdcnt_i <= 2'd0;
            redist2_sync_together13_aunroll_x_in_c0_eni5_4_tpl_5_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist2_sync_together13_aunroll_x_in_c0_eni5_4_tpl_5_rdcnt_i == 2'd1)
            begin
                redist2_sync_together13_aunroll_x_in_c0_eni5_4_tpl_5_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist2_sync_together13_aunroll_x_in_c0_eni5_4_tpl_5_rdcnt_eq <= 1'b0;
            end
            if (redist2_sync_together13_aunroll_x_in_c0_eni5_4_tpl_5_rdcnt_eq == 1'b1)
            begin
                redist2_sync_together13_aunroll_x_in_c0_eni5_4_tpl_5_rdcnt_i <= $unsigned(redist2_sync_together13_aunroll_x_in_c0_eni5_4_tpl_5_rdcnt_i) + $unsigned(2'd2);
            end
            else
            begin
                redist2_sync_together13_aunroll_x_in_c0_eni5_4_tpl_5_rdcnt_i <= $unsigned(redist2_sync_together13_aunroll_x_in_c0_eni5_4_tpl_5_rdcnt_i) + $unsigned(2'd1);
            end
        end
    end
    assign redist2_sync_together13_aunroll_x_in_c0_eni5_4_tpl_5_rdcnt_q = redist2_sync_together13_aunroll_x_in_c0_eni5_4_tpl_5_rdcnt_i[1:0];

    // redist2_sync_together13_aunroll_x_in_c0_eni5_4_tpl_5_wraddr(REG,78)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_sync_together13_aunroll_x_in_c0_eni5_4_tpl_5_wraddr_q <= $unsigned(2'b10);
        end
        else
        begin
            redist2_sync_together13_aunroll_x_in_c0_eni5_4_tpl_5_wraddr_q <= $unsigned(redist2_sync_together13_aunroll_x_in_c0_eni5_4_tpl_5_rdcnt_q);
        end
    end

    // redist2_sync_together13_aunroll_x_in_c0_eni5_4_tpl_5_mem(DUALMEM,76)
    assign redist2_sync_together13_aunroll_x_in_c0_eni5_4_tpl_5_mem_ia = $unsigned(in_c0_eni5_4_tpl);
    assign redist2_sync_together13_aunroll_x_in_c0_eni5_4_tpl_5_mem_aa = redist2_sync_together13_aunroll_x_in_c0_eni5_4_tpl_5_wraddr_q;
    assign redist2_sync_together13_aunroll_x_in_c0_eni5_4_tpl_5_mem_ab = redist2_sync_together13_aunroll_x_in_c0_eni5_4_tpl_5_rdcnt_q;
    assign redist2_sync_together13_aunroll_x_in_c0_eni5_4_tpl_5_mem_reset0 = ~ (resetn);
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
    ) redist2_sync_together13_aunroll_x_in_c0_eni5_4_tpl_5_mem_dmem (
        .clocken1(redist2_sync_together13_aunroll_x_in_c0_eni5_4_tpl_5_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist2_sync_together13_aunroll_x_in_c0_eni5_4_tpl_5_mem_reset0),
        .clock1(clock),
        .address_a(redist2_sync_together13_aunroll_x_in_c0_eni5_4_tpl_5_mem_aa),
        .data_a(redist2_sync_together13_aunroll_x_in_c0_eni5_4_tpl_5_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist2_sync_together13_aunroll_x_in_c0_eni5_4_tpl_5_mem_ab),
        .q_b(redist2_sync_together13_aunroll_x_in_c0_eni5_4_tpl_5_mem_iq),
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
    assign redist2_sync_together13_aunroll_x_in_c0_eni5_4_tpl_5_mem_q = redist2_sync_together13_aunroll_x_in_c0_eni5_4_tpl_5_mem_iq[31:0];

    // redist2_sync_together13_aunroll_x_in_c0_eni5_4_tpl_5_outputreg0(DELAY,75)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_sync_together13_aunroll_x_in_c0_eni5_4_tpl_5_outputreg0_q <= '0;
        end
        else
        begin
            redist2_sync_together13_aunroll_x_in_c0_eni5_4_tpl_5_outputreg0_q <= $unsigned(redist2_sync_together13_aunroll_x_in_c0_eni5_4_tpl_5_mem_q);
        end
    end

    // redist1_sync_together13_aunroll_x_in_c0_eni5_3_tpl_5_notEnable(LOGICAL,71)
    assign redist1_sync_together13_aunroll_x_in_c0_eni5_3_tpl_5_notEnable_q = $unsigned(~ (VCC_q));

    // redist1_sync_together13_aunroll_x_in_c0_eni5_3_tpl_5_nor(LOGICAL,72)
    assign redist1_sync_together13_aunroll_x_in_c0_eni5_3_tpl_5_nor_q = ~ (redist1_sync_together13_aunroll_x_in_c0_eni5_3_tpl_5_notEnable_q | redist1_sync_together13_aunroll_x_in_c0_eni5_3_tpl_5_sticky_ena_q);

    // redist1_sync_together13_aunroll_x_in_c0_eni5_3_tpl_5_mem_last(CONSTANT,68)
    assign redist1_sync_together13_aunroll_x_in_c0_eni5_3_tpl_5_mem_last_q = $unsigned(2'b01);

    // redist1_sync_together13_aunroll_x_in_c0_eni5_3_tpl_5_cmp(LOGICAL,69)
    assign redist1_sync_together13_aunroll_x_in_c0_eni5_3_tpl_5_cmp_q = $unsigned(redist1_sync_together13_aunroll_x_in_c0_eni5_3_tpl_5_mem_last_q == redist1_sync_together13_aunroll_x_in_c0_eni5_3_tpl_5_rdcnt_q ? 1'b1 : 1'b0);

    // redist1_sync_together13_aunroll_x_in_c0_eni5_3_tpl_5_cmpReg(REG,70)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together13_aunroll_x_in_c0_eni5_3_tpl_5_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist1_sync_together13_aunroll_x_in_c0_eni5_3_tpl_5_cmpReg_q <= $unsigned(redist1_sync_together13_aunroll_x_in_c0_eni5_3_tpl_5_cmp_q);
        end
    end

    // redist1_sync_together13_aunroll_x_in_c0_eni5_3_tpl_5_sticky_ena(REG,73)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together13_aunroll_x_in_c0_eni5_3_tpl_5_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist1_sync_together13_aunroll_x_in_c0_eni5_3_tpl_5_nor_q == 1'b1)
        begin
            redist1_sync_together13_aunroll_x_in_c0_eni5_3_tpl_5_sticky_ena_q <= $unsigned(redist1_sync_together13_aunroll_x_in_c0_eni5_3_tpl_5_cmpReg_q);
        end
    end

    // redist1_sync_together13_aunroll_x_in_c0_eni5_3_tpl_5_enaAnd(LOGICAL,74)
    assign redist1_sync_together13_aunroll_x_in_c0_eni5_3_tpl_5_enaAnd_q = redist1_sync_together13_aunroll_x_in_c0_eni5_3_tpl_5_sticky_ena_q & VCC_q;

    // redist1_sync_together13_aunroll_x_in_c0_eni5_3_tpl_5_rdcnt(COUNTER,66)
    // low=0, high=2, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together13_aunroll_x_in_c0_eni5_3_tpl_5_rdcnt_i <= 2'd0;
            redist1_sync_together13_aunroll_x_in_c0_eni5_3_tpl_5_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist1_sync_together13_aunroll_x_in_c0_eni5_3_tpl_5_rdcnt_i == 2'd1)
            begin
                redist1_sync_together13_aunroll_x_in_c0_eni5_3_tpl_5_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist1_sync_together13_aunroll_x_in_c0_eni5_3_tpl_5_rdcnt_eq <= 1'b0;
            end
            if (redist1_sync_together13_aunroll_x_in_c0_eni5_3_tpl_5_rdcnt_eq == 1'b1)
            begin
                redist1_sync_together13_aunroll_x_in_c0_eni5_3_tpl_5_rdcnt_i <= $unsigned(redist1_sync_together13_aunroll_x_in_c0_eni5_3_tpl_5_rdcnt_i) + $unsigned(2'd2);
            end
            else
            begin
                redist1_sync_together13_aunroll_x_in_c0_eni5_3_tpl_5_rdcnt_i <= $unsigned(redist1_sync_together13_aunroll_x_in_c0_eni5_3_tpl_5_rdcnt_i) + $unsigned(2'd1);
            end
        end
    end
    assign redist1_sync_together13_aunroll_x_in_c0_eni5_3_tpl_5_rdcnt_q = redist1_sync_together13_aunroll_x_in_c0_eni5_3_tpl_5_rdcnt_i[1:0];

    // redist1_sync_together13_aunroll_x_in_c0_eni5_3_tpl_5_wraddr(REG,67)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together13_aunroll_x_in_c0_eni5_3_tpl_5_wraddr_q <= $unsigned(2'b10);
        end
        else
        begin
            redist1_sync_together13_aunroll_x_in_c0_eni5_3_tpl_5_wraddr_q <= $unsigned(redist1_sync_together13_aunroll_x_in_c0_eni5_3_tpl_5_rdcnt_q);
        end
    end

    // redist1_sync_together13_aunroll_x_in_c0_eni5_3_tpl_5_mem(DUALMEM,65)
    assign redist1_sync_together13_aunroll_x_in_c0_eni5_3_tpl_5_mem_ia = $unsigned(in_c0_eni5_3_tpl);
    assign redist1_sync_together13_aunroll_x_in_c0_eni5_3_tpl_5_mem_aa = redist1_sync_together13_aunroll_x_in_c0_eni5_3_tpl_5_wraddr_q;
    assign redist1_sync_together13_aunroll_x_in_c0_eni5_3_tpl_5_mem_ab = redist1_sync_together13_aunroll_x_in_c0_eni5_3_tpl_5_rdcnt_q;
    assign redist1_sync_together13_aunroll_x_in_c0_eni5_3_tpl_5_mem_reset0 = ~ (resetn);
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
    ) redist1_sync_together13_aunroll_x_in_c0_eni5_3_tpl_5_mem_dmem (
        .clocken1(redist1_sync_together13_aunroll_x_in_c0_eni5_3_tpl_5_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist1_sync_together13_aunroll_x_in_c0_eni5_3_tpl_5_mem_reset0),
        .clock1(clock),
        .address_a(redist1_sync_together13_aunroll_x_in_c0_eni5_3_tpl_5_mem_aa),
        .data_a(redist1_sync_together13_aunroll_x_in_c0_eni5_3_tpl_5_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist1_sync_together13_aunroll_x_in_c0_eni5_3_tpl_5_mem_ab),
        .q_b(redist1_sync_together13_aunroll_x_in_c0_eni5_3_tpl_5_mem_iq),
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
    assign redist1_sync_together13_aunroll_x_in_c0_eni5_3_tpl_5_mem_q = redist1_sync_together13_aunroll_x_in_c0_eni5_3_tpl_5_mem_iq[31:0];

    // redist1_sync_together13_aunroll_x_in_c0_eni5_3_tpl_5_outputreg0(DELAY,64)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together13_aunroll_x_in_c0_eni5_3_tpl_5_outputreg0_q <= '0;
        end
        else
        begin
            redist1_sync_together13_aunroll_x_in_c0_eni5_3_tpl_5_outputreg0_q <= $unsigned(redist1_sync_together13_aunroll_x_in_c0_eni5_3_tpl_5_mem_q);
        end
    end

    // valid_fanout_reg1(REG,31)@1 + 1
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

    // i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer_maxpool2d3(BLACKBOX,12)@0
    // in in_i_dependence@2
    // in in_valid_in@2
    // out out_buffer_out@2
    // out out_valid_out@2
    maxpool2d_i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer_0 thei_llvm_fpga_sync_buffer_i32_input_size_sync_buffer_maxpool2d3 (
        .in_buffer_in(in_input_size),
        .in_i_dependence(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_buffer_out(i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer_maxpool2d3_out_buffer_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_mul23_maxpool2d4_bs2_merged_bit_select(BITSELECT,55)@2
    assign i_mul23_maxpool2d4_bs2_merged_bit_select_b = i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer_maxpool2d3_out_buffer_out[31:18];
    assign i_mul23_maxpool2d4_bs2_merged_bit_select_c = i_llvm_fpga_sync_buffer_i32_input_size_sync_buffer_maxpool2d3_out_buffer_out[17:0];

    // i_add_maxpool2d2(ADD,9)@1
    assign i_add_maxpool2d2_a = {1'b0, in_c0_eni5_1_tpl};
    assign i_add_maxpool2d2_b = {1'b0, in_c0_eni5_2_tpl};
    assign i_add_maxpool2d2_o = $unsigned(i_add_maxpool2d2_a) + $unsigned(i_add_maxpool2d2_b);
    assign i_add_maxpool2d2_q = i_add_maxpool2d2_o[32:0];

    // bgTrunc_i_add_maxpool2d2_sel_x(BITSELECT,19)@1
    assign bgTrunc_i_add_maxpool2d2_sel_x_b = i_add_maxpool2d2_q[31:0];

    // redist5_bgTrunc_i_add_maxpool2d2_sel_x_b_1(DELAY,62)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_bgTrunc_i_add_maxpool2d2_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist5_bgTrunc_i_add_maxpool2d2_sel_x_b_1_q <= $unsigned(bgTrunc_i_add_maxpool2d2_sel_x_b);
        end
    end

    // i_mul23_maxpool2d4_bs1_merged_bit_select(BITSELECT,56)@2
    assign i_mul23_maxpool2d4_bs1_merged_bit_select_b = redist5_bgTrunc_i_add_maxpool2d2_sel_x_b_1_q[31:18];
    assign i_mul23_maxpool2d4_bs1_merged_bit_select_c = redist5_bgTrunc_i_add_maxpool2d2_sel_x_b_1_q[17:0];

    // i_mul23_maxpool2d4_ma3_cma(CHAINMULTADD,54)@2 + 3
    assign i_mul23_maxpool2d4_ma3_cma_reset = ~ (resetn);
    assign i_mul23_maxpool2d4_ma3_cma_ena0 = 1'b1;
    assign i_mul23_maxpool2d4_ma3_cma_ena1 = i_mul23_maxpool2d4_ma3_cma_ena0;
    assign i_mul23_maxpool2d4_ma3_cma_ena2 = i_mul23_maxpool2d4_ma3_cma_ena0;

    assign i_mul23_maxpool2d4_ma3_cma_a0 = i_mul23_maxpool2d4_bs1_merged_bit_select_b;
    assign i_mul23_maxpool2d4_ma3_cma_c0 = i_mul23_maxpool2d4_bs2_merged_bit_select_c;
    assign i_mul23_maxpool2d4_ma3_cma_a1 = i_mul23_maxpool2d4_bs2_merged_bit_select_b;
    assign i_mul23_maxpool2d4_ma3_cma_c1 = i_mul23_maxpool2d4_bs1_merged_bit_select_c;
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
    ) i_mul23_maxpool2d4_ma3_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul23_maxpool2d4_ma3_cma_ena2, i_mul23_maxpool2d4_ma3_cma_ena1, i_mul23_maxpool2d4_ma3_cma_ena0 }),
        .aclr({ i_mul23_maxpool2d4_ma3_cma_reset, i_mul23_maxpool2d4_ma3_cma_reset }),
        .ay(i_mul23_maxpool2d4_ma3_cma_a1),
        .by(i_mul23_maxpool2d4_ma3_cma_a0),
        .ax(i_mul23_maxpool2d4_ma3_cma_c1),
        .bx(i_mul23_maxpool2d4_ma3_cma_c0),
        .resulta(i_mul23_maxpool2d4_ma3_cma_s0),
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
    i_mul23_maxpool2d4_ma3_cma_delay ( .xin(i_mul23_maxpool2d4_ma3_cma_s0), .xout(i_mul23_maxpool2d4_ma3_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul23_maxpool2d4_ma3_cma_q = $unsigned(i_mul23_maxpool2d4_ma3_cma_qq[32:0]);

    // i_mul23_maxpool2d4_sums_align_1(BITSHIFT,49)@5
    assign i_mul23_maxpool2d4_sums_align_1_qint = { i_mul23_maxpool2d4_ma3_cma_q, 18'b000000000000000000 };
    assign i_mul23_maxpool2d4_sums_align_1_q = i_mul23_maxpool2d4_sums_align_1_qint[50:0];

    // i_mul23_maxpool2d4_im0_cma(CHAINMULTADD,52)@2 + 3
    assign i_mul23_maxpool2d4_im0_cma_reset = ~ (resetn);
    assign i_mul23_maxpool2d4_im0_cma_ena0 = 1'b1;
    assign i_mul23_maxpool2d4_im0_cma_ena1 = i_mul23_maxpool2d4_im0_cma_ena0;
    assign i_mul23_maxpool2d4_im0_cma_ena2 = i_mul23_maxpool2d4_im0_cma_ena0;

    assign i_mul23_maxpool2d4_im0_cma_a0 = i_mul23_maxpool2d4_bs1_merged_bit_select_b;
    assign i_mul23_maxpool2d4_im0_cma_c0 = i_mul23_maxpool2d4_bs2_merged_bit_select_b;
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
    ) i_mul23_maxpool2d4_im0_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul23_maxpool2d4_im0_cma_ena2, i_mul23_maxpool2d4_im0_cma_ena1, i_mul23_maxpool2d4_im0_cma_ena0 }),
        .aclr({ i_mul23_maxpool2d4_im0_cma_reset, i_mul23_maxpool2d4_im0_cma_reset }),
        .ay(i_mul23_maxpool2d4_im0_cma_a0),
        .ax(i_mul23_maxpool2d4_im0_cma_c0),
        .resulta(i_mul23_maxpool2d4_im0_cma_s0),
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
    i_mul23_maxpool2d4_im0_cma_delay ( .xin(i_mul23_maxpool2d4_im0_cma_s0), .xout(i_mul23_maxpool2d4_im0_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul23_maxpool2d4_im0_cma_q = $unsigned(i_mul23_maxpool2d4_im0_cma_qq[27:0]);

    // i_mul23_maxpool2d4_im8_cma(CHAINMULTADD,53)@2 + 3
    assign i_mul23_maxpool2d4_im8_cma_reset = ~ (resetn);
    assign i_mul23_maxpool2d4_im8_cma_ena0 = 1'b1;
    assign i_mul23_maxpool2d4_im8_cma_ena1 = i_mul23_maxpool2d4_im8_cma_ena0;
    assign i_mul23_maxpool2d4_im8_cma_ena2 = i_mul23_maxpool2d4_im8_cma_ena0;

    assign i_mul23_maxpool2d4_im8_cma_a0 = i_mul23_maxpool2d4_bs1_merged_bit_select_c;
    assign i_mul23_maxpool2d4_im8_cma_c0 = i_mul23_maxpool2d4_bs2_merged_bit_select_c;
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
    ) i_mul23_maxpool2d4_im8_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul23_maxpool2d4_im8_cma_ena2, i_mul23_maxpool2d4_im8_cma_ena1, i_mul23_maxpool2d4_im8_cma_ena0 }),
        .aclr({ i_mul23_maxpool2d4_im8_cma_reset, i_mul23_maxpool2d4_im8_cma_reset }),
        .ay(i_mul23_maxpool2d4_im8_cma_a0),
        .ax(i_mul23_maxpool2d4_im8_cma_c0),
        .resulta(i_mul23_maxpool2d4_im8_cma_s0),
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
    i_mul23_maxpool2d4_im8_cma_delay ( .xin(i_mul23_maxpool2d4_im8_cma_s0), .xout(i_mul23_maxpool2d4_im8_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul23_maxpool2d4_im8_cma_q = $unsigned(i_mul23_maxpool2d4_im8_cma_qq[35:0]);

    // i_mul23_maxpool2d4_sums_join_0(BITJOIN,48)@5
    assign i_mul23_maxpool2d4_sums_join_0_q = {i_mul23_maxpool2d4_im0_cma_q, i_mul23_maxpool2d4_im8_cma_q};

    // i_mul23_maxpool2d4_sums_result_add_0_0(ADD,51)@5
    assign i_mul23_maxpool2d4_sums_result_add_0_0_a = {1'b0, i_mul23_maxpool2d4_sums_join_0_q};
    assign i_mul23_maxpool2d4_sums_result_add_0_0_b = {14'b00000000000000, i_mul23_maxpool2d4_sums_align_1_q};
    assign i_mul23_maxpool2d4_sums_result_add_0_0_o = $unsigned(i_mul23_maxpool2d4_sums_result_add_0_0_a) + $unsigned(i_mul23_maxpool2d4_sums_result_add_0_0_b);
    assign i_mul23_maxpool2d4_sums_result_add_0_0_q = i_mul23_maxpool2d4_sums_result_add_0_0_o[64:0];

    // bgTrunc_i_mul23_maxpool2d4_sel_x(BITSELECT,20)@5
    assign bgTrunc_i_mul23_maxpool2d4_sel_x_in = i_mul23_maxpool2d4_sums_result_add_0_0_q[63:0];
    assign bgTrunc_i_mul23_maxpool2d4_sel_x_b = bgTrunc_i_mul23_maxpool2d4_sel_x_in[31:0];

    // redist4_bgTrunc_i_mul23_maxpool2d4_sel_x_b_1(DELAY,61)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_bgTrunc_i_mul23_maxpool2d4_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist4_bgTrunc_i_mul23_maxpool2d4_sel_x_b_1_q <= $unsigned(bgTrunc_i_mul23_maxpool2d4_sel_x_b);
        end
    end

    // i_add25_maxpool2d5(ADD,7)@6
    assign i_add25_maxpool2d5_a = {1'b0, redist4_bgTrunc_i_mul23_maxpool2d4_sel_x_b_1_q};
    assign i_add25_maxpool2d5_b = {1'b0, redist1_sync_together13_aunroll_x_in_c0_eni5_3_tpl_5_outputreg0_q};
    assign i_add25_maxpool2d5_o = $unsigned(i_add25_maxpool2d5_a) + $unsigned(i_add25_maxpool2d5_b);
    assign i_add25_maxpool2d5_q = i_add25_maxpool2d5_o[32:0];

    // bgTrunc_i_add25_maxpool2d5_sel_x(BITSELECT,17)@6
    assign bgTrunc_i_add25_maxpool2d5_sel_x_b = i_add25_maxpool2d5_q[31:0];

    // i_add26_maxpool2d6(ADD,8)@6
    assign i_add26_maxpool2d6_a = {1'b0, bgTrunc_i_add25_maxpool2d5_sel_x_b};
    assign i_add26_maxpool2d6_b = {1'b0, redist2_sync_together13_aunroll_x_in_c0_eni5_4_tpl_5_outputreg0_q};
    assign i_add26_maxpool2d6_o = $unsigned(i_add26_maxpool2d6_a) + $unsigned(i_add26_maxpool2d6_b);
    assign i_add26_maxpool2d6_q = i_add26_maxpool2d6_o[32:0];

    // bgTrunc_i_add26_maxpool2d6_sel_x(BITSELECT,18)@6
    assign bgTrunc_i_add26_maxpool2d6_sel_x_b = i_add26_maxpool2d6_q[31:0];

    // redist6_bgTrunc_i_add26_maxpool2d6_sel_x_b_1(DELAY,63)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_bgTrunc_i_add26_maxpool2d6_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist6_bgTrunc_i_add26_maxpool2d6_sel_x_b_1_q <= $unsigned(bgTrunc_i_add26_maxpool2d6_sel_x_b);
        end
    end

    // i_idxprom_maxpool2d7_sel_x(BITSELECT,27)@7
    assign i_idxprom_maxpool2d7_sel_x_b = $unsigned({{32{redist6_bgTrunc_i_add26_maxpool2d6_sel_x_b_1_q[31]}}, redist6_bgTrunc_i_add26_maxpool2d6_sel_x_b_1_q[31:0]});

    // i_arrayidx3_maxpool2d0_narrow_x(BITSELECT,23)@7
    assign i_arrayidx3_maxpool2d0_narrow_x_b = i_idxprom_maxpool2d7_sel_x_b[61:0];

    // i_arrayidx3_maxpool2d0_c_i2_01_x(CONSTANT,22)
    assign i_arrayidx3_maxpool2d0_c_i2_01_x_q = $unsigned(2'b00);

    // i_arrayidx3_maxpool2d0_shift_join_x(BITJOIN,24)@7
    assign i_arrayidx3_maxpool2d0_shift_join_x_q = {i_arrayidx3_maxpool2d0_narrow_x_b, i_arrayidx3_maxpool2d0_c_i2_01_x_q};

    // redist3_sync_together13_aunroll_x_in_c0_eni5_5_tpl_6_notEnable(LOGICAL,93)
    assign redist3_sync_together13_aunroll_x_in_c0_eni5_5_tpl_6_notEnable_q = $unsigned(~ (VCC_q));

    // redist3_sync_together13_aunroll_x_in_c0_eni5_5_tpl_6_nor(LOGICAL,94)
    assign redist3_sync_together13_aunroll_x_in_c0_eni5_5_tpl_6_nor_q = ~ (redist3_sync_together13_aunroll_x_in_c0_eni5_5_tpl_6_notEnable_q | redist3_sync_together13_aunroll_x_in_c0_eni5_5_tpl_6_sticky_ena_q);

    // redist3_sync_together13_aunroll_x_in_c0_eni5_5_tpl_6_mem_last(CONSTANT,90)
    assign redist3_sync_together13_aunroll_x_in_c0_eni5_5_tpl_6_mem_last_q = $unsigned(3'b010);

    // redist3_sync_together13_aunroll_x_in_c0_eni5_5_tpl_6_cmp(LOGICAL,91)
    assign redist3_sync_together13_aunroll_x_in_c0_eni5_5_tpl_6_cmp_b = {1'b0, redist3_sync_together13_aunroll_x_in_c0_eni5_5_tpl_6_rdcnt_q};
    assign redist3_sync_together13_aunroll_x_in_c0_eni5_5_tpl_6_cmp_q = $unsigned(redist3_sync_together13_aunroll_x_in_c0_eni5_5_tpl_6_mem_last_q == redist3_sync_together13_aunroll_x_in_c0_eni5_5_tpl_6_cmp_b ? 1'b1 : 1'b0);

    // redist3_sync_together13_aunroll_x_in_c0_eni5_5_tpl_6_cmpReg(REG,92)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_sync_together13_aunroll_x_in_c0_eni5_5_tpl_6_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist3_sync_together13_aunroll_x_in_c0_eni5_5_tpl_6_cmpReg_q <= $unsigned(redist3_sync_together13_aunroll_x_in_c0_eni5_5_tpl_6_cmp_q);
        end
    end

    // redist3_sync_together13_aunroll_x_in_c0_eni5_5_tpl_6_sticky_ena(REG,95)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_sync_together13_aunroll_x_in_c0_eni5_5_tpl_6_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist3_sync_together13_aunroll_x_in_c0_eni5_5_tpl_6_nor_q == 1'b1)
        begin
            redist3_sync_together13_aunroll_x_in_c0_eni5_5_tpl_6_sticky_ena_q <= $unsigned(redist3_sync_together13_aunroll_x_in_c0_eni5_5_tpl_6_cmpReg_q);
        end
    end

    // redist3_sync_together13_aunroll_x_in_c0_eni5_5_tpl_6_enaAnd(LOGICAL,96)
    assign redist3_sync_together13_aunroll_x_in_c0_eni5_5_tpl_6_enaAnd_q = redist3_sync_together13_aunroll_x_in_c0_eni5_5_tpl_6_sticky_ena_q & VCC_q;

    // redist3_sync_together13_aunroll_x_in_c0_eni5_5_tpl_6_rdcnt(COUNTER,88)
    // low=0, high=3, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_sync_together13_aunroll_x_in_c0_eni5_5_tpl_6_rdcnt_i <= 2'd0;
        end
        else
        begin
            redist3_sync_together13_aunroll_x_in_c0_eni5_5_tpl_6_rdcnt_i <= $unsigned(redist3_sync_together13_aunroll_x_in_c0_eni5_5_tpl_6_rdcnt_i) + $unsigned(2'd1);
        end
    end
    assign redist3_sync_together13_aunroll_x_in_c0_eni5_5_tpl_6_rdcnt_q = redist3_sync_together13_aunroll_x_in_c0_eni5_5_tpl_6_rdcnt_i[1:0];

    // redist3_sync_together13_aunroll_x_in_c0_eni5_5_tpl_6_wraddr(REG,89)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_sync_together13_aunroll_x_in_c0_eni5_5_tpl_6_wraddr_q <= $unsigned(2'b11);
        end
        else
        begin
            redist3_sync_together13_aunroll_x_in_c0_eni5_5_tpl_6_wraddr_q <= $unsigned(redist3_sync_together13_aunroll_x_in_c0_eni5_5_tpl_6_rdcnt_q);
        end
    end

    // redist3_sync_together13_aunroll_x_in_c0_eni5_5_tpl_6_mem(DUALMEM,87)
    assign redist3_sync_together13_aunroll_x_in_c0_eni5_5_tpl_6_mem_ia = $unsigned(in_c0_eni5_5_tpl);
    assign redist3_sync_together13_aunroll_x_in_c0_eni5_5_tpl_6_mem_aa = redist3_sync_together13_aunroll_x_in_c0_eni5_5_tpl_6_wraddr_q;
    assign redist3_sync_together13_aunroll_x_in_c0_eni5_5_tpl_6_mem_ab = redist3_sync_together13_aunroll_x_in_c0_eni5_5_tpl_6_rdcnt_q;
    assign redist3_sync_together13_aunroll_x_in_c0_eni5_5_tpl_6_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(64),
        .widthad_a(2),
        .numwords_a(4),
        .width_b(64),
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
    ) redist3_sync_together13_aunroll_x_in_c0_eni5_5_tpl_6_mem_dmem (
        .clocken1(redist3_sync_together13_aunroll_x_in_c0_eni5_5_tpl_6_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist3_sync_together13_aunroll_x_in_c0_eni5_5_tpl_6_mem_reset0),
        .clock1(clock),
        .address_a(redist3_sync_together13_aunroll_x_in_c0_eni5_5_tpl_6_mem_aa),
        .data_a(redist3_sync_together13_aunroll_x_in_c0_eni5_5_tpl_6_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist3_sync_together13_aunroll_x_in_c0_eni5_5_tpl_6_mem_ab),
        .q_b(redist3_sync_together13_aunroll_x_in_c0_eni5_5_tpl_6_mem_iq),
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
    assign redist3_sync_together13_aunroll_x_in_c0_eni5_5_tpl_6_mem_q = redist3_sync_together13_aunroll_x_in_c0_eni5_5_tpl_6_mem_iq[63:0];

    // redist3_sync_together13_aunroll_x_in_c0_eni5_5_tpl_6_outputreg0(DELAY,86)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_sync_together13_aunroll_x_in_c0_eni5_5_tpl_6_outputreg0_q <= '0;
        end
        else
        begin
            redist3_sync_together13_aunroll_x_in_c0_eni5_5_tpl_6_outputreg0_q <= $unsigned(redist3_sync_together13_aunroll_x_in_c0_eni5_5_tpl_6_mem_q);
        end
    end

    // i_arrayidx3_maxpool2d0_add_x(ADD,21)@7
    assign i_arrayidx3_maxpool2d0_add_x_a = {1'b0, redist3_sync_together13_aunroll_x_in_c0_eni5_5_tpl_6_outputreg0_q};
    assign i_arrayidx3_maxpool2d0_add_x_b = {1'b0, i_arrayidx3_maxpool2d0_shift_join_x_q};
    assign i_arrayidx3_maxpool2d0_add_x_o = $unsigned(i_arrayidx3_maxpool2d0_add_x_a) + $unsigned(i_arrayidx3_maxpool2d0_add_x_b);
    assign i_arrayidx3_maxpool2d0_add_x_q = i_arrayidx3_maxpool2d0_add_x_o[64:0];

    // i_arrayidx3_maxpool2d0_dupName_0_trunc_sel_x(BITSELECT,26)@7
    assign i_arrayidx3_maxpool2d0_dupName_0_trunc_sel_x_b = i_arrayidx3_maxpool2d0_add_x_q[63:0];

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // sync_out_aunroll_x(GPOUT,28)@7
    assign out_c0_exi132_0_tpl = GND_q;
    assign out_c0_exi132_1_tpl = i_arrayidx3_maxpool2d0_dupName_0_trunc_sel_x_b;
    assign out_o_valid = redist0_valid_fanout_reg0_q_5_q;
    assign out_unnamed_maxpool2d0 = GND_q;

endmodule
