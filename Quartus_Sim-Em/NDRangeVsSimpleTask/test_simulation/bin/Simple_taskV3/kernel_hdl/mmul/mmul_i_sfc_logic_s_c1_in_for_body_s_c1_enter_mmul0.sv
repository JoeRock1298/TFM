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

// SystemVerilog created from mmul_i_sfc_logic_s_c1_in_for_body_s_c1_enter_mmul0
// SystemVerilog created on Wed May 10 11:34:06 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module mmul_i_sfc_logic_s_c1_in_for_body_s_c1_enter_mmul0 (
    output wire [31:0] out_intel_reserved_ffwd_3_0,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_mmul5,
    output wire [0:0] out_unnamed_mmul9_0_tpl,
    input wire [0:0] in_c1_eni6_0_tpl,
    input wire [31:0] in_c1_eni6_1_tpl,
    input wire [31:0] in_c1_eni6_2_tpl,
    input wire [0:0] in_c1_eni6_3_tpl,
    input wire [0:0] in_c1_eni6_4_tpl,
    input wire [0:0] in_c1_eni6_5_tpl,
    input wire [0:0] in_c1_eni6_6_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] i_llvm_fpga_ffwd_source_f32_unnamed_mmul8_mmul3_out_intel_reserved_ffwd_3_0;
    wire [31:0] i_llvm_fpga_fp_accum_fp_accum_mmul2_out_o_result;
    (* dont_merge *) reg [0:0] valid_fanout_reg0_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg1_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg2_q;
    reg [31:0] redist0_sync_together7_aunroll_x_in_c1_eni6_1_tpl_1_q;
    reg [31:0] redist1_sync_together7_aunroll_x_in_c1_eni6_2_tpl_1_q;
    reg [0:0] redist2_sync_together7_aunroll_x_in_c1_eni6_3_tpl_1_q;
    reg [0:0] redist3_sync_together7_aunroll_x_in_c1_eni6_4_tpl_1_q;
    reg [0:0] redist4_sync_together7_aunroll_x_in_c1_eni6_6_tpl_5_q;
    reg [0:0] redist4_sync_together7_aunroll_x_in_c1_eni6_6_tpl_5_delay_0;
    reg [0:0] redist4_sync_together7_aunroll_x_in_c1_eni6_6_tpl_5_delay_1;
    reg [0:0] redist4_sync_together7_aunroll_x_in_c1_eni6_6_tpl_5_delay_2;
    reg [0:0] redist4_sync_together7_aunroll_x_in_c1_eni6_6_tpl_5_delay_3;
    reg [0:0] redist5_sync_together7_aunroll_x_in_i_valid_4_q;
    reg [0:0] redist5_sync_together7_aunroll_x_in_i_valid_4_delay_0;
    reg [0:0] redist5_sync_together7_aunroll_x_in_i_valid_4_delay_1;
    reg [0:0] redist5_sync_together7_aunroll_x_in_i_valid_4_delay_2;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist5_sync_together7_aunroll_x_in_i_valid_4(DELAY,18)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_sync_together7_aunroll_x_in_i_valid_4_delay_0 <= '0;
            redist5_sync_together7_aunroll_x_in_i_valid_4_delay_1 <= '0;
            redist5_sync_together7_aunroll_x_in_i_valid_4_delay_2 <= '0;
            redist5_sync_together7_aunroll_x_in_i_valid_4_q <= '0;
        end
        else
        begin
            redist5_sync_together7_aunroll_x_in_i_valid_4_delay_0 <= $unsigned(in_i_valid);
            redist5_sync_together7_aunroll_x_in_i_valid_4_delay_1 <= redist5_sync_together7_aunroll_x_in_i_valid_4_delay_0;
            redist5_sync_together7_aunroll_x_in_i_valid_4_delay_2 <= redist5_sync_together7_aunroll_x_in_i_valid_4_delay_1;
            redist5_sync_together7_aunroll_x_in_i_valid_4_q <= redist5_sync_together7_aunroll_x_in_i_valid_4_delay_2;
        end
    end

    // valid_fanout_reg2(REG,12)@173 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg2_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg2_q <= $unsigned(redist5_sync_together7_aunroll_x_in_i_valid_4_q);
        end
    end

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // valid_fanout_reg1(REG,11)@169 + 1
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

    // redist1_sync_together7_aunroll_x_in_c1_eni6_2_tpl_1(DELAY,14)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together7_aunroll_x_in_c1_eni6_2_tpl_1_q <= '0;
        end
        else
        begin
            redist1_sync_together7_aunroll_x_in_c1_eni6_2_tpl_1_q <= $unsigned(in_c1_eni6_2_tpl);
        end
    end

    // redist0_sync_together7_aunroll_x_in_c1_eni6_1_tpl_1(DELAY,13)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_sync_together7_aunroll_x_in_c1_eni6_1_tpl_1_q <= '0;
        end
        else
        begin
            redist0_sync_together7_aunroll_x_in_c1_eni6_1_tpl_1_q <= $unsigned(in_c1_eni6_1_tpl);
        end
    end

    // redist3_sync_together7_aunroll_x_in_c1_eni6_4_tpl_1(DELAY,16)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_sync_together7_aunroll_x_in_c1_eni6_4_tpl_1_q <= '0;
        end
        else
        begin
            redist3_sync_together7_aunroll_x_in_c1_eni6_4_tpl_1_q <= $unsigned(in_c1_eni6_4_tpl);
        end
    end

    // redist2_sync_together7_aunroll_x_in_c1_eni6_3_tpl_1(DELAY,15)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_sync_together7_aunroll_x_in_c1_eni6_3_tpl_1_q <= '0;
        end
        else
        begin
            redist2_sync_together7_aunroll_x_in_c1_eni6_3_tpl_1_q <= $unsigned(in_c1_eni6_3_tpl);
        end
    end

    // i_llvm_fpga_fp_accum_fp_accum_mmul2(BLACKBOX,5)@170
    // out out_o_result@174
    // out out_o_stall@174
    // out out_o_valid@174
    mmul_i_llvm_fpga_fp_accum_fp_accum_0 thei_llvm_fpga_fp_accum_fp_accum_mmul2 (
        .in_c1_ene3(redist2_sync_together7_aunroll_x_in_c1_eni6_3_tpl_1_q),
        .in_c1_ene4(redist3_sync_together7_aunroll_x_in_c1_eni6_4_tpl_1_q),
        .in_i_dataa(redist0_sync_together7_aunroll_x_in_c1_eni6_1_tpl_1_q),
        .in_i_datab(redist1_sync_together7_aunroll_x_in_c1_eni6_2_tpl_1_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg1_q),
        .out_o_result(i_llvm_fpga_fp_accum_fp_accum_mmul2_out_o_result),
        .out_o_stall(),
        .out_o_valid(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist4_sync_together7_aunroll_x_in_c1_eni6_6_tpl_5(DELAY,17)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_sync_together7_aunroll_x_in_c1_eni6_6_tpl_5_delay_0 <= '0;
            redist4_sync_together7_aunroll_x_in_c1_eni6_6_tpl_5_delay_1 <= '0;
            redist4_sync_together7_aunroll_x_in_c1_eni6_6_tpl_5_delay_2 <= '0;
            redist4_sync_together7_aunroll_x_in_c1_eni6_6_tpl_5_delay_3 <= '0;
            redist4_sync_together7_aunroll_x_in_c1_eni6_6_tpl_5_q <= '0;
        end
        else
        begin
            redist4_sync_together7_aunroll_x_in_c1_eni6_6_tpl_5_delay_0 <= $unsigned(in_c1_eni6_6_tpl);
            redist4_sync_together7_aunroll_x_in_c1_eni6_6_tpl_5_delay_1 <= redist4_sync_together7_aunroll_x_in_c1_eni6_6_tpl_5_delay_0;
            redist4_sync_together7_aunroll_x_in_c1_eni6_6_tpl_5_delay_2 <= redist4_sync_together7_aunroll_x_in_c1_eni6_6_tpl_5_delay_1;
            redist4_sync_together7_aunroll_x_in_c1_eni6_6_tpl_5_delay_3 <= redist4_sync_together7_aunroll_x_in_c1_eni6_6_tpl_5_delay_2;
            redist4_sync_together7_aunroll_x_in_c1_eni6_6_tpl_5_q <= redist4_sync_together7_aunroll_x_in_c1_eni6_6_tpl_5_delay_3;
        end
    end

    // i_llvm_fpga_ffwd_source_f32_unnamed_mmul8_mmul3(BLACKBOX,4)@174
    // out out_intel_reserved_ffwd_3_0@20000000
    mmul_i_llvm_fpga_ffwd_source_f32_unnamed_8_mmul0 thei_llvm_fpga_ffwd_source_f32_unnamed_mmul8_mmul3 (
        .in_predicate_in(redist4_sync_together7_aunroll_x_in_c1_eni6_6_tpl_5_q),
        .in_src_data_in_3_0(i_llvm_fpga_fp_accum_fp_accum_mmul2_out_o_result),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_intel_reserved_ffwd_3_0(i_llvm_fpga_ffwd_source_f32_unnamed_mmul8_mmul3_out_intel_reserved_ffwd_3_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // regfree_osync(GPOUT,6)
    assign out_intel_reserved_ffwd_3_0 = i_llvm_fpga_ffwd_source_f32_unnamed_mmul8_mmul3_out_intel_reserved_ffwd_3_0;

    // valid_fanout_reg0(REG,10)@173 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist5_sync_together7_aunroll_x_in_i_valid_4_q);
        end
    end

    // sync_out_aunroll_x(GPOUT,8)@174
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_mmul5 = GND_q;
    assign out_unnamed_mmul9_0_tpl = GND_q;

endmodule
