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

// SystemVerilog created from mmul_B6_merge
// SystemVerilog created on Wed May  3 13:07:53 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module mmul_B6_merge (
    input wire [0:0] in_forked10_0,
    input wire [0:0] in_forked10_1,
    input wire [31:0] in_j_025_pop1139_0,
    input wire [31:0] in_j_025_pop1139_1,
    input wire [0:0] in_memdep_phi17_pop924_pop1644_0,
    input wire [0:0] in_memdep_phi17_pop924_pop1644_1,
    input wire [0:0] in_memdep_phi17_pop937_0,
    input wire [0:0] in_memdep_phi17_pop937_1,
    input wire [0:0] in_memdep_phi_pop1240_0,
    input wire [0:0] in_memdep_phi_pop1240_1,
    input wire [31:0] in_mul20_pop1341_0,
    input wire [31:0] in_mul20_pop1341_1,
    input wire [31:0] in_mul31_0,
    input wire [31:0] in_mul31_1,
    input wire [0:0] in_notcmp1238_0,
    input wire [0:0] in_notcmp1238_1,
    input wire [0:0] in_notcmp1622_pop1543_0,
    input wire [0:0] in_notcmp1622_pop1543_1,
    input wire [0:0] in_notcmp1634_0,
    input wire [0:0] in_notcmp1634_1,
    input wire [0:0] in_pop1442_0,
    input wire [0:0] in_pop1442_1,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_unnamed_mmul6_0,
    input wire [0:0] in_unnamed_mmul6_1,
    input wire [0:0] in_unnamed_mmul7_0,
    input wire [0:0] in_unnamed_mmul7_1,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [0:0] out_forked10,
    output wire [31:0] out_j_025_pop1139,
    output wire [0:0] out_memdep_phi17_pop924_pop1644,
    output wire [0:0] out_memdep_phi17_pop937,
    output wire [0:0] out_memdep_phi_pop1240,
    output wire [31:0] out_mul20_pop1341,
    output wire [31:0] out_mul31,
    output wire [0:0] out_notcmp1238,
    output wire [0:0] out_notcmp1622_pop1543,
    output wire [0:0] out_notcmp1634,
    output wire [0:0] out_pop1442,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [0:0] out_unnamed_mmul6,
    output wire [0:0] out_unnamed_mmul7,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    wire [0:0] forked10_mux_s;
    reg [0:0] forked10_mux_q;
    wire [0:0] j_025_pop1139_mux_s;
    reg [31:0] j_025_pop1139_mux_q;
    wire [0:0] memdep_phi17_pop924_pop1644_mux_s;
    reg [0:0] memdep_phi17_pop924_pop1644_mux_q;
    wire [0:0] memdep_phi17_pop937_mux_s;
    reg [0:0] memdep_phi17_pop937_mux_q;
    wire [0:0] memdep_phi_pop1240_mux_s;
    reg [0:0] memdep_phi_pop1240_mux_q;
    wire [0:0] mul20_pop1341_mux_s;
    reg [31:0] mul20_pop1341_mux_q;
    wire [0:0] mul31_mux_s;
    reg [31:0] mul31_mux_q;
    wire [0:0] notcmp1238_mux_s;
    reg [0:0] notcmp1238_mux_q;
    wire [0:0] notcmp1622_pop1543_mux_s;
    reg [0:0] notcmp1622_pop1543_mux_q;
    wire [0:0] notcmp1634_mux_s;
    reg [0:0] notcmp1634_mux_q;
    wire [0:0] pop1442_mux_s;
    reg [0:0] pop1442_mux_q;
    wire [0:0] stall_out_q;
    wire [0:0] stall_out_1_specific_q;
    wire [0:0] unnamed_mmul6_mux_s;
    reg [0:0] unnamed_mmul6_mux_q;
    wire [0:0] unnamed_mmul7_mux_s;
    reg [0:0] unnamed_mmul7_mux_q;
    wire [0:0] valid_or_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // forked10_mux(MUX,2)
    assign forked10_mux_s = in_valid_in_0;
    always @(forked10_mux_s or in_forked10_1 or in_forked10_0)
    begin
        unique case (forked10_mux_s)
            1'b0 : forked10_mux_q = in_forked10_1;
            1'b1 : forked10_mux_q = in_forked10_0;
            default : forked10_mux_q = 1'b0;
        endcase
    end

    // out_forked10(GPOUT,41)
    assign out_forked10 = forked10_mux_q;

    // j_025_pop1139_mux(MUX,32)
    assign j_025_pop1139_mux_s = in_valid_in_0;
    always @(j_025_pop1139_mux_s or in_j_025_pop1139_1 or in_j_025_pop1139_0)
    begin
        unique case (j_025_pop1139_mux_s)
            1'b0 : j_025_pop1139_mux_q = in_j_025_pop1139_1;
            1'b1 : j_025_pop1139_mux_q = in_j_025_pop1139_0;
            default : j_025_pop1139_mux_q = 32'b0;
        endcase
    end

    // out_j_025_pop1139(GPOUT,42)
    assign out_j_025_pop1139 = j_025_pop1139_mux_q;

    // memdep_phi17_pop924_pop1644_mux(MUX,33)
    assign memdep_phi17_pop924_pop1644_mux_s = in_valid_in_0;
    always @(memdep_phi17_pop924_pop1644_mux_s or in_memdep_phi17_pop924_pop1644_1 or in_memdep_phi17_pop924_pop1644_0)
    begin
        unique case (memdep_phi17_pop924_pop1644_mux_s)
            1'b0 : memdep_phi17_pop924_pop1644_mux_q = in_memdep_phi17_pop924_pop1644_1;
            1'b1 : memdep_phi17_pop924_pop1644_mux_q = in_memdep_phi17_pop924_pop1644_0;
            default : memdep_phi17_pop924_pop1644_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi17_pop924_pop1644(GPOUT,43)
    assign out_memdep_phi17_pop924_pop1644 = memdep_phi17_pop924_pop1644_mux_q;

    // memdep_phi17_pop937_mux(MUX,34)
    assign memdep_phi17_pop937_mux_s = in_valid_in_0;
    always @(memdep_phi17_pop937_mux_s or in_memdep_phi17_pop937_1 or in_memdep_phi17_pop937_0)
    begin
        unique case (memdep_phi17_pop937_mux_s)
            1'b0 : memdep_phi17_pop937_mux_q = in_memdep_phi17_pop937_1;
            1'b1 : memdep_phi17_pop937_mux_q = in_memdep_phi17_pop937_0;
            default : memdep_phi17_pop937_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi17_pop937(GPOUT,44)
    assign out_memdep_phi17_pop937 = memdep_phi17_pop937_mux_q;

    // memdep_phi_pop1240_mux(MUX,35)
    assign memdep_phi_pop1240_mux_s = in_valid_in_0;
    always @(memdep_phi_pop1240_mux_s or in_memdep_phi_pop1240_1 or in_memdep_phi_pop1240_0)
    begin
        unique case (memdep_phi_pop1240_mux_s)
            1'b0 : memdep_phi_pop1240_mux_q = in_memdep_phi_pop1240_1;
            1'b1 : memdep_phi_pop1240_mux_q = in_memdep_phi_pop1240_0;
            default : memdep_phi_pop1240_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi_pop1240(GPOUT,45)
    assign out_memdep_phi_pop1240 = memdep_phi_pop1240_mux_q;

    // mul20_pop1341_mux(MUX,36)
    assign mul20_pop1341_mux_s = in_valid_in_0;
    always @(mul20_pop1341_mux_s or in_mul20_pop1341_1 or in_mul20_pop1341_0)
    begin
        unique case (mul20_pop1341_mux_s)
            1'b0 : mul20_pop1341_mux_q = in_mul20_pop1341_1;
            1'b1 : mul20_pop1341_mux_q = in_mul20_pop1341_0;
            default : mul20_pop1341_mux_q = 32'b0;
        endcase
    end

    // out_mul20_pop1341(GPOUT,46)
    assign out_mul20_pop1341 = mul20_pop1341_mux_q;

    // mul31_mux(MUX,37)
    assign mul31_mux_s = in_valid_in_0;
    always @(mul31_mux_s or in_mul31_1 or in_mul31_0)
    begin
        unique case (mul31_mux_s)
            1'b0 : mul31_mux_q = in_mul31_1;
            1'b1 : mul31_mux_q = in_mul31_0;
            default : mul31_mux_q = 32'b0;
        endcase
    end

    // out_mul31(GPOUT,47)
    assign out_mul31 = mul31_mux_q;

    // notcmp1238_mux(MUX,38)
    assign notcmp1238_mux_s = in_valid_in_0;
    always @(notcmp1238_mux_s or in_notcmp1238_1 or in_notcmp1238_0)
    begin
        unique case (notcmp1238_mux_s)
            1'b0 : notcmp1238_mux_q = in_notcmp1238_1;
            1'b1 : notcmp1238_mux_q = in_notcmp1238_0;
            default : notcmp1238_mux_q = 1'b0;
        endcase
    end

    // out_notcmp1238(GPOUT,48)
    assign out_notcmp1238 = notcmp1238_mux_q;

    // notcmp1622_pop1543_mux(MUX,39)
    assign notcmp1622_pop1543_mux_s = in_valid_in_0;
    always @(notcmp1622_pop1543_mux_s or in_notcmp1622_pop1543_1 or in_notcmp1622_pop1543_0)
    begin
        unique case (notcmp1622_pop1543_mux_s)
            1'b0 : notcmp1622_pop1543_mux_q = in_notcmp1622_pop1543_1;
            1'b1 : notcmp1622_pop1543_mux_q = in_notcmp1622_pop1543_0;
            default : notcmp1622_pop1543_mux_q = 1'b0;
        endcase
    end

    // out_notcmp1622_pop1543(GPOUT,49)
    assign out_notcmp1622_pop1543 = notcmp1622_pop1543_mux_q;

    // notcmp1634_mux(MUX,40)
    assign notcmp1634_mux_s = in_valid_in_0;
    always @(notcmp1634_mux_s or in_notcmp1634_1 or in_notcmp1634_0)
    begin
        unique case (notcmp1634_mux_s)
            1'b0 : notcmp1634_mux_q = in_notcmp1634_1;
            1'b1 : notcmp1634_mux_q = in_notcmp1634_0;
            default : notcmp1634_mux_q = 1'b0;
        endcase
    end

    // out_notcmp1634(GPOUT,50)
    assign out_notcmp1634 = notcmp1634_mux_q;

    // pop1442_mux(MUX,57)
    assign pop1442_mux_s = in_valid_in_0;
    always @(pop1442_mux_s or in_pop1442_1 or in_pop1442_0)
    begin
        unique case (pop1442_mux_s)
            1'b0 : pop1442_mux_q = in_pop1442_1;
            1'b1 : pop1442_mux_q = in_pop1442_0;
            default : pop1442_mux_q = 1'b0;
        endcase
    end

    // out_pop1442(GPOUT,51)
    assign out_pop1442 = pop1442_mux_q;

    // valid_or(LOGICAL,62)
    assign valid_or_q = in_valid_in_0 | in_valid_in_1;

    // stall_out(LOGICAL,58)
    assign stall_out_q = valid_or_q & in_stall_in;

    // out_stall_out_0(GPOUT,52)
    assign out_stall_out_0 = stall_out_q;

    // stall_out_1_specific(LOGICAL,59)
    assign stall_out_1_specific_q = in_valid_in_0 | stall_out_q;

    // out_stall_out_1(GPOUT,53)
    assign out_stall_out_1 = stall_out_1_specific_q;

    // unnamed_mmul6_mux(MUX,60)
    assign unnamed_mmul6_mux_s = in_valid_in_0;
    always @(unnamed_mmul6_mux_s or in_unnamed_mmul6_1 or in_unnamed_mmul6_0)
    begin
        unique case (unnamed_mmul6_mux_s)
            1'b0 : unnamed_mmul6_mux_q = in_unnamed_mmul6_1;
            1'b1 : unnamed_mmul6_mux_q = in_unnamed_mmul6_0;
            default : unnamed_mmul6_mux_q = 1'b0;
        endcase
    end

    // out_unnamed_mmul6(GPOUT,54)
    assign out_unnamed_mmul6 = unnamed_mmul6_mux_q;

    // unnamed_mmul7_mux(MUX,61)
    assign unnamed_mmul7_mux_s = in_valid_in_0;
    always @(unnamed_mmul7_mux_s or in_unnamed_mmul7_1 or in_unnamed_mmul7_0)
    begin
        unique case (unnamed_mmul7_mux_s)
            1'b0 : unnamed_mmul7_mux_q = in_unnamed_mmul7_1;
            1'b1 : unnamed_mmul7_mux_q = in_unnamed_mmul7_0;
            default : unnamed_mmul7_mux_q = 1'b0;
        endcase
    end

    // out_unnamed_mmul7(GPOUT,55)
    assign out_unnamed_mmul7 = unnamed_mmul7_mux_q;

    // out_valid_out(GPOUT,56)
    assign out_valid_out = valid_or_q;

endmodule
