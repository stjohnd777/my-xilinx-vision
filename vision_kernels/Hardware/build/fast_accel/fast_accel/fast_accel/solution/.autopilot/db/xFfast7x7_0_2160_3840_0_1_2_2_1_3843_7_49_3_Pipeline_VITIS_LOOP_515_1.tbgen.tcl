set moduleName xFfast7x7_0_2160_3840_0_1_2_2_1_3843_7_49_3_Pipeline_VITIS_LOOP_515_1
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set C_modelName {xFfast7x7<0, 2160, 3840, 0, 1, 2, 2, 1, 3843, 7, 49>3_Pipeline_VITIS_LOOP_515_1}
set C_modelType { void 0 }
set C_modelArgList {
	{ row_ind_V_15_out int 13 regular {pointer 1}  }
	{ row_ind_V_14_out int 13 regular {pointer 1}  }
	{ row_ind_V_13_out int 13 regular {pointer 1}  }
	{ row_ind_V_12_out int 13 regular {pointer 1}  }
	{ row_ind_V_11_out int 13 regular {pointer 1}  }
	{ row_ind_V_10_out int 13 regular {pointer 1}  }
	{ row_ind_V_out int 13 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "row_ind_V_15_out", "interface" : "wire", "bitwidth" : 13, "direction" : "WRITEONLY"} , 
 	{ "Name" : "row_ind_V_14_out", "interface" : "wire", "bitwidth" : 13, "direction" : "WRITEONLY"} , 
 	{ "Name" : "row_ind_V_13_out", "interface" : "wire", "bitwidth" : 13, "direction" : "WRITEONLY"} , 
 	{ "Name" : "row_ind_V_12_out", "interface" : "wire", "bitwidth" : 13, "direction" : "WRITEONLY"} , 
 	{ "Name" : "row_ind_V_11_out", "interface" : "wire", "bitwidth" : 13, "direction" : "WRITEONLY"} , 
 	{ "Name" : "row_ind_V_10_out", "interface" : "wire", "bitwidth" : 13, "direction" : "WRITEONLY"} , 
 	{ "Name" : "row_ind_V_out", "interface" : "wire", "bitwidth" : 13, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 20
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ row_ind_V_15_out sc_out sc_lv 13 signal 0 } 
	{ row_ind_V_15_out_ap_vld sc_out sc_logic 1 outvld 0 } 
	{ row_ind_V_14_out sc_out sc_lv 13 signal 1 } 
	{ row_ind_V_14_out_ap_vld sc_out sc_logic 1 outvld 1 } 
	{ row_ind_V_13_out sc_out sc_lv 13 signal 2 } 
	{ row_ind_V_13_out_ap_vld sc_out sc_logic 1 outvld 2 } 
	{ row_ind_V_12_out sc_out sc_lv 13 signal 3 } 
	{ row_ind_V_12_out_ap_vld sc_out sc_logic 1 outvld 3 } 
	{ row_ind_V_11_out sc_out sc_lv 13 signal 4 } 
	{ row_ind_V_11_out_ap_vld sc_out sc_logic 1 outvld 4 } 
	{ row_ind_V_10_out sc_out sc_lv 13 signal 5 } 
	{ row_ind_V_10_out_ap_vld sc_out sc_logic 1 outvld 5 } 
	{ row_ind_V_out sc_out sc_lv 13 signal 6 } 
	{ row_ind_V_out_ap_vld sc_out sc_logic 1 outvld 6 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "row_ind_V_15_out", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "row_ind_V_15_out", "role": "default" }} , 
 	{ "name": "row_ind_V_15_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "row_ind_V_15_out", "role": "ap_vld" }} , 
 	{ "name": "row_ind_V_14_out", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "row_ind_V_14_out", "role": "default" }} , 
 	{ "name": "row_ind_V_14_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "row_ind_V_14_out", "role": "ap_vld" }} , 
 	{ "name": "row_ind_V_13_out", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "row_ind_V_13_out", "role": "default" }} , 
 	{ "name": "row_ind_V_13_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "row_ind_V_13_out", "role": "ap_vld" }} , 
 	{ "name": "row_ind_V_12_out", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "row_ind_V_12_out", "role": "default" }} , 
 	{ "name": "row_ind_V_12_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "row_ind_V_12_out", "role": "ap_vld" }} , 
 	{ "name": "row_ind_V_11_out", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "row_ind_V_11_out", "role": "default" }} , 
 	{ "name": "row_ind_V_11_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "row_ind_V_11_out", "role": "ap_vld" }} , 
 	{ "name": "row_ind_V_10_out", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "row_ind_V_10_out", "role": "default" }} , 
 	{ "name": "row_ind_V_10_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "row_ind_V_10_out", "role": "ap_vld" }} , 
 	{ "name": "row_ind_V_out", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "row_ind_V_out", "role": "default" }} , 
 	{ "name": "row_ind_V_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "row_ind_V_out", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "xFfast7x7_0_2160_3840_0_1_2_2_1_3843_7_49_3_Pipeline_VITIS_LOOP_515_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "9", "EstimateLatencyMax" : "9",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "row_ind_V_15_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "row_ind_V_14_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "row_ind_V_13_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "row_ind_V_12_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "row_ind_V_11_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "row_ind_V_10_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "row_ind_V_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_515_1", "PipelineType" : "NotSupport"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	xFfast7x7_0_2160_3840_0_1_2_2_1_3843_7_49_3_Pipeline_VITIS_LOOP_515_1 {
		row_ind_V_15_out {Type O LastRead -1 FirstWrite 0}
		row_ind_V_14_out {Type O LastRead -1 FirstWrite 0}
		row_ind_V_13_out {Type O LastRead -1 FirstWrite 0}
		row_ind_V_12_out {Type O LastRead -1 FirstWrite 0}
		row_ind_V_11_out {Type O LastRead -1 FirstWrite 0}
		row_ind_V_10_out {Type O LastRead -1 FirstWrite 0}
		row_ind_V_out {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "9", "Max" : "9"}
	, {"Name" : "Interval", "Min" : "9", "Max" : "9"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	row_ind_V_15_out { ap_vld {  { row_ind_V_15_out out_data 1 13 }  { row_ind_V_15_out_ap_vld out_vld 1 1 } } }
	row_ind_V_14_out { ap_vld {  { row_ind_V_14_out out_data 1 13 }  { row_ind_V_14_out_ap_vld out_vld 1 1 } } }
	row_ind_V_13_out { ap_vld {  { row_ind_V_13_out out_data 1 13 }  { row_ind_V_13_out_ap_vld out_vld 1 1 } } }
	row_ind_V_12_out { ap_vld {  { row_ind_V_12_out out_data 1 13 }  { row_ind_V_12_out_ap_vld out_vld 1 1 } } }
	row_ind_V_11_out { ap_vld {  { row_ind_V_11_out out_data 1 13 }  { row_ind_V_11_out_ap_vld out_vld 1 1 } } }
	row_ind_V_10_out { ap_vld {  { row_ind_V_10_out out_data 1 13 }  { row_ind_V_10_out_ap_vld out_vld 1 1 } } }
	row_ind_V_out { ap_vld {  { row_ind_V_out out_data 1 13 }  { row_ind_V_out_ap_vld out_vld 1 1 } } }
}
