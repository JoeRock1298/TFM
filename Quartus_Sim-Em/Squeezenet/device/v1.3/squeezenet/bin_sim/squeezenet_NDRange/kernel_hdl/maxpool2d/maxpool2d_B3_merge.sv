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

// SystemVerilog created from maxpool2d_B3_merge
// SystemVerilog created on Tue Jun  6 18:45:14 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module maxpool2d_B3_merge (
    input wire [63:0] in_c0_exe11_0,
    input wire [63:0] in_c0_exe11_1,
    input wire [31:0] in_c0_exe12819_0,
    input wire [31:0] in_c0_exe12819_1,
    input wire [63:0] in_c0_exe25_0,
    input wire [63:0] in_c0_exe25_1,
    input wire [0:0] in_c0_exe37_0,
    input wire [0:0] in_c0_exe37_1,
    input wire [0:0] in_c0_exe410_0,
    input wire [0:0] in_c0_exe410_1,
    input wire [31:0] in_i_03814_0,
    input wire [31:0] in_i_03814_1,
    input wire [31:0] in_j_03616_0,
    input wire [31:0] in_j_03616_1,
    input wire [31:0] in_k_034_0,
    input wire [31:0] in_k_034_1,
    input wire [31:0] in_l_032_0,
    input wire [31:0] in_l_032_1,
    input wire [31:0] in_mul2217_0,
    input wire [31:0] in_mul2217_1,
    input wire [31:0] in_mul2420_0,
    input wire [31:0] in_mul2420_1,
    input wire [0:0] in_stall_in,
    input wire [31:0] in_tmp_131_0,
    input wire [31:0] in_tmp_131_1,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [63:0] out_c0_exe11,
    output wire [31:0] out_c0_exe12819,
    output wire [63:0] out_c0_exe25,
    output wire [0:0] out_c0_exe37,
    output wire [0:0] out_c0_exe410,
    output wire [31:0] out_i_03814,
    output wire [31:0] out_j_03616,
    output wire [31:0] out_k_034,
    output wire [31:0] out_l_032,
    output wire [31:0] out_mul2217,
    output wire [31:0] out_mul2420,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [31:0] out_tmp_131,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    wire [0:0] c0_exe11_mux_s;
    reg [63:0] c0_exe11_mux_q;
    wire [0:0] c0_exe12819_mux_s;
    reg [31:0] c0_exe12819_mux_q;
    wire [0:0] c0_exe25_mux_s;
    reg [63:0] c0_exe25_mux_q;
    wire [0:0] c0_exe37_mux_s;
    reg [0:0] c0_exe37_mux_q;
    wire [0:0] c0_exe410_mux_s;
    reg [0:0] c0_exe410_mux_q;
    wire [0:0] i_03814_mux_s;
    reg [31:0] i_03814_mux_q;
    wire [0:0] j_03616_mux_s;
    reg [31:0] j_03616_mux_q;
    wire [0:0] k_034_mux_s;
    reg [31:0] k_034_mux_q;
    wire [0:0] l_032_mux_s;
    reg [31:0] l_032_mux_q;
    wire [0:0] mul2217_mux_s;
    reg [31:0] mul2217_mux_q;
    wire [0:0] mul2420_mux_s;
    reg [31:0] mul2420_mux_q;
    wire [0:0] stall_out_q;
    wire [0:0] stall_out_1_specific_q;
    wire [0:0] tmp_131_mux_s;
    reg [31:0] tmp_131_mux_q;
    wire [0:0] valid_or_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // c0_exe11_mux(MUX,2)
    assign c0_exe11_mux_s = in_valid_in_0;
    always @(c0_exe11_mux_s or in_c0_exe11_1 or in_c0_exe11_0)
    begin
        unique case (c0_exe11_mux_s)
            1'b0 : c0_exe11_mux_q = in_c0_exe11_1;
            1'b1 : c0_exe11_mux_q = in_c0_exe11_0;
            default : c0_exe11_mux_q = 64'b0;
        endcase
    end

    // out_c0_exe11(GPOUT,40)
    assign out_c0_exe11 = c0_exe11_mux_q;

    // c0_exe12819_mux(MUX,3)
    assign c0_exe12819_mux_s = in_valid_in_0;
    always @(c0_exe12819_mux_s or in_c0_exe12819_1 or in_c0_exe12819_0)
    begin
        unique case (c0_exe12819_mux_s)
            1'b0 : c0_exe12819_mux_q = in_c0_exe12819_1;
            1'b1 : c0_exe12819_mux_q = in_c0_exe12819_0;
            default : c0_exe12819_mux_q = 32'b0;
        endcase
    end

    // out_c0_exe12819(GPOUT,41)
    assign out_c0_exe12819 = c0_exe12819_mux_q;

    // c0_exe25_mux(MUX,4)
    assign c0_exe25_mux_s = in_valid_in_0;
    always @(c0_exe25_mux_s or in_c0_exe25_1 or in_c0_exe25_0)
    begin
        unique case (c0_exe25_mux_s)
            1'b0 : c0_exe25_mux_q = in_c0_exe25_1;
            1'b1 : c0_exe25_mux_q = in_c0_exe25_0;
            default : c0_exe25_mux_q = 64'b0;
        endcase
    end

    // out_c0_exe25(GPOUT,42)
    assign out_c0_exe25 = c0_exe25_mux_q;

    // c0_exe37_mux(MUX,5)
    assign c0_exe37_mux_s = in_valid_in_0;
    always @(c0_exe37_mux_s or in_c0_exe37_1 or in_c0_exe37_0)
    begin
        unique case (c0_exe37_mux_s)
            1'b0 : c0_exe37_mux_q = in_c0_exe37_1;
            1'b1 : c0_exe37_mux_q = in_c0_exe37_0;
            default : c0_exe37_mux_q = 1'b0;
        endcase
    end

    // out_c0_exe37(GPOUT,43)
    assign out_c0_exe37 = c0_exe37_mux_q;

    // c0_exe410_mux(MUX,6)
    assign c0_exe410_mux_s = in_valid_in_0;
    always @(c0_exe410_mux_s or in_c0_exe410_1 or in_c0_exe410_0)
    begin
        unique case (c0_exe410_mux_s)
            1'b0 : c0_exe410_mux_q = in_c0_exe410_1;
            1'b1 : c0_exe410_mux_q = in_c0_exe410_0;
            default : c0_exe410_mux_q = 1'b0;
        endcase
    end

    // out_c0_exe410(GPOUT,44)
    assign out_c0_exe410 = c0_exe410_mux_q;

    // i_03814_mux(MUX,7)
    assign i_03814_mux_s = in_valid_in_0;
    always @(i_03814_mux_s or in_i_03814_1 or in_i_03814_0)
    begin
        unique case (i_03814_mux_s)
            1'b0 : i_03814_mux_q = in_i_03814_1;
            1'b1 : i_03814_mux_q = in_i_03814_0;
            default : i_03814_mux_q = 32'b0;
        endcase
    end

    // out_i_03814(GPOUT,45)
    assign out_i_03814 = i_03814_mux_q;

    // j_03616_mux(MUX,35)
    assign j_03616_mux_s = in_valid_in_0;
    always @(j_03616_mux_s or in_j_03616_1 or in_j_03616_0)
    begin
        unique case (j_03616_mux_s)
            1'b0 : j_03616_mux_q = in_j_03616_1;
            1'b1 : j_03616_mux_q = in_j_03616_0;
            default : j_03616_mux_q = 32'b0;
        endcase
    end

    // out_j_03616(GPOUT,46)
    assign out_j_03616 = j_03616_mux_q;

    // k_034_mux(MUX,36)
    assign k_034_mux_s = in_valid_in_0;
    always @(k_034_mux_s or in_k_034_1 or in_k_034_0)
    begin
        unique case (k_034_mux_s)
            1'b0 : k_034_mux_q = in_k_034_1;
            1'b1 : k_034_mux_q = in_k_034_0;
            default : k_034_mux_q = 32'b0;
        endcase
    end

    // out_k_034(GPOUT,47)
    assign out_k_034 = k_034_mux_q;

    // l_032_mux(MUX,37)
    assign l_032_mux_s = in_valid_in_0;
    always @(l_032_mux_s or in_l_032_1 or in_l_032_0)
    begin
        unique case (l_032_mux_s)
            1'b0 : l_032_mux_q = in_l_032_1;
            1'b1 : l_032_mux_q = in_l_032_0;
            default : l_032_mux_q = 32'b0;
        endcase
    end

    // out_l_032(GPOUT,48)
    assign out_l_032 = l_032_mux_q;

    // mul2217_mux(MUX,38)
    assign mul2217_mux_s = in_valid_in_0;
    always @(mul2217_mux_s or in_mul2217_1 or in_mul2217_0)
    begin
        unique case (mul2217_mux_s)
            1'b0 : mul2217_mux_q = in_mul2217_1;
            1'b1 : mul2217_mux_q = in_mul2217_0;
            default : mul2217_mux_q = 32'b0;
        endcase
    end

    // out_mul2217(GPOUT,49)
    assign out_mul2217 = mul2217_mux_q;

    // mul2420_mux(MUX,39)
    assign mul2420_mux_s = in_valid_in_0;
    always @(mul2420_mux_s or in_mul2420_1 or in_mul2420_0)
    begin
        unique case (mul2420_mux_s)
            1'b0 : mul2420_mux_q = in_mul2420_1;
            1'b1 : mul2420_mux_q = in_mul2420_0;
            default : mul2420_mux_q = 32'b0;
        endcase
    end

    // out_mul2420(GPOUT,50)
    assign out_mul2420 = mul2420_mux_q;

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

    // tmp_131_mux(MUX,57)
    assign tmp_131_mux_s = in_valid_in_0;
    always @(tmp_131_mux_s or in_tmp_131_1 or in_tmp_131_0)
    begin
        unique case (tmp_131_mux_s)
            1'b0 : tmp_131_mux_q = in_tmp_131_1;
            1'b1 : tmp_131_mux_q = in_tmp_131_0;
            default : tmp_131_mux_q = 32'b0;
        endcase
    end

    // out_tmp_131(GPOUT,53)
    assign out_tmp_131 = tmp_131_mux_q;

    // out_valid_out(GPOUT,54)
    assign out_valid_out = valid_or_q;

endmodule
