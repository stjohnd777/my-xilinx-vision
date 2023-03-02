set moduleName xFAverageGaussianMask3x3_Pipeline_Col_Loop
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 1
set StallSigGenFlag 1
set isEnableWaveformDebug 1
set hasInterrupt 0
set C_modelName {xFAverageGaussianMask3x3_Pipeline_Col_Loop}
set C_modelType { void 0 }
set C_modelArgList {
	{ img_width int 16 regular  }
	{ buf_V int 8 regular {array 1920 { 1 0 } 1 1 }  }
	{ buf_V_5 int 8 regular {array 1920 { 1 0 } 1 1 }  }
	{ buf_V_6 int 8 regular {array 1920 { 1 0 } 1 1 }  }
	{ tp_V int 2 regular  }
	{ mid_V int 2 regular  }
	{ bottom_V int 2 regular  }
	{ in_mat_data1 int 8 regular {fifo 0 volatile }  }
	{ cmp_i_i422_i int 1 regular  }
	{ gaussian_mat_data1 int 8 regular {fifo 1 volatile }  }
	{ b1_V_out int 8 regular {pointer 1}  }
	{ b0_V_out int 8 regular {pointer 1}  }
	{ m1_V_out int 8 regular {pointer 1}  }
	{ m0_V_out int 8 regular {pointer 1}  }
	{ t1_V_out int 8 regular {pointer 1}  }
	{ t0_V_out int 8 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "img_width", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "buf_V", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "buf_V_5", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "buf_V_6", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "tp_V", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "mid_V", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "bottom_V", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "in_mat_data1", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "cmp_i_i422_i", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "gaussian_mat_data1", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "b1_V_out", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "b0_V_out", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "m1_V_out", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "m0_V_out", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "t1_V_out", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "t0_V_out", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 57
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ in_mat_data1_dout sc_in sc_lv 8 signal 7 } 
	{ in_mat_data1_num_data_valid sc_in sc_lv 2 signal 7 } 
	{ in_mat_data1_fifo_cap sc_in sc_lv 2 signal 7 } 
	{ in_mat_data1_empty_n sc_in sc_logic 1 signal 7 } 
	{ in_mat_data1_read sc_out sc_logic 1 signal 7 } 
	{ gaussian_mat_data1_din sc_out sc_lv 8 signal 9 } 
	{ gaussian_mat_data1_num_data_valid sc_in sc_lv 2 signal 9 } 
	{ gaussian_mat_data1_fifo_cap sc_in sc_lv 2 signal 9 } 
	{ gaussian_mat_data1_full_n sc_in sc_logic 1 signal 9 } 
	{ gaussian_mat_data1_write sc_out sc_logic 1 signal 9 } 
	{ img_width sc_in sc_lv 16 signal 0 } 
	{ buf_V_address0 sc_out sc_lv 11 signal 1 } 
	{ buf_V_ce0 sc_out sc_logic 1 signal 1 } 
	{ buf_V_q0 sc_in sc_lv 8 signal 1 } 
	{ buf_V_address1 sc_out sc_lv 11 signal 1 } 
	{ buf_V_ce1 sc_out sc_logic 1 signal 1 } 
	{ buf_V_we1 sc_out sc_logic 1 signal 1 } 
	{ buf_V_d1 sc_out sc_lv 8 signal 1 } 
	{ buf_V_5_address0 sc_out sc_lv 11 signal 2 } 
	{ buf_V_5_ce0 sc_out sc_logic 1 signal 2 } 
	{ buf_V_5_q0 sc_in sc_lv 8 signal 2 } 
	{ buf_V_5_address1 sc_out sc_lv 11 signal 2 } 
	{ buf_V_5_ce1 sc_out sc_logic 1 signal 2 } 
	{ buf_V_5_we1 sc_out sc_logic 1 signal 2 } 
	{ buf_V_5_d1 sc_out sc_lv 8 signal 2 } 
	{ buf_V_6_address0 sc_out sc_lv 11 signal 3 } 
	{ buf_V_6_ce0 sc_out sc_logic 1 signal 3 } 
	{ buf_V_6_q0 sc_in sc_lv 8 signal 3 } 
	{ buf_V_6_address1 sc_out sc_lv 11 signal 3 } 
	{ buf_V_6_ce1 sc_out sc_logic 1 signal 3 } 
	{ buf_V_6_we1 sc_out sc_logic 1 signal 3 } 
	{ buf_V_6_d1 sc_out sc_lv 8 signal 3 } 
	{ tp_V sc_in sc_lv 2 signal 4 } 
	{ mid_V sc_in sc_lv 2 signal 5 } 
	{ bottom_V sc_in sc_lv 2 signal 6 } 
	{ cmp_i_i422_i sc_in sc_lv 1 signal 8 } 
	{ b1_V_out sc_out sc_lv 8 signal 10 } 
	{ b1_V_out_ap_vld sc_out sc_logic 1 outvld 10 } 
	{ b0_V_out sc_out sc_lv 8 signal 11 } 
	{ b0_V_out_ap_vld sc_out sc_logic 1 outvld 11 } 
	{ m1_V_out sc_out sc_lv 8 signal 12 } 
	{ m1_V_out_ap_vld sc_out sc_logic 1 outvld 12 } 
	{ m0_V_out sc_out sc_lv 8 signal 13 } 
	{ m0_V_out_ap_vld sc_out sc_logic 1 outvld 13 } 
	{ t1_V_out sc_out sc_lv 8 signal 14 } 
	{ t1_V_out_ap_vld sc_out sc_logic 1 outvld 14 } 
	{ t0_V_out sc_out sc_lv 8 signal 15 } 
	{ t0_V_out_ap_vld sc_out sc_logic 1 outvld 15 } 
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
 	{ "name": "in_mat_data1_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "in_mat_data1", "role": "dout" }} , 
 	{ "name": "in_mat_data1_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "in_mat_data1", "role": "num_data_valid" }} , 
 	{ "name": "in_mat_data1_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "in_mat_data1", "role": "fifo_cap" }} , 
 	{ "name": "in_mat_data1_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_mat_data1", "role": "empty_n" }} , 
 	{ "name": "in_mat_data1_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_mat_data1", "role": "read" }} , 
 	{ "name": "gaussian_mat_data1_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gaussian_mat_data1", "role": "din" }} , 
 	{ "name": "gaussian_mat_data1_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gaussian_mat_data1", "role": "num_data_valid" }} , 
 	{ "name": "gaussian_mat_data1_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gaussian_mat_data1", "role": "fifo_cap" }} , 
 	{ "name": "gaussian_mat_data1_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gaussian_mat_data1", "role": "full_n" }} , 
 	{ "name": "gaussian_mat_data1_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gaussian_mat_data1", "role": "write" }} , 
 	{ "name": "img_width", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "img_width", "role": "default" }} , 
 	{ "name": "buf_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "buf_V", "role": "address0" }} , 
 	{ "name": "buf_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_V", "role": "ce0" }} , 
 	{ "name": "buf_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buf_V", "role": "q0" }} , 
 	{ "name": "buf_V_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "buf_V", "role": "address1" }} , 
 	{ "name": "buf_V_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_V", "role": "ce1" }} , 
 	{ "name": "buf_V_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_V", "role": "we1" }} , 
 	{ "name": "buf_V_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buf_V", "role": "d1" }} , 
 	{ "name": "buf_V_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "buf_V_5", "role": "address0" }} , 
 	{ "name": "buf_V_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_V_5", "role": "ce0" }} , 
 	{ "name": "buf_V_5_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buf_V_5", "role": "q0" }} , 
 	{ "name": "buf_V_5_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "buf_V_5", "role": "address1" }} , 
 	{ "name": "buf_V_5_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_V_5", "role": "ce1" }} , 
 	{ "name": "buf_V_5_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_V_5", "role": "we1" }} , 
 	{ "name": "buf_V_5_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buf_V_5", "role": "d1" }} , 
 	{ "name": "buf_V_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "buf_V_6", "role": "address0" }} , 
 	{ "name": "buf_V_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_V_6", "role": "ce0" }} , 
 	{ "name": "buf_V_6_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buf_V_6", "role": "q0" }} , 
 	{ "name": "buf_V_6_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "buf_V_6", "role": "address1" }} , 
 	{ "name": "buf_V_6_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_V_6", "role": "ce1" }} , 
 	{ "name": "buf_V_6_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_V_6", "role": "we1" }} , 
 	{ "name": "buf_V_6_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buf_V_6", "role": "d1" }} , 
 	{ "name": "tp_V", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "tp_V", "role": "default" }} , 
 	{ "name": "mid_V", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "mid_V", "role": "default" }} , 
 	{ "name": "bottom_V", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bottom_V", "role": "default" }} , 
 	{ "name": "cmp_i_i422_i", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "cmp_i_i422_i", "role": "default" }} , 
 	{ "name": "b1_V_out", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "b1_V_out", "role": "default" }} , 
 	{ "name": "b1_V_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "b1_V_out", "role": "ap_vld" }} , 
 	{ "name": "b0_V_out", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "b0_V_out", "role": "default" }} , 
 	{ "name": "b0_V_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "b0_V_out", "role": "ap_vld" }} , 
 	{ "name": "m1_V_out", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "m1_V_out", "role": "default" }} , 
 	{ "name": "m1_V_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "m1_V_out", "role": "ap_vld" }} , 
 	{ "name": "m0_V_out", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "m0_V_out", "role": "default" }} , 
 	{ "name": "m0_V_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "m0_V_out", "role": "ap_vld" }} , 
 	{ "name": "t1_V_out", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "t1_V_out", "role": "default" }} , 
 	{ "name": "t1_V_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "t1_V_out", "role": "ap_vld" }} , 
 	{ "name": "t0_V_out", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "t0_V_out", "role": "default" }} , 
 	{ "name": "t0_V_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "t0_V_out", "role": "ap_vld" }} , 
 	{ "name": "ap_ext_blocking_n", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_ext_blocking_n", "role": "default" }} , 
 	{ "name": "ap_str_blocking_n", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_str_blocking_n", "role": "default" }} , 
 	{ "name": "ap_int_blocking_n", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_int_blocking_n", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7"],
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.src_buf1_V_xfExtractPixels_1_1_0_1_fu_320", "Parent" : "0",
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
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.src_buf2_V_xfExtractPixels_1_1_0_1_fu_325", "Parent" : "0",
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
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.src_buf3_V_xfExtractPixels_1_1_0_1_fu_330", "Parent" : "0",
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
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_8_1_1_U75", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_8_1_1_U76", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_8_1_1_U77", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
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
		p_read1 {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1925", "Max" : "1925"}
	, {"Name" : "Interval", "Min" : "1925", "Max" : "1925"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	img_width { ap_none {  { img_width in_data 0 16 } } }
	buf_V { ap_memory {  { buf_V_address0 mem_address 1 11 }  { buf_V_ce0 mem_ce 1 1 }  { buf_V_q0 in_data 0 8 }  { buf_V_address1 MemPortADDR2 1 11 }  { buf_V_ce1 MemPortCE2 1 1 }  { buf_V_we1 MemPortWE2 1 1 }  { buf_V_d1 MemPortDIN2 1 8 } } }
	buf_V_5 { ap_memory {  { buf_V_5_address0 mem_address 1 11 }  { buf_V_5_ce0 mem_ce 1 1 }  { buf_V_5_q0 in_data 0 8 }  { buf_V_5_address1 MemPortADDR2 1 11 }  { buf_V_5_ce1 MemPortCE2 1 1 }  { buf_V_5_we1 MemPortWE2 1 1 }  { buf_V_5_d1 MemPortDIN2 1 8 } } }
	buf_V_6 { ap_memory {  { buf_V_6_address0 mem_address 1 11 }  { buf_V_6_ce0 mem_ce 1 1 }  { buf_V_6_q0 in_data 0 8 }  { buf_V_6_address1 MemPortADDR2 1 11 }  { buf_V_6_ce1 MemPortCE2 1 1 }  { buf_V_6_we1 MemPortWE2 1 1 }  { buf_V_6_d1 MemPortDIN2 1 8 } } }
	tp_V { ap_none {  { tp_V in_data 0 2 } } }
	mid_V { ap_none {  { mid_V in_data 0 2 } } }
	bottom_V { ap_none {  { bottom_V in_data 0 2 } } }
	in_mat_data1 { ap_fifo {  { in_mat_data1_dout fifo_port_we 0 8 }  { in_mat_data1_num_data_valid fifo_status_num_data_valid 0 2 }  { in_mat_data1_fifo_cap fifo_update 0 2 }  { in_mat_data1_empty_n fifo_status 0 1 }  { in_mat_data1_read fifo_data 1 1 } } }
	cmp_i_i422_i { ap_none {  { cmp_i_i422_i in_data 0 1 } } }
	gaussian_mat_data1 { ap_fifo {  { gaussian_mat_data1_din fifo_port_we 1 8 }  { gaussian_mat_data1_num_data_valid fifo_status_num_data_valid 0 2 }  { gaussian_mat_data1_fifo_cap fifo_update 0 2 }  { gaussian_mat_data1_full_n fifo_status 0 1 }  { gaussian_mat_data1_write fifo_data 1 1 } } }
	b1_V_out { ap_vld {  { b1_V_out out_data 1 8 }  { b1_V_out_ap_vld out_vld 1 1 } } }
	b0_V_out { ap_vld {  { b0_V_out out_data 1 8 }  { b0_V_out_ap_vld out_vld 1 1 } } }
	m1_V_out { ap_vld {  { m1_V_out out_data 1 8 }  { m1_V_out_ap_vld out_vld 1 1 } } }
	m0_V_out { ap_vld {  { m0_V_out out_data 1 8 }  { m0_V_out_ap_vld out_vld 1 1 } } }
	t1_V_out { ap_vld {  { t1_V_out out_data 1 8 }  { t1_V_out_ap_vld out_vld 1 1 } } }
	t0_V_out { ap_vld {  { t0_V_out out_data 1 8 }  { t0_V_out_ap_vld out_vld 1 1 } } }
}
