set moduleName xFSuppression3x3_Pipeline_colLoop1
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
set C_modelName {xFSuppression3x3_Pipeline_colLoop1}
set C_modelType { void 0 }
set C_modelArgList {
	{ imgwidth_load int 16 regular  }
	{ zext_ln1035 int 8 regular  }
	{ zext_ln1035_1 int 8 regular  }
	{ buf_V int 16 regular {array 1920 { 0 1 } 1 1 }  }
	{ buf_V_1 int 16 regular {array 1920 { 0 1 } 1 1 }  }
	{ buf_V_2 int 16 regular {array 1920 { 0 1 } 1 1 }  }
	{ top_V int 2 regular  }
	{ mid_V int 2 regular  }
	{ bottom_V int 2 regular  }
	{ angle_V int 8 regular {array 1920 { 0 1 } 1 1 }  }
	{ angle_V_1 int 8 regular {array 1920 { 0 1 } 1 1 }  }
	{ write_ind_V_cast int 1 regular  }
	{ phase_mat_data9 int 8 regular {fifo 0 volatile }  }
	{ read_ind_V_cast int 1 regular  }
	{ magnitude_mat_data8 int 16 regular {fifo 0 volatile }  }
	{ row_ind_V_cast int 2 regular  }
	{ cmp_i_i163_i int 1 regular  }
	{ nms_mat_data10 int 2 regular {fifo 1 volatile }  }
	{ agg_tmp31_i_i_0_out int 8 regular {pointer 1}  }
	{ agg_tmp23_i_i_0_out int 16 regular {pointer 1}  }
	{ agg_tmp20_i_i_0_out int 16 regular {pointer 1}  }
	{ agg_tmp12_i_i_0_out int 16 regular {pointer 1}  }
	{ agg_tmp9_i_i_0_out int 16 regular {pointer 1}  }
	{ agg_tmp2_i_i_0_out int 16 regular {pointer 1}  }
	{ agg_tmp131_0_out int 16 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "imgwidth_load", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln1035", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln1035_1", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "buf_V", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "buf_V_1", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "buf_V_2", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "top_V", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "mid_V", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "bottom_V", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "angle_V", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "angle_V_1", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "write_ind_V_cast", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "phase_mat_data9", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "read_ind_V_cast", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "magnitude_mat_data8", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "row_ind_V_cast", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "cmp_i_i163_i", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "nms_mat_data10", "interface" : "fifo", "bitwidth" : 2, "direction" : "WRITEONLY"} , 
 	{ "Name" : "agg_tmp31_i_i_0_out", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "agg_tmp23_i_i_0_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "agg_tmp20_i_i_0_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "agg_tmp12_i_i_0_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "agg_tmp9_i_i_0_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "agg_tmp2_i_i_0_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "agg_tmp131_0_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 80
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ magnitude_mat_data8_dout sc_in sc_lv 16 signal 14 } 
	{ magnitude_mat_data8_num_data_valid sc_in sc_lv 2 signal 14 } 
	{ magnitude_mat_data8_fifo_cap sc_in sc_lv 2 signal 14 } 
	{ magnitude_mat_data8_empty_n sc_in sc_logic 1 signal 14 } 
	{ magnitude_mat_data8_read sc_out sc_logic 1 signal 14 } 
	{ phase_mat_data9_dout sc_in sc_lv 8 signal 12 } 
	{ phase_mat_data9_num_data_valid sc_in sc_lv 14 signal 12 } 
	{ phase_mat_data9_fifo_cap sc_in sc_lv 14 signal 12 } 
	{ phase_mat_data9_empty_n sc_in sc_logic 1 signal 12 } 
	{ phase_mat_data9_read sc_out sc_logic 1 signal 12 } 
	{ nms_mat_data10_din sc_out sc_lv 2 signal 17 } 
	{ nms_mat_data10_num_data_valid sc_in sc_lv 2 signal 17 } 
	{ nms_mat_data10_fifo_cap sc_in sc_lv 2 signal 17 } 
	{ nms_mat_data10_full_n sc_in sc_logic 1 signal 17 } 
	{ nms_mat_data10_write sc_out sc_logic 1 signal 17 } 
	{ imgwidth_load sc_in sc_lv 16 signal 0 } 
	{ zext_ln1035 sc_in sc_lv 8 signal 1 } 
	{ zext_ln1035_1 sc_in sc_lv 8 signal 2 } 
	{ buf_V_address0 sc_out sc_lv 11 signal 3 } 
	{ buf_V_ce0 sc_out sc_logic 1 signal 3 } 
	{ buf_V_we0 sc_out sc_logic 1 signal 3 } 
	{ buf_V_d0 sc_out sc_lv 16 signal 3 } 
	{ buf_V_address1 sc_out sc_lv 11 signal 3 } 
	{ buf_V_ce1 sc_out sc_logic 1 signal 3 } 
	{ buf_V_q1 sc_in sc_lv 16 signal 3 } 
	{ buf_V_1_address0 sc_out sc_lv 11 signal 4 } 
	{ buf_V_1_ce0 sc_out sc_logic 1 signal 4 } 
	{ buf_V_1_we0 sc_out sc_logic 1 signal 4 } 
	{ buf_V_1_d0 sc_out sc_lv 16 signal 4 } 
	{ buf_V_1_address1 sc_out sc_lv 11 signal 4 } 
	{ buf_V_1_ce1 sc_out sc_logic 1 signal 4 } 
	{ buf_V_1_q1 sc_in sc_lv 16 signal 4 } 
	{ buf_V_2_address0 sc_out sc_lv 11 signal 5 } 
	{ buf_V_2_ce0 sc_out sc_logic 1 signal 5 } 
	{ buf_V_2_we0 sc_out sc_logic 1 signal 5 } 
	{ buf_V_2_d0 sc_out sc_lv 16 signal 5 } 
	{ buf_V_2_address1 sc_out sc_lv 11 signal 5 } 
	{ buf_V_2_ce1 sc_out sc_logic 1 signal 5 } 
	{ buf_V_2_q1 sc_in sc_lv 16 signal 5 } 
	{ top_V sc_in sc_lv 2 signal 6 } 
	{ mid_V sc_in sc_lv 2 signal 7 } 
	{ bottom_V sc_in sc_lv 2 signal 8 } 
	{ angle_V_address0 sc_out sc_lv 11 signal 9 } 
	{ angle_V_ce0 sc_out sc_logic 1 signal 9 } 
	{ angle_V_we0 sc_out sc_logic 1 signal 9 } 
	{ angle_V_d0 sc_out sc_lv 8 signal 9 } 
	{ angle_V_address1 sc_out sc_lv 11 signal 9 } 
	{ angle_V_ce1 sc_out sc_logic 1 signal 9 } 
	{ angle_V_q1 sc_in sc_lv 8 signal 9 } 
	{ angle_V_1_address0 sc_out sc_lv 11 signal 10 } 
	{ angle_V_1_ce0 sc_out sc_logic 1 signal 10 } 
	{ angle_V_1_we0 sc_out sc_logic 1 signal 10 } 
	{ angle_V_1_d0 sc_out sc_lv 8 signal 10 } 
	{ angle_V_1_address1 sc_out sc_lv 11 signal 10 } 
	{ angle_V_1_ce1 sc_out sc_logic 1 signal 10 } 
	{ angle_V_1_q1 sc_in sc_lv 8 signal 10 } 
	{ write_ind_V_cast sc_in sc_lv 1 signal 11 } 
	{ read_ind_V_cast sc_in sc_lv 1 signal 13 } 
	{ row_ind_V_cast sc_in sc_lv 2 signal 15 } 
	{ cmp_i_i163_i sc_in sc_lv 1 signal 16 } 
	{ agg_tmp31_i_i_0_out sc_out sc_lv 8 signal 18 } 
	{ agg_tmp31_i_i_0_out_ap_vld sc_out sc_logic 1 outvld 18 } 
	{ agg_tmp23_i_i_0_out sc_out sc_lv 16 signal 19 } 
	{ agg_tmp23_i_i_0_out_ap_vld sc_out sc_logic 1 outvld 19 } 
	{ agg_tmp20_i_i_0_out sc_out sc_lv 16 signal 20 } 
	{ agg_tmp20_i_i_0_out_ap_vld sc_out sc_logic 1 outvld 20 } 
	{ agg_tmp12_i_i_0_out sc_out sc_lv 16 signal 21 } 
	{ agg_tmp12_i_i_0_out_ap_vld sc_out sc_logic 1 outvld 21 } 
	{ agg_tmp9_i_i_0_out sc_out sc_lv 16 signal 22 } 
	{ agg_tmp9_i_i_0_out_ap_vld sc_out sc_logic 1 outvld 22 } 
	{ agg_tmp2_i_i_0_out sc_out sc_lv 16 signal 23 } 
	{ agg_tmp2_i_i_0_out_ap_vld sc_out sc_logic 1 outvld 23 } 
	{ agg_tmp131_0_out sc_out sc_lv 16 signal 24 } 
	{ agg_tmp131_0_out_ap_vld sc_out sc_logic 1 outvld 24 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "magnitude_mat_data8_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "magnitude_mat_data8", "role": "dout" }} , 
 	{ "name": "magnitude_mat_data8_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "magnitude_mat_data8", "role": "num_data_valid" }} , 
 	{ "name": "magnitude_mat_data8_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "magnitude_mat_data8", "role": "fifo_cap" }} , 
 	{ "name": "magnitude_mat_data8_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "magnitude_mat_data8", "role": "empty_n" }} , 
 	{ "name": "magnitude_mat_data8_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "magnitude_mat_data8", "role": "read" }} , 
 	{ "name": "phase_mat_data9_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "phase_mat_data9", "role": "dout" }} , 
 	{ "name": "phase_mat_data9_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "phase_mat_data9", "role": "num_data_valid" }} , 
 	{ "name": "phase_mat_data9_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "phase_mat_data9", "role": "fifo_cap" }} , 
 	{ "name": "phase_mat_data9_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "phase_mat_data9", "role": "empty_n" }} , 
 	{ "name": "phase_mat_data9_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "phase_mat_data9", "role": "read" }} , 
 	{ "name": "nms_mat_data10_din", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "nms_mat_data10", "role": "din" }} , 
 	{ "name": "nms_mat_data10_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "nms_mat_data10", "role": "num_data_valid" }} , 
 	{ "name": "nms_mat_data10_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "nms_mat_data10", "role": "fifo_cap" }} , 
 	{ "name": "nms_mat_data10_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "nms_mat_data10", "role": "full_n" }} , 
 	{ "name": "nms_mat_data10_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "nms_mat_data10", "role": "write" }} , 
 	{ "name": "imgwidth_load", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "imgwidth_load", "role": "default" }} , 
 	{ "name": "zext_ln1035", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "zext_ln1035", "role": "default" }} , 
 	{ "name": "zext_ln1035_1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "zext_ln1035_1", "role": "default" }} , 
 	{ "name": "buf_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "buf_V", "role": "address0" }} , 
 	{ "name": "buf_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_V", "role": "ce0" }} , 
 	{ "name": "buf_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_V", "role": "we0" }} , 
 	{ "name": "buf_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "buf_V", "role": "d0" }} , 
 	{ "name": "buf_V_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "buf_V", "role": "address1" }} , 
 	{ "name": "buf_V_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_V", "role": "ce1" }} , 
 	{ "name": "buf_V_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "buf_V", "role": "q1" }} , 
 	{ "name": "buf_V_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "buf_V_1", "role": "address0" }} , 
 	{ "name": "buf_V_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_V_1", "role": "ce0" }} , 
 	{ "name": "buf_V_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_V_1", "role": "we0" }} , 
 	{ "name": "buf_V_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "buf_V_1", "role": "d0" }} , 
 	{ "name": "buf_V_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "buf_V_1", "role": "address1" }} , 
 	{ "name": "buf_V_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_V_1", "role": "ce1" }} , 
 	{ "name": "buf_V_1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "buf_V_1", "role": "q1" }} , 
 	{ "name": "buf_V_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "buf_V_2", "role": "address0" }} , 
 	{ "name": "buf_V_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_V_2", "role": "ce0" }} , 
 	{ "name": "buf_V_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_V_2", "role": "we0" }} , 
 	{ "name": "buf_V_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "buf_V_2", "role": "d0" }} , 
 	{ "name": "buf_V_2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "buf_V_2", "role": "address1" }} , 
 	{ "name": "buf_V_2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_V_2", "role": "ce1" }} , 
 	{ "name": "buf_V_2_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "buf_V_2", "role": "q1" }} , 
 	{ "name": "top_V", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "top_V", "role": "default" }} , 
 	{ "name": "mid_V", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "mid_V", "role": "default" }} , 
 	{ "name": "bottom_V", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bottom_V", "role": "default" }} , 
 	{ "name": "angle_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "angle_V", "role": "address0" }} , 
 	{ "name": "angle_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "angle_V", "role": "ce0" }} , 
 	{ "name": "angle_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "angle_V", "role": "we0" }} , 
 	{ "name": "angle_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "angle_V", "role": "d0" }} , 
 	{ "name": "angle_V_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "angle_V", "role": "address1" }} , 
 	{ "name": "angle_V_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "angle_V", "role": "ce1" }} , 
 	{ "name": "angle_V_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "angle_V", "role": "q1" }} , 
 	{ "name": "angle_V_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "angle_V_1", "role": "address0" }} , 
 	{ "name": "angle_V_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "angle_V_1", "role": "ce0" }} , 
 	{ "name": "angle_V_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "angle_V_1", "role": "we0" }} , 
 	{ "name": "angle_V_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "angle_V_1", "role": "d0" }} , 
 	{ "name": "angle_V_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "angle_V_1", "role": "address1" }} , 
 	{ "name": "angle_V_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "angle_V_1", "role": "ce1" }} , 
 	{ "name": "angle_V_1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "angle_V_1", "role": "q1" }} , 
 	{ "name": "write_ind_V_cast", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "write_ind_V_cast", "role": "default" }} , 
 	{ "name": "read_ind_V_cast", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "read_ind_V_cast", "role": "default" }} , 
 	{ "name": "row_ind_V_cast", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "row_ind_V_cast", "role": "default" }} , 
 	{ "name": "cmp_i_i163_i", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "cmp_i_i163_i", "role": "default" }} , 
 	{ "name": "agg_tmp31_i_i_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "agg_tmp31_i_i_0_out", "role": "default" }} , 
 	{ "name": "agg_tmp31_i_i_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "agg_tmp31_i_i_0_out", "role": "ap_vld" }} , 
 	{ "name": "agg_tmp23_i_i_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "agg_tmp23_i_i_0_out", "role": "default" }} , 
 	{ "name": "agg_tmp23_i_i_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "agg_tmp23_i_i_0_out", "role": "ap_vld" }} , 
 	{ "name": "agg_tmp20_i_i_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "agg_tmp20_i_i_0_out", "role": "default" }} , 
 	{ "name": "agg_tmp20_i_i_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "agg_tmp20_i_i_0_out", "role": "ap_vld" }} , 
 	{ "name": "agg_tmp12_i_i_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "agg_tmp12_i_i_0_out", "role": "default" }} , 
 	{ "name": "agg_tmp12_i_i_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "agg_tmp12_i_i_0_out", "role": "ap_vld" }} , 
 	{ "name": "agg_tmp9_i_i_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "agg_tmp9_i_i_0_out", "role": "default" }} , 
 	{ "name": "agg_tmp9_i_i_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "agg_tmp9_i_i_0_out", "role": "ap_vld" }} , 
 	{ "name": "agg_tmp2_i_i_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "agg_tmp2_i_i_0_out", "role": "default" }} , 
 	{ "name": "agg_tmp2_i_i_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "agg_tmp2_i_i_0_out", "role": "ap_vld" }} , 
 	{ "name": "agg_tmp131_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "agg_tmp131_0_out", "role": "default" }} , 
 	{ "name": "agg_tmp131_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "agg_tmp131_0_out", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8"],
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.l00_buf_V_xfExtractPixels_1_5_3_s_fu_464", "Parent" : "0",
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
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.l10_buf_V_xfExtractPixels_1_5_3_s_fu_469", "Parent" : "0",
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
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.l20_buf_V_xfExtractPixels_1_5_3_s_fu_474", "Parent" : "0",
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
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_xfExtractPixels_1_1_0_s_fu_479", "Parent" : "0",
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
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_16_1_1_U202", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_16_1_1_U203", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_16_1_1_U204", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
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
	imgwidth_load { ap_none {  { imgwidth_load in_data 0 16 } } }
	zext_ln1035 { ap_none {  { zext_ln1035 in_data 0 8 } } }
	zext_ln1035_1 { ap_none {  { zext_ln1035_1 in_data 0 8 } } }
	buf_V { ap_memory {  { buf_V_address0 mem_address 1 11 }  { buf_V_ce0 mem_ce 1 1 }  { buf_V_we0 mem_we 1 1 }  { buf_V_d0 mem_din 1 16 }  { buf_V_address1 MemPortADDR2 1 11 }  { buf_V_ce1 MemPortCE2 1 1 }  { buf_V_q1 in_data 0 16 } } }
	buf_V_1 { ap_memory {  { buf_V_1_address0 mem_address 1 11 }  { buf_V_1_ce0 mem_ce 1 1 }  { buf_V_1_we0 mem_we 1 1 }  { buf_V_1_d0 mem_din 1 16 }  { buf_V_1_address1 MemPortADDR2 1 11 }  { buf_V_1_ce1 MemPortCE2 1 1 }  { buf_V_1_q1 in_data 0 16 } } }
	buf_V_2 { ap_memory {  { buf_V_2_address0 mem_address 1 11 }  { buf_V_2_ce0 mem_ce 1 1 }  { buf_V_2_we0 mem_we 1 1 }  { buf_V_2_d0 mem_din 1 16 }  { buf_V_2_address1 MemPortADDR2 1 11 }  { buf_V_2_ce1 MemPortCE2 1 1 }  { buf_V_2_q1 in_data 0 16 } } }
	top_V { ap_none {  { top_V in_data 0 2 } } }
	mid_V { ap_none {  { mid_V in_data 0 2 } } }
	bottom_V { ap_none {  { bottom_V in_data 0 2 } } }
	angle_V { ap_memory {  { angle_V_address0 mem_address 1 11 }  { angle_V_ce0 mem_ce 1 1 }  { angle_V_we0 mem_we 1 1 }  { angle_V_d0 mem_din 1 8 }  { angle_V_address1 MemPortADDR2 1 11 }  { angle_V_ce1 MemPortCE2 1 1 }  { angle_V_q1 in_data 0 8 } } }
	angle_V_1 { ap_memory {  { angle_V_1_address0 mem_address 1 11 }  { angle_V_1_ce0 mem_ce 1 1 }  { angle_V_1_we0 mem_we 1 1 }  { angle_V_1_d0 mem_din 1 8 }  { angle_V_1_address1 MemPortADDR2 1 11 }  { angle_V_1_ce1 MemPortCE2 1 1 }  { angle_V_1_q1 in_data 0 8 } } }
	write_ind_V_cast { ap_none {  { write_ind_V_cast in_data 0 1 } } }
	phase_mat_data9 { ap_fifo {  { phase_mat_data9_dout fifo_port_we 0 8 }  { phase_mat_data9_num_data_valid fifo_status_num_data_valid 0 14 }  { phase_mat_data9_fifo_cap fifo_update 0 14 }  { phase_mat_data9_empty_n fifo_status 0 1 }  { phase_mat_data9_read fifo_data 1 1 } } }
	read_ind_V_cast { ap_none {  { read_ind_V_cast in_data 0 1 } } }
	magnitude_mat_data8 { ap_fifo {  { magnitude_mat_data8_dout fifo_port_we 0 16 }  { magnitude_mat_data8_num_data_valid fifo_status_num_data_valid 0 2 }  { magnitude_mat_data8_fifo_cap fifo_update 0 2 }  { magnitude_mat_data8_empty_n fifo_status 0 1 }  { magnitude_mat_data8_read fifo_data 1 1 } } }
	row_ind_V_cast { ap_none {  { row_ind_V_cast in_data 0 2 } } }
	cmp_i_i163_i { ap_none {  { cmp_i_i163_i in_data 0 1 } } }
	nms_mat_data10 { ap_fifo {  { nms_mat_data10_din fifo_port_we 1 2 }  { nms_mat_data10_num_data_valid fifo_status_num_data_valid 0 2 }  { nms_mat_data10_fifo_cap fifo_update 0 2 }  { nms_mat_data10_full_n fifo_status 0 1 }  { nms_mat_data10_write fifo_data 1 1 } } }
	agg_tmp31_i_i_0_out { ap_vld {  { agg_tmp31_i_i_0_out out_data 1 8 }  { agg_tmp31_i_i_0_out_ap_vld out_vld 1 1 } } }
	agg_tmp23_i_i_0_out { ap_vld {  { agg_tmp23_i_i_0_out out_data 1 16 }  { agg_tmp23_i_i_0_out_ap_vld out_vld 1 1 } } }
	agg_tmp20_i_i_0_out { ap_vld {  { agg_tmp20_i_i_0_out out_data 1 16 }  { agg_tmp20_i_i_0_out_ap_vld out_vld 1 1 } } }
	agg_tmp12_i_i_0_out { ap_vld {  { agg_tmp12_i_i_0_out out_data 1 16 }  { agg_tmp12_i_i_0_out_ap_vld out_vld 1 1 } } }
	agg_tmp9_i_i_0_out { ap_vld {  { agg_tmp9_i_i_0_out out_data 1 16 }  { agg_tmp9_i_i_0_out_ap_vld out_vld 1 1 } } }
	agg_tmp2_i_i_0_out { ap_vld {  { agg_tmp2_i_i_0_out out_data 1 16 }  { agg_tmp2_i_i_0_out_ap_vld out_vld 1 1 } } }
	agg_tmp131_0_out { ap_vld {  { agg_tmp131_0_out out_data 1 16 }  { agg_tmp131_0_out_ap_vld out_vld 1 1 } } }
}
