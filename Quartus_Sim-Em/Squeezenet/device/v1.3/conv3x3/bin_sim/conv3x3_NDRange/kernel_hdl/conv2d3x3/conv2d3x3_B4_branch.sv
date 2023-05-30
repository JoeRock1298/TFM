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

// SystemVerilog created from conv2d3x3_B4_branch
// SystemVerilog created on Tue May 30 12:30:48 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2d3x3_B4_branch (
    input wire [0:0] in_c0_exe1084,
    input wire [63:0] in_c0_exe114,
    input wire [0:0] in_c0_exe1193,
    input wire [31:0] in_c0_exe12104,
    input wire [0:0] in_c0_exe13114,
    input wire [0:0] in_c0_exe14123,
    input wire [0:0] in_c0_exe15133,
    input wire [0:0] in_c0_exe16134,
    input wire [63:0] in_c0_exe316,
    input wire [0:0] in_c0_exe425,
    input wire [31:0] in_c0_exe536,
    input wire [31:0] in_c0_exe643,
    input wire [0:0] in_c0_exe755,
    input wire [0:0] in_c0_exe864,
    input wire [31:0] in_c0_exe974,
    input wire [31:0] in_inc69,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [31:0] in_unnamed_conv2d3x34,
    input wire [0:0] in_unnamed_conv2d3x35,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_c0_exe1084,
    output wire [63:0] out_c0_exe114,
    output wire [0:0] out_c0_exe1193,
    output wire [31:0] out_c0_exe12104,
    output wire [0:0] out_c0_exe13114,
    output wire [0:0] out_c0_exe14123,
    output wire [0:0] out_c0_exe15133,
    output wire [0:0] out_c0_exe16134,
    output wire [63:0] out_c0_exe316,
    output wire [0:0] out_c0_exe425,
    output wire [31:0] out_c0_exe536,
    output wire [31:0] out_c0_exe643,
    output wire [0:0] out_c0_exe755,
    output wire [0:0] out_c0_exe864,
    output wire [31:0] out_c0_exe974,
    output wire [31:0] out_inc69,
    output wire [0:0] out_stall_out,
    output wire [31:0] out_unnamed_conv2d3x34,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    reg [0:0] c0_exe1084_reg_q;
    reg [63:0] c0_exe114_reg_q;
    reg [0:0] c0_exe1193_reg_q;
    reg [31:0] c0_exe12104_reg_q;
    reg [0:0] c0_exe13114_reg_q;
    reg [0:0] c0_exe14123_reg_q;
    reg [0:0] c0_exe15133_reg_q;
    reg [0:0] c0_exe16134_reg_q;
    reg [63:0] c0_exe316_reg_q;
    reg [0:0] c0_exe425_reg_q;
    reg [31:0] c0_exe536_reg_q;
    reg [31:0] c0_exe643_reg_q;
    reg [0:0] c0_exe755_reg_q;
    reg [0:0] c0_exe864_reg_q;
    reg [31:0] c0_exe974_reg_q;
    wire [0:0] conv2d3x3_B4_branch_enable_q;
    wire [0:0] conv2d3x3_B4_branch_enable_not_q;
    reg [31:0] inc69_reg_q;
    wire [0:0] not_stall_in_0_q;
    wire [0:0] not_stall_in_1_q;
    wire [0:0] not_valid_0_q;
    wire [0:0] not_valid_1_q;
    wire [0:0] not_valid_or_not_stall_0_q;
    wire [0:0] not_valid_or_not_stall_1_q;
    reg [31:0] unnamed_conv2d3x34_reg_q;
    wire [0:0] unnamed_conv2d3x35_cmp_q;
    reg [0:0] valid_0_reg_q;
    reg [0:0] valid_1_reg_q;
    wire [0:0] valid_out_0_and_q;
    wire [0:0] valid_out_1_and_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // not_stall_in_1(LOGICAL,42)
    assign not_stall_in_1_q = ~ (in_stall_in_1);

    // unnamed_conv2d3x35_cmp(LOGICAL,68)
    assign unnamed_conv2d3x35_cmp_q = ~ (in_unnamed_conv2d3x35);

    // valid_out_1_and(LOGICAL,72)
    assign valid_out_1_and_q = in_valid_in & unnamed_conv2d3x35_cmp_q;

    // valid_1_reg(REG,70)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_1_reg_q <= $unsigned(1'b0);
        end
        else if (conv2d3x3_B4_branch_enable_q == 1'b1)
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

    // valid_out_0_and(LOGICAL,71)
    assign valid_out_0_and_q = in_valid_in & in_unnamed_conv2d3x35;

    // valid_0_reg(REG,69)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_0_reg_q <= $unsigned(1'b0);
        end
        else if (conv2d3x3_B4_branch_enable_q == 1'b1)
        begin
            valid_0_reg_q <= valid_out_0_and_q;
        end
    end

    // not_valid_0(LOGICAL,43)
    assign not_valid_0_q = ~ (valid_0_reg_q);

    // not_valid_or_not_stall_0(LOGICAL,45)
    assign not_valid_or_not_stall_0_q = not_valid_0_q | not_stall_in_0_q;

    // conv2d3x3_B4_branch_enable(LOGICAL,17)
    assign conv2d3x3_B4_branch_enable_q = not_valid_or_not_stall_0_q & not_valid_or_not_stall_1_q;

    // c0_exe1084_reg(REG,2)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe1084_reg_q <= $unsigned(1'b0);
        end
        else if (conv2d3x3_B4_branch_enable_q == 1'b1)
        begin
            c0_exe1084_reg_q <= in_c0_exe1084;
        end
    end

    // out_c0_exe1084(GPOUT,47)
    assign out_c0_exe1084 = c0_exe1084_reg_q;

    // c0_exe114_reg(REG,3)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe114_reg_q <= $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (conv2d3x3_B4_branch_enable_q == 1'b1)
        begin
            c0_exe114_reg_q <= in_c0_exe114;
        end
    end

    // out_c0_exe114(GPOUT,48)
    assign out_c0_exe114 = c0_exe114_reg_q;

    // c0_exe1193_reg(REG,4)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe1193_reg_q <= $unsigned(1'b0);
        end
        else if (conv2d3x3_B4_branch_enable_q == 1'b1)
        begin
            c0_exe1193_reg_q <= in_c0_exe1193;
        end
    end

    // out_c0_exe1193(GPOUT,49)
    assign out_c0_exe1193 = c0_exe1193_reg_q;

    // c0_exe12104_reg(REG,5)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe12104_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (conv2d3x3_B4_branch_enable_q == 1'b1)
        begin
            c0_exe12104_reg_q <= in_c0_exe12104;
        end
    end

    // out_c0_exe12104(GPOUT,50)
    assign out_c0_exe12104 = c0_exe12104_reg_q;

    // c0_exe13114_reg(REG,6)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe13114_reg_q <= $unsigned(1'b0);
        end
        else if (conv2d3x3_B4_branch_enable_q == 1'b1)
        begin
            c0_exe13114_reg_q <= in_c0_exe13114;
        end
    end

    // out_c0_exe13114(GPOUT,51)
    assign out_c0_exe13114 = c0_exe13114_reg_q;

    // c0_exe14123_reg(REG,7)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe14123_reg_q <= $unsigned(1'b0);
        end
        else if (conv2d3x3_B4_branch_enable_q == 1'b1)
        begin
            c0_exe14123_reg_q <= in_c0_exe14123;
        end
    end

    // out_c0_exe14123(GPOUT,52)
    assign out_c0_exe14123 = c0_exe14123_reg_q;

    // c0_exe15133_reg(REG,8)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe15133_reg_q <= $unsigned(1'b0);
        end
        else if (conv2d3x3_B4_branch_enable_q == 1'b1)
        begin
            c0_exe15133_reg_q <= in_c0_exe15133;
        end
    end

    // out_c0_exe15133(GPOUT,53)
    assign out_c0_exe15133 = c0_exe15133_reg_q;

    // c0_exe16134_reg(REG,9)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe16134_reg_q <= $unsigned(1'b0);
        end
        else if (conv2d3x3_B4_branch_enable_q == 1'b1)
        begin
            c0_exe16134_reg_q <= in_c0_exe16134;
        end
    end

    // out_c0_exe16134(GPOUT,54)
    assign out_c0_exe16134 = c0_exe16134_reg_q;

    // c0_exe316_reg(REG,10)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe316_reg_q <= $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (conv2d3x3_B4_branch_enable_q == 1'b1)
        begin
            c0_exe316_reg_q <= in_c0_exe316;
        end
    end

    // out_c0_exe316(GPOUT,55)
    assign out_c0_exe316 = c0_exe316_reg_q;

    // c0_exe425_reg(REG,11)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe425_reg_q <= $unsigned(1'b0);
        end
        else if (conv2d3x3_B4_branch_enable_q == 1'b1)
        begin
            c0_exe425_reg_q <= in_c0_exe425;
        end
    end

    // out_c0_exe425(GPOUT,56)
    assign out_c0_exe425 = c0_exe425_reg_q;

    // c0_exe536_reg(REG,12)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe536_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (conv2d3x3_B4_branch_enable_q == 1'b1)
        begin
            c0_exe536_reg_q <= in_c0_exe536;
        end
    end

    // out_c0_exe536(GPOUT,57)
    assign out_c0_exe536 = c0_exe536_reg_q;

    // c0_exe643_reg(REG,13)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe643_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (conv2d3x3_B4_branch_enable_q == 1'b1)
        begin
            c0_exe643_reg_q <= in_c0_exe643;
        end
    end

    // out_c0_exe643(GPOUT,58)
    assign out_c0_exe643 = c0_exe643_reg_q;

    // c0_exe755_reg(REG,14)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe755_reg_q <= $unsigned(1'b0);
        end
        else if (conv2d3x3_B4_branch_enable_q == 1'b1)
        begin
            c0_exe755_reg_q <= in_c0_exe755;
        end
    end

    // out_c0_exe755(GPOUT,59)
    assign out_c0_exe755 = c0_exe755_reg_q;

    // c0_exe864_reg(REG,15)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe864_reg_q <= $unsigned(1'b0);
        end
        else if (conv2d3x3_B4_branch_enable_q == 1'b1)
        begin
            c0_exe864_reg_q <= in_c0_exe864;
        end
    end

    // out_c0_exe864(GPOUT,60)
    assign out_c0_exe864 = c0_exe864_reg_q;

    // c0_exe974_reg(REG,16)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe974_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (conv2d3x3_B4_branch_enable_q == 1'b1)
        begin
            c0_exe974_reg_q <= in_c0_exe974;
        end
    end

    // out_c0_exe974(GPOUT,61)
    assign out_c0_exe974 = c0_exe974_reg_q;

    // inc69_reg(REG,19)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            inc69_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (conv2d3x3_B4_branch_enable_q == 1'b1)
        begin
            inc69_reg_q <= in_inc69;
        end
    end

    // out_inc69(GPOUT,62)
    assign out_inc69 = inc69_reg_q;

    // conv2d3x3_B4_branch_enable_not(LOGICAL,18)
    assign conv2d3x3_B4_branch_enable_not_q = ~ (conv2d3x3_B4_branch_enable_q);

    // out_stall_out(GPOUT,63)
    assign out_stall_out = conv2d3x3_B4_branch_enable_not_q;

    // unnamed_conv2d3x34_reg(REG,67)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            unnamed_conv2d3x34_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (conv2d3x3_B4_branch_enable_q == 1'b1)
        begin
            unnamed_conv2d3x34_reg_q <= $unsigned(in_unnamed_conv2d3x34);
        end
    end

    // out_unnamed_conv2d3x34(GPOUT,64)
    assign out_unnamed_conv2d3x34 = unnamed_conv2d3x34_reg_q;

    // out_valid_out_0(GPOUT,65)
    assign out_valid_out_0 = valid_0_reg_q;

    // out_valid_out_1(GPOUT,66)
    assign out_valid_out_1 = valid_1_reg_q;

endmodule
