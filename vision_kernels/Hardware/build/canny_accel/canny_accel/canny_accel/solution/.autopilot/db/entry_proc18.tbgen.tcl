set moduleName entry_proc18
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 1
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set C_modelName {entry_proc18}
set C_modelType { void 0 }
set C_modelArgList {
	{ img_out int 64 regular  }
	{ img_out_c int 64 regular {fifo 1}  }
	{ low_threshold int 32 regular  }
	{ low_threshold_c int 32 regular {fifo 1}  }
	{ high_threshold int 32 regular  }
	{ high_threshold_c int 32 regular {fifo 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "img_out", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "img_out_c", "interface" : "fifo", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "low_threshold", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "low_threshold_c", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "high_threshold", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "high_threshold_c", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 28
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
	{ img_out sc_in sc_lv 64 signal 0 } 
	{ img_out_c_din sc_out sc_lv 64 signal 1 } 
	{ img_out_c_num_data_valid sc_in sc_lv 4 signal 1 } 
	{ img_out_c_fifo_cap sc_in sc_lv 4 signal 1 } 
	{ img_out_c_full_n sc_in sc_logic 1 signal 1 } 
	{ img_out_c_write sc_out sc_logic 1 signal 1 } 
	{ low_threshold sc_in sc_lv 32 signal 2 } 
	{ low_threshold_c_din sc_out sc_lv 32 signal 3 } 
	{ low_threshold_c_num_data_valid sc_in sc_lv 3 signal 3 } 
	{ low_threshold_c_fifo_cap sc_in sc_lv 3 signal 3 } 
	{ low_threshold_c_full_n sc_in sc_logic 1 signal 3 } 
	{ low_threshold_c_write sc_out sc_logic 1 signal 3 } 
	{ high_threshold sc_in sc_lv 32 signal 4 } 
	{ high_threshold_c_din sc_out sc_lv 32 signal 5 } 
	{ high_threshold_c_num_data_valid sc_in sc_lv 3 signal 5 } 
	{ high_threshold_c_fifo_cap sc_in sc_lv 3 signal 5 } 
	{ high_threshold_c_full_n sc_in sc_logic 1 signal 5 } 
	{ high_threshold_c_write sc_out sc_logic 1 signal 5 } 
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
 	{ "name": "img_out", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "img_out", "role": "default" }} , 
 	{ "name": "img_out_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "img_out_c", "role": "din" }} , 
 	{ "name": "img_out_c_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "img_out_c", "role": "num_data_valid" }} , 
 	{ "name": "img_out_c_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "img_out_c", "role": "fifo_cap" }} , 
 	{ "name": "img_out_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_out_c", "role": "full_n" }} , 
 	{ "name": "img_out_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_out_c", "role": "write" }} , 
 	{ "name": "low_threshold", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "low_threshold", "role": "default" }} , 
 	{ "name": "low_threshold_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "low_threshold_c", "role": "din" }} , 
 	{ "name": "low_threshold_c_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "low_threshold_c", "role": "num_data_valid" }} , 
 	{ "name": "low_threshold_c_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "low_threshold_c", "role": "fifo_cap" }} , 
 	{ "name": "low_threshold_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "low_threshold_c", "role": "full_n" }} , 
 	{ "name": "low_threshold_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "low_threshold_c", "role": "write" }} , 
 	{ "name": "high_threshold", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "high_threshold", "role": "default" }} , 
 	{ "name": "high_threshold_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "high_threshold_c", "role": "din" }} , 
 	{ "name": "high_threshold_c_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "high_threshold_c", "role": "num_data_valid" }} , 
 	{ "name": "high_threshold_c_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "high_threshold_c", "role": "fifo_cap" }} , 
 	{ "name": "high_threshold_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "high_threshold_c", "role": "full_n" }} , 
 	{ "name": "high_threshold_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "high_threshold_c", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "entry_proc18",
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
			{"Name" : "img_out", "Type" : "None", "Direction" : "I"},
			{"Name" : "img_out_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "5", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "img_out_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "low_threshold", "Type" : "None", "Direction" : "I"},
			{"Name" : "low_threshold_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "low_threshold_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "high_threshold", "Type" : "None", "Direction" : "I"},
			{"Name" : "high_threshold_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "high_threshold_c_blk_n", "Type" : "RtlSignal"}]}]}]}


set ArgLastReadFirstWriteLatency {
	entry_proc18 {
		img_out {Type I LastRead 0 FirstWrite -1}
		img_out_c {Type O LastRead -1 FirstWrite 0}
		low_threshold {Type I LastRead 0 FirstWrite -1}
		low_threshold_c {Type O LastRead -1 FirstWrite 0}
		high_threshold {Type I LastRead 0 FirstWrite -1}
		high_threshold_c {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "0", "Max" : "0"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	img_out { ap_none {  { img_out in_data 0 64 } } }
	img_out_c { ap_fifo {  { img_out_c_din fifo_port_we 1 64 }  { img_out_c_num_data_valid fifo_status_num_data_valid 0 4 }  { img_out_c_fifo_cap fifo_update 0 4 }  { img_out_c_full_n fifo_status 0 1 }  { img_out_c_write fifo_data 1 1 } } }
	low_threshold { ap_none {  { low_threshold in_data 0 32 } } }
	low_threshold_c { ap_fifo {  { low_threshold_c_din fifo_port_we 1 32 }  { low_threshold_c_num_data_valid fifo_status_num_data_valid 0 3 }  { low_threshold_c_fifo_cap fifo_update 0 3 }  { low_threshold_c_full_n fifo_status 0 1 }  { low_threshold_c_write fifo_data 1 1 } } }
	high_threshold { ap_none {  { high_threshold in_data 0 32 } } }
	high_threshold_c { ap_fifo {  { high_threshold_c_din fifo_port_we 1 32 }  { high_threshold_c_num_data_valid fifo_status_num_data_valid 0 3 }  { high_threshold_c_fifo_cap fifo_update 0 3 }  { high_threshold_c_full_n fifo_status 0 1 }  { high_threshold_c_write fifo_data 1 1 } } }
}
