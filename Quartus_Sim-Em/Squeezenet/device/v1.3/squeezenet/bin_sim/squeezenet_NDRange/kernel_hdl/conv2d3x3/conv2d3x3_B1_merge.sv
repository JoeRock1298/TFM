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

// SystemVerilog created from conv2d3x3_B1_merge
// SystemVerilog created on Tue Jun  6 18:45:14 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2d3x3_B1_merge (
    input wire [0:0] in_c0_exe1083_0,
    input wire [0:0] in_c0_exe1083_1,
    input wire [63:0] in_c0_exe113_0,
    input wire [63:0] in_c0_exe113_1,
    input wire [0:0] in_c0_exe1192_0,
    input wire [0:0] in_c0_exe1192_1,
    input wire [31:0] in_c0_exe12103_0,
    input wire [31:0] in_c0_exe12103_1,
    input wire [0:0] in_c0_exe13113_0,
    input wire [0:0] in_c0_exe13113_1,
    input wire [0:0] in_c0_exe14122_0,
    input wire [0:0] in_c0_exe14122_1,
    input wire [0:0] in_c0_exe15132_0,
    input wire [0:0] in_c0_exe15132_1,
    input wire [0:0] in_c0_exe16142_0,
    input wire [0:0] in_c0_exe16142_1,
    input wire [63:0] in_c0_exe324_0,
    input wire [63:0] in_c0_exe324_1,
    input wire [0:0] in_c0_exe433_0,
    input wire [0:0] in_c0_exe433_1,
    input wire [31:0] in_c0_exe535_0,
    input wire [31:0] in_c0_exe535_1,
    input wire [31:0] in_c0_exe651_0,
    input wire [31:0] in_c0_exe651_1,
    input wire [0:0] in_c0_exe754_0,
    input wire [0:0] in_c0_exe754_1,
    input wire [0:0] in_c0_exe863_0,
    input wire [0:0] in_c0_exe863_1,
    input wire [31:0] in_c0_exe973_0,
    input wire [31:0] in_c0_exe973_1,
    input wire [31:0] in_j_062_0,
    input wire [31:0] in_j_062_1,
    input wire [0:0] in_stall_in,
    input wire [31:0] in_unnamed_conv2d3x32_0,
    input wire [31:0] in_unnamed_conv2d3x32_1,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [0:0] out_c0_exe1083,
    output wire [63:0] out_c0_exe113,
    output wire [0:0] out_c0_exe1192,
    output wire [31:0] out_c0_exe12103,
    output wire [0:0] out_c0_exe13113,
    output wire [0:0] out_c0_exe14122,
    output wire [0:0] out_c0_exe15132,
    output wire [0:0] out_c0_exe16142,
    output wire [63:0] out_c0_exe324,
    output wire [0:0] out_c0_exe433,
    output wire [31:0] out_c0_exe535,
    output wire [31:0] out_c0_exe651,
    output wire [0:0] out_c0_exe754,
    output wire [0:0] out_c0_exe863,
    output wire [31:0] out_c0_exe973,
    output wire [31:0] out_j_062,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [31:0] out_unnamed_conv2d3x32,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    wire [0:0] c0_exe1083_mux_s;
    reg [0:0] c0_exe1083_mux_q;
    wire [0:0] c0_exe113_mux_s;
    reg [63:0] c0_exe113_mux_q;
    wire [0:0] c0_exe1192_mux_s;
    reg [0:0] c0_exe1192_mux_q;
    wire [0:0] c0_exe12103_mux_s;
    reg [31:0] c0_exe12103_mux_q;
    wire [0:0] c0_exe13113_mux_s;
    reg [0:0] c0_exe13113_mux_q;
    wire [0:0] c0_exe14122_mux_s;
    reg [0:0] c0_exe14122_mux_q;
    wire [0:0] c0_exe15132_mux_s;
    reg [0:0] c0_exe15132_mux_q;
    wire [0:0] c0_exe16142_mux_s;
    reg [0:0] c0_exe16142_mux_q;
    wire [0:0] c0_exe324_mux_s;
    reg [63:0] c0_exe324_mux_q;
    wire [0:0] c0_exe433_mux_s;
    reg [0:0] c0_exe433_mux_q;
    wire [0:0] c0_exe535_mux_s;
    reg [31:0] c0_exe535_mux_q;
    wire [0:0] c0_exe651_mux_s;
    reg [31:0] c0_exe651_mux_q;
    wire [0:0] c0_exe754_mux_s;
    reg [0:0] c0_exe754_mux_q;
    wire [0:0] c0_exe863_mux_s;
    reg [0:0] c0_exe863_mux_q;
    wire [0:0] c0_exe973_mux_s;
    reg [31:0] c0_exe973_mux_q;
    wire [0:0] j_062_mux_s;
    reg [31:0] j_062_mux_q;
    wire [0:0] stall_out_q;
    wire [0:0] stall_out_1_specific_q;
    wire [0:0] unnamed_conv2d3x32_mux_s;
    reg [31:0] unnamed_conv2d3x32_mux_q;
    wire [0:0] valid_or_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // c0_exe1083_mux(MUX,2)
    assign c0_exe1083_mux_s = in_valid_in_0;
    always @(c0_exe1083_mux_s or in_c0_exe1083_1 or in_c0_exe1083_0)
    begin
        unique case (c0_exe1083_mux_s)
            1'b0 : c0_exe1083_mux_q = in_c0_exe1083_1;
            1'b1 : c0_exe1083_mux_q = in_c0_exe1083_0;
            default : c0_exe1083_mux_q = 1'b0;
        endcase
    end

    // out_c0_exe1083(GPOUT,55)
    assign out_c0_exe1083 = c0_exe1083_mux_q;

    // c0_exe113_mux(MUX,3)
    assign c0_exe113_mux_s = in_valid_in_0;
    always @(c0_exe113_mux_s or in_c0_exe113_1 or in_c0_exe113_0)
    begin
        unique case (c0_exe113_mux_s)
            1'b0 : c0_exe113_mux_q = in_c0_exe113_1;
            1'b1 : c0_exe113_mux_q = in_c0_exe113_0;
            default : c0_exe113_mux_q = 64'b0;
        endcase
    end

    // out_c0_exe113(GPOUT,56)
    assign out_c0_exe113 = c0_exe113_mux_q;

    // c0_exe1192_mux(MUX,4)
    assign c0_exe1192_mux_s = in_valid_in_0;
    always @(c0_exe1192_mux_s or in_c0_exe1192_1 or in_c0_exe1192_0)
    begin
        unique case (c0_exe1192_mux_s)
            1'b0 : c0_exe1192_mux_q = in_c0_exe1192_1;
            1'b1 : c0_exe1192_mux_q = in_c0_exe1192_0;
            default : c0_exe1192_mux_q = 1'b0;
        endcase
    end

    // out_c0_exe1192(GPOUT,57)
    assign out_c0_exe1192 = c0_exe1192_mux_q;

    // c0_exe12103_mux(MUX,5)
    assign c0_exe12103_mux_s = in_valid_in_0;
    always @(c0_exe12103_mux_s or in_c0_exe12103_1 or in_c0_exe12103_0)
    begin
        unique case (c0_exe12103_mux_s)
            1'b0 : c0_exe12103_mux_q = in_c0_exe12103_1;
            1'b1 : c0_exe12103_mux_q = in_c0_exe12103_0;
            default : c0_exe12103_mux_q = 32'b0;
        endcase
    end

    // out_c0_exe12103(GPOUT,58)
    assign out_c0_exe12103 = c0_exe12103_mux_q;

    // c0_exe13113_mux(MUX,6)
    assign c0_exe13113_mux_s = in_valid_in_0;
    always @(c0_exe13113_mux_s or in_c0_exe13113_1 or in_c0_exe13113_0)
    begin
        unique case (c0_exe13113_mux_s)
            1'b0 : c0_exe13113_mux_q = in_c0_exe13113_1;
            1'b1 : c0_exe13113_mux_q = in_c0_exe13113_0;
            default : c0_exe13113_mux_q = 1'b0;
        endcase
    end

    // out_c0_exe13113(GPOUT,59)
    assign out_c0_exe13113 = c0_exe13113_mux_q;

    // c0_exe14122_mux(MUX,7)
    assign c0_exe14122_mux_s = in_valid_in_0;
    always @(c0_exe14122_mux_s or in_c0_exe14122_1 or in_c0_exe14122_0)
    begin
        unique case (c0_exe14122_mux_s)
            1'b0 : c0_exe14122_mux_q = in_c0_exe14122_1;
            1'b1 : c0_exe14122_mux_q = in_c0_exe14122_0;
            default : c0_exe14122_mux_q = 1'b0;
        endcase
    end

    // out_c0_exe14122(GPOUT,60)
    assign out_c0_exe14122 = c0_exe14122_mux_q;

    // c0_exe15132_mux(MUX,8)
    assign c0_exe15132_mux_s = in_valid_in_0;
    always @(c0_exe15132_mux_s or in_c0_exe15132_1 or in_c0_exe15132_0)
    begin
        unique case (c0_exe15132_mux_s)
            1'b0 : c0_exe15132_mux_q = in_c0_exe15132_1;
            1'b1 : c0_exe15132_mux_q = in_c0_exe15132_0;
            default : c0_exe15132_mux_q = 1'b0;
        endcase
    end

    // out_c0_exe15132(GPOUT,61)
    assign out_c0_exe15132 = c0_exe15132_mux_q;

    // c0_exe16142_mux(MUX,9)
    assign c0_exe16142_mux_s = in_valid_in_0;
    always @(c0_exe16142_mux_s or in_c0_exe16142_1 or in_c0_exe16142_0)
    begin
        unique case (c0_exe16142_mux_s)
            1'b0 : c0_exe16142_mux_q = in_c0_exe16142_1;
            1'b1 : c0_exe16142_mux_q = in_c0_exe16142_0;
            default : c0_exe16142_mux_q = 1'b0;
        endcase
    end

    // out_c0_exe16142(GPOUT,62)
    assign out_c0_exe16142 = c0_exe16142_mux_q;

    // c0_exe324_mux(MUX,10)
    assign c0_exe324_mux_s = in_valid_in_0;
    always @(c0_exe324_mux_s or in_c0_exe324_1 or in_c0_exe324_0)
    begin
        unique case (c0_exe324_mux_s)
            1'b0 : c0_exe324_mux_q = in_c0_exe324_1;
            1'b1 : c0_exe324_mux_q = in_c0_exe324_0;
            default : c0_exe324_mux_q = 64'b0;
        endcase
    end

    // out_c0_exe324(GPOUT,63)
    assign out_c0_exe324 = c0_exe324_mux_q;

    // c0_exe433_mux(MUX,11)
    assign c0_exe433_mux_s = in_valid_in_0;
    always @(c0_exe433_mux_s or in_c0_exe433_1 or in_c0_exe433_0)
    begin
        unique case (c0_exe433_mux_s)
            1'b0 : c0_exe433_mux_q = in_c0_exe433_1;
            1'b1 : c0_exe433_mux_q = in_c0_exe433_0;
            default : c0_exe433_mux_q = 1'b0;
        endcase
    end

    // out_c0_exe433(GPOUT,64)
    assign out_c0_exe433 = c0_exe433_mux_q;

    // c0_exe535_mux(MUX,12)
    assign c0_exe535_mux_s = in_valid_in_0;
    always @(c0_exe535_mux_s or in_c0_exe535_1 or in_c0_exe535_0)
    begin
        unique case (c0_exe535_mux_s)
            1'b0 : c0_exe535_mux_q = in_c0_exe535_1;
            1'b1 : c0_exe535_mux_q = in_c0_exe535_0;
            default : c0_exe535_mux_q = 32'b0;
        endcase
    end

    // out_c0_exe535(GPOUT,65)
    assign out_c0_exe535 = c0_exe535_mux_q;

    // c0_exe651_mux(MUX,13)
    assign c0_exe651_mux_s = in_valid_in_0;
    always @(c0_exe651_mux_s or in_c0_exe651_1 or in_c0_exe651_0)
    begin
        unique case (c0_exe651_mux_s)
            1'b0 : c0_exe651_mux_q = in_c0_exe651_1;
            1'b1 : c0_exe651_mux_q = in_c0_exe651_0;
            default : c0_exe651_mux_q = 32'b0;
        endcase
    end

    // out_c0_exe651(GPOUT,66)
    assign out_c0_exe651 = c0_exe651_mux_q;

    // c0_exe754_mux(MUX,14)
    assign c0_exe754_mux_s = in_valid_in_0;
    always @(c0_exe754_mux_s or in_c0_exe754_1 or in_c0_exe754_0)
    begin
        unique case (c0_exe754_mux_s)
            1'b0 : c0_exe754_mux_q = in_c0_exe754_1;
            1'b1 : c0_exe754_mux_q = in_c0_exe754_0;
            default : c0_exe754_mux_q = 1'b0;
        endcase
    end

    // out_c0_exe754(GPOUT,67)
    assign out_c0_exe754 = c0_exe754_mux_q;

    // c0_exe863_mux(MUX,15)
    assign c0_exe863_mux_s = in_valid_in_0;
    always @(c0_exe863_mux_s or in_c0_exe863_1 or in_c0_exe863_0)
    begin
        unique case (c0_exe863_mux_s)
            1'b0 : c0_exe863_mux_q = in_c0_exe863_1;
            1'b1 : c0_exe863_mux_q = in_c0_exe863_0;
            default : c0_exe863_mux_q = 1'b0;
        endcase
    end

    // out_c0_exe863(GPOUT,68)
    assign out_c0_exe863 = c0_exe863_mux_q;

    // c0_exe973_mux(MUX,16)
    assign c0_exe973_mux_s = in_valid_in_0;
    always @(c0_exe973_mux_s or in_c0_exe973_1 or in_c0_exe973_0)
    begin
        unique case (c0_exe973_mux_s)
            1'b0 : c0_exe973_mux_q = in_c0_exe973_1;
            1'b1 : c0_exe973_mux_q = in_c0_exe973_0;
            default : c0_exe973_mux_q = 32'b0;
        endcase
    end

    // out_c0_exe973(GPOUT,69)
    assign out_c0_exe973 = c0_exe973_mux_q;

    // j_062_mux(MUX,54)
    assign j_062_mux_s = in_valid_in_0;
    always @(j_062_mux_s or in_j_062_1 or in_j_062_0)
    begin
        unique case (j_062_mux_s)
            1'b0 : j_062_mux_q = in_j_062_1;
            1'b1 : j_062_mux_q = in_j_062_0;
            default : j_062_mux_q = 32'b0;
        endcase
    end

    // out_j_062(GPOUT,70)
    assign out_j_062 = j_062_mux_q;

    // valid_or(LOGICAL,78)
    assign valid_or_q = in_valid_in_0 | in_valid_in_1;

    // stall_out(LOGICAL,75)
    assign stall_out_q = valid_or_q & in_stall_in;

    // out_stall_out_0(GPOUT,71)
    assign out_stall_out_0 = stall_out_q;

    // stall_out_1_specific(LOGICAL,76)
    assign stall_out_1_specific_q = in_valid_in_0 | stall_out_q;

    // out_stall_out_1(GPOUT,72)
    assign out_stall_out_1 = stall_out_1_specific_q;

    // unnamed_conv2d3x32_mux(MUX,77)
    assign unnamed_conv2d3x32_mux_s = in_valid_in_0;
    always @(unnamed_conv2d3x32_mux_s or in_unnamed_conv2d3x32_1 or in_unnamed_conv2d3x32_0)
    begin
        unique case (unnamed_conv2d3x32_mux_s)
            1'b0 : unnamed_conv2d3x32_mux_q = in_unnamed_conv2d3x32_1;
            1'b1 : unnamed_conv2d3x32_mux_q = in_unnamed_conv2d3x32_0;
            default : unnamed_conv2d3x32_mux_q = 32'b0;
        endcase
    end

    // out_unnamed_conv2d3x32(GPOUT,73)
    assign out_unnamed_conv2d3x32 = unnamed_conv2d3x32_mux_q;

    // out_valid_out(GPOUT,74)
    assign out_valid_out = valid_or_q;

endmodule
