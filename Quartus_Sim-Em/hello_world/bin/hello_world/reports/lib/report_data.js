var areaJSON={"columns":["", "ALUTs", "FFs", "RAMs", "DSPs", "MLABs", "Details"], "debug_enabled":"true", "type":"module", "total_percent":[15.6478, 8.02516, 8.0824, 6.561, 0], "total":[67747, 138112, 178, 0, 41], "name":"Kernel System", "max_resources":[854400, 1708800, 2713, 1518, 42720], "children":[{"name":"Static Partition", "type":"partition", "children":[{"name":"Board interface", "type":"resource", "data":[65540, 131080, 176, 0, 0], "details":[{"type":"text", "text":"Platform interface logic."}]}]}, {"name":"Global interconnect", "type":"resource", "data":[555, 2966, 0, 0, 0], "details":[{"type":"text", "text":"Global interconnect for 0 global loads and 1 global store."}, {"type":"brief", "text":"For 0 global loads and 1 global store."}, {"type":"text", "text":"See %L for more information", "links":[{"guide":"Best Practices Guide : Global Memory Interconnect", "link":"file:////home/joerock/intelFPGA_pro/21.1/hld/aoc_help_pages/hnj1476724450050.html"}]}]}, {"name":"System description ROM", "type":"resource", "data":[0, 67, 2, 0, 0], "details":[{"type":"text", "text":"This read-only memory contains information for the host about the system and about each kernel in the system, including kernel names, arguments, and attributes. The system description ROM ensures that the binary image on the FPGA is compatible with the host program."}, {"type":"brief", "text":"Contains information for the host."}]}, {"name":"hello_world", "compute_units":1, "type":"function", "total_percent":[0.501039, 0.289326, 0.234024, 0, 0], "total_kernel_resources":[1652, 3999, 0, 0, 41], "details":[{"type":"text", "text":"Number of compute units: 1"}, {"type":"text", "text":"Kernel attribute \'uses_global_work_offset\' not specified. Add \'__attribute__((uses_global_work_offset(0)))\' to reduce area utilization if the kernel will always be enqueued with a 0 or NULL global_work_offset argument in clEnqueueNDRangeKernel. Add \'__attribute__((uses_global_work_offset(1)))\' to hide this suggestion without affecting kernel functionality."}, {"type":"brief", "text":"1 compute unit.\\nKernel attribute \'uses_global_work_offset\' not specified. Add \'__attribute__((uses_global_work_offset(0)))\' to reduce area utilization if the kernel will always be enqueued with a 0 or NULL global_work_offset argument in clEnqueueNDRangeKernel. Add \'__attribute__((uses_global_work_offset(1)))\' to hide this suggestion without affecting kernel functionality."}], "children":[{"name":"Function overhead", "type":"resource", "data":[1338, 2411, 0, 0, 10], "details":[{"type":"text", "text":"Kernel dispatch logic."}, {"type":"brief", "text":"Kernel dispatch logic."}]}, {"name":"hello_world.B0", "type":"basicblock", "children":[{"name":"Computation", "type":"resource", "children":[{"name":"hello_world.cl:27", "type":"resource", "data":[11, 0, 0, 0, 0], "debug":[[{"filename":"/home/joerock/Documents/TFM/Quartus_Sim-Em/hello_world/device/hello_world.cl", "line":27}]], "children":[{"name":"32-bit Integer Compare", "type":"resource", "count":1, "data":[11, 0, 0, 0, 0]}], "replace_name":"true"}, {"name":"hello_world.cl:29", "type":"resource", "data":[303, 1588, 0, 0, 31], "debug":[[{"filename":"/home/joerock/Documents/TFM/Quartus_Sim-Em/hello_world/device/hello_world.cl", "line":29}]], "children":[{"name":"Store", "type":"resource", "count":1, "data":[303, 1588, 0, 0, 31], "details":[{"type":"text", "text":"Store uses a Burst-coalesced LSU"}, {"type":"brief", "text":"Burst-coalesced LSU"}]}], "replace_name":"true"}]}]}]}]};
var area_srcJSON={"children":[{"children":[{"data":[65540,131080,176,0,0],"details":[{"text":"Platform interface logic.","type":"text"}],"name":"Board interface","type":"resource"}],"name":"Static Partition","type":"partition"},{"data":[555,2966,0,0,0],"details":[{"text":"Global interconnect for 0 global loads and 1 global store.","type":"text"},{"text":"For 0 global loads and 1 global store.","type":"brief"},{"links":[{"guide":"Best Practices Guide : Global Memory Interconnect","link":"file:////home/joerock/intelFPGA_pro/21.1/hld/aoc_help_pages/hnj1476724450050.html"}],"text":"See %L for more information","type":"text"}],"name":"Global interconnect","type":"resource"},{"data":[0,67,2,0,0],"details":[{"text":"This read-only memory contains information for the host about the system and about each kernel in the system, including kernel names, arguments, and attributes. The system description ROM ensures that the binary image on the FPGA is compatible with the host program.","type":"text"},{"text":"Contains information for the host.","type":"brief"}],"name":"System description ROM","type":"resource"},{"children":[{"data":[0,0,0,0,0],"details":[{"text":"Feedback+Cluster logic","type":"brief"}],"name":"Data control overhead","type":"resource"},{"data":[1338,2411,0,0,10],"details":[{"text":"Kernel dispatch logic.","type":"text"},{"text":"Kernel dispatch logic.","type":"brief"}],"name":"Function overhead","type":"resource"},{"children":[{"count":1,"data":[11,0,0,0,0],"debug":[[{"filename":"/home/joerock/Documents/TFM/Quartus_Sim-Em/hello_world/device/hello_world.cl","line":"27"}]],"name":"32-bit Integer Compare","type":"resource"}],"data":[11,0,0,0,0],"debug":[[{"filename":"/home/joerock/Documents/TFM/Quartus_Sim-Em/hello_world/device/hello_world.cl","line":27}]],"name":"/home/joerock/Documents/TFM/Quartus_Sim-Em/hello_world/device/hello_world.cl:27","replace_name":"true","type":"resource"},{"children":[{"count":1,"data":[303,1588,0,0,31],"debug":[[{"filename":"/home/joerock/Documents/TFM/Quartus_Sim-Em/hello_world/device/hello_world.cl","line":"29"}]],"name":"Store","type":"resource"}],"data":[303,1588,0,0,31],"debug":[[{"filename":"/home/joerock/Documents/TFM/Quartus_Sim-Em/hello_world/device/hello_world.cl","line":29}]],"name":"/home/joerock/Documents/TFM/Quartus_Sim-Em/hello_world/device/hello_world.cl:29","replace_name":"true","type":"resource"}],"compute_units":1,"data":[1652,3999,0,0,41],"details":[{"text":"Number of compute units: 1","type":"text"},{"text":"Kernel attribute \'uses_global_work_offset\' not specified. Add \'__attribute__((uses_global_work_offset(0)))\' to reduce area utilization if the kernel will always be enqueued with a 0 or NULL global_work_offset argument in clEnqueueNDRangeKernel. Add \'__attribute__((uses_global_work_offset(1)))\' to hide this suggestion without affecting kernel functionality.","type":"text"},{"text":"1 compute unit.\\nKernel attribute \'uses_global_work_offset\' not specified. Add \'__attribute__((uses_global_work_offset(0)))\' to reduce area utilization if the kernel will always be enqueued with a 0 or NULL global_work_offset argument in clEnqueueNDRangeKernel. Add \'__attribute__((uses_global_work_offset(1)))\' to hide this suggestion without affecting kernel functionality.","type":"brief"}],"name":"hello_world","total_kernel_resources":[1652,3999,0,0,41],"total_percent":[0.501039,0.289326,0.234024,0,0],"type":"function"}],"columns":["","ALUTs","FFs","RAMs","DSPs","MLABs","Details"],"data":[2207,7032,2,0,41],"debug_enabled":"true","max_resources":[854400,1708800,2713,1518,42720],"name":"Kernel System","total":[67747,138112,178,0,41],"total_percent":[15.6478,8.02516,8.0824,6.561,0],"type":"module"};
var mavJSON={"nodes":[{"type":"kernel", "id":2, "name":"hello_world", "children":[{"type":"bb", "id":3, "name":"hello_world.B0", "children":[{"type":"inst", "id":4, "name":"Store", "debug":[[{"filename":"/home/joerock/Documents/TFM/Quartus_Sim-Em/hello_world/device/hello_world.cl", "line":29}]], "details":[{"type":"table", "Width":"32 bits", "Type":"Burst-coalesced", "Stall-free":"No", "Stores to":"id", "Start Cycle":"1", "Latency":"2", "Reference":[{"type":"text", "text":"See %L for more information", "links":[{"guide":"Best Practices Guide : Load-Store Units", "link":"file:////home/joerock/intelFPGA_pro/21.1/hld/aoc_help_pages/yeo1491314105959.html"}]}]}]}, {"type":"inst", "id":5, "name":"Begin", "details":[{"type":"table", "Start Cycle":"0", "Latency":"1"}]}, {"type":"inst", "id":6, "name":"End", "details":[{"type":"table", "Start Cycle":"3", "Latency":"1"}]}], "details":[{"type":"table", "Latency":"3"}]}]}, {"type":"memtype", "id":1, "name":"Global Memory", "children":[{"type":"memsys", "id":7, "name":"DDR", "details":[{"type":"table", "Number of banks":"1"}]}]}], "links":[{"from":4, "to":6}, {"from":5, "to":4}, {"from":4, "to":7}]};
var loopsJSON={"columns":["", "Pipelined", "II", "Speculated iterations", "Details"], "children":[{"name":"Kernel: hello_world", "data":["", "", ""], "debug":[[{"filename":"/home/joerock/Documents/TFM/Quartus_Sim-Em/hello_world/device/hello_world.cl", "line":24}]], "details":[{"type":"brief", "text":"ND-Range"}, {"type":"text", "text":"ND-Range"}, {"type":"text", "text":"Fmax bottlenck block: None"}, {"type":"text", "text":"See %L for more information", "links":[{"guide":"Best Practices Guide : Kernels", "link":"file:////home/joerock/intelFPGA_pro/21.1/hld/aoc_help_pages/ipp1476408832230.html"}]}]}]};
var loop_attrJSON={"name":"loop_attributes", "id":4294967295, "nodes":[{"name":"hello_world", "id":1877126176, "clk":"No", "fmax":"240.00", "debug":[[{"filename":"/home/joerock/Documents/TFM/Quartus_Sim-Em/hello_world/device/hello_world.cl", "line":24}]], "type":"kernel", "children":[{"name":"hello_world.B0", "id":1875647616, "af":"240.00", "br":"0", "ci":"0", "fo":"Disabled", "ii":"1", "ll":"1", "lt":"3.000000", "mi":"n/a", "pl":"Yes", "tc":"0", "tn":"1", "type":"bb"}]}]};
var summaryJSON={"performanceSummary":{"name":"Kernel Summary", "columns":["Kernel Name", "Kernel Type", "Autorun", "Workgroup Size", "# Compute Units"], "children":[{"name":"hello_world", "data":["NDRange", "No", "n/a", 1], "details":[{"type":"text", "text":"Kernel type: NDRange"}, {"type":"text", "text":"The kernel does not use any work-group information (such as get_local_id() or get_group_id()).Local work-group size will be automatically modified to match global work-group size on launch.This is a hardware optimization."}], "debug":[[{"filename":"/home/joerock/Documents/TFM/Quartus_Sim-Em/hello_world/device/hello_world.cl", "line":24}]]}]}, "estimatedResources":{"name":"Estimated Resource Usage", "columns":["Kernel Name", "ALUTs ", "FFs  ", "RAMs ", "DSPs ", "MLABs"], "children":[{"name":"hello_world", "data":[1652, 3999, 0, 0, 41], "debug":[[{"filename":"/home/joerock/Documents/TFM/Quartus_Sim-Em/hello_world/device/hello_world.cl", "line":24}]]}, {"name":"Global Interconnect", "classes":["summary-highlight", "nohover"], "data":[555, 2966, 0, 0, 0]}, {"name":"Board Interface", "classes":["summary-highlight", "nohover"], "data":[65540, 131080, 176, 0, 0]}, {"name":"System description ROM", "classes":["summary-highlight", "nohover"], "data":[0, 67, 2, 0, 0]}, {"name":"Total", "classes":["summary-highlight", "nohover"], "data":[67747, 138112, 178, 0, 41], "data_percent":[7.92919, 8.0824, 6.561, 0]}, {"name":"Available", "classes":["summary-highlight", "nohover"], "data":[854400, 1708800, 2713, 1518, 0]}]}, "compileWarnings":{"name":"Compile Warnings", "children":[]}};
var warningsJSON={"nodes":[]};
var fileJSON=[{"path":"/home/joerock/Documents/TFM/Quartus_Sim-Em/hello_world/device/hello_world.cl", "name":"hello_world.cl", "has_active_debug_locs":false, "absName":"/home/joerock/Documents/TFM/Quartus_Sim-Em/hello_world/device/hello_world.cl", "content":"// Copyright (C) 2013-2021 Altera Corporation, San Jose, California, USA. All rights reserved.\012// Permission is hereby granted, free of charge, to any person obtaining a copy of this\012// software and associated documentation files (the \"Software\"), to deal in the Software\012// without restriction, including without limitation the rights to use, copy, modify, merge,\012// publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to\012// whom the Software is furnished to do so, subject to the following conditions:\012// The above copyright notice and this permission notice shall be included in all copies or\012// substantial portions of the Software.\012// \012// THE SOFTWARE IS PROVIDED \"AS IS\", WITHOUT WARRANTY OF ANY KIND,\012// EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES\012// OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND\012// NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT\012// HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,\012// WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING\012// FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR\012// OTHER DEALINGS IN THE SOFTWARE.\012// \012// This agreement shall be governed in all respects by the laws of the State of California and\012// by the laws of the United States of America.\012\012// AOC kernel demonstrating device-side printf call\012\012__kernel void hello_world(int thread_id_from_which_to_print_message, __global int *id) {\012  // Get index of the work item\012  unsigned thread_id = get_global_id(0);                               \012  if(thread_id == thread_id_from_which_to_print_message) {\012    //printf(\"Thread #%u: Hello from the Intel FPGA OpenCL Compiler!\\n\", thread_id);\012    id[0] = thread_id;\012  }\012}\012\012"}];
var alpha_viewer=false;