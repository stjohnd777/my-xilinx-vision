set moduleName xFSuppression3x3_Pipeline_bufColLoop
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
set C_modelName {xFSuppression3x3_Pipeline_bufColLoop}
set C_modelType { void 0 }
set C_modelArgList {
	{ imgwidth_load int 16 regular  }
	{ angle_V int 8 regular {array 1920 { 0 3 } 0 1 }  }
	{ buf_V_1 int 16 regular {array 1920 { 0 3 } 0 1 }  }
	{ buf_V int 16 regular {array 1920 { 0 3 } 0 1 }  }
	{ magnitude_mat_data8 int 16 regular {fifo 0 volatile }  }
	{ phase_mat_data9 int 8 regular {fifo 0 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "imgwidth_load", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "angle_V", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "buf_V_1", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "buf_V", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "magnitude_mat_data8", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "phase_mat_data9", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 32
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ magnitude_mat_data8_dout sc_in sc_lv 16 signal 4 } 
	{ magnitude_mat_data8_num_data_valid sc_in sc_lv 2 signal 4 } 
	{ magnitude_mat_data8_fifo_cap sc_in sc_lv 2 signal 4 } 
	{ magnitude_mat_data8_empty_n sc_in sc_logic 1 signal 4 } 
	{ magnitude_mat_data8_read sc_out sc_logic 1 signal 4 } 
	{ phase_mat_data9_dout sc_in sc_lv 8 signal 5 } 
	{ phase_mat_data9_num_data_valid sc_in sc_lv 14 signal 5 } 
	{ phase_mat_data9_fifo_cap sc_in sc_lv 14 signal 5 } 
	{ phase_mat_data9_empty_n sc_in sc_logic 1 signal 5 } 
	{ phase_mat_data9_read sc_out sc_logic 1 signal 5 } 
	{ imgwidth_load sc_in sc_lv 16 signal 0 } 
	{ angle_V_address0 sc_out sc_lv 11 signal 1 } 
	{ angle_V_ce0 sc_out sc_logic 1 signal 1 } 
	{ angle_V_we0 sc_out sc_logic 1 signal 1 } 
	{ angle_V_d0 sc_out sc_lv 8 signal 1 } 
	{ buf_V_1_address0 sc_out sc_lv 11 signal 2 } 
	{ buf_V_1_ce0 sc_out sc_logic 1 signal 2 } 
	{ buf_V_1_we0 sc_out sc_logic 1 signal 2 } 
	{ buf_V_1_d0 sc_out sc_lv 16 signal 2 } 
	{ buf_V_address0 sc_out sc_lv 11 signal 3 } 
	{ buf_V_ce0 sc_out sc_logic 1 signal 3 } 
	{ buf_V_we0 sc_out sc_logic 1 signal 3 } 
	{ buf_V_d0 sc_out sc_lv 16 signal 3 } 
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
 	{ "name": "magnitude_mat_data8_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "magnitude_mat_data8", "role": "dout" }} , 
 	{ "name": "magnitude_mat_data8_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "magnitude_mat_data8", "role": "num_data_valid" }} , 
 	{ "name": "magnitude_mat_data8_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "magnitude_mat_data8", "role": "fifo_cap" }} , 
 	{ "name": "magnitude_mat_data8_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "magnitude_mat_data8", "role": "empty_n" }} , 
 	{ "name": "magnitude_mat_data8_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "magnitude_mat_data8", "role": "read" }} , 
 	{ "name": "phase_mat_data9_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "phase_mat_data9", "role": "dout" }} , 
 	{ "name": "phase_mat_data9_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "phase_mat_data9", "role": "num_data_valid" }} , 
 	{ "name": "phase_mat_data9_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "phase_mat_data9", "role": "fifo_cap" }} , 
 	{ "name": "phase_mat_data9_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "phase_mat_data9", "role": "empty_n" }} , 
 	{ "name": "phase_mat_data9_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "phase_mat_data9", "role": "read" }} , 
 	{ "name": "imgwidth_load", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "imgwidth_load", "role": "default" }} , 
 	{ "name": "angle_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "angle_V", "role": "address0" }} , 
 	{ "name": "angle_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "angle_V", "role": "ce0" }} , 
 	{ "name": "angle_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "angle_V", "role": "we0" }} , 
 	{ "name": "angle_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "angle_V", "role": "d0" }} , 
 	{ "name": "buf_V_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "buf_V_1", "role": "address0" }} , 
 	{ "name": "buf_V_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_V_1", "role": "ce0" }} , 
 	{ "name": "buf_V_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_V_1", "role": "we0" }} , 
 	{ "name": "buf_V_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "buf_V_1", "role": "d0" }} , 
 	{ "name": "buf_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "buf_V", "role": "address0" }} , 
 	{ "name": "buf_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_V", "role": "ce0" }} , 
 	{ "name": "buf_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_V", "role": "we0" }} , 
 	{ "name": "buf_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "buf_V", "role": "d0" }} , 
 	{ "name": "ap_ext_blocking_n", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_ext_blocking_n", "role": "default" }} , 
 	{ "name": "ap_str_blocking_n", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_str_blocking_n", "role": "default" }} , 
 	{ "name": "ap_int_blocking_n", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_int_blocking_n", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "xFSuppression3x3_Pipeline_bufColLoop",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1922", "EstimateLatencyMax" : "1922",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "imgwidth_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "angle_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buf_V_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buf_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "magnitude_mat_data8", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "magnitude_mat_data8_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "phase_mat_data9", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "phase_mat_data9_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "bufColLoop", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	xFSuppression3x3_Pipeline_bufColLoop {
		imgwidth_load {Type I LastRead 0 FirstWrite -1}
		angle_V {Type O LastRead -1 FirstWrite 1}
		buf_V_1 {Type O LastRead -1 FirstWrite 1}
		buf_V {Type O LastRead -1 FirstWrite 0}
		magnitude_mat_data8 {Type I LastRead 1 FirstWrite -1}
		phase_mat_data9 {Type I LastRead 1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1922", "Max" : "1922"}
	, {"Name" : "Interval", "Min" : "1922", "Max" : "1922"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	imgwidth_load { ap_none {  { imgwidth_load in_data 0 16 } } }
	angle_V { ap_memory {  { angle_V_address0 mem_address 1 11 }  { angle_V_ce0 mem_ce 1 1 }  { angle_V_we0 mem_we 1 1 }  { angle_V_d0 mem_din 1 8 } } }
	buf_V_1 { ap_memory {  { buf_V_1_address0 mem_address 1 11 }  { buf_V_1_ce0 mem_ce 1 1 }  { buf_V_1_we0 mem_we 1 1 }  { buf_V_1_d0 mem_din 1 16 } } }
	buf_V { ap_memory {  { buf_V_address0 mem_address 1 11 }  { buf_V_ce0 mem_ce 1 1 }  { buf_V_we0 mem_we 1 1 }  { buf_V_d0 mem_din 1 16 } } }
	magnitude_mat_data8 { ap_fifo {  { magnitude_mat_data8_dout fifo_port_we 0 16 }  { magnitude_mat_data8_num_data_valid fifo_status_num_data_valid 0 2 }  { magnitude_mat_data8_fifo_cap fifo_update 0 2 }  { magnitude_mat_data8_empty_n fifo_status 0 1 }  { magnitude_mat_data8_read fifo_data 1 1 } } }
	phase_mat_data9 { ap_fifo {  { phase_mat_data9_dout fifo_port_we 0 8 }  { phase_mat_data9_num_data_valid fifo_status_num_data_valid 0 14 }  { phase_mat_data9_fifo_cap fifo_update 0 14 }  { phase_mat_data9_empty_n fifo_status 0 1 }  { phase_mat_data9_read fifo_data 1 1 } } }
}
