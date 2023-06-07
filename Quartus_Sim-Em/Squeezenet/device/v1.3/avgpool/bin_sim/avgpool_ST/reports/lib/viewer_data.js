var pipelineJSON={"334717728":{"nodes":[{"name":"Exit", "id":338068304, "subtype":"exit", "start":"2.00", "end":"5.00", "details":[{"type":"table", "Start Cycle":"2", "Latency":"3", "Exit FIFO Depth":"32", "Exit FIFO Width":"64", "Details":"Exit FIFO depth is sized to accommodate all data that may be in-flight in the stall-free cluster; this depth will be equal to or greater than the latency of the cluster.  The width of the FIFO depends on the amount of data that needs to pass from the stall-free logic cluster to the stall-able logic below it."}], "type":"inst"}, {"name":"Entry", "id":347591456, "subtype":"entry", "details":[{"type":"table", "Instruction":"Cluster Entry", "Start Cycle":"1", "Latency":"0"}], "type":"inst"}, {"name":"Loop Orch", "id":347597328, "subtype":"default", "start":"2.00", "end":"2.00", "details":[{"type":"table", "Instruction":"Loop Orchestration Logic"}], "debug":[[{"filename":"/home/joerock/Documents/TFM/Quartus_Sim-Em/Squeezenet/device/v1.3/avgpool/avgpool_ST.cl", "line":13}]], "type":"inst"}, {"name":"Global variable", "id":347617120, "subtype":"pop", "start":"2.00", "end":"2.00", "details":[{"type":"table", "Instruction":"Feedback Read", "Variable":"Global variable", "Start Cycle":"2", "Latency":"0"}], "debug":[[{"filename":"/home/joerock/Documents/TFM/Quartus_Sim-Em/Squeezenet/device/v1.3/avgpool/avgpool_ST.cl", "line":13}]], "type":"inst"}, {"name":"+", "id":347619552, "subtype":"default", "start":"2.00", "end":"2.00", "details":[{"type":"table", "Instruction":"32-bit Integer Add", "Constant Operand":"1 (0x1)", "Start Cycle":"2", "Latency":"0"}], "debug":[[{"filename":"/home/joerock/Documents/TFM/Quartus_Sim-Em/Squeezenet/device/v1.3/avgpool/avgpool_ST.cl", "line":13}]], "type":"inst"}], "links":[{"from":347591456, "to":338068304, "details":[{"type":"table", "Width":"16"}]}, {"from":347591456, "to":347597328, "details":[{"type":"table", "Width":"16"}]}, {"from":347591456, "to":347617120, "details":[{"type":"table", "Width":"16"}]}, {"from":347591456, "to":347617120, "details":[{"type":"table", "Width":"16"}]}, {"from":347597328, "to":338068304, "details":[{"type":"table", "Width":"1"}]}, {"from":347617120, "to":338068304, "details":[{"type":"table", "Width":"32"}]}, {"from":347617120, "to":347619552, "details":[{"type":"table", "Width":"32"}]}, {"from":347619552, "to":347617120, "reverse":1, "details":[{"type":"table", "Instruction":"Feedback Write", "Variable":"Global variable", "Feedback FIFO Depth":"1", "Feedback FIFO Width":"32", "Start Cycle":"2", "Latency":"0"}]}]}, "335322624":{"nodes":[{"name":"Exit", "id":338120928, "subtype":"exit", "start":"15.00", "end":"18.00", "details":[{"type":"table", "Start Cycle":"15", "Latency":"3", "Exit FIFO Depth":"32", "Exit FIFO Width":"64", "Details":"Exit FIFO depth is sized to accommodate all data that may be in-flight in the stall-free cluster; this depth will be equal to or greater than the latency of the cluster.  The width of the FIFO depends on the amount of data that needs to pass from the stall-free logic cluster to the stall-able logic below it."}], "type":"inst"}, {"name":"Entry", "id":347629808, "subtype":"entry", "details":[{"type":"table", "Instruction":"Cluster Entry", "Start Cycle":"0", "Latency":"0"}], "type":"inst"}, {"name":"f32 /", "id":347630512, "subtype":"default", "start":"10.00", "end":"15.00", "details":[{"type":"table", "Instruction":"32-bit Floating-point Divide", "Constant Operand":"169", "Start Cycle":"10", "Latency":"5", "Rounding Scheme":"Faithful Rounding"}], "debug":[[{"filename":"/home/joerock/Documents/TFM/Quartus_Sim-Em/Squeezenet/device/v1.3/avgpool/avgpool_ST.cl", "line":23}]], "type":"inst"}], "links":[{"from":347629808, "to":347630512, "details":[{"type":"table", "Width":"64"}]}, {"from":347630512, "to":338120928, "details":[{"type":"table", "Width":"32"}]}]}, "335544720":{"nodes":[{"name":"Exit", "id":346259312, "subtype":"exit", "start":"5.00", "end":"8.00", "details":[{"type":"table", "Start Cycle":"5", "Latency":"3", "Exit FIFO Depth":"32", "Exit FIFO Width":"192", "Details":"Exit FIFO depth is sized to accommodate all data that may be in-flight in the stall-free cluster; this depth will be equal to or greater than the latency of the cluster.  The width of the FIFO depends on the amount of data that needs to pass from the stall-free logic cluster to the stall-able logic below it."}], "type":"inst"}, {"name":"Entry", "id":347635568, "subtype":"entry", "details":[{"type":"table", "Instruction":"Cluster Entry", "Start Cycle":"1", "Latency":"0"}], "type":"inst"}, {"name":"Loop Orch", "id":347636976, "subtype":"pop", "start":"2.00", "end":"2.00", "details":[{"type":"table", "Instruction":"Loop Orchestration Logic"}], "debug":[[{"filename":"/home/joerock/Documents/TFM/Quartus_Sim-Em/Squeezenet/device/v1.3/avgpool/avgpool_ST.cl", "line":18}]], "type":"inst"}, {"name":"Global variable", "id":347655744, "subtype":"pop", "start":"2.00", "end":"2.00", "details":[{"type":"table", "Instruction":"Feedback Read", "Variable":"Global variable", "Start Cycle":"2", "Latency":"0"}], "debug":[[{"filename":"/home/joerock/Documents/TFM/Quartus_Sim-Em/Squeezenet/device/v1.3/avgpool/avgpool_ST.cl", "line":13}]], "type":"inst"}, {"name":"Global variable", "id":347661424, "subtype":"pop", "start":"4.00", "end":"4.00", "details":[{"type":"table", "Instruction":"Feedback Read", "Variable":"Global variable", "Start Cycle":"4", "Latency":"0"}], "debug":[[{"filename":"/home/joerock/Documents/TFM/Quartus_Sim-Em/Squeezenet/device/v1.3/avgpool/avgpool_ST.cl", "line":18}]], "type":"inst"}, {"name":"*", "id":347663856, "subtype":"default", "start":"3.00", "end":"4.00", "details":[{"type":"table", "Instruction":"32-bit Integer Multiply", "Constant Operand":"169 (0xA9)", "Start Cycle":"3", "Latency":"1"}], "debug":[[{"filename":"/home/joerock/Documents/TFM/Quartus_Sim-Em/Squeezenet/device/v1.3/avgpool/avgpool_ST.cl", "line":20}]], "type":"inst"}, {"name":"+", "id":347664208, "subtype":"default", "start":"4.00", "end":"4.00", "details":[{"type":"table", "Instruction":"32-bit Integer Add", "Start Cycle":"4", "Latency":"0"}], "debug":[[{"filename":"/home/joerock/Documents/TFM/Quartus_Sim-Em/Squeezenet/device/v1.3/avgpool/avgpool_ST.cl", "line":20}]], "type":"inst"}, {"name":"input_im", "id":347664912, "subtype":"default", "start":"0.00", "end":"5.00", "details":[{"type":"table", "Instruction":"Input Synchronization for \'input_im\'", "Start Cycle":"0", "Latency":"5"}], "type":"inst"}, {"name":"Ptr. Comp.", "id":347667760, "subtype":"default", "start":"5.00", "end":"5.00", "details":[{"type":"table", "Instruction":"Pointer Computation", "Start Cycle":"5", "Latency":"0"}], "debug":[[{"filename":"/home/joerock/Documents/TFM/Quartus_Sim-Em/Squeezenet/device/v1.3/avgpool/avgpool_ST.cl", "line":20}]], "type":"inst"}, {"name":"Xor", "id":347669568, "subtype":"default", "start":"5.00", "end":"5.00", "details":[{"type":"table", "Instruction":"1-bit Xor", "Constant Operand":"1 (0x1)", "Start Cycle":"5", "Latency":"0"}], "type":"inst"}, {"name":"+", "id":347669920, "subtype":"default", "start":"4.00", "end":"4.00", "details":[{"type":"table", "Instruction":"32-bit Integer Add", "Constant Operand":"1 (0x1)", "Start Cycle":"4", "Latency":"0"}], "debug":[[{"filename":"/home/joerock/Documents/TFM/Quartus_Sim-Em/Squeezenet/device/v1.3/avgpool/avgpool_ST.cl", "line":18}]], "type":"inst"}], "links":[{"from":347635568, "to":346259312, "details":[{"type":"table", "Width":"96"}]}, {"from":347635568, "to":347636976, "details":[{"type":"table", "Width":"96"}]}, {"from":347635568, "to":347655744, "details":[{"type":"table", "Width":"96"}]}, {"from":347635568, "to":347655744, "details":[{"type":"table", "Width":"96"}]}, {"from":347635568, "to":347661424, "details":[{"type":"table", "Width":"96"}]}, {"from":347635568, "to":347669568, "details":[{"type":"table", "Width":"96"}]}, {"from":347635568, "to":347661424, "details":[{"type":"table", "Width":"96"}]}, {"from":347636976, "to":346259312, "details":[{"type":"table", "Width":"2"}]}, {"from":347636976, "to":347655744, "details":[{"type":"table", "Width":"2"}]}, {"from":347636976, "to":347661424, "details":[{"type":"table", "Width":"2"}]}, {"from":347655744, "to":346259312, "details":[{"type":"table", "Width":"32"}]}, {"from":347655744, "to":347655744, "reverse":1, "details":[{"type":"table", "Instruction":"Feedback Write", "Variable":"Global variable", "Feedback FIFO Depth":"1", "Feedback FIFO Width":"32", "Start Cycle":"2", "Latency":"0"}]}, {"from":347655744, "to":347663856, "details":[{"type":"table", "Width":"32"}]}, {"from":347661424, "to":347664208, "details":[{"type":"table", "Width":"32"}]}, {"from":347661424, "to":347669920, "details":[{"type":"table", "Width":"32"}]}, {"from":347663856, "to":347664208, "details":[{"type":"table", "Width":"32"}]}, {"from":347664208, "to":347667760, "details":[{"type":"table", "Width":"32"}]}, {"from":347664912, "to":347667760, "details":[{"type":"table", "Width":"64"}]}, {"from":347667760, "to":346259312, "details":[{"type":"table", "Width":"64"}]}, {"from":347669568, "to":346259312, "details":[{"type":"table", "Width":"1"}]}, {"from":347669920, "to":347661424, "reverse":1, "details":[{"type":"table", "Instruction":"Feedback Write", "Variable":"Global variable", "Feedback FIFO Depth":"1", "Feedback FIFO Width":"32", "Start Cycle":"4", "Latency":"0"}]}]}, "336084544":{"nodes":[{"name":"Entry", "id":334731216, "subtype":"entry", "details":[{"type":"table", "Instruction":"Cluster Entry", "Start Cycle":"152", "Latency":"0"}], "type":"inst"}, {"name":"Exit", "id":347609600, "subtype":"exit", "start":"157.00", "end":"160.00", "details":[{"type":"table", "Start Cycle":"157", "Latency":"3", "Exit FIFO Depth":"32", "Exit FIFO Width":"64", "Details":"Exit FIFO depth is sized to accommodate all data that may be in-flight in the stall-free cluster; this depth will be equal to or greater than the latency of the cluster.  The width of the FIFO depends on the amount of data that needs to pass from the stall-free logic cluster to the stall-able logic below it."}], "type":"inst"}, {"name":"f32 FP Accum", "id":347708176, "subtype":"default", "start":"153.00", "end":"157.00", "details":[{"type":"table", "Instruction":"32-bit Floating-point Accumulator", "Start Cycle":"153", "Latency":"4"}], "debug":[[{"filename":"/home/joerock/Documents/TFM/Quartus_Sim-Em/Squeezenet/device/v1.3/avgpool/avgpool_ST.cl", "line":20}]], "type":"inst"}], "links":[{"from":334731216, "to":347708176, "details":[{"type":"table", "Width":"96"}]}, {"from":347708176, "to":347609600, "details":[{"type":"table", "Width":"32"}]}]}};
var treeJSON={"nodes":[{"name":"avgpool2d", "id":332540792, "type":"kernel", "children":[{"name":"avgpool2d.B2", "id":332075376, "type":"bb"}, {"name":"avgpool2d.B3", "id":332075456, "type":"bb", "children":[{"name":"Cluster 1", "id":335322624, "type":"cluster"}]}, {"name":"avgpool2d.B1", "id":332594112, "type":"bb", "children":[{"name":"Cluster 0", "id":334717728, "type":"cluster"}]}, {"name":"avgpool2d.B4", "id":332075536, "type":"bb", "children":[{"name":"Cluster 3", "id":336084544, "type":"cluster"}, {"name":"Cluster 2", "id":335544720, "type":"cluster"}]}, {"name":"avgpool2d.B0", "id":332555424, "type":"bb"}]}], "links":[]};
var new_lmvJSON={"nodes":[], "links":[]};
var systemJSON={};
var blockJSON={"332075376":{"nodes":[{"name":"Feedback", "id":336007776, "start":"0.00", "end":"1.00", "subtype":"push", "details":[{"type":"table", "Instruction":"Feedback Write", "Variable":"Unknown variable", "Feedback FIFO Depth":"1", "Feedback FIFO Width":"1", "Start Cycle":"0", "Latency":"1"}], "debug":[[{"filename":"/home/joerock/Documents/TFM/Quartus_Sim-Em/Squeezenet/device/v1.3/avgpool/avgpool_ST.cl", "line":25}]], "type":"inst"}], "links":[]}, "332075456":{"nodes":[{"name":"Cluster 1", "id":335322624, "start":"0.00", "end":"18.00", "details":[{"type":"table", "Cluster Name":"i_sfc_s_c0_in_for_cond_cleanup3_avgpool2ds_c0_enter15_avgpool2d3", "Cluster Type":"Stall-Free", "Cluster Start Cycle":"0", "Cluster Latency":"18"}], "type":"cluster", "children":[{"name":"Logic", "id":335329568, "subtype":"entry", "details":[{"type":"table", "Cluster Logic Start Cycle":"0", "Cluster Logic Latency":"15"}], "type":"inst"}, {"name":"Exit", "id":335337152, "subtype":"exit", "details":[{"type":"table", "Start Cycle":"15", "Latency":"3", "Exit FIFO Depth":"32", "Exit FIFO Width":"64", "Details":"Exit FIFO depth is sized to accommodate all data that may be in-flight in the stall-free cluster; this depth will be equal to or greater than the latency of the cluster.  The width of the FIFO depends on the amount of data that needs to pass from the stall-free logic cluster to the stall-able logic below it."}], "type":"inst"}]}, {"name":"ST", "id":335051696, "start":"18.00", "end":"20.00", "subtype":"load/store", "details":[{"type":"table", "Instruction":"Store", "Width":"32 bits", "LSU Style":"Burst-coalesced", "Stall-free":"No", "Global Memory":"Yes", "Start Cycle":"18", "Latency":"2"}], "debug":[[{"filename":"/home/joerock/Documents/TFM/Quartus_Sim-Em/Squeezenet/device/v1.3/avgpool/avgpool_ST.cl", "line":23}]], "type":"inst"}, {"name":"output_im", "id":335434416, "start":"18.00", "end":"18.00", "subtype":"default", "details":[{"type":"table", "Instruction":"Input Synchronization for \'output_im\'", "Start Cycle":"18", "Latency":"0"}], "type":"inst"}, {"name":"Ptr. Comp.", "id":337706944, "start":"18.00", "end":"18.00", "subtype":"default", "details":[{"type":"table", "Instruction":"Pointer Computation", "Start Cycle":"18", "Latency":"0"}], "debug":[[{"filename":"/home/joerock/Documents/TFM/Quartus_Sim-Em/Squeezenet/device/v1.3/avgpool/avgpool_ST.cl", "line":23}]], "type":"inst"}, {"name":"Input", "id":338089536, "subtype":"default", "details":[{"type":"table", "Instruction":"Input", "Preceding Blocks":"avgpool2d.B4"}], "type":"inst"}], "links":[{"from":335329568, "to":335337152}, {"from":335337152, "to":335051696, "details":[{"type":"table", "Width":"64"}]}, {"from":335434416, "to":337706944, "details":[{"type":"table", "Width":"64"}]}, {"from":337706944, "to":335051696, "details":[{"type":"table", "Width":"64"}]}, {"from":338089536, "to":335329568, "details":[{"type":"table", "Width":"32"}]}, {"from":338089536, "to":337706944, "details":[{"type":"table", "Width":"32"}]}]}, "332075536":{"nodes":[{"name":"Cluster 3", "id":336084544, "start":"152.00", "end":"160.00", "details":[{"type":"table", "Cluster Name":"i_sfc_s_c1_in_for_body4_avgpool2ds_c1_enter_avgpool2d5", "Cluster Type":"Stall-Free", "Cluster Start Cycle":"152", "Cluster Latency":"8"}], "type":"cluster", "children":[{"name":"Logic", "id":336091088, "subtype":"entry", "details":[{"type":"table", "Cluster Logic Start Cycle":"152", "Cluster Logic Latency":"5"}], "type":"inst"}, {"name":"Exit", "id":336118576, "subtype":"exit", "details":[{"type":"table", "Start Cycle":"157", "Latency":"3", "Exit FIFO Depth":"32", "Exit FIFO Width":"64", "Details":"Exit FIFO depth is sized to accommodate all data that may be in-flight in the stall-free cluster; this depth will be equal to or greater than the latency of the cluster.  The width of the FIFO depends on the amount of data that needs to pass from the stall-free logic cluster to the stall-able logic below it."}], "type":"inst"}]}, {"name":"Cluster 2", "id":335544720, "start":"1.00", "end":"8.00", "details":[{"type":"table", "Cluster Name":"i_sfc_s_c0_in_for_body4_avgpool2ds_c0_enter215_avgpool2d1", "Cluster Type":"Stall-Free", "Cluster Start Cycle":"1", "Cluster Latency":"7"}], "type":"cluster", "children":[{"name":"Logic", "id":335551072, "subtype":"entry", "details":[{"type":"table", "Cluster Logic Start Cycle":"1", "Cluster Logic Latency":"4"}], "type":"inst"}, {"name":"Exit", "id":335967392, "subtype":"exit", "details":[{"type":"table", "Start Cycle":"5", "Latency":"3", "Exit FIFO Depth":"32", "Exit FIFO Width":"192", "Details":"Exit FIFO depth is sized to accommodate all data that may be in-flight in the stall-free cluster; this depth will be equal to or greater than the latency of the cluster.  The width of the FIFO depends on the amount of data that needs to pass from the stall-free logic cluster to the stall-able logic below it."}], "type":"inst"}]}, {"name":"LD", "id":335984352, "start":"8.00", "end":"152.00", "subtype":"load/store", "details":[{"type":"table", "Instruction":"Load", "Width":"32 bits", "LSU Style":"Burst-coalesced", "Stall-free":"No", "Global Memory":"Yes", "Start Cycle":"8", "Latency":"144"}], "debug":[[{"filename":"/home/joerock/Documents/TFM/Quartus_Sim-Em/Squeezenet/device/v1.3/avgpool/avgpool_ST.cl", "line":20}]], "type":"inst"}, {"name":"Loop Input", "id":336121808, "subtype":"default", "details":[{"type":"table", "Instruction":"Loop Input", "Preceding Blocks":"avgpool2d.B4, avgpool2d.B1"}], "type":"inst"}], "links":[{"from":336091088, "to":336118576}, {"from":335551072, "to":335967392}, {"from":335984352, "to":336091088, "details":[{"type":"table", "Width":"32"}]}, {"from":335967392, "to":335984352, "details":[{"type":"table", "Width":"192"}]}, {"from":336121808, "to":335551072, "details":[{"type":"table", "Width":"1"}]}, {"from":336121808, "to":335551072, "details":[{"type":"table", "Width":"32"}]}, {"from":336121808, "to":335551072, "details":[{"type":"table", "Width":"1"}]}]}, "332555424":{"nodes":[{"name":"?", "id":338098640, "start":"1.00", "end":"2.00", "subtype":"pop", "details":[{"type":"table", "Instruction":"Feedback Read", "Variable":"Unknown variable", "Start Cycle":"1", "Latency":"1"}], "type":"inst"}], "links":[]}, "332594112":{"nodes":[{"name":"Cluster 0", "id":334717728, "start":"1.00", "end":"5.00", "details":[{"type":"table", "Cluster Name":"i_sfc_s_c0_in_for_cond1_preheader_avgpool2ds_c0_enter4_avgpool2d1", "Cluster Type":"Stall-Free", "Cluster Start Cycle":"1", "Cluster Latency":"4"}], "type":"cluster", "children":[{"name":"Logic", "id":334724208, "subtype":"entry", "details":[{"type":"table", "Cluster Logic Start Cycle":"1", "Cluster Logic Latency":"1"}], "type":"inst"}, {"name":"Exit", "id":335161584, "subtype":"exit", "details":[{"type":"table", "Start Cycle":"2", "Latency":"3", "Exit FIFO Depth":"32", "Exit FIFO Width":"64", "Details":"Exit FIFO depth is sized to accommodate all data that may be in-flight in the stall-free cluster; this depth will be equal to or greater than the latency of the cluster.  The width of the FIFO depends on the amount of data that needs to pass from the stall-free logic cluster to the stall-able logic below it."}], "type":"inst"}]}, {"name":"Loop Input", "id":347533552, "subtype":"default", "details":[{"type":"table", "Instruction":"Loop Input", "Preceding Blocks":"avgpool2d.B3, avgpool2d.B0"}], "debug":[[{"filename":"/home/joerock/Documents/TFM/Quartus_Sim-Em/Squeezenet/device/v1.3/avgpool/avgpool_ST.cl", "line":13}]], "type":"inst"}], "links":[{"from":334724208, "to":335161584}, {"from":347533552, "to":334724208, "details":[{"type":"table", "Width":"1"}]}]}};
var scheduleJSON={"332540792":{"nodes":[{"name":"avgpool2d.B0", "id":332555424, "start":"0", "end":"2", "details":[{"type":"table"}], "type":"bb", "children":[{"name":"?", "id":338098640, "start":"1", "end":"2", "details":[{"type":"table", "Instruction":"Feedback Read", "Variable":"Unknown variable", "Start Cycle":"1", "Latency":"1"}], "type":"inst"}]}, {"name":"avgpool2d.B1", "id":332594112, "start":"2", "end":"7", "details":[{"type":"table"}], "type":"bb", "children":[{"name":"Cluster 0", "id":334717728, "start":"3", "end":"7", "details":[{"type":"table", "Cluster Name":"i_sfc_s_c0_in_for_cond1_preheader_avgpool2ds_c0_enter4_avgpool2d1", "Cluster Type":"Stall-Free", "Cluster Start Cycle":"1", "Cluster Latency":"4"}], "type":"cluster", "children":[{"name":"Global variable", "id":347617120, "start":"4", "end":"4", "details":[{"type":"table", "Instruction":"Feedback Read", "Variable":"Global variable", "Start Cycle":"2", "Latency":"0"}], "debug":[[{"filename":"/home/joerock/Documents/TFM/Quartus_Sim-Em/Squeezenet/device/v1.3/avgpool/avgpool_ST.cl", "line":13}]], "type":"inst"}, {"name":"+", "id":347619552, "start":"4", "end":"4", "details":[{"type":"table", "Instruction":"32-bit Integer Add", "Constant Operand":"1 (0x1)", "Start Cycle":"2", "Latency":"0"}], "debug":[[{"filename":"/home/joerock/Documents/TFM/Quartus_Sim-Em/Squeezenet/device/v1.3/avgpool/avgpool_ST.cl", "line":13}]], "type":"inst"}, {"name":"Exit", "id":338068304, "start":"4", "end":"7", "details":[{"type":"table", "Start Cycle":"2", "Latency":"3", "Exit FIFO Depth":"32", "Exit FIFO Width":"64", "Details":"Exit FIFO depth is sized to accommodate all data that may be in-flight in the stall-free cluster; this depth will be equal to or greater than the latency of the cluster.  The width of the FIFO depends on the amount of data that needs to pass from the stall-free logic cluster to the stall-able logic below it."}], "type":"inst"}]}]}, {"name":"avgpool2d.B4", "id":332075536, "start":"7", "end":"167", "details":[{"type":"table"}], "type":"bb", "children":[{"name":"Cluster 2", "id":335544720, "start":"8", "end":"15", "details":[{"type":"table", "Cluster Name":"i_sfc_s_c0_in_for_body4_avgpool2ds_c0_enter215_avgpool2d1", "Cluster Type":"Stall-Free", "Cluster Start Cycle":"1", "Cluster Latency":"7"}], "type":"cluster", "children":[{"name":"Xor", "id":347669568, "start":"12", "end":"12", "details":[{"type":"table", "Instruction":"1-bit Xor", "Constant Operand":"1 (0x1)", "Start Cycle":"5", "Latency":"0"}], "type":"inst"}, {"name":"Global variable", "id":347661424, "start":"11", "end":"11", "details":[{"type":"table", "Instruction":"Feedback Read", "Variable":"Global variable", "Start Cycle":"4", "Latency":"0"}], "debug":[[{"filename":"/home/joerock/Documents/TFM/Quartus_Sim-Em/Squeezenet/device/v1.3/avgpool/avgpool_ST.cl", "line":18}]], "type":"inst"}, {"name":"+", "id":347669920, "start":"11", "end":"11", "details":[{"type":"table", "Instruction":"32-bit Integer Add", "Constant Operand":"1 (0x1)", "Start Cycle":"4", "Latency":"0"}], "debug":[[{"filename":"/home/joerock/Documents/TFM/Quartus_Sim-Em/Squeezenet/device/v1.3/avgpool/avgpool_ST.cl", "line":18}]], "type":"inst"}, {"name":"Global variable", "id":347655744, "start":"9", "end":"9", "details":[{"type":"table", "Instruction":"Feedback Read", "Variable":"Global variable", "Start Cycle":"2", "Latency":"0"}], "debug":[[{"filename":"/home/joerock/Documents/TFM/Quartus_Sim-Em/Squeezenet/device/v1.3/avgpool/avgpool_ST.cl", "line":13}]], "type":"inst"}, {"name":"*", "id":347663856, "start":"10", "end":"11", "details":[{"type":"table", "Instruction":"32-bit Integer Multiply", "Constant Operand":"169 (0xA9)", "Start Cycle":"3", "Latency":"1"}], "debug":[[{"filename":"/home/joerock/Documents/TFM/Quartus_Sim-Em/Squeezenet/device/v1.3/avgpool/avgpool_ST.cl", "line":20}]], "type":"inst"}, {"name":"+", "id":347664208, "start":"11", "end":"11", "details":[{"type":"table", "Instruction":"32-bit Integer Add", "Start Cycle":"4", "Latency":"0"}], "debug":[[{"filename":"/home/joerock/Documents/TFM/Quartus_Sim-Em/Squeezenet/device/v1.3/avgpool/avgpool_ST.cl", "line":20}]], "type":"inst"}, {"name":"input_im", "id":347664912, "start":"7", "end":"12", "details":[{"type":"table", "Instruction":"Input Synchronization for \'input_im\'", "Start Cycle":"0", "Latency":"5"}], "type":"inst"}, {"name":"Ptr. Comp.", "id":347667760, "start":"12", "end":"12", "details":[{"type":"table", "Instruction":"Pointer Computation", "Start Cycle":"5", "Latency":"0"}], "debug":[[{"filename":"/home/joerock/Documents/TFM/Quartus_Sim-Em/Squeezenet/device/v1.3/avgpool/avgpool_ST.cl", "line":20}]], "type":"inst"}, {"name":"Exit", "id":346259312, "start":"12", "end":"15", "details":[{"type":"table", "Start Cycle":"5", "Latency":"3", "Exit FIFO Depth":"32", "Exit FIFO Width":"192", "Details":"Exit FIFO depth is sized to accommodate all data that may be in-flight in the stall-free cluster; this depth will be equal to or greater than the latency of the cluster.  The width of the FIFO depends on the amount of data that needs to pass from the stall-free logic cluster to the stall-able logic below it."}], "type":"inst"}]}, {"name":"LD", "id":335984352, "start":"15", "end":"159", "details":[{"type":"table", "Instruction":"Load", "Width":"32 bits", "LSU Style":"Burst-coalesced", "Stall-free":"No", "Global Memory":"Yes", "Start Cycle":"8", "Latency":"144"}], "debug":[[{"filename":"/home/joerock/Documents/TFM/Quartus_Sim-Em/Squeezenet/device/v1.3/avgpool/avgpool_ST.cl", "line":20}]], "type":"inst"}, {"name":"Cluster 3", "id":336084544, "start":"159", "end":"167", "details":[{"type":"table", "Cluster Name":"i_sfc_s_c1_in_for_body4_avgpool2ds_c1_enter_avgpool2d5", "Cluster Type":"Stall-Free", "Cluster Start Cycle":"152", "Cluster Latency":"8"}], "type":"cluster", "children":[{"name":"f32 FP Accum", "id":347708176, "start":"160", "end":"164", "details":[{"type":"table", "Instruction":"32-bit Floating-point Accumulator", "Start Cycle":"153", "Latency":"4"}], "debug":[[{"filename":"/home/joerock/Documents/TFM/Quartus_Sim-Em/Squeezenet/device/v1.3/avgpool/avgpool_ST.cl", "line":20}]], "type":"inst"}, {"name":"Exit", "id":347609600, "start":"164", "end":"167", "details":[{"type":"table", "Start Cycle":"157", "Latency":"3", "Exit FIFO Depth":"32", "Exit FIFO Width":"64", "Details":"Exit FIFO depth is sized to accommodate all data that may be in-flight in the stall-free cluster; this depth will be equal to or greater than the latency of the cluster.  The width of the FIFO depends on the amount of data that needs to pass from the stall-free logic cluster to the stall-able logic below it."}], "type":"inst"}]}]}, {"name":"avgpool2d.B3", "id":332075456, "start":"167", "end":"187", "details":[{"type":"table"}], "type":"bb", "children":[{"name":"Cluster 1", "id":335322624, "start":"167", "end":"185", "details":[{"type":"table", "Cluster Name":"i_sfc_s_c0_in_for_cond_cleanup3_avgpool2ds_c0_enter15_avgpool2d3", "Cluster Type":"Stall-Free", "Cluster Start Cycle":"0", "Cluster Latency":"18"}], "type":"cluster", "children":[{"name":"f32 /", "id":347630512, "start":"177", "end":"182", "details":[{"type":"table", "Instruction":"32-bit Floating-point Divide", "Constant Operand":"169", "Start Cycle":"10", "Latency":"5", "Rounding Scheme":"Faithful Rounding"}], "debug":[[{"filename":"/home/joerock/Documents/TFM/Quartus_Sim-Em/Squeezenet/device/v1.3/avgpool/avgpool_ST.cl", "line":23}]], "type":"inst"}, {"name":"Exit", "id":338120928, "start":"182", "end":"185", "details":[{"type":"table", "Start Cycle":"15", "Latency":"3", "Exit FIFO Depth":"32", "Exit FIFO Width":"64", "Details":"Exit FIFO depth is sized to accommodate all data that may be in-flight in the stall-free cluster; this depth will be equal to or greater than the latency of the cluster.  The width of the FIFO depends on the amount of data that needs to pass from the stall-free logic cluster to the stall-able logic below it."}], "type":"inst"}]}, {"name":"output_im", "id":335434416, "start":"185", "end":"185", "details":[{"type":"table", "Instruction":"Input Synchronization for \'output_im\'", "Start Cycle":"18", "Latency":"0"}], "type":"inst"}, {"name":"Ptr. Comp.", "id":337706944, "start":"185", "end":"185", "details":[{"type":"table", "Instruction":"Pointer Computation", "Start Cycle":"18", "Latency":"0"}], "debug":[[{"filename":"/home/joerock/Documents/TFM/Quartus_Sim-Em/Squeezenet/device/v1.3/avgpool/avgpool_ST.cl", "line":23}]], "type":"inst"}, {"name":"ST", "id":335051696, "start":"185", "end":"187", "details":[{"type":"table", "Instruction":"Store", "Width":"32 bits", "LSU Style":"Burst-coalesced", "Stall-free":"No", "Global Memory":"Yes", "Start Cycle":"18", "Latency":"2"}], "debug":[[{"filename":"/home/joerock/Documents/TFM/Quartus_Sim-Em/Squeezenet/device/v1.3/avgpool/avgpool_ST.cl", "line":23}]], "type":"inst"}]}, {"name":"avgpool2d.B2", "id":332075376, "start":"187", "end":"188", "details":[{"type":"table"}], "type":"bb"}], "links":[{"from":347630512, "to":338120928}, {"from":347708176, "to":347609600}, {"from":335984352, "to":336084544}, {"from":335434416, "to":337706944}, {"from":332075456, "to":332075376}, {"from":332075456, "to":332594112}, {"from":332075536, "to":332075456}, {"from":347617120, "to":338068304}, {"from":347617120, "to":347619552}, {"from":332594112, "to":332075536}, {"from":347664912, "to":347667760}, {"from":347655744, "to":346259312}, {"from":347655744, "to":347663856}, {"from":335544720, "to":335984352}, {"from":335544720, "to":336084544}, {"from":332555424, "to":332594112}, {"from":347669568, "to":346259312}, {"from":347663856, "to":347664208}, {"from":337706944, "to":335051696}, {"from":347661424, "to":347664208}, {"from":347661424, "to":347669920}, {"from":335322624, "to":335051696}, {"from":347667760, "to":346259312}, {"from":347664208, "to":347667760}]}};
var bottleneckJSON={"bottlenecks":[]};
var gmvJSON={"nodes":[{"name":"DDR", "id":1, "details":[{"type":"table", "Interleaving":"Yes", "Interleave Size":"2048 MBs", "Channels":"1 channel", "Maximum bandwidth the BSP can deliver":"19200.00 MB/s<br><small><i> Note: Realistic maximum bandwidth is about 90% of the above due to loss from interconnect and memory controller.</i></small>", "Channel DDR_Width (bits)":"512"}], "type":"memsys", "children":[{"name":"channel 0", "id":3, "type":"bb"}]}, {"name":"Memory Controller", "id":2, "parent":"1", "bw":"19200.00", "num_channels":"1", "interleave":"1", "details":[{"type":"table", "Maximum bandwidth the BSP can deliver":"19200.00 MB/s<br><small><i> Note: Realistic maximum bandwidth is about 90% of the above due to loss from interconnect and memory controller.</i></small>"}], "type":"bb"}, {"name":"Global Memory Interconnect", "id":4, "parent":"1", "type":"bb", "children":[{"name":"SHARE", "id":5, "type":"arb"}, {"name":"Write Interconnect", "id":8, "details":[{"type":"table", "Name":"DDR", "Interconnect Style":"tree", "Writes":"1", "User specified force-single-store-ring flag":"False", "Store Rings":"1"}], "type":"bb"}, {"name":"Read Interconnect", "id":6, "details":[{"type":"table", "Name":"DDR", "Interconnect Style":"tree", "Reads":"1"}], "type":"bb"}, {"name":"Read Interconnect Router", "id":7, "details":[{"type":"table", "User specified num-reorder flag":"1"}], "type":"memsys", "children":[{"name":"Bus 0", "id":13, "type":"memsys"}]}]}, {"name":"Global Memory Loads", "id":11, "parent":"1", "type":"bb", "children":[{"name":"LD", "id":12, "kwidth":"32", "mwidth":"512", "details":[{"type":"table", "Start Cycle":"8", "Latency":"143 cycles", "Width":"32 bits", "DDR_Width":"512 bits", "Uses Caching":"No", "LSU Style":"BURST-COALESCED"}], "debug":[[{"filename":"/home/joerock/Documents/TFM/Quartus_Sim-Em/Squeezenet/device/v1.3/avgpool/avgpool_ST.cl", "line":20}]], "type":"inst"}]}, {"name":"Global Memory Stores", "id":9, "parent":"1", "type":"bb", "children":[{"name":"ST", "id":10, "kwidth":"32", "mwidth":"512", "details":[{"type":"table", "Start Cycle":"18", "Latency":"2 cycles", "Width":"32 bits", "DDR_Width":"512 bits", "Uses Write Ack":"No", "LSU Style":"BURST-COALESCED"}], "debug":[[{"filename":"/home/joerock/Documents/TFM/Quartus_Sim-Em/Squeezenet/device/v1.3/avgpool/avgpool_ST.cl", "line":23}]], "type":"inst"}]}], "links":[{"from":3, "to":2}, {"from":2, "to":3}, {"from":6, "to":5}, {"from":8, "to":5}, {"from":5, "to":2}, {"from":10, "to":8}, {"from":12, "to":6}, {"from":2, "to":13}, {"from":13, "to":12, "reverse":1}]};