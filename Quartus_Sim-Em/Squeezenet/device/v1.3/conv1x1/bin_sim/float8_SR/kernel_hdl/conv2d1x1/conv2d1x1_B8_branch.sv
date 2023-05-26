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
// SystemVerilog created on Wed May 24 12:36:13 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2d1x1_B8_branch (
    input wire [0:0] in_c0_exe16530,
    input wire [31:0] in_c0_exe17531,
    input wire [31:0] in_c0_exe18532,
    input wire [0:0] in_c0_exe19533,
    input wire [0:0] in_c0_exe20534,
    input wire [63:0] in_c0_exe21535,
    input wire [0:0] in_c0_exe3517,
    input wire [0:0] in_c0_exe4518,
    input wire [31:0] in_c0_exe5519,
    input wire [31:0] in_c1_exe10,
    input wire [31:0] in_c1_exe11,
    input wire [31:0] in_c1_exe12,
    input wire [31:0] in_c1_exe13,
    input wire [31:0] in_c1_exe14,
    input wire [31:0] in_c1_exe15,
    input wire [31:0] in_c1_exe1592,
    input wire [31:0] in_c1_exe16,
    input wire [31:0] in_c1_exe17,
    input wire [31:0] in_c1_exe18,
    input wire [31:0] in_c1_exe19,
    input wire [31:0] in_c1_exe2,
    input wire [31:0] in_c1_exe20,
    input wire [31:0] in_c1_exe21,
    input wire [31:0] in_c1_exe22,
    input wire [31:0] in_c1_exe23,
    input wire [31:0] in_c1_exe24,
    input wire [31:0] in_c1_exe25,
    input wire [31:0] in_c1_exe26,
    input wire [31:0] in_c1_exe27,
    input wire [31:0] in_c1_exe28,
    input wire [31:0] in_c1_exe29,
    input wire [31:0] in_c1_exe3,
    input wire [31:0] in_c1_exe30,
    input wire [31:0] in_c1_exe31,
    input wire [31:0] in_c1_exe32,
    input wire [31:0] in_c1_exe33,
    input wire [31:0] in_c1_exe34,
    input wire [31:0] in_c1_exe35,
    input wire [31:0] in_c1_exe36,
    input wire [31:0] in_c1_exe37,
    input wire [31:0] in_c1_exe38,
    input wire [31:0] in_c1_exe39,
    input wire [31:0] in_c1_exe4,
    input wire [31:0] in_c1_exe40,
    input wire [31:0] in_c1_exe41,
    input wire [31:0] in_c1_exe42,
    input wire [31:0] in_c1_exe43,
    input wire [31:0] in_c1_exe44,
    input wire [31:0] in_c1_exe45,
    input wire [31:0] in_c1_exe46,
    input wire [31:0] in_c1_exe47,
    input wire [31:0] in_c1_exe48,
    input wire [31:0] in_c1_exe5,
    input wire [31:0] in_c1_exe6,
    input wire [31:0] in_c1_exe7,
    input wire [31:0] in_c1_exe8,
    input wire [31:0] in_c1_exe9,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [0:0] in_valid_in,
    output wire [31:0] out_c0_exe17531,
    output wire [31:0] out_c0_exe18532,
    output wire [0:0] out_c0_exe19533,
    output wire [0:0] out_c0_exe20534,
    output wire [63:0] out_c0_exe21535,
    output wire [0:0] out_c0_exe3517,
    output wire [0:0] out_c0_exe4518,
    output wire [31:0] out_c0_exe5519,
    output wire [31:0] out_c1_exe10,
    output wire [31:0] out_c1_exe11,
    output wire [31:0] out_c1_exe12,
    output wire [31:0] out_c1_exe13,
    output wire [31:0] out_c1_exe14,
    output wire [31:0] out_c1_exe15,
    output wire [31:0] out_c1_exe1592,
    output wire [31:0] out_c1_exe16,
    output wire [31:0] out_c1_exe17,
    output wire [31:0] out_c1_exe18,
    output wire [31:0] out_c1_exe19,
    output wire [31:0] out_c1_exe2,
    output wire [31:0] out_c1_exe20,
    output wire [31:0] out_c1_exe21,
    output wire [31:0] out_c1_exe22,
    output wire [31:0] out_c1_exe23,
    output wire [31:0] out_c1_exe24,
    output wire [31:0] out_c1_exe25,
    output wire [31:0] out_c1_exe26,
    output wire [31:0] out_c1_exe27,
    output wire [31:0] out_c1_exe28,
    output wire [31:0] out_c1_exe29,
    output wire [31:0] out_c1_exe3,
    output wire [31:0] out_c1_exe30,
    output wire [31:0] out_c1_exe31,
    output wire [31:0] out_c1_exe32,
    output wire [31:0] out_c1_exe33,
    output wire [31:0] out_c1_exe34,
    output wire [31:0] out_c1_exe35,
    output wire [31:0] out_c1_exe36,
    output wire [31:0] out_c1_exe37,
    output wire [31:0] out_c1_exe38,
    output wire [31:0] out_c1_exe39,
    output wire [31:0] out_c1_exe4,
    output wire [31:0] out_c1_exe40,
    output wire [31:0] out_c1_exe41,
    output wire [31:0] out_c1_exe42,
    output wire [31:0] out_c1_exe43,
    output wire [31:0] out_c1_exe44,
    output wire [31:0] out_c1_exe45,
    output wire [31:0] out_c1_exe46,
    output wire [31:0] out_c1_exe47,
    output wire [31:0] out_c1_exe48,
    output wire [31:0] out_c1_exe5,
    output wire [31:0] out_c1_exe6,
    output wire [31:0] out_c1_exe7,
    output wire [31:0] out_c1_exe8,
    output wire [31:0] out_c1_exe9,
    output wire [0:0] out_stall_out,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    wire [0:0] c0_exe16530_cmp_q;
    reg [31:0] c0_exe17531_reg_q;
    reg [31:0] c0_exe18532_reg_q;
    reg [0:0] c0_exe19533_reg_q;
    reg [0:0] c0_exe20534_reg_q;
    reg [63:0] c0_exe21535_reg_q;
    reg [0:0] c0_exe3517_reg_q;
    reg [0:0] c0_exe4518_reg_q;
    reg [31:0] c0_exe5519_reg_q;
    reg [31:0] c1_exe10_reg_q;
    reg [31:0] c1_exe11_reg_q;
    reg [31:0] c1_exe12_reg_q;
    reg [31:0] c1_exe13_reg_q;
    reg [31:0] c1_exe14_reg_q;
    reg [31:0] c1_exe1592_reg_q;
    reg [31:0] c1_exe15_reg_q;
    reg [31:0] c1_exe16_reg_q;
    reg [31:0] c1_exe17_reg_q;
    reg [31:0] c1_exe18_reg_q;
    reg [31:0] c1_exe19_reg_q;
    reg [31:0] c1_exe20_reg_q;
    reg [31:0] c1_exe21_reg_q;
    reg [31:0] c1_exe22_reg_q;
    reg [31:0] c1_exe23_reg_q;
    reg [31:0] c1_exe24_reg_q;
    reg [31:0] c1_exe25_reg_q;
    reg [31:0] c1_exe26_reg_q;
    reg [31:0] c1_exe27_reg_q;
    reg [31:0] c1_exe28_reg_q;
    reg [31:0] c1_exe29_reg_q;
    reg [31:0] c1_exe2_reg_q;
    reg [31:0] c1_exe30_reg_q;
    reg [31:0] c1_exe31_reg_q;
    reg [31:0] c1_exe32_reg_q;
    reg [31:0] c1_exe33_reg_q;
    reg [31:0] c1_exe34_reg_q;
    reg [31:0] c1_exe35_reg_q;
    reg [31:0] c1_exe36_reg_q;
    reg [31:0] c1_exe37_reg_q;
    reg [31:0] c1_exe38_reg_q;
    reg [31:0] c1_exe39_reg_q;
    reg [31:0] c1_exe3_reg_q;
    reg [31:0] c1_exe40_reg_q;
    reg [31:0] c1_exe41_reg_q;
    reg [31:0] c1_exe42_reg_q;
    reg [31:0] c1_exe43_reg_q;
    reg [31:0] c1_exe44_reg_q;
    reg [31:0] c1_exe45_reg_q;
    reg [31:0] c1_exe46_reg_q;
    reg [31:0] c1_exe47_reg_q;
    reg [31:0] c1_exe48_reg_q;
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


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // not_stall_in_1(LOGICAL,122)
    assign not_stall_in_1_q = ~ (in_stall_in_1);

    // c0_exe16530_cmp(LOGICAL,2)
    assign c0_exe16530_cmp_q = ~ (in_c0_exe16530);

    // valid_out_1_and(LOGICAL,189)
    assign valid_out_1_and_q = in_valid_in & c0_exe16530_cmp_q;

    // valid_1_reg(REG,187)
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

    // not_valid_1(LOGICAL,124)
    assign not_valid_1_q = ~ (valid_1_reg_q);

    // not_valid_or_not_stall_1(LOGICAL,126)
    assign not_valid_or_not_stall_1_q = not_valid_1_q | not_stall_in_1_q;

    // not_stall_in_0(LOGICAL,121)
    assign not_stall_in_0_q = ~ (in_stall_in_0);

    // valid_out_0_and(LOGICAL,188)
    assign valid_out_0_and_q = in_valid_in & in_c0_exe16530;

    // valid_0_reg(REG,186)
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

    // not_valid_0(LOGICAL,123)
    assign not_valid_0_q = ~ (valid_0_reg_q);

    // not_valid_or_not_stall_0(LOGICAL,125)
    assign not_valid_or_not_stall_0_q = not_valid_0_q | not_stall_in_0_q;

    // conv2d1x1_B8_branch_enable(LOGICAL,59)
    assign conv2d1x1_B8_branch_enable_q = not_valid_or_not_stall_0_q & not_valid_or_not_stall_1_q;

    // c0_exe17531_reg(REG,3)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe17531_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (conv2d1x1_B8_branch_enable_q == 1'b1)
        begin
            c0_exe17531_reg_q <= $unsigned(in_c0_exe17531);
        end
    end

    // out_c0_exe17531(GPOUT,127)
    assign out_c0_exe17531 = c0_exe17531_reg_q;

    // c0_exe18532_reg(REG,4)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe18532_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (conv2d1x1_B8_branch_enable_q == 1'b1)
        begin
            c0_exe18532_reg_q <= in_c0_exe18532;
        end
    end

    // out_c0_exe18532(GPOUT,128)
    assign out_c0_exe18532 = c0_exe18532_reg_q;

    // c0_exe19533_reg(REG,5)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe19533_reg_q <= $unsigned(1'b0);
        end
        else if (conv2d1x1_B8_branch_enable_q == 1'b1)
        begin
            c0_exe19533_reg_q <= in_c0_exe19533;
        end
    end

    // out_c0_exe19533(GPOUT,129)
    assign out_c0_exe19533 = c0_exe19533_reg_q;

    // c0_exe20534_reg(REG,6)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe20534_reg_q <= $unsigned(1'b0);
        end
        else if (conv2d1x1_B8_branch_enable_q == 1'b1)
        begin
            c0_exe20534_reg_q <= in_c0_exe20534;
        end
    end

    // out_c0_exe20534(GPOUT,130)
    assign out_c0_exe20534 = c0_exe20534_reg_q;

    // c0_exe21535_reg(REG,7)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe21535_reg_q <= $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (conv2d1x1_B8_branch_enable_q == 1'b1)
        begin
            c0_exe21535_reg_q <= in_c0_exe21535;
        end
    end

    // out_c0_exe21535(GPOUT,131)
    assign out_c0_exe21535 = c0_exe21535_reg_q;

    // c0_exe3517_reg(REG,8)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe3517_reg_q <= $unsigned(1'b0);
        end
        else if (conv2d1x1_B8_branch_enable_q == 1'b1)
        begin
            c0_exe3517_reg_q <= in_c0_exe3517;
        end
    end

    // out_c0_exe3517(GPOUT,132)
    assign out_c0_exe3517 = c0_exe3517_reg_q;

    // c0_exe4518_reg(REG,9)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe4518_reg_q <= $unsigned(1'b0);
        end
        else if (conv2d1x1_B8_branch_enable_q == 1'b1)
        begin
            c0_exe4518_reg_q <= in_c0_exe4518;
        end
    end

    // out_c0_exe4518(GPOUT,133)
    assign out_c0_exe4518 = c0_exe4518_reg_q;

    // c0_exe5519_reg(REG,10)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe5519_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (conv2d1x1_B8_branch_enable_q == 1'b1)
        begin
            c0_exe5519_reg_q <= in_c0_exe5519;
        end
    end

    // out_c0_exe5519(GPOUT,134)
    assign out_c0_exe5519 = c0_exe5519_reg_q;

    // c1_exe10_reg(REG,11)
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

    // out_c1_exe10(GPOUT,135)
    assign out_c1_exe10 = c1_exe10_reg_q;

    // c1_exe11_reg(REG,12)
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

    // out_c1_exe11(GPOUT,136)
    assign out_c1_exe11 = c1_exe11_reg_q;

    // c1_exe12_reg(REG,13)
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

    // out_c1_exe12(GPOUT,137)
    assign out_c1_exe12 = c1_exe12_reg_q;

    // c1_exe13_reg(REG,14)
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

    // out_c1_exe13(GPOUT,138)
    assign out_c1_exe13 = c1_exe13_reg_q;

    // c1_exe14_reg(REG,15)
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

    // out_c1_exe14(GPOUT,139)
    assign out_c1_exe14 = c1_exe14_reg_q;

    // c1_exe15_reg(REG,17)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c1_exe15_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (conv2d1x1_B8_branch_enable_q == 1'b1)
        begin
            c1_exe15_reg_q <= $unsigned(in_c1_exe15);
        end
    end

    // out_c1_exe15(GPOUT,140)
    assign out_c1_exe15 = c1_exe15_reg_q;

    // c1_exe1592_reg(REG,16)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c1_exe1592_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (conv2d1x1_B8_branch_enable_q == 1'b1)
        begin
            c1_exe1592_reg_q <= $unsigned(in_c1_exe1592);
        end
    end

    // out_c1_exe1592(GPOUT,141)
    assign out_c1_exe1592 = c1_exe1592_reg_q;

    // c1_exe16_reg(REG,18)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c1_exe16_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (conv2d1x1_B8_branch_enable_q == 1'b1)
        begin
            c1_exe16_reg_q <= $unsigned(in_c1_exe16);
        end
    end

    // out_c1_exe16(GPOUT,142)
    assign out_c1_exe16 = c1_exe16_reg_q;

    // c1_exe17_reg(REG,19)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c1_exe17_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (conv2d1x1_B8_branch_enable_q == 1'b1)
        begin
            c1_exe17_reg_q <= $unsigned(in_c1_exe17);
        end
    end

    // out_c1_exe17(GPOUT,143)
    assign out_c1_exe17 = c1_exe17_reg_q;

    // c1_exe18_reg(REG,20)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c1_exe18_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (conv2d1x1_B8_branch_enable_q == 1'b1)
        begin
            c1_exe18_reg_q <= $unsigned(in_c1_exe18);
        end
    end

    // out_c1_exe18(GPOUT,144)
    assign out_c1_exe18 = c1_exe18_reg_q;

    // c1_exe19_reg(REG,21)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c1_exe19_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (conv2d1x1_B8_branch_enable_q == 1'b1)
        begin
            c1_exe19_reg_q <= $unsigned(in_c1_exe19);
        end
    end

    // out_c1_exe19(GPOUT,145)
    assign out_c1_exe19 = c1_exe19_reg_q;

    // c1_exe2_reg(REG,32)
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

    // out_c1_exe2(GPOUT,146)
    assign out_c1_exe2 = c1_exe2_reg_q;

    // c1_exe20_reg(REG,22)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c1_exe20_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (conv2d1x1_B8_branch_enable_q == 1'b1)
        begin
            c1_exe20_reg_q <= $unsigned(in_c1_exe20);
        end
    end

    // out_c1_exe20(GPOUT,147)
    assign out_c1_exe20 = c1_exe20_reg_q;

    // c1_exe21_reg(REG,23)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c1_exe21_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (conv2d1x1_B8_branch_enable_q == 1'b1)
        begin
            c1_exe21_reg_q <= $unsigned(in_c1_exe21);
        end
    end

    // out_c1_exe21(GPOUT,148)
    assign out_c1_exe21 = c1_exe21_reg_q;

    // c1_exe22_reg(REG,24)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c1_exe22_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (conv2d1x1_B8_branch_enable_q == 1'b1)
        begin
            c1_exe22_reg_q <= $unsigned(in_c1_exe22);
        end
    end

    // out_c1_exe22(GPOUT,149)
    assign out_c1_exe22 = c1_exe22_reg_q;

    // c1_exe23_reg(REG,25)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c1_exe23_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (conv2d1x1_B8_branch_enable_q == 1'b1)
        begin
            c1_exe23_reg_q <= $unsigned(in_c1_exe23);
        end
    end

    // out_c1_exe23(GPOUT,150)
    assign out_c1_exe23 = c1_exe23_reg_q;

    // c1_exe24_reg(REG,26)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c1_exe24_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (conv2d1x1_B8_branch_enable_q == 1'b1)
        begin
            c1_exe24_reg_q <= $unsigned(in_c1_exe24);
        end
    end

    // out_c1_exe24(GPOUT,151)
    assign out_c1_exe24 = c1_exe24_reg_q;

    // c1_exe25_reg(REG,27)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c1_exe25_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (conv2d1x1_B8_branch_enable_q == 1'b1)
        begin
            c1_exe25_reg_q <= $unsigned(in_c1_exe25);
        end
    end

    // out_c1_exe25(GPOUT,152)
    assign out_c1_exe25 = c1_exe25_reg_q;

    // c1_exe26_reg(REG,28)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c1_exe26_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (conv2d1x1_B8_branch_enable_q == 1'b1)
        begin
            c1_exe26_reg_q <= $unsigned(in_c1_exe26);
        end
    end

    // out_c1_exe26(GPOUT,153)
    assign out_c1_exe26 = c1_exe26_reg_q;

    // c1_exe27_reg(REG,29)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c1_exe27_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (conv2d1x1_B8_branch_enable_q == 1'b1)
        begin
            c1_exe27_reg_q <= $unsigned(in_c1_exe27);
        end
    end

    // out_c1_exe27(GPOUT,154)
    assign out_c1_exe27 = c1_exe27_reg_q;

    // c1_exe28_reg(REG,30)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c1_exe28_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (conv2d1x1_B8_branch_enable_q == 1'b1)
        begin
            c1_exe28_reg_q <= $unsigned(in_c1_exe28);
        end
    end

    // out_c1_exe28(GPOUT,155)
    assign out_c1_exe28 = c1_exe28_reg_q;

    // c1_exe29_reg(REG,31)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c1_exe29_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (conv2d1x1_B8_branch_enable_q == 1'b1)
        begin
            c1_exe29_reg_q <= $unsigned(in_c1_exe29);
        end
    end

    // out_c1_exe29(GPOUT,156)
    assign out_c1_exe29 = c1_exe29_reg_q;

    // c1_exe3_reg(REG,43)
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

    // out_c1_exe3(GPOUT,157)
    assign out_c1_exe3 = c1_exe3_reg_q;

    // c1_exe30_reg(REG,33)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c1_exe30_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (conv2d1x1_B8_branch_enable_q == 1'b1)
        begin
            c1_exe30_reg_q <= $unsigned(in_c1_exe30);
        end
    end

    // out_c1_exe30(GPOUT,158)
    assign out_c1_exe30 = c1_exe30_reg_q;

    // c1_exe31_reg(REG,34)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c1_exe31_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (conv2d1x1_B8_branch_enable_q == 1'b1)
        begin
            c1_exe31_reg_q <= $unsigned(in_c1_exe31);
        end
    end

    // out_c1_exe31(GPOUT,159)
    assign out_c1_exe31 = c1_exe31_reg_q;

    // c1_exe32_reg(REG,35)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c1_exe32_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (conv2d1x1_B8_branch_enable_q == 1'b1)
        begin
            c1_exe32_reg_q <= $unsigned(in_c1_exe32);
        end
    end

    // out_c1_exe32(GPOUT,160)
    assign out_c1_exe32 = c1_exe32_reg_q;

    // c1_exe33_reg(REG,36)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c1_exe33_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (conv2d1x1_B8_branch_enable_q == 1'b1)
        begin
            c1_exe33_reg_q <= $unsigned(in_c1_exe33);
        end
    end

    // out_c1_exe33(GPOUT,161)
    assign out_c1_exe33 = c1_exe33_reg_q;

    // c1_exe34_reg(REG,37)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c1_exe34_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (conv2d1x1_B8_branch_enable_q == 1'b1)
        begin
            c1_exe34_reg_q <= $unsigned(in_c1_exe34);
        end
    end

    // out_c1_exe34(GPOUT,162)
    assign out_c1_exe34 = c1_exe34_reg_q;

    // c1_exe35_reg(REG,38)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c1_exe35_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (conv2d1x1_B8_branch_enable_q == 1'b1)
        begin
            c1_exe35_reg_q <= $unsigned(in_c1_exe35);
        end
    end

    // out_c1_exe35(GPOUT,163)
    assign out_c1_exe35 = c1_exe35_reg_q;

    // c1_exe36_reg(REG,39)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c1_exe36_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (conv2d1x1_B8_branch_enable_q == 1'b1)
        begin
            c1_exe36_reg_q <= $unsigned(in_c1_exe36);
        end
    end

    // out_c1_exe36(GPOUT,164)
    assign out_c1_exe36 = c1_exe36_reg_q;

    // c1_exe37_reg(REG,40)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c1_exe37_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (conv2d1x1_B8_branch_enable_q == 1'b1)
        begin
            c1_exe37_reg_q <= $unsigned(in_c1_exe37);
        end
    end

    // out_c1_exe37(GPOUT,165)
    assign out_c1_exe37 = c1_exe37_reg_q;

    // c1_exe38_reg(REG,41)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c1_exe38_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (conv2d1x1_B8_branch_enable_q == 1'b1)
        begin
            c1_exe38_reg_q <= $unsigned(in_c1_exe38);
        end
    end

    // out_c1_exe38(GPOUT,166)
    assign out_c1_exe38 = c1_exe38_reg_q;

    // c1_exe39_reg(REG,42)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c1_exe39_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (conv2d1x1_B8_branch_enable_q == 1'b1)
        begin
            c1_exe39_reg_q <= $unsigned(in_c1_exe39);
        end
    end

    // out_c1_exe39(GPOUT,167)
    assign out_c1_exe39 = c1_exe39_reg_q;

    // c1_exe4_reg(REG,53)
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

    // out_c1_exe4(GPOUT,168)
    assign out_c1_exe4 = c1_exe4_reg_q;

    // c1_exe40_reg(REG,44)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c1_exe40_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (conv2d1x1_B8_branch_enable_q == 1'b1)
        begin
            c1_exe40_reg_q <= $unsigned(in_c1_exe40);
        end
    end

    // out_c1_exe40(GPOUT,169)
    assign out_c1_exe40 = c1_exe40_reg_q;

    // c1_exe41_reg(REG,45)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c1_exe41_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (conv2d1x1_B8_branch_enable_q == 1'b1)
        begin
            c1_exe41_reg_q <= $unsigned(in_c1_exe41);
        end
    end

    // out_c1_exe41(GPOUT,170)
    assign out_c1_exe41 = c1_exe41_reg_q;

    // c1_exe42_reg(REG,46)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c1_exe42_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (conv2d1x1_B8_branch_enable_q == 1'b1)
        begin
            c1_exe42_reg_q <= $unsigned(in_c1_exe42);
        end
    end

    // out_c1_exe42(GPOUT,171)
    assign out_c1_exe42 = c1_exe42_reg_q;

    // c1_exe43_reg(REG,47)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c1_exe43_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (conv2d1x1_B8_branch_enable_q == 1'b1)
        begin
            c1_exe43_reg_q <= $unsigned(in_c1_exe43);
        end
    end

    // out_c1_exe43(GPOUT,172)
    assign out_c1_exe43 = c1_exe43_reg_q;

    // c1_exe44_reg(REG,48)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c1_exe44_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (conv2d1x1_B8_branch_enable_q == 1'b1)
        begin
            c1_exe44_reg_q <= $unsigned(in_c1_exe44);
        end
    end

    // out_c1_exe44(GPOUT,173)
    assign out_c1_exe44 = c1_exe44_reg_q;

    // c1_exe45_reg(REG,49)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c1_exe45_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (conv2d1x1_B8_branch_enable_q == 1'b1)
        begin
            c1_exe45_reg_q <= $unsigned(in_c1_exe45);
        end
    end

    // out_c1_exe45(GPOUT,174)
    assign out_c1_exe45 = c1_exe45_reg_q;

    // c1_exe46_reg(REG,50)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c1_exe46_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (conv2d1x1_B8_branch_enable_q == 1'b1)
        begin
            c1_exe46_reg_q <= $unsigned(in_c1_exe46);
        end
    end

    // out_c1_exe46(GPOUT,175)
    assign out_c1_exe46 = c1_exe46_reg_q;

    // c1_exe47_reg(REG,51)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c1_exe47_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (conv2d1x1_B8_branch_enable_q == 1'b1)
        begin
            c1_exe47_reg_q <= $unsigned(in_c1_exe47);
        end
    end

    // out_c1_exe47(GPOUT,176)
    assign out_c1_exe47 = c1_exe47_reg_q;

    // c1_exe48_reg(REG,52)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c1_exe48_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (conv2d1x1_B8_branch_enable_q == 1'b1)
        begin
            c1_exe48_reg_q <= $unsigned(in_c1_exe48);
        end
    end

    // out_c1_exe48(GPOUT,177)
    assign out_c1_exe48 = c1_exe48_reg_q;

    // c1_exe5_reg(REG,54)
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

    // out_c1_exe5(GPOUT,178)
    assign out_c1_exe5 = c1_exe5_reg_q;

    // c1_exe6_reg(REG,55)
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

    // out_c1_exe6(GPOUT,179)
    assign out_c1_exe6 = c1_exe6_reg_q;

    // c1_exe7_reg(REG,56)
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

    // out_c1_exe7(GPOUT,180)
    assign out_c1_exe7 = c1_exe7_reg_q;

    // c1_exe8_reg(REG,57)
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

    // out_c1_exe8(GPOUT,181)
    assign out_c1_exe8 = c1_exe8_reg_q;

    // c1_exe9_reg(REG,58)
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

    // out_c1_exe9(GPOUT,182)
    assign out_c1_exe9 = c1_exe9_reg_q;

    // conv2d1x1_B8_branch_enable_not(LOGICAL,60)
    assign conv2d1x1_B8_branch_enable_not_q = ~ (conv2d1x1_B8_branch_enable_q);

    // out_stall_out(GPOUT,183)
    assign out_stall_out = conv2d1x1_B8_branch_enable_not_q;

    // out_valid_out_0(GPOUT,184)
    assign out_valid_out_0 = valid_0_reg_q;

    // out_valid_out_1(GPOUT,185)
    assign out_valid_out_1 = valid_1_reg_q;

endmodule
