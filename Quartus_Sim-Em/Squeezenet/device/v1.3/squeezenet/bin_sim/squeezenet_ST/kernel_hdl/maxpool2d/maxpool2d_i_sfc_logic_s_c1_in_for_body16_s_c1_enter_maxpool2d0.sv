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

// SystemVerilog created from maxpool2d_i_sfc_logic_s_c1_in_for_body16_s_c1_enter_maxpool2d0
// SystemVerilog created on Tue Jun  6 18:48:20 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module maxpool2d_i_sfc_logic_s_c1_in_for_body16_s_c1_enter_maxpool2d0 (
    output wire [0:0] out_c1_exi1_0_tpl,
    output wire [31:0] out_c1_exi1_1_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_maxpool2d7,
    input wire [0:0] in_c1_eni4_0_tpl,
    input wire [0:0] in_c1_eni4_1_tpl,
    input wire [0:0] in_c1_eni4_2_tpl,
    input wire [31:0] in_c1_eni4_3_tpl,
    input wire [0:0] in_c1_eni4_4_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] c_float_0_000000e_009_q;
    wire [31:0] i_llvm_fpga_pop_coalesce_f32_tmp_129_pop39_maxpool2d2_out_data_out;
    wire [0:0] i_llvm_fpga_pop_coalesce_f32_tmp_129_pop39_maxpool2d2_out_feedback_stall_out_39;
    wire [31:0] i_llvm_fpga_push_f32_tmp_129_push39_maxpool2d5_out_feedback_out_39;
    wire [0:0] i_llvm_fpga_push_f32_tmp_129_push39_maxpool2d5_out_feedback_valid_out_39;
    wire [0:0] i_unnamed_maxpool2d4_s;
    reg [31:0] i_unnamed_maxpool2d4_q;
    wire [7:0] cstAllOWE_uid13_i_cmp21_maxpool2d3_q;
    wire [22:0] cstZeroWF_uid14_i_cmp21_maxpool2d3_q;
    wire [7:0] cstAllZWE_uid15_i_cmp21_maxpool2d3_q;
    wire [7:0] exp_x_uid16_i_cmp21_maxpool2d3_b;
    wire [22:0] frac_x_uid17_i_cmp21_maxpool2d3_b;
    wire [0:0] expXIsZero_uid18_i_cmp21_maxpool2d3_q;
    wire [0:0] expXIsMax_uid19_i_cmp21_maxpool2d3_q;
    wire [0:0] fracXIsZero_uid20_i_cmp21_maxpool2d3_q;
    wire [0:0] fracXIsNotZero_uid21_i_cmp21_maxpool2d3_q;
    wire [0:0] excZ_x_uid22_i_cmp21_maxpool2d3_q;
    wire [0:0] excN_x_uid24_i_cmp21_maxpool2d3_q;
    wire [7:0] exp_y_uid33_i_cmp21_maxpool2d3_b;
    wire [22:0] frac_y_uid34_i_cmp21_maxpool2d3_b;
    wire [0:0] expXIsZero_uid35_i_cmp21_maxpool2d3_q;
    wire [0:0] expXIsMax_uid36_i_cmp21_maxpool2d3_q;
    wire [0:0] fracXIsZero_uid37_i_cmp21_maxpool2d3_q;
    wire [0:0] fracXIsNotZero_uid38_i_cmp21_maxpool2d3_q;
    wire [0:0] excZ_y_uid39_i_cmp21_maxpool2d3_q;
    wire [0:0] excN_y_uid41_i_cmp21_maxpool2d3_q;
    wire [0:0] oneIsNaN_uid47_i_cmp21_maxpool2d3_q;
    wire [30:0] expFracX_uid52_i_cmp21_maxpool2d3_q;
    wire [30:0] expFracY_uid54_i_cmp21_maxpool2d3_q;
    wire [32:0] efxGTefy_uid56_i_cmp21_maxpool2d3_a;
    wire [32:0] efxGTefy_uid56_i_cmp21_maxpool2d3_b;
    logic [32:0] efxGTefy_uid56_i_cmp21_maxpool2d3_o;
    wire [0:0] efxGTefy_uid56_i_cmp21_maxpool2d3_c;
    wire [32:0] efxLTefy_uid57_i_cmp21_maxpool2d3_a;
    wire [32:0] efxLTefy_uid57_i_cmp21_maxpool2d3_b;
    logic [32:0] efxLTefy_uid57_i_cmp21_maxpool2d3_o;
    wire [0:0] efxLTefy_uid57_i_cmp21_maxpool2d3_c;
    wire [0:0] signX_uid61_i_cmp21_maxpool2d3_b;
    wire [0:0] signY_uid62_i_cmp21_maxpool2d3_b;
    wire [1:0] two_uid63_i_cmp21_maxpool2d3_q;
    wire [1:0] concSXSY_uid64_i_cmp21_maxpool2d3_q;
    wire [0:0] sxLTsy_uid65_i_cmp21_maxpool2d3_q;
    wire [0:0] xorSigns_uid66_i_cmp21_maxpool2d3_q;
    wire [0:0] sxEQsy_uid67_i_cmp21_maxpool2d3_q;
    wire [0:0] expFracCompMux_uid68_i_cmp21_maxpool2d3_s;
    reg [0:0] expFracCompMux_uid68_i_cmp21_maxpool2d3_q;
    wire [0:0] invExcYZ_uid69_i_cmp21_maxpool2d3_q;
    wire [0:0] invExcXZ_uid70_i_cmp21_maxpool2d3_q;
    wire [0:0] oneNonZero_uid71_i_cmp21_maxpool2d3_q;
    wire [0:0] rc2_uid72_i_cmp21_maxpool2d3_q;
    wire [0:0] sxEQsyExpFracCompMux_uid73_i_cmp21_maxpool2d3_q;
    wire [0:0] r_uid74_i_cmp21_maxpool2d3_q;
    wire [0:0] rPostExc_uid75_i_cmp21_maxpool2d3_s;
    reg [0:0] rPostExc_uid75_i_cmp21_maxpool2d3_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg0_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg1_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg2_q;
    reg [0:0] redist0_sync_together13_aunroll_x_in_c1_eni4_1_tpl_1_q;
    reg [0:0] redist1_sync_together13_aunroll_x_in_c1_eni4_2_tpl_1_q;
    reg [31:0] redist2_sync_together13_aunroll_x_in_c1_eni4_3_tpl_1_q;
    reg [0:0] redist3_sync_together13_aunroll_x_in_c1_eni4_4_tpl_1_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // valid_fanout_reg0(REG,76)@151 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(in_i_valid);
        end
    end

    // redist2_sync_together13_aunroll_x_in_c1_eni4_3_tpl_1(DELAY,81)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_sync_together13_aunroll_x_in_c1_eni4_3_tpl_1_q <= '0;
        end
        else
        begin
            redist2_sync_together13_aunroll_x_in_c1_eni4_3_tpl_1_q <= $unsigned(in_c1_eni4_3_tpl);
        end
    end

    // valid_fanout_reg1(REG,77)@151 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg1_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg1_q <= $unsigned(in_i_valid);
        end
    end

    // redist1_sync_together13_aunroll_x_in_c1_eni4_2_tpl_1(DELAY,80)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together13_aunroll_x_in_c1_eni4_2_tpl_1_q <= '0;
        end
        else
        begin
            redist1_sync_together13_aunroll_x_in_c1_eni4_2_tpl_1_q <= $unsigned(in_c1_eni4_2_tpl);
        end
    end

    // valid_fanout_reg2(REG,78)@151 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg2_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg2_q <= $unsigned(in_i_valid);
        end
    end

    // redist3_sync_together13_aunroll_x_in_c1_eni4_4_tpl_1(DELAY,82)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_sync_together13_aunroll_x_in_c1_eni4_4_tpl_1_q <= '0;
        end
        else
        begin
            redist3_sync_together13_aunroll_x_in_c1_eni4_4_tpl_1_q <= $unsigned(in_c1_eni4_4_tpl);
        end
    end

    // i_llvm_fpga_push_f32_tmp_129_push39_maxpool2d5(BLACKBOX,7)@152
    // out out_feedback_out_39@20000000
    // out out_feedback_valid_out_39@20000000
    maxpool2d_i_llvm_fpga_push_f32_tmp_129_push39_0 thei_llvm_fpga_push_f32_tmp_129_push39_maxpool2d5 (
        .in_c1_ene2(redist1_sync_together13_aunroll_x_in_c1_eni4_2_tpl_1_q),
        .in_c1_ene4(redist3_sync_together13_aunroll_x_in_c1_eni4_4_tpl_1_q),
        .in_data_in(i_unnamed_maxpool2d4_q),
        .in_feedback_stall_in_39(i_llvm_fpga_pop_coalesce_f32_tmp_129_pop39_maxpool2d2_out_feedback_stall_out_39),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(),
        .out_feedback_out_39(i_llvm_fpga_push_f32_tmp_129_push39_maxpool2d5_out_feedback_out_39),
        .out_feedback_valid_out_39(i_llvm_fpga_push_f32_tmp_129_push39_maxpool2d5_out_feedback_valid_out_39),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist0_sync_together13_aunroll_x_in_c1_eni4_1_tpl_1(DELAY,79)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_sync_together13_aunroll_x_in_c1_eni4_1_tpl_1_q <= '0;
        end
        else
        begin
            redist0_sync_together13_aunroll_x_in_c1_eni4_1_tpl_1_q <= $unsigned(in_c1_eni4_1_tpl);
        end
    end

    // c_float_0_000000e_009(FLOATCONSTANT,2)
    assign c_float_0_000000e_009_q = $unsigned(32'b00000000000000000000000000000000);

    // i_llvm_fpga_pop_coalesce_f32_tmp_129_pop39_maxpool2d2(BLACKBOX,6)@152
    // out out_feedback_stall_out_39@20000000
    maxpool2d_i_llvm_fpga_pop_coalesce_f32_tmp_129_pop39_0 thei_llvm_fpga_pop_coalesce_f32_tmp_129_pop39_maxpool2d2 (
        .in_data_in(c_float_0_000000e_009_q),
        .in_dir(redist0_sync_together13_aunroll_x_in_c1_eni4_1_tpl_1_q),
        .in_feedback_in_39(i_llvm_fpga_push_f32_tmp_129_push39_maxpool2d5_out_feedback_out_39),
        .in_feedback_valid_in_39(i_llvm_fpga_push_f32_tmp_129_push39_maxpool2d5_out_feedback_valid_out_39),
        .in_predicate(redist1_sync_together13_aunroll_x_in_c1_eni4_2_tpl_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_data_out(i_llvm_fpga_pop_coalesce_f32_tmp_129_pop39_maxpool2d2_out_data_out),
        .out_feedback_stall_out_39(i_llvm_fpga_pop_coalesce_f32_tmp_129_pop39_maxpool2d2_out_feedback_stall_out_39),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // frac_y_uid34_i_cmp21_maxpool2d3(BITSELECT,33)@152
    assign frac_y_uid34_i_cmp21_maxpool2d3_b = redist2_sync_together13_aunroll_x_in_c1_eni4_3_tpl_1_q[22:0];

    // cstZeroWF_uid14_i_cmp21_maxpool2d3(CONSTANT,13)
    assign cstZeroWF_uid14_i_cmp21_maxpool2d3_q = $unsigned(23'b00000000000000000000000);

    // fracXIsZero_uid37_i_cmp21_maxpool2d3(LOGICAL,36)@152
    assign fracXIsZero_uid37_i_cmp21_maxpool2d3_q = $unsigned(cstZeroWF_uid14_i_cmp21_maxpool2d3_q == frac_y_uid34_i_cmp21_maxpool2d3_b ? 1'b1 : 1'b0);

    // cstAllZWE_uid15_i_cmp21_maxpool2d3(CONSTANT,14)
    assign cstAllZWE_uid15_i_cmp21_maxpool2d3_q = $unsigned(8'b00000000);

    // exp_y_uid33_i_cmp21_maxpool2d3(BITSELECT,32)@152
    assign exp_y_uid33_i_cmp21_maxpool2d3_b = redist2_sync_together13_aunroll_x_in_c1_eni4_3_tpl_1_q[30:23];

    // expXIsZero_uid35_i_cmp21_maxpool2d3(LOGICAL,34)@152
    assign expXIsZero_uid35_i_cmp21_maxpool2d3_q = $unsigned(exp_y_uid33_i_cmp21_maxpool2d3_b == cstAllZWE_uid15_i_cmp21_maxpool2d3_q ? 1'b1 : 1'b0);

    // excZ_y_uid39_i_cmp21_maxpool2d3(LOGICAL,38)@152
    assign excZ_y_uid39_i_cmp21_maxpool2d3_q = expXIsZero_uid35_i_cmp21_maxpool2d3_q & fracXIsZero_uid37_i_cmp21_maxpool2d3_q;

    // invExcYZ_uid69_i_cmp21_maxpool2d3(LOGICAL,68)@152
    assign invExcYZ_uid69_i_cmp21_maxpool2d3_q = ~ (excZ_y_uid39_i_cmp21_maxpool2d3_q);

    // frac_x_uid17_i_cmp21_maxpool2d3(BITSELECT,16)@152
    assign frac_x_uid17_i_cmp21_maxpool2d3_b = i_llvm_fpga_pop_coalesce_f32_tmp_129_pop39_maxpool2d2_out_data_out[22:0];

    // fracXIsZero_uid20_i_cmp21_maxpool2d3(LOGICAL,19)@152
    assign fracXIsZero_uid20_i_cmp21_maxpool2d3_q = $unsigned(cstZeroWF_uid14_i_cmp21_maxpool2d3_q == frac_x_uid17_i_cmp21_maxpool2d3_b ? 1'b1 : 1'b0);

    // exp_x_uid16_i_cmp21_maxpool2d3(BITSELECT,15)@152
    assign exp_x_uid16_i_cmp21_maxpool2d3_b = i_llvm_fpga_pop_coalesce_f32_tmp_129_pop39_maxpool2d2_out_data_out[30:23];

    // expXIsZero_uid18_i_cmp21_maxpool2d3(LOGICAL,17)@152
    assign expXIsZero_uid18_i_cmp21_maxpool2d3_q = $unsigned(exp_x_uid16_i_cmp21_maxpool2d3_b == cstAllZWE_uid15_i_cmp21_maxpool2d3_q ? 1'b1 : 1'b0);

    // excZ_x_uid22_i_cmp21_maxpool2d3(LOGICAL,21)@152
    assign excZ_x_uid22_i_cmp21_maxpool2d3_q = expXIsZero_uid18_i_cmp21_maxpool2d3_q & fracXIsZero_uid20_i_cmp21_maxpool2d3_q;

    // invExcXZ_uid70_i_cmp21_maxpool2d3(LOGICAL,69)@152
    assign invExcXZ_uid70_i_cmp21_maxpool2d3_q = ~ (excZ_x_uid22_i_cmp21_maxpool2d3_q);

    // oneNonZero_uid71_i_cmp21_maxpool2d3(LOGICAL,70)@152
    assign oneNonZero_uid71_i_cmp21_maxpool2d3_q = invExcXZ_uid70_i_cmp21_maxpool2d3_q | invExcYZ_uid69_i_cmp21_maxpool2d3_q;

    // two_uid63_i_cmp21_maxpool2d3(CONSTANT,62)
    assign two_uid63_i_cmp21_maxpool2d3_q = $unsigned(2'b10);

    // signX_uid61_i_cmp21_maxpool2d3(BITSELECT,60)@152
    assign signX_uid61_i_cmp21_maxpool2d3_b = $unsigned(i_llvm_fpga_pop_coalesce_f32_tmp_129_pop39_maxpool2d2_out_data_out[31:31]);

    // signY_uid62_i_cmp21_maxpool2d3(BITSELECT,61)@152
    assign signY_uid62_i_cmp21_maxpool2d3_b = $unsigned(redist2_sync_together13_aunroll_x_in_c1_eni4_3_tpl_1_q[31:31]);

    // concSXSY_uid64_i_cmp21_maxpool2d3(BITJOIN,63)@152
    assign concSXSY_uid64_i_cmp21_maxpool2d3_q = {signX_uid61_i_cmp21_maxpool2d3_b, signY_uid62_i_cmp21_maxpool2d3_b};

    // sxLTsy_uid65_i_cmp21_maxpool2d3(LOGICAL,64)@152
    assign sxLTsy_uid65_i_cmp21_maxpool2d3_q = $unsigned(concSXSY_uid64_i_cmp21_maxpool2d3_q == two_uid63_i_cmp21_maxpool2d3_q ? 1'b1 : 1'b0);

    // rc2_uid72_i_cmp21_maxpool2d3(LOGICAL,71)@152
    assign rc2_uid72_i_cmp21_maxpool2d3_q = sxLTsy_uid65_i_cmp21_maxpool2d3_q & oneNonZero_uid71_i_cmp21_maxpool2d3_q;

    // expFracX_uid52_i_cmp21_maxpool2d3(BITJOIN,51)@152
    assign expFracX_uid52_i_cmp21_maxpool2d3_q = {exp_x_uid16_i_cmp21_maxpool2d3_b, frac_x_uid17_i_cmp21_maxpool2d3_b};

    // expFracY_uid54_i_cmp21_maxpool2d3(BITJOIN,53)@152
    assign expFracY_uid54_i_cmp21_maxpool2d3_q = {exp_y_uid33_i_cmp21_maxpool2d3_b, frac_y_uid34_i_cmp21_maxpool2d3_b};

    // efxGTefy_uid56_i_cmp21_maxpool2d3(COMPARE,55)@152
    assign efxGTefy_uid56_i_cmp21_maxpool2d3_a = {2'b00, expFracY_uid54_i_cmp21_maxpool2d3_q};
    assign efxGTefy_uid56_i_cmp21_maxpool2d3_b = {2'b00, expFracX_uid52_i_cmp21_maxpool2d3_q};
    assign efxGTefy_uid56_i_cmp21_maxpool2d3_o = $unsigned(efxGTefy_uid56_i_cmp21_maxpool2d3_a) - $unsigned(efxGTefy_uid56_i_cmp21_maxpool2d3_b);
    assign efxGTefy_uid56_i_cmp21_maxpool2d3_c[0] = efxGTefy_uid56_i_cmp21_maxpool2d3_o[32];

    // efxLTefy_uid57_i_cmp21_maxpool2d3(COMPARE,56)@152
    assign efxLTefy_uid57_i_cmp21_maxpool2d3_a = {2'b00, expFracX_uid52_i_cmp21_maxpool2d3_q};
    assign efxLTefy_uid57_i_cmp21_maxpool2d3_b = {2'b00, expFracY_uid54_i_cmp21_maxpool2d3_q};
    assign efxLTefy_uid57_i_cmp21_maxpool2d3_o = $unsigned(efxLTefy_uid57_i_cmp21_maxpool2d3_a) - $unsigned(efxLTefy_uid57_i_cmp21_maxpool2d3_b);
    assign efxLTefy_uid57_i_cmp21_maxpool2d3_c[0] = efxLTefy_uid57_i_cmp21_maxpool2d3_o[32];

    // expFracCompMux_uid68_i_cmp21_maxpool2d3(MUX,67)@152
    assign expFracCompMux_uid68_i_cmp21_maxpool2d3_s = signX_uid61_i_cmp21_maxpool2d3_b;
    always @(expFracCompMux_uid68_i_cmp21_maxpool2d3_s or efxLTefy_uid57_i_cmp21_maxpool2d3_c or efxGTefy_uid56_i_cmp21_maxpool2d3_c)
    begin
        unique case (expFracCompMux_uid68_i_cmp21_maxpool2d3_s)
            1'b0 : expFracCompMux_uid68_i_cmp21_maxpool2d3_q = efxLTefy_uid57_i_cmp21_maxpool2d3_c;
            1'b1 : expFracCompMux_uid68_i_cmp21_maxpool2d3_q = efxGTefy_uid56_i_cmp21_maxpool2d3_c;
            default : expFracCompMux_uid68_i_cmp21_maxpool2d3_q = 1'b0;
        endcase
    end

    // xorSigns_uid66_i_cmp21_maxpool2d3(LOGICAL,65)@152
    assign xorSigns_uid66_i_cmp21_maxpool2d3_q = signX_uid61_i_cmp21_maxpool2d3_b ^ signY_uid62_i_cmp21_maxpool2d3_b;

    // sxEQsy_uid67_i_cmp21_maxpool2d3(LOGICAL,66)@152
    assign sxEQsy_uid67_i_cmp21_maxpool2d3_q = ~ (xorSigns_uid66_i_cmp21_maxpool2d3_q);

    // sxEQsyExpFracCompMux_uid73_i_cmp21_maxpool2d3(LOGICAL,72)@152
    assign sxEQsyExpFracCompMux_uid73_i_cmp21_maxpool2d3_q = sxEQsy_uid67_i_cmp21_maxpool2d3_q & expFracCompMux_uid68_i_cmp21_maxpool2d3_q;

    // r_uid74_i_cmp21_maxpool2d3(LOGICAL,73)@152
    assign r_uid74_i_cmp21_maxpool2d3_q = sxEQsyExpFracCompMux_uid73_i_cmp21_maxpool2d3_q | rc2_uid72_i_cmp21_maxpool2d3_q;

    // fracXIsNotZero_uid38_i_cmp21_maxpool2d3(LOGICAL,37)@152
    assign fracXIsNotZero_uid38_i_cmp21_maxpool2d3_q = ~ (fracXIsZero_uid37_i_cmp21_maxpool2d3_q);

    // cstAllOWE_uid13_i_cmp21_maxpool2d3(CONSTANT,12)
    assign cstAllOWE_uid13_i_cmp21_maxpool2d3_q = $unsigned(8'b11111111);

    // expXIsMax_uid36_i_cmp21_maxpool2d3(LOGICAL,35)@152
    assign expXIsMax_uid36_i_cmp21_maxpool2d3_q = $unsigned(exp_y_uid33_i_cmp21_maxpool2d3_b == cstAllOWE_uid13_i_cmp21_maxpool2d3_q ? 1'b1 : 1'b0);

    // excN_y_uid41_i_cmp21_maxpool2d3(LOGICAL,40)@152
    assign excN_y_uid41_i_cmp21_maxpool2d3_q = expXIsMax_uid36_i_cmp21_maxpool2d3_q & fracXIsNotZero_uid38_i_cmp21_maxpool2d3_q;

    // fracXIsNotZero_uid21_i_cmp21_maxpool2d3(LOGICAL,20)@152
    assign fracXIsNotZero_uid21_i_cmp21_maxpool2d3_q = ~ (fracXIsZero_uid20_i_cmp21_maxpool2d3_q);

    // expXIsMax_uid19_i_cmp21_maxpool2d3(LOGICAL,18)@152
    assign expXIsMax_uid19_i_cmp21_maxpool2d3_q = $unsigned(exp_x_uid16_i_cmp21_maxpool2d3_b == cstAllOWE_uid13_i_cmp21_maxpool2d3_q ? 1'b1 : 1'b0);

    // excN_x_uid24_i_cmp21_maxpool2d3(LOGICAL,23)@152
    assign excN_x_uid24_i_cmp21_maxpool2d3_q = expXIsMax_uid19_i_cmp21_maxpool2d3_q & fracXIsNotZero_uid21_i_cmp21_maxpool2d3_q;

    // oneIsNaN_uid47_i_cmp21_maxpool2d3(LOGICAL,46)@152
    assign oneIsNaN_uid47_i_cmp21_maxpool2d3_q = excN_x_uid24_i_cmp21_maxpool2d3_q | excN_y_uid41_i_cmp21_maxpool2d3_q;

    // rPostExc_uid75_i_cmp21_maxpool2d3(MUX,74)@152
    assign rPostExc_uid75_i_cmp21_maxpool2d3_s = oneIsNaN_uid47_i_cmp21_maxpool2d3_q;
    always @(rPostExc_uid75_i_cmp21_maxpool2d3_s or r_uid74_i_cmp21_maxpool2d3_q or GND_q)
    begin
        unique case (rPostExc_uid75_i_cmp21_maxpool2d3_s)
            1'b0 : rPostExc_uid75_i_cmp21_maxpool2d3_q = r_uid74_i_cmp21_maxpool2d3_q;
            1'b1 : rPostExc_uid75_i_cmp21_maxpool2d3_q = GND_q;
            default : rPostExc_uid75_i_cmp21_maxpool2d3_q = 1'b0;
        endcase
    end

    // i_unnamed_maxpool2d4(MUX,8)@152
    assign i_unnamed_maxpool2d4_s = rPostExc_uid75_i_cmp21_maxpool2d3_q;
    always @(i_unnamed_maxpool2d4_s or i_llvm_fpga_pop_coalesce_f32_tmp_129_pop39_maxpool2d2_out_data_out or redist2_sync_together13_aunroll_x_in_c1_eni4_3_tpl_1_q)
    begin
        unique case (i_unnamed_maxpool2d4_s)
            1'b0 : i_unnamed_maxpool2d4_q = i_llvm_fpga_pop_coalesce_f32_tmp_129_pop39_maxpool2d2_out_data_out;
            1'b1 : i_unnamed_maxpool2d4_q = redist2_sync_together13_aunroll_x_in_c1_eni4_3_tpl_1_q;
            default : i_unnamed_maxpool2d4_q = 32'b0;
        endcase
    end

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // sync_out_aunroll_x(GPOUT,10)@152
    assign out_c1_exi1_0_tpl = GND_q;
    assign out_c1_exi1_1_tpl = i_unnamed_maxpool2d4_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_maxpool2d7 = GND_q;

endmodule
