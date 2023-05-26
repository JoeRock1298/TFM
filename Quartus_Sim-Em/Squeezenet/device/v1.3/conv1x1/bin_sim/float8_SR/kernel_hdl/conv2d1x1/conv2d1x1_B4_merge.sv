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
// SystemVerilog created on Wed May 24 12:36:13 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2d1x1_B4_merge (
    input wire [0:0] in_forked55_0,
    input wire [0:0] in_forked55_1,
    input wire [31:0] in_lm113_0,
    input wire [31:0] in_lm113_1,
    input wire [31:0] in_mul108_0,
    input wire [31:0] in_mul108_1,
    input wire [31:0] in_mul156123_0,
    input wire [31:0] in_mul156123_1,
    input wire [31:0] in_mul21118_0,
    input wire [31:0] in_mul21118_1,
    input wire [0:0] in_notcmp51128_0,
    input wire [0:0] in_notcmp51128_1,
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
    output wire [0:0] out_forked55,
    output wire [31:0] out_lm113,
    output wire [31:0] out_mul108,
    output wire [31:0] out_mul156123,
    output wire [31:0] out_mul21118,
    output wire [0:0] out_notcmp51128,
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
    wire [0:0] forked55_mux_s;
    reg [0:0] forked55_mux_q;
    wire [0:0] lm113_mux_s;
    reg [31:0] lm113_mux_q;
    wire [0:0] mul108_mux_s;
    reg [31:0] mul108_mux_q;
    wire [0:0] mul156123_mux_s;
    reg [31:0] mul156123_mux_q;
    wire [0:0] mul21118_mux_s;
    reg [31:0] mul21118_mux_q;
    wire [0:0] notcmp51128_mux_s;
    reg [0:0] notcmp51128_mux_q;
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

    // forked55_mux(MUX,2)
    assign forked55_mux_s = in_valid_in_0;
    always @(forked55_mux_s or in_forked55_1 or in_forked55_0)
    begin
        unique case (forked55_mux_s)
            1'b0 : forked55_mux_q = in_forked55_1;
            1'b1 : forked55_mux_q = in_forked55_0;
            default : forked55_mux_q = 1'b0;
        endcase
    end

    // out_forked55(GPOUT,31)
    assign out_forked55 = forked55_mux_q;

    // lm113_mux(MUX,26)
    assign lm113_mux_s = in_valid_in_0;
    always @(lm113_mux_s or in_lm113_1 or in_lm113_0)
    begin
        unique case (lm113_mux_s)
            1'b0 : lm113_mux_q = in_lm113_1;
            1'b1 : lm113_mux_q = in_lm113_0;
            default : lm113_mux_q = 32'b0;
        endcase
    end

    // out_lm113(GPOUT,32)
    assign out_lm113 = lm113_mux_q;

    // mul108_mux(MUX,27)
    assign mul108_mux_s = in_valid_in_0;
    always @(mul108_mux_s or in_mul108_1 or in_mul108_0)
    begin
        unique case (mul108_mux_s)
            1'b0 : mul108_mux_q = in_mul108_1;
            1'b1 : mul108_mux_q = in_mul108_0;
            default : mul108_mux_q = 32'b0;
        endcase
    end

    // out_mul108(GPOUT,33)
    assign out_mul108 = mul108_mux_q;

    // mul156123_mux(MUX,28)
    assign mul156123_mux_s = in_valid_in_0;
    always @(mul156123_mux_s or in_mul156123_1 or in_mul156123_0)
    begin
        unique case (mul156123_mux_s)
            1'b0 : mul156123_mux_q = in_mul156123_1;
            1'b1 : mul156123_mux_q = in_mul156123_0;
            default : mul156123_mux_q = 32'b0;
        endcase
    end

    // out_mul156123(GPOUT,34)
    assign out_mul156123 = mul156123_mux_q;

    // mul21118_mux(MUX,29)
    assign mul21118_mux_s = in_valid_in_0;
    always @(mul21118_mux_s or in_mul21118_1 or in_mul21118_0)
    begin
        unique case (mul21118_mux_s)
            1'b0 : mul21118_mux_q = in_mul21118_1;
            1'b1 : mul21118_mux_q = in_mul21118_0;
            default : mul21118_mux_q = 32'b0;
        endcase
    end

    // out_mul21118(GPOUT,35)
    assign out_mul21118 = mul21118_mux_q;

    // notcmp51128_mux(MUX,30)
    assign notcmp51128_mux_s = in_valid_in_0;
    always @(notcmp51128_mux_s or in_notcmp51128_1 or in_notcmp51128_0)
    begin
        unique case (notcmp51128_mux_s)
            1'b0 : notcmp51128_mux_q = in_notcmp51128_1;
            1'b1 : notcmp51128_mux_q = in_notcmp51128_0;
            default : notcmp51128_mux_q = 1'b0;
        endcase
    end

    // out_notcmp51128(GPOUT,36)
    assign out_notcmp51128 = notcmp51128_mux_q;

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
