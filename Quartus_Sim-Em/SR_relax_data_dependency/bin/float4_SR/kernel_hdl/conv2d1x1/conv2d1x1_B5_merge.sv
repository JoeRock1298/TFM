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

// SystemVerilog created from conv2d1x1_B5_merge
// SystemVerilog created on Tue May 23 20:43:36 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2d1x1_B5_merge (
    input wire [0:0] in_forked17242_0,
    input wire [0:0] in_forked17242_1,
    input wire [0:0] in_forked59_0,
    input wire [0:0] in_forked59_1,
    input wire [31:0] in_lm96251_0,
    input wire [31:0] in_lm96251_1,
    input wire [31:0] in_mul21254_0,
    input wire [31:0] in_mul21254_1,
    input wire [31:0] in_mul245_0,
    input wire [31:0] in_mul245_1,
    input wire [31:0] in_mul97257_0,
    input wire [31:0] in_mul97257_1,
    input wire [0:0] in_notcmp24260_0,
    input wire [0:0] in_notcmp24260_1,
    input wire [0:0] in_phi_decision102_xor248_0,
    input wire [0:0] in_phi_decision102_xor248_1,
    input wire [31:0] in_pop12266_0,
    input wire [31:0] in_pop12266_1,
    input wire [31:0] in_spec_select156_0,
    input wire [31:0] in_spec_select156_1,
    input wire [31:0] in_spec_select323162_0,
    input wire [31:0] in_spec_select323162_1,
    input wire [31:0] in_spec_select32363_pop13269_0,
    input wire [31:0] in_spec_select32363_pop13269_1,
    input wire [31:0] in_spec_select324168_0,
    input wire [31:0] in_spec_select324168_1,
    input wire [31:0] in_spec_select32466_pop14272_0,
    input wire [31:0] in_spec_select32466_pop14272_1,
    input wire [31:0] in_spec_select325174_0,
    input wire [31:0] in_spec_select325174_1,
    input wire [31:0] in_spec_select32569_pop15275_0,
    input wire [31:0] in_spec_select32569_pop15275_1,
    input wire [31:0] in_spec_select326180_0,
    input wire [31:0] in_spec_select326180_1,
    input wire [31:0] in_spec_select32672_pop16278_0,
    input wire [31:0] in_spec_select32672_pop16278_1,
    input wire [31:0] in_spec_select327186_0,
    input wire [31:0] in_spec_select327186_1,
    input wire [31:0] in_spec_select32775_pop17281_0,
    input wire [31:0] in_spec_select32775_pop17281_1,
    input wire [31:0] in_spec_select328192_0,
    input wire [31:0] in_spec_select328192_1,
    input wire [31:0] in_spec_select32878_pop18284_0,
    input wire [31:0] in_spec_select32878_pop18284_1,
    input wire [31:0] in_spec_select329198_0,
    input wire [31:0] in_spec_select329198_1,
    input wire [31:0] in_spec_select32981_pop19287_0,
    input wire [31:0] in_spec_select32981_pop19287_1,
    input wire [31:0] in_spec_select330204_0,
    input wire [31:0] in_spec_select330204_1,
    input wire [31:0] in_spec_select33084_pop20290_0,
    input wire [31:0] in_spec_select33084_pop20290_1,
    input wire [31:0] in_spec_select331210_0,
    input wire [31:0] in_spec_select331210_1,
    input wire [31:0] in_spec_select33187_pop21293_0,
    input wire [31:0] in_spec_select33187_pop21293_1,
    input wire [31:0] in_spec_select332216_0,
    input wire [31:0] in_spec_select332216_1,
    input wire [31:0] in_spec_select33290_pop22296_0,
    input wire [31:0] in_spec_select33290_pop22296_1,
    input wire [31:0] in_spec_select333222_0,
    input wire [31:0] in_spec_select333222_1,
    input wire [31:0] in_spec_select33393_pop23299_0,
    input wire [31:0] in_spec_select33393_pop23299_1,
    input wire [31:0] in_spec_select334228_0,
    input wire [31:0] in_spec_select334228_1,
    input wire [31:0] in_spec_select33496_pop24303_0,
    input wire [31:0] in_spec_select33496_pop24303_1,
    input wire [31:0] in_spec_select335234_0,
    input wire [31:0] in_spec_select335234_1,
    input wire [31:0] in_spec_select33599_pop25306_0,
    input wire [31:0] in_spec_select33599_pop25306_1,
    input wire [31:0] in_spec_select336102_pop26309_0,
    input wire [31:0] in_spec_select336102_pop26309_1,
    input wire [31:0] in_spec_select336240_0,
    input wire [31:0] in_spec_select336240_1,
    input wire [31:0] in_spec_select60_pop11263_0,
    input wire [31:0] in_spec_select60_pop11263_1,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_unnamed_conv2d1x110_0,
    input wire [0:0] in_unnamed_conv2d1x110_1,
    input wire [32:0] in_unnamed_conv2d1x111_0,
    input wire [32:0] in_unnamed_conv2d1x111_1,
    input wire [0:0] in_unnamed_conv2d1x112_0,
    input wire [0:0] in_unnamed_conv2d1x112_1,
    input wire [31:0] in_unnamed_conv2d1x18_0,
    input wire [31:0] in_unnamed_conv2d1x18_1,
    input wire [0:0] in_unnamed_conv2d1x19_0,
    input wire [0:0] in_unnamed_conv2d1x19_1,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [0:0] out_forked17242,
    output wire [0:0] out_forked59,
    output wire [31:0] out_lm96251,
    output wire [31:0] out_mul21254,
    output wire [31:0] out_mul245,
    output wire [31:0] out_mul97257,
    output wire [0:0] out_notcmp24260,
    output wire [0:0] out_phi_decision102_xor248,
    output wire [31:0] out_pop12266,
    output wire [31:0] out_spec_select156,
    output wire [31:0] out_spec_select323162,
    output wire [31:0] out_spec_select32363_pop13269,
    output wire [31:0] out_spec_select324168,
    output wire [31:0] out_spec_select32466_pop14272,
    output wire [31:0] out_spec_select325174,
    output wire [31:0] out_spec_select32569_pop15275,
    output wire [31:0] out_spec_select326180,
    output wire [31:0] out_spec_select32672_pop16278,
    output wire [31:0] out_spec_select327186,
    output wire [31:0] out_spec_select32775_pop17281,
    output wire [31:0] out_spec_select328192,
    output wire [31:0] out_spec_select32878_pop18284,
    output wire [31:0] out_spec_select329198,
    output wire [31:0] out_spec_select32981_pop19287,
    output wire [31:0] out_spec_select330204,
    output wire [31:0] out_spec_select33084_pop20290,
    output wire [31:0] out_spec_select331210,
    output wire [31:0] out_spec_select33187_pop21293,
    output wire [31:0] out_spec_select332216,
    output wire [31:0] out_spec_select33290_pop22296,
    output wire [31:0] out_spec_select333222,
    output wire [31:0] out_spec_select33393_pop23299,
    output wire [31:0] out_spec_select334228,
    output wire [31:0] out_spec_select33496_pop24303,
    output wire [31:0] out_spec_select335234,
    output wire [31:0] out_spec_select33599_pop25306,
    output wire [31:0] out_spec_select336102_pop26309,
    output wire [31:0] out_spec_select336240,
    output wire [31:0] out_spec_select60_pop11263,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [0:0] out_unnamed_conv2d1x110,
    output wire [32:0] out_unnamed_conv2d1x111,
    output wire [0:0] out_unnamed_conv2d1x112,
    output wire [31:0] out_unnamed_conv2d1x18,
    output wire [0:0] out_unnamed_conv2d1x19,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    wire [0:0] forked17242_mux_s;
    reg [0:0] forked17242_mux_q;
    wire [0:0] forked59_mux_s;
    reg [0:0] forked59_mux_q;
    wire [0:0] lm96251_mux_s;
    reg [31:0] lm96251_mux_q;
    wire [0:0] mul21254_mux_s;
    reg [31:0] mul21254_mux_q;
    wire [0:0] mul245_mux_s;
    reg [31:0] mul245_mux_q;
    wire [0:0] mul97257_mux_s;
    reg [31:0] mul97257_mux_q;
    wire [0:0] notcmp24260_mux_s;
    reg [0:0] notcmp24260_mux_q;
    wire [0:0] phi_decision102_xor248_mux_s;
    reg [0:0] phi_decision102_xor248_mux_q;
    wire [0:0] pop12266_mux_s;
    reg [31:0] pop12266_mux_q;
    wire [0:0] spec_select156_mux_s;
    reg [31:0] spec_select156_mux_q;
    wire [0:0] spec_select323162_mux_s;
    reg [31:0] spec_select323162_mux_q;
    wire [0:0] spec_select32363_pop13269_mux_s;
    reg [31:0] spec_select32363_pop13269_mux_q;
    wire [0:0] spec_select324168_mux_s;
    reg [31:0] spec_select324168_mux_q;
    wire [0:0] spec_select32466_pop14272_mux_s;
    reg [31:0] spec_select32466_pop14272_mux_q;
    wire [0:0] spec_select325174_mux_s;
    reg [31:0] spec_select325174_mux_q;
    wire [0:0] spec_select32569_pop15275_mux_s;
    reg [31:0] spec_select32569_pop15275_mux_q;
    wire [0:0] spec_select326180_mux_s;
    reg [31:0] spec_select326180_mux_q;
    wire [0:0] spec_select32672_pop16278_mux_s;
    reg [31:0] spec_select32672_pop16278_mux_q;
    wire [0:0] spec_select327186_mux_s;
    reg [31:0] spec_select327186_mux_q;
    wire [0:0] spec_select32775_pop17281_mux_s;
    reg [31:0] spec_select32775_pop17281_mux_q;
    wire [0:0] spec_select328192_mux_s;
    reg [31:0] spec_select328192_mux_q;
    wire [0:0] spec_select32878_pop18284_mux_s;
    reg [31:0] spec_select32878_pop18284_mux_q;
    wire [0:0] spec_select329198_mux_s;
    reg [31:0] spec_select329198_mux_q;
    wire [0:0] spec_select32981_pop19287_mux_s;
    reg [31:0] spec_select32981_pop19287_mux_q;
    wire [0:0] spec_select330204_mux_s;
    reg [31:0] spec_select330204_mux_q;
    wire [0:0] spec_select33084_pop20290_mux_s;
    reg [31:0] spec_select33084_pop20290_mux_q;
    wire [0:0] spec_select331210_mux_s;
    reg [31:0] spec_select331210_mux_q;
    wire [0:0] spec_select33187_pop21293_mux_s;
    reg [31:0] spec_select33187_pop21293_mux_q;
    wire [0:0] spec_select332216_mux_s;
    reg [31:0] spec_select332216_mux_q;
    wire [0:0] spec_select33290_pop22296_mux_s;
    reg [31:0] spec_select33290_pop22296_mux_q;
    wire [0:0] spec_select333222_mux_s;
    reg [31:0] spec_select333222_mux_q;
    wire [0:0] spec_select33393_pop23299_mux_s;
    reg [31:0] spec_select33393_pop23299_mux_q;
    wire [0:0] spec_select334228_mux_s;
    reg [31:0] spec_select334228_mux_q;
    wire [0:0] spec_select33496_pop24303_mux_s;
    reg [31:0] spec_select33496_pop24303_mux_q;
    wire [0:0] spec_select335234_mux_s;
    reg [31:0] spec_select335234_mux_q;
    wire [0:0] spec_select33599_pop25306_mux_s;
    reg [31:0] spec_select33599_pop25306_mux_q;
    wire [0:0] spec_select336102_pop26309_mux_s;
    reg [31:0] spec_select336102_pop26309_mux_q;
    wire [0:0] spec_select336240_mux_s;
    reg [31:0] spec_select336240_mux_q;
    wire [0:0] spec_select60_pop11263_mux_s;
    reg [31:0] spec_select60_pop11263_mux_q;
    wire [0:0] stall_out_q;
    wire [0:0] stall_out_1_specific_q;
    wire [0:0] unnamed_conv2d1x110_mux_s;
    reg [0:0] unnamed_conv2d1x110_mux_q;
    wire [0:0] unnamed_conv2d1x111_mux_s;
    reg [32:0] unnamed_conv2d1x111_mux_q;
    wire [0:0] unnamed_conv2d1x112_mux_s;
    reg [0:0] unnamed_conv2d1x112_mux_q;
    wire [0:0] unnamed_conv2d1x18_mux_s;
    reg [31:0] unnamed_conv2d1x18_mux_q;
    wire [0:0] unnamed_conv2d1x19_mux_s;
    reg [0:0] unnamed_conv2d1x19_mux_q;
    wire [0:0] valid_or_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // forked17242_mux(MUX,2)
    assign forked17242_mux_s = in_valid_in_0;
    always @(forked17242_mux_s or in_forked17242_1 or in_forked17242_0)
    begin
        unique case (forked17242_mux_s)
            1'b0 : forked17242_mux_q = in_forked17242_1;
            1'b1 : forked17242_mux_q = in_forked17242_0;
            default : forked17242_mux_q = 1'b0;
        endcase
    end

    // out_forked17242(GPOUT,100)
    assign out_forked17242 = forked17242_mux_q;

    // forked59_mux(MUX,3)
    assign forked59_mux_s = in_valid_in_0;
    always @(forked59_mux_s or in_forked59_1 or in_forked59_0)
    begin
        unique case (forked59_mux_s)
            1'b0 : forked59_mux_q = in_forked59_1;
            1'b1 : forked59_mux_q = in_forked59_0;
            default : forked59_mux_q = 1'b0;
        endcase
    end

    // out_forked59(GPOUT,101)
    assign out_forked59 = forked59_mux_q;

    // lm96251_mux(MUX,95)
    assign lm96251_mux_s = in_valid_in_0;
    always @(lm96251_mux_s or in_lm96251_1 or in_lm96251_0)
    begin
        unique case (lm96251_mux_s)
            1'b0 : lm96251_mux_q = in_lm96251_1;
            1'b1 : lm96251_mux_q = in_lm96251_0;
            default : lm96251_mux_q = 32'b0;
        endcase
    end

    // out_lm96251(GPOUT,102)
    assign out_lm96251 = lm96251_mux_q;

    // mul21254_mux(MUX,96)
    assign mul21254_mux_s = in_valid_in_0;
    always @(mul21254_mux_s or in_mul21254_1 or in_mul21254_0)
    begin
        unique case (mul21254_mux_s)
            1'b0 : mul21254_mux_q = in_mul21254_1;
            1'b1 : mul21254_mux_q = in_mul21254_0;
            default : mul21254_mux_q = 32'b0;
        endcase
    end

    // out_mul21254(GPOUT,103)
    assign out_mul21254 = mul21254_mux_q;

    // mul245_mux(MUX,97)
    assign mul245_mux_s = in_valid_in_0;
    always @(mul245_mux_s or in_mul245_1 or in_mul245_0)
    begin
        unique case (mul245_mux_s)
            1'b0 : mul245_mux_q = in_mul245_1;
            1'b1 : mul245_mux_q = in_mul245_0;
            default : mul245_mux_q = 32'b0;
        endcase
    end

    // out_mul245(GPOUT,104)
    assign out_mul245 = mul245_mux_q;

    // mul97257_mux(MUX,98)
    assign mul97257_mux_s = in_valid_in_0;
    always @(mul97257_mux_s or in_mul97257_1 or in_mul97257_0)
    begin
        unique case (mul97257_mux_s)
            1'b0 : mul97257_mux_q = in_mul97257_1;
            1'b1 : mul97257_mux_q = in_mul97257_0;
            default : mul97257_mux_q = 32'b0;
        endcase
    end

    // out_mul97257(GPOUT,105)
    assign out_mul97257 = mul97257_mux_q;

    // notcmp24260_mux(MUX,99)
    assign notcmp24260_mux_s = in_valid_in_0;
    always @(notcmp24260_mux_s or in_notcmp24260_1 or in_notcmp24260_0)
    begin
        unique case (notcmp24260_mux_s)
            1'b0 : notcmp24260_mux_q = in_notcmp24260_1;
            1'b1 : notcmp24260_mux_q = in_notcmp24260_0;
            default : notcmp24260_mux_q = 1'b0;
        endcase
    end

    // out_notcmp24260(GPOUT,106)
    assign out_notcmp24260 = notcmp24260_mux_q;

    // phi_decision102_xor248_mux(MUX,147)
    assign phi_decision102_xor248_mux_s = in_valid_in_0;
    always @(phi_decision102_xor248_mux_s or in_phi_decision102_xor248_1 or in_phi_decision102_xor248_0)
    begin
        unique case (phi_decision102_xor248_mux_s)
            1'b0 : phi_decision102_xor248_mux_q = in_phi_decision102_xor248_1;
            1'b1 : phi_decision102_xor248_mux_q = in_phi_decision102_xor248_0;
            default : phi_decision102_xor248_mux_q = 1'b0;
        endcase
    end

    // out_phi_decision102_xor248(GPOUT,107)
    assign out_phi_decision102_xor248 = phi_decision102_xor248_mux_q;

    // pop12266_mux(MUX,148)
    assign pop12266_mux_s = in_valid_in_0;
    always @(pop12266_mux_s or in_pop12266_1 or in_pop12266_0)
    begin
        unique case (pop12266_mux_s)
            1'b0 : pop12266_mux_q = in_pop12266_1;
            1'b1 : pop12266_mux_q = in_pop12266_0;
            default : pop12266_mux_q = 32'b0;
        endcase
    end

    // out_pop12266(GPOUT,108)
    assign out_pop12266 = pop12266_mux_q;

    // spec_select156_mux(MUX,149)
    assign spec_select156_mux_s = in_valid_in_0;
    always @(spec_select156_mux_s or in_spec_select156_1 or in_spec_select156_0)
    begin
        unique case (spec_select156_mux_s)
            1'b0 : spec_select156_mux_q = in_spec_select156_1;
            1'b1 : spec_select156_mux_q = in_spec_select156_0;
            default : spec_select156_mux_q = 32'b0;
        endcase
    end

    // out_spec_select156(GPOUT,109)
    assign out_spec_select156 = spec_select156_mux_q;

    // spec_select323162_mux(MUX,150)
    assign spec_select323162_mux_s = in_valid_in_0;
    always @(spec_select323162_mux_s or in_spec_select323162_1 or in_spec_select323162_0)
    begin
        unique case (spec_select323162_mux_s)
            1'b0 : spec_select323162_mux_q = in_spec_select323162_1;
            1'b1 : spec_select323162_mux_q = in_spec_select323162_0;
            default : spec_select323162_mux_q = 32'b0;
        endcase
    end

    // out_spec_select323162(GPOUT,110)
    assign out_spec_select323162 = spec_select323162_mux_q;

    // spec_select32363_pop13269_mux(MUX,151)
    assign spec_select32363_pop13269_mux_s = in_valid_in_0;
    always @(spec_select32363_pop13269_mux_s or in_spec_select32363_pop13269_1 or in_spec_select32363_pop13269_0)
    begin
        unique case (spec_select32363_pop13269_mux_s)
            1'b0 : spec_select32363_pop13269_mux_q = in_spec_select32363_pop13269_1;
            1'b1 : spec_select32363_pop13269_mux_q = in_spec_select32363_pop13269_0;
            default : spec_select32363_pop13269_mux_q = 32'b0;
        endcase
    end

    // out_spec_select32363_pop13269(GPOUT,111)
    assign out_spec_select32363_pop13269 = spec_select32363_pop13269_mux_q;

    // spec_select324168_mux(MUX,152)
    assign spec_select324168_mux_s = in_valid_in_0;
    always @(spec_select324168_mux_s or in_spec_select324168_1 or in_spec_select324168_0)
    begin
        unique case (spec_select324168_mux_s)
            1'b0 : spec_select324168_mux_q = in_spec_select324168_1;
            1'b1 : spec_select324168_mux_q = in_spec_select324168_0;
            default : spec_select324168_mux_q = 32'b0;
        endcase
    end

    // out_spec_select324168(GPOUT,112)
    assign out_spec_select324168 = spec_select324168_mux_q;

    // spec_select32466_pop14272_mux(MUX,153)
    assign spec_select32466_pop14272_mux_s = in_valid_in_0;
    always @(spec_select32466_pop14272_mux_s or in_spec_select32466_pop14272_1 or in_spec_select32466_pop14272_0)
    begin
        unique case (spec_select32466_pop14272_mux_s)
            1'b0 : spec_select32466_pop14272_mux_q = in_spec_select32466_pop14272_1;
            1'b1 : spec_select32466_pop14272_mux_q = in_spec_select32466_pop14272_0;
            default : spec_select32466_pop14272_mux_q = 32'b0;
        endcase
    end

    // out_spec_select32466_pop14272(GPOUT,113)
    assign out_spec_select32466_pop14272 = spec_select32466_pop14272_mux_q;

    // spec_select325174_mux(MUX,154)
    assign spec_select325174_mux_s = in_valid_in_0;
    always @(spec_select325174_mux_s or in_spec_select325174_1 or in_spec_select325174_0)
    begin
        unique case (spec_select325174_mux_s)
            1'b0 : spec_select325174_mux_q = in_spec_select325174_1;
            1'b1 : spec_select325174_mux_q = in_spec_select325174_0;
            default : spec_select325174_mux_q = 32'b0;
        endcase
    end

    // out_spec_select325174(GPOUT,114)
    assign out_spec_select325174 = spec_select325174_mux_q;

    // spec_select32569_pop15275_mux(MUX,155)
    assign spec_select32569_pop15275_mux_s = in_valid_in_0;
    always @(spec_select32569_pop15275_mux_s or in_spec_select32569_pop15275_1 or in_spec_select32569_pop15275_0)
    begin
        unique case (spec_select32569_pop15275_mux_s)
            1'b0 : spec_select32569_pop15275_mux_q = in_spec_select32569_pop15275_1;
            1'b1 : spec_select32569_pop15275_mux_q = in_spec_select32569_pop15275_0;
            default : spec_select32569_pop15275_mux_q = 32'b0;
        endcase
    end

    // out_spec_select32569_pop15275(GPOUT,115)
    assign out_spec_select32569_pop15275 = spec_select32569_pop15275_mux_q;

    // spec_select326180_mux(MUX,156)
    assign spec_select326180_mux_s = in_valid_in_0;
    always @(spec_select326180_mux_s or in_spec_select326180_1 or in_spec_select326180_0)
    begin
        unique case (spec_select326180_mux_s)
            1'b0 : spec_select326180_mux_q = in_spec_select326180_1;
            1'b1 : spec_select326180_mux_q = in_spec_select326180_0;
            default : spec_select326180_mux_q = 32'b0;
        endcase
    end

    // out_spec_select326180(GPOUT,116)
    assign out_spec_select326180 = spec_select326180_mux_q;

    // spec_select32672_pop16278_mux(MUX,157)
    assign spec_select32672_pop16278_mux_s = in_valid_in_0;
    always @(spec_select32672_pop16278_mux_s or in_spec_select32672_pop16278_1 or in_spec_select32672_pop16278_0)
    begin
        unique case (spec_select32672_pop16278_mux_s)
            1'b0 : spec_select32672_pop16278_mux_q = in_spec_select32672_pop16278_1;
            1'b1 : spec_select32672_pop16278_mux_q = in_spec_select32672_pop16278_0;
            default : spec_select32672_pop16278_mux_q = 32'b0;
        endcase
    end

    // out_spec_select32672_pop16278(GPOUT,117)
    assign out_spec_select32672_pop16278 = spec_select32672_pop16278_mux_q;

    // spec_select327186_mux(MUX,158)
    assign spec_select327186_mux_s = in_valid_in_0;
    always @(spec_select327186_mux_s or in_spec_select327186_1 or in_spec_select327186_0)
    begin
        unique case (spec_select327186_mux_s)
            1'b0 : spec_select327186_mux_q = in_spec_select327186_1;
            1'b1 : spec_select327186_mux_q = in_spec_select327186_0;
            default : spec_select327186_mux_q = 32'b0;
        endcase
    end

    // out_spec_select327186(GPOUT,118)
    assign out_spec_select327186 = spec_select327186_mux_q;

    // spec_select32775_pop17281_mux(MUX,159)
    assign spec_select32775_pop17281_mux_s = in_valid_in_0;
    always @(spec_select32775_pop17281_mux_s or in_spec_select32775_pop17281_1 or in_spec_select32775_pop17281_0)
    begin
        unique case (spec_select32775_pop17281_mux_s)
            1'b0 : spec_select32775_pop17281_mux_q = in_spec_select32775_pop17281_1;
            1'b1 : spec_select32775_pop17281_mux_q = in_spec_select32775_pop17281_0;
            default : spec_select32775_pop17281_mux_q = 32'b0;
        endcase
    end

    // out_spec_select32775_pop17281(GPOUT,119)
    assign out_spec_select32775_pop17281 = spec_select32775_pop17281_mux_q;

    // spec_select328192_mux(MUX,160)
    assign spec_select328192_mux_s = in_valid_in_0;
    always @(spec_select328192_mux_s or in_spec_select328192_1 or in_spec_select328192_0)
    begin
        unique case (spec_select328192_mux_s)
            1'b0 : spec_select328192_mux_q = in_spec_select328192_1;
            1'b1 : spec_select328192_mux_q = in_spec_select328192_0;
            default : spec_select328192_mux_q = 32'b0;
        endcase
    end

    // out_spec_select328192(GPOUT,120)
    assign out_spec_select328192 = spec_select328192_mux_q;

    // spec_select32878_pop18284_mux(MUX,161)
    assign spec_select32878_pop18284_mux_s = in_valid_in_0;
    always @(spec_select32878_pop18284_mux_s or in_spec_select32878_pop18284_1 or in_spec_select32878_pop18284_0)
    begin
        unique case (spec_select32878_pop18284_mux_s)
            1'b0 : spec_select32878_pop18284_mux_q = in_spec_select32878_pop18284_1;
            1'b1 : spec_select32878_pop18284_mux_q = in_spec_select32878_pop18284_0;
            default : spec_select32878_pop18284_mux_q = 32'b0;
        endcase
    end

    // out_spec_select32878_pop18284(GPOUT,121)
    assign out_spec_select32878_pop18284 = spec_select32878_pop18284_mux_q;

    // spec_select329198_mux(MUX,162)
    assign spec_select329198_mux_s = in_valid_in_0;
    always @(spec_select329198_mux_s or in_spec_select329198_1 or in_spec_select329198_0)
    begin
        unique case (spec_select329198_mux_s)
            1'b0 : spec_select329198_mux_q = in_spec_select329198_1;
            1'b1 : spec_select329198_mux_q = in_spec_select329198_0;
            default : spec_select329198_mux_q = 32'b0;
        endcase
    end

    // out_spec_select329198(GPOUT,122)
    assign out_spec_select329198 = spec_select329198_mux_q;

    // spec_select32981_pop19287_mux(MUX,163)
    assign spec_select32981_pop19287_mux_s = in_valid_in_0;
    always @(spec_select32981_pop19287_mux_s or in_spec_select32981_pop19287_1 or in_spec_select32981_pop19287_0)
    begin
        unique case (spec_select32981_pop19287_mux_s)
            1'b0 : spec_select32981_pop19287_mux_q = in_spec_select32981_pop19287_1;
            1'b1 : spec_select32981_pop19287_mux_q = in_spec_select32981_pop19287_0;
            default : spec_select32981_pop19287_mux_q = 32'b0;
        endcase
    end

    // out_spec_select32981_pop19287(GPOUT,123)
    assign out_spec_select32981_pop19287 = spec_select32981_pop19287_mux_q;

    // spec_select330204_mux(MUX,164)
    assign spec_select330204_mux_s = in_valid_in_0;
    always @(spec_select330204_mux_s or in_spec_select330204_1 or in_spec_select330204_0)
    begin
        unique case (spec_select330204_mux_s)
            1'b0 : spec_select330204_mux_q = in_spec_select330204_1;
            1'b1 : spec_select330204_mux_q = in_spec_select330204_0;
            default : spec_select330204_mux_q = 32'b0;
        endcase
    end

    // out_spec_select330204(GPOUT,124)
    assign out_spec_select330204 = spec_select330204_mux_q;

    // spec_select33084_pop20290_mux(MUX,165)
    assign spec_select33084_pop20290_mux_s = in_valid_in_0;
    always @(spec_select33084_pop20290_mux_s or in_spec_select33084_pop20290_1 or in_spec_select33084_pop20290_0)
    begin
        unique case (spec_select33084_pop20290_mux_s)
            1'b0 : spec_select33084_pop20290_mux_q = in_spec_select33084_pop20290_1;
            1'b1 : spec_select33084_pop20290_mux_q = in_spec_select33084_pop20290_0;
            default : spec_select33084_pop20290_mux_q = 32'b0;
        endcase
    end

    // out_spec_select33084_pop20290(GPOUT,125)
    assign out_spec_select33084_pop20290 = spec_select33084_pop20290_mux_q;

    // spec_select331210_mux(MUX,166)
    assign spec_select331210_mux_s = in_valid_in_0;
    always @(spec_select331210_mux_s or in_spec_select331210_1 or in_spec_select331210_0)
    begin
        unique case (spec_select331210_mux_s)
            1'b0 : spec_select331210_mux_q = in_spec_select331210_1;
            1'b1 : spec_select331210_mux_q = in_spec_select331210_0;
            default : spec_select331210_mux_q = 32'b0;
        endcase
    end

    // out_spec_select331210(GPOUT,126)
    assign out_spec_select331210 = spec_select331210_mux_q;

    // spec_select33187_pop21293_mux(MUX,167)
    assign spec_select33187_pop21293_mux_s = in_valid_in_0;
    always @(spec_select33187_pop21293_mux_s or in_spec_select33187_pop21293_1 or in_spec_select33187_pop21293_0)
    begin
        unique case (spec_select33187_pop21293_mux_s)
            1'b0 : spec_select33187_pop21293_mux_q = in_spec_select33187_pop21293_1;
            1'b1 : spec_select33187_pop21293_mux_q = in_spec_select33187_pop21293_0;
            default : spec_select33187_pop21293_mux_q = 32'b0;
        endcase
    end

    // out_spec_select33187_pop21293(GPOUT,127)
    assign out_spec_select33187_pop21293 = spec_select33187_pop21293_mux_q;

    // spec_select332216_mux(MUX,168)
    assign spec_select332216_mux_s = in_valid_in_0;
    always @(spec_select332216_mux_s or in_spec_select332216_1 or in_spec_select332216_0)
    begin
        unique case (spec_select332216_mux_s)
            1'b0 : spec_select332216_mux_q = in_spec_select332216_1;
            1'b1 : spec_select332216_mux_q = in_spec_select332216_0;
            default : spec_select332216_mux_q = 32'b0;
        endcase
    end

    // out_spec_select332216(GPOUT,128)
    assign out_spec_select332216 = spec_select332216_mux_q;

    // spec_select33290_pop22296_mux(MUX,169)
    assign spec_select33290_pop22296_mux_s = in_valid_in_0;
    always @(spec_select33290_pop22296_mux_s or in_spec_select33290_pop22296_1 or in_spec_select33290_pop22296_0)
    begin
        unique case (spec_select33290_pop22296_mux_s)
            1'b0 : spec_select33290_pop22296_mux_q = in_spec_select33290_pop22296_1;
            1'b1 : spec_select33290_pop22296_mux_q = in_spec_select33290_pop22296_0;
            default : spec_select33290_pop22296_mux_q = 32'b0;
        endcase
    end

    // out_spec_select33290_pop22296(GPOUT,129)
    assign out_spec_select33290_pop22296 = spec_select33290_pop22296_mux_q;

    // spec_select333222_mux(MUX,170)
    assign spec_select333222_mux_s = in_valid_in_0;
    always @(spec_select333222_mux_s or in_spec_select333222_1 or in_spec_select333222_0)
    begin
        unique case (spec_select333222_mux_s)
            1'b0 : spec_select333222_mux_q = in_spec_select333222_1;
            1'b1 : spec_select333222_mux_q = in_spec_select333222_0;
            default : spec_select333222_mux_q = 32'b0;
        endcase
    end

    // out_spec_select333222(GPOUT,130)
    assign out_spec_select333222 = spec_select333222_mux_q;

    // spec_select33393_pop23299_mux(MUX,171)
    assign spec_select33393_pop23299_mux_s = in_valid_in_0;
    always @(spec_select33393_pop23299_mux_s or in_spec_select33393_pop23299_1 or in_spec_select33393_pop23299_0)
    begin
        unique case (spec_select33393_pop23299_mux_s)
            1'b0 : spec_select33393_pop23299_mux_q = in_spec_select33393_pop23299_1;
            1'b1 : spec_select33393_pop23299_mux_q = in_spec_select33393_pop23299_0;
            default : spec_select33393_pop23299_mux_q = 32'b0;
        endcase
    end

    // out_spec_select33393_pop23299(GPOUT,131)
    assign out_spec_select33393_pop23299 = spec_select33393_pop23299_mux_q;

    // spec_select334228_mux(MUX,172)
    assign spec_select334228_mux_s = in_valid_in_0;
    always @(spec_select334228_mux_s or in_spec_select334228_1 or in_spec_select334228_0)
    begin
        unique case (spec_select334228_mux_s)
            1'b0 : spec_select334228_mux_q = in_spec_select334228_1;
            1'b1 : spec_select334228_mux_q = in_spec_select334228_0;
            default : spec_select334228_mux_q = 32'b0;
        endcase
    end

    // out_spec_select334228(GPOUT,132)
    assign out_spec_select334228 = spec_select334228_mux_q;

    // spec_select33496_pop24303_mux(MUX,173)
    assign spec_select33496_pop24303_mux_s = in_valid_in_0;
    always @(spec_select33496_pop24303_mux_s or in_spec_select33496_pop24303_1 or in_spec_select33496_pop24303_0)
    begin
        unique case (spec_select33496_pop24303_mux_s)
            1'b0 : spec_select33496_pop24303_mux_q = in_spec_select33496_pop24303_1;
            1'b1 : spec_select33496_pop24303_mux_q = in_spec_select33496_pop24303_0;
            default : spec_select33496_pop24303_mux_q = 32'b0;
        endcase
    end

    // out_spec_select33496_pop24303(GPOUT,133)
    assign out_spec_select33496_pop24303 = spec_select33496_pop24303_mux_q;

    // spec_select335234_mux(MUX,174)
    assign spec_select335234_mux_s = in_valid_in_0;
    always @(spec_select335234_mux_s or in_spec_select335234_1 or in_spec_select335234_0)
    begin
        unique case (spec_select335234_mux_s)
            1'b0 : spec_select335234_mux_q = in_spec_select335234_1;
            1'b1 : spec_select335234_mux_q = in_spec_select335234_0;
            default : spec_select335234_mux_q = 32'b0;
        endcase
    end

    // out_spec_select335234(GPOUT,134)
    assign out_spec_select335234 = spec_select335234_mux_q;

    // spec_select33599_pop25306_mux(MUX,175)
    assign spec_select33599_pop25306_mux_s = in_valid_in_0;
    always @(spec_select33599_pop25306_mux_s or in_spec_select33599_pop25306_1 or in_spec_select33599_pop25306_0)
    begin
        unique case (spec_select33599_pop25306_mux_s)
            1'b0 : spec_select33599_pop25306_mux_q = in_spec_select33599_pop25306_1;
            1'b1 : spec_select33599_pop25306_mux_q = in_spec_select33599_pop25306_0;
            default : spec_select33599_pop25306_mux_q = 32'b0;
        endcase
    end

    // out_spec_select33599_pop25306(GPOUT,135)
    assign out_spec_select33599_pop25306 = spec_select33599_pop25306_mux_q;

    // spec_select336102_pop26309_mux(MUX,176)
    assign spec_select336102_pop26309_mux_s = in_valid_in_0;
    always @(spec_select336102_pop26309_mux_s or in_spec_select336102_pop26309_1 or in_spec_select336102_pop26309_0)
    begin
        unique case (spec_select336102_pop26309_mux_s)
            1'b0 : spec_select336102_pop26309_mux_q = in_spec_select336102_pop26309_1;
            1'b1 : spec_select336102_pop26309_mux_q = in_spec_select336102_pop26309_0;
            default : spec_select336102_pop26309_mux_q = 32'b0;
        endcase
    end

    // out_spec_select336102_pop26309(GPOUT,136)
    assign out_spec_select336102_pop26309 = spec_select336102_pop26309_mux_q;

    // spec_select336240_mux(MUX,177)
    assign spec_select336240_mux_s = in_valid_in_0;
    always @(spec_select336240_mux_s or in_spec_select336240_1 or in_spec_select336240_0)
    begin
        unique case (spec_select336240_mux_s)
            1'b0 : spec_select336240_mux_q = in_spec_select336240_1;
            1'b1 : spec_select336240_mux_q = in_spec_select336240_0;
            default : spec_select336240_mux_q = 32'b0;
        endcase
    end

    // out_spec_select336240(GPOUT,137)
    assign out_spec_select336240 = spec_select336240_mux_q;

    // spec_select60_pop11263_mux(MUX,178)
    assign spec_select60_pop11263_mux_s = in_valid_in_0;
    always @(spec_select60_pop11263_mux_s or in_spec_select60_pop11263_1 or in_spec_select60_pop11263_0)
    begin
        unique case (spec_select60_pop11263_mux_s)
            1'b0 : spec_select60_pop11263_mux_q = in_spec_select60_pop11263_1;
            1'b1 : spec_select60_pop11263_mux_q = in_spec_select60_pop11263_0;
            default : spec_select60_pop11263_mux_q = 32'b0;
        endcase
    end

    // out_spec_select60_pop11263(GPOUT,138)
    assign out_spec_select60_pop11263 = spec_select60_pop11263_mux_q;

    // valid_or(LOGICAL,186)
    assign valid_or_q = in_valid_in_0 | in_valid_in_1;

    // stall_out(LOGICAL,179)
    assign stall_out_q = valid_or_q & in_stall_in;

    // out_stall_out_0(GPOUT,139)
    assign out_stall_out_0 = stall_out_q;

    // stall_out_1_specific(LOGICAL,180)
    assign stall_out_1_specific_q = in_valid_in_0 | stall_out_q;

    // out_stall_out_1(GPOUT,140)
    assign out_stall_out_1 = stall_out_1_specific_q;

    // unnamed_conv2d1x110_mux(MUX,181)
    assign unnamed_conv2d1x110_mux_s = in_valid_in_0;
    always @(unnamed_conv2d1x110_mux_s or in_unnamed_conv2d1x110_1 or in_unnamed_conv2d1x110_0)
    begin
        unique case (unnamed_conv2d1x110_mux_s)
            1'b0 : unnamed_conv2d1x110_mux_q = in_unnamed_conv2d1x110_1;
            1'b1 : unnamed_conv2d1x110_mux_q = in_unnamed_conv2d1x110_0;
            default : unnamed_conv2d1x110_mux_q = 1'b0;
        endcase
    end

    // out_unnamed_conv2d1x110(GPOUT,141)
    assign out_unnamed_conv2d1x110 = unnamed_conv2d1x110_mux_q;

    // unnamed_conv2d1x111_mux(MUX,182)
    assign unnamed_conv2d1x111_mux_s = in_valid_in_0;
    always @(unnamed_conv2d1x111_mux_s or in_unnamed_conv2d1x111_1 or in_unnamed_conv2d1x111_0)
    begin
        unique case (unnamed_conv2d1x111_mux_s)
            1'b0 : unnamed_conv2d1x111_mux_q = in_unnamed_conv2d1x111_1;
            1'b1 : unnamed_conv2d1x111_mux_q = in_unnamed_conv2d1x111_0;
            default : unnamed_conv2d1x111_mux_q = 33'b0;
        endcase
    end

    // out_unnamed_conv2d1x111(GPOUT,142)
    assign out_unnamed_conv2d1x111 = unnamed_conv2d1x111_mux_q;

    // unnamed_conv2d1x112_mux(MUX,183)
    assign unnamed_conv2d1x112_mux_s = in_valid_in_0;
    always @(unnamed_conv2d1x112_mux_s or in_unnamed_conv2d1x112_1 or in_unnamed_conv2d1x112_0)
    begin
        unique case (unnamed_conv2d1x112_mux_s)
            1'b0 : unnamed_conv2d1x112_mux_q = in_unnamed_conv2d1x112_1;
            1'b1 : unnamed_conv2d1x112_mux_q = in_unnamed_conv2d1x112_0;
            default : unnamed_conv2d1x112_mux_q = 1'b0;
        endcase
    end

    // out_unnamed_conv2d1x112(GPOUT,143)
    assign out_unnamed_conv2d1x112 = unnamed_conv2d1x112_mux_q;

    // unnamed_conv2d1x18_mux(MUX,184)
    assign unnamed_conv2d1x18_mux_s = in_valid_in_0;
    always @(unnamed_conv2d1x18_mux_s or in_unnamed_conv2d1x18_1 or in_unnamed_conv2d1x18_0)
    begin
        unique case (unnamed_conv2d1x18_mux_s)
            1'b0 : unnamed_conv2d1x18_mux_q = in_unnamed_conv2d1x18_1;
            1'b1 : unnamed_conv2d1x18_mux_q = in_unnamed_conv2d1x18_0;
            default : unnamed_conv2d1x18_mux_q = 32'b0;
        endcase
    end

    // out_unnamed_conv2d1x18(GPOUT,144)
    assign out_unnamed_conv2d1x18 = unnamed_conv2d1x18_mux_q;

    // unnamed_conv2d1x19_mux(MUX,185)
    assign unnamed_conv2d1x19_mux_s = in_valid_in_0;
    always @(unnamed_conv2d1x19_mux_s or in_unnamed_conv2d1x19_1 or in_unnamed_conv2d1x19_0)
    begin
        unique case (unnamed_conv2d1x19_mux_s)
            1'b0 : unnamed_conv2d1x19_mux_q = in_unnamed_conv2d1x19_1;
            1'b1 : unnamed_conv2d1x19_mux_q = in_unnamed_conv2d1x19_0;
            default : unnamed_conv2d1x19_mux_q = 1'b0;
        endcase
    end

    // out_unnamed_conv2d1x19(GPOUT,145)
    assign out_unnamed_conv2d1x19 = unnamed_conv2d1x19_mux_q;

    // out_valid_out(GPOUT,146)
    assign out_valid_out = valid_or_q;

endmodule
