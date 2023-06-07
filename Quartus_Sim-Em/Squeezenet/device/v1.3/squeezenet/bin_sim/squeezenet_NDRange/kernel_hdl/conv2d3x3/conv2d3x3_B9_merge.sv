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

// SystemVerilog created from conv2d3x3_B9_merge
// SystemVerilog created on Tue Jun  6 18:45:14 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2d3x3_B9_merge (
    input wire [31:0] in_add48_2178_0,
    input wire [31:0] in_add48_2178_1,
    input wire [0:0] in_c0_exe1086_0,
    input wire [0:0] in_c0_exe1086_1,
    input wire [31:0] in_c0_exe1186154_0,
    input wire [31:0] in_c0_exe1186154_1,
    input wire [0:0] in_c0_exe1196_0,
    input wire [0:0] in_c0_exe1196_1,
    input wire [31:0] in_c0_exe12106_0,
    input wire [31:0] in_c0_exe12106_1,
    input wire [31:0] in_c0_exe1242177_0,
    input wire [31:0] in_c0_exe1242177_1,
    input wire [0:0] in_c0_exe13107_0,
    input wire [0:0] in_c0_exe13107_1,
    input wire [0:0] in_c0_exe14116_0,
    input wire [0:0] in_c0_exe14116_1,
    input wire [0:0] in_c0_exe15126_0,
    input wire [0:0] in_c0_exe15126_1,
    input wire [0:0] in_c0_exe16136_0,
    input wire [0:0] in_c0_exe16136_1,
    input wire [63:0] in_c0_exe17_0,
    input wire [63:0] in_c0_exe17_1,
    input wire [63:0] in_c0_exe318_0,
    input wire [63:0] in_c0_exe318_1,
    input wire [0:0] in_c0_exe427_0,
    input wire [0:0] in_c0_exe427_1,
    input wire [31:0] in_c0_exe538_0,
    input wire [31:0] in_c0_exe538_1,
    input wire [31:0] in_c0_exe645_0,
    input wire [31:0] in_c0_exe645_1,
    input wire [0:0] in_c0_exe757_0,
    input wire [0:0] in_c0_exe757_1,
    input wire [0:0] in_c0_exe866_0,
    input wire [0:0] in_c0_exe866_1,
    input wire [31:0] in_c0_exe976_0,
    input wire [31:0] in_c0_exe976_1,
    input wire [31:0] in_j_062145_0,
    input wire [31:0] in_j_062145_1,
    input wire [31:0] in_k_059159_0,
    input wire [31:0] in_k_059159_1,
    input wire [31:0] in_m_053_2_0,
    input wire [31:0] in_m_053_2_1,
    input wire [0:0] in_stall_in,
    input wire [31:0] in_tmp_252_2_0,
    input wire [31:0] in_tmp_252_2_1,
    input wire [31:0] in_unnamed_conv2d3x313_0,
    input wire [31:0] in_unnamed_conv2d3x313_1,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [31:0] out_add48_2178,
    output wire [0:0] out_c0_exe1086,
    output wire [31:0] out_c0_exe1186154,
    output wire [0:0] out_c0_exe1196,
    output wire [31:0] out_c0_exe12106,
    output wire [31:0] out_c0_exe1242177,
    output wire [0:0] out_c0_exe13107,
    output wire [0:0] out_c0_exe14116,
    output wire [0:0] out_c0_exe15126,
    output wire [0:0] out_c0_exe16136,
    output wire [63:0] out_c0_exe17,
    output wire [63:0] out_c0_exe318,
    output wire [0:0] out_c0_exe427,
    output wire [31:0] out_c0_exe538,
    output wire [31:0] out_c0_exe645,
    output wire [0:0] out_c0_exe757,
    output wire [0:0] out_c0_exe866,
    output wire [31:0] out_c0_exe976,
    output wire [31:0] out_j_062145,
    output wire [31:0] out_k_059159,
    output wire [31:0] out_m_053_2,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [31:0] out_tmp_252_2,
    output wire [31:0] out_unnamed_conv2d3x313,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    wire [0:0] add48_2178_mux_s;
    reg [31:0] add48_2178_mux_q;
    wire [0:0] c0_exe1086_mux_s;
    reg [0:0] c0_exe1086_mux_q;
    wire [0:0] c0_exe1186154_mux_s;
    reg [31:0] c0_exe1186154_mux_q;
    wire [0:0] c0_exe1196_mux_s;
    reg [0:0] c0_exe1196_mux_q;
    wire [0:0] c0_exe12106_mux_s;
    reg [31:0] c0_exe12106_mux_q;
    wire [0:0] c0_exe1242177_mux_s;
    reg [31:0] c0_exe1242177_mux_q;
    wire [0:0] c0_exe13107_mux_s;
    reg [0:0] c0_exe13107_mux_q;
    wire [0:0] c0_exe14116_mux_s;
    reg [0:0] c0_exe14116_mux_q;
    wire [0:0] c0_exe15126_mux_s;
    reg [0:0] c0_exe15126_mux_q;
    wire [0:0] c0_exe16136_mux_s;
    reg [0:0] c0_exe16136_mux_q;
    wire [0:0] c0_exe17_mux_s;
    reg [63:0] c0_exe17_mux_q;
    wire [0:0] c0_exe318_mux_s;
    reg [63:0] c0_exe318_mux_q;
    wire [0:0] c0_exe427_mux_s;
    reg [0:0] c0_exe427_mux_q;
    wire [0:0] c0_exe538_mux_s;
    reg [31:0] c0_exe538_mux_q;
    wire [0:0] c0_exe645_mux_s;
    reg [31:0] c0_exe645_mux_q;
    wire [0:0] c0_exe757_mux_s;
    reg [0:0] c0_exe757_mux_q;
    wire [0:0] c0_exe866_mux_s;
    reg [0:0] c0_exe866_mux_q;
    wire [0:0] c0_exe976_mux_s;
    reg [31:0] c0_exe976_mux_q;
    wire [0:0] j_062145_mux_s;
    reg [31:0] j_062145_mux_q;
    wire [0:0] k_059159_mux_s;
    reg [31:0] k_059159_mux_q;
    wire [0:0] m_053_2_mux_s;
    reg [31:0] m_053_2_mux_q;
    wire [0:0] stall_out_q;
    wire [0:0] stall_out_1_specific_q;
    wire [0:0] tmp_252_2_mux_s;
    reg [31:0] tmp_252_2_mux_q;
    wire [0:0] unnamed_conv2d3x313_mux_s;
    reg [31:0] unnamed_conv2d3x313_mux_q;
    wire [0:0] valid_or_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // add48_2178_mux(MUX,2)
    assign add48_2178_mux_s = in_valid_in_0;
    always @(add48_2178_mux_s or in_add48_2178_1 or in_add48_2178_0)
    begin
        unique case (add48_2178_mux_s)
            1'b0 : add48_2178_mux_q = in_add48_2178_1;
            1'b1 : add48_2178_mux_q = in_add48_2178_0;
            default : add48_2178_mux_q = 32'b0;
        endcase
    end

    // out_add48_2178(GPOUT,72)
    assign out_add48_2178 = add48_2178_mux_q;

    // c0_exe1086_mux(MUX,3)
    assign c0_exe1086_mux_s = in_valid_in_0;
    always @(c0_exe1086_mux_s or in_c0_exe1086_1 or in_c0_exe1086_0)
    begin
        unique case (c0_exe1086_mux_s)
            1'b0 : c0_exe1086_mux_q = in_c0_exe1086_1;
            1'b1 : c0_exe1086_mux_q = in_c0_exe1086_0;
            default : c0_exe1086_mux_q = 1'b0;
        endcase
    end

    // out_c0_exe1086(GPOUT,73)
    assign out_c0_exe1086 = c0_exe1086_mux_q;

    // c0_exe1186154_mux(MUX,4)
    assign c0_exe1186154_mux_s = in_valid_in_0;
    always @(c0_exe1186154_mux_s or in_c0_exe1186154_1 or in_c0_exe1186154_0)
    begin
        unique case (c0_exe1186154_mux_s)
            1'b0 : c0_exe1186154_mux_q = in_c0_exe1186154_1;
            1'b1 : c0_exe1186154_mux_q = in_c0_exe1186154_0;
            default : c0_exe1186154_mux_q = 32'b0;
        endcase
    end

    // out_c0_exe1186154(GPOUT,74)
    assign out_c0_exe1186154 = c0_exe1186154_mux_q;

    // c0_exe1196_mux(MUX,5)
    assign c0_exe1196_mux_s = in_valid_in_0;
    always @(c0_exe1196_mux_s or in_c0_exe1196_1 or in_c0_exe1196_0)
    begin
        unique case (c0_exe1196_mux_s)
            1'b0 : c0_exe1196_mux_q = in_c0_exe1196_1;
            1'b1 : c0_exe1196_mux_q = in_c0_exe1196_0;
            default : c0_exe1196_mux_q = 1'b0;
        endcase
    end

    // out_c0_exe1196(GPOUT,75)
    assign out_c0_exe1196 = c0_exe1196_mux_q;

    // c0_exe12106_mux(MUX,6)
    assign c0_exe12106_mux_s = in_valid_in_0;
    always @(c0_exe12106_mux_s or in_c0_exe12106_1 or in_c0_exe12106_0)
    begin
        unique case (c0_exe12106_mux_s)
            1'b0 : c0_exe12106_mux_q = in_c0_exe12106_1;
            1'b1 : c0_exe12106_mux_q = in_c0_exe12106_0;
            default : c0_exe12106_mux_q = 32'b0;
        endcase
    end

    // out_c0_exe12106(GPOUT,76)
    assign out_c0_exe12106 = c0_exe12106_mux_q;

    // c0_exe1242177_mux(MUX,7)
    assign c0_exe1242177_mux_s = in_valid_in_0;
    always @(c0_exe1242177_mux_s or in_c0_exe1242177_1 or in_c0_exe1242177_0)
    begin
        unique case (c0_exe1242177_mux_s)
            1'b0 : c0_exe1242177_mux_q = in_c0_exe1242177_1;
            1'b1 : c0_exe1242177_mux_q = in_c0_exe1242177_0;
            default : c0_exe1242177_mux_q = 32'b0;
        endcase
    end

    // out_c0_exe1242177(GPOUT,77)
    assign out_c0_exe1242177 = c0_exe1242177_mux_q;

    // c0_exe13107_mux(MUX,8)
    assign c0_exe13107_mux_s = in_valid_in_0;
    always @(c0_exe13107_mux_s or in_c0_exe13107_1 or in_c0_exe13107_0)
    begin
        unique case (c0_exe13107_mux_s)
            1'b0 : c0_exe13107_mux_q = in_c0_exe13107_1;
            1'b1 : c0_exe13107_mux_q = in_c0_exe13107_0;
            default : c0_exe13107_mux_q = 1'b0;
        endcase
    end

    // out_c0_exe13107(GPOUT,78)
    assign out_c0_exe13107 = c0_exe13107_mux_q;

    // c0_exe14116_mux(MUX,9)
    assign c0_exe14116_mux_s = in_valid_in_0;
    always @(c0_exe14116_mux_s or in_c0_exe14116_1 or in_c0_exe14116_0)
    begin
        unique case (c0_exe14116_mux_s)
            1'b0 : c0_exe14116_mux_q = in_c0_exe14116_1;
            1'b1 : c0_exe14116_mux_q = in_c0_exe14116_0;
            default : c0_exe14116_mux_q = 1'b0;
        endcase
    end

    // out_c0_exe14116(GPOUT,79)
    assign out_c0_exe14116 = c0_exe14116_mux_q;

    // c0_exe15126_mux(MUX,10)
    assign c0_exe15126_mux_s = in_valid_in_0;
    always @(c0_exe15126_mux_s or in_c0_exe15126_1 or in_c0_exe15126_0)
    begin
        unique case (c0_exe15126_mux_s)
            1'b0 : c0_exe15126_mux_q = in_c0_exe15126_1;
            1'b1 : c0_exe15126_mux_q = in_c0_exe15126_0;
            default : c0_exe15126_mux_q = 1'b0;
        endcase
    end

    // out_c0_exe15126(GPOUT,80)
    assign out_c0_exe15126 = c0_exe15126_mux_q;

    // c0_exe16136_mux(MUX,11)
    assign c0_exe16136_mux_s = in_valid_in_0;
    always @(c0_exe16136_mux_s or in_c0_exe16136_1 or in_c0_exe16136_0)
    begin
        unique case (c0_exe16136_mux_s)
            1'b0 : c0_exe16136_mux_q = in_c0_exe16136_1;
            1'b1 : c0_exe16136_mux_q = in_c0_exe16136_0;
            default : c0_exe16136_mux_q = 1'b0;
        endcase
    end

    // out_c0_exe16136(GPOUT,81)
    assign out_c0_exe16136 = c0_exe16136_mux_q;

    // c0_exe17_mux(MUX,12)
    assign c0_exe17_mux_s = in_valid_in_0;
    always @(c0_exe17_mux_s or in_c0_exe17_1 or in_c0_exe17_0)
    begin
        unique case (c0_exe17_mux_s)
            1'b0 : c0_exe17_mux_q = in_c0_exe17_1;
            1'b1 : c0_exe17_mux_q = in_c0_exe17_0;
            default : c0_exe17_mux_q = 64'b0;
        endcase
    end

    // out_c0_exe17(GPOUT,82)
    assign out_c0_exe17 = c0_exe17_mux_q;

    // c0_exe318_mux(MUX,13)
    assign c0_exe318_mux_s = in_valid_in_0;
    always @(c0_exe318_mux_s or in_c0_exe318_1 or in_c0_exe318_0)
    begin
        unique case (c0_exe318_mux_s)
            1'b0 : c0_exe318_mux_q = in_c0_exe318_1;
            1'b1 : c0_exe318_mux_q = in_c0_exe318_0;
            default : c0_exe318_mux_q = 64'b0;
        endcase
    end

    // out_c0_exe318(GPOUT,83)
    assign out_c0_exe318 = c0_exe318_mux_q;

    // c0_exe427_mux(MUX,14)
    assign c0_exe427_mux_s = in_valid_in_0;
    always @(c0_exe427_mux_s or in_c0_exe427_1 or in_c0_exe427_0)
    begin
        unique case (c0_exe427_mux_s)
            1'b0 : c0_exe427_mux_q = in_c0_exe427_1;
            1'b1 : c0_exe427_mux_q = in_c0_exe427_0;
            default : c0_exe427_mux_q = 1'b0;
        endcase
    end

    // out_c0_exe427(GPOUT,84)
    assign out_c0_exe427 = c0_exe427_mux_q;

    // c0_exe538_mux(MUX,15)
    assign c0_exe538_mux_s = in_valid_in_0;
    always @(c0_exe538_mux_s or in_c0_exe538_1 or in_c0_exe538_0)
    begin
        unique case (c0_exe538_mux_s)
            1'b0 : c0_exe538_mux_q = in_c0_exe538_1;
            1'b1 : c0_exe538_mux_q = in_c0_exe538_0;
            default : c0_exe538_mux_q = 32'b0;
        endcase
    end

    // out_c0_exe538(GPOUT,85)
    assign out_c0_exe538 = c0_exe538_mux_q;

    // c0_exe645_mux(MUX,16)
    assign c0_exe645_mux_s = in_valid_in_0;
    always @(c0_exe645_mux_s or in_c0_exe645_1 or in_c0_exe645_0)
    begin
        unique case (c0_exe645_mux_s)
            1'b0 : c0_exe645_mux_q = in_c0_exe645_1;
            1'b1 : c0_exe645_mux_q = in_c0_exe645_0;
            default : c0_exe645_mux_q = 32'b0;
        endcase
    end

    // out_c0_exe645(GPOUT,86)
    assign out_c0_exe645 = c0_exe645_mux_q;

    // c0_exe757_mux(MUX,17)
    assign c0_exe757_mux_s = in_valid_in_0;
    always @(c0_exe757_mux_s or in_c0_exe757_1 or in_c0_exe757_0)
    begin
        unique case (c0_exe757_mux_s)
            1'b0 : c0_exe757_mux_q = in_c0_exe757_1;
            1'b1 : c0_exe757_mux_q = in_c0_exe757_0;
            default : c0_exe757_mux_q = 1'b0;
        endcase
    end

    // out_c0_exe757(GPOUT,87)
    assign out_c0_exe757 = c0_exe757_mux_q;

    // c0_exe866_mux(MUX,18)
    assign c0_exe866_mux_s = in_valid_in_0;
    always @(c0_exe866_mux_s or in_c0_exe866_1 or in_c0_exe866_0)
    begin
        unique case (c0_exe866_mux_s)
            1'b0 : c0_exe866_mux_q = in_c0_exe866_1;
            1'b1 : c0_exe866_mux_q = in_c0_exe866_0;
            default : c0_exe866_mux_q = 1'b0;
        endcase
    end

    // out_c0_exe866(GPOUT,88)
    assign out_c0_exe866 = c0_exe866_mux_q;

    // c0_exe976_mux(MUX,19)
    assign c0_exe976_mux_s = in_valid_in_0;
    always @(c0_exe976_mux_s or in_c0_exe976_1 or in_c0_exe976_0)
    begin
        unique case (c0_exe976_mux_s)
            1'b0 : c0_exe976_mux_q = in_c0_exe976_1;
            1'b1 : c0_exe976_mux_q = in_c0_exe976_0;
            default : c0_exe976_mux_q = 32'b0;
        endcase
    end

    // out_c0_exe976(GPOUT,89)
    assign out_c0_exe976 = c0_exe976_mux_q;

    // j_062145_mux(MUX,69)
    assign j_062145_mux_s = in_valid_in_0;
    always @(j_062145_mux_s or in_j_062145_1 or in_j_062145_0)
    begin
        unique case (j_062145_mux_s)
            1'b0 : j_062145_mux_q = in_j_062145_1;
            1'b1 : j_062145_mux_q = in_j_062145_0;
            default : j_062145_mux_q = 32'b0;
        endcase
    end

    // out_j_062145(GPOUT,90)
    assign out_j_062145 = j_062145_mux_q;

    // k_059159_mux(MUX,70)
    assign k_059159_mux_s = in_valid_in_0;
    always @(k_059159_mux_s or in_k_059159_1 or in_k_059159_0)
    begin
        unique case (k_059159_mux_s)
            1'b0 : k_059159_mux_q = in_k_059159_1;
            1'b1 : k_059159_mux_q = in_k_059159_0;
            default : k_059159_mux_q = 32'b0;
        endcase
    end

    // out_k_059159(GPOUT,91)
    assign out_k_059159 = k_059159_mux_q;

    // m_053_2_mux(MUX,71)
    assign m_053_2_mux_s = in_valid_in_0;
    always @(m_053_2_mux_s or in_m_053_2_1 or in_m_053_2_0)
    begin
        unique case (m_053_2_mux_s)
            1'b0 : m_053_2_mux_q = in_m_053_2_1;
            1'b1 : m_053_2_mux_q = in_m_053_2_0;
            default : m_053_2_mux_q = 32'b0;
        endcase
    end

    // out_m_053_2(GPOUT,92)
    assign out_m_053_2 = m_053_2_mux_q;

    // valid_or(LOGICAL,102)
    assign valid_or_q = in_valid_in_0 | in_valid_in_1;

    // stall_out(LOGICAL,98)
    assign stall_out_q = valid_or_q & in_stall_in;

    // out_stall_out_0(GPOUT,93)
    assign out_stall_out_0 = stall_out_q;

    // stall_out_1_specific(LOGICAL,99)
    assign stall_out_1_specific_q = in_valid_in_0 | stall_out_q;

    // out_stall_out_1(GPOUT,94)
    assign out_stall_out_1 = stall_out_1_specific_q;

    // tmp_252_2_mux(MUX,100)
    assign tmp_252_2_mux_s = in_valid_in_0;
    always @(tmp_252_2_mux_s or in_tmp_252_2_1 or in_tmp_252_2_0)
    begin
        unique case (tmp_252_2_mux_s)
            1'b0 : tmp_252_2_mux_q = in_tmp_252_2_1;
            1'b1 : tmp_252_2_mux_q = in_tmp_252_2_0;
            default : tmp_252_2_mux_q = 32'b0;
        endcase
    end

    // out_tmp_252_2(GPOUT,95)
    assign out_tmp_252_2 = tmp_252_2_mux_q;

    // unnamed_conv2d3x313_mux(MUX,101)
    assign unnamed_conv2d3x313_mux_s = in_valid_in_0;
    always @(unnamed_conv2d3x313_mux_s or in_unnamed_conv2d3x313_1 or in_unnamed_conv2d3x313_0)
    begin
        unique case (unnamed_conv2d3x313_mux_s)
            1'b0 : unnamed_conv2d3x313_mux_q = in_unnamed_conv2d3x313_1;
            1'b1 : unnamed_conv2d3x313_mux_q = in_unnamed_conv2d3x313_0;
            default : unnamed_conv2d3x313_mux_q = 32'b0;
        endcase
    end

    // out_unnamed_conv2d3x313(GPOUT,96)
    assign out_unnamed_conv2d3x313 = unnamed_conv2d3x313_mux_q;

    // out_valid_out(GPOUT,97)
    assign out_valid_out = valid_or_q;

endmodule
