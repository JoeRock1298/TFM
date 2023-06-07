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

// SystemVerilog created from maxpool2d_B5_merge
// SystemVerilog created on Sat Jun  3 13:01:56 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module maxpool2d_B5_merge (
    input wire [0:0] in_forked9_0,
    input wire [0:0] in_forked9_1,
    input wire [63:0] in_input_im_addr_041_replace_phi36_pop17103_0,
    input wire [63:0] in_input_im_addr_041_replace_phi36_pop17103_1,
    input wire [63:0] in_input_im_addr_041_replace_phi75_0,
    input wire [63:0] in_input_im_addr_041_replace_phi75_1,
    input wire [31:0] in_mul2588_0,
    input wire [31:0] in_mul2588_1,
    input wire [31:0] in_mul83_0,
    input wire [31:0] in_mul83_1,
    input wire [0:0] in_notcmp2393_0,
    input wire [0:0] in_notcmp2393_1,
    input wire [0:0] in_notcmp2740_pop18108_0,
    input wire [0:0] in_notcmp2740_pop18108_1,
    input wire [0:0] in_notcmp2782_0,
    input wire [0:0] in_notcmp2782_1,
    input wire [63:0] in_output_im_addr_042_replace_phi32_pop1698_0,
    input wire [63:0] in_output_im_addr_042_replace_phi32_pop1698_1,
    input wire [63:0] in_output_im_addr_042_replace_phi68_0,
    input wire [63:0] in_output_im_addr_042_replace_phi68_1,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [0:0] out_forked9,
    output wire [63:0] out_input_im_addr_041_replace_phi36_pop17103,
    output wire [63:0] out_input_im_addr_041_replace_phi75,
    output wire [31:0] out_mul2588,
    output wire [31:0] out_mul83,
    output wire [0:0] out_notcmp2393,
    output wire [0:0] out_notcmp2740_pop18108,
    output wire [0:0] out_notcmp2782,
    output wire [63:0] out_output_im_addr_042_replace_phi32_pop1698,
    output wire [63:0] out_output_im_addr_042_replace_phi68,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    wire [0:0] forked9_mux_s;
    reg [0:0] forked9_mux_q;
    wire [0:0] input_im_addr_041_replace_phi36_pop17103_mux_s;
    reg [63:0] input_im_addr_041_replace_phi36_pop17103_mux_q;
    wire [0:0] input_im_addr_041_replace_phi75_mux_s;
    reg [63:0] input_im_addr_041_replace_phi75_mux_q;
    wire [0:0] mul2588_mux_s;
    reg [31:0] mul2588_mux_q;
    wire [0:0] mul83_mux_s;
    reg [31:0] mul83_mux_q;
    wire [0:0] notcmp2393_mux_s;
    reg [0:0] notcmp2393_mux_q;
    wire [0:0] notcmp2740_pop18108_mux_s;
    reg [0:0] notcmp2740_pop18108_mux_q;
    wire [0:0] notcmp2782_mux_s;
    reg [0:0] notcmp2782_mux_q;
    wire [0:0] output_im_addr_042_replace_phi32_pop1698_mux_s;
    reg [63:0] output_im_addr_042_replace_phi32_pop1698_mux_q;
    wire [0:0] output_im_addr_042_replace_phi68_mux_s;
    reg [63:0] output_im_addr_042_replace_phi68_mux_q;
    wire [0:0] stall_out_q;
    wire [0:0] stall_out_1_specific_q;
    wire [0:0] valid_or_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // forked9_mux(MUX,2)
    assign forked9_mux_s = in_valid_in_0;
    always @(forked9_mux_s or in_forked9_1 or in_forked9_0)
    begin
        unique case (forked9_mux_s)
            1'b0 : forked9_mux_q = in_forked9_1;
            1'b1 : forked9_mux_q = in_forked9_0;
            default : forked9_mux_q = 1'b0;
        endcase
    end

    // out_forked9(GPOUT,33)
    assign out_forked9 = forked9_mux_q;

    // input_im_addr_041_replace_phi36_pop17103_mux(MUX,26)
    assign input_im_addr_041_replace_phi36_pop17103_mux_s = in_valid_in_0;
    always @(input_im_addr_041_replace_phi36_pop17103_mux_s or in_input_im_addr_041_replace_phi36_pop17103_1 or in_input_im_addr_041_replace_phi36_pop17103_0)
    begin
        unique case (input_im_addr_041_replace_phi36_pop17103_mux_s)
            1'b0 : input_im_addr_041_replace_phi36_pop17103_mux_q = in_input_im_addr_041_replace_phi36_pop17103_1;
            1'b1 : input_im_addr_041_replace_phi36_pop17103_mux_q = in_input_im_addr_041_replace_phi36_pop17103_0;
            default : input_im_addr_041_replace_phi36_pop17103_mux_q = 64'b0;
        endcase
    end

    // out_input_im_addr_041_replace_phi36_pop17103(GPOUT,34)
    assign out_input_im_addr_041_replace_phi36_pop17103 = input_im_addr_041_replace_phi36_pop17103_mux_q;

    // input_im_addr_041_replace_phi75_mux(MUX,27)
    assign input_im_addr_041_replace_phi75_mux_s = in_valid_in_0;
    always @(input_im_addr_041_replace_phi75_mux_s or in_input_im_addr_041_replace_phi75_1 or in_input_im_addr_041_replace_phi75_0)
    begin
        unique case (input_im_addr_041_replace_phi75_mux_s)
            1'b0 : input_im_addr_041_replace_phi75_mux_q = in_input_im_addr_041_replace_phi75_1;
            1'b1 : input_im_addr_041_replace_phi75_mux_q = in_input_im_addr_041_replace_phi75_0;
            default : input_im_addr_041_replace_phi75_mux_q = 64'b0;
        endcase
    end

    // out_input_im_addr_041_replace_phi75(GPOUT,35)
    assign out_input_im_addr_041_replace_phi75 = input_im_addr_041_replace_phi75_mux_q;

    // mul2588_mux(MUX,28)
    assign mul2588_mux_s = in_valid_in_0;
    always @(mul2588_mux_s or in_mul2588_1 or in_mul2588_0)
    begin
        unique case (mul2588_mux_s)
            1'b0 : mul2588_mux_q = in_mul2588_1;
            1'b1 : mul2588_mux_q = in_mul2588_0;
            default : mul2588_mux_q = 32'b0;
        endcase
    end

    // out_mul2588(GPOUT,36)
    assign out_mul2588 = mul2588_mux_q;

    // mul83_mux(MUX,29)
    assign mul83_mux_s = in_valid_in_0;
    always @(mul83_mux_s or in_mul83_1 or in_mul83_0)
    begin
        unique case (mul83_mux_s)
            1'b0 : mul83_mux_q = in_mul83_1;
            1'b1 : mul83_mux_q = in_mul83_0;
            default : mul83_mux_q = 32'b0;
        endcase
    end

    // out_mul83(GPOUT,37)
    assign out_mul83 = mul83_mux_q;

    // notcmp2393_mux(MUX,30)
    assign notcmp2393_mux_s = in_valid_in_0;
    always @(notcmp2393_mux_s or in_notcmp2393_1 or in_notcmp2393_0)
    begin
        unique case (notcmp2393_mux_s)
            1'b0 : notcmp2393_mux_q = in_notcmp2393_1;
            1'b1 : notcmp2393_mux_q = in_notcmp2393_0;
            default : notcmp2393_mux_q = 1'b0;
        endcase
    end

    // out_notcmp2393(GPOUT,38)
    assign out_notcmp2393 = notcmp2393_mux_q;

    // notcmp2740_pop18108_mux(MUX,31)
    assign notcmp2740_pop18108_mux_s = in_valid_in_0;
    always @(notcmp2740_pop18108_mux_s or in_notcmp2740_pop18108_1 or in_notcmp2740_pop18108_0)
    begin
        unique case (notcmp2740_pop18108_mux_s)
            1'b0 : notcmp2740_pop18108_mux_q = in_notcmp2740_pop18108_1;
            1'b1 : notcmp2740_pop18108_mux_q = in_notcmp2740_pop18108_0;
            default : notcmp2740_pop18108_mux_q = 1'b0;
        endcase
    end

    // out_notcmp2740_pop18108(GPOUT,39)
    assign out_notcmp2740_pop18108 = notcmp2740_pop18108_mux_q;

    // notcmp2782_mux(MUX,32)
    assign notcmp2782_mux_s = in_valid_in_0;
    always @(notcmp2782_mux_s or in_notcmp2782_1 or in_notcmp2782_0)
    begin
        unique case (notcmp2782_mux_s)
            1'b0 : notcmp2782_mux_q = in_notcmp2782_1;
            1'b1 : notcmp2782_mux_q = in_notcmp2782_0;
            default : notcmp2782_mux_q = 1'b0;
        endcase
    end

    // out_notcmp2782(GPOUT,40)
    assign out_notcmp2782 = notcmp2782_mux_q;

    // output_im_addr_042_replace_phi32_pop1698_mux(MUX,46)
    assign output_im_addr_042_replace_phi32_pop1698_mux_s = in_valid_in_0;
    always @(output_im_addr_042_replace_phi32_pop1698_mux_s or in_output_im_addr_042_replace_phi32_pop1698_1 or in_output_im_addr_042_replace_phi32_pop1698_0)
    begin
        unique case (output_im_addr_042_replace_phi32_pop1698_mux_s)
            1'b0 : output_im_addr_042_replace_phi32_pop1698_mux_q = in_output_im_addr_042_replace_phi32_pop1698_1;
            1'b1 : output_im_addr_042_replace_phi32_pop1698_mux_q = in_output_im_addr_042_replace_phi32_pop1698_0;
            default : output_im_addr_042_replace_phi32_pop1698_mux_q = 64'b0;
        endcase
    end

    // out_output_im_addr_042_replace_phi32_pop1698(GPOUT,41)
    assign out_output_im_addr_042_replace_phi32_pop1698 = output_im_addr_042_replace_phi32_pop1698_mux_q;

    // output_im_addr_042_replace_phi68_mux(MUX,47)
    assign output_im_addr_042_replace_phi68_mux_s = in_valid_in_0;
    always @(output_im_addr_042_replace_phi68_mux_s or in_output_im_addr_042_replace_phi68_1 or in_output_im_addr_042_replace_phi68_0)
    begin
        unique case (output_im_addr_042_replace_phi68_mux_s)
            1'b0 : output_im_addr_042_replace_phi68_mux_q = in_output_im_addr_042_replace_phi68_1;
            1'b1 : output_im_addr_042_replace_phi68_mux_q = in_output_im_addr_042_replace_phi68_0;
            default : output_im_addr_042_replace_phi68_mux_q = 64'b0;
        endcase
    end

    // out_output_im_addr_042_replace_phi68(GPOUT,42)
    assign out_output_im_addr_042_replace_phi68 = output_im_addr_042_replace_phi68_mux_q;

    // valid_or(LOGICAL,50)
    assign valid_or_q = in_valid_in_0 | in_valid_in_1;

    // stall_out(LOGICAL,48)
    assign stall_out_q = valid_or_q & in_stall_in;

    // out_stall_out_0(GPOUT,43)
    assign out_stall_out_0 = stall_out_q;

    // stall_out_1_specific(LOGICAL,49)
    assign stall_out_1_specific_q = in_valid_in_0 | stall_out_q;

    // out_stall_out_1(GPOUT,44)
    assign out_stall_out_1 = stall_out_1_specific_q;

    // out_valid_out(GPOUT,45)
    assign out_valid_out = valid_or_q;

endmodule
