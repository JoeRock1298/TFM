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
// SystemVerilog created on Wed May 24 12:36:13 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2d1x1_B8_merge (
    input wire [63:0] in_ap_pop_ext5168_0,
    input wire [63:0] in_ap_pop_ext5168_1,
    input wire [31:0] in_arrayidx131_10_promoted_e162_0,
    input wire [31:0] in_arrayidx131_10_promoted_e162_1,
    input wire [31:0] in_arrayidx131_11_promoted_e163_0,
    input wire [31:0] in_arrayidx131_11_promoted_e163_1,
    input wire [31:0] in_arrayidx131_12_promoted_e164_0,
    input wire [31:0] in_arrayidx131_12_promoted_e164_1,
    input wire [31:0] in_arrayidx131_13_promoted_e165_0,
    input wire [31:0] in_arrayidx131_13_promoted_e165_1,
    input wire [31:0] in_arrayidx131_14_promoted_e166_0,
    input wire [31:0] in_arrayidx131_14_promoted_e166_1,
    input wire [31:0] in_arrayidx131_15_promoted_e167_0,
    input wire [31:0] in_arrayidx131_15_promoted_e167_1,
    input wire [31:0] in_arrayidx131_3_promoted_e155_0,
    input wire [31:0] in_arrayidx131_3_promoted_e155_1,
    input wire [31:0] in_arrayidx131_4_promoted_e156_0,
    input wire [31:0] in_arrayidx131_4_promoted_e156_1,
    input wire [31:0] in_arrayidx131_5_promoted_e157_0,
    input wire [31:0] in_arrayidx131_5_promoted_e157_1,
    input wire [31:0] in_arrayidx131_6_promoted_e158_0,
    input wire [31:0] in_arrayidx131_6_promoted_e158_1,
    input wire [31:0] in_arrayidx131_7_promoted_e159_0,
    input wire [31:0] in_arrayidx131_7_promoted_e159_1,
    input wire [31:0] in_arrayidx131_8_promoted_e160_0,
    input wire [31:0] in_arrayidx131_8_promoted_e160_1,
    input wire [31:0] in_arrayidx131_9_promoted_e161_0,
    input wire [31:0] in_arrayidx131_9_promoted_e161_1,
    input wire [0:0] in_forked_0,
    input wire [0:0] in_forked_1,
    input wire [31:0] in_ij_0104_pop1374_pop36188_0,
    input wire [31:0] in_ij_0104_pop1374_pop36188_1,
    input wire [31:0] in_lm115_0,
    input wire [31:0] in_lm115_1,
    input wire [31:0] in_lm60_pop30178_0,
    input wire [31:0] in_lm60_pop30178_1,
    input wire [31:0] in_mul110_0,
    input wire [31:0] in_mul110_1,
    input wire [31:0] in_mul156125_0,
    input wire [31:0] in_mul156125_1,
    input wire [31:0] in_mul15666_pop32182_0,
    input wire [31:0] in_mul15666_pop32182_1,
    input wire [31:0] in_mul21120_0,
    input wire [31:0] in_mul21120_1,
    input wire [31:0] in_mul2163_pop31180_0,
    input wire [31:0] in_mul2163_pop31180_1,
    input wire [31:0] in_mul57_pop26174_0,
    input wire [31:0] in_mul57_pop26174_1,
    input wire [0:0] in_notcmp4672_pop35186_0,
    input wire [0:0] in_notcmp4672_pop35186_1,
    input wire [0:0] in_notcmp51130_0,
    input wire [0:0] in_notcmp51130_1,
    input wire [0:0] in_notcmp5169_pop33184_0,
    input wire [0:0] in_notcmp5169_pop33184_1,
    input wire [0:0] in_pop27170_0,
    input wire [0:0] in_pop27170_1,
    input wire [0:0] in_pop28172_0,
    input wire [0:0] in_pop28172_1,
    input wire [0:0] in_pop29176_0,
    input wire [0:0] in_pop29176_1,
    input wire [31:0] in_pre109_e145_0,
    input wire [31:0] in_pre109_e145_1,
    input wire [31:0] in_pre110_e146_0,
    input wire [31:0] in_pre110_e146_1,
    input wire [31:0] in_pre111_e147_0,
    input wire [31:0] in_pre111_e147_1,
    input wire [31:0] in_pre112_e148_0,
    input wire [31:0] in_pre112_e148_1,
    input wire [31:0] in_pre113_e149_0,
    input wire [31:0] in_pre113_e149_1,
    input wire [31:0] in_pre114_e150_0,
    input wire [31:0] in_pre114_e150_1,
    input wire [31:0] in_pre115_e151_0,
    input wire [31:0] in_pre115_e151_1,
    input wire [31:0] in_pre116_e152_0,
    input wire [31:0] in_pre116_e152_1,
    input wire [31:0] in_pre117_e153_0,
    input wire [31:0] in_pre117_e153_1,
    input wire [31:0] in_pre118_e154_0,
    input wire [31:0] in_pre118_e154_1,
    input wire [31:0] in_pre_e144_0,
    input wire [31:0] in_pre_e144_1,
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
    output wire [63:0] out_ap_pop_ext5168,
    output wire [31:0] out_arrayidx131_10_promoted_e162,
    output wire [31:0] out_arrayidx131_11_promoted_e163,
    output wire [31:0] out_arrayidx131_12_promoted_e164,
    output wire [31:0] out_arrayidx131_13_promoted_e165,
    output wire [31:0] out_arrayidx131_14_promoted_e166,
    output wire [31:0] out_arrayidx131_15_promoted_e167,
    output wire [31:0] out_arrayidx131_3_promoted_e155,
    output wire [31:0] out_arrayidx131_4_promoted_e156,
    output wire [31:0] out_arrayidx131_5_promoted_e157,
    output wire [31:0] out_arrayidx131_6_promoted_e158,
    output wire [31:0] out_arrayidx131_7_promoted_e159,
    output wire [31:0] out_arrayidx131_8_promoted_e160,
    output wire [31:0] out_arrayidx131_9_promoted_e161,
    output wire [0:0] out_forked,
    output wire [31:0] out_ij_0104_pop1374_pop36188,
    output wire [31:0] out_lm115,
    output wire [31:0] out_lm60_pop30178,
    output wire [31:0] out_mul110,
    output wire [31:0] out_mul156125,
    output wire [31:0] out_mul15666_pop32182,
    output wire [31:0] out_mul21120,
    output wire [31:0] out_mul2163_pop31180,
    output wire [31:0] out_mul57_pop26174,
    output wire [0:0] out_notcmp4672_pop35186,
    output wire [0:0] out_notcmp51130,
    output wire [0:0] out_notcmp5169_pop33184,
    output wire [0:0] out_pop27170,
    output wire [0:0] out_pop28172,
    output wire [0:0] out_pop29176,
    output wire [31:0] out_pre109_e145,
    output wire [31:0] out_pre110_e146,
    output wire [31:0] out_pre111_e147,
    output wire [31:0] out_pre112_e148,
    output wire [31:0] out_pre113_e149,
    output wire [31:0] out_pre114_e150,
    output wire [31:0] out_pre115_e151,
    output wire [31:0] out_pre116_e152,
    output wire [31:0] out_pre117_e153,
    output wire [31:0] out_pre118_e154,
    output wire [31:0] out_pre_e144,
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
    wire [0:0] ap_pop_ext5168_mux_s;
    reg [63:0] ap_pop_ext5168_mux_q;
    wire [0:0] arrayidx131_10_promoted_e162_mux_s;
    reg [31:0] arrayidx131_10_promoted_e162_mux_q;
    wire [0:0] arrayidx131_11_promoted_e163_mux_s;
    reg [31:0] arrayidx131_11_promoted_e163_mux_q;
    wire [0:0] arrayidx131_12_promoted_e164_mux_s;
    reg [31:0] arrayidx131_12_promoted_e164_mux_q;
    wire [0:0] arrayidx131_13_promoted_e165_mux_s;
    reg [31:0] arrayidx131_13_promoted_e165_mux_q;
    wire [0:0] arrayidx131_14_promoted_e166_mux_s;
    reg [31:0] arrayidx131_14_promoted_e166_mux_q;
    wire [0:0] arrayidx131_15_promoted_e167_mux_s;
    reg [31:0] arrayidx131_15_promoted_e167_mux_q;
    wire [0:0] arrayidx131_3_promoted_e155_mux_s;
    reg [31:0] arrayidx131_3_promoted_e155_mux_q;
    wire [0:0] arrayidx131_4_promoted_e156_mux_s;
    reg [31:0] arrayidx131_4_promoted_e156_mux_q;
    wire [0:0] arrayidx131_5_promoted_e157_mux_s;
    reg [31:0] arrayidx131_5_promoted_e157_mux_q;
    wire [0:0] arrayidx131_6_promoted_e158_mux_s;
    reg [31:0] arrayidx131_6_promoted_e158_mux_q;
    wire [0:0] arrayidx131_7_promoted_e159_mux_s;
    reg [31:0] arrayidx131_7_promoted_e159_mux_q;
    wire [0:0] arrayidx131_8_promoted_e160_mux_s;
    reg [31:0] arrayidx131_8_promoted_e160_mux_q;
    wire [0:0] arrayidx131_9_promoted_e161_mux_s;
    reg [31:0] arrayidx131_9_promoted_e161_mux_q;
    wire [0:0] forked_mux_s;
    reg [0:0] forked_mux_q;
    wire [0:0] ij_0104_pop1374_pop36188_mux_s;
    reg [31:0] ij_0104_pop1374_pop36188_mux_q;
    wire [0:0] lm115_mux_s;
    reg [31:0] lm115_mux_q;
    wire [0:0] lm60_pop30178_mux_s;
    reg [31:0] lm60_pop30178_mux_q;
    wire [0:0] mul110_mux_s;
    reg [31:0] mul110_mux_q;
    wire [0:0] mul156125_mux_s;
    reg [31:0] mul156125_mux_q;
    wire [0:0] mul15666_pop32182_mux_s;
    reg [31:0] mul15666_pop32182_mux_q;
    wire [0:0] mul21120_mux_s;
    reg [31:0] mul21120_mux_q;
    wire [0:0] mul2163_pop31180_mux_s;
    reg [31:0] mul2163_pop31180_mux_q;
    wire [0:0] mul57_pop26174_mux_s;
    reg [31:0] mul57_pop26174_mux_q;
    wire [0:0] notcmp4672_pop35186_mux_s;
    reg [0:0] notcmp4672_pop35186_mux_q;
    wire [0:0] notcmp51130_mux_s;
    reg [0:0] notcmp51130_mux_q;
    wire [0:0] notcmp5169_pop33184_mux_s;
    reg [0:0] notcmp5169_pop33184_mux_q;
    wire [0:0] pop27170_mux_s;
    reg [0:0] pop27170_mux_q;
    wire [0:0] pop28172_mux_s;
    reg [0:0] pop28172_mux_q;
    wire [0:0] pop29176_mux_s;
    reg [0:0] pop29176_mux_q;
    wire [0:0] pre109_e145_mux_s;
    reg [31:0] pre109_e145_mux_q;
    wire [0:0] pre110_e146_mux_s;
    reg [31:0] pre110_e146_mux_q;
    wire [0:0] pre111_e147_mux_s;
    reg [31:0] pre111_e147_mux_q;
    wire [0:0] pre112_e148_mux_s;
    reg [31:0] pre112_e148_mux_q;
    wire [0:0] pre113_e149_mux_s;
    reg [31:0] pre113_e149_mux_q;
    wire [0:0] pre114_e150_mux_s;
    reg [31:0] pre114_e150_mux_q;
    wire [0:0] pre115_e151_mux_s;
    reg [31:0] pre115_e151_mux_q;
    wire [0:0] pre116_e152_mux_s;
    reg [31:0] pre116_e152_mux_q;
    wire [0:0] pre117_e153_mux_s;
    reg [31:0] pre117_e153_mux_q;
    wire [0:0] pre118_e154_mux_s;
    reg [31:0] pre118_e154_mux_q;
    wire [0:0] pre_e144_mux_s;
    reg [31:0] pre_e144_mux_q;
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

    // ap_pop_ext5168_mux(MUX,2)
    assign ap_pop_ext5168_mux_s = in_valid_in_0;
    always @(ap_pop_ext5168_mux_s or in_ap_pop_ext5168_1 or in_ap_pop_ext5168_0)
    begin
        unique case (ap_pop_ext5168_mux_s)
            1'b0 : ap_pop_ext5168_mux_q = in_ap_pop_ext5168_1;
            1'b1 : ap_pop_ext5168_mux_q = in_ap_pop_ext5168_0;
            default : ap_pop_ext5168_mux_q = 64'b0;
        endcase
    end

    // out_ap_pop_ext5168(GPOUT,122)
    assign out_ap_pop_ext5168 = ap_pop_ext5168_mux_q;

    // arrayidx131_10_promoted_e162_mux(MUX,3)
    assign arrayidx131_10_promoted_e162_mux_s = in_valid_in_0;
    always @(arrayidx131_10_promoted_e162_mux_s or in_arrayidx131_10_promoted_e162_1 or in_arrayidx131_10_promoted_e162_0)
    begin
        unique case (arrayidx131_10_promoted_e162_mux_s)
            1'b0 : arrayidx131_10_promoted_e162_mux_q = in_arrayidx131_10_promoted_e162_1;
            1'b1 : arrayidx131_10_promoted_e162_mux_q = in_arrayidx131_10_promoted_e162_0;
            default : arrayidx131_10_promoted_e162_mux_q = 32'b0;
        endcase
    end

    // out_arrayidx131_10_promoted_e162(GPOUT,123)
    assign out_arrayidx131_10_promoted_e162 = arrayidx131_10_promoted_e162_mux_q;

    // arrayidx131_11_promoted_e163_mux(MUX,4)
    assign arrayidx131_11_promoted_e163_mux_s = in_valid_in_0;
    always @(arrayidx131_11_promoted_e163_mux_s or in_arrayidx131_11_promoted_e163_1 or in_arrayidx131_11_promoted_e163_0)
    begin
        unique case (arrayidx131_11_promoted_e163_mux_s)
            1'b0 : arrayidx131_11_promoted_e163_mux_q = in_arrayidx131_11_promoted_e163_1;
            1'b1 : arrayidx131_11_promoted_e163_mux_q = in_arrayidx131_11_promoted_e163_0;
            default : arrayidx131_11_promoted_e163_mux_q = 32'b0;
        endcase
    end

    // out_arrayidx131_11_promoted_e163(GPOUT,124)
    assign out_arrayidx131_11_promoted_e163 = arrayidx131_11_promoted_e163_mux_q;

    // arrayidx131_12_promoted_e164_mux(MUX,5)
    assign arrayidx131_12_promoted_e164_mux_s = in_valid_in_0;
    always @(arrayidx131_12_promoted_e164_mux_s or in_arrayidx131_12_promoted_e164_1 or in_arrayidx131_12_promoted_e164_0)
    begin
        unique case (arrayidx131_12_promoted_e164_mux_s)
            1'b0 : arrayidx131_12_promoted_e164_mux_q = in_arrayidx131_12_promoted_e164_1;
            1'b1 : arrayidx131_12_promoted_e164_mux_q = in_arrayidx131_12_promoted_e164_0;
            default : arrayidx131_12_promoted_e164_mux_q = 32'b0;
        endcase
    end

    // out_arrayidx131_12_promoted_e164(GPOUT,125)
    assign out_arrayidx131_12_promoted_e164 = arrayidx131_12_promoted_e164_mux_q;

    // arrayidx131_13_promoted_e165_mux(MUX,6)
    assign arrayidx131_13_promoted_e165_mux_s = in_valid_in_0;
    always @(arrayidx131_13_promoted_e165_mux_s or in_arrayidx131_13_promoted_e165_1 or in_arrayidx131_13_promoted_e165_0)
    begin
        unique case (arrayidx131_13_promoted_e165_mux_s)
            1'b0 : arrayidx131_13_promoted_e165_mux_q = in_arrayidx131_13_promoted_e165_1;
            1'b1 : arrayidx131_13_promoted_e165_mux_q = in_arrayidx131_13_promoted_e165_0;
            default : arrayidx131_13_promoted_e165_mux_q = 32'b0;
        endcase
    end

    // out_arrayidx131_13_promoted_e165(GPOUT,126)
    assign out_arrayidx131_13_promoted_e165 = arrayidx131_13_promoted_e165_mux_q;

    // arrayidx131_14_promoted_e166_mux(MUX,7)
    assign arrayidx131_14_promoted_e166_mux_s = in_valid_in_0;
    always @(arrayidx131_14_promoted_e166_mux_s or in_arrayidx131_14_promoted_e166_1 or in_arrayidx131_14_promoted_e166_0)
    begin
        unique case (arrayidx131_14_promoted_e166_mux_s)
            1'b0 : arrayidx131_14_promoted_e166_mux_q = in_arrayidx131_14_promoted_e166_1;
            1'b1 : arrayidx131_14_promoted_e166_mux_q = in_arrayidx131_14_promoted_e166_0;
            default : arrayidx131_14_promoted_e166_mux_q = 32'b0;
        endcase
    end

    // out_arrayidx131_14_promoted_e166(GPOUT,127)
    assign out_arrayidx131_14_promoted_e166 = arrayidx131_14_promoted_e166_mux_q;

    // arrayidx131_15_promoted_e167_mux(MUX,8)
    assign arrayidx131_15_promoted_e167_mux_s = in_valid_in_0;
    always @(arrayidx131_15_promoted_e167_mux_s or in_arrayidx131_15_promoted_e167_1 or in_arrayidx131_15_promoted_e167_0)
    begin
        unique case (arrayidx131_15_promoted_e167_mux_s)
            1'b0 : arrayidx131_15_promoted_e167_mux_q = in_arrayidx131_15_promoted_e167_1;
            1'b1 : arrayidx131_15_promoted_e167_mux_q = in_arrayidx131_15_promoted_e167_0;
            default : arrayidx131_15_promoted_e167_mux_q = 32'b0;
        endcase
    end

    // out_arrayidx131_15_promoted_e167(GPOUT,128)
    assign out_arrayidx131_15_promoted_e167 = arrayidx131_15_promoted_e167_mux_q;

    // arrayidx131_3_promoted_e155_mux(MUX,9)
    assign arrayidx131_3_promoted_e155_mux_s = in_valid_in_0;
    always @(arrayidx131_3_promoted_e155_mux_s or in_arrayidx131_3_promoted_e155_1 or in_arrayidx131_3_promoted_e155_0)
    begin
        unique case (arrayidx131_3_promoted_e155_mux_s)
            1'b0 : arrayidx131_3_promoted_e155_mux_q = in_arrayidx131_3_promoted_e155_1;
            1'b1 : arrayidx131_3_promoted_e155_mux_q = in_arrayidx131_3_promoted_e155_0;
            default : arrayidx131_3_promoted_e155_mux_q = 32'b0;
        endcase
    end

    // out_arrayidx131_3_promoted_e155(GPOUT,129)
    assign out_arrayidx131_3_promoted_e155 = arrayidx131_3_promoted_e155_mux_q;

    // arrayidx131_4_promoted_e156_mux(MUX,10)
    assign arrayidx131_4_promoted_e156_mux_s = in_valid_in_0;
    always @(arrayidx131_4_promoted_e156_mux_s or in_arrayidx131_4_promoted_e156_1 or in_arrayidx131_4_promoted_e156_0)
    begin
        unique case (arrayidx131_4_promoted_e156_mux_s)
            1'b0 : arrayidx131_4_promoted_e156_mux_q = in_arrayidx131_4_promoted_e156_1;
            1'b1 : arrayidx131_4_promoted_e156_mux_q = in_arrayidx131_4_promoted_e156_0;
            default : arrayidx131_4_promoted_e156_mux_q = 32'b0;
        endcase
    end

    // out_arrayidx131_4_promoted_e156(GPOUT,130)
    assign out_arrayidx131_4_promoted_e156 = arrayidx131_4_promoted_e156_mux_q;

    // arrayidx131_5_promoted_e157_mux(MUX,11)
    assign arrayidx131_5_promoted_e157_mux_s = in_valid_in_0;
    always @(arrayidx131_5_promoted_e157_mux_s or in_arrayidx131_5_promoted_e157_1 or in_arrayidx131_5_promoted_e157_0)
    begin
        unique case (arrayidx131_5_promoted_e157_mux_s)
            1'b0 : arrayidx131_5_promoted_e157_mux_q = in_arrayidx131_5_promoted_e157_1;
            1'b1 : arrayidx131_5_promoted_e157_mux_q = in_arrayidx131_5_promoted_e157_0;
            default : arrayidx131_5_promoted_e157_mux_q = 32'b0;
        endcase
    end

    // out_arrayidx131_5_promoted_e157(GPOUT,131)
    assign out_arrayidx131_5_promoted_e157 = arrayidx131_5_promoted_e157_mux_q;

    // arrayidx131_6_promoted_e158_mux(MUX,12)
    assign arrayidx131_6_promoted_e158_mux_s = in_valid_in_0;
    always @(arrayidx131_6_promoted_e158_mux_s or in_arrayidx131_6_promoted_e158_1 or in_arrayidx131_6_promoted_e158_0)
    begin
        unique case (arrayidx131_6_promoted_e158_mux_s)
            1'b0 : arrayidx131_6_promoted_e158_mux_q = in_arrayidx131_6_promoted_e158_1;
            1'b1 : arrayidx131_6_promoted_e158_mux_q = in_arrayidx131_6_promoted_e158_0;
            default : arrayidx131_6_promoted_e158_mux_q = 32'b0;
        endcase
    end

    // out_arrayidx131_6_promoted_e158(GPOUT,132)
    assign out_arrayidx131_6_promoted_e158 = arrayidx131_6_promoted_e158_mux_q;

    // arrayidx131_7_promoted_e159_mux(MUX,13)
    assign arrayidx131_7_promoted_e159_mux_s = in_valid_in_0;
    always @(arrayidx131_7_promoted_e159_mux_s or in_arrayidx131_7_promoted_e159_1 or in_arrayidx131_7_promoted_e159_0)
    begin
        unique case (arrayidx131_7_promoted_e159_mux_s)
            1'b0 : arrayidx131_7_promoted_e159_mux_q = in_arrayidx131_7_promoted_e159_1;
            1'b1 : arrayidx131_7_promoted_e159_mux_q = in_arrayidx131_7_promoted_e159_0;
            default : arrayidx131_7_promoted_e159_mux_q = 32'b0;
        endcase
    end

    // out_arrayidx131_7_promoted_e159(GPOUT,133)
    assign out_arrayidx131_7_promoted_e159 = arrayidx131_7_promoted_e159_mux_q;

    // arrayidx131_8_promoted_e160_mux(MUX,14)
    assign arrayidx131_8_promoted_e160_mux_s = in_valid_in_0;
    always @(arrayidx131_8_promoted_e160_mux_s or in_arrayidx131_8_promoted_e160_1 or in_arrayidx131_8_promoted_e160_0)
    begin
        unique case (arrayidx131_8_promoted_e160_mux_s)
            1'b0 : arrayidx131_8_promoted_e160_mux_q = in_arrayidx131_8_promoted_e160_1;
            1'b1 : arrayidx131_8_promoted_e160_mux_q = in_arrayidx131_8_promoted_e160_0;
            default : arrayidx131_8_promoted_e160_mux_q = 32'b0;
        endcase
    end

    // out_arrayidx131_8_promoted_e160(GPOUT,134)
    assign out_arrayidx131_8_promoted_e160 = arrayidx131_8_promoted_e160_mux_q;

    // arrayidx131_9_promoted_e161_mux(MUX,15)
    assign arrayidx131_9_promoted_e161_mux_s = in_valid_in_0;
    always @(arrayidx131_9_promoted_e161_mux_s or in_arrayidx131_9_promoted_e161_1 or in_arrayidx131_9_promoted_e161_0)
    begin
        unique case (arrayidx131_9_promoted_e161_mux_s)
            1'b0 : arrayidx131_9_promoted_e161_mux_q = in_arrayidx131_9_promoted_e161_1;
            1'b1 : arrayidx131_9_promoted_e161_mux_q = in_arrayidx131_9_promoted_e161_0;
            default : arrayidx131_9_promoted_e161_mux_q = 32'b0;
        endcase
    end

    // out_arrayidx131_9_promoted_e161(GPOUT,135)
    assign out_arrayidx131_9_promoted_e161 = arrayidx131_9_promoted_e161_mux_q;

    // forked_mux(MUX,16)
    assign forked_mux_s = in_valid_in_0;
    always @(forked_mux_s or in_forked_1 or in_forked_0)
    begin
        unique case (forked_mux_s)
            1'b0 : forked_mux_q = in_forked_1;
            1'b1 : forked_mux_q = in_forked_0;
            default : forked_mux_q = 1'b0;
        endcase
    end

    // out_forked(GPOUT,136)
    assign out_forked = forked_mux_q;

    // ij_0104_pop1374_pop36188_mux(MUX,17)
    assign ij_0104_pop1374_pop36188_mux_s = in_valid_in_0;
    always @(ij_0104_pop1374_pop36188_mux_s or in_ij_0104_pop1374_pop36188_1 or in_ij_0104_pop1374_pop36188_0)
    begin
        unique case (ij_0104_pop1374_pop36188_mux_s)
            1'b0 : ij_0104_pop1374_pop36188_mux_q = in_ij_0104_pop1374_pop36188_1;
            1'b1 : ij_0104_pop1374_pop36188_mux_q = in_ij_0104_pop1374_pop36188_0;
            default : ij_0104_pop1374_pop36188_mux_q = 32'b0;
        endcase
    end

    // out_ij_0104_pop1374_pop36188(GPOUT,137)
    assign out_ij_0104_pop1374_pop36188 = ij_0104_pop1374_pop36188_mux_q;

    // lm115_mux(MUX,111)
    assign lm115_mux_s = in_valid_in_0;
    always @(lm115_mux_s or in_lm115_1 or in_lm115_0)
    begin
        unique case (lm115_mux_s)
            1'b0 : lm115_mux_q = in_lm115_1;
            1'b1 : lm115_mux_q = in_lm115_0;
            default : lm115_mux_q = 32'b0;
        endcase
    end

    // out_lm115(GPOUT,138)
    assign out_lm115 = lm115_mux_q;

    // lm60_pop30178_mux(MUX,112)
    assign lm60_pop30178_mux_s = in_valid_in_0;
    always @(lm60_pop30178_mux_s or in_lm60_pop30178_1 or in_lm60_pop30178_0)
    begin
        unique case (lm60_pop30178_mux_s)
            1'b0 : lm60_pop30178_mux_q = in_lm60_pop30178_1;
            1'b1 : lm60_pop30178_mux_q = in_lm60_pop30178_0;
            default : lm60_pop30178_mux_q = 32'b0;
        endcase
    end

    // out_lm60_pop30178(GPOUT,139)
    assign out_lm60_pop30178 = lm60_pop30178_mux_q;

    // mul110_mux(MUX,113)
    assign mul110_mux_s = in_valid_in_0;
    always @(mul110_mux_s or in_mul110_1 or in_mul110_0)
    begin
        unique case (mul110_mux_s)
            1'b0 : mul110_mux_q = in_mul110_1;
            1'b1 : mul110_mux_q = in_mul110_0;
            default : mul110_mux_q = 32'b0;
        endcase
    end

    // out_mul110(GPOUT,140)
    assign out_mul110 = mul110_mux_q;

    // mul156125_mux(MUX,114)
    assign mul156125_mux_s = in_valid_in_0;
    always @(mul156125_mux_s or in_mul156125_1 or in_mul156125_0)
    begin
        unique case (mul156125_mux_s)
            1'b0 : mul156125_mux_q = in_mul156125_1;
            1'b1 : mul156125_mux_q = in_mul156125_0;
            default : mul156125_mux_q = 32'b0;
        endcase
    end

    // out_mul156125(GPOUT,141)
    assign out_mul156125 = mul156125_mux_q;

    // mul15666_pop32182_mux(MUX,115)
    assign mul15666_pop32182_mux_s = in_valid_in_0;
    always @(mul15666_pop32182_mux_s or in_mul15666_pop32182_1 or in_mul15666_pop32182_0)
    begin
        unique case (mul15666_pop32182_mux_s)
            1'b0 : mul15666_pop32182_mux_q = in_mul15666_pop32182_1;
            1'b1 : mul15666_pop32182_mux_q = in_mul15666_pop32182_0;
            default : mul15666_pop32182_mux_q = 32'b0;
        endcase
    end

    // out_mul15666_pop32182(GPOUT,142)
    assign out_mul15666_pop32182 = mul15666_pop32182_mux_q;

    // mul21120_mux(MUX,116)
    assign mul21120_mux_s = in_valid_in_0;
    always @(mul21120_mux_s or in_mul21120_1 or in_mul21120_0)
    begin
        unique case (mul21120_mux_s)
            1'b0 : mul21120_mux_q = in_mul21120_1;
            1'b1 : mul21120_mux_q = in_mul21120_0;
            default : mul21120_mux_q = 32'b0;
        endcase
    end

    // out_mul21120(GPOUT,143)
    assign out_mul21120 = mul21120_mux_q;

    // mul2163_pop31180_mux(MUX,117)
    assign mul2163_pop31180_mux_s = in_valid_in_0;
    always @(mul2163_pop31180_mux_s or in_mul2163_pop31180_1 or in_mul2163_pop31180_0)
    begin
        unique case (mul2163_pop31180_mux_s)
            1'b0 : mul2163_pop31180_mux_q = in_mul2163_pop31180_1;
            1'b1 : mul2163_pop31180_mux_q = in_mul2163_pop31180_0;
            default : mul2163_pop31180_mux_q = 32'b0;
        endcase
    end

    // out_mul2163_pop31180(GPOUT,144)
    assign out_mul2163_pop31180 = mul2163_pop31180_mux_q;

    // mul57_pop26174_mux(MUX,118)
    assign mul57_pop26174_mux_s = in_valid_in_0;
    always @(mul57_pop26174_mux_s or in_mul57_pop26174_1 or in_mul57_pop26174_0)
    begin
        unique case (mul57_pop26174_mux_s)
            1'b0 : mul57_pop26174_mux_q = in_mul57_pop26174_1;
            1'b1 : mul57_pop26174_mux_q = in_mul57_pop26174_0;
            default : mul57_pop26174_mux_q = 32'b0;
        endcase
    end

    // out_mul57_pop26174(GPOUT,145)
    assign out_mul57_pop26174 = mul57_pop26174_mux_q;

    // notcmp4672_pop35186_mux(MUX,119)
    assign notcmp4672_pop35186_mux_s = in_valid_in_0;
    always @(notcmp4672_pop35186_mux_s or in_notcmp4672_pop35186_1 or in_notcmp4672_pop35186_0)
    begin
        unique case (notcmp4672_pop35186_mux_s)
            1'b0 : notcmp4672_pop35186_mux_q = in_notcmp4672_pop35186_1;
            1'b1 : notcmp4672_pop35186_mux_q = in_notcmp4672_pop35186_0;
            default : notcmp4672_pop35186_mux_q = 1'b0;
        endcase
    end

    // out_notcmp4672_pop35186(GPOUT,146)
    assign out_notcmp4672_pop35186 = notcmp4672_pop35186_mux_q;

    // notcmp51130_mux(MUX,120)
    assign notcmp51130_mux_s = in_valid_in_0;
    always @(notcmp51130_mux_s or in_notcmp51130_1 or in_notcmp51130_0)
    begin
        unique case (notcmp51130_mux_s)
            1'b0 : notcmp51130_mux_q = in_notcmp51130_1;
            1'b1 : notcmp51130_mux_q = in_notcmp51130_0;
            default : notcmp51130_mux_q = 1'b0;
        endcase
    end

    // out_notcmp51130(GPOUT,147)
    assign out_notcmp51130 = notcmp51130_mux_q;

    // notcmp5169_pop33184_mux(MUX,121)
    assign notcmp5169_pop33184_mux_s = in_valid_in_0;
    always @(notcmp5169_pop33184_mux_s or in_notcmp5169_pop33184_1 or in_notcmp5169_pop33184_0)
    begin
        unique case (notcmp5169_pop33184_mux_s)
            1'b0 : notcmp5169_pop33184_mux_q = in_notcmp5169_pop33184_1;
            1'b1 : notcmp5169_pop33184_mux_q = in_notcmp5169_pop33184_0;
            default : notcmp5169_pop33184_mux_q = 1'b0;
        endcase
    end

    // out_notcmp5169_pop33184(GPOUT,148)
    assign out_notcmp5169_pop33184 = notcmp5169_pop33184_mux_q;

    // pop27170_mux(MUX,170)
    assign pop27170_mux_s = in_valid_in_0;
    always @(pop27170_mux_s or in_pop27170_1 or in_pop27170_0)
    begin
        unique case (pop27170_mux_s)
            1'b0 : pop27170_mux_q = in_pop27170_1;
            1'b1 : pop27170_mux_q = in_pop27170_0;
            default : pop27170_mux_q = 1'b0;
        endcase
    end

    // out_pop27170(GPOUT,149)
    assign out_pop27170 = pop27170_mux_q;

    // pop28172_mux(MUX,171)
    assign pop28172_mux_s = in_valid_in_0;
    always @(pop28172_mux_s or in_pop28172_1 or in_pop28172_0)
    begin
        unique case (pop28172_mux_s)
            1'b0 : pop28172_mux_q = in_pop28172_1;
            1'b1 : pop28172_mux_q = in_pop28172_0;
            default : pop28172_mux_q = 1'b0;
        endcase
    end

    // out_pop28172(GPOUT,150)
    assign out_pop28172 = pop28172_mux_q;

    // pop29176_mux(MUX,172)
    assign pop29176_mux_s = in_valid_in_0;
    always @(pop29176_mux_s or in_pop29176_1 or in_pop29176_0)
    begin
        unique case (pop29176_mux_s)
            1'b0 : pop29176_mux_q = in_pop29176_1;
            1'b1 : pop29176_mux_q = in_pop29176_0;
            default : pop29176_mux_q = 1'b0;
        endcase
    end

    // out_pop29176(GPOUT,151)
    assign out_pop29176 = pop29176_mux_q;

    // pre109_e145_mux(MUX,173)
    assign pre109_e145_mux_s = in_valid_in_0;
    always @(pre109_e145_mux_s or in_pre109_e145_1 or in_pre109_e145_0)
    begin
        unique case (pre109_e145_mux_s)
            1'b0 : pre109_e145_mux_q = in_pre109_e145_1;
            1'b1 : pre109_e145_mux_q = in_pre109_e145_0;
            default : pre109_e145_mux_q = 32'b0;
        endcase
    end

    // out_pre109_e145(GPOUT,152)
    assign out_pre109_e145 = pre109_e145_mux_q;

    // pre110_e146_mux(MUX,174)
    assign pre110_e146_mux_s = in_valid_in_0;
    always @(pre110_e146_mux_s or in_pre110_e146_1 or in_pre110_e146_0)
    begin
        unique case (pre110_e146_mux_s)
            1'b0 : pre110_e146_mux_q = in_pre110_e146_1;
            1'b1 : pre110_e146_mux_q = in_pre110_e146_0;
            default : pre110_e146_mux_q = 32'b0;
        endcase
    end

    // out_pre110_e146(GPOUT,153)
    assign out_pre110_e146 = pre110_e146_mux_q;

    // pre111_e147_mux(MUX,175)
    assign pre111_e147_mux_s = in_valid_in_0;
    always @(pre111_e147_mux_s or in_pre111_e147_1 or in_pre111_e147_0)
    begin
        unique case (pre111_e147_mux_s)
            1'b0 : pre111_e147_mux_q = in_pre111_e147_1;
            1'b1 : pre111_e147_mux_q = in_pre111_e147_0;
            default : pre111_e147_mux_q = 32'b0;
        endcase
    end

    // out_pre111_e147(GPOUT,154)
    assign out_pre111_e147 = pre111_e147_mux_q;

    // pre112_e148_mux(MUX,176)
    assign pre112_e148_mux_s = in_valid_in_0;
    always @(pre112_e148_mux_s or in_pre112_e148_1 or in_pre112_e148_0)
    begin
        unique case (pre112_e148_mux_s)
            1'b0 : pre112_e148_mux_q = in_pre112_e148_1;
            1'b1 : pre112_e148_mux_q = in_pre112_e148_0;
            default : pre112_e148_mux_q = 32'b0;
        endcase
    end

    // out_pre112_e148(GPOUT,155)
    assign out_pre112_e148 = pre112_e148_mux_q;

    // pre113_e149_mux(MUX,177)
    assign pre113_e149_mux_s = in_valid_in_0;
    always @(pre113_e149_mux_s or in_pre113_e149_1 or in_pre113_e149_0)
    begin
        unique case (pre113_e149_mux_s)
            1'b0 : pre113_e149_mux_q = in_pre113_e149_1;
            1'b1 : pre113_e149_mux_q = in_pre113_e149_0;
            default : pre113_e149_mux_q = 32'b0;
        endcase
    end

    // out_pre113_e149(GPOUT,156)
    assign out_pre113_e149 = pre113_e149_mux_q;

    // pre114_e150_mux(MUX,178)
    assign pre114_e150_mux_s = in_valid_in_0;
    always @(pre114_e150_mux_s or in_pre114_e150_1 or in_pre114_e150_0)
    begin
        unique case (pre114_e150_mux_s)
            1'b0 : pre114_e150_mux_q = in_pre114_e150_1;
            1'b1 : pre114_e150_mux_q = in_pre114_e150_0;
            default : pre114_e150_mux_q = 32'b0;
        endcase
    end

    // out_pre114_e150(GPOUT,157)
    assign out_pre114_e150 = pre114_e150_mux_q;

    // pre115_e151_mux(MUX,179)
    assign pre115_e151_mux_s = in_valid_in_0;
    always @(pre115_e151_mux_s or in_pre115_e151_1 or in_pre115_e151_0)
    begin
        unique case (pre115_e151_mux_s)
            1'b0 : pre115_e151_mux_q = in_pre115_e151_1;
            1'b1 : pre115_e151_mux_q = in_pre115_e151_0;
            default : pre115_e151_mux_q = 32'b0;
        endcase
    end

    // out_pre115_e151(GPOUT,158)
    assign out_pre115_e151 = pre115_e151_mux_q;

    // pre116_e152_mux(MUX,180)
    assign pre116_e152_mux_s = in_valid_in_0;
    always @(pre116_e152_mux_s or in_pre116_e152_1 or in_pre116_e152_0)
    begin
        unique case (pre116_e152_mux_s)
            1'b0 : pre116_e152_mux_q = in_pre116_e152_1;
            1'b1 : pre116_e152_mux_q = in_pre116_e152_0;
            default : pre116_e152_mux_q = 32'b0;
        endcase
    end

    // out_pre116_e152(GPOUT,159)
    assign out_pre116_e152 = pre116_e152_mux_q;

    // pre117_e153_mux(MUX,181)
    assign pre117_e153_mux_s = in_valid_in_0;
    always @(pre117_e153_mux_s or in_pre117_e153_1 or in_pre117_e153_0)
    begin
        unique case (pre117_e153_mux_s)
            1'b0 : pre117_e153_mux_q = in_pre117_e153_1;
            1'b1 : pre117_e153_mux_q = in_pre117_e153_0;
            default : pre117_e153_mux_q = 32'b0;
        endcase
    end

    // out_pre117_e153(GPOUT,160)
    assign out_pre117_e153 = pre117_e153_mux_q;

    // pre118_e154_mux(MUX,182)
    assign pre118_e154_mux_s = in_valid_in_0;
    always @(pre118_e154_mux_s or in_pre118_e154_1 or in_pre118_e154_0)
    begin
        unique case (pre118_e154_mux_s)
            1'b0 : pre118_e154_mux_q = in_pre118_e154_1;
            1'b1 : pre118_e154_mux_q = in_pre118_e154_0;
            default : pre118_e154_mux_q = 32'b0;
        endcase
    end

    // out_pre118_e154(GPOUT,161)
    assign out_pre118_e154 = pre118_e154_mux_q;

    // pre_e144_mux(MUX,183)
    assign pre_e144_mux_s = in_valid_in_0;
    always @(pre_e144_mux_s or in_pre_e144_1 or in_pre_e144_0)
    begin
        unique case (pre_e144_mux_s)
            1'b0 : pre_e144_mux_q = in_pre_e144_1;
            1'b1 : pre_e144_mux_q = in_pre_e144_0;
            default : pre_e144_mux_q = 32'b0;
        endcase
    end

    // out_pre_e144(GPOUT,162)
    assign out_pre_e144 = pre_e144_mux_q;

    // valid_or(LOGICAL,190)
    assign valid_or_q = in_valid_in_0 | in_valid_in_1;

    // stall_out(LOGICAL,184)
    assign stall_out_q = valid_or_q & in_stall_in;

    // out_stall_out_0(GPOUT,163)
    assign out_stall_out_0 = stall_out_q;

    // stall_out_1_specific(LOGICAL,185)
    assign stall_out_1_specific_q = in_valid_in_0 | stall_out_q;

    // out_stall_out_1(GPOUT,164)
    assign out_stall_out_1 = stall_out_1_specific_q;

    // unnamed_conv2d1x117_mux(MUX,186)
    assign unnamed_conv2d1x117_mux_s = in_valid_in_0;
    always @(unnamed_conv2d1x117_mux_s or in_unnamed_conv2d1x117_1 or in_unnamed_conv2d1x117_0)
    begin
        unique case (unnamed_conv2d1x117_mux_s)
            1'b0 : unnamed_conv2d1x117_mux_q = in_unnamed_conv2d1x117_1;
            1'b1 : unnamed_conv2d1x117_mux_q = in_unnamed_conv2d1x117_0;
            default : unnamed_conv2d1x117_mux_q = 1'b0;
        endcase
    end

    // out_unnamed_conv2d1x117(GPOUT,165)
    assign out_unnamed_conv2d1x117 = unnamed_conv2d1x117_mux_q;

    // unnamed_conv2d1x118_mux(MUX,187)
    assign unnamed_conv2d1x118_mux_s = in_valid_in_0;
    always @(unnamed_conv2d1x118_mux_s or in_unnamed_conv2d1x118_1 or in_unnamed_conv2d1x118_0)
    begin
        unique case (unnamed_conv2d1x118_mux_s)
            1'b0 : unnamed_conv2d1x118_mux_q = in_unnamed_conv2d1x118_1;
            1'b1 : unnamed_conv2d1x118_mux_q = in_unnamed_conv2d1x118_0;
            default : unnamed_conv2d1x118_mux_q = 1'b0;
        endcase
    end

    // out_unnamed_conv2d1x118(GPOUT,166)
    assign out_unnamed_conv2d1x118 = unnamed_conv2d1x118_mux_q;

    // unnamed_conv2d1x119_mux(MUX,188)
    assign unnamed_conv2d1x119_mux_s = in_valid_in_0;
    always @(unnamed_conv2d1x119_mux_s or in_unnamed_conv2d1x119_1 or in_unnamed_conv2d1x119_0)
    begin
        unique case (unnamed_conv2d1x119_mux_s)
            1'b0 : unnamed_conv2d1x119_mux_q = in_unnamed_conv2d1x119_1;
            1'b1 : unnamed_conv2d1x119_mux_q = in_unnamed_conv2d1x119_0;
            default : unnamed_conv2d1x119_mux_q = 1'b0;
        endcase
    end

    // out_unnamed_conv2d1x119(GPOUT,167)
    assign out_unnamed_conv2d1x119 = unnamed_conv2d1x119_mux_q;

    // unnamed_conv2d1x120_mux(MUX,189)
    assign unnamed_conv2d1x120_mux_s = in_valid_in_0;
    always @(unnamed_conv2d1x120_mux_s or in_unnamed_conv2d1x120_1 or in_unnamed_conv2d1x120_0)
    begin
        unique case (unnamed_conv2d1x120_mux_s)
            1'b0 : unnamed_conv2d1x120_mux_q = in_unnamed_conv2d1x120_1;
            1'b1 : unnamed_conv2d1x120_mux_q = in_unnamed_conv2d1x120_0;
            default : unnamed_conv2d1x120_mux_q = 33'b0;
        endcase
    end

    // out_unnamed_conv2d1x120(GPOUT,168)
    assign out_unnamed_conv2d1x120 = unnamed_conv2d1x120_mux_q;

    // out_valid_out(GPOUT,169)
    assign out_valid_out = valid_or_q;

endmodule
