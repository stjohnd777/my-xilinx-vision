set moduleName xFSobel3x3_Pipeline_Col_Loop
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
set C_modelName {xFSobel3x3_Pipeline_Col_Loop}
set C_modelType { void 0 }
set C_modelArgList {
	{ img_width int 16 regular  }
	{ buf_V_4 int 8 regular {array 1920 { 1 0 } 1 1 }  }
	{ buf_V int 8 regular {array 1920 { 1 0 } 1 1 }  }
	{ buf_V_3 int 8 regular {array 1920 { 1 0 } 1 1 }  }
	{ row_ind_V_9 int 13 regular  }
	{ row_ind_V_10 int 13 regular  }
	{ row_ind_V_11 int 13 regular  }
	{ sub_i460_i_cast int 2 regular  }
	{ row_ind_V_9_cast int 2 regular  }
	{ spec_select57 int 1 regular  }
	{ row_ind_V_10_cast int 2 regular  }
	{ spec_select61 int 1 regular  }
	{ row_ind_V_11_cast int 2 regular  }
	{ spec_select65 int 1 regular  }
	{ cmp_i_i554_i int 1 regular  }
	{ gaussian_mat_data1 int 8 regular {fifo 0 volatile }  }
	{ gradx_mat_data2 int 16 regular {fifo 1 volatile }  }
	{ grady_mat_data5 int 16 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "img_width", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "buf_V_4", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "buf_V", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "buf_V_3", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "row_ind_V_9", "interface" : "wire", "bitwidth" : 13, "direction" : "READONLY"} , 
 	{ "Name" : "row_ind_V_10", "interface" : "wire", "bitwidth" : 13, "direction" : "READONLY"} , 
 	{ "Name" : "row_ind_V_11", "interface" : "wire", "bitwidth" : 13, "direction" : "READONLY"} , 
 	{ "Name" : "sub_i460_i_cast", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "row_ind_V_9_cast", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "spec_select57", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "row_ind_V_10_cast", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "spec_select61", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "row_ind_V_11_cast", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "spec_select65", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "cmp_i_i554_i", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "gaussian_mat_data1", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "gradx_mat_data2", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "grady_mat_data5", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 54
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ gaussian_mat_data1_dout sc_in sc_lv 8 signal 15 } 
	{ gaussian_mat_data1_num_data_valid sc_in sc_lv 2 signal 15 } 
	{ gaussian_mat_data1_fifo_cap sc_in sc_lv 2 signal 15 } 
	{ gaussian_mat_data1_empty_n sc_in sc_logic 1 signal 15 } 
	{ gaussian_mat_data1_read sc_out sc_logic 1 signal 15 } 
	{ gradx_mat_data2_din sc_out sc_lv 16 signal 16 } 
	{ gradx_mat_data2_num_data_valid sc_in sc_lv 2 signal 16 } 
	{ gradx_mat_data2_fifo_cap sc_in sc_lv 2 signal 16 } 
	{ gradx_mat_data2_full_n sc_in sc_logic 1 signal 16 } 
	{ gradx_mat_data2_write sc_out sc_logic 1 signal 16 } 
	{ grady_mat_data5_din sc_out sc_lv 16 signal 17 } 
	{ grady_mat_data5_num_data_valid sc_in sc_lv 2 signal 17 } 
	{ grady_mat_data5_fifo_cap sc_in sc_lv 2 signal 17 } 
	{ grady_mat_data5_full_n sc_in sc_logic 1 signal 17 } 
	{ grady_mat_data5_write sc_out sc_logic 1 signal 17 } 
	{ img_width sc_in sc_lv 16 signal 0 } 
	{ buf_V_4_address0 sc_out sc_lv 11 signal 1 } 
	{ buf_V_4_ce0 sc_out sc_logic 1 signal 1 } 
	{ buf_V_4_q0 sc_in sc_lv 8 signal 1 } 
	{ buf_V_4_address1 sc_out sc_lv 11 signal 1 } 
	{ buf_V_4_ce1 sc_out sc_logic 1 signal 1 } 
	{ buf_V_4_we1 sc_out sc_logic 1 signal 1 } 
	{ buf_V_4_d1 sc_out sc_lv 8 signal 1 } 
	{ buf_V_address0 sc_out sc_lv 11 signal 2 } 
	{ buf_V_ce0 sc_out sc_logic 1 signal 2 } 
	{ buf_V_q0 sc_in sc_lv 8 signal 2 } 
	{ buf_V_address1 sc_out sc_lv 11 signal 2 } 
	{ buf_V_ce1 sc_out sc_logic 1 signal 2 } 
	{ buf_V_we1 sc_out sc_logic 1 signal 2 } 
	{ buf_V_d1 sc_out sc_lv 8 signal 2 } 
	{ buf_V_3_address0 sc_out sc_lv 11 signal 3 } 
	{ buf_V_3_ce0 sc_out sc_logic 1 signal 3 } 
	{ buf_V_3_q0 sc_in sc_lv 8 signal 3 } 
	{ buf_V_3_address1 sc_out sc_lv 11 signal 3 } 
	{ buf_V_3_ce1 sc_out sc_logic 1 signal 3 } 
	{ buf_V_3_we1 sc_out sc_logic 1 signal 3 } 
	{ buf_V_3_d1 sc_out sc_lv 8 signal 3 } 
	{ row_ind_V_9 sc_in sc_lv 13 signal 4 } 
	{ row_ind_V_10 sc_in sc_lv 13 signal 5 } 
	{ row_ind_V_11 sc_in sc_lv 13 signal 6 } 
	{ sub_i460_i_cast sc_in sc_lv 2 signal 7 } 
	{ row_ind_V_9_cast sc_in sc_lv 2 signal 8 } 
	{ spec_select57 sc_in sc_lv 1 signal 9 } 
	{ row_ind_V_10_cast sc_in sc_lv 2 signal 10 } 
	{ spec_select61 sc_in sc_lv 1 signal 11 } 
	{ row_ind_V_11_cast sc_in sc_lv 2 signal 12 } 
	{ spec_select65 sc_in sc_lv 1 signal 13 } 
	{ cmp_i_i554_i sc_in sc_lv 1 signal 14 } 
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
 	{ "name": "img_width", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "img_width", "role": "default" }} , 
 	{ "name": "buf_V_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "buf_V_4", "role": "address0" }} , 
 	{ "name": "buf_V_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_V_4", "role": "ce0" }} , 
 	{ "name": "buf_V_4_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buf_V_4", "role": "q0" }} , 
 	{ "name": "buf_V_4_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "buf_V_4", "role": "address1" }} , 
 	{ "name": "buf_V_4_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_V_4", "role": "ce1" }} , 
 	{ "name": "buf_V_4_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_V_4", "role": "we1" }} , 
 	{ "name": "buf_V_4_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buf_V_4", "role": "d1" }} , 
 	{ "name": "buf_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "buf_V", "role": "address0" }} , 
 	{ "name": "buf_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_V", "role": "ce0" }} , 
 	{ "name": "buf_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buf_V", "role": "q0" }} , 
 	{ "name": "buf_V_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "buf_V", "role": "address1" }} , 
 	{ "name": "buf_V_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_V", "role": "ce1" }} , 
 	{ "name": "buf_V_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_V", "role": "we1" }} , 
 	{ "name": "buf_V_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buf_V", "role": "d1" }} , 
 	{ "name": "buf_V_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "buf_V_3", "role": "address0" }} , 
 	{ "name": "buf_V_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_V_3", "role": "ce0" }} , 
 	{ "name": "buf_V_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buf_V_3", "role": "q0" }} , 
 	{ "name": "buf_V_3_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "buf_V_3", "role": "address1" }} , 
 	{ "name": "buf_V_3_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_V_3", "role": "ce1" }} , 
 	{ "name": "buf_V_3_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_V_3", "role": "we1" }} , 
 	{ "name": "buf_V_3_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buf_V_3", "role": "d1" }} , 
 	{ "name": "row_ind_V_9", "direction": "in", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "row_ind_V_9", "role": "default" }} , 
 	{ "name": "row_ind_V_10", "direction": "in", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "row_ind_V_10", "role": "default" }} , 
 	{ "name": "row_ind_V_11", "direction": "in", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "row_ind_V_11", "role": "default" }} , 
 	{ "name": "sub_i460_i_cast", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "sub_i460_i_cast", "role": "default" }} , 
 	{ "name": "row_ind_V_9_cast", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "row_ind_V_9_cast", "role": "default" }} , 
 	{ "name": "spec_select57", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "spec_select57", "role": "default" }} , 
 	{ "name": "row_ind_V_10_cast", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "row_ind_V_10_cast", "role": "default" }} , 
 	{ "name": "spec_select61", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "spec_select61", "role": "default" }} , 
 	{ "name": "row_ind_V_11_cast", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "row_ind_V_11_cast", "role": "default" }} , 
 	{ "name": "spec_select65", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "spec_select65", "role": "default" }} , 
 	{ "name": "cmp_i_i554_i", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "cmp_i_i554_i", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6"],
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_13_1_1_U117", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_8_1_1_U118", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_8_1_1_U119", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_8_1_1_U120", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_8_1_1_U121", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
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
	{"Name" : "Latency", "Min" : "1926", "Max" : "1926"}
	, {"Name" : "Interval", "Min" : "1926", "Max" : "1926"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	img_width { ap_none {  { img_width in_data 0 16 } } }
	buf_V_4 { ap_memory {  { buf_V_4_address0 mem_address 1 11 }  { buf_V_4_ce0 mem_ce 1 1 }  { buf_V_4_q0 in_data 0 8 }  { buf_V_4_address1 MemPortADDR2 1 11 }  { buf_V_4_ce1 MemPortCE2 1 1 }  { buf_V_4_we1 MemPortWE2 1 1 }  { buf_V_4_d1 MemPortDIN2 1 8 } } }
	buf_V { ap_memory {  { buf_V_address0 mem_address 1 11 }  { buf_V_ce0 mem_ce 1 1 }  { buf_V_q0 in_data 0 8 }  { buf_V_address1 MemPortADDR2 1 11 }  { buf_V_ce1 MemPortCE2 1 1 }  { buf_V_we1 MemPortWE2 1 1 }  { buf_V_d1 MemPortDIN2 1 8 } } }
	buf_V_3 { ap_memory {  { buf_V_3_address0 mem_address 1 11 }  { buf_V_3_ce0 mem_ce 1 1 }  { buf_V_3_q0 in_data 0 8 }  { buf_V_3_address1 MemPortADDR2 1 11 }  { buf_V_3_ce1 MemPortCE2 1 1 }  { buf_V_3_we1 MemPortWE2 1 1 }  { buf_V_3_d1 MemPortDIN2 1 8 } } }
	row_ind_V_9 { ap_none {  { row_ind_V_9 in_data 0 13 } } }
	row_ind_V_10 { ap_none {  { row_ind_V_10 in_data 0 13 } } }
	row_ind_V_11 { ap_none {  { row_ind_V_11 in_data 0 13 } } }
	sub_i460_i_cast { ap_none {  { sub_i460_i_cast in_data 0 2 } } }
	row_ind_V_9_cast { ap_none {  { row_ind_V_9_cast in_data 0 2 } } }
	spec_select57 { ap_none {  { spec_select57 in_data 0 1 } } }
	row_ind_V_10_cast { ap_none {  { row_ind_V_10_cast in_data 0 2 } } }
	spec_select61 { ap_none {  { spec_select61 in_data 0 1 } } }
	row_ind_V_11_cast { ap_none {  { row_ind_V_11_cast in_data 0 2 } } }
	spec_select65 { ap_none {  { spec_select65 in_data 0 1 } } }
	cmp_i_i554_i { ap_none {  { cmp_i_i554_i in_data 0 1 } } }
	gaussian_mat_data1 { ap_fifo {  { gaussian_mat_data1_dout fifo_port_we 0 8 }  { gaussian_mat_data1_num_data_valid fifo_status_num_data_valid 0 2 }  { gaussian_mat_data1_fifo_cap fifo_update 0 2 }  { gaussian_mat_data1_empty_n fifo_status 0 1 }  { gaussian_mat_data1_read fifo_data 1 1 } } }
	gradx_mat_data2 { ap_fifo {  { gradx_mat_data2_din fifo_port_we 1 16 }  { gradx_mat_data2_num_data_valid fifo_status_num_data_valid 0 2 }  { gradx_mat_data2_fifo_cap fifo_update 0 2 }  { gradx_mat_data2_full_n fifo_status 0 1 }  { gradx_mat_data2_write fifo_data 1 1 } } }
	grady_mat_data5 { ap_fifo {  { grady_mat_data5_din fifo_port_we 1 16 }  { grady_mat_data5_num_data_valid fifo_status_num_data_valid 0 2 }  { grady_mat_data5_fifo_cap fifo_update 0 2 }  { grady_mat_data5_full_n fifo_status 0 1 }  { grady_mat_data5_write fifo_data 1 1 } } }
}
