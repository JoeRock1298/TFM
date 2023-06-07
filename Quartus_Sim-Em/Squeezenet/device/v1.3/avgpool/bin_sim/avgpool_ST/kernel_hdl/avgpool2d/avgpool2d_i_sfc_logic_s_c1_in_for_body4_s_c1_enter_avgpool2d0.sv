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

// SystemVerilog created from avgpool2d_i_sfc_logic_s_c1_in_for_body4_s_c1_enter_avgpool2d0
// SystemVerilog created on Mon Jun  5 12:30:27 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module avgpool2d_i_sfc_logic_s_c1_in_for_body4_s_c1_enter_avgpool2d0 (
    output wire [0:0] out_c1_exi1_0_tpl,
    output wire [31:0] out_c1_exi1_1_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_avgpool2d0,
    input wire [0:0] in_c1_eni4_0_tpl,
    input wire [31:0] in_c1_eni4_1_tpl,
    input wire [0:0] in_c1_eni4_2_tpl,
    input wire [0:0] in_c1_eni4_3_tpl,
    input wire [0:0] in_c1_eni4_4_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] c_float_1_000000e_005_q;
    wire [31:0] i_llvm_fpga_fp_accum_fp_accum_avgpool2d2_out_o_result;
    (* dont_merge *) reg [0:0] valid_fanout_reg0_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg1_q;
    reg [0:0] redist0_valid_fanout_reg0_q_4_q;
    reg [0:0] redist0_valid_fanout_reg0_q_4_delay_0;
    reg [0:0] redist0_valid_fanout_reg0_q_4_delay_1;
    reg [0:0] redist0_valid_fanout_reg0_q_4_delay_2;
    reg [31:0] redist1_sync_together8_aunroll_x_in_c1_eni4_1_tpl_1_q;
    reg [0:0] redist2_sync_together8_aunroll_x_in_c1_eni4_2_tpl_1_q;
    reg [0:0] redist3_sync_together8_aunroll_x_in_c1_eni4_3_tpl_1_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // valid_fanout_reg0(REG,8)@152 + 1
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

    // redist0_valid_fanout_reg0_q_4(DELAY,10)
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

    // valid_fanout_reg1(REG,9)@152 + 1
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

    // c_float_1_000000e_005(FLOATCONSTANT,2)
    assign c_float_1_000000e_005_q = $unsigned(32'b00111111100000000000000000000000);

    // redist1_sync_together8_aunroll_x_in_c1_eni4_1_tpl_1(DELAY,11)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together8_aunroll_x_in_c1_eni4_1_tpl_1_q <= '0;
        end
        else
        begin
            redist1_sync_together8_aunroll_x_in_c1_eni4_1_tpl_1_q <= $unsigned(in_c1_eni4_1_tpl);
        end
    end

    // redist3_sync_together8_aunroll_x_in_c1_eni4_3_tpl_1(DELAY,13)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_sync_together8_aunroll_x_in_c1_eni4_3_tpl_1_q <= '0;
        end
        else
        begin
            redist3_sync_together8_aunroll_x_in_c1_eni4_3_tpl_1_q <= $unsigned(in_c1_eni4_3_tpl);
        end
    end

    // redist2_sync_together8_aunroll_x_in_c1_eni4_2_tpl_1(DELAY,12)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_sync_together8_aunroll_x_in_c1_eni4_2_tpl_1_q <= '0;
        end
        else
        begin
            redist2_sync_together8_aunroll_x_in_c1_eni4_2_tpl_1_q <= $unsigned(in_c1_eni4_2_tpl);
        end
    end

    // i_llvm_fpga_fp_accum_fp_accum_avgpool2d2(BLACKBOX,4)@153
    // out out_o_result@157
    // out out_o_stall@157
    // out out_o_valid@157
    avgpool2d_i_llvm_fpga_fp_accum_fp_accum_0 thei_llvm_fpga_fp_accum_fp_accum_avgpool2d2 (
        .in_c1_ene2(redist2_sync_together8_aunroll_x_in_c1_eni4_2_tpl_1_q),
        .in_c1_ene3(redist3_sync_together8_aunroll_x_in_c1_eni4_3_tpl_1_q),
        .in_i_dataa(redist1_sync_together8_aunroll_x_in_c1_eni4_1_tpl_1_q),
        .in_i_datab(c_float_1_000000e_005_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg1_q),
        .out_o_result(i_llvm_fpga_fp_accum_fp_accum_avgpool2d2_out_o_result),
        .out_o_stall(),
        .out_o_valid(),
        .clock(clock),
        .resetn(resetn)
    );

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // sync_out_aunroll_x(GPOUT,6)@157
    assign out_c1_exi1_0_tpl = GND_q;
    assign out_c1_exi1_1_tpl = i_llvm_fpga_fp_accum_fp_accum_avgpool2d2_out_o_result;
    assign out_o_valid = redist0_valid_fanout_reg0_q_4_q;
    assign out_unnamed_avgpool2d0 = GND_q;

endmodule
