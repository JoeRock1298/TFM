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
// SystemVerilog created on Tue Jun  6 18:45:14 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2d3x3_B10_branch (
    input wire [0:0] in_c0_exe1085,
    input wire [63:0] in_c0_exe115,
    input wire [31:0] in_c0_exe1186153,
    input wire [0:0] in_c0_exe1194,
    input wire [31:0] in_c0_exe12105,
    input wire [31:0] in_c0_exe1254179,
    input wire [0:0] in_c0_exe13115,
    input wire [0:0] in_c0_exe14124,
    input wire [0:0] in_c0_exe15125,
    input wire [0:0] in_c0_exe16135,
    input wire [63:0] in_c0_exe317,
    input wire [0:0] in_c0_exe426,
    input wire [31:0] in_c0_exe537,
    input wire [31:0] in_c0_exe644,
    input wire [0:0] in_c0_exe756,
    input wire [0:0] in_c0_exe865,
    input wire [31:0] in_c0_exe975,
    input wire [31:0] in_inc57,
    input wire [31:0] in_j_062144,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [31:0] in_unnamed_conv2d3x315,
    input wire [0:0] in_unnamed_conv2d3x316,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_c0_exe1085,
    output wire [63:0] out_c0_exe115,
    output wire [31:0] out_c0_exe1186153,
    output wire [0:0] out_c0_exe1194,
    output wire [31:0] out_c0_exe12105,
    output wire [31:0] out_c0_exe1254179,
    output wire [0:0] out_c0_exe13115,
    output wire [0:0] out_c0_exe14124,
    output wire [0:0] out_c0_exe15125,
    output wire [0:0] out_c0_exe16135,
    output wire [63:0] out_c0_exe317,
    output wire [0:0] out_c0_exe426,
    output wire [31:0] out_c0_exe537,
    output wire [31:0] out_c0_exe644,
    output wire [0:0] out_c0_exe756,
    output wire [0:0] out_c0_exe865,
    output wire [31:0] out_c0_exe975,
    output wire [31:0] out_inc57,
    output wire [31:0] out_j_062144,
    output wire [0:0] out_stall_out,
    output wire [31:0] out_unnamed_conv2d3x315,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    reg [0:0] c0_exe1085_reg_q;
    reg [63:0] c0_exe115_reg_q;
    reg [31:0] c0_exe1186153_reg_q;
    reg [0:0] c0_exe1194_reg_q;
    reg [31:0] c0_exe12105_reg_q;
    reg [31:0] c0_exe1254179_reg_q;
    reg [0:0] c0_exe13115_reg_q;
    reg [0:0] c0_exe14124_reg_q;
    reg [0:0] c0_exe15125_reg_q;
    reg [0:0] c0_exe16135_reg_q;
    reg [63:0] c0_exe317_reg_q;
    reg [0:0] c0_exe426_reg_q;
    reg [31:0] c0_exe537_reg_q;
    reg [31:0] c0_exe644_reg_q;
    reg [0:0] c0_exe756_reg_q;
    reg [0:0] c0_exe865_reg_q;
    reg [31:0] c0_exe975_reg_q;
    wire [0:0] conv2d3x3_B10_branch_enable_q;
    wire [0:0] conv2d3x3_B10_branch_enable_not_q;
    reg [31:0] inc57_reg_q;
    reg [31:0] j_062144_reg_q;
    wire [0:0] not_stall_in_0_q;
    wire [0:0] not_stall_in_1_q;
    wire [0:0] not_valid_0_q;
    wire [0:0] not_valid_1_q;
    wire [0:0] not_valid_or_not_stall_0_q;
    wire [0:0] not_valid_or_not_stall_1_q;
    reg [31:0] unnamed_conv2d3x315_reg_q;
    wire [0:0] unnamed_conv2d3x316_cmp_q;
    reg [0:0] valid_0_reg_q;
    reg [0:0] valid_1_reg_q;
    wire [0:0] valid_out_0_and_q;
    wire [0:0] valid_out_1_and_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // not_stall_in_1(LOGICAL,48)
    assign not_stall_in_1_q = ~ (in_stall_in_1);

    // unnamed_conv2d3x316_cmp(LOGICAL,77)
    assign unnamed_conv2d3x316_cmp_q = ~ (in_unnamed_conv2d3x316);

    // valid_out_1_and(LOGICAL,81)
    assign valid_out_1_and_q = in_valid_in & unnamed_conv2d3x316_cmp_q;

    // valid_1_reg(REG,79)
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

    // not_valid_1(LOGICAL,50)
    assign not_valid_1_q = ~ (valid_1_reg_q);

    // not_valid_or_not_stall_1(LOGICAL,52)
    assign not_valid_or_not_stall_1_q = not_valid_1_q | not_stall_in_1_q;

    // not_stall_in_0(LOGICAL,47)
    assign not_stall_in_0_q = ~ (in_stall_in_0);

    // valid_out_0_and(LOGICAL,80)
    assign valid_out_0_and_q = in_valid_in & in_unnamed_conv2d3x316;

    // valid_0_reg(REG,78)
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

    // not_valid_0(LOGICAL,49)
    assign not_valid_0_q = ~ (valid_0_reg_q);

    // not_valid_or_not_stall_0(LOGICAL,51)
    assign not_valid_or_not_stall_0_q = not_valid_0_q | not_stall_in_0_q;

    // conv2d3x3_B10_branch_enable(LOGICAL,19)
    assign conv2d3x3_B10_branch_enable_q = not_valid_or_not_stall_0_q & not_valid_or_not_stall_1_q;

    // c0_exe1085_reg(REG,2)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe1085_reg_q <= $unsigned(1'b0);
        end
        else if (conv2d3x3_B10_branch_enable_q == 1'b1)
        begin
            c0_exe1085_reg_q <= in_c0_exe1085;
        end
    end

    // out_c0_exe1085(GPOUT,53)
    assign out_c0_exe1085 = c0_exe1085_reg_q;

    // c0_exe115_reg(REG,3)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe115_reg_q <= $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (conv2d3x3_B10_branch_enable_q == 1'b1)
        begin
            c0_exe115_reg_q <= in_c0_exe115;
        end
    end

    // out_c0_exe115(GPOUT,54)
    assign out_c0_exe115 = c0_exe115_reg_q;

    // c0_exe1186153_reg(REG,4)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe1186153_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (conv2d3x3_B10_branch_enable_q == 1'b1)
        begin
            c0_exe1186153_reg_q <= in_c0_exe1186153;
        end
    end

    // out_c0_exe1186153(GPOUT,55)
    assign out_c0_exe1186153 = c0_exe1186153_reg_q;

    // c0_exe1194_reg(REG,5)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe1194_reg_q <= $unsigned(1'b0);
        end
        else if (conv2d3x3_B10_branch_enable_q == 1'b1)
        begin
            c0_exe1194_reg_q <= in_c0_exe1194;
        end
    end

    // out_c0_exe1194(GPOUT,56)
    assign out_c0_exe1194 = c0_exe1194_reg_q;

    // c0_exe12105_reg(REG,6)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe12105_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (conv2d3x3_B10_branch_enable_q == 1'b1)
        begin
            c0_exe12105_reg_q <= in_c0_exe12105;
        end
    end

    // out_c0_exe12105(GPOUT,57)
    assign out_c0_exe12105 = c0_exe12105_reg_q;

    // c0_exe1254179_reg(REG,7)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe1254179_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (conv2d3x3_B10_branch_enable_q == 1'b1)
        begin
            c0_exe1254179_reg_q <= $unsigned(in_c0_exe1254179);
        end
    end

    // out_c0_exe1254179(GPOUT,58)
    assign out_c0_exe1254179 = c0_exe1254179_reg_q;

    // c0_exe13115_reg(REG,8)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe13115_reg_q <= $unsigned(1'b0);
        end
        else if (conv2d3x3_B10_branch_enable_q == 1'b1)
        begin
            c0_exe13115_reg_q <= in_c0_exe13115;
        end
    end

    // out_c0_exe13115(GPOUT,59)
    assign out_c0_exe13115 = c0_exe13115_reg_q;

    // c0_exe14124_reg(REG,9)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe14124_reg_q <= $unsigned(1'b0);
        end
        else if (conv2d3x3_B10_branch_enable_q == 1'b1)
        begin
            c0_exe14124_reg_q <= in_c0_exe14124;
        end
    end

    // out_c0_exe14124(GPOUT,60)
    assign out_c0_exe14124 = c0_exe14124_reg_q;

    // c0_exe15125_reg(REG,10)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe15125_reg_q <= $unsigned(1'b0);
        end
        else if (conv2d3x3_B10_branch_enable_q == 1'b1)
        begin
            c0_exe15125_reg_q <= in_c0_exe15125;
        end
    end

    // out_c0_exe15125(GPOUT,61)
    assign out_c0_exe15125 = c0_exe15125_reg_q;

    // c0_exe16135_reg(REG,11)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe16135_reg_q <= $unsigned(1'b0);
        end
        else if (conv2d3x3_B10_branch_enable_q == 1'b1)
        begin
            c0_exe16135_reg_q <= in_c0_exe16135;
        end
    end

    // out_c0_exe16135(GPOUT,62)
    assign out_c0_exe16135 = c0_exe16135_reg_q;

    // c0_exe317_reg(REG,12)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe317_reg_q <= $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (conv2d3x3_B10_branch_enable_q == 1'b1)
        begin
            c0_exe317_reg_q <= in_c0_exe317;
        end
    end

    // out_c0_exe317(GPOUT,63)
    assign out_c0_exe317 = c0_exe317_reg_q;

    // c0_exe426_reg(REG,13)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe426_reg_q <= $unsigned(1'b0);
        end
        else if (conv2d3x3_B10_branch_enable_q == 1'b1)
        begin
            c0_exe426_reg_q <= in_c0_exe426;
        end
    end

    // out_c0_exe426(GPOUT,64)
    assign out_c0_exe426 = c0_exe426_reg_q;

    // c0_exe537_reg(REG,14)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe537_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (conv2d3x3_B10_branch_enable_q == 1'b1)
        begin
            c0_exe537_reg_q <= in_c0_exe537;
        end
    end

    // out_c0_exe537(GPOUT,65)
    assign out_c0_exe537 = c0_exe537_reg_q;

    // c0_exe644_reg(REG,15)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe644_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (conv2d3x3_B10_branch_enable_q == 1'b1)
        begin
            c0_exe644_reg_q <= in_c0_exe644;
        end
    end

    // out_c0_exe644(GPOUT,66)
    assign out_c0_exe644 = c0_exe644_reg_q;

    // c0_exe756_reg(REG,16)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe756_reg_q <= $unsigned(1'b0);
        end
        else if (conv2d3x3_B10_branch_enable_q == 1'b1)
        begin
            c0_exe756_reg_q <= in_c0_exe756;
        end
    end

    // out_c0_exe756(GPOUT,67)
    assign out_c0_exe756 = c0_exe756_reg_q;

    // c0_exe865_reg(REG,17)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe865_reg_q <= $unsigned(1'b0);
        end
        else if (conv2d3x3_B10_branch_enable_q == 1'b1)
        begin
            c0_exe865_reg_q <= in_c0_exe865;
        end
    end

    // out_c0_exe865(GPOUT,68)
    assign out_c0_exe865 = c0_exe865_reg_q;

    // c0_exe975_reg(REG,18)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe975_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (conv2d3x3_B10_branch_enable_q == 1'b1)
        begin
            c0_exe975_reg_q <= in_c0_exe975;
        end
    end

    // out_c0_exe975(GPOUT,69)
    assign out_c0_exe975 = c0_exe975_reg_q;

    // inc57_reg(REG,21)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            inc57_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (conv2d3x3_B10_branch_enable_q == 1'b1)
        begin
            inc57_reg_q <= in_inc57;
        end
    end

    // out_inc57(GPOUT,70)
    assign out_inc57 = inc57_reg_q;

    // j_062144_reg(REG,46)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            j_062144_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (conv2d3x3_B10_branch_enable_q == 1'b1)
        begin
            j_062144_reg_q <= in_j_062144;
        end
    end

    // out_j_062144(GPOUT,71)
    assign out_j_062144 = j_062144_reg_q;

    // conv2d3x3_B10_branch_enable_not(LOGICAL,20)
    assign conv2d3x3_B10_branch_enable_not_q = ~ (conv2d3x3_B10_branch_enable_q);

    // out_stall_out(GPOUT,72)
    assign out_stall_out = conv2d3x3_B10_branch_enable_not_q;

    // unnamed_conv2d3x315_reg(REG,76)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            unnamed_conv2d3x315_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (conv2d3x3_B10_branch_enable_q == 1'b1)
        begin
            unnamed_conv2d3x315_reg_q <= $unsigned(in_unnamed_conv2d3x315);
        end
    end

    // out_unnamed_conv2d3x315(GPOUT,73)
    assign out_unnamed_conv2d3x315 = unnamed_conv2d3x315_reg_q;

    // out_valid_out_0(GPOUT,74)
    assign out_valid_out_0 = valid_0_reg_q;

    // out_valid_out_1(GPOUT,75)
    assign out_valid_out_1 = valid_1_reg_q;

endmodule
