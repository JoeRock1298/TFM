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

// SystemVerilog created from conv2d1x1_B8_branch
// SystemVerilog created on Tue May 23 20:43:36 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2d1x1_B8_branch (
    input wire [31:0] in_c0_exe12734,
    input wire [31:0] in_c0_exe13735,
    input wire [0:0] in_c0_exe15737,
    input wire [0:0] in_c0_exe16738,
    input wire [31:0] in_c0_exe17739,
    input wire [31:0] in_c0_exe18740,
    input wire [0:0] in_c0_exe19741,
    input wire [31:0] in_c0_exe20742,
    input wire [31:0] in_c0_exe21743,
    input wire [31:0] in_c0_exe22744,
    input wire [0:0] in_c0_exe23745,
    input wire [0:0] in_c0_exe24746,
    input wire [0:0] in_c0_exe25747,
    input wire [0:0] in_c0_exe7729,
    input wire [0:0] in_c0_exe8730,
    input wire [31:0] in_c0_exe9731,
    input wire [31:0] in_c1_exe10,
    input wire [31:0] in_c1_exe11,
    input wire [31:0] in_c1_exe12,
    input wire [31:0] in_c1_exe13,
    input wire [31:0] in_c1_exe14,
    input wire [31:0] in_c1_exe1847,
    input wire [31:0] in_c1_exe2,
    input wire [31:0] in_c1_exe3,
    input wire [31:0] in_c1_exe4,
    input wire [31:0] in_c1_exe5,
    input wire [31:0] in_c1_exe6,
    input wire [31:0] in_c1_exe7,
    input wire [31:0] in_c1_exe8,
    input wire [31:0] in_c1_exe9,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [0:0] in_valid_in,
    input wire [31:0] in_lm177_0_tpl,
    input wire [31:0] in_lm177_1_tpl,
    input wire [31:0] in_lm177_2_tpl,
    input wire [31:0] in_lm177_3_tpl,
    output wire [31:0] out_c0_exe12734,
    output wire [31:0] out_c0_exe13735,
    output wire [0:0] out_c0_exe15737,
    output wire [31:0] out_c0_exe17739,
    output wire [31:0] out_c0_exe18740,
    output wire [0:0] out_c0_exe19741,
    output wire [31:0] out_c0_exe20742,
    output wire [31:0] out_c0_exe21743,
    output wire [31:0] out_c0_exe22744,
    output wire [0:0] out_c0_exe23745,
    output wire [0:0] out_c0_exe24746,
    output wire [0:0] out_c0_exe25747,
    output wire [0:0] out_c0_exe7729,
    output wire [0:0] out_c0_exe8730,
    output wire [31:0] out_c0_exe9731,
    output wire [31:0] out_c1_exe10,
    output wire [31:0] out_c1_exe11,
    output wire [31:0] out_c1_exe12,
    output wire [31:0] out_c1_exe13,
    output wire [31:0] out_c1_exe14,
    output wire [31:0] out_c1_exe1847,
    output wire [31:0] out_c1_exe2,
    output wire [31:0] out_c1_exe3,
    output wire [31:0] out_c1_exe4,
    output wire [31:0] out_c1_exe5,
    output wire [31:0] out_c1_exe6,
    output wire [31:0] out_c1_exe7,
    output wire [31:0] out_c1_exe8,
    output wire [31:0] out_c1_exe9,
    output wire [0:0] out_stall_out,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    output wire [31:0] out_lm177_0_tpl,
    output wire [31:0] out_lm177_1_tpl,
    output wire [31:0] out_lm177_2_tpl,
    output wire [31:0] out_lm177_3_tpl,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    reg [31:0] c0_exe12734_reg_q;
    reg [31:0] c0_exe13735_reg_q;
    reg [0:0] c0_exe15737_reg_q;
    wire [0:0] c0_exe16738_cmp_q;
    reg [31:0] c0_exe17739_reg_q;
    reg [31:0] c0_exe18740_reg_q;
    reg [0:0] c0_exe19741_reg_q;
    reg [31:0] c0_exe20742_reg_q;
    reg [31:0] c0_exe21743_reg_q;
    reg [31:0] c0_exe22744_reg_q;
    reg [0:0] c0_exe23745_reg_q;
    reg [0:0] c0_exe24746_reg_q;
    reg [0:0] c0_exe25747_reg_q;
    reg [0:0] c0_exe7729_reg_q;
    reg [0:0] c0_exe8730_reg_q;
    reg [31:0] c0_exe9731_reg_q;
    reg [31:0] c1_exe10_reg_q;
    reg [31:0] c1_exe11_reg_q;
    reg [31:0] c1_exe12_reg_q;
    reg [31:0] c1_exe13_reg_q;
    reg [31:0] c1_exe14_reg_q;
    reg [31:0] c1_exe1847_reg_q;
    reg [31:0] c1_exe2_reg_q;
    reg [31:0] c1_exe3_reg_q;
    reg [31:0] c1_exe4_reg_q;
    reg [31:0] c1_exe5_reg_q;
    reg [31:0] c1_exe6_reg_q;
    reg [31:0] c1_exe7_reg_q;
    reg [31:0] c1_exe8_reg_q;
    reg [31:0] c1_exe9_reg_q;
    wire [0:0] conv2d1x1_B8_branch_enable_q;
    wire [0:0] conv2d1x1_B8_branch_enable_not_q;
    wire [0:0] not_stall_in_0_q;
    wire [0:0] not_stall_in_1_q;
    wire [0:0] not_valid_0_q;
    wire [0:0] not_valid_1_q;
    wire [0:0] not_valid_or_not_stall_0_q;
    wire [0:0] not_valid_or_not_stall_1_q;
    reg [0:0] valid_0_reg_q;
    reg [0:0] valid_1_reg_q;
    wire [0:0] valid_out_0_and_q;
    wire [0:0] valid_out_1_and_q;
    reg [31:0] lm177_reg_0_x_q;
    reg [31:0] lm177_reg_1_x_q;
    reg [31:0] lm177_reg_2_x_q;
    reg [31:0] lm177_reg_3_x_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // not_stall_in_1(LOGICAL,35)
    assign not_stall_in_1_q = ~ (in_stall_in_1);

    // c0_exe16738_cmp(LOGICAL,5)
    assign c0_exe16738_cmp_q = ~ (in_c0_exe16738);

    // valid_out_1_and(LOGICAL,43)
    assign valid_out_1_and_q = in_valid_in & c0_exe16738_cmp_q;

    // valid_1_reg(REG,41)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_1_reg_q <= $unsigned(1'b0);
        end
        else if (conv2d1x1_B8_branch_enable_q == 1'b1)
        begin
            valid_1_reg_q <= valid_out_1_and_q;
        end
    end

    // not_valid_1(LOGICAL,37)
    assign not_valid_1_q = ~ (valid_1_reg_q);

    // not_valid_or_not_stall_1(LOGICAL,39)
    assign not_valid_or_not_stall_1_q = not_valid_1_q | not_stall_in_1_q;

    // not_stall_in_0(LOGICAL,34)
    assign not_stall_in_0_q = ~ (in_stall_in_0);

    // valid_out_0_and(LOGICAL,42)
    assign valid_out_0_and_q = in_valid_in & in_c0_exe16738;

    // valid_0_reg(REG,40)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_0_reg_q <= $unsigned(1'b0);
        end
        else if (conv2d1x1_B8_branch_enable_q == 1'b1)
        begin
            valid_0_reg_q <= valid_out_0_and_q;
        end
    end

    // not_valid_0(LOGICAL,36)
    assign not_valid_0_q = ~ (valid_0_reg_q);

    // not_valid_or_not_stall_0(LOGICAL,38)
    assign not_valid_or_not_stall_0_q = not_valid_0_q | not_stall_in_0_q;

    // conv2d1x1_B8_branch_enable(LOGICAL,32)
    assign conv2d1x1_B8_branch_enable_q = not_valid_or_not_stall_0_q & not_valid_or_not_stall_1_q;

    // c0_exe12734_reg(REG,2)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe12734_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (conv2d1x1_B8_branch_enable_q == 1'b1)
        begin
            c0_exe12734_reg_q <= in_c0_exe12734;
        end
    end

    // out_c0_exe12734(GPOUT,85)
    assign out_c0_exe12734 = c0_exe12734_reg_q;

    // c0_exe13735_reg(REG,3)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe13735_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (conv2d1x1_B8_branch_enable_q == 1'b1)
        begin
            c0_exe13735_reg_q <= in_c0_exe13735;
        end
    end

    // out_c0_exe13735(GPOUT,86)
    assign out_c0_exe13735 = c0_exe13735_reg_q;

    // c0_exe15737_reg(REG,4)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe15737_reg_q <= $unsigned(1'b0);
        end
        else if (conv2d1x1_B8_branch_enable_q == 1'b1)
        begin
            c0_exe15737_reg_q <= in_c0_exe15737;
        end
    end

    // out_c0_exe15737(GPOUT,87)
    assign out_c0_exe15737 = c0_exe15737_reg_q;

    // c0_exe17739_reg(REG,6)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe17739_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (conv2d1x1_B8_branch_enable_q == 1'b1)
        begin
            c0_exe17739_reg_q <= $unsigned(in_c0_exe17739);
        end
    end

    // out_c0_exe17739(GPOUT,88)
    assign out_c0_exe17739 = c0_exe17739_reg_q;

    // c0_exe18740_reg(REG,7)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe18740_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (conv2d1x1_B8_branch_enable_q == 1'b1)
        begin
            c0_exe18740_reg_q <= in_c0_exe18740;
        end
    end

    // out_c0_exe18740(GPOUT,89)
    assign out_c0_exe18740 = c0_exe18740_reg_q;

    // c0_exe19741_reg(REG,8)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe19741_reg_q <= $unsigned(1'b0);
        end
        else if (conv2d1x1_B8_branch_enable_q == 1'b1)
        begin
            c0_exe19741_reg_q <= in_c0_exe19741;
        end
    end

    // out_c0_exe19741(GPOUT,90)
    assign out_c0_exe19741 = c0_exe19741_reg_q;

    // c0_exe20742_reg(REG,9)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe20742_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (conv2d1x1_B8_branch_enable_q == 1'b1)
        begin
            c0_exe20742_reg_q <= $unsigned(in_c0_exe20742);
        end
    end

    // out_c0_exe20742(GPOUT,91)
    assign out_c0_exe20742 = c0_exe20742_reg_q;

    // c0_exe21743_reg(REG,10)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe21743_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (conv2d1x1_B8_branch_enable_q == 1'b1)
        begin
            c0_exe21743_reg_q <= $unsigned(in_c0_exe21743);
        end
    end

    // out_c0_exe21743(GPOUT,92)
    assign out_c0_exe21743 = c0_exe21743_reg_q;

    // c0_exe22744_reg(REG,11)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe22744_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (conv2d1x1_B8_branch_enable_q == 1'b1)
        begin
            c0_exe22744_reg_q <= $unsigned(in_c0_exe22744);
        end
    end

    // out_c0_exe22744(GPOUT,93)
    assign out_c0_exe22744 = c0_exe22744_reg_q;

    // c0_exe23745_reg(REG,12)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe23745_reg_q <= $unsigned(1'b0);
        end
        else if (conv2d1x1_B8_branch_enable_q == 1'b1)
        begin
            c0_exe23745_reg_q <= in_c0_exe23745;
        end
    end

    // out_c0_exe23745(GPOUT,94)
    assign out_c0_exe23745 = c0_exe23745_reg_q;

    // c0_exe24746_reg(REG,13)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe24746_reg_q <= $unsigned(1'b0);
        end
        else if (conv2d1x1_B8_branch_enable_q == 1'b1)
        begin
            c0_exe24746_reg_q <= in_c0_exe24746;
        end
    end

    // out_c0_exe24746(GPOUT,95)
    assign out_c0_exe24746 = c0_exe24746_reg_q;

    // c0_exe25747_reg(REG,14)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe25747_reg_q <= $unsigned(1'b0);
        end
        else if (conv2d1x1_B8_branch_enable_q == 1'b1)
        begin
            c0_exe25747_reg_q <= in_c0_exe25747;
        end
    end

    // out_c0_exe25747(GPOUT,96)
    assign out_c0_exe25747 = c0_exe25747_reg_q;

    // c0_exe7729_reg(REG,15)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe7729_reg_q <= $unsigned(1'b0);
        end
        else if (conv2d1x1_B8_branch_enable_q == 1'b1)
        begin
            c0_exe7729_reg_q <= in_c0_exe7729;
        end
    end

    // out_c0_exe7729(GPOUT,97)
    assign out_c0_exe7729 = c0_exe7729_reg_q;

    // c0_exe8730_reg(REG,16)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe8730_reg_q <= $unsigned(1'b0);
        end
        else if (conv2d1x1_B8_branch_enable_q == 1'b1)
        begin
            c0_exe8730_reg_q <= in_c0_exe8730;
        end
    end

    // out_c0_exe8730(GPOUT,98)
    assign out_c0_exe8730 = c0_exe8730_reg_q;

    // c0_exe9731_reg(REG,17)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe9731_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (conv2d1x1_B8_branch_enable_q == 1'b1)
        begin
            c0_exe9731_reg_q <= in_c0_exe9731;
        end
    end

    // out_c0_exe9731(GPOUT,99)
    assign out_c0_exe9731 = c0_exe9731_reg_q;

    // c1_exe10_reg(REG,18)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c1_exe10_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (conv2d1x1_B8_branch_enable_q == 1'b1)
        begin
            c1_exe10_reg_q <= $unsigned(in_c1_exe10);
        end
    end

    // out_c1_exe10(GPOUT,100)
    assign out_c1_exe10 = c1_exe10_reg_q;

    // c1_exe11_reg(REG,19)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c1_exe11_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (conv2d1x1_B8_branch_enable_q == 1'b1)
        begin
            c1_exe11_reg_q <= $unsigned(in_c1_exe11);
        end
    end

    // out_c1_exe11(GPOUT,101)
    assign out_c1_exe11 = c1_exe11_reg_q;

    // c1_exe12_reg(REG,20)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c1_exe12_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (conv2d1x1_B8_branch_enable_q == 1'b1)
        begin
            c1_exe12_reg_q <= $unsigned(in_c1_exe12);
        end
    end

    // out_c1_exe12(GPOUT,102)
    assign out_c1_exe12 = c1_exe12_reg_q;

    // c1_exe13_reg(REG,21)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c1_exe13_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (conv2d1x1_B8_branch_enable_q == 1'b1)
        begin
            c1_exe13_reg_q <= $unsigned(in_c1_exe13);
        end
    end

    // out_c1_exe13(GPOUT,103)
    assign out_c1_exe13 = c1_exe13_reg_q;

    // c1_exe14_reg(REG,22)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c1_exe14_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (conv2d1x1_B8_branch_enable_q == 1'b1)
        begin
            c1_exe14_reg_q <= $unsigned(in_c1_exe14);
        end
    end

    // out_c1_exe14(GPOUT,104)
    assign out_c1_exe14 = c1_exe14_reg_q;

    // c1_exe1847_reg(REG,23)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c1_exe1847_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (conv2d1x1_B8_branch_enable_q == 1'b1)
        begin
            c1_exe1847_reg_q <= $unsigned(in_c1_exe1847);
        end
    end

    // out_c1_exe1847(GPOUT,105)
    assign out_c1_exe1847 = c1_exe1847_reg_q;

    // c1_exe2_reg(REG,24)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c1_exe2_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (conv2d1x1_B8_branch_enable_q == 1'b1)
        begin
            c1_exe2_reg_q <= $unsigned(in_c1_exe2);
        end
    end

    // out_c1_exe2(GPOUT,106)
    assign out_c1_exe2 = c1_exe2_reg_q;

    // c1_exe3_reg(REG,25)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c1_exe3_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (conv2d1x1_B8_branch_enable_q == 1'b1)
        begin
            c1_exe3_reg_q <= $unsigned(in_c1_exe3);
        end
    end

    // out_c1_exe3(GPOUT,107)
    assign out_c1_exe3 = c1_exe3_reg_q;

    // c1_exe4_reg(REG,26)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c1_exe4_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (conv2d1x1_B8_branch_enable_q == 1'b1)
        begin
            c1_exe4_reg_q <= $unsigned(in_c1_exe4);
        end
    end

    // out_c1_exe4(GPOUT,108)
    assign out_c1_exe4 = c1_exe4_reg_q;

    // c1_exe5_reg(REG,27)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c1_exe5_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (conv2d1x1_B8_branch_enable_q == 1'b1)
        begin
            c1_exe5_reg_q <= $unsigned(in_c1_exe5);
        end
    end

    // out_c1_exe5(GPOUT,109)
    assign out_c1_exe5 = c1_exe5_reg_q;

    // c1_exe6_reg(REG,28)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c1_exe6_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (conv2d1x1_B8_branch_enable_q == 1'b1)
        begin
            c1_exe6_reg_q <= $unsigned(in_c1_exe6);
        end
    end

    // out_c1_exe6(GPOUT,110)
    assign out_c1_exe6 = c1_exe6_reg_q;

    // c1_exe7_reg(REG,29)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c1_exe7_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (conv2d1x1_B8_branch_enable_q == 1'b1)
        begin
            c1_exe7_reg_q <= $unsigned(in_c1_exe7);
        end
    end

    // out_c1_exe7(GPOUT,111)
    assign out_c1_exe7 = c1_exe7_reg_q;

    // c1_exe8_reg(REG,30)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c1_exe8_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (conv2d1x1_B8_branch_enable_q == 1'b1)
        begin
            c1_exe8_reg_q <= $unsigned(in_c1_exe8);
        end
    end

    // out_c1_exe8(GPOUT,112)
    assign out_c1_exe8 = c1_exe8_reg_q;

    // c1_exe9_reg(REG,31)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c1_exe9_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (conv2d1x1_B8_branch_enable_q == 1'b1)
        begin
            c1_exe9_reg_q <= $unsigned(in_c1_exe9);
        end
    end

    // out_c1_exe9(GPOUT,113)
    assign out_c1_exe9 = c1_exe9_reg_q;

    // conv2d1x1_B8_branch_enable_not(LOGICAL,33)
    assign conv2d1x1_B8_branch_enable_not_q = ~ (conv2d1x1_B8_branch_enable_q);

    // out_stall_out(GPOUT,114)
    assign out_stall_out = conv2d1x1_B8_branch_enable_not_q;

    // out_valid_out_0(GPOUT,115)
    assign out_valid_out_0 = valid_0_reg_q;

    // out_valid_out_1(GPOUT,116)
    assign out_valid_out_1 = valid_1_reg_q;

    // lm177_reg_0_x(REG,81)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            lm177_reg_0_x_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (conv2d1x1_B8_branch_enable_q == 1'b1)
        begin
            lm177_reg_0_x_q <= $unsigned(in_lm177_0_tpl);
        end
    end

    // out_lm177_0_tpl(GPOUT,117)
    assign out_lm177_0_tpl = lm177_reg_0_x_q;

    // lm177_reg_1_x(REG,82)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            lm177_reg_1_x_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (conv2d1x1_B8_branch_enable_q == 1'b1)
        begin
            lm177_reg_1_x_q <= $unsigned(in_lm177_1_tpl);
        end
    end

    // out_lm177_1_tpl(GPOUT,118)
    assign out_lm177_1_tpl = lm177_reg_1_x_q;

    // lm177_reg_2_x(REG,83)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            lm177_reg_2_x_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (conv2d1x1_B8_branch_enable_q == 1'b1)
        begin
            lm177_reg_2_x_q <= $unsigned(in_lm177_2_tpl);
        end
    end

    // out_lm177_2_tpl(GPOUT,119)
    assign out_lm177_2_tpl = lm177_reg_2_x_q;

    // lm177_reg_3_x(REG,84)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            lm177_reg_3_x_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (conv2d1x1_B8_branch_enable_q == 1'b1)
        begin
            lm177_reg_3_x_q <= $unsigned(in_lm177_3_tpl);
        end
    end

    // out_lm177_3_tpl(GPOUT,120)
    assign out_lm177_3_tpl = lm177_reg_3_x_q;

endmodule
