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

// SystemVerilog created from conv2d1x1_B5_branch
// SystemVerilog created on Tue May 23 20:43:36 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2d1x1_B5_branch (
    input wire [31:0] in_c0_exe10505,
    input wire [31:0] in_c0_exe11506,
    input wire [31:0] in_c0_exe12507,
    input wire [31:0] in_c0_exe13508,
    input wire [31:0] in_c0_exe14509,
    input wire [0:0] in_c0_exe1496,
    input wire [31:0] in_c0_exe15510,
    input wire [31:0] in_c0_exe16511,
    input wire [31:0] in_c0_exe17512,
    input wire [31:0] in_c0_exe18513,
    input wire [31:0] in_c0_exe19514,
    input wire [31:0] in_c0_exe20515,
    input wire [31:0] in_c0_exe21516,
    input wire [31:0] in_c0_exe22517,
    input wire [31:0] in_c0_exe23518,
    input wire [31:0] in_c0_exe24519,
    input wire [0:0] in_c0_exe2497,
    input wire [31:0] in_c0_exe25520,
    input wire [0:0] in_c0_exe26521,
    input wire [0:0] in_c0_exe27522,
    input wire [31:0] in_c0_exe28523,
    input wire [31:0] in_c0_exe29524,
    input wire [31:0] in_c0_exe30525,
    input wire [0:0] in_c0_exe31526,
    input wire [0:0] in_c0_exe32527,
    input wire [31:0] in_c0_exe33528,
    input wire [31:0] in_c0_exe34529,
    input wire [0:0] in_c0_exe3498,
    input wire [31:0] in_c0_exe35530,
    input wire [31:0] in_c0_exe36531,
    input wire [31:0] in_c0_exe37532,
    input wire [31:0] in_c0_exe38533,
    input wire [31:0] in_c0_exe39534,
    input wire [31:0] in_c0_exe40535,
    input wire [31:0] in_c0_exe41536,
    input wire [31:0] in_c0_exe42537,
    input wire [31:0] in_c0_exe43538,
    input wire [31:0] in_c0_exe44539,
    input wire [0:0] in_c0_exe4499,
    input wire [31:0] in_c0_exe45,
    input wire [31:0] in_c0_exe46,
    input wire [31:0] in_c0_exe47,
    input wire [31:0] in_c0_exe48,
    input wire [0:0] in_c0_exe49,
    input wire [31:0] in_c0_exe50,
    input wire [0:0] in_c0_exe51,
    input wire [0:0] in_c0_exe52,
    input wire [0:0] in_c0_exe53,
    input wire [32:0] in_c0_exe54,
    input wire [31:0] in_c0_exe55,
    input wire [0:0] in_c0_exe5500,
    input wire [31:0] in_c0_exe56,
    input wire [31:0] in_c0_exe57,
    input wire [0:0] in_c0_exe58,
    input wire [0:0] in_c0_exe59,
    input wire [31:0] in_c0_exe60,
    input wire [31:0] in_c0_exe61,
    input wire [31:0] in_c0_exe62,
    input wire [31:0] in_c0_exe63,
    input wire [31:0] in_c0_exe64,
    input wire [31:0] in_c0_exe65,
    input wire [0:0] in_c0_exe6501,
    input wire [31:0] in_c0_exe66,
    input wire [31:0] in_c0_exe67,
    input wire [31:0] in_c0_exe68,
    input wire [31:0] in_c0_exe69,
    input wire [31:0] in_c0_exe70,
    input wire [31:0] in_c0_exe71,
    input wire [31:0] in_c0_exe72,
    input wire [31:0] in_c0_exe73,
    input wire [31:0] in_c0_exe74,
    input wire [31:0] in_c0_exe75,
    input wire [0:0] in_c0_exe7502,
    input wire [31:0] in_c0_exe8503,
    input wire [31:0] in_c0_exe9504,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_valid_in,
    output wire [31:0] out_c0_exe10505,
    output wire [31:0] out_c0_exe11506,
    output wire [31:0] out_c0_exe12507,
    output wire [31:0] out_c0_exe13508,
    output wire [31:0] out_c0_exe14509,
    output wire [0:0] out_c0_exe1496,
    output wire [31:0] out_c0_exe15510,
    output wire [31:0] out_c0_exe16511,
    output wire [31:0] out_c0_exe17512,
    output wire [31:0] out_c0_exe18513,
    output wire [31:0] out_c0_exe19514,
    output wire [31:0] out_c0_exe20515,
    output wire [31:0] out_c0_exe21516,
    output wire [31:0] out_c0_exe22517,
    output wire [31:0] out_c0_exe23518,
    output wire [31:0] out_c0_exe24519,
    output wire [0:0] out_c0_exe2497,
    output wire [31:0] out_c0_exe25520,
    output wire [0:0] out_c0_exe26521,
    output wire [0:0] out_c0_exe27522,
    output wire [31:0] out_c0_exe28523,
    output wire [31:0] out_c0_exe29524,
    output wire [31:0] out_c0_exe30525,
    output wire [0:0] out_c0_exe31526,
    output wire [0:0] out_c0_exe32527,
    output wire [31:0] out_c0_exe33528,
    output wire [31:0] out_c0_exe34529,
    output wire [0:0] out_c0_exe3498,
    output wire [31:0] out_c0_exe35530,
    output wire [31:0] out_c0_exe36531,
    output wire [31:0] out_c0_exe37532,
    output wire [31:0] out_c0_exe38533,
    output wire [31:0] out_c0_exe39534,
    output wire [31:0] out_c0_exe40535,
    output wire [31:0] out_c0_exe41536,
    output wire [31:0] out_c0_exe42537,
    output wire [31:0] out_c0_exe43538,
    output wire [31:0] out_c0_exe44539,
    output wire [0:0] out_c0_exe4499,
    output wire [31:0] out_c0_exe45,
    output wire [31:0] out_c0_exe46,
    output wire [31:0] out_c0_exe47,
    output wire [31:0] out_c0_exe48,
    output wire [0:0] out_c0_exe49,
    output wire [31:0] out_c0_exe50,
    output wire [0:0] out_c0_exe51,
    output wire [0:0] out_c0_exe52,
    output wire [0:0] out_c0_exe53,
    output wire [32:0] out_c0_exe54,
    output wire [31:0] out_c0_exe55,
    output wire [0:0] out_c0_exe5500,
    output wire [31:0] out_c0_exe56,
    output wire [31:0] out_c0_exe57,
    output wire [0:0] out_c0_exe58,
    output wire [0:0] out_c0_exe59,
    output wire [31:0] out_c0_exe60,
    output wire [31:0] out_c0_exe61,
    output wire [31:0] out_c0_exe62,
    output wire [31:0] out_c0_exe63,
    output wire [31:0] out_c0_exe64,
    output wire [31:0] out_c0_exe65,
    output wire [0:0] out_c0_exe6501,
    output wire [31:0] out_c0_exe66,
    output wire [31:0] out_c0_exe67,
    output wire [31:0] out_c0_exe68,
    output wire [31:0] out_c0_exe69,
    output wire [31:0] out_c0_exe70,
    output wire [31:0] out_c0_exe71,
    output wire [31:0] out_c0_exe72,
    output wire [31:0] out_c0_exe73,
    output wire [31:0] out_c0_exe74,
    output wire [31:0] out_c0_exe75,
    output wire [0:0] out_c0_exe7502,
    output wire [31:0] out_c0_exe8503,
    output wire [31:0] out_c0_exe9504,
    output wire [0:0] out_stall_out,
    output wire [0:0] out_valid_out_0,
    input wire clock,
    input wire resetn
    );

    wire [0:0] stall_out_q;


    // out_c0_exe10505(GPOUT,79)
    assign out_c0_exe10505 = in_c0_exe10505;

    // out_c0_exe11506(GPOUT,80)
    assign out_c0_exe11506 = in_c0_exe11506;

    // out_c0_exe12507(GPOUT,81)
    assign out_c0_exe12507 = in_c0_exe12507;

    // out_c0_exe13508(GPOUT,82)
    assign out_c0_exe13508 = in_c0_exe13508;

    // out_c0_exe14509(GPOUT,83)
    assign out_c0_exe14509 = in_c0_exe14509;

    // out_c0_exe1496(GPOUT,84)
    assign out_c0_exe1496 = in_c0_exe1496;

    // out_c0_exe15510(GPOUT,85)
    assign out_c0_exe15510 = in_c0_exe15510;

    // out_c0_exe16511(GPOUT,86)
    assign out_c0_exe16511 = in_c0_exe16511;

    // out_c0_exe17512(GPOUT,87)
    assign out_c0_exe17512 = in_c0_exe17512;

    // out_c0_exe18513(GPOUT,88)
    assign out_c0_exe18513 = in_c0_exe18513;

    // out_c0_exe19514(GPOUT,89)
    assign out_c0_exe19514 = in_c0_exe19514;

    // out_c0_exe20515(GPOUT,90)
    assign out_c0_exe20515 = in_c0_exe20515;

    // out_c0_exe21516(GPOUT,91)
    assign out_c0_exe21516 = in_c0_exe21516;

    // out_c0_exe22517(GPOUT,92)
    assign out_c0_exe22517 = in_c0_exe22517;

    // out_c0_exe23518(GPOUT,93)
    assign out_c0_exe23518 = in_c0_exe23518;

    // out_c0_exe24519(GPOUT,94)
    assign out_c0_exe24519 = in_c0_exe24519;

    // out_c0_exe2497(GPOUT,95)
    assign out_c0_exe2497 = in_c0_exe2497;

    // out_c0_exe25520(GPOUT,96)
    assign out_c0_exe25520 = in_c0_exe25520;

    // out_c0_exe26521(GPOUT,97)
    assign out_c0_exe26521 = in_c0_exe26521;

    // out_c0_exe27522(GPOUT,98)
    assign out_c0_exe27522 = in_c0_exe27522;

    // out_c0_exe28523(GPOUT,99)
    assign out_c0_exe28523 = in_c0_exe28523;

    // out_c0_exe29524(GPOUT,100)
    assign out_c0_exe29524 = in_c0_exe29524;

    // out_c0_exe30525(GPOUT,101)
    assign out_c0_exe30525 = in_c0_exe30525;

    // out_c0_exe31526(GPOUT,102)
    assign out_c0_exe31526 = in_c0_exe31526;

    // out_c0_exe32527(GPOUT,103)
    assign out_c0_exe32527 = in_c0_exe32527;

    // out_c0_exe33528(GPOUT,104)
    assign out_c0_exe33528 = in_c0_exe33528;

    // out_c0_exe34529(GPOUT,105)
    assign out_c0_exe34529 = in_c0_exe34529;

    // out_c0_exe3498(GPOUT,106)
    assign out_c0_exe3498 = in_c0_exe3498;

    // out_c0_exe35530(GPOUT,107)
    assign out_c0_exe35530 = in_c0_exe35530;

    // out_c0_exe36531(GPOUT,108)
    assign out_c0_exe36531 = in_c0_exe36531;

    // out_c0_exe37532(GPOUT,109)
    assign out_c0_exe37532 = in_c0_exe37532;

    // out_c0_exe38533(GPOUT,110)
    assign out_c0_exe38533 = in_c0_exe38533;

    // out_c0_exe39534(GPOUT,111)
    assign out_c0_exe39534 = in_c0_exe39534;

    // out_c0_exe40535(GPOUT,112)
    assign out_c0_exe40535 = in_c0_exe40535;

    // out_c0_exe41536(GPOUT,113)
    assign out_c0_exe41536 = in_c0_exe41536;

    // out_c0_exe42537(GPOUT,114)
    assign out_c0_exe42537 = in_c0_exe42537;

    // out_c0_exe43538(GPOUT,115)
    assign out_c0_exe43538 = in_c0_exe43538;

    // out_c0_exe44539(GPOUT,116)
    assign out_c0_exe44539 = in_c0_exe44539;

    // out_c0_exe4499(GPOUT,117)
    assign out_c0_exe4499 = in_c0_exe4499;

    // out_c0_exe45(GPOUT,118)
    assign out_c0_exe45 = in_c0_exe45;

    // out_c0_exe46(GPOUT,119)
    assign out_c0_exe46 = in_c0_exe46;

    // out_c0_exe47(GPOUT,120)
    assign out_c0_exe47 = in_c0_exe47;

    // out_c0_exe48(GPOUT,121)
    assign out_c0_exe48 = in_c0_exe48;

    // out_c0_exe49(GPOUT,122)
    assign out_c0_exe49 = in_c0_exe49;

    // out_c0_exe50(GPOUT,123)
    assign out_c0_exe50 = in_c0_exe50;

    // out_c0_exe51(GPOUT,124)
    assign out_c0_exe51 = in_c0_exe51;

    // out_c0_exe52(GPOUT,125)
    assign out_c0_exe52 = in_c0_exe52;

    // out_c0_exe53(GPOUT,126)
    assign out_c0_exe53 = in_c0_exe53;

    // out_c0_exe54(GPOUT,127)
    assign out_c0_exe54 = in_c0_exe54;

    // out_c0_exe55(GPOUT,128)
    assign out_c0_exe55 = in_c0_exe55;

    // out_c0_exe5500(GPOUT,129)
    assign out_c0_exe5500 = in_c0_exe5500;

    // out_c0_exe56(GPOUT,130)
    assign out_c0_exe56 = in_c0_exe56;

    // out_c0_exe57(GPOUT,131)
    assign out_c0_exe57 = in_c0_exe57;

    // out_c0_exe58(GPOUT,132)
    assign out_c0_exe58 = in_c0_exe58;

    // out_c0_exe59(GPOUT,133)
    assign out_c0_exe59 = in_c0_exe59;

    // out_c0_exe60(GPOUT,134)
    assign out_c0_exe60 = in_c0_exe60;

    // out_c0_exe61(GPOUT,135)
    assign out_c0_exe61 = in_c0_exe61;

    // out_c0_exe62(GPOUT,136)
    assign out_c0_exe62 = in_c0_exe62;

    // out_c0_exe63(GPOUT,137)
    assign out_c0_exe63 = in_c0_exe63;

    // out_c0_exe64(GPOUT,138)
    assign out_c0_exe64 = in_c0_exe64;

    // out_c0_exe65(GPOUT,139)
    assign out_c0_exe65 = in_c0_exe65;

    // out_c0_exe6501(GPOUT,140)
    assign out_c0_exe6501 = in_c0_exe6501;

    // out_c0_exe66(GPOUT,141)
    assign out_c0_exe66 = in_c0_exe66;

    // out_c0_exe67(GPOUT,142)
    assign out_c0_exe67 = in_c0_exe67;

    // out_c0_exe68(GPOUT,143)
    assign out_c0_exe68 = in_c0_exe68;

    // out_c0_exe69(GPOUT,144)
    assign out_c0_exe69 = in_c0_exe69;

    // out_c0_exe70(GPOUT,145)
    assign out_c0_exe70 = in_c0_exe70;

    // out_c0_exe71(GPOUT,146)
    assign out_c0_exe71 = in_c0_exe71;

    // out_c0_exe72(GPOUT,147)
    assign out_c0_exe72 = in_c0_exe72;

    // out_c0_exe73(GPOUT,148)
    assign out_c0_exe73 = in_c0_exe73;

    // out_c0_exe74(GPOUT,149)
    assign out_c0_exe74 = in_c0_exe74;

    // out_c0_exe75(GPOUT,150)
    assign out_c0_exe75 = in_c0_exe75;

    // out_c0_exe7502(GPOUT,151)
    assign out_c0_exe7502 = in_c0_exe7502;

    // out_c0_exe8503(GPOUT,152)
    assign out_c0_exe8503 = in_c0_exe8503;

    // out_c0_exe9504(GPOUT,153)
    assign out_c0_exe9504 = in_c0_exe9504;

    // stall_out(LOGICAL,156)
    assign stall_out_q = in_valid_in & in_stall_in_0;

    // out_stall_out(GPOUT,154)
    assign out_stall_out = stall_out_q;

    // out_valid_out_0(GPOUT,155)
    assign out_valid_out_0 = in_valid_in;

endmodule
