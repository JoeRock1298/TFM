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

// SystemVerilog created from conv2d3x3_i_sfc_logic_s_c0_in_for_cond_c0000_enter199_conv2d3x30
// SystemVerilog created on Tue Jun  6 18:45:14 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2d3x3_i_sfc_logic_s_c0_in_for_cond_c0000_enter199_conv2d3x30 (
    output wire [0:0] out_c0_exi1202_0_tpl,
    output wire [31:0] out_c0_exi1202_1_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_conv2d3x31,
    input wire [0:0] in_c0_eni3_0_tpl,
    input wire [0:0] in_c0_eni3_1_tpl,
    input wire [31:0] in_c0_eni3_2_tpl,
    input wire [31:0] in_c0_eni3_3_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] c_float_0_000000e_007_q;
    wire [0:0] i_narrow_sel_conv2d3x34_s;
    reg [31:0] i_narrow_sel_conv2d3x34_q;
    wire [0:0] i_tmp_0_lcssa_select_conv2d3x32_s;
    reg [31:0] i_tmp_0_lcssa_select_conv2d3x32_q;
    wire [7:0] cstAllOWE_uid11_i_cmp60_conv2d3x33_q;
    wire [22:0] cstZeroWF_uid12_i_cmp60_conv2d3x33_q;
    wire [7:0] cstAllZWE_uid13_i_cmp60_conv2d3x33_q;
    wire [7:0] exp_x_uid14_i_cmp60_conv2d3x33_b;
    wire [22:0] frac_x_uid15_i_cmp60_conv2d3x33_b;
    wire [0:0] expXIsZero_uid16_i_cmp60_conv2d3x33_q;
    wire [0:0] expXIsMax_uid17_i_cmp60_conv2d3x33_q;
    wire [0:0] fracXIsZero_uid18_i_cmp60_conv2d3x33_q;
    wire [0:0] fracXIsNotZero_uid19_i_cmp60_conv2d3x33_q;
    wire [0:0] excZ_x_uid20_i_cmp60_conv2d3x33_q;
    wire [0:0] excN_x_uid22_i_cmp60_conv2d3x33_q;
    wire [7:0] exp_y_uid31_i_cmp60_conv2d3x33_b;
    wire [22:0] frac_y_uid32_i_cmp60_conv2d3x33_b;
    wire [0:0] expXIsZero_uid33_i_cmp60_conv2d3x33_q;
    wire [0:0] expXIsMax_uid34_i_cmp60_conv2d3x33_q;
    wire [0:0] fracXIsZero_uid35_i_cmp60_conv2d3x33_q;
    wire [0:0] fracXIsNotZero_uid36_i_cmp60_conv2d3x33_q;
    wire [0:0] excZ_y_uid37_i_cmp60_conv2d3x33_q;
    wire [0:0] excN_y_uid39_i_cmp60_conv2d3x33_q;
    wire [0:0] oneIsNaN_uid45_i_cmp60_conv2d3x33_qi;
    reg [0:0] oneIsNaN_uid45_i_cmp60_conv2d3x33_q;
    wire [30:0] expFracX_uid50_i_cmp60_conv2d3x33_q;
    wire [30:0] expFracY_uid52_i_cmp60_conv2d3x33_q;
    wire [32:0] efxGTefy_uid54_i_cmp60_conv2d3x33_a;
    wire [32:0] efxGTefy_uid54_i_cmp60_conv2d3x33_b;
    logic [32:0] efxGTefy_uid54_i_cmp60_conv2d3x33_o;
    wire [0:0] efxGTefy_uid54_i_cmp60_conv2d3x33_c;
    wire [32:0] efxLTefy_uid55_i_cmp60_conv2d3x33_a;
    wire [32:0] efxLTefy_uid55_i_cmp60_conv2d3x33_b;
    logic [32:0] efxLTefy_uid55_i_cmp60_conv2d3x33_o;
    wire [0:0] efxLTefy_uid55_i_cmp60_conv2d3x33_c;
    wire [0:0] signX_uid59_i_cmp60_conv2d3x33_b;
    wire [0:0] signY_uid60_i_cmp60_conv2d3x33_b;
    wire [1:0] two_uid61_i_cmp60_conv2d3x33_q;
    wire [1:0] concSXSY_uid62_i_cmp60_conv2d3x33_q;
    wire [0:0] sxLTsy_uid63_i_cmp60_conv2d3x33_q;
    wire [0:0] xorSigns_uid64_i_cmp60_conv2d3x33_q;
    wire [0:0] sxEQsy_uid65_i_cmp60_conv2d3x33_q;
    wire [0:0] expFracCompMux_uid66_i_cmp60_conv2d3x33_s;
    reg [0:0] expFracCompMux_uid66_i_cmp60_conv2d3x33_q;
    wire [0:0] invExcYZ_uid67_i_cmp60_conv2d3x33_q;
    wire [0:0] invExcXZ_uid68_i_cmp60_conv2d3x33_q;
    wire [0:0] oneNonZero_uid69_i_cmp60_conv2d3x33_q;
    wire [0:0] rc2_uid70_i_cmp60_conv2d3x33_qi;
    reg [0:0] rc2_uid70_i_cmp60_conv2d3x33_q;
    wire [0:0] sxEQsyExpFracCompMux_uid71_i_cmp60_conv2d3x33_qi;
    reg [0:0] sxEQsyExpFracCompMux_uid71_i_cmp60_conv2d3x33_q;
    wire [0:0] r_uid72_i_cmp60_conv2d3x33_q;
    wire [0:0] rPostExc_uid73_i_cmp60_conv2d3x33_s;
    reg [0:0] rPostExc_uid73_i_cmp60_conv2d3x33_q;
    reg [0:0] redist0_sync_together9_aunroll_x_in_i_valid_1_q;
    reg [31:0] redist1_i_tmp_0_lcssa_select_conv2d3x32_q_1_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist0_sync_together9_aunroll_x_in_i_valid_1(DELAY,74)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_sync_together9_aunroll_x_in_i_valid_1_q <= '0;
        end
        else
        begin
            redist0_sync_together9_aunroll_x_in_i_valid_1_q <= $unsigned(in_i_valid);
        end
    end

    // i_tmp_0_lcssa_select_conv2d3x32(MUX,6)@0
    assign i_tmp_0_lcssa_select_conv2d3x32_s = in_c0_eni3_1_tpl;
    always @(i_tmp_0_lcssa_select_conv2d3x32_s or in_c0_eni3_3_tpl or in_c0_eni3_2_tpl)
    begin
        unique case (i_tmp_0_lcssa_select_conv2d3x32_s)
            1'b0 : i_tmp_0_lcssa_select_conv2d3x32_q = in_c0_eni3_3_tpl;
            1'b1 : i_tmp_0_lcssa_select_conv2d3x32_q = in_c0_eni3_2_tpl;
            default : i_tmp_0_lcssa_select_conv2d3x32_q = 32'b0;
        endcase
    end

    // redist1_i_tmp_0_lcssa_select_conv2d3x32_q_1(DELAY,75)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_i_tmp_0_lcssa_select_conv2d3x32_q_1_q <= '0;
        end
        else
        begin
            redist1_i_tmp_0_lcssa_select_conv2d3x32_q_1_q <= $unsigned(i_tmp_0_lcssa_select_conv2d3x32_q);
        end
    end

    // c_float_0_000000e_007(FLOATCONSTANT,2)
    assign c_float_0_000000e_007_q = $unsigned(32'b00000000000000000000000000000000);

    // frac_y_uid32_i_cmp60_conv2d3x33(BITSELECT,31)@0
    assign frac_y_uid32_i_cmp60_conv2d3x33_b = i_tmp_0_lcssa_select_conv2d3x32_q[22:0];

    // cstZeroWF_uid12_i_cmp60_conv2d3x33(CONSTANT,11)
    assign cstZeroWF_uid12_i_cmp60_conv2d3x33_q = $unsigned(23'b00000000000000000000000);

    // fracXIsZero_uid35_i_cmp60_conv2d3x33(LOGICAL,34)@0
    assign fracXIsZero_uid35_i_cmp60_conv2d3x33_q = $unsigned(cstZeroWF_uid12_i_cmp60_conv2d3x33_q == frac_y_uid32_i_cmp60_conv2d3x33_b ? 1'b1 : 1'b0);

    // cstAllZWE_uid13_i_cmp60_conv2d3x33(CONSTANT,12)
    assign cstAllZWE_uid13_i_cmp60_conv2d3x33_q = $unsigned(8'b00000000);

    // exp_y_uid31_i_cmp60_conv2d3x33(BITSELECT,30)@0
    assign exp_y_uid31_i_cmp60_conv2d3x33_b = i_tmp_0_lcssa_select_conv2d3x32_q[30:23];

    // expXIsZero_uid33_i_cmp60_conv2d3x33(LOGICAL,32)@0
    assign expXIsZero_uid33_i_cmp60_conv2d3x33_q = $unsigned(exp_y_uid31_i_cmp60_conv2d3x33_b == cstAllZWE_uid13_i_cmp60_conv2d3x33_q ? 1'b1 : 1'b0);

    // excZ_y_uid37_i_cmp60_conv2d3x33(LOGICAL,36)@0
    assign excZ_y_uid37_i_cmp60_conv2d3x33_q = expXIsZero_uid33_i_cmp60_conv2d3x33_q & fracXIsZero_uid35_i_cmp60_conv2d3x33_q;

    // invExcYZ_uid67_i_cmp60_conv2d3x33(LOGICAL,66)@0
    assign invExcYZ_uid67_i_cmp60_conv2d3x33_q = ~ (excZ_y_uid37_i_cmp60_conv2d3x33_q);

    // frac_x_uid15_i_cmp60_conv2d3x33(BITSELECT,14)@0
    assign frac_x_uid15_i_cmp60_conv2d3x33_b = c_float_0_000000e_007_q[22:0];

    // fracXIsZero_uid18_i_cmp60_conv2d3x33(LOGICAL,17)@0
    assign fracXIsZero_uid18_i_cmp60_conv2d3x33_q = $unsigned(cstZeroWF_uid12_i_cmp60_conv2d3x33_q == frac_x_uid15_i_cmp60_conv2d3x33_b ? 1'b1 : 1'b0);

    // exp_x_uid14_i_cmp60_conv2d3x33(BITSELECT,13)@0
    assign exp_x_uid14_i_cmp60_conv2d3x33_b = c_float_0_000000e_007_q[30:23];

    // expXIsZero_uid16_i_cmp60_conv2d3x33(LOGICAL,15)@0
    assign expXIsZero_uid16_i_cmp60_conv2d3x33_q = $unsigned(exp_x_uid14_i_cmp60_conv2d3x33_b == cstAllZWE_uid13_i_cmp60_conv2d3x33_q ? 1'b1 : 1'b0);

    // excZ_x_uid20_i_cmp60_conv2d3x33(LOGICAL,19)@0
    assign excZ_x_uid20_i_cmp60_conv2d3x33_q = expXIsZero_uid16_i_cmp60_conv2d3x33_q & fracXIsZero_uid18_i_cmp60_conv2d3x33_q;

    // invExcXZ_uid68_i_cmp60_conv2d3x33(LOGICAL,67)@0
    assign invExcXZ_uid68_i_cmp60_conv2d3x33_q = ~ (excZ_x_uid20_i_cmp60_conv2d3x33_q);

    // oneNonZero_uid69_i_cmp60_conv2d3x33(LOGICAL,68)@0
    assign oneNonZero_uid69_i_cmp60_conv2d3x33_q = invExcXZ_uid68_i_cmp60_conv2d3x33_q | invExcYZ_uid67_i_cmp60_conv2d3x33_q;

    // two_uid61_i_cmp60_conv2d3x33(CONSTANT,60)
    assign two_uid61_i_cmp60_conv2d3x33_q = $unsigned(2'b10);

    // signX_uid59_i_cmp60_conv2d3x33(BITSELECT,58)@0
    assign signX_uid59_i_cmp60_conv2d3x33_b = $unsigned(c_float_0_000000e_007_q[31:31]);

    // signY_uid60_i_cmp60_conv2d3x33(BITSELECT,59)@0
    assign signY_uid60_i_cmp60_conv2d3x33_b = $unsigned(i_tmp_0_lcssa_select_conv2d3x32_q[31:31]);

    // concSXSY_uid62_i_cmp60_conv2d3x33(BITJOIN,61)@0
    assign concSXSY_uid62_i_cmp60_conv2d3x33_q = {signX_uid59_i_cmp60_conv2d3x33_b, signY_uid60_i_cmp60_conv2d3x33_b};

    // sxLTsy_uid63_i_cmp60_conv2d3x33(LOGICAL,62)@0
    assign sxLTsy_uid63_i_cmp60_conv2d3x33_q = $unsigned(concSXSY_uid62_i_cmp60_conv2d3x33_q == two_uid61_i_cmp60_conv2d3x33_q ? 1'b1 : 1'b0);

    // rc2_uid70_i_cmp60_conv2d3x33(LOGICAL,69)@0 + 1
    assign rc2_uid70_i_cmp60_conv2d3x33_qi = sxLTsy_uid63_i_cmp60_conv2d3x33_q & oneNonZero_uid69_i_cmp60_conv2d3x33_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    rc2_uid70_i_cmp60_conv2d3x33_delay ( .xin(rc2_uid70_i_cmp60_conv2d3x33_qi), .xout(rc2_uid70_i_cmp60_conv2d3x33_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // expFracX_uid50_i_cmp60_conv2d3x33(BITJOIN,49)@0
    assign expFracX_uid50_i_cmp60_conv2d3x33_q = {exp_x_uid14_i_cmp60_conv2d3x33_b, frac_x_uid15_i_cmp60_conv2d3x33_b};

    // expFracY_uid52_i_cmp60_conv2d3x33(BITJOIN,51)@0
    assign expFracY_uid52_i_cmp60_conv2d3x33_q = {exp_y_uid31_i_cmp60_conv2d3x33_b, frac_y_uid32_i_cmp60_conv2d3x33_b};

    // efxGTefy_uid54_i_cmp60_conv2d3x33(COMPARE,53)@0
    assign efxGTefy_uid54_i_cmp60_conv2d3x33_a = {2'b00, expFracY_uid52_i_cmp60_conv2d3x33_q};
    assign efxGTefy_uid54_i_cmp60_conv2d3x33_b = {2'b00, expFracX_uid50_i_cmp60_conv2d3x33_q};
    assign efxGTefy_uid54_i_cmp60_conv2d3x33_o = $unsigned(efxGTefy_uid54_i_cmp60_conv2d3x33_a) - $unsigned(efxGTefy_uid54_i_cmp60_conv2d3x33_b);
    assign efxGTefy_uid54_i_cmp60_conv2d3x33_c[0] = efxGTefy_uid54_i_cmp60_conv2d3x33_o[32];

    // efxLTefy_uid55_i_cmp60_conv2d3x33(COMPARE,54)@0
    assign efxLTefy_uid55_i_cmp60_conv2d3x33_a = {2'b00, expFracX_uid50_i_cmp60_conv2d3x33_q};
    assign efxLTefy_uid55_i_cmp60_conv2d3x33_b = {2'b00, expFracY_uid52_i_cmp60_conv2d3x33_q};
    assign efxLTefy_uid55_i_cmp60_conv2d3x33_o = $unsigned(efxLTefy_uid55_i_cmp60_conv2d3x33_a) - $unsigned(efxLTefy_uid55_i_cmp60_conv2d3x33_b);
    assign efxLTefy_uid55_i_cmp60_conv2d3x33_c[0] = efxLTefy_uid55_i_cmp60_conv2d3x33_o[32];

    // expFracCompMux_uid66_i_cmp60_conv2d3x33(MUX,65)@0
    assign expFracCompMux_uid66_i_cmp60_conv2d3x33_s = signX_uid59_i_cmp60_conv2d3x33_b;
    always @(expFracCompMux_uid66_i_cmp60_conv2d3x33_s or efxLTefy_uid55_i_cmp60_conv2d3x33_c or efxGTefy_uid54_i_cmp60_conv2d3x33_c)
    begin
        unique case (expFracCompMux_uid66_i_cmp60_conv2d3x33_s)
            1'b0 : expFracCompMux_uid66_i_cmp60_conv2d3x33_q = efxLTefy_uid55_i_cmp60_conv2d3x33_c;
            1'b1 : expFracCompMux_uid66_i_cmp60_conv2d3x33_q = efxGTefy_uid54_i_cmp60_conv2d3x33_c;
            default : expFracCompMux_uid66_i_cmp60_conv2d3x33_q = 1'b0;
        endcase
    end

    // xorSigns_uid64_i_cmp60_conv2d3x33(LOGICAL,63)@0
    assign xorSigns_uid64_i_cmp60_conv2d3x33_q = signX_uid59_i_cmp60_conv2d3x33_b ^ signY_uid60_i_cmp60_conv2d3x33_b;

    // sxEQsy_uid65_i_cmp60_conv2d3x33(LOGICAL,64)@0
    assign sxEQsy_uid65_i_cmp60_conv2d3x33_q = ~ (xorSigns_uid64_i_cmp60_conv2d3x33_q);

    // sxEQsyExpFracCompMux_uid71_i_cmp60_conv2d3x33(LOGICAL,70)@0 + 1
    assign sxEQsyExpFracCompMux_uid71_i_cmp60_conv2d3x33_qi = sxEQsy_uid65_i_cmp60_conv2d3x33_q & expFracCompMux_uid66_i_cmp60_conv2d3x33_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    sxEQsyExpFracCompMux_uid71_i_cmp60_conv2d3x33_delay ( .xin(sxEQsyExpFracCompMux_uid71_i_cmp60_conv2d3x33_qi), .xout(sxEQsyExpFracCompMux_uid71_i_cmp60_conv2d3x33_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // r_uid72_i_cmp60_conv2d3x33(LOGICAL,71)@1
    assign r_uid72_i_cmp60_conv2d3x33_q = sxEQsyExpFracCompMux_uid71_i_cmp60_conv2d3x33_q | rc2_uid70_i_cmp60_conv2d3x33_q;

    // fracXIsNotZero_uid36_i_cmp60_conv2d3x33(LOGICAL,35)@0
    assign fracXIsNotZero_uid36_i_cmp60_conv2d3x33_q = ~ (fracXIsZero_uid35_i_cmp60_conv2d3x33_q);

    // cstAllOWE_uid11_i_cmp60_conv2d3x33(CONSTANT,10)
    assign cstAllOWE_uid11_i_cmp60_conv2d3x33_q = $unsigned(8'b11111111);

    // expXIsMax_uid34_i_cmp60_conv2d3x33(LOGICAL,33)@0
    assign expXIsMax_uid34_i_cmp60_conv2d3x33_q = $unsigned(exp_y_uid31_i_cmp60_conv2d3x33_b == cstAllOWE_uid11_i_cmp60_conv2d3x33_q ? 1'b1 : 1'b0);

    // excN_y_uid39_i_cmp60_conv2d3x33(LOGICAL,38)@0
    assign excN_y_uid39_i_cmp60_conv2d3x33_q = expXIsMax_uid34_i_cmp60_conv2d3x33_q & fracXIsNotZero_uid36_i_cmp60_conv2d3x33_q;

    // fracXIsNotZero_uid19_i_cmp60_conv2d3x33(LOGICAL,18)@0
    assign fracXIsNotZero_uid19_i_cmp60_conv2d3x33_q = ~ (fracXIsZero_uid18_i_cmp60_conv2d3x33_q);

    // expXIsMax_uid17_i_cmp60_conv2d3x33(LOGICAL,16)@0
    assign expXIsMax_uid17_i_cmp60_conv2d3x33_q = $unsigned(exp_x_uid14_i_cmp60_conv2d3x33_b == cstAllOWE_uid11_i_cmp60_conv2d3x33_q ? 1'b1 : 1'b0);

    // excN_x_uid22_i_cmp60_conv2d3x33(LOGICAL,21)@0
    assign excN_x_uid22_i_cmp60_conv2d3x33_q = expXIsMax_uid17_i_cmp60_conv2d3x33_q & fracXIsNotZero_uid19_i_cmp60_conv2d3x33_q;

    // oneIsNaN_uid45_i_cmp60_conv2d3x33(LOGICAL,44)@0 + 1
    assign oneIsNaN_uid45_i_cmp60_conv2d3x33_qi = excN_x_uid22_i_cmp60_conv2d3x33_q | excN_y_uid39_i_cmp60_conv2d3x33_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    oneIsNaN_uid45_i_cmp60_conv2d3x33_delay ( .xin(oneIsNaN_uid45_i_cmp60_conv2d3x33_qi), .xout(oneIsNaN_uid45_i_cmp60_conv2d3x33_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // rPostExc_uid73_i_cmp60_conv2d3x33(MUX,72)@1
    assign rPostExc_uid73_i_cmp60_conv2d3x33_s = oneIsNaN_uid45_i_cmp60_conv2d3x33_q;
    always @(rPostExc_uid73_i_cmp60_conv2d3x33_s or r_uid72_i_cmp60_conv2d3x33_q or GND_q)
    begin
        unique case (rPostExc_uid73_i_cmp60_conv2d3x33_s)
            1'b0 : rPostExc_uid73_i_cmp60_conv2d3x33_q = r_uid72_i_cmp60_conv2d3x33_q;
            1'b1 : rPostExc_uid73_i_cmp60_conv2d3x33_q = GND_q;
            default : rPostExc_uid73_i_cmp60_conv2d3x33_q = 1'b0;
        endcase
    end

    // i_narrow_sel_conv2d3x34(MUX,5)@1
    assign i_narrow_sel_conv2d3x34_s = rPostExc_uid73_i_cmp60_conv2d3x33_q;
    always @(i_narrow_sel_conv2d3x34_s or c_float_0_000000e_007_q or redist1_i_tmp_0_lcssa_select_conv2d3x32_q_1_q)
    begin
        unique case (i_narrow_sel_conv2d3x34_s)
            1'b0 : i_narrow_sel_conv2d3x34_q = c_float_0_000000e_007_q;
            1'b1 : i_narrow_sel_conv2d3x34_q = redist1_i_tmp_0_lcssa_select_conv2d3x32_q_1_q;
            default : i_narrow_sel_conv2d3x34_q = 32'b0;
        endcase
    end

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // sync_out_aunroll_x(GPOUT,8)@1
    assign out_c0_exi1202_0_tpl = GND_q;
    assign out_c0_exi1202_1_tpl = i_narrow_sel_conv2d3x34_q;
    assign out_o_valid = redist0_sync_together9_aunroll_x_in_i_valid_1_q;
    assign out_unnamed_conv2d3x31 = GND_q;

endmodule
