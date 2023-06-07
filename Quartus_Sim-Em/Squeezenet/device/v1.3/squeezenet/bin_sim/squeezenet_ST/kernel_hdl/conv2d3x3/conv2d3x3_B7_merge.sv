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

// SystemVerilog created from conv2d3x3_B7_merge
// SystemVerilog created on Tue Jun  6 18:48:20 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2d3x3_B7_merge (
    input wire [31:0] in_add110_0,
    input wire [31:0] in_add110_1,
    input wire [31:0] in_add247_0,
    input wire [31:0] in_add247_1,
    input wire [0:0] in_cmp26120_0,
    input wire [0:0] in_cmp26120_1,
    input wire [0:0] in_cmp26265_0,
    input wire [0:0] in_cmp26265_1,
    input wire [0:0] in_cmp26_1135_0,
    input wire [0:0] in_cmp26_1135_1,
    input wire [0:0] in_cmp26_1292_0,
    input wire [0:0] in_cmp26_1292_1,
    input wire [0:0] in_cmp26_2150_0,
    input wire [0:0] in_cmp26_2150_1,
    input wire [0:0] in_cmp26_2319_0,
    input wire [0:0] in_cmp26_2319_1,
    input wire [0:0] in_cmp27125_0,
    input wire [0:0] in_cmp27125_1,
    input wire [0:0] in_cmp27274_0,
    input wire [0:0] in_cmp27274_1,
    input wire [0:0] in_cmp27_1140_0,
    input wire [0:0] in_cmp27_1140_1,
    input wire [0:0] in_cmp27_1301_0,
    input wire [0:0] in_cmp27_1301_1,
    input wire [0:0] in_cmp27_2155_0,
    input wire [0:0] in_cmp27_2155_1,
    input wire [0:0] in_cmp27_2328_0,
    input wire [0:0] in_cmp27_2328_1,
    input wire [63:0] in_filter_weight_addr_067_replace_phi204_0,
    input wire [63:0] in_filter_weight_addr_067_replace_phi204_1,
    input wire [63:0] in_filter_weight_addr_067_replace_phi85_pop19346_0,
    input wire [63:0] in_filter_weight_addr_067_replace_phi85_pop19346_1,
    input wire [63:0] in_filter_weight_addr_067_replace_phi87_0,
    input wire [63:0] in_filter_weight_addr_067_replace_phi87_1,
    input wire [31:0] in_j_061_pop24179_0,
    input wire [31:0] in_j_061_pop24179_1,
    input wire [31:0] in_k_059_0,
    input wire [31:0] in_k_059_1,
    input wire [31:0] in_lm25226_0,
    input wire [31:0] in_lm25226_1,
    input wire [31:0] in_lm2597_pop21364_0,
    input wire [31:0] in_lm2597_pop21364_1,
    input wire [31:0] in_lm2599_0,
    input wire [31:0] in_lm2599_1,
    input wire [31:0] in_mul56115_0,
    input wire [31:0] in_mul56115_1,
    input wire [31:0] in_mul56256_0,
    input wire [31:0] in_mul56256_1,
    input wire [0:0] in_notcmp73175_0,
    input wire [0:0] in_notcmp73175_1,
    input wire [0:0] in_notcmp77160_0,
    input wire [0:0] in_notcmp77160_1,
    input wire [0:0] in_notcmp77337_0,
    input wire [0:0] in_notcmp77337_1,
    input wire [0:0] in_notcmp81103_pop22373_0,
    input wire [0:0] in_notcmp81103_pop22373_1,
    input wire [0:0] in_notcmp81105_0,
    input wire [0:0] in_notcmp81105_1,
    input wire [0:0] in_notcmp81237_0,
    input wire [0:0] in_notcmp81237_1,
    input wire [63:0] in_output_im_addr_068_replace_phi215_0,
    input wire [63:0] in_output_im_addr_068_replace_phi215_1,
    input wire [63:0] in_output_im_addr_068_replace_phi91_pop20355_0,
    input wire [63:0] in_output_im_addr_068_replace_phi91_pop20355_1,
    input wire [63:0] in_output_im_addr_068_replace_phi93_0,
    input wire [63:0] in_output_im_addr_068_replace_phi93_1,
    input wire [31:0] in_pad_sync_buffer171_0,
    input wire [31:0] in_pad_sync_buffer171_1,
    input wire [0:0] in_stall_in,
    input wire [31:0] in_stride_sync_buffer167_0,
    input wire [31:0] in_stride_sync_buffer167_1,
    input wire [31:0] in_sub_1130_0,
    input wire [31:0] in_sub_1130_1,
    input wire [31:0] in_sub_1283_0,
    input wire [31:0] in_sub_1283_1,
    input wire [31:0] in_sub_2145_0,
    input wire [31:0] in_sub_2145_1,
    input wire [31:0] in_sub_2310_0,
    input wire [31:0] in_sub_2310_1,
    input wire [31:0] in_tmp_058_0,
    input wire [31:0] in_tmp_058_1,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [31:0] out_add110,
    output wire [31:0] out_add247,
    output wire [0:0] out_cmp26120,
    output wire [0:0] out_cmp26265,
    output wire [0:0] out_cmp26_1135,
    output wire [0:0] out_cmp26_1292,
    output wire [0:0] out_cmp26_2150,
    output wire [0:0] out_cmp26_2319,
    output wire [0:0] out_cmp27125,
    output wire [0:0] out_cmp27274,
    output wire [0:0] out_cmp27_1140,
    output wire [0:0] out_cmp27_1301,
    output wire [0:0] out_cmp27_2155,
    output wire [0:0] out_cmp27_2328,
    output wire [63:0] out_filter_weight_addr_067_replace_phi204,
    output wire [63:0] out_filter_weight_addr_067_replace_phi85_pop19346,
    output wire [63:0] out_filter_weight_addr_067_replace_phi87,
    output wire [31:0] out_j_061_pop24179,
    output wire [31:0] out_k_059,
    output wire [31:0] out_lm25226,
    output wire [31:0] out_lm2597_pop21364,
    output wire [31:0] out_lm2599,
    output wire [31:0] out_mul56115,
    output wire [31:0] out_mul56256,
    output wire [0:0] out_notcmp73175,
    output wire [0:0] out_notcmp77160,
    output wire [0:0] out_notcmp77337,
    output wire [0:0] out_notcmp81103_pop22373,
    output wire [0:0] out_notcmp81105,
    output wire [0:0] out_notcmp81237,
    output wire [63:0] out_output_im_addr_068_replace_phi215,
    output wire [63:0] out_output_im_addr_068_replace_phi91_pop20355,
    output wire [63:0] out_output_im_addr_068_replace_phi93,
    output wire [31:0] out_pad_sync_buffer171,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [31:0] out_stride_sync_buffer167,
    output wire [31:0] out_sub_1130,
    output wire [31:0] out_sub_1283,
    output wire [31:0] out_sub_2145,
    output wire [31:0] out_sub_2310,
    output wire [31:0] out_tmp_058,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    wire [0:0] add110_mux_s;
    reg [31:0] add110_mux_q;
    wire [0:0] add247_mux_s;
    reg [31:0] add247_mux_q;
    wire [0:0] cmp26120_mux_s;
    reg [0:0] cmp26120_mux_q;
    wire [0:0] cmp26265_mux_s;
    reg [0:0] cmp26265_mux_q;
    wire [0:0] cmp26_1135_mux_s;
    reg [0:0] cmp26_1135_mux_q;
    wire [0:0] cmp26_1292_mux_s;
    reg [0:0] cmp26_1292_mux_q;
    wire [0:0] cmp26_2150_mux_s;
    reg [0:0] cmp26_2150_mux_q;
    wire [0:0] cmp26_2319_mux_s;
    reg [0:0] cmp26_2319_mux_q;
    wire [0:0] cmp27125_mux_s;
    reg [0:0] cmp27125_mux_q;
    wire [0:0] cmp27274_mux_s;
    reg [0:0] cmp27274_mux_q;
    wire [0:0] cmp27_1140_mux_s;
    reg [0:0] cmp27_1140_mux_q;
    wire [0:0] cmp27_1301_mux_s;
    reg [0:0] cmp27_1301_mux_q;
    wire [0:0] cmp27_2155_mux_s;
    reg [0:0] cmp27_2155_mux_q;
    wire [0:0] cmp27_2328_mux_s;
    reg [0:0] cmp27_2328_mux_q;
    wire [0:0] filter_weight_addr_067_replace_phi204_mux_s;
    reg [63:0] filter_weight_addr_067_replace_phi204_mux_q;
    wire [0:0] filter_weight_addr_067_replace_phi85_pop19346_mux_s;
    reg [63:0] filter_weight_addr_067_replace_phi85_pop19346_mux_q;
    wire [0:0] filter_weight_addr_067_replace_phi87_mux_s;
    reg [63:0] filter_weight_addr_067_replace_phi87_mux_q;
    wire [0:0] j_061_pop24179_mux_s;
    reg [31:0] j_061_pop24179_mux_q;
    wire [0:0] k_059_mux_s;
    reg [31:0] k_059_mux_q;
    wire [0:0] lm25226_mux_s;
    reg [31:0] lm25226_mux_q;
    wire [0:0] lm2597_pop21364_mux_s;
    reg [31:0] lm2597_pop21364_mux_q;
    wire [0:0] lm2599_mux_s;
    reg [31:0] lm2599_mux_q;
    wire [0:0] mul56115_mux_s;
    reg [31:0] mul56115_mux_q;
    wire [0:0] mul56256_mux_s;
    reg [31:0] mul56256_mux_q;
    wire [0:0] notcmp73175_mux_s;
    reg [0:0] notcmp73175_mux_q;
    wire [0:0] notcmp77160_mux_s;
    reg [0:0] notcmp77160_mux_q;
    wire [0:0] notcmp77337_mux_s;
    reg [0:0] notcmp77337_mux_q;
    wire [0:0] notcmp81103_pop22373_mux_s;
    reg [0:0] notcmp81103_pop22373_mux_q;
    wire [0:0] notcmp81105_mux_s;
    reg [0:0] notcmp81105_mux_q;
    wire [0:0] notcmp81237_mux_s;
    reg [0:0] notcmp81237_mux_q;
    wire [0:0] output_im_addr_068_replace_phi215_mux_s;
    reg [63:0] output_im_addr_068_replace_phi215_mux_q;
    wire [0:0] output_im_addr_068_replace_phi91_pop20355_mux_s;
    reg [63:0] output_im_addr_068_replace_phi91_pop20355_mux_q;
    wire [0:0] output_im_addr_068_replace_phi93_mux_s;
    reg [63:0] output_im_addr_068_replace_phi93_mux_q;
    wire [0:0] pad_sync_buffer171_mux_s;
    reg [31:0] pad_sync_buffer171_mux_q;
    wire [0:0] stall_out_q;
    wire [0:0] stall_out_1_specific_q;
    wire [0:0] stride_sync_buffer167_mux_s;
    reg [31:0] stride_sync_buffer167_mux_q;
    wire [0:0] sub_1130_mux_s;
    reg [31:0] sub_1130_mux_q;
    wire [0:0] sub_1283_mux_s;
    reg [31:0] sub_1283_mux_q;
    wire [0:0] sub_2145_mux_s;
    reg [31:0] sub_2145_mux_q;
    wire [0:0] sub_2310_mux_s;
    reg [31:0] sub_2310_mux_q;
    wire [0:0] tmp_058_mux_s;
    reg [31:0] tmp_058_mux_q;
    wire [0:0] valid_or_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // add110_mux(MUX,2)
    assign add110_mux_s = in_valid_in_0;
    always @(add110_mux_s or in_add110_1 or in_add110_0)
    begin
        unique case (add110_mux_s)
            1'b0 : add110_mux_q = in_add110_1;
            1'b1 : add110_mux_q = in_add110_0;
            default : add110_mux_q = 32'b0;
        endcase
    end

    // out_add110(GPOUT,115)
    assign out_add110 = add110_mux_q;

    // add247_mux(MUX,3)
    assign add247_mux_s = in_valid_in_0;
    always @(add247_mux_s or in_add247_1 or in_add247_0)
    begin
        unique case (add247_mux_s)
            1'b0 : add247_mux_q = in_add247_1;
            1'b1 : add247_mux_q = in_add247_0;
            default : add247_mux_q = 32'b0;
        endcase
    end

    // out_add247(GPOUT,116)
    assign out_add247 = add247_mux_q;

    // cmp26120_mux(MUX,4)
    assign cmp26120_mux_s = in_valid_in_0;
    always @(cmp26120_mux_s or in_cmp26120_1 or in_cmp26120_0)
    begin
        unique case (cmp26120_mux_s)
            1'b0 : cmp26120_mux_q = in_cmp26120_1;
            1'b1 : cmp26120_mux_q = in_cmp26120_0;
            default : cmp26120_mux_q = 1'b0;
        endcase
    end

    // out_cmp26120(GPOUT,117)
    assign out_cmp26120 = cmp26120_mux_q;

    // cmp26265_mux(MUX,5)
    assign cmp26265_mux_s = in_valid_in_0;
    always @(cmp26265_mux_s or in_cmp26265_1 or in_cmp26265_0)
    begin
        unique case (cmp26265_mux_s)
            1'b0 : cmp26265_mux_q = in_cmp26265_1;
            1'b1 : cmp26265_mux_q = in_cmp26265_0;
            default : cmp26265_mux_q = 1'b0;
        endcase
    end

    // out_cmp26265(GPOUT,118)
    assign out_cmp26265 = cmp26265_mux_q;

    // cmp26_1135_mux(MUX,6)
    assign cmp26_1135_mux_s = in_valid_in_0;
    always @(cmp26_1135_mux_s or in_cmp26_1135_1 or in_cmp26_1135_0)
    begin
        unique case (cmp26_1135_mux_s)
            1'b0 : cmp26_1135_mux_q = in_cmp26_1135_1;
            1'b1 : cmp26_1135_mux_q = in_cmp26_1135_0;
            default : cmp26_1135_mux_q = 1'b0;
        endcase
    end

    // out_cmp26_1135(GPOUT,119)
    assign out_cmp26_1135 = cmp26_1135_mux_q;

    // cmp26_1292_mux(MUX,7)
    assign cmp26_1292_mux_s = in_valid_in_0;
    always @(cmp26_1292_mux_s or in_cmp26_1292_1 or in_cmp26_1292_0)
    begin
        unique case (cmp26_1292_mux_s)
            1'b0 : cmp26_1292_mux_q = in_cmp26_1292_1;
            1'b1 : cmp26_1292_mux_q = in_cmp26_1292_0;
            default : cmp26_1292_mux_q = 1'b0;
        endcase
    end

    // out_cmp26_1292(GPOUT,120)
    assign out_cmp26_1292 = cmp26_1292_mux_q;

    // cmp26_2150_mux(MUX,8)
    assign cmp26_2150_mux_s = in_valid_in_0;
    always @(cmp26_2150_mux_s or in_cmp26_2150_1 or in_cmp26_2150_0)
    begin
        unique case (cmp26_2150_mux_s)
            1'b0 : cmp26_2150_mux_q = in_cmp26_2150_1;
            1'b1 : cmp26_2150_mux_q = in_cmp26_2150_0;
            default : cmp26_2150_mux_q = 1'b0;
        endcase
    end

    // out_cmp26_2150(GPOUT,121)
    assign out_cmp26_2150 = cmp26_2150_mux_q;

    // cmp26_2319_mux(MUX,9)
    assign cmp26_2319_mux_s = in_valid_in_0;
    always @(cmp26_2319_mux_s or in_cmp26_2319_1 or in_cmp26_2319_0)
    begin
        unique case (cmp26_2319_mux_s)
            1'b0 : cmp26_2319_mux_q = in_cmp26_2319_1;
            1'b1 : cmp26_2319_mux_q = in_cmp26_2319_0;
            default : cmp26_2319_mux_q = 1'b0;
        endcase
    end

    // out_cmp26_2319(GPOUT,122)
    assign out_cmp26_2319 = cmp26_2319_mux_q;

    // cmp27125_mux(MUX,10)
    assign cmp27125_mux_s = in_valid_in_0;
    always @(cmp27125_mux_s or in_cmp27125_1 or in_cmp27125_0)
    begin
        unique case (cmp27125_mux_s)
            1'b0 : cmp27125_mux_q = in_cmp27125_1;
            1'b1 : cmp27125_mux_q = in_cmp27125_0;
            default : cmp27125_mux_q = 1'b0;
        endcase
    end

    // out_cmp27125(GPOUT,123)
    assign out_cmp27125 = cmp27125_mux_q;

    // cmp27274_mux(MUX,11)
    assign cmp27274_mux_s = in_valid_in_0;
    always @(cmp27274_mux_s or in_cmp27274_1 or in_cmp27274_0)
    begin
        unique case (cmp27274_mux_s)
            1'b0 : cmp27274_mux_q = in_cmp27274_1;
            1'b1 : cmp27274_mux_q = in_cmp27274_0;
            default : cmp27274_mux_q = 1'b0;
        endcase
    end

    // out_cmp27274(GPOUT,124)
    assign out_cmp27274 = cmp27274_mux_q;

    // cmp27_1140_mux(MUX,12)
    assign cmp27_1140_mux_s = in_valid_in_0;
    always @(cmp27_1140_mux_s or in_cmp27_1140_1 or in_cmp27_1140_0)
    begin
        unique case (cmp27_1140_mux_s)
            1'b0 : cmp27_1140_mux_q = in_cmp27_1140_1;
            1'b1 : cmp27_1140_mux_q = in_cmp27_1140_0;
            default : cmp27_1140_mux_q = 1'b0;
        endcase
    end

    // out_cmp27_1140(GPOUT,125)
    assign out_cmp27_1140 = cmp27_1140_mux_q;

    // cmp27_1301_mux(MUX,13)
    assign cmp27_1301_mux_s = in_valid_in_0;
    always @(cmp27_1301_mux_s or in_cmp27_1301_1 or in_cmp27_1301_0)
    begin
        unique case (cmp27_1301_mux_s)
            1'b0 : cmp27_1301_mux_q = in_cmp27_1301_1;
            1'b1 : cmp27_1301_mux_q = in_cmp27_1301_0;
            default : cmp27_1301_mux_q = 1'b0;
        endcase
    end

    // out_cmp27_1301(GPOUT,126)
    assign out_cmp27_1301 = cmp27_1301_mux_q;

    // cmp27_2155_mux(MUX,14)
    assign cmp27_2155_mux_s = in_valid_in_0;
    always @(cmp27_2155_mux_s or in_cmp27_2155_1 or in_cmp27_2155_0)
    begin
        unique case (cmp27_2155_mux_s)
            1'b0 : cmp27_2155_mux_q = in_cmp27_2155_1;
            1'b1 : cmp27_2155_mux_q = in_cmp27_2155_0;
            default : cmp27_2155_mux_q = 1'b0;
        endcase
    end

    // out_cmp27_2155(GPOUT,127)
    assign out_cmp27_2155 = cmp27_2155_mux_q;

    // cmp27_2328_mux(MUX,15)
    assign cmp27_2328_mux_s = in_valid_in_0;
    always @(cmp27_2328_mux_s or in_cmp27_2328_1 or in_cmp27_2328_0)
    begin
        unique case (cmp27_2328_mux_s)
            1'b0 : cmp27_2328_mux_q = in_cmp27_2328_1;
            1'b1 : cmp27_2328_mux_q = in_cmp27_2328_0;
            default : cmp27_2328_mux_q = 1'b0;
        endcase
    end

    // out_cmp27_2328(GPOUT,128)
    assign out_cmp27_2328 = cmp27_2328_mux_q;

    // filter_weight_addr_067_replace_phi204_mux(MUX,16)
    assign filter_weight_addr_067_replace_phi204_mux_s = in_valid_in_0;
    always @(filter_weight_addr_067_replace_phi204_mux_s or in_filter_weight_addr_067_replace_phi204_1 or in_filter_weight_addr_067_replace_phi204_0)
    begin
        unique case (filter_weight_addr_067_replace_phi204_mux_s)
            1'b0 : filter_weight_addr_067_replace_phi204_mux_q = in_filter_weight_addr_067_replace_phi204_1;
            1'b1 : filter_weight_addr_067_replace_phi204_mux_q = in_filter_weight_addr_067_replace_phi204_0;
            default : filter_weight_addr_067_replace_phi204_mux_q = 64'b0;
        endcase
    end

    // out_filter_weight_addr_067_replace_phi204(GPOUT,129)
    assign out_filter_weight_addr_067_replace_phi204 = filter_weight_addr_067_replace_phi204_mux_q;

    // filter_weight_addr_067_replace_phi85_pop19346_mux(MUX,17)
    assign filter_weight_addr_067_replace_phi85_pop19346_mux_s = in_valid_in_0;
    always @(filter_weight_addr_067_replace_phi85_pop19346_mux_s or in_filter_weight_addr_067_replace_phi85_pop19346_1 or in_filter_weight_addr_067_replace_phi85_pop19346_0)
    begin
        unique case (filter_weight_addr_067_replace_phi85_pop19346_mux_s)
            1'b0 : filter_weight_addr_067_replace_phi85_pop19346_mux_q = in_filter_weight_addr_067_replace_phi85_pop19346_1;
            1'b1 : filter_weight_addr_067_replace_phi85_pop19346_mux_q = in_filter_weight_addr_067_replace_phi85_pop19346_0;
            default : filter_weight_addr_067_replace_phi85_pop19346_mux_q = 64'b0;
        endcase
    end

    // out_filter_weight_addr_067_replace_phi85_pop19346(GPOUT,130)
    assign out_filter_weight_addr_067_replace_phi85_pop19346 = filter_weight_addr_067_replace_phi85_pop19346_mux_q;

    // filter_weight_addr_067_replace_phi87_mux(MUX,18)
    assign filter_weight_addr_067_replace_phi87_mux_s = in_valid_in_0;
    always @(filter_weight_addr_067_replace_phi87_mux_s or in_filter_weight_addr_067_replace_phi87_1 or in_filter_weight_addr_067_replace_phi87_0)
    begin
        unique case (filter_weight_addr_067_replace_phi87_mux_s)
            1'b0 : filter_weight_addr_067_replace_phi87_mux_q = in_filter_weight_addr_067_replace_phi87_1;
            1'b1 : filter_weight_addr_067_replace_phi87_mux_q = in_filter_weight_addr_067_replace_phi87_0;
            default : filter_weight_addr_067_replace_phi87_mux_q = 64'b0;
        endcase
    end

    // out_filter_weight_addr_067_replace_phi87(GPOUT,131)
    assign out_filter_weight_addr_067_replace_phi87 = filter_weight_addr_067_replace_phi87_mux_q;

    // j_061_pop24179_mux(MUX,102)
    assign j_061_pop24179_mux_s = in_valid_in_0;
    always @(j_061_pop24179_mux_s or in_j_061_pop24179_1 or in_j_061_pop24179_0)
    begin
        unique case (j_061_pop24179_mux_s)
            1'b0 : j_061_pop24179_mux_q = in_j_061_pop24179_1;
            1'b1 : j_061_pop24179_mux_q = in_j_061_pop24179_0;
            default : j_061_pop24179_mux_q = 32'b0;
        endcase
    end

    // out_j_061_pop24179(GPOUT,132)
    assign out_j_061_pop24179 = j_061_pop24179_mux_q;

    // k_059_mux(MUX,103)
    assign k_059_mux_s = in_valid_in_0;
    always @(k_059_mux_s or in_k_059_1 or in_k_059_0)
    begin
        unique case (k_059_mux_s)
            1'b0 : k_059_mux_q = in_k_059_1;
            1'b1 : k_059_mux_q = in_k_059_0;
            default : k_059_mux_q = 32'b0;
        endcase
    end

    // out_k_059(GPOUT,133)
    assign out_k_059 = k_059_mux_q;

    // lm25226_mux(MUX,104)
    assign lm25226_mux_s = in_valid_in_0;
    always @(lm25226_mux_s or in_lm25226_1 or in_lm25226_0)
    begin
        unique case (lm25226_mux_s)
            1'b0 : lm25226_mux_q = in_lm25226_1;
            1'b1 : lm25226_mux_q = in_lm25226_0;
            default : lm25226_mux_q = 32'b0;
        endcase
    end

    // out_lm25226(GPOUT,134)
    assign out_lm25226 = lm25226_mux_q;

    // lm2597_pop21364_mux(MUX,105)
    assign lm2597_pop21364_mux_s = in_valid_in_0;
    always @(lm2597_pop21364_mux_s or in_lm2597_pop21364_1 or in_lm2597_pop21364_0)
    begin
        unique case (lm2597_pop21364_mux_s)
            1'b0 : lm2597_pop21364_mux_q = in_lm2597_pop21364_1;
            1'b1 : lm2597_pop21364_mux_q = in_lm2597_pop21364_0;
            default : lm2597_pop21364_mux_q = 32'b0;
        endcase
    end

    // out_lm2597_pop21364(GPOUT,135)
    assign out_lm2597_pop21364 = lm2597_pop21364_mux_q;

    // lm2599_mux(MUX,106)
    assign lm2599_mux_s = in_valid_in_0;
    always @(lm2599_mux_s or in_lm2599_1 or in_lm2599_0)
    begin
        unique case (lm2599_mux_s)
            1'b0 : lm2599_mux_q = in_lm2599_1;
            1'b1 : lm2599_mux_q = in_lm2599_0;
            default : lm2599_mux_q = 32'b0;
        endcase
    end

    // out_lm2599(GPOUT,136)
    assign out_lm2599 = lm2599_mux_q;

    // mul56115_mux(MUX,107)
    assign mul56115_mux_s = in_valid_in_0;
    always @(mul56115_mux_s or in_mul56115_1 or in_mul56115_0)
    begin
        unique case (mul56115_mux_s)
            1'b0 : mul56115_mux_q = in_mul56115_1;
            1'b1 : mul56115_mux_q = in_mul56115_0;
            default : mul56115_mux_q = 32'b0;
        endcase
    end

    // out_mul56115(GPOUT,137)
    assign out_mul56115 = mul56115_mux_q;

    // mul56256_mux(MUX,108)
    assign mul56256_mux_s = in_valid_in_0;
    always @(mul56256_mux_s or in_mul56256_1 or in_mul56256_0)
    begin
        unique case (mul56256_mux_s)
            1'b0 : mul56256_mux_q = in_mul56256_1;
            1'b1 : mul56256_mux_q = in_mul56256_0;
            default : mul56256_mux_q = 32'b0;
        endcase
    end

    // out_mul56256(GPOUT,138)
    assign out_mul56256 = mul56256_mux_q;

    // notcmp73175_mux(MUX,109)
    assign notcmp73175_mux_s = in_valid_in_0;
    always @(notcmp73175_mux_s or in_notcmp73175_1 or in_notcmp73175_0)
    begin
        unique case (notcmp73175_mux_s)
            1'b0 : notcmp73175_mux_q = in_notcmp73175_1;
            1'b1 : notcmp73175_mux_q = in_notcmp73175_0;
            default : notcmp73175_mux_q = 1'b0;
        endcase
    end

    // out_notcmp73175(GPOUT,139)
    assign out_notcmp73175 = notcmp73175_mux_q;

    // notcmp77160_mux(MUX,110)
    assign notcmp77160_mux_s = in_valid_in_0;
    always @(notcmp77160_mux_s or in_notcmp77160_1 or in_notcmp77160_0)
    begin
        unique case (notcmp77160_mux_s)
            1'b0 : notcmp77160_mux_q = in_notcmp77160_1;
            1'b1 : notcmp77160_mux_q = in_notcmp77160_0;
            default : notcmp77160_mux_q = 1'b0;
        endcase
    end

    // out_notcmp77160(GPOUT,140)
    assign out_notcmp77160 = notcmp77160_mux_q;

    // notcmp77337_mux(MUX,111)
    assign notcmp77337_mux_s = in_valid_in_0;
    always @(notcmp77337_mux_s or in_notcmp77337_1 or in_notcmp77337_0)
    begin
        unique case (notcmp77337_mux_s)
            1'b0 : notcmp77337_mux_q = in_notcmp77337_1;
            1'b1 : notcmp77337_mux_q = in_notcmp77337_0;
            default : notcmp77337_mux_q = 1'b0;
        endcase
    end

    // out_notcmp77337(GPOUT,141)
    assign out_notcmp77337 = notcmp77337_mux_q;

    // notcmp81103_pop22373_mux(MUX,112)
    assign notcmp81103_pop22373_mux_s = in_valid_in_0;
    always @(notcmp81103_pop22373_mux_s or in_notcmp81103_pop22373_1 or in_notcmp81103_pop22373_0)
    begin
        unique case (notcmp81103_pop22373_mux_s)
            1'b0 : notcmp81103_pop22373_mux_q = in_notcmp81103_pop22373_1;
            1'b1 : notcmp81103_pop22373_mux_q = in_notcmp81103_pop22373_0;
            default : notcmp81103_pop22373_mux_q = 1'b0;
        endcase
    end

    // out_notcmp81103_pop22373(GPOUT,142)
    assign out_notcmp81103_pop22373 = notcmp81103_pop22373_mux_q;

    // notcmp81105_mux(MUX,113)
    assign notcmp81105_mux_s = in_valid_in_0;
    always @(notcmp81105_mux_s or in_notcmp81105_1 or in_notcmp81105_0)
    begin
        unique case (notcmp81105_mux_s)
            1'b0 : notcmp81105_mux_q = in_notcmp81105_1;
            1'b1 : notcmp81105_mux_q = in_notcmp81105_0;
            default : notcmp81105_mux_q = 1'b0;
        endcase
    end

    // out_notcmp81105(GPOUT,143)
    assign out_notcmp81105 = notcmp81105_mux_q;

    // notcmp81237_mux(MUX,114)
    assign notcmp81237_mux_s = in_valid_in_0;
    always @(notcmp81237_mux_s or in_notcmp81237_1 or in_notcmp81237_0)
    begin
        unique case (notcmp81237_mux_s)
            1'b0 : notcmp81237_mux_q = in_notcmp81237_1;
            1'b1 : notcmp81237_mux_q = in_notcmp81237_0;
            default : notcmp81237_mux_q = 1'b0;
        endcase
    end

    // out_notcmp81237(GPOUT,144)
    assign out_notcmp81237 = notcmp81237_mux_q;

    // output_im_addr_068_replace_phi215_mux(MUX,158)
    assign output_im_addr_068_replace_phi215_mux_s = in_valid_in_0;
    always @(output_im_addr_068_replace_phi215_mux_s or in_output_im_addr_068_replace_phi215_1 or in_output_im_addr_068_replace_phi215_0)
    begin
        unique case (output_im_addr_068_replace_phi215_mux_s)
            1'b0 : output_im_addr_068_replace_phi215_mux_q = in_output_im_addr_068_replace_phi215_1;
            1'b1 : output_im_addr_068_replace_phi215_mux_q = in_output_im_addr_068_replace_phi215_0;
            default : output_im_addr_068_replace_phi215_mux_q = 64'b0;
        endcase
    end

    // out_output_im_addr_068_replace_phi215(GPOUT,145)
    assign out_output_im_addr_068_replace_phi215 = output_im_addr_068_replace_phi215_mux_q;

    // output_im_addr_068_replace_phi91_pop20355_mux(MUX,159)
    assign output_im_addr_068_replace_phi91_pop20355_mux_s = in_valid_in_0;
    always @(output_im_addr_068_replace_phi91_pop20355_mux_s or in_output_im_addr_068_replace_phi91_pop20355_1 or in_output_im_addr_068_replace_phi91_pop20355_0)
    begin
        unique case (output_im_addr_068_replace_phi91_pop20355_mux_s)
            1'b0 : output_im_addr_068_replace_phi91_pop20355_mux_q = in_output_im_addr_068_replace_phi91_pop20355_1;
            1'b1 : output_im_addr_068_replace_phi91_pop20355_mux_q = in_output_im_addr_068_replace_phi91_pop20355_0;
            default : output_im_addr_068_replace_phi91_pop20355_mux_q = 64'b0;
        endcase
    end

    // out_output_im_addr_068_replace_phi91_pop20355(GPOUT,146)
    assign out_output_im_addr_068_replace_phi91_pop20355 = output_im_addr_068_replace_phi91_pop20355_mux_q;

    // output_im_addr_068_replace_phi93_mux(MUX,160)
    assign output_im_addr_068_replace_phi93_mux_s = in_valid_in_0;
    always @(output_im_addr_068_replace_phi93_mux_s or in_output_im_addr_068_replace_phi93_1 or in_output_im_addr_068_replace_phi93_0)
    begin
        unique case (output_im_addr_068_replace_phi93_mux_s)
            1'b0 : output_im_addr_068_replace_phi93_mux_q = in_output_im_addr_068_replace_phi93_1;
            1'b1 : output_im_addr_068_replace_phi93_mux_q = in_output_im_addr_068_replace_phi93_0;
            default : output_im_addr_068_replace_phi93_mux_q = 64'b0;
        endcase
    end

    // out_output_im_addr_068_replace_phi93(GPOUT,147)
    assign out_output_im_addr_068_replace_phi93 = output_im_addr_068_replace_phi93_mux_q;

    // pad_sync_buffer171_mux(MUX,161)
    assign pad_sync_buffer171_mux_s = in_valid_in_0;
    always @(pad_sync_buffer171_mux_s or in_pad_sync_buffer171_1 or in_pad_sync_buffer171_0)
    begin
        unique case (pad_sync_buffer171_mux_s)
            1'b0 : pad_sync_buffer171_mux_q = in_pad_sync_buffer171_1;
            1'b1 : pad_sync_buffer171_mux_q = in_pad_sync_buffer171_0;
            default : pad_sync_buffer171_mux_q = 32'b0;
        endcase
    end

    // out_pad_sync_buffer171(GPOUT,148)
    assign out_pad_sync_buffer171 = pad_sync_buffer171_mux_q;

    // valid_or(LOGICAL,170)
    assign valid_or_q = in_valid_in_0 | in_valid_in_1;

    // stall_out(LOGICAL,162)
    assign stall_out_q = valid_or_q & in_stall_in;

    // out_stall_out_0(GPOUT,149)
    assign out_stall_out_0 = stall_out_q;

    // stall_out_1_specific(LOGICAL,163)
    assign stall_out_1_specific_q = in_valid_in_0 | stall_out_q;

    // out_stall_out_1(GPOUT,150)
    assign out_stall_out_1 = stall_out_1_specific_q;

    // stride_sync_buffer167_mux(MUX,164)
    assign stride_sync_buffer167_mux_s = in_valid_in_0;
    always @(stride_sync_buffer167_mux_s or in_stride_sync_buffer167_1 or in_stride_sync_buffer167_0)
    begin
        unique case (stride_sync_buffer167_mux_s)
            1'b0 : stride_sync_buffer167_mux_q = in_stride_sync_buffer167_1;
            1'b1 : stride_sync_buffer167_mux_q = in_stride_sync_buffer167_0;
            default : stride_sync_buffer167_mux_q = 32'b0;
        endcase
    end

    // out_stride_sync_buffer167(GPOUT,151)
    assign out_stride_sync_buffer167 = stride_sync_buffer167_mux_q;

    // sub_1130_mux(MUX,165)
    assign sub_1130_mux_s = in_valid_in_0;
    always @(sub_1130_mux_s or in_sub_1130_1 or in_sub_1130_0)
    begin
        unique case (sub_1130_mux_s)
            1'b0 : sub_1130_mux_q = in_sub_1130_1;
            1'b1 : sub_1130_mux_q = in_sub_1130_0;
            default : sub_1130_mux_q = 32'b0;
        endcase
    end

    // out_sub_1130(GPOUT,152)
    assign out_sub_1130 = sub_1130_mux_q;

    // sub_1283_mux(MUX,166)
    assign sub_1283_mux_s = in_valid_in_0;
    always @(sub_1283_mux_s or in_sub_1283_1 or in_sub_1283_0)
    begin
        unique case (sub_1283_mux_s)
            1'b0 : sub_1283_mux_q = in_sub_1283_1;
            1'b1 : sub_1283_mux_q = in_sub_1283_0;
            default : sub_1283_mux_q = 32'b0;
        endcase
    end

    // out_sub_1283(GPOUT,153)
    assign out_sub_1283 = sub_1283_mux_q;

    // sub_2145_mux(MUX,167)
    assign sub_2145_mux_s = in_valid_in_0;
    always @(sub_2145_mux_s or in_sub_2145_1 or in_sub_2145_0)
    begin
        unique case (sub_2145_mux_s)
            1'b0 : sub_2145_mux_q = in_sub_2145_1;
            1'b1 : sub_2145_mux_q = in_sub_2145_0;
            default : sub_2145_mux_q = 32'b0;
        endcase
    end

    // out_sub_2145(GPOUT,154)
    assign out_sub_2145 = sub_2145_mux_q;

    // sub_2310_mux(MUX,168)
    assign sub_2310_mux_s = in_valid_in_0;
    always @(sub_2310_mux_s or in_sub_2310_1 or in_sub_2310_0)
    begin
        unique case (sub_2310_mux_s)
            1'b0 : sub_2310_mux_q = in_sub_2310_1;
            1'b1 : sub_2310_mux_q = in_sub_2310_0;
            default : sub_2310_mux_q = 32'b0;
        endcase
    end

    // out_sub_2310(GPOUT,155)
    assign out_sub_2310 = sub_2310_mux_q;

    // tmp_058_mux(MUX,169)
    assign tmp_058_mux_s = in_valid_in_0;
    always @(tmp_058_mux_s or in_tmp_058_1 or in_tmp_058_0)
    begin
        unique case (tmp_058_mux_s)
            1'b0 : tmp_058_mux_q = in_tmp_058_1;
            1'b1 : tmp_058_mux_q = in_tmp_058_0;
            default : tmp_058_mux_q = 32'b0;
        endcase
    end

    // out_tmp_058(GPOUT,156)
    assign out_tmp_058 = tmp_058_mux_q;

    // out_valid_out(GPOUT,157)
    assign out_valid_out = valid_or_q;

endmodule
