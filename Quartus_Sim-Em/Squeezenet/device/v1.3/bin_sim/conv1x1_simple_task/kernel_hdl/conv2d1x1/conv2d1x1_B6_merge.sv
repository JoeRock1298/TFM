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

// SystemVerilog created from conv2d1x1_B6_merge
// SystemVerilog created on Wed May 17 13:49:22 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2d1x1_B6_merge (
    input wire [63:0] in_filter_weight_addr_053_replace_phi37_pop1474_0,
    input wire [63:0] in_filter_weight_addr_053_replace_phi37_pop1474_1,
    input wire [63:0] in_filter_weight_addr_053_replace_phi61_0,
    input wire [63:0] in_filter_weight_addr_053_replace_phi61_1,
    input wire [0:0] in_forked_0,
    input wire [0:0] in_forked_1,
    input wire [31:0] in_ij_049_pop1272_0,
    input wire [31:0] in_ij_049_pop1272_1,
    input wire [31:0] in_lm42_pop1878_0,
    input wire [31:0] in_lm42_pop1878_1,
    input wire [31:0] in_lm67_0,
    input wire [31:0] in_lm67_1,
    input wire [31:0] in_mul39_pop1575_0,
    input wire [31:0] in_mul39_pop1575_1,
    input wire [31:0] in_mul64_0,
    input wire [31:0] in_mul64_1,
    input wire [0:0] in_notcmp2571_0,
    input wire [0:0] in_notcmp2571_1,
    input wire [0:0] in_notcmp3044_pop1979_0,
    input wire [0:0] in_notcmp3044_pop1979_1,
    input wire [0:0] in_notcmp3070_0,
    input wire [0:0] in_notcmp3070_1,
    input wire [63:0] in_output_im_addr_054_replace_phi35_pop1373_0,
    input wire [63:0] in_output_im_addr_054_replace_phi35_pop1373_1,
    input wire [63:0] in_output_im_addr_054_replace_phi58_0,
    input wire [63:0] in_output_im_addr_054_replace_phi58_1,
    input wire [0:0] in_pop1676_0,
    input wire [0:0] in_pop1676_1,
    input wire [0:0] in_pop1777_0,
    input wire [0:0] in_pop1777_1,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_unnamed_conv2d1x113_0,
    input wire [0:0] in_unnamed_conv2d1x113_1,
    input wire [0:0] in_unnamed_conv2d1x114_0,
    input wire [0:0] in_unnamed_conv2d1x114_1,
    input wire [32:0] in_unnamed_conv2d1x115_0,
    input wire [32:0] in_unnamed_conv2d1x115_1,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [63:0] out_filter_weight_addr_053_replace_phi37_pop1474,
    output wire [63:0] out_filter_weight_addr_053_replace_phi61,
    output wire [0:0] out_forked,
    output wire [31:0] out_ij_049_pop1272,
    output wire [31:0] out_lm42_pop1878,
    output wire [31:0] out_lm67,
    output wire [31:0] out_mul39_pop1575,
    output wire [31:0] out_mul64,
    output wire [0:0] out_notcmp2571,
    output wire [0:0] out_notcmp3044_pop1979,
    output wire [0:0] out_notcmp3070,
    output wire [63:0] out_output_im_addr_054_replace_phi35_pop1373,
    output wire [63:0] out_output_im_addr_054_replace_phi58,
    output wire [0:0] out_pop1676,
    output wire [0:0] out_pop1777,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [0:0] out_unnamed_conv2d1x113,
    output wire [0:0] out_unnamed_conv2d1x114,
    output wire [32:0] out_unnamed_conv2d1x115,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    wire [0:0] filter_weight_addr_053_replace_phi37_pop1474_mux_s;
    reg [63:0] filter_weight_addr_053_replace_phi37_pop1474_mux_q;
    wire [0:0] filter_weight_addr_053_replace_phi61_mux_s;
    reg [63:0] filter_weight_addr_053_replace_phi61_mux_q;
    wire [0:0] forked_mux_s;
    reg [0:0] forked_mux_q;
    wire [0:0] ij_049_pop1272_mux_s;
    reg [31:0] ij_049_pop1272_mux_q;
    wire [0:0] lm42_pop1878_mux_s;
    reg [31:0] lm42_pop1878_mux_q;
    wire [0:0] lm67_mux_s;
    reg [31:0] lm67_mux_q;
    wire [0:0] mul39_pop1575_mux_s;
    reg [31:0] mul39_pop1575_mux_q;
    wire [0:0] mul64_mux_s;
    reg [31:0] mul64_mux_q;
    wire [0:0] notcmp2571_mux_s;
    reg [0:0] notcmp2571_mux_q;
    wire [0:0] notcmp3044_pop1979_mux_s;
    reg [0:0] notcmp3044_pop1979_mux_q;
    wire [0:0] notcmp3070_mux_s;
    reg [0:0] notcmp3070_mux_q;
    wire [0:0] output_im_addr_054_replace_phi35_pop1373_mux_s;
    reg [63:0] output_im_addr_054_replace_phi35_pop1373_mux_q;
    wire [0:0] output_im_addr_054_replace_phi58_mux_s;
    reg [63:0] output_im_addr_054_replace_phi58_mux_q;
    wire [0:0] pop1676_mux_s;
    reg [0:0] pop1676_mux_q;
    wire [0:0] pop1777_mux_s;
    reg [0:0] pop1777_mux_q;
    wire [0:0] stall_out_q;
    wire [0:0] stall_out_1_specific_q;
    wire [0:0] unnamed_conv2d1x113_mux_s;
    reg [0:0] unnamed_conv2d1x113_mux_q;
    wire [0:0] unnamed_conv2d1x114_mux_s;
    reg [0:0] unnamed_conv2d1x114_mux_q;
    wire [0:0] unnamed_conv2d1x115_mux_s;
    reg [32:0] unnamed_conv2d1x115_mux_q;
    wire [0:0] valid_or_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // filter_weight_addr_053_replace_phi37_pop1474_mux(MUX,2)
    assign filter_weight_addr_053_replace_phi37_pop1474_mux_s = in_valid_in_0;
    always @(filter_weight_addr_053_replace_phi37_pop1474_mux_s or in_filter_weight_addr_053_replace_phi37_pop1474_1 or in_filter_weight_addr_053_replace_phi37_pop1474_0)
    begin
        unique case (filter_weight_addr_053_replace_phi37_pop1474_mux_s)
            1'b0 : filter_weight_addr_053_replace_phi37_pop1474_mux_q = in_filter_weight_addr_053_replace_phi37_pop1474_1;
            1'b1 : filter_weight_addr_053_replace_phi37_pop1474_mux_q = in_filter_weight_addr_053_replace_phi37_pop1474_0;
            default : filter_weight_addr_053_replace_phi37_pop1474_mux_q = 64'b0;
        endcase
    end

    // out_filter_weight_addr_053_replace_phi37_pop1474(GPOUT,52)
    assign out_filter_weight_addr_053_replace_phi37_pop1474 = filter_weight_addr_053_replace_phi37_pop1474_mux_q;

    // filter_weight_addr_053_replace_phi61_mux(MUX,3)
    assign filter_weight_addr_053_replace_phi61_mux_s = in_valid_in_0;
    always @(filter_weight_addr_053_replace_phi61_mux_s or in_filter_weight_addr_053_replace_phi61_1 or in_filter_weight_addr_053_replace_phi61_0)
    begin
        unique case (filter_weight_addr_053_replace_phi61_mux_s)
            1'b0 : filter_weight_addr_053_replace_phi61_mux_q = in_filter_weight_addr_053_replace_phi61_1;
            1'b1 : filter_weight_addr_053_replace_phi61_mux_q = in_filter_weight_addr_053_replace_phi61_0;
            default : filter_weight_addr_053_replace_phi61_mux_q = 64'b0;
        endcase
    end

    // out_filter_weight_addr_053_replace_phi61(GPOUT,53)
    assign out_filter_weight_addr_053_replace_phi61 = filter_weight_addr_053_replace_phi61_mux_q;

    // forked_mux(MUX,4)
    assign forked_mux_s = in_valid_in_0;
    always @(forked_mux_s or in_forked_1 or in_forked_0)
    begin
        unique case (forked_mux_s)
            1'b0 : forked_mux_q = in_forked_1;
            1'b1 : forked_mux_q = in_forked_0;
            default : forked_mux_q = 1'b0;
        endcase
    end

    // out_forked(GPOUT,54)
    assign out_forked = forked_mux_q;

    // ij_049_pop1272_mux(MUX,5)
    assign ij_049_pop1272_mux_s = in_valid_in_0;
    always @(ij_049_pop1272_mux_s or in_ij_049_pop1272_1 or in_ij_049_pop1272_0)
    begin
        unique case (ij_049_pop1272_mux_s)
            1'b0 : ij_049_pop1272_mux_q = in_ij_049_pop1272_1;
            1'b1 : ij_049_pop1272_mux_q = in_ij_049_pop1272_0;
            default : ij_049_pop1272_mux_q = 32'b0;
        endcase
    end

    // out_ij_049_pop1272(GPOUT,55)
    assign out_ij_049_pop1272 = ij_049_pop1272_mux_q;

    // lm42_pop1878_mux(MUX,45)
    assign lm42_pop1878_mux_s = in_valid_in_0;
    always @(lm42_pop1878_mux_s or in_lm42_pop1878_1 or in_lm42_pop1878_0)
    begin
        unique case (lm42_pop1878_mux_s)
            1'b0 : lm42_pop1878_mux_q = in_lm42_pop1878_1;
            1'b1 : lm42_pop1878_mux_q = in_lm42_pop1878_0;
            default : lm42_pop1878_mux_q = 32'b0;
        endcase
    end

    // out_lm42_pop1878(GPOUT,56)
    assign out_lm42_pop1878 = lm42_pop1878_mux_q;

    // lm67_mux(MUX,46)
    assign lm67_mux_s = in_valid_in_0;
    always @(lm67_mux_s or in_lm67_1 or in_lm67_0)
    begin
        unique case (lm67_mux_s)
            1'b0 : lm67_mux_q = in_lm67_1;
            1'b1 : lm67_mux_q = in_lm67_0;
            default : lm67_mux_q = 32'b0;
        endcase
    end

    // out_lm67(GPOUT,57)
    assign out_lm67 = lm67_mux_q;

    // mul39_pop1575_mux(MUX,47)
    assign mul39_pop1575_mux_s = in_valid_in_0;
    always @(mul39_pop1575_mux_s or in_mul39_pop1575_1 or in_mul39_pop1575_0)
    begin
        unique case (mul39_pop1575_mux_s)
            1'b0 : mul39_pop1575_mux_q = in_mul39_pop1575_1;
            1'b1 : mul39_pop1575_mux_q = in_mul39_pop1575_0;
            default : mul39_pop1575_mux_q = 32'b0;
        endcase
    end

    // out_mul39_pop1575(GPOUT,58)
    assign out_mul39_pop1575 = mul39_pop1575_mux_q;

    // mul64_mux(MUX,48)
    assign mul64_mux_s = in_valid_in_0;
    always @(mul64_mux_s or in_mul64_1 or in_mul64_0)
    begin
        unique case (mul64_mux_s)
            1'b0 : mul64_mux_q = in_mul64_1;
            1'b1 : mul64_mux_q = in_mul64_0;
            default : mul64_mux_q = 32'b0;
        endcase
    end

    // out_mul64(GPOUT,59)
    assign out_mul64 = mul64_mux_q;

    // notcmp2571_mux(MUX,49)
    assign notcmp2571_mux_s = in_valid_in_0;
    always @(notcmp2571_mux_s or in_notcmp2571_1 or in_notcmp2571_0)
    begin
        unique case (notcmp2571_mux_s)
            1'b0 : notcmp2571_mux_q = in_notcmp2571_1;
            1'b1 : notcmp2571_mux_q = in_notcmp2571_0;
            default : notcmp2571_mux_q = 1'b0;
        endcase
    end

    // out_notcmp2571(GPOUT,60)
    assign out_notcmp2571 = notcmp2571_mux_q;

    // notcmp3044_pop1979_mux(MUX,50)
    assign notcmp3044_pop1979_mux_s = in_valid_in_0;
    always @(notcmp3044_pop1979_mux_s or in_notcmp3044_pop1979_1 or in_notcmp3044_pop1979_0)
    begin
        unique case (notcmp3044_pop1979_mux_s)
            1'b0 : notcmp3044_pop1979_mux_q = in_notcmp3044_pop1979_1;
            1'b1 : notcmp3044_pop1979_mux_q = in_notcmp3044_pop1979_0;
            default : notcmp3044_pop1979_mux_q = 1'b0;
        endcase
    end

    // out_notcmp3044_pop1979(GPOUT,61)
    assign out_notcmp3044_pop1979 = notcmp3044_pop1979_mux_q;

    // notcmp3070_mux(MUX,51)
    assign notcmp3070_mux_s = in_valid_in_0;
    always @(notcmp3070_mux_s or in_notcmp3070_1 or in_notcmp3070_0)
    begin
        unique case (notcmp3070_mux_s)
            1'b0 : notcmp3070_mux_q = in_notcmp3070_1;
            1'b1 : notcmp3070_mux_q = in_notcmp3070_0;
            default : notcmp3070_mux_q = 1'b0;
        endcase
    end

    // out_notcmp3070(GPOUT,62)
    assign out_notcmp3070 = notcmp3070_mux_q;

    // output_im_addr_054_replace_phi35_pop1373_mux(MUX,73)
    assign output_im_addr_054_replace_phi35_pop1373_mux_s = in_valid_in_0;
    always @(output_im_addr_054_replace_phi35_pop1373_mux_s or in_output_im_addr_054_replace_phi35_pop1373_1 or in_output_im_addr_054_replace_phi35_pop1373_0)
    begin
        unique case (output_im_addr_054_replace_phi35_pop1373_mux_s)
            1'b0 : output_im_addr_054_replace_phi35_pop1373_mux_q = in_output_im_addr_054_replace_phi35_pop1373_1;
            1'b1 : output_im_addr_054_replace_phi35_pop1373_mux_q = in_output_im_addr_054_replace_phi35_pop1373_0;
            default : output_im_addr_054_replace_phi35_pop1373_mux_q = 64'b0;
        endcase
    end

    // out_output_im_addr_054_replace_phi35_pop1373(GPOUT,63)
    assign out_output_im_addr_054_replace_phi35_pop1373 = output_im_addr_054_replace_phi35_pop1373_mux_q;

    // output_im_addr_054_replace_phi58_mux(MUX,74)
    assign output_im_addr_054_replace_phi58_mux_s = in_valid_in_0;
    always @(output_im_addr_054_replace_phi58_mux_s or in_output_im_addr_054_replace_phi58_1 or in_output_im_addr_054_replace_phi58_0)
    begin
        unique case (output_im_addr_054_replace_phi58_mux_s)
            1'b0 : output_im_addr_054_replace_phi58_mux_q = in_output_im_addr_054_replace_phi58_1;
            1'b1 : output_im_addr_054_replace_phi58_mux_q = in_output_im_addr_054_replace_phi58_0;
            default : output_im_addr_054_replace_phi58_mux_q = 64'b0;
        endcase
    end

    // out_output_im_addr_054_replace_phi58(GPOUT,64)
    assign out_output_im_addr_054_replace_phi58 = output_im_addr_054_replace_phi58_mux_q;

    // pop1676_mux(MUX,75)
    assign pop1676_mux_s = in_valid_in_0;
    always @(pop1676_mux_s or in_pop1676_1 or in_pop1676_0)
    begin
        unique case (pop1676_mux_s)
            1'b0 : pop1676_mux_q = in_pop1676_1;
            1'b1 : pop1676_mux_q = in_pop1676_0;
            default : pop1676_mux_q = 1'b0;
        endcase
    end

    // out_pop1676(GPOUT,65)
    assign out_pop1676 = pop1676_mux_q;

    // pop1777_mux(MUX,76)
    assign pop1777_mux_s = in_valid_in_0;
    always @(pop1777_mux_s or in_pop1777_1 or in_pop1777_0)
    begin
        unique case (pop1777_mux_s)
            1'b0 : pop1777_mux_q = in_pop1777_1;
            1'b1 : pop1777_mux_q = in_pop1777_0;
            default : pop1777_mux_q = 1'b0;
        endcase
    end

    // out_pop1777(GPOUT,66)
    assign out_pop1777 = pop1777_mux_q;

    // valid_or(LOGICAL,82)
    assign valid_or_q = in_valid_in_0 | in_valid_in_1;

    // stall_out(LOGICAL,77)
    assign stall_out_q = valid_or_q & in_stall_in;

    // out_stall_out_0(GPOUT,67)
    assign out_stall_out_0 = stall_out_q;

    // stall_out_1_specific(LOGICAL,78)
    assign stall_out_1_specific_q = in_valid_in_0 | stall_out_q;

    // out_stall_out_1(GPOUT,68)
    assign out_stall_out_1 = stall_out_1_specific_q;

    // unnamed_conv2d1x113_mux(MUX,79)
    assign unnamed_conv2d1x113_mux_s = in_valid_in_0;
    always @(unnamed_conv2d1x113_mux_s or in_unnamed_conv2d1x113_1 or in_unnamed_conv2d1x113_0)
    begin
        unique case (unnamed_conv2d1x113_mux_s)
            1'b0 : unnamed_conv2d1x113_mux_q = in_unnamed_conv2d1x113_1;
            1'b1 : unnamed_conv2d1x113_mux_q = in_unnamed_conv2d1x113_0;
            default : unnamed_conv2d1x113_mux_q = 1'b0;
        endcase
    end

    // out_unnamed_conv2d1x113(GPOUT,69)
    assign out_unnamed_conv2d1x113 = unnamed_conv2d1x113_mux_q;

    // unnamed_conv2d1x114_mux(MUX,80)
    assign unnamed_conv2d1x114_mux_s = in_valid_in_0;
    always @(unnamed_conv2d1x114_mux_s or in_unnamed_conv2d1x114_1 or in_unnamed_conv2d1x114_0)
    begin
        unique case (unnamed_conv2d1x114_mux_s)
            1'b0 : unnamed_conv2d1x114_mux_q = in_unnamed_conv2d1x114_1;
            1'b1 : unnamed_conv2d1x114_mux_q = in_unnamed_conv2d1x114_0;
            default : unnamed_conv2d1x114_mux_q = 1'b0;
        endcase
    end

    // out_unnamed_conv2d1x114(GPOUT,70)
    assign out_unnamed_conv2d1x114 = unnamed_conv2d1x114_mux_q;

    // unnamed_conv2d1x115_mux(MUX,81)
    assign unnamed_conv2d1x115_mux_s = in_valid_in_0;
    always @(unnamed_conv2d1x115_mux_s or in_unnamed_conv2d1x115_1 or in_unnamed_conv2d1x115_0)
    begin
        unique case (unnamed_conv2d1x115_mux_s)
            1'b0 : unnamed_conv2d1x115_mux_q = in_unnamed_conv2d1x115_1;
            1'b1 : unnamed_conv2d1x115_mux_q = in_unnamed_conv2d1x115_0;
            default : unnamed_conv2d1x115_mux_q = 33'b0;
        endcase
    end

    // out_unnamed_conv2d1x115(GPOUT,71)
    assign out_unnamed_conv2d1x115 = unnamed_conv2d1x115_mux_q;

    // out_valid_out(GPOUT,72)
    assign out_valid_out = valid_or_q;

endmodule
