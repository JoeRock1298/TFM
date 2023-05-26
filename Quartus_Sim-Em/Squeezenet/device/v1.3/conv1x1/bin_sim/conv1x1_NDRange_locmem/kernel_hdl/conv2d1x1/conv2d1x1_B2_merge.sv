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
// SystemVerilog created on Wed May 24 18:10:55 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2d1x1_B2_merge (
    input wire [63:0] in_acl_global_id_134_0,
    input wire [63:0] in_acl_global_id_134_1,
    input wire [63:0] in_c0_exe16_0,
    input wire [63:0] in_c0_exe16_1,
    input wire [63:0] in_c0_exe29_0,
    input wire [63:0] in_c0_exe29_1,
    input wire [31:0] in_c0_exe412_0,
    input wire [31:0] in_c0_exe412_1,
    input wire [63:0] in_c0_exe516_0,
    input wire [63:0] in_c0_exe516_1,
    input wire [0:0] in_c0_exe619_0,
    input wire [0:0] in_c0_exe619_1,
    input wire [0:0] in_c0_exe721_0,
    input wire [0:0] in_c0_exe721_1,
    input wire [0:0] in_c0_exe824_0,
    input wire [0:0] in_c0_exe824_1,
    input wire [0:0] in_c0_exe928_0,
    input wire [0:0] in_c0_exe928_1,
    input wire [31:0] in_j_070_0,
    input wire [31:0] in_j_070_1,
    input wire [31:0] in_l_grpid_02_0,
    input wire [31:0] in_l_grpid_02_1,
    input wire [0:0] in_stall_in,
    input wire [31:0] in_unnamed_conv2d1x13_0,
    input wire [31:0] in_unnamed_conv2d1x13_1,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [63:0] out_acl_global_id_134,
    output wire [63:0] out_c0_exe16,
    output wire [63:0] out_c0_exe29,
    output wire [31:0] out_c0_exe412,
    output wire [63:0] out_c0_exe516,
    output wire [0:0] out_c0_exe619,
    output wire [0:0] out_c0_exe721,
    output wire [0:0] out_c0_exe824,
    output wire [0:0] out_c0_exe928,
    output wire [31:0] out_j_070,
    output wire [31:0] out_l_grpid_02,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [31:0] out_unnamed_conv2d1x13,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    wire [0:0] acl_global_id_134_mux_s;
    reg [63:0] acl_global_id_134_mux_q;
    wire [0:0] c0_exe16_mux_s;
    reg [63:0] c0_exe16_mux_q;
    wire [0:0] c0_exe29_mux_s;
    reg [63:0] c0_exe29_mux_q;
    wire [0:0] c0_exe412_mux_s;
    reg [31:0] c0_exe412_mux_q;
    wire [0:0] c0_exe516_mux_s;
    reg [63:0] c0_exe516_mux_q;
    wire [0:0] c0_exe619_mux_s;
    reg [0:0] c0_exe619_mux_q;
    wire [0:0] c0_exe721_mux_s;
    reg [0:0] c0_exe721_mux_q;
    wire [0:0] c0_exe824_mux_s;
    reg [0:0] c0_exe824_mux_q;
    wire [0:0] c0_exe928_mux_s;
    reg [0:0] c0_exe928_mux_q;
    wire [0:0] j_070_mux_s;
    reg [31:0] j_070_mux_q;
    wire [0:0] l_grpid_02_mux_s;
    reg [31:0] l_grpid_02_mux_q;
    wire [0:0] stall_out_q;
    wire [0:0] stall_out_1_specific_q;
    wire [0:0] unnamed_conv2d1x13_mux_s;
    reg [31:0] unnamed_conv2d1x13_mux_q;
    wire [0:0] valid_or_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // acl_global_id_134_mux(MUX,2)
    assign acl_global_id_134_mux_s = in_valid_in_0;
    always @(acl_global_id_134_mux_s or in_acl_global_id_134_1 or in_acl_global_id_134_0)
    begin
        unique case (acl_global_id_134_mux_s)
            1'b0 : acl_global_id_134_mux_q = in_acl_global_id_134_1;
            1'b1 : acl_global_id_134_mux_q = in_acl_global_id_134_0;
            default : acl_global_id_134_mux_q = 64'b0;
        endcase
    end

    // out_acl_global_id_134(GPOUT,40)
    assign out_acl_global_id_134 = acl_global_id_134_mux_q;

    // c0_exe16_mux(MUX,3)
    assign c0_exe16_mux_s = in_valid_in_0;
    always @(c0_exe16_mux_s or in_c0_exe16_1 or in_c0_exe16_0)
    begin
        unique case (c0_exe16_mux_s)
            1'b0 : c0_exe16_mux_q = in_c0_exe16_1;
            1'b1 : c0_exe16_mux_q = in_c0_exe16_0;
            default : c0_exe16_mux_q = 64'b0;
        endcase
    end

    // out_c0_exe16(GPOUT,41)
    assign out_c0_exe16 = c0_exe16_mux_q;

    // c0_exe29_mux(MUX,4)
    assign c0_exe29_mux_s = in_valid_in_0;
    always @(c0_exe29_mux_s or in_c0_exe29_1 or in_c0_exe29_0)
    begin
        unique case (c0_exe29_mux_s)
            1'b0 : c0_exe29_mux_q = in_c0_exe29_1;
            1'b1 : c0_exe29_mux_q = in_c0_exe29_0;
            default : c0_exe29_mux_q = 64'b0;
        endcase
    end

    // out_c0_exe29(GPOUT,42)
    assign out_c0_exe29 = c0_exe29_mux_q;

    // c0_exe412_mux(MUX,5)
    assign c0_exe412_mux_s = in_valid_in_0;
    always @(c0_exe412_mux_s or in_c0_exe412_1 or in_c0_exe412_0)
    begin
        unique case (c0_exe412_mux_s)
            1'b0 : c0_exe412_mux_q = in_c0_exe412_1;
            1'b1 : c0_exe412_mux_q = in_c0_exe412_0;
            default : c0_exe412_mux_q = 32'b0;
        endcase
    end

    // out_c0_exe412(GPOUT,43)
    assign out_c0_exe412 = c0_exe412_mux_q;

    // c0_exe516_mux(MUX,6)
    assign c0_exe516_mux_s = in_valid_in_0;
    always @(c0_exe516_mux_s or in_c0_exe516_1 or in_c0_exe516_0)
    begin
        unique case (c0_exe516_mux_s)
            1'b0 : c0_exe516_mux_q = in_c0_exe516_1;
            1'b1 : c0_exe516_mux_q = in_c0_exe516_0;
            default : c0_exe516_mux_q = 64'b0;
        endcase
    end

    // out_c0_exe516(GPOUT,44)
    assign out_c0_exe516 = c0_exe516_mux_q;

    // c0_exe619_mux(MUX,7)
    assign c0_exe619_mux_s = in_valid_in_0;
    always @(c0_exe619_mux_s or in_c0_exe619_1 or in_c0_exe619_0)
    begin
        unique case (c0_exe619_mux_s)
            1'b0 : c0_exe619_mux_q = in_c0_exe619_1;
            1'b1 : c0_exe619_mux_q = in_c0_exe619_0;
            default : c0_exe619_mux_q = 1'b0;
        endcase
    end

    // out_c0_exe619(GPOUT,45)
    assign out_c0_exe619 = c0_exe619_mux_q;

    // c0_exe721_mux(MUX,8)
    assign c0_exe721_mux_s = in_valid_in_0;
    always @(c0_exe721_mux_s or in_c0_exe721_1 or in_c0_exe721_0)
    begin
        unique case (c0_exe721_mux_s)
            1'b0 : c0_exe721_mux_q = in_c0_exe721_1;
            1'b1 : c0_exe721_mux_q = in_c0_exe721_0;
            default : c0_exe721_mux_q = 1'b0;
        endcase
    end

    // out_c0_exe721(GPOUT,46)
    assign out_c0_exe721 = c0_exe721_mux_q;

    // c0_exe824_mux(MUX,9)
    assign c0_exe824_mux_s = in_valid_in_0;
    always @(c0_exe824_mux_s or in_c0_exe824_1 or in_c0_exe824_0)
    begin
        unique case (c0_exe824_mux_s)
            1'b0 : c0_exe824_mux_q = in_c0_exe824_1;
            1'b1 : c0_exe824_mux_q = in_c0_exe824_0;
            default : c0_exe824_mux_q = 1'b0;
        endcase
    end

    // out_c0_exe824(GPOUT,47)
    assign out_c0_exe824 = c0_exe824_mux_q;

    // c0_exe928_mux(MUX,10)
    assign c0_exe928_mux_s = in_valid_in_0;
    always @(c0_exe928_mux_s or in_c0_exe928_1 or in_c0_exe928_0)
    begin
        unique case (c0_exe928_mux_s)
            1'b0 : c0_exe928_mux_q = in_c0_exe928_1;
            1'b1 : c0_exe928_mux_q = in_c0_exe928_0;
            default : c0_exe928_mux_q = 1'b0;
        endcase
    end

    // out_c0_exe928(GPOUT,48)
    assign out_c0_exe928 = c0_exe928_mux_q;

    // j_070_mux(MUX,38)
    assign j_070_mux_s = in_valid_in_0;
    always @(j_070_mux_s or in_j_070_1 or in_j_070_0)
    begin
        unique case (j_070_mux_s)
            1'b0 : j_070_mux_q = in_j_070_1;
            1'b1 : j_070_mux_q = in_j_070_0;
            default : j_070_mux_q = 32'b0;
        endcase
    end

    // out_j_070(GPOUT,49)
    assign out_j_070 = j_070_mux_q;

    // l_grpid_02_mux(MUX,39)
    assign l_grpid_02_mux_s = in_valid_in_0;
    always @(l_grpid_02_mux_s or in_l_grpid_02_1 or in_l_grpid_02_0)
    begin
        unique case (l_grpid_02_mux_s)
            1'b0 : l_grpid_02_mux_q = in_l_grpid_02_1;
            1'b1 : l_grpid_02_mux_q = in_l_grpid_02_0;
            default : l_grpid_02_mux_q = 32'b0;
        endcase
    end

    // out_l_grpid_02(GPOUT,50)
    assign out_l_grpid_02 = l_grpid_02_mux_q;

    // valid_or(LOGICAL,58)
    assign valid_or_q = in_valid_in_0 | in_valid_in_1;

    // stall_out(LOGICAL,55)
    assign stall_out_q = valid_or_q & in_stall_in;

    // out_stall_out_0(GPOUT,51)
    assign out_stall_out_0 = stall_out_q;

    // stall_out_1_specific(LOGICAL,56)
    assign stall_out_1_specific_q = in_valid_in_0 | stall_out_q;

    // out_stall_out_1(GPOUT,52)
    assign out_stall_out_1 = stall_out_1_specific_q;

    // unnamed_conv2d1x13_mux(MUX,57)
    assign unnamed_conv2d1x13_mux_s = in_valid_in_0;
    always @(unnamed_conv2d1x13_mux_s or in_unnamed_conv2d1x13_1 or in_unnamed_conv2d1x13_0)
    begin
        unique case (unnamed_conv2d1x13_mux_s)
            1'b0 : unnamed_conv2d1x13_mux_q = in_unnamed_conv2d1x13_1;
            1'b1 : unnamed_conv2d1x13_mux_q = in_unnamed_conv2d1x13_0;
            default : unnamed_conv2d1x13_mux_q = 32'b0;
        endcase
    end

    // out_unnamed_conv2d1x13(GPOUT,53)
    assign out_unnamed_conv2d1x13 = unnamed_conv2d1x13_mux_q;

    // out_valid_out(GPOUT,54)
    assign out_valid_out = valid_or_q;

endmodule
