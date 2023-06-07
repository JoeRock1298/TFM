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

// SystemVerilog created from conv2d3x3_B5_merge
// SystemVerilog created on Tue Jun  6 18:48:20 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2d3x3_B5_merge (
    input wire [31:0] in_add239_0,
    input wire [31:0] in_add239_1,
    input wire [0:0] in_cmp26257_0,
    input wire [0:0] in_cmp26257_1,
    input wire [0:0] in_cmp26_1284_0,
    input wire [0:0] in_cmp26_1284_1,
    input wire [0:0] in_cmp26_2311_0,
    input wire [0:0] in_cmp26_2311_1,
    input wire [0:0] in_cmp27266_0,
    input wire [0:0] in_cmp27266_1,
    input wire [0:0] in_cmp27_1293_0,
    input wire [0:0] in_cmp27_1293_1,
    input wire [0:0] in_cmp27_2320_0,
    input wire [0:0] in_cmp27_2320_1,
    input wire [63:0] in_filter_weight_addr_067_replace_phi205_0,
    input wire [63:0] in_filter_weight_addr_067_replace_phi205_1,
    input wire [63:0] in_filter_weight_addr_067_replace_phi85_pop19338_0,
    input wire [63:0] in_filter_weight_addr_067_replace_phi85_pop19338_1,
    input wire [0:0] in_forked35_0,
    input wire [0:0] in_forked35_1,
    input wire [31:0] in_lm25227_0,
    input wire [31:0] in_lm25227_1,
    input wire [31:0] in_lm2597_pop21356_0,
    input wire [31:0] in_lm2597_pop21356_1,
    input wire [31:0] in_mul56248_0,
    input wire [31:0] in_mul56248_1,
    input wire [0:0] in_notcmp77329_0,
    input wire [0:0] in_notcmp77329_1,
    input wire [0:0] in_notcmp81103_pop22365_0,
    input wire [0:0] in_notcmp81103_pop22365_1,
    input wire [0:0] in_notcmp81238_0,
    input wire [0:0] in_notcmp81238_1,
    input wire [63:0] in_output_im_addr_068_replace_phi216_0,
    input wire [63:0] in_output_im_addr_068_replace_phi216_1,
    input wire [63:0] in_output_im_addr_068_replace_phi91_pop20347_0,
    input wire [63:0] in_output_im_addr_068_replace_phi91_pop20347_1,
    input wire [0:0] in_stall_in,
    input wire [31:0] in_sub_1275_0,
    input wire [31:0] in_sub_1275_1,
    input wire [31:0] in_sub_2302_0,
    input wire [31:0] in_sub_2302_1,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [31:0] out_add239,
    output wire [0:0] out_cmp26257,
    output wire [0:0] out_cmp26_1284,
    output wire [0:0] out_cmp26_2311,
    output wire [0:0] out_cmp27266,
    output wire [0:0] out_cmp27_1293,
    output wire [0:0] out_cmp27_2320,
    output wire [63:0] out_filter_weight_addr_067_replace_phi205,
    output wire [63:0] out_filter_weight_addr_067_replace_phi85_pop19338,
    output wire [0:0] out_forked35,
    output wire [31:0] out_lm25227,
    output wire [31:0] out_lm2597_pop21356,
    output wire [31:0] out_mul56248,
    output wire [0:0] out_notcmp77329,
    output wire [0:0] out_notcmp81103_pop22365,
    output wire [0:0] out_notcmp81238,
    output wire [63:0] out_output_im_addr_068_replace_phi216,
    output wire [63:0] out_output_im_addr_068_replace_phi91_pop20347,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [31:0] out_sub_1275,
    output wire [31:0] out_sub_2302,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    wire [0:0] add239_mux_s;
    reg [31:0] add239_mux_q;
    wire [0:0] cmp26257_mux_s;
    reg [0:0] cmp26257_mux_q;
    wire [0:0] cmp26_1284_mux_s;
    reg [0:0] cmp26_1284_mux_q;
    wire [0:0] cmp26_2311_mux_s;
    reg [0:0] cmp26_2311_mux_q;
    wire [0:0] cmp27266_mux_s;
    reg [0:0] cmp27266_mux_q;
    wire [0:0] cmp27_1293_mux_s;
    reg [0:0] cmp27_1293_mux_q;
    wire [0:0] cmp27_2320_mux_s;
    reg [0:0] cmp27_2320_mux_q;
    wire [0:0] filter_weight_addr_067_replace_phi205_mux_s;
    reg [63:0] filter_weight_addr_067_replace_phi205_mux_q;
    wire [0:0] filter_weight_addr_067_replace_phi85_pop19338_mux_s;
    reg [63:0] filter_weight_addr_067_replace_phi85_pop19338_mux_q;
    wire [0:0] forked35_mux_s;
    reg [0:0] forked35_mux_q;
    wire [0:0] lm25227_mux_s;
    reg [31:0] lm25227_mux_q;
    wire [0:0] lm2597_pop21356_mux_s;
    reg [31:0] lm2597_pop21356_mux_q;
    wire [0:0] mul56248_mux_s;
    reg [31:0] mul56248_mux_q;
    wire [0:0] notcmp77329_mux_s;
    reg [0:0] notcmp77329_mux_q;
    wire [0:0] notcmp81103_pop22365_mux_s;
    reg [0:0] notcmp81103_pop22365_mux_q;
    wire [0:0] notcmp81238_mux_s;
    reg [0:0] notcmp81238_mux_q;
    wire [0:0] output_im_addr_068_replace_phi216_mux_s;
    reg [63:0] output_im_addr_068_replace_phi216_mux_q;
    wire [0:0] output_im_addr_068_replace_phi91_pop20347_mux_s;
    reg [63:0] output_im_addr_068_replace_phi91_pop20347_mux_q;
    wire [0:0] stall_out_q;
    wire [0:0] stall_out_1_specific_q;
    wire [0:0] sub_1275_mux_s;
    reg [31:0] sub_1275_mux_q;
    wire [0:0] sub_2302_mux_s;
    reg [31:0] sub_2302_mux_q;
    wire [0:0] valid_or_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // add239_mux(MUX,2)
    assign add239_mux_s = in_valid_in_0;
    always @(add239_mux_s or in_add239_1 or in_add239_0)
    begin
        unique case (add239_mux_s)
            1'b0 : add239_mux_q = in_add239_1;
            1'b1 : add239_mux_q = in_add239_0;
            default : add239_mux_q = 32'b0;
        endcase
    end

    // out_add239(GPOUT,61)
    assign out_add239 = add239_mux_q;

    // cmp26257_mux(MUX,3)
    assign cmp26257_mux_s = in_valid_in_0;
    always @(cmp26257_mux_s or in_cmp26257_1 or in_cmp26257_0)
    begin
        unique case (cmp26257_mux_s)
            1'b0 : cmp26257_mux_q = in_cmp26257_1;
            1'b1 : cmp26257_mux_q = in_cmp26257_0;
            default : cmp26257_mux_q = 1'b0;
        endcase
    end

    // out_cmp26257(GPOUT,62)
    assign out_cmp26257 = cmp26257_mux_q;

    // cmp26_1284_mux(MUX,4)
    assign cmp26_1284_mux_s = in_valid_in_0;
    always @(cmp26_1284_mux_s or in_cmp26_1284_1 or in_cmp26_1284_0)
    begin
        unique case (cmp26_1284_mux_s)
            1'b0 : cmp26_1284_mux_q = in_cmp26_1284_1;
            1'b1 : cmp26_1284_mux_q = in_cmp26_1284_0;
            default : cmp26_1284_mux_q = 1'b0;
        endcase
    end

    // out_cmp26_1284(GPOUT,63)
    assign out_cmp26_1284 = cmp26_1284_mux_q;

    // cmp26_2311_mux(MUX,5)
    assign cmp26_2311_mux_s = in_valid_in_0;
    always @(cmp26_2311_mux_s or in_cmp26_2311_1 or in_cmp26_2311_0)
    begin
        unique case (cmp26_2311_mux_s)
            1'b0 : cmp26_2311_mux_q = in_cmp26_2311_1;
            1'b1 : cmp26_2311_mux_q = in_cmp26_2311_0;
            default : cmp26_2311_mux_q = 1'b0;
        endcase
    end

    // out_cmp26_2311(GPOUT,64)
    assign out_cmp26_2311 = cmp26_2311_mux_q;

    // cmp27266_mux(MUX,6)
    assign cmp27266_mux_s = in_valid_in_0;
    always @(cmp27266_mux_s or in_cmp27266_1 or in_cmp27266_0)
    begin
        unique case (cmp27266_mux_s)
            1'b0 : cmp27266_mux_q = in_cmp27266_1;
            1'b1 : cmp27266_mux_q = in_cmp27266_0;
            default : cmp27266_mux_q = 1'b0;
        endcase
    end

    // out_cmp27266(GPOUT,65)
    assign out_cmp27266 = cmp27266_mux_q;

    // cmp27_1293_mux(MUX,7)
    assign cmp27_1293_mux_s = in_valid_in_0;
    always @(cmp27_1293_mux_s or in_cmp27_1293_1 or in_cmp27_1293_0)
    begin
        unique case (cmp27_1293_mux_s)
            1'b0 : cmp27_1293_mux_q = in_cmp27_1293_1;
            1'b1 : cmp27_1293_mux_q = in_cmp27_1293_0;
            default : cmp27_1293_mux_q = 1'b0;
        endcase
    end

    // out_cmp27_1293(GPOUT,66)
    assign out_cmp27_1293 = cmp27_1293_mux_q;

    // cmp27_2320_mux(MUX,8)
    assign cmp27_2320_mux_s = in_valid_in_0;
    always @(cmp27_2320_mux_s or in_cmp27_2320_1 or in_cmp27_2320_0)
    begin
        unique case (cmp27_2320_mux_s)
            1'b0 : cmp27_2320_mux_q = in_cmp27_2320_1;
            1'b1 : cmp27_2320_mux_q = in_cmp27_2320_0;
            default : cmp27_2320_mux_q = 1'b0;
        endcase
    end

    // out_cmp27_2320(GPOUT,67)
    assign out_cmp27_2320 = cmp27_2320_mux_q;

    // filter_weight_addr_067_replace_phi205_mux(MUX,9)
    assign filter_weight_addr_067_replace_phi205_mux_s = in_valid_in_0;
    always @(filter_weight_addr_067_replace_phi205_mux_s or in_filter_weight_addr_067_replace_phi205_1 or in_filter_weight_addr_067_replace_phi205_0)
    begin
        unique case (filter_weight_addr_067_replace_phi205_mux_s)
            1'b0 : filter_weight_addr_067_replace_phi205_mux_q = in_filter_weight_addr_067_replace_phi205_1;
            1'b1 : filter_weight_addr_067_replace_phi205_mux_q = in_filter_weight_addr_067_replace_phi205_0;
            default : filter_weight_addr_067_replace_phi205_mux_q = 64'b0;
        endcase
    end

    // out_filter_weight_addr_067_replace_phi205(GPOUT,68)
    assign out_filter_weight_addr_067_replace_phi205 = filter_weight_addr_067_replace_phi205_mux_q;

    // filter_weight_addr_067_replace_phi85_pop19338_mux(MUX,10)
    assign filter_weight_addr_067_replace_phi85_pop19338_mux_s = in_valid_in_0;
    always @(filter_weight_addr_067_replace_phi85_pop19338_mux_s or in_filter_weight_addr_067_replace_phi85_pop19338_1 or in_filter_weight_addr_067_replace_phi85_pop19338_0)
    begin
        unique case (filter_weight_addr_067_replace_phi85_pop19338_mux_s)
            1'b0 : filter_weight_addr_067_replace_phi85_pop19338_mux_q = in_filter_weight_addr_067_replace_phi85_pop19338_1;
            1'b1 : filter_weight_addr_067_replace_phi85_pop19338_mux_q = in_filter_weight_addr_067_replace_phi85_pop19338_0;
            default : filter_weight_addr_067_replace_phi85_pop19338_mux_q = 64'b0;
        endcase
    end

    // out_filter_weight_addr_067_replace_phi85_pop19338(GPOUT,69)
    assign out_filter_weight_addr_067_replace_phi85_pop19338 = filter_weight_addr_067_replace_phi85_pop19338_mux_q;

    // forked35_mux(MUX,11)
    assign forked35_mux_s = in_valid_in_0;
    always @(forked35_mux_s or in_forked35_1 or in_forked35_0)
    begin
        unique case (forked35_mux_s)
            1'b0 : forked35_mux_q = in_forked35_1;
            1'b1 : forked35_mux_q = in_forked35_0;
            default : forked35_mux_q = 1'b0;
        endcase
    end

    // out_forked35(GPOUT,70)
    assign out_forked35 = forked35_mux_q;

    // lm25227_mux(MUX,55)
    assign lm25227_mux_s = in_valid_in_0;
    always @(lm25227_mux_s or in_lm25227_1 or in_lm25227_0)
    begin
        unique case (lm25227_mux_s)
            1'b0 : lm25227_mux_q = in_lm25227_1;
            1'b1 : lm25227_mux_q = in_lm25227_0;
            default : lm25227_mux_q = 32'b0;
        endcase
    end

    // out_lm25227(GPOUT,71)
    assign out_lm25227 = lm25227_mux_q;

    // lm2597_pop21356_mux(MUX,56)
    assign lm2597_pop21356_mux_s = in_valid_in_0;
    always @(lm2597_pop21356_mux_s or in_lm2597_pop21356_1 or in_lm2597_pop21356_0)
    begin
        unique case (lm2597_pop21356_mux_s)
            1'b0 : lm2597_pop21356_mux_q = in_lm2597_pop21356_1;
            1'b1 : lm2597_pop21356_mux_q = in_lm2597_pop21356_0;
            default : lm2597_pop21356_mux_q = 32'b0;
        endcase
    end

    // out_lm2597_pop21356(GPOUT,72)
    assign out_lm2597_pop21356 = lm2597_pop21356_mux_q;

    // mul56248_mux(MUX,57)
    assign mul56248_mux_s = in_valid_in_0;
    always @(mul56248_mux_s or in_mul56248_1 or in_mul56248_0)
    begin
        unique case (mul56248_mux_s)
            1'b0 : mul56248_mux_q = in_mul56248_1;
            1'b1 : mul56248_mux_q = in_mul56248_0;
            default : mul56248_mux_q = 32'b0;
        endcase
    end

    // out_mul56248(GPOUT,73)
    assign out_mul56248 = mul56248_mux_q;

    // notcmp77329_mux(MUX,58)
    assign notcmp77329_mux_s = in_valid_in_0;
    always @(notcmp77329_mux_s or in_notcmp77329_1 or in_notcmp77329_0)
    begin
        unique case (notcmp77329_mux_s)
            1'b0 : notcmp77329_mux_q = in_notcmp77329_1;
            1'b1 : notcmp77329_mux_q = in_notcmp77329_0;
            default : notcmp77329_mux_q = 1'b0;
        endcase
    end

    // out_notcmp77329(GPOUT,74)
    assign out_notcmp77329 = notcmp77329_mux_q;

    // notcmp81103_pop22365_mux(MUX,59)
    assign notcmp81103_pop22365_mux_s = in_valid_in_0;
    always @(notcmp81103_pop22365_mux_s or in_notcmp81103_pop22365_1 or in_notcmp81103_pop22365_0)
    begin
        unique case (notcmp81103_pop22365_mux_s)
            1'b0 : notcmp81103_pop22365_mux_q = in_notcmp81103_pop22365_1;
            1'b1 : notcmp81103_pop22365_mux_q = in_notcmp81103_pop22365_0;
            default : notcmp81103_pop22365_mux_q = 1'b0;
        endcase
    end

    // out_notcmp81103_pop22365(GPOUT,75)
    assign out_notcmp81103_pop22365 = notcmp81103_pop22365_mux_q;

    // notcmp81238_mux(MUX,60)
    assign notcmp81238_mux_s = in_valid_in_0;
    always @(notcmp81238_mux_s or in_notcmp81238_1 or in_notcmp81238_0)
    begin
        unique case (notcmp81238_mux_s)
            1'b0 : notcmp81238_mux_q = in_notcmp81238_1;
            1'b1 : notcmp81238_mux_q = in_notcmp81238_0;
            default : notcmp81238_mux_q = 1'b0;
        endcase
    end

    // out_notcmp81238(GPOUT,76)
    assign out_notcmp81238 = notcmp81238_mux_q;

    // output_im_addr_068_replace_phi216_mux(MUX,84)
    assign output_im_addr_068_replace_phi216_mux_s = in_valid_in_0;
    always @(output_im_addr_068_replace_phi216_mux_s or in_output_im_addr_068_replace_phi216_1 or in_output_im_addr_068_replace_phi216_0)
    begin
        unique case (output_im_addr_068_replace_phi216_mux_s)
            1'b0 : output_im_addr_068_replace_phi216_mux_q = in_output_im_addr_068_replace_phi216_1;
            1'b1 : output_im_addr_068_replace_phi216_mux_q = in_output_im_addr_068_replace_phi216_0;
            default : output_im_addr_068_replace_phi216_mux_q = 64'b0;
        endcase
    end

    // out_output_im_addr_068_replace_phi216(GPOUT,77)
    assign out_output_im_addr_068_replace_phi216 = output_im_addr_068_replace_phi216_mux_q;

    // output_im_addr_068_replace_phi91_pop20347_mux(MUX,85)
    assign output_im_addr_068_replace_phi91_pop20347_mux_s = in_valid_in_0;
    always @(output_im_addr_068_replace_phi91_pop20347_mux_s or in_output_im_addr_068_replace_phi91_pop20347_1 or in_output_im_addr_068_replace_phi91_pop20347_0)
    begin
        unique case (output_im_addr_068_replace_phi91_pop20347_mux_s)
            1'b0 : output_im_addr_068_replace_phi91_pop20347_mux_q = in_output_im_addr_068_replace_phi91_pop20347_1;
            1'b1 : output_im_addr_068_replace_phi91_pop20347_mux_q = in_output_im_addr_068_replace_phi91_pop20347_0;
            default : output_im_addr_068_replace_phi91_pop20347_mux_q = 64'b0;
        endcase
    end

    // out_output_im_addr_068_replace_phi91_pop20347(GPOUT,78)
    assign out_output_im_addr_068_replace_phi91_pop20347 = output_im_addr_068_replace_phi91_pop20347_mux_q;

    // valid_or(LOGICAL,90)
    assign valid_or_q = in_valid_in_0 | in_valid_in_1;

    // stall_out(LOGICAL,86)
    assign stall_out_q = valid_or_q & in_stall_in;

    // out_stall_out_0(GPOUT,79)
    assign out_stall_out_0 = stall_out_q;

    // stall_out_1_specific(LOGICAL,87)
    assign stall_out_1_specific_q = in_valid_in_0 | stall_out_q;

    // out_stall_out_1(GPOUT,80)
    assign out_stall_out_1 = stall_out_1_specific_q;

    // sub_1275_mux(MUX,88)
    assign sub_1275_mux_s = in_valid_in_0;
    always @(sub_1275_mux_s or in_sub_1275_1 or in_sub_1275_0)
    begin
        unique case (sub_1275_mux_s)
            1'b0 : sub_1275_mux_q = in_sub_1275_1;
            1'b1 : sub_1275_mux_q = in_sub_1275_0;
            default : sub_1275_mux_q = 32'b0;
        endcase
    end

    // out_sub_1275(GPOUT,81)
    assign out_sub_1275 = sub_1275_mux_q;

    // sub_2302_mux(MUX,89)
    assign sub_2302_mux_s = in_valid_in_0;
    always @(sub_2302_mux_s or in_sub_2302_1 or in_sub_2302_0)
    begin
        unique case (sub_2302_mux_s)
            1'b0 : sub_2302_mux_q = in_sub_2302_1;
            1'b1 : sub_2302_mux_q = in_sub_2302_0;
            default : sub_2302_mux_q = 32'b0;
        endcase
    end

    // out_sub_2302(GPOUT,82)
    assign out_sub_2302 = sub_2302_mux_q;

    // out_valid_out(GPOUT,83)
    assign out_valid_out = valid_or_q;

endmodule
