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

// SystemVerilog created from maxpool2d_B10_merge
// SystemVerilog created on Tue Jun  6 18:48:20 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module maxpool2d_B10_merge (
    input wire [31:0] in_add19140_0,
    input wire [31:0] in_add19140_1,
    input wire [0:0] in_forked13_0,
    input wire [0:0] in_forked13_1,
    input wire [0:0] in_forked31137_0,
    input wire [0:0] in_forked31137_1,
    input wire [63:0] in_input_im_addr_041_replace_phi36_pop17106_0,
    input wire [63:0] in_input_im_addr_041_replace_phi36_pop17106_1,
    input wire [63:0] in_input_im_addr_041_replace_phi37_pop22124_0,
    input wire [63:0] in_input_im_addr_041_replace_phi37_pop22124_1,
    input wire [63:0] in_input_im_addr_041_replace_phi38_pop30143_0,
    input wire [63:0] in_input_im_addr_041_replace_phi38_pop30143_1,
    input wire [63:0] in_input_im_addr_041_replace_phi73_0,
    input wire [63:0] in_input_im_addr_041_replace_phi73_1,
    input wire [31:0] in_j_034_pop20118_0,
    input wire [31:0] in_j_034_pop20118_1,
    input wire [31:0] in_j_034_pop2055_pop36138_0,
    input wire [31:0] in_j_034_pop2055_pop36138_1,
    input wire [31:0] in_mul2547_pop25133_0,
    input wire [31:0] in_mul2547_pop25133_1,
    input wire [31:0] in_mul2548_pop33145_0,
    input wire [31:0] in_mul2548_pop33145_1,
    input wire [31:0] in_mul2591_0,
    input wire [31:0] in_mul2591_1,
    input wire [31:0] in_mul44_pop24130_0,
    input wire [31:0] in_mul44_pop24130_1,
    input wire [31:0] in_mul45_pop32139_0,
    input wire [31:0] in_mul45_pop32139_1,
    input wire [31:0] in_mul86_0,
    input wire [31:0] in_mul86_1,
    input wire [0:0] in_notcmp14141_0,
    input wire [0:0] in_notcmp14141_1,
    input wire [0:0] in_notcmp19115_0,
    input wire [0:0] in_notcmp19115_1,
    input wire [0:0] in_notcmp1953_pop35147_0,
    input wire [0:0] in_notcmp1953_pop35147_1,
    input wire [0:0] in_notcmp2350_pop26136_0,
    input wire [0:0] in_notcmp2350_pop26136_1,
    input wire [0:0] in_notcmp2351_pop34146_0,
    input wire [0:0] in_notcmp2351_pop34146_1,
    input wire [0:0] in_notcmp2396_0,
    input wire [0:0] in_notcmp2396_1,
    input wire [0:0] in_notcmp2740_pop18111_0,
    input wire [0:0] in_notcmp2740_pop18111_1,
    input wire [0:0] in_notcmp2741_pop23127_0,
    input wire [0:0] in_notcmp2741_pop23127_1,
    input wire [0:0] in_notcmp2742_pop31144_0,
    input wire [0:0] in_notcmp2742_pop31144_1,
    input wire [0:0] in_notcmp2780_0,
    input wire [0:0] in_notcmp2780_1,
    input wire [63:0] in_output_im_addr_042_replace_phi32_pop16101_0,
    input wire [63:0] in_output_im_addr_042_replace_phi32_pop16101_1,
    input wire [63:0] in_output_im_addr_042_replace_phi33_pop21121_0,
    input wire [63:0] in_output_im_addr_042_replace_phi33_pop21121_1,
    input wire [63:0] in_output_im_addr_042_replace_phi34_pop29142_0,
    input wire [63:0] in_output_im_addr_042_replace_phi34_pop29142_1,
    input wire [63:0] in_output_im_addr_042_replace_phi66_0,
    input wire [63:0] in_output_im_addr_042_replace_phi66_1,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_unnamed_maxpool2d14_0,
    input wire [0:0] in_unnamed_maxpool2d14_1,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [31:0] out_add19140,
    output wire [0:0] out_forked13,
    output wire [0:0] out_forked31137,
    output wire [63:0] out_input_im_addr_041_replace_phi36_pop17106,
    output wire [63:0] out_input_im_addr_041_replace_phi37_pop22124,
    output wire [63:0] out_input_im_addr_041_replace_phi38_pop30143,
    output wire [63:0] out_input_im_addr_041_replace_phi73,
    output wire [31:0] out_j_034_pop20118,
    output wire [31:0] out_j_034_pop2055_pop36138,
    output wire [31:0] out_mul2547_pop25133,
    output wire [31:0] out_mul2548_pop33145,
    output wire [31:0] out_mul2591,
    output wire [31:0] out_mul44_pop24130,
    output wire [31:0] out_mul45_pop32139,
    output wire [31:0] out_mul86,
    output wire [0:0] out_notcmp14141,
    output wire [0:0] out_notcmp19115,
    output wire [0:0] out_notcmp1953_pop35147,
    output wire [0:0] out_notcmp2350_pop26136,
    output wire [0:0] out_notcmp2351_pop34146,
    output wire [0:0] out_notcmp2396,
    output wire [0:0] out_notcmp2740_pop18111,
    output wire [0:0] out_notcmp2741_pop23127,
    output wire [0:0] out_notcmp2742_pop31144,
    output wire [0:0] out_notcmp2780,
    output wire [63:0] out_output_im_addr_042_replace_phi32_pop16101,
    output wire [63:0] out_output_im_addr_042_replace_phi33_pop21121,
    output wire [63:0] out_output_im_addr_042_replace_phi34_pop29142,
    output wire [63:0] out_output_im_addr_042_replace_phi66,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [0:0] out_unnamed_maxpool2d14,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    wire [0:0] add19140_mux_s;
    reg [31:0] add19140_mux_q;
    wire [0:0] forked13_mux_s;
    reg [0:0] forked13_mux_q;
    wire [0:0] forked31137_mux_s;
    reg [0:0] forked31137_mux_q;
    wire [0:0] input_im_addr_041_replace_phi36_pop17106_mux_s;
    reg [63:0] input_im_addr_041_replace_phi36_pop17106_mux_q;
    wire [0:0] input_im_addr_041_replace_phi37_pop22124_mux_s;
    reg [63:0] input_im_addr_041_replace_phi37_pop22124_mux_q;
    wire [0:0] input_im_addr_041_replace_phi38_pop30143_mux_s;
    reg [63:0] input_im_addr_041_replace_phi38_pop30143_mux_q;
    wire [0:0] input_im_addr_041_replace_phi73_mux_s;
    reg [63:0] input_im_addr_041_replace_phi73_mux_q;
    wire [0:0] j_034_pop20118_mux_s;
    reg [31:0] j_034_pop20118_mux_q;
    wire [0:0] j_034_pop2055_pop36138_mux_s;
    reg [31:0] j_034_pop2055_pop36138_mux_q;
    wire [0:0] mul2547_pop25133_mux_s;
    reg [31:0] mul2547_pop25133_mux_q;
    wire [0:0] mul2548_pop33145_mux_s;
    reg [31:0] mul2548_pop33145_mux_q;
    wire [0:0] mul2591_mux_s;
    reg [31:0] mul2591_mux_q;
    wire [0:0] mul44_pop24130_mux_s;
    reg [31:0] mul44_pop24130_mux_q;
    wire [0:0] mul45_pop32139_mux_s;
    reg [31:0] mul45_pop32139_mux_q;
    wire [0:0] mul86_mux_s;
    reg [31:0] mul86_mux_q;
    wire [0:0] notcmp14141_mux_s;
    reg [0:0] notcmp14141_mux_q;
    wire [0:0] notcmp19115_mux_s;
    reg [0:0] notcmp19115_mux_q;
    wire [0:0] notcmp1953_pop35147_mux_s;
    reg [0:0] notcmp1953_pop35147_mux_q;
    wire [0:0] notcmp2350_pop26136_mux_s;
    reg [0:0] notcmp2350_pop26136_mux_q;
    wire [0:0] notcmp2351_pop34146_mux_s;
    reg [0:0] notcmp2351_pop34146_mux_q;
    wire [0:0] notcmp2396_mux_s;
    reg [0:0] notcmp2396_mux_q;
    wire [0:0] notcmp2740_pop18111_mux_s;
    reg [0:0] notcmp2740_pop18111_mux_q;
    wire [0:0] notcmp2741_pop23127_mux_s;
    reg [0:0] notcmp2741_pop23127_mux_q;
    wire [0:0] notcmp2742_pop31144_mux_s;
    reg [0:0] notcmp2742_pop31144_mux_q;
    wire [0:0] notcmp2780_mux_s;
    reg [0:0] notcmp2780_mux_q;
    wire [0:0] output_im_addr_042_replace_phi32_pop16101_mux_s;
    reg [63:0] output_im_addr_042_replace_phi32_pop16101_mux_q;
    wire [0:0] output_im_addr_042_replace_phi33_pop21121_mux_s;
    reg [63:0] output_im_addr_042_replace_phi33_pop21121_mux_q;
    wire [0:0] output_im_addr_042_replace_phi34_pop29142_mux_s;
    reg [63:0] output_im_addr_042_replace_phi34_pop29142_mux_q;
    wire [0:0] output_im_addr_042_replace_phi66_mux_s;
    reg [63:0] output_im_addr_042_replace_phi66_mux_q;
    wire [0:0] stall_out_q;
    wire [0:0] stall_out_1_specific_q;
    wire [0:0] unnamed_maxpool2d14_mux_s;
    reg [0:0] unnamed_maxpool2d14_mux_q;
    wire [0:0] valid_or_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // add19140_mux(MUX,2)
    assign add19140_mux_s = in_valid_in_0;
    always @(add19140_mux_s or in_add19140_1 or in_add19140_0)
    begin
        unique case (add19140_mux_s)
            1'b0 : add19140_mux_q = in_add19140_1;
            1'b1 : add19140_mux_q = in_add19140_0;
            default : add19140_mux_q = 32'b0;
        endcase
    end

    // out_add19140(GPOUT,90)
    assign out_add19140 = add19140_mux_q;

    // forked13_mux(MUX,3)
    assign forked13_mux_s = in_valid_in_0;
    always @(forked13_mux_s or in_forked13_1 or in_forked13_0)
    begin
        unique case (forked13_mux_s)
            1'b0 : forked13_mux_q = in_forked13_1;
            1'b1 : forked13_mux_q = in_forked13_0;
            default : forked13_mux_q = 1'b0;
        endcase
    end

    // out_forked13(GPOUT,91)
    assign out_forked13 = forked13_mux_q;

    // forked31137_mux(MUX,4)
    assign forked31137_mux_s = in_valid_in_0;
    always @(forked31137_mux_s or in_forked31137_1 or in_forked31137_0)
    begin
        unique case (forked31137_mux_s)
            1'b0 : forked31137_mux_q = in_forked31137_1;
            1'b1 : forked31137_mux_q = in_forked31137_0;
            default : forked31137_mux_q = 1'b0;
        endcase
    end

    // out_forked31137(GPOUT,92)
    assign out_forked31137 = forked31137_mux_q;

    // input_im_addr_041_replace_phi36_pop17106_mux(MUX,68)
    assign input_im_addr_041_replace_phi36_pop17106_mux_s = in_valid_in_0;
    always @(input_im_addr_041_replace_phi36_pop17106_mux_s or in_input_im_addr_041_replace_phi36_pop17106_1 or in_input_im_addr_041_replace_phi36_pop17106_0)
    begin
        unique case (input_im_addr_041_replace_phi36_pop17106_mux_s)
            1'b0 : input_im_addr_041_replace_phi36_pop17106_mux_q = in_input_im_addr_041_replace_phi36_pop17106_1;
            1'b1 : input_im_addr_041_replace_phi36_pop17106_mux_q = in_input_im_addr_041_replace_phi36_pop17106_0;
            default : input_im_addr_041_replace_phi36_pop17106_mux_q = 64'b0;
        endcase
    end

    // out_input_im_addr_041_replace_phi36_pop17106(GPOUT,93)
    assign out_input_im_addr_041_replace_phi36_pop17106 = input_im_addr_041_replace_phi36_pop17106_mux_q;

    // input_im_addr_041_replace_phi37_pop22124_mux(MUX,69)
    assign input_im_addr_041_replace_phi37_pop22124_mux_s = in_valid_in_0;
    always @(input_im_addr_041_replace_phi37_pop22124_mux_s or in_input_im_addr_041_replace_phi37_pop22124_1 or in_input_im_addr_041_replace_phi37_pop22124_0)
    begin
        unique case (input_im_addr_041_replace_phi37_pop22124_mux_s)
            1'b0 : input_im_addr_041_replace_phi37_pop22124_mux_q = in_input_im_addr_041_replace_phi37_pop22124_1;
            1'b1 : input_im_addr_041_replace_phi37_pop22124_mux_q = in_input_im_addr_041_replace_phi37_pop22124_0;
            default : input_im_addr_041_replace_phi37_pop22124_mux_q = 64'b0;
        endcase
    end

    // out_input_im_addr_041_replace_phi37_pop22124(GPOUT,94)
    assign out_input_im_addr_041_replace_phi37_pop22124 = input_im_addr_041_replace_phi37_pop22124_mux_q;

    // input_im_addr_041_replace_phi38_pop30143_mux(MUX,70)
    assign input_im_addr_041_replace_phi38_pop30143_mux_s = in_valid_in_0;
    always @(input_im_addr_041_replace_phi38_pop30143_mux_s or in_input_im_addr_041_replace_phi38_pop30143_1 or in_input_im_addr_041_replace_phi38_pop30143_0)
    begin
        unique case (input_im_addr_041_replace_phi38_pop30143_mux_s)
            1'b0 : input_im_addr_041_replace_phi38_pop30143_mux_q = in_input_im_addr_041_replace_phi38_pop30143_1;
            1'b1 : input_im_addr_041_replace_phi38_pop30143_mux_q = in_input_im_addr_041_replace_phi38_pop30143_0;
            default : input_im_addr_041_replace_phi38_pop30143_mux_q = 64'b0;
        endcase
    end

    // out_input_im_addr_041_replace_phi38_pop30143(GPOUT,95)
    assign out_input_im_addr_041_replace_phi38_pop30143 = input_im_addr_041_replace_phi38_pop30143_mux_q;

    // input_im_addr_041_replace_phi73_mux(MUX,71)
    assign input_im_addr_041_replace_phi73_mux_s = in_valid_in_0;
    always @(input_im_addr_041_replace_phi73_mux_s or in_input_im_addr_041_replace_phi73_1 or in_input_im_addr_041_replace_phi73_0)
    begin
        unique case (input_im_addr_041_replace_phi73_mux_s)
            1'b0 : input_im_addr_041_replace_phi73_mux_q = in_input_im_addr_041_replace_phi73_1;
            1'b1 : input_im_addr_041_replace_phi73_mux_q = in_input_im_addr_041_replace_phi73_0;
            default : input_im_addr_041_replace_phi73_mux_q = 64'b0;
        endcase
    end

    // out_input_im_addr_041_replace_phi73(GPOUT,96)
    assign out_input_im_addr_041_replace_phi73 = input_im_addr_041_replace_phi73_mux_q;

    // j_034_pop20118_mux(MUX,72)
    assign j_034_pop20118_mux_s = in_valid_in_0;
    always @(j_034_pop20118_mux_s or in_j_034_pop20118_1 or in_j_034_pop20118_0)
    begin
        unique case (j_034_pop20118_mux_s)
            1'b0 : j_034_pop20118_mux_q = in_j_034_pop20118_1;
            1'b1 : j_034_pop20118_mux_q = in_j_034_pop20118_0;
            default : j_034_pop20118_mux_q = 32'b0;
        endcase
    end

    // out_j_034_pop20118(GPOUT,97)
    assign out_j_034_pop20118 = j_034_pop20118_mux_q;

    // j_034_pop2055_pop36138_mux(MUX,73)
    assign j_034_pop2055_pop36138_mux_s = in_valid_in_0;
    always @(j_034_pop2055_pop36138_mux_s or in_j_034_pop2055_pop36138_1 or in_j_034_pop2055_pop36138_0)
    begin
        unique case (j_034_pop2055_pop36138_mux_s)
            1'b0 : j_034_pop2055_pop36138_mux_q = in_j_034_pop2055_pop36138_1;
            1'b1 : j_034_pop2055_pop36138_mux_q = in_j_034_pop2055_pop36138_0;
            default : j_034_pop2055_pop36138_mux_q = 32'b0;
        endcase
    end

    // out_j_034_pop2055_pop36138(GPOUT,98)
    assign out_j_034_pop2055_pop36138 = j_034_pop2055_pop36138_mux_q;

    // mul2547_pop25133_mux(MUX,74)
    assign mul2547_pop25133_mux_s = in_valid_in_0;
    always @(mul2547_pop25133_mux_s or in_mul2547_pop25133_1 or in_mul2547_pop25133_0)
    begin
        unique case (mul2547_pop25133_mux_s)
            1'b0 : mul2547_pop25133_mux_q = in_mul2547_pop25133_1;
            1'b1 : mul2547_pop25133_mux_q = in_mul2547_pop25133_0;
            default : mul2547_pop25133_mux_q = 32'b0;
        endcase
    end

    // out_mul2547_pop25133(GPOUT,99)
    assign out_mul2547_pop25133 = mul2547_pop25133_mux_q;

    // mul2548_pop33145_mux(MUX,75)
    assign mul2548_pop33145_mux_s = in_valid_in_0;
    always @(mul2548_pop33145_mux_s or in_mul2548_pop33145_1 or in_mul2548_pop33145_0)
    begin
        unique case (mul2548_pop33145_mux_s)
            1'b0 : mul2548_pop33145_mux_q = in_mul2548_pop33145_1;
            1'b1 : mul2548_pop33145_mux_q = in_mul2548_pop33145_0;
            default : mul2548_pop33145_mux_q = 32'b0;
        endcase
    end

    // out_mul2548_pop33145(GPOUT,100)
    assign out_mul2548_pop33145 = mul2548_pop33145_mux_q;

    // mul2591_mux(MUX,76)
    assign mul2591_mux_s = in_valid_in_0;
    always @(mul2591_mux_s or in_mul2591_1 or in_mul2591_0)
    begin
        unique case (mul2591_mux_s)
            1'b0 : mul2591_mux_q = in_mul2591_1;
            1'b1 : mul2591_mux_q = in_mul2591_0;
            default : mul2591_mux_q = 32'b0;
        endcase
    end

    // out_mul2591(GPOUT,101)
    assign out_mul2591 = mul2591_mux_q;

    // mul44_pop24130_mux(MUX,77)
    assign mul44_pop24130_mux_s = in_valid_in_0;
    always @(mul44_pop24130_mux_s or in_mul44_pop24130_1 or in_mul44_pop24130_0)
    begin
        unique case (mul44_pop24130_mux_s)
            1'b0 : mul44_pop24130_mux_q = in_mul44_pop24130_1;
            1'b1 : mul44_pop24130_mux_q = in_mul44_pop24130_0;
            default : mul44_pop24130_mux_q = 32'b0;
        endcase
    end

    // out_mul44_pop24130(GPOUT,102)
    assign out_mul44_pop24130 = mul44_pop24130_mux_q;

    // mul45_pop32139_mux(MUX,78)
    assign mul45_pop32139_mux_s = in_valid_in_0;
    always @(mul45_pop32139_mux_s or in_mul45_pop32139_1 or in_mul45_pop32139_0)
    begin
        unique case (mul45_pop32139_mux_s)
            1'b0 : mul45_pop32139_mux_q = in_mul45_pop32139_1;
            1'b1 : mul45_pop32139_mux_q = in_mul45_pop32139_0;
            default : mul45_pop32139_mux_q = 32'b0;
        endcase
    end

    // out_mul45_pop32139(GPOUT,103)
    assign out_mul45_pop32139 = mul45_pop32139_mux_q;

    // mul86_mux(MUX,79)
    assign mul86_mux_s = in_valid_in_0;
    always @(mul86_mux_s or in_mul86_1 or in_mul86_0)
    begin
        unique case (mul86_mux_s)
            1'b0 : mul86_mux_q = in_mul86_1;
            1'b1 : mul86_mux_q = in_mul86_0;
            default : mul86_mux_q = 32'b0;
        endcase
    end

    // out_mul86(GPOUT,104)
    assign out_mul86 = mul86_mux_q;

    // notcmp14141_mux(MUX,80)
    assign notcmp14141_mux_s = in_valid_in_0;
    always @(notcmp14141_mux_s or in_notcmp14141_1 or in_notcmp14141_0)
    begin
        unique case (notcmp14141_mux_s)
            1'b0 : notcmp14141_mux_q = in_notcmp14141_1;
            1'b1 : notcmp14141_mux_q = in_notcmp14141_0;
            default : notcmp14141_mux_q = 1'b0;
        endcase
    end

    // out_notcmp14141(GPOUT,105)
    assign out_notcmp14141 = notcmp14141_mux_q;

    // notcmp19115_mux(MUX,81)
    assign notcmp19115_mux_s = in_valid_in_0;
    always @(notcmp19115_mux_s or in_notcmp19115_1 or in_notcmp19115_0)
    begin
        unique case (notcmp19115_mux_s)
            1'b0 : notcmp19115_mux_q = in_notcmp19115_1;
            1'b1 : notcmp19115_mux_q = in_notcmp19115_0;
            default : notcmp19115_mux_q = 1'b0;
        endcase
    end

    // out_notcmp19115(GPOUT,106)
    assign out_notcmp19115 = notcmp19115_mux_q;

    // notcmp1953_pop35147_mux(MUX,82)
    assign notcmp1953_pop35147_mux_s = in_valid_in_0;
    always @(notcmp1953_pop35147_mux_s or in_notcmp1953_pop35147_1 or in_notcmp1953_pop35147_0)
    begin
        unique case (notcmp1953_pop35147_mux_s)
            1'b0 : notcmp1953_pop35147_mux_q = in_notcmp1953_pop35147_1;
            1'b1 : notcmp1953_pop35147_mux_q = in_notcmp1953_pop35147_0;
            default : notcmp1953_pop35147_mux_q = 1'b0;
        endcase
    end

    // out_notcmp1953_pop35147(GPOUT,107)
    assign out_notcmp1953_pop35147 = notcmp1953_pop35147_mux_q;

    // notcmp2350_pop26136_mux(MUX,83)
    assign notcmp2350_pop26136_mux_s = in_valid_in_0;
    always @(notcmp2350_pop26136_mux_s or in_notcmp2350_pop26136_1 or in_notcmp2350_pop26136_0)
    begin
        unique case (notcmp2350_pop26136_mux_s)
            1'b0 : notcmp2350_pop26136_mux_q = in_notcmp2350_pop26136_1;
            1'b1 : notcmp2350_pop26136_mux_q = in_notcmp2350_pop26136_0;
            default : notcmp2350_pop26136_mux_q = 1'b0;
        endcase
    end

    // out_notcmp2350_pop26136(GPOUT,108)
    assign out_notcmp2350_pop26136 = notcmp2350_pop26136_mux_q;

    // notcmp2351_pop34146_mux(MUX,84)
    assign notcmp2351_pop34146_mux_s = in_valid_in_0;
    always @(notcmp2351_pop34146_mux_s or in_notcmp2351_pop34146_1 or in_notcmp2351_pop34146_0)
    begin
        unique case (notcmp2351_pop34146_mux_s)
            1'b0 : notcmp2351_pop34146_mux_q = in_notcmp2351_pop34146_1;
            1'b1 : notcmp2351_pop34146_mux_q = in_notcmp2351_pop34146_0;
            default : notcmp2351_pop34146_mux_q = 1'b0;
        endcase
    end

    // out_notcmp2351_pop34146(GPOUT,109)
    assign out_notcmp2351_pop34146 = notcmp2351_pop34146_mux_q;

    // notcmp2396_mux(MUX,85)
    assign notcmp2396_mux_s = in_valid_in_0;
    always @(notcmp2396_mux_s or in_notcmp2396_1 or in_notcmp2396_0)
    begin
        unique case (notcmp2396_mux_s)
            1'b0 : notcmp2396_mux_q = in_notcmp2396_1;
            1'b1 : notcmp2396_mux_q = in_notcmp2396_0;
            default : notcmp2396_mux_q = 1'b0;
        endcase
    end

    // out_notcmp2396(GPOUT,110)
    assign out_notcmp2396 = notcmp2396_mux_q;

    // notcmp2740_pop18111_mux(MUX,86)
    assign notcmp2740_pop18111_mux_s = in_valid_in_0;
    always @(notcmp2740_pop18111_mux_s or in_notcmp2740_pop18111_1 or in_notcmp2740_pop18111_0)
    begin
        unique case (notcmp2740_pop18111_mux_s)
            1'b0 : notcmp2740_pop18111_mux_q = in_notcmp2740_pop18111_1;
            1'b1 : notcmp2740_pop18111_mux_q = in_notcmp2740_pop18111_0;
            default : notcmp2740_pop18111_mux_q = 1'b0;
        endcase
    end

    // out_notcmp2740_pop18111(GPOUT,111)
    assign out_notcmp2740_pop18111 = notcmp2740_pop18111_mux_q;

    // notcmp2741_pop23127_mux(MUX,87)
    assign notcmp2741_pop23127_mux_s = in_valid_in_0;
    always @(notcmp2741_pop23127_mux_s or in_notcmp2741_pop23127_1 or in_notcmp2741_pop23127_0)
    begin
        unique case (notcmp2741_pop23127_mux_s)
            1'b0 : notcmp2741_pop23127_mux_q = in_notcmp2741_pop23127_1;
            1'b1 : notcmp2741_pop23127_mux_q = in_notcmp2741_pop23127_0;
            default : notcmp2741_pop23127_mux_q = 1'b0;
        endcase
    end

    // out_notcmp2741_pop23127(GPOUT,112)
    assign out_notcmp2741_pop23127 = notcmp2741_pop23127_mux_q;

    // notcmp2742_pop31144_mux(MUX,88)
    assign notcmp2742_pop31144_mux_s = in_valid_in_0;
    always @(notcmp2742_pop31144_mux_s or in_notcmp2742_pop31144_1 or in_notcmp2742_pop31144_0)
    begin
        unique case (notcmp2742_pop31144_mux_s)
            1'b0 : notcmp2742_pop31144_mux_q = in_notcmp2742_pop31144_1;
            1'b1 : notcmp2742_pop31144_mux_q = in_notcmp2742_pop31144_0;
            default : notcmp2742_pop31144_mux_q = 1'b0;
        endcase
    end

    // out_notcmp2742_pop31144(GPOUT,113)
    assign out_notcmp2742_pop31144 = notcmp2742_pop31144_mux_q;

    // notcmp2780_mux(MUX,89)
    assign notcmp2780_mux_s = in_valid_in_0;
    always @(notcmp2780_mux_s or in_notcmp2780_1 or in_notcmp2780_0)
    begin
        unique case (notcmp2780_mux_s)
            1'b0 : notcmp2780_mux_q = in_notcmp2780_1;
            1'b1 : notcmp2780_mux_q = in_notcmp2780_0;
            default : notcmp2780_mux_q = 1'b0;
        endcase
    end

    // out_notcmp2780(GPOUT,114)
    assign out_notcmp2780 = notcmp2780_mux_q;

    // output_im_addr_042_replace_phi32_pop16101_mux(MUX,123)
    assign output_im_addr_042_replace_phi32_pop16101_mux_s = in_valid_in_0;
    always @(output_im_addr_042_replace_phi32_pop16101_mux_s or in_output_im_addr_042_replace_phi32_pop16101_1 or in_output_im_addr_042_replace_phi32_pop16101_0)
    begin
        unique case (output_im_addr_042_replace_phi32_pop16101_mux_s)
            1'b0 : output_im_addr_042_replace_phi32_pop16101_mux_q = in_output_im_addr_042_replace_phi32_pop16101_1;
            1'b1 : output_im_addr_042_replace_phi32_pop16101_mux_q = in_output_im_addr_042_replace_phi32_pop16101_0;
            default : output_im_addr_042_replace_phi32_pop16101_mux_q = 64'b0;
        endcase
    end

    // out_output_im_addr_042_replace_phi32_pop16101(GPOUT,115)
    assign out_output_im_addr_042_replace_phi32_pop16101 = output_im_addr_042_replace_phi32_pop16101_mux_q;

    // output_im_addr_042_replace_phi33_pop21121_mux(MUX,124)
    assign output_im_addr_042_replace_phi33_pop21121_mux_s = in_valid_in_0;
    always @(output_im_addr_042_replace_phi33_pop21121_mux_s or in_output_im_addr_042_replace_phi33_pop21121_1 or in_output_im_addr_042_replace_phi33_pop21121_0)
    begin
        unique case (output_im_addr_042_replace_phi33_pop21121_mux_s)
            1'b0 : output_im_addr_042_replace_phi33_pop21121_mux_q = in_output_im_addr_042_replace_phi33_pop21121_1;
            1'b1 : output_im_addr_042_replace_phi33_pop21121_mux_q = in_output_im_addr_042_replace_phi33_pop21121_0;
            default : output_im_addr_042_replace_phi33_pop21121_mux_q = 64'b0;
        endcase
    end

    // out_output_im_addr_042_replace_phi33_pop21121(GPOUT,116)
    assign out_output_im_addr_042_replace_phi33_pop21121 = output_im_addr_042_replace_phi33_pop21121_mux_q;

    // output_im_addr_042_replace_phi34_pop29142_mux(MUX,125)
    assign output_im_addr_042_replace_phi34_pop29142_mux_s = in_valid_in_0;
    always @(output_im_addr_042_replace_phi34_pop29142_mux_s or in_output_im_addr_042_replace_phi34_pop29142_1 or in_output_im_addr_042_replace_phi34_pop29142_0)
    begin
        unique case (output_im_addr_042_replace_phi34_pop29142_mux_s)
            1'b0 : output_im_addr_042_replace_phi34_pop29142_mux_q = in_output_im_addr_042_replace_phi34_pop29142_1;
            1'b1 : output_im_addr_042_replace_phi34_pop29142_mux_q = in_output_im_addr_042_replace_phi34_pop29142_0;
            default : output_im_addr_042_replace_phi34_pop29142_mux_q = 64'b0;
        endcase
    end

    // out_output_im_addr_042_replace_phi34_pop29142(GPOUT,117)
    assign out_output_im_addr_042_replace_phi34_pop29142 = output_im_addr_042_replace_phi34_pop29142_mux_q;

    // output_im_addr_042_replace_phi66_mux(MUX,126)
    assign output_im_addr_042_replace_phi66_mux_s = in_valid_in_0;
    always @(output_im_addr_042_replace_phi66_mux_s or in_output_im_addr_042_replace_phi66_1 or in_output_im_addr_042_replace_phi66_0)
    begin
        unique case (output_im_addr_042_replace_phi66_mux_s)
            1'b0 : output_im_addr_042_replace_phi66_mux_q = in_output_im_addr_042_replace_phi66_1;
            1'b1 : output_im_addr_042_replace_phi66_mux_q = in_output_im_addr_042_replace_phi66_0;
            default : output_im_addr_042_replace_phi66_mux_q = 64'b0;
        endcase
    end

    // out_output_im_addr_042_replace_phi66(GPOUT,118)
    assign out_output_im_addr_042_replace_phi66 = output_im_addr_042_replace_phi66_mux_q;

    // valid_or(LOGICAL,130)
    assign valid_or_q = in_valid_in_0 | in_valid_in_1;

    // stall_out(LOGICAL,127)
    assign stall_out_q = valid_or_q & in_stall_in;

    // out_stall_out_0(GPOUT,119)
    assign out_stall_out_0 = stall_out_q;

    // stall_out_1_specific(LOGICAL,128)
    assign stall_out_1_specific_q = in_valid_in_0 | stall_out_q;

    // out_stall_out_1(GPOUT,120)
    assign out_stall_out_1 = stall_out_1_specific_q;

    // unnamed_maxpool2d14_mux(MUX,129)
    assign unnamed_maxpool2d14_mux_s = in_valid_in_0;
    always @(unnamed_maxpool2d14_mux_s or in_unnamed_maxpool2d14_1 or in_unnamed_maxpool2d14_0)
    begin
        unique case (unnamed_maxpool2d14_mux_s)
            1'b0 : unnamed_maxpool2d14_mux_q = in_unnamed_maxpool2d14_1;
            1'b1 : unnamed_maxpool2d14_mux_q = in_unnamed_maxpool2d14_0;
            default : unnamed_maxpool2d14_mux_q = 1'b0;
        endcase
    end

    // out_unnamed_maxpool2d14(GPOUT,121)
    assign out_unnamed_maxpool2d14 = unnamed_maxpool2d14_mux_q;

    // out_valid_out(GPOUT,122)
    assign out_valid_out = valid_or_q;

endmodule
