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

// SystemVerilog created from conv2d1x1_B6_merge
// SystemVerilog created on Wed May 24 12:36:13 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2d1x1_B6_merge (
    input wire [9:0] in_ap_pop133_0,
    input wire [9:0] in_ap_pop133_1,
    input wire [0:0] in_forked31_0,
    input wire [0:0] in_forked31_1,
    input wire [31:0] in_ij_0104_pop13136_0,
    input wire [31:0] in_ij_0104_pop13136_1,
    input wire [31:0] in_lm117_0,
    input wire [31:0] in_lm117_1,
    input wire [31:0] in_lm59_pop18140_0,
    input wire [31:0] in_lm59_pop18140_1,
    input wire [31:0] in_mul112_0,
    input wire [31:0] in_mul112_1,
    input wire [31:0] in_mul156127_0,
    input wire [31:0] in_mul156127_1,
    input wire [31:0] in_mul15665_pop20142_0,
    input wire [31:0] in_mul15665_pop20142_1,
    input wire [31:0] in_mul21122_0,
    input wire [31:0] in_mul21122_1,
    input wire [31:0] in_mul2162_pop19141_0,
    input wire [31:0] in_mul2162_pop19141_1,
    input wire [31:0] in_mul56_pop14137_0,
    input wire [31:0] in_mul56_pop14137_1,
    input wire [0:0] in_notcmp46135_0,
    input wire [0:0] in_notcmp46135_1,
    input wire [0:0] in_notcmp51132_0,
    input wire [0:0] in_notcmp51132_1,
    input wire [0:0] in_notcmp5168_pop21143_0,
    input wire [0:0] in_notcmp5168_pop21143_1,
    input wire [0:0] in_pop15138_0,
    input wire [0:0] in_pop15138_1,
    input wire [0:0] in_pop16134_0,
    input wire [0:0] in_pop16134_1,
    input wire [0:0] in_pop17139_0,
    input wire [0:0] in_pop17139_1,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_unnamed_conv2d1x111_0,
    input wire [0:0] in_unnamed_conv2d1x111_1,
    input wire [0:0] in_unnamed_conv2d1x112_0,
    input wire [0:0] in_unnamed_conv2d1x112_1,
    input wire [0:0] in_unnamed_conv2d1x113_0,
    input wire [0:0] in_unnamed_conv2d1x113_1,
    input wire [32:0] in_unnamed_conv2d1x114_0,
    input wire [32:0] in_unnamed_conv2d1x114_1,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [9:0] out_ap_pop133,
    output wire [0:0] out_forked31,
    output wire [31:0] out_ij_0104_pop13136,
    output wire [31:0] out_lm117,
    output wire [31:0] out_lm59_pop18140,
    output wire [31:0] out_mul112,
    output wire [31:0] out_mul156127,
    output wire [31:0] out_mul15665_pop20142,
    output wire [31:0] out_mul21122,
    output wire [31:0] out_mul2162_pop19141,
    output wire [31:0] out_mul56_pop14137,
    output wire [0:0] out_notcmp46135,
    output wire [0:0] out_notcmp51132,
    output wire [0:0] out_notcmp5168_pop21143,
    output wire [0:0] out_pop15138,
    output wire [0:0] out_pop16134,
    output wire [0:0] out_pop17139,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [0:0] out_unnamed_conv2d1x111,
    output wire [0:0] out_unnamed_conv2d1x112,
    output wire [0:0] out_unnamed_conv2d1x113,
    output wire [32:0] out_unnamed_conv2d1x114,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    wire [0:0] ap_pop133_mux_s;
    reg [9:0] ap_pop133_mux_q;
    wire [0:0] forked31_mux_s;
    reg [0:0] forked31_mux_q;
    wire [0:0] ij_0104_pop13136_mux_s;
    reg [31:0] ij_0104_pop13136_mux_q;
    wire [0:0] lm117_mux_s;
    reg [31:0] lm117_mux_q;
    wire [0:0] lm59_pop18140_mux_s;
    reg [31:0] lm59_pop18140_mux_q;
    wire [0:0] mul112_mux_s;
    reg [31:0] mul112_mux_q;
    wire [0:0] mul156127_mux_s;
    reg [31:0] mul156127_mux_q;
    wire [0:0] mul15665_pop20142_mux_s;
    reg [31:0] mul15665_pop20142_mux_q;
    wire [0:0] mul21122_mux_s;
    reg [31:0] mul21122_mux_q;
    wire [0:0] mul2162_pop19141_mux_s;
    reg [31:0] mul2162_pop19141_mux_q;
    wire [0:0] mul56_pop14137_mux_s;
    reg [31:0] mul56_pop14137_mux_q;
    wire [0:0] notcmp46135_mux_s;
    reg [0:0] notcmp46135_mux_q;
    wire [0:0] notcmp51132_mux_s;
    reg [0:0] notcmp51132_mux_q;
    wire [0:0] notcmp5168_pop21143_mux_s;
    reg [0:0] notcmp5168_pop21143_mux_q;
    wire [0:0] pop15138_mux_s;
    reg [0:0] pop15138_mux_q;
    wire [0:0] pop16134_mux_s;
    reg [0:0] pop16134_mux_q;
    wire [0:0] pop17139_mux_s;
    reg [0:0] pop17139_mux_q;
    wire [0:0] stall_out_q;
    wire [0:0] stall_out_1_specific_q;
    wire [0:0] unnamed_conv2d1x111_mux_s;
    reg [0:0] unnamed_conv2d1x111_mux_q;
    wire [0:0] unnamed_conv2d1x112_mux_s;
    reg [0:0] unnamed_conv2d1x112_mux_q;
    wire [0:0] unnamed_conv2d1x113_mux_s;
    reg [0:0] unnamed_conv2d1x113_mux_q;
    wire [0:0] unnamed_conv2d1x114_mux_s;
    reg [32:0] unnamed_conv2d1x114_mux_q;
    wire [0:0] valid_or_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // ap_pop133_mux(MUX,2)
    assign ap_pop133_mux_s = in_valid_in_0;
    always @(ap_pop133_mux_s or in_ap_pop133_1 or in_ap_pop133_0)
    begin
        unique case (ap_pop133_mux_s)
            1'b0 : ap_pop133_mux_q = in_ap_pop133_1;
            1'b1 : ap_pop133_mux_q = in_ap_pop133_0;
            default : ap_pop133_mux_q = 10'b0;
        endcase
    end

    // out_ap_pop133(GPOUT,61)
    assign out_ap_pop133 = ap_pop133_mux_q;

    // forked31_mux(MUX,3)
    assign forked31_mux_s = in_valid_in_0;
    always @(forked31_mux_s or in_forked31_1 or in_forked31_0)
    begin
        unique case (forked31_mux_s)
            1'b0 : forked31_mux_q = in_forked31_1;
            1'b1 : forked31_mux_q = in_forked31_0;
            default : forked31_mux_q = 1'b0;
        endcase
    end

    // out_forked31(GPOUT,62)
    assign out_forked31 = forked31_mux_q;

    // ij_0104_pop13136_mux(MUX,4)
    assign ij_0104_pop13136_mux_s = in_valid_in_0;
    always @(ij_0104_pop13136_mux_s or in_ij_0104_pop13136_1 or in_ij_0104_pop13136_0)
    begin
        unique case (ij_0104_pop13136_mux_s)
            1'b0 : ij_0104_pop13136_mux_q = in_ij_0104_pop13136_1;
            1'b1 : ij_0104_pop13136_mux_q = in_ij_0104_pop13136_0;
            default : ij_0104_pop13136_mux_q = 32'b0;
        endcase
    end

    // out_ij_0104_pop13136(GPOUT,63)
    assign out_ij_0104_pop13136 = ij_0104_pop13136_mux_q;

    // lm117_mux(MUX,50)
    assign lm117_mux_s = in_valid_in_0;
    always @(lm117_mux_s or in_lm117_1 or in_lm117_0)
    begin
        unique case (lm117_mux_s)
            1'b0 : lm117_mux_q = in_lm117_1;
            1'b1 : lm117_mux_q = in_lm117_0;
            default : lm117_mux_q = 32'b0;
        endcase
    end

    // out_lm117(GPOUT,64)
    assign out_lm117 = lm117_mux_q;

    // lm59_pop18140_mux(MUX,51)
    assign lm59_pop18140_mux_s = in_valid_in_0;
    always @(lm59_pop18140_mux_s or in_lm59_pop18140_1 or in_lm59_pop18140_0)
    begin
        unique case (lm59_pop18140_mux_s)
            1'b0 : lm59_pop18140_mux_q = in_lm59_pop18140_1;
            1'b1 : lm59_pop18140_mux_q = in_lm59_pop18140_0;
            default : lm59_pop18140_mux_q = 32'b0;
        endcase
    end

    // out_lm59_pop18140(GPOUT,65)
    assign out_lm59_pop18140 = lm59_pop18140_mux_q;

    // mul112_mux(MUX,52)
    assign mul112_mux_s = in_valid_in_0;
    always @(mul112_mux_s or in_mul112_1 or in_mul112_0)
    begin
        unique case (mul112_mux_s)
            1'b0 : mul112_mux_q = in_mul112_1;
            1'b1 : mul112_mux_q = in_mul112_0;
            default : mul112_mux_q = 32'b0;
        endcase
    end

    // out_mul112(GPOUT,66)
    assign out_mul112 = mul112_mux_q;

    // mul156127_mux(MUX,53)
    assign mul156127_mux_s = in_valid_in_0;
    always @(mul156127_mux_s or in_mul156127_1 or in_mul156127_0)
    begin
        unique case (mul156127_mux_s)
            1'b0 : mul156127_mux_q = in_mul156127_1;
            1'b1 : mul156127_mux_q = in_mul156127_0;
            default : mul156127_mux_q = 32'b0;
        endcase
    end

    // out_mul156127(GPOUT,67)
    assign out_mul156127 = mul156127_mux_q;

    // mul15665_pop20142_mux(MUX,54)
    assign mul15665_pop20142_mux_s = in_valid_in_0;
    always @(mul15665_pop20142_mux_s or in_mul15665_pop20142_1 or in_mul15665_pop20142_0)
    begin
        unique case (mul15665_pop20142_mux_s)
            1'b0 : mul15665_pop20142_mux_q = in_mul15665_pop20142_1;
            1'b1 : mul15665_pop20142_mux_q = in_mul15665_pop20142_0;
            default : mul15665_pop20142_mux_q = 32'b0;
        endcase
    end

    // out_mul15665_pop20142(GPOUT,68)
    assign out_mul15665_pop20142 = mul15665_pop20142_mux_q;

    // mul21122_mux(MUX,55)
    assign mul21122_mux_s = in_valid_in_0;
    always @(mul21122_mux_s or in_mul21122_1 or in_mul21122_0)
    begin
        unique case (mul21122_mux_s)
            1'b0 : mul21122_mux_q = in_mul21122_1;
            1'b1 : mul21122_mux_q = in_mul21122_0;
            default : mul21122_mux_q = 32'b0;
        endcase
    end

    // out_mul21122(GPOUT,69)
    assign out_mul21122 = mul21122_mux_q;

    // mul2162_pop19141_mux(MUX,56)
    assign mul2162_pop19141_mux_s = in_valid_in_0;
    always @(mul2162_pop19141_mux_s or in_mul2162_pop19141_1 or in_mul2162_pop19141_0)
    begin
        unique case (mul2162_pop19141_mux_s)
            1'b0 : mul2162_pop19141_mux_q = in_mul2162_pop19141_1;
            1'b1 : mul2162_pop19141_mux_q = in_mul2162_pop19141_0;
            default : mul2162_pop19141_mux_q = 32'b0;
        endcase
    end

    // out_mul2162_pop19141(GPOUT,70)
    assign out_mul2162_pop19141 = mul2162_pop19141_mux_q;

    // mul56_pop14137_mux(MUX,57)
    assign mul56_pop14137_mux_s = in_valid_in_0;
    always @(mul56_pop14137_mux_s or in_mul56_pop14137_1 or in_mul56_pop14137_0)
    begin
        unique case (mul56_pop14137_mux_s)
            1'b0 : mul56_pop14137_mux_q = in_mul56_pop14137_1;
            1'b1 : mul56_pop14137_mux_q = in_mul56_pop14137_0;
            default : mul56_pop14137_mux_q = 32'b0;
        endcase
    end

    // out_mul56_pop14137(GPOUT,71)
    assign out_mul56_pop14137 = mul56_pop14137_mux_q;

    // notcmp46135_mux(MUX,58)
    assign notcmp46135_mux_s = in_valid_in_0;
    always @(notcmp46135_mux_s or in_notcmp46135_1 or in_notcmp46135_0)
    begin
        unique case (notcmp46135_mux_s)
            1'b0 : notcmp46135_mux_q = in_notcmp46135_1;
            1'b1 : notcmp46135_mux_q = in_notcmp46135_0;
            default : notcmp46135_mux_q = 1'b0;
        endcase
    end

    // out_notcmp46135(GPOUT,72)
    assign out_notcmp46135 = notcmp46135_mux_q;

    // notcmp51132_mux(MUX,59)
    assign notcmp51132_mux_s = in_valid_in_0;
    always @(notcmp51132_mux_s or in_notcmp51132_1 or in_notcmp51132_0)
    begin
        unique case (notcmp51132_mux_s)
            1'b0 : notcmp51132_mux_q = in_notcmp51132_1;
            1'b1 : notcmp51132_mux_q = in_notcmp51132_0;
            default : notcmp51132_mux_q = 1'b0;
        endcase
    end

    // out_notcmp51132(GPOUT,73)
    assign out_notcmp51132 = notcmp51132_mux_q;

    // notcmp5168_pop21143_mux(MUX,60)
    assign notcmp5168_pop21143_mux_s = in_valid_in_0;
    always @(notcmp5168_pop21143_mux_s or in_notcmp5168_pop21143_1 or in_notcmp5168_pop21143_0)
    begin
        unique case (notcmp5168_pop21143_mux_s)
            1'b0 : notcmp5168_pop21143_mux_q = in_notcmp5168_pop21143_1;
            1'b1 : notcmp5168_pop21143_mux_q = in_notcmp5168_pop21143_0;
            default : notcmp5168_pop21143_mux_q = 1'b0;
        endcase
    end

    // out_notcmp5168_pop21143(GPOUT,74)
    assign out_notcmp5168_pop21143 = notcmp5168_pop21143_mux_q;

    // pop15138_mux(MUX,85)
    assign pop15138_mux_s = in_valid_in_0;
    always @(pop15138_mux_s or in_pop15138_1 or in_pop15138_0)
    begin
        unique case (pop15138_mux_s)
            1'b0 : pop15138_mux_q = in_pop15138_1;
            1'b1 : pop15138_mux_q = in_pop15138_0;
            default : pop15138_mux_q = 1'b0;
        endcase
    end

    // out_pop15138(GPOUT,75)
    assign out_pop15138 = pop15138_mux_q;

    // pop16134_mux(MUX,86)
    assign pop16134_mux_s = in_valid_in_0;
    always @(pop16134_mux_s or in_pop16134_1 or in_pop16134_0)
    begin
        unique case (pop16134_mux_s)
            1'b0 : pop16134_mux_q = in_pop16134_1;
            1'b1 : pop16134_mux_q = in_pop16134_0;
            default : pop16134_mux_q = 1'b0;
        endcase
    end

    // out_pop16134(GPOUT,76)
    assign out_pop16134 = pop16134_mux_q;

    // pop17139_mux(MUX,87)
    assign pop17139_mux_s = in_valid_in_0;
    always @(pop17139_mux_s or in_pop17139_1 or in_pop17139_0)
    begin
        unique case (pop17139_mux_s)
            1'b0 : pop17139_mux_q = in_pop17139_1;
            1'b1 : pop17139_mux_q = in_pop17139_0;
            default : pop17139_mux_q = 1'b0;
        endcase
    end

    // out_pop17139(GPOUT,77)
    assign out_pop17139 = pop17139_mux_q;

    // valid_or(LOGICAL,94)
    assign valid_or_q = in_valid_in_0 | in_valid_in_1;

    // stall_out(LOGICAL,88)
    assign stall_out_q = valid_or_q & in_stall_in;

    // out_stall_out_0(GPOUT,78)
    assign out_stall_out_0 = stall_out_q;

    // stall_out_1_specific(LOGICAL,89)
    assign stall_out_1_specific_q = in_valid_in_0 | stall_out_q;

    // out_stall_out_1(GPOUT,79)
    assign out_stall_out_1 = stall_out_1_specific_q;

    // unnamed_conv2d1x111_mux(MUX,90)
    assign unnamed_conv2d1x111_mux_s = in_valid_in_0;
    always @(unnamed_conv2d1x111_mux_s or in_unnamed_conv2d1x111_1 or in_unnamed_conv2d1x111_0)
    begin
        unique case (unnamed_conv2d1x111_mux_s)
            1'b0 : unnamed_conv2d1x111_mux_q = in_unnamed_conv2d1x111_1;
            1'b1 : unnamed_conv2d1x111_mux_q = in_unnamed_conv2d1x111_0;
            default : unnamed_conv2d1x111_mux_q = 1'b0;
        endcase
    end

    // out_unnamed_conv2d1x111(GPOUT,80)
    assign out_unnamed_conv2d1x111 = unnamed_conv2d1x111_mux_q;

    // unnamed_conv2d1x112_mux(MUX,91)
    assign unnamed_conv2d1x112_mux_s = in_valid_in_0;
    always @(unnamed_conv2d1x112_mux_s or in_unnamed_conv2d1x112_1 or in_unnamed_conv2d1x112_0)
    begin
        unique case (unnamed_conv2d1x112_mux_s)
            1'b0 : unnamed_conv2d1x112_mux_q = in_unnamed_conv2d1x112_1;
            1'b1 : unnamed_conv2d1x112_mux_q = in_unnamed_conv2d1x112_0;
            default : unnamed_conv2d1x112_mux_q = 1'b0;
        endcase
    end

    // out_unnamed_conv2d1x112(GPOUT,81)
    assign out_unnamed_conv2d1x112 = unnamed_conv2d1x112_mux_q;

    // unnamed_conv2d1x113_mux(MUX,92)
    assign unnamed_conv2d1x113_mux_s = in_valid_in_0;
    always @(unnamed_conv2d1x113_mux_s or in_unnamed_conv2d1x113_1 or in_unnamed_conv2d1x113_0)
    begin
        unique case (unnamed_conv2d1x113_mux_s)
            1'b0 : unnamed_conv2d1x113_mux_q = in_unnamed_conv2d1x113_1;
            1'b1 : unnamed_conv2d1x113_mux_q = in_unnamed_conv2d1x113_0;
            default : unnamed_conv2d1x113_mux_q = 1'b0;
        endcase
    end

    // out_unnamed_conv2d1x113(GPOUT,82)
    assign out_unnamed_conv2d1x113 = unnamed_conv2d1x113_mux_q;

    // unnamed_conv2d1x114_mux(MUX,93)
    assign unnamed_conv2d1x114_mux_s = in_valid_in_0;
    always @(unnamed_conv2d1x114_mux_s or in_unnamed_conv2d1x114_1 or in_unnamed_conv2d1x114_0)
    begin
        unique case (unnamed_conv2d1x114_mux_s)
            1'b0 : unnamed_conv2d1x114_mux_q = in_unnamed_conv2d1x114_1;
            1'b1 : unnamed_conv2d1x114_mux_q = in_unnamed_conv2d1x114_0;
            default : unnamed_conv2d1x114_mux_q = 33'b0;
        endcase
    end

    // out_unnamed_conv2d1x114(GPOUT,83)
    assign out_unnamed_conv2d1x114 = unnamed_conv2d1x114_mux_q;

    // out_valid_out(GPOUT,84)
    assign out_valid_out = valid_or_q;

endmodule
