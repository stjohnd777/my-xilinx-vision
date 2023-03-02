set moduleName xFCannyKernel
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type dataflow
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set C_modelName {xFCannyKernel}
set C_modelType { void 0 }
set C_modelArgList {
	{ in_mat_data1 int 8 regular {fifo 0 volatile }  }
	{ dst_mat_data2 int 64 regular {fifo 1 volatile }  }
	{ p_lowthreshold uint 8 regular  }
	{ p_highthreshold uint 8 regular  }
	{ img_height uint 16 regular  }
	{ img_width uint 16 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "in_mat_data1", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "dst_mat_data2", "interface" : "fifo", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_lowthreshold", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_highthreshold", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "img_height", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "img_width", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 21
set portList { 
	{ in_mat_data1_dout sc_in sc_lv 8 signal 0 } 
	{ in_mat_data1_empty_n sc_in sc_logic 1 signal 0 } 
	{ in_mat_data1_read sc_out sc_logic 1 signal 0 } 
	{ dst_mat_data2_din sc_out sc_lv 64 signal 1 } 
	{ dst_mat_data2_full_n sc_in sc_logic 1 signal 1 } 
	{ dst_mat_data2_write sc_out sc_logic 1 signal 1 } 
	{ p_lowthreshold sc_in sc_lv 8 signal 2 } 
	{ p_highthreshold sc_in sc_lv 8 signal 3 } 
	{ img_height sc_in sc_lv 16 signal 4 } 
	{ img_width sc_in sc_lv 16 signal 5 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ p_lowthreshold_ap_vld sc_in sc_logic 1 invld 2 } 
	{ p_highthreshold_ap_vld sc_in sc_logic 1 invld 3 } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ img_height_ap_vld sc_in sc_logic 1 invld 4 } 
	{ img_width_ap_vld sc_in sc_logic 1 invld 5 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
}
set NewPortList {[ 
	{ "name": "in_mat_data1_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "in_mat_data1", "role": "dout" }} , 
 	{ "name": "in_mat_data1_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_mat_data1", "role": "empty_n" }} , 
 	{ "name": "in_mat_data1_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_mat_data1", "role": "read" }} , 
 	{ "name": "dst_mat_data2_din", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "dst_mat_data2", "role": "din" }} , 
 	{ "name": "dst_mat_data2_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dst_mat_data2", "role": "full_n" }} , 
 	{ "name": "dst_mat_data2_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dst_mat_data2", "role": "write" }} , 
 	{ "name": "p_lowthreshold", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_lowthreshold", "role": "default" }} , 
 	{ "name": "p_highthreshold", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_highthreshold", "role": "default" }} , 
 	{ "name": "img_height", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "img_height", "role": "default" }} , 
 	{ "name": "img_width", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "img_width", "role": "default" }} , 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "p_lowthreshold_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "p_lowthreshold", "role": "ap_vld" }} , 
 	{ "name": "p_highthreshold_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "p_highthreshold", "role": "ap_vld" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "img_height_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "img_height", "role": "ap_vld" }} , 
 	{ "name": "img_width_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "img_width", "role": "ap_vld" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "16", "35", "38", "39", "42", "46", "63", "67", "68", "69", "70", "71", "72", "73", "74", "75", "76", "77", "78", "79", "80", "81", "82", "83", "84", "85", "86", "87", "88", "89", "90", "91", "92", "93", "94", "95"],
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
			{"ID" : "1", "Name" : "entry_proc16_U0"},
			{"ID" : "2", "Name" : "xFAverageGaussianMask3x3_0_0_1080_1920_0_1_2_2_1_1920_U0"},
			{"ID" : "38", "Name" : "xFCannyKernel_Block_entry15_proc_U0"}],
		"OutputProcess" : [
			{"ID" : "63", "Name" : "xFPackNMS_8_8_1080_1920_12_12_1_32_2_2_0_20_U0"}],
		"Port" : [
			{"Name" : "in_mat_data1", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "xFAverageGaussianMask3x3_0_0_1080_1920_0_1_2_2_1_1920_U0", "Port" : "in_mat_data1"}]},
			{"Name" : "dst_mat_data2", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "63", "SubInstance" : "xFPackNMS_8_8_1080_1920_12_12_1_32_2_2_0_20_U0", "Port" : "dst_mat_data2"}]},
			{"Name" : "p_lowthreshold", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_highthreshold", "Type" : "None", "Direction" : "I"},
			{"Name" : "img_height", "Type" : "None", "Direction" : "I"},
			{"Name" : "img_width", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.entry_proc16_U0", "Parent" : "0",
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
			{"Name" : "p_lowthreshold_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["46"], "DependentChan" : "67", "DependentChanDepth" : "6", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "p_lowthreshold_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_highthreshold", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_highthreshold_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["46"], "DependentChan" : "68", "DependentChanDepth" : "6", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "p_highthreshold_c_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.xFAverageGaussianMask3x3_0_0_1080_1920_0_1_2_2_1_1920_U0", "Parent" : "0", "Child" : ["3", "4", "5", "6", "8"],
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
					{"ID" : "8", "SubInstance" : "grp_xFAverageGaussianMask3x3_Pipeline_Col_Loop_fu_190", "Port" : "in_mat_data1", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "6", "SubInstance" : "grp_xFAverageGaussianMask3x3_Pipeline_Clear_Row_Loop_fu_181", "Port" : "in_mat_data1", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "gaussian_mat_data1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["16"], "DependentChan" : "69", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "gaussian_mat_data1_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "grp_xFAverageGaussianMask3x3_Pipeline_Col_Loop_fu_190", "Port" : "gaussian_mat_data1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "img_height", "Type" : "None", "Direction" : "I"},
			{"Name" : "img_width", "Type" : "None", "Direction" : "I"},
			{"Name" : "img_height_c22", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["16"], "DependentChan" : "70", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "img_height_c22_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "img_width_c26", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["16"], "DependentChan" : "71", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "img_width_c26_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "Row_Loop", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "7", "FirstState" : "ap_ST_fsm_state5", "LastState" : ["ap_ST_fsm_state7"], "QuitState" : ["ap_ST_fsm_state5"], "PreState" : ["ap_ST_fsm_state4"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.xFAverageGaussianMask3x3_0_0_1080_1920_0_1_2_2_1_1920_U0.buf_V_U", "Parent" : "2"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.xFAverageGaussianMask3x3_0_0_1080_1920_0_1_2_2_1_1920_U0.buf_V_5_U", "Parent" : "2"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.xFAverageGaussianMask3x3_0_0_1080_1920_0_1_2_2_1_1920_U0.buf_V_6_U", "Parent" : "2"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.xFAverageGaussianMask3x3_0_0_1080_1920_0_1_2_2_1_1920_U0.grp_xFAverageGaussianMask3x3_Pipeline_Clear_Row_Loop_fu_181", "Parent" : "2", "Child" : ["7"],
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
	{"ID" : "7", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.xFAverageGaussianMask3x3_0_0_1080_1920_0_1_2_2_1_1920_U0.grp_xFAverageGaussianMask3x3_Pipeline_Clear_Row_Loop_fu_181.flow_control_loop_pipe_sequential_init_U", "Parent" : "6"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.xFAverageGaussianMask3x3_0_0_1080_1920_0_1_2_2_1_1920_U0.grp_xFAverageGaussianMask3x3_Pipeline_Col_Loop_fu_190", "Parent" : "2", "Child" : ["9", "10", "11", "12", "13", "14", "15"],
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
	{"ID" : "9", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.xFAverageGaussianMask3x3_0_0_1080_1920_0_1_2_2_1_1920_U0.grp_xFAverageGaussianMask3x3_Pipeline_Col_Loop_fu_190.src_buf1_V_xfExtractPixels_1_1_0_1_fu_320", "Parent" : "8",
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
	{"ID" : "10", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.xFAverageGaussianMask3x3_0_0_1080_1920_0_1_2_2_1_1920_U0.grp_xFAverageGaussianMask3x3_Pipeline_Col_Loop_fu_190.src_buf2_V_xfExtractPixels_1_1_0_1_fu_325", "Parent" : "8",
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
	{"ID" : "11", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.xFAverageGaussianMask3x3_0_0_1080_1920_0_1_2_2_1_1920_U0.grp_xFAverageGaussianMask3x3_Pipeline_Col_Loop_fu_190.src_buf3_V_xfExtractPixels_1_1_0_1_fu_330", "Parent" : "8",
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
	{"ID" : "12", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.xFAverageGaussianMask3x3_0_0_1080_1920_0_1_2_2_1_1920_U0.grp_xFAverageGaussianMask3x3_Pipeline_Col_Loop_fu_190.mux_32_8_1_1_U75", "Parent" : "8"},
	{"ID" : "13", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.xFAverageGaussianMask3x3_0_0_1080_1920_0_1_2_2_1_1920_U0.grp_xFAverageGaussianMask3x3_Pipeline_Col_Loop_fu_190.mux_32_8_1_1_U76", "Parent" : "8"},
	{"ID" : "14", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.xFAverageGaussianMask3x3_0_0_1080_1920_0_1_2_2_1_1920_U0.grp_xFAverageGaussianMask3x3_Pipeline_Col_Loop_fu_190.mux_32_8_1_1_U77", "Parent" : "8"},
	{"ID" : "15", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.xFAverageGaussianMask3x3_0_0_1080_1920_0_1_2_2_1_1920_U0.grp_xFAverageGaussianMask3x3_Pipeline_Col_Loop_fu_190.flow_control_loop_pipe_sequential_init_U", "Parent" : "8"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.xFSobel_0_2_1080_1920_0_3_1_2_2_2_1_5_3_false_U0", "Parent" : "0", "Child" : ["17"],
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
		"StartSource" : "2",
		"StartFifo" : "start_for_xFSobel_0_2_1080_1920_0_3_1_2_2_2_1_5_3_false_U0_U",
		"Port" : [
			{"Name" : "gaussian_mat_data1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["2"], "DependentChan" : "69", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "17", "SubInstance" : "grp_xFSobel3x3_0_2_1080_1920_0_3_1_2_2_2_1_5_1921_3_9_false_s_fu_68", "Port" : "gaussian_mat_data1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "gradx_mat_data2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["35"], "DependentChan" : "72", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "17", "SubInstance" : "grp_xFSobel3x3_0_2_1080_1920_0_3_1_2_2_2_1_5_1921_3_9_false_s_fu_68", "Port" : "gradx_mat_data2", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "grady_mat_data5", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["35"], "DependentChan" : "73", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "17", "SubInstance" : "grp_xFSobel3x3_0_2_1080_1920_0_3_1_2_2_2_1_5_1921_3_9_false_s_fu_68", "Port" : "grady_mat_data5", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "imgheight", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["2"], "DependentChan" : "70", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "imgheight_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "imgwidth", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["2"], "DependentChan" : "71", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "imgwidth_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "img_height_c21", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["35"], "DependentChan" : "74", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "img_height_c21_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "img_width_c25", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["35"], "DependentChan" : "75", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "img_width_c25_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.xFSobel_0_2_1080_1920_0_3_1_2_2_2_1_5_3_false_U0.grp_xFSobel3x3_0_2_1080_1920_0_3_1_2_2_2_1_5_1921_3_9_false_s_fu_68", "Parent" : "16", "Child" : ["18", "19", "20", "21", "23", "25", "28"],
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
					{"ID" : "28", "SubInstance" : "grp_xFSobel3x3_Pipeline_Col_Loop_fu_155", "Port" : "gaussian_mat_data1", "Inst_start_state" : "7", "Inst_end_state" : "8"},
					{"ID" : "23", "SubInstance" : "grp_xFSobel3x3_Pipeline_VITIS_LOOP_468_2_fu_135", "Port" : "gaussian_mat_data1", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "gradx_mat_data2", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "28", "SubInstance" : "grp_xFSobel3x3_Pipeline_Col_Loop_fu_155", "Port" : "gradx_mat_data2", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "grady_mat_data5", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "28", "SubInstance" : "grp_xFSobel3x3_Pipeline_Col_Loop_fu_155", "Port" : "grady_mat_data5", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "img_height", "Type" : "None", "Direction" : "I"},
			{"Name" : "img_width", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "read_lines", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "8", "FirstState" : "ap_ST_fsm_state4", "LastState" : ["ap_ST_fsm_state5"], "QuitState" : ["ap_ST_fsm_state4"], "PreState" : ["ap_ST_fsm_state3"], "PostState" : ["ap_ST_fsm_state6"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "Row_Loop", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "8", "FirstState" : "ap_ST_fsm_state7", "LastState" : ["ap_ST_fsm_state8"], "QuitState" : ["ap_ST_fsm_state7"], "PreState" : ["ap_ST_fsm_state6"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "18", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.xFSobel_0_2_1080_1920_0_3_1_2_2_2_1_5_3_false_U0.grp_xFSobel3x3_0_2_1080_1920_0_3_1_2_2_2_1_5_1921_3_9_false_s_fu_68.buf_V_U", "Parent" : "17"},
	{"ID" : "19", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.xFSobel_0_2_1080_1920_0_3_1_2_2_2_1_5_3_false_U0.grp_xFSobel3x3_0_2_1080_1920_0_3_1_2_2_2_1_5_1921_3_9_false_s_fu_68.buf_V_3_U", "Parent" : "17"},
	{"ID" : "20", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.xFSobel_0_2_1080_1920_0_3_1_2_2_2_1_5_3_false_U0.grp_xFSobel3x3_0_2_1080_1920_0_3_1_2_2_2_1_5_1921_3_9_false_s_fu_68.buf_V_4_U", "Parent" : "17"},
	{"ID" : "21", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.xFSobel_0_2_1080_1920_0_3_1_2_2_2_1_5_3_false_U0.grp_xFSobel3x3_0_2_1080_1920_0_3_1_2_2_2_1_5_1921_3_9_false_s_fu_68.grp_xFSobel3x3_Pipeline_VITIS_LOOP_456_1_fu_128", "Parent" : "17", "Child" : ["22"],
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
	{"ID" : "22", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.xFSobel_0_2_1080_1920_0_3_1_2_2_2_1_5_3_false_U0.grp_xFSobel3x3_0_2_1080_1920_0_3_1_2_2_2_1_5_1921_3_9_false_s_fu_68.grp_xFSobel3x3_Pipeline_VITIS_LOOP_456_1_fu_128.flow_control_loop_pipe_sequential_init_U", "Parent" : "21"},
	{"ID" : "23", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.xFSobel_0_2_1080_1920_0_3_1_2_2_2_1_5_3_false_U0.grp_xFSobel3x3_0_2_1080_1920_0_3_1_2_2_2_1_5_1921_3_9_false_s_fu_68.grp_xFSobel3x3_Pipeline_VITIS_LOOP_468_2_fu_135", "Parent" : "17", "Child" : ["24"],
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
	{"ID" : "24", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.xFSobel_0_2_1080_1920_0_3_1_2_2_2_1_5_3_false_U0.grp_xFSobel3x3_0_2_1080_1920_0_3_1_2_2_2_1_5_1921_3_9_false_s_fu_68.grp_xFSobel3x3_Pipeline_VITIS_LOOP_468_2_fu_135.flow_control_loop_pipe_sequential_init_U", "Parent" : "23"},
	{"ID" : "25", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.xFSobel_0_2_1080_1920_0_3_1_2_2_2_1_5_3_false_U0.grp_xFSobel3x3_0_2_1080_1920_0_3_1_2_2_2_1_5_1921_3_9_false_s_fu_68.grp_xFSobel3x3_Pipeline_VITIS_LOOP_479_3_fu_146", "Parent" : "17", "Child" : ["26", "27"],
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
	{"ID" : "26", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.xFSobel_0_2_1080_1920_0_3_1_2_2_2_1_5_3_false_U0.grp_xFSobel3x3_0_2_1080_1920_0_3_1_2_2_2_1_5_1921_3_9_false_s_fu_68.grp_xFSobel3x3_Pipeline_VITIS_LOOP_479_3_fu_146.mux_32_8_1_1_U111", "Parent" : "25"},
	{"ID" : "27", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.xFSobel_0_2_1080_1920_0_3_1_2_2_2_1_5_3_false_U0.grp_xFSobel3x3_0_2_1080_1920_0_3_1_2_2_2_1_5_1921_3_9_false_s_fu_68.grp_xFSobel3x3_Pipeline_VITIS_LOOP_479_3_fu_146.flow_control_loop_pipe_sequential_init_U", "Parent" : "25"},
	{"ID" : "28", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.xFSobel_0_2_1080_1920_0_3_1_2_2_2_1_5_3_false_U0.grp_xFSobel3x3_0_2_1080_1920_0_3_1_2_2_2_1_5_1921_3_9_false_s_fu_68.grp_xFSobel3x3_Pipeline_Col_Loop_fu_155", "Parent" : "17", "Child" : ["29", "30", "31", "32", "33", "34"],
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
	{"ID" : "29", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.xFSobel_0_2_1080_1920_0_3_1_2_2_2_1_5_3_false_U0.grp_xFSobel3x3_0_2_1080_1920_0_3_1_2_2_2_1_5_1921_3_9_false_s_fu_68.grp_xFSobel3x3_Pipeline_Col_Loop_fu_155.mux_32_13_1_1_U117", "Parent" : "28"},
	{"ID" : "30", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.xFSobel_0_2_1080_1920_0_3_1_2_2_2_1_5_3_false_U0.grp_xFSobel3x3_0_2_1080_1920_0_3_1_2_2_2_1_5_1921_3_9_false_s_fu_68.grp_xFSobel3x3_Pipeline_Col_Loop_fu_155.mux_32_8_1_1_U118", "Parent" : "28"},
	{"ID" : "31", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.xFSobel_0_2_1080_1920_0_3_1_2_2_2_1_5_3_false_U0.grp_xFSobel3x3_0_2_1080_1920_0_3_1_2_2_2_1_5_1921_3_9_false_s_fu_68.grp_xFSobel3x3_Pipeline_Col_Loop_fu_155.mux_32_8_1_1_U119", "Parent" : "28"},
	{"ID" : "32", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.xFSobel_0_2_1080_1920_0_3_1_2_2_2_1_5_3_false_U0.grp_xFSobel3x3_0_2_1080_1920_0_3_1_2_2_2_1_5_1921_3_9_false_s_fu_68.grp_xFSobel3x3_Pipeline_Col_Loop_fu_155.mux_32_8_1_1_U120", "Parent" : "28"},
	{"ID" : "33", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.xFSobel_0_2_1080_1920_0_3_1_2_2_2_1_5_3_false_U0.grp_xFSobel3x3_0_2_1080_1920_0_3_1_2_2_2_1_5_1921_3_9_false_s_fu_68.grp_xFSobel3x3_Pipeline_Col_Loop_fu_155.mux_32_8_1_1_U121", "Parent" : "28"},
	{"ID" : "34", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.xFSobel_0_2_1080_1920_0_3_1_2_2_2_1_5_3_false_U0.grp_xFSobel3x3_0_2_1080_1920_0_3_1_2_2_2_1_5_1921_3_9_false_s_fu_68.grp_xFSobel3x3_Pipeline_Col_Loop_fu_155.flow_control_loop_pipe_sequential_init_U", "Parent" : "28"},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.xFDuplicate_rows_2_1080_1920_3_1_2_2_2_2_2_2_5_1920_U0", "Parent" : "0", "Child" : ["36"],
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
		"StartSource" : "16",
		"StartFifo" : "start_for_xFDuplicate_rows_2_1080_1920_3_1_2_2_2_2_2_2_5_1920_U0_U",
		"Port" : [
			{"Name" : "gradx_mat_data2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["16"], "DependentChan" : "72", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "36", "SubInstance" : "grp_xFDuplicate_rows_Pipeline_Col_Loop_fu_94", "Port" : "gradx_mat_data2", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "grady_mat_data5", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["16"], "DependentChan" : "73", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "36", "SubInstance" : "grp_xFDuplicate_rows_Pipeline_Col_Loop_fu_94", "Port" : "grady_mat_data5", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "gradx1_mat_data3", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["39"], "DependentChan" : "76", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "36", "SubInstance" : "grp_xFDuplicate_rows_Pipeline_Col_Loop_fu_94", "Port" : "gradx1_mat_data3", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "gradx2_mat_data4", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["42"], "DependentChan" : "77", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "36", "SubInstance" : "grp_xFDuplicate_rows_Pipeline_Col_Loop_fu_94", "Port" : "gradx2_mat_data4", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "grady1_mat_data6", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["39"], "DependentChan" : "78", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "36", "SubInstance" : "grp_xFDuplicate_rows_Pipeline_Col_Loop_fu_94", "Port" : "grady1_mat_data6", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "grady2_mat_data7", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["42"], "DependentChan" : "79", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "36", "SubInstance" : "grp_xFDuplicate_rows_Pipeline_Col_Loop_fu_94", "Port" : "grady2_mat_data7", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "img_height", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["16"], "DependentChan" : "74", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "img_height_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "img_width", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["16"], "DependentChan" : "75", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "img_width_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "img_height_c20", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["42"], "DependentChan" : "80", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "img_height_c20_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "img_width_c24", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["42"], "DependentChan" : "81", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "img_width_c24_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "Row_Loop", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "3", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state3"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "36", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.xFDuplicate_rows_2_1080_1920_3_1_2_2_2_2_2_2_5_1920_U0.grp_xFDuplicate_rows_Pipeline_Col_Loop_fu_94", "Parent" : "35", "Child" : ["37"],
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
	{"ID" : "37", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.xFDuplicate_rows_2_1080_1920_3_1_2_2_2_2_2_2_5_1920_U0.grp_xFDuplicate_rows_Pipeline_Col_Loop_fu_94.flow_control_loop_pipe_sequential_init_U", "Parent" : "36"},
	{"ID" : "38", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.xFCannyKernel_Block_entry15_proc_U0", "Parent" : "0",
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
	{"ID" : "39", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.xFMagnitudeKernel_2_2_1080_1920_3_3_1_2_2_2_5_5_1920_U0", "Parent" : "0", "Child" : ["40"],
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
			{"Name" : "gradx1_mat_data3", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["35"], "DependentChan" : "76", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "40", "SubInstance" : "grp_xFMagnitudeKernel_Pipeline_colLoop_fu_56", "Port" : "gradx1_mat_data3", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "grady1_mat_data6", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["35"], "DependentChan" : "78", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "40", "SubInstance" : "grp_xFMagnitudeKernel_Pipeline_colLoop_fu_56", "Port" : "grady1_mat_data6", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "magnitude_mat_data8", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["46"], "DependentChan" : "84", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "40", "SubInstance" : "grp_xFMagnitudeKernel_Pipeline_colLoop_fu_56", "Port" : "magnitude_mat_data8", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : ["38"], "DependentChan" : "83", "DependentChanDepth" : "4", "DependentChanType" : "1"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I", "DependentProc" : ["38"], "DependentChan" : "82", "DependentChanDepth" : "4", "DependentChanType" : "1"}],
		"Loop" : [
			{"Name" : "rowLoop", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "3", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state3"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "40", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.xFMagnitudeKernel_2_2_1080_1920_3_3_1_2_2_2_5_5_1920_U0.grp_xFMagnitudeKernel_Pipeline_colLoop_fu_56", "Parent" : "39", "Child" : ["41"],
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
	{"ID" : "41", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.xFMagnitudeKernel_2_2_1080_1920_3_3_1_2_2_2_5_5_1920_U0.grp_xFMagnitudeKernel_Pipeline_colLoop_fu_56.flow_control_loop_pipe_sequential_init_U", "Parent" : "40"},
	{"ID" : "42", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.xFAngleKernel_2_0_1080_1920_3_0_1_2_2_5_1_1920_5760_U0", "Parent" : "0", "Child" : ["43"],
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
		"StartSource" : "35",
		"StartFifo" : "start_for_xFAngleKernel_2_0_1080_1920_3_0_1_2_2_5_1_1920_5760_U0_U",
		"Port" : [
			{"Name" : "gradx2_mat_data4", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["35"], "DependentChan" : "77", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "43", "SubInstance" : "grp_xFAngleKernel_Pipeline_colLoop_fu_88", "Port" : "gradx2_mat_data4", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "grady2_mat_data7", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["35"], "DependentChan" : "79", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "43", "SubInstance" : "grp_xFAngleKernel_Pipeline_colLoop_fu_88", "Port" : "grady2_mat_data7", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "phase_mat_data9", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["46"], "DependentChan" : "85", "DependentChanDepth" : "5760", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "43", "SubInstance" : "grp_xFAngleKernel_Pipeline_colLoop_fu_88", "Port" : "phase_mat_data9", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "imgheight", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["35"], "DependentChan" : "80", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "imgheight_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "imgwidth", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["35"], "DependentChan" : "81", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "imgwidth_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "img_height_c19", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["46"], "DependentChan" : "86", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "img_height_c19_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "img_width_c23", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["46"], "DependentChan" : "87", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "img_width_c23_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "rowLoop", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "3", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state3"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "43", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.xFAngleKernel_2_0_1080_1920_3_0_1_2_2_5_1_1920_5760_U0.grp_xFAngleKernel_Pipeline_colLoop_fu_88", "Parent" : "42", "Child" : ["44", "45"],
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
	{"ID" : "44", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.xFAngleKernel_2_0_1080_1920_3_0_1_2_2_5_1_1920_5760_U0.grp_xFAngleKernel_Pipeline_colLoop_fu_88.mul_mul_17s_14ns_32_4_1_U181", "Parent" : "43"},
	{"ID" : "45", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.xFAngleKernel_2_0_1080_1920_3_0_1_2_2_5_1_1920_5760_U0.grp_xFAngleKernel_Pipeline_colLoop_fu_88.flow_control_loop_pipe_sequential_init_U", "Parent" : "43"},
	{"ID" : "46", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.xFSuppression3x3_2_0_8_1080_1920_3_0_12_1_2_5_1_0_1920_5760_2_U0", "Parent" : "0", "Child" : ["47", "48", "49", "50", "51", "52", "54"],
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
		"StartSource" : "1",
		"StartFifo" : "start_for_xFSuppression3x3_2_0_8_1080_1920_3_0_12_1_2_5_1_0_1920_5760_2_U0_U",
		"Port" : [
			{"Name" : "magnitude_mat_data8", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["39"], "DependentChan" : "84", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "52", "SubInstance" : "grp_xFSuppression3x3_Pipeline_bufColLoop_fu_219", "Port" : "magnitude_mat_data8", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "54", "SubInstance" : "grp_xFSuppression3x3_Pipeline_colLoop1_fu_231", "Port" : "magnitude_mat_data8", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "phase_mat_data9", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["42"], "DependentChan" : "85", "DependentChanDepth" : "5760", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "52", "SubInstance" : "grp_xFSuppression3x3_Pipeline_bufColLoop_fu_219", "Port" : "phase_mat_data9", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "54", "SubInstance" : "grp_xFSuppression3x3_Pipeline_colLoop1_fu_231", "Port" : "phase_mat_data9", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "nms_mat_data10", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["63"], "DependentChan" : "88", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "nms_mat_data10_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "54", "SubInstance" : "grp_xFSuppression3x3_Pipeline_colLoop1_fu_231", "Port" : "nms_mat_data10", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "low_threshold", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["1"], "DependentChan" : "67", "DependentChanDepth" : "6", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "low_threshold_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "high_threshold", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["1"], "DependentChan" : "68", "DependentChanDepth" : "6", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "high_threshold_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "imgheight", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["42"], "DependentChan" : "86", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "imgheight_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "imgwidth", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["42"], "DependentChan" : "87", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "imgwidth_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "img_height_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["63"], "DependentChan" : "89", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "img_height_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "img_width_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["63"], "DependentChan" : "90", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "img_width_c_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "rowLoop", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "7", "FirstState" : "ap_ST_fsm_state5", "LastState" : ["ap_ST_fsm_state7"], "QuitState" : ["ap_ST_fsm_state5"], "PreState" : ["ap_ST_fsm_state4"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "47", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.xFSuppression3x3_2_0_8_1080_1920_3_0_12_1_2_5_1_0_1920_5760_2_U0.angle_V_U", "Parent" : "46"},
	{"ID" : "48", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.xFSuppression3x3_2_0_8_1080_1920_3_0_12_1_2_5_1_0_1920_5760_2_U0.angle_V_1_U", "Parent" : "46"},
	{"ID" : "49", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.xFSuppression3x3_2_0_8_1080_1920_3_0_12_1_2_5_1_0_1920_5760_2_U0.buf_V_U", "Parent" : "46"},
	{"ID" : "50", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.xFSuppression3x3_2_0_8_1080_1920_3_0_12_1_2_5_1_0_1920_5760_2_U0.buf_V_1_U", "Parent" : "46"},
	{"ID" : "51", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.xFSuppression3x3_2_0_8_1080_1920_3_0_12_1_2_5_1_0_1920_5760_2_U0.buf_V_2_U", "Parent" : "46"},
	{"ID" : "52", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.xFSuppression3x3_2_0_8_1080_1920_3_0_12_1_2_5_1_0_1920_5760_2_U0.grp_xFSuppression3x3_Pipeline_bufColLoop_fu_219", "Parent" : "46", "Child" : ["53"],
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
	{"ID" : "53", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.xFSuppression3x3_2_0_8_1080_1920_3_0_12_1_2_5_1_0_1920_5760_2_U0.grp_xFSuppression3x3_Pipeline_bufColLoop_fu_219.flow_control_loop_pipe_sequential_init_U", "Parent" : "52"},
	{"ID" : "54", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.xFSuppression3x3_2_0_8_1080_1920_3_0_12_1_2_5_1_0_1920_5760_2_U0.grp_xFSuppression3x3_Pipeline_colLoop1_fu_231", "Parent" : "46", "Child" : ["55", "56", "57", "58", "59", "60", "61", "62"],
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
	{"ID" : "55", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.xFSuppression3x3_2_0_8_1080_1920_3_0_12_1_2_5_1_0_1920_5760_2_U0.grp_xFSuppression3x3_Pipeline_colLoop1_fu_231.l00_buf_V_xfExtractPixels_1_5_3_s_fu_464", "Parent" : "54",
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
	{"ID" : "56", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.xFSuppression3x3_2_0_8_1080_1920_3_0_12_1_2_5_1_0_1920_5760_2_U0.grp_xFSuppression3x3_Pipeline_colLoop1_fu_231.l10_buf_V_xfExtractPixels_1_5_3_s_fu_469", "Parent" : "54",
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
	{"ID" : "57", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.xFSuppression3x3_2_0_8_1080_1920_3_0_12_1_2_5_1_0_1920_5760_2_U0.grp_xFSuppression3x3_Pipeline_colLoop1_fu_231.l20_buf_V_xfExtractPixels_1_5_3_s_fu_474", "Parent" : "54",
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
	{"ID" : "58", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.xFSuppression3x3_2_0_8_1080_1920_3_0_12_1_2_5_1_0_1920_5760_2_U0.grp_xFSuppression3x3_Pipeline_colLoop1_fu_231.grp_xfExtractPixels_1_1_0_s_fu_479", "Parent" : "54",
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
	{"ID" : "59", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.xFSuppression3x3_2_0_8_1080_1920_3_0_12_1_2_5_1_0_1920_5760_2_U0.grp_xFSuppression3x3_Pipeline_colLoop1_fu_231.mux_32_16_1_1_U202", "Parent" : "54"},
	{"ID" : "60", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.xFSuppression3x3_2_0_8_1080_1920_3_0_12_1_2_5_1_0_1920_5760_2_U0.grp_xFSuppression3x3_Pipeline_colLoop1_fu_231.mux_32_16_1_1_U203", "Parent" : "54"},
	{"ID" : "61", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.xFSuppression3x3_2_0_8_1080_1920_3_0_12_1_2_5_1_0_1920_5760_2_U0.grp_xFSuppression3x3_Pipeline_colLoop1_fu_231.mux_32_16_1_1_U204", "Parent" : "54"},
	{"ID" : "62", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.xFSuppression3x3_2_0_8_1080_1920_3_0_12_1_2_5_1_0_1920_5760_2_U0.grp_xFSuppression3x3_Pipeline_colLoop1_fu_231.flow_control_loop_pipe_sequential_init_U", "Parent" : "54"},
	{"ID" : "63", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.xFPackNMS_8_8_1080_1920_12_12_1_32_2_2_0_20_U0", "Parent" : "0", "Child" : ["64"],
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
		"StartSource" : "46",
		"StartFifo" : "start_for_xFPackNMS_8_8_1080_1920_12_12_1_32_2_2_0_20_U0_U",
		"Port" : [
			{"Name" : "nms_mat_data10", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["46"], "DependentChan" : "88", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "64", "SubInstance" : "grp_xFPackNMS_8_8_1080_1920_12_12_1_32_2_2_0_20_Pipeline_colLoop_fu_86", "Port" : "nms_mat_data10", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "dst_mat_data2", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "64", "SubInstance" : "grp_xFPackNMS_8_8_1080_1920_12_12_1_32_2_2_0_20_Pipeline_colLoop_fu_86", "Port" : "dst_mat_data2", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "imgheight", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["46"], "DependentChan" : "89", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "imgheight_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "imgwidth", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["46"], "DependentChan" : "90", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "imgwidth_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "rowLoop", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "3", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state3"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "64", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.xFPackNMS_8_8_1080_1920_12_12_1_32_2_2_0_20_U0.grp_xFPackNMS_8_8_1080_1920_12_12_1_32_2_2_0_20_Pipeline_colLoop_fu_86", "Parent" : "63", "Child" : ["65", "66"],
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
					{"ID" : "65", "SubInstance" : "grp_read_2_void_0_s_fu_480", "Port" : "nms_mat_data10", "Inst_start_state" : "33", "Inst_end_state" : "33"}]},
			{"Name" : "zext_ln108", "Type" : "None", "Direction" : "I"},
			{"Name" : "val_V_98_out", "Type" : "OVld", "Direction" : "IO"}],
		"SubInstanceBlock" : [
			{"SubInstance" : "grp_read_2_void_0_s_fu_480", "SubBlockPort" : ["nms_mat_data10_blk_n"]}],
		"Loop" : [
			{"Name" : "colLoop", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "32", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "65", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.xFPackNMS_8_8_1080_1920_12_12_1_32_2_2_0_20_U0.grp_xFPackNMS_8_8_1080_1920_12_12_1_32_2_2_0_20_Pipeline_colLoop_fu_86.grp_read_2_void_0_s_fu_480", "Parent" : "64",
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
	{"ID" : "66", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.xFPackNMS_8_8_1080_1920_12_12_1_32_2_2_0_20_U0.grp_xFPackNMS_8_8_1080_1920_12_12_1_32_2_2_0_20_Pipeline_colLoop_fu_86.flow_control_loop_pipe_sequential_init_U", "Parent" : "64"},
	{"ID" : "67", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_lowthreshold_c_U", "Parent" : "0"},
	{"ID" : "68", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_highthreshold_c_U", "Parent" : "0"},
	{"ID" : "69", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.gaussian_mat_data_U", "Parent" : "0"},
	{"ID" : "70", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.img_height_c22_U", "Parent" : "0"},
	{"ID" : "71", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.img_width_c26_U", "Parent" : "0"},
	{"ID" : "72", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.gradx_mat_data_U", "Parent" : "0"},
	{"ID" : "73", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grady_mat_data_U", "Parent" : "0"},
	{"ID" : "74", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.img_height_c21_U", "Parent" : "0"},
	{"ID" : "75", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.img_width_c25_U", "Parent" : "0"},
	{"ID" : "76", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.gradx1_mat_data_U", "Parent" : "0"},
	{"ID" : "77", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.gradx2_mat_data_U", "Parent" : "0"},
	{"ID" : "78", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grady1_mat_data_U", "Parent" : "0"},
	{"ID" : "79", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grady2_mat_data_U", "Parent" : "0"},
	{"ID" : "80", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.img_height_c20_U", "Parent" : "0"},
	{"ID" : "81", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.img_width_c24_U", "Parent" : "0"},
	{"ID" : "82", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.imgwidth_U", "Parent" : "0"},
	{"ID" : "83", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.height_U", "Parent" : "0"},
	{"ID" : "84", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.magnitude_mat_data_U", "Parent" : "0"},
	{"ID" : "85", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.phase_mat_data_U", "Parent" : "0"},
	{"ID" : "86", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.img_height_c19_U", "Parent" : "0"},
	{"ID" : "87", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.img_width_c23_U", "Parent" : "0"},
	{"ID" : "88", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.nms_mat_data_U", "Parent" : "0"},
	{"ID" : "89", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.img_height_c_U", "Parent" : "0"},
	{"ID" : "90", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.img_width_c_U", "Parent" : "0"},
	{"ID" : "91", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_xFSuppression3x3_2_0_8_1080_1920_3_0_12_1_2_5_1_0_1920_5760_2_U0_U", "Parent" : "0"},
	{"ID" : "92", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_xFSobel_0_2_1080_1920_0_3_1_2_2_2_1_5_3_false_U0_U", "Parent" : "0"},
	{"ID" : "93", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_xFDuplicate_rows_2_1080_1920_3_1_2_2_2_2_2_2_5_1920_U0_U", "Parent" : "0"},
	{"ID" : "94", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_xFAngleKernel_2_0_1080_1920_3_0_1_2_2_5_1_1920_5760_U0_U", "Parent" : "0"},
	{"ID" : "95", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_xFPackNMS_8_8_1080_1920_12_12_1_32_2_2_0_20_U0_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
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
	{"Name" : "Latency", "Min" : "2089954", "Max" : "2089954"}
	, {"Name" : "Interval", "Min" : "2089950", "Max" : "2089950"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	in_mat_data1 { ap_fifo {  { in_mat_data1_dout fifo_port_we 0 8 }  { in_mat_data1_empty_n fifo_status 0 1 }  { in_mat_data1_read fifo_data 1 1 } } }
	dst_mat_data2 { ap_fifo {  { dst_mat_data2_din fifo_port_we 1 64 }  { dst_mat_data2_full_n fifo_status 0 1 }  { dst_mat_data2_write fifo_data 1 1 } } }
	p_lowthreshold { ap_none {  { p_lowthreshold in_data 0 8 }  { p_lowthreshold_ap_vld in_vld 0 1 } } }
	p_highthreshold { ap_none {  { p_highthreshold in_data 0 8 }  { p_highthreshold_ap_vld in_vld 0 1 } } }
	img_height { ap_none {  { img_height in_data 0 16 }  { img_height_ap_vld in_vld 0 1 } } }
	img_width { ap_none {  { img_width in_data 0 16 }  { img_width_ap_vld in_vld 0 1 } } }
}
