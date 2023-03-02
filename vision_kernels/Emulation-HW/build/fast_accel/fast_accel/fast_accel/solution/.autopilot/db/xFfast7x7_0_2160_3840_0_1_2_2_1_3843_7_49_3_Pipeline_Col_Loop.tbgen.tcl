set moduleName xFfast7x7_0_2160_3840_0_1_2_2_1_3843_7_49_3_Pipeline_Col_Loop
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
set C_modelName {xFfast7x7<0, 2160, 3840, 0, 1, 2, 2, 1, 3843, 7, 49>3_Pipeline_Col_Loop}
set C_modelType { void 0 }
set C_modelArgList {
	{ op2_assign int 14 regular  }
	{ buf_V_8 int 8 regular {array 3840 { 1 0 } 1 1 }  }
	{ buf_V int 8 regular {array 3840 { 1 0 } 1 1 }  }
	{ buf_V_3 int 8 regular {array 3840 { 1 0 } 1 1 }  }
	{ buf_V_4 int 8 regular {array 3840 { 1 0 } 1 1 }  }
	{ buf_V_5 int 8 regular {array 3840 { 1 0 } 1 1 }  }
	{ buf_V_6 int 8 regular {array 3840 { 1 0 } 1 1 }  }
	{ buf_V_7 int 8 regular {array 3840 { 1 0 } 1 1 }  }
	{ row_ind_V_24 int 13 regular  }
	{ row_ind_V_25 int 13 regular  }
	{ row_ind_V_26 int 13 regular  }
	{ row_ind_V_27 int 13 regular  }
	{ row_ind_V_28 int 13 regular  }
	{ row_ind_V_29 int 13 regular  }
	{ row_ind_V_30 int 13 regular  }
	{ sub_i273_i_cast int 3 regular  }
	{ row_ind_V_24_cast int 3 regular  }
	{ spec_select484 int 1 regular  }
	{ row_ind_V_25_cast int 3 regular  }
	{ spec_select488 int 1 regular  }
	{ row_ind_V_26_cast int 3 regular  }
	{ spec_select492 int 1 regular  }
	{ row_ind_V_27_cast int 3 regular  }
	{ spec_select496 int 1 regular  }
	{ row_ind_V_28_cast int 3 regular  }
	{ spec_select500 int 1 regular  }
	{ row_ind_V_29_cast int 3 regular  }
	{ spec_select504 int 1 regular  }
	{ row_ind_V_30_cast int 3 regular  }
	{ spec_select508 int 1 regular  }
	{ cmp_i_i73_i_not int 1 regular  }
	{ p_threshold_cast int 8 regular  }
	{ b0 int 9 regular  }
	{ p_threshold int 8 regular  }
	{ xor_ln435_1 int 1 regular  }
	{ img_width int 16 regular  }
	{ cmp_i_i49_i int 1 regular  }
	{ cmp_i_i381_i int 1 regular  }
	{ imgInput_data1 int 8 regular {fifo 0 volatile }  }
	{ p_dst_data1 int 8 regular {fifo 1 volatile }  }
	{ p_0_0_01084242_out int 8 regular {pointer 2}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "op2_assign", "interface" : "wire", "bitwidth" : 14, "direction" : "READONLY"} , 
 	{ "Name" : "buf_V_8", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "buf_V", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "buf_V_3", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "buf_V_4", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "buf_V_5", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "buf_V_6", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "buf_V_7", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "row_ind_V_24", "interface" : "wire", "bitwidth" : 13, "direction" : "READONLY"} , 
 	{ "Name" : "row_ind_V_25", "interface" : "wire", "bitwidth" : 13, "direction" : "READONLY"} , 
 	{ "Name" : "row_ind_V_26", "interface" : "wire", "bitwidth" : 13, "direction" : "READONLY"} , 
 	{ "Name" : "row_ind_V_27", "interface" : "wire", "bitwidth" : 13, "direction" : "READONLY"} , 
 	{ "Name" : "row_ind_V_28", "interface" : "wire", "bitwidth" : 13, "direction" : "READONLY"} , 
 	{ "Name" : "row_ind_V_29", "interface" : "wire", "bitwidth" : 13, "direction" : "READONLY"} , 
 	{ "Name" : "row_ind_V_30", "interface" : "wire", "bitwidth" : 13, "direction" : "READONLY"} , 
 	{ "Name" : "sub_i273_i_cast", "interface" : "wire", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "row_ind_V_24_cast", "interface" : "wire", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "spec_select484", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "row_ind_V_25_cast", "interface" : "wire", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "spec_select488", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "row_ind_V_26_cast", "interface" : "wire", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "spec_select492", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "row_ind_V_27_cast", "interface" : "wire", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "spec_select496", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "row_ind_V_28_cast", "interface" : "wire", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "spec_select500", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "row_ind_V_29_cast", "interface" : "wire", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "spec_select504", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "row_ind_V_30_cast", "interface" : "wire", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "spec_select508", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "cmp_i_i73_i_not", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "p_threshold_cast", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "b0", "interface" : "wire", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "p_threshold", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "xor_ln435_1", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "img_width", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "cmp_i_i49_i", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "cmp_i_i381_i", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "imgInput_data1", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_dst_data1", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_0_0_01084242_out", "interface" : "wire", "bitwidth" : 8, "direction" : "READWRITE"} ]}
# RTL Port declarations: 
set portNum 102
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ imgInput_data1_dout sc_in sc_lv 8 signal 38 } 
	{ imgInput_data1_num_data_valid sc_in sc_lv 2 signal 38 } 
	{ imgInput_data1_fifo_cap sc_in sc_lv 2 signal 38 } 
	{ imgInput_data1_empty_n sc_in sc_logic 1 signal 38 } 
	{ imgInput_data1_read sc_out sc_logic 1 signal 38 } 
	{ p_dst_data1_din sc_out sc_lv 8 signal 39 } 
	{ p_dst_data1_num_data_valid sc_in sc_lv 2 signal 39 } 
	{ p_dst_data1_fifo_cap sc_in sc_lv 2 signal 39 } 
	{ p_dst_data1_full_n sc_in sc_logic 1 signal 39 } 
	{ p_dst_data1_write sc_out sc_logic 1 signal 39 } 
	{ op2_assign sc_in sc_lv 14 signal 0 } 
	{ buf_V_8_address0 sc_out sc_lv 12 signal 1 } 
	{ buf_V_8_ce0 sc_out sc_logic 1 signal 1 } 
	{ buf_V_8_q0 sc_in sc_lv 8 signal 1 } 
	{ buf_V_8_address1 sc_out sc_lv 12 signal 1 } 
	{ buf_V_8_ce1 sc_out sc_logic 1 signal 1 } 
	{ buf_V_8_we1 sc_out sc_logic 1 signal 1 } 
	{ buf_V_8_d1 sc_out sc_lv 8 signal 1 } 
	{ buf_V_address0 sc_out sc_lv 12 signal 2 } 
	{ buf_V_ce0 sc_out sc_logic 1 signal 2 } 
	{ buf_V_q0 sc_in sc_lv 8 signal 2 } 
	{ buf_V_address1 sc_out sc_lv 12 signal 2 } 
	{ buf_V_ce1 sc_out sc_logic 1 signal 2 } 
	{ buf_V_we1 sc_out sc_logic 1 signal 2 } 
	{ buf_V_d1 sc_out sc_lv 8 signal 2 } 
	{ buf_V_3_address0 sc_out sc_lv 12 signal 3 } 
	{ buf_V_3_ce0 sc_out sc_logic 1 signal 3 } 
	{ buf_V_3_q0 sc_in sc_lv 8 signal 3 } 
	{ buf_V_3_address1 sc_out sc_lv 12 signal 3 } 
	{ buf_V_3_ce1 sc_out sc_logic 1 signal 3 } 
	{ buf_V_3_we1 sc_out sc_logic 1 signal 3 } 
	{ buf_V_3_d1 sc_out sc_lv 8 signal 3 } 
	{ buf_V_4_address0 sc_out sc_lv 12 signal 4 } 
	{ buf_V_4_ce0 sc_out sc_logic 1 signal 4 } 
	{ buf_V_4_q0 sc_in sc_lv 8 signal 4 } 
	{ buf_V_4_address1 sc_out sc_lv 12 signal 4 } 
	{ buf_V_4_ce1 sc_out sc_logic 1 signal 4 } 
	{ buf_V_4_we1 sc_out sc_logic 1 signal 4 } 
	{ buf_V_4_d1 sc_out sc_lv 8 signal 4 } 
	{ buf_V_5_address0 sc_out sc_lv 12 signal 5 } 
	{ buf_V_5_ce0 sc_out sc_logic 1 signal 5 } 
	{ buf_V_5_q0 sc_in sc_lv 8 signal 5 } 
	{ buf_V_5_address1 sc_out sc_lv 12 signal 5 } 
	{ buf_V_5_ce1 sc_out sc_logic 1 signal 5 } 
	{ buf_V_5_we1 sc_out sc_logic 1 signal 5 } 
	{ buf_V_5_d1 sc_out sc_lv 8 signal 5 } 
	{ buf_V_6_address0 sc_out sc_lv 12 signal 6 } 
	{ buf_V_6_ce0 sc_out sc_logic 1 signal 6 } 
	{ buf_V_6_q0 sc_in sc_lv 8 signal 6 } 
	{ buf_V_6_address1 sc_out sc_lv 12 signal 6 } 
	{ buf_V_6_ce1 sc_out sc_logic 1 signal 6 } 
	{ buf_V_6_we1 sc_out sc_logic 1 signal 6 } 
	{ buf_V_6_d1 sc_out sc_lv 8 signal 6 } 
	{ buf_V_7_address0 sc_out sc_lv 12 signal 7 } 
	{ buf_V_7_ce0 sc_out sc_logic 1 signal 7 } 
	{ buf_V_7_q0 sc_in sc_lv 8 signal 7 } 
	{ buf_V_7_address1 sc_out sc_lv 12 signal 7 } 
	{ buf_V_7_ce1 sc_out sc_logic 1 signal 7 } 
	{ buf_V_7_we1 sc_out sc_logic 1 signal 7 } 
	{ buf_V_7_d1 sc_out sc_lv 8 signal 7 } 
	{ row_ind_V_24 sc_in sc_lv 13 signal 8 } 
	{ row_ind_V_25 sc_in sc_lv 13 signal 9 } 
	{ row_ind_V_26 sc_in sc_lv 13 signal 10 } 
	{ row_ind_V_27 sc_in sc_lv 13 signal 11 } 
	{ row_ind_V_28 sc_in sc_lv 13 signal 12 } 
	{ row_ind_V_29 sc_in sc_lv 13 signal 13 } 
	{ row_ind_V_30 sc_in sc_lv 13 signal 14 } 
	{ sub_i273_i_cast sc_in sc_lv 3 signal 15 } 
	{ row_ind_V_24_cast sc_in sc_lv 3 signal 16 } 
	{ spec_select484 sc_in sc_lv 1 signal 17 } 
	{ row_ind_V_25_cast sc_in sc_lv 3 signal 18 } 
	{ spec_select488 sc_in sc_lv 1 signal 19 } 
	{ row_ind_V_26_cast sc_in sc_lv 3 signal 20 } 
	{ spec_select492 sc_in sc_lv 1 signal 21 } 
	{ row_ind_V_27_cast sc_in sc_lv 3 signal 22 } 
	{ spec_select496 sc_in sc_lv 1 signal 23 } 
	{ row_ind_V_28_cast sc_in sc_lv 3 signal 24 } 
	{ spec_select500 sc_in sc_lv 1 signal 25 } 
	{ row_ind_V_29_cast sc_in sc_lv 3 signal 26 } 
	{ spec_select504 sc_in sc_lv 1 signal 27 } 
	{ row_ind_V_30_cast sc_in sc_lv 3 signal 28 } 
	{ spec_select508 sc_in sc_lv 1 signal 29 } 
	{ cmp_i_i73_i_not sc_in sc_lv 1 signal 30 } 
	{ p_threshold_cast sc_in sc_lv 8 signal 31 } 
	{ b0 sc_in sc_lv 9 signal 32 } 
	{ p_threshold sc_in sc_lv 8 signal 33 } 
	{ xor_ln435_1 sc_in sc_lv 1 signal 34 } 
	{ img_width sc_in sc_lv 16 signal 35 } 
	{ cmp_i_i49_i sc_in sc_lv 1 signal 36 } 
	{ cmp_i_i381_i sc_in sc_lv 1 signal 37 } 
	{ p_0_0_01084242_out_i sc_in sc_lv 8 signal 40 } 
	{ p_0_0_01084242_out_o sc_out sc_lv 8 signal 40 } 
	{ p_0_0_01084242_out_o_ap_vld sc_out sc_logic 1 outvld 40 } 
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
 	{ "name": "imgInput_data1_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "imgInput_data1", "role": "dout" }} , 
 	{ "name": "imgInput_data1_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "imgInput_data1", "role": "num_data_valid" }} , 
 	{ "name": "imgInput_data1_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "imgInput_data1", "role": "fifo_cap" }} , 
 	{ "name": "imgInput_data1_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imgInput_data1", "role": "empty_n" }} , 
 	{ "name": "imgInput_data1_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imgInput_data1", "role": "read" }} , 
 	{ "name": "p_dst_data1_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_dst_data1", "role": "din" }} , 
 	{ "name": "p_dst_data1_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "p_dst_data1", "role": "num_data_valid" }} , 
 	{ "name": "p_dst_data1_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "p_dst_data1", "role": "fifo_cap" }} , 
 	{ "name": "p_dst_data1_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_dst_data1", "role": "full_n" }} , 
 	{ "name": "p_dst_data1_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_dst_data1", "role": "write" }} , 
 	{ "name": "op2_assign", "direction": "in", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "op2_assign", "role": "default" }} , 
 	{ "name": "buf_V_8_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "buf_V_8", "role": "address0" }} , 
 	{ "name": "buf_V_8_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_V_8", "role": "ce0" }} , 
 	{ "name": "buf_V_8_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buf_V_8", "role": "q0" }} , 
 	{ "name": "buf_V_8_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "buf_V_8", "role": "address1" }} , 
 	{ "name": "buf_V_8_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_V_8", "role": "ce1" }} , 
 	{ "name": "buf_V_8_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_V_8", "role": "we1" }} , 
 	{ "name": "buf_V_8_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buf_V_8", "role": "d1" }} , 
 	{ "name": "buf_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "buf_V", "role": "address0" }} , 
 	{ "name": "buf_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_V", "role": "ce0" }} , 
 	{ "name": "buf_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buf_V", "role": "q0" }} , 
 	{ "name": "buf_V_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "buf_V", "role": "address1" }} , 
 	{ "name": "buf_V_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_V", "role": "ce1" }} , 
 	{ "name": "buf_V_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_V", "role": "we1" }} , 
 	{ "name": "buf_V_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buf_V", "role": "d1" }} , 
 	{ "name": "buf_V_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "buf_V_3", "role": "address0" }} , 
 	{ "name": "buf_V_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_V_3", "role": "ce0" }} , 
 	{ "name": "buf_V_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buf_V_3", "role": "q0" }} , 
 	{ "name": "buf_V_3_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "buf_V_3", "role": "address1" }} , 
 	{ "name": "buf_V_3_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_V_3", "role": "ce1" }} , 
 	{ "name": "buf_V_3_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_V_3", "role": "we1" }} , 
 	{ "name": "buf_V_3_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buf_V_3", "role": "d1" }} , 
 	{ "name": "buf_V_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "buf_V_4", "role": "address0" }} , 
 	{ "name": "buf_V_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_V_4", "role": "ce0" }} , 
 	{ "name": "buf_V_4_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buf_V_4", "role": "q0" }} , 
 	{ "name": "buf_V_4_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "buf_V_4", "role": "address1" }} , 
 	{ "name": "buf_V_4_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_V_4", "role": "ce1" }} , 
 	{ "name": "buf_V_4_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_V_4", "role": "we1" }} , 
 	{ "name": "buf_V_4_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buf_V_4", "role": "d1" }} , 
 	{ "name": "buf_V_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "buf_V_5", "role": "address0" }} , 
 	{ "name": "buf_V_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_V_5", "role": "ce0" }} , 
 	{ "name": "buf_V_5_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buf_V_5", "role": "q0" }} , 
 	{ "name": "buf_V_5_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "buf_V_5", "role": "address1" }} , 
 	{ "name": "buf_V_5_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_V_5", "role": "ce1" }} , 
 	{ "name": "buf_V_5_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_V_5", "role": "we1" }} , 
 	{ "name": "buf_V_5_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buf_V_5", "role": "d1" }} , 
 	{ "name": "buf_V_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "buf_V_6", "role": "address0" }} , 
 	{ "name": "buf_V_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_V_6", "role": "ce0" }} , 
 	{ "name": "buf_V_6_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buf_V_6", "role": "q0" }} , 
 	{ "name": "buf_V_6_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "buf_V_6", "role": "address1" }} , 
 	{ "name": "buf_V_6_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_V_6", "role": "ce1" }} , 
 	{ "name": "buf_V_6_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_V_6", "role": "we1" }} , 
 	{ "name": "buf_V_6_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buf_V_6", "role": "d1" }} , 
 	{ "name": "buf_V_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "buf_V_7", "role": "address0" }} , 
 	{ "name": "buf_V_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_V_7", "role": "ce0" }} , 
 	{ "name": "buf_V_7_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buf_V_7", "role": "q0" }} , 
 	{ "name": "buf_V_7_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "buf_V_7", "role": "address1" }} , 
 	{ "name": "buf_V_7_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_V_7", "role": "ce1" }} , 
 	{ "name": "buf_V_7_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_V_7", "role": "we1" }} , 
 	{ "name": "buf_V_7_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buf_V_7", "role": "d1" }} , 
 	{ "name": "row_ind_V_24", "direction": "in", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "row_ind_V_24", "role": "default" }} , 
 	{ "name": "row_ind_V_25", "direction": "in", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "row_ind_V_25", "role": "default" }} , 
 	{ "name": "row_ind_V_26", "direction": "in", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "row_ind_V_26", "role": "default" }} , 
 	{ "name": "row_ind_V_27", "direction": "in", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "row_ind_V_27", "role": "default" }} , 
 	{ "name": "row_ind_V_28", "direction": "in", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "row_ind_V_28", "role": "default" }} , 
 	{ "name": "row_ind_V_29", "direction": "in", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "row_ind_V_29", "role": "default" }} , 
 	{ "name": "row_ind_V_30", "direction": "in", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "row_ind_V_30", "role": "default" }} , 
 	{ "name": "sub_i273_i_cast", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "sub_i273_i_cast", "role": "default" }} , 
 	{ "name": "row_ind_V_24_cast", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "row_ind_V_24_cast", "role": "default" }} , 
 	{ "name": "spec_select484", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "spec_select484", "role": "default" }} , 
 	{ "name": "row_ind_V_25_cast", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "row_ind_V_25_cast", "role": "default" }} , 
 	{ "name": "spec_select488", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "spec_select488", "role": "default" }} , 
 	{ "name": "row_ind_V_26_cast", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "row_ind_V_26_cast", "role": "default" }} , 
 	{ "name": "spec_select492", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "spec_select492", "role": "default" }} , 
 	{ "name": "row_ind_V_27_cast", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "row_ind_V_27_cast", "role": "default" }} , 
 	{ "name": "spec_select496", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "spec_select496", "role": "default" }} , 
 	{ "name": "row_ind_V_28_cast", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "row_ind_V_28_cast", "role": "default" }} , 
 	{ "name": "spec_select500", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "spec_select500", "role": "default" }} , 
 	{ "name": "row_ind_V_29_cast", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "row_ind_V_29_cast", "role": "default" }} , 
 	{ "name": "spec_select504", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "spec_select504", "role": "default" }} , 
 	{ "name": "row_ind_V_30_cast", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "row_ind_V_30_cast", "role": "default" }} , 
 	{ "name": "spec_select508", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "spec_select508", "role": "default" }} , 
 	{ "name": "cmp_i_i73_i_not", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "cmp_i_i73_i_not", "role": "default" }} , 
 	{ "name": "p_threshold_cast", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_threshold_cast", "role": "default" }} , 
 	{ "name": "b0", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "b0", "role": "default" }} , 
 	{ "name": "p_threshold", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_threshold", "role": "default" }} , 
 	{ "name": "xor_ln435_1", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "xor_ln435_1", "role": "default" }} , 
 	{ "name": "img_width", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "img_width", "role": "default" }} , 
 	{ "name": "cmp_i_i49_i", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "cmp_i_i49_i", "role": "default" }} , 
 	{ "name": "cmp_i_i381_i", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "cmp_i_i381_i", "role": "default" }} , 
 	{ "name": "p_0_0_01084242_out_i", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_0_0_01084242_out", "role": "i" }} , 
 	{ "name": "p_0_0_01084242_out_o", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_0_0_01084242_out", "role": "o" }} , 
 	{ "name": "p_0_0_01084242_out_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_0_0_01084242_out", "role": "o_ap_vld" }} , 
 	{ "name": "ap_ext_blocking_n", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_ext_blocking_n", "role": "default" }} , 
 	{ "name": "ap_str_blocking_n", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_str_blocking_n", "role": "default" }} , 
 	{ "name": "ap_int_blocking_n", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_int_blocking_n", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10"],
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_73_13_1_1_U87", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_73_8_1_1_U88", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_73_8_1_1_U89", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_73_8_1_1_U90", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_73_8_1_1_U91", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_73_8_1_1_U92", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_73_8_1_1_U93", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_73_8_1_1_U94", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_73_8_1_1_U95", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
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
		p_0_0_01084242_out {Type IO LastRead 10 FirstWrite 10}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3854", "Max" : "3854"}
	, {"Name" : "Interval", "Min" : "3854", "Max" : "3854"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	op2_assign { ap_none {  { op2_assign in_data 0 14 } } }
	buf_V_8 { ap_memory {  { buf_V_8_address0 mem_address 1 12 }  { buf_V_8_ce0 mem_ce 1 1 }  { buf_V_8_q0 in_data 0 8 }  { buf_V_8_address1 MemPortADDR2 1 12 }  { buf_V_8_ce1 MemPortCE2 1 1 }  { buf_V_8_we1 MemPortWE2 1 1 }  { buf_V_8_d1 MemPortDIN2 1 8 } } }
	buf_V { ap_memory {  { buf_V_address0 mem_address 1 12 }  { buf_V_ce0 mem_ce 1 1 }  { buf_V_q0 in_data 0 8 }  { buf_V_address1 MemPortADDR2 1 12 }  { buf_V_ce1 MemPortCE2 1 1 }  { buf_V_we1 MemPortWE2 1 1 }  { buf_V_d1 MemPortDIN2 1 8 } } }
	buf_V_3 { ap_memory {  { buf_V_3_address0 mem_address 1 12 }  { buf_V_3_ce0 mem_ce 1 1 }  { buf_V_3_q0 in_data 0 8 }  { buf_V_3_address1 MemPortADDR2 1 12 }  { buf_V_3_ce1 MemPortCE2 1 1 }  { buf_V_3_we1 MemPortWE2 1 1 }  { buf_V_3_d1 MemPortDIN2 1 8 } } }
	buf_V_4 { ap_memory {  { buf_V_4_address0 mem_address 1 12 }  { buf_V_4_ce0 mem_ce 1 1 }  { buf_V_4_q0 in_data 0 8 }  { buf_V_4_address1 MemPortADDR2 1 12 }  { buf_V_4_ce1 MemPortCE2 1 1 }  { buf_V_4_we1 MemPortWE2 1 1 }  { buf_V_4_d1 MemPortDIN2 1 8 } } }
	buf_V_5 { ap_memory {  { buf_V_5_address0 mem_address 1 12 }  { buf_V_5_ce0 mem_ce 1 1 }  { buf_V_5_q0 in_data 0 8 }  { buf_V_5_address1 MemPortADDR2 1 12 }  { buf_V_5_ce1 MemPortCE2 1 1 }  { buf_V_5_we1 MemPortWE2 1 1 }  { buf_V_5_d1 MemPortDIN2 1 8 } } }
	buf_V_6 { ap_memory {  { buf_V_6_address0 mem_address 1 12 }  { buf_V_6_ce0 mem_ce 1 1 }  { buf_V_6_q0 in_data 0 8 }  { buf_V_6_address1 MemPortADDR2 1 12 }  { buf_V_6_ce1 MemPortCE2 1 1 }  { buf_V_6_we1 MemPortWE2 1 1 }  { buf_V_6_d1 MemPortDIN2 1 8 } } }
	buf_V_7 { ap_memory {  { buf_V_7_address0 mem_address 1 12 }  { buf_V_7_ce0 mem_ce 1 1 }  { buf_V_7_q0 in_data 0 8 }  { buf_V_7_address1 MemPortADDR2 1 12 }  { buf_V_7_ce1 MemPortCE2 1 1 }  { buf_V_7_we1 MemPortWE2 1 1 }  { buf_V_7_d1 MemPortDIN2 1 8 } } }
	row_ind_V_24 { ap_none {  { row_ind_V_24 in_data 0 13 } } }
	row_ind_V_25 { ap_none {  { row_ind_V_25 in_data 0 13 } } }
	row_ind_V_26 { ap_none {  { row_ind_V_26 in_data 0 13 } } }
	row_ind_V_27 { ap_none {  { row_ind_V_27 in_data 0 13 } } }
	row_ind_V_28 { ap_none {  { row_ind_V_28 in_data 0 13 } } }
	row_ind_V_29 { ap_none {  { row_ind_V_29 in_data 0 13 } } }
	row_ind_V_30 { ap_none {  { row_ind_V_30 in_data 0 13 } } }
	sub_i273_i_cast { ap_none {  { sub_i273_i_cast in_data 0 3 } } }
	row_ind_V_24_cast { ap_none {  { row_ind_V_24_cast in_data 0 3 } } }
	spec_select484 { ap_none {  { spec_select484 in_data 0 1 } } }
	row_ind_V_25_cast { ap_none {  { row_ind_V_25_cast in_data 0 3 } } }
	spec_select488 { ap_none {  { spec_select488 in_data 0 1 } } }
	row_ind_V_26_cast { ap_none {  { row_ind_V_26_cast in_data 0 3 } } }
	spec_select492 { ap_none {  { spec_select492 in_data 0 1 } } }
	row_ind_V_27_cast { ap_none {  { row_ind_V_27_cast in_data 0 3 } } }
	spec_select496 { ap_none {  { spec_select496 in_data 0 1 } } }
	row_ind_V_28_cast { ap_none {  { row_ind_V_28_cast in_data 0 3 } } }
	spec_select500 { ap_none {  { spec_select500 in_data 0 1 } } }
	row_ind_V_29_cast { ap_none {  { row_ind_V_29_cast in_data 0 3 } } }
	spec_select504 { ap_none {  { spec_select504 in_data 0 1 } } }
	row_ind_V_30_cast { ap_none {  { row_ind_V_30_cast in_data 0 3 } } }
	spec_select508 { ap_none {  { spec_select508 in_data 0 1 } } }
	cmp_i_i73_i_not { ap_none {  { cmp_i_i73_i_not in_data 0 1 } } }
	p_threshold_cast { ap_none {  { p_threshold_cast in_data 0 8 } } }
	b0 { ap_none {  { b0 in_data 0 9 } } }
	p_threshold { ap_none {  { p_threshold in_data 0 8 } } }
	xor_ln435_1 { ap_none {  { xor_ln435_1 in_data 0 1 } } }
	img_width { ap_none {  { img_width in_data 0 16 } } }
	cmp_i_i49_i { ap_none {  { cmp_i_i49_i in_data 0 1 } } }
	cmp_i_i381_i { ap_none {  { cmp_i_i381_i in_data 0 1 } } }
	imgInput_data1 { ap_fifo {  { imgInput_data1_dout fifo_port_we 0 8 }  { imgInput_data1_num_data_valid fifo_status_num_data_valid 0 2 }  { imgInput_data1_fifo_cap fifo_update 0 2 }  { imgInput_data1_empty_n fifo_status 0 1 }  { imgInput_data1_read fifo_data 1 1 } } }
	p_dst_data1 { ap_fifo {  { p_dst_data1_din fifo_port_we 1 8 }  { p_dst_data1_num_data_valid fifo_status_num_data_valid 0 2 }  { p_dst_data1_fifo_cap fifo_update 0 2 }  { p_dst_data1_full_n fifo_status 0 1 }  { p_dst_data1_write fifo_data 1 1 } } }
	p_0_0_01084242_out { ap_ovld {  { p_0_0_01084242_out_i in_data 0 8 }  { p_0_0_01084242_out_o out_data 1 8 }  { p_0_0_01084242_out_o_ap_vld out_vld 1 1 } } }
}
