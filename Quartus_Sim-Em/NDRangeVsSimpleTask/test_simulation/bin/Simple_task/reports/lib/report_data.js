var areaJSON={"columns":["", "ALUTs", "FFs", "RAMs", "DSPs", "MLABs", "Details"], "debug_enabled":"true", "type":"module", "total_percent":[16.7571, 8.72039, 8.55864, 7.77737, 0.263505], "total":[73167, 146250, 211, 4, 67], "name":"Kernel System", "max_resources":[854400, 1708800, 2713, 1518, 42720], "children":[{"name":"Static Partition", "type":"partition", "children":[{"name":"Board interface", "type":"resource", "data":[65540, 131080, 176, 0, 0], "details":[{"type":"text", "text":"Platform interface logic."}]}]}, {"name":"Global interconnect", "type":"resource", "data":[4121, 5284, 0, 0, 0], "details":[{"type":"text", "text":"Global interconnect for 2 global loads and 1 global store. Reduce number of global loads and stores to simplify global interconnect."}, {"type":"brief", "text":"For 2 global loads and 1 global store."}, {"type":"text", "text":"See %L for more information", "links":[{"guide":"Best Practices Guide : Global Memory Interconnect", "link":"file:////home/joerock/intelFPGA_pro/21.1/hld/aoc_help_pages/hnj1476724450050.html"}]}]}, {"name":"System description ROM", "type":"resource", "data":[0, 67, 2, 0, 0], "details":[{"type":"text", "text":"This read-only memory contains information for the host about the system and about each kernel in the system, including kernel names, arguments, and attributes. The system description ROM ensures that the binary image on the FPGA is compatible with the host program."}, {"type":"brief", "text":"Contains information for the host."}]}, {"name":"mmul", "compute_units":1, "type":"function", "total_percent":[1.10964, 0.567182, 0.574614, 1.21637, 0.263505], "total_kernel_resources":[3506, 9819, 33, 4, 67], "details":[{"type":"text", "text":"Number of compute units: 1"}, {"type":"text", "text":"Kernel attribute \'uses_global_work_offset\' not specified. Add \'__attribute__((uses_global_work_offset(0)))\' to reduce area utilization if the kernel will always be enqueued with a 0 or NULL global_work_offset argument in clEnqueueNDRangeKernel. Add \'__attribute__((uses_global_work_offset(1)))\' to hide this suggestion without affecting kernel functionality."}, {"type":"brief", "text":"1 compute unit.\\nKernel attribute \'uses_global_work_offset\' not specified. Add \'__attribute__((uses_global_work_offset(0)))\' to reduce area utilization if the kernel will always be enqueued with a 0 or NULL global_work_offset argument in clEnqueueNDRangeKernel. Add \'__attribute__((uses_global_work_offset(1)))\' to hide this suggestion without affecting kernel functionality."}], "children":[{"name":"Function overhead", "type":"resource", "data":[1338, 2411, 0, 0, 10], "details":[{"type":"text", "text":"Kernel dispatch logic."}, {"type":"brief", "text":"Kernel dispatch logic."}]}, {"name":"Private Variable: \\n - \'i\' (Simple_task.cl:10)", "type":"resource", "data":[14, 73, 0, 0, 0], "debug":[[{"filename":"Simple_task.cl", "line":10}]], "details":[{"type":"text", "text":"Type: Register"}, {"type":"text", "text":"1 register of width 32 bits and depth 1"}, {"type":"text", "text":"1 register of width 33 bits and depth 1"}, {"type":"brief", "text":"Register,\\n1 reg, 32 width by 1 depth,\\n1 reg, 33 width by 1 depth"}]}, {"name":"Private Variable: \\n - \'j\' (Simple_task.cl:12)", "type":"resource", "data":[14, 73, 0, 0, 0], "debug":[[{"filename":"Simple_task.cl", "line":12}]], "details":[{"type":"text", "text":"Type: Register"}, {"type":"text", "text":"1 register of width 32 bits and depth 1"}, {"type":"text", "text":"1 register of width 33 bits and depth 1"}, {"type":"brief", "text":"Register,\\n1 reg, 32 width by 1 depth,\\n1 reg, 33 width by 1 depth"}]}, {"name":"Private Variable: \\n - \'k\' (Simple_task.cl:16)", "type":"resource", "data":[31, 138, 0, 0, 0], "debug":[[{"filename":"Simple_task.cl", "line":16}]], "details":[{"type":"text", "text":"Type: Register"}, {"type":"text", "text":"1 register of width 32 bits and depth 1"}, {"type":"text", "text":"1 register of width 33 bits and depth 1"}, {"type":"brief", "text":"Register,\\n1 reg, 32 width by 1 depth,\\n1 reg, 33 width by 1 depth"}]}, {"name":"mmul.B0", "type":"basicblock", "children":[{"name":"State", "type":"resource", "data":[2, 34, 0, 0, 0], "details":[{"type":"brief", "text":"Live values and control logic"}, {"type":"text", "text":"Resources for live values and control logic. To reduce this area:", "details":[{"type":"text", "text":"reduce size of local variables"}, {"type":"text", "text":"reduce scope of local variables, localizing them as much as possible"}, {"type":"text", "text":"reduce number of nested loops"}]}], "children":[{"name":"Simple_task.cl:10", "type":"resource", "data":[2, 34, 0, 0, 0], "debug":[[{"filename":"/home/joerock/Documents/TFM/Quartus_Sim-Em/NDRangeVsSimpleTask/test_simulation/Simple_task.cl", "line":10}]]}]}, {"name":"Feedback", "type":"resource", "data":[8, 2, 0, 0, 0], "details":[{"type":"brief", "text":"Loop-carried dependencies"}, {"type":"text", "text":"Resources for loop-carried dependencies. To reduce this area:", "details":[{"type":"text", "text":"reduce number and size of loop-carried variables"}]}], "children":[{"name":"No Source Line", "type":"resource", "data":[8, 2, 0, 0, 0]}]}, {"name":"Computation", "type":"resource", "children":[{"name":"Simple_task.cl:10", "type":"resource", "data":[86, 2, 0, 0, 0], "debug":[[{"filename":"/home/joerock/Documents/TFM/Quartus_Sim-Em/NDRangeVsSimpleTask/test_simulation/Simple_task.cl", "line":10}]], "children":[{"name":"32-bit Integer Compare", "type":"resource", "count":2, "data":[70, 2, 0, 0, 0]}, {"name":"32-bit Select", "type":"resource", "count":1, "data":[16, 0, 0, 0, 0]}], "replace_name":"true"}]}]}, {"name":"mmul.B1", "type":"basicblock", "children":[{"name":"State", "type":"resource", "data":[2, 8, 0, 0, 0], "details":[{"type":"brief", "text":"Live values and control logic"}, {"type":"text", "text":"Resources for live values and control logic. To reduce this area:", "details":[{"type":"text", "text":"reduce size of local variables"}, {"type":"text", "text":"reduce scope of local variables, localizing them as much as possible"}, {"type":"text", "text":"reduce number of nested loops"}]}], "children":[{"name":"No Source Line", "type":"resource", "data":[2, 8, 0, 0, 0]}]}, {"name":"Feedback", "type":"resource", "data":[9, 7, 0, 0, 0], "details":[{"type":"brief", "text":"Loop-carried dependencies"}, {"type":"text", "text":"Resources for loop-carried dependencies. To reduce this area:", "details":[{"type":"text", "text":"reduce number and size of loop-carried variables"}]}], "children":[{"name":"Simple_task.cl:10", "type":"resource", "data":[9, 7, 0, 0, 0], "debug":[[{"filename":"/home/joerock/Documents/TFM/Quartus_Sim-Em/NDRangeVsSimpleTask/test_simulation/Simple_task.cl", "line":10}]]}]}, {"name":"Cluster logic", "type":"resource", "data":[8, 6, 0, 0, 2], "details":[{"type":"brief", "text":"Logic required to efficiently support sets of operations that do not stall"}, {"type":"text", "text":"Logic required to efficiently support sets of operations that do not stall. This area cannot be affected directly."}]}, {"name":"Computation", "type":"resource", "children":[{"name":"Simple_task.cl:10", "type":"resource", "data":[39, 0, 0, 0, 0], "debug":[[{"filename":"/home/joerock/Documents/TFM/Quartus_Sim-Em/NDRangeVsSimpleTask/test_simulation/Simple_task.cl", "line":10}]], "children":[{"name":"1-bit And", "type":"resource", "count":1, "data":[1, 0, 0, 0, 0]}, {"name":"33-bit Integer Compare", "type":"resource", "count":1, "data":[11, 0, 0, 0, 0]}, {"name":"33-bit Select", "type":"resource", "count":2, "data":[27, 0, 0, 0, 0]}], "replace_name":"true"}, {"name":"Simple_task.cl:18", "type":"resource", "data":[16, 0, 0, 0.75, 0], "debug":[[{"filename":"/home/joerock/Documents/TFM/Quartus_Sim-Em/NDRangeVsSimpleTask/test_simulation/Simple_task.cl", "line":18}]], "children":[{"name":"32-bit Integer Multiply", "type":"resource", "count":1, "data":[16, 0, 0, 0.75, 0]}], "replace_name":"true"}, {"name":"Simple_task.cl:20", "type":"resource", "data":[16, 0, 0, 0.75, 0], "debug":[[{"filename":"/home/joerock/Documents/TFM/Quartus_Sim-Em/NDRangeVsSimpleTask/test_simulation/Simple_task.cl", "line":20}]], "children":[{"name":"32-bit Integer Multiply", "type":"resource", "count":1, "data":[16, 0, 0, 0.75, 0]}], "replace_name":"true"}]}]}, {"name":"mmul.B2", "type":"basicblock", "children":[{"name":"Feedback", "type":"resource", "data":[5, 8, 0, 0, 0], "details":[{"type":"brief", "text":"Loop-carried dependencies"}, {"type":"text", "text":"Resources for loop-carried dependencies. To reduce this area:", "details":[{"type":"text", "text":"reduce number and size of loop-carried variables"}]}], "children":[{"name":"Simple_task.cl:23", "type":"resource", "data":[5, 8, 0, 0, 0], "debug":[[{"filename":"/home/joerock/Documents/TFM/Quartus_Sim-Em/NDRangeVsSimpleTask/test_simulation/Simple_task.cl", "line":23}]]}]}]}, {"name":"mmul.B3", "type":"basicblock", "children":[{"name":"State", "type":"resource", "data":[0, 35, 0, 0, 0], "details":[{"type":"brief", "text":"Live values and control logic"}, {"type":"text", "text":"Resources for live values and control logic. To reduce this area:", "details":[{"type":"text", "text":"reduce size of local variables"}, {"type":"text", "text":"reduce scope of local variables, localizing them as much as possible"}, {"type":"text", "text":"reduce number of nested loops"}]}], "children":[{"name":"No Source Line", "type":"resource", "data":[0, 35, 0, 0, 0]}]}, {"name":"Feedback", "type":"resource", "data":[25, 48, 0, 0, 0], "details":[{"type":"brief", "text":"Loop-carried dependencies"}, {"type":"text", "text":"Resources for loop-carried dependencies. To reduce this area:", "details":[{"type":"text", "text":"reduce number and size of loop-carried variables"}]}], "children":[{"name":"Simple_task.cl:10", "type":"resource", "data":[8, 5, 0, 0, 0], "debug":[[{"filename":"/home/joerock/Documents/TFM/Quartus_Sim-Em/NDRangeVsSimpleTask/test_simulation/Simple_task.cl", "line":10}]]}, {"name":"Simple_task.cl:12", "type":"resource", "data":[9, 7, 0, 0, 0], "debug":[[{"filename":"/home/joerock/Documents/TFM/Quartus_Sim-Em/NDRangeVsSimpleTask/test_simulation/Simple_task.cl", "line":12}]]}, {"name":"Simple_task.cl:18", "type":"resource", "data":[4, 18, 0, 0, 0], "debug":[[{"filename":"/home/joerock/Documents/TFM/Quartus_Sim-Em/NDRangeVsSimpleTask/test_simulation/Simple_task.cl", "line":18}]]}, {"name":"Simple_task.cl:20", "type":"resource", "data":[4, 18, 0, 0, 0], "debug":[[{"filename":"/home/joerock/Documents/TFM/Quartus_Sim-Em/NDRangeVsSimpleTask/test_simulation/Simple_task.cl", "line":20}]]}]}, {"name":"Cluster logic", "type":"resource", "data":[8, 6, 0, 0, 6], "details":[{"type":"brief", "text":"Logic required to efficiently support sets of operations that do not stall"}, {"type":"text", "text":"Logic required to efficiently support sets of operations that do not stall. This area cannot be affected directly."}]}, {"name":"Computation", "type":"resource", "children":[{"name":"Simple_task.cl:12", "type":"resource", "data":[39, 0, 0, 0, 0], "debug":[[{"filename":"/home/joerock/Documents/TFM/Quartus_Sim-Em/NDRangeVsSimpleTask/test_simulation/Simple_task.cl", "line":12}]], "children":[{"name":"1-bit And", "type":"resource", "count":1, "data":[1, 0, 0, 0, 0]}, {"name":"33-bit Integer Compare", "type":"resource", "count":1, "data":[11, 0, 0, 0, 0]}, {"name":"33-bit Select", "type":"resource", "count":2, "data":[27, 0, 0, 0, 0]}], "replace_name":"true"}]}]}, {"name":"mmul.B5", "type":"basicblock", "children":[{"name":"State", "type":"resource", "data":[36, 71, 0, 0, 0], "details":[{"type":"brief", "text":"Live values and control logic"}, {"type":"text", "text":"Resources for live values and control logic. To reduce this area:", "details":[{"type":"text", "text":"reduce size of local variables"}, {"type":"text", "text":"reduce scope of local variables, localizing them as much as possible"}, {"type":"text", "text":"reduce number of nested loops"}]}], "children":[{"name":"No Source Line", "type":"resource", "data":[36, 71, 0, 0, 0]}]}, {"name":"Computation", "type":"resource", "children":[{"name":"Simple_task.cl:20", "type":"resource", "data":[423, 2128, 0, 0, 31], "debug":[[{"filename":"/home/joerock/Documents/TFM/Quartus_Sim-Em/NDRangeVsSimpleTask/test_simulation/Simple_task.cl", "line":20}]], "children":[{"name":"32-bit Integer Add", "type":"resource", "count":1, "data":[32, 0, 0, 0, 0]}, {"name":"Store", "type":"resource", "count":1, "data":[391, 2128, 0, 0, 31], "details":[{"type":"text", "text":"Store uses a Burst-coalesced LSU"}, {"type":"brief", "text":"Burst-coalesced LSU"}]}], "replace_name":"true"}]}]}, {"name":"mmul.B6", "type":"basicblock", "children":[{"name":"State", "type":"resource", "data":[134, 475, 3, 0, 4], "details":[{"type":"brief", "text":"Live values and control logic"}, {"type":"text", "text":"Resources for live values and control logic. To reduce this area:", "details":[{"type":"text", "text":"reduce size of local variables"}, {"type":"text", "text":"reduce scope of local variables, localizing them as much as possible"}, {"type":"text", "text":"reduce number of nested loops"}]}], "children":[{"name":"No Source Line", "type":"resource", "data":[134, 475, 3, 0, 4]}]}, {"name":"Feedback", "type":"resource", "data":[83, 175, 0, 0, 0], "details":[{"type":"brief", "text":"Loop-carried dependencies"}, {"type":"text", "text":"Resources for loop-carried dependencies. To reduce this area:", "details":[{"type":"text", "text":"reduce number and size of loop-carried variables"}]}], "children":[{"name":"Simple_task.cl:10", "type":"resource", "data":[8, 5, 0, 0, 0], "debug":[[{"filename":"/home/joerock/Documents/TFM/Quartus_Sim-Em/NDRangeVsSimpleTask/test_simulation/Simple_task.cl", "line":10}]]}, {"name":"Simple_task.cl:12", "type":"resource", "data":[16, 41, 0, 0, 0], "debug":[[{"filename":"/home/joerock/Documents/TFM/Quartus_Sim-Em/NDRangeVsSimpleTask/test_simulation/Simple_task.cl", "line":12}]]}, {"name":"Simple_task.cl:16", "type":"resource", "data":[34, 28, 0, 0, 0], "debug":[[{"filename":"/home/joerock/Documents/TFM/Quartus_Sim-Em/NDRangeVsSimpleTask/test_simulation/Simple_task.cl", "line":16}]]}, {"name":"Simple_task.cl:18", "type":"resource", "data":[12.5, 50.5, 0, 0, 0], "debug":[[{"filename":"/home/joerock/Documents/TFM/Quartus_Sim-Em/NDRangeVsSimpleTask/test_simulation/Simple_task.cl", "line":18}]]}, {"name":"Simple_task.cl:20", "type":"resource", "data":[12.5, 50.5, 0, 0, 0], "debug":[[{"filename":"/home/joerock/Documents/TFM/Quartus_Sim-Em/NDRangeVsSimpleTask/test_simulation/Simple_task.cl", "line":20}]]}]}, {"name":"Cluster logic", "type":"resource", "data":[16, 12, 0, 0, 14], "details":[{"type":"brief", "text":"Logic required to efficiently support sets of operations that do not stall"}, {"type":"text", "text":"Logic required to efficiently support sets of operations that do not stall. This area cannot be affected directly."}]}, {"name":"Computation", "type":"resource", "children":[{"name":"Simple_task.cl:10", "type":"resource", "data":[0.333333, 0, 0, 0, 0], "debug":[[{"filename":"/home/joerock/Documents/TFM/Quartus_Sim-Em/NDRangeVsSimpleTask/test_simulation/Simple_task.cl", "line":10}]], "children":[{"name":"1-bit Or", "type":"resource", "count":1, "data":[0.333333, 0, 0, 0, 0]}], "replace_name":"true"}, {"name":"Simple_task.cl:16", "type":"resource", "data":[43.3333, 1, 0, 0, 0], "debug":[[{"filename":"/home/joerock/Documents/TFM/Quartus_Sim-Em/NDRangeVsSimpleTask/test_simulation/Simple_task.cl", "line":16}]], "children":[{"name":"1-bit And", "type":"resource", "count":3, "data":[2, 1, 0, 0, 0]}, {"name":"1-bit Or", "type":"resource", "count":3, "data":[1.33333, 0, 0, 0, 0]}, {"name":"2-bit Select", "type":"resource", "count":1, "data":[2, 0, 0, 0, 0]}, {"name":"33-bit Integer Compare", "type":"resource", "count":1, "data":[11, 0, 0, 0, 0]}, {"name":"33-bit Select", "type":"resource", "count":2, "data":[27, 0, 0, 0, 0]}], "replace_name":"true"}, {"name":"Simple_task.cl:18", "type":"resource", "data":[1110.33, 4106, 30, 2.5, 0], "debug":[[{"filename":"/home/joerock/Documents/TFM/Quartus_Sim-Em/NDRangeVsSimpleTask/test_simulation/Simple_task.cl", "line":18}]], "children":[{"name":"1-bit Or", "type":"resource", "count":1, "data":[0.333333, 0, 0, 0, 0]}, {"name":"32-bit Floating-point Accumulator", "type":"resource", "count":1, "data":[0, 0, 0, 1, 0]}, {"name":"32-bit Integer Add", "type":"resource", "count":2, "data":[64, 0, 0, 0, 0]}, {"name":"32-bit Integer Multiply", "type":"resource", "count":1, "data":[32, 0, 0, 1.5, 0]}, {"name":"Load", "type":"resource", "count":2, "data":[1014, 4106, 30, 0, 0], "details":[{"type":"text", "text":"Load uses a Burst-coalesced LSU"}, {"type":"brief", "text":"Burst-coalesced LSU"}]}], "replace_name":"true"}]}]}]}]};
var area_srcJSON={"children":[{"children":[{"data":[65540,131080,176,0,0],"details":[{"text":"Platform interface logic.","type":"text"}],"name":"Board interface","type":"resource"}],"name":"Static Partition","type":"partition"},{"data":[4121,5284,0,0,0],"details":[{"text":"Global interconnect for 2 global loads and 1 global store. Reduce number of global loads and stores to simplify global interconnect.","type":"text"},{"text":"For 2 global loads and 1 global store.","type":"brief"},{"links":[{"guide":"Best Practices Guide : Global Memory Interconnect","link":"file:////home/joerock/intelFPGA_pro/21.1/hld/aoc_help_pages/hnj1476724450050.html"}],"text":"See %L for more information","type":"text"}],"name":"Global interconnect","type":"resource"},{"data":[0,67,2,0,0],"details":[{"text":"This read-only memory contains information for the host about the system and about each kernel in the system, including kernel names, arguments, and attributes. The system description ROM ensures that the binary image on the FPGA is compatible with the host program.","type":"text"},{"text":"Contains information for the host.","type":"brief"}],"name":"System description ROM","type":"resource"},{"children":[{"data":[162,264,0,0,22],"details":[{"text":"Feedback+Cluster logic","type":"brief"}],"name":"Data control overhead","type":"resource"},{"data":[1338,2411,0,0,10],"details":[{"text":"Kernel dispatch logic.","type":"text"},{"text":"Kernel dispatch logic.","type":"brief"}],"name":"Function overhead","type":"resource"},{"data":[14,73,0,0,0],"details":[{"text":"Type: Register","type":"text"},{"text":"1 register of width 32 bits and depth 1","type":"text"},{"text":"1 register of width 33 bits and depth 1","type":"text"},{"text":"Register,\\n1 reg, 32 width by 1 depth,\\n1 reg, 33 width by 1 depth","type":"brief"}],"name":"Private Variable: \\n - \'i\' (Simple_task.cl:10)","type":"resource"},{"data":[14,73,0,0,0],"details":[{"text":"Type: Register","type":"text"},{"text":"1 register of width 32 bits and depth 1","type":"text"},{"text":"1 register of width 33 bits and depth 1","type":"text"},{"text":"Register,\\n1 reg, 32 width by 1 depth,\\n1 reg, 33 width by 1 depth","type":"brief"}],"name":"Private Variable: \\n - \'j\' (Simple_task.cl:12)","type":"resource"},{"data":[31,138,0,0,0],"details":[{"text":"Type: Register","type":"text"},{"text":"1 register of width 32 bits and depth 1","type":"text"},{"text":"1 register of width 33 bits and depth 1","type":"text"},{"text":"Register,\\n1 reg, 32 width by 1 depth,\\n1 reg, 33 width by 1 depth","type":"brief"}],"name":"Private Variable: \\n - \'k\' (Simple_task.cl:16)","type":"resource"},{"children":[{"count":"1","data":[2,34,0,0,0],"debug":[[{"filename":"/home/joerock/Documents/TFM/Quartus_Sim-Em/NDRangeVsSimpleTask/test_simulation/Simple_task.cl","line":"10"}]],"name":"State","type":"resource"},{"count":2,"data":[70,2,0,0,0],"debug":[[{"filename":"/home/joerock/Documents/TFM/Quartus_Sim-Em/NDRangeVsSimpleTask/test_simulation/Simple_task.cl","line":"10"}]],"name":"32-bit Integer Compare","type":"resource"},{"count":1,"data":[16,0,0,0,0],"debug":[[{"filename":"/home/joerock/Documents/TFM/Quartus_Sim-Em/NDRangeVsSimpleTask/test_simulation/Simple_task.cl","line":"10"}]],"name":"32-bit Select","type":"resource"},{"count":1,"data":[1,0,0,0,0],"debug":[[{"filename":"/home/joerock/Documents/TFM/Quartus_Sim-Em/NDRangeVsSimpleTask/test_simulation/Simple_task.cl","line":"10"}]],"name":"1-bit And","type":"resource"},{"count":1,"data":[11,0,0,0,0],"debug":[[{"filename":"/home/joerock/Documents/TFM/Quartus_Sim-Em/NDRangeVsSimpleTask/test_simulation/Simple_task.cl","line":"10"}]],"name":"33-bit Integer Compare","type":"resource"},{"count":2,"data":[27,0,0,0,0],"debug":[[{"filename":"/home/joerock/Documents/TFM/Quartus_Sim-Em/NDRangeVsSimpleTask/test_simulation/Simple_task.cl","line":"10"}]],"name":"33-bit Select","type":"resource"},{"count":1,"data":[0.333333,0,0,0,0],"debug":[[{"filename":"/home/joerock/Documents/TFM/Quartus_Sim-Em/NDRangeVsSimpleTask/test_simulation/Simple_task.cl","line":"10"}]],"name":"1-bit Or","type":"resource"}],"data":[127.333333,36,0,0,0],"debug":[[{"filename":"/home/joerock/Documents/TFM/Quartus_Sim-Em/NDRangeVsSimpleTask/test_simulation/Simple_task.cl","line":10}]],"name":"/home/joerock/Documents/TFM/Quartus_Sim-Em/NDRangeVsSimpleTask/test_simulation/Simple_task.cl:10","type":"resource"},{"children":[{"count":4,"data":[172,589,3,0,4],"debug":[[{"filename":"","line":0}]],"name":"State","type":"resource"}],"data":[172,589,3,0,4],"name":"No Source Line","type":"resource"},{"children":[{"count":2,"data":[48,0,0,2.25,0],"debug":[[{"filename":"/home/joerock/Documents/TFM/Quartus_Sim-Em/NDRangeVsSimpleTask/test_simulation/Simple_task.cl","line":"18"}]],"name":"32-bit Integer Multiply","type":"resource"},{"count":1,"data":[0.333333,0,0,0,0],"debug":[[{"filename":"/home/joerock/Documents/TFM/Quartus_Sim-Em/NDRangeVsSimpleTask/test_simulation/Simple_task.cl","line":"18"}]],"name":"1-bit Or","type":"resource"},{"count":1,"data":[0,0,0,1,0],"debug":[[{"filename":"/home/joerock/Documents/TFM/Quartus_Sim-Em/NDRangeVsSimpleTask/test_simulation/Simple_task.cl","line":"18"}]],"name":"32-bit Floating-point Accumulator","type":"resource"},{"count":2,"data":[64,0,0,0,0],"debug":[[{"filename":"/home/joerock/Documents/TFM/Quartus_Sim-Em/NDRangeVsSimpleTask/test_simulation/Simple_task.cl","line":"18"}]],"name":"32-bit Integer Add","type":"resource"},{"count":2,"data":[1014,4106,30,0,0],"debug":[[{"filename":"/home/joerock/Documents/TFM/Quartus_Sim-Em/NDRangeVsSimpleTask/test_simulation/Simple_task.cl","line":"18"}]],"name":"Load","type":"resource"}],"data":[1126.333333,4106,30,3.25,0],"debug":[[{"filename":"/home/joerock/Documents/TFM/Quartus_Sim-Em/NDRangeVsSimpleTask/test_simulation/Simple_task.cl","line":18}]],"name":"/home/joerock/Documents/TFM/Quartus_Sim-Em/NDRangeVsSimpleTask/test_simulation/Simple_task.cl:18","replace_name":"true","type":"resource"},{"children":[{"count":1,"data":[16,0,0,0.75,0],"debug":[[{"filename":"/home/joerock/Documents/TFM/Quartus_Sim-Em/NDRangeVsSimpleTask/test_simulation/Simple_task.cl","line":"20"}]],"name":"32-bit Integer Multiply","type":"resource"},{"count":1,"data":[32,0,0,0,0],"debug":[[{"filename":"/home/joerock/Documents/TFM/Quartus_Sim-Em/NDRangeVsSimpleTask/test_simulation/Simple_task.cl","line":"20"}]],"name":"32-bit Integer Add","type":"resource"},{"count":1,"data":[391,2128,0,0,31],"debug":[[{"filename":"/home/joerock/Documents/TFM/Quartus_Sim-Em/NDRangeVsSimpleTask/test_simulation/Simple_task.cl","line":"20"}]],"name":"Store","type":"resource"}],"data":[439,2128,0,0.75,31],"debug":[[{"filename":"/home/joerock/Documents/TFM/Quartus_Sim-Em/NDRangeVsSimpleTask/test_simulation/Simple_task.cl","line":20}]],"name":"/home/joerock/Documents/TFM/Quartus_Sim-Em/NDRangeVsSimpleTask/test_simulation/Simple_task.cl:20","replace_name":"true","type":"resource"},{"children":[{"count":1,"data":[1,0,0,0,0],"debug":[[{"filename":"/home/joerock/Documents/TFM/Quartus_Sim-Em/NDRangeVsSimpleTask/test_simulation/Simple_task.cl","line":"12"}]],"name":"1-bit And","type":"resource"},{"count":1,"data":[11,0,0,0,0],"debug":[[{"filename":"/home/joerock/Documents/TFM/Quartus_Sim-Em/NDRangeVsSimpleTask/test_simulation/Simple_task.cl","line":"12"}]],"name":"33-bit Integer Compare","type":"resource"},{"count":2,"data":[27,0,0,0,0],"debug":[[{"filename":"/home/joerock/Documents/TFM/Quartus_Sim-Em/NDRangeVsSimpleTask/test_simulation/Simple_task.cl","line":"12"}]],"name":"33-bit Select","type":"resource"}],"data":[39,0,0,0,0],"debug":[[{"filename":"/home/joerock/Documents/TFM/Quartus_Sim-Em/NDRangeVsSimpleTask/test_simulation/Simple_task.cl","line":12}]],"name":"/home/joerock/Documents/TFM/Quartus_Sim-Em/NDRangeVsSimpleTask/test_simulation/Simple_task.cl:12","replace_name":"true","type":"resource"},{"children":[{"count":3,"data":[2,1,0,0,0],"debug":[[{"filename":"/home/joerock/Documents/TFM/Quartus_Sim-Em/NDRangeVsSimpleTask/test_simulation/Simple_task.cl","line":"16"}]],"name":"1-bit And","type":"resource"},{"count":3,"data":[1.33333,0,0,0,0],"debug":[[{"filename":"/home/joerock/Documents/TFM/Quartus_Sim-Em/NDRangeVsSimpleTask/test_simulation/Simple_task.cl","line":"16"}]],"name":"1-bit Or","type":"resource"},{"count":1,"data":[2,0,0,0,0],"debug":[[{"filename":"/home/joerock/Documents/TFM/Quartus_Sim-Em/NDRangeVsSimpleTask/test_simulation/Simple_task.cl","line":"16"}]],"name":"2-bit Select","type":"resource"},{"count":1,"data":[11,0,0,0,0],"debug":[[{"filename":"/home/joerock/Documents/TFM/Quartus_Sim-Em/NDRangeVsSimpleTask/test_simulation/Simple_task.cl","line":"16"}]],"name":"33-bit Integer Compare","type":"resource"},{"count":2,"data":[27,0,0,0,0],"debug":[[{"filename":"/home/joerock/Documents/TFM/Quartus_Sim-Em/NDRangeVsSimpleTask/test_simulation/Simple_task.cl","line":"16"}]],"name":"33-bit Select","type":"resource"}],"data":[43.3333,1,0,0,0],"debug":[[{"filename":"/home/joerock/Documents/TFM/Quartus_Sim-Em/NDRangeVsSimpleTask/test_simulation/Simple_task.cl","line":16}]],"name":"/home/joerock/Documents/TFM/Quartus_Sim-Em/NDRangeVsSimpleTask/test_simulation/Simple_task.cl:16","replace_name":"true","type":"resource"}],"compute_units":1,"data":[3505.999966,9819,33,4,67],"debug":[[{"filename":"Simple_task.cl","line":10}]],"details":[{"text":"Number of compute units: 1","type":"text"},{"text":"Kernel attribute \'uses_global_work_offset\' not specified. Add \'__attribute__((uses_global_work_offset(0)))\' to reduce area utilization if the kernel will always be enqueued with a 0 or NULL global_work_offset argument in clEnqueueNDRangeKernel. Add \'__attribute__((uses_global_work_offset(1)))\' to hide this suggestion without affecting kernel functionality.","type":"text"},{"text":"1 compute unit.\\nKernel attribute \'uses_global_work_offset\' not specified. Add \'__attribute__((uses_global_work_offset(0)))\' to reduce area utilization if the kernel will always be enqueued with a 0 or NULL global_work_offset argument in clEnqueueNDRangeKernel. Add \'__attribute__((uses_global_work_offset(1)))\' to hide this suggestion without affecting kernel functionality.","type":"brief"}],"name":"mmul","total_kernel_resources":[3506,9819,33,4,67],"total_percent":[1.10964,0.567182,0.574614,1.21637,0.263505],"type":"function"}],"columns":["","ALUTs","FFs","RAMs","DSPs","MLABs","Details"],"data":[7626.999966,15170,35,4,67],"debug_enabled":"true","max_resources":[854400,1708800,2713,1518,42720],"name":"Kernel System","total":[73167,146250,211,4,67],"total_percent":[16.7571,8.72039,8.55864,7.77737,0.263505],"type":"module"};
var mavJSON={"nodes":[{"type":"kernel", "id":2, "name":"mmul", "children":[{"type":"bb", "id":3, "name":"mmul.B0", "details":[{"type":"table", "Latency":"2"}]}, {"type":"bb", "id":4, "name":"mmul.B1", "details":[{"type":"table", "Latency":"8", "II":"1", "Subloops":"Yes", "Pipelined":"Yes", "Fmax Bottlenecks":"No", "Loop Info":"Entry to loop. ", "Loops To":"7"}]}, {"type":"bb", "id":5, "name":"mmul.B2", "details":[{"type":"table", "Latency":"0"}]}, {"type":"bb", "id":6, "name":"mmul.B3", "details":[{"type":"table", "Latency":"5", "II":"1", "Subloops":"Yes", "Pipelined":"Yes", "Fmax Bottlenecks":"No", "Loop Info":"Entry to loop. ", "Loops To":"14"}]}, {"type":"bb", "id":7, "name":"mmul.B4", "details":[{"type":"table", "Latency":"0", "II":"1", "Subloops":"Yes", "Pipelined":"Yes", "Fmax Bottlenecks":"No", "Loop Info":"Exit which branches back to loop. "}]}, {"type":"bb", "id":8, "name":"mmul.B5", "children":[{"type":"inst", "id":10, "name":"Store", "debug":[[{"filename":"/home/joerock/Documents/TFM/Quartus_Sim-Em/NDRangeVsSimpleTask/test_simulation/Simple_task.cl", "line":20}]], "details":[{"type":"table", "Width":"32 bits", "Type":"Burst-coalesced", "Stall-free":"No", "Start Cycle":"1", "Latency":"2", "Reference":[{"type":"text", "text":"See %L for more information", "links":[{"guide":"Best Practices Guide : Load-Store Units", "link":"file:////home/joerock/intelFPGA_pro/21.1/hld/aoc_help_pages/yeo1491314105959.html"}]}]}]}, {"type":"inst", "id":13, "name":"Begin", "details":[{"type":"table", "Start Cycle":"0", "Latency":"1"}]}, {"type":"inst", "id":14, "name":"End", "details":[{"type":"table", "Start Cycle":"3", "Latency":"1"}]}], "details":[{"type":"table", "Latency":"3", "II":"1", "Subloops":"Yes", "Pipelined":"Yes", "Fmax Bottlenecks":"No", "Loop Info":"Exit which branches back to loop. "}]}, {"type":"bb", "id":9, "name":"mmul.B6", "children":[{"type":"inst", "id":11, "name":"Load", "debug":[[{"filename":"/home/joerock/Documents/TFM/Quartus_Sim-Em/NDRangeVsSimpleTask/test_simulation/Simple_task.cl", "line":18}]], "details":[{"type":"table", "Width":"32 bits", "Type":"Burst-coalesced", "Stall-free":"No", "Start Cycle":"9", "Latency":"159", "Reference":[{"type":"text", "text":"See %L for more information", "links":[{"guide":"Best Practices Guide : Load-Store Units", "link":"file:////home/joerock/intelFPGA_pro/21.1/hld/aoc_help_pages/yeo1491314105959.html"}]}]}]}, {"type":"inst", "id":12, "name":"Load", "debug":[[{"filename":"/home/joerock/Documents/TFM/Quartus_Sim-Em/NDRangeVsSimpleTask/test_simulation/Simple_task.cl", "line":18}]], "details":[{"type":"table", "Width":"32 bits", "Type":"Burst-coalesced", "Stall-free":"No", "Start Cycle":"9", "Latency":"159", "Reference":[{"type":"text", "text":"See %L for more information", "links":[{"guide":"Best Practices Guide : Load-Store Units", "link":"file:////home/joerock/intelFPGA_pro/21.1/hld/aoc_help_pages/yeo1491314105959.html"}]}]}]}, {"type":"inst", "id":15, "name":"Loop Input", "debug":[[{"filename":"/home/joerock/Documents/TFM/Quartus_Sim-Em/NDRangeVsSimpleTask/test_simulation/Simple_task.cl", "line":16}]], "details":[{"type":"table", "Start Cycle":"0", "Latency":"1", "Loops To":"16"}]}, {"type":"inst", "id":16, "name":"Loop End", "details":[{"type":"table", "Start Cycle":"177", "Latency":"1"}]}], "details":[{"type":"table", "Latency":"177", "II":"1", "Subloops":"No", "Pipelined":"Yes", "Fmax Bottlenecks":"No", "Loop Info":""}]}]}, {"type":"memtype", "id":1, "name":"Global Memory", "children":[{"type":"memsys", "id":17, "name":"DDR", "details":[{"type":"table", "Number of banks":"1"}]}]}], "links":[{"from":7, "to":4}, {"from":3, "to":4}, {"from":7, "to":5}, {"from":14, "to":6}, {"from":4, "to":6}, {"from":14, "to":7}, {"from":16, "to":13}, {"from":10, "to":14}, {"from":16, "to":15}, {"from":6, "to":15}, {"from":11, "to":16}, {"from":12, "to":16}, {"from":13, "to":10}, {"from":15, "to":11}, {"from":15, "to":12}, {"from":17, "to":11}, {"from":10, "to":17}, {"from":17, "to":12}]};
var loopsJSON={"columns":["", "Pipelined", "II", "Speculated iterations", "Details"], "children":[{"name":"Kernel: mmul", "data":["", "", ""], "debug":[[{"filename":"/home/joerock/Documents/TFM/Quartus_Sim-Em/NDRangeVsSimpleTask/test_simulation/Simple_task.cl", "line":1}]], "details":[{"type":"brief", "text":"Single work-item execution"}, {"type":"text", "text":"Single work-item execution"}, {"type":"text", "text":"Fmax bottlenck block: None"}, {"type":"text", "text":"See %L for more information", "links":[{"guide":"Best Practices Guide : Kernels", "link":"file:////home/joerock/intelFPGA_pro/21.1/hld/aoc_help_pages/ipp1476408832230.html"}]}], "children":[{"name":"mmul.B1", "data":["Yes", ">=1", "0"], "debug":[[{"filename":"/home/joerock/Documents/TFM/Quartus_Sim-Em/NDRangeVsSimpleTask/test_simulation/Simple_task.cl", "line":10}]], "details":[{"type":"brief", "text":" "}, {"type":"text", "text":"Stallable instruction: n/a"}, {"type":"text", "text":"Maximum concurrent iterations: Capacity of loop", "details":[{"type":"text", "text":"Use the %L viewer to estimate capacity", "links":[{"view":"Fmax II Report"}]}]}, {"type":"text", "text":"See %L for more information", "links":[{"guide":"Best Practices Guide : Nested Loops", "link":"file:////home/joerock/intelFPGA_pro/21.1/hld/aoc_help_pages/rfr1469543500580.html"}]}], "children":[{"name":"mmul.B3", "data":["Yes", ">=1", "0"], "debug":[[{"filename":"/home/joerock/Documents/TFM/Quartus_Sim-Em/NDRangeVsSimpleTask/test_simulation/Simple_task.cl", "line":12}]], "details":[{"type":"brief", "text":" "}, {"type":"text", "text":"Stallable instruction: n/a"}, {"type":"text", "text":"Maximum concurrent iterations: Capacity of loop", "details":[{"type":"text", "text":"Use the %L viewer to estimate capacity", "links":[{"view":"Fmax II Report"}]}]}, {"type":"text", "text":"See %L for more information", "links":[{"guide":"Best Practices Guide : Nested Loops", "link":"file:////home/joerock/intelFPGA_pro/21.1/hld/aoc_help_pages/rfr1469543500580.html"}]}], "children":[{"name":"mmul.B6", "data":["Yes", "~1", "1"], "debug":[[{"filename":"/home/joerock/Documents/TFM/Quartus_Sim-Em/NDRangeVsSimpleTask/test_simulation/Simple_task.cl", "line":16}]], "details":[{"type":"brief", "text":" "}, {"type":"text", "text":"II is an approximation due to the following stallable instructions:", "details":[{"type":"text", "text":"Load Operation (%L)", "links":[{"filename":"/home/joerock/Documents/TFM/Quartus_Sim-Em/NDRangeVsSimpleTask/test_simulation/Simple_task.cl", "line":"18"}]}, {"type":"text", "text":"Load Operation (%L)", "links":[{"filename":"/home/joerock/Documents/TFM/Quartus_Sim-Em/NDRangeVsSimpleTask/test_simulation/Simple_task.cl", "line":"18"}]}]}, {"type":"text", "text":"Maximum concurrent iterations: Capacity of loop", "details":[{"type":"text", "text":"Use the %L viewer to estimate capacity", "links":[{"view":"Fmax II Report"}]}]}, {"type":"text", "text":"See %L for more information", "links":[{"guide":"Best Practices Guide : Loops in a Single Work-Item Kernel", "link":"file:////home/joerock/intelFPGA_pro/21.1/hld/aoc_help_pages/wfa1476380079940.html"}]}], "children":[]}]}]}]}]};
var loop_attrJSON={"name":"loop_attributes", "id":4294967295, "nodes":[{"name":"mmul", "id":4137293888, "clk":"No", "fmax":"240.00", "debug":[[{"filename":"/home/joerock/Documents/TFM/Quartus_Sim-Em/NDRangeVsSimpleTask/test_simulation/Simple_task.cl", "line":6}]], "type":"kernel", "children":[{"name":"mmul.B0", "id":4137005344, "af":"240.00", "br":"0", "ci":"0", "fo":"Disabled", "ii":"1", "ll":"1", "lt":"2.000000", "mi":"n/a", "pl":"Yes", "tc":"0", "tn":"1", "type":"bb"}, {"name":"mmul.B1", "id":4137043648, "af":"240.00", "br":"0", "ci":"0", "fo":"Disabled", "ii":"1", "ll":"1", "lt":"8.000000", "mi":"1", "pl":"Yes", "tc":"0", "tn":"1", "details":[{"type":"text", "text":"Hyper-Optimized loop structure: n/a"}], "debug":[[{"filename":"/home/joerock/Documents/TFM/Quartus_Sim-Em/NDRangeVsSimpleTask/test_simulation/Simple_task.cl", "line":10}]], "type":"loop", "children":[{"name":"mmul.B3", "id":4136522928, "af":"240.00", "br":"0", "ci":"0", "fo":"Disabled", "ii":"1", "ll":"2", "lt":"5.000000", "mi":"1", "pl":"Yes", "tc":"0", "tn":"0", "details":[{"type":"text", "text":"Hyper-Optimized loop structure: n/a"}], "debug":[[{"filename":"/home/joerock/Documents/TFM/Quartus_Sim-Em/NDRangeVsSimpleTask/test_simulation/Simple_task.cl", "line":12}]], "type":"loop", "children":[{"name":"mmul.B6", "id":4136523168, "af":"240.00", "br":"1", "ci":"0", "fo":"Disabled", "ii":"1", "ll":"3", "lt":"177.000000", "mi":"1", "pl":"Yes", "tc":"0", "tn":"0", "details":[{"type":"text", "text":"Hyper-Optimized loop structure: n/a"}], "debug":[[{"filename":"/home/joerock/Documents/TFM/Quartus_Sim-Em/NDRangeVsSimpleTask/test_simulation/Simple_task.cl", "line":16}]], "type":"loop"}]}, {"name":"mmul.B5", "id":4136523088, "af":"240.00", "br":"1", "ci":"0", "fo":"Disabled", "ii":"1", "ll":"2", "lt":"3.000000", "mi":"n/a", "pl":"Yes", "tc":"0", "tn":"1", "type":"bb"}]}, {"name":"mmul.B4", "id":4136523008, "af":"240.00", "br":"1", "ci":"0", "fo":"Disabled", "ii":"1", "ll":"1", "lt":"0.000000", "mi":"n/a", "pl":"Yes", "tc":"0", "tn":"1", "type":"bb"}, {"name":"mmul.B2", "id":4136522848, "af":"240.00", "br":"0", "ci":"0", "fo":"Disabled", "ii":"1", "ll":"1", "lt":"1.000000", "mi":"n/a", "pl":"Yes", "tc":"0", "tn":"1", "type":"bb"}]}]};
var summaryJSON={"performanceSummary":{"name":"Kernel Summary", "columns":["Kernel Name", "Kernel Type", "Autorun", "Workgroup Size", "# Compute Units"], "children":[{"name":"mmul", "data":["Single work-item", "No", [1, 1, 1], 1], "details":[{"type":"text", "text":"Kernel type: Single work-item"}, {"type":"text", "text":"Required workgroup size: (1, 1, 1)"}, {"type":"text", "text":"Maximum workgroup size: 1"}], "debug":[[{"filename":"/home/joerock/Documents/TFM/Quartus_Sim-Em/NDRangeVsSimpleTask/test_simulation/Simple_task.cl", "line":1}]]}]}, "estimatedResources":{"name":"Estimated Resource Usage", "columns":["Kernel Name", "ALUTs ", "FFs  ", "RAMs ", "DSPs ", "MLABs"], "children":[{"name":"mmul", "data":[3506, 9819, 33, 4, 67], "debug":[[{"filename":"/home/joerock/Documents/TFM/Quartus_Sim-Em/NDRangeVsSimpleTask/test_simulation/Simple_task.cl", "line":1}]]}, {"name":"Global Interconnect", "classes":["summary-highlight", "nohover"], "data":[4121, 5284, 0, 0, 0]}, {"name":"Board Interface", "classes":["summary-highlight", "nohover"], "data":[65540, 131080, 176, 0, 0]}, {"name":"System description ROM", "classes":["summary-highlight", "nohover"], "data":[0, 67, 2, 0, 0]}, {"name":"Total", "classes":["summary-highlight", "nohover"], "data":[73167, 146250, 211, 4, 67], "data_percent":[8.56355, 8.55864, 7.77737, 0.263505]}, {"name":"Available", "classes":["summary-highlight", "nohover"], "data":[854400, 1708800, 2713, 1518, 0]}]}, "compileWarnings":{"name":"Compile Warnings", "children":[]}};
var warningsJSON={"nodes":[{"debug":[[{"filename":"Simple_task.cl","line":"16"}]],"details":[{"text":"warning: Simple_task.cl:16:13: loop not unrolled: the optimizer was unable to perform the requested transformation; the transformation might be disabled or specified as part of an unsupported transformation ordering"}],"name":"Simple_task.cl:16:13: loop not unrolled: the optimizer was unable to perform the requested transformation; the transformation might be disabled or specified as part of an unsupported transformation ordering"}]};
var fileJSON=[{"path":"/home/joerock/Documents/TFM/Quartus_Sim-Em/NDRangeVsSimpleTask/test_simulation/Simple_task.cl", "name":"Simple_task.cl", "has_active_debug_locs":false, "absName":"/home/joerock/Documents/TFM/Quartus_Sim-Em/NDRangeVsSimpleTask/test_simulation/Simple_task.cl", "content":"__kernel void mmul(\012	const int N,\012	__global float* restrict A,\012	__global float* restrict B,\012	__global float* restrict C)\012{\012\012    // Remember the unroll pragma #pragma unroll\012    float tmp = 0.0;\012    for(int i = 0; i < N; i++)\012    {\012        for(int j = 0; j < N; j++)\012        {\012            tmp = 0.0;\012            #pragma unroll\012            for(int k = 0; k < N; k++)\012            {\012                tmp = tmp + A[i*N+k] * B[k*N+j];\012            }\012            C[i*N+j] = tmp;\012        }\012    }\012}"}];
var alpha_viewer=false;