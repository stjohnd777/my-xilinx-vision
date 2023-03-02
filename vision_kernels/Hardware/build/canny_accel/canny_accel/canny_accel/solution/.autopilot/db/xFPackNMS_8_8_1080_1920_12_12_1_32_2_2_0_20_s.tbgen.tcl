set moduleName xFPackNMS_8_8_1080_1920_12_12_1_32_2_2_0_20_s
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
set C_modelName {xFPackNMS<8, 8, 1080, 1920, 12, 12, 1, 32, 2, 2, 0, 20>}
set C_modelType { void 0 }
set C_modelArgList {
	{ nms_mat_data10 int 2 regular {fifo 0 volatile }  }
	{ dst_mat_data2 int 64 regular {fifo 1 volatile }  }
	{ imgheight int 16 regular {fifo 0}  }
	{ imgwidth int 16 regular {fifo 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "nms_mat_data10", "interface" : "fifo", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "dst_mat_data2", "interface" : "fifo", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "imgheight", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "imgwidth", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 27
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ nms_mat_data10_dout sc_in sc_lv 2 signal 0 } 
	{ nms_mat_data10_num_data_valid sc_in sc_lv 2 signal 0 } 
	{ nms_mat_data10_fifo_cap sc_in sc_lv 2 signal 0 } 
	{ nms_mat_data10_empty_n sc_in sc_logic 1 signal 0 } 
	{ nms_mat_data10_read sc_out sc_logic 1 signal 0 } 
	{ dst_mat_data2_din sc_out sc_lv 64 signal 1 } 
	{ dst_mat_data2_num_data_valid sc_in sc_lv 2 signal 1 } 
	{ dst_mat_data2_fifo_cap sc_in sc_lv 2 signal 1 } 
	{ dst_mat_data2_full_n sc_in sc_logic 1 signal 1 } 
	{ dst_mat_data2_write sc_out sc_logic 1 signal 1 } 
	{ imgheight_dout sc_in sc_lv 16 signal 2 } 
	{ imgheight_num_data_valid sc_in sc_lv 2 signal 2 } 
	{ imgheight_fifo_cap sc_in sc_lv 2 signal 2 } 
	{ imgheight_empty_n sc_in sc_logic 1 signal 2 } 
	{ imgheight_read sc_out sc_logic 1 signal 2 } 
	{ imgwidth_dout sc_in sc_lv 16 signal 3 } 
	{ imgwidth_num_data_valid sc_in sc_lv 2 signal 3 } 
	{ imgwidth_fifo_cap sc_in sc_lv 2 signal 3 } 
	{ imgwidth_empty_n sc_in sc_logic 1 signal 3 } 
	{ imgwidth_read sc_out sc_logic 1 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "nms_mat_data10_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "nms_mat_data10", "role": "dout" }} , 
 	{ "name": "nms_mat_data10_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "nms_mat_data10", "role": "num_data_valid" }} , 
 	{ "name": "nms_mat_data10_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "nms_mat_data10", "role": "fifo_cap" }} , 
 	{ "name": "nms_mat_data10_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "nms_mat_data10", "role": "empty_n" }} , 
 	{ "name": "nms_mat_data10_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "nms_mat_data10", "role": "read" }} , 
 	{ "name": "dst_mat_data2_din", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "dst_mat_data2", "role": "din" }} , 
 	{ "name": "dst_mat_data2_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "dst_mat_data2", "role": "num_data_valid" }} , 
 	{ "name": "dst_mat_data2_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "dst_mat_data2", "role": "fifo_cap" }} , 
 	{ "name": "dst_mat_data2_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dst_mat_data2", "role": "full_n" }} , 
 	{ "name": "dst_mat_data2_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dst_mat_data2", "role": "write" }} , 
 	{ "name": "imgheight_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "imgheight", "role": "dout" }} , 
 	{ "name": "imgheight_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "imgheight", "role": "num_data_valid" }} , 
 	{ "name": "imgheight_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "imgheight", "role": "fifo_cap" }} , 
 	{ "name": "imgheight_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imgheight", "role": "empty_n" }} , 
 	{ "name": "imgheight_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imgheight", "role": "read" }} , 
 	{ "name": "imgwidth_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "imgwidth", "role": "dout" }} , 
 	{ "name": "imgwidth_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "imgwidth", "role": "num_data_valid" }} , 
 	{ "name": "imgwidth_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "imgwidth", "role": "fifo_cap" }} , 
 	{ "name": "imgwidth_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imgwidth", "role": "empty_n" }} , 
 	{ "name": "imgwidth_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imgwidth", "role": "read" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "xFPackNMS_8_8_1080_1920_12_12_1_32_2_2_0_20_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2077921", "EstimateLatencyMax" : "2077921",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "nms_mat_data10", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_xFPackNMS_8_8_1080_1920_12_12_1_32_2_2_0_20_Pipeline_colLoop_fu_86", "Port" : "nms_mat_data10", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "dst_mat_data2", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_xFPackNMS_8_8_1080_1920_12_12_1_32_2_2_0_20_Pipeline_colLoop_fu_86", "Port" : "dst_mat_data2", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "imgheight", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "imgheight_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "imgwidth", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "imgwidth_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "rowLoop", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "3", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state3"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_xFPackNMS_8_8_1080_1920_12_12_1_32_2_2_0_20_Pipeline_colLoop_fu_86", "Parent" : "0", "Child" : ["2", "3"],
		"CDFG" : "xFPackNMS_8_8_1080_1920_12_12_1_32_2_2_0_20_Pipeline_colLoop",
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
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "dst_mat_data2", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "dst_mat_data2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "nms_mat_data10", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "nms_mat_data10_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_read_2_void_0_s_fu_480", "Port" : "nms_mat_data10", "Inst_start_state" : "33", "Inst_end_state" : "33"}]},
			{"Name" : "zext_ln108", "Type" : "None", "Direction" : "I"},
			{"Name" : "val_V_98_out", "Type" : "OVld", "Direction" : "IO"}],
		"SubInstanceBlock" : [
			{"SubInstance" : "grp_read_2_void_0_s_fu_480", "SubBlockPort" : ["nms_mat_data10_blk_n"]}],
		"Loop" : [
			{"Name" : "colLoop", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "32", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_xFPackNMS_8_8_1080_1920_12_12_1_32_2_2_0_20_Pipeline_colLoop_fu_86.grp_read_2_void_0_s_fu_480", "Parent" : "1",
		"CDFG" : "read_2_void_0_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "nms_mat_data10", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "nms_mat_data10_blk_n", "Type" : "RtlPort"}]}]},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_xFPackNMS_8_8_1080_1920_12_12_1_32_2_2_0_20_Pipeline_colLoop_fu_86.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
	xFPackNMS_8_8_1080_1920_12_12_1_32_2_2_0_20_s {
		nms_mat_data10 {Type I LastRead 0 FirstWrite -1}
		dst_mat_data2 {Type O LastRead -1 FirstWrite 32}
		imgheight {Type I LastRead 0 FirstWrite -1}
		imgwidth {Type I LastRead 0 FirstWrite -1}}
	xFPackNMS_8_8_1080_1920_12_12_1_32_2_2_0_20_Pipeline_colLoop {
		empty {Type I LastRead 0 FirstWrite -1}
		dst_mat_data2 {Type O LastRead -1 FirstWrite 32}
		nms_mat_data10 {Type I LastRead 0 FirstWrite -1}
		zext_ln108 {Type I LastRead 0 FirstWrite -1}
		val_V_98_out {Type IO LastRead 1 FirstWrite 32}}
	read_2_void_0_s {
		nms_mat_data10 {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "2077921", "Max" : "2077921"}
	, {"Name" : "Interval", "Min" : "2077921", "Max" : "2077921"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	nms_mat_data10 { ap_fifo {  { nms_mat_data10_dout fifo_port_we 0 2 }  { nms_mat_data10_num_data_valid fifo_status_num_data_valid 0 2 }  { nms_mat_data10_fifo_cap fifo_update 0 2 }  { nms_mat_data10_empty_n fifo_status 0 1 }  { nms_mat_data10_read fifo_data 1 1 } } }
	dst_mat_data2 { ap_fifo {  { dst_mat_data2_din fifo_port_we 1 64 }  { dst_mat_data2_num_data_valid fifo_status_num_data_valid 0 2 }  { dst_mat_data2_fifo_cap fifo_update 0 2 }  { dst_mat_data2_full_n fifo_status 0 1 }  { dst_mat_data2_write fifo_data 1 1 } } }
	imgheight { ap_fifo {  { imgheight_dout fifo_port_we 0 16 }  { imgheight_num_data_valid fifo_status_num_data_valid 0 2 }  { imgheight_fifo_cap fifo_update 0 2 }  { imgheight_empty_n fifo_status 0 1 }  { imgheight_read fifo_data 1 1 } } }
	imgwidth { ap_fifo {  { imgwidth_dout fifo_port_we 0 16 }  { imgwidth_num_data_valid fifo_status_num_data_valid 0 2 }  { imgwidth_fifo_cap fifo_update 0 2 }  { imgwidth_empty_n fifo_status 0 1 }  { imgwidth_read fifo_data 1 1 } } }
}
