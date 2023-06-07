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

// SystemVerilog created from conv2d3x3_B9_branch
// SystemVerilog created on Tue Jun  6 18:45:14 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2d3x3_B9_branch (
    input wire [31:0] in_add48_2178,
    input wire [0:0] in_c0_exe1086,
    input wire [31:0] in_c0_exe1186154,
    input wire [0:0] in_c0_exe1196,
    input wire [31:0] in_c0_exe12106,
    input wire [31:0] in_c0_exe1242177,
    input wire [31:0] in_c0_exe1254,
    input wire [0:0] in_c0_exe13107,
    input wire [0:0] in_c0_exe14116,
    input wire [0:0] in_c0_exe15126,
    input wire [0:0] in_c0_exe16136,
    input wire [63:0] in_c0_exe17,
    input wire [63:0] in_c0_exe318,
    input wire [0:0] in_c0_exe427,
    input wire [31:0] in_c0_exe538,
    input wire [31:0] in_c0_exe645,
    input wire [0:0] in_c0_exe757,
    input wire [0:0] in_c0_exe866,
    input wire [31:0] in_c0_exe976,
    input wire [31:0] in_inc_2,
    input wire [31:0] in_j_062145,
    input wire [31:0] in_k_059159,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [31:0] in_unnamed_conv2d3x313,
    input wire [0:0] in_unnamed_conv2d3x314,
    input wire [0:0] in_valid_in,
    output wire [31:0] out_add48_2178,
    output wire [0:0] out_c0_exe1086,
    output wire [31:0] out_c0_exe1186154,
    output wire [0:0] out_c0_exe1196,
    output wire [31:0] out_c0_exe12106,
    output wire [31:0] out_c0_exe1242177,
    output wire [31:0] out_c0_exe1254,
    output wire [0:0] out_c0_exe13107,
    output wire [0:0] out_c0_exe14116,
    output wire [0:0] out_c0_exe15126,
    output wire [0:0] out_c0_exe16136,
    output wire [63:0] out_c0_exe17,
    output wire [63:0] out_c0_exe318,
    output wire [0:0] out_c0_exe427,
    output wire [31:0] out_c0_exe538,
    output wire [31:0] out_c0_exe645,
    output wire [0:0] out_c0_exe757,
    output wire [0:0] out_c0_exe866,
    output wire [31:0] out_c0_exe976,
    output wire [31:0] out_inc_2,
    output wire [31:0] out_j_062145,
    output wire [31:0] out_k_059159,
    output wire [0:0] out_stall_out,
    output wire [31:0] out_unnamed_conv2d3x313,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    reg [31:0] add48_2178_reg_q;
    reg [0:0] c0_exe1086_reg_q;
    reg [31:0] c0_exe1186154_reg_q;
    reg [0:0] c0_exe1196_reg_q;
    reg [31:0] c0_exe12106_reg_q;
    reg [31:0] c0_exe1242177_reg_q;
    reg [31:0] c0_exe1254_reg_q;
    reg [0:0] c0_exe13107_reg_q;
    reg [0:0] c0_exe14116_reg_q;
    reg [0:0] c0_exe15126_reg_q;
    reg [0:0] c0_exe16136_reg_q;
    reg [63:0] c0_exe17_reg_q;
    reg [63:0] c0_exe318_reg_q;
    reg [0:0] c0_exe427_reg_q;
    reg [31:0] c0_exe538_reg_q;
    reg [31:0] c0_exe645_reg_q;
    reg [0:0] c0_exe757_reg_q;
    reg [0:0] c0_exe866_reg_q;
    reg [31:0] c0_exe976_reg_q;
    wire [0:0] conv2d3x3_B9_branch_enable_q;
    wire [0:0] conv2d3x3_B9_branch_enable_not_q;
    reg [31:0] inc_2_reg_q;
    reg [31:0] j_062145_reg_q;
    reg [31:0] k_059159_reg_q;
    wire [0:0] not_stall_in_0_q;
    wire [0:0] not_stall_in_1_q;
    wire [0:0] not_valid_0_q;
    wire [0:0] not_valid_1_q;
    wire [0:0] not_valid_or_not_stall_0_q;
    wire [0:0] not_valid_or_not_stall_1_q;
    reg [31:0] unnamed_conv2d3x313_reg_q;
    wire [0:0] unnamed_conv2d3x314_cmp_q;
    reg [0:0] valid_0_reg_q;
    reg [0:0] valid_1_reg_q;
    wire [0:0] valid_out_0_and_q;
    wire [0:0] valid_out_1_and_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // not_stall_in_1(LOGICAL,54)
    assign not_stall_in_1_q = ~ (in_stall_in_1);

    // unnamed_conv2d3x314_cmp(LOGICAL,86)
    assign unnamed_conv2d3x314_cmp_q = ~ (in_unnamed_conv2d3x314);

    // valid_out_1_and(LOGICAL,90)
    assign valid_out_1_and_q = in_valid_in & unnamed_conv2d3x314_cmp_q;

    // valid_1_reg(REG,88)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_1_reg_q <= $unsigned(1'b0);
        end
        else if (conv2d3x3_B9_branch_enable_q == 1'b1)
        begin
            valid_1_reg_q <= valid_out_1_and_q;
        end
    end

    // not_valid_1(LOGICAL,56)
    assign not_valid_1_q = ~ (valid_1_reg_q);

    // not_valid_or_not_stall_1(LOGICAL,58)
    assign not_valid_or_not_stall_1_q = not_valid_1_q | not_stall_in_1_q;

    // not_stall_in_0(LOGICAL,53)
    assign not_stall_in_0_q = ~ (in_stall_in_0);

    // valid_out_0_and(LOGICAL,89)
    assign valid_out_0_and_q = in_valid_in & in_unnamed_conv2d3x314;

    // valid_0_reg(REG,87)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_0_reg_q <= $unsigned(1'b0);
        end
        else if (conv2d3x3_B9_branch_enable_q == 1'b1)
        begin
            valid_0_reg_q <= valid_out_0_and_q;
        end
    end

    // not_valid_0(LOGICAL,55)
    assign not_valid_0_q = ~ (valid_0_reg_q);

    // not_valid_or_not_stall_0(LOGICAL,57)
    assign not_valid_or_not_stall_0_q = not_valid_0_q | not_stall_in_0_q;

    // conv2d3x3_B9_branch_enable(LOGICAL,21)
    assign conv2d3x3_B9_branch_enable_q = not_valid_or_not_stall_0_q & not_valid_or_not_stall_1_q;

    // add48_2178_reg(REG,2)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            add48_2178_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (conv2d3x3_B9_branch_enable_q == 1'b1)
        begin
            add48_2178_reg_q <= in_add48_2178;
        end
    end

    // out_add48_2178(GPOUT,59)
    assign out_add48_2178 = add48_2178_reg_q;

    // c0_exe1086_reg(REG,3)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe1086_reg_q <= $unsigned(1'b0);
        end
        else if (conv2d3x3_B9_branch_enable_q == 1'b1)
        begin
            c0_exe1086_reg_q <= in_c0_exe1086;
        end
    end

    // out_c0_exe1086(GPOUT,60)
    assign out_c0_exe1086 = c0_exe1086_reg_q;

    // c0_exe1186154_reg(REG,4)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe1186154_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (conv2d3x3_B9_branch_enable_q == 1'b1)
        begin
            c0_exe1186154_reg_q <= in_c0_exe1186154;
        end
    end

    // out_c0_exe1186154(GPOUT,61)
    assign out_c0_exe1186154 = c0_exe1186154_reg_q;

    // c0_exe1196_reg(REG,5)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe1196_reg_q <= $unsigned(1'b0);
        end
        else if (conv2d3x3_B9_branch_enable_q == 1'b1)
        begin
            c0_exe1196_reg_q <= in_c0_exe1196;
        end
    end

    // out_c0_exe1196(GPOUT,62)
    assign out_c0_exe1196 = c0_exe1196_reg_q;

    // c0_exe12106_reg(REG,6)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe12106_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (conv2d3x3_B9_branch_enable_q == 1'b1)
        begin
            c0_exe12106_reg_q <= in_c0_exe12106;
        end
    end

    // out_c0_exe12106(GPOUT,63)
    assign out_c0_exe12106 = c0_exe12106_reg_q;

    // c0_exe1242177_reg(REG,7)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe1242177_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (conv2d3x3_B9_branch_enable_q == 1'b1)
        begin
            c0_exe1242177_reg_q <= in_c0_exe1242177;
        end
    end

    // out_c0_exe1242177(GPOUT,64)
    assign out_c0_exe1242177 = c0_exe1242177_reg_q;

    // c0_exe1254_reg(REG,8)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe1254_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (conv2d3x3_B9_branch_enable_q == 1'b1)
        begin
            c0_exe1254_reg_q <= $unsigned(in_c0_exe1254);
        end
    end

    // out_c0_exe1254(GPOUT,65)
    assign out_c0_exe1254 = c0_exe1254_reg_q;

    // c0_exe13107_reg(REG,9)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe13107_reg_q <= $unsigned(1'b0);
        end
        else if (conv2d3x3_B9_branch_enable_q == 1'b1)
        begin
            c0_exe13107_reg_q <= in_c0_exe13107;
        end
    end

    // out_c0_exe13107(GPOUT,66)
    assign out_c0_exe13107 = c0_exe13107_reg_q;

    // c0_exe14116_reg(REG,10)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe14116_reg_q <= $unsigned(1'b0);
        end
        else if (conv2d3x3_B9_branch_enable_q == 1'b1)
        begin
            c0_exe14116_reg_q <= in_c0_exe14116;
        end
    end

    // out_c0_exe14116(GPOUT,67)
    assign out_c0_exe14116 = c0_exe14116_reg_q;

    // c0_exe15126_reg(REG,11)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe15126_reg_q <= $unsigned(1'b0);
        end
        else if (conv2d3x3_B9_branch_enable_q == 1'b1)
        begin
            c0_exe15126_reg_q <= in_c0_exe15126;
        end
    end

    // out_c0_exe15126(GPOUT,68)
    assign out_c0_exe15126 = c0_exe15126_reg_q;

    // c0_exe16136_reg(REG,12)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe16136_reg_q <= $unsigned(1'b0);
        end
        else if (conv2d3x3_B9_branch_enable_q == 1'b1)
        begin
            c0_exe16136_reg_q <= in_c0_exe16136;
        end
    end

    // out_c0_exe16136(GPOUT,69)
    assign out_c0_exe16136 = c0_exe16136_reg_q;

    // c0_exe17_reg(REG,13)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe17_reg_q <= $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (conv2d3x3_B9_branch_enable_q == 1'b1)
        begin
            c0_exe17_reg_q <= in_c0_exe17;
        end
    end

    // out_c0_exe17(GPOUT,70)
    assign out_c0_exe17 = c0_exe17_reg_q;

    // c0_exe318_reg(REG,14)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe318_reg_q <= $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (conv2d3x3_B9_branch_enable_q == 1'b1)
        begin
            c0_exe318_reg_q <= in_c0_exe318;
        end
    end

    // out_c0_exe318(GPOUT,71)
    assign out_c0_exe318 = c0_exe318_reg_q;

    // c0_exe427_reg(REG,15)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe427_reg_q <= $unsigned(1'b0);
        end
        else if (conv2d3x3_B9_branch_enable_q == 1'b1)
        begin
            c0_exe427_reg_q <= in_c0_exe427;
        end
    end

    // out_c0_exe427(GPOUT,72)
    assign out_c0_exe427 = c0_exe427_reg_q;

    // c0_exe538_reg(REG,16)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe538_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (conv2d3x3_B9_branch_enable_q == 1'b1)
        begin
            c0_exe538_reg_q <= in_c0_exe538;
        end
    end

    // out_c0_exe538(GPOUT,73)
    assign out_c0_exe538 = c0_exe538_reg_q;

    // c0_exe645_reg(REG,17)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe645_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (conv2d3x3_B9_branch_enable_q == 1'b1)
        begin
            c0_exe645_reg_q <= in_c0_exe645;
        end
    end

    // out_c0_exe645(GPOUT,74)
    assign out_c0_exe645 = c0_exe645_reg_q;

    // c0_exe757_reg(REG,18)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe757_reg_q <= $unsigned(1'b0);
        end
        else if (conv2d3x3_B9_branch_enable_q == 1'b1)
        begin
            c0_exe757_reg_q <= in_c0_exe757;
        end
    end

    // out_c0_exe757(GPOUT,75)
    assign out_c0_exe757 = c0_exe757_reg_q;

    // c0_exe866_reg(REG,19)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe866_reg_q <= $unsigned(1'b0);
        end
        else if (conv2d3x3_B9_branch_enable_q == 1'b1)
        begin
            c0_exe866_reg_q <= in_c0_exe866;
        end
    end

    // out_c0_exe866(GPOUT,76)
    assign out_c0_exe866 = c0_exe866_reg_q;

    // c0_exe976_reg(REG,20)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe976_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (conv2d3x3_B9_branch_enable_q == 1'b1)
        begin
            c0_exe976_reg_q <= in_c0_exe976;
        end
    end

    // out_c0_exe976(GPOUT,77)
    assign out_c0_exe976 = c0_exe976_reg_q;

    // inc_2_reg(REG,23)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            inc_2_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (conv2d3x3_B9_branch_enable_q == 1'b1)
        begin
            inc_2_reg_q <= in_inc_2;
        end
    end

    // out_inc_2(GPOUT,78)
    assign out_inc_2 = inc_2_reg_q;

    // j_062145_reg(REG,51)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            j_062145_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (conv2d3x3_B9_branch_enable_q == 1'b1)
        begin
            j_062145_reg_q <= in_j_062145;
        end
    end

    // out_j_062145(GPOUT,79)
    assign out_j_062145 = j_062145_reg_q;

    // k_059159_reg(REG,52)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            k_059159_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (conv2d3x3_B9_branch_enable_q == 1'b1)
        begin
            k_059159_reg_q <= in_k_059159;
        end
    end

    // out_k_059159(GPOUT,80)
    assign out_k_059159 = k_059159_reg_q;

    // conv2d3x3_B9_branch_enable_not(LOGICAL,22)
    assign conv2d3x3_B9_branch_enable_not_q = ~ (conv2d3x3_B9_branch_enable_q);

    // out_stall_out(GPOUT,81)
    assign out_stall_out = conv2d3x3_B9_branch_enable_not_q;

    // unnamed_conv2d3x313_reg(REG,85)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            unnamed_conv2d3x313_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (conv2d3x3_B9_branch_enable_q == 1'b1)
        begin
            unnamed_conv2d3x313_reg_q <= $unsigned(in_unnamed_conv2d3x313);
        end
    end

    // out_unnamed_conv2d3x313(GPOUT,82)
    assign out_unnamed_conv2d3x313 = unnamed_conv2d3x313_reg_q;

    // out_valid_out_0(GPOUT,83)
    assign out_valid_out_0 = valid_0_reg_q;

    // out_valid_out_1(GPOUT,84)
    assign out_valid_out_1 = valid_1_reg_q;

endmodule
