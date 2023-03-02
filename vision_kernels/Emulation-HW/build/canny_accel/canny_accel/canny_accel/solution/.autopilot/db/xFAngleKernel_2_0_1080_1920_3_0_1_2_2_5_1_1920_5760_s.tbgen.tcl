set moduleName xFAngleKernel_2_0_1080_1920_3_0_1_2_2_5_1_1920_5760_s
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 1
set StallSigGenFlag 1
set isEnableWaveformDebug 1
set hasInterrupt 0
set C_modelName {xFAngleKernel<2, 0, 1080, 1920, 3, 0, 1, 2, 2, 5, 1, 1920, 5760>}
set C_modelType { void 0 }
set C_modelArgList {
	{ gradx2_mat_data4 int 16 regular {fifo 0 volatile }  }
	{ grady2_mat_data7 int 16 regular {fifo 0 volatile }  }
	{ phase_mat_data9 int 8 regular {fifo 1 volatile }  }
	{ imgheight int 16 regular {fifo 0}  }
	{ imgwidth int 16 regular {fifo 0}  }
	{ img_height_c19 int 16 regular {fifo 1}  }
	{ img_width_c23 int 16 regular {fifo 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "gradx2_mat_data4", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "grady2_mat_data7", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "phase_mat_data9", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "imgheight", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "imgwidth", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "img_height_c19", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "img_width_c23", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 45
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ gradx2_mat_data4_dout sc_in sc_lv 16 signal 0 } 
	{ gradx2_mat_data4_num_data_valid sc_in sc_lv 2 signal 0 } 
	{ gradx2_mat_data4_fifo_cap sc_in sc_lv 2 signal 0 } 
	{ gradx2_mat_data4_empty_n sc_in sc_logic 1 signal 0 } 
	{ gradx2_mat_data4_read sc_out sc_logic 1 signal 0 } 
	{ grady2_mat_data7_dout sc_in sc_lv 16 signal 1 } 
	{ grady2_mat_data7_num_data_valid sc_in sc_lv 2 signal 1 } 
	{ grady2_mat_data7_fifo_cap sc_in sc_lv 2 signal 1 } 
	{ grady2_mat_data7_empty_n sc_in sc_logic 1 signal 1 } 
	{ grady2_mat_data7_read sc_out sc_logic 1 signal 1 } 
	{ phase_mat_data9_din sc_out sc_lv 8 signal 2 } 
	{ phase_mat_data9_num_data_valid sc_in sc_lv 14 signal 2 } 
	{ phase_mat_data9_fifo_cap sc_in sc_lv 14 signal 2 } 
	{ phase_mat_data9_full_n sc_in sc_logic 1 signal 2 } 
	{ phase_mat_data9_write sc_out sc_logic 1 signal 2 } 
	{ imgheight_dout sc_in sc_lv 16 signal 3 } 
	{ imgheight_num_data_valid sc_in sc_lv 2 signal 3 } 
	{ imgheight_fifo_cap sc_in sc_lv 2 signal 3 } 
	{ imgheight_empty_n sc_in sc_logic 1 signal 3 } 
	{ imgheight_read sc_out sc_logic 1 signal 3 } 
	{ imgwidth_dout sc_in sc_lv 16 signal 4 } 
	{ imgwidth_num_data_valid sc_in sc_lv 2 signal 4 } 
	{ imgwidth_fifo_cap sc_in sc_lv 2 signal 4 } 
	{ imgwidth_empty_n sc_in sc_logic 1 signal 4 } 
	{ imgwidth_read sc_out sc_logic 1 signal 4 } 
	{ img_height_c19_din sc_out sc_lv 16 signal 5 } 
	{ img_height_c19_num_data_valid sc_in sc_lv 2 signal 5 } 
	{ img_height_c19_fifo_cap sc_in sc_lv 2 signal 5 } 
	{ img_height_c19_full_n sc_in sc_logic 1 signal 5 } 
	{ img_height_c19_write sc_out sc_logic 1 signal 5 } 
	{ img_width_c23_din sc_out sc_lv 16 signal 6 } 
	{ img_width_c23_num_data_valid sc_in sc_lv 2 signal 6 } 
	{ img_width_c23_fifo_cap sc_in sc_lv 2 signal 6 } 
	{ img_width_c23_full_n sc_in sc_logic 1 signal 6 } 
	{ img_width_c23_write sc_out sc_logic 1 signal 6 } 
	{ ap_ext_blocking_n sc_out sc_logic 1 signal -1 } 
	{ ap_str_blocking_n sc_out sc_logic 1 signal -1 } 
	{ ap_int_blocking_n sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
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
 	{ "name": "imgheight_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "imgheight", "role": "dout" }} , 
 	{ "name": "imgheight_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "imgheight", "role": "num_data_valid" }} , 
 	{ "name": "imgheight_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "imgheight", "role": "fifo_cap" }} , 
 	{ "name": "imgheight_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imgheight", "role": "empty_n" }} , 
 	{ "name": "imgheight_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imgheight", "role": "read" }} , 
 	{ "name": "imgwidth_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "imgwidth", "role": "dout" }} , 
 	{ "name": "imgwidth_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "imgwidth", "role": "num_data_valid" }} , 
 	{ "name": "imgwidth_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "imgwidth", "role": "fifo_cap" }} , 
 	{ "name": "imgwidth_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imgwidth", "role": "empty_n" }} , 
 	{ "name": "imgwidth_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imgwidth", "role": "read" }} , 
 	{ "name": "img_height_c19_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "img_height_c19", "role": "din" }} , 
 	{ "name": "img_height_c19_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "img_height_c19", "role": "num_data_valid" }} , 
 	{ "name": "img_height_c19_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "img_height_c19", "role": "fifo_cap" }} , 
 	{ "name": "img_height_c19_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_height_c19", "role": "full_n" }} , 
 	{ "name": "img_height_c19_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_height_c19", "role": "write" }} , 
 	{ "name": "img_width_c23_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "img_width_c23", "role": "din" }} , 
 	{ "name": "img_width_c23_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "img_width_c23", "role": "num_data_valid" }} , 
 	{ "name": "img_width_c23_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "img_width_c23", "role": "fifo_cap" }} , 
 	{ "name": "img_width_c23_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_width_c23", "role": "full_n" }} , 
 	{ "name": "img_width_c23_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_width_c23", "role": "write" }} , 
 	{ "name": "ap_ext_blocking_n", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_ext_blocking_n", "role": "default" }} , 
 	{ "name": "ap_str_blocking_n", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_str_blocking_n", "role": "default" }} , 
 	{ "name": "ap_int_blocking_n", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_int_blocking_n", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "xFAngleKernel_2_0_1080_1920_3_0_1_2_2_5_1_1920_5760_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2082241", "EstimateLatencyMax" : "2082241",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "gradx2_mat_data4", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_xFAngleKernel_Pipeline_colLoop_fu_88", "Port" : "gradx2_mat_data4", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "grady2_mat_data7", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_xFAngleKernel_Pipeline_colLoop_fu_88", "Port" : "grady2_mat_data7", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "phase_mat_data9", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "5760", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_xFAngleKernel_Pipeline_colLoop_fu_88", "Port" : "phase_mat_data9", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "imgheight", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "imgheight_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "imgwidth", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "imgwidth_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "img_height_c19", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "img_height_c19_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "img_width_c23", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "img_width_c23_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "rowLoop", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "3", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state3"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_xFAngleKernel_Pipeline_colLoop_fu_88", "Parent" : "0", "Child" : ["2", "3"],
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
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_xFAngleKernel_Pipeline_colLoop_fu_88.mul_mul_17s_14ns_32_4_1_U181", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_xFAngleKernel_Pipeline_colLoop_fu_88.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
	xFAngleKernel_2_0_1080_1920_3_0_1_2_2_5_1_1920_5760_s {
		gradx2_mat_data4 {Type I LastRead 1 FirstWrite -1}
		grady2_mat_data7 {Type I LastRead 1 FirstWrite -1}
		phase_mat_data9 {Type O LastRead -1 FirstWrite 5}
		imgheight {Type I LastRead 0 FirstWrite -1}
		imgwidth {Type I LastRead 0 FirstWrite -1}
		img_height_c19 {Type O LastRead -1 FirstWrite 0}
		img_width_c23 {Type O LastRead -1 FirstWrite 0}}
	xFAngleKernel_Pipeline_colLoop {
		imgwidth_load {Type I LastRead 0 FirstWrite -1}
		gradx2_mat_data4 {Type I LastRead 1 FirstWrite -1}
		grady2_mat_data7 {Type I LastRead 1 FirstWrite -1}
		phase_mat_data9 {Type O LastRead -1 FirstWrite 5}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "2082241", "Max" : "2082241"}
	, {"Name" : "Interval", "Min" : "2082241", "Max" : "2082241"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	gradx2_mat_data4 { ap_fifo {  { gradx2_mat_data4_dout fifo_port_we 0 16 }  { gradx2_mat_data4_num_data_valid fifo_status_num_data_valid 0 2 }  { gradx2_mat_data4_fifo_cap fifo_update 0 2 }  { gradx2_mat_data4_empty_n fifo_status 0 1 }  { gradx2_mat_data4_read fifo_data 1 1 } } }
	grady2_mat_data7 { ap_fifo {  { grady2_mat_data7_dout fifo_port_we 0 16 }  { grady2_mat_data7_num_data_valid fifo_status_num_data_valid 0 2 }  { grady2_mat_data7_fifo_cap fifo_update 0 2 }  { grady2_mat_data7_empty_n fifo_status 0 1 }  { grady2_mat_data7_read fifo_data 1 1 } } }
	phase_mat_data9 { ap_fifo {  { phase_mat_data9_din fifo_port_we 1 8 }  { phase_mat_data9_num_data_valid fifo_status_num_data_valid 0 14 }  { phase_mat_data9_fifo_cap fifo_update 0 14 }  { phase_mat_data9_full_n fifo_status 0 1 }  { phase_mat_data9_write fifo_data 1 1 } } }
	imgheight { ap_fifo {  { imgheight_dout fifo_port_we 0 16 }  { imgheight_num_data_valid fifo_status_num_data_valid 0 2 }  { imgheight_fifo_cap fifo_update 0 2 }  { imgheight_empty_n fifo_status 0 1 }  { imgheight_read fifo_data 1 1 } } }
	imgwidth { ap_fifo {  { imgwidth_dout fifo_port_we 0 16 }  { imgwidth_num_data_valid fifo_status_num_data_valid 0 2 }  { imgwidth_fifo_cap fifo_update 0 2 }  { imgwidth_empty_n fifo_status 0 1 }  { imgwidth_read fifo_data 1 1 } } }
	img_height_c19 { ap_fifo {  { img_height_c19_din fifo_port_we 1 16 }  { img_height_c19_num_data_valid fifo_status_num_data_valid 0 2 }  { img_height_c19_fifo_cap fifo_update 0 2 }  { img_height_c19_full_n fifo_status 0 1 }  { img_height_c19_write fifo_data 1 1 } } }
	img_width_c23 { ap_fifo {  { img_width_c23_din fifo_port_we 1 16 }  { img_width_c23_num_data_valid fifo_status_num_data_valid 0 2 }  { img_width_c23_fifo_cap fifo_update 0 2 }  { img_width_c23_full_n fifo_status 0 1 }  { img_width_c23_write fifo_data 1 1 } } }
}
