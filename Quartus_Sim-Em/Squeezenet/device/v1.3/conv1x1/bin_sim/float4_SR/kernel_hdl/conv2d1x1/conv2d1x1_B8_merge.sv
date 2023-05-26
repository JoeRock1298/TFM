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

// SystemVerilog created from conv2d1x1_B8_merge
// SystemVerilog created on Wed May 24 11:22:00 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2d1x1_B8_merge (
    input wire [63:0] in_ap_pop_ext7140_0,
    input wire [63:0] in_ap_pop_ext7140_1,
    input wire [0:0] in_forked_0,
    input wire [0:0] in_forked_1,
    input wire [31:0] in_ij_068_pop1366_pop36160_0,
    input wire [31:0] in_ij_068_pop1366_pop36160_1,
    input wire [31:0] in_lm52_pop30150_0,
    input wire [31:0] in_lm52_pop30150_1,
    input wire [31:0] in_lm95_0,
    input wire [31:0] in_lm95_1,
    input wire [31:0] in_mul100105_0,
    input wire [31:0] in_mul100105_1,
    input wire [31:0] in_mul10058_pop32154_0,
    input wire [31:0] in_mul10058_pop32154_1,
    input wire [31:0] in_mul21100_0,
    input wire [31:0] in_mul21100_1,
    input wire [31:0] in_mul2155_pop31152_0,
    input wire [31:0] in_mul2155_pop31152_1,
    input wire [31:0] in_mul49_pop26146_0,
    input wire [31:0] in_mul49_pop26146_1,
    input wire [31:0] in_mul90_0,
    input wire [31:0] in_mul90_1,
    input wire [0:0] in_notcmp3864_pop35158_0,
    input wire [0:0] in_notcmp3864_pop35158_1,
    input wire [0:0] in_notcmp43110_0,
    input wire [0:0] in_notcmp43110_1,
    input wire [0:0] in_notcmp4361_pop33156_0,
    input wire [0:0] in_notcmp4361_pop33156_1,
    input wire [0:0] in_pop27142_0,
    input wire [0:0] in_pop27142_1,
    input wire [0:0] in_pop28144_0,
    input wire [0:0] in_pop28144_1,
    input wire [0:0] in_pop29148_0,
    input wire [0:0] in_pop29148_1,
    input wire [31:0] in_pre74_e125_0,
    input wire [31:0] in_pre74_e125_1,
    input wire [31:0] in_pre75_e126_0,
    input wire [31:0] in_pre75_e126_1,
    input wire [31:0] in_pre76_e127_0,
    input wire [31:0] in_pre76_e127_1,
    input wire [31:0] in_pre77_e128_0,
    input wire [31:0] in_pre77_e128_1,
    input wire [31:0] in_pre78_e129_0,
    input wire [31:0] in_pre78_e129_1,
    input wire [31:0] in_pre79_e130_0,
    input wire [31:0] in_pre79_e130_1,
    input wire [31:0] in_pre80_e131_0,
    input wire [31:0] in_pre80_e131_1,
    input wire [31:0] in_pre81_e132_0,
    input wire [31:0] in_pre81_e132_1,
    input wire [31:0] in_pre82_e133_0,
    input wire [31:0] in_pre82_e133_1,
    input wire [31:0] in_pre83_e134_0,
    input wire [31:0] in_pre83_e134_1,
    input wire [31:0] in_pre84_e135_0,
    input wire [31:0] in_pre84_e135_1,
    input wire [31:0] in_pre85_e136_0,
    input wire [31:0] in_pre85_e136_1,
    input wire [31:0] in_pre86_e137_0,
    input wire [31:0] in_pre86_e137_1,
    input wire [31:0] in_pre87_e138_0,
    input wire [31:0] in_pre87_e138_1,
    input wire [31:0] in_pre88_e139_0,
    input wire [31:0] in_pre88_e139_1,
    input wire [31:0] in_pre_e124_0,
    input wire [31:0] in_pre_e124_1,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_unnamed_conv2d1x117_0,
    input wire [0:0] in_unnamed_conv2d1x117_1,
    input wire [0:0] in_unnamed_conv2d1x118_0,
    input wire [0:0] in_unnamed_conv2d1x118_1,
    input wire [0:0] in_unnamed_conv2d1x119_0,
    input wire [0:0] in_unnamed_conv2d1x119_1,
    input wire [32:0] in_unnamed_conv2d1x120_0,
    input wire [32:0] in_unnamed_conv2d1x120_1,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [63:0] out_ap_pop_ext7140,
    output wire [0:0] out_forked,
    output wire [31:0] out_ij_068_pop1366_pop36160,
    output wire [31:0] out_lm52_pop30150,
    output wire [31:0] out_lm95,
    output wire [31:0] out_mul100105,
    output wire [31:0] out_mul10058_pop32154,
    output wire [31:0] out_mul21100,
    output wire [31:0] out_mul2155_pop31152,
    output wire [31:0] out_mul49_pop26146,
    output wire [31:0] out_mul90,
    output wire [0:0] out_notcmp3864_pop35158,
    output wire [0:0] out_notcmp43110,
    output wire [0:0] out_notcmp4361_pop33156,
    output wire [0:0] out_pop27142,
    output wire [0:0] out_pop28144,
    output wire [0:0] out_pop29148,
    output wire [31:0] out_pre74_e125,
    output wire [31:0] out_pre75_e126,
    output wire [31:0] out_pre76_e127,
    output wire [31:0] out_pre77_e128,
    output wire [31:0] out_pre78_e129,
    output wire [31:0] out_pre79_e130,
    output wire [31:0] out_pre80_e131,
    output wire [31:0] out_pre81_e132,
    output wire [31:0] out_pre82_e133,
    output wire [31:0] out_pre83_e134,
    output wire [31:0] out_pre84_e135,
    output wire [31:0] out_pre85_e136,
    output wire [31:0] out_pre86_e137,
    output wire [31:0] out_pre87_e138,
    output wire [31:0] out_pre88_e139,
    output wire [31:0] out_pre_e124,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [0:0] out_unnamed_conv2d1x117,
    output wire [0:0] out_unnamed_conv2d1x118,
    output wire [0:0] out_unnamed_conv2d1x119,
    output wire [32:0] out_unnamed_conv2d1x120,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    wire [0:0] ap_pop_ext7140_mux_s;
    reg [63:0] ap_pop_ext7140_mux_q;
    wire [0:0] forked_mux_s;
    reg [0:0] forked_mux_q;
    wire [0:0] ij_068_pop1366_pop36160_mux_s;
    reg [31:0] ij_068_pop1366_pop36160_mux_q;
    wire [0:0] lm52_pop30150_mux_s;
    reg [31:0] lm52_pop30150_mux_q;
    wire [0:0] lm95_mux_s;
    reg [31:0] lm95_mux_q;
    wire [0:0] mul100105_mux_s;
    reg [31:0] mul100105_mux_q;
    wire [0:0] mul10058_pop32154_mux_s;
    reg [31:0] mul10058_pop32154_mux_q;
    wire [0:0] mul21100_mux_s;
    reg [31:0] mul21100_mux_q;
    wire [0:0] mul2155_pop31152_mux_s;
    reg [31:0] mul2155_pop31152_mux_q;
    wire [0:0] mul49_pop26146_mux_s;
    reg [31:0] mul49_pop26146_mux_q;
    wire [0:0] mul90_mux_s;
    reg [31:0] mul90_mux_q;
    wire [0:0] notcmp3864_pop35158_mux_s;
    reg [0:0] notcmp3864_pop35158_mux_q;
    wire [0:0] notcmp43110_mux_s;
    reg [0:0] notcmp43110_mux_q;
    wire [0:0] notcmp4361_pop33156_mux_s;
    reg [0:0] notcmp4361_pop33156_mux_q;
    wire [0:0] pop27142_mux_s;
    reg [0:0] pop27142_mux_q;
    wire [0:0] pop28144_mux_s;
    reg [0:0] pop28144_mux_q;
    wire [0:0] pop29148_mux_s;
    reg [0:0] pop29148_mux_q;
    wire [0:0] pre74_e125_mux_s;
    reg [31:0] pre74_e125_mux_q;
    wire [0:0] pre75_e126_mux_s;
    reg [31:0] pre75_e126_mux_q;
    wire [0:0] pre76_e127_mux_s;
    reg [31:0] pre76_e127_mux_q;
    wire [0:0] pre77_e128_mux_s;
    reg [31:0] pre77_e128_mux_q;
    wire [0:0] pre78_e129_mux_s;
    reg [31:0] pre78_e129_mux_q;
    wire [0:0] pre79_e130_mux_s;
    reg [31:0] pre79_e130_mux_q;
    wire [0:0] pre80_e131_mux_s;
    reg [31:0] pre80_e131_mux_q;
    wire [0:0] pre81_e132_mux_s;
    reg [31:0] pre81_e132_mux_q;
    wire [0:0] pre82_e133_mux_s;
    reg [31:0] pre82_e133_mux_q;
    wire [0:0] pre83_e134_mux_s;
    reg [31:0] pre83_e134_mux_q;
    wire [0:0] pre84_e135_mux_s;
    reg [31:0] pre84_e135_mux_q;
    wire [0:0] pre85_e136_mux_s;
    reg [31:0] pre85_e136_mux_q;
    wire [0:0] pre86_e137_mux_s;
    reg [31:0] pre86_e137_mux_q;
    wire [0:0] pre87_e138_mux_s;
    reg [31:0] pre87_e138_mux_q;
    wire [0:0] pre88_e139_mux_s;
    reg [31:0] pre88_e139_mux_q;
    wire [0:0] pre_e124_mux_s;
    reg [31:0] pre_e124_mux_q;
    wire [0:0] stall_out_q;
    wire [0:0] stall_out_1_specific_q;
    wire [0:0] unnamed_conv2d1x117_mux_s;
    reg [0:0] unnamed_conv2d1x117_mux_q;
    wire [0:0] unnamed_conv2d1x118_mux_s;
    reg [0:0] unnamed_conv2d1x118_mux_q;
    wire [0:0] unnamed_conv2d1x119_mux_s;
    reg [0:0] unnamed_conv2d1x119_mux_q;
    wire [0:0] unnamed_conv2d1x120_mux_s;
    reg [32:0] unnamed_conv2d1x120_mux_q;
    wire [0:0] valid_or_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // ap_pop_ext7140_mux(MUX,2)
    assign ap_pop_ext7140_mux_s = in_valid_in_0;
    always @(ap_pop_ext7140_mux_s or in_ap_pop_ext7140_1 or in_ap_pop_ext7140_0)
    begin
        unique case (ap_pop_ext7140_mux_s)
            1'b0 : ap_pop_ext7140_mux_q = in_ap_pop_ext7140_1;
            1'b1 : ap_pop_ext7140_mux_q = in_ap_pop_ext7140_0;
            default : ap_pop_ext7140_mux_q = 64'b0;
        endcase
    end

    // out_ap_pop_ext7140(GPOUT,93)
    assign out_ap_pop_ext7140 = ap_pop_ext7140_mux_q;

    // forked_mux(MUX,3)
    assign forked_mux_s = in_valid_in_0;
    always @(forked_mux_s or in_forked_1 or in_forked_0)
    begin
        unique case (forked_mux_s)
            1'b0 : forked_mux_q = in_forked_1;
            1'b1 : forked_mux_q = in_forked_0;
            default : forked_mux_q = 1'b0;
        endcase
    end

    // out_forked(GPOUT,94)
    assign out_forked = forked_mux_q;

    // ij_068_pop1366_pop36160_mux(MUX,4)
    assign ij_068_pop1366_pop36160_mux_s = in_valid_in_0;
    always @(ij_068_pop1366_pop36160_mux_s or in_ij_068_pop1366_pop36160_1 or in_ij_068_pop1366_pop36160_0)
    begin
        unique case (ij_068_pop1366_pop36160_mux_s)
            1'b0 : ij_068_pop1366_pop36160_mux_q = in_ij_068_pop1366_pop36160_1;
            1'b1 : ij_068_pop1366_pop36160_mux_q = in_ij_068_pop1366_pop36160_0;
            default : ij_068_pop1366_pop36160_mux_q = 32'b0;
        endcase
    end

    // out_ij_068_pop1366_pop36160(GPOUT,95)
    assign out_ij_068_pop1366_pop36160 = ij_068_pop1366_pop36160_mux_q;

    // lm52_pop30150_mux(MUX,82)
    assign lm52_pop30150_mux_s = in_valid_in_0;
    always @(lm52_pop30150_mux_s or in_lm52_pop30150_1 or in_lm52_pop30150_0)
    begin
        unique case (lm52_pop30150_mux_s)
            1'b0 : lm52_pop30150_mux_q = in_lm52_pop30150_1;
            1'b1 : lm52_pop30150_mux_q = in_lm52_pop30150_0;
            default : lm52_pop30150_mux_q = 32'b0;
        endcase
    end

    // out_lm52_pop30150(GPOUT,96)
    assign out_lm52_pop30150 = lm52_pop30150_mux_q;

    // lm95_mux(MUX,83)
    assign lm95_mux_s = in_valid_in_0;
    always @(lm95_mux_s or in_lm95_1 or in_lm95_0)
    begin
        unique case (lm95_mux_s)
            1'b0 : lm95_mux_q = in_lm95_1;
            1'b1 : lm95_mux_q = in_lm95_0;
            default : lm95_mux_q = 32'b0;
        endcase
    end

    // out_lm95(GPOUT,97)
    assign out_lm95 = lm95_mux_q;

    // mul100105_mux(MUX,84)
    assign mul100105_mux_s = in_valid_in_0;
    always @(mul100105_mux_s or in_mul100105_1 or in_mul100105_0)
    begin
        unique case (mul100105_mux_s)
            1'b0 : mul100105_mux_q = in_mul100105_1;
            1'b1 : mul100105_mux_q = in_mul100105_0;
            default : mul100105_mux_q = 32'b0;
        endcase
    end

    // out_mul100105(GPOUT,98)
    assign out_mul100105 = mul100105_mux_q;

    // mul10058_pop32154_mux(MUX,85)
    assign mul10058_pop32154_mux_s = in_valid_in_0;
    always @(mul10058_pop32154_mux_s or in_mul10058_pop32154_1 or in_mul10058_pop32154_0)
    begin
        unique case (mul10058_pop32154_mux_s)
            1'b0 : mul10058_pop32154_mux_q = in_mul10058_pop32154_1;
            1'b1 : mul10058_pop32154_mux_q = in_mul10058_pop32154_0;
            default : mul10058_pop32154_mux_q = 32'b0;
        endcase
    end

    // out_mul10058_pop32154(GPOUT,99)
    assign out_mul10058_pop32154 = mul10058_pop32154_mux_q;

    // mul21100_mux(MUX,86)
    assign mul21100_mux_s = in_valid_in_0;
    always @(mul21100_mux_s or in_mul21100_1 or in_mul21100_0)
    begin
        unique case (mul21100_mux_s)
            1'b0 : mul21100_mux_q = in_mul21100_1;
            1'b1 : mul21100_mux_q = in_mul21100_0;
            default : mul21100_mux_q = 32'b0;
        endcase
    end

    // out_mul21100(GPOUT,100)
    assign out_mul21100 = mul21100_mux_q;

    // mul2155_pop31152_mux(MUX,87)
    assign mul2155_pop31152_mux_s = in_valid_in_0;
    always @(mul2155_pop31152_mux_s or in_mul2155_pop31152_1 or in_mul2155_pop31152_0)
    begin
        unique case (mul2155_pop31152_mux_s)
            1'b0 : mul2155_pop31152_mux_q = in_mul2155_pop31152_1;
            1'b1 : mul2155_pop31152_mux_q = in_mul2155_pop31152_0;
            default : mul2155_pop31152_mux_q = 32'b0;
        endcase
    end

    // out_mul2155_pop31152(GPOUT,101)
    assign out_mul2155_pop31152 = mul2155_pop31152_mux_q;

    // mul49_pop26146_mux(MUX,88)
    assign mul49_pop26146_mux_s = in_valid_in_0;
    always @(mul49_pop26146_mux_s or in_mul49_pop26146_1 or in_mul49_pop26146_0)
    begin
        unique case (mul49_pop26146_mux_s)
            1'b0 : mul49_pop26146_mux_q = in_mul49_pop26146_1;
            1'b1 : mul49_pop26146_mux_q = in_mul49_pop26146_0;
            default : mul49_pop26146_mux_q = 32'b0;
        endcase
    end

    // out_mul49_pop26146(GPOUT,102)
    assign out_mul49_pop26146 = mul49_pop26146_mux_q;

    // mul90_mux(MUX,89)
    assign mul90_mux_s = in_valid_in_0;
    always @(mul90_mux_s or in_mul90_1 or in_mul90_0)
    begin
        unique case (mul90_mux_s)
            1'b0 : mul90_mux_q = in_mul90_1;
            1'b1 : mul90_mux_q = in_mul90_0;
            default : mul90_mux_q = 32'b0;
        endcase
    end

    // out_mul90(GPOUT,103)
    assign out_mul90 = mul90_mux_q;

    // notcmp3864_pop35158_mux(MUX,90)
    assign notcmp3864_pop35158_mux_s = in_valid_in_0;
    always @(notcmp3864_pop35158_mux_s or in_notcmp3864_pop35158_1 or in_notcmp3864_pop35158_0)
    begin
        unique case (notcmp3864_pop35158_mux_s)
            1'b0 : notcmp3864_pop35158_mux_q = in_notcmp3864_pop35158_1;
            1'b1 : notcmp3864_pop35158_mux_q = in_notcmp3864_pop35158_0;
            default : notcmp3864_pop35158_mux_q = 1'b0;
        endcase
    end

    // out_notcmp3864_pop35158(GPOUT,104)
    assign out_notcmp3864_pop35158 = notcmp3864_pop35158_mux_q;

    // notcmp43110_mux(MUX,91)
    assign notcmp43110_mux_s = in_valid_in_0;
    always @(notcmp43110_mux_s or in_notcmp43110_1 or in_notcmp43110_0)
    begin
        unique case (notcmp43110_mux_s)
            1'b0 : notcmp43110_mux_q = in_notcmp43110_1;
            1'b1 : notcmp43110_mux_q = in_notcmp43110_0;
            default : notcmp43110_mux_q = 1'b0;
        endcase
    end

    // out_notcmp43110(GPOUT,105)
    assign out_notcmp43110 = notcmp43110_mux_q;

    // notcmp4361_pop33156_mux(MUX,92)
    assign notcmp4361_pop33156_mux_s = in_valid_in_0;
    always @(notcmp4361_pop33156_mux_s or in_notcmp4361_pop33156_1 or in_notcmp4361_pop33156_0)
    begin
        unique case (notcmp4361_pop33156_mux_s)
            1'b0 : notcmp4361_pop33156_mux_q = in_notcmp4361_pop33156_1;
            1'b1 : notcmp4361_pop33156_mux_q = in_notcmp4361_pop33156_0;
            default : notcmp4361_pop33156_mux_q = 1'b0;
        endcase
    end

    // out_notcmp4361_pop33156(GPOUT,106)
    assign out_notcmp4361_pop33156 = notcmp4361_pop33156_mux_q;

    // pop27142_mux(MUX,133)
    assign pop27142_mux_s = in_valid_in_0;
    always @(pop27142_mux_s or in_pop27142_1 or in_pop27142_0)
    begin
        unique case (pop27142_mux_s)
            1'b0 : pop27142_mux_q = in_pop27142_1;
            1'b1 : pop27142_mux_q = in_pop27142_0;
            default : pop27142_mux_q = 1'b0;
        endcase
    end

    // out_pop27142(GPOUT,107)
    assign out_pop27142 = pop27142_mux_q;

    // pop28144_mux(MUX,134)
    assign pop28144_mux_s = in_valid_in_0;
    always @(pop28144_mux_s or in_pop28144_1 or in_pop28144_0)
    begin
        unique case (pop28144_mux_s)
            1'b0 : pop28144_mux_q = in_pop28144_1;
            1'b1 : pop28144_mux_q = in_pop28144_0;
            default : pop28144_mux_q = 1'b0;
        endcase
    end

    // out_pop28144(GPOUT,108)
    assign out_pop28144 = pop28144_mux_q;

    // pop29148_mux(MUX,135)
    assign pop29148_mux_s = in_valid_in_0;
    always @(pop29148_mux_s or in_pop29148_1 or in_pop29148_0)
    begin
        unique case (pop29148_mux_s)
            1'b0 : pop29148_mux_q = in_pop29148_1;
            1'b1 : pop29148_mux_q = in_pop29148_0;
            default : pop29148_mux_q = 1'b0;
        endcase
    end

    // out_pop29148(GPOUT,109)
    assign out_pop29148 = pop29148_mux_q;

    // pre74_e125_mux(MUX,136)
    assign pre74_e125_mux_s = in_valid_in_0;
    always @(pre74_e125_mux_s or in_pre74_e125_1 or in_pre74_e125_0)
    begin
        unique case (pre74_e125_mux_s)
            1'b0 : pre74_e125_mux_q = in_pre74_e125_1;
            1'b1 : pre74_e125_mux_q = in_pre74_e125_0;
            default : pre74_e125_mux_q = 32'b0;
        endcase
    end

    // out_pre74_e125(GPOUT,110)
    assign out_pre74_e125 = pre74_e125_mux_q;

    // pre75_e126_mux(MUX,137)
    assign pre75_e126_mux_s = in_valid_in_0;
    always @(pre75_e126_mux_s or in_pre75_e126_1 or in_pre75_e126_0)
    begin
        unique case (pre75_e126_mux_s)
            1'b0 : pre75_e126_mux_q = in_pre75_e126_1;
            1'b1 : pre75_e126_mux_q = in_pre75_e126_0;
            default : pre75_e126_mux_q = 32'b0;
        endcase
    end

    // out_pre75_e126(GPOUT,111)
    assign out_pre75_e126 = pre75_e126_mux_q;

    // pre76_e127_mux(MUX,138)
    assign pre76_e127_mux_s = in_valid_in_0;
    always @(pre76_e127_mux_s or in_pre76_e127_1 or in_pre76_e127_0)
    begin
        unique case (pre76_e127_mux_s)
            1'b0 : pre76_e127_mux_q = in_pre76_e127_1;
            1'b1 : pre76_e127_mux_q = in_pre76_e127_0;
            default : pre76_e127_mux_q = 32'b0;
        endcase
    end

    // out_pre76_e127(GPOUT,112)
    assign out_pre76_e127 = pre76_e127_mux_q;

    // pre77_e128_mux(MUX,139)
    assign pre77_e128_mux_s = in_valid_in_0;
    always @(pre77_e128_mux_s or in_pre77_e128_1 or in_pre77_e128_0)
    begin
        unique case (pre77_e128_mux_s)
            1'b0 : pre77_e128_mux_q = in_pre77_e128_1;
            1'b1 : pre77_e128_mux_q = in_pre77_e128_0;
            default : pre77_e128_mux_q = 32'b0;
        endcase
    end

    // out_pre77_e128(GPOUT,113)
    assign out_pre77_e128 = pre77_e128_mux_q;

    // pre78_e129_mux(MUX,140)
    assign pre78_e129_mux_s = in_valid_in_0;
    always @(pre78_e129_mux_s or in_pre78_e129_1 or in_pre78_e129_0)
    begin
        unique case (pre78_e129_mux_s)
            1'b0 : pre78_e129_mux_q = in_pre78_e129_1;
            1'b1 : pre78_e129_mux_q = in_pre78_e129_0;
            default : pre78_e129_mux_q = 32'b0;
        endcase
    end

    // out_pre78_e129(GPOUT,114)
    assign out_pre78_e129 = pre78_e129_mux_q;

    // pre79_e130_mux(MUX,141)
    assign pre79_e130_mux_s = in_valid_in_0;
    always @(pre79_e130_mux_s or in_pre79_e130_1 or in_pre79_e130_0)
    begin
        unique case (pre79_e130_mux_s)
            1'b0 : pre79_e130_mux_q = in_pre79_e130_1;
            1'b1 : pre79_e130_mux_q = in_pre79_e130_0;
            default : pre79_e130_mux_q = 32'b0;
        endcase
    end

    // out_pre79_e130(GPOUT,115)
    assign out_pre79_e130 = pre79_e130_mux_q;

    // pre80_e131_mux(MUX,142)
    assign pre80_e131_mux_s = in_valid_in_0;
    always @(pre80_e131_mux_s or in_pre80_e131_1 or in_pre80_e131_0)
    begin
        unique case (pre80_e131_mux_s)
            1'b0 : pre80_e131_mux_q = in_pre80_e131_1;
            1'b1 : pre80_e131_mux_q = in_pre80_e131_0;
            default : pre80_e131_mux_q = 32'b0;
        endcase
    end

    // out_pre80_e131(GPOUT,116)
    assign out_pre80_e131 = pre80_e131_mux_q;

    // pre81_e132_mux(MUX,143)
    assign pre81_e132_mux_s = in_valid_in_0;
    always @(pre81_e132_mux_s or in_pre81_e132_1 or in_pre81_e132_0)
    begin
        unique case (pre81_e132_mux_s)
            1'b0 : pre81_e132_mux_q = in_pre81_e132_1;
            1'b1 : pre81_e132_mux_q = in_pre81_e132_0;
            default : pre81_e132_mux_q = 32'b0;
        endcase
    end

    // out_pre81_e132(GPOUT,117)
    assign out_pre81_e132 = pre81_e132_mux_q;

    // pre82_e133_mux(MUX,144)
    assign pre82_e133_mux_s = in_valid_in_0;
    always @(pre82_e133_mux_s or in_pre82_e133_1 or in_pre82_e133_0)
    begin
        unique case (pre82_e133_mux_s)
            1'b0 : pre82_e133_mux_q = in_pre82_e133_1;
            1'b1 : pre82_e133_mux_q = in_pre82_e133_0;
            default : pre82_e133_mux_q = 32'b0;
        endcase
    end

    // out_pre82_e133(GPOUT,118)
    assign out_pre82_e133 = pre82_e133_mux_q;

    // pre83_e134_mux(MUX,145)
    assign pre83_e134_mux_s = in_valid_in_0;
    always @(pre83_e134_mux_s or in_pre83_e134_1 or in_pre83_e134_0)
    begin
        unique case (pre83_e134_mux_s)
            1'b0 : pre83_e134_mux_q = in_pre83_e134_1;
            1'b1 : pre83_e134_mux_q = in_pre83_e134_0;
            default : pre83_e134_mux_q = 32'b0;
        endcase
    end

    // out_pre83_e134(GPOUT,119)
    assign out_pre83_e134 = pre83_e134_mux_q;

    // pre84_e135_mux(MUX,146)
    assign pre84_e135_mux_s = in_valid_in_0;
    always @(pre84_e135_mux_s or in_pre84_e135_1 or in_pre84_e135_0)
    begin
        unique case (pre84_e135_mux_s)
            1'b0 : pre84_e135_mux_q = in_pre84_e135_1;
            1'b1 : pre84_e135_mux_q = in_pre84_e135_0;
            default : pre84_e135_mux_q = 32'b0;
        endcase
    end

    // out_pre84_e135(GPOUT,120)
    assign out_pre84_e135 = pre84_e135_mux_q;

    // pre85_e136_mux(MUX,147)
    assign pre85_e136_mux_s = in_valid_in_0;
    always @(pre85_e136_mux_s or in_pre85_e136_1 or in_pre85_e136_0)
    begin
        unique case (pre85_e136_mux_s)
            1'b0 : pre85_e136_mux_q = in_pre85_e136_1;
            1'b1 : pre85_e136_mux_q = in_pre85_e136_0;
            default : pre85_e136_mux_q = 32'b0;
        endcase
    end

    // out_pre85_e136(GPOUT,121)
    assign out_pre85_e136 = pre85_e136_mux_q;

    // pre86_e137_mux(MUX,148)
    assign pre86_e137_mux_s = in_valid_in_0;
    always @(pre86_e137_mux_s or in_pre86_e137_1 or in_pre86_e137_0)
    begin
        unique case (pre86_e137_mux_s)
            1'b0 : pre86_e137_mux_q = in_pre86_e137_1;
            1'b1 : pre86_e137_mux_q = in_pre86_e137_0;
            default : pre86_e137_mux_q = 32'b0;
        endcase
    end

    // out_pre86_e137(GPOUT,122)
    assign out_pre86_e137 = pre86_e137_mux_q;

    // pre87_e138_mux(MUX,149)
    assign pre87_e138_mux_s = in_valid_in_0;
    always @(pre87_e138_mux_s or in_pre87_e138_1 or in_pre87_e138_0)
    begin
        unique case (pre87_e138_mux_s)
            1'b0 : pre87_e138_mux_q = in_pre87_e138_1;
            1'b1 : pre87_e138_mux_q = in_pre87_e138_0;
            default : pre87_e138_mux_q = 32'b0;
        endcase
    end

    // out_pre87_e138(GPOUT,123)
    assign out_pre87_e138 = pre87_e138_mux_q;

    // pre88_e139_mux(MUX,150)
    assign pre88_e139_mux_s = in_valid_in_0;
    always @(pre88_e139_mux_s or in_pre88_e139_1 or in_pre88_e139_0)
    begin
        unique case (pre88_e139_mux_s)
            1'b0 : pre88_e139_mux_q = in_pre88_e139_1;
            1'b1 : pre88_e139_mux_q = in_pre88_e139_0;
            default : pre88_e139_mux_q = 32'b0;
        endcase
    end

    // out_pre88_e139(GPOUT,124)
    assign out_pre88_e139 = pre88_e139_mux_q;

    // pre_e124_mux(MUX,151)
    assign pre_e124_mux_s = in_valid_in_0;
    always @(pre_e124_mux_s or in_pre_e124_1 or in_pre_e124_0)
    begin
        unique case (pre_e124_mux_s)
            1'b0 : pre_e124_mux_q = in_pre_e124_1;
            1'b1 : pre_e124_mux_q = in_pre_e124_0;
            default : pre_e124_mux_q = 32'b0;
        endcase
    end

    // out_pre_e124(GPOUT,125)
    assign out_pre_e124 = pre_e124_mux_q;

    // valid_or(LOGICAL,158)
    assign valid_or_q = in_valid_in_0 | in_valid_in_1;

    // stall_out(LOGICAL,152)
    assign stall_out_q = valid_or_q & in_stall_in;

    // out_stall_out_0(GPOUT,126)
    assign out_stall_out_0 = stall_out_q;

    // stall_out_1_specific(LOGICAL,153)
    assign stall_out_1_specific_q = in_valid_in_0 | stall_out_q;

    // out_stall_out_1(GPOUT,127)
    assign out_stall_out_1 = stall_out_1_specific_q;

    // unnamed_conv2d1x117_mux(MUX,154)
    assign unnamed_conv2d1x117_mux_s = in_valid_in_0;
    always @(unnamed_conv2d1x117_mux_s or in_unnamed_conv2d1x117_1 or in_unnamed_conv2d1x117_0)
    begin
        unique case (unnamed_conv2d1x117_mux_s)
            1'b0 : unnamed_conv2d1x117_mux_q = in_unnamed_conv2d1x117_1;
            1'b1 : unnamed_conv2d1x117_mux_q = in_unnamed_conv2d1x117_0;
            default : unnamed_conv2d1x117_mux_q = 1'b0;
        endcase
    end

    // out_unnamed_conv2d1x117(GPOUT,128)
    assign out_unnamed_conv2d1x117 = unnamed_conv2d1x117_mux_q;

    // unnamed_conv2d1x118_mux(MUX,155)
    assign unnamed_conv2d1x118_mux_s = in_valid_in_0;
    always @(unnamed_conv2d1x118_mux_s or in_unnamed_conv2d1x118_1 or in_unnamed_conv2d1x118_0)
    begin
        unique case (unnamed_conv2d1x118_mux_s)
            1'b0 : unnamed_conv2d1x118_mux_q = in_unnamed_conv2d1x118_1;
            1'b1 : unnamed_conv2d1x118_mux_q = in_unnamed_conv2d1x118_0;
            default : unnamed_conv2d1x118_mux_q = 1'b0;
        endcase
    end

    // out_unnamed_conv2d1x118(GPOUT,129)
    assign out_unnamed_conv2d1x118 = unnamed_conv2d1x118_mux_q;

    // unnamed_conv2d1x119_mux(MUX,156)
    assign unnamed_conv2d1x119_mux_s = in_valid_in_0;
    always @(unnamed_conv2d1x119_mux_s or in_unnamed_conv2d1x119_1 or in_unnamed_conv2d1x119_0)
    begin
        unique case (unnamed_conv2d1x119_mux_s)
            1'b0 : unnamed_conv2d1x119_mux_q = in_unnamed_conv2d1x119_1;
            1'b1 : unnamed_conv2d1x119_mux_q = in_unnamed_conv2d1x119_0;
            default : unnamed_conv2d1x119_mux_q = 1'b0;
        endcase
    end

    // out_unnamed_conv2d1x119(GPOUT,130)
    assign out_unnamed_conv2d1x119 = unnamed_conv2d1x119_mux_q;

    // unnamed_conv2d1x120_mux(MUX,157)
    assign unnamed_conv2d1x120_mux_s = in_valid_in_0;
    always @(unnamed_conv2d1x120_mux_s or in_unnamed_conv2d1x120_1 or in_unnamed_conv2d1x120_0)
    begin
        unique case (unnamed_conv2d1x120_mux_s)
            1'b0 : unnamed_conv2d1x120_mux_q = in_unnamed_conv2d1x120_1;
            1'b1 : unnamed_conv2d1x120_mux_q = in_unnamed_conv2d1x120_0;
            default : unnamed_conv2d1x120_mux_q = 33'b0;
        endcase
    end

    // out_unnamed_conv2d1x120(GPOUT,131)
    assign out_unnamed_conv2d1x120 = unnamed_conv2d1x120_mux_q;

    // out_valid_out(GPOUT,132)
    assign out_valid_out = valid_or_q;

endmodule
