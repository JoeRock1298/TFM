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

// SystemVerilog created from conv2d3x3_B10_merge
// SystemVerilog created on Tue May 30 12:33:16 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2d3x3_B10_merge (
    input wire [31:0] in_add110380_0,
    input wire [31:0] in_add110380_1,
    input wire [31:0] in_add246_0,
    input wire [31:0] in_add246_1,
    input wire [31:0] in_add35396_0,
    input wire [31:0] in_add35396_1,
    input wire [0:0] in_cmp26120382_0,
    input wire [0:0] in_cmp26120382_1,
    input wire [0:0] in_cmp26264_0,
    input wire [0:0] in_cmp26264_1,
    input wire [0:0] in_cmp26_1135385_0,
    input wire [0:0] in_cmp26_1135385_1,
    input wire [0:0] in_cmp26_1291_0,
    input wire [0:0] in_cmp26_1291_1,
    input wire [0:0] in_cmp26_2150388_0,
    input wire [0:0] in_cmp26_2150388_1,
    input wire [0:0] in_cmp26_2318_0,
    input wire [0:0] in_cmp26_2318_1,
    input wire [0:0] in_cmp27125383_0,
    input wire [0:0] in_cmp27125383_1,
    input wire [0:0] in_cmp27273_0,
    input wire [0:0] in_cmp27273_1,
    input wire [0:0] in_cmp27_1140386_0,
    input wire [0:0] in_cmp27_1140386_1,
    input wire [0:0] in_cmp27_1300_0,
    input wire [0:0] in_cmp27_1300_1,
    input wire [0:0] in_cmp27_2155389_0,
    input wire [0:0] in_cmp27_2155389_1,
    input wire [0:0] in_cmp27_2327_0,
    input wire [0:0] in_cmp27_2327_1,
    input wire [63:0] in_filter_weight_addr_067_replace_phi203_0,
    input wire [63:0] in_filter_weight_addr_067_replace_phi203_1,
    input wire [63:0] in_filter_weight_addr_067_replace_phi85_pop19345_0,
    input wire [63:0] in_filter_weight_addr_067_replace_phi85_pop19345_1,
    input wire [63:0] in_filter_weight_addr_067_replace_phi87376_0,
    input wire [63:0] in_filter_weight_addr_067_replace_phi87376_1,
    input wire [0:0] in_forked57_0,
    input wire [0:0] in_forked57_1,
    input wire [31:0] in_inc50397_0,
    input wire [31:0] in_inc50397_1,
    input wire [31:0] in_j_061_pop24179394_0,
    input wire [31:0] in_j_061_pop24179394_1,
    input wire [31:0] in_k_059374_0,
    input wire [31:0] in_k_059374_1,
    input wire [31:0] in_lm25225_0,
    input wire [31:0] in_lm25225_1,
    input wire [31:0] in_lm2597_pop21363_0,
    input wire [31:0] in_lm2597_pop21363_1,
    input wire [31:0] in_lm2599378_0,
    input wire [31:0] in_lm2599378_1,
    input wire [31:0] in_mul32395_0,
    input wire [31:0] in_mul32395_1,
    input wire [31:0] in_mul56115381_0,
    input wire [31:0] in_mul56115381_1,
    input wire [31:0] in_mul56255_0,
    input wire [31:0] in_mul56255_1,
    input wire [0:0] in_notcmp73175393_0,
    input wire [0:0] in_notcmp73175393_1,
    input wire [0:0] in_notcmp77160390_0,
    input wire [0:0] in_notcmp77160390_1,
    input wire [0:0] in_notcmp77336_0,
    input wire [0:0] in_notcmp77336_1,
    input wire [0:0] in_notcmp81103_pop22372_0,
    input wire [0:0] in_notcmp81103_pop22372_1,
    input wire [0:0] in_notcmp81105379_0,
    input wire [0:0] in_notcmp81105379_1,
    input wire [0:0] in_notcmp81236_0,
    input wire [0:0] in_notcmp81236_1,
    input wire [63:0] in_output_im_addr_068_replace_phi214_0,
    input wire [63:0] in_output_im_addr_068_replace_phi214_1,
    input wire [63:0] in_output_im_addr_068_replace_phi91_pop20354_0,
    input wire [63:0] in_output_im_addr_068_replace_phi91_pop20354_1,
    input wire [63:0] in_output_im_addr_068_replace_phi93377_0,
    input wire [63:0] in_output_im_addr_068_replace_phi93377_1,
    input wire [31:0] in_pad_sync_buffer171392_0,
    input wire [31:0] in_pad_sync_buffer171392_1,
    input wire [0:0] in_stall_in,
    input wire [31:0] in_stride_sync_buffer167391_0,
    input wire [31:0] in_stride_sync_buffer167391_1,
    input wire [31:0] in_sub_1130384_0,
    input wire [31:0] in_sub_1130384_1,
    input wire [31:0] in_sub_1282_0,
    input wire [31:0] in_sub_1282_1,
    input wire [31:0] in_sub_2145387_0,
    input wire [31:0] in_sub_2145387_1,
    input wire [31:0] in_sub_2309_0,
    input wire [31:0] in_sub_2309_1,
    input wire [31:0] in_tmp_058375_0,
    input wire [31:0] in_tmp_058375_1,
    input wire [0:0] in_unnamed_conv2d3x320_0,
    input wire [0:0] in_unnamed_conv2d3x320_1,
    input wire [0:0] in_unnamed_conv2d3x321_0,
    input wire [0:0] in_unnamed_conv2d3x321_1,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [31:0] out_add110380,
    output wire [31:0] out_add246,
    output wire [31:0] out_add35396,
    output wire [0:0] out_cmp26120382,
    output wire [0:0] out_cmp26264,
    output wire [0:0] out_cmp26_1135385,
    output wire [0:0] out_cmp26_1291,
    output wire [0:0] out_cmp26_2150388,
    output wire [0:0] out_cmp26_2318,
    output wire [0:0] out_cmp27125383,
    output wire [0:0] out_cmp27273,
    output wire [0:0] out_cmp27_1140386,
    output wire [0:0] out_cmp27_1300,
    output wire [0:0] out_cmp27_2155389,
    output wire [0:0] out_cmp27_2327,
    output wire [63:0] out_filter_weight_addr_067_replace_phi203,
    output wire [63:0] out_filter_weight_addr_067_replace_phi85_pop19345,
    output wire [63:0] out_filter_weight_addr_067_replace_phi87376,
    output wire [0:0] out_forked57,
    output wire [31:0] out_inc50397,
    output wire [31:0] out_j_061_pop24179394,
    output wire [31:0] out_k_059374,
    output wire [31:0] out_lm25225,
    output wire [31:0] out_lm2597_pop21363,
    output wire [31:0] out_lm2599378,
    output wire [31:0] out_mul32395,
    output wire [31:0] out_mul56115381,
    output wire [31:0] out_mul56255,
    output wire [0:0] out_notcmp73175393,
    output wire [0:0] out_notcmp77160390,
    output wire [0:0] out_notcmp77336,
    output wire [0:0] out_notcmp81103_pop22372,
    output wire [0:0] out_notcmp81105379,
    output wire [0:0] out_notcmp81236,
    output wire [63:0] out_output_im_addr_068_replace_phi214,
    output wire [63:0] out_output_im_addr_068_replace_phi91_pop20354,
    output wire [63:0] out_output_im_addr_068_replace_phi93377,
    output wire [31:0] out_pad_sync_buffer171392,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [31:0] out_stride_sync_buffer167391,
    output wire [31:0] out_sub_1130384,
    output wire [31:0] out_sub_1282,
    output wire [31:0] out_sub_2145387,
    output wire [31:0] out_sub_2309,
    output wire [31:0] out_tmp_058375,
    output wire [0:0] out_unnamed_conv2d3x320,
    output wire [0:0] out_unnamed_conv2d3x321,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    wire [0:0] add110380_mux_s;
    reg [31:0] add110380_mux_q;
    wire [0:0] add246_mux_s;
    reg [31:0] add246_mux_q;
    wire [0:0] add35396_mux_s;
    reg [31:0] add35396_mux_q;
    wire [0:0] cmp26120382_mux_s;
    reg [0:0] cmp26120382_mux_q;
    wire [0:0] cmp26264_mux_s;
    reg [0:0] cmp26264_mux_q;
    wire [0:0] cmp26_1135385_mux_s;
    reg [0:0] cmp26_1135385_mux_q;
    wire [0:0] cmp26_1291_mux_s;
    reg [0:0] cmp26_1291_mux_q;
    wire [0:0] cmp26_2150388_mux_s;
    reg [0:0] cmp26_2150388_mux_q;
    wire [0:0] cmp26_2318_mux_s;
    reg [0:0] cmp26_2318_mux_q;
    wire [0:0] cmp27125383_mux_s;
    reg [0:0] cmp27125383_mux_q;
    wire [0:0] cmp27273_mux_s;
    reg [0:0] cmp27273_mux_q;
    wire [0:0] cmp27_1140386_mux_s;
    reg [0:0] cmp27_1140386_mux_q;
    wire [0:0] cmp27_1300_mux_s;
    reg [0:0] cmp27_1300_mux_q;
    wire [0:0] cmp27_2155389_mux_s;
    reg [0:0] cmp27_2155389_mux_q;
    wire [0:0] cmp27_2327_mux_s;
    reg [0:0] cmp27_2327_mux_q;
    wire [0:0] filter_weight_addr_067_replace_phi203_mux_s;
    reg [63:0] filter_weight_addr_067_replace_phi203_mux_q;
    wire [0:0] filter_weight_addr_067_replace_phi85_pop19345_mux_s;
    reg [63:0] filter_weight_addr_067_replace_phi85_pop19345_mux_q;
    wire [0:0] filter_weight_addr_067_replace_phi87376_mux_s;
    reg [63:0] filter_weight_addr_067_replace_phi87376_mux_q;
    wire [0:0] forked57_mux_s;
    reg [0:0] forked57_mux_q;
    wire [0:0] inc50397_mux_s;
    reg [31:0] inc50397_mux_q;
    wire [0:0] j_061_pop24179394_mux_s;
    reg [31:0] j_061_pop24179394_mux_q;
    wire [0:0] k_059374_mux_s;
    reg [31:0] k_059374_mux_q;
    wire [0:0] lm25225_mux_s;
    reg [31:0] lm25225_mux_q;
    wire [0:0] lm2597_pop21363_mux_s;
    reg [31:0] lm2597_pop21363_mux_q;
    wire [0:0] lm2599378_mux_s;
    reg [31:0] lm2599378_mux_q;
    wire [0:0] mul32395_mux_s;
    reg [31:0] mul32395_mux_q;
    wire [0:0] mul56115381_mux_s;
    reg [31:0] mul56115381_mux_q;
    wire [0:0] mul56255_mux_s;
    reg [31:0] mul56255_mux_q;
    wire [0:0] notcmp73175393_mux_s;
    reg [0:0] notcmp73175393_mux_q;
    wire [0:0] notcmp77160390_mux_s;
    reg [0:0] notcmp77160390_mux_q;
    wire [0:0] notcmp77336_mux_s;
    reg [0:0] notcmp77336_mux_q;
    wire [0:0] notcmp81103_pop22372_mux_s;
    reg [0:0] notcmp81103_pop22372_mux_q;
    wire [0:0] notcmp81105379_mux_s;
    reg [0:0] notcmp81105379_mux_q;
    wire [0:0] notcmp81236_mux_s;
    reg [0:0] notcmp81236_mux_q;
    wire [0:0] output_im_addr_068_replace_phi214_mux_s;
    reg [63:0] output_im_addr_068_replace_phi214_mux_q;
    wire [0:0] output_im_addr_068_replace_phi91_pop20354_mux_s;
    reg [63:0] output_im_addr_068_replace_phi91_pop20354_mux_q;
    wire [0:0] output_im_addr_068_replace_phi93377_mux_s;
    reg [63:0] output_im_addr_068_replace_phi93377_mux_q;
    wire [0:0] pad_sync_buffer171392_mux_s;
    reg [31:0] pad_sync_buffer171392_mux_q;
    wire [0:0] stall_out_q;
    wire [0:0] stall_out_1_specific_q;
    wire [0:0] stride_sync_buffer167391_mux_s;
    reg [31:0] stride_sync_buffer167391_mux_q;
    wire [0:0] sub_1130384_mux_s;
    reg [31:0] sub_1130384_mux_q;
    wire [0:0] sub_1282_mux_s;
    reg [31:0] sub_1282_mux_q;
    wire [0:0] sub_2145387_mux_s;
    reg [31:0] sub_2145387_mux_q;
    wire [0:0] sub_2309_mux_s;
    reg [31:0] sub_2309_mux_q;
    wire [0:0] tmp_058375_mux_s;
    reg [31:0] tmp_058375_mux_q;
    wire [0:0] unnamed_conv2d3x320_mux_s;
    reg [0:0] unnamed_conv2d3x320_mux_q;
    wire [0:0] unnamed_conv2d3x321_mux_s;
    reg [0:0] unnamed_conv2d3x321_mux_q;
    wire [0:0] valid_or_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // add110380_mux(MUX,2)
    assign add110380_mux_s = in_valid_in_0;
    always @(add110380_mux_s or in_add110380_1 or in_add110380_0)
    begin
        unique case (add110380_mux_s)
            1'b0 : add110380_mux_q = in_add110380_1;
            1'b1 : add110380_mux_q = in_add110380_0;
            default : add110380_mux_q = 32'b0;
        endcase
    end

    // out_add110380(GPOUT,131)
    assign out_add110380 = add110380_mux_q;

    // add246_mux(MUX,3)
    assign add246_mux_s = in_valid_in_0;
    always @(add246_mux_s or in_add246_1 or in_add246_0)
    begin
        unique case (add246_mux_s)
            1'b0 : add246_mux_q = in_add246_1;
            1'b1 : add246_mux_q = in_add246_0;
            default : add246_mux_q = 32'b0;
        endcase
    end

    // out_add246(GPOUT,132)
    assign out_add246 = add246_mux_q;

    // add35396_mux(MUX,4)
    assign add35396_mux_s = in_valid_in_0;
    always @(add35396_mux_s or in_add35396_1 or in_add35396_0)
    begin
        unique case (add35396_mux_s)
            1'b0 : add35396_mux_q = in_add35396_1;
            1'b1 : add35396_mux_q = in_add35396_0;
            default : add35396_mux_q = 32'b0;
        endcase
    end

    // out_add35396(GPOUT,133)
    assign out_add35396 = add35396_mux_q;

    // cmp26120382_mux(MUX,5)
    assign cmp26120382_mux_s = in_valid_in_0;
    always @(cmp26120382_mux_s or in_cmp26120382_1 or in_cmp26120382_0)
    begin
        unique case (cmp26120382_mux_s)
            1'b0 : cmp26120382_mux_q = in_cmp26120382_1;
            1'b1 : cmp26120382_mux_q = in_cmp26120382_0;
            default : cmp26120382_mux_q = 1'b0;
        endcase
    end

    // out_cmp26120382(GPOUT,134)
    assign out_cmp26120382 = cmp26120382_mux_q;

    // cmp26264_mux(MUX,6)
    assign cmp26264_mux_s = in_valid_in_0;
    always @(cmp26264_mux_s or in_cmp26264_1 or in_cmp26264_0)
    begin
        unique case (cmp26264_mux_s)
            1'b0 : cmp26264_mux_q = in_cmp26264_1;
            1'b1 : cmp26264_mux_q = in_cmp26264_0;
            default : cmp26264_mux_q = 1'b0;
        endcase
    end

    // out_cmp26264(GPOUT,135)
    assign out_cmp26264 = cmp26264_mux_q;

    // cmp26_1135385_mux(MUX,7)
    assign cmp26_1135385_mux_s = in_valid_in_0;
    always @(cmp26_1135385_mux_s or in_cmp26_1135385_1 or in_cmp26_1135385_0)
    begin
        unique case (cmp26_1135385_mux_s)
            1'b0 : cmp26_1135385_mux_q = in_cmp26_1135385_1;
            1'b1 : cmp26_1135385_mux_q = in_cmp26_1135385_0;
            default : cmp26_1135385_mux_q = 1'b0;
        endcase
    end

    // out_cmp26_1135385(GPOUT,136)
    assign out_cmp26_1135385 = cmp26_1135385_mux_q;

    // cmp26_1291_mux(MUX,8)
    assign cmp26_1291_mux_s = in_valid_in_0;
    always @(cmp26_1291_mux_s or in_cmp26_1291_1 or in_cmp26_1291_0)
    begin
        unique case (cmp26_1291_mux_s)
            1'b0 : cmp26_1291_mux_q = in_cmp26_1291_1;
            1'b1 : cmp26_1291_mux_q = in_cmp26_1291_0;
            default : cmp26_1291_mux_q = 1'b0;
        endcase
    end

    // out_cmp26_1291(GPOUT,137)
    assign out_cmp26_1291 = cmp26_1291_mux_q;

    // cmp26_2150388_mux(MUX,9)
    assign cmp26_2150388_mux_s = in_valid_in_0;
    always @(cmp26_2150388_mux_s or in_cmp26_2150388_1 or in_cmp26_2150388_0)
    begin
        unique case (cmp26_2150388_mux_s)
            1'b0 : cmp26_2150388_mux_q = in_cmp26_2150388_1;
            1'b1 : cmp26_2150388_mux_q = in_cmp26_2150388_0;
            default : cmp26_2150388_mux_q = 1'b0;
        endcase
    end

    // out_cmp26_2150388(GPOUT,138)
    assign out_cmp26_2150388 = cmp26_2150388_mux_q;

    // cmp26_2318_mux(MUX,10)
    assign cmp26_2318_mux_s = in_valid_in_0;
    always @(cmp26_2318_mux_s or in_cmp26_2318_1 or in_cmp26_2318_0)
    begin
        unique case (cmp26_2318_mux_s)
            1'b0 : cmp26_2318_mux_q = in_cmp26_2318_1;
            1'b1 : cmp26_2318_mux_q = in_cmp26_2318_0;
            default : cmp26_2318_mux_q = 1'b0;
        endcase
    end

    // out_cmp26_2318(GPOUT,139)
    assign out_cmp26_2318 = cmp26_2318_mux_q;

    // cmp27125383_mux(MUX,11)
    assign cmp27125383_mux_s = in_valid_in_0;
    always @(cmp27125383_mux_s or in_cmp27125383_1 or in_cmp27125383_0)
    begin
        unique case (cmp27125383_mux_s)
            1'b0 : cmp27125383_mux_q = in_cmp27125383_1;
            1'b1 : cmp27125383_mux_q = in_cmp27125383_0;
            default : cmp27125383_mux_q = 1'b0;
        endcase
    end

    // out_cmp27125383(GPOUT,140)
    assign out_cmp27125383 = cmp27125383_mux_q;

    // cmp27273_mux(MUX,12)
    assign cmp27273_mux_s = in_valid_in_0;
    always @(cmp27273_mux_s or in_cmp27273_1 or in_cmp27273_0)
    begin
        unique case (cmp27273_mux_s)
            1'b0 : cmp27273_mux_q = in_cmp27273_1;
            1'b1 : cmp27273_mux_q = in_cmp27273_0;
            default : cmp27273_mux_q = 1'b0;
        endcase
    end

    // out_cmp27273(GPOUT,141)
    assign out_cmp27273 = cmp27273_mux_q;

    // cmp27_1140386_mux(MUX,13)
    assign cmp27_1140386_mux_s = in_valid_in_0;
    always @(cmp27_1140386_mux_s or in_cmp27_1140386_1 or in_cmp27_1140386_0)
    begin
        unique case (cmp27_1140386_mux_s)
            1'b0 : cmp27_1140386_mux_q = in_cmp27_1140386_1;
            1'b1 : cmp27_1140386_mux_q = in_cmp27_1140386_0;
            default : cmp27_1140386_mux_q = 1'b0;
        endcase
    end

    // out_cmp27_1140386(GPOUT,142)
    assign out_cmp27_1140386 = cmp27_1140386_mux_q;

    // cmp27_1300_mux(MUX,14)
    assign cmp27_1300_mux_s = in_valid_in_0;
    always @(cmp27_1300_mux_s or in_cmp27_1300_1 or in_cmp27_1300_0)
    begin
        unique case (cmp27_1300_mux_s)
            1'b0 : cmp27_1300_mux_q = in_cmp27_1300_1;
            1'b1 : cmp27_1300_mux_q = in_cmp27_1300_0;
            default : cmp27_1300_mux_q = 1'b0;
        endcase
    end

    // out_cmp27_1300(GPOUT,143)
    assign out_cmp27_1300 = cmp27_1300_mux_q;

    // cmp27_2155389_mux(MUX,15)
    assign cmp27_2155389_mux_s = in_valid_in_0;
    always @(cmp27_2155389_mux_s or in_cmp27_2155389_1 or in_cmp27_2155389_0)
    begin
        unique case (cmp27_2155389_mux_s)
            1'b0 : cmp27_2155389_mux_q = in_cmp27_2155389_1;
            1'b1 : cmp27_2155389_mux_q = in_cmp27_2155389_0;
            default : cmp27_2155389_mux_q = 1'b0;
        endcase
    end

    // out_cmp27_2155389(GPOUT,144)
    assign out_cmp27_2155389 = cmp27_2155389_mux_q;

    // cmp27_2327_mux(MUX,16)
    assign cmp27_2327_mux_s = in_valid_in_0;
    always @(cmp27_2327_mux_s or in_cmp27_2327_1 or in_cmp27_2327_0)
    begin
        unique case (cmp27_2327_mux_s)
            1'b0 : cmp27_2327_mux_q = in_cmp27_2327_1;
            1'b1 : cmp27_2327_mux_q = in_cmp27_2327_0;
            default : cmp27_2327_mux_q = 1'b0;
        endcase
    end

    // out_cmp27_2327(GPOUT,145)
    assign out_cmp27_2327 = cmp27_2327_mux_q;

    // filter_weight_addr_067_replace_phi203_mux(MUX,17)
    assign filter_weight_addr_067_replace_phi203_mux_s = in_valid_in_0;
    always @(filter_weight_addr_067_replace_phi203_mux_s or in_filter_weight_addr_067_replace_phi203_1 or in_filter_weight_addr_067_replace_phi203_0)
    begin
        unique case (filter_weight_addr_067_replace_phi203_mux_s)
            1'b0 : filter_weight_addr_067_replace_phi203_mux_q = in_filter_weight_addr_067_replace_phi203_1;
            1'b1 : filter_weight_addr_067_replace_phi203_mux_q = in_filter_weight_addr_067_replace_phi203_0;
            default : filter_weight_addr_067_replace_phi203_mux_q = 64'b0;
        endcase
    end

    // out_filter_weight_addr_067_replace_phi203(GPOUT,146)
    assign out_filter_weight_addr_067_replace_phi203 = filter_weight_addr_067_replace_phi203_mux_q;

    // filter_weight_addr_067_replace_phi85_pop19345_mux(MUX,18)
    assign filter_weight_addr_067_replace_phi85_pop19345_mux_s = in_valid_in_0;
    always @(filter_weight_addr_067_replace_phi85_pop19345_mux_s or in_filter_weight_addr_067_replace_phi85_pop19345_1 or in_filter_weight_addr_067_replace_phi85_pop19345_0)
    begin
        unique case (filter_weight_addr_067_replace_phi85_pop19345_mux_s)
            1'b0 : filter_weight_addr_067_replace_phi85_pop19345_mux_q = in_filter_weight_addr_067_replace_phi85_pop19345_1;
            1'b1 : filter_weight_addr_067_replace_phi85_pop19345_mux_q = in_filter_weight_addr_067_replace_phi85_pop19345_0;
            default : filter_weight_addr_067_replace_phi85_pop19345_mux_q = 64'b0;
        endcase
    end

    // out_filter_weight_addr_067_replace_phi85_pop19345(GPOUT,147)
    assign out_filter_weight_addr_067_replace_phi85_pop19345 = filter_weight_addr_067_replace_phi85_pop19345_mux_q;

    // filter_weight_addr_067_replace_phi87376_mux(MUX,19)
    assign filter_weight_addr_067_replace_phi87376_mux_s = in_valid_in_0;
    always @(filter_weight_addr_067_replace_phi87376_mux_s or in_filter_weight_addr_067_replace_phi87376_1 or in_filter_weight_addr_067_replace_phi87376_0)
    begin
        unique case (filter_weight_addr_067_replace_phi87376_mux_s)
            1'b0 : filter_weight_addr_067_replace_phi87376_mux_q = in_filter_weight_addr_067_replace_phi87376_1;
            1'b1 : filter_weight_addr_067_replace_phi87376_mux_q = in_filter_weight_addr_067_replace_phi87376_0;
            default : filter_weight_addr_067_replace_phi87376_mux_q = 64'b0;
        endcase
    end

    // out_filter_weight_addr_067_replace_phi87376(GPOUT,148)
    assign out_filter_weight_addr_067_replace_phi87376 = filter_weight_addr_067_replace_phi87376_mux_q;

    // forked57_mux(MUX,20)
    assign forked57_mux_s = in_valid_in_0;
    always @(forked57_mux_s or in_forked57_1 or in_forked57_0)
    begin
        unique case (forked57_mux_s)
            1'b0 : forked57_mux_q = in_forked57_1;
            1'b1 : forked57_mux_q = in_forked57_0;
            default : forked57_mux_q = 1'b0;
        endcase
    end

    // out_forked57(GPOUT,149)
    assign out_forked57 = forked57_mux_q;

    // inc50397_mux(MUX,21)
    assign inc50397_mux_s = in_valid_in_0;
    always @(inc50397_mux_s or in_inc50397_1 or in_inc50397_0)
    begin
        unique case (inc50397_mux_s)
            1'b0 : inc50397_mux_q = in_inc50397_1;
            1'b1 : inc50397_mux_q = in_inc50397_0;
            default : inc50397_mux_q = 32'b0;
        endcase
    end

    // out_inc50397(GPOUT,150)
    assign out_inc50397 = inc50397_mux_q;

    // j_061_pop24179394_mux(MUX,117)
    assign j_061_pop24179394_mux_s = in_valid_in_0;
    always @(j_061_pop24179394_mux_s or in_j_061_pop24179394_1 or in_j_061_pop24179394_0)
    begin
        unique case (j_061_pop24179394_mux_s)
            1'b0 : j_061_pop24179394_mux_q = in_j_061_pop24179394_1;
            1'b1 : j_061_pop24179394_mux_q = in_j_061_pop24179394_0;
            default : j_061_pop24179394_mux_q = 32'b0;
        endcase
    end

    // out_j_061_pop24179394(GPOUT,151)
    assign out_j_061_pop24179394 = j_061_pop24179394_mux_q;

    // k_059374_mux(MUX,118)
    assign k_059374_mux_s = in_valid_in_0;
    always @(k_059374_mux_s or in_k_059374_1 or in_k_059374_0)
    begin
        unique case (k_059374_mux_s)
            1'b0 : k_059374_mux_q = in_k_059374_1;
            1'b1 : k_059374_mux_q = in_k_059374_0;
            default : k_059374_mux_q = 32'b0;
        endcase
    end

    // out_k_059374(GPOUT,152)
    assign out_k_059374 = k_059374_mux_q;

    // lm25225_mux(MUX,119)
    assign lm25225_mux_s = in_valid_in_0;
    always @(lm25225_mux_s or in_lm25225_1 or in_lm25225_0)
    begin
        unique case (lm25225_mux_s)
            1'b0 : lm25225_mux_q = in_lm25225_1;
            1'b1 : lm25225_mux_q = in_lm25225_0;
            default : lm25225_mux_q = 32'b0;
        endcase
    end

    // out_lm25225(GPOUT,153)
    assign out_lm25225 = lm25225_mux_q;

    // lm2597_pop21363_mux(MUX,120)
    assign lm2597_pop21363_mux_s = in_valid_in_0;
    always @(lm2597_pop21363_mux_s or in_lm2597_pop21363_1 or in_lm2597_pop21363_0)
    begin
        unique case (lm2597_pop21363_mux_s)
            1'b0 : lm2597_pop21363_mux_q = in_lm2597_pop21363_1;
            1'b1 : lm2597_pop21363_mux_q = in_lm2597_pop21363_0;
            default : lm2597_pop21363_mux_q = 32'b0;
        endcase
    end

    // out_lm2597_pop21363(GPOUT,154)
    assign out_lm2597_pop21363 = lm2597_pop21363_mux_q;

    // lm2599378_mux(MUX,121)
    assign lm2599378_mux_s = in_valid_in_0;
    always @(lm2599378_mux_s or in_lm2599378_1 or in_lm2599378_0)
    begin
        unique case (lm2599378_mux_s)
            1'b0 : lm2599378_mux_q = in_lm2599378_1;
            1'b1 : lm2599378_mux_q = in_lm2599378_0;
            default : lm2599378_mux_q = 32'b0;
        endcase
    end

    // out_lm2599378(GPOUT,155)
    assign out_lm2599378 = lm2599378_mux_q;

    // mul32395_mux(MUX,122)
    assign mul32395_mux_s = in_valid_in_0;
    always @(mul32395_mux_s or in_mul32395_1 or in_mul32395_0)
    begin
        unique case (mul32395_mux_s)
            1'b0 : mul32395_mux_q = in_mul32395_1;
            1'b1 : mul32395_mux_q = in_mul32395_0;
            default : mul32395_mux_q = 32'b0;
        endcase
    end

    // out_mul32395(GPOUT,156)
    assign out_mul32395 = mul32395_mux_q;

    // mul56115381_mux(MUX,123)
    assign mul56115381_mux_s = in_valid_in_0;
    always @(mul56115381_mux_s or in_mul56115381_1 or in_mul56115381_0)
    begin
        unique case (mul56115381_mux_s)
            1'b0 : mul56115381_mux_q = in_mul56115381_1;
            1'b1 : mul56115381_mux_q = in_mul56115381_0;
            default : mul56115381_mux_q = 32'b0;
        endcase
    end

    // out_mul56115381(GPOUT,157)
    assign out_mul56115381 = mul56115381_mux_q;

    // mul56255_mux(MUX,124)
    assign mul56255_mux_s = in_valid_in_0;
    always @(mul56255_mux_s or in_mul56255_1 or in_mul56255_0)
    begin
        unique case (mul56255_mux_s)
            1'b0 : mul56255_mux_q = in_mul56255_1;
            1'b1 : mul56255_mux_q = in_mul56255_0;
            default : mul56255_mux_q = 32'b0;
        endcase
    end

    // out_mul56255(GPOUT,158)
    assign out_mul56255 = mul56255_mux_q;

    // notcmp73175393_mux(MUX,125)
    assign notcmp73175393_mux_s = in_valid_in_0;
    always @(notcmp73175393_mux_s or in_notcmp73175393_1 or in_notcmp73175393_0)
    begin
        unique case (notcmp73175393_mux_s)
            1'b0 : notcmp73175393_mux_q = in_notcmp73175393_1;
            1'b1 : notcmp73175393_mux_q = in_notcmp73175393_0;
            default : notcmp73175393_mux_q = 1'b0;
        endcase
    end

    // out_notcmp73175393(GPOUT,159)
    assign out_notcmp73175393 = notcmp73175393_mux_q;

    // notcmp77160390_mux(MUX,126)
    assign notcmp77160390_mux_s = in_valid_in_0;
    always @(notcmp77160390_mux_s or in_notcmp77160390_1 or in_notcmp77160390_0)
    begin
        unique case (notcmp77160390_mux_s)
            1'b0 : notcmp77160390_mux_q = in_notcmp77160390_1;
            1'b1 : notcmp77160390_mux_q = in_notcmp77160390_0;
            default : notcmp77160390_mux_q = 1'b0;
        endcase
    end

    // out_notcmp77160390(GPOUT,160)
    assign out_notcmp77160390 = notcmp77160390_mux_q;

    // notcmp77336_mux(MUX,127)
    assign notcmp77336_mux_s = in_valid_in_0;
    always @(notcmp77336_mux_s or in_notcmp77336_1 or in_notcmp77336_0)
    begin
        unique case (notcmp77336_mux_s)
            1'b0 : notcmp77336_mux_q = in_notcmp77336_1;
            1'b1 : notcmp77336_mux_q = in_notcmp77336_0;
            default : notcmp77336_mux_q = 1'b0;
        endcase
    end

    // out_notcmp77336(GPOUT,161)
    assign out_notcmp77336 = notcmp77336_mux_q;

    // notcmp81103_pop22372_mux(MUX,128)
    assign notcmp81103_pop22372_mux_s = in_valid_in_0;
    always @(notcmp81103_pop22372_mux_s or in_notcmp81103_pop22372_1 or in_notcmp81103_pop22372_0)
    begin
        unique case (notcmp81103_pop22372_mux_s)
            1'b0 : notcmp81103_pop22372_mux_q = in_notcmp81103_pop22372_1;
            1'b1 : notcmp81103_pop22372_mux_q = in_notcmp81103_pop22372_0;
            default : notcmp81103_pop22372_mux_q = 1'b0;
        endcase
    end

    // out_notcmp81103_pop22372(GPOUT,162)
    assign out_notcmp81103_pop22372 = notcmp81103_pop22372_mux_q;

    // notcmp81105379_mux(MUX,129)
    assign notcmp81105379_mux_s = in_valid_in_0;
    always @(notcmp81105379_mux_s or in_notcmp81105379_1 or in_notcmp81105379_0)
    begin
        unique case (notcmp81105379_mux_s)
            1'b0 : notcmp81105379_mux_q = in_notcmp81105379_1;
            1'b1 : notcmp81105379_mux_q = in_notcmp81105379_0;
            default : notcmp81105379_mux_q = 1'b0;
        endcase
    end

    // out_notcmp81105379(GPOUT,163)
    assign out_notcmp81105379 = notcmp81105379_mux_q;

    // notcmp81236_mux(MUX,130)
    assign notcmp81236_mux_s = in_valid_in_0;
    always @(notcmp81236_mux_s or in_notcmp81236_1 or in_notcmp81236_0)
    begin
        unique case (notcmp81236_mux_s)
            1'b0 : notcmp81236_mux_q = in_notcmp81236_1;
            1'b1 : notcmp81236_mux_q = in_notcmp81236_0;
            default : notcmp81236_mux_q = 1'b0;
        endcase
    end

    // out_notcmp81236(GPOUT,164)
    assign out_notcmp81236 = notcmp81236_mux_q;

    // output_im_addr_068_replace_phi214_mux(MUX,180)
    assign output_im_addr_068_replace_phi214_mux_s = in_valid_in_0;
    always @(output_im_addr_068_replace_phi214_mux_s or in_output_im_addr_068_replace_phi214_1 or in_output_im_addr_068_replace_phi214_0)
    begin
        unique case (output_im_addr_068_replace_phi214_mux_s)
            1'b0 : output_im_addr_068_replace_phi214_mux_q = in_output_im_addr_068_replace_phi214_1;
            1'b1 : output_im_addr_068_replace_phi214_mux_q = in_output_im_addr_068_replace_phi214_0;
            default : output_im_addr_068_replace_phi214_mux_q = 64'b0;
        endcase
    end

    // out_output_im_addr_068_replace_phi214(GPOUT,165)
    assign out_output_im_addr_068_replace_phi214 = output_im_addr_068_replace_phi214_mux_q;

    // output_im_addr_068_replace_phi91_pop20354_mux(MUX,181)
    assign output_im_addr_068_replace_phi91_pop20354_mux_s = in_valid_in_0;
    always @(output_im_addr_068_replace_phi91_pop20354_mux_s or in_output_im_addr_068_replace_phi91_pop20354_1 or in_output_im_addr_068_replace_phi91_pop20354_0)
    begin
        unique case (output_im_addr_068_replace_phi91_pop20354_mux_s)
            1'b0 : output_im_addr_068_replace_phi91_pop20354_mux_q = in_output_im_addr_068_replace_phi91_pop20354_1;
            1'b1 : output_im_addr_068_replace_phi91_pop20354_mux_q = in_output_im_addr_068_replace_phi91_pop20354_0;
            default : output_im_addr_068_replace_phi91_pop20354_mux_q = 64'b0;
        endcase
    end

    // out_output_im_addr_068_replace_phi91_pop20354(GPOUT,166)
    assign out_output_im_addr_068_replace_phi91_pop20354 = output_im_addr_068_replace_phi91_pop20354_mux_q;

    // output_im_addr_068_replace_phi93377_mux(MUX,182)
    assign output_im_addr_068_replace_phi93377_mux_s = in_valid_in_0;
    always @(output_im_addr_068_replace_phi93377_mux_s or in_output_im_addr_068_replace_phi93377_1 or in_output_im_addr_068_replace_phi93377_0)
    begin
        unique case (output_im_addr_068_replace_phi93377_mux_s)
            1'b0 : output_im_addr_068_replace_phi93377_mux_q = in_output_im_addr_068_replace_phi93377_1;
            1'b1 : output_im_addr_068_replace_phi93377_mux_q = in_output_im_addr_068_replace_phi93377_0;
            default : output_im_addr_068_replace_phi93377_mux_q = 64'b0;
        endcase
    end

    // out_output_im_addr_068_replace_phi93377(GPOUT,167)
    assign out_output_im_addr_068_replace_phi93377 = output_im_addr_068_replace_phi93377_mux_q;

    // pad_sync_buffer171392_mux(MUX,183)
    assign pad_sync_buffer171392_mux_s = in_valid_in_0;
    always @(pad_sync_buffer171392_mux_s or in_pad_sync_buffer171392_1 or in_pad_sync_buffer171392_0)
    begin
        unique case (pad_sync_buffer171392_mux_s)
            1'b0 : pad_sync_buffer171392_mux_q = in_pad_sync_buffer171392_1;
            1'b1 : pad_sync_buffer171392_mux_q = in_pad_sync_buffer171392_0;
            default : pad_sync_buffer171392_mux_q = 32'b0;
        endcase
    end

    // out_pad_sync_buffer171392(GPOUT,168)
    assign out_pad_sync_buffer171392 = pad_sync_buffer171392_mux_q;

    // valid_or(LOGICAL,194)
    assign valid_or_q = in_valid_in_0 | in_valid_in_1;

    // stall_out(LOGICAL,184)
    assign stall_out_q = valid_or_q & in_stall_in;

    // out_stall_out_0(GPOUT,169)
    assign out_stall_out_0 = stall_out_q;

    // stall_out_1_specific(LOGICAL,185)
    assign stall_out_1_specific_q = in_valid_in_0 | stall_out_q;

    // out_stall_out_1(GPOUT,170)
    assign out_stall_out_1 = stall_out_1_specific_q;

    // stride_sync_buffer167391_mux(MUX,186)
    assign stride_sync_buffer167391_mux_s = in_valid_in_0;
    always @(stride_sync_buffer167391_mux_s or in_stride_sync_buffer167391_1 or in_stride_sync_buffer167391_0)
    begin
        unique case (stride_sync_buffer167391_mux_s)
            1'b0 : stride_sync_buffer167391_mux_q = in_stride_sync_buffer167391_1;
            1'b1 : stride_sync_buffer167391_mux_q = in_stride_sync_buffer167391_0;
            default : stride_sync_buffer167391_mux_q = 32'b0;
        endcase
    end

    // out_stride_sync_buffer167391(GPOUT,171)
    assign out_stride_sync_buffer167391 = stride_sync_buffer167391_mux_q;

    // sub_1130384_mux(MUX,187)
    assign sub_1130384_mux_s = in_valid_in_0;
    always @(sub_1130384_mux_s or in_sub_1130384_1 or in_sub_1130384_0)
    begin
        unique case (sub_1130384_mux_s)
            1'b0 : sub_1130384_mux_q = in_sub_1130384_1;
            1'b1 : sub_1130384_mux_q = in_sub_1130384_0;
            default : sub_1130384_mux_q = 32'b0;
        endcase
    end

    // out_sub_1130384(GPOUT,172)
    assign out_sub_1130384 = sub_1130384_mux_q;

    // sub_1282_mux(MUX,188)
    assign sub_1282_mux_s = in_valid_in_0;
    always @(sub_1282_mux_s or in_sub_1282_1 or in_sub_1282_0)
    begin
        unique case (sub_1282_mux_s)
            1'b0 : sub_1282_mux_q = in_sub_1282_1;
            1'b1 : sub_1282_mux_q = in_sub_1282_0;
            default : sub_1282_mux_q = 32'b0;
        endcase
    end

    // out_sub_1282(GPOUT,173)
    assign out_sub_1282 = sub_1282_mux_q;

    // sub_2145387_mux(MUX,189)
    assign sub_2145387_mux_s = in_valid_in_0;
    always @(sub_2145387_mux_s or in_sub_2145387_1 or in_sub_2145387_0)
    begin
        unique case (sub_2145387_mux_s)
            1'b0 : sub_2145387_mux_q = in_sub_2145387_1;
            1'b1 : sub_2145387_mux_q = in_sub_2145387_0;
            default : sub_2145387_mux_q = 32'b0;
        endcase
    end

    // out_sub_2145387(GPOUT,174)
    assign out_sub_2145387 = sub_2145387_mux_q;

    // sub_2309_mux(MUX,190)
    assign sub_2309_mux_s = in_valid_in_0;
    always @(sub_2309_mux_s or in_sub_2309_1 or in_sub_2309_0)
    begin
        unique case (sub_2309_mux_s)
            1'b0 : sub_2309_mux_q = in_sub_2309_1;
            1'b1 : sub_2309_mux_q = in_sub_2309_0;
            default : sub_2309_mux_q = 32'b0;
        endcase
    end

    // out_sub_2309(GPOUT,175)
    assign out_sub_2309 = sub_2309_mux_q;

    // tmp_058375_mux(MUX,191)
    assign tmp_058375_mux_s = in_valid_in_0;
    always @(tmp_058375_mux_s or in_tmp_058375_1 or in_tmp_058375_0)
    begin
        unique case (tmp_058375_mux_s)
            1'b0 : tmp_058375_mux_q = in_tmp_058375_1;
            1'b1 : tmp_058375_mux_q = in_tmp_058375_0;
            default : tmp_058375_mux_q = 32'b0;
        endcase
    end

    // out_tmp_058375(GPOUT,176)
    assign out_tmp_058375 = tmp_058375_mux_q;

    // unnamed_conv2d3x320_mux(MUX,192)
    assign unnamed_conv2d3x320_mux_s = in_valid_in_0;
    always @(unnamed_conv2d3x320_mux_s or in_unnamed_conv2d3x320_1 or in_unnamed_conv2d3x320_0)
    begin
        unique case (unnamed_conv2d3x320_mux_s)
            1'b0 : unnamed_conv2d3x320_mux_q = in_unnamed_conv2d3x320_1;
            1'b1 : unnamed_conv2d3x320_mux_q = in_unnamed_conv2d3x320_0;
            default : unnamed_conv2d3x320_mux_q = 1'b0;
        endcase
    end

    // out_unnamed_conv2d3x320(GPOUT,177)
    assign out_unnamed_conv2d3x320 = unnamed_conv2d3x320_mux_q;

    // unnamed_conv2d3x321_mux(MUX,193)
    assign unnamed_conv2d3x321_mux_s = in_valid_in_0;
    always @(unnamed_conv2d3x321_mux_s or in_unnamed_conv2d3x321_1 or in_unnamed_conv2d3x321_0)
    begin
        unique case (unnamed_conv2d3x321_mux_s)
            1'b0 : unnamed_conv2d3x321_mux_q = in_unnamed_conv2d3x321_1;
            1'b1 : unnamed_conv2d3x321_mux_q = in_unnamed_conv2d3x321_0;
            default : unnamed_conv2d3x321_mux_q = 1'b0;
        endcase
    end

    // out_unnamed_conv2d3x321(GPOUT,178)
    assign out_unnamed_conv2d3x321 = unnamed_conv2d3x321_mux_q;

    // out_valid_out(GPOUT,179)
    assign out_valid_out = valid_or_q;

endmodule
