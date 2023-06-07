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

// SystemVerilog created from conv2d3x3_B3_merge
// SystemVerilog created on Tue Jun  6 18:48:20 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2d3x3_B3_merge (
    input wire [63:0] in_filter_weight_addr_067_replace_phi195_0,
    input wire [63:0] in_filter_weight_addr_067_replace_phi195_1,
    input wire [0:0] in_forked34_0,
    input wire [0:0] in_forked34_1,
    input wire [31:0] in_lm25217_0,
    input wire [31:0] in_lm25217_1,
    input wire [0:0] in_notcmp81228_0,
    input wire [0:0] in_notcmp81228_1,
    input wire [63:0] in_output_im_addr_068_replace_phi206_0,
    input wire [63:0] in_output_im_addr_068_replace_phi206_1,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [63:0] out_filter_weight_addr_067_replace_phi195,
    output wire [0:0] out_forked34,
    output wire [31:0] out_lm25217,
    output wire [0:0] out_notcmp81228,
    output wire [63:0] out_output_im_addr_068_replace_phi206,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    wire [0:0] filter_weight_addr_067_replace_phi195_mux_s;
    reg [63:0] filter_weight_addr_067_replace_phi195_mux_q;
    wire [0:0] forked34_mux_s;
    reg [0:0] forked34_mux_q;
    wire [0:0] lm25217_mux_s;
    reg [31:0] lm25217_mux_q;
    wire [0:0] notcmp81228_mux_s;
    reg [0:0] notcmp81228_mux_q;
    wire [0:0] output_im_addr_068_replace_phi206_mux_s;
    reg [63:0] output_im_addr_068_replace_phi206_mux_q;
    wire [0:0] stall_out_q;
    wire [0:0] stall_out_1_specific_q;
    wire [0:0] valid_or_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // filter_weight_addr_067_replace_phi195_mux(MUX,2)
    assign filter_weight_addr_067_replace_phi195_mux_s = in_valid_in_0;
    always @(filter_weight_addr_067_replace_phi195_mux_s or in_filter_weight_addr_067_replace_phi195_1 or in_filter_weight_addr_067_replace_phi195_0)
    begin
        unique case (filter_weight_addr_067_replace_phi195_mux_s)
            1'b0 : filter_weight_addr_067_replace_phi195_mux_q = in_filter_weight_addr_067_replace_phi195_1;
            1'b1 : filter_weight_addr_067_replace_phi195_mux_q = in_filter_weight_addr_067_replace_phi195_0;
            default : filter_weight_addr_067_replace_phi195_mux_q = 64'b0;
        endcase
    end

    // out_filter_weight_addr_067_replace_phi195(GPOUT,19)
    assign out_filter_weight_addr_067_replace_phi195 = filter_weight_addr_067_replace_phi195_mux_q;

    // forked34_mux(MUX,3)
    assign forked34_mux_s = in_valid_in_0;
    always @(forked34_mux_s or in_forked34_1 or in_forked34_0)
    begin
        unique case (forked34_mux_s)
            1'b0 : forked34_mux_q = in_forked34_1;
            1'b1 : forked34_mux_q = in_forked34_0;
            default : forked34_mux_q = 1'b0;
        endcase
    end

    // out_forked34(GPOUT,20)
    assign out_forked34 = forked34_mux_q;

    // lm25217_mux(MUX,17)
    assign lm25217_mux_s = in_valid_in_0;
    always @(lm25217_mux_s or in_lm25217_1 or in_lm25217_0)
    begin
        unique case (lm25217_mux_s)
            1'b0 : lm25217_mux_q = in_lm25217_1;
            1'b1 : lm25217_mux_q = in_lm25217_0;
            default : lm25217_mux_q = 32'b0;
        endcase
    end

    // out_lm25217(GPOUT,21)
    assign out_lm25217 = lm25217_mux_q;

    // notcmp81228_mux(MUX,18)
    assign notcmp81228_mux_s = in_valid_in_0;
    always @(notcmp81228_mux_s or in_notcmp81228_1 or in_notcmp81228_0)
    begin
        unique case (notcmp81228_mux_s)
            1'b0 : notcmp81228_mux_q = in_notcmp81228_1;
            1'b1 : notcmp81228_mux_q = in_notcmp81228_0;
            default : notcmp81228_mux_q = 1'b0;
        endcase
    end

    // out_notcmp81228(GPOUT,22)
    assign out_notcmp81228 = notcmp81228_mux_q;

    // output_im_addr_068_replace_phi206_mux(MUX,27)
    assign output_im_addr_068_replace_phi206_mux_s = in_valid_in_0;
    always @(output_im_addr_068_replace_phi206_mux_s or in_output_im_addr_068_replace_phi206_1 or in_output_im_addr_068_replace_phi206_0)
    begin
        unique case (output_im_addr_068_replace_phi206_mux_s)
            1'b0 : output_im_addr_068_replace_phi206_mux_q = in_output_im_addr_068_replace_phi206_1;
            1'b1 : output_im_addr_068_replace_phi206_mux_q = in_output_im_addr_068_replace_phi206_0;
            default : output_im_addr_068_replace_phi206_mux_q = 64'b0;
        endcase
    end

    // out_output_im_addr_068_replace_phi206(GPOUT,23)
    assign out_output_im_addr_068_replace_phi206 = output_im_addr_068_replace_phi206_mux_q;

    // valid_or(LOGICAL,30)
    assign valid_or_q = in_valid_in_0 | in_valid_in_1;

    // stall_out(LOGICAL,28)
    assign stall_out_q = valid_or_q & in_stall_in;

    // out_stall_out_0(GPOUT,24)
    assign out_stall_out_0 = stall_out_q;

    // stall_out_1_specific(LOGICAL,29)
    assign stall_out_1_specific_q = in_valid_in_0 | stall_out_q;

    // out_stall_out_1(GPOUT,25)
    assign out_stall_out_1 = stall_out_1_specific_q;

    // out_valid_out(GPOUT,26)
    assign out_valid_out = valid_or_q;

endmodule
