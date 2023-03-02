set moduleName xFSobel3x3_0_2_1080_1920_0_3_1_2_2_2_1_5_1921_3_9_false_s
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
set C_modelName {xFSobel3x3<0, 2, 1080, 1920, 0, 3, 1, 2, 2, 2, 1, 5, 1921, 3, 9, false>}
set C_modelType { void 0 }
set C_modelArgList {
	{ gaussian_mat_data1 int 8 regular {fifo 0 volatile }  }
	{ gradx_mat_data2 int 16 regular {fifo 1 volatile }  }
	{ grady_mat_data5 int 16 regular {fifo 1 volatile }  }
	{ img_height uint 16 regular  }
	{ img_width uint 16 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "gaussian_mat_data1", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "gradx_mat_data2", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "grady_mat_data5", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "img_height", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "img_width", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 26
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
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
	{ img_height sc_in sc_lv 16 signal 3 } 
	{ img_width sc_in sc_lv 16 signal 4 } 
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
 	{ "name": "img_height", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "img_height", "role": "default" }} , 
 	{ "name": "img_width", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "img_width", "role": "default" }} , 
 	{ "name": "ap_ext_blocking_n", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_ext_blocking_n", "role": "default" }} , 
 	{ "name": "ap_str_blocking_n", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_str_blocking_n", "role": "default" }} , 
 	{ "name": "ap_int_blocking_n", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_int_blocking_n", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "6", "8", "11"],
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
					{"ID" : "11", "SubInstance" : "grp_xFSobel3x3_Pipeline_Col_Loop_fu_155", "Port" : "gaussian_mat_data1", "Inst_start_state" : "7", "Inst_end_state" : "8"},
					{"ID" : "6", "SubInstance" : "grp_xFSobel3x3_Pipeline_VITIS_LOOP_468_2_fu_135", "Port" : "gaussian_mat_data1", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "gradx_mat_data2", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "grp_xFSobel3x3_Pipeline_Col_Loop_fu_155", "Port" : "gradx_mat_data2", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "grady_mat_data5", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "grp_xFSobel3x3_Pipeline_Col_Loop_fu_155", "Port" : "grady_mat_data5", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "img_height", "Type" : "None", "Direction" : "I"},
			{"Name" : "img_width", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "read_lines", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "8", "FirstState" : "ap_ST_fsm_state4", "LastState" : ["ap_ST_fsm_state5"], "QuitState" : ["ap_ST_fsm_state4"], "PreState" : ["ap_ST_fsm_state3"], "PostState" : ["ap_ST_fsm_state6"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "Row_Loop", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "8", "FirstState" : "ap_ST_fsm_state7", "LastState" : ["ap_ST_fsm_state8"], "QuitState" : ["ap_ST_fsm_state7"], "PreState" : ["ap_ST_fsm_state6"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_V_3_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_V_4_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_xFSobel3x3_Pipeline_VITIS_LOOP_456_1_fu_128", "Parent" : "0", "Child" : ["5"],
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
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_xFSobel3x3_Pipeline_VITIS_LOOP_456_1_fu_128.flow_control_loop_pipe_sequential_init_U", "Parent" : "4"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_xFSobel3x3_Pipeline_VITIS_LOOP_468_2_fu_135", "Parent" : "0", "Child" : ["7"],
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
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_xFSobel3x3_Pipeline_VITIS_LOOP_468_2_fu_135.flow_control_loop_pipe_sequential_init_U", "Parent" : "6"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_xFSobel3x3_Pipeline_VITIS_LOOP_479_3_fu_146", "Parent" : "0", "Child" : ["9", "10"],
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
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_xFSobel3x3_Pipeline_VITIS_LOOP_479_3_fu_146.mux_32_8_1_1_U111", "Parent" : "8"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_xFSobel3x3_Pipeline_VITIS_LOOP_479_3_fu_146.flow_control_loop_pipe_sequential_init_U", "Parent" : "8"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_xFSobel3x3_Pipeline_Col_Loop_fu_155", "Parent" : "0", "Child" : ["12", "13", "14", "15", "16", "17"],
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
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_xFSobel3x3_Pipeline_Col_Loop_fu_155.mux_32_13_1_1_U117", "Parent" : "11"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_xFSobel3x3_Pipeline_Col_Loop_fu_155.mux_32_8_1_1_U118", "Parent" : "11"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_xFSobel3x3_Pipeline_Col_Loop_fu_155.mux_32_8_1_1_U119", "Parent" : "11"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_xFSobel3x3_Pipeline_Col_Loop_fu_155.mux_32_8_1_1_U120", "Parent" : "11"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_xFSobel3x3_Pipeline_Col_Loop_fu_155.mux_32_8_1_1_U121", "Parent" : "11"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_xFSobel3x3_Pipeline_Col_Loop_fu_155.flow_control_loop_pipe_sequential_init_U", "Parent" : "11"}]}


set ArgLastReadFirstWriteLatency {
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
	{"Name" : "Latency", "Min" : "2089948", "Max" : "2089948"}
	, {"Name" : "Interval", "Min" : "2089948", "Max" : "2089948"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	gaussian_mat_data1 { ap_fifo {  { gaussian_mat_data1_dout fifo_port_we 0 8 }  { gaussian_mat_data1_num_data_valid fifo_status_num_data_valid 0 2 }  { gaussian_mat_data1_fifo_cap fifo_update 0 2 }  { gaussian_mat_data1_empty_n fifo_status 0 1 }  { gaussian_mat_data1_read fifo_data 1 1 } } }
	gradx_mat_data2 { ap_fifo {  { gradx_mat_data2_din fifo_port_we 1 16 }  { gradx_mat_data2_num_data_valid fifo_status_num_data_valid 0 2 }  { gradx_mat_data2_fifo_cap fifo_update 0 2 }  { gradx_mat_data2_full_n fifo_status 0 1 }  { gradx_mat_data2_write fifo_data 1 1 } } }
	grady_mat_data5 { ap_fifo {  { grady_mat_data5_din fifo_port_we 1 16 }  { grady_mat_data5_num_data_valid fifo_status_num_data_valid 0 2 }  { grady_mat_data5_fifo_cap fifo_update 0 2 }  { grady_mat_data5_full_n fifo_status 0 1 }  { grady_mat_data5_write fifo_data 1 1 } } }
	img_height { ap_none {  { img_height in_data 0 16 } } }
	img_width { ap_none {  { img_width in_data 0 16 } } }
}
