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

// SystemVerilog created from conv2d3x3_B13_merge
// SystemVerilog created on Tue May 30 12:33:16 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2d3x3_B13_merge (
    input wire [31:0] in_acl_11462_0,
    input wire [31:0] in_acl_11462_1,
    input wire [31:0] in_add112_pop79470_0,
    input wire [31:0] in_add112_pop79470_1,
    input wire [31:0] in_add24189_pop100452_0,
    input wire [31:0] in_add24189_pop100452_1,
    input wire [31:0] in_add242_0,
    input wire [31:0] in_add242_1,
    input wire [31:0] in_add35_2501_0,
    input wire [31:0] in_add35_2501_1,
    input wire [31:0] in_add41_2502_0,
    input wire [31:0] in_add41_2502_1,
    input wire [0:0] in_cmp26122_pop81474_0,
    input wire [0:0] in_cmp26122_pop81474_1,
    input wire [0:0] in_cmp26260_0,
    input wire [0:0] in_cmp26260_1,
    input wire [0:0] in_cmp26_1137_pop84454_0,
    input wire [0:0] in_cmp26_1137_pop84454_1,
    input wire [0:0] in_cmp26_1287_0,
    input wire [0:0] in_cmp26_1287_1,
    input wire [0:0] in_cmp26_2152_pop87482_0,
    input wire [0:0] in_cmp26_2152_pop87482_1,
    input wire [0:0] in_cmp26_2314_0,
    input wire [0:0] in_cmp26_2314_1,
    input wire [0:0] in_cmp27127_pop82476_0,
    input wire [0:0] in_cmp27127_pop82476_1,
    input wire [0:0] in_cmp27269_0,
    input wire [0:0] in_cmp27269_1,
    input wire [0:0] in_cmp27_1142_pop85456_0,
    input wire [0:0] in_cmp27_1142_pop85456_1,
    input wire [0:0] in_cmp27_1296_0,
    input wire [0:0] in_cmp27_1296_1,
    input wire [0:0] in_cmp27_2157_pop88484_0,
    input wire [0:0] in_cmp27_2157_pop88484_1,
    input wire [0:0] in_cmp27_2323_0,
    input wire [0:0] in_cmp27_2323_1,
    input wire [63:0] in_filter_weight_addr_067_replace_phi199_0,
    input wire [63:0] in_filter_weight_addr_067_replace_phi199_1,
    input wire [63:0] in_filter_weight_addr_067_replace_phi85_pop19341_0,
    input wire [63:0] in_filter_weight_addr_067_replace_phi85_pop19341_1,
    input wire [63:0] in_filter_weight_addr_067_replace_phi89_pop75460_0,
    input wire [63:0] in_filter_weight_addr_067_replace_phi89_pop75460_1,
    input wire [0:0] in_forked37_0,
    input wire [0:0] in_forked37_1,
    input wire [31:0] in_inc50185_pop96497_0,
    input wire [31:0] in_inc50185_pop96497_1,
    input wire [31:0] in_j_061_pop24177_pop93494_0,
    input wire [31:0] in_j_061_pop24177_pop93494_1,
    input wire [31:0] in_lm25101_pop77466_0,
    input wire [31:0] in_lm25101_pop77466_1,
    input wire [31:0] in_lm25221_0,
    input wire [31:0] in_lm25221_1,
    input wire [31:0] in_lm2597_pop21359_0,
    input wire [31:0] in_lm2597_pop21359_1,
    input wire [31:0] in_mul56117_pop80472_0,
    input wire [31:0] in_mul56117_pop80472_1,
    input wire [31:0] in_mul56251_0,
    input wire [31:0] in_mul56251_1,
    input wire [0:0] in_notcmp73173_pop92492_0,
    input wire [0:0] in_notcmp73173_pop92492_1,
    input wire [0:0] in_notcmp77162_pop89486_0,
    input wire [0:0] in_notcmp77162_pop89486_1,
    input wire [0:0] in_notcmp77332_0,
    input wire [0:0] in_notcmp77332_1,
    input wire [0:0] in_notcmp81103_pop22368_0,
    input wire [0:0] in_notcmp81103_pop22368_1,
    input wire [0:0] in_notcmp81107_pop78468_0,
    input wire [0:0] in_notcmp81107_pop78468_1,
    input wire [0:0] in_notcmp81232_0,
    input wire [0:0] in_notcmp81232_1,
    input wire [63:0] in_output_im_addr_068_replace_phi210_0,
    input wire [63:0] in_output_im_addr_068_replace_phi210_1,
    input wire [63:0] in_output_im_addr_068_replace_phi91_pop20350_0,
    input wire [63:0] in_output_im_addr_068_replace_phi91_pop20350_1,
    input wire [63:0] in_output_im_addr_068_replace_phi95_pop76464_0,
    input wire [63:0] in_output_im_addr_068_replace_phi95_pop76464_1,
    input wire [31:0] in_pad_sync_buffer169_pop91490_0,
    input wire [31:0] in_pad_sync_buffer169_pop91490_1,
    input wire [0:0] in_pop94458_0,
    input wire [0:0] in_pop94458_1,
    input wire [0:0] in_pop97499_0,
    input wire [0:0] in_pop97499_1,
    input wire [0:0] in_stall_in,
    input wire [31:0] in_stride_sync_buffer165_pop90488_0,
    input wire [31:0] in_stride_sync_buffer165_pop90488_1,
    input wire [31:0] in_sub_1132_pop83478_0,
    input wire [31:0] in_sub_1132_pop83478_1,
    input wire [31:0] in_sub_1278_0,
    input wire [31:0] in_sub_1278_1,
    input wire [31:0] in_sub_2147_pop86480_0,
    input wire [31:0] in_sub_2147_pop86480_1,
    input wire [31:0] in_sub_2305_0,
    input wire [31:0] in_sub_2305_1,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [31:0] out_acl_11462,
    output wire [31:0] out_add112_pop79470,
    output wire [31:0] out_add24189_pop100452,
    output wire [31:0] out_add242,
    output wire [31:0] out_add35_2501,
    output wire [31:0] out_add41_2502,
    output wire [0:0] out_cmp26122_pop81474,
    output wire [0:0] out_cmp26260,
    output wire [0:0] out_cmp26_1137_pop84454,
    output wire [0:0] out_cmp26_1287,
    output wire [0:0] out_cmp26_2152_pop87482,
    output wire [0:0] out_cmp26_2314,
    output wire [0:0] out_cmp27127_pop82476,
    output wire [0:0] out_cmp27269,
    output wire [0:0] out_cmp27_1142_pop85456,
    output wire [0:0] out_cmp27_1296,
    output wire [0:0] out_cmp27_2157_pop88484,
    output wire [0:0] out_cmp27_2323,
    output wire [63:0] out_filter_weight_addr_067_replace_phi199,
    output wire [63:0] out_filter_weight_addr_067_replace_phi85_pop19341,
    output wire [63:0] out_filter_weight_addr_067_replace_phi89_pop75460,
    output wire [0:0] out_forked37,
    output wire [31:0] out_inc50185_pop96497,
    output wire [31:0] out_j_061_pop24177_pop93494,
    output wire [31:0] out_lm25101_pop77466,
    output wire [31:0] out_lm25221,
    output wire [31:0] out_lm2597_pop21359,
    output wire [31:0] out_mul56117_pop80472,
    output wire [31:0] out_mul56251,
    output wire [0:0] out_notcmp73173_pop92492,
    output wire [0:0] out_notcmp77162_pop89486,
    output wire [0:0] out_notcmp77332,
    output wire [0:0] out_notcmp81103_pop22368,
    output wire [0:0] out_notcmp81107_pop78468,
    output wire [0:0] out_notcmp81232,
    output wire [63:0] out_output_im_addr_068_replace_phi210,
    output wire [63:0] out_output_im_addr_068_replace_phi91_pop20350,
    output wire [63:0] out_output_im_addr_068_replace_phi95_pop76464,
    output wire [31:0] out_pad_sync_buffer169_pop91490,
    output wire [0:0] out_pop94458,
    output wire [0:0] out_pop97499,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [31:0] out_stride_sync_buffer165_pop90488,
    output wire [31:0] out_sub_1132_pop83478,
    output wire [31:0] out_sub_1278,
    output wire [31:0] out_sub_2147_pop86480,
    output wire [31:0] out_sub_2305,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    wire [0:0] acl_11462_mux_s;
    reg [31:0] acl_11462_mux_q;
    wire [0:0] add112_pop79470_mux_s;
    reg [31:0] add112_pop79470_mux_q;
    wire [0:0] add24189_pop100452_mux_s;
    reg [31:0] add24189_pop100452_mux_q;
    wire [0:0] add242_mux_s;
    reg [31:0] add242_mux_q;
    wire [0:0] add35_2501_mux_s;
    reg [31:0] add35_2501_mux_q;
    wire [0:0] add41_2502_mux_s;
    reg [31:0] add41_2502_mux_q;
    wire [0:0] cmp26122_pop81474_mux_s;
    reg [0:0] cmp26122_pop81474_mux_q;
    wire [0:0] cmp26260_mux_s;
    reg [0:0] cmp26260_mux_q;
    wire [0:0] cmp26_1137_pop84454_mux_s;
    reg [0:0] cmp26_1137_pop84454_mux_q;
    wire [0:0] cmp26_1287_mux_s;
    reg [0:0] cmp26_1287_mux_q;
    wire [0:0] cmp26_2152_pop87482_mux_s;
    reg [0:0] cmp26_2152_pop87482_mux_q;
    wire [0:0] cmp26_2314_mux_s;
    reg [0:0] cmp26_2314_mux_q;
    wire [0:0] cmp27127_pop82476_mux_s;
    reg [0:0] cmp27127_pop82476_mux_q;
    wire [0:0] cmp27269_mux_s;
    reg [0:0] cmp27269_mux_q;
    wire [0:0] cmp27_1142_pop85456_mux_s;
    reg [0:0] cmp27_1142_pop85456_mux_q;
    wire [0:0] cmp27_1296_mux_s;
    reg [0:0] cmp27_1296_mux_q;
    wire [0:0] cmp27_2157_pop88484_mux_s;
    reg [0:0] cmp27_2157_pop88484_mux_q;
    wire [0:0] cmp27_2323_mux_s;
    reg [0:0] cmp27_2323_mux_q;
    wire [0:0] filter_weight_addr_067_replace_phi199_mux_s;
    reg [63:0] filter_weight_addr_067_replace_phi199_mux_q;
    wire [0:0] filter_weight_addr_067_replace_phi85_pop19341_mux_s;
    reg [63:0] filter_weight_addr_067_replace_phi85_pop19341_mux_q;
    wire [0:0] filter_weight_addr_067_replace_phi89_pop75460_mux_s;
    reg [63:0] filter_weight_addr_067_replace_phi89_pop75460_mux_q;
    wire [0:0] forked37_mux_s;
    reg [0:0] forked37_mux_q;
    wire [0:0] inc50185_pop96497_mux_s;
    reg [31:0] inc50185_pop96497_mux_q;
    wire [0:0] j_061_pop24177_pop93494_mux_s;
    reg [31:0] j_061_pop24177_pop93494_mux_q;
    wire [0:0] lm25101_pop77466_mux_s;
    reg [31:0] lm25101_pop77466_mux_q;
    wire [0:0] lm25221_mux_s;
    reg [31:0] lm25221_mux_q;
    wire [0:0] lm2597_pop21359_mux_s;
    reg [31:0] lm2597_pop21359_mux_q;
    wire [0:0] mul56117_pop80472_mux_s;
    reg [31:0] mul56117_pop80472_mux_q;
    wire [0:0] mul56251_mux_s;
    reg [31:0] mul56251_mux_q;
    wire [0:0] notcmp73173_pop92492_mux_s;
    reg [0:0] notcmp73173_pop92492_mux_q;
    wire [0:0] notcmp77162_pop89486_mux_s;
    reg [0:0] notcmp77162_pop89486_mux_q;
    wire [0:0] notcmp77332_mux_s;
    reg [0:0] notcmp77332_mux_q;
    wire [0:0] notcmp81103_pop22368_mux_s;
    reg [0:0] notcmp81103_pop22368_mux_q;
    wire [0:0] notcmp81107_pop78468_mux_s;
    reg [0:0] notcmp81107_pop78468_mux_q;
    wire [0:0] notcmp81232_mux_s;
    reg [0:0] notcmp81232_mux_q;
    wire [0:0] output_im_addr_068_replace_phi210_mux_s;
    reg [63:0] output_im_addr_068_replace_phi210_mux_q;
    wire [0:0] output_im_addr_068_replace_phi91_pop20350_mux_s;
    reg [63:0] output_im_addr_068_replace_phi91_pop20350_mux_q;
    wire [0:0] output_im_addr_068_replace_phi95_pop76464_mux_s;
    reg [63:0] output_im_addr_068_replace_phi95_pop76464_mux_q;
    wire [0:0] pad_sync_buffer169_pop91490_mux_s;
    reg [31:0] pad_sync_buffer169_pop91490_mux_q;
    wire [0:0] pop94458_mux_s;
    reg [0:0] pop94458_mux_q;
    wire [0:0] pop97499_mux_s;
    reg [0:0] pop97499_mux_q;
    wire [0:0] stall_out_q;
    wire [0:0] stall_out_1_specific_q;
    wire [0:0] stride_sync_buffer165_pop90488_mux_s;
    reg [31:0] stride_sync_buffer165_pop90488_mux_q;
    wire [0:0] sub_1132_pop83478_mux_s;
    reg [31:0] sub_1132_pop83478_mux_q;
    wire [0:0] sub_1278_mux_s;
    reg [31:0] sub_1278_mux_q;
    wire [0:0] sub_2147_pop86480_mux_s;
    reg [31:0] sub_2147_pop86480_mux_q;
    wire [0:0] sub_2305_mux_s;
    reg [31:0] sub_2305_mux_q;
    wire [0:0] valid_or_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // acl_11462_mux(MUX,2)
    assign acl_11462_mux_s = in_valid_in_0;
    always @(acl_11462_mux_s or in_acl_11462_1 or in_acl_11462_0)
    begin
        unique case (acl_11462_mux_s)
            1'b0 : acl_11462_mux_q = in_acl_11462_1;
            1'b1 : acl_11462_mux_q = in_acl_11462_0;
            default : acl_11462_mux_q = 32'b0;
        endcase
    end

    // out_acl_11462(GPOUT,132)
    assign out_acl_11462 = acl_11462_mux_q;

    // add112_pop79470_mux(MUX,3)
    assign add112_pop79470_mux_s = in_valid_in_0;
    always @(add112_pop79470_mux_s or in_add112_pop79470_1 or in_add112_pop79470_0)
    begin
        unique case (add112_pop79470_mux_s)
            1'b0 : add112_pop79470_mux_q = in_add112_pop79470_1;
            1'b1 : add112_pop79470_mux_q = in_add112_pop79470_0;
            default : add112_pop79470_mux_q = 32'b0;
        endcase
    end

    // out_add112_pop79470(GPOUT,133)
    assign out_add112_pop79470 = add112_pop79470_mux_q;

    // add24189_pop100452_mux(MUX,4)
    assign add24189_pop100452_mux_s = in_valid_in_0;
    always @(add24189_pop100452_mux_s or in_add24189_pop100452_1 or in_add24189_pop100452_0)
    begin
        unique case (add24189_pop100452_mux_s)
            1'b0 : add24189_pop100452_mux_q = in_add24189_pop100452_1;
            1'b1 : add24189_pop100452_mux_q = in_add24189_pop100452_0;
            default : add24189_pop100452_mux_q = 32'b0;
        endcase
    end

    // out_add24189_pop100452(GPOUT,134)
    assign out_add24189_pop100452 = add24189_pop100452_mux_q;

    // add242_mux(MUX,5)
    assign add242_mux_s = in_valid_in_0;
    always @(add242_mux_s or in_add242_1 or in_add242_0)
    begin
        unique case (add242_mux_s)
            1'b0 : add242_mux_q = in_add242_1;
            1'b1 : add242_mux_q = in_add242_0;
            default : add242_mux_q = 32'b0;
        endcase
    end

    // out_add242(GPOUT,135)
    assign out_add242 = add242_mux_q;

    // add35_2501_mux(MUX,6)
    assign add35_2501_mux_s = in_valid_in_0;
    always @(add35_2501_mux_s or in_add35_2501_1 or in_add35_2501_0)
    begin
        unique case (add35_2501_mux_s)
            1'b0 : add35_2501_mux_q = in_add35_2501_1;
            1'b1 : add35_2501_mux_q = in_add35_2501_0;
            default : add35_2501_mux_q = 32'b0;
        endcase
    end

    // out_add35_2501(GPOUT,136)
    assign out_add35_2501 = add35_2501_mux_q;

    // add41_2502_mux(MUX,7)
    assign add41_2502_mux_s = in_valid_in_0;
    always @(add41_2502_mux_s or in_add41_2502_1 or in_add41_2502_0)
    begin
        unique case (add41_2502_mux_s)
            1'b0 : add41_2502_mux_q = in_add41_2502_1;
            1'b1 : add41_2502_mux_q = in_add41_2502_0;
            default : add41_2502_mux_q = 32'b0;
        endcase
    end

    // out_add41_2502(GPOUT,137)
    assign out_add41_2502 = add41_2502_mux_q;

    // cmp26122_pop81474_mux(MUX,8)
    assign cmp26122_pop81474_mux_s = in_valid_in_0;
    always @(cmp26122_pop81474_mux_s or in_cmp26122_pop81474_1 or in_cmp26122_pop81474_0)
    begin
        unique case (cmp26122_pop81474_mux_s)
            1'b0 : cmp26122_pop81474_mux_q = in_cmp26122_pop81474_1;
            1'b1 : cmp26122_pop81474_mux_q = in_cmp26122_pop81474_0;
            default : cmp26122_pop81474_mux_q = 1'b0;
        endcase
    end

    // out_cmp26122_pop81474(GPOUT,138)
    assign out_cmp26122_pop81474 = cmp26122_pop81474_mux_q;

    // cmp26260_mux(MUX,9)
    assign cmp26260_mux_s = in_valid_in_0;
    always @(cmp26260_mux_s or in_cmp26260_1 or in_cmp26260_0)
    begin
        unique case (cmp26260_mux_s)
            1'b0 : cmp26260_mux_q = in_cmp26260_1;
            1'b1 : cmp26260_mux_q = in_cmp26260_0;
            default : cmp26260_mux_q = 1'b0;
        endcase
    end

    // out_cmp26260(GPOUT,139)
    assign out_cmp26260 = cmp26260_mux_q;

    // cmp26_1137_pop84454_mux(MUX,10)
    assign cmp26_1137_pop84454_mux_s = in_valid_in_0;
    always @(cmp26_1137_pop84454_mux_s or in_cmp26_1137_pop84454_1 or in_cmp26_1137_pop84454_0)
    begin
        unique case (cmp26_1137_pop84454_mux_s)
            1'b0 : cmp26_1137_pop84454_mux_q = in_cmp26_1137_pop84454_1;
            1'b1 : cmp26_1137_pop84454_mux_q = in_cmp26_1137_pop84454_0;
            default : cmp26_1137_pop84454_mux_q = 1'b0;
        endcase
    end

    // out_cmp26_1137_pop84454(GPOUT,140)
    assign out_cmp26_1137_pop84454 = cmp26_1137_pop84454_mux_q;

    // cmp26_1287_mux(MUX,11)
    assign cmp26_1287_mux_s = in_valid_in_0;
    always @(cmp26_1287_mux_s or in_cmp26_1287_1 or in_cmp26_1287_0)
    begin
        unique case (cmp26_1287_mux_s)
            1'b0 : cmp26_1287_mux_q = in_cmp26_1287_1;
            1'b1 : cmp26_1287_mux_q = in_cmp26_1287_0;
            default : cmp26_1287_mux_q = 1'b0;
        endcase
    end

    // out_cmp26_1287(GPOUT,141)
    assign out_cmp26_1287 = cmp26_1287_mux_q;

    // cmp26_2152_pop87482_mux(MUX,12)
    assign cmp26_2152_pop87482_mux_s = in_valid_in_0;
    always @(cmp26_2152_pop87482_mux_s or in_cmp26_2152_pop87482_1 or in_cmp26_2152_pop87482_0)
    begin
        unique case (cmp26_2152_pop87482_mux_s)
            1'b0 : cmp26_2152_pop87482_mux_q = in_cmp26_2152_pop87482_1;
            1'b1 : cmp26_2152_pop87482_mux_q = in_cmp26_2152_pop87482_0;
            default : cmp26_2152_pop87482_mux_q = 1'b0;
        endcase
    end

    // out_cmp26_2152_pop87482(GPOUT,142)
    assign out_cmp26_2152_pop87482 = cmp26_2152_pop87482_mux_q;

    // cmp26_2314_mux(MUX,13)
    assign cmp26_2314_mux_s = in_valid_in_0;
    always @(cmp26_2314_mux_s or in_cmp26_2314_1 or in_cmp26_2314_0)
    begin
        unique case (cmp26_2314_mux_s)
            1'b0 : cmp26_2314_mux_q = in_cmp26_2314_1;
            1'b1 : cmp26_2314_mux_q = in_cmp26_2314_0;
            default : cmp26_2314_mux_q = 1'b0;
        endcase
    end

    // out_cmp26_2314(GPOUT,143)
    assign out_cmp26_2314 = cmp26_2314_mux_q;

    // cmp27127_pop82476_mux(MUX,14)
    assign cmp27127_pop82476_mux_s = in_valid_in_0;
    always @(cmp27127_pop82476_mux_s or in_cmp27127_pop82476_1 or in_cmp27127_pop82476_0)
    begin
        unique case (cmp27127_pop82476_mux_s)
            1'b0 : cmp27127_pop82476_mux_q = in_cmp27127_pop82476_1;
            1'b1 : cmp27127_pop82476_mux_q = in_cmp27127_pop82476_0;
            default : cmp27127_pop82476_mux_q = 1'b0;
        endcase
    end

    // out_cmp27127_pop82476(GPOUT,144)
    assign out_cmp27127_pop82476 = cmp27127_pop82476_mux_q;

    // cmp27269_mux(MUX,15)
    assign cmp27269_mux_s = in_valid_in_0;
    always @(cmp27269_mux_s or in_cmp27269_1 or in_cmp27269_0)
    begin
        unique case (cmp27269_mux_s)
            1'b0 : cmp27269_mux_q = in_cmp27269_1;
            1'b1 : cmp27269_mux_q = in_cmp27269_0;
            default : cmp27269_mux_q = 1'b0;
        endcase
    end

    // out_cmp27269(GPOUT,145)
    assign out_cmp27269 = cmp27269_mux_q;

    // cmp27_1142_pop85456_mux(MUX,16)
    assign cmp27_1142_pop85456_mux_s = in_valid_in_0;
    always @(cmp27_1142_pop85456_mux_s or in_cmp27_1142_pop85456_1 or in_cmp27_1142_pop85456_0)
    begin
        unique case (cmp27_1142_pop85456_mux_s)
            1'b0 : cmp27_1142_pop85456_mux_q = in_cmp27_1142_pop85456_1;
            1'b1 : cmp27_1142_pop85456_mux_q = in_cmp27_1142_pop85456_0;
            default : cmp27_1142_pop85456_mux_q = 1'b0;
        endcase
    end

    // out_cmp27_1142_pop85456(GPOUT,146)
    assign out_cmp27_1142_pop85456 = cmp27_1142_pop85456_mux_q;

    // cmp27_1296_mux(MUX,17)
    assign cmp27_1296_mux_s = in_valid_in_0;
    always @(cmp27_1296_mux_s or in_cmp27_1296_1 or in_cmp27_1296_0)
    begin
        unique case (cmp27_1296_mux_s)
            1'b0 : cmp27_1296_mux_q = in_cmp27_1296_1;
            1'b1 : cmp27_1296_mux_q = in_cmp27_1296_0;
            default : cmp27_1296_mux_q = 1'b0;
        endcase
    end

    // out_cmp27_1296(GPOUT,147)
    assign out_cmp27_1296 = cmp27_1296_mux_q;

    // cmp27_2157_pop88484_mux(MUX,18)
    assign cmp27_2157_pop88484_mux_s = in_valid_in_0;
    always @(cmp27_2157_pop88484_mux_s or in_cmp27_2157_pop88484_1 or in_cmp27_2157_pop88484_0)
    begin
        unique case (cmp27_2157_pop88484_mux_s)
            1'b0 : cmp27_2157_pop88484_mux_q = in_cmp27_2157_pop88484_1;
            1'b1 : cmp27_2157_pop88484_mux_q = in_cmp27_2157_pop88484_0;
            default : cmp27_2157_pop88484_mux_q = 1'b0;
        endcase
    end

    // out_cmp27_2157_pop88484(GPOUT,148)
    assign out_cmp27_2157_pop88484 = cmp27_2157_pop88484_mux_q;

    // cmp27_2323_mux(MUX,19)
    assign cmp27_2323_mux_s = in_valid_in_0;
    always @(cmp27_2323_mux_s or in_cmp27_2323_1 or in_cmp27_2323_0)
    begin
        unique case (cmp27_2323_mux_s)
            1'b0 : cmp27_2323_mux_q = in_cmp27_2323_1;
            1'b1 : cmp27_2323_mux_q = in_cmp27_2323_0;
            default : cmp27_2323_mux_q = 1'b0;
        endcase
    end

    // out_cmp27_2323(GPOUT,149)
    assign out_cmp27_2323 = cmp27_2323_mux_q;

    // filter_weight_addr_067_replace_phi199_mux(MUX,20)
    assign filter_weight_addr_067_replace_phi199_mux_s = in_valid_in_0;
    always @(filter_weight_addr_067_replace_phi199_mux_s or in_filter_weight_addr_067_replace_phi199_1 or in_filter_weight_addr_067_replace_phi199_0)
    begin
        unique case (filter_weight_addr_067_replace_phi199_mux_s)
            1'b0 : filter_weight_addr_067_replace_phi199_mux_q = in_filter_weight_addr_067_replace_phi199_1;
            1'b1 : filter_weight_addr_067_replace_phi199_mux_q = in_filter_weight_addr_067_replace_phi199_0;
            default : filter_weight_addr_067_replace_phi199_mux_q = 64'b0;
        endcase
    end

    // out_filter_weight_addr_067_replace_phi199(GPOUT,150)
    assign out_filter_weight_addr_067_replace_phi199 = filter_weight_addr_067_replace_phi199_mux_q;

    // filter_weight_addr_067_replace_phi85_pop19341_mux(MUX,21)
    assign filter_weight_addr_067_replace_phi85_pop19341_mux_s = in_valid_in_0;
    always @(filter_weight_addr_067_replace_phi85_pop19341_mux_s or in_filter_weight_addr_067_replace_phi85_pop19341_1 or in_filter_weight_addr_067_replace_phi85_pop19341_0)
    begin
        unique case (filter_weight_addr_067_replace_phi85_pop19341_mux_s)
            1'b0 : filter_weight_addr_067_replace_phi85_pop19341_mux_q = in_filter_weight_addr_067_replace_phi85_pop19341_1;
            1'b1 : filter_weight_addr_067_replace_phi85_pop19341_mux_q = in_filter_weight_addr_067_replace_phi85_pop19341_0;
            default : filter_weight_addr_067_replace_phi85_pop19341_mux_q = 64'b0;
        endcase
    end

    // out_filter_weight_addr_067_replace_phi85_pop19341(GPOUT,151)
    assign out_filter_weight_addr_067_replace_phi85_pop19341 = filter_weight_addr_067_replace_phi85_pop19341_mux_q;

    // filter_weight_addr_067_replace_phi89_pop75460_mux(MUX,22)
    assign filter_weight_addr_067_replace_phi89_pop75460_mux_s = in_valid_in_0;
    always @(filter_weight_addr_067_replace_phi89_pop75460_mux_s or in_filter_weight_addr_067_replace_phi89_pop75460_1 or in_filter_weight_addr_067_replace_phi89_pop75460_0)
    begin
        unique case (filter_weight_addr_067_replace_phi89_pop75460_mux_s)
            1'b0 : filter_weight_addr_067_replace_phi89_pop75460_mux_q = in_filter_weight_addr_067_replace_phi89_pop75460_1;
            1'b1 : filter_weight_addr_067_replace_phi89_pop75460_mux_q = in_filter_weight_addr_067_replace_phi89_pop75460_0;
            default : filter_weight_addr_067_replace_phi89_pop75460_mux_q = 64'b0;
        endcase
    end

    // out_filter_weight_addr_067_replace_phi89_pop75460(GPOUT,152)
    assign out_filter_weight_addr_067_replace_phi89_pop75460 = filter_weight_addr_067_replace_phi89_pop75460_mux_q;

    // forked37_mux(MUX,23)
    assign forked37_mux_s = in_valid_in_0;
    always @(forked37_mux_s or in_forked37_1 or in_forked37_0)
    begin
        unique case (forked37_mux_s)
            1'b0 : forked37_mux_q = in_forked37_1;
            1'b1 : forked37_mux_q = in_forked37_0;
            default : forked37_mux_q = 1'b0;
        endcase
    end

    // out_forked37(GPOUT,153)
    assign out_forked37 = forked37_mux_q;

    // inc50185_pop96497_mux(MUX,24)
    assign inc50185_pop96497_mux_s = in_valid_in_0;
    always @(inc50185_pop96497_mux_s or in_inc50185_pop96497_1 or in_inc50185_pop96497_0)
    begin
        unique case (inc50185_pop96497_mux_s)
            1'b0 : inc50185_pop96497_mux_q = in_inc50185_pop96497_1;
            1'b1 : inc50185_pop96497_mux_q = in_inc50185_pop96497_0;
            default : inc50185_pop96497_mux_q = 32'b0;
        endcase
    end

    // out_inc50185_pop96497(GPOUT,154)
    assign out_inc50185_pop96497 = inc50185_pop96497_mux_q;

    // j_061_pop24177_pop93494_mux(MUX,120)
    assign j_061_pop24177_pop93494_mux_s = in_valid_in_0;
    always @(j_061_pop24177_pop93494_mux_s or in_j_061_pop24177_pop93494_1 or in_j_061_pop24177_pop93494_0)
    begin
        unique case (j_061_pop24177_pop93494_mux_s)
            1'b0 : j_061_pop24177_pop93494_mux_q = in_j_061_pop24177_pop93494_1;
            1'b1 : j_061_pop24177_pop93494_mux_q = in_j_061_pop24177_pop93494_0;
            default : j_061_pop24177_pop93494_mux_q = 32'b0;
        endcase
    end

    // out_j_061_pop24177_pop93494(GPOUT,155)
    assign out_j_061_pop24177_pop93494 = j_061_pop24177_pop93494_mux_q;

    // lm25101_pop77466_mux(MUX,121)
    assign lm25101_pop77466_mux_s = in_valid_in_0;
    always @(lm25101_pop77466_mux_s or in_lm25101_pop77466_1 or in_lm25101_pop77466_0)
    begin
        unique case (lm25101_pop77466_mux_s)
            1'b0 : lm25101_pop77466_mux_q = in_lm25101_pop77466_1;
            1'b1 : lm25101_pop77466_mux_q = in_lm25101_pop77466_0;
            default : lm25101_pop77466_mux_q = 32'b0;
        endcase
    end

    // out_lm25101_pop77466(GPOUT,156)
    assign out_lm25101_pop77466 = lm25101_pop77466_mux_q;

    // lm25221_mux(MUX,122)
    assign lm25221_mux_s = in_valid_in_0;
    always @(lm25221_mux_s or in_lm25221_1 or in_lm25221_0)
    begin
        unique case (lm25221_mux_s)
            1'b0 : lm25221_mux_q = in_lm25221_1;
            1'b1 : lm25221_mux_q = in_lm25221_0;
            default : lm25221_mux_q = 32'b0;
        endcase
    end

    // out_lm25221(GPOUT,157)
    assign out_lm25221 = lm25221_mux_q;

    // lm2597_pop21359_mux(MUX,123)
    assign lm2597_pop21359_mux_s = in_valid_in_0;
    always @(lm2597_pop21359_mux_s or in_lm2597_pop21359_1 or in_lm2597_pop21359_0)
    begin
        unique case (lm2597_pop21359_mux_s)
            1'b0 : lm2597_pop21359_mux_q = in_lm2597_pop21359_1;
            1'b1 : lm2597_pop21359_mux_q = in_lm2597_pop21359_0;
            default : lm2597_pop21359_mux_q = 32'b0;
        endcase
    end

    // out_lm2597_pop21359(GPOUT,158)
    assign out_lm2597_pop21359 = lm2597_pop21359_mux_q;

    // mul56117_pop80472_mux(MUX,124)
    assign mul56117_pop80472_mux_s = in_valid_in_0;
    always @(mul56117_pop80472_mux_s or in_mul56117_pop80472_1 or in_mul56117_pop80472_0)
    begin
        unique case (mul56117_pop80472_mux_s)
            1'b0 : mul56117_pop80472_mux_q = in_mul56117_pop80472_1;
            1'b1 : mul56117_pop80472_mux_q = in_mul56117_pop80472_0;
            default : mul56117_pop80472_mux_q = 32'b0;
        endcase
    end

    // out_mul56117_pop80472(GPOUT,159)
    assign out_mul56117_pop80472 = mul56117_pop80472_mux_q;

    // mul56251_mux(MUX,125)
    assign mul56251_mux_s = in_valid_in_0;
    always @(mul56251_mux_s or in_mul56251_1 or in_mul56251_0)
    begin
        unique case (mul56251_mux_s)
            1'b0 : mul56251_mux_q = in_mul56251_1;
            1'b1 : mul56251_mux_q = in_mul56251_0;
            default : mul56251_mux_q = 32'b0;
        endcase
    end

    // out_mul56251(GPOUT,160)
    assign out_mul56251 = mul56251_mux_q;

    // notcmp73173_pop92492_mux(MUX,126)
    assign notcmp73173_pop92492_mux_s = in_valid_in_0;
    always @(notcmp73173_pop92492_mux_s or in_notcmp73173_pop92492_1 or in_notcmp73173_pop92492_0)
    begin
        unique case (notcmp73173_pop92492_mux_s)
            1'b0 : notcmp73173_pop92492_mux_q = in_notcmp73173_pop92492_1;
            1'b1 : notcmp73173_pop92492_mux_q = in_notcmp73173_pop92492_0;
            default : notcmp73173_pop92492_mux_q = 1'b0;
        endcase
    end

    // out_notcmp73173_pop92492(GPOUT,161)
    assign out_notcmp73173_pop92492 = notcmp73173_pop92492_mux_q;

    // notcmp77162_pop89486_mux(MUX,127)
    assign notcmp77162_pop89486_mux_s = in_valid_in_0;
    always @(notcmp77162_pop89486_mux_s or in_notcmp77162_pop89486_1 or in_notcmp77162_pop89486_0)
    begin
        unique case (notcmp77162_pop89486_mux_s)
            1'b0 : notcmp77162_pop89486_mux_q = in_notcmp77162_pop89486_1;
            1'b1 : notcmp77162_pop89486_mux_q = in_notcmp77162_pop89486_0;
            default : notcmp77162_pop89486_mux_q = 1'b0;
        endcase
    end

    // out_notcmp77162_pop89486(GPOUT,162)
    assign out_notcmp77162_pop89486 = notcmp77162_pop89486_mux_q;

    // notcmp77332_mux(MUX,128)
    assign notcmp77332_mux_s = in_valid_in_0;
    always @(notcmp77332_mux_s or in_notcmp77332_1 or in_notcmp77332_0)
    begin
        unique case (notcmp77332_mux_s)
            1'b0 : notcmp77332_mux_q = in_notcmp77332_1;
            1'b1 : notcmp77332_mux_q = in_notcmp77332_0;
            default : notcmp77332_mux_q = 1'b0;
        endcase
    end

    // out_notcmp77332(GPOUT,163)
    assign out_notcmp77332 = notcmp77332_mux_q;

    // notcmp81103_pop22368_mux(MUX,129)
    assign notcmp81103_pop22368_mux_s = in_valid_in_0;
    always @(notcmp81103_pop22368_mux_s or in_notcmp81103_pop22368_1 or in_notcmp81103_pop22368_0)
    begin
        unique case (notcmp81103_pop22368_mux_s)
            1'b0 : notcmp81103_pop22368_mux_q = in_notcmp81103_pop22368_1;
            1'b1 : notcmp81103_pop22368_mux_q = in_notcmp81103_pop22368_0;
            default : notcmp81103_pop22368_mux_q = 1'b0;
        endcase
    end

    // out_notcmp81103_pop22368(GPOUT,164)
    assign out_notcmp81103_pop22368 = notcmp81103_pop22368_mux_q;

    // notcmp81107_pop78468_mux(MUX,130)
    assign notcmp81107_pop78468_mux_s = in_valid_in_0;
    always @(notcmp81107_pop78468_mux_s or in_notcmp81107_pop78468_1 or in_notcmp81107_pop78468_0)
    begin
        unique case (notcmp81107_pop78468_mux_s)
            1'b0 : notcmp81107_pop78468_mux_q = in_notcmp81107_pop78468_1;
            1'b1 : notcmp81107_pop78468_mux_q = in_notcmp81107_pop78468_0;
            default : notcmp81107_pop78468_mux_q = 1'b0;
        endcase
    end

    // out_notcmp81107_pop78468(GPOUT,165)
    assign out_notcmp81107_pop78468 = notcmp81107_pop78468_mux_q;

    // notcmp81232_mux(MUX,131)
    assign notcmp81232_mux_s = in_valid_in_0;
    always @(notcmp81232_mux_s or in_notcmp81232_1 or in_notcmp81232_0)
    begin
        unique case (notcmp81232_mux_s)
            1'b0 : notcmp81232_mux_q = in_notcmp81232_1;
            1'b1 : notcmp81232_mux_q = in_notcmp81232_0;
            default : notcmp81232_mux_q = 1'b0;
        endcase
    end

    // out_notcmp81232(GPOUT,166)
    assign out_notcmp81232 = notcmp81232_mux_q;

    // output_im_addr_068_replace_phi210_mux(MUX,181)
    assign output_im_addr_068_replace_phi210_mux_s = in_valid_in_0;
    always @(output_im_addr_068_replace_phi210_mux_s or in_output_im_addr_068_replace_phi210_1 or in_output_im_addr_068_replace_phi210_0)
    begin
        unique case (output_im_addr_068_replace_phi210_mux_s)
            1'b0 : output_im_addr_068_replace_phi210_mux_q = in_output_im_addr_068_replace_phi210_1;
            1'b1 : output_im_addr_068_replace_phi210_mux_q = in_output_im_addr_068_replace_phi210_0;
            default : output_im_addr_068_replace_phi210_mux_q = 64'b0;
        endcase
    end

    // out_output_im_addr_068_replace_phi210(GPOUT,167)
    assign out_output_im_addr_068_replace_phi210 = output_im_addr_068_replace_phi210_mux_q;

    // output_im_addr_068_replace_phi91_pop20350_mux(MUX,182)
    assign output_im_addr_068_replace_phi91_pop20350_mux_s = in_valid_in_0;
    always @(output_im_addr_068_replace_phi91_pop20350_mux_s or in_output_im_addr_068_replace_phi91_pop20350_1 or in_output_im_addr_068_replace_phi91_pop20350_0)
    begin
        unique case (output_im_addr_068_replace_phi91_pop20350_mux_s)
            1'b0 : output_im_addr_068_replace_phi91_pop20350_mux_q = in_output_im_addr_068_replace_phi91_pop20350_1;
            1'b1 : output_im_addr_068_replace_phi91_pop20350_mux_q = in_output_im_addr_068_replace_phi91_pop20350_0;
            default : output_im_addr_068_replace_phi91_pop20350_mux_q = 64'b0;
        endcase
    end

    // out_output_im_addr_068_replace_phi91_pop20350(GPOUT,168)
    assign out_output_im_addr_068_replace_phi91_pop20350 = output_im_addr_068_replace_phi91_pop20350_mux_q;

    // output_im_addr_068_replace_phi95_pop76464_mux(MUX,183)
    assign output_im_addr_068_replace_phi95_pop76464_mux_s = in_valid_in_0;
    always @(output_im_addr_068_replace_phi95_pop76464_mux_s or in_output_im_addr_068_replace_phi95_pop76464_1 or in_output_im_addr_068_replace_phi95_pop76464_0)
    begin
        unique case (output_im_addr_068_replace_phi95_pop76464_mux_s)
            1'b0 : output_im_addr_068_replace_phi95_pop76464_mux_q = in_output_im_addr_068_replace_phi95_pop76464_1;
            1'b1 : output_im_addr_068_replace_phi95_pop76464_mux_q = in_output_im_addr_068_replace_phi95_pop76464_0;
            default : output_im_addr_068_replace_phi95_pop76464_mux_q = 64'b0;
        endcase
    end

    // out_output_im_addr_068_replace_phi95_pop76464(GPOUT,169)
    assign out_output_im_addr_068_replace_phi95_pop76464 = output_im_addr_068_replace_phi95_pop76464_mux_q;

    // pad_sync_buffer169_pop91490_mux(MUX,184)
    assign pad_sync_buffer169_pop91490_mux_s = in_valid_in_0;
    always @(pad_sync_buffer169_pop91490_mux_s or in_pad_sync_buffer169_pop91490_1 or in_pad_sync_buffer169_pop91490_0)
    begin
        unique case (pad_sync_buffer169_pop91490_mux_s)
            1'b0 : pad_sync_buffer169_pop91490_mux_q = in_pad_sync_buffer169_pop91490_1;
            1'b1 : pad_sync_buffer169_pop91490_mux_q = in_pad_sync_buffer169_pop91490_0;
            default : pad_sync_buffer169_pop91490_mux_q = 32'b0;
        endcase
    end

    // out_pad_sync_buffer169_pop91490(GPOUT,170)
    assign out_pad_sync_buffer169_pop91490 = pad_sync_buffer169_pop91490_mux_q;

    // pop94458_mux(MUX,185)
    assign pop94458_mux_s = in_valid_in_0;
    always @(pop94458_mux_s or in_pop94458_1 or in_pop94458_0)
    begin
        unique case (pop94458_mux_s)
            1'b0 : pop94458_mux_q = in_pop94458_1;
            1'b1 : pop94458_mux_q = in_pop94458_0;
            default : pop94458_mux_q = 1'b0;
        endcase
    end

    // out_pop94458(GPOUT,171)
    assign out_pop94458 = pop94458_mux_q;

    // pop97499_mux(MUX,186)
    assign pop97499_mux_s = in_valid_in_0;
    always @(pop97499_mux_s or in_pop97499_1 or in_pop97499_0)
    begin
        unique case (pop97499_mux_s)
            1'b0 : pop97499_mux_q = in_pop97499_1;
            1'b1 : pop97499_mux_q = in_pop97499_0;
            default : pop97499_mux_q = 1'b0;
        endcase
    end

    // out_pop97499(GPOUT,172)
    assign out_pop97499 = pop97499_mux_q;

    // valid_or(LOGICAL,194)
    assign valid_or_q = in_valid_in_0 | in_valid_in_1;

    // stall_out(LOGICAL,187)
    assign stall_out_q = valid_or_q & in_stall_in;

    // out_stall_out_0(GPOUT,173)
    assign out_stall_out_0 = stall_out_q;

    // stall_out_1_specific(LOGICAL,188)
    assign stall_out_1_specific_q = in_valid_in_0 | stall_out_q;

    // out_stall_out_1(GPOUT,174)
    assign out_stall_out_1 = stall_out_1_specific_q;

    // stride_sync_buffer165_pop90488_mux(MUX,189)
    assign stride_sync_buffer165_pop90488_mux_s = in_valid_in_0;
    always @(stride_sync_buffer165_pop90488_mux_s or in_stride_sync_buffer165_pop90488_1 or in_stride_sync_buffer165_pop90488_0)
    begin
        unique case (stride_sync_buffer165_pop90488_mux_s)
            1'b0 : stride_sync_buffer165_pop90488_mux_q = in_stride_sync_buffer165_pop90488_1;
            1'b1 : stride_sync_buffer165_pop90488_mux_q = in_stride_sync_buffer165_pop90488_0;
            default : stride_sync_buffer165_pop90488_mux_q = 32'b0;
        endcase
    end

    // out_stride_sync_buffer165_pop90488(GPOUT,175)
    assign out_stride_sync_buffer165_pop90488 = stride_sync_buffer165_pop90488_mux_q;

    // sub_1132_pop83478_mux(MUX,190)
    assign sub_1132_pop83478_mux_s = in_valid_in_0;
    always @(sub_1132_pop83478_mux_s or in_sub_1132_pop83478_1 or in_sub_1132_pop83478_0)
    begin
        unique case (sub_1132_pop83478_mux_s)
            1'b0 : sub_1132_pop83478_mux_q = in_sub_1132_pop83478_1;
            1'b1 : sub_1132_pop83478_mux_q = in_sub_1132_pop83478_0;
            default : sub_1132_pop83478_mux_q = 32'b0;
        endcase
    end

    // out_sub_1132_pop83478(GPOUT,176)
    assign out_sub_1132_pop83478 = sub_1132_pop83478_mux_q;

    // sub_1278_mux(MUX,191)
    assign sub_1278_mux_s = in_valid_in_0;
    always @(sub_1278_mux_s or in_sub_1278_1 or in_sub_1278_0)
    begin
        unique case (sub_1278_mux_s)
            1'b0 : sub_1278_mux_q = in_sub_1278_1;
            1'b1 : sub_1278_mux_q = in_sub_1278_0;
            default : sub_1278_mux_q = 32'b0;
        endcase
    end

    // out_sub_1278(GPOUT,177)
    assign out_sub_1278 = sub_1278_mux_q;

    // sub_2147_pop86480_mux(MUX,192)
    assign sub_2147_pop86480_mux_s = in_valid_in_0;
    always @(sub_2147_pop86480_mux_s or in_sub_2147_pop86480_1 or in_sub_2147_pop86480_0)
    begin
        unique case (sub_2147_pop86480_mux_s)
            1'b0 : sub_2147_pop86480_mux_q = in_sub_2147_pop86480_1;
            1'b1 : sub_2147_pop86480_mux_q = in_sub_2147_pop86480_0;
            default : sub_2147_pop86480_mux_q = 32'b0;
        endcase
    end

    // out_sub_2147_pop86480(GPOUT,178)
    assign out_sub_2147_pop86480 = sub_2147_pop86480_mux_q;

    // sub_2305_mux(MUX,193)
    assign sub_2305_mux_s = in_valid_in_0;
    always @(sub_2305_mux_s or in_sub_2305_1 or in_sub_2305_0)
    begin
        unique case (sub_2305_mux_s)
            1'b0 : sub_2305_mux_q = in_sub_2305_1;
            1'b1 : sub_2305_mux_q = in_sub_2305_0;
            default : sub_2305_mux_q = 32'b0;
        endcase
    end

    // out_sub_2305(GPOUT,179)
    assign out_sub_2305 = sub_2305_mux_q;

    // out_valid_out(GPOUT,180)
    assign out_valid_out = valid_or_q;

endmodule
