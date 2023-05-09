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

// SystemVerilog created from mmul_B1_merge
// SystemVerilog created on Sat May  6 18:14:24 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module mmul_B1_merge (
    input wire [31:0] in_Abase_065_0,
    input wire [31:0] in_Abase_065_1,
    input wire [31:0] in_Bbase_066_0,
    input wire [31:0] in_Bbase_066_1,
    input wire [31:0] in_Ctmp_063_0,
    input wire [31:0] in_Ctmp_063_1,
    input wire [31:0] in_Kblk_064_0,
    input wire [31:0] in_Kblk_064_1,
    input wire [63:0] in_acl_global_id_077_0,
    input wire [63:0] in_acl_global_id_077_1,
    input wire [63:0] in_acl_global_id_179_0,
    input wire [63:0] in_acl_global_id_179_1,
    input wire [31:0] in_acl_local_id_080_0,
    input wire [31:0] in_acl_local_id_080_1,
    input wire [31:0] in_c0_exe168_0,
    input wire [31:0] in_c0_exe168_1,
    input wire [31:0] in_c0_exe269_0,
    input wire [31:0] in_c0_exe269_1,
    input wire [0:0] in_c0_exe370_0,
    input wire [0:0] in_c0_exe370_1,
    input wire [31:0] in_c0_exe671_0,
    input wire [31:0] in_c0_exe671_1,
    input wire [63:0] in_c0_exe772_0,
    input wire [63:0] in_c0_exe772_1,
    input wire [63:0] in_c0_exe873_0,
    input wire [63:0] in_c0_exe873_1,
    input wire [63:0] in_c0_exe974_0,
    input wire [63:0] in_c0_exe974_1,
    input wire [31:0] in_encoder_mmul_B1_merge_priority_encoder_workgroup_size,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [31:0] out_Abase_065,
    output wire [31:0] out_Bbase_066,
    output wire [31:0] out_Ctmp_063,
    output wire [31:0] out_Kblk_064,
    output wire [63:0] out_acl_global_id_077,
    output wire [63:0] out_acl_global_id_179,
    output wire [31:0] out_acl_local_id_080,
    output wire [31:0] out_c0_exe168,
    output wire [31:0] out_c0_exe269,
    output wire [0:0] out_c0_exe370,
    output wire [31:0] out_c0_exe671,
    output wire [63:0] out_c0_exe772,
    output wire [63:0] out_c0_exe873,
    output wire [63:0] out_c0_exe974,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    wire [0:0] Abase_065_mux_s;
    reg [31:0] Abase_065_mux_q;
    wire [0:0] Bbase_066_mux_s;
    reg [31:0] Bbase_066_mux_q;
    wire [0:0] Ctmp_063_mux_s;
    reg [31:0] Ctmp_063_mux_q;
    wire [0:0] Kblk_064_mux_s;
    reg [31:0] Kblk_064_mux_q;
    wire [0:0] acl_global_id_077_mux_s;
    reg [63:0] acl_global_id_077_mux_q;
    wire [0:0] acl_global_id_179_mux_s;
    reg [63:0] acl_global_id_179_mux_q;
    wire [0:0] acl_local_id_080_mux_s;
    reg [31:0] acl_local_id_080_mux_q;
    wire [0:0] c0_exe168_mux_s;
    reg [31:0] c0_exe168_mux_q;
    wire [0:0] c0_exe269_mux_s;
    reg [31:0] c0_exe269_mux_q;
    wire [0:0] c0_exe370_mux_s;
    reg [0:0] c0_exe370_mux_q;
    wire [0:0] c0_exe671_mux_s;
    reg [31:0] c0_exe671_mux_q;
    wire [0:0] c0_exe772_mux_s;
    reg [63:0] c0_exe772_mux_q;
    wire [0:0] c0_exe873_mux_s;
    reg [63:0] c0_exe873_mux_q;
    wire [0:0] c0_exe974_mux_s;
    reg [63:0] c0_exe974_mux_q;
    wire [0:0] not_select_q;
    wire [0:0] priority_encoder_out_o_select;
    wire [0:0] priority_encoder_out_o_valid;
    wire [0:0] stall_out_0_specific_q;
    wire [0:0] stall_out_1_specific_q;


    // priority_encoder(BLACKBOX,66)
    mmul_priority_encoder thepriority_encoder (
        .in_i_stall(in_stall_in),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .in_workgroup_size(in_encoder_mmul_B1_merge_priority_encoder_workgroup_size),
        .out_o_select(priority_encoder_out_o_select),
        .out_o_valid(priority_encoder_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // Abase_065_mux(MUX,2)
    assign Abase_065_mux_s = priority_encoder_out_o_select;
    always @(Abase_065_mux_s or in_Abase_065_0 or in_Abase_065_1)
    begin
        unique case (Abase_065_mux_s)
            1'b0 : Abase_065_mux_q = in_Abase_065_0;
            1'b1 : Abase_065_mux_q = in_Abase_065_1;
            default : Abase_065_mux_q = 32'b0;
        endcase
    end

    // out_Abase_065(GPOUT,49)
    assign out_Abase_065 = Abase_065_mux_q;

    // Bbase_066_mux(MUX,3)
    assign Bbase_066_mux_s = priority_encoder_out_o_select;
    always @(Bbase_066_mux_s or in_Bbase_066_0 or in_Bbase_066_1)
    begin
        unique case (Bbase_066_mux_s)
            1'b0 : Bbase_066_mux_q = in_Bbase_066_0;
            1'b1 : Bbase_066_mux_q = in_Bbase_066_1;
            default : Bbase_066_mux_q = 32'b0;
        endcase
    end

    // out_Bbase_066(GPOUT,50)
    assign out_Bbase_066 = Bbase_066_mux_q;

    // Ctmp_063_mux(MUX,4)
    assign Ctmp_063_mux_s = priority_encoder_out_o_select;
    always @(Ctmp_063_mux_s or in_Ctmp_063_0 or in_Ctmp_063_1)
    begin
        unique case (Ctmp_063_mux_s)
            1'b0 : Ctmp_063_mux_q = in_Ctmp_063_0;
            1'b1 : Ctmp_063_mux_q = in_Ctmp_063_1;
            default : Ctmp_063_mux_q = 32'b0;
        endcase
    end

    // out_Ctmp_063(GPOUT,51)
    assign out_Ctmp_063 = Ctmp_063_mux_q;

    // Kblk_064_mux(MUX,5)
    assign Kblk_064_mux_s = priority_encoder_out_o_select;
    always @(Kblk_064_mux_s or in_Kblk_064_0 or in_Kblk_064_1)
    begin
        unique case (Kblk_064_mux_s)
            1'b0 : Kblk_064_mux_q = in_Kblk_064_0;
            1'b1 : Kblk_064_mux_q = in_Kblk_064_1;
            default : Kblk_064_mux_q = 32'b0;
        endcase
    end

    // out_Kblk_064(GPOUT,52)
    assign out_Kblk_064 = Kblk_064_mux_q;

    // acl_global_id_077_mux(MUX,6)
    assign acl_global_id_077_mux_s = priority_encoder_out_o_select;
    always @(acl_global_id_077_mux_s or in_acl_global_id_077_0 or in_acl_global_id_077_1)
    begin
        unique case (acl_global_id_077_mux_s)
            1'b0 : acl_global_id_077_mux_q = in_acl_global_id_077_0;
            1'b1 : acl_global_id_077_mux_q = in_acl_global_id_077_1;
            default : acl_global_id_077_mux_q = 64'b0;
        endcase
    end

    // out_acl_global_id_077(GPOUT,53)
    assign out_acl_global_id_077 = acl_global_id_077_mux_q;

    // acl_global_id_179_mux(MUX,7)
    assign acl_global_id_179_mux_s = priority_encoder_out_o_select;
    always @(acl_global_id_179_mux_s or in_acl_global_id_179_0 or in_acl_global_id_179_1)
    begin
        unique case (acl_global_id_179_mux_s)
            1'b0 : acl_global_id_179_mux_q = in_acl_global_id_179_0;
            1'b1 : acl_global_id_179_mux_q = in_acl_global_id_179_1;
            default : acl_global_id_179_mux_q = 64'b0;
        endcase
    end

    // out_acl_global_id_179(GPOUT,54)
    assign out_acl_global_id_179 = acl_global_id_179_mux_q;

    // acl_local_id_080_mux(MUX,8)
    assign acl_local_id_080_mux_s = priority_encoder_out_o_select;
    always @(acl_local_id_080_mux_s or in_acl_local_id_080_0 or in_acl_local_id_080_1)
    begin
        unique case (acl_local_id_080_mux_s)
            1'b0 : acl_local_id_080_mux_q = in_acl_local_id_080_0;
            1'b1 : acl_local_id_080_mux_q = in_acl_local_id_080_1;
            default : acl_local_id_080_mux_q = 32'b0;
        endcase
    end

    // out_acl_local_id_080(GPOUT,55)
    assign out_acl_local_id_080 = acl_local_id_080_mux_q;

    // c0_exe168_mux(MUX,9)
    assign c0_exe168_mux_s = priority_encoder_out_o_select;
    always @(c0_exe168_mux_s or in_c0_exe168_0 or in_c0_exe168_1)
    begin
        unique case (c0_exe168_mux_s)
            1'b0 : c0_exe168_mux_q = in_c0_exe168_0;
            1'b1 : c0_exe168_mux_q = in_c0_exe168_1;
            default : c0_exe168_mux_q = 32'b0;
        endcase
    end

    // out_c0_exe168(GPOUT,56)
    assign out_c0_exe168 = c0_exe168_mux_q;

    // c0_exe269_mux(MUX,10)
    assign c0_exe269_mux_s = priority_encoder_out_o_select;
    always @(c0_exe269_mux_s or in_c0_exe269_0 or in_c0_exe269_1)
    begin
        unique case (c0_exe269_mux_s)
            1'b0 : c0_exe269_mux_q = in_c0_exe269_0;
            1'b1 : c0_exe269_mux_q = in_c0_exe269_1;
            default : c0_exe269_mux_q = 32'b0;
        endcase
    end

    // out_c0_exe269(GPOUT,57)
    assign out_c0_exe269 = c0_exe269_mux_q;

    // c0_exe370_mux(MUX,11)
    assign c0_exe370_mux_s = priority_encoder_out_o_select;
    always @(c0_exe370_mux_s or in_c0_exe370_0 or in_c0_exe370_1)
    begin
        unique case (c0_exe370_mux_s)
            1'b0 : c0_exe370_mux_q = in_c0_exe370_0;
            1'b1 : c0_exe370_mux_q = in_c0_exe370_1;
            default : c0_exe370_mux_q = 1'b0;
        endcase
    end

    // out_c0_exe370(GPOUT,58)
    assign out_c0_exe370 = c0_exe370_mux_q;

    // c0_exe671_mux(MUX,12)
    assign c0_exe671_mux_s = priority_encoder_out_o_select;
    always @(c0_exe671_mux_s or in_c0_exe671_0 or in_c0_exe671_1)
    begin
        unique case (c0_exe671_mux_s)
            1'b0 : c0_exe671_mux_q = in_c0_exe671_0;
            1'b1 : c0_exe671_mux_q = in_c0_exe671_1;
            default : c0_exe671_mux_q = 32'b0;
        endcase
    end

    // out_c0_exe671(GPOUT,59)
    assign out_c0_exe671 = c0_exe671_mux_q;

    // c0_exe772_mux(MUX,13)
    assign c0_exe772_mux_s = priority_encoder_out_o_select;
    always @(c0_exe772_mux_s or in_c0_exe772_0 or in_c0_exe772_1)
    begin
        unique case (c0_exe772_mux_s)
            1'b0 : c0_exe772_mux_q = in_c0_exe772_0;
            1'b1 : c0_exe772_mux_q = in_c0_exe772_1;
            default : c0_exe772_mux_q = 64'b0;
        endcase
    end

    // out_c0_exe772(GPOUT,60)
    assign out_c0_exe772 = c0_exe772_mux_q;

    // c0_exe873_mux(MUX,14)
    assign c0_exe873_mux_s = priority_encoder_out_o_select;
    always @(c0_exe873_mux_s or in_c0_exe873_0 or in_c0_exe873_1)
    begin
        unique case (c0_exe873_mux_s)
            1'b0 : c0_exe873_mux_q = in_c0_exe873_0;
            1'b1 : c0_exe873_mux_q = in_c0_exe873_1;
            default : c0_exe873_mux_q = 64'b0;
        endcase
    end

    // out_c0_exe873(GPOUT,61)
    assign out_c0_exe873 = c0_exe873_mux_q;

    // c0_exe974_mux(MUX,15)
    assign c0_exe974_mux_s = priority_encoder_out_o_select;
    always @(c0_exe974_mux_s or in_c0_exe974_0 or in_c0_exe974_1)
    begin
        unique case (c0_exe974_mux_s)
            1'b0 : c0_exe974_mux_q = in_c0_exe974_0;
            1'b1 : c0_exe974_mux_q = in_c0_exe974_1;
            default : c0_exe974_mux_q = 64'b0;
        endcase
    end

    // out_c0_exe974(GPOUT,62)
    assign out_c0_exe974 = c0_exe974_mux_q;

    // stall_out_0_specific(LOGICAL,67)
    assign stall_out_0_specific_q = in_stall_in | priority_encoder_out_o_select;

    // out_stall_out_0(GPOUT,63)
    assign out_stall_out_0 = stall_out_0_specific_q;

    // not_select(LOGICAL,48)
    assign not_select_q = ~ (priority_encoder_out_o_select);

    // stall_out_1_specific(LOGICAL,68)
    assign stall_out_1_specific_q = in_stall_in | not_select_q;

    // out_stall_out_1(GPOUT,64)
    assign out_stall_out_1 = stall_out_1_specific_q;

    // out_valid_out(GPOUT,65)
    assign out_valid_out = priority_encoder_out_o_valid;

endmodule
