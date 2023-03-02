set moduleName Canny_3_0_0_8_1080_1920_1_32_false_2_2_s
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
set C_modelName {Canny<3, 0, 0, 8, 1080, 1920, 1, 32, false, 2, 2>}
set C_modelType { void 0 }
set C_modelArgList {
	{ in_mat_rows int 32 regular {fifo 0}  }
	{ in_mat_cols int 32 regular {fifo 0}  }
	{ in_mat_data int 8 regular {fifo 0 volatile }  }
	{ dst_mat_data int 64 regular {fifo 1 volatile }  }
	{ low_threshold int 32 regular {fifo 0}  }
	{ high_threshold int 32 regular {fifo 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "in_mat_rows", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "in_mat_cols", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "in_mat_data", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "dst_mat_data", "interface" : "fifo", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "low_threshold", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "high_threshold", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 37
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ in_mat_rows_dout sc_in sc_lv 32 signal 0 } 
	{ in_mat_rows_num_data_valid sc_in sc_lv 2 signal 0 } 
	{ in_mat_rows_fifo_cap sc_in sc_lv 2 signal 0 } 
	{ in_mat_rows_empty_n sc_in sc_logic 1 signal 0 } 
	{ in_mat_rows_read sc_out sc_logic 1 signal 0 } 
	{ in_mat_cols_dout sc_in sc_lv 32 signal 1 } 
	{ in_mat_cols_num_data_valid sc_in sc_lv 2 signal 1 } 
	{ in_mat_cols_fifo_cap sc_in sc_lv 2 signal 1 } 
	{ in_mat_cols_empty_n sc_in sc_logic 1 signal 1 } 
	{ in_mat_cols_read sc_out sc_logic 1 signal 1 } 
	{ in_mat_data_dout sc_in sc_lv 8 signal 2 } 
	{ in_mat_data_num_data_valid sc_in sc_lv 2 signal 2 } 
	{ in_mat_data_fifo_cap sc_in sc_lv 2 signal 2 } 
	{ in_mat_data_empty_n sc_in sc_logic 1 signal 2 } 
	{ in_mat_data_read sc_out sc_logic 1 signal 2 } 
	{ dst_mat_data_din sc_out sc_lv 64 signal 3 } 
	{ dst_mat_data_num_data_valid sc_in sc_lv 2 signal 3 } 
	{ dst_mat_data_fifo_cap sc_in sc_lv 2 signal 3 } 
	{ dst_mat_data_full_n sc_in sc_logic 1 signal 3 } 
	{ dst_mat_data_write sc_out sc_logic 1 signal 3 } 
	{ low_threshold_dout sc_in sc_lv 32 signal 4 } 
	{ low_threshold_num_data_valid sc_in sc_lv 3 signal 4 } 
	{ low_threshold_fifo_cap sc_in sc_lv 3 signal 4 } 
	{ low_threshold_empty_n sc_in sc_logic 1 signal 4 } 
	{ low_threshold_read sc_out sc_logic 1 signal 4 } 
	{ high_threshold_dout sc_in sc_lv 32 signal 5 } 
	{ high_threshold_num_data_valid sc_in sc_lv 3 signal 5 } 
	{ high_threshold_fifo_cap sc_in sc_lv 3 signal 5 } 
	{ high_threshold_empty_n sc_in sc_logic 1 signal 5 } 
	{ high_threshold_read sc_out sc_logic 1 signal 5 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "in_mat_rows_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in_mat_rows", "role": "dout" }} , 
 	{ "name": "in_mat_rows_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "in_mat_rows", "role": "num_data_valid" }} , 
 	{ "name": "in_mat_rows_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "in_mat_rows", "role": "fifo_cap" }} , 
 	{ "name": "in_mat_rows_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_mat_rows", "role": "empty_n" }} , 
 	{ "name": "in_mat_rows_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_mat_rows", "role": "read" }} , 
 	{ "name": "in_mat_cols_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in_mat_cols", "role": "dout" }} , 
 	{ "name": "in_mat_cols_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "in_mat_cols", "role": "num_data_valid" }} , 
 	{ "name": "in_mat_cols_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "in_mat_cols", "role": "fifo_cap" }} , 
 	{ "name": "in_mat_cols_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_mat_cols", "role": "empty_n" }} , 
 	{ "name": "in_mat_cols_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_mat_cols", "role": "read" }} , 
 	{ "name": "in_mat_data_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "in_mat_data", "role": "dout" }} , 
 	{ "name": "in_mat_data_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "in_mat_data", "role": "num_data_valid" }} , 
 	{ "name": "in_mat_data_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "in_mat_data", "role": "fifo_cap" }} , 
 	{ "name": "in_mat_data_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_mat_data", "role": "empty_n" }} , 
 	{ "name": "in_mat_data_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_mat_data", "role": "read" }} , 
 	{ "name": "dst_mat_data_din", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "dst_mat_data", "role": "din" }} , 
 	{ "name": "dst_mat_data_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "dst_mat_data", "role": "num_data_valid" }} , 
 	{ "name": "dst_mat_data_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "dst_mat_data", "role": "fifo_cap" }} , 
 	{ "name": "dst_mat_data_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dst_mat_data", "role": "full_n" }} , 
 	{ "name": "dst_mat_data_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dst_mat_data", "role": "write" }} , 
 	{ "name": "low_threshold_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "low_threshold", "role": "dout" }} , 
 	{ "name": "low_threshold_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "low_threshold", "role": "num_data_valid" }} , 
 	{ "name": "low_threshold_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "low_threshold", "role": "fifo_cap" }} , 
 	{ "name": "low_threshold_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "low_threshold", "role": "empty_n" }} , 
 	{ "name": "low_threshold_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "low_threshold", "role": "read" }} , 
 	{ "name": "high_threshold_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "high_threshold", "role": "dout" }} , 
 	{ "name": "high_threshold_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "high_threshold", "role": "num_data_valid" }} , 
 	{ "name": "high_threshold_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "high_threshold", "role": "fifo_cap" }} , 
 	{ "name": "high_threshold_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "high_threshold", "role": "empty_n" }} , 
 	{ "name": "high_threshold_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "high_threshold", "role": "read" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "Canny_3_0_0_8_1080_1920_1_32_false_2_2_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2089955", "EstimateLatencyMax" : "2089955",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "in_mat_rows", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "in_mat_rows_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "in_mat_cols", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "in_mat_cols_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "in_mat_data", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_xFCannyKernel_fu_60", "Port" : "in_mat_data1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "dst_mat_data", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_xFCannyKernel_fu_60", "Port" : "dst_mat_data2", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "low_threshold", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "low_threshold_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "high_threshold", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "high_threshold_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_xFCannyKernel_fu_60", "Parent" : "0", "Child" : ["2", "3", "17", "36", "39", "40", "43", "47", "64", "68", "69", "70", "71", "72", "73", "74", "75", "76", "77", "78", "79", "80", "81", "82", "83", "84", "85", "86", "87", "88", "89", "90", "91", "92", "93", "94", "95", "96"],
		"CDFG" : "xFCannyKernel",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2089954", "EstimateLatencyMax" : "2089954",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"InputProcess" : [
			{"ID" : "2", "Name" : "entry_proc16_U0"},
			{"ID" : "3", "Name" : "xFAverageGaussianMask3x3_0_0_1080_1920_0_1_2_2_1_1920_U0"},
			{"ID" : "39", "Name" : "xFCannyKernel_Block_entry15_proc_U0"}],
		"OutputProcess" : [
			{"ID" : "64", "Name" : "xFPackNMS_8_8_1080_1920_12_12_1_32_2_2_0_20_U0"}],
		"Port" : [
			{"Name" : "in_mat_data1", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "xFAverageGaussianMask3x3_0_0_1080_1920_0_1_2_2_1_1920_U0", "Port" : "in_mat_data1"}]},
			{"Name" : "dst_mat_data2", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "64", "SubInstance" : "xFPackNMS_8_8_1080_1920_12_12_1_32_2_2_0_20_U0", "Port" : "dst_mat_data2"}]},
			{"Name" : "p_lowthreshold", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_highthreshold", "Type" : "None", "Direction" : "I"},
			{"Name" : "img_height", "Type" : "None", "Direction" : "I"},
			{"Name" : "img_width", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_xFCannyKernel_fu_60.entry_proc16_U0", "Parent" : "1",
		"CDFG" : "entry_proc16",
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
			{"Name" : "p_lowthreshold", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_lowthreshold_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["47"], "DependentChan" : "68", "DependentChanDepth" : "6", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "p_lowthreshold_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_highthreshold", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_highthreshold_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["47"], "DependentChan" : "69", "DependentChanDepth" : "6", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "p_highthreshold_c_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_xFCannyKernel_fu_60.xFAverageGaussianMask3x3_0_0_1080_1920_0_1_2_2_1_1920_U0", "Parent" : "1", "Child" : ["4", "5", "6", "7", "9"],
		"CDFG" : "xFAverageGaussianMask3x3_0_0_1080_1920_0_1_2_2_1_1920_s",
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
			{"Name" : "in_mat_data1", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_xFAverageGaussianMask3x3_Pipeline_Col_Loop_fu_190", "Port" : "in_mat_data1", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "7", "SubInstance" : "grp_xFAverageGaussianMask3x3_Pipeline_Clear_Row_Loop_fu_181", "Port" : "in_mat_data1", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "gaussian_mat_data1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["17"], "DependentChan" : "70", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "gaussian_mat_data1_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_xFAverageGaussianMask3x3_Pipeline_Col_Loop_fu_190", "Port" : "gaussian_mat_data1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "img_height", "Type" : "None", "Direction" : "I"},
			{"Name" : "img_width", "Type" : "None", "Direction" : "I"},
			{"Name" : "img_height_c22", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["17"], "DependentChan" : "71", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "img_height_c22_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "img_width_c26", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["17"], "DependentChan" : "72", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "img_width_c26_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "Row_Loop", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "7", "FirstState" : "ap_ST_fsm_state5", "LastState" : ["ap_ST_fsm_state7"], "QuitState" : ["ap_ST_fsm_state5"], "PreState" : ["ap_ST_fsm_state4"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "4", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_xFCannyKernel_fu_60.xFAverageGaussianMask3x3_0_0_1080_1920_0_1_2_2_1_1920_U0.buf_V_U", "Parent" : "3"},
	{"ID" : "5", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_xFCannyKernel_fu_60.xFAverageGaussianMask3x3_0_0_1080_1920_0_1_2_2_1_1920_U0.buf_V_5_U", "Parent" : "3"},
	{"ID" : "6", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_xFCannyKernel_fu_60.xFAverageGaussianMask3x3_0_0_1080_1920_0_1_2_2_1_1920_U0.buf_V_6_U", "Parent" : "3"},
	{"ID" : "7", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_xFCannyKernel_fu_60.xFAverageGaussianMask3x3_0_0_1080_1920_0_1_2_2_1_1920_U0.grp_xFAverageGaussianMask3x3_Pipeline_Clear_Row_Loop_fu_181", "Parent" : "3", "Child" : ["8"],
		"CDFG" : "xFAverageGaussianMask3x3_Pipeline_Clear_Row_Loop",
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
			{"Name" : "img_width", "Type" : "None", "Direction" : "I"},
			{"Name" : "buf_V_5", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buf_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_mat_data1", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "in_mat_data1_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "Clear_Row_Loop", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "8", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_xFCannyKernel_fu_60.xFAverageGaussianMask3x3_0_0_1080_1920_0_1_2_2_1_1920_U0.grp_xFAverageGaussianMask3x3_Pipeline_Clear_Row_Loop_fu_181.flow_control_loop_pipe_sequential_init_U", "Parent" : "7"},
	{"ID" : "9", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_xFCannyKernel_fu_60.xFAverageGaussianMask3x3_0_0_1080_1920_0_1_2_2_1_1920_U0.grp_xFAverageGaussianMask3x3_Pipeline_Col_Loop_fu_190", "Parent" : "3", "Child" : ["10", "11", "12", "13", "14", "15", "16"],
		"CDFG" : "xFAverageGaussianMask3x3_Pipeline_Col_Loop",
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
			{"Name" : "img_width", "Type" : "None", "Direction" : "I"},
			{"Name" : "buf_V", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "buf_V_5", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "buf_V_6", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "tp_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "mid_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "bottom_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_mat_data1", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "in_mat_data1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cmp_i_i422_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "gaussian_mat_data1", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "gaussian_mat_data1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "b1_V_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "b0_V_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "m1_V_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "m0_V_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "t1_V_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "t0_V_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "Col_Loop", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter4", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter3", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "10", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_xFCannyKernel_fu_60.xFAverageGaussianMask3x3_0_0_1080_1920_0_1_2_2_1_1920_U0.grp_xFAverageGaussianMask3x3_Pipeline_Col_Loop_fu_190.src_buf1_V_xfExtractPixels_1_1_0_1_fu_320", "Parent" : "9",
		"CDFG" : "xfExtractPixels_1_1_0_1",
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
	{"ID" : "11", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_xFCannyKernel_fu_60.xFAverageGaussianMask3x3_0_0_1080_1920_0_1_2_2_1_1920_U0.grp_xFAverageGaussianMask3x3_Pipeline_Col_Loop_fu_190.src_buf2_V_xfExtractPixels_1_1_0_1_fu_325", "Parent" : "9",
		"CDFG" : "xfExtractPixels_1_1_0_1",
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
	{"ID" : "12", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_xFCannyKernel_fu_60.xFAverageGaussianMask3x3_0_0_1080_1920_0_1_2_2_1_1920_U0.grp_xFAverageGaussianMask3x3_Pipeline_Col_Loop_fu_190.src_buf3_V_xfExtractPixels_1_1_0_1_fu_330", "Parent" : "9",
		"CDFG" : "xfExtractPixels_1_1_0_1",
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
	{"ID" : "13", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_xFCannyKernel_fu_60.xFAverageGaussianMask3x3_0_0_1080_1920_0_1_2_2_1_1920_U0.grp_xFAverageGaussianMask3x3_Pipeline_Col_Loop_fu_190.mux_32_8_1_1_U75", "Parent" : "9"},
	{"ID" : "14", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_xFCannyKernel_fu_60.xFAverageGaussianMask3x3_0_0_1080_1920_0_1_2_2_1_1920_U0.grp_xFAverageGaussianMask3x3_Pipeline_Col_Loop_fu_190.mux_32_8_1_1_U76", "Parent" : "9"},
	{"ID" : "15", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_xFCannyKernel_fu_60.xFAverageGaussianMask3x3_0_0_1080_1920_0_1_2_2_1_1920_U0.grp_xFAverageGaussianMask3x3_Pipeline_Col_Loop_fu_190.mux_32_8_1_1_U77", "Parent" : "9"},
	{"ID" : "16", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_xFCannyKernel_fu_60.xFAverageGaussianMask3x3_0_0_1080_1920_0_1_2_2_1_1920_U0.grp_xFAverageGaussianMask3x3_Pipeline_Col_Loop_fu_190.flow_control_loop_pipe_sequential_init_U", "Parent" : "9"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_xFCannyKernel_fu_60.xFSobel_0_2_1080_1920_0_3_1_2_2_2_1_5_3_false_U0", "Parent" : "1", "Child" : ["18"],
		"CDFG" : "xFSobel_0_2_1080_1920_0_3_1_2_2_2_1_5_3_false_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2089949", "EstimateLatencyMax" : "2089949",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"StartSource" : "3",
		"StartFifo" : "start_for_xFSobel_0_2_1080_1920_0_3_1_2_2_2_1_5_3_false_U0_U",
		"Port" : [
			{"Name" : "gaussian_mat_data1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["3"], "DependentChan" : "70", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "grp_xFSobel3x3_0_2_1080_1920_0_3_1_2_2_2_1_5_1921_3_9_false_s_fu_68", "Port" : "gaussian_mat_data1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "gradx_mat_data2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["36"], "DependentChan" : "73", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "grp_xFSobel3x3_0_2_1080_1920_0_3_1_2_2_2_1_5_1921_3_9_false_s_fu_68", "Port" : "gradx_mat_data2", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "grady_mat_data5", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["36"], "DependentChan" : "74", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "grp_xFSobel3x3_0_2_1080_1920_0_3_1_2_2_2_1_5_1921_3_9_false_s_fu_68", "Port" : "grady_mat_data5", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "imgheight", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["3"], "DependentChan" : "71", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "imgheight_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "imgwidth", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["3"], "DependentChan" : "72", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "imgwidth_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "img_height_c21", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["36"], "DependentChan" : "75", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "img_height_c21_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "img_width_c25", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["36"], "DependentChan" : "76", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "img_width_c25_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "18", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_xFCannyKernel_fu_60.xFSobel_0_2_1080_1920_0_3_1_2_2_2_1_5_3_false_U0.grp_xFSobel3x3_0_2_1080_1920_0_3_1_2_2_2_1_5_1921_3_9_false_s_fu_68", "Parent" : "17", "Child" : ["19", "20", "21", "22", "24", "26", "29"],
		"CDFG" : "xFSobel3x3_0_2_1080_1920_0_3_1_2_2_2_1_5_1921_3_9_false_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2089948", "EstimateLatencyMax" : "2089948",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "gaussian_mat_data1", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "29", "SubInstance" : "grp_xFSobel3x3_Pipeline_Col_Loop_fu_155", "Port" : "gaussian_mat_data1", "Inst_start_state" : "7", "Inst_end_state" : "8"},
					{"ID" : "24", "SubInstance" : "grp_xFSobel3x3_Pipeline_VITIS_LOOP_468_2_fu_135", "Port" : "gaussian_mat_data1", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "gradx_mat_data2", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "29", "SubInstance" : "grp_xFSobel3x3_Pipeline_Col_Loop_fu_155", "Port" : "gradx_mat_data2", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "grady_mat_data5", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "29", "SubInstance" : "grp_xFSobel3x3_Pipeline_Col_Loop_fu_155", "Port" : "grady_mat_data5", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "img_height", "Type" : "None", "Direction" : "I"},
			{"Name" : "img_width", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "read_lines", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "8", "FirstState" : "ap_ST_fsm_state4", "LastState" : ["ap_ST_fsm_state5"], "QuitState" : ["ap_ST_fsm_state4"], "PreState" : ["ap_ST_fsm_state3"], "PostState" : ["ap_ST_fsm_state6"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "Row_Loop", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "8", "FirstState" : "ap_ST_fsm_state7", "LastState" : ["ap_ST_fsm_state8"], "QuitState" : ["ap_ST_fsm_state7"], "PreState" : ["ap_ST_fsm_state6"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "19", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_xFCannyKernel_fu_60.xFSobel_0_2_1080_1920_0_3_1_2_2_2_1_5_3_false_U0.grp_xFSobel3x3_0_2_1080_1920_0_3_1_2_2_2_1_5_1921_3_9_false_s_fu_68.buf_V_U", "Parent" : "18"},
	{"ID" : "20", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_xFCannyKernel_fu_60.xFSobel_0_2_1080_1920_0_3_1_2_2_2_1_5_3_false_U0.grp_xFSobel3x3_0_2_1080_1920_0_3_1_2_2_2_1_5_1921_3_9_false_s_fu_68.buf_V_3_U", "Parent" : "18"},
	{"ID" : "21", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_xFCannyKernel_fu_60.xFSobel_0_2_1080_1920_0_3_1_2_2_2_1_5_3_false_U0.grp_xFSobel3x3_0_2_1080_1920_0_3_1_2_2_2_1_5_1921_3_9_false_s_fu_68.buf_V_4_U", "Parent" : "18"},
	{"ID" : "22", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_xFCannyKernel_fu_60.xFSobel_0_2_1080_1920_0_3_1_2_2_2_1_5_3_false_U0.grp_xFSobel3x3_0_2_1080_1920_0_3_1_2_2_2_1_5_1921_3_9_false_s_fu_68.grp_xFSobel3x3_Pipeline_VITIS_LOOP_456_1_fu_128", "Parent" : "18", "Child" : ["23"],
		"CDFG" : "xFSobel3x3_Pipeline_VITIS_LOOP_456_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "5", "EstimateLatencyMax" : "5",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "row_ind_V_4_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "row_ind_V_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "row_ind_V_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_456_1", "PipelineType" : "NotSupport"}]},
	{"ID" : "23", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_xFCannyKernel_fu_60.xFSobel_0_2_1080_1920_0_3_1_2_2_2_1_5_3_false_U0.grp_xFSobel3x3_0_2_1080_1920_0_3_1_2_2_2_1_5_1921_3_9_false_s_fu_68.grp_xFSobel3x3_Pipeline_VITIS_LOOP_456_1_fu_128.flow_control_loop_pipe_sequential_init_U", "Parent" : "22"},
	{"ID" : "24", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_xFCannyKernel_fu_60.xFSobel_0_2_1080_1920_0_3_1_2_2_2_1_5_3_false_U0.grp_xFSobel3x3_0_2_1080_1920_0_3_1_2_2_2_1_5_1921_3_9_false_s_fu_68.grp_xFSobel3x3_Pipeline_VITIS_LOOP_468_2_fu_135", "Parent" : "18", "Child" : ["25"],
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
	{"ID" : "25", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_xFCannyKernel_fu_60.xFSobel_0_2_1080_1920_0_3_1_2_2_2_1_5_3_false_U0.grp_xFSobel3x3_0_2_1080_1920_0_3_1_2_2_2_1_5_1921_3_9_false_s_fu_68.grp_xFSobel3x3_Pipeline_VITIS_LOOP_468_2_fu_135.flow_control_loop_pipe_sequential_init_U", "Parent" : "24"},
	{"ID" : "26", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_xFCannyKernel_fu_60.xFSobel_0_2_1080_1920_0_3_1_2_2_2_1_5_3_false_U0.grp_xFSobel3x3_0_2_1080_1920_0_3_1_2_2_2_1_5_1921_3_9_false_s_fu_68.grp_xFSobel3x3_Pipeline_VITIS_LOOP_479_3_fu_146", "Parent" : "18", "Child" : ["27", "28"],
		"CDFG" : "xFSobel3x3_Pipeline_VITIS_LOOP_479_3",
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
			{"Name" : "buf_V", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "buf_V_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buf_V_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "row_ind_V_3_cast", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_479_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "27", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_xFCannyKernel_fu_60.xFSobel_0_2_1080_1920_0_3_1_2_2_2_1_5_3_false_U0.grp_xFSobel3x3_0_2_1080_1920_0_3_1_2_2_2_1_5_1921_3_9_false_s_fu_68.grp_xFSobel3x3_Pipeline_VITIS_LOOP_479_3_fu_146.mux_32_8_1_1_U111", "Parent" : "26"},
	{"ID" : "28", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_xFCannyKernel_fu_60.xFSobel_0_2_1080_1920_0_3_1_2_2_2_1_5_3_false_U0.grp_xFSobel3x3_0_2_1080_1920_0_3_1_2_2_2_1_5_1921_3_9_false_s_fu_68.grp_xFSobel3x3_Pipeline_VITIS_LOOP_479_3_fu_146.flow_control_loop_pipe_sequential_init_U", "Parent" : "26"},
	{"ID" : "29", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_xFCannyKernel_fu_60.xFSobel_0_2_1080_1920_0_3_1_2_2_2_1_5_3_false_U0.grp_xFSobel3x3_0_2_1080_1920_0_3_1_2_2_2_1_5_1921_3_9_false_s_fu_68.grp_xFSobel3x3_Pipeline_Col_Loop_fu_155", "Parent" : "18", "Child" : ["30", "31", "32", "33", "34", "35"],
		"CDFG" : "xFSobel3x3_Pipeline_Col_Loop",
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
			{"Name" : "img_width", "Type" : "None", "Direction" : "I"},
			{"Name" : "buf_V_4", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "buf_V", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "buf_V_3", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "row_ind_V_9", "Type" : "None", "Direction" : "I"},
			{"Name" : "row_ind_V_10", "Type" : "None", "Direction" : "I"},
			{"Name" : "row_ind_V_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "sub_i460_i_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "row_ind_V_9_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "spec_select57", "Type" : "None", "Direction" : "I"},
			{"Name" : "row_ind_V_10_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "spec_select61", "Type" : "None", "Direction" : "I"},
			{"Name" : "row_ind_V_11_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "spec_select65", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp_i_i554_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "gaussian_mat_data1", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "gaussian_mat_data1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "gradx_mat_data2", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "gradx_mat_data2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "grady_mat_data5", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "grady_mat_data5_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "Col_Loop", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter4", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter3", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "30", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_xFCannyKernel_fu_60.xFSobel_0_2_1080_1920_0_3_1_2_2_2_1_5_3_false_U0.grp_xFSobel3x3_0_2_1080_1920_0_3_1_2_2_2_1_5_1921_3_9_false_s_fu_68.grp_xFSobel3x3_Pipeline_Col_Loop_fu_155.mux_32_13_1_1_U117", "Parent" : "29"},
	{"ID" : "31", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_xFCannyKernel_fu_60.xFSobel_0_2_1080_1920_0_3_1_2_2_2_1_5_3_false_U0.grp_xFSobel3x3_0_2_1080_1920_0_3_1_2_2_2_1_5_1921_3_9_false_s_fu_68.grp_xFSobel3x3_Pipeline_Col_Loop_fu_155.mux_32_8_1_1_U118", "Parent" : "29"},
	{"ID" : "32", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_xFCannyKernel_fu_60.xFSobel_0_2_1080_1920_0_3_1_2_2_2_1_5_3_false_U0.grp_xFSobel3x3_0_2_1080_1920_0_3_1_2_2_2_1_5_1921_3_9_false_s_fu_68.grp_xFSobel3x3_Pipeline_Col_Loop_fu_155.mux_32_8_1_1_U119", "Parent" : "29"},
	{"ID" : "33", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_xFCannyKernel_fu_60.xFSobel_0_2_1080_1920_0_3_1_2_2_2_1_5_3_false_U0.grp_xFSobel3x3_0_2_1080_1920_0_3_1_2_2_2_1_5_1921_3_9_false_s_fu_68.grp_xFSobel3x3_Pipeline_Col_Loop_fu_155.mux_32_8_1_1_U120", "Parent" : "29"},
	{"ID" : "34", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_xFCannyKernel_fu_60.xFSobel_0_2_1080_1920_0_3_1_2_2_2_1_5_3_false_U0.grp_xFSobel3x3_0_2_1080_1920_0_3_1_2_2_2_1_5_1921_3_9_false_s_fu_68.grp_xFSobel3x3_Pipeline_Col_Loop_fu_155.mux_32_8_1_1_U121", "Parent" : "29"},
	{"ID" : "35", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_xFCannyKernel_fu_60.xFSobel_0_2_1080_1920_0_3_1_2_2_2_1_5_3_false_U0.grp_xFSobel3x3_0_2_1080_1920_0_3_1_2_2_2_1_5_1921_3_9_false_s_fu_68.grp_xFSobel3x3_Pipeline_Col_Loop_fu_155.flow_control_loop_pipe_sequential_init_U", "Parent" : "29"},
	{"ID" : "36", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_xFCannyKernel_fu_60.xFDuplicate_rows_2_1080_1920_3_1_2_2_2_2_2_2_5_1920_U0", "Parent" : "1", "Child" : ["37"],
		"CDFG" : "xFDuplicate_rows_2_1080_1920_3_1_2_2_2_2_2_2_5_1920_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
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
		"StartSource" : "17",
		"StartFifo" : "start_for_xFDuplicate_rows_2_1080_1920_3_1_2_2_2_2_2_2_5_1920_U0_U",
		"Port" : [
			{"Name" : "gradx_mat_data2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["17"], "DependentChan" : "73", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "37", "SubInstance" : "grp_xFDuplicate_rows_Pipeline_Col_Loop_fu_94", "Port" : "gradx_mat_data2", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "grady_mat_data5", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["17"], "DependentChan" : "74", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "37", "SubInstance" : "grp_xFDuplicate_rows_Pipeline_Col_Loop_fu_94", "Port" : "grady_mat_data5", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "gradx1_mat_data3", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["40"], "DependentChan" : "77", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "37", "SubInstance" : "grp_xFDuplicate_rows_Pipeline_Col_Loop_fu_94", "Port" : "gradx1_mat_data3", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "gradx2_mat_data4", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["43"], "DependentChan" : "78", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "37", "SubInstance" : "grp_xFDuplicate_rows_Pipeline_Col_Loop_fu_94", "Port" : "gradx2_mat_data4", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "grady1_mat_data6", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["40"], "DependentChan" : "79", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "37", "SubInstance" : "grp_xFDuplicate_rows_Pipeline_Col_Loop_fu_94", "Port" : "grady1_mat_data6", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "grady2_mat_data7", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["43"], "DependentChan" : "80", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "37", "SubInstance" : "grp_xFDuplicate_rows_Pipeline_Col_Loop_fu_94", "Port" : "grady2_mat_data7", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "img_height", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["17"], "DependentChan" : "75", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "img_height_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "img_width", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["17"], "DependentChan" : "76", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "img_width_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "img_height_c20", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["43"], "DependentChan" : "81", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "img_height_c20_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "img_width_c24", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["43"], "DependentChan" : "82", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "img_width_c24_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "Row_Loop", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "3", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state3"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "37", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_xFCannyKernel_fu_60.xFDuplicate_rows_2_1080_1920_3_1_2_2_2_2_2_2_5_1920_U0.grp_xFDuplicate_rows_Pipeline_Col_Loop_fu_94", "Parent" : "36", "Child" : ["38"],
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
	{"ID" : "38", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_xFCannyKernel_fu_60.xFDuplicate_rows_2_1080_1920_3_1_2_2_2_2_2_2_5_1920_U0.grp_xFDuplicate_rows_Pipeline_Col_Loop_fu_94.flow_control_loop_pipe_sequential_init_U", "Parent" : "37"},
	{"ID" : "39", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_xFCannyKernel_fu_60.xFCannyKernel_Block_entry15_proc_U0", "Parent" : "1",
		"CDFG" : "xFCannyKernel_Block_entry15_proc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
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
			{"Name" : "img_width", "Type" : "None", "Direction" : "I"},
			{"Name" : "img_height", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "40", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_xFCannyKernel_fu_60.xFMagnitudeKernel_2_2_1080_1920_3_3_1_2_2_2_5_5_1920_U0", "Parent" : "1", "Child" : ["41"],
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
			{"Name" : "gradx1_mat_data3", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["36"], "DependentChan" : "77", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "41", "SubInstance" : "grp_xFMagnitudeKernel_Pipeline_colLoop_fu_56", "Port" : "gradx1_mat_data3", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "grady1_mat_data6", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["36"], "DependentChan" : "79", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "41", "SubInstance" : "grp_xFMagnitudeKernel_Pipeline_colLoop_fu_56", "Port" : "grady1_mat_data6", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "magnitude_mat_data8", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["47"], "DependentChan" : "85", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "41", "SubInstance" : "grp_xFMagnitudeKernel_Pipeline_colLoop_fu_56", "Port" : "magnitude_mat_data8", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : ["39"], "DependentChan" : "84", "DependentChanDepth" : "4", "DependentChanType" : "1"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I", "DependentProc" : ["39"], "DependentChan" : "83", "DependentChanDepth" : "4", "DependentChanType" : "1"}],
		"Loop" : [
			{"Name" : "rowLoop", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "3", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state3"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "41", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_xFCannyKernel_fu_60.xFMagnitudeKernel_2_2_1080_1920_3_3_1_2_2_2_5_5_1920_U0.grp_xFMagnitudeKernel_Pipeline_colLoop_fu_56", "Parent" : "40", "Child" : ["42"],
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
	{"ID" : "42", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_xFCannyKernel_fu_60.xFMagnitudeKernel_2_2_1080_1920_3_3_1_2_2_2_5_5_1920_U0.grp_xFMagnitudeKernel_Pipeline_colLoop_fu_56.flow_control_loop_pipe_sequential_init_U", "Parent" : "41"},
	{"ID" : "43", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_xFCannyKernel_fu_60.xFAngleKernel_2_0_1080_1920_3_0_1_2_2_5_1_1920_5760_U0", "Parent" : "1", "Child" : ["44"],
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
		"StartSource" : "36",
		"StartFifo" : "start_for_xFAngleKernel_2_0_1080_1920_3_0_1_2_2_5_1_1920_5760_U0_U",
		"Port" : [
			{"Name" : "gradx2_mat_data4", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["36"], "DependentChan" : "78", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "44", "SubInstance" : "grp_xFAngleKernel_Pipeline_colLoop_fu_88", "Port" : "gradx2_mat_data4", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "grady2_mat_data7", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["36"], "DependentChan" : "80", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "44", "SubInstance" : "grp_xFAngleKernel_Pipeline_colLoop_fu_88", "Port" : "grady2_mat_data7", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "phase_mat_data9", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["47"], "DependentChan" : "86", "DependentChanDepth" : "5760", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "44", "SubInstance" : "grp_xFAngleKernel_Pipeline_colLoop_fu_88", "Port" : "phase_mat_data9", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "imgheight", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["36"], "DependentChan" : "81", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "imgheight_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "imgwidth", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["36"], "DependentChan" : "82", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "imgwidth_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "img_height_c19", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["47"], "DependentChan" : "87", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "img_height_c19_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "img_width_c23", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["47"], "DependentChan" : "88", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "img_width_c23_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "rowLoop", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "3", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state3"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "44", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_xFCannyKernel_fu_60.xFAngleKernel_2_0_1080_1920_3_0_1_2_2_5_1_1920_5760_U0.grp_xFAngleKernel_Pipeline_colLoop_fu_88", "Parent" : "43", "Child" : ["45", "46"],
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
	{"ID" : "45", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_xFCannyKernel_fu_60.xFAngleKernel_2_0_1080_1920_3_0_1_2_2_5_1_1920_5760_U0.grp_xFAngleKernel_Pipeline_colLoop_fu_88.mul_mul_17s_14ns_32_4_1_U181", "Parent" : "44"},
	{"ID" : "46", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_xFCannyKernel_fu_60.xFAngleKernel_2_0_1080_1920_3_0_1_2_2_5_1_1920_5760_U0.grp_xFAngleKernel_Pipeline_colLoop_fu_88.flow_control_loop_pipe_sequential_init_U", "Parent" : "44"},
	{"ID" : "47", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_xFCannyKernel_fu_60.xFSuppression3x3_2_0_8_1080_1920_3_0_12_1_2_5_1_0_1920_5760_2_U0", "Parent" : "1", "Child" : ["48", "49", "50", "51", "52", "53", "55"],
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
		"StartSource" : "2",
		"StartFifo" : "start_for_xFSuppression3x3_2_0_8_1080_1920_3_0_12_1_2_5_1_0_1920_5760_2_U0_U",
		"Port" : [
			{"Name" : "magnitude_mat_data8", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["40"], "DependentChan" : "85", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "53", "SubInstance" : "grp_xFSuppression3x3_Pipeline_bufColLoop_fu_219", "Port" : "magnitude_mat_data8", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "55", "SubInstance" : "grp_xFSuppression3x3_Pipeline_colLoop1_fu_231", "Port" : "magnitude_mat_data8", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "phase_mat_data9", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["43"], "DependentChan" : "86", "DependentChanDepth" : "5760", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "53", "SubInstance" : "grp_xFSuppression3x3_Pipeline_bufColLoop_fu_219", "Port" : "phase_mat_data9", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "55", "SubInstance" : "grp_xFSuppression3x3_Pipeline_colLoop1_fu_231", "Port" : "phase_mat_data9", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "nms_mat_data10", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["64"], "DependentChan" : "89", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "nms_mat_data10_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "55", "SubInstance" : "grp_xFSuppression3x3_Pipeline_colLoop1_fu_231", "Port" : "nms_mat_data10", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "low_threshold", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["2"], "DependentChan" : "68", "DependentChanDepth" : "6", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "low_threshold_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "high_threshold", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["2"], "DependentChan" : "69", "DependentChanDepth" : "6", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "high_threshold_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "imgheight", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["43"], "DependentChan" : "87", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "imgheight_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "imgwidth", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["43"], "DependentChan" : "88", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "imgwidth_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "img_height_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["64"], "DependentChan" : "90", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "img_height_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "img_width_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["64"], "DependentChan" : "91", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "img_width_c_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "rowLoop", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "7", "FirstState" : "ap_ST_fsm_state5", "LastState" : ["ap_ST_fsm_state7"], "QuitState" : ["ap_ST_fsm_state5"], "PreState" : ["ap_ST_fsm_state4"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "48", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_xFCannyKernel_fu_60.xFSuppression3x3_2_0_8_1080_1920_3_0_12_1_2_5_1_0_1920_5760_2_U0.angle_V_U", "Parent" : "47"},
	{"ID" : "49", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_xFCannyKernel_fu_60.xFSuppression3x3_2_0_8_1080_1920_3_0_12_1_2_5_1_0_1920_5760_2_U0.angle_V_1_U", "Parent" : "47"},
	{"ID" : "50", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_xFCannyKernel_fu_60.xFSuppression3x3_2_0_8_1080_1920_3_0_12_1_2_5_1_0_1920_5760_2_U0.buf_V_U", "Parent" : "47"},
	{"ID" : "51", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_xFCannyKernel_fu_60.xFSuppression3x3_2_0_8_1080_1920_3_0_12_1_2_5_1_0_1920_5760_2_U0.buf_V_1_U", "Parent" : "47"},
	{"ID" : "52", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_xFCannyKernel_fu_60.xFSuppression3x3_2_0_8_1080_1920_3_0_12_1_2_5_1_0_1920_5760_2_U0.buf_V_2_U", "Parent" : "47"},
	{"ID" : "53", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_xFCannyKernel_fu_60.xFSuppression3x3_2_0_8_1080_1920_3_0_12_1_2_5_1_0_1920_5760_2_U0.grp_xFSuppression3x3_Pipeline_bufColLoop_fu_219", "Parent" : "47", "Child" : ["54"],
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
	{"ID" : "54", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_xFCannyKernel_fu_60.xFSuppression3x3_2_0_8_1080_1920_3_0_12_1_2_5_1_0_1920_5760_2_U0.grp_xFSuppression3x3_Pipeline_bufColLoop_fu_219.flow_control_loop_pipe_sequential_init_U", "Parent" : "53"},
	{"ID" : "55", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_xFCannyKernel_fu_60.xFSuppression3x3_2_0_8_1080_1920_3_0_12_1_2_5_1_0_1920_5760_2_U0.grp_xFSuppression3x3_Pipeline_colLoop1_fu_231", "Parent" : "47", "Child" : ["56", "57", "58", "59", "60", "61", "62", "63"],
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
	{"ID" : "56", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_xFCannyKernel_fu_60.xFSuppression3x3_2_0_8_1080_1920_3_0_12_1_2_5_1_0_1920_5760_2_U0.grp_xFSuppression3x3_Pipeline_colLoop1_fu_231.l00_buf_V_xfExtractPixels_1_5_3_s_fu_464", "Parent" : "55",
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
	{"ID" : "57", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_xFCannyKernel_fu_60.xFSuppression3x3_2_0_8_1080_1920_3_0_12_1_2_5_1_0_1920_5760_2_U0.grp_xFSuppression3x3_Pipeline_colLoop1_fu_231.l10_buf_V_xfExtractPixels_1_5_3_s_fu_469", "Parent" : "55",
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
	{"ID" : "58", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_xFCannyKernel_fu_60.xFSuppression3x3_2_0_8_1080_1920_3_0_12_1_2_5_1_0_1920_5760_2_U0.grp_xFSuppression3x3_Pipeline_colLoop1_fu_231.l20_buf_V_xfExtractPixels_1_5_3_s_fu_474", "Parent" : "55",
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
	{"ID" : "59", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_xFCannyKernel_fu_60.xFSuppression3x3_2_0_8_1080_1920_3_0_12_1_2_5_1_0_1920_5760_2_U0.grp_xFSuppression3x3_Pipeline_colLoop1_fu_231.grp_xfExtractPixels_1_1_0_s_fu_479", "Parent" : "55",
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
	{"ID" : "60", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_xFCannyKernel_fu_60.xFSuppression3x3_2_0_8_1080_1920_3_0_12_1_2_5_1_0_1920_5760_2_U0.grp_xFSuppression3x3_Pipeline_colLoop1_fu_231.mux_32_16_1_1_U202", "Parent" : "55"},
	{"ID" : "61", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_xFCannyKernel_fu_60.xFSuppression3x3_2_0_8_1080_1920_3_0_12_1_2_5_1_0_1920_5760_2_U0.grp_xFSuppression3x3_Pipeline_colLoop1_fu_231.mux_32_16_1_1_U203", "Parent" : "55"},
	{"ID" : "62", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_xFCannyKernel_fu_60.xFSuppression3x3_2_0_8_1080_1920_3_0_12_1_2_5_1_0_1920_5760_2_U0.grp_xFSuppression3x3_Pipeline_colLoop1_fu_231.mux_32_16_1_1_U204", "Parent" : "55"},
	{"ID" : "63", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_xFCannyKernel_fu_60.xFSuppression3x3_2_0_8_1080_1920_3_0_12_1_2_5_1_0_1920_5760_2_U0.grp_xFSuppression3x3_Pipeline_colLoop1_fu_231.flow_control_loop_pipe_sequential_init_U", "Parent" : "55"},
	{"ID" : "64", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_xFCannyKernel_fu_60.xFPackNMS_8_8_1080_1920_12_12_1_32_2_2_0_20_U0", "Parent" : "1", "Child" : ["65"],
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
		"StartSource" : "47",
		"StartFifo" : "start_for_xFPackNMS_8_8_1080_1920_12_12_1_32_2_2_0_20_U0_U",
		"Port" : [
			{"Name" : "nms_mat_data10", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["47"], "DependentChan" : "89", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "65", "SubInstance" : "grp_xFPackNMS_8_8_1080_1920_12_12_1_32_2_2_0_20_Pipeline_colLoop_fu_86", "Port" : "nms_mat_data10", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "dst_mat_data2", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "65", "SubInstance" : "grp_xFPackNMS_8_8_1080_1920_12_12_1_32_2_2_0_20_Pipeline_colLoop_fu_86", "Port" : "dst_mat_data2", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "imgheight", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["47"], "DependentChan" : "90", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "imgheight_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "imgwidth", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["47"], "DependentChan" : "91", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "imgwidth_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "rowLoop", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "3", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state3"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "65", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_xFCannyKernel_fu_60.xFPackNMS_8_8_1080_1920_12_12_1_32_2_2_0_20_U0.grp_xFPackNMS_8_8_1080_1920_12_12_1_32_2_2_0_20_Pipeline_colLoop_fu_86", "Parent" : "64", "Child" : ["66", "67"],
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
					{"ID" : "66", "SubInstance" : "grp_read_2_void_0_s_fu_480", "Port" : "nms_mat_data10", "Inst_start_state" : "33", "Inst_end_state" : "33"}]},
			{"Name" : "zext_ln108", "Type" : "None", "Direction" : "I"},
			{"Name" : "val_V_98_out", "Type" : "OVld", "Direction" : "IO"}],
		"SubInstanceBlock" : [
			{"SubInstance" : "grp_read_2_void_0_s_fu_480", "SubBlockPort" : ["nms_mat_data10_blk_n"]}],
		"Loop" : [
			{"Name" : "colLoop", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "32", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "66", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_xFCannyKernel_fu_60.xFPackNMS_8_8_1080_1920_12_12_1_32_2_2_0_20_U0.grp_xFPackNMS_8_8_1080_1920_12_12_1_32_2_2_0_20_Pipeline_colLoop_fu_86.grp_read_2_void_0_s_fu_480", "Parent" : "65",
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
	{"ID" : "67", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_xFCannyKernel_fu_60.xFPackNMS_8_8_1080_1920_12_12_1_32_2_2_0_20_U0.grp_xFPackNMS_8_8_1080_1920_12_12_1_32_2_2_0_20_Pipeline_colLoop_fu_86.flow_control_loop_pipe_sequential_init_U", "Parent" : "65"},
	{"ID" : "68", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_xFCannyKernel_fu_60.p_lowthreshold_c_U", "Parent" : "1"},
	{"ID" : "69", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_xFCannyKernel_fu_60.p_highthreshold_c_U", "Parent" : "1"},
	{"ID" : "70", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_xFCannyKernel_fu_60.gaussian_mat_data_U", "Parent" : "1"},
	{"ID" : "71", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_xFCannyKernel_fu_60.img_height_c22_U", "Parent" : "1"},
	{"ID" : "72", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_xFCannyKernel_fu_60.img_width_c26_U", "Parent" : "1"},
	{"ID" : "73", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_xFCannyKernel_fu_60.gradx_mat_data_U", "Parent" : "1"},
	{"ID" : "74", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_xFCannyKernel_fu_60.grady_mat_data_U", "Parent" : "1"},
	{"ID" : "75", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_xFCannyKernel_fu_60.img_height_c21_U", "Parent" : "1"},
	{"ID" : "76", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_xFCannyKernel_fu_60.img_width_c25_U", "Parent" : "1"},
	{"ID" : "77", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_xFCannyKernel_fu_60.gradx1_mat_data_U", "Parent" : "1"},
	{"ID" : "78", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_xFCannyKernel_fu_60.gradx2_mat_data_U", "Parent" : "1"},
	{"ID" : "79", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_xFCannyKernel_fu_60.grady1_mat_data_U", "Parent" : "1"},
	{"ID" : "80", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_xFCannyKernel_fu_60.grady2_mat_data_U", "Parent" : "1"},
	{"ID" : "81", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_xFCannyKernel_fu_60.img_height_c20_U", "Parent" : "1"},
	{"ID" : "82", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_xFCannyKernel_fu_60.img_width_c24_U", "Parent" : "1"},
	{"ID" : "83", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_xFCannyKernel_fu_60.imgwidth_U", "Parent" : "1"},
	{"ID" : "84", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_xFCannyKernel_fu_60.height_U", "Parent" : "1"},
	{"ID" : "85", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_xFCannyKernel_fu_60.magnitude_mat_data_U", "Parent" : "1"},
	{"ID" : "86", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_xFCannyKernel_fu_60.phase_mat_data_U", "Parent" : "1"},
	{"ID" : "87", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_xFCannyKernel_fu_60.img_height_c19_U", "Parent" : "1"},
	{"ID" : "88", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_xFCannyKernel_fu_60.img_width_c23_U", "Parent" : "1"},
	{"ID" : "89", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_xFCannyKernel_fu_60.nms_mat_data_U", "Parent" : "1"},
	{"ID" : "90", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_xFCannyKernel_fu_60.img_height_c_U", "Parent" : "1"},
	{"ID" : "91", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_xFCannyKernel_fu_60.img_width_c_U", "Parent" : "1"},
	{"ID" : "92", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_xFCannyKernel_fu_60.start_for_xFSuppression3x3_2_0_8_1080_1920_3_0_12_1_2_5_1_0_1920_5760_2_U0_U", "Parent" : "1"},
	{"ID" : "93", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_xFCannyKernel_fu_60.start_for_xFSobel_0_2_1080_1920_0_3_1_2_2_2_1_5_3_false_U0_U", "Parent" : "1"},
	{"ID" : "94", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_xFCannyKernel_fu_60.start_for_xFDuplicate_rows_2_1080_1920_3_1_2_2_2_2_2_2_5_1920_U0_U", "Parent" : "1"},
	{"ID" : "95", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_xFCannyKernel_fu_60.start_for_xFAngleKernel_2_0_1080_1920_3_0_1_2_2_5_1_1920_5760_U0_U", "Parent" : "1"},
	{"ID" : "96", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_xFCannyKernel_fu_60.start_for_xFPackNMS_8_8_1080_1920_12_12_1_32_2_2_0_20_U0_U", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
	Canny_3_0_0_8_1080_1920_1_32_false_2_2_s {
		in_mat_rows {Type I LastRead 0 FirstWrite -1}
		in_mat_cols {Type I LastRead 0 FirstWrite -1}
		in_mat_data {Type I LastRead 1 FirstWrite -1}
		dst_mat_data {Type O LastRead -1 FirstWrite 32}
		low_threshold {Type I LastRead 0 FirstWrite -1}
		high_threshold {Type I LastRead 0 FirstWrite -1}}
	xFCannyKernel {
		in_mat_data1 {Type I LastRead 1 FirstWrite -1}
		dst_mat_data2 {Type O LastRead -1 FirstWrite 32}
		p_lowthreshold {Type I LastRead 7 FirstWrite -1}
		p_highthreshold {Type I LastRead 7 FirstWrite -1}
		img_height {Type I LastRead 0 FirstWrite -1}
		img_width {Type I LastRead 0 FirstWrite -1}}
	entry_proc16 {
		p_lowthreshold {Type I LastRead 0 FirstWrite -1}
		p_lowthreshold_c {Type O LastRead -1 FirstWrite 0}
		p_highthreshold {Type I LastRead 0 FirstWrite -1}
		p_highthreshold_c {Type O LastRead -1 FirstWrite 0}}
	xFAverageGaussianMask3x3_0_0_1080_1920_0_1_2_2_1_1920_s {
		in_mat_data1 {Type I LastRead 1 FirstWrite -1}
		gaussian_mat_data1 {Type O LastRead -1 FirstWrite 4}
		img_height {Type I LastRead 0 FirstWrite -1}
		img_width {Type I LastRead 0 FirstWrite -1}
		img_height_c22 {Type O LastRead -1 FirstWrite 0}
		img_width_c26 {Type O LastRead -1 FirstWrite 0}}
	xFAverageGaussianMask3x3_Pipeline_Clear_Row_Loop {
		img_width {Type I LastRead 0 FirstWrite -1}
		buf_V_5 {Type O LastRead -1 FirstWrite 1}
		buf_V {Type O LastRead -1 FirstWrite 0}
		in_mat_data1 {Type I LastRead 1 FirstWrite -1}}
	xFAverageGaussianMask3x3_Pipeline_Col_Loop {
		img_width {Type I LastRead 0 FirstWrite -1}
		buf_V {Type IO LastRead 2 FirstWrite 1}
		buf_V_5 {Type IO LastRead 2 FirstWrite 1}
		buf_V_6 {Type IO LastRead 2 FirstWrite 1}
		tp_V {Type I LastRead 0 FirstWrite -1}
		mid_V {Type I LastRead 0 FirstWrite -1}
		bottom_V {Type I LastRead 0 FirstWrite -1}
		in_mat_data1 {Type I LastRead 1 FirstWrite -1}
		cmp_i_i422_i {Type I LastRead 0 FirstWrite -1}
		gaussian_mat_data1 {Type O LastRead -1 FirstWrite 4}
		b1_V_out {Type O LastRead -1 FirstWrite 3}
		b0_V_out {Type O LastRead -1 FirstWrite 3}
		m1_V_out {Type O LastRead -1 FirstWrite 3}
		m0_V_out {Type O LastRead -1 FirstWrite 3}
		t1_V_out {Type O LastRead -1 FirstWrite 3}
		t0_V_out {Type O LastRead -1 FirstWrite 3}}
	xfExtractPixels_1_1_0_1 {
		p_read1 {Type I LastRead 0 FirstWrite -1}}
	xfExtractPixels_1_1_0_1 {
		p_read1 {Type I LastRead 0 FirstWrite -1}}
	xfExtractPixels_1_1_0_1 {
		p_read1 {Type I LastRead 0 FirstWrite -1}}
	xFSobel_0_2_1080_1920_0_3_1_2_2_2_1_5_3_false_s {
		gaussian_mat_data1 {Type I LastRead 1 FirstWrite -1}
		gradx_mat_data2 {Type O LastRead -1 FirstWrite 4}
		grady_mat_data5 {Type O LastRead -1 FirstWrite 4}
		imgheight {Type I LastRead 0 FirstWrite -1}
		imgwidth {Type I LastRead 0 FirstWrite -1}
		img_height_c21 {Type O LastRead -1 FirstWrite 0}
		img_width_c25 {Type O LastRead -1 FirstWrite 0}}
	xFSobel3x3_0_2_1080_1920_0_3_1_2_2_2_1_5_1921_3_9_false_s {
		gaussian_mat_data1 {Type I LastRead 1 FirstWrite -1}
		gradx_mat_data2 {Type O LastRead -1 FirstWrite 4}
		grady_mat_data5 {Type O LastRead -1 FirstWrite 4}
		img_height {Type I LastRead 2 FirstWrite -1}
		img_width {Type I LastRead 2 FirstWrite -1}}
	xFSobel3x3_Pipeline_VITIS_LOOP_456_1 {
		row_ind_V_4_out {Type O LastRead -1 FirstWrite 0}
		row_ind_V_3_out {Type O LastRead -1 FirstWrite 0}
		row_ind_V_out {Type O LastRead -1 FirstWrite 0}}
	xFSobel3x3_Pipeline_VITIS_LOOP_468_2 {
		img_width {Type I LastRead 0 FirstWrite -1}
		buf_V_4 {Type O LastRead -1 FirstWrite 1}
		buf_V_3 {Type O LastRead -1 FirstWrite 1}
		buf_V {Type O LastRead -1 FirstWrite 1}
		gaussian_mat_data1 {Type I LastRead 1 FirstWrite -1}
		init_buf_cast {Type I LastRead 0 FirstWrite -1}}
	xFSobel3x3_Pipeline_VITIS_LOOP_479_3 {
		img_width {Type I LastRead 0 FirstWrite -1}
		buf_V {Type IO LastRead 0 FirstWrite 1}
		buf_V_3 {Type I LastRead 0 FirstWrite -1}
		buf_V_4 {Type I LastRead 0 FirstWrite -1}
		row_ind_V_3_cast {Type I LastRead 0 FirstWrite -1}}
	xFSobel3x3_Pipeline_Col_Loop {
		img_width {Type I LastRead 0 FirstWrite -1}
		buf_V_4 {Type IO LastRead 2 FirstWrite 1}
		buf_V {Type IO LastRead 2 FirstWrite 1}
		buf_V_3 {Type IO LastRead 2 FirstWrite 1}
		row_ind_V_9 {Type I LastRead 0 FirstWrite -1}
		row_ind_V_10 {Type I LastRead 0 FirstWrite -1}
		row_ind_V_11 {Type I LastRead 0 FirstWrite -1}
		sub_i460_i_cast {Type I LastRead 0 FirstWrite -1}
		row_ind_V_9_cast {Type I LastRead 0 FirstWrite -1}
		spec_select57 {Type I LastRead 0 FirstWrite -1}
		row_ind_V_10_cast {Type I LastRead 0 FirstWrite -1}
		spec_select61 {Type I LastRead 0 FirstWrite -1}
		row_ind_V_11_cast {Type I LastRead 0 FirstWrite -1}
		spec_select65 {Type I LastRead 0 FirstWrite -1}
		cmp_i_i554_i {Type I LastRead 0 FirstWrite -1}
		gaussian_mat_data1 {Type I LastRead 1 FirstWrite -1}
		gradx_mat_data2 {Type O LastRead -1 FirstWrite 4}
		grady_mat_data5 {Type O LastRead -1 FirstWrite 4}}
	xFDuplicate_rows_2_1080_1920_3_1_2_2_2_2_2_2_5_1920_s {
		gradx_mat_data2 {Type I LastRead 1 FirstWrite -1}
		grady_mat_data5 {Type I LastRead 1 FirstWrite -1}
		gradx1_mat_data3 {Type O LastRead -1 FirstWrite 1}
		gradx2_mat_data4 {Type O LastRead -1 FirstWrite 1}
		grady1_mat_data6 {Type O LastRead -1 FirstWrite 1}
		grady2_mat_data7 {Type O LastRead -1 FirstWrite 1}
		img_height {Type I LastRead 0 FirstWrite -1}
		img_width {Type I LastRead 0 FirstWrite -1}
		img_height_c20 {Type O LastRead -1 FirstWrite 0}
		img_width_c24 {Type O LastRead -1 FirstWrite 0}}
	xFDuplicate_rows_Pipeline_Col_Loop {
		img_width_load {Type I LastRead 0 FirstWrite -1}
		grady_mat_data5 {Type I LastRead 1 FirstWrite -1}
		gradx_mat_data2 {Type I LastRead 1 FirstWrite -1}
		gradx1_mat_data3 {Type O LastRead -1 FirstWrite 1}
		gradx2_mat_data4 {Type O LastRead -1 FirstWrite 1}
		grady1_mat_data6 {Type O LastRead -1 FirstWrite 1}
		grady2_mat_data7 {Type O LastRead -1 FirstWrite 1}}
	xFCannyKernel_Block_entry15_proc {
		img_width {Type I LastRead 0 FirstWrite -1}
		img_height {Type I LastRead 0 FirstWrite -1}}
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
		magnitude_mat_data8 {Type O LastRead -1 FirstWrite 2}}
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
		phase_mat_data9 {Type O LastRead -1 FirstWrite 5}}
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
		p_read1 {Type I LastRead 0 FirstWrite -1}}
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
	{"Name" : "Latency", "Min" : "2089955", "Max" : "2089955"}
	, {"Name" : "Interval", "Min" : "2089955", "Max" : "2089955"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	in_mat_rows { ap_fifo {  { in_mat_rows_dout fifo_port_we 0 32 }  { in_mat_rows_num_data_valid fifo_status_num_data_valid 0 2 }  { in_mat_rows_fifo_cap fifo_update 0 2 }  { in_mat_rows_empty_n fifo_status 0 1 }  { in_mat_rows_read fifo_data 1 1 } } }
	in_mat_cols { ap_fifo {  { in_mat_cols_dout fifo_port_we 0 32 }  { in_mat_cols_num_data_valid fifo_status_num_data_valid 0 2 }  { in_mat_cols_fifo_cap fifo_update 0 2 }  { in_mat_cols_empty_n fifo_status 0 1 }  { in_mat_cols_read fifo_data 1 1 } } }
	in_mat_data { ap_fifo {  { in_mat_data_dout fifo_port_we 0 8 }  { in_mat_data_num_data_valid fifo_status_num_data_valid 0 2 }  { in_mat_data_fifo_cap fifo_update 0 2 }  { in_mat_data_empty_n fifo_status 0 1 }  { in_mat_data_read fifo_data 1 1 } } }
	dst_mat_data { ap_fifo {  { dst_mat_data_din fifo_port_we 1 64 }  { dst_mat_data_num_data_valid fifo_status_num_data_valid 0 2 }  { dst_mat_data_fifo_cap fifo_update 0 2 }  { dst_mat_data_full_n fifo_status 0 1 }  { dst_mat_data_write fifo_data 1 1 } } }
	low_threshold { ap_fifo {  { low_threshold_dout fifo_port_we 0 32 }  { low_threshold_num_data_valid fifo_status_num_data_valid 0 3 }  { low_threshold_fifo_cap fifo_update 0 3 }  { low_threshold_empty_n fifo_status 0 1 }  { low_threshold_read fifo_data 1 1 } } }
	high_threshold { ap_fifo {  { high_threshold_dout fifo_port_we 0 32 }  { high_threshold_num_data_valid fifo_status_num_data_valid 0 3 }  { high_threshold_fifo_cap fifo_update 0 3 }  { high_threshold_empty_n fifo_status 0 1 }  { high_threshold_read fifo_data 1 1 } } }
}
