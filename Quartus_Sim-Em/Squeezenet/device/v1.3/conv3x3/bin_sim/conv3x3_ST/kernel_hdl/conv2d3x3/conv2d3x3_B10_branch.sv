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

// SystemVerilog created from conv2d3x3_B10_branch
// SystemVerilog created on Tue May 30 12:33:16 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2d3x3_B10_branch (
    input wire [0:0] in_c0_exe11741,
    input wire [63:0] in_c0_exe13743,
    input wire [0:0] in_c0_exe15745,
    input wire [63:0] in_c0_exe16746,
    input wire [31:0] in_c0_exe17747,
    input wire [0:0] in_c0_exe18748,
    input wire [31:0] in_c0_exe19749,
    input wire [31:0] in_c0_exe20750,
    input wire [31:0] in_c0_exe21751,
    input wire [0:0] in_c0_exe22752,
    input wire [0:0] in_c0_exe23753,
    input wire [31:0] in_c0_exe24754,
    input wire [0:0] in_c0_exe25755,
    input wire [0:0] in_c0_exe26756,
    input wire [31:0] in_c0_exe2732,
    input wire [0:0] in_c0_exe27757,
    input wire [0:0] in_c0_exe28758,
    input wire [31:0] in_c0_exe29759,
    input wire [31:0] in_c0_exe30760,
    input wire [0:0] in_c0_exe31761,
    input wire [63:0] in_c0_exe33763,
    input wire [63:0] in_c0_exe34764,
    input wire [31:0] in_c0_exe35765,
    input wire [0:0] in_c0_exe36766,
    input wire [31:0] in_c0_exe3733,
    input wire [31:0] in_c0_exe37767,
    input wire [31:0] in_c0_exe38768,
    input wire [0:0] in_c0_exe39769,
    input wire [0:0] in_c0_exe40,
    input wire [31:0] in_c0_exe41,
    input wire [0:0] in_c0_exe42,
    input wire [0:0] in_c0_exe43,
    input wire [31:0] in_c0_exe44,
    input wire [0:0] in_c0_exe45,
    input wire [0:0] in_c0_exe46,
    input wire [0:0] in_c0_exe47,
    input wire [31:0] in_c0_exe4734,
    input wire [63:0] in_c0_exe48,
    input wire [63:0] in_c0_exe49,
    input wire [31:0] in_c0_exe50,
    input wire [0:0] in_c0_exe51,
    input wire [31:0] in_c0_exe5735,
    input wire [31:0] in_c0_exe6736,
    input wire [0:0] in_c0_exe8738,
    input wire [0:0] in_c0_exe9739,
    input wire [31:0] in_c1_exe1,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_c0_exe11741,
    output wire [63:0] out_c0_exe13743,
    output wire [63:0] out_c0_exe16746,
    output wire [31:0] out_c0_exe17747,
    output wire [0:0] out_c0_exe18748,
    output wire [31:0] out_c0_exe19749,
    output wire [31:0] out_c0_exe20750,
    output wire [31:0] out_c0_exe21751,
    output wire [0:0] out_c0_exe22752,
    output wire [0:0] out_c0_exe23753,
    output wire [31:0] out_c0_exe24754,
    output wire [0:0] out_c0_exe25755,
    output wire [0:0] out_c0_exe26756,
    output wire [31:0] out_c0_exe2732,
    output wire [0:0] out_c0_exe27757,
    output wire [0:0] out_c0_exe28758,
    output wire [31:0] out_c0_exe29759,
    output wire [31:0] out_c0_exe30760,
    output wire [0:0] out_c0_exe31761,
    output wire [63:0] out_c0_exe33763,
    output wire [63:0] out_c0_exe34764,
    output wire [31:0] out_c0_exe35765,
    output wire [0:0] out_c0_exe36766,
    output wire [31:0] out_c0_exe3733,
    output wire [31:0] out_c0_exe37767,
    output wire [31:0] out_c0_exe38768,
    output wire [0:0] out_c0_exe39769,
    output wire [0:0] out_c0_exe40,
    output wire [31:0] out_c0_exe41,
    output wire [0:0] out_c0_exe42,
    output wire [0:0] out_c0_exe43,
    output wire [31:0] out_c0_exe44,
    output wire [0:0] out_c0_exe45,
    output wire [0:0] out_c0_exe46,
    output wire [0:0] out_c0_exe47,
    output wire [31:0] out_c0_exe4734,
    output wire [63:0] out_c0_exe48,
    output wire [63:0] out_c0_exe49,
    output wire [31:0] out_c0_exe50,
    output wire [0:0] out_c0_exe51,
    output wire [31:0] out_c0_exe5735,
    output wire [31:0] out_c0_exe6736,
    output wire [0:0] out_c0_exe8738,
    output wire [0:0] out_c0_exe9739,
    output wire [31:0] out_c1_exe1,
    output wire [0:0] out_stall_out,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    reg [0:0] c0_exe11741_reg_q;
    reg [63:0] c0_exe13743_reg_q;
    wire [0:0] c0_exe15745_cmp_q;
    reg [63:0] c0_exe16746_reg_q;
    reg [31:0] c0_exe17747_reg_q;
    reg [0:0] c0_exe18748_reg_q;
    reg [31:0] c0_exe19749_reg_q;
    reg [31:0] c0_exe20750_reg_q;
    reg [31:0] c0_exe21751_reg_q;
    reg [0:0] c0_exe22752_reg_q;
    reg [0:0] c0_exe23753_reg_q;
    reg [31:0] c0_exe24754_reg_q;
    reg [0:0] c0_exe25755_reg_q;
    reg [0:0] c0_exe26756_reg_q;
    reg [31:0] c0_exe2732_reg_q;
    reg [0:0] c0_exe27757_reg_q;
    reg [0:0] c0_exe28758_reg_q;
    reg [31:0] c0_exe29759_reg_q;
    reg [31:0] c0_exe30760_reg_q;
    reg [0:0] c0_exe31761_reg_q;
    reg [63:0] c0_exe33763_reg_q;
    reg [63:0] c0_exe34764_reg_q;
    reg [31:0] c0_exe35765_reg_q;
    reg [0:0] c0_exe36766_reg_q;
    reg [31:0] c0_exe3733_reg_q;
    reg [31:0] c0_exe37767_reg_q;
    reg [31:0] c0_exe38768_reg_q;
    reg [0:0] c0_exe39769_reg_q;
    reg [0:0] c0_exe40_reg_q;
    reg [31:0] c0_exe41_reg_q;
    reg [0:0] c0_exe42_reg_q;
    reg [0:0] c0_exe43_reg_q;
    reg [31:0] c0_exe44_reg_q;
    reg [0:0] c0_exe45_reg_q;
    reg [0:0] c0_exe46_reg_q;
    reg [31:0] c0_exe4734_reg_q;
    reg [0:0] c0_exe47_reg_q;
    reg [63:0] c0_exe48_reg_q;
    reg [63:0] c0_exe49_reg_q;
    reg [31:0] c0_exe50_reg_q;
    reg [0:0] c0_exe51_reg_q;
    reg [31:0] c0_exe5735_reg_q;
    reg [31:0] c0_exe6736_reg_q;
    reg [0:0] c0_exe8738_reg_q;
    reg [0:0] c0_exe9739_reg_q;
    reg [31:0] c1_exe1_reg_q;
    wire [0:0] conv2d3x3_B10_branch_enable_q;
    wire [0:0] conv2d3x3_B10_branch_enable_not_q;
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


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // not_stall_in_1(LOGICAL,100)
    assign not_stall_in_1_q = ~ (in_stall_in_1);

    // c0_exe15745_cmp(LOGICAL,4)
    assign c0_exe15745_cmp_q = ~ (in_c0_exe15745);

    // valid_out_1_and(LOGICAL,156)
    assign valid_out_1_and_q = in_valid_in & c0_exe15745_cmp_q;

    // valid_1_reg(REG,154)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_1_reg_q <= $unsigned(1'b0);
        end
        else if (conv2d3x3_B10_branch_enable_q == 1'b1)
        begin
            valid_1_reg_q <= valid_out_1_and_q;
        end
    end

    // not_valid_1(LOGICAL,102)
    assign not_valid_1_q = ~ (valid_1_reg_q);

    // not_valid_or_not_stall_1(LOGICAL,104)
    assign not_valid_or_not_stall_1_q = not_valid_1_q | not_stall_in_1_q;

    // not_stall_in_0(LOGICAL,99)
    assign not_stall_in_0_q = ~ (in_stall_in_0);

    // valid_out_0_and(LOGICAL,155)
    assign valid_out_0_and_q = in_valid_in & in_c0_exe15745;

    // valid_0_reg(REG,153)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_0_reg_q <= $unsigned(1'b0);
        end
        else if (conv2d3x3_B10_branch_enable_q == 1'b1)
        begin
            valid_0_reg_q <= valid_out_0_and_q;
        end
    end

    // not_valid_0(LOGICAL,101)
    assign not_valid_0_q = ~ (valid_0_reg_q);

    // not_valid_or_not_stall_0(LOGICAL,103)
    assign not_valid_or_not_stall_0_q = not_valid_0_q | not_stall_in_0_q;

    // conv2d3x3_B10_branch_enable(LOGICAL,48)
    assign conv2d3x3_B10_branch_enable_q = not_valid_or_not_stall_0_q & not_valid_or_not_stall_1_q;

    // c0_exe11741_reg(REG,2)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe11741_reg_q <= $unsigned(1'b0);
        end
        else if (conv2d3x3_B10_branch_enable_q == 1'b1)
        begin
            c0_exe11741_reg_q <= in_c0_exe11741;
        end
    end

    // out_c0_exe11741(GPOUT,105)
    assign out_c0_exe11741 = c0_exe11741_reg_q;

    // c0_exe13743_reg(REG,3)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe13743_reg_q <= $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (conv2d3x3_B10_branch_enable_q == 1'b1)
        begin
            c0_exe13743_reg_q <= in_c0_exe13743;
        end
    end

    // out_c0_exe13743(GPOUT,106)
    assign out_c0_exe13743 = c0_exe13743_reg_q;

    // c0_exe16746_reg(REG,5)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe16746_reg_q <= $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (conv2d3x3_B10_branch_enable_q == 1'b1)
        begin
            c0_exe16746_reg_q <= in_c0_exe16746;
        end
    end

    // out_c0_exe16746(GPOUT,107)
    assign out_c0_exe16746 = c0_exe16746_reg_q;

    // c0_exe17747_reg(REG,6)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe17747_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (conv2d3x3_B10_branch_enable_q == 1'b1)
        begin
            c0_exe17747_reg_q <= $unsigned(in_c0_exe17747);
        end
    end

    // out_c0_exe17747(GPOUT,108)
    assign out_c0_exe17747 = c0_exe17747_reg_q;

    // c0_exe18748_reg(REG,7)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe18748_reg_q <= $unsigned(1'b0);
        end
        else if (conv2d3x3_B10_branch_enable_q == 1'b1)
        begin
            c0_exe18748_reg_q <= in_c0_exe18748;
        end
    end

    // out_c0_exe18748(GPOUT,109)
    assign out_c0_exe18748 = c0_exe18748_reg_q;

    // c0_exe19749_reg(REG,8)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe19749_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (conv2d3x3_B10_branch_enable_q == 1'b1)
        begin
            c0_exe19749_reg_q <= in_c0_exe19749;
        end
    end

    // out_c0_exe19749(GPOUT,110)
    assign out_c0_exe19749 = c0_exe19749_reg_q;

    // c0_exe20750_reg(REG,9)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe20750_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (conv2d3x3_B10_branch_enable_q == 1'b1)
        begin
            c0_exe20750_reg_q <= in_c0_exe20750;
        end
    end

    // out_c0_exe20750(GPOUT,111)
    assign out_c0_exe20750 = c0_exe20750_reg_q;

    // c0_exe21751_reg(REG,10)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe21751_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (conv2d3x3_B10_branch_enable_q == 1'b1)
        begin
            c0_exe21751_reg_q <= in_c0_exe21751;
        end
    end

    // out_c0_exe21751(GPOUT,112)
    assign out_c0_exe21751 = c0_exe21751_reg_q;

    // c0_exe22752_reg(REG,11)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe22752_reg_q <= $unsigned(1'b0);
        end
        else if (conv2d3x3_B10_branch_enable_q == 1'b1)
        begin
            c0_exe22752_reg_q <= in_c0_exe22752;
        end
    end

    // out_c0_exe22752(GPOUT,113)
    assign out_c0_exe22752 = c0_exe22752_reg_q;

    // c0_exe23753_reg(REG,12)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe23753_reg_q <= $unsigned(1'b0);
        end
        else if (conv2d3x3_B10_branch_enable_q == 1'b1)
        begin
            c0_exe23753_reg_q <= in_c0_exe23753;
        end
    end

    // out_c0_exe23753(GPOUT,114)
    assign out_c0_exe23753 = c0_exe23753_reg_q;

    // c0_exe24754_reg(REG,13)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe24754_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (conv2d3x3_B10_branch_enable_q == 1'b1)
        begin
            c0_exe24754_reg_q <= in_c0_exe24754;
        end
    end

    // out_c0_exe24754(GPOUT,115)
    assign out_c0_exe24754 = c0_exe24754_reg_q;

    // c0_exe25755_reg(REG,14)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe25755_reg_q <= $unsigned(1'b0);
        end
        else if (conv2d3x3_B10_branch_enable_q == 1'b1)
        begin
            c0_exe25755_reg_q <= in_c0_exe25755;
        end
    end

    // out_c0_exe25755(GPOUT,116)
    assign out_c0_exe25755 = c0_exe25755_reg_q;

    // c0_exe26756_reg(REG,15)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe26756_reg_q <= $unsigned(1'b0);
        end
        else if (conv2d3x3_B10_branch_enable_q == 1'b1)
        begin
            c0_exe26756_reg_q <= in_c0_exe26756;
        end
    end

    // out_c0_exe26756(GPOUT,117)
    assign out_c0_exe26756 = c0_exe26756_reg_q;

    // c0_exe2732_reg(REG,16)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe2732_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (conv2d3x3_B10_branch_enable_q == 1'b1)
        begin
            c0_exe2732_reg_q <= in_c0_exe2732;
        end
    end

    // out_c0_exe2732(GPOUT,118)
    assign out_c0_exe2732 = c0_exe2732_reg_q;

    // c0_exe27757_reg(REG,17)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe27757_reg_q <= $unsigned(1'b0);
        end
        else if (conv2d3x3_B10_branch_enable_q == 1'b1)
        begin
            c0_exe27757_reg_q <= in_c0_exe27757;
        end
    end

    // out_c0_exe27757(GPOUT,119)
    assign out_c0_exe27757 = c0_exe27757_reg_q;

    // c0_exe28758_reg(REG,18)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe28758_reg_q <= $unsigned(1'b0);
        end
        else if (conv2d3x3_B10_branch_enable_q == 1'b1)
        begin
            c0_exe28758_reg_q <= in_c0_exe28758;
        end
    end

    // out_c0_exe28758(GPOUT,120)
    assign out_c0_exe28758 = c0_exe28758_reg_q;

    // c0_exe29759_reg(REG,19)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe29759_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (conv2d3x3_B10_branch_enable_q == 1'b1)
        begin
            c0_exe29759_reg_q <= in_c0_exe29759;
        end
    end

    // out_c0_exe29759(GPOUT,121)
    assign out_c0_exe29759 = c0_exe29759_reg_q;

    // c0_exe30760_reg(REG,20)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe30760_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (conv2d3x3_B10_branch_enable_q == 1'b1)
        begin
            c0_exe30760_reg_q <= in_c0_exe30760;
        end
    end

    // out_c0_exe30760(GPOUT,122)
    assign out_c0_exe30760 = c0_exe30760_reg_q;

    // c0_exe31761_reg(REG,21)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe31761_reg_q <= $unsigned(1'b0);
        end
        else if (conv2d3x3_B10_branch_enable_q == 1'b1)
        begin
            c0_exe31761_reg_q <= in_c0_exe31761;
        end
    end

    // out_c0_exe31761(GPOUT,123)
    assign out_c0_exe31761 = c0_exe31761_reg_q;

    // c0_exe33763_reg(REG,22)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe33763_reg_q <= $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (conv2d3x3_B10_branch_enable_q == 1'b1)
        begin
            c0_exe33763_reg_q <= in_c0_exe33763;
        end
    end

    // out_c0_exe33763(GPOUT,124)
    assign out_c0_exe33763 = c0_exe33763_reg_q;

    // c0_exe34764_reg(REG,23)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe34764_reg_q <= $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (conv2d3x3_B10_branch_enable_q == 1'b1)
        begin
            c0_exe34764_reg_q <= in_c0_exe34764;
        end
    end

    // out_c0_exe34764(GPOUT,125)
    assign out_c0_exe34764 = c0_exe34764_reg_q;

    // c0_exe35765_reg(REG,24)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe35765_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (conv2d3x3_B10_branch_enable_q == 1'b1)
        begin
            c0_exe35765_reg_q <= $unsigned(in_c0_exe35765);
        end
    end

    // out_c0_exe35765(GPOUT,126)
    assign out_c0_exe35765 = c0_exe35765_reg_q;

    // c0_exe36766_reg(REG,25)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe36766_reg_q <= $unsigned(1'b0);
        end
        else if (conv2d3x3_B10_branch_enable_q == 1'b1)
        begin
            c0_exe36766_reg_q <= in_c0_exe36766;
        end
    end

    // out_c0_exe36766(GPOUT,127)
    assign out_c0_exe36766 = c0_exe36766_reg_q;

    // c0_exe3733_reg(REG,26)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe3733_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (conv2d3x3_B10_branch_enable_q == 1'b1)
        begin
            c0_exe3733_reg_q <= in_c0_exe3733;
        end
    end

    // out_c0_exe3733(GPOUT,128)
    assign out_c0_exe3733 = c0_exe3733_reg_q;

    // c0_exe37767_reg(REG,27)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe37767_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (conv2d3x3_B10_branch_enable_q == 1'b1)
        begin
            c0_exe37767_reg_q <= in_c0_exe37767;
        end
    end

    // out_c0_exe37767(GPOUT,129)
    assign out_c0_exe37767 = c0_exe37767_reg_q;

    // c0_exe38768_reg(REG,28)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe38768_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (conv2d3x3_B10_branch_enable_q == 1'b1)
        begin
            c0_exe38768_reg_q <= in_c0_exe38768;
        end
    end

    // out_c0_exe38768(GPOUT,130)
    assign out_c0_exe38768 = c0_exe38768_reg_q;

    // c0_exe39769_reg(REG,29)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe39769_reg_q <= $unsigned(1'b0);
        end
        else if (conv2d3x3_B10_branch_enable_q == 1'b1)
        begin
            c0_exe39769_reg_q <= in_c0_exe39769;
        end
    end

    // out_c0_exe39769(GPOUT,131)
    assign out_c0_exe39769 = c0_exe39769_reg_q;

    // c0_exe40_reg(REG,30)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe40_reg_q <= $unsigned(1'b0);
        end
        else if (conv2d3x3_B10_branch_enable_q == 1'b1)
        begin
            c0_exe40_reg_q <= in_c0_exe40;
        end
    end

    // out_c0_exe40(GPOUT,132)
    assign out_c0_exe40 = c0_exe40_reg_q;

    // c0_exe41_reg(REG,31)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe41_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (conv2d3x3_B10_branch_enable_q == 1'b1)
        begin
            c0_exe41_reg_q <= in_c0_exe41;
        end
    end

    // out_c0_exe41(GPOUT,133)
    assign out_c0_exe41 = c0_exe41_reg_q;

    // c0_exe42_reg(REG,32)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe42_reg_q <= $unsigned(1'b0);
        end
        else if (conv2d3x3_B10_branch_enable_q == 1'b1)
        begin
            c0_exe42_reg_q <= in_c0_exe42;
        end
    end

    // out_c0_exe42(GPOUT,134)
    assign out_c0_exe42 = c0_exe42_reg_q;

    // c0_exe43_reg(REG,33)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe43_reg_q <= $unsigned(1'b0);
        end
        else if (conv2d3x3_B10_branch_enable_q == 1'b1)
        begin
            c0_exe43_reg_q <= in_c0_exe43;
        end
    end

    // out_c0_exe43(GPOUT,135)
    assign out_c0_exe43 = c0_exe43_reg_q;

    // c0_exe44_reg(REG,34)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe44_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (conv2d3x3_B10_branch_enable_q == 1'b1)
        begin
            c0_exe44_reg_q <= in_c0_exe44;
        end
    end

    // out_c0_exe44(GPOUT,136)
    assign out_c0_exe44 = c0_exe44_reg_q;

    // c0_exe45_reg(REG,35)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe45_reg_q <= $unsigned(1'b0);
        end
        else if (conv2d3x3_B10_branch_enable_q == 1'b1)
        begin
            c0_exe45_reg_q <= in_c0_exe45;
        end
    end

    // out_c0_exe45(GPOUT,137)
    assign out_c0_exe45 = c0_exe45_reg_q;

    // c0_exe46_reg(REG,36)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe46_reg_q <= $unsigned(1'b0);
        end
        else if (conv2d3x3_B10_branch_enable_q == 1'b1)
        begin
            c0_exe46_reg_q <= in_c0_exe46;
        end
    end

    // out_c0_exe46(GPOUT,138)
    assign out_c0_exe46 = c0_exe46_reg_q;

    // c0_exe47_reg(REG,38)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe47_reg_q <= $unsigned(1'b0);
        end
        else if (conv2d3x3_B10_branch_enable_q == 1'b1)
        begin
            c0_exe47_reg_q <= in_c0_exe47;
        end
    end

    // out_c0_exe47(GPOUT,139)
    assign out_c0_exe47 = c0_exe47_reg_q;

    // c0_exe4734_reg(REG,37)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe4734_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (conv2d3x3_B10_branch_enable_q == 1'b1)
        begin
            c0_exe4734_reg_q <= in_c0_exe4734;
        end
    end

    // out_c0_exe4734(GPOUT,140)
    assign out_c0_exe4734 = c0_exe4734_reg_q;

    // c0_exe48_reg(REG,39)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe48_reg_q <= $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (conv2d3x3_B10_branch_enable_q == 1'b1)
        begin
            c0_exe48_reg_q <= in_c0_exe48;
        end
    end

    // out_c0_exe48(GPOUT,141)
    assign out_c0_exe48 = c0_exe48_reg_q;

    // c0_exe49_reg(REG,40)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe49_reg_q <= $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (conv2d3x3_B10_branch_enable_q == 1'b1)
        begin
            c0_exe49_reg_q <= in_c0_exe49;
        end
    end

    // out_c0_exe49(GPOUT,142)
    assign out_c0_exe49 = c0_exe49_reg_q;

    // c0_exe50_reg(REG,41)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe50_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (conv2d3x3_B10_branch_enable_q == 1'b1)
        begin
            c0_exe50_reg_q <= $unsigned(in_c0_exe50);
        end
    end

    // out_c0_exe50(GPOUT,143)
    assign out_c0_exe50 = c0_exe50_reg_q;

    // c0_exe51_reg(REG,42)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe51_reg_q <= $unsigned(1'b0);
        end
        else if (conv2d3x3_B10_branch_enable_q == 1'b1)
        begin
            c0_exe51_reg_q <= in_c0_exe51;
        end
    end

    // out_c0_exe51(GPOUT,144)
    assign out_c0_exe51 = c0_exe51_reg_q;

    // c0_exe5735_reg(REG,43)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe5735_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (conv2d3x3_B10_branch_enable_q == 1'b1)
        begin
            c0_exe5735_reg_q <= in_c0_exe5735;
        end
    end

    // out_c0_exe5735(GPOUT,145)
    assign out_c0_exe5735 = c0_exe5735_reg_q;

    // c0_exe6736_reg(REG,44)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe6736_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (conv2d3x3_B10_branch_enable_q == 1'b1)
        begin
            c0_exe6736_reg_q <= in_c0_exe6736;
        end
    end

    // out_c0_exe6736(GPOUT,146)
    assign out_c0_exe6736 = c0_exe6736_reg_q;

    // c0_exe8738_reg(REG,45)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe8738_reg_q <= $unsigned(1'b0);
        end
        else if (conv2d3x3_B10_branch_enable_q == 1'b1)
        begin
            c0_exe8738_reg_q <= in_c0_exe8738;
        end
    end

    // out_c0_exe8738(GPOUT,147)
    assign out_c0_exe8738 = c0_exe8738_reg_q;

    // c0_exe9739_reg(REG,46)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe9739_reg_q <= $unsigned(1'b0);
        end
        else if (conv2d3x3_B10_branch_enable_q == 1'b1)
        begin
            c0_exe9739_reg_q <= in_c0_exe9739;
        end
    end

    // out_c0_exe9739(GPOUT,148)
    assign out_c0_exe9739 = c0_exe9739_reg_q;

    // c1_exe1_reg(REG,47)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c1_exe1_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (conv2d3x3_B10_branch_enable_q == 1'b1)
        begin
            c1_exe1_reg_q <= $unsigned(in_c1_exe1);
        end
    end

    // out_c1_exe1(GPOUT,149)
    assign out_c1_exe1 = c1_exe1_reg_q;

    // conv2d3x3_B10_branch_enable_not(LOGICAL,49)
    assign conv2d3x3_B10_branch_enable_not_q = ~ (conv2d3x3_B10_branch_enable_q);

    // out_stall_out(GPOUT,150)
    assign out_stall_out = conv2d3x3_B10_branch_enable_not_q;

    // out_valid_out_0(GPOUT,151)
    assign out_valid_out_0 = valid_0_reg_q;

    // out_valid_out_1(GPOUT,152)
    assign out_valid_out_1 = valid_1_reg_q;

endmodule
