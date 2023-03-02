set moduleName GaussianBlur_3_0_0_2160_3840_1_2_2_s
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
set C_modelName {GaussianBlur<3, 0, 0, 2160, 3840, 1, 2, 2>}
set C_modelType { void 0 }
set C_modelArgList {
	{ p_src_rows int 32 regular {fifo 0}  }
	{ p_src_cols int 32 regular {fifo 0}  }
	{ in_mat_data1 int 8 regular {fifo 0 volatile }  }
	{ out_mat_data2 int 8 regular {fifo 1 volatile }  }
	{ sigma float 32 regular {fifo 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "p_src_rows", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_src_cols", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "in_mat_data1", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "out_mat_data2", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "sigma", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} ]}
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
	{ p_src_rows_dout sc_in sc_lv 32 signal 0 } 
	{ p_src_rows_num_data_valid sc_in sc_lv 2 signal 0 } 
	{ p_src_rows_fifo_cap sc_in sc_lv 2 signal 0 } 
	{ p_src_rows_empty_n sc_in sc_logic 1 signal 0 } 
	{ p_src_rows_read sc_out sc_logic 1 signal 0 } 
	{ p_src_cols_dout sc_in sc_lv 32 signal 1 } 
	{ p_src_cols_num_data_valid sc_in sc_lv 2 signal 1 } 
	{ p_src_cols_fifo_cap sc_in sc_lv 2 signal 1 } 
	{ p_src_cols_empty_n sc_in sc_logic 1 signal 1 } 
	{ p_src_cols_read sc_out sc_logic 1 signal 1 } 
	{ in_mat_data1_dout sc_in sc_lv 8 signal 2 } 
	{ in_mat_data1_num_data_valid sc_in sc_lv 2 signal 2 } 
	{ in_mat_data1_fifo_cap sc_in sc_lv 2 signal 2 } 
	{ in_mat_data1_empty_n sc_in sc_logic 1 signal 2 } 
	{ in_mat_data1_read sc_out sc_logic 1 signal 2 } 
	{ out_mat_data2_din sc_out sc_lv 8 signal 3 } 
	{ out_mat_data2_num_data_valid sc_in sc_lv 2 signal 3 } 
	{ out_mat_data2_fifo_cap sc_in sc_lv 2 signal 3 } 
	{ out_mat_data2_full_n sc_in sc_logic 1 signal 3 } 
	{ out_mat_data2_write sc_out sc_logic 1 signal 3 } 
	{ sigma_dout sc_in sc_lv 32 signal 4 } 
	{ sigma_num_data_valid sc_in sc_lv 3 signal 4 } 
	{ sigma_fifo_cap sc_in sc_lv 3 signal 4 } 
	{ sigma_empty_n sc_in sc_logic 1 signal 4 } 
	{ sigma_read sc_out sc_logic 1 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "p_src_rows_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_src_rows", "role": "dout" }} , 
 	{ "name": "p_src_rows_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "p_src_rows", "role": "num_data_valid" }} , 
 	{ "name": "p_src_rows_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "p_src_rows", "role": "fifo_cap" }} , 
 	{ "name": "p_src_rows_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_src_rows", "role": "empty_n" }} , 
 	{ "name": "p_src_rows_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_src_rows", "role": "read" }} , 
 	{ "name": "p_src_cols_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_src_cols", "role": "dout" }} , 
 	{ "name": "p_src_cols_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "p_src_cols", "role": "num_data_valid" }} , 
 	{ "name": "p_src_cols_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "p_src_cols", "role": "fifo_cap" }} , 
 	{ "name": "p_src_cols_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_src_cols", "role": "empty_n" }} , 
 	{ "name": "p_src_cols_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_src_cols", "role": "read" }} , 
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
 	{ "name": "sigma_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sigma", "role": "dout" }} , 
 	{ "name": "sigma_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "sigma", "role": "num_data_valid" }} , 
 	{ "name": "sigma_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "sigma", "role": "fifo_cap" }} , 
 	{ "name": "sigma_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sigma", "role": "empty_n" }} , 
 	{ "name": "sigma_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sigma", "role": "read" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "6", "11", "29", "30", "31", "32"],
		"CDFG" : "GaussianBlur_3_0_0_2160_3840_1_2_2_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "8350261", "EstimateLatencyMax" : "8350261",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "p_src_rows", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "p_src_rows_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_src_cols", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "p_src_cols_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "in_mat_data1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "grp_xfGaussianFilter3x3_0_2160_3840_1_0_1_2_2_1_3840_s_fu_111", "Port" : "in_mat_data1", "Inst_start_state" : "37", "Inst_end_state" : "38"}]},
			{"Name" : "out_mat_data2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "grp_xfGaussianFilter3x3_0_2160_3840_1_0_1_2_2_1_3840_s_fu_111", "Port" : "out_mat_data2", "Inst_start_state" : "37", "Inst_end_state" : "38"}]},
			{"Name" : "sigma", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "sigma_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.cf_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_GaussianBlur_3_0_0_2160_3840_1_2_2_Pipeline_VITIS_LOOP_48_1_fu_96", "Parent" : "0", "Child" : ["3", "4", "5"],
		"CDFG" : "GaussianBlur_3_0_0_2160_3840_1_2_2_Pipeline_VITIS_LOOP_48_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "43", "EstimateLatencyMax" : "43",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "scale2X", "Type" : "None", "Direction" : "I"},
			{"Name" : "cf", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "sum_1_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_48_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "6", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage5", "LastStateIter" : "ap_enable_reg_pp0_iter4", "LastStateBlock" : "ap_block_pp0_stage5_subdone", "QuitState" : "ap_ST_fsm_pp0_stage5", "QuitStateIter" : "ap_enable_reg_pp0_iter4", "QuitStateBlock" : "ap_block_pp0_stage5_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_GaussianBlur_3_0_0_2160_3840_1_2_2_Pipeline_VITIS_LOOP_48_1_fu_96.sitofp_32s_32_5_no_dsp_1_U66", "Parent" : "2"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_GaussianBlur_3_0_0_2160_3840_1_2_2_Pipeline_VITIS_LOOP_48_1_fu_96.fexp_32ns_32ns_32_9_full_dsp_1_U67", "Parent" : "2"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_GaussianBlur_3_0_0_2160_3840_1_2_2_Pipeline_VITIS_LOOP_48_1_fu_96.flow_control_loop_pipe_sequential_init_U", "Parent" : "2"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_GaussianBlur_3_0_0_2160_3840_1_2_2_Pipeline_VITIS_LOOP_58_2_fu_103", "Parent" : "0", "Child" : ["7", "8", "9", "10"],
		"CDFG" : "GaussianBlur_3_0_0_2160_3840_1_2_2_Pipeline_VITIS_LOOP_58_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "95", "EstimateLatencyMax" : "95",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "cf", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "sum", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "weights_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_58_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "28", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage9", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage9_subdone", "QuitState" : "ap_ST_fsm_pp0_stage9", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage9_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_GaussianBlur_3_0_0_2160_3840_1_2_2_Pipeline_VITIS_LOOP_58_2_fu_103.sitofp_32ns_32_5_no_dsp_1_U75", "Parent" : "6"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_GaussianBlur_3_0_0_2160_3840_1_2_2_Pipeline_VITIS_LOOP_58_2_fu_103.fpext_32ns_64_2_no_dsp_1_U76", "Parent" : "6"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_GaussianBlur_3_0_0_2160_3840_1_2_2_Pipeline_VITIS_LOOP_58_2_fu_103.dadd_64ns_64ns_64_8_full_dsp_1_U77", "Parent" : "6"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_GaussianBlur_3_0_0_2160_3840_1_2_2_Pipeline_VITIS_LOOP_58_2_fu_103.flow_control_loop_pipe_sequential_init_U", "Parent" : "6"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_xfGaussianFilter3x3_0_2160_3840_1_0_1_2_2_1_3840_s_fu_111", "Parent" : "0", "Child" : ["12", "13", "14", "15", "17", "22"],
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
					{"ID" : "17", "SubInstance" : "grp_xfGaussianFilter3x3_0_2160_3840_1_0_1_2_2_1_3840_Pipeline_Col_Loop_fu_168", "Port" : "in_mat_data1", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "15", "SubInstance" : "grp_xfGaussianFilter3x3_Pipeline_Clear_Row_Loop_fu_159", "Port" : "in_mat_data1", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "out_mat_data2", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "out_mat_data2_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "17", "SubInstance" : "grp_xfGaussianFilter3x3_0_2160_3840_1_0_1_2_2_1_3840_Pipeline_Col_Loop_fu_168", "Port" : "out_mat_data2", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "img_height", "Type" : "None", "Direction" : "I"},
			{"Name" : "img_width", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "Row_Loop", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "15", "FirstState" : "ap_ST_fsm_state5", "LastState" : ["ap_ST_fsm_state15"], "QuitState" : ["ap_ST_fsm_state5"], "PreState" : ["ap_ST_fsm_state4"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_xfGaussianFilter3x3_0_2160_3840_1_0_1_2_2_1_3840_s_fu_111.buf_V_U", "Parent" : "11"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_xfGaussianFilter3x3_0_2160_3840_1_0_1_2_2_1_3840_s_fu_111.buf_V_1_U", "Parent" : "11"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_xfGaussianFilter3x3_0_2160_3840_1_0_1_2_2_1_3840_s_fu_111.buf_V_2_U", "Parent" : "11"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_xfGaussianFilter3x3_0_2160_3840_1_0_1_2_2_1_3840_s_fu_111.grp_xfGaussianFilter3x3_Pipeline_Clear_Row_Loop_fu_159", "Parent" : "11", "Child" : ["16"],
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
	{"ID" : "16", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_xfGaussianFilter3x3_0_2160_3840_1_0_1_2_2_1_3840_s_fu_111.grp_xfGaussianFilter3x3_Pipeline_Clear_Row_Loop_fu_159.flow_control_loop_pipe_sequential_init_U", "Parent" : "15"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_xfGaussianFilter3x3_0_2160_3840_1_0_1_2_2_1_3840_s_fu_111.grp_xfGaussianFilter3x3_0_2160_3840_1_0_1_2_2_1_3840_Pipeline_Col_Loop_fu_168", "Parent" : "11", "Child" : ["18", "19", "20", "21"],
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
	{"ID" : "18", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_xfGaussianFilter3x3_0_2160_3840_1_0_1_2_2_1_3840_s_fu_111.grp_xfGaussianFilter3x3_0_2160_3840_1_0_1_2_2_1_3840_Pipeline_Col_Loop_fu_168.mux_32_8_1_1_U111", "Parent" : "17"},
	{"ID" : "19", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_xfGaussianFilter3x3_0_2160_3840_1_0_1_2_2_1_3840_s_fu_111.grp_xfGaussianFilter3x3_0_2160_3840_1_0_1_2_2_1_3840_Pipeline_Col_Loop_fu_168.mux_32_8_1_1_U112", "Parent" : "17"},
	{"ID" : "20", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_xfGaussianFilter3x3_0_2160_3840_1_0_1_2_2_1_3840_s_fu_111.grp_xfGaussianFilter3x3_0_2160_3840_1_0_1_2_2_1_3840_Pipeline_Col_Loop_fu_168.mux_32_8_1_1_U113", "Parent" : "17"},
	{"ID" : "21", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_xfGaussianFilter3x3_0_2160_3840_1_0_1_2_2_1_3840_s_fu_111.grp_xfGaussianFilter3x3_0_2160_3840_1_0_1_2_2_1_3840_Pipeline_Col_Loop_fu_168.flow_control_loop_pipe_sequential_init_U", "Parent" : "17"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_xfGaussianFilter3x3_0_2160_3840_1_0_1_2_2_1_3840_s_fu_111.grp_xFapplygaussian3x3_0_s_fu_192", "Parent" : "11", "Child" : ["23", "24", "25", "26", "27", "28"],
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
	{"ID" : "23", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_xfGaussianFilter3x3_0_2160_3840_1_0_1_2_2_1_3840_s_fu_111.grp_xFapplygaussian3x3_0_s_fu_192.mul_8ns_8ns_16_1_0_U89", "Parent" : "22"},
	{"ID" : "24", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_xfGaussianFilter3x3_0_2160_3840_1_0_1_2_2_1_3840_s_fu_111.grp_xFapplygaussian3x3_0_s_fu_192.am_addmul_9ns_9ns_8ns_18_4_0_U90", "Parent" : "22"},
	{"ID" : "25", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_xfGaussianFilter3x3_0_2160_3840_1_0_1_2_2_1_3840_s_fu_111.grp_xFapplygaussian3x3_0_s_fu_192.am_addmul_8ns_8ns_8ns_17_4_0_U91", "Parent" : "22"},
	{"ID" : "26", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_xfGaussianFilter3x3_0_2160_3840_1_0_1_2_2_1_3840_s_fu_111.grp_xFapplygaussian3x3_0_s_fu_192.am_addmul_8ns_8ns_8ns_17_4_0_U92", "Parent" : "22"},
	{"ID" : "27", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_xfGaussianFilter3x3_0_2160_3840_1_0_1_2_2_1_3840_s_fu_111.grp_xFapplygaussian3x3_0_s_fu_192.ama_addmuladd_18ns_17ns_8ns_16ns_24_4_0_U93", "Parent" : "22"},
	{"ID" : "28", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_xfGaussianFilter3x3_0_2160_3840_1_0_1_2_2_1_3840_s_fu_111.grp_xFapplygaussian3x3_0_s_fu_192.ama_addmuladd_17ns_16ns_8ns_24ns_24_4_0_U94", "Parent" : "22"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U140", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fdiv_32ns_32ns_32_12_no_dsp_1_U141", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fcmp_32ns_32ns_1_2_no_dsp_1_U142", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.faddfsub_32ns_32ns_32_6_full_dsp_1_U143", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	GaussianBlur_3_0_0_2160_3840_1_2_2_s {
		p_src_rows {Type I LastRead 0 FirstWrite -1}
		p_src_cols {Type I LastRead 0 FirstWrite -1}
		in_mat_data1 {Type I LastRead 1 FirstWrite -1}
		out_mat_data2 {Type O LastRead -1 FirstWrite 12}
		sigma {Type I LastRead 0 FirstWrite -1}}
	GaussianBlur_3_0_0_2160_3840_1_2_2_Pipeline_VITIS_LOOP_48_1 {
		scale2X {Type I LastRead 0 FirstWrite -1}
		cf {Type O LastRead -1 FirstWrite 23}
		sum_1_out {Type O LastRead -1 FirstWrite 23}}
	GaussianBlur_3_0_0_2160_3840_1_2_2_Pipeline_VITIS_LOOP_58_2 {
		cf {Type IO LastRead 0 FirstWrite 4}
		sum {Type I LastRead 0 FirstWrite -1}
		weights_1_out {Type O LastRead -1 FirstWrite 9}
		weights_out {Type O LastRead -1 FirstWrite 9}}
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
	{"Name" : "Latency", "Min" : "8350261", "Max" : "8350261"}
	, {"Name" : "Interval", "Min" : "8350261", "Max" : "8350261"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	p_src_rows { ap_fifo {  { p_src_rows_dout fifo_port_we 0 32 }  { p_src_rows_num_data_valid fifo_status_num_data_valid 0 2 }  { p_src_rows_fifo_cap fifo_update 0 2 }  { p_src_rows_empty_n fifo_status 0 1 }  { p_src_rows_read fifo_data 1 1 } } }
	p_src_cols { ap_fifo {  { p_src_cols_dout fifo_port_we 0 32 }  { p_src_cols_num_data_valid fifo_status_num_data_valid 0 2 }  { p_src_cols_fifo_cap fifo_update 0 2 }  { p_src_cols_empty_n fifo_status 0 1 }  { p_src_cols_read fifo_data 1 1 } } }
	in_mat_data1 { ap_fifo {  { in_mat_data1_dout fifo_port_we 0 8 }  { in_mat_data1_num_data_valid fifo_status_num_data_valid 0 2 }  { in_mat_data1_fifo_cap fifo_update 0 2 }  { in_mat_data1_empty_n fifo_status 0 1 }  { in_mat_data1_read fifo_data 1 1 } } }
	out_mat_data2 { ap_fifo {  { out_mat_data2_din fifo_port_we 1 8 }  { out_mat_data2_num_data_valid fifo_status_num_data_valid 0 2 }  { out_mat_data2_fifo_cap fifo_update 0 2 }  { out_mat_data2_full_n fifo_status 0 1 }  { out_mat_data2_write fifo_data 1 1 } } }
	sigma { ap_fifo {  { sigma_dout fifo_port_we 0 32 }  { sigma_num_data_valid fifo_status_num_data_valid 0 3 }  { sigma_fifo_cap fifo_update 0 3 }  { sigma_empty_n fifo_status 0 1 }  { sigma_read fifo_data 1 1 } } }
}
