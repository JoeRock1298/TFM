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
// SystemVerilog created on Wed May 24 12:36:13 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2d1x1_B6_branch (
    input wire [31:0] in_c0_exe10375,
    input wire [0:0] in_c0_exe11376,
    input wire [0:0] in_c0_exe12377,
    input wire [31:0] in_c0_exe13378,
    input wire [31:0] in_c0_exe14379,
    input wire [0:0] in_c0_exe15380,
    input wire [0:0] in_c0_exe16381,
    input wire [0:0] in_c0_exe17382,
    input wire [32:0] in_c0_exe18383,
    input wire [31:0] in_c0_exe19384,
    input wire [31:0] in_c0_exe20385,
    input wire [31:0] in_c0_exe21386,
    input wire [0:0] in_c0_exe22387,
    input wire [63:0] in_c0_exe2367,
    input wire [0:0] in_c0_exe3368,
    input wire [0:0] in_c0_exe4369,
    input wire [0:0] in_c0_exe5370,
    input wire [31:0] in_c0_exe6371,
    input wire [0:0] in_c0_exe7372,
    input wire [31:0] in_c0_exe8373,
    input wire [31:0] in_c0_exe9374,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [0:0] in_valid_in,
    output wire [31:0] out_c0_exe10375,
    output wire [0:0] out_c0_exe11376,
    output wire [0:0] out_c0_exe12377,
    output wire [31:0] out_c0_exe13378,
    output wire [31:0] out_c0_exe14379,
    output wire [0:0] out_c0_exe15380,
    output wire [0:0] out_c0_exe16381,
    output wire [0:0] out_c0_exe17382,
    output wire [32:0] out_c0_exe18383,
    output wire [31:0] out_c0_exe19384,
    output wire [31:0] out_c0_exe20385,
    output wire [31:0] out_c0_exe21386,
    output wire [0:0] out_c0_exe22387,
    output wire [63:0] out_c0_exe2367,
    output wire [0:0] out_c0_exe3368,
    output wire [0:0] out_c0_exe4369,
    output wire [31:0] out_c0_exe6371,
    output wire [0:0] out_c0_exe7372,
    output wire [31:0] out_c0_exe8373,
    output wire [31:0] out_c0_exe9374,
    output wire [0:0] out_stall_out,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    reg [31:0] c0_exe10375_reg_q;
    reg [0:0] c0_exe11376_reg_q;
    reg [0:0] c0_exe12377_reg_q;
    reg [31:0] c0_exe13378_reg_q;
    reg [31:0] c0_exe14379_reg_q;
    reg [0:0] c0_exe15380_reg_q;
    reg [0:0] c0_exe16381_reg_q;
    reg [0:0] c0_exe17382_reg_q;
    reg [32:0] c0_exe18383_reg_q;
    reg [31:0] c0_exe19384_reg_q;
    reg [31:0] c0_exe20385_reg_q;
    reg [31:0] c0_exe21386_reg_q;
    reg [0:0] c0_exe22387_reg_q;
    reg [63:0] c0_exe2367_reg_q;
    reg [0:0] c0_exe3368_reg_q;
    reg [0:0] c0_exe4369_reg_q;
    wire [0:0] c0_exe5370_cmp_q;
    reg [31:0] c0_exe6371_reg_q;
    reg [0:0] c0_exe7372_reg_q;
    reg [31:0] c0_exe8373_reg_q;
    reg [31:0] c0_exe9374_reg_q;
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

    // c0_exe5370_cmp(LOGICAL,18)
    assign c0_exe5370_cmp_q = ~ (in_c0_exe5370);

    // valid_out_1_and(LOGICAL,81)
    assign valid_out_1_and_q = in_valid_in & c0_exe5370_cmp_q;

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
    assign valid_out_0_and_q = in_valid_in & in_c0_exe5370;

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

    // c0_exe10375_reg(REG,2)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe10375_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (conv2d1x1_B6_branch_enable_q == 1'b1)
        begin
            c0_exe10375_reg_q <= in_c0_exe10375;
        end
    end

    // out_c0_exe10375(GPOUT,55)
    assign out_c0_exe10375 = c0_exe10375_reg_q;

    // c0_exe11376_reg(REG,3)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe11376_reg_q <= $unsigned(1'b0);
        end
        else if (conv2d1x1_B6_branch_enable_q == 1'b1)
        begin
            c0_exe11376_reg_q <= in_c0_exe11376;
        end
    end

    // out_c0_exe11376(GPOUT,56)
    assign out_c0_exe11376 = c0_exe11376_reg_q;

    // c0_exe12377_reg(REG,4)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe12377_reg_q <= $unsigned(1'b0);
        end
        else if (conv2d1x1_B6_branch_enable_q == 1'b1)
        begin
            c0_exe12377_reg_q <= in_c0_exe12377;
        end
    end

    // out_c0_exe12377(GPOUT,57)
    assign out_c0_exe12377 = c0_exe12377_reg_q;

    // c0_exe13378_reg(REG,5)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe13378_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (conv2d1x1_B6_branch_enable_q == 1'b1)
        begin
            c0_exe13378_reg_q <= in_c0_exe13378;
        end
    end

    // out_c0_exe13378(GPOUT,58)
    assign out_c0_exe13378 = c0_exe13378_reg_q;

    // c0_exe14379_reg(REG,6)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe14379_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (conv2d1x1_B6_branch_enable_q == 1'b1)
        begin
            c0_exe14379_reg_q <= in_c0_exe14379;
        end
    end

    // out_c0_exe14379(GPOUT,59)
    assign out_c0_exe14379 = c0_exe14379_reg_q;

    // c0_exe15380_reg(REG,7)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe15380_reg_q <= $unsigned(1'b0);
        end
        else if (conv2d1x1_B6_branch_enable_q == 1'b1)
        begin
            c0_exe15380_reg_q <= in_c0_exe15380;
        end
    end

    // out_c0_exe15380(GPOUT,60)
    assign out_c0_exe15380 = c0_exe15380_reg_q;

    // c0_exe16381_reg(REG,8)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe16381_reg_q <= $unsigned(1'b0);
        end
        else if (conv2d1x1_B6_branch_enable_q == 1'b1)
        begin
            c0_exe16381_reg_q <= in_c0_exe16381;
        end
    end

    // out_c0_exe16381(GPOUT,61)
    assign out_c0_exe16381 = c0_exe16381_reg_q;

    // c0_exe17382_reg(REG,9)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe17382_reg_q <= $unsigned(1'b0);
        end
        else if (conv2d1x1_B6_branch_enable_q == 1'b1)
        begin
            c0_exe17382_reg_q <= in_c0_exe17382;
        end
    end

    // out_c0_exe17382(GPOUT,62)
    assign out_c0_exe17382 = c0_exe17382_reg_q;

    // c0_exe18383_reg(REG,10)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe18383_reg_q <= $unsigned(33'b000000000000000000000000000000000);
        end
        else if (conv2d1x1_B6_branch_enable_q == 1'b1)
        begin
            c0_exe18383_reg_q <= in_c0_exe18383;
        end
    end

    // out_c0_exe18383(GPOUT,63)
    assign out_c0_exe18383 = c0_exe18383_reg_q;

    // c0_exe19384_reg(REG,11)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe19384_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (conv2d1x1_B6_branch_enable_q == 1'b1)
        begin
            c0_exe19384_reg_q <= $unsigned(in_c0_exe19384);
        end
    end

    // out_c0_exe19384(GPOUT,64)
    assign out_c0_exe19384 = c0_exe19384_reg_q;

    // c0_exe20385_reg(REG,12)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe20385_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (conv2d1x1_B6_branch_enable_q == 1'b1)
        begin
            c0_exe20385_reg_q <= in_c0_exe20385;
        end
    end

    // out_c0_exe20385(GPOUT,65)
    assign out_c0_exe20385 = c0_exe20385_reg_q;

    // c0_exe21386_reg(REG,13)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe21386_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (conv2d1x1_B6_branch_enable_q == 1'b1)
        begin
            c0_exe21386_reg_q <= in_c0_exe21386;
        end
    end

    // out_c0_exe21386(GPOUT,66)
    assign out_c0_exe21386 = c0_exe21386_reg_q;

    // c0_exe22387_reg(REG,14)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe22387_reg_q <= $unsigned(1'b0);
        end
        else if (conv2d1x1_B6_branch_enable_q == 1'b1)
        begin
            c0_exe22387_reg_q <= in_c0_exe22387;
        end
    end

    // out_c0_exe22387(GPOUT,67)
    assign out_c0_exe22387 = c0_exe22387_reg_q;

    // c0_exe2367_reg(REG,15)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe2367_reg_q <= $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (conv2d1x1_B6_branch_enable_q == 1'b1)
        begin
            c0_exe2367_reg_q <= in_c0_exe2367;
        end
    end

    // out_c0_exe2367(GPOUT,68)
    assign out_c0_exe2367 = c0_exe2367_reg_q;

    // c0_exe3368_reg(REG,16)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe3368_reg_q <= $unsigned(1'b0);
        end
        else if (conv2d1x1_B6_branch_enable_q == 1'b1)
        begin
            c0_exe3368_reg_q <= in_c0_exe3368;
        end
    end

    // out_c0_exe3368(GPOUT,69)
    assign out_c0_exe3368 = c0_exe3368_reg_q;

    // c0_exe4369_reg(REG,17)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe4369_reg_q <= $unsigned(1'b0);
        end
        else if (conv2d1x1_B6_branch_enable_q == 1'b1)
        begin
            c0_exe4369_reg_q <= in_c0_exe4369;
        end
    end

    // out_c0_exe4369(GPOUT,70)
    assign out_c0_exe4369 = c0_exe4369_reg_q;

    // c0_exe6371_reg(REG,19)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe6371_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (conv2d1x1_B6_branch_enable_q == 1'b1)
        begin
            c0_exe6371_reg_q <= in_c0_exe6371;
        end
    end

    // out_c0_exe6371(GPOUT,71)
    assign out_c0_exe6371 = c0_exe6371_reg_q;

    // c0_exe7372_reg(REG,20)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe7372_reg_q <= $unsigned(1'b0);
        end
        else if (conv2d1x1_B6_branch_enable_q == 1'b1)
        begin
            c0_exe7372_reg_q <= in_c0_exe7372;
        end
    end

    // out_c0_exe7372(GPOUT,72)
    assign out_c0_exe7372 = c0_exe7372_reg_q;

    // c0_exe8373_reg(REG,21)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe8373_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (conv2d1x1_B6_branch_enable_q == 1'b1)
        begin
            c0_exe8373_reg_q <= $unsigned(in_c0_exe8373);
        end
    end

    // out_c0_exe8373(GPOUT,73)
    assign out_c0_exe8373 = c0_exe8373_reg_q;

    // c0_exe9374_reg(REG,22)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe9374_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (conv2d1x1_B6_branch_enable_q == 1'b1)
        begin
            c0_exe9374_reg_q <= in_c0_exe9374;
        end
    end

    // out_c0_exe9374(GPOUT,74)
    assign out_c0_exe9374 = c0_exe9374_reg_q;

    // conv2d1x1_B6_branch_enable_not(LOGICAL,24)
    assign conv2d1x1_B6_branch_enable_not_q = ~ (conv2d1x1_B6_branch_enable_q);

    // out_stall_out(GPOUT,75)
    assign out_stall_out = conv2d1x1_B6_branch_enable_not_q;

    // out_valid_out_0(GPOUT,76)
    assign out_valid_out_0 = valid_0_reg_q;

    // out_valid_out_1(GPOUT,77)
    assign out_valid_out_1 = valid_1_reg_q;

endmodule
