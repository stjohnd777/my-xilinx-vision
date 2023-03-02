set moduleName xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_Pipeline_loop_width
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 1
set StallSigGenFlag 1
set isEnableWaveformDebug 1
set hasInterrupt 0
set C_modelName {xFRemapLI<0, 0, 1, 4, 8, 1080, 1920, 1, 2, 2, 2, 2, false>_Pipeline_loop_width}
set C_modelType { void 0 }
set C_modelArgList {
	{ r2 int 17 regular {array 8 { 0 1 } 1 1 }  }
	{ idxprom2582_i int 3 regular  }
	{ r1 int 17 regular {array 8 { 0 1 } 1 1 }  }
	{ add106_i int 17 regular  }
	{ i int 17 regular  }
	{ cmp263_i int 1 regular  }
	{ mul_ln315 int 12 regular  }
	{ i_cast9_i int 1 regular  }
	{ cols_cast_i int 16 regular  }
	{ cmp111_i int 1 regular  }
	{ imgInput_data1 int 8 regular {fifo 0 volatile }  }
	{ mapX_data2 int 32 regular {fifo 0 volatile }  }
	{ mapY_data3 int 32 regular {fifo 0 volatile }  }
	{ bitcast_ln348 int 31 regular  }
	{ icmp_ln348_6 int 1 regular  }
	{ conv1_i float 32 regular  }
	{ bitcast_ln349 int 31 regular  }
	{ icmp_ln349_4 int 1 regular  }
	{ conv2_i float 32 regular  }
	{ imgOutput_data4 int 8 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "r2", "interface" : "memory", "bitwidth" : 17, "direction" : "READWRITE"} , 
 	{ "Name" : "idxprom2582_i", "interface" : "wire", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "r1", "interface" : "memory", "bitwidth" : 17, "direction" : "READWRITE"} , 
 	{ "Name" : "add106_i", "interface" : "wire", "bitwidth" : 17, "direction" : "READONLY"} , 
 	{ "Name" : "i", "interface" : "wire", "bitwidth" : 17, "direction" : "READONLY"} , 
 	{ "Name" : "cmp263_i", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "mul_ln315", "interface" : "wire", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "i_cast9_i", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "cols_cast_i", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "cmp111_i", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "imgInput_data1", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "mapX_data2", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "mapY_data3", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "bitcast_ln348", "interface" : "wire", "bitwidth" : 31, "direction" : "READONLY"} , 
 	{ "Name" : "icmp_ln348_6", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "conv1_i", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "bitcast_ln349", "interface" : "wire", "bitwidth" : 31, "direction" : "READONLY"} , 
 	{ "Name" : "icmp_ln349_4", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "conv2_i", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "imgOutput_data4", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 57
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ imgInput_data1_dout sc_in sc_lv 8 signal 10 } 
	{ imgInput_data1_num_data_valid sc_in sc_lv 2 signal 10 } 
	{ imgInput_data1_fifo_cap sc_in sc_lv 2 signal 10 } 
	{ imgInput_data1_empty_n sc_in sc_logic 1 signal 10 } 
	{ imgInput_data1_read sc_out sc_logic 1 signal 10 } 
	{ mapX_data2_dout sc_in sc_lv 32 signal 11 } 
	{ mapX_data2_num_data_valid sc_in sc_lv 2 signal 11 } 
	{ mapX_data2_fifo_cap sc_in sc_lv 2 signal 11 } 
	{ mapX_data2_empty_n sc_in sc_logic 1 signal 11 } 
	{ mapX_data2_read sc_out sc_logic 1 signal 11 } 
	{ mapY_data3_dout sc_in sc_lv 32 signal 12 } 
	{ mapY_data3_num_data_valid sc_in sc_lv 2 signal 12 } 
	{ mapY_data3_fifo_cap sc_in sc_lv 2 signal 12 } 
	{ mapY_data3_empty_n sc_in sc_logic 1 signal 12 } 
	{ mapY_data3_read sc_out sc_logic 1 signal 12 } 
	{ imgOutput_data4_din sc_out sc_lv 8 signal 19 } 
	{ imgOutput_data4_num_data_valid sc_in sc_lv 2 signal 19 } 
	{ imgOutput_data4_fifo_cap sc_in sc_lv 2 signal 19 } 
	{ imgOutput_data4_full_n sc_in sc_logic 1 signal 19 } 
	{ imgOutput_data4_write sc_out sc_logic 1 signal 19 } 
	{ r2_address0 sc_out sc_lv 3 signal 0 } 
	{ r2_ce0 sc_out sc_logic 1 signal 0 } 
	{ r2_we0 sc_out sc_logic 1 signal 0 } 
	{ r2_d0 sc_out sc_lv 17 signal 0 } 
	{ r2_address1 sc_out sc_lv 3 signal 0 } 
	{ r2_ce1 sc_out sc_logic 1 signal 0 } 
	{ r2_q1 sc_in sc_lv 17 signal 0 } 
	{ idxprom2582_i sc_in sc_lv 3 signal 1 } 
	{ r1_address0 sc_out sc_lv 3 signal 2 } 
	{ r1_ce0 sc_out sc_logic 1 signal 2 } 
	{ r1_we0 sc_out sc_logic 1 signal 2 } 
	{ r1_d0 sc_out sc_lv 17 signal 2 } 
	{ r1_address1 sc_out sc_lv 3 signal 2 } 
	{ r1_ce1 sc_out sc_logic 1 signal 2 } 
	{ r1_q1 sc_in sc_lv 17 signal 2 } 
	{ add106_i sc_in sc_lv 17 signal 3 } 
	{ i sc_in sc_lv 17 signal 4 } 
	{ cmp263_i sc_in sc_lv 1 signal 5 } 
	{ mul_ln315 sc_in sc_lv 12 signal 6 } 
	{ i_cast9_i sc_in sc_lv 1 signal 7 } 
	{ cols_cast_i sc_in sc_lv 16 signal 8 } 
	{ cmp111_i sc_in sc_lv 1 signal 9 } 
	{ bitcast_ln348 sc_in sc_lv 31 signal 13 } 
	{ icmp_ln348_6 sc_in sc_lv 1 signal 14 } 
	{ conv1_i sc_in sc_lv 32 signal 15 } 
	{ bitcast_ln349 sc_in sc_lv 31 signal 16 } 
	{ icmp_ln349_4 sc_in sc_lv 1 signal 17 } 
	{ conv2_i sc_in sc_lv 32 signal 18 } 
	{ ap_ext_blocking_n sc_out sc_logic 1 signal -1 } 
	{ ap_str_blocking_n sc_out sc_logic 1 signal -1 } 
	{ ap_int_blocking_n sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "imgInput_data1_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "imgInput_data1", "role": "dout" }} , 
 	{ "name": "imgInput_data1_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "imgInput_data1", "role": "num_data_valid" }} , 
 	{ "name": "imgInput_data1_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "imgInput_data1", "role": "fifo_cap" }} , 
 	{ "name": "imgInput_data1_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imgInput_data1", "role": "empty_n" }} , 
 	{ "name": "imgInput_data1_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imgInput_data1", "role": "read" }} , 
 	{ "name": "mapX_data2_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mapX_data2", "role": "dout" }} , 
 	{ "name": "mapX_data2_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "mapX_data2", "role": "num_data_valid" }} , 
 	{ "name": "mapX_data2_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "mapX_data2", "role": "fifo_cap" }} , 
 	{ "name": "mapX_data2_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mapX_data2", "role": "empty_n" }} , 
 	{ "name": "mapX_data2_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mapX_data2", "role": "read" }} , 
 	{ "name": "mapY_data3_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mapY_data3", "role": "dout" }} , 
 	{ "name": "mapY_data3_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "mapY_data3", "role": "num_data_valid" }} , 
 	{ "name": "mapY_data3_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "mapY_data3", "role": "fifo_cap" }} , 
 	{ "name": "mapY_data3_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mapY_data3", "role": "empty_n" }} , 
 	{ "name": "mapY_data3_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mapY_data3", "role": "read" }} , 
 	{ "name": "imgOutput_data4_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "imgOutput_data4", "role": "din" }} , 
 	{ "name": "imgOutput_data4_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "imgOutput_data4", "role": "num_data_valid" }} , 
 	{ "name": "imgOutput_data4_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "imgOutput_data4", "role": "fifo_cap" }} , 
 	{ "name": "imgOutput_data4_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imgOutput_data4", "role": "full_n" }} , 
 	{ "name": "imgOutput_data4_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imgOutput_data4", "role": "write" }} , 
 	{ "name": "r2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "r2", "role": "address0" }} , 
 	{ "name": "r2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "r2", "role": "ce0" }} , 
 	{ "name": "r2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "r2", "role": "we0" }} , 
 	{ "name": "r2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "r2", "role": "d0" }} , 
 	{ "name": "r2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "r2", "role": "address1" }} , 
 	{ "name": "r2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "r2", "role": "ce1" }} , 
 	{ "name": "r2_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "r2", "role": "q1" }} , 
 	{ "name": "idxprom2582_i", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "idxprom2582_i", "role": "default" }} , 
 	{ "name": "r1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "r1", "role": "address0" }} , 
 	{ "name": "r1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "r1", "role": "ce0" }} , 
 	{ "name": "r1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "r1", "role": "we0" }} , 
 	{ "name": "r1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "r1", "role": "d0" }} , 
 	{ "name": "r1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "r1", "role": "address1" }} , 
 	{ "name": "r1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "r1", "role": "ce1" }} , 
 	{ "name": "r1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "r1", "role": "q1" }} , 
 	{ "name": "add106_i", "direction": "in", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "add106_i", "role": "default" }} , 
 	{ "name": "i", "direction": "in", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "i", "role": "default" }} , 
 	{ "name": "cmp263_i", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "cmp263_i", "role": "default" }} , 
 	{ "name": "mul_ln315", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "mul_ln315", "role": "default" }} , 
 	{ "name": "i_cast9_i", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "i_cast9_i", "role": "default" }} , 
 	{ "name": "cols_cast_i", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "cols_cast_i", "role": "default" }} , 
 	{ "name": "cmp111_i", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "cmp111_i", "role": "default" }} , 
 	{ "name": "bitcast_ln348", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "bitcast_ln348", "role": "default" }} , 
 	{ "name": "icmp_ln348_6", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "icmp_ln348_6", "role": "default" }} , 
 	{ "name": "conv1_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv1_i", "role": "default" }} , 
 	{ "name": "bitcast_ln349", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "bitcast_ln349", "role": "default" }} , 
 	{ "name": "icmp_ln349_4", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "icmp_ln349_4", "role": "default" }} , 
 	{ "name": "conv2_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv2_i", "role": "default" }} , 
 	{ "name": "ap_ext_blocking_n", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_ext_blocking_n", "role": "default" }} , 
 	{ "name": "ap_str_blocking_n", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_str_blocking_n", "role": "default" }} , 
 	{ "name": "ap_int_blocking_n", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_int_blocking_n", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18"],
		"CDFG" : "xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_Pipeline_loop_width",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "15", "EstimateLatencyMax" : "1936",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"DependenceCheck" : [
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_65", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state1_pp0_iter0_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter0", "FromFinalOperation" : "ap_enable_operation_65", "FromFinalSV" : "0", "FromAddress" : "r1_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state13_pp0_iter12_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter12", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter13", "ToInitialOperation" : "ap_enable_operation_285", "ToInitialSV" : "12", "ToFinalState" : "ap_enable_state14_pp0_iter13_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter13", "ToFinalOperation" : "ap_enable_operation_302", "ToFinalSV" : "13", "ToAddress" : "r1_address1", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "3", "II" : "1", "Pragma" : "(/home/overman/dev/workspaces/vision/vision_kernels/src/remap/../imgproc/xf_remap.hpp:264:9)", "Type" : "RAW"},
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_66", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state1_pp0_iter0_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter0", "FromFinalOperation" : "ap_enable_operation_66", "FromFinalSV" : "0", "FromAddress" : "r2_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state13_pp0_iter12_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter12", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter13", "ToInitialOperation" : "ap_enable_operation_288", "ToInitialSV" : "12", "ToFinalState" : "ap_enable_state14_pp0_iter13_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter13", "ToFinalOperation" : "ap_enable_operation_305", "ToFinalSV" : "13", "ToAddress" : "r2_address1", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "3", "II" : "1", "Pragma" : "(/home/overman/dev/workspaces/vision/vision_kernels/src/remap/../imgproc/xf_remap.hpp:265:9)", "Type" : "RAW"},
			{"FromInitialState" : "ap_enable_state2_pp0_iter1_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter1", "FromInitialOperation" : "ap_enable_operation_83", "FromInitialSV" : "1", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_83", "FromFinalSV" : "1", "FromAddress" : "buf_V_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state9_pp0_iter8_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter8", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter9", "ToInitialOperation" : "ap_enable_operation_235", "ToInitialSV" : "8", "ToFinalState" : "ap_enable_state10_pp0_iter9_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter9", "ToFinalOperation" : "ap_enable_operation_251", "ToFinalSV" : "9", "ToAddress" : "buf_V_address1", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "13", "II" : "1", "Pragma" : "(/home/overman/dev/workspaces/vision/vision_kernels/src/remap/../imgproc/xf_remap.hpp:261:9)", "Type" : "RAW"},
			{"FromInitialState" : "ap_enable_state2_pp0_iter1_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter1", "FromInitialOperation" : "ap_enable_operation_85", "FromInitialSV" : "1", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_85", "FromFinalSV" : "1", "FromAddress" : "buf_V_1_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state9_pp0_iter8_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter8", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter9", "ToInitialOperation" : "ap_enable_operation_236", "ToInitialSV" : "8", "ToFinalState" : "ap_enable_state10_pp0_iter9_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter9", "ToFinalOperation" : "ap_enable_operation_252", "ToFinalSV" : "9", "ToAddress" : "buf_V_1_address1", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "13", "II" : "1", "Pragma" : "(/home/overman/dev/workspaces/vision/vision_kernels/src/remap/../imgproc/xf_remap.hpp:261:9)", "Type" : "RAW"},
			{"FromInitialState" : "ap_enable_state2_pp0_iter1_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter1", "FromInitialOperation" : "ap_enable_operation_87", "FromInitialSV" : "1", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_87", "FromFinalSV" : "1", "FromAddress" : "buf_V_2_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state9_pp0_iter8_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter8", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter9", "ToInitialOperation" : "ap_enable_operation_237", "ToInitialSV" : "8", "ToFinalState" : "ap_enable_state10_pp0_iter9_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter9", "ToFinalOperation" : "ap_enable_operation_253", "ToFinalSV" : "9", "ToAddress" : "buf_V_2_address1", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "13", "II" : "1", "Pragma" : "(/home/overman/dev/workspaces/vision/vision_kernels/src/remap/../imgproc/xf_remap.hpp:261:9)", "Type" : "RAW"},
			{"FromInitialState" : "ap_enable_state2_pp0_iter1_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter1", "FromInitialOperation" : "ap_enable_operation_89", "FromInitialSV" : "1", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_89", "FromFinalSV" : "1", "FromAddress" : "buf_V_3_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state9_pp0_iter8_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter8", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter9", "ToInitialOperation" : "ap_enable_operation_238", "ToInitialSV" : "8", "ToFinalState" : "ap_enable_state10_pp0_iter9_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter9", "ToFinalOperation" : "ap_enable_operation_254", "ToFinalSV" : "9", "ToAddress" : "buf_V_3_address1", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "13", "II" : "1", "Pragma" : "(/home/overman/dev/workspaces/vision/vision_kernels/src/remap/../imgproc/xf_remap.hpp:261:9)", "Type" : "RAW"},
			{"FromInitialState" : "ap_enable_state9_pp0_iter8_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter8", "FromInitialOperation" : "ap_enable_operation_235", "FromInitialSV" : "8", "FromFinalState" : "ap_enable_state10_pp0_iter9_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter9", "FromFinalOperation" : "ap_enable_operation_251", "FromFinalSV" : "9", "FromAddress" : "buf_V_address1", "FromType" : "R", "ToInitialState" : "ap_enable_state2_pp0_iter1_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter1", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter2", "ToInitialOperation" : "ap_enable_operation_83", "ToInitialSV" : "1", "ToFinalState" : "ap_enable_state2_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_83", "ToFinalSV" : "1", "ToAddress" : "buf_V_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "13", "II" : "1", "Pragma" : "(/home/overman/dev/workspaces/vision/vision_kernels/src/remap/../imgproc/xf_remap.hpp:261:9)", "Type" : "WAR", "StateEnableSignalListForFifoShift" : ["ap_enable_state2_pp0_iter1_stage0", "ap_enable_state9_pp0_iter8_stage0", "ap_enable_state10_pp0_iter9_stage0"]},
			{"FromInitialState" : "ap_enable_state9_pp0_iter8_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter8", "FromInitialOperation" : "ap_enable_operation_236", "FromInitialSV" : "8", "FromFinalState" : "ap_enable_state10_pp0_iter9_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter9", "FromFinalOperation" : "ap_enable_operation_252", "FromFinalSV" : "9", "FromAddress" : "buf_V_1_address1", "FromType" : "R", "ToInitialState" : "ap_enable_state2_pp0_iter1_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter1", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter2", "ToInitialOperation" : "ap_enable_operation_85", "ToInitialSV" : "1", "ToFinalState" : "ap_enable_state2_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_85", "ToFinalSV" : "1", "ToAddress" : "buf_V_1_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "13", "II" : "1", "Pragma" : "(/home/overman/dev/workspaces/vision/vision_kernels/src/remap/../imgproc/xf_remap.hpp:261:9)", "Type" : "WAR", "StateEnableSignalListForFifoShift" : ["ap_enable_state2_pp0_iter1_stage0", "ap_enable_state9_pp0_iter8_stage0", "ap_enable_state10_pp0_iter9_stage0"]},
			{"FromInitialState" : "ap_enable_state9_pp0_iter8_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter8", "FromInitialOperation" : "ap_enable_operation_237", "FromInitialSV" : "8", "FromFinalState" : "ap_enable_state10_pp0_iter9_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter9", "FromFinalOperation" : "ap_enable_operation_253", "FromFinalSV" : "9", "FromAddress" : "buf_V_2_address1", "FromType" : "R", "ToInitialState" : "ap_enable_state2_pp0_iter1_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter1", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter2", "ToInitialOperation" : "ap_enable_operation_87", "ToInitialSV" : "1", "ToFinalState" : "ap_enable_state2_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_87", "ToFinalSV" : "1", "ToAddress" : "buf_V_2_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "13", "II" : "1", "Pragma" : "(/home/overman/dev/workspaces/vision/vision_kernels/src/remap/../imgproc/xf_remap.hpp:261:9)", "Type" : "WAR", "StateEnableSignalListForFifoShift" : ["ap_enable_state2_pp0_iter1_stage0", "ap_enable_state9_pp0_iter8_stage0", "ap_enable_state10_pp0_iter9_stage0"]},
			{"FromInitialState" : "ap_enable_state9_pp0_iter8_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter8", "FromInitialOperation" : "ap_enable_operation_238", "FromInitialSV" : "8", "FromFinalState" : "ap_enable_state10_pp0_iter9_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter9", "FromFinalOperation" : "ap_enable_operation_254", "FromFinalSV" : "9", "FromAddress" : "buf_V_3_address1", "FromType" : "R", "ToInitialState" : "ap_enable_state2_pp0_iter1_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter1", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter2", "ToInitialOperation" : "ap_enable_operation_89", "ToInitialSV" : "1", "ToFinalState" : "ap_enable_state2_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_89", "ToFinalSV" : "1", "ToAddress" : "buf_V_3_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "13", "II" : "1", "Pragma" : "(/home/overman/dev/workspaces/vision/vision_kernels/src/remap/../imgproc/xf_remap.hpp:261:9)", "Type" : "WAR", "StateEnableSignalListForFifoShift" : ["ap_enable_state2_pp0_iter1_stage0", "ap_enable_state9_pp0_iter8_stage0", "ap_enable_state10_pp0_iter9_stage0"]},
			{"FromInitialState" : "ap_enable_state13_pp0_iter12_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter12", "FromInitialOperation" : "ap_enable_operation_285", "FromInitialSV" : "12", "FromFinalState" : "ap_enable_state14_pp0_iter13_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter13", "FromFinalOperation" : "ap_enable_operation_302", "FromFinalSV" : "13", "FromAddress" : "r1_address1", "FromType" : "R", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_65", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state1_pp0_iter0_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter0", "ToFinalOperation" : "ap_enable_operation_65", "ToFinalSV" : "0", "ToAddress" : "r1_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "3", "II" : "1", "Pragma" : "(/home/overman/dev/workspaces/vision/vision_kernels/src/remap/../imgproc/xf_remap.hpp:264:9)", "Type" : "WAR", "StateEnableSignalListForFifoShift" : ["ap_enable_state1_pp0_iter0_stage0", "ap_enable_state2_pp0_iter1_stage0", "ap_enable_state9_pp0_iter8_stage0", "ap_enable_state10_pp0_iter9_stage0", "ap_enable_state13_pp0_iter12_stage0", "ap_enable_state14_pp0_iter13_stage0"]},
			{"FromInitialState" : "ap_enable_state13_pp0_iter12_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter12", "FromInitialOperation" : "ap_enable_operation_288", "FromInitialSV" : "12", "FromFinalState" : "ap_enable_state14_pp0_iter13_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter13", "FromFinalOperation" : "ap_enable_operation_305", "FromFinalSV" : "13", "FromAddress" : "r2_address1", "FromType" : "R", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_66", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state1_pp0_iter0_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter0", "ToFinalOperation" : "ap_enable_operation_66", "ToFinalSV" : "0", "ToAddress" : "r2_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "3", "II" : "1", "Pragma" : "(/home/overman/dev/workspaces/vision/vision_kernels/src/remap/../imgproc/xf_remap.hpp:265:9)", "Type" : "WAR", "StateEnableSignalListForFifoShift" : ["ap_enable_state1_pp0_iter0_stage0", "ap_enable_state2_pp0_iter1_stage0", "ap_enable_state9_pp0_iter8_stage0", "ap_enable_state10_pp0_iter9_stage0", "ap_enable_state13_pp0_iter12_stage0", "ap_enable_state14_pp0_iter13_stage0"]}],
		"Port" : [
			{"Name" : "r2", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "idxprom2582_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "r1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "add106_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "i", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp263_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "mul_ln315", "Type" : "None", "Direction" : "I"},
			{"Name" : "i_cast9_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "cols_cast_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp111_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "imgInput_data1", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "imgInput_data1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mapX_data2", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "mapX_data2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mapY_data3", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "mapY_data3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bitcast_ln348", "Type" : "None", "Direction" : "I"},
			{"Name" : "icmp_ln348_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv1_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "bitcast_ln349", "Type" : "None", "Direction" : "I"},
			{"Name" : "icmp_ln349_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv2_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "imgOutput_data4", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "imgOutput_data4_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "loop_width", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter13", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter13", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_V_1_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_V_2_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_V_3_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U85", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U86", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fcmp_32ns_32ns_1_2_no_dsp_1_U87", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fcmp_32ns_32ns_1_2_no_dsp_1_U88", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_4s_11ns_13_1_1_U89", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_4s_11ns_13_1_1_U90", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_6ns_5ns_11_1_1_U91", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_6ns_5ns_11_1_1_U92", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_5ns_5ns_10_1_1_U93", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_11ns_8ns_18_4_1_U94", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_11ns_8ns_18_4_1_U95", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ama_submuladd_11ns_11ns_8ns_18ns_18_4_1_U96", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_10ns_8ns_18ns_18_4_1_U97", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_Pipeline_loop_width {
		r2 {Type IO LastRead 12 FirstWrite 0}
		idxprom2582_i {Type I LastRead 0 FirstWrite -1}
		r1 {Type IO LastRead 12 FirstWrite 0}
		add106_i {Type I LastRead 0 FirstWrite -1}
		i {Type I LastRead 0 FirstWrite -1}
		cmp263_i {Type I LastRead 0 FirstWrite -1}
		mul_ln315 {Type I LastRead 0 FirstWrite -1}
		i_cast9_i {Type I LastRead 0 FirstWrite -1}
		cols_cast_i {Type I LastRead 0 FirstWrite -1}
		cmp111_i {Type I LastRead 0 FirstWrite -1}
		imgInput_data1 {Type I LastRead 1 FirstWrite -1}
		mapX_data2 {Type I LastRead 1 FirstWrite -1}
		mapY_data3 {Type I LastRead 1 FirstWrite -1}
		bitcast_ln348 {Type I LastRead 0 FirstWrite -1}
		icmp_ln348_6 {Type I LastRead 0 FirstWrite -1}
		conv1_i {Type I LastRead 0 FirstWrite -1}
		bitcast_ln349 {Type I LastRead 0 FirstWrite -1}
		icmp_ln349_4 {Type I LastRead 0 FirstWrite -1}
		conv2_i {Type I LastRead 0 FirstWrite -1}
		imgOutput_data4 {Type O LastRead -1 FirstWrite 13}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "15", "Max" : "1936"}
	, {"Name" : "Interval", "Min" : "15", "Max" : "1936"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	r2 { ap_memory {  { r2_address0 mem_address 1 3 }  { r2_ce0 mem_ce 1 1 }  { r2_we0 mem_we 1 1 }  { r2_d0 mem_din 1 17 }  { r2_address1 MemPortADDR2 1 3 }  { r2_ce1 MemPortCE2 1 1 }  { r2_q1 in_data 0 17 } } }
	idxprom2582_i { ap_none {  { idxprom2582_i in_data 0 3 } } }
	r1 { ap_memory {  { r1_address0 mem_address 1 3 }  { r1_ce0 mem_ce 1 1 }  { r1_we0 mem_we 1 1 }  { r1_d0 mem_din 1 17 }  { r1_address1 MemPortADDR2 1 3 }  { r1_ce1 MemPortCE2 1 1 }  { r1_q1 in_data 0 17 } } }
	add106_i { ap_none {  { add106_i in_data 0 17 } } }
	i { ap_none {  { i in_data 0 17 } } }
	cmp263_i { ap_none {  { cmp263_i in_data 0 1 } } }
	mul_ln315 { ap_none {  { mul_ln315 in_data 0 12 } } }
	i_cast9_i { ap_none {  { i_cast9_i in_data 0 1 } } }
	cols_cast_i { ap_none {  { cols_cast_i in_data 0 16 } } }
	cmp111_i { ap_none {  { cmp111_i in_data 0 1 } } }
	imgInput_data1 { ap_fifo {  { imgInput_data1_dout fifo_port_we 0 8 }  { imgInput_data1_num_data_valid fifo_status_num_data_valid 0 2 }  { imgInput_data1_fifo_cap fifo_update 0 2 }  { imgInput_data1_empty_n fifo_status 0 1 }  { imgInput_data1_read fifo_data 1 1 } } }
	mapX_data2 { ap_fifo {  { mapX_data2_dout fifo_port_we 0 32 }  { mapX_data2_num_data_valid fifo_status_num_data_valid 0 2 }  { mapX_data2_fifo_cap fifo_update 0 2 }  { mapX_data2_empty_n fifo_status 0 1 }  { mapX_data2_read fifo_data 1 1 } } }
	mapY_data3 { ap_fifo {  { mapY_data3_dout fifo_port_we 0 32 }  { mapY_data3_num_data_valid fifo_status_num_data_valid 0 2 }  { mapY_data3_fifo_cap fifo_update 0 2 }  { mapY_data3_empty_n fifo_status 0 1 }  { mapY_data3_read fifo_data 1 1 } } }
	bitcast_ln348 { ap_none {  { bitcast_ln348 in_data 0 31 } } }
	icmp_ln348_6 { ap_none {  { icmp_ln348_6 in_data 0 1 } } }
	conv1_i { ap_none {  { conv1_i in_data 0 32 } } }
	bitcast_ln349 { ap_none {  { bitcast_ln349 in_data 0 31 } } }
	icmp_ln349_4 { ap_none {  { icmp_ln349_4 in_data 0 1 } } }
	conv2_i { ap_none {  { conv2_i in_data 0 32 } } }
	imgOutput_data4 { ap_fifo {  { imgOutput_data4_din fifo_port_we 1 8 }  { imgOutput_data4_num_data_valid fifo_status_num_data_valid 0 2 }  { imgOutput_data4_fifo_cap fifo_update 0 2 }  { imgOutput_data4_full_n fifo_status 0 1 }  { imgOutput_data4_write fifo_data 1 1 } } }
}
