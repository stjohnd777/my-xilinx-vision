set moduleName TopDown_20_6_1024_s
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
set C_modelName {TopDown<20, 6, 1024>}
set C_modelType { void 0 }
set C_modelArgList {
	{ iBuff_0 int 64 regular {array 1024 { 2 1 } 1 1 }  }
	{ iBuff_1 int 64 regular {array 1024 { 2 1 } 1 1 }  }
	{ iBuff_2 int 64 regular {array 1024 { 2 1 } 1 1 }  }
	{ iBuff_3 int 64 regular {array 1024 { 2 1 } 1 1 }  }
	{ iBuff_4 int 64 regular {array 1024 { 2 1 } 1 1 }  }
	{ iBuff_5 int 64 regular {array 1024 { 2 1 } 1 1 }  }
	{ iBuff_6 int 64 regular {array 1024 { 2 1 } 1 1 }  }
	{ iBuff_7 int 64 regular {array 1024 { 2 1 } 1 1 }  }
	{ iBuff_8 int 64 regular {array 1024 { 2 1 } 1 1 }  }
	{ iBuff_9 int 64 regular {array 1024 { 2 1 } 1 1 }  }
	{ iBuff_10 int 64 regular {array 1024 { 2 1 } 1 1 }  }
	{ iBuff_11 int 64 regular {array 1024 { 2 1 } 1 1 }  }
	{ iBuff_12 int 64 regular {array 1024 { 2 1 } 1 1 }  }
	{ iBuff_13 int 64 regular {array 1024 { 2 1 } 1 1 }  }
	{ iBuff_14 int 64 regular {array 1024 { 2 1 } 1 1 }  }
	{ iBuff_15 int 64 regular {array 1024 { 2 1 } 1 1 }  }
	{ iBuff_16 int 64 regular {array 1024 { 2 1 } 1 1 }  }
	{ iBuff_17 int 64 regular {array 1024 { 2 1 } 1 1 }  }
	{ iBuff_18 int 64 regular {array 1024 { 2 1 } 1 1 }  }
	{ iBuff_19 int 64 regular {array 1024 { 2 1 } 1 1 }  }
	{ bramtotal int 5 regular  }
	{ bdrows int 11 regular  }
	{ ram_row_depth int 6 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "iBuff_0", "interface" : "memory", "bitwidth" : 64, "direction" : "READWRITE"} , 
 	{ "Name" : "iBuff_1", "interface" : "memory", "bitwidth" : 64, "direction" : "READWRITE"} , 
 	{ "Name" : "iBuff_2", "interface" : "memory", "bitwidth" : 64, "direction" : "READWRITE"} , 
 	{ "Name" : "iBuff_3", "interface" : "memory", "bitwidth" : 64, "direction" : "READWRITE"} , 
 	{ "Name" : "iBuff_4", "interface" : "memory", "bitwidth" : 64, "direction" : "READWRITE"} , 
 	{ "Name" : "iBuff_5", "interface" : "memory", "bitwidth" : 64, "direction" : "READWRITE"} , 
 	{ "Name" : "iBuff_6", "interface" : "memory", "bitwidth" : 64, "direction" : "READWRITE"} , 
 	{ "Name" : "iBuff_7", "interface" : "memory", "bitwidth" : 64, "direction" : "READWRITE"} , 
 	{ "Name" : "iBuff_8", "interface" : "memory", "bitwidth" : 64, "direction" : "READWRITE"} , 
 	{ "Name" : "iBuff_9", "interface" : "memory", "bitwidth" : 64, "direction" : "READWRITE"} , 
 	{ "Name" : "iBuff_10", "interface" : "memory", "bitwidth" : 64, "direction" : "READWRITE"} , 
 	{ "Name" : "iBuff_11", "interface" : "memory", "bitwidth" : 64, "direction" : "READWRITE"} , 
 	{ "Name" : "iBuff_12", "interface" : "memory", "bitwidth" : 64, "direction" : "READWRITE"} , 
 	{ "Name" : "iBuff_13", "interface" : "memory", "bitwidth" : 64, "direction" : "READWRITE"} , 
 	{ "Name" : "iBuff_14", "interface" : "memory", "bitwidth" : 64, "direction" : "READWRITE"} , 
 	{ "Name" : "iBuff_15", "interface" : "memory", "bitwidth" : 64, "direction" : "READWRITE"} , 
 	{ "Name" : "iBuff_16", "interface" : "memory", "bitwidth" : 64, "direction" : "READWRITE"} , 
 	{ "Name" : "iBuff_17", "interface" : "memory", "bitwidth" : 64, "direction" : "READWRITE"} , 
 	{ "Name" : "iBuff_18", "interface" : "memory", "bitwidth" : 64, "direction" : "READWRITE"} , 
 	{ "Name" : "iBuff_19", "interface" : "memory", "bitwidth" : 64, "direction" : "READWRITE"} , 
 	{ "Name" : "bramtotal", "interface" : "wire", "bitwidth" : 5, "direction" : "READONLY"} , 
 	{ "Name" : "bdrows", "interface" : "wire", "bitwidth" : 11, "direction" : "READONLY"} , 
 	{ "Name" : "ram_row_depth", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 172
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ iBuff_0_address0 sc_out sc_lv 10 signal 0 } 
	{ iBuff_0_ce0 sc_out sc_logic 1 signal 0 } 
	{ iBuff_0_we0 sc_out sc_logic 1 signal 0 } 
	{ iBuff_0_d0 sc_out sc_lv 64 signal 0 } 
	{ iBuff_0_q0 sc_in sc_lv 64 signal 0 } 
	{ iBuff_0_address1 sc_out sc_lv 10 signal 0 } 
	{ iBuff_0_ce1 sc_out sc_logic 1 signal 0 } 
	{ iBuff_0_q1 sc_in sc_lv 64 signal 0 } 
	{ iBuff_1_address0 sc_out sc_lv 10 signal 1 } 
	{ iBuff_1_ce0 sc_out sc_logic 1 signal 1 } 
	{ iBuff_1_we0 sc_out sc_logic 1 signal 1 } 
	{ iBuff_1_d0 sc_out sc_lv 64 signal 1 } 
	{ iBuff_1_q0 sc_in sc_lv 64 signal 1 } 
	{ iBuff_1_address1 sc_out sc_lv 10 signal 1 } 
	{ iBuff_1_ce1 sc_out sc_logic 1 signal 1 } 
	{ iBuff_1_q1 sc_in sc_lv 64 signal 1 } 
	{ iBuff_2_address0 sc_out sc_lv 10 signal 2 } 
	{ iBuff_2_ce0 sc_out sc_logic 1 signal 2 } 
	{ iBuff_2_we0 sc_out sc_logic 1 signal 2 } 
	{ iBuff_2_d0 sc_out sc_lv 64 signal 2 } 
	{ iBuff_2_q0 sc_in sc_lv 64 signal 2 } 
	{ iBuff_2_address1 sc_out sc_lv 10 signal 2 } 
	{ iBuff_2_ce1 sc_out sc_logic 1 signal 2 } 
	{ iBuff_2_q1 sc_in sc_lv 64 signal 2 } 
	{ iBuff_3_address0 sc_out sc_lv 10 signal 3 } 
	{ iBuff_3_ce0 sc_out sc_logic 1 signal 3 } 
	{ iBuff_3_we0 sc_out sc_logic 1 signal 3 } 
	{ iBuff_3_d0 sc_out sc_lv 64 signal 3 } 
	{ iBuff_3_q0 sc_in sc_lv 64 signal 3 } 
	{ iBuff_3_address1 sc_out sc_lv 10 signal 3 } 
	{ iBuff_3_ce1 sc_out sc_logic 1 signal 3 } 
	{ iBuff_3_q1 sc_in sc_lv 64 signal 3 } 
	{ iBuff_4_address0 sc_out sc_lv 10 signal 4 } 
	{ iBuff_4_ce0 sc_out sc_logic 1 signal 4 } 
	{ iBuff_4_we0 sc_out sc_logic 1 signal 4 } 
	{ iBuff_4_d0 sc_out sc_lv 64 signal 4 } 
	{ iBuff_4_q0 sc_in sc_lv 64 signal 4 } 
	{ iBuff_4_address1 sc_out sc_lv 10 signal 4 } 
	{ iBuff_4_ce1 sc_out sc_logic 1 signal 4 } 
	{ iBuff_4_q1 sc_in sc_lv 64 signal 4 } 
	{ iBuff_5_address0 sc_out sc_lv 10 signal 5 } 
	{ iBuff_5_ce0 sc_out sc_logic 1 signal 5 } 
	{ iBuff_5_we0 sc_out sc_logic 1 signal 5 } 
	{ iBuff_5_d0 sc_out sc_lv 64 signal 5 } 
	{ iBuff_5_q0 sc_in sc_lv 64 signal 5 } 
	{ iBuff_5_address1 sc_out sc_lv 10 signal 5 } 
	{ iBuff_5_ce1 sc_out sc_logic 1 signal 5 } 
	{ iBuff_5_q1 sc_in sc_lv 64 signal 5 } 
	{ iBuff_6_address0 sc_out sc_lv 10 signal 6 } 
	{ iBuff_6_ce0 sc_out sc_logic 1 signal 6 } 
	{ iBuff_6_we0 sc_out sc_logic 1 signal 6 } 
	{ iBuff_6_d0 sc_out sc_lv 64 signal 6 } 
	{ iBuff_6_q0 sc_in sc_lv 64 signal 6 } 
	{ iBuff_6_address1 sc_out sc_lv 10 signal 6 } 
	{ iBuff_6_ce1 sc_out sc_logic 1 signal 6 } 
	{ iBuff_6_q1 sc_in sc_lv 64 signal 6 } 
	{ iBuff_7_address0 sc_out sc_lv 10 signal 7 } 
	{ iBuff_7_ce0 sc_out sc_logic 1 signal 7 } 
	{ iBuff_7_we0 sc_out sc_logic 1 signal 7 } 
	{ iBuff_7_d0 sc_out sc_lv 64 signal 7 } 
	{ iBuff_7_q0 sc_in sc_lv 64 signal 7 } 
	{ iBuff_7_address1 sc_out sc_lv 10 signal 7 } 
	{ iBuff_7_ce1 sc_out sc_logic 1 signal 7 } 
	{ iBuff_7_q1 sc_in sc_lv 64 signal 7 } 
	{ iBuff_8_address0 sc_out sc_lv 10 signal 8 } 
	{ iBuff_8_ce0 sc_out sc_logic 1 signal 8 } 
	{ iBuff_8_we0 sc_out sc_logic 1 signal 8 } 
	{ iBuff_8_d0 sc_out sc_lv 64 signal 8 } 
	{ iBuff_8_q0 sc_in sc_lv 64 signal 8 } 
	{ iBuff_8_address1 sc_out sc_lv 10 signal 8 } 
	{ iBuff_8_ce1 sc_out sc_logic 1 signal 8 } 
	{ iBuff_8_q1 sc_in sc_lv 64 signal 8 } 
	{ iBuff_9_address0 sc_out sc_lv 10 signal 9 } 
	{ iBuff_9_ce0 sc_out sc_logic 1 signal 9 } 
	{ iBuff_9_we0 sc_out sc_logic 1 signal 9 } 
	{ iBuff_9_d0 sc_out sc_lv 64 signal 9 } 
	{ iBuff_9_q0 sc_in sc_lv 64 signal 9 } 
	{ iBuff_9_address1 sc_out sc_lv 10 signal 9 } 
	{ iBuff_9_ce1 sc_out sc_logic 1 signal 9 } 
	{ iBuff_9_q1 sc_in sc_lv 64 signal 9 } 
	{ iBuff_10_address0 sc_out sc_lv 10 signal 10 } 
	{ iBuff_10_ce0 sc_out sc_logic 1 signal 10 } 
	{ iBuff_10_we0 sc_out sc_logic 1 signal 10 } 
	{ iBuff_10_d0 sc_out sc_lv 64 signal 10 } 
	{ iBuff_10_q0 sc_in sc_lv 64 signal 10 } 
	{ iBuff_10_address1 sc_out sc_lv 10 signal 10 } 
	{ iBuff_10_ce1 sc_out sc_logic 1 signal 10 } 
	{ iBuff_10_q1 sc_in sc_lv 64 signal 10 } 
	{ iBuff_11_address0 sc_out sc_lv 10 signal 11 } 
	{ iBuff_11_ce0 sc_out sc_logic 1 signal 11 } 
	{ iBuff_11_we0 sc_out sc_logic 1 signal 11 } 
	{ iBuff_11_d0 sc_out sc_lv 64 signal 11 } 
	{ iBuff_11_q0 sc_in sc_lv 64 signal 11 } 
	{ iBuff_11_address1 sc_out sc_lv 10 signal 11 } 
	{ iBuff_11_ce1 sc_out sc_logic 1 signal 11 } 
	{ iBuff_11_q1 sc_in sc_lv 64 signal 11 } 
	{ iBuff_12_address0 sc_out sc_lv 10 signal 12 } 
	{ iBuff_12_ce0 sc_out sc_logic 1 signal 12 } 
	{ iBuff_12_we0 sc_out sc_logic 1 signal 12 } 
	{ iBuff_12_d0 sc_out sc_lv 64 signal 12 } 
	{ iBuff_12_q0 sc_in sc_lv 64 signal 12 } 
	{ iBuff_12_address1 sc_out sc_lv 10 signal 12 } 
	{ iBuff_12_ce1 sc_out sc_logic 1 signal 12 } 
	{ iBuff_12_q1 sc_in sc_lv 64 signal 12 } 
	{ iBuff_13_address0 sc_out sc_lv 10 signal 13 } 
	{ iBuff_13_ce0 sc_out sc_logic 1 signal 13 } 
	{ iBuff_13_we0 sc_out sc_logic 1 signal 13 } 
	{ iBuff_13_d0 sc_out sc_lv 64 signal 13 } 
	{ iBuff_13_q0 sc_in sc_lv 64 signal 13 } 
	{ iBuff_13_address1 sc_out sc_lv 10 signal 13 } 
	{ iBuff_13_ce1 sc_out sc_logic 1 signal 13 } 
	{ iBuff_13_q1 sc_in sc_lv 64 signal 13 } 
	{ iBuff_14_address0 sc_out sc_lv 10 signal 14 } 
	{ iBuff_14_ce0 sc_out sc_logic 1 signal 14 } 
	{ iBuff_14_we0 sc_out sc_logic 1 signal 14 } 
	{ iBuff_14_d0 sc_out sc_lv 64 signal 14 } 
	{ iBuff_14_q0 sc_in sc_lv 64 signal 14 } 
	{ iBuff_14_address1 sc_out sc_lv 10 signal 14 } 
	{ iBuff_14_ce1 sc_out sc_logic 1 signal 14 } 
	{ iBuff_14_q1 sc_in sc_lv 64 signal 14 } 
	{ iBuff_15_address0 sc_out sc_lv 10 signal 15 } 
	{ iBuff_15_ce0 sc_out sc_logic 1 signal 15 } 
	{ iBuff_15_we0 sc_out sc_logic 1 signal 15 } 
	{ iBuff_15_d0 sc_out sc_lv 64 signal 15 } 
	{ iBuff_15_q0 sc_in sc_lv 64 signal 15 } 
	{ iBuff_15_address1 sc_out sc_lv 10 signal 15 } 
	{ iBuff_15_ce1 sc_out sc_logic 1 signal 15 } 
	{ iBuff_15_q1 sc_in sc_lv 64 signal 15 } 
	{ iBuff_16_address0 sc_out sc_lv 10 signal 16 } 
	{ iBuff_16_ce0 sc_out sc_logic 1 signal 16 } 
	{ iBuff_16_we0 sc_out sc_logic 1 signal 16 } 
	{ iBuff_16_d0 sc_out sc_lv 64 signal 16 } 
	{ iBuff_16_q0 sc_in sc_lv 64 signal 16 } 
	{ iBuff_16_address1 sc_out sc_lv 10 signal 16 } 
	{ iBuff_16_ce1 sc_out sc_logic 1 signal 16 } 
	{ iBuff_16_q1 sc_in sc_lv 64 signal 16 } 
	{ iBuff_17_address0 sc_out sc_lv 10 signal 17 } 
	{ iBuff_17_ce0 sc_out sc_logic 1 signal 17 } 
	{ iBuff_17_we0 sc_out sc_logic 1 signal 17 } 
	{ iBuff_17_d0 sc_out sc_lv 64 signal 17 } 
	{ iBuff_17_q0 sc_in sc_lv 64 signal 17 } 
	{ iBuff_17_address1 sc_out sc_lv 10 signal 17 } 
	{ iBuff_17_ce1 sc_out sc_logic 1 signal 17 } 
	{ iBuff_17_q1 sc_in sc_lv 64 signal 17 } 
	{ iBuff_18_address0 sc_out sc_lv 10 signal 18 } 
	{ iBuff_18_ce0 sc_out sc_logic 1 signal 18 } 
	{ iBuff_18_we0 sc_out sc_logic 1 signal 18 } 
	{ iBuff_18_d0 sc_out sc_lv 64 signal 18 } 
	{ iBuff_18_q0 sc_in sc_lv 64 signal 18 } 
	{ iBuff_18_address1 sc_out sc_lv 10 signal 18 } 
	{ iBuff_18_ce1 sc_out sc_logic 1 signal 18 } 
	{ iBuff_18_q1 sc_in sc_lv 64 signal 18 } 
	{ iBuff_19_address0 sc_out sc_lv 10 signal 19 } 
	{ iBuff_19_ce0 sc_out sc_logic 1 signal 19 } 
	{ iBuff_19_we0 sc_out sc_logic 1 signal 19 } 
	{ iBuff_19_d0 sc_out sc_lv 64 signal 19 } 
	{ iBuff_19_q0 sc_in sc_lv 64 signal 19 } 
	{ iBuff_19_address1 sc_out sc_lv 10 signal 19 } 
	{ iBuff_19_ce1 sc_out sc_logic 1 signal 19 } 
	{ iBuff_19_q1 sc_in sc_lv 64 signal 19 } 
	{ bramtotal sc_in sc_lv 5 signal 20 } 
	{ bdrows sc_in sc_lv 11 signal 21 } 
	{ ram_row_depth sc_in sc_lv 6 signal 22 } 
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
 	{ "name": "iBuff_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "iBuff_0", "role": "address0" }} , 
 	{ "name": "iBuff_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "iBuff_0", "role": "ce0" }} , 
 	{ "name": "iBuff_0_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "iBuff_0", "role": "we0" }} , 
 	{ "name": "iBuff_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "iBuff_0", "role": "d0" }} , 
 	{ "name": "iBuff_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "iBuff_0", "role": "q0" }} , 
 	{ "name": "iBuff_0_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "iBuff_0", "role": "address1" }} , 
 	{ "name": "iBuff_0_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "iBuff_0", "role": "ce1" }} , 
 	{ "name": "iBuff_0_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "iBuff_0", "role": "q1" }} , 
 	{ "name": "iBuff_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "iBuff_1", "role": "address0" }} , 
 	{ "name": "iBuff_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "iBuff_1", "role": "ce0" }} , 
 	{ "name": "iBuff_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "iBuff_1", "role": "we0" }} , 
 	{ "name": "iBuff_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "iBuff_1", "role": "d0" }} , 
 	{ "name": "iBuff_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "iBuff_1", "role": "q0" }} , 
 	{ "name": "iBuff_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "iBuff_1", "role": "address1" }} , 
 	{ "name": "iBuff_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "iBuff_1", "role": "ce1" }} , 
 	{ "name": "iBuff_1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "iBuff_1", "role": "q1" }} , 
 	{ "name": "iBuff_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "iBuff_2", "role": "address0" }} , 
 	{ "name": "iBuff_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "iBuff_2", "role": "ce0" }} , 
 	{ "name": "iBuff_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "iBuff_2", "role": "we0" }} , 
 	{ "name": "iBuff_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "iBuff_2", "role": "d0" }} , 
 	{ "name": "iBuff_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "iBuff_2", "role": "q0" }} , 
 	{ "name": "iBuff_2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "iBuff_2", "role": "address1" }} , 
 	{ "name": "iBuff_2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "iBuff_2", "role": "ce1" }} , 
 	{ "name": "iBuff_2_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "iBuff_2", "role": "q1" }} , 
 	{ "name": "iBuff_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "iBuff_3", "role": "address0" }} , 
 	{ "name": "iBuff_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "iBuff_3", "role": "ce0" }} , 
 	{ "name": "iBuff_3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "iBuff_3", "role": "we0" }} , 
 	{ "name": "iBuff_3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "iBuff_3", "role": "d0" }} , 
 	{ "name": "iBuff_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "iBuff_3", "role": "q0" }} , 
 	{ "name": "iBuff_3_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "iBuff_3", "role": "address1" }} , 
 	{ "name": "iBuff_3_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "iBuff_3", "role": "ce1" }} , 
 	{ "name": "iBuff_3_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "iBuff_3", "role": "q1" }} , 
 	{ "name": "iBuff_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "iBuff_4", "role": "address0" }} , 
 	{ "name": "iBuff_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "iBuff_4", "role": "ce0" }} , 
 	{ "name": "iBuff_4_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "iBuff_4", "role": "we0" }} , 
 	{ "name": "iBuff_4_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "iBuff_4", "role": "d0" }} , 
 	{ "name": "iBuff_4_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "iBuff_4", "role": "q0" }} , 
 	{ "name": "iBuff_4_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "iBuff_4", "role": "address1" }} , 
 	{ "name": "iBuff_4_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "iBuff_4", "role": "ce1" }} , 
 	{ "name": "iBuff_4_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "iBuff_4", "role": "q1" }} , 
 	{ "name": "iBuff_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "iBuff_5", "role": "address0" }} , 
 	{ "name": "iBuff_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "iBuff_5", "role": "ce0" }} , 
 	{ "name": "iBuff_5_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "iBuff_5", "role": "we0" }} , 
 	{ "name": "iBuff_5_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "iBuff_5", "role": "d0" }} , 
 	{ "name": "iBuff_5_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "iBuff_5", "role": "q0" }} , 
 	{ "name": "iBuff_5_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "iBuff_5", "role": "address1" }} , 
 	{ "name": "iBuff_5_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "iBuff_5", "role": "ce1" }} , 
 	{ "name": "iBuff_5_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "iBuff_5", "role": "q1" }} , 
 	{ "name": "iBuff_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "iBuff_6", "role": "address0" }} , 
 	{ "name": "iBuff_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "iBuff_6", "role": "ce0" }} , 
 	{ "name": "iBuff_6_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "iBuff_6", "role": "we0" }} , 
 	{ "name": "iBuff_6_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "iBuff_6", "role": "d0" }} , 
 	{ "name": "iBuff_6_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "iBuff_6", "role": "q0" }} , 
 	{ "name": "iBuff_6_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "iBuff_6", "role": "address1" }} , 
 	{ "name": "iBuff_6_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "iBuff_6", "role": "ce1" }} , 
 	{ "name": "iBuff_6_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "iBuff_6", "role": "q1" }} , 
 	{ "name": "iBuff_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "iBuff_7", "role": "address0" }} , 
 	{ "name": "iBuff_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "iBuff_7", "role": "ce0" }} , 
 	{ "name": "iBuff_7_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "iBuff_7", "role": "we0" }} , 
 	{ "name": "iBuff_7_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "iBuff_7", "role": "d0" }} , 
 	{ "name": "iBuff_7_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "iBuff_7", "role": "q0" }} , 
 	{ "name": "iBuff_7_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "iBuff_7", "role": "address1" }} , 
 	{ "name": "iBuff_7_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "iBuff_7", "role": "ce1" }} , 
 	{ "name": "iBuff_7_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "iBuff_7", "role": "q1" }} , 
 	{ "name": "iBuff_8_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "iBuff_8", "role": "address0" }} , 
 	{ "name": "iBuff_8_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "iBuff_8", "role": "ce0" }} , 
 	{ "name": "iBuff_8_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "iBuff_8", "role": "we0" }} , 
 	{ "name": "iBuff_8_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "iBuff_8", "role": "d0" }} , 
 	{ "name": "iBuff_8_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "iBuff_8", "role": "q0" }} , 
 	{ "name": "iBuff_8_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "iBuff_8", "role": "address1" }} , 
 	{ "name": "iBuff_8_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "iBuff_8", "role": "ce1" }} , 
 	{ "name": "iBuff_8_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "iBuff_8", "role": "q1" }} , 
 	{ "name": "iBuff_9_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "iBuff_9", "role": "address0" }} , 
 	{ "name": "iBuff_9_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "iBuff_9", "role": "ce0" }} , 
 	{ "name": "iBuff_9_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "iBuff_9", "role": "we0" }} , 
 	{ "name": "iBuff_9_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "iBuff_9", "role": "d0" }} , 
 	{ "name": "iBuff_9_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "iBuff_9", "role": "q0" }} , 
 	{ "name": "iBuff_9_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "iBuff_9", "role": "address1" }} , 
 	{ "name": "iBuff_9_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "iBuff_9", "role": "ce1" }} , 
 	{ "name": "iBuff_9_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "iBuff_9", "role": "q1" }} , 
 	{ "name": "iBuff_10_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "iBuff_10", "role": "address0" }} , 
 	{ "name": "iBuff_10_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "iBuff_10", "role": "ce0" }} , 
 	{ "name": "iBuff_10_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "iBuff_10", "role": "we0" }} , 
 	{ "name": "iBuff_10_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "iBuff_10", "role": "d0" }} , 
 	{ "name": "iBuff_10_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "iBuff_10", "role": "q0" }} , 
 	{ "name": "iBuff_10_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "iBuff_10", "role": "address1" }} , 
 	{ "name": "iBuff_10_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "iBuff_10", "role": "ce1" }} , 
 	{ "name": "iBuff_10_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "iBuff_10", "role": "q1" }} , 
 	{ "name": "iBuff_11_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "iBuff_11", "role": "address0" }} , 
 	{ "name": "iBuff_11_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "iBuff_11", "role": "ce0" }} , 
 	{ "name": "iBuff_11_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "iBuff_11", "role": "we0" }} , 
 	{ "name": "iBuff_11_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "iBuff_11", "role": "d0" }} , 
 	{ "name": "iBuff_11_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "iBuff_11", "role": "q0" }} , 
 	{ "name": "iBuff_11_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "iBuff_11", "role": "address1" }} , 
 	{ "name": "iBuff_11_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "iBuff_11", "role": "ce1" }} , 
 	{ "name": "iBuff_11_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "iBuff_11", "role": "q1" }} , 
 	{ "name": "iBuff_12_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "iBuff_12", "role": "address0" }} , 
 	{ "name": "iBuff_12_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "iBuff_12", "role": "ce0" }} , 
 	{ "name": "iBuff_12_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "iBuff_12", "role": "we0" }} , 
 	{ "name": "iBuff_12_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "iBuff_12", "role": "d0" }} , 
 	{ "name": "iBuff_12_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "iBuff_12", "role": "q0" }} , 
 	{ "name": "iBuff_12_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "iBuff_12", "role": "address1" }} , 
 	{ "name": "iBuff_12_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "iBuff_12", "role": "ce1" }} , 
 	{ "name": "iBuff_12_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "iBuff_12", "role": "q1" }} , 
 	{ "name": "iBuff_13_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "iBuff_13", "role": "address0" }} , 
 	{ "name": "iBuff_13_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "iBuff_13", "role": "ce0" }} , 
 	{ "name": "iBuff_13_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "iBuff_13", "role": "we0" }} , 
 	{ "name": "iBuff_13_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "iBuff_13", "role": "d0" }} , 
 	{ "name": "iBuff_13_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "iBuff_13", "role": "q0" }} , 
 	{ "name": "iBuff_13_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "iBuff_13", "role": "address1" }} , 
 	{ "name": "iBuff_13_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "iBuff_13", "role": "ce1" }} , 
 	{ "name": "iBuff_13_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "iBuff_13", "role": "q1" }} , 
 	{ "name": "iBuff_14_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "iBuff_14", "role": "address0" }} , 
 	{ "name": "iBuff_14_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "iBuff_14", "role": "ce0" }} , 
 	{ "name": "iBuff_14_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "iBuff_14", "role": "we0" }} , 
 	{ "name": "iBuff_14_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "iBuff_14", "role": "d0" }} , 
 	{ "name": "iBuff_14_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "iBuff_14", "role": "q0" }} , 
 	{ "name": "iBuff_14_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "iBuff_14", "role": "address1" }} , 
 	{ "name": "iBuff_14_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "iBuff_14", "role": "ce1" }} , 
 	{ "name": "iBuff_14_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "iBuff_14", "role": "q1" }} , 
 	{ "name": "iBuff_15_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "iBuff_15", "role": "address0" }} , 
 	{ "name": "iBuff_15_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "iBuff_15", "role": "ce0" }} , 
 	{ "name": "iBuff_15_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "iBuff_15", "role": "we0" }} , 
 	{ "name": "iBuff_15_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "iBuff_15", "role": "d0" }} , 
 	{ "name": "iBuff_15_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "iBuff_15", "role": "q0" }} , 
 	{ "name": "iBuff_15_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "iBuff_15", "role": "address1" }} , 
 	{ "name": "iBuff_15_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "iBuff_15", "role": "ce1" }} , 
 	{ "name": "iBuff_15_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "iBuff_15", "role": "q1" }} , 
 	{ "name": "iBuff_16_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "iBuff_16", "role": "address0" }} , 
 	{ "name": "iBuff_16_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "iBuff_16", "role": "ce0" }} , 
 	{ "name": "iBuff_16_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "iBuff_16", "role": "we0" }} , 
 	{ "name": "iBuff_16_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "iBuff_16", "role": "d0" }} , 
 	{ "name": "iBuff_16_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "iBuff_16", "role": "q0" }} , 
 	{ "name": "iBuff_16_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "iBuff_16", "role": "address1" }} , 
 	{ "name": "iBuff_16_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "iBuff_16", "role": "ce1" }} , 
 	{ "name": "iBuff_16_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "iBuff_16", "role": "q1" }} , 
 	{ "name": "iBuff_17_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "iBuff_17", "role": "address0" }} , 
 	{ "name": "iBuff_17_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "iBuff_17", "role": "ce0" }} , 
 	{ "name": "iBuff_17_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "iBuff_17", "role": "we0" }} , 
 	{ "name": "iBuff_17_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "iBuff_17", "role": "d0" }} , 
 	{ "name": "iBuff_17_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "iBuff_17", "role": "q0" }} , 
 	{ "name": "iBuff_17_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "iBuff_17", "role": "address1" }} , 
 	{ "name": "iBuff_17_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "iBuff_17", "role": "ce1" }} , 
 	{ "name": "iBuff_17_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "iBuff_17", "role": "q1" }} , 
 	{ "name": "iBuff_18_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "iBuff_18", "role": "address0" }} , 
 	{ "name": "iBuff_18_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "iBuff_18", "role": "ce0" }} , 
 	{ "name": "iBuff_18_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "iBuff_18", "role": "we0" }} , 
 	{ "name": "iBuff_18_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "iBuff_18", "role": "d0" }} , 
 	{ "name": "iBuff_18_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "iBuff_18", "role": "q0" }} , 
 	{ "name": "iBuff_18_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "iBuff_18", "role": "address1" }} , 
 	{ "name": "iBuff_18_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "iBuff_18", "role": "ce1" }} , 
 	{ "name": "iBuff_18_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "iBuff_18", "role": "q1" }} , 
 	{ "name": "iBuff_19_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "iBuff_19", "role": "address0" }} , 
 	{ "name": "iBuff_19_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "iBuff_19", "role": "ce0" }} , 
 	{ "name": "iBuff_19_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "iBuff_19", "role": "we0" }} , 
 	{ "name": "iBuff_19_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "iBuff_19", "role": "d0" }} , 
 	{ "name": "iBuff_19_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "iBuff_19", "role": "q0" }} , 
 	{ "name": "iBuff_19_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "iBuff_19", "role": "address1" }} , 
 	{ "name": "iBuff_19_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "iBuff_19", "role": "ce1" }} , 
 	{ "name": "iBuff_19_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "iBuff_19", "role": "q1" }} , 
 	{ "name": "bramtotal", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "bramtotal", "role": "default" }} , 
 	{ "name": "bdrows", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "bdrows", "role": "default" }} , 
 	{ "name": "ram_row_depth", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "ram_row_depth", "role": "default" }} , 
 	{ "name": "ap_ext_blocking_n", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_ext_blocking_n", "role": "default" }} , 
 	{ "name": "ap_str_blocking_n", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_str_blocking_n", "role": "default" }} , 
 	{ "name": "ap_int_blocking_n", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_int_blocking_n", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "46", "47"],
		"CDFG" : "TopDown_20_6_1024_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1468", "EstimateLatencyMax" : "1468",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "iBuff_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_TopDown_20_6_1024_Pipeline_ELEMENTS_P_RAM_fu_366", "Port" : "iBuff_0", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "iBuff_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_TopDown_20_6_1024_Pipeline_ELEMENTS_P_RAM_fu_366", "Port" : "iBuff_1", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "iBuff_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_TopDown_20_6_1024_Pipeline_ELEMENTS_P_RAM_fu_366", "Port" : "iBuff_2", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "iBuff_3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_TopDown_20_6_1024_Pipeline_ELEMENTS_P_RAM_fu_366", "Port" : "iBuff_3", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "iBuff_4", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_TopDown_20_6_1024_Pipeline_ELEMENTS_P_RAM_fu_366", "Port" : "iBuff_4", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "iBuff_5", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_TopDown_20_6_1024_Pipeline_ELEMENTS_P_RAM_fu_366", "Port" : "iBuff_5", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "iBuff_6", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_TopDown_20_6_1024_Pipeline_ELEMENTS_P_RAM_fu_366", "Port" : "iBuff_6", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "iBuff_7", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_TopDown_20_6_1024_Pipeline_ELEMENTS_P_RAM_fu_366", "Port" : "iBuff_7", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "iBuff_8", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_TopDown_20_6_1024_Pipeline_ELEMENTS_P_RAM_fu_366", "Port" : "iBuff_8", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "iBuff_9", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_TopDown_20_6_1024_Pipeline_ELEMENTS_P_RAM_fu_366", "Port" : "iBuff_9", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "iBuff_10", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_TopDown_20_6_1024_Pipeline_ELEMENTS_P_RAM_fu_366", "Port" : "iBuff_10", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "iBuff_11", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_TopDown_20_6_1024_Pipeline_ELEMENTS_P_RAM_fu_366", "Port" : "iBuff_11", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "iBuff_12", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_TopDown_20_6_1024_Pipeline_ELEMENTS_P_RAM_fu_366", "Port" : "iBuff_12", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "iBuff_13", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_TopDown_20_6_1024_Pipeline_ELEMENTS_P_RAM_fu_366", "Port" : "iBuff_13", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "iBuff_14", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_TopDown_20_6_1024_Pipeline_ELEMENTS_P_RAM_fu_366", "Port" : "iBuff_14", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "iBuff_15", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_TopDown_20_6_1024_Pipeline_ELEMENTS_P_RAM_fu_366", "Port" : "iBuff_15", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "iBuff_16", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_TopDown_20_6_1024_Pipeline_ELEMENTS_P_RAM_fu_366", "Port" : "iBuff_16", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "iBuff_17", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_TopDown_20_6_1024_Pipeline_ELEMENTS_P_RAM_fu_366", "Port" : "iBuff_17", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "iBuff_18", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_TopDown_20_6_1024_Pipeline_ELEMENTS_P_RAM_fu_366", "Port" : "iBuff_18", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "iBuff_19", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_TopDown_20_6_1024_Pipeline_ELEMENTS_P_RAM_fu_366", "Port" : "iBuff_19", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "bramtotal", "Type" : "None", "Direction" : "I"},
			{"Name" : "bdrows", "Type" : "None", "Direction" : "I"},
			{"Name" : "ram_row_depth", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_175_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "8", "FirstState" : "ap_ST_fsm_state5", "LastState" : ["ap_ST_fsm_state8"], "QuitState" : ["ap_ST_fsm_state5"], "PreState" : ["ap_ST_fsm_state4"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_TopDown_20_6_1024_Pipeline_ELEMENTS_P_RAM_fu_366", "Parent" : "0", "Child" : ["2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45"],
		"CDFG" : "TopDown_20_6_1024_Pipeline_ELEMENTS_P_RAM",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "484", "EstimateLatencyMax" : "484",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"DependenceCheck" : [
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_165", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_211", "FromFinalSV" : "1", "FromAddress" : "iBuff_0_address1", "FromType" : "R", "ToInitialState" : "ap_enable_state4_pp0_iter3_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter3", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_590", "ToInitialSV" : "3", "ToFinalState" : "ap_enable_state4_pp0_iter3_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter3", "ToFinalOperation" : "ap_enable_operation_590", "ToFinalSV" : "3", "ToAddress" : "iBuff_0_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/home/overman/dev/workspaces/vision/vision_kernels/src/canny/../imgproc/xf_edge_tracing.hpp:195:9)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_165", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_211", "FromFinalSV" : "1", "FromAddress" : "iBuff_0_address1", "FromType" : "R", "ToInitialState" : "ap_enable_state4_pp0_iter3_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter3", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_593", "ToInitialSV" : "3", "ToFinalState" : "ap_enable_state4_pp0_iter3_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter3", "ToFinalOperation" : "ap_enable_operation_593", "ToFinalSV" : "3", "ToAddress" : "iBuff_0_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/home/overman/dev/workspaces/vision/vision_kernels/src/canny/../imgproc/xf_edge_tracing.hpp:195:9)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_167", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_213", "FromFinalSV" : "1", "FromAddress" : "iBuff_1_address1", "FromType" : "R", "ToInitialState" : "ap_enable_state4_pp0_iter3_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter3", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_596", "ToInitialSV" : "3", "ToFinalState" : "ap_enable_state4_pp0_iter3_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter3", "ToFinalOperation" : "ap_enable_operation_596", "ToFinalSV" : "3", "ToAddress" : "iBuff_1_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/home/overman/dev/workspaces/vision/vision_kernels/src/canny/../imgproc/xf_edge_tracing.hpp:195:9)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_169", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_214", "FromFinalSV" : "1", "FromAddress" : "iBuff_2_address1", "FromType" : "R", "ToInitialState" : "ap_enable_state4_pp0_iter3_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter3", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_598", "ToInitialSV" : "3", "ToFinalState" : "ap_enable_state4_pp0_iter3_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter3", "ToFinalOperation" : "ap_enable_operation_598", "ToFinalSV" : "3", "ToAddress" : "iBuff_2_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/home/overman/dev/workspaces/vision/vision_kernels/src/canny/../imgproc/xf_edge_tracing.hpp:195:9)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_171", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_215", "FromFinalSV" : "1", "FromAddress" : "iBuff_3_address1", "FromType" : "R", "ToInitialState" : "ap_enable_state4_pp0_iter3_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter3", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_600", "ToInitialSV" : "3", "ToFinalState" : "ap_enable_state4_pp0_iter3_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter3", "ToFinalOperation" : "ap_enable_operation_600", "ToFinalSV" : "3", "ToAddress" : "iBuff_3_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/home/overman/dev/workspaces/vision/vision_kernels/src/canny/../imgproc/xf_edge_tracing.hpp:195:9)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_173", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_216", "FromFinalSV" : "1", "FromAddress" : "iBuff_4_address1", "FromType" : "R", "ToInitialState" : "ap_enable_state4_pp0_iter3_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter3", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_602", "ToInitialSV" : "3", "ToFinalState" : "ap_enable_state4_pp0_iter3_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter3", "ToFinalOperation" : "ap_enable_operation_602", "ToFinalSV" : "3", "ToAddress" : "iBuff_4_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/home/overman/dev/workspaces/vision/vision_kernels/src/canny/../imgproc/xf_edge_tracing.hpp:195:9)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_175", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_217", "FromFinalSV" : "1", "FromAddress" : "iBuff_5_address1", "FromType" : "R", "ToInitialState" : "ap_enable_state4_pp0_iter3_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter3", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_604", "ToInitialSV" : "3", "ToFinalState" : "ap_enable_state4_pp0_iter3_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter3", "ToFinalOperation" : "ap_enable_operation_604", "ToFinalSV" : "3", "ToAddress" : "iBuff_5_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/home/overman/dev/workspaces/vision/vision_kernels/src/canny/../imgproc/xf_edge_tracing.hpp:195:9)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_177", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_218", "FromFinalSV" : "1", "FromAddress" : "iBuff_6_address1", "FromType" : "R", "ToInitialState" : "ap_enable_state4_pp0_iter3_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter3", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_606", "ToInitialSV" : "3", "ToFinalState" : "ap_enable_state4_pp0_iter3_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter3", "ToFinalOperation" : "ap_enable_operation_606", "ToFinalSV" : "3", "ToAddress" : "iBuff_6_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/home/overman/dev/workspaces/vision/vision_kernels/src/canny/../imgproc/xf_edge_tracing.hpp:195:9)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_179", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_219", "FromFinalSV" : "1", "FromAddress" : "iBuff_7_address1", "FromType" : "R", "ToInitialState" : "ap_enable_state4_pp0_iter3_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter3", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_608", "ToInitialSV" : "3", "ToFinalState" : "ap_enable_state4_pp0_iter3_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter3", "ToFinalOperation" : "ap_enable_operation_608", "ToFinalSV" : "3", "ToAddress" : "iBuff_7_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/home/overman/dev/workspaces/vision/vision_kernels/src/canny/../imgproc/xf_edge_tracing.hpp:195:9)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_181", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_220", "FromFinalSV" : "1", "FromAddress" : "iBuff_8_address1", "FromType" : "R", "ToInitialState" : "ap_enable_state4_pp0_iter3_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter3", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_610", "ToInitialSV" : "3", "ToFinalState" : "ap_enable_state4_pp0_iter3_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter3", "ToFinalOperation" : "ap_enable_operation_610", "ToFinalSV" : "3", "ToAddress" : "iBuff_8_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/home/overman/dev/workspaces/vision/vision_kernels/src/canny/../imgproc/xf_edge_tracing.hpp:195:9)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_183", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_221", "FromFinalSV" : "1", "FromAddress" : "iBuff_9_address1", "FromType" : "R", "ToInitialState" : "ap_enable_state4_pp0_iter3_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter3", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_612", "ToInitialSV" : "3", "ToFinalState" : "ap_enable_state4_pp0_iter3_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter3", "ToFinalOperation" : "ap_enable_operation_612", "ToFinalSV" : "3", "ToAddress" : "iBuff_9_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/home/overman/dev/workspaces/vision/vision_kernels/src/canny/../imgproc/xf_edge_tracing.hpp:195:9)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_185", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_222", "FromFinalSV" : "1", "FromAddress" : "iBuff_10_address1", "FromType" : "R", "ToInitialState" : "ap_enable_state4_pp0_iter3_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter3", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_614", "ToInitialSV" : "3", "ToFinalState" : "ap_enable_state4_pp0_iter3_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter3", "ToFinalOperation" : "ap_enable_operation_614", "ToFinalSV" : "3", "ToAddress" : "iBuff_10_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/home/overman/dev/workspaces/vision/vision_kernels/src/canny/../imgproc/xf_edge_tracing.hpp:195:9)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_187", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_223", "FromFinalSV" : "1", "FromAddress" : "iBuff_11_address1", "FromType" : "R", "ToInitialState" : "ap_enable_state4_pp0_iter3_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter3", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_616", "ToInitialSV" : "3", "ToFinalState" : "ap_enable_state4_pp0_iter3_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter3", "ToFinalOperation" : "ap_enable_operation_616", "ToFinalSV" : "3", "ToAddress" : "iBuff_11_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/home/overman/dev/workspaces/vision/vision_kernels/src/canny/../imgproc/xf_edge_tracing.hpp:195:9)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_189", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_224", "FromFinalSV" : "1", "FromAddress" : "iBuff_12_address1", "FromType" : "R", "ToInitialState" : "ap_enable_state4_pp0_iter3_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter3", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_618", "ToInitialSV" : "3", "ToFinalState" : "ap_enable_state4_pp0_iter3_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter3", "ToFinalOperation" : "ap_enable_operation_618", "ToFinalSV" : "3", "ToAddress" : "iBuff_12_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/home/overman/dev/workspaces/vision/vision_kernels/src/canny/../imgproc/xf_edge_tracing.hpp:195:9)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_191", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_225", "FromFinalSV" : "1", "FromAddress" : "iBuff_13_address1", "FromType" : "R", "ToInitialState" : "ap_enable_state4_pp0_iter3_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter3", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_620", "ToInitialSV" : "3", "ToFinalState" : "ap_enable_state4_pp0_iter3_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter3", "ToFinalOperation" : "ap_enable_operation_620", "ToFinalSV" : "3", "ToAddress" : "iBuff_13_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/home/overman/dev/workspaces/vision/vision_kernels/src/canny/../imgproc/xf_edge_tracing.hpp:195:9)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_193", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_226", "FromFinalSV" : "1", "FromAddress" : "iBuff_14_address1", "FromType" : "R", "ToInitialState" : "ap_enable_state4_pp0_iter3_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter3", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_622", "ToInitialSV" : "3", "ToFinalState" : "ap_enable_state4_pp0_iter3_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter3", "ToFinalOperation" : "ap_enable_operation_622", "ToFinalSV" : "3", "ToAddress" : "iBuff_14_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/home/overman/dev/workspaces/vision/vision_kernels/src/canny/../imgproc/xf_edge_tracing.hpp:195:9)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_195", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_227", "FromFinalSV" : "1", "FromAddress" : "iBuff_15_address1", "FromType" : "R", "ToInitialState" : "ap_enable_state4_pp0_iter3_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter3", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_624", "ToInitialSV" : "3", "ToFinalState" : "ap_enable_state4_pp0_iter3_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter3", "ToFinalOperation" : "ap_enable_operation_624", "ToFinalSV" : "3", "ToAddress" : "iBuff_15_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/home/overman/dev/workspaces/vision/vision_kernels/src/canny/../imgproc/xf_edge_tracing.hpp:195:9)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_197", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_228", "FromFinalSV" : "1", "FromAddress" : "iBuff_16_address1", "FromType" : "R", "ToInitialState" : "ap_enable_state4_pp0_iter3_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter3", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_626", "ToInitialSV" : "3", "ToFinalState" : "ap_enable_state4_pp0_iter3_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter3", "ToFinalOperation" : "ap_enable_operation_626", "ToFinalSV" : "3", "ToAddress" : "iBuff_16_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/home/overman/dev/workspaces/vision/vision_kernels/src/canny/../imgproc/xf_edge_tracing.hpp:195:9)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_199", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_229", "FromFinalSV" : "1", "FromAddress" : "iBuff_17_address1", "FromType" : "R", "ToInitialState" : "ap_enable_state4_pp0_iter3_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter3", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_628", "ToInitialSV" : "3", "ToFinalState" : "ap_enable_state4_pp0_iter3_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter3", "ToFinalOperation" : "ap_enable_operation_628", "ToFinalSV" : "3", "ToAddress" : "iBuff_17_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/home/overman/dev/workspaces/vision/vision_kernels/src/canny/../imgproc/xf_edge_tracing.hpp:195:9)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_201", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_230", "FromFinalSV" : "1", "FromAddress" : "iBuff_18_address1", "FromType" : "R", "ToInitialState" : "ap_enable_state4_pp0_iter3_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter3", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_630", "ToInitialSV" : "3", "ToFinalState" : "ap_enable_state4_pp0_iter3_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter3", "ToFinalOperation" : "ap_enable_operation_630", "ToFinalSV" : "3", "ToAddress" : "iBuff_18_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/home/overman/dev/workspaces/vision/vision_kernels/src/canny/../imgproc/xf_edge_tracing.hpp:195:9)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_203", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_231", "FromFinalSV" : "1", "FromAddress" : "iBuff_19_address1", "FromType" : "R", "ToInitialState" : "ap_enable_state4_pp0_iter3_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter3", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_632", "ToInitialSV" : "3", "ToFinalState" : "ap_enable_state4_pp0_iter3_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter3", "ToFinalOperation" : "ap_enable_operation_632", "ToFinalSV" : "3", "ToAddress" : "iBuff_19_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/home/overman/dev/workspaces/vision/vision_kernels/src/canny/../imgproc/xf_edge_tracing.hpp:195:9)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state4_pp0_iter3_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter3", "FromInitialOperation" : "ap_enable_operation_590", "FromInitialSV" : "3", "FromFinalState" : "ap_enable_state4_pp0_iter3_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter3", "FromFinalOperation" : "ap_enable_operation_590", "FromFinalSV" : "3", "FromAddress" : "iBuff_0_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_165", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state2_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_211", "ToFinalSV" : "1", "ToAddress" : "iBuff_0_address1", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/home/overman/dev/workspaces/vision/vision_kernels/src/canny/../imgproc/xf_edge_tracing.hpp:195:9)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state1_pp0_iter0_stage0", "ap_enable_state2_pp0_iter1_stage0", "ap_enable_state4_pp0_iter3_stage0"]},
			{"FromInitialState" : "ap_enable_state4_pp0_iter3_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter3", "FromInitialOperation" : "ap_enable_operation_590", "FromInitialSV" : "3", "FromFinalState" : "ap_enable_state4_pp0_iter3_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter3", "FromFinalOperation" : "ap_enable_operation_590", "FromFinalSV" : "3", "FromAddress" : "iBuff_0_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state4_pp0_iter3_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter3", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_593", "ToInitialSV" : "3", "ToFinalState" : "ap_enable_state4_pp0_iter3_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter3", "ToFinalOperation" : "ap_enable_operation_593", "ToFinalSV" : "3", "ToAddress" : "iBuff_0_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/home/overman/dev/workspaces/vision/vision_kernels/src/canny/../imgproc/xf_edge_tracing.hpp:195:9)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state4_pp0_iter3_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter3", "FromInitialOperation" : "ap_enable_operation_593", "FromInitialSV" : "3", "FromFinalState" : "ap_enable_state4_pp0_iter3_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter3", "FromFinalOperation" : "ap_enable_operation_593", "FromFinalSV" : "3", "FromAddress" : "iBuff_0_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state4_pp0_iter3_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter3", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_590", "ToInitialSV" : "3", "ToFinalState" : "ap_enable_state4_pp0_iter3_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter3", "ToFinalOperation" : "ap_enable_operation_590", "ToFinalSV" : "3", "ToAddress" : "iBuff_0_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/home/overman/dev/workspaces/vision/vision_kernels/src/canny/../imgproc/xf_edge_tracing.hpp:195:9)", "Type" : "WAW"}],
		"Port" : [
			{"Name" : "arr1_V_19", "Type" : "None", "Direction" : "I"},
			{"Name" : "arr1_V_18", "Type" : "None", "Direction" : "I"},
			{"Name" : "arr1_V_17", "Type" : "None", "Direction" : "I"},
			{"Name" : "arr1_V_16", "Type" : "None", "Direction" : "I"},
			{"Name" : "arr1_V_15", "Type" : "None", "Direction" : "I"},
			{"Name" : "arr1_V_14", "Type" : "None", "Direction" : "I"},
			{"Name" : "arr1_V_13", "Type" : "None", "Direction" : "I"},
			{"Name" : "arr1_V_12", "Type" : "None", "Direction" : "I"},
			{"Name" : "arr1_V_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "arr1_V_10", "Type" : "None", "Direction" : "I"},
			{"Name" : "arr1_V_9", "Type" : "None", "Direction" : "I"},
			{"Name" : "arr1_V_8", "Type" : "None", "Direction" : "I"},
			{"Name" : "arr1_V_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "arr1_V_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "arr1_V_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "arr1_V_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "arr1_V_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "arr1_V_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "arr1_V_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "arr1_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "arr3_V_19", "Type" : "None", "Direction" : "I"},
			{"Name" : "arr3_V_18", "Type" : "None", "Direction" : "I"},
			{"Name" : "arr3_V_17", "Type" : "None", "Direction" : "I"},
			{"Name" : "arr3_V_16", "Type" : "None", "Direction" : "I"},
			{"Name" : "arr3_V_15", "Type" : "None", "Direction" : "I"},
			{"Name" : "arr3_V_14", "Type" : "None", "Direction" : "I"},
			{"Name" : "arr3_V_13", "Type" : "None", "Direction" : "I"},
			{"Name" : "arr3_V_12", "Type" : "None", "Direction" : "I"},
			{"Name" : "arr3_V_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "arr3_V_10", "Type" : "None", "Direction" : "I"},
			{"Name" : "arr3_V_9", "Type" : "None", "Direction" : "I"},
			{"Name" : "arr3_V_8", "Type" : "None", "Direction" : "I"},
			{"Name" : "arr3_V_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "arr3_V_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "arr3_V_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "arr3_V_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "arr3_V_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "arr3_V_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "arr3_V_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "arr3_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "mul_ln175", "Type" : "None", "Direction" : "I"},
			{"Name" : "iBuff_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "iBuff_2", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "iBuff_3", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "iBuff_4", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "iBuff_5", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "iBuff_6", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "iBuff_7", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "iBuff_8", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "iBuff_9", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "iBuff_10", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "iBuff_11", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "iBuff_12", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "iBuff_13", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "iBuff_14", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "iBuff_15", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "iBuff_16", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "iBuff_17", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "iBuff_18", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "iBuff_19", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "bramtotal", "Type" : "None", "Direction" : "I"},
			{"Name" : "iBuff_0", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "j", "Type" : "None", "Direction" : "I"},
			{"Name" : "icmp_ln233", "Type" : "None", "Direction" : "I"},
			{"Name" : "icmp_ln233_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "or_ln233", "Type" : "None", "Direction" : "I"},
			{"Name" : "mul172", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp216_cast", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "ELEMENTS_P_RAM", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter3", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter3", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TopDown_20_6_1024_Pipeline_ELEMENTS_P_RAM_fu_366.call_ret1_PixelProcessNew_1_s_fu_1166", "Parent" : "1",
		"CDFG" : "PixelProcessNew_1_s",
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
			{"Name" : "k1", "Type" : "None", "Direction" : "I"},
			{"Name" : "k2", "Type" : "None", "Direction" : "I"},
			{"Name" : "k3", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TopDown_20_6_1024_Pipeline_ELEMENTS_P_RAM_fu_366.call_ret2_PixelProcessNew_1_s_fu_1173", "Parent" : "1",
		"CDFG" : "PixelProcessNew_1_s",
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
			{"Name" : "k1", "Type" : "None", "Direction" : "I"},
			{"Name" : "k2", "Type" : "None", "Direction" : "I"},
			{"Name" : "k3", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TopDown_20_6_1024_Pipeline_ELEMENTS_P_RAM_fu_366.call_ret3_PixelProcessNew_1_s_fu_1180", "Parent" : "1",
		"CDFG" : "PixelProcessNew_1_s",
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
			{"Name" : "k1", "Type" : "None", "Direction" : "I"},
			{"Name" : "k2", "Type" : "None", "Direction" : "I"},
			{"Name" : "k3", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TopDown_20_6_1024_Pipeline_ELEMENTS_P_RAM_fu_366.call_ret4_PixelProcessNew_1_s_fu_1187", "Parent" : "1",
		"CDFG" : "PixelProcessNew_1_s",
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
			{"Name" : "k1", "Type" : "None", "Direction" : "I"},
			{"Name" : "k2", "Type" : "None", "Direction" : "I"},
			{"Name" : "k3", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TopDown_20_6_1024_Pipeline_ELEMENTS_P_RAM_fu_366.call_ret5_PixelProcessNew_1_s_fu_1194", "Parent" : "1",
		"CDFG" : "PixelProcessNew_1_s",
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
			{"Name" : "k1", "Type" : "None", "Direction" : "I"},
			{"Name" : "k2", "Type" : "None", "Direction" : "I"},
			{"Name" : "k3", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TopDown_20_6_1024_Pipeline_ELEMENTS_P_RAM_fu_366.call_ret_PixelProcessNew_1_s_fu_1201", "Parent" : "1",
		"CDFG" : "PixelProcessNew_1_s",
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
			{"Name" : "k1", "Type" : "None", "Direction" : "I"},
			{"Name" : "k2", "Type" : "None", "Direction" : "I"},
			{"Name" : "k3", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TopDown_20_6_1024_Pipeline_ELEMENTS_P_RAM_fu_366.mux_32_64_1_1_U49", "Parent" : "1"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TopDown_20_6_1024_Pipeline_ELEMENTS_P_RAM_fu_366.mux_32_64_1_1_U50", "Parent" : "1"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TopDown_20_6_1024_Pipeline_ELEMENTS_P_RAM_fu_366.mux_32_64_1_1_U51", "Parent" : "1"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TopDown_20_6_1024_Pipeline_ELEMENTS_P_RAM_fu_366.mux_32_64_1_1_U52", "Parent" : "1"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TopDown_20_6_1024_Pipeline_ELEMENTS_P_RAM_fu_366.mux_32_64_1_1_U53", "Parent" : "1"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TopDown_20_6_1024_Pipeline_ELEMENTS_P_RAM_fu_366.mux_32_64_1_1_U54", "Parent" : "1"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TopDown_20_6_1024_Pipeline_ELEMENTS_P_RAM_fu_366.mux_32_64_1_1_U55", "Parent" : "1"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TopDown_20_6_1024_Pipeline_ELEMENTS_P_RAM_fu_366.mux_32_64_1_1_U56", "Parent" : "1"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TopDown_20_6_1024_Pipeline_ELEMENTS_P_RAM_fu_366.mux_32_64_1_1_U57", "Parent" : "1"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TopDown_20_6_1024_Pipeline_ELEMENTS_P_RAM_fu_366.mux_32_64_1_1_U58", "Parent" : "1"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TopDown_20_6_1024_Pipeline_ELEMENTS_P_RAM_fu_366.mux_32_64_1_1_U59", "Parent" : "1"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TopDown_20_6_1024_Pipeline_ELEMENTS_P_RAM_fu_366.mux_32_64_1_1_U60", "Parent" : "1"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TopDown_20_6_1024_Pipeline_ELEMENTS_P_RAM_fu_366.mux_32_64_1_1_U61", "Parent" : "1"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TopDown_20_6_1024_Pipeline_ELEMENTS_P_RAM_fu_366.mux_32_64_1_1_U62", "Parent" : "1"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TopDown_20_6_1024_Pipeline_ELEMENTS_P_RAM_fu_366.mux_32_64_1_1_U63", "Parent" : "1"},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TopDown_20_6_1024_Pipeline_ELEMENTS_P_RAM_fu_366.mux_32_64_1_1_U64", "Parent" : "1"},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TopDown_20_6_1024_Pipeline_ELEMENTS_P_RAM_fu_366.mux_32_64_1_1_U65", "Parent" : "1"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TopDown_20_6_1024_Pipeline_ELEMENTS_P_RAM_fu_366.mux_32_64_1_1_U66", "Parent" : "1"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TopDown_20_6_1024_Pipeline_ELEMENTS_P_RAM_fu_366.mux_32_64_1_1_U67", "Parent" : "1"},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TopDown_20_6_1024_Pipeline_ELEMENTS_P_RAM_fu_366.mux_32_64_1_1_U68", "Parent" : "1"},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TopDown_20_6_1024_Pipeline_ELEMENTS_P_RAM_fu_366.mux_32_64_1_1_U69", "Parent" : "1"},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TopDown_20_6_1024_Pipeline_ELEMENTS_P_RAM_fu_366.mux_32_64_1_1_U70", "Parent" : "1"},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TopDown_20_6_1024_Pipeline_ELEMENTS_P_RAM_fu_366.mux_32_64_1_1_U71", "Parent" : "1"},
	{"ID" : "31", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TopDown_20_6_1024_Pipeline_ELEMENTS_P_RAM_fu_366.mux_32_64_1_1_U72", "Parent" : "1"},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TopDown_20_6_1024_Pipeline_ELEMENTS_P_RAM_fu_366.mux_32_64_1_1_U73", "Parent" : "1"},
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TopDown_20_6_1024_Pipeline_ELEMENTS_P_RAM_fu_366.mux_32_64_1_1_U74", "Parent" : "1"},
	{"ID" : "34", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TopDown_20_6_1024_Pipeline_ELEMENTS_P_RAM_fu_366.mux_32_64_1_1_U75", "Parent" : "1"},
	{"ID" : "35", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TopDown_20_6_1024_Pipeline_ELEMENTS_P_RAM_fu_366.mux_32_64_1_1_U76", "Parent" : "1"},
	{"ID" : "36", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TopDown_20_6_1024_Pipeline_ELEMENTS_P_RAM_fu_366.mux_32_64_1_1_U77", "Parent" : "1"},
	{"ID" : "37", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TopDown_20_6_1024_Pipeline_ELEMENTS_P_RAM_fu_366.mux_32_64_1_1_U78", "Parent" : "1"},
	{"ID" : "38", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TopDown_20_6_1024_Pipeline_ELEMENTS_P_RAM_fu_366.mux_32_64_1_1_U79", "Parent" : "1"},
	{"ID" : "39", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TopDown_20_6_1024_Pipeline_ELEMENTS_P_RAM_fu_366.mux_32_64_1_1_U80", "Parent" : "1"},
	{"ID" : "40", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TopDown_20_6_1024_Pipeline_ELEMENTS_P_RAM_fu_366.mux_32_64_1_1_U81", "Parent" : "1"},
	{"ID" : "41", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TopDown_20_6_1024_Pipeline_ELEMENTS_P_RAM_fu_366.mux_32_64_1_1_U82", "Parent" : "1"},
	{"ID" : "42", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TopDown_20_6_1024_Pipeline_ELEMENTS_P_RAM_fu_366.mux_32_64_1_1_U83", "Parent" : "1"},
	{"ID" : "43", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TopDown_20_6_1024_Pipeline_ELEMENTS_P_RAM_fu_366.mux_32_64_1_1_U84", "Parent" : "1"},
	{"ID" : "44", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TopDown_20_6_1024_Pipeline_ELEMENTS_P_RAM_fu_366.mux_325_64_1_1_U85", "Parent" : "1"},
	{"ID" : "45", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_TopDown_20_6_1024_Pipeline_ELEMENTS_P_RAM_fu_366.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"},
	{"ID" : "46", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_6ns_11ns_17_4_1_U156", "Parent" : "0"},
	{"ID" : "47", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_12s_6ns_18_4_1_U157", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	TopDown_20_6_1024_s {
		iBuff_0 {Type IO LastRead 4 FirstWrite 3}
		iBuff_1 {Type IO LastRead 4 FirstWrite 3}
		iBuff_2 {Type IO LastRead 4 FirstWrite 3}
		iBuff_3 {Type IO LastRead 4 FirstWrite 3}
		iBuff_4 {Type IO LastRead 4 FirstWrite 3}
		iBuff_5 {Type IO LastRead 4 FirstWrite 3}
		iBuff_6 {Type IO LastRead 4 FirstWrite 3}
		iBuff_7 {Type IO LastRead 4 FirstWrite 3}
		iBuff_8 {Type IO LastRead 4 FirstWrite 3}
		iBuff_9 {Type IO LastRead 4 FirstWrite 3}
		iBuff_10 {Type IO LastRead 4 FirstWrite 3}
		iBuff_11 {Type IO LastRead 4 FirstWrite 3}
		iBuff_12 {Type IO LastRead 4 FirstWrite 3}
		iBuff_13 {Type IO LastRead 4 FirstWrite 3}
		iBuff_14 {Type IO LastRead 4 FirstWrite 3}
		iBuff_15 {Type IO LastRead 4 FirstWrite 3}
		iBuff_16 {Type IO LastRead 4 FirstWrite 3}
		iBuff_17 {Type IO LastRead 4 FirstWrite 3}
		iBuff_18 {Type IO LastRead 4 FirstWrite 3}
		iBuff_19 {Type IO LastRead 4 FirstWrite 3}
		bramtotal {Type I LastRead 3 FirstWrite -1}
		bdrows {Type I LastRead 0 FirstWrite -1}
		ram_row_depth {Type I LastRead 0 FirstWrite -1}}
	TopDown_20_6_1024_Pipeline_ELEMENTS_P_RAM {
		arr1_V_19 {Type I LastRead 0 FirstWrite -1}
		arr1_V_18 {Type I LastRead 0 FirstWrite -1}
		arr1_V_17 {Type I LastRead 0 FirstWrite -1}
		arr1_V_16 {Type I LastRead 0 FirstWrite -1}
		arr1_V_15 {Type I LastRead 0 FirstWrite -1}
		arr1_V_14 {Type I LastRead 0 FirstWrite -1}
		arr1_V_13 {Type I LastRead 0 FirstWrite -1}
		arr1_V_12 {Type I LastRead 0 FirstWrite -1}
		arr1_V_11 {Type I LastRead 0 FirstWrite -1}
		arr1_V_10 {Type I LastRead 0 FirstWrite -1}
		arr1_V_9 {Type I LastRead 0 FirstWrite -1}
		arr1_V_8 {Type I LastRead 0 FirstWrite -1}
		arr1_V_7 {Type I LastRead 0 FirstWrite -1}
		arr1_V_6 {Type I LastRead 0 FirstWrite -1}
		arr1_V_5 {Type I LastRead 0 FirstWrite -1}
		arr1_V_4 {Type I LastRead 0 FirstWrite -1}
		arr1_V_3 {Type I LastRead 0 FirstWrite -1}
		arr1_V_2 {Type I LastRead 0 FirstWrite -1}
		arr1_V_1 {Type I LastRead 0 FirstWrite -1}
		arr1_V {Type I LastRead 0 FirstWrite -1}
		arr3_V_19 {Type I LastRead 0 FirstWrite -1}
		arr3_V_18 {Type I LastRead 0 FirstWrite -1}
		arr3_V_17 {Type I LastRead 0 FirstWrite -1}
		arr3_V_16 {Type I LastRead 0 FirstWrite -1}
		arr3_V_15 {Type I LastRead 0 FirstWrite -1}
		arr3_V_14 {Type I LastRead 0 FirstWrite -1}
		arr3_V_13 {Type I LastRead 0 FirstWrite -1}
		arr3_V_12 {Type I LastRead 0 FirstWrite -1}
		arr3_V_11 {Type I LastRead 0 FirstWrite -1}
		arr3_V_10 {Type I LastRead 0 FirstWrite -1}
		arr3_V_9 {Type I LastRead 0 FirstWrite -1}
		arr3_V_8 {Type I LastRead 0 FirstWrite -1}
		arr3_V_7 {Type I LastRead 0 FirstWrite -1}
		arr3_V_6 {Type I LastRead 0 FirstWrite -1}
		arr3_V_5 {Type I LastRead 0 FirstWrite -1}
		arr3_V_4 {Type I LastRead 0 FirstWrite -1}
		arr3_V_3 {Type I LastRead 0 FirstWrite -1}
		arr3_V_2 {Type I LastRead 0 FirstWrite -1}
		arr3_V_1 {Type I LastRead 0 FirstWrite -1}
		arr3_V {Type I LastRead 0 FirstWrite -1}
		mul_ln175 {Type I LastRead 0 FirstWrite -1}
		iBuff_1 {Type IO LastRead 0 FirstWrite 3}
		iBuff_2 {Type IO LastRead 0 FirstWrite 3}
		iBuff_3 {Type IO LastRead 0 FirstWrite 3}
		iBuff_4 {Type IO LastRead 0 FirstWrite 3}
		iBuff_5 {Type IO LastRead 0 FirstWrite 3}
		iBuff_6 {Type IO LastRead 0 FirstWrite 3}
		iBuff_7 {Type IO LastRead 0 FirstWrite 3}
		iBuff_8 {Type IO LastRead 0 FirstWrite 3}
		iBuff_9 {Type IO LastRead 0 FirstWrite 3}
		iBuff_10 {Type IO LastRead 0 FirstWrite 3}
		iBuff_11 {Type IO LastRead 0 FirstWrite 3}
		iBuff_12 {Type IO LastRead 0 FirstWrite 3}
		iBuff_13 {Type IO LastRead 0 FirstWrite 3}
		iBuff_14 {Type IO LastRead 0 FirstWrite 3}
		iBuff_15 {Type IO LastRead 0 FirstWrite 3}
		iBuff_16 {Type IO LastRead 0 FirstWrite 3}
		iBuff_17 {Type IO LastRead 0 FirstWrite 3}
		iBuff_18 {Type IO LastRead 0 FirstWrite 3}
		iBuff_19 {Type IO LastRead 0 FirstWrite 3}
		bramtotal {Type I LastRead 0 FirstWrite -1}
		iBuff_0 {Type IO LastRead 0 FirstWrite 3}
		j {Type I LastRead 0 FirstWrite -1}
		icmp_ln233 {Type I LastRead 0 FirstWrite -1}
		icmp_ln233_1 {Type I LastRead 0 FirstWrite -1}
		or_ln233 {Type I LastRead 0 FirstWrite -1}
		mul172 {Type I LastRead 0 FirstWrite -1}
		tmp216_cast {Type I LastRead 0 FirstWrite -1}}
	PixelProcessNew_1_s {
		k1 {Type I LastRead 0 FirstWrite -1}
		k2 {Type I LastRead 0 FirstWrite -1}
		k3 {Type I LastRead 0 FirstWrite -1}}
	PixelProcessNew_1_s {
		k1 {Type I LastRead 0 FirstWrite -1}
		k2 {Type I LastRead 0 FirstWrite -1}
		k3 {Type I LastRead 0 FirstWrite -1}}
	PixelProcessNew_1_s {
		k1 {Type I LastRead 0 FirstWrite -1}
		k2 {Type I LastRead 0 FirstWrite -1}
		k3 {Type I LastRead 0 FirstWrite -1}}
	PixelProcessNew_1_s {
		k1 {Type I LastRead 0 FirstWrite -1}
		k2 {Type I LastRead 0 FirstWrite -1}
		k3 {Type I LastRead 0 FirstWrite -1}}
	PixelProcessNew_1_s {
		k1 {Type I LastRead 0 FirstWrite -1}
		k2 {Type I LastRead 0 FirstWrite -1}
		k3 {Type I LastRead 0 FirstWrite -1}}
	PixelProcessNew_1_s {
		k1 {Type I LastRead 0 FirstWrite -1}
		k2 {Type I LastRead 0 FirstWrite -1}
		k3 {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1468", "Max" : "1468"}
	, {"Name" : "Interval", "Min" : "1468", "Max" : "1468"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	iBuff_0 { ap_memory {  { iBuff_0_address0 mem_address 1 10 }  { iBuff_0_ce0 mem_ce 1 1 }  { iBuff_0_we0 mem_we 1 1 }  { iBuff_0_d0 mem_din 1 64 }  { iBuff_0_q0 in_data 0 64 }  { iBuff_0_address1 MemPortADDR2 1 10 }  { iBuff_0_ce1 MemPortCE2 1 1 }  { iBuff_0_q1 MemPortDOUT2 0 64 } } }
	iBuff_1 { ap_memory {  { iBuff_1_address0 mem_address 1 10 }  { iBuff_1_ce0 mem_ce 1 1 }  { iBuff_1_we0 mem_we 1 1 }  { iBuff_1_d0 mem_din 1 64 }  { iBuff_1_q0 in_data 0 64 }  { iBuff_1_address1 MemPortADDR2 1 10 }  { iBuff_1_ce1 MemPortCE2 1 1 }  { iBuff_1_q1 MemPortDOUT2 0 64 } } }
	iBuff_2 { ap_memory {  { iBuff_2_address0 mem_address 1 10 }  { iBuff_2_ce0 mem_ce 1 1 }  { iBuff_2_we0 mem_we 1 1 }  { iBuff_2_d0 mem_din 1 64 }  { iBuff_2_q0 in_data 0 64 }  { iBuff_2_address1 MemPortADDR2 1 10 }  { iBuff_2_ce1 MemPortCE2 1 1 }  { iBuff_2_q1 MemPortDOUT2 0 64 } } }
	iBuff_3 { ap_memory {  { iBuff_3_address0 mem_address 1 10 }  { iBuff_3_ce0 mem_ce 1 1 }  { iBuff_3_we0 mem_we 1 1 }  { iBuff_3_d0 mem_din 1 64 }  { iBuff_3_q0 in_data 0 64 }  { iBuff_3_address1 MemPortADDR2 1 10 }  { iBuff_3_ce1 MemPortCE2 1 1 }  { iBuff_3_q1 MemPortDOUT2 0 64 } } }
	iBuff_4 { ap_memory {  { iBuff_4_address0 mem_address 1 10 }  { iBuff_4_ce0 mem_ce 1 1 }  { iBuff_4_we0 mem_we 1 1 }  { iBuff_4_d0 mem_din 1 64 }  { iBuff_4_q0 in_data 0 64 }  { iBuff_4_address1 MemPortADDR2 1 10 }  { iBuff_4_ce1 MemPortCE2 1 1 }  { iBuff_4_q1 MemPortDOUT2 0 64 } } }
	iBuff_5 { ap_memory {  { iBuff_5_address0 mem_address 1 10 }  { iBuff_5_ce0 mem_ce 1 1 }  { iBuff_5_we0 mem_we 1 1 }  { iBuff_5_d0 mem_din 1 64 }  { iBuff_5_q0 in_data 0 64 }  { iBuff_5_address1 MemPortADDR2 1 10 }  { iBuff_5_ce1 MemPortCE2 1 1 }  { iBuff_5_q1 MemPortDOUT2 0 64 } } }
	iBuff_6 { ap_memory {  { iBuff_6_address0 mem_address 1 10 }  { iBuff_6_ce0 mem_ce 1 1 }  { iBuff_6_we0 mem_we 1 1 }  { iBuff_6_d0 mem_din 1 64 }  { iBuff_6_q0 in_data 0 64 }  { iBuff_6_address1 MemPortADDR2 1 10 }  { iBuff_6_ce1 MemPortCE2 1 1 }  { iBuff_6_q1 MemPortDOUT2 0 64 } } }
	iBuff_7 { ap_memory {  { iBuff_7_address0 mem_address 1 10 }  { iBuff_7_ce0 mem_ce 1 1 }  { iBuff_7_we0 mem_we 1 1 }  { iBuff_7_d0 mem_din 1 64 }  { iBuff_7_q0 in_data 0 64 }  { iBuff_7_address1 MemPortADDR2 1 10 }  { iBuff_7_ce1 MemPortCE2 1 1 }  { iBuff_7_q1 MemPortDOUT2 0 64 } } }
	iBuff_8 { ap_memory {  { iBuff_8_address0 mem_address 1 10 }  { iBuff_8_ce0 mem_ce 1 1 }  { iBuff_8_we0 mem_we 1 1 }  { iBuff_8_d0 mem_din 1 64 }  { iBuff_8_q0 in_data 0 64 }  { iBuff_8_address1 MemPortADDR2 1 10 }  { iBuff_8_ce1 MemPortCE2 1 1 }  { iBuff_8_q1 MemPortDOUT2 0 64 } } }
	iBuff_9 { ap_memory {  { iBuff_9_address0 mem_address 1 10 }  { iBuff_9_ce0 mem_ce 1 1 }  { iBuff_9_we0 mem_we 1 1 }  { iBuff_9_d0 mem_din 1 64 }  { iBuff_9_q0 in_data 0 64 }  { iBuff_9_address1 MemPortADDR2 1 10 }  { iBuff_9_ce1 MemPortCE2 1 1 }  { iBuff_9_q1 MemPortDOUT2 0 64 } } }
	iBuff_10 { ap_memory {  { iBuff_10_address0 mem_address 1 10 }  { iBuff_10_ce0 mem_ce 1 1 }  { iBuff_10_we0 mem_we 1 1 }  { iBuff_10_d0 mem_din 1 64 }  { iBuff_10_q0 in_data 0 64 }  { iBuff_10_address1 MemPortADDR2 1 10 }  { iBuff_10_ce1 MemPortCE2 1 1 }  { iBuff_10_q1 MemPortDOUT2 0 64 } } }
	iBuff_11 { ap_memory {  { iBuff_11_address0 mem_address 1 10 }  { iBuff_11_ce0 mem_ce 1 1 }  { iBuff_11_we0 mem_we 1 1 }  { iBuff_11_d0 mem_din 1 64 }  { iBuff_11_q0 in_data 0 64 }  { iBuff_11_address1 MemPortADDR2 1 10 }  { iBuff_11_ce1 MemPortCE2 1 1 }  { iBuff_11_q1 MemPortDOUT2 0 64 } } }
	iBuff_12 { ap_memory {  { iBuff_12_address0 mem_address 1 10 }  { iBuff_12_ce0 mem_ce 1 1 }  { iBuff_12_we0 mem_we 1 1 }  { iBuff_12_d0 mem_din 1 64 }  { iBuff_12_q0 in_data 0 64 }  { iBuff_12_address1 MemPortADDR2 1 10 }  { iBuff_12_ce1 MemPortCE2 1 1 }  { iBuff_12_q1 MemPortDOUT2 0 64 } } }
	iBuff_13 { ap_memory {  { iBuff_13_address0 mem_address 1 10 }  { iBuff_13_ce0 mem_ce 1 1 }  { iBuff_13_we0 mem_we 1 1 }  { iBuff_13_d0 mem_din 1 64 }  { iBuff_13_q0 in_data 0 64 }  { iBuff_13_address1 MemPortADDR2 1 10 }  { iBuff_13_ce1 MemPortCE2 1 1 }  { iBuff_13_q1 MemPortDOUT2 0 64 } } }
	iBuff_14 { ap_memory {  { iBuff_14_address0 mem_address 1 10 }  { iBuff_14_ce0 mem_ce 1 1 }  { iBuff_14_we0 mem_we 1 1 }  { iBuff_14_d0 mem_din 1 64 }  { iBuff_14_q0 in_data 0 64 }  { iBuff_14_address1 MemPortADDR2 1 10 }  { iBuff_14_ce1 MemPortCE2 1 1 }  { iBuff_14_q1 MemPortDOUT2 0 64 } } }
	iBuff_15 { ap_memory {  { iBuff_15_address0 mem_address 1 10 }  { iBuff_15_ce0 mem_ce 1 1 }  { iBuff_15_we0 mem_we 1 1 }  { iBuff_15_d0 mem_din 1 64 }  { iBuff_15_q0 in_data 0 64 }  { iBuff_15_address1 MemPortADDR2 1 10 }  { iBuff_15_ce1 MemPortCE2 1 1 }  { iBuff_15_q1 MemPortDOUT2 0 64 } } }
	iBuff_16 { ap_memory {  { iBuff_16_address0 mem_address 1 10 }  { iBuff_16_ce0 mem_ce 1 1 }  { iBuff_16_we0 mem_we 1 1 }  { iBuff_16_d0 mem_din 1 64 }  { iBuff_16_q0 in_data 0 64 }  { iBuff_16_address1 MemPortADDR2 1 10 }  { iBuff_16_ce1 MemPortCE2 1 1 }  { iBuff_16_q1 MemPortDOUT2 0 64 } } }
	iBuff_17 { ap_memory {  { iBuff_17_address0 mem_address 1 10 }  { iBuff_17_ce0 mem_ce 1 1 }  { iBuff_17_we0 mem_we 1 1 }  { iBuff_17_d0 mem_din 1 64 }  { iBuff_17_q0 in_data 0 64 }  { iBuff_17_address1 MemPortADDR2 1 10 }  { iBuff_17_ce1 MemPortCE2 1 1 }  { iBuff_17_q1 MemPortDOUT2 0 64 } } }
	iBuff_18 { ap_memory {  { iBuff_18_address0 mem_address 1 10 }  { iBuff_18_ce0 mem_ce 1 1 }  { iBuff_18_we0 mem_we 1 1 }  { iBuff_18_d0 mem_din 1 64 }  { iBuff_18_q0 in_data 0 64 }  { iBuff_18_address1 MemPortADDR2 1 10 }  { iBuff_18_ce1 MemPortCE2 1 1 }  { iBuff_18_q1 MemPortDOUT2 0 64 } } }
	iBuff_19 { ap_memory {  { iBuff_19_address0 mem_address 1 10 }  { iBuff_19_ce0 mem_ce 1 1 }  { iBuff_19_we0 mem_we 1 1 }  { iBuff_19_d0 mem_din 1 64 }  { iBuff_19_q0 in_data 0 64 }  { iBuff_19_address1 MemPortADDR2 1 10 }  { iBuff_19_ce1 MemPortCE2 1 1 }  { iBuff_19_q1 MemPortDOUT2 0 64 } } }
	bramtotal { ap_none {  { bramtotal in_data 0 5 } } }
	bdrows { ap_none {  { bdrows in_data 0 11 } } }
	ram_row_depth { ap_none {  { ram_row_depth in_data 0 6 } } }
}
