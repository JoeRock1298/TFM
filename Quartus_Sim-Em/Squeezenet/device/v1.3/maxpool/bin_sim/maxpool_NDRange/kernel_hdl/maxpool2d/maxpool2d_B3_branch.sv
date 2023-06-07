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

// SystemVerilog created from maxpool2d_B3_branch
// SystemVerilog created on Sat Jun  3 12:58:36 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module maxpool2d_B3_branch (
    input wire [63:0] in_c0_exe11,
    input wire [31:0] in_c0_exe12819,
    input wire [63:0] in_c0_exe25,
    input wire [0:0] in_c0_exe37,
    input wire [0:0] in_c0_exe410,
    input wire [31:0] in_c1_exe1,
    input wire [0:0] in_for_cond_cleanup15_LC_COND,
    input wire [31:0] in_i_03814,
    input wire [31:0] in_j_03616,
    input wire [31:0] in_k_034_LC_OuterPHI,
    input wire [31:0] in_l_032_LC_InnerPHI,
    input wire [31:0] in_mul2217,
    input wire [31:0] in_mul2420,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [0:0] in_valid_in,
    output wire [63:0] out_c0_exe11,
    output wire [31:0] out_c0_exe12819,
    output wire [63:0] out_c0_exe25,
    output wire [0:0] out_c0_exe37,
    output wire [0:0] out_c0_exe410,
    output wire [31:0] out_c1_exe1,
    output wire [31:0] out_i_03814,
    output wire [31:0] out_j_03616,
    output wire [31:0] out_k_034_LC_OuterPHI,
    output wire [31:0] out_l_032_LC_InnerPHI,
    output wire [31:0] out_mul2217,
    output wire [31:0] out_mul2420,
    output wire [0:0] out_stall_out,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    reg [63:0] c0_exe11_reg_q;
    reg [31:0] c0_exe12819_reg_q;
    reg [63:0] c0_exe25_reg_q;
    reg [0:0] c0_exe37_reg_q;
    reg [0:0] c0_exe410_reg_q;
    reg [31:0] c1_exe1_reg_q;
    wire [0:0] for_cond_cleanup15_LC_COND_cmp_q;
    reg [31:0] i_03814_reg_q;
    reg [31:0] j_03616_reg_q;
    reg [31:0] k_034_LC_OuterPHI_reg_q;
    reg [31:0] l_032_LC_InnerPHI_reg_q;
    wire [0:0] maxpool2d_B3_branch_enable_q;
    wire [0:0] maxpool2d_B3_branch_enable_not_q;
    reg [31:0] mul2217_reg_q;
    reg [31:0] mul2420_reg_q;
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

    // not_stall_in_1(LOGICAL,34)
    assign not_stall_in_1_q = ~ (in_stall_in_1);

    // for_cond_cleanup15_LC_COND_cmp(LOGICAL,8)
    assign for_cond_cleanup15_LC_COND_cmp_q = ~ (in_for_cond_cleanup15_LC_COND);

    // valid_out_1_and(LOGICAL,57)
    assign valid_out_1_and_q = in_valid_in & for_cond_cleanup15_LC_COND_cmp_q;

    // valid_1_reg(REG,55)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_1_reg_q <= $unsigned(1'b0);
        end
        else if (maxpool2d_B3_branch_enable_q == 1'b1)
        begin
            valid_1_reg_q <= valid_out_1_and_q;
        end
    end

    // not_valid_1(LOGICAL,36)
    assign not_valid_1_q = ~ (valid_1_reg_q);

    // not_valid_or_not_stall_1(LOGICAL,38)
    assign not_valid_or_not_stall_1_q = not_valid_1_q | not_stall_in_1_q;

    // not_stall_in_0(LOGICAL,33)
    assign not_stall_in_0_q = ~ (in_stall_in_0);

    // valid_out_0_and(LOGICAL,56)
    assign valid_out_0_and_q = in_valid_in & in_for_cond_cleanup15_LC_COND;

    // valid_0_reg(REG,54)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_0_reg_q <= $unsigned(1'b0);
        end
        else if (maxpool2d_B3_branch_enable_q == 1'b1)
        begin
            valid_0_reg_q <= valid_out_0_and_q;
        end
    end

    // not_valid_0(LOGICAL,35)
    assign not_valid_0_q = ~ (valid_0_reg_q);

    // not_valid_or_not_stall_0(LOGICAL,37)
    assign not_valid_or_not_stall_0_q = not_valid_0_q | not_stall_in_0_q;

    // maxpool2d_B3_branch_enable(LOGICAL,29)
    assign maxpool2d_B3_branch_enable_q = not_valid_or_not_stall_0_q & not_valid_or_not_stall_1_q;

    // c0_exe11_reg(REG,2)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe11_reg_q <= $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (maxpool2d_B3_branch_enable_q == 1'b1)
        begin
            c0_exe11_reg_q <= in_c0_exe11;
        end
    end

    // out_c0_exe11(GPOUT,39)
    assign out_c0_exe11 = c0_exe11_reg_q;

    // c0_exe12819_reg(REG,3)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe12819_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (maxpool2d_B3_branch_enable_q == 1'b1)
        begin
            c0_exe12819_reg_q <= in_c0_exe12819;
        end
    end

    // out_c0_exe12819(GPOUT,40)
    assign out_c0_exe12819 = c0_exe12819_reg_q;

    // c0_exe25_reg(REG,4)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe25_reg_q <= $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (maxpool2d_B3_branch_enable_q == 1'b1)
        begin
            c0_exe25_reg_q <= in_c0_exe25;
        end
    end

    // out_c0_exe25(GPOUT,41)
    assign out_c0_exe25 = c0_exe25_reg_q;

    // c0_exe37_reg(REG,5)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe37_reg_q <= $unsigned(1'b0);
        end
        else if (maxpool2d_B3_branch_enable_q == 1'b1)
        begin
            c0_exe37_reg_q <= in_c0_exe37;
        end
    end

    // out_c0_exe37(GPOUT,42)
    assign out_c0_exe37 = c0_exe37_reg_q;

    // c0_exe410_reg(REG,6)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe410_reg_q <= $unsigned(1'b0);
        end
        else if (maxpool2d_B3_branch_enable_q == 1'b1)
        begin
            c0_exe410_reg_q <= in_c0_exe410;
        end
    end

    // out_c0_exe410(GPOUT,43)
    assign out_c0_exe410 = c0_exe410_reg_q;

    // c1_exe1_reg(REG,7)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c1_exe1_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (maxpool2d_B3_branch_enable_q == 1'b1)
        begin
            c1_exe1_reg_q <= $unsigned(in_c1_exe1);
        end
    end

    // out_c1_exe1(GPOUT,44)
    assign out_c1_exe1 = c1_exe1_reg_q;

    // i_03814_reg(REG,9)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_03814_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (maxpool2d_B3_branch_enable_q == 1'b1)
        begin
            i_03814_reg_q <= in_i_03814;
        end
    end

    // out_i_03814(GPOUT,45)
    assign out_i_03814 = i_03814_reg_q;

    // j_03616_reg(REG,26)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            j_03616_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (maxpool2d_B3_branch_enable_q == 1'b1)
        begin
            j_03616_reg_q <= in_j_03616;
        end
    end

    // out_j_03616(GPOUT,46)
    assign out_j_03616 = j_03616_reg_q;

    // k_034_LC_OuterPHI_reg(REG,27)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            k_034_LC_OuterPHI_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (maxpool2d_B3_branch_enable_q == 1'b1)
        begin
            k_034_LC_OuterPHI_reg_q <= in_k_034_LC_OuterPHI;
        end
    end

    // out_k_034_LC_OuterPHI(GPOUT,47)
    assign out_k_034_LC_OuterPHI = k_034_LC_OuterPHI_reg_q;

    // l_032_LC_InnerPHI_reg(REG,28)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            l_032_LC_InnerPHI_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (maxpool2d_B3_branch_enable_q == 1'b1)
        begin
            l_032_LC_InnerPHI_reg_q <= in_l_032_LC_InnerPHI;
        end
    end

    // out_l_032_LC_InnerPHI(GPOUT,48)
    assign out_l_032_LC_InnerPHI = l_032_LC_InnerPHI_reg_q;

    // mul2217_reg(REG,31)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            mul2217_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (maxpool2d_B3_branch_enable_q == 1'b1)
        begin
            mul2217_reg_q <= in_mul2217;
        end
    end

    // out_mul2217(GPOUT,49)
    assign out_mul2217 = mul2217_reg_q;

    // mul2420_reg(REG,32)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            mul2420_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (maxpool2d_B3_branch_enable_q == 1'b1)
        begin
            mul2420_reg_q <= in_mul2420;
        end
    end

    // out_mul2420(GPOUT,50)
    assign out_mul2420 = mul2420_reg_q;

    // maxpool2d_B3_branch_enable_not(LOGICAL,30)
    assign maxpool2d_B3_branch_enable_not_q = ~ (maxpool2d_B3_branch_enable_q);

    // out_stall_out(GPOUT,51)
    assign out_stall_out = maxpool2d_B3_branch_enable_not_q;

    // out_valid_out_0(GPOUT,52)
    assign out_valid_out_0 = valid_0_reg_q;

    // out_valid_out_1(GPOUT,53)
    assign out_valid_out_1 = valid_1_reg_q;

endmodule
