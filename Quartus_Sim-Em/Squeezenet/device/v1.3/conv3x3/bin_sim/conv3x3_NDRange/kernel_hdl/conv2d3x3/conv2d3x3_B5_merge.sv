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

// SystemVerilog created from conv2d3x3_B5_merge
// SystemVerilog created on Tue May 30 12:30:48 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2d3x3_B5_merge (
    input wire [0:0] in_c0_exe1081_0,
    input wire [0:0] in_c0_exe1081_1,
    input wire [63:0] in_c0_exe111_0,
    input wire [63:0] in_c0_exe111_1,
    input wire [31:0] in_c0_exe1186151_0,
    input wire [31:0] in_c0_exe1186151_1,
    input wire [0:0] in_c0_exe1190_0,
    input wire [0:0] in_c0_exe1190_1,
    input wire [31:0] in_c0_exe1195167_0,
    input wire [31:0] in_c0_exe1195167_1,
    input wire [31:0] in_c0_exe12101_0,
    input wire [31:0] in_c0_exe12101_1,
    input wire [0:0] in_c0_exe13111_0,
    input wire [0:0] in_c0_exe13111_1,
    input wire [0:0] in_c0_exe14120_0,
    input wire [0:0] in_c0_exe14120_1,
    input wire [0:0] in_c0_exe15130_0,
    input wire [0:0] in_c0_exe15130_1,
    input wire [0:0] in_c0_exe16140_0,
    input wire [0:0] in_c0_exe16140_1,
    input wire [31:0] in_c0_exe2196168_0,
    input wire [31:0] in_c0_exe2196168_1,
    input wire [63:0] in_c0_exe322_0,
    input wire [63:0] in_c0_exe322_1,
    input wire [0:0] in_c0_exe431_0,
    input wire [0:0] in_c0_exe431_1,
    input wire [31:0] in_c0_exe542_0,
    input wire [31:0] in_c0_exe542_1,
    input wire [31:0] in_c0_exe649_0,
    input wire [31:0] in_c0_exe649_1,
    input wire [0:0] in_c0_exe752_0,
    input wire [0:0] in_c0_exe752_1,
    input wire [0:0] in_c0_exe861_0,
    input wire [0:0] in_c0_exe861_1,
    input wire [31:0] in_c0_exe971_0,
    input wire [31:0] in_c0_exe971_1,
    input wire [31:0] in_j_062149_0,
    input wire [31:0] in_j_062149_1,
    input wire [31:0] in_k_059163_0,
    input wire [31:0] in_k_059163_1,
    input wire [31:0] in_m_053_0,
    input wire [31:0] in_m_053_1,
    input wire [31:0] in_mul46_add4172_0,
    input wire [31:0] in_mul46_add4172_1,
    input wire [0:0] in_stall_in,
    input wire [31:0] in_tmp_252_0,
    input wire [31:0] in_tmp_252_1,
    input wire [31:0] in_unnamed_conv2d3x37_0,
    input wire [31:0] in_unnamed_conv2d3x37_1,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [0:0] out_c0_exe1081,
    output wire [63:0] out_c0_exe111,
    output wire [31:0] out_c0_exe1186151,
    output wire [0:0] out_c0_exe1190,
    output wire [31:0] out_c0_exe1195167,
    output wire [31:0] out_c0_exe12101,
    output wire [0:0] out_c0_exe13111,
    output wire [0:0] out_c0_exe14120,
    output wire [0:0] out_c0_exe15130,
    output wire [0:0] out_c0_exe16140,
    output wire [31:0] out_c0_exe2196168,
    output wire [63:0] out_c0_exe322,
    output wire [0:0] out_c0_exe431,
    output wire [31:0] out_c0_exe542,
    output wire [31:0] out_c0_exe649,
    output wire [0:0] out_c0_exe752,
    output wire [0:0] out_c0_exe861,
    output wire [31:0] out_c0_exe971,
    output wire [31:0] out_j_062149,
    output wire [31:0] out_k_059163,
    output wire [31:0] out_m_053,
    output wire [31:0] out_mul46_add4172,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [31:0] out_tmp_252,
    output wire [31:0] out_unnamed_conv2d3x37,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    wire [0:0] c0_exe1081_mux_s;
    reg [0:0] c0_exe1081_mux_q;
    wire [0:0] c0_exe111_mux_s;
    reg [63:0] c0_exe111_mux_q;
    wire [0:0] c0_exe1186151_mux_s;
    reg [31:0] c0_exe1186151_mux_q;
    wire [0:0] c0_exe1190_mux_s;
    reg [0:0] c0_exe1190_mux_q;
    wire [0:0] c0_exe1195167_mux_s;
    reg [31:0] c0_exe1195167_mux_q;
    wire [0:0] c0_exe12101_mux_s;
    reg [31:0] c0_exe12101_mux_q;
    wire [0:0] c0_exe13111_mux_s;
    reg [0:0] c0_exe13111_mux_q;
    wire [0:0] c0_exe14120_mux_s;
    reg [0:0] c0_exe14120_mux_q;
    wire [0:0] c0_exe15130_mux_s;
    reg [0:0] c0_exe15130_mux_q;
    wire [0:0] c0_exe16140_mux_s;
    reg [0:0] c0_exe16140_mux_q;
    wire [0:0] c0_exe2196168_mux_s;
    reg [31:0] c0_exe2196168_mux_q;
    wire [0:0] c0_exe322_mux_s;
    reg [63:0] c0_exe322_mux_q;
    wire [0:0] c0_exe431_mux_s;
    reg [0:0] c0_exe431_mux_q;
    wire [0:0] c0_exe542_mux_s;
    reg [31:0] c0_exe542_mux_q;
    wire [0:0] c0_exe649_mux_s;
    reg [31:0] c0_exe649_mux_q;
    wire [0:0] c0_exe752_mux_s;
    reg [0:0] c0_exe752_mux_q;
    wire [0:0] c0_exe861_mux_s;
    reg [0:0] c0_exe861_mux_q;
    wire [0:0] c0_exe971_mux_s;
    reg [31:0] c0_exe971_mux_q;
    wire [0:0] j_062149_mux_s;
    reg [31:0] j_062149_mux_q;
    wire [0:0] k_059163_mux_s;
    reg [31:0] k_059163_mux_q;
    wire [0:0] m_053_mux_s;
    reg [31:0] m_053_mux_q;
    wire [0:0] mul46_add4172_mux_s;
    reg [31:0] mul46_add4172_mux_q;
    wire [0:0] stall_out_q;
    wire [0:0] stall_out_1_specific_q;
    wire [0:0] tmp_252_mux_s;
    reg [31:0] tmp_252_mux_q;
    wire [0:0] unnamed_conv2d3x37_mux_s;
    reg [31:0] unnamed_conv2d3x37_mux_q;
    wire [0:0] valid_or_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // c0_exe1081_mux(MUX,2)
    assign c0_exe1081_mux_s = in_valid_in_0;
    always @(c0_exe1081_mux_s or in_c0_exe1081_1 or in_c0_exe1081_0)
    begin
        unique case (c0_exe1081_mux_s)
            1'b0 : c0_exe1081_mux_q = in_c0_exe1081_1;
            1'b1 : c0_exe1081_mux_q = in_c0_exe1081_0;
            default : c0_exe1081_mux_q = 1'b0;
        endcase
    end

    // out_c0_exe1081(GPOUT,75)
    assign out_c0_exe1081 = c0_exe1081_mux_q;

    // c0_exe111_mux(MUX,3)
    assign c0_exe111_mux_s = in_valid_in_0;
    always @(c0_exe111_mux_s or in_c0_exe111_1 or in_c0_exe111_0)
    begin
        unique case (c0_exe111_mux_s)
            1'b0 : c0_exe111_mux_q = in_c0_exe111_1;
            1'b1 : c0_exe111_mux_q = in_c0_exe111_0;
            default : c0_exe111_mux_q = 64'b0;
        endcase
    end

    // out_c0_exe111(GPOUT,76)
    assign out_c0_exe111 = c0_exe111_mux_q;

    // c0_exe1186151_mux(MUX,4)
    assign c0_exe1186151_mux_s = in_valid_in_0;
    always @(c0_exe1186151_mux_s or in_c0_exe1186151_1 or in_c0_exe1186151_0)
    begin
        unique case (c0_exe1186151_mux_s)
            1'b0 : c0_exe1186151_mux_q = in_c0_exe1186151_1;
            1'b1 : c0_exe1186151_mux_q = in_c0_exe1186151_0;
            default : c0_exe1186151_mux_q = 32'b0;
        endcase
    end

    // out_c0_exe1186151(GPOUT,77)
    assign out_c0_exe1186151 = c0_exe1186151_mux_q;

    // c0_exe1190_mux(MUX,5)
    assign c0_exe1190_mux_s = in_valid_in_0;
    always @(c0_exe1190_mux_s or in_c0_exe1190_1 or in_c0_exe1190_0)
    begin
        unique case (c0_exe1190_mux_s)
            1'b0 : c0_exe1190_mux_q = in_c0_exe1190_1;
            1'b1 : c0_exe1190_mux_q = in_c0_exe1190_0;
            default : c0_exe1190_mux_q = 1'b0;
        endcase
    end

    // out_c0_exe1190(GPOUT,78)
    assign out_c0_exe1190 = c0_exe1190_mux_q;

    // c0_exe1195167_mux(MUX,6)
    assign c0_exe1195167_mux_s = in_valid_in_0;
    always @(c0_exe1195167_mux_s or in_c0_exe1195167_1 or in_c0_exe1195167_0)
    begin
        unique case (c0_exe1195167_mux_s)
            1'b0 : c0_exe1195167_mux_q = in_c0_exe1195167_1;
            1'b1 : c0_exe1195167_mux_q = in_c0_exe1195167_0;
            default : c0_exe1195167_mux_q = 32'b0;
        endcase
    end

    // out_c0_exe1195167(GPOUT,79)
    assign out_c0_exe1195167 = c0_exe1195167_mux_q;

    // c0_exe12101_mux(MUX,7)
    assign c0_exe12101_mux_s = in_valid_in_0;
    always @(c0_exe12101_mux_s or in_c0_exe12101_1 or in_c0_exe12101_0)
    begin
        unique case (c0_exe12101_mux_s)
            1'b0 : c0_exe12101_mux_q = in_c0_exe12101_1;
            1'b1 : c0_exe12101_mux_q = in_c0_exe12101_0;
            default : c0_exe12101_mux_q = 32'b0;
        endcase
    end

    // out_c0_exe12101(GPOUT,80)
    assign out_c0_exe12101 = c0_exe12101_mux_q;

    // c0_exe13111_mux(MUX,8)
    assign c0_exe13111_mux_s = in_valid_in_0;
    always @(c0_exe13111_mux_s or in_c0_exe13111_1 or in_c0_exe13111_0)
    begin
        unique case (c0_exe13111_mux_s)
            1'b0 : c0_exe13111_mux_q = in_c0_exe13111_1;
            1'b1 : c0_exe13111_mux_q = in_c0_exe13111_0;
            default : c0_exe13111_mux_q = 1'b0;
        endcase
    end

    // out_c0_exe13111(GPOUT,81)
    assign out_c0_exe13111 = c0_exe13111_mux_q;

    // c0_exe14120_mux(MUX,9)
    assign c0_exe14120_mux_s = in_valid_in_0;
    always @(c0_exe14120_mux_s or in_c0_exe14120_1 or in_c0_exe14120_0)
    begin
        unique case (c0_exe14120_mux_s)
            1'b0 : c0_exe14120_mux_q = in_c0_exe14120_1;
            1'b1 : c0_exe14120_mux_q = in_c0_exe14120_0;
            default : c0_exe14120_mux_q = 1'b0;
        endcase
    end

    // out_c0_exe14120(GPOUT,82)
    assign out_c0_exe14120 = c0_exe14120_mux_q;

    // c0_exe15130_mux(MUX,10)
    assign c0_exe15130_mux_s = in_valid_in_0;
    always @(c0_exe15130_mux_s or in_c0_exe15130_1 or in_c0_exe15130_0)
    begin
        unique case (c0_exe15130_mux_s)
            1'b0 : c0_exe15130_mux_q = in_c0_exe15130_1;
            1'b1 : c0_exe15130_mux_q = in_c0_exe15130_0;
            default : c0_exe15130_mux_q = 1'b0;
        endcase
    end

    // out_c0_exe15130(GPOUT,83)
    assign out_c0_exe15130 = c0_exe15130_mux_q;

    // c0_exe16140_mux(MUX,11)
    assign c0_exe16140_mux_s = in_valid_in_0;
    always @(c0_exe16140_mux_s or in_c0_exe16140_1 or in_c0_exe16140_0)
    begin
        unique case (c0_exe16140_mux_s)
            1'b0 : c0_exe16140_mux_q = in_c0_exe16140_1;
            1'b1 : c0_exe16140_mux_q = in_c0_exe16140_0;
            default : c0_exe16140_mux_q = 1'b0;
        endcase
    end

    // out_c0_exe16140(GPOUT,84)
    assign out_c0_exe16140 = c0_exe16140_mux_q;

    // c0_exe2196168_mux(MUX,12)
    assign c0_exe2196168_mux_s = in_valid_in_0;
    always @(c0_exe2196168_mux_s or in_c0_exe2196168_1 or in_c0_exe2196168_0)
    begin
        unique case (c0_exe2196168_mux_s)
            1'b0 : c0_exe2196168_mux_q = in_c0_exe2196168_1;
            1'b1 : c0_exe2196168_mux_q = in_c0_exe2196168_0;
            default : c0_exe2196168_mux_q = 32'b0;
        endcase
    end

    // out_c0_exe2196168(GPOUT,85)
    assign out_c0_exe2196168 = c0_exe2196168_mux_q;

    // c0_exe322_mux(MUX,13)
    assign c0_exe322_mux_s = in_valid_in_0;
    always @(c0_exe322_mux_s or in_c0_exe322_1 or in_c0_exe322_0)
    begin
        unique case (c0_exe322_mux_s)
            1'b0 : c0_exe322_mux_q = in_c0_exe322_1;
            1'b1 : c0_exe322_mux_q = in_c0_exe322_0;
            default : c0_exe322_mux_q = 64'b0;
        endcase
    end

    // out_c0_exe322(GPOUT,86)
    assign out_c0_exe322 = c0_exe322_mux_q;

    // c0_exe431_mux(MUX,14)
    assign c0_exe431_mux_s = in_valid_in_0;
    always @(c0_exe431_mux_s or in_c0_exe431_1 or in_c0_exe431_0)
    begin
        unique case (c0_exe431_mux_s)
            1'b0 : c0_exe431_mux_q = in_c0_exe431_1;
            1'b1 : c0_exe431_mux_q = in_c0_exe431_0;
            default : c0_exe431_mux_q = 1'b0;
        endcase
    end

    // out_c0_exe431(GPOUT,87)
    assign out_c0_exe431 = c0_exe431_mux_q;

    // c0_exe542_mux(MUX,15)
    assign c0_exe542_mux_s = in_valid_in_0;
    always @(c0_exe542_mux_s or in_c0_exe542_1 or in_c0_exe542_0)
    begin
        unique case (c0_exe542_mux_s)
            1'b0 : c0_exe542_mux_q = in_c0_exe542_1;
            1'b1 : c0_exe542_mux_q = in_c0_exe542_0;
            default : c0_exe542_mux_q = 32'b0;
        endcase
    end

    // out_c0_exe542(GPOUT,88)
    assign out_c0_exe542 = c0_exe542_mux_q;

    // c0_exe649_mux(MUX,16)
    assign c0_exe649_mux_s = in_valid_in_0;
    always @(c0_exe649_mux_s or in_c0_exe649_1 or in_c0_exe649_0)
    begin
        unique case (c0_exe649_mux_s)
            1'b0 : c0_exe649_mux_q = in_c0_exe649_1;
            1'b1 : c0_exe649_mux_q = in_c0_exe649_0;
            default : c0_exe649_mux_q = 32'b0;
        endcase
    end

    // out_c0_exe649(GPOUT,89)
    assign out_c0_exe649 = c0_exe649_mux_q;

    // c0_exe752_mux(MUX,17)
    assign c0_exe752_mux_s = in_valid_in_0;
    always @(c0_exe752_mux_s or in_c0_exe752_1 or in_c0_exe752_0)
    begin
        unique case (c0_exe752_mux_s)
            1'b0 : c0_exe752_mux_q = in_c0_exe752_1;
            1'b1 : c0_exe752_mux_q = in_c0_exe752_0;
            default : c0_exe752_mux_q = 1'b0;
        endcase
    end

    // out_c0_exe752(GPOUT,90)
    assign out_c0_exe752 = c0_exe752_mux_q;

    // c0_exe861_mux(MUX,18)
    assign c0_exe861_mux_s = in_valid_in_0;
    always @(c0_exe861_mux_s or in_c0_exe861_1 or in_c0_exe861_0)
    begin
        unique case (c0_exe861_mux_s)
            1'b0 : c0_exe861_mux_q = in_c0_exe861_1;
            1'b1 : c0_exe861_mux_q = in_c0_exe861_0;
            default : c0_exe861_mux_q = 1'b0;
        endcase
    end

    // out_c0_exe861(GPOUT,91)
    assign out_c0_exe861 = c0_exe861_mux_q;

    // c0_exe971_mux(MUX,19)
    assign c0_exe971_mux_s = in_valid_in_0;
    always @(c0_exe971_mux_s or in_c0_exe971_1 or in_c0_exe971_0)
    begin
        unique case (c0_exe971_mux_s)
            1'b0 : c0_exe971_mux_q = in_c0_exe971_1;
            1'b1 : c0_exe971_mux_q = in_c0_exe971_0;
            default : c0_exe971_mux_q = 32'b0;
        endcase
    end

    // out_c0_exe971(GPOUT,92)
    assign out_c0_exe971 = c0_exe971_mux_q;

    // j_062149_mux(MUX,71)
    assign j_062149_mux_s = in_valid_in_0;
    always @(j_062149_mux_s or in_j_062149_1 or in_j_062149_0)
    begin
        unique case (j_062149_mux_s)
            1'b0 : j_062149_mux_q = in_j_062149_1;
            1'b1 : j_062149_mux_q = in_j_062149_0;
            default : j_062149_mux_q = 32'b0;
        endcase
    end

    // out_j_062149(GPOUT,93)
    assign out_j_062149 = j_062149_mux_q;

    // k_059163_mux(MUX,72)
    assign k_059163_mux_s = in_valid_in_0;
    always @(k_059163_mux_s or in_k_059163_1 or in_k_059163_0)
    begin
        unique case (k_059163_mux_s)
            1'b0 : k_059163_mux_q = in_k_059163_1;
            1'b1 : k_059163_mux_q = in_k_059163_0;
            default : k_059163_mux_q = 32'b0;
        endcase
    end

    // out_k_059163(GPOUT,94)
    assign out_k_059163 = k_059163_mux_q;

    // m_053_mux(MUX,73)
    assign m_053_mux_s = in_valid_in_0;
    always @(m_053_mux_s or in_m_053_1 or in_m_053_0)
    begin
        unique case (m_053_mux_s)
            1'b0 : m_053_mux_q = in_m_053_1;
            1'b1 : m_053_mux_q = in_m_053_0;
            default : m_053_mux_q = 32'b0;
        endcase
    end

    // out_m_053(GPOUT,95)
    assign out_m_053 = m_053_mux_q;

    // mul46_add4172_mux(MUX,74)
    assign mul46_add4172_mux_s = in_valid_in_0;
    always @(mul46_add4172_mux_s or in_mul46_add4172_1 or in_mul46_add4172_0)
    begin
        unique case (mul46_add4172_mux_s)
            1'b0 : mul46_add4172_mux_q = in_mul46_add4172_1;
            1'b1 : mul46_add4172_mux_q = in_mul46_add4172_0;
            default : mul46_add4172_mux_q = 32'b0;
        endcase
    end

    // out_mul46_add4172(GPOUT,96)
    assign out_mul46_add4172 = mul46_add4172_mux_q;

    // valid_or(LOGICAL,106)
    assign valid_or_q = in_valid_in_0 | in_valid_in_1;

    // stall_out(LOGICAL,102)
    assign stall_out_q = valid_or_q & in_stall_in;

    // out_stall_out_0(GPOUT,97)
    assign out_stall_out_0 = stall_out_q;

    // stall_out_1_specific(LOGICAL,103)
    assign stall_out_1_specific_q = in_valid_in_0 | stall_out_q;

    // out_stall_out_1(GPOUT,98)
    assign out_stall_out_1 = stall_out_1_specific_q;

    // tmp_252_mux(MUX,104)
    assign tmp_252_mux_s = in_valid_in_0;
    always @(tmp_252_mux_s or in_tmp_252_1 or in_tmp_252_0)
    begin
        unique case (tmp_252_mux_s)
            1'b0 : tmp_252_mux_q = in_tmp_252_1;
            1'b1 : tmp_252_mux_q = in_tmp_252_0;
            default : tmp_252_mux_q = 32'b0;
        endcase
    end

    // out_tmp_252(GPOUT,99)
    assign out_tmp_252 = tmp_252_mux_q;

    // unnamed_conv2d3x37_mux(MUX,105)
    assign unnamed_conv2d3x37_mux_s = in_valid_in_0;
    always @(unnamed_conv2d3x37_mux_s or in_unnamed_conv2d3x37_1 or in_unnamed_conv2d3x37_0)
    begin
        unique case (unnamed_conv2d3x37_mux_s)
            1'b0 : unnamed_conv2d3x37_mux_q = in_unnamed_conv2d3x37_1;
            1'b1 : unnamed_conv2d3x37_mux_q = in_unnamed_conv2d3x37_0;
            default : unnamed_conv2d3x37_mux_q = 32'b0;
        endcase
    end

    // out_unnamed_conv2d3x37(GPOUT,100)
    assign out_unnamed_conv2d3x37 = unnamed_conv2d3x37_mux_q;

    // out_valid_out(GPOUT,101)
    assign out_valid_out = valid_or_q;

endmodule
