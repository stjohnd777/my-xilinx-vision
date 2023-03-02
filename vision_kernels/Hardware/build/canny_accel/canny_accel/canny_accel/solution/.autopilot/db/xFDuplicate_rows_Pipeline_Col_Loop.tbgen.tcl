set moduleName xFDuplicate_rows_Pipeline_Col_Loop
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
set C_modelName {xFDuplicate_rows_Pipeline_Col_Loop}
set C_modelType { void 0 }
set C_modelArgList {
	{ img_width_load int 16 regular  }
	{ grady_mat_data5 int 16 regular {fifo 0 volatile }  }
	{ gradx_mat_data2 int 16 regular {fifo 0 volatile }  }
	{ gradx1_mat_data3 int 16 regular {fifo 1 volatile }  }
	{ gradx2_mat_data4 int 16 regular {fifo 1 volatile }  }
	{ grady1_mat_data6 int 16 regular {fifo 1 volatile }  }
	{ grady2_mat_data7 int 16 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "img_width_load", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "grady_mat_data5", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "gradx_mat_data2", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "gradx1_mat_data3", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "gradx2_mat_data4", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "grady1_mat_data6", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "grady2_mat_data7", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 37
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ grady_mat_data5_dout sc_in sc_lv 16 signal 1 } 
	{ grady_mat_data5_num_data_valid sc_in sc_lv 2 signal 1 } 
	{ grady_mat_data5_fifo_cap sc_in sc_lv 2 signal 1 } 
	{ grady_mat_data5_empty_n sc_in sc_logic 1 signal 1 } 
	{ grady_mat_data5_read sc_out sc_logic 1 signal 1 } 
	{ gradx_mat_data2_dout sc_in sc_lv 16 signal 2 } 
	{ gradx_mat_data2_num_data_valid sc_in sc_lv 2 signal 2 } 
	{ gradx_mat_data2_fifo_cap sc_in sc_lv 2 signal 2 } 
	{ gradx_mat_data2_empty_n sc_in sc_logic 1 signal 2 } 
	{ gradx_mat_data2_read sc_out sc_logic 1 signal 2 } 
	{ gradx1_mat_data3_din sc_out sc_lv 16 signal 3 } 
	{ gradx1_mat_data3_num_data_valid sc_in sc_lv 2 signal 3 } 
	{ gradx1_mat_data3_fifo_cap sc_in sc_lv 2 signal 3 } 
	{ gradx1_mat_data3_full_n sc_in sc_logic 1 signal 3 } 
	{ gradx1_mat_data3_write sc_out sc_logic 1 signal 3 } 
	{ gradx2_mat_data4_din sc_out sc_lv 16 signal 4 } 
	{ gradx2_mat_data4_num_data_valid sc_in sc_lv 2 signal 4 } 
	{ gradx2_mat_data4_fifo_cap sc_in sc_lv 2 signal 4 } 
	{ gradx2_mat_data4_full_n sc_in sc_logic 1 signal 4 } 
	{ gradx2_mat_data4_write sc_out sc_logic 1 signal 4 } 
	{ grady1_mat_data6_din sc_out sc_lv 16 signal 5 } 
	{ grady1_mat_data6_num_data_valid sc_in sc_lv 2 signal 5 } 
	{ grady1_mat_data6_fifo_cap sc_in sc_lv 2 signal 5 } 
	{ grady1_mat_data6_full_n sc_in sc_logic 1 signal 5 } 
	{ grady1_mat_data6_write sc_out sc_logic 1 signal 5 } 
	{ grady2_mat_data7_din sc_out sc_lv 16 signal 6 } 
	{ grady2_mat_data7_num_data_valid sc_in sc_lv 2 signal 6 } 
	{ grady2_mat_data7_fifo_cap sc_in sc_lv 2 signal 6 } 
	{ grady2_mat_data7_full_n sc_in sc_logic 1 signal 6 } 
	{ grady2_mat_data7_write sc_out sc_logic 1 signal 6 } 
	{ img_width_load sc_in sc_lv 16 signal 0 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "grady_mat_data5_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "grady_mat_data5", "role": "dout" }} , 
 	{ "name": "grady_mat_data5_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grady_mat_data5", "role": "num_data_valid" }} , 
 	{ "name": "grady_mat_data5_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grady_mat_data5", "role": "fifo_cap" }} , 
 	{ "name": "grady_mat_data5_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grady_mat_data5", "role": "empty_n" }} , 
 	{ "name": "grady_mat_data5_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grady_mat_data5", "role": "read" }} , 
 	{ "name": "gradx_mat_data2_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "gradx_mat_data2", "role": "dout" }} , 
 	{ "name": "gradx_mat_data2_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gradx_mat_data2", "role": "num_data_valid" }} , 
 	{ "name": "gradx_mat_data2_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gradx_mat_data2", "role": "fifo_cap" }} , 
 	{ "name": "gradx_mat_data2_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gradx_mat_data2", "role": "empty_n" }} , 
 	{ "name": "gradx_mat_data2_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gradx_mat_data2", "role": "read" }} , 
 	{ "name": "gradx1_mat_data3_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "gradx1_mat_data3", "role": "din" }} , 
 	{ "name": "gradx1_mat_data3_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gradx1_mat_data3", "role": "num_data_valid" }} , 
 	{ "name": "gradx1_mat_data3_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gradx1_mat_data3", "role": "fifo_cap" }} , 
 	{ "name": "gradx1_mat_data3_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gradx1_mat_data3", "role": "full_n" }} , 
 	{ "name": "gradx1_mat_data3_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gradx1_mat_data3", "role": "write" }} , 
 	{ "name": "gradx2_mat_data4_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "gradx2_mat_data4", "role": "din" }} , 
 	{ "name": "gradx2_mat_data4_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gradx2_mat_data4", "role": "num_data_valid" }} , 
 	{ "name": "gradx2_mat_data4_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gradx2_mat_data4", "role": "fifo_cap" }} , 
 	{ "name": "gradx2_mat_data4_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gradx2_mat_data4", "role": "full_n" }} , 
 	{ "name": "gradx2_mat_data4_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gradx2_mat_data4", "role": "write" }} , 
 	{ "name": "grady1_mat_data6_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "grady1_mat_data6", "role": "din" }} , 
 	{ "name": "grady1_mat_data6_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grady1_mat_data6", "role": "num_data_valid" }} , 
 	{ "name": "grady1_mat_data6_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grady1_mat_data6", "role": "fifo_cap" }} , 
 	{ "name": "grady1_mat_data6_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grady1_mat_data6", "role": "full_n" }} , 
 	{ "name": "grady1_mat_data6_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grady1_mat_data6", "role": "write" }} , 
 	{ "name": "grady2_mat_data7_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "grady2_mat_data7", "role": "din" }} , 
 	{ "name": "grady2_mat_data7_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grady2_mat_data7", "role": "num_data_valid" }} , 
 	{ "name": "grady2_mat_data7_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grady2_mat_data7", "role": "fifo_cap" }} , 
 	{ "name": "grady2_mat_data7_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grady2_mat_data7", "role": "full_n" }} , 
 	{ "name": "grady2_mat_data7_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grady2_mat_data7", "role": "write" }} , 
 	{ "name": "img_width_load", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "img_width_load", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "xFDuplicate_rows_Pipeline_Col_Loop",
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
			{"Name" : "img_width_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "grady_mat_data5", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "grady_mat_data5_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "gradx_mat_data2", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "gradx_mat_data2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "gradx1_mat_data3", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "gradx1_mat_data3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "gradx2_mat_data4", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "gradx2_mat_data4_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "grady1_mat_data6", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "grady1_mat_data6_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "grady2_mat_data7", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "grady2_mat_data7_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "Col_Loop", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	xFDuplicate_rows_Pipeline_Col_Loop {
		img_width_load {Type I LastRead 0 FirstWrite -1}
		grady_mat_data5 {Type I LastRead 1 FirstWrite -1}
		gradx_mat_data2 {Type I LastRead 1 FirstWrite -1}
		gradx1_mat_data3 {Type O LastRead -1 FirstWrite 1}
		gradx2_mat_data4 {Type O LastRead -1 FirstWrite 1}
		grady1_mat_data6 {Type O LastRead -1 FirstWrite 1}
		grady2_mat_data7 {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1922", "Max" : "1922"}
	, {"Name" : "Interval", "Min" : "1922", "Max" : "1922"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	img_width_load { ap_none {  { img_width_load in_data 0 16 } } }
	grady_mat_data5 { ap_fifo {  { grady_mat_data5_dout fifo_port_we 0 16 }  { grady_mat_data5_num_data_valid fifo_status_num_data_valid 0 2 }  { grady_mat_data5_fifo_cap fifo_update 0 2 }  { grady_mat_data5_empty_n fifo_status 0 1 }  { grady_mat_data5_read fifo_data 1 1 } } }
	gradx_mat_data2 { ap_fifo {  { gradx_mat_data2_dout fifo_port_we 0 16 }  { gradx_mat_data2_num_data_valid fifo_status_num_data_valid 0 2 }  { gradx_mat_data2_fifo_cap fifo_update 0 2 }  { gradx_mat_data2_empty_n fifo_status 0 1 }  { gradx_mat_data2_read fifo_data 1 1 } } }
	gradx1_mat_data3 { ap_fifo {  { gradx1_mat_data3_din fifo_port_we 1 16 }  { gradx1_mat_data3_num_data_valid fifo_status_num_data_valid 0 2 }  { gradx1_mat_data3_fifo_cap fifo_update 0 2 }  { gradx1_mat_data3_full_n fifo_status 0 1 }  { gradx1_mat_data3_write fifo_data 1 1 } } }
	gradx2_mat_data4 { ap_fifo {  { gradx2_mat_data4_din fifo_port_we 1 16 }  { gradx2_mat_data4_num_data_valid fifo_status_num_data_valid 0 2 }  { gradx2_mat_data4_fifo_cap fifo_update 0 2 }  { gradx2_mat_data4_full_n fifo_status 0 1 }  { gradx2_mat_data4_write fifo_data 1 1 } } }
	grady1_mat_data6 { ap_fifo {  { grady1_mat_data6_din fifo_port_we 1 16 }  { grady1_mat_data6_num_data_valid fifo_status_num_data_valid 0 2 }  { grady1_mat_data6_fifo_cap fifo_update 0 2 }  { grady1_mat_data6_full_n fifo_status 0 1 }  { grady1_mat_data6_write fifo_data 1 1 } } }
	grady2_mat_data7 { ap_fifo {  { grady2_mat_data7_din fifo_port_we 1 16 }  { grady2_mat_data7_num_data_valid fifo_status_num_data_valid 0 2 }  { grady2_mat_data7_fifo_cap fifo_update 0 2 }  { grady2_mat_data7_full_n fifo_status 0 1 }  { grady2_mat_data7_write fifo_data 1 1 } } }
}
