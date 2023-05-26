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
// SystemVerilog created on Wed May 24 11:22:00 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2d1x1_B7_merge (
    input wire [31:0] in_c0_exe1345124_0,
    input wire [31:0] in_c0_exe1445225_0,
    input wire [0:0] in_c0_exe1545327_0,
    input wire [0:0] in_c0_exe1645428_0,
    input wire [63:0] in_c0_exe1745529_0,
    input wire [0:0] in_c0_exe344121_0,
    input wire [0:0] in_c0_exe444222_0,
    input wire [31:0] in_c0_exe544323_0,
    input wire [31:0] in_c1_exe1039_0,
    input wire [31:0] in_c1_exe1140_0,
    input wire [31:0] in_c1_exe1241_0,
    input wire [31:0] in_c1_exe130_0,
    input wire [31:0] in_c1_exe1342_0,
    input wire [31:0] in_c1_exe1443_0,
    input wire [31:0] in_c1_exe1544_0,
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
    input wire [31:0] in_c1_exe433_0,
    input wire [31:0] in_c1_exe534_0,
    input wire [31:0] in_c1_exe635_0,
    input wire [31:0] in_c1_exe736_0,
    input wire [31:0] in_c1_exe837_0,
    input wire [31:0] in_c1_exe938_0,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_valid_in_0,
    output wire [31:0] out_c0_exe1345124,
    output wire [31:0] out_c0_exe1445225,
    output wire [0:0] out_c0_exe1545327,
    output wire [0:0] out_c0_exe1645428,
    output wire [63:0] out_c0_exe1745529,
    output wire [0:0] out_c0_exe344121,
    output wire [0:0] out_c0_exe444222,
    output wire [31:0] out_c0_exe544323,
    output wire [31:0] out_c1_exe1039,
    output wire [31:0] out_c1_exe1140,
    output wire [31:0] out_c1_exe1241,
    output wire [31:0] out_c1_exe130,
    output wire [31:0] out_c1_exe1342,
    output wire [31:0] out_c1_exe1443,
    output wire [31:0] out_c1_exe1544,
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
    output wire [31:0] out_c1_exe433,
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


    // out_c0_exe1345124(GPOUT,44)
    assign out_c0_exe1345124 = in_c0_exe1345124_0;

    // out_c0_exe1445225(GPOUT,45)
    assign out_c0_exe1445225 = in_c0_exe1445225_0;

    // out_c0_exe1545327(GPOUT,46)
    assign out_c0_exe1545327 = in_c0_exe1545327_0;

    // out_c0_exe1645428(GPOUT,47)
    assign out_c0_exe1645428 = in_c0_exe1645428_0;

    // out_c0_exe1745529(GPOUT,48)
    assign out_c0_exe1745529 = in_c0_exe1745529_0;

    // out_c0_exe344121(GPOUT,49)
    assign out_c0_exe344121 = in_c0_exe344121_0;

    // out_c0_exe444222(GPOUT,50)
    assign out_c0_exe444222 = in_c0_exe444222_0;

    // out_c0_exe544323(GPOUT,51)
    assign out_c0_exe544323 = in_c0_exe544323_0;

    // out_c1_exe1039(GPOUT,52)
    assign out_c1_exe1039 = in_c1_exe1039_0;

    // out_c1_exe1140(GPOUT,53)
    assign out_c1_exe1140 = in_c1_exe1140_0;

    // out_c1_exe1241(GPOUT,54)
    assign out_c1_exe1241 = in_c1_exe1241_0;

    // out_c1_exe130(GPOUT,55)
    assign out_c1_exe130 = in_c1_exe130_0;

    // out_c1_exe1342(GPOUT,56)
    assign out_c1_exe1342 = in_c1_exe1342_0;

    // out_c1_exe1443(GPOUT,57)
    assign out_c1_exe1443 = in_c1_exe1443_0;

    // out_c1_exe1544(GPOUT,58)
    assign out_c1_exe1544 = in_c1_exe1544_0;

    // out_c1_exe1645(GPOUT,59)
    assign out_c1_exe1645 = in_c1_exe1645_0;

    // out_c1_exe1746(GPOUT,60)
    assign out_c1_exe1746 = in_c1_exe1746_0;

    // out_c1_exe1847(GPOUT,61)
    assign out_c1_exe1847 = in_c1_exe1847_0;

    // out_c1_exe1948(GPOUT,62)
    assign out_c1_exe1948 = in_c1_exe1948_0;

    // out_c1_exe2049(GPOUT,63)
    assign out_c1_exe2049 = in_c1_exe2049_0;

    // out_c1_exe2150(GPOUT,64)
    assign out_c1_exe2150 = in_c1_exe2150_0;

    // out_c1_exe2251(GPOUT,65)
    assign out_c1_exe2251 = in_c1_exe2251_0;

    // out_c1_exe231(GPOUT,66)
    assign out_c1_exe231 = in_c1_exe231_0;

    // out_c1_exe2352(GPOUT,67)
    assign out_c1_exe2352 = in_c1_exe2352_0;

    // out_c1_exe2453(GPOUT,68)
    assign out_c1_exe2453 = in_c1_exe2453_0;

    // out_c1_exe2554(GPOUT,69)
    assign out_c1_exe2554 = in_c1_exe2554_0;

    // out_c1_exe2655(GPOUT,70)
    assign out_c1_exe2655 = in_c1_exe2655_0;

    // out_c1_exe2756(GPOUT,71)
    assign out_c1_exe2756 = in_c1_exe2756_0;

    // out_c1_exe2857(GPOUT,72)
    assign out_c1_exe2857 = in_c1_exe2857_0;

    // out_c1_exe2958(GPOUT,73)
    assign out_c1_exe2958 = in_c1_exe2958_0;

    // out_c1_exe3059(GPOUT,74)
    assign out_c1_exe3059 = in_c1_exe3059_0;

    // out_c1_exe3160(GPOUT,75)
    assign out_c1_exe3160 = in_c1_exe3160_0;

    // out_c1_exe3261(GPOUT,76)
    assign out_c1_exe3261 = in_c1_exe3261_0;

    // out_c1_exe332(GPOUT,77)
    assign out_c1_exe332 = in_c1_exe332_0;

    // out_c1_exe433(GPOUT,78)
    assign out_c1_exe433 = in_c1_exe433_0;

    // out_c1_exe534(GPOUT,79)
    assign out_c1_exe534 = in_c1_exe534_0;

    // out_c1_exe635(GPOUT,80)
    assign out_c1_exe635 = in_c1_exe635_0;

    // out_c1_exe736(GPOUT,81)
    assign out_c1_exe736 = in_c1_exe736_0;

    // out_c1_exe837(GPOUT,82)
    assign out_c1_exe837 = in_c1_exe837_0;

    // out_c1_exe938(GPOUT,83)
    assign out_c1_exe938 = in_c1_exe938_0;

    // stall_out(LOGICAL,86)
    assign stall_out_q = in_valid_in_0 & in_stall_in;

    // out_stall_out_0(GPOUT,84)
    assign out_stall_out_0 = stall_out_q;

    // out_valid_out(GPOUT,85)
    assign out_valid_out = in_valid_in_0;

endmodule
