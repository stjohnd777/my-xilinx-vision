set moduleName xFfastnms_0_2160_3840_0_1_2_2_1_3841_3_9_4_Pipeline_VITIS_LOOP_876_1
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
set C_modelName {xFfastnms<0, 2160, 3840, 0, 1, 2, 2, 1, 3841, 3, 9>4_Pipeline_VITIS_LOOP_876_1}
set C_modelType { void 0 }
set C_modelArgList {
	{ row_ind_V_2_out int 13 regular {pointer 1}  }
	{ row_ind_V_1_out int 13 regular {pointer 1}  }
	{ row_ind_V_out int 13 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "row_ind_V_2_out", "interface" : "wire", "bitwidth" : 13, "direction" : "WRITEONLY"} , 
 	{ "Name" : "row_ind_V_1_out", "interface" : "wire", "bitwidth" : 13, "direction" : "WRITEONLY"} , 
 	{ "Name" : "row_ind_V_out", "interface" : "wire", "bitwidth" : 13, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 15
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ row_ind_V_2_out sc_out sc_lv 13 signal 0 } 
	{ row_ind_V_2_out_ap_vld sc_out sc_logic 1 outvld 0 } 
	{ row_ind_V_1_out sc_out sc_lv 13 signal 1 } 
	{ row_ind_V_1_out_ap_vld sc_out sc_logic 1 outvld 1 } 
	{ row_ind_V_out sc_out sc_lv 13 signal 2 } 
	{ row_ind_V_out_ap_vld sc_out sc_logic 1 outvld 2 } 
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
 	{ "name": "row_ind_V_2_out", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "row_ind_V_2_out", "role": "default" }} , 
 	{ "name": "row_ind_V_2_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "row_ind_V_2_out", "role": "ap_vld" }} , 
 	{ "name": "row_ind_V_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "row_ind_V_1_out", "role": "default" }} , 
 	{ "name": "row_ind_V_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "row_ind_V_1_out", "role": "ap_vld" }} , 
 	{ "name": "row_ind_V_out", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "row_ind_V_out", "role": "default" }} , 
 	{ "name": "row_ind_V_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "row_ind_V_out", "role": "ap_vld" }} , 
 	{ "name": "ap_ext_blocking_n", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_ext_blocking_n", "role": "default" }} , 
 	{ "name": "ap_str_blocking_n", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_str_blocking_n", "role": "default" }} , 
 	{ "name": "ap_int_blocking_n", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_int_blocking_n", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "xFfastnms_0_2160_3840_0_1_2_2_1_3841_3_9_4_Pipeline_VITIS_LOOP_876_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "5", "EstimateLatencyMax" : "5",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "row_ind_V_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "row_ind_V_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "row_ind_V_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_876_1", "PipelineType" : "NotSupport"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	xFfastnms_0_2160_3840_0_1_2_2_1_3841_3_9_4_Pipeline_VITIS_LOOP_876_1 {
		row_ind_V_2_out {Type O LastRead -1 FirstWrite 0}
		row_ind_V_1_out {Type O LastRead -1 FirstWrite 0}
		row_ind_V_out {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "5", "Max" : "5"}
	, {"Name" : "Interval", "Min" : "5", "Max" : "5"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	row_ind_V_2_out { ap_vld {  { row_ind_V_2_out out_data 1 13 }  { row_ind_V_2_out_ap_vld out_vld 1 1 } } }
	row_ind_V_1_out { ap_vld {  { row_ind_V_1_out out_data 1 13 }  { row_ind_V_1_out_ap_vld out_vld 1 1 } } }
	row_ind_V_out { ap_vld {  { row_ind_V_out out_data 1 13 }  { row_ind_V_out_ap_vld out_vld 1 1 } } }
}