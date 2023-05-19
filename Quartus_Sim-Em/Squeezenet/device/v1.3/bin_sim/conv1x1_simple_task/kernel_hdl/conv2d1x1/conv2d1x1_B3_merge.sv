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

// SystemVerilog created from conv2d1x1_B3_merge
// SystemVerilog created on Wed May 17 13:49:22 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2d1x1_B3_merge (
    input wire [63:0] in_filter_weight_addr_053_replace_phi59_0,
    input wire [63:0] in_filter_weight_addr_053_replace_phi59_1,
    input wire [0:0] in_forked34_0,
    input wire [0:0] in_forked34_1,
    input wire [31:0] in_lm65_0,
    input wire [31:0] in_lm65_1,
    input wire [31:0] in_mul62_0,
    input wire [31:0] in_mul62_1,
    input wire [0:0] in_notcmp3068_0,
    input wire [0:0] in_notcmp3068_1,
    input wire [63:0] in_output_im_addr_054_replace_phi56_0,
    input wire [63:0] in_output_im_addr_054_replace_phi56_1,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_unnamed_conv2d1x110_0,
    input wire [0:0] in_unnamed_conv2d1x110_1,
    input wire [32:0] in_unnamed_conv2d1x111_0,
    input wire [32:0] in_unnamed_conv2d1x111_1,
    input wire [0:0] in_unnamed_conv2d1x19_0,
    input wire [0:0] in_unnamed_conv2d1x19_1,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [63:0] out_filter_weight_addr_053_replace_phi59,
    output wire [0:0] out_forked34,
    output wire [31:0] out_lm65,
    output wire [31:0] out_mul62,
    output wire [0:0] out_notcmp3068,
    output wire [63:0] out_output_im_addr_054_replace_phi56,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [0:0] out_unnamed_conv2d1x110,
    output wire [32:0] out_unnamed_conv2d1x111,
    output wire [0:0] out_unnamed_conv2d1x19,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    wire [0:0] filter_weight_addr_053_replace_phi59_mux_s;
    reg [63:0] filter_weight_addr_053_replace_phi59_mux_q;
    wire [0:0] forked34_mux_s;
    reg [0:0] forked34_mux_q;
    wire [0:0] lm65_mux_s;
    reg [31:0] lm65_mux_q;
    wire [0:0] mul62_mux_s;
    reg [31:0] mul62_mux_q;
    wire [0:0] notcmp3068_mux_s;
    reg [0:0] notcmp3068_mux_q;
    wire [0:0] output_im_addr_054_replace_phi56_mux_s;
    reg [63:0] output_im_addr_054_replace_phi56_mux_q;
    wire [0:0] stall_out_q;
    wire [0:0] stall_out_1_specific_q;
    wire [0:0] unnamed_conv2d1x110_mux_s;
    reg [0:0] unnamed_conv2d1x110_mux_q;
    wire [0:0] unnamed_conv2d1x111_mux_s;
    reg [32:0] unnamed_conv2d1x111_mux_q;
    wire [0:0] unnamed_conv2d1x19_mux_s;
    reg [0:0] unnamed_conv2d1x19_mux_q;
    wire [0:0] valid_or_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // filter_weight_addr_053_replace_phi59_mux(MUX,2)
    assign filter_weight_addr_053_replace_phi59_mux_s = in_valid_in_0;
    always @(filter_weight_addr_053_replace_phi59_mux_s or in_filter_weight_addr_053_replace_phi59_1 or in_filter_weight_addr_053_replace_phi59_0)
    begin
        unique case (filter_weight_addr_053_replace_phi59_mux_s)
            1'b0 : filter_weight_addr_053_replace_phi59_mux_q = in_filter_weight_addr_053_replace_phi59_1;
            1'b1 : filter_weight_addr_053_replace_phi59_mux_q = in_filter_weight_addr_053_replace_phi59_0;
            default : filter_weight_addr_053_replace_phi59_mux_q = 64'b0;
        endcase
    end

    // out_filter_weight_addr_053_replace_phi59(GPOUT,28)
    assign out_filter_weight_addr_053_replace_phi59 = filter_weight_addr_053_replace_phi59_mux_q;

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

    // out_forked34(GPOUT,29)
    assign out_forked34 = forked34_mux_q;

    // lm65_mux(MUX,25)
    assign lm65_mux_s = in_valid_in_0;
    always @(lm65_mux_s or in_lm65_1 or in_lm65_0)
    begin
        unique case (lm65_mux_s)
            1'b0 : lm65_mux_q = in_lm65_1;
            1'b1 : lm65_mux_q = in_lm65_0;
            default : lm65_mux_q = 32'b0;
        endcase
    end

    // out_lm65(GPOUT,30)
    assign out_lm65 = lm65_mux_q;

    // mul62_mux(MUX,26)
    assign mul62_mux_s = in_valid_in_0;
    always @(mul62_mux_s or in_mul62_1 or in_mul62_0)
    begin
        unique case (mul62_mux_s)
            1'b0 : mul62_mux_q = in_mul62_1;
            1'b1 : mul62_mux_q = in_mul62_0;
            default : mul62_mux_q = 32'b0;
        endcase
    end

    // out_mul62(GPOUT,31)
    assign out_mul62 = mul62_mux_q;

    // notcmp3068_mux(MUX,27)
    assign notcmp3068_mux_s = in_valid_in_0;
    always @(notcmp3068_mux_s or in_notcmp3068_1 or in_notcmp3068_0)
    begin
        unique case (notcmp3068_mux_s)
            1'b0 : notcmp3068_mux_q = in_notcmp3068_1;
            1'b1 : notcmp3068_mux_q = in_notcmp3068_0;
            default : notcmp3068_mux_q = 1'b0;
        endcase
    end

    // out_notcmp3068(GPOUT,32)
    assign out_notcmp3068 = notcmp3068_mux_q;

    // output_im_addr_054_replace_phi56_mux(MUX,40)
    assign output_im_addr_054_replace_phi56_mux_s = in_valid_in_0;
    always @(output_im_addr_054_replace_phi56_mux_s or in_output_im_addr_054_replace_phi56_1 or in_output_im_addr_054_replace_phi56_0)
    begin
        unique case (output_im_addr_054_replace_phi56_mux_s)
            1'b0 : output_im_addr_054_replace_phi56_mux_q = in_output_im_addr_054_replace_phi56_1;
            1'b1 : output_im_addr_054_replace_phi56_mux_q = in_output_im_addr_054_replace_phi56_0;
            default : output_im_addr_054_replace_phi56_mux_q = 64'b0;
        endcase
    end

    // out_output_im_addr_054_replace_phi56(GPOUT,33)
    assign out_output_im_addr_054_replace_phi56 = output_im_addr_054_replace_phi56_mux_q;

    // valid_or(LOGICAL,46)
    assign valid_or_q = in_valid_in_0 | in_valid_in_1;

    // stall_out(LOGICAL,41)
    assign stall_out_q = valid_or_q & in_stall_in;

    // out_stall_out_0(GPOUT,34)
    assign out_stall_out_0 = stall_out_q;

    // stall_out_1_specific(LOGICAL,42)
    assign stall_out_1_specific_q = in_valid_in_0 | stall_out_q;

    // out_stall_out_1(GPOUT,35)
    assign out_stall_out_1 = stall_out_1_specific_q;

    // unnamed_conv2d1x110_mux(MUX,43)
    assign unnamed_conv2d1x110_mux_s = in_valid_in_0;
    always @(unnamed_conv2d1x110_mux_s or in_unnamed_conv2d1x110_1 or in_unnamed_conv2d1x110_0)
    begin
        unique case (unnamed_conv2d1x110_mux_s)
            1'b0 : unnamed_conv2d1x110_mux_q = in_unnamed_conv2d1x110_1;
            1'b1 : unnamed_conv2d1x110_mux_q = in_unnamed_conv2d1x110_0;
            default : unnamed_conv2d1x110_mux_q = 1'b0;
        endcase
    end

    // out_unnamed_conv2d1x110(GPOUT,36)
    assign out_unnamed_conv2d1x110 = unnamed_conv2d1x110_mux_q;

    // unnamed_conv2d1x111_mux(MUX,44)
    assign unnamed_conv2d1x111_mux_s = in_valid_in_0;
    always @(unnamed_conv2d1x111_mux_s or in_unnamed_conv2d1x111_1 or in_unnamed_conv2d1x111_0)
    begin
        unique case (unnamed_conv2d1x111_mux_s)
            1'b0 : unnamed_conv2d1x111_mux_q = in_unnamed_conv2d1x111_1;
            1'b1 : unnamed_conv2d1x111_mux_q = in_unnamed_conv2d1x111_0;
            default : unnamed_conv2d1x111_mux_q = 33'b0;
        endcase
    end

    // out_unnamed_conv2d1x111(GPOUT,37)
    assign out_unnamed_conv2d1x111 = unnamed_conv2d1x111_mux_q;

    // unnamed_conv2d1x19_mux(MUX,45)
    assign unnamed_conv2d1x19_mux_s = in_valid_in_0;
    always @(unnamed_conv2d1x19_mux_s or in_unnamed_conv2d1x19_1 or in_unnamed_conv2d1x19_0)
    begin
        unique case (unnamed_conv2d1x19_mux_s)
            1'b0 : unnamed_conv2d1x19_mux_q = in_unnamed_conv2d1x19_1;
            1'b1 : unnamed_conv2d1x19_mux_q = in_unnamed_conv2d1x19_0;
            default : unnamed_conv2d1x19_mux_q = 1'b0;
        endcase
    end

    // out_unnamed_conv2d1x19(GPOUT,38)
    assign out_unnamed_conv2d1x19 = unnamed_conv2d1x19_mux_q;

    // out_valid_out(GPOUT,39)
    assign out_valid_out = valid_or_q;

endmodule
