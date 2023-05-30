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

// SystemVerilog created from conv2d3x3_i_sfc_logic_s_c0_in_for_body250000ter227184_conv2d3x30
// SystemVerilog created on Tue May 30 12:30:48 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module conv2d3x3_i_sfc_logic_s_c0_in_for_body250000ter227184_conv2d3x30 (
    output wire [0:0] out_c0_exi1232_0_tpl,
    output wire [31:0] out_c0_exi1232_1_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_conv2d3x31,
    input wire [0:0] in_c0_eni4226_0_tpl,
    input wire [31:0] in_c0_eni4226_1_tpl,
    input wire [31:0] in_c0_eni4226_2_tpl,
    input wire [31:0] in_c0_eni4226_3_tpl,
    input wire [0:0] in_c0_eni4226_4_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [0:0] i_acl_16_conv2d3x33_s;
    reg [31:0] i_acl_16_conv2d3x33_q;
    wire [31:0] i_llvm_fpga_fp_multadd_mult_add24_conv2d3x32_out_primWireOut;
    reg [0:0] redist1_sync_together8_aunroll_x_in_c0_eni4226_4_tpl_4_q;
    reg [0:0] redist1_sync_together8_aunroll_x_in_c0_eni4226_4_tpl_4_delay_0;
    reg [0:0] redist1_sync_together8_aunroll_x_in_c0_eni4226_4_tpl_4_delay_1;
    reg [0:0] redist1_sync_together8_aunroll_x_in_c0_eni4226_4_tpl_4_delay_2;
    reg [0:0] redist2_sync_together8_aunroll_x_in_i_valid_4_q;
    reg [0:0] redist2_sync_together8_aunroll_x_in_i_valid_4_delay_0;
    reg [0:0] redist2_sync_together8_aunroll_x_in_i_valid_4_delay_1;
    reg [0:0] redist2_sync_together8_aunroll_x_in_i_valid_4_delay_2;
    reg [31:0] redist0_sync_together8_aunroll_x_in_c0_eni4226_1_tpl_4_outputreg0_q;
    wire redist0_sync_together8_aunroll_x_in_c0_eni4226_1_tpl_4_mem_reset0;
    wire [31:0] redist0_sync_together8_aunroll_x_in_c0_eni4226_1_tpl_4_mem_ia;
    wire [0:0] redist0_sync_together8_aunroll_x_in_c0_eni4226_1_tpl_4_mem_aa;
    wire [0:0] redist0_sync_together8_aunroll_x_in_c0_eni4226_1_tpl_4_mem_ab;
    wire [31:0] redist0_sync_together8_aunroll_x_in_c0_eni4226_1_tpl_4_mem_iq;
    wire [31:0] redist0_sync_together8_aunroll_x_in_c0_eni4226_1_tpl_4_mem_q;
    wire [0:0] redist0_sync_together8_aunroll_x_in_c0_eni4226_1_tpl_4_rdcnt_q;
    (* preserve *) reg [0:0] redist0_sync_together8_aunroll_x_in_c0_eni4226_1_tpl_4_rdcnt_i;
    reg [0:0] redist0_sync_together8_aunroll_x_in_c0_eni4226_1_tpl_4_wraddr_q;
    (* dont_merge *) reg [0:0] redist0_sync_together8_aunroll_x_in_c0_eni4226_1_tpl_4_cmpReg_q;
    wire [0:0] redist0_sync_together8_aunroll_x_in_c0_eni4226_1_tpl_4_notEnable_q;
    wire [0:0] redist0_sync_together8_aunroll_x_in_c0_eni4226_1_tpl_4_nor_q;
    (* dont_merge *) reg [0:0] redist0_sync_together8_aunroll_x_in_c0_eni4226_1_tpl_4_sticky_ena_q;
    wire [0:0] redist0_sync_together8_aunroll_x_in_c0_eni4226_1_tpl_4_enaAnd_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist2_sync_together8_aunroll_x_in_i_valid_4(DELAY,10)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_sync_together8_aunroll_x_in_i_valid_4_delay_0 <= '0;
            redist2_sync_together8_aunroll_x_in_i_valid_4_delay_1 <= '0;
            redist2_sync_together8_aunroll_x_in_i_valid_4_delay_2 <= '0;
            redist2_sync_together8_aunroll_x_in_i_valid_4_q <= '0;
        end
        else
        begin
            redist2_sync_together8_aunroll_x_in_i_valid_4_delay_0 <= $unsigned(in_i_valid);
            redist2_sync_together8_aunroll_x_in_i_valid_4_delay_1 <= redist2_sync_together8_aunroll_x_in_i_valid_4_delay_0;
            redist2_sync_together8_aunroll_x_in_i_valid_4_delay_2 <= redist2_sync_together8_aunroll_x_in_i_valid_4_delay_1;
            redist2_sync_together8_aunroll_x_in_i_valid_4_q <= redist2_sync_together8_aunroll_x_in_i_valid_4_delay_2;
        end
    end

    // i_llvm_fpga_fp_multadd_mult_add24_conv2d3x32(BLACKBOX,4)@243
    // out out_primWireOut@247
    conv2d3x3_flt_i_sfc_logic_s_c0_in_for_bo00005mx06of0cd16ok6cn30u thei_llvm_fpga_fp_multadd_mult_add24_conv2d3x32 (
        .in_0(in_c0_eni4226_2_tpl),
        .in_1(in_c0_eni4226_3_tpl),
        .in_2(in_c0_eni4226_1_tpl),
        .out_primWireOut(i_llvm_fpga_fp_multadd_mult_add24_conv2d3x32_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // redist0_sync_together8_aunroll_x_in_c0_eni4226_1_tpl_4_notEnable(LOGICAL,16)
    assign redist0_sync_together8_aunroll_x_in_c0_eni4226_1_tpl_4_notEnable_q = $unsigned(~ (VCC_q));

    // redist0_sync_together8_aunroll_x_in_c0_eni4226_1_tpl_4_nor(LOGICAL,17)
    assign redist0_sync_together8_aunroll_x_in_c0_eni4226_1_tpl_4_nor_q = ~ (redist0_sync_together8_aunroll_x_in_c0_eni4226_1_tpl_4_notEnable_q | redist0_sync_together8_aunroll_x_in_c0_eni4226_1_tpl_4_sticky_ena_q);

    // redist0_sync_together8_aunroll_x_in_c0_eni4226_1_tpl_4_cmpReg(REG,15)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_sync_together8_aunroll_x_in_c0_eni4226_1_tpl_4_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist0_sync_together8_aunroll_x_in_c0_eni4226_1_tpl_4_cmpReg_q <= $unsigned(VCC_q);
        end
    end

    // redist0_sync_together8_aunroll_x_in_c0_eni4226_1_tpl_4_sticky_ena(REG,18)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_sync_together8_aunroll_x_in_c0_eni4226_1_tpl_4_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist0_sync_together8_aunroll_x_in_c0_eni4226_1_tpl_4_nor_q == 1'b1)
        begin
            redist0_sync_together8_aunroll_x_in_c0_eni4226_1_tpl_4_sticky_ena_q <= $unsigned(redist0_sync_together8_aunroll_x_in_c0_eni4226_1_tpl_4_cmpReg_q);
        end
    end

    // redist0_sync_together8_aunroll_x_in_c0_eni4226_1_tpl_4_enaAnd(LOGICAL,19)
    assign redist0_sync_together8_aunroll_x_in_c0_eni4226_1_tpl_4_enaAnd_q = redist0_sync_together8_aunroll_x_in_c0_eni4226_1_tpl_4_sticky_ena_q & VCC_q;

    // redist0_sync_together8_aunroll_x_in_c0_eni4226_1_tpl_4_rdcnt(COUNTER,13)
    // low=0, high=1, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_sync_together8_aunroll_x_in_c0_eni4226_1_tpl_4_rdcnt_i <= 1'd0;
        end
        else
        begin
            redist0_sync_together8_aunroll_x_in_c0_eni4226_1_tpl_4_rdcnt_i <= $unsigned(redist0_sync_together8_aunroll_x_in_c0_eni4226_1_tpl_4_rdcnt_i) + $unsigned(1'd1);
        end
    end
    assign redist0_sync_together8_aunroll_x_in_c0_eni4226_1_tpl_4_rdcnt_q = redist0_sync_together8_aunroll_x_in_c0_eni4226_1_tpl_4_rdcnt_i[0:0];

    // redist0_sync_together8_aunroll_x_in_c0_eni4226_1_tpl_4_wraddr(REG,14)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_sync_together8_aunroll_x_in_c0_eni4226_1_tpl_4_wraddr_q <= $unsigned(1'b1);
        end
        else
        begin
            redist0_sync_together8_aunroll_x_in_c0_eni4226_1_tpl_4_wraddr_q <= $unsigned(redist0_sync_together8_aunroll_x_in_c0_eni4226_1_tpl_4_rdcnt_q);
        end
    end

    // redist0_sync_together8_aunroll_x_in_c0_eni4226_1_tpl_4_mem(DUALMEM,12)
    assign redist0_sync_together8_aunroll_x_in_c0_eni4226_1_tpl_4_mem_ia = $unsigned(in_c0_eni4226_1_tpl);
    assign redist0_sync_together8_aunroll_x_in_c0_eni4226_1_tpl_4_mem_aa = redist0_sync_together8_aunroll_x_in_c0_eni4226_1_tpl_4_wraddr_q;
    assign redist0_sync_together8_aunroll_x_in_c0_eni4226_1_tpl_4_mem_ab = redist0_sync_together8_aunroll_x_in_c0_eni4226_1_tpl_4_rdcnt_q;
    assign redist0_sync_together8_aunroll_x_in_c0_eni4226_1_tpl_4_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(1),
        .numwords_a(2),
        .width_b(32),
        .widthad_b(1),
        .numwords_b(2),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .address_reg_b("CLOCK0"),
        .indata_reg_b("CLOCK0"),
        .rdcontrol_reg_b("CLOCK0"),
        .byteena_reg_b("CLOCK0"),
        .outdata_reg_b("CLOCK1"),
        .outdata_aclr_b("CLEAR1"),
        .clock_enable_input_a("NORMAL"),
        .clock_enable_input_b("NORMAL"),
        .clock_enable_output_b("NORMAL"),
        .read_during_write_mode_mixed_ports("DONT_CARE"),
        .power_up_uninitialized("TRUE"),
        .intended_device_family("Arria 10")
    ) redist0_sync_together8_aunroll_x_in_c0_eni4226_1_tpl_4_mem_dmem (
        .clocken1(redist0_sync_together8_aunroll_x_in_c0_eni4226_1_tpl_4_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist0_sync_together8_aunroll_x_in_c0_eni4226_1_tpl_4_mem_reset0),
        .clock1(clock),
        .address_a(redist0_sync_together8_aunroll_x_in_c0_eni4226_1_tpl_4_mem_aa),
        .data_a(redist0_sync_together8_aunroll_x_in_c0_eni4226_1_tpl_4_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist0_sync_together8_aunroll_x_in_c0_eni4226_1_tpl_4_mem_ab),
        .q_b(redist0_sync_together8_aunroll_x_in_c0_eni4226_1_tpl_4_mem_iq),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_b(),
        .clocken2(),
        .clocken3(),
        .aclr0(),
        .addressstall_a(),
        .addressstall_b(),
        .byteena_a(),
        .byteena_b(),
        .eccencbypass(),
        .eccencparity(),
        .sclr(),
        .address2_a(),
        .address2_b(),
        .q_a(),
        .eccstatus()
    );
    assign redist0_sync_together8_aunroll_x_in_c0_eni4226_1_tpl_4_mem_q = redist0_sync_together8_aunroll_x_in_c0_eni4226_1_tpl_4_mem_iq[31:0];

    // redist0_sync_together8_aunroll_x_in_c0_eni4226_1_tpl_4_outputreg0(DELAY,11)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_sync_together8_aunroll_x_in_c0_eni4226_1_tpl_4_outputreg0_q <= '0;
        end
        else
        begin
            redist0_sync_together8_aunroll_x_in_c0_eni4226_1_tpl_4_outputreg0_q <= $unsigned(redist0_sync_together8_aunroll_x_in_c0_eni4226_1_tpl_4_mem_q);
        end
    end

    // redist1_sync_together8_aunroll_x_in_c0_eni4226_4_tpl_4(DELAY,9)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together8_aunroll_x_in_c0_eni4226_4_tpl_4_delay_0 <= '0;
            redist1_sync_together8_aunroll_x_in_c0_eni4226_4_tpl_4_delay_1 <= '0;
            redist1_sync_together8_aunroll_x_in_c0_eni4226_4_tpl_4_delay_2 <= '0;
            redist1_sync_together8_aunroll_x_in_c0_eni4226_4_tpl_4_q <= '0;
        end
        else
        begin
            redist1_sync_together8_aunroll_x_in_c0_eni4226_4_tpl_4_delay_0 <= $unsigned(in_c0_eni4226_4_tpl);
            redist1_sync_together8_aunroll_x_in_c0_eni4226_4_tpl_4_delay_1 <= redist1_sync_together8_aunroll_x_in_c0_eni4226_4_tpl_4_delay_0;
            redist1_sync_together8_aunroll_x_in_c0_eni4226_4_tpl_4_delay_2 <= redist1_sync_together8_aunroll_x_in_c0_eni4226_4_tpl_4_delay_1;
            redist1_sync_together8_aunroll_x_in_c0_eni4226_4_tpl_4_q <= redist1_sync_together8_aunroll_x_in_c0_eni4226_4_tpl_4_delay_2;
        end
    end

    // i_acl_16_conv2d3x33(MUX,3)@247
    assign i_acl_16_conv2d3x33_s = redist1_sync_together8_aunroll_x_in_c0_eni4226_4_tpl_4_q;
    always @(i_acl_16_conv2d3x33_s or redist0_sync_together8_aunroll_x_in_c0_eni4226_1_tpl_4_outputreg0_q or i_llvm_fpga_fp_multadd_mult_add24_conv2d3x32_out_primWireOut)
    begin
        unique case (i_acl_16_conv2d3x33_s)
            1'b0 : i_acl_16_conv2d3x33_q = redist0_sync_together8_aunroll_x_in_c0_eni4226_1_tpl_4_outputreg0_q;
            1'b1 : i_acl_16_conv2d3x33_q = i_llvm_fpga_fp_multadd_mult_add24_conv2d3x32_out_primWireOut;
            default : i_acl_16_conv2d3x33_q = 32'b0;
        endcase
    end

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // sync_out_aunroll_x(GPOUT,6)@247
    assign out_c0_exi1232_0_tpl = GND_q;
    assign out_c0_exi1232_1_tpl = i_acl_16_conv2d3x33_q;
    assign out_o_valid = redist2_sync_together8_aunroll_x_in_i_valid_4_q;
    assign out_unnamed_conv2d3x31 = GND_q;

endmodule
