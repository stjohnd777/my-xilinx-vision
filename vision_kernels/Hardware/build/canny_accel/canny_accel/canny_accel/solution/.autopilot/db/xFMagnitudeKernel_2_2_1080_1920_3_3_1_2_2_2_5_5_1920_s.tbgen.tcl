set moduleName xFMagnitudeKernel_2_2_1080_1920_3_3_1_2_2_2_5_5_1920_s
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set C_modelName {xFMagnitudeKernel<2, 2, 1080, 1920, 3, 3, 1, 2, 2, 2, 5, 5, 1920>}
set C_modelType { void 0 }
set C_modelArgList {
	{ gradx1_mat_data3 int 16 regular {fifo 0 volatile }  }
	{ grady1_mat_data6 int 16 regular {fifo 0 volatile }  }
	{ magnitude_mat_data8 int 16 regular {fifo 1 volatile }  }
	{ p_read int 16 regular  }
	{ p_read1 int 16 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "gradx1_mat_data3", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "grady1_mat_data6", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "magnitude_mat_data8", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_read", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_read1", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 24
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ gradx1_mat_data3_dout sc_in sc_lv 16 signal 0 } 
	{ gradx1_mat_data3_num_data_valid sc_in sc_lv 2 signal 0 } 
	{ gradx1_mat_data3_fifo_cap sc_in sc_lv 2 signal 0 } 
	{ gradx1_mat_data3_empty_n sc_in sc_logic 1 signal 0 } 
	{ gradx1_mat_data3_read sc_out sc_logic 1 signal 0 } 
	{ grady1_mat_data6_dout sc_in sc_lv 16 signal 1 } 
	{ grady1_mat_data6_num_data_valid sc_in sc_lv 2 signal 1 } 
	{ grady1_mat_data6_fifo_cap sc_in sc_lv 2 signal 1 } 
	{ grady1_mat_data6_empty_n sc_in sc_logic 1 signal 1 } 
	{ grady1_mat_data6_read sc_out sc_logic 1 signal 1 } 
	{ magnitude_mat_data8_din sc_out sc_lv 16 signal 2 } 
	{ magnitude_mat_data8_num_data_valid sc_in sc_lv 2 signal 2 } 
	{ magnitude_mat_data8_fifo_cap sc_in sc_lv 2 signal 2 } 
	{ magnitude_mat_data8_full_n sc_in sc_logic 1 signal 2 } 
	{ magnitude_mat_data8_write sc_out sc_logic 1 signal 2 } 
	{ p_read sc_in sc_lv 16 signal 3 } 
	{ p_read1 sc_in sc_lv 16 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "gradx1_mat_data3_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "gradx1_mat_data3", "role": "dout" }} , 
 	{ "name": "gradx1_mat_data3_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gradx1_mat_data3", "role": "num_data_valid" }} , 
 	{ "name": "gradx1_mat_data3_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gradx1_mat_data3", "role": "fifo_cap" }} , 
 	{ "name": "gradx1_mat_data3_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gradx1_mat_data3", "role": "empty_n" }} , 
 	{ "name": "gradx1_mat_data3_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gradx1_mat_data3", "role": "read" }} , 
 	{ "name": "grady1_mat_data6_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "grady1_mat_data6", "role": "dout" }} , 
 	{ "name": "grady1_mat_data6_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grady1_mat_data6", "role": "num_data_valid" }} , 
 	{ "name": "grady1_mat_data6_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grady1_mat_data6", "role": "fifo_cap" }} , 
 	{ "name": "grady1_mat_data6_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grady1_mat_data6", "role": "empty_n" }} , 
 	{ "name": "grady1_mat_data6_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grady1_mat_data6", "role": "read" }} , 
 	{ "name": "magnitude_mat_data8_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "magnitude_mat_data8", "role": "din" }} , 
 	{ "name": "magnitude_mat_data8_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "magnitude_mat_data8", "role": "num_data_valid" }} , 
 	{ "name": "magnitude_mat_data8_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "magnitude_mat_data8", "role": "fifo_cap" }} , 
 	{ "name": "magnitude_mat_data8_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "magnitude_mat_data8", "role": "full_n" }} , 
 	{ "name": "magnitude_mat_data8_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "magnitude_mat_data8", "role": "write" }} , 
 	{ "name": "p_read", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read", "role": "default" }} , 
 	{ "name": "p_read1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read1", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "xFMagnitudeKernel_2_2_1080_1920_3_3_1_2_2_2_5_5_1920_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2079001", "EstimateLatencyMax" : "2079001",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "gradx1_mat_data3", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_xFMagnitudeKernel_Pipeline_colLoop_fu_56", "Port" : "gradx1_mat_data3", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "grady1_mat_data6", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_xFMagnitudeKernel_Pipeline_colLoop_fu_56", "Port" : "grady1_mat_data6", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "magnitude_mat_data8", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_xFMagnitudeKernel_Pipeline_colLoop_fu_56", "Port" : "magnitude_mat_data8", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "4", "DependentChanType" : "1"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "4", "DependentChanType" : "1"}],
		"Loop" : [
			{"Name" : "rowLoop", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "3", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state3"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_xFMagnitudeKernel_Pipeline_colLoop_fu_56", "Parent" : "0", "Child" : ["2"],
		"CDFG" : "xFMagnitudeKernel_Pipeline_colLoop",
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
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I"},
			{"Name" : "gradx1_mat_data3", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "gradx1_mat_data3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "grady1_mat_data6", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "grady1_mat_data6_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "magnitude_mat_data8", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "magnitude_mat_data8_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "colLoop", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_xFMagnitudeKernel_Pipeline_colLoop_fu_56.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
	xFMagnitudeKernel_2_2_1080_1920_3_3_1_2_2_2_5_5_1920_s {
		gradx1_mat_data3 {Type I LastRead 1 FirstWrite -1}
		grady1_mat_data6 {Type I LastRead 1 FirstWrite -1}
		magnitude_mat_data8 {Type O LastRead -1 FirstWrite 2}
		p_read {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}}
	xFMagnitudeKernel_Pipeline_colLoop {
		p_read1 {Type I LastRead 0 FirstWrite -1}
		gradx1_mat_data3 {Type I LastRead 1 FirstWrite -1}
		grady1_mat_data6 {Type I LastRead 1 FirstWrite -1}
		magnitude_mat_data8 {Type O LastRead -1 FirstWrite 2}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "2079001", "Max" : "2079001"}
	, {"Name" : "Interval", "Min" : "2079001", "Max" : "2079001"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	gradx1_mat_data3 { ap_fifo {  { gradx1_mat_data3_dout fifo_port_we 0 16 }  { gradx1_mat_data3_num_data_valid fifo_status_num_data_valid 0 2 }  { gradx1_mat_data3_fifo_cap fifo_update 0 2 }  { gradx1_mat_data3_empty_n fifo_status 0 1 }  { gradx1_mat_data3_read fifo_data 1 1 } } }
	grady1_mat_data6 { ap_fifo {  { grady1_mat_data6_dout fifo_port_we 0 16 }  { grady1_mat_data6_num_data_valid fifo_status_num_data_valid 0 2 }  { grady1_mat_data6_fifo_cap fifo_update 0 2 }  { grady1_mat_data6_empty_n fifo_status 0 1 }  { grady1_mat_data6_read fifo_data 1 1 } } }
	magnitude_mat_data8 { ap_fifo {  { magnitude_mat_data8_din fifo_port_we 1 16 }  { magnitude_mat_data8_num_data_valid fifo_status_num_data_valid 0 2 }  { magnitude_mat_data8_fifo_cap fifo_update 0 2 }  { magnitude_mat_data8_full_n fifo_status 0 1 }  { magnitude_mat_data8_write fifo_data 1 1 } } }
	p_read { ap_none {  { p_read in_data 0 16 } } }
	p_read1 { ap_none {  { p_read1 in_data 0 16 } } }
}
