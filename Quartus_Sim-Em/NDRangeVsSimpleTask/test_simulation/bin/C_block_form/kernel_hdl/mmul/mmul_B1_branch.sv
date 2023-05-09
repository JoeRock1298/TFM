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

// SystemVerilog created from mmul_B1_branch
// SystemVerilog created on Sat May  6 18:14:24 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module mmul_B1_branch (
    input wire [63:0] in_acl_global_id_077,
    input wire [63:0] in_acl_global_id_179,
    input wire [31:0] in_acl_local_id_080,
    input wire [31:0] in_add43,
    input wire [31:0] in_add44,
    input wire [31:0] in_c0_exe168,
    input wire [31:0] in_c0_exe2141,
    input wire [31:0] in_c0_exe269,
    input wire [0:0] in_c0_exe370,
    input wire [31:0] in_c0_exe671,
    input wire [63:0] in_c0_exe772,
    input wire [63:0] in_c0_exe873,
    input wire [63:0] in_c0_exe974,
    input wire [0:0] in_cmp,
    input wire [31:0] in_inc46,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [0:0] in_valid_in,
    output wire [63:0] out_acl_global_id_077,
    output wire [63:0] out_acl_global_id_179,
    output wire [31:0] out_acl_local_id_080,
    output wire [31:0] out_add43,
    output wire [31:0] out_add44,
    output wire [31:0] out_c0_exe168,
    output wire [31:0] out_c0_exe2141,
    output wire [31:0] out_c0_exe269,
    output wire [0:0] out_c0_exe370,
    output wire [31:0] out_c0_exe671,
    output wire [63:0] out_c0_exe772,
    output wire [63:0] out_c0_exe873,
    output wire [63:0] out_c0_exe974,
    output wire [31:0] out_inc46,
    output wire [0:0] out_stall_out,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    reg [63:0] acl_global_id_077_reg_q;
    reg [63:0] acl_global_id_179_reg_q;
    reg [31:0] acl_local_id_080_reg_q;
    reg [31:0] add43_reg_q;
    reg [31:0] add44_reg_q;
    reg [31:0] c0_exe168_reg_q;
    reg [31:0] c0_exe2141_reg_q;
    reg [31:0] c0_exe269_reg_q;
    reg [0:0] c0_exe370_reg_q;
    reg [31:0] c0_exe671_reg_q;
    reg [63:0] c0_exe772_reg_q;
    reg [63:0] c0_exe873_reg_q;
    reg [63:0] c0_exe974_reg_q;
    wire [0:0] cmp_cmp_q;
    reg [31:0] inc46_reg_q;
    wire [0:0] mmul_B1_branch_enable_q;
    wire [0:0] mmul_B1_branch_enable_not_q;
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

    // not_stall_in_1(LOGICAL,38)
    assign not_stall_in_1_q = ~ (in_stall_in_1);

    // cmp_cmp(LOGICAL,15)
    assign cmp_cmp_q = ~ (in_cmp);

    // valid_out_1_and(LOGICAL,63)
    assign valid_out_1_and_q = in_valid_in & cmp_cmp_q;

    // valid_1_reg(REG,61)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_1_reg_q <= $unsigned(1'b0);
        end
        else if (mmul_B1_branch_enable_q == 1'b1)
        begin
            valid_1_reg_q <= valid_out_1_and_q;
        end
    end

    // not_valid_1(LOGICAL,40)
    assign not_valid_1_q = ~ (valid_1_reg_q);

    // not_valid_or_not_stall_1(LOGICAL,42)
    assign not_valid_or_not_stall_1_q = not_valid_1_q | not_stall_in_1_q;

    // not_stall_in_0(LOGICAL,37)
    assign not_stall_in_0_q = ~ (in_stall_in_0);

    // valid_out_0_and(LOGICAL,62)
    assign valid_out_0_and_q = in_valid_in & in_cmp;

    // valid_0_reg(REG,60)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_0_reg_q <= $unsigned(1'b0);
        end
        else if (mmul_B1_branch_enable_q == 1'b1)
        begin
            valid_0_reg_q <= valid_out_0_and_q;
        end
    end

    // not_valid_0(LOGICAL,39)
    assign not_valid_0_q = ~ (valid_0_reg_q);

    // not_valid_or_not_stall_0(LOGICAL,41)
    assign not_valid_or_not_stall_0_q = not_valid_0_q | not_stall_in_0_q;

    // mmul_B1_branch_enable(LOGICAL,35)
    assign mmul_B1_branch_enable_q = not_valid_or_not_stall_0_q & not_valid_or_not_stall_1_q;

    // acl_global_id_077_reg(REG,2)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            acl_global_id_077_reg_q <= $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (mmul_B1_branch_enable_q == 1'b1)
        begin
            acl_global_id_077_reg_q <= in_acl_global_id_077;
        end
    end

    // out_acl_global_id_077(GPOUT,43)
    assign out_acl_global_id_077 = acl_global_id_077_reg_q;

    // acl_global_id_179_reg(REG,3)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            acl_global_id_179_reg_q <= $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (mmul_B1_branch_enable_q == 1'b1)
        begin
            acl_global_id_179_reg_q <= in_acl_global_id_179;
        end
    end

    // out_acl_global_id_179(GPOUT,44)
    assign out_acl_global_id_179 = acl_global_id_179_reg_q;

    // acl_local_id_080_reg(REG,4)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            acl_local_id_080_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (mmul_B1_branch_enable_q == 1'b1)
        begin
            acl_local_id_080_reg_q <= in_acl_local_id_080;
        end
    end

    // out_acl_local_id_080(GPOUT,45)
    assign out_acl_local_id_080 = acl_local_id_080_reg_q;

    // add43_reg(REG,5)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            add43_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (mmul_B1_branch_enable_q == 1'b1)
        begin
            add43_reg_q <= in_add43;
        end
    end

    // out_add43(GPOUT,46)
    assign out_add43 = add43_reg_q;

    // add44_reg(REG,6)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            add44_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (mmul_B1_branch_enable_q == 1'b1)
        begin
            add44_reg_q <= in_add44;
        end
    end

    // out_add44(GPOUT,47)
    assign out_add44 = add44_reg_q;

    // c0_exe168_reg(REG,7)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe168_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (mmul_B1_branch_enable_q == 1'b1)
        begin
            c0_exe168_reg_q <= in_c0_exe168;
        end
    end

    // out_c0_exe168(GPOUT,48)
    assign out_c0_exe168 = c0_exe168_reg_q;

    // c0_exe2141_reg(REG,8)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe2141_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (mmul_B1_branch_enable_q == 1'b1)
        begin
            c0_exe2141_reg_q <= $unsigned(in_c0_exe2141);
        end
    end

    // out_c0_exe2141(GPOUT,49)
    assign out_c0_exe2141 = c0_exe2141_reg_q;

    // c0_exe269_reg(REG,9)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe269_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (mmul_B1_branch_enable_q == 1'b1)
        begin
            c0_exe269_reg_q <= in_c0_exe269;
        end
    end

    // out_c0_exe269(GPOUT,50)
    assign out_c0_exe269 = c0_exe269_reg_q;

    // c0_exe370_reg(REG,10)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe370_reg_q <= $unsigned(1'b0);
        end
        else if (mmul_B1_branch_enable_q == 1'b1)
        begin
            c0_exe370_reg_q <= in_c0_exe370;
        end
    end

    // out_c0_exe370(GPOUT,51)
    assign out_c0_exe370 = c0_exe370_reg_q;

    // c0_exe671_reg(REG,11)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe671_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (mmul_B1_branch_enable_q == 1'b1)
        begin
            c0_exe671_reg_q <= in_c0_exe671;
        end
    end

    // out_c0_exe671(GPOUT,52)
    assign out_c0_exe671 = c0_exe671_reg_q;

    // c0_exe772_reg(REG,12)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe772_reg_q <= $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (mmul_B1_branch_enable_q == 1'b1)
        begin
            c0_exe772_reg_q <= in_c0_exe772;
        end
    end

    // out_c0_exe772(GPOUT,53)
    assign out_c0_exe772 = c0_exe772_reg_q;

    // c0_exe873_reg(REG,13)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe873_reg_q <= $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (mmul_B1_branch_enable_q == 1'b1)
        begin
            c0_exe873_reg_q <= in_c0_exe873;
        end
    end

    // out_c0_exe873(GPOUT,54)
    assign out_c0_exe873 = c0_exe873_reg_q;

    // c0_exe974_reg(REG,14)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe974_reg_q <= $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (mmul_B1_branch_enable_q == 1'b1)
        begin
            c0_exe974_reg_q <= in_c0_exe974;
        end
    end

    // out_c0_exe974(GPOUT,55)
    assign out_c0_exe974 = c0_exe974_reg_q;

    // inc46_reg(REG,16)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            inc46_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (mmul_B1_branch_enable_q == 1'b1)
        begin
            inc46_reg_q <= in_inc46;
        end
    end

    // out_inc46(GPOUT,56)
    assign out_inc46 = inc46_reg_q;

    // mmul_B1_branch_enable_not(LOGICAL,36)
    assign mmul_B1_branch_enable_not_q = ~ (mmul_B1_branch_enable_q);

    // out_stall_out(GPOUT,57)
    assign out_stall_out = mmul_B1_branch_enable_not_q;

    // out_valid_out_0(GPOUT,58)
    assign out_valid_out_0 = valid_0_reg_q;

    // out_valid_out_1(GPOUT,59)
    assign out_valid_out_1 = valid_1_reg_q;

endmodule
