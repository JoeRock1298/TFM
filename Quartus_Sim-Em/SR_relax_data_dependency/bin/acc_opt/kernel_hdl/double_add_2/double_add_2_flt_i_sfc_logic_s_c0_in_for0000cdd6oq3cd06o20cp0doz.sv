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

// SystemVerilog created from double_add_2_flt_i_sfc_logic_s_c0_in_for0000cdd6oq3cd06o20cp0doz
// SystemVerilog created on Tue May 23 13:58:22 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module double_add_2_flt_i_sfc_logic_s_c0_in_for0000cdd6oq3cd06o20cp0doz (
    input wire [63:0] in_0,
    input wire [63:0] in_1,
    output wire [63:0] out_primWireOut,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [62:0] expFracX_uid7_block_rsrvd_fix_b;
    wire [62:0] expFracY_uid8_block_rsrvd_fix_b;
    wire [64:0] xGTEy_uid9_block_rsrvd_fix_a;
    wire [64:0] xGTEy_uid9_block_rsrvd_fix_b;
    logic [64:0] xGTEy_uid9_block_rsrvd_fix_o;
    wire [0:0] xGTEy_uid9_block_rsrvd_fix_n;
    wire [51:0] fracY_uid10_block_rsrvd_fix_b;
    wire [10:0] expY_uid11_block_rsrvd_fix_b;
    wire [0:0] sigY_uid12_block_rsrvd_fix_b;
    wire [63:0] ypn_uid13_block_rsrvd_fix_q;
    wire [0:0] aSig_uid17_block_rsrvd_fix_s;
    reg [63:0] aSig_uid17_block_rsrvd_fix_q;
    wire [0:0] bSig_uid18_block_rsrvd_fix_s;
    reg [63:0] bSig_uid18_block_rsrvd_fix_q;
    wire [10:0] cstAllOWE_uid19_block_rsrvd_fix_q;
    wire [51:0] cstZeroWF_uid20_block_rsrvd_fix_q;
    wire [10:0] cstAllZWE_uid21_block_rsrvd_fix_q;
    wire [62:0] exp_aSig_uid22_block_rsrvd_fix_in;
    wire [10:0] exp_aSig_uid22_block_rsrvd_fix_b;
    wire [51:0] frac_aSig_uid23_block_rsrvd_fix_in;
    wire [51:0] frac_aSig_uid23_block_rsrvd_fix_b;
    wire [0:0] expXIsZero_uid24_block_rsrvd_fix_q;
    wire [0:0] expXIsMax_uid25_block_rsrvd_fix_q;
    wire [0:0] fracXIsZero_uid26_block_rsrvd_fix_qi;
    reg [0:0] fracXIsZero_uid26_block_rsrvd_fix_q;
    wire [0:0] fracXIsNotZero_uid27_block_rsrvd_fix_q;
    wire [0:0] excZ_aSig_uid28_block_rsrvd_fix_qi;
    reg [0:0] excZ_aSig_uid28_block_rsrvd_fix_q;
    wire [0:0] excI_aSig_uid29_block_rsrvd_fix_qi;
    reg [0:0] excI_aSig_uid29_block_rsrvd_fix_q;
    wire [0:0] excN_aSig_uid30_block_rsrvd_fix_qi;
    reg [0:0] excN_aSig_uid30_block_rsrvd_fix_q;
    wire [0:0] invExpXIsMax_uid31_block_rsrvd_fix_q;
    wire [0:0] InvExpXIsZero_uid32_block_rsrvd_fix_q;
    wire [0:0] excR_aSig_uid33_block_rsrvd_fix_qi;
    reg [0:0] excR_aSig_uid33_block_rsrvd_fix_q;
    wire [0:0] excS_aSig_uid34_block_rsrvd_fix_q;
    wire [62:0] exp_bSig_uid39_block_rsrvd_fix_in;
    wire [10:0] exp_bSig_uid39_block_rsrvd_fix_b;
    wire [51:0] frac_bSig_uid40_block_rsrvd_fix_in;
    wire [51:0] frac_bSig_uid40_block_rsrvd_fix_b;
    wire [0:0] expXIsZero_uid41_block_rsrvd_fix_qi;
    reg [0:0] expXIsZero_uid41_block_rsrvd_fix_q;
    wire [0:0] expXIsMax_uid42_block_rsrvd_fix_qi;
    reg [0:0] expXIsMax_uid42_block_rsrvd_fix_q;
    wire [0:0] fracXIsZero_uid43_block_rsrvd_fix_qi;
    reg [0:0] fracXIsZero_uid43_block_rsrvd_fix_q;
    wire [0:0] fracXIsNotZero_uid44_block_rsrvd_fix_q;
    wire [0:0] excZ_bSig_uid45_block_rsrvd_fix_q;
    wire [0:0] excI_bSig_uid46_block_rsrvd_fix_qi;
    reg [0:0] excI_bSig_uid46_block_rsrvd_fix_q;
    wire [0:0] excN_bSig_uid47_block_rsrvd_fix_qi;
    reg [0:0] excN_bSig_uid47_block_rsrvd_fix_q;
    wire [0:0] invExpXIsMax_uid48_block_rsrvd_fix_q;
    wire [0:0] InvExpXIsZero_uid49_block_rsrvd_fix_q;
    wire [0:0] excR_bSig_uid50_block_rsrvd_fix_qi;
    reg [0:0] excR_bSig_uid50_block_rsrvd_fix_q;
    wire [0:0] excS_bSig_uid51_block_rsrvd_fix_q;
    wire [0:0] sigA_uid57_block_rsrvd_fix_b;
    wire [0:0] sigB_uid58_block_rsrvd_fix_b;
    wire [0:0] effSub_uid59_block_rsrvd_fix_q;
    wire [0:0] fracBz_uid63_block_rsrvd_fix_s;
    reg [51:0] fracBz_uid63_block_rsrvd_fix_q;
    wire [0:0] InvExcASubnormOrZero_uid64_block_rsrvd_fix_q;
    wire [52:0] oFracA_uid65_block_rsrvd_fix_q;
    wire [52:0] oFracB_uid67_block_rsrvd_fix_q;
    wire [11:0] expAmExpB_uid68_block_rsrvd_fix_a;
    wire [11:0] expAmExpB_uid68_block_rsrvd_fix_b;
    logic [11:0] expAmExpB_uid68_block_rsrvd_fix_o;
    wire [11:0] expAmExpB_uid68_block_rsrvd_fix_q;
    wire [11:0] oWE_uid69_block_rsrvd_fix_q;
    wire [13:0] closePathA_uid70_block_rsrvd_fix_a;
    wire [13:0] closePathA_uid70_block_rsrvd_fix_b;
    logic [13:0] closePathA_uid70_block_rsrvd_fix_o;
    wire [0:0] closePathA_uid70_block_rsrvd_fix_n;
    wire [0:0] closePath_uid71_block_rsrvd_fix_q;
    wire [0:0] aZeroOrSubnorm_uid72_block_rsrvd_fix_q;
    wire [0:0] bZeroOrSubnorm_uid73_block_rsrvd_fix_q;
    wire [55:0] oFracAE_uid74_block_rsrvd_fix_q;
    wire [55:0] oFracBR_uid76_block_rsrvd_fix_q;
    wire [55:0] oFracBREX_uid77_block_rsrvd_fix_b;
    wire [55:0] oFracBREX_uid77_block_rsrvd_fix_q;
    wire [56:0] oFracBREXC2_uid78_block_rsrvd_fix_a;
    wire [56:0] oFracBREXC2_uid78_block_rsrvd_fix_b;
    logic [56:0] oFracBREXC2_uid78_block_rsrvd_fix_o;
    wire [56:0] oFracBREXC2_uid78_block_rsrvd_fix_q;
    wire [55:0] oFracBREXC2S_uid79_block_rsrvd_fix_in;
    wire [55:0] oFracBREXC2S_uid79_block_rsrvd_fix_b;
    wire [55:0] oFracBREXC2HighBits_uid81_block_rsrvd_fix_in;
    wire [54:0] oFracBREXC2HighBits_uid81_block_rsrvd_fix_b;
    wire [0:0] xMSB_uid82_block_rsrvd_fix_b;
    wire [55:0] fracBAlignLowCloseUR_uid84_block_rsrvd_fix_q;
    wire [0:0] expAmExpBZ_uid86_block_rsrvd_fix_in;
    wire [0:0] expAmExpBZ_uid86_block_rsrvd_fix_b;
    wire [0:0] aIsNotASubnorm_uid87_block_rsrvd_fix_q;
    wire [0:0] aNormalBSubnormal_uid88_block_rsrvd_fix_q;
    wire [0:0] aNormalBSubnromal_uid89_block_rsrvd_fix_q;
    wire [0:0] exponentDifferenceIsOneAndBNotSubnormal_uid90_block_rsrvd_fix_qi;
    reg [0:0] exponentDifferenceIsOneAndBNotSubnormal_uid90_block_rsrvd_fix_q;
    wire [0:0] oFracBREXC2SPostAlign_uid91_block_rsrvd_fix_s;
    reg [55:0] oFracBREXC2SPostAlign_uid91_block_rsrvd_fix_q;
    wire [56:0] fracAddResult_closePath_uid92_block_rsrvd_fix_a;
    wire [56:0] fracAddResult_closePath_uid92_block_rsrvd_fix_b;
    logic [56:0] fracAddResult_closePath_uid92_block_rsrvd_fix_o;
    wire [56:0] fracAddResult_closePath_uid92_block_rsrvd_fix_q;
    wire [55:0] fracAddResultNoSignExt_closePath_uid93_block_rsrvd_fix_in;
    wire [55:0] fracAddResultNoSignExt_closePath_uid93_block_rsrvd_fix_b;
    wire [0:0] case0_uid95_block_rsrvd_fix_q;
    wire [10:0] expValueClosePath_Case0_uid96_block_rsrvd_fix_q;
    wire [11:0] expAP1_uid97_block_rsrvd_fix_a;
    wire [11:0] expAP1_uid97_block_rsrvd_fix_b;
    logic [11:0] expAP1_uid97_block_rsrvd_fix_o;
    wire [11:0] expAP1_uid97_block_rsrvd_fix_q;
    wire [10:0] expValueClosePath_Case11_uid98_block_rsrvd_fix_in;
    wire [10:0] expValueClosePath_Case11_uid98_block_rsrvd_fix_b;
    wire [4:0] zExt_uid99_block_rsrvd_fix_q;
    wire [10:0] expValueClosePath_Case12_uid100_block_rsrvd_fix_q;
    wire [0:0] aNormalAndClosePath_uid101_block_rsrvd_fix_q;
    wire [13:0] condCase11_uid102_block_rsrvd_fix_a;
    wire [13:0] condCase11_uid102_block_rsrvd_fix_b;
    logic [13:0] condCase11_uid102_block_rsrvd_fix_o;
    wire [0:0] condCase11_uid102_block_rsrvd_fix_n;
    wire [0:0] condCase12_uid103_block_rsrvd_fix_q;
    wire [0:0] case11_uid104_block_rsrvd_fix_q;
    wire [0:0] case12_uid105_block_rsrvd_fix_q;
    wire [10:0] case0Exponent_uid106_block_rsrvd_fix_b;
    wire [10:0] case0Exponent_uid106_block_rsrvd_fix_q;
    wire [10:0] case11Exponent_uid107_block_rsrvd_fix_b;
    wire [10:0] case11Exponent_uid107_block_rsrvd_fix_q;
    wire [10:0] case12Exponent_uid108_block_rsrvd_fix_b;
    wire [10:0] case12Exponent_uid108_block_rsrvd_fix_q;
    wire [10:0] expValueClosePathExt_uid109_block_rsrvd_fix_qi;
    reg [10:0] expValueClosePathExt_uid109_block_rsrvd_fix_q;
    wire [10:0] shiftValC11_uid114_block_rsrvd_fix_b;
    wire [10:0] shiftValC11_uid114_block_rsrvd_fix_q;
    wire [10:0] shiftValueCloseAll_uid116_block_rsrvd_fix_qi;
    reg [10:0] shiftValueCloseAll_uid116_block_rsrvd_fix_q;
    wire [54:0] fracPostNorm_closePath_uid119_block_rsrvd_fix_in;
    wire [52:0] fracPostNorm_closePath_uid119_block_rsrvd_fix_b;
    wire [5:0] cAmA_uid120_block_rsrvd_fix_q;
    wire [0:0] aMinusA2_uid121_block_rsrvd_fix_q;
    wire [0:0] aMinusA_uid122_block_rsrvd_fix_q;
    wire [5:0] cWFP2_uid123_block_rsrvd_fix_q;
    wire [13:0] shiftedOut_uid125_block_rsrvd_fix_a;
    wire [13:0] shiftedOut_uid125_block_rsrvd_fix_b;
    logic [13:0] shiftedOut_uid125_block_rsrvd_fix_o;
    wire [0:0] shiftedOut_uid125_block_rsrvd_fix_c;
    wire [5:0] shiftOutConst_uid126_block_rsrvd_fix_q;
    wire [13:0] expAmExpBm1_uid128_block_rsrvd_fix_a;
    wire [13:0] expAmExpBm1_uid128_block_rsrvd_fix_b;
    logic [13:0] expAmExpBm1_uid128_block_rsrvd_fix_o;
    wire [12:0] expAmExpBm1_uid128_block_rsrvd_fix_q;
    wire [5:0] expAmExpBm1RangeShift_uid129_block_rsrvd_fix_in;
    wire [5:0] expAmExpBm1RangeShift_uid129_block_rsrvd_fix_b;
    wire [5:0] expAmExpBRangeShift_uid130_block_rsrvd_fix_in;
    wire [5:0] expAmExpBRangeShift_uid130_block_rsrvd_fix_b;
    wire [0:0] shiftValue_farPathPreSat_uid131_block_rsrvd_fix_s;
    reg [5:0] shiftValue_farPathPreSat_uid131_block_rsrvd_fix_q;
    wire [0:0] shiftValue_farPath_uid132_block_rsrvd_fix_s;
    reg [5:0] shiftValue_farPath_uid132_block_rsrvd_fix_q;
    wire [54:0] padConst_uid133_block_rsrvd_fix_q;
    wire [110:0] rightPaddedIn_uid134_block_rsrvd_fix_q;
    wire [54:0] lowRangeB_uid138_block_rsrvd_fix_in;
    wire [54:0] lowRangeB_uid138_block_rsrvd_fix_b;
    wire [55:0] highBBits_uid139_block_rsrvd_fix_b;
    wire [56:0] fracAddResult_farPathsumAHighB_uid140_block_rsrvd_fix_a;
    wire [56:0] fracAddResult_farPathsumAHighB_uid140_block_rsrvd_fix_b;
    logic [56:0] fracAddResult_farPathsumAHighB_uid140_block_rsrvd_fix_o;
    wire [56:0] fracAddResult_farPathsumAHighB_uid140_block_rsrvd_fix_q;
    wire [111:0] fracAddResult_farPath_uid141_block_rsrvd_fix_q;
    wire [54:0] stickyTemp_uid142_block_rsrvd_fix_in;
    wire [54:0] stickyTemp_uid142_block_rsrvd_fix_b;
    wire [0:0] stickyPreMux_uid143_block_rsrvd_fix_q;
    wire [110:0] normBits_farPath_uid144_block_rsrvd_fix_in;
    wire [1:0] normBits_farPath_uid144_block_rsrvd_fix_b;
    wire [0:0] invNormBits_farPathInternal1_uid146_block_rsrvd_fix_q;
    wire [0:0] invNormBits_farPathInternal0_uid148_block_rsrvd_fix_q;
    wire [0:0] aAndBSubnormalsAndSubnormalRes_uid149_block_rsrvd_fix_q;
    wire [0:0] aAndBSubnormalsAndNormalRes_uid153_block_rsrvd_fix_q;
    wire [1:0] oneOnTwoBits_uid154_block_rsrvd_fix_q;
    wire [0:0] normBits_farPathRnd_uid155_block_rsrvd_fix_s;
    reg [1:0] normBits_farPathRnd_uid155_block_rsrvd_fix_q;
    wire [0:0] aAndBSubnormal_uid156_block_rsrvd_fix_q;
    wire [1:0] threeOnTwoBits_uid157_block_rsrvd_fix_q;
    wire [0:0] aAndBSubnormalCst_uid159_block_rsrvd_fix_s;
    reg [1:0] aAndBSubnormalCst_uid159_block_rsrvd_fix_q;
    wire [0:0] normBits_farPathCnt_uid160_block_rsrvd_fix_s;
    reg [1:0] normBits_farPathCnt_uid160_block_rsrvd_fix_q;
    wire [109:0] fracPostNorm_farPath11_uid161_block_rsrvd_fix_in;
    wire [52:0] fracPostNorm_farPath11_uid161_block_rsrvd_fix_b;
    wire [108:0] fracPostNorm_farPath01_uid165_block_rsrvd_fix_in;
    wire [52:0] fracPostNorm_farPath01_uid165_block_rsrvd_fix_b;
    wire [107:0] fracPostNorm_farPath00_uid167_block_rsrvd_fix_in;
    wire [52:0] fracPostNorm_farPath00_uid167_block_rsrvd_fix_b;
    wire [1:0] fracPostNorm_farPath_uid169_block_rsrvd_fix_s;
    reg [52:0] fracPostNorm_farPath_uid169_block_rsrvd_fix_q;
    wire [1:0] cst2zeros_uid170_block_rsrvd_fix_q;
    wire [56:0] extra11_uid172_block_rsrvd_fix_in;
    wire [1:0] extra11_uid172_block_rsrvd_fix_b;
    wire [55:0] extra01_uid176_block_rsrvd_fix_in;
    wire [0:0] extra01_uid176_block_rsrvd_fix_b;
    wire [1:0] m01_uid177_block_rsrvd_fix_q;
    wire [1:0] stickyExtraBits_uid179_block_rsrvd_fix_s;
    reg [1:0] stickyExtraBits_uid179_block_rsrvd_fix_q;
    wire [2:0] stickyAllBits_uid180_block_rsrvd_fix_q;
    wire [0:0] sticky_uid181_block_rsrvd_fix_q;
    wire [57:0] r11_uid182_block_rsrvd_fix_in;
    wire [0:0] r11_uid182_block_rsrvd_fix_b;
    wire [56:0] r01_uid186_block_rsrvd_fix_in;
    wire [0:0] r01_uid186_block_rsrvd_fix_b;
    wire [1:0] rBit_uid190_block_rsrvd_fix_s;
    reg [0:0] rBit_uid190_block_rsrvd_fix_q;
    wire [10:0] countValue_farPath00_uid194_block_rsrvd_fix_q;
    wire [1:0] countValue_farPath_uid195_block_rsrvd_fix_s;
    reg [10:0] countValue_farPath_uid195_block_rsrvd_fix_q;
    wire [1:0] lBit_uid196_block_rsrvd_fix_in;
    wire [0:0] lBit_uid196_block_rsrvd_fix_b;
    wire [2:0] concBits_uid197_block_rsrvd_fix_q;
    wire [2:0] cst2On3Bits_uid198_block_rsrvd_fix_q;
    wire [0:0] IrndVal_uid199_block_rsrvd_fix_qi;
    reg [0:0] IrndVal_uid199_block_rsrvd_fix_q;
    wire [0:0] rndVal_far_uid200_block_rsrvd_fix_q;
    wire [1:0] lsb2BitsClosePath_uid202_block_rsrvd_fix_in;
    wire [1:0] lsb2BitsClosePath_uid202_block_rsrvd_fix_b;
    wire [0:0] IrndVal_close_uid203_block_rsrvd_fix_qi;
    reg [0:0] IrndVal_close_uid203_block_rsrvd_fix_q;
    wire [0:0] rndVal_close_uid204_block_rsrvd_fix_q;
    wire [0:0] countValue_uid205_block_rsrvd_fix_s;
    reg [10:0] countValue_uid205_block_rsrvd_fix_q;
    wire [12:0] expPostNorm_uid207_block_rsrvd_fix_a;
    wire [12:0] expPostNorm_uid207_block_rsrvd_fix_b;
    logic [12:0] expPostNorm_uid207_block_rsrvd_fix_o;
    wire [12:0] expPostNorm_uid207_block_rsrvd_fix_q;
    wire [0:0] fracPostNormPreRnd_uid210_block_rsrvd_fix_s;
    reg [52:0] fracPostNormPreRnd_uid210_block_rsrvd_fix_q;
    wire [0:0] rndValue_uid211_block_rsrvd_fix_s;
    reg [0:0] rndValue_uid211_block_rsrvd_fix_q;
    wire [65:0] countValFracPostNorm_uid212_block_rsrvd_fix_q;
    wire [66:0] countValFracPostRnd_uid213_block_rsrvd_fix_a;
    wire [66:0] countValFracPostRnd_uid213_block_rsrvd_fix_b;
    logic [66:0] countValFracPostRnd_uid213_block_rsrvd_fix_o;
    wire [66:0] countValFracPostRnd_uid213_block_rsrvd_fix_q;
    wire [65:0] countValue_uid214_block_rsrvd_fix_in;
    wire [12:0] countValue_uid214_block_rsrvd_fix_b;
    wire [52:0] fracValue_uid215_block_rsrvd_fix_in;
    wire [51:0] fracValue_uid215_block_rsrvd_fix_b;
    wire [12:0] wEP2AllOwE_uid216_block_rsrvd_fix_q;
    wire [15:0] rOvf_uid218_block_rsrvd_fix_a;
    wire [15:0] rOvf_uid218_block_rsrvd_fix_b;
    logic [15:0] rOvf_uid218_block_rsrvd_fix_o;
    wire [0:0] rOvf_uid218_block_rsrvd_fix_n;
    wire [10:0] expRPreExc_uid220_block_rsrvd_fix_in;
    wire [10:0] expRPreExc_uid220_block_rsrvd_fix_b;
    wire [0:0] regInputs_uid221_block_rsrvd_fix_qi;
    reg [0:0] regInputs_uid221_block_rsrvd_fix_q;
    wire [2:0] excRZeroVInC_uid222_block_rsrvd_fix_q;
    reg [0:0] excRZero_uid223_block_rsrvd_fix_q;
    wire [0:0] rInfOvf_uid224_block_rsrvd_fix_q;
    wire [5:0] excRInfVInC_uid225_block_rsrvd_fix_q;
    reg [0:0] excRInf_uid226_block_rsrvd_fix_q;
    wire [0:0] excRNaN2_uid227_block_rsrvd_fix_q;
    wire [0:0] excAIBISub_uid228_block_rsrvd_fix_q;
    wire [0:0] excRNaN_uid229_block_rsrvd_fix_q;
    wire [2:0] concExc_uid230_block_rsrvd_fix_q;
    reg [1:0] excREnc_uid231_block_rsrvd_fix_q;
    wire [0:0] aIsRegOrSubnorm_uid232_block_rsrvd_fix_q;
    wire [0:0] bIsRegOrSubnorm_uid233_block_rsrvd_fix_q;
    wire [0:0] invAMinusA_uid234_block_rsrvd_fix_q;
    wire [0:0] signRReg_uid235_block_rsrvd_fix_q;
    wire [0:0] sigBBInf_uid236_block_rsrvd_fix_q;
    wire [0:0] sigAAInf_uid237_block_rsrvd_fix_q;
    wire [0:0] signRInf_uid238_block_rsrvd_fix_q;
    wire [0:0] excAZBZSigASigB_uid239_block_rsrvd_fix_q;
    wire [0:0] excBZARSigA_uid240_block_rsrvd_fix_q;
    wire [0:0] signRZero_uid241_block_rsrvd_fix_q;
    wire [0:0] signRInfRZRReg_uid242_block_rsrvd_fix_qi;
    reg [0:0] signRInfRZRReg_uid242_block_rsrvd_fix_q;
    wire [0:0] invExcRNaN_uid243_block_rsrvd_fix_q;
    wire [0:0] signRPostExc_uid244_block_rsrvd_fix_qi;
    reg [0:0] signRPostExc_uid244_block_rsrvd_fix_q;
    wire [51:0] oneFracRPostExc2_uid245_block_rsrvd_fix_q;
    wire [1:0] fracRPostExc_uid248_block_rsrvd_fix_s;
    reg [51:0] fracRPostExc_uid248_block_rsrvd_fix_q;
    wire [1:0] expRPostExc_uid252_block_rsrvd_fix_s;
    reg [10:0] expRPostExc_uid252_block_rsrvd_fix_q;
    wire [63:0] R_uid253_block_rsrvd_fix_q;
    wire [31:0] zs_uid255_countValue_closePathZ_uid94_block_rsrvd_fix_q;
    wire [31:0] rVStage_uid256_countValue_closePathZ_uid94_block_rsrvd_fix_b;
    wire [0:0] vCount_uid257_countValue_closePathZ_uid94_block_rsrvd_fix_qi;
    reg [0:0] vCount_uid257_countValue_closePathZ_uid94_block_rsrvd_fix_q;
    wire [7:0] mO_uid258_countValue_closePathZ_uid94_block_rsrvd_fix_q;
    wire [23:0] vStage_uid259_countValue_closePathZ_uid94_block_rsrvd_fix_in;
    wire [23:0] vStage_uid259_countValue_closePathZ_uid94_block_rsrvd_fix_b;
    wire [31:0] cStage_uid260_countValue_closePathZ_uid94_block_rsrvd_fix_q;
    wire [0:0] vStagei_uid262_countValue_closePathZ_uid94_block_rsrvd_fix_s;
    reg [31:0] vStagei_uid262_countValue_closePathZ_uid94_block_rsrvd_fix_q;
    wire [15:0] zs_uid263_countValue_closePathZ_uid94_block_rsrvd_fix_q;
    wire [0:0] vCount_uid265_countValue_closePathZ_uid94_block_rsrvd_fix_q;
    wire [0:0] vStagei_uid268_countValue_closePathZ_uid94_block_rsrvd_fix_s;
    reg [15:0] vStagei_uid268_countValue_closePathZ_uid94_block_rsrvd_fix_q;
    wire [7:0] zs_uid269_countValue_closePathZ_uid94_block_rsrvd_fix_q;
    wire [0:0] vCount_uid271_countValue_closePathZ_uid94_block_rsrvd_fix_qi;
    reg [0:0] vCount_uid271_countValue_closePathZ_uid94_block_rsrvd_fix_q;
    wire [0:0] vStagei_uid274_countValue_closePathZ_uid94_block_rsrvd_fix_s;
    reg [7:0] vStagei_uid274_countValue_closePathZ_uid94_block_rsrvd_fix_q;
    wire [3:0] zs_uid275_countValue_closePathZ_uid94_block_rsrvd_fix_q;
    wire [0:0] vCount_uid277_countValue_closePathZ_uid94_block_rsrvd_fix_q;
    wire [0:0] vStagei_uid280_countValue_closePathZ_uid94_block_rsrvd_fix_s;
    reg [3:0] vStagei_uid280_countValue_closePathZ_uid94_block_rsrvd_fix_q;
    wire [0:0] vCount_uid283_countValue_closePathZ_uid94_block_rsrvd_fix_q;
    wire [0:0] vStagei_uid286_countValue_closePathZ_uid94_block_rsrvd_fix_s;
    reg [1:0] vStagei_uid286_countValue_closePathZ_uid94_block_rsrvd_fix_q;
    wire [0:0] rVStage_uid288_countValue_closePathZ_uid94_block_rsrvd_fix_b;
    wire [0:0] vCount_uid289_countValue_closePathZ_uid94_block_rsrvd_fix_q;
    wire [5:0] r_uid290_countValue_closePathZ_uid94_block_rsrvd_fix_q;
    wire [12:0] shiftedOut_uid295_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_a;
    wire [12:0] shiftedOut_uid295_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_b;
    logic [12:0] shiftedOut_uid295_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_o;
    wire [0:0] shiftedOut_uid295_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_n;
    wire [39:0] leftShiftStage0Idx1Rng16_uid297_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_in;
    wire [39:0] leftShiftStage0Idx1Rng16_uid297_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_b;
    wire [55:0] leftShiftStage0Idx1_uid298_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_q;
    wire [55:0] leftShiftStage0Idx2_uid301_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_q;
    wire [47:0] leftShiftStage0Idx3Pad48_uid302_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_q;
    wire [7:0] leftShiftStage0Idx3Rng48_uid303_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_in;
    wire [7:0] leftShiftStage0Idx3Rng48_uid303_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_b;
    wire [55:0] leftShiftStage0Idx3_uid304_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_q;
    wire [1:0] leftShiftStage0_uid306_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_s;
    reg [55:0] leftShiftStage0_uid306_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_q;
    wire [51:0] leftShiftStage1Idx1Rng4_uid308_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_in;
    wire [51:0] leftShiftStage1Idx1Rng4_uid308_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_b;
    wire [55:0] leftShiftStage1Idx1_uid309_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_q;
    wire [47:0] leftShiftStage1Idx2Rng8_uid311_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_in;
    wire [47:0] leftShiftStage1Idx2Rng8_uid311_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_b;
    wire [55:0] leftShiftStage1Idx2_uid312_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_q;
    wire [11:0] leftShiftStage1Idx3Pad12_uid313_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_q;
    wire [43:0] leftShiftStage1Idx3Rng12_uid314_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_in;
    wire [43:0] leftShiftStage1Idx3Rng12_uid314_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_b;
    wire [55:0] leftShiftStage1Idx3_uid315_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_q;
    wire [1:0] leftShiftStage1_uid317_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_s;
    reg [55:0] leftShiftStage1_uid317_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_q;
    wire [54:0] leftShiftStage2Idx1Rng1_uid319_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_in;
    wire [54:0] leftShiftStage2Idx1Rng1_uid319_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_b;
    wire [55:0] leftShiftStage2Idx1_uid320_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_q;
    wire [53:0] leftShiftStage2Idx2Rng2_uid322_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_in;
    wire [53:0] leftShiftStage2Idx2Rng2_uid322_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_b;
    wire [55:0] leftShiftStage2Idx2_uid323_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_q;
    wire [2:0] leftShiftStage2Idx3Pad3_uid324_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_q;
    wire [52:0] leftShiftStage2Idx3Rng3_uid325_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_in;
    wire [52:0] leftShiftStage2Idx3Rng3_uid325_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_b;
    wire [55:0] leftShiftStage2Idx3_uid326_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_q;
    wire [1:0] leftShiftStage2_uid328_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_s;
    reg [55:0] leftShiftStage2_uid328_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_q;
    wire [55:0] zeroOutCst_uid329_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_q;
    wire [0:0] r_uid330_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_s;
    reg [55:0] r_uid330_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_q;
    wire [0:0] xMSB_uid332_alignmentShifter_uid133_block_rsrvd_fix_b;
    wire [109:0] rightShiftStage0Idx1Rng1_uid334_alignmentShifter_uid133_block_rsrvd_fix_b;
    wire [110:0] rightShiftStage0Idx1_uid335_alignmentShifter_uid133_block_rsrvd_fix_q;
    wire [1:0] seMsb_to2_uid336_in;
    wire [1:0] seMsb_to2_uid336_b;
    wire [108:0] rightShiftStage0Idx2Rng2_uid337_alignmentShifter_uid133_block_rsrvd_fix_b;
    wire [110:0] rightShiftStage0Idx2_uid338_alignmentShifter_uid133_block_rsrvd_fix_q;
    wire [2:0] seMsb_to3_uid339_in;
    wire [2:0] seMsb_to3_uid339_b;
    wire [107:0] rightShiftStage0Idx3Rng3_uid340_alignmentShifter_uid133_block_rsrvd_fix_b;
    wire [110:0] rightShiftStage0Idx3_uid341_alignmentShifter_uid133_block_rsrvd_fix_q;
    wire [1:0] rightShiftStage0_uid343_alignmentShifter_uid133_block_rsrvd_fix_s;
    reg [110:0] rightShiftStage0_uid343_alignmentShifter_uid133_block_rsrvd_fix_q;
    wire [3:0] seMsb_to4_uid344_in;
    wire [3:0] seMsb_to4_uid344_b;
    wire [106:0] rightShiftStage1Idx1Rng4_uid345_alignmentShifter_uid133_block_rsrvd_fix_b;
    wire [110:0] rightShiftStage1Idx1_uid346_alignmentShifter_uid133_block_rsrvd_fix_q;
    wire [7:0] seMsb_to8_uid347_in;
    wire [7:0] seMsb_to8_uid347_b;
    wire [102:0] rightShiftStage1Idx2Rng8_uid348_alignmentShifter_uid133_block_rsrvd_fix_b;
    wire [110:0] rightShiftStage1Idx2_uid349_alignmentShifter_uid133_block_rsrvd_fix_q;
    wire [11:0] seMsb_to12_uid350_in;
    wire [11:0] seMsb_to12_uid350_b;
    wire [98:0] rightShiftStage1Idx3Rng12_uid351_alignmentShifter_uid133_block_rsrvd_fix_b;
    wire [110:0] rightShiftStage1Idx3_uid352_alignmentShifter_uid133_block_rsrvd_fix_q;
    wire [1:0] rightShiftStage1_uid354_alignmentShifter_uid133_block_rsrvd_fix_s;
    reg [110:0] rightShiftStage1_uid354_alignmentShifter_uid133_block_rsrvd_fix_q;
    wire [15:0] seMsb_to16_uid355_in;
    wire [15:0] seMsb_to16_uid355_b;
    wire [94:0] rightShiftStage2Idx1Rng16_uid356_alignmentShifter_uid133_block_rsrvd_fix_b;
    wire [110:0] rightShiftStage2Idx1_uid357_alignmentShifter_uid133_block_rsrvd_fix_q;
    wire [31:0] seMsb_to32_uid358_in;
    wire [31:0] seMsb_to32_uid358_b;
    wire [78:0] rightShiftStage2Idx2Rng32_uid359_alignmentShifter_uid133_block_rsrvd_fix_b;
    wire [110:0] rightShiftStage2Idx2_uid360_alignmentShifter_uid133_block_rsrvd_fix_q;
    wire [47:0] seMsb_to48_uid361_in;
    wire [47:0] seMsb_to48_uid361_b;
    wire [62:0] rightShiftStage2Idx3Rng48_uid362_alignmentShifter_uid133_block_rsrvd_fix_b;
    wire [110:0] rightShiftStage2Idx3_uid363_alignmentShifter_uid133_block_rsrvd_fix_q;
    wire [1:0] rightShiftStage2_uid365_alignmentShifter_uid133_block_rsrvd_fix_s;
    reg [110:0] rightShiftStage2_uid365_alignmentShifter_uid133_block_rsrvd_fix_q;
    wire [5:0] leftShiftStageSel0Dto4_uid305_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_merged_bit_select_in;
    wire [1:0] leftShiftStageSel0Dto4_uid305_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_merged_bit_select_b;
    wire [1:0] leftShiftStageSel0Dto4_uid305_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_merged_bit_select_c;
    wire [1:0] leftShiftStageSel0Dto4_uid305_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_merged_bit_select_d;
    wire [1:0] rightShiftStageSel0Dto0_uid342_alignmentShifter_uid133_block_rsrvd_fix_merged_bit_select_b;
    wire [1:0] rightShiftStageSel0Dto0_uid342_alignmentShifter_uid133_block_rsrvd_fix_merged_bit_select_c;
    wire [1:0] rightShiftStageSel0Dto0_uid342_alignmentShifter_uid133_block_rsrvd_fix_merged_bit_select_d;
    wire [0:0] normBits_farPathInternal1_uid145_block_rsrvd_fix_merged_bit_select_b;
    wire [0:0] normBits_farPathInternal1_uid145_block_rsrvd_fix_merged_bit_select_c;
    wire [15:0] rVStage_uid264_countValue_closePathZ_uid94_block_rsrvd_fix_merged_bit_select_b;
    wire [15:0] rVStage_uid264_countValue_closePathZ_uid94_block_rsrvd_fix_merged_bit_select_c;
    wire [7:0] rVStage_uid270_countValue_closePathZ_uid94_block_rsrvd_fix_merged_bit_select_b;
    wire [7:0] rVStage_uid270_countValue_closePathZ_uid94_block_rsrvd_fix_merged_bit_select_c;
    wire [3:0] rVStage_uid276_countValue_closePathZ_uid94_block_rsrvd_fix_merged_bit_select_b;
    wire [3:0] rVStage_uid276_countValue_closePathZ_uid94_block_rsrvd_fix_merged_bit_select_c;
    wire [1:0] rVStage_uid282_countValue_closePathZ_uid94_block_rsrvd_fix_merged_bit_select_b;
    wire [1:0] rVStage_uid282_countValue_closePathZ_uid94_block_rsrvd_fix_merged_bit_select_c;
    reg [7:0] redist0_rVStage_uid270_countValue_closePathZ_uid94_block_rsrvd_fix_merged_bit_select_b_1_q;
    reg [7:0] redist1_rVStage_uid270_countValue_closePathZ_uid94_block_rsrvd_fix_merged_bit_select_c_1_q;
    reg [5:0] redist2_r_uid290_countValue_closePathZ_uid94_block_rsrvd_fix_q_1_q;
    reg [0:0] redist3_vCount_uid265_countValue_closePathZ_uid94_block_rsrvd_fix_q_1_q;
    reg [23:0] redist4_vStage_uid259_countValue_closePathZ_uid94_block_rsrvd_fix_b_3_q;
    reg [23:0] redist4_vStage_uid259_countValue_closePathZ_uid94_block_rsrvd_fix_b_3_delay_0;
    reg [23:0] redist4_vStage_uid259_countValue_closePathZ_uid94_block_rsrvd_fix_b_3_delay_1;
    reg [0:0] redist5_vCount_uid257_countValue_closePathZ_uid94_block_rsrvd_fix_q_2_q;
    reg [31:0] redist6_rVStage_uid256_countValue_closePathZ_uid94_block_rsrvd_fix_b_1_q;
    reg [0:0] redist7_signRInfRZRReg_uid242_block_rsrvd_fix_q_3_q;
    reg [0:0] redist7_signRInfRZRReg_uid242_block_rsrvd_fix_q_3_delay_0;
    reg [0:0] redist8_excRZero_uid223_block_rsrvd_fix_q_3_q;
    reg [0:0] redist8_excRZero_uid223_block_rsrvd_fix_q_3_delay_0;
    reg [0:0] redist9_regInputs_uid221_block_rsrvd_fix_q_3_q;
    reg [0:0] redist9_regInputs_uid221_block_rsrvd_fix_q_3_delay_0;
    reg [10:0] redist10_expRPreExc_uid220_block_rsrvd_fix_b_1_q;
    reg [51:0] redist11_fracValue_uid215_block_rsrvd_fix_b_2_q;
    reg [51:0] redist11_fracValue_uid215_block_rsrvd_fix_b_2_delay_0;
    reg [12:0] redist12_countValue_uid214_block_rsrvd_fix_b_1_q;
    reg [0:0] redist13_IrndVal_uid199_block_rsrvd_fix_q_3_q;
    reg [0:0] redist13_IrndVal_uid199_block_rsrvd_fix_q_3_delay_0;
    reg [52:0] redist14_fracPostNorm_farPath_uid169_block_rsrvd_fix_q_2_q;
    reg [52:0] redist14_fracPostNorm_farPath_uid169_block_rsrvd_fix_q_2_delay_0;
    reg [1:0] redist15_normBits_farPathCnt_uid160_block_rsrvd_fix_q_2_q;
    reg [55:0] redist16_highBBits_uid139_block_rsrvd_fix_b_1_q;
    reg [54:0] redist17_lowRangeB_uid138_block_rsrvd_fix_b_2_q;
    reg [54:0] redist17_lowRangeB_uid138_block_rsrvd_fix_b_2_delay_0;
    reg [11:0] redist18_expAP1_uid97_block_rsrvd_fix_q_2_q;
    reg [55:0] redist19_fracAddResultNoSignExt_closePath_uid93_block_rsrvd_fix_b_1_q;
    reg [55:0] redist20_fracAddResultNoSignExt_closePath_uid93_block_rsrvd_fix_b_4_q;
    reg [55:0] redist20_fracAddResultNoSignExt_closePath_uid93_block_rsrvd_fix_b_4_delay_0;
    reg [55:0] redist21_oFracAE_uid74_block_rsrvd_fix_q_1_q;
    reg [0:0] redist22_aZeroOrSubnorm_uid72_block_rsrvd_fix_q_1_q;
    reg [0:0] redist23_closePath_uid71_block_rsrvd_fix_q_1_q;
    reg [0:0] redist24_closePath_uid71_block_rsrvd_fix_q_2_q;
    reg [0:0] redist25_closePathA_uid70_block_rsrvd_fix_n_4_q;
    reg [0:0] redist25_closePathA_uid70_block_rsrvd_fix_n_4_delay_0;
    reg [0:0] redist25_closePathA_uid70_block_rsrvd_fix_n_4_delay_1;
    reg [0:0] redist26_effSub_uid59_block_rsrvd_fix_q_4_q;
    reg [0:0] redist26_effSub_uid59_block_rsrvd_fix_q_4_delay_0;
    reg [0:0] redist26_effSub_uid59_block_rsrvd_fix_q_4_delay_1;
    reg [0:0] redist26_effSub_uid59_block_rsrvd_fix_q_4_delay_2;
    reg [0:0] redist27_effSub_uid59_block_rsrvd_fix_q_7_q;
    reg [0:0] redist27_effSub_uid59_block_rsrvd_fix_q_7_delay_0;
    reg [0:0] redist27_effSub_uid59_block_rsrvd_fix_q_7_delay_1;
    reg [0:0] redist28_sigB_uid58_block_rsrvd_fix_b_1_q;
    reg [0:0] redist29_sigB_uid58_block_rsrvd_fix_b_5_q;
    reg [0:0] redist29_sigB_uid58_block_rsrvd_fix_b_5_delay_0;
    reg [0:0] redist29_sigB_uid58_block_rsrvd_fix_b_5_delay_1;
    reg [0:0] redist29_sigB_uid58_block_rsrvd_fix_b_5_delay_2;
    reg [0:0] redist30_sigA_uid57_block_rsrvd_fix_b_1_q;
    reg [0:0] redist31_sigA_uid57_block_rsrvd_fix_b_5_q;
    reg [0:0] redist31_sigA_uid57_block_rsrvd_fix_b_5_delay_0;
    reg [0:0] redist31_sigA_uid57_block_rsrvd_fix_b_5_delay_1;
    reg [0:0] redist31_sigA_uid57_block_rsrvd_fix_b_5_delay_2;
    reg [0:0] redist32_excS_bSig_uid51_block_rsrvd_fix_q_3_q;
    reg [0:0] redist32_excS_bSig_uid51_block_rsrvd_fix_q_3_delay_0;
    reg [0:0] redist32_excS_bSig_uid51_block_rsrvd_fix_q_3_delay_1;
    reg [0:0] redist33_excS_bSig_uid51_block_rsrvd_fix_q_4_q;
    reg [0:0] redist34_excR_bSig_uid50_block_rsrvd_fix_q_4_q;
    reg [0:0] redist34_excR_bSig_uid50_block_rsrvd_fix_q_4_delay_0;
    reg [0:0] redist34_excR_bSig_uid50_block_rsrvd_fix_q_4_delay_1;
    reg [0:0] redist35_excN_bSig_uid47_block_rsrvd_fix_q_7_q;
    reg [0:0] redist36_excI_bSig_uid46_block_rsrvd_fix_q_4_q;
    reg [0:0] redist36_excI_bSig_uid46_block_rsrvd_fix_q_4_delay_0;
    reg [0:0] redist36_excI_bSig_uid46_block_rsrvd_fix_q_4_delay_1;
    reg [0:0] redist37_excI_bSig_uid46_block_rsrvd_fix_q_7_q;
    reg [0:0] redist37_excI_bSig_uid46_block_rsrvd_fix_q_7_delay_0;
    reg [0:0] redist37_excI_bSig_uid46_block_rsrvd_fix_q_7_delay_1;
    reg [0:0] redist38_excZ_bSig_uid45_block_rsrvd_fix_q_3_q;
    reg [0:0] redist38_excZ_bSig_uid45_block_rsrvd_fix_q_3_delay_0;
    reg [0:0] redist38_excZ_bSig_uid45_block_rsrvd_fix_q_3_delay_1;
    reg [0:0] redist39_excZ_bSig_uid45_block_rsrvd_fix_q_4_q;
    reg [51:0] redist40_frac_bSig_uid40_block_rsrvd_fix_b_1_q;
    reg [0:0] redist41_excS_aSig_uid34_block_rsrvd_fix_q_3_q;
    reg [0:0] redist41_excS_aSig_uid34_block_rsrvd_fix_q_3_delay_0;
    reg [0:0] redist41_excS_aSig_uid34_block_rsrvd_fix_q_3_delay_1;
    reg [0:0] redist42_excS_aSig_uid34_block_rsrvd_fix_q_4_q;
    reg [0:0] redist43_excN_aSig_uid30_block_rsrvd_fix_q_4_q;
    reg [0:0] redist43_excN_aSig_uid30_block_rsrvd_fix_q_4_delay_0;
    reg [0:0] redist43_excN_aSig_uid30_block_rsrvd_fix_q_4_delay_1;
    reg [0:0] redist44_excI_aSig_uid29_block_rsrvd_fix_q_4_q;
    reg [0:0] redist44_excI_aSig_uid29_block_rsrvd_fix_q_4_delay_0;
    reg [0:0] redist44_excI_aSig_uid29_block_rsrvd_fix_q_4_delay_1;
    reg [0:0] redist45_excZ_aSig_uid28_block_rsrvd_fix_q_2_q;
    reg [0:0] redist46_fracXIsNotZero_uid27_block_rsrvd_fix_q_3_q;
    reg [0:0] redist46_fracXIsNotZero_uid27_block_rsrvd_fix_q_3_delay_0;
    reg [0:0] redist46_fracXIsNotZero_uid27_block_rsrvd_fix_q_3_delay_1;
    reg [0:0] redist47_fracXIsZero_uid26_block_rsrvd_fix_q_3_q;
    reg [0:0] redist47_fracXIsZero_uid26_block_rsrvd_fix_q_3_delay_0;
    reg [0:0] redist48_fracXIsZero_uid26_block_rsrvd_fix_q_4_q;
    reg [0:0] redist49_expXIsZero_uid24_block_rsrvd_fix_q_1_q;
    reg [0:0] redist50_expXIsZero_uid24_block_rsrvd_fix_q_2_q;
    reg [0:0] redist51_expXIsZero_uid24_block_rsrvd_fix_q_3_q;
    reg [51:0] redist52_frac_aSig_uid23_block_rsrvd_fix_b_2_q;
    reg [51:0] redist52_frac_aSig_uid23_block_rsrvd_fix_b_2_delay_0;
    reg [10:0] redist53_exp_aSig_uid22_block_rsrvd_fix_b_1_q;
    reg [10:0] redist54_exp_aSig_uid22_block_rsrvd_fix_b_4_q;
    reg [10:0] redist54_exp_aSig_uid22_block_rsrvd_fix_b_4_delay_0;
    reg [10:0] redist54_exp_aSig_uid22_block_rsrvd_fix_b_4_delay_1;
    reg [10:0] redist55_exp_aSig_uid22_block_rsrvd_fix_b_5_q;
    reg [55:0] redist20_fracAddResultNoSignExt_closePath_uid93_block_rsrvd_fix_b_4_outputreg0_q;


    // cAmA_uid120_block_rsrvd_fix(CONSTANT,119)
    assign cAmA_uid120_block_rsrvd_fix_q = $unsigned(6'b111000);

    // zs_uid255_countValue_closePathZ_uid94_block_rsrvd_fix(CONSTANT,254)
    assign zs_uid255_countValue_closePathZ_uid94_block_rsrvd_fix_q = $unsigned(32'b00000000000000000000000000000000);

    // xMSB_uid82_block_rsrvd_fix(BITSELECT,81)@3
    assign xMSB_uid82_block_rsrvd_fix_b = $unsigned(oFracBREXC2S_uid79_block_rsrvd_fix_b[55:55]);

    // sigY_uid12_block_rsrvd_fix(BITSELECT,11)@0
    assign sigY_uid12_block_rsrvd_fix_b = $unsigned(in_1[63:63]);

    // expY_uid11_block_rsrvd_fix(BITSELECT,10)@0
    assign expY_uid11_block_rsrvd_fix_b = in_1[62:52];

    // fracY_uid10_block_rsrvd_fix(BITSELECT,9)@0
    assign fracY_uid10_block_rsrvd_fix_b = in_1[51:0];

    // ypn_uid13_block_rsrvd_fix(BITJOIN,12)@0
    assign ypn_uid13_block_rsrvd_fix_q = {sigY_uid12_block_rsrvd_fix_b, expY_uid11_block_rsrvd_fix_b, fracY_uid10_block_rsrvd_fix_b};

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // expFracY_uid8_block_rsrvd_fix(BITSELECT,7)@0
    assign expFracY_uid8_block_rsrvd_fix_b = in_1[62:0];

    // expFracX_uid7_block_rsrvd_fix(BITSELECT,6)@0
    assign expFracX_uid7_block_rsrvd_fix_b = in_0[62:0];

    // xGTEy_uid9_block_rsrvd_fix(COMPARE,8)@0
    assign xGTEy_uid9_block_rsrvd_fix_a = {2'b00, expFracX_uid7_block_rsrvd_fix_b};
    assign xGTEy_uid9_block_rsrvd_fix_b = {2'b00, expFracY_uid8_block_rsrvd_fix_b};
    assign xGTEy_uid9_block_rsrvd_fix_o = $unsigned(xGTEy_uid9_block_rsrvd_fix_a) - $unsigned(xGTEy_uid9_block_rsrvd_fix_b);
    assign xGTEy_uid9_block_rsrvd_fix_n[0] = ~ (xGTEy_uid9_block_rsrvd_fix_o[64]);

    // bSig_uid18_block_rsrvd_fix(MUX,17)@0 + 1
    assign bSig_uid18_block_rsrvd_fix_s = xGTEy_uid9_block_rsrvd_fix_n;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            bSig_uid18_block_rsrvd_fix_q <= 64'b0;
        end
        else
        begin
            unique case (bSig_uid18_block_rsrvd_fix_s)
                1'b0 : bSig_uid18_block_rsrvd_fix_q <= in_0;
                1'b1 : bSig_uid18_block_rsrvd_fix_q <= ypn_uid13_block_rsrvd_fix_q;
                default : bSig_uid18_block_rsrvd_fix_q <= 64'b0;
            endcase
        end
    end

    // sigB_uid58_block_rsrvd_fix(BITSELECT,57)@1
    assign sigB_uid58_block_rsrvd_fix_b = $unsigned(bSig_uid18_block_rsrvd_fix_q[63:63]);

    // redist28_sigB_uid58_block_rsrvd_fix_b_1(DELAY,401)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist28_sigB_uid58_block_rsrvd_fix_b_1_q <= '0;
        end
        else
        begin
            redist28_sigB_uid58_block_rsrvd_fix_b_1_q <= $unsigned(sigB_uid58_block_rsrvd_fix_b);
        end
    end

    // aSig_uid17_block_rsrvd_fix(MUX,16)@0 + 1
    assign aSig_uid17_block_rsrvd_fix_s = xGTEy_uid9_block_rsrvd_fix_n;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            aSig_uid17_block_rsrvd_fix_q <= 64'b0;
        end
        else
        begin
            unique case (aSig_uid17_block_rsrvd_fix_s)
                1'b0 : aSig_uid17_block_rsrvd_fix_q <= ypn_uid13_block_rsrvd_fix_q;
                1'b1 : aSig_uid17_block_rsrvd_fix_q <= in_0;
                default : aSig_uid17_block_rsrvd_fix_q <= 64'b0;
            endcase
        end
    end

    // sigA_uid57_block_rsrvd_fix(BITSELECT,56)@1
    assign sigA_uid57_block_rsrvd_fix_b = $unsigned(aSig_uid17_block_rsrvd_fix_q[63:63]);

    // redist30_sigA_uid57_block_rsrvd_fix_b_1(DELAY,403)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist30_sigA_uid57_block_rsrvd_fix_b_1_q <= '0;
        end
        else
        begin
            redist30_sigA_uid57_block_rsrvd_fix_b_1_q <= $unsigned(sigA_uid57_block_rsrvd_fix_b);
        end
    end

    // effSub_uid59_block_rsrvd_fix(LOGICAL,58)@2
    assign effSub_uid59_block_rsrvd_fix_q = redist30_sigA_uid57_block_rsrvd_fix_b_1_q ^ redist28_sigB_uid58_block_rsrvd_fix_b_1_q;

    // cstAllZWE_uid21_block_rsrvd_fix(CONSTANT,20)
    assign cstAllZWE_uid21_block_rsrvd_fix_q = $unsigned(11'b00000000000);

    // exp_bSig_uid39_block_rsrvd_fix(BITSELECT,38)@1
    assign exp_bSig_uid39_block_rsrvd_fix_in = bSig_uid18_block_rsrvd_fix_q[62:0];
    assign exp_bSig_uid39_block_rsrvd_fix_b = exp_bSig_uid39_block_rsrvd_fix_in[62:52];

    // expXIsZero_uid41_block_rsrvd_fix(LOGICAL,40)@1 + 1
    assign expXIsZero_uid41_block_rsrvd_fix_qi = $unsigned(exp_bSig_uid39_block_rsrvd_fix_b == cstAllZWE_uid21_block_rsrvd_fix_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    expXIsZero_uid41_block_rsrvd_fix_delay ( .xin(expXIsZero_uid41_block_rsrvd_fix_qi), .xout(expXIsZero_uid41_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // InvExpXIsZero_uid49_block_rsrvd_fix(LOGICAL,48)@2
    assign InvExpXIsZero_uid49_block_rsrvd_fix_q = ~ (expXIsZero_uid41_block_rsrvd_fix_q);

    // cstZeroWF_uid20_block_rsrvd_fix(CONSTANT,19)
    assign cstZeroWF_uid20_block_rsrvd_fix_q = $unsigned(52'b0000000000000000000000000000000000000000000000000000);

    // frac_bSig_uid40_block_rsrvd_fix(BITSELECT,39)@1
    assign frac_bSig_uid40_block_rsrvd_fix_in = bSig_uid18_block_rsrvd_fix_q[51:0];
    assign frac_bSig_uid40_block_rsrvd_fix_b = frac_bSig_uid40_block_rsrvd_fix_in[51:0];

    // redist40_frac_bSig_uid40_block_rsrvd_fix_b_1(DELAY,413)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist40_frac_bSig_uid40_block_rsrvd_fix_b_1_q <= '0;
        end
        else
        begin
            redist40_frac_bSig_uid40_block_rsrvd_fix_b_1_q <= $unsigned(frac_bSig_uid40_block_rsrvd_fix_b);
        end
    end

    // fracXIsZero_uid43_block_rsrvd_fix(LOGICAL,42)@1 + 1
    assign fracXIsZero_uid43_block_rsrvd_fix_qi = $unsigned(cstZeroWF_uid20_block_rsrvd_fix_q == frac_bSig_uid40_block_rsrvd_fix_b ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    fracXIsZero_uid43_block_rsrvd_fix_delay ( .xin(fracXIsZero_uid43_block_rsrvd_fix_qi), .xout(fracXIsZero_uid43_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // excZ_bSig_uid45_block_rsrvd_fix(LOGICAL,44)@2
    assign excZ_bSig_uid45_block_rsrvd_fix_q = expXIsZero_uid41_block_rsrvd_fix_q & fracXIsZero_uid43_block_rsrvd_fix_q;

    // fracBz_uid63_block_rsrvd_fix(MUX,62)@2
    assign fracBz_uid63_block_rsrvd_fix_s = excZ_bSig_uid45_block_rsrvd_fix_q;
    always @(fracBz_uid63_block_rsrvd_fix_s or redist40_frac_bSig_uid40_block_rsrvd_fix_b_1_q or cstZeroWF_uid20_block_rsrvd_fix_q)
    begin
        unique case (fracBz_uid63_block_rsrvd_fix_s)
            1'b0 : fracBz_uid63_block_rsrvd_fix_q = redist40_frac_bSig_uid40_block_rsrvd_fix_b_1_q;
            1'b1 : fracBz_uid63_block_rsrvd_fix_q = cstZeroWF_uid20_block_rsrvd_fix_q;
            default : fracBz_uid63_block_rsrvd_fix_q = 52'b0;
        endcase
    end

    // oFracB_uid67_block_rsrvd_fix(BITJOIN,66)@2
    assign oFracB_uid67_block_rsrvd_fix_q = {InvExpXIsZero_uid49_block_rsrvd_fix_q, fracBz_uid63_block_rsrvd_fix_q};

    // oFracBR_uid76_block_rsrvd_fix(BITJOIN,75)@2
    assign oFracBR_uid76_block_rsrvd_fix_q = {GND_q, oFracB_uid67_block_rsrvd_fix_q, GND_q, GND_q};

    // oFracBREX_uid77_block_rsrvd_fix(LOGICAL,76)@2
    assign oFracBREX_uid77_block_rsrvd_fix_b = $unsigned({{55{effSub_uid59_block_rsrvd_fix_q[0]}}, effSub_uid59_block_rsrvd_fix_q});
    assign oFracBREX_uid77_block_rsrvd_fix_q = oFracBR_uid76_block_rsrvd_fix_q ^ oFracBREX_uid77_block_rsrvd_fix_b;

    // oFracBREXC2_uid78_block_rsrvd_fix(ADD,77)@2 + 1
    assign oFracBREXC2_uid78_block_rsrvd_fix_a = {1'b0, oFracBREX_uid77_block_rsrvd_fix_q};
    assign oFracBREXC2_uid78_block_rsrvd_fix_b = {56'b00000000000000000000000000000000000000000000000000000000, effSub_uid59_block_rsrvd_fix_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            oFracBREXC2_uid78_block_rsrvd_fix_o <= 57'b0;
        end
        else
        begin
            oFracBREXC2_uid78_block_rsrvd_fix_o <= $unsigned(oFracBREXC2_uid78_block_rsrvd_fix_a) + $unsigned(oFracBREXC2_uid78_block_rsrvd_fix_b);
        end
    end
    assign oFracBREXC2_uid78_block_rsrvd_fix_q = oFracBREXC2_uid78_block_rsrvd_fix_o[56:0];

    // oFracBREXC2HighBits_uid81_block_rsrvd_fix(BITSELECT,80)@3
    assign oFracBREXC2HighBits_uid81_block_rsrvd_fix_in = oFracBREXC2_uid78_block_rsrvd_fix_q[55:0];
    assign oFracBREXC2HighBits_uid81_block_rsrvd_fix_b = oFracBREXC2HighBits_uid81_block_rsrvd_fix_in[55:1];

    // fracBAlignLowCloseUR_uid84_block_rsrvd_fix(BITJOIN,83)@3
    assign fracBAlignLowCloseUR_uid84_block_rsrvd_fix_q = {xMSB_uid82_block_rsrvd_fix_b, oFracBREXC2HighBits_uid81_block_rsrvd_fix_b};

    // oFracBREXC2S_uid79_block_rsrvd_fix(BITSELECT,78)@3
    assign oFracBREXC2S_uid79_block_rsrvd_fix_in = $unsigned(oFracBREXC2_uid78_block_rsrvd_fix_q[55:0]);
    assign oFracBREXC2S_uid79_block_rsrvd_fix_b = $unsigned(oFracBREXC2S_uid79_block_rsrvd_fix_in[55:0]);

    // fracXIsNotZero_uid44_block_rsrvd_fix(LOGICAL,43)@2
    assign fracXIsNotZero_uid44_block_rsrvd_fix_q = ~ (fracXIsZero_uid43_block_rsrvd_fix_q);

    // excS_bSig_uid51_block_rsrvd_fix(LOGICAL,50)@2
    assign excS_bSig_uid51_block_rsrvd_fix_q = expXIsZero_uid41_block_rsrvd_fix_q & fracXIsNotZero_uid44_block_rsrvd_fix_q;

    // frac_aSig_uid23_block_rsrvd_fix(BITSELECT,22)@1
    assign frac_aSig_uid23_block_rsrvd_fix_in = aSig_uid17_block_rsrvd_fix_q[51:0];
    assign frac_aSig_uid23_block_rsrvd_fix_b = frac_aSig_uid23_block_rsrvd_fix_in[51:0];

    // fracXIsZero_uid26_block_rsrvd_fix(LOGICAL,25)@1 + 1
    assign fracXIsZero_uid26_block_rsrvd_fix_qi = $unsigned(cstZeroWF_uid20_block_rsrvd_fix_q == frac_aSig_uid23_block_rsrvd_fix_b ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    fracXIsZero_uid26_block_rsrvd_fix_delay ( .xin(fracXIsZero_uid26_block_rsrvd_fix_qi), .xout(fracXIsZero_uid26_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // fracXIsNotZero_uid27_block_rsrvd_fix(LOGICAL,26)@2
    assign fracXIsNotZero_uid27_block_rsrvd_fix_q = ~ (fracXIsZero_uid26_block_rsrvd_fix_q);

    // exp_aSig_uid22_block_rsrvd_fix(BITSELECT,21)@1
    assign exp_aSig_uid22_block_rsrvd_fix_in = aSig_uid17_block_rsrvd_fix_q[62:0];
    assign exp_aSig_uid22_block_rsrvd_fix_b = exp_aSig_uid22_block_rsrvd_fix_in[62:52];

    // redist53_exp_aSig_uid22_block_rsrvd_fix_b_1(DELAY,426)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist53_exp_aSig_uid22_block_rsrvd_fix_b_1_q <= '0;
        end
        else
        begin
            redist53_exp_aSig_uid22_block_rsrvd_fix_b_1_q <= $unsigned(exp_aSig_uid22_block_rsrvd_fix_b);
        end
    end

    // expXIsZero_uid24_block_rsrvd_fix(LOGICAL,23)@2
    assign expXIsZero_uid24_block_rsrvd_fix_q = $unsigned(redist53_exp_aSig_uid22_block_rsrvd_fix_b_1_q == cstAllZWE_uid21_block_rsrvd_fix_q ? 1'b1 : 1'b0);

    // excS_aSig_uid34_block_rsrvd_fix(LOGICAL,33)@2
    assign excS_aSig_uid34_block_rsrvd_fix_q = expXIsZero_uid24_block_rsrvd_fix_q & fracXIsNotZero_uid27_block_rsrvd_fix_q;

    // aIsNotASubnorm_uid87_block_rsrvd_fix(LOGICAL,86)@2
    assign aIsNotASubnorm_uid87_block_rsrvd_fix_q = ~ (excS_aSig_uid34_block_rsrvd_fix_q);

    // aNormalBSubnormal_uid88_block_rsrvd_fix(LOGICAL,87)@2
    assign aNormalBSubnormal_uid88_block_rsrvd_fix_q = aIsNotASubnorm_uid87_block_rsrvd_fix_q & excS_bSig_uid51_block_rsrvd_fix_q;

    // aNormalBSubnromal_uid89_block_rsrvd_fix(LOGICAL,88)@2
    assign aNormalBSubnromal_uid89_block_rsrvd_fix_q = ~ (aNormalBSubnormal_uid88_block_rsrvd_fix_q);

    // expAmExpB_uid68_block_rsrvd_fix(SUB,67)@1 + 1
    assign expAmExpB_uid68_block_rsrvd_fix_a = {1'b0, exp_aSig_uid22_block_rsrvd_fix_b};
    assign expAmExpB_uid68_block_rsrvd_fix_b = {1'b0, exp_bSig_uid39_block_rsrvd_fix_b};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            expAmExpB_uid68_block_rsrvd_fix_o <= 12'b0;
        end
        else
        begin
            expAmExpB_uid68_block_rsrvd_fix_o <= $unsigned(expAmExpB_uid68_block_rsrvd_fix_a) - $unsigned(expAmExpB_uid68_block_rsrvd_fix_b);
        end
    end
    assign expAmExpB_uid68_block_rsrvd_fix_q = expAmExpB_uid68_block_rsrvd_fix_o[11:0];

    // expAmExpBZ_uid86_block_rsrvd_fix(BITSELECT,85)@2
    assign expAmExpBZ_uid86_block_rsrvd_fix_in = $unsigned(expAmExpB_uid68_block_rsrvd_fix_q[0:0]);
    assign expAmExpBZ_uid86_block_rsrvd_fix_b = $unsigned(expAmExpBZ_uid86_block_rsrvd_fix_in[0:0]);

    // exponentDifferenceIsOneAndBNotSubnormal_uid90_block_rsrvd_fix(LOGICAL,89)@2 + 1
    assign exponentDifferenceIsOneAndBNotSubnormal_uid90_block_rsrvd_fix_qi = expAmExpBZ_uid86_block_rsrvd_fix_b & aNormalBSubnromal_uid89_block_rsrvd_fix_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    exponentDifferenceIsOneAndBNotSubnormal_uid90_block_rsrvd_fix_delay ( .xin(exponentDifferenceIsOneAndBNotSubnormal_uid90_block_rsrvd_fix_qi), .xout(exponentDifferenceIsOneAndBNotSubnormal_uid90_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // oFracBREXC2SPostAlign_uid91_block_rsrvd_fix(MUX,90)@3
    assign oFracBREXC2SPostAlign_uid91_block_rsrvd_fix_s = exponentDifferenceIsOneAndBNotSubnormal_uid90_block_rsrvd_fix_q;
    always @(oFracBREXC2SPostAlign_uid91_block_rsrvd_fix_s or oFracBREXC2S_uid79_block_rsrvd_fix_b or fracBAlignLowCloseUR_uid84_block_rsrvd_fix_q)
    begin
        unique case (oFracBREXC2SPostAlign_uid91_block_rsrvd_fix_s)
            1'b0 : oFracBREXC2SPostAlign_uid91_block_rsrvd_fix_q = oFracBREXC2S_uid79_block_rsrvd_fix_b;
            1'b1 : oFracBREXC2SPostAlign_uid91_block_rsrvd_fix_q = fracBAlignLowCloseUR_uid84_block_rsrvd_fix_q;
            default : oFracBREXC2SPostAlign_uid91_block_rsrvd_fix_q = 56'b0;
        endcase
    end

    // redist49_expXIsZero_uid24_block_rsrvd_fix_q_1(DELAY,422)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist49_expXIsZero_uid24_block_rsrvd_fix_q_1_q <= '0;
        end
        else
        begin
            redist49_expXIsZero_uid24_block_rsrvd_fix_q_1_q <= $unsigned(expXIsZero_uid24_block_rsrvd_fix_q);
        end
    end

    // InvExcASubnormOrZero_uid64_block_rsrvd_fix(LOGICAL,63)@3
    assign InvExcASubnormOrZero_uid64_block_rsrvd_fix_q = ~ (redist49_expXIsZero_uid24_block_rsrvd_fix_q_1_q);

    // redist52_frac_aSig_uid23_block_rsrvd_fix_b_2(DELAY,425)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist52_frac_aSig_uid23_block_rsrvd_fix_b_2_delay_0 <= '0;
            redist52_frac_aSig_uid23_block_rsrvd_fix_b_2_q <= '0;
        end
        else
        begin
            redist52_frac_aSig_uid23_block_rsrvd_fix_b_2_delay_0 <= $unsigned(frac_aSig_uid23_block_rsrvd_fix_b);
            redist52_frac_aSig_uid23_block_rsrvd_fix_b_2_q <= redist52_frac_aSig_uid23_block_rsrvd_fix_b_2_delay_0;
        end
    end

    // oFracA_uid65_block_rsrvd_fix(BITJOIN,64)@3
    assign oFracA_uid65_block_rsrvd_fix_q = {InvExcASubnormOrZero_uid64_block_rsrvd_fix_q, redist52_frac_aSig_uid23_block_rsrvd_fix_b_2_q};

    // oFracAE_uid74_block_rsrvd_fix(BITJOIN,73)@3
    assign oFracAE_uid74_block_rsrvd_fix_q = {GND_q, oFracA_uid65_block_rsrvd_fix_q, GND_q, GND_q};

    // fracAddResult_closePath_uid92_block_rsrvd_fix(ADD,91)@3
    assign fracAddResult_closePath_uid92_block_rsrvd_fix_a = $unsigned({{1{oFracAE_uid74_block_rsrvd_fix_q[55]}}, oFracAE_uid74_block_rsrvd_fix_q});
    assign fracAddResult_closePath_uid92_block_rsrvd_fix_b = $unsigned({{1{oFracBREXC2SPostAlign_uid91_block_rsrvd_fix_q[55]}}, oFracBREXC2SPostAlign_uid91_block_rsrvd_fix_q});
    assign fracAddResult_closePath_uid92_block_rsrvd_fix_o = $unsigned($signed(fracAddResult_closePath_uid92_block_rsrvd_fix_a) + $signed(fracAddResult_closePath_uid92_block_rsrvd_fix_b));
    assign fracAddResult_closePath_uid92_block_rsrvd_fix_q = fracAddResult_closePath_uid92_block_rsrvd_fix_o[56:0];

    // fracAddResultNoSignExt_closePath_uid93_block_rsrvd_fix(BITSELECT,92)@3
    assign fracAddResultNoSignExt_closePath_uid93_block_rsrvd_fix_in = fracAddResult_closePath_uid92_block_rsrvd_fix_q[55:0];
    assign fracAddResultNoSignExt_closePath_uid93_block_rsrvd_fix_b = fracAddResultNoSignExt_closePath_uid93_block_rsrvd_fix_in[55:0];

    // rVStage_uid256_countValue_closePathZ_uid94_block_rsrvd_fix(BITSELECT,255)@3
    assign rVStage_uid256_countValue_closePathZ_uid94_block_rsrvd_fix_b = fracAddResultNoSignExt_closePath_uid93_block_rsrvd_fix_b[55:24];

    // vCount_uid257_countValue_closePathZ_uid94_block_rsrvd_fix(LOGICAL,256)@3 + 1
    assign vCount_uid257_countValue_closePathZ_uid94_block_rsrvd_fix_qi = $unsigned(rVStage_uid256_countValue_closePathZ_uid94_block_rsrvd_fix_b == zs_uid255_countValue_closePathZ_uid94_block_rsrvd_fix_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    vCount_uid257_countValue_closePathZ_uid94_block_rsrvd_fix_delay ( .xin(vCount_uid257_countValue_closePathZ_uid94_block_rsrvd_fix_qi), .xout(vCount_uid257_countValue_closePathZ_uid94_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist5_vCount_uid257_countValue_closePathZ_uid94_block_rsrvd_fix_q_2(DELAY,378)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_vCount_uid257_countValue_closePathZ_uid94_block_rsrvd_fix_q_2_q <= '0;
        end
        else
        begin
            redist5_vCount_uid257_countValue_closePathZ_uid94_block_rsrvd_fix_q_2_q <= $unsigned(vCount_uid257_countValue_closePathZ_uid94_block_rsrvd_fix_q);
        end
    end

    // zs_uid263_countValue_closePathZ_uid94_block_rsrvd_fix(CONSTANT,262)
    assign zs_uid263_countValue_closePathZ_uid94_block_rsrvd_fix_q = $unsigned(16'b0000000000000000);

    // redist19_fracAddResultNoSignExt_closePath_uid93_block_rsrvd_fix_b_1(DELAY,392)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist19_fracAddResultNoSignExt_closePath_uid93_block_rsrvd_fix_b_1_q <= '0;
        end
        else
        begin
            redist19_fracAddResultNoSignExt_closePath_uid93_block_rsrvd_fix_b_1_q <= $unsigned(fracAddResultNoSignExt_closePath_uid93_block_rsrvd_fix_b);
        end
    end

    // vStage_uid259_countValue_closePathZ_uid94_block_rsrvd_fix(BITSELECT,258)@4
    assign vStage_uid259_countValue_closePathZ_uid94_block_rsrvd_fix_in = redist19_fracAddResultNoSignExt_closePath_uid93_block_rsrvd_fix_b_1_q[23:0];
    assign vStage_uid259_countValue_closePathZ_uid94_block_rsrvd_fix_b = vStage_uid259_countValue_closePathZ_uid94_block_rsrvd_fix_in[23:0];

    // mO_uid258_countValue_closePathZ_uid94_block_rsrvd_fix(CONSTANT,257)
    assign mO_uid258_countValue_closePathZ_uid94_block_rsrvd_fix_q = $unsigned(8'b11111111);

    // cStage_uid260_countValue_closePathZ_uid94_block_rsrvd_fix(BITJOIN,259)@4
    assign cStage_uid260_countValue_closePathZ_uid94_block_rsrvd_fix_q = {vStage_uid259_countValue_closePathZ_uid94_block_rsrvd_fix_b, mO_uid258_countValue_closePathZ_uid94_block_rsrvd_fix_q};

    // redist6_rVStage_uid256_countValue_closePathZ_uid94_block_rsrvd_fix_b_1(DELAY,379)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_rVStage_uid256_countValue_closePathZ_uid94_block_rsrvd_fix_b_1_q <= '0;
        end
        else
        begin
            redist6_rVStage_uid256_countValue_closePathZ_uid94_block_rsrvd_fix_b_1_q <= $unsigned(rVStage_uid256_countValue_closePathZ_uid94_block_rsrvd_fix_b);
        end
    end

    // vStagei_uid262_countValue_closePathZ_uid94_block_rsrvd_fix(MUX,261)@4
    assign vStagei_uid262_countValue_closePathZ_uid94_block_rsrvd_fix_s = vCount_uid257_countValue_closePathZ_uid94_block_rsrvd_fix_q;
    always @(vStagei_uid262_countValue_closePathZ_uid94_block_rsrvd_fix_s or redist6_rVStage_uid256_countValue_closePathZ_uid94_block_rsrvd_fix_b_1_q or cStage_uid260_countValue_closePathZ_uid94_block_rsrvd_fix_q)
    begin
        unique case (vStagei_uid262_countValue_closePathZ_uid94_block_rsrvd_fix_s)
            1'b0 : vStagei_uid262_countValue_closePathZ_uid94_block_rsrvd_fix_q = redist6_rVStage_uid256_countValue_closePathZ_uid94_block_rsrvd_fix_b_1_q;
            1'b1 : vStagei_uid262_countValue_closePathZ_uid94_block_rsrvd_fix_q = cStage_uid260_countValue_closePathZ_uid94_block_rsrvd_fix_q;
            default : vStagei_uid262_countValue_closePathZ_uid94_block_rsrvd_fix_q = 32'b0;
        endcase
    end

    // rVStage_uid264_countValue_closePathZ_uid94_block_rsrvd_fix_merged_bit_select(BITSELECT,369)@4
    assign rVStage_uid264_countValue_closePathZ_uid94_block_rsrvd_fix_merged_bit_select_b = vStagei_uid262_countValue_closePathZ_uid94_block_rsrvd_fix_q[31:16];
    assign rVStage_uid264_countValue_closePathZ_uid94_block_rsrvd_fix_merged_bit_select_c = vStagei_uid262_countValue_closePathZ_uid94_block_rsrvd_fix_q[15:0];

    // vCount_uid265_countValue_closePathZ_uid94_block_rsrvd_fix(LOGICAL,264)@4
    assign vCount_uid265_countValue_closePathZ_uid94_block_rsrvd_fix_q = $unsigned(rVStage_uid264_countValue_closePathZ_uid94_block_rsrvd_fix_merged_bit_select_b == zs_uid263_countValue_closePathZ_uid94_block_rsrvd_fix_q ? 1'b1 : 1'b0);

    // redist3_vCount_uid265_countValue_closePathZ_uid94_block_rsrvd_fix_q_1(DELAY,376)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_vCount_uid265_countValue_closePathZ_uid94_block_rsrvd_fix_q_1_q <= '0;
        end
        else
        begin
            redist3_vCount_uid265_countValue_closePathZ_uid94_block_rsrvd_fix_q_1_q <= $unsigned(vCount_uid265_countValue_closePathZ_uid94_block_rsrvd_fix_q);
        end
    end

    // zs_uid269_countValue_closePathZ_uid94_block_rsrvd_fix(CONSTANT,268)
    assign zs_uid269_countValue_closePathZ_uid94_block_rsrvd_fix_q = $unsigned(8'b00000000);

    // vStagei_uid268_countValue_closePathZ_uid94_block_rsrvd_fix(MUX,267)@4
    assign vStagei_uid268_countValue_closePathZ_uid94_block_rsrvd_fix_s = vCount_uid265_countValue_closePathZ_uid94_block_rsrvd_fix_q;
    always @(vStagei_uid268_countValue_closePathZ_uid94_block_rsrvd_fix_s or rVStage_uid264_countValue_closePathZ_uid94_block_rsrvd_fix_merged_bit_select_b or rVStage_uid264_countValue_closePathZ_uid94_block_rsrvd_fix_merged_bit_select_c)
    begin
        unique case (vStagei_uid268_countValue_closePathZ_uid94_block_rsrvd_fix_s)
            1'b0 : vStagei_uid268_countValue_closePathZ_uid94_block_rsrvd_fix_q = rVStage_uid264_countValue_closePathZ_uid94_block_rsrvd_fix_merged_bit_select_b;
            1'b1 : vStagei_uid268_countValue_closePathZ_uid94_block_rsrvd_fix_q = rVStage_uid264_countValue_closePathZ_uid94_block_rsrvd_fix_merged_bit_select_c;
            default : vStagei_uid268_countValue_closePathZ_uid94_block_rsrvd_fix_q = 16'b0;
        endcase
    end

    // rVStage_uid270_countValue_closePathZ_uid94_block_rsrvd_fix_merged_bit_select(BITSELECT,370)@4
    assign rVStage_uid270_countValue_closePathZ_uid94_block_rsrvd_fix_merged_bit_select_b = vStagei_uid268_countValue_closePathZ_uid94_block_rsrvd_fix_q[15:8];
    assign rVStage_uid270_countValue_closePathZ_uid94_block_rsrvd_fix_merged_bit_select_c = vStagei_uid268_countValue_closePathZ_uid94_block_rsrvd_fix_q[7:0];

    // vCount_uid271_countValue_closePathZ_uid94_block_rsrvd_fix(LOGICAL,270)@4 + 1
    assign vCount_uid271_countValue_closePathZ_uid94_block_rsrvd_fix_qi = $unsigned(rVStage_uid270_countValue_closePathZ_uid94_block_rsrvd_fix_merged_bit_select_b == zs_uid269_countValue_closePathZ_uid94_block_rsrvd_fix_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    vCount_uid271_countValue_closePathZ_uid94_block_rsrvd_fix_delay ( .xin(vCount_uid271_countValue_closePathZ_uid94_block_rsrvd_fix_qi), .xout(vCount_uid271_countValue_closePathZ_uid94_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // zs_uid275_countValue_closePathZ_uid94_block_rsrvd_fix(CONSTANT,274)
    assign zs_uid275_countValue_closePathZ_uid94_block_rsrvd_fix_q = $unsigned(4'b0000);

    // redist1_rVStage_uid270_countValue_closePathZ_uid94_block_rsrvd_fix_merged_bit_select_c_1(DELAY,374)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_rVStage_uid270_countValue_closePathZ_uid94_block_rsrvd_fix_merged_bit_select_c_1_q <= '0;
        end
        else
        begin
            redist1_rVStage_uid270_countValue_closePathZ_uid94_block_rsrvd_fix_merged_bit_select_c_1_q <= $unsigned(rVStage_uid270_countValue_closePathZ_uid94_block_rsrvd_fix_merged_bit_select_c);
        end
    end

    // redist0_rVStage_uid270_countValue_closePathZ_uid94_block_rsrvd_fix_merged_bit_select_b_1(DELAY,373)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_rVStage_uid270_countValue_closePathZ_uid94_block_rsrvd_fix_merged_bit_select_b_1_q <= '0;
        end
        else
        begin
            redist0_rVStage_uid270_countValue_closePathZ_uid94_block_rsrvd_fix_merged_bit_select_b_1_q <= $unsigned(rVStage_uid270_countValue_closePathZ_uid94_block_rsrvd_fix_merged_bit_select_b);
        end
    end

    // vStagei_uid274_countValue_closePathZ_uid94_block_rsrvd_fix(MUX,273)@5
    assign vStagei_uid274_countValue_closePathZ_uid94_block_rsrvd_fix_s = vCount_uid271_countValue_closePathZ_uid94_block_rsrvd_fix_q;
    always @(vStagei_uid274_countValue_closePathZ_uid94_block_rsrvd_fix_s or redist0_rVStage_uid270_countValue_closePathZ_uid94_block_rsrvd_fix_merged_bit_select_b_1_q or redist1_rVStage_uid270_countValue_closePathZ_uid94_block_rsrvd_fix_merged_bit_select_c_1_q)
    begin
        unique case (vStagei_uid274_countValue_closePathZ_uid94_block_rsrvd_fix_s)
            1'b0 : vStagei_uid274_countValue_closePathZ_uid94_block_rsrvd_fix_q = redist0_rVStage_uid270_countValue_closePathZ_uid94_block_rsrvd_fix_merged_bit_select_b_1_q;
            1'b1 : vStagei_uid274_countValue_closePathZ_uid94_block_rsrvd_fix_q = redist1_rVStage_uid270_countValue_closePathZ_uid94_block_rsrvd_fix_merged_bit_select_c_1_q;
            default : vStagei_uid274_countValue_closePathZ_uid94_block_rsrvd_fix_q = 8'b0;
        endcase
    end

    // rVStage_uid276_countValue_closePathZ_uid94_block_rsrvd_fix_merged_bit_select(BITSELECT,371)@5
    assign rVStage_uid276_countValue_closePathZ_uid94_block_rsrvd_fix_merged_bit_select_b = vStagei_uid274_countValue_closePathZ_uid94_block_rsrvd_fix_q[7:4];
    assign rVStage_uid276_countValue_closePathZ_uid94_block_rsrvd_fix_merged_bit_select_c = vStagei_uid274_countValue_closePathZ_uid94_block_rsrvd_fix_q[3:0];

    // vCount_uid277_countValue_closePathZ_uid94_block_rsrvd_fix(LOGICAL,276)@5
    assign vCount_uid277_countValue_closePathZ_uid94_block_rsrvd_fix_q = $unsigned(rVStage_uid276_countValue_closePathZ_uid94_block_rsrvd_fix_merged_bit_select_b == zs_uid275_countValue_closePathZ_uid94_block_rsrvd_fix_q ? 1'b1 : 1'b0);

    // cst2zeros_uid170_block_rsrvd_fix(CONSTANT,169)
    assign cst2zeros_uid170_block_rsrvd_fix_q = $unsigned(2'b00);

    // vStagei_uid280_countValue_closePathZ_uid94_block_rsrvd_fix(MUX,279)@5
    assign vStagei_uid280_countValue_closePathZ_uid94_block_rsrvd_fix_s = vCount_uid277_countValue_closePathZ_uid94_block_rsrvd_fix_q;
    always @(vStagei_uid280_countValue_closePathZ_uid94_block_rsrvd_fix_s or rVStage_uid276_countValue_closePathZ_uid94_block_rsrvd_fix_merged_bit_select_b or rVStage_uid276_countValue_closePathZ_uid94_block_rsrvd_fix_merged_bit_select_c)
    begin
        unique case (vStagei_uid280_countValue_closePathZ_uid94_block_rsrvd_fix_s)
            1'b0 : vStagei_uid280_countValue_closePathZ_uid94_block_rsrvd_fix_q = rVStage_uid276_countValue_closePathZ_uid94_block_rsrvd_fix_merged_bit_select_b;
            1'b1 : vStagei_uid280_countValue_closePathZ_uid94_block_rsrvd_fix_q = rVStage_uid276_countValue_closePathZ_uid94_block_rsrvd_fix_merged_bit_select_c;
            default : vStagei_uid280_countValue_closePathZ_uid94_block_rsrvd_fix_q = 4'b0;
        endcase
    end

    // rVStage_uid282_countValue_closePathZ_uid94_block_rsrvd_fix_merged_bit_select(BITSELECT,372)@5
    assign rVStage_uid282_countValue_closePathZ_uid94_block_rsrvd_fix_merged_bit_select_b = vStagei_uid280_countValue_closePathZ_uid94_block_rsrvd_fix_q[3:2];
    assign rVStage_uid282_countValue_closePathZ_uid94_block_rsrvd_fix_merged_bit_select_c = vStagei_uid280_countValue_closePathZ_uid94_block_rsrvd_fix_q[1:0];

    // vCount_uid283_countValue_closePathZ_uid94_block_rsrvd_fix(LOGICAL,282)@5
    assign vCount_uid283_countValue_closePathZ_uid94_block_rsrvd_fix_q = $unsigned(rVStage_uid282_countValue_closePathZ_uid94_block_rsrvd_fix_merged_bit_select_b == cst2zeros_uid170_block_rsrvd_fix_q ? 1'b1 : 1'b0);

    // vStagei_uid286_countValue_closePathZ_uid94_block_rsrvd_fix(MUX,285)@5
    assign vStagei_uid286_countValue_closePathZ_uid94_block_rsrvd_fix_s = vCount_uid283_countValue_closePathZ_uid94_block_rsrvd_fix_q;
    always @(vStagei_uid286_countValue_closePathZ_uid94_block_rsrvd_fix_s or rVStage_uid282_countValue_closePathZ_uid94_block_rsrvd_fix_merged_bit_select_b or rVStage_uid282_countValue_closePathZ_uid94_block_rsrvd_fix_merged_bit_select_c)
    begin
        unique case (vStagei_uid286_countValue_closePathZ_uid94_block_rsrvd_fix_s)
            1'b0 : vStagei_uid286_countValue_closePathZ_uid94_block_rsrvd_fix_q = rVStage_uid282_countValue_closePathZ_uid94_block_rsrvd_fix_merged_bit_select_b;
            1'b1 : vStagei_uid286_countValue_closePathZ_uid94_block_rsrvd_fix_q = rVStage_uid282_countValue_closePathZ_uid94_block_rsrvd_fix_merged_bit_select_c;
            default : vStagei_uid286_countValue_closePathZ_uid94_block_rsrvd_fix_q = 2'b0;
        endcase
    end

    // rVStage_uid288_countValue_closePathZ_uid94_block_rsrvd_fix(BITSELECT,287)@5
    assign rVStage_uid288_countValue_closePathZ_uid94_block_rsrvd_fix_b = vStagei_uid286_countValue_closePathZ_uid94_block_rsrvd_fix_q[1:1];

    // vCount_uid289_countValue_closePathZ_uid94_block_rsrvd_fix(LOGICAL,288)@5
    assign vCount_uid289_countValue_closePathZ_uid94_block_rsrvd_fix_q = $unsigned(rVStage_uid288_countValue_closePathZ_uid94_block_rsrvd_fix_b == GND_q ? 1'b1 : 1'b0);

    // r_uid290_countValue_closePathZ_uid94_block_rsrvd_fix(BITJOIN,289)@5
    assign r_uid290_countValue_closePathZ_uid94_block_rsrvd_fix_q = {redist5_vCount_uid257_countValue_closePathZ_uid94_block_rsrvd_fix_q_2_q, redist3_vCount_uid265_countValue_closePathZ_uid94_block_rsrvd_fix_q_1_q, vCount_uid271_countValue_closePathZ_uid94_block_rsrvd_fix_q, vCount_uid277_countValue_closePathZ_uid94_block_rsrvd_fix_q, vCount_uid283_countValue_closePathZ_uid94_block_rsrvd_fix_q, vCount_uid289_countValue_closePathZ_uid94_block_rsrvd_fix_q};

    // redist2_r_uid290_countValue_closePathZ_uid94_block_rsrvd_fix_q_1(DELAY,375)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_r_uid290_countValue_closePathZ_uid94_block_rsrvd_fix_q_1_q <= '0;
        end
        else
        begin
            redist2_r_uid290_countValue_closePathZ_uid94_block_rsrvd_fix_q_1_q <= $unsigned(r_uid290_countValue_closePathZ_uid94_block_rsrvd_fix_q);
        end
    end

    // aMinusA2_uid121_block_rsrvd_fix(LOGICAL,120)@6
    assign aMinusA2_uid121_block_rsrvd_fix_q = $unsigned(redist2_r_uid290_countValue_closePathZ_uid94_block_rsrvd_fix_q_1_q == cAmA_uid120_block_rsrvd_fix_q ? 1'b1 : 1'b0);

    // redist26_effSub_uid59_block_rsrvd_fix_q_4(DELAY,399)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist26_effSub_uid59_block_rsrvd_fix_q_4_delay_0 <= '0;
            redist26_effSub_uid59_block_rsrvd_fix_q_4_delay_1 <= '0;
            redist26_effSub_uid59_block_rsrvd_fix_q_4_delay_2 <= '0;
            redist26_effSub_uid59_block_rsrvd_fix_q_4_q <= '0;
        end
        else
        begin
            redist26_effSub_uid59_block_rsrvd_fix_q_4_delay_0 <= $unsigned(effSub_uid59_block_rsrvd_fix_q);
            redist26_effSub_uid59_block_rsrvd_fix_q_4_delay_1 <= redist26_effSub_uid59_block_rsrvd_fix_q_4_delay_0;
            redist26_effSub_uid59_block_rsrvd_fix_q_4_delay_2 <= redist26_effSub_uid59_block_rsrvd_fix_q_4_delay_1;
            redist26_effSub_uid59_block_rsrvd_fix_q_4_q <= redist26_effSub_uid59_block_rsrvd_fix_q_4_delay_2;
        end
    end

    // oWE_uid69_block_rsrvd_fix(CONSTANT,68)
    assign oWE_uid69_block_rsrvd_fix_q = $unsigned(12'b000000000001);

    // closePathA_uid70_block_rsrvd_fix(COMPARE,69)@2 + 1
    assign closePathA_uid70_block_rsrvd_fix_a = $unsigned({{2{oWE_uid69_block_rsrvd_fix_q[11]}}, oWE_uid69_block_rsrvd_fix_q});
    assign closePathA_uid70_block_rsrvd_fix_b = $unsigned({{2{expAmExpB_uid68_block_rsrvd_fix_q[11]}}, expAmExpB_uid68_block_rsrvd_fix_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            closePathA_uid70_block_rsrvd_fix_o <= 14'b0;
        end
        else
        begin
            closePathA_uid70_block_rsrvd_fix_o <= $unsigned($signed(closePathA_uid70_block_rsrvd_fix_a) - $signed(closePathA_uid70_block_rsrvd_fix_b));
        end
    end
    assign closePathA_uid70_block_rsrvd_fix_n[0] = ~ (closePathA_uid70_block_rsrvd_fix_o[13]);

    // redist25_closePathA_uid70_block_rsrvd_fix_n_4(DELAY,398)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist25_closePathA_uid70_block_rsrvd_fix_n_4_delay_0 <= '0;
            redist25_closePathA_uid70_block_rsrvd_fix_n_4_delay_1 <= '0;
            redist25_closePathA_uid70_block_rsrvd_fix_n_4_q <= '0;
        end
        else
        begin
            redist25_closePathA_uid70_block_rsrvd_fix_n_4_delay_0 <= $unsigned(closePathA_uid70_block_rsrvd_fix_n);
            redist25_closePathA_uid70_block_rsrvd_fix_n_4_delay_1 <= redist25_closePathA_uid70_block_rsrvd_fix_n_4_delay_0;
            redist25_closePathA_uid70_block_rsrvd_fix_n_4_q <= redist25_closePathA_uid70_block_rsrvd_fix_n_4_delay_1;
        end
    end

    // closePath_uid71_block_rsrvd_fix(LOGICAL,70)@6
    assign closePath_uid71_block_rsrvd_fix_q = redist25_closePathA_uid70_block_rsrvd_fix_n_4_q & redist26_effSub_uid59_block_rsrvd_fix_q_4_q;

    // aMinusA_uid122_block_rsrvd_fix(LOGICAL,121)@6
    assign aMinusA_uid122_block_rsrvd_fix_q = closePath_uid71_block_rsrvd_fix_q & aMinusA2_uid121_block_rsrvd_fix_q;

    // invAMinusA_uid234_block_rsrvd_fix(LOGICAL,233)@6
    assign invAMinusA_uid234_block_rsrvd_fix_q = ~ (aMinusA_uid122_block_rsrvd_fix_q);

    // redist31_sigA_uid57_block_rsrvd_fix_b_5(DELAY,404)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist31_sigA_uid57_block_rsrvd_fix_b_5_delay_0 <= '0;
            redist31_sigA_uid57_block_rsrvd_fix_b_5_delay_1 <= '0;
            redist31_sigA_uid57_block_rsrvd_fix_b_5_delay_2 <= '0;
            redist31_sigA_uid57_block_rsrvd_fix_b_5_q <= '0;
        end
        else
        begin
            redist31_sigA_uid57_block_rsrvd_fix_b_5_delay_0 <= $unsigned(redist30_sigA_uid57_block_rsrvd_fix_b_1_q);
            redist31_sigA_uid57_block_rsrvd_fix_b_5_delay_1 <= redist31_sigA_uid57_block_rsrvd_fix_b_5_delay_0;
            redist31_sigA_uid57_block_rsrvd_fix_b_5_delay_2 <= redist31_sigA_uid57_block_rsrvd_fix_b_5_delay_1;
            redist31_sigA_uid57_block_rsrvd_fix_b_5_q <= redist31_sigA_uid57_block_rsrvd_fix_b_5_delay_2;
        end
    end

    // redist38_excZ_bSig_uid45_block_rsrvd_fix_q_3(DELAY,411)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist38_excZ_bSig_uid45_block_rsrvd_fix_q_3_delay_0 <= '0;
            redist38_excZ_bSig_uid45_block_rsrvd_fix_q_3_delay_1 <= '0;
            redist38_excZ_bSig_uid45_block_rsrvd_fix_q_3_q <= '0;
        end
        else
        begin
            redist38_excZ_bSig_uid45_block_rsrvd_fix_q_3_delay_0 <= $unsigned(excZ_bSig_uid45_block_rsrvd_fix_q);
            redist38_excZ_bSig_uid45_block_rsrvd_fix_q_3_delay_1 <= redist38_excZ_bSig_uid45_block_rsrvd_fix_q_3_delay_0;
            redist38_excZ_bSig_uid45_block_rsrvd_fix_q_3_q <= redist38_excZ_bSig_uid45_block_rsrvd_fix_q_3_delay_1;
        end
    end

    // redist39_excZ_bSig_uid45_block_rsrvd_fix_q_4(DELAY,412)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist39_excZ_bSig_uid45_block_rsrvd_fix_q_4_q <= '0;
        end
        else
        begin
            redist39_excZ_bSig_uid45_block_rsrvd_fix_q_4_q <= $unsigned(redist38_excZ_bSig_uid45_block_rsrvd_fix_q_3_q);
        end
    end

    // redist32_excS_bSig_uid51_block_rsrvd_fix_q_3(DELAY,405)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist32_excS_bSig_uid51_block_rsrvd_fix_q_3_delay_0 <= '0;
            redist32_excS_bSig_uid51_block_rsrvd_fix_q_3_delay_1 <= '0;
            redist32_excS_bSig_uid51_block_rsrvd_fix_q_3_q <= '0;
        end
        else
        begin
            redist32_excS_bSig_uid51_block_rsrvd_fix_q_3_delay_0 <= $unsigned(excS_bSig_uid51_block_rsrvd_fix_q);
            redist32_excS_bSig_uid51_block_rsrvd_fix_q_3_delay_1 <= redist32_excS_bSig_uid51_block_rsrvd_fix_q_3_delay_0;
            redist32_excS_bSig_uid51_block_rsrvd_fix_q_3_q <= redist32_excS_bSig_uid51_block_rsrvd_fix_q_3_delay_1;
        end
    end

    // redist33_excS_bSig_uid51_block_rsrvd_fix_q_4(DELAY,406)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist33_excS_bSig_uid51_block_rsrvd_fix_q_4_q <= '0;
        end
        else
        begin
            redist33_excS_bSig_uid51_block_rsrvd_fix_q_4_q <= $unsigned(redist32_excS_bSig_uid51_block_rsrvd_fix_q_3_q);
        end
    end

    // cstAllOWE_uid19_block_rsrvd_fix(CONSTANT,18)
    assign cstAllOWE_uid19_block_rsrvd_fix_q = $unsigned(11'b11111111111);

    // expXIsMax_uid42_block_rsrvd_fix(LOGICAL,41)@1 + 1
    assign expXIsMax_uid42_block_rsrvd_fix_qi = $unsigned(exp_bSig_uid39_block_rsrvd_fix_b == cstAllOWE_uid19_block_rsrvd_fix_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    expXIsMax_uid42_block_rsrvd_fix_delay ( .xin(expXIsMax_uid42_block_rsrvd_fix_qi), .xout(expXIsMax_uid42_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // invExpXIsMax_uid48_block_rsrvd_fix(LOGICAL,47)@2
    assign invExpXIsMax_uid48_block_rsrvd_fix_q = ~ (expXIsMax_uid42_block_rsrvd_fix_q);

    // excR_bSig_uid50_block_rsrvd_fix(LOGICAL,49)@2 + 1
    assign excR_bSig_uid50_block_rsrvd_fix_qi = InvExpXIsZero_uid49_block_rsrvd_fix_q & invExpXIsMax_uid48_block_rsrvd_fix_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    excR_bSig_uid50_block_rsrvd_fix_delay ( .xin(excR_bSig_uid50_block_rsrvd_fix_qi), .xout(excR_bSig_uid50_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist34_excR_bSig_uid50_block_rsrvd_fix_q_4(DELAY,407)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist34_excR_bSig_uid50_block_rsrvd_fix_q_4_delay_0 <= '0;
            redist34_excR_bSig_uid50_block_rsrvd_fix_q_4_delay_1 <= '0;
            redist34_excR_bSig_uid50_block_rsrvd_fix_q_4_q <= '0;
        end
        else
        begin
            redist34_excR_bSig_uid50_block_rsrvd_fix_q_4_delay_0 <= $unsigned(excR_bSig_uid50_block_rsrvd_fix_q);
            redist34_excR_bSig_uid50_block_rsrvd_fix_q_4_delay_1 <= redist34_excR_bSig_uid50_block_rsrvd_fix_q_4_delay_0;
            redist34_excR_bSig_uid50_block_rsrvd_fix_q_4_q <= redist34_excR_bSig_uid50_block_rsrvd_fix_q_4_delay_1;
        end
    end

    // bIsRegOrSubnorm_uid233_block_rsrvd_fix(LOGICAL,232)@6
    assign bIsRegOrSubnorm_uid233_block_rsrvd_fix_q = redist34_excR_bSig_uid50_block_rsrvd_fix_q_4_q | redist33_excS_bSig_uid51_block_rsrvd_fix_q_4_q | redist39_excZ_bSig_uid45_block_rsrvd_fix_q_4_q;

    // redist47_fracXIsZero_uid26_block_rsrvd_fix_q_3(DELAY,420)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist47_fracXIsZero_uid26_block_rsrvd_fix_q_3_delay_0 <= '0;
            redist47_fracXIsZero_uid26_block_rsrvd_fix_q_3_q <= '0;
        end
        else
        begin
            redist47_fracXIsZero_uid26_block_rsrvd_fix_q_3_delay_0 <= $unsigned(fracXIsZero_uid26_block_rsrvd_fix_q);
            redist47_fracXIsZero_uid26_block_rsrvd_fix_q_3_q <= redist47_fracXIsZero_uid26_block_rsrvd_fix_q_3_delay_0;
        end
    end

    // redist50_expXIsZero_uid24_block_rsrvd_fix_q_2(DELAY,423)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist50_expXIsZero_uid24_block_rsrvd_fix_q_2_q <= '0;
        end
        else
        begin
            redist50_expXIsZero_uid24_block_rsrvd_fix_q_2_q <= $unsigned(redist49_expXIsZero_uid24_block_rsrvd_fix_q_1_q);
        end
    end

    // excZ_aSig_uid28_block_rsrvd_fix(LOGICAL,27)@4 + 1
    assign excZ_aSig_uid28_block_rsrvd_fix_qi = redist50_expXIsZero_uid24_block_rsrvd_fix_q_2_q & redist47_fracXIsZero_uid26_block_rsrvd_fix_q_3_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    excZ_aSig_uid28_block_rsrvd_fix_delay ( .xin(excZ_aSig_uid28_block_rsrvd_fix_qi), .xout(excZ_aSig_uid28_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist45_excZ_aSig_uid28_block_rsrvd_fix_q_2(DELAY,418)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist45_excZ_aSig_uid28_block_rsrvd_fix_q_2_q <= '0;
        end
        else
        begin
            redist45_excZ_aSig_uid28_block_rsrvd_fix_q_2_q <= $unsigned(excZ_aSig_uid28_block_rsrvd_fix_q);
        end
    end

    // redist41_excS_aSig_uid34_block_rsrvd_fix_q_3(DELAY,414)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist41_excS_aSig_uid34_block_rsrvd_fix_q_3_delay_0 <= '0;
            redist41_excS_aSig_uid34_block_rsrvd_fix_q_3_delay_1 <= '0;
            redist41_excS_aSig_uid34_block_rsrvd_fix_q_3_q <= '0;
        end
        else
        begin
            redist41_excS_aSig_uid34_block_rsrvd_fix_q_3_delay_0 <= $unsigned(excS_aSig_uid34_block_rsrvd_fix_q);
            redist41_excS_aSig_uid34_block_rsrvd_fix_q_3_delay_1 <= redist41_excS_aSig_uid34_block_rsrvd_fix_q_3_delay_0;
            redist41_excS_aSig_uid34_block_rsrvd_fix_q_3_q <= redist41_excS_aSig_uid34_block_rsrvd_fix_q_3_delay_1;
        end
    end

    // redist42_excS_aSig_uid34_block_rsrvd_fix_q_4(DELAY,415)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist42_excS_aSig_uid34_block_rsrvd_fix_q_4_q <= '0;
        end
        else
        begin
            redist42_excS_aSig_uid34_block_rsrvd_fix_q_4_q <= $unsigned(redist41_excS_aSig_uid34_block_rsrvd_fix_q_3_q);
        end
    end

    // redist54_exp_aSig_uid22_block_rsrvd_fix_b_4(DELAY,427)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist54_exp_aSig_uid22_block_rsrvd_fix_b_4_delay_0 <= '0;
            redist54_exp_aSig_uid22_block_rsrvd_fix_b_4_delay_1 <= '0;
            redist54_exp_aSig_uid22_block_rsrvd_fix_b_4_q <= '0;
        end
        else
        begin
            redist54_exp_aSig_uid22_block_rsrvd_fix_b_4_delay_0 <= $unsigned(redist53_exp_aSig_uid22_block_rsrvd_fix_b_1_q);
            redist54_exp_aSig_uid22_block_rsrvd_fix_b_4_delay_1 <= redist54_exp_aSig_uid22_block_rsrvd_fix_b_4_delay_0;
            redist54_exp_aSig_uid22_block_rsrvd_fix_b_4_q <= redist54_exp_aSig_uid22_block_rsrvd_fix_b_4_delay_1;
        end
    end

    // expXIsMax_uid25_block_rsrvd_fix(LOGICAL,24)@5
    assign expXIsMax_uid25_block_rsrvd_fix_q = $unsigned(redist54_exp_aSig_uid22_block_rsrvd_fix_b_4_q == cstAllOWE_uid19_block_rsrvd_fix_q ? 1'b1 : 1'b0);

    // invExpXIsMax_uid31_block_rsrvd_fix(LOGICAL,30)@5
    assign invExpXIsMax_uid31_block_rsrvd_fix_q = ~ (expXIsMax_uid25_block_rsrvd_fix_q);

    // redist51_expXIsZero_uid24_block_rsrvd_fix_q_3(DELAY,424)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist51_expXIsZero_uid24_block_rsrvd_fix_q_3_q <= '0;
        end
        else
        begin
            redist51_expXIsZero_uid24_block_rsrvd_fix_q_3_q <= $unsigned(redist50_expXIsZero_uid24_block_rsrvd_fix_q_2_q);
        end
    end

    // InvExpXIsZero_uid32_block_rsrvd_fix(LOGICAL,31)@5
    assign InvExpXIsZero_uid32_block_rsrvd_fix_q = ~ (redist51_expXIsZero_uid24_block_rsrvd_fix_q_3_q);

    // excR_aSig_uid33_block_rsrvd_fix(LOGICAL,32)@5 + 1
    assign excR_aSig_uid33_block_rsrvd_fix_qi = InvExpXIsZero_uid32_block_rsrvd_fix_q & invExpXIsMax_uid31_block_rsrvd_fix_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    excR_aSig_uid33_block_rsrvd_fix_delay ( .xin(excR_aSig_uid33_block_rsrvd_fix_qi), .xout(excR_aSig_uid33_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // aIsRegOrSubnorm_uid232_block_rsrvd_fix(LOGICAL,231)@6
    assign aIsRegOrSubnorm_uid232_block_rsrvd_fix_q = excR_aSig_uid33_block_rsrvd_fix_q | redist42_excS_aSig_uid34_block_rsrvd_fix_q_4_q | redist45_excZ_aSig_uid28_block_rsrvd_fix_q_2_q;

    // signRReg_uid235_block_rsrvd_fix(LOGICAL,234)@6
    assign signRReg_uid235_block_rsrvd_fix_q = aIsRegOrSubnorm_uid232_block_rsrvd_fix_q & bIsRegOrSubnorm_uid233_block_rsrvd_fix_q & redist31_sigA_uid57_block_rsrvd_fix_b_5_q & invAMinusA_uid234_block_rsrvd_fix_q;

    // redist29_sigB_uid58_block_rsrvd_fix_b_5(DELAY,402)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist29_sigB_uid58_block_rsrvd_fix_b_5_delay_0 <= '0;
            redist29_sigB_uid58_block_rsrvd_fix_b_5_delay_1 <= '0;
            redist29_sigB_uid58_block_rsrvd_fix_b_5_delay_2 <= '0;
            redist29_sigB_uid58_block_rsrvd_fix_b_5_q <= '0;
        end
        else
        begin
            redist29_sigB_uid58_block_rsrvd_fix_b_5_delay_0 <= $unsigned(redist28_sigB_uid58_block_rsrvd_fix_b_1_q);
            redist29_sigB_uid58_block_rsrvd_fix_b_5_delay_1 <= redist29_sigB_uid58_block_rsrvd_fix_b_5_delay_0;
            redist29_sigB_uid58_block_rsrvd_fix_b_5_delay_2 <= redist29_sigB_uid58_block_rsrvd_fix_b_5_delay_1;
            redist29_sigB_uid58_block_rsrvd_fix_b_5_q <= redist29_sigB_uid58_block_rsrvd_fix_b_5_delay_2;
        end
    end

    // excAZBZSigASigB_uid239_block_rsrvd_fix(LOGICAL,238)@6
    assign excAZBZSigASigB_uid239_block_rsrvd_fix_q = redist45_excZ_aSig_uid28_block_rsrvd_fix_q_2_q & redist39_excZ_bSig_uid45_block_rsrvd_fix_q_4_q & redist31_sigA_uid57_block_rsrvd_fix_b_5_q & redist29_sigB_uid58_block_rsrvd_fix_b_5_q;

    // excBZARSigA_uid240_block_rsrvd_fix(LOGICAL,239)@6
    assign excBZARSigA_uid240_block_rsrvd_fix_q = redist39_excZ_bSig_uid45_block_rsrvd_fix_q_4_q & excR_aSig_uid33_block_rsrvd_fix_q & redist31_sigA_uid57_block_rsrvd_fix_b_5_q;

    // signRZero_uid241_block_rsrvd_fix(LOGICAL,240)@6
    assign signRZero_uid241_block_rsrvd_fix_q = excBZARSigA_uid240_block_rsrvd_fix_q | excAZBZSigASigB_uid239_block_rsrvd_fix_q;

    // excI_bSig_uid46_block_rsrvd_fix(LOGICAL,45)@2 + 1
    assign excI_bSig_uid46_block_rsrvd_fix_qi = expXIsMax_uid42_block_rsrvd_fix_q & fracXIsZero_uid43_block_rsrvd_fix_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    excI_bSig_uid46_block_rsrvd_fix_delay ( .xin(excI_bSig_uid46_block_rsrvd_fix_qi), .xout(excI_bSig_uid46_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist36_excI_bSig_uid46_block_rsrvd_fix_q_4(DELAY,409)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist36_excI_bSig_uid46_block_rsrvd_fix_q_4_delay_0 <= '0;
            redist36_excI_bSig_uid46_block_rsrvd_fix_q_4_delay_1 <= '0;
            redist36_excI_bSig_uid46_block_rsrvd_fix_q_4_q <= '0;
        end
        else
        begin
            redist36_excI_bSig_uid46_block_rsrvd_fix_q_4_delay_0 <= $unsigned(excI_bSig_uid46_block_rsrvd_fix_q);
            redist36_excI_bSig_uid46_block_rsrvd_fix_q_4_delay_1 <= redist36_excI_bSig_uid46_block_rsrvd_fix_q_4_delay_0;
            redist36_excI_bSig_uid46_block_rsrvd_fix_q_4_q <= redist36_excI_bSig_uid46_block_rsrvd_fix_q_4_delay_1;
        end
    end

    // sigBBInf_uid236_block_rsrvd_fix(LOGICAL,235)@6
    assign sigBBInf_uid236_block_rsrvd_fix_q = redist29_sigB_uid58_block_rsrvd_fix_b_5_q & redist36_excI_bSig_uid46_block_rsrvd_fix_q_4_q;

    // redist48_fracXIsZero_uid26_block_rsrvd_fix_q_4(DELAY,421)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist48_fracXIsZero_uid26_block_rsrvd_fix_q_4_q <= '0;
        end
        else
        begin
            redist48_fracXIsZero_uid26_block_rsrvd_fix_q_4_q <= $unsigned(redist47_fracXIsZero_uid26_block_rsrvd_fix_q_3_q);
        end
    end

    // excI_aSig_uid29_block_rsrvd_fix(LOGICAL,28)@5 + 1
    assign excI_aSig_uid29_block_rsrvd_fix_qi = expXIsMax_uid25_block_rsrvd_fix_q & redist48_fracXIsZero_uid26_block_rsrvd_fix_q_4_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    excI_aSig_uid29_block_rsrvd_fix_delay ( .xin(excI_aSig_uid29_block_rsrvd_fix_qi), .xout(excI_aSig_uid29_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // sigAAInf_uid237_block_rsrvd_fix(LOGICAL,236)@6
    assign sigAAInf_uid237_block_rsrvd_fix_q = redist31_sigA_uid57_block_rsrvd_fix_b_5_q & excI_aSig_uid29_block_rsrvd_fix_q;

    // signRInf_uid238_block_rsrvd_fix(LOGICAL,237)@6
    assign signRInf_uid238_block_rsrvd_fix_q = sigAAInf_uid237_block_rsrvd_fix_q | sigBBInf_uid236_block_rsrvd_fix_q;

    // signRInfRZRReg_uid242_block_rsrvd_fix(LOGICAL,241)@6 + 1
    assign signRInfRZRReg_uid242_block_rsrvd_fix_qi = signRInf_uid238_block_rsrvd_fix_q | signRZero_uid241_block_rsrvd_fix_q | signRReg_uid235_block_rsrvd_fix_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    signRInfRZRReg_uid242_block_rsrvd_fix_delay ( .xin(signRInfRZRReg_uid242_block_rsrvd_fix_qi), .xout(signRInfRZRReg_uid242_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist7_signRInfRZRReg_uid242_block_rsrvd_fix_q_3(DELAY,380)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_signRInfRZRReg_uid242_block_rsrvd_fix_q_3_delay_0 <= '0;
            redist7_signRInfRZRReg_uid242_block_rsrvd_fix_q_3_q <= '0;
        end
        else
        begin
            redist7_signRInfRZRReg_uid242_block_rsrvd_fix_q_3_delay_0 <= $unsigned(signRInfRZRReg_uid242_block_rsrvd_fix_q);
            redist7_signRInfRZRReg_uid242_block_rsrvd_fix_q_3_q <= redist7_signRInfRZRReg_uid242_block_rsrvd_fix_q_3_delay_0;
        end
    end

    // excN_bSig_uid47_block_rsrvd_fix(LOGICAL,46)@2 + 1
    assign excN_bSig_uid47_block_rsrvd_fix_qi = expXIsMax_uid42_block_rsrvd_fix_q & fracXIsNotZero_uid44_block_rsrvd_fix_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    excN_bSig_uid47_block_rsrvd_fix_delay ( .xin(excN_bSig_uid47_block_rsrvd_fix_qi), .xout(excN_bSig_uid47_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist35_excN_bSig_uid47_block_rsrvd_fix_q_7(DELAY,408)
    dspba_delay_ver #( .width(1), .depth(6), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist35_excN_bSig_uid47_block_rsrvd_fix_q_7 ( .xin(excN_bSig_uid47_block_rsrvd_fix_q), .xout(redist35_excN_bSig_uid47_block_rsrvd_fix_q_7_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist46_fracXIsNotZero_uid27_block_rsrvd_fix_q_3(DELAY,419)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist46_fracXIsNotZero_uid27_block_rsrvd_fix_q_3_delay_0 <= '0;
            redist46_fracXIsNotZero_uid27_block_rsrvd_fix_q_3_delay_1 <= '0;
            redist46_fracXIsNotZero_uid27_block_rsrvd_fix_q_3_q <= '0;
        end
        else
        begin
            redist46_fracXIsNotZero_uid27_block_rsrvd_fix_q_3_delay_0 <= $unsigned(fracXIsNotZero_uid27_block_rsrvd_fix_q);
            redist46_fracXIsNotZero_uid27_block_rsrvd_fix_q_3_delay_1 <= redist46_fracXIsNotZero_uid27_block_rsrvd_fix_q_3_delay_0;
            redist46_fracXIsNotZero_uid27_block_rsrvd_fix_q_3_q <= redist46_fracXIsNotZero_uid27_block_rsrvd_fix_q_3_delay_1;
        end
    end

    // excN_aSig_uid30_block_rsrvd_fix(LOGICAL,29)@5 + 1
    assign excN_aSig_uid30_block_rsrvd_fix_qi = expXIsMax_uid25_block_rsrvd_fix_q & redist46_fracXIsNotZero_uid27_block_rsrvd_fix_q_3_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    excN_aSig_uid30_block_rsrvd_fix_delay ( .xin(excN_aSig_uid30_block_rsrvd_fix_qi), .xout(excN_aSig_uid30_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist43_excN_aSig_uid30_block_rsrvd_fix_q_4(DELAY,416)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist43_excN_aSig_uid30_block_rsrvd_fix_q_4_delay_0 <= '0;
            redist43_excN_aSig_uid30_block_rsrvd_fix_q_4_delay_1 <= '0;
            redist43_excN_aSig_uid30_block_rsrvd_fix_q_4_q <= '0;
        end
        else
        begin
            redist43_excN_aSig_uid30_block_rsrvd_fix_q_4_delay_0 <= $unsigned(excN_aSig_uid30_block_rsrvd_fix_q);
            redist43_excN_aSig_uid30_block_rsrvd_fix_q_4_delay_1 <= redist43_excN_aSig_uid30_block_rsrvd_fix_q_4_delay_0;
            redist43_excN_aSig_uid30_block_rsrvd_fix_q_4_q <= redist43_excN_aSig_uid30_block_rsrvd_fix_q_4_delay_1;
        end
    end

    // excRNaN2_uid227_block_rsrvd_fix(LOGICAL,226)@9
    assign excRNaN2_uid227_block_rsrvd_fix_q = redist43_excN_aSig_uid30_block_rsrvd_fix_q_4_q | redist35_excN_bSig_uid47_block_rsrvd_fix_q_7_q;

    // redist27_effSub_uid59_block_rsrvd_fix_q_7(DELAY,400)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist27_effSub_uid59_block_rsrvd_fix_q_7_delay_0 <= '0;
            redist27_effSub_uid59_block_rsrvd_fix_q_7_delay_1 <= '0;
            redist27_effSub_uid59_block_rsrvd_fix_q_7_q <= '0;
        end
        else
        begin
            redist27_effSub_uid59_block_rsrvd_fix_q_7_delay_0 <= $unsigned(redist26_effSub_uid59_block_rsrvd_fix_q_4_q);
            redist27_effSub_uid59_block_rsrvd_fix_q_7_delay_1 <= redist27_effSub_uid59_block_rsrvd_fix_q_7_delay_0;
            redist27_effSub_uid59_block_rsrvd_fix_q_7_q <= redist27_effSub_uid59_block_rsrvd_fix_q_7_delay_1;
        end
    end

    // redist37_excI_bSig_uid46_block_rsrvd_fix_q_7(DELAY,410)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist37_excI_bSig_uid46_block_rsrvd_fix_q_7_delay_0 <= '0;
            redist37_excI_bSig_uid46_block_rsrvd_fix_q_7_delay_1 <= '0;
            redist37_excI_bSig_uid46_block_rsrvd_fix_q_7_q <= '0;
        end
        else
        begin
            redist37_excI_bSig_uid46_block_rsrvd_fix_q_7_delay_0 <= $unsigned(redist36_excI_bSig_uid46_block_rsrvd_fix_q_4_q);
            redist37_excI_bSig_uid46_block_rsrvd_fix_q_7_delay_1 <= redist37_excI_bSig_uid46_block_rsrvd_fix_q_7_delay_0;
            redist37_excI_bSig_uid46_block_rsrvd_fix_q_7_q <= redist37_excI_bSig_uid46_block_rsrvd_fix_q_7_delay_1;
        end
    end

    // redist44_excI_aSig_uid29_block_rsrvd_fix_q_4(DELAY,417)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist44_excI_aSig_uid29_block_rsrvd_fix_q_4_delay_0 <= '0;
            redist44_excI_aSig_uid29_block_rsrvd_fix_q_4_delay_1 <= '0;
            redist44_excI_aSig_uid29_block_rsrvd_fix_q_4_q <= '0;
        end
        else
        begin
            redist44_excI_aSig_uid29_block_rsrvd_fix_q_4_delay_0 <= $unsigned(excI_aSig_uid29_block_rsrvd_fix_q);
            redist44_excI_aSig_uid29_block_rsrvd_fix_q_4_delay_1 <= redist44_excI_aSig_uid29_block_rsrvd_fix_q_4_delay_0;
            redist44_excI_aSig_uid29_block_rsrvd_fix_q_4_q <= redist44_excI_aSig_uid29_block_rsrvd_fix_q_4_delay_1;
        end
    end

    // excAIBISub_uid228_block_rsrvd_fix(LOGICAL,227)@9
    assign excAIBISub_uid228_block_rsrvd_fix_q = redist44_excI_aSig_uid29_block_rsrvd_fix_q_4_q & redist37_excI_bSig_uid46_block_rsrvd_fix_q_7_q & redist27_effSub_uid59_block_rsrvd_fix_q_7_q;

    // excRNaN_uid229_block_rsrvd_fix(LOGICAL,228)@9
    assign excRNaN_uid229_block_rsrvd_fix_q = excAIBISub_uid228_block_rsrvd_fix_q | excRNaN2_uid227_block_rsrvd_fix_q;

    // invExcRNaN_uid243_block_rsrvd_fix(LOGICAL,242)@9
    assign invExcRNaN_uid243_block_rsrvd_fix_q = ~ (excRNaN_uid229_block_rsrvd_fix_q);

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // signRPostExc_uid244_block_rsrvd_fix(LOGICAL,243)@9 + 1
    assign signRPostExc_uid244_block_rsrvd_fix_qi = invExcRNaN_uid243_block_rsrvd_fix_q & redist7_signRInfRZRReg_uid242_block_rsrvd_fix_q_3_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    signRPostExc_uid244_block_rsrvd_fix_delay ( .xin(signRPostExc_uid244_block_rsrvd_fix_qi), .xout(signRPostExc_uid244_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // oneOnTwoBits_uid154_block_rsrvd_fix(CONSTANT,153)
    assign oneOnTwoBits_uid154_block_rsrvd_fix_q = $unsigned(2'b01);

    // zeroOutCst_uid329_fracPostNorm_closePathExt_uid118_block_rsrvd_fix(CONSTANT,328)
    assign zeroOutCst_uid329_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_q = $unsigned(56'b00000000000000000000000000000000000000000000000000000000);

    // leftShiftStage2Idx3Rng3_uid325_fracPostNorm_closePathExt_uid118_block_rsrvd_fix(BITSELECT,324)@7
    assign leftShiftStage2Idx3Rng3_uid325_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_in = leftShiftStage1_uid317_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_q[52:0];
    assign leftShiftStage2Idx3Rng3_uid325_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_b = leftShiftStage2Idx3Rng3_uid325_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_in[52:0];

    // leftShiftStage2Idx3Pad3_uid324_fracPostNorm_closePathExt_uid118_block_rsrvd_fix(CONSTANT,323)
    assign leftShiftStage2Idx3Pad3_uid324_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_q = $unsigned(3'b000);

    // leftShiftStage2Idx3_uid326_fracPostNorm_closePathExt_uid118_block_rsrvd_fix(BITJOIN,325)@7
    assign leftShiftStage2Idx3_uid326_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_q = {leftShiftStage2Idx3Rng3_uid325_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_b, leftShiftStage2Idx3Pad3_uid324_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_q};

    // leftShiftStage2Idx2Rng2_uid322_fracPostNorm_closePathExt_uid118_block_rsrvd_fix(BITSELECT,321)@7
    assign leftShiftStage2Idx2Rng2_uid322_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_in = leftShiftStage1_uid317_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_q[53:0];
    assign leftShiftStage2Idx2Rng2_uid322_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_b = leftShiftStage2Idx2Rng2_uid322_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_in[53:0];

    // leftShiftStage2Idx2_uid323_fracPostNorm_closePathExt_uid118_block_rsrvd_fix(BITJOIN,322)@7
    assign leftShiftStage2Idx2_uid323_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_q = {leftShiftStage2Idx2Rng2_uid322_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_b, cst2zeros_uid170_block_rsrvd_fix_q};

    // leftShiftStage2Idx1Rng1_uid319_fracPostNorm_closePathExt_uid118_block_rsrvd_fix(BITSELECT,318)@7
    assign leftShiftStage2Idx1Rng1_uid319_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_in = leftShiftStage1_uid317_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_q[54:0];
    assign leftShiftStage2Idx1Rng1_uid319_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_b = leftShiftStage2Idx1Rng1_uid319_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_in[54:0];

    // leftShiftStage2Idx1_uid320_fracPostNorm_closePathExt_uid118_block_rsrvd_fix(BITJOIN,319)@7
    assign leftShiftStage2Idx1_uid320_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_q = {leftShiftStage2Idx1Rng1_uid319_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_b, GND_q};

    // leftShiftStage1Idx3Rng12_uid314_fracPostNorm_closePathExt_uid118_block_rsrvd_fix(BITSELECT,313)@7
    assign leftShiftStage1Idx3Rng12_uid314_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_in = leftShiftStage0_uid306_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_q[43:0];
    assign leftShiftStage1Idx3Rng12_uid314_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_b = leftShiftStage1Idx3Rng12_uid314_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_in[43:0];

    // leftShiftStage1Idx3Pad12_uid313_fracPostNorm_closePathExt_uid118_block_rsrvd_fix(CONSTANT,312)
    assign leftShiftStage1Idx3Pad12_uid313_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_q = $unsigned(12'b000000000000);

    // leftShiftStage1Idx3_uid315_fracPostNorm_closePathExt_uid118_block_rsrvd_fix(BITJOIN,314)@7
    assign leftShiftStage1Idx3_uid315_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_q = {leftShiftStage1Idx3Rng12_uid314_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_b, leftShiftStage1Idx3Pad12_uid313_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_q};

    // leftShiftStage1Idx2Rng8_uid311_fracPostNorm_closePathExt_uid118_block_rsrvd_fix(BITSELECT,310)@7
    assign leftShiftStage1Idx2Rng8_uid311_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_in = leftShiftStage0_uid306_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_q[47:0];
    assign leftShiftStage1Idx2Rng8_uid311_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_b = leftShiftStage1Idx2Rng8_uid311_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_in[47:0];

    // leftShiftStage1Idx2_uid312_fracPostNorm_closePathExt_uid118_block_rsrvd_fix(BITJOIN,311)@7
    assign leftShiftStage1Idx2_uid312_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_q = {leftShiftStage1Idx2Rng8_uid311_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_b, zs_uid269_countValue_closePathZ_uid94_block_rsrvd_fix_q};

    // leftShiftStage1Idx1Rng4_uid308_fracPostNorm_closePathExt_uid118_block_rsrvd_fix(BITSELECT,307)@7
    assign leftShiftStage1Idx1Rng4_uid308_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_in = leftShiftStage0_uid306_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_q[51:0];
    assign leftShiftStage1Idx1Rng4_uid308_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_b = leftShiftStage1Idx1Rng4_uid308_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_in[51:0];

    // leftShiftStage1Idx1_uid309_fracPostNorm_closePathExt_uid118_block_rsrvd_fix(BITJOIN,308)@7
    assign leftShiftStage1Idx1_uid309_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_q = {leftShiftStage1Idx1Rng4_uid308_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_b, zs_uid275_countValue_closePathZ_uid94_block_rsrvd_fix_q};

    // leftShiftStage0Idx3Rng48_uid303_fracPostNorm_closePathExt_uid118_block_rsrvd_fix(BITSELECT,302)@7
    assign leftShiftStage0Idx3Rng48_uid303_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_in = redist20_fracAddResultNoSignExt_closePath_uid93_block_rsrvd_fix_b_4_outputreg0_q[7:0];
    assign leftShiftStage0Idx3Rng48_uid303_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_b = leftShiftStage0Idx3Rng48_uid303_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_in[7:0];

    // leftShiftStage0Idx3Pad48_uid302_fracPostNorm_closePathExt_uid118_block_rsrvd_fix(CONSTANT,301)
    assign leftShiftStage0Idx3Pad48_uid302_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_q = $unsigned(48'b000000000000000000000000000000000000000000000000);

    // leftShiftStage0Idx3_uid304_fracPostNorm_closePathExt_uid118_block_rsrvd_fix(BITJOIN,303)@7
    assign leftShiftStage0Idx3_uid304_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_q = {leftShiftStage0Idx3Rng48_uid303_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_b, leftShiftStage0Idx3Pad48_uid302_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_q};

    // redist4_vStage_uid259_countValue_closePathZ_uid94_block_rsrvd_fix_b_3(DELAY,377)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_vStage_uid259_countValue_closePathZ_uid94_block_rsrvd_fix_b_3_delay_0 <= '0;
            redist4_vStage_uid259_countValue_closePathZ_uid94_block_rsrvd_fix_b_3_delay_1 <= '0;
            redist4_vStage_uid259_countValue_closePathZ_uid94_block_rsrvd_fix_b_3_q <= '0;
        end
        else
        begin
            redist4_vStage_uid259_countValue_closePathZ_uid94_block_rsrvd_fix_b_3_delay_0 <= $unsigned(vStage_uid259_countValue_closePathZ_uid94_block_rsrvd_fix_b);
            redist4_vStage_uid259_countValue_closePathZ_uid94_block_rsrvd_fix_b_3_delay_1 <= redist4_vStage_uid259_countValue_closePathZ_uid94_block_rsrvd_fix_b_3_delay_0;
            redist4_vStage_uid259_countValue_closePathZ_uid94_block_rsrvd_fix_b_3_q <= redist4_vStage_uid259_countValue_closePathZ_uid94_block_rsrvd_fix_b_3_delay_1;
        end
    end

    // leftShiftStage0Idx2_uid301_fracPostNorm_closePathExt_uid118_block_rsrvd_fix(BITJOIN,300)@7
    assign leftShiftStage0Idx2_uid301_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_q = {redist4_vStage_uid259_countValue_closePathZ_uid94_block_rsrvd_fix_b_3_q, zs_uid255_countValue_closePathZ_uid94_block_rsrvd_fix_q};

    // leftShiftStage0Idx1Rng16_uid297_fracPostNorm_closePathExt_uid118_block_rsrvd_fix(BITSELECT,296)@7
    assign leftShiftStage0Idx1Rng16_uid297_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_in = redist20_fracAddResultNoSignExt_closePath_uid93_block_rsrvd_fix_b_4_outputreg0_q[39:0];
    assign leftShiftStage0Idx1Rng16_uid297_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_b = leftShiftStage0Idx1Rng16_uid297_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_in[39:0];

    // leftShiftStage0Idx1_uid298_fracPostNorm_closePathExt_uid118_block_rsrvd_fix(BITJOIN,297)@7
    assign leftShiftStage0Idx1_uid298_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_q = {leftShiftStage0Idx1Rng16_uid297_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_b, zs_uid263_countValue_closePathZ_uid94_block_rsrvd_fix_q};

    // redist20_fracAddResultNoSignExt_closePath_uid93_block_rsrvd_fix_b_4(DELAY,393)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist20_fracAddResultNoSignExt_closePath_uid93_block_rsrvd_fix_b_4_delay_0 <= '0;
            redist20_fracAddResultNoSignExt_closePath_uid93_block_rsrvd_fix_b_4_q <= '0;
        end
        else
        begin
            redist20_fracAddResultNoSignExt_closePath_uid93_block_rsrvd_fix_b_4_delay_0 <= $unsigned(redist19_fracAddResultNoSignExt_closePath_uid93_block_rsrvd_fix_b_1_q);
            redist20_fracAddResultNoSignExt_closePath_uid93_block_rsrvd_fix_b_4_q <= redist20_fracAddResultNoSignExt_closePath_uid93_block_rsrvd_fix_b_4_delay_0;
        end
    end

    // redist20_fracAddResultNoSignExt_closePath_uid93_block_rsrvd_fix_b_4_outputreg0(DELAY,429)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist20_fracAddResultNoSignExt_closePath_uid93_block_rsrvd_fix_b_4_outputreg0_q <= '0;
        end
        else
        begin
            redist20_fracAddResultNoSignExt_closePath_uid93_block_rsrvd_fix_b_4_outputreg0_q <= $unsigned(redist20_fracAddResultNoSignExt_closePath_uid93_block_rsrvd_fix_b_4_q);
        end
    end

    // leftShiftStage0_uid306_fracPostNorm_closePathExt_uid118_block_rsrvd_fix(MUX,305)@7
    assign leftShiftStage0_uid306_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_s = leftShiftStageSel0Dto4_uid305_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_merged_bit_select_b;
    always @(leftShiftStage0_uid306_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_s or redist20_fracAddResultNoSignExt_closePath_uid93_block_rsrvd_fix_b_4_outputreg0_q or leftShiftStage0Idx1_uid298_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_q or leftShiftStage0Idx2_uid301_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_q or leftShiftStage0Idx3_uid304_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_q)
    begin
        unique case (leftShiftStage0_uid306_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_s)
            2'b00 : leftShiftStage0_uid306_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_q = redist20_fracAddResultNoSignExt_closePath_uid93_block_rsrvd_fix_b_4_outputreg0_q;
            2'b01 : leftShiftStage0_uid306_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_q = leftShiftStage0Idx1_uid298_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_q;
            2'b10 : leftShiftStage0_uid306_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_q = leftShiftStage0Idx2_uid301_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_q;
            2'b11 : leftShiftStage0_uid306_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_q = leftShiftStage0Idx3_uid304_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_q;
            default : leftShiftStage0_uid306_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_q = 56'b0;
        endcase
    end

    // leftShiftStage1_uid317_fracPostNorm_closePathExt_uid118_block_rsrvd_fix(MUX,316)@7
    assign leftShiftStage1_uid317_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_s = leftShiftStageSel0Dto4_uid305_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_merged_bit_select_c;
    always @(leftShiftStage1_uid317_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_s or leftShiftStage0_uid306_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_q or leftShiftStage1Idx1_uid309_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_q or leftShiftStage1Idx2_uid312_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_q or leftShiftStage1Idx3_uid315_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_q)
    begin
        unique case (leftShiftStage1_uid317_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_s)
            2'b00 : leftShiftStage1_uid317_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_q = leftShiftStage0_uid306_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_q;
            2'b01 : leftShiftStage1_uid317_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_q = leftShiftStage1Idx1_uid309_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_q;
            2'b10 : leftShiftStage1_uid317_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_q = leftShiftStage1Idx2_uid312_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_q;
            2'b11 : leftShiftStage1_uid317_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_q = leftShiftStage1Idx3_uid315_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_q;
            default : leftShiftStage1_uid317_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_q = 56'b0;
        endcase
    end

    // expAP1_uid97_block_rsrvd_fix(ADD,96)@5 + 1
    assign expAP1_uid97_block_rsrvd_fix_a = {1'b0, redist54_exp_aSig_uid22_block_rsrvd_fix_b_4_q};
    assign expAP1_uid97_block_rsrvd_fix_b = {11'b00000000000, VCC_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            expAP1_uid97_block_rsrvd_fix_o <= 12'b0;
        end
        else
        begin
            expAP1_uid97_block_rsrvd_fix_o <= $unsigned(expAP1_uid97_block_rsrvd_fix_a) + $unsigned(expAP1_uid97_block_rsrvd_fix_b);
        end
    end
    assign expAP1_uid97_block_rsrvd_fix_q = expAP1_uid97_block_rsrvd_fix_o[11:0];

    // condCase11_uid102_block_rsrvd_fix(COMPARE,101)@6
    assign condCase11_uid102_block_rsrvd_fix_a = {8'b00000000, redist2_r_uid290_countValue_closePathZ_uid94_block_rsrvd_fix_q_1_q};
    assign condCase11_uid102_block_rsrvd_fix_b = {2'b00, expAP1_uid97_block_rsrvd_fix_q};
    assign condCase11_uid102_block_rsrvd_fix_o = $unsigned(condCase11_uid102_block_rsrvd_fix_a) - $unsigned(condCase11_uid102_block_rsrvd_fix_b);
    assign condCase11_uid102_block_rsrvd_fix_n[0] = ~ (condCase11_uid102_block_rsrvd_fix_o[13]);

    // condCase12_uid103_block_rsrvd_fix(LOGICAL,102)@6
    assign condCase12_uid103_block_rsrvd_fix_q = ~ (condCase11_uid102_block_rsrvd_fix_n);

    // aNormalAndClosePath_uid101_block_rsrvd_fix(LOGICAL,100)@6
    assign aNormalAndClosePath_uid101_block_rsrvd_fix_q = excR_aSig_uid33_block_rsrvd_fix_q & closePath_uid71_block_rsrvd_fix_q;

    // case12_uid105_block_rsrvd_fix(LOGICAL,104)@6
    assign case12_uid105_block_rsrvd_fix_q = aNormalAndClosePath_uid101_block_rsrvd_fix_q & condCase12_uid103_block_rsrvd_fix_q;

    // zExt_uid99_block_rsrvd_fix(CONSTANT,98)
    assign zExt_uid99_block_rsrvd_fix_q = $unsigned(5'b00000);

    // expValueClosePath_Case12_uid100_block_rsrvd_fix(BITJOIN,99)@6
    assign expValueClosePath_Case12_uid100_block_rsrvd_fix_q = {zExt_uid99_block_rsrvd_fix_q, redist2_r_uid290_countValue_closePathZ_uid94_block_rsrvd_fix_q_1_q};

    // case12Exponent_uid108_block_rsrvd_fix(LOGICAL,107)@6
    assign case12Exponent_uid108_block_rsrvd_fix_b = $unsigned({{10{case12_uid105_block_rsrvd_fix_q[0]}}, case12_uid105_block_rsrvd_fix_q});
    assign case12Exponent_uid108_block_rsrvd_fix_q = expValueClosePath_Case12_uid100_block_rsrvd_fix_q & case12Exponent_uid108_block_rsrvd_fix_b;

    // case11_uid104_block_rsrvd_fix(LOGICAL,103)@6
    assign case11_uid104_block_rsrvd_fix_q = aNormalAndClosePath_uid101_block_rsrvd_fix_q & condCase11_uid102_block_rsrvd_fix_n;

    // redist55_exp_aSig_uid22_block_rsrvd_fix_b_5(DELAY,428)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist55_exp_aSig_uid22_block_rsrvd_fix_b_5_q <= '0;
        end
        else
        begin
            redist55_exp_aSig_uid22_block_rsrvd_fix_b_5_q <= $unsigned(redist54_exp_aSig_uid22_block_rsrvd_fix_b_4_q);
        end
    end

    // shiftValC11_uid114_block_rsrvd_fix(LOGICAL,113)@6
    assign shiftValC11_uid114_block_rsrvd_fix_b = $unsigned({{10{case11_uid104_block_rsrvd_fix_q[0]}}, case11_uid104_block_rsrvd_fix_q});
    assign shiftValC11_uid114_block_rsrvd_fix_q = redist55_exp_aSig_uid22_block_rsrvd_fix_b_5_q & shiftValC11_uid114_block_rsrvd_fix_b;

    // aZeroOrSubnorm_uid72_block_rsrvd_fix(LOGICAL,71)@5
    assign aZeroOrSubnorm_uid72_block_rsrvd_fix_q = excZ_aSig_uid28_block_rsrvd_fix_q | redist41_excS_aSig_uid34_block_rsrvd_fix_q_3_q;

    // redist22_aZeroOrSubnorm_uid72_block_rsrvd_fix_q_1(DELAY,395)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist22_aZeroOrSubnorm_uid72_block_rsrvd_fix_q_1_q <= '0;
        end
        else
        begin
            redist22_aZeroOrSubnorm_uid72_block_rsrvd_fix_q_1_q <= $unsigned(aZeroOrSubnorm_uid72_block_rsrvd_fix_q);
        end
    end

    // case0_uid95_block_rsrvd_fix(LOGICAL,94)@6
    assign case0_uid95_block_rsrvd_fix_q = redist22_aZeroOrSubnorm_uid72_block_rsrvd_fix_q_1_q & redist22_aZeroOrSubnorm_uid72_block_rsrvd_fix_q_1_q & closePath_uid71_block_rsrvd_fix_q;

    // expValueClosePath_Case0_uid96_block_rsrvd_fix(CONSTANT,95)
    assign expValueClosePath_Case0_uid96_block_rsrvd_fix_q = $unsigned(11'b00000000001);

    // case0Exponent_uid106_block_rsrvd_fix(LOGICAL,105)@6
    assign case0Exponent_uid106_block_rsrvd_fix_b = $unsigned({{10{case0_uid95_block_rsrvd_fix_q[0]}}, case0_uid95_block_rsrvd_fix_q});
    assign case0Exponent_uid106_block_rsrvd_fix_q = expValueClosePath_Case0_uid96_block_rsrvd_fix_q & case0Exponent_uid106_block_rsrvd_fix_b;

    // shiftValueCloseAll_uid116_block_rsrvd_fix(LOGICAL,115)@6 + 1
    assign shiftValueCloseAll_uid116_block_rsrvd_fix_qi = case0Exponent_uid106_block_rsrvd_fix_q | shiftValC11_uid114_block_rsrvd_fix_q | case12Exponent_uid108_block_rsrvd_fix_q;
    dspba_delay_ver #( .width(11), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    shiftValueCloseAll_uid116_block_rsrvd_fix_delay ( .xin(shiftValueCloseAll_uid116_block_rsrvd_fix_qi), .xout(shiftValueCloseAll_uid116_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // leftShiftStageSel0Dto4_uid305_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_merged_bit_select(BITSELECT,366)@7
    assign leftShiftStageSel0Dto4_uid305_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_merged_bit_select_in = shiftValueCloseAll_uid116_block_rsrvd_fix_q[5:0];
    assign leftShiftStageSel0Dto4_uid305_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_merged_bit_select_b = leftShiftStageSel0Dto4_uid305_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_merged_bit_select_in[5:4];
    assign leftShiftStageSel0Dto4_uid305_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_merged_bit_select_c = leftShiftStageSel0Dto4_uid305_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_merged_bit_select_in[3:2];
    assign leftShiftStageSel0Dto4_uid305_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_merged_bit_select_d = leftShiftStageSel0Dto4_uid305_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_merged_bit_select_in[1:0];

    // leftShiftStage2_uid328_fracPostNorm_closePathExt_uid118_block_rsrvd_fix(MUX,327)@7
    assign leftShiftStage2_uid328_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_s = leftShiftStageSel0Dto4_uid305_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_merged_bit_select_d;
    always @(leftShiftStage2_uid328_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_s or leftShiftStage1_uid317_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_q or leftShiftStage2Idx1_uid320_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_q or leftShiftStage2Idx2_uid323_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_q or leftShiftStage2Idx3_uid326_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_q)
    begin
        unique case (leftShiftStage2_uid328_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_s)
            2'b00 : leftShiftStage2_uid328_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_q = leftShiftStage1_uid317_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_q;
            2'b01 : leftShiftStage2_uid328_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_q = leftShiftStage2Idx1_uid320_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_q;
            2'b10 : leftShiftStage2_uid328_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_q = leftShiftStage2Idx2_uid323_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_q;
            2'b11 : leftShiftStage2_uid328_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_q = leftShiftStage2Idx3_uid326_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_q;
            default : leftShiftStage2_uid328_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_q = 56'b0;
        endcase
    end

    // shiftedOut_uid295_fracPostNorm_closePathExt_uid118_block_rsrvd_fix(COMPARE,294)@7
    assign shiftedOut_uid295_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_a = {2'b00, shiftValueCloseAll_uid116_block_rsrvd_fix_q};
    assign shiftedOut_uid295_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_b = {7'b0000000, cAmA_uid120_block_rsrvd_fix_q};
    assign shiftedOut_uid295_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_o = $unsigned(shiftedOut_uid295_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_a) - $unsigned(shiftedOut_uid295_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_b);
    assign shiftedOut_uid295_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_n[0] = ~ (shiftedOut_uid295_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_o[12]);

    // r_uid330_fracPostNorm_closePathExt_uid118_block_rsrvd_fix(MUX,329)@7
    assign r_uid330_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_s = shiftedOut_uid295_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_n;
    always @(r_uid330_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_s or leftShiftStage2_uid328_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_q or zeroOutCst_uid329_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_q)
    begin
        unique case (r_uid330_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_s)
            1'b0 : r_uid330_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_q = leftShiftStage2_uid328_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_q;
            1'b1 : r_uid330_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_q = zeroOutCst_uid329_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_q;
            default : r_uid330_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_q = 56'b0;
        endcase
    end

    // fracPostNorm_closePath_uid119_block_rsrvd_fix(BITSELECT,118)@7
    assign fracPostNorm_closePath_uid119_block_rsrvd_fix_in = r_uid330_fracPostNorm_closePathExt_uid118_block_rsrvd_fix_q[54:0];
    assign fracPostNorm_closePath_uid119_block_rsrvd_fix_b = fracPostNorm_closePath_uid119_block_rsrvd_fix_in[54:2];

    // lsb2BitsClosePath_uid202_block_rsrvd_fix(BITSELECT,201)@7
    assign lsb2BitsClosePath_uid202_block_rsrvd_fix_in = fracPostNorm_closePath_uid119_block_rsrvd_fix_b[1:0];
    assign lsb2BitsClosePath_uid202_block_rsrvd_fix_b = lsb2BitsClosePath_uid202_block_rsrvd_fix_in[1:0];

    // IrndVal_close_uid203_block_rsrvd_fix(LOGICAL,202)@7 + 1
    assign IrndVal_close_uid203_block_rsrvd_fix_qi = $unsigned(lsb2BitsClosePath_uid202_block_rsrvd_fix_b == oneOnTwoBits_uid154_block_rsrvd_fix_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    IrndVal_close_uid203_block_rsrvd_fix_delay ( .xin(IrndVal_close_uid203_block_rsrvd_fix_qi), .xout(IrndVal_close_uid203_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // rndVal_close_uid204_block_rsrvd_fix(LOGICAL,203)@8
    assign rndVal_close_uid204_block_rsrvd_fix_q = ~ (IrndVal_close_uid203_block_rsrvd_fix_q);

    // cst2On3Bits_uid198_block_rsrvd_fix(CONSTANT,197)
    assign cst2On3Bits_uid198_block_rsrvd_fix_q = $unsigned(3'b010);

    // padConst_uid133_block_rsrvd_fix(CONSTANT,132)
    assign padConst_uid133_block_rsrvd_fix_q = $unsigned(55'b0000000000000000000000000000000000000000000000000000000);

    // rightPaddedIn_uid134_block_rsrvd_fix(BITJOIN,133)@3
    assign rightPaddedIn_uid134_block_rsrvd_fix_q = {oFracBREXC2S_uid79_block_rsrvd_fix_b, padConst_uid133_block_rsrvd_fix_q};

    // xMSB_uid332_alignmentShifter_uid133_block_rsrvd_fix(BITSELECT,331)@3
    assign xMSB_uid332_alignmentShifter_uid133_block_rsrvd_fix_b = $unsigned(rightPaddedIn_uid134_block_rsrvd_fix_q[110:110]);

    // seMsb_to48_uid361(BITSELECT,360)@3
    assign seMsb_to48_uid361_in = $unsigned({{47{xMSB_uid332_alignmentShifter_uid133_block_rsrvd_fix_b[0]}}, xMSB_uid332_alignmentShifter_uid133_block_rsrvd_fix_b});
    assign seMsb_to48_uid361_b = $unsigned(seMsb_to48_uid361_in[47:0]);

    // rightShiftStage2Idx3Rng48_uid362_alignmentShifter_uid133_block_rsrvd_fix(BITSELECT,361)@3
    assign rightShiftStage2Idx3Rng48_uid362_alignmentShifter_uid133_block_rsrvd_fix_b = $unsigned(rightShiftStage1_uid354_alignmentShifter_uid133_block_rsrvd_fix_q[110:48]);

    // rightShiftStage2Idx3_uid363_alignmentShifter_uid133_block_rsrvd_fix(BITJOIN,362)@3
    assign rightShiftStage2Idx3_uid363_alignmentShifter_uid133_block_rsrvd_fix_q = {seMsb_to48_uid361_b, rightShiftStage2Idx3Rng48_uid362_alignmentShifter_uid133_block_rsrvd_fix_b};

    // seMsb_to32_uid358(BITSELECT,357)@3
    assign seMsb_to32_uid358_in = $unsigned({{31{xMSB_uid332_alignmentShifter_uid133_block_rsrvd_fix_b[0]}}, xMSB_uid332_alignmentShifter_uid133_block_rsrvd_fix_b});
    assign seMsb_to32_uid358_b = $unsigned(seMsb_to32_uid358_in[31:0]);

    // rightShiftStage2Idx2Rng32_uid359_alignmentShifter_uid133_block_rsrvd_fix(BITSELECT,358)@3
    assign rightShiftStage2Idx2Rng32_uid359_alignmentShifter_uid133_block_rsrvd_fix_b = $unsigned(rightShiftStage1_uid354_alignmentShifter_uid133_block_rsrvd_fix_q[110:32]);

    // rightShiftStage2Idx2_uid360_alignmentShifter_uid133_block_rsrvd_fix(BITJOIN,359)@3
    assign rightShiftStage2Idx2_uid360_alignmentShifter_uid133_block_rsrvd_fix_q = {seMsb_to32_uid358_b, rightShiftStage2Idx2Rng32_uid359_alignmentShifter_uid133_block_rsrvd_fix_b};

    // seMsb_to16_uid355(BITSELECT,354)@3
    assign seMsb_to16_uid355_in = $unsigned({{15{xMSB_uid332_alignmentShifter_uid133_block_rsrvd_fix_b[0]}}, xMSB_uid332_alignmentShifter_uid133_block_rsrvd_fix_b});
    assign seMsb_to16_uid355_b = $unsigned(seMsb_to16_uid355_in[15:0]);

    // rightShiftStage2Idx1Rng16_uid356_alignmentShifter_uid133_block_rsrvd_fix(BITSELECT,355)@3
    assign rightShiftStage2Idx1Rng16_uid356_alignmentShifter_uid133_block_rsrvd_fix_b = $unsigned(rightShiftStage1_uid354_alignmentShifter_uid133_block_rsrvd_fix_q[110:16]);

    // rightShiftStage2Idx1_uid357_alignmentShifter_uid133_block_rsrvd_fix(BITJOIN,356)@3
    assign rightShiftStage2Idx1_uid357_alignmentShifter_uid133_block_rsrvd_fix_q = {seMsb_to16_uid355_b, rightShiftStage2Idx1Rng16_uid356_alignmentShifter_uid133_block_rsrvd_fix_b};

    // seMsb_to12_uid350(BITSELECT,349)@3
    assign seMsb_to12_uid350_in = $unsigned({{11{xMSB_uid332_alignmentShifter_uid133_block_rsrvd_fix_b[0]}}, xMSB_uid332_alignmentShifter_uid133_block_rsrvd_fix_b});
    assign seMsb_to12_uid350_b = $unsigned(seMsb_to12_uid350_in[11:0]);

    // rightShiftStage1Idx3Rng12_uid351_alignmentShifter_uid133_block_rsrvd_fix(BITSELECT,350)@3
    assign rightShiftStage1Idx3Rng12_uid351_alignmentShifter_uid133_block_rsrvd_fix_b = $unsigned(rightShiftStage0_uid343_alignmentShifter_uid133_block_rsrvd_fix_q[110:12]);

    // rightShiftStage1Idx3_uid352_alignmentShifter_uid133_block_rsrvd_fix(BITJOIN,351)@3
    assign rightShiftStage1Idx3_uid352_alignmentShifter_uid133_block_rsrvd_fix_q = {seMsb_to12_uid350_b, rightShiftStage1Idx3Rng12_uid351_alignmentShifter_uid133_block_rsrvd_fix_b};

    // seMsb_to8_uid347(BITSELECT,346)@3
    assign seMsb_to8_uid347_in = $unsigned({{7{xMSB_uid332_alignmentShifter_uid133_block_rsrvd_fix_b[0]}}, xMSB_uid332_alignmentShifter_uid133_block_rsrvd_fix_b});
    assign seMsb_to8_uid347_b = $unsigned(seMsb_to8_uid347_in[7:0]);

    // rightShiftStage1Idx2Rng8_uid348_alignmentShifter_uid133_block_rsrvd_fix(BITSELECT,347)@3
    assign rightShiftStage1Idx2Rng8_uid348_alignmentShifter_uid133_block_rsrvd_fix_b = $unsigned(rightShiftStage0_uid343_alignmentShifter_uid133_block_rsrvd_fix_q[110:8]);

    // rightShiftStage1Idx2_uid349_alignmentShifter_uid133_block_rsrvd_fix(BITJOIN,348)@3
    assign rightShiftStage1Idx2_uid349_alignmentShifter_uid133_block_rsrvd_fix_q = {seMsb_to8_uid347_b, rightShiftStage1Idx2Rng8_uid348_alignmentShifter_uid133_block_rsrvd_fix_b};

    // seMsb_to4_uid344(BITSELECT,343)@3
    assign seMsb_to4_uid344_in = $unsigned({{3{xMSB_uid332_alignmentShifter_uid133_block_rsrvd_fix_b[0]}}, xMSB_uid332_alignmentShifter_uid133_block_rsrvd_fix_b});
    assign seMsb_to4_uid344_b = $unsigned(seMsb_to4_uid344_in[3:0]);

    // rightShiftStage1Idx1Rng4_uid345_alignmentShifter_uid133_block_rsrvd_fix(BITSELECT,344)@3
    assign rightShiftStage1Idx1Rng4_uid345_alignmentShifter_uid133_block_rsrvd_fix_b = $unsigned(rightShiftStage0_uid343_alignmentShifter_uid133_block_rsrvd_fix_q[110:4]);

    // rightShiftStage1Idx1_uid346_alignmentShifter_uid133_block_rsrvd_fix(BITJOIN,345)@3
    assign rightShiftStage1Idx1_uid346_alignmentShifter_uid133_block_rsrvd_fix_q = {seMsb_to4_uid344_b, rightShiftStage1Idx1Rng4_uid345_alignmentShifter_uid133_block_rsrvd_fix_b};

    // seMsb_to3_uid339(BITSELECT,338)@3
    assign seMsb_to3_uid339_in = $unsigned({{2{xMSB_uid332_alignmentShifter_uid133_block_rsrvd_fix_b[0]}}, xMSB_uid332_alignmentShifter_uid133_block_rsrvd_fix_b});
    assign seMsb_to3_uid339_b = $unsigned(seMsb_to3_uid339_in[2:0]);

    // rightShiftStage0Idx3Rng3_uid340_alignmentShifter_uid133_block_rsrvd_fix(BITSELECT,339)@3
    assign rightShiftStage0Idx3Rng3_uid340_alignmentShifter_uid133_block_rsrvd_fix_b = $unsigned(rightPaddedIn_uid134_block_rsrvd_fix_q[110:3]);

    // rightShiftStage0Idx3_uid341_alignmentShifter_uid133_block_rsrvd_fix(BITJOIN,340)@3
    assign rightShiftStage0Idx3_uid341_alignmentShifter_uid133_block_rsrvd_fix_q = {seMsb_to3_uid339_b, rightShiftStage0Idx3Rng3_uid340_alignmentShifter_uid133_block_rsrvd_fix_b};

    // seMsb_to2_uid336(BITSELECT,335)@3
    assign seMsb_to2_uid336_in = $unsigned({{1{xMSB_uid332_alignmentShifter_uid133_block_rsrvd_fix_b[0]}}, xMSB_uid332_alignmentShifter_uid133_block_rsrvd_fix_b});
    assign seMsb_to2_uid336_b = $unsigned(seMsb_to2_uid336_in[1:0]);

    // rightShiftStage0Idx2Rng2_uid337_alignmentShifter_uid133_block_rsrvd_fix(BITSELECT,336)@3
    assign rightShiftStage0Idx2Rng2_uid337_alignmentShifter_uid133_block_rsrvd_fix_b = $unsigned(rightPaddedIn_uid134_block_rsrvd_fix_q[110:2]);

    // rightShiftStage0Idx2_uid338_alignmentShifter_uid133_block_rsrvd_fix(BITJOIN,337)@3
    assign rightShiftStage0Idx2_uid338_alignmentShifter_uid133_block_rsrvd_fix_q = {seMsb_to2_uid336_b, rightShiftStage0Idx2Rng2_uid337_alignmentShifter_uid133_block_rsrvd_fix_b};

    // rightShiftStage0Idx1Rng1_uid334_alignmentShifter_uid133_block_rsrvd_fix(BITSELECT,333)@3
    assign rightShiftStage0Idx1Rng1_uid334_alignmentShifter_uid133_block_rsrvd_fix_b = $unsigned(rightPaddedIn_uid134_block_rsrvd_fix_q[110:1]);

    // rightShiftStage0Idx1_uid335_alignmentShifter_uid133_block_rsrvd_fix(BITJOIN,334)@3
    assign rightShiftStage0Idx1_uid335_alignmentShifter_uid133_block_rsrvd_fix_q = {xMSB_uid332_alignmentShifter_uid133_block_rsrvd_fix_b, rightShiftStage0Idx1Rng1_uid334_alignmentShifter_uid133_block_rsrvd_fix_b};

    // rightShiftStage0_uid343_alignmentShifter_uid133_block_rsrvd_fix(MUX,342)@3
    assign rightShiftStage0_uid343_alignmentShifter_uid133_block_rsrvd_fix_s = rightShiftStageSel0Dto0_uid342_alignmentShifter_uid133_block_rsrvd_fix_merged_bit_select_b;
    always @(rightShiftStage0_uid343_alignmentShifter_uid133_block_rsrvd_fix_s or rightPaddedIn_uid134_block_rsrvd_fix_q or rightShiftStage0Idx1_uid335_alignmentShifter_uid133_block_rsrvd_fix_q or rightShiftStage0Idx2_uid338_alignmentShifter_uid133_block_rsrvd_fix_q or rightShiftStage0Idx3_uid341_alignmentShifter_uid133_block_rsrvd_fix_q)
    begin
        unique case (rightShiftStage0_uid343_alignmentShifter_uid133_block_rsrvd_fix_s)
            2'b00 : rightShiftStage0_uid343_alignmentShifter_uid133_block_rsrvd_fix_q = rightPaddedIn_uid134_block_rsrvd_fix_q;
            2'b01 : rightShiftStage0_uid343_alignmentShifter_uid133_block_rsrvd_fix_q = rightShiftStage0Idx1_uid335_alignmentShifter_uid133_block_rsrvd_fix_q;
            2'b10 : rightShiftStage0_uid343_alignmentShifter_uid133_block_rsrvd_fix_q = rightShiftStage0Idx2_uid338_alignmentShifter_uid133_block_rsrvd_fix_q;
            2'b11 : rightShiftStage0_uid343_alignmentShifter_uid133_block_rsrvd_fix_q = rightShiftStage0Idx3_uid341_alignmentShifter_uid133_block_rsrvd_fix_q;
            default : rightShiftStage0_uid343_alignmentShifter_uid133_block_rsrvd_fix_q = 111'b0;
        endcase
    end

    // rightShiftStage1_uid354_alignmentShifter_uid133_block_rsrvd_fix(MUX,353)@3
    assign rightShiftStage1_uid354_alignmentShifter_uid133_block_rsrvd_fix_s = rightShiftStageSel0Dto0_uid342_alignmentShifter_uid133_block_rsrvd_fix_merged_bit_select_c;
    always @(rightShiftStage1_uid354_alignmentShifter_uid133_block_rsrvd_fix_s or rightShiftStage0_uid343_alignmentShifter_uid133_block_rsrvd_fix_q or rightShiftStage1Idx1_uid346_alignmentShifter_uid133_block_rsrvd_fix_q or rightShiftStage1Idx2_uid349_alignmentShifter_uid133_block_rsrvd_fix_q or rightShiftStage1Idx3_uid352_alignmentShifter_uid133_block_rsrvd_fix_q)
    begin
        unique case (rightShiftStage1_uid354_alignmentShifter_uid133_block_rsrvd_fix_s)
            2'b00 : rightShiftStage1_uid354_alignmentShifter_uid133_block_rsrvd_fix_q = rightShiftStage0_uid343_alignmentShifter_uid133_block_rsrvd_fix_q;
            2'b01 : rightShiftStage1_uid354_alignmentShifter_uid133_block_rsrvd_fix_q = rightShiftStage1Idx1_uid346_alignmentShifter_uid133_block_rsrvd_fix_q;
            2'b10 : rightShiftStage1_uid354_alignmentShifter_uid133_block_rsrvd_fix_q = rightShiftStage1Idx2_uid349_alignmentShifter_uid133_block_rsrvd_fix_q;
            2'b11 : rightShiftStage1_uid354_alignmentShifter_uid133_block_rsrvd_fix_q = rightShiftStage1Idx3_uid352_alignmentShifter_uid133_block_rsrvd_fix_q;
            default : rightShiftStage1_uid354_alignmentShifter_uid133_block_rsrvd_fix_q = 111'b0;
        endcase
    end

    // shiftOutConst_uid126_block_rsrvd_fix(CONSTANT,125)
    assign shiftOutConst_uid126_block_rsrvd_fix_q = $unsigned(6'b110111);

    // expAmExpBm1_uid128_block_rsrvd_fix(SUB,127)@2
    assign expAmExpBm1_uid128_block_rsrvd_fix_a = $unsigned({{2{expAmExpB_uid68_block_rsrvd_fix_q[11]}}, expAmExpB_uid68_block_rsrvd_fix_q});
    assign expAmExpBm1_uid128_block_rsrvd_fix_b = $unsigned({13'b0000000000000, VCC_q});
    assign expAmExpBm1_uid128_block_rsrvd_fix_o = $unsigned($signed(expAmExpBm1_uid128_block_rsrvd_fix_a) - $signed(expAmExpBm1_uid128_block_rsrvd_fix_b));
    assign expAmExpBm1_uid128_block_rsrvd_fix_q = expAmExpBm1_uid128_block_rsrvd_fix_o[12:0];

    // expAmExpBm1RangeShift_uid129_block_rsrvd_fix(BITSELECT,128)@2
    assign expAmExpBm1RangeShift_uid129_block_rsrvd_fix_in = expAmExpBm1_uid128_block_rsrvd_fix_q[5:0];
    assign expAmExpBm1RangeShift_uid129_block_rsrvd_fix_b = expAmExpBm1RangeShift_uid129_block_rsrvd_fix_in[5:0];

    // expAmExpBRangeShift_uid130_block_rsrvd_fix(BITSELECT,129)@2
    assign expAmExpBRangeShift_uid130_block_rsrvd_fix_in = expAmExpB_uid68_block_rsrvd_fix_q[5:0];
    assign expAmExpBRangeShift_uid130_block_rsrvd_fix_b = expAmExpBRangeShift_uid130_block_rsrvd_fix_in[5:0];

    // shiftValue_farPathPreSat_uid131_block_rsrvd_fix(MUX,130)@2
    assign shiftValue_farPathPreSat_uid131_block_rsrvd_fix_s = aNormalBSubnormal_uid88_block_rsrvd_fix_q;
    always @(shiftValue_farPathPreSat_uid131_block_rsrvd_fix_s or expAmExpBRangeShift_uid130_block_rsrvd_fix_b or expAmExpBm1RangeShift_uid129_block_rsrvd_fix_b)
    begin
        unique case (shiftValue_farPathPreSat_uid131_block_rsrvd_fix_s)
            1'b0 : shiftValue_farPathPreSat_uid131_block_rsrvd_fix_q = expAmExpBRangeShift_uid130_block_rsrvd_fix_b;
            1'b1 : shiftValue_farPathPreSat_uid131_block_rsrvd_fix_q = expAmExpBm1RangeShift_uid129_block_rsrvd_fix_b;
            default : shiftValue_farPathPreSat_uid131_block_rsrvd_fix_q = 6'b0;
        endcase
    end

    // cWFP2_uid123_block_rsrvd_fix(CONSTANT,122)
    assign cWFP2_uid123_block_rsrvd_fix_q = $unsigned(6'b110110);

    // shiftedOut_uid125_block_rsrvd_fix(COMPARE,124)@2
    assign shiftedOut_uid125_block_rsrvd_fix_a = {8'b00000000, cWFP2_uid123_block_rsrvd_fix_q};
    assign shiftedOut_uid125_block_rsrvd_fix_b = {2'b00, expAmExpB_uid68_block_rsrvd_fix_q};
    assign shiftedOut_uid125_block_rsrvd_fix_o = $unsigned(shiftedOut_uid125_block_rsrvd_fix_a) - $unsigned(shiftedOut_uid125_block_rsrvd_fix_b);
    assign shiftedOut_uid125_block_rsrvd_fix_c[0] = shiftedOut_uid125_block_rsrvd_fix_o[13];

    // shiftValue_farPath_uid132_block_rsrvd_fix(MUX,131)@2 + 1
    assign shiftValue_farPath_uid132_block_rsrvd_fix_s = shiftedOut_uid125_block_rsrvd_fix_c;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            shiftValue_farPath_uid132_block_rsrvd_fix_q <= 6'b0;
        end
        else
        begin
            unique case (shiftValue_farPath_uid132_block_rsrvd_fix_s)
                1'b0 : shiftValue_farPath_uid132_block_rsrvd_fix_q <= shiftValue_farPathPreSat_uid131_block_rsrvd_fix_q;
                1'b1 : shiftValue_farPath_uid132_block_rsrvd_fix_q <= shiftOutConst_uid126_block_rsrvd_fix_q;
                default : shiftValue_farPath_uid132_block_rsrvd_fix_q <= 6'b0;
            endcase
        end
    end

    // rightShiftStageSel0Dto0_uid342_alignmentShifter_uid133_block_rsrvd_fix_merged_bit_select(BITSELECT,367)@3
    assign rightShiftStageSel0Dto0_uid342_alignmentShifter_uid133_block_rsrvd_fix_merged_bit_select_b = shiftValue_farPath_uid132_block_rsrvd_fix_q[1:0];
    assign rightShiftStageSel0Dto0_uid342_alignmentShifter_uid133_block_rsrvd_fix_merged_bit_select_c = shiftValue_farPath_uid132_block_rsrvd_fix_q[3:2];
    assign rightShiftStageSel0Dto0_uid342_alignmentShifter_uid133_block_rsrvd_fix_merged_bit_select_d = shiftValue_farPath_uid132_block_rsrvd_fix_q[5:4];

    // rightShiftStage2_uid365_alignmentShifter_uid133_block_rsrvd_fix(MUX,364)@3
    assign rightShiftStage2_uid365_alignmentShifter_uid133_block_rsrvd_fix_s = rightShiftStageSel0Dto0_uid342_alignmentShifter_uid133_block_rsrvd_fix_merged_bit_select_d;
    always @(rightShiftStage2_uid365_alignmentShifter_uid133_block_rsrvd_fix_s or rightShiftStage1_uid354_alignmentShifter_uid133_block_rsrvd_fix_q or rightShiftStage2Idx1_uid357_alignmentShifter_uid133_block_rsrvd_fix_q or rightShiftStage2Idx2_uid360_alignmentShifter_uid133_block_rsrvd_fix_q or rightShiftStage2Idx3_uid363_alignmentShifter_uid133_block_rsrvd_fix_q)
    begin
        unique case (rightShiftStage2_uid365_alignmentShifter_uid133_block_rsrvd_fix_s)
            2'b00 : rightShiftStage2_uid365_alignmentShifter_uid133_block_rsrvd_fix_q = rightShiftStage1_uid354_alignmentShifter_uid133_block_rsrvd_fix_q;
            2'b01 : rightShiftStage2_uid365_alignmentShifter_uid133_block_rsrvd_fix_q = rightShiftStage2Idx1_uid357_alignmentShifter_uid133_block_rsrvd_fix_q;
            2'b10 : rightShiftStage2_uid365_alignmentShifter_uid133_block_rsrvd_fix_q = rightShiftStage2Idx2_uid360_alignmentShifter_uid133_block_rsrvd_fix_q;
            2'b11 : rightShiftStage2_uid365_alignmentShifter_uid133_block_rsrvd_fix_q = rightShiftStage2Idx3_uid363_alignmentShifter_uid133_block_rsrvd_fix_q;
            default : rightShiftStage2_uid365_alignmentShifter_uid133_block_rsrvd_fix_q = 111'b0;
        endcase
    end

    // highBBits_uid139_block_rsrvd_fix(BITSELECT,138)@3
    assign highBBits_uid139_block_rsrvd_fix_b = $unsigned(rightShiftStage2_uid365_alignmentShifter_uid133_block_rsrvd_fix_q[110:55]);

    // redist16_highBBits_uid139_block_rsrvd_fix_b_1(DELAY,389)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist16_highBBits_uid139_block_rsrvd_fix_b_1_q <= '0;
        end
        else
        begin
            redist16_highBBits_uid139_block_rsrvd_fix_b_1_q <= $unsigned(highBBits_uid139_block_rsrvd_fix_b);
        end
    end

    // redist21_oFracAE_uid74_block_rsrvd_fix_q_1(DELAY,394)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist21_oFracAE_uid74_block_rsrvd_fix_q_1_q <= '0;
        end
        else
        begin
            redist21_oFracAE_uid74_block_rsrvd_fix_q_1_q <= $unsigned(oFracAE_uid74_block_rsrvd_fix_q);
        end
    end

    // fracAddResult_farPathsumAHighB_uid140_block_rsrvd_fix(ADD,139)@4 + 1
    assign fracAddResult_farPathsumAHighB_uid140_block_rsrvd_fix_a = $unsigned({{1{redist21_oFracAE_uid74_block_rsrvd_fix_q_1_q[55]}}, redist21_oFracAE_uid74_block_rsrvd_fix_q_1_q});
    assign fracAddResult_farPathsumAHighB_uid140_block_rsrvd_fix_b = $unsigned({{1{redist16_highBBits_uid139_block_rsrvd_fix_b_1_q[55]}}, redist16_highBBits_uid139_block_rsrvd_fix_b_1_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            fracAddResult_farPathsumAHighB_uid140_block_rsrvd_fix_o <= 57'b0;
        end
        else
        begin
            fracAddResult_farPathsumAHighB_uid140_block_rsrvd_fix_o <= $unsigned($signed(fracAddResult_farPathsumAHighB_uid140_block_rsrvd_fix_a) + $signed(fracAddResult_farPathsumAHighB_uid140_block_rsrvd_fix_b));
        end
    end
    assign fracAddResult_farPathsumAHighB_uid140_block_rsrvd_fix_q = fracAddResult_farPathsumAHighB_uid140_block_rsrvd_fix_o[56:0];

    // lowRangeB_uid138_block_rsrvd_fix(BITSELECT,137)@3
    assign lowRangeB_uid138_block_rsrvd_fix_in = rightShiftStage2_uid365_alignmentShifter_uid133_block_rsrvd_fix_q[54:0];
    assign lowRangeB_uid138_block_rsrvd_fix_b = lowRangeB_uid138_block_rsrvd_fix_in[54:0];

    // redist17_lowRangeB_uid138_block_rsrvd_fix_b_2(DELAY,390)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist17_lowRangeB_uid138_block_rsrvd_fix_b_2_delay_0 <= '0;
            redist17_lowRangeB_uid138_block_rsrvd_fix_b_2_q <= '0;
        end
        else
        begin
            redist17_lowRangeB_uid138_block_rsrvd_fix_b_2_delay_0 <= $unsigned(lowRangeB_uid138_block_rsrvd_fix_b);
            redist17_lowRangeB_uid138_block_rsrvd_fix_b_2_q <= redist17_lowRangeB_uid138_block_rsrvd_fix_b_2_delay_0;
        end
    end

    // fracAddResult_farPath_uid141_block_rsrvd_fix(BITJOIN,140)@5
    assign fracAddResult_farPath_uid141_block_rsrvd_fix_q = {fracAddResult_farPathsumAHighB_uid140_block_rsrvd_fix_q, redist17_lowRangeB_uid138_block_rsrvd_fix_b_2_q};

    // fracPostNorm_farPath11_uid161_block_rsrvd_fix(BITSELECT,160)@5
    assign fracPostNorm_farPath11_uid161_block_rsrvd_fix_in = fracAddResult_farPath_uid141_block_rsrvd_fix_q[109:0];
    assign fracPostNorm_farPath11_uid161_block_rsrvd_fix_b = fracPostNorm_farPath11_uid161_block_rsrvd_fix_in[109:57];

    // fracPostNorm_farPath01_uid165_block_rsrvd_fix(BITSELECT,164)@5
    assign fracPostNorm_farPath01_uid165_block_rsrvd_fix_in = fracAddResult_farPath_uid141_block_rsrvd_fix_q[108:0];
    assign fracPostNorm_farPath01_uid165_block_rsrvd_fix_b = fracPostNorm_farPath01_uid165_block_rsrvd_fix_in[108:56];

    // fracPostNorm_farPath00_uid167_block_rsrvd_fix(BITSELECT,166)@5
    assign fracPostNorm_farPath00_uid167_block_rsrvd_fix_in = fracAddResult_farPath_uid141_block_rsrvd_fix_q[107:0];
    assign fracPostNorm_farPath00_uid167_block_rsrvd_fix_b = fracPostNorm_farPath00_uid167_block_rsrvd_fix_in[107:55];

    // normBits_farPath_uid144_block_rsrvd_fix(BITSELECT,143)@5
    assign normBits_farPath_uid144_block_rsrvd_fix_in = fracAddResult_farPath_uid141_block_rsrvd_fix_q[110:0];
    assign normBits_farPath_uid144_block_rsrvd_fix_b = normBits_farPath_uid144_block_rsrvd_fix_in[110:109];

    // normBits_farPathInternal1_uid145_block_rsrvd_fix_merged_bit_select(BITSELECT,368)@5
    assign normBits_farPathInternal1_uid145_block_rsrvd_fix_merged_bit_select_b = $unsigned(normBits_farPath_uid144_block_rsrvd_fix_b[1:1]);
    assign normBits_farPathInternal1_uid145_block_rsrvd_fix_merged_bit_select_c = $unsigned(normBits_farPath_uid144_block_rsrvd_fix_b[0:0]);

    // invNormBits_farPathInternal1_uid146_block_rsrvd_fix(LOGICAL,145)@5
    assign invNormBits_farPathInternal1_uid146_block_rsrvd_fix_q = ~ (normBits_farPathInternal1_uid145_block_rsrvd_fix_merged_bit_select_b);

    // invNormBits_farPathInternal0_uid148_block_rsrvd_fix(LOGICAL,147)@5
    assign invNormBits_farPathInternal0_uid148_block_rsrvd_fix_q = ~ (normBits_farPathInternal1_uid145_block_rsrvd_fix_merged_bit_select_c);

    // bZeroOrSubnorm_uid73_block_rsrvd_fix(LOGICAL,72)@5
    assign bZeroOrSubnorm_uid73_block_rsrvd_fix_q = redist38_excZ_bSig_uid45_block_rsrvd_fix_q_3_q | redist32_excS_bSig_uid51_block_rsrvd_fix_q_3_q;

    // aAndBSubnormalsAndSubnormalRes_uid149_block_rsrvd_fix(LOGICAL,148)@5
    assign aAndBSubnormalsAndSubnormalRes_uid149_block_rsrvd_fix_q = aZeroOrSubnorm_uid72_block_rsrvd_fix_q & bZeroOrSubnorm_uid73_block_rsrvd_fix_q & invNormBits_farPathInternal0_uid148_block_rsrvd_fix_q & invNormBits_farPathInternal1_uid146_block_rsrvd_fix_q;

    // normBits_farPathRnd_uid155_block_rsrvd_fix(MUX,154)@5
    assign normBits_farPathRnd_uid155_block_rsrvd_fix_s = aAndBSubnormalsAndSubnormalRes_uid149_block_rsrvd_fix_q;
    always @(normBits_farPathRnd_uid155_block_rsrvd_fix_s or normBits_farPath_uid144_block_rsrvd_fix_b or oneOnTwoBits_uid154_block_rsrvd_fix_q)
    begin
        unique case (normBits_farPathRnd_uid155_block_rsrvd_fix_s)
            1'b0 : normBits_farPathRnd_uid155_block_rsrvd_fix_q = normBits_farPath_uid144_block_rsrvd_fix_b;
            1'b1 : normBits_farPathRnd_uid155_block_rsrvd_fix_q = oneOnTwoBits_uid154_block_rsrvd_fix_q;
            default : normBits_farPathRnd_uid155_block_rsrvd_fix_q = 2'b0;
        endcase
    end

    // fracPostNorm_farPath_uid169_block_rsrvd_fix(MUX,168)@5
    assign fracPostNorm_farPath_uid169_block_rsrvd_fix_s = normBits_farPathRnd_uid155_block_rsrvd_fix_q;
    always @(fracPostNorm_farPath_uid169_block_rsrvd_fix_s or fracPostNorm_farPath00_uid167_block_rsrvd_fix_b or fracPostNorm_farPath01_uid165_block_rsrvd_fix_b or fracPostNorm_farPath11_uid161_block_rsrvd_fix_b)
    begin
        unique case (fracPostNorm_farPath_uid169_block_rsrvd_fix_s)
            2'b00 : fracPostNorm_farPath_uid169_block_rsrvd_fix_q = fracPostNorm_farPath00_uid167_block_rsrvd_fix_b;
            2'b01 : fracPostNorm_farPath_uid169_block_rsrvd_fix_q = fracPostNorm_farPath01_uid165_block_rsrvd_fix_b;
            2'b10 : fracPostNorm_farPath_uid169_block_rsrvd_fix_q = fracPostNorm_farPath11_uid161_block_rsrvd_fix_b;
            2'b11 : fracPostNorm_farPath_uid169_block_rsrvd_fix_q = fracPostNorm_farPath11_uid161_block_rsrvd_fix_b;
            default : fracPostNorm_farPath_uid169_block_rsrvd_fix_q = 53'b0;
        endcase
    end

    // lBit_uid196_block_rsrvd_fix(BITSELECT,195)@5
    assign lBit_uid196_block_rsrvd_fix_in = $unsigned(fracPostNorm_farPath_uid169_block_rsrvd_fix_q[1:0]);
    assign lBit_uid196_block_rsrvd_fix_b = $unsigned(lBit_uid196_block_rsrvd_fix_in[1:1]);

    // r11_uid182_block_rsrvd_fix(BITSELECT,181)@5
    assign r11_uid182_block_rsrvd_fix_in = fracAddResult_farPath_uid141_block_rsrvd_fix_q[57:0];
    assign r11_uid182_block_rsrvd_fix_b = r11_uid182_block_rsrvd_fix_in[57:57];

    // r01_uid186_block_rsrvd_fix(BITSELECT,185)@5
    assign r01_uid186_block_rsrvd_fix_in = fracAddResult_farPath_uid141_block_rsrvd_fix_q[56:0];
    assign r01_uid186_block_rsrvd_fix_b = r01_uid186_block_rsrvd_fix_in[56:56];

    // extra01_uid176_block_rsrvd_fix(BITSELECT,175)@5
    assign extra01_uid176_block_rsrvd_fix_in = fracAddResult_farPath_uid141_block_rsrvd_fix_q[55:0];
    assign extra01_uid176_block_rsrvd_fix_b = extra01_uid176_block_rsrvd_fix_in[55:55];

    // rBit_uid190_block_rsrvd_fix(MUX,189)@5
    assign rBit_uid190_block_rsrvd_fix_s = normBits_farPathRnd_uid155_block_rsrvd_fix_q;
    always @(rBit_uid190_block_rsrvd_fix_s or extra01_uid176_block_rsrvd_fix_b or r01_uid186_block_rsrvd_fix_b or r11_uid182_block_rsrvd_fix_b)
    begin
        unique case (rBit_uid190_block_rsrvd_fix_s)
            2'b00 : rBit_uid190_block_rsrvd_fix_q = extra01_uid176_block_rsrvd_fix_b;
            2'b01 : rBit_uid190_block_rsrvd_fix_q = r01_uid186_block_rsrvd_fix_b;
            2'b10 : rBit_uid190_block_rsrvd_fix_q = r11_uid182_block_rsrvd_fix_b;
            2'b11 : rBit_uid190_block_rsrvd_fix_q = r11_uid182_block_rsrvd_fix_b;
            default : rBit_uid190_block_rsrvd_fix_q = 1'b0;
        endcase
    end

    // stickyTemp_uid142_block_rsrvd_fix(BITSELECT,141)@5
    assign stickyTemp_uid142_block_rsrvd_fix_in = fracAddResult_farPath_uid141_block_rsrvd_fix_q[54:0];
    assign stickyTemp_uid142_block_rsrvd_fix_b = stickyTemp_uid142_block_rsrvd_fix_in[54:0];

    // stickyPreMux_uid143_block_rsrvd_fix(LOGICAL,142)@5
    assign stickyPreMux_uid143_block_rsrvd_fix_q = $unsigned(stickyTemp_uid142_block_rsrvd_fix_b != 55'b0000000000000000000000000000000000000000000000000000000 ? 1'b1 : 1'b0);

    // extra11_uid172_block_rsrvd_fix(BITSELECT,171)@5
    assign extra11_uid172_block_rsrvd_fix_in = fracAddResult_farPath_uid141_block_rsrvd_fix_q[56:0];
    assign extra11_uid172_block_rsrvd_fix_b = extra11_uid172_block_rsrvd_fix_in[56:55];

    // m01_uid177_block_rsrvd_fix(BITJOIN,176)@5
    assign m01_uid177_block_rsrvd_fix_q = {extra01_uid176_block_rsrvd_fix_b, GND_q};

    // stickyExtraBits_uid179_block_rsrvd_fix(MUX,178)@5
    assign stickyExtraBits_uid179_block_rsrvd_fix_s = normBits_farPathRnd_uid155_block_rsrvd_fix_q;
    always @(stickyExtraBits_uid179_block_rsrvd_fix_s or cst2zeros_uid170_block_rsrvd_fix_q or m01_uid177_block_rsrvd_fix_q or extra11_uid172_block_rsrvd_fix_b)
    begin
        unique case (stickyExtraBits_uid179_block_rsrvd_fix_s)
            2'b00 : stickyExtraBits_uid179_block_rsrvd_fix_q = cst2zeros_uid170_block_rsrvd_fix_q;
            2'b01 : stickyExtraBits_uid179_block_rsrvd_fix_q = m01_uid177_block_rsrvd_fix_q;
            2'b10 : stickyExtraBits_uid179_block_rsrvd_fix_q = extra11_uid172_block_rsrvd_fix_b;
            2'b11 : stickyExtraBits_uid179_block_rsrvd_fix_q = extra11_uid172_block_rsrvd_fix_b;
            default : stickyExtraBits_uid179_block_rsrvd_fix_q = 2'b0;
        endcase
    end

    // stickyAllBits_uid180_block_rsrvd_fix(BITJOIN,179)@5
    assign stickyAllBits_uid180_block_rsrvd_fix_q = {stickyPreMux_uid143_block_rsrvd_fix_q, stickyExtraBits_uid179_block_rsrvd_fix_q};

    // sticky_uid181_block_rsrvd_fix(LOGICAL,180)@5
    assign sticky_uid181_block_rsrvd_fix_q = $unsigned(stickyAllBits_uid180_block_rsrvd_fix_q != 3'b000 ? 1'b1 : 1'b0);

    // concBits_uid197_block_rsrvd_fix(BITJOIN,196)@5
    assign concBits_uid197_block_rsrvd_fix_q = {lBit_uid196_block_rsrvd_fix_b, rBit_uid190_block_rsrvd_fix_q, sticky_uid181_block_rsrvd_fix_q};

    // IrndVal_uid199_block_rsrvd_fix(LOGICAL,198)@5 + 1
    assign IrndVal_uid199_block_rsrvd_fix_qi = $unsigned(concBits_uid197_block_rsrvd_fix_q == cst2On3Bits_uid198_block_rsrvd_fix_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    IrndVal_uid199_block_rsrvd_fix_delay ( .xin(IrndVal_uid199_block_rsrvd_fix_qi), .xout(IrndVal_uid199_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist13_IrndVal_uid199_block_rsrvd_fix_q_3(DELAY,386)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_IrndVal_uid199_block_rsrvd_fix_q_3_delay_0 <= '0;
            redist13_IrndVal_uid199_block_rsrvd_fix_q_3_q <= '0;
        end
        else
        begin
            redist13_IrndVal_uid199_block_rsrvd_fix_q_3_delay_0 <= $unsigned(IrndVal_uid199_block_rsrvd_fix_q);
            redist13_IrndVal_uid199_block_rsrvd_fix_q_3_q <= redist13_IrndVal_uid199_block_rsrvd_fix_q_3_delay_0;
        end
    end

    // rndVal_far_uid200_block_rsrvd_fix(LOGICAL,199)@8
    assign rndVal_far_uid200_block_rsrvd_fix_q = ~ (redist13_IrndVal_uid199_block_rsrvd_fix_q_3_q);

    // redist23_closePath_uid71_block_rsrvd_fix_q_1(DELAY,396)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist23_closePath_uid71_block_rsrvd_fix_q_1_q <= '0;
        end
        else
        begin
            redist23_closePath_uid71_block_rsrvd_fix_q_1_q <= $unsigned(closePath_uid71_block_rsrvd_fix_q);
        end
    end

    // redist24_closePath_uid71_block_rsrvd_fix_q_2(DELAY,397)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist24_closePath_uid71_block_rsrvd_fix_q_2_q <= '0;
        end
        else
        begin
            redist24_closePath_uid71_block_rsrvd_fix_q_2_q <= $unsigned(redist23_closePath_uid71_block_rsrvd_fix_q_1_q);
        end
    end

    // rndValue_uid211_block_rsrvd_fix(MUX,210)@8
    assign rndValue_uid211_block_rsrvd_fix_s = redist24_closePath_uid71_block_rsrvd_fix_q_2_q;
    always @(rndValue_uid211_block_rsrvd_fix_s or rndVal_far_uid200_block_rsrvd_fix_q or rndVal_close_uid204_block_rsrvd_fix_q)
    begin
        unique case (rndValue_uid211_block_rsrvd_fix_s)
            1'b0 : rndValue_uid211_block_rsrvd_fix_q = rndVal_far_uid200_block_rsrvd_fix_q;
            1'b1 : rndValue_uid211_block_rsrvd_fix_q = rndVal_close_uid204_block_rsrvd_fix_q;
            default : rndValue_uid211_block_rsrvd_fix_q = 1'b0;
        endcase
    end

    // expValueClosePath_Case11_uid98_block_rsrvd_fix(BITSELECT,97)@6
    assign expValueClosePath_Case11_uid98_block_rsrvd_fix_in = expAP1_uid97_block_rsrvd_fix_q[10:0];
    assign expValueClosePath_Case11_uid98_block_rsrvd_fix_b = expValueClosePath_Case11_uid98_block_rsrvd_fix_in[10:0];

    // case11Exponent_uid107_block_rsrvd_fix(LOGICAL,106)@6
    assign case11Exponent_uid107_block_rsrvd_fix_b = $unsigned({{10{case11_uid104_block_rsrvd_fix_q[0]}}, case11_uid104_block_rsrvd_fix_q});
    assign case11Exponent_uid107_block_rsrvd_fix_q = expValueClosePath_Case11_uid98_block_rsrvd_fix_b & case11Exponent_uid107_block_rsrvd_fix_b;

    // expValueClosePathExt_uid109_block_rsrvd_fix(LOGICAL,108)@6 + 1
    assign expValueClosePathExt_uid109_block_rsrvd_fix_qi = case0Exponent_uid106_block_rsrvd_fix_q | case11Exponent_uid107_block_rsrvd_fix_q | case12Exponent_uid108_block_rsrvd_fix_q;
    dspba_delay_ver #( .width(11), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    expValueClosePathExt_uid109_block_rsrvd_fix_delay ( .xin(expValueClosePathExt_uid109_block_rsrvd_fix_qi), .xout(expValueClosePathExt_uid109_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // countValue_farPath00_uid194_block_rsrvd_fix(CONSTANT,193)
    assign countValue_farPath00_uid194_block_rsrvd_fix_q = $unsigned(11'b00000000010);

    // threeOnTwoBits_uid157_block_rsrvd_fix(CONSTANT,156)
    assign threeOnTwoBits_uid157_block_rsrvd_fix_q = $unsigned(2'b11);

    // aAndBSubnormalsAndNormalRes_uid153_block_rsrvd_fix(LOGICAL,152)@5
    assign aAndBSubnormalsAndNormalRes_uid153_block_rsrvd_fix_q = aZeroOrSubnorm_uid72_block_rsrvd_fix_q & bZeroOrSubnorm_uid73_block_rsrvd_fix_q & normBits_farPathInternal1_uid145_block_rsrvd_fix_merged_bit_select_c & invNormBits_farPathInternal1_uid146_block_rsrvd_fix_q;

    // aAndBSubnormalCst_uid159_block_rsrvd_fix(MUX,158)@5
    assign aAndBSubnormalCst_uid159_block_rsrvd_fix_s = aAndBSubnormalsAndNormalRes_uid153_block_rsrvd_fix_q;
    always @(aAndBSubnormalCst_uid159_block_rsrvd_fix_s or oneOnTwoBits_uid154_block_rsrvd_fix_q or threeOnTwoBits_uid157_block_rsrvd_fix_q)
    begin
        unique case (aAndBSubnormalCst_uid159_block_rsrvd_fix_s)
            1'b0 : aAndBSubnormalCst_uid159_block_rsrvd_fix_q = oneOnTwoBits_uid154_block_rsrvd_fix_q;
            1'b1 : aAndBSubnormalCst_uid159_block_rsrvd_fix_q = threeOnTwoBits_uid157_block_rsrvd_fix_q;
            default : aAndBSubnormalCst_uid159_block_rsrvd_fix_q = 2'b0;
        endcase
    end

    // aAndBSubnormal_uid156_block_rsrvd_fix(LOGICAL,155)@5
    assign aAndBSubnormal_uid156_block_rsrvd_fix_q = aZeroOrSubnorm_uid72_block_rsrvd_fix_q & bZeroOrSubnorm_uid73_block_rsrvd_fix_q;

    // normBits_farPathCnt_uid160_block_rsrvd_fix(MUX,159)@5 + 1
    assign normBits_farPathCnt_uid160_block_rsrvd_fix_s = aAndBSubnormal_uid156_block_rsrvd_fix_q;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            normBits_farPathCnt_uid160_block_rsrvd_fix_q <= 2'b0;
        end
        else
        begin
            unique case (normBits_farPathCnt_uid160_block_rsrvd_fix_s)
                1'b0 : normBits_farPathCnt_uid160_block_rsrvd_fix_q <= normBits_farPath_uid144_block_rsrvd_fix_b;
                1'b1 : normBits_farPathCnt_uid160_block_rsrvd_fix_q <= aAndBSubnormalCst_uid159_block_rsrvd_fix_q;
                default : normBits_farPathCnt_uid160_block_rsrvd_fix_q <= 2'b0;
            endcase
        end
    end

    // redist15_normBits_farPathCnt_uid160_block_rsrvd_fix_q_2(DELAY,388)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist15_normBits_farPathCnt_uid160_block_rsrvd_fix_q_2_q <= '0;
        end
        else
        begin
            redist15_normBits_farPathCnt_uid160_block_rsrvd_fix_q_2_q <= $unsigned(normBits_farPathCnt_uid160_block_rsrvd_fix_q);
        end
    end

    // countValue_farPath_uid195_block_rsrvd_fix(MUX,194)@7
    assign countValue_farPath_uid195_block_rsrvd_fix_s = redist15_normBits_farPathCnt_uid160_block_rsrvd_fix_q_2_q;
    always @(countValue_farPath_uid195_block_rsrvd_fix_s or countValue_farPath00_uid194_block_rsrvd_fix_q or expValueClosePath_Case0_uid96_block_rsrvd_fix_q or cstAllZWE_uid21_block_rsrvd_fix_q)
    begin
        unique case (countValue_farPath_uid195_block_rsrvd_fix_s)
            2'b00 : countValue_farPath_uid195_block_rsrvd_fix_q = countValue_farPath00_uid194_block_rsrvd_fix_q;
            2'b01 : countValue_farPath_uid195_block_rsrvd_fix_q = expValueClosePath_Case0_uid96_block_rsrvd_fix_q;
            2'b10 : countValue_farPath_uid195_block_rsrvd_fix_q = cstAllZWE_uid21_block_rsrvd_fix_q;
            2'b11 : countValue_farPath_uid195_block_rsrvd_fix_q = cstAllZWE_uid21_block_rsrvd_fix_q;
            default : countValue_farPath_uid195_block_rsrvd_fix_q = 11'b0;
        endcase
    end

    // countValue_uid205_block_rsrvd_fix(MUX,204)@7
    assign countValue_uid205_block_rsrvd_fix_s = redist23_closePath_uid71_block_rsrvd_fix_q_1_q;
    always @(countValue_uid205_block_rsrvd_fix_s or countValue_farPath_uid195_block_rsrvd_fix_q or expValueClosePathExt_uid109_block_rsrvd_fix_q)
    begin
        unique case (countValue_uid205_block_rsrvd_fix_s)
            1'b0 : countValue_uid205_block_rsrvd_fix_q = countValue_farPath_uid195_block_rsrvd_fix_q;
            1'b1 : countValue_uid205_block_rsrvd_fix_q = expValueClosePathExt_uid109_block_rsrvd_fix_q;
            default : countValue_uid205_block_rsrvd_fix_q = 11'b0;
        endcase
    end

    // redist18_expAP1_uid97_block_rsrvd_fix_q_2(DELAY,391)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist18_expAP1_uid97_block_rsrvd_fix_q_2_q <= '0;
        end
        else
        begin
            redist18_expAP1_uid97_block_rsrvd_fix_q_2_q <= $unsigned(expAP1_uid97_block_rsrvd_fix_q);
        end
    end

    // expPostNorm_uid207_block_rsrvd_fix(SUB,206)@7 + 1
    assign expPostNorm_uid207_block_rsrvd_fix_a = {1'b0, redist18_expAP1_uid97_block_rsrvd_fix_q_2_q};
    assign expPostNorm_uid207_block_rsrvd_fix_b = {2'b00, countValue_uid205_block_rsrvd_fix_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            expPostNorm_uid207_block_rsrvd_fix_o <= 13'b0;
        end
        else
        begin
            expPostNorm_uid207_block_rsrvd_fix_o <= $unsigned(expPostNorm_uid207_block_rsrvd_fix_a) - $unsigned(expPostNorm_uid207_block_rsrvd_fix_b);
        end
    end
    assign expPostNorm_uid207_block_rsrvd_fix_q = expPostNorm_uid207_block_rsrvd_fix_o[12:0];

    // redist14_fracPostNorm_farPath_uid169_block_rsrvd_fix_q_2(DELAY,387)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_fracPostNorm_farPath_uid169_block_rsrvd_fix_q_2_delay_0 <= '0;
            redist14_fracPostNorm_farPath_uid169_block_rsrvd_fix_q_2_q <= '0;
        end
        else
        begin
            redist14_fracPostNorm_farPath_uid169_block_rsrvd_fix_q_2_delay_0 <= $unsigned(fracPostNorm_farPath_uid169_block_rsrvd_fix_q);
            redist14_fracPostNorm_farPath_uid169_block_rsrvd_fix_q_2_q <= redist14_fracPostNorm_farPath_uid169_block_rsrvd_fix_q_2_delay_0;
        end
    end

    // fracPostNormPreRnd_uid210_block_rsrvd_fix(MUX,209)@7 + 1
    assign fracPostNormPreRnd_uid210_block_rsrvd_fix_s = redist23_closePath_uid71_block_rsrvd_fix_q_1_q;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            fracPostNormPreRnd_uid210_block_rsrvd_fix_q <= 53'b0;
        end
        else
        begin
            unique case (fracPostNormPreRnd_uid210_block_rsrvd_fix_s)
                1'b0 : fracPostNormPreRnd_uid210_block_rsrvd_fix_q <= redist14_fracPostNorm_farPath_uid169_block_rsrvd_fix_q_2_q;
                1'b1 : fracPostNormPreRnd_uid210_block_rsrvd_fix_q <= fracPostNorm_closePath_uid119_block_rsrvd_fix_b;
                default : fracPostNormPreRnd_uid210_block_rsrvd_fix_q <= 53'b0;
            endcase
        end
    end

    // countValFracPostNorm_uid212_block_rsrvd_fix(BITJOIN,211)@8
    assign countValFracPostNorm_uid212_block_rsrvd_fix_q = {expPostNorm_uid207_block_rsrvd_fix_q, fracPostNormPreRnd_uid210_block_rsrvd_fix_q};

    // countValFracPostRnd_uid213_block_rsrvd_fix(ADD,212)@8
    assign countValFracPostRnd_uid213_block_rsrvd_fix_a = {1'b0, countValFracPostNorm_uid212_block_rsrvd_fix_q};
    assign countValFracPostRnd_uid213_block_rsrvd_fix_b = {66'b000000000000000000000000000000000000000000000000000000000000000000, rndValue_uid211_block_rsrvd_fix_q};
    assign countValFracPostRnd_uid213_block_rsrvd_fix_o = $unsigned(countValFracPostRnd_uid213_block_rsrvd_fix_a) + $unsigned(countValFracPostRnd_uid213_block_rsrvd_fix_b);
    assign countValFracPostRnd_uid213_block_rsrvd_fix_q = countValFracPostRnd_uid213_block_rsrvd_fix_o[66:0];

    // countValue_uid214_block_rsrvd_fix(BITSELECT,213)@8
    assign countValue_uid214_block_rsrvd_fix_in = $unsigned(countValFracPostRnd_uid213_block_rsrvd_fix_q[65:0]);
    assign countValue_uid214_block_rsrvd_fix_b = $unsigned(countValue_uid214_block_rsrvd_fix_in[65:53]);

    // redist12_countValue_uid214_block_rsrvd_fix_b_1(DELAY,385)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_countValue_uid214_block_rsrvd_fix_b_1_q <= '0;
        end
        else
        begin
            redist12_countValue_uid214_block_rsrvd_fix_b_1_q <= $unsigned(countValue_uid214_block_rsrvd_fix_b);
        end
    end

    // expRPreExc_uid220_block_rsrvd_fix(BITSELECT,219)@9
    assign expRPreExc_uid220_block_rsrvd_fix_in = redist12_countValue_uid214_block_rsrvd_fix_b_1_q[10:0];
    assign expRPreExc_uid220_block_rsrvd_fix_b = expRPreExc_uid220_block_rsrvd_fix_in[10:0];

    // redist10_expRPreExc_uid220_block_rsrvd_fix_b_1(DELAY,383)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_expRPreExc_uid220_block_rsrvd_fix_b_1_q <= '0;
        end
        else
        begin
            redist10_expRPreExc_uid220_block_rsrvd_fix_b_1_q <= $unsigned(expRPreExc_uid220_block_rsrvd_fix_b);
        end
    end

    // wEP2AllOwE_uid216_block_rsrvd_fix(CONSTANT,215)
    assign wEP2AllOwE_uid216_block_rsrvd_fix_q = $unsigned(13'b0011111111111);

    // rOvf_uid218_block_rsrvd_fix(COMPARE,217)@9
    assign rOvf_uid218_block_rsrvd_fix_a = $unsigned({{3{redist12_countValue_uid214_block_rsrvd_fix_b_1_q[12]}}, redist12_countValue_uid214_block_rsrvd_fix_b_1_q});
    assign rOvf_uid218_block_rsrvd_fix_b = $unsigned({3'b000, wEP2AllOwE_uid216_block_rsrvd_fix_q});
    assign rOvf_uid218_block_rsrvd_fix_o = $unsigned($signed(rOvf_uid218_block_rsrvd_fix_a) - $signed(rOvf_uid218_block_rsrvd_fix_b));
    assign rOvf_uid218_block_rsrvd_fix_n[0] = ~ (rOvf_uid218_block_rsrvd_fix_o[15]);

    // regInputs_uid221_block_rsrvd_fix(LOGICAL,220)@6 + 1
    assign regInputs_uid221_block_rsrvd_fix_qi = excR_aSig_uid33_block_rsrvd_fix_q & redist34_excR_bSig_uid50_block_rsrvd_fix_q_4_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    regInputs_uid221_block_rsrvd_fix_delay ( .xin(regInputs_uid221_block_rsrvd_fix_qi), .xout(regInputs_uid221_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist9_regInputs_uid221_block_rsrvd_fix_q_3(DELAY,382)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_regInputs_uid221_block_rsrvd_fix_q_3_delay_0 <= '0;
            redist9_regInputs_uid221_block_rsrvd_fix_q_3_q <= '0;
        end
        else
        begin
            redist9_regInputs_uid221_block_rsrvd_fix_q_3_delay_0 <= $unsigned(regInputs_uid221_block_rsrvd_fix_q);
            redist9_regInputs_uid221_block_rsrvd_fix_q_3_q <= redist9_regInputs_uid221_block_rsrvd_fix_q_3_delay_0;
        end
    end

    // rInfOvf_uid224_block_rsrvd_fix(LOGICAL,223)@9
    assign rInfOvf_uid224_block_rsrvd_fix_q = redist9_regInputs_uid221_block_rsrvd_fix_q_3_q & rOvf_uid218_block_rsrvd_fix_n;

    // excRInfVInC_uid225_block_rsrvd_fix(BITJOIN,224)@9
    assign excRInfVInC_uid225_block_rsrvd_fix_q = {rInfOvf_uid224_block_rsrvd_fix_q, redist35_excN_bSig_uid47_block_rsrvd_fix_q_7_q, redist43_excN_aSig_uid30_block_rsrvd_fix_q_4_q, redist37_excI_bSig_uid46_block_rsrvd_fix_q_7_q, redist44_excI_aSig_uid29_block_rsrvd_fix_q_4_q, redist27_effSub_uid59_block_rsrvd_fix_q_7_q};

    // excRInf_uid226_block_rsrvd_fix(LOOKUP,225)@9
    always @(excRInfVInC_uid225_block_rsrvd_fix_q)
    begin
        // Begin reserved scope level
        unique case (excRInfVInC_uid225_block_rsrvd_fix_q)
            6'b000000 : excRInf_uid226_block_rsrvd_fix_q = 1'b0;
            6'b000001 : excRInf_uid226_block_rsrvd_fix_q = 1'b0;
            6'b000010 : excRInf_uid226_block_rsrvd_fix_q = 1'b1;
            6'b000011 : excRInf_uid226_block_rsrvd_fix_q = 1'b1;
            6'b000100 : excRInf_uid226_block_rsrvd_fix_q = 1'b1;
            6'b000101 : excRInf_uid226_block_rsrvd_fix_q = 1'b1;
            6'b000110 : excRInf_uid226_block_rsrvd_fix_q = 1'b1;
            6'b000111 : excRInf_uid226_block_rsrvd_fix_q = 1'b0;
            6'b001000 : excRInf_uid226_block_rsrvd_fix_q = 1'b0;
            6'b001001 : excRInf_uid226_block_rsrvd_fix_q = 1'b0;
            6'b001010 : excRInf_uid226_block_rsrvd_fix_q = 1'b0;
            6'b001011 : excRInf_uid226_block_rsrvd_fix_q = 1'b0;
            6'b001100 : excRInf_uid226_block_rsrvd_fix_q = 1'b0;
            6'b001101 : excRInf_uid226_block_rsrvd_fix_q = 1'b0;
            6'b001110 : excRInf_uid226_block_rsrvd_fix_q = 1'b0;
            6'b001111 : excRInf_uid226_block_rsrvd_fix_q = 1'b0;
            6'b010000 : excRInf_uid226_block_rsrvd_fix_q = 1'b0;
            6'b010001 : excRInf_uid226_block_rsrvd_fix_q = 1'b0;
            6'b010010 : excRInf_uid226_block_rsrvd_fix_q = 1'b0;
            6'b010011 : excRInf_uid226_block_rsrvd_fix_q = 1'b0;
            6'b010100 : excRInf_uid226_block_rsrvd_fix_q = 1'b0;
            6'b010101 : excRInf_uid226_block_rsrvd_fix_q = 1'b0;
            6'b010110 : excRInf_uid226_block_rsrvd_fix_q = 1'b0;
            6'b010111 : excRInf_uid226_block_rsrvd_fix_q = 1'b0;
            6'b011000 : excRInf_uid226_block_rsrvd_fix_q = 1'b0;
            6'b011001 : excRInf_uid226_block_rsrvd_fix_q = 1'b0;
            6'b011010 : excRInf_uid226_block_rsrvd_fix_q = 1'b0;
            6'b011011 : excRInf_uid226_block_rsrvd_fix_q = 1'b0;
            6'b011100 : excRInf_uid226_block_rsrvd_fix_q = 1'b0;
            6'b011101 : excRInf_uid226_block_rsrvd_fix_q = 1'b0;
            6'b011110 : excRInf_uid226_block_rsrvd_fix_q = 1'b0;
            6'b011111 : excRInf_uid226_block_rsrvd_fix_q = 1'b0;
            6'b100000 : excRInf_uid226_block_rsrvd_fix_q = 1'b1;
            6'b100001 : excRInf_uid226_block_rsrvd_fix_q = 1'b0;
            6'b100010 : excRInf_uid226_block_rsrvd_fix_q = 1'b0;
            6'b100011 : excRInf_uid226_block_rsrvd_fix_q = 1'b0;
            6'b100100 : excRInf_uid226_block_rsrvd_fix_q = 1'b0;
            6'b100101 : excRInf_uid226_block_rsrvd_fix_q = 1'b0;
            6'b100110 : excRInf_uid226_block_rsrvd_fix_q = 1'b0;
            6'b100111 : excRInf_uid226_block_rsrvd_fix_q = 1'b0;
            6'b101000 : excRInf_uid226_block_rsrvd_fix_q = 1'b0;
            6'b101001 : excRInf_uid226_block_rsrvd_fix_q = 1'b0;
            6'b101010 : excRInf_uid226_block_rsrvd_fix_q = 1'b0;
            6'b101011 : excRInf_uid226_block_rsrvd_fix_q = 1'b0;
            6'b101100 : excRInf_uid226_block_rsrvd_fix_q = 1'b0;
            6'b101101 : excRInf_uid226_block_rsrvd_fix_q = 1'b0;
            6'b101110 : excRInf_uid226_block_rsrvd_fix_q = 1'b0;
            6'b101111 : excRInf_uid226_block_rsrvd_fix_q = 1'b0;
            6'b110000 : excRInf_uid226_block_rsrvd_fix_q = 1'b0;
            6'b110001 : excRInf_uid226_block_rsrvd_fix_q = 1'b0;
            6'b110010 : excRInf_uid226_block_rsrvd_fix_q = 1'b0;
            6'b110011 : excRInf_uid226_block_rsrvd_fix_q = 1'b0;
            6'b110100 : excRInf_uid226_block_rsrvd_fix_q = 1'b0;
            6'b110101 : excRInf_uid226_block_rsrvd_fix_q = 1'b0;
            6'b110110 : excRInf_uid226_block_rsrvd_fix_q = 1'b0;
            6'b110111 : excRInf_uid226_block_rsrvd_fix_q = 1'b0;
            6'b111000 : excRInf_uid226_block_rsrvd_fix_q = 1'b0;
            6'b111001 : excRInf_uid226_block_rsrvd_fix_q = 1'b0;
            6'b111010 : excRInf_uid226_block_rsrvd_fix_q = 1'b0;
            6'b111011 : excRInf_uid226_block_rsrvd_fix_q = 1'b0;
            6'b111100 : excRInf_uid226_block_rsrvd_fix_q = 1'b0;
            6'b111101 : excRInf_uid226_block_rsrvd_fix_q = 1'b0;
            6'b111110 : excRInf_uid226_block_rsrvd_fix_q = 1'b0;
            6'b111111 : excRInf_uid226_block_rsrvd_fix_q = 1'b0;
            default : begin
                          // unreachable
                          excRInf_uid226_block_rsrvd_fix_q = 1'bx;
                      end
        endcase
        // End reserved scope level
    end

    // excRZeroVInC_uid222_block_rsrvd_fix(BITJOIN,221)@6
    assign excRZeroVInC_uid222_block_rsrvd_fix_q = {aMinusA_uid122_block_rsrvd_fix_q, redist39_excZ_bSig_uid45_block_rsrvd_fix_q_4_q, redist45_excZ_aSig_uid28_block_rsrvd_fix_q_2_q};

    // excRZero_uid223_block_rsrvd_fix(LOOKUP,222)@6 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            excRZero_uid223_block_rsrvd_fix_q <= $unsigned(1'b0);
        end
        else
        begin
            unique case (excRZeroVInC_uid222_block_rsrvd_fix_q)
                3'b000 : excRZero_uid223_block_rsrvd_fix_q <= 1'b0;
                3'b001 : excRZero_uid223_block_rsrvd_fix_q <= 1'b0;
                3'b010 : excRZero_uid223_block_rsrvd_fix_q <= 1'b0;
                3'b011 : excRZero_uid223_block_rsrvd_fix_q <= 1'b1;
                3'b100 : excRZero_uid223_block_rsrvd_fix_q <= 1'b1;
                3'b101 : excRZero_uid223_block_rsrvd_fix_q <= 1'b1;
                3'b110 : excRZero_uid223_block_rsrvd_fix_q <= 1'b1;
                3'b111 : excRZero_uid223_block_rsrvd_fix_q <= 1'b1;
                default : begin
                              // unreachable
                              excRZero_uid223_block_rsrvd_fix_q <= 1'bx;
                          end
            endcase
        end
    end

    // redist8_excRZero_uid223_block_rsrvd_fix_q_3(DELAY,381)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_excRZero_uid223_block_rsrvd_fix_q_3_delay_0 <= '0;
            redist8_excRZero_uid223_block_rsrvd_fix_q_3_q <= '0;
        end
        else
        begin
            redist8_excRZero_uid223_block_rsrvd_fix_q_3_delay_0 <= $unsigned(excRZero_uid223_block_rsrvd_fix_q);
            redist8_excRZero_uid223_block_rsrvd_fix_q_3_q <= redist8_excRZero_uid223_block_rsrvd_fix_q_3_delay_0;
        end
    end

    // concExc_uid230_block_rsrvd_fix(BITJOIN,229)@9
    assign concExc_uid230_block_rsrvd_fix_q = {excRNaN_uid229_block_rsrvd_fix_q, excRInf_uid226_block_rsrvd_fix_q, redist8_excRZero_uid223_block_rsrvd_fix_q_3_q};

    // excREnc_uid231_block_rsrvd_fix(LOOKUP,230)@9 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            excREnc_uid231_block_rsrvd_fix_q <= $unsigned(2'b01);
        end
        else
        begin
            unique case (concExc_uid230_block_rsrvd_fix_q)
                3'b000 : excREnc_uid231_block_rsrvd_fix_q <= 2'b01;
                3'b001 : excREnc_uid231_block_rsrvd_fix_q <= 2'b00;
                3'b010 : excREnc_uid231_block_rsrvd_fix_q <= 2'b10;
                3'b011 : excREnc_uid231_block_rsrvd_fix_q <= 2'b10;
                3'b100 : excREnc_uid231_block_rsrvd_fix_q <= 2'b11;
                3'b101 : excREnc_uid231_block_rsrvd_fix_q <= 2'b11;
                3'b110 : excREnc_uid231_block_rsrvd_fix_q <= 2'b11;
                3'b111 : excREnc_uid231_block_rsrvd_fix_q <= 2'b11;
                default : begin
                              // unreachable
                              excREnc_uid231_block_rsrvd_fix_q <= 2'bxx;
                          end
            endcase
        end
    end

    // expRPostExc_uid252_block_rsrvd_fix(MUX,251)@10
    assign expRPostExc_uid252_block_rsrvd_fix_s = excREnc_uid231_block_rsrvd_fix_q;
    always @(expRPostExc_uid252_block_rsrvd_fix_s or cstAllZWE_uid21_block_rsrvd_fix_q or redist10_expRPreExc_uid220_block_rsrvd_fix_b_1_q or cstAllOWE_uid19_block_rsrvd_fix_q)
    begin
        unique case (expRPostExc_uid252_block_rsrvd_fix_s)
            2'b00 : expRPostExc_uid252_block_rsrvd_fix_q = cstAllZWE_uid21_block_rsrvd_fix_q;
            2'b01 : expRPostExc_uid252_block_rsrvd_fix_q = redist10_expRPreExc_uid220_block_rsrvd_fix_b_1_q;
            2'b10 : expRPostExc_uid252_block_rsrvd_fix_q = cstAllOWE_uid19_block_rsrvd_fix_q;
            2'b11 : expRPostExc_uid252_block_rsrvd_fix_q = cstAllOWE_uid19_block_rsrvd_fix_q;
            default : expRPostExc_uid252_block_rsrvd_fix_q = 11'b0;
        endcase
    end

    // oneFracRPostExc2_uid245_block_rsrvd_fix(CONSTANT,244)
    assign oneFracRPostExc2_uid245_block_rsrvd_fix_q = $unsigned(52'b0000000000000000000000000000000000000000000000000001);

    // fracValue_uid215_block_rsrvd_fix(BITSELECT,214)@8
    assign fracValue_uid215_block_rsrvd_fix_in = countValFracPostRnd_uid213_block_rsrvd_fix_q[52:0];
    assign fracValue_uid215_block_rsrvd_fix_b = fracValue_uid215_block_rsrvd_fix_in[52:1];

    // redist11_fracValue_uid215_block_rsrvd_fix_b_2(DELAY,384)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_fracValue_uid215_block_rsrvd_fix_b_2_delay_0 <= '0;
            redist11_fracValue_uid215_block_rsrvd_fix_b_2_q <= '0;
        end
        else
        begin
            redist11_fracValue_uid215_block_rsrvd_fix_b_2_delay_0 <= $unsigned(fracValue_uid215_block_rsrvd_fix_b);
            redist11_fracValue_uid215_block_rsrvd_fix_b_2_q <= redist11_fracValue_uid215_block_rsrvd_fix_b_2_delay_0;
        end
    end

    // fracRPostExc_uid248_block_rsrvd_fix(MUX,247)@10
    assign fracRPostExc_uid248_block_rsrvd_fix_s = excREnc_uid231_block_rsrvd_fix_q;
    always @(fracRPostExc_uid248_block_rsrvd_fix_s or cstZeroWF_uid20_block_rsrvd_fix_q or redist11_fracValue_uid215_block_rsrvd_fix_b_2_q or oneFracRPostExc2_uid245_block_rsrvd_fix_q)
    begin
        unique case (fracRPostExc_uid248_block_rsrvd_fix_s)
            2'b00 : fracRPostExc_uid248_block_rsrvd_fix_q = cstZeroWF_uid20_block_rsrvd_fix_q;
            2'b01 : fracRPostExc_uid248_block_rsrvd_fix_q = redist11_fracValue_uid215_block_rsrvd_fix_b_2_q;
            2'b10 : fracRPostExc_uid248_block_rsrvd_fix_q = cstZeroWF_uid20_block_rsrvd_fix_q;
            2'b11 : fracRPostExc_uid248_block_rsrvd_fix_q = oneFracRPostExc2_uid245_block_rsrvd_fix_q;
            default : fracRPostExc_uid248_block_rsrvd_fix_q = 52'b0;
        endcase
    end

    // R_uid253_block_rsrvd_fix(BITJOIN,252)@10
    assign R_uid253_block_rsrvd_fix_q = {signRPostExc_uid244_block_rsrvd_fix_q, expRPostExc_uid252_block_rsrvd_fix_q, fracRPostExc_uid248_block_rsrvd_fix_q};

    // out_primWireOut(GPOUT,5)@10
    assign out_primWireOut = R_uid253_block_rsrvd_fix_q;

endmodule
