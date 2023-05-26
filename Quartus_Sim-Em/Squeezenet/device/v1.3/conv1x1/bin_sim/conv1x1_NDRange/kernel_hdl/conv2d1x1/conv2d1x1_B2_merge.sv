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

// SystemVerilog created from conv2d1x1_B2_merge
// SystemVerilog created on Wed May 17 11:22:46 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2d1x1_B2_merge (
    input wire [63:0] in_acl_global_id_130_0,
    input wire [63:0] in_acl_global_id_130_1,
    input wire [63:0] in_c0_exe12_0,
    input wire [63:0] in_c0_exe12_1,
    input wire [31:0] in_c0_exe35_0,
    input wire [31:0] in_c0_exe35_1,
    input wire [63:0] in_c0_exe49_0,
    input wire [63:0] in_c0_exe49_1,
    input wire [0:0] in_c0_exe512_0,
    input wire [0:0] in_c0_exe512_1,
    input wire [0:0] in_c0_exe614_0,
    input wire [0:0] in_c0_exe614_1,
    input wire [0:0] in_c0_exe717_0,
    input wire [0:0] in_c0_exe717_1,
    input wire [0:0] in_c0_exe821_0,
    input wire [0:0] in_c0_exe821_1,
    input wire [0:0] in_c0_exe923_0,
    input wire [0:0] in_c0_exe923_1,
    input wire [31:0] in_j_059_0,
    input wire [31:0] in_j_059_1,
    input wire [0:0] in_stall_in,
    input wire [31:0] in_unnamed_conv2d1x12_0,
    input wire [31:0] in_unnamed_conv2d1x12_1,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [63:0] out_acl_global_id_130,
    output wire [63:0] out_c0_exe12,
    output wire [31:0] out_c0_exe35,
    output wire [63:0] out_c0_exe49,
    output wire [0:0] out_c0_exe512,
    output wire [0:0] out_c0_exe614,
    output wire [0:0] out_c0_exe717,
    output wire [0:0] out_c0_exe821,
    output wire [0:0] out_c0_exe923,
    output wire [31:0] out_j_059,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [31:0] out_unnamed_conv2d1x12,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    wire [0:0] acl_global_id_130_mux_s;
    reg [63:0] acl_global_id_130_mux_q;
    wire [0:0] c0_exe12_mux_s;
    reg [63:0] c0_exe12_mux_q;
    wire [0:0] c0_exe35_mux_s;
    reg [31:0] c0_exe35_mux_q;
    wire [0:0] c0_exe49_mux_s;
    reg [63:0] c0_exe49_mux_q;
    wire [0:0] c0_exe512_mux_s;
    reg [0:0] c0_exe512_mux_q;
    wire [0:0] c0_exe614_mux_s;
    reg [0:0] c0_exe614_mux_q;
    wire [0:0] c0_exe717_mux_s;
    reg [0:0] c0_exe717_mux_q;
    wire [0:0] c0_exe821_mux_s;
    reg [0:0] c0_exe821_mux_q;
    wire [0:0] c0_exe923_mux_s;
    reg [0:0] c0_exe923_mux_q;
    wire [0:0] j_059_mux_s;
    reg [31:0] j_059_mux_q;
    wire [0:0] stall_out_q;
    wire [0:0] stall_out_1_specific_q;
    wire [0:0] unnamed_conv2d1x12_mux_s;
    reg [31:0] unnamed_conv2d1x12_mux_q;
    wire [0:0] valid_or_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // acl_global_id_130_mux(MUX,2)
    assign acl_global_id_130_mux_s = in_valid_in_0;
    always @(acl_global_id_130_mux_s or in_acl_global_id_130_1 or in_acl_global_id_130_0)
    begin
        unique case (acl_global_id_130_mux_s)
            1'b0 : acl_global_id_130_mux_q = in_acl_global_id_130_1;
            1'b1 : acl_global_id_130_mux_q = in_acl_global_id_130_0;
            default : acl_global_id_130_mux_q = 64'b0;
        endcase
    end

    // out_acl_global_id_130(GPOUT,37)
    assign out_acl_global_id_130 = acl_global_id_130_mux_q;

    // c0_exe12_mux(MUX,3)
    assign c0_exe12_mux_s = in_valid_in_0;
    always @(c0_exe12_mux_s or in_c0_exe12_1 or in_c0_exe12_0)
    begin
        unique case (c0_exe12_mux_s)
            1'b0 : c0_exe12_mux_q = in_c0_exe12_1;
            1'b1 : c0_exe12_mux_q = in_c0_exe12_0;
            default : c0_exe12_mux_q = 64'b0;
        endcase
    end

    // out_c0_exe12(GPOUT,38)
    assign out_c0_exe12 = c0_exe12_mux_q;

    // c0_exe35_mux(MUX,4)
    assign c0_exe35_mux_s = in_valid_in_0;
    always @(c0_exe35_mux_s or in_c0_exe35_1 or in_c0_exe35_0)
    begin
        unique case (c0_exe35_mux_s)
            1'b0 : c0_exe35_mux_q = in_c0_exe35_1;
            1'b1 : c0_exe35_mux_q = in_c0_exe35_0;
            default : c0_exe35_mux_q = 32'b0;
        endcase
    end

    // out_c0_exe35(GPOUT,39)
    assign out_c0_exe35 = c0_exe35_mux_q;

    // c0_exe49_mux(MUX,5)
    assign c0_exe49_mux_s = in_valid_in_0;
    always @(c0_exe49_mux_s or in_c0_exe49_1 or in_c0_exe49_0)
    begin
        unique case (c0_exe49_mux_s)
            1'b0 : c0_exe49_mux_q = in_c0_exe49_1;
            1'b1 : c0_exe49_mux_q = in_c0_exe49_0;
            default : c0_exe49_mux_q = 64'b0;
        endcase
    end

    // out_c0_exe49(GPOUT,40)
    assign out_c0_exe49 = c0_exe49_mux_q;

    // c0_exe512_mux(MUX,6)
    assign c0_exe512_mux_s = in_valid_in_0;
    always @(c0_exe512_mux_s or in_c0_exe512_1 or in_c0_exe512_0)
    begin
        unique case (c0_exe512_mux_s)
            1'b0 : c0_exe512_mux_q = in_c0_exe512_1;
            1'b1 : c0_exe512_mux_q = in_c0_exe512_0;
            default : c0_exe512_mux_q = 1'b0;
        endcase
    end

    // out_c0_exe512(GPOUT,41)
    assign out_c0_exe512 = c0_exe512_mux_q;

    // c0_exe614_mux(MUX,7)
    assign c0_exe614_mux_s = in_valid_in_0;
    always @(c0_exe614_mux_s or in_c0_exe614_1 or in_c0_exe614_0)
    begin
        unique case (c0_exe614_mux_s)
            1'b0 : c0_exe614_mux_q = in_c0_exe614_1;
            1'b1 : c0_exe614_mux_q = in_c0_exe614_0;
            default : c0_exe614_mux_q = 1'b0;
        endcase
    end

    // out_c0_exe614(GPOUT,42)
    assign out_c0_exe614 = c0_exe614_mux_q;

    // c0_exe717_mux(MUX,8)
    assign c0_exe717_mux_s = in_valid_in_0;
    always @(c0_exe717_mux_s or in_c0_exe717_1 or in_c0_exe717_0)
    begin
        unique case (c0_exe717_mux_s)
            1'b0 : c0_exe717_mux_q = in_c0_exe717_1;
            1'b1 : c0_exe717_mux_q = in_c0_exe717_0;
            default : c0_exe717_mux_q = 1'b0;
        endcase
    end

    // out_c0_exe717(GPOUT,43)
    assign out_c0_exe717 = c0_exe717_mux_q;

    // c0_exe821_mux(MUX,9)
    assign c0_exe821_mux_s = in_valid_in_0;
    always @(c0_exe821_mux_s or in_c0_exe821_1 or in_c0_exe821_0)
    begin
        unique case (c0_exe821_mux_s)
            1'b0 : c0_exe821_mux_q = in_c0_exe821_1;
            1'b1 : c0_exe821_mux_q = in_c0_exe821_0;
            default : c0_exe821_mux_q = 1'b0;
        endcase
    end

    // out_c0_exe821(GPOUT,44)
    assign out_c0_exe821 = c0_exe821_mux_q;

    // c0_exe923_mux(MUX,10)
    assign c0_exe923_mux_s = in_valid_in_0;
    always @(c0_exe923_mux_s or in_c0_exe923_1 or in_c0_exe923_0)
    begin
        unique case (c0_exe923_mux_s)
            1'b0 : c0_exe923_mux_q = in_c0_exe923_1;
            1'b1 : c0_exe923_mux_q = in_c0_exe923_0;
            default : c0_exe923_mux_q = 1'b0;
        endcase
    end

    // out_c0_exe923(GPOUT,45)
    assign out_c0_exe923 = c0_exe923_mux_q;

    // j_059_mux(MUX,36)
    assign j_059_mux_s = in_valid_in_0;
    always @(j_059_mux_s or in_j_059_1 or in_j_059_0)
    begin
        unique case (j_059_mux_s)
            1'b0 : j_059_mux_q = in_j_059_1;
            1'b1 : j_059_mux_q = in_j_059_0;
            default : j_059_mux_q = 32'b0;
        endcase
    end

    // out_j_059(GPOUT,46)
    assign out_j_059 = j_059_mux_q;

    // valid_or(LOGICAL,54)
    assign valid_or_q = in_valid_in_0 | in_valid_in_1;

    // stall_out(LOGICAL,51)
    assign stall_out_q = valid_or_q & in_stall_in;

    // out_stall_out_0(GPOUT,47)
    assign out_stall_out_0 = stall_out_q;

    // stall_out_1_specific(LOGICAL,52)
    assign stall_out_1_specific_q = in_valid_in_0 | stall_out_q;

    // out_stall_out_1(GPOUT,48)
    assign out_stall_out_1 = stall_out_1_specific_q;

    // unnamed_conv2d1x12_mux(MUX,53)
    assign unnamed_conv2d1x12_mux_s = in_valid_in_0;
    always @(unnamed_conv2d1x12_mux_s or in_unnamed_conv2d1x12_1 or in_unnamed_conv2d1x12_0)
    begin
        unique case (unnamed_conv2d1x12_mux_s)
            1'b0 : unnamed_conv2d1x12_mux_q = in_unnamed_conv2d1x12_1;
            1'b1 : unnamed_conv2d1x12_mux_q = in_unnamed_conv2d1x12_0;
            default : unnamed_conv2d1x12_mux_q = 32'b0;
        endcase
    end

    // out_unnamed_conv2d1x12(GPOUT,49)
    assign out_unnamed_conv2d1x12 = unnamed_conv2d1x12_mux_q;

    // out_valid_out(GPOUT,50)
    assign out_valid_out = valid_or_q;

endmodule
