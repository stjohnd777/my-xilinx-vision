set moduleName xFFastCornerDetection_0_2160_3840_0_1_2_2_1_12_1_s
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type dataflow
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 1
set StallSigGenFlag 1
set isEnableWaveformDebug 1
set hasInterrupt 0
set C_modelName {xFFastCornerDetection<0, 2160, 3840, 0, 1, 2, 2, 1, 12, 1>}
set C_modelType { void 0 }
set C_modelArgList {
	{ imgInput_data1 int 8 regular {fifo 0 volatile }  }
	{ imgOutput_data2 int 8 regular {fifo 1 volatile }  }
	{ p_image_height uint 16 regular  }
	{ p_image_width uint 16 regular  }
	{ p_threshold uint 8 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "imgInput_data1", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "imgOutput_data2", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_image_height", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_image_width", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_threshold", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 22
set portList { 
	{ imgInput_data1_dout sc_in sc_lv 8 signal 0 } 
	{ imgInput_data1_empty_n sc_in sc_logic 1 signal 0 } 
	{ imgInput_data1_read sc_out sc_logic 1 signal 0 } 
	{ imgOutput_data2_din sc_out sc_lv 8 signal 1 } 
	{ imgOutput_data2_full_n sc_in sc_logic 1 signal 1 } 
	{ imgOutput_data2_write sc_out sc_logic 1 signal 1 } 
	{ p_image_height sc_in sc_lv 16 signal 2 } 
	{ p_image_width sc_in sc_lv 16 signal 3 } 
	{ p_threshold sc_in sc_lv 8 signal 4 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ p_image_height_ap_vld sc_in sc_logic 1 invld 2 } 
	{ p_image_width_ap_vld sc_in sc_logic 1 invld 3 } 
	{ p_threshold_ap_vld sc_in sc_logic 1 invld 4 } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_ext_blocking_n sc_out sc_logic 1 signal -1 } 
	{ ap_str_blocking_n sc_out sc_logic 1 signal -1 } 
	{ ap_int_blocking_n sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "imgInput_data1_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "imgInput_data1", "role": "dout" }} , 
 	{ "name": "imgInput_data1_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imgInput_data1", "role": "empty_n" }} , 
 	{ "name": "imgInput_data1_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imgInput_data1", "role": "read" }} , 
 	{ "name": "imgOutput_data2_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "imgOutput_data2", "role": "din" }} , 
 	{ "name": "imgOutput_data2_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imgOutput_data2", "role": "full_n" }} , 
 	{ "name": "imgOutput_data2_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imgOutput_data2", "role": "write" }} , 
 	{ "name": "p_image_height", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_image_height", "role": "default" }} , 
 	{ "name": "p_image_width", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_image_width", "role": "default" }} , 
 	{ "name": "p_threshold", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_threshold", "role": "default" }} , 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "p_image_height_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "p_image_height", "role": "ap_vld" }} , 
 	{ "name": "p_image_width_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "p_image_width", "role": "ap_vld" }} , 
 	{ "name": "p_threshold_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "p_threshold", "role": "ap_vld" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_ext_blocking_n", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_ext_blocking_n", "role": "default" }} , 
 	{ "name": "ap_str_blocking_n", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_str_blocking_n", "role": "default" }} , 
 	{ "name": "ap_int_blocking_n", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_int_blocking_n", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "26", "44", "45", "46", "47"],
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
			{"ID" : "1", "Name" : "xFfast7x7_0_2160_3840_0_1_2_2_1_3843_7_49_3_U0"}],
		"OutputProcess" : [
			{"ID" : "26", "Name" : "xFfastnms_0_2160_3840_0_1_2_2_1_3841_3_9_4_U0"}],
		"Port" : [
			{"Name" : "imgInput_data1", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "xFfast7x7_0_2160_3840_0_1_2_2_1_3843_7_49_3_U0", "Port" : "imgInput_data1"}]},
			{"Name" : "imgOutput_data2", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "26", "SubInstance" : "xFfastnms_0_2160_3840_0_1_2_2_1_3841_3_9_4_U0", "Port" : "imgOutput_data2"}]},
			{"Name" : "p_image_height", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_image_width", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_threshold", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.xFfast7x7_0_2160_3840_0_1_2_2_1_3843_7_49_3_U0", "Parent" : "0", "Child" : ["2", "3", "4", "5", "6", "7", "8", "9", "11", "13", "15"],
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
					{"ID" : "11", "SubInstance" : "grp_xFfast7x7_0_2160_3840_0_1_2_2_1_3843_7_49_3_Pipeline_VITIS_LOOP_530_2_fu_253", "Port" : "imgInput_data1", "Inst_start_state" : "4", "Inst_end_state" : "5"},
					{"ID" : "15", "SubInstance" : "grp_xFfast7x7_0_2160_3840_0_1_2_2_1_3843_7_49_3_Pipeline_Col_Loop_fu_276", "Port" : "imgInput_data1", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "p_dst_data1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["26"], "DependentChan" : "44", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "grp_xFfast7x7_0_2160_3840_0_1_2_2_1_3843_7_49_3_Pipeline_Col_Loop_fu_276", "Port" : "p_dst_data1", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "img_height", "Type" : "None", "Direction" : "I"},
			{"Name" : "img_width", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_threshold", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_image_height_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["26"], "DependentChan" : "45", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "p_image_height_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_image_width_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["26"], "DependentChan" : "46", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "p_image_width_c_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "read_lines", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "8", "FirstState" : "ap_ST_fsm_state4", "LastState" : ["ap_ST_fsm_state5"], "QuitState" : ["ap_ST_fsm_state4"], "PreState" : ["ap_ST_fsm_state3"], "PostState" : ["ap_ST_fsm_state6"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "Row_Loop", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "8", "FirstState" : "ap_ST_fsm_state7", "LastState" : ["ap_ST_fsm_state8"], "QuitState" : ["ap_ST_fsm_state7"], "PreState" : ["ap_ST_fsm_state6"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.xFfast7x7_0_2160_3840_0_1_2_2_1_3843_7_49_3_U0.buf_V_U", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.xFfast7x7_0_2160_3840_0_1_2_2_1_3843_7_49_3_U0.buf_V_3_U", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.xFfast7x7_0_2160_3840_0_1_2_2_1_3843_7_49_3_U0.buf_V_4_U", "Parent" : "1"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.xFfast7x7_0_2160_3840_0_1_2_2_1_3843_7_49_3_U0.buf_V_5_U", "Parent" : "1"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.xFfast7x7_0_2160_3840_0_1_2_2_1_3843_7_49_3_U0.buf_V_6_U", "Parent" : "1"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.xFfast7x7_0_2160_3840_0_1_2_2_1_3843_7_49_3_U0.buf_V_7_U", "Parent" : "1"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.xFfast7x7_0_2160_3840_0_1_2_2_1_3843_7_49_3_U0.buf_V_8_U", "Parent" : "1"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.xFfast7x7_0_2160_3840_0_1_2_2_1_3843_7_49_3_U0.grp_xFfast7x7_0_2160_3840_0_1_2_2_1_3843_7_49_3_Pipeline_VITIS_LOOP_515_1_fu_242", "Parent" : "1", "Child" : ["10"],
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
	{"ID" : "10", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.xFfast7x7_0_2160_3840_0_1_2_2_1_3843_7_49_3_U0.grp_xFfast7x7_0_2160_3840_0_1_2_2_1_3843_7_49_3_Pipeline_VITIS_LOOP_515_1_fu_242.flow_control_loop_pipe_sequential_init_U", "Parent" : "9"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.xFfast7x7_0_2160_3840_0_1_2_2_1_3843_7_49_3_U0.grp_xFfast7x7_0_2160_3840_0_1_2_2_1_3843_7_49_3_Pipeline_VITIS_LOOP_530_2_fu_253", "Parent" : "1", "Child" : ["12"],
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
	{"ID" : "12", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.xFfast7x7_0_2160_3840_0_1_2_2_1_3843_7_49_3_U0.grp_xFfast7x7_0_2160_3840_0_1_2_2_1_3843_7_49_3_Pipeline_VITIS_LOOP_530_2_fu_253.flow_control_loop_pipe_sequential_init_U", "Parent" : "11"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.xFfast7x7_0_2160_3840_0_1_2_2_1_3843_7_49_3_U0.grp_xFfast7x7_0_2160_3840_0_1_2_2_1_3843_7_49_3_Pipeline_VITIS_LOOP_541_3_fu_268", "Parent" : "1", "Child" : ["14"],
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
	{"ID" : "14", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.xFfast7x7_0_2160_3840_0_1_2_2_1_3843_7_49_3_U0.grp_xFfast7x7_0_2160_3840_0_1_2_2_1_3843_7_49_3_Pipeline_VITIS_LOOP_541_3_fu_268.flow_control_loop_pipe_sequential_init_U", "Parent" : "13"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.xFfast7x7_0_2160_3840_0_1_2_2_1_3843_7_49_3_U0.grp_xFfast7x7_0_2160_3840_0_1_2_2_1_3843_7_49_3_Pipeline_Col_Loop_fu_276", "Parent" : "1", "Child" : ["16", "17", "18", "19", "20", "21", "22", "23", "24", "25"],
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
	{"ID" : "16", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.xFfast7x7_0_2160_3840_0_1_2_2_1_3843_7_49_3_U0.grp_xFfast7x7_0_2160_3840_0_1_2_2_1_3843_7_49_3_Pipeline_Col_Loop_fu_276.mux_73_13_1_1_U87", "Parent" : "15"},
	{"ID" : "17", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.xFfast7x7_0_2160_3840_0_1_2_2_1_3843_7_49_3_U0.grp_xFfast7x7_0_2160_3840_0_1_2_2_1_3843_7_49_3_Pipeline_Col_Loop_fu_276.mux_73_8_1_1_U88", "Parent" : "15"},
	{"ID" : "18", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.xFfast7x7_0_2160_3840_0_1_2_2_1_3843_7_49_3_U0.grp_xFfast7x7_0_2160_3840_0_1_2_2_1_3843_7_49_3_Pipeline_Col_Loop_fu_276.mux_73_8_1_1_U89", "Parent" : "15"},
	{"ID" : "19", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.xFfast7x7_0_2160_3840_0_1_2_2_1_3843_7_49_3_U0.grp_xFfast7x7_0_2160_3840_0_1_2_2_1_3843_7_49_3_Pipeline_Col_Loop_fu_276.mux_73_8_1_1_U90", "Parent" : "15"},
	{"ID" : "20", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.xFfast7x7_0_2160_3840_0_1_2_2_1_3843_7_49_3_U0.grp_xFfast7x7_0_2160_3840_0_1_2_2_1_3843_7_49_3_Pipeline_Col_Loop_fu_276.mux_73_8_1_1_U91", "Parent" : "15"},
	{"ID" : "21", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.xFfast7x7_0_2160_3840_0_1_2_2_1_3843_7_49_3_U0.grp_xFfast7x7_0_2160_3840_0_1_2_2_1_3843_7_49_3_Pipeline_Col_Loop_fu_276.mux_73_8_1_1_U92", "Parent" : "15"},
	{"ID" : "22", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.xFfast7x7_0_2160_3840_0_1_2_2_1_3843_7_49_3_U0.grp_xFfast7x7_0_2160_3840_0_1_2_2_1_3843_7_49_3_Pipeline_Col_Loop_fu_276.mux_73_8_1_1_U93", "Parent" : "15"},
	{"ID" : "23", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.xFfast7x7_0_2160_3840_0_1_2_2_1_3843_7_49_3_U0.grp_xFfast7x7_0_2160_3840_0_1_2_2_1_3843_7_49_3_Pipeline_Col_Loop_fu_276.mux_73_8_1_1_U94", "Parent" : "15"},
	{"ID" : "24", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.xFfast7x7_0_2160_3840_0_1_2_2_1_3843_7_49_3_U0.grp_xFfast7x7_0_2160_3840_0_1_2_2_1_3843_7_49_3_Pipeline_Col_Loop_fu_276.mux_73_8_1_1_U95", "Parent" : "15"},
	{"ID" : "25", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.xFfast7x7_0_2160_3840_0_1_2_2_1_3843_7_49_3_U0.grp_xFfast7x7_0_2160_3840_0_1_2_2_1_3843_7_49_3_Pipeline_Col_Loop_fu_276.flow_control_loop_pipe_sequential_init_U", "Parent" : "15"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.xFfastnms_0_2160_3840_0_1_2_2_1_3841_3_9_4_U0", "Parent" : "0", "Child" : ["27", "28", "29", "30", "32", "34", "37"],
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
		"StartSource" : "1",
		"StartFifo" : "start_for_xFfastnms_0_2160_3840_0_1_2_2_1_3841_3_9_4_U0_U",
		"Port" : [
			{"Name" : "p_dst_data1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["1"], "DependentChan" : "44", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "37", "SubInstance" : "grp_xFfastnms_0_2160_3840_0_1_2_2_1_3841_3_9_4_Pipeline_Col_Loop_fu_163", "Port" : "p_dst_data1", "Inst_start_state" : "7", "Inst_end_state" : "8"},
					{"ID" : "32", "SubInstance" : "grp_xFfastnms_0_2160_3840_0_1_2_2_1_3841_3_9_4_Pipeline_VITIS_LOOP_890_2_fu_143", "Port" : "p_dst_data1", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "imgOutput_data2", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "37", "SubInstance" : "grp_xFfastnms_0_2160_3840_0_1_2_2_1_3841_3_9_4_Pipeline_Col_Loop_fu_163", "Port" : "imgOutput_data2", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "img_height", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["1"], "DependentChan" : "45", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "img_height_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "img_width", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["1"], "DependentChan" : "46", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "img_width_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "read_lines", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "8", "FirstState" : "ap_ST_fsm_state4", "LastState" : ["ap_ST_fsm_state5"], "QuitState" : ["ap_ST_fsm_state4"], "PreState" : ["ap_ST_fsm_state3"], "PostState" : ["ap_ST_fsm_state6"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "Row_Loop", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "8", "FirstState" : "ap_ST_fsm_state7", "LastState" : ["ap_ST_fsm_state8"], "QuitState" : ["ap_ST_fsm_state7"], "PreState" : ["ap_ST_fsm_state6"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.xFfastnms_0_2160_3840_0_1_2_2_1_3841_3_9_4_U0.buf_V_U", "Parent" : "26"},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.xFfastnms_0_2160_3840_0_1_2_2_1_3841_3_9_4_U0.buf_V_1_U", "Parent" : "26"},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.xFfastnms_0_2160_3840_0_1_2_2_1_3841_3_9_4_U0.buf_V_2_U", "Parent" : "26"},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.xFfastnms_0_2160_3840_0_1_2_2_1_3841_3_9_4_U0.grp_xFfastnms_0_2160_3840_0_1_2_2_1_3841_3_9_4_Pipeline_VITIS_LOOP_876_1_fu_136", "Parent" : "26", "Child" : ["31"],
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
	{"ID" : "31", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.xFfastnms_0_2160_3840_0_1_2_2_1_3841_3_9_4_U0.grp_xFfastnms_0_2160_3840_0_1_2_2_1_3841_3_9_4_Pipeline_VITIS_LOOP_876_1_fu_136.flow_control_loop_pipe_sequential_init_U", "Parent" : "30"},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.xFfastnms_0_2160_3840_0_1_2_2_1_3841_3_9_4_U0.grp_xFfastnms_0_2160_3840_0_1_2_2_1_3841_3_9_4_Pipeline_VITIS_LOOP_890_2_fu_143", "Parent" : "26", "Child" : ["33"],
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
	{"ID" : "33", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.xFfastnms_0_2160_3840_0_1_2_2_1_3841_3_9_4_U0.grp_xFfastnms_0_2160_3840_0_1_2_2_1_3841_3_9_4_Pipeline_VITIS_LOOP_890_2_fu_143.flow_control_loop_pipe_sequential_init_U", "Parent" : "32"},
	{"ID" : "34", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.xFfastnms_0_2160_3840_0_1_2_2_1_3841_3_9_4_U0.grp_xFfastnms_0_2160_3840_0_1_2_2_1_3841_3_9_4_Pipeline_VITIS_LOOP_901_3_fu_154", "Parent" : "26", "Child" : ["35", "36"],
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
	{"ID" : "35", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.xFfastnms_0_2160_3840_0_1_2_2_1_3841_3_9_4_U0.grp_xFfastnms_0_2160_3840_0_1_2_2_1_3841_3_9_4_Pipeline_VITIS_LOOP_901_3_fu_154.mux_32_8_1_1_U156", "Parent" : "34"},
	{"ID" : "36", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.xFfastnms_0_2160_3840_0_1_2_2_1_3841_3_9_4_U0.grp_xFfastnms_0_2160_3840_0_1_2_2_1_3841_3_9_4_Pipeline_VITIS_LOOP_901_3_fu_154.flow_control_loop_pipe_sequential_init_U", "Parent" : "34"},
	{"ID" : "37", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.xFfastnms_0_2160_3840_0_1_2_2_1_3841_3_9_4_U0.grp_xFfastnms_0_2160_3840_0_1_2_2_1_3841_3_9_4_Pipeline_Col_Loop_fu_163", "Parent" : "26", "Child" : ["38", "39", "40", "41", "42", "43"],
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
	{"ID" : "38", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.xFfastnms_0_2160_3840_0_1_2_2_1_3841_3_9_4_U0.grp_xFfastnms_0_2160_3840_0_1_2_2_1_3841_3_9_4_Pipeline_Col_Loop_fu_163.mux_32_13_1_1_U163", "Parent" : "37"},
	{"ID" : "39", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.xFfastnms_0_2160_3840_0_1_2_2_1_3841_3_9_4_U0.grp_xFfastnms_0_2160_3840_0_1_2_2_1_3841_3_9_4_Pipeline_Col_Loop_fu_163.mux_32_8_1_1_U164", "Parent" : "37"},
	{"ID" : "40", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.xFfastnms_0_2160_3840_0_1_2_2_1_3841_3_9_4_U0.grp_xFfastnms_0_2160_3840_0_1_2_2_1_3841_3_9_4_Pipeline_Col_Loop_fu_163.mux_32_8_1_1_U165", "Parent" : "37"},
	{"ID" : "41", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.xFfastnms_0_2160_3840_0_1_2_2_1_3841_3_9_4_U0.grp_xFfastnms_0_2160_3840_0_1_2_2_1_3841_3_9_4_Pipeline_Col_Loop_fu_163.mux_32_8_1_1_U166", "Parent" : "37"},
	{"ID" : "42", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.xFfastnms_0_2160_3840_0_1_2_2_1_3841_3_9_4_U0.grp_xFfastnms_0_2160_3840_0_1_2_2_1_3841_3_9_4_Pipeline_Col_Loop_fu_163.mux_32_8_1_1_U167", "Parent" : "37"},
	{"ID" : "43", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.xFfastnms_0_2160_3840_0_1_2_2_1_3841_3_9_4_U0.grp_xFfastnms_0_2160_3840_0_1_2_2_1_3841_3_9_4_Pipeline_Col_Loop_fu_163.flow_control_loop_pipe_sequential_init_U", "Parent" : "37"},
	{"ID" : "44", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_dst_data_U", "Parent" : "0"},
	{"ID" : "45", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_image_height_c_U", "Parent" : "0"},
	{"ID" : "46", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_image_width_c_U", "Parent" : "0"},
	{"ID" : "47", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_xFfastnms_0_2160_3840_0_1_2_2_1_3841_3_9_4_U0_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
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
	{"Name" : "Latency", "Min" : "16644494", "Max" : "16644494"}
	, {"Name" : "Interval", "Min" : "8359749", "Max" : "8359749"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	imgInput_data1 { ap_fifo {  { imgInput_data1_dout fifo_port_we 0 8 }  { imgInput_data1_empty_n fifo_status 0 1 }  { imgInput_data1_read fifo_data 1 1 } } }
	imgOutput_data2 { ap_fifo {  { imgOutput_data2_din fifo_port_we 1 8 }  { imgOutput_data2_full_n fifo_status 0 1 }  { imgOutput_data2_write fifo_data 1 1 } } }
	p_image_height { ap_none {  { p_image_height in_data 0 16 }  { p_image_height_ap_vld in_vld 0 1 } } }
	p_image_width { ap_none {  { p_image_width in_data 0 16 }  { p_image_width_ap_vld in_vld 0 1 } } }
	p_threshold { ap_none {  { p_threshold in_data 0 8 }  { p_threshold_ap_vld in_vld 0 1 } } }
}
