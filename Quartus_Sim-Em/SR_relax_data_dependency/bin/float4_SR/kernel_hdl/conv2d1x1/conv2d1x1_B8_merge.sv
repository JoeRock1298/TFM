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

// SystemVerilog created from conv2d1x1_B8_merge
// SystemVerilog created on Tue May 23 20:43:36 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2d1x1_B8_merge (
    input wire [0:0] in_forked17105_pop68312_0,
    input wire [0:0] in_forked17105_pop68312_1,
    input wire [0:0] in_forked17244_0,
    input wire [0:0] in_forked17244_1,
    input wire [0:0] in_forked59311_0,
    input wire [0:0] in_forked59311_1,
    input wire [0:0] in_forked59_and313_0,
    input wire [0:0] in_forked59_and313_1,
    input wire [0:0] in_forked_0,
    input wire [0:0] in_forked_1,
    input wire [31:0] in_ij_067_pop51318_0,
    input wire [31:0] in_ij_067_pop51318_1,
    input wire [31:0] in_lm96111_pop73338_0,
    input wire [31:0] in_lm96111_pop73338_1,
    input wire [31:0] in_lm96253_0,
    input wire [31:0] in_lm96253_1,
    input wire [31:0] in_mul107_pop69335_0,
    input wire [31:0] in_mul107_pop69335_1,
    input wire [31:0] in_mul21113_pop74339_0,
    input wire [31:0] in_mul21113_pop74339_1,
    input wire [31:0] in_mul21256_0,
    input wire [31:0] in_mul21256_1,
    input wire [31:0] in_mul247_0,
    input wire [31:0] in_mul247_1,
    input wire [31:0] in_mul97115_pop75340_0,
    input wire [31:0] in_mul97115_pop75340_1,
    input wire [31:0] in_mul97259_0,
    input wire [31:0] in_mul97259_1,
    input wire [0:0] in_notcmp19317_0,
    input wire [0:0] in_notcmp19317_1,
    input wire [0:0] in_notcmp24117_pop77341_0,
    input wire [0:0] in_notcmp24117_pop77341_1,
    input wire [0:0] in_notcmp24262_0,
    input wire [0:0] in_notcmp24262_1,
    input wire [0:0] in_or316_0,
    input wire [0:0] in_or316_1,
    input wire [0:0] in_phi_decision102_xor109_pop72314_0,
    input wire [0:0] in_phi_decision102_xor109_pop72314_1,
    input wire [0:0] in_phi_decision102_xor250_0,
    input wire [0:0] in_phi_decision102_xor250_1,
    input wire [31:0] in_pop12268_0,
    input wire [31:0] in_pop12268_1,
    input wire [31:0] in_pop53320_0,
    input wire [31:0] in_pop53320_1,
    input wire [0:0] in_pop70336_0,
    input wire [0:0] in_pop70336_1,
    input wire [0:0] in_pop71337_0,
    input wire [0:0] in_pop71337_1,
    input wire [0:0] in_pop76315_0,
    input wire [0:0] in_pop76315_1,
    input wire [31:0] in_spec_select155_0,
    input wire [31:0] in_spec_select155_1,
    input wire [31:0] in_spec_select323161_0,
    input wire [31:0] in_spec_select323161_1,
    input wire [31:0] in_spec_select32363_pop13271_0,
    input wire [31:0] in_spec_select32363_pop13271_1,
    input wire [31:0] in_spec_select32364_pop54321_0,
    input wire [31:0] in_spec_select32364_pop54321_1,
    input wire [31:0] in_spec_select324167_0,
    input wire [31:0] in_spec_select324167_1,
    input wire [31:0] in_spec_select32466_pop14274_0,
    input wire [31:0] in_spec_select32466_pop14274_1,
    input wire [31:0] in_spec_select32467_pop55322_0,
    input wire [31:0] in_spec_select32467_pop55322_1,
    input wire [31:0] in_spec_select325173_0,
    input wire [31:0] in_spec_select325173_1,
    input wire [31:0] in_spec_select32569_pop15277_0,
    input wire [31:0] in_spec_select32569_pop15277_1,
    input wire [31:0] in_spec_select32570_pop56323_0,
    input wire [31:0] in_spec_select32570_pop56323_1,
    input wire [31:0] in_spec_select326179_0,
    input wire [31:0] in_spec_select326179_1,
    input wire [31:0] in_spec_select32672_pop16280_0,
    input wire [31:0] in_spec_select32672_pop16280_1,
    input wire [31:0] in_spec_select32673_pop57324_0,
    input wire [31:0] in_spec_select32673_pop57324_1,
    input wire [31:0] in_spec_select327185_0,
    input wire [31:0] in_spec_select327185_1,
    input wire [31:0] in_spec_select32775_pop17283_0,
    input wire [31:0] in_spec_select32775_pop17283_1,
    input wire [31:0] in_spec_select32776_pop58325_0,
    input wire [31:0] in_spec_select32776_pop58325_1,
    input wire [31:0] in_spec_select328191_0,
    input wire [31:0] in_spec_select328191_1,
    input wire [31:0] in_spec_select32878_pop18286_0,
    input wire [31:0] in_spec_select32878_pop18286_1,
    input wire [31:0] in_spec_select32879_pop59326_0,
    input wire [31:0] in_spec_select32879_pop59326_1,
    input wire [31:0] in_spec_select329197_0,
    input wire [31:0] in_spec_select329197_1,
    input wire [31:0] in_spec_select32981_pop19289_0,
    input wire [31:0] in_spec_select32981_pop19289_1,
    input wire [31:0] in_spec_select32982_pop60327_0,
    input wire [31:0] in_spec_select32982_pop60327_1,
    input wire [31:0] in_spec_select330203_0,
    input wire [31:0] in_spec_select330203_1,
    input wire [31:0] in_spec_select33084_pop20292_0,
    input wire [31:0] in_spec_select33084_pop20292_1,
    input wire [31:0] in_spec_select33085_pop61328_0,
    input wire [31:0] in_spec_select33085_pop61328_1,
    input wire [31:0] in_spec_select331209_0,
    input wire [31:0] in_spec_select331209_1,
    input wire [31:0] in_spec_select33187_pop21295_0,
    input wire [31:0] in_spec_select33187_pop21295_1,
    input wire [31:0] in_spec_select33188_pop62329_0,
    input wire [31:0] in_spec_select33188_pop62329_1,
    input wire [31:0] in_spec_select332215_0,
    input wire [31:0] in_spec_select332215_1,
    input wire [31:0] in_spec_select33290_pop22298_0,
    input wire [31:0] in_spec_select33290_pop22298_1,
    input wire [31:0] in_spec_select33291_pop63330_0,
    input wire [31:0] in_spec_select33291_pop63330_1,
    input wire [31:0] in_spec_select333221_0,
    input wire [31:0] in_spec_select333221_1,
    input wire [31:0] in_spec_select33393_pop23301_0,
    input wire [31:0] in_spec_select33393_pop23301_1,
    input wire [31:0] in_spec_select33394_pop64331_0,
    input wire [31:0] in_spec_select33394_pop64331_1,
    input wire [31:0] in_spec_select334227_0,
    input wire [31:0] in_spec_select334227_1,
    input wire [31:0] in_spec_select33496_pop24302_0,
    input wire [31:0] in_spec_select33496_pop24302_1,
    input wire [31:0] in_spec_select33497_pop65332_0,
    input wire [31:0] in_spec_select33497_pop65332_1,
    input wire [31:0] in_spec_select335100_pop66333_0,
    input wire [31:0] in_spec_select335100_pop66333_1,
    input wire [31:0] in_spec_select335233_0,
    input wire [31:0] in_spec_select335233_1,
    input wire [31:0] in_spec_select33599_pop25305_0,
    input wire [31:0] in_spec_select33599_pop25305_1,
    input wire [31:0] in_spec_select336102_pop26308_0,
    input wire [31:0] in_spec_select336102_pop26308_1,
    input wire [31:0] in_spec_select336103_pop67334_0,
    input wire [31:0] in_spec_select336103_pop67334_1,
    input wire [31:0] in_spec_select336239_0,
    input wire [31:0] in_spec_select336239_1,
    input wire [31:0] in_spec_select60_pop11265_0,
    input wire [31:0] in_spec_select60_pop11265_1,
    input wire [31:0] in_spec_select61_pop52319_0,
    input wire [31:0] in_spec_select61_pop52319_1,
    input wire [0:0] in_stall_in,
    input wire [31:0] in_unnamed_conv2d1x114_0,
    input wire [31:0] in_unnamed_conv2d1x114_1,
    input wire [0:0] in_unnamed_conv2d1x115_0,
    input wire [0:0] in_unnamed_conv2d1x115_1,
    input wire [0:0] in_unnamed_conv2d1x116_0,
    input wire [0:0] in_unnamed_conv2d1x116_1,
    input wire [32:0] in_unnamed_conv2d1x117_0,
    input wire [32:0] in_unnamed_conv2d1x117_1,
    input wire [0:0] in_unnamed_conv2d1x118_0,
    input wire [0:0] in_unnamed_conv2d1x118_1,
    input wire [0:0] in_unnamed_conv2d1x119_0,
    input wire [0:0] in_unnamed_conv2d1x119_1,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [0:0] out_forked,
    output wire [0:0] out_forked17105_pop68312,
    output wire [0:0] out_forked17244,
    output wire [0:0] out_forked59311,
    output wire [0:0] out_forked59_and313,
    output wire [31:0] out_ij_067_pop51318,
    output wire [31:0] out_lm96111_pop73338,
    output wire [31:0] out_lm96253,
    output wire [31:0] out_mul107_pop69335,
    output wire [31:0] out_mul21113_pop74339,
    output wire [31:0] out_mul21256,
    output wire [31:0] out_mul247,
    output wire [31:0] out_mul97115_pop75340,
    output wire [31:0] out_mul97259,
    output wire [0:0] out_notcmp19317,
    output wire [0:0] out_notcmp24117_pop77341,
    output wire [0:0] out_notcmp24262,
    output wire [0:0] out_or316,
    output wire [0:0] out_phi_decision102_xor109_pop72314,
    output wire [0:0] out_phi_decision102_xor250,
    output wire [31:0] out_pop12268,
    output wire [31:0] out_pop53320,
    output wire [0:0] out_pop70336,
    output wire [0:0] out_pop71337,
    output wire [0:0] out_pop76315,
    output wire [31:0] out_spec_select155,
    output wire [31:0] out_spec_select323161,
    output wire [31:0] out_spec_select32363_pop13271,
    output wire [31:0] out_spec_select32364_pop54321,
    output wire [31:0] out_spec_select324167,
    output wire [31:0] out_spec_select32466_pop14274,
    output wire [31:0] out_spec_select32467_pop55322,
    output wire [31:0] out_spec_select325173,
    output wire [31:0] out_spec_select32569_pop15277,
    output wire [31:0] out_spec_select32570_pop56323,
    output wire [31:0] out_spec_select326179,
    output wire [31:0] out_spec_select32672_pop16280,
    output wire [31:0] out_spec_select32673_pop57324,
    output wire [31:0] out_spec_select327185,
    output wire [31:0] out_spec_select32775_pop17283,
    output wire [31:0] out_spec_select32776_pop58325,
    output wire [31:0] out_spec_select328191,
    output wire [31:0] out_spec_select32878_pop18286,
    output wire [31:0] out_spec_select32879_pop59326,
    output wire [31:0] out_spec_select329197,
    output wire [31:0] out_spec_select32981_pop19289,
    output wire [31:0] out_spec_select32982_pop60327,
    output wire [31:0] out_spec_select330203,
    output wire [31:0] out_spec_select33084_pop20292,
    output wire [31:0] out_spec_select33085_pop61328,
    output wire [31:0] out_spec_select331209,
    output wire [31:0] out_spec_select33187_pop21295,
    output wire [31:0] out_spec_select33188_pop62329,
    output wire [31:0] out_spec_select332215,
    output wire [31:0] out_spec_select33290_pop22298,
    output wire [31:0] out_spec_select33291_pop63330,
    output wire [31:0] out_spec_select333221,
    output wire [31:0] out_spec_select33393_pop23301,
    output wire [31:0] out_spec_select33394_pop64331,
    output wire [31:0] out_spec_select334227,
    output wire [31:0] out_spec_select33496_pop24302,
    output wire [31:0] out_spec_select33497_pop65332,
    output wire [31:0] out_spec_select335100_pop66333,
    output wire [31:0] out_spec_select335233,
    output wire [31:0] out_spec_select33599_pop25305,
    output wire [31:0] out_spec_select336102_pop26308,
    output wire [31:0] out_spec_select336103_pop67334,
    output wire [31:0] out_spec_select336239,
    output wire [31:0] out_spec_select60_pop11265,
    output wire [31:0] out_spec_select61_pop52319,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [31:0] out_unnamed_conv2d1x114,
    output wire [0:0] out_unnamed_conv2d1x115,
    output wire [0:0] out_unnamed_conv2d1x116,
    output wire [32:0] out_unnamed_conv2d1x117,
    output wire [0:0] out_unnamed_conv2d1x118,
    output wire [0:0] out_unnamed_conv2d1x119,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    wire [0:0] forked17105_pop68312_mux_s;
    reg [0:0] forked17105_pop68312_mux_q;
    wire [0:0] forked17244_mux_s;
    reg [0:0] forked17244_mux_q;
    wire [0:0] forked59311_mux_s;
    reg [0:0] forked59311_mux_q;
    wire [0:0] forked59_and313_mux_s;
    reg [0:0] forked59_and313_mux_q;
    wire [0:0] forked_mux_s;
    reg [0:0] forked_mux_q;
    wire [0:0] ij_067_pop51318_mux_s;
    reg [31:0] ij_067_pop51318_mux_q;
    wire [0:0] lm96111_pop73338_mux_s;
    reg [31:0] lm96111_pop73338_mux_q;
    wire [0:0] lm96253_mux_s;
    reg [31:0] lm96253_mux_q;
    wire [0:0] mul107_pop69335_mux_s;
    reg [31:0] mul107_pop69335_mux_q;
    wire [0:0] mul21113_pop74339_mux_s;
    reg [31:0] mul21113_pop74339_mux_q;
    wire [0:0] mul21256_mux_s;
    reg [31:0] mul21256_mux_q;
    wire [0:0] mul247_mux_s;
    reg [31:0] mul247_mux_q;
    wire [0:0] mul97115_pop75340_mux_s;
    reg [31:0] mul97115_pop75340_mux_q;
    wire [0:0] mul97259_mux_s;
    reg [31:0] mul97259_mux_q;
    wire [0:0] notcmp19317_mux_s;
    reg [0:0] notcmp19317_mux_q;
    wire [0:0] notcmp24117_pop77341_mux_s;
    reg [0:0] notcmp24117_pop77341_mux_q;
    wire [0:0] notcmp24262_mux_s;
    reg [0:0] notcmp24262_mux_q;
    wire [0:0] or316_mux_s;
    reg [0:0] or316_mux_q;
    wire [0:0] phi_decision102_xor109_pop72314_mux_s;
    reg [0:0] phi_decision102_xor109_pop72314_mux_q;
    wire [0:0] phi_decision102_xor250_mux_s;
    reg [0:0] phi_decision102_xor250_mux_q;
    wire [0:0] pop12268_mux_s;
    reg [31:0] pop12268_mux_q;
    wire [0:0] pop53320_mux_s;
    reg [31:0] pop53320_mux_q;
    wire [0:0] pop70336_mux_s;
    reg [0:0] pop70336_mux_q;
    wire [0:0] pop71337_mux_s;
    reg [0:0] pop71337_mux_q;
    wire [0:0] pop76315_mux_s;
    reg [0:0] pop76315_mux_q;
    wire [0:0] spec_select155_mux_s;
    reg [31:0] spec_select155_mux_q;
    wire [0:0] spec_select323161_mux_s;
    reg [31:0] spec_select323161_mux_q;
    wire [0:0] spec_select32363_pop13271_mux_s;
    reg [31:0] spec_select32363_pop13271_mux_q;
    wire [0:0] spec_select32364_pop54321_mux_s;
    reg [31:0] spec_select32364_pop54321_mux_q;
    wire [0:0] spec_select324167_mux_s;
    reg [31:0] spec_select324167_mux_q;
    wire [0:0] spec_select32466_pop14274_mux_s;
    reg [31:0] spec_select32466_pop14274_mux_q;
    wire [0:0] spec_select32467_pop55322_mux_s;
    reg [31:0] spec_select32467_pop55322_mux_q;
    wire [0:0] spec_select325173_mux_s;
    reg [31:0] spec_select325173_mux_q;
    wire [0:0] spec_select32569_pop15277_mux_s;
    reg [31:0] spec_select32569_pop15277_mux_q;
    wire [0:0] spec_select32570_pop56323_mux_s;
    reg [31:0] spec_select32570_pop56323_mux_q;
    wire [0:0] spec_select326179_mux_s;
    reg [31:0] spec_select326179_mux_q;
    wire [0:0] spec_select32672_pop16280_mux_s;
    reg [31:0] spec_select32672_pop16280_mux_q;
    wire [0:0] spec_select32673_pop57324_mux_s;
    reg [31:0] spec_select32673_pop57324_mux_q;
    wire [0:0] spec_select327185_mux_s;
    reg [31:0] spec_select327185_mux_q;
    wire [0:0] spec_select32775_pop17283_mux_s;
    reg [31:0] spec_select32775_pop17283_mux_q;
    wire [0:0] spec_select32776_pop58325_mux_s;
    reg [31:0] spec_select32776_pop58325_mux_q;
    wire [0:0] spec_select328191_mux_s;
    reg [31:0] spec_select328191_mux_q;
    wire [0:0] spec_select32878_pop18286_mux_s;
    reg [31:0] spec_select32878_pop18286_mux_q;
    wire [0:0] spec_select32879_pop59326_mux_s;
    reg [31:0] spec_select32879_pop59326_mux_q;
    wire [0:0] spec_select329197_mux_s;
    reg [31:0] spec_select329197_mux_q;
    wire [0:0] spec_select32981_pop19289_mux_s;
    reg [31:0] spec_select32981_pop19289_mux_q;
    wire [0:0] spec_select32982_pop60327_mux_s;
    reg [31:0] spec_select32982_pop60327_mux_q;
    wire [0:0] spec_select330203_mux_s;
    reg [31:0] spec_select330203_mux_q;
    wire [0:0] spec_select33084_pop20292_mux_s;
    reg [31:0] spec_select33084_pop20292_mux_q;
    wire [0:0] spec_select33085_pop61328_mux_s;
    reg [31:0] spec_select33085_pop61328_mux_q;
    wire [0:0] spec_select331209_mux_s;
    reg [31:0] spec_select331209_mux_q;
    wire [0:0] spec_select33187_pop21295_mux_s;
    reg [31:0] spec_select33187_pop21295_mux_q;
    wire [0:0] spec_select33188_pop62329_mux_s;
    reg [31:0] spec_select33188_pop62329_mux_q;
    wire [0:0] spec_select332215_mux_s;
    reg [31:0] spec_select332215_mux_q;
    wire [0:0] spec_select33290_pop22298_mux_s;
    reg [31:0] spec_select33290_pop22298_mux_q;
    wire [0:0] spec_select33291_pop63330_mux_s;
    reg [31:0] spec_select33291_pop63330_mux_q;
    wire [0:0] spec_select333221_mux_s;
    reg [31:0] spec_select333221_mux_q;
    wire [0:0] spec_select33393_pop23301_mux_s;
    reg [31:0] spec_select33393_pop23301_mux_q;
    wire [0:0] spec_select33394_pop64331_mux_s;
    reg [31:0] spec_select33394_pop64331_mux_q;
    wire [0:0] spec_select334227_mux_s;
    reg [31:0] spec_select334227_mux_q;
    wire [0:0] spec_select33496_pop24302_mux_s;
    reg [31:0] spec_select33496_pop24302_mux_q;
    wire [0:0] spec_select33497_pop65332_mux_s;
    reg [31:0] spec_select33497_pop65332_mux_q;
    wire [0:0] spec_select335100_pop66333_mux_s;
    reg [31:0] spec_select335100_pop66333_mux_q;
    wire [0:0] spec_select335233_mux_s;
    reg [31:0] spec_select335233_mux_q;
    wire [0:0] spec_select33599_pop25305_mux_s;
    reg [31:0] spec_select33599_pop25305_mux_q;
    wire [0:0] spec_select336102_pop26308_mux_s;
    reg [31:0] spec_select336102_pop26308_mux_q;
    wire [0:0] spec_select336103_pop67334_mux_s;
    reg [31:0] spec_select336103_pop67334_mux_q;
    wire [0:0] spec_select336239_mux_s;
    reg [31:0] spec_select336239_mux_q;
    wire [0:0] spec_select60_pop11265_mux_s;
    reg [31:0] spec_select60_pop11265_mux_q;
    wire [0:0] spec_select61_pop52319_mux_s;
    reg [31:0] spec_select61_pop52319_mux_q;
    wire [0:0] stall_out_q;
    wire [0:0] stall_out_1_specific_q;
    wire [0:0] unnamed_conv2d1x114_mux_s;
    reg [31:0] unnamed_conv2d1x114_mux_q;
    wire [0:0] unnamed_conv2d1x115_mux_s;
    reg [0:0] unnamed_conv2d1x115_mux_q;
    wire [0:0] unnamed_conv2d1x116_mux_s;
    reg [0:0] unnamed_conv2d1x116_mux_q;
    wire [0:0] unnamed_conv2d1x117_mux_s;
    reg [32:0] unnamed_conv2d1x117_mux_q;
    wire [0:0] unnamed_conv2d1x118_mux_s;
    reg [0:0] unnamed_conv2d1x118_mux_q;
    wire [0:0] unnamed_conv2d1x119_mux_s;
    reg [0:0] unnamed_conv2d1x119_mux_q;
    wire [0:0] valid_or_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // forked_mux(MUX,6)
    assign forked_mux_s = in_valid_in_0;
    always @(forked_mux_s or in_forked_1 or in_forked_0)
    begin
        unique case (forked_mux_s)
            1'b0 : forked_mux_q = in_forked_1;
            1'b1 : forked_mux_q = in_forked_0;
            default : forked_mux_q = 1'b0;
        endcase
    end

    // out_forked(GPOUT,175)
    assign out_forked = forked_mux_q;

    // forked17105_pop68312_mux(MUX,2)
    assign forked17105_pop68312_mux_s = in_valid_in_0;
    always @(forked17105_pop68312_mux_s or in_forked17105_pop68312_1 or in_forked17105_pop68312_0)
    begin
        unique case (forked17105_pop68312_mux_s)
            1'b0 : forked17105_pop68312_mux_q = in_forked17105_pop68312_1;
            1'b1 : forked17105_pop68312_mux_q = in_forked17105_pop68312_0;
            default : forked17105_pop68312_mux_q = 1'b0;
        endcase
    end

    // out_forked17105_pop68312(GPOUT,176)
    assign out_forked17105_pop68312 = forked17105_pop68312_mux_q;

    // forked17244_mux(MUX,3)
    assign forked17244_mux_s = in_valid_in_0;
    always @(forked17244_mux_s or in_forked17244_1 or in_forked17244_0)
    begin
        unique case (forked17244_mux_s)
            1'b0 : forked17244_mux_q = in_forked17244_1;
            1'b1 : forked17244_mux_q = in_forked17244_0;
            default : forked17244_mux_q = 1'b0;
        endcase
    end

    // out_forked17244(GPOUT,177)
    assign out_forked17244 = forked17244_mux_q;

    // forked59311_mux(MUX,4)
    assign forked59311_mux_s = in_valid_in_0;
    always @(forked59311_mux_s or in_forked59311_1 or in_forked59311_0)
    begin
        unique case (forked59311_mux_s)
            1'b0 : forked59311_mux_q = in_forked59311_1;
            1'b1 : forked59311_mux_q = in_forked59311_0;
            default : forked59311_mux_q = 1'b0;
        endcase
    end

    // out_forked59311(GPOUT,178)
    assign out_forked59311 = forked59311_mux_q;

    // forked59_and313_mux(MUX,5)
    assign forked59_and313_mux_s = in_valid_in_0;
    always @(forked59_and313_mux_s or in_forked59_and313_1 or in_forked59_and313_0)
    begin
        unique case (forked59_and313_mux_s)
            1'b0 : forked59_and313_mux_q = in_forked59_and313_1;
            1'b1 : forked59_and313_mux_q = in_forked59_and313_0;
            default : forked59_and313_mux_q = 1'b0;
        endcase
    end

    // out_forked59_and313(GPOUT,179)
    assign out_forked59_and313 = forked59_and313_mux_q;

    // ij_067_pop51318_mux(MUX,7)
    assign ij_067_pop51318_mux_s = in_valid_in_0;
    always @(ij_067_pop51318_mux_s or in_ij_067_pop51318_1 or in_ij_067_pop51318_0)
    begin
        unique case (ij_067_pop51318_mux_s)
            1'b0 : ij_067_pop51318_mux_q = in_ij_067_pop51318_1;
            1'b1 : ij_067_pop51318_mux_q = in_ij_067_pop51318_0;
            default : ij_067_pop51318_mux_q = 32'b0;
        endcase
    end

    // out_ij_067_pop51318(GPOUT,180)
    assign out_ij_067_pop51318 = ij_067_pop51318_mux_q;

    // lm96111_pop73338_mux(MUX,163)
    assign lm96111_pop73338_mux_s = in_valid_in_0;
    always @(lm96111_pop73338_mux_s or in_lm96111_pop73338_1 or in_lm96111_pop73338_0)
    begin
        unique case (lm96111_pop73338_mux_s)
            1'b0 : lm96111_pop73338_mux_q = in_lm96111_pop73338_1;
            1'b1 : lm96111_pop73338_mux_q = in_lm96111_pop73338_0;
            default : lm96111_pop73338_mux_q = 32'b0;
        endcase
    end

    // out_lm96111_pop73338(GPOUT,181)
    assign out_lm96111_pop73338 = lm96111_pop73338_mux_q;

    // lm96253_mux(MUX,164)
    assign lm96253_mux_s = in_valid_in_0;
    always @(lm96253_mux_s or in_lm96253_1 or in_lm96253_0)
    begin
        unique case (lm96253_mux_s)
            1'b0 : lm96253_mux_q = in_lm96253_1;
            1'b1 : lm96253_mux_q = in_lm96253_0;
            default : lm96253_mux_q = 32'b0;
        endcase
    end

    // out_lm96253(GPOUT,182)
    assign out_lm96253 = lm96253_mux_q;

    // mul107_pop69335_mux(MUX,165)
    assign mul107_pop69335_mux_s = in_valid_in_0;
    always @(mul107_pop69335_mux_s or in_mul107_pop69335_1 or in_mul107_pop69335_0)
    begin
        unique case (mul107_pop69335_mux_s)
            1'b0 : mul107_pop69335_mux_q = in_mul107_pop69335_1;
            1'b1 : mul107_pop69335_mux_q = in_mul107_pop69335_0;
            default : mul107_pop69335_mux_q = 32'b0;
        endcase
    end

    // out_mul107_pop69335(GPOUT,183)
    assign out_mul107_pop69335 = mul107_pop69335_mux_q;

    // mul21113_pop74339_mux(MUX,166)
    assign mul21113_pop74339_mux_s = in_valid_in_0;
    always @(mul21113_pop74339_mux_s or in_mul21113_pop74339_1 or in_mul21113_pop74339_0)
    begin
        unique case (mul21113_pop74339_mux_s)
            1'b0 : mul21113_pop74339_mux_q = in_mul21113_pop74339_1;
            1'b1 : mul21113_pop74339_mux_q = in_mul21113_pop74339_0;
            default : mul21113_pop74339_mux_q = 32'b0;
        endcase
    end

    // out_mul21113_pop74339(GPOUT,184)
    assign out_mul21113_pop74339 = mul21113_pop74339_mux_q;

    // mul21256_mux(MUX,167)
    assign mul21256_mux_s = in_valid_in_0;
    always @(mul21256_mux_s or in_mul21256_1 or in_mul21256_0)
    begin
        unique case (mul21256_mux_s)
            1'b0 : mul21256_mux_q = in_mul21256_1;
            1'b1 : mul21256_mux_q = in_mul21256_0;
            default : mul21256_mux_q = 32'b0;
        endcase
    end

    // out_mul21256(GPOUT,185)
    assign out_mul21256 = mul21256_mux_q;

    // mul247_mux(MUX,168)
    assign mul247_mux_s = in_valid_in_0;
    always @(mul247_mux_s or in_mul247_1 or in_mul247_0)
    begin
        unique case (mul247_mux_s)
            1'b0 : mul247_mux_q = in_mul247_1;
            1'b1 : mul247_mux_q = in_mul247_0;
            default : mul247_mux_q = 32'b0;
        endcase
    end

    // out_mul247(GPOUT,186)
    assign out_mul247 = mul247_mux_q;

    // mul97115_pop75340_mux(MUX,169)
    assign mul97115_pop75340_mux_s = in_valid_in_0;
    always @(mul97115_pop75340_mux_s or in_mul97115_pop75340_1 or in_mul97115_pop75340_0)
    begin
        unique case (mul97115_pop75340_mux_s)
            1'b0 : mul97115_pop75340_mux_q = in_mul97115_pop75340_1;
            1'b1 : mul97115_pop75340_mux_q = in_mul97115_pop75340_0;
            default : mul97115_pop75340_mux_q = 32'b0;
        endcase
    end

    // out_mul97115_pop75340(GPOUT,187)
    assign out_mul97115_pop75340 = mul97115_pop75340_mux_q;

    // mul97259_mux(MUX,170)
    assign mul97259_mux_s = in_valid_in_0;
    always @(mul97259_mux_s or in_mul97259_1 or in_mul97259_0)
    begin
        unique case (mul97259_mux_s)
            1'b0 : mul97259_mux_q = in_mul97259_1;
            1'b1 : mul97259_mux_q = in_mul97259_0;
            default : mul97259_mux_q = 32'b0;
        endcase
    end

    // out_mul97259(GPOUT,188)
    assign out_mul97259 = mul97259_mux_q;

    // notcmp19317_mux(MUX,171)
    assign notcmp19317_mux_s = in_valid_in_0;
    always @(notcmp19317_mux_s or in_notcmp19317_1 or in_notcmp19317_0)
    begin
        unique case (notcmp19317_mux_s)
            1'b0 : notcmp19317_mux_q = in_notcmp19317_1;
            1'b1 : notcmp19317_mux_q = in_notcmp19317_0;
            default : notcmp19317_mux_q = 1'b0;
        endcase
    end

    // out_notcmp19317(GPOUT,189)
    assign out_notcmp19317 = notcmp19317_mux_q;

    // notcmp24117_pop77341_mux(MUX,172)
    assign notcmp24117_pop77341_mux_s = in_valid_in_0;
    always @(notcmp24117_pop77341_mux_s or in_notcmp24117_pop77341_1 or in_notcmp24117_pop77341_0)
    begin
        unique case (notcmp24117_pop77341_mux_s)
            1'b0 : notcmp24117_pop77341_mux_q = in_notcmp24117_pop77341_1;
            1'b1 : notcmp24117_pop77341_mux_q = in_notcmp24117_pop77341_0;
            default : notcmp24117_pop77341_mux_q = 1'b0;
        endcase
    end

    // out_notcmp24117_pop77341(GPOUT,190)
    assign out_notcmp24117_pop77341 = notcmp24117_pop77341_mux_q;

    // notcmp24262_mux(MUX,173)
    assign notcmp24262_mux_s = in_valid_in_0;
    always @(notcmp24262_mux_s or in_notcmp24262_1 or in_notcmp24262_0)
    begin
        unique case (notcmp24262_mux_s)
            1'b0 : notcmp24262_mux_q = in_notcmp24262_1;
            1'b1 : notcmp24262_mux_q = in_notcmp24262_0;
            default : notcmp24262_mux_q = 1'b0;
        endcase
    end

    // out_notcmp24262(GPOUT,191)
    assign out_notcmp24262 = notcmp24262_mux_q;

    // or316_mux(MUX,174)
    assign or316_mux_s = in_valid_in_0;
    always @(or316_mux_s or in_or316_1 or in_or316_0)
    begin
        unique case (or316_mux_s)
            1'b0 : or316_mux_q = in_or316_1;
            1'b1 : or316_mux_q = in_or316_0;
            default : or316_mux_q = 1'b0;
        endcase
    end

    // out_or316(GPOUT,192)
    assign out_or316 = or316_mux_q;

    // phi_decision102_xor109_pop72314_mux(MUX,254)
    assign phi_decision102_xor109_pop72314_mux_s = in_valid_in_0;
    always @(phi_decision102_xor109_pop72314_mux_s or in_phi_decision102_xor109_pop72314_1 or in_phi_decision102_xor109_pop72314_0)
    begin
        unique case (phi_decision102_xor109_pop72314_mux_s)
            1'b0 : phi_decision102_xor109_pop72314_mux_q = in_phi_decision102_xor109_pop72314_1;
            1'b1 : phi_decision102_xor109_pop72314_mux_q = in_phi_decision102_xor109_pop72314_0;
            default : phi_decision102_xor109_pop72314_mux_q = 1'b0;
        endcase
    end

    // out_phi_decision102_xor109_pop72314(GPOUT,193)
    assign out_phi_decision102_xor109_pop72314 = phi_decision102_xor109_pop72314_mux_q;

    // phi_decision102_xor250_mux(MUX,255)
    assign phi_decision102_xor250_mux_s = in_valid_in_0;
    always @(phi_decision102_xor250_mux_s or in_phi_decision102_xor250_1 or in_phi_decision102_xor250_0)
    begin
        unique case (phi_decision102_xor250_mux_s)
            1'b0 : phi_decision102_xor250_mux_q = in_phi_decision102_xor250_1;
            1'b1 : phi_decision102_xor250_mux_q = in_phi_decision102_xor250_0;
            default : phi_decision102_xor250_mux_q = 1'b0;
        endcase
    end

    // out_phi_decision102_xor250(GPOUT,194)
    assign out_phi_decision102_xor250 = phi_decision102_xor250_mux_q;

    // pop12268_mux(MUX,256)
    assign pop12268_mux_s = in_valid_in_0;
    always @(pop12268_mux_s or in_pop12268_1 or in_pop12268_0)
    begin
        unique case (pop12268_mux_s)
            1'b0 : pop12268_mux_q = in_pop12268_1;
            1'b1 : pop12268_mux_q = in_pop12268_0;
            default : pop12268_mux_q = 32'b0;
        endcase
    end

    // out_pop12268(GPOUT,195)
    assign out_pop12268 = pop12268_mux_q;

    // pop53320_mux(MUX,257)
    assign pop53320_mux_s = in_valid_in_0;
    always @(pop53320_mux_s or in_pop53320_1 or in_pop53320_0)
    begin
        unique case (pop53320_mux_s)
            1'b0 : pop53320_mux_q = in_pop53320_1;
            1'b1 : pop53320_mux_q = in_pop53320_0;
            default : pop53320_mux_q = 32'b0;
        endcase
    end

    // out_pop53320(GPOUT,196)
    assign out_pop53320 = pop53320_mux_q;

    // pop70336_mux(MUX,258)
    assign pop70336_mux_s = in_valid_in_0;
    always @(pop70336_mux_s or in_pop70336_1 or in_pop70336_0)
    begin
        unique case (pop70336_mux_s)
            1'b0 : pop70336_mux_q = in_pop70336_1;
            1'b1 : pop70336_mux_q = in_pop70336_0;
            default : pop70336_mux_q = 1'b0;
        endcase
    end

    // out_pop70336(GPOUT,197)
    assign out_pop70336 = pop70336_mux_q;

    // pop71337_mux(MUX,259)
    assign pop71337_mux_s = in_valid_in_0;
    always @(pop71337_mux_s or in_pop71337_1 or in_pop71337_0)
    begin
        unique case (pop71337_mux_s)
            1'b0 : pop71337_mux_q = in_pop71337_1;
            1'b1 : pop71337_mux_q = in_pop71337_0;
            default : pop71337_mux_q = 1'b0;
        endcase
    end

    // out_pop71337(GPOUT,198)
    assign out_pop71337 = pop71337_mux_q;

    // pop76315_mux(MUX,260)
    assign pop76315_mux_s = in_valid_in_0;
    always @(pop76315_mux_s or in_pop76315_1 or in_pop76315_0)
    begin
        unique case (pop76315_mux_s)
            1'b0 : pop76315_mux_q = in_pop76315_1;
            1'b1 : pop76315_mux_q = in_pop76315_0;
            default : pop76315_mux_q = 1'b0;
        endcase
    end

    // out_pop76315(GPOUT,199)
    assign out_pop76315 = pop76315_mux_q;

    // spec_select155_mux(MUX,261)
    assign spec_select155_mux_s = in_valid_in_0;
    always @(spec_select155_mux_s or in_spec_select155_1 or in_spec_select155_0)
    begin
        unique case (spec_select155_mux_s)
            1'b0 : spec_select155_mux_q = in_spec_select155_1;
            1'b1 : spec_select155_mux_q = in_spec_select155_0;
            default : spec_select155_mux_q = 32'b0;
        endcase
    end

    // out_spec_select155(GPOUT,200)
    assign out_spec_select155 = spec_select155_mux_q;

    // spec_select323161_mux(MUX,262)
    assign spec_select323161_mux_s = in_valid_in_0;
    always @(spec_select323161_mux_s or in_spec_select323161_1 or in_spec_select323161_0)
    begin
        unique case (spec_select323161_mux_s)
            1'b0 : spec_select323161_mux_q = in_spec_select323161_1;
            1'b1 : spec_select323161_mux_q = in_spec_select323161_0;
            default : spec_select323161_mux_q = 32'b0;
        endcase
    end

    // out_spec_select323161(GPOUT,201)
    assign out_spec_select323161 = spec_select323161_mux_q;

    // spec_select32363_pop13271_mux(MUX,263)
    assign spec_select32363_pop13271_mux_s = in_valid_in_0;
    always @(spec_select32363_pop13271_mux_s or in_spec_select32363_pop13271_1 or in_spec_select32363_pop13271_0)
    begin
        unique case (spec_select32363_pop13271_mux_s)
            1'b0 : spec_select32363_pop13271_mux_q = in_spec_select32363_pop13271_1;
            1'b1 : spec_select32363_pop13271_mux_q = in_spec_select32363_pop13271_0;
            default : spec_select32363_pop13271_mux_q = 32'b0;
        endcase
    end

    // out_spec_select32363_pop13271(GPOUT,202)
    assign out_spec_select32363_pop13271 = spec_select32363_pop13271_mux_q;

    // spec_select32364_pop54321_mux(MUX,264)
    assign spec_select32364_pop54321_mux_s = in_valid_in_0;
    always @(spec_select32364_pop54321_mux_s or in_spec_select32364_pop54321_1 or in_spec_select32364_pop54321_0)
    begin
        unique case (spec_select32364_pop54321_mux_s)
            1'b0 : spec_select32364_pop54321_mux_q = in_spec_select32364_pop54321_1;
            1'b1 : spec_select32364_pop54321_mux_q = in_spec_select32364_pop54321_0;
            default : spec_select32364_pop54321_mux_q = 32'b0;
        endcase
    end

    // out_spec_select32364_pop54321(GPOUT,203)
    assign out_spec_select32364_pop54321 = spec_select32364_pop54321_mux_q;

    // spec_select324167_mux(MUX,265)
    assign spec_select324167_mux_s = in_valid_in_0;
    always @(spec_select324167_mux_s or in_spec_select324167_1 or in_spec_select324167_0)
    begin
        unique case (spec_select324167_mux_s)
            1'b0 : spec_select324167_mux_q = in_spec_select324167_1;
            1'b1 : spec_select324167_mux_q = in_spec_select324167_0;
            default : spec_select324167_mux_q = 32'b0;
        endcase
    end

    // out_spec_select324167(GPOUT,204)
    assign out_spec_select324167 = spec_select324167_mux_q;

    // spec_select32466_pop14274_mux(MUX,266)
    assign spec_select32466_pop14274_mux_s = in_valid_in_0;
    always @(spec_select32466_pop14274_mux_s or in_spec_select32466_pop14274_1 or in_spec_select32466_pop14274_0)
    begin
        unique case (spec_select32466_pop14274_mux_s)
            1'b0 : spec_select32466_pop14274_mux_q = in_spec_select32466_pop14274_1;
            1'b1 : spec_select32466_pop14274_mux_q = in_spec_select32466_pop14274_0;
            default : spec_select32466_pop14274_mux_q = 32'b0;
        endcase
    end

    // out_spec_select32466_pop14274(GPOUT,205)
    assign out_spec_select32466_pop14274 = spec_select32466_pop14274_mux_q;

    // spec_select32467_pop55322_mux(MUX,267)
    assign spec_select32467_pop55322_mux_s = in_valid_in_0;
    always @(spec_select32467_pop55322_mux_s or in_spec_select32467_pop55322_1 or in_spec_select32467_pop55322_0)
    begin
        unique case (spec_select32467_pop55322_mux_s)
            1'b0 : spec_select32467_pop55322_mux_q = in_spec_select32467_pop55322_1;
            1'b1 : spec_select32467_pop55322_mux_q = in_spec_select32467_pop55322_0;
            default : spec_select32467_pop55322_mux_q = 32'b0;
        endcase
    end

    // out_spec_select32467_pop55322(GPOUT,206)
    assign out_spec_select32467_pop55322 = spec_select32467_pop55322_mux_q;

    // spec_select325173_mux(MUX,268)
    assign spec_select325173_mux_s = in_valid_in_0;
    always @(spec_select325173_mux_s or in_spec_select325173_1 or in_spec_select325173_0)
    begin
        unique case (spec_select325173_mux_s)
            1'b0 : spec_select325173_mux_q = in_spec_select325173_1;
            1'b1 : spec_select325173_mux_q = in_spec_select325173_0;
            default : spec_select325173_mux_q = 32'b0;
        endcase
    end

    // out_spec_select325173(GPOUT,207)
    assign out_spec_select325173 = spec_select325173_mux_q;

    // spec_select32569_pop15277_mux(MUX,269)
    assign spec_select32569_pop15277_mux_s = in_valid_in_0;
    always @(spec_select32569_pop15277_mux_s or in_spec_select32569_pop15277_1 or in_spec_select32569_pop15277_0)
    begin
        unique case (spec_select32569_pop15277_mux_s)
            1'b0 : spec_select32569_pop15277_mux_q = in_spec_select32569_pop15277_1;
            1'b1 : spec_select32569_pop15277_mux_q = in_spec_select32569_pop15277_0;
            default : spec_select32569_pop15277_mux_q = 32'b0;
        endcase
    end

    // out_spec_select32569_pop15277(GPOUT,208)
    assign out_spec_select32569_pop15277 = spec_select32569_pop15277_mux_q;

    // spec_select32570_pop56323_mux(MUX,270)
    assign spec_select32570_pop56323_mux_s = in_valid_in_0;
    always @(spec_select32570_pop56323_mux_s or in_spec_select32570_pop56323_1 or in_spec_select32570_pop56323_0)
    begin
        unique case (spec_select32570_pop56323_mux_s)
            1'b0 : spec_select32570_pop56323_mux_q = in_spec_select32570_pop56323_1;
            1'b1 : spec_select32570_pop56323_mux_q = in_spec_select32570_pop56323_0;
            default : spec_select32570_pop56323_mux_q = 32'b0;
        endcase
    end

    // out_spec_select32570_pop56323(GPOUT,209)
    assign out_spec_select32570_pop56323 = spec_select32570_pop56323_mux_q;

    // spec_select326179_mux(MUX,271)
    assign spec_select326179_mux_s = in_valid_in_0;
    always @(spec_select326179_mux_s or in_spec_select326179_1 or in_spec_select326179_0)
    begin
        unique case (spec_select326179_mux_s)
            1'b0 : spec_select326179_mux_q = in_spec_select326179_1;
            1'b1 : spec_select326179_mux_q = in_spec_select326179_0;
            default : spec_select326179_mux_q = 32'b0;
        endcase
    end

    // out_spec_select326179(GPOUT,210)
    assign out_spec_select326179 = spec_select326179_mux_q;

    // spec_select32672_pop16280_mux(MUX,272)
    assign spec_select32672_pop16280_mux_s = in_valid_in_0;
    always @(spec_select32672_pop16280_mux_s or in_spec_select32672_pop16280_1 or in_spec_select32672_pop16280_0)
    begin
        unique case (spec_select32672_pop16280_mux_s)
            1'b0 : spec_select32672_pop16280_mux_q = in_spec_select32672_pop16280_1;
            1'b1 : spec_select32672_pop16280_mux_q = in_spec_select32672_pop16280_0;
            default : spec_select32672_pop16280_mux_q = 32'b0;
        endcase
    end

    // out_spec_select32672_pop16280(GPOUT,211)
    assign out_spec_select32672_pop16280 = spec_select32672_pop16280_mux_q;

    // spec_select32673_pop57324_mux(MUX,273)
    assign spec_select32673_pop57324_mux_s = in_valid_in_0;
    always @(spec_select32673_pop57324_mux_s or in_spec_select32673_pop57324_1 or in_spec_select32673_pop57324_0)
    begin
        unique case (spec_select32673_pop57324_mux_s)
            1'b0 : spec_select32673_pop57324_mux_q = in_spec_select32673_pop57324_1;
            1'b1 : spec_select32673_pop57324_mux_q = in_spec_select32673_pop57324_0;
            default : spec_select32673_pop57324_mux_q = 32'b0;
        endcase
    end

    // out_spec_select32673_pop57324(GPOUT,212)
    assign out_spec_select32673_pop57324 = spec_select32673_pop57324_mux_q;

    // spec_select327185_mux(MUX,274)
    assign spec_select327185_mux_s = in_valid_in_0;
    always @(spec_select327185_mux_s or in_spec_select327185_1 or in_spec_select327185_0)
    begin
        unique case (spec_select327185_mux_s)
            1'b0 : spec_select327185_mux_q = in_spec_select327185_1;
            1'b1 : spec_select327185_mux_q = in_spec_select327185_0;
            default : spec_select327185_mux_q = 32'b0;
        endcase
    end

    // out_spec_select327185(GPOUT,213)
    assign out_spec_select327185 = spec_select327185_mux_q;

    // spec_select32775_pop17283_mux(MUX,275)
    assign spec_select32775_pop17283_mux_s = in_valid_in_0;
    always @(spec_select32775_pop17283_mux_s or in_spec_select32775_pop17283_1 or in_spec_select32775_pop17283_0)
    begin
        unique case (spec_select32775_pop17283_mux_s)
            1'b0 : spec_select32775_pop17283_mux_q = in_spec_select32775_pop17283_1;
            1'b1 : spec_select32775_pop17283_mux_q = in_spec_select32775_pop17283_0;
            default : spec_select32775_pop17283_mux_q = 32'b0;
        endcase
    end

    // out_spec_select32775_pop17283(GPOUT,214)
    assign out_spec_select32775_pop17283 = spec_select32775_pop17283_mux_q;

    // spec_select32776_pop58325_mux(MUX,276)
    assign spec_select32776_pop58325_mux_s = in_valid_in_0;
    always @(spec_select32776_pop58325_mux_s or in_spec_select32776_pop58325_1 or in_spec_select32776_pop58325_0)
    begin
        unique case (spec_select32776_pop58325_mux_s)
            1'b0 : spec_select32776_pop58325_mux_q = in_spec_select32776_pop58325_1;
            1'b1 : spec_select32776_pop58325_mux_q = in_spec_select32776_pop58325_0;
            default : spec_select32776_pop58325_mux_q = 32'b0;
        endcase
    end

    // out_spec_select32776_pop58325(GPOUT,215)
    assign out_spec_select32776_pop58325 = spec_select32776_pop58325_mux_q;

    // spec_select328191_mux(MUX,277)
    assign spec_select328191_mux_s = in_valid_in_0;
    always @(spec_select328191_mux_s or in_spec_select328191_1 or in_spec_select328191_0)
    begin
        unique case (spec_select328191_mux_s)
            1'b0 : spec_select328191_mux_q = in_spec_select328191_1;
            1'b1 : spec_select328191_mux_q = in_spec_select328191_0;
            default : spec_select328191_mux_q = 32'b0;
        endcase
    end

    // out_spec_select328191(GPOUT,216)
    assign out_spec_select328191 = spec_select328191_mux_q;

    // spec_select32878_pop18286_mux(MUX,278)
    assign spec_select32878_pop18286_mux_s = in_valid_in_0;
    always @(spec_select32878_pop18286_mux_s or in_spec_select32878_pop18286_1 or in_spec_select32878_pop18286_0)
    begin
        unique case (spec_select32878_pop18286_mux_s)
            1'b0 : spec_select32878_pop18286_mux_q = in_spec_select32878_pop18286_1;
            1'b1 : spec_select32878_pop18286_mux_q = in_spec_select32878_pop18286_0;
            default : spec_select32878_pop18286_mux_q = 32'b0;
        endcase
    end

    // out_spec_select32878_pop18286(GPOUT,217)
    assign out_spec_select32878_pop18286 = spec_select32878_pop18286_mux_q;

    // spec_select32879_pop59326_mux(MUX,279)
    assign spec_select32879_pop59326_mux_s = in_valid_in_0;
    always @(spec_select32879_pop59326_mux_s or in_spec_select32879_pop59326_1 or in_spec_select32879_pop59326_0)
    begin
        unique case (spec_select32879_pop59326_mux_s)
            1'b0 : spec_select32879_pop59326_mux_q = in_spec_select32879_pop59326_1;
            1'b1 : spec_select32879_pop59326_mux_q = in_spec_select32879_pop59326_0;
            default : spec_select32879_pop59326_mux_q = 32'b0;
        endcase
    end

    // out_spec_select32879_pop59326(GPOUT,218)
    assign out_spec_select32879_pop59326 = spec_select32879_pop59326_mux_q;

    // spec_select329197_mux(MUX,280)
    assign spec_select329197_mux_s = in_valid_in_0;
    always @(spec_select329197_mux_s or in_spec_select329197_1 or in_spec_select329197_0)
    begin
        unique case (spec_select329197_mux_s)
            1'b0 : spec_select329197_mux_q = in_spec_select329197_1;
            1'b1 : spec_select329197_mux_q = in_spec_select329197_0;
            default : spec_select329197_mux_q = 32'b0;
        endcase
    end

    // out_spec_select329197(GPOUT,219)
    assign out_spec_select329197 = spec_select329197_mux_q;

    // spec_select32981_pop19289_mux(MUX,281)
    assign spec_select32981_pop19289_mux_s = in_valid_in_0;
    always @(spec_select32981_pop19289_mux_s or in_spec_select32981_pop19289_1 or in_spec_select32981_pop19289_0)
    begin
        unique case (spec_select32981_pop19289_mux_s)
            1'b0 : spec_select32981_pop19289_mux_q = in_spec_select32981_pop19289_1;
            1'b1 : spec_select32981_pop19289_mux_q = in_spec_select32981_pop19289_0;
            default : spec_select32981_pop19289_mux_q = 32'b0;
        endcase
    end

    // out_spec_select32981_pop19289(GPOUT,220)
    assign out_spec_select32981_pop19289 = spec_select32981_pop19289_mux_q;

    // spec_select32982_pop60327_mux(MUX,282)
    assign spec_select32982_pop60327_mux_s = in_valid_in_0;
    always @(spec_select32982_pop60327_mux_s or in_spec_select32982_pop60327_1 or in_spec_select32982_pop60327_0)
    begin
        unique case (spec_select32982_pop60327_mux_s)
            1'b0 : spec_select32982_pop60327_mux_q = in_spec_select32982_pop60327_1;
            1'b1 : spec_select32982_pop60327_mux_q = in_spec_select32982_pop60327_0;
            default : spec_select32982_pop60327_mux_q = 32'b0;
        endcase
    end

    // out_spec_select32982_pop60327(GPOUT,221)
    assign out_spec_select32982_pop60327 = spec_select32982_pop60327_mux_q;

    // spec_select330203_mux(MUX,283)
    assign spec_select330203_mux_s = in_valid_in_0;
    always @(spec_select330203_mux_s or in_spec_select330203_1 or in_spec_select330203_0)
    begin
        unique case (spec_select330203_mux_s)
            1'b0 : spec_select330203_mux_q = in_spec_select330203_1;
            1'b1 : spec_select330203_mux_q = in_spec_select330203_0;
            default : spec_select330203_mux_q = 32'b0;
        endcase
    end

    // out_spec_select330203(GPOUT,222)
    assign out_spec_select330203 = spec_select330203_mux_q;

    // spec_select33084_pop20292_mux(MUX,284)
    assign spec_select33084_pop20292_mux_s = in_valid_in_0;
    always @(spec_select33084_pop20292_mux_s or in_spec_select33084_pop20292_1 or in_spec_select33084_pop20292_0)
    begin
        unique case (spec_select33084_pop20292_mux_s)
            1'b0 : spec_select33084_pop20292_mux_q = in_spec_select33084_pop20292_1;
            1'b1 : spec_select33084_pop20292_mux_q = in_spec_select33084_pop20292_0;
            default : spec_select33084_pop20292_mux_q = 32'b0;
        endcase
    end

    // out_spec_select33084_pop20292(GPOUT,223)
    assign out_spec_select33084_pop20292 = spec_select33084_pop20292_mux_q;

    // spec_select33085_pop61328_mux(MUX,285)
    assign spec_select33085_pop61328_mux_s = in_valid_in_0;
    always @(spec_select33085_pop61328_mux_s or in_spec_select33085_pop61328_1 or in_spec_select33085_pop61328_0)
    begin
        unique case (spec_select33085_pop61328_mux_s)
            1'b0 : spec_select33085_pop61328_mux_q = in_spec_select33085_pop61328_1;
            1'b1 : spec_select33085_pop61328_mux_q = in_spec_select33085_pop61328_0;
            default : spec_select33085_pop61328_mux_q = 32'b0;
        endcase
    end

    // out_spec_select33085_pop61328(GPOUT,224)
    assign out_spec_select33085_pop61328 = spec_select33085_pop61328_mux_q;

    // spec_select331209_mux(MUX,286)
    assign spec_select331209_mux_s = in_valid_in_0;
    always @(spec_select331209_mux_s or in_spec_select331209_1 or in_spec_select331209_0)
    begin
        unique case (spec_select331209_mux_s)
            1'b0 : spec_select331209_mux_q = in_spec_select331209_1;
            1'b1 : spec_select331209_mux_q = in_spec_select331209_0;
            default : spec_select331209_mux_q = 32'b0;
        endcase
    end

    // out_spec_select331209(GPOUT,225)
    assign out_spec_select331209 = spec_select331209_mux_q;

    // spec_select33187_pop21295_mux(MUX,287)
    assign spec_select33187_pop21295_mux_s = in_valid_in_0;
    always @(spec_select33187_pop21295_mux_s or in_spec_select33187_pop21295_1 or in_spec_select33187_pop21295_0)
    begin
        unique case (spec_select33187_pop21295_mux_s)
            1'b0 : spec_select33187_pop21295_mux_q = in_spec_select33187_pop21295_1;
            1'b1 : spec_select33187_pop21295_mux_q = in_spec_select33187_pop21295_0;
            default : spec_select33187_pop21295_mux_q = 32'b0;
        endcase
    end

    // out_spec_select33187_pop21295(GPOUT,226)
    assign out_spec_select33187_pop21295 = spec_select33187_pop21295_mux_q;

    // spec_select33188_pop62329_mux(MUX,288)
    assign spec_select33188_pop62329_mux_s = in_valid_in_0;
    always @(spec_select33188_pop62329_mux_s or in_spec_select33188_pop62329_1 or in_spec_select33188_pop62329_0)
    begin
        unique case (spec_select33188_pop62329_mux_s)
            1'b0 : spec_select33188_pop62329_mux_q = in_spec_select33188_pop62329_1;
            1'b1 : spec_select33188_pop62329_mux_q = in_spec_select33188_pop62329_0;
            default : spec_select33188_pop62329_mux_q = 32'b0;
        endcase
    end

    // out_spec_select33188_pop62329(GPOUT,227)
    assign out_spec_select33188_pop62329 = spec_select33188_pop62329_mux_q;

    // spec_select332215_mux(MUX,289)
    assign spec_select332215_mux_s = in_valid_in_0;
    always @(spec_select332215_mux_s or in_spec_select332215_1 or in_spec_select332215_0)
    begin
        unique case (spec_select332215_mux_s)
            1'b0 : spec_select332215_mux_q = in_spec_select332215_1;
            1'b1 : spec_select332215_mux_q = in_spec_select332215_0;
            default : spec_select332215_mux_q = 32'b0;
        endcase
    end

    // out_spec_select332215(GPOUT,228)
    assign out_spec_select332215 = spec_select332215_mux_q;

    // spec_select33290_pop22298_mux(MUX,290)
    assign spec_select33290_pop22298_mux_s = in_valid_in_0;
    always @(spec_select33290_pop22298_mux_s or in_spec_select33290_pop22298_1 or in_spec_select33290_pop22298_0)
    begin
        unique case (spec_select33290_pop22298_mux_s)
            1'b0 : spec_select33290_pop22298_mux_q = in_spec_select33290_pop22298_1;
            1'b1 : spec_select33290_pop22298_mux_q = in_spec_select33290_pop22298_0;
            default : spec_select33290_pop22298_mux_q = 32'b0;
        endcase
    end

    // out_spec_select33290_pop22298(GPOUT,229)
    assign out_spec_select33290_pop22298 = spec_select33290_pop22298_mux_q;

    // spec_select33291_pop63330_mux(MUX,291)
    assign spec_select33291_pop63330_mux_s = in_valid_in_0;
    always @(spec_select33291_pop63330_mux_s or in_spec_select33291_pop63330_1 or in_spec_select33291_pop63330_0)
    begin
        unique case (spec_select33291_pop63330_mux_s)
            1'b0 : spec_select33291_pop63330_mux_q = in_spec_select33291_pop63330_1;
            1'b1 : spec_select33291_pop63330_mux_q = in_spec_select33291_pop63330_0;
            default : spec_select33291_pop63330_mux_q = 32'b0;
        endcase
    end

    // out_spec_select33291_pop63330(GPOUT,230)
    assign out_spec_select33291_pop63330 = spec_select33291_pop63330_mux_q;

    // spec_select333221_mux(MUX,292)
    assign spec_select333221_mux_s = in_valid_in_0;
    always @(spec_select333221_mux_s or in_spec_select333221_1 or in_spec_select333221_0)
    begin
        unique case (spec_select333221_mux_s)
            1'b0 : spec_select333221_mux_q = in_spec_select333221_1;
            1'b1 : spec_select333221_mux_q = in_spec_select333221_0;
            default : spec_select333221_mux_q = 32'b0;
        endcase
    end

    // out_spec_select333221(GPOUT,231)
    assign out_spec_select333221 = spec_select333221_mux_q;

    // spec_select33393_pop23301_mux(MUX,293)
    assign spec_select33393_pop23301_mux_s = in_valid_in_0;
    always @(spec_select33393_pop23301_mux_s or in_spec_select33393_pop23301_1 or in_spec_select33393_pop23301_0)
    begin
        unique case (spec_select33393_pop23301_mux_s)
            1'b0 : spec_select33393_pop23301_mux_q = in_spec_select33393_pop23301_1;
            1'b1 : spec_select33393_pop23301_mux_q = in_spec_select33393_pop23301_0;
            default : spec_select33393_pop23301_mux_q = 32'b0;
        endcase
    end

    // out_spec_select33393_pop23301(GPOUT,232)
    assign out_spec_select33393_pop23301 = spec_select33393_pop23301_mux_q;

    // spec_select33394_pop64331_mux(MUX,294)
    assign spec_select33394_pop64331_mux_s = in_valid_in_0;
    always @(spec_select33394_pop64331_mux_s or in_spec_select33394_pop64331_1 or in_spec_select33394_pop64331_0)
    begin
        unique case (spec_select33394_pop64331_mux_s)
            1'b0 : spec_select33394_pop64331_mux_q = in_spec_select33394_pop64331_1;
            1'b1 : spec_select33394_pop64331_mux_q = in_spec_select33394_pop64331_0;
            default : spec_select33394_pop64331_mux_q = 32'b0;
        endcase
    end

    // out_spec_select33394_pop64331(GPOUT,233)
    assign out_spec_select33394_pop64331 = spec_select33394_pop64331_mux_q;

    // spec_select334227_mux(MUX,295)
    assign spec_select334227_mux_s = in_valid_in_0;
    always @(spec_select334227_mux_s or in_spec_select334227_1 or in_spec_select334227_0)
    begin
        unique case (spec_select334227_mux_s)
            1'b0 : spec_select334227_mux_q = in_spec_select334227_1;
            1'b1 : spec_select334227_mux_q = in_spec_select334227_0;
            default : spec_select334227_mux_q = 32'b0;
        endcase
    end

    // out_spec_select334227(GPOUT,234)
    assign out_spec_select334227 = spec_select334227_mux_q;

    // spec_select33496_pop24302_mux(MUX,296)
    assign spec_select33496_pop24302_mux_s = in_valid_in_0;
    always @(spec_select33496_pop24302_mux_s or in_spec_select33496_pop24302_1 or in_spec_select33496_pop24302_0)
    begin
        unique case (spec_select33496_pop24302_mux_s)
            1'b0 : spec_select33496_pop24302_mux_q = in_spec_select33496_pop24302_1;
            1'b1 : spec_select33496_pop24302_mux_q = in_spec_select33496_pop24302_0;
            default : spec_select33496_pop24302_mux_q = 32'b0;
        endcase
    end

    // out_spec_select33496_pop24302(GPOUT,235)
    assign out_spec_select33496_pop24302 = spec_select33496_pop24302_mux_q;

    // spec_select33497_pop65332_mux(MUX,297)
    assign spec_select33497_pop65332_mux_s = in_valid_in_0;
    always @(spec_select33497_pop65332_mux_s or in_spec_select33497_pop65332_1 or in_spec_select33497_pop65332_0)
    begin
        unique case (spec_select33497_pop65332_mux_s)
            1'b0 : spec_select33497_pop65332_mux_q = in_spec_select33497_pop65332_1;
            1'b1 : spec_select33497_pop65332_mux_q = in_spec_select33497_pop65332_0;
            default : spec_select33497_pop65332_mux_q = 32'b0;
        endcase
    end

    // out_spec_select33497_pop65332(GPOUT,236)
    assign out_spec_select33497_pop65332 = spec_select33497_pop65332_mux_q;

    // spec_select335100_pop66333_mux(MUX,298)
    assign spec_select335100_pop66333_mux_s = in_valid_in_0;
    always @(spec_select335100_pop66333_mux_s or in_spec_select335100_pop66333_1 or in_spec_select335100_pop66333_0)
    begin
        unique case (spec_select335100_pop66333_mux_s)
            1'b0 : spec_select335100_pop66333_mux_q = in_spec_select335100_pop66333_1;
            1'b1 : spec_select335100_pop66333_mux_q = in_spec_select335100_pop66333_0;
            default : spec_select335100_pop66333_mux_q = 32'b0;
        endcase
    end

    // out_spec_select335100_pop66333(GPOUT,237)
    assign out_spec_select335100_pop66333 = spec_select335100_pop66333_mux_q;

    // spec_select335233_mux(MUX,299)
    assign spec_select335233_mux_s = in_valid_in_0;
    always @(spec_select335233_mux_s or in_spec_select335233_1 or in_spec_select335233_0)
    begin
        unique case (spec_select335233_mux_s)
            1'b0 : spec_select335233_mux_q = in_spec_select335233_1;
            1'b1 : spec_select335233_mux_q = in_spec_select335233_0;
            default : spec_select335233_mux_q = 32'b0;
        endcase
    end

    // out_spec_select335233(GPOUT,238)
    assign out_spec_select335233 = spec_select335233_mux_q;

    // spec_select33599_pop25305_mux(MUX,300)
    assign spec_select33599_pop25305_mux_s = in_valid_in_0;
    always @(spec_select33599_pop25305_mux_s or in_spec_select33599_pop25305_1 or in_spec_select33599_pop25305_0)
    begin
        unique case (spec_select33599_pop25305_mux_s)
            1'b0 : spec_select33599_pop25305_mux_q = in_spec_select33599_pop25305_1;
            1'b1 : spec_select33599_pop25305_mux_q = in_spec_select33599_pop25305_0;
            default : spec_select33599_pop25305_mux_q = 32'b0;
        endcase
    end

    // out_spec_select33599_pop25305(GPOUT,239)
    assign out_spec_select33599_pop25305 = spec_select33599_pop25305_mux_q;

    // spec_select336102_pop26308_mux(MUX,301)
    assign spec_select336102_pop26308_mux_s = in_valid_in_0;
    always @(spec_select336102_pop26308_mux_s or in_spec_select336102_pop26308_1 or in_spec_select336102_pop26308_0)
    begin
        unique case (spec_select336102_pop26308_mux_s)
            1'b0 : spec_select336102_pop26308_mux_q = in_spec_select336102_pop26308_1;
            1'b1 : spec_select336102_pop26308_mux_q = in_spec_select336102_pop26308_0;
            default : spec_select336102_pop26308_mux_q = 32'b0;
        endcase
    end

    // out_spec_select336102_pop26308(GPOUT,240)
    assign out_spec_select336102_pop26308 = spec_select336102_pop26308_mux_q;

    // spec_select336103_pop67334_mux(MUX,302)
    assign spec_select336103_pop67334_mux_s = in_valid_in_0;
    always @(spec_select336103_pop67334_mux_s or in_spec_select336103_pop67334_1 or in_spec_select336103_pop67334_0)
    begin
        unique case (spec_select336103_pop67334_mux_s)
            1'b0 : spec_select336103_pop67334_mux_q = in_spec_select336103_pop67334_1;
            1'b1 : spec_select336103_pop67334_mux_q = in_spec_select336103_pop67334_0;
            default : spec_select336103_pop67334_mux_q = 32'b0;
        endcase
    end

    // out_spec_select336103_pop67334(GPOUT,241)
    assign out_spec_select336103_pop67334 = spec_select336103_pop67334_mux_q;

    // spec_select336239_mux(MUX,303)
    assign spec_select336239_mux_s = in_valid_in_0;
    always @(spec_select336239_mux_s or in_spec_select336239_1 or in_spec_select336239_0)
    begin
        unique case (spec_select336239_mux_s)
            1'b0 : spec_select336239_mux_q = in_spec_select336239_1;
            1'b1 : spec_select336239_mux_q = in_spec_select336239_0;
            default : spec_select336239_mux_q = 32'b0;
        endcase
    end

    // out_spec_select336239(GPOUT,242)
    assign out_spec_select336239 = spec_select336239_mux_q;

    // spec_select60_pop11265_mux(MUX,304)
    assign spec_select60_pop11265_mux_s = in_valid_in_0;
    always @(spec_select60_pop11265_mux_s or in_spec_select60_pop11265_1 or in_spec_select60_pop11265_0)
    begin
        unique case (spec_select60_pop11265_mux_s)
            1'b0 : spec_select60_pop11265_mux_q = in_spec_select60_pop11265_1;
            1'b1 : spec_select60_pop11265_mux_q = in_spec_select60_pop11265_0;
            default : spec_select60_pop11265_mux_q = 32'b0;
        endcase
    end

    // out_spec_select60_pop11265(GPOUT,243)
    assign out_spec_select60_pop11265 = spec_select60_pop11265_mux_q;

    // spec_select61_pop52319_mux(MUX,305)
    assign spec_select61_pop52319_mux_s = in_valid_in_0;
    always @(spec_select61_pop52319_mux_s or in_spec_select61_pop52319_1 or in_spec_select61_pop52319_0)
    begin
        unique case (spec_select61_pop52319_mux_s)
            1'b0 : spec_select61_pop52319_mux_q = in_spec_select61_pop52319_1;
            1'b1 : spec_select61_pop52319_mux_q = in_spec_select61_pop52319_0;
            default : spec_select61_pop52319_mux_q = 32'b0;
        endcase
    end

    // out_spec_select61_pop52319(GPOUT,244)
    assign out_spec_select61_pop52319 = spec_select61_pop52319_mux_q;

    // valid_or(LOGICAL,314)
    assign valid_or_q = in_valid_in_0 | in_valid_in_1;

    // stall_out(LOGICAL,306)
    assign stall_out_q = valid_or_q & in_stall_in;

    // out_stall_out_0(GPOUT,245)
    assign out_stall_out_0 = stall_out_q;

    // stall_out_1_specific(LOGICAL,307)
    assign stall_out_1_specific_q = in_valid_in_0 | stall_out_q;

    // out_stall_out_1(GPOUT,246)
    assign out_stall_out_1 = stall_out_1_specific_q;

    // unnamed_conv2d1x114_mux(MUX,308)
    assign unnamed_conv2d1x114_mux_s = in_valid_in_0;
    always @(unnamed_conv2d1x114_mux_s or in_unnamed_conv2d1x114_1 or in_unnamed_conv2d1x114_0)
    begin
        unique case (unnamed_conv2d1x114_mux_s)
            1'b0 : unnamed_conv2d1x114_mux_q = in_unnamed_conv2d1x114_1;
            1'b1 : unnamed_conv2d1x114_mux_q = in_unnamed_conv2d1x114_0;
            default : unnamed_conv2d1x114_mux_q = 32'b0;
        endcase
    end

    // out_unnamed_conv2d1x114(GPOUT,247)
    assign out_unnamed_conv2d1x114 = unnamed_conv2d1x114_mux_q;

    // unnamed_conv2d1x115_mux(MUX,309)
    assign unnamed_conv2d1x115_mux_s = in_valid_in_0;
    always @(unnamed_conv2d1x115_mux_s or in_unnamed_conv2d1x115_1 or in_unnamed_conv2d1x115_0)
    begin
        unique case (unnamed_conv2d1x115_mux_s)
            1'b0 : unnamed_conv2d1x115_mux_q = in_unnamed_conv2d1x115_1;
            1'b1 : unnamed_conv2d1x115_mux_q = in_unnamed_conv2d1x115_0;
            default : unnamed_conv2d1x115_mux_q = 1'b0;
        endcase
    end

    // out_unnamed_conv2d1x115(GPOUT,248)
    assign out_unnamed_conv2d1x115 = unnamed_conv2d1x115_mux_q;

    // unnamed_conv2d1x116_mux(MUX,310)
    assign unnamed_conv2d1x116_mux_s = in_valid_in_0;
    always @(unnamed_conv2d1x116_mux_s or in_unnamed_conv2d1x116_1 or in_unnamed_conv2d1x116_0)
    begin
        unique case (unnamed_conv2d1x116_mux_s)
            1'b0 : unnamed_conv2d1x116_mux_q = in_unnamed_conv2d1x116_1;
            1'b1 : unnamed_conv2d1x116_mux_q = in_unnamed_conv2d1x116_0;
            default : unnamed_conv2d1x116_mux_q = 1'b0;
        endcase
    end

    // out_unnamed_conv2d1x116(GPOUT,249)
    assign out_unnamed_conv2d1x116 = unnamed_conv2d1x116_mux_q;

    // unnamed_conv2d1x117_mux(MUX,311)
    assign unnamed_conv2d1x117_mux_s = in_valid_in_0;
    always @(unnamed_conv2d1x117_mux_s or in_unnamed_conv2d1x117_1 or in_unnamed_conv2d1x117_0)
    begin
        unique case (unnamed_conv2d1x117_mux_s)
            1'b0 : unnamed_conv2d1x117_mux_q = in_unnamed_conv2d1x117_1;
            1'b1 : unnamed_conv2d1x117_mux_q = in_unnamed_conv2d1x117_0;
            default : unnamed_conv2d1x117_mux_q = 33'b0;
        endcase
    end

    // out_unnamed_conv2d1x117(GPOUT,250)
    assign out_unnamed_conv2d1x117 = unnamed_conv2d1x117_mux_q;

    // unnamed_conv2d1x118_mux(MUX,312)
    assign unnamed_conv2d1x118_mux_s = in_valid_in_0;
    always @(unnamed_conv2d1x118_mux_s or in_unnamed_conv2d1x118_1 or in_unnamed_conv2d1x118_0)
    begin
        unique case (unnamed_conv2d1x118_mux_s)
            1'b0 : unnamed_conv2d1x118_mux_q = in_unnamed_conv2d1x118_1;
            1'b1 : unnamed_conv2d1x118_mux_q = in_unnamed_conv2d1x118_0;
            default : unnamed_conv2d1x118_mux_q = 1'b0;
        endcase
    end

    // out_unnamed_conv2d1x118(GPOUT,251)
    assign out_unnamed_conv2d1x118 = unnamed_conv2d1x118_mux_q;

    // unnamed_conv2d1x119_mux(MUX,313)
    assign unnamed_conv2d1x119_mux_s = in_valid_in_0;
    always @(unnamed_conv2d1x119_mux_s or in_unnamed_conv2d1x119_1 or in_unnamed_conv2d1x119_0)
    begin
        unique case (unnamed_conv2d1x119_mux_s)
            1'b0 : unnamed_conv2d1x119_mux_q = in_unnamed_conv2d1x119_1;
            1'b1 : unnamed_conv2d1x119_mux_q = in_unnamed_conv2d1x119_0;
            default : unnamed_conv2d1x119_mux_q = 1'b0;
        endcase
    end

    // out_unnamed_conv2d1x119(GPOUT,252)
    assign out_unnamed_conv2d1x119 = unnamed_conv2d1x119_mux_q;

    // out_valid_out(GPOUT,253)
    assign out_valid_out = valid_or_q;

endmodule
