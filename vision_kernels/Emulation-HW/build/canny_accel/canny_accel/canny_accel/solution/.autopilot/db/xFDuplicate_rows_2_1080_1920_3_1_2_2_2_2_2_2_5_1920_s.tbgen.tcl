set moduleName xFDuplicate_rows_2_1080_1920_3_1_2_2_2_2_2_2_5_1920_s
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
set C_modelName {xFDuplicate_rows<2, 1080, 1920, 3, 1, 2, 2, 2, 2, 2, 2, 5, 1920>}
set C_modelType { void 0 }
set C_modelArgList {
	{ gradx_mat_data2 int 16 regular {fifo 0 volatile }  }
	{ grady_mat_data5 int 16 regular {fifo 0 volatile }  }
	{ gradx1_mat_data3 int 16 regular {fifo 1 volatile }  }
	{ gradx2_mat_data4 int 16 regular {fifo 1 volatile }  }
	{ grady1_mat_data6 int 16 regular {fifo 1 volatile }  }
	{ grady2_mat_data7 int 16 regular {fifo 1 volatile }  }
	{ img_height int 16 regular {fifo 0}  }
	{ img_width int 16 regular {fifo 0}  }
	{ img_height_c20 int 16 regular {fifo 1}  }
	{ img_width_c24 int 16 regular {fifo 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "gradx_mat_data2", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "grady_mat_data5", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "gradx1_mat_data3", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "gradx2_mat_data4", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "grady1_mat_data6", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "grady2_mat_data7", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "img_height", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "img_width", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "img_height_c20", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "img_width_c24", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 63
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
	{ gradx_mat_data2_dout sc_in sc_lv 16 signal 0 } 
	{ gradx_mat_data2_num_data_valid sc_in sc_lv 2 signal 0 } 
	{ gradx_mat_data2_fifo_cap sc_in sc_lv 2 signal 0 } 
	{ gradx_mat_data2_empty_n sc_in sc_logic 1 signal 0 } 
	{ gradx_mat_data2_read sc_out sc_logic 1 signal 0 } 
	{ grady_mat_data5_dout sc_in sc_lv 16 signal 1 } 
	{ grady_mat_data5_num_data_valid sc_in sc_lv 2 signal 1 } 
	{ grady_mat_data5_fifo_cap sc_in sc_lv 2 signal 1 } 
	{ grady_mat_data5_empty_n sc_in sc_logic 1 signal 1 } 
	{ grady_mat_data5_read sc_out sc_logic 1 signal 1 } 
	{ gradx1_mat_data3_din sc_out sc_lv 16 signal 2 } 
	{ gradx1_mat_data3_num_data_valid sc_in sc_lv 2 signal 2 } 
	{ gradx1_mat_data3_fifo_cap sc_in sc_lv 2 signal 2 } 
	{ gradx1_mat_data3_full_n sc_in sc_logic 1 signal 2 } 
	{ gradx1_mat_data3_write sc_out sc_logic 1 signal 2 } 
	{ gradx2_mat_data4_din sc_out sc_lv 16 signal 3 } 
	{ gradx2_mat_data4_num_data_valid sc_in sc_lv 2 signal 3 } 
	{ gradx2_mat_data4_fifo_cap sc_in sc_lv 2 signal 3 } 
	{ gradx2_mat_data4_full_n sc_in sc_logic 1 signal 3 } 
	{ gradx2_mat_data4_write sc_out sc_logic 1 signal 3 } 
	{ grady1_mat_data6_din sc_out sc_lv 16 signal 4 } 
	{ grady1_mat_data6_num_data_valid sc_in sc_lv 2 signal 4 } 
	{ grady1_mat_data6_fifo_cap sc_in sc_lv 2 signal 4 } 
	{ grady1_mat_data6_full_n sc_in sc_logic 1 signal 4 } 
	{ grady1_mat_data6_write sc_out sc_logic 1 signal 4 } 
	{ grady2_mat_data7_din sc_out sc_lv 16 signal 5 } 
	{ grady2_mat_data7_num_data_valid sc_in sc_lv 2 signal 5 } 
	{ grady2_mat_data7_fifo_cap sc_in sc_lv 2 signal 5 } 
	{ grady2_mat_data7_full_n sc_in sc_logic 1 signal 5 } 
	{ grady2_mat_data7_write sc_out sc_logic 1 signal 5 } 
	{ img_height_dout sc_in sc_lv 16 signal 6 } 
	{ img_height_num_data_valid sc_in sc_lv 2 signal 6 } 
	{ img_height_fifo_cap sc_in sc_lv 2 signal 6 } 
	{ img_height_empty_n sc_in sc_logic 1 signal 6 } 
	{ img_height_read sc_out sc_logic 1 signal 6 } 
	{ img_width_dout sc_in sc_lv 16 signal 7 } 
	{ img_width_num_data_valid sc_in sc_lv 2 signal 7 } 
	{ img_width_fifo_cap sc_in sc_lv 2 signal 7 } 
	{ img_width_empty_n sc_in sc_logic 1 signal 7 } 
	{ img_width_read sc_out sc_logic 1 signal 7 } 
	{ img_height_c20_din sc_out sc_lv 16 signal 8 } 
	{ img_height_c20_num_data_valid sc_in sc_lv 2 signal 8 } 
	{ img_height_c20_fifo_cap sc_in sc_lv 2 signal 8 } 
	{ img_height_c20_full_n sc_in sc_logic 1 signal 8 } 
	{ img_height_c20_write sc_out sc_logic 1 signal 8 } 
	{ img_width_c24_din sc_out sc_lv 16 signal 9 } 
	{ img_width_c24_num_data_valid sc_in sc_lv 2 signal 9 } 
	{ img_width_c24_fifo_cap sc_in sc_lv 2 signal 9 } 
	{ img_width_c24_full_n sc_in sc_logic 1 signal 9 } 
	{ img_width_c24_write sc_out sc_logic 1 signal 9 } 
	{ ap_ext_blocking_n sc_out sc_logic 1 signal -1 } 
	{ ap_str_blocking_n sc_out sc_logic 1 signal -1 } 
	{ ap_int_blocking_n sc_out sc_logic 1 signal -1 } 
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
 	{ "name": "gradx_mat_data2_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "gradx_mat_data2", "role": "dout" }} , 
 	{ "name": "gradx_mat_data2_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gradx_mat_data2", "role": "num_data_valid" }} , 
 	{ "name": "gradx_mat_data2_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gradx_mat_data2", "role": "fifo_cap" }} , 
 	{ "name": "gradx_mat_data2_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gradx_mat_data2", "role": "empty_n" }} , 
 	{ "name": "gradx_mat_data2_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gradx_mat_data2", "role": "read" }} , 
 	{ "name": "grady_mat_data5_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "grady_mat_data5", "role": "dout" }} , 
 	{ "name": "grady_mat_data5_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grady_mat_data5", "role": "num_data_valid" }} , 
 	{ "name": "grady_mat_data5_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grady_mat_data5", "role": "fifo_cap" }} , 
 	{ "name": "grady_mat_data5_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grady_mat_data5", "role": "empty_n" }} , 
 	{ "name": "grady_mat_data5_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grady_mat_data5", "role": "read" }} , 
 	{ "name": "gradx1_mat_data3_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "gradx1_mat_data3", "role": "din" }} , 
 	{ "name": "gradx1_mat_data3_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gradx1_mat_data3", "role": "num_data_valid" }} , 
 	{ "name": "gradx1_mat_data3_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gradx1_mat_data3", "role": "fifo_cap" }} , 
 	{ "name": "gradx1_mat_data3_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gradx1_mat_data3", "role": "full_n" }} , 
 	{ "name": "gradx1_mat_data3_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gradx1_mat_data3", "role": "write" }} , 
 	{ "name": "gradx2_mat_data4_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "gradx2_mat_data4", "role": "din" }} , 
 	{ "name": "gradx2_mat_data4_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gradx2_mat_data4", "role": "num_data_valid" }} , 
 	{ "name": "gradx2_mat_data4_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gradx2_mat_data4", "role": "fifo_cap" }} , 
 	{ "name": "gradx2_mat_data4_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gradx2_mat_data4", "role": "full_n" }} , 
 	{ "name": "gradx2_mat_data4_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gradx2_mat_data4", "role": "write" }} , 
 	{ "name": "grady1_mat_data6_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "grady1_mat_data6", "role": "din" }} , 
 	{ "name": "grady1_mat_data6_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grady1_mat_data6", "role": "num_data_valid" }} , 
 	{ "name": "grady1_mat_data6_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grady1_mat_data6", "role": "fifo_cap" }} , 
 	{ "name": "grady1_mat_data6_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grady1_mat_data6", "role": "full_n" }} , 
 	{ "name": "grady1_mat_data6_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grady1_mat_data6", "role": "write" }} , 
 	{ "name": "grady2_mat_data7_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "grady2_mat_data7", "role": "din" }} , 
 	{ "name": "grady2_mat_data7_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grady2_mat_data7", "role": "num_data_valid" }} , 
 	{ "name": "grady2_mat_data7_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grady2_mat_data7", "role": "fifo_cap" }} , 
 	{ "name": "grady2_mat_data7_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grady2_mat_data7", "role": "full_n" }} , 
 	{ "name": "grady2_mat_data7_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grady2_mat_data7", "role": "write" }} , 
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
 	{ "name": "img_height_c20_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "img_height_c20", "role": "din" }} , 
 	{ "name": "img_height_c20_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "img_height_c20", "role": "num_data_valid" }} , 
 	{ "name": "img_height_c20_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "img_height_c20", "role": "fifo_cap" }} , 
 	{ "name": "img_height_c20_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_height_c20", "role": "full_n" }} , 
 	{ "name": "img_height_c20_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_height_c20", "role": "write" }} , 
 	{ "name": "img_width_c24_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "img_width_c24", "role": "din" }} , 
 	{ "name": "img_width_c24_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "img_width_c24", "role": "num_data_valid" }} , 
 	{ "name": "img_width_c24_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "img_width_c24", "role": "fifo_cap" }} , 
 	{ "name": "img_width_c24_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_width_c24", "role": "full_n" }} , 
 	{ "name": "img_width_c24_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_width_c24", "role": "write" }} , 
 	{ "name": "ap_ext_blocking_n", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_ext_blocking_n", "role": "default" }} , 
 	{ "name": "ap_str_blocking_n", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_str_blocking_n", "role": "default" }} , 
 	{ "name": "ap_int_blocking_n", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_int_blocking_n", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
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
		"Port" : [
			{"Name" : "gradx_mat_data2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_xFDuplicate_rows_Pipeline_Col_Loop_fu_94", "Port" : "gradx_mat_data2", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "grady_mat_data5", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_xFDuplicate_rows_Pipeline_Col_Loop_fu_94", "Port" : "grady_mat_data5", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "gradx1_mat_data3", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_xFDuplicate_rows_Pipeline_Col_Loop_fu_94", "Port" : "gradx1_mat_data3", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "gradx2_mat_data4", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_xFDuplicate_rows_Pipeline_Col_Loop_fu_94", "Port" : "gradx2_mat_data4", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "grady1_mat_data6", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_xFDuplicate_rows_Pipeline_Col_Loop_fu_94", "Port" : "grady1_mat_data6", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "grady2_mat_data7", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_xFDuplicate_rows_Pipeline_Col_Loop_fu_94", "Port" : "grady2_mat_data7", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "img_height", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "img_height_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "img_width", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "img_width_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "img_height_c20", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "img_height_c20_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "img_width_c24", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "img_width_c24_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "Row_Loop", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "3", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state3"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_xFDuplicate_rows_Pipeline_Col_Loop_fu_94", "Parent" : "0", "Child" : ["2"],
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
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_xFDuplicate_rows_Pipeline_Col_Loop_fu_94.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
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
		grady2_mat_data7 {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "2077921", "Max" : "2077921"}
	, {"Name" : "Interval", "Min" : "2077921", "Max" : "2077921"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	gradx_mat_data2 { ap_fifo {  { gradx_mat_data2_dout fifo_port_we 0 16 }  { gradx_mat_data2_num_data_valid fifo_status_num_data_valid 0 2 }  { gradx_mat_data2_fifo_cap fifo_update 0 2 }  { gradx_mat_data2_empty_n fifo_status 0 1 }  { gradx_mat_data2_read fifo_data 1 1 } } }
	grady_mat_data5 { ap_fifo {  { grady_mat_data5_dout fifo_port_we 0 16 }  { grady_mat_data5_num_data_valid fifo_status_num_data_valid 0 2 }  { grady_mat_data5_fifo_cap fifo_update 0 2 }  { grady_mat_data5_empty_n fifo_status 0 1 }  { grady_mat_data5_read fifo_data 1 1 } } }
	gradx1_mat_data3 { ap_fifo {  { gradx1_mat_data3_din fifo_port_we 1 16 }  { gradx1_mat_data3_num_data_valid fifo_status_num_data_valid 0 2 }  { gradx1_mat_data3_fifo_cap fifo_update 0 2 }  { gradx1_mat_data3_full_n fifo_status 0 1 }  { gradx1_mat_data3_write fifo_data 1 1 } } }
	gradx2_mat_data4 { ap_fifo {  { gradx2_mat_data4_din fifo_port_we 1 16 }  { gradx2_mat_data4_num_data_valid fifo_status_num_data_valid 0 2 }  { gradx2_mat_data4_fifo_cap fifo_update 0 2 }  { gradx2_mat_data4_full_n fifo_status 0 1 }  { gradx2_mat_data4_write fifo_data 1 1 } } }
	grady1_mat_data6 { ap_fifo {  { grady1_mat_data6_din fifo_port_we 1 16 }  { grady1_mat_data6_num_data_valid fifo_status_num_data_valid 0 2 }  { grady1_mat_data6_fifo_cap fifo_update 0 2 }  { grady1_mat_data6_full_n fifo_status 0 1 }  { grady1_mat_data6_write fifo_data 1 1 } } }
	grady2_mat_data7 { ap_fifo {  { grady2_mat_data7_din fifo_port_we 1 16 }  { grady2_mat_data7_num_data_valid fifo_status_num_data_valid 0 2 }  { grady2_mat_data7_fifo_cap fifo_update 0 2 }  { grady2_mat_data7_full_n fifo_status 0 1 }  { grady2_mat_data7_write fifo_data 1 1 } } }
	img_height { ap_fifo {  { img_height_dout fifo_port_we 0 16 }  { img_height_num_data_valid fifo_status_num_data_valid 0 2 }  { img_height_fifo_cap fifo_update 0 2 }  { img_height_empty_n fifo_status 0 1 }  { img_height_read fifo_data 1 1 } } }
	img_width { ap_fifo {  { img_width_dout fifo_port_we 0 16 }  { img_width_num_data_valid fifo_status_num_data_valid 0 2 }  { img_width_fifo_cap fifo_update 0 2 }  { img_width_empty_n fifo_status 0 1 }  { img_width_read fifo_data 1 1 } } }
	img_height_c20 { ap_fifo {  { img_height_c20_din fifo_port_we 1 16 }  { img_height_c20_num_data_valid fifo_status_num_data_valid 0 2 }  { img_height_c20_fifo_cap fifo_update 0 2 }  { img_height_c20_full_n fifo_status 0 1 }  { img_height_c20_write fifo_data 1 1 } } }
	img_width_c24 { ap_fifo {  { img_width_c24_din fifo_port_we 1 16 }  { img_width_c24_num_data_valid fifo_status_num_data_valid 0 2 }  { img_width_c24_fifo_cap fifo_update 0 2 }  { img_width_c24_full_n fifo_status 0 1 }  { img_width_c24_write fifo_data 1 1 } } }
}
