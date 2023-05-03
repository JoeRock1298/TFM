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

// SystemVerilog created from mmul_B6_branch
// SystemVerilog created on Wed May  3 13:07:53 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module mmul_B6_branch (
    input wire [0:0] in_c0_exe10100,
    input wire [0:0] in_c0_exe11101,
    input wire [0:0] in_c0_exe12102,
    input wire [0:0] in_c0_exe13,
    input wire [0:0] in_c0_exe14,
    input wire [0:0] in_c0_exe292,
    input wire [31:0] in_c0_exe393,
    input wire [31:0] in_c0_exe797,
    input wire [31:0] in_c1_exe1,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_c0_exe11101,
    output wire [0:0] out_c0_exe12102,
    output wire [0:0] out_c0_exe13,
    output wire [0:0] out_c0_exe14,
    output wire [0:0] out_c0_exe292,
    output wire [31:0] out_c0_exe393,
    output wire [31:0] out_c0_exe797,
    output wire [31:0] out_c1_exe1,
    output wire [0:0] out_stall_out,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    wire [0:0] c0_exe10100_cmp_q;
    reg [0:0] c0_exe11101_reg_q;
    reg [0:0] c0_exe12102_reg_q;
    reg [0:0] c0_exe13_reg_q;
    reg [0:0] c0_exe14_reg_q;
    reg [0:0] c0_exe292_reg_q;
    reg [31:0] c0_exe393_reg_q;
    reg [31:0] c0_exe797_reg_q;
    reg [31:0] c1_exe1_reg_q;
    wire [0:0] mmul_B6_branch_enable_q;
    wire [0:0] mmul_B6_branch_enable_not_q;
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

    // not_stall_in_1(LOGICAL,26)
    assign not_stall_in_1_q = ~ (in_stall_in_1);

    // c0_exe10100_cmp(LOGICAL,2)
    assign c0_exe10100_cmp_q = ~ (in_c0_exe10100);

    // valid_out_1_and(LOGICAL,45)
    assign valid_out_1_and_q = in_valid_in & c0_exe10100_cmp_q;

    // valid_1_reg(REG,43)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_1_reg_q <= $unsigned(1'b0);
        end
        else if (mmul_B6_branch_enable_q == 1'b1)
        begin
            valid_1_reg_q <= valid_out_1_and_q;
        end
    end

    // not_valid_1(LOGICAL,28)
    assign not_valid_1_q = ~ (valid_1_reg_q);

    // not_valid_or_not_stall_1(LOGICAL,30)
    assign not_valid_or_not_stall_1_q = not_valid_1_q | not_stall_in_1_q;

    // not_stall_in_0(LOGICAL,25)
    assign not_stall_in_0_q = ~ (in_stall_in_0);

    // valid_out_0_and(LOGICAL,44)
    assign valid_out_0_and_q = in_valid_in & in_c0_exe10100;

    // valid_0_reg(REG,42)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_0_reg_q <= $unsigned(1'b0);
        end
        else if (mmul_B6_branch_enable_q == 1'b1)
        begin
            valid_0_reg_q <= valid_out_0_and_q;
        end
    end

    // not_valid_0(LOGICAL,27)
    assign not_valid_0_q = ~ (valid_0_reg_q);

    // not_valid_or_not_stall_0(LOGICAL,29)
    assign not_valid_or_not_stall_0_q = not_valid_0_q | not_stall_in_0_q;

    // mmul_B6_branch_enable(LOGICAL,23)
    assign mmul_B6_branch_enable_q = not_valid_or_not_stall_0_q & not_valid_or_not_stall_1_q;

    // c0_exe11101_reg(REG,3)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe11101_reg_q <= $unsigned(1'b0);
        end
        else if (mmul_B6_branch_enable_q == 1'b1)
        begin
            c0_exe11101_reg_q <= in_c0_exe11101;
        end
    end

    // out_c0_exe11101(GPOUT,31)
    assign out_c0_exe11101 = c0_exe11101_reg_q;

    // c0_exe12102_reg(REG,4)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe12102_reg_q <= $unsigned(1'b0);
        end
        else if (mmul_B6_branch_enable_q == 1'b1)
        begin
            c0_exe12102_reg_q <= in_c0_exe12102;
        end
    end

    // out_c0_exe12102(GPOUT,32)
    assign out_c0_exe12102 = c0_exe12102_reg_q;

    // c0_exe13_reg(REG,5)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe13_reg_q <= $unsigned(1'b0);
        end
        else if (mmul_B6_branch_enable_q == 1'b1)
        begin
            c0_exe13_reg_q <= in_c0_exe13;
        end
    end

    // out_c0_exe13(GPOUT,33)
    assign out_c0_exe13 = c0_exe13_reg_q;

    // c0_exe14_reg(REG,6)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe14_reg_q <= $unsigned(1'b0);
        end
        else if (mmul_B6_branch_enable_q == 1'b1)
        begin
            c0_exe14_reg_q <= in_c0_exe14;
        end
    end

    // out_c0_exe14(GPOUT,34)
    assign out_c0_exe14 = c0_exe14_reg_q;

    // c0_exe292_reg(REG,7)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe292_reg_q <= $unsigned(1'b0);
        end
        else if (mmul_B6_branch_enable_q == 1'b1)
        begin
            c0_exe292_reg_q <= in_c0_exe292;
        end
    end

    // out_c0_exe292(GPOUT,35)
    assign out_c0_exe292 = c0_exe292_reg_q;

    // c0_exe393_reg(REG,8)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe393_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (mmul_B6_branch_enable_q == 1'b1)
        begin
            c0_exe393_reg_q <= in_c0_exe393;
        end
    end

    // out_c0_exe393(GPOUT,36)
    assign out_c0_exe393 = c0_exe393_reg_q;

    // c0_exe797_reg(REG,9)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe797_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (mmul_B6_branch_enable_q == 1'b1)
        begin
            c0_exe797_reg_q <= in_c0_exe797;
        end
    end

    // out_c0_exe797(GPOUT,37)
    assign out_c0_exe797 = c0_exe797_reg_q;

    // c1_exe1_reg(REG,10)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c1_exe1_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (mmul_B6_branch_enable_q == 1'b1)
        begin
            c1_exe1_reg_q <= $unsigned(in_c1_exe1);
        end
    end

    // out_c1_exe1(GPOUT,38)
    assign out_c1_exe1 = c1_exe1_reg_q;

    // mmul_B6_branch_enable_not(LOGICAL,24)
    assign mmul_B6_branch_enable_not_q = ~ (mmul_B6_branch_enable_q);

    // out_stall_out(GPOUT,39)
    assign out_stall_out = mmul_B6_branch_enable_not_q;

    // out_valid_out_0(GPOUT,40)
    assign out_valid_out_0 = valid_0_reg_q;

    // out_valid_out_1(GPOUT,41)
    assign out_valid_out_1 = valid_1_reg_q;

endmodule
