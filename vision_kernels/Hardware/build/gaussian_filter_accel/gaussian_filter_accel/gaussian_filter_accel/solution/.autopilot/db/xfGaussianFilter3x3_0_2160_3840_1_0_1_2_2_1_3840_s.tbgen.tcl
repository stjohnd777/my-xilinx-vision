set moduleName xfGaussianFilter3x3_0_2160_3840_1_0_1_2_2_1_3840_s
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
set C_modelName {xfGaussianFilter3x3<0, 2160, 3840, 1, 0, 1, 2, 2, 1, 3840>}
set C_modelType { void 0 }
set C_modelArgList {
	{ in_mat_data1 int 8 regular {fifo 0 volatile }  }
	{ out_mat_data2 int 8 regular {fifo 1 volatile }  }
	{ img_height uint 16 regular  }
	{ img_width uint 16 regular  }
	{ p_read int 8 regular  }
	{ p_read1 int 8 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "in_mat_data1", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "out_mat_data2", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "img_height", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "img_width", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_read1", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 20
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ in_mat_data1_dout sc_in sc_lv 8 signal 0 } 
	{ in_mat_data1_num_data_valid sc_in sc_lv 2 signal 0 } 
	{ in_mat_data1_fifo_cap sc_in sc_lv 2 signal 0 } 
	{ in_mat_data1_empty_n sc_in sc_logic 1 signal 0 } 
	{ in_mat_data1_read sc_out sc_logic 1 signal 0 } 
	{ out_mat_data2_din sc_out sc_lv 8 signal 1 } 
	{ out_mat_data2_num_data_valid sc_in sc_lv 2 signal 1 } 
	{ out_mat_data2_fifo_cap sc_in sc_lv 2 signal 1 } 
	{ out_mat_data2_full_n sc_in sc_logic 1 signal 1 } 
	{ out_mat_data2_write sc_out sc_logic 1 signal 1 } 
	{ img_height sc_in sc_lv 16 signal 2 } 
	{ img_width sc_in sc_lv 16 signal 3 } 
	{ p_read sc_in sc_lv 8 signal 4 } 
	{ p_read1 sc_in sc_lv 8 signal 5 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "in_mat_data1_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "in_mat_data1", "role": "dout" }} , 
 	{ "name": "in_mat_data1_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "in_mat_data1", "role": "num_data_valid" }} , 
 	{ "name": "in_mat_data1_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "in_mat_data1", "role": "fifo_cap" }} , 
 	{ "name": "in_mat_data1_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_mat_data1", "role": "empty_n" }} , 
 	{ "name": "in_mat_data1_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_mat_data1", "role": "read" }} , 
 	{ "name": "out_mat_data2_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "out_mat_data2", "role": "din" }} , 
 	{ "name": "out_mat_data2_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "out_mat_data2", "role": "num_data_valid" }} , 
 	{ "name": "out_mat_data2_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "out_mat_data2", "role": "fifo_cap" }} , 
 	{ "name": "out_mat_data2_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_mat_data2", "role": "full_n" }} , 
 	{ "name": "out_mat_data2_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_mat_data2", "role": "write" }} , 
 	{ "name": "img_height", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "img_height", "role": "default" }} , 
 	{ "name": "img_width", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "img_width", "role": "default" }} , 
 	{ "name": "p_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_read", "role": "default" }} , 
 	{ "name": "p_read1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_read1", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "6", "11"],
		"CDFG" : "xfGaussianFilter3x3_0_2160_3840_1_0_1_2_2_1_3840_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "8350086", "EstimateLatencyMax" : "8350086",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "in_mat_data1", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_xfGaussianFilter3x3_0_2160_3840_1_0_1_2_2_1_3840_Pipeline_Col_Loop_fu_168", "Port" : "in_mat_data1", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "4", "SubInstance" : "grp_xfGaussianFilter3x3_Pipeline_Clear_Row_Loop_fu_159", "Port" : "in_mat_data1", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "out_mat_data2", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "out_mat_data2_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_xfGaussianFilter3x3_0_2160_3840_1_0_1_2_2_1_3840_Pipeline_Col_Loop_fu_168", "Port" : "out_mat_data2", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "img_height", "Type" : "None", "Direction" : "I"},
			{"Name" : "img_width", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "Row_Loop", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "15", "FirstState" : "ap_ST_fsm_state5", "LastState" : ["ap_ST_fsm_state15"], "QuitState" : ["ap_ST_fsm_state5"], "PreState" : ["ap_ST_fsm_state4"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_V_1_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_V_2_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_xfGaussianFilter3x3_Pipeline_Clear_Row_Loop_fu_159", "Parent" : "0", "Child" : ["5"],
		"CDFG" : "xfGaussianFilter3x3_Pipeline_Clear_Row_Loop",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3842", "EstimateLatencyMax" : "3842",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "img_width", "Type" : "None", "Direction" : "I"},
			{"Name" : "buf_V_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buf_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_mat_data1", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "in_mat_data1_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "Clear_Row_Loop", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_xfGaussianFilter3x3_Pipeline_Clear_Row_Loop_fu_159.flow_control_loop_pipe_sequential_init_U", "Parent" : "4"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_xfGaussianFilter3x3_0_2160_3840_1_0_1_2_2_1_3840_Pipeline_Col_Loop_fu_168", "Parent" : "0", "Child" : ["7", "8", "9", "10"],
		"CDFG" : "xfGaussianFilter3x3_0_2160_3840_1_0_1_2_2_1_3840_Pipeline_Col_Loop",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3853", "EstimateLatencyMax" : "3853",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "img_width", "Type" : "None", "Direction" : "I"},
			{"Name" : "tp_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "mid_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "bottom_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_mat_data1", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "in_mat_data1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "buf_V_2", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "buf_V_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "buf_V", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "cmp_i_i201_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_mat_data2", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "out_mat_data2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_Val2_7_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_Val2_6_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_Val2_4_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_Val2_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_Val2_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_Val2_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "Col_Loop", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter12", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter12", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_xfGaussianFilter3x3_0_2160_3840_1_0_1_2_2_1_3840_Pipeline_Col_Loop_fu_168.mux_32_8_1_1_U111", "Parent" : "6"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_xfGaussianFilter3x3_0_2160_3840_1_0_1_2_2_1_3840_Pipeline_Col_Loop_fu_168.mux_32_8_1_1_U112", "Parent" : "6"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_xfGaussianFilter3x3_0_2160_3840_1_0_1_2_2_1_3840_Pipeline_Col_Loop_fu_168.mux_32_8_1_1_U113", "Parent" : "6"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_xfGaussianFilter3x3_0_2160_3840_1_0_1_2_2_1_3840_Pipeline_Col_Loop_fu_168.flow_control_loop_pipe_sequential_init_U", "Parent" : "6"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_xFapplygaussian3x3_0_s_fu_192", "Parent" : "0", "Child" : ["12", "13", "14", "15", "16", "17"],
		"CDFG" : "xFapplygaussian3x3_0_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "7", "EstimateLatencyMin" : "7", "EstimateLatencyMax" : "7",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "D1", "Type" : "None", "Direction" : "I"},
			{"Name" : "D2", "Type" : "None", "Direction" : "I"},
			{"Name" : "D3", "Type" : "None", "Direction" : "I"},
			{"Name" : "D4", "Type" : "None", "Direction" : "I"},
			{"Name" : "D5", "Type" : "None", "Direction" : "I"},
			{"Name" : "D6", "Type" : "None", "Direction" : "I"},
			{"Name" : "D7", "Type" : "None", "Direction" : "I"},
			{"Name" : "D8", "Type" : "None", "Direction" : "I"},
			{"Name" : "D9", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_xFapplygaussian3x3_0_s_fu_192.mul_8ns_8ns_16_1_0_U89", "Parent" : "11"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_xFapplygaussian3x3_0_s_fu_192.am_addmul_9ns_9ns_8ns_18_4_0_U90", "Parent" : "11"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_xFapplygaussian3x3_0_s_fu_192.am_addmul_8ns_8ns_8ns_17_4_0_U91", "Parent" : "11"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_xFapplygaussian3x3_0_s_fu_192.am_addmul_8ns_8ns_8ns_17_4_0_U92", "Parent" : "11"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_xFapplygaussian3x3_0_s_fu_192.ama_addmuladd_18ns_17ns_8ns_16ns_24_4_0_U93", "Parent" : "11"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_xFapplygaussian3x3_0_s_fu_192.ama_addmuladd_17ns_16ns_8ns_24ns_24_4_0_U94", "Parent" : "11"}]}


set ArgLastReadFirstWriteLatency {
	xfGaussianFilter3x3_0_2160_3840_1_0_1_2_2_1_3840_s {
		in_mat_data1 {Type I LastRead 1 FirstWrite -1}
		out_mat_data2 {Type O LastRead -1 FirstWrite 12}
		img_height {Type I LastRead 0 FirstWrite -1}
		img_width {Type I LastRead 0 FirstWrite -1}
		p_read {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}}
	xfGaussianFilter3x3_Pipeline_Clear_Row_Loop {
		img_width {Type I LastRead 0 FirstWrite -1}
		buf_V_1 {Type O LastRead -1 FirstWrite 1}
		buf_V {Type O LastRead -1 FirstWrite 0}
		in_mat_data1 {Type I LastRead 1 FirstWrite -1}}
	xfGaussianFilter3x3_0_2160_3840_1_0_1_2_2_1_3840_Pipeline_Col_Loop {
		img_width {Type I LastRead 0 FirstWrite -1}
		tp_V {Type I LastRead 0 FirstWrite -1}
		mid_V {Type I LastRead 0 FirstWrite -1}
		bottom_V {Type I LastRead 0 FirstWrite -1}
		p_read {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}
		in_mat_data1 {Type I LastRead 1 FirstWrite -1}
		buf_V_2 {Type IO LastRead 2 FirstWrite 1}
		buf_V_1 {Type IO LastRead 2 FirstWrite 1}
		buf_V {Type IO LastRead 2 FirstWrite 1}
		cmp_i_i201_i {Type I LastRead 0 FirstWrite -1}
		out_mat_data2 {Type O LastRead -1 FirstWrite 12}
		p_Val2_7_out {Type O LastRead -1 FirstWrite 11}
		p_Val2_6_out {Type O LastRead -1 FirstWrite 11}
		p_Val2_4_out {Type O LastRead -1 FirstWrite 11}
		p_Val2_3_out {Type O LastRead -1 FirstWrite 11}
		p_Val2_1_out {Type O LastRead -1 FirstWrite 11}
		p_Val2_out {Type O LastRead -1 FirstWrite 11}}
	xFapplygaussian3x3_0_s {
		D1 {Type I LastRead 0 FirstWrite -1}
		D2 {Type I LastRead 0 FirstWrite -1}
		D3 {Type I LastRead 0 FirstWrite -1}
		D4 {Type I LastRead 0 FirstWrite -1}
		D5 {Type I LastRead 0 FirstWrite -1}
		D6 {Type I LastRead 0 FirstWrite -1}
		D7 {Type I LastRead 0 FirstWrite -1}
		D8 {Type I LastRead 0 FirstWrite -1}
		D9 {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}
		p_read2 {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "8350086", "Max" : "8350086"}
	, {"Name" : "Interval", "Min" : "8350086", "Max" : "8350086"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	in_mat_data1 { ap_fifo {  { in_mat_data1_dout fifo_port_we 0 8 }  { in_mat_data1_num_data_valid fifo_status_num_data_valid 0 2 }  { in_mat_data1_fifo_cap fifo_update 0 2 }  { in_mat_data1_empty_n fifo_status 0 1 }  { in_mat_data1_read fifo_data 1 1 } } }
	out_mat_data2 { ap_fifo {  { out_mat_data2_din fifo_port_we 1 8 }  { out_mat_data2_num_data_valid fifo_status_num_data_valid 0 2 }  { out_mat_data2_fifo_cap fifo_update 0 2 }  { out_mat_data2_full_n fifo_status 0 1 }  { out_mat_data2_write fifo_data 1 1 } } }
	img_height { ap_none {  { img_height in_data 0 16 } } }
	img_width { ap_none {  { img_width in_data 0 16 } } }
	p_read { ap_none {  { p_read in_data 0 8 } } }
	p_read1 { ap_none {  { p_read1 in_data 0 8 } } }
}
