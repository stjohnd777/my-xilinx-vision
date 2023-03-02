set moduleName remap_8_1_0_4_0_1080_1920_1_false_2_2_2_2_s
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type dataflow
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set C_modelName {remap<8, 1, 0, 4, 0, 1080, 1920, 1, false, 2, 2, 2, 2>}
set C_modelType { void 0 }
set C_modelArgList {
	{ p_src_mat_rows int 32 regular {fifo 0}  }
	{ p_src_mat_cols int 32 regular {fifo 0}  }
	{ imgInput_data1 int 8 regular {fifo 0 volatile }  }
	{ imgOutput_data4 int 8 regular {fifo 1 volatile }  }
	{ mapX_data2 int 32 regular {fifo 0 volatile }  }
	{ mapY_data3 int 32 regular {fifo 0 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "p_src_mat_rows", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_src_mat_cols", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "imgInput_data1", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "imgOutput_data4", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "mapX_data2", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "mapY_data3", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 25
set portList { 
	{ p_src_mat_rows_dout sc_in sc_lv 32 signal 0 } 
	{ p_src_mat_rows_empty_n sc_in sc_logic 1 signal 0 } 
	{ p_src_mat_rows_read sc_out sc_logic 1 signal 0 } 
	{ p_src_mat_cols_dout sc_in sc_lv 32 signal 1 } 
	{ p_src_mat_cols_empty_n sc_in sc_logic 1 signal 1 } 
	{ p_src_mat_cols_read sc_out sc_logic 1 signal 1 } 
	{ imgInput_data1_dout sc_in sc_lv 8 signal 2 } 
	{ imgInput_data1_empty_n sc_in sc_logic 1 signal 2 } 
	{ imgInput_data1_read sc_out sc_logic 1 signal 2 } 
	{ imgOutput_data4_din sc_out sc_lv 8 signal 3 } 
	{ imgOutput_data4_full_n sc_in sc_logic 1 signal 3 } 
	{ imgOutput_data4_write sc_out sc_logic 1 signal 3 } 
	{ mapX_data2_dout sc_in sc_lv 32 signal 4 } 
	{ mapX_data2_empty_n sc_in sc_logic 1 signal 4 } 
	{ mapX_data2_read sc_out sc_logic 1 signal 4 } 
	{ mapY_data3_dout sc_in sc_lv 32 signal 5 } 
	{ mapY_data3_empty_n sc_in sc_logic 1 signal 5 } 
	{ mapY_data3_read sc_out sc_logic 1 signal 5 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
}
set NewPortList {[ 
	{ "name": "p_src_mat_rows_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_src_mat_rows", "role": "dout" }} , 
 	{ "name": "p_src_mat_rows_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_src_mat_rows", "role": "empty_n" }} , 
 	{ "name": "p_src_mat_rows_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_src_mat_rows", "role": "read" }} , 
 	{ "name": "p_src_mat_cols_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_src_mat_cols", "role": "dout" }} , 
 	{ "name": "p_src_mat_cols_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_src_mat_cols", "role": "empty_n" }} , 
 	{ "name": "p_src_mat_cols_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_src_mat_cols", "role": "read" }} , 
 	{ "name": "imgInput_data1_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "imgInput_data1", "role": "dout" }} , 
 	{ "name": "imgInput_data1_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imgInput_data1", "role": "empty_n" }} , 
 	{ "name": "imgInput_data1_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imgInput_data1", "role": "read" }} , 
 	{ "name": "imgOutput_data4_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "imgOutput_data4", "role": "din" }} , 
 	{ "name": "imgOutput_data4_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imgOutput_data4", "role": "full_n" }} , 
 	{ "name": "imgOutput_data4_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imgOutput_data4", "role": "write" }} , 
 	{ "name": "mapX_data2_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mapX_data2", "role": "dout" }} , 
 	{ "name": "mapX_data2_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mapX_data2", "role": "empty_n" }} , 
 	{ "name": "mapX_data2_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mapX_data2", "role": "read" }} , 
 	{ "name": "mapY_data3_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mapY_data3", "role": "dout" }} , 
 	{ "name": "mapY_data3_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mapY_data3", "role": "empty_n" }} , 
 	{ "name": "mapY_data3_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mapY_data3", "role": "read" }} , 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "31", "32"],
		"CDFG" : "remap_8_1_0_4_0_1080_1920_1_false_2_2_2_2_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "90", "EstimateLatencyMax" : "2109650",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"InputProcess" : [
			{"ID" : "1", "Name" : "remap_8_1_0_4_0_1080_1920_1_false_2_2_2_2_Block_entry1_proc_U0"}],
		"OutputProcess" : [
			{"ID" : "2", "Name" : "xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_U0"}],
		"Port" : [
			{"Name" : "p_src_mat_rows", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "remap_8_1_0_4_0_1080_1920_1_false_2_2_2_2_Block_entry1_proc_U0", "Port" : "p_src_mat_rows"}]},
			{"Name" : "p_src_mat_cols", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "remap_8_1_0_4_0_1080_1920_1_false_2_2_2_2_Block_entry1_proc_U0", "Port" : "p_src_mat_cols"}]},
			{"Name" : "imgInput_data1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_U0", "Port" : "imgInput_data1"}]},
			{"Name" : "imgOutput_data4", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_U0", "Port" : "imgOutput_data4"}]},
			{"Name" : "mapX_data2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_U0", "Port" : "mapX_data2"}]},
			{"Name" : "mapY_data3", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_U0", "Port" : "mapY_data3"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.remap_8_1_0_4_0_1080_1920_1_false_2_2_2_2_Block_entry1_proc_U0", "Parent" : "0",
		"CDFG" : "remap_8_1_0_4_0_1080_1920_1_false_2_2_2_2_Block_entry1_proc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "p_src_mat_rows", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "p_src_mat_rows_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_src_mat_cols", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "p_src_mat_cols_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_U0", "Parent" : "0", "Child" : ["3", "4", "5", "7", "9", "28", "29", "30"],
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
					{"ID" : "9", "SubInstance" : "grp_xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_Pipeline_loop_width_fu_106", "Port" : "imgInput_data1", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "imgOutput_data4", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_Pipeline_loop_width_fu_106", "Port" : "imgOutput_data4", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "mapX_data2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_Pipeline_loop_width_fu_106", "Port" : "mapX_data2", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "mapY_data3", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_Pipeline_loop_width_fu_106", "Port" : "mapY_data3", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : ["1"], "DependentChan" : "31", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I", "DependentProc" : ["1"], "DependentChan" : "32", "DependentChanDepth" : "2", "DependentChanType" : "1"}],
		"Loop" : [
			{"Name" : "loop_height", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "10", "FirstState" : "ap_ST_fsm_state8", "LastState" : ["ap_ST_fsm_state10"], "QuitState" : ["ap_ST_fsm_state8"], "PreState" : ["ap_ST_fsm_state7"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_U0.r1_U", "Parent" : "2"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_U0.r2_U", "Parent" : "2"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_U0.grp_xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_Pipeline_1_fu_94", "Parent" : "2", "Child" : ["6"],
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
	{"ID" : "6", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_U0.grp_xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_Pipeline_1_fu_94.flow_control_loop_pipe_sequential_init_U", "Parent" : "5"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_U0.grp_xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_Pipeline_2_fu_100", "Parent" : "2", "Child" : ["8"],
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
	{"ID" : "8", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_U0.grp_xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_Pipeline_2_fu_100.flow_control_loop_pipe_sequential_init_U", "Parent" : "7"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_U0.grp_xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_Pipeline_loop_width_fu_106", "Parent" : "2", "Child" : ["10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27"],
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
	{"ID" : "10", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_U0.grp_xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_Pipeline_loop_width_fu_106.buf_V_U", "Parent" : "9"},
	{"ID" : "11", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_U0.grp_xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_Pipeline_loop_width_fu_106.buf_V_1_U", "Parent" : "9"},
	{"ID" : "12", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_U0.grp_xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_Pipeline_loop_width_fu_106.buf_V_2_U", "Parent" : "9"},
	{"ID" : "13", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_U0.grp_xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_Pipeline_loop_width_fu_106.buf_V_3_U", "Parent" : "9"},
	{"ID" : "14", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_U0.grp_xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_Pipeline_loop_width_fu_106.fmul_32ns_32ns_32_4_max_dsp_1_U85", "Parent" : "9"},
	{"ID" : "15", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_U0.grp_xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_Pipeline_loop_width_fu_106.fmul_32ns_32ns_32_4_max_dsp_1_U86", "Parent" : "9"},
	{"ID" : "16", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_U0.grp_xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_Pipeline_loop_width_fu_106.fcmp_32ns_32ns_1_2_no_dsp_1_U87", "Parent" : "9"},
	{"ID" : "17", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_U0.grp_xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_Pipeline_loop_width_fu_106.fcmp_32ns_32ns_1_2_no_dsp_1_U88", "Parent" : "9"},
	{"ID" : "18", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_U0.grp_xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_Pipeline_loop_width_fu_106.mul_4s_11ns_13_1_1_U89", "Parent" : "9"},
	{"ID" : "19", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_U0.grp_xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_Pipeline_loop_width_fu_106.mul_4s_11ns_13_1_1_U90", "Parent" : "9"},
	{"ID" : "20", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_U0.grp_xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_Pipeline_loop_width_fu_106.mul_6ns_5ns_11_1_1_U91", "Parent" : "9"},
	{"ID" : "21", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_U0.grp_xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_Pipeline_loop_width_fu_106.mul_6ns_5ns_11_1_1_U92", "Parent" : "9"},
	{"ID" : "22", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_U0.grp_xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_Pipeline_loop_width_fu_106.mul_5ns_5ns_10_1_1_U93", "Parent" : "9"},
	{"ID" : "23", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_U0.grp_xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_Pipeline_loop_width_fu_106.mul_mul_11ns_8ns_18_4_1_U94", "Parent" : "9"},
	{"ID" : "24", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_U0.grp_xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_Pipeline_loop_width_fu_106.mul_mul_11ns_8ns_18_4_1_U95", "Parent" : "9"},
	{"ID" : "25", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_U0.grp_xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_Pipeline_loop_width_fu_106.ama_submuladd_11ns_11ns_8ns_18ns_18_4_1_U96", "Parent" : "9"},
	{"ID" : "26", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_U0.grp_xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_Pipeline_loop_width_fu_106.mac_muladd_10ns_8ns_18ns_18_4_1_U97", "Parent" : "9"},
	{"ID" : "27", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_U0.grp_xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_Pipeline_loop_width_fu_106.flow_control_loop_pipe_sequential_init_U", "Parent" : "9"},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_U0.sitofp_32s_32_5_no_dsp_1_U127", "Parent" : "2"},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_U0.sitofp_32s_32_5_no_dsp_1_U128", "Parent" : "2"},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_U0.mul_2ns_11ns_12_1_1_U129", "Parent" : "2"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.rows_loc_channel_U", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.cols_loc_channel_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	remap_8_1_0_4_0_1080_1920_1_false_2_2_2_2_s {
		p_src_mat_rows {Type I LastRead 0 FirstWrite -1}
		p_src_mat_cols {Type I LastRead 0 FirstWrite -1}
		imgInput_data1 {Type I LastRead 1 FirstWrite -1}
		imgOutput_data4 {Type O LastRead -1 FirstWrite 13}
		mapX_data2 {Type I LastRead 1 FirstWrite -1}
		mapY_data3 {Type I LastRead 1 FirstWrite -1}}
	remap_8_1_0_4_0_1080_1920_1_false_2_2_2_2_Block_entry1_proc {
		p_src_mat_rows {Type I LastRead 0 FirstWrite -1}
		p_src_mat_cols {Type I LastRead 0 FirstWrite -1}}
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
	{"Name" : "Latency", "Min" : "90", "Max" : "2109650"}
	, {"Name" : "Interval", "Min" : "90", "Max" : "2109650"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	p_src_mat_rows { ap_fifo {  { p_src_mat_rows_dout fifo_port_we 0 32 }  { p_src_mat_rows_empty_n fifo_status 0 1 }  { p_src_mat_rows_read fifo_data 1 1 } } }
	p_src_mat_cols { ap_fifo {  { p_src_mat_cols_dout fifo_port_we 0 32 }  { p_src_mat_cols_empty_n fifo_status 0 1 }  { p_src_mat_cols_read fifo_data 1 1 } } }
	imgInput_data1 { ap_fifo {  { imgInput_data1_dout fifo_port_we 0 8 }  { imgInput_data1_empty_n fifo_status 0 1 }  { imgInput_data1_read fifo_data 1 1 } } }
	imgOutput_data4 { ap_fifo {  { imgOutput_data4_din fifo_port_we 1 8 }  { imgOutput_data4_full_n fifo_status 0 1 }  { imgOutput_data4_write fifo_data 1 1 } } }
	mapX_data2 { ap_fifo {  { mapX_data2_dout fifo_port_we 0 32 }  { mapX_data2_empty_n fifo_status 0 1 }  { mapX_data2_read fifo_data 1 1 } } }
	mapY_data3 { ap_fifo {  { mapY_data3_dout fifo_port_we 0 32 }  { mapY_data3_empty_n fifo_status 0 1 }  { mapY_data3_read fifo_data 1 1 } } }
}
