package require -exact qsys 14.0
set_module_property NAME acc_unopt_sys
set_module_property VERSION 14.0
set_module_property INTERNAL false
set_module_property GROUP Accelerators
set_module_property DISPLAY_NAME acc_unopt_sys
set_module_property INSTANTIATE_IN_SYSTEM_MODULE true
set_module_property EDITABLE true

add_interface clock_reset clock end
set_interface_property clock_reset ENABLED true
add_interface_port clock_reset clock clk Input 1
add_interface_port clock_reset resetn reset_n Input 1
add_interface clock_reset2x clock end
set_interface_property clock_reset2x ENABLED true
add_interface_port clock_reset2x clock2x clk Input 1

#### IRQ interfaces kernel_irq
add_interface kernel_irq interrupt end
set_interface_property kernel_irq ENABLED true
set_interface_property kernel_irq associatedClock clock_reset
add_interface_port kernel_irq kernel_irq irq output 1

#### Master interface avm_mem_gmem0_DDR_port_0_0_rw with base address 0
add_interface avm_mem_gmem0_DDR_port_0_0_rw avalon start
set_interface_property avm_mem_gmem0_DDR_port_0_0_rw ENABLED true
set_interface_property avm_mem_gmem0_DDR_port_0_0_rw associatedClock clock_reset
set_interface_property avm_mem_gmem0_DDR_port_0_0_rw burstOnBurstBoundariesOnly false
set_interface_property avm_mem_gmem0_DDR_port_0_0_rw doStreamReads false
set_interface_property avm_mem_gmem0_DDR_port_0_0_rw doStreamWrites false
set_interface_property avm_mem_gmem0_DDR_port_0_0_rw linewrapBursts false
set_interface_property avm_mem_gmem0_DDR_port_0_0_rw readWaitTime 0
add_interface_port avm_mem_gmem0_DDR_port_0_0_rw avm_mem_gmem0_DDR_port_0_0_rw_address address output 31
add_interface_port avm_mem_gmem0_DDR_port_0_0_rw avm_mem_gmem0_DDR_port_0_0_rw_byteenable byteenable output 64
add_interface_port avm_mem_gmem0_DDR_port_0_0_rw avm_mem_gmem0_DDR_port_0_0_rw_readdatavalid readdatavalid input 1
add_interface_port avm_mem_gmem0_DDR_port_0_0_rw avm_mem_gmem0_DDR_port_0_0_rw_read read output 1
add_interface_port avm_mem_gmem0_DDR_port_0_0_rw avm_mem_gmem0_DDR_port_0_0_rw_readdata readdata input 512
add_interface_port avm_mem_gmem0_DDR_port_0_0_rw avm_mem_gmem0_DDR_port_0_0_rw_write write output 1
add_interface_port avm_mem_gmem0_DDR_port_0_0_rw avm_mem_gmem0_DDR_port_0_0_rw_writedata writedata output 512
add_interface_port avm_mem_gmem0_DDR_port_0_0_rw avm_mem_gmem0_DDR_port_0_0_rw_waitrequest waitrequest input 1
add_interface_port avm_mem_gmem0_DDR_port_0_0_rw avm_mem_gmem0_DDR_port_0_0_rw_burstcount burstcount output 5

#### Slave interface cra_ring_root_avs
add_interface cra_ring_root_avs avalon end
set_interface_property cra_ring_root_avs ENABLED true
set_interface_property cra_ring_root_avs associatedClock clock_reset
set_interface_property cra_ring_root_avs addressAlignment DYNAMIC
set_interface_property cra_ring_root_avs burstOnBurstBoundariesOnly false
set_interface_property cra_ring_root_avs explicitAddressSpan 0
set_interface_property cra_ring_root_avs holdTime 0
set_interface_property cra_ring_root_avs isMemoryDevice false
set_interface_property cra_ring_root_avs isNonVolatileStorage false
set_interface_property cra_ring_root_avs linewrapBursts false
set_interface_property cra_ring_root_avs maximumPendingReadTransactions 1
set_interface_property cra_ring_root_avs printableDevice false
set_interface_property cra_ring_root_avs readLatency 0
set_interface_property cra_ring_root_avs readWaitTime 0
set_interface_property cra_ring_root_avs setupTime 0
set_interface_property cra_ring_root_avs timingUnits Cycles
set_interface_property cra_ring_root_avs writeWaitTime 0
set_interface_assignment cra_ring_root_avs hls.cosim.name {}
add_interface_port cra_ring_root_avs cra_ring_root_avs_read read input 1
add_interface_port cra_ring_root_avs cra_ring_root_avs_readdata readdata output 64
add_interface_port cra_ring_root_avs cra_ring_root_avs_readdatavalid readdatavalid output 1
add_interface_port cra_ring_root_avs cra_ring_root_avs_write write input 1
add_interface_port cra_ring_root_avs cra_ring_root_avs_writedata writedata input 64
add_interface_port cra_ring_root_avs cra_ring_root_avs_address address input 6
add_interface_port cra_ring_root_avs cra_ring_root_avs_byteenable byteenable input 8
add_interface_port cra_ring_root_avs cra_ring_root_avs_waitrequest waitrequest output 1

add_fileset QUARTUS_SYNTH QUARTUS_SYNTH "" ""
set_fileset_property QUARTUS_SYNTH TOP_LEVEL acc_unopt_sys
set_fileset_property QUARTUS_SYNTH ENABLE_RELATIVE_INCLUDE_PATHS false
add_fileset_file "acl_reset_handler.sv" SYSTEM_VERILOG PATH "$::env(INTELFPGAOCLSDKROOT)/ip/acl_reset_handler.sv" TOP_LEVEL_FILE
add_fileset_file "acl_work_group_dispatcher.v" SYSTEM_VERILOG PATH "$::env(INTELFPGAOCLSDKROOT)/ip/acl_work_group_dispatcher.v" TOP_LEVEL_FILE
add_fileset_file "acl_kernel_finish_detector.v" SYSTEM_VERILOG PATH "$::env(INTELFPGAOCLSDKROOT)/ip/acl_kernel_finish_detector.v" TOP_LEVEL_FILE
add_fileset_file "acl_multistage_accumulator.v" SYSTEM_VERILOG PATH "$::env(INTELFPGAOCLSDKROOT)/ip/acl_multistage_accumulator.v" TOP_LEVEL_FILE
add_fileset_file "acl_std_synchronizer_nocut.v" SYSTEM_VERILOG PATH "$::env(INTELFPGAOCLSDKROOT)/ip/acl_std_synchronizer_nocut.v" TOP_LEVEL_FILE
add_fileset_file "acl_fanout_pipeline.sv" SYSTEM_VERILOG PATH "$::env(INTELFPGAOCLSDKROOT)/ip/acl_fanout_pipeline.sv" TOP_LEVEL_FILE
add_fileset_file "acl_ecc_pkg.sv" SYSTEM_VERILOG PATH "$::env(INTELFPGAOCLSDKROOT)/ip/acl_ecc_pkg.sv" TOP_LEVEL_FILE
add_fileset_file "acl_id_iterator.v" SYSTEM_VERILOG PATH "$::env(INTELFPGAOCLSDKROOT)/ip/acl_id_iterator.v" TOP_LEVEL_FILE
add_fileset_file "acl_work_item_iterator.v" SYSTEM_VERILOG PATH "$::env(INTELFPGAOCLSDKROOT)/ip/acl_work_item_iterator.v" TOP_LEVEL_FILE
add_fileset_file "acl_multistage_adder.v" SYSTEM_VERILOG PATH "$::env(INTELFPGAOCLSDKROOT)/ip/acl_multistage_adder.v" TOP_LEVEL_FILE
add_fileset_file "acl_shift_register.v" SYSTEM_VERILOG PATH "$::env(INTELFPGAOCLSDKROOT)/ip/acl_shift_register.v" TOP_LEVEL_FILE
add_fileset_file "acl_fifo.v" SYSTEM_VERILOG PATH "$::env(INTELFPGAOCLSDKROOT)/ip/acl_fifo.v" TOP_LEVEL_FILE
add_fileset_file "acl_fifo_stall_valid_lookahead.sv" SYSTEM_VERILOG PATH "$::env(INTELFPGAOCLSDKROOT)/ip/acl_fifo_stall_valid_lookahead.sv" TOP_LEVEL_FILE
add_fileset_file "acl_scfifo_wrapped.sv" SYSTEM_VERILOG PATH "$::env(INTELFPGAOCLSDKROOT)/ip/acl_scfifo_wrapped.sv" TOP_LEVEL_FILE
add_fileset_file "acl_ecc_encoder.sv" SYSTEM_VERILOG PATH "$::env(INTELFPGAOCLSDKROOT)/ip/acl_ecc_encoder.sv" TOP_LEVEL_FILE
add_fileset_file "acl_ecc_decoder.sv" SYSTEM_VERILOG PATH "$::env(INTELFPGAOCLSDKROOT)/ip/acl_ecc_decoder.sv" TOP_LEVEL_FILE
add_fileset_file "acc_unopt_sys.v" SYSTEM_VERILOG PATH "acc_unopt_sys.v" TOP_LEVEL_FILE
add_fileset_file "dspba_library_ver.sv" SYSTEM_VERILOG PATH "$::env(INTELFPGAOCLSDKROOT)/linux64/lib/dspba/Libraries/sv/base/dspba_library_ver.sv" TOP_LEVEL_FILE
add_fileset_file "acl_data_fifo.v" SYSTEM_VERILOG PATH "$::env(INTELFPGAOCLSDKROOT)/ip/acl_data_fifo.v" TOP_LEVEL_FILE
add_fileset_file "acl_altera_syncram_wrapped.sv" SYSTEM_VERILOG PATH "$::env(INTELFPGAOCLSDKROOT)/ip/acl_altera_syncram_wrapped.sv" TOP_LEVEL_FILE
add_fileset_file "acl_ll_fifo.v" SYSTEM_VERILOG PATH "$::env(INTELFPGAOCLSDKROOT)/ip/acl_ll_fifo.v" TOP_LEVEL_FILE
add_fileset_file "acl_ll_ram_fifo.v" SYSTEM_VERILOG PATH "$::env(INTELFPGAOCLSDKROOT)/ip/acl_ll_ram_fifo.v" TOP_LEVEL_FILE
add_fileset_file "acl_valid_fifo_counter.v" SYSTEM_VERILOG PATH "$::env(INTELFPGAOCLSDKROOT)/ip/acl_valid_fifo_counter.v" TOP_LEVEL_FILE
add_fileset_file "acl_dspba_valid_fifo_counter.v" SYSTEM_VERILOG PATH "$::env(INTELFPGAOCLSDKROOT)/ip/acl_dspba_valid_fifo_counter.v" TOP_LEVEL_FILE
add_fileset_file "acl_staging_reg.v" SYSTEM_VERILOG PATH "$::env(INTELFPGAOCLSDKROOT)/ip/acl_staging_reg.v" TOP_LEVEL_FILE
add_fileset_file "hld_fifo.sv" SYSTEM_VERILOG PATH "$::env(INTELFPGAOCLSDKROOT)/ip/hld_fifo.sv" TOP_LEVEL_FILE
add_fileset_file "acl_mid_speed_fifo.sv" SYSTEM_VERILOG PATH "$::env(INTELFPGAOCLSDKROOT)/ip/acl_mid_speed_fifo.sv" TOP_LEVEL_FILE
add_fileset_file "acl_latency_one_ram_fifo.sv" SYSTEM_VERILOG PATH "$::env(INTELFPGAOCLSDKROOT)/ip/acl_latency_one_ram_fifo.sv" TOP_LEVEL_FILE
add_fileset_file "acl_latency_zero_ram_fifo.sv" SYSTEM_VERILOG PATH "$::env(INTELFPGAOCLSDKROOT)/ip/acl_latency_zero_ram_fifo.sv" TOP_LEVEL_FILE
add_fileset_file "hld_fifo_zero_width.sv" SYSTEM_VERILOG PATH "$::env(INTELFPGAOCLSDKROOT)/ip/hld_fifo_zero_width.sv" TOP_LEVEL_FILE
add_fileset_file "acl_high_speed_fifo.sv" SYSTEM_VERILOG PATH "$::env(INTELFPGAOCLSDKROOT)/ip/acl_high_speed_fifo.sv" TOP_LEVEL_FILE
add_fileset_file "acl_low_latency_fifo.sv" SYSTEM_VERILOG PATH "$::env(INTELFPGAOCLSDKROOT)/ip/acl_low_latency_fifo.sv" TOP_LEVEL_FILE
add_fileset_file "acl_zero_latency_fifo.sv" SYSTEM_VERILOG PATH "$::env(INTELFPGAOCLSDKROOT)/ip/acl_zero_latency_fifo.sv" TOP_LEVEL_FILE
add_fileset_file "acl_tessellated_incr_decr_threshold.sv" SYSTEM_VERILOG PATH "$::env(INTELFPGAOCLSDKROOT)/ip/acl_tessellated_incr_decr_threshold.sv" TOP_LEVEL_FILE
add_fileset_file "acl_tessellated_incr_lookahead.sv" SYSTEM_VERILOG PATH "$::env(INTELFPGAOCLSDKROOT)/ip/acl_tessellated_incr_lookahead.sv" TOP_LEVEL_FILE
add_fileset_file "acl_lfsr.sv" SYSTEM_VERILOG PATH "$::env(INTELFPGAOCLSDKROOT)/ip/acl_lfsr.sv" TOP_LEVEL_FILE
add_fileset_file "acl_mlab_fifo.sv" SYSTEM_VERILOG PATH "$::env(INTELFPGAOCLSDKROOT)/ip/acl_mlab_fifo.sv" TOP_LEVEL_FILE
add_fileset_file "acl_parameter_assert.svh" SYSTEM_VERILOG PATH "$::env(INTELFPGAOCLSDKROOT)/ip/acl_parameter_assert.svh" TOP_LEVEL_FILE
add_fileset_file "acl_pop.v" SYSTEM_VERILOG PATH "$::env(INTELFPGAOCLSDKROOT)/ip/acl_pop.v" TOP_LEVEL_FILE
add_fileset_file "acl_dspba_buffer.v" SYSTEM_VERILOG PATH "$::env(INTELFPGAOCLSDKROOT)/ip/acl_dspba_buffer.v" TOP_LEVEL_FILE
add_fileset_file "acl_ffwdsrc.v" SYSTEM_VERILOG PATH "$::env(INTELFPGAOCLSDKROOT)/ip/acl_ffwdsrc.v" TOP_LEVEL_FILE
add_fileset_file "acl_ffwddst.sv" SYSTEM_VERILOG PATH "$::env(INTELFPGAOCLSDKROOT)/ip/acl_ffwddst.sv" TOP_LEVEL_FILE
add_fileset_file "lsu_top.v" SYSTEM_VERILOG PATH "$::env(INTELFPGAOCLSDKROOT)/ip/lsu_top.v" TOP_LEVEL_FILE
add_fileset_file "lsu_permute_address.v" SYSTEM_VERILOG PATH "$::env(INTELFPGAOCLSDKROOT)/ip/lsu_permute_address.v" TOP_LEVEL_FILE
add_fileset_file "lsu_pipelined.v" SYSTEM_VERILOG PATH "$::env(INTELFPGAOCLSDKROOT)/ip/lsu_pipelined.v" TOP_LEVEL_FILE
add_fileset_file "lsu_enabled.v" SYSTEM_VERILOG PATH "$::env(INTELFPGAOCLSDKROOT)/ip/lsu_enabled.v" TOP_LEVEL_FILE
add_fileset_file "lsu_basic_coalescer.v" SYSTEM_VERILOG PATH "$::env(INTELFPGAOCLSDKROOT)/ip/lsu_basic_coalescer.v" TOP_LEVEL_FILE
add_fileset_file "lsu_simple.v" SYSTEM_VERILOG PATH "$::env(INTELFPGAOCLSDKROOT)/ip/lsu_simple.v" TOP_LEVEL_FILE
add_fileset_file "lsu_streaming.v" SYSTEM_VERILOG PATH "$::env(INTELFPGAOCLSDKROOT)/ip/lsu_streaming.v" TOP_LEVEL_FILE
add_fileset_file "lsu_burst_master.v" SYSTEM_VERILOG PATH "$::env(INTELFPGAOCLSDKROOT)/ip/lsu_burst_master.v" TOP_LEVEL_FILE
add_fileset_file "lsu_bursting_load_stores.v" SYSTEM_VERILOG PATH "$::env(INTELFPGAOCLSDKROOT)/ip/lsu_bursting_load_stores.v" TOP_LEVEL_FILE
add_fileset_file "lsu_non_aligned_write.v" SYSTEM_VERILOG PATH "$::env(INTELFPGAOCLSDKROOT)/ip/lsu_non_aligned_write.v" TOP_LEVEL_FILE
add_fileset_file "lsu_read_cache.v" SYSTEM_VERILOG PATH "$::env(INTELFPGAOCLSDKROOT)/ip/lsu_read_cache.v" TOP_LEVEL_FILE
add_fileset_file "lsu_atomic.v" SYSTEM_VERILOG PATH "$::env(INTELFPGAOCLSDKROOT)/ip/lsu_atomic.v" TOP_LEVEL_FILE
add_fileset_file "lsu_prefetch_block.v" SYSTEM_VERILOG PATH "$::env(INTELFPGAOCLSDKROOT)/ip/lsu_prefetch_block.v" TOP_LEVEL_FILE
add_fileset_file "lsu_wide_wrapper.v" SYSTEM_VERILOG PATH "$::env(INTELFPGAOCLSDKROOT)/ip/lsu_wide_wrapper.v" TOP_LEVEL_FILE
add_fileset_file "lsu_streaming_prefetch.v" SYSTEM_VERILOG PATH "$::env(INTELFPGAOCLSDKROOT)/ip/lsu_streaming_prefetch.v" TOP_LEVEL_FILE
add_fileset_file "acl_aligned_burst_coalesced_lsu.v" SYSTEM_VERILOG PATH "$::env(INTELFPGAOCLSDKROOT)/ip/acl_aligned_burst_coalesced_lsu.v" TOP_LEVEL_FILE
add_fileset_file "acl_toggle_detect.v" SYSTEM_VERILOG PATH "$::env(INTELFPGAOCLSDKROOT)/ip/acl_toggle_detect.v" TOP_LEVEL_FILE
add_fileset_file "acl_debug_mem.v" SYSTEM_VERILOG PATH "$::env(INTELFPGAOCLSDKROOT)/ip/acl_debug_mem.v" TOP_LEVEL_FILE
add_fileset_file "lsu_burst_coalesced_pipelined_write.sv" SYSTEM_VERILOG PATH "$::env(INTELFPGAOCLSDKROOT)/ip/lsu_burst_coalesced_pipelined_write.sv" TOP_LEVEL_FILE
add_fileset_file "lsu_burst_coalesced_pipelined_read.sv" SYSTEM_VERILOG PATH "$::env(INTELFPGAOCLSDKROOT)/ip/lsu_burst_coalesced_pipelined_read.sv" TOP_LEVEL_FILE
add_fileset_file "hld_global_load_store.sv" SYSTEM_VERILOG PATH "$::env(INTELFPGAOCLSDKROOT)/ip/hld_global_load_store.sv" TOP_LEVEL_FILE
add_fileset_file "hld_lsu.sv" SYSTEM_VERILOG PATH "$::env(INTELFPGAOCLSDKROOT)/ip/hld_lsu.sv" TOP_LEVEL_FILE
add_fileset_file "hld_lsu_burst_coalescer.sv" SYSTEM_VERILOG PATH "$::env(INTELFPGAOCLSDKROOT)/ip/hld_lsu_burst_coalescer.sv" TOP_LEVEL_FILE
add_fileset_file "hld_lsu_coalescer_dynamic_timeout.sv" SYSTEM_VERILOG PATH "$::env(INTELFPGAOCLSDKROOT)/ip/hld_lsu_coalescer_dynamic_timeout.sv" TOP_LEVEL_FILE
add_fileset_file "hld_lsu_data_aligner.sv" SYSTEM_VERILOG PATH "$::env(INTELFPGAOCLSDKROOT)/ip/hld_lsu_data_aligner.sv" TOP_LEVEL_FILE
add_fileset_file "hld_lsu_read_cache.sv" SYSTEM_VERILOG PATH "$::env(INTELFPGAOCLSDKROOT)/ip/hld_lsu_read_cache.sv" TOP_LEVEL_FILE
add_fileset_file "hld_lsu_read_data_alignment.sv" SYSTEM_VERILOG PATH "$::env(INTELFPGAOCLSDKROOT)/ip/hld_lsu_read_data_alignment.sv" TOP_LEVEL_FILE
add_fileset_file "hld_lsu_unaligned_controller.sv" SYSTEM_VERILOG PATH "$::env(INTELFPGAOCLSDKROOT)/ip/hld_lsu_unaligned_controller.sv" TOP_LEVEL_FILE
add_fileset_file "hld_lsu_word_coalescer.sv" SYSTEM_VERILOG PATH "$::env(INTELFPGAOCLSDKROOT)/ip/hld_lsu_word_coalescer.sv" TOP_LEVEL_FILE
add_fileset_file "hld_lsu_write_data_alignment.sv" SYSTEM_VERILOG PATH "$::env(INTELFPGAOCLSDKROOT)/ip/hld_lsu_write_data_alignment.sv" TOP_LEVEL_FILE
add_fileset_file "hld_lsu_write_kernel_downstream.sv" SYSTEM_VERILOG PATH "$::env(INTELFPGAOCLSDKROOT)/ip/hld_lsu_write_kernel_downstream.sv" TOP_LEVEL_FILE
add_fileset_file "acl_shift_register_no_reset.sv" SYSTEM_VERILOG PATH "$::env(INTELFPGAOCLSDKROOT)/ip/acl_shift_register_no_reset.sv" TOP_LEVEL_FILE
add_fileset_file "acl_push.v" SYSTEM_VERILOG PATH "$::env(INTELFPGAOCLSDKROOT)/ip/acl_push.v" TOP_LEVEL_FILE
add_fileset_file "acl_token_fifo_counter.v" SYSTEM_VERILOG PATH "$::env(INTELFPGAOCLSDKROOT)/ip/acl_token_fifo_counter.v" TOP_LEVEL_FILE
add_fileset_file "acl_pipeline.v" SYSTEM_VERILOG PATH "$::env(INTELFPGAOCLSDKROOT)/ip/acl_pipeline.v" TOP_LEVEL_FILE
add_fileset_file "acl_full_detector.v" SYSTEM_VERILOG PATH "$::env(INTELFPGAOCLSDKROOT)/ip/acl_full_detector.v" TOP_LEVEL_FILE
add_fileset_file "acl_tessellated_incr_decr_decr.sv" SYSTEM_VERILOG PATH "$::env(INTELFPGAOCLSDKROOT)/ip/acl_tessellated_incr_decr_decr.sv" TOP_LEVEL_FILE
add_fileset_file "hld_loop_profiler.sv" SYSTEM_VERILOG PATH "$::env(INTELFPGAOCLSDKROOT)/ip/hld_loop_profiler.sv" TOP_LEVEL_FILE
add_fileset_file "hld_sim_latency_tracker.sv" SYSTEM_VERILOG PATH "$::env(INTELFPGAOCLSDKROOT)/ip/hld_sim_latency_tracker.sv" TOP_LEVEL_FILE
add_fileset_file "acl_clock2x_holder.v" SYSTEM_VERILOG PATH "$::env(INTELFPGAOCLSDKROOT)/ip/acl_clock2x_holder.v" TOP_LEVEL_FILE
add_fileset_file "double_add_1_function_wrapper.sv" SYSTEM_VERILOG PATH "kernel_hdl/double_add_1/double_add_1_function_wrapper.sv" TOP_LEVEL_FILE
add_fileset_file "double_add_1_function.sv" SYSTEM_VERILOG PATH "kernel_hdl/double_add_1/double_add_1_function.sv" TOP_LEVEL_FILE
add_fileset_file "double_add_1_bb_B0.sv" SYSTEM_VERILOG PATH "kernel_hdl/double_add_1/double_add_1_bb_B0.sv" TOP_LEVEL_FILE
add_fileset_file "double_add_1_bb_B0_stall_region.sv" SYSTEM_VERILOG PATH "kernel_hdl/double_add_1/double_add_1_bb_B0_stall_region.sv" TOP_LEVEL_FILE
add_fileset_file "double_add_1_B0_merge_reg.sv" SYSTEM_VERILOG PATH "kernel_hdl/double_add_1/double_add_1_B0_merge_reg.sv" TOP_LEVEL_FILE
add_fileset_file "double_add_1_i_llvm_fpga_ffwd_source_i1_unnamed_0_double_add_10.sv" SYSTEM_VERILOG PATH "kernel_hdl/double_add_1/double_add_1_i_llvm_fpga_ffwd_source_i1_unnamed_0_double_add_10.sv" TOP_LEVEL_FILE
add_fileset_file "double_add_1_i_llvm_fpga_ffwd_source_i33_unnamed_1_double_add_10.sv" SYSTEM_VERILOG PATH "kernel_hdl/double_add_1/double_add_1_i_llvm_fpga_ffwd_source_i33_unnamed_1_double_add_10.sv" TOP_LEVEL_FILE
add_fileset_file "double_add_1_i_llvm_fpga_pop_throttle_i1_throttle_pop_0.sv" SYSTEM_VERILOG PATH "kernel_hdl/double_add_1/double_add_1_i_llvm_fpga_pop_throttle_i1_throttle_pop_0.sv" TOP_LEVEL_FILE
add_fileset_file "double_add_1_i_llvm_fpga_pop_throttle_i1_throttle_pop_0_reg.sv" SYSTEM_VERILOG PATH "kernel_hdl/double_add_1/double_add_1_i_llvm_fpga_pop_throttle_i1_throttle_pop_0_reg.sv" TOP_LEVEL_FILE
add_fileset_file "double_add_1_i_llvm_fpga_sync_buffer_i32_n_sync_buffer1_0.sv" SYSTEM_VERILOG PATH "kernel_hdl/double_add_1/double_add_1_i_llvm_fpga_sync_buffer_i32_n_sync_buffer1_0.sv" TOP_LEVEL_FILE
add_fileset_file "double_add_1_i_llvm_fpga_sync_buffer_i32_n_sync_buffer2_0.sv" SYSTEM_VERILOG PATH "kernel_hdl/double_add_1/double_add_1_i_llvm_fpga_sync_buffer_i32_n_sync_buffer2_0.sv" TOP_LEVEL_FILE
add_fileset_file "double_add_1_i_llvm_fpga_sync_buffer_i32_n_sync_buffer_0.sv" SYSTEM_VERILOG PATH "kernel_hdl/double_add_1/double_add_1_i_llvm_fpga_sync_buffer_i32_n_sync_buffer_0.sv" TOP_LEVEL_FILE
add_fileset_file "double_add_1_B0_branch.sv" SYSTEM_VERILOG PATH "kernel_hdl/double_add_1/double_add_1_B0_branch.sv" TOP_LEVEL_FILE
add_fileset_file "double_add_1_B0_merge.sv" SYSTEM_VERILOG PATH "kernel_hdl/double_add_1/double_add_1_B0_merge.sv" TOP_LEVEL_FILE
add_fileset_file "double_add_1_bb_B1.sv" SYSTEM_VERILOG PATH "kernel_hdl/double_add_1/double_add_1_bb_B1.sv" TOP_LEVEL_FILE
add_fileset_file "double_add_1_bb_B1_stall_region.sv" SYSTEM_VERILOG PATH "kernel_hdl/double_add_1/double_add_1_bb_B1_stall_region.sv" TOP_LEVEL_FILE
add_fileset_file "double_add_1_i_llvm_fpga_ffwd_dest_f64_add6_0.sv" SYSTEM_VERILOG PATH "kernel_hdl/double_add_1/double_add_1_i_llvm_fpga_ffwd_dest_f64_add6_0.sv" TOP_LEVEL_FILE
add_fileset_file "double_add_1_i_llvm_fpga_ffwd_dest_i1_cmp64_0.sv" SYSTEM_VERILOG PATH "kernel_hdl/double_add_1/double_add_1_i_llvm_fpga_ffwd_dest_i1_cmp64_0.sv" TOP_LEVEL_FILE
add_fileset_file "double_add_1_i_llvm_fpga_mem_memdep_0.sv" SYSTEM_VERILOG PATH "kernel_hdl/double_add_1/double_add_1_i_llvm_fpga_mem_memdep_0.sv" TOP_LEVEL_FILE
add_fileset_file "double_add_1_i_llvm_fpga_push_token_i1_throttle_push_0.sv" SYSTEM_VERILOG PATH "kernel_hdl/double_add_1/double_add_1_i_llvm_fpga_push_token_i1_throttle_push_0.sv" TOP_LEVEL_FILE
add_fileset_file "double_add_1_i_llvm_fpga_push_token_i1_throttle_push_5_reg.sv" SYSTEM_VERILOG PATH "kernel_hdl/double_add_1/double_add_1_i_llvm_fpga_push_token_i1_throttle_push_5_reg.sv" TOP_LEVEL_FILE
add_fileset_file "double_add_1_i_llvm_fpga_sync_buffer_p100000result_sync_buffer_0.sv" SYSTEM_VERILOG PATH "kernel_hdl/double_add_1/double_add_1_i_llvm_fpga_sync_buffer_p100000result_sync_buffer_0.sv" TOP_LEVEL_FILE
add_fileset_file "double_add_1_B1_branch.sv" SYSTEM_VERILOG PATH "kernel_hdl/double_add_1/double_add_1_B1_branch.sv" TOP_LEVEL_FILE
add_fileset_file "double_add_1_B1_merge.sv" SYSTEM_VERILOG PATH "kernel_hdl/double_add_1/double_add_1_B1_merge.sv" TOP_LEVEL_FILE
add_fileset_file "double_add_1_bb_B2.sv" SYSTEM_VERILOG PATH "kernel_hdl/double_add_1/double_add_1_bb_B2.sv" TOP_LEVEL_FILE
add_fileset_file "double_add_1_bb_B2_stall_region.sv" SYSTEM_VERILOG PATH "kernel_hdl/double_add_1/double_add_1_bb_B2_stall_region.sv" TOP_LEVEL_FILE
add_fileset_file "double_add_1_i_llvm_fpga_mem_lm_0.sv" SYSTEM_VERILOG PATH "kernel_hdl/double_add_1/double_add_1_i_llvm_fpga_mem_lm_0.sv" TOP_LEVEL_FILE
add_fileset_file "double_add_1_readdata_reg_lm_0.sv" SYSTEM_VERILOG PATH "kernel_hdl/double_add_1/double_add_1_readdata_reg_lm_0.sv" TOP_LEVEL_FILE
add_fileset_file "double_add_1_B2_merge_reg.sv" SYSTEM_VERILOG PATH "kernel_hdl/double_add_1/double_add_1_B2_merge_reg.sv" TOP_LEVEL_FILE
add_fileset_file "double_add_1_i_sfc_s_c0_in_for_body_s_c0_enter1_double_add_11.sv" SYSTEM_VERILOG PATH "kernel_hdl/double_add_1/double_add_1_i_sfc_s_c0_in_for_body_s_c0_enter1_double_add_11.sv" TOP_LEVEL_FILE
add_fileset_file "double_add_1_i_llvm_fpga_sfc_exit_s_c0_o00000_exit_double_add_10.sv" SYSTEM_VERILOG PATH "kernel_hdl/double_add_1/double_add_1_i_llvm_fpga_sfc_exit_s_c0_o00000_exit_double_add_10.sv" TOP_LEVEL_FILE
add_fileset_file "double_add_1_i_llvm_fpga_sfc_exit_s_c0_o0000add_11_full_detector.sv" SYSTEM_VERILOG PATH "kernel_hdl/double_add_1/double_add_1_i_llvm_fpga_sfc_exit_s_c0_o0000add_11_full_detector.sv" TOP_LEVEL_FILE
add_fileset_file "double_add_1_i_llvm_fpga_sfc_exit_s_c0_o0000ble_add_11_data_fifo.sv" SYSTEM_VERILOG PATH "kernel_hdl/double_add_1/double_add_1_i_llvm_fpga_sfc_exit_s_c0_o0000ble_add_11_data_fifo.sv" TOP_LEVEL_FILE
add_fileset_file "double_add_1_i_sfc_logic_s_c0_in_for_bod0000enter1_double_add_10.sv" SYSTEM_VERILOG PATH "kernel_hdl/double_add_1/double_add_1_i_sfc_logic_s_c0_in_for_bod0000enter1_double_add_10.sv" TOP_LEVEL_FILE
add_fileset_file "double_add_1_i_llvm_fpga_ffwd_dest_i1_cmp63_0.sv" SYSTEM_VERILOG PATH "kernel_hdl/double_add_1/double_add_1_i_llvm_fpga_ffwd_dest_i1_cmp63_0.sv" TOP_LEVEL_FILE
add_fileset_file "double_add_1_i_llvm_fpga_ffwd_dest_i1_cmp65_0.sv" SYSTEM_VERILOG PATH "kernel_hdl/double_add_1/double_add_1_i_llvm_fpga_ffwd_dest_i1_cmp65_0.sv" TOP_LEVEL_FILE
add_fileset_file "double_add_1_i_llvm_fpga_ffwd_dest_i33_unnamed_2_double_add_10.sv" SYSTEM_VERILOG PATH "kernel_hdl/double_add_1/double_add_1_i_llvm_fpga_ffwd_dest_i33_unnamed_2_double_add_10.sv" TOP_LEVEL_FILE
add_fileset_file "double_add_1_i_llvm_fpga_pipeline_keep_going_0.sv" SYSTEM_VERILOG PATH "kernel_hdl/double_add_1/double_add_1_i_llvm_fpga_pipeline_keep_going_0.sv" TOP_LEVEL_FILE
add_fileset_file "double_add_1_i_llvm_fpga_pop_i32_i_08_pop4_0.sv" SYSTEM_VERILOG PATH "kernel_hdl/double_add_1/double_add_1_i_llvm_fpga_pop_i32_i_08_pop4_0.sv" TOP_LEVEL_FILE
add_fileset_file "double_add_1_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop3_0.sv" SYSTEM_VERILOG PATH "kernel_hdl/double_add_1/double_add_1_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop3_0.sv" TOP_LEVEL_FILE
add_fileset_file "double_add_1_i_llvm_fpga_pop_i4_cleanups_pop7_0.sv" SYSTEM_VERILOG PATH "kernel_hdl/double_add_1/double_add_1_i_llvm_fpga_pop_i4_cleanups_pop7_0.sv" TOP_LEVEL_FILE
add_fileset_file "double_add_1_i_llvm_fpga_pop_i4_initerations_pop6_0.sv" SYSTEM_VERILOG PATH "kernel_hdl/double_add_1/double_add_1_i_llvm_fpga_pop_i4_initerations_pop6_0.sv" TOP_LEVEL_FILE
add_fileset_file "double_add_1_i_llvm_fpga_push_i1_lastiniteration_0.sv" SYSTEM_VERILOG PATH "kernel_hdl/double_add_1/double_add_1_i_llvm_fpga_push_i1_lastiniteration_0.sv" TOP_LEVEL_FILE
add_fileset_file "double_add_1_i_llvm_fpga_push_i1_notexitcond_0.sv" SYSTEM_VERILOG PATH "kernel_hdl/double_add_1/double_add_1_i_llvm_fpga_push_i1_notexitcond_0.sv" TOP_LEVEL_FILE
add_fileset_file "double_add_1_i_llvm_fpga_push_i32_i_08_push4_0.sv" SYSTEM_VERILOG PATH "kernel_hdl/double_add_1/double_add_1_i_llvm_fpga_push_i32_i_08_push4_0.sv" TOP_LEVEL_FILE
add_fileset_file "double_add_1_i_llvm_fpga_push_i33_fpga_indvars_iv_push3_0.sv" SYSTEM_VERILOG PATH "kernel_hdl/double_add_1/double_add_1_i_llvm_fpga_push_i33_fpga_indvars_iv_push3_0.sv" TOP_LEVEL_FILE
add_fileset_file "double_add_1_i_llvm_fpga_push_i4_cleanups_push7_0.sv" SYSTEM_VERILOG PATH "kernel_hdl/double_add_1/double_add_1_i_llvm_fpga_push_i4_cleanups_push7_0.sv" TOP_LEVEL_FILE
add_fileset_file "double_add_1_i_llvm_fpga_push_i4_initerations_push6_0.sv" SYSTEM_VERILOG PATH "kernel_hdl/double_add_1/double_add_1_i_llvm_fpga_push_i4_initerations_push6_0.sv" TOP_LEVEL_FILE
add_fileset_file "double_add_1_i_llvm_fpga_sync_buffer_p1024f64_arr_sync_buffer_0.sv" SYSTEM_VERILOG PATH "kernel_hdl/double_add_1/double_add_1_i_llvm_fpga_sync_buffer_p1024f64_arr_sync_buffer_0.sv" TOP_LEVEL_FILE
add_fileset_file "double_add_1_i_sfc_s_c1_in_for_body_s_c1_enter_double_add_15.sv" SYSTEM_VERILOG PATH "kernel_hdl/double_add_1/double_add_1_i_sfc_s_c1_in_for_body_s_c1_enter_double_add_15.sv" TOP_LEVEL_FILE
add_fileset_file "double_add_1_i_llvm_fpga_sfc_exit_s_c1_o00001_exit_double_add_10.sv" SYSTEM_VERILOG PATH "kernel_hdl/double_add_1/double_add_1_i_llvm_fpga_sfc_exit_s_c1_o00001_exit_double_add_10.sv" TOP_LEVEL_FILE
add_fileset_file "double_add_1_i_llvm_fpga_sfc_exit_s_c1_o0000add_11_full_detector.sv" SYSTEM_VERILOG PATH "kernel_hdl/double_add_1/double_add_1_i_llvm_fpga_sfc_exit_s_c1_o0000add_11_full_detector.sv" TOP_LEVEL_FILE
add_fileset_file "double_add_1_i_llvm_fpga_sfc_exit_s_c1_o0000ble_add_11_data_fifo.sv" SYSTEM_VERILOG PATH "kernel_hdl/double_add_1/double_add_1_i_llvm_fpga_sfc_exit_s_c1_o0000ble_add_11_data_fifo.sv" TOP_LEVEL_FILE
add_fileset_file "double_add_1_i_sfc_logic_s_c1_in_for_bod0000_enter_double_add_10.sv" SYSTEM_VERILOG PATH "kernel_hdl/double_add_1/double_add_1_i_sfc_logic_s_c1_in_for_bod0000_enter_double_add_10.sv" TOP_LEVEL_FILE
add_fileset_file "double_add_1_flt_i_sfc_logic_s_c1_in_for0000cdd6oq3cd06o20cp0doz.sv" SYSTEM_VERILOG PATH "kernel_hdl/double_add_1/double_add_1_flt_i_sfc_logic_s_c1_in_for0000cdd6oq3cd06o20cp0doz.sv" TOP_LEVEL_FILE
add_fileset_file "double_add_1_i_llvm_fpga_ffwd_source_f64_unnamed_4_double_add_10.sv" SYSTEM_VERILOG PATH "kernel_hdl/double_add_1/double_add_1_i_llvm_fpga_ffwd_source_f64_unnamed_4_double_add_10.sv" TOP_LEVEL_FILE
add_fileset_file "double_add_1_i_llvm_fpga_pop_f64_temp_sum_07_pop5_0.sv" SYSTEM_VERILOG PATH "kernel_hdl/double_add_1/double_add_1_i_llvm_fpga_pop_f64_temp_sum_07_pop5_0.sv" TOP_LEVEL_FILE
add_fileset_file "double_add_1_i_llvm_fpga_push_f64_temp_sum_07_push5_0.sv" SYSTEM_VERILOG PATH "kernel_hdl/double_add_1/double_add_1_i_llvm_fpga_push_f64_temp_sum_07_push5_0.sv" TOP_LEVEL_FILE
add_fileset_file "double_add_1_B2_branch.sv" SYSTEM_VERILOG PATH "kernel_hdl/double_add_1/double_add_1_B2_branch.sv" TOP_LEVEL_FILE
add_fileset_file "double_add_1_B2_merge.sv" SYSTEM_VERILOG PATH "kernel_hdl/double_add_1/double_add_1_B2_merge.sv" TOP_LEVEL_FILE
add_fileset_file "double_add_1_i_llvm_fpga_pipeline_keep_going_6_sr.sv" SYSTEM_VERILOG PATH "kernel_hdl/double_add_1/double_add_1_i_llvm_fpga_pipeline_keep_going_6_sr.sv" TOP_LEVEL_FILE
add_fileset_file "double_add_1_i_llvm_fpga_pipeline_keep_going_6_valid_fifo.sv" SYSTEM_VERILOG PATH "kernel_hdl/double_add_1/double_add_1_i_llvm_fpga_pipeline_keep_going_6_valid_fifo.sv" TOP_LEVEL_FILE
add_fileset_file "double_add_1_bb_B1_sr_0.sv" SYSTEM_VERILOG PATH "kernel_hdl/double_add_1/double_add_1_bb_B1_sr_0.sv" TOP_LEVEL_FILE
add_fileset_file "double_add_1_bb_B2_sr_1.sv" SYSTEM_VERILOG PATH "kernel_hdl/double_add_1/double_add_1_bb_B2_sr_1.sv" TOP_LEVEL_FILE
add_fileset_file "double_add_1_function_cra_slave.sv" SYSTEM_VERILOG PATH "kernel_hdl/double_add_1/double_add_1_function_cra_slave.sv" TOP_LEVEL_FILE
add_fileset_file "acl_start_signal_chain_element.v" SYSTEM_VERILOG PATH "$::env(INTELFPGAOCLSDKROOT)/ip/acl_start_signal_chain_element.v" TOP_LEVEL_FILE
add_fileset_file "acl_avm_to_ic.v" SYSTEM_VERILOG PATH "$::env(INTELFPGAOCLSDKROOT)/ip/acl_avm_to_ic.v" TOP_LEVEL_FILE
add_fileset_file "acl_ic_master_endpoint.v" SYSTEM_VERILOG PATH "$::env(INTELFPGAOCLSDKROOT)/ip/acl_ic_master_endpoint.v" TOP_LEVEL_FILE
add_fileset_file "acl_arb_intf.v" SYSTEM_VERILOG PATH "$::env(INTELFPGAOCLSDKROOT)/ip/acl_arb_intf.v" TOP_LEVEL_FILE
add_fileset_file "acl_ic_intf.v" SYSTEM_VERILOG PATH "$::env(INTELFPGAOCLSDKROOT)/ip/acl_ic_intf.v" TOP_LEVEL_FILE
add_fileset_file "acl_ic_slave_endpoint.v" SYSTEM_VERILOG PATH "$::env(INTELFPGAOCLSDKROOT)/ip/acl_ic_slave_endpoint.v" TOP_LEVEL_FILE
add_fileset_file "acl_ic_slave_rrp.v" SYSTEM_VERILOG PATH "$::env(INTELFPGAOCLSDKROOT)/ip/acl_ic_slave_rrp.v" TOP_LEVEL_FILE
add_fileset_file "acl_ic_slave_wrp.v" SYSTEM_VERILOG PATH "$::env(INTELFPGAOCLSDKROOT)/ip/acl_ic_slave_wrp.v" TOP_LEVEL_FILE
add_fileset_file "acl_ic_mem_router.v" SYSTEM_VERILOG PATH "$::env(INTELFPGAOCLSDKROOT)/ip/acl_ic_mem_router.v" TOP_LEVEL_FILE
add_fileset_file "acl_arb2.v" SYSTEM_VERILOG PATH "$::env(INTELFPGAOCLSDKROOT)/ip/acl_arb2.v" TOP_LEVEL_FILE
add_fileset_file "acl_ic_to_avm.v" SYSTEM_VERILOG PATH "$::env(INTELFPGAOCLSDKROOT)/ip/acl_ic_to_avm.v" TOP_LEVEL_FILE
add_fileset_file "cra_ring_node.sv" SYSTEM_VERILOG PATH "$::env(INTELFPGAOCLSDKROOT)/ip/cra_ring_node.sv" TOP_LEVEL_FILE
add_fileset_file "cra_ring_root.sv" SYSTEM_VERILOG PATH "$::env(INTELFPGAOCLSDKROOT)/ip/cra_ring_root.sv" TOP_LEVEL_FILE
add_fileset_file "cra_ring_rom.sv" SYSTEM_VERILOG PATH "$::env(INTELFPGAOCLSDKROOT)/ip/cra_ring_rom.sv" TOP_LEVEL_FILE
add_fileset_file "acl_rom_module.v" SYSTEM_VERILOG PATH "$::env(INTELFPGAOCLSDKROOT)/ip/acl_rom_module.v" TOP_LEVEL_FILE


add_fileset SIM_VERILOG SIM_VERILOG "" ""
set_fileset_property SIM_VERILOG TOP_LEVEL acc_unopt_sys
add_fileset_file "acl_reset_handler.sv" SYSTEM_VERILOG PATH "$::env(INTELFPGAOCLSDKROOT)/ip/acl_reset_handler.sv" TOP_LEVEL_FILE
add_fileset_file "acl_work_group_dispatcher.v" SYSTEM_VERILOG PATH "$::env(INTELFPGAOCLSDKROOT)/ip/acl_work_group_dispatcher.v" TOP_LEVEL_FILE
add_fileset_file "acl_kernel_finish_detector.v" SYSTEM_VERILOG PATH "$::env(INTELFPGAOCLSDKROOT)/ip/acl_kernel_finish_detector.v" TOP_LEVEL_FILE
add_fileset_file "acl_multistage_accumulator.v" SYSTEM_VERILOG PATH "$::env(INTELFPGAOCLSDKROOT)/ip/acl_multistage_accumulator.v" TOP_LEVEL_FILE
add_fileset_file "acl_std_synchronizer_nocut.v" SYSTEM_VERILOG PATH "$::env(INTELFPGAOCLSDKROOT)/ip/acl_std_synchronizer_nocut.v" TOP_LEVEL_FILE
add_fileset_file "acl_fanout_pipeline.sv" SYSTEM_VERILOG PATH "$::env(INTELFPGAOCLSDKROOT)/ip/acl_fanout_pipeline.sv" TOP_LEVEL_FILE
add_fileset_file "acl_ecc_pkg.sv" SYSTEM_VERILOG PATH "$::env(INTELFPGAOCLSDKROOT)/ip/acl_ecc_pkg.sv" TOP_LEVEL_FILE
add_fileset_file "acl_id_iterator.v" SYSTEM_VERILOG PATH "$::env(INTELFPGAOCLSDKROOT)/ip/acl_id_iterator.v" TOP_LEVEL_FILE
add_fileset_file "acl_work_item_iterator.v" SYSTEM_VERILOG PATH "$::env(INTELFPGAOCLSDKROOT)/ip/acl_work_item_iterator.v" TOP_LEVEL_FILE
add_fileset_file "acl_multistage_adder.v" SYSTEM_VERILOG PATH "$::env(INTELFPGAOCLSDKROOT)/ip/acl_multistage_adder.v" TOP_LEVEL_FILE
add_fileset_file "acl_shift_register.v" SYSTEM_VERILOG PATH "$::env(INTELFPGAOCLSDKROOT)/ip/acl_shift_register.v" TOP_LEVEL_FILE
add_fileset_file "acl_fifo.v" SYSTEM_VERILOG PATH "$::env(INTELFPGAOCLSDKROOT)/ip/acl_fifo.v" TOP_LEVEL_FILE
add_fileset_file "acl_fifo_stall_valid_lookahead.sv" SYSTEM_VERILOG PATH "$::env(INTELFPGAOCLSDKROOT)/ip/acl_fifo_stall_valid_lookahead.sv" TOP_LEVEL_FILE
add_fileset_file "acl_scfifo_wrapped.sv" SYSTEM_VERILOG PATH "$::env(INTELFPGAOCLSDKROOT)/ip/acl_scfifo_wrapped.sv" TOP_LEVEL_FILE
add_fileset_file "acl_ecc_encoder.sv" SYSTEM_VERILOG PATH "$::env(INTELFPGAOCLSDKROOT)/ip/acl_ecc_encoder.sv" TOP_LEVEL_FILE
add_fileset_file "acl_ecc_decoder.sv" SYSTEM_VERILOG PATH "$::env(INTELFPGAOCLSDKROOT)/ip/acl_ecc_decoder.sv" TOP_LEVEL_FILE
add_fileset_file "acc_unopt_sys.v" SYSTEM_VERILOG PATH "acc_unopt_sys.v" TOP_LEVEL_FILE
add_fileset_file "dspba_library_ver.sv" SYSTEM_VERILOG PATH "$::env(INTELFPGAOCLSDKROOT)/linux64/lib/dspba/Libraries/sv/base/dspba_library_ver.sv" TOP_LEVEL_FILE
add_fileset_file "acl_data_fifo.v" SYSTEM_VERILOG PATH "$::env(INTELFPGAOCLSDKROOT)/ip/acl_data_fifo.v" TOP_LEVEL_FILE
add_fileset_file "acl_altera_syncram_wrapped.sv" SYSTEM_VERILOG PATH "$::env(INTELFPGAOCLSDKROOT)/ip/acl_altera_syncram_wrapped.sv" TOP_LEVEL_FILE
add_fileset_file "acl_ll_fifo.v" SYSTEM_VERILOG PATH "$::env(INTELFPGAOCLSDKROOT)/ip/acl_ll_fifo.v" TOP_LEVEL_FILE
add_fileset_file "acl_ll_ram_fifo.v" SYSTEM_VERILOG PATH "$::env(INTELFPGAOCLSDKROOT)/ip/acl_ll_ram_fifo.v" TOP_LEVEL_FILE
add_fileset_file "acl_valid_fifo_counter.v" SYSTEM_VERILOG PATH "$::env(INTELFPGAOCLSDKROOT)/ip/acl_valid_fifo_counter.v" TOP_LEVEL_FILE
add_fileset_file "acl_dspba_valid_fifo_counter.v" SYSTEM_VERILOG PATH "$::env(INTELFPGAOCLSDKROOT)/ip/acl_dspba_valid_fifo_counter.v" TOP_LEVEL_FILE
add_fileset_file "acl_staging_reg.v" SYSTEM_VERILOG PATH "$::env(INTELFPGAOCLSDKROOT)/ip/acl_staging_reg.v" TOP_LEVEL_FILE
add_fileset_file "hld_fifo.sv" SYSTEM_VERILOG PATH "$::env(INTELFPGAOCLSDKROOT)/ip/hld_fifo.sv" TOP_LEVEL_FILE
add_fileset_file "acl_mid_speed_fifo.sv" SYSTEM_VERILOG PATH "$::env(INTELFPGAOCLSDKROOT)/ip/acl_mid_speed_fifo.sv" TOP_LEVEL_FILE
add_fileset_file "acl_latency_one_ram_fifo.sv" SYSTEM_VERILOG PATH "$::env(INTELFPGAOCLSDKROOT)/ip/acl_latency_one_ram_fifo.sv" TOP_LEVEL_FILE
add_fileset_file "acl_latency_zero_ram_fifo.sv" SYSTEM_VERILOG PATH "$::env(INTELFPGAOCLSDKROOT)/ip/acl_latency_zero_ram_fifo.sv" TOP_LEVEL_FILE
add_fileset_file "hld_fifo_zero_width.sv" SYSTEM_VERILOG PATH "$::env(INTELFPGAOCLSDKROOT)/ip/hld_fifo_zero_width.sv" TOP_LEVEL_FILE
add_fileset_file "acl_high_speed_fifo.sv" SYSTEM_VERILOG PATH "$::env(INTELFPGAOCLSDKROOT)/ip/acl_high_speed_fifo.sv" TOP_LEVEL_FILE
add_fileset_file "acl_low_latency_fifo.sv" SYSTEM_VERILOG PATH "$::env(INTELFPGAOCLSDKROOT)/ip/acl_low_latency_fifo.sv" TOP_LEVEL_FILE
add_fileset_file "acl_zero_latency_fifo.sv" SYSTEM_VERILOG PATH "$::env(INTELFPGAOCLSDKROOT)/ip/acl_zero_latency_fifo.sv" TOP_LEVEL_FILE
add_fileset_file "acl_tessellated_incr_decr_threshold.sv" SYSTEM_VERILOG PATH "$::env(INTELFPGAOCLSDKROOT)/ip/acl_tessellated_incr_decr_threshold.sv" TOP_LEVEL_FILE
add_fileset_file "acl_tessellated_incr_lookahead.sv" SYSTEM_VERILOG PATH "$::env(INTELFPGAOCLSDKROOT)/ip/acl_tessellated_incr_lookahead.sv" TOP_LEVEL_FILE
add_fileset_file "acl_lfsr.sv" SYSTEM_VERILOG PATH "$::env(INTELFPGAOCLSDKROOT)/ip/acl_lfsr.sv" TOP_LEVEL_FILE
add_fileset_file "acl_mlab_fifo.sv" SYSTEM_VERILOG PATH "$::env(INTELFPGAOCLSDKROOT)/ip/acl_mlab_fifo.sv" TOP_LEVEL_FILE
add_fileset_file "acl_parameter_assert.svh" SYSTEM_VERILOG PATH "$::env(INTELFPGAOCLSDKROOT)/ip/acl_parameter_assert.svh" TOP_LEVEL_FILE
add_fileset_file "acl_pop.v" SYSTEM_VERILOG PATH "$::env(INTELFPGAOCLSDKROOT)/ip/acl_pop.v" TOP_LEVEL_FILE
add_fileset_file "acl_dspba_buffer.v" SYSTEM_VERILOG PATH "$::env(INTELFPGAOCLSDKROOT)/ip/acl_dspba_buffer.v" TOP_LEVEL_FILE
add_fileset_file "acl_ffwdsrc.v" SYSTEM_VERILOG PATH "$::env(INTELFPGAOCLSDKROOT)/ip/acl_ffwdsrc.v" TOP_LEVEL_FILE
add_fileset_file "acl_ffwddst.sv" SYSTEM_VERILOG PATH "$::env(INTELFPGAOCLSDKROOT)/ip/acl_ffwddst.sv" TOP_LEVEL_FILE
add_fileset_file "lsu_top.v" SYSTEM_VERILOG PATH "$::env(INTELFPGAOCLSDKROOT)/ip/lsu_top.v" TOP_LEVEL_FILE
add_fileset_file "lsu_permute_address.v" SYSTEM_VERILOG PATH "$::env(INTELFPGAOCLSDKROOT)/ip/lsu_permute_address.v" TOP_LEVEL_FILE
add_fileset_file "lsu_pipelined.v" SYSTEM_VERILOG PATH "$::env(INTELFPGAOCLSDKROOT)/ip/lsu_pipelined.v" TOP_LEVEL_FILE
add_fileset_file "lsu_enabled.v" SYSTEM_VERILOG PATH "$::env(INTELFPGAOCLSDKROOT)/ip/lsu_enabled.v" TOP_LEVEL_FILE
add_fileset_file "lsu_basic_coalescer.v" SYSTEM_VERILOG PATH "$::env(INTELFPGAOCLSDKROOT)/ip/lsu_basic_coalescer.v" TOP_LEVEL_FILE
add_fileset_file "lsu_simple.v" SYSTEM_VERILOG PATH "$::env(INTELFPGAOCLSDKROOT)/ip/lsu_simple.v" TOP_LEVEL_FILE
add_fileset_file "lsu_streaming.v" SYSTEM_VERILOG PATH "$::env(INTELFPGAOCLSDKROOT)/ip/lsu_streaming.v" TOP_LEVEL_FILE
add_fileset_file "lsu_burst_master.v" SYSTEM_VERILOG PATH "$::env(INTELFPGAOCLSDKROOT)/ip/lsu_burst_master.v" TOP_LEVEL_FILE
add_fileset_file "lsu_bursting_load_stores.v" SYSTEM_VERILOG PATH "$::env(INTELFPGAOCLSDKROOT)/ip/lsu_bursting_load_stores.v" TOP_LEVEL_FILE
add_fileset_file "lsu_non_aligned_write.v" SYSTEM_VERILOG PATH "$::env(INTELFPGAOCLSDKROOT)/ip/lsu_non_aligned_write.v" TOP_LEVEL_FILE
add_fileset_file "lsu_read_cache.v" SYSTEM_VERILOG PATH "$::env(INTELFPGAOCLSDKROOT)/ip/lsu_read_cache.v" TOP_LEVEL_FILE
add_fileset_file "lsu_atomic.v" SYSTEM_VERILOG PATH "$::env(INTELFPGAOCLSDKROOT)/ip/lsu_atomic.v" TOP_LEVEL_FILE
add_fileset_file "lsu_prefetch_block.v" SYSTEM_VERILOG PATH "$::env(INTELFPGAOCLSDKROOT)/ip/lsu_prefetch_block.v" TOP_LEVEL_FILE
add_fileset_file "lsu_wide_wrapper.v" SYSTEM_VERILOG PATH "$::env(INTELFPGAOCLSDKROOT)/ip/lsu_wide_wrapper.v" TOP_LEVEL_FILE
add_fileset_file "lsu_streaming_prefetch.v" SYSTEM_VERILOG PATH "$::env(INTELFPGAOCLSDKROOT)/ip/lsu_streaming_prefetch.v" TOP_LEVEL_FILE
add_fileset_file "acl_aligned_burst_coalesced_lsu.v" SYSTEM_VERILOG PATH "$::env(INTELFPGAOCLSDKROOT)/ip/acl_aligned_burst_coalesced_lsu.v" TOP_LEVEL_FILE
add_fileset_file "acl_toggle_detect.v" SYSTEM_VERILOG PATH "$::env(INTELFPGAOCLSDKROOT)/ip/acl_toggle_detect.v" TOP_LEVEL_FILE
add_fileset_file "acl_debug_mem.v" SYSTEM_VERILOG PATH "$::env(INTELFPGAOCLSDKROOT)/ip/acl_debug_mem.v" TOP_LEVEL_FILE
add_fileset_file "lsu_burst_coalesced_pipelined_write.sv" SYSTEM_VERILOG PATH "$::env(INTELFPGAOCLSDKROOT)/ip/lsu_burst_coalesced_pipelined_write.sv" TOP_LEVEL_FILE
add_fileset_file "lsu_burst_coalesced_pipelined_read.sv" SYSTEM_VERILOG PATH "$::env(INTELFPGAOCLSDKROOT)/ip/lsu_burst_coalesced_pipelined_read.sv" TOP_LEVEL_FILE
add_fileset_file "hld_global_load_store.sv" SYSTEM_VERILOG PATH "$::env(INTELFPGAOCLSDKROOT)/ip/hld_global_load_store.sv" TOP_LEVEL_FILE
add_fileset_file "hld_lsu.sv" SYSTEM_VERILOG PATH "$::env(INTELFPGAOCLSDKROOT)/ip/hld_lsu.sv" TOP_LEVEL_FILE
add_fileset_file "hld_lsu_burst_coalescer.sv" SYSTEM_VERILOG PATH "$::env(INTELFPGAOCLSDKROOT)/ip/hld_lsu_burst_coalescer.sv" TOP_LEVEL_FILE
add_fileset_file "hld_lsu_coalescer_dynamic_timeout.sv" SYSTEM_VERILOG PATH "$::env(INTELFPGAOCLSDKROOT)/ip/hld_lsu_coalescer_dynamic_timeout.sv" TOP_LEVEL_FILE
add_fileset_file "hld_lsu_data_aligner.sv" SYSTEM_VERILOG PATH "$::env(INTELFPGAOCLSDKROOT)/ip/hld_lsu_data_aligner.sv" TOP_LEVEL_FILE
add_fileset_file "hld_lsu_read_cache.sv" SYSTEM_VERILOG PATH "$::env(INTELFPGAOCLSDKROOT)/ip/hld_lsu_read_cache.sv" TOP_LEVEL_FILE
add_fileset_file "hld_lsu_read_data_alignment.sv" SYSTEM_VERILOG PATH "$::env(INTELFPGAOCLSDKROOT)/ip/hld_lsu_read_data_alignment.sv" TOP_LEVEL_FILE
add_fileset_file "hld_lsu_unaligned_controller.sv" SYSTEM_VERILOG PATH "$::env(INTELFPGAOCLSDKROOT)/ip/hld_lsu_unaligned_controller.sv" TOP_LEVEL_FILE
add_fileset_file "hld_lsu_word_coalescer.sv" SYSTEM_VERILOG PATH "$::env(INTELFPGAOCLSDKROOT)/ip/hld_lsu_word_coalescer.sv" TOP_LEVEL_FILE
add_fileset_file "hld_lsu_write_data_alignment.sv" SYSTEM_VERILOG PATH "$::env(INTELFPGAOCLSDKROOT)/ip/hld_lsu_write_data_alignment.sv" TOP_LEVEL_FILE
add_fileset_file "hld_lsu_write_kernel_downstream.sv" SYSTEM_VERILOG PATH "$::env(INTELFPGAOCLSDKROOT)/ip/hld_lsu_write_kernel_downstream.sv" TOP_LEVEL_FILE
add_fileset_file "acl_shift_register_no_reset.sv" SYSTEM_VERILOG PATH "$::env(INTELFPGAOCLSDKROOT)/ip/acl_shift_register_no_reset.sv" TOP_LEVEL_FILE
add_fileset_file "acl_push.v" SYSTEM_VERILOG PATH "$::env(INTELFPGAOCLSDKROOT)/ip/acl_push.v" TOP_LEVEL_FILE
add_fileset_file "acl_token_fifo_counter.v" SYSTEM_VERILOG PATH "$::env(INTELFPGAOCLSDKROOT)/ip/acl_token_fifo_counter.v" TOP_LEVEL_FILE
add_fileset_file "acl_pipeline.v" SYSTEM_VERILOG PATH "$::env(INTELFPGAOCLSDKROOT)/ip/acl_pipeline.v" TOP_LEVEL_FILE
add_fileset_file "acl_full_detector.v" SYSTEM_VERILOG PATH "$::env(INTELFPGAOCLSDKROOT)/ip/acl_full_detector.v" TOP_LEVEL_FILE
add_fileset_file "acl_tessellated_incr_decr_decr.sv" SYSTEM_VERILOG PATH "$::env(INTELFPGAOCLSDKROOT)/ip/acl_tessellated_incr_decr_decr.sv" TOP_LEVEL_FILE
add_fileset_file "hld_loop_profiler.sv" SYSTEM_VERILOG PATH "$::env(INTELFPGAOCLSDKROOT)/ip/hld_loop_profiler.sv" TOP_LEVEL_FILE
add_fileset_file "hld_sim_latency_tracker.sv" SYSTEM_VERILOG PATH "$::env(INTELFPGAOCLSDKROOT)/ip/hld_sim_latency_tracker.sv" TOP_LEVEL_FILE
add_fileset_file "acl_clock2x_holder.v" SYSTEM_VERILOG PATH "$::env(INTELFPGAOCLSDKROOT)/ip/acl_clock2x_holder.v" TOP_LEVEL_FILE
add_fileset_file "double_add_1_function_wrapper.sv" SYSTEM_VERILOG PATH "kernel_hdl/double_add_1/double_add_1_function_wrapper.sv" TOP_LEVEL_FILE
add_fileset_file "double_add_1_function.sv" SYSTEM_VERILOG PATH "kernel_hdl/double_add_1/double_add_1_function.sv" TOP_LEVEL_FILE
add_fileset_file "double_add_1_bb_B0.sv" SYSTEM_VERILOG PATH "kernel_hdl/double_add_1/double_add_1_bb_B0.sv" TOP_LEVEL_FILE
add_fileset_file "double_add_1_bb_B0_stall_region.sv" SYSTEM_VERILOG PATH "kernel_hdl/double_add_1/double_add_1_bb_B0_stall_region.sv" TOP_LEVEL_FILE
add_fileset_file "double_add_1_B0_merge_reg.sv" SYSTEM_VERILOG PATH "kernel_hdl/double_add_1/double_add_1_B0_merge_reg.sv" TOP_LEVEL_FILE
add_fileset_file "double_add_1_i_llvm_fpga_ffwd_source_i1_unnamed_0_double_add_10.sv" SYSTEM_VERILOG PATH "kernel_hdl/double_add_1/double_add_1_i_llvm_fpga_ffwd_source_i1_unnamed_0_double_add_10.sv" TOP_LEVEL_FILE
add_fileset_file "double_add_1_i_llvm_fpga_ffwd_source_i33_unnamed_1_double_add_10.sv" SYSTEM_VERILOG PATH "kernel_hdl/double_add_1/double_add_1_i_llvm_fpga_ffwd_source_i33_unnamed_1_double_add_10.sv" TOP_LEVEL_FILE
add_fileset_file "double_add_1_i_llvm_fpga_pop_throttle_i1_throttle_pop_0.sv" SYSTEM_VERILOG PATH "kernel_hdl/double_add_1/double_add_1_i_llvm_fpga_pop_throttle_i1_throttle_pop_0.sv" TOP_LEVEL_FILE
add_fileset_file "double_add_1_i_llvm_fpga_pop_throttle_i1_throttle_pop_0_reg.sv" SYSTEM_VERILOG PATH "kernel_hdl/double_add_1/double_add_1_i_llvm_fpga_pop_throttle_i1_throttle_pop_0_reg.sv" TOP_LEVEL_FILE
add_fileset_file "double_add_1_i_llvm_fpga_sync_buffer_i32_n_sync_buffer1_0.sv" SYSTEM_VERILOG PATH "kernel_hdl/double_add_1/double_add_1_i_llvm_fpga_sync_buffer_i32_n_sync_buffer1_0.sv" TOP_LEVEL_FILE
add_fileset_file "double_add_1_i_llvm_fpga_sync_buffer_i32_n_sync_buffer2_0.sv" SYSTEM_VERILOG PATH "kernel_hdl/double_add_1/double_add_1_i_llvm_fpga_sync_buffer_i32_n_sync_buffer2_0.sv" TOP_LEVEL_FILE
add_fileset_file "double_add_1_i_llvm_fpga_sync_buffer_i32_n_sync_buffer_0.sv" SYSTEM_VERILOG PATH "kernel_hdl/double_add_1/double_add_1_i_llvm_fpga_sync_buffer_i32_n_sync_buffer_0.sv" TOP_LEVEL_FILE
add_fileset_file "double_add_1_B0_branch.sv" SYSTEM_VERILOG PATH "kernel_hdl/double_add_1/double_add_1_B0_branch.sv" TOP_LEVEL_FILE
add_fileset_file "double_add_1_B0_merge.sv" SYSTEM_VERILOG PATH "kernel_hdl/double_add_1/double_add_1_B0_merge.sv" TOP_LEVEL_FILE
add_fileset_file "double_add_1_bb_B1.sv" SYSTEM_VERILOG PATH "kernel_hdl/double_add_1/double_add_1_bb_B1.sv" TOP_LEVEL_FILE
add_fileset_file "double_add_1_bb_B1_stall_region.sv" SYSTEM_VERILOG PATH "kernel_hdl/double_add_1/double_add_1_bb_B1_stall_region.sv" TOP_LEVEL_FILE
add_fileset_file "double_add_1_i_llvm_fpga_ffwd_dest_f64_add6_0.sv" SYSTEM_VERILOG PATH "kernel_hdl/double_add_1/double_add_1_i_llvm_fpga_ffwd_dest_f64_add6_0.sv" TOP_LEVEL_FILE
add_fileset_file "double_add_1_i_llvm_fpga_ffwd_dest_i1_cmp64_0.sv" SYSTEM_VERILOG PATH "kernel_hdl/double_add_1/double_add_1_i_llvm_fpga_ffwd_dest_i1_cmp64_0.sv" TOP_LEVEL_FILE
add_fileset_file "double_add_1_i_llvm_fpga_mem_memdep_0.sv" SYSTEM_VERILOG PATH "kernel_hdl/double_add_1/double_add_1_i_llvm_fpga_mem_memdep_0.sv" TOP_LEVEL_FILE
add_fileset_file "double_add_1_i_llvm_fpga_push_token_i1_throttle_push_0.sv" SYSTEM_VERILOG PATH "kernel_hdl/double_add_1/double_add_1_i_llvm_fpga_push_token_i1_throttle_push_0.sv" TOP_LEVEL_FILE
add_fileset_file "double_add_1_i_llvm_fpga_push_token_i1_throttle_push_5_reg.sv" SYSTEM_VERILOG PATH "kernel_hdl/double_add_1/double_add_1_i_llvm_fpga_push_token_i1_throttle_push_5_reg.sv" TOP_LEVEL_FILE
add_fileset_file "double_add_1_i_llvm_fpga_sync_buffer_p100000result_sync_buffer_0.sv" SYSTEM_VERILOG PATH "kernel_hdl/double_add_1/double_add_1_i_llvm_fpga_sync_buffer_p100000result_sync_buffer_0.sv" TOP_LEVEL_FILE
add_fileset_file "double_add_1_B1_branch.sv" SYSTEM_VERILOG PATH "kernel_hdl/double_add_1/double_add_1_B1_branch.sv" TOP_LEVEL_FILE
add_fileset_file "double_add_1_B1_merge.sv" SYSTEM_VERILOG PATH "kernel_hdl/double_add_1/double_add_1_B1_merge.sv" TOP_LEVEL_FILE
add_fileset_file "double_add_1_bb_B2.sv" SYSTEM_VERILOG PATH "kernel_hdl/double_add_1/double_add_1_bb_B2.sv" TOP_LEVEL_FILE
add_fileset_file "double_add_1_bb_B2_stall_region.sv" SYSTEM_VERILOG PATH "kernel_hdl/double_add_1/double_add_1_bb_B2_stall_region.sv" TOP_LEVEL_FILE
add_fileset_file "double_add_1_i_llvm_fpga_mem_lm_0.sv" SYSTEM_VERILOG PATH "kernel_hdl/double_add_1/double_add_1_i_llvm_fpga_mem_lm_0.sv" TOP_LEVEL_FILE
add_fileset_file "double_add_1_readdata_reg_lm_0.sv" SYSTEM_VERILOG PATH "kernel_hdl/double_add_1/double_add_1_readdata_reg_lm_0.sv" TOP_LEVEL_FILE
add_fileset_file "double_add_1_B2_merge_reg.sv" SYSTEM_VERILOG PATH "kernel_hdl/double_add_1/double_add_1_B2_merge_reg.sv" TOP_LEVEL_FILE
add_fileset_file "double_add_1_i_sfc_s_c0_in_for_body_s_c0_enter1_double_add_11.sv" SYSTEM_VERILOG PATH "kernel_hdl/double_add_1/double_add_1_i_sfc_s_c0_in_for_body_s_c0_enter1_double_add_11.sv" TOP_LEVEL_FILE
add_fileset_file "double_add_1_i_llvm_fpga_sfc_exit_s_c0_o00000_exit_double_add_10.sv" SYSTEM_VERILOG PATH "kernel_hdl/double_add_1/double_add_1_i_llvm_fpga_sfc_exit_s_c0_o00000_exit_double_add_10.sv" TOP_LEVEL_FILE
add_fileset_file "double_add_1_i_llvm_fpga_sfc_exit_s_c0_o0000add_11_full_detector.sv" SYSTEM_VERILOG PATH "kernel_hdl/double_add_1/double_add_1_i_llvm_fpga_sfc_exit_s_c0_o0000add_11_full_detector.sv" TOP_LEVEL_FILE
add_fileset_file "double_add_1_i_llvm_fpga_sfc_exit_s_c0_o0000ble_add_11_data_fifo.sv" SYSTEM_VERILOG PATH "kernel_hdl/double_add_1/double_add_1_i_llvm_fpga_sfc_exit_s_c0_o0000ble_add_11_data_fifo.sv" TOP_LEVEL_FILE
add_fileset_file "double_add_1_i_sfc_logic_s_c0_in_for_bod0000enter1_double_add_10.sv" SYSTEM_VERILOG PATH "kernel_hdl/double_add_1/double_add_1_i_sfc_logic_s_c0_in_for_bod0000enter1_double_add_10.sv" TOP_LEVEL_FILE
add_fileset_file "double_add_1_i_llvm_fpga_ffwd_dest_i1_cmp63_0.sv" SYSTEM_VERILOG PATH "kernel_hdl/double_add_1/double_add_1_i_llvm_fpga_ffwd_dest_i1_cmp63_0.sv" TOP_LEVEL_FILE
add_fileset_file "double_add_1_i_llvm_fpga_ffwd_dest_i1_cmp65_0.sv" SYSTEM_VERILOG PATH "kernel_hdl/double_add_1/double_add_1_i_llvm_fpga_ffwd_dest_i1_cmp65_0.sv" TOP_LEVEL_FILE
add_fileset_file "double_add_1_i_llvm_fpga_ffwd_dest_i33_unnamed_2_double_add_10.sv" SYSTEM_VERILOG PATH "kernel_hdl/double_add_1/double_add_1_i_llvm_fpga_ffwd_dest_i33_unnamed_2_double_add_10.sv" TOP_LEVEL_FILE
add_fileset_file "double_add_1_i_llvm_fpga_pipeline_keep_going_0.sv" SYSTEM_VERILOG PATH "kernel_hdl/double_add_1/double_add_1_i_llvm_fpga_pipeline_keep_going_0.sv" TOP_LEVEL_FILE
add_fileset_file "double_add_1_i_llvm_fpga_pop_i32_i_08_pop4_0.sv" SYSTEM_VERILOG PATH "kernel_hdl/double_add_1/double_add_1_i_llvm_fpga_pop_i32_i_08_pop4_0.sv" TOP_LEVEL_FILE
add_fileset_file "double_add_1_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop3_0.sv" SYSTEM_VERILOG PATH "kernel_hdl/double_add_1/double_add_1_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop3_0.sv" TOP_LEVEL_FILE
add_fileset_file "double_add_1_i_llvm_fpga_pop_i4_cleanups_pop7_0.sv" SYSTEM_VERILOG PATH "kernel_hdl/double_add_1/double_add_1_i_llvm_fpga_pop_i4_cleanups_pop7_0.sv" TOP_LEVEL_FILE
add_fileset_file "double_add_1_i_llvm_fpga_pop_i4_initerations_pop6_0.sv" SYSTEM_VERILOG PATH "kernel_hdl/double_add_1/double_add_1_i_llvm_fpga_pop_i4_initerations_pop6_0.sv" TOP_LEVEL_FILE
add_fileset_file "double_add_1_i_llvm_fpga_push_i1_lastiniteration_0.sv" SYSTEM_VERILOG PATH "kernel_hdl/double_add_1/double_add_1_i_llvm_fpga_push_i1_lastiniteration_0.sv" TOP_LEVEL_FILE
add_fileset_file "double_add_1_i_llvm_fpga_push_i1_notexitcond_0.sv" SYSTEM_VERILOG PATH "kernel_hdl/double_add_1/double_add_1_i_llvm_fpga_push_i1_notexitcond_0.sv" TOP_LEVEL_FILE
add_fileset_file "double_add_1_i_llvm_fpga_push_i32_i_08_push4_0.sv" SYSTEM_VERILOG PATH "kernel_hdl/double_add_1/double_add_1_i_llvm_fpga_push_i32_i_08_push4_0.sv" TOP_LEVEL_FILE
add_fileset_file "double_add_1_i_llvm_fpga_push_i33_fpga_indvars_iv_push3_0.sv" SYSTEM_VERILOG PATH "kernel_hdl/double_add_1/double_add_1_i_llvm_fpga_push_i33_fpga_indvars_iv_push3_0.sv" TOP_LEVEL_FILE
add_fileset_file "double_add_1_i_llvm_fpga_push_i4_cleanups_push7_0.sv" SYSTEM_VERILOG PATH "kernel_hdl/double_add_1/double_add_1_i_llvm_fpga_push_i4_cleanups_push7_0.sv" TOP_LEVEL_FILE
add_fileset_file "double_add_1_i_llvm_fpga_push_i4_initerations_push6_0.sv" SYSTEM_VERILOG PATH "kernel_hdl/double_add_1/double_add_1_i_llvm_fpga_push_i4_initerations_push6_0.sv" TOP_LEVEL_FILE
add_fileset_file "double_add_1_i_llvm_fpga_sync_buffer_p1024f64_arr_sync_buffer_0.sv" SYSTEM_VERILOG PATH "kernel_hdl/double_add_1/double_add_1_i_llvm_fpga_sync_buffer_p1024f64_arr_sync_buffer_0.sv" TOP_LEVEL_FILE
add_fileset_file "double_add_1_i_sfc_s_c1_in_for_body_s_c1_enter_double_add_15.sv" SYSTEM_VERILOG PATH "kernel_hdl/double_add_1/double_add_1_i_sfc_s_c1_in_for_body_s_c1_enter_double_add_15.sv" TOP_LEVEL_FILE
add_fileset_file "double_add_1_i_llvm_fpga_sfc_exit_s_c1_o00001_exit_double_add_10.sv" SYSTEM_VERILOG PATH "kernel_hdl/double_add_1/double_add_1_i_llvm_fpga_sfc_exit_s_c1_o00001_exit_double_add_10.sv" TOP_LEVEL_FILE
add_fileset_file "double_add_1_i_llvm_fpga_sfc_exit_s_c1_o0000add_11_full_detector.sv" SYSTEM_VERILOG PATH "kernel_hdl/double_add_1/double_add_1_i_llvm_fpga_sfc_exit_s_c1_o0000add_11_full_detector.sv" TOP_LEVEL_FILE
add_fileset_file "double_add_1_i_llvm_fpga_sfc_exit_s_c1_o0000ble_add_11_data_fifo.sv" SYSTEM_VERILOG PATH "kernel_hdl/double_add_1/double_add_1_i_llvm_fpga_sfc_exit_s_c1_o0000ble_add_11_data_fifo.sv" TOP_LEVEL_FILE
add_fileset_file "double_add_1_i_sfc_logic_s_c1_in_for_bod0000_enter_double_add_10.sv" SYSTEM_VERILOG PATH "kernel_hdl/double_add_1/double_add_1_i_sfc_logic_s_c1_in_for_bod0000_enter_double_add_10.sv" TOP_LEVEL_FILE
add_fileset_file "double_add_1_flt_i_sfc_logic_s_c1_in_for0000cdd6oq3cd06o20cp0doz.sv" SYSTEM_VERILOG PATH "kernel_hdl/double_add_1/double_add_1_flt_i_sfc_logic_s_c1_in_for0000cdd6oq3cd06o20cp0doz.sv" TOP_LEVEL_FILE
add_fileset_file "double_add_1_i_llvm_fpga_ffwd_source_f64_unnamed_4_double_add_10.sv" SYSTEM_VERILOG PATH "kernel_hdl/double_add_1/double_add_1_i_llvm_fpga_ffwd_source_f64_unnamed_4_double_add_10.sv" TOP_LEVEL_FILE
add_fileset_file "double_add_1_i_llvm_fpga_pop_f64_temp_sum_07_pop5_0.sv" SYSTEM_VERILOG PATH "kernel_hdl/double_add_1/double_add_1_i_llvm_fpga_pop_f64_temp_sum_07_pop5_0.sv" TOP_LEVEL_FILE
add_fileset_file "double_add_1_i_llvm_fpga_push_f64_temp_sum_07_push5_0.sv" SYSTEM_VERILOG PATH "kernel_hdl/double_add_1/double_add_1_i_llvm_fpga_push_f64_temp_sum_07_push5_0.sv" TOP_LEVEL_FILE
add_fileset_file "double_add_1_B2_branch.sv" SYSTEM_VERILOG PATH "kernel_hdl/double_add_1/double_add_1_B2_branch.sv" TOP_LEVEL_FILE
add_fileset_file "double_add_1_B2_merge.sv" SYSTEM_VERILOG PATH "kernel_hdl/double_add_1/double_add_1_B2_merge.sv" TOP_LEVEL_FILE
add_fileset_file "double_add_1_i_llvm_fpga_pipeline_keep_going_6_sr.sv" SYSTEM_VERILOG PATH "kernel_hdl/double_add_1/double_add_1_i_llvm_fpga_pipeline_keep_going_6_sr.sv" TOP_LEVEL_FILE
add_fileset_file "double_add_1_i_llvm_fpga_pipeline_keep_going_6_valid_fifo.sv" SYSTEM_VERILOG PATH "kernel_hdl/double_add_1/double_add_1_i_llvm_fpga_pipeline_keep_going_6_valid_fifo.sv" TOP_LEVEL_FILE
add_fileset_file "double_add_1_bb_B1_sr_0.sv" SYSTEM_VERILOG PATH "kernel_hdl/double_add_1/double_add_1_bb_B1_sr_0.sv" TOP_LEVEL_FILE
add_fileset_file "double_add_1_bb_B2_sr_1.sv" SYSTEM_VERILOG PATH "kernel_hdl/double_add_1/double_add_1_bb_B2_sr_1.sv" TOP_LEVEL_FILE
add_fileset_file "double_add_1_function_cra_slave.sv" SYSTEM_VERILOG PATH "kernel_hdl/double_add_1/double_add_1_function_cra_slave.sv" TOP_LEVEL_FILE
add_fileset_file "acl_start_signal_chain_element.v" SYSTEM_VERILOG PATH "$::env(INTELFPGAOCLSDKROOT)/ip/acl_start_signal_chain_element.v" TOP_LEVEL_FILE
add_fileset_file "acl_avm_to_ic.v" SYSTEM_VERILOG PATH "$::env(INTELFPGAOCLSDKROOT)/ip/acl_avm_to_ic.v" TOP_LEVEL_FILE
add_fileset_file "acl_ic_master_endpoint.v" SYSTEM_VERILOG PATH "$::env(INTELFPGAOCLSDKROOT)/ip/acl_ic_master_endpoint.v" TOP_LEVEL_FILE
add_fileset_file "acl_arb_intf.v" SYSTEM_VERILOG PATH "$::env(INTELFPGAOCLSDKROOT)/ip/acl_arb_intf.v" TOP_LEVEL_FILE
add_fileset_file "acl_ic_intf.v" SYSTEM_VERILOG PATH "$::env(INTELFPGAOCLSDKROOT)/ip/acl_ic_intf.v" TOP_LEVEL_FILE
add_fileset_file "acl_ic_slave_endpoint.v" SYSTEM_VERILOG PATH "$::env(INTELFPGAOCLSDKROOT)/ip/acl_ic_slave_endpoint.v" TOP_LEVEL_FILE
add_fileset_file "acl_ic_slave_rrp.v" SYSTEM_VERILOG PATH "$::env(INTELFPGAOCLSDKROOT)/ip/acl_ic_slave_rrp.v" TOP_LEVEL_FILE
add_fileset_file "acl_ic_slave_wrp.v" SYSTEM_VERILOG PATH "$::env(INTELFPGAOCLSDKROOT)/ip/acl_ic_slave_wrp.v" TOP_LEVEL_FILE
add_fileset_file "acl_ic_mem_router.v" SYSTEM_VERILOG PATH "$::env(INTELFPGAOCLSDKROOT)/ip/acl_ic_mem_router.v" TOP_LEVEL_FILE
add_fileset_file "acl_arb2.v" SYSTEM_VERILOG PATH "$::env(INTELFPGAOCLSDKROOT)/ip/acl_arb2.v" TOP_LEVEL_FILE
add_fileset_file "acl_ic_to_avm.v" SYSTEM_VERILOG PATH "$::env(INTELFPGAOCLSDKROOT)/ip/acl_ic_to_avm.v" TOP_LEVEL_FILE
add_fileset_file "cra_ring_node.sv" SYSTEM_VERILOG PATH "$::env(INTELFPGAOCLSDKROOT)/ip/cra_ring_node.sv" TOP_LEVEL_FILE
add_fileset_file "cra_ring_root.sv" SYSTEM_VERILOG PATH "$::env(INTELFPGAOCLSDKROOT)/ip/cra_ring_root.sv" TOP_LEVEL_FILE
add_fileset_file "cra_ring_rom.sv" SYSTEM_VERILOG PATH "$::env(INTELFPGAOCLSDKROOT)/ip/cra_ring_rom.sv" TOP_LEVEL_FILE
add_fileset_file "acl_rom_module.v" SYSTEM_VERILOG PATH "$::env(INTELFPGAOCLSDKROOT)/ip/acl_rom_module.v" TOP_LEVEL_FILE
