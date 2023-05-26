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

// SystemVerilog created from conv2d1x1_B6_branch
// SystemVerilog created on Wed May 24 11:22:00 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2d1x1_B6_branch (
    input wire [31:0] in_c0_exe10321,
    input wire [0:0] in_c0_exe11322,
    input wire [0:0] in_c0_exe12323,
    input wire [31:0] in_c0_exe13324,
    input wire [31:0] in_c0_exe14325,
    input wire [0:0] in_c0_exe15326,
    input wire [0:0] in_c0_exe16327,
    input wire [0:0] in_c0_exe17328,
    input wire [32:0] in_c0_exe18329,
    input wire [31:0] in_c0_exe19330,
    input wire [31:0] in_c0_exe20331,
    input wire [31:0] in_c0_exe21,
    input wire [0:0] in_c0_exe22,
    input wire [63:0] in_c0_exe2313,
    input wire [0:0] in_c0_exe3314,
    input wire [0:0] in_c0_exe4315,
    input wire [0:0] in_c0_exe5316,
    input wire [31:0] in_c0_exe6317,
    input wire [0:0] in_c0_exe7318,
    input wire [31:0] in_c0_exe8319,
    input wire [31:0] in_c0_exe9320,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [0:0] in_valid_in,
    output wire [31:0] out_c0_exe10321,
    output wire [0:0] out_c0_exe11322,
    output wire [0:0] out_c0_exe12323,
    output wire [31:0] out_c0_exe13324,
    output wire [31:0] out_c0_exe14325,
    output wire [0:0] out_c0_exe15326,
    output wire [0:0] out_c0_exe16327,
    output wire [0:0] out_c0_exe17328,
    output wire [32:0] out_c0_exe18329,
    output wire [31:0] out_c0_exe19330,
    output wire [31:0] out_c0_exe20331,
    output wire [31:0] out_c0_exe21,
    output wire [0:0] out_c0_exe22,
    output wire [63:0] out_c0_exe2313,
    output wire [0:0] out_c0_exe3314,
    output wire [0:0] out_c0_exe4315,
    output wire [31:0] out_c0_exe6317,
    output wire [0:0] out_c0_exe7318,
    output wire [31:0] out_c0_exe8319,
    output wire [31:0] out_c0_exe9320,
    output wire [0:0] out_stall_out,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    reg [31:0] c0_exe10321_reg_q;
    reg [0:0] c0_exe11322_reg_q;
    reg [0:0] c0_exe12323_reg_q;
    reg [31:0] c0_exe13324_reg_q;
    reg [31:0] c0_exe14325_reg_q;
    reg [0:0] c0_exe15326_reg_q;
    reg [0:0] c0_exe16327_reg_q;
    reg [0:0] c0_exe17328_reg_q;
    reg [32:0] c0_exe18329_reg_q;
    reg [31:0] c0_exe19330_reg_q;
    reg [31:0] c0_exe20331_reg_q;
    reg [31:0] c0_exe21_reg_q;
    reg [0:0] c0_exe22_reg_q;
    reg [63:0] c0_exe2313_reg_q;
    reg [0:0] c0_exe3314_reg_q;
    reg [0:0] c0_exe4315_reg_q;
    wire [0:0] c0_exe5316_cmp_q;
    reg [31:0] c0_exe6317_reg_q;
    reg [0:0] c0_exe7318_reg_q;
    reg [31:0] c0_exe8319_reg_q;
    reg [31:0] c0_exe9320_reg_q;
    wire [0:0] conv2d1x1_B6_branch_enable_q;
    wire [0:0] conv2d1x1_B6_branch_enable_not_q;
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

    // not_stall_in_1(LOGICAL,50)
    assign not_stall_in_1_q = ~ (in_stall_in_1);

    // c0_exe5316_cmp(LOGICAL,18)
    assign c0_exe5316_cmp_q = ~ (in_c0_exe5316);

    // valid_out_1_and(LOGICAL,81)
    assign valid_out_1_and_q = in_valid_in & c0_exe5316_cmp_q;

    // valid_1_reg(REG,79)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_1_reg_q <= $unsigned(1'b0);
        end
        else if (conv2d1x1_B6_branch_enable_q == 1'b1)
        begin
            valid_1_reg_q <= valid_out_1_and_q;
        end
    end

    // not_valid_1(LOGICAL,52)
    assign not_valid_1_q = ~ (valid_1_reg_q);

    // not_valid_or_not_stall_1(LOGICAL,54)
    assign not_valid_or_not_stall_1_q = not_valid_1_q | not_stall_in_1_q;

    // not_stall_in_0(LOGICAL,49)
    assign not_stall_in_0_q = ~ (in_stall_in_0);

    // valid_out_0_and(LOGICAL,80)
    assign valid_out_0_and_q = in_valid_in & in_c0_exe5316;

    // valid_0_reg(REG,78)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_0_reg_q <= $unsigned(1'b0);
        end
        else if (conv2d1x1_B6_branch_enable_q == 1'b1)
        begin
            valid_0_reg_q <= valid_out_0_and_q;
        end
    end

    // not_valid_0(LOGICAL,51)
    assign not_valid_0_q = ~ (valid_0_reg_q);

    // not_valid_or_not_stall_0(LOGICAL,53)
    assign not_valid_or_not_stall_0_q = not_valid_0_q | not_stall_in_0_q;

    // conv2d1x1_B6_branch_enable(LOGICAL,23)
    assign conv2d1x1_B6_branch_enable_q = not_valid_or_not_stall_0_q & not_valid_or_not_stall_1_q;

    // c0_exe10321_reg(REG,2)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe10321_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (conv2d1x1_B6_branch_enable_q == 1'b1)
        begin
            c0_exe10321_reg_q <= in_c0_exe10321;
        end
    end

    // out_c0_exe10321(GPOUT,55)
    assign out_c0_exe10321 = c0_exe10321_reg_q;

    // c0_exe11322_reg(REG,3)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe11322_reg_q <= $unsigned(1'b0);
        end
        else if (conv2d1x1_B6_branch_enable_q == 1'b1)
        begin
            c0_exe11322_reg_q <= in_c0_exe11322;
        end
    end

    // out_c0_exe11322(GPOUT,56)
    assign out_c0_exe11322 = c0_exe11322_reg_q;

    // c0_exe12323_reg(REG,4)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe12323_reg_q <= $unsigned(1'b0);
        end
        else if (conv2d1x1_B6_branch_enable_q == 1'b1)
        begin
            c0_exe12323_reg_q <= in_c0_exe12323;
        end
    end

    // out_c0_exe12323(GPOUT,57)
    assign out_c0_exe12323 = c0_exe12323_reg_q;

    // c0_exe13324_reg(REG,5)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe13324_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (conv2d1x1_B6_branch_enable_q == 1'b1)
        begin
            c0_exe13324_reg_q <= in_c0_exe13324;
        end
    end

    // out_c0_exe13324(GPOUT,58)
    assign out_c0_exe13324 = c0_exe13324_reg_q;

    // c0_exe14325_reg(REG,6)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe14325_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (conv2d1x1_B6_branch_enable_q == 1'b1)
        begin
            c0_exe14325_reg_q <= in_c0_exe14325;
        end
    end

    // out_c0_exe14325(GPOUT,59)
    assign out_c0_exe14325 = c0_exe14325_reg_q;

    // c0_exe15326_reg(REG,7)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe15326_reg_q <= $unsigned(1'b0);
        end
        else if (conv2d1x1_B6_branch_enable_q == 1'b1)
        begin
            c0_exe15326_reg_q <= in_c0_exe15326;
        end
    end

    // out_c0_exe15326(GPOUT,60)
    assign out_c0_exe15326 = c0_exe15326_reg_q;

    // c0_exe16327_reg(REG,8)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe16327_reg_q <= $unsigned(1'b0);
        end
        else if (conv2d1x1_B6_branch_enable_q == 1'b1)
        begin
            c0_exe16327_reg_q <= in_c0_exe16327;
        end
    end

    // out_c0_exe16327(GPOUT,61)
    assign out_c0_exe16327 = c0_exe16327_reg_q;

    // c0_exe17328_reg(REG,9)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe17328_reg_q <= $unsigned(1'b0);
        end
        else if (conv2d1x1_B6_branch_enable_q == 1'b1)
        begin
            c0_exe17328_reg_q <= in_c0_exe17328;
        end
    end

    // out_c0_exe17328(GPOUT,62)
    assign out_c0_exe17328 = c0_exe17328_reg_q;

    // c0_exe18329_reg(REG,10)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe18329_reg_q <= $unsigned(33'b000000000000000000000000000000000);
        end
        else if (conv2d1x1_B6_branch_enable_q == 1'b1)
        begin
            c0_exe18329_reg_q <= in_c0_exe18329;
        end
    end

    // out_c0_exe18329(GPOUT,63)
    assign out_c0_exe18329 = c0_exe18329_reg_q;

    // c0_exe19330_reg(REG,11)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe19330_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (conv2d1x1_B6_branch_enable_q == 1'b1)
        begin
            c0_exe19330_reg_q <= $unsigned(in_c0_exe19330);
        end
    end

    // out_c0_exe19330(GPOUT,64)
    assign out_c0_exe19330 = c0_exe19330_reg_q;

    // c0_exe20331_reg(REG,12)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe20331_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (conv2d1x1_B6_branch_enable_q == 1'b1)
        begin
            c0_exe20331_reg_q <= in_c0_exe20331;
        end
    end

    // out_c0_exe20331(GPOUT,65)
    assign out_c0_exe20331 = c0_exe20331_reg_q;

    // c0_exe21_reg(REG,13)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe21_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (conv2d1x1_B6_branch_enable_q == 1'b1)
        begin
            c0_exe21_reg_q <= in_c0_exe21;
        end
    end

    // out_c0_exe21(GPOUT,66)
    assign out_c0_exe21 = c0_exe21_reg_q;

    // c0_exe22_reg(REG,14)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe22_reg_q <= $unsigned(1'b0);
        end
        else if (conv2d1x1_B6_branch_enable_q == 1'b1)
        begin
            c0_exe22_reg_q <= in_c0_exe22;
        end
    end

    // out_c0_exe22(GPOUT,67)
    assign out_c0_exe22 = c0_exe22_reg_q;

    // c0_exe2313_reg(REG,15)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe2313_reg_q <= $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (conv2d1x1_B6_branch_enable_q == 1'b1)
        begin
            c0_exe2313_reg_q <= in_c0_exe2313;
        end
    end

    // out_c0_exe2313(GPOUT,68)
    assign out_c0_exe2313 = c0_exe2313_reg_q;

    // c0_exe3314_reg(REG,16)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe3314_reg_q <= $unsigned(1'b0);
        end
        else if (conv2d1x1_B6_branch_enable_q == 1'b1)
        begin
            c0_exe3314_reg_q <= in_c0_exe3314;
        end
    end

    // out_c0_exe3314(GPOUT,69)
    assign out_c0_exe3314 = c0_exe3314_reg_q;

    // c0_exe4315_reg(REG,17)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe4315_reg_q <= $unsigned(1'b0);
        end
        else if (conv2d1x1_B6_branch_enable_q == 1'b1)
        begin
            c0_exe4315_reg_q <= in_c0_exe4315;
        end
    end

    // out_c0_exe4315(GPOUT,70)
    assign out_c0_exe4315 = c0_exe4315_reg_q;

    // c0_exe6317_reg(REG,19)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe6317_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (conv2d1x1_B6_branch_enable_q == 1'b1)
        begin
            c0_exe6317_reg_q <= in_c0_exe6317;
        end
    end

    // out_c0_exe6317(GPOUT,71)
    assign out_c0_exe6317 = c0_exe6317_reg_q;

    // c0_exe7318_reg(REG,20)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe7318_reg_q <= $unsigned(1'b0);
        end
        else if (conv2d1x1_B6_branch_enable_q == 1'b1)
        begin
            c0_exe7318_reg_q <= in_c0_exe7318;
        end
    end

    // out_c0_exe7318(GPOUT,72)
    assign out_c0_exe7318 = c0_exe7318_reg_q;

    // c0_exe8319_reg(REG,21)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe8319_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (conv2d1x1_B6_branch_enable_q == 1'b1)
        begin
            c0_exe8319_reg_q <= $unsigned(in_c0_exe8319);
        end
    end

    // out_c0_exe8319(GPOUT,73)
    assign out_c0_exe8319 = c0_exe8319_reg_q;

    // c0_exe9320_reg(REG,22)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe9320_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (conv2d1x1_B6_branch_enable_q == 1'b1)
        begin
            c0_exe9320_reg_q <= in_c0_exe9320;
        end
    end

    // out_c0_exe9320(GPOUT,74)
    assign out_c0_exe9320 = c0_exe9320_reg_q;

    // conv2d1x1_B6_branch_enable_not(LOGICAL,24)
    assign conv2d1x1_B6_branch_enable_not_q = ~ (conv2d1x1_B6_branch_enable_q);

    // out_stall_out(GPOUT,75)
    assign out_stall_out = conv2d1x1_B6_branch_enable_not_q;

    // out_valid_out_0(GPOUT,76)
    assign out_valid_out_0 = valid_0_reg_q;

    // out_valid_out_1(GPOUT,77)
    assign out_valid_out_1 = valid_1_reg_q;

endmodule
