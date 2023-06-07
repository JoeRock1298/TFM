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

// SystemVerilog created from avgpool2d_B2_merge
// SystemVerilog created on Tue Jun  6 18:45:14 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module avgpool2d_B2_merge (
    input wire [31:0] in_c0_exe12_0,
    input wire [31:0] in_c0_exe12_1,
    input wire [63:0] in_c0_exe23_0,
    input wire [63:0] in_c0_exe23_1,
    input wire [31:0] in_i_012_0,
    input wire [31:0] in_i_012_1,
    input wire [0:0] in_stall_in,
    input wire [31:0] in_tmp_011_0,
    input wire [31:0] in_tmp_011_1,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [31:0] out_c0_exe12,
    output wire [63:0] out_c0_exe23,
    output wire [31:0] out_i_012,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [31:0] out_tmp_011,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    wire [0:0] c0_exe12_mux_s;
    reg [31:0] c0_exe12_mux_q;
    wire [0:0] c0_exe23_mux_s;
    reg [63:0] c0_exe23_mux_q;
    wire [0:0] i_012_mux_s;
    reg [31:0] i_012_mux_q;
    wire [0:0] stall_out_q;
    wire [0:0] stall_out_1_specific_q;
    wire [0:0] tmp_011_mux_s;
    reg [31:0] tmp_011_mux_q;
    wire [0:0] valid_or_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // c0_exe12_mux(MUX,2)
    assign c0_exe12_mux_s = in_valid_in_0;
    always @(c0_exe12_mux_s or in_c0_exe12_1 or in_c0_exe12_0)
    begin
        unique case (c0_exe12_mux_s)
            1'b0 : c0_exe12_mux_q = in_c0_exe12_1;
            1'b1 : c0_exe12_mux_q = in_c0_exe12_0;
            default : c0_exe12_mux_q = 32'b0;
        endcase
    end

    // out_c0_exe12(GPOUT,16)
    assign out_c0_exe12 = c0_exe12_mux_q;

    // c0_exe23_mux(MUX,3)
    assign c0_exe23_mux_s = in_valid_in_0;
    always @(c0_exe23_mux_s or in_c0_exe23_1 or in_c0_exe23_0)
    begin
        unique case (c0_exe23_mux_s)
            1'b0 : c0_exe23_mux_q = in_c0_exe23_1;
            1'b1 : c0_exe23_mux_q = in_c0_exe23_0;
            default : c0_exe23_mux_q = 64'b0;
        endcase
    end

    // out_c0_exe23(GPOUT,17)
    assign out_c0_exe23 = c0_exe23_mux_q;

    // i_012_mux(MUX,4)
    assign i_012_mux_s = in_valid_in_0;
    always @(i_012_mux_s or in_i_012_1 or in_i_012_0)
    begin
        unique case (i_012_mux_s)
            1'b0 : i_012_mux_q = in_i_012_1;
            1'b1 : i_012_mux_q = in_i_012_0;
            default : i_012_mux_q = 32'b0;
        endcase
    end

    // out_i_012(GPOUT,18)
    assign out_i_012 = i_012_mux_q;

    // valid_or(LOGICAL,26)
    assign valid_or_q = in_valid_in_0 | in_valid_in_1;

    // stall_out(LOGICAL,23)
    assign stall_out_q = valid_or_q & in_stall_in;

    // out_stall_out_0(GPOUT,19)
    assign out_stall_out_0 = stall_out_q;

    // stall_out_1_specific(LOGICAL,24)
    assign stall_out_1_specific_q = in_valid_in_0 | stall_out_q;

    // out_stall_out_1(GPOUT,20)
    assign out_stall_out_1 = stall_out_1_specific_q;

    // tmp_011_mux(MUX,25)
    assign tmp_011_mux_s = in_valid_in_0;
    always @(tmp_011_mux_s or in_tmp_011_1 or in_tmp_011_0)
    begin
        unique case (tmp_011_mux_s)
            1'b0 : tmp_011_mux_q = in_tmp_011_1;
            1'b1 : tmp_011_mux_q = in_tmp_011_0;
            default : tmp_011_mux_q = 32'b0;
        endcase
    end

    // out_tmp_011(GPOUT,21)
    assign out_tmp_011 = tmp_011_mux_q;

    // out_valid_out(GPOUT,22)
    assign out_valid_out = valid_or_q;

endmodule
