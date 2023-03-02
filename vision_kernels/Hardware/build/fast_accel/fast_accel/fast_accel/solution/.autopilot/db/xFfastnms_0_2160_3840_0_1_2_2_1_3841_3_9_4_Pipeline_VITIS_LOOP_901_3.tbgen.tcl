set moduleName xFfastnms_0_2160_3840_0_1_2_2_1_3841_3_9_4_Pipeline_VITIS_LOOP_901_3
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
set C_modelName {xFfastnms<0, 2160, 3840, 0, 1, 2, 2, 1, 3841, 3, 9>4_Pipeline_VITIS_LOOP_901_3}
set C_modelType { void 0 }
set C_modelArgList {
	{ img_width_load int 16 regular  }
	{ buf_V int 8 regular {array 3840 { 1 0 } 1 1 }  }
	{ buf_V_1 int 8 regular {array 3840 { 1 3 } 1 1 }  }
	{ buf_V_2 int 8 regular {array 3840 { 1 3 } 1 1 }  }
	{ row_ind_V_1_cast int 2 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "img_width_load", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "buf_V", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "buf_V_1", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "buf_V_2", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "row_ind_V_1_cast", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 21
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ img_width_load sc_in sc_lv 16 signal 0 } 
	{ buf_V_address0 sc_out sc_lv 12 signal 1 } 
	{ buf_V_ce0 sc_out sc_logic 1 signal 1 } 
	{ buf_V_q0 sc_in sc_lv 8 signal 1 } 
	{ buf_V_address1 sc_out sc_lv 12 signal 1 } 
	{ buf_V_ce1 sc_out sc_logic 1 signal 1 } 
	{ buf_V_we1 sc_out sc_logic 1 signal 1 } 
	{ buf_V_d1 sc_out sc_lv 8 signal 1 } 
	{ buf_V_1_address0 sc_out sc_lv 12 signal 2 } 
	{ buf_V_1_ce0 sc_out sc_logic 1 signal 2 } 
	{ buf_V_1_q0 sc_in sc_lv 8 signal 2 } 
	{ buf_V_2_address0 sc_out sc_lv 12 signal 3 } 
	{ buf_V_2_ce0 sc_out sc_logic 1 signal 3 } 
	{ buf_V_2_q0 sc_in sc_lv 8 signal 3 } 
	{ row_ind_V_1_cast sc_in sc_lv 2 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "img_width_load", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "img_width_load", "role": "default" }} , 
 	{ "name": "buf_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "buf_V", "role": "address0" }} , 
 	{ "name": "buf_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_V", "role": "ce0" }} , 
 	{ "name": "buf_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buf_V", "role": "q0" }} , 
 	{ "name": "buf_V_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "buf_V", "role": "address1" }} , 
 	{ "name": "buf_V_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_V", "role": "ce1" }} , 
 	{ "name": "buf_V_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_V", "role": "we1" }} , 
 	{ "name": "buf_V_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buf_V", "role": "d1" }} , 
 	{ "name": "buf_V_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "buf_V_1", "role": "address0" }} , 
 	{ "name": "buf_V_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_V_1", "role": "ce0" }} , 
 	{ "name": "buf_V_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buf_V_1", "role": "q0" }} , 
 	{ "name": "buf_V_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "buf_V_2", "role": "address0" }} , 
 	{ "name": "buf_V_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_V_2", "role": "ce0" }} , 
 	{ "name": "buf_V_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buf_V_2", "role": "q0" }} , 
 	{ "name": "row_ind_V_1_cast", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "row_ind_V_1_cast", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "xFfastnms_0_2160_3840_0_1_2_2_1_3841_3_9_4_Pipeline_VITIS_LOOP_901_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3843", "EstimateLatencyMax" : "3843",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "img_width_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "buf_V", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "buf_V_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buf_V_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "row_ind_V_1_cast", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_901_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_8_1_1_U156", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	xFfastnms_0_2160_3840_0_1_2_2_1_3841_3_9_4_Pipeline_VITIS_LOOP_901_3 {
		img_width_load {Type I LastRead 0 FirstWrite -1}
		buf_V {Type IO LastRead 0 FirstWrite 1}
		buf_V_1 {Type I LastRead 0 FirstWrite -1}
		buf_V_2 {Type I LastRead 0 FirstWrite -1}
		row_ind_V_1_cast {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3843", "Max" : "3843"}
	, {"Name" : "Interval", "Min" : "3843", "Max" : "3843"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	img_width_load { ap_none {  { img_width_load in_data 0 16 } } }
	buf_V { ap_memory {  { buf_V_address0 mem_address 1 12 }  { buf_V_ce0 mem_ce 1 1 }  { buf_V_q0 in_data 0 8 }  { buf_V_address1 MemPortADDR2 1 12 }  { buf_V_ce1 MemPortCE2 1 1 }  { buf_V_we1 MemPortWE2 1 1 }  { buf_V_d1 MemPortDIN2 1 8 } } }
	buf_V_1 { ap_memory {  { buf_V_1_address0 mem_address 1 12 }  { buf_V_1_ce0 mem_ce 1 1 }  { buf_V_1_q0 in_data 0 8 } } }
	buf_V_2 { ap_memory {  { buf_V_2_address0 mem_address 1 12 }  { buf_V_2_ce0 mem_ce 1 1 }  { buf_V_2_q0 in_data 0 8 } } }
	row_ind_V_1_cast { ap_none {  { row_ind_V_1_cast in_data 0 2 } } }
}
