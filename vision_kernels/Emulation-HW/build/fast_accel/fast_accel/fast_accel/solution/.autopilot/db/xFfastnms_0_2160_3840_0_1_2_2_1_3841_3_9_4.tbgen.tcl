set moduleName xFfastnms_0_2160_3840_0_1_2_2_1_3841_3_9_4
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
set C_modelName {xFfastnms<0, 2160, 3840, 0, 1, 2, 2, 1, 3841, 3, 9>4}
set C_modelType { void 0 }
set C_modelArgList {
	{ p_dst_data1 int 8 regular {fifo 0 volatile }  }
	{ imgOutput_data2 int 8 regular {fifo 1 volatile }  }
	{ img_height int 16 regular {fifo 0}  }
	{ img_width int 16 regular {fifo 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "p_dst_data1", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "imgOutput_data2", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "img_height", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "img_width", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 30
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ p_dst_data1_dout sc_in sc_lv 8 signal 0 } 
	{ p_dst_data1_num_data_valid sc_in sc_lv 2 signal 0 } 
	{ p_dst_data1_fifo_cap sc_in sc_lv 2 signal 0 } 
	{ p_dst_data1_empty_n sc_in sc_logic 1 signal 0 } 
	{ p_dst_data1_read sc_out sc_logic 1 signal 0 } 
	{ imgOutput_data2_din sc_out sc_lv 8 signal 1 } 
	{ imgOutput_data2_num_data_valid sc_in sc_lv 2 signal 1 } 
	{ imgOutput_data2_fifo_cap sc_in sc_lv 2 signal 1 } 
	{ imgOutput_data2_full_n sc_in sc_logic 1 signal 1 } 
	{ imgOutput_data2_write sc_out sc_logic 1 signal 1 } 
	{ img_height_dout sc_in sc_lv 16 signal 2 } 
	{ img_height_num_data_valid sc_in sc_lv 2 signal 2 } 
	{ img_height_fifo_cap sc_in sc_lv 2 signal 2 } 
	{ img_height_empty_n sc_in sc_logic 1 signal 2 } 
	{ img_height_read sc_out sc_logic 1 signal 2 } 
	{ img_width_dout sc_in sc_lv 16 signal 3 } 
	{ img_width_num_data_valid sc_in sc_lv 2 signal 3 } 
	{ img_width_fifo_cap sc_in sc_lv 2 signal 3 } 
	{ img_width_empty_n sc_in sc_logic 1 signal 3 } 
	{ img_width_read sc_out sc_logic 1 signal 3 } 
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
 	{ "name": "img_height_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "img_height", "role": "dout" }} , 
 	{ "name": "img_height_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "img_height", "role": "num_data_valid" }} , 
 	{ "name": "img_height_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "img_height", "role": "fifo_cap" }} , 
 	{ "name": "img_height_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_height", "role": "empty_n" }} , 
 	{ "name": "img_height_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_height", "role": "read" }} , 
 	{ "name": "img_width_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "img_width", "role": "dout" }} , 
 	{ "name": "img_width_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "img_width", "role": "num_data_valid" }} , 
 	{ "name": "img_width_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "img_width", "role": "fifo_cap" }} , 
 	{ "name": "img_width_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_width", "role": "empty_n" }} , 
 	{ "name": "img_width_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_width", "role": "read" }} , 
 	{ "name": "ap_ext_blocking_n", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_ext_blocking_n", "role": "default" }} , 
 	{ "name": "ap_str_blocking_n", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_str_blocking_n", "role": "default" }} , 
 	{ "name": "ap_int_blocking_n", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_int_blocking_n", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "6", "8", "11"],
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
		"Port" : [
			{"Name" : "p_dst_data1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "grp_xFfastnms_0_2160_3840_0_1_2_2_1_3841_3_9_4_Pipeline_Col_Loop_fu_163", "Port" : "p_dst_data1", "Inst_start_state" : "7", "Inst_end_state" : "8"},
					{"ID" : "6", "SubInstance" : "grp_xFfastnms_0_2160_3840_0_1_2_2_1_3841_3_9_4_Pipeline_VITIS_LOOP_890_2_fu_143", "Port" : "p_dst_data1", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "imgOutput_data2", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "grp_xFfastnms_0_2160_3840_0_1_2_2_1_3841_3_9_4_Pipeline_Col_Loop_fu_163", "Port" : "imgOutput_data2", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "img_height", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "img_height_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "img_width", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "img_width_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "read_lines", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "8", "FirstState" : "ap_ST_fsm_state4", "LastState" : ["ap_ST_fsm_state5"], "QuitState" : ["ap_ST_fsm_state4"], "PreState" : ["ap_ST_fsm_state3"], "PostState" : ["ap_ST_fsm_state6"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "Row_Loop", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "8", "FirstState" : "ap_ST_fsm_state7", "LastState" : ["ap_ST_fsm_state8"], "QuitState" : ["ap_ST_fsm_state7"], "PreState" : ["ap_ST_fsm_state6"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_V_1_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_V_2_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_xFfastnms_0_2160_3840_0_1_2_2_1_3841_3_9_4_Pipeline_VITIS_LOOP_876_1_fu_136", "Parent" : "0", "Child" : ["5"],
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
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_xFfastnms_0_2160_3840_0_1_2_2_1_3841_3_9_4_Pipeline_VITIS_LOOP_876_1_fu_136.flow_control_loop_pipe_sequential_init_U", "Parent" : "4"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_xFfastnms_0_2160_3840_0_1_2_2_1_3841_3_9_4_Pipeline_VITIS_LOOP_890_2_fu_143", "Parent" : "0", "Child" : ["7"],
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
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_xFfastnms_0_2160_3840_0_1_2_2_1_3841_3_9_4_Pipeline_VITIS_LOOP_890_2_fu_143.flow_control_loop_pipe_sequential_init_U", "Parent" : "6"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_xFfastnms_0_2160_3840_0_1_2_2_1_3841_3_9_4_Pipeline_VITIS_LOOP_901_3_fu_154", "Parent" : "0", "Child" : ["9", "10"],
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
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_xFfastnms_0_2160_3840_0_1_2_2_1_3841_3_9_4_Pipeline_VITIS_LOOP_901_3_fu_154.mux_32_8_1_1_U156", "Parent" : "8"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_xFfastnms_0_2160_3840_0_1_2_2_1_3841_3_9_4_Pipeline_VITIS_LOOP_901_3_fu_154.flow_control_loop_pipe_sequential_init_U", "Parent" : "8"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_xFfastnms_0_2160_3840_0_1_2_2_1_3841_3_9_4_Pipeline_Col_Loop_fu_163", "Parent" : "0", "Child" : ["12", "13", "14", "15", "16", "17"],
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
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_xFfastnms_0_2160_3840_0_1_2_2_1_3841_3_9_4_Pipeline_Col_Loop_fu_163.mux_32_13_1_1_U163", "Parent" : "11"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_xFfastnms_0_2160_3840_0_1_2_2_1_3841_3_9_4_Pipeline_Col_Loop_fu_163.mux_32_8_1_1_U164", "Parent" : "11"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_xFfastnms_0_2160_3840_0_1_2_2_1_3841_3_9_4_Pipeline_Col_Loop_fu_163.mux_32_8_1_1_U165", "Parent" : "11"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_xFfastnms_0_2160_3840_0_1_2_2_1_3841_3_9_4_Pipeline_Col_Loop_fu_163.mux_32_8_1_1_U166", "Parent" : "11"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_xFfastnms_0_2160_3840_0_1_2_2_1_3841_3_9_4_Pipeline_Col_Loop_fu_163.mux_32_8_1_1_U167", "Parent" : "11"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_xFfastnms_0_2160_3840_0_1_2_2_1_3841_3_9_4_Pipeline_Col_Loop_fu_163.flow_control_loop_pipe_sequential_init_U", "Parent" : "11"}]}


set ArgLastReadFirstWriteLatency {
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
	{"Name" : "Latency", "Min" : "8327068", "Max" : "8327068"}
	, {"Name" : "Interval", "Min" : "8327068", "Max" : "8327068"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	p_dst_data1 { ap_fifo {  { p_dst_data1_dout fifo_port_we 0 8 }  { p_dst_data1_num_data_valid fifo_status_num_data_valid 0 2 }  { p_dst_data1_fifo_cap fifo_update 0 2 }  { p_dst_data1_empty_n fifo_status 0 1 }  { p_dst_data1_read fifo_data 1 1 } } }
	imgOutput_data2 { ap_fifo {  { imgOutput_data2_din fifo_port_we 1 8 }  { imgOutput_data2_num_data_valid fifo_status_num_data_valid 0 2 }  { imgOutput_data2_fifo_cap fifo_update 0 2 }  { imgOutput_data2_full_n fifo_status 0 1 }  { imgOutput_data2_write fifo_data 1 1 } } }
	img_height { ap_fifo {  { img_height_dout fifo_port_we 0 16 }  { img_height_num_data_valid fifo_status_num_data_valid 0 2 }  { img_height_fifo_cap fifo_update 0 2 }  { img_height_empty_n fifo_status 0 1 }  { img_height_read fifo_data 1 1 } } }
	img_width { ap_fifo {  { img_width_dout fifo_port_we 0 16 }  { img_width_num_data_valid fifo_status_num_data_valid 0 2 }  { img_width_fifo_cap fifo_update 0 2 }  { img_width_empty_n fifo_status 0 1 }  { img_width_read fifo_data 1 1 } } }
}
