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

// SystemVerilog created from conv2d3x3_B11_branch
// SystemVerilog created on Tue Jun  6 18:48:20 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2d3x3_B11_branch (
    input wire [63:0] in_c0_exe10925,
    input wire [0:0] in_c0_exe12927,
    input wire [63:0] in_c0_exe13928,
    input wire [31:0] in_c0_exe14929,
    input wire [0:0] in_c0_exe15930,
    input wire [31:0] in_c0_exe16931,
    input wire [31:0] in_c0_exe17932,
    input wire [0:0] in_c0_exe18933,
    input wire [0:0] in_c0_exe19934,
    input wire [31:0] in_c0_exe20935,
    input wire [31:0] in_c0_exe21936,
    input wire [0:0] in_c0_exe22937,
    input wire [0:0] in_c0_exe23938,
    input wire [0:0] in_c0_exe24939,
    input wire [31:0] in_c0_exe25940,
    input wire [31:0] in_c0_exe26941,
    input wire [0:0] in_c0_exe27942,
    input wire [31:0] in_c0_exe28943,
    input wire [31:0] in_c0_exe2917,
    input wire [31:0] in_c0_exe29944,
    input wire [31:0] in_c0_exe30945,
    input wire [0:0] in_c0_exe31946,
    input wire [63:0] in_c0_exe33948,
    input wire [63:0] in_c0_exe34949,
    input wire [31:0] in_c0_exe35950,
    input wire [0:0] in_c0_exe36951,
    input wire [31:0] in_c0_exe37952,
    input wire [31:0] in_c0_exe38953,
    input wire [31:0] in_c0_exe3918,
    input wire [0:0] in_c0_exe39954,
    input wire [0:0] in_c0_exe40955,
    input wire [31:0] in_c0_exe41956,
    input wire [0:0] in_c0_exe42957,
    input wire [0:0] in_c0_exe43958,
    input wire [31:0] in_c0_exe44959,
    input wire [0:0] in_c0_exe45960,
    input wire [0:0] in_c0_exe46961,
    input wire [0:0] in_c0_exe47962,
    input wire [63:0] in_c0_exe48963,
    input wire [63:0] in_c0_exe49964,
    input wire [31:0] in_c0_exe50965,
    input wire [0:0] in_c0_exe51966,
    input wire [0:0] in_c0_exe5920,
    input wire [0:0] in_c0_exe6921,
    input wire [0:0] in_c0_exe8923,
    input wire [31:0] in_c1_exe1983,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [0:0] in_valid_in,
    output wire [63:0] out_c0_exe10925,
    output wire [63:0] out_c0_exe13928,
    output wire [31:0] out_c0_exe14929,
    output wire [0:0] out_c0_exe15930,
    output wire [31:0] out_c0_exe16931,
    output wire [31:0] out_c0_exe17932,
    output wire [0:0] out_c0_exe18933,
    output wire [0:0] out_c0_exe19934,
    output wire [31:0] out_c0_exe20935,
    output wire [31:0] out_c0_exe21936,
    output wire [0:0] out_c0_exe22937,
    output wire [0:0] out_c0_exe23938,
    output wire [0:0] out_c0_exe24939,
    output wire [31:0] out_c0_exe25940,
    output wire [31:0] out_c0_exe26941,
    output wire [0:0] out_c0_exe27942,
    output wire [31:0] out_c0_exe28943,
    output wire [31:0] out_c0_exe2917,
    output wire [31:0] out_c0_exe29944,
    output wire [31:0] out_c0_exe30945,
    output wire [0:0] out_c0_exe31946,
    output wire [63:0] out_c0_exe33948,
    output wire [63:0] out_c0_exe34949,
    output wire [31:0] out_c0_exe35950,
    output wire [0:0] out_c0_exe36951,
    output wire [31:0] out_c0_exe37952,
    output wire [31:0] out_c0_exe38953,
    output wire [31:0] out_c0_exe3918,
    output wire [0:0] out_c0_exe39954,
    output wire [0:0] out_c0_exe40955,
    output wire [31:0] out_c0_exe41956,
    output wire [0:0] out_c0_exe42957,
    output wire [0:0] out_c0_exe43958,
    output wire [31:0] out_c0_exe44959,
    output wire [0:0] out_c0_exe45960,
    output wire [0:0] out_c0_exe46961,
    output wire [0:0] out_c0_exe47962,
    output wire [63:0] out_c0_exe48963,
    output wire [63:0] out_c0_exe49964,
    output wire [31:0] out_c0_exe50965,
    output wire [0:0] out_c0_exe51966,
    output wire [0:0] out_c0_exe5920,
    output wire [0:0] out_c0_exe6921,
    output wire [0:0] out_c0_exe8923,
    output wire [31:0] out_c1_exe1983,
    output wire [0:0] out_stall_out,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    reg [63:0] c0_exe10925_reg_q;
    wire [0:0] c0_exe12927_cmp_q;
    reg [63:0] c0_exe13928_reg_q;
    reg [31:0] c0_exe14929_reg_q;
    reg [0:0] c0_exe15930_reg_q;
    reg [31:0] c0_exe16931_reg_q;
    reg [31:0] c0_exe17932_reg_q;
    reg [0:0] c0_exe18933_reg_q;
    reg [0:0] c0_exe19934_reg_q;
    reg [31:0] c0_exe20935_reg_q;
    reg [31:0] c0_exe21936_reg_q;
    reg [0:0] c0_exe22937_reg_q;
    reg [0:0] c0_exe23938_reg_q;
    reg [0:0] c0_exe24939_reg_q;
    reg [31:0] c0_exe25940_reg_q;
    reg [31:0] c0_exe26941_reg_q;
    reg [0:0] c0_exe27942_reg_q;
    reg [31:0] c0_exe28943_reg_q;
    reg [31:0] c0_exe2917_reg_q;
    reg [31:0] c0_exe29944_reg_q;
    reg [31:0] c0_exe30945_reg_q;
    reg [0:0] c0_exe31946_reg_q;
    reg [63:0] c0_exe33948_reg_q;
    reg [63:0] c0_exe34949_reg_q;
    reg [31:0] c0_exe35950_reg_q;
    reg [0:0] c0_exe36951_reg_q;
    reg [31:0] c0_exe37952_reg_q;
    reg [31:0] c0_exe38953_reg_q;
    reg [31:0] c0_exe3918_reg_q;
    reg [0:0] c0_exe39954_reg_q;
    reg [0:0] c0_exe40955_reg_q;
    reg [31:0] c0_exe41956_reg_q;
    reg [0:0] c0_exe42957_reg_q;
    reg [0:0] c0_exe43958_reg_q;
    reg [31:0] c0_exe44959_reg_q;
    reg [0:0] c0_exe45960_reg_q;
    reg [0:0] c0_exe46961_reg_q;
    reg [0:0] c0_exe47962_reg_q;
    reg [63:0] c0_exe48963_reg_q;
    reg [63:0] c0_exe49964_reg_q;
    reg [31:0] c0_exe50965_reg_q;
    reg [0:0] c0_exe51966_reg_q;
    reg [0:0] c0_exe5920_reg_q;
    reg [0:0] c0_exe6921_reg_q;
    reg [0:0] c0_exe8923_reg_q;
    reg [31:0] c1_exe1983_reg_q;
    wire [0:0] conv2d3x3_B11_branch_enable_q;
    wire [0:0] conv2d3x3_B11_branch_enable_not_q;
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

    // not_stall_in_1(LOGICAL,100)
    assign not_stall_in_1_q = ~ (in_stall_in_1);

    // c0_exe12927_cmp(LOGICAL,3)
    assign c0_exe12927_cmp_q = ~ (in_c0_exe12927);

    // valid_out_1_and(LOGICAL,156)
    assign valid_out_1_and_q = in_valid_in & c0_exe12927_cmp_q;

    // valid_1_reg(REG,154)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_1_reg_q <= $unsigned(1'b0);
        end
        else if (conv2d3x3_B11_branch_enable_q == 1'b1)
        begin
            valid_1_reg_q <= valid_out_1_and_q;
        end
    end

    // not_valid_1(LOGICAL,102)
    assign not_valid_1_q = ~ (valid_1_reg_q);

    // not_valid_or_not_stall_1(LOGICAL,104)
    assign not_valid_or_not_stall_1_q = not_valid_1_q | not_stall_in_1_q;

    // not_stall_in_0(LOGICAL,99)
    assign not_stall_in_0_q = ~ (in_stall_in_0);

    // valid_out_0_and(LOGICAL,155)
    assign valid_out_0_and_q = in_valid_in & in_c0_exe12927;

    // valid_0_reg(REG,153)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_0_reg_q <= $unsigned(1'b0);
        end
        else if (conv2d3x3_B11_branch_enable_q == 1'b1)
        begin
            valid_0_reg_q <= valid_out_0_and_q;
        end
    end

    // not_valid_0(LOGICAL,101)
    assign not_valid_0_q = ~ (valid_0_reg_q);

    // not_valid_or_not_stall_0(LOGICAL,103)
    assign not_valid_or_not_stall_0_q = not_valid_0_q | not_stall_in_0_q;

    // conv2d3x3_B11_branch_enable(LOGICAL,48)
    assign conv2d3x3_B11_branch_enable_q = not_valid_or_not_stall_0_q & not_valid_or_not_stall_1_q;

    // c0_exe10925_reg(REG,2)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe10925_reg_q <= $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (conv2d3x3_B11_branch_enable_q == 1'b1)
        begin
            c0_exe10925_reg_q <= in_c0_exe10925;
        end
    end

    // out_c0_exe10925(GPOUT,105)
    assign out_c0_exe10925 = c0_exe10925_reg_q;

    // c0_exe13928_reg(REG,4)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe13928_reg_q <= $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (conv2d3x3_B11_branch_enable_q == 1'b1)
        begin
            c0_exe13928_reg_q <= in_c0_exe13928;
        end
    end

    // out_c0_exe13928(GPOUT,106)
    assign out_c0_exe13928 = c0_exe13928_reg_q;

    // c0_exe14929_reg(REG,5)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe14929_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (conv2d3x3_B11_branch_enable_q == 1'b1)
        begin
            c0_exe14929_reg_q <= $unsigned(in_c0_exe14929);
        end
    end

    // out_c0_exe14929(GPOUT,107)
    assign out_c0_exe14929 = c0_exe14929_reg_q;

    // c0_exe15930_reg(REG,6)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe15930_reg_q <= $unsigned(1'b0);
        end
        else if (conv2d3x3_B11_branch_enable_q == 1'b1)
        begin
            c0_exe15930_reg_q <= in_c0_exe15930;
        end
    end

    // out_c0_exe15930(GPOUT,108)
    assign out_c0_exe15930 = c0_exe15930_reg_q;

    // c0_exe16931_reg(REG,7)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe16931_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (conv2d3x3_B11_branch_enable_q == 1'b1)
        begin
            c0_exe16931_reg_q <= in_c0_exe16931;
        end
    end

    // out_c0_exe16931(GPOUT,109)
    assign out_c0_exe16931 = c0_exe16931_reg_q;

    // c0_exe17932_reg(REG,8)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe17932_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (conv2d3x3_B11_branch_enable_q == 1'b1)
        begin
            c0_exe17932_reg_q <= in_c0_exe17932;
        end
    end

    // out_c0_exe17932(GPOUT,110)
    assign out_c0_exe17932 = c0_exe17932_reg_q;

    // c0_exe18933_reg(REG,9)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe18933_reg_q <= $unsigned(1'b0);
        end
        else if (conv2d3x3_B11_branch_enable_q == 1'b1)
        begin
            c0_exe18933_reg_q <= in_c0_exe18933;
        end
    end

    // out_c0_exe18933(GPOUT,111)
    assign out_c0_exe18933 = c0_exe18933_reg_q;

    // c0_exe19934_reg(REG,10)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe19934_reg_q <= $unsigned(1'b0);
        end
        else if (conv2d3x3_B11_branch_enable_q == 1'b1)
        begin
            c0_exe19934_reg_q <= in_c0_exe19934;
        end
    end

    // out_c0_exe19934(GPOUT,112)
    assign out_c0_exe19934 = c0_exe19934_reg_q;

    // c0_exe20935_reg(REG,11)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe20935_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (conv2d3x3_B11_branch_enable_q == 1'b1)
        begin
            c0_exe20935_reg_q <= in_c0_exe20935;
        end
    end

    // out_c0_exe20935(GPOUT,113)
    assign out_c0_exe20935 = c0_exe20935_reg_q;

    // c0_exe21936_reg(REG,12)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe21936_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (conv2d3x3_B11_branch_enable_q == 1'b1)
        begin
            c0_exe21936_reg_q <= in_c0_exe21936;
        end
    end

    // out_c0_exe21936(GPOUT,114)
    assign out_c0_exe21936 = c0_exe21936_reg_q;

    // c0_exe22937_reg(REG,13)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe22937_reg_q <= $unsigned(1'b0);
        end
        else if (conv2d3x3_B11_branch_enable_q == 1'b1)
        begin
            c0_exe22937_reg_q <= in_c0_exe22937;
        end
    end

    // out_c0_exe22937(GPOUT,115)
    assign out_c0_exe22937 = c0_exe22937_reg_q;

    // c0_exe23938_reg(REG,14)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe23938_reg_q <= $unsigned(1'b0);
        end
        else if (conv2d3x3_B11_branch_enable_q == 1'b1)
        begin
            c0_exe23938_reg_q <= in_c0_exe23938;
        end
    end

    // out_c0_exe23938(GPOUT,116)
    assign out_c0_exe23938 = c0_exe23938_reg_q;

    // c0_exe24939_reg(REG,15)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe24939_reg_q <= $unsigned(1'b0);
        end
        else if (conv2d3x3_B11_branch_enable_q == 1'b1)
        begin
            c0_exe24939_reg_q <= in_c0_exe24939;
        end
    end

    // out_c0_exe24939(GPOUT,117)
    assign out_c0_exe24939 = c0_exe24939_reg_q;

    // c0_exe25940_reg(REG,16)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe25940_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (conv2d3x3_B11_branch_enable_q == 1'b1)
        begin
            c0_exe25940_reg_q <= in_c0_exe25940;
        end
    end

    // out_c0_exe25940(GPOUT,118)
    assign out_c0_exe25940 = c0_exe25940_reg_q;

    // c0_exe26941_reg(REG,17)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe26941_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (conv2d3x3_B11_branch_enable_q == 1'b1)
        begin
            c0_exe26941_reg_q <= in_c0_exe26941;
        end
    end

    // out_c0_exe26941(GPOUT,119)
    assign out_c0_exe26941 = c0_exe26941_reg_q;

    // c0_exe27942_reg(REG,18)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe27942_reg_q <= $unsigned(1'b0);
        end
        else if (conv2d3x3_B11_branch_enable_q == 1'b1)
        begin
            c0_exe27942_reg_q <= in_c0_exe27942;
        end
    end

    // out_c0_exe27942(GPOUT,120)
    assign out_c0_exe27942 = c0_exe27942_reg_q;

    // c0_exe28943_reg(REG,19)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe28943_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (conv2d3x3_B11_branch_enable_q == 1'b1)
        begin
            c0_exe28943_reg_q <= in_c0_exe28943;
        end
    end

    // out_c0_exe28943(GPOUT,121)
    assign out_c0_exe28943 = c0_exe28943_reg_q;

    // c0_exe2917_reg(REG,20)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe2917_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (conv2d3x3_B11_branch_enable_q == 1'b1)
        begin
            c0_exe2917_reg_q <= in_c0_exe2917;
        end
    end

    // out_c0_exe2917(GPOUT,122)
    assign out_c0_exe2917 = c0_exe2917_reg_q;

    // c0_exe29944_reg(REG,21)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe29944_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (conv2d3x3_B11_branch_enable_q == 1'b1)
        begin
            c0_exe29944_reg_q <= in_c0_exe29944;
        end
    end

    // out_c0_exe29944(GPOUT,123)
    assign out_c0_exe29944 = c0_exe29944_reg_q;

    // c0_exe30945_reg(REG,22)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe30945_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (conv2d3x3_B11_branch_enable_q == 1'b1)
        begin
            c0_exe30945_reg_q <= in_c0_exe30945;
        end
    end

    // out_c0_exe30945(GPOUT,124)
    assign out_c0_exe30945 = c0_exe30945_reg_q;

    // c0_exe31946_reg(REG,23)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe31946_reg_q <= $unsigned(1'b0);
        end
        else if (conv2d3x3_B11_branch_enable_q == 1'b1)
        begin
            c0_exe31946_reg_q <= in_c0_exe31946;
        end
    end

    // out_c0_exe31946(GPOUT,125)
    assign out_c0_exe31946 = c0_exe31946_reg_q;

    // c0_exe33948_reg(REG,24)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe33948_reg_q <= $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (conv2d3x3_B11_branch_enable_q == 1'b1)
        begin
            c0_exe33948_reg_q <= in_c0_exe33948;
        end
    end

    // out_c0_exe33948(GPOUT,126)
    assign out_c0_exe33948 = c0_exe33948_reg_q;

    // c0_exe34949_reg(REG,25)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe34949_reg_q <= $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (conv2d3x3_B11_branch_enable_q == 1'b1)
        begin
            c0_exe34949_reg_q <= in_c0_exe34949;
        end
    end

    // out_c0_exe34949(GPOUT,127)
    assign out_c0_exe34949 = c0_exe34949_reg_q;

    // c0_exe35950_reg(REG,26)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe35950_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (conv2d3x3_B11_branch_enable_q == 1'b1)
        begin
            c0_exe35950_reg_q <= $unsigned(in_c0_exe35950);
        end
    end

    // out_c0_exe35950(GPOUT,128)
    assign out_c0_exe35950 = c0_exe35950_reg_q;

    // c0_exe36951_reg(REG,27)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe36951_reg_q <= $unsigned(1'b0);
        end
        else if (conv2d3x3_B11_branch_enable_q == 1'b1)
        begin
            c0_exe36951_reg_q <= in_c0_exe36951;
        end
    end

    // out_c0_exe36951(GPOUT,129)
    assign out_c0_exe36951 = c0_exe36951_reg_q;

    // c0_exe37952_reg(REG,28)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe37952_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (conv2d3x3_B11_branch_enable_q == 1'b1)
        begin
            c0_exe37952_reg_q <= in_c0_exe37952;
        end
    end

    // out_c0_exe37952(GPOUT,130)
    assign out_c0_exe37952 = c0_exe37952_reg_q;

    // c0_exe38953_reg(REG,29)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe38953_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (conv2d3x3_B11_branch_enable_q == 1'b1)
        begin
            c0_exe38953_reg_q <= in_c0_exe38953;
        end
    end

    // out_c0_exe38953(GPOUT,131)
    assign out_c0_exe38953 = c0_exe38953_reg_q;

    // c0_exe3918_reg(REG,30)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe3918_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (conv2d3x3_B11_branch_enable_q == 1'b1)
        begin
            c0_exe3918_reg_q <= in_c0_exe3918;
        end
    end

    // out_c0_exe3918(GPOUT,132)
    assign out_c0_exe3918 = c0_exe3918_reg_q;

    // c0_exe39954_reg(REG,31)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe39954_reg_q <= $unsigned(1'b0);
        end
        else if (conv2d3x3_B11_branch_enable_q == 1'b1)
        begin
            c0_exe39954_reg_q <= in_c0_exe39954;
        end
    end

    // out_c0_exe39954(GPOUT,133)
    assign out_c0_exe39954 = c0_exe39954_reg_q;

    // c0_exe40955_reg(REG,32)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe40955_reg_q <= $unsigned(1'b0);
        end
        else if (conv2d3x3_B11_branch_enable_q == 1'b1)
        begin
            c0_exe40955_reg_q <= in_c0_exe40955;
        end
    end

    // out_c0_exe40955(GPOUT,134)
    assign out_c0_exe40955 = c0_exe40955_reg_q;

    // c0_exe41956_reg(REG,33)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe41956_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (conv2d3x3_B11_branch_enable_q == 1'b1)
        begin
            c0_exe41956_reg_q <= in_c0_exe41956;
        end
    end

    // out_c0_exe41956(GPOUT,135)
    assign out_c0_exe41956 = c0_exe41956_reg_q;

    // c0_exe42957_reg(REG,34)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe42957_reg_q <= $unsigned(1'b0);
        end
        else if (conv2d3x3_B11_branch_enable_q == 1'b1)
        begin
            c0_exe42957_reg_q <= in_c0_exe42957;
        end
    end

    // out_c0_exe42957(GPOUT,136)
    assign out_c0_exe42957 = c0_exe42957_reg_q;

    // c0_exe43958_reg(REG,35)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe43958_reg_q <= $unsigned(1'b0);
        end
        else if (conv2d3x3_B11_branch_enable_q == 1'b1)
        begin
            c0_exe43958_reg_q <= in_c0_exe43958;
        end
    end

    // out_c0_exe43958(GPOUT,137)
    assign out_c0_exe43958 = c0_exe43958_reg_q;

    // c0_exe44959_reg(REG,36)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe44959_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (conv2d3x3_B11_branch_enable_q == 1'b1)
        begin
            c0_exe44959_reg_q <= in_c0_exe44959;
        end
    end

    // out_c0_exe44959(GPOUT,138)
    assign out_c0_exe44959 = c0_exe44959_reg_q;

    // c0_exe45960_reg(REG,37)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe45960_reg_q <= $unsigned(1'b0);
        end
        else if (conv2d3x3_B11_branch_enable_q == 1'b1)
        begin
            c0_exe45960_reg_q <= in_c0_exe45960;
        end
    end

    // out_c0_exe45960(GPOUT,139)
    assign out_c0_exe45960 = c0_exe45960_reg_q;

    // c0_exe46961_reg(REG,38)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe46961_reg_q <= $unsigned(1'b0);
        end
        else if (conv2d3x3_B11_branch_enable_q == 1'b1)
        begin
            c0_exe46961_reg_q <= in_c0_exe46961;
        end
    end

    // out_c0_exe46961(GPOUT,140)
    assign out_c0_exe46961 = c0_exe46961_reg_q;

    // c0_exe47962_reg(REG,39)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe47962_reg_q <= $unsigned(1'b0);
        end
        else if (conv2d3x3_B11_branch_enable_q == 1'b1)
        begin
            c0_exe47962_reg_q <= in_c0_exe47962;
        end
    end

    // out_c0_exe47962(GPOUT,141)
    assign out_c0_exe47962 = c0_exe47962_reg_q;

    // c0_exe48963_reg(REG,40)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe48963_reg_q <= $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (conv2d3x3_B11_branch_enable_q == 1'b1)
        begin
            c0_exe48963_reg_q <= in_c0_exe48963;
        end
    end

    // out_c0_exe48963(GPOUT,142)
    assign out_c0_exe48963 = c0_exe48963_reg_q;

    // c0_exe49964_reg(REG,41)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe49964_reg_q <= $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (conv2d3x3_B11_branch_enable_q == 1'b1)
        begin
            c0_exe49964_reg_q <= in_c0_exe49964;
        end
    end

    // out_c0_exe49964(GPOUT,143)
    assign out_c0_exe49964 = c0_exe49964_reg_q;

    // c0_exe50965_reg(REG,42)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe50965_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (conv2d3x3_B11_branch_enable_q == 1'b1)
        begin
            c0_exe50965_reg_q <= $unsigned(in_c0_exe50965);
        end
    end

    // out_c0_exe50965(GPOUT,144)
    assign out_c0_exe50965 = c0_exe50965_reg_q;

    // c0_exe51966_reg(REG,43)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe51966_reg_q <= $unsigned(1'b0);
        end
        else if (conv2d3x3_B11_branch_enable_q == 1'b1)
        begin
            c0_exe51966_reg_q <= in_c0_exe51966;
        end
    end

    // out_c0_exe51966(GPOUT,145)
    assign out_c0_exe51966 = c0_exe51966_reg_q;

    // c0_exe5920_reg(REG,44)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe5920_reg_q <= $unsigned(1'b0);
        end
        else if (conv2d3x3_B11_branch_enable_q == 1'b1)
        begin
            c0_exe5920_reg_q <= in_c0_exe5920;
        end
    end

    // out_c0_exe5920(GPOUT,146)
    assign out_c0_exe5920 = c0_exe5920_reg_q;

    // c0_exe6921_reg(REG,45)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe6921_reg_q <= $unsigned(1'b0);
        end
        else if (conv2d3x3_B11_branch_enable_q == 1'b1)
        begin
            c0_exe6921_reg_q <= in_c0_exe6921;
        end
    end

    // out_c0_exe6921(GPOUT,147)
    assign out_c0_exe6921 = c0_exe6921_reg_q;

    // c0_exe8923_reg(REG,46)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe8923_reg_q <= $unsigned(1'b0);
        end
        else if (conv2d3x3_B11_branch_enable_q == 1'b1)
        begin
            c0_exe8923_reg_q <= in_c0_exe8923;
        end
    end

    // out_c0_exe8923(GPOUT,148)
    assign out_c0_exe8923 = c0_exe8923_reg_q;

    // c1_exe1983_reg(REG,47)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c1_exe1983_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (conv2d3x3_B11_branch_enable_q == 1'b1)
        begin
            c1_exe1983_reg_q <= $unsigned(in_c1_exe1983);
        end
    end

    // out_c1_exe1983(GPOUT,149)
    assign out_c1_exe1983 = c1_exe1983_reg_q;

    // conv2d3x3_B11_branch_enable_not(LOGICAL,49)
    assign conv2d3x3_B11_branch_enable_not_q = ~ (conv2d3x3_B11_branch_enable_q);

    // out_stall_out(GPOUT,150)
    assign out_stall_out = conv2d3x3_B11_branch_enable_not_q;

    // out_valid_out_0(GPOUT,151)
    assign out_valid_out_0 = valid_0_reg_q;

    // out_valid_out_1(GPOUT,152)
    assign out_valid_out_1 = valid_1_reg_q;

endmodule
