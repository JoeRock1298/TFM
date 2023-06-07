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

// SystemVerilog created from conv2d3x3_B14_branch
// SystemVerilog created on Tue Jun  6 18:48:20 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2d3x3_B14_branch (
    input wire [63:0] in_c0_exe11114897,
    input wire [63:0] in_c0_exe12114998,
    input wire [31:0] in_c0_exe131150100,
    input wire [31:0] in_c0_exe141151101,
    input wire [0:0] in_c0_exe151152105,
    input wire [0:0] in_c0_exe161153106,
    input wire [31:0] in_c0_exe171154107,
    input wire [31:0] in_c0_exe181155109,
    input wire [31:0] in_c0_exe191156110,
    input wire [0:0] in_c0_exe201157111,
    input wire [0:0] in_c0_exe211158112,
    input wire [31:0] in_c0_exe221159113,
    input wire [0:0] in_c0_exe231160114,
    input wire [0:0] in_c0_exe241161115,
    input wire [31:0] in_c0_exe251162116,
    input wire [0:0] in_c0_exe261163119,
    input wire [0:0] in_c0_exe271164120,
    input wire [31:0] in_c0_exe281165121,
    input wire [31:0] in_c0_exe291166122,
    input wire [0:0] in_c0_exe301167124,
    input wire [0:0] in_c0_exe311168125,
    input wire [0:0] in_c0_exe3114091,
    input wire [31:0] in_c0_exe321169127,
    input wire [31:0] in_c0_exe331170128,
    input wire [31:0] in_c0_exe341171129,
    input wire [0:0] in_c0_exe351172130,
    input wire [63:0] in_c0_exe371174131,
    input wire [63:0] in_c0_exe381175132,
    input wire [31:0] in_c0_exe391176133,
    input wire [0:0] in_c0_exe401177134,
    input wire [31:0] in_c0_exe411178135,
    input wire [0:0] in_c0_exe4114192,
    input wire [31:0] in_c0_exe421179136,
    input wire [0:0] in_c0_exe431180137,
    input wire [0:0] in_c0_exe441181138,
    input wire [31:0] in_c0_exe451182139,
    input wire [0:0] in_c0_exe461183140,
    input wire [0:0] in_c0_exe471184141,
    input wire [31:0] in_c0_exe481185142,
    input wire [0:0] in_c0_exe491186143,
    input wire [0:0] in_c0_exe501187144,
    input wire [0:0] in_c0_exe511188145,
    input wire [63:0] in_c0_exe521189146,
    input wire [63:0] in_c0_exe53147,
    input wire [31:0] in_c0_exe54148,
    input wire [0:0] in_c0_exe55149,
    input wire [0:0] in_c0_exe6114394,
    input wire [63:0] in_c0_exe8114595,
    input wire [31:0] in_c1_exe11205151,
    input wire [31:0] in_c1_exe2152,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [0:0] in_valid_in,
    output wire [63:0] out_c0_exe11114897,
    output wire [63:0] out_c0_exe12114998,
    output wire [31:0] out_c0_exe131150100,
    output wire [31:0] out_c0_exe141151101,
    output wire [0:0] out_c0_exe151152105,
    output wire [0:0] out_c0_exe161153106,
    output wire [31:0] out_c0_exe171154107,
    output wire [31:0] out_c0_exe181155109,
    output wire [31:0] out_c0_exe191156110,
    output wire [0:0] out_c0_exe201157111,
    output wire [0:0] out_c0_exe211158112,
    output wire [31:0] out_c0_exe221159113,
    output wire [0:0] out_c0_exe231160114,
    output wire [0:0] out_c0_exe241161115,
    output wire [31:0] out_c0_exe251162116,
    output wire [0:0] out_c0_exe261163119,
    output wire [0:0] out_c0_exe271164120,
    output wire [31:0] out_c0_exe281165121,
    output wire [31:0] out_c0_exe291166122,
    output wire [0:0] out_c0_exe301167124,
    output wire [0:0] out_c0_exe311168125,
    output wire [0:0] out_c0_exe3114091,
    output wire [31:0] out_c0_exe321169127,
    output wire [31:0] out_c0_exe331170128,
    output wire [31:0] out_c0_exe341171129,
    output wire [63:0] out_c0_exe371174131,
    output wire [63:0] out_c0_exe381175132,
    output wire [31:0] out_c0_exe391176133,
    output wire [0:0] out_c0_exe401177134,
    output wire [31:0] out_c0_exe411178135,
    output wire [0:0] out_c0_exe4114192,
    output wire [31:0] out_c0_exe421179136,
    output wire [0:0] out_c0_exe431180137,
    output wire [0:0] out_c0_exe441181138,
    output wire [31:0] out_c0_exe451182139,
    output wire [0:0] out_c0_exe461183140,
    output wire [0:0] out_c0_exe471184141,
    output wire [31:0] out_c0_exe481185142,
    output wire [0:0] out_c0_exe491186143,
    output wire [0:0] out_c0_exe501187144,
    output wire [0:0] out_c0_exe511188145,
    output wire [63:0] out_c0_exe521189146,
    output wire [63:0] out_c0_exe53147,
    output wire [31:0] out_c0_exe54148,
    output wire [0:0] out_c0_exe55149,
    output wire [0:0] out_c0_exe6114394,
    output wire [63:0] out_c0_exe8114595,
    output wire [31:0] out_c1_exe11205151,
    output wire [31:0] out_c1_exe2152,
    output wire [0:0] out_stall_out,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    reg [63:0] c0_exe11114897_reg_q;
    reg [63:0] c0_exe12114998_reg_q;
    reg [31:0] c0_exe131150100_reg_q;
    reg [31:0] c0_exe141151101_reg_q;
    reg [0:0] c0_exe151152105_reg_q;
    reg [0:0] c0_exe161153106_reg_q;
    reg [31:0] c0_exe171154107_reg_q;
    reg [31:0] c0_exe181155109_reg_q;
    reg [31:0] c0_exe191156110_reg_q;
    reg [0:0] c0_exe201157111_reg_q;
    reg [0:0] c0_exe211158112_reg_q;
    reg [31:0] c0_exe221159113_reg_q;
    reg [0:0] c0_exe231160114_reg_q;
    reg [0:0] c0_exe241161115_reg_q;
    reg [31:0] c0_exe251162116_reg_q;
    reg [0:0] c0_exe261163119_reg_q;
    reg [0:0] c0_exe271164120_reg_q;
    reg [31:0] c0_exe281165121_reg_q;
    reg [31:0] c0_exe291166122_reg_q;
    reg [0:0] c0_exe301167124_reg_q;
    reg [0:0] c0_exe311168125_reg_q;
    reg [0:0] c0_exe3114091_reg_q;
    reg [31:0] c0_exe321169127_reg_q;
    reg [31:0] c0_exe331170128_reg_q;
    reg [31:0] c0_exe341171129_reg_q;
    wire [0:0] c0_exe351172130_cmp_q;
    reg [63:0] c0_exe371174131_reg_q;
    reg [63:0] c0_exe381175132_reg_q;
    reg [31:0] c0_exe391176133_reg_q;
    reg [0:0] c0_exe401177134_reg_q;
    reg [31:0] c0_exe411178135_reg_q;
    reg [0:0] c0_exe4114192_reg_q;
    reg [31:0] c0_exe421179136_reg_q;
    reg [0:0] c0_exe431180137_reg_q;
    reg [0:0] c0_exe441181138_reg_q;
    reg [31:0] c0_exe451182139_reg_q;
    reg [0:0] c0_exe461183140_reg_q;
    reg [0:0] c0_exe471184141_reg_q;
    reg [31:0] c0_exe481185142_reg_q;
    reg [0:0] c0_exe491186143_reg_q;
    reg [0:0] c0_exe501187144_reg_q;
    reg [0:0] c0_exe511188145_reg_q;
    reg [63:0] c0_exe521189146_reg_q;
    reg [63:0] c0_exe53147_reg_q;
    reg [31:0] c0_exe54148_reg_q;
    reg [0:0] c0_exe55149_reg_q;
    reg [0:0] c0_exe6114394_reg_q;
    reg [63:0] c0_exe8114595_reg_q;
    reg [31:0] c1_exe11205151_reg_q;
    reg [31:0] c1_exe2152_reg_q;
    wire [0:0] conv2d3x3_B14_branch_enable_q;
    wire [0:0] conv2d3x3_B14_branch_enable_not_q;
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

    // not_stall_in_1(LOGICAL,108)
    assign not_stall_in_1_q = ~ (in_stall_in_1);

    // c0_exe351172130_cmp(LOGICAL,27)
    assign c0_exe351172130_cmp_q = ~ (in_c0_exe351172130);

    // valid_out_1_and(LOGICAL,168)
    assign valid_out_1_and_q = in_valid_in & c0_exe351172130_cmp_q;

    // valid_1_reg(REG,166)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_1_reg_q <= $unsigned(1'b0);
        end
        else if (conv2d3x3_B14_branch_enable_q == 1'b1)
        begin
            valid_1_reg_q <= valid_out_1_and_q;
        end
    end

    // not_valid_1(LOGICAL,110)
    assign not_valid_1_q = ~ (valid_1_reg_q);

    // not_valid_or_not_stall_1(LOGICAL,112)
    assign not_valid_or_not_stall_1_q = not_valid_1_q | not_stall_in_1_q;

    // not_stall_in_0(LOGICAL,107)
    assign not_stall_in_0_q = ~ (in_stall_in_0);

    // valid_out_0_and(LOGICAL,167)
    assign valid_out_0_and_q = in_valid_in & in_c0_exe351172130;

    // valid_0_reg(REG,165)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_0_reg_q <= $unsigned(1'b0);
        end
        else if (conv2d3x3_B14_branch_enable_q == 1'b1)
        begin
            valid_0_reg_q <= valid_out_0_and_q;
        end
    end

    // not_valid_0(LOGICAL,109)
    assign not_valid_0_q = ~ (valid_0_reg_q);

    // not_valid_or_not_stall_0(LOGICAL,111)
    assign not_valid_or_not_stall_0_q = not_valid_0_q | not_stall_in_0_q;

    // conv2d3x3_B14_branch_enable(LOGICAL,52)
    assign conv2d3x3_B14_branch_enable_q = not_valid_or_not_stall_0_q & not_valid_or_not_stall_1_q;

    // c0_exe11114897_reg(REG,2)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe11114897_reg_q <= $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (conv2d3x3_B14_branch_enable_q == 1'b1)
        begin
            c0_exe11114897_reg_q <= in_c0_exe11114897;
        end
    end

    // out_c0_exe11114897(GPOUT,113)
    assign out_c0_exe11114897 = c0_exe11114897_reg_q;

    // c0_exe12114998_reg(REG,3)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe12114998_reg_q <= $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (conv2d3x3_B14_branch_enable_q == 1'b1)
        begin
            c0_exe12114998_reg_q <= in_c0_exe12114998;
        end
    end

    // out_c0_exe12114998(GPOUT,114)
    assign out_c0_exe12114998 = c0_exe12114998_reg_q;

    // c0_exe131150100_reg(REG,4)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe131150100_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (conv2d3x3_B14_branch_enable_q == 1'b1)
        begin
            c0_exe131150100_reg_q <= $unsigned(in_c0_exe131150100);
        end
    end

    // out_c0_exe131150100(GPOUT,115)
    assign out_c0_exe131150100 = c0_exe131150100_reg_q;

    // c0_exe141151101_reg(REG,5)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe141151101_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (conv2d3x3_B14_branch_enable_q == 1'b1)
        begin
            c0_exe141151101_reg_q <= $unsigned(in_c0_exe141151101);
        end
    end

    // out_c0_exe141151101(GPOUT,116)
    assign out_c0_exe141151101 = c0_exe141151101_reg_q;

    // c0_exe151152105_reg(REG,6)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe151152105_reg_q <= $unsigned(1'b0);
        end
        else if (conv2d3x3_B14_branch_enable_q == 1'b1)
        begin
            c0_exe151152105_reg_q <= in_c0_exe151152105;
        end
    end

    // out_c0_exe151152105(GPOUT,117)
    assign out_c0_exe151152105 = c0_exe151152105_reg_q;

    // c0_exe161153106_reg(REG,7)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe161153106_reg_q <= $unsigned(1'b0);
        end
        else if (conv2d3x3_B14_branch_enable_q == 1'b1)
        begin
            c0_exe161153106_reg_q <= in_c0_exe161153106;
        end
    end

    // out_c0_exe161153106(GPOUT,118)
    assign out_c0_exe161153106 = c0_exe161153106_reg_q;

    // c0_exe171154107_reg(REG,8)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe171154107_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (conv2d3x3_B14_branch_enable_q == 1'b1)
        begin
            c0_exe171154107_reg_q <= in_c0_exe171154107;
        end
    end

    // out_c0_exe171154107(GPOUT,119)
    assign out_c0_exe171154107 = c0_exe171154107_reg_q;

    // c0_exe181155109_reg(REG,9)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe181155109_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (conv2d3x3_B14_branch_enable_q == 1'b1)
        begin
            c0_exe181155109_reg_q <= in_c0_exe181155109;
        end
    end

    // out_c0_exe181155109(GPOUT,120)
    assign out_c0_exe181155109 = c0_exe181155109_reg_q;

    // c0_exe191156110_reg(REG,10)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe191156110_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (conv2d3x3_B14_branch_enable_q == 1'b1)
        begin
            c0_exe191156110_reg_q <= in_c0_exe191156110;
        end
    end

    // out_c0_exe191156110(GPOUT,121)
    assign out_c0_exe191156110 = c0_exe191156110_reg_q;

    // c0_exe201157111_reg(REG,11)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe201157111_reg_q <= $unsigned(1'b0);
        end
        else if (conv2d3x3_B14_branch_enable_q == 1'b1)
        begin
            c0_exe201157111_reg_q <= in_c0_exe201157111;
        end
    end

    // out_c0_exe201157111(GPOUT,122)
    assign out_c0_exe201157111 = c0_exe201157111_reg_q;

    // c0_exe211158112_reg(REG,12)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe211158112_reg_q <= $unsigned(1'b0);
        end
        else if (conv2d3x3_B14_branch_enable_q == 1'b1)
        begin
            c0_exe211158112_reg_q <= in_c0_exe211158112;
        end
    end

    // out_c0_exe211158112(GPOUT,123)
    assign out_c0_exe211158112 = c0_exe211158112_reg_q;

    // c0_exe221159113_reg(REG,13)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe221159113_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (conv2d3x3_B14_branch_enable_q == 1'b1)
        begin
            c0_exe221159113_reg_q <= in_c0_exe221159113;
        end
    end

    // out_c0_exe221159113(GPOUT,124)
    assign out_c0_exe221159113 = c0_exe221159113_reg_q;

    // c0_exe231160114_reg(REG,14)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe231160114_reg_q <= $unsigned(1'b0);
        end
        else if (conv2d3x3_B14_branch_enable_q == 1'b1)
        begin
            c0_exe231160114_reg_q <= in_c0_exe231160114;
        end
    end

    // out_c0_exe231160114(GPOUT,125)
    assign out_c0_exe231160114 = c0_exe231160114_reg_q;

    // c0_exe241161115_reg(REG,15)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe241161115_reg_q <= $unsigned(1'b0);
        end
        else if (conv2d3x3_B14_branch_enable_q == 1'b1)
        begin
            c0_exe241161115_reg_q <= in_c0_exe241161115;
        end
    end

    // out_c0_exe241161115(GPOUT,126)
    assign out_c0_exe241161115 = c0_exe241161115_reg_q;

    // c0_exe251162116_reg(REG,16)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe251162116_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (conv2d3x3_B14_branch_enable_q == 1'b1)
        begin
            c0_exe251162116_reg_q <= in_c0_exe251162116;
        end
    end

    // out_c0_exe251162116(GPOUT,127)
    assign out_c0_exe251162116 = c0_exe251162116_reg_q;

    // c0_exe261163119_reg(REG,17)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe261163119_reg_q <= $unsigned(1'b0);
        end
        else if (conv2d3x3_B14_branch_enable_q == 1'b1)
        begin
            c0_exe261163119_reg_q <= in_c0_exe261163119;
        end
    end

    // out_c0_exe261163119(GPOUT,128)
    assign out_c0_exe261163119 = c0_exe261163119_reg_q;

    // c0_exe271164120_reg(REG,18)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe271164120_reg_q <= $unsigned(1'b0);
        end
        else if (conv2d3x3_B14_branch_enable_q == 1'b1)
        begin
            c0_exe271164120_reg_q <= in_c0_exe271164120;
        end
    end

    // out_c0_exe271164120(GPOUT,129)
    assign out_c0_exe271164120 = c0_exe271164120_reg_q;

    // c0_exe281165121_reg(REG,19)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe281165121_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (conv2d3x3_B14_branch_enable_q == 1'b1)
        begin
            c0_exe281165121_reg_q <= in_c0_exe281165121;
        end
    end

    // out_c0_exe281165121(GPOUT,130)
    assign out_c0_exe281165121 = c0_exe281165121_reg_q;

    // c0_exe291166122_reg(REG,20)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe291166122_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (conv2d3x3_B14_branch_enable_q == 1'b1)
        begin
            c0_exe291166122_reg_q <= in_c0_exe291166122;
        end
    end

    // out_c0_exe291166122(GPOUT,131)
    assign out_c0_exe291166122 = c0_exe291166122_reg_q;

    // c0_exe301167124_reg(REG,21)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe301167124_reg_q <= $unsigned(1'b0);
        end
        else if (conv2d3x3_B14_branch_enable_q == 1'b1)
        begin
            c0_exe301167124_reg_q <= in_c0_exe301167124;
        end
    end

    // out_c0_exe301167124(GPOUT,132)
    assign out_c0_exe301167124 = c0_exe301167124_reg_q;

    // c0_exe311168125_reg(REG,22)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe311168125_reg_q <= $unsigned(1'b0);
        end
        else if (conv2d3x3_B14_branch_enable_q == 1'b1)
        begin
            c0_exe311168125_reg_q <= in_c0_exe311168125;
        end
    end

    // out_c0_exe311168125(GPOUT,133)
    assign out_c0_exe311168125 = c0_exe311168125_reg_q;

    // c0_exe3114091_reg(REG,23)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe3114091_reg_q <= $unsigned(1'b0);
        end
        else if (conv2d3x3_B14_branch_enable_q == 1'b1)
        begin
            c0_exe3114091_reg_q <= in_c0_exe3114091;
        end
    end

    // out_c0_exe3114091(GPOUT,134)
    assign out_c0_exe3114091 = c0_exe3114091_reg_q;

    // c0_exe321169127_reg(REG,24)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe321169127_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (conv2d3x3_B14_branch_enable_q == 1'b1)
        begin
            c0_exe321169127_reg_q <= in_c0_exe321169127;
        end
    end

    // out_c0_exe321169127(GPOUT,135)
    assign out_c0_exe321169127 = c0_exe321169127_reg_q;

    // c0_exe331170128_reg(REG,25)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe331170128_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (conv2d3x3_B14_branch_enable_q == 1'b1)
        begin
            c0_exe331170128_reg_q <= in_c0_exe331170128;
        end
    end

    // out_c0_exe331170128(GPOUT,136)
    assign out_c0_exe331170128 = c0_exe331170128_reg_q;

    // c0_exe341171129_reg(REG,26)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe341171129_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (conv2d3x3_B14_branch_enable_q == 1'b1)
        begin
            c0_exe341171129_reg_q <= in_c0_exe341171129;
        end
    end

    // out_c0_exe341171129(GPOUT,137)
    assign out_c0_exe341171129 = c0_exe341171129_reg_q;

    // c0_exe371174131_reg(REG,28)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe371174131_reg_q <= $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (conv2d3x3_B14_branch_enable_q == 1'b1)
        begin
            c0_exe371174131_reg_q <= in_c0_exe371174131;
        end
    end

    // out_c0_exe371174131(GPOUT,138)
    assign out_c0_exe371174131 = c0_exe371174131_reg_q;

    // c0_exe381175132_reg(REG,29)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe381175132_reg_q <= $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (conv2d3x3_B14_branch_enable_q == 1'b1)
        begin
            c0_exe381175132_reg_q <= in_c0_exe381175132;
        end
    end

    // out_c0_exe381175132(GPOUT,139)
    assign out_c0_exe381175132 = c0_exe381175132_reg_q;

    // c0_exe391176133_reg(REG,30)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe391176133_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (conv2d3x3_B14_branch_enable_q == 1'b1)
        begin
            c0_exe391176133_reg_q <= $unsigned(in_c0_exe391176133);
        end
    end

    // out_c0_exe391176133(GPOUT,140)
    assign out_c0_exe391176133 = c0_exe391176133_reg_q;

    // c0_exe401177134_reg(REG,31)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe401177134_reg_q <= $unsigned(1'b0);
        end
        else if (conv2d3x3_B14_branch_enable_q == 1'b1)
        begin
            c0_exe401177134_reg_q <= in_c0_exe401177134;
        end
    end

    // out_c0_exe401177134(GPOUT,141)
    assign out_c0_exe401177134 = c0_exe401177134_reg_q;

    // c0_exe411178135_reg(REG,32)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe411178135_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (conv2d3x3_B14_branch_enable_q == 1'b1)
        begin
            c0_exe411178135_reg_q <= in_c0_exe411178135;
        end
    end

    // out_c0_exe411178135(GPOUT,142)
    assign out_c0_exe411178135 = c0_exe411178135_reg_q;

    // c0_exe4114192_reg(REG,33)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe4114192_reg_q <= $unsigned(1'b0);
        end
        else if (conv2d3x3_B14_branch_enable_q == 1'b1)
        begin
            c0_exe4114192_reg_q <= in_c0_exe4114192;
        end
    end

    // out_c0_exe4114192(GPOUT,143)
    assign out_c0_exe4114192 = c0_exe4114192_reg_q;

    // c0_exe421179136_reg(REG,34)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe421179136_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (conv2d3x3_B14_branch_enable_q == 1'b1)
        begin
            c0_exe421179136_reg_q <= in_c0_exe421179136;
        end
    end

    // out_c0_exe421179136(GPOUT,144)
    assign out_c0_exe421179136 = c0_exe421179136_reg_q;

    // c0_exe431180137_reg(REG,35)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe431180137_reg_q <= $unsigned(1'b0);
        end
        else if (conv2d3x3_B14_branch_enable_q == 1'b1)
        begin
            c0_exe431180137_reg_q <= in_c0_exe431180137;
        end
    end

    // out_c0_exe431180137(GPOUT,145)
    assign out_c0_exe431180137 = c0_exe431180137_reg_q;

    // c0_exe441181138_reg(REG,36)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe441181138_reg_q <= $unsigned(1'b0);
        end
        else if (conv2d3x3_B14_branch_enable_q == 1'b1)
        begin
            c0_exe441181138_reg_q <= in_c0_exe441181138;
        end
    end

    // out_c0_exe441181138(GPOUT,146)
    assign out_c0_exe441181138 = c0_exe441181138_reg_q;

    // c0_exe451182139_reg(REG,37)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe451182139_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (conv2d3x3_B14_branch_enable_q == 1'b1)
        begin
            c0_exe451182139_reg_q <= in_c0_exe451182139;
        end
    end

    // out_c0_exe451182139(GPOUT,147)
    assign out_c0_exe451182139 = c0_exe451182139_reg_q;

    // c0_exe461183140_reg(REG,38)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe461183140_reg_q <= $unsigned(1'b0);
        end
        else if (conv2d3x3_B14_branch_enable_q == 1'b1)
        begin
            c0_exe461183140_reg_q <= in_c0_exe461183140;
        end
    end

    // out_c0_exe461183140(GPOUT,148)
    assign out_c0_exe461183140 = c0_exe461183140_reg_q;

    // c0_exe471184141_reg(REG,39)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe471184141_reg_q <= $unsigned(1'b0);
        end
        else if (conv2d3x3_B14_branch_enable_q == 1'b1)
        begin
            c0_exe471184141_reg_q <= in_c0_exe471184141;
        end
    end

    // out_c0_exe471184141(GPOUT,149)
    assign out_c0_exe471184141 = c0_exe471184141_reg_q;

    // c0_exe481185142_reg(REG,40)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe481185142_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (conv2d3x3_B14_branch_enable_q == 1'b1)
        begin
            c0_exe481185142_reg_q <= in_c0_exe481185142;
        end
    end

    // out_c0_exe481185142(GPOUT,150)
    assign out_c0_exe481185142 = c0_exe481185142_reg_q;

    // c0_exe491186143_reg(REG,41)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe491186143_reg_q <= $unsigned(1'b0);
        end
        else if (conv2d3x3_B14_branch_enable_q == 1'b1)
        begin
            c0_exe491186143_reg_q <= in_c0_exe491186143;
        end
    end

    // out_c0_exe491186143(GPOUT,151)
    assign out_c0_exe491186143 = c0_exe491186143_reg_q;

    // c0_exe501187144_reg(REG,42)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe501187144_reg_q <= $unsigned(1'b0);
        end
        else if (conv2d3x3_B14_branch_enable_q == 1'b1)
        begin
            c0_exe501187144_reg_q <= in_c0_exe501187144;
        end
    end

    // out_c0_exe501187144(GPOUT,152)
    assign out_c0_exe501187144 = c0_exe501187144_reg_q;

    // c0_exe511188145_reg(REG,43)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe511188145_reg_q <= $unsigned(1'b0);
        end
        else if (conv2d3x3_B14_branch_enable_q == 1'b1)
        begin
            c0_exe511188145_reg_q <= in_c0_exe511188145;
        end
    end

    // out_c0_exe511188145(GPOUT,153)
    assign out_c0_exe511188145 = c0_exe511188145_reg_q;

    // c0_exe521189146_reg(REG,44)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe521189146_reg_q <= $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (conv2d3x3_B14_branch_enable_q == 1'b1)
        begin
            c0_exe521189146_reg_q <= in_c0_exe521189146;
        end
    end

    // out_c0_exe521189146(GPOUT,154)
    assign out_c0_exe521189146 = c0_exe521189146_reg_q;

    // c0_exe53147_reg(REG,45)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe53147_reg_q <= $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (conv2d3x3_B14_branch_enable_q == 1'b1)
        begin
            c0_exe53147_reg_q <= in_c0_exe53147;
        end
    end

    // out_c0_exe53147(GPOUT,155)
    assign out_c0_exe53147 = c0_exe53147_reg_q;

    // c0_exe54148_reg(REG,46)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe54148_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (conv2d3x3_B14_branch_enable_q == 1'b1)
        begin
            c0_exe54148_reg_q <= $unsigned(in_c0_exe54148);
        end
    end

    // out_c0_exe54148(GPOUT,156)
    assign out_c0_exe54148 = c0_exe54148_reg_q;

    // c0_exe55149_reg(REG,47)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe55149_reg_q <= $unsigned(1'b0);
        end
        else if (conv2d3x3_B14_branch_enable_q == 1'b1)
        begin
            c0_exe55149_reg_q <= in_c0_exe55149;
        end
    end

    // out_c0_exe55149(GPOUT,157)
    assign out_c0_exe55149 = c0_exe55149_reg_q;

    // c0_exe6114394_reg(REG,48)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe6114394_reg_q <= $unsigned(1'b0);
        end
        else if (conv2d3x3_B14_branch_enable_q == 1'b1)
        begin
            c0_exe6114394_reg_q <= in_c0_exe6114394;
        end
    end

    // out_c0_exe6114394(GPOUT,158)
    assign out_c0_exe6114394 = c0_exe6114394_reg_q;

    // c0_exe8114595_reg(REG,49)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe8114595_reg_q <= $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (conv2d3x3_B14_branch_enable_q == 1'b1)
        begin
            c0_exe8114595_reg_q <= in_c0_exe8114595;
        end
    end

    // out_c0_exe8114595(GPOUT,159)
    assign out_c0_exe8114595 = c0_exe8114595_reg_q;

    // c1_exe11205151_reg(REG,50)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c1_exe11205151_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (conv2d3x3_B14_branch_enable_q == 1'b1)
        begin
            c1_exe11205151_reg_q <= $unsigned(in_c1_exe11205151);
        end
    end

    // out_c1_exe11205151(GPOUT,160)
    assign out_c1_exe11205151 = c1_exe11205151_reg_q;

    // c1_exe2152_reg(REG,51)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c1_exe2152_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (conv2d3x3_B14_branch_enable_q == 1'b1)
        begin
            c1_exe2152_reg_q <= $unsigned(in_c1_exe2152);
        end
    end

    // out_c1_exe2152(GPOUT,161)
    assign out_c1_exe2152 = c1_exe2152_reg_q;

    // conv2d3x3_B14_branch_enable_not(LOGICAL,53)
    assign conv2d3x3_B14_branch_enable_not_q = ~ (conv2d3x3_B14_branch_enable_q);

    // out_stall_out(GPOUT,162)
    assign out_stall_out = conv2d3x3_B14_branch_enable_not_q;

    // out_valid_out_0(GPOUT,163)
    assign out_valid_out_0 = valid_0_reg_q;

    // out_valid_out_1(GPOUT,164)
    assign out_valid_out_1 = valid_1_reg_q;

endmodule
