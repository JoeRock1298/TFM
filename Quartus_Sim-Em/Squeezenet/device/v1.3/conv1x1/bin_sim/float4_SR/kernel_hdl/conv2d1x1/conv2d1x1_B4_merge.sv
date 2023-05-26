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

// SystemVerilog created from conv2d1x1_B4_merge
// SystemVerilog created on Wed May 24 11:22:00 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2d1x1_B4_merge (
    input wire [0:0] in_forked47_0,
    input wire [0:0] in_forked47_1,
    input wire [31:0] in_lm93_0,
    input wire [31:0] in_lm93_1,
    input wire [31:0] in_mul100103_0,
    input wire [31:0] in_mul100103_1,
    input wire [31:0] in_mul2198_0,
    input wire [31:0] in_mul2198_1,
    input wire [31:0] in_mul88_0,
    input wire [31:0] in_mul88_1,
    input wire [0:0] in_notcmp43108_0,
    input wire [0:0] in_notcmp43108_1,
    input wire [0:0] in_stall_in,
    input wire [32:0] in_unnamed_conv2d1x110_0,
    input wire [32:0] in_unnamed_conv2d1x110_1,
    input wire [0:0] in_unnamed_conv2d1x17_0,
    input wire [0:0] in_unnamed_conv2d1x17_1,
    input wire [0:0] in_unnamed_conv2d1x18_0,
    input wire [0:0] in_unnamed_conv2d1x18_1,
    input wire [0:0] in_unnamed_conv2d1x19_0,
    input wire [0:0] in_unnamed_conv2d1x19_1,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [0:0] out_forked47,
    output wire [31:0] out_lm93,
    output wire [31:0] out_mul100103,
    output wire [31:0] out_mul2198,
    output wire [31:0] out_mul88,
    output wire [0:0] out_notcmp43108,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [32:0] out_unnamed_conv2d1x110,
    output wire [0:0] out_unnamed_conv2d1x17,
    output wire [0:0] out_unnamed_conv2d1x18,
    output wire [0:0] out_unnamed_conv2d1x19,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    wire [0:0] forked47_mux_s;
    reg [0:0] forked47_mux_q;
    wire [0:0] lm93_mux_s;
    reg [31:0] lm93_mux_q;
    wire [0:0] mul100103_mux_s;
    reg [31:0] mul100103_mux_q;
    wire [0:0] mul2198_mux_s;
    reg [31:0] mul2198_mux_q;
    wire [0:0] mul88_mux_s;
    reg [31:0] mul88_mux_q;
    wire [0:0] notcmp43108_mux_s;
    reg [0:0] notcmp43108_mux_q;
    wire [0:0] stall_out_q;
    wire [0:0] stall_out_1_specific_q;
    wire [0:0] unnamed_conv2d1x110_mux_s;
    reg [32:0] unnamed_conv2d1x110_mux_q;
    wire [0:0] unnamed_conv2d1x17_mux_s;
    reg [0:0] unnamed_conv2d1x17_mux_q;
    wire [0:0] unnamed_conv2d1x18_mux_s;
    reg [0:0] unnamed_conv2d1x18_mux_q;
    wire [0:0] unnamed_conv2d1x19_mux_s;
    reg [0:0] unnamed_conv2d1x19_mux_q;
    wire [0:0] valid_or_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // forked47_mux(MUX,2)
    assign forked47_mux_s = in_valid_in_0;
    always @(forked47_mux_s or in_forked47_1 or in_forked47_0)
    begin
        unique case (forked47_mux_s)
            1'b0 : forked47_mux_q = in_forked47_1;
            1'b1 : forked47_mux_q = in_forked47_0;
            default : forked47_mux_q = 1'b0;
        endcase
    end

    // out_forked47(GPOUT,31)
    assign out_forked47 = forked47_mux_q;

    // lm93_mux(MUX,26)
    assign lm93_mux_s = in_valid_in_0;
    always @(lm93_mux_s or in_lm93_1 or in_lm93_0)
    begin
        unique case (lm93_mux_s)
            1'b0 : lm93_mux_q = in_lm93_1;
            1'b1 : lm93_mux_q = in_lm93_0;
            default : lm93_mux_q = 32'b0;
        endcase
    end

    // out_lm93(GPOUT,32)
    assign out_lm93 = lm93_mux_q;

    // mul100103_mux(MUX,27)
    assign mul100103_mux_s = in_valid_in_0;
    always @(mul100103_mux_s or in_mul100103_1 or in_mul100103_0)
    begin
        unique case (mul100103_mux_s)
            1'b0 : mul100103_mux_q = in_mul100103_1;
            1'b1 : mul100103_mux_q = in_mul100103_0;
            default : mul100103_mux_q = 32'b0;
        endcase
    end

    // out_mul100103(GPOUT,33)
    assign out_mul100103 = mul100103_mux_q;

    // mul2198_mux(MUX,28)
    assign mul2198_mux_s = in_valid_in_0;
    always @(mul2198_mux_s or in_mul2198_1 or in_mul2198_0)
    begin
        unique case (mul2198_mux_s)
            1'b0 : mul2198_mux_q = in_mul2198_1;
            1'b1 : mul2198_mux_q = in_mul2198_0;
            default : mul2198_mux_q = 32'b0;
        endcase
    end

    // out_mul2198(GPOUT,34)
    assign out_mul2198 = mul2198_mux_q;

    // mul88_mux(MUX,29)
    assign mul88_mux_s = in_valid_in_0;
    always @(mul88_mux_s or in_mul88_1 or in_mul88_0)
    begin
        unique case (mul88_mux_s)
            1'b0 : mul88_mux_q = in_mul88_1;
            1'b1 : mul88_mux_q = in_mul88_0;
            default : mul88_mux_q = 32'b0;
        endcase
    end

    // out_mul88(GPOUT,35)
    assign out_mul88 = mul88_mux_q;

    // notcmp43108_mux(MUX,30)
    assign notcmp43108_mux_s = in_valid_in_0;
    always @(notcmp43108_mux_s or in_notcmp43108_1 or in_notcmp43108_0)
    begin
        unique case (notcmp43108_mux_s)
            1'b0 : notcmp43108_mux_q = in_notcmp43108_1;
            1'b1 : notcmp43108_mux_q = in_notcmp43108_0;
            default : notcmp43108_mux_q = 1'b0;
        endcase
    end

    // out_notcmp43108(GPOUT,36)
    assign out_notcmp43108 = notcmp43108_mux_q;

    // valid_or(LOGICAL,50)
    assign valid_or_q = in_valid_in_0 | in_valid_in_1;

    // stall_out(LOGICAL,44)
    assign stall_out_q = valid_or_q & in_stall_in;

    // out_stall_out_0(GPOUT,37)
    assign out_stall_out_0 = stall_out_q;

    // stall_out_1_specific(LOGICAL,45)
    assign stall_out_1_specific_q = in_valid_in_0 | stall_out_q;

    // out_stall_out_1(GPOUT,38)
    assign out_stall_out_1 = stall_out_1_specific_q;

    // unnamed_conv2d1x110_mux(MUX,46)
    assign unnamed_conv2d1x110_mux_s = in_valid_in_0;
    always @(unnamed_conv2d1x110_mux_s or in_unnamed_conv2d1x110_1 or in_unnamed_conv2d1x110_0)
    begin
        unique case (unnamed_conv2d1x110_mux_s)
            1'b0 : unnamed_conv2d1x110_mux_q = in_unnamed_conv2d1x110_1;
            1'b1 : unnamed_conv2d1x110_mux_q = in_unnamed_conv2d1x110_0;
            default : unnamed_conv2d1x110_mux_q = 33'b0;
        endcase
    end

    // out_unnamed_conv2d1x110(GPOUT,39)
    assign out_unnamed_conv2d1x110 = unnamed_conv2d1x110_mux_q;

    // unnamed_conv2d1x17_mux(MUX,47)
    assign unnamed_conv2d1x17_mux_s = in_valid_in_0;
    always @(unnamed_conv2d1x17_mux_s or in_unnamed_conv2d1x17_1 or in_unnamed_conv2d1x17_0)
    begin
        unique case (unnamed_conv2d1x17_mux_s)
            1'b0 : unnamed_conv2d1x17_mux_q = in_unnamed_conv2d1x17_1;
            1'b1 : unnamed_conv2d1x17_mux_q = in_unnamed_conv2d1x17_0;
            default : unnamed_conv2d1x17_mux_q = 1'b0;
        endcase
    end

    // out_unnamed_conv2d1x17(GPOUT,40)
    assign out_unnamed_conv2d1x17 = unnamed_conv2d1x17_mux_q;

    // unnamed_conv2d1x18_mux(MUX,48)
    assign unnamed_conv2d1x18_mux_s = in_valid_in_0;
    always @(unnamed_conv2d1x18_mux_s or in_unnamed_conv2d1x18_1 or in_unnamed_conv2d1x18_0)
    begin
        unique case (unnamed_conv2d1x18_mux_s)
            1'b0 : unnamed_conv2d1x18_mux_q = in_unnamed_conv2d1x18_1;
            1'b1 : unnamed_conv2d1x18_mux_q = in_unnamed_conv2d1x18_0;
            default : unnamed_conv2d1x18_mux_q = 1'b0;
        endcase
    end

    // out_unnamed_conv2d1x18(GPOUT,41)
    assign out_unnamed_conv2d1x18 = unnamed_conv2d1x18_mux_q;

    // unnamed_conv2d1x19_mux(MUX,49)
    assign unnamed_conv2d1x19_mux_s = in_valid_in_0;
    always @(unnamed_conv2d1x19_mux_s or in_unnamed_conv2d1x19_1 or in_unnamed_conv2d1x19_0)
    begin
        unique case (unnamed_conv2d1x19_mux_s)
            1'b0 : unnamed_conv2d1x19_mux_q = in_unnamed_conv2d1x19_1;
            1'b1 : unnamed_conv2d1x19_mux_q = in_unnamed_conv2d1x19_0;
            default : unnamed_conv2d1x19_mux_q = 1'b0;
        endcase
    end

    // out_unnamed_conv2d1x19(GPOUT,42)
    assign out_unnamed_conv2d1x19 = unnamed_conv2d1x19_mux_q;

    // out_valid_out(GPOUT,43)
    assign out_valid_out = valid_or_q;

endmodule
