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

// SystemVerilog created from conv2d3x3_B11_merge
// SystemVerilog created on Tue Jun  6 18:48:20 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2d3x3_B11_merge (
    input wire [31:0] in_acl_6417_0,
    input wire [31:0] in_acl_6417_1,
    input wire [31:0] in_add111_pop49425_0,
    input wire [31:0] in_add111_pop49425_1,
    input wire [31:0] in_add24407_0,
    input wire [31:0] in_add24407_1,
    input wire [31:0] in_add244_0,
    input wire [31:0] in_add244_1,
    input wire [31:0] in_add35_1398_0,
    input wire [31:0] in_add35_1398_1,
    input wire [0:0] in_cmp26121_pop51409_0,
    input wire [0:0] in_cmp26121_pop51409_1,
    input wire [0:0] in_cmp26262_0,
    input wire [0:0] in_cmp26262_1,
    input wire [0:0] in_cmp26_1136_pop54431_0,
    input wire [0:0] in_cmp26_1136_pop54431_1,
    input wire [0:0] in_cmp26_1289_0,
    input wire [0:0] in_cmp26_1289_1,
    input wire [0:0] in_cmp26_2151_pop57437_0,
    input wire [0:0] in_cmp26_2151_pop57437_1,
    input wire [0:0] in_cmp26_2316_0,
    input wire [0:0] in_cmp26_2316_1,
    input wire [0:0] in_cmp27126_pop52411_0,
    input wire [0:0] in_cmp27126_pop52411_1,
    input wire [0:0] in_cmp27271_0,
    input wire [0:0] in_cmp27271_1,
    input wire [0:0] in_cmp27_1141_pop55433_0,
    input wire [0:0] in_cmp27_1141_pop55433_1,
    input wire [0:0] in_cmp27_1298_0,
    input wire [0:0] in_cmp27_1298_1,
    input wire [0:0] in_cmp27_2156_pop58439_0,
    input wire [0:0] in_cmp27_2156_pop58439_1,
    input wire [0:0] in_cmp27_2325_0,
    input wire [0:0] in_cmp27_2325_1,
    input wire [63:0] in_filter_weight_addr_067_replace_phi201_0,
    input wire [63:0] in_filter_weight_addr_067_replace_phi201_1,
    input wire [63:0] in_filter_weight_addr_067_replace_phi85_pop19343_0,
    input wire [63:0] in_filter_weight_addr_067_replace_phi85_pop19343_1,
    input wire [63:0] in_filter_weight_addr_067_replace_phi88_pop45415_0,
    input wire [63:0] in_filter_weight_addr_067_replace_phi88_pop45415_1,
    input wire [0:0] in_forked40_0,
    input wire [0:0] in_forked40_1,
    input wire [31:0] in_inc50184_pop68447_0,
    input wire [31:0] in_inc50184_pop68447_1,
    input wire [31:0] in_j_061_pop24176_pop63403_0,
    input wire [31:0] in_j_061_pop24176_pop63403_1,
    input wire [31:0] in_lm25100_pop47421_0,
    input wire [31:0] in_lm25100_pop47421_1,
    input wire [31:0] in_lm25223_0,
    input wire [31:0] in_lm25223_1,
    input wire [31:0] in_lm2597_pop21361_0,
    input wire [31:0] in_lm2597_pop21361_1,
    input wire [31:0] in_mul32181_pop66445_0,
    input wire [31:0] in_mul32181_pop66445_1,
    input wire [31:0] in_mul39_add4399_0,
    input wire [31:0] in_mul39_add4399_1,
    input wire [31:0] in_mul56116_pop50427_0,
    input wire [31:0] in_mul56116_pop50427_1,
    input wire [31:0] in_mul56253_0,
    input wire [31:0] in_mul56253_1,
    input wire [0:0] in_notcmp73172_pop62443_0,
    input wire [0:0] in_notcmp73172_pop62443_1,
    input wire [0:0] in_notcmp77161_pop59441_0,
    input wire [0:0] in_notcmp77161_pop59441_1,
    input wire [0:0] in_notcmp77334_0,
    input wire [0:0] in_notcmp77334_1,
    input wire [0:0] in_notcmp81103_pop22370_0,
    input wire [0:0] in_notcmp81103_pop22370_1,
    input wire [0:0] in_notcmp81106_pop48423_0,
    input wire [0:0] in_notcmp81106_pop48423_1,
    input wire [0:0] in_notcmp81234_0,
    input wire [0:0] in_notcmp81234_1,
    input wire [63:0] in_output_im_addr_068_replace_phi212_0,
    input wire [63:0] in_output_im_addr_068_replace_phi212_1,
    input wire [63:0] in_output_im_addr_068_replace_phi91_pop20352_0,
    input wire [63:0] in_output_im_addr_068_replace_phi91_pop20352_1,
    input wire [63:0] in_output_im_addr_068_replace_phi94_pop46419_0,
    input wire [63:0] in_output_im_addr_068_replace_phi94_pop46419_1,
    input wire [31:0] in_pad_sync_buffer168_pop61405_0,
    input wire [31:0] in_pad_sync_buffer168_pop61405_1,
    input wire [0:0] in_pop65413_0,
    input wire [0:0] in_pop65413_1,
    input wire [0:0] in_pop69449_0,
    input wire [0:0] in_pop69449_1,
    input wire [0:0] in_stall_in,
    input wire [31:0] in_stride_sync_buffer164_pop60401_0,
    input wire [31:0] in_stride_sync_buffer164_pop60401_1,
    input wire [31:0] in_sub_1131_pop53429_0,
    input wire [31:0] in_sub_1131_pop53429_1,
    input wire [31:0] in_sub_1280_0,
    input wire [31:0] in_sub_1280_1,
    input wire [31:0] in_sub_2146_pop56435_0,
    input wire [31:0] in_sub_2146_pop56435_1,
    input wire [31:0] in_sub_2307_0,
    input wire [31:0] in_sub_2307_1,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [31:0] out_acl_6417,
    output wire [31:0] out_add111_pop49425,
    output wire [31:0] out_add244,
    output wire [31:0] out_add24407,
    output wire [31:0] out_add35_1398,
    output wire [0:0] out_cmp26121_pop51409,
    output wire [0:0] out_cmp26262,
    output wire [0:0] out_cmp26_1136_pop54431,
    output wire [0:0] out_cmp26_1289,
    output wire [0:0] out_cmp26_2151_pop57437,
    output wire [0:0] out_cmp26_2316,
    output wire [0:0] out_cmp27126_pop52411,
    output wire [0:0] out_cmp27271,
    output wire [0:0] out_cmp27_1141_pop55433,
    output wire [0:0] out_cmp27_1298,
    output wire [0:0] out_cmp27_2156_pop58439,
    output wire [0:0] out_cmp27_2325,
    output wire [63:0] out_filter_weight_addr_067_replace_phi201,
    output wire [63:0] out_filter_weight_addr_067_replace_phi85_pop19343,
    output wire [63:0] out_filter_weight_addr_067_replace_phi88_pop45415,
    output wire [0:0] out_forked40,
    output wire [31:0] out_inc50184_pop68447,
    output wire [31:0] out_j_061_pop24176_pop63403,
    output wire [31:0] out_lm25100_pop47421,
    output wire [31:0] out_lm25223,
    output wire [31:0] out_lm2597_pop21361,
    output wire [31:0] out_mul32181_pop66445,
    output wire [31:0] out_mul39_add4399,
    output wire [31:0] out_mul56116_pop50427,
    output wire [31:0] out_mul56253,
    output wire [0:0] out_notcmp73172_pop62443,
    output wire [0:0] out_notcmp77161_pop59441,
    output wire [0:0] out_notcmp77334,
    output wire [0:0] out_notcmp81103_pop22370,
    output wire [0:0] out_notcmp81106_pop48423,
    output wire [0:0] out_notcmp81234,
    output wire [63:0] out_output_im_addr_068_replace_phi212,
    output wire [63:0] out_output_im_addr_068_replace_phi91_pop20352,
    output wire [63:0] out_output_im_addr_068_replace_phi94_pop46419,
    output wire [31:0] out_pad_sync_buffer168_pop61405,
    output wire [0:0] out_pop65413,
    output wire [0:0] out_pop69449,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [31:0] out_stride_sync_buffer164_pop60401,
    output wire [31:0] out_sub_1131_pop53429,
    output wire [31:0] out_sub_1280,
    output wire [31:0] out_sub_2146_pop56435,
    output wire [31:0] out_sub_2307,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    wire [0:0] acl_6417_mux_s;
    reg [31:0] acl_6417_mux_q;
    wire [0:0] add111_pop49425_mux_s;
    reg [31:0] add111_pop49425_mux_q;
    wire [0:0] add24407_mux_s;
    reg [31:0] add24407_mux_q;
    wire [0:0] add244_mux_s;
    reg [31:0] add244_mux_q;
    wire [0:0] add35_1398_mux_s;
    reg [31:0] add35_1398_mux_q;
    wire [0:0] cmp26121_pop51409_mux_s;
    reg [0:0] cmp26121_pop51409_mux_q;
    wire [0:0] cmp26262_mux_s;
    reg [0:0] cmp26262_mux_q;
    wire [0:0] cmp26_1136_pop54431_mux_s;
    reg [0:0] cmp26_1136_pop54431_mux_q;
    wire [0:0] cmp26_1289_mux_s;
    reg [0:0] cmp26_1289_mux_q;
    wire [0:0] cmp26_2151_pop57437_mux_s;
    reg [0:0] cmp26_2151_pop57437_mux_q;
    wire [0:0] cmp26_2316_mux_s;
    reg [0:0] cmp26_2316_mux_q;
    wire [0:0] cmp27126_pop52411_mux_s;
    reg [0:0] cmp27126_pop52411_mux_q;
    wire [0:0] cmp27271_mux_s;
    reg [0:0] cmp27271_mux_q;
    wire [0:0] cmp27_1141_pop55433_mux_s;
    reg [0:0] cmp27_1141_pop55433_mux_q;
    wire [0:0] cmp27_1298_mux_s;
    reg [0:0] cmp27_1298_mux_q;
    wire [0:0] cmp27_2156_pop58439_mux_s;
    reg [0:0] cmp27_2156_pop58439_mux_q;
    wire [0:0] cmp27_2325_mux_s;
    reg [0:0] cmp27_2325_mux_q;
    wire [0:0] filter_weight_addr_067_replace_phi201_mux_s;
    reg [63:0] filter_weight_addr_067_replace_phi201_mux_q;
    wire [0:0] filter_weight_addr_067_replace_phi85_pop19343_mux_s;
    reg [63:0] filter_weight_addr_067_replace_phi85_pop19343_mux_q;
    wire [0:0] filter_weight_addr_067_replace_phi88_pop45415_mux_s;
    reg [63:0] filter_weight_addr_067_replace_phi88_pop45415_mux_q;
    wire [0:0] forked40_mux_s;
    reg [0:0] forked40_mux_q;
    wire [0:0] inc50184_pop68447_mux_s;
    reg [31:0] inc50184_pop68447_mux_q;
    wire [0:0] j_061_pop24176_pop63403_mux_s;
    reg [31:0] j_061_pop24176_pop63403_mux_q;
    wire [0:0] lm25100_pop47421_mux_s;
    reg [31:0] lm25100_pop47421_mux_q;
    wire [0:0] lm25223_mux_s;
    reg [31:0] lm25223_mux_q;
    wire [0:0] lm2597_pop21361_mux_s;
    reg [31:0] lm2597_pop21361_mux_q;
    wire [0:0] mul32181_pop66445_mux_s;
    reg [31:0] mul32181_pop66445_mux_q;
    wire [0:0] mul39_add4399_mux_s;
    reg [31:0] mul39_add4399_mux_q;
    wire [0:0] mul56116_pop50427_mux_s;
    reg [31:0] mul56116_pop50427_mux_q;
    wire [0:0] mul56253_mux_s;
    reg [31:0] mul56253_mux_q;
    wire [0:0] notcmp73172_pop62443_mux_s;
    reg [0:0] notcmp73172_pop62443_mux_q;
    wire [0:0] notcmp77161_pop59441_mux_s;
    reg [0:0] notcmp77161_pop59441_mux_q;
    wire [0:0] notcmp77334_mux_s;
    reg [0:0] notcmp77334_mux_q;
    wire [0:0] notcmp81103_pop22370_mux_s;
    reg [0:0] notcmp81103_pop22370_mux_q;
    wire [0:0] notcmp81106_pop48423_mux_s;
    reg [0:0] notcmp81106_pop48423_mux_q;
    wire [0:0] notcmp81234_mux_s;
    reg [0:0] notcmp81234_mux_q;
    wire [0:0] output_im_addr_068_replace_phi212_mux_s;
    reg [63:0] output_im_addr_068_replace_phi212_mux_q;
    wire [0:0] output_im_addr_068_replace_phi91_pop20352_mux_s;
    reg [63:0] output_im_addr_068_replace_phi91_pop20352_mux_q;
    wire [0:0] output_im_addr_068_replace_phi94_pop46419_mux_s;
    reg [63:0] output_im_addr_068_replace_phi94_pop46419_mux_q;
    wire [0:0] pad_sync_buffer168_pop61405_mux_s;
    reg [31:0] pad_sync_buffer168_pop61405_mux_q;
    wire [0:0] pop65413_mux_s;
    reg [0:0] pop65413_mux_q;
    wire [0:0] pop69449_mux_s;
    reg [0:0] pop69449_mux_q;
    wire [0:0] stall_out_q;
    wire [0:0] stall_out_1_specific_q;
    wire [0:0] stride_sync_buffer164_pop60401_mux_s;
    reg [31:0] stride_sync_buffer164_pop60401_mux_q;
    wire [0:0] sub_1131_pop53429_mux_s;
    reg [31:0] sub_1131_pop53429_mux_q;
    wire [0:0] sub_1280_mux_s;
    reg [31:0] sub_1280_mux_q;
    wire [0:0] sub_2146_pop56435_mux_s;
    reg [31:0] sub_2146_pop56435_mux_q;
    wire [0:0] sub_2307_mux_s;
    reg [31:0] sub_2307_mux_q;
    wire [0:0] valid_or_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // acl_6417_mux(MUX,2)
    assign acl_6417_mux_s = in_valid_in_0;
    always @(acl_6417_mux_s or in_acl_6417_1 or in_acl_6417_0)
    begin
        unique case (acl_6417_mux_s)
            1'b0 : acl_6417_mux_q = in_acl_6417_1;
            1'b1 : acl_6417_mux_q = in_acl_6417_0;
            default : acl_6417_mux_q = 32'b0;
        endcase
    end

    // out_acl_6417(GPOUT,135)
    assign out_acl_6417 = acl_6417_mux_q;

    // add111_pop49425_mux(MUX,3)
    assign add111_pop49425_mux_s = in_valid_in_0;
    always @(add111_pop49425_mux_s or in_add111_pop49425_1 or in_add111_pop49425_0)
    begin
        unique case (add111_pop49425_mux_s)
            1'b0 : add111_pop49425_mux_q = in_add111_pop49425_1;
            1'b1 : add111_pop49425_mux_q = in_add111_pop49425_0;
            default : add111_pop49425_mux_q = 32'b0;
        endcase
    end

    // out_add111_pop49425(GPOUT,136)
    assign out_add111_pop49425 = add111_pop49425_mux_q;

    // add244_mux(MUX,5)
    assign add244_mux_s = in_valid_in_0;
    always @(add244_mux_s or in_add244_1 or in_add244_0)
    begin
        unique case (add244_mux_s)
            1'b0 : add244_mux_q = in_add244_1;
            1'b1 : add244_mux_q = in_add244_0;
            default : add244_mux_q = 32'b0;
        endcase
    end

    // out_add244(GPOUT,137)
    assign out_add244 = add244_mux_q;

    // add24407_mux(MUX,4)
    assign add24407_mux_s = in_valid_in_0;
    always @(add24407_mux_s or in_add24407_1 or in_add24407_0)
    begin
        unique case (add24407_mux_s)
            1'b0 : add24407_mux_q = in_add24407_1;
            1'b1 : add24407_mux_q = in_add24407_0;
            default : add24407_mux_q = 32'b0;
        endcase
    end

    // out_add24407(GPOUT,138)
    assign out_add24407 = add24407_mux_q;

    // add35_1398_mux(MUX,6)
    assign add35_1398_mux_s = in_valid_in_0;
    always @(add35_1398_mux_s or in_add35_1398_1 or in_add35_1398_0)
    begin
        unique case (add35_1398_mux_s)
            1'b0 : add35_1398_mux_q = in_add35_1398_1;
            1'b1 : add35_1398_mux_q = in_add35_1398_0;
            default : add35_1398_mux_q = 32'b0;
        endcase
    end

    // out_add35_1398(GPOUT,139)
    assign out_add35_1398 = add35_1398_mux_q;

    // cmp26121_pop51409_mux(MUX,7)
    assign cmp26121_pop51409_mux_s = in_valid_in_0;
    always @(cmp26121_pop51409_mux_s or in_cmp26121_pop51409_1 or in_cmp26121_pop51409_0)
    begin
        unique case (cmp26121_pop51409_mux_s)
            1'b0 : cmp26121_pop51409_mux_q = in_cmp26121_pop51409_1;
            1'b1 : cmp26121_pop51409_mux_q = in_cmp26121_pop51409_0;
            default : cmp26121_pop51409_mux_q = 1'b0;
        endcase
    end

    // out_cmp26121_pop51409(GPOUT,140)
    assign out_cmp26121_pop51409 = cmp26121_pop51409_mux_q;

    // cmp26262_mux(MUX,8)
    assign cmp26262_mux_s = in_valid_in_0;
    always @(cmp26262_mux_s or in_cmp26262_1 or in_cmp26262_0)
    begin
        unique case (cmp26262_mux_s)
            1'b0 : cmp26262_mux_q = in_cmp26262_1;
            1'b1 : cmp26262_mux_q = in_cmp26262_0;
            default : cmp26262_mux_q = 1'b0;
        endcase
    end

    // out_cmp26262(GPOUT,141)
    assign out_cmp26262 = cmp26262_mux_q;

    // cmp26_1136_pop54431_mux(MUX,9)
    assign cmp26_1136_pop54431_mux_s = in_valid_in_0;
    always @(cmp26_1136_pop54431_mux_s or in_cmp26_1136_pop54431_1 or in_cmp26_1136_pop54431_0)
    begin
        unique case (cmp26_1136_pop54431_mux_s)
            1'b0 : cmp26_1136_pop54431_mux_q = in_cmp26_1136_pop54431_1;
            1'b1 : cmp26_1136_pop54431_mux_q = in_cmp26_1136_pop54431_0;
            default : cmp26_1136_pop54431_mux_q = 1'b0;
        endcase
    end

    // out_cmp26_1136_pop54431(GPOUT,142)
    assign out_cmp26_1136_pop54431 = cmp26_1136_pop54431_mux_q;

    // cmp26_1289_mux(MUX,10)
    assign cmp26_1289_mux_s = in_valid_in_0;
    always @(cmp26_1289_mux_s or in_cmp26_1289_1 or in_cmp26_1289_0)
    begin
        unique case (cmp26_1289_mux_s)
            1'b0 : cmp26_1289_mux_q = in_cmp26_1289_1;
            1'b1 : cmp26_1289_mux_q = in_cmp26_1289_0;
            default : cmp26_1289_mux_q = 1'b0;
        endcase
    end

    // out_cmp26_1289(GPOUT,143)
    assign out_cmp26_1289 = cmp26_1289_mux_q;

    // cmp26_2151_pop57437_mux(MUX,11)
    assign cmp26_2151_pop57437_mux_s = in_valid_in_0;
    always @(cmp26_2151_pop57437_mux_s or in_cmp26_2151_pop57437_1 or in_cmp26_2151_pop57437_0)
    begin
        unique case (cmp26_2151_pop57437_mux_s)
            1'b0 : cmp26_2151_pop57437_mux_q = in_cmp26_2151_pop57437_1;
            1'b1 : cmp26_2151_pop57437_mux_q = in_cmp26_2151_pop57437_0;
            default : cmp26_2151_pop57437_mux_q = 1'b0;
        endcase
    end

    // out_cmp26_2151_pop57437(GPOUT,144)
    assign out_cmp26_2151_pop57437 = cmp26_2151_pop57437_mux_q;

    // cmp26_2316_mux(MUX,12)
    assign cmp26_2316_mux_s = in_valid_in_0;
    always @(cmp26_2316_mux_s or in_cmp26_2316_1 or in_cmp26_2316_0)
    begin
        unique case (cmp26_2316_mux_s)
            1'b0 : cmp26_2316_mux_q = in_cmp26_2316_1;
            1'b1 : cmp26_2316_mux_q = in_cmp26_2316_0;
            default : cmp26_2316_mux_q = 1'b0;
        endcase
    end

    // out_cmp26_2316(GPOUT,145)
    assign out_cmp26_2316 = cmp26_2316_mux_q;

    // cmp27126_pop52411_mux(MUX,13)
    assign cmp27126_pop52411_mux_s = in_valid_in_0;
    always @(cmp27126_pop52411_mux_s or in_cmp27126_pop52411_1 or in_cmp27126_pop52411_0)
    begin
        unique case (cmp27126_pop52411_mux_s)
            1'b0 : cmp27126_pop52411_mux_q = in_cmp27126_pop52411_1;
            1'b1 : cmp27126_pop52411_mux_q = in_cmp27126_pop52411_0;
            default : cmp27126_pop52411_mux_q = 1'b0;
        endcase
    end

    // out_cmp27126_pop52411(GPOUT,146)
    assign out_cmp27126_pop52411 = cmp27126_pop52411_mux_q;

    // cmp27271_mux(MUX,14)
    assign cmp27271_mux_s = in_valid_in_0;
    always @(cmp27271_mux_s or in_cmp27271_1 or in_cmp27271_0)
    begin
        unique case (cmp27271_mux_s)
            1'b0 : cmp27271_mux_q = in_cmp27271_1;
            1'b1 : cmp27271_mux_q = in_cmp27271_0;
            default : cmp27271_mux_q = 1'b0;
        endcase
    end

    // out_cmp27271(GPOUT,147)
    assign out_cmp27271 = cmp27271_mux_q;

    // cmp27_1141_pop55433_mux(MUX,15)
    assign cmp27_1141_pop55433_mux_s = in_valid_in_0;
    always @(cmp27_1141_pop55433_mux_s or in_cmp27_1141_pop55433_1 or in_cmp27_1141_pop55433_0)
    begin
        unique case (cmp27_1141_pop55433_mux_s)
            1'b0 : cmp27_1141_pop55433_mux_q = in_cmp27_1141_pop55433_1;
            1'b1 : cmp27_1141_pop55433_mux_q = in_cmp27_1141_pop55433_0;
            default : cmp27_1141_pop55433_mux_q = 1'b0;
        endcase
    end

    // out_cmp27_1141_pop55433(GPOUT,148)
    assign out_cmp27_1141_pop55433 = cmp27_1141_pop55433_mux_q;

    // cmp27_1298_mux(MUX,16)
    assign cmp27_1298_mux_s = in_valid_in_0;
    always @(cmp27_1298_mux_s or in_cmp27_1298_1 or in_cmp27_1298_0)
    begin
        unique case (cmp27_1298_mux_s)
            1'b0 : cmp27_1298_mux_q = in_cmp27_1298_1;
            1'b1 : cmp27_1298_mux_q = in_cmp27_1298_0;
            default : cmp27_1298_mux_q = 1'b0;
        endcase
    end

    // out_cmp27_1298(GPOUT,149)
    assign out_cmp27_1298 = cmp27_1298_mux_q;

    // cmp27_2156_pop58439_mux(MUX,17)
    assign cmp27_2156_pop58439_mux_s = in_valid_in_0;
    always @(cmp27_2156_pop58439_mux_s or in_cmp27_2156_pop58439_1 or in_cmp27_2156_pop58439_0)
    begin
        unique case (cmp27_2156_pop58439_mux_s)
            1'b0 : cmp27_2156_pop58439_mux_q = in_cmp27_2156_pop58439_1;
            1'b1 : cmp27_2156_pop58439_mux_q = in_cmp27_2156_pop58439_0;
            default : cmp27_2156_pop58439_mux_q = 1'b0;
        endcase
    end

    // out_cmp27_2156_pop58439(GPOUT,150)
    assign out_cmp27_2156_pop58439 = cmp27_2156_pop58439_mux_q;

    // cmp27_2325_mux(MUX,18)
    assign cmp27_2325_mux_s = in_valid_in_0;
    always @(cmp27_2325_mux_s or in_cmp27_2325_1 or in_cmp27_2325_0)
    begin
        unique case (cmp27_2325_mux_s)
            1'b0 : cmp27_2325_mux_q = in_cmp27_2325_1;
            1'b1 : cmp27_2325_mux_q = in_cmp27_2325_0;
            default : cmp27_2325_mux_q = 1'b0;
        endcase
    end

    // out_cmp27_2325(GPOUT,151)
    assign out_cmp27_2325 = cmp27_2325_mux_q;

    // filter_weight_addr_067_replace_phi201_mux(MUX,19)
    assign filter_weight_addr_067_replace_phi201_mux_s = in_valid_in_0;
    always @(filter_weight_addr_067_replace_phi201_mux_s or in_filter_weight_addr_067_replace_phi201_1 or in_filter_weight_addr_067_replace_phi201_0)
    begin
        unique case (filter_weight_addr_067_replace_phi201_mux_s)
            1'b0 : filter_weight_addr_067_replace_phi201_mux_q = in_filter_weight_addr_067_replace_phi201_1;
            1'b1 : filter_weight_addr_067_replace_phi201_mux_q = in_filter_weight_addr_067_replace_phi201_0;
            default : filter_weight_addr_067_replace_phi201_mux_q = 64'b0;
        endcase
    end

    // out_filter_weight_addr_067_replace_phi201(GPOUT,152)
    assign out_filter_weight_addr_067_replace_phi201 = filter_weight_addr_067_replace_phi201_mux_q;

    // filter_weight_addr_067_replace_phi85_pop19343_mux(MUX,20)
    assign filter_weight_addr_067_replace_phi85_pop19343_mux_s = in_valid_in_0;
    always @(filter_weight_addr_067_replace_phi85_pop19343_mux_s or in_filter_weight_addr_067_replace_phi85_pop19343_1 or in_filter_weight_addr_067_replace_phi85_pop19343_0)
    begin
        unique case (filter_weight_addr_067_replace_phi85_pop19343_mux_s)
            1'b0 : filter_weight_addr_067_replace_phi85_pop19343_mux_q = in_filter_weight_addr_067_replace_phi85_pop19343_1;
            1'b1 : filter_weight_addr_067_replace_phi85_pop19343_mux_q = in_filter_weight_addr_067_replace_phi85_pop19343_0;
            default : filter_weight_addr_067_replace_phi85_pop19343_mux_q = 64'b0;
        endcase
    end

    // out_filter_weight_addr_067_replace_phi85_pop19343(GPOUT,153)
    assign out_filter_weight_addr_067_replace_phi85_pop19343 = filter_weight_addr_067_replace_phi85_pop19343_mux_q;

    // filter_weight_addr_067_replace_phi88_pop45415_mux(MUX,21)
    assign filter_weight_addr_067_replace_phi88_pop45415_mux_s = in_valid_in_0;
    always @(filter_weight_addr_067_replace_phi88_pop45415_mux_s or in_filter_weight_addr_067_replace_phi88_pop45415_1 or in_filter_weight_addr_067_replace_phi88_pop45415_0)
    begin
        unique case (filter_weight_addr_067_replace_phi88_pop45415_mux_s)
            1'b0 : filter_weight_addr_067_replace_phi88_pop45415_mux_q = in_filter_weight_addr_067_replace_phi88_pop45415_1;
            1'b1 : filter_weight_addr_067_replace_phi88_pop45415_mux_q = in_filter_weight_addr_067_replace_phi88_pop45415_0;
            default : filter_weight_addr_067_replace_phi88_pop45415_mux_q = 64'b0;
        endcase
    end

    // out_filter_weight_addr_067_replace_phi88_pop45415(GPOUT,154)
    assign out_filter_weight_addr_067_replace_phi88_pop45415 = filter_weight_addr_067_replace_phi88_pop45415_mux_q;

    // forked40_mux(MUX,22)
    assign forked40_mux_s = in_valid_in_0;
    always @(forked40_mux_s or in_forked40_1 or in_forked40_0)
    begin
        unique case (forked40_mux_s)
            1'b0 : forked40_mux_q = in_forked40_1;
            1'b1 : forked40_mux_q = in_forked40_0;
            default : forked40_mux_q = 1'b0;
        endcase
    end

    // out_forked40(GPOUT,155)
    assign out_forked40 = forked40_mux_q;

    // inc50184_pop68447_mux(MUX,23)
    assign inc50184_pop68447_mux_s = in_valid_in_0;
    always @(inc50184_pop68447_mux_s or in_inc50184_pop68447_1 or in_inc50184_pop68447_0)
    begin
        unique case (inc50184_pop68447_mux_s)
            1'b0 : inc50184_pop68447_mux_q = in_inc50184_pop68447_1;
            1'b1 : inc50184_pop68447_mux_q = in_inc50184_pop68447_0;
            default : inc50184_pop68447_mux_q = 32'b0;
        endcase
    end

    // out_inc50184_pop68447(GPOUT,156)
    assign out_inc50184_pop68447 = inc50184_pop68447_mux_q;

    // j_061_pop24176_pop63403_mux(MUX,121)
    assign j_061_pop24176_pop63403_mux_s = in_valid_in_0;
    always @(j_061_pop24176_pop63403_mux_s or in_j_061_pop24176_pop63403_1 or in_j_061_pop24176_pop63403_0)
    begin
        unique case (j_061_pop24176_pop63403_mux_s)
            1'b0 : j_061_pop24176_pop63403_mux_q = in_j_061_pop24176_pop63403_1;
            1'b1 : j_061_pop24176_pop63403_mux_q = in_j_061_pop24176_pop63403_0;
            default : j_061_pop24176_pop63403_mux_q = 32'b0;
        endcase
    end

    // out_j_061_pop24176_pop63403(GPOUT,157)
    assign out_j_061_pop24176_pop63403 = j_061_pop24176_pop63403_mux_q;

    // lm25100_pop47421_mux(MUX,122)
    assign lm25100_pop47421_mux_s = in_valid_in_0;
    always @(lm25100_pop47421_mux_s or in_lm25100_pop47421_1 or in_lm25100_pop47421_0)
    begin
        unique case (lm25100_pop47421_mux_s)
            1'b0 : lm25100_pop47421_mux_q = in_lm25100_pop47421_1;
            1'b1 : lm25100_pop47421_mux_q = in_lm25100_pop47421_0;
            default : lm25100_pop47421_mux_q = 32'b0;
        endcase
    end

    // out_lm25100_pop47421(GPOUT,158)
    assign out_lm25100_pop47421 = lm25100_pop47421_mux_q;

    // lm25223_mux(MUX,123)
    assign lm25223_mux_s = in_valid_in_0;
    always @(lm25223_mux_s or in_lm25223_1 or in_lm25223_0)
    begin
        unique case (lm25223_mux_s)
            1'b0 : lm25223_mux_q = in_lm25223_1;
            1'b1 : lm25223_mux_q = in_lm25223_0;
            default : lm25223_mux_q = 32'b0;
        endcase
    end

    // out_lm25223(GPOUT,159)
    assign out_lm25223 = lm25223_mux_q;

    // lm2597_pop21361_mux(MUX,124)
    assign lm2597_pop21361_mux_s = in_valid_in_0;
    always @(lm2597_pop21361_mux_s or in_lm2597_pop21361_1 or in_lm2597_pop21361_0)
    begin
        unique case (lm2597_pop21361_mux_s)
            1'b0 : lm2597_pop21361_mux_q = in_lm2597_pop21361_1;
            1'b1 : lm2597_pop21361_mux_q = in_lm2597_pop21361_0;
            default : lm2597_pop21361_mux_q = 32'b0;
        endcase
    end

    // out_lm2597_pop21361(GPOUT,160)
    assign out_lm2597_pop21361 = lm2597_pop21361_mux_q;

    // mul32181_pop66445_mux(MUX,125)
    assign mul32181_pop66445_mux_s = in_valid_in_0;
    always @(mul32181_pop66445_mux_s or in_mul32181_pop66445_1 or in_mul32181_pop66445_0)
    begin
        unique case (mul32181_pop66445_mux_s)
            1'b0 : mul32181_pop66445_mux_q = in_mul32181_pop66445_1;
            1'b1 : mul32181_pop66445_mux_q = in_mul32181_pop66445_0;
            default : mul32181_pop66445_mux_q = 32'b0;
        endcase
    end

    // out_mul32181_pop66445(GPOUT,161)
    assign out_mul32181_pop66445 = mul32181_pop66445_mux_q;

    // mul39_add4399_mux(MUX,126)
    assign mul39_add4399_mux_s = in_valid_in_0;
    always @(mul39_add4399_mux_s or in_mul39_add4399_1 or in_mul39_add4399_0)
    begin
        unique case (mul39_add4399_mux_s)
            1'b0 : mul39_add4399_mux_q = in_mul39_add4399_1;
            1'b1 : mul39_add4399_mux_q = in_mul39_add4399_0;
            default : mul39_add4399_mux_q = 32'b0;
        endcase
    end

    // out_mul39_add4399(GPOUT,162)
    assign out_mul39_add4399 = mul39_add4399_mux_q;

    // mul56116_pop50427_mux(MUX,127)
    assign mul56116_pop50427_mux_s = in_valid_in_0;
    always @(mul56116_pop50427_mux_s or in_mul56116_pop50427_1 or in_mul56116_pop50427_0)
    begin
        unique case (mul56116_pop50427_mux_s)
            1'b0 : mul56116_pop50427_mux_q = in_mul56116_pop50427_1;
            1'b1 : mul56116_pop50427_mux_q = in_mul56116_pop50427_0;
            default : mul56116_pop50427_mux_q = 32'b0;
        endcase
    end

    // out_mul56116_pop50427(GPOUT,163)
    assign out_mul56116_pop50427 = mul56116_pop50427_mux_q;

    // mul56253_mux(MUX,128)
    assign mul56253_mux_s = in_valid_in_0;
    always @(mul56253_mux_s or in_mul56253_1 or in_mul56253_0)
    begin
        unique case (mul56253_mux_s)
            1'b0 : mul56253_mux_q = in_mul56253_1;
            1'b1 : mul56253_mux_q = in_mul56253_0;
            default : mul56253_mux_q = 32'b0;
        endcase
    end

    // out_mul56253(GPOUT,164)
    assign out_mul56253 = mul56253_mux_q;

    // notcmp73172_pop62443_mux(MUX,129)
    assign notcmp73172_pop62443_mux_s = in_valid_in_0;
    always @(notcmp73172_pop62443_mux_s or in_notcmp73172_pop62443_1 or in_notcmp73172_pop62443_0)
    begin
        unique case (notcmp73172_pop62443_mux_s)
            1'b0 : notcmp73172_pop62443_mux_q = in_notcmp73172_pop62443_1;
            1'b1 : notcmp73172_pop62443_mux_q = in_notcmp73172_pop62443_0;
            default : notcmp73172_pop62443_mux_q = 1'b0;
        endcase
    end

    // out_notcmp73172_pop62443(GPOUT,165)
    assign out_notcmp73172_pop62443 = notcmp73172_pop62443_mux_q;

    // notcmp77161_pop59441_mux(MUX,130)
    assign notcmp77161_pop59441_mux_s = in_valid_in_0;
    always @(notcmp77161_pop59441_mux_s or in_notcmp77161_pop59441_1 or in_notcmp77161_pop59441_0)
    begin
        unique case (notcmp77161_pop59441_mux_s)
            1'b0 : notcmp77161_pop59441_mux_q = in_notcmp77161_pop59441_1;
            1'b1 : notcmp77161_pop59441_mux_q = in_notcmp77161_pop59441_0;
            default : notcmp77161_pop59441_mux_q = 1'b0;
        endcase
    end

    // out_notcmp77161_pop59441(GPOUT,166)
    assign out_notcmp77161_pop59441 = notcmp77161_pop59441_mux_q;

    // notcmp77334_mux(MUX,131)
    assign notcmp77334_mux_s = in_valid_in_0;
    always @(notcmp77334_mux_s or in_notcmp77334_1 or in_notcmp77334_0)
    begin
        unique case (notcmp77334_mux_s)
            1'b0 : notcmp77334_mux_q = in_notcmp77334_1;
            1'b1 : notcmp77334_mux_q = in_notcmp77334_0;
            default : notcmp77334_mux_q = 1'b0;
        endcase
    end

    // out_notcmp77334(GPOUT,167)
    assign out_notcmp77334 = notcmp77334_mux_q;

    // notcmp81103_pop22370_mux(MUX,132)
    assign notcmp81103_pop22370_mux_s = in_valid_in_0;
    always @(notcmp81103_pop22370_mux_s or in_notcmp81103_pop22370_1 or in_notcmp81103_pop22370_0)
    begin
        unique case (notcmp81103_pop22370_mux_s)
            1'b0 : notcmp81103_pop22370_mux_q = in_notcmp81103_pop22370_1;
            1'b1 : notcmp81103_pop22370_mux_q = in_notcmp81103_pop22370_0;
            default : notcmp81103_pop22370_mux_q = 1'b0;
        endcase
    end

    // out_notcmp81103_pop22370(GPOUT,168)
    assign out_notcmp81103_pop22370 = notcmp81103_pop22370_mux_q;

    // notcmp81106_pop48423_mux(MUX,133)
    assign notcmp81106_pop48423_mux_s = in_valid_in_0;
    always @(notcmp81106_pop48423_mux_s or in_notcmp81106_pop48423_1 or in_notcmp81106_pop48423_0)
    begin
        unique case (notcmp81106_pop48423_mux_s)
            1'b0 : notcmp81106_pop48423_mux_q = in_notcmp81106_pop48423_1;
            1'b1 : notcmp81106_pop48423_mux_q = in_notcmp81106_pop48423_0;
            default : notcmp81106_pop48423_mux_q = 1'b0;
        endcase
    end

    // out_notcmp81106_pop48423(GPOUT,169)
    assign out_notcmp81106_pop48423 = notcmp81106_pop48423_mux_q;

    // notcmp81234_mux(MUX,134)
    assign notcmp81234_mux_s = in_valid_in_0;
    always @(notcmp81234_mux_s or in_notcmp81234_1 or in_notcmp81234_0)
    begin
        unique case (notcmp81234_mux_s)
            1'b0 : notcmp81234_mux_q = in_notcmp81234_1;
            1'b1 : notcmp81234_mux_q = in_notcmp81234_0;
            default : notcmp81234_mux_q = 1'b0;
        endcase
    end

    // out_notcmp81234(GPOUT,170)
    assign out_notcmp81234 = notcmp81234_mux_q;

    // output_im_addr_068_replace_phi212_mux(MUX,185)
    assign output_im_addr_068_replace_phi212_mux_s = in_valid_in_0;
    always @(output_im_addr_068_replace_phi212_mux_s or in_output_im_addr_068_replace_phi212_1 or in_output_im_addr_068_replace_phi212_0)
    begin
        unique case (output_im_addr_068_replace_phi212_mux_s)
            1'b0 : output_im_addr_068_replace_phi212_mux_q = in_output_im_addr_068_replace_phi212_1;
            1'b1 : output_im_addr_068_replace_phi212_mux_q = in_output_im_addr_068_replace_phi212_0;
            default : output_im_addr_068_replace_phi212_mux_q = 64'b0;
        endcase
    end

    // out_output_im_addr_068_replace_phi212(GPOUT,171)
    assign out_output_im_addr_068_replace_phi212 = output_im_addr_068_replace_phi212_mux_q;

    // output_im_addr_068_replace_phi91_pop20352_mux(MUX,186)
    assign output_im_addr_068_replace_phi91_pop20352_mux_s = in_valid_in_0;
    always @(output_im_addr_068_replace_phi91_pop20352_mux_s or in_output_im_addr_068_replace_phi91_pop20352_1 or in_output_im_addr_068_replace_phi91_pop20352_0)
    begin
        unique case (output_im_addr_068_replace_phi91_pop20352_mux_s)
            1'b0 : output_im_addr_068_replace_phi91_pop20352_mux_q = in_output_im_addr_068_replace_phi91_pop20352_1;
            1'b1 : output_im_addr_068_replace_phi91_pop20352_mux_q = in_output_im_addr_068_replace_phi91_pop20352_0;
            default : output_im_addr_068_replace_phi91_pop20352_mux_q = 64'b0;
        endcase
    end

    // out_output_im_addr_068_replace_phi91_pop20352(GPOUT,172)
    assign out_output_im_addr_068_replace_phi91_pop20352 = output_im_addr_068_replace_phi91_pop20352_mux_q;

    // output_im_addr_068_replace_phi94_pop46419_mux(MUX,187)
    assign output_im_addr_068_replace_phi94_pop46419_mux_s = in_valid_in_0;
    always @(output_im_addr_068_replace_phi94_pop46419_mux_s or in_output_im_addr_068_replace_phi94_pop46419_1 or in_output_im_addr_068_replace_phi94_pop46419_0)
    begin
        unique case (output_im_addr_068_replace_phi94_pop46419_mux_s)
            1'b0 : output_im_addr_068_replace_phi94_pop46419_mux_q = in_output_im_addr_068_replace_phi94_pop46419_1;
            1'b1 : output_im_addr_068_replace_phi94_pop46419_mux_q = in_output_im_addr_068_replace_phi94_pop46419_0;
            default : output_im_addr_068_replace_phi94_pop46419_mux_q = 64'b0;
        endcase
    end

    // out_output_im_addr_068_replace_phi94_pop46419(GPOUT,173)
    assign out_output_im_addr_068_replace_phi94_pop46419 = output_im_addr_068_replace_phi94_pop46419_mux_q;

    // pad_sync_buffer168_pop61405_mux(MUX,188)
    assign pad_sync_buffer168_pop61405_mux_s = in_valid_in_0;
    always @(pad_sync_buffer168_pop61405_mux_s or in_pad_sync_buffer168_pop61405_1 or in_pad_sync_buffer168_pop61405_0)
    begin
        unique case (pad_sync_buffer168_pop61405_mux_s)
            1'b0 : pad_sync_buffer168_pop61405_mux_q = in_pad_sync_buffer168_pop61405_1;
            1'b1 : pad_sync_buffer168_pop61405_mux_q = in_pad_sync_buffer168_pop61405_0;
            default : pad_sync_buffer168_pop61405_mux_q = 32'b0;
        endcase
    end

    // out_pad_sync_buffer168_pop61405(GPOUT,174)
    assign out_pad_sync_buffer168_pop61405 = pad_sync_buffer168_pop61405_mux_q;

    // pop65413_mux(MUX,189)
    assign pop65413_mux_s = in_valid_in_0;
    always @(pop65413_mux_s or in_pop65413_1 or in_pop65413_0)
    begin
        unique case (pop65413_mux_s)
            1'b0 : pop65413_mux_q = in_pop65413_1;
            1'b1 : pop65413_mux_q = in_pop65413_0;
            default : pop65413_mux_q = 1'b0;
        endcase
    end

    // out_pop65413(GPOUT,175)
    assign out_pop65413 = pop65413_mux_q;

    // pop69449_mux(MUX,190)
    assign pop69449_mux_s = in_valid_in_0;
    always @(pop69449_mux_s or in_pop69449_1 or in_pop69449_0)
    begin
        unique case (pop69449_mux_s)
            1'b0 : pop69449_mux_q = in_pop69449_1;
            1'b1 : pop69449_mux_q = in_pop69449_0;
            default : pop69449_mux_q = 1'b0;
        endcase
    end

    // out_pop69449(GPOUT,176)
    assign out_pop69449 = pop69449_mux_q;

    // valid_or(LOGICAL,198)
    assign valid_or_q = in_valid_in_0 | in_valid_in_1;

    // stall_out(LOGICAL,191)
    assign stall_out_q = valid_or_q & in_stall_in;

    // out_stall_out_0(GPOUT,177)
    assign out_stall_out_0 = stall_out_q;

    // stall_out_1_specific(LOGICAL,192)
    assign stall_out_1_specific_q = in_valid_in_0 | stall_out_q;

    // out_stall_out_1(GPOUT,178)
    assign out_stall_out_1 = stall_out_1_specific_q;

    // stride_sync_buffer164_pop60401_mux(MUX,193)
    assign stride_sync_buffer164_pop60401_mux_s = in_valid_in_0;
    always @(stride_sync_buffer164_pop60401_mux_s or in_stride_sync_buffer164_pop60401_1 or in_stride_sync_buffer164_pop60401_0)
    begin
        unique case (stride_sync_buffer164_pop60401_mux_s)
            1'b0 : stride_sync_buffer164_pop60401_mux_q = in_stride_sync_buffer164_pop60401_1;
            1'b1 : stride_sync_buffer164_pop60401_mux_q = in_stride_sync_buffer164_pop60401_0;
            default : stride_sync_buffer164_pop60401_mux_q = 32'b0;
        endcase
    end

    // out_stride_sync_buffer164_pop60401(GPOUT,179)
    assign out_stride_sync_buffer164_pop60401 = stride_sync_buffer164_pop60401_mux_q;

    // sub_1131_pop53429_mux(MUX,194)
    assign sub_1131_pop53429_mux_s = in_valid_in_0;
    always @(sub_1131_pop53429_mux_s or in_sub_1131_pop53429_1 or in_sub_1131_pop53429_0)
    begin
        unique case (sub_1131_pop53429_mux_s)
            1'b0 : sub_1131_pop53429_mux_q = in_sub_1131_pop53429_1;
            1'b1 : sub_1131_pop53429_mux_q = in_sub_1131_pop53429_0;
            default : sub_1131_pop53429_mux_q = 32'b0;
        endcase
    end

    // out_sub_1131_pop53429(GPOUT,180)
    assign out_sub_1131_pop53429 = sub_1131_pop53429_mux_q;

    // sub_1280_mux(MUX,195)
    assign sub_1280_mux_s = in_valid_in_0;
    always @(sub_1280_mux_s or in_sub_1280_1 or in_sub_1280_0)
    begin
        unique case (sub_1280_mux_s)
            1'b0 : sub_1280_mux_q = in_sub_1280_1;
            1'b1 : sub_1280_mux_q = in_sub_1280_0;
            default : sub_1280_mux_q = 32'b0;
        endcase
    end

    // out_sub_1280(GPOUT,181)
    assign out_sub_1280 = sub_1280_mux_q;

    // sub_2146_pop56435_mux(MUX,196)
    assign sub_2146_pop56435_mux_s = in_valid_in_0;
    always @(sub_2146_pop56435_mux_s or in_sub_2146_pop56435_1 or in_sub_2146_pop56435_0)
    begin
        unique case (sub_2146_pop56435_mux_s)
            1'b0 : sub_2146_pop56435_mux_q = in_sub_2146_pop56435_1;
            1'b1 : sub_2146_pop56435_mux_q = in_sub_2146_pop56435_0;
            default : sub_2146_pop56435_mux_q = 32'b0;
        endcase
    end

    // out_sub_2146_pop56435(GPOUT,182)
    assign out_sub_2146_pop56435 = sub_2146_pop56435_mux_q;

    // sub_2307_mux(MUX,197)
    assign sub_2307_mux_s = in_valid_in_0;
    always @(sub_2307_mux_s or in_sub_2307_1 or in_sub_2307_0)
    begin
        unique case (sub_2307_mux_s)
            1'b0 : sub_2307_mux_q = in_sub_2307_1;
            1'b1 : sub_2307_mux_q = in_sub_2307_0;
            default : sub_2307_mux_q = 32'b0;
        endcase
    end

    // out_sub_2307(GPOUT,183)
    assign out_sub_2307 = sub_2307_mux_q;

    // out_valid_out(GPOUT,184)
    assign out_valid_out = valid_or_q;

endmodule
