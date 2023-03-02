set moduleName xFSobel_0_2_1080_1920_0_3_1_2_2_2_1_5_3_false_s
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
set C_modelName {xFSobel<0, 2, 1080, 1920, 0, 3, 1, 2, 2, 2, 1, 5, 3, false>}
set C_modelType { void 0 }
set C_modelArgList {
	{ gaussian_mat_data1 int 8 regular {fifo 0 volatile }  }
	{ gradx_mat_data2 int 16 regular {fifo 1 volatile }  }
	{ grady_mat_data5 int 16 regular {fifo 1 volatile }  }
	{ imgheight int 16 regular {fifo 0}  }
	{ imgwidth int 16 regular {fifo 0}  }
	{ img_height_c21 int 16 regular {fifo 1}  }
	{ img_width_c25 int 16 regular {fifo 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "gaussian_mat_data1", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "gradx_mat_data2", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "grady_mat_data5", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "imgheight", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "imgwidth", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "img_height_c21", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "img_width_c25", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 45
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
	{ gaussian_mat_data1_dout sc_in sc_lv 8 signal 0 } 
	{ gaussian_mat_data1_num_data_valid sc_in sc_lv 2 signal 0 } 
	{ gaussian_mat_data1_fifo_cap sc_in sc_lv 2 signal 0 } 
	{ gaussian_mat_data1_empty_n sc_in sc_logic 1 signal 0 } 
	{ gaussian_mat_data1_read sc_out sc_logic 1 signal 0 } 
	{ gradx_mat_data2_din sc_out sc_lv 16 signal 1 } 
	{ gradx_mat_data2_num_data_valid sc_in sc_lv 2 signal 1 } 
	{ gradx_mat_data2_fifo_cap sc_in sc_lv 2 signal 1 } 
	{ gradx_mat_data2_full_n sc_in sc_logic 1 signal 1 } 
	{ gradx_mat_data2_write sc_out sc_logic 1 signal 1 } 
	{ grady_mat_data5_din sc_out sc_lv 16 signal 2 } 
	{ grady_mat_data5_num_data_valid sc_in sc_lv 2 signal 2 } 
	{ grady_mat_data5_fifo_cap sc_in sc_lv 2 signal 2 } 
	{ grady_mat_data5_full_n sc_in sc_logic 1 signal 2 } 
	{ grady_mat_data5_write sc_out sc_logic 1 signal 2 } 
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
	{ img_height_c21_din sc_out sc_lv 16 signal 5 } 
	{ img_height_c21_num_data_valid sc_in sc_lv 2 signal 5 } 
	{ img_height_c21_fifo_cap sc_in sc_lv 2 signal 5 } 
	{ img_height_c21_full_n sc_in sc_logic 1 signal 5 } 
	{ img_height_c21_write sc_out sc_logic 1 signal 5 } 
	{ img_width_c25_din sc_out sc_lv 16 signal 6 } 
	{ img_width_c25_num_data_valid sc_in sc_lv 2 signal 6 } 
	{ img_width_c25_fifo_cap sc_in sc_lv 2 signal 6 } 
	{ img_width_c25_full_n sc_in sc_logic 1 signal 6 } 
	{ img_width_c25_write sc_out sc_logic 1 signal 6 } 
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
 	{ "name": "gaussian_mat_data1_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gaussian_mat_data1", "role": "dout" }} , 
 	{ "name": "gaussian_mat_data1_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gaussian_mat_data1", "role": "num_data_valid" }} , 
 	{ "name": "gaussian_mat_data1_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gaussian_mat_data1", "role": "fifo_cap" }} , 
 	{ "name": "gaussian_mat_data1_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gaussian_mat_data1", "role": "empty_n" }} , 
 	{ "name": "gaussian_mat_data1_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gaussian_mat_data1", "role": "read" }} , 
 	{ "name": "gradx_mat_data2_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "gradx_mat_data2", "role": "din" }} , 
 	{ "name": "gradx_mat_data2_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gradx_mat_data2", "role": "num_data_valid" }} , 
 	{ "name": "gradx_mat_data2_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gradx_mat_data2", "role": "fifo_cap" }} , 
 	{ "name": "gradx_mat_data2_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gradx_mat_data2", "role": "full_n" }} , 
 	{ "name": "gradx_mat_data2_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gradx_mat_data2", "role": "write" }} , 
 	{ "name": "grady_mat_data5_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "grady_mat_data5", "role": "din" }} , 
 	{ "name": "grady_mat_data5_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grady_mat_data5", "role": "num_data_valid" }} , 
 	{ "name": "grady_mat_data5_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grady_mat_data5", "role": "fifo_cap" }} , 
 	{ "name": "grady_mat_data5_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grady_mat_data5", "role": "full_n" }} , 
 	{ "name": "grady_mat_data5_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grady_mat_data5", "role": "write" }} , 
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
 	{ "name": "img_height_c21_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "img_height_c21", "role": "din" }} , 
 	{ "name": "img_height_c21_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "img_height_c21", "role": "num_data_valid" }} , 
 	{ "name": "img_height_c21_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "img_height_c21", "role": "fifo_cap" }} , 
 	{ "name": "img_height_c21_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_height_c21", "role": "full_n" }} , 
 	{ "name": "img_height_c21_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_height_c21", "role": "write" }} , 
 	{ "name": "img_width_c25_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "img_width_c25", "role": "din" }} , 
 	{ "name": "img_width_c25_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "img_width_c25", "role": "num_data_valid" }} , 
 	{ "name": "img_width_c25_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "img_width_c25", "role": "fifo_cap" }} , 
 	{ "name": "img_width_c25_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_width_c25", "role": "full_n" }} , 
 	{ "name": "img_width_c25_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_width_c25", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
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
		"Port" : [
			{"Name" : "gaussian_mat_data1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_xFSobel3x3_0_2_1080_1920_0_3_1_2_2_2_1_5_1921_3_9_false_s_fu_68", "Port" : "gaussian_mat_data1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "gradx_mat_data2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_xFSobel3x3_0_2_1080_1920_0_3_1_2_2_2_1_5_1921_3_9_false_s_fu_68", "Port" : "gradx_mat_data2", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "grady_mat_data5", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_xFSobel3x3_0_2_1080_1920_0_3_1_2_2_2_1_5_1921_3_9_false_s_fu_68", "Port" : "grady_mat_data5", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "imgheight", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "imgheight_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "imgwidth", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "imgwidth_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "img_height_c21", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "img_height_c21_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "img_width_c25", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "img_width_c25_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_xFSobel3x3_0_2_1080_1920_0_3_1_2_2_2_1_5_1921_3_9_false_s_fu_68", "Parent" : "0", "Child" : ["2", "3", "4", "5", "7", "9", "12"],
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
					{"ID" : "12", "SubInstance" : "grp_xFSobel3x3_Pipeline_Col_Loop_fu_155", "Port" : "gaussian_mat_data1", "Inst_start_state" : "7", "Inst_end_state" : "8"},
					{"ID" : "7", "SubInstance" : "grp_xFSobel3x3_Pipeline_VITIS_LOOP_468_2_fu_135", "Port" : "gaussian_mat_data1", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "gradx_mat_data2", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "grp_xFSobel3x3_Pipeline_Col_Loop_fu_155", "Port" : "gradx_mat_data2", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "grady_mat_data5", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "grp_xFSobel3x3_Pipeline_Col_Loop_fu_155", "Port" : "grady_mat_data5", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "img_height", "Type" : "None", "Direction" : "I"},
			{"Name" : "img_width", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "read_lines", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "8", "FirstState" : "ap_ST_fsm_state4", "LastState" : ["ap_ST_fsm_state5"], "QuitState" : ["ap_ST_fsm_state4"], "PreState" : ["ap_ST_fsm_state3"], "PostState" : ["ap_ST_fsm_state6"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "Row_Loop", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "8", "FirstState" : "ap_ST_fsm_state7", "LastState" : ["ap_ST_fsm_state8"], "QuitState" : ["ap_ST_fsm_state7"], "PreState" : ["ap_ST_fsm_state6"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_xFSobel3x3_0_2_1080_1920_0_3_1_2_2_2_1_5_1921_3_9_false_s_fu_68.buf_V_U", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_xFSobel3x3_0_2_1080_1920_0_3_1_2_2_2_1_5_1921_3_9_false_s_fu_68.buf_V_3_U", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_xFSobel3x3_0_2_1080_1920_0_3_1_2_2_2_1_5_1921_3_9_false_s_fu_68.buf_V_4_U", "Parent" : "1"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_xFSobel3x3_0_2_1080_1920_0_3_1_2_2_2_1_5_1921_3_9_false_s_fu_68.grp_xFSobel3x3_Pipeline_VITIS_LOOP_456_1_fu_128", "Parent" : "1", "Child" : ["6"],
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
	{"ID" : "6", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_xFSobel3x3_0_2_1080_1920_0_3_1_2_2_2_1_5_1921_3_9_false_s_fu_68.grp_xFSobel3x3_Pipeline_VITIS_LOOP_456_1_fu_128.flow_control_loop_pipe_sequential_init_U", "Parent" : "5"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_xFSobel3x3_0_2_1080_1920_0_3_1_2_2_2_1_5_1921_3_9_false_s_fu_68.grp_xFSobel3x3_Pipeline_VITIS_LOOP_468_2_fu_135", "Parent" : "1", "Child" : ["8"],
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
	{"ID" : "8", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_xFSobel3x3_0_2_1080_1920_0_3_1_2_2_2_1_5_1921_3_9_false_s_fu_68.grp_xFSobel3x3_Pipeline_VITIS_LOOP_468_2_fu_135.flow_control_loop_pipe_sequential_init_U", "Parent" : "7"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_xFSobel3x3_0_2_1080_1920_0_3_1_2_2_2_1_5_1921_3_9_false_s_fu_68.grp_xFSobel3x3_Pipeline_VITIS_LOOP_479_3_fu_146", "Parent" : "1", "Child" : ["10", "11"],
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
	{"ID" : "10", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_xFSobel3x3_0_2_1080_1920_0_3_1_2_2_2_1_5_1921_3_9_false_s_fu_68.grp_xFSobel3x3_Pipeline_VITIS_LOOP_479_3_fu_146.mux_32_8_1_1_U111", "Parent" : "9"},
	{"ID" : "11", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_xFSobel3x3_0_2_1080_1920_0_3_1_2_2_2_1_5_1921_3_9_false_s_fu_68.grp_xFSobel3x3_Pipeline_VITIS_LOOP_479_3_fu_146.flow_control_loop_pipe_sequential_init_U", "Parent" : "9"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_xFSobel3x3_0_2_1080_1920_0_3_1_2_2_2_1_5_1921_3_9_false_s_fu_68.grp_xFSobel3x3_Pipeline_Col_Loop_fu_155", "Parent" : "1", "Child" : ["13", "14", "15", "16", "17", "18"],
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
	{"ID" : "13", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_xFSobel3x3_0_2_1080_1920_0_3_1_2_2_2_1_5_1921_3_9_false_s_fu_68.grp_xFSobel3x3_Pipeline_Col_Loop_fu_155.mux_32_13_1_1_U117", "Parent" : "12"},
	{"ID" : "14", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_xFSobel3x3_0_2_1080_1920_0_3_1_2_2_2_1_5_1921_3_9_false_s_fu_68.grp_xFSobel3x3_Pipeline_Col_Loop_fu_155.mux_32_8_1_1_U118", "Parent" : "12"},
	{"ID" : "15", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_xFSobel3x3_0_2_1080_1920_0_3_1_2_2_2_1_5_1921_3_9_false_s_fu_68.grp_xFSobel3x3_Pipeline_Col_Loop_fu_155.mux_32_8_1_1_U119", "Parent" : "12"},
	{"ID" : "16", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_xFSobel3x3_0_2_1080_1920_0_3_1_2_2_2_1_5_1921_3_9_false_s_fu_68.grp_xFSobel3x3_Pipeline_Col_Loop_fu_155.mux_32_8_1_1_U120", "Parent" : "12"},
	{"ID" : "17", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_xFSobel3x3_0_2_1080_1920_0_3_1_2_2_2_1_5_1921_3_9_false_s_fu_68.grp_xFSobel3x3_Pipeline_Col_Loop_fu_155.mux_32_8_1_1_U121", "Parent" : "12"},
	{"ID" : "18", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_xFSobel3x3_0_2_1080_1920_0_3_1_2_2_2_1_5_1921_3_9_false_s_fu_68.grp_xFSobel3x3_Pipeline_Col_Loop_fu_155.flow_control_loop_pipe_sequential_init_U", "Parent" : "12"}]}


set ArgLastReadFirstWriteLatency {
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
		grady_mat_data5 {Type O LastRead -1 FirstWrite 4}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "2089949", "Max" : "2089949"}
	, {"Name" : "Interval", "Min" : "2089949", "Max" : "2089949"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	gaussian_mat_data1 { ap_fifo {  { gaussian_mat_data1_dout fifo_port_we 0 8 }  { gaussian_mat_data1_num_data_valid fifo_status_num_data_valid 0 2 }  { gaussian_mat_data1_fifo_cap fifo_update 0 2 }  { gaussian_mat_data1_empty_n fifo_status 0 1 }  { gaussian_mat_data1_read fifo_data 1 1 } } }
	gradx_mat_data2 { ap_fifo {  { gradx_mat_data2_din fifo_port_we 1 16 }  { gradx_mat_data2_num_data_valid fifo_status_num_data_valid 0 2 }  { gradx_mat_data2_fifo_cap fifo_update 0 2 }  { gradx_mat_data2_full_n fifo_status 0 1 }  { gradx_mat_data2_write fifo_data 1 1 } } }
	grady_mat_data5 { ap_fifo {  { grady_mat_data5_din fifo_port_we 1 16 }  { grady_mat_data5_num_data_valid fifo_status_num_data_valid 0 2 }  { grady_mat_data5_fifo_cap fifo_update 0 2 }  { grady_mat_data5_full_n fifo_status 0 1 }  { grady_mat_data5_write fifo_data 1 1 } } }
	imgheight { ap_fifo {  { imgheight_dout fifo_port_we 0 16 }  { imgheight_num_data_valid fifo_status_num_data_valid 0 2 }  { imgheight_fifo_cap fifo_update 0 2 }  { imgheight_empty_n fifo_status 0 1 }  { imgheight_read fifo_data 1 1 } } }
	imgwidth { ap_fifo {  { imgwidth_dout fifo_port_we 0 16 }  { imgwidth_num_data_valid fifo_status_num_data_valid 0 2 }  { imgwidth_fifo_cap fifo_update 0 2 }  { imgwidth_empty_n fifo_status 0 1 }  { imgwidth_read fifo_data 1 1 } } }
	img_height_c21 { ap_fifo {  { img_height_c21_din fifo_port_we 1 16 }  { img_height_c21_num_data_valid fifo_status_num_data_valid 0 2 }  { img_height_c21_fifo_cap fifo_update 0 2 }  { img_height_c21_full_n fifo_status 0 1 }  { img_height_c21_write fifo_data 1 1 } } }
	img_width_c25 { ap_fifo {  { img_width_c25_din fifo_port_we 1 16 }  { img_width_c25_num_data_valid fifo_status_num_data_valid 0 2 }  { img_width_c25_fifo_cap fifo_update 0 2 }  { img_width_c25_full_n fifo_status 0 1 }  { img_width_c25_write fifo_data 1 1 } } }
}
