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

// SystemVerilog created from conv2d1x1_B2_branch
// SystemVerilog created on Tue May 23 20:43:36 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2d1x1_B2_branch (
    input wire [31:0] in_c0_exe10,
    input wire [31:0] in_c0_exe11,
    input wire [31:0] in_c0_exe12,
    input wire [31:0] in_c0_exe13,
    input wire [31:0] in_c0_exe14,
    input wire [31:0] in_c0_exe15,
    input wire [31:0] in_c0_exe16,
    input wire [31:0] in_c0_exe17,
    input wire [0:0] in_c0_exe18,
    input wire [31:0] in_c0_exe2,
    input wire [31:0] in_c0_exe3,
    input wire [31:0] in_c0_exe4,
    input wire [31:0] in_c0_exe5,
    input wire [31:0] in_c0_exe6,
    input wire [31:0] in_c0_exe7,
    input wire [31:0] in_c0_exe8,
    input wire [31:0] in_c0_exe9,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [0:0] in_valid_in,
    output wire [31:0] out_c0_exe10,
    output wire [31:0] out_c0_exe11,
    output wire [31:0] out_c0_exe12,
    output wire [31:0] out_c0_exe13,
    output wire [31:0] out_c0_exe14,
    output wire [31:0] out_c0_exe15,
    output wire [31:0] out_c0_exe16,
    output wire [31:0] out_c0_exe17,
    output wire [31:0] out_c0_exe2,
    output wire [31:0] out_c0_exe3,
    output wire [31:0] out_c0_exe4,
    output wire [31:0] out_c0_exe5,
    output wire [31:0] out_c0_exe6,
    output wire [31:0] out_c0_exe7,
    output wire [31:0] out_c0_exe8,
    output wire [31:0] out_c0_exe9,
    output wire [0:0] out_stall_out,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    reg [31:0] c0_exe10_reg_q;
    reg [31:0] c0_exe11_reg_q;
    reg [31:0] c0_exe12_reg_q;
    reg [31:0] c0_exe13_reg_q;
    reg [31:0] c0_exe14_reg_q;
    reg [31:0] c0_exe15_reg_q;
    reg [31:0] c0_exe16_reg_q;
    reg [31:0] c0_exe17_reg_q;
    wire [0:0] c0_exe18_cmp_q;
    reg [31:0] c0_exe2_reg_q;
    reg [31:0] c0_exe3_reg_q;
    reg [31:0] c0_exe4_reg_q;
    reg [31:0] c0_exe5_reg_q;
    reg [31:0] c0_exe6_reg_q;
    reg [31:0] c0_exe7_reg_q;
    reg [31:0] c0_exe8_reg_q;
    reg [31:0] c0_exe9_reg_q;
    wire [0:0] conv2d1x1_B2_branch_enable_q;
    wire [0:0] conv2d1x1_B2_branch_enable_not_q;
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

    // not_stall_in_1(LOGICAL,42)
    assign not_stall_in_1_q = ~ (in_stall_in_1);

    // c0_exe18_cmp(LOGICAL,10)
    assign c0_exe18_cmp_q = ~ (in_c0_exe18);

    // valid_out_1_and(LOGICAL,69)
    assign valid_out_1_and_q = in_valid_in & c0_exe18_cmp_q;

    // valid_1_reg(REG,67)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_1_reg_q <= $unsigned(1'b0);
        end
        else if (conv2d1x1_B2_branch_enable_q == 1'b1)
        begin
            valid_1_reg_q <= valid_out_1_and_q;
        end
    end

    // not_valid_1(LOGICAL,44)
    assign not_valid_1_q = ~ (valid_1_reg_q);

    // not_valid_or_not_stall_1(LOGICAL,46)
    assign not_valid_or_not_stall_1_q = not_valid_1_q | not_stall_in_1_q;

    // not_stall_in_0(LOGICAL,41)
    assign not_stall_in_0_q = ~ (in_stall_in_0);

    // valid_out_0_and(LOGICAL,68)
    assign valid_out_0_and_q = in_valid_in & in_c0_exe18;

    // valid_0_reg(REG,66)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_0_reg_q <= $unsigned(1'b0);
        end
        else if (conv2d1x1_B2_branch_enable_q == 1'b1)
        begin
            valid_0_reg_q <= valid_out_0_and_q;
        end
    end

    // not_valid_0(LOGICAL,43)
    assign not_valid_0_q = ~ (valid_0_reg_q);

    // not_valid_or_not_stall_0(LOGICAL,45)
    assign not_valid_or_not_stall_0_q = not_valid_0_q | not_stall_in_0_q;

    // conv2d1x1_B2_branch_enable(LOGICAL,19)
    assign conv2d1x1_B2_branch_enable_q = not_valid_or_not_stall_0_q & not_valid_or_not_stall_1_q;

    // c0_exe10_reg(REG,2)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe10_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (conv2d1x1_B2_branch_enable_q == 1'b1)
        begin
            c0_exe10_reg_q <= $unsigned(in_c0_exe10);
        end
    end

    // out_c0_exe10(GPOUT,47)
    assign out_c0_exe10 = c0_exe10_reg_q;

    // c0_exe11_reg(REG,3)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe11_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (conv2d1x1_B2_branch_enable_q == 1'b1)
        begin
            c0_exe11_reg_q <= $unsigned(in_c0_exe11);
        end
    end

    // out_c0_exe11(GPOUT,48)
    assign out_c0_exe11 = c0_exe11_reg_q;

    // c0_exe12_reg(REG,4)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe12_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (conv2d1x1_B2_branch_enable_q == 1'b1)
        begin
            c0_exe12_reg_q <= $unsigned(in_c0_exe12);
        end
    end

    // out_c0_exe12(GPOUT,49)
    assign out_c0_exe12 = c0_exe12_reg_q;

    // c0_exe13_reg(REG,5)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe13_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (conv2d1x1_B2_branch_enable_q == 1'b1)
        begin
            c0_exe13_reg_q <= $unsigned(in_c0_exe13);
        end
    end

    // out_c0_exe13(GPOUT,50)
    assign out_c0_exe13 = c0_exe13_reg_q;

    // c0_exe14_reg(REG,6)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe14_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (conv2d1x1_B2_branch_enable_q == 1'b1)
        begin
            c0_exe14_reg_q <= $unsigned(in_c0_exe14);
        end
    end

    // out_c0_exe14(GPOUT,51)
    assign out_c0_exe14 = c0_exe14_reg_q;

    // c0_exe15_reg(REG,7)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe15_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (conv2d1x1_B2_branch_enable_q == 1'b1)
        begin
            c0_exe15_reg_q <= $unsigned(in_c0_exe15);
        end
    end

    // out_c0_exe15(GPOUT,52)
    assign out_c0_exe15 = c0_exe15_reg_q;

    // c0_exe16_reg(REG,8)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe16_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (conv2d1x1_B2_branch_enable_q == 1'b1)
        begin
            c0_exe16_reg_q <= $unsigned(in_c0_exe16);
        end
    end

    // out_c0_exe16(GPOUT,53)
    assign out_c0_exe16 = c0_exe16_reg_q;

    // c0_exe17_reg(REG,9)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe17_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (conv2d1x1_B2_branch_enable_q == 1'b1)
        begin
            c0_exe17_reg_q <= $unsigned(in_c0_exe17);
        end
    end

    // out_c0_exe17(GPOUT,54)
    assign out_c0_exe17 = c0_exe17_reg_q;

    // c0_exe2_reg(REG,11)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe2_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (conv2d1x1_B2_branch_enable_q == 1'b1)
        begin
            c0_exe2_reg_q <= $unsigned(in_c0_exe2);
        end
    end

    // out_c0_exe2(GPOUT,55)
    assign out_c0_exe2 = c0_exe2_reg_q;

    // c0_exe3_reg(REG,12)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe3_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (conv2d1x1_B2_branch_enable_q == 1'b1)
        begin
            c0_exe3_reg_q <= $unsigned(in_c0_exe3);
        end
    end

    // out_c0_exe3(GPOUT,56)
    assign out_c0_exe3 = c0_exe3_reg_q;

    // c0_exe4_reg(REG,13)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe4_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (conv2d1x1_B2_branch_enable_q == 1'b1)
        begin
            c0_exe4_reg_q <= $unsigned(in_c0_exe4);
        end
    end

    // out_c0_exe4(GPOUT,57)
    assign out_c0_exe4 = c0_exe4_reg_q;

    // c0_exe5_reg(REG,14)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe5_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (conv2d1x1_B2_branch_enable_q == 1'b1)
        begin
            c0_exe5_reg_q <= $unsigned(in_c0_exe5);
        end
    end

    // out_c0_exe5(GPOUT,58)
    assign out_c0_exe5 = c0_exe5_reg_q;

    // c0_exe6_reg(REG,15)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe6_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (conv2d1x1_B2_branch_enable_q == 1'b1)
        begin
            c0_exe6_reg_q <= $unsigned(in_c0_exe6);
        end
    end

    // out_c0_exe6(GPOUT,59)
    assign out_c0_exe6 = c0_exe6_reg_q;

    // c0_exe7_reg(REG,16)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe7_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (conv2d1x1_B2_branch_enable_q == 1'b1)
        begin
            c0_exe7_reg_q <= $unsigned(in_c0_exe7);
        end
    end

    // out_c0_exe7(GPOUT,60)
    assign out_c0_exe7 = c0_exe7_reg_q;

    // c0_exe8_reg(REG,17)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe8_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (conv2d1x1_B2_branch_enable_q == 1'b1)
        begin
            c0_exe8_reg_q <= $unsigned(in_c0_exe8);
        end
    end

    // out_c0_exe8(GPOUT,61)
    assign out_c0_exe8 = c0_exe8_reg_q;

    // c0_exe9_reg(REG,18)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe9_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (conv2d1x1_B2_branch_enable_q == 1'b1)
        begin
            c0_exe9_reg_q <= $unsigned(in_c0_exe9);
        end
    end

    // out_c0_exe9(GPOUT,62)
    assign out_c0_exe9 = c0_exe9_reg_q;

    // conv2d1x1_B2_branch_enable_not(LOGICAL,20)
    assign conv2d1x1_B2_branch_enable_not_q = ~ (conv2d1x1_B2_branch_enable_q);

    // out_stall_out(GPOUT,63)
    assign out_stall_out = conv2d1x1_B2_branch_enable_not_q;

    // out_valid_out_0(GPOUT,64)
    assign out_valid_out_0 = valid_0_reg_q;

    // out_valid_out_1(GPOUT,65)
    assign out_valid_out_1 = valid_1_reg_q;

endmodule
