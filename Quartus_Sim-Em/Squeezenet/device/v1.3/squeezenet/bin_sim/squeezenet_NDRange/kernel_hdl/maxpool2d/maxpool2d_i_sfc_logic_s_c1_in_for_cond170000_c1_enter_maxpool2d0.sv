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

// SystemVerilog created from maxpool2d_i_sfc_logic_s_c1_in_for_cond170000_c1_enter_maxpool2d0
// SystemVerilog created on Tue Jun  6 18:45:14 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module maxpool2d_i_sfc_logic_s_c1_in_for_cond170000_c1_enter_maxpool2d0 (
    output wire [0:0] out_c1_exi1_0_tpl,
    output wire [31:0] out_c1_exi1_1_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_maxpool2d0,
    input wire [0:0] in_c1_eni2_0_tpl,
    input wire [31:0] in_c1_eni2_1_tpl,
    input wire [31:0] in_c1_eni2_2_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [0:0] i_unnamed_maxpool2d3_s;
    reg [31:0] i_unnamed_maxpool2d3_q;
    wire [7:0] cstAllOWE_uid9_i_cmp27_maxpool2d2_q;
    wire [22:0] cstZeroWF_uid10_i_cmp27_maxpool2d2_q;
    wire [7:0] cstAllZWE_uid11_i_cmp27_maxpool2d2_q;
    wire [7:0] exp_x_uid12_i_cmp27_maxpool2d2_b;
    wire [22:0] frac_x_uid13_i_cmp27_maxpool2d2_b;
    wire [0:0] expXIsZero_uid14_i_cmp27_maxpool2d2_q;
    wire [0:0] expXIsMax_uid15_i_cmp27_maxpool2d2_q;
    wire [0:0] fracXIsZero_uid16_i_cmp27_maxpool2d2_q;
    wire [0:0] fracXIsNotZero_uid17_i_cmp27_maxpool2d2_q;
    wire [0:0] excZ_x_uid18_i_cmp27_maxpool2d2_q;
    wire [0:0] excN_x_uid20_i_cmp27_maxpool2d2_q;
    wire [7:0] exp_y_uid29_i_cmp27_maxpool2d2_b;
    wire [22:0] frac_y_uid30_i_cmp27_maxpool2d2_b;
    wire [0:0] expXIsZero_uid31_i_cmp27_maxpool2d2_q;
    wire [0:0] expXIsMax_uid32_i_cmp27_maxpool2d2_q;
    wire [0:0] fracXIsZero_uid33_i_cmp27_maxpool2d2_q;
    wire [0:0] fracXIsNotZero_uid34_i_cmp27_maxpool2d2_q;
    wire [0:0] excZ_y_uid35_i_cmp27_maxpool2d2_q;
    wire [0:0] excN_y_uid37_i_cmp27_maxpool2d2_q;
    wire [0:0] oneIsNaN_uid43_i_cmp27_maxpool2d2_qi;
    reg [0:0] oneIsNaN_uid43_i_cmp27_maxpool2d2_q;
    wire [30:0] expFracX_uid48_i_cmp27_maxpool2d2_q;
    wire [30:0] expFracY_uid50_i_cmp27_maxpool2d2_q;
    wire [32:0] efxGTefy_uid52_i_cmp27_maxpool2d2_a;
    wire [32:0] efxGTefy_uid52_i_cmp27_maxpool2d2_b;
    logic [32:0] efxGTefy_uid52_i_cmp27_maxpool2d2_o;
    wire [0:0] efxGTefy_uid52_i_cmp27_maxpool2d2_c;
    wire [32:0] efxLTefy_uid53_i_cmp27_maxpool2d2_a;
    wire [32:0] efxLTefy_uid53_i_cmp27_maxpool2d2_b;
    logic [32:0] efxLTefy_uid53_i_cmp27_maxpool2d2_o;
    wire [0:0] efxLTefy_uid53_i_cmp27_maxpool2d2_c;
    wire [0:0] signX_uid57_i_cmp27_maxpool2d2_b;
    wire [0:0] signY_uid58_i_cmp27_maxpool2d2_b;
    wire [1:0] two_uid59_i_cmp27_maxpool2d2_q;
    wire [1:0] concSXSY_uid60_i_cmp27_maxpool2d2_q;
    wire [0:0] sxLTsy_uid61_i_cmp27_maxpool2d2_q;
    wire [0:0] xorSigns_uid62_i_cmp27_maxpool2d2_q;
    wire [0:0] sxEQsy_uid63_i_cmp27_maxpool2d2_q;
    wire [0:0] expFracCompMux_uid64_i_cmp27_maxpool2d2_s;
    reg [0:0] expFracCompMux_uid64_i_cmp27_maxpool2d2_q;
    wire [0:0] invExcYZ_uid65_i_cmp27_maxpool2d2_q;
    wire [0:0] invExcXZ_uid66_i_cmp27_maxpool2d2_q;
    wire [0:0] oneNonZero_uid67_i_cmp27_maxpool2d2_q;
    wire [0:0] rc2_uid68_i_cmp27_maxpool2d2_q;
    wire [0:0] sxEQsyExpFracCompMux_uid69_i_cmp27_maxpool2d2_q;
    wire [0:0] r_uid70_i_cmp27_maxpool2d2_qi;
    reg [0:0] r_uid70_i_cmp27_maxpool2d2_q;
    wire [0:0] rPostExc_uid71_i_cmp27_maxpool2d2_s;
    reg [0:0] rPostExc_uid71_i_cmp27_maxpool2d2_q;
    reg [31:0] redist0_sync_together8_aunroll_x_in_c1_eni2_1_tpl_1_q;
    reg [31:0] redist1_sync_together8_aunroll_x_in_c1_eni2_2_tpl_1_q;
    reg [0:0] redist2_sync_together8_aunroll_x_in_i_valid_1_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist2_sync_together8_aunroll_x_in_i_valid_1(DELAY,74)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_sync_together8_aunroll_x_in_i_valid_1_q <= '0;
        end
        else
        begin
            redist2_sync_together8_aunroll_x_in_i_valid_1_q <= $unsigned(in_i_valid);
        end
    end

    // redist0_sync_together8_aunroll_x_in_c1_eni2_1_tpl_1(DELAY,72)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_sync_together8_aunroll_x_in_c1_eni2_1_tpl_1_q <= '0;
        end
        else
        begin
            redist0_sync_together8_aunroll_x_in_c1_eni2_1_tpl_1_q <= $unsigned(in_c1_eni2_1_tpl);
        end
    end

    // redist1_sync_together8_aunroll_x_in_c1_eni2_2_tpl_1(DELAY,73)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together8_aunroll_x_in_c1_eni2_2_tpl_1_q <= '0;
        end
        else
        begin
            redist1_sync_together8_aunroll_x_in_c1_eni2_2_tpl_1_q <= $unsigned(in_c1_eni2_2_tpl);
        end
    end

    // frac_y_uid30_i_cmp27_maxpool2d2(BITSELECT,29)@156
    assign frac_y_uid30_i_cmp27_maxpool2d2_b = in_c1_eni2_1_tpl[22:0];

    // cstZeroWF_uid10_i_cmp27_maxpool2d2(CONSTANT,9)
    assign cstZeroWF_uid10_i_cmp27_maxpool2d2_q = $unsigned(23'b00000000000000000000000);

    // fracXIsZero_uid33_i_cmp27_maxpool2d2(LOGICAL,32)@156
    assign fracXIsZero_uid33_i_cmp27_maxpool2d2_q = $unsigned(cstZeroWF_uid10_i_cmp27_maxpool2d2_q == frac_y_uid30_i_cmp27_maxpool2d2_b ? 1'b1 : 1'b0);

    // cstAllZWE_uid11_i_cmp27_maxpool2d2(CONSTANT,10)
    assign cstAllZWE_uid11_i_cmp27_maxpool2d2_q = $unsigned(8'b00000000);

    // exp_y_uid29_i_cmp27_maxpool2d2(BITSELECT,28)@156
    assign exp_y_uid29_i_cmp27_maxpool2d2_b = in_c1_eni2_1_tpl[30:23];

    // expXIsZero_uid31_i_cmp27_maxpool2d2(LOGICAL,30)@156
    assign expXIsZero_uid31_i_cmp27_maxpool2d2_q = $unsigned(exp_y_uid29_i_cmp27_maxpool2d2_b == cstAllZWE_uid11_i_cmp27_maxpool2d2_q ? 1'b1 : 1'b0);

    // excZ_y_uid35_i_cmp27_maxpool2d2(LOGICAL,34)@156
    assign excZ_y_uid35_i_cmp27_maxpool2d2_q = expXIsZero_uid31_i_cmp27_maxpool2d2_q & fracXIsZero_uid33_i_cmp27_maxpool2d2_q;

    // invExcYZ_uid65_i_cmp27_maxpool2d2(LOGICAL,64)@156
    assign invExcYZ_uid65_i_cmp27_maxpool2d2_q = ~ (excZ_y_uid35_i_cmp27_maxpool2d2_q);

    // frac_x_uid13_i_cmp27_maxpool2d2(BITSELECT,12)@156
    assign frac_x_uid13_i_cmp27_maxpool2d2_b = in_c1_eni2_2_tpl[22:0];

    // fracXIsZero_uid16_i_cmp27_maxpool2d2(LOGICAL,15)@156
    assign fracXIsZero_uid16_i_cmp27_maxpool2d2_q = $unsigned(cstZeroWF_uid10_i_cmp27_maxpool2d2_q == frac_x_uid13_i_cmp27_maxpool2d2_b ? 1'b1 : 1'b0);

    // exp_x_uid12_i_cmp27_maxpool2d2(BITSELECT,11)@156
    assign exp_x_uid12_i_cmp27_maxpool2d2_b = in_c1_eni2_2_tpl[30:23];

    // expXIsZero_uid14_i_cmp27_maxpool2d2(LOGICAL,13)@156
    assign expXIsZero_uid14_i_cmp27_maxpool2d2_q = $unsigned(exp_x_uid12_i_cmp27_maxpool2d2_b == cstAllZWE_uid11_i_cmp27_maxpool2d2_q ? 1'b1 : 1'b0);

    // excZ_x_uid18_i_cmp27_maxpool2d2(LOGICAL,17)@156
    assign excZ_x_uid18_i_cmp27_maxpool2d2_q = expXIsZero_uid14_i_cmp27_maxpool2d2_q & fracXIsZero_uid16_i_cmp27_maxpool2d2_q;

    // invExcXZ_uid66_i_cmp27_maxpool2d2(LOGICAL,65)@156
    assign invExcXZ_uid66_i_cmp27_maxpool2d2_q = ~ (excZ_x_uid18_i_cmp27_maxpool2d2_q);

    // oneNonZero_uid67_i_cmp27_maxpool2d2(LOGICAL,66)@156
    assign oneNonZero_uid67_i_cmp27_maxpool2d2_q = invExcXZ_uid66_i_cmp27_maxpool2d2_q | invExcYZ_uid65_i_cmp27_maxpool2d2_q;

    // two_uid59_i_cmp27_maxpool2d2(CONSTANT,58)
    assign two_uid59_i_cmp27_maxpool2d2_q = $unsigned(2'b10);

    // signX_uid57_i_cmp27_maxpool2d2(BITSELECT,56)@156
    assign signX_uid57_i_cmp27_maxpool2d2_b = $unsigned(in_c1_eni2_2_tpl[31:31]);

    // signY_uid58_i_cmp27_maxpool2d2(BITSELECT,57)@156
    assign signY_uid58_i_cmp27_maxpool2d2_b = $unsigned(in_c1_eni2_1_tpl[31:31]);

    // concSXSY_uid60_i_cmp27_maxpool2d2(BITJOIN,59)@156
    assign concSXSY_uid60_i_cmp27_maxpool2d2_q = {signX_uid57_i_cmp27_maxpool2d2_b, signY_uid58_i_cmp27_maxpool2d2_b};

    // sxLTsy_uid61_i_cmp27_maxpool2d2(LOGICAL,60)@156
    assign sxLTsy_uid61_i_cmp27_maxpool2d2_q = $unsigned(concSXSY_uid60_i_cmp27_maxpool2d2_q == two_uid59_i_cmp27_maxpool2d2_q ? 1'b1 : 1'b0);

    // rc2_uid68_i_cmp27_maxpool2d2(LOGICAL,67)@156
    assign rc2_uid68_i_cmp27_maxpool2d2_q = sxLTsy_uid61_i_cmp27_maxpool2d2_q & oneNonZero_uid67_i_cmp27_maxpool2d2_q;

    // expFracX_uid48_i_cmp27_maxpool2d2(BITJOIN,47)@156
    assign expFracX_uid48_i_cmp27_maxpool2d2_q = {exp_x_uid12_i_cmp27_maxpool2d2_b, frac_x_uid13_i_cmp27_maxpool2d2_b};

    // expFracY_uid50_i_cmp27_maxpool2d2(BITJOIN,49)@156
    assign expFracY_uid50_i_cmp27_maxpool2d2_q = {exp_y_uid29_i_cmp27_maxpool2d2_b, frac_y_uid30_i_cmp27_maxpool2d2_b};

    // efxGTefy_uid52_i_cmp27_maxpool2d2(COMPARE,51)@156
    assign efxGTefy_uid52_i_cmp27_maxpool2d2_a = {2'b00, expFracY_uid50_i_cmp27_maxpool2d2_q};
    assign efxGTefy_uid52_i_cmp27_maxpool2d2_b = {2'b00, expFracX_uid48_i_cmp27_maxpool2d2_q};
    assign efxGTefy_uid52_i_cmp27_maxpool2d2_o = $unsigned(efxGTefy_uid52_i_cmp27_maxpool2d2_a) - $unsigned(efxGTefy_uid52_i_cmp27_maxpool2d2_b);
    assign efxGTefy_uid52_i_cmp27_maxpool2d2_c[0] = efxGTefy_uid52_i_cmp27_maxpool2d2_o[32];

    // efxLTefy_uid53_i_cmp27_maxpool2d2(COMPARE,52)@156
    assign efxLTefy_uid53_i_cmp27_maxpool2d2_a = {2'b00, expFracX_uid48_i_cmp27_maxpool2d2_q};
    assign efxLTefy_uid53_i_cmp27_maxpool2d2_b = {2'b00, expFracY_uid50_i_cmp27_maxpool2d2_q};
    assign efxLTefy_uid53_i_cmp27_maxpool2d2_o = $unsigned(efxLTefy_uid53_i_cmp27_maxpool2d2_a) - $unsigned(efxLTefy_uid53_i_cmp27_maxpool2d2_b);
    assign efxLTefy_uid53_i_cmp27_maxpool2d2_c[0] = efxLTefy_uid53_i_cmp27_maxpool2d2_o[32];

    // expFracCompMux_uid64_i_cmp27_maxpool2d2(MUX,63)@156
    assign expFracCompMux_uid64_i_cmp27_maxpool2d2_s = signX_uid57_i_cmp27_maxpool2d2_b;
    always @(expFracCompMux_uid64_i_cmp27_maxpool2d2_s or efxLTefy_uid53_i_cmp27_maxpool2d2_c or efxGTefy_uid52_i_cmp27_maxpool2d2_c)
    begin
        unique case (expFracCompMux_uid64_i_cmp27_maxpool2d2_s)
            1'b0 : expFracCompMux_uid64_i_cmp27_maxpool2d2_q = efxLTefy_uid53_i_cmp27_maxpool2d2_c;
            1'b1 : expFracCompMux_uid64_i_cmp27_maxpool2d2_q = efxGTefy_uid52_i_cmp27_maxpool2d2_c;
            default : expFracCompMux_uid64_i_cmp27_maxpool2d2_q = 1'b0;
        endcase
    end

    // xorSigns_uid62_i_cmp27_maxpool2d2(LOGICAL,61)@156
    assign xorSigns_uid62_i_cmp27_maxpool2d2_q = signX_uid57_i_cmp27_maxpool2d2_b ^ signY_uid58_i_cmp27_maxpool2d2_b;

    // sxEQsy_uid63_i_cmp27_maxpool2d2(LOGICAL,62)@156
    assign sxEQsy_uid63_i_cmp27_maxpool2d2_q = ~ (xorSigns_uid62_i_cmp27_maxpool2d2_q);

    // sxEQsyExpFracCompMux_uid69_i_cmp27_maxpool2d2(LOGICAL,68)@156
    assign sxEQsyExpFracCompMux_uid69_i_cmp27_maxpool2d2_q = sxEQsy_uid63_i_cmp27_maxpool2d2_q & expFracCompMux_uid64_i_cmp27_maxpool2d2_q;

    // r_uid70_i_cmp27_maxpool2d2(LOGICAL,69)@156 + 1
    assign r_uid70_i_cmp27_maxpool2d2_qi = sxEQsyExpFracCompMux_uid69_i_cmp27_maxpool2d2_q | rc2_uid68_i_cmp27_maxpool2d2_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    r_uid70_i_cmp27_maxpool2d2_delay ( .xin(r_uid70_i_cmp27_maxpool2d2_qi), .xout(r_uid70_i_cmp27_maxpool2d2_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // fracXIsNotZero_uid34_i_cmp27_maxpool2d2(LOGICAL,33)@156
    assign fracXIsNotZero_uid34_i_cmp27_maxpool2d2_q = ~ (fracXIsZero_uid33_i_cmp27_maxpool2d2_q);

    // cstAllOWE_uid9_i_cmp27_maxpool2d2(CONSTANT,8)
    assign cstAllOWE_uid9_i_cmp27_maxpool2d2_q = $unsigned(8'b11111111);

    // expXIsMax_uid32_i_cmp27_maxpool2d2(LOGICAL,31)@156
    assign expXIsMax_uid32_i_cmp27_maxpool2d2_q = $unsigned(exp_y_uid29_i_cmp27_maxpool2d2_b == cstAllOWE_uid9_i_cmp27_maxpool2d2_q ? 1'b1 : 1'b0);

    // excN_y_uid37_i_cmp27_maxpool2d2(LOGICAL,36)@156
    assign excN_y_uid37_i_cmp27_maxpool2d2_q = expXIsMax_uid32_i_cmp27_maxpool2d2_q & fracXIsNotZero_uid34_i_cmp27_maxpool2d2_q;

    // fracXIsNotZero_uid17_i_cmp27_maxpool2d2(LOGICAL,16)@156
    assign fracXIsNotZero_uid17_i_cmp27_maxpool2d2_q = ~ (fracXIsZero_uid16_i_cmp27_maxpool2d2_q);

    // expXIsMax_uid15_i_cmp27_maxpool2d2(LOGICAL,14)@156
    assign expXIsMax_uid15_i_cmp27_maxpool2d2_q = $unsigned(exp_x_uid12_i_cmp27_maxpool2d2_b == cstAllOWE_uid9_i_cmp27_maxpool2d2_q ? 1'b1 : 1'b0);

    // excN_x_uid20_i_cmp27_maxpool2d2(LOGICAL,19)@156
    assign excN_x_uid20_i_cmp27_maxpool2d2_q = expXIsMax_uid15_i_cmp27_maxpool2d2_q & fracXIsNotZero_uid17_i_cmp27_maxpool2d2_q;

    // oneIsNaN_uid43_i_cmp27_maxpool2d2(LOGICAL,42)@156 + 1
    assign oneIsNaN_uid43_i_cmp27_maxpool2d2_qi = excN_x_uid20_i_cmp27_maxpool2d2_q | excN_y_uid37_i_cmp27_maxpool2d2_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    oneIsNaN_uid43_i_cmp27_maxpool2d2_delay ( .xin(oneIsNaN_uid43_i_cmp27_maxpool2d2_qi), .xout(oneIsNaN_uid43_i_cmp27_maxpool2d2_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // rPostExc_uid71_i_cmp27_maxpool2d2(MUX,70)@157
    assign rPostExc_uid71_i_cmp27_maxpool2d2_s = oneIsNaN_uid43_i_cmp27_maxpool2d2_q;
    always @(rPostExc_uid71_i_cmp27_maxpool2d2_s or r_uid70_i_cmp27_maxpool2d2_q or GND_q)
    begin
        unique case (rPostExc_uid71_i_cmp27_maxpool2d2_s)
            1'b0 : rPostExc_uid71_i_cmp27_maxpool2d2_q = r_uid70_i_cmp27_maxpool2d2_q;
            1'b1 : rPostExc_uid71_i_cmp27_maxpool2d2_q = GND_q;
            default : rPostExc_uid71_i_cmp27_maxpool2d2_q = 1'b0;
        endcase
    end

    // i_unnamed_maxpool2d3(MUX,4)@157
    assign i_unnamed_maxpool2d3_s = rPostExc_uid71_i_cmp27_maxpool2d2_q;
    always @(i_unnamed_maxpool2d3_s or redist1_sync_together8_aunroll_x_in_c1_eni2_2_tpl_1_q or redist0_sync_together8_aunroll_x_in_c1_eni2_1_tpl_1_q)
    begin
        unique case (i_unnamed_maxpool2d3_s)
            1'b0 : i_unnamed_maxpool2d3_q = redist1_sync_together8_aunroll_x_in_c1_eni2_2_tpl_1_q;
            1'b1 : i_unnamed_maxpool2d3_q = redist0_sync_together8_aunroll_x_in_c1_eni2_1_tpl_1_q;
            default : i_unnamed_maxpool2d3_q = 32'b0;
        endcase
    end

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // sync_out_aunroll_x(GPOUT,6)@157
    assign out_c1_exi1_0_tpl = GND_q;
    assign out_c1_exi1_1_tpl = i_unnamed_maxpool2d3_q;
    assign out_o_valid = redist2_sync_together8_aunroll_x_in_i_valid_1_q;
    assign out_unnamed_maxpool2d0 = GND_q;

endmodule
