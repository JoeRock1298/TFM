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

// SystemVerilog created from conv2d1x1_i_sfc_logic_s_c1_in_for_body8_s_c1_enter_conv2d1x10
// SystemVerilog created on Tue Jun  6 18:48:20 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2d1x1_i_sfc_logic_s_c1_in_for_body8_s_c1_enter_conv2d1x10 (
    output wire [0:0] out_c1_exi1_0_tpl,
    output wire [31:0] out_c1_exi1_1_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_conv2d1x16,
    input wire [0:0] in_c1_eni6_0_tpl,
    input wire [31:0] in_c1_eni6_1_tpl,
    input wire [0:0] in_c1_eni6_2_tpl,
    input wire [31:0] in_c1_eni6_3_tpl,
    input wire [31:0] in_c1_eni6_4_tpl,
    input wire [0:0] in_c1_eni6_5_tpl,
    input wire [0:0] in_c1_eni6_6_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] i_llvm_fpga_fp_multadd_mult_add_conv2d1x13_out_primWireOut;
    wire [31:0] i_llvm_fpga_pop_f32_lm30_pop26_conv2d1x15_out_data_out;
    wire [0:0] i_llvm_fpga_pop_f32_lm30_pop26_conv2d1x15_out_feedback_stall_out_26;
    wire [31:0] i_llvm_fpga_pop_f32_tmp_025_pop20_conv2d1x12_out_data_out;
    wire [0:0] i_llvm_fpga_pop_f32_tmp_025_pop20_conv2d1x12_out_feedback_stall_out_20;
    wire [31:0] i_llvm_fpga_push_f32_lm30_push26_conv2d1x16_out_feedback_out_26;
    wire [0:0] i_llvm_fpga_push_f32_lm30_push26_conv2d1x16_out_feedback_valid_out_26;
    wire [31:0] i_llvm_fpga_push_f32_tmp_025_push20_conv2d1x14_out_feedback_out_20;
    wire [0:0] i_llvm_fpga_push_f32_tmp_025_push20_conv2d1x14_out_feedback_valid_out_20;
    wire [0:0] i_tmp_0_lcssa_select_conv2d1x17_s;
    reg [31:0] i_tmp_0_lcssa_select_conv2d1x17_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg0_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg1_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg2_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg3_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg4_q;
    reg [31:0] redist0_sync_together19_aunroll_x_in_c1_eni6_1_tpl_1_q;
    reg [0:0] redist1_sync_together19_aunroll_x_in_c1_eni6_2_tpl_1_q;
    reg [31:0] redist2_sync_together19_aunroll_x_in_c1_eni6_3_tpl_1_q;
    reg [31:0] redist3_sync_together19_aunroll_x_in_c1_eni6_4_tpl_1_q;
    reg [0:0] redist4_sync_together19_aunroll_x_in_c1_eni6_5_tpl_5_q;
    reg [0:0] redist4_sync_together19_aunroll_x_in_c1_eni6_5_tpl_5_delay_0;
    reg [0:0] redist4_sync_together19_aunroll_x_in_c1_eni6_5_tpl_5_delay_1;
    reg [0:0] redist4_sync_together19_aunroll_x_in_c1_eni6_5_tpl_5_delay_2;
    reg [0:0] redist4_sync_together19_aunroll_x_in_c1_eni6_5_tpl_5_delay_3;
    reg [0:0] redist5_sync_together19_aunroll_x_in_c1_eni6_6_tpl_5_q;
    reg [0:0] redist5_sync_together19_aunroll_x_in_c1_eni6_6_tpl_5_delay_0;
    reg [0:0] redist5_sync_together19_aunroll_x_in_c1_eni6_6_tpl_5_delay_1;
    reg [0:0] redist5_sync_together19_aunroll_x_in_c1_eni6_6_tpl_5_delay_2;
    reg [0:0] redist5_sync_together19_aunroll_x_in_c1_eni6_6_tpl_5_delay_3;
    reg [0:0] redist6_sync_together19_aunroll_x_in_i_valid_4_q;
    reg [0:0] redist6_sync_together19_aunroll_x_in_i_valid_4_delay_0;
    reg [0:0] redist6_sync_together19_aunroll_x_in_i_valid_4_delay_1;
    reg [0:0] redist6_sync_together19_aunroll_x_in_i_valid_4_delay_2;
    reg [31:0] redist7_i_llvm_fpga_pop_f32_lm30_pop26_conv2d1x15_out_data_out_4_outputreg0_q;
    wire redist7_i_llvm_fpga_pop_f32_lm30_pop26_conv2d1x15_out_data_out_4_mem_reset0;
    wire [31:0] redist7_i_llvm_fpga_pop_f32_lm30_pop26_conv2d1x15_out_data_out_4_mem_ia;
    wire [0:0] redist7_i_llvm_fpga_pop_f32_lm30_pop26_conv2d1x15_out_data_out_4_mem_aa;
    wire [0:0] redist7_i_llvm_fpga_pop_f32_lm30_pop26_conv2d1x15_out_data_out_4_mem_ab;
    wire [31:0] redist7_i_llvm_fpga_pop_f32_lm30_pop26_conv2d1x15_out_data_out_4_mem_iq;
    wire [31:0] redist7_i_llvm_fpga_pop_f32_lm30_pop26_conv2d1x15_out_data_out_4_mem_q;
    wire [0:0] redist7_i_llvm_fpga_pop_f32_lm30_pop26_conv2d1x15_out_data_out_4_rdcnt_q;
    (* preserve *) reg [0:0] redist7_i_llvm_fpga_pop_f32_lm30_pop26_conv2d1x15_out_data_out_4_rdcnt_i;
    reg [0:0] redist7_i_llvm_fpga_pop_f32_lm30_pop26_conv2d1x15_out_data_out_4_wraddr_q;
    (* dont_merge *) reg [0:0] redist7_i_llvm_fpga_pop_f32_lm30_pop26_conv2d1x15_out_data_out_4_cmpReg_q;
    wire [0:0] redist7_i_llvm_fpga_pop_f32_lm30_pop26_conv2d1x15_out_data_out_4_notEnable_q;
    wire [0:0] redist7_i_llvm_fpga_pop_f32_lm30_pop26_conv2d1x15_out_data_out_4_nor_q;
    (* dont_merge *) reg [0:0] redist7_i_llvm_fpga_pop_f32_lm30_pop26_conv2d1x15_out_data_out_4_sticky_ena_q;
    wire [0:0] redist7_i_llvm_fpga_pop_f32_lm30_pop26_conv2d1x15_out_data_out_4_enaAnd_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist6_sync_together19_aunroll_x_in_i_valid_4(DELAY,26)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_sync_together19_aunroll_x_in_i_valid_4_delay_0 <= '0;
            redist6_sync_together19_aunroll_x_in_i_valid_4_delay_1 <= '0;
            redist6_sync_together19_aunroll_x_in_i_valid_4_delay_2 <= '0;
            redist6_sync_together19_aunroll_x_in_i_valid_4_q <= '0;
        end
        else
        begin
            redist6_sync_together19_aunroll_x_in_i_valid_4_delay_0 <= $unsigned(in_i_valid);
            redist6_sync_together19_aunroll_x_in_i_valid_4_delay_1 <= redist6_sync_together19_aunroll_x_in_i_valid_4_delay_0;
            redist6_sync_together19_aunroll_x_in_i_valid_4_delay_2 <= redist6_sync_together19_aunroll_x_in_i_valid_4_delay_1;
            redist6_sync_together19_aunroll_x_in_i_valid_4_q <= redist6_sync_together19_aunroll_x_in_i_valid_4_delay_2;
        end
    end

    // valid_fanout_reg0(REG,15)@190 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist6_sync_together19_aunroll_x_in_i_valid_4_q);
        end
    end

    // valid_fanout_reg1(REG,16)@186 + 1
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

    // valid_fanout_reg2(REG,17)@190 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg2_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg2_q <= $unsigned(redist6_sync_together19_aunroll_x_in_i_valid_4_q);
        end
    end

    // redist4_sync_together19_aunroll_x_in_c1_eni6_5_tpl_5(DELAY,24)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_sync_together19_aunroll_x_in_c1_eni6_5_tpl_5_delay_0 <= '0;
            redist4_sync_together19_aunroll_x_in_c1_eni6_5_tpl_5_delay_1 <= '0;
            redist4_sync_together19_aunroll_x_in_c1_eni6_5_tpl_5_delay_2 <= '0;
            redist4_sync_together19_aunroll_x_in_c1_eni6_5_tpl_5_delay_3 <= '0;
            redist4_sync_together19_aunroll_x_in_c1_eni6_5_tpl_5_q <= '0;
        end
        else
        begin
            redist4_sync_together19_aunroll_x_in_c1_eni6_5_tpl_5_delay_0 <= $unsigned(in_c1_eni6_5_tpl);
            redist4_sync_together19_aunroll_x_in_c1_eni6_5_tpl_5_delay_1 <= redist4_sync_together19_aunroll_x_in_c1_eni6_5_tpl_5_delay_0;
            redist4_sync_together19_aunroll_x_in_c1_eni6_5_tpl_5_delay_2 <= redist4_sync_together19_aunroll_x_in_c1_eni6_5_tpl_5_delay_1;
            redist4_sync_together19_aunroll_x_in_c1_eni6_5_tpl_5_delay_3 <= redist4_sync_together19_aunroll_x_in_c1_eni6_5_tpl_5_delay_2;
            redist4_sync_together19_aunroll_x_in_c1_eni6_5_tpl_5_q <= redist4_sync_together19_aunroll_x_in_c1_eni6_5_tpl_5_delay_3;
        end
    end

    // i_llvm_fpga_push_f32_tmp_025_push20_conv2d1x14(BLACKBOX,10)@191
    // out out_feedback_out_20@20000000
    // out out_feedback_valid_out_20@20000000
    conv2d1x1_i_llvm_fpga_push_f32_tmp_025_push20_0 thei_llvm_fpga_push_f32_tmp_025_push20_conv2d1x14 (
        .in_c1_ene5(redist4_sync_together19_aunroll_x_in_c1_eni6_5_tpl_5_q),
        .in_data_in(i_llvm_fpga_fp_multadd_mult_add_conv2d1x13_out_primWireOut),
        .in_feedback_stall_in_20(i_llvm_fpga_pop_f32_tmp_025_pop20_conv2d1x12_out_feedback_stall_out_20),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(),
        .out_feedback_out_20(i_llvm_fpga_push_f32_tmp_025_push20_conv2d1x14_out_feedback_out_20),
        .out_feedback_valid_out_20(i_llvm_fpga_push_f32_tmp_025_push20_conv2d1x14_out_feedback_valid_out_20),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist1_sync_together19_aunroll_x_in_c1_eni6_2_tpl_1(DELAY,21)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together19_aunroll_x_in_c1_eni6_2_tpl_1_q <= '0;
        end
        else
        begin
            redist1_sync_together19_aunroll_x_in_c1_eni6_2_tpl_1_q <= $unsigned(in_c1_eni6_2_tpl);
        end
    end

    // redist0_sync_together19_aunroll_x_in_c1_eni6_1_tpl_1(DELAY,20)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_sync_together19_aunroll_x_in_c1_eni6_1_tpl_1_q <= '0;
        end
        else
        begin
            redist0_sync_together19_aunroll_x_in_c1_eni6_1_tpl_1_q <= $unsigned(in_c1_eni6_1_tpl);
        end
    end

    // i_llvm_fpga_pop_f32_tmp_025_pop20_conv2d1x12(BLACKBOX,8)@187
    // out out_feedback_stall_out_20@20000000
    conv2d1x1_i_llvm_fpga_pop_f32_tmp_025_pop20_0 thei_llvm_fpga_pop_f32_tmp_025_pop20_conv2d1x12 (
        .in_data_in(redist0_sync_together19_aunroll_x_in_c1_eni6_1_tpl_1_q),
        .in_dir(redist1_sync_together19_aunroll_x_in_c1_eni6_2_tpl_1_q),
        .in_feedback_in_20(i_llvm_fpga_push_f32_tmp_025_push20_conv2d1x14_out_feedback_out_20),
        .in_feedback_valid_in_20(i_llvm_fpga_push_f32_tmp_025_push20_conv2d1x14_out_feedback_valid_out_20),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_data_out(i_llvm_fpga_pop_f32_tmp_025_pop20_conv2d1x12_out_data_out),
        .out_feedback_stall_out_20(i_llvm_fpga_pop_f32_tmp_025_pop20_conv2d1x12_out_feedback_stall_out_20),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist3_sync_together19_aunroll_x_in_c1_eni6_4_tpl_1(DELAY,23)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_sync_together19_aunroll_x_in_c1_eni6_4_tpl_1_q <= '0;
        end
        else
        begin
            redist3_sync_together19_aunroll_x_in_c1_eni6_4_tpl_1_q <= $unsigned(in_c1_eni6_4_tpl);
        end
    end

    // redist2_sync_together19_aunroll_x_in_c1_eni6_3_tpl_1(DELAY,22)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_sync_together19_aunroll_x_in_c1_eni6_3_tpl_1_q <= '0;
        end
        else
        begin
            redist2_sync_together19_aunroll_x_in_c1_eni6_3_tpl_1_q <= $unsigned(in_c1_eni6_3_tpl);
        end
    end

    // i_llvm_fpga_fp_multadd_mult_add_conv2d1x13(BLACKBOX,6)@187
    // out out_primWireOut@191
    conv2d1x1_flt_i_sfc_logic_s_c1_in_for_bo0000xk5id06uq0cp0jv34qcz thei_llvm_fpga_fp_multadd_mult_add_conv2d1x13 (
        .in_0(redist2_sync_together19_aunroll_x_in_c1_eni6_3_tpl_1_q),
        .in_1(redist3_sync_together19_aunroll_x_in_c1_eni6_4_tpl_1_q),
        .in_2(i_llvm_fpga_pop_f32_tmp_025_pop20_conv2d1x12_out_data_out),
        .out_primWireOut(i_llvm_fpga_fp_multadd_mult_add_conv2d1x13_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // redist7_i_llvm_fpga_pop_f32_lm30_pop26_conv2d1x15_out_data_out_4_notEnable(LOGICAL,33)
    assign redist7_i_llvm_fpga_pop_f32_lm30_pop26_conv2d1x15_out_data_out_4_notEnable_q = $unsigned(~ (VCC_q));

    // redist7_i_llvm_fpga_pop_f32_lm30_pop26_conv2d1x15_out_data_out_4_nor(LOGICAL,34)
    assign redist7_i_llvm_fpga_pop_f32_lm30_pop26_conv2d1x15_out_data_out_4_nor_q = ~ (redist7_i_llvm_fpga_pop_f32_lm30_pop26_conv2d1x15_out_data_out_4_notEnable_q | redist7_i_llvm_fpga_pop_f32_lm30_pop26_conv2d1x15_out_data_out_4_sticky_ena_q);

    // redist7_i_llvm_fpga_pop_f32_lm30_pop26_conv2d1x15_out_data_out_4_cmpReg(REG,32)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_i_llvm_fpga_pop_f32_lm30_pop26_conv2d1x15_out_data_out_4_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist7_i_llvm_fpga_pop_f32_lm30_pop26_conv2d1x15_out_data_out_4_cmpReg_q <= $unsigned(VCC_q);
        end
    end

    // redist7_i_llvm_fpga_pop_f32_lm30_pop26_conv2d1x15_out_data_out_4_sticky_ena(REG,35)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_i_llvm_fpga_pop_f32_lm30_pop26_conv2d1x15_out_data_out_4_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist7_i_llvm_fpga_pop_f32_lm30_pop26_conv2d1x15_out_data_out_4_nor_q == 1'b1)
        begin
            redist7_i_llvm_fpga_pop_f32_lm30_pop26_conv2d1x15_out_data_out_4_sticky_ena_q <= $unsigned(redist7_i_llvm_fpga_pop_f32_lm30_pop26_conv2d1x15_out_data_out_4_cmpReg_q);
        end
    end

    // redist7_i_llvm_fpga_pop_f32_lm30_pop26_conv2d1x15_out_data_out_4_enaAnd(LOGICAL,36)
    assign redist7_i_llvm_fpga_pop_f32_lm30_pop26_conv2d1x15_out_data_out_4_enaAnd_q = redist7_i_llvm_fpga_pop_f32_lm30_pop26_conv2d1x15_out_data_out_4_sticky_ena_q & VCC_q;

    // redist7_i_llvm_fpga_pop_f32_lm30_pop26_conv2d1x15_out_data_out_4_rdcnt(COUNTER,30)
    // low=0, high=1, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_i_llvm_fpga_pop_f32_lm30_pop26_conv2d1x15_out_data_out_4_rdcnt_i <= 1'd0;
        end
        else
        begin
            redist7_i_llvm_fpga_pop_f32_lm30_pop26_conv2d1x15_out_data_out_4_rdcnt_i <= $unsigned(redist7_i_llvm_fpga_pop_f32_lm30_pop26_conv2d1x15_out_data_out_4_rdcnt_i) + $unsigned(1'd1);
        end
    end
    assign redist7_i_llvm_fpga_pop_f32_lm30_pop26_conv2d1x15_out_data_out_4_rdcnt_q = redist7_i_llvm_fpga_pop_f32_lm30_pop26_conv2d1x15_out_data_out_4_rdcnt_i[0:0];

    // valid_fanout_reg3(REG,18)@186 + 1
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

    // valid_fanout_reg4(REG,19)@190 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg4_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg4_q <= $unsigned(redist6_sync_together19_aunroll_x_in_i_valid_4_q);
        end
    end

    // i_llvm_fpga_push_f32_lm30_push26_conv2d1x16(BLACKBOX,9)@191
    // out out_feedback_out_26@20000000
    // out out_feedback_valid_out_26@20000000
    conv2d1x1_i_llvm_fpga_push_f32_lm30_push26_0 thei_llvm_fpga_push_f32_lm30_push26_conv2d1x16 (
        .in_c1_ene5(redist4_sync_together19_aunroll_x_in_c1_eni6_5_tpl_5_q),
        .in_data_in(redist7_i_llvm_fpga_pop_f32_lm30_pop26_conv2d1x15_out_data_out_4_outputreg0_q),
        .in_feedback_stall_in_26(i_llvm_fpga_pop_f32_lm30_pop26_conv2d1x15_out_feedback_stall_out_26),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_data_out(),
        .out_feedback_out_26(i_llvm_fpga_push_f32_lm30_push26_conv2d1x16_out_feedback_out_26),
        .out_feedback_valid_out_26(i_llvm_fpga_push_f32_lm30_push26_conv2d1x16_out_feedback_valid_out_26),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_f32_lm30_pop26_conv2d1x15(BLACKBOX,7)@187
    // out out_feedback_stall_out_26@20000000
    conv2d1x1_i_llvm_fpga_pop_f32_lm30_pop26_0 thei_llvm_fpga_pop_f32_lm30_pop26_conv2d1x15 (
        .in_data_in(redist0_sync_together19_aunroll_x_in_c1_eni6_1_tpl_1_q),
        .in_dir(redist1_sync_together19_aunroll_x_in_c1_eni6_2_tpl_1_q),
        .in_feedback_in_26(i_llvm_fpga_push_f32_lm30_push26_conv2d1x16_out_feedback_out_26),
        .in_feedback_valid_in_26(i_llvm_fpga_push_f32_lm30_push26_conv2d1x16_out_feedback_valid_out_26),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_data_out(i_llvm_fpga_pop_f32_lm30_pop26_conv2d1x15_out_data_out),
        .out_feedback_stall_out_26(i_llvm_fpga_pop_f32_lm30_pop26_conv2d1x15_out_feedback_stall_out_26),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist7_i_llvm_fpga_pop_f32_lm30_pop26_conv2d1x15_out_data_out_4_wraddr(REG,31)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_i_llvm_fpga_pop_f32_lm30_pop26_conv2d1x15_out_data_out_4_wraddr_q <= $unsigned(1'b1);
        end
        else
        begin
            redist7_i_llvm_fpga_pop_f32_lm30_pop26_conv2d1x15_out_data_out_4_wraddr_q <= $unsigned(redist7_i_llvm_fpga_pop_f32_lm30_pop26_conv2d1x15_out_data_out_4_rdcnt_q);
        end
    end

    // redist7_i_llvm_fpga_pop_f32_lm30_pop26_conv2d1x15_out_data_out_4_mem(DUALMEM,29)
    assign redist7_i_llvm_fpga_pop_f32_lm30_pop26_conv2d1x15_out_data_out_4_mem_ia = $unsigned(i_llvm_fpga_pop_f32_lm30_pop26_conv2d1x15_out_data_out);
    assign redist7_i_llvm_fpga_pop_f32_lm30_pop26_conv2d1x15_out_data_out_4_mem_aa = redist7_i_llvm_fpga_pop_f32_lm30_pop26_conv2d1x15_out_data_out_4_wraddr_q;
    assign redist7_i_llvm_fpga_pop_f32_lm30_pop26_conv2d1x15_out_data_out_4_mem_ab = redist7_i_llvm_fpga_pop_f32_lm30_pop26_conv2d1x15_out_data_out_4_rdcnt_q;
    assign redist7_i_llvm_fpga_pop_f32_lm30_pop26_conv2d1x15_out_data_out_4_mem_reset0 = ~ (resetn);
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
    ) redist7_i_llvm_fpga_pop_f32_lm30_pop26_conv2d1x15_out_data_out_4_mem_dmem (
        .clocken1(redist7_i_llvm_fpga_pop_f32_lm30_pop26_conv2d1x15_out_data_out_4_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist7_i_llvm_fpga_pop_f32_lm30_pop26_conv2d1x15_out_data_out_4_mem_reset0),
        .clock1(clock),
        .address_a(redist7_i_llvm_fpga_pop_f32_lm30_pop26_conv2d1x15_out_data_out_4_mem_aa),
        .data_a(redist7_i_llvm_fpga_pop_f32_lm30_pop26_conv2d1x15_out_data_out_4_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist7_i_llvm_fpga_pop_f32_lm30_pop26_conv2d1x15_out_data_out_4_mem_ab),
        .q_b(redist7_i_llvm_fpga_pop_f32_lm30_pop26_conv2d1x15_out_data_out_4_mem_iq),
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
    assign redist7_i_llvm_fpga_pop_f32_lm30_pop26_conv2d1x15_out_data_out_4_mem_q = redist7_i_llvm_fpga_pop_f32_lm30_pop26_conv2d1x15_out_data_out_4_mem_iq[31:0];

    // redist7_i_llvm_fpga_pop_f32_lm30_pop26_conv2d1x15_out_data_out_4_outputreg0(DELAY,28)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_i_llvm_fpga_pop_f32_lm30_pop26_conv2d1x15_out_data_out_4_outputreg0_q <= '0;
        end
        else
        begin
            redist7_i_llvm_fpga_pop_f32_lm30_pop26_conv2d1x15_out_data_out_4_outputreg0_q <= $unsigned(redist7_i_llvm_fpga_pop_f32_lm30_pop26_conv2d1x15_out_data_out_4_mem_q);
        end
    end

    // redist5_sync_together19_aunroll_x_in_c1_eni6_6_tpl_5(DELAY,25)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_sync_together19_aunroll_x_in_c1_eni6_6_tpl_5_delay_0 <= '0;
            redist5_sync_together19_aunroll_x_in_c1_eni6_6_tpl_5_delay_1 <= '0;
            redist5_sync_together19_aunroll_x_in_c1_eni6_6_tpl_5_delay_2 <= '0;
            redist5_sync_together19_aunroll_x_in_c1_eni6_6_tpl_5_delay_3 <= '0;
            redist5_sync_together19_aunroll_x_in_c1_eni6_6_tpl_5_q <= '0;
        end
        else
        begin
            redist5_sync_together19_aunroll_x_in_c1_eni6_6_tpl_5_delay_0 <= $unsigned(in_c1_eni6_6_tpl);
            redist5_sync_together19_aunroll_x_in_c1_eni6_6_tpl_5_delay_1 <= redist5_sync_together19_aunroll_x_in_c1_eni6_6_tpl_5_delay_0;
            redist5_sync_together19_aunroll_x_in_c1_eni6_6_tpl_5_delay_2 <= redist5_sync_together19_aunroll_x_in_c1_eni6_6_tpl_5_delay_1;
            redist5_sync_together19_aunroll_x_in_c1_eni6_6_tpl_5_delay_3 <= redist5_sync_together19_aunroll_x_in_c1_eni6_6_tpl_5_delay_2;
            redist5_sync_together19_aunroll_x_in_c1_eni6_6_tpl_5_q <= redist5_sync_together19_aunroll_x_in_c1_eni6_6_tpl_5_delay_3;
        end
    end

    // i_tmp_0_lcssa_select_conv2d1x17(MUX,11)@191
    assign i_tmp_0_lcssa_select_conv2d1x17_s = redist5_sync_together19_aunroll_x_in_c1_eni6_6_tpl_5_q;
    always @(i_tmp_0_lcssa_select_conv2d1x17_s or redist7_i_llvm_fpga_pop_f32_lm30_pop26_conv2d1x15_out_data_out_4_outputreg0_q or i_llvm_fpga_fp_multadd_mult_add_conv2d1x13_out_primWireOut)
    begin
        unique case (i_tmp_0_lcssa_select_conv2d1x17_s)
            1'b0 : i_tmp_0_lcssa_select_conv2d1x17_q = redist7_i_llvm_fpga_pop_f32_lm30_pop26_conv2d1x15_out_data_out_4_outputreg0_q;
            1'b1 : i_tmp_0_lcssa_select_conv2d1x17_q = i_llvm_fpga_fp_multadd_mult_add_conv2d1x13_out_primWireOut;
            default : i_tmp_0_lcssa_select_conv2d1x17_q = 32'b0;
        endcase
    end

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // sync_out_aunroll_x(GPOUT,13)@191
    assign out_c1_exi1_0_tpl = GND_q;
    assign out_c1_exi1_1_tpl = i_tmp_0_lcssa_select_conv2d1x17_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_conv2d1x16 = GND_q;

endmodule
