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

// SystemVerilog created from maxpool2d_B10_branch
// SystemVerilog created on Sat Jun  3 13:01:56 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module maxpool2d_B10_branch (
    input wire [0:0] in_c0_exe10340,
    input wire [31:0] in_c0_exe11341,
    input wire [0:0] in_c0_exe12342,
    input wire [0:0] in_c0_exe13343,
    input wire [31:0] in_c0_exe14344,
    input wire [0:0] in_c0_exe15345,
    input wire [0:0] in_c0_exe5335,
    input wire [0:0] in_c0_exe8338,
    input wire [63:0] in_c0_exe9339,
    input wire [31:0] in_c1_exe1,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_c0_exe10340,
    output wire [31:0] out_c0_exe11341,
    output wire [0:0] out_c0_exe12342,
    output wire [0:0] out_c0_exe13343,
    output wire [31:0] out_c0_exe14344,
    output wire [0:0] out_c0_exe15345,
    output wire [0:0] out_c0_exe5335,
    output wire [63:0] out_c0_exe9339,
    output wire [31:0] out_c1_exe1,
    output wire [0:0] out_stall_out,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    reg [0:0] c0_exe10340_reg_q;
    reg [31:0] c0_exe11341_reg_q;
    reg [0:0] c0_exe12342_reg_q;
    reg [0:0] c0_exe13343_reg_q;
    reg [31:0] c0_exe14344_reg_q;
    reg [0:0] c0_exe15345_reg_q;
    reg [0:0] c0_exe5335_reg_q;
    wire [0:0] c0_exe8338_cmp_q;
    reg [63:0] c0_exe9339_reg_q;
    reg [31:0] c1_exe1_reg_q;
    wire [0:0] maxpool2d_B10_branch_enable_q;
    wire [0:0] maxpool2d_B10_branch_enable_not_q;
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

    // not_stall_in_1(LOGICAL,28)
    assign not_stall_in_1_q = ~ (in_stall_in_1);

    // c0_exe8338_cmp(LOGICAL,9)
    assign c0_exe8338_cmp_q = ~ (in_c0_exe8338);

    // valid_out_1_and(LOGICAL,48)
    assign valid_out_1_and_q = in_valid_in & c0_exe8338_cmp_q;

    // valid_1_reg(REG,46)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_1_reg_q <= $unsigned(1'b0);
        end
        else if (maxpool2d_B10_branch_enable_q == 1'b1)
        begin
            valid_1_reg_q <= valid_out_1_and_q;
        end
    end

    // not_valid_1(LOGICAL,30)
    assign not_valid_1_q = ~ (valid_1_reg_q);

    // not_valid_or_not_stall_1(LOGICAL,32)
    assign not_valid_or_not_stall_1_q = not_valid_1_q | not_stall_in_1_q;

    // not_stall_in_0(LOGICAL,27)
    assign not_stall_in_0_q = ~ (in_stall_in_0);

    // valid_out_0_and(LOGICAL,47)
    assign valid_out_0_and_q = in_valid_in & in_c0_exe8338;

    // valid_0_reg(REG,45)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_0_reg_q <= $unsigned(1'b0);
        end
        else if (maxpool2d_B10_branch_enable_q == 1'b1)
        begin
            valid_0_reg_q <= valid_out_0_and_q;
        end
    end

    // not_valid_0(LOGICAL,29)
    assign not_valid_0_q = ~ (valid_0_reg_q);

    // not_valid_or_not_stall_0(LOGICAL,31)
    assign not_valid_or_not_stall_0_q = not_valid_0_q | not_stall_in_0_q;

    // maxpool2d_B10_branch_enable(LOGICAL,25)
    assign maxpool2d_B10_branch_enable_q = not_valid_or_not_stall_0_q & not_valid_or_not_stall_1_q;

    // c0_exe10340_reg(REG,2)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe10340_reg_q <= $unsigned(1'b0);
        end
        else if (maxpool2d_B10_branch_enable_q == 1'b1)
        begin
            c0_exe10340_reg_q <= in_c0_exe10340;
        end
    end

    // out_c0_exe10340(GPOUT,33)
    assign out_c0_exe10340 = c0_exe10340_reg_q;

    // c0_exe11341_reg(REG,3)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe11341_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (maxpool2d_B10_branch_enable_q == 1'b1)
        begin
            c0_exe11341_reg_q <= in_c0_exe11341;
        end
    end

    // out_c0_exe11341(GPOUT,34)
    assign out_c0_exe11341 = c0_exe11341_reg_q;

    // c0_exe12342_reg(REG,4)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe12342_reg_q <= $unsigned(1'b0);
        end
        else if (maxpool2d_B10_branch_enable_q == 1'b1)
        begin
            c0_exe12342_reg_q <= in_c0_exe12342;
        end
    end

    // out_c0_exe12342(GPOUT,35)
    assign out_c0_exe12342 = c0_exe12342_reg_q;

    // c0_exe13343_reg(REG,5)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe13343_reg_q <= $unsigned(1'b0);
        end
        else if (maxpool2d_B10_branch_enable_q == 1'b1)
        begin
            c0_exe13343_reg_q <= in_c0_exe13343;
        end
    end

    // out_c0_exe13343(GPOUT,36)
    assign out_c0_exe13343 = c0_exe13343_reg_q;

    // c0_exe14344_reg(REG,6)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe14344_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (maxpool2d_B10_branch_enable_q == 1'b1)
        begin
            c0_exe14344_reg_q <= in_c0_exe14344;
        end
    end

    // out_c0_exe14344(GPOUT,37)
    assign out_c0_exe14344 = c0_exe14344_reg_q;

    // c0_exe15345_reg(REG,7)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe15345_reg_q <= $unsigned(1'b0);
        end
        else if (maxpool2d_B10_branch_enable_q == 1'b1)
        begin
            c0_exe15345_reg_q <= in_c0_exe15345;
        end
    end

    // out_c0_exe15345(GPOUT,38)
    assign out_c0_exe15345 = c0_exe15345_reg_q;

    // c0_exe5335_reg(REG,8)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe5335_reg_q <= $unsigned(1'b0);
        end
        else if (maxpool2d_B10_branch_enable_q == 1'b1)
        begin
            c0_exe5335_reg_q <= in_c0_exe5335;
        end
    end

    // out_c0_exe5335(GPOUT,39)
    assign out_c0_exe5335 = c0_exe5335_reg_q;

    // c0_exe9339_reg(REG,10)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe9339_reg_q <= $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (maxpool2d_B10_branch_enable_q == 1'b1)
        begin
            c0_exe9339_reg_q <= in_c0_exe9339;
        end
    end

    // out_c0_exe9339(GPOUT,40)
    assign out_c0_exe9339 = c0_exe9339_reg_q;

    // c1_exe1_reg(REG,11)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c1_exe1_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (maxpool2d_B10_branch_enable_q == 1'b1)
        begin
            c1_exe1_reg_q <= $unsigned(in_c1_exe1);
        end
    end

    // out_c1_exe1(GPOUT,41)
    assign out_c1_exe1 = c1_exe1_reg_q;

    // maxpool2d_B10_branch_enable_not(LOGICAL,26)
    assign maxpool2d_B10_branch_enable_not_q = ~ (maxpool2d_B10_branch_enable_q);

    // out_stall_out(GPOUT,42)
    assign out_stall_out = maxpool2d_B10_branch_enable_not_q;

    // out_valid_out_0(GPOUT,43)
    assign out_valid_out_0 = valid_0_reg_q;

    // out_valid_out_1(GPOUT,44)
    assign out_valid_out_1 = valid_1_reg_q;

endmodule
