set moduleName edgetracing_accel_Pipeline_Read_N_Arrange
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
set C_modelName {edgetracing_accel_Pipeline_Read_N_Arrange}
set C_modelType { void 0 }
set C_modelArgList {
	{ lBound int 32 regular  }
	{ iBuff_V_19 int 64 regular {array 1024 { 0 0 } 0 1 }  }
	{ iBuff_V_18 int 64 regular {array 1024 { 0 3 } 0 1 }  }
	{ iBuff_V_17 int 64 regular {array 1024 { 0 3 } 0 1 }  }
	{ iBuff_V_16 int 64 regular {array 1024 { 0 0 } 0 1 }  }
	{ iBuff_V_15 int 64 regular {array 1024 { 0 3 } 0 1 }  }
	{ iBuff_V_14 int 64 regular {array 1024 { 0 3 } 0 1 }  }
	{ iBuff_V_13 int 64 regular {array 1024 { 0 0 } 0 1 }  }
	{ iBuff_V_12 int 64 regular {array 1024 { 0 3 } 0 1 }  }
	{ iBuff_V_11 int 64 regular {array 1024 { 0 3 } 0 1 }  }
	{ iBuff_V_10 int 64 regular {array 1024 { 0 0 } 0 1 }  }
	{ iBuff_V_9 int 64 regular {array 1024 { 0 3 } 0 1 }  }
	{ iBuff_V_8 int 64 regular {array 1024 { 0 3 } 0 1 }  }
	{ iBuff_V_7 int 64 regular {array 1024 { 0 0 } 0 1 }  }
	{ iBuff_V_6 int 64 regular {array 1024 { 0 3 } 0 1 }  }
	{ iBuff_V_5 int 64 regular {array 1024 { 0 3 } 0 1 }  }
	{ iBuff_V_4 int 64 regular {array 1024 { 0 0 } 0 1 }  }
	{ iBuff_V_3 int 64 regular {array 1024 { 0 3 } 0 1 }  }
	{ iBuff_V_2 int 64 regular {array 1024 { 0 3 } 0 1 }  }
	{ iBuff_V_1 int 64 regular {array 1024 { 0 0 } 0 1 }  }
	{ iBuff_V int 64 regular {array 1024 { 0 0 } 0 1 }  }
	{ p_dst1_data int 64 regular {fifo 0 volatile }  }
	{ zext_ln303 int 6 regular  }
	{ op2_assign_32_cast int 16 regular  }
	{ ram_row_depth_cast53_cast int 6 regular  }
	{ sdiv_ln305_1_cast int 5 regular  }
	{ sext_ln305 int 16 regular  }
	{ op2_assign int 18 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "lBound", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "iBuff_V_19", "interface" : "memory", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "iBuff_V_18", "interface" : "memory", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "iBuff_V_17", "interface" : "memory", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "iBuff_V_16", "interface" : "memory", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "iBuff_V_15", "interface" : "memory", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "iBuff_V_14", "interface" : "memory", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "iBuff_V_13", "interface" : "memory", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "iBuff_V_12", "interface" : "memory", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "iBuff_V_11", "interface" : "memory", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "iBuff_V_10", "interface" : "memory", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "iBuff_V_9", "interface" : "memory", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "iBuff_V_8", "interface" : "memory", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "iBuff_V_7", "interface" : "memory", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "iBuff_V_6", "interface" : "memory", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "iBuff_V_5", "interface" : "memory", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "iBuff_V_4", "interface" : "memory", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "iBuff_V_3", "interface" : "memory", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "iBuff_V_2", "interface" : "memory", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "iBuff_V_1", "interface" : "memory", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "iBuff_V", "interface" : "memory", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_dst1_data", "interface" : "fifo", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln303", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "op2_assign_32_cast", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "ram_row_depth_cast53_cast", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "sdiv_ln305_1_cast", "interface" : "wire", "bitwidth" : 5, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln305", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "op2_assign", "interface" : "wire", "bitwidth" : 18, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 131
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ p_dst1_data_dout sc_in sc_lv 64 signal 21 } 
	{ p_dst1_data_empty_n sc_in sc_logic 1 signal 21 } 
	{ p_dst1_data_read sc_out sc_logic 1 signal 21 } 
	{ lBound sc_in sc_lv 32 signal 0 } 
	{ iBuff_V_19_address0 sc_out sc_lv 10 signal 1 } 
	{ iBuff_V_19_ce0 sc_out sc_logic 1 signal 1 } 
	{ iBuff_V_19_we0 sc_out sc_logic 1 signal 1 } 
	{ iBuff_V_19_d0 sc_out sc_lv 64 signal 1 } 
	{ iBuff_V_19_address1 sc_out sc_lv 10 signal 1 } 
	{ iBuff_V_19_ce1 sc_out sc_logic 1 signal 1 } 
	{ iBuff_V_19_we1 sc_out sc_logic 1 signal 1 } 
	{ iBuff_V_19_d1 sc_out sc_lv 64 signal 1 } 
	{ iBuff_V_18_address0 sc_out sc_lv 10 signal 2 } 
	{ iBuff_V_18_ce0 sc_out sc_logic 1 signal 2 } 
	{ iBuff_V_18_we0 sc_out sc_logic 1 signal 2 } 
	{ iBuff_V_18_d0 sc_out sc_lv 64 signal 2 } 
	{ iBuff_V_17_address0 sc_out sc_lv 10 signal 3 } 
	{ iBuff_V_17_ce0 sc_out sc_logic 1 signal 3 } 
	{ iBuff_V_17_we0 sc_out sc_logic 1 signal 3 } 
	{ iBuff_V_17_d0 sc_out sc_lv 64 signal 3 } 
	{ iBuff_V_16_address0 sc_out sc_lv 10 signal 4 } 
	{ iBuff_V_16_ce0 sc_out sc_logic 1 signal 4 } 
	{ iBuff_V_16_we0 sc_out sc_logic 1 signal 4 } 
	{ iBuff_V_16_d0 sc_out sc_lv 64 signal 4 } 
	{ iBuff_V_16_address1 sc_out sc_lv 10 signal 4 } 
	{ iBuff_V_16_ce1 sc_out sc_logic 1 signal 4 } 
	{ iBuff_V_16_we1 sc_out sc_logic 1 signal 4 } 
	{ iBuff_V_16_d1 sc_out sc_lv 64 signal 4 } 
	{ iBuff_V_15_address0 sc_out sc_lv 10 signal 5 } 
	{ iBuff_V_15_ce0 sc_out sc_logic 1 signal 5 } 
	{ iBuff_V_15_we0 sc_out sc_logic 1 signal 5 } 
	{ iBuff_V_15_d0 sc_out sc_lv 64 signal 5 } 
	{ iBuff_V_14_address0 sc_out sc_lv 10 signal 6 } 
	{ iBuff_V_14_ce0 sc_out sc_logic 1 signal 6 } 
	{ iBuff_V_14_we0 sc_out sc_logic 1 signal 6 } 
	{ iBuff_V_14_d0 sc_out sc_lv 64 signal 6 } 
	{ iBuff_V_13_address0 sc_out sc_lv 10 signal 7 } 
	{ iBuff_V_13_ce0 sc_out sc_logic 1 signal 7 } 
	{ iBuff_V_13_we0 sc_out sc_logic 1 signal 7 } 
	{ iBuff_V_13_d0 sc_out sc_lv 64 signal 7 } 
	{ iBuff_V_13_address1 sc_out sc_lv 10 signal 7 } 
	{ iBuff_V_13_ce1 sc_out sc_logic 1 signal 7 } 
	{ iBuff_V_13_we1 sc_out sc_logic 1 signal 7 } 
	{ iBuff_V_13_d1 sc_out sc_lv 64 signal 7 } 
	{ iBuff_V_12_address0 sc_out sc_lv 10 signal 8 } 
	{ iBuff_V_12_ce0 sc_out sc_logic 1 signal 8 } 
	{ iBuff_V_12_we0 sc_out sc_logic 1 signal 8 } 
	{ iBuff_V_12_d0 sc_out sc_lv 64 signal 8 } 
	{ iBuff_V_11_address0 sc_out sc_lv 10 signal 9 } 
	{ iBuff_V_11_ce0 sc_out sc_logic 1 signal 9 } 
	{ iBuff_V_11_we0 sc_out sc_logic 1 signal 9 } 
	{ iBuff_V_11_d0 sc_out sc_lv 64 signal 9 } 
	{ iBuff_V_10_address0 sc_out sc_lv 10 signal 10 } 
	{ iBuff_V_10_ce0 sc_out sc_logic 1 signal 10 } 
	{ iBuff_V_10_we0 sc_out sc_logic 1 signal 10 } 
	{ iBuff_V_10_d0 sc_out sc_lv 64 signal 10 } 
	{ iBuff_V_10_address1 sc_out sc_lv 10 signal 10 } 
	{ iBuff_V_10_ce1 sc_out sc_logic 1 signal 10 } 
	{ iBuff_V_10_we1 sc_out sc_logic 1 signal 10 } 
	{ iBuff_V_10_d1 sc_out sc_lv 64 signal 10 } 
	{ iBuff_V_9_address0 sc_out sc_lv 10 signal 11 } 
	{ iBuff_V_9_ce0 sc_out sc_logic 1 signal 11 } 
	{ iBuff_V_9_we0 sc_out sc_logic 1 signal 11 } 
	{ iBuff_V_9_d0 sc_out sc_lv 64 signal 11 } 
	{ iBuff_V_8_address0 sc_out sc_lv 10 signal 12 } 
	{ iBuff_V_8_ce0 sc_out sc_logic 1 signal 12 } 
	{ iBuff_V_8_we0 sc_out sc_logic 1 signal 12 } 
	{ iBuff_V_8_d0 sc_out sc_lv 64 signal 12 } 
	{ iBuff_V_7_address0 sc_out sc_lv 10 signal 13 } 
	{ iBuff_V_7_ce0 sc_out sc_logic 1 signal 13 } 
	{ iBuff_V_7_we0 sc_out sc_logic 1 signal 13 } 
	{ iBuff_V_7_d0 sc_out sc_lv 64 signal 13 } 
	{ iBuff_V_7_address1 sc_out sc_lv 10 signal 13 } 
	{ iBuff_V_7_ce1 sc_out sc_logic 1 signal 13 } 
	{ iBuff_V_7_we1 sc_out sc_logic 1 signal 13 } 
	{ iBuff_V_7_d1 sc_out sc_lv 64 signal 13 } 
	{ iBuff_V_6_address0 sc_out sc_lv 10 signal 14 } 
	{ iBuff_V_6_ce0 sc_out sc_logic 1 signal 14 } 
	{ iBuff_V_6_we0 sc_out sc_logic 1 signal 14 } 
	{ iBuff_V_6_d0 sc_out sc_lv 64 signal 14 } 
	{ iBuff_V_5_address0 sc_out sc_lv 10 signal 15 } 
	{ iBuff_V_5_ce0 sc_out sc_logic 1 signal 15 } 
	{ iBuff_V_5_we0 sc_out sc_logic 1 signal 15 } 
	{ iBuff_V_5_d0 sc_out sc_lv 64 signal 15 } 
	{ iBuff_V_4_address0 sc_out sc_lv 10 signal 16 } 
	{ iBuff_V_4_ce0 sc_out sc_logic 1 signal 16 } 
	{ iBuff_V_4_we0 sc_out sc_logic 1 signal 16 } 
	{ iBuff_V_4_d0 sc_out sc_lv 64 signal 16 } 
	{ iBuff_V_4_address1 sc_out sc_lv 10 signal 16 } 
	{ iBuff_V_4_ce1 sc_out sc_logic 1 signal 16 } 
	{ iBuff_V_4_we1 sc_out sc_logic 1 signal 16 } 
	{ iBuff_V_4_d1 sc_out sc_lv 64 signal 16 } 
	{ iBuff_V_3_address0 sc_out sc_lv 10 signal 17 } 
	{ iBuff_V_3_ce0 sc_out sc_logic 1 signal 17 } 
	{ iBuff_V_3_we0 sc_out sc_logic 1 signal 17 } 
	{ iBuff_V_3_d0 sc_out sc_lv 64 signal 17 } 
	{ iBuff_V_2_address0 sc_out sc_lv 10 signal 18 } 
	{ iBuff_V_2_ce0 sc_out sc_logic 1 signal 18 } 
	{ iBuff_V_2_we0 sc_out sc_logic 1 signal 18 } 
	{ iBuff_V_2_d0 sc_out sc_lv 64 signal 18 } 
	{ iBuff_V_1_address0 sc_out sc_lv 10 signal 19 } 
	{ iBuff_V_1_ce0 sc_out sc_logic 1 signal 19 } 
	{ iBuff_V_1_we0 sc_out sc_logic 1 signal 19 } 
	{ iBuff_V_1_d0 sc_out sc_lv 64 signal 19 } 
	{ iBuff_V_1_address1 sc_out sc_lv 10 signal 19 } 
	{ iBuff_V_1_ce1 sc_out sc_logic 1 signal 19 } 
	{ iBuff_V_1_we1 sc_out sc_logic 1 signal 19 } 
	{ iBuff_V_1_d1 sc_out sc_lv 64 signal 19 } 
	{ iBuff_V_address0 sc_out sc_lv 10 signal 20 } 
	{ iBuff_V_ce0 sc_out sc_logic 1 signal 20 } 
	{ iBuff_V_we0 sc_out sc_logic 1 signal 20 } 
	{ iBuff_V_d0 sc_out sc_lv 64 signal 20 } 
	{ iBuff_V_address1 sc_out sc_lv 10 signal 20 } 
	{ iBuff_V_ce1 sc_out sc_logic 1 signal 20 } 
	{ iBuff_V_we1 sc_out sc_logic 1 signal 20 } 
	{ iBuff_V_d1 sc_out sc_lv 64 signal 20 } 
	{ zext_ln303 sc_in sc_lv 6 signal 22 } 
	{ op2_assign_32_cast sc_in sc_lv 16 signal 23 } 
	{ ram_row_depth_cast53_cast sc_in sc_lv 6 signal 24 } 
	{ sdiv_ln305_1_cast sc_in sc_lv 5 signal 25 } 
	{ sext_ln305 sc_in sc_lv 16 signal 26 } 
	{ op2_assign sc_in sc_lv 18 signal 27 } 
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
 	{ "name": "p_dst1_data_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "p_dst1_data", "role": "dout" }} , 
 	{ "name": "p_dst1_data_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_dst1_data", "role": "empty_n" }} , 
 	{ "name": "p_dst1_data_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_dst1_data", "role": "read" }} , 
 	{ "name": "lBound", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "lBound", "role": "default" }} , 
 	{ "name": "iBuff_V_19_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "iBuff_V_19", "role": "address0" }} , 
 	{ "name": "iBuff_V_19_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "iBuff_V_19", "role": "ce0" }} , 
 	{ "name": "iBuff_V_19_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "iBuff_V_19", "role": "we0" }} , 
 	{ "name": "iBuff_V_19_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "iBuff_V_19", "role": "d0" }} , 
 	{ "name": "iBuff_V_19_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "iBuff_V_19", "role": "address1" }} , 
 	{ "name": "iBuff_V_19_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "iBuff_V_19", "role": "ce1" }} , 
 	{ "name": "iBuff_V_19_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "iBuff_V_19", "role": "we1" }} , 
 	{ "name": "iBuff_V_19_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "iBuff_V_19", "role": "d1" }} , 
 	{ "name": "iBuff_V_18_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "iBuff_V_18", "role": "address0" }} , 
 	{ "name": "iBuff_V_18_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "iBuff_V_18", "role": "ce0" }} , 
 	{ "name": "iBuff_V_18_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "iBuff_V_18", "role": "we0" }} , 
 	{ "name": "iBuff_V_18_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "iBuff_V_18", "role": "d0" }} , 
 	{ "name": "iBuff_V_17_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "iBuff_V_17", "role": "address0" }} , 
 	{ "name": "iBuff_V_17_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "iBuff_V_17", "role": "ce0" }} , 
 	{ "name": "iBuff_V_17_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "iBuff_V_17", "role": "we0" }} , 
 	{ "name": "iBuff_V_17_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "iBuff_V_17", "role": "d0" }} , 
 	{ "name": "iBuff_V_16_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "iBuff_V_16", "role": "address0" }} , 
 	{ "name": "iBuff_V_16_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "iBuff_V_16", "role": "ce0" }} , 
 	{ "name": "iBuff_V_16_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "iBuff_V_16", "role": "we0" }} , 
 	{ "name": "iBuff_V_16_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "iBuff_V_16", "role": "d0" }} , 
 	{ "name": "iBuff_V_16_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "iBuff_V_16", "role": "address1" }} , 
 	{ "name": "iBuff_V_16_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "iBuff_V_16", "role": "ce1" }} , 
 	{ "name": "iBuff_V_16_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "iBuff_V_16", "role": "we1" }} , 
 	{ "name": "iBuff_V_16_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "iBuff_V_16", "role": "d1" }} , 
 	{ "name": "iBuff_V_15_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "iBuff_V_15", "role": "address0" }} , 
 	{ "name": "iBuff_V_15_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "iBuff_V_15", "role": "ce0" }} , 
 	{ "name": "iBuff_V_15_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "iBuff_V_15", "role": "we0" }} , 
 	{ "name": "iBuff_V_15_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "iBuff_V_15", "role": "d0" }} , 
 	{ "name": "iBuff_V_14_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "iBuff_V_14", "role": "address0" }} , 
 	{ "name": "iBuff_V_14_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "iBuff_V_14", "role": "ce0" }} , 
 	{ "name": "iBuff_V_14_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "iBuff_V_14", "role": "we0" }} , 
 	{ "name": "iBuff_V_14_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "iBuff_V_14", "role": "d0" }} , 
 	{ "name": "iBuff_V_13_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "iBuff_V_13", "role": "address0" }} , 
 	{ "name": "iBuff_V_13_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "iBuff_V_13", "role": "ce0" }} , 
 	{ "name": "iBuff_V_13_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "iBuff_V_13", "role": "we0" }} , 
 	{ "name": "iBuff_V_13_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "iBuff_V_13", "role": "d0" }} , 
 	{ "name": "iBuff_V_13_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "iBuff_V_13", "role": "address1" }} , 
 	{ "name": "iBuff_V_13_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "iBuff_V_13", "role": "ce1" }} , 
 	{ "name": "iBuff_V_13_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "iBuff_V_13", "role": "we1" }} , 
 	{ "name": "iBuff_V_13_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "iBuff_V_13", "role": "d1" }} , 
 	{ "name": "iBuff_V_12_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "iBuff_V_12", "role": "address0" }} , 
 	{ "name": "iBuff_V_12_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "iBuff_V_12", "role": "ce0" }} , 
 	{ "name": "iBuff_V_12_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "iBuff_V_12", "role": "we0" }} , 
 	{ "name": "iBuff_V_12_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "iBuff_V_12", "role": "d0" }} , 
 	{ "name": "iBuff_V_11_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "iBuff_V_11", "role": "address0" }} , 
 	{ "name": "iBuff_V_11_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "iBuff_V_11", "role": "ce0" }} , 
 	{ "name": "iBuff_V_11_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "iBuff_V_11", "role": "we0" }} , 
 	{ "name": "iBuff_V_11_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "iBuff_V_11", "role": "d0" }} , 
 	{ "name": "iBuff_V_10_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "iBuff_V_10", "role": "address0" }} , 
 	{ "name": "iBuff_V_10_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "iBuff_V_10", "role": "ce0" }} , 
 	{ "name": "iBuff_V_10_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "iBuff_V_10", "role": "we0" }} , 
 	{ "name": "iBuff_V_10_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "iBuff_V_10", "role": "d0" }} , 
 	{ "name": "iBuff_V_10_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "iBuff_V_10", "role": "address1" }} , 
 	{ "name": "iBuff_V_10_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "iBuff_V_10", "role": "ce1" }} , 
 	{ "name": "iBuff_V_10_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "iBuff_V_10", "role": "we1" }} , 
 	{ "name": "iBuff_V_10_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "iBuff_V_10", "role": "d1" }} , 
 	{ "name": "iBuff_V_9_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "iBuff_V_9", "role": "address0" }} , 
 	{ "name": "iBuff_V_9_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "iBuff_V_9", "role": "ce0" }} , 
 	{ "name": "iBuff_V_9_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "iBuff_V_9", "role": "we0" }} , 
 	{ "name": "iBuff_V_9_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "iBuff_V_9", "role": "d0" }} , 
 	{ "name": "iBuff_V_8_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "iBuff_V_8", "role": "address0" }} , 
 	{ "name": "iBuff_V_8_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "iBuff_V_8", "role": "ce0" }} , 
 	{ "name": "iBuff_V_8_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "iBuff_V_8", "role": "we0" }} , 
 	{ "name": "iBuff_V_8_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "iBuff_V_8", "role": "d0" }} , 
 	{ "name": "iBuff_V_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "iBuff_V_7", "role": "address0" }} , 
 	{ "name": "iBuff_V_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "iBuff_V_7", "role": "ce0" }} , 
 	{ "name": "iBuff_V_7_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "iBuff_V_7", "role": "we0" }} , 
 	{ "name": "iBuff_V_7_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "iBuff_V_7", "role": "d0" }} , 
 	{ "name": "iBuff_V_7_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "iBuff_V_7", "role": "address1" }} , 
 	{ "name": "iBuff_V_7_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "iBuff_V_7", "role": "ce1" }} , 
 	{ "name": "iBuff_V_7_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "iBuff_V_7", "role": "we1" }} , 
 	{ "name": "iBuff_V_7_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "iBuff_V_7", "role": "d1" }} , 
 	{ "name": "iBuff_V_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "iBuff_V_6", "role": "address0" }} , 
 	{ "name": "iBuff_V_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "iBuff_V_6", "role": "ce0" }} , 
 	{ "name": "iBuff_V_6_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "iBuff_V_6", "role": "we0" }} , 
 	{ "name": "iBuff_V_6_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "iBuff_V_6", "role": "d0" }} , 
 	{ "name": "iBuff_V_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "iBuff_V_5", "role": "address0" }} , 
 	{ "name": "iBuff_V_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "iBuff_V_5", "role": "ce0" }} , 
 	{ "name": "iBuff_V_5_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "iBuff_V_5", "role": "we0" }} , 
 	{ "name": "iBuff_V_5_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "iBuff_V_5", "role": "d0" }} , 
 	{ "name": "iBuff_V_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "iBuff_V_4", "role": "address0" }} , 
 	{ "name": "iBuff_V_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "iBuff_V_4", "role": "ce0" }} , 
 	{ "name": "iBuff_V_4_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "iBuff_V_4", "role": "we0" }} , 
 	{ "name": "iBuff_V_4_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "iBuff_V_4", "role": "d0" }} , 
 	{ "name": "iBuff_V_4_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "iBuff_V_4", "role": "address1" }} , 
 	{ "name": "iBuff_V_4_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "iBuff_V_4", "role": "ce1" }} , 
 	{ "name": "iBuff_V_4_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "iBuff_V_4", "role": "we1" }} , 
 	{ "name": "iBuff_V_4_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "iBuff_V_4", "role": "d1" }} , 
 	{ "name": "iBuff_V_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "iBuff_V_3", "role": "address0" }} , 
 	{ "name": "iBuff_V_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "iBuff_V_3", "role": "ce0" }} , 
 	{ "name": "iBuff_V_3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "iBuff_V_3", "role": "we0" }} , 
 	{ "name": "iBuff_V_3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "iBuff_V_3", "role": "d0" }} , 
 	{ "name": "iBuff_V_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "iBuff_V_2", "role": "address0" }} , 
 	{ "name": "iBuff_V_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "iBuff_V_2", "role": "ce0" }} , 
 	{ "name": "iBuff_V_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "iBuff_V_2", "role": "we0" }} , 
 	{ "name": "iBuff_V_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "iBuff_V_2", "role": "d0" }} , 
 	{ "name": "iBuff_V_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "iBuff_V_1", "role": "address0" }} , 
 	{ "name": "iBuff_V_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "iBuff_V_1", "role": "ce0" }} , 
 	{ "name": "iBuff_V_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "iBuff_V_1", "role": "we0" }} , 
 	{ "name": "iBuff_V_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "iBuff_V_1", "role": "d0" }} , 
 	{ "name": "iBuff_V_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "iBuff_V_1", "role": "address1" }} , 
 	{ "name": "iBuff_V_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "iBuff_V_1", "role": "ce1" }} , 
 	{ "name": "iBuff_V_1_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "iBuff_V_1", "role": "we1" }} , 
 	{ "name": "iBuff_V_1_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "iBuff_V_1", "role": "d1" }} , 
 	{ "name": "iBuff_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "iBuff_V", "role": "address0" }} , 
 	{ "name": "iBuff_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "iBuff_V", "role": "ce0" }} , 
 	{ "name": "iBuff_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "iBuff_V", "role": "we0" }} , 
 	{ "name": "iBuff_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "iBuff_V", "role": "d0" }} , 
 	{ "name": "iBuff_V_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "iBuff_V", "role": "address1" }} , 
 	{ "name": "iBuff_V_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "iBuff_V", "role": "ce1" }} , 
 	{ "name": "iBuff_V_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "iBuff_V", "role": "we1" }} , 
 	{ "name": "iBuff_V_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "iBuff_V", "role": "d1" }} , 
 	{ "name": "zext_ln303", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "zext_ln303", "role": "default" }} , 
 	{ "name": "op2_assign_32_cast", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "op2_assign_32_cast", "role": "default" }} , 
 	{ "name": "ram_row_depth_cast53_cast", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "ram_row_depth_cast53_cast", "role": "default" }} , 
 	{ "name": "sdiv_ln305_1_cast", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "sdiv_ln305_1_cast", "role": "default" }} , 
 	{ "name": "sext_ln305", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "sext_ln305", "role": "default" }} , 
 	{ "name": "op2_assign", "direction": "in", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "op2_assign", "role": "default" }} , 
 	{ "name": "ap_ext_blocking_n", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_ext_blocking_n", "role": "default" }} , 
 	{ "name": "ap_str_blocking_n", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_str_blocking_n", "role": "default" }} , 
 	{ "name": "ap_int_blocking_n", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_int_blocking_n", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "edgetracing_accel_Pipeline_Read_N_Arrange",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "16203", "EstimateLatencyMax" : "16803",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"DependenceCheck" : [
			{"FromInitialState" : "ap_enable_state3_pp0_iter2_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter2", "FromInitialOperation" : "ap_enable_operation_119", "FromInitialSV" : "2", "FromFinalState" : "ap_enable_state3_pp0_iter2_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter2", "FromFinalOperation" : "ap_enable_operation_119", "FromFinalSV" : "2", "FromAddress" : "iBuff_V_16_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state4_pp0_iter3_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter3", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_161", "ToInitialSV" : "3", "ToFinalState" : "ap_enable_state4_pp0_iter3_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter3", "ToFinalOperation" : "ap_enable_operation_161", "ToFinalSV" : "3", "ToAddress" : "iBuff_V_16_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/home/overman/dev/workspaces/vision/vision_kernels/src/canny/../imgproc/xf_edge_tracing.hpp:337:9)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state3_pp0_iter2_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter2", "FromInitialOperation" : "ap_enable_operation_119", "FromInitialSV" : "2", "FromFinalState" : "ap_enable_state3_pp0_iter2_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter2", "FromFinalOperation" : "ap_enable_operation_119", "FromFinalSV" : "2", "FromAddress" : "iBuff_V_16_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state4_pp0_iter3_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter3", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_184", "ToInitialSV" : "3", "ToFinalState" : "ap_enable_state4_pp0_iter3_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter3", "ToFinalOperation" : "ap_enable_operation_184", "ToFinalSV" : "3", "ToAddress" : "iBuff_V_16_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/home/overman/dev/workspaces/vision/vision_kernels/src/canny/../imgproc/xf_edge_tracing.hpp:337:9)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state3_pp0_iter2_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter2", "FromInitialOperation" : "ap_enable_operation_122", "FromInitialSV" : "2", "FromFinalState" : "ap_enable_state3_pp0_iter2_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter2", "FromFinalOperation" : "ap_enable_operation_122", "FromFinalSV" : "2", "FromAddress" : "iBuff_V_13_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state4_pp0_iter3_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter3", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_163", "ToInitialSV" : "3", "ToFinalState" : "ap_enable_state4_pp0_iter3_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter3", "ToFinalOperation" : "ap_enable_operation_163", "ToFinalSV" : "3", "ToAddress" : "iBuff_V_13_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/home/overman/dev/workspaces/vision/vision_kernels/src/canny/../imgproc/xf_edge_tracing.hpp:337:9)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state3_pp0_iter2_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter2", "FromInitialOperation" : "ap_enable_operation_122", "FromInitialSV" : "2", "FromFinalState" : "ap_enable_state3_pp0_iter2_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter2", "FromFinalOperation" : "ap_enable_operation_122", "FromFinalSV" : "2", "FromAddress" : "iBuff_V_13_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state4_pp0_iter3_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter3", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_186", "ToInitialSV" : "3", "ToFinalState" : "ap_enable_state4_pp0_iter3_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter3", "ToFinalOperation" : "ap_enable_operation_186", "ToFinalSV" : "3", "ToAddress" : "iBuff_V_13_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/home/overman/dev/workspaces/vision/vision_kernels/src/canny/../imgproc/xf_edge_tracing.hpp:337:9)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state3_pp0_iter2_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter2", "FromInitialOperation" : "ap_enable_operation_125", "FromInitialSV" : "2", "FromFinalState" : "ap_enable_state3_pp0_iter2_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter2", "FromFinalOperation" : "ap_enable_operation_125", "FromFinalSV" : "2", "FromAddress" : "iBuff_V_10_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state4_pp0_iter3_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter3", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_165", "ToInitialSV" : "3", "ToFinalState" : "ap_enable_state4_pp0_iter3_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter3", "ToFinalOperation" : "ap_enable_operation_165", "ToFinalSV" : "3", "ToAddress" : "iBuff_V_10_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/home/overman/dev/workspaces/vision/vision_kernels/src/canny/../imgproc/xf_edge_tracing.hpp:337:9)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state3_pp0_iter2_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter2", "FromInitialOperation" : "ap_enable_operation_125", "FromInitialSV" : "2", "FromFinalState" : "ap_enable_state3_pp0_iter2_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter2", "FromFinalOperation" : "ap_enable_operation_125", "FromFinalSV" : "2", "FromAddress" : "iBuff_V_10_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state4_pp0_iter3_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter3", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_188", "ToInitialSV" : "3", "ToFinalState" : "ap_enable_state4_pp0_iter3_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter3", "ToFinalOperation" : "ap_enable_operation_188", "ToFinalSV" : "3", "ToAddress" : "iBuff_V_10_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/home/overman/dev/workspaces/vision/vision_kernels/src/canny/../imgproc/xf_edge_tracing.hpp:337:9)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state3_pp0_iter2_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter2", "FromInitialOperation" : "ap_enable_operation_128", "FromInitialSV" : "2", "FromFinalState" : "ap_enable_state3_pp0_iter2_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter2", "FromFinalOperation" : "ap_enable_operation_128", "FromFinalSV" : "2", "FromAddress" : "iBuff_V_7_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state4_pp0_iter3_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter3", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_167", "ToInitialSV" : "3", "ToFinalState" : "ap_enable_state4_pp0_iter3_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter3", "ToFinalOperation" : "ap_enable_operation_167", "ToFinalSV" : "3", "ToAddress" : "iBuff_V_7_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/home/overman/dev/workspaces/vision/vision_kernels/src/canny/../imgproc/xf_edge_tracing.hpp:337:9)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state3_pp0_iter2_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter2", "FromInitialOperation" : "ap_enable_operation_128", "FromInitialSV" : "2", "FromFinalState" : "ap_enable_state3_pp0_iter2_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter2", "FromFinalOperation" : "ap_enable_operation_128", "FromFinalSV" : "2", "FromAddress" : "iBuff_V_7_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state4_pp0_iter3_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter3", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_190", "ToInitialSV" : "3", "ToFinalState" : "ap_enable_state4_pp0_iter3_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter3", "ToFinalOperation" : "ap_enable_operation_190", "ToFinalSV" : "3", "ToAddress" : "iBuff_V_7_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/home/overman/dev/workspaces/vision/vision_kernels/src/canny/../imgproc/xf_edge_tracing.hpp:337:9)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state3_pp0_iter2_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter2", "FromInitialOperation" : "ap_enable_operation_131", "FromInitialSV" : "2", "FromFinalState" : "ap_enable_state3_pp0_iter2_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter2", "FromFinalOperation" : "ap_enable_operation_131", "FromFinalSV" : "2", "FromAddress" : "iBuff_V_4_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state4_pp0_iter3_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter3", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_169", "ToInitialSV" : "3", "ToFinalState" : "ap_enable_state4_pp0_iter3_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter3", "ToFinalOperation" : "ap_enable_operation_169", "ToFinalSV" : "3", "ToAddress" : "iBuff_V_4_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/home/overman/dev/workspaces/vision/vision_kernels/src/canny/../imgproc/xf_edge_tracing.hpp:337:9)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state3_pp0_iter2_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter2", "FromInitialOperation" : "ap_enable_operation_131", "FromInitialSV" : "2", "FromFinalState" : "ap_enable_state3_pp0_iter2_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter2", "FromFinalOperation" : "ap_enable_operation_131", "FromFinalSV" : "2", "FromAddress" : "iBuff_V_4_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state4_pp0_iter3_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter3", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_192", "ToInitialSV" : "3", "ToFinalState" : "ap_enable_state4_pp0_iter3_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter3", "ToFinalOperation" : "ap_enable_operation_192", "ToFinalSV" : "3", "ToAddress" : "iBuff_V_4_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/home/overman/dev/workspaces/vision/vision_kernels/src/canny/../imgproc/xf_edge_tracing.hpp:337:9)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state3_pp0_iter2_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter2", "FromInitialOperation" : "ap_enable_operation_134", "FromInitialSV" : "2", "FromFinalState" : "ap_enable_state3_pp0_iter2_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter2", "FromFinalOperation" : "ap_enable_operation_134", "FromFinalSV" : "2", "FromAddress" : "iBuff_V_1_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state4_pp0_iter3_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter3", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_171", "ToInitialSV" : "3", "ToFinalState" : "ap_enable_state4_pp0_iter3_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter3", "ToFinalOperation" : "ap_enable_operation_171", "ToFinalSV" : "3", "ToAddress" : "iBuff_V_1_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/home/overman/dev/workspaces/vision/vision_kernels/src/canny/../imgproc/xf_edge_tracing.hpp:337:9)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state3_pp0_iter2_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter2", "FromInitialOperation" : "ap_enable_operation_134", "FromInitialSV" : "2", "FromFinalState" : "ap_enable_state3_pp0_iter2_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter2", "FromFinalOperation" : "ap_enable_operation_134", "FromFinalSV" : "2", "FromAddress" : "iBuff_V_1_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state4_pp0_iter3_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter3", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_194", "ToInitialSV" : "3", "ToFinalState" : "ap_enable_state4_pp0_iter3_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter3", "ToFinalOperation" : "ap_enable_operation_194", "ToFinalSV" : "3", "ToAddress" : "iBuff_V_1_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/home/overman/dev/workspaces/vision/vision_kernels/src/canny/../imgproc/xf_edge_tracing.hpp:337:9)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state3_pp0_iter2_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter2", "FromInitialOperation" : "ap_enable_operation_135", "FromInitialSV" : "2", "FromFinalState" : "ap_enable_state3_pp0_iter2_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter2", "FromFinalOperation" : "ap_enable_operation_135", "FromFinalSV" : "2", "FromAddress" : "iBuff_V_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state4_pp0_iter3_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter3", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_159", "ToInitialSV" : "3", "ToFinalState" : "ap_enable_state4_pp0_iter3_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter3", "ToFinalOperation" : "ap_enable_operation_159", "ToFinalSV" : "3", "ToAddress" : "iBuff_V_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/home/overman/dev/workspaces/vision/vision_kernels/src/canny/../imgproc/xf_edge_tracing.hpp:337:9)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state3_pp0_iter2_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter2", "FromInitialOperation" : "ap_enable_operation_135", "FromInitialSV" : "2", "FromFinalState" : "ap_enable_state3_pp0_iter2_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter2", "FromFinalOperation" : "ap_enable_operation_135", "FromFinalSV" : "2", "FromAddress" : "iBuff_V_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state4_pp0_iter3_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter3", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_198", "ToInitialSV" : "3", "ToFinalState" : "ap_enable_state4_pp0_iter3_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter3", "ToFinalOperation" : "ap_enable_operation_198", "ToFinalSV" : "3", "ToAddress" : "iBuff_V_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/home/overman/dev/workspaces/vision/vision_kernels/src/canny/../imgproc/xf_edge_tracing.hpp:337:9)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state3_pp0_iter2_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter2", "FromInitialOperation" : "ap_enable_operation_136", "FromInitialSV" : "2", "FromFinalState" : "ap_enable_state3_pp0_iter2_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter2", "FromFinalOperation" : "ap_enable_operation_136", "FromFinalSV" : "2", "FromAddress" : "iBuff_V_19_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state4_pp0_iter3_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter3", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_173", "ToInitialSV" : "3", "ToFinalState" : "ap_enable_state4_pp0_iter3_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter3", "ToFinalOperation" : "ap_enable_operation_173", "ToFinalSV" : "3", "ToAddress" : "iBuff_V_19_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/home/overman/dev/workspaces/vision/vision_kernels/src/canny/../imgproc/xf_edge_tracing.hpp:337:9)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state3_pp0_iter2_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter2", "FromInitialOperation" : "ap_enable_operation_136", "FromInitialSV" : "2", "FromFinalState" : "ap_enable_state3_pp0_iter2_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter2", "FromFinalOperation" : "ap_enable_operation_136", "FromFinalSV" : "2", "FromAddress" : "iBuff_V_19_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state4_pp0_iter3_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter3", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_196", "ToInitialSV" : "3", "ToFinalState" : "ap_enable_state4_pp0_iter3_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter3", "ToFinalOperation" : "ap_enable_operation_196", "ToFinalSV" : "3", "ToAddress" : "iBuff_V_19_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/home/overman/dev/workspaces/vision/vision_kernels/src/canny/../imgproc/xf_edge_tracing.hpp:337:9)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state4_pp0_iter3_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter3", "FromInitialOperation" : "ap_enable_operation_159", "FromInitialSV" : "3", "FromFinalState" : "ap_enable_state4_pp0_iter3_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter3", "FromFinalOperation" : "ap_enable_operation_159", "FromFinalSV" : "3", "FromAddress" : "iBuff_V_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state3_pp0_iter2_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter2", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter3", "ToInitialOperation" : "ap_enable_operation_135", "ToInitialSV" : "2", "ToFinalState" : "ap_enable_state3_pp0_iter2_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter2", "ToFinalOperation" : "ap_enable_operation_135", "ToFinalSV" : "2", "ToAddress" : "iBuff_V_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/home/overman/dev/workspaces/vision/vision_kernels/src/canny/../imgproc/xf_edge_tracing.hpp:337:9)", "Type" : "WAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state3_pp0_iter2_stage0", "ap_enable_state4_pp0_iter3_stage0"]},
			{"FromInitialState" : "ap_enable_state4_pp0_iter3_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter3", "FromInitialOperation" : "ap_enable_operation_159", "FromInitialSV" : "3", "FromFinalState" : "ap_enable_state4_pp0_iter3_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter3", "FromFinalOperation" : "ap_enable_operation_159", "FromFinalSV" : "3", "FromAddress" : "iBuff_V_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state4_pp0_iter3_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter3", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_198", "ToInitialSV" : "3", "ToFinalState" : "ap_enable_state4_pp0_iter3_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter3", "ToFinalOperation" : "ap_enable_operation_198", "ToFinalSV" : "3", "ToAddress" : "iBuff_V_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/home/overman/dev/workspaces/vision/vision_kernels/src/canny/../imgproc/xf_edge_tracing.hpp:337:9)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state4_pp0_iter3_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter3", "FromInitialOperation" : "ap_enable_operation_161", "FromInitialSV" : "3", "FromFinalState" : "ap_enable_state4_pp0_iter3_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter3", "FromFinalOperation" : "ap_enable_operation_161", "FromFinalSV" : "3", "FromAddress" : "iBuff_V_16_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state3_pp0_iter2_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter2", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter3", "ToInitialOperation" : "ap_enable_operation_119", "ToInitialSV" : "2", "ToFinalState" : "ap_enable_state3_pp0_iter2_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter2", "ToFinalOperation" : "ap_enable_operation_119", "ToFinalSV" : "2", "ToAddress" : "iBuff_V_16_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/home/overman/dev/workspaces/vision/vision_kernels/src/canny/../imgproc/xf_edge_tracing.hpp:337:9)", "Type" : "WAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state3_pp0_iter2_stage0", "ap_enable_state4_pp0_iter3_stage0"]},
			{"FromInitialState" : "ap_enable_state4_pp0_iter3_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter3", "FromInitialOperation" : "ap_enable_operation_161", "FromInitialSV" : "3", "FromFinalState" : "ap_enable_state4_pp0_iter3_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter3", "FromFinalOperation" : "ap_enable_operation_161", "FromFinalSV" : "3", "FromAddress" : "iBuff_V_16_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state4_pp0_iter3_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter3", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_184", "ToInitialSV" : "3", "ToFinalState" : "ap_enable_state4_pp0_iter3_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter3", "ToFinalOperation" : "ap_enable_operation_184", "ToFinalSV" : "3", "ToAddress" : "iBuff_V_16_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/home/overman/dev/workspaces/vision/vision_kernels/src/canny/../imgproc/xf_edge_tracing.hpp:337:9)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state4_pp0_iter3_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter3", "FromInitialOperation" : "ap_enable_operation_163", "FromInitialSV" : "3", "FromFinalState" : "ap_enable_state4_pp0_iter3_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter3", "FromFinalOperation" : "ap_enable_operation_163", "FromFinalSV" : "3", "FromAddress" : "iBuff_V_13_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state3_pp0_iter2_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter2", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter3", "ToInitialOperation" : "ap_enable_operation_122", "ToInitialSV" : "2", "ToFinalState" : "ap_enable_state3_pp0_iter2_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter2", "ToFinalOperation" : "ap_enable_operation_122", "ToFinalSV" : "2", "ToAddress" : "iBuff_V_13_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/home/overman/dev/workspaces/vision/vision_kernels/src/canny/../imgproc/xf_edge_tracing.hpp:337:9)", "Type" : "WAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state3_pp0_iter2_stage0", "ap_enable_state4_pp0_iter3_stage0"]},
			{"FromInitialState" : "ap_enable_state4_pp0_iter3_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter3", "FromInitialOperation" : "ap_enable_operation_163", "FromInitialSV" : "3", "FromFinalState" : "ap_enable_state4_pp0_iter3_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter3", "FromFinalOperation" : "ap_enable_operation_163", "FromFinalSV" : "3", "FromAddress" : "iBuff_V_13_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state4_pp0_iter3_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter3", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_186", "ToInitialSV" : "3", "ToFinalState" : "ap_enable_state4_pp0_iter3_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter3", "ToFinalOperation" : "ap_enable_operation_186", "ToFinalSV" : "3", "ToAddress" : "iBuff_V_13_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/home/overman/dev/workspaces/vision/vision_kernels/src/canny/../imgproc/xf_edge_tracing.hpp:337:9)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state4_pp0_iter3_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter3", "FromInitialOperation" : "ap_enable_operation_165", "FromInitialSV" : "3", "FromFinalState" : "ap_enable_state4_pp0_iter3_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter3", "FromFinalOperation" : "ap_enable_operation_165", "FromFinalSV" : "3", "FromAddress" : "iBuff_V_10_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state3_pp0_iter2_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter2", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter3", "ToInitialOperation" : "ap_enable_operation_125", "ToInitialSV" : "2", "ToFinalState" : "ap_enable_state3_pp0_iter2_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter2", "ToFinalOperation" : "ap_enable_operation_125", "ToFinalSV" : "2", "ToAddress" : "iBuff_V_10_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/home/overman/dev/workspaces/vision/vision_kernels/src/canny/../imgproc/xf_edge_tracing.hpp:337:9)", "Type" : "WAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state3_pp0_iter2_stage0", "ap_enable_state4_pp0_iter3_stage0"]},
			{"FromInitialState" : "ap_enable_state4_pp0_iter3_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter3", "FromInitialOperation" : "ap_enable_operation_165", "FromInitialSV" : "3", "FromFinalState" : "ap_enable_state4_pp0_iter3_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter3", "FromFinalOperation" : "ap_enable_operation_165", "FromFinalSV" : "3", "FromAddress" : "iBuff_V_10_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state4_pp0_iter3_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter3", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_188", "ToInitialSV" : "3", "ToFinalState" : "ap_enable_state4_pp0_iter3_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter3", "ToFinalOperation" : "ap_enable_operation_188", "ToFinalSV" : "3", "ToAddress" : "iBuff_V_10_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/home/overman/dev/workspaces/vision/vision_kernels/src/canny/../imgproc/xf_edge_tracing.hpp:337:9)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state4_pp0_iter3_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter3", "FromInitialOperation" : "ap_enable_operation_167", "FromInitialSV" : "3", "FromFinalState" : "ap_enable_state4_pp0_iter3_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter3", "FromFinalOperation" : "ap_enable_operation_167", "FromFinalSV" : "3", "FromAddress" : "iBuff_V_7_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state3_pp0_iter2_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter2", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter3", "ToInitialOperation" : "ap_enable_operation_128", "ToInitialSV" : "2", "ToFinalState" : "ap_enable_state3_pp0_iter2_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter2", "ToFinalOperation" : "ap_enable_operation_128", "ToFinalSV" : "2", "ToAddress" : "iBuff_V_7_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/home/overman/dev/workspaces/vision/vision_kernels/src/canny/../imgproc/xf_edge_tracing.hpp:337:9)", "Type" : "WAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state3_pp0_iter2_stage0", "ap_enable_state4_pp0_iter3_stage0"]},
			{"FromInitialState" : "ap_enable_state4_pp0_iter3_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter3", "FromInitialOperation" : "ap_enable_operation_167", "FromInitialSV" : "3", "FromFinalState" : "ap_enable_state4_pp0_iter3_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter3", "FromFinalOperation" : "ap_enable_operation_167", "FromFinalSV" : "3", "FromAddress" : "iBuff_V_7_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state4_pp0_iter3_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter3", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_190", "ToInitialSV" : "3", "ToFinalState" : "ap_enable_state4_pp0_iter3_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter3", "ToFinalOperation" : "ap_enable_operation_190", "ToFinalSV" : "3", "ToAddress" : "iBuff_V_7_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/home/overman/dev/workspaces/vision/vision_kernels/src/canny/../imgproc/xf_edge_tracing.hpp:337:9)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state4_pp0_iter3_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter3", "FromInitialOperation" : "ap_enable_operation_169", "FromInitialSV" : "3", "FromFinalState" : "ap_enable_state4_pp0_iter3_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter3", "FromFinalOperation" : "ap_enable_operation_169", "FromFinalSV" : "3", "FromAddress" : "iBuff_V_4_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state3_pp0_iter2_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter2", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter3", "ToInitialOperation" : "ap_enable_operation_131", "ToInitialSV" : "2", "ToFinalState" : "ap_enable_state3_pp0_iter2_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter2", "ToFinalOperation" : "ap_enable_operation_131", "ToFinalSV" : "2", "ToAddress" : "iBuff_V_4_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/home/overman/dev/workspaces/vision/vision_kernels/src/canny/../imgproc/xf_edge_tracing.hpp:337:9)", "Type" : "WAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state3_pp0_iter2_stage0", "ap_enable_state4_pp0_iter3_stage0"]},
			{"FromInitialState" : "ap_enable_state4_pp0_iter3_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter3", "FromInitialOperation" : "ap_enable_operation_169", "FromInitialSV" : "3", "FromFinalState" : "ap_enable_state4_pp0_iter3_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter3", "FromFinalOperation" : "ap_enable_operation_169", "FromFinalSV" : "3", "FromAddress" : "iBuff_V_4_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state4_pp0_iter3_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter3", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_192", "ToInitialSV" : "3", "ToFinalState" : "ap_enable_state4_pp0_iter3_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter3", "ToFinalOperation" : "ap_enable_operation_192", "ToFinalSV" : "3", "ToAddress" : "iBuff_V_4_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/home/overman/dev/workspaces/vision/vision_kernels/src/canny/../imgproc/xf_edge_tracing.hpp:337:9)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state4_pp0_iter3_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter3", "FromInitialOperation" : "ap_enable_operation_171", "FromInitialSV" : "3", "FromFinalState" : "ap_enable_state4_pp0_iter3_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter3", "FromFinalOperation" : "ap_enable_operation_171", "FromFinalSV" : "3", "FromAddress" : "iBuff_V_1_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state3_pp0_iter2_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter2", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter3", "ToInitialOperation" : "ap_enable_operation_134", "ToInitialSV" : "2", "ToFinalState" : "ap_enable_state3_pp0_iter2_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter2", "ToFinalOperation" : "ap_enable_operation_134", "ToFinalSV" : "2", "ToAddress" : "iBuff_V_1_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/home/overman/dev/workspaces/vision/vision_kernels/src/canny/../imgproc/xf_edge_tracing.hpp:337:9)", "Type" : "WAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state3_pp0_iter2_stage0", "ap_enable_state4_pp0_iter3_stage0"]},
			{"FromInitialState" : "ap_enable_state4_pp0_iter3_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter3", "FromInitialOperation" : "ap_enable_operation_171", "FromInitialSV" : "3", "FromFinalState" : "ap_enable_state4_pp0_iter3_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter3", "FromFinalOperation" : "ap_enable_operation_171", "FromFinalSV" : "3", "FromAddress" : "iBuff_V_1_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state4_pp0_iter3_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter3", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_194", "ToInitialSV" : "3", "ToFinalState" : "ap_enable_state4_pp0_iter3_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter3", "ToFinalOperation" : "ap_enable_operation_194", "ToFinalSV" : "3", "ToAddress" : "iBuff_V_1_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/home/overman/dev/workspaces/vision/vision_kernels/src/canny/../imgproc/xf_edge_tracing.hpp:337:9)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state4_pp0_iter3_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter3", "FromInitialOperation" : "ap_enable_operation_173", "FromInitialSV" : "3", "FromFinalState" : "ap_enable_state4_pp0_iter3_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter3", "FromFinalOperation" : "ap_enable_operation_173", "FromFinalSV" : "3", "FromAddress" : "iBuff_V_19_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state3_pp0_iter2_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter2", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter3", "ToInitialOperation" : "ap_enable_operation_136", "ToInitialSV" : "2", "ToFinalState" : "ap_enable_state3_pp0_iter2_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter2", "ToFinalOperation" : "ap_enable_operation_136", "ToFinalSV" : "2", "ToAddress" : "iBuff_V_19_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/home/overman/dev/workspaces/vision/vision_kernels/src/canny/../imgproc/xf_edge_tracing.hpp:337:9)", "Type" : "WAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state3_pp0_iter2_stage0", "ap_enable_state4_pp0_iter3_stage0"]},
			{"FromInitialState" : "ap_enable_state4_pp0_iter3_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter3", "FromInitialOperation" : "ap_enable_operation_173", "FromInitialSV" : "3", "FromFinalState" : "ap_enable_state4_pp0_iter3_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter3", "FromFinalOperation" : "ap_enable_operation_173", "FromFinalSV" : "3", "FromAddress" : "iBuff_V_19_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state4_pp0_iter3_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter3", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_196", "ToInitialSV" : "3", "ToFinalState" : "ap_enable_state4_pp0_iter3_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter3", "ToFinalOperation" : "ap_enable_operation_196", "ToFinalSV" : "3", "ToAddress" : "iBuff_V_19_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/home/overman/dev/workspaces/vision/vision_kernels/src/canny/../imgproc/xf_edge_tracing.hpp:337:9)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state4_pp0_iter3_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter3", "FromInitialOperation" : "ap_enable_operation_184", "FromInitialSV" : "3", "FromFinalState" : "ap_enable_state4_pp0_iter3_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter3", "FromFinalOperation" : "ap_enable_operation_184", "FromFinalSV" : "3", "FromAddress" : "iBuff_V_16_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state3_pp0_iter2_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter2", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter3", "ToInitialOperation" : "ap_enable_operation_119", "ToInitialSV" : "2", "ToFinalState" : "ap_enable_state3_pp0_iter2_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter2", "ToFinalOperation" : "ap_enable_operation_119", "ToFinalSV" : "2", "ToAddress" : "iBuff_V_16_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/home/overman/dev/workspaces/vision/vision_kernels/src/canny/../imgproc/xf_edge_tracing.hpp:337:9)", "Type" : "WAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state3_pp0_iter2_stage0", "ap_enable_state4_pp0_iter3_stage0"]},
			{"FromInitialState" : "ap_enable_state4_pp0_iter3_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter3", "FromInitialOperation" : "ap_enable_operation_184", "FromInitialSV" : "3", "FromFinalState" : "ap_enable_state4_pp0_iter3_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter3", "FromFinalOperation" : "ap_enable_operation_184", "FromFinalSV" : "3", "FromAddress" : "iBuff_V_16_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state4_pp0_iter3_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter3", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_161", "ToInitialSV" : "3", "ToFinalState" : "ap_enable_state4_pp0_iter3_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter3", "ToFinalOperation" : "ap_enable_operation_161", "ToFinalSV" : "3", "ToAddress" : "iBuff_V_16_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/home/overman/dev/workspaces/vision/vision_kernels/src/canny/../imgproc/xf_edge_tracing.hpp:337:9)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state4_pp0_iter3_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter3", "FromInitialOperation" : "ap_enable_operation_186", "FromInitialSV" : "3", "FromFinalState" : "ap_enable_state4_pp0_iter3_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter3", "FromFinalOperation" : "ap_enable_operation_186", "FromFinalSV" : "3", "FromAddress" : "iBuff_V_13_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state3_pp0_iter2_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter2", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter3", "ToInitialOperation" : "ap_enable_operation_122", "ToInitialSV" : "2", "ToFinalState" : "ap_enable_state3_pp0_iter2_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter2", "ToFinalOperation" : "ap_enable_operation_122", "ToFinalSV" : "2", "ToAddress" : "iBuff_V_13_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/home/overman/dev/workspaces/vision/vision_kernels/src/canny/../imgproc/xf_edge_tracing.hpp:337:9)", "Type" : "WAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state3_pp0_iter2_stage0", "ap_enable_state4_pp0_iter3_stage0"]},
			{"FromInitialState" : "ap_enable_state4_pp0_iter3_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter3", "FromInitialOperation" : "ap_enable_operation_186", "FromInitialSV" : "3", "FromFinalState" : "ap_enable_state4_pp0_iter3_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter3", "FromFinalOperation" : "ap_enable_operation_186", "FromFinalSV" : "3", "FromAddress" : "iBuff_V_13_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state4_pp0_iter3_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter3", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_163", "ToInitialSV" : "3", "ToFinalState" : "ap_enable_state4_pp0_iter3_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter3", "ToFinalOperation" : "ap_enable_operation_163", "ToFinalSV" : "3", "ToAddress" : "iBuff_V_13_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/home/overman/dev/workspaces/vision/vision_kernels/src/canny/../imgproc/xf_edge_tracing.hpp:337:9)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state4_pp0_iter3_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter3", "FromInitialOperation" : "ap_enable_operation_188", "FromInitialSV" : "3", "FromFinalState" : "ap_enable_state4_pp0_iter3_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter3", "FromFinalOperation" : "ap_enable_operation_188", "FromFinalSV" : "3", "FromAddress" : "iBuff_V_10_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state3_pp0_iter2_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter2", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter3", "ToInitialOperation" : "ap_enable_operation_125", "ToInitialSV" : "2", "ToFinalState" : "ap_enable_state3_pp0_iter2_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter2", "ToFinalOperation" : "ap_enable_operation_125", "ToFinalSV" : "2", "ToAddress" : "iBuff_V_10_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/home/overman/dev/workspaces/vision/vision_kernels/src/canny/../imgproc/xf_edge_tracing.hpp:337:9)", "Type" : "WAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state3_pp0_iter2_stage0", "ap_enable_state4_pp0_iter3_stage0"]},
			{"FromInitialState" : "ap_enable_state4_pp0_iter3_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter3", "FromInitialOperation" : "ap_enable_operation_188", "FromInitialSV" : "3", "FromFinalState" : "ap_enable_state4_pp0_iter3_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter3", "FromFinalOperation" : "ap_enable_operation_188", "FromFinalSV" : "3", "FromAddress" : "iBuff_V_10_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state4_pp0_iter3_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter3", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_165", "ToInitialSV" : "3", "ToFinalState" : "ap_enable_state4_pp0_iter3_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter3", "ToFinalOperation" : "ap_enable_operation_165", "ToFinalSV" : "3", "ToAddress" : "iBuff_V_10_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/home/overman/dev/workspaces/vision/vision_kernels/src/canny/../imgproc/xf_edge_tracing.hpp:337:9)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state4_pp0_iter3_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter3", "FromInitialOperation" : "ap_enable_operation_190", "FromInitialSV" : "3", "FromFinalState" : "ap_enable_state4_pp0_iter3_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter3", "FromFinalOperation" : "ap_enable_operation_190", "FromFinalSV" : "3", "FromAddress" : "iBuff_V_7_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state3_pp0_iter2_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter2", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter3", "ToInitialOperation" : "ap_enable_operation_128", "ToInitialSV" : "2", "ToFinalState" : "ap_enable_state3_pp0_iter2_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter2", "ToFinalOperation" : "ap_enable_operation_128", "ToFinalSV" : "2", "ToAddress" : "iBuff_V_7_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/home/overman/dev/workspaces/vision/vision_kernels/src/canny/../imgproc/xf_edge_tracing.hpp:337:9)", "Type" : "WAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state3_pp0_iter2_stage0", "ap_enable_state4_pp0_iter3_stage0"]},
			{"FromInitialState" : "ap_enable_state4_pp0_iter3_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter3", "FromInitialOperation" : "ap_enable_operation_190", "FromInitialSV" : "3", "FromFinalState" : "ap_enable_state4_pp0_iter3_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter3", "FromFinalOperation" : "ap_enable_operation_190", "FromFinalSV" : "3", "FromAddress" : "iBuff_V_7_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state4_pp0_iter3_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter3", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_167", "ToInitialSV" : "3", "ToFinalState" : "ap_enable_state4_pp0_iter3_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter3", "ToFinalOperation" : "ap_enable_operation_167", "ToFinalSV" : "3", "ToAddress" : "iBuff_V_7_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/home/overman/dev/workspaces/vision/vision_kernels/src/canny/../imgproc/xf_edge_tracing.hpp:337:9)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state4_pp0_iter3_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter3", "FromInitialOperation" : "ap_enable_operation_192", "FromInitialSV" : "3", "FromFinalState" : "ap_enable_state4_pp0_iter3_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter3", "FromFinalOperation" : "ap_enable_operation_192", "FromFinalSV" : "3", "FromAddress" : "iBuff_V_4_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state3_pp0_iter2_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter2", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter3", "ToInitialOperation" : "ap_enable_operation_131", "ToInitialSV" : "2", "ToFinalState" : "ap_enable_state3_pp0_iter2_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter2", "ToFinalOperation" : "ap_enable_operation_131", "ToFinalSV" : "2", "ToAddress" : "iBuff_V_4_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/home/overman/dev/workspaces/vision/vision_kernels/src/canny/../imgproc/xf_edge_tracing.hpp:337:9)", "Type" : "WAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state3_pp0_iter2_stage0", "ap_enable_state4_pp0_iter3_stage0"]},
			{"FromInitialState" : "ap_enable_state4_pp0_iter3_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter3", "FromInitialOperation" : "ap_enable_operation_192", "FromInitialSV" : "3", "FromFinalState" : "ap_enable_state4_pp0_iter3_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter3", "FromFinalOperation" : "ap_enable_operation_192", "FromFinalSV" : "3", "FromAddress" : "iBuff_V_4_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state4_pp0_iter3_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter3", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_169", "ToInitialSV" : "3", "ToFinalState" : "ap_enable_state4_pp0_iter3_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter3", "ToFinalOperation" : "ap_enable_operation_169", "ToFinalSV" : "3", "ToAddress" : "iBuff_V_4_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/home/overman/dev/workspaces/vision/vision_kernels/src/canny/../imgproc/xf_edge_tracing.hpp:337:9)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state4_pp0_iter3_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter3", "FromInitialOperation" : "ap_enable_operation_194", "FromInitialSV" : "3", "FromFinalState" : "ap_enable_state4_pp0_iter3_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter3", "FromFinalOperation" : "ap_enable_operation_194", "FromFinalSV" : "3", "FromAddress" : "iBuff_V_1_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state3_pp0_iter2_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter2", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter3", "ToInitialOperation" : "ap_enable_operation_134", "ToInitialSV" : "2", "ToFinalState" : "ap_enable_state3_pp0_iter2_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter2", "ToFinalOperation" : "ap_enable_operation_134", "ToFinalSV" : "2", "ToAddress" : "iBuff_V_1_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/home/overman/dev/workspaces/vision/vision_kernels/src/canny/../imgproc/xf_edge_tracing.hpp:337:9)", "Type" : "WAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state3_pp0_iter2_stage0", "ap_enable_state4_pp0_iter3_stage0"]},
			{"FromInitialState" : "ap_enable_state4_pp0_iter3_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter3", "FromInitialOperation" : "ap_enable_operation_194", "FromInitialSV" : "3", "FromFinalState" : "ap_enable_state4_pp0_iter3_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter3", "FromFinalOperation" : "ap_enable_operation_194", "FromFinalSV" : "3", "FromAddress" : "iBuff_V_1_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state4_pp0_iter3_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter3", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_171", "ToInitialSV" : "3", "ToFinalState" : "ap_enable_state4_pp0_iter3_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter3", "ToFinalOperation" : "ap_enable_operation_171", "ToFinalSV" : "3", "ToAddress" : "iBuff_V_1_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/home/overman/dev/workspaces/vision/vision_kernels/src/canny/../imgproc/xf_edge_tracing.hpp:337:9)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state4_pp0_iter3_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter3", "FromInitialOperation" : "ap_enable_operation_196", "FromInitialSV" : "3", "FromFinalState" : "ap_enable_state4_pp0_iter3_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter3", "FromFinalOperation" : "ap_enable_operation_196", "FromFinalSV" : "3", "FromAddress" : "iBuff_V_19_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state3_pp0_iter2_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter2", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter3", "ToInitialOperation" : "ap_enable_operation_136", "ToInitialSV" : "2", "ToFinalState" : "ap_enable_state3_pp0_iter2_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter2", "ToFinalOperation" : "ap_enable_operation_136", "ToFinalSV" : "2", "ToAddress" : "iBuff_V_19_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/home/overman/dev/workspaces/vision/vision_kernels/src/canny/../imgproc/xf_edge_tracing.hpp:337:9)", "Type" : "WAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state3_pp0_iter2_stage0", "ap_enable_state4_pp0_iter3_stage0"]},
			{"FromInitialState" : "ap_enable_state4_pp0_iter3_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter3", "FromInitialOperation" : "ap_enable_operation_196", "FromInitialSV" : "3", "FromFinalState" : "ap_enable_state4_pp0_iter3_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter3", "FromFinalOperation" : "ap_enable_operation_196", "FromFinalSV" : "3", "FromAddress" : "iBuff_V_19_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state4_pp0_iter3_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter3", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_173", "ToInitialSV" : "3", "ToFinalState" : "ap_enable_state4_pp0_iter3_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter3", "ToFinalOperation" : "ap_enable_operation_173", "ToFinalSV" : "3", "ToAddress" : "iBuff_V_19_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/home/overman/dev/workspaces/vision/vision_kernels/src/canny/../imgproc/xf_edge_tracing.hpp:337:9)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state4_pp0_iter3_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter3", "FromInitialOperation" : "ap_enable_operation_198", "FromInitialSV" : "3", "FromFinalState" : "ap_enable_state4_pp0_iter3_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter3", "FromFinalOperation" : "ap_enable_operation_198", "FromFinalSV" : "3", "FromAddress" : "iBuff_V_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state3_pp0_iter2_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter2", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter3", "ToInitialOperation" : "ap_enable_operation_135", "ToInitialSV" : "2", "ToFinalState" : "ap_enable_state3_pp0_iter2_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter2", "ToFinalOperation" : "ap_enable_operation_135", "ToFinalSV" : "2", "ToAddress" : "iBuff_V_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/home/overman/dev/workspaces/vision/vision_kernels/src/canny/../imgproc/xf_edge_tracing.hpp:337:9)", "Type" : "WAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state3_pp0_iter2_stage0", "ap_enable_state4_pp0_iter3_stage0"]},
			{"FromInitialState" : "ap_enable_state4_pp0_iter3_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter3", "FromInitialOperation" : "ap_enable_operation_198", "FromInitialSV" : "3", "FromFinalState" : "ap_enable_state4_pp0_iter3_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter3", "FromFinalOperation" : "ap_enable_operation_198", "FromFinalSV" : "3", "FromAddress" : "iBuff_V_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state4_pp0_iter3_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter3", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_159", "ToInitialSV" : "3", "ToFinalState" : "ap_enable_state4_pp0_iter3_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter3", "ToFinalOperation" : "ap_enable_operation_159", "ToFinalSV" : "3", "ToAddress" : "iBuff_V_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/home/overman/dev/workspaces/vision/vision_kernels/src/canny/../imgproc/xf_edge_tracing.hpp:337:9)", "Type" : "WAW"}],
		"Port" : [
			{"Name" : "lBound", "Type" : "None", "Direction" : "I"},
			{"Name" : "iBuff_V_19", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "iBuff_V_18", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "iBuff_V_17", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "iBuff_V_16", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "iBuff_V_15", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "iBuff_V_14", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "iBuff_V_13", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "iBuff_V_12", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "iBuff_V_11", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "iBuff_V_10", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "iBuff_V_9", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "iBuff_V_8", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "iBuff_V_7", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "iBuff_V_6", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "iBuff_V_5", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "iBuff_V_4", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "iBuff_V_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "iBuff_V_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "iBuff_V_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "iBuff_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_dst1_data", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "p_dst1_data_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "zext_ln303", "Type" : "None", "Direction" : "I"},
			{"Name" : "op2_assign_32_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "ram_row_depth_cast53_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "sdiv_ln305_1_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln305", "Type" : "None", "Direction" : "I"},
			{"Name" : "op2_assign", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "Read_N_Arrange", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter3", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter3", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	edgetracing_accel_Pipeline_Read_N_Arrange {
		lBound {Type I LastRead 0 FirstWrite -1}
		iBuff_V_19 {Type O LastRead -1 FirstWrite 2}
		iBuff_V_18 {Type O LastRead -1 FirstWrite 2}
		iBuff_V_17 {Type O LastRead -1 FirstWrite 2}
		iBuff_V_16 {Type O LastRead -1 FirstWrite 2}
		iBuff_V_15 {Type O LastRead -1 FirstWrite 2}
		iBuff_V_14 {Type O LastRead -1 FirstWrite 2}
		iBuff_V_13 {Type O LastRead -1 FirstWrite 2}
		iBuff_V_12 {Type O LastRead -1 FirstWrite 2}
		iBuff_V_11 {Type O LastRead -1 FirstWrite 2}
		iBuff_V_10 {Type O LastRead -1 FirstWrite 2}
		iBuff_V_9 {Type O LastRead -1 FirstWrite 2}
		iBuff_V_8 {Type O LastRead -1 FirstWrite 2}
		iBuff_V_7 {Type O LastRead -1 FirstWrite 2}
		iBuff_V_6 {Type O LastRead -1 FirstWrite 2}
		iBuff_V_5 {Type O LastRead -1 FirstWrite 2}
		iBuff_V_4 {Type O LastRead -1 FirstWrite 2}
		iBuff_V_3 {Type O LastRead -1 FirstWrite 2}
		iBuff_V_2 {Type O LastRead -1 FirstWrite 2}
		iBuff_V_1 {Type O LastRead -1 FirstWrite 2}
		iBuff_V {Type O LastRead -1 FirstWrite 2}
		p_dst1_data {Type I LastRead 2 FirstWrite -1}
		zext_ln303 {Type I LastRead 0 FirstWrite -1}
		op2_assign_32_cast {Type I LastRead 0 FirstWrite -1}
		ram_row_depth_cast53_cast {Type I LastRead 0 FirstWrite -1}
		sdiv_ln305_1_cast {Type I LastRead 0 FirstWrite -1}
		sext_ln305 {Type I LastRead 0 FirstWrite -1}
		op2_assign {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "16203", "Max" : "16803"}
	, {"Name" : "Interval", "Min" : "16203", "Max" : "16803"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	lBound { ap_none {  { lBound in_data 0 32 } } }
	iBuff_V_19 { ap_memory {  { iBuff_V_19_address0 mem_address 1 10 }  { iBuff_V_19_ce0 mem_ce 1 1 }  { iBuff_V_19_we0 mem_we 1 1 }  { iBuff_V_19_d0 mem_din 1 64 }  { iBuff_V_19_address1 MemPortADDR2 1 10 }  { iBuff_V_19_ce1 MemPortCE2 1 1 }  { iBuff_V_19_we1 MemPortWE2 1 1 }  { iBuff_V_19_d1 MemPortDIN2 1 64 } } }
	iBuff_V_18 { ap_memory {  { iBuff_V_18_address0 mem_address 1 10 }  { iBuff_V_18_ce0 mem_ce 1 1 }  { iBuff_V_18_we0 mem_we 1 1 }  { iBuff_V_18_d0 mem_din 1 64 } } }
	iBuff_V_17 { ap_memory {  { iBuff_V_17_address0 mem_address 1 10 }  { iBuff_V_17_ce0 mem_ce 1 1 }  { iBuff_V_17_we0 mem_we 1 1 }  { iBuff_V_17_d0 mem_din 1 64 } } }
	iBuff_V_16 { ap_memory {  { iBuff_V_16_address0 mem_address 1 10 }  { iBuff_V_16_ce0 mem_ce 1 1 }  { iBuff_V_16_we0 mem_we 1 1 }  { iBuff_V_16_d0 mem_din 1 64 }  { iBuff_V_16_address1 MemPortADDR2 1 10 }  { iBuff_V_16_ce1 MemPortCE2 1 1 }  { iBuff_V_16_we1 MemPortWE2 1 1 }  { iBuff_V_16_d1 MemPortDIN2 1 64 } } }
	iBuff_V_15 { ap_memory {  { iBuff_V_15_address0 mem_address 1 10 }  { iBuff_V_15_ce0 mem_ce 1 1 }  { iBuff_V_15_we0 mem_we 1 1 }  { iBuff_V_15_d0 mem_din 1 64 } } }
	iBuff_V_14 { ap_memory {  { iBuff_V_14_address0 mem_address 1 10 }  { iBuff_V_14_ce0 mem_ce 1 1 }  { iBuff_V_14_we0 mem_we 1 1 }  { iBuff_V_14_d0 mem_din 1 64 } } }
	iBuff_V_13 { ap_memory {  { iBuff_V_13_address0 mem_address 1 10 }  { iBuff_V_13_ce0 mem_ce 1 1 }  { iBuff_V_13_we0 mem_we 1 1 }  { iBuff_V_13_d0 mem_din 1 64 }  { iBuff_V_13_address1 MemPortADDR2 1 10 }  { iBuff_V_13_ce1 MemPortCE2 1 1 }  { iBuff_V_13_we1 MemPortWE2 1 1 }  { iBuff_V_13_d1 MemPortDIN2 1 64 } } }
	iBuff_V_12 { ap_memory {  { iBuff_V_12_address0 mem_address 1 10 }  { iBuff_V_12_ce0 mem_ce 1 1 }  { iBuff_V_12_we0 mem_we 1 1 }  { iBuff_V_12_d0 mem_din 1 64 } } }
	iBuff_V_11 { ap_memory {  { iBuff_V_11_address0 mem_address 1 10 }  { iBuff_V_11_ce0 mem_ce 1 1 }  { iBuff_V_11_we0 mem_we 1 1 }  { iBuff_V_11_d0 mem_din 1 64 } } }
	iBuff_V_10 { ap_memory {  { iBuff_V_10_address0 mem_address 1 10 }  { iBuff_V_10_ce0 mem_ce 1 1 }  { iBuff_V_10_we0 mem_we 1 1 }  { iBuff_V_10_d0 mem_din 1 64 }  { iBuff_V_10_address1 MemPortADDR2 1 10 }  { iBuff_V_10_ce1 MemPortCE2 1 1 }  { iBuff_V_10_we1 MemPortWE2 1 1 }  { iBuff_V_10_d1 MemPortDIN2 1 64 } } }
	iBuff_V_9 { ap_memory {  { iBuff_V_9_address0 mem_address 1 10 }  { iBuff_V_9_ce0 mem_ce 1 1 }  { iBuff_V_9_we0 mem_we 1 1 }  { iBuff_V_9_d0 mem_din 1 64 } } }
	iBuff_V_8 { ap_memory {  { iBuff_V_8_address0 mem_address 1 10 }  { iBuff_V_8_ce0 mem_ce 1 1 }  { iBuff_V_8_we0 mem_we 1 1 }  { iBuff_V_8_d0 mem_din 1 64 } } }
	iBuff_V_7 { ap_memory {  { iBuff_V_7_address0 mem_address 1 10 }  { iBuff_V_7_ce0 mem_ce 1 1 }  { iBuff_V_7_we0 mem_we 1 1 }  { iBuff_V_7_d0 mem_din 1 64 }  { iBuff_V_7_address1 MemPortADDR2 1 10 }  { iBuff_V_7_ce1 MemPortCE2 1 1 }  { iBuff_V_7_we1 MemPortWE2 1 1 }  { iBuff_V_7_d1 MemPortDIN2 1 64 } } }
	iBuff_V_6 { ap_memory {  { iBuff_V_6_address0 mem_address 1 10 }  { iBuff_V_6_ce0 mem_ce 1 1 }  { iBuff_V_6_we0 mem_we 1 1 }  { iBuff_V_6_d0 mem_din 1 64 } } }
	iBuff_V_5 { ap_memory {  { iBuff_V_5_address0 mem_address 1 10 }  { iBuff_V_5_ce0 mem_ce 1 1 }  { iBuff_V_5_we0 mem_we 1 1 }  { iBuff_V_5_d0 mem_din 1 64 } } }
	iBuff_V_4 { ap_memory {  { iBuff_V_4_address0 mem_address 1 10 }  { iBuff_V_4_ce0 mem_ce 1 1 }  { iBuff_V_4_we0 mem_we 1 1 }  { iBuff_V_4_d0 mem_din 1 64 }  { iBuff_V_4_address1 MemPortADDR2 1 10 }  { iBuff_V_4_ce1 MemPortCE2 1 1 }  { iBuff_V_4_we1 MemPortWE2 1 1 }  { iBuff_V_4_d1 MemPortDIN2 1 64 } } }
	iBuff_V_3 { ap_memory {  { iBuff_V_3_address0 mem_address 1 10 }  { iBuff_V_3_ce0 mem_ce 1 1 }  { iBuff_V_3_we0 mem_we 1 1 }  { iBuff_V_3_d0 mem_din 1 64 } } }
	iBuff_V_2 { ap_memory {  { iBuff_V_2_address0 mem_address 1 10 }  { iBuff_V_2_ce0 mem_ce 1 1 }  { iBuff_V_2_we0 mem_we 1 1 }  { iBuff_V_2_d0 mem_din 1 64 } } }
	iBuff_V_1 { ap_memory {  { iBuff_V_1_address0 mem_address 1 10 }  { iBuff_V_1_ce0 mem_ce 1 1 }  { iBuff_V_1_we0 mem_we 1 1 }  { iBuff_V_1_d0 mem_din 1 64 }  { iBuff_V_1_address1 MemPortADDR2 1 10 }  { iBuff_V_1_ce1 MemPortCE2 1 1 }  { iBuff_V_1_we1 MemPortWE2 1 1 }  { iBuff_V_1_d1 MemPortDIN2 1 64 } } }
	iBuff_V { ap_memory {  { iBuff_V_address0 mem_address 1 10 }  { iBuff_V_ce0 mem_ce 1 1 }  { iBuff_V_we0 mem_we 1 1 }  { iBuff_V_d0 mem_din 1 64 }  { iBuff_V_address1 MemPortADDR2 1 10 }  { iBuff_V_ce1 MemPortCE2 1 1 }  { iBuff_V_we1 MemPortWE2 1 1 }  { iBuff_V_d1 MemPortDIN2 1 64 } } }
	p_dst1_data { ap_fifo {  { p_dst1_data_dout fifo_port_we 0 64 }  { p_dst1_data_empty_n fifo_status 0 1 }  { p_dst1_data_read fifo_data 1 1 } } }
	zext_ln303 { ap_none {  { zext_ln303 in_data 0 6 } } }
	op2_assign_32_cast { ap_none {  { op2_assign_32_cast in_data 0 16 } } }
	ram_row_depth_cast53_cast { ap_none {  { ram_row_depth_cast53_cast in_data 0 6 } } }
	sdiv_ln305_1_cast { ap_none {  { sdiv_ln305_1_cast in_data 0 5 } } }
	sext_ln305 { ap_none {  { sext_ln305 in_data 0 16 } } }
	op2_assign { ap_none {  { op2_assign in_data 0 18 } } }
}
