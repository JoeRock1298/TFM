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
// SystemVerilog created on Wed May  3 13:07:53 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module mmul_B3_merge (
    input wire [0:0] in_forked9_0,
    input wire [0:0] in_forked9_1,
    input wire [0:0] in_memdep_phi17_pop935_0,
    input wire [0:0] in_memdep_phi17_pop935_1,
    input wire [31:0] in_mul29_0,
    input wire [31:0] in_mul29_1,
    input wire [0:0] in_notcmp1632_0,
    input wire [0:0] in_notcmp1632_1,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_unnamed_mmul4_0,
    input wire [0:0] in_unnamed_mmul4_1,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [0:0] out_forked9,
    output wire [0:0] out_memdep_phi17_pop935,
    output wire [31:0] out_mul29,
    output wire [0:0] out_notcmp1632,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [0:0] out_unnamed_mmul4,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    wire [0:0] forked9_mux_s;
    reg [0:0] forked9_mux_q;
    wire [0:0] memdep_phi17_pop935_mux_s;
    reg [0:0] memdep_phi17_pop935_mux_q;
    wire [0:0] mul29_mux_s;
    reg [31:0] mul29_mux_q;
    wire [0:0] notcmp1632_mux_s;
    reg [0:0] notcmp1632_mux_q;
    wire [0:0] stall_out_q;
    wire [0:0] stall_out_1_specific_q;
    wire [0:0] unnamed_mmul4_mux_s;
    reg [0:0] unnamed_mmul4_mux_q;
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

    // out_forked9(GPOUT,19)
    assign out_forked9 = forked9_mux_q;

    // memdep_phi17_pop935_mux(MUX,16)
    assign memdep_phi17_pop935_mux_s = in_valid_in_0;
    always @(memdep_phi17_pop935_mux_s or in_memdep_phi17_pop935_1 or in_memdep_phi17_pop935_0)
    begin
        unique case (memdep_phi17_pop935_mux_s)
            1'b0 : memdep_phi17_pop935_mux_q = in_memdep_phi17_pop935_1;
            1'b1 : memdep_phi17_pop935_mux_q = in_memdep_phi17_pop935_0;
            default : memdep_phi17_pop935_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi17_pop935(GPOUT,20)
    assign out_memdep_phi17_pop935 = memdep_phi17_pop935_mux_q;

    // mul29_mux(MUX,17)
    assign mul29_mux_s = in_valid_in_0;
    always @(mul29_mux_s or in_mul29_1 or in_mul29_0)
    begin
        unique case (mul29_mux_s)
            1'b0 : mul29_mux_q = in_mul29_1;
            1'b1 : mul29_mux_q = in_mul29_0;
            default : mul29_mux_q = 32'b0;
        endcase
    end

    // out_mul29(GPOUT,21)
    assign out_mul29 = mul29_mux_q;

    // notcmp1632_mux(MUX,18)
    assign notcmp1632_mux_s = in_valid_in_0;
    always @(notcmp1632_mux_s or in_notcmp1632_1 or in_notcmp1632_0)
    begin
        unique case (notcmp1632_mux_s)
            1'b0 : notcmp1632_mux_q = in_notcmp1632_1;
            1'b1 : notcmp1632_mux_q = in_notcmp1632_0;
            default : notcmp1632_mux_q = 1'b0;
        endcase
    end

    // out_notcmp1632(GPOUT,22)
    assign out_notcmp1632 = notcmp1632_mux_q;

    // valid_or(LOGICAL,30)
    assign valid_or_q = in_valid_in_0 | in_valid_in_1;

    // stall_out(LOGICAL,27)
    assign stall_out_q = valid_or_q & in_stall_in;

    // out_stall_out_0(GPOUT,23)
    assign out_stall_out_0 = stall_out_q;

    // stall_out_1_specific(LOGICAL,28)
    assign stall_out_1_specific_q = in_valid_in_0 | stall_out_q;

    // out_stall_out_1(GPOUT,24)
    assign out_stall_out_1 = stall_out_1_specific_q;

    // unnamed_mmul4_mux(MUX,29)
    assign unnamed_mmul4_mux_s = in_valid_in_0;
    always @(unnamed_mmul4_mux_s or in_unnamed_mmul4_1 or in_unnamed_mmul4_0)
    begin
        unique case (unnamed_mmul4_mux_s)
            1'b0 : unnamed_mmul4_mux_q = in_unnamed_mmul4_1;
            1'b1 : unnamed_mmul4_mux_q = in_unnamed_mmul4_0;
            default : unnamed_mmul4_mux_q = 1'b0;
        endcase
    end

    // out_unnamed_mmul4(GPOUT,25)
    assign out_unnamed_mmul4 = unnamed_mmul4_mux_q;

    // out_valid_out(GPOUT,26)
    assign out_valid_out = valid_or_q;

endmodule
