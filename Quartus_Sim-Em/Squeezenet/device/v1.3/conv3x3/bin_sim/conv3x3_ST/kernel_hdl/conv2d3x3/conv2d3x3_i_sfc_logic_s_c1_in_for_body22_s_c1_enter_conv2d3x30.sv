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

// SystemVerilog created from conv2d3x3_i_sfc_logic_s_c1_in_for_body22_s_c1_enter_conv2d3x30
// SystemVerilog created on Tue May 30 12:33:16 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2d3x3_i_sfc_logic_s_c1_in_for_body22_s_c1_enter_conv2d3x30 (
    output wire [0:0] out_c1_exi1_0_tpl,
    output wire [31:0] out_c1_exi1_1_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_conv2d3x311,
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
    wire [0:0] i_acl_6_conv2d3x34_s;
    reg [31:0] i_acl_6_conv2d3x34_q;
    wire [31:0] i_llvm_fpga_fp_multadd_mult_add_conv2d3x33_out_primWireOut;
    wire [31:0] i_llvm_fpga_pop_f32_tmp_252_pop42_conv2d3x32_out_data_out;
    wire [0:0] i_llvm_fpga_pop_f32_tmp_252_pop42_conv2d3x32_out_feedback_stall_out_42;
    wire [31:0] i_llvm_fpga_push_f32_tmp_252_push42_conv2d3x35_out_feedback_out_42;
    wire [0:0] i_llvm_fpga_push_f32_tmp_252_push42_conv2d3x35_out_feedback_valid_out_42;
    (* dont_merge *) reg [0:0] valid_fanout_reg0_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg1_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg2_q;
    reg [31:0] redist0_sync_together13_aunroll_x_in_c1_eni6_1_tpl_1_q;
    reg [0:0] redist1_sync_together13_aunroll_x_in_c1_eni6_2_tpl_1_q;
    reg [31:0] redist2_sync_together13_aunroll_x_in_c1_eni6_3_tpl_1_q;
    reg [31:0] redist3_sync_together13_aunroll_x_in_c1_eni6_4_tpl_1_q;
    reg [0:0] redist4_sync_together13_aunroll_x_in_c1_eni6_5_tpl_5_q;
    reg [0:0] redist4_sync_together13_aunroll_x_in_c1_eni6_5_tpl_5_delay_0;
    reg [0:0] redist4_sync_together13_aunroll_x_in_c1_eni6_5_tpl_5_delay_1;
    reg [0:0] redist4_sync_together13_aunroll_x_in_c1_eni6_5_tpl_5_delay_2;
    reg [0:0] redist4_sync_together13_aunroll_x_in_c1_eni6_5_tpl_5_delay_3;
    reg [0:0] redist5_sync_together13_aunroll_x_in_c1_eni6_6_tpl_5_q;
    reg [0:0] redist5_sync_together13_aunroll_x_in_c1_eni6_6_tpl_5_delay_0;
    reg [0:0] redist5_sync_together13_aunroll_x_in_c1_eni6_6_tpl_5_delay_1;
    reg [0:0] redist5_sync_together13_aunroll_x_in_c1_eni6_6_tpl_5_delay_2;
    reg [0:0] redist5_sync_together13_aunroll_x_in_c1_eni6_6_tpl_5_delay_3;
    reg [0:0] redist6_sync_together13_aunroll_x_in_i_valid_4_q;
    reg [0:0] redist6_sync_together13_aunroll_x_in_i_valid_4_delay_0;
    reg [0:0] redist6_sync_together13_aunroll_x_in_i_valid_4_delay_1;
    reg [0:0] redist6_sync_together13_aunroll_x_in_i_valid_4_delay_2;
    reg [31:0] redist7_i_llvm_fpga_pop_f32_tmp_252_pop42_conv2d3x32_out_data_out_4_q;
    reg [31:0] redist7_i_llvm_fpga_pop_f32_tmp_252_pop42_conv2d3x32_out_data_out_4_delay_0;
    reg [31:0] redist7_i_llvm_fpga_pop_f32_tmp_252_pop42_conv2d3x32_out_data_out_4_inputreg0_q;
    reg [31:0] redist7_i_llvm_fpga_pop_f32_tmp_252_pop42_conv2d3x32_out_data_out_4_outputreg0_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist6_sync_together13_aunroll_x_in_i_valid_4(DELAY,20)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_sync_together13_aunroll_x_in_i_valid_4_delay_0 <= '0;
            redist6_sync_together13_aunroll_x_in_i_valid_4_delay_1 <= '0;
            redist6_sync_together13_aunroll_x_in_i_valid_4_delay_2 <= '0;
            redist6_sync_together13_aunroll_x_in_i_valid_4_q <= '0;
        end
        else
        begin
            redist6_sync_together13_aunroll_x_in_i_valid_4_delay_0 <= $unsigned(in_i_valid);
            redist6_sync_together13_aunroll_x_in_i_valid_4_delay_1 <= redist6_sync_together13_aunroll_x_in_i_valid_4_delay_0;
            redist6_sync_together13_aunroll_x_in_i_valid_4_delay_2 <= redist6_sync_together13_aunroll_x_in_i_valid_4_delay_1;
            redist6_sync_together13_aunroll_x_in_i_valid_4_q <= redist6_sync_together13_aunroll_x_in_i_valid_4_delay_2;
        end
    end

    // valid_fanout_reg0(REG,11)@256 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist6_sync_together13_aunroll_x_in_i_valid_4_q);
        end
    end

    // valid_fanout_reg1(REG,12)@252 + 1
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

    // valid_fanout_reg2(REG,13)@256 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg2_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg2_q <= $unsigned(redist6_sync_together13_aunroll_x_in_i_valid_4_q);
        end
    end

    // redist5_sync_together13_aunroll_x_in_c1_eni6_6_tpl_5(DELAY,19)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_sync_together13_aunroll_x_in_c1_eni6_6_tpl_5_delay_0 <= '0;
            redist5_sync_together13_aunroll_x_in_c1_eni6_6_tpl_5_delay_1 <= '0;
            redist5_sync_together13_aunroll_x_in_c1_eni6_6_tpl_5_delay_2 <= '0;
            redist5_sync_together13_aunroll_x_in_c1_eni6_6_tpl_5_delay_3 <= '0;
            redist5_sync_together13_aunroll_x_in_c1_eni6_6_tpl_5_q <= '0;
        end
        else
        begin
            redist5_sync_together13_aunroll_x_in_c1_eni6_6_tpl_5_delay_0 <= $unsigned(in_c1_eni6_6_tpl);
            redist5_sync_together13_aunroll_x_in_c1_eni6_6_tpl_5_delay_1 <= redist5_sync_together13_aunroll_x_in_c1_eni6_6_tpl_5_delay_0;
            redist5_sync_together13_aunroll_x_in_c1_eni6_6_tpl_5_delay_2 <= redist5_sync_together13_aunroll_x_in_c1_eni6_6_tpl_5_delay_1;
            redist5_sync_together13_aunroll_x_in_c1_eni6_6_tpl_5_delay_3 <= redist5_sync_together13_aunroll_x_in_c1_eni6_6_tpl_5_delay_2;
            redist5_sync_together13_aunroll_x_in_c1_eni6_6_tpl_5_q <= redist5_sync_together13_aunroll_x_in_c1_eni6_6_tpl_5_delay_3;
        end
    end

    // i_llvm_fpga_push_f32_tmp_252_push42_conv2d3x35(BLACKBOX,7)@257
    // out out_feedback_out_42@20000000
    // out out_feedback_valid_out_42@20000000
    conv2d3x3_i_llvm_fpga_push_f32_tmp_252_push42_0 thei_llvm_fpga_push_f32_tmp_252_push42_conv2d3x35 (
        .in_c1_ene6(redist5_sync_together13_aunroll_x_in_c1_eni6_6_tpl_5_q),
        .in_data_in(i_acl_6_conv2d3x34_q),
        .in_feedback_stall_in_42(i_llvm_fpga_pop_f32_tmp_252_pop42_conv2d3x32_out_feedback_stall_out_42),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(),
        .out_feedback_out_42(i_llvm_fpga_push_f32_tmp_252_push42_conv2d3x35_out_feedback_out_42),
        .out_feedback_valid_out_42(i_llvm_fpga_push_f32_tmp_252_push42_conv2d3x35_out_feedback_valid_out_42),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist1_sync_together13_aunroll_x_in_c1_eni6_2_tpl_1(DELAY,15)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together13_aunroll_x_in_c1_eni6_2_tpl_1_q <= '0;
        end
        else
        begin
            redist1_sync_together13_aunroll_x_in_c1_eni6_2_tpl_1_q <= $unsigned(in_c1_eni6_2_tpl);
        end
    end

    // redist0_sync_together13_aunroll_x_in_c1_eni6_1_tpl_1(DELAY,14)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_sync_together13_aunroll_x_in_c1_eni6_1_tpl_1_q <= '0;
        end
        else
        begin
            redist0_sync_together13_aunroll_x_in_c1_eni6_1_tpl_1_q <= $unsigned(in_c1_eni6_1_tpl);
        end
    end

    // i_llvm_fpga_pop_f32_tmp_252_pop42_conv2d3x32(BLACKBOX,6)@253
    // out out_feedback_stall_out_42@20000000
    conv2d3x3_i_llvm_fpga_pop_f32_tmp_252_pop42_0 thei_llvm_fpga_pop_f32_tmp_252_pop42_conv2d3x32 (
        .in_data_in(redist0_sync_together13_aunroll_x_in_c1_eni6_1_tpl_1_q),
        .in_dir(redist1_sync_together13_aunroll_x_in_c1_eni6_2_tpl_1_q),
        .in_feedback_in_42(i_llvm_fpga_push_f32_tmp_252_push42_conv2d3x35_out_feedback_out_42),
        .in_feedback_valid_in_42(i_llvm_fpga_push_f32_tmp_252_push42_conv2d3x35_out_feedback_valid_out_42),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_data_out(i_llvm_fpga_pop_f32_tmp_252_pop42_conv2d3x32_out_data_out),
        .out_feedback_stall_out_42(i_llvm_fpga_pop_f32_tmp_252_pop42_conv2d3x32_out_feedback_stall_out_42),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist3_sync_together13_aunroll_x_in_c1_eni6_4_tpl_1(DELAY,17)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_sync_together13_aunroll_x_in_c1_eni6_4_tpl_1_q <= '0;
        end
        else
        begin
            redist3_sync_together13_aunroll_x_in_c1_eni6_4_tpl_1_q <= $unsigned(in_c1_eni6_4_tpl);
        end
    end

    // redist2_sync_together13_aunroll_x_in_c1_eni6_3_tpl_1(DELAY,16)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_sync_together13_aunroll_x_in_c1_eni6_3_tpl_1_q <= '0;
        end
        else
        begin
            redist2_sync_together13_aunroll_x_in_c1_eni6_3_tpl_1_q <= $unsigned(in_c1_eni6_3_tpl);
        end
    end

    // i_llvm_fpga_fp_multadd_mult_add_conv2d3x33(BLACKBOX,5)@253
    // out out_primWireOut@257
    conv2d3x3_flt_i_sfc_logic_s_c1_in_for_bo0000xk5id06uq0cp0jv34qcz thei_llvm_fpga_fp_multadd_mult_add_conv2d3x33 (
        .in_0(redist2_sync_together13_aunroll_x_in_c1_eni6_3_tpl_1_q),
        .in_1(redist3_sync_together13_aunroll_x_in_c1_eni6_4_tpl_1_q),
        .in_2(i_llvm_fpga_pop_f32_tmp_252_pop42_conv2d3x32_out_data_out),
        .out_primWireOut(i_llvm_fpga_fp_multadd_mult_add_conv2d3x33_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // redist7_i_llvm_fpga_pop_f32_tmp_252_pop42_conv2d3x32_out_data_out_4_inputreg0(DELAY,22)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_i_llvm_fpga_pop_f32_tmp_252_pop42_conv2d3x32_out_data_out_4_inputreg0_q <= '0;
        end
        else
        begin
            redist7_i_llvm_fpga_pop_f32_tmp_252_pop42_conv2d3x32_out_data_out_4_inputreg0_q <= $unsigned(i_llvm_fpga_pop_f32_tmp_252_pop42_conv2d3x32_out_data_out);
        end
    end

    // redist7_i_llvm_fpga_pop_f32_tmp_252_pop42_conv2d3x32_out_data_out_4(DELAY,21)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_i_llvm_fpga_pop_f32_tmp_252_pop42_conv2d3x32_out_data_out_4_delay_0 <= '0;
            redist7_i_llvm_fpga_pop_f32_tmp_252_pop42_conv2d3x32_out_data_out_4_q <= '0;
        end
        else
        begin
            redist7_i_llvm_fpga_pop_f32_tmp_252_pop42_conv2d3x32_out_data_out_4_delay_0 <= $unsigned(redist7_i_llvm_fpga_pop_f32_tmp_252_pop42_conv2d3x32_out_data_out_4_inputreg0_q);
            redist7_i_llvm_fpga_pop_f32_tmp_252_pop42_conv2d3x32_out_data_out_4_q <= redist7_i_llvm_fpga_pop_f32_tmp_252_pop42_conv2d3x32_out_data_out_4_delay_0;
        end
    end

    // redist7_i_llvm_fpga_pop_f32_tmp_252_pop42_conv2d3x32_out_data_out_4_outputreg0(DELAY,23)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_i_llvm_fpga_pop_f32_tmp_252_pop42_conv2d3x32_out_data_out_4_outputreg0_q <= '0;
        end
        else
        begin
            redist7_i_llvm_fpga_pop_f32_tmp_252_pop42_conv2d3x32_out_data_out_4_outputreg0_q <= $unsigned(redist7_i_llvm_fpga_pop_f32_tmp_252_pop42_conv2d3x32_out_data_out_4_q);
        end
    end

    // redist4_sync_together13_aunroll_x_in_c1_eni6_5_tpl_5(DELAY,18)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_sync_together13_aunroll_x_in_c1_eni6_5_tpl_5_delay_0 <= '0;
            redist4_sync_together13_aunroll_x_in_c1_eni6_5_tpl_5_delay_1 <= '0;
            redist4_sync_together13_aunroll_x_in_c1_eni6_5_tpl_5_delay_2 <= '0;
            redist4_sync_together13_aunroll_x_in_c1_eni6_5_tpl_5_delay_3 <= '0;
            redist4_sync_together13_aunroll_x_in_c1_eni6_5_tpl_5_q <= '0;
        end
        else
        begin
            redist4_sync_together13_aunroll_x_in_c1_eni6_5_tpl_5_delay_0 <= $unsigned(in_c1_eni6_5_tpl);
            redist4_sync_together13_aunroll_x_in_c1_eni6_5_tpl_5_delay_1 <= redist4_sync_together13_aunroll_x_in_c1_eni6_5_tpl_5_delay_0;
            redist4_sync_together13_aunroll_x_in_c1_eni6_5_tpl_5_delay_2 <= redist4_sync_together13_aunroll_x_in_c1_eni6_5_tpl_5_delay_1;
            redist4_sync_together13_aunroll_x_in_c1_eni6_5_tpl_5_delay_3 <= redist4_sync_together13_aunroll_x_in_c1_eni6_5_tpl_5_delay_2;
            redist4_sync_together13_aunroll_x_in_c1_eni6_5_tpl_5_q <= redist4_sync_together13_aunroll_x_in_c1_eni6_5_tpl_5_delay_3;
        end
    end

    // i_acl_6_conv2d3x34(MUX,4)@257
    assign i_acl_6_conv2d3x34_s = redist4_sync_together13_aunroll_x_in_c1_eni6_5_tpl_5_q;
    always @(i_acl_6_conv2d3x34_s or redist7_i_llvm_fpga_pop_f32_tmp_252_pop42_conv2d3x32_out_data_out_4_outputreg0_q or i_llvm_fpga_fp_multadd_mult_add_conv2d3x33_out_primWireOut)
    begin
        unique case (i_acl_6_conv2d3x34_s)
            1'b0 : i_acl_6_conv2d3x34_q = redist7_i_llvm_fpga_pop_f32_tmp_252_pop42_conv2d3x32_out_data_out_4_outputreg0_q;
            1'b1 : i_acl_6_conv2d3x34_q = i_llvm_fpga_fp_multadd_mult_add_conv2d3x33_out_primWireOut;
            default : i_acl_6_conv2d3x34_q = 32'b0;
        endcase
    end

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // sync_out_aunroll_x(GPOUT,9)@257
    assign out_c1_exi1_0_tpl = GND_q;
    assign out_c1_exi1_1_tpl = i_acl_6_conv2d3x34_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_conv2d3x311 = GND_q;

endmodule
