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

// SystemVerilog created from conv2d1x1_B6_merge
// SystemVerilog created on Wed May 24 11:22:00 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2d1x1_B6_merge (
    input wire [9:0] in_ap_pop113_0,
    input wire [9:0] in_ap_pop113_1,
    input wire [0:0] in_forked23_0,
    input wire [0:0] in_forked23_1,
    input wire [31:0] in_ij_068_pop13116_0,
    input wire [31:0] in_ij_068_pop13116_1,
    input wire [31:0] in_lm51_pop18120_0,
    input wire [31:0] in_lm51_pop18120_1,
    input wire [31:0] in_lm97_0,
    input wire [31:0] in_lm97_1,
    input wire [31:0] in_mul100107_0,
    input wire [31:0] in_mul100107_1,
    input wire [31:0] in_mul10057_pop20122_0,
    input wire [31:0] in_mul10057_pop20122_1,
    input wire [31:0] in_mul21102_0,
    input wire [31:0] in_mul21102_1,
    input wire [31:0] in_mul2154_pop19121_0,
    input wire [31:0] in_mul2154_pop19121_1,
    input wire [31:0] in_mul48_pop14117_0,
    input wire [31:0] in_mul48_pop14117_1,
    input wire [31:0] in_mul92_0,
    input wire [31:0] in_mul92_1,
    input wire [0:0] in_notcmp38115_0,
    input wire [0:0] in_notcmp38115_1,
    input wire [0:0] in_notcmp43112_0,
    input wire [0:0] in_notcmp43112_1,
    input wire [0:0] in_notcmp4360_pop21123_0,
    input wire [0:0] in_notcmp4360_pop21123_1,
    input wire [0:0] in_pop15118_0,
    input wire [0:0] in_pop15118_1,
    input wire [0:0] in_pop16114_0,
    input wire [0:0] in_pop16114_1,
    input wire [0:0] in_pop17119_0,
    input wire [0:0] in_pop17119_1,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_unnamed_conv2d1x111_0,
    input wire [0:0] in_unnamed_conv2d1x111_1,
    input wire [0:0] in_unnamed_conv2d1x112_0,
    input wire [0:0] in_unnamed_conv2d1x112_1,
    input wire [0:0] in_unnamed_conv2d1x113_0,
    input wire [0:0] in_unnamed_conv2d1x113_1,
    input wire [32:0] in_unnamed_conv2d1x114_0,
    input wire [32:0] in_unnamed_conv2d1x114_1,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [9:0] out_ap_pop113,
    output wire [0:0] out_forked23,
    output wire [31:0] out_ij_068_pop13116,
    output wire [31:0] out_lm51_pop18120,
    output wire [31:0] out_lm97,
    output wire [31:0] out_mul100107,
    output wire [31:0] out_mul10057_pop20122,
    output wire [31:0] out_mul21102,
    output wire [31:0] out_mul2154_pop19121,
    output wire [31:0] out_mul48_pop14117,
    output wire [31:0] out_mul92,
    output wire [0:0] out_notcmp38115,
    output wire [0:0] out_notcmp43112,
    output wire [0:0] out_notcmp4360_pop21123,
    output wire [0:0] out_pop15118,
    output wire [0:0] out_pop16114,
    output wire [0:0] out_pop17119,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [0:0] out_unnamed_conv2d1x111,
    output wire [0:0] out_unnamed_conv2d1x112,
    output wire [0:0] out_unnamed_conv2d1x113,
    output wire [32:0] out_unnamed_conv2d1x114,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    wire [0:0] ap_pop113_mux_s;
    reg [9:0] ap_pop113_mux_q;
    wire [0:0] forked23_mux_s;
    reg [0:0] forked23_mux_q;
    wire [0:0] ij_068_pop13116_mux_s;
    reg [31:0] ij_068_pop13116_mux_q;
    wire [0:0] lm51_pop18120_mux_s;
    reg [31:0] lm51_pop18120_mux_q;
    wire [0:0] lm97_mux_s;
    reg [31:0] lm97_mux_q;
    wire [0:0] mul100107_mux_s;
    reg [31:0] mul100107_mux_q;
    wire [0:0] mul10057_pop20122_mux_s;
    reg [31:0] mul10057_pop20122_mux_q;
    wire [0:0] mul21102_mux_s;
    reg [31:0] mul21102_mux_q;
    wire [0:0] mul2154_pop19121_mux_s;
    reg [31:0] mul2154_pop19121_mux_q;
    wire [0:0] mul48_pop14117_mux_s;
    reg [31:0] mul48_pop14117_mux_q;
    wire [0:0] mul92_mux_s;
    reg [31:0] mul92_mux_q;
    wire [0:0] notcmp38115_mux_s;
    reg [0:0] notcmp38115_mux_q;
    wire [0:0] notcmp43112_mux_s;
    reg [0:0] notcmp43112_mux_q;
    wire [0:0] notcmp4360_pop21123_mux_s;
    reg [0:0] notcmp4360_pop21123_mux_q;
    wire [0:0] pop15118_mux_s;
    reg [0:0] pop15118_mux_q;
    wire [0:0] pop16114_mux_s;
    reg [0:0] pop16114_mux_q;
    wire [0:0] pop17119_mux_s;
    reg [0:0] pop17119_mux_q;
    wire [0:0] stall_out_q;
    wire [0:0] stall_out_1_specific_q;
    wire [0:0] unnamed_conv2d1x111_mux_s;
    reg [0:0] unnamed_conv2d1x111_mux_q;
    wire [0:0] unnamed_conv2d1x112_mux_s;
    reg [0:0] unnamed_conv2d1x112_mux_q;
    wire [0:0] unnamed_conv2d1x113_mux_s;
    reg [0:0] unnamed_conv2d1x113_mux_q;
    wire [0:0] unnamed_conv2d1x114_mux_s;
    reg [32:0] unnamed_conv2d1x114_mux_q;
    wire [0:0] valid_or_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // ap_pop113_mux(MUX,2)
    assign ap_pop113_mux_s = in_valid_in_0;
    always @(ap_pop113_mux_s or in_ap_pop113_1 or in_ap_pop113_0)
    begin
        unique case (ap_pop113_mux_s)
            1'b0 : ap_pop113_mux_q = in_ap_pop113_1;
            1'b1 : ap_pop113_mux_q = in_ap_pop113_0;
            default : ap_pop113_mux_q = 10'b0;
        endcase
    end

    // out_ap_pop113(GPOUT,61)
    assign out_ap_pop113 = ap_pop113_mux_q;

    // forked23_mux(MUX,3)
    assign forked23_mux_s = in_valid_in_0;
    always @(forked23_mux_s or in_forked23_1 or in_forked23_0)
    begin
        unique case (forked23_mux_s)
            1'b0 : forked23_mux_q = in_forked23_1;
            1'b1 : forked23_mux_q = in_forked23_0;
            default : forked23_mux_q = 1'b0;
        endcase
    end

    // out_forked23(GPOUT,62)
    assign out_forked23 = forked23_mux_q;

    // ij_068_pop13116_mux(MUX,4)
    assign ij_068_pop13116_mux_s = in_valid_in_0;
    always @(ij_068_pop13116_mux_s or in_ij_068_pop13116_1 or in_ij_068_pop13116_0)
    begin
        unique case (ij_068_pop13116_mux_s)
            1'b0 : ij_068_pop13116_mux_q = in_ij_068_pop13116_1;
            1'b1 : ij_068_pop13116_mux_q = in_ij_068_pop13116_0;
            default : ij_068_pop13116_mux_q = 32'b0;
        endcase
    end

    // out_ij_068_pop13116(GPOUT,63)
    assign out_ij_068_pop13116 = ij_068_pop13116_mux_q;

    // lm51_pop18120_mux(MUX,50)
    assign lm51_pop18120_mux_s = in_valid_in_0;
    always @(lm51_pop18120_mux_s or in_lm51_pop18120_1 or in_lm51_pop18120_0)
    begin
        unique case (lm51_pop18120_mux_s)
            1'b0 : lm51_pop18120_mux_q = in_lm51_pop18120_1;
            1'b1 : lm51_pop18120_mux_q = in_lm51_pop18120_0;
            default : lm51_pop18120_mux_q = 32'b0;
        endcase
    end

    // out_lm51_pop18120(GPOUT,64)
    assign out_lm51_pop18120 = lm51_pop18120_mux_q;

    // lm97_mux(MUX,51)
    assign lm97_mux_s = in_valid_in_0;
    always @(lm97_mux_s or in_lm97_1 or in_lm97_0)
    begin
        unique case (lm97_mux_s)
            1'b0 : lm97_mux_q = in_lm97_1;
            1'b1 : lm97_mux_q = in_lm97_0;
            default : lm97_mux_q = 32'b0;
        endcase
    end

    // out_lm97(GPOUT,65)
    assign out_lm97 = lm97_mux_q;

    // mul100107_mux(MUX,52)
    assign mul100107_mux_s = in_valid_in_0;
    always @(mul100107_mux_s or in_mul100107_1 or in_mul100107_0)
    begin
        unique case (mul100107_mux_s)
            1'b0 : mul100107_mux_q = in_mul100107_1;
            1'b1 : mul100107_mux_q = in_mul100107_0;
            default : mul100107_mux_q = 32'b0;
        endcase
    end

    // out_mul100107(GPOUT,66)
    assign out_mul100107 = mul100107_mux_q;

    // mul10057_pop20122_mux(MUX,53)
    assign mul10057_pop20122_mux_s = in_valid_in_0;
    always @(mul10057_pop20122_mux_s or in_mul10057_pop20122_1 or in_mul10057_pop20122_0)
    begin
        unique case (mul10057_pop20122_mux_s)
            1'b0 : mul10057_pop20122_mux_q = in_mul10057_pop20122_1;
            1'b1 : mul10057_pop20122_mux_q = in_mul10057_pop20122_0;
            default : mul10057_pop20122_mux_q = 32'b0;
        endcase
    end

    // out_mul10057_pop20122(GPOUT,67)
    assign out_mul10057_pop20122 = mul10057_pop20122_mux_q;

    // mul21102_mux(MUX,54)
    assign mul21102_mux_s = in_valid_in_0;
    always @(mul21102_mux_s or in_mul21102_1 or in_mul21102_0)
    begin
        unique case (mul21102_mux_s)
            1'b0 : mul21102_mux_q = in_mul21102_1;
            1'b1 : mul21102_mux_q = in_mul21102_0;
            default : mul21102_mux_q = 32'b0;
        endcase
    end

    // out_mul21102(GPOUT,68)
    assign out_mul21102 = mul21102_mux_q;

    // mul2154_pop19121_mux(MUX,55)
    assign mul2154_pop19121_mux_s = in_valid_in_0;
    always @(mul2154_pop19121_mux_s or in_mul2154_pop19121_1 or in_mul2154_pop19121_0)
    begin
        unique case (mul2154_pop19121_mux_s)
            1'b0 : mul2154_pop19121_mux_q = in_mul2154_pop19121_1;
            1'b1 : mul2154_pop19121_mux_q = in_mul2154_pop19121_0;
            default : mul2154_pop19121_mux_q = 32'b0;
        endcase
    end

    // out_mul2154_pop19121(GPOUT,69)
    assign out_mul2154_pop19121 = mul2154_pop19121_mux_q;

    // mul48_pop14117_mux(MUX,56)
    assign mul48_pop14117_mux_s = in_valid_in_0;
    always @(mul48_pop14117_mux_s or in_mul48_pop14117_1 or in_mul48_pop14117_0)
    begin
        unique case (mul48_pop14117_mux_s)
            1'b0 : mul48_pop14117_mux_q = in_mul48_pop14117_1;
            1'b1 : mul48_pop14117_mux_q = in_mul48_pop14117_0;
            default : mul48_pop14117_mux_q = 32'b0;
        endcase
    end

    // out_mul48_pop14117(GPOUT,70)
    assign out_mul48_pop14117 = mul48_pop14117_mux_q;

    // mul92_mux(MUX,57)
    assign mul92_mux_s = in_valid_in_0;
    always @(mul92_mux_s or in_mul92_1 or in_mul92_0)
    begin
        unique case (mul92_mux_s)
            1'b0 : mul92_mux_q = in_mul92_1;
            1'b1 : mul92_mux_q = in_mul92_0;
            default : mul92_mux_q = 32'b0;
        endcase
    end

    // out_mul92(GPOUT,71)
    assign out_mul92 = mul92_mux_q;

    // notcmp38115_mux(MUX,58)
    assign notcmp38115_mux_s = in_valid_in_0;
    always @(notcmp38115_mux_s or in_notcmp38115_1 or in_notcmp38115_0)
    begin
        unique case (notcmp38115_mux_s)
            1'b0 : notcmp38115_mux_q = in_notcmp38115_1;
            1'b1 : notcmp38115_mux_q = in_notcmp38115_0;
            default : notcmp38115_mux_q = 1'b0;
        endcase
    end

    // out_notcmp38115(GPOUT,72)
    assign out_notcmp38115 = notcmp38115_mux_q;

    // notcmp43112_mux(MUX,59)
    assign notcmp43112_mux_s = in_valid_in_0;
    always @(notcmp43112_mux_s or in_notcmp43112_1 or in_notcmp43112_0)
    begin
        unique case (notcmp43112_mux_s)
            1'b0 : notcmp43112_mux_q = in_notcmp43112_1;
            1'b1 : notcmp43112_mux_q = in_notcmp43112_0;
            default : notcmp43112_mux_q = 1'b0;
        endcase
    end

    // out_notcmp43112(GPOUT,73)
    assign out_notcmp43112 = notcmp43112_mux_q;

    // notcmp4360_pop21123_mux(MUX,60)
    assign notcmp4360_pop21123_mux_s = in_valid_in_0;
    always @(notcmp4360_pop21123_mux_s or in_notcmp4360_pop21123_1 or in_notcmp4360_pop21123_0)
    begin
        unique case (notcmp4360_pop21123_mux_s)
            1'b0 : notcmp4360_pop21123_mux_q = in_notcmp4360_pop21123_1;
            1'b1 : notcmp4360_pop21123_mux_q = in_notcmp4360_pop21123_0;
            default : notcmp4360_pop21123_mux_q = 1'b0;
        endcase
    end

    // out_notcmp4360_pop21123(GPOUT,74)
    assign out_notcmp4360_pop21123 = notcmp4360_pop21123_mux_q;

    // pop15118_mux(MUX,85)
    assign pop15118_mux_s = in_valid_in_0;
    always @(pop15118_mux_s or in_pop15118_1 or in_pop15118_0)
    begin
        unique case (pop15118_mux_s)
            1'b0 : pop15118_mux_q = in_pop15118_1;
            1'b1 : pop15118_mux_q = in_pop15118_0;
            default : pop15118_mux_q = 1'b0;
        endcase
    end

    // out_pop15118(GPOUT,75)
    assign out_pop15118 = pop15118_mux_q;

    // pop16114_mux(MUX,86)
    assign pop16114_mux_s = in_valid_in_0;
    always @(pop16114_mux_s or in_pop16114_1 or in_pop16114_0)
    begin
        unique case (pop16114_mux_s)
            1'b0 : pop16114_mux_q = in_pop16114_1;
            1'b1 : pop16114_mux_q = in_pop16114_0;
            default : pop16114_mux_q = 1'b0;
        endcase
    end

    // out_pop16114(GPOUT,76)
    assign out_pop16114 = pop16114_mux_q;

    // pop17119_mux(MUX,87)
    assign pop17119_mux_s = in_valid_in_0;
    always @(pop17119_mux_s or in_pop17119_1 or in_pop17119_0)
    begin
        unique case (pop17119_mux_s)
            1'b0 : pop17119_mux_q = in_pop17119_1;
            1'b1 : pop17119_mux_q = in_pop17119_0;
            default : pop17119_mux_q = 1'b0;
        endcase
    end

    // out_pop17119(GPOUT,77)
    assign out_pop17119 = pop17119_mux_q;

    // valid_or(LOGICAL,94)
    assign valid_or_q = in_valid_in_0 | in_valid_in_1;

    // stall_out(LOGICAL,88)
    assign stall_out_q = valid_or_q & in_stall_in;

    // out_stall_out_0(GPOUT,78)
    assign out_stall_out_0 = stall_out_q;

    // stall_out_1_specific(LOGICAL,89)
    assign stall_out_1_specific_q = in_valid_in_0 | stall_out_q;

    // out_stall_out_1(GPOUT,79)
    assign out_stall_out_1 = stall_out_1_specific_q;

    // unnamed_conv2d1x111_mux(MUX,90)
    assign unnamed_conv2d1x111_mux_s = in_valid_in_0;
    always @(unnamed_conv2d1x111_mux_s or in_unnamed_conv2d1x111_1 or in_unnamed_conv2d1x111_0)
    begin
        unique case (unnamed_conv2d1x111_mux_s)
            1'b0 : unnamed_conv2d1x111_mux_q = in_unnamed_conv2d1x111_1;
            1'b1 : unnamed_conv2d1x111_mux_q = in_unnamed_conv2d1x111_0;
            default : unnamed_conv2d1x111_mux_q = 1'b0;
        endcase
    end

    // out_unnamed_conv2d1x111(GPOUT,80)
    assign out_unnamed_conv2d1x111 = unnamed_conv2d1x111_mux_q;

    // unnamed_conv2d1x112_mux(MUX,91)
    assign unnamed_conv2d1x112_mux_s = in_valid_in_0;
    always @(unnamed_conv2d1x112_mux_s or in_unnamed_conv2d1x112_1 or in_unnamed_conv2d1x112_0)
    begin
        unique case (unnamed_conv2d1x112_mux_s)
            1'b0 : unnamed_conv2d1x112_mux_q = in_unnamed_conv2d1x112_1;
            1'b1 : unnamed_conv2d1x112_mux_q = in_unnamed_conv2d1x112_0;
            default : unnamed_conv2d1x112_mux_q = 1'b0;
        endcase
    end

    // out_unnamed_conv2d1x112(GPOUT,81)
    assign out_unnamed_conv2d1x112 = unnamed_conv2d1x112_mux_q;

    // unnamed_conv2d1x113_mux(MUX,92)
    assign unnamed_conv2d1x113_mux_s = in_valid_in_0;
    always @(unnamed_conv2d1x113_mux_s or in_unnamed_conv2d1x113_1 or in_unnamed_conv2d1x113_0)
    begin
        unique case (unnamed_conv2d1x113_mux_s)
            1'b0 : unnamed_conv2d1x113_mux_q = in_unnamed_conv2d1x113_1;
            1'b1 : unnamed_conv2d1x113_mux_q = in_unnamed_conv2d1x113_0;
            default : unnamed_conv2d1x113_mux_q = 1'b0;
        endcase
    end

    // out_unnamed_conv2d1x113(GPOUT,82)
    assign out_unnamed_conv2d1x113 = unnamed_conv2d1x113_mux_q;

    // unnamed_conv2d1x114_mux(MUX,93)
    assign unnamed_conv2d1x114_mux_s = in_valid_in_0;
    always @(unnamed_conv2d1x114_mux_s or in_unnamed_conv2d1x114_1 or in_unnamed_conv2d1x114_0)
    begin
        unique case (unnamed_conv2d1x114_mux_s)
            1'b0 : unnamed_conv2d1x114_mux_q = in_unnamed_conv2d1x114_1;
            1'b1 : unnamed_conv2d1x114_mux_q = in_unnamed_conv2d1x114_0;
            default : unnamed_conv2d1x114_mux_q = 33'b0;
        endcase
    end

    // out_unnamed_conv2d1x114(GPOUT,83)
    assign out_unnamed_conv2d1x114 = unnamed_conv2d1x114_mux_q;

    // out_valid_out(GPOUT,84)
    assign out_valid_out = valid_or_q;

endmodule
