set moduleName edgetracing_accel_Pipeline_Write
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
set C_modelName {edgetracing_accel_Pipeline_Write}
set C_modelType { void 0 }
set C_modelArgList {
	{ lBound int 32 regular  }
	{ zext_ln303 int 6 regular  }
	{ op2_assign_32_cast int 16 regular  }
	{ iBuff_V int 64 regular {array 1024 { 1 3 } 1 1 }  }
	{ iBuff_V_1 int 64 regular {array 1024 { 1 3 } 1 1 }  }
	{ iBuff_V_2 int 64 regular {array 1024 { 1 3 } 1 1 }  }
	{ iBuff_V_3 int 64 regular {array 1024 { 1 3 } 1 1 }  }
	{ iBuff_V_4 int 64 regular {array 1024 { 1 3 } 1 1 }  }
	{ iBuff_V_5 int 64 regular {array 1024 { 1 3 } 1 1 }  }
	{ iBuff_V_6 int 64 regular {array 1024 { 1 3 } 1 1 }  }
	{ iBuff_V_7 int 64 regular {array 1024 { 1 3 } 1 1 }  }
	{ iBuff_V_8 int 64 regular {array 1024 { 1 3 } 1 1 }  }
	{ iBuff_V_9 int 64 regular {array 1024 { 1 3 } 1 1 }  }
	{ iBuff_V_10 int 64 regular {array 1024 { 1 3 } 1 1 }  }
	{ iBuff_V_11 int 64 regular {array 1024 { 1 3 } 1 1 }  }
	{ iBuff_V_12 int 64 regular {array 1024 { 1 3 } 1 1 }  }
	{ iBuff_V_13 int 64 regular {array 1024 { 1 3 } 1 1 }  }
	{ iBuff_V_14 int 64 regular {array 1024 { 1 3 } 1 1 }  }
	{ iBuff_V_15 int 64 regular {array 1024 { 1 3 } 1 1 }  }
	{ iBuff_V_16 int 64 regular {array 1024 { 1 3 } 1 1 }  }
	{ iBuff_V_17 int 64 regular {array 1024 { 1 3 } 1 1 }  }
	{ iBuff_V_18 int 64 regular {array 1024 { 1 3 } 1 1 }  }
	{ iBuff_V_19 int 64 regular {array 1024 { 1 3 } 1 1 }  }
	{ p_dst1_data int 64 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "lBound", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln303", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "op2_assign_32_cast", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "iBuff_V", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "iBuff_V_1", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "iBuff_V_2", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "iBuff_V_3", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "iBuff_V_4", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "iBuff_V_5", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "iBuff_V_6", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "iBuff_V_7", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "iBuff_V_8", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "iBuff_V_9", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "iBuff_V_10", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "iBuff_V_11", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "iBuff_V_12", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "iBuff_V_13", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "iBuff_V_14", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "iBuff_V_15", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "iBuff_V_16", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "iBuff_V_17", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "iBuff_V_18", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "iBuff_V_19", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "p_dst1_data", "interface" : "fifo", "bitwidth" : 64, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 75
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ p_dst1_data_din sc_out sc_lv 64 signal 23 } 
	{ p_dst1_data_full_n sc_in sc_logic 1 signal 23 } 
	{ p_dst1_data_write sc_out sc_logic 1 signal 23 } 
	{ lBound sc_in sc_lv 32 signal 0 } 
	{ zext_ln303 sc_in sc_lv 6 signal 1 } 
	{ op2_assign_32_cast sc_in sc_lv 16 signal 2 } 
	{ iBuff_V_address0 sc_out sc_lv 10 signal 3 } 
	{ iBuff_V_ce0 sc_out sc_logic 1 signal 3 } 
	{ iBuff_V_q0 sc_in sc_lv 64 signal 3 } 
	{ iBuff_V_1_address0 sc_out sc_lv 10 signal 4 } 
	{ iBuff_V_1_ce0 sc_out sc_logic 1 signal 4 } 
	{ iBuff_V_1_q0 sc_in sc_lv 64 signal 4 } 
	{ iBuff_V_2_address0 sc_out sc_lv 10 signal 5 } 
	{ iBuff_V_2_ce0 sc_out sc_logic 1 signal 5 } 
	{ iBuff_V_2_q0 sc_in sc_lv 64 signal 5 } 
	{ iBuff_V_3_address0 sc_out sc_lv 10 signal 6 } 
	{ iBuff_V_3_ce0 sc_out sc_logic 1 signal 6 } 
	{ iBuff_V_3_q0 sc_in sc_lv 64 signal 6 } 
	{ iBuff_V_4_address0 sc_out sc_lv 10 signal 7 } 
	{ iBuff_V_4_ce0 sc_out sc_logic 1 signal 7 } 
	{ iBuff_V_4_q0 sc_in sc_lv 64 signal 7 } 
	{ iBuff_V_5_address0 sc_out sc_lv 10 signal 8 } 
	{ iBuff_V_5_ce0 sc_out sc_logic 1 signal 8 } 
	{ iBuff_V_5_q0 sc_in sc_lv 64 signal 8 } 
	{ iBuff_V_6_address0 sc_out sc_lv 10 signal 9 } 
	{ iBuff_V_6_ce0 sc_out sc_logic 1 signal 9 } 
	{ iBuff_V_6_q0 sc_in sc_lv 64 signal 9 } 
	{ iBuff_V_7_address0 sc_out sc_lv 10 signal 10 } 
	{ iBuff_V_7_ce0 sc_out sc_logic 1 signal 10 } 
	{ iBuff_V_7_q0 sc_in sc_lv 64 signal 10 } 
	{ iBuff_V_8_address0 sc_out sc_lv 10 signal 11 } 
	{ iBuff_V_8_ce0 sc_out sc_logic 1 signal 11 } 
	{ iBuff_V_8_q0 sc_in sc_lv 64 signal 11 } 
	{ iBuff_V_9_address0 sc_out sc_lv 10 signal 12 } 
	{ iBuff_V_9_ce0 sc_out sc_logic 1 signal 12 } 
	{ iBuff_V_9_q0 sc_in sc_lv 64 signal 12 } 
	{ iBuff_V_10_address0 sc_out sc_lv 10 signal 13 } 
	{ iBuff_V_10_ce0 sc_out sc_logic 1 signal 13 } 
	{ iBuff_V_10_q0 sc_in sc_lv 64 signal 13 } 
	{ iBuff_V_11_address0 sc_out sc_lv 10 signal 14 } 
	{ iBuff_V_11_ce0 sc_out sc_logic 1 signal 14 } 
	{ iBuff_V_11_q0 sc_in sc_lv 64 signal 14 } 
	{ iBuff_V_12_address0 sc_out sc_lv 10 signal 15 } 
	{ iBuff_V_12_ce0 sc_out sc_logic 1 signal 15 } 
	{ iBuff_V_12_q0 sc_in sc_lv 64 signal 15 } 
	{ iBuff_V_13_address0 sc_out sc_lv 10 signal 16 } 
	{ iBuff_V_13_ce0 sc_out sc_logic 1 signal 16 } 
	{ iBuff_V_13_q0 sc_in sc_lv 64 signal 16 } 
	{ iBuff_V_14_address0 sc_out sc_lv 10 signal 17 } 
	{ iBuff_V_14_ce0 sc_out sc_logic 1 signal 17 } 
	{ iBuff_V_14_q0 sc_in sc_lv 64 signal 17 } 
	{ iBuff_V_15_address0 sc_out sc_lv 10 signal 18 } 
	{ iBuff_V_15_ce0 sc_out sc_logic 1 signal 18 } 
	{ iBuff_V_15_q0 sc_in sc_lv 64 signal 18 } 
	{ iBuff_V_16_address0 sc_out sc_lv 10 signal 19 } 
	{ iBuff_V_16_ce0 sc_out sc_logic 1 signal 19 } 
	{ iBuff_V_16_q0 sc_in sc_lv 64 signal 19 } 
	{ iBuff_V_17_address0 sc_out sc_lv 10 signal 20 } 
	{ iBuff_V_17_ce0 sc_out sc_logic 1 signal 20 } 
	{ iBuff_V_17_q0 sc_in sc_lv 64 signal 20 } 
	{ iBuff_V_18_address0 sc_out sc_lv 10 signal 21 } 
	{ iBuff_V_18_ce0 sc_out sc_logic 1 signal 21 } 
	{ iBuff_V_18_q0 sc_in sc_lv 64 signal 21 } 
	{ iBuff_V_19_address0 sc_out sc_lv 10 signal 22 } 
	{ iBuff_V_19_ce0 sc_out sc_logic 1 signal 22 } 
	{ iBuff_V_19_q0 sc_in sc_lv 64 signal 22 } 
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
 	{ "name": "p_dst1_data_din", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "p_dst1_data", "role": "din" }} , 
 	{ "name": "p_dst1_data_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_dst1_data", "role": "full_n" }} , 
 	{ "name": "p_dst1_data_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_dst1_data", "role": "write" }} , 
 	{ "name": "lBound", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "lBound", "role": "default" }} , 
 	{ "name": "zext_ln303", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "zext_ln303", "role": "default" }} , 
 	{ "name": "op2_assign_32_cast", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "op2_assign_32_cast", "role": "default" }} , 
 	{ "name": "iBuff_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "iBuff_V", "role": "address0" }} , 
 	{ "name": "iBuff_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "iBuff_V", "role": "ce0" }} , 
 	{ "name": "iBuff_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "iBuff_V", "role": "q0" }} , 
 	{ "name": "iBuff_V_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "iBuff_V_1", "role": "address0" }} , 
 	{ "name": "iBuff_V_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "iBuff_V_1", "role": "ce0" }} , 
 	{ "name": "iBuff_V_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "iBuff_V_1", "role": "q0" }} , 
 	{ "name": "iBuff_V_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "iBuff_V_2", "role": "address0" }} , 
 	{ "name": "iBuff_V_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "iBuff_V_2", "role": "ce0" }} , 
 	{ "name": "iBuff_V_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "iBuff_V_2", "role": "q0" }} , 
 	{ "name": "iBuff_V_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "iBuff_V_3", "role": "address0" }} , 
 	{ "name": "iBuff_V_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "iBuff_V_3", "role": "ce0" }} , 
 	{ "name": "iBuff_V_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "iBuff_V_3", "role": "q0" }} , 
 	{ "name": "iBuff_V_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "iBuff_V_4", "role": "address0" }} , 
 	{ "name": "iBuff_V_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "iBuff_V_4", "role": "ce0" }} , 
 	{ "name": "iBuff_V_4_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "iBuff_V_4", "role": "q0" }} , 
 	{ "name": "iBuff_V_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "iBuff_V_5", "role": "address0" }} , 
 	{ "name": "iBuff_V_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "iBuff_V_5", "role": "ce0" }} , 
 	{ "name": "iBuff_V_5_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "iBuff_V_5", "role": "q0" }} , 
 	{ "name": "iBuff_V_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "iBuff_V_6", "role": "address0" }} , 
 	{ "name": "iBuff_V_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "iBuff_V_6", "role": "ce0" }} , 
 	{ "name": "iBuff_V_6_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "iBuff_V_6", "role": "q0" }} , 
 	{ "name": "iBuff_V_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "iBuff_V_7", "role": "address0" }} , 
 	{ "name": "iBuff_V_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "iBuff_V_7", "role": "ce0" }} , 
 	{ "name": "iBuff_V_7_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "iBuff_V_7", "role": "q0" }} , 
 	{ "name": "iBuff_V_8_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "iBuff_V_8", "role": "address0" }} , 
 	{ "name": "iBuff_V_8_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "iBuff_V_8", "role": "ce0" }} , 
 	{ "name": "iBuff_V_8_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "iBuff_V_8", "role": "q0" }} , 
 	{ "name": "iBuff_V_9_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "iBuff_V_9", "role": "address0" }} , 
 	{ "name": "iBuff_V_9_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "iBuff_V_9", "role": "ce0" }} , 
 	{ "name": "iBuff_V_9_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "iBuff_V_9", "role": "q0" }} , 
 	{ "name": "iBuff_V_10_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "iBuff_V_10", "role": "address0" }} , 
 	{ "name": "iBuff_V_10_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "iBuff_V_10", "role": "ce0" }} , 
 	{ "name": "iBuff_V_10_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "iBuff_V_10", "role": "q0" }} , 
 	{ "name": "iBuff_V_11_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "iBuff_V_11", "role": "address0" }} , 
 	{ "name": "iBuff_V_11_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "iBuff_V_11", "role": "ce0" }} , 
 	{ "name": "iBuff_V_11_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "iBuff_V_11", "role": "q0" }} , 
 	{ "name": "iBuff_V_12_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "iBuff_V_12", "role": "address0" }} , 
 	{ "name": "iBuff_V_12_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "iBuff_V_12", "role": "ce0" }} , 
 	{ "name": "iBuff_V_12_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "iBuff_V_12", "role": "q0" }} , 
 	{ "name": "iBuff_V_13_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "iBuff_V_13", "role": "address0" }} , 
 	{ "name": "iBuff_V_13_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "iBuff_V_13", "role": "ce0" }} , 
 	{ "name": "iBuff_V_13_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "iBuff_V_13", "role": "q0" }} , 
 	{ "name": "iBuff_V_14_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "iBuff_V_14", "role": "address0" }} , 
 	{ "name": "iBuff_V_14_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "iBuff_V_14", "role": "ce0" }} , 
 	{ "name": "iBuff_V_14_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "iBuff_V_14", "role": "q0" }} , 
 	{ "name": "iBuff_V_15_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "iBuff_V_15", "role": "address0" }} , 
 	{ "name": "iBuff_V_15_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "iBuff_V_15", "role": "ce0" }} , 
 	{ "name": "iBuff_V_15_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "iBuff_V_15", "role": "q0" }} , 
 	{ "name": "iBuff_V_16_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "iBuff_V_16", "role": "address0" }} , 
 	{ "name": "iBuff_V_16_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "iBuff_V_16", "role": "ce0" }} , 
 	{ "name": "iBuff_V_16_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "iBuff_V_16", "role": "q0" }} , 
 	{ "name": "iBuff_V_17_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "iBuff_V_17", "role": "address0" }} , 
 	{ "name": "iBuff_V_17_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "iBuff_V_17", "role": "ce0" }} , 
 	{ "name": "iBuff_V_17_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "iBuff_V_17", "role": "q0" }} , 
 	{ "name": "iBuff_V_18_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "iBuff_V_18", "role": "address0" }} , 
 	{ "name": "iBuff_V_18_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "iBuff_V_18", "role": "ce0" }} , 
 	{ "name": "iBuff_V_18_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "iBuff_V_18", "role": "q0" }} , 
 	{ "name": "iBuff_V_19_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "iBuff_V_19", "role": "address0" }} , 
 	{ "name": "iBuff_V_19_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "iBuff_V_19", "role": "ce0" }} , 
 	{ "name": "iBuff_V_19_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "iBuff_V_19", "role": "q0" }} , 
 	{ "name": "ap_ext_blocking_n", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_ext_blocking_n", "role": "default" }} , 
 	{ "name": "ap_str_blocking_n", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_str_blocking_n", "role": "default" }} , 
 	{ "name": "ap_int_blocking_n", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_int_blocking_n", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "edgetracing_accel_Pipeline_Write",
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
		"Port" : [
			{"Name" : "lBound", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln303", "Type" : "None", "Direction" : "I"},
			{"Name" : "op2_assign_32_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "iBuff_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "iBuff_V_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "iBuff_V_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "iBuff_V_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "iBuff_V_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "iBuff_V_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "iBuff_V_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "iBuff_V_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "iBuff_V_8", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "iBuff_V_9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "iBuff_V_10", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "iBuff_V_11", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "iBuff_V_12", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "iBuff_V_13", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "iBuff_V_14", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "iBuff_V_15", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "iBuff_V_16", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "iBuff_V_17", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "iBuff_V_18", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "iBuff_V_19", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_dst1_data", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "p_dst1_data_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "Write", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter3", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter3", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_205_64_1_1_U183", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	edgetracing_accel_Pipeline_Write {
		lBound {Type I LastRead 0 FirstWrite -1}
		zext_ln303 {Type I LastRead 0 FirstWrite -1}
		op2_assign_32_cast {Type I LastRead 0 FirstWrite -1}
		iBuff_V {Type I LastRead 2 FirstWrite -1}
		iBuff_V_1 {Type I LastRead 2 FirstWrite -1}
		iBuff_V_2 {Type I LastRead 2 FirstWrite -1}
		iBuff_V_3 {Type I LastRead 2 FirstWrite -1}
		iBuff_V_4 {Type I LastRead 2 FirstWrite -1}
		iBuff_V_5 {Type I LastRead 2 FirstWrite -1}
		iBuff_V_6 {Type I LastRead 2 FirstWrite -1}
		iBuff_V_7 {Type I LastRead 2 FirstWrite -1}
		iBuff_V_8 {Type I LastRead 2 FirstWrite -1}
		iBuff_V_9 {Type I LastRead 2 FirstWrite -1}
		iBuff_V_10 {Type I LastRead 2 FirstWrite -1}
		iBuff_V_11 {Type I LastRead 2 FirstWrite -1}
		iBuff_V_12 {Type I LastRead 2 FirstWrite -1}
		iBuff_V_13 {Type I LastRead 2 FirstWrite -1}
		iBuff_V_14 {Type I LastRead 2 FirstWrite -1}
		iBuff_V_15 {Type I LastRead 2 FirstWrite -1}
		iBuff_V_16 {Type I LastRead 2 FirstWrite -1}
		iBuff_V_17 {Type I LastRead 2 FirstWrite -1}
		iBuff_V_18 {Type I LastRead 2 FirstWrite -1}
		iBuff_V_19 {Type I LastRead 2 FirstWrite -1}
		p_dst1_data {Type O LastRead -1 FirstWrite 3}}}

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
	zext_ln303 { ap_none {  { zext_ln303 in_data 0 6 } } }
	op2_assign_32_cast { ap_none {  { op2_assign_32_cast in_data 0 16 } } }
	iBuff_V { ap_memory {  { iBuff_V_address0 mem_address 1 10 }  { iBuff_V_ce0 mem_ce 1 1 }  { iBuff_V_q0 in_data 0 64 } } }
	iBuff_V_1 { ap_memory {  { iBuff_V_1_address0 mem_address 1 10 }  { iBuff_V_1_ce0 mem_ce 1 1 }  { iBuff_V_1_q0 in_data 0 64 } } }
	iBuff_V_2 { ap_memory {  { iBuff_V_2_address0 mem_address 1 10 }  { iBuff_V_2_ce0 mem_ce 1 1 }  { iBuff_V_2_q0 in_data 0 64 } } }
	iBuff_V_3 { ap_memory {  { iBuff_V_3_address0 mem_address 1 10 }  { iBuff_V_3_ce0 mem_ce 1 1 }  { iBuff_V_3_q0 in_data 0 64 } } }
	iBuff_V_4 { ap_memory {  { iBuff_V_4_address0 mem_address 1 10 }  { iBuff_V_4_ce0 mem_ce 1 1 }  { iBuff_V_4_q0 in_data 0 64 } } }
	iBuff_V_5 { ap_memory {  { iBuff_V_5_address0 mem_address 1 10 }  { iBuff_V_5_ce0 mem_ce 1 1 }  { iBuff_V_5_q0 in_data 0 64 } } }
	iBuff_V_6 { ap_memory {  { iBuff_V_6_address0 mem_address 1 10 }  { iBuff_V_6_ce0 mem_ce 1 1 }  { iBuff_V_6_q0 in_data 0 64 } } }
	iBuff_V_7 { ap_memory {  { iBuff_V_7_address0 mem_address 1 10 }  { iBuff_V_7_ce0 mem_ce 1 1 }  { iBuff_V_7_q0 in_data 0 64 } } }
	iBuff_V_8 { ap_memory {  { iBuff_V_8_address0 mem_address 1 10 }  { iBuff_V_8_ce0 mem_ce 1 1 }  { iBuff_V_8_q0 in_data 0 64 } } }
	iBuff_V_9 { ap_memory {  { iBuff_V_9_address0 mem_address 1 10 }  { iBuff_V_9_ce0 mem_ce 1 1 }  { iBuff_V_9_q0 in_data 0 64 } } }
	iBuff_V_10 { ap_memory {  { iBuff_V_10_address0 mem_address 1 10 }  { iBuff_V_10_ce0 mem_ce 1 1 }  { iBuff_V_10_q0 in_data 0 64 } } }
	iBuff_V_11 { ap_memory {  { iBuff_V_11_address0 mem_address 1 10 }  { iBuff_V_11_ce0 mem_ce 1 1 }  { iBuff_V_11_q0 in_data 0 64 } } }
	iBuff_V_12 { ap_memory {  { iBuff_V_12_address0 mem_address 1 10 }  { iBuff_V_12_ce0 mem_ce 1 1 }  { iBuff_V_12_q0 in_data 0 64 } } }
	iBuff_V_13 { ap_memory {  { iBuff_V_13_address0 mem_address 1 10 }  { iBuff_V_13_ce0 mem_ce 1 1 }  { iBuff_V_13_q0 in_data 0 64 } } }
	iBuff_V_14 { ap_memory {  { iBuff_V_14_address0 mem_address 1 10 }  { iBuff_V_14_ce0 mem_ce 1 1 }  { iBuff_V_14_q0 in_data 0 64 } } }
	iBuff_V_15 { ap_memory {  { iBuff_V_15_address0 mem_address 1 10 }  { iBuff_V_15_ce0 mem_ce 1 1 }  { iBuff_V_15_q0 in_data 0 64 } } }
	iBuff_V_16 { ap_memory {  { iBuff_V_16_address0 mem_address 1 10 }  { iBuff_V_16_ce0 mem_ce 1 1 }  { iBuff_V_16_q0 in_data 0 64 } } }
	iBuff_V_17 { ap_memory {  { iBuff_V_17_address0 mem_address 1 10 }  { iBuff_V_17_ce0 mem_ce 1 1 }  { iBuff_V_17_q0 in_data 0 64 } } }
	iBuff_V_18 { ap_memory {  { iBuff_V_18_address0 mem_address 1 10 }  { iBuff_V_18_ce0 mem_ce 1 1 }  { iBuff_V_18_q0 in_data 0 64 } } }
	iBuff_V_19 { ap_memory {  { iBuff_V_19_address0 mem_address 1 10 }  { iBuff_V_19_ce0 mem_ce 1 1 }  { iBuff_V_19_q0 in_data 0 64 } } }
	p_dst1_data { ap_fifo {  { p_dst1_data_din fifo_port_we 1 64 }  { p_dst1_data_full_n fifo_status 0 1 }  { p_dst1_data_write fifo_data 1 1 } } }
}
