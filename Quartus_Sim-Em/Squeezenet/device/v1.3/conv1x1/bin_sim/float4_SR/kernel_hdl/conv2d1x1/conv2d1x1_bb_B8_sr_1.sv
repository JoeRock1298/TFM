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

// SystemVerilog created from conv2d1x1_bb_B8_sr_1
// SystemVerilog created on Wed May 24 11:22:00 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2d1x1_bb_B8_sr_1 (
    input wire [0:0] in_i_stall,
    input wire [0:0] in_i_valid,
    input wire [0:0] in_i_data_0_tpl,
    input wire [31:0] in_i_data_1_tpl,
    input wire [0:0] in_i_data_2_tpl,
    input wire [0:0] in_i_data_3_tpl,
    input wire [0:0] in_i_data_4_tpl,
    input wire [32:0] in_i_data_5_tpl,
    input wire [31:0] in_i_data_6_tpl,
    input wire [31:0] in_i_data_7_tpl,
    input wire [31:0] in_i_data_8_tpl,
    input wire [0:0] in_i_data_9_tpl,
    input wire [31:0] in_i_data_10_tpl,
    input wire [31:0] in_i_data_11_tpl,
    input wire [31:0] in_i_data_12_tpl,
    input wire [31:0] in_i_data_13_tpl,
    input wire [31:0] in_i_data_14_tpl,
    input wire [31:0] in_i_data_15_tpl,
    input wire [31:0] in_i_data_16_tpl,
    input wire [31:0] in_i_data_17_tpl,
    input wire [31:0] in_i_data_18_tpl,
    input wire [31:0] in_i_data_19_tpl,
    input wire [31:0] in_i_data_20_tpl,
    input wire [31:0] in_i_data_21_tpl,
    input wire [31:0] in_i_data_22_tpl,
    input wire [31:0] in_i_data_23_tpl,
    input wire [31:0] in_i_data_24_tpl,
    input wire [31:0] in_i_data_25_tpl,
    input wire [63:0] in_i_data_26_tpl,
    input wire [0:0] in_i_data_27_tpl,
    input wire [0:0] in_i_data_28_tpl,
    input wire [31:0] in_i_data_29_tpl,
    input wire [0:0] in_i_data_30_tpl,
    input wire [31:0] in_i_data_31_tpl,
    input wire [31:0] in_i_data_32_tpl,
    input wire [31:0] in_i_data_33_tpl,
    input wire [0:0] in_i_data_34_tpl,
    input wire [0:0] in_i_data_35_tpl,
    input wire [31:0] in_i_data_36_tpl,
    output wire [0:0] out_o_stall,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_o_data_0_tpl,
    output wire [31:0] out_o_data_1_tpl,
    output wire [0:0] out_o_data_2_tpl,
    output wire [0:0] out_o_data_3_tpl,
    output wire [0:0] out_o_data_4_tpl,
    output wire [32:0] out_o_data_5_tpl,
    output wire [31:0] out_o_data_6_tpl,
    output wire [31:0] out_o_data_7_tpl,
    output wire [31:0] out_o_data_8_tpl,
    output wire [0:0] out_o_data_9_tpl,
    output wire [31:0] out_o_data_10_tpl,
    output wire [31:0] out_o_data_11_tpl,
    output wire [31:0] out_o_data_12_tpl,
    output wire [31:0] out_o_data_13_tpl,
    output wire [31:0] out_o_data_14_tpl,
    output wire [31:0] out_o_data_15_tpl,
    output wire [31:0] out_o_data_16_tpl,
    output wire [31:0] out_o_data_17_tpl,
    output wire [31:0] out_o_data_18_tpl,
    output wire [31:0] out_o_data_19_tpl,
    output wire [31:0] out_o_data_20_tpl,
    output wire [31:0] out_o_data_21_tpl,
    output wire [31:0] out_o_data_22_tpl,
    output wire [31:0] out_o_data_23_tpl,
    output wire [31:0] out_o_data_24_tpl,
    output wire [31:0] out_o_data_25_tpl,
    output wire [63:0] out_o_data_26_tpl,
    output wire [0:0] out_o_data_27_tpl,
    output wire [0:0] out_o_data_28_tpl,
    output wire [31:0] out_o_data_29_tpl,
    output wire [0:0] out_o_data_30_tpl,
    output wire [31:0] out_o_data_31_tpl,
    output wire [31:0] out_o_data_32_tpl,
    output wire [31:0] out_o_data_33_tpl,
    output wire [0:0] out_o_data_34_tpl,
    output wire [0:0] out_o_data_35_tpl,
    output wire [31:0] out_o_data_36_tpl,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    wire [0:0] combined_valid_q;
    wire [0:0] not_sr_valid_q;
    reg [0:0] sr_valid_q;
    wire [0:0] stall_and_valid_q;
    wire [0:0] data_mux_0_x_s;
    reg [0:0] data_mux_0_x_q;
    wire [0:0] data_mux_1_x_s;
    reg [31:0] data_mux_1_x_q;
    wire [0:0] data_mux_2_x_s;
    reg [0:0] data_mux_2_x_q;
    wire [0:0] data_mux_3_x_s;
    reg [0:0] data_mux_3_x_q;
    wire [0:0] data_mux_4_x_s;
    reg [0:0] data_mux_4_x_q;
    wire [0:0] data_mux_5_x_s;
    reg [32:0] data_mux_5_x_q;
    wire [0:0] data_mux_6_x_s;
    reg [31:0] data_mux_6_x_q;
    wire [0:0] data_mux_7_x_s;
    reg [31:0] data_mux_7_x_q;
    wire [0:0] data_mux_8_x_s;
    reg [31:0] data_mux_8_x_q;
    wire [0:0] data_mux_9_x_s;
    reg [0:0] data_mux_9_x_q;
    wire [0:0] data_mux_10_x_s;
    reg [31:0] data_mux_10_x_q;
    wire [0:0] data_mux_11_x_s;
    reg [31:0] data_mux_11_x_q;
    wire [0:0] data_mux_12_x_s;
    reg [31:0] data_mux_12_x_q;
    wire [0:0] data_mux_13_x_s;
    reg [31:0] data_mux_13_x_q;
    wire [0:0] data_mux_14_x_s;
    reg [31:0] data_mux_14_x_q;
    wire [0:0] data_mux_15_x_s;
    reg [31:0] data_mux_15_x_q;
    wire [0:0] data_mux_16_x_s;
    reg [31:0] data_mux_16_x_q;
    wire [0:0] data_mux_17_x_s;
    reg [31:0] data_mux_17_x_q;
    wire [0:0] data_mux_18_x_s;
    reg [31:0] data_mux_18_x_q;
    wire [0:0] data_mux_19_x_s;
    reg [31:0] data_mux_19_x_q;
    wire [0:0] data_mux_20_x_s;
    reg [31:0] data_mux_20_x_q;
    wire [0:0] data_mux_21_x_s;
    reg [31:0] data_mux_21_x_q;
    wire [0:0] data_mux_22_x_s;
    reg [31:0] data_mux_22_x_q;
    wire [0:0] data_mux_23_x_s;
    reg [31:0] data_mux_23_x_q;
    wire [0:0] data_mux_24_x_s;
    reg [31:0] data_mux_24_x_q;
    wire [0:0] data_mux_25_x_s;
    reg [31:0] data_mux_25_x_q;
    wire [0:0] data_mux_26_x_s;
    reg [63:0] data_mux_26_x_q;
    wire [0:0] data_mux_27_x_s;
    reg [0:0] data_mux_27_x_q;
    wire [0:0] data_mux_28_x_s;
    reg [0:0] data_mux_28_x_q;
    wire [0:0] data_mux_29_x_s;
    reg [31:0] data_mux_29_x_q;
    wire [0:0] data_mux_30_x_s;
    reg [0:0] data_mux_30_x_q;
    wire [0:0] data_mux_31_x_s;
    reg [31:0] data_mux_31_x_q;
    wire [0:0] data_mux_32_x_s;
    reg [31:0] data_mux_32_x_q;
    wire [0:0] data_mux_33_x_s;
    reg [31:0] data_mux_33_x_q;
    wire [0:0] data_mux_34_x_s;
    reg [0:0] data_mux_34_x_q;
    wire [0:0] data_mux_35_x_s;
    reg [0:0] data_mux_35_x_q;
    wire [0:0] data_mux_36_x_s;
    reg [31:0] data_mux_36_x_q;
    reg [0:0] sr_0_x_q;
    reg [31:0] sr_1_x_q;
    reg [0:0] sr_2_x_q;
    reg [0:0] sr_3_x_q;
    reg [0:0] sr_4_x_q;
    reg [32:0] sr_5_x_q;
    reg [31:0] sr_6_x_q;
    reg [31:0] sr_7_x_q;
    reg [31:0] sr_8_x_q;
    reg [0:0] sr_9_x_q;
    reg [31:0] sr_10_x_q;
    reg [31:0] sr_11_x_q;
    reg [31:0] sr_12_x_q;
    reg [31:0] sr_13_x_q;
    reg [31:0] sr_14_x_q;
    reg [31:0] sr_15_x_q;
    reg [31:0] sr_16_x_q;
    reg [31:0] sr_17_x_q;
    reg [31:0] sr_18_x_q;
    reg [31:0] sr_19_x_q;
    reg [31:0] sr_20_x_q;
    reg [31:0] sr_21_x_q;
    reg [31:0] sr_22_x_q;
    reg [31:0] sr_23_x_q;
    reg [31:0] sr_24_x_q;
    reg [31:0] sr_25_x_q;
    reg [63:0] sr_26_x_q;
    reg [0:0] sr_27_x_q;
    reg [0:0] sr_28_x_q;
    reg [31:0] sr_29_x_q;
    reg [0:0] sr_30_x_q;
    reg [31:0] sr_31_x_q;
    reg [31:0] sr_32_x_q;
    reg [31:0] sr_33_x_q;
    reg [0:0] sr_34_x_q;
    reg [0:0] sr_35_x_q;
    reg [31:0] sr_36_x_q;


    // combined_valid(LOGICAL,2)
    assign combined_valid_q = in_i_valid | sr_valid_q;

    // stall_and_valid(LOGICAL,5)
    assign stall_and_valid_q = in_i_stall & combined_valid_q;

    // sr_valid(REG,4)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            sr_valid_q <= $unsigned(1'b0);
        end
        else
        begin
            sr_valid_q <= stall_and_valid_q;
        end
    end

    // out_o_stall(GPOUT,83)
    assign out_o_stall = sr_valid_q;

    // out_o_valid(GPOUT,84)
    assign out_o_valid = combined_valid_q;

    // not_sr_valid(LOGICAL,3)
    assign not_sr_valid_q = ~ (sr_valid_q);

    // sr_0_x(REG,122)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            sr_0_x_q <= $unsigned(1'b0);
        end
        else if (not_sr_valid_q == 1'b1)
        begin
            sr_0_x_q <= in_i_data_0_tpl;
        end
    end

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // data_mux_0_x(MUX,7)
    assign data_mux_0_x_s = sr_valid_q;
    always @(data_mux_0_x_s or in_i_data_0_tpl or sr_0_x_q)
    begin
        unique case (data_mux_0_x_s)
            1'b0 : data_mux_0_x_q = in_i_data_0_tpl;
            1'b1 : data_mux_0_x_q = sr_0_x_q;
            default : data_mux_0_x_q = 1'b0;
        endcase
    end

    // out_o_data_0_tpl(GPOUT,85)
    assign out_o_data_0_tpl = data_mux_0_x_q;

    // sr_1_x(REG,123)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            sr_1_x_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (not_sr_valid_q == 1'b1)
        begin
            sr_1_x_q <= in_i_data_1_tpl;
        end
    end

    // data_mux_1_x(MUX,8)
    assign data_mux_1_x_s = sr_valid_q;
    always @(data_mux_1_x_s or in_i_data_1_tpl or sr_1_x_q)
    begin
        unique case (data_mux_1_x_s)
            1'b0 : data_mux_1_x_q = in_i_data_1_tpl;
            1'b1 : data_mux_1_x_q = sr_1_x_q;
            default : data_mux_1_x_q = 32'b0;
        endcase
    end

    // out_o_data_1_tpl(GPOUT,86)
    assign out_o_data_1_tpl = data_mux_1_x_q;

    // sr_2_x(REG,124)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            sr_2_x_q <= $unsigned(1'b0);
        end
        else if (not_sr_valid_q == 1'b1)
        begin
            sr_2_x_q <= in_i_data_2_tpl;
        end
    end

    // data_mux_2_x(MUX,9)
    assign data_mux_2_x_s = sr_valid_q;
    always @(data_mux_2_x_s or in_i_data_2_tpl or sr_2_x_q)
    begin
        unique case (data_mux_2_x_s)
            1'b0 : data_mux_2_x_q = in_i_data_2_tpl;
            1'b1 : data_mux_2_x_q = sr_2_x_q;
            default : data_mux_2_x_q = 1'b0;
        endcase
    end

    // out_o_data_2_tpl(GPOUT,87)
    assign out_o_data_2_tpl = data_mux_2_x_q;

    // sr_3_x(REG,125)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            sr_3_x_q <= $unsigned(1'b0);
        end
        else if (not_sr_valid_q == 1'b1)
        begin
            sr_3_x_q <= in_i_data_3_tpl;
        end
    end

    // data_mux_3_x(MUX,10)
    assign data_mux_3_x_s = sr_valid_q;
    always @(data_mux_3_x_s or in_i_data_3_tpl or sr_3_x_q)
    begin
        unique case (data_mux_3_x_s)
            1'b0 : data_mux_3_x_q = in_i_data_3_tpl;
            1'b1 : data_mux_3_x_q = sr_3_x_q;
            default : data_mux_3_x_q = 1'b0;
        endcase
    end

    // out_o_data_3_tpl(GPOUT,88)
    assign out_o_data_3_tpl = data_mux_3_x_q;

    // sr_4_x(REG,126)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            sr_4_x_q <= $unsigned(1'b0);
        end
        else if (not_sr_valid_q == 1'b1)
        begin
            sr_4_x_q <= in_i_data_4_tpl;
        end
    end

    // data_mux_4_x(MUX,11)
    assign data_mux_4_x_s = sr_valid_q;
    always @(data_mux_4_x_s or in_i_data_4_tpl or sr_4_x_q)
    begin
        unique case (data_mux_4_x_s)
            1'b0 : data_mux_4_x_q = in_i_data_4_tpl;
            1'b1 : data_mux_4_x_q = sr_4_x_q;
            default : data_mux_4_x_q = 1'b0;
        endcase
    end

    // out_o_data_4_tpl(GPOUT,89)
    assign out_o_data_4_tpl = data_mux_4_x_q;

    // sr_5_x(REG,127)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            sr_5_x_q <= $unsigned(33'b000000000000000000000000000000000);
        end
        else if (not_sr_valid_q == 1'b1)
        begin
            sr_5_x_q <= in_i_data_5_tpl;
        end
    end

    // data_mux_5_x(MUX,12)
    assign data_mux_5_x_s = sr_valid_q;
    always @(data_mux_5_x_s or in_i_data_5_tpl or sr_5_x_q)
    begin
        unique case (data_mux_5_x_s)
            1'b0 : data_mux_5_x_q = in_i_data_5_tpl;
            1'b1 : data_mux_5_x_q = sr_5_x_q;
            default : data_mux_5_x_q = 33'b0;
        endcase
    end

    // out_o_data_5_tpl(GPOUT,90)
    assign out_o_data_5_tpl = data_mux_5_x_q;

    // sr_6_x(REG,128)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            sr_6_x_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (not_sr_valid_q == 1'b1)
        begin
            sr_6_x_q <= $unsigned(in_i_data_6_tpl);
        end
    end

    // data_mux_6_x(MUX,13)
    assign data_mux_6_x_s = sr_valid_q;
    always @(data_mux_6_x_s or in_i_data_6_tpl or sr_6_x_q)
    begin
        unique case (data_mux_6_x_s)
            1'b0 : data_mux_6_x_q = in_i_data_6_tpl;
            1'b1 : data_mux_6_x_q = sr_6_x_q;
            default : data_mux_6_x_q = 32'b0;
        endcase
    end

    // out_o_data_6_tpl(GPOUT,91)
    assign out_o_data_6_tpl = data_mux_6_x_q;

    // sr_7_x(REG,129)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            sr_7_x_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (not_sr_valid_q == 1'b1)
        begin
            sr_7_x_q <= in_i_data_7_tpl;
        end
    end

    // data_mux_7_x(MUX,14)
    assign data_mux_7_x_s = sr_valid_q;
    always @(data_mux_7_x_s or in_i_data_7_tpl or sr_7_x_q)
    begin
        unique case (data_mux_7_x_s)
            1'b0 : data_mux_7_x_q = in_i_data_7_tpl;
            1'b1 : data_mux_7_x_q = sr_7_x_q;
            default : data_mux_7_x_q = 32'b0;
        endcase
    end

    // out_o_data_7_tpl(GPOUT,92)
    assign out_o_data_7_tpl = data_mux_7_x_q;

    // sr_8_x(REG,130)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            sr_8_x_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (not_sr_valid_q == 1'b1)
        begin
            sr_8_x_q <= in_i_data_8_tpl;
        end
    end

    // data_mux_8_x(MUX,15)
    assign data_mux_8_x_s = sr_valid_q;
    always @(data_mux_8_x_s or in_i_data_8_tpl or sr_8_x_q)
    begin
        unique case (data_mux_8_x_s)
            1'b0 : data_mux_8_x_q = in_i_data_8_tpl;
            1'b1 : data_mux_8_x_q = sr_8_x_q;
            default : data_mux_8_x_q = 32'b0;
        endcase
    end

    // out_o_data_8_tpl(GPOUT,93)
    assign out_o_data_8_tpl = data_mux_8_x_q;

    // sr_9_x(REG,131)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            sr_9_x_q <= $unsigned(1'b0);
        end
        else if (not_sr_valid_q == 1'b1)
        begin
            sr_9_x_q <= in_i_data_9_tpl;
        end
    end

    // data_mux_9_x(MUX,16)
    assign data_mux_9_x_s = sr_valid_q;
    always @(data_mux_9_x_s or in_i_data_9_tpl or sr_9_x_q)
    begin
        unique case (data_mux_9_x_s)
            1'b0 : data_mux_9_x_q = in_i_data_9_tpl;
            1'b1 : data_mux_9_x_q = sr_9_x_q;
            default : data_mux_9_x_q = 1'b0;
        endcase
    end

    // out_o_data_9_tpl(GPOUT,94)
    assign out_o_data_9_tpl = data_mux_9_x_q;

    // sr_10_x(REG,132)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            sr_10_x_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (not_sr_valid_q == 1'b1)
        begin
            sr_10_x_q <= $unsigned(in_i_data_10_tpl);
        end
    end

    // data_mux_10_x(MUX,17)
    assign data_mux_10_x_s = sr_valid_q;
    always @(data_mux_10_x_s or in_i_data_10_tpl or sr_10_x_q)
    begin
        unique case (data_mux_10_x_s)
            1'b0 : data_mux_10_x_q = in_i_data_10_tpl;
            1'b1 : data_mux_10_x_q = sr_10_x_q;
            default : data_mux_10_x_q = 32'b0;
        endcase
    end

    // out_o_data_10_tpl(GPOUT,95)
    assign out_o_data_10_tpl = data_mux_10_x_q;

    // sr_11_x(REG,133)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            sr_11_x_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (not_sr_valid_q == 1'b1)
        begin
            sr_11_x_q <= $unsigned(in_i_data_11_tpl);
        end
    end

    // data_mux_11_x(MUX,18)
    assign data_mux_11_x_s = sr_valid_q;
    always @(data_mux_11_x_s or in_i_data_11_tpl or sr_11_x_q)
    begin
        unique case (data_mux_11_x_s)
            1'b0 : data_mux_11_x_q = in_i_data_11_tpl;
            1'b1 : data_mux_11_x_q = sr_11_x_q;
            default : data_mux_11_x_q = 32'b0;
        endcase
    end

    // out_o_data_11_tpl(GPOUT,96)
    assign out_o_data_11_tpl = data_mux_11_x_q;

    // sr_12_x(REG,134)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            sr_12_x_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (not_sr_valid_q == 1'b1)
        begin
            sr_12_x_q <= $unsigned(in_i_data_12_tpl);
        end
    end

    // data_mux_12_x(MUX,19)
    assign data_mux_12_x_s = sr_valid_q;
    always @(data_mux_12_x_s or in_i_data_12_tpl or sr_12_x_q)
    begin
        unique case (data_mux_12_x_s)
            1'b0 : data_mux_12_x_q = in_i_data_12_tpl;
            1'b1 : data_mux_12_x_q = sr_12_x_q;
            default : data_mux_12_x_q = 32'b0;
        endcase
    end

    // out_o_data_12_tpl(GPOUT,97)
    assign out_o_data_12_tpl = data_mux_12_x_q;

    // sr_13_x(REG,135)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            sr_13_x_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (not_sr_valid_q == 1'b1)
        begin
            sr_13_x_q <= $unsigned(in_i_data_13_tpl);
        end
    end

    // data_mux_13_x(MUX,20)
    assign data_mux_13_x_s = sr_valid_q;
    always @(data_mux_13_x_s or in_i_data_13_tpl or sr_13_x_q)
    begin
        unique case (data_mux_13_x_s)
            1'b0 : data_mux_13_x_q = in_i_data_13_tpl;
            1'b1 : data_mux_13_x_q = sr_13_x_q;
            default : data_mux_13_x_q = 32'b0;
        endcase
    end

    // out_o_data_13_tpl(GPOUT,98)
    assign out_o_data_13_tpl = data_mux_13_x_q;

    // sr_14_x(REG,136)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            sr_14_x_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (not_sr_valid_q == 1'b1)
        begin
            sr_14_x_q <= $unsigned(in_i_data_14_tpl);
        end
    end

    // data_mux_14_x(MUX,21)
    assign data_mux_14_x_s = sr_valid_q;
    always @(data_mux_14_x_s or in_i_data_14_tpl or sr_14_x_q)
    begin
        unique case (data_mux_14_x_s)
            1'b0 : data_mux_14_x_q = in_i_data_14_tpl;
            1'b1 : data_mux_14_x_q = sr_14_x_q;
            default : data_mux_14_x_q = 32'b0;
        endcase
    end

    // out_o_data_14_tpl(GPOUT,99)
    assign out_o_data_14_tpl = data_mux_14_x_q;

    // sr_15_x(REG,137)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            sr_15_x_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (not_sr_valid_q == 1'b1)
        begin
            sr_15_x_q <= $unsigned(in_i_data_15_tpl);
        end
    end

    // data_mux_15_x(MUX,22)
    assign data_mux_15_x_s = sr_valid_q;
    always @(data_mux_15_x_s or in_i_data_15_tpl or sr_15_x_q)
    begin
        unique case (data_mux_15_x_s)
            1'b0 : data_mux_15_x_q = in_i_data_15_tpl;
            1'b1 : data_mux_15_x_q = sr_15_x_q;
            default : data_mux_15_x_q = 32'b0;
        endcase
    end

    // out_o_data_15_tpl(GPOUT,100)
    assign out_o_data_15_tpl = data_mux_15_x_q;

    // sr_16_x(REG,138)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            sr_16_x_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (not_sr_valid_q == 1'b1)
        begin
            sr_16_x_q <= $unsigned(in_i_data_16_tpl);
        end
    end

    // data_mux_16_x(MUX,23)
    assign data_mux_16_x_s = sr_valid_q;
    always @(data_mux_16_x_s or in_i_data_16_tpl or sr_16_x_q)
    begin
        unique case (data_mux_16_x_s)
            1'b0 : data_mux_16_x_q = in_i_data_16_tpl;
            1'b1 : data_mux_16_x_q = sr_16_x_q;
            default : data_mux_16_x_q = 32'b0;
        endcase
    end

    // out_o_data_16_tpl(GPOUT,101)
    assign out_o_data_16_tpl = data_mux_16_x_q;

    // sr_17_x(REG,139)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            sr_17_x_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (not_sr_valid_q == 1'b1)
        begin
            sr_17_x_q <= $unsigned(in_i_data_17_tpl);
        end
    end

    // data_mux_17_x(MUX,24)
    assign data_mux_17_x_s = sr_valid_q;
    always @(data_mux_17_x_s or in_i_data_17_tpl or sr_17_x_q)
    begin
        unique case (data_mux_17_x_s)
            1'b0 : data_mux_17_x_q = in_i_data_17_tpl;
            1'b1 : data_mux_17_x_q = sr_17_x_q;
            default : data_mux_17_x_q = 32'b0;
        endcase
    end

    // out_o_data_17_tpl(GPOUT,102)
    assign out_o_data_17_tpl = data_mux_17_x_q;

    // sr_18_x(REG,140)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            sr_18_x_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (not_sr_valid_q == 1'b1)
        begin
            sr_18_x_q <= $unsigned(in_i_data_18_tpl);
        end
    end

    // data_mux_18_x(MUX,25)
    assign data_mux_18_x_s = sr_valid_q;
    always @(data_mux_18_x_s or in_i_data_18_tpl or sr_18_x_q)
    begin
        unique case (data_mux_18_x_s)
            1'b0 : data_mux_18_x_q = in_i_data_18_tpl;
            1'b1 : data_mux_18_x_q = sr_18_x_q;
            default : data_mux_18_x_q = 32'b0;
        endcase
    end

    // out_o_data_18_tpl(GPOUT,103)
    assign out_o_data_18_tpl = data_mux_18_x_q;

    // sr_19_x(REG,141)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            sr_19_x_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (not_sr_valid_q == 1'b1)
        begin
            sr_19_x_q <= $unsigned(in_i_data_19_tpl);
        end
    end

    // data_mux_19_x(MUX,26)
    assign data_mux_19_x_s = sr_valid_q;
    always @(data_mux_19_x_s or in_i_data_19_tpl or sr_19_x_q)
    begin
        unique case (data_mux_19_x_s)
            1'b0 : data_mux_19_x_q = in_i_data_19_tpl;
            1'b1 : data_mux_19_x_q = sr_19_x_q;
            default : data_mux_19_x_q = 32'b0;
        endcase
    end

    // out_o_data_19_tpl(GPOUT,104)
    assign out_o_data_19_tpl = data_mux_19_x_q;

    // sr_20_x(REG,142)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            sr_20_x_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (not_sr_valid_q == 1'b1)
        begin
            sr_20_x_q <= $unsigned(in_i_data_20_tpl);
        end
    end

    // data_mux_20_x(MUX,27)
    assign data_mux_20_x_s = sr_valid_q;
    always @(data_mux_20_x_s or in_i_data_20_tpl or sr_20_x_q)
    begin
        unique case (data_mux_20_x_s)
            1'b0 : data_mux_20_x_q = in_i_data_20_tpl;
            1'b1 : data_mux_20_x_q = sr_20_x_q;
            default : data_mux_20_x_q = 32'b0;
        endcase
    end

    // out_o_data_20_tpl(GPOUT,105)
    assign out_o_data_20_tpl = data_mux_20_x_q;

    // sr_21_x(REG,143)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            sr_21_x_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (not_sr_valid_q == 1'b1)
        begin
            sr_21_x_q <= $unsigned(in_i_data_21_tpl);
        end
    end

    // data_mux_21_x(MUX,28)
    assign data_mux_21_x_s = sr_valid_q;
    always @(data_mux_21_x_s or in_i_data_21_tpl or sr_21_x_q)
    begin
        unique case (data_mux_21_x_s)
            1'b0 : data_mux_21_x_q = in_i_data_21_tpl;
            1'b1 : data_mux_21_x_q = sr_21_x_q;
            default : data_mux_21_x_q = 32'b0;
        endcase
    end

    // out_o_data_21_tpl(GPOUT,106)
    assign out_o_data_21_tpl = data_mux_21_x_q;

    // sr_22_x(REG,144)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            sr_22_x_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (not_sr_valid_q == 1'b1)
        begin
            sr_22_x_q <= $unsigned(in_i_data_22_tpl);
        end
    end

    // data_mux_22_x(MUX,29)
    assign data_mux_22_x_s = sr_valid_q;
    always @(data_mux_22_x_s or in_i_data_22_tpl or sr_22_x_q)
    begin
        unique case (data_mux_22_x_s)
            1'b0 : data_mux_22_x_q = in_i_data_22_tpl;
            1'b1 : data_mux_22_x_q = sr_22_x_q;
            default : data_mux_22_x_q = 32'b0;
        endcase
    end

    // out_o_data_22_tpl(GPOUT,107)
    assign out_o_data_22_tpl = data_mux_22_x_q;

    // sr_23_x(REG,145)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            sr_23_x_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (not_sr_valid_q == 1'b1)
        begin
            sr_23_x_q <= $unsigned(in_i_data_23_tpl);
        end
    end

    // data_mux_23_x(MUX,30)
    assign data_mux_23_x_s = sr_valid_q;
    always @(data_mux_23_x_s or in_i_data_23_tpl or sr_23_x_q)
    begin
        unique case (data_mux_23_x_s)
            1'b0 : data_mux_23_x_q = in_i_data_23_tpl;
            1'b1 : data_mux_23_x_q = sr_23_x_q;
            default : data_mux_23_x_q = 32'b0;
        endcase
    end

    // out_o_data_23_tpl(GPOUT,108)
    assign out_o_data_23_tpl = data_mux_23_x_q;

    // sr_24_x(REG,146)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            sr_24_x_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (not_sr_valid_q == 1'b1)
        begin
            sr_24_x_q <= $unsigned(in_i_data_24_tpl);
        end
    end

    // data_mux_24_x(MUX,31)
    assign data_mux_24_x_s = sr_valid_q;
    always @(data_mux_24_x_s or in_i_data_24_tpl or sr_24_x_q)
    begin
        unique case (data_mux_24_x_s)
            1'b0 : data_mux_24_x_q = in_i_data_24_tpl;
            1'b1 : data_mux_24_x_q = sr_24_x_q;
            default : data_mux_24_x_q = 32'b0;
        endcase
    end

    // out_o_data_24_tpl(GPOUT,109)
    assign out_o_data_24_tpl = data_mux_24_x_q;

    // sr_25_x(REG,147)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            sr_25_x_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (not_sr_valid_q == 1'b1)
        begin
            sr_25_x_q <= $unsigned(in_i_data_25_tpl);
        end
    end

    // data_mux_25_x(MUX,32)
    assign data_mux_25_x_s = sr_valid_q;
    always @(data_mux_25_x_s or in_i_data_25_tpl or sr_25_x_q)
    begin
        unique case (data_mux_25_x_s)
            1'b0 : data_mux_25_x_q = in_i_data_25_tpl;
            1'b1 : data_mux_25_x_q = sr_25_x_q;
            default : data_mux_25_x_q = 32'b0;
        endcase
    end

    // out_o_data_25_tpl(GPOUT,110)
    assign out_o_data_25_tpl = data_mux_25_x_q;

    // sr_26_x(REG,148)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            sr_26_x_q <= $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (not_sr_valid_q == 1'b1)
        begin
            sr_26_x_q <= in_i_data_26_tpl;
        end
    end

    // data_mux_26_x(MUX,33)
    assign data_mux_26_x_s = sr_valid_q;
    always @(data_mux_26_x_s or in_i_data_26_tpl or sr_26_x_q)
    begin
        unique case (data_mux_26_x_s)
            1'b0 : data_mux_26_x_q = in_i_data_26_tpl;
            1'b1 : data_mux_26_x_q = sr_26_x_q;
            default : data_mux_26_x_q = 64'b0;
        endcase
    end

    // out_o_data_26_tpl(GPOUT,111)
    assign out_o_data_26_tpl = data_mux_26_x_q;

    // sr_27_x(REG,149)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            sr_27_x_q <= $unsigned(1'b0);
        end
        else if (not_sr_valid_q == 1'b1)
        begin
            sr_27_x_q <= in_i_data_27_tpl;
        end
    end

    // data_mux_27_x(MUX,34)
    assign data_mux_27_x_s = sr_valid_q;
    always @(data_mux_27_x_s or in_i_data_27_tpl or sr_27_x_q)
    begin
        unique case (data_mux_27_x_s)
            1'b0 : data_mux_27_x_q = in_i_data_27_tpl;
            1'b1 : data_mux_27_x_q = sr_27_x_q;
            default : data_mux_27_x_q = 1'b0;
        endcase
    end

    // out_o_data_27_tpl(GPOUT,112)
    assign out_o_data_27_tpl = data_mux_27_x_q;

    // sr_28_x(REG,150)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            sr_28_x_q <= $unsigned(1'b0);
        end
        else if (not_sr_valid_q == 1'b1)
        begin
            sr_28_x_q <= in_i_data_28_tpl;
        end
    end

    // data_mux_28_x(MUX,35)
    assign data_mux_28_x_s = sr_valid_q;
    always @(data_mux_28_x_s or in_i_data_28_tpl or sr_28_x_q)
    begin
        unique case (data_mux_28_x_s)
            1'b0 : data_mux_28_x_q = in_i_data_28_tpl;
            1'b1 : data_mux_28_x_q = sr_28_x_q;
            default : data_mux_28_x_q = 1'b0;
        endcase
    end

    // out_o_data_28_tpl(GPOUT,113)
    assign out_o_data_28_tpl = data_mux_28_x_q;

    // sr_29_x(REG,151)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            sr_29_x_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (not_sr_valid_q == 1'b1)
        begin
            sr_29_x_q <= in_i_data_29_tpl;
        end
    end

    // data_mux_29_x(MUX,36)
    assign data_mux_29_x_s = sr_valid_q;
    always @(data_mux_29_x_s or in_i_data_29_tpl or sr_29_x_q)
    begin
        unique case (data_mux_29_x_s)
            1'b0 : data_mux_29_x_q = in_i_data_29_tpl;
            1'b1 : data_mux_29_x_q = sr_29_x_q;
            default : data_mux_29_x_q = 32'b0;
        endcase
    end

    // out_o_data_29_tpl(GPOUT,114)
    assign out_o_data_29_tpl = data_mux_29_x_q;

    // sr_30_x(REG,152)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            sr_30_x_q <= $unsigned(1'b0);
        end
        else if (not_sr_valid_q == 1'b1)
        begin
            sr_30_x_q <= in_i_data_30_tpl;
        end
    end

    // data_mux_30_x(MUX,37)
    assign data_mux_30_x_s = sr_valid_q;
    always @(data_mux_30_x_s or in_i_data_30_tpl or sr_30_x_q)
    begin
        unique case (data_mux_30_x_s)
            1'b0 : data_mux_30_x_q = in_i_data_30_tpl;
            1'b1 : data_mux_30_x_q = sr_30_x_q;
            default : data_mux_30_x_q = 1'b0;
        endcase
    end

    // out_o_data_30_tpl(GPOUT,115)
    assign out_o_data_30_tpl = data_mux_30_x_q;

    // sr_31_x(REG,153)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            sr_31_x_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (not_sr_valid_q == 1'b1)
        begin
            sr_31_x_q <= $unsigned(in_i_data_31_tpl);
        end
    end

    // data_mux_31_x(MUX,38)
    assign data_mux_31_x_s = sr_valid_q;
    always @(data_mux_31_x_s or in_i_data_31_tpl or sr_31_x_q)
    begin
        unique case (data_mux_31_x_s)
            1'b0 : data_mux_31_x_q = in_i_data_31_tpl;
            1'b1 : data_mux_31_x_q = sr_31_x_q;
            default : data_mux_31_x_q = 32'b0;
        endcase
    end

    // out_o_data_31_tpl(GPOUT,116)
    assign out_o_data_31_tpl = data_mux_31_x_q;

    // sr_32_x(REG,154)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            sr_32_x_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (not_sr_valid_q == 1'b1)
        begin
            sr_32_x_q <= in_i_data_32_tpl;
        end
    end

    // data_mux_32_x(MUX,39)
    assign data_mux_32_x_s = sr_valid_q;
    always @(data_mux_32_x_s or in_i_data_32_tpl or sr_32_x_q)
    begin
        unique case (data_mux_32_x_s)
            1'b0 : data_mux_32_x_q = in_i_data_32_tpl;
            1'b1 : data_mux_32_x_q = sr_32_x_q;
            default : data_mux_32_x_q = 32'b0;
        endcase
    end

    // out_o_data_32_tpl(GPOUT,117)
    assign out_o_data_32_tpl = data_mux_32_x_q;

    // sr_33_x(REG,155)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            sr_33_x_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (not_sr_valid_q == 1'b1)
        begin
            sr_33_x_q <= in_i_data_33_tpl;
        end
    end

    // data_mux_33_x(MUX,40)
    assign data_mux_33_x_s = sr_valid_q;
    always @(data_mux_33_x_s or in_i_data_33_tpl or sr_33_x_q)
    begin
        unique case (data_mux_33_x_s)
            1'b0 : data_mux_33_x_q = in_i_data_33_tpl;
            1'b1 : data_mux_33_x_q = sr_33_x_q;
            default : data_mux_33_x_q = 32'b0;
        endcase
    end

    // out_o_data_33_tpl(GPOUT,118)
    assign out_o_data_33_tpl = data_mux_33_x_q;

    // sr_34_x(REG,156)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            sr_34_x_q <= $unsigned(1'b0);
        end
        else if (not_sr_valid_q == 1'b1)
        begin
            sr_34_x_q <= in_i_data_34_tpl;
        end
    end

    // data_mux_34_x(MUX,41)
    assign data_mux_34_x_s = sr_valid_q;
    always @(data_mux_34_x_s or in_i_data_34_tpl or sr_34_x_q)
    begin
        unique case (data_mux_34_x_s)
            1'b0 : data_mux_34_x_q = in_i_data_34_tpl;
            1'b1 : data_mux_34_x_q = sr_34_x_q;
            default : data_mux_34_x_q = 1'b0;
        endcase
    end

    // out_o_data_34_tpl(GPOUT,119)
    assign out_o_data_34_tpl = data_mux_34_x_q;

    // sr_35_x(REG,157)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            sr_35_x_q <= $unsigned(1'b0);
        end
        else if (not_sr_valid_q == 1'b1)
        begin
            sr_35_x_q <= in_i_data_35_tpl;
        end
    end

    // data_mux_35_x(MUX,42)
    assign data_mux_35_x_s = sr_valid_q;
    always @(data_mux_35_x_s or in_i_data_35_tpl or sr_35_x_q)
    begin
        unique case (data_mux_35_x_s)
            1'b0 : data_mux_35_x_q = in_i_data_35_tpl;
            1'b1 : data_mux_35_x_q = sr_35_x_q;
            default : data_mux_35_x_q = 1'b0;
        endcase
    end

    // out_o_data_35_tpl(GPOUT,120)
    assign out_o_data_35_tpl = data_mux_35_x_q;

    // sr_36_x(REG,158)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            sr_36_x_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (not_sr_valid_q == 1'b1)
        begin
            sr_36_x_q <= in_i_data_36_tpl;
        end
    end

    // data_mux_36_x(MUX,43)
    assign data_mux_36_x_s = sr_valid_q;
    always @(data_mux_36_x_s or in_i_data_36_tpl or sr_36_x_q)
    begin
        unique case (data_mux_36_x_s)
            1'b0 : data_mux_36_x_q = in_i_data_36_tpl;
            1'b1 : data_mux_36_x_q = sr_36_x_q;
            default : data_mux_36_x_q = 32'b0;
        endcase
    end

    // out_o_data_36_tpl(GPOUT,121)
    assign out_o_data_36_tpl = data_mux_36_x_q;

endmodule
