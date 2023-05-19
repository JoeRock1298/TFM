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

// SystemVerilog created from conv2d1x1_B4_branch
// SystemVerilog created on Wed May 17 11:22:46 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2d1x1_B4_branch (
    input wire [63:0] in_acl_global_id_132,
    input wire [63:0] in_c0_exe11,
    input wire [31:0] in_c0_exe14927,
    input wire [31:0] in_c0_exe34,
    input wire [63:0] in_c0_exe48,
    input wire [0:0] in_c0_exe511,
    input wire [31:0] in_c0_exe572,
    input wire [0:0] in_c0_exe613,
    input wire [0:0] in_c0_exe673,
    input wire [0:0] in_c0_exe716,
    input wire [0:0] in_c0_exe820,
    input wire [0:0] in_c0_exe922,
    input wire [31:0] in_c1_exe1,
    input wire [31:0] in_j_05926,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [31:0] in_unnamed_conv2d1x16,
    input wire [0:0] in_valid_in,
    output wire [63:0] out_acl_global_id_132,
    output wire [63:0] out_c0_exe11,
    output wire [31:0] out_c0_exe14927,
    output wire [31:0] out_c0_exe34,
    output wire [63:0] out_c0_exe48,
    output wire [0:0] out_c0_exe511,
    output wire [31:0] out_c0_exe572,
    output wire [0:0] out_c0_exe613,
    output wire [0:0] out_c0_exe716,
    output wire [0:0] out_c0_exe820,
    output wire [0:0] out_c0_exe922,
    output wire [31:0] out_c1_exe1,
    output wire [31:0] out_j_05926,
    output wire [0:0] out_stall_out,
    output wire [31:0] out_unnamed_conv2d1x16,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    reg [63:0] acl_global_id_132_reg_q;
    reg [63:0] c0_exe11_reg_q;
    reg [31:0] c0_exe14927_reg_q;
    reg [31:0] c0_exe34_reg_q;
    reg [63:0] c0_exe48_reg_q;
    reg [0:0] c0_exe511_reg_q;
    reg [31:0] c0_exe572_reg_q;
    reg [0:0] c0_exe613_reg_q;
    wire [0:0] c0_exe673_cmp_q;
    reg [0:0] c0_exe716_reg_q;
    reg [0:0] c0_exe820_reg_q;
    reg [0:0] c0_exe922_reg_q;
    reg [31:0] c1_exe1_reg_q;
    wire [0:0] conv2d1x1_B4_branch_enable_q;
    wire [0:0] conv2d1x1_B4_branch_enable_not_q;
    reg [31:0] j_05926_reg_q;
    wire [0:0] not_stall_in_0_q;
    wire [0:0] not_stall_in_1_q;
    wire [0:0] not_valid_0_q;
    wire [0:0] not_valid_1_q;
    wire [0:0] not_valid_or_not_stall_0_q;
    wire [0:0] not_valid_or_not_stall_1_q;
    reg [31:0] unnamed_conv2d1x16_reg_q;
    reg [0:0] valid_0_reg_q;
    reg [0:0] valid_1_reg_q;
    wire [0:0] valid_out_0_and_q;
    wire [0:0] valid_out_1_and_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // not_stall_in_1(LOGICAL,37)
    assign not_stall_in_1_q = ~ (in_stall_in_1);

    // c0_exe673_cmp(LOGICAL,10)
    assign c0_exe673_cmp_q = ~ (in_c0_exe673);

    // valid_out_1_and(LOGICAL,63)
    assign valid_out_1_and_q = in_valid_in & c0_exe673_cmp_q;

    // valid_1_reg(REG,61)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_1_reg_q <= $unsigned(1'b0);
        end
        else if (conv2d1x1_B4_branch_enable_q == 1'b1)
        begin
            valid_1_reg_q <= valid_out_1_and_q;
        end
    end

    // not_valid_1(LOGICAL,39)
    assign not_valid_1_q = ~ (valid_1_reg_q);

    // not_valid_or_not_stall_1(LOGICAL,41)
    assign not_valid_or_not_stall_1_q = not_valid_1_q | not_stall_in_1_q;

    // not_stall_in_0(LOGICAL,36)
    assign not_stall_in_0_q = ~ (in_stall_in_0);

    // valid_out_0_and(LOGICAL,62)
    assign valid_out_0_and_q = in_valid_in & in_c0_exe673;

    // valid_0_reg(REG,60)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_0_reg_q <= $unsigned(1'b0);
        end
        else if (conv2d1x1_B4_branch_enable_q == 1'b1)
        begin
            valid_0_reg_q <= valid_out_0_and_q;
        end
    end

    // not_valid_0(LOGICAL,38)
    assign not_valid_0_q = ~ (valid_0_reg_q);

    // not_valid_or_not_stall_0(LOGICAL,40)
    assign not_valid_or_not_stall_0_q = not_valid_0_q | not_stall_in_0_q;

    // conv2d1x1_B4_branch_enable(LOGICAL,15)
    assign conv2d1x1_B4_branch_enable_q = not_valid_or_not_stall_0_q & not_valid_or_not_stall_1_q;

    // acl_global_id_132_reg(REG,2)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            acl_global_id_132_reg_q <= $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (conv2d1x1_B4_branch_enable_q == 1'b1)
        begin
            acl_global_id_132_reg_q <= in_acl_global_id_132;
        end
    end

    // out_acl_global_id_132(GPOUT,42)
    assign out_acl_global_id_132 = acl_global_id_132_reg_q;

    // c0_exe11_reg(REG,3)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe11_reg_q <= $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (conv2d1x1_B4_branch_enable_q == 1'b1)
        begin
            c0_exe11_reg_q <= in_c0_exe11;
        end
    end

    // out_c0_exe11(GPOUT,43)
    assign out_c0_exe11 = c0_exe11_reg_q;

    // c0_exe14927_reg(REG,4)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe14927_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (conv2d1x1_B4_branch_enable_q == 1'b1)
        begin
            c0_exe14927_reg_q <= in_c0_exe14927;
        end
    end

    // out_c0_exe14927(GPOUT,44)
    assign out_c0_exe14927 = c0_exe14927_reg_q;

    // c0_exe34_reg(REG,5)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe34_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (conv2d1x1_B4_branch_enable_q == 1'b1)
        begin
            c0_exe34_reg_q <= in_c0_exe34;
        end
    end

    // out_c0_exe34(GPOUT,45)
    assign out_c0_exe34 = c0_exe34_reg_q;

    // c0_exe48_reg(REG,6)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe48_reg_q <= $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (conv2d1x1_B4_branch_enable_q == 1'b1)
        begin
            c0_exe48_reg_q <= in_c0_exe48;
        end
    end

    // out_c0_exe48(GPOUT,46)
    assign out_c0_exe48 = c0_exe48_reg_q;

    // c0_exe511_reg(REG,7)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe511_reg_q <= $unsigned(1'b0);
        end
        else if (conv2d1x1_B4_branch_enable_q == 1'b1)
        begin
            c0_exe511_reg_q <= in_c0_exe511;
        end
    end

    // out_c0_exe511(GPOUT,47)
    assign out_c0_exe511 = c0_exe511_reg_q;

    // c0_exe572_reg(REG,8)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe572_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (conv2d1x1_B4_branch_enable_q == 1'b1)
        begin
            c0_exe572_reg_q <= in_c0_exe572;
        end
    end

    // out_c0_exe572(GPOUT,48)
    assign out_c0_exe572 = c0_exe572_reg_q;

    // c0_exe613_reg(REG,9)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe613_reg_q <= $unsigned(1'b0);
        end
        else if (conv2d1x1_B4_branch_enable_q == 1'b1)
        begin
            c0_exe613_reg_q <= in_c0_exe613;
        end
    end

    // out_c0_exe613(GPOUT,49)
    assign out_c0_exe613 = c0_exe613_reg_q;

    // c0_exe716_reg(REG,11)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe716_reg_q <= $unsigned(1'b0);
        end
        else if (conv2d1x1_B4_branch_enable_q == 1'b1)
        begin
            c0_exe716_reg_q <= in_c0_exe716;
        end
    end

    // out_c0_exe716(GPOUT,50)
    assign out_c0_exe716 = c0_exe716_reg_q;

    // c0_exe820_reg(REG,12)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe820_reg_q <= $unsigned(1'b0);
        end
        else if (conv2d1x1_B4_branch_enable_q == 1'b1)
        begin
            c0_exe820_reg_q <= in_c0_exe820;
        end
    end

    // out_c0_exe820(GPOUT,51)
    assign out_c0_exe820 = c0_exe820_reg_q;

    // c0_exe922_reg(REG,13)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe922_reg_q <= $unsigned(1'b0);
        end
        else if (conv2d1x1_B4_branch_enable_q == 1'b1)
        begin
            c0_exe922_reg_q <= in_c0_exe922;
        end
    end

    // out_c0_exe922(GPOUT,52)
    assign out_c0_exe922 = c0_exe922_reg_q;

    // c1_exe1_reg(REG,14)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c1_exe1_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (conv2d1x1_B4_branch_enable_q == 1'b1)
        begin
            c1_exe1_reg_q <= $unsigned(in_c1_exe1);
        end
    end

    // out_c1_exe1(GPOUT,53)
    assign out_c1_exe1 = c1_exe1_reg_q;

    // j_05926_reg(REG,35)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            j_05926_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (conv2d1x1_B4_branch_enable_q == 1'b1)
        begin
            j_05926_reg_q <= in_j_05926;
        end
    end

    // out_j_05926(GPOUT,54)
    assign out_j_05926 = j_05926_reg_q;

    // conv2d1x1_B4_branch_enable_not(LOGICAL,16)
    assign conv2d1x1_B4_branch_enable_not_q = ~ (conv2d1x1_B4_branch_enable_q);

    // out_stall_out(GPOUT,55)
    assign out_stall_out = conv2d1x1_B4_branch_enable_not_q;

    // unnamed_conv2d1x16_reg(REG,59)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            unnamed_conv2d1x16_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (conv2d1x1_B4_branch_enable_q == 1'b1)
        begin
            unnamed_conv2d1x16_reg_q <= $unsigned(in_unnamed_conv2d1x16);
        end
    end

    // out_unnamed_conv2d1x16(GPOUT,56)
    assign out_unnamed_conv2d1x16 = unnamed_conv2d1x16_reg_q;

    // out_valid_out_0(GPOUT,57)
    assign out_valid_out_0 = valid_0_reg_q;

    // out_valid_out_1(GPOUT,58)
    assign out_valid_out_1 = valid_1_reg_q;

endmodule
