set moduleName xFSuppression3x3_2_0_8_1080_1920_3_0_12_1_2_5_1_0_1920_5760_2_s
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
set C_modelName {xFSuppression3x3<2, 0, 8, 1080, 1920, 3, 0, 12, 1, 2, 5, 1, 0, 1920, 5760, 2>}
set C_modelType { void 0 }
set C_modelArgList {
	{ magnitude_mat_data8 int 16 regular {fifo 0 volatile }  }
	{ phase_mat_data9 int 8 regular {fifo 0 volatile }  }
	{ nms_mat_data10 int 2 regular {fifo 1 volatile }  }
	{ low_threshold int 8 regular {fifo 0}  }
	{ high_threshold int 8 regular {fifo 0}  }
	{ imgheight int 16 regular {fifo 0}  }
	{ imgwidth int 16 regular {fifo 0}  }
	{ img_height_c int 16 regular {fifo 1}  }
	{ img_width_c int 16 regular {fifo 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "magnitude_mat_data8", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "phase_mat_data9", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "nms_mat_data10", "interface" : "fifo", "bitwidth" : 2, "direction" : "WRITEONLY"} , 
 	{ "Name" : "low_threshold", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "high_threshold", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "imgheight", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "imgwidth", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "img_height_c", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "img_width_c", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 58
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
	{ magnitude_mat_data8_dout sc_in sc_lv 16 signal 0 } 
	{ magnitude_mat_data8_num_data_valid sc_in sc_lv 2 signal 0 } 
	{ magnitude_mat_data8_fifo_cap sc_in sc_lv 2 signal 0 } 
	{ magnitude_mat_data8_empty_n sc_in sc_logic 1 signal 0 } 
	{ magnitude_mat_data8_read sc_out sc_logic 1 signal 0 } 
	{ phase_mat_data9_dout sc_in sc_lv 8 signal 1 } 
	{ phase_mat_data9_num_data_valid sc_in sc_lv 14 signal 1 } 
	{ phase_mat_data9_fifo_cap sc_in sc_lv 14 signal 1 } 
	{ phase_mat_data9_empty_n sc_in sc_logic 1 signal 1 } 
	{ phase_mat_data9_read sc_out sc_logic 1 signal 1 } 
	{ nms_mat_data10_din sc_out sc_lv 2 signal 2 } 
	{ nms_mat_data10_num_data_valid sc_in sc_lv 2 signal 2 } 
	{ nms_mat_data10_fifo_cap sc_in sc_lv 2 signal 2 } 
	{ nms_mat_data10_full_n sc_in sc_logic 1 signal 2 } 
	{ nms_mat_data10_write sc_out sc_logic 1 signal 2 } 
	{ low_threshold_dout sc_in sc_lv 8 signal 3 } 
	{ low_threshold_num_data_valid sc_in sc_lv 4 signal 3 } 
	{ low_threshold_fifo_cap sc_in sc_lv 4 signal 3 } 
	{ low_threshold_empty_n sc_in sc_logic 1 signal 3 } 
	{ low_threshold_read sc_out sc_logic 1 signal 3 } 
	{ high_threshold_dout sc_in sc_lv 8 signal 4 } 
	{ high_threshold_num_data_valid sc_in sc_lv 4 signal 4 } 
	{ high_threshold_fifo_cap sc_in sc_lv 4 signal 4 } 
	{ high_threshold_empty_n sc_in sc_logic 1 signal 4 } 
	{ high_threshold_read sc_out sc_logic 1 signal 4 } 
	{ imgheight_dout sc_in sc_lv 16 signal 5 } 
	{ imgheight_num_data_valid sc_in sc_lv 2 signal 5 } 
	{ imgheight_fifo_cap sc_in sc_lv 2 signal 5 } 
	{ imgheight_empty_n sc_in sc_logic 1 signal 5 } 
	{ imgheight_read sc_out sc_logic 1 signal 5 } 
	{ imgwidth_dout sc_in sc_lv 16 signal 6 } 
	{ imgwidth_num_data_valid sc_in sc_lv 2 signal 6 } 
	{ imgwidth_fifo_cap sc_in sc_lv 2 signal 6 } 
	{ imgwidth_empty_n sc_in sc_logic 1 signal 6 } 
	{ imgwidth_read sc_out sc_logic 1 signal 6 } 
	{ img_height_c_din sc_out sc_lv 16 signal 7 } 
	{ img_height_c_num_data_valid sc_in sc_lv 2 signal 7 } 
	{ img_height_c_fifo_cap sc_in sc_lv 2 signal 7 } 
	{ img_height_c_full_n sc_in sc_logic 1 signal 7 } 
	{ img_height_c_write sc_out sc_logic 1 signal 7 } 
	{ img_width_c_din sc_out sc_lv 16 signal 8 } 
	{ img_width_c_num_data_valid sc_in sc_lv 2 signal 8 } 
	{ img_width_c_fifo_cap sc_in sc_lv 2 signal 8 } 
	{ img_width_c_full_n sc_in sc_logic 1 signal 8 } 
	{ img_width_c_write sc_out sc_logic 1 signal 8 } 
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
 	{ "name": "nms_mat_data10_din", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "nms_mat_data10", "role": "din" }} , 
 	{ "name": "nms_mat_data10_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "nms_mat_data10", "role": "num_data_valid" }} , 
 	{ "name": "nms_mat_data10_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "nms_mat_data10", "role": "fifo_cap" }} , 
 	{ "name": "nms_mat_data10_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "nms_mat_data10", "role": "full_n" }} , 
 	{ "name": "nms_mat_data10_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "nms_mat_data10", "role": "write" }} , 
 	{ "name": "low_threshold_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "low_threshold", "role": "dout" }} , 
 	{ "name": "low_threshold_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "low_threshold", "role": "num_data_valid" }} , 
 	{ "name": "low_threshold_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "low_threshold", "role": "fifo_cap" }} , 
 	{ "name": "low_threshold_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "low_threshold", "role": "empty_n" }} , 
 	{ "name": "low_threshold_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "low_threshold", "role": "read" }} , 
 	{ "name": "high_threshold_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "high_threshold", "role": "dout" }} , 
 	{ "name": "high_threshold_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "high_threshold", "role": "num_data_valid" }} , 
 	{ "name": "high_threshold_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "high_threshold", "role": "fifo_cap" }} , 
 	{ "name": "high_threshold_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "high_threshold", "role": "empty_n" }} , 
 	{ "name": "high_threshold_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "high_threshold", "role": "read" }} , 
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
 	{ "name": "img_height_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "img_height_c", "role": "din" }} , 
 	{ "name": "img_height_c_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "img_height_c", "role": "num_data_valid" }} , 
 	{ "name": "img_height_c_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "img_height_c", "role": "fifo_cap" }} , 
 	{ "name": "img_height_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_height_c", "role": "full_n" }} , 
 	{ "name": "img_height_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_height_c", "role": "write" }} , 
 	{ "name": "img_width_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "img_width_c", "role": "din" }} , 
 	{ "name": "img_width_c_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "img_width_c", "role": "num_data_valid" }} , 
 	{ "name": "img_width_c_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "img_width_c", "role": "fifo_cap" }} , 
 	{ "name": "img_width_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_width_c", "role": "full_n" }} , 
 	{ "name": "img_width_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_width_c", "role": "write" }} , 
 	{ "name": "ap_ext_blocking_n", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_ext_blocking_n", "role": "default" }} , 
 	{ "name": "ap_str_blocking_n", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_str_blocking_n", "role": "default" }} , 
 	{ "name": "ap_int_blocking_n", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_int_blocking_n", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "8"],
		"CDFG" : "xFSuppression3x3_2_0_8_1080_1920_3_0_12_1_2_5_1_0_1920_5760_2_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2084166", "EstimateLatencyMax" : "2084166",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "magnitude_mat_data8", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_xFSuppression3x3_Pipeline_bufColLoop_fu_219", "Port" : "magnitude_mat_data8", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "8", "SubInstance" : "grp_xFSuppression3x3_Pipeline_colLoop1_fu_231", "Port" : "magnitude_mat_data8", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "phase_mat_data9", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "5760", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_xFSuppression3x3_Pipeline_bufColLoop_fu_219", "Port" : "phase_mat_data9", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "8", "SubInstance" : "grp_xFSuppression3x3_Pipeline_colLoop1_fu_231", "Port" : "phase_mat_data9", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "nms_mat_data10", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "nms_mat_data10_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "grp_xFSuppression3x3_Pipeline_colLoop1_fu_231", "Port" : "nms_mat_data10", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "low_threshold", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "6", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "low_threshold_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "high_threshold", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "6", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "high_threshold_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "imgheight", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "imgheight_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "imgwidth", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "imgwidth_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "img_height_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "img_height_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "img_width_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "img_width_c_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "rowLoop", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "7", "FirstState" : "ap_ST_fsm_state5", "LastState" : ["ap_ST_fsm_state7"], "QuitState" : ["ap_ST_fsm_state5"], "PreState" : ["ap_ST_fsm_state4"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.angle_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.angle_V_1_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_V_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_V_1_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_V_2_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_xFSuppression3x3_Pipeline_bufColLoop_fu_219", "Parent" : "0", "Child" : ["7"],
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
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_xFSuppression3x3_Pipeline_bufColLoop_fu_219.flow_control_loop_pipe_sequential_init_U", "Parent" : "6"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_xFSuppression3x3_Pipeline_colLoop1_fu_231", "Parent" : "0", "Child" : ["9", "10", "11", "12", "13", "14", "15", "16"],
		"CDFG" : "xFSuppression3x3_Pipeline_colLoop1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1925", "EstimateLatencyMax" : "1925",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "imgwidth_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln1035", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln1035_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "buf_V", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "buf_V_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "buf_V_2", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "top_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "mid_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "bottom_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "angle_V", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "angle_V_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "write_ind_V_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "phase_mat_data9", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "phase_mat_data9_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "read_ind_V_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "magnitude_mat_data8", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "magnitude_mat_data8_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "row_ind_V_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp_i_i163_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "nms_mat_data10", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "nms_mat_data10_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "agg_tmp31_i_i_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "agg_tmp23_i_i_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "agg_tmp20_i_i_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "agg_tmp12_i_i_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "agg_tmp9_i_i_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "agg_tmp2_i_i_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "agg_tmp131_0_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "colLoop1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter4", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter3", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_xFSuppression3x3_Pipeline_colLoop1_fu_231.l00_buf_V_xfExtractPixels_1_5_3_s_fu_464", "Parent" : "8",
		"CDFG" : "xfExtractPixels_1_5_3_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_xFSuppression3x3_Pipeline_colLoop1_fu_231.l10_buf_V_xfExtractPixels_1_5_3_s_fu_469", "Parent" : "8",
		"CDFG" : "xfExtractPixels_1_5_3_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_xFSuppression3x3_Pipeline_colLoop1_fu_231.l20_buf_V_xfExtractPixels_1_5_3_s_fu_474", "Parent" : "8",
		"CDFG" : "xfExtractPixels_1_5_3_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_xFSuppression3x3_Pipeline_colLoop1_fu_231.grp_xfExtractPixels_1_1_0_s_fu_479", "Parent" : "8",
		"CDFG" : "xfExtractPixels_1_1_0_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_xFSuppression3x3_Pipeline_colLoop1_fu_231.mux_32_16_1_1_U202", "Parent" : "8"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_xFSuppression3x3_Pipeline_colLoop1_fu_231.mux_32_16_1_1_U203", "Parent" : "8"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_xFSuppression3x3_Pipeline_colLoop1_fu_231.mux_32_16_1_1_U204", "Parent" : "8"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_xFSuppression3x3_Pipeline_colLoop1_fu_231.flow_control_loop_pipe_sequential_init_U", "Parent" : "8"}]}


set ArgLastReadFirstWriteLatency {
	xFSuppression3x3_2_0_8_1080_1920_3_0_12_1_2_5_1_0_1920_5760_2_s {
		magnitude_mat_data8 {Type I LastRead 1 FirstWrite -1}
		phase_mat_data9 {Type I LastRead 1 FirstWrite -1}
		nms_mat_data10 {Type O LastRead -1 FirstWrite 4}
		low_threshold {Type I LastRead 0 FirstWrite -1}
		high_threshold {Type I LastRead 0 FirstWrite -1}
		imgheight {Type I LastRead 0 FirstWrite -1}
		imgwidth {Type I LastRead 0 FirstWrite -1}
		img_height_c {Type O LastRead -1 FirstWrite 0}
		img_width_c {Type O LastRead -1 FirstWrite 0}}
	xFSuppression3x3_Pipeline_bufColLoop {
		imgwidth_load {Type I LastRead 0 FirstWrite -1}
		angle_V {Type O LastRead -1 FirstWrite 1}
		buf_V_1 {Type O LastRead -1 FirstWrite 1}
		buf_V {Type O LastRead -1 FirstWrite 0}
		magnitude_mat_data8 {Type I LastRead 1 FirstWrite -1}
		phase_mat_data9 {Type I LastRead 1 FirstWrite -1}}
	xFSuppression3x3_Pipeline_colLoop1 {
		imgwidth_load {Type I LastRead 0 FirstWrite -1}
		zext_ln1035 {Type I LastRead 0 FirstWrite -1}
		zext_ln1035_1 {Type I LastRead 0 FirstWrite -1}
		buf_V {Type IO LastRead 2 FirstWrite 1}
		buf_V_1 {Type IO LastRead 2 FirstWrite 1}
		buf_V_2 {Type IO LastRead 2 FirstWrite 1}
		top_V {Type I LastRead 0 FirstWrite -1}
		mid_V {Type I LastRead 0 FirstWrite -1}
		bottom_V {Type I LastRead 0 FirstWrite -1}
		angle_V {Type IO LastRead 2 FirstWrite 1}
		angle_V_1 {Type IO LastRead 2 FirstWrite 1}
		write_ind_V_cast {Type I LastRead 0 FirstWrite -1}
		phase_mat_data9 {Type I LastRead 1 FirstWrite -1}
		read_ind_V_cast {Type I LastRead 0 FirstWrite -1}
		magnitude_mat_data8 {Type I LastRead 1 FirstWrite -1}
		row_ind_V_cast {Type I LastRead 0 FirstWrite -1}
		cmp_i_i163_i {Type I LastRead 0 FirstWrite -1}
		nms_mat_data10 {Type O LastRead -1 FirstWrite 4}
		agg_tmp31_i_i_0_out {Type O LastRead -1 FirstWrite 3}
		agg_tmp23_i_i_0_out {Type O LastRead -1 FirstWrite 3}
		agg_tmp20_i_i_0_out {Type O LastRead -1 FirstWrite 3}
		agg_tmp12_i_i_0_out {Type O LastRead -1 FirstWrite 3}
		agg_tmp9_i_i_0_out {Type O LastRead -1 FirstWrite 3}
		agg_tmp2_i_i_0_out {Type O LastRead -1 FirstWrite 3}
		agg_tmp131_0_out {Type O LastRead -1 FirstWrite 3}}
	xfExtractPixels_1_5_3_s {
		p_read1 {Type I LastRead 0 FirstWrite -1}}
	xfExtractPixels_1_5_3_s {
		p_read1 {Type I LastRead 0 FirstWrite -1}}
	xfExtractPixels_1_5_3_s {
		p_read1 {Type I LastRead 0 FirstWrite -1}}
	xfExtractPixels_1_1_0_s {
		p_read1 {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "2084166", "Max" : "2084166"}
	, {"Name" : "Interval", "Min" : "2084166", "Max" : "2084166"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	magnitude_mat_data8 { ap_fifo {  { magnitude_mat_data8_dout fifo_port_we 0 16 }  { magnitude_mat_data8_num_data_valid fifo_status_num_data_valid 0 2 }  { magnitude_mat_data8_fifo_cap fifo_update 0 2 }  { magnitude_mat_data8_empty_n fifo_status 0 1 }  { magnitude_mat_data8_read fifo_data 1 1 } } }
	phase_mat_data9 { ap_fifo {  { phase_mat_data9_dout fifo_port_we 0 8 }  { phase_mat_data9_num_data_valid fifo_status_num_data_valid 0 14 }  { phase_mat_data9_fifo_cap fifo_update 0 14 }  { phase_mat_data9_empty_n fifo_status 0 1 }  { phase_mat_data9_read fifo_data 1 1 } } }
	nms_mat_data10 { ap_fifo {  { nms_mat_data10_din fifo_port_we 1 2 }  { nms_mat_data10_num_data_valid fifo_status_num_data_valid 0 2 }  { nms_mat_data10_fifo_cap fifo_update 0 2 }  { nms_mat_data10_full_n fifo_status 0 1 }  { nms_mat_data10_write fifo_data 1 1 } } }
	low_threshold { ap_fifo {  { low_threshold_dout fifo_port_we 0 8 }  { low_threshold_num_data_valid fifo_status_num_data_valid 0 4 }  { low_threshold_fifo_cap fifo_update 0 4 }  { low_threshold_empty_n fifo_status 0 1 }  { low_threshold_read fifo_data 1 1 } } }
	high_threshold { ap_fifo {  { high_threshold_dout fifo_port_we 0 8 }  { high_threshold_num_data_valid fifo_status_num_data_valid 0 4 }  { high_threshold_fifo_cap fifo_update 0 4 }  { high_threshold_empty_n fifo_status 0 1 }  { high_threshold_read fifo_data 1 1 } } }
	imgheight { ap_fifo {  { imgheight_dout fifo_port_we 0 16 }  { imgheight_num_data_valid fifo_status_num_data_valid 0 2 }  { imgheight_fifo_cap fifo_update 0 2 }  { imgheight_empty_n fifo_status 0 1 }  { imgheight_read fifo_data 1 1 } } }
	imgwidth { ap_fifo {  { imgwidth_dout fifo_port_we 0 16 }  { imgwidth_num_data_valid fifo_status_num_data_valid 0 2 }  { imgwidth_fifo_cap fifo_update 0 2 }  { imgwidth_empty_n fifo_status 0 1 }  { imgwidth_read fifo_data 1 1 } } }
	img_height_c { ap_fifo {  { img_height_c_din fifo_port_we 1 16 }  { img_height_c_num_data_valid fifo_status_num_data_valid 0 2 }  { img_height_c_fifo_cap fifo_update 0 2 }  { img_height_c_full_n fifo_status 0 1 }  { img_height_c_write fifo_data 1 1 } } }
	img_width_c { ap_fifo {  { img_width_c_din fifo_port_we 1 16 }  { img_width_c_num_data_valid fifo_status_num_data_valid 0 2 }  { img_width_c_fifo_cap fifo_update 0 2 }  { img_width_c_full_n fifo_status 0 1 }  { img_width_c_write fifo_data 1 1 } } }
}
