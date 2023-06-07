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

// SystemVerilog created from conv2d3x3_B7_merge
// SystemVerilog created on Tue Jun  6 18:45:14 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2d3x3_B7_merge (
    input wire [31:0] in_add48_1_le175_0,
    input wire [31:0] in_add48_1_le175_1,
    input wire [0:0] in_c0_exe1079_0,
    input wire [0:0] in_c0_exe1079_1,
    input wire [31:0] in_c0_exe1186156_0,
    input wire [31:0] in_c0_exe1186156_1,
    input wire [0:0] in_c0_exe1188_0,
    input wire [0:0] in_c0_exe1188_1,
    input wire [31:0] in_c0_exe1195165_0,
    input wire [31:0] in_c0_exe1195165_1,
    input wire [31:0] in_c0_exe1222174_0,
    input wire [31:0] in_c0_exe1222174_1,
    input wire [31:0] in_c0_exe1299_0,
    input wire [31:0] in_c0_exe1299_1,
    input wire [0:0] in_c0_exe13109_0,
    input wire [0:0] in_c0_exe13109_1,
    input wire [0:0] in_c0_exe14118_0,
    input wire [0:0] in_c0_exe14118_1,
    input wire [0:0] in_c0_exe15128_0,
    input wire [0:0] in_c0_exe15128_1,
    input wire [0:0] in_c0_exe16138_0,
    input wire [0:0] in_c0_exe16138_1,
    input wire [63:0] in_c0_exe19_0,
    input wire [63:0] in_c0_exe19_1,
    input wire [63:0] in_c0_exe320_0,
    input wire [63:0] in_c0_exe320_1,
    input wire [0:0] in_c0_exe429_0,
    input wire [0:0] in_c0_exe429_1,
    input wire [31:0] in_c0_exe540_0,
    input wire [31:0] in_c0_exe540_1,
    input wire [31:0] in_c0_exe647_0,
    input wire [31:0] in_c0_exe647_1,
    input wire [0:0] in_c0_exe759_0,
    input wire [0:0] in_c0_exe759_1,
    input wire [0:0] in_c0_exe868_0,
    input wire [0:0] in_c0_exe868_1,
    input wire [31:0] in_c0_exe978_0,
    input wire [31:0] in_c0_exe978_1,
    input wire [31:0] in_j_062147_0,
    input wire [31:0] in_j_062147_1,
    input wire [31:0] in_k_059161_0,
    input wire [31:0] in_k_059161_1,
    input wire [31:0] in_m_053_1_0,
    input wire [31:0] in_m_053_1_1,
    input wire [31:0] in_mul46_add4170_0,
    input wire [31:0] in_mul46_add4170_1,
    input wire [0:0] in_stall_in,
    input wire [31:0] in_tmp_252_1_0,
    input wire [31:0] in_tmp_252_1_1,
    input wire [31:0] in_unnamed_conv2d3x310_0,
    input wire [31:0] in_unnamed_conv2d3x310_1,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [31:0] out_add48_1_le175,
    output wire [0:0] out_c0_exe1079,
    output wire [31:0] out_c0_exe1186156,
    output wire [0:0] out_c0_exe1188,
    output wire [31:0] out_c0_exe1195165,
    output wire [31:0] out_c0_exe1222174,
    output wire [31:0] out_c0_exe1299,
    output wire [0:0] out_c0_exe13109,
    output wire [0:0] out_c0_exe14118,
    output wire [0:0] out_c0_exe15128,
    output wire [0:0] out_c0_exe16138,
    output wire [63:0] out_c0_exe19,
    output wire [63:0] out_c0_exe320,
    output wire [0:0] out_c0_exe429,
    output wire [31:0] out_c0_exe540,
    output wire [31:0] out_c0_exe647,
    output wire [0:0] out_c0_exe759,
    output wire [0:0] out_c0_exe868,
    output wire [31:0] out_c0_exe978,
    output wire [31:0] out_j_062147,
    output wire [31:0] out_k_059161,
    output wire [31:0] out_m_053_1,
    output wire [31:0] out_mul46_add4170,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [31:0] out_tmp_252_1,
    output wire [31:0] out_unnamed_conv2d3x310,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    wire [0:0] add48_1_le175_mux_s;
    reg [31:0] add48_1_le175_mux_q;
    wire [0:0] c0_exe1079_mux_s;
    reg [0:0] c0_exe1079_mux_q;
    wire [0:0] c0_exe1186156_mux_s;
    reg [31:0] c0_exe1186156_mux_q;
    wire [0:0] c0_exe1188_mux_s;
    reg [0:0] c0_exe1188_mux_q;
    wire [0:0] c0_exe1195165_mux_s;
    reg [31:0] c0_exe1195165_mux_q;
    wire [0:0] c0_exe1222174_mux_s;
    reg [31:0] c0_exe1222174_mux_q;
    wire [0:0] c0_exe1299_mux_s;
    reg [31:0] c0_exe1299_mux_q;
    wire [0:0] c0_exe13109_mux_s;
    reg [0:0] c0_exe13109_mux_q;
    wire [0:0] c0_exe14118_mux_s;
    reg [0:0] c0_exe14118_mux_q;
    wire [0:0] c0_exe15128_mux_s;
    reg [0:0] c0_exe15128_mux_q;
    wire [0:0] c0_exe16138_mux_s;
    reg [0:0] c0_exe16138_mux_q;
    wire [0:0] c0_exe19_mux_s;
    reg [63:0] c0_exe19_mux_q;
    wire [0:0] c0_exe320_mux_s;
    reg [63:0] c0_exe320_mux_q;
    wire [0:0] c0_exe429_mux_s;
    reg [0:0] c0_exe429_mux_q;
    wire [0:0] c0_exe540_mux_s;
    reg [31:0] c0_exe540_mux_q;
    wire [0:0] c0_exe647_mux_s;
    reg [31:0] c0_exe647_mux_q;
    wire [0:0] c0_exe759_mux_s;
    reg [0:0] c0_exe759_mux_q;
    wire [0:0] c0_exe868_mux_s;
    reg [0:0] c0_exe868_mux_q;
    wire [0:0] c0_exe978_mux_s;
    reg [31:0] c0_exe978_mux_q;
    wire [0:0] j_062147_mux_s;
    reg [31:0] j_062147_mux_q;
    wire [0:0] k_059161_mux_s;
    reg [31:0] k_059161_mux_q;
    wire [0:0] m_053_1_mux_s;
    reg [31:0] m_053_1_mux_q;
    wire [0:0] mul46_add4170_mux_s;
    reg [31:0] mul46_add4170_mux_q;
    wire [0:0] stall_out_q;
    wire [0:0] stall_out_1_specific_q;
    wire [0:0] tmp_252_1_mux_s;
    reg [31:0] tmp_252_1_mux_q;
    wire [0:0] unnamed_conv2d3x310_mux_s;
    reg [31:0] unnamed_conv2d3x310_mux_q;
    wire [0:0] valid_or_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // add48_1_le175_mux(MUX,2)
    assign add48_1_le175_mux_s = in_valid_in_0;
    always @(add48_1_le175_mux_s or in_add48_1_le175_1 or in_add48_1_le175_0)
    begin
        unique case (add48_1_le175_mux_s)
            1'b0 : add48_1_le175_mux_q = in_add48_1_le175_1;
            1'b1 : add48_1_le175_mux_q = in_add48_1_le175_0;
            default : add48_1_le175_mux_q = 32'b0;
        endcase
    end

    // out_add48_1_le175(GPOUT,78)
    assign out_add48_1_le175 = add48_1_le175_mux_q;

    // c0_exe1079_mux(MUX,3)
    assign c0_exe1079_mux_s = in_valid_in_0;
    always @(c0_exe1079_mux_s or in_c0_exe1079_1 or in_c0_exe1079_0)
    begin
        unique case (c0_exe1079_mux_s)
            1'b0 : c0_exe1079_mux_q = in_c0_exe1079_1;
            1'b1 : c0_exe1079_mux_q = in_c0_exe1079_0;
            default : c0_exe1079_mux_q = 1'b0;
        endcase
    end

    // out_c0_exe1079(GPOUT,79)
    assign out_c0_exe1079 = c0_exe1079_mux_q;

    // c0_exe1186156_mux(MUX,4)
    assign c0_exe1186156_mux_s = in_valid_in_0;
    always @(c0_exe1186156_mux_s or in_c0_exe1186156_1 or in_c0_exe1186156_0)
    begin
        unique case (c0_exe1186156_mux_s)
            1'b0 : c0_exe1186156_mux_q = in_c0_exe1186156_1;
            1'b1 : c0_exe1186156_mux_q = in_c0_exe1186156_0;
            default : c0_exe1186156_mux_q = 32'b0;
        endcase
    end

    // out_c0_exe1186156(GPOUT,80)
    assign out_c0_exe1186156 = c0_exe1186156_mux_q;

    // c0_exe1188_mux(MUX,5)
    assign c0_exe1188_mux_s = in_valid_in_0;
    always @(c0_exe1188_mux_s or in_c0_exe1188_1 or in_c0_exe1188_0)
    begin
        unique case (c0_exe1188_mux_s)
            1'b0 : c0_exe1188_mux_q = in_c0_exe1188_1;
            1'b1 : c0_exe1188_mux_q = in_c0_exe1188_0;
            default : c0_exe1188_mux_q = 1'b0;
        endcase
    end

    // out_c0_exe1188(GPOUT,81)
    assign out_c0_exe1188 = c0_exe1188_mux_q;

    // c0_exe1195165_mux(MUX,6)
    assign c0_exe1195165_mux_s = in_valid_in_0;
    always @(c0_exe1195165_mux_s or in_c0_exe1195165_1 or in_c0_exe1195165_0)
    begin
        unique case (c0_exe1195165_mux_s)
            1'b0 : c0_exe1195165_mux_q = in_c0_exe1195165_1;
            1'b1 : c0_exe1195165_mux_q = in_c0_exe1195165_0;
            default : c0_exe1195165_mux_q = 32'b0;
        endcase
    end

    // out_c0_exe1195165(GPOUT,82)
    assign out_c0_exe1195165 = c0_exe1195165_mux_q;

    // c0_exe1222174_mux(MUX,7)
    assign c0_exe1222174_mux_s = in_valid_in_0;
    always @(c0_exe1222174_mux_s or in_c0_exe1222174_1 or in_c0_exe1222174_0)
    begin
        unique case (c0_exe1222174_mux_s)
            1'b0 : c0_exe1222174_mux_q = in_c0_exe1222174_1;
            1'b1 : c0_exe1222174_mux_q = in_c0_exe1222174_0;
            default : c0_exe1222174_mux_q = 32'b0;
        endcase
    end

    // out_c0_exe1222174(GPOUT,83)
    assign out_c0_exe1222174 = c0_exe1222174_mux_q;

    // c0_exe1299_mux(MUX,8)
    assign c0_exe1299_mux_s = in_valid_in_0;
    always @(c0_exe1299_mux_s or in_c0_exe1299_1 or in_c0_exe1299_0)
    begin
        unique case (c0_exe1299_mux_s)
            1'b0 : c0_exe1299_mux_q = in_c0_exe1299_1;
            1'b1 : c0_exe1299_mux_q = in_c0_exe1299_0;
            default : c0_exe1299_mux_q = 32'b0;
        endcase
    end

    // out_c0_exe1299(GPOUT,84)
    assign out_c0_exe1299 = c0_exe1299_mux_q;

    // c0_exe13109_mux(MUX,9)
    assign c0_exe13109_mux_s = in_valid_in_0;
    always @(c0_exe13109_mux_s or in_c0_exe13109_1 or in_c0_exe13109_0)
    begin
        unique case (c0_exe13109_mux_s)
            1'b0 : c0_exe13109_mux_q = in_c0_exe13109_1;
            1'b1 : c0_exe13109_mux_q = in_c0_exe13109_0;
            default : c0_exe13109_mux_q = 1'b0;
        endcase
    end

    // out_c0_exe13109(GPOUT,85)
    assign out_c0_exe13109 = c0_exe13109_mux_q;

    // c0_exe14118_mux(MUX,10)
    assign c0_exe14118_mux_s = in_valid_in_0;
    always @(c0_exe14118_mux_s or in_c0_exe14118_1 or in_c0_exe14118_0)
    begin
        unique case (c0_exe14118_mux_s)
            1'b0 : c0_exe14118_mux_q = in_c0_exe14118_1;
            1'b1 : c0_exe14118_mux_q = in_c0_exe14118_0;
            default : c0_exe14118_mux_q = 1'b0;
        endcase
    end

    // out_c0_exe14118(GPOUT,86)
    assign out_c0_exe14118 = c0_exe14118_mux_q;

    // c0_exe15128_mux(MUX,11)
    assign c0_exe15128_mux_s = in_valid_in_0;
    always @(c0_exe15128_mux_s or in_c0_exe15128_1 or in_c0_exe15128_0)
    begin
        unique case (c0_exe15128_mux_s)
            1'b0 : c0_exe15128_mux_q = in_c0_exe15128_1;
            1'b1 : c0_exe15128_mux_q = in_c0_exe15128_0;
            default : c0_exe15128_mux_q = 1'b0;
        endcase
    end

    // out_c0_exe15128(GPOUT,87)
    assign out_c0_exe15128 = c0_exe15128_mux_q;

    // c0_exe16138_mux(MUX,12)
    assign c0_exe16138_mux_s = in_valid_in_0;
    always @(c0_exe16138_mux_s or in_c0_exe16138_1 or in_c0_exe16138_0)
    begin
        unique case (c0_exe16138_mux_s)
            1'b0 : c0_exe16138_mux_q = in_c0_exe16138_1;
            1'b1 : c0_exe16138_mux_q = in_c0_exe16138_0;
            default : c0_exe16138_mux_q = 1'b0;
        endcase
    end

    // out_c0_exe16138(GPOUT,88)
    assign out_c0_exe16138 = c0_exe16138_mux_q;

    // c0_exe19_mux(MUX,13)
    assign c0_exe19_mux_s = in_valid_in_0;
    always @(c0_exe19_mux_s or in_c0_exe19_1 or in_c0_exe19_0)
    begin
        unique case (c0_exe19_mux_s)
            1'b0 : c0_exe19_mux_q = in_c0_exe19_1;
            1'b1 : c0_exe19_mux_q = in_c0_exe19_0;
            default : c0_exe19_mux_q = 64'b0;
        endcase
    end

    // out_c0_exe19(GPOUT,89)
    assign out_c0_exe19 = c0_exe19_mux_q;

    // c0_exe320_mux(MUX,14)
    assign c0_exe320_mux_s = in_valid_in_0;
    always @(c0_exe320_mux_s or in_c0_exe320_1 or in_c0_exe320_0)
    begin
        unique case (c0_exe320_mux_s)
            1'b0 : c0_exe320_mux_q = in_c0_exe320_1;
            1'b1 : c0_exe320_mux_q = in_c0_exe320_0;
            default : c0_exe320_mux_q = 64'b0;
        endcase
    end

    // out_c0_exe320(GPOUT,90)
    assign out_c0_exe320 = c0_exe320_mux_q;

    // c0_exe429_mux(MUX,15)
    assign c0_exe429_mux_s = in_valid_in_0;
    always @(c0_exe429_mux_s or in_c0_exe429_1 or in_c0_exe429_0)
    begin
        unique case (c0_exe429_mux_s)
            1'b0 : c0_exe429_mux_q = in_c0_exe429_1;
            1'b1 : c0_exe429_mux_q = in_c0_exe429_0;
            default : c0_exe429_mux_q = 1'b0;
        endcase
    end

    // out_c0_exe429(GPOUT,91)
    assign out_c0_exe429 = c0_exe429_mux_q;

    // c0_exe540_mux(MUX,16)
    assign c0_exe540_mux_s = in_valid_in_0;
    always @(c0_exe540_mux_s or in_c0_exe540_1 or in_c0_exe540_0)
    begin
        unique case (c0_exe540_mux_s)
            1'b0 : c0_exe540_mux_q = in_c0_exe540_1;
            1'b1 : c0_exe540_mux_q = in_c0_exe540_0;
            default : c0_exe540_mux_q = 32'b0;
        endcase
    end

    // out_c0_exe540(GPOUT,92)
    assign out_c0_exe540 = c0_exe540_mux_q;

    // c0_exe647_mux(MUX,17)
    assign c0_exe647_mux_s = in_valid_in_0;
    always @(c0_exe647_mux_s or in_c0_exe647_1 or in_c0_exe647_0)
    begin
        unique case (c0_exe647_mux_s)
            1'b0 : c0_exe647_mux_q = in_c0_exe647_1;
            1'b1 : c0_exe647_mux_q = in_c0_exe647_0;
            default : c0_exe647_mux_q = 32'b0;
        endcase
    end

    // out_c0_exe647(GPOUT,93)
    assign out_c0_exe647 = c0_exe647_mux_q;

    // c0_exe759_mux(MUX,18)
    assign c0_exe759_mux_s = in_valid_in_0;
    always @(c0_exe759_mux_s or in_c0_exe759_1 or in_c0_exe759_0)
    begin
        unique case (c0_exe759_mux_s)
            1'b0 : c0_exe759_mux_q = in_c0_exe759_1;
            1'b1 : c0_exe759_mux_q = in_c0_exe759_0;
            default : c0_exe759_mux_q = 1'b0;
        endcase
    end

    // out_c0_exe759(GPOUT,94)
    assign out_c0_exe759 = c0_exe759_mux_q;

    // c0_exe868_mux(MUX,19)
    assign c0_exe868_mux_s = in_valid_in_0;
    always @(c0_exe868_mux_s or in_c0_exe868_1 or in_c0_exe868_0)
    begin
        unique case (c0_exe868_mux_s)
            1'b0 : c0_exe868_mux_q = in_c0_exe868_1;
            1'b1 : c0_exe868_mux_q = in_c0_exe868_0;
            default : c0_exe868_mux_q = 1'b0;
        endcase
    end

    // out_c0_exe868(GPOUT,95)
    assign out_c0_exe868 = c0_exe868_mux_q;

    // c0_exe978_mux(MUX,20)
    assign c0_exe978_mux_s = in_valid_in_0;
    always @(c0_exe978_mux_s or in_c0_exe978_1 or in_c0_exe978_0)
    begin
        unique case (c0_exe978_mux_s)
            1'b0 : c0_exe978_mux_q = in_c0_exe978_1;
            1'b1 : c0_exe978_mux_q = in_c0_exe978_0;
            default : c0_exe978_mux_q = 32'b0;
        endcase
    end

    // out_c0_exe978(GPOUT,96)
    assign out_c0_exe978 = c0_exe978_mux_q;

    // j_062147_mux(MUX,74)
    assign j_062147_mux_s = in_valid_in_0;
    always @(j_062147_mux_s or in_j_062147_1 or in_j_062147_0)
    begin
        unique case (j_062147_mux_s)
            1'b0 : j_062147_mux_q = in_j_062147_1;
            1'b1 : j_062147_mux_q = in_j_062147_0;
            default : j_062147_mux_q = 32'b0;
        endcase
    end

    // out_j_062147(GPOUT,97)
    assign out_j_062147 = j_062147_mux_q;

    // k_059161_mux(MUX,75)
    assign k_059161_mux_s = in_valid_in_0;
    always @(k_059161_mux_s or in_k_059161_1 or in_k_059161_0)
    begin
        unique case (k_059161_mux_s)
            1'b0 : k_059161_mux_q = in_k_059161_1;
            1'b1 : k_059161_mux_q = in_k_059161_0;
            default : k_059161_mux_q = 32'b0;
        endcase
    end

    // out_k_059161(GPOUT,98)
    assign out_k_059161 = k_059161_mux_q;

    // m_053_1_mux(MUX,76)
    assign m_053_1_mux_s = in_valid_in_0;
    always @(m_053_1_mux_s or in_m_053_1_1 or in_m_053_1_0)
    begin
        unique case (m_053_1_mux_s)
            1'b0 : m_053_1_mux_q = in_m_053_1_1;
            1'b1 : m_053_1_mux_q = in_m_053_1_0;
            default : m_053_1_mux_q = 32'b0;
        endcase
    end

    // out_m_053_1(GPOUT,99)
    assign out_m_053_1 = m_053_1_mux_q;

    // mul46_add4170_mux(MUX,77)
    assign mul46_add4170_mux_s = in_valid_in_0;
    always @(mul46_add4170_mux_s or in_mul46_add4170_1 or in_mul46_add4170_0)
    begin
        unique case (mul46_add4170_mux_s)
            1'b0 : mul46_add4170_mux_q = in_mul46_add4170_1;
            1'b1 : mul46_add4170_mux_q = in_mul46_add4170_0;
            default : mul46_add4170_mux_q = 32'b0;
        endcase
    end

    // out_mul46_add4170(GPOUT,100)
    assign out_mul46_add4170 = mul46_add4170_mux_q;

    // valid_or(LOGICAL,110)
    assign valid_or_q = in_valid_in_0 | in_valid_in_1;

    // stall_out(LOGICAL,106)
    assign stall_out_q = valid_or_q & in_stall_in;

    // out_stall_out_0(GPOUT,101)
    assign out_stall_out_0 = stall_out_q;

    // stall_out_1_specific(LOGICAL,107)
    assign stall_out_1_specific_q = in_valid_in_0 | stall_out_q;

    // out_stall_out_1(GPOUT,102)
    assign out_stall_out_1 = stall_out_1_specific_q;

    // tmp_252_1_mux(MUX,108)
    assign tmp_252_1_mux_s = in_valid_in_0;
    always @(tmp_252_1_mux_s or in_tmp_252_1_1 or in_tmp_252_1_0)
    begin
        unique case (tmp_252_1_mux_s)
            1'b0 : tmp_252_1_mux_q = in_tmp_252_1_1;
            1'b1 : tmp_252_1_mux_q = in_tmp_252_1_0;
            default : tmp_252_1_mux_q = 32'b0;
        endcase
    end

    // out_tmp_252_1(GPOUT,103)
    assign out_tmp_252_1 = tmp_252_1_mux_q;

    // unnamed_conv2d3x310_mux(MUX,109)
    assign unnamed_conv2d3x310_mux_s = in_valid_in_0;
    always @(unnamed_conv2d3x310_mux_s or in_unnamed_conv2d3x310_1 or in_unnamed_conv2d3x310_0)
    begin
        unique case (unnamed_conv2d3x310_mux_s)
            1'b0 : unnamed_conv2d3x310_mux_q = in_unnamed_conv2d3x310_1;
            1'b1 : unnamed_conv2d3x310_mux_q = in_unnamed_conv2d3x310_0;
            default : unnamed_conv2d3x310_mux_q = 32'b0;
        endcase
    end

    // out_unnamed_conv2d3x310(GPOUT,104)
    assign out_unnamed_conv2d3x310 = unnamed_conv2d3x310_mux_q;

    // out_valid_out(GPOUT,105)
    assign out_valid_out = valid_or_q;

endmodule
