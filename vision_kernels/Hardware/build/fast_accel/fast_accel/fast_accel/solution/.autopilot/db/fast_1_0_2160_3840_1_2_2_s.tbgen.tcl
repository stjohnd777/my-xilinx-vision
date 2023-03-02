set moduleName fast_1_0_2160_3840_1_2_2_s
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
set C_modelName {fast<1, 0, 2160, 3840, 1, 2, 2>}
set C_modelType { void 0 }
set C_modelArgList {
	{ p_src_mat_rows int 32 regular {fifo 0}  }
	{ p_src_mat_cols int 32 regular {fifo 0}  }
	{ imgInput_data1 int 8 regular {fifo 0 volatile }  }
	{ imgOutput_data2 int 8 regular {fifo 1 volatile }  }
	{ p_threshold int 8 regular {fifo 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "p_src_mat_rows", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_src_mat_cols", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "imgInput_data1", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "imgOutput_data2", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_threshold", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 32
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ p_src_mat_rows_dout sc_in sc_lv 32 signal 0 } 
	{ p_src_mat_rows_num_data_valid sc_in sc_lv 2 signal 0 } 
	{ p_src_mat_rows_fifo_cap sc_in sc_lv 2 signal 0 } 
	{ p_src_mat_rows_empty_n sc_in sc_logic 1 signal 0 } 
	{ p_src_mat_rows_read sc_out sc_logic 1 signal 0 } 
	{ p_src_mat_cols_dout sc_in sc_lv 32 signal 1 } 
	{ p_src_mat_cols_num_data_valid sc_in sc_lv 2 signal 1 } 
	{ p_src_mat_cols_fifo_cap sc_in sc_lv 2 signal 1 } 
	{ p_src_mat_cols_empty_n sc_in sc_logic 1 signal 1 } 
	{ p_src_mat_cols_read sc_out sc_logic 1 signal 1 } 
	{ imgInput_data1_dout sc_in sc_lv 8 signal 2 } 
	{ imgInput_data1_num_data_valid sc_in sc_lv 2 signal 2 } 
	{ imgInput_data1_fifo_cap sc_in sc_lv 2 signal 2 } 
	{ imgInput_data1_empty_n sc_in sc_logic 1 signal 2 } 
	{ imgInput_data1_read sc_out sc_logic 1 signal 2 } 
	{ imgOutput_data2_din sc_out sc_lv 8 signal 3 } 
	{ imgOutput_data2_num_data_valid sc_in sc_lv 2 signal 3 } 
	{ imgOutput_data2_fifo_cap sc_in sc_lv 2 signal 3 } 
	{ imgOutput_data2_full_n sc_in sc_logic 1 signal 3 } 
	{ imgOutput_data2_write sc_out sc_logic 1 signal 3 } 
	{ p_threshold_dout sc_in sc_lv 8 signal 4 } 
	{ p_threshold_num_data_valid sc_in sc_lv 3 signal 4 } 
	{ p_threshold_fifo_cap sc_in sc_lv 3 signal 4 } 
	{ p_threshold_empty_n sc_in sc_logic 1 signal 4 } 
	{ p_threshold_read sc_out sc_logic 1 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "p_src_mat_rows_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_src_mat_rows", "role": "dout" }} , 
 	{ "name": "p_src_mat_rows_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "p_src_mat_rows", "role": "num_data_valid" }} , 
 	{ "name": "p_src_mat_rows_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "p_src_mat_rows", "role": "fifo_cap" }} , 
 	{ "name": "p_src_mat_rows_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_src_mat_rows", "role": "empty_n" }} , 
 	{ "name": "p_src_mat_rows_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_src_mat_rows", "role": "read" }} , 
 	{ "name": "p_src_mat_cols_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_src_mat_cols", "role": "dout" }} , 
 	{ "name": "p_src_mat_cols_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "p_src_mat_cols", "role": "num_data_valid" }} , 
 	{ "name": "p_src_mat_cols_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "p_src_mat_cols", "role": "fifo_cap" }} , 
 	{ "name": "p_src_mat_cols_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_src_mat_cols", "role": "empty_n" }} , 
 	{ "name": "p_src_mat_cols_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_src_mat_cols", "role": "read" }} , 
 	{ "name": "imgInput_data1_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "imgInput_data1", "role": "dout" }} , 
 	{ "name": "imgInput_data1_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "imgInput_data1", "role": "num_data_valid" }} , 
 	{ "name": "imgInput_data1_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "imgInput_data1", "role": "fifo_cap" }} , 
 	{ "name": "imgInput_data1_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imgInput_data1", "role": "empty_n" }} , 
 	{ "name": "imgInput_data1_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imgInput_data1", "role": "read" }} , 
 	{ "name": "imgOutput_data2_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "imgOutput_data2", "role": "din" }} , 
 	{ "name": "imgOutput_data2_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "imgOutput_data2", "role": "num_data_valid" }} , 
 	{ "name": "imgOutput_data2_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "imgOutput_data2", "role": "fifo_cap" }} , 
 	{ "name": "imgOutput_data2_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imgOutput_data2", "role": "full_n" }} , 
 	{ "name": "imgOutput_data2_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imgOutput_data2", "role": "write" }} , 
 	{ "name": "p_threshold_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_threshold", "role": "dout" }} , 
 	{ "name": "p_threshold_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "p_threshold", "role": "num_data_valid" }} , 
 	{ "name": "p_threshold_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "p_threshold", "role": "fifo_cap" }} , 
 	{ "name": "p_threshold_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_threshold", "role": "empty_n" }} , 
 	{ "name": "p_threshold_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_threshold", "role": "read" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "fast_1_0_2160_3840_1_2_2_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "16644495", "EstimateLatencyMax" : "16644495",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "p_src_mat_rows", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "p_src_mat_rows_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_src_mat_cols", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "p_src_mat_cols_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "imgInput_data1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_xFFastCornerDetection_0_2160_3840_0_1_2_2_1_12_1_s_fu_54", "Port" : "imgInput_data1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "imgOutput_data2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_xFFastCornerDetection_0_2160_3840_0_1_2_2_1_12_1_s_fu_54", "Port" : "imgOutput_data2", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_threshold", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "p_threshold_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_xFFastCornerDetection_0_2160_3840_0_1_2_2_1_12_1_s_fu_54", "Parent" : "0", "Child" : ["2", "27", "45", "46", "47", "48"],
		"CDFG" : "xFFastCornerDetection_0_2160_3840_0_1_2_2_1_12_1_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "16644494", "EstimateLatencyMax" : "16644494",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"InputProcess" : [
			{"ID" : "2", "Name" : "xFfast7x7_0_2160_3840_0_1_2_2_1_3843_7_49_3_U0"}],
		"OutputProcess" : [
			{"ID" : "27", "Name" : "xFfastnms_0_2160_3840_0_1_2_2_1_3841_3_9_4_U0"}],
		"Port" : [
			{"Name" : "imgInput_data1", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "xFfast7x7_0_2160_3840_0_1_2_2_1_3843_7_49_3_U0", "Port" : "imgInput_data1"}]},
			{"Name" : "imgOutput_data2", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "27", "SubInstance" : "xFfastnms_0_2160_3840_0_1_2_2_1_3841_3_9_4_U0", "Port" : "imgOutput_data2"}]},
			{"Name" : "p_image_height", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_image_width", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_threshold", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_xFFastCornerDetection_0_2160_3840_0_1_2_2_1_12_1_s_fu_54.xFfast7x7_0_2160_3840_0_1_2_2_1_3843_7_49_3_U0", "Parent" : "1", "Child" : ["3", "4", "5", "6", "7", "8", "9", "10", "12", "14", "16"],
		"CDFG" : "xFfast7x7_0_2160_3840_0_1_2_2_1_3843_7_49_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "8359748", "EstimateLatencyMax" : "8359748",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "imgInput_data1", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "grp_xFfast7x7_0_2160_3840_0_1_2_2_1_3843_7_49_3_Pipeline_Col_Loop_fu_276", "Port" : "imgInput_data1", "Inst_start_state" : "7", "Inst_end_state" : "8"},
					{"ID" : "12", "SubInstance" : "grp_xFfast7x7_0_2160_3840_0_1_2_2_1_3843_7_49_3_Pipeline_VITIS_LOOP_530_2_fu_253", "Port" : "imgInput_data1", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "p_dst_data1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["27"], "DependentChan" : "45", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "grp_xFfast7x7_0_2160_3840_0_1_2_2_1_3843_7_49_3_Pipeline_Col_Loop_fu_276", "Port" : "p_dst_data1", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "img_height", "Type" : "None", "Direction" : "I"},
			{"Name" : "img_width", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_threshold", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_image_height_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["27"], "DependentChan" : "46", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "p_image_height_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_image_width_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["27"], "DependentChan" : "47", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "p_image_width_c_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "read_lines", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "8", "FirstState" : "ap_ST_fsm_state4", "LastState" : ["ap_ST_fsm_state5"], "QuitState" : ["ap_ST_fsm_state4"], "PreState" : ["ap_ST_fsm_state3"], "PostState" : ["ap_ST_fsm_state6"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "Row_Loop", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "8", "FirstState" : "ap_ST_fsm_state7", "LastState" : ["ap_ST_fsm_state8"], "QuitState" : ["ap_ST_fsm_state7"], "PreState" : ["ap_ST_fsm_state6"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "3", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_xFFastCornerDetection_0_2160_3840_0_1_2_2_1_12_1_s_fu_54.xFfast7x7_0_2160_3840_0_1_2_2_1_3843_7_49_3_U0.buf_V_U", "Parent" : "2"},
	{"ID" : "4", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_xFFastCornerDetection_0_2160_3840_0_1_2_2_1_12_1_s_fu_54.xFfast7x7_0_2160_3840_0_1_2_2_1_3843_7_49_3_U0.buf_V_3_U", "Parent" : "2"},
	{"ID" : "5", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_xFFastCornerDetection_0_2160_3840_0_1_2_2_1_12_1_s_fu_54.xFfast7x7_0_2160_3840_0_1_2_2_1_3843_7_49_3_U0.buf_V_4_U", "Parent" : "2"},
	{"ID" : "6", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_xFFastCornerDetection_0_2160_3840_0_1_2_2_1_12_1_s_fu_54.xFfast7x7_0_2160_3840_0_1_2_2_1_3843_7_49_3_U0.buf_V_5_U", "Parent" : "2"},
	{"ID" : "7", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_xFFastCornerDetection_0_2160_3840_0_1_2_2_1_12_1_s_fu_54.xFfast7x7_0_2160_3840_0_1_2_2_1_3843_7_49_3_U0.buf_V_6_U", "Parent" : "2"},
	{"ID" : "8", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_xFFastCornerDetection_0_2160_3840_0_1_2_2_1_12_1_s_fu_54.xFfast7x7_0_2160_3840_0_1_2_2_1_3843_7_49_3_U0.buf_V_7_U", "Parent" : "2"},
	{"ID" : "9", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_xFFastCornerDetection_0_2160_3840_0_1_2_2_1_12_1_s_fu_54.xFfast7x7_0_2160_3840_0_1_2_2_1_3843_7_49_3_U0.buf_V_8_U", "Parent" : "2"},
	{"ID" : "10", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_xFFastCornerDetection_0_2160_3840_0_1_2_2_1_12_1_s_fu_54.xFfast7x7_0_2160_3840_0_1_2_2_1_3843_7_49_3_U0.grp_xFfast7x7_0_2160_3840_0_1_2_2_1_3843_7_49_3_Pipeline_VITIS_LOOP_515_1_fu_242", "Parent" : "2", "Child" : ["11"],
		"CDFG" : "xFfast7x7_0_2160_3840_0_1_2_2_1_3843_7_49_3_Pipeline_VITIS_LOOP_515_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "9", "EstimateLatencyMax" : "9",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "row_ind_V_15_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "row_ind_V_14_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "row_ind_V_13_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "row_ind_V_12_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "row_ind_V_11_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "row_ind_V_10_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "row_ind_V_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_515_1", "PipelineType" : "NotSupport"}]},
	{"ID" : "11", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_xFFastCornerDetection_0_2160_3840_0_1_2_2_1_12_1_s_fu_54.xFfast7x7_0_2160_3840_0_1_2_2_1_3843_7_49_3_U0.grp_xFfast7x7_0_2160_3840_0_1_2_2_1_3843_7_49_3_Pipeline_VITIS_LOOP_515_1_fu_242.flow_control_loop_pipe_sequential_init_U", "Parent" : "10"},
	{"ID" : "12", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_xFFastCornerDetection_0_2160_3840_0_1_2_2_1_12_1_s_fu_54.xFfast7x7_0_2160_3840_0_1_2_2_1_3843_7_49_3_U0.grp_xFfast7x7_0_2160_3840_0_1_2_2_1_3843_7_49_3_Pipeline_VITIS_LOOP_530_2_fu_253", "Parent" : "2", "Child" : ["13"],
		"CDFG" : "xFfast7x7_0_2160_3840_0_1_2_2_1_3843_7_49_3_Pipeline_VITIS_LOOP_530_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3845", "EstimateLatencyMax" : "3845",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "img_width", "Type" : "None", "Direction" : "I"},
			{"Name" : "buf_V_8", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buf_V_7", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buf_V_6", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buf_V_5", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buf_V_4", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buf_V_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buf_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "imgInput_data1", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "imgInput_data1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "init_buf_cast", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_530_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "13", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_xFFastCornerDetection_0_2160_3840_0_1_2_2_1_12_1_s_fu_54.xFfast7x7_0_2160_3840_0_1_2_2_1_3843_7_49_3_U0.grp_xFfast7x7_0_2160_3840_0_1_2_2_1_3843_7_49_3_Pipeline_VITIS_LOOP_530_2_fu_253.flow_control_loop_pipe_sequential_init_U", "Parent" : "12"},
	{"ID" : "14", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_xFFastCornerDetection_0_2160_3840_0_1_2_2_1_12_1_s_fu_54.xFfast7x7_0_2160_3840_0_1_2_2_1_3843_7_49_3_U0.grp_xFfast7x7_0_2160_3840_0_1_2_2_1_3843_7_49_3_Pipeline_VITIS_LOOP_541_3_fu_268", "Parent" : "2", "Child" : ["15"],
		"CDFG" : "xFfast7x7_0_2160_3840_0_1_2_2_1_3843_7_49_3_Pipeline_VITIS_LOOP_541_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3845", "EstimateLatencyMax" : "3845",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "img_width", "Type" : "None", "Direction" : "I"},
			{"Name" : "buf_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buf_V_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buf_V_4", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_541_3", "PipelineType" : "NotSupport"}]},
	{"ID" : "15", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_xFFastCornerDetection_0_2160_3840_0_1_2_2_1_12_1_s_fu_54.xFfast7x7_0_2160_3840_0_1_2_2_1_3843_7_49_3_U0.grp_xFfast7x7_0_2160_3840_0_1_2_2_1_3843_7_49_3_Pipeline_VITIS_LOOP_541_3_fu_268.flow_control_loop_pipe_sequential_init_U", "Parent" : "14"},
	{"ID" : "16", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_xFFastCornerDetection_0_2160_3840_0_1_2_2_1_12_1_s_fu_54.xFfast7x7_0_2160_3840_0_1_2_2_1_3843_7_49_3_U0.grp_xFfast7x7_0_2160_3840_0_1_2_2_1_3843_7_49_3_Pipeline_Col_Loop_fu_276", "Parent" : "2", "Child" : ["17", "18", "19", "20", "21", "22", "23", "24", "25", "26"],
		"CDFG" : "xFfast7x7_0_2160_3840_0_1_2_2_1_3843_7_49_3_Pipeline_Col_Loop",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3854", "EstimateLatencyMax" : "3854",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "op2_assign", "Type" : "None", "Direction" : "I"},
			{"Name" : "buf_V_8", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "buf_V", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "buf_V_3", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "buf_V_4", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "buf_V_5", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "buf_V_6", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "buf_V_7", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "row_ind_V_24", "Type" : "None", "Direction" : "I"},
			{"Name" : "row_ind_V_25", "Type" : "None", "Direction" : "I"},
			{"Name" : "row_ind_V_26", "Type" : "None", "Direction" : "I"},
			{"Name" : "row_ind_V_27", "Type" : "None", "Direction" : "I"},
			{"Name" : "row_ind_V_28", "Type" : "None", "Direction" : "I"},
			{"Name" : "row_ind_V_29", "Type" : "None", "Direction" : "I"},
			{"Name" : "row_ind_V_30", "Type" : "None", "Direction" : "I"},
			{"Name" : "sub_i273_i_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "row_ind_V_24_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "spec_select484", "Type" : "None", "Direction" : "I"},
			{"Name" : "row_ind_V_25_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "spec_select488", "Type" : "None", "Direction" : "I"},
			{"Name" : "row_ind_V_26_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "spec_select492", "Type" : "None", "Direction" : "I"},
			{"Name" : "row_ind_V_27_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "spec_select496", "Type" : "None", "Direction" : "I"},
			{"Name" : "row_ind_V_28_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "spec_select500", "Type" : "None", "Direction" : "I"},
			{"Name" : "row_ind_V_29_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "spec_select504", "Type" : "None", "Direction" : "I"},
			{"Name" : "row_ind_V_30_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "spec_select508", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp_i_i73_i_not", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_threshold_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "b0", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_threshold", "Type" : "None", "Direction" : "I"},
			{"Name" : "xor_ln435_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "img_width", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp_i_i49_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp_i_i381_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "imgInput_data1", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "imgInput_data1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_dst_data1", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "p_dst_data1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_0_0_01084242_out", "Type" : "OVld", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "Col_Loop", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter10", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter10", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "17", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_xFFastCornerDetection_0_2160_3840_0_1_2_2_1_12_1_s_fu_54.xFfast7x7_0_2160_3840_0_1_2_2_1_3843_7_49_3_U0.grp_xFfast7x7_0_2160_3840_0_1_2_2_1_3843_7_49_3_Pipeline_Col_Loop_fu_276.mux_73_13_1_1_U87", "Parent" : "16"},
	{"ID" : "18", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_xFFastCornerDetection_0_2160_3840_0_1_2_2_1_12_1_s_fu_54.xFfast7x7_0_2160_3840_0_1_2_2_1_3843_7_49_3_U0.grp_xFfast7x7_0_2160_3840_0_1_2_2_1_3843_7_49_3_Pipeline_Col_Loop_fu_276.mux_73_8_1_1_U88", "Parent" : "16"},
	{"ID" : "19", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_xFFastCornerDetection_0_2160_3840_0_1_2_2_1_12_1_s_fu_54.xFfast7x7_0_2160_3840_0_1_2_2_1_3843_7_49_3_U0.grp_xFfast7x7_0_2160_3840_0_1_2_2_1_3843_7_49_3_Pipeline_Col_Loop_fu_276.mux_73_8_1_1_U89", "Parent" : "16"},
	{"ID" : "20", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_xFFastCornerDetection_0_2160_3840_0_1_2_2_1_12_1_s_fu_54.xFfast7x7_0_2160_3840_0_1_2_2_1_3843_7_49_3_U0.grp_xFfast7x7_0_2160_3840_0_1_2_2_1_3843_7_49_3_Pipeline_Col_Loop_fu_276.mux_73_8_1_1_U90", "Parent" : "16"},
	{"ID" : "21", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_xFFastCornerDetection_0_2160_3840_0_1_2_2_1_12_1_s_fu_54.xFfast7x7_0_2160_3840_0_1_2_2_1_3843_7_49_3_U0.grp_xFfast7x7_0_2160_3840_0_1_2_2_1_3843_7_49_3_Pipeline_Col_Loop_fu_276.mux_73_8_1_1_U91", "Parent" : "16"},
	{"ID" : "22", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_xFFastCornerDetection_0_2160_3840_0_1_2_2_1_12_1_s_fu_54.xFfast7x7_0_2160_3840_0_1_2_2_1_3843_7_49_3_U0.grp_xFfast7x7_0_2160_3840_0_1_2_2_1_3843_7_49_3_Pipeline_Col_Loop_fu_276.mux_73_8_1_1_U92", "Parent" : "16"},
	{"ID" : "23", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_xFFastCornerDetection_0_2160_3840_0_1_2_2_1_12_1_s_fu_54.xFfast7x7_0_2160_3840_0_1_2_2_1_3843_7_49_3_U0.grp_xFfast7x7_0_2160_3840_0_1_2_2_1_3843_7_49_3_Pipeline_Col_Loop_fu_276.mux_73_8_1_1_U93", "Parent" : "16"},
	{"ID" : "24", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_xFFastCornerDetection_0_2160_3840_0_1_2_2_1_12_1_s_fu_54.xFfast7x7_0_2160_3840_0_1_2_2_1_3843_7_49_3_U0.grp_xFfast7x7_0_2160_3840_0_1_2_2_1_3843_7_49_3_Pipeline_Col_Loop_fu_276.mux_73_8_1_1_U94", "Parent" : "16"},
	{"ID" : "25", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_xFFastCornerDetection_0_2160_3840_0_1_2_2_1_12_1_s_fu_54.xFfast7x7_0_2160_3840_0_1_2_2_1_3843_7_49_3_U0.grp_xFfast7x7_0_2160_3840_0_1_2_2_1_3843_7_49_3_Pipeline_Col_Loop_fu_276.mux_73_8_1_1_U95", "Parent" : "16"},
	{"ID" : "26", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_xFFastCornerDetection_0_2160_3840_0_1_2_2_1_12_1_s_fu_54.xFfast7x7_0_2160_3840_0_1_2_2_1_3843_7_49_3_U0.grp_xFfast7x7_0_2160_3840_0_1_2_2_1_3843_7_49_3_Pipeline_Col_Loop_fu_276.flow_control_loop_pipe_sequential_init_U", "Parent" : "16"},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_xFFastCornerDetection_0_2160_3840_0_1_2_2_1_12_1_s_fu_54.xFfastnms_0_2160_3840_0_1_2_2_1_3841_3_9_4_U0", "Parent" : "1", "Child" : ["28", "29", "30", "31", "33", "35", "38"],
		"CDFG" : "xFfastnms_0_2160_3840_0_1_2_2_1_3841_3_9_4",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "8327068", "EstimateLatencyMax" : "8327068",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"StartSource" : "2",
		"StartFifo" : "start_for_xFfastnms_0_2160_3840_0_1_2_2_1_3841_3_9_4_U0_U",
		"Port" : [
			{"Name" : "p_dst_data1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["2"], "DependentChan" : "45", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "33", "SubInstance" : "grp_xFfastnms_0_2160_3840_0_1_2_2_1_3841_3_9_4_Pipeline_VITIS_LOOP_890_2_fu_143", "Port" : "p_dst_data1", "Inst_start_state" : "4", "Inst_end_state" : "5"},
					{"ID" : "38", "SubInstance" : "grp_xFfastnms_0_2160_3840_0_1_2_2_1_3841_3_9_4_Pipeline_Col_Loop_fu_163", "Port" : "p_dst_data1", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "imgOutput_data2", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "38", "SubInstance" : "grp_xFfastnms_0_2160_3840_0_1_2_2_1_3841_3_9_4_Pipeline_Col_Loop_fu_163", "Port" : "imgOutput_data2", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "img_height", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["2"], "DependentChan" : "46", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "img_height_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "img_width", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["2"], "DependentChan" : "47", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "img_width_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "read_lines", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "8", "FirstState" : "ap_ST_fsm_state4", "LastState" : ["ap_ST_fsm_state5"], "QuitState" : ["ap_ST_fsm_state4"], "PreState" : ["ap_ST_fsm_state3"], "PostState" : ["ap_ST_fsm_state6"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "Row_Loop", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "8", "FirstState" : "ap_ST_fsm_state7", "LastState" : ["ap_ST_fsm_state8"], "QuitState" : ["ap_ST_fsm_state7"], "PreState" : ["ap_ST_fsm_state6"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "28", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_xFFastCornerDetection_0_2160_3840_0_1_2_2_1_12_1_s_fu_54.xFfastnms_0_2160_3840_0_1_2_2_1_3841_3_9_4_U0.buf_V_U", "Parent" : "27"},
	{"ID" : "29", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_xFFastCornerDetection_0_2160_3840_0_1_2_2_1_12_1_s_fu_54.xFfastnms_0_2160_3840_0_1_2_2_1_3841_3_9_4_U0.buf_V_1_U", "Parent" : "27"},
	{"ID" : "30", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_xFFastCornerDetection_0_2160_3840_0_1_2_2_1_12_1_s_fu_54.xFfastnms_0_2160_3840_0_1_2_2_1_3841_3_9_4_U0.buf_V_2_U", "Parent" : "27"},
	{"ID" : "31", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_xFFastCornerDetection_0_2160_3840_0_1_2_2_1_12_1_s_fu_54.xFfastnms_0_2160_3840_0_1_2_2_1_3841_3_9_4_U0.grp_xFfastnms_0_2160_3840_0_1_2_2_1_3841_3_9_4_Pipeline_VITIS_LOOP_876_1_fu_136", "Parent" : "27", "Child" : ["32"],
		"CDFG" : "xFfastnms_0_2160_3840_0_1_2_2_1_3841_3_9_4_Pipeline_VITIS_LOOP_876_1",
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
			{"Name" : "row_ind_V_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "row_ind_V_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "row_ind_V_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_876_1", "PipelineType" : "NotSupport"}]},
	{"ID" : "32", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_xFFastCornerDetection_0_2160_3840_0_1_2_2_1_12_1_s_fu_54.xFfastnms_0_2160_3840_0_1_2_2_1_3841_3_9_4_U0.grp_xFfastnms_0_2160_3840_0_1_2_2_1_3841_3_9_4_Pipeline_VITIS_LOOP_876_1_fu_136.flow_control_loop_pipe_sequential_init_U", "Parent" : "31"},
	{"ID" : "33", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_xFFastCornerDetection_0_2160_3840_0_1_2_2_1_12_1_s_fu_54.xFfastnms_0_2160_3840_0_1_2_2_1_3841_3_9_4_U0.grp_xFfastnms_0_2160_3840_0_1_2_2_1_3841_3_9_4_Pipeline_VITIS_LOOP_890_2_fu_143", "Parent" : "27", "Child" : ["34"],
		"CDFG" : "xFfastnms_0_2160_3840_0_1_2_2_1_3841_3_9_4_Pipeline_VITIS_LOOP_890_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3843", "EstimateLatencyMax" : "3843",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "img_width_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "buf_V_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buf_V_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buf_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_dst_data1", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "p_dst_data1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "init_buf_cast", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_890_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "34", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_xFFastCornerDetection_0_2160_3840_0_1_2_2_1_12_1_s_fu_54.xFfastnms_0_2160_3840_0_1_2_2_1_3841_3_9_4_U0.grp_xFfastnms_0_2160_3840_0_1_2_2_1_3841_3_9_4_Pipeline_VITIS_LOOP_890_2_fu_143.flow_control_loop_pipe_sequential_init_U", "Parent" : "33"},
	{"ID" : "35", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_xFFastCornerDetection_0_2160_3840_0_1_2_2_1_12_1_s_fu_54.xFfastnms_0_2160_3840_0_1_2_2_1_3841_3_9_4_U0.grp_xFfastnms_0_2160_3840_0_1_2_2_1_3841_3_9_4_Pipeline_VITIS_LOOP_901_3_fu_154", "Parent" : "27", "Child" : ["36", "37"],
		"CDFG" : "xFfastnms_0_2160_3840_0_1_2_2_1_3841_3_9_4_Pipeline_VITIS_LOOP_901_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3843", "EstimateLatencyMax" : "3843",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "img_width_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "buf_V", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "buf_V_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buf_V_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "row_ind_V_1_cast", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_901_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "36", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_xFFastCornerDetection_0_2160_3840_0_1_2_2_1_12_1_s_fu_54.xFfastnms_0_2160_3840_0_1_2_2_1_3841_3_9_4_U0.grp_xFfastnms_0_2160_3840_0_1_2_2_1_3841_3_9_4_Pipeline_VITIS_LOOP_901_3_fu_154.mux_32_8_1_1_U156", "Parent" : "35"},
	{"ID" : "37", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_xFFastCornerDetection_0_2160_3840_0_1_2_2_1_12_1_s_fu_54.xFfastnms_0_2160_3840_0_1_2_2_1_3841_3_9_4_U0.grp_xFfastnms_0_2160_3840_0_1_2_2_1_3841_3_9_4_Pipeline_VITIS_LOOP_901_3_fu_154.flow_control_loop_pipe_sequential_init_U", "Parent" : "35"},
	{"ID" : "38", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_xFFastCornerDetection_0_2160_3840_0_1_2_2_1_12_1_s_fu_54.xFfastnms_0_2160_3840_0_1_2_2_1_3841_3_9_4_U0.grp_xFfastnms_0_2160_3840_0_1_2_2_1_3841_3_9_4_Pipeline_Col_Loop_fu_163", "Parent" : "27", "Child" : ["39", "40", "41", "42", "43", "44"],
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
	{"ID" : "39", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_xFFastCornerDetection_0_2160_3840_0_1_2_2_1_12_1_s_fu_54.xFfastnms_0_2160_3840_0_1_2_2_1_3841_3_9_4_U0.grp_xFfastnms_0_2160_3840_0_1_2_2_1_3841_3_9_4_Pipeline_Col_Loop_fu_163.mux_32_13_1_1_U163", "Parent" : "38"},
	{"ID" : "40", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_xFFastCornerDetection_0_2160_3840_0_1_2_2_1_12_1_s_fu_54.xFfastnms_0_2160_3840_0_1_2_2_1_3841_3_9_4_U0.grp_xFfastnms_0_2160_3840_0_1_2_2_1_3841_3_9_4_Pipeline_Col_Loop_fu_163.mux_32_8_1_1_U164", "Parent" : "38"},
	{"ID" : "41", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_xFFastCornerDetection_0_2160_3840_0_1_2_2_1_12_1_s_fu_54.xFfastnms_0_2160_3840_0_1_2_2_1_3841_3_9_4_U0.grp_xFfastnms_0_2160_3840_0_1_2_2_1_3841_3_9_4_Pipeline_Col_Loop_fu_163.mux_32_8_1_1_U165", "Parent" : "38"},
	{"ID" : "42", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_xFFastCornerDetection_0_2160_3840_0_1_2_2_1_12_1_s_fu_54.xFfastnms_0_2160_3840_0_1_2_2_1_3841_3_9_4_U0.grp_xFfastnms_0_2160_3840_0_1_2_2_1_3841_3_9_4_Pipeline_Col_Loop_fu_163.mux_32_8_1_1_U166", "Parent" : "38"},
	{"ID" : "43", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_xFFastCornerDetection_0_2160_3840_0_1_2_2_1_12_1_s_fu_54.xFfastnms_0_2160_3840_0_1_2_2_1_3841_3_9_4_U0.grp_xFfastnms_0_2160_3840_0_1_2_2_1_3841_3_9_4_Pipeline_Col_Loop_fu_163.mux_32_8_1_1_U167", "Parent" : "38"},
	{"ID" : "44", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_xFFastCornerDetection_0_2160_3840_0_1_2_2_1_12_1_s_fu_54.xFfastnms_0_2160_3840_0_1_2_2_1_3841_3_9_4_U0.grp_xFfastnms_0_2160_3840_0_1_2_2_1_3841_3_9_4_Pipeline_Col_Loop_fu_163.flow_control_loop_pipe_sequential_init_U", "Parent" : "38"},
	{"ID" : "45", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_xFFastCornerDetection_0_2160_3840_0_1_2_2_1_12_1_s_fu_54.p_dst_data_U", "Parent" : "1"},
	{"ID" : "46", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_xFFastCornerDetection_0_2160_3840_0_1_2_2_1_12_1_s_fu_54.p_image_height_c_U", "Parent" : "1"},
	{"ID" : "47", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_xFFastCornerDetection_0_2160_3840_0_1_2_2_1_12_1_s_fu_54.p_image_width_c_U", "Parent" : "1"},
	{"ID" : "48", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_xFFastCornerDetection_0_2160_3840_0_1_2_2_1_12_1_s_fu_54.start_for_xFfastnms_0_2160_3840_0_1_2_2_1_3841_3_9_4_U0_U", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
	fast_1_0_2160_3840_1_2_2_s {
		p_src_mat_rows {Type I LastRead 0 FirstWrite -1}
		p_src_mat_cols {Type I LastRead 0 FirstWrite -1}
		imgInput_data1 {Type I LastRead 1 FirstWrite -1}
		imgOutput_data2 {Type O LastRead -1 FirstWrite 4}
		p_threshold {Type I LastRead 0 FirstWrite -1}}
	xFFastCornerDetection_0_2160_3840_0_1_2_2_1_12_1_s {
		imgInput_data1 {Type I LastRead 1 FirstWrite -1}
		imgOutput_data2 {Type O LastRead -1 FirstWrite 4}
		p_image_height {Type I LastRead 0 FirstWrite -1}
		p_image_width {Type I LastRead 0 FirstWrite -1}
		p_threshold {Type I LastRead 0 FirstWrite -1}}
	xFfast7x7_0_2160_3840_0_1_2_2_1_3843_7_49_3 {
		imgInput_data1 {Type I LastRead 1 FirstWrite -1}
		p_dst_data1 {Type O LastRead -1 FirstWrite 10}
		img_height {Type I LastRead 0 FirstWrite -1}
		img_width {Type I LastRead 0 FirstWrite -1}
		p_threshold {Type I LastRead 2 FirstWrite -1}
		p_image_height_c {Type O LastRead -1 FirstWrite 0}
		p_image_width_c {Type O LastRead -1 FirstWrite 0}}
	xFfast7x7_0_2160_3840_0_1_2_2_1_3843_7_49_3_Pipeline_VITIS_LOOP_515_1 {
		row_ind_V_15_out {Type O LastRead -1 FirstWrite 0}
		row_ind_V_14_out {Type O LastRead -1 FirstWrite 0}
		row_ind_V_13_out {Type O LastRead -1 FirstWrite 0}
		row_ind_V_12_out {Type O LastRead -1 FirstWrite 0}
		row_ind_V_11_out {Type O LastRead -1 FirstWrite 0}
		row_ind_V_10_out {Type O LastRead -1 FirstWrite 0}
		row_ind_V_out {Type O LastRead -1 FirstWrite 0}}
	xFfast7x7_0_2160_3840_0_1_2_2_1_3843_7_49_3_Pipeline_VITIS_LOOP_530_2 {
		img_width {Type I LastRead 0 FirstWrite -1}
		buf_V_8 {Type O LastRead -1 FirstWrite 1}
		buf_V_7 {Type O LastRead -1 FirstWrite 1}
		buf_V_6 {Type O LastRead -1 FirstWrite 1}
		buf_V_5 {Type O LastRead -1 FirstWrite 1}
		buf_V_4 {Type O LastRead -1 FirstWrite 1}
		buf_V_3 {Type O LastRead -1 FirstWrite 1}
		buf_V {Type O LastRead -1 FirstWrite 1}
		imgInput_data1 {Type I LastRead 1 FirstWrite -1}
		init_buf_cast {Type I LastRead 0 FirstWrite -1}}
	xFfast7x7_0_2160_3840_0_1_2_2_1_3843_7_49_3_Pipeline_VITIS_LOOP_541_3 {
		img_width {Type I LastRead 0 FirstWrite -1}
		buf_V {Type O LastRead -1 FirstWrite 0}
		buf_V_3 {Type O LastRead -1 FirstWrite 0}
		buf_V_4 {Type O LastRead -1 FirstWrite 0}}
	xFfast7x7_0_2160_3840_0_1_2_2_1_3843_7_49_3_Pipeline_Col_Loop {
		op2_assign {Type I LastRead 0 FirstWrite -1}
		buf_V_8 {Type IO LastRead 2 FirstWrite 1}
		buf_V {Type IO LastRead 2 FirstWrite 1}
		buf_V_3 {Type IO LastRead 2 FirstWrite 1}
		buf_V_4 {Type IO LastRead 2 FirstWrite 1}
		buf_V_5 {Type IO LastRead 2 FirstWrite 1}
		buf_V_6 {Type IO LastRead 2 FirstWrite 1}
		buf_V_7 {Type IO LastRead 2 FirstWrite 1}
		row_ind_V_24 {Type I LastRead 0 FirstWrite -1}
		row_ind_V_25 {Type I LastRead 0 FirstWrite -1}
		row_ind_V_26 {Type I LastRead 0 FirstWrite -1}
		row_ind_V_27 {Type I LastRead 0 FirstWrite -1}
		row_ind_V_28 {Type I LastRead 0 FirstWrite -1}
		row_ind_V_29 {Type I LastRead 0 FirstWrite -1}
		row_ind_V_30 {Type I LastRead 0 FirstWrite -1}
		sub_i273_i_cast {Type I LastRead 0 FirstWrite -1}
		row_ind_V_24_cast {Type I LastRead 0 FirstWrite -1}
		spec_select484 {Type I LastRead 0 FirstWrite -1}
		row_ind_V_25_cast {Type I LastRead 0 FirstWrite -1}
		spec_select488 {Type I LastRead 0 FirstWrite -1}
		row_ind_V_26_cast {Type I LastRead 0 FirstWrite -1}
		spec_select492 {Type I LastRead 0 FirstWrite -1}
		row_ind_V_27_cast {Type I LastRead 0 FirstWrite -1}
		spec_select496 {Type I LastRead 0 FirstWrite -1}
		row_ind_V_28_cast {Type I LastRead 0 FirstWrite -1}
		spec_select500 {Type I LastRead 0 FirstWrite -1}
		row_ind_V_29_cast {Type I LastRead 0 FirstWrite -1}
		spec_select504 {Type I LastRead 0 FirstWrite -1}
		row_ind_V_30_cast {Type I LastRead 0 FirstWrite -1}
		spec_select508 {Type I LastRead 0 FirstWrite -1}
		cmp_i_i73_i_not {Type I LastRead 0 FirstWrite -1}
		p_threshold_cast {Type I LastRead 0 FirstWrite -1}
		b0 {Type I LastRead 0 FirstWrite -1}
		p_threshold {Type I LastRead 0 FirstWrite -1}
		xor_ln435_1 {Type I LastRead 0 FirstWrite -1}
		img_width {Type I LastRead 0 FirstWrite -1}
		cmp_i_i49_i {Type I LastRead 0 FirstWrite -1}
		cmp_i_i381_i {Type I LastRead 0 FirstWrite -1}
		imgInput_data1 {Type I LastRead 1 FirstWrite -1}
		p_dst_data1 {Type O LastRead -1 FirstWrite 10}
		p_0_0_01084242_out {Type IO LastRead 10 FirstWrite 10}}
	xFfastnms_0_2160_3840_0_1_2_2_1_3841_3_9_4 {
		p_dst_data1 {Type I LastRead 1 FirstWrite -1}
		imgOutput_data2 {Type O LastRead -1 FirstWrite 4}
		img_height {Type I LastRead 2 FirstWrite -1}
		img_width {Type I LastRead 2 FirstWrite -1}}
	xFfastnms_0_2160_3840_0_1_2_2_1_3841_3_9_4_Pipeline_VITIS_LOOP_876_1 {
		row_ind_V_2_out {Type O LastRead -1 FirstWrite 0}
		row_ind_V_1_out {Type O LastRead -1 FirstWrite 0}
		row_ind_V_out {Type O LastRead -1 FirstWrite 0}}
	xFfastnms_0_2160_3840_0_1_2_2_1_3841_3_9_4_Pipeline_VITIS_LOOP_890_2 {
		img_width_load {Type I LastRead 0 FirstWrite -1}
		buf_V_2 {Type O LastRead -1 FirstWrite 1}
		buf_V_1 {Type O LastRead -1 FirstWrite 1}
		buf_V {Type O LastRead -1 FirstWrite 1}
		p_dst_data1 {Type I LastRead 1 FirstWrite -1}
		init_buf_cast {Type I LastRead 0 FirstWrite -1}}
	xFfastnms_0_2160_3840_0_1_2_2_1_3841_3_9_4_Pipeline_VITIS_LOOP_901_3 {
		img_width_load {Type I LastRead 0 FirstWrite -1}
		buf_V {Type IO LastRead 0 FirstWrite 1}
		buf_V_1 {Type I LastRead 0 FirstWrite -1}
		buf_V_2 {Type I LastRead 0 FirstWrite -1}
		row_ind_V_1_cast {Type I LastRead 0 FirstWrite -1}}
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
	{"Name" : "Latency", "Min" : "16644495", "Max" : "16644495"}
	, {"Name" : "Interval", "Min" : "16644495", "Max" : "16644495"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	p_src_mat_rows { ap_fifo {  { p_src_mat_rows_dout fifo_port_we 0 32 }  { p_src_mat_rows_num_data_valid fifo_status_num_data_valid 0 2 }  { p_src_mat_rows_fifo_cap fifo_update 0 2 }  { p_src_mat_rows_empty_n fifo_status 0 1 }  { p_src_mat_rows_read fifo_data 1 1 } } }
	p_src_mat_cols { ap_fifo {  { p_src_mat_cols_dout fifo_port_we 0 32 }  { p_src_mat_cols_num_data_valid fifo_status_num_data_valid 0 2 }  { p_src_mat_cols_fifo_cap fifo_update 0 2 }  { p_src_mat_cols_empty_n fifo_status 0 1 }  { p_src_mat_cols_read fifo_data 1 1 } } }
	imgInput_data1 { ap_fifo {  { imgInput_data1_dout fifo_port_we 0 8 }  { imgInput_data1_num_data_valid fifo_status_num_data_valid 0 2 }  { imgInput_data1_fifo_cap fifo_update 0 2 }  { imgInput_data1_empty_n fifo_status 0 1 }  { imgInput_data1_read fifo_data 1 1 } } }
	imgOutput_data2 { ap_fifo {  { imgOutput_data2_din fifo_port_we 1 8 }  { imgOutput_data2_num_data_valid fifo_status_num_data_valid 0 2 }  { imgOutput_data2_fifo_cap fifo_update 0 2 }  { imgOutput_data2_full_n fifo_status 0 1 }  { imgOutput_data2_write fifo_data 1 1 } } }
	p_threshold { ap_fifo {  { p_threshold_dout fifo_port_we 0 8 }  { p_threshold_num_data_valid fifo_status_num_data_valid 0 3 }  { p_threshold_fifo_cap fifo_update 0 3 }  { p_threshold_empty_n fifo_status 0 1 }  { p_threshold_read fifo_data 1 1 } } }
}
