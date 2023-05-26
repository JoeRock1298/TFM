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

// SystemVerilog created from double_add_2_B6_merge
// SystemVerilog created on Tue May 23 14:04:37 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module double_add_2_B6_merge (
    input wire [0:0] in_forked10_0,
    input wire [0:0] in_forked10_1,
    input wire [0:0] in_memdep_phi5_pop1748_0,
    input wire [0:0] in_memdep_phi5_pop1748_1,
    input wire [0:0] in_notcmp2649_0,
    input wire [0:0] in_notcmp2649_1,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_unnamed_double_add_26_0,
    input wire [0:0] in_unnamed_double_add_26_1,
    input wire [0:0] in_unnamed_double_add_27_0,
    input wire [0:0] in_unnamed_double_add_27_1,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [0:0] out_forked10,
    output wire [0:0] out_memdep_phi5_pop1748,
    output wire [0:0] out_notcmp2649,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [0:0] out_unnamed_double_add_26,
    output wire [0:0] out_unnamed_double_add_27,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    wire [0:0] forked10_mux_s;
    reg [0:0] forked10_mux_q;
    wire [0:0] memdep_phi5_pop1748_mux_s;
    reg [0:0] memdep_phi5_pop1748_mux_q;
    wire [0:0] notcmp2649_mux_s;
    reg [0:0] notcmp2649_mux_q;
    wire [0:0] stall_out_q;
    wire [0:0] stall_out_1_specific_q;
    wire [0:0] unnamed_double_add_26_mux_s;
    reg [0:0] unnamed_double_add_26_mux_q;
    wire [0:0] unnamed_double_add_27_mux_s;
    reg [0:0] unnamed_double_add_27_mux_q;
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

    // out_forked10(GPOUT,18)
    assign out_forked10 = forked10_mux_q;

    // memdep_phi5_pop1748_mux(MUX,16)
    assign memdep_phi5_pop1748_mux_s = in_valid_in_0;
    always @(memdep_phi5_pop1748_mux_s or in_memdep_phi5_pop1748_1 or in_memdep_phi5_pop1748_0)
    begin
        unique case (memdep_phi5_pop1748_mux_s)
            1'b0 : memdep_phi5_pop1748_mux_q = in_memdep_phi5_pop1748_1;
            1'b1 : memdep_phi5_pop1748_mux_q = in_memdep_phi5_pop1748_0;
            default : memdep_phi5_pop1748_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi5_pop1748(GPOUT,19)
    assign out_memdep_phi5_pop1748 = memdep_phi5_pop1748_mux_q;

    // notcmp2649_mux(MUX,17)
    assign notcmp2649_mux_s = in_valid_in_0;
    always @(notcmp2649_mux_s or in_notcmp2649_1 or in_notcmp2649_0)
    begin
        unique case (notcmp2649_mux_s)
            1'b0 : notcmp2649_mux_q = in_notcmp2649_1;
            1'b1 : notcmp2649_mux_q = in_notcmp2649_0;
            default : notcmp2649_mux_q = 1'b0;
        endcase
    end

    // out_notcmp2649(GPOUT,20)
    assign out_notcmp2649 = notcmp2649_mux_q;

    // valid_or(LOGICAL,30)
    assign valid_or_q = in_valid_in_0 | in_valid_in_1;

    // stall_out(LOGICAL,26)
    assign stall_out_q = valid_or_q & in_stall_in;

    // out_stall_out_0(GPOUT,21)
    assign out_stall_out_0 = stall_out_q;

    // stall_out_1_specific(LOGICAL,27)
    assign stall_out_1_specific_q = in_valid_in_0 | stall_out_q;

    // out_stall_out_1(GPOUT,22)
    assign out_stall_out_1 = stall_out_1_specific_q;

    // unnamed_double_add_26_mux(MUX,28)
    assign unnamed_double_add_26_mux_s = in_valid_in_0;
    always @(unnamed_double_add_26_mux_s or in_unnamed_double_add_26_1 or in_unnamed_double_add_26_0)
    begin
        unique case (unnamed_double_add_26_mux_s)
            1'b0 : unnamed_double_add_26_mux_q = in_unnamed_double_add_26_1;
            1'b1 : unnamed_double_add_26_mux_q = in_unnamed_double_add_26_0;
            default : unnamed_double_add_26_mux_q = 1'b0;
        endcase
    end

    // out_unnamed_double_add_26(GPOUT,23)
    assign out_unnamed_double_add_26 = unnamed_double_add_26_mux_q;

    // unnamed_double_add_27_mux(MUX,29)
    assign unnamed_double_add_27_mux_s = in_valid_in_0;
    always @(unnamed_double_add_27_mux_s or in_unnamed_double_add_27_1 or in_unnamed_double_add_27_0)
    begin
        unique case (unnamed_double_add_27_mux_s)
            1'b0 : unnamed_double_add_27_mux_q = in_unnamed_double_add_27_1;
            1'b1 : unnamed_double_add_27_mux_q = in_unnamed_double_add_27_0;
            default : unnamed_double_add_27_mux_q = 1'b0;
        endcase
    end

    // out_unnamed_double_add_27(GPOUT,24)
    assign out_unnamed_double_add_27 = unnamed_double_add_27_mux_q;

    // out_valid_out(GPOUT,25)
    assign out_valid_out = valid_or_q;

endmodule
