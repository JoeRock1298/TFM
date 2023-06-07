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
// SystemVerilog created on Tue Jun  6 18:45:14 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2d1x1_B3_branch (
    input wire [63:0] in_acl_global_id_131,
    input wire [63:0] in_c0_exe13,
    input wire [31:0] in_c0_exe36,
    input wire [63:0] in_c0_exe47,
    input wire [0:0] in_c0_exe510,
    input wire [0:0] in_c0_exe615,
    input wire [0:0] in_c0_exe718,
    input wire [0:0] in_c0_exe819,
    input wire [0:0] in_c0_exe924,
    input wire [31:0] in_inc64,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [31:0] in_unnamed_conv2d1x13,
    input wire [0:0] in_unnamed_conv2d1x14,
    input wire [0:0] in_valid_in,
    output wire [63:0] out_acl_global_id_131,
    output wire [63:0] out_c0_exe13,
    output wire [31:0] out_c0_exe36,
    output wire [63:0] out_c0_exe47,
    output wire [0:0] out_c0_exe510,
    output wire [0:0] out_c0_exe615,
    output wire [0:0] out_c0_exe718,
    output wire [0:0] out_c0_exe819,
    output wire [0:0] out_c0_exe924,
    output wire [31:0] out_inc64,
    output wire [0:0] out_stall_out,
    output wire [31:0] out_unnamed_conv2d1x13,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    reg [63:0] acl_global_id_131_reg_q;
    reg [63:0] c0_exe13_reg_q;
    reg [31:0] c0_exe36_reg_q;
    reg [63:0] c0_exe47_reg_q;
    reg [0:0] c0_exe510_reg_q;
    reg [0:0] c0_exe615_reg_q;
    reg [0:0] c0_exe718_reg_q;
    reg [0:0] c0_exe819_reg_q;
    reg [0:0] c0_exe924_reg_q;
    wire [0:0] conv2d1x1_B3_branch_enable_q;
    wire [0:0] conv2d1x1_B3_branch_enable_not_q;
    reg [31:0] inc64_reg_q;
    wire [0:0] not_stall_in_0_q;
    wire [0:0] not_stall_in_1_q;
    wire [0:0] not_valid_0_q;
    wire [0:0] not_valid_1_q;
    wire [0:0] not_valid_or_not_stall_0_q;
    wire [0:0] not_valid_or_not_stall_1_q;
    reg [31:0] unnamed_conv2d1x13_reg_q;
    wire [0:0] unnamed_conv2d1x14_cmp_q;
    reg [0:0] valid_0_reg_q;
    reg [0:0] valid_1_reg_q;
    wire [0:0] valid_out_0_and_q;
    wire [0:0] valid_out_1_and_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // not_stall_in_1(LOGICAL,30)
    assign not_stall_in_1_q = ~ (in_stall_in_1);

    // unnamed_conv2d1x14_cmp(LOGICAL,50)
    assign unnamed_conv2d1x14_cmp_q = ~ (in_unnamed_conv2d1x14);

    // valid_out_1_and(LOGICAL,54)
    assign valid_out_1_and_q = in_valid_in & unnamed_conv2d1x14_cmp_q;

    // valid_1_reg(REG,52)
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

    // not_valid_1(LOGICAL,32)
    assign not_valid_1_q = ~ (valid_1_reg_q);

    // not_valid_or_not_stall_1(LOGICAL,34)
    assign not_valid_or_not_stall_1_q = not_valid_1_q | not_stall_in_1_q;

    // not_stall_in_0(LOGICAL,29)
    assign not_stall_in_0_q = ~ (in_stall_in_0);

    // valid_out_0_and(LOGICAL,53)
    assign valid_out_0_and_q = in_valid_in & in_unnamed_conv2d1x14;

    // valid_0_reg(REG,51)
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

    // not_valid_0(LOGICAL,31)
    assign not_valid_0_q = ~ (valid_0_reg_q);

    // not_valid_or_not_stall_0(LOGICAL,33)
    assign not_valid_or_not_stall_0_q = not_valid_0_q | not_stall_in_0_q;

    // conv2d1x1_B3_branch_enable(LOGICAL,11)
    assign conv2d1x1_B3_branch_enable_q = not_valid_or_not_stall_0_q & not_valid_or_not_stall_1_q;

    // acl_global_id_131_reg(REG,2)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            acl_global_id_131_reg_q <= $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (conv2d1x1_B3_branch_enable_q == 1'b1)
        begin
            acl_global_id_131_reg_q <= in_acl_global_id_131;
        end
    end

    // out_acl_global_id_131(GPOUT,35)
    assign out_acl_global_id_131 = acl_global_id_131_reg_q;

    // c0_exe13_reg(REG,3)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe13_reg_q <= $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (conv2d1x1_B3_branch_enable_q == 1'b1)
        begin
            c0_exe13_reg_q <= in_c0_exe13;
        end
    end

    // out_c0_exe13(GPOUT,36)
    assign out_c0_exe13 = c0_exe13_reg_q;

    // c0_exe36_reg(REG,4)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe36_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (conv2d1x1_B3_branch_enable_q == 1'b1)
        begin
            c0_exe36_reg_q <= in_c0_exe36;
        end
    end

    // out_c0_exe36(GPOUT,37)
    assign out_c0_exe36 = c0_exe36_reg_q;

    // c0_exe47_reg(REG,5)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe47_reg_q <= $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (conv2d1x1_B3_branch_enable_q == 1'b1)
        begin
            c0_exe47_reg_q <= in_c0_exe47;
        end
    end

    // out_c0_exe47(GPOUT,38)
    assign out_c0_exe47 = c0_exe47_reg_q;

    // c0_exe510_reg(REG,6)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe510_reg_q <= $unsigned(1'b0);
        end
        else if (conv2d1x1_B3_branch_enable_q == 1'b1)
        begin
            c0_exe510_reg_q <= in_c0_exe510;
        end
    end

    // out_c0_exe510(GPOUT,39)
    assign out_c0_exe510 = c0_exe510_reg_q;

    // c0_exe615_reg(REG,7)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe615_reg_q <= $unsigned(1'b0);
        end
        else if (conv2d1x1_B3_branch_enable_q == 1'b1)
        begin
            c0_exe615_reg_q <= in_c0_exe615;
        end
    end

    // out_c0_exe615(GPOUT,40)
    assign out_c0_exe615 = c0_exe615_reg_q;

    // c0_exe718_reg(REG,8)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe718_reg_q <= $unsigned(1'b0);
        end
        else if (conv2d1x1_B3_branch_enable_q == 1'b1)
        begin
            c0_exe718_reg_q <= in_c0_exe718;
        end
    end

    // out_c0_exe718(GPOUT,41)
    assign out_c0_exe718 = c0_exe718_reg_q;

    // c0_exe819_reg(REG,9)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe819_reg_q <= $unsigned(1'b0);
        end
        else if (conv2d1x1_B3_branch_enable_q == 1'b1)
        begin
            c0_exe819_reg_q <= in_c0_exe819;
        end
    end

    // out_c0_exe819(GPOUT,42)
    assign out_c0_exe819 = c0_exe819_reg_q;

    // c0_exe924_reg(REG,10)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe924_reg_q <= $unsigned(1'b0);
        end
        else if (conv2d1x1_B3_branch_enable_q == 1'b1)
        begin
            c0_exe924_reg_q <= in_c0_exe924;
        end
    end

    // out_c0_exe924(GPOUT,43)
    assign out_c0_exe924 = c0_exe924_reg_q;

    // inc64_reg(REG,13)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            inc64_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (conv2d1x1_B3_branch_enable_q == 1'b1)
        begin
            inc64_reg_q <= in_inc64;
        end
    end

    // out_inc64(GPOUT,44)
    assign out_inc64 = inc64_reg_q;

    // conv2d1x1_B3_branch_enable_not(LOGICAL,12)
    assign conv2d1x1_B3_branch_enable_not_q = ~ (conv2d1x1_B3_branch_enable_q);

    // out_stall_out(GPOUT,45)
    assign out_stall_out = conv2d1x1_B3_branch_enable_not_q;

    // unnamed_conv2d1x13_reg(REG,49)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            unnamed_conv2d1x13_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (conv2d1x1_B3_branch_enable_q == 1'b1)
        begin
            unnamed_conv2d1x13_reg_q <= $unsigned(in_unnamed_conv2d1x13);
        end
    end

    // out_unnamed_conv2d1x13(GPOUT,46)
    assign out_unnamed_conv2d1x13 = unnamed_conv2d1x13_reg_q;

    // out_valid_out_0(GPOUT,47)
    assign out_valid_out_0 = valid_0_reg_q;

    // out_valid_out_1(GPOUT,48)
    assign out_valid_out_1 = valid_1_reg_q;

endmodule
