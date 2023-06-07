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

// SystemVerilog created from maxpool2d_B7_merge
// SystemVerilog created on Sat Jun  3 13:01:56 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module maxpool2d_B7_merge (
    input wire [0:0] in_forked31_0,
    input wire [0:0] in_forked31_1,
    input wire [63:0] in_input_im_addr_041_replace_phi36_pop17107_0,
    input wire [63:0] in_input_im_addr_041_replace_phi36_pop17107_1,
    input wire [63:0] in_input_im_addr_041_replace_phi37_pop22122_0,
    input wire [63:0] in_input_im_addr_041_replace_phi37_pop22122_1,
    input wire [63:0] in_input_im_addr_041_replace_phi74_0,
    input wire [63:0] in_input_im_addr_041_replace_phi74_1,
    input wire [31:0] in_j_034_pop20116_0,
    input wire [31:0] in_j_034_pop20116_1,
    input wire [31:0] in_mul2547_pop25131_0,
    input wire [31:0] in_mul2547_pop25131_1,
    input wire [31:0] in_mul2592_0,
    input wire [31:0] in_mul2592_1,
    input wire [31:0] in_mul44_pop24128_0,
    input wire [31:0] in_mul44_pop24128_1,
    input wire [31:0] in_mul87_0,
    input wire [31:0] in_mul87_1,
    input wire [0:0] in_notcmp19113_0,
    input wire [0:0] in_notcmp19113_1,
    input wire [0:0] in_notcmp2350_pop26134_0,
    input wire [0:0] in_notcmp2350_pop26134_1,
    input wire [0:0] in_notcmp2397_0,
    input wire [0:0] in_notcmp2397_1,
    input wire [0:0] in_notcmp2740_pop18112_0,
    input wire [0:0] in_notcmp2740_pop18112_1,
    input wire [0:0] in_notcmp2741_pop23125_0,
    input wire [0:0] in_notcmp2741_pop23125_1,
    input wire [0:0] in_notcmp2781_0,
    input wire [0:0] in_notcmp2781_1,
    input wire [63:0] in_output_im_addr_042_replace_phi32_pop16102_0,
    input wire [63:0] in_output_im_addr_042_replace_phi32_pop16102_1,
    input wire [63:0] in_output_im_addr_042_replace_phi33_pop21119_0,
    input wire [63:0] in_output_im_addr_042_replace_phi33_pop21119_1,
    input wire [63:0] in_output_im_addr_042_replace_phi67_0,
    input wire [63:0] in_output_im_addr_042_replace_phi67_1,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [0:0] out_forked31,
    output wire [63:0] out_input_im_addr_041_replace_phi36_pop17107,
    output wire [63:0] out_input_im_addr_041_replace_phi37_pop22122,
    output wire [63:0] out_input_im_addr_041_replace_phi74,
    output wire [31:0] out_j_034_pop20116,
    output wire [31:0] out_mul2547_pop25131,
    output wire [31:0] out_mul2592,
    output wire [31:0] out_mul44_pop24128,
    output wire [31:0] out_mul87,
    output wire [0:0] out_notcmp19113,
    output wire [0:0] out_notcmp2350_pop26134,
    output wire [0:0] out_notcmp2397,
    output wire [0:0] out_notcmp2740_pop18112,
    output wire [0:0] out_notcmp2741_pop23125,
    output wire [0:0] out_notcmp2781,
    output wire [63:0] out_output_im_addr_042_replace_phi32_pop16102,
    output wire [63:0] out_output_im_addr_042_replace_phi33_pop21119,
    output wire [63:0] out_output_im_addr_042_replace_phi67,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    wire [0:0] forked31_mux_s;
    reg [0:0] forked31_mux_q;
    wire [0:0] input_im_addr_041_replace_phi36_pop17107_mux_s;
    reg [63:0] input_im_addr_041_replace_phi36_pop17107_mux_q;
    wire [0:0] input_im_addr_041_replace_phi37_pop22122_mux_s;
    reg [63:0] input_im_addr_041_replace_phi37_pop22122_mux_q;
    wire [0:0] input_im_addr_041_replace_phi74_mux_s;
    reg [63:0] input_im_addr_041_replace_phi74_mux_q;
    wire [0:0] j_034_pop20116_mux_s;
    reg [31:0] j_034_pop20116_mux_q;
    wire [0:0] mul2547_pop25131_mux_s;
    reg [31:0] mul2547_pop25131_mux_q;
    wire [0:0] mul2592_mux_s;
    reg [31:0] mul2592_mux_q;
    wire [0:0] mul44_pop24128_mux_s;
    reg [31:0] mul44_pop24128_mux_q;
    wire [0:0] mul87_mux_s;
    reg [31:0] mul87_mux_q;
    wire [0:0] notcmp19113_mux_s;
    reg [0:0] notcmp19113_mux_q;
    wire [0:0] notcmp2350_pop26134_mux_s;
    reg [0:0] notcmp2350_pop26134_mux_q;
    wire [0:0] notcmp2397_mux_s;
    reg [0:0] notcmp2397_mux_q;
    wire [0:0] notcmp2740_pop18112_mux_s;
    reg [0:0] notcmp2740_pop18112_mux_q;
    wire [0:0] notcmp2741_pop23125_mux_s;
    reg [0:0] notcmp2741_pop23125_mux_q;
    wire [0:0] notcmp2781_mux_s;
    reg [0:0] notcmp2781_mux_q;
    wire [0:0] output_im_addr_042_replace_phi32_pop16102_mux_s;
    reg [63:0] output_im_addr_042_replace_phi32_pop16102_mux_q;
    wire [0:0] output_im_addr_042_replace_phi33_pop21119_mux_s;
    reg [63:0] output_im_addr_042_replace_phi33_pop21119_mux_q;
    wire [0:0] output_im_addr_042_replace_phi67_mux_s;
    reg [63:0] output_im_addr_042_replace_phi67_mux_q;
    wire [0:0] stall_out_q;
    wire [0:0] stall_out_1_specific_q;
    wire [0:0] valid_or_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // forked31_mux(MUX,2)
    assign forked31_mux_s = in_valid_in_0;
    always @(forked31_mux_s or in_forked31_1 or in_forked31_0)
    begin
        unique case (forked31_mux_s)
            1'b0 : forked31_mux_q = in_forked31_1;
            1'b1 : forked31_mux_q = in_forked31_0;
            default : forked31_mux_q = 1'b0;
        endcase
    end

    // out_forked31(GPOUT,56)
    assign out_forked31 = forked31_mux_q;

    // input_im_addr_041_replace_phi36_pop17107_mux(MUX,42)
    assign input_im_addr_041_replace_phi36_pop17107_mux_s = in_valid_in_0;
    always @(input_im_addr_041_replace_phi36_pop17107_mux_s or in_input_im_addr_041_replace_phi36_pop17107_1 or in_input_im_addr_041_replace_phi36_pop17107_0)
    begin
        unique case (input_im_addr_041_replace_phi36_pop17107_mux_s)
            1'b0 : input_im_addr_041_replace_phi36_pop17107_mux_q = in_input_im_addr_041_replace_phi36_pop17107_1;
            1'b1 : input_im_addr_041_replace_phi36_pop17107_mux_q = in_input_im_addr_041_replace_phi36_pop17107_0;
            default : input_im_addr_041_replace_phi36_pop17107_mux_q = 64'b0;
        endcase
    end

    // out_input_im_addr_041_replace_phi36_pop17107(GPOUT,57)
    assign out_input_im_addr_041_replace_phi36_pop17107 = input_im_addr_041_replace_phi36_pop17107_mux_q;

    // input_im_addr_041_replace_phi37_pop22122_mux(MUX,43)
    assign input_im_addr_041_replace_phi37_pop22122_mux_s = in_valid_in_0;
    always @(input_im_addr_041_replace_phi37_pop22122_mux_s or in_input_im_addr_041_replace_phi37_pop22122_1 or in_input_im_addr_041_replace_phi37_pop22122_0)
    begin
        unique case (input_im_addr_041_replace_phi37_pop22122_mux_s)
            1'b0 : input_im_addr_041_replace_phi37_pop22122_mux_q = in_input_im_addr_041_replace_phi37_pop22122_1;
            1'b1 : input_im_addr_041_replace_phi37_pop22122_mux_q = in_input_im_addr_041_replace_phi37_pop22122_0;
            default : input_im_addr_041_replace_phi37_pop22122_mux_q = 64'b0;
        endcase
    end

    // out_input_im_addr_041_replace_phi37_pop22122(GPOUT,58)
    assign out_input_im_addr_041_replace_phi37_pop22122 = input_im_addr_041_replace_phi37_pop22122_mux_q;

    // input_im_addr_041_replace_phi74_mux(MUX,44)
    assign input_im_addr_041_replace_phi74_mux_s = in_valid_in_0;
    always @(input_im_addr_041_replace_phi74_mux_s or in_input_im_addr_041_replace_phi74_1 or in_input_im_addr_041_replace_phi74_0)
    begin
        unique case (input_im_addr_041_replace_phi74_mux_s)
            1'b0 : input_im_addr_041_replace_phi74_mux_q = in_input_im_addr_041_replace_phi74_1;
            1'b1 : input_im_addr_041_replace_phi74_mux_q = in_input_im_addr_041_replace_phi74_0;
            default : input_im_addr_041_replace_phi74_mux_q = 64'b0;
        endcase
    end

    // out_input_im_addr_041_replace_phi74(GPOUT,59)
    assign out_input_im_addr_041_replace_phi74 = input_im_addr_041_replace_phi74_mux_q;

    // j_034_pop20116_mux(MUX,45)
    assign j_034_pop20116_mux_s = in_valid_in_0;
    always @(j_034_pop20116_mux_s or in_j_034_pop20116_1 or in_j_034_pop20116_0)
    begin
        unique case (j_034_pop20116_mux_s)
            1'b0 : j_034_pop20116_mux_q = in_j_034_pop20116_1;
            1'b1 : j_034_pop20116_mux_q = in_j_034_pop20116_0;
            default : j_034_pop20116_mux_q = 32'b0;
        endcase
    end

    // out_j_034_pop20116(GPOUT,60)
    assign out_j_034_pop20116 = j_034_pop20116_mux_q;

    // mul2547_pop25131_mux(MUX,46)
    assign mul2547_pop25131_mux_s = in_valid_in_0;
    always @(mul2547_pop25131_mux_s or in_mul2547_pop25131_1 or in_mul2547_pop25131_0)
    begin
        unique case (mul2547_pop25131_mux_s)
            1'b0 : mul2547_pop25131_mux_q = in_mul2547_pop25131_1;
            1'b1 : mul2547_pop25131_mux_q = in_mul2547_pop25131_0;
            default : mul2547_pop25131_mux_q = 32'b0;
        endcase
    end

    // out_mul2547_pop25131(GPOUT,61)
    assign out_mul2547_pop25131 = mul2547_pop25131_mux_q;

    // mul2592_mux(MUX,47)
    assign mul2592_mux_s = in_valid_in_0;
    always @(mul2592_mux_s or in_mul2592_1 or in_mul2592_0)
    begin
        unique case (mul2592_mux_s)
            1'b0 : mul2592_mux_q = in_mul2592_1;
            1'b1 : mul2592_mux_q = in_mul2592_0;
            default : mul2592_mux_q = 32'b0;
        endcase
    end

    // out_mul2592(GPOUT,62)
    assign out_mul2592 = mul2592_mux_q;

    // mul44_pop24128_mux(MUX,48)
    assign mul44_pop24128_mux_s = in_valid_in_0;
    always @(mul44_pop24128_mux_s or in_mul44_pop24128_1 or in_mul44_pop24128_0)
    begin
        unique case (mul44_pop24128_mux_s)
            1'b0 : mul44_pop24128_mux_q = in_mul44_pop24128_1;
            1'b1 : mul44_pop24128_mux_q = in_mul44_pop24128_0;
            default : mul44_pop24128_mux_q = 32'b0;
        endcase
    end

    // out_mul44_pop24128(GPOUT,63)
    assign out_mul44_pop24128 = mul44_pop24128_mux_q;

    // mul87_mux(MUX,49)
    assign mul87_mux_s = in_valid_in_0;
    always @(mul87_mux_s or in_mul87_1 or in_mul87_0)
    begin
        unique case (mul87_mux_s)
            1'b0 : mul87_mux_q = in_mul87_1;
            1'b1 : mul87_mux_q = in_mul87_0;
            default : mul87_mux_q = 32'b0;
        endcase
    end

    // out_mul87(GPOUT,64)
    assign out_mul87 = mul87_mux_q;

    // notcmp19113_mux(MUX,50)
    assign notcmp19113_mux_s = in_valid_in_0;
    always @(notcmp19113_mux_s or in_notcmp19113_1 or in_notcmp19113_0)
    begin
        unique case (notcmp19113_mux_s)
            1'b0 : notcmp19113_mux_q = in_notcmp19113_1;
            1'b1 : notcmp19113_mux_q = in_notcmp19113_0;
            default : notcmp19113_mux_q = 1'b0;
        endcase
    end

    // out_notcmp19113(GPOUT,65)
    assign out_notcmp19113 = notcmp19113_mux_q;

    // notcmp2350_pop26134_mux(MUX,51)
    assign notcmp2350_pop26134_mux_s = in_valid_in_0;
    always @(notcmp2350_pop26134_mux_s or in_notcmp2350_pop26134_1 or in_notcmp2350_pop26134_0)
    begin
        unique case (notcmp2350_pop26134_mux_s)
            1'b0 : notcmp2350_pop26134_mux_q = in_notcmp2350_pop26134_1;
            1'b1 : notcmp2350_pop26134_mux_q = in_notcmp2350_pop26134_0;
            default : notcmp2350_pop26134_mux_q = 1'b0;
        endcase
    end

    // out_notcmp2350_pop26134(GPOUT,66)
    assign out_notcmp2350_pop26134 = notcmp2350_pop26134_mux_q;

    // notcmp2397_mux(MUX,52)
    assign notcmp2397_mux_s = in_valid_in_0;
    always @(notcmp2397_mux_s or in_notcmp2397_1 or in_notcmp2397_0)
    begin
        unique case (notcmp2397_mux_s)
            1'b0 : notcmp2397_mux_q = in_notcmp2397_1;
            1'b1 : notcmp2397_mux_q = in_notcmp2397_0;
            default : notcmp2397_mux_q = 1'b0;
        endcase
    end

    // out_notcmp2397(GPOUT,67)
    assign out_notcmp2397 = notcmp2397_mux_q;

    // notcmp2740_pop18112_mux(MUX,53)
    assign notcmp2740_pop18112_mux_s = in_valid_in_0;
    always @(notcmp2740_pop18112_mux_s or in_notcmp2740_pop18112_1 or in_notcmp2740_pop18112_0)
    begin
        unique case (notcmp2740_pop18112_mux_s)
            1'b0 : notcmp2740_pop18112_mux_q = in_notcmp2740_pop18112_1;
            1'b1 : notcmp2740_pop18112_mux_q = in_notcmp2740_pop18112_0;
            default : notcmp2740_pop18112_mux_q = 1'b0;
        endcase
    end

    // out_notcmp2740_pop18112(GPOUT,68)
    assign out_notcmp2740_pop18112 = notcmp2740_pop18112_mux_q;

    // notcmp2741_pop23125_mux(MUX,54)
    assign notcmp2741_pop23125_mux_s = in_valid_in_0;
    always @(notcmp2741_pop23125_mux_s or in_notcmp2741_pop23125_1 or in_notcmp2741_pop23125_0)
    begin
        unique case (notcmp2741_pop23125_mux_s)
            1'b0 : notcmp2741_pop23125_mux_q = in_notcmp2741_pop23125_1;
            1'b1 : notcmp2741_pop23125_mux_q = in_notcmp2741_pop23125_0;
            default : notcmp2741_pop23125_mux_q = 1'b0;
        endcase
    end

    // out_notcmp2741_pop23125(GPOUT,69)
    assign out_notcmp2741_pop23125 = notcmp2741_pop23125_mux_q;

    // notcmp2781_mux(MUX,55)
    assign notcmp2781_mux_s = in_valid_in_0;
    always @(notcmp2781_mux_s or in_notcmp2781_1 or in_notcmp2781_0)
    begin
        unique case (notcmp2781_mux_s)
            1'b0 : notcmp2781_mux_q = in_notcmp2781_1;
            1'b1 : notcmp2781_mux_q = in_notcmp2781_0;
            default : notcmp2781_mux_q = 1'b0;
        endcase
    end

    // out_notcmp2781(GPOUT,70)
    assign out_notcmp2781 = notcmp2781_mux_q;

    // output_im_addr_042_replace_phi32_pop16102_mux(MUX,77)
    assign output_im_addr_042_replace_phi32_pop16102_mux_s = in_valid_in_0;
    always @(output_im_addr_042_replace_phi32_pop16102_mux_s or in_output_im_addr_042_replace_phi32_pop16102_1 or in_output_im_addr_042_replace_phi32_pop16102_0)
    begin
        unique case (output_im_addr_042_replace_phi32_pop16102_mux_s)
            1'b0 : output_im_addr_042_replace_phi32_pop16102_mux_q = in_output_im_addr_042_replace_phi32_pop16102_1;
            1'b1 : output_im_addr_042_replace_phi32_pop16102_mux_q = in_output_im_addr_042_replace_phi32_pop16102_0;
            default : output_im_addr_042_replace_phi32_pop16102_mux_q = 64'b0;
        endcase
    end

    // out_output_im_addr_042_replace_phi32_pop16102(GPOUT,71)
    assign out_output_im_addr_042_replace_phi32_pop16102 = output_im_addr_042_replace_phi32_pop16102_mux_q;

    // output_im_addr_042_replace_phi33_pop21119_mux(MUX,78)
    assign output_im_addr_042_replace_phi33_pop21119_mux_s = in_valid_in_0;
    always @(output_im_addr_042_replace_phi33_pop21119_mux_s or in_output_im_addr_042_replace_phi33_pop21119_1 or in_output_im_addr_042_replace_phi33_pop21119_0)
    begin
        unique case (output_im_addr_042_replace_phi33_pop21119_mux_s)
            1'b0 : output_im_addr_042_replace_phi33_pop21119_mux_q = in_output_im_addr_042_replace_phi33_pop21119_1;
            1'b1 : output_im_addr_042_replace_phi33_pop21119_mux_q = in_output_im_addr_042_replace_phi33_pop21119_0;
            default : output_im_addr_042_replace_phi33_pop21119_mux_q = 64'b0;
        endcase
    end

    // out_output_im_addr_042_replace_phi33_pop21119(GPOUT,72)
    assign out_output_im_addr_042_replace_phi33_pop21119 = output_im_addr_042_replace_phi33_pop21119_mux_q;

    // output_im_addr_042_replace_phi67_mux(MUX,79)
    assign output_im_addr_042_replace_phi67_mux_s = in_valid_in_0;
    always @(output_im_addr_042_replace_phi67_mux_s or in_output_im_addr_042_replace_phi67_1 or in_output_im_addr_042_replace_phi67_0)
    begin
        unique case (output_im_addr_042_replace_phi67_mux_s)
            1'b0 : output_im_addr_042_replace_phi67_mux_q = in_output_im_addr_042_replace_phi67_1;
            1'b1 : output_im_addr_042_replace_phi67_mux_q = in_output_im_addr_042_replace_phi67_0;
            default : output_im_addr_042_replace_phi67_mux_q = 64'b0;
        endcase
    end

    // out_output_im_addr_042_replace_phi67(GPOUT,73)
    assign out_output_im_addr_042_replace_phi67 = output_im_addr_042_replace_phi67_mux_q;

    // valid_or(LOGICAL,82)
    assign valid_or_q = in_valid_in_0 | in_valid_in_1;

    // stall_out(LOGICAL,80)
    assign stall_out_q = valid_or_q & in_stall_in;

    // out_stall_out_0(GPOUT,74)
    assign out_stall_out_0 = stall_out_q;

    // stall_out_1_specific(LOGICAL,81)
    assign stall_out_1_specific_q = in_valid_in_0 | stall_out_q;

    // out_stall_out_1(GPOUT,75)
    assign out_stall_out_1 = stall_out_1_specific_q;

    // out_valid_out(GPOUT,76)
    assign out_valid_out = valid_or_q;

endmodule
