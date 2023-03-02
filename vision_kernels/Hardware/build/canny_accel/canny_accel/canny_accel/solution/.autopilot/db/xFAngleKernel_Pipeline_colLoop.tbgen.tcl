set moduleName xFAngleKernel_Pipeline_colLoop
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
set C_modelName {xFAngleKernel_Pipeline_colLoop}
set C_modelType { void 0 }
set C_modelArgList {
	{ imgwidth_load int 16 regular  }
	{ gradx2_mat_data4 int 16 regular {fifo 0 volatile }  }
	{ grady2_mat_data7 int 16 regular {fifo 0 volatile }  }
	{ phase_mat_data9 int 8 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "imgwidth_load", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "gradx2_mat_data4", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "grady2_mat_data7", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "phase_mat_data9", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 22
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ gradx2_mat_data4_dout sc_in sc_lv 16 signal 1 } 
	{ gradx2_mat_data4_num_data_valid sc_in sc_lv 2 signal 1 } 
	{ gradx2_mat_data4_fifo_cap sc_in sc_lv 2 signal 1 } 
	{ gradx2_mat_data4_empty_n sc_in sc_logic 1 signal 1 } 
	{ gradx2_mat_data4_read sc_out sc_logic 1 signal 1 } 
	{ grady2_mat_data7_dout sc_in sc_lv 16 signal 2 } 
	{ grady2_mat_data7_num_data_valid sc_in sc_lv 2 signal 2 } 
	{ grady2_mat_data7_fifo_cap sc_in sc_lv 2 signal 2 } 
	{ grady2_mat_data7_empty_n sc_in sc_logic 1 signal 2 } 
	{ grady2_mat_data7_read sc_out sc_logic 1 signal 2 } 
	{ phase_mat_data9_din sc_out sc_lv 8 signal 3 } 
	{ phase_mat_data9_num_data_valid sc_in sc_lv 14 signal 3 } 
	{ phase_mat_data9_fifo_cap sc_in sc_lv 14 signal 3 } 
	{ phase_mat_data9_full_n sc_in sc_logic 1 signal 3 } 
	{ phase_mat_data9_write sc_out sc_logic 1 signal 3 } 
	{ imgwidth_load sc_in sc_lv 16 signal 0 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "gradx2_mat_data4_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "gradx2_mat_data4", "role": "dout" }} , 
 	{ "name": "gradx2_mat_data4_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gradx2_mat_data4", "role": "num_data_valid" }} , 
 	{ "name": "gradx2_mat_data4_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gradx2_mat_data4", "role": "fifo_cap" }} , 
 	{ "name": "gradx2_mat_data4_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gradx2_mat_data4", "role": "empty_n" }} , 
 	{ "name": "gradx2_mat_data4_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gradx2_mat_data4", "role": "read" }} , 
 	{ "name": "grady2_mat_data7_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "grady2_mat_data7", "role": "dout" }} , 
 	{ "name": "grady2_mat_data7_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grady2_mat_data7", "role": "num_data_valid" }} , 
 	{ "name": "grady2_mat_data7_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grady2_mat_data7", "role": "fifo_cap" }} , 
 	{ "name": "grady2_mat_data7_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grady2_mat_data7", "role": "empty_n" }} , 
 	{ "name": "grady2_mat_data7_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grady2_mat_data7", "role": "read" }} , 
 	{ "name": "phase_mat_data9_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "phase_mat_data9", "role": "din" }} , 
 	{ "name": "phase_mat_data9_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "phase_mat_data9", "role": "num_data_valid" }} , 
 	{ "name": "phase_mat_data9_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "phase_mat_data9", "role": "fifo_cap" }} , 
 	{ "name": "phase_mat_data9_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "phase_mat_data9", "role": "full_n" }} , 
 	{ "name": "phase_mat_data9_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "phase_mat_data9", "role": "write" }} , 
 	{ "name": "imgwidth_load", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "imgwidth_load", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "xFAngleKernel_Pipeline_colLoop",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1926", "EstimateLatencyMax" : "1926",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "imgwidth_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "gradx2_mat_data4", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "gradx2_mat_data4_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "grady2_mat_data7", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "grady2_mat_data7_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "phase_mat_data9", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "phase_mat_data9_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "colLoop", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter5", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter5", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_17s_14ns_32_4_1_U181", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	xFAngleKernel_Pipeline_colLoop {
		imgwidth_load {Type I LastRead 0 FirstWrite -1}
		gradx2_mat_data4 {Type I LastRead 1 FirstWrite -1}
		grady2_mat_data7 {Type I LastRead 1 FirstWrite -1}
		phase_mat_data9 {Type O LastRead -1 FirstWrite 5}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1926", "Max" : "1926"}
	, {"Name" : "Interval", "Min" : "1926", "Max" : "1926"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	imgwidth_load { ap_none {  { imgwidth_load in_data 0 16 } } }
	gradx2_mat_data4 { ap_fifo {  { gradx2_mat_data4_dout fifo_port_we 0 16 }  { gradx2_mat_data4_num_data_valid fifo_status_num_data_valid 0 2 }  { gradx2_mat_data4_fifo_cap fifo_update 0 2 }  { gradx2_mat_data4_empty_n fifo_status 0 1 }  { gradx2_mat_data4_read fifo_data 1 1 } } }
	grady2_mat_data7 { ap_fifo {  { grady2_mat_data7_dout fifo_port_we 0 16 }  { grady2_mat_data7_num_data_valid fifo_status_num_data_valid 0 2 }  { grady2_mat_data7_fifo_cap fifo_update 0 2 }  { grady2_mat_data7_empty_n fifo_status 0 1 }  { grady2_mat_data7_read fifo_data 1 1 } } }
	phase_mat_data9 { ap_fifo {  { phase_mat_data9_din fifo_port_we 1 8 }  { phase_mat_data9_num_data_valid fifo_status_num_data_valid 0 14 }  { phase_mat_data9_fifo_cap fifo_update 0 14 }  { phase_mat_data9_full_n fifo_status 0 1 }  { phase_mat_data9_write fifo_data 1 1 } } }
}
