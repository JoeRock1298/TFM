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

// SystemVerilog created from mmul_i_sfc_logic_s_c1_in_for_body8_s_c1_enter_mmul0
// SystemVerilog created on Fri May  5 14:23:33 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module mmul_i_sfc_logic_s_c1_in_for_body8_s_c1_enter_mmul0 (
    output wire [0:0] out_c1_exi1_0_tpl,
    output wire [31:0] out_c1_exi1_1_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_mmul3,
    input wire [0:0] in_c1_eni5_0_tpl,
    input wire [31:0] in_c1_eni5_1_tpl,
    input wire [31:0] in_c1_eni5_2_tpl,
    input wire [0:0] in_c1_eni5_3_tpl,
    input wire [0:0] in_c1_eni5_4_tpl,
    input wire [0:0] in_c1_eni5_5_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] i_llvm_fpga_fp_accum_fp_accum_mmul2_out_o_result;
    (* dont_merge *) reg [0:0] valid_fanout_reg0_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg1_q;
    reg [0:0] redist0_valid_fanout_reg0_q_4_q;
    reg [0:0] redist0_valid_fanout_reg0_q_4_delay_0;
    reg [0:0] redist0_valid_fanout_reg0_q_4_delay_1;
    reg [0:0] redist0_valid_fanout_reg0_q_4_delay_2;
    reg [31:0] redist1_sync_together7_aunroll_x_in_c1_eni5_1_tpl_1_q;
    reg [31:0] redist2_sync_together7_aunroll_x_in_c1_eni5_2_tpl_1_q;
    reg [0:0] redist3_sync_together7_aunroll_x_in_c1_eni5_3_tpl_1_q;
    reg [0:0] redist4_sync_together7_aunroll_x_in_c1_eni5_4_tpl_1_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // valid_fanout_reg0(REG,7)@169 + 1
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

    // redist0_valid_fanout_reg0_q_4(DELAY,9)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_valid_fanout_reg0_q_4_delay_0 <= '0;
            redist0_valid_fanout_reg0_q_4_delay_1 <= '0;
            redist0_valid_fanout_reg0_q_4_delay_2 <= '0;
            redist0_valid_fanout_reg0_q_4_q <= '0;
        end
        else
        begin
            redist0_valid_fanout_reg0_q_4_delay_0 <= $unsigned(valid_fanout_reg0_q);
            redist0_valid_fanout_reg0_q_4_delay_1 <= redist0_valid_fanout_reg0_q_4_delay_0;
            redist0_valid_fanout_reg0_q_4_delay_2 <= redist0_valid_fanout_reg0_q_4_delay_1;
            redist0_valid_fanout_reg0_q_4_q <= redist0_valid_fanout_reg0_q_4_delay_2;
        end
    end

    // valid_fanout_reg1(REG,8)@169 + 1
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

    // redist2_sync_together7_aunroll_x_in_c1_eni5_2_tpl_1(DELAY,11)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_sync_together7_aunroll_x_in_c1_eni5_2_tpl_1_q <= '0;
        end
        else
        begin
            redist2_sync_together7_aunroll_x_in_c1_eni5_2_tpl_1_q <= $unsigned(in_c1_eni5_2_tpl);
        end
    end

    // redist1_sync_together7_aunroll_x_in_c1_eni5_1_tpl_1(DELAY,10)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together7_aunroll_x_in_c1_eni5_1_tpl_1_q <= '0;
        end
        else
        begin
            redist1_sync_together7_aunroll_x_in_c1_eni5_1_tpl_1_q <= $unsigned(in_c1_eni5_1_tpl);
        end
    end

    // redist4_sync_together7_aunroll_x_in_c1_eni5_4_tpl_1(DELAY,13)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_sync_together7_aunroll_x_in_c1_eni5_4_tpl_1_q <= '0;
        end
        else
        begin
            redist4_sync_together7_aunroll_x_in_c1_eni5_4_tpl_1_q <= $unsigned(in_c1_eni5_4_tpl);
        end
    end

    // redist3_sync_together7_aunroll_x_in_c1_eni5_3_tpl_1(DELAY,12)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_sync_together7_aunroll_x_in_c1_eni5_3_tpl_1_q <= '0;
        end
        else
        begin
            redist3_sync_together7_aunroll_x_in_c1_eni5_3_tpl_1_q <= $unsigned(in_c1_eni5_3_tpl);
        end
    end

    // i_llvm_fpga_fp_accum_fp_accum_mmul2(BLACKBOX,3)@170
    // out out_o_result@174
    // out out_o_stall@174
    // out out_o_valid@174
    mmul_i_llvm_fpga_fp_accum_fp_accum_0 thei_llvm_fpga_fp_accum_fp_accum_mmul2 (
        .in_c1_ene3(redist3_sync_together7_aunroll_x_in_c1_eni5_3_tpl_1_q),
        .in_c1_ene4(redist4_sync_together7_aunroll_x_in_c1_eni5_4_tpl_1_q),
        .in_i_dataa(redist1_sync_together7_aunroll_x_in_c1_eni5_1_tpl_1_q),
        .in_i_datab(redist2_sync_together7_aunroll_x_in_c1_eni5_2_tpl_1_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg1_q),
        .out_o_result(i_llvm_fpga_fp_accum_fp_accum_mmul2_out_o_result),
        .out_o_stall(),
        .out_o_valid(),
        .clock(clock),
        .resetn(resetn)
    );

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // sync_out_aunroll_x(GPOUT,5)@174
    assign out_c1_exi1_0_tpl = GND_q;
    assign out_c1_exi1_1_tpl = i_llvm_fpga_fp_accum_fp_accum_mmul2_out_o_result;
    assign out_o_valid = redist0_valid_fanout_reg0_q_4_q;
    assign out_unnamed_mmul3 = GND_q;

endmodule
