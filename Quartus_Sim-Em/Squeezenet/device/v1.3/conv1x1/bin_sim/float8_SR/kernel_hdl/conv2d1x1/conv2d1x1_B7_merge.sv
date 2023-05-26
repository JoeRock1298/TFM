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

// SystemVerilog created from conv2d1x1_B7_merge
// SystemVerilog created on Wed May 24 12:36:13 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2d1x1_B7_merge (
    input wire [31:0] in_c0_exe1753124_0,
    input wire [31:0] in_c0_exe1853225_0,
    input wire [0:0] in_c0_exe1953327_0,
    input wire [0:0] in_c0_exe2053428_0,
    input wire [63:0] in_c0_exe2153529_0,
    input wire [0:0] in_c0_exe351721_0,
    input wire [0:0] in_c0_exe451822_0,
    input wire [31:0] in_c0_exe551923_0,
    input wire [31:0] in_c1_exe1039_0,
    input wire [31:0] in_c1_exe1140_0,
    input wire [31:0] in_c1_exe1241_0,
    input wire [31:0] in_c1_exe1342_0,
    input wire [31:0] in_c1_exe1443_0,
    input wire [31:0] in_c1_exe1544_0,
    input wire [31:0] in_c1_exe159230_0,
    input wire [31:0] in_c1_exe1645_0,
    input wire [31:0] in_c1_exe1746_0,
    input wire [31:0] in_c1_exe1847_0,
    input wire [31:0] in_c1_exe1948_0,
    input wire [31:0] in_c1_exe2049_0,
    input wire [31:0] in_c1_exe2150_0,
    input wire [31:0] in_c1_exe2251_0,
    input wire [31:0] in_c1_exe231_0,
    input wire [31:0] in_c1_exe2352_0,
    input wire [31:0] in_c1_exe2453_0,
    input wire [31:0] in_c1_exe2554_0,
    input wire [31:0] in_c1_exe2655_0,
    input wire [31:0] in_c1_exe2756_0,
    input wire [31:0] in_c1_exe2857_0,
    input wire [31:0] in_c1_exe2958_0,
    input wire [31:0] in_c1_exe3059_0,
    input wire [31:0] in_c1_exe3160_0,
    input wire [31:0] in_c1_exe3261_0,
    input wire [31:0] in_c1_exe332_0,
    input wire [31:0] in_c1_exe3362_0,
    input wire [31:0] in_c1_exe3463_0,
    input wire [31:0] in_c1_exe3564_0,
    input wire [31:0] in_c1_exe3665_0,
    input wire [31:0] in_c1_exe3766_0,
    input wire [31:0] in_c1_exe3867_0,
    input wire [31:0] in_c1_exe3968_0,
    input wire [31:0] in_c1_exe4069_0,
    input wire [31:0] in_c1_exe4170_0,
    input wire [31:0] in_c1_exe4271_0,
    input wire [31:0] in_c1_exe433_0,
    input wire [31:0] in_c1_exe4372_0,
    input wire [31:0] in_c1_exe4473_0,
    input wire [31:0] in_c1_exe4574_0,
    input wire [31:0] in_c1_exe4675_0,
    input wire [31:0] in_c1_exe4776_0,
    input wire [31:0] in_c1_exe4877_0,
    input wire [31:0] in_c1_exe534_0,
    input wire [31:0] in_c1_exe635_0,
    input wire [31:0] in_c1_exe736_0,
    input wire [31:0] in_c1_exe837_0,
    input wire [31:0] in_c1_exe938_0,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_valid_in_0,
    output wire [31:0] out_c0_exe1753124,
    output wire [31:0] out_c0_exe1853225,
    output wire [0:0] out_c0_exe1953327,
    output wire [0:0] out_c0_exe2053428,
    output wire [63:0] out_c0_exe2153529,
    output wire [0:0] out_c0_exe351721,
    output wire [0:0] out_c0_exe451822,
    output wire [31:0] out_c0_exe551923,
    output wire [31:0] out_c1_exe1039,
    output wire [31:0] out_c1_exe1140,
    output wire [31:0] out_c1_exe1241,
    output wire [31:0] out_c1_exe1342,
    output wire [31:0] out_c1_exe1443,
    output wire [31:0] out_c1_exe1544,
    output wire [31:0] out_c1_exe159230,
    output wire [31:0] out_c1_exe1645,
    output wire [31:0] out_c1_exe1746,
    output wire [31:0] out_c1_exe1847,
    output wire [31:0] out_c1_exe1948,
    output wire [31:0] out_c1_exe2049,
    output wire [31:0] out_c1_exe2150,
    output wire [31:0] out_c1_exe2251,
    output wire [31:0] out_c1_exe231,
    output wire [31:0] out_c1_exe2352,
    output wire [31:0] out_c1_exe2453,
    output wire [31:0] out_c1_exe2554,
    output wire [31:0] out_c1_exe2655,
    output wire [31:0] out_c1_exe2756,
    output wire [31:0] out_c1_exe2857,
    output wire [31:0] out_c1_exe2958,
    output wire [31:0] out_c1_exe3059,
    output wire [31:0] out_c1_exe3160,
    output wire [31:0] out_c1_exe3261,
    output wire [31:0] out_c1_exe332,
    output wire [31:0] out_c1_exe3362,
    output wire [31:0] out_c1_exe3463,
    output wire [31:0] out_c1_exe3564,
    output wire [31:0] out_c1_exe3665,
    output wire [31:0] out_c1_exe3766,
    output wire [31:0] out_c1_exe3867,
    output wire [31:0] out_c1_exe3968,
    output wire [31:0] out_c1_exe4069,
    output wire [31:0] out_c1_exe4170,
    output wire [31:0] out_c1_exe4271,
    output wire [31:0] out_c1_exe433,
    output wire [31:0] out_c1_exe4372,
    output wire [31:0] out_c1_exe4473,
    output wire [31:0] out_c1_exe4574,
    output wire [31:0] out_c1_exe4675,
    output wire [31:0] out_c1_exe4776,
    output wire [31:0] out_c1_exe4877,
    output wire [31:0] out_c1_exe534,
    output wire [31:0] out_c1_exe635,
    output wire [31:0] out_c1_exe736,
    output wire [31:0] out_c1_exe837,
    output wire [31:0] out_c1_exe938,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] stall_out_q;


    // out_c0_exe1753124(GPOUT,60)
    assign out_c0_exe1753124 = in_c0_exe1753124_0;

    // out_c0_exe1853225(GPOUT,61)
    assign out_c0_exe1853225 = in_c0_exe1853225_0;

    // out_c0_exe1953327(GPOUT,62)
    assign out_c0_exe1953327 = in_c0_exe1953327_0;

    // out_c0_exe2053428(GPOUT,63)
    assign out_c0_exe2053428 = in_c0_exe2053428_0;

    // out_c0_exe2153529(GPOUT,64)
    assign out_c0_exe2153529 = in_c0_exe2153529_0;

    // out_c0_exe351721(GPOUT,65)
    assign out_c0_exe351721 = in_c0_exe351721_0;

    // out_c0_exe451822(GPOUT,66)
    assign out_c0_exe451822 = in_c0_exe451822_0;

    // out_c0_exe551923(GPOUT,67)
    assign out_c0_exe551923 = in_c0_exe551923_0;

    // out_c1_exe1039(GPOUT,68)
    assign out_c1_exe1039 = in_c1_exe1039_0;

    // out_c1_exe1140(GPOUT,69)
    assign out_c1_exe1140 = in_c1_exe1140_0;

    // out_c1_exe1241(GPOUT,70)
    assign out_c1_exe1241 = in_c1_exe1241_0;

    // out_c1_exe1342(GPOUT,71)
    assign out_c1_exe1342 = in_c1_exe1342_0;

    // out_c1_exe1443(GPOUT,72)
    assign out_c1_exe1443 = in_c1_exe1443_0;

    // out_c1_exe1544(GPOUT,73)
    assign out_c1_exe1544 = in_c1_exe1544_0;

    // out_c1_exe159230(GPOUT,74)
    assign out_c1_exe159230 = in_c1_exe159230_0;

    // out_c1_exe1645(GPOUT,75)
    assign out_c1_exe1645 = in_c1_exe1645_0;

    // out_c1_exe1746(GPOUT,76)
    assign out_c1_exe1746 = in_c1_exe1746_0;

    // out_c1_exe1847(GPOUT,77)
    assign out_c1_exe1847 = in_c1_exe1847_0;

    // out_c1_exe1948(GPOUT,78)
    assign out_c1_exe1948 = in_c1_exe1948_0;

    // out_c1_exe2049(GPOUT,79)
    assign out_c1_exe2049 = in_c1_exe2049_0;

    // out_c1_exe2150(GPOUT,80)
    assign out_c1_exe2150 = in_c1_exe2150_0;

    // out_c1_exe2251(GPOUT,81)
    assign out_c1_exe2251 = in_c1_exe2251_0;

    // out_c1_exe231(GPOUT,82)
    assign out_c1_exe231 = in_c1_exe231_0;

    // out_c1_exe2352(GPOUT,83)
    assign out_c1_exe2352 = in_c1_exe2352_0;

    // out_c1_exe2453(GPOUT,84)
    assign out_c1_exe2453 = in_c1_exe2453_0;

    // out_c1_exe2554(GPOUT,85)
    assign out_c1_exe2554 = in_c1_exe2554_0;

    // out_c1_exe2655(GPOUT,86)
    assign out_c1_exe2655 = in_c1_exe2655_0;

    // out_c1_exe2756(GPOUT,87)
    assign out_c1_exe2756 = in_c1_exe2756_0;

    // out_c1_exe2857(GPOUT,88)
    assign out_c1_exe2857 = in_c1_exe2857_0;

    // out_c1_exe2958(GPOUT,89)
    assign out_c1_exe2958 = in_c1_exe2958_0;

    // out_c1_exe3059(GPOUT,90)
    assign out_c1_exe3059 = in_c1_exe3059_0;

    // out_c1_exe3160(GPOUT,91)
    assign out_c1_exe3160 = in_c1_exe3160_0;

    // out_c1_exe3261(GPOUT,92)
    assign out_c1_exe3261 = in_c1_exe3261_0;

    // out_c1_exe332(GPOUT,93)
    assign out_c1_exe332 = in_c1_exe332_0;

    // out_c1_exe3362(GPOUT,94)
    assign out_c1_exe3362 = in_c1_exe3362_0;

    // out_c1_exe3463(GPOUT,95)
    assign out_c1_exe3463 = in_c1_exe3463_0;

    // out_c1_exe3564(GPOUT,96)
    assign out_c1_exe3564 = in_c1_exe3564_0;

    // out_c1_exe3665(GPOUT,97)
    assign out_c1_exe3665 = in_c1_exe3665_0;

    // out_c1_exe3766(GPOUT,98)
    assign out_c1_exe3766 = in_c1_exe3766_0;

    // out_c1_exe3867(GPOUT,99)
    assign out_c1_exe3867 = in_c1_exe3867_0;

    // out_c1_exe3968(GPOUT,100)
    assign out_c1_exe3968 = in_c1_exe3968_0;

    // out_c1_exe4069(GPOUT,101)
    assign out_c1_exe4069 = in_c1_exe4069_0;

    // out_c1_exe4170(GPOUT,102)
    assign out_c1_exe4170 = in_c1_exe4170_0;

    // out_c1_exe4271(GPOUT,103)
    assign out_c1_exe4271 = in_c1_exe4271_0;

    // out_c1_exe433(GPOUT,104)
    assign out_c1_exe433 = in_c1_exe433_0;

    // out_c1_exe4372(GPOUT,105)
    assign out_c1_exe4372 = in_c1_exe4372_0;

    // out_c1_exe4473(GPOUT,106)
    assign out_c1_exe4473 = in_c1_exe4473_0;

    // out_c1_exe4574(GPOUT,107)
    assign out_c1_exe4574 = in_c1_exe4574_0;

    // out_c1_exe4675(GPOUT,108)
    assign out_c1_exe4675 = in_c1_exe4675_0;

    // out_c1_exe4776(GPOUT,109)
    assign out_c1_exe4776 = in_c1_exe4776_0;

    // out_c1_exe4877(GPOUT,110)
    assign out_c1_exe4877 = in_c1_exe4877_0;

    // out_c1_exe534(GPOUT,111)
    assign out_c1_exe534 = in_c1_exe534_0;

    // out_c1_exe635(GPOUT,112)
    assign out_c1_exe635 = in_c1_exe635_0;

    // out_c1_exe736(GPOUT,113)
    assign out_c1_exe736 = in_c1_exe736_0;

    // out_c1_exe837(GPOUT,114)
    assign out_c1_exe837 = in_c1_exe837_0;

    // out_c1_exe938(GPOUT,115)
    assign out_c1_exe938 = in_c1_exe938_0;

    // stall_out(LOGICAL,118)
    assign stall_out_q = in_valid_in_0 & in_stall_in;

    // out_stall_out_0(GPOUT,116)
    assign out_stall_out_0 = stall_out_q;

    // out_valid_out(GPOUT,117)
    assign out_valid_out = in_valid_in_0;

endmodule
