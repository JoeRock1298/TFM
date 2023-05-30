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

// SystemVerilog created from conv2d3x3_B12_merge
// SystemVerilog created on Tue May 30 12:33:16 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2d3x3_B12_merge (
    input wire [63:0] in_c0_exe1092551_0,
    input wire [63:0] in_c0_exe1392852_0,
    input wire [31:0] in_c0_exe1492953_0,
    input wire [0:0] in_c0_exe1593054_0,
    input wire [31:0] in_c0_exe1693155_0,
    input wire [31:0] in_c0_exe1793256_0,
    input wire [0:0] in_c0_exe1893357_0,
    input wire [0:0] in_c0_exe1993458_0,
    input wire [31:0] in_c0_exe2093559_0,
    input wire [31:0] in_c0_exe2193660_0,
    input wire [0:0] in_c0_exe2293761_0,
    input wire [0:0] in_c0_exe2393862_0,
    input wire [0:0] in_c0_exe2493963_0,
    input wire [31:0] in_c0_exe2594064_0,
    input wire [31:0] in_c0_exe2694165_0,
    input wire [0:0] in_c0_exe2794266_0,
    input wire [31:0] in_c0_exe2894367_0,
    input wire [31:0] in_c0_exe291746_0,
    input wire [31:0] in_c0_exe2994468_0,
    input wire [31:0] in_c0_exe3094569_0,
    input wire [0:0] in_c0_exe3194670_0,
    input wire [63:0] in_c0_exe3394871_0,
    input wire [63:0] in_c0_exe3494972_0,
    input wire [31:0] in_c0_exe3595073_0,
    input wire [0:0] in_c0_exe3695174_0,
    input wire [31:0] in_c0_exe3795275_0,
    input wire [31:0] in_c0_exe3895376_0,
    input wire [31:0] in_c0_exe391847_0,
    input wire [0:0] in_c0_exe3995477_0,
    input wire [0:0] in_c0_exe4095578_0,
    input wire [31:0] in_c0_exe4195679_0,
    input wire [0:0] in_c0_exe4295780_0,
    input wire [0:0] in_c0_exe4395881_0,
    input wire [31:0] in_c0_exe4495982_0,
    input wire [0:0] in_c0_exe4596083_0,
    input wire [0:0] in_c0_exe4696184_0,
    input wire [0:0] in_c0_exe4796285_0,
    input wire [63:0] in_c0_exe4896386_0,
    input wire [63:0] in_c0_exe4996487_0,
    input wire [31:0] in_c0_exe5096588_0,
    input wire [0:0] in_c0_exe5196689_0,
    input wire [0:0] in_c0_exe592048_0,
    input wire [0:0] in_c0_exe692149_0,
    input wire [0:0] in_c0_exe892350_0,
    input wire [31:0] in_c1_exe198390_0,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_valid_in_0,
    output wire [63:0] out_c0_exe1092551,
    output wire [63:0] out_c0_exe1392852,
    output wire [31:0] out_c0_exe1492953,
    output wire [0:0] out_c0_exe1593054,
    output wire [31:0] out_c0_exe1693155,
    output wire [31:0] out_c0_exe1793256,
    output wire [0:0] out_c0_exe1893357,
    output wire [0:0] out_c0_exe1993458,
    output wire [31:0] out_c0_exe2093559,
    output wire [31:0] out_c0_exe2193660,
    output wire [0:0] out_c0_exe2293761,
    output wire [0:0] out_c0_exe2393862,
    output wire [0:0] out_c0_exe2493963,
    output wire [31:0] out_c0_exe2594064,
    output wire [31:0] out_c0_exe2694165,
    output wire [0:0] out_c0_exe2794266,
    output wire [31:0] out_c0_exe2894367,
    output wire [31:0] out_c0_exe291746,
    output wire [31:0] out_c0_exe2994468,
    output wire [31:0] out_c0_exe3094569,
    output wire [0:0] out_c0_exe3194670,
    output wire [63:0] out_c0_exe3394871,
    output wire [63:0] out_c0_exe3494972,
    output wire [31:0] out_c0_exe3595073,
    output wire [0:0] out_c0_exe3695174,
    output wire [31:0] out_c0_exe3795275,
    output wire [31:0] out_c0_exe3895376,
    output wire [31:0] out_c0_exe391847,
    output wire [0:0] out_c0_exe3995477,
    output wire [0:0] out_c0_exe4095578,
    output wire [31:0] out_c0_exe4195679,
    output wire [0:0] out_c0_exe4295780,
    output wire [0:0] out_c0_exe4395881,
    output wire [31:0] out_c0_exe4495982,
    output wire [0:0] out_c0_exe4596083,
    output wire [0:0] out_c0_exe4696184,
    output wire [0:0] out_c0_exe4796285,
    output wire [63:0] out_c0_exe4896386,
    output wire [63:0] out_c0_exe4996487,
    output wire [31:0] out_c0_exe5096588,
    output wire [0:0] out_c0_exe5196689,
    output wire [0:0] out_c0_exe592048,
    output wire [0:0] out_c0_exe692149,
    output wire [0:0] out_c0_exe892350,
    output wire [31:0] out_c1_exe198390,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] stall_out_q;


    // out_c0_exe1092551(GPOUT,49)
    assign out_c0_exe1092551 = in_c0_exe1092551_0;

    // out_c0_exe1392852(GPOUT,50)
    assign out_c0_exe1392852 = in_c0_exe1392852_0;

    // out_c0_exe1492953(GPOUT,51)
    assign out_c0_exe1492953 = in_c0_exe1492953_0;

    // out_c0_exe1593054(GPOUT,52)
    assign out_c0_exe1593054 = in_c0_exe1593054_0;

    // out_c0_exe1693155(GPOUT,53)
    assign out_c0_exe1693155 = in_c0_exe1693155_0;

    // out_c0_exe1793256(GPOUT,54)
    assign out_c0_exe1793256 = in_c0_exe1793256_0;

    // out_c0_exe1893357(GPOUT,55)
    assign out_c0_exe1893357 = in_c0_exe1893357_0;

    // out_c0_exe1993458(GPOUT,56)
    assign out_c0_exe1993458 = in_c0_exe1993458_0;

    // out_c0_exe2093559(GPOUT,57)
    assign out_c0_exe2093559 = in_c0_exe2093559_0;

    // out_c0_exe2193660(GPOUT,58)
    assign out_c0_exe2193660 = in_c0_exe2193660_0;

    // out_c0_exe2293761(GPOUT,59)
    assign out_c0_exe2293761 = in_c0_exe2293761_0;

    // out_c0_exe2393862(GPOUT,60)
    assign out_c0_exe2393862 = in_c0_exe2393862_0;

    // out_c0_exe2493963(GPOUT,61)
    assign out_c0_exe2493963 = in_c0_exe2493963_0;

    // out_c0_exe2594064(GPOUT,62)
    assign out_c0_exe2594064 = in_c0_exe2594064_0;

    // out_c0_exe2694165(GPOUT,63)
    assign out_c0_exe2694165 = in_c0_exe2694165_0;

    // out_c0_exe2794266(GPOUT,64)
    assign out_c0_exe2794266 = in_c0_exe2794266_0;

    // out_c0_exe2894367(GPOUT,65)
    assign out_c0_exe2894367 = in_c0_exe2894367_0;

    // out_c0_exe291746(GPOUT,66)
    assign out_c0_exe291746 = in_c0_exe291746_0;

    // out_c0_exe2994468(GPOUT,67)
    assign out_c0_exe2994468 = in_c0_exe2994468_0;

    // out_c0_exe3094569(GPOUT,68)
    assign out_c0_exe3094569 = in_c0_exe3094569_0;

    // out_c0_exe3194670(GPOUT,69)
    assign out_c0_exe3194670 = in_c0_exe3194670_0;

    // out_c0_exe3394871(GPOUT,70)
    assign out_c0_exe3394871 = in_c0_exe3394871_0;

    // out_c0_exe3494972(GPOUT,71)
    assign out_c0_exe3494972 = in_c0_exe3494972_0;

    // out_c0_exe3595073(GPOUT,72)
    assign out_c0_exe3595073 = in_c0_exe3595073_0;

    // out_c0_exe3695174(GPOUT,73)
    assign out_c0_exe3695174 = in_c0_exe3695174_0;

    // out_c0_exe3795275(GPOUT,74)
    assign out_c0_exe3795275 = in_c0_exe3795275_0;

    // out_c0_exe3895376(GPOUT,75)
    assign out_c0_exe3895376 = in_c0_exe3895376_0;

    // out_c0_exe391847(GPOUT,76)
    assign out_c0_exe391847 = in_c0_exe391847_0;

    // out_c0_exe3995477(GPOUT,77)
    assign out_c0_exe3995477 = in_c0_exe3995477_0;

    // out_c0_exe4095578(GPOUT,78)
    assign out_c0_exe4095578 = in_c0_exe4095578_0;

    // out_c0_exe4195679(GPOUT,79)
    assign out_c0_exe4195679 = in_c0_exe4195679_0;

    // out_c0_exe4295780(GPOUT,80)
    assign out_c0_exe4295780 = in_c0_exe4295780_0;

    // out_c0_exe4395881(GPOUT,81)
    assign out_c0_exe4395881 = in_c0_exe4395881_0;

    // out_c0_exe4495982(GPOUT,82)
    assign out_c0_exe4495982 = in_c0_exe4495982_0;

    // out_c0_exe4596083(GPOUT,83)
    assign out_c0_exe4596083 = in_c0_exe4596083_0;

    // out_c0_exe4696184(GPOUT,84)
    assign out_c0_exe4696184 = in_c0_exe4696184_0;

    // out_c0_exe4796285(GPOUT,85)
    assign out_c0_exe4796285 = in_c0_exe4796285_0;

    // out_c0_exe4896386(GPOUT,86)
    assign out_c0_exe4896386 = in_c0_exe4896386_0;

    // out_c0_exe4996487(GPOUT,87)
    assign out_c0_exe4996487 = in_c0_exe4996487_0;

    // out_c0_exe5096588(GPOUT,88)
    assign out_c0_exe5096588 = in_c0_exe5096588_0;

    // out_c0_exe5196689(GPOUT,89)
    assign out_c0_exe5196689 = in_c0_exe5196689_0;

    // out_c0_exe592048(GPOUT,90)
    assign out_c0_exe592048 = in_c0_exe592048_0;

    // out_c0_exe692149(GPOUT,91)
    assign out_c0_exe692149 = in_c0_exe692149_0;

    // out_c0_exe892350(GPOUT,92)
    assign out_c0_exe892350 = in_c0_exe892350_0;

    // out_c1_exe198390(GPOUT,93)
    assign out_c1_exe198390 = in_c1_exe198390_0;

    // stall_out(LOGICAL,96)
    assign stall_out_q = in_valid_in_0 & in_stall_in;

    // out_stall_out_0(GPOUT,94)
    assign out_stall_out_0 = stall_out_q;

    // out_valid_out(GPOUT,95)
    assign out_valid_out = in_valid_in_0;

endmodule
