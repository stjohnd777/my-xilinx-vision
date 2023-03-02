set moduleName entry_proc16
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 1
set ProfileFlag 1
set StallSigGenFlag 1
set isEnableWaveformDebug 1
set hasInterrupt 0
set C_modelName {entry_proc16}
set C_modelType { void 0 }
set C_modelArgList {
	{ p_lowthreshold int 8 regular  }
	{ p_lowthreshold_c int 8 regular {fifo 1}  }
	{ p_highthreshold int 8 regular  }
	{ p_highthreshold_c int 8 regular {fifo 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "p_lowthreshold", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_lowthreshold_c", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_highthreshold", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_highthreshold_c", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 25
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ start_full_n sc_in sc_logic 1 signal -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ start_out sc_out sc_logic 1 signal -1 } 
	{ start_write sc_out sc_logic 1 signal -1 } 
	{ p_lowthreshold sc_in sc_lv 8 signal 0 } 
	{ p_lowthreshold_c_din sc_out sc_lv 8 signal 1 } 
	{ p_lowthreshold_c_num_data_valid sc_in sc_lv 4 signal 1 } 
	{ p_lowthreshold_c_fifo_cap sc_in sc_lv 4 signal 1 } 
	{ p_lowthreshold_c_full_n sc_in sc_logic 1 signal 1 } 
	{ p_lowthreshold_c_write sc_out sc_logic 1 signal 1 } 
	{ p_highthreshold sc_in sc_lv 8 signal 2 } 
	{ p_highthreshold_c_din sc_out sc_lv 8 signal 3 } 
	{ p_highthreshold_c_num_data_valid sc_in sc_lv 4 signal 3 } 
	{ p_highthreshold_c_fifo_cap sc_in sc_lv 4 signal 3 } 
	{ p_highthreshold_c_full_n sc_in sc_logic 1 signal 3 } 
	{ p_highthreshold_c_write sc_out sc_logic 1 signal 3 } 
	{ ap_ext_blocking_n sc_out sc_logic 1 signal -1 } 
	{ ap_str_blocking_n sc_out sc_logic 1 signal -1 } 
	{ ap_int_blocking_n sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "start_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_full_n", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "start_out", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_out", "role": "default" }} , 
 	{ "name": "start_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_write", "role": "default" }} , 
 	{ "name": "p_lowthreshold", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_lowthreshold", "role": "default" }} , 
 	{ "name": "p_lowthreshold_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_lowthreshold_c", "role": "din" }} , 
 	{ "name": "p_lowthreshold_c_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "p_lowthreshold_c", "role": "num_data_valid" }} , 
 	{ "name": "p_lowthreshold_c_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "p_lowthreshold_c", "role": "fifo_cap" }} , 
 	{ "name": "p_lowthreshold_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_lowthreshold_c", "role": "full_n" }} , 
 	{ "name": "p_lowthreshold_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_lowthreshold_c", "role": "write" }} , 
 	{ "name": "p_highthreshold", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_highthreshold", "role": "default" }} , 
 	{ "name": "p_highthreshold_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_highthreshold_c", "role": "din" }} , 
 	{ "name": "p_highthreshold_c_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "p_highthreshold_c", "role": "num_data_valid" }} , 
 	{ "name": "p_highthreshold_c_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "p_highthreshold_c", "role": "fifo_cap" }} , 
 	{ "name": "p_highthreshold_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_highthreshold_c", "role": "full_n" }} , 
 	{ "name": "p_highthreshold_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_highthreshold_c", "role": "write" }} , 
 	{ "name": "ap_ext_blocking_n", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_ext_blocking_n", "role": "default" }} , 
 	{ "name": "ap_str_blocking_n", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_str_blocking_n", "role": "default" }} , 
 	{ "name": "ap_int_blocking_n", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_int_blocking_n", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "entry_proc16",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
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
			{"Name" : "p_lowthreshold", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_lowthreshold_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "6", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "p_lowthreshold_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_highthreshold", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_highthreshold_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "6", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "p_highthreshold_c_blk_n", "Type" : "RtlSignal"}]}]}]}


set ArgLastReadFirstWriteLatency {
	entry_proc16 {
		p_lowthreshold {Type I LastRead 0 FirstWrite -1}
		p_lowthreshold_c {Type O LastRead -1 FirstWrite 0}
		p_highthreshold {Type I LastRead 0 FirstWrite -1}
		p_highthreshold_c {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "0", "Max" : "0"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	p_lowthreshold { ap_none {  { p_lowthreshold in_data 0 8 } } }
	p_lowthreshold_c { ap_fifo {  { p_lowthreshold_c_din fifo_port_we 1 8 }  { p_lowthreshold_c_num_data_valid fifo_status_num_data_valid 0 4 }  { p_lowthreshold_c_fifo_cap fifo_update 0 4 }  { p_lowthreshold_c_full_n fifo_status 0 1 }  { p_lowthreshold_c_write fifo_data 1 1 } } }
	p_highthreshold { ap_none {  { p_highthreshold in_data 0 8 } } }
	p_highthreshold_c { ap_fifo {  { p_highthreshold_c_din fifo_port_we 1 8 }  { p_highthreshold_c_num_data_valid fifo_status_num_data_valid 0 4 }  { p_highthreshold_c_fifo_cap fifo_update 0 4 }  { p_highthreshold_c_full_n fifo_status 0 1 }  { p_highthreshold_c_write fifo_data 1 1 } } }
}
