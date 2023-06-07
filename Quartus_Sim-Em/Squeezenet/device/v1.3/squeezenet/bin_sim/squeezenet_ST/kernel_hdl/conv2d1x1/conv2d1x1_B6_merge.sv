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
// SystemVerilog created on Tue Jun  6 18:48:20 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2d1x1_B6_merge (
    input wire [0:0] in_forked_0,
    input wire [0:0] in_forked_1,
    input wire [31:0] in_ij_028_pop1055_0,
    input wire [31:0] in_ij_028_pop1055_1,
    input wire [31:0] in_lm29_pop1459_0,
    input wire [31:0] in_lm29_pop1459_1,
    input wire [31:0] in_lm44_0,
    input wire [31:0] in_lm44_1,
    input wire [31:0] in_mul1331_pop1560_0,
    input wire [31:0] in_mul1331_pop1560_1,
    input wire [31:0] in_mul1347_0,
    input wire [31:0] in_mul1347_1,
    input wire [31:0] in_mul2333_pop1661_0,
    input wire [31:0] in_mul2333_pop1661_1,
    input wire [31:0] in_mul2350_0,
    input wire [31:0] in_mul2350_1,
    input wire [31:0] in_mul27_pop1156_0,
    input wire [31:0] in_mul27_pop1156_1,
    input wire [31:0] in_mul41_0,
    input wire [31:0] in_mul41_1,
    input wire [0:0] in_notcmp1754_0,
    input wire [0:0] in_notcmp1754_1,
    input wire [0:0] in_notcmp2235_pop1762_0,
    input wire [0:0] in_notcmp2235_pop1762_1,
    input wire [0:0] in_notcmp2253_0,
    input wire [0:0] in_notcmp2253_1,
    input wire [0:0] in_pop1257_0,
    input wire [0:0] in_pop1257_1,
    input wire [0:0] in_pop1358_0,
    input wire [0:0] in_pop1358_1,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_unnamed_conv2d1x111_0,
    input wire [0:0] in_unnamed_conv2d1x111_1,
    input wire [0:0] in_unnamed_conv2d1x112_0,
    input wire [0:0] in_unnamed_conv2d1x112_1,
    input wire [32:0] in_unnamed_conv2d1x113_0,
    input wire [32:0] in_unnamed_conv2d1x113_1,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [0:0] out_forked,
    output wire [31:0] out_ij_028_pop1055,
    output wire [31:0] out_lm29_pop1459,
    output wire [31:0] out_lm44,
    output wire [31:0] out_mul1331_pop1560,
    output wire [31:0] out_mul1347,
    output wire [31:0] out_mul2333_pop1661,
    output wire [31:0] out_mul2350,
    output wire [31:0] out_mul27_pop1156,
    output wire [31:0] out_mul41,
    output wire [0:0] out_notcmp1754,
    output wire [0:0] out_notcmp2235_pop1762,
    output wire [0:0] out_notcmp2253,
    output wire [0:0] out_pop1257,
    output wire [0:0] out_pop1358,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [0:0] out_unnamed_conv2d1x111,
    output wire [0:0] out_unnamed_conv2d1x112,
    output wire [32:0] out_unnamed_conv2d1x113,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    wire [0:0] forked_mux_s;
    reg [0:0] forked_mux_q;
    wire [0:0] ij_028_pop1055_mux_s;
    reg [31:0] ij_028_pop1055_mux_q;
    wire [0:0] lm29_pop1459_mux_s;
    reg [31:0] lm29_pop1459_mux_q;
    wire [0:0] lm44_mux_s;
    reg [31:0] lm44_mux_q;
    wire [0:0] mul1331_pop1560_mux_s;
    reg [31:0] mul1331_pop1560_mux_q;
    wire [0:0] mul1347_mux_s;
    reg [31:0] mul1347_mux_q;
    wire [0:0] mul2333_pop1661_mux_s;
    reg [31:0] mul2333_pop1661_mux_q;
    wire [0:0] mul2350_mux_s;
    reg [31:0] mul2350_mux_q;
    wire [0:0] mul27_pop1156_mux_s;
    reg [31:0] mul27_pop1156_mux_q;
    wire [0:0] mul41_mux_s;
    reg [31:0] mul41_mux_q;
    wire [0:0] notcmp1754_mux_s;
    reg [0:0] notcmp1754_mux_q;
    wire [0:0] notcmp2235_pop1762_mux_s;
    reg [0:0] notcmp2235_pop1762_mux_q;
    wire [0:0] notcmp2253_mux_s;
    reg [0:0] notcmp2253_mux_q;
    wire [0:0] pop1257_mux_s;
    reg [0:0] pop1257_mux_q;
    wire [0:0] pop1358_mux_s;
    reg [0:0] pop1358_mux_q;
    wire [0:0] stall_out_q;
    wire [0:0] stall_out_1_specific_q;
    wire [0:0] unnamed_conv2d1x111_mux_s;
    reg [0:0] unnamed_conv2d1x111_mux_q;
    wire [0:0] unnamed_conv2d1x112_mux_s;
    reg [0:0] unnamed_conv2d1x112_mux_q;
    wire [0:0] unnamed_conv2d1x113_mux_s;
    reg [32:0] unnamed_conv2d1x113_mux_q;
    wire [0:0] valid_or_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // forked_mux(MUX,2)
    assign forked_mux_s = in_valid_in_0;
    always @(forked_mux_s or in_forked_1 or in_forked_0)
    begin
        unique case (forked_mux_s)
            1'b0 : forked_mux_q = in_forked_1;
            1'b1 : forked_mux_q = in_forked_0;
            default : forked_mux_q = 1'b0;
        endcase
    end

    // out_forked(GPOUT,54)
    assign out_forked = forked_mux_q;

    // ij_028_pop1055_mux(MUX,3)
    assign ij_028_pop1055_mux_s = in_valid_in_0;
    always @(ij_028_pop1055_mux_s or in_ij_028_pop1055_1 or in_ij_028_pop1055_0)
    begin
        unique case (ij_028_pop1055_mux_s)
            1'b0 : ij_028_pop1055_mux_q = in_ij_028_pop1055_1;
            1'b1 : ij_028_pop1055_mux_q = in_ij_028_pop1055_0;
            default : ij_028_pop1055_mux_q = 32'b0;
        endcase
    end

    // out_ij_028_pop1055(GPOUT,55)
    assign out_ij_028_pop1055 = ij_028_pop1055_mux_q;

    // lm29_pop1459_mux(MUX,43)
    assign lm29_pop1459_mux_s = in_valid_in_0;
    always @(lm29_pop1459_mux_s or in_lm29_pop1459_1 or in_lm29_pop1459_0)
    begin
        unique case (lm29_pop1459_mux_s)
            1'b0 : lm29_pop1459_mux_q = in_lm29_pop1459_1;
            1'b1 : lm29_pop1459_mux_q = in_lm29_pop1459_0;
            default : lm29_pop1459_mux_q = 32'b0;
        endcase
    end

    // out_lm29_pop1459(GPOUT,56)
    assign out_lm29_pop1459 = lm29_pop1459_mux_q;

    // lm44_mux(MUX,44)
    assign lm44_mux_s = in_valid_in_0;
    always @(lm44_mux_s or in_lm44_1 or in_lm44_0)
    begin
        unique case (lm44_mux_s)
            1'b0 : lm44_mux_q = in_lm44_1;
            1'b1 : lm44_mux_q = in_lm44_0;
            default : lm44_mux_q = 32'b0;
        endcase
    end

    // out_lm44(GPOUT,57)
    assign out_lm44 = lm44_mux_q;

    // mul1331_pop1560_mux(MUX,45)
    assign mul1331_pop1560_mux_s = in_valid_in_0;
    always @(mul1331_pop1560_mux_s or in_mul1331_pop1560_1 or in_mul1331_pop1560_0)
    begin
        unique case (mul1331_pop1560_mux_s)
            1'b0 : mul1331_pop1560_mux_q = in_mul1331_pop1560_1;
            1'b1 : mul1331_pop1560_mux_q = in_mul1331_pop1560_0;
            default : mul1331_pop1560_mux_q = 32'b0;
        endcase
    end

    // out_mul1331_pop1560(GPOUT,58)
    assign out_mul1331_pop1560 = mul1331_pop1560_mux_q;

    // mul1347_mux(MUX,46)
    assign mul1347_mux_s = in_valid_in_0;
    always @(mul1347_mux_s or in_mul1347_1 or in_mul1347_0)
    begin
        unique case (mul1347_mux_s)
            1'b0 : mul1347_mux_q = in_mul1347_1;
            1'b1 : mul1347_mux_q = in_mul1347_0;
            default : mul1347_mux_q = 32'b0;
        endcase
    end

    // out_mul1347(GPOUT,59)
    assign out_mul1347 = mul1347_mux_q;

    // mul2333_pop1661_mux(MUX,47)
    assign mul2333_pop1661_mux_s = in_valid_in_0;
    always @(mul2333_pop1661_mux_s or in_mul2333_pop1661_1 or in_mul2333_pop1661_0)
    begin
        unique case (mul2333_pop1661_mux_s)
            1'b0 : mul2333_pop1661_mux_q = in_mul2333_pop1661_1;
            1'b1 : mul2333_pop1661_mux_q = in_mul2333_pop1661_0;
            default : mul2333_pop1661_mux_q = 32'b0;
        endcase
    end

    // out_mul2333_pop1661(GPOUT,60)
    assign out_mul2333_pop1661 = mul2333_pop1661_mux_q;

    // mul2350_mux(MUX,48)
    assign mul2350_mux_s = in_valid_in_0;
    always @(mul2350_mux_s or in_mul2350_1 or in_mul2350_0)
    begin
        unique case (mul2350_mux_s)
            1'b0 : mul2350_mux_q = in_mul2350_1;
            1'b1 : mul2350_mux_q = in_mul2350_0;
            default : mul2350_mux_q = 32'b0;
        endcase
    end

    // out_mul2350(GPOUT,61)
    assign out_mul2350 = mul2350_mux_q;

    // mul27_pop1156_mux(MUX,49)
    assign mul27_pop1156_mux_s = in_valid_in_0;
    always @(mul27_pop1156_mux_s or in_mul27_pop1156_1 or in_mul27_pop1156_0)
    begin
        unique case (mul27_pop1156_mux_s)
            1'b0 : mul27_pop1156_mux_q = in_mul27_pop1156_1;
            1'b1 : mul27_pop1156_mux_q = in_mul27_pop1156_0;
            default : mul27_pop1156_mux_q = 32'b0;
        endcase
    end

    // out_mul27_pop1156(GPOUT,62)
    assign out_mul27_pop1156 = mul27_pop1156_mux_q;

    // mul41_mux(MUX,50)
    assign mul41_mux_s = in_valid_in_0;
    always @(mul41_mux_s or in_mul41_1 or in_mul41_0)
    begin
        unique case (mul41_mux_s)
            1'b0 : mul41_mux_q = in_mul41_1;
            1'b1 : mul41_mux_q = in_mul41_0;
            default : mul41_mux_q = 32'b0;
        endcase
    end

    // out_mul41(GPOUT,63)
    assign out_mul41 = mul41_mux_q;

    // notcmp1754_mux(MUX,51)
    assign notcmp1754_mux_s = in_valid_in_0;
    always @(notcmp1754_mux_s or in_notcmp1754_1 or in_notcmp1754_0)
    begin
        unique case (notcmp1754_mux_s)
            1'b0 : notcmp1754_mux_q = in_notcmp1754_1;
            1'b1 : notcmp1754_mux_q = in_notcmp1754_0;
            default : notcmp1754_mux_q = 1'b0;
        endcase
    end

    // out_notcmp1754(GPOUT,64)
    assign out_notcmp1754 = notcmp1754_mux_q;

    // notcmp2235_pop1762_mux(MUX,52)
    assign notcmp2235_pop1762_mux_s = in_valid_in_0;
    always @(notcmp2235_pop1762_mux_s or in_notcmp2235_pop1762_1 or in_notcmp2235_pop1762_0)
    begin
        unique case (notcmp2235_pop1762_mux_s)
            1'b0 : notcmp2235_pop1762_mux_q = in_notcmp2235_pop1762_1;
            1'b1 : notcmp2235_pop1762_mux_q = in_notcmp2235_pop1762_0;
            default : notcmp2235_pop1762_mux_q = 1'b0;
        endcase
    end

    // out_notcmp2235_pop1762(GPOUT,65)
    assign out_notcmp2235_pop1762 = notcmp2235_pop1762_mux_q;

    // notcmp2253_mux(MUX,53)
    assign notcmp2253_mux_s = in_valid_in_0;
    always @(notcmp2253_mux_s or in_notcmp2253_1 or in_notcmp2253_0)
    begin
        unique case (notcmp2253_mux_s)
            1'b0 : notcmp2253_mux_q = in_notcmp2253_1;
            1'b1 : notcmp2253_mux_q = in_notcmp2253_0;
            default : notcmp2253_mux_q = 1'b0;
        endcase
    end

    // out_notcmp2253(GPOUT,66)
    assign out_notcmp2253 = notcmp2253_mux_q;

    // pop1257_mux(MUX,75)
    assign pop1257_mux_s = in_valid_in_0;
    always @(pop1257_mux_s or in_pop1257_1 or in_pop1257_0)
    begin
        unique case (pop1257_mux_s)
            1'b0 : pop1257_mux_q = in_pop1257_1;
            1'b1 : pop1257_mux_q = in_pop1257_0;
            default : pop1257_mux_q = 1'b0;
        endcase
    end

    // out_pop1257(GPOUT,67)
    assign out_pop1257 = pop1257_mux_q;

    // pop1358_mux(MUX,76)
    assign pop1358_mux_s = in_valid_in_0;
    always @(pop1358_mux_s or in_pop1358_1 or in_pop1358_0)
    begin
        unique case (pop1358_mux_s)
            1'b0 : pop1358_mux_q = in_pop1358_1;
            1'b1 : pop1358_mux_q = in_pop1358_0;
            default : pop1358_mux_q = 1'b0;
        endcase
    end

    // out_pop1358(GPOUT,68)
    assign out_pop1358 = pop1358_mux_q;

    // valid_or(LOGICAL,82)
    assign valid_or_q = in_valid_in_0 | in_valid_in_1;

    // stall_out(LOGICAL,77)
    assign stall_out_q = valid_or_q & in_stall_in;

    // out_stall_out_0(GPOUT,69)
    assign out_stall_out_0 = stall_out_q;

    // stall_out_1_specific(LOGICAL,78)
    assign stall_out_1_specific_q = in_valid_in_0 | stall_out_q;

    // out_stall_out_1(GPOUT,70)
    assign out_stall_out_1 = stall_out_1_specific_q;

    // unnamed_conv2d1x111_mux(MUX,79)
    assign unnamed_conv2d1x111_mux_s = in_valid_in_0;
    always @(unnamed_conv2d1x111_mux_s or in_unnamed_conv2d1x111_1 or in_unnamed_conv2d1x111_0)
    begin
        unique case (unnamed_conv2d1x111_mux_s)
            1'b0 : unnamed_conv2d1x111_mux_q = in_unnamed_conv2d1x111_1;
            1'b1 : unnamed_conv2d1x111_mux_q = in_unnamed_conv2d1x111_0;
            default : unnamed_conv2d1x111_mux_q = 1'b0;
        endcase
    end

    // out_unnamed_conv2d1x111(GPOUT,71)
    assign out_unnamed_conv2d1x111 = unnamed_conv2d1x111_mux_q;

    // unnamed_conv2d1x112_mux(MUX,80)
    assign unnamed_conv2d1x112_mux_s = in_valid_in_0;
    always @(unnamed_conv2d1x112_mux_s or in_unnamed_conv2d1x112_1 or in_unnamed_conv2d1x112_0)
    begin
        unique case (unnamed_conv2d1x112_mux_s)
            1'b0 : unnamed_conv2d1x112_mux_q = in_unnamed_conv2d1x112_1;
            1'b1 : unnamed_conv2d1x112_mux_q = in_unnamed_conv2d1x112_0;
            default : unnamed_conv2d1x112_mux_q = 1'b0;
        endcase
    end

    // out_unnamed_conv2d1x112(GPOUT,72)
    assign out_unnamed_conv2d1x112 = unnamed_conv2d1x112_mux_q;

    // unnamed_conv2d1x113_mux(MUX,81)
    assign unnamed_conv2d1x113_mux_s = in_valid_in_0;
    always @(unnamed_conv2d1x113_mux_s or in_unnamed_conv2d1x113_1 or in_unnamed_conv2d1x113_0)
    begin
        unique case (unnamed_conv2d1x113_mux_s)
            1'b0 : unnamed_conv2d1x113_mux_q = in_unnamed_conv2d1x113_1;
            1'b1 : unnamed_conv2d1x113_mux_q = in_unnamed_conv2d1x113_0;
            default : unnamed_conv2d1x113_mux_q = 33'b0;
        endcase
    end

    // out_unnamed_conv2d1x113(GPOUT,73)
    assign out_unnamed_conv2d1x113 = unnamed_conv2d1x113_mux_q;

    // out_valid_out(GPOUT,74)
    assign out_valid_out = valid_or_q;

endmodule
