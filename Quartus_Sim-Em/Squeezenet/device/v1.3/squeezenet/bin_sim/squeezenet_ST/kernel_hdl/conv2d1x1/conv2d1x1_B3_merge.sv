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

// SystemVerilog created from conv2d1x1_B3_merge
// SystemVerilog created on Tue Jun  6 18:48:20 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2d1x1_B3_merge (
    input wire [0:0] in_forked26_0,
    input wire [0:0] in_forked26_1,
    input wire [31:0] in_lm42_0,
    input wire [31:0] in_lm42_1,
    input wire [31:0] in_mul1345_0,
    input wire [31:0] in_mul1345_1,
    input wire [31:0] in_mul2348_0,
    input wire [31:0] in_mul2348_1,
    input wire [31:0] in_mul39_0,
    input wire [31:0] in_mul39_1,
    input wire [0:0] in_notcmp2251_0,
    input wire [0:0] in_notcmp2251_1,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_unnamed_conv2d1x17_0,
    input wire [0:0] in_unnamed_conv2d1x17_1,
    input wire [0:0] in_unnamed_conv2d1x18_0,
    input wire [0:0] in_unnamed_conv2d1x18_1,
    input wire [32:0] in_unnamed_conv2d1x19_0,
    input wire [32:0] in_unnamed_conv2d1x19_1,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [0:0] out_forked26,
    output wire [31:0] out_lm42,
    output wire [31:0] out_mul1345,
    output wire [31:0] out_mul2348,
    output wire [31:0] out_mul39,
    output wire [0:0] out_notcmp2251,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [0:0] out_unnamed_conv2d1x17,
    output wire [0:0] out_unnamed_conv2d1x18,
    output wire [32:0] out_unnamed_conv2d1x19,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    wire [0:0] forked26_mux_s;
    reg [0:0] forked26_mux_q;
    wire [0:0] lm42_mux_s;
    reg [31:0] lm42_mux_q;
    wire [0:0] mul1345_mux_s;
    reg [31:0] mul1345_mux_q;
    wire [0:0] mul2348_mux_s;
    reg [31:0] mul2348_mux_q;
    wire [0:0] mul39_mux_s;
    reg [31:0] mul39_mux_q;
    wire [0:0] notcmp2251_mux_s;
    reg [0:0] notcmp2251_mux_q;
    wire [0:0] stall_out_q;
    wire [0:0] stall_out_1_specific_q;
    wire [0:0] unnamed_conv2d1x17_mux_s;
    reg [0:0] unnamed_conv2d1x17_mux_q;
    wire [0:0] unnamed_conv2d1x18_mux_s;
    reg [0:0] unnamed_conv2d1x18_mux_q;
    wire [0:0] unnamed_conv2d1x19_mux_s;
    reg [32:0] unnamed_conv2d1x19_mux_q;
    wire [0:0] valid_or_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // forked26_mux(MUX,2)
    assign forked26_mux_s = in_valid_in_0;
    always @(forked26_mux_s or in_forked26_1 or in_forked26_0)
    begin
        unique case (forked26_mux_s)
            1'b0 : forked26_mux_q = in_forked26_1;
            1'b1 : forked26_mux_q = in_forked26_0;
            default : forked26_mux_q = 1'b0;
        endcase
    end

    // out_forked26(GPOUT,29)
    assign out_forked26 = forked26_mux_q;

    // lm42_mux(MUX,24)
    assign lm42_mux_s = in_valid_in_0;
    always @(lm42_mux_s or in_lm42_1 or in_lm42_0)
    begin
        unique case (lm42_mux_s)
            1'b0 : lm42_mux_q = in_lm42_1;
            1'b1 : lm42_mux_q = in_lm42_0;
            default : lm42_mux_q = 32'b0;
        endcase
    end

    // out_lm42(GPOUT,30)
    assign out_lm42 = lm42_mux_q;

    // mul1345_mux(MUX,25)
    assign mul1345_mux_s = in_valid_in_0;
    always @(mul1345_mux_s or in_mul1345_1 or in_mul1345_0)
    begin
        unique case (mul1345_mux_s)
            1'b0 : mul1345_mux_q = in_mul1345_1;
            1'b1 : mul1345_mux_q = in_mul1345_0;
            default : mul1345_mux_q = 32'b0;
        endcase
    end

    // out_mul1345(GPOUT,31)
    assign out_mul1345 = mul1345_mux_q;

    // mul2348_mux(MUX,26)
    assign mul2348_mux_s = in_valid_in_0;
    always @(mul2348_mux_s or in_mul2348_1 or in_mul2348_0)
    begin
        unique case (mul2348_mux_s)
            1'b0 : mul2348_mux_q = in_mul2348_1;
            1'b1 : mul2348_mux_q = in_mul2348_0;
            default : mul2348_mux_q = 32'b0;
        endcase
    end

    // out_mul2348(GPOUT,32)
    assign out_mul2348 = mul2348_mux_q;

    // mul39_mux(MUX,27)
    assign mul39_mux_s = in_valid_in_0;
    always @(mul39_mux_s or in_mul39_1 or in_mul39_0)
    begin
        unique case (mul39_mux_s)
            1'b0 : mul39_mux_q = in_mul39_1;
            1'b1 : mul39_mux_q = in_mul39_0;
            default : mul39_mux_q = 32'b0;
        endcase
    end

    // out_mul39(GPOUT,33)
    assign out_mul39 = mul39_mux_q;

    // notcmp2251_mux(MUX,28)
    assign notcmp2251_mux_s = in_valid_in_0;
    always @(notcmp2251_mux_s or in_notcmp2251_1 or in_notcmp2251_0)
    begin
        unique case (notcmp2251_mux_s)
            1'b0 : notcmp2251_mux_q = in_notcmp2251_1;
            1'b1 : notcmp2251_mux_q = in_notcmp2251_0;
            default : notcmp2251_mux_q = 1'b0;
        endcase
    end

    // out_notcmp2251(GPOUT,34)
    assign out_notcmp2251 = notcmp2251_mux_q;

    // valid_or(LOGICAL,46)
    assign valid_or_q = in_valid_in_0 | in_valid_in_1;

    // stall_out(LOGICAL,41)
    assign stall_out_q = valid_or_q & in_stall_in;

    // out_stall_out_0(GPOUT,35)
    assign out_stall_out_0 = stall_out_q;

    // stall_out_1_specific(LOGICAL,42)
    assign stall_out_1_specific_q = in_valid_in_0 | stall_out_q;

    // out_stall_out_1(GPOUT,36)
    assign out_stall_out_1 = stall_out_1_specific_q;

    // unnamed_conv2d1x17_mux(MUX,43)
    assign unnamed_conv2d1x17_mux_s = in_valid_in_0;
    always @(unnamed_conv2d1x17_mux_s or in_unnamed_conv2d1x17_1 or in_unnamed_conv2d1x17_0)
    begin
        unique case (unnamed_conv2d1x17_mux_s)
            1'b0 : unnamed_conv2d1x17_mux_q = in_unnamed_conv2d1x17_1;
            1'b1 : unnamed_conv2d1x17_mux_q = in_unnamed_conv2d1x17_0;
            default : unnamed_conv2d1x17_mux_q = 1'b0;
        endcase
    end

    // out_unnamed_conv2d1x17(GPOUT,37)
    assign out_unnamed_conv2d1x17 = unnamed_conv2d1x17_mux_q;

    // unnamed_conv2d1x18_mux(MUX,44)
    assign unnamed_conv2d1x18_mux_s = in_valid_in_0;
    always @(unnamed_conv2d1x18_mux_s or in_unnamed_conv2d1x18_1 or in_unnamed_conv2d1x18_0)
    begin
        unique case (unnamed_conv2d1x18_mux_s)
            1'b0 : unnamed_conv2d1x18_mux_q = in_unnamed_conv2d1x18_1;
            1'b1 : unnamed_conv2d1x18_mux_q = in_unnamed_conv2d1x18_0;
            default : unnamed_conv2d1x18_mux_q = 1'b0;
        endcase
    end

    // out_unnamed_conv2d1x18(GPOUT,38)
    assign out_unnamed_conv2d1x18 = unnamed_conv2d1x18_mux_q;

    // unnamed_conv2d1x19_mux(MUX,45)
    assign unnamed_conv2d1x19_mux_s = in_valid_in_0;
    always @(unnamed_conv2d1x19_mux_s or in_unnamed_conv2d1x19_1 or in_unnamed_conv2d1x19_0)
    begin
        unique case (unnamed_conv2d1x19_mux_s)
            1'b0 : unnamed_conv2d1x19_mux_q = in_unnamed_conv2d1x19_1;
            1'b1 : unnamed_conv2d1x19_mux_q = in_unnamed_conv2d1x19_0;
            default : unnamed_conv2d1x19_mux_q = 33'b0;
        endcase
    end

    // out_unnamed_conv2d1x19(GPOUT,39)
    assign out_unnamed_conv2d1x19 = unnamed_conv2d1x19_mux_q;

    // out_valid_out(GPOUT,40)
    assign out_valid_out = valid_or_q;

endmodule
