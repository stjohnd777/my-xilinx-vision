set moduleName xfGaussianFilter3x3_0_2160_3840_1_0_1_2_2_1_3840_Pipeline_Col_Loop
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
set C_modelName {xfGaussianFilter3x3<0, 2160, 3840, 1, 0, 1, 2, 2, 1, 3840>_Pipeline_Col_Loop}
set C_modelType { void 0 }
set C_modelArgList {
	{ img_width int 16 regular  }
	{ tp_V int 2 regular  }
	{ mid_V int 2 regular  }
	{ bottom_V int 2 regular  }
	{ p_read int 8 regular  }
	{ p_read1 int 8 regular  }
	{ in_mat_data1 int 8 regular {fifo 0 volatile }  }
	{ buf_V_2 int 8 regular {array 3840 { 1 0 } 1 1 }  }
	{ buf_V_1 int 8 regular {array 3840 { 1 0 } 1 1 }  }
	{ buf_V int 8 regular {array 3840 { 1 0 } 1 1 }  }
	{ cmp_i_i201_i int 1 regular  }
	{ out_mat_data2 int 8 regular {fifo 1 volatile }  }
	{ p_Val2_7_out int 8 regular {pointer 1}  }
	{ p_Val2_6_out int 8 regular {pointer 1}  }
	{ p_Val2_4_out int 8 regular {pointer 1}  }
	{ p_Val2_3_out int 8 regular {pointer 1}  }
	{ p_Val2_1_out int 8 regular {pointer 1}  }
	{ p_Val2_out int 8 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "img_width", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "tp_V", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "mid_V", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "bottom_V", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "p_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_read1", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "in_mat_data1", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "buf_V_2", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "buf_V_1", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "buf_V", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "cmp_i_i201_i", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "out_mat_data2", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_Val2_7_out", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_Val2_6_out", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_Val2_4_out", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_Val2_3_out", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_Val2_1_out", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_Val2_out", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 72
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ in_mat_data1_dout sc_in sc_lv 8 signal 6 } 
	{ in_mat_data1_num_data_valid sc_in sc_lv 2 signal 6 } 
	{ in_mat_data1_fifo_cap sc_in sc_lv 2 signal 6 } 
	{ in_mat_data1_empty_n sc_in sc_logic 1 signal 6 } 
	{ in_mat_data1_read sc_out sc_logic 1 signal 6 } 
	{ out_mat_data2_din sc_out sc_lv 8 signal 11 } 
	{ out_mat_data2_num_data_valid sc_in sc_lv 2 signal 11 } 
	{ out_mat_data2_fifo_cap sc_in sc_lv 2 signal 11 } 
	{ out_mat_data2_full_n sc_in sc_logic 1 signal 11 } 
	{ out_mat_data2_write sc_out sc_logic 1 signal 11 } 
	{ img_width sc_in sc_lv 16 signal 0 } 
	{ tp_V sc_in sc_lv 2 signal 1 } 
	{ mid_V sc_in sc_lv 2 signal 2 } 
	{ bottom_V sc_in sc_lv 2 signal 3 } 
	{ p_read sc_in sc_lv 8 signal 4 } 
	{ p_read1 sc_in sc_lv 8 signal 5 } 
	{ buf_V_2_address0 sc_out sc_lv 12 signal 7 } 
	{ buf_V_2_ce0 sc_out sc_logic 1 signal 7 } 
	{ buf_V_2_q0 sc_in sc_lv 8 signal 7 } 
	{ buf_V_2_address1 sc_out sc_lv 12 signal 7 } 
	{ buf_V_2_ce1 sc_out sc_logic 1 signal 7 } 
	{ buf_V_2_we1 sc_out sc_logic 1 signal 7 } 
	{ buf_V_2_d1 sc_out sc_lv 8 signal 7 } 
	{ buf_V_1_address0 sc_out sc_lv 12 signal 8 } 
	{ buf_V_1_ce0 sc_out sc_logic 1 signal 8 } 
	{ buf_V_1_q0 sc_in sc_lv 8 signal 8 } 
	{ buf_V_1_address1 sc_out sc_lv 12 signal 8 } 
	{ buf_V_1_ce1 sc_out sc_logic 1 signal 8 } 
	{ buf_V_1_we1 sc_out sc_logic 1 signal 8 } 
	{ buf_V_1_d1 sc_out sc_lv 8 signal 8 } 
	{ buf_V_address0 sc_out sc_lv 12 signal 9 } 
	{ buf_V_ce0 sc_out sc_logic 1 signal 9 } 
	{ buf_V_q0 sc_in sc_lv 8 signal 9 } 
	{ buf_V_address1 sc_out sc_lv 12 signal 9 } 
	{ buf_V_ce1 sc_out sc_logic 1 signal 9 } 
	{ buf_V_we1 sc_out sc_logic 1 signal 9 } 
	{ buf_V_d1 sc_out sc_lv 8 signal 9 } 
	{ cmp_i_i201_i sc_in sc_lv 1 signal 10 } 
	{ p_Val2_7_out sc_out sc_lv 8 signal 12 } 
	{ p_Val2_7_out_ap_vld sc_out sc_logic 1 outvld 12 } 
	{ p_Val2_6_out sc_out sc_lv 8 signal 13 } 
	{ p_Val2_6_out_ap_vld sc_out sc_logic 1 outvld 13 } 
	{ p_Val2_4_out sc_out sc_lv 8 signal 14 } 
	{ p_Val2_4_out_ap_vld sc_out sc_logic 1 outvld 14 } 
	{ p_Val2_3_out sc_out sc_lv 8 signal 15 } 
	{ p_Val2_3_out_ap_vld sc_out sc_logic 1 outvld 15 } 
	{ p_Val2_1_out sc_out sc_lv 8 signal 16 } 
	{ p_Val2_1_out_ap_vld sc_out sc_logic 1 outvld 16 } 
	{ p_Val2_out sc_out sc_lv 8 signal 17 } 
	{ p_Val2_out_ap_vld sc_out sc_logic 1 outvld 17 } 
	{ ap_ext_blocking_n sc_out sc_logic 1 signal -1 } 
	{ ap_str_blocking_n sc_out sc_logic 1 signal -1 } 
	{ ap_int_blocking_n sc_out sc_logic 1 signal -1 } 
	{ grp_xFapplygaussian3x3_0_s_fu_192_p_din1 sc_out sc_lv 8 signal -1 } 
	{ grp_xFapplygaussian3x3_0_s_fu_192_p_din2 sc_out sc_lv 8 signal -1 } 
	{ grp_xFapplygaussian3x3_0_s_fu_192_p_din3 sc_out sc_lv 8 signal -1 } 
	{ grp_xFapplygaussian3x3_0_s_fu_192_p_din4 sc_out sc_lv 8 signal -1 } 
	{ grp_xFapplygaussian3x3_0_s_fu_192_p_din5 sc_out sc_lv 8 signal -1 } 
	{ grp_xFapplygaussian3x3_0_s_fu_192_p_din6 sc_out sc_lv 8 signal -1 } 
	{ grp_xFapplygaussian3x3_0_s_fu_192_p_din7 sc_out sc_lv 8 signal -1 } 
	{ grp_xFapplygaussian3x3_0_s_fu_192_p_din8 sc_out sc_lv 8 signal -1 } 
	{ grp_xFapplygaussian3x3_0_s_fu_192_p_din9 sc_out sc_lv 8 signal -1 } 
	{ grp_xFapplygaussian3x3_0_s_fu_192_p_din10 sc_out sc_lv 8 signal -1 } 
	{ grp_xFapplygaussian3x3_0_s_fu_192_p_din11 sc_out sc_lv 8 signal -1 } 
	{ grp_xFapplygaussian3x3_0_s_fu_192_p_dout0 sc_in sc_lv 8 signal -1 } 
	{ grp_xFapplygaussian3x3_0_s_fu_192_p_ce sc_out sc_logic 1 signal -1 } 
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
 	{ "name": "img_width", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "img_width", "role": "default" }} , 
 	{ "name": "tp_V", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "tp_V", "role": "default" }} , 
 	{ "name": "mid_V", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "mid_V", "role": "default" }} , 
 	{ "name": "bottom_V", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bottom_V", "role": "default" }} , 
 	{ "name": "p_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_read", "role": "default" }} , 
 	{ "name": "p_read1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_read1", "role": "default" }} , 
 	{ "name": "buf_V_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "buf_V_2", "role": "address0" }} , 
 	{ "name": "buf_V_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_V_2", "role": "ce0" }} , 
 	{ "name": "buf_V_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buf_V_2", "role": "q0" }} , 
 	{ "name": "buf_V_2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "buf_V_2", "role": "address1" }} , 
 	{ "name": "buf_V_2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_V_2", "role": "ce1" }} , 
 	{ "name": "buf_V_2_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_V_2", "role": "we1" }} , 
 	{ "name": "buf_V_2_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buf_V_2", "role": "d1" }} , 
 	{ "name": "buf_V_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "buf_V_1", "role": "address0" }} , 
 	{ "name": "buf_V_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_V_1", "role": "ce0" }} , 
 	{ "name": "buf_V_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buf_V_1", "role": "q0" }} , 
 	{ "name": "buf_V_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "buf_V_1", "role": "address1" }} , 
 	{ "name": "buf_V_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_V_1", "role": "ce1" }} , 
 	{ "name": "buf_V_1_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_V_1", "role": "we1" }} , 
 	{ "name": "buf_V_1_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buf_V_1", "role": "d1" }} , 
 	{ "name": "buf_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "buf_V", "role": "address0" }} , 
 	{ "name": "buf_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_V", "role": "ce0" }} , 
 	{ "name": "buf_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buf_V", "role": "q0" }} , 
 	{ "name": "buf_V_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "buf_V", "role": "address1" }} , 
 	{ "name": "buf_V_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_V", "role": "ce1" }} , 
 	{ "name": "buf_V_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_V", "role": "we1" }} , 
 	{ "name": "buf_V_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buf_V", "role": "d1" }} , 
 	{ "name": "cmp_i_i201_i", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "cmp_i_i201_i", "role": "default" }} , 
 	{ "name": "p_Val2_7_out", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_Val2_7_out", "role": "default" }} , 
 	{ "name": "p_Val2_7_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_Val2_7_out", "role": "ap_vld" }} , 
 	{ "name": "p_Val2_6_out", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_Val2_6_out", "role": "default" }} , 
 	{ "name": "p_Val2_6_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_Val2_6_out", "role": "ap_vld" }} , 
 	{ "name": "p_Val2_4_out", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_Val2_4_out", "role": "default" }} , 
 	{ "name": "p_Val2_4_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_Val2_4_out", "role": "ap_vld" }} , 
 	{ "name": "p_Val2_3_out", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_Val2_3_out", "role": "default" }} , 
 	{ "name": "p_Val2_3_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_Val2_3_out", "role": "ap_vld" }} , 
 	{ "name": "p_Val2_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_Val2_1_out", "role": "default" }} , 
 	{ "name": "p_Val2_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_Val2_1_out", "role": "ap_vld" }} , 
 	{ "name": "p_Val2_out", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_Val2_out", "role": "default" }} , 
 	{ "name": "p_Val2_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_Val2_out", "role": "ap_vld" }} , 
 	{ "name": "ap_ext_blocking_n", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_ext_blocking_n", "role": "default" }} , 
 	{ "name": "ap_str_blocking_n", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_str_blocking_n", "role": "default" }} , 
 	{ "name": "ap_int_blocking_n", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_int_blocking_n", "role": "default" }} , 
 	{ "name": "grp_xFapplygaussian3x3_0_s_fu_192_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "grp_xFapplygaussian3x3_0_s_fu_192_p_din1", "role": "default" }} , 
 	{ "name": "grp_xFapplygaussian3x3_0_s_fu_192_p_din2", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "grp_xFapplygaussian3x3_0_s_fu_192_p_din2", "role": "default" }} , 
 	{ "name": "grp_xFapplygaussian3x3_0_s_fu_192_p_din3", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "grp_xFapplygaussian3x3_0_s_fu_192_p_din3", "role": "default" }} , 
 	{ "name": "grp_xFapplygaussian3x3_0_s_fu_192_p_din4", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "grp_xFapplygaussian3x3_0_s_fu_192_p_din4", "role": "default" }} , 
 	{ "name": "grp_xFapplygaussian3x3_0_s_fu_192_p_din5", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "grp_xFapplygaussian3x3_0_s_fu_192_p_din5", "role": "default" }} , 
 	{ "name": "grp_xFapplygaussian3x3_0_s_fu_192_p_din6", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "grp_xFapplygaussian3x3_0_s_fu_192_p_din6", "role": "default" }} , 
 	{ "name": "grp_xFapplygaussian3x3_0_s_fu_192_p_din7", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "grp_xFapplygaussian3x3_0_s_fu_192_p_din7", "role": "default" }} , 
 	{ "name": "grp_xFapplygaussian3x3_0_s_fu_192_p_din8", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "grp_xFapplygaussian3x3_0_s_fu_192_p_din8", "role": "default" }} , 
 	{ "name": "grp_xFapplygaussian3x3_0_s_fu_192_p_din9", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "grp_xFapplygaussian3x3_0_s_fu_192_p_din9", "role": "default" }} , 
 	{ "name": "grp_xFapplygaussian3x3_0_s_fu_192_p_din10", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "grp_xFapplygaussian3x3_0_s_fu_192_p_din10", "role": "default" }} , 
 	{ "name": "grp_xFapplygaussian3x3_0_s_fu_192_p_din11", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "grp_xFapplygaussian3x3_0_s_fu_192_p_din11", "role": "default" }} , 
 	{ "name": "grp_xFapplygaussian3x3_0_s_fu_192_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "grp_xFapplygaussian3x3_0_s_fu_192_p_dout0", "role": "default" }} , 
 	{ "name": "grp_xFapplygaussian3x3_0_s_fu_192_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_xFapplygaussian3x3_0_s_fu_192_p_ce", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4"],
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_8_1_1_U111", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_8_1_1_U112", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_8_1_1_U113", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
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
		p_Val2_out {Type O LastRead -1 FirstWrite 11}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3853", "Max" : "3853"}
	, {"Name" : "Interval", "Min" : "3853", "Max" : "3853"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	img_width { ap_none {  { img_width in_data 0 16 } } }
	tp_V { ap_none {  { tp_V in_data 0 2 } } }
	mid_V { ap_none {  { mid_V in_data 0 2 } } }
	bottom_V { ap_none {  { bottom_V in_data 0 2 } } }
	p_read { ap_none {  { p_read in_data 0 8 } } }
	p_read1 { ap_none {  { p_read1 in_data 0 8 } } }
	in_mat_data1 { ap_fifo {  { in_mat_data1_dout fifo_port_we 0 8 }  { in_mat_data1_num_data_valid fifo_status_num_data_valid 0 2 }  { in_mat_data1_fifo_cap fifo_update 0 2 }  { in_mat_data1_empty_n fifo_status 0 1 }  { in_mat_data1_read fifo_data 1 1 } } }
	buf_V_2 { ap_memory {  { buf_V_2_address0 mem_address 1 12 }  { buf_V_2_ce0 mem_ce 1 1 }  { buf_V_2_q0 in_data 0 8 }  { buf_V_2_address1 MemPortADDR2 1 12 }  { buf_V_2_ce1 MemPortCE2 1 1 }  { buf_V_2_we1 MemPortWE2 1 1 }  { buf_V_2_d1 MemPortDIN2 1 8 } } }
	buf_V_1 { ap_memory {  { buf_V_1_address0 mem_address 1 12 }  { buf_V_1_ce0 mem_ce 1 1 }  { buf_V_1_q0 in_data 0 8 }  { buf_V_1_address1 MemPortADDR2 1 12 }  { buf_V_1_ce1 MemPortCE2 1 1 }  { buf_V_1_we1 MemPortWE2 1 1 }  { buf_V_1_d1 MemPortDIN2 1 8 } } }
	buf_V { ap_memory {  { buf_V_address0 mem_address 1 12 }  { buf_V_ce0 mem_ce 1 1 }  { buf_V_q0 in_data 0 8 }  { buf_V_address1 MemPortADDR2 1 12 }  { buf_V_ce1 MemPortCE2 1 1 }  { buf_V_we1 MemPortWE2 1 1 }  { buf_V_d1 MemPortDIN2 1 8 } } }
	cmp_i_i201_i { ap_none {  { cmp_i_i201_i in_data 0 1 } } }
	out_mat_data2 { ap_fifo {  { out_mat_data2_din fifo_port_we 1 8 }  { out_mat_data2_num_data_valid fifo_status_num_data_valid 0 2 }  { out_mat_data2_fifo_cap fifo_update 0 2 }  { out_mat_data2_full_n fifo_status 0 1 }  { out_mat_data2_write fifo_data 1 1 } } }
	p_Val2_7_out { ap_vld {  { p_Val2_7_out out_data 1 8 }  { p_Val2_7_out_ap_vld out_vld 1 1 } } }
	p_Val2_6_out { ap_vld {  { p_Val2_6_out out_data 1 8 }  { p_Val2_6_out_ap_vld out_vld 1 1 } } }
	p_Val2_4_out { ap_vld {  { p_Val2_4_out out_data 1 8 }  { p_Val2_4_out_ap_vld out_vld 1 1 } } }
	p_Val2_3_out { ap_vld {  { p_Val2_3_out out_data 1 8 }  { p_Val2_3_out_ap_vld out_vld 1 1 } } }
	p_Val2_1_out { ap_vld {  { p_Val2_1_out out_data 1 8 }  { p_Val2_1_out_ap_vld out_vld 1 1 } } }
	p_Val2_out { ap_vld {  { p_Val2_out out_data 1 8 }  { p_Val2_out_ap_vld out_vld 1 1 } } }
}
