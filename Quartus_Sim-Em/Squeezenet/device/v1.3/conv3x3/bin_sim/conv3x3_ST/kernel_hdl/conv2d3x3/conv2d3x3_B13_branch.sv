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

// SystemVerilog created from conv2d3x3_B13_branch
// SystemVerilog created on Tue May 30 12:33:16 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2d3x3_B13_branch (
    input wire [0:0] in_c0_exe101147,
    input wire [63:0] in_c0_exe111148,
    input wire [63:0] in_c0_exe121149,
    input wire [31:0] in_c0_exe131150,
    input wire [31:0] in_c0_exe141151,
    input wire [0:0] in_c0_exe151152,
    input wire [0:0] in_c0_exe161153,
    input wire [31:0] in_c0_exe171154,
    input wire [31:0] in_c0_exe181155,
    input wire [31:0] in_c0_exe191156,
    input wire [0:0] in_c0_exe201157,
    input wire [0:0] in_c0_exe211158,
    input wire [31:0] in_c0_exe221159,
    input wire [0:0] in_c0_exe231160,
    input wire [0:0] in_c0_exe241161,
    input wire [31:0] in_c0_exe251162,
    input wire [0:0] in_c0_exe261163,
    input wire [0:0] in_c0_exe271164,
    input wire [31:0] in_c0_exe281165,
    input wire [31:0] in_c0_exe291166,
    input wire [0:0] in_c0_exe301167,
    input wire [0:0] in_c0_exe311168,
    input wire [0:0] in_c0_exe31140,
    input wire [31:0] in_c0_exe321169,
    input wire [31:0] in_c0_exe331170,
    input wire [31:0] in_c0_exe341171,
    input wire [0:0] in_c0_exe351172,
    input wire [63:0] in_c0_exe371174,
    input wire [63:0] in_c0_exe381175,
    input wire [31:0] in_c0_exe391176,
    input wire [0:0] in_c0_exe401177,
    input wire [31:0] in_c0_exe411178,
    input wire [0:0] in_c0_exe41141,
    input wire [31:0] in_c0_exe421179,
    input wire [0:0] in_c0_exe431180,
    input wire [0:0] in_c0_exe441181,
    input wire [31:0] in_c0_exe451182,
    input wire [0:0] in_c0_exe461183,
    input wire [0:0] in_c0_exe471184,
    input wire [31:0] in_c0_exe481185,
    input wire [0:0] in_c0_exe491186,
    input wire [0:0] in_c0_exe501187,
    input wire [0:0] in_c0_exe511188,
    input wire [63:0] in_c0_exe521189,
    input wire [63:0] in_c0_exe53,
    input wire [31:0] in_c0_exe54,
    input wire [0:0] in_c0_exe55,
    input wire [0:0] in_c0_exe61143,
    input wire [63:0] in_c0_exe81145,
    input wire [31:0] in_c1_exe11205,
    input wire [31:0] in_c1_exe2,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [0:0] in_valid_in,
    output wire [63:0] out_c0_exe111148,
    output wire [63:0] out_c0_exe121149,
    output wire [31:0] out_c0_exe131150,
    output wire [31:0] out_c0_exe141151,
    output wire [0:0] out_c0_exe151152,
    output wire [0:0] out_c0_exe161153,
    output wire [31:0] out_c0_exe171154,
    output wire [31:0] out_c0_exe181155,
    output wire [31:0] out_c0_exe191156,
    output wire [0:0] out_c0_exe201157,
    output wire [0:0] out_c0_exe211158,
    output wire [31:0] out_c0_exe221159,
    output wire [0:0] out_c0_exe231160,
    output wire [0:0] out_c0_exe241161,
    output wire [31:0] out_c0_exe251162,
    output wire [0:0] out_c0_exe261163,
    output wire [0:0] out_c0_exe271164,
    output wire [31:0] out_c0_exe281165,
    output wire [31:0] out_c0_exe291166,
    output wire [0:0] out_c0_exe301167,
    output wire [0:0] out_c0_exe311168,
    output wire [0:0] out_c0_exe31140,
    output wire [31:0] out_c0_exe321169,
    output wire [31:0] out_c0_exe331170,
    output wire [31:0] out_c0_exe341171,
    output wire [0:0] out_c0_exe351172,
    output wire [63:0] out_c0_exe371174,
    output wire [63:0] out_c0_exe381175,
    output wire [31:0] out_c0_exe391176,
    output wire [0:0] out_c0_exe401177,
    output wire [31:0] out_c0_exe411178,
    output wire [0:0] out_c0_exe41141,
    output wire [31:0] out_c0_exe421179,
    output wire [0:0] out_c0_exe431180,
    output wire [0:0] out_c0_exe441181,
    output wire [31:0] out_c0_exe451182,
    output wire [0:0] out_c0_exe461183,
    output wire [0:0] out_c0_exe471184,
    output wire [31:0] out_c0_exe481185,
    output wire [0:0] out_c0_exe491186,
    output wire [0:0] out_c0_exe501187,
    output wire [0:0] out_c0_exe511188,
    output wire [63:0] out_c0_exe521189,
    output wire [63:0] out_c0_exe53,
    output wire [31:0] out_c0_exe54,
    output wire [0:0] out_c0_exe55,
    output wire [0:0] out_c0_exe61143,
    output wire [63:0] out_c0_exe81145,
    output wire [31:0] out_c1_exe11205,
    output wire [31:0] out_c1_exe2,
    output wire [0:0] out_stall_out,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    wire [0:0] c0_exe101147_cmp_q;
    reg [63:0] c0_exe111148_reg_q;
    reg [63:0] c0_exe121149_reg_q;
    reg [31:0] c0_exe131150_reg_q;
    reg [31:0] c0_exe141151_reg_q;
    reg [0:0] c0_exe151152_reg_q;
    reg [0:0] c0_exe161153_reg_q;
    reg [31:0] c0_exe171154_reg_q;
    reg [31:0] c0_exe181155_reg_q;
    reg [31:0] c0_exe191156_reg_q;
    reg [0:0] c0_exe201157_reg_q;
    reg [0:0] c0_exe211158_reg_q;
    reg [31:0] c0_exe221159_reg_q;
    reg [0:0] c0_exe231160_reg_q;
    reg [0:0] c0_exe241161_reg_q;
    reg [31:0] c0_exe251162_reg_q;
    reg [0:0] c0_exe261163_reg_q;
    reg [0:0] c0_exe271164_reg_q;
    reg [31:0] c0_exe281165_reg_q;
    reg [31:0] c0_exe291166_reg_q;
    reg [0:0] c0_exe301167_reg_q;
    reg [0:0] c0_exe311168_reg_q;
    reg [0:0] c0_exe31140_reg_q;
    reg [31:0] c0_exe321169_reg_q;
    reg [31:0] c0_exe331170_reg_q;
    reg [31:0] c0_exe341171_reg_q;
    reg [0:0] c0_exe351172_reg_q;
    reg [63:0] c0_exe371174_reg_q;
    reg [63:0] c0_exe381175_reg_q;
    reg [31:0] c0_exe391176_reg_q;
    reg [0:0] c0_exe401177_reg_q;
    reg [31:0] c0_exe411178_reg_q;
    reg [0:0] c0_exe41141_reg_q;
    reg [31:0] c0_exe421179_reg_q;
    reg [0:0] c0_exe431180_reg_q;
    reg [0:0] c0_exe441181_reg_q;
    reg [31:0] c0_exe451182_reg_q;
    reg [0:0] c0_exe461183_reg_q;
    reg [0:0] c0_exe471184_reg_q;
    reg [31:0] c0_exe481185_reg_q;
    reg [0:0] c0_exe491186_reg_q;
    reg [0:0] c0_exe501187_reg_q;
    reg [0:0] c0_exe511188_reg_q;
    reg [63:0] c0_exe521189_reg_q;
    reg [63:0] c0_exe53_reg_q;
    reg [31:0] c0_exe54_reg_q;
    reg [0:0] c0_exe55_reg_q;
    reg [0:0] c0_exe61143_reg_q;
    reg [63:0] c0_exe81145_reg_q;
    reg [31:0] c1_exe11205_reg_q;
    reg [31:0] c1_exe2_reg_q;
    wire [0:0] conv2d3x3_B13_branch_enable_q;
    wire [0:0] conv2d3x3_B13_branch_enable_not_q;
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

    // not_stall_in_1(LOGICAL,110)
    assign not_stall_in_1_q = ~ (in_stall_in_1);

    // c0_exe101147_cmp(LOGICAL,2)
    assign c0_exe101147_cmp_q = ~ (in_c0_exe101147);

    // valid_out_1_and(LOGICAL,171)
    assign valid_out_1_and_q = in_valid_in & c0_exe101147_cmp_q;

    // valid_1_reg(REG,169)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_1_reg_q <= $unsigned(1'b0);
        end
        else if (conv2d3x3_B13_branch_enable_q == 1'b1)
        begin
            valid_1_reg_q <= valid_out_1_and_q;
        end
    end

    // not_valid_1(LOGICAL,112)
    assign not_valid_1_q = ~ (valid_1_reg_q);

    // not_valid_or_not_stall_1(LOGICAL,114)
    assign not_valid_or_not_stall_1_q = not_valid_1_q | not_stall_in_1_q;

    // not_stall_in_0(LOGICAL,109)
    assign not_stall_in_0_q = ~ (in_stall_in_0);

    // valid_out_0_and(LOGICAL,170)
    assign valid_out_0_and_q = in_valid_in & in_c0_exe101147;

    // valid_0_reg(REG,168)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_0_reg_q <= $unsigned(1'b0);
        end
        else if (conv2d3x3_B13_branch_enable_q == 1'b1)
        begin
            valid_0_reg_q <= valid_out_0_and_q;
        end
    end

    // not_valid_0(LOGICAL,111)
    assign not_valid_0_q = ~ (valid_0_reg_q);

    // not_valid_or_not_stall_0(LOGICAL,113)
    assign not_valid_or_not_stall_0_q = not_valid_0_q | not_stall_in_0_q;

    // conv2d3x3_B13_branch_enable(LOGICAL,53)
    assign conv2d3x3_B13_branch_enable_q = not_valid_or_not_stall_0_q & not_valid_or_not_stall_1_q;

    // c0_exe111148_reg(REG,3)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe111148_reg_q <= $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (conv2d3x3_B13_branch_enable_q == 1'b1)
        begin
            c0_exe111148_reg_q <= in_c0_exe111148;
        end
    end

    // out_c0_exe111148(GPOUT,115)
    assign out_c0_exe111148 = c0_exe111148_reg_q;

    // c0_exe121149_reg(REG,4)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe121149_reg_q <= $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (conv2d3x3_B13_branch_enable_q == 1'b1)
        begin
            c0_exe121149_reg_q <= in_c0_exe121149;
        end
    end

    // out_c0_exe121149(GPOUT,116)
    assign out_c0_exe121149 = c0_exe121149_reg_q;

    // c0_exe131150_reg(REG,5)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe131150_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (conv2d3x3_B13_branch_enable_q == 1'b1)
        begin
            c0_exe131150_reg_q <= $unsigned(in_c0_exe131150);
        end
    end

    // out_c0_exe131150(GPOUT,117)
    assign out_c0_exe131150 = c0_exe131150_reg_q;

    // c0_exe141151_reg(REG,6)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe141151_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (conv2d3x3_B13_branch_enable_q == 1'b1)
        begin
            c0_exe141151_reg_q <= $unsigned(in_c0_exe141151);
        end
    end

    // out_c0_exe141151(GPOUT,118)
    assign out_c0_exe141151 = c0_exe141151_reg_q;

    // c0_exe151152_reg(REG,7)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe151152_reg_q <= $unsigned(1'b0);
        end
        else if (conv2d3x3_B13_branch_enable_q == 1'b1)
        begin
            c0_exe151152_reg_q <= in_c0_exe151152;
        end
    end

    // out_c0_exe151152(GPOUT,119)
    assign out_c0_exe151152 = c0_exe151152_reg_q;

    // c0_exe161153_reg(REG,8)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe161153_reg_q <= $unsigned(1'b0);
        end
        else if (conv2d3x3_B13_branch_enable_q == 1'b1)
        begin
            c0_exe161153_reg_q <= in_c0_exe161153;
        end
    end

    // out_c0_exe161153(GPOUT,120)
    assign out_c0_exe161153 = c0_exe161153_reg_q;

    // c0_exe171154_reg(REG,9)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe171154_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (conv2d3x3_B13_branch_enable_q == 1'b1)
        begin
            c0_exe171154_reg_q <= in_c0_exe171154;
        end
    end

    // out_c0_exe171154(GPOUT,121)
    assign out_c0_exe171154 = c0_exe171154_reg_q;

    // c0_exe181155_reg(REG,10)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe181155_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (conv2d3x3_B13_branch_enable_q == 1'b1)
        begin
            c0_exe181155_reg_q <= in_c0_exe181155;
        end
    end

    // out_c0_exe181155(GPOUT,122)
    assign out_c0_exe181155 = c0_exe181155_reg_q;

    // c0_exe191156_reg(REG,11)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe191156_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (conv2d3x3_B13_branch_enable_q == 1'b1)
        begin
            c0_exe191156_reg_q <= in_c0_exe191156;
        end
    end

    // out_c0_exe191156(GPOUT,123)
    assign out_c0_exe191156 = c0_exe191156_reg_q;

    // c0_exe201157_reg(REG,12)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe201157_reg_q <= $unsigned(1'b0);
        end
        else if (conv2d3x3_B13_branch_enable_q == 1'b1)
        begin
            c0_exe201157_reg_q <= in_c0_exe201157;
        end
    end

    // out_c0_exe201157(GPOUT,124)
    assign out_c0_exe201157 = c0_exe201157_reg_q;

    // c0_exe211158_reg(REG,13)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe211158_reg_q <= $unsigned(1'b0);
        end
        else if (conv2d3x3_B13_branch_enable_q == 1'b1)
        begin
            c0_exe211158_reg_q <= in_c0_exe211158;
        end
    end

    // out_c0_exe211158(GPOUT,125)
    assign out_c0_exe211158 = c0_exe211158_reg_q;

    // c0_exe221159_reg(REG,14)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe221159_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (conv2d3x3_B13_branch_enable_q == 1'b1)
        begin
            c0_exe221159_reg_q <= in_c0_exe221159;
        end
    end

    // out_c0_exe221159(GPOUT,126)
    assign out_c0_exe221159 = c0_exe221159_reg_q;

    // c0_exe231160_reg(REG,15)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe231160_reg_q <= $unsigned(1'b0);
        end
        else if (conv2d3x3_B13_branch_enable_q == 1'b1)
        begin
            c0_exe231160_reg_q <= in_c0_exe231160;
        end
    end

    // out_c0_exe231160(GPOUT,127)
    assign out_c0_exe231160 = c0_exe231160_reg_q;

    // c0_exe241161_reg(REG,16)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe241161_reg_q <= $unsigned(1'b0);
        end
        else if (conv2d3x3_B13_branch_enable_q == 1'b1)
        begin
            c0_exe241161_reg_q <= in_c0_exe241161;
        end
    end

    // out_c0_exe241161(GPOUT,128)
    assign out_c0_exe241161 = c0_exe241161_reg_q;

    // c0_exe251162_reg(REG,17)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe251162_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (conv2d3x3_B13_branch_enable_q == 1'b1)
        begin
            c0_exe251162_reg_q <= in_c0_exe251162;
        end
    end

    // out_c0_exe251162(GPOUT,129)
    assign out_c0_exe251162 = c0_exe251162_reg_q;

    // c0_exe261163_reg(REG,18)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe261163_reg_q <= $unsigned(1'b0);
        end
        else if (conv2d3x3_B13_branch_enable_q == 1'b1)
        begin
            c0_exe261163_reg_q <= in_c0_exe261163;
        end
    end

    // out_c0_exe261163(GPOUT,130)
    assign out_c0_exe261163 = c0_exe261163_reg_q;

    // c0_exe271164_reg(REG,19)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe271164_reg_q <= $unsigned(1'b0);
        end
        else if (conv2d3x3_B13_branch_enable_q == 1'b1)
        begin
            c0_exe271164_reg_q <= in_c0_exe271164;
        end
    end

    // out_c0_exe271164(GPOUT,131)
    assign out_c0_exe271164 = c0_exe271164_reg_q;

    // c0_exe281165_reg(REG,20)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe281165_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (conv2d3x3_B13_branch_enable_q == 1'b1)
        begin
            c0_exe281165_reg_q <= in_c0_exe281165;
        end
    end

    // out_c0_exe281165(GPOUT,132)
    assign out_c0_exe281165 = c0_exe281165_reg_q;

    // c0_exe291166_reg(REG,21)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe291166_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (conv2d3x3_B13_branch_enable_q == 1'b1)
        begin
            c0_exe291166_reg_q <= in_c0_exe291166;
        end
    end

    // out_c0_exe291166(GPOUT,133)
    assign out_c0_exe291166 = c0_exe291166_reg_q;

    // c0_exe301167_reg(REG,22)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe301167_reg_q <= $unsigned(1'b0);
        end
        else if (conv2d3x3_B13_branch_enable_q == 1'b1)
        begin
            c0_exe301167_reg_q <= in_c0_exe301167;
        end
    end

    // out_c0_exe301167(GPOUT,134)
    assign out_c0_exe301167 = c0_exe301167_reg_q;

    // c0_exe311168_reg(REG,23)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe311168_reg_q <= $unsigned(1'b0);
        end
        else if (conv2d3x3_B13_branch_enable_q == 1'b1)
        begin
            c0_exe311168_reg_q <= in_c0_exe311168;
        end
    end

    // out_c0_exe311168(GPOUT,135)
    assign out_c0_exe311168 = c0_exe311168_reg_q;

    // c0_exe31140_reg(REG,24)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe31140_reg_q <= $unsigned(1'b0);
        end
        else if (conv2d3x3_B13_branch_enable_q == 1'b1)
        begin
            c0_exe31140_reg_q <= in_c0_exe31140;
        end
    end

    // out_c0_exe31140(GPOUT,136)
    assign out_c0_exe31140 = c0_exe31140_reg_q;

    // c0_exe321169_reg(REG,25)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe321169_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (conv2d3x3_B13_branch_enable_q == 1'b1)
        begin
            c0_exe321169_reg_q <= in_c0_exe321169;
        end
    end

    // out_c0_exe321169(GPOUT,137)
    assign out_c0_exe321169 = c0_exe321169_reg_q;

    // c0_exe331170_reg(REG,26)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe331170_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (conv2d3x3_B13_branch_enable_q == 1'b1)
        begin
            c0_exe331170_reg_q <= in_c0_exe331170;
        end
    end

    // out_c0_exe331170(GPOUT,138)
    assign out_c0_exe331170 = c0_exe331170_reg_q;

    // c0_exe341171_reg(REG,27)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe341171_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (conv2d3x3_B13_branch_enable_q == 1'b1)
        begin
            c0_exe341171_reg_q <= in_c0_exe341171;
        end
    end

    // out_c0_exe341171(GPOUT,139)
    assign out_c0_exe341171 = c0_exe341171_reg_q;

    // c0_exe351172_reg(REG,28)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe351172_reg_q <= $unsigned(1'b0);
        end
        else if (conv2d3x3_B13_branch_enable_q == 1'b1)
        begin
            c0_exe351172_reg_q <= in_c0_exe351172;
        end
    end

    // out_c0_exe351172(GPOUT,140)
    assign out_c0_exe351172 = c0_exe351172_reg_q;

    // c0_exe371174_reg(REG,29)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe371174_reg_q <= $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (conv2d3x3_B13_branch_enable_q == 1'b1)
        begin
            c0_exe371174_reg_q <= in_c0_exe371174;
        end
    end

    // out_c0_exe371174(GPOUT,141)
    assign out_c0_exe371174 = c0_exe371174_reg_q;

    // c0_exe381175_reg(REG,30)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe381175_reg_q <= $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (conv2d3x3_B13_branch_enable_q == 1'b1)
        begin
            c0_exe381175_reg_q <= in_c0_exe381175;
        end
    end

    // out_c0_exe381175(GPOUT,142)
    assign out_c0_exe381175 = c0_exe381175_reg_q;

    // c0_exe391176_reg(REG,31)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe391176_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (conv2d3x3_B13_branch_enable_q == 1'b1)
        begin
            c0_exe391176_reg_q <= $unsigned(in_c0_exe391176);
        end
    end

    // out_c0_exe391176(GPOUT,143)
    assign out_c0_exe391176 = c0_exe391176_reg_q;

    // c0_exe401177_reg(REG,32)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe401177_reg_q <= $unsigned(1'b0);
        end
        else if (conv2d3x3_B13_branch_enable_q == 1'b1)
        begin
            c0_exe401177_reg_q <= in_c0_exe401177;
        end
    end

    // out_c0_exe401177(GPOUT,144)
    assign out_c0_exe401177 = c0_exe401177_reg_q;

    // c0_exe411178_reg(REG,33)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe411178_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (conv2d3x3_B13_branch_enable_q == 1'b1)
        begin
            c0_exe411178_reg_q <= in_c0_exe411178;
        end
    end

    // out_c0_exe411178(GPOUT,145)
    assign out_c0_exe411178 = c0_exe411178_reg_q;

    // c0_exe41141_reg(REG,34)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe41141_reg_q <= $unsigned(1'b0);
        end
        else if (conv2d3x3_B13_branch_enable_q == 1'b1)
        begin
            c0_exe41141_reg_q <= in_c0_exe41141;
        end
    end

    // out_c0_exe41141(GPOUT,146)
    assign out_c0_exe41141 = c0_exe41141_reg_q;

    // c0_exe421179_reg(REG,35)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe421179_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (conv2d3x3_B13_branch_enable_q == 1'b1)
        begin
            c0_exe421179_reg_q <= in_c0_exe421179;
        end
    end

    // out_c0_exe421179(GPOUT,147)
    assign out_c0_exe421179 = c0_exe421179_reg_q;

    // c0_exe431180_reg(REG,36)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe431180_reg_q <= $unsigned(1'b0);
        end
        else if (conv2d3x3_B13_branch_enable_q == 1'b1)
        begin
            c0_exe431180_reg_q <= in_c0_exe431180;
        end
    end

    // out_c0_exe431180(GPOUT,148)
    assign out_c0_exe431180 = c0_exe431180_reg_q;

    // c0_exe441181_reg(REG,37)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe441181_reg_q <= $unsigned(1'b0);
        end
        else if (conv2d3x3_B13_branch_enable_q == 1'b1)
        begin
            c0_exe441181_reg_q <= in_c0_exe441181;
        end
    end

    // out_c0_exe441181(GPOUT,149)
    assign out_c0_exe441181 = c0_exe441181_reg_q;

    // c0_exe451182_reg(REG,38)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe451182_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (conv2d3x3_B13_branch_enable_q == 1'b1)
        begin
            c0_exe451182_reg_q <= in_c0_exe451182;
        end
    end

    // out_c0_exe451182(GPOUT,150)
    assign out_c0_exe451182 = c0_exe451182_reg_q;

    // c0_exe461183_reg(REG,39)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe461183_reg_q <= $unsigned(1'b0);
        end
        else if (conv2d3x3_B13_branch_enable_q == 1'b1)
        begin
            c0_exe461183_reg_q <= in_c0_exe461183;
        end
    end

    // out_c0_exe461183(GPOUT,151)
    assign out_c0_exe461183 = c0_exe461183_reg_q;

    // c0_exe471184_reg(REG,40)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe471184_reg_q <= $unsigned(1'b0);
        end
        else if (conv2d3x3_B13_branch_enable_q == 1'b1)
        begin
            c0_exe471184_reg_q <= in_c0_exe471184;
        end
    end

    // out_c0_exe471184(GPOUT,152)
    assign out_c0_exe471184 = c0_exe471184_reg_q;

    // c0_exe481185_reg(REG,41)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe481185_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (conv2d3x3_B13_branch_enable_q == 1'b1)
        begin
            c0_exe481185_reg_q <= in_c0_exe481185;
        end
    end

    // out_c0_exe481185(GPOUT,153)
    assign out_c0_exe481185 = c0_exe481185_reg_q;

    // c0_exe491186_reg(REG,42)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe491186_reg_q <= $unsigned(1'b0);
        end
        else if (conv2d3x3_B13_branch_enable_q == 1'b1)
        begin
            c0_exe491186_reg_q <= in_c0_exe491186;
        end
    end

    // out_c0_exe491186(GPOUT,154)
    assign out_c0_exe491186 = c0_exe491186_reg_q;

    // c0_exe501187_reg(REG,43)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe501187_reg_q <= $unsigned(1'b0);
        end
        else if (conv2d3x3_B13_branch_enable_q == 1'b1)
        begin
            c0_exe501187_reg_q <= in_c0_exe501187;
        end
    end

    // out_c0_exe501187(GPOUT,155)
    assign out_c0_exe501187 = c0_exe501187_reg_q;

    // c0_exe511188_reg(REG,44)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe511188_reg_q <= $unsigned(1'b0);
        end
        else if (conv2d3x3_B13_branch_enable_q == 1'b1)
        begin
            c0_exe511188_reg_q <= in_c0_exe511188;
        end
    end

    // out_c0_exe511188(GPOUT,156)
    assign out_c0_exe511188 = c0_exe511188_reg_q;

    // c0_exe521189_reg(REG,45)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe521189_reg_q <= $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (conv2d3x3_B13_branch_enable_q == 1'b1)
        begin
            c0_exe521189_reg_q <= in_c0_exe521189;
        end
    end

    // out_c0_exe521189(GPOUT,157)
    assign out_c0_exe521189 = c0_exe521189_reg_q;

    // c0_exe53_reg(REG,46)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe53_reg_q <= $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (conv2d3x3_B13_branch_enable_q == 1'b1)
        begin
            c0_exe53_reg_q <= in_c0_exe53;
        end
    end

    // out_c0_exe53(GPOUT,158)
    assign out_c0_exe53 = c0_exe53_reg_q;

    // c0_exe54_reg(REG,47)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe54_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (conv2d3x3_B13_branch_enable_q == 1'b1)
        begin
            c0_exe54_reg_q <= $unsigned(in_c0_exe54);
        end
    end

    // out_c0_exe54(GPOUT,159)
    assign out_c0_exe54 = c0_exe54_reg_q;

    // c0_exe55_reg(REG,48)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe55_reg_q <= $unsigned(1'b0);
        end
        else if (conv2d3x3_B13_branch_enable_q == 1'b1)
        begin
            c0_exe55_reg_q <= in_c0_exe55;
        end
    end

    // out_c0_exe55(GPOUT,160)
    assign out_c0_exe55 = c0_exe55_reg_q;

    // c0_exe61143_reg(REG,49)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe61143_reg_q <= $unsigned(1'b0);
        end
        else if (conv2d3x3_B13_branch_enable_q == 1'b1)
        begin
            c0_exe61143_reg_q <= in_c0_exe61143;
        end
    end

    // out_c0_exe61143(GPOUT,161)
    assign out_c0_exe61143 = c0_exe61143_reg_q;

    // c0_exe81145_reg(REG,50)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe81145_reg_q <= $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (conv2d3x3_B13_branch_enable_q == 1'b1)
        begin
            c0_exe81145_reg_q <= in_c0_exe81145;
        end
    end

    // out_c0_exe81145(GPOUT,162)
    assign out_c0_exe81145 = c0_exe81145_reg_q;

    // c1_exe11205_reg(REG,51)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c1_exe11205_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (conv2d3x3_B13_branch_enable_q == 1'b1)
        begin
            c1_exe11205_reg_q <= $unsigned(in_c1_exe11205);
        end
    end

    // out_c1_exe11205(GPOUT,163)
    assign out_c1_exe11205 = c1_exe11205_reg_q;

    // c1_exe2_reg(REG,52)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c1_exe2_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (conv2d3x3_B13_branch_enable_q == 1'b1)
        begin
            c1_exe2_reg_q <= $unsigned(in_c1_exe2);
        end
    end

    // out_c1_exe2(GPOUT,164)
    assign out_c1_exe2 = c1_exe2_reg_q;

    // conv2d3x3_B13_branch_enable_not(LOGICAL,54)
    assign conv2d3x3_B13_branch_enable_not_q = ~ (conv2d3x3_B13_branch_enable_q);

    // out_stall_out(GPOUT,165)
    assign out_stall_out = conv2d3x3_B13_branch_enable_not_q;

    // out_valid_out_0(GPOUT,166)
    assign out_valid_out_0 = valid_0_reg_q;

    // out_valid_out_1(GPOUT,167)
    assign out_valid_out_1 = valid_1_reg_q;

endmodule
