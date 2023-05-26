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
// SystemVerilog created on Wed May 24 18:10:55 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2d1x1_B3_merge (
    input wire [63:0] in_acl_global_id_136_0,
    input wire [63:0] in_acl_global_id_136_1,
    input wire [31:0] in_c0_exe14932_0,
    input wire [31:0] in_c0_exe14932_1,
    input wire [63:0] in_c0_exe15_0,
    input wire [63:0] in_c0_exe15_1,
    input wire [63:0] in_c0_exe28_0,
    input wire [63:0] in_c0_exe28_1,
    input wire [31:0] in_c0_exe411_0,
    input wire [31:0] in_c0_exe411_1,
    input wire [63:0] in_c0_exe515_0,
    input wire [63:0] in_c0_exe515_1,
    input wire [0:0] in_c0_exe618_0,
    input wire [0:0] in_c0_exe618_1,
    input wire [0:0] in_c0_exe720_0,
    input wire [0:0] in_c0_exe720_1,
    input wire [0:0] in_c0_exe823_0,
    input wire [0:0] in_c0_exe823_1,
    input wire [0:0] in_c0_exe927_0,
    input wire [0:0] in_c0_exe927_1,
    input wire [31:0] in_j_07030_0,
    input wire [31:0] in_j_07030_1,
    input wire [31:0] in_k49_068_0,
    input wire [31:0] in_k49_068_1,
    input wire [31:0] in_k_065_0,
    input wire [31:0] in_k_065_1,
    input wire [31:0] in_l_grpid_01_0,
    input wire [31:0] in_l_grpid_01_1,
    input wire [0:0] in_stall_in,
    input wire [31:0] in_tmp_067_0,
    input wire [31:0] in_tmp_067_1,
    input wire [31:0] in_unnamed_conv2d1x14_0,
    input wire [31:0] in_unnamed_conv2d1x14_1,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [63:0] out_acl_global_id_136,
    output wire [31:0] out_c0_exe14932,
    output wire [63:0] out_c0_exe15,
    output wire [63:0] out_c0_exe28,
    output wire [31:0] out_c0_exe411,
    output wire [63:0] out_c0_exe515,
    output wire [0:0] out_c0_exe618,
    output wire [0:0] out_c0_exe720,
    output wire [0:0] out_c0_exe823,
    output wire [0:0] out_c0_exe927,
    output wire [31:0] out_j_07030,
    output wire [31:0] out_k49_068,
    output wire [31:0] out_k_065,
    output wire [31:0] out_l_grpid_01,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [31:0] out_tmp_067,
    output wire [31:0] out_unnamed_conv2d1x14,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    wire [0:0] acl_global_id_136_mux_s;
    reg [63:0] acl_global_id_136_mux_q;
    wire [0:0] c0_exe14932_mux_s;
    reg [31:0] c0_exe14932_mux_q;
    wire [0:0] c0_exe15_mux_s;
    reg [63:0] c0_exe15_mux_q;
    wire [0:0] c0_exe28_mux_s;
    reg [63:0] c0_exe28_mux_q;
    wire [0:0] c0_exe411_mux_s;
    reg [31:0] c0_exe411_mux_q;
    wire [0:0] c0_exe515_mux_s;
    reg [63:0] c0_exe515_mux_q;
    wire [0:0] c0_exe618_mux_s;
    reg [0:0] c0_exe618_mux_q;
    wire [0:0] c0_exe720_mux_s;
    reg [0:0] c0_exe720_mux_q;
    wire [0:0] c0_exe823_mux_s;
    reg [0:0] c0_exe823_mux_q;
    wire [0:0] c0_exe927_mux_s;
    reg [0:0] c0_exe927_mux_q;
    wire [0:0] j_07030_mux_s;
    reg [31:0] j_07030_mux_q;
    wire [0:0] k49_068_mux_s;
    reg [31:0] k49_068_mux_q;
    wire [0:0] k_065_mux_s;
    reg [31:0] k_065_mux_q;
    wire [0:0] l_grpid_01_mux_s;
    reg [31:0] l_grpid_01_mux_q;
    wire [0:0] stall_out_q;
    wire [0:0] stall_out_1_specific_q;
    wire [0:0] tmp_067_mux_s;
    reg [31:0] tmp_067_mux_q;
    wire [0:0] unnamed_conv2d1x14_mux_s;
    reg [31:0] unnamed_conv2d1x14_mux_q;
    wire [0:0] valid_or_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // acl_global_id_136_mux(MUX,2)
    assign acl_global_id_136_mux_s = in_valid_in_0;
    always @(acl_global_id_136_mux_s or in_acl_global_id_136_1 or in_acl_global_id_136_0)
    begin
        unique case (acl_global_id_136_mux_s)
            1'b0 : acl_global_id_136_mux_q = in_acl_global_id_136_1;
            1'b1 : acl_global_id_136_mux_q = in_acl_global_id_136_0;
            default : acl_global_id_136_mux_q = 64'b0;
        endcase
    end

    // out_acl_global_id_136(GPOUT,51)
    assign out_acl_global_id_136 = acl_global_id_136_mux_q;

    // c0_exe14932_mux(MUX,3)
    assign c0_exe14932_mux_s = in_valid_in_0;
    always @(c0_exe14932_mux_s or in_c0_exe14932_1 or in_c0_exe14932_0)
    begin
        unique case (c0_exe14932_mux_s)
            1'b0 : c0_exe14932_mux_q = in_c0_exe14932_1;
            1'b1 : c0_exe14932_mux_q = in_c0_exe14932_0;
            default : c0_exe14932_mux_q = 32'b0;
        endcase
    end

    // out_c0_exe14932(GPOUT,52)
    assign out_c0_exe14932 = c0_exe14932_mux_q;

    // c0_exe15_mux(MUX,4)
    assign c0_exe15_mux_s = in_valid_in_0;
    always @(c0_exe15_mux_s or in_c0_exe15_1 or in_c0_exe15_0)
    begin
        unique case (c0_exe15_mux_s)
            1'b0 : c0_exe15_mux_q = in_c0_exe15_1;
            1'b1 : c0_exe15_mux_q = in_c0_exe15_0;
            default : c0_exe15_mux_q = 64'b0;
        endcase
    end

    // out_c0_exe15(GPOUT,53)
    assign out_c0_exe15 = c0_exe15_mux_q;

    // c0_exe28_mux(MUX,5)
    assign c0_exe28_mux_s = in_valid_in_0;
    always @(c0_exe28_mux_s or in_c0_exe28_1 or in_c0_exe28_0)
    begin
        unique case (c0_exe28_mux_s)
            1'b0 : c0_exe28_mux_q = in_c0_exe28_1;
            1'b1 : c0_exe28_mux_q = in_c0_exe28_0;
            default : c0_exe28_mux_q = 64'b0;
        endcase
    end

    // out_c0_exe28(GPOUT,54)
    assign out_c0_exe28 = c0_exe28_mux_q;

    // c0_exe411_mux(MUX,6)
    assign c0_exe411_mux_s = in_valid_in_0;
    always @(c0_exe411_mux_s or in_c0_exe411_1 or in_c0_exe411_0)
    begin
        unique case (c0_exe411_mux_s)
            1'b0 : c0_exe411_mux_q = in_c0_exe411_1;
            1'b1 : c0_exe411_mux_q = in_c0_exe411_0;
            default : c0_exe411_mux_q = 32'b0;
        endcase
    end

    // out_c0_exe411(GPOUT,55)
    assign out_c0_exe411 = c0_exe411_mux_q;

    // c0_exe515_mux(MUX,7)
    assign c0_exe515_mux_s = in_valid_in_0;
    always @(c0_exe515_mux_s or in_c0_exe515_1 or in_c0_exe515_0)
    begin
        unique case (c0_exe515_mux_s)
            1'b0 : c0_exe515_mux_q = in_c0_exe515_1;
            1'b1 : c0_exe515_mux_q = in_c0_exe515_0;
            default : c0_exe515_mux_q = 64'b0;
        endcase
    end

    // out_c0_exe515(GPOUT,56)
    assign out_c0_exe515 = c0_exe515_mux_q;

    // c0_exe618_mux(MUX,8)
    assign c0_exe618_mux_s = in_valid_in_0;
    always @(c0_exe618_mux_s or in_c0_exe618_1 or in_c0_exe618_0)
    begin
        unique case (c0_exe618_mux_s)
            1'b0 : c0_exe618_mux_q = in_c0_exe618_1;
            1'b1 : c0_exe618_mux_q = in_c0_exe618_0;
            default : c0_exe618_mux_q = 1'b0;
        endcase
    end

    // out_c0_exe618(GPOUT,57)
    assign out_c0_exe618 = c0_exe618_mux_q;

    // c0_exe720_mux(MUX,9)
    assign c0_exe720_mux_s = in_valid_in_0;
    always @(c0_exe720_mux_s or in_c0_exe720_1 or in_c0_exe720_0)
    begin
        unique case (c0_exe720_mux_s)
            1'b0 : c0_exe720_mux_q = in_c0_exe720_1;
            1'b1 : c0_exe720_mux_q = in_c0_exe720_0;
            default : c0_exe720_mux_q = 1'b0;
        endcase
    end

    // out_c0_exe720(GPOUT,58)
    assign out_c0_exe720 = c0_exe720_mux_q;

    // c0_exe823_mux(MUX,10)
    assign c0_exe823_mux_s = in_valid_in_0;
    always @(c0_exe823_mux_s or in_c0_exe823_1 or in_c0_exe823_0)
    begin
        unique case (c0_exe823_mux_s)
            1'b0 : c0_exe823_mux_q = in_c0_exe823_1;
            1'b1 : c0_exe823_mux_q = in_c0_exe823_0;
            default : c0_exe823_mux_q = 1'b0;
        endcase
    end

    // out_c0_exe823(GPOUT,59)
    assign out_c0_exe823 = c0_exe823_mux_q;

    // c0_exe927_mux(MUX,11)
    assign c0_exe927_mux_s = in_valid_in_0;
    always @(c0_exe927_mux_s or in_c0_exe927_1 or in_c0_exe927_0)
    begin
        unique case (c0_exe927_mux_s)
            1'b0 : c0_exe927_mux_q = in_c0_exe927_1;
            1'b1 : c0_exe927_mux_q = in_c0_exe927_0;
            default : c0_exe927_mux_q = 1'b0;
        endcase
    end

    // out_c0_exe927(GPOUT,60)
    assign out_c0_exe927 = c0_exe927_mux_q;

    // j_07030_mux(MUX,47)
    assign j_07030_mux_s = in_valid_in_0;
    always @(j_07030_mux_s or in_j_07030_1 or in_j_07030_0)
    begin
        unique case (j_07030_mux_s)
            1'b0 : j_07030_mux_q = in_j_07030_1;
            1'b1 : j_07030_mux_q = in_j_07030_0;
            default : j_07030_mux_q = 32'b0;
        endcase
    end

    // out_j_07030(GPOUT,61)
    assign out_j_07030 = j_07030_mux_q;

    // k49_068_mux(MUX,48)
    assign k49_068_mux_s = in_valid_in_0;
    always @(k49_068_mux_s or in_k49_068_1 or in_k49_068_0)
    begin
        unique case (k49_068_mux_s)
            1'b0 : k49_068_mux_q = in_k49_068_1;
            1'b1 : k49_068_mux_q = in_k49_068_0;
            default : k49_068_mux_q = 32'b0;
        endcase
    end

    // out_k49_068(GPOUT,62)
    assign out_k49_068 = k49_068_mux_q;

    // k_065_mux(MUX,49)
    assign k_065_mux_s = in_valid_in_0;
    always @(k_065_mux_s or in_k_065_1 or in_k_065_0)
    begin
        unique case (k_065_mux_s)
            1'b0 : k_065_mux_q = in_k_065_1;
            1'b1 : k_065_mux_q = in_k_065_0;
            default : k_065_mux_q = 32'b0;
        endcase
    end

    // out_k_065(GPOUT,63)
    assign out_k_065 = k_065_mux_q;

    // l_grpid_01_mux(MUX,50)
    assign l_grpid_01_mux_s = in_valid_in_0;
    always @(l_grpid_01_mux_s or in_l_grpid_01_1 or in_l_grpid_01_0)
    begin
        unique case (l_grpid_01_mux_s)
            1'b0 : l_grpid_01_mux_q = in_l_grpid_01_1;
            1'b1 : l_grpid_01_mux_q = in_l_grpid_01_0;
            default : l_grpid_01_mux_q = 32'b0;
        endcase
    end

    // out_l_grpid_01(GPOUT,64)
    assign out_l_grpid_01 = l_grpid_01_mux_q;

    // valid_or(LOGICAL,74)
    assign valid_or_q = in_valid_in_0 | in_valid_in_1;

    // stall_out(LOGICAL,70)
    assign stall_out_q = valid_or_q & in_stall_in;

    // out_stall_out_0(GPOUT,65)
    assign out_stall_out_0 = stall_out_q;

    // stall_out_1_specific(LOGICAL,71)
    assign stall_out_1_specific_q = in_valid_in_0 | stall_out_q;

    // out_stall_out_1(GPOUT,66)
    assign out_stall_out_1 = stall_out_1_specific_q;

    // tmp_067_mux(MUX,72)
    assign tmp_067_mux_s = in_valid_in_0;
    always @(tmp_067_mux_s or in_tmp_067_1 or in_tmp_067_0)
    begin
        unique case (tmp_067_mux_s)
            1'b0 : tmp_067_mux_q = in_tmp_067_1;
            1'b1 : tmp_067_mux_q = in_tmp_067_0;
            default : tmp_067_mux_q = 32'b0;
        endcase
    end

    // out_tmp_067(GPOUT,67)
    assign out_tmp_067 = tmp_067_mux_q;

    // unnamed_conv2d1x14_mux(MUX,73)
    assign unnamed_conv2d1x14_mux_s = in_valid_in_0;
    always @(unnamed_conv2d1x14_mux_s or in_unnamed_conv2d1x14_1 or in_unnamed_conv2d1x14_0)
    begin
        unique case (unnamed_conv2d1x14_mux_s)
            1'b0 : unnamed_conv2d1x14_mux_q = in_unnamed_conv2d1x14_1;
            1'b1 : unnamed_conv2d1x14_mux_q = in_unnamed_conv2d1x14_0;
            default : unnamed_conv2d1x14_mux_q = 32'b0;
        endcase
    end

    // out_unnamed_conv2d1x14(GPOUT,68)
    assign out_unnamed_conv2d1x14 = unnamed_conv2d1x14_mux_q;

    // out_valid_out(GPOUT,69)
    assign out_valid_out = valid_or_q;

endmodule
