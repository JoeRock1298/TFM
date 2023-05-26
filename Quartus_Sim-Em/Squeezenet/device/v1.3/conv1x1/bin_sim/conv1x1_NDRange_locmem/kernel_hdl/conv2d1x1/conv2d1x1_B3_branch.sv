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

// SystemVerilog created from conv2d1x1_B3_branch
// SystemVerilog created on Wed May 24 18:10:55 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2d1x1_B3_branch (
    input wire [63:0] in_acl_global_id_136,
    input wire [31:0] in_c0_exe14932,
    input wire [63:0] in_c0_exe15,
    input wire [63:0] in_c0_exe28,
    input wire [31:0] in_c0_exe411,
    input wire [63:0] in_c0_exe515,
    input wire [31:0] in_c0_exe566,
    input wire [0:0] in_c0_exe618,
    input wire [0:0] in_c0_exe667,
    input wire [0:0] in_c0_exe720,
    input wire [0:0] in_c0_exe823,
    input wire [0:0] in_c0_exe927,
    input wire [31:0] in_c1_exe1,
    input wire [31:0] in_inc,
    input wire [31:0] in_j_07030,
    input wire [31:0] in_l_grpid_01,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [31:0] in_unnamed_conv2d1x14,
    input wire [0:0] in_valid_in,
    output wire [63:0] out_acl_global_id_136,
    output wire [31:0] out_c0_exe14932,
    output wire [63:0] out_c0_exe15,
    output wire [63:0] out_c0_exe28,
    output wire [31:0] out_c0_exe411,
    output wire [63:0] out_c0_exe515,
    output wire [31:0] out_c0_exe566,
    output wire [0:0] out_c0_exe618,
    output wire [0:0] out_c0_exe720,
    output wire [0:0] out_c0_exe823,
    output wire [0:0] out_c0_exe927,
    output wire [31:0] out_c1_exe1,
    output wire [31:0] out_inc,
    output wire [31:0] out_j_07030,
    output wire [31:0] out_l_grpid_01,
    output wire [0:0] out_stall_out,
    output wire [31:0] out_unnamed_conv2d1x14,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    reg [63:0] acl_global_id_136_reg_q;
    reg [31:0] c0_exe14932_reg_q;
    reg [63:0] c0_exe15_reg_q;
    reg [63:0] c0_exe28_reg_q;
    reg [31:0] c0_exe411_reg_q;
    reg [63:0] c0_exe515_reg_q;
    reg [31:0] c0_exe566_reg_q;
    reg [0:0] c0_exe618_reg_q;
    wire [0:0] c0_exe667_cmp_q;
    reg [0:0] c0_exe720_reg_q;
    reg [0:0] c0_exe823_reg_q;
    reg [0:0] c0_exe927_reg_q;
    reg [31:0] c1_exe1_reg_q;
    wire [0:0] conv2d1x1_B3_branch_enable_q;
    wire [0:0] conv2d1x1_B3_branch_enable_not_q;
    reg [31:0] inc_reg_q;
    reg [31:0] j_07030_reg_q;
    reg [31:0] l_grpid_01_reg_q;
    wire [0:0] not_stall_in_0_q;
    wire [0:0] not_stall_in_1_q;
    wire [0:0] not_valid_0_q;
    wire [0:0] not_valid_1_q;
    wire [0:0] not_valid_or_not_stall_0_q;
    wire [0:0] not_valid_or_not_stall_1_q;
    reg [31:0] unnamed_conv2d1x14_reg_q;
    reg [0:0] valid_0_reg_q;
    reg [0:0] valid_1_reg_q;
    wire [0:0] valid_out_0_and_q;
    wire [0:0] valid_out_1_and_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // not_stall_in_1(LOGICAL,41)
    assign not_stall_in_1_q = ~ (in_stall_in_1);

    // c0_exe667_cmp(LOGICAL,10)
    assign c0_exe667_cmp_q = ~ (in_c0_exe667);

    // valid_out_1_and(LOGICAL,69)
    assign valid_out_1_and_q = in_valid_in & c0_exe667_cmp_q;

    // valid_1_reg(REG,67)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_1_reg_q <= $unsigned(1'b0);
        end
        else if (conv2d1x1_B3_branch_enable_q == 1'b1)
        begin
            valid_1_reg_q <= valid_out_1_and_q;
        end
    end

    // not_valid_1(LOGICAL,43)
    assign not_valid_1_q = ~ (valid_1_reg_q);

    // not_valid_or_not_stall_1(LOGICAL,45)
    assign not_valid_or_not_stall_1_q = not_valid_1_q | not_stall_in_1_q;

    // not_stall_in_0(LOGICAL,40)
    assign not_stall_in_0_q = ~ (in_stall_in_0);

    // valid_out_0_and(LOGICAL,68)
    assign valid_out_0_and_q = in_valid_in & in_c0_exe667;

    // valid_0_reg(REG,66)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_0_reg_q <= $unsigned(1'b0);
        end
        else if (conv2d1x1_B3_branch_enable_q == 1'b1)
        begin
            valid_0_reg_q <= valid_out_0_and_q;
        end
    end

    // not_valid_0(LOGICAL,42)
    assign not_valid_0_q = ~ (valid_0_reg_q);

    // not_valid_or_not_stall_0(LOGICAL,44)
    assign not_valid_or_not_stall_0_q = not_valid_0_q | not_stall_in_0_q;

    // conv2d1x1_B3_branch_enable(LOGICAL,15)
    assign conv2d1x1_B3_branch_enable_q = not_valid_or_not_stall_0_q & not_valid_or_not_stall_1_q;

    // acl_global_id_136_reg(REG,2)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            acl_global_id_136_reg_q <= $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (conv2d1x1_B3_branch_enable_q == 1'b1)
        begin
            acl_global_id_136_reg_q <= in_acl_global_id_136;
        end
    end

    // out_acl_global_id_136(GPOUT,46)
    assign out_acl_global_id_136 = acl_global_id_136_reg_q;

    // c0_exe14932_reg(REG,3)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe14932_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (conv2d1x1_B3_branch_enable_q == 1'b1)
        begin
            c0_exe14932_reg_q <= in_c0_exe14932;
        end
    end

    // out_c0_exe14932(GPOUT,47)
    assign out_c0_exe14932 = c0_exe14932_reg_q;

    // c0_exe15_reg(REG,4)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe15_reg_q <= $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (conv2d1x1_B3_branch_enable_q == 1'b1)
        begin
            c0_exe15_reg_q <= in_c0_exe15;
        end
    end

    // out_c0_exe15(GPOUT,48)
    assign out_c0_exe15 = c0_exe15_reg_q;

    // c0_exe28_reg(REG,5)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe28_reg_q <= $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (conv2d1x1_B3_branch_enable_q == 1'b1)
        begin
            c0_exe28_reg_q <= in_c0_exe28;
        end
    end

    // out_c0_exe28(GPOUT,49)
    assign out_c0_exe28 = c0_exe28_reg_q;

    // c0_exe411_reg(REG,6)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe411_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (conv2d1x1_B3_branch_enable_q == 1'b1)
        begin
            c0_exe411_reg_q <= in_c0_exe411;
        end
    end

    // out_c0_exe411(GPOUT,50)
    assign out_c0_exe411 = c0_exe411_reg_q;

    // c0_exe515_reg(REG,7)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe515_reg_q <= $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (conv2d1x1_B3_branch_enable_q == 1'b1)
        begin
            c0_exe515_reg_q <= in_c0_exe515;
        end
    end

    // out_c0_exe515(GPOUT,51)
    assign out_c0_exe515 = c0_exe515_reg_q;

    // c0_exe566_reg(REG,8)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe566_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (conv2d1x1_B3_branch_enable_q == 1'b1)
        begin
            c0_exe566_reg_q <= in_c0_exe566;
        end
    end

    // out_c0_exe566(GPOUT,52)
    assign out_c0_exe566 = c0_exe566_reg_q;

    // c0_exe618_reg(REG,9)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe618_reg_q <= $unsigned(1'b0);
        end
        else if (conv2d1x1_B3_branch_enable_q == 1'b1)
        begin
            c0_exe618_reg_q <= in_c0_exe618;
        end
    end

    // out_c0_exe618(GPOUT,53)
    assign out_c0_exe618 = c0_exe618_reg_q;

    // c0_exe720_reg(REG,11)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe720_reg_q <= $unsigned(1'b0);
        end
        else if (conv2d1x1_B3_branch_enable_q == 1'b1)
        begin
            c0_exe720_reg_q <= in_c0_exe720;
        end
    end

    // out_c0_exe720(GPOUT,54)
    assign out_c0_exe720 = c0_exe720_reg_q;

    // c0_exe823_reg(REG,12)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe823_reg_q <= $unsigned(1'b0);
        end
        else if (conv2d1x1_B3_branch_enable_q == 1'b1)
        begin
            c0_exe823_reg_q <= in_c0_exe823;
        end
    end

    // out_c0_exe823(GPOUT,55)
    assign out_c0_exe823 = c0_exe823_reg_q;

    // c0_exe927_reg(REG,13)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe927_reg_q <= $unsigned(1'b0);
        end
        else if (conv2d1x1_B3_branch_enable_q == 1'b1)
        begin
            c0_exe927_reg_q <= in_c0_exe927;
        end
    end

    // out_c0_exe927(GPOUT,56)
    assign out_c0_exe927 = c0_exe927_reg_q;

    // c1_exe1_reg(REG,14)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c1_exe1_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (conv2d1x1_B3_branch_enable_q == 1'b1)
        begin
            c1_exe1_reg_q <= $unsigned(in_c1_exe1);
        end
    end

    // out_c1_exe1(GPOUT,57)
    assign out_c1_exe1 = c1_exe1_reg_q;

    // inc_reg(REG,17)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            inc_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (conv2d1x1_B3_branch_enable_q == 1'b1)
        begin
            inc_reg_q <= in_inc;
        end
    end

    // out_inc(GPOUT,58)
    assign out_inc = inc_reg_q;

    // j_07030_reg(REG,38)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            j_07030_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (conv2d1x1_B3_branch_enable_q == 1'b1)
        begin
            j_07030_reg_q <= in_j_07030;
        end
    end

    // out_j_07030(GPOUT,59)
    assign out_j_07030 = j_07030_reg_q;

    // l_grpid_01_reg(REG,39)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            l_grpid_01_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (conv2d1x1_B3_branch_enable_q == 1'b1)
        begin
            l_grpid_01_reg_q <= in_l_grpid_01;
        end
    end

    // out_l_grpid_01(GPOUT,60)
    assign out_l_grpid_01 = l_grpid_01_reg_q;

    // conv2d1x1_B3_branch_enable_not(LOGICAL,16)
    assign conv2d1x1_B3_branch_enable_not_q = ~ (conv2d1x1_B3_branch_enable_q);

    // out_stall_out(GPOUT,61)
    assign out_stall_out = conv2d1x1_B3_branch_enable_not_q;

    // unnamed_conv2d1x14_reg(REG,65)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            unnamed_conv2d1x14_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (conv2d1x1_B3_branch_enable_q == 1'b1)
        begin
            unnamed_conv2d1x14_reg_q <= $unsigned(in_unnamed_conv2d1x14);
        end
    end

    // out_unnamed_conv2d1x14(GPOUT,62)
    assign out_unnamed_conv2d1x14 = unnamed_conv2d1x14_reg_q;

    // out_valid_out_0(GPOUT,63)
    assign out_valid_out_0 = valid_0_reg_q;

    // out_valid_out_1(GPOUT,64)
    assign out_valid_out_1 = valid_1_reg_q;

endmodule
