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

// SystemVerilog created from mmul_B6_merge
// SystemVerilog created on Fri May  5 14:23:33 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module mmul_B6_merge (
    input wire [0:0] in_forked10_0,
    input wire [0:0] in_forked10_1,
    input wire [31:0] in_j_025_pop1033_0,
    input wire [31:0] in_j_025_pop1033_1,
    input wire [31:0] in_mul20_pop1134_0,
    input wire [31:0] in_mul20_pop1134_1,
    input wire [31:0] in_mul28_0,
    input wire [31:0] in_mul28_1,
    input wire [0:0] in_notcmp1232_0,
    input wire [0:0] in_notcmp1232_1,
    input wire [0:0] in_notcmp1622_pop1235_0,
    input wire [0:0] in_notcmp1622_pop1235_1,
    input wire [0:0] in_notcmp1631_0,
    input wire [0:0] in_notcmp1631_1,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [0:0] out_forked10,
    output wire [31:0] out_j_025_pop1033,
    output wire [31:0] out_mul20_pop1134,
    output wire [31:0] out_mul28,
    output wire [0:0] out_notcmp1232,
    output wire [0:0] out_notcmp1622_pop1235,
    output wire [0:0] out_notcmp1631,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    wire [0:0] forked10_mux_s;
    reg [0:0] forked10_mux_q;
    wire [0:0] j_025_pop1033_mux_s;
    reg [31:0] j_025_pop1033_mux_q;
    wire [0:0] mul20_pop1134_mux_s;
    reg [31:0] mul20_pop1134_mux_q;
    wire [0:0] mul28_mux_s;
    reg [31:0] mul28_mux_q;
    wire [0:0] notcmp1232_mux_s;
    reg [0:0] notcmp1232_mux_q;
    wire [0:0] notcmp1622_pop1235_mux_s;
    reg [0:0] notcmp1622_pop1235_mux_q;
    wire [0:0] notcmp1631_mux_s;
    reg [0:0] notcmp1631_mux_q;
    wire [0:0] stall_out_q;
    wire [0:0] stall_out_1_specific_q;
    wire [0:0] valid_or_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // forked10_mux(MUX,2)
    assign forked10_mux_s = in_valid_in_0;
    always @(forked10_mux_s or in_forked10_1 or in_forked10_0)
    begin
        unique case (forked10_mux_s)
            1'b0 : forked10_mux_q = in_forked10_1;
            1'b1 : forked10_mux_q = in_forked10_0;
            default : forked10_mux_q = 1'b0;
        endcase
    end

    // out_forked10(GPOUT,26)
    assign out_forked10 = forked10_mux_q;

    // j_025_pop1033_mux(MUX,20)
    assign j_025_pop1033_mux_s = in_valid_in_0;
    always @(j_025_pop1033_mux_s or in_j_025_pop1033_1 or in_j_025_pop1033_0)
    begin
        unique case (j_025_pop1033_mux_s)
            1'b0 : j_025_pop1033_mux_q = in_j_025_pop1033_1;
            1'b1 : j_025_pop1033_mux_q = in_j_025_pop1033_0;
            default : j_025_pop1033_mux_q = 32'b0;
        endcase
    end

    // out_j_025_pop1033(GPOUT,27)
    assign out_j_025_pop1033 = j_025_pop1033_mux_q;

    // mul20_pop1134_mux(MUX,21)
    assign mul20_pop1134_mux_s = in_valid_in_0;
    always @(mul20_pop1134_mux_s or in_mul20_pop1134_1 or in_mul20_pop1134_0)
    begin
        unique case (mul20_pop1134_mux_s)
            1'b0 : mul20_pop1134_mux_q = in_mul20_pop1134_1;
            1'b1 : mul20_pop1134_mux_q = in_mul20_pop1134_0;
            default : mul20_pop1134_mux_q = 32'b0;
        endcase
    end

    // out_mul20_pop1134(GPOUT,28)
    assign out_mul20_pop1134 = mul20_pop1134_mux_q;

    // mul28_mux(MUX,22)
    assign mul28_mux_s = in_valid_in_0;
    always @(mul28_mux_s or in_mul28_1 or in_mul28_0)
    begin
        unique case (mul28_mux_s)
            1'b0 : mul28_mux_q = in_mul28_1;
            1'b1 : mul28_mux_q = in_mul28_0;
            default : mul28_mux_q = 32'b0;
        endcase
    end

    // out_mul28(GPOUT,29)
    assign out_mul28 = mul28_mux_q;

    // notcmp1232_mux(MUX,23)
    assign notcmp1232_mux_s = in_valid_in_0;
    always @(notcmp1232_mux_s or in_notcmp1232_1 or in_notcmp1232_0)
    begin
        unique case (notcmp1232_mux_s)
            1'b0 : notcmp1232_mux_q = in_notcmp1232_1;
            1'b1 : notcmp1232_mux_q = in_notcmp1232_0;
            default : notcmp1232_mux_q = 1'b0;
        endcase
    end

    // out_notcmp1232(GPOUT,30)
    assign out_notcmp1232 = notcmp1232_mux_q;

    // notcmp1622_pop1235_mux(MUX,24)
    assign notcmp1622_pop1235_mux_s = in_valid_in_0;
    always @(notcmp1622_pop1235_mux_s or in_notcmp1622_pop1235_1 or in_notcmp1622_pop1235_0)
    begin
        unique case (notcmp1622_pop1235_mux_s)
            1'b0 : notcmp1622_pop1235_mux_q = in_notcmp1622_pop1235_1;
            1'b1 : notcmp1622_pop1235_mux_q = in_notcmp1622_pop1235_0;
            default : notcmp1622_pop1235_mux_q = 1'b0;
        endcase
    end

    // out_notcmp1622_pop1235(GPOUT,31)
    assign out_notcmp1622_pop1235 = notcmp1622_pop1235_mux_q;

    // notcmp1631_mux(MUX,25)
    assign notcmp1631_mux_s = in_valid_in_0;
    always @(notcmp1631_mux_s or in_notcmp1631_1 or in_notcmp1631_0)
    begin
        unique case (notcmp1631_mux_s)
            1'b0 : notcmp1631_mux_q = in_notcmp1631_1;
            1'b1 : notcmp1631_mux_q = in_notcmp1631_0;
            default : notcmp1631_mux_q = 1'b0;
        endcase
    end

    // out_notcmp1631(GPOUT,32)
    assign out_notcmp1631 = notcmp1631_mux_q;

    // valid_or(LOGICAL,38)
    assign valid_or_q = in_valid_in_0 | in_valid_in_1;

    // stall_out(LOGICAL,36)
    assign stall_out_q = valid_or_q & in_stall_in;

    // out_stall_out_0(GPOUT,33)
    assign out_stall_out_0 = stall_out_q;

    // stall_out_1_specific(LOGICAL,37)
    assign stall_out_1_specific_q = in_valid_in_0 | stall_out_q;

    // out_stall_out_1(GPOUT,34)
    assign out_stall_out_1 = stall_out_1_specific_q;

    // out_valid_out(GPOUT,35)
    assign out_valid_out = valid_or_q;

endmodule
