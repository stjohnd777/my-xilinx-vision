set moduleName xFSobel3x3_Pipeline_VITIS_LOOP_468_2
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
set C_modelName {xFSobel3x3_Pipeline_VITIS_LOOP_468_2}
set C_modelType { void 0 }
set C_modelArgList {
	{ img_width int 16 regular  }
	{ buf_V_4 int 8 regular {array 1920 { 3 0 } 0 1 }  }
	{ buf_V_3 int 8 regular {array 1920 { 3 0 } 0 1 }  }
	{ buf_V int 8 regular {array 1920 { 3 0 } 0 1 }  }
	{ gaussian_mat_data1 int 8 regular {fifo 0 volatile }  }
	{ init_buf_cast int 2 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "img_width", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "buf_V_4", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "buf_V_3", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "buf_V", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "gaussian_mat_data1", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "init_buf_cast", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 28
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ gaussian_mat_data1_dout sc_in sc_lv 8 signal 4 } 
	{ gaussian_mat_data1_num_data_valid sc_in sc_lv 2 signal 4 } 
	{ gaussian_mat_data1_fifo_cap sc_in sc_lv 2 signal 4 } 
	{ gaussian_mat_data1_empty_n sc_in sc_logic 1 signal 4 } 
	{ gaussian_mat_data1_read sc_out sc_logic 1 signal 4 } 
	{ img_width sc_in sc_lv 16 signal 0 } 
	{ buf_V_4_address1 sc_out sc_lv 11 signal 1 } 
	{ buf_V_4_ce1 sc_out sc_logic 1 signal 1 } 
	{ buf_V_4_we1 sc_out sc_logic 1 signal 1 } 
	{ buf_V_4_d1 sc_out sc_lv 8 signal 1 } 
	{ buf_V_3_address1 sc_out sc_lv 11 signal 2 } 
	{ buf_V_3_ce1 sc_out sc_logic 1 signal 2 } 
	{ buf_V_3_we1 sc_out sc_logic 1 signal 2 } 
	{ buf_V_3_d1 sc_out sc_lv 8 signal 2 } 
	{ buf_V_address1 sc_out sc_lv 11 signal 3 } 
	{ buf_V_ce1 sc_out sc_logic 1 signal 3 } 
	{ buf_V_we1 sc_out sc_logic 1 signal 3 } 
	{ buf_V_d1 sc_out sc_lv 8 signal 3 } 
	{ init_buf_cast sc_in sc_lv 2 signal 5 } 
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
 	{ "name": "gaussian_mat_data1_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gaussian_mat_data1", "role": "dout" }} , 
 	{ "name": "gaussian_mat_data1_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gaussian_mat_data1", "role": "num_data_valid" }} , 
 	{ "name": "gaussian_mat_data1_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gaussian_mat_data1", "role": "fifo_cap" }} , 
 	{ "name": "gaussian_mat_data1_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gaussian_mat_data1", "role": "empty_n" }} , 
 	{ "name": "gaussian_mat_data1_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gaussian_mat_data1", "role": "read" }} , 
 	{ "name": "img_width", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "img_width", "role": "default" }} , 
 	{ "name": "buf_V_4_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "buf_V_4", "role": "address1" }} , 
 	{ "name": "buf_V_4_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_V_4", "role": "ce1" }} , 
 	{ "name": "buf_V_4_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_V_4", "role": "we1" }} , 
 	{ "name": "buf_V_4_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buf_V_4", "role": "d1" }} , 
 	{ "name": "buf_V_3_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "buf_V_3", "role": "address1" }} , 
 	{ "name": "buf_V_3_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_V_3", "role": "ce1" }} , 
 	{ "name": "buf_V_3_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_V_3", "role": "we1" }} , 
 	{ "name": "buf_V_3_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buf_V_3", "role": "d1" }} , 
 	{ "name": "buf_V_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "buf_V", "role": "address1" }} , 
 	{ "name": "buf_V_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_V", "role": "ce1" }} , 
 	{ "name": "buf_V_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_V", "role": "we1" }} , 
 	{ "name": "buf_V_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buf_V", "role": "d1" }} , 
 	{ "name": "init_buf_cast", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "init_buf_cast", "role": "default" }} , 
 	{ "name": "ap_ext_blocking_n", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_ext_blocking_n", "role": "default" }} , 
 	{ "name": "ap_str_blocking_n", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_str_blocking_n", "role": "default" }} , 
 	{ "name": "ap_int_blocking_n", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_int_blocking_n", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "xFSobel3x3_Pipeline_VITIS_LOOP_468_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1923", "EstimateLatencyMax" : "1923",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "img_width", "Type" : "None", "Direction" : "I"},
			{"Name" : "buf_V_4", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buf_V_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buf_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "gaussian_mat_data1", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "gaussian_mat_data1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "init_buf_cast", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_468_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	xFSobel3x3_Pipeline_VITIS_LOOP_468_2 {
		img_width {Type I LastRead 0 FirstWrite -1}
		buf_V_4 {Type O LastRead -1 FirstWrite 1}
		buf_V_3 {Type O LastRead -1 FirstWrite 1}
		buf_V {Type O LastRead -1 FirstWrite 1}
		gaussian_mat_data1 {Type I LastRead 1 FirstWrite -1}
		init_buf_cast {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1923", "Max" : "1923"}
	, {"Name" : "Interval", "Min" : "1923", "Max" : "1923"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	img_width { ap_none {  { img_width in_data 0 16 } } }
	buf_V_4 { ap_memory {  { buf_V_4_address1 MemPortADDR2 1 11 }  { buf_V_4_ce1 MemPortCE2 1 1 }  { buf_V_4_we1 MemPortWE2 1 1 }  { buf_V_4_d1 MemPortDIN2 1 8 } } }
	buf_V_3 { ap_memory {  { buf_V_3_address1 MemPortADDR2 1 11 }  { buf_V_3_ce1 MemPortCE2 1 1 }  { buf_V_3_we1 MemPortWE2 1 1 }  { buf_V_3_d1 MemPortDIN2 1 8 } } }
	buf_V { ap_memory {  { buf_V_address1 MemPortADDR2 1 11 }  { buf_V_ce1 MemPortCE2 1 1 }  { buf_V_we1 MemPortWE2 1 1 }  { buf_V_d1 MemPortDIN2 1 8 } } }
	gaussian_mat_data1 { ap_fifo {  { gaussian_mat_data1_dout fifo_port_we 0 8 }  { gaussian_mat_data1_num_data_valid fifo_status_num_data_valid 0 2 }  { gaussian_mat_data1_fifo_cap fifo_update 0 2 }  { gaussian_mat_data1_empty_n fifo_status 0 1 }  { gaussian_mat_data1_read fifo_data 1 1 } } }
	init_buf_cast { ap_none {  { init_buf_cast in_data 0 2 } } }
}
