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
// SystemVerilog created on Tue May 23 20:43:36 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2d1x1_B4_merge (
    input wire [0:0] in_forked17_0,
    input wire [0:0] in_forked17_1,
    input wire [31:0] in_spec_select152_0,
    input wire [31:0] in_spec_select152_1,
    input wire [31:0] in_spec_select323158_0,
    input wire [31:0] in_spec_select323158_1,
    input wire [31:0] in_spec_select324164_0,
    input wire [31:0] in_spec_select324164_1,
    input wire [31:0] in_spec_select325170_0,
    input wire [31:0] in_spec_select325170_1,
    input wire [31:0] in_spec_select326176_0,
    input wire [31:0] in_spec_select326176_1,
    input wire [31:0] in_spec_select327182_0,
    input wire [31:0] in_spec_select327182_1,
    input wire [31:0] in_spec_select328188_0,
    input wire [31:0] in_spec_select328188_1,
    input wire [31:0] in_spec_select329194_0,
    input wire [31:0] in_spec_select329194_1,
    input wire [31:0] in_spec_select330200_0,
    input wire [31:0] in_spec_select330200_1,
    input wire [31:0] in_spec_select331206_0,
    input wire [31:0] in_spec_select331206_1,
    input wire [31:0] in_spec_select332212_0,
    input wire [31:0] in_spec_select332212_1,
    input wire [31:0] in_spec_select333218_0,
    input wire [31:0] in_spec_select333218_1,
    input wire [31:0] in_spec_select334224_0,
    input wire [31:0] in_spec_select334224_1,
    input wire [31:0] in_spec_select335230_0,
    input wire [31:0] in_spec_select335230_1,
    input wire [31:0] in_spec_select336236_0,
    input wire [31:0] in_spec_select336236_1,
    input wire [0:0] in_stall_in,
    input wire [31:0] in_unnamed_conv2d1x16_0,
    input wire [31:0] in_unnamed_conv2d1x16_1,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [0:0] out_forked17,
    output wire [31:0] out_spec_select152,
    output wire [31:0] out_spec_select323158,
    output wire [31:0] out_spec_select324164,
    output wire [31:0] out_spec_select325170,
    output wire [31:0] out_spec_select326176,
    output wire [31:0] out_spec_select327182,
    output wire [31:0] out_spec_select328188,
    output wire [31:0] out_spec_select329194,
    output wire [31:0] out_spec_select330200,
    output wire [31:0] out_spec_select331206,
    output wire [31:0] out_spec_select332212,
    output wire [31:0] out_spec_select333218,
    output wire [31:0] out_spec_select334224,
    output wire [31:0] out_spec_select335230,
    output wire [31:0] out_spec_select336236,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [31:0] out_unnamed_conv2d1x16,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    wire [0:0] forked17_mux_s;
    reg [0:0] forked17_mux_q;
    wire [0:0] spec_select152_mux_s;
    reg [31:0] spec_select152_mux_q;
    wire [0:0] spec_select323158_mux_s;
    reg [31:0] spec_select323158_mux_q;
    wire [0:0] spec_select324164_mux_s;
    reg [31:0] spec_select324164_mux_q;
    wire [0:0] spec_select325170_mux_s;
    reg [31:0] spec_select325170_mux_q;
    wire [0:0] spec_select326176_mux_s;
    reg [31:0] spec_select326176_mux_q;
    wire [0:0] spec_select327182_mux_s;
    reg [31:0] spec_select327182_mux_q;
    wire [0:0] spec_select328188_mux_s;
    reg [31:0] spec_select328188_mux_q;
    wire [0:0] spec_select329194_mux_s;
    reg [31:0] spec_select329194_mux_q;
    wire [0:0] spec_select330200_mux_s;
    reg [31:0] spec_select330200_mux_q;
    wire [0:0] spec_select331206_mux_s;
    reg [31:0] spec_select331206_mux_q;
    wire [0:0] spec_select332212_mux_s;
    reg [31:0] spec_select332212_mux_q;
    wire [0:0] spec_select333218_mux_s;
    reg [31:0] spec_select333218_mux_q;
    wire [0:0] spec_select334224_mux_s;
    reg [31:0] spec_select334224_mux_q;
    wire [0:0] spec_select335230_mux_s;
    reg [31:0] spec_select335230_mux_q;
    wire [0:0] spec_select336236_mux_s;
    reg [31:0] spec_select336236_mux_q;
    wire [0:0] stall_out_q;
    wire [0:0] stall_out_1_specific_q;
    wire [0:0] unnamed_conv2d1x16_mux_s;
    reg [31:0] unnamed_conv2d1x16_mux_q;
    wire [0:0] valid_or_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // forked17_mux(MUX,2)
    assign forked17_mux_s = in_valid_in_0;
    always @(forked17_mux_s or in_forked17_1 or in_forked17_0)
    begin
        unique case (forked17_mux_s)
            1'b0 : forked17_mux_q = in_forked17_1;
            1'b1 : forked17_mux_q = in_forked17_0;
            default : forked17_mux_q = 1'b0;
        endcase
    end

    // out_forked17(GPOUT,40)
    assign out_forked17 = forked17_mux_q;

    // spec_select152_mux(MUX,60)
    assign spec_select152_mux_s = in_valid_in_0;
    always @(spec_select152_mux_s or in_spec_select152_1 or in_spec_select152_0)
    begin
        unique case (spec_select152_mux_s)
            1'b0 : spec_select152_mux_q = in_spec_select152_1;
            1'b1 : spec_select152_mux_q = in_spec_select152_0;
            default : spec_select152_mux_q = 32'b0;
        endcase
    end

    // out_spec_select152(GPOUT,41)
    assign out_spec_select152 = spec_select152_mux_q;

    // spec_select323158_mux(MUX,61)
    assign spec_select323158_mux_s = in_valid_in_0;
    always @(spec_select323158_mux_s or in_spec_select323158_1 or in_spec_select323158_0)
    begin
        unique case (spec_select323158_mux_s)
            1'b0 : spec_select323158_mux_q = in_spec_select323158_1;
            1'b1 : spec_select323158_mux_q = in_spec_select323158_0;
            default : spec_select323158_mux_q = 32'b0;
        endcase
    end

    // out_spec_select323158(GPOUT,42)
    assign out_spec_select323158 = spec_select323158_mux_q;

    // spec_select324164_mux(MUX,62)
    assign spec_select324164_mux_s = in_valid_in_0;
    always @(spec_select324164_mux_s or in_spec_select324164_1 or in_spec_select324164_0)
    begin
        unique case (spec_select324164_mux_s)
            1'b0 : spec_select324164_mux_q = in_spec_select324164_1;
            1'b1 : spec_select324164_mux_q = in_spec_select324164_0;
            default : spec_select324164_mux_q = 32'b0;
        endcase
    end

    // out_spec_select324164(GPOUT,43)
    assign out_spec_select324164 = spec_select324164_mux_q;

    // spec_select325170_mux(MUX,63)
    assign spec_select325170_mux_s = in_valid_in_0;
    always @(spec_select325170_mux_s or in_spec_select325170_1 or in_spec_select325170_0)
    begin
        unique case (spec_select325170_mux_s)
            1'b0 : spec_select325170_mux_q = in_spec_select325170_1;
            1'b1 : spec_select325170_mux_q = in_spec_select325170_0;
            default : spec_select325170_mux_q = 32'b0;
        endcase
    end

    // out_spec_select325170(GPOUT,44)
    assign out_spec_select325170 = spec_select325170_mux_q;

    // spec_select326176_mux(MUX,64)
    assign spec_select326176_mux_s = in_valid_in_0;
    always @(spec_select326176_mux_s or in_spec_select326176_1 or in_spec_select326176_0)
    begin
        unique case (spec_select326176_mux_s)
            1'b0 : spec_select326176_mux_q = in_spec_select326176_1;
            1'b1 : spec_select326176_mux_q = in_spec_select326176_0;
            default : spec_select326176_mux_q = 32'b0;
        endcase
    end

    // out_spec_select326176(GPOUT,45)
    assign out_spec_select326176 = spec_select326176_mux_q;

    // spec_select327182_mux(MUX,65)
    assign spec_select327182_mux_s = in_valid_in_0;
    always @(spec_select327182_mux_s or in_spec_select327182_1 or in_spec_select327182_0)
    begin
        unique case (spec_select327182_mux_s)
            1'b0 : spec_select327182_mux_q = in_spec_select327182_1;
            1'b1 : spec_select327182_mux_q = in_spec_select327182_0;
            default : spec_select327182_mux_q = 32'b0;
        endcase
    end

    // out_spec_select327182(GPOUT,46)
    assign out_spec_select327182 = spec_select327182_mux_q;

    // spec_select328188_mux(MUX,66)
    assign spec_select328188_mux_s = in_valid_in_0;
    always @(spec_select328188_mux_s or in_spec_select328188_1 or in_spec_select328188_0)
    begin
        unique case (spec_select328188_mux_s)
            1'b0 : spec_select328188_mux_q = in_spec_select328188_1;
            1'b1 : spec_select328188_mux_q = in_spec_select328188_0;
            default : spec_select328188_mux_q = 32'b0;
        endcase
    end

    // out_spec_select328188(GPOUT,47)
    assign out_spec_select328188 = spec_select328188_mux_q;

    // spec_select329194_mux(MUX,67)
    assign spec_select329194_mux_s = in_valid_in_0;
    always @(spec_select329194_mux_s or in_spec_select329194_1 or in_spec_select329194_0)
    begin
        unique case (spec_select329194_mux_s)
            1'b0 : spec_select329194_mux_q = in_spec_select329194_1;
            1'b1 : spec_select329194_mux_q = in_spec_select329194_0;
            default : spec_select329194_mux_q = 32'b0;
        endcase
    end

    // out_spec_select329194(GPOUT,48)
    assign out_spec_select329194 = spec_select329194_mux_q;

    // spec_select330200_mux(MUX,68)
    assign spec_select330200_mux_s = in_valid_in_0;
    always @(spec_select330200_mux_s or in_spec_select330200_1 or in_spec_select330200_0)
    begin
        unique case (spec_select330200_mux_s)
            1'b0 : spec_select330200_mux_q = in_spec_select330200_1;
            1'b1 : spec_select330200_mux_q = in_spec_select330200_0;
            default : spec_select330200_mux_q = 32'b0;
        endcase
    end

    // out_spec_select330200(GPOUT,49)
    assign out_spec_select330200 = spec_select330200_mux_q;

    // spec_select331206_mux(MUX,69)
    assign spec_select331206_mux_s = in_valid_in_0;
    always @(spec_select331206_mux_s or in_spec_select331206_1 or in_spec_select331206_0)
    begin
        unique case (spec_select331206_mux_s)
            1'b0 : spec_select331206_mux_q = in_spec_select331206_1;
            1'b1 : spec_select331206_mux_q = in_spec_select331206_0;
            default : spec_select331206_mux_q = 32'b0;
        endcase
    end

    // out_spec_select331206(GPOUT,50)
    assign out_spec_select331206 = spec_select331206_mux_q;

    // spec_select332212_mux(MUX,70)
    assign spec_select332212_mux_s = in_valid_in_0;
    always @(spec_select332212_mux_s or in_spec_select332212_1 or in_spec_select332212_0)
    begin
        unique case (spec_select332212_mux_s)
            1'b0 : spec_select332212_mux_q = in_spec_select332212_1;
            1'b1 : spec_select332212_mux_q = in_spec_select332212_0;
            default : spec_select332212_mux_q = 32'b0;
        endcase
    end

    // out_spec_select332212(GPOUT,51)
    assign out_spec_select332212 = spec_select332212_mux_q;

    // spec_select333218_mux(MUX,71)
    assign spec_select333218_mux_s = in_valid_in_0;
    always @(spec_select333218_mux_s or in_spec_select333218_1 or in_spec_select333218_0)
    begin
        unique case (spec_select333218_mux_s)
            1'b0 : spec_select333218_mux_q = in_spec_select333218_1;
            1'b1 : spec_select333218_mux_q = in_spec_select333218_0;
            default : spec_select333218_mux_q = 32'b0;
        endcase
    end

    // out_spec_select333218(GPOUT,52)
    assign out_spec_select333218 = spec_select333218_mux_q;

    // spec_select334224_mux(MUX,72)
    assign spec_select334224_mux_s = in_valid_in_0;
    always @(spec_select334224_mux_s or in_spec_select334224_1 or in_spec_select334224_0)
    begin
        unique case (spec_select334224_mux_s)
            1'b0 : spec_select334224_mux_q = in_spec_select334224_1;
            1'b1 : spec_select334224_mux_q = in_spec_select334224_0;
            default : spec_select334224_mux_q = 32'b0;
        endcase
    end

    // out_spec_select334224(GPOUT,53)
    assign out_spec_select334224 = spec_select334224_mux_q;

    // spec_select335230_mux(MUX,73)
    assign spec_select335230_mux_s = in_valid_in_0;
    always @(spec_select335230_mux_s or in_spec_select335230_1 or in_spec_select335230_0)
    begin
        unique case (spec_select335230_mux_s)
            1'b0 : spec_select335230_mux_q = in_spec_select335230_1;
            1'b1 : spec_select335230_mux_q = in_spec_select335230_0;
            default : spec_select335230_mux_q = 32'b0;
        endcase
    end

    // out_spec_select335230(GPOUT,54)
    assign out_spec_select335230 = spec_select335230_mux_q;

    // spec_select336236_mux(MUX,74)
    assign spec_select336236_mux_s = in_valid_in_0;
    always @(spec_select336236_mux_s or in_spec_select336236_1 or in_spec_select336236_0)
    begin
        unique case (spec_select336236_mux_s)
            1'b0 : spec_select336236_mux_q = in_spec_select336236_1;
            1'b1 : spec_select336236_mux_q = in_spec_select336236_0;
            default : spec_select336236_mux_q = 32'b0;
        endcase
    end

    // out_spec_select336236(GPOUT,55)
    assign out_spec_select336236 = spec_select336236_mux_q;

    // valid_or(LOGICAL,78)
    assign valid_or_q = in_valid_in_0 | in_valid_in_1;

    // stall_out(LOGICAL,75)
    assign stall_out_q = valid_or_q & in_stall_in;

    // out_stall_out_0(GPOUT,56)
    assign out_stall_out_0 = stall_out_q;

    // stall_out_1_specific(LOGICAL,76)
    assign stall_out_1_specific_q = in_valid_in_0 | stall_out_q;

    // out_stall_out_1(GPOUT,57)
    assign out_stall_out_1 = stall_out_1_specific_q;

    // unnamed_conv2d1x16_mux(MUX,77)
    assign unnamed_conv2d1x16_mux_s = in_valid_in_0;
    always @(unnamed_conv2d1x16_mux_s or in_unnamed_conv2d1x16_1 or in_unnamed_conv2d1x16_0)
    begin
        unique case (unnamed_conv2d1x16_mux_s)
            1'b0 : unnamed_conv2d1x16_mux_q = in_unnamed_conv2d1x16_1;
            1'b1 : unnamed_conv2d1x16_mux_q = in_unnamed_conv2d1x16_0;
            default : unnamed_conv2d1x16_mux_q = 32'b0;
        endcase
    end

    // out_unnamed_conv2d1x16(GPOUT,58)
    assign out_unnamed_conv2d1x16 = unnamed_conv2d1x16_mux_q;

    // out_valid_out(GPOUT,59)
    assign out_valid_out = valid_or_q;

endmodule
