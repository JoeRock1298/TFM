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

// SystemVerilog created from mmul_B3_merge
// SystemVerilog created on Fri May  5 14:23:33 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module mmul_B3_merge (
    input wire [0:0] in_forked9_0,
    input wire [0:0] in_forked9_1,
    input wire [31:0] in_mul26_0,
    input wire [31:0] in_mul26_1,
    input wire [0:0] in_notcmp1629_0,
    input wire [0:0] in_notcmp1629_1,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [0:0] out_forked9,
    output wire [31:0] out_mul26,
    output wire [0:0] out_notcmp1629,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    wire [0:0] forked9_mux_s;
    reg [0:0] forked9_mux_q;
    wire [0:0] mul26_mux_s;
    reg [31:0] mul26_mux_q;
    wire [0:0] notcmp1629_mux_s;
    reg [0:0] notcmp1629_mux_q;
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

    // out_forked9(GPOUT,14)
    assign out_forked9 = forked9_mux_q;

    // mul26_mux(MUX,12)
    assign mul26_mux_s = in_valid_in_0;
    always @(mul26_mux_s or in_mul26_1 or in_mul26_0)
    begin
        unique case (mul26_mux_s)
            1'b0 : mul26_mux_q = in_mul26_1;
            1'b1 : mul26_mux_q = in_mul26_0;
            default : mul26_mux_q = 32'b0;
        endcase
    end

    // out_mul26(GPOUT,15)
    assign out_mul26 = mul26_mux_q;

    // notcmp1629_mux(MUX,13)
    assign notcmp1629_mux_s = in_valid_in_0;
    always @(notcmp1629_mux_s or in_notcmp1629_1 or in_notcmp1629_0)
    begin
        unique case (notcmp1629_mux_s)
            1'b0 : notcmp1629_mux_q = in_notcmp1629_1;
            1'b1 : notcmp1629_mux_q = in_notcmp1629_0;
            default : notcmp1629_mux_q = 1'b0;
        endcase
    end

    // out_notcmp1629(GPOUT,16)
    assign out_notcmp1629 = notcmp1629_mux_q;

    // valid_or(LOGICAL,22)
    assign valid_or_q = in_valid_in_0 | in_valid_in_1;

    // stall_out(LOGICAL,20)
    assign stall_out_q = valid_or_q & in_stall_in;

    // out_stall_out_0(GPOUT,17)
    assign out_stall_out_0 = stall_out_q;

    // stall_out_1_specific(LOGICAL,21)
    assign stall_out_1_specific_q = in_valid_in_0 | stall_out_q;

    // out_stall_out_1(GPOUT,18)
    assign out_stall_out_1 = stall_out_1_specific_q;

    // out_valid_out(GPOUT,19)
    assign out_valid_out = valid_or_q;

endmodule
