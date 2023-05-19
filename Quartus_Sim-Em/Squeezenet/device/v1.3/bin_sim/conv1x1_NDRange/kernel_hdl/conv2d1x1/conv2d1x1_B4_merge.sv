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

// SystemVerilog created from conv2d1x1_B4_merge
// SystemVerilog created on Wed May 17 11:22:46 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2d1x1_B4_merge (
    input wire [63:0] in_acl_global_id_132_0,
    input wire [63:0] in_acl_global_id_132_1,
    input wire [63:0] in_c0_exe11_0,
    input wire [63:0] in_c0_exe11_1,
    input wire [31:0] in_c0_exe14927_0,
    input wire [31:0] in_c0_exe14927_1,
    input wire [31:0] in_c0_exe34_0,
    input wire [31:0] in_c0_exe34_1,
    input wire [63:0] in_c0_exe48_0,
    input wire [63:0] in_c0_exe48_1,
    input wire [0:0] in_c0_exe511_0,
    input wire [0:0] in_c0_exe511_1,
    input wire [0:0] in_c0_exe613_0,
    input wire [0:0] in_c0_exe613_1,
    input wire [0:0] in_c0_exe716_0,
    input wire [0:0] in_c0_exe716_1,
    input wire [0:0] in_c0_exe820_0,
    input wire [0:0] in_c0_exe820_1,
    input wire [0:0] in_c0_exe922_0,
    input wire [0:0] in_c0_exe922_1,
    input wire [31:0] in_j_05926_0,
    input wire [31:0] in_j_05926_1,
    input wire [31:0] in_k_057_0,
    input wire [31:0] in_k_057_1,
    input wire [0:0] in_stall_in,
    input wire [31:0] in_tmp_056_0,
    input wire [31:0] in_tmp_056_1,
    input wire [31:0] in_unnamed_conv2d1x16_0,
    input wire [31:0] in_unnamed_conv2d1x16_1,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [63:0] out_acl_global_id_132,
    output wire [63:0] out_c0_exe11,
    output wire [31:0] out_c0_exe14927,
    output wire [31:0] out_c0_exe34,
    output wire [63:0] out_c0_exe48,
    output wire [0:0] out_c0_exe511,
    output wire [0:0] out_c0_exe613,
    output wire [0:0] out_c0_exe716,
    output wire [0:0] out_c0_exe820,
    output wire [0:0] out_c0_exe922,
    output wire [31:0] out_j_05926,
    output wire [31:0] out_k_057,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [31:0] out_tmp_056,
    output wire [31:0] out_unnamed_conv2d1x16,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    wire [0:0] acl_global_id_132_mux_s;
    reg [63:0] acl_global_id_132_mux_q;
    wire [0:0] c0_exe11_mux_s;
    reg [63:0] c0_exe11_mux_q;
    wire [0:0] c0_exe14927_mux_s;
    reg [31:0] c0_exe14927_mux_q;
    wire [0:0] c0_exe34_mux_s;
    reg [31:0] c0_exe34_mux_q;
    wire [0:0] c0_exe48_mux_s;
    reg [63:0] c0_exe48_mux_q;
    wire [0:0] c0_exe511_mux_s;
    reg [0:0] c0_exe511_mux_q;
    wire [0:0] c0_exe613_mux_s;
    reg [0:0] c0_exe613_mux_q;
    wire [0:0] c0_exe716_mux_s;
    reg [0:0] c0_exe716_mux_q;
    wire [0:0] c0_exe820_mux_s;
    reg [0:0] c0_exe820_mux_q;
    wire [0:0] c0_exe922_mux_s;
    reg [0:0] c0_exe922_mux_q;
    wire [0:0] j_05926_mux_s;
    reg [31:0] j_05926_mux_q;
    wire [0:0] k_057_mux_s;
    reg [31:0] k_057_mux_q;
    wire [0:0] stall_out_q;
    wire [0:0] stall_out_1_specific_q;
    wire [0:0] tmp_056_mux_s;
    reg [31:0] tmp_056_mux_q;
    wire [0:0] unnamed_conv2d1x16_mux_s;
    reg [31:0] unnamed_conv2d1x16_mux_q;
    wire [0:0] valid_or_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // acl_global_id_132_mux(MUX,2)
    assign acl_global_id_132_mux_s = in_valid_in_0;
    always @(acl_global_id_132_mux_s or in_acl_global_id_132_1 or in_acl_global_id_132_0)
    begin
        unique case (acl_global_id_132_mux_s)
            1'b0 : acl_global_id_132_mux_q = in_acl_global_id_132_1;
            1'b1 : acl_global_id_132_mux_q = in_acl_global_id_132_0;
            default : acl_global_id_132_mux_q = 64'b0;
        endcase
    end

    // out_acl_global_id_132(GPOUT,45)
    assign out_acl_global_id_132 = acl_global_id_132_mux_q;

    // c0_exe11_mux(MUX,3)
    assign c0_exe11_mux_s = in_valid_in_0;
    always @(c0_exe11_mux_s or in_c0_exe11_1 or in_c0_exe11_0)
    begin
        unique case (c0_exe11_mux_s)
            1'b0 : c0_exe11_mux_q = in_c0_exe11_1;
            1'b1 : c0_exe11_mux_q = in_c0_exe11_0;
            default : c0_exe11_mux_q = 64'b0;
        endcase
    end

    // out_c0_exe11(GPOUT,46)
    assign out_c0_exe11 = c0_exe11_mux_q;

    // c0_exe14927_mux(MUX,4)
    assign c0_exe14927_mux_s = in_valid_in_0;
    always @(c0_exe14927_mux_s or in_c0_exe14927_1 or in_c0_exe14927_0)
    begin
        unique case (c0_exe14927_mux_s)
            1'b0 : c0_exe14927_mux_q = in_c0_exe14927_1;
            1'b1 : c0_exe14927_mux_q = in_c0_exe14927_0;
            default : c0_exe14927_mux_q = 32'b0;
        endcase
    end

    // out_c0_exe14927(GPOUT,47)
    assign out_c0_exe14927 = c0_exe14927_mux_q;

    // c0_exe34_mux(MUX,5)
    assign c0_exe34_mux_s = in_valid_in_0;
    always @(c0_exe34_mux_s or in_c0_exe34_1 or in_c0_exe34_0)
    begin
        unique case (c0_exe34_mux_s)
            1'b0 : c0_exe34_mux_q = in_c0_exe34_1;
            1'b1 : c0_exe34_mux_q = in_c0_exe34_0;
            default : c0_exe34_mux_q = 32'b0;
        endcase
    end

    // out_c0_exe34(GPOUT,48)
    assign out_c0_exe34 = c0_exe34_mux_q;

    // c0_exe48_mux(MUX,6)
    assign c0_exe48_mux_s = in_valid_in_0;
    always @(c0_exe48_mux_s or in_c0_exe48_1 or in_c0_exe48_0)
    begin
        unique case (c0_exe48_mux_s)
            1'b0 : c0_exe48_mux_q = in_c0_exe48_1;
            1'b1 : c0_exe48_mux_q = in_c0_exe48_0;
            default : c0_exe48_mux_q = 64'b0;
        endcase
    end

    // out_c0_exe48(GPOUT,49)
    assign out_c0_exe48 = c0_exe48_mux_q;

    // c0_exe511_mux(MUX,7)
    assign c0_exe511_mux_s = in_valid_in_0;
    always @(c0_exe511_mux_s or in_c0_exe511_1 or in_c0_exe511_0)
    begin
        unique case (c0_exe511_mux_s)
            1'b0 : c0_exe511_mux_q = in_c0_exe511_1;
            1'b1 : c0_exe511_mux_q = in_c0_exe511_0;
            default : c0_exe511_mux_q = 1'b0;
        endcase
    end

    // out_c0_exe511(GPOUT,50)
    assign out_c0_exe511 = c0_exe511_mux_q;

    // c0_exe613_mux(MUX,8)
    assign c0_exe613_mux_s = in_valid_in_0;
    always @(c0_exe613_mux_s or in_c0_exe613_1 or in_c0_exe613_0)
    begin
        unique case (c0_exe613_mux_s)
            1'b0 : c0_exe613_mux_q = in_c0_exe613_1;
            1'b1 : c0_exe613_mux_q = in_c0_exe613_0;
            default : c0_exe613_mux_q = 1'b0;
        endcase
    end

    // out_c0_exe613(GPOUT,51)
    assign out_c0_exe613 = c0_exe613_mux_q;

    // c0_exe716_mux(MUX,9)
    assign c0_exe716_mux_s = in_valid_in_0;
    always @(c0_exe716_mux_s or in_c0_exe716_1 or in_c0_exe716_0)
    begin
        unique case (c0_exe716_mux_s)
            1'b0 : c0_exe716_mux_q = in_c0_exe716_1;
            1'b1 : c0_exe716_mux_q = in_c0_exe716_0;
            default : c0_exe716_mux_q = 1'b0;
        endcase
    end

    // out_c0_exe716(GPOUT,52)
    assign out_c0_exe716 = c0_exe716_mux_q;

    // c0_exe820_mux(MUX,10)
    assign c0_exe820_mux_s = in_valid_in_0;
    always @(c0_exe820_mux_s or in_c0_exe820_1 or in_c0_exe820_0)
    begin
        unique case (c0_exe820_mux_s)
            1'b0 : c0_exe820_mux_q = in_c0_exe820_1;
            1'b1 : c0_exe820_mux_q = in_c0_exe820_0;
            default : c0_exe820_mux_q = 1'b0;
        endcase
    end

    // out_c0_exe820(GPOUT,53)
    assign out_c0_exe820 = c0_exe820_mux_q;

    // c0_exe922_mux(MUX,11)
    assign c0_exe922_mux_s = in_valid_in_0;
    always @(c0_exe922_mux_s or in_c0_exe922_1 or in_c0_exe922_0)
    begin
        unique case (c0_exe922_mux_s)
            1'b0 : c0_exe922_mux_q = in_c0_exe922_1;
            1'b1 : c0_exe922_mux_q = in_c0_exe922_0;
            default : c0_exe922_mux_q = 1'b0;
        endcase
    end

    // out_c0_exe922(GPOUT,54)
    assign out_c0_exe922 = c0_exe922_mux_q;

    // j_05926_mux(MUX,43)
    assign j_05926_mux_s = in_valid_in_0;
    always @(j_05926_mux_s or in_j_05926_1 or in_j_05926_0)
    begin
        unique case (j_05926_mux_s)
            1'b0 : j_05926_mux_q = in_j_05926_1;
            1'b1 : j_05926_mux_q = in_j_05926_0;
            default : j_05926_mux_q = 32'b0;
        endcase
    end

    // out_j_05926(GPOUT,55)
    assign out_j_05926 = j_05926_mux_q;

    // k_057_mux(MUX,44)
    assign k_057_mux_s = in_valid_in_0;
    always @(k_057_mux_s or in_k_057_1 or in_k_057_0)
    begin
        unique case (k_057_mux_s)
            1'b0 : k_057_mux_q = in_k_057_1;
            1'b1 : k_057_mux_q = in_k_057_0;
            default : k_057_mux_q = 32'b0;
        endcase
    end

    // out_k_057(GPOUT,56)
    assign out_k_057 = k_057_mux_q;

    // valid_or(LOGICAL,66)
    assign valid_or_q = in_valid_in_0 | in_valid_in_1;

    // stall_out(LOGICAL,62)
    assign stall_out_q = valid_or_q & in_stall_in;

    // out_stall_out_0(GPOUT,57)
    assign out_stall_out_0 = stall_out_q;

    // stall_out_1_specific(LOGICAL,63)
    assign stall_out_1_specific_q = in_valid_in_0 | stall_out_q;

    // out_stall_out_1(GPOUT,58)
    assign out_stall_out_1 = stall_out_1_specific_q;

    // tmp_056_mux(MUX,64)
    assign tmp_056_mux_s = in_valid_in_0;
    always @(tmp_056_mux_s or in_tmp_056_1 or in_tmp_056_0)
    begin
        unique case (tmp_056_mux_s)
            1'b0 : tmp_056_mux_q = in_tmp_056_1;
            1'b1 : tmp_056_mux_q = in_tmp_056_0;
            default : tmp_056_mux_q = 32'b0;
        endcase
    end

    // out_tmp_056(GPOUT,59)
    assign out_tmp_056 = tmp_056_mux_q;

    // unnamed_conv2d1x16_mux(MUX,65)
    assign unnamed_conv2d1x16_mux_s = in_valid_in_0;
    always @(unnamed_conv2d1x16_mux_s or in_unnamed_conv2d1x16_1 or in_unnamed_conv2d1x16_0)
    begin
        unique case (unnamed_conv2d1x16_mux_s)
            1'b0 : unnamed_conv2d1x16_mux_q = in_unnamed_conv2d1x16_1;
            1'b1 : unnamed_conv2d1x16_mux_q = in_unnamed_conv2d1x16_0;
            default : unnamed_conv2d1x16_mux_q = 32'b0;
        endcase
    end

    // out_unnamed_conv2d1x16(GPOUT,60)
    assign out_unnamed_conv2d1x16 = unnamed_conv2d1x16_mux_q;

    // out_valid_out(GPOUT,61)
    assign out_valid_out = valid_or_q;

endmodule
