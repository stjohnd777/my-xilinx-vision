set moduleName xFfastnms_0_2160_3840_0_1_2_2_1_3841_3_9_4_Pipeline_Col_Loop
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
set C_modelName {xFfastnms<0, 2160, 3840, 0, 1, 2, 2, 1, 3841, 3, 9>4_Pipeline_Col_Loop}
set C_modelType { void 0 }
set C_modelArgList {
	{ img_width_load int 16 regular  }
	{ buf_V_2 int 8 regular {array 3840 { 1 0 } 1 1 }  }
	{ buf_V int 8 regular {array 3840 { 1 0 } 1 1 }  }
	{ buf_V_1 int 8 regular {array 3840 { 1 0 } 1 1 }  }
	{ row_ind_V_7 int 13 regular  }
	{ row_ind_V_8 int 13 regular  }
	{ row_ind_V_9 int 13 regular  }
	{ sub_i214_i_cast int 2 regular  }
	{ row_ind_V_7_cast int 2 regular  }
	{ spec_select51 int 1 regular  }
	{ row_ind_V_8_cast int 2 regular  }
	{ spec_select55 int 1 regular  }
	{ row_ind_V_9_cast int 2 regular  }
	{ spec_select59 int 1 regular  }
	{ cmp_i_i322_i int 1 regular  }
	{ p_dst_data1 int 8 regular {fifo 0 volatile }  }
	{ imgOutput_data2 int 8 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "img_width_load", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "buf_V_2", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "buf_V", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "buf_V_1", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "row_ind_V_7", "interface" : "wire", "bitwidth" : 13, "direction" : "READONLY"} , 
 	{ "Name" : "row_ind_V_8", "interface" : "wire", "bitwidth" : 13, "direction" : "READONLY"} , 
 	{ "Name" : "row_ind_V_9", "interface" : "wire", "bitwidth" : 13, "direction" : "READONLY"} , 
 	{ "Name" : "sub_i214_i_cast", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "row_ind_V_7_cast", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "spec_select51", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "row_ind_V_8_cast", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "spec_select55", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "row_ind_V_9_cast", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "spec_select59", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "cmp_i_i322_i", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "p_dst_data1", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "imgOutput_data2", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 49
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ p_dst_data1_dout sc_in sc_lv 8 signal 15 } 
	{ p_dst_data1_num_data_valid sc_in sc_lv 2 signal 15 } 
	{ p_dst_data1_fifo_cap sc_in sc_lv 2 signal 15 } 
	{ p_dst_data1_empty_n sc_in sc_logic 1 signal 15 } 
	{ p_dst_data1_read sc_out sc_logic 1 signal 15 } 
	{ imgOutput_data2_din sc_out sc_lv 8 signal 16 } 
	{ imgOutput_data2_num_data_valid sc_in sc_lv 2 signal 16 } 
	{ imgOutput_data2_fifo_cap sc_in sc_lv 2 signal 16 } 
	{ imgOutput_data2_full_n sc_in sc_logic 1 signal 16 } 
	{ imgOutput_data2_write sc_out sc_logic 1 signal 16 } 
	{ img_width_load sc_in sc_lv 16 signal 0 } 
	{ buf_V_2_address0 sc_out sc_lv 12 signal 1 } 
	{ buf_V_2_ce0 sc_out sc_logic 1 signal 1 } 
	{ buf_V_2_q0 sc_in sc_lv 8 signal 1 } 
	{ buf_V_2_address1 sc_out sc_lv 12 signal 1 } 
	{ buf_V_2_ce1 sc_out sc_logic 1 signal 1 } 
	{ buf_V_2_we1 sc_out sc_logic 1 signal 1 } 
	{ buf_V_2_d1 sc_out sc_lv 8 signal 1 } 
	{ buf_V_address0 sc_out sc_lv 12 signal 2 } 
	{ buf_V_ce0 sc_out sc_logic 1 signal 2 } 
	{ buf_V_q0 sc_in sc_lv 8 signal 2 } 
	{ buf_V_address1 sc_out sc_lv 12 signal 2 } 
	{ buf_V_ce1 sc_out sc_logic 1 signal 2 } 
	{ buf_V_we1 sc_out sc_logic 1 signal 2 } 
	{ buf_V_d1 sc_out sc_lv 8 signal 2 } 
	{ buf_V_1_address0 sc_out sc_lv 12 signal 3 } 
	{ buf_V_1_ce0 sc_out sc_logic 1 signal 3 } 
	{ buf_V_1_q0 sc_in sc_lv 8 signal 3 } 
	{ buf_V_1_address1 sc_out sc_lv 12 signal 3 } 
	{ buf_V_1_ce1 sc_out sc_logic 1 signal 3 } 
	{ buf_V_1_we1 sc_out sc_logic 1 signal 3 } 
	{ buf_V_1_d1 sc_out sc_lv 8 signal 3 } 
	{ row_ind_V_7 sc_in sc_lv 13 signal 4 } 
	{ row_ind_V_8 sc_in sc_lv 13 signal 5 } 
	{ row_ind_V_9 sc_in sc_lv 13 signal 6 } 
	{ sub_i214_i_cast sc_in sc_lv 2 signal 7 } 
	{ row_ind_V_7_cast sc_in sc_lv 2 signal 8 } 
	{ spec_select51 sc_in sc_lv 1 signal 9 } 
	{ row_ind_V_8_cast sc_in sc_lv 2 signal 10 } 
	{ spec_select55 sc_in sc_lv 1 signal 11 } 
	{ row_ind_V_9_cast sc_in sc_lv 2 signal 12 } 
	{ spec_select59 sc_in sc_lv 1 signal 13 } 
	{ cmp_i_i322_i sc_in sc_lv 1 signal 14 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "p_dst_data1_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_dst_data1", "role": "dout" }} , 
 	{ "name": "p_dst_data1_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "p_dst_data1", "role": "num_data_valid" }} , 
 	{ "name": "p_dst_data1_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "p_dst_data1", "role": "fifo_cap" }} , 
 	{ "name": "p_dst_data1_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_dst_data1", "role": "empty_n" }} , 
 	{ "name": "p_dst_data1_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_dst_data1", "role": "read" }} , 
 	{ "name": "imgOutput_data2_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "imgOutput_data2", "role": "din" }} , 
 	{ "name": "imgOutput_data2_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "imgOutput_data2", "role": "num_data_valid" }} , 
 	{ "name": "imgOutput_data2_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "imgOutput_data2", "role": "fifo_cap" }} , 
 	{ "name": "imgOutput_data2_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imgOutput_data2", "role": "full_n" }} , 
 	{ "name": "imgOutput_data2_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imgOutput_data2", "role": "write" }} , 
 	{ "name": "img_width_load", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "img_width_load", "role": "default" }} , 
 	{ "name": "buf_V_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "buf_V_2", "role": "address0" }} , 
 	{ "name": "buf_V_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_V_2", "role": "ce0" }} , 
 	{ "name": "buf_V_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buf_V_2", "role": "q0" }} , 
 	{ "name": "buf_V_2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "buf_V_2", "role": "address1" }} , 
 	{ "name": "buf_V_2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_V_2", "role": "ce1" }} , 
 	{ "name": "buf_V_2_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_V_2", "role": "we1" }} , 
 	{ "name": "buf_V_2_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buf_V_2", "role": "d1" }} , 
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
 	{ "name": "buf_V_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "buf_V_1", "role": "address1" }} , 
 	{ "name": "buf_V_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_V_1", "role": "ce1" }} , 
 	{ "name": "buf_V_1_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_V_1", "role": "we1" }} , 
 	{ "name": "buf_V_1_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buf_V_1", "role": "d1" }} , 
 	{ "name": "row_ind_V_7", "direction": "in", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "row_ind_V_7", "role": "default" }} , 
 	{ "name": "row_ind_V_8", "direction": "in", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "row_ind_V_8", "role": "default" }} , 
 	{ "name": "row_ind_V_9", "direction": "in", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "row_ind_V_9", "role": "default" }} , 
 	{ "name": "sub_i214_i_cast", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "sub_i214_i_cast", "role": "default" }} , 
 	{ "name": "row_ind_V_7_cast", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "row_ind_V_7_cast", "role": "default" }} , 
 	{ "name": "spec_select51", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "spec_select51", "role": "default" }} , 
 	{ "name": "row_ind_V_8_cast", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "row_ind_V_8_cast", "role": "default" }} , 
 	{ "name": "spec_select55", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "spec_select55", "role": "default" }} , 
 	{ "name": "row_ind_V_9_cast", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "row_ind_V_9_cast", "role": "default" }} , 
 	{ "name": "spec_select59", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "spec_select59", "role": "default" }} , 
 	{ "name": "cmp_i_i322_i", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "cmp_i_i322_i", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6"],
		"CDFG" : "xFfastnms_0_2160_3840_0_1_2_2_1_3841_3_9_4_Pipeline_Col_Loop",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3846", "EstimateLatencyMax" : "3846",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "img_width_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "buf_V_2", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "buf_V", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "buf_V_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "row_ind_V_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "row_ind_V_8", "Type" : "None", "Direction" : "I"},
			{"Name" : "row_ind_V_9", "Type" : "None", "Direction" : "I"},
			{"Name" : "sub_i214_i_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "row_ind_V_7_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "spec_select51", "Type" : "None", "Direction" : "I"},
			{"Name" : "row_ind_V_8_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "spec_select55", "Type" : "None", "Direction" : "I"},
			{"Name" : "row_ind_V_9_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "spec_select59", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp_i_i322_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_dst_data1", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "p_dst_data1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "imgOutput_data2", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "imgOutput_data2_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "Col_Loop", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter4", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter3", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_13_1_1_U163", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_8_1_1_U164", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_8_1_1_U165", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_8_1_1_U166", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_8_1_1_U167", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	xFfastnms_0_2160_3840_0_1_2_2_1_3841_3_9_4_Pipeline_Col_Loop {
		img_width_load {Type I LastRead 0 FirstWrite -1}
		buf_V_2 {Type IO LastRead 2 FirstWrite 1}
		buf_V {Type IO LastRead 2 FirstWrite 1}
		buf_V_1 {Type IO LastRead 2 FirstWrite 1}
		row_ind_V_7 {Type I LastRead 0 FirstWrite -1}
		row_ind_V_8 {Type I LastRead 0 FirstWrite -1}
		row_ind_V_9 {Type I LastRead 0 FirstWrite -1}
		sub_i214_i_cast {Type I LastRead 0 FirstWrite -1}
		row_ind_V_7_cast {Type I LastRead 0 FirstWrite -1}
		spec_select51 {Type I LastRead 0 FirstWrite -1}
		row_ind_V_8_cast {Type I LastRead 0 FirstWrite -1}
		spec_select55 {Type I LastRead 0 FirstWrite -1}
		row_ind_V_9_cast {Type I LastRead 0 FirstWrite -1}
		spec_select59 {Type I LastRead 0 FirstWrite -1}
		cmp_i_i322_i {Type I LastRead 0 FirstWrite -1}
		p_dst_data1 {Type I LastRead 1 FirstWrite -1}
		imgOutput_data2 {Type O LastRead -1 FirstWrite 4}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3846", "Max" : "3846"}
	, {"Name" : "Interval", "Min" : "3846", "Max" : "3846"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	img_width_load { ap_none {  { img_width_load in_data 0 16 } } }
	buf_V_2 { ap_memory {  { buf_V_2_address0 mem_address 1 12 }  { buf_V_2_ce0 mem_ce 1 1 }  { buf_V_2_q0 in_data 0 8 }  { buf_V_2_address1 MemPortADDR2 1 12 }  { buf_V_2_ce1 MemPortCE2 1 1 }  { buf_V_2_we1 MemPortWE2 1 1 }  { buf_V_2_d1 MemPortDIN2 1 8 } } }
	buf_V { ap_memory {  { buf_V_address0 mem_address 1 12 }  { buf_V_ce0 mem_ce 1 1 }  { buf_V_q0 in_data 0 8 }  { buf_V_address1 MemPortADDR2 1 12 }  { buf_V_ce1 MemPortCE2 1 1 }  { buf_V_we1 MemPortWE2 1 1 }  { buf_V_d1 MemPortDIN2 1 8 } } }
	buf_V_1 { ap_memory {  { buf_V_1_address0 mem_address 1 12 }  { buf_V_1_ce0 mem_ce 1 1 }  { buf_V_1_q0 in_data 0 8 }  { buf_V_1_address1 MemPortADDR2 1 12 }  { buf_V_1_ce1 MemPortCE2 1 1 }  { buf_V_1_we1 MemPortWE2 1 1 }  { buf_V_1_d1 MemPortDIN2 1 8 } } }
	row_ind_V_7 { ap_none {  { row_ind_V_7 in_data 0 13 } } }
	row_ind_V_8 { ap_none {  { row_ind_V_8 in_data 0 13 } } }
	row_ind_V_9 { ap_none {  { row_ind_V_9 in_data 0 13 } } }
	sub_i214_i_cast { ap_none {  { sub_i214_i_cast in_data 0 2 } } }
	row_ind_V_7_cast { ap_none {  { row_ind_V_7_cast in_data 0 2 } } }
	spec_select51 { ap_none {  { spec_select51 in_data 0 1 } } }
	row_ind_V_8_cast { ap_none {  { row_ind_V_8_cast in_data 0 2 } } }
	spec_select55 { ap_none {  { spec_select55 in_data 0 1 } } }
	row_ind_V_9_cast { ap_none {  { row_ind_V_9_cast in_data 0 2 } } }
	spec_select59 { ap_none {  { spec_select59 in_data 0 1 } } }
	cmp_i_i322_i { ap_none {  { cmp_i_i322_i in_data 0 1 } } }
	p_dst_data1 { ap_fifo {  { p_dst_data1_dout fifo_port_we 0 8 }  { p_dst_data1_num_data_valid fifo_status_num_data_valid 0 2 }  { p_dst_data1_fifo_cap fifo_update 0 2 }  { p_dst_data1_empty_n fifo_status 0 1 }  { p_dst_data1_read fifo_data 1 1 } } }
	imgOutput_data2 { ap_fifo {  { imgOutput_data2_din fifo_port_we 1 8 }  { imgOutput_data2_num_data_valid fifo_status_num_data_valid 0 2 }  { imgOutput_data2_fifo_cap fifo_update 0 2 }  { imgOutput_data2_full_n fifo_status 0 1 }  { imgOutput_data2_write fifo_data 1 1 } } }
}
