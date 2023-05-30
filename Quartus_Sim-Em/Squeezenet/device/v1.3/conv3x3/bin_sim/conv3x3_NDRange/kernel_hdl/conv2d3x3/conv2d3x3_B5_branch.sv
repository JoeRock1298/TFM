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

// SystemVerilog created from conv2d3x3_B5_branch
// SystemVerilog created on Tue May 30 12:30:48 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2d3x3_B5_branch (
    input wire [0:0] in_c0_exe1081,
    input wire [63:0] in_c0_exe111,
    input wire [31:0] in_c0_exe1186151,
    input wire [0:0] in_c0_exe1190,
    input wire [31:0] in_c0_exe1195167,
    input wire [31:0] in_c0_exe12101,
    input wire [31:0] in_c0_exe1214,
    input wire [0:0] in_c0_exe13111,
    input wire [0:0] in_c0_exe14120,
    input wire [0:0] in_c0_exe15130,
    input wire [0:0] in_c0_exe16140,
    input wire [31:0] in_c0_exe2196168,
    input wire [63:0] in_c0_exe322,
    input wire [0:0] in_c0_exe431,
    input wire [31:0] in_c0_exe542,
    input wire [31:0] in_c0_exe649,
    input wire [0:0] in_c0_exe752,
    input wire [0:0] in_c0_exe861,
    input wire [31:0] in_c0_exe971,
    input wire [31:0] in_inc,
    input wire [31:0] in_j_062149,
    input wire [31:0] in_k_059163,
    input wire [31:0] in_mul46_add4172,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [31:0] in_unnamed_conv2d3x37,
    input wire [0:0] in_unnamed_conv2d3x38,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_c0_exe1081,
    output wire [63:0] out_c0_exe111,
    output wire [31:0] out_c0_exe1186151,
    output wire [0:0] out_c0_exe1190,
    output wire [31:0] out_c0_exe1195167,
    output wire [31:0] out_c0_exe12101,
    output wire [31:0] out_c0_exe1214,
    output wire [0:0] out_c0_exe13111,
    output wire [0:0] out_c0_exe14120,
    output wire [0:0] out_c0_exe15130,
    output wire [0:0] out_c0_exe16140,
    output wire [31:0] out_c0_exe2196168,
    output wire [63:0] out_c0_exe322,
    output wire [0:0] out_c0_exe431,
    output wire [31:0] out_c0_exe542,
    output wire [31:0] out_c0_exe649,
    output wire [0:0] out_c0_exe752,
    output wire [0:0] out_c0_exe861,
    output wire [31:0] out_c0_exe971,
    output wire [31:0] out_inc,
    output wire [31:0] out_j_062149,
    output wire [31:0] out_k_059163,
    output wire [31:0] out_mul46_add4172,
    output wire [0:0] out_stall_out,
    output wire [31:0] out_unnamed_conv2d3x37,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    reg [0:0] c0_exe1081_reg_q;
    reg [63:0] c0_exe111_reg_q;
    reg [31:0] c0_exe1186151_reg_q;
    reg [0:0] c0_exe1190_reg_q;
    reg [31:0] c0_exe1195167_reg_q;
    reg [31:0] c0_exe12101_reg_q;
    reg [31:0] c0_exe1214_reg_q;
    reg [0:0] c0_exe13111_reg_q;
    reg [0:0] c0_exe14120_reg_q;
    reg [0:0] c0_exe15130_reg_q;
    reg [0:0] c0_exe16140_reg_q;
    reg [31:0] c0_exe2196168_reg_q;
    reg [63:0] c0_exe322_reg_q;
    reg [0:0] c0_exe431_reg_q;
    reg [31:0] c0_exe542_reg_q;
    reg [31:0] c0_exe649_reg_q;
    reg [0:0] c0_exe752_reg_q;
    reg [0:0] c0_exe861_reg_q;
    reg [31:0] c0_exe971_reg_q;
    wire [0:0] conv2d3x3_B5_branch_enable_q;
    wire [0:0] conv2d3x3_B5_branch_enable_not_q;
    reg [31:0] inc_reg_q;
    reg [31:0] j_062149_reg_q;
    reg [31:0] k_059163_reg_q;
    reg [31:0] mul46_add4172_reg_q;
    wire [0:0] not_stall_in_0_q;
    wire [0:0] not_stall_in_1_q;
    wire [0:0] not_valid_0_q;
    wire [0:0] not_valid_1_q;
    wire [0:0] not_valid_or_not_stall_0_q;
    wire [0:0] not_valid_or_not_stall_1_q;
    reg [31:0] unnamed_conv2d3x37_reg_q;
    wire [0:0] unnamed_conv2d3x38_cmp_q;
    reg [0:0] valid_0_reg_q;
    reg [0:0] valid_1_reg_q;
    wire [0:0] valid_out_0_and_q;
    wire [0:0] valid_out_1_and_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // not_stall_in_1(LOGICAL,56)
    assign not_stall_in_1_q = ~ (in_stall_in_1);

    // unnamed_conv2d3x38_cmp(LOGICAL,89)
    assign unnamed_conv2d3x38_cmp_q = ~ (in_unnamed_conv2d3x38);

    // valid_out_1_and(LOGICAL,93)
    assign valid_out_1_and_q = in_valid_in & unnamed_conv2d3x38_cmp_q;

    // valid_1_reg(REG,91)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_1_reg_q <= $unsigned(1'b0);
        end
        else if (conv2d3x3_B5_branch_enable_q == 1'b1)
        begin
            valid_1_reg_q <= valid_out_1_and_q;
        end
    end

    // not_valid_1(LOGICAL,58)
    assign not_valid_1_q = ~ (valid_1_reg_q);

    // not_valid_or_not_stall_1(LOGICAL,60)
    assign not_valid_or_not_stall_1_q = not_valid_1_q | not_stall_in_1_q;

    // not_stall_in_0(LOGICAL,55)
    assign not_stall_in_0_q = ~ (in_stall_in_0);

    // valid_out_0_and(LOGICAL,92)
    assign valid_out_0_and_q = in_valid_in & in_unnamed_conv2d3x38;

    // valid_0_reg(REG,90)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_0_reg_q <= $unsigned(1'b0);
        end
        else if (conv2d3x3_B5_branch_enable_q == 1'b1)
        begin
            valid_0_reg_q <= valid_out_0_and_q;
        end
    end

    // not_valid_0(LOGICAL,57)
    assign not_valid_0_q = ~ (valid_0_reg_q);

    // not_valid_or_not_stall_0(LOGICAL,59)
    assign not_valid_or_not_stall_0_q = not_valid_0_q | not_stall_in_0_q;

    // conv2d3x3_B5_branch_enable(LOGICAL,21)
    assign conv2d3x3_B5_branch_enable_q = not_valid_or_not_stall_0_q & not_valid_or_not_stall_1_q;

    // c0_exe1081_reg(REG,2)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe1081_reg_q <= $unsigned(1'b0);
        end
        else if (conv2d3x3_B5_branch_enable_q == 1'b1)
        begin
            c0_exe1081_reg_q <= in_c0_exe1081;
        end
    end

    // out_c0_exe1081(GPOUT,61)
    assign out_c0_exe1081 = c0_exe1081_reg_q;

    // c0_exe111_reg(REG,3)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe111_reg_q <= $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (conv2d3x3_B5_branch_enable_q == 1'b1)
        begin
            c0_exe111_reg_q <= in_c0_exe111;
        end
    end

    // out_c0_exe111(GPOUT,62)
    assign out_c0_exe111 = c0_exe111_reg_q;

    // c0_exe1186151_reg(REG,4)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe1186151_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (conv2d3x3_B5_branch_enable_q == 1'b1)
        begin
            c0_exe1186151_reg_q <= in_c0_exe1186151;
        end
    end

    // out_c0_exe1186151(GPOUT,63)
    assign out_c0_exe1186151 = c0_exe1186151_reg_q;

    // c0_exe1190_reg(REG,5)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe1190_reg_q <= $unsigned(1'b0);
        end
        else if (conv2d3x3_B5_branch_enable_q == 1'b1)
        begin
            c0_exe1190_reg_q <= in_c0_exe1190;
        end
    end

    // out_c0_exe1190(GPOUT,64)
    assign out_c0_exe1190 = c0_exe1190_reg_q;

    // c0_exe1195167_reg(REG,6)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe1195167_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (conv2d3x3_B5_branch_enable_q == 1'b1)
        begin
            c0_exe1195167_reg_q <= in_c0_exe1195167;
        end
    end

    // out_c0_exe1195167(GPOUT,65)
    assign out_c0_exe1195167 = c0_exe1195167_reg_q;

    // c0_exe12101_reg(REG,7)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe12101_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (conv2d3x3_B5_branch_enable_q == 1'b1)
        begin
            c0_exe12101_reg_q <= in_c0_exe12101;
        end
    end

    // out_c0_exe12101(GPOUT,66)
    assign out_c0_exe12101 = c0_exe12101_reg_q;

    // c0_exe1214_reg(REG,8)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe1214_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (conv2d3x3_B5_branch_enable_q == 1'b1)
        begin
            c0_exe1214_reg_q <= $unsigned(in_c0_exe1214);
        end
    end

    // out_c0_exe1214(GPOUT,67)
    assign out_c0_exe1214 = c0_exe1214_reg_q;

    // c0_exe13111_reg(REG,9)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe13111_reg_q <= $unsigned(1'b0);
        end
        else if (conv2d3x3_B5_branch_enable_q == 1'b1)
        begin
            c0_exe13111_reg_q <= in_c0_exe13111;
        end
    end

    // out_c0_exe13111(GPOUT,68)
    assign out_c0_exe13111 = c0_exe13111_reg_q;

    // c0_exe14120_reg(REG,10)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe14120_reg_q <= $unsigned(1'b0);
        end
        else if (conv2d3x3_B5_branch_enable_q == 1'b1)
        begin
            c0_exe14120_reg_q <= in_c0_exe14120;
        end
    end

    // out_c0_exe14120(GPOUT,69)
    assign out_c0_exe14120 = c0_exe14120_reg_q;

    // c0_exe15130_reg(REG,11)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe15130_reg_q <= $unsigned(1'b0);
        end
        else if (conv2d3x3_B5_branch_enable_q == 1'b1)
        begin
            c0_exe15130_reg_q <= in_c0_exe15130;
        end
    end

    // out_c0_exe15130(GPOUT,70)
    assign out_c0_exe15130 = c0_exe15130_reg_q;

    // c0_exe16140_reg(REG,12)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe16140_reg_q <= $unsigned(1'b0);
        end
        else if (conv2d3x3_B5_branch_enable_q == 1'b1)
        begin
            c0_exe16140_reg_q <= in_c0_exe16140;
        end
    end

    // out_c0_exe16140(GPOUT,71)
    assign out_c0_exe16140 = c0_exe16140_reg_q;

    // c0_exe2196168_reg(REG,13)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe2196168_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (conv2d3x3_B5_branch_enable_q == 1'b1)
        begin
            c0_exe2196168_reg_q <= in_c0_exe2196168;
        end
    end

    // out_c0_exe2196168(GPOUT,72)
    assign out_c0_exe2196168 = c0_exe2196168_reg_q;

    // c0_exe322_reg(REG,14)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe322_reg_q <= $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (conv2d3x3_B5_branch_enable_q == 1'b1)
        begin
            c0_exe322_reg_q <= in_c0_exe322;
        end
    end

    // out_c0_exe322(GPOUT,73)
    assign out_c0_exe322 = c0_exe322_reg_q;

    // c0_exe431_reg(REG,15)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe431_reg_q <= $unsigned(1'b0);
        end
        else if (conv2d3x3_B5_branch_enable_q == 1'b1)
        begin
            c0_exe431_reg_q <= in_c0_exe431;
        end
    end

    // out_c0_exe431(GPOUT,74)
    assign out_c0_exe431 = c0_exe431_reg_q;

    // c0_exe542_reg(REG,16)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe542_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (conv2d3x3_B5_branch_enable_q == 1'b1)
        begin
            c0_exe542_reg_q <= in_c0_exe542;
        end
    end

    // out_c0_exe542(GPOUT,75)
    assign out_c0_exe542 = c0_exe542_reg_q;

    // c0_exe649_reg(REG,17)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe649_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (conv2d3x3_B5_branch_enable_q == 1'b1)
        begin
            c0_exe649_reg_q <= in_c0_exe649;
        end
    end

    // out_c0_exe649(GPOUT,76)
    assign out_c0_exe649 = c0_exe649_reg_q;

    // c0_exe752_reg(REG,18)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe752_reg_q <= $unsigned(1'b0);
        end
        else if (conv2d3x3_B5_branch_enable_q == 1'b1)
        begin
            c0_exe752_reg_q <= in_c0_exe752;
        end
    end

    // out_c0_exe752(GPOUT,77)
    assign out_c0_exe752 = c0_exe752_reg_q;

    // c0_exe861_reg(REG,19)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe861_reg_q <= $unsigned(1'b0);
        end
        else if (conv2d3x3_B5_branch_enable_q == 1'b1)
        begin
            c0_exe861_reg_q <= in_c0_exe861;
        end
    end

    // out_c0_exe861(GPOUT,78)
    assign out_c0_exe861 = c0_exe861_reg_q;

    // c0_exe971_reg(REG,20)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe971_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (conv2d3x3_B5_branch_enable_q == 1'b1)
        begin
            c0_exe971_reg_q <= in_c0_exe971;
        end
    end

    // out_c0_exe971(GPOUT,79)
    assign out_c0_exe971 = c0_exe971_reg_q;

    // inc_reg(REG,23)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            inc_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (conv2d3x3_B5_branch_enable_q == 1'b1)
        begin
            inc_reg_q <= in_inc;
        end
    end

    // out_inc(GPOUT,80)
    assign out_inc = inc_reg_q;

    // j_062149_reg(REG,52)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            j_062149_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (conv2d3x3_B5_branch_enable_q == 1'b1)
        begin
            j_062149_reg_q <= in_j_062149;
        end
    end

    // out_j_062149(GPOUT,81)
    assign out_j_062149 = j_062149_reg_q;

    // k_059163_reg(REG,53)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            k_059163_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (conv2d3x3_B5_branch_enable_q == 1'b1)
        begin
            k_059163_reg_q <= in_k_059163;
        end
    end

    // out_k_059163(GPOUT,82)
    assign out_k_059163 = k_059163_reg_q;

    // mul46_add4172_reg(REG,54)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            mul46_add4172_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (conv2d3x3_B5_branch_enable_q == 1'b1)
        begin
            mul46_add4172_reg_q <= in_mul46_add4172;
        end
    end

    // out_mul46_add4172(GPOUT,83)
    assign out_mul46_add4172 = mul46_add4172_reg_q;

    // conv2d3x3_B5_branch_enable_not(LOGICAL,22)
    assign conv2d3x3_B5_branch_enable_not_q = ~ (conv2d3x3_B5_branch_enable_q);

    // out_stall_out(GPOUT,84)
    assign out_stall_out = conv2d3x3_B5_branch_enable_not_q;

    // unnamed_conv2d3x37_reg(REG,88)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            unnamed_conv2d3x37_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (conv2d3x3_B5_branch_enable_q == 1'b1)
        begin
            unnamed_conv2d3x37_reg_q <= $unsigned(in_unnamed_conv2d3x37);
        end
    end

    // out_unnamed_conv2d3x37(GPOUT,85)
    assign out_unnamed_conv2d3x37 = unnamed_conv2d3x37_reg_q;

    // out_valid_out_0(GPOUT,86)
    assign out_valid_out_0 = valid_0_reg_q;

    // out_valid_out_1(GPOUT,87)
    assign out_valid_out_1 = valid_1_reg_q;

endmodule
