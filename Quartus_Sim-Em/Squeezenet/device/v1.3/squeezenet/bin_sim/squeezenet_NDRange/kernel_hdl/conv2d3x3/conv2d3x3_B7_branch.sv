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

// SystemVerilog created from conv2d3x3_B7_branch
// SystemVerilog created on Tue Jun  6 18:45:14 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2d3x3_B7_branch (
    input wire [31:0] in_add48_1_le175,
    input wire [0:0] in_c0_exe1079,
    input wire [31:0] in_c0_exe1186156,
    input wire [0:0] in_c0_exe1188,
    input wire [31:0] in_c0_exe1195165,
    input wire [31:0] in_c0_exe1222174,
    input wire [31:0] in_c0_exe1234,
    input wire [31:0] in_c0_exe1299,
    input wire [0:0] in_c0_exe13109,
    input wire [0:0] in_c0_exe14118,
    input wire [0:0] in_c0_exe15128,
    input wire [0:0] in_c0_exe16138,
    input wire [63:0] in_c0_exe19,
    input wire [63:0] in_c0_exe320,
    input wire [0:0] in_c0_exe429,
    input wire [31:0] in_c0_exe540,
    input wire [31:0] in_c0_exe647,
    input wire [0:0] in_c0_exe759,
    input wire [0:0] in_c0_exe868,
    input wire [31:0] in_c0_exe978,
    input wire [31:0] in_inc_1,
    input wire [31:0] in_j_062147,
    input wire [31:0] in_k_059161,
    input wire [31:0] in_mul46_add4170,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [31:0] in_unnamed_conv2d3x310,
    input wire [0:0] in_unnamed_conv2d3x311,
    input wire [0:0] in_valid_in,
    output wire [31:0] out_add48_1_le175,
    output wire [0:0] out_c0_exe1079,
    output wire [31:0] out_c0_exe1186156,
    output wire [0:0] out_c0_exe1188,
    output wire [31:0] out_c0_exe1195165,
    output wire [31:0] out_c0_exe1222174,
    output wire [31:0] out_c0_exe1234,
    output wire [31:0] out_c0_exe1299,
    output wire [0:0] out_c0_exe13109,
    output wire [0:0] out_c0_exe14118,
    output wire [0:0] out_c0_exe15128,
    output wire [0:0] out_c0_exe16138,
    output wire [63:0] out_c0_exe19,
    output wire [63:0] out_c0_exe320,
    output wire [0:0] out_c0_exe429,
    output wire [31:0] out_c0_exe540,
    output wire [31:0] out_c0_exe647,
    output wire [0:0] out_c0_exe759,
    output wire [0:0] out_c0_exe868,
    output wire [31:0] out_c0_exe978,
    output wire [31:0] out_inc_1,
    output wire [31:0] out_j_062147,
    output wire [31:0] out_k_059161,
    output wire [31:0] out_mul46_add4170,
    output wire [0:0] out_stall_out,
    output wire [31:0] out_unnamed_conv2d3x310,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    reg [31:0] add48_1_le175_reg_q;
    reg [0:0] c0_exe1079_reg_q;
    reg [31:0] c0_exe1186156_reg_q;
    reg [0:0] c0_exe1188_reg_q;
    reg [31:0] c0_exe1195165_reg_q;
    reg [31:0] c0_exe1222174_reg_q;
    reg [31:0] c0_exe1234_reg_q;
    reg [31:0] c0_exe1299_reg_q;
    reg [0:0] c0_exe13109_reg_q;
    reg [0:0] c0_exe14118_reg_q;
    reg [0:0] c0_exe15128_reg_q;
    reg [0:0] c0_exe16138_reg_q;
    reg [63:0] c0_exe19_reg_q;
    reg [63:0] c0_exe320_reg_q;
    reg [0:0] c0_exe429_reg_q;
    reg [31:0] c0_exe540_reg_q;
    reg [31:0] c0_exe647_reg_q;
    reg [0:0] c0_exe759_reg_q;
    reg [0:0] c0_exe868_reg_q;
    reg [31:0] c0_exe978_reg_q;
    wire [0:0] conv2d3x3_B7_branch_enable_q;
    wire [0:0] conv2d3x3_B7_branch_enable_not_q;
    reg [31:0] inc_1_reg_q;
    reg [31:0] j_062147_reg_q;
    reg [31:0] k_059161_reg_q;
    reg [31:0] mul46_add4170_reg_q;
    wire [0:0] not_stall_in_0_q;
    wire [0:0] not_stall_in_1_q;
    wire [0:0] not_valid_0_q;
    wire [0:0] not_valid_1_q;
    wire [0:0] not_valid_or_not_stall_0_q;
    wire [0:0] not_valid_or_not_stall_1_q;
    reg [31:0] unnamed_conv2d3x310_reg_q;
    wire [0:0] unnamed_conv2d3x311_cmp_q;
    reg [0:0] valid_0_reg_q;
    reg [0:0] valid_1_reg_q;
    wire [0:0] valid_out_0_and_q;
    wire [0:0] valid_out_1_and_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // not_stall_in_1(LOGICAL,58)
    assign not_stall_in_1_q = ~ (in_stall_in_1);

    // unnamed_conv2d3x311_cmp(LOGICAL,92)
    assign unnamed_conv2d3x311_cmp_q = ~ (in_unnamed_conv2d3x311);

    // valid_out_1_and(LOGICAL,96)
    assign valid_out_1_and_q = in_valid_in & unnamed_conv2d3x311_cmp_q;

    // valid_1_reg(REG,94)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_1_reg_q <= $unsigned(1'b0);
        end
        else if (conv2d3x3_B7_branch_enable_q == 1'b1)
        begin
            valid_1_reg_q <= valid_out_1_and_q;
        end
    end

    // not_valid_1(LOGICAL,60)
    assign not_valid_1_q = ~ (valid_1_reg_q);

    // not_valid_or_not_stall_1(LOGICAL,62)
    assign not_valid_or_not_stall_1_q = not_valid_1_q | not_stall_in_1_q;

    // not_stall_in_0(LOGICAL,57)
    assign not_stall_in_0_q = ~ (in_stall_in_0);

    // valid_out_0_and(LOGICAL,95)
    assign valid_out_0_and_q = in_valid_in & in_unnamed_conv2d3x311;

    // valid_0_reg(REG,93)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_0_reg_q <= $unsigned(1'b0);
        end
        else if (conv2d3x3_B7_branch_enable_q == 1'b1)
        begin
            valid_0_reg_q <= valid_out_0_and_q;
        end
    end

    // not_valid_0(LOGICAL,59)
    assign not_valid_0_q = ~ (valid_0_reg_q);

    // not_valid_or_not_stall_0(LOGICAL,61)
    assign not_valid_or_not_stall_0_q = not_valid_0_q | not_stall_in_0_q;

    // conv2d3x3_B7_branch_enable(LOGICAL,22)
    assign conv2d3x3_B7_branch_enable_q = not_valid_or_not_stall_0_q & not_valid_or_not_stall_1_q;

    // add48_1_le175_reg(REG,2)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            add48_1_le175_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (conv2d3x3_B7_branch_enable_q == 1'b1)
        begin
            add48_1_le175_reg_q <= in_add48_1_le175;
        end
    end

    // out_add48_1_le175(GPOUT,63)
    assign out_add48_1_le175 = add48_1_le175_reg_q;

    // c0_exe1079_reg(REG,3)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe1079_reg_q <= $unsigned(1'b0);
        end
        else if (conv2d3x3_B7_branch_enable_q == 1'b1)
        begin
            c0_exe1079_reg_q <= in_c0_exe1079;
        end
    end

    // out_c0_exe1079(GPOUT,64)
    assign out_c0_exe1079 = c0_exe1079_reg_q;

    // c0_exe1186156_reg(REG,4)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe1186156_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (conv2d3x3_B7_branch_enable_q == 1'b1)
        begin
            c0_exe1186156_reg_q <= in_c0_exe1186156;
        end
    end

    // out_c0_exe1186156(GPOUT,65)
    assign out_c0_exe1186156 = c0_exe1186156_reg_q;

    // c0_exe1188_reg(REG,5)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe1188_reg_q <= $unsigned(1'b0);
        end
        else if (conv2d3x3_B7_branch_enable_q == 1'b1)
        begin
            c0_exe1188_reg_q <= in_c0_exe1188;
        end
    end

    // out_c0_exe1188(GPOUT,66)
    assign out_c0_exe1188 = c0_exe1188_reg_q;

    // c0_exe1195165_reg(REG,6)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe1195165_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (conv2d3x3_B7_branch_enable_q == 1'b1)
        begin
            c0_exe1195165_reg_q <= in_c0_exe1195165;
        end
    end

    // out_c0_exe1195165(GPOUT,67)
    assign out_c0_exe1195165 = c0_exe1195165_reg_q;

    // c0_exe1222174_reg(REG,7)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe1222174_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (conv2d3x3_B7_branch_enable_q == 1'b1)
        begin
            c0_exe1222174_reg_q <= in_c0_exe1222174;
        end
    end

    // out_c0_exe1222174(GPOUT,68)
    assign out_c0_exe1222174 = c0_exe1222174_reg_q;

    // c0_exe1234_reg(REG,8)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe1234_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (conv2d3x3_B7_branch_enable_q == 1'b1)
        begin
            c0_exe1234_reg_q <= $unsigned(in_c0_exe1234);
        end
    end

    // out_c0_exe1234(GPOUT,69)
    assign out_c0_exe1234 = c0_exe1234_reg_q;

    // c0_exe1299_reg(REG,9)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe1299_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (conv2d3x3_B7_branch_enable_q == 1'b1)
        begin
            c0_exe1299_reg_q <= in_c0_exe1299;
        end
    end

    // out_c0_exe1299(GPOUT,70)
    assign out_c0_exe1299 = c0_exe1299_reg_q;

    // c0_exe13109_reg(REG,10)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe13109_reg_q <= $unsigned(1'b0);
        end
        else if (conv2d3x3_B7_branch_enable_q == 1'b1)
        begin
            c0_exe13109_reg_q <= in_c0_exe13109;
        end
    end

    // out_c0_exe13109(GPOUT,71)
    assign out_c0_exe13109 = c0_exe13109_reg_q;

    // c0_exe14118_reg(REG,11)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe14118_reg_q <= $unsigned(1'b0);
        end
        else if (conv2d3x3_B7_branch_enable_q == 1'b1)
        begin
            c0_exe14118_reg_q <= in_c0_exe14118;
        end
    end

    // out_c0_exe14118(GPOUT,72)
    assign out_c0_exe14118 = c0_exe14118_reg_q;

    // c0_exe15128_reg(REG,12)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe15128_reg_q <= $unsigned(1'b0);
        end
        else if (conv2d3x3_B7_branch_enable_q == 1'b1)
        begin
            c0_exe15128_reg_q <= in_c0_exe15128;
        end
    end

    // out_c0_exe15128(GPOUT,73)
    assign out_c0_exe15128 = c0_exe15128_reg_q;

    // c0_exe16138_reg(REG,13)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe16138_reg_q <= $unsigned(1'b0);
        end
        else if (conv2d3x3_B7_branch_enable_q == 1'b1)
        begin
            c0_exe16138_reg_q <= in_c0_exe16138;
        end
    end

    // out_c0_exe16138(GPOUT,74)
    assign out_c0_exe16138 = c0_exe16138_reg_q;

    // c0_exe19_reg(REG,14)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe19_reg_q <= $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (conv2d3x3_B7_branch_enable_q == 1'b1)
        begin
            c0_exe19_reg_q <= in_c0_exe19;
        end
    end

    // out_c0_exe19(GPOUT,75)
    assign out_c0_exe19 = c0_exe19_reg_q;

    // c0_exe320_reg(REG,15)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe320_reg_q <= $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (conv2d3x3_B7_branch_enable_q == 1'b1)
        begin
            c0_exe320_reg_q <= in_c0_exe320;
        end
    end

    // out_c0_exe320(GPOUT,76)
    assign out_c0_exe320 = c0_exe320_reg_q;

    // c0_exe429_reg(REG,16)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe429_reg_q <= $unsigned(1'b0);
        end
        else if (conv2d3x3_B7_branch_enable_q == 1'b1)
        begin
            c0_exe429_reg_q <= in_c0_exe429;
        end
    end

    // out_c0_exe429(GPOUT,77)
    assign out_c0_exe429 = c0_exe429_reg_q;

    // c0_exe540_reg(REG,17)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe540_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (conv2d3x3_B7_branch_enable_q == 1'b1)
        begin
            c0_exe540_reg_q <= in_c0_exe540;
        end
    end

    // out_c0_exe540(GPOUT,78)
    assign out_c0_exe540 = c0_exe540_reg_q;

    // c0_exe647_reg(REG,18)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe647_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (conv2d3x3_B7_branch_enable_q == 1'b1)
        begin
            c0_exe647_reg_q <= in_c0_exe647;
        end
    end

    // out_c0_exe647(GPOUT,79)
    assign out_c0_exe647 = c0_exe647_reg_q;

    // c0_exe759_reg(REG,19)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe759_reg_q <= $unsigned(1'b0);
        end
        else if (conv2d3x3_B7_branch_enable_q == 1'b1)
        begin
            c0_exe759_reg_q <= in_c0_exe759;
        end
    end

    // out_c0_exe759(GPOUT,80)
    assign out_c0_exe759 = c0_exe759_reg_q;

    // c0_exe868_reg(REG,20)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe868_reg_q <= $unsigned(1'b0);
        end
        else if (conv2d3x3_B7_branch_enable_q == 1'b1)
        begin
            c0_exe868_reg_q <= in_c0_exe868;
        end
    end

    // out_c0_exe868(GPOUT,81)
    assign out_c0_exe868 = c0_exe868_reg_q;

    // c0_exe978_reg(REG,21)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe978_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (conv2d3x3_B7_branch_enable_q == 1'b1)
        begin
            c0_exe978_reg_q <= in_c0_exe978;
        end
    end

    // out_c0_exe978(GPOUT,82)
    assign out_c0_exe978 = c0_exe978_reg_q;

    // inc_1_reg(REG,24)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            inc_1_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (conv2d3x3_B7_branch_enable_q == 1'b1)
        begin
            inc_1_reg_q <= in_inc_1;
        end
    end

    // out_inc_1(GPOUT,83)
    assign out_inc_1 = inc_1_reg_q;

    // j_062147_reg(REG,54)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            j_062147_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (conv2d3x3_B7_branch_enable_q == 1'b1)
        begin
            j_062147_reg_q <= in_j_062147;
        end
    end

    // out_j_062147(GPOUT,84)
    assign out_j_062147 = j_062147_reg_q;

    // k_059161_reg(REG,55)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            k_059161_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (conv2d3x3_B7_branch_enable_q == 1'b1)
        begin
            k_059161_reg_q <= in_k_059161;
        end
    end

    // out_k_059161(GPOUT,85)
    assign out_k_059161 = k_059161_reg_q;

    // mul46_add4170_reg(REG,56)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            mul46_add4170_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (conv2d3x3_B7_branch_enable_q == 1'b1)
        begin
            mul46_add4170_reg_q <= in_mul46_add4170;
        end
    end

    // out_mul46_add4170(GPOUT,86)
    assign out_mul46_add4170 = mul46_add4170_reg_q;

    // conv2d3x3_B7_branch_enable_not(LOGICAL,23)
    assign conv2d3x3_B7_branch_enable_not_q = ~ (conv2d3x3_B7_branch_enable_q);

    // out_stall_out(GPOUT,87)
    assign out_stall_out = conv2d3x3_B7_branch_enable_not_q;

    // unnamed_conv2d3x310_reg(REG,91)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            unnamed_conv2d3x310_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (conv2d3x3_B7_branch_enable_q == 1'b1)
        begin
            unnamed_conv2d3x310_reg_q <= $unsigned(in_unnamed_conv2d3x310);
        end
    end

    // out_unnamed_conv2d3x310(GPOUT,88)
    assign out_unnamed_conv2d3x310 = unnamed_conv2d3x310_reg_q;

    // out_valid_out_0(GPOUT,89)
    assign out_valid_out_0 = valid_0_reg_q;

    // out_valid_out_1(GPOUT,90)
    assign out_valid_out_1 = valid_1_reg_q;

endmodule
