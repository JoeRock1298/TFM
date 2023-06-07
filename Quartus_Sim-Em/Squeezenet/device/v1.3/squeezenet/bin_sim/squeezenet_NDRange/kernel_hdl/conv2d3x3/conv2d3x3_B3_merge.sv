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

// SystemVerilog created from conv2d3x3_B3_merge
// SystemVerilog created on Tue Jun  6 18:45:14 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2d3x3_B3_merge (
    input wire [0:0] in_c0_exe1082_0,
    input wire [0:0] in_c0_exe1082_1,
    input wire [63:0] in_c0_exe112_0,
    input wire [63:0] in_c0_exe112_1,
    input wire [31:0] in_c0_exe1186152_0,
    input wire [31:0] in_c0_exe1186152_1,
    input wire [0:0] in_c0_exe1191_0,
    input wire [0:0] in_c0_exe1191_1,
    input wire [31:0] in_c0_exe12102_0,
    input wire [31:0] in_c0_exe12102_1,
    input wire [0:0] in_c0_exe13112_0,
    input wire [0:0] in_c0_exe13112_1,
    input wire [0:0] in_c0_exe14121_0,
    input wire [0:0] in_c0_exe14121_1,
    input wire [0:0] in_c0_exe15131_0,
    input wire [0:0] in_c0_exe15131_1,
    input wire [0:0] in_c0_exe16141_0,
    input wire [0:0] in_c0_exe16141_1,
    input wire [63:0] in_c0_exe323_0,
    input wire [63:0] in_c0_exe323_1,
    input wire [0:0] in_c0_exe432_0,
    input wire [0:0] in_c0_exe432_1,
    input wire [31:0] in_c0_exe534_0,
    input wire [31:0] in_c0_exe534_1,
    input wire [31:0] in_c0_exe650_0,
    input wire [31:0] in_c0_exe650_1,
    input wire [0:0] in_c0_exe753_0,
    input wire [0:0] in_c0_exe753_1,
    input wire [0:0] in_c0_exe862_0,
    input wire [0:0] in_c0_exe862_1,
    input wire [31:0] in_c0_exe972_0,
    input wire [31:0] in_c0_exe972_1,
    input wire [31:0] in_j_062150_0,
    input wire [31:0] in_j_062150_1,
    input wire [31:0] in_k_059_0,
    input wire [31:0] in_k_059_1,
    input wire [0:0] in_stall_in,
    input wire [31:0] in_tmp_058_0,
    input wire [31:0] in_tmp_058_1,
    input wire [31:0] in_unnamed_conv2d3x33_0,
    input wire [31:0] in_unnamed_conv2d3x33_1,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [0:0] out_c0_exe1082,
    output wire [63:0] out_c0_exe112,
    output wire [31:0] out_c0_exe1186152,
    output wire [0:0] out_c0_exe1191,
    output wire [31:0] out_c0_exe12102,
    output wire [0:0] out_c0_exe13112,
    output wire [0:0] out_c0_exe14121,
    output wire [0:0] out_c0_exe15131,
    output wire [0:0] out_c0_exe16141,
    output wire [63:0] out_c0_exe323,
    output wire [0:0] out_c0_exe432,
    output wire [31:0] out_c0_exe534,
    output wire [31:0] out_c0_exe650,
    output wire [0:0] out_c0_exe753,
    output wire [0:0] out_c0_exe862,
    output wire [31:0] out_c0_exe972,
    output wire [31:0] out_j_062150,
    output wire [31:0] out_k_059,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [31:0] out_tmp_058,
    output wire [31:0] out_unnamed_conv2d3x33,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    wire [0:0] c0_exe1082_mux_s;
    reg [0:0] c0_exe1082_mux_q;
    wire [0:0] c0_exe112_mux_s;
    reg [63:0] c0_exe112_mux_q;
    wire [0:0] c0_exe1186152_mux_s;
    reg [31:0] c0_exe1186152_mux_q;
    wire [0:0] c0_exe1191_mux_s;
    reg [0:0] c0_exe1191_mux_q;
    wire [0:0] c0_exe12102_mux_s;
    reg [31:0] c0_exe12102_mux_q;
    wire [0:0] c0_exe13112_mux_s;
    reg [0:0] c0_exe13112_mux_q;
    wire [0:0] c0_exe14121_mux_s;
    reg [0:0] c0_exe14121_mux_q;
    wire [0:0] c0_exe15131_mux_s;
    reg [0:0] c0_exe15131_mux_q;
    wire [0:0] c0_exe16141_mux_s;
    reg [0:0] c0_exe16141_mux_q;
    wire [0:0] c0_exe323_mux_s;
    reg [63:0] c0_exe323_mux_q;
    wire [0:0] c0_exe432_mux_s;
    reg [0:0] c0_exe432_mux_q;
    wire [0:0] c0_exe534_mux_s;
    reg [31:0] c0_exe534_mux_q;
    wire [0:0] c0_exe650_mux_s;
    reg [31:0] c0_exe650_mux_q;
    wire [0:0] c0_exe753_mux_s;
    reg [0:0] c0_exe753_mux_q;
    wire [0:0] c0_exe862_mux_s;
    reg [0:0] c0_exe862_mux_q;
    wire [0:0] c0_exe972_mux_s;
    reg [31:0] c0_exe972_mux_q;
    wire [0:0] j_062150_mux_s;
    reg [31:0] j_062150_mux_q;
    wire [0:0] k_059_mux_s;
    reg [31:0] k_059_mux_q;
    wire [0:0] stall_out_q;
    wire [0:0] stall_out_1_specific_q;
    wire [0:0] tmp_058_mux_s;
    reg [31:0] tmp_058_mux_q;
    wire [0:0] unnamed_conv2d3x33_mux_s;
    reg [31:0] unnamed_conv2d3x33_mux_q;
    wire [0:0] valid_or_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // c0_exe1082_mux(MUX,2)
    assign c0_exe1082_mux_s = in_valid_in_0;
    always @(c0_exe1082_mux_s or in_c0_exe1082_1 or in_c0_exe1082_0)
    begin
        unique case (c0_exe1082_mux_s)
            1'b0 : c0_exe1082_mux_q = in_c0_exe1082_1;
            1'b1 : c0_exe1082_mux_q = in_c0_exe1082_0;
            default : c0_exe1082_mux_q = 1'b0;
        endcase
    end

    // out_c0_exe1082(GPOUT,63)
    assign out_c0_exe1082 = c0_exe1082_mux_q;

    // c0_exe112_mux(MUX,3)
    assign c0_exe112_mux_s = in_valid_in_0;
    always @(c0_exe112_mux_s or in_c0_exe112_1 or in_c0_exe112_0)
    begin
        unique case (c0_exe112_mux_s)
            1'b0 : c0_exe112_mux_q = in_c0_exe112_1;
            1'b1 : c0_exe112_mux_q = in_c0_exe112_0;
            default : c0_exe112_mux_q = 64'b0;
        endcase
    end

    // out_c0_exe112(GPOUT,64)
    assign out_c0_exe112 = c0_exe112_mux_q;

    // c0_exe1186152_mux(MUX,4)
    assign c0_exe1186152_mux_s = in_valid_in_0;
    always @(c0_exe1186152_mux_s or in_c0_exe1186152_1 or in_c0_exe1186152_0)
    begin
        unique case (c0_exe1186152_mux_s)
            1'b0 : c0_exe1186152_mux_q = in_c0_exe1186152_1;
            1'b1 : c0_exe1186152_mux_q = in_c0_exe1186152_0;
            default : c0_exe1186152_mux_q = 32'b0;
        endcase
    end

    // out_c0_exe1186152(GPOUT,65)
    assign out_c0_exe1186152 = c0_exe1186152_mux_q;

    // c0_exe1191_mux(MUX,5)
    assign c0_exe1191_mux_s = in_valid_in_0;
    always @(c0_exe1191_mux_s or in_c0_exe1191_1 or in_c0_exe1191_0)
    begin
        unique case (c0_exe1191_mux_s)
            1'b0 : c0_exe1191_mux_q = in_c0_exe1191_1;
            1'b1 : c0_exe1191_mux_q = in_c0_exe1191_0;
            default : c0_exe1191_mux_q = 1'b0;
        endcase
    end

    // out_c0_exe1191(GPOUT,66)
    assign out_c0_exe1191 = c0_exe1191_mux_q;

    // c0_exe12102_mux(MUX,6)
    assign c0_exe12102_mux_s = in_valid_in_0;
    always @(c0_exe12102_mux_s or in_c0_exe12102_1 or in_c0_exe12102_0)
    begin
        unique case (c0_exe12102_mux_s)
            1'b0 : c0_exe12102_mux_q = in_c0_exe12102_1;
            1'b1 : c0_exe12102_mux_q = in_c0_exe12102_0;
            default : c0_exe12102_mux_q = 32'b0;
        endcase
    end

    // out_c0_exe12102(GPOUT,67)
    assign out_c0_exe12102 = c0_exe12102_mux_q;

    // c0_exe13112_mux(MUX,7)
    assign c0_exe13112_mux_s = in_valid_in_0;
    always @(c0_exe13112_mux_s or in_c0_exe13112_1 or in_c0_exe13112_0)
    begin
        unique case (c0_exe13112_mux_s)
            1'b0 : c0_exe13112_mux_q = in_c0_exe13112_1;
            1'b1 : c0_exe13112_mux_q = in_c0_exe13112_0;
            default : c0_exe13112_mux_q = 1'b0;
        endcase
    end

    // out_c0_exe13112(GPOUT,68)
    assign out_c0_exe13112 = c0_exe13112_mux_q;

    // c0_exe14121_mux(MUX,8)
    assign c0_exe14121_mux_s = in_valid_in_0;
    always @(c0_exe14121_mux_s or in_c0_exe14121_1 or in_c0_exe14121_0)
    begin
        unique case (c0_exe14121_mux_s)
            1'b0 : c0_exe14121_mux_q = in_c0_exe14121_1;
            1'b1 : c0_exe14121_mux_q = in_c0_exe14121_0;
            default : c0_exe14121_mux_q = 1'b0;
        endcase
    end

    // out_c0_exe14121(GPOUT,69)
    assign out_c0_exe14121 = c0_exe14121_mux_q;

    // c0_exe15131_mux(MUX,9)
    assign c0_exe15131_mux_s = in_valid_in_0;
    always @(c0_exe15131_mux_s or in_c0_exe15131_1 or in_c0_exe15131_0)
    begin
        unique case (c0_exe15131_mux_s)
            1'b0 : c0_exe15131_mux_q = in_c0_exe15131_1;
            1'b1 : c0_exe15131_mux_q = in_c0_exe15131_0;
            default : c0_exe15131_mux_q = 1'b0;
        endcase
    end

    // out_c0_exe15131(GPOUT,70)
    assign out_c0_exe15131 = c0_exe15131_mux_q;

    // c0_exe16141_mux(MUX,10)
    assign c0_exe16141_mux_s = in_valid_in_0;
    always @(c0_exe16141_mux_s or in_c0_exe16141_1 or in_c0_exe16141_0)
    begin
        unique case (c0_exe16141_mux_s)
            1'b0 : c0_exe16141_mux_q = in_c0_exe16141_1;
            1'b1 : c0_exe16141_mux_q = in_c0_exe16141_0;
            default : c0_exe16141_mux_q = 1'b0;
        endcase
    end

    // out_c0_exe16141(GPOUT,71)
    assign out_c0_exe16141 = c0_exe16141_mux_q;

    // c0_exe323_mux(MUX,11)
    assign c0_exe323_mux_s = in_valid_in_0;
    always @(c0_exe323_mux_s or in_c0_exe323_1 or in_c0_exe323_0)
    begin
        unique case (c0_exe323_mux_s)
            1'b0 : c0_exe323_mux_q = in_c0_exe323_1;
            1'b1 : c0_exe323_mux_q = in_c0_exe323_0;
            default : c0_exe323_mux_q = 64'b0;
        endcase
    end

    // out_c0_exe323(GPOUT,72)
    assign out_c0_exe323 = c0_exe323_mux_q;

    // c0_exe432_mux(MUX,12)
    assign c0_exe432_mux_s = in_valid_in_0;
    always @(c0_exe432_mux_s or in_c0_exe432_1 or in_c0_exe432_0)
    begin
        unique case (c0_exe432_mux_s)
            1'b0 : c0_exe432_mux_q = in_c0_exe432_1;
            1'b1 : c0_exe432_mux_q = in_c0_exe432_0;
            default : c0_exe432_mux_q = 1'b0;
        endcase
    end

    // out_c0_exe432(GPOUT,73)
    assign out_c0_exe432 = c0_exe432_mux_q;

    // c0_exe534_mux(MUX,13)
    assign c0_exe534_mux_s = in_valid_in_0;
    always @(c0_exe534_mux_s or in_c0_exe534_1 or in_c0_exe534_0)
    begin
        unique case (c0_exe534_mux_s)
            1'b0 : c0_exe534_mux_q = in_c0_exe534_1;
            1'b1 : c0_exe534_mux_q = in_c0_exe534_0;
            default : c0_exe534_mux_q = 32'b0;
        endcase
    end

    // out_c0_exe534(GPOUT,74)
    assign out_c0_exe534 = c0_exe534_mux_q;

    // c0_exe650_mux(MUX,14)
    assign c0_exe650_mux_s = in_valid_in_0;
    always @(c0_exe650_mux_s or in_c0_exe650_1 or in_c0_exe650_0)
    begin
        unique case (c0_exe650_mux_s)
            1'b0 : c0_exe650_mux_q = in_c0_exe650_1;
            1'b1 : c0_exe650_mux_q = in_c0_exe650_0;
            default : c0_exe650_mux_q = 32'b0;
        endcase
    end

    // out_c0_exe650(GPOUT,75)
    assign out_c0_exe650 = c0_exe650_mux_q;

    // c0_exe753_mux(MUX,15)
    assign c0_exe753_mux_s = in_valid_in_0;
    always @(c0_exe753_mux_s or in_c0_exe753_1 or in_c0_exe753_0)
    begin
        unique case (c0_exe753_mux_s)
            1'b0 : c0_exe753_mux_q = in_c0_exe753_1;
            1'b1 : c0_exe753_mux_q = in_c0_exe753_0;
            default : c0_exe753_mux_q = 1'b0;
        endcase
    end

    // out_c0_exe753(GPOUT,76)
    assign out_c0_exe753 = c0_exe753_mux_q;

    // c0_exe862_mux(MUX,16)
    assign c0_exe862_mux_s = in_valid_in_0;
    always @(c0_exe862_mux_s or in_c0_exe862_1 or in_c0_exe862_0)
    begin
        unique case (c0_exe862_mux_s)
            1'b0 : c0_exe862_mux_q = in_c0_exe862_1;
            1'b1 : c0_exe862_mux_q = in_c0_exe862_0;
            default : c0_exe862_mux_q = 1'b0;
        endcase
    end

    // out_c0_exe862(GPOUT,77)
    assign out_c0_exe862 = c0_exe862_mux_q;

    // c0_exe972_mux(MUX,17)
    assign c0_exe972_mux_s = in_valid_in_0;
    always @(c0_exe972_mux_s or in_c0_exe972_1 or in_c0_exe972_0)
    begin
        unique case (c0_exe972_mux_s)
            1'b0 : c0_exe972_mux_q = in_c0_exe972_1;
            1'b1 : c0_exe972_mux_q = in_c0_exe972_0;
            default : c0_exe972_mux_q = 32'b0;
        endcase
    end

    // out_c0_exe972(GPOUT,78)
    assign out_c0_exe972 = c0_exe972_mux_q;

    // j_062150_mux(MUX,61)
    assign j_062150_mux_s = in_valid_in_0;
    always @(j_062150_mux_s or in_j_062150_1 or in_j_062150_0)
    begin
        unique case (j_062150_mux_s)
            1'b0 : j_062150_mux_q = in_j_062150_1;
            1'b1 : j_062150_mux_q = in_j_062150_0;
            default : j_062150_mux_q = 32'b0;
        endcase
    end

    // out_j_062150(GPOUT,79)
    assign out_j_062150 = j_062150_mux_q;

    // k_059_mux(MUX,62)
    assign k_059_mux_s = in_valid_in_0;
    always @(k_059_mux_s or in_k_059_1 or in_k_059_0)
    begin
        unique case (k_059_mux_s)
            1'b0 : k_059_mux_q = in_k_059_1;
            1'b1 : k_059_mux_q = in_k_059_0;
            default : k_059_mux_q = 32'b0;
        endcase
    end

    // out_k_059(GPOUT,80)
    assign out_k_059 = k_059_mux_q;

    // valid_or(LOGICAL,90)
    assign valid_or_q = in_valid_in_0 | in_valid_in_1;

    // stall_out(LOGICAL,86)
    assign stall_out_q = valid_or_q & in_stall_in;

    // out_stall_out_0(GPOUT,81)
    assign out_stall_out_0 = stall_out_q;

    // stall_out_1_specific(LOGICAL,87)
    assign stall_out_1_specific_q = in_valid_in_0 | stall_out_q;

    // out_stall_out_1(GPOUT,82)
    assign out_stall_out_1 = stall_out_1_specific_q;

    // tmp_058_mux(MUX,88)
    assign tmp_058_mux_s = in_valid_in_0;
    always @(tmp_058_mux_s or in_tmp_058_1 or in_tmp_058_0)
    begin
        unique case (tmp_058_mux_s)
            1'b0 : tmp_058_mux_q = in_tmp_058_1;
            1'b1 : tmp_058_mux_q = in_tmp_058_0;
            default : tmp_058_mux_q = 32'b0;
        endcase
    end

    // out_tmp_058(GPOUT,83)
    assign out_tmp_058 = tmp_058_mux_q;

    // unnamed_conv2d3x33_mux(MUX,89)
    assign unnamed_conv2d3x33_mux_s = in_valid_in_0;
    always @(unnamed_conv2d3x33_mux_s or in_unnamed_conv2d3x33_1 or in_unnamed_conv2d3x33_0)
    begin
        unique case (unnamed_conv2d3x33_mux_s)
            1'b0 : unnamed_conv2d3x33_mux_q = in_unnamed_conv2d3x33_1;
            1'b1 : unnamed_conv2d3x33_mux_q = in_unnamed_conv2d3x33_0;
            default : unnamed_conv2d3x33_mux_q = 32'b0;
        endcase
    end

    // out_unnamed_conv2d3x33(GPOUT,84)
    assign out_unnamed_conv2d3x33 = unnamed_conv2d3x33_mux_q;

    // out_valid_out(GPOUT,85)
    assign out_valid_out = valid_or_q;

endmodule
