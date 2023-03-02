set moduleName xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_s
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 1
set StallSigGenFlag 1
set isEnableWaveformDebug 1
set hasInterrupt 0
set C_modelName {xFRemapLI<0, 0, 1, 4, 8, 1080, 1920, 1, 2, 2, 2, 2, false>}
set C_modelType { void 0 }
set C_modelArgList {
	{ imgInput_data1 int 8 regular {fifo 0 volatile }  }
	{ imgOutput_data4 int 8 regular {fifo 1 volatile }  }
	{ mapX_data2 int 32 regular {fifo 0 volatile }  }
	{ mapY_data3 int 32 regular {fifo 0 volatile }  }
	{ p_read int 16 regular  }
	{ p_read1 int 16 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "imgInput_data1", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "imgOutput_data4", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "mapX_data2", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "mapY_data3", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_read1", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 32
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ imgInput_data1_dout sc_in sc_lv 8 signal 0 } 
	{ imgInput_data1_num_data_valid sc_in sc_lv 2 signal 0 } 
	{ imgInput_data1_fifo_cap sc_in sc_lv 2 signal 0 } 
	{ imgInput_data1_empty_n sc_in sc_logic 1 signal 0 } 
	{ imgInput_data1_read sc_out sc_logic 1 signal 0 } 
	{ imgOutput_data4_din sc_out sc_lv 8 signal 1 } 
	{ imgOutput_data4_num_data_valid sc_in sc_lv 2 signal 1 } 
	{ imgOutput_data4_fifo_cap sc_in sc_lv 2 signal 1 } 
	{ imgOutput_data4_full_n sc_in sc_logic 1 signal 1 } 
	{ imgOutput_data4_write sc_out sc_logic 1 signal 1 } 
	{ mapX_data2_dout sc_in sc_lv 32 signal 2 } 
	{ mapX_data2_num_data_valid sc_in sc_lv 2 signal 2 } 
	{ mapX_data2_fifo_cap sc_in sc_lv 2 signal 2 } 
	{ mapX_data2_empty_n sc_in sc_logic 1 signal 2 } 
	{ mapX_data2_read sc_out sc_logic 1 signal 2 } 
	{ mapY_data3_dout sc_in sc_lv 32 signal 3 } 
	{ mapY_data3_num_data_valid sc_in sc_lv 2 signal 3 } 
	{ mapY_data3_fifo_cap sc_in sc_lv 2 signal 3 } 
	{ mapY_data3_empty_n sc_in sc_logic 1 signal 3 } 
	{ mapY_data3_read sc_out sc_logic 1 signal 3 } 
	{ p_read sc_in sc_lv 16 signal 4 } 
	{ p_read1 sc_in sc_lv 16 signal 5 } 
	{ ap_ext_blocking_n sc_out sc_logic 1 signal -1 } 
	{ ap_str_blocking_n sc_out sc_logic 1 signal -1 } 
	{ ap_int_blocking_n sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "imgInput_data1_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "imgInput_data1", "role": "dout" }} , 
 	{ "name": "imgInput_data1_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "imgInput_data1", "role": "num_data_valid" }} , 
 	{ "name": "imgInput_data1_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "imgInput_data1", "role": "fifo_cap" }} , 
 	{ "name": "imgInput_data1_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imgInput_data1", "role": "empty_n" }} , 
 	{ "name": "imgInput_data1_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imgInput_data1", "role": "read" }} , 
 	{ "name": "imgOutput_data4_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "imgOutput_data4", "role": "din" }} , 
 	{ "name": "imgOutput_data4_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "imgOutput_data4", "role": "num_data_valid" }} , 
 	{ "name": "imgOutput_data4_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "imgOutput_data4", "role": "fifo_cap" }} , 
 	{ "name": "imgOutput_data4_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imgOutput_data4", "role": "full_n" }} , 
 	{ "name": "imgOutput_data4_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imgOutput_data4", "role": "write" }} , 
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
 	{ "name": "p_read", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read", "role": "default" }} , 
 	{ "name": "p_read1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read1", "role": "default" }} , 
 	{ "name": "ap_ext_blocking_n", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_ext_blocking_n", "role": "default" }} , 
 	{ "name": "ap_str_blocking_n", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_str_blocking_n", "role": "default" }} , 
 	{ "name": "ap_int_blocking_n", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_int_blocking_n", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "5", "7", "26", "27", "28"],
		"CDFG" : "xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "89", "EstimateLatencyMax" : "2109649",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "imgInput_data1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_Pipeline_loop_width_fu_106", "Port" : "imgInput_data1", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "imgOutput_data4", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_Pipeline_loop_width_fu_106", "Port" : "imgOutput_data4", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "mapX_data2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_Pipeline_loop_width_fu_106", "Port" : "mapX_data2", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "mapY_data3", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_Pipeline_loop_width_fu_106", "Port" : "mapY_data3", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "1"}],
		"Loop" : [
			{"Name" : "loop_height", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "10", "FirstState" : "ap_ST_fsm_state8", "LastState" : ["ap_ST_fsm_state10"], "QuitState" : ["ap_ST_fsm_state8"], "PreState" : ["ap_ST_fsm_state7"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.r1_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.r2_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_Pipeline_1_fu_94", "Parent" : "0", "Child" : ["4"],
		"CDFG" : "xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_Pipeline_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "r1", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "Loop 1", "PipelineType" : "NotSupport"}]},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_Pipeline_1_fu_94.flow_control_loop_pipe_sequential_init_U", "Parent" : "3"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_Pipeline_2_fu_100", "Parent" : "0", "Child" : ["6"],
		"CDFG" : "xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_Pipeline_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "r2", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "Loop 1", "PipelineType" : "NotSupport"}]},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_Pipeline_2_fu_100.flow_control_loop_pipe_sequential_init_U", "Parent" : "5"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_Pipeline_loop_width_fu_106", "Parent" : "0", "Child" : ["8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25"],
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
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_Pipeline_loop_width_fu_106.buf_V_U", "Parent" : "7"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_Pipeline_loop_width_fu_106.buf_V_1_U", "Parent" : "7"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_Pipeline_loop_width_fu_106.buf_V_2_U", "Parent" : "7"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_Pipeline_loop_width_fu_106.buf_V_3_U", "Parent" : "7"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_Pipeline_loop_width_fu_106.fmul_32ns_32ns_32_4_max_dsp_1_U85", "Parent" : "7"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_Pipeline_loop_width_fu_106.fmul_32ns_32ns_32_4_max_dsp_1_U86", "Parent" : "7"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_Pipeline_loop_width_fu_106.fcmp_32ns_32ns_1_2_no_dsp_1_U87", "Parent" : "7"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_Pipeline_loop_width_fu_106.fcmp_32ns_32ns_1_2_no_dsp_1_U88", "Parent" : "7"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_Pipeline_loop_width_fu_106.mul_4s_11ns_13_1_1_U89", "Parent" : "7"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_Pipeline_loop_width_fu_106.mul_4s_11ns_13_1_1_U90", "Parent" : "7"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_Pipeline_loop_width_fu_106.mul_6ns_5ns_11_1_1_U91", "Parent" : "7"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_Pipeline_loop_width_fu_106.mul_6ns_5ns_11_1_1_U92", "Parent" : "7"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_Pipeline_loop_width_fu_106.mul_5ns_5ns_10_1_1_U93", "Parent" : "7"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_Pipeline_loop_width_fu_106.mul_mul_11ns_8ns_18_4_1_U94", "Parent" : "7"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_Pipeline_loop_width_fu_106.mul_mul_11ns_8ns_18_4_1_U95", "Parent" : "7"},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_Pipeline_loop_width_fu_106.ama_submuladd_11ns_11ns_8ns_18ns_18_4_1_U96", "Parent" : "7"},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_Pipeline_loop_width_fu_106.mac_muladd_10ns_8ns_18ns_18_4_1_U97", "Parent" : "7"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_Pipeline_loop_width_fu_106.flow_control_loop_pipe_sequential_init_U", "Parent" : "7"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sitofp_32s_32_5_no_dsp_1_U127", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sitofp_32s_32_5_no_dsp_1_U128", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_2ns_11ns_12_1_1_U129", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_s {
		imgInput_data1 {Type I LastRead 1 FirstWrite -1}
		imgOutput_data4 {Type O LastRead -1 FirstWrite 13}
		mapX_data2 {Type I LastRead 1 FirstWrite -1}
		mapY_data3 {Type I LastRead 1 FirstWrite -1}
		p_read {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}}
	xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_Pipeline_1 {
		r1 {Type O LastRead -1 FirstWrite 0}}
	xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_Pipeline_2 {
		r2 {Type O LastRead -1 FirstWrite 0}}
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
	{"Name" : "Latency", "Min" : "89", "Max" : "2109649"}
	, {"Name" : "Interval", "Min" : "89", "Max" : "2109649"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	imgInput_data1 { ap_fifo {  { imgInput_data1_dout fifo_port_we 0 8 }  { imgInput_data1_num_data_valid fifo_status_num_data_valid 0 2 }  { imgInput_data1_fifo_cap fifo_update 0 2 }  { imgInput_data1_empty_n fifo_status 0 1 }  { imgInput_data1_read fifo_data 1 1 } } }
	imgOutput_data4 { ap_fifo {  { imgOutput_data4_din fifo_port_we 1 8 }  { imgOutput_data4_num_data_valid fifo_status_num_data_valid 0 2 }  { imgOutput_data4_fifo_cap fifo_update 0 2 }  { imgOutput_data4_full_n fifo_status 0 1 }  { imgOutput_data4_write fifo_data 1 1 } } }
	mapX_data2 { ap_fifo {  { mapX_data2_dout fifo_port_we 0 32 }  { mapX_data2_num_data_valid fifo_status_num_data_valid 0 2 }  { mapX_data2_fifo_cap fifo_update 0 2 }  { mapX_data2_empty_n fifo_status 0 1 }  { mapX_data2_read fifo_data 1 1 } } }
	mapY_data3 { ap_fifo {  { mapY_data3_dout fifo_port_we 0 32 }  { mapY_data3_num_data_valid fifo_status_num_data_valid 0 2 }  { mapY_data3_fifo_cap fifo_update 0 2 }  { mapY_data3_empty_n fifo_status 0 1 }  { mapY_data3_read fifo_data 1 1 } } }
	p_read { ap_none {  { p_read in_data 0 16 } } }
	p_read1 { ap_none {  { p_read1 in_data 0 16 } } }
}
