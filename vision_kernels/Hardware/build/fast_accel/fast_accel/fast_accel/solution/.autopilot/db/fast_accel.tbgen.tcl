set moduleName fast_accel
set isTopModule 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type dataflow
set FunctionProtocol ap_ctrl_chain
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set C_modelName {fast_accel}
set C_modelType { void 0 }
set C_modelArgList {
	{ gmem0 int 8 regular {axi_master 0}  }
	{ gmem1 int 8 regular {axi_master 1}  }
	{ img_in int 64 regular {axi_slave 0}  }
	{ threshold uint 8 regular {axi_slave 0}  }
	{ img_out int 64 regular {axi_slave 0}  }
	{ rows int 32 regular {axi_slave 0}  }
	{ cols int 32 regular {axi_slave 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "gmem0", "interface" : "axi_master", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "img_in","offset": { "type": "dynamic","port_name": "img_in","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "gmem1", "interface" : "axi_master", "bitwidth" : 8, "direction" : "WRITEONLY", "bitSlice":[ {"cElement": [{"cName": "img_out","offset": { "type": "dynamic","port_name": "img_out","bundle": "control"},"direction": "WRITEONLY"}]}]} , 
 	{ "Name" : "img_in", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":16}, "offset_end" : {"in":27}} , 
 	{ "Name" : "threshold", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 8, "direction" : "READONLY", "offset" : {"in":28}, "offset_end" : {"in":35}} , 
 	{ "Name" : "img_out", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":36}, "offset_end" : {"in":47}} , 
 	{ "Name" : "rows", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":48}, "offset_end" : {"in":55}} , 
 	{ "Name" : "cols", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":56}, "offset_end" : {"in":63}} ]}
# RTL Port declarations: 
set portNum 110
set portList { 
	{ s_axi_control_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_AWADDR sc_in sc_lv 6 signal -1 } 
	{ s_axi_control_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_control_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_control_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_ARADDR sc_in sc_lv 6 signal -1 } 
	{ s_axi_control_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_control_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_control_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_BRESP sc_out sc_lv 2 signal -1 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ interrupt sc_out sc_logic 1 signal -1 } 
	{ m_axi_gmem0_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem0_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem0_AWADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem0_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem0_AWLEN sc_out sc_lv 8 signal 0 } 
	{ m_axi_gmem0_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem0_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem0_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem0_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem0_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem0_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem0_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem0_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem0_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem0_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem0_WDATA sc_out sc_lv 32 signal 0 } 
	{ m_axi_gmem0_WSTRB sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem0_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem0_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem0_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem0_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem0_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem0_ARADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem0_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem0_ARLEN sc_out sc_lv 8 signal 0 } 
	{ m_axi_gmem0_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem0_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem0_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem0_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem0_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem0_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem0_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem0_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem0_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem0_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem0_RDATA sc_in sc_lv 32 signal 0 } 
	{ m_axi_gmem0_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem0_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem0_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem0_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_gmem0_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem0_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem0_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_gmem0_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem0_BUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem1_AWVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem1_AWREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmem1_AWADDR sc_out sc_lv 64 signal 1 } 
	{ m_axi_gmem1_AWID sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmem1_AWLEN sc_out sc_lv 8 signal 1 } 
	{ m_axi_gmem1_AWSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_gmem1_AWBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_gmem1_AWLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_gmem1_AWCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem1_AWPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_gmem1_AWQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem1_AWREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem1_AWUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmem1_WVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem1_WREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmem1_WDATA sc_out sc_lv 32 signal 1 } 
	{ m_axi_gmem1_WSTRB sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem1_WLAST sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem1_WID sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmem1_WUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmem1_ARVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem1_ARREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmem1_ARADDR sc_out sc_lv 64 signal 1 } 
	{ m_axi_gmem1_ARID sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmem1_ARLEN sc_out sc_lv 8 signal 1 } 
	{ m_axi_gmem1_ARSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_gmem1_ARBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_gmem1_ARLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_gmem1_ARCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem1_ARPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_gmem1_ARQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem1_ARREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem1_ARUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmem1_RVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmem1_RREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem1_RDATA sc_in sc_lv 32 signal 1 } 
	{ m_axi_gmem1_RLAST sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmem1_RID sc_in sc_lv 1 signal 1 } 
	{ m_axi_gmem1_RUSER sc_in sc_lv 1 signal 1 } 
	{ m_axi_gmem1_RRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_gmem1_BVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmem1_BREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem1_BRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_gmem1_BID sc_in sc_lv 1 signal 1 } 
	{ m_axi_gmem1_BUSER sc_in sc_lv 1 signal 1 } 
}
set NewPortList {[ 
	{ "name": "s_axi_control_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "control", "role": "AWADDR" },"address":[{"name":"fast_accel","role":"start","value":"0","valid_bit":"0"},{"name":"fast_accel","role":"continue","value":"0","valid_bit":"4"},{"name":"fast_accel","role":"auto_start","value":"0","valid_bit":"7"},{"name":"img_in","role":"data","value":"16"},{"name":"threshold","role":"data","value":"28"},{"name":"img_out","role":"data","value":"36"},{"name":"rows","role":"data","value":"48"},{"name":"cols","role":"data","value":"56"}] },
	{ "name": "s_axi_control_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWVALID" } },
	{ "name": "s_axi_control_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWREADY" } },
	{ "name": "s_axi_control_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WVALID" } },
	{ "name": "s_axi_control_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WREADY" } },
	{ "name": "s_axi_control_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "WDATA" } },
	{ "name": "s_axi_control_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "control", "role": "WSTRB" } },
	{ "name": "s_axi_control_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "control", "role": "ARADDR" },"address":[{"name":"fast_accel","role":"start","value":"0","valid_bit":"0"},{"name":"fast_accel","role":"done","value":"0","valid_bit":"1"},{"name":"fast_accel","role":"idle","value":"0","valid_bit":"2"},{"name":"fast_accel","role":"ready","value":"0","valid_bit":"3"},{"name":"fast_accel","role":"auto_start","value":"0","valid_bit":"7"}] },
	{ "name": "s_axi_control_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "ARVALID" } },
	{ "name": "s_axi_control_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "ARREADY" } },
	{ "name": "s_axi_control_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "RVALID" } },
	{ "name": "s_axi_control_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "RREADY" } },
	{ "name": "s_axi_control_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "RDATA" } },
	{ "name": "s_axi_control_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "control", "role": "RRESP" } },
	{ "name": "s_axi_control_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "BVALID" } },
	{ "name": "s_axi_control_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "BREADY" } },
	{ "name": "s_axi_control_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "control", "role": "BRESP" } },
	{ "name": "interrupt", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "interrupt" } }, 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "m_axi_gmem0_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem0_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem0_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem0", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem0_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem0_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem0", "role": "AWLEN" }} , 
 	{ "name": "m_axi_gmem0_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem0", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_gmem0_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "AWBURST" }} , 
 	{ "name": "m_axi_gmem0_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_gmem0_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_gmem0_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem0", "role": "AWPROT" }} , 
 	{ "name": "m_axi_gmem0_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "AWQOS" }} , 
 	{ "name": "m_axi_gmem0_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "AWREGION" }} , 
 	{ "name": "m_axi_gmem0_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "AWUSER" }} , 
 	{ "name": "m_axi_gmem0_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "WVALID" }} , 
 	{ "name": "m_axi_gmem0_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "WREADY" }} , 
 	{ "name": "m_axi_gmem0_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem0", "role": "WDATA" }} , 
 	{ "name": "m_axi_gmem0_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "WSTRB" }} , 
 	{ "name": "m_axi_gmem0_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "WLAST" }} , 
 	{ "name": "m_axi_gmem0_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "WID" }} , 
 	{ "name": "m_axi_gmem0_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "WUSER" }} , 
 	{ "name": "m_axi_gmem0_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "ARVALID" }} , 
 	{ "name": "m_axi_gmem0_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "ARREADY" }} , 
 	{ "name": "m_axi_gmem0_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem0", "role": "ARADDR" }} , 
 	{ "name": "m_axi_gmem0_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "ARID" }} , 
 	{ "name": "m_axi_gmem0_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem0", "role": "ARLEN" }} , 
 	{ "name": "m_axi_gmem0_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem0", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_gmem0_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "ARBURST" }} , 
 	{ "name": "m_axi_gmem0_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_gmem0_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_gmem0_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem0", "role": "ARPROT" }} , 
 	{ "name": "m_axi_gmem0_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "ARQOS" }} , 
 	{ "name": "m_axi_gmem0_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "ARREGION" }} , 
 	{ "name": "m_axi_gmem0_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "ARUSER" }} , 
 	{ "name": "m_axi_gmem0_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "RVALID" }} , 
 	{ "name": "m_axi_gmem0_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "RREADY" }} , 
 	{ "name": "m_axi_gmem0_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem0", "role": "RDATA" }} , 
 	{ "name": "m_axi_gmem0_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "RLAST" }} , 
 	{ "name": "m_axi_gmem0_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "RID" }} , 
 	{ "name": "m_axi_gmem0_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "RUSER" }} , 
 	{ "name": "m_axi_gmem0_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "RRESP" }} , 
 	{ "name": "m_axi_gmem0_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "BVALID" }} , 
 	{ "name": "m_axi_gmem0_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "BREADY" }} , 
 	{ "name": "m_axi_gmem0_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "BRESP" }} , 
 	{ "name": "m_axi_gmem0_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "BID" }} , 
 	{ "name": "m_axi_gmem0_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "BUSER" }} , 
 	{ "name": "m_axi_gmem1_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem1_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem1_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem1", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem1_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem1_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem1", "role": "AWLEN" }} , 
 	{ "name": "m_axi_gmem1_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem1", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_gmem1_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem1", "role": "AWBURST" }} , 
 	{ "name": "m_axi_gmem1_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem1", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_gmem1_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem1", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_gmem1_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem1", "role": "AWPROT" }} , 
 	{ "name": "m_axi_gmem1_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem1", "role": "AWQOS" }} , 
 	{ "name": "m_axi_gmem1_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem1", "role": "AWREGION" }} , 
 	{ "name": "m_axi_gmem1_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "AWUSER" }} , 
 	{ "name": "m_axi_gmem1_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "WVALID" }} , 
 	{ "name": "m_axi_gmem1_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "WREADY" }} , 
 	{ "name": "m_axi_gmem1_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem1", "role": "WDATA" }} , 
 	{ "name": "m_axi_gmem1_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem1", "role": "WSTRB" }} , 
 	{ "name": "m_axi_gmem1_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "WLAST" }} , 
 	{ "name": "m_axi_gmem1_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "WID" }} , 
 	{ "name": "m_axi_gmem1_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "WUSER" }} , 
 	{ "name": "m_axi_gmem1_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "ARVALID" }} , 
 	{ "name": "m_axi_gmem1_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "ARREADY" }} , 
 	{ "name": "m_axi_gmem1_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem1", "role": "ARADDR" }} , 
 	{ "name": "m_axi_gmem1_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "ARID" }} , 
 	{ "name": "m_axi_gmem1_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem1", "role": "ARLEN" }} , 
 	{ "name": "m_axi_gmem1_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem1", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_gmem1_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem1", "role": "ARBURST" }} , 
 	{ "name": "m_axi_gmem1_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem1", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_gmem1_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem1", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_gmem1_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem1", "role": "ARPROT" }} , 
 	{ "name": "m_axi_gmem1_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem1", "role": "ARQOS" }} , 
 	{ "name": "m_axi_gmem1_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem1", "role": "ARREGION" }} , 
 	{ "name": "m_axi_gmem1_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "ARUSER" }} , 
 	{ "name": "m_axi_gmem1_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "RVALID" }} , 
 	{ "name": "m_axi_gmem1_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "RREADY" }} , 
 	{ "name": "m_axi_gmem1_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem1", "role": "RDATA" }} , 
 	{ "name": "m_axi_gmem1_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "RLAST" }} , 
 	{ "name": "m_axi_gmem1_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "RID" }} , 
 	{ "name": "m_axi_gmem1_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "RUSER" }} , 
 	{ "name": "m_axi_gmem1_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem1", "role": "RRESP" }} , 
 	{ "name": "m_axi_gmem1_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "BVALID" }} , 
 	{ "name": "m_axi_gmem1_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "BREADY" }} , 
 	{ "name": "m_axi_gmem1_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem1", "role": "BRESP" }} , 
 	{ "name": "m_axi_gmem1_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "BID" }} , 
 	{ "name": "m_axi_gmem1_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "BUSER" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "27", "76", "99", "100", "101", "102", "103", "104", "105", "106", "107", "108", "109"],
		"CDFG" : "fast_accel",
		"Protocol" : "ap_ctrl_chain",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "16644499", "EstimateLatencyMax" : "16644499",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"InputProcess" : [
			{"ID" : "4", "Name" : "entry_proc9_U0"},
			{"ID" : "5", "Name" : "Block_entry1_proc_U0"},
			{"ID" : "6", "Name" : "Array2xfMat_8_0_2160_3840_1_2_U0"}],
		"OutputProcess" : [
			{"ID" : "76", "Name" : "xfMat2Array_8_0_2160_3840_1_2_1_U0"}],
		"Port" : [
			{"Name" : "gmem0", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "Array2xfMat_8_0_2160_3840_1_2_U0", "Port" : "gmem0"}]},
			{"Name" : "gmem1", "Type" : "MAXI", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "76", "SubInstance" : "xfMat2Array_8_0_2160_3840_1_2_1_U0", "Port" : "gmem1"}]},
			{"Name" : "img_in", "Type" : "None", "Direction" : "I"},
			{"Name" : "threshold", "Type" : "None", "Direction" : "I"},
			{"Name" : "img_out", "Type" : "None", "Direction" : "I"},
			{"Name" : "rows", "Type" : "None", "Direction" : "I"},
			{"Name" : "cols", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.control_s_axi_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.gmem0_m_axi_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.gmem1_m_axi_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.entry_proc9_U0", "Parent" : "0",
		"CDFG" : "entry_proc9",
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
			{"Name" : "threshold", "Type" : "None", "Direction" : "I"},
			{"Name" : "threshold_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["27"], "DependentChan" : "99", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "threshold_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "img_out", "Type" : "None", "Direction" : "I"},
			{"Name" : "img_out_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["76"], "DependentChan" : "100", "DependentChanDepth" : "5", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "img_out_c_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Block_entry1_proc_U0", "Parent" : "0",
		"CDFG" : "Block_entry1_proc",
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
			{"Name" : "rows", "Type" : "None", "Direction" : "I"},
			{"Name" : "cols", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Array2xfMat_8_0_2160_3840_1_2_U0", "Parent" : "0", "Child" : ["7"],
		"CDFG" : "Array2xfMat_8_0_2160_3840_1_2_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "82", "EstimateLatencyMax" : "8294481",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "gmem0", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_Axi2Mat_fu_84", "Port" : "gmem0", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "srcPtr", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : ["5"], "DependentChan" : "103", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I", "DependentProc" : ["5"], "DependentChan" : "104", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "imgInput_data1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["27"], "DependentChan" : "105", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_Axi2Mat_fu_84", "Port" : "imgInput_data1", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "imgInput_rows_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["27"], "DependentChan" : "106", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "imgInput_rows_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "imgInput_cols_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["27"], "DependentChan" : "107", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "imgInput_cols_c_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Array2xfMat_8_0_2160_3840_1_2_U0.grp_Axi2Mat_fu_84", "Parent" : "6", "Child" : ["8", "13", "23", "24", "25", "26"],
		"CDFG" : "Axi2Mat",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "80", "EstimateLatencyMax" : "8294479",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"InputProcess" : [
			{"ID" : "8", "Name" : "Axi2AxiStream_U0"}],
		"OutputProcess" : [
			{"ID" : "13", "Name" : "AxiStream2Mat_U0"}],
		"Port" : [
			{"Name" : "gmem0", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "Axi2AxiStream_U0", "Port" : "gmem0"}]},
			{"Name" : "din", "Type" : "None", "Direction" : "I"},
			{"Name" : "imgInput_data1", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "AxiStream2Mat_U0", "Port" : "imgInput_data1"}]},
			{"Name" : "rows", "Type" : "None", "Direction" : "I"},
			{"Name" : "cols", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "8", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Array2xfMat_8_0_2160_3840_1_2_U0.grp_Axi2Mat_fu_84.Axi2AxiStream_U0", "Parent" : "7", "Child" : ["9", "11", "12"],
		"CDFG" : "Axi2AxiStream",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "78", "EstimateLatencyMax" : "3917",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "gmem0", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "gmem0_blk_n_AR", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_Axi2AxiStream_Pipeline_VITIS_LOOP_1022_1_fu_108", "Port" : "gmem0", "Inst_start_state" : "74", "Inst_end_state" : "75"}]},
			{"Name" : "din", "Type" : "None", "Direction" : "I"},
			{"Name" : "ldata", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["13","16"], "DependentChan" : "23", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_Axi2AxiStream_Pipeline_VITIS_LOOP_1022_1_fu_108", "Port" : "ldata", "Inst_start_state" : "74", "Inst_end_state" : "75"}]},
			{"Name" : "rows", "Type" : "None", "Direction" : "I"},
			{"Name" : "cols", "Type" : "None", "Direction" : "I"},
			{"Name" : "rows_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["13","14"], "DependentChan" : "24", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "rows_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cols_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["13","14"], "DependentChan" : "25", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "cols_c_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "9", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.Array2xfMat_8_0_2160_3840_1_2_U0.grp_Axi2Mat_fu_84.Axi2AxiStream_U0.grp_Axi2AxiStream_Pipeline_VITIS_LOOP_1022_1_fu_108", "Parent" : "8", "Child" : ["10"],
		"CDFG" : "Axi2AxiStream_Pipeline_VITIS_LOOP_1022_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "3843",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "gmem0", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "gmem0_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "din", "Type" : "None", "Direction" : "I"},
			{"Name" : "mul_ln1022", "Type" : "None", "Direction" : "I"},
			{"Name" : "ldata", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "ldata_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_1022_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "10", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.Array2xfMat_8_0_2160_3840_1_2_U0.grp_Axi2Mat_fu_84.Axi2AxiStream_U0.grp_Axi2AxiStream_Pipeline_VITIS_LOOP_1022_1_fu_108.flow_control_loop_pipe_sequential_init_U", "Parent" : "9"},
	{"ID" : "11", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.Array2xfMat_8_0_2160_3840_1_2_U0.grp_Axi2Mat_fu_84.Axi2AxiStream_U0.mul_mul_16ns_16ns_32_3_1_U11", "Parent" : "8"},
	{"ID" : "12", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.Array2xfMat_8_0_2160_3840_1_2_U0.grp_Axi2Mat_fu_84.Axi2AxiStream_U0.mul_mul_16ns_16ns_24_4_1_U12", "Parent" : "8"},
	{"ID" : "13", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Array2xfMat_8_0_2160_3840_1_2_U0.grp_Axi2Mat_fu_84.AxiStream2Mat_U0", "Parent" : "7", "Child" : ["14", "15", "16", "20", "21", "22"],
		"CDFG" : "AxiStream2Mat",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "7", "EstimateLatencyMax" : "8294406",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"StartSource" : "8",
		"StartFifo" : "start_for_AxiStream2Mat_U0_U",
		"InputProcess" : [
			{"ID" : "14", "Name" : "entry_proc7_U0"},
			{"ID" : "15", "Name" : "last_blk_pxl_width_U0"}],
		"OutputProcess" : [
			{"ID" : "16", "Name" : "AxiStream2MatStream_2_U0"}],
		"Port" : [
			{"Name" : "ldata1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["8"], "DependentChan" : "23", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "AxiStream2MatStream_2_U0", "Port" : "ldata1"}]},
			{"Name" : "imgInput_data1", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "AxiStream2MatStream_2_U0", "Port" : "imgInput_data1"}]},
			{"Name" : "rows", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["8"], "DependentChan" : "24", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "entry_proc7_U0", "Port" : "rows"}]},
			{"Name" : "cols", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["8"], "DependentChan" : "25", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "entry_proc7_U0", "Port" : "cols"}]}]},
	{"ID" : "14", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.Array2xfMat_8_0_2160_3840_1_2_U0.grp_Axi2Mat_fu_84.AxiStream2Mat_U0.entry_proc7_U0", "Parent" : "13",
		"CDFG" : "entry_proc7",
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
			{"Name" : "rows", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["8"], "DependentChan" : "24", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "rows_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "rows_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["16"], "DependentChan" : "20", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "rows_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cols", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["8"], "DependentChan" : "25", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "cols_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cols_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["16"], "DependentChan" : "21", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "cols_c_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "15", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.Array2xfMat_8_0_2160_3840_1_2_U0.grp_Axi2Mat_fu_84.AxiStream2Mat_U0.last_blk_pxl_width_U0", "Parent" : "13",
		"CDFG" : "last_blk_pxl_width",
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
			{"Name" : "return_r", "Type" : "None", "Direction" : "O", "DependentProc" : ["16"], "DependentChan" : "22", "DependentChanDepth" : "2", "DependentChanType" : "1"}]},
	{"ID" : "16", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.Array2xfMat_8_0_2160_3840_1_2_U0.grp_Axi2Mat_fu_84.AxiStream2Mat_U0.AxiStream2MatStream_2_U0", "Parent" : "13", "Child" : ["17", "19"],
		"CDFG" : "AxiStream2MatStream_2_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "6", "EstimateLatencyMax" : "8294405",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "ldata1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["8"], "DependentChan" : "23", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "17", "SubInstance" : "grp_AxiStream2MatStream_2_Pipeline_MMIterInLoopRow_fu_62", "Port" : "ldata1", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "imgInput_data1", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "17", "SubInstance" : "grp_AxiStream2MatStream_2_Pipeline_MMIterInLoopRow_fu_62", "Port" : "imgInput_data1", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "rows", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["14"], "DependentChan" : "20", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "rows_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cols_bound_per_npc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["14"], "DependentChan" : "21", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "cols_bound_per_npc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "last_blk_width", "Type" : "None", "Direction" : "I", "DependentProc" : ["15"], "DependentChan" : "22", "DependentChanDepth" : "2", "DependentChanType" : "1"}]},
	{"ID" : "17", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.Array2xfMat_8_0_2160_3840_1_2_U0.grp_Axi2Mat_fu_84.AxiStream2Mat_U0.AxiStream2MatStream_2_U0.grp_AxiStream2MatStream_2_Pipeline_MMIterInLoopRow_fu_62", "Parent" : "16", "Child" : ["18"],
		"CDFG" : "AxiStream2MatStream_2_Pipeline_MMIterInLoopRow",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "8294403",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "bound", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln1075", "Type" : "None", "Direction" : "I"},
			{"Name" : "cols_bound_per_npc_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "ldata1", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "ldata1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "sub", "Type" : "None", "Direction" : "I"},
			{"Name" : "last_blk_width_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "sub3", "Type" : "None", "Direction" : "I"},
			{"Name" : "add_ln1075", "Type" : "None", "Direction" : "I"},
			{"Name" : "imgInput_data1", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "imgInput_data1_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "MMIterInLoopRow", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter3", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter3", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "18", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.Array2xfMat_8_0_2160_3840_1_2_U0.grp_Axi2Mat_fu_84.AxiStream2Mat_U0.AxiStream2MatStream_2_U0.grp_AxiStream2MatStream_2_Pipeline_MMIterInLoopRow_fu_62.flow_control_loop_pipe_sequential_init_U", "Parent" : "17"},
	{"ID" : "19", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.Array2xfMat_8_0_2160_3840_1_2_U0.grp_Axi2Mat_fu_84.AxiStream2Mat_U0.AxiStream2MatStream_2_U0.mul_32s_32s_32_1_1_U36", "Parent" : "16"},
	{"ID" : "20", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.Array2xfMat_8_0_2160_3840_1_2_U0.grp_Axi2Mat_fu_84.AxiStream2Mat_U0.rows_c_U", "Parent" : "13"},
	{"ID" : "21", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.Array2xfMat_8_0_2160_3840_1_2_U0.grp_Axi2Mat_fu_84.AxiStream2Mat_U0.cols_c_U", "Parent" : "13"},
	{"ID" : "22", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.Array2xfMat_8_0_2160_3840_1_2_U0.grp_Axi2Mat_fu_84.AxiStream2Mat_U0.last_blk_width_channel_U", "Parent" : "13"},
	{"ID" : "23", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Array2xfMat_8_0_2160_3840_1_2_U0.grp_Axi2Mat_fu_84.ldata_U", "Parent" : "7"},
	{"ID" : "24", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Array2xfMat_8_0_2160_3840_1_2_U0.grp_Axi2Mat_fu_84.rows_c_U", "Parent" : "7"},
	{"ID" : "25", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Array2xfMat_8_0_2160_3840_1_2_U0.grp_Axi2Mat_fu_84.cols_c_U", "Parent" : "7"},
	{"ID" : "26", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Array2xfMat_8_0_2160_3840_1_2_U0.grp_Axi2Mat_fu_84.start_for_AxiStream2Mat_U0_U", "Parent" : "7"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fast_1_0_2160_3840_1_2_2_U0", "Parent" : "0", "Child" : ["28"],
		"CDFG" : "fast_1_0_2160_3840_1_2_2_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "16644495", "EstimateLatencyMax" : "16644495",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"StartSource" : "4",
		"StartFifo" : "start_for_fast_1_0_2160_3840_1_2_2_U0_U",
		"Port" : [
			{"Name" : "p_src_mat_rows", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["6"], "DependentChan" : "106", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "p_src_mat_rows_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_src_mat_cols", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["6"], "DependentChan" : "107", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "p_src_mat_cols_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "imgInput_data1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["6"], "DependentChan" : "105", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "28", "SubInstance" : "grp_xFFastCornerDetection_0_2160_3840_0_1_2_2_1_12_1_s_fu_54", "Port" : "imgInput_data1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "imgOutput_data2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["76"], "DependentChan" : "108", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "28", "SubInstance" : "grp_xFFastCornerDetection_0_2160_3840_0_1_2_2_1_12_1_s_fu_54", "Port" : "imgOutput_data2", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_threshold", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["4"], "DependentChan" : "99", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "p_threshold_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fast_1_0_2160_3840_1_2_2_U0.grp_xFFastCornerDetection_0_2160_3840_0_1_2_2_1_12_1_s_fu_54", "Parent" : "27", "Child" : ["29", "54", "72", "73", "74", "75"],
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
			{"ID" : "29", "Name" : "xFfast7x7_0_2160_3840_0_1_2_2_1_3843_7_49_3_U0"}],
		"OutputProcess" : [
			{"ID" : "54", "Name" : "xFfastnms_0_2160_3840_0_1_2_2_1_3841_3_9_4_U0"}],
		"Port" : [
			{"Name" : "imgInput_data1", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "29", "SubInstance" : "xFfast7x7_0_2160_3840_0_1_2_2_1_3843_7_49_3_U0", "Port" : "imgInput_data1"}]},
			{"Name" : "imgOutput_data2", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "54", "SubInstance" : "xFfastnms_0_2160_3840_0_1_2_2_1_3841_3_9_4_U0", "Port" : "imgOutput_data2"}]},
			{"Name" : "p_image_height", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_image_width", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_threshold", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "29", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fast_1_0_2160_3840_1_2_2_U0.grp_xFFastCornerDetection_0_2160_3840_0_1_2_2_1_12_1_s_fu_54.xFfast7x7_0_2160_3840_0_1_2_2_1_3843_7_49_3_U0", "Parent" : "28", "Child" : ["30", "31", "32", "33", "34", "35", "36", "37", "39", "41", "43"],
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
					{"ID" : "43", "SubInstance" : "grp_xFfast7x7_0_2160_3840_0_1_2_2_1_3843_7_49_3_Pipeline_Col_Loop_fu_276", "Port" : "imgInput_data1", "Inst_start_state" : "7", "Inst_end_state" : "8"},
					{"ID" : "39", "SubInstance" : "grp_xFfast7x7_0_2160_3840_0_1_2_2_1_3843_7_49_3_Pipeline_VITIS_LOOP_530_2_fu_253", "Port" : "imgInput_data1", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "p_dst_data1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["54"], "DependentChan" : "72", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "43", "SubInstance" : "grp_xFfast7x7_0_2160_3840_0_1_2_2_1_3843_7_49_3_Pipeline_Col_Loop_fu_276", "Port" : "p_dst_data1", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "img_height", "Type" : "None", "Direction" : "I"},
			{"Name" : "img_width", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_threshold", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_image_height_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["54"], "DependentChan" : "73", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "p_image_height_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_image_width_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["54"], "DependentChan" : "74", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "p_image_width_c_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "read_lines", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "8", "FirstState" : "ap_ST_fsm_state4", "LastState" : ["ap_ST_fsm_state5"], "QuitState" : ["ap_ST_fsm_state4"], "PreState" : ["ap_ST_fsm_state3"], "PostState" : ["ap_ST_fsm_state6"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "Row_Loop", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "8", "FirstState" : "ap_ST_fsm_state7", "LastState" : ["ap_ST_fsm_state8"], "QuitState" : ["ap_ST_fsm_state7"], "PreState" : ["ap_ST_fsm_state6"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "30", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.fast_1_0_2160_3840_1_2_2_U0.grp_xFFastCornerDetection_0_2160_3840_0_1_2_2_1_12_1_s_fu_54.xFfast7x7_0_2160_3840_0_1_2_2_1_3843_7_49_3_U0.buf_V_U", "Parent" : "29"},
	{"ID" : "31", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.fast_1_0_2160_3840_1_2_2_U0.grp_xFFastCornerDetection_0_2160_3840_0_1_2_2_1_12_1_s_fu_54.xFfast7x7_0_2160_3840_0_1_2_2_1_3843_7_49_3_U0.buf_V_3_U", "Parent" : "29"},
	{"ID" : "32", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.fast_1_0_2160_3840_1_2_2_U0.grp_xFFastCornerDetection_0_2160_3840_0_1_2_2_1_12_1_s_fu_54.xFfast7x7_0_2160_3840_0_1_2_2_1_3843_7_49_3_U0.buf_V_4_U", "Parent" : "29"},
	{"ID" : "33", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.fast_1_0_2160_3840_1_2_2_U0.grp_xFFastCornerDetection_0_2160_3840_0_1_2_2_1_12_1_s_fu_54.xFfast7x7_0_2160_3840_0_1_2_2_1_3843_7_49_3_U0.buf_V_5_U", "Parent" : "29"},
	{"ID" : "34", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.fast_1_0_2160_3840_1_2_2_U0.grp_xFFastCornerDetection_0_2160_3840_0_1_2_2_1_12_1_s_fu_54.xFfast7x7_0_2160_3840_0_1_2_2_1_3843_7_49_3_U0.buf_V_6_U", "Parent" : "29"},
	{"ID" : "35", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.fast_1_0_2160_3840_1_2_2_U0.grp_xFFastCornerDetection_0_2160_3840_0_1_2_2_1_12_1_s_fu_54.xFfast7x7_0_2160_3840_0_1_2_2_1_3843_7_49_3_U0.buf_V_7_U", "Parent" : "29"},
	{"ID" : "36", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.fast_1_0_2160_3840_1_2_2_U0.grp_xFFastCornerDetection_0_2160_3840_0_1_2_2_1_12_1_s_fu_54.xFfast7x7_0_2160_3840_0_1_2_2_1_3843_7_49_3_U0.buf_V_8_U", "Parent" : "29"},
	{"ID" : "37", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.fast_1_0_2160_3840_1_2_2_U0.grp_xFFastCornerDetection_0_2160_3840_0_1_2_2_1_12_1_s_fu_54.xFfast7x7_0_2160_3840_0_1_2_2_1_3843_7_49_3_U0.grp_xFfast7x7_0_2160_3840_0_1_2_2_1_3843_7_49_3_Pipeline_VITIS_LOOP_515_1_fu_242", "Parent" : "29", "Child" : ["38"],
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
	{"ID" : "38", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.fast_1_0_2160_3840_1_2_2_U0.grp_xFFastCornerDetection_0_2160_3840_0_1_2_2_1_12_1_s_fu_54.xFfast7x7_0_2160_3840_0_1_2_2_1_3843_7_49_3_U0.grp_xFfast7x7_0_2160_3840_0_1_2_2_1_3843_7_49_3_Pipeline_VITIS_LOOP_515_1_fu_242.flow_control_loop_pipe_sequential_init_U", "Parent" : "37"},
	{"ID" : "39", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.fast_1_0_2160_3840_1_2_2_U0.grp_xFFastCornerDetection_0_2160_3840_0_1_2_2_1_12_1_s_fu_54.xFfast7x7_0_2160_3840_0_1_2_2_1_3843_7_49_3_U0.grp_xFfast7x7_0_2160_3840_0_1_2_2_1_3843_7_49_3_Pipeline_VITIS_LOOP_530_2_fu_253", "Parent" : "29", "Child" : ["40"],
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
	{"ID" : "40", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.fast_1_0_2160_3840_1_2_2_U0.grp_xFFastCornerDetection_0_2160_3840_0_1_2_2_1_12_1_s_fu_54.xFfast7x7_0_2160_3840_0_1_2_2_1_3843_7_49_3_U0.grp_xFfast7x7_0_2160_3840_0_1_2_2_1_3843_7_49_3_Pipeline_VITIS_LOOP_530_2_fu_253.flow_control_loop_pipe_sequential_init_U", "Parent" : "39"},
	{"ID" : "41", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.fast_1_0_2160_3840_1_2_2_U0.grp_xFFastCornerDetection_0_2160_3840_0_1_2_2_1_12_1_s_fu_54.xFfast7x7_0_2160_3840_0_1_2_2_1_3843_7_49_3_U0.grp_xFfast7x7_0_2160_3840_0_1_2_2_1_3843_7_49_3_Pipeline_VITIS_LOOP_541_3_fu_268", "Parent" : "29", "Child" : ["42"],
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
	{"ID" : "42", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.fast_1_0_2160_3840_1_2_2_U0.grp_xFFastCornerDetection_0_2160_3840_0_1_2_2_1_12_1_s_fu_54.xFfast7x7_0_2160_3840_0_1_2_2_1_3843_7_49_3_U0.grp_xFfast7x7_0_2160_3840_0_1_2_2_1_3843_7_49_3_Pipeline_VITIS_LOOP_541_3_fu_268.flow_control_loop_pipe_sequential_init_U", "Parent" : "41"},
	{"ID" : "43", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.fast_1_0_2160_3840_1_2_2_U0.grp_xFFastCornerDetection_0_2160_3840_0_1_2_2_1_12_1_s_fu_54.xFfast7x7_0_2160_3840_0_1_2_2_1_3843_7_49_3_U0.grp_xFfast7x7_0_2160_3840_0_1_2_2_1_3843_7_49_3_Pipeline_Col_Loop_fu_276", "Parent" : "29", "Child" : ["44", "45", "46", "47", "48", "49", "50", "51", "52", "53"],
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
	{"ID" : "44", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.fast_1_0_2160_3840_1_2_2_U0.grp_xFFastCornerDetection_0_2160_3840_0_1_2_2_1_12_1_s_fu_54.xFfast7x7_0_2160_3840_0_1_2_2_1_3843_7_49_3_U0.grp_xFfast7x7_0_2160_3840_0_1_2_2_1_3843_7_49_3_Pipeline_Col_Loop_fu_276.mux_73_13_1_1_U87", "Parent" : "43"},
	{"ID" : "45", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.fast_1_0_2160_3840_1_2_2_U0.grp_xFFastCornerDetection_0_2160_3840_0_1_2_2_1_12_1_s_fu_54.xFfast7x7_0_2160_3840_0_1_2_2_1_3843_7_49_3_U0.grp_xFfast7x7_0_2160_3840_0_1_2_2_1_3843_7_49_3_Pipeline_Col_Loop_fu_276.mux_73_8_1_1_U88", "Parent" : "43"},
	{"ID" : "46", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.fast_1_0_2160_3840_1_2_2_U0.grp_xFFastCornerDetection_0_2160_3840_0_1_2_2_1_12_1_s_fu_54.xFfast7x7_0_2160_3840_0_1_2_2_1_3843_7_49_3_U0.grp_xFfast7x7_0_2160_3840_0_1_2_2_1_3843_7_49_3_Pipeline_Col_Loop_fu_276.mux_73_8_1_1_U89", "Parent" : "43"},
	{"ID" : "47", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.fast_1_0_2160_3840_1_2_2_U0.grp_xFFastCornerDetection_0_2160_3840_0_1_2_2_1_12_1_s_fu_54.xFfast7x7_0_2160_3840_0_1_2_2_1_3843_7_49_3_U0.grp_xFfast7x7_0_2160_3840_0_1_2_2_1_3843_7_49_3_Pipeline_Col_Loop_fu_276.mux_73_8_1_1_U90", "Parent" : "43"},
	{"ID" : "48", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.fast_1_0_2160_3840_1_2_2_U0.grp_xFFastCornerDetection_0_2160_3840_0_1_2_2_1_12_1_s_fu_54.xFfast7x7_0_2160_3840_0_1_2_2_1_3843_7_49_3_U0.grp_xFfast7x7_0_2160_3840_0_1_2_2_1_3843_7_49_3_Pipeline_Col_Loop_fu_276.mux_73_8_1_1_U91", "Parent" : "43"},
	{"ID" : "49", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.fast_1_0_2160_3840_1_2_2_U0.grp_xFFastCornerDetection_0_2160_3840_0_1_2_2_1_12_1_s_fu_54.xFfast7x7_0_2160_3840_0_1_2_2_1_3843_7_49_3_U0.grp_xFfast7x7_0_2160_3840_0_1_2_2_1_3843_7_49_3_Pipeline_Col_Loop_fu_276.mux_73_8_1_1_U92", "Parent" : "43"},
	{"ID" : "50", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.fast_1_0_2160_3840_1_2_2_U0.grp_xFFastCornerDetection_0_2160_3840_0_1_2_2_1_12_1_s_fu_54.xFfast7x7_0_2160_3840_0_1_2_2_1_3843_7_49_3_U0.grp_xFfast7x7_0_2160_3840_0_1_2_2_1_3843_7_49_3_Pipeline_Col_Loop_fu_276.mux_73_8_1_1_U93", "Parent" : "43"},
	{"ID" : "51", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.fast_1_0_2160_3840_1_2_2_U0.grp_xFFastCornerDetection_0_2160_3840_0_1_2_2_1_12_1_s_fu_54.xFfast7x7_0_2160_3840_0_1_2_2_1_3843_7_49_3_U0.grp_xFfast7x7_0_2160_3840_0_1_2_2_1_3843_7_49_3_Pipeline_Col_Loop_fu_276.mux_73_8_1_1_U94", "Parent" : "43"},
	{"ID" : "52", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.fast_1_0_2160_3840_1_2_2_U0.grp_xFFastCornerDetection_0_2160_3840_0_1_2_2_1_12_1_s_fu_54.xFfast7x7_0_2160_3840_0_1_2_2_1_3843_7_49_3_U0.grp_xFfast7x7_0_2160_3840_0_1_2_2_1_3843_7_49_3_Pipeline_Col_Loop_fu_276.mux_73_8_1_1_U95", "Parent" : "43"},
	{"ID" : "53", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.fast_1_0_2160_3840_1_2_2_U0.grp_xFFastCornerDetection_0_2160_3840_0_1_2_2_1_12_1_s_fu_54.xFfast7x7_0_2160_3840_0_1_2_2_1_3843_7_49_3_U0.grp_xFfast7x7_0_2160_3840_0_1_2_2_1_3843_7_49_3_Pipeline_Col_Loop_fu_276.flow_control_loop_pipe_sequential_init_U", "Parent" : "43"},
	{"ID" : "54", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fast_1_0_2160_3840_1_2_2_U0.grp_xFFastCornerDetection_0_2160_3840_0_1_2_2_1_12_1_s_fu_54.xFfastnms_0_2160_3840_0_1_2_2_1_3841_3_9_4_U0", "Parent" : "28", "Child" : ["55", "56", "57", "58", "60", "62", "65"],
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
		"StartSource" : "29",
		"StartFifo" : "start_for_xFfastnms_0_2160_3840_0_1_2_2_1_3841_3_9_4_U0_U",
		"Port" : [
			{"Name" : "p_dst_data1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["29"], "DependentChan" : "72", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "60", "SubInstance" : "grp_xFfastnms_0_2160_3840_0_1_2_2_1_3841_3_9_4_Pipeline_VITIS_LOOP_890_2_fu_143", "Port" : "p_dst_data1", "Inst_start_state" : "4", "Inst_end_state" : "5"},
					{"ID" : "65", "SubInstance" : "grp_xFfastnms_0_2160_3840_0_1_2_2_1_3841_3_9_4_Pipeline_Col_Loop_fu_163", "Port" : "p_dst_data1", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "imgOutput_data2", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "65", "SubInstance" : "grp_xFfastnms_0_2160_3840_0_1_2_2_1_3841_3_9_4_Pipeline_Col_Loop_fu_163", "Port" : "imgOutput_data2", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "img_height", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["29"], "DependentChan" : "73", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "img_height_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "img_width", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["29"], "DependentChan" : "74", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "img_width_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "read_lines", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "8", "FirstState" : "ap_ST_fsm_state4", "LastState" : ["ap_ST_fsm_state5"], "QuitState" : ["ap_ST_fsm_state4"], "PreState" : ["ap_ST_fsm_state3"], "PostState" : ["ap_ST_fsm_state6"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "Row_Loop", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "8", "FirstState" : "ap_ST_fsm_state7", "LastState" : ["ap_ST_fsm_state8"], "QuitState" : ["ap_ST_fsm_state7"], "PreState" : ["ap_ST_fsm_state6"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "55", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.fast_1_0_2160_3840_1_2_2_U0.grp_xFFastCornerDetection_0_2160_3840_0_1_2_2_1_12_1_s_fu_54.xFfastnms_0_2160_3840_0_1_2_2_1_3841_3_9_4_U0.buf_V_U", "Parent" : "54"},
	{"ID" : "56", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.fast_1_0_2160_3840_1_2_2_U0.grp_xFFastCornerDetection_0_2160_3840_0_1_2_2_1_12_1_s_fu_54.xFfastnms_0_2160_3840_0_1_2_2_1_3841_3_9_4_U0.buf_V_1_U", "Parent" : "54"},
	{"ID" : "57", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.fast_1_0_2160_3840_1_2_2_U0.grp_xFFastCornerDetection_0_2160_3840_0_1_2_2_1_12_1_s_fu_54.xFfastnms_0_2160_3840_0_1_2_2_1_3841_3_9_4_U0.buf_V_2_U", "Parent" : "54"},
	{"ID" : "58", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.fast_1_0_2160_3840_1_2_2_U0.grp_xFFastCornerDetection_0_2160_3840_0_1_2_2_1_12_1_s_fu_54.xFfastnms_0_2160_3840_0_1_2_2_1_3841_3_9_4_U0.grp_xFfastnms_0_2160_3840_0_1_2_2_1_3841_3_9_4_Pipeline_VITIS_LOOP_876_1_fu_136", "Parent" : "54", "Child" : ["59"],
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
	{"ID" : "59", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.fast_1_0_2160_3840_1_2_2_U0.grp_xFFastCornerDetection_0_2160_3840_0_1_2_2_1_12_1_s_fu_54.xFfastnms_0_2160_3840_0_1_2_2_1_3841_3_9_4_U0.grp_xFfastnms_0_2160_3840_0_1_2_2_1_3841_3_9_4_Pipeline_VITIS_LOOP_876_1_fu_136.flow_control_loop_pipe_sequential_init_U", "Parent" : "58"},
	{"ID" : "60", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.fast_1_0_2160_3840_1_2_2_U0.grp_xFFastCornerDetection_0_2160_3840_0_1_2_2_1_12_1_s_fu_54.xFfastnms_0_2160_3840_0_1_2_2_1_3841_3_9_4_U0.grp_xFfastnms_0_2160_3840_0_1_2_2_1_3841_3_9_4_Pipeline_VITIS_LOOP_890_2_fu_143", "Parent" : "54", "Child" : ["61"],
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
	{"ID" : "61", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.fast_1_0_2160_3840_1_2_2_U0.grp_xFFastCornerDetection_0_2160_3840_0_1_2_2_1_12_1_s_fu_54.xFfastnms_0_2160_3840_0_1_2_2_1_3841_3_9_4_U0.grp_xFfastnms_0_2160_3840_0_1_2_2_1_3841_3_9_4_Pipeline_VITIS_LOOP_890_2_fu_143.flow_control_loop_pipe_sequential_init_U", "Parent" : "60"},
	{"ID" : "62", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.fast_1_0_2160_3840_1_2_2_U0.grp_xFFastCornerDetection_0_2160_3840_0_1_2_2_1_12_1_s_fu_54.xFfastnms_0_2160_3840_0_1_2_2_1_3841_3_9_4_U0.grp_xFfastnms_0_2160_3840_0_1_2_2_1_3841_3_9_4_Pipeline_VITIS_LOOP_901_3_fu_154", "Parent" : "54", "Child" : ["63", "64"],
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
	{"ID" : "63", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.fast_1_0_2160_3840_1_2_2_U0.grp_xFFastCornerDetection_0_2160_3840_0_1_2_2_1_12_1_s_fu_54.xFfastnms_0_2160_3840_0_1_2_2_1_3841_3_9_4_U0.grp_xFfastnms_0_2160_3840_0_1_2_2_1_3841_3_9_4_Pipeline_VITIS_LOOP_901_3_fu_154.mux_32_8_1_1_U156", "Parent" : "62"},
	{"ID" : "64", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.fast_1_0_2160_3840_1_2_2_U0.grp_xFFastCornerDetection_0_2160_3840_0_1_2_2_1_12_1_s_fu_54.xFfastnms_0_2160_3840_0_1_2_2_1_3841_3_9_4_U0.grp_xFfastnms_0_2160_3840_0_1_2_2_1_3841_3_9_4_Pipeline_VITIS_LOOP_901_3_fu_154.flow_control_loop_pipe_sequential_init_U", "Parent" : "62"},
	{"ID" : "65", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.fast_1_0_2160_3840_1_2_2_U0.grp_xFFastCornerDetection_0_2160_3840_0_1_2_2_1_12_1_s_fu_54.xFfastnms_0_2160_3840_0_1_2_2_1_3841_3_9_4_U0.grp_xFfastnms_0_2160_3840_0_1_2_2_1_3841_3_9_4_Pipeline_Col_Loop_fu_163", "Parent" : "54", "Child" : ["66", "67", "68", "69", "70", "71"],
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
	{"ID" : "66", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.fast_1_0_2160_3840_1_2_2_U0.grp_xFFastCornerDetection_0_2160_3840_0_1_2_2_1_12_1_s_fu_54.xFfastnms_0_2160_3840_0_1_2_2_1_3841_3_9_4_U0.grp_xFfastnms_0_2160_3840_0_1_2_2_1_3841_3_9_4_Pipeline_Col_Loop_fu_163.mux_32_13_1_1_U163", "Parent" : "65"},
	{"ID" : "67", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.fast_1_0_2160_3840_1_2_2_U0.grp_xFFastCornerDetection_0_2160_3840_0_1_2_2_1_12_1_s_fu_54.xFfastnms_0_2160_3840_0_1_2_2_1_3841_3_9_4_U0.grp_xFfastnms_0_2160_3840_0_1_2_2_1_3841_3_9_4_Pipeline_Col_Loop_fu_163.mux_32_8_1_1_U164", "Parent" : "65"},
	{"ID" : "68", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.fast_1_0_2160_3840_1_2_2_U0.grp_xFFastCornerDetection_0_2160_3840_0_1_2_2_1_12_1_s_fu_54.xFfastnms_0_2160_3840_0_1_2_2_1_3841_3_9_4_U0.grp_xFfastnms_0_2160_3840_0_1_2_2_1_3841_3_9_4_Pipeline_Col_Loop_fu_163.mux_32_8_1_1_U165", "Parent" : "65"},
	{"ID" : "69", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.fast_1_0_2160_3840_1_2_2_U0.grp_xFFastCornerDetection_0_2160_3840_0_1_2_2_1_12_1_s_fu_54.xFfastnms_0_2160_3840_0_1_2_2_1_3841_3_9_4_U0.grp_xFfastnms_0_2160_3840_0_1_2_2_1_3841_3_9_4_Pipeline_Col_Loop_fu_163.mux_32_8_1_1_U166", "Parent" : "65"},
	{"ID" : "70", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.fast_1_0_2160_3840_1_2_2_U0.grp_xFFastCornerDetection_0_2160_3840_0_1_2_2_1_12_1_s_fu_54.xFfastnms_0_2160_3840_0_1_2_2_1_3841_3_9_4_U0.grp_xFfastnms_0_2160_3840_0_1_2_2_1_3841_3_9_4_Pipeline_Col_Loop_fu_163.mux_32_8_1_1_U167", "Parent" : "65"},
	{"ID" : "71", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.fast_1_0_2160_3840_1_2_2_U0.grp_xFFastCornerDetection_0_2160_3840_0_1_2_2_1_12_1_s_fu_54.xFfastnms_0_2160_3840_0_1_2_2_1_3841_3_9_4_U0.grp_xFfastnms_0_2160_3840_0_1_2_2_1_3841_3_9_4_Pipeline_Col_Loop_fu_163.flow_control_loop_pipe_sequential_init_U", "Parent" : "65"},
	{"ID" : "72", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fast_1_0_2160_3840_1_2_2_U0.grp_xFFastCornerDetection_0_2160_3840_0_1_2_2_1_12_1_s_fu_54.p_dst_data_U", "Parent" : "28"},
	{"ID" : "73", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fast_1_0_2160_3840_1_2_2_U0.grp_xFFastCornerDetection_0_2160_3840_0_1_2_2_1_12_1_s_fu_54.p_image_height_c_U", "Parent" : "28"},
	{"ID" : "74", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fast_1_0_2160_3840_1_2_2_U0.grp_xFFastCornerDetection_0_2160_3840_0_1_2_2_1_12_1_s_fu_54.p_image_width_c_U", "Parent" : "28"},
	{"ID" : "75", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fast_1_0_2160_3840_1_2_2_U0.grp_xFFastCornerDetection_0_2160_3840_0_1_2_2_1_12_1_s_fu_54.start_for_xFfastnms_0_2160_3840_0_1_2_2_1_3841_3_9_4_U0_U", "Parent" : "28"},
	{"ID" : "76", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.xfMat2Array_8_0_2160_3840_1_2_1_U0", "Parent" : "0", "Child" : ["77"],
		"CDFG" : "xfMat2Array_8_0_2160_3840_1_2_1_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "80", "EstimateLatencyMax" : "8294479",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : ["5"], "DependentChan" : "101", "DependentChanDepth" : "4", "DependentChanType" : "1"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I", "DependentProc" : ["5"], "DependentChan" : "102", "DependentChanDepth" : "4", "DependentChanType" : "1"},
			{"Name" : "imgOutput_data2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["27"], "DependentChan" : "108", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "77", "SubInstance" : "grp_Mat2Axi_fu_62", "Port" : "imgOutput_data2", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "gmem1", "Type" : "MAXI", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "77", "SubInstance" : "grp_Mat2Axi_fu_62", "Port" : "gmem1", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "dstPtr", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["4"], "DependentChan" : "100", "DependentChanDepth" : "5", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "dstPtr_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "77", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.xfMat2Array_8_0_2160_3840_1_2_1_U0.grp_Mat2Axi_fu_62", "Parent" : "76", "Child" : ["78", "79", "81", "82", "92", "95", "96", "97", "98"],
		"CDFG" : "Mat2Axi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "78", "EstimateLatencyMax" : "8294477",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"InputProcess" : [
			{"ID" : "78", "Name" : "entry_proc8_U0"},
			{"ID" : "79", "Name" : "addrbound_U0"},
			{"ID" : "82", "Name" : "Mat2AxiStream_U0"}],
		"OutputProcess" : [
			{"ID" : "92", "Name" : "AxiStream2Axi_U0"}],
		"Port" : [
			{"Name" : "imgOutput_data2", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "82", "SubInstance" : "Mat2AxiStream_U0", "Port" : "imgOutput_data2"}]},
			{"Name" : "gmem1", "Type" : "MAXI", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "92", "SubInstance" : "AxiStream2Axi_U0", "Port" : "gmem1"}]},
			{"Name" : "dout", "Type" : "None", "Direction" : "I"},
			{"Name" : "rows", "Type" : "None", "Direction" : "I"},
			{"Name" : "cols", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "78", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.xfMat2Array_8_0_2160_3840_1_2_1_U0.grp_Mat2Axi_fu_62.entry_proc8_U0", "Parent" : "77",
		"CDFG" : "entry_proc8",
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
			{"Name" : "dout", "Type" : "None", "Direction" : "I"},
			{"Name" : "dout_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["92"], "DependentChan" : "95", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "dout_c_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "79", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.xfMat2Array_8_0_2160_3840_1_2_1_U0.grp_Mat2Axi_fu_62.addrbound_U0", "Parent" : "77", "Child" : ["80"],
		"CDFG" : "addrbound",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "2",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "p_channel", "Type" : "None", "Direction" : "O", "DependentProc" : ["81"], "DependentChan" : "96", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "rows", "Type" : "None", "Direction" : "I"},
			{"Name" : "cols", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "80", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.xfMat2Array_8_0_2160_3840_1_2_1_U0.grp_Mat2Axi_fu_62.addrbound_U0.mul_mul_16ns_16ns_32_3_1_U206", "Parent" : "79"},
	{"ID" : "81", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.xfMat2Array_8_0_2160_3840_1_2_1_U0.grp_Mat2Axi_fu_62.Mat2Axi_Block_entry24_proc_U0", "Parent" : "77",
		"CDFG" : "Mat2Axi_Block_entry24_proc",
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
			{"Name" : "axibound_V_1", "Type" : "None", "Direction" : "I", "DependentProc" : ["79"], "DependentChan" : "96", "DependentChanDepth" : "2", "DependentChanType" : "1"}]},
	{"ID" : "82", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.xfMat2Array_8_0_2160_3840_1_2_1_U0.grp_Mat2Axi_fu_62.Mat2AxiStream_U0", "Parent" : "77", "Child" : ["83", "84", "85", "89", "90", "91"],
		"CDFG" : "Mat2AxiStream",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "9", "EstimateLatencyMax" : "8294408",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"InputProcess" : [
			{"ID" : "83", "Name" : "entry_proc_U0"},
			{"ID" : "84", "Name" : "last_blk_pxl_width_1_U0"}],
		"OutputProcess" : [
			{"ID" : "85", "Name" : "MatStream2AxiStream_2_U0"}],
		"Port" : [
			{"Name" : "imgOutput_data2", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "85", "SubInstance" : "MatStream2AxiStream_2_U0", "Port" : "imgOutput_data2"}]},
			{"Name" : "ldata1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["92"], "DependentChan" : "98", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "85", "SubInstance" : "MatStream2AxiStream_2_U0", "Port" : "ldata1"}]},
			{"Name" : "rows", "Type" : "None", "Direction" : "I"},
			{"Name" : "cols", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "83", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.xfMat2Array_8_0_2160_3840_1_2_1_U0.grp_Mat2Axi_fu_62.Mat2AxiStream_U0.entry_proc_U0", "Parent" : "82",
		"CDFG" : "entry_proc",
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
			{"Name" : "rows", "Type" : "None", "Direction" : "I"},
			{"Name" : "rows_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["85"], "DependentChan" : "89", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "rows_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cols", "Type" : "None", "Direction" : "I"},
			{"Name" : "cols_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["85"], "DependentChan" : "90", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "cols_c_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "84", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.xfMat2Array_8_0_2160_3840_1_2_1_U0.grp_Mat2Axi_fu_62.Mat2AxiStream_U0.last_blk_pxl_width_1_U0", "Parent" : "82",
		"CDFG" : "last_blk_pxl_width_1",
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
			{"Name" : "return_r", "Type" : "None", "Direction" : "O", "DependentProc" : ["85"], "DependentChan" : "91", "DependentChanDepth" : "2", "DependentChanType" : "1"}]},
	{"ID" : "85", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.xfMat2Array_8_0_2160_3840_1_2_1_U0.grp_Mat2Axi_fu_62.Mat2AxiStream_U0.MatStream2AxiStream_2_U0", "Parent" : "82", "Child" : ["86", "88"],
		"CDFG" : "MatStream2AxiStream_2_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "8", "EstimateLatencyMax" : "8294407",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "imgOutput_data2", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "86", "SubInstance" : "grp_MatStream2AxiStream_2_Pipeline_MMIterOutRow_MMIterOutCol_fu_79", "Port" : "imgOutput_data2", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "ldata1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["92"], "DependentChan" : "98", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "ldata1_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "86", "SubInstance" : "grp_MatStream2AxiStream_2_Pipeline_MMIterOutRow_MMIterOutCol_fu_79", "Port" : "ldata1", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "rows", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["83"], "DependentChan" : "89", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "rows_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cols_bound_per_npc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["83"], "DependentChan" : "90", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "cols_bound_per_npc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "last_blk_width", "Type" : "None", "Direction" : "I", "DependentProc" : ["84"], "DependentChan" : "91", "DependentChanDepth" : "2", "DependentChanType" : "1"}]},
	{"ID" : "86", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.xfMat2Array_8_0_2160_3840_1_2_1_U0.grp_Mat2Axi_fu_62.Mat2AxiStream_U0.MatStream2AxiStream_2_U0.grp_MatStream2AxiStream_2_Pipeline_MMIterOutRow_MMIterOutCol_fu_79", "Parent" : "85", "Child" : ["87"],
		"CDFG" : "MatStream2AxiStream_2_Pipeline_MMIterOutRow_MMIterOutCol",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3", "EstimateLatencyMax" : "8294402",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "bound", "Type" : "None", "Direction" : "I"},
			{"Name" : "strideBased_cols_bound_per_npc_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "op2_assign", "Type" : "None", "Direction" : "I"},
			{"Name" : "last_blk_width_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "cols_bound_per_npc_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "imgOutput_data2", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "imgOutput_data2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ldata1", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "ldata1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "localbuffer_V_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "filled_V_1_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "MMIterOutRow_MMIterOutCol", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "87", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.xfMat2Array_8_0_2160_3840_1_2_1_U0.grp_Mat2Axi_fu_62.Mat2AxiStream_U0.MatStream2AxiStream_2_U0.grp_MatStream2AxiStream_2_Pipeline_MMIterOutRow_MMIterOutCol_fu_79.flow_control_loop_pipe_sequential_init_U", "Parent" : "86"},
	{"ID" : "88", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.xfMat2Array_8_0_2160_3840_1_2_1_U0.grp_Mat2Axi_fu_62.Mat2AxiStream_U0.MatStream2AxiStream_2_U0.mul_mul_16ns_16ns_32_4_1_U225", "Parent" : "85"},
	{"ID" : "89", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.xfMat2Array_8_0_2160_3840_1_2_1_U0.grp_Mat2Axi_fu_62.Mat2AxiStream_U0.rows_c_U", "Parent" : "82"},
	{"ID" : "90", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.xfMat2Array_8_0_2160_3840_1_2_1_U0.grp_Mat2Axi_fu_62.Mat2AxiStream_U0.cols_c_U", "Parent" : "82"},
	{"ID" : "91", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.xfMat2Array_8_0_2160_3840_1_2_1_U0.grp_Mat2Axi_fu_62.Mat2AxiStream_U0.last_blk_width_channel_U", "Parent" : "82"},
	{"ID" : "92", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.xfMat2Array_8_0_2160_3840_1_2_1_U0.grp_Mat2Axi_fu_62.AxiStream2Axi_U0", "Parent" : "77", "Child" : ["93"],
		"CDFG" : "AxiStream2Axi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "75", "EstimateLatencyMax" : "8294474",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "ldata1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["82","85"], "DependentChan" : "98", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "93", "SubInstance" : "grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_67", "Port" : "ldata1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "gmem1", "Type" : "MAXI", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "gmem1_blk_n_AW", "Type" : "RtlSignal"},
					{"Name" : "gmem1_blk_n_B", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "93", "SubInstance" : "grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_67", "Port" : "gmem1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "dout", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["78"], "DependentChan" : "95", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "dout_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : ["81"], "DependentChan" : "97", "DependentChanDepth" : "2", "DependentChanType" : "1"}]},
	{"ID" : "93", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.xfMat2Array_8_0_2160_3840_1_2_1_U0.grp_Mat2Axi_fu_62.AxiStream2Axi_U0.grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_67", "Parent" : "92", "Child" : ["94"],
		"CDFG" : "AxiStream2Axi_Pipeline_MMIterOutLoop2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "8294403",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "gmem1", "Type" : "MAXI", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "gmem1_blk_n_W", "Type" : "RtlSignal"}]},
			{"Name" : "dout_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "ldata1", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "ldata1_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "MMIterOutLoop2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "94", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.xfMat2Array_8_0_2160_3840_1_2_1_U0.grp_Mat2Axi_fu_62.AxiStream2Axi_U0.grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_67.flow_control_loop_pipe_sequential_init_U", "Parent" : "93"},
	{"ID" : "95", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.xfMat2Array_8_0_2160_3840_1_2_1_U0.grp_Mat2Axi_fu_62.dout_c_U", "Parent" : "77"},
	{"ID" : "96", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.xfMat2Array_8_0_2160_3840_1_2_1_U0.grp_Mat2Axi_fu_62.p_channel_U", "Parent" : "77"},
	{"ID" : "97", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.xfMat2Array_8_0_2160_3840_1_2_1_U0.grp_Mat2Axi_fu_62.axibound_V_U", "Parent" : "77"},
	{"ID" : "98", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.xfMat2Array_8_0_2160_3840_1_2_1_U0.grp_Mat2Axi_fu_62.ldata_U", "Parent" : "77"},
	{"ID" : "99", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.threshold_c_U", "Parent" : "0"},
	{"ID" : "100", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.img_out_c_U", "Parent" : "0"},
	{"ID" : "101", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.imgOutput_rows_channel_U", "Parent" : "0"},
	{"ID" : "102", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.imgOutput_cols_channel_U", "Parent" : "0"},
	{"ID" : "103", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.imgInput_rows_c9_channel_U", "Parent" : "0"},
	{"ID" : "104", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.imgInput_cols_c10_channel_U", "Parent" : "0"},
	{"ID" : "105", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.imgInput_data_U", "Parent" : "0"},
	{"ID" : "106", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.imgInput_rows_c_U", "Parent" : "0"},
	{"ID" : "107", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.imgInput_cols_c_U", "Parent" : "0"},
	{"ID" : "108", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.imgOutput_data_U", "Parent" : "0"},
	{"ID" : "109", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_fast_1_0_2160_3840_1_2_2_U0_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	fast_accel {
		gmem0 {Type I LastRead 3 FirstWrite -1}
		gmem1 {Type O LastRead 4 FirstWrite 2}
		img_in {Type I LastRead 0 FirstWrite -1}
		threshold {Type I LastRead 0 FirstWrite -1}
		img_out {Type I LastRead 0 FirstWrite -1}
		rows {Type I LastRead 0 FirstWrite -1}
		cols {Type I LastRead 0 FirstWrite -1}}
	entry_proc9 {
		threshold {Type I LastRead 0 FirstWrite -1}
		threshold_c {Type O LastRead -1 FirstWrite 0}
		img_out {Type I LastRead 0 FirstWrite -1}
		img_out_c {Type O LastRead -1 FirstWrite 0}}
	Block_entry1_proc {
		rows {Type I LastRead 0 FirstWrite -1}
		cols {Type I LastRead 0 FirstWrite -1}}
	Array2xfMat_8_0_2160_3840_1_2_s {
		gmem0 {Type I LastRead 3 FirstWrite -1}
		srcPtr {Type I LastRead 1 FirstWrite -1}
		p_read {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}
		imgInput_data1 {Type O LastRead -1 FirstWrite 3}
		imgInput_rows_c {Type O LastRead -1 FirstWrite 0}
		imgInput_cols_c {Type O LastRead -1 FirstWrite 0}}
	Axi2Mat {
		gmem0 {Type I LastRead 3 FirstWrite -1}
		din {Type I LastRead 0 FirstWrite -1}
		imgInput_data1 {Type O LastRead -1 FirstWrite 3}
		rows {Type I LastRead 0 FirstWrite -1}
		cols {Type I LastRead 0 FirstWrite -1}}
	Axi2AxiStream {
		gmem0 {Type I LastRead 3 FirstWrite -1}
		din {Type I LastRead 3 FirstWrite -1}
		ldata {Type O LastRead -1 FirstWrite 2}
		rows {Type I LastRead 0 FirstWrite -1}
		cols {Type I LastRead 0 FirstWrite -1}
		rows_c {Type O LastRead -1 FirstWrite 0}
		cols_c {Type O LastRead -1 FirstWrite 0}}
	Axi2AxiStream_Pipeline_VITIS_LOOP_1022_1 {
		gmem0 {Type I LastRead 1 FirstWrite -1}
		din {Type I LastRead 0 FirstWrite -1}
		mul_ln1022 {Type I LastRead 0 FirstWrite -1}
		ldata {Type O LastRead -1 FirstWrite 2}}
	AxiStream2Mat {
		ldata1 {Type I LastRead 2 FirstWrite -1}
		imgInput_data1 {Type O LastRead -1 FirstWrite 3}
		rows {Type I LastRead 0 FirstWrite -1}
		cols {Type I LastRead 0 FirstWrite -1}}
	entry_proc7 {
		rows {Type I LastRead 0 FirstWrite -1}
		rows_c {Type O LastRead -1 FirstWrite 0}
		cols {Type I LastRead 0 FirstWrite -1}
		cols_c {Type O LastRead -1 FirstWrite 0}}
	last_blk_pxl_width {
		return_r {Type O LastRead -1 FirstWrite 0}}
	AxiStream2MatStream_2_s {
		ldata1 {Type I LastRead 2 FirstWrite -1}
		imgInput_data1 {Type O LastRead -1 FirstWrite 3}
		rows {Type I LastRead 0 FirstWrite -1}
		cols_bound_per_npc {Type I LastRead 0 FirstWrite -1}
		last_blk_width {Type I LastRead 0 FirstWrite -1}}
	AxiStream2MatStream_2_Pipeline_MMIterInLoopRow {
		bound {Type I LastRead 0 FirstWrite -1}
		sext_ln1075 {Type I LastRead 0 FirstWrite -1}
		cols_bound_per_npc_load {Type I LastRead 0 FirstWrite -1}
		ldata1 {Type I LastRead 2 FirstWrite -1}
		sub {Type I LastRead 0 FirstWrite -1}
		last_blk_width_load {Type I LastRead 0 FirstWrite -1}
		sub3 {Type I LastRead 0 FirstWrite -1}
		add_ln1075 {Type I LastRead 0 FirstWrite -1}
		imgInput_data1 {Type O LastRead -1 FirstWrite 3}}
	fast_1_0_2160_3840_1_2_2_s {
		p_src_mat_rows {Type I LastRead 0 FirstWrite -1}
		p_src_mat_cols {Type I LastRead 0 FirstWrite -1}
		imgInput_data1 {Type I LastRead 1 FirstWrite -1}
		imgOutput_data2 {Type O LastRead -1 FirstWrite 4}
		p_threshold {Type I LastRead 0 FirstWrite -1}}
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
		imgOutput_data2 {Type O LastRead -1 FirstWrite 4}}
	xfMat2Array_8_0_2160_3840_1_2_1_s {
		p_read {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}
		imgOutput_data2 {Type I LastRead 2 FirstWrite -1}
		gmem1 {Type O LastRead 4 FirstWrite 2}
		dstPtr {Type I LastRead 0 FirstWrite -1}}
	Mat2Axi {
		imgOutput_data2 {Type I LastRead 2 FirstWrite -1}
		gmem1 {Type O LastRead 4 FirstWrite 2}
		dout {Type I LastRead 1 FirstWrite -1}
		rows {Type I LastRead 0 FirstWrite -1}
		cols {Type I LastRead 0 FirstWrite -1}}
	entry_proc8 {
		dout {Type I LastRead 0 FirstWrite -1}
		dout_c {Type O LastRead -1 FirstWrite 0}}
	addrbound {
		p_channel {Type O LastRead -1 FirstWrite 2}
		rows {Type I LastRead 0 FirstWrite -1}
		cols {Type I LastRead 0 FirstWrite -1}}
	Mat2Axi_Block_entry24_proc {
		axibound_V_1 {Type I LastRead 0 FirstWrite -1}}
	Mat2AxiStream {
		imgOutput_data2 {Type I LastRead 2 FirstWrite -1}
		ldata1 {Type O LastRead -1 FirstWrite 2}
		rows {Type I LastRead 0 FirstWrite -1}
		cols {Type I LastRead 0 FirstWrite -1}}
	entry_proc {
		rows {Type I LastRead 0 FirstWrite -1}
		rows_c {Type O LastRead -1 FirstWrite 0}
		cols {Type I LastRead 0 FirstWrite -1}
		cols_c {Type O LastRead -1 FirstWrite 0}}
	last_blk_pxl_width_1 {
		return_r {Type O LastRead -1 FirstWrite 0}}
	MatStream2AxiStream_2_s {
		imgOutput_data2 {Type I LastRead 2 FirstWrite -1}
		ldata1 {Type O LastRead -1 FirstWrite 2}
		rows {Type I LastRead 0 FirstWrite -1}
		cols_bound_per_npc {Type I LastRead 0 FirstWrite -1}
		last_blk_width {Type I LastRead 2 FirstWrite -1}}
	MatStream2AxiStream_2_Pipeline_MMIterOutRow_MMIterOutCol {
		bound {Type I LastRead 0 FirstWrite -1}
		strideBased_cols_bound_per_npc_V {Type I LastRead 0 FirstWrite -1}
		op2_assign {Type I LastRead 0 FirstWrite -1}
		last_blk_width_load {Type I LastRead 0 FirstWrite -1}
		cols_bound_per_npc_load {Type I LastRead 0 FirstWrite -1}
		imgOutput_data2 {Type I LastRead 2 FirstWrite -1}
		ldata1 {Type O LastRead -1 FirstWrite 2}
		localbuffer_V_3_out {Type O LastRead -1 FirstWrite 1}
		filled_V_1_out {Type O LastRead -1 FirstWrite 1}}
	AxiStream2Axi {
		ldata1 {Type I LastRead 1 FirstWrite -1}
		gmem1 {Type O LastRead 4 FirstWrite 2}
		dout {Type I LastRead 0 FirstWrite -1}
		p_read {Type I LastRead 0 FirstWrite -1}}
	AxiStream2Axi_Pipeline_MMIterOutLoop2 {
		gmem1 {Type O LastRead -1 FirstWrite 2}
		dout_load {Type I LastRead 0 FirstWrite -1}
		p_read {Type I LastRead 0 FirstWrite -1}
		ldata1 {Type I LastRead 1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "16644499", "Max" : "16644499"}
	, {"Name" : "Interval", "Min" : "16644496", "Max" : "16644496"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	gmem0 { m_axi {  { m_axi_gmem0_AWVALID VALID 1 1 }  { m_axi_gmem0_AWREADY READY 0 1 }  { m_axi_gmem0_AWADDR ADDR 1 64 }  { m_axi_gmem0_AWID ID 1 1 }  { m_axi_gmem0_AWLEN SIZE 1 8 }  { m_axi_gmem0_AWSIZE BURST 1 3 }  { m_axi_gmem0_AWBURST LOCK 1 2 }  { m_axi_gmem0_AWLOCK CACHE 1 2 }  { m_axi_gmem0_AWCACHE PROT 1 4 }  { m_axi_gmem0_AWPROT QOS 1 3 }  { m_axi_gmem0_AWQOS REGION 1 4 }  { m_axi_gmem0_AWREGION USER 1 4 }  { m_axi_gmem0_AWUSER DATA 1 1 }  { m_axi_gmem0_WVALID VALID 1 1 }  { m_axi_gmem0_WREADY READY 0 1 }  { m_axi_gmem0_WDATA FIFONUM 1 32 }  { m_axi_gmem0_WSTRB STRB 1 4 }  { m_axi_gmem0_WLAST LAST 1 1 }  { m_axi_gmem0_WID ID 1 1 }  { m_axi_gmem0_WUSER DATA 1 1 }  { m_axi_gmem0_ARVALID VALID 1 1 }  { m_axi_gmem0_ARREADY READY 0 1 }  { m_axi_gmem0_ARADDR ADDR 1 64 }  { m_axi_gmem0_ARID ID 1 1 }  { m_axi_gmem0_ARLEN SIZE 1 8 }  { m_axi_gmem0_ARSIZE BURST 1 3 }  { m_axi_gmem0_ARBURST LOCK 1 2 }  { m_axi_gmem0_ARLOCK CACHE 1 2 }  { m_axi_gmem0_ARCACHE PROT 1 4 }  { m_axi_gmem0_ARPROT QOS 1 3 }  { m_axi_gmem0_ARQOS REGION 1 4 }  { m_axi_gmem0_ARREGION USER 1 4 }  { m_axi_gmem0_ARUSER DATA 1 1 }  { m_axi_gmem0_RVALID VALID 0 1 }  { m_axi_gmem0_RREADY READY 1 1 }  { m_axi_gmem0_RDATA FIFONUM 0 32 }  { m_axi_gmem0_RLAST LAST 0 1 }  { m_axi_gmem0_RID ID 0 1 }  { m_axi_gmem0_RUSER DATA 0 1 }  { m_axi_gmem0_RRESP RESP 0 2 }  { m_axi_gmem0_BVALID VALID 0 1 }  { m_axi_gmem0_BREADY READY 1 1 }  { m_axi_gmem0_BRESP RESP 0 2 }  { m_axi_gmem0_BID ID 0 1 }  { m_axi_gmem0_BUSER DATA 0 1 } } }
	gmem1 { m_axi {  { m_axi_gmem1_AWVALID VALID 1 1 }  { m_axi_gmem1_AWREADY READY 0 1 }  { m_axi_gmem1_AWADDR ADDR 1 64 }  { m_axi_gmem1_AWID ID 1 1 }  { m_axi_gmem1_AWLEN SIZE 1 8 }  { m_axi_gmem1_AWSIZE BURST 1 3 }  { m_axi_gmem1_AWBURST LOCK 1 2 }  { m_axi_gmem1_AWLOCK CACHE 1 2 }  { m_axi_gmem1_AWCACHE PROT 1 4 }  { m_axi_gmem1_AWPROT QOS 1 3 }  { m_axi_gmem1_AWQOS REGION 1 4 }  { m_axi_gmem1_AWREGION USER 1 4 }  { m_axi_gmem1_AWUSER DATA 1 1 }  { m_axi_gmem1_WVALID VALID 1 1 }  { m_axi_gmem1_WREADY READY 0 1 }  { m_axi_gmem1_WDATA FIFONUM 1 32 }  { m_axi_gmem1_WSTRB STRB 1 4 }  { m_axi_gmem1_WLAST LAST 1 1 }  { m_axi_gmem1_WID ID 1 1 }  { m_axi_gmem1_WUSER DATA 1 1 }  { m_axi_gmem1_ARVALID VALID 1 1 }  { m_axi_gmem1_ARREADY READY 0 1 }  { m_axi_gmem1_ARADDR ADDR 1 64 }  { m_axi_gmem1_ARID ID 1 1 }  { m_axi_gmem1_ARLEN SIZE 1 8 }  { m_axi_gmem1_ARSIZE BURST 1 3 }  { m_axi_gmem1_ARBURST LOCK 1 2 }  { m_axi_gmem1_ARLOCK CACHE 1 2 }  { m_axi_gmem1_ARCACHE PROT 1 4 }  { m_axi_gmem1_ARPROT QOS 1 3 }  { m_axi_gmem1_ARQOS REGION 1 4 }  { m_axi_gmem1_ARREGION USER 1 4 }  { m_axi_gmem1_ARUSER DATA 1 1 }  { m_axi_gmem1_RVALID VALID 0 1 }  { m_axi_gmem1_RREADY READY 1 1 }  { m_axi_gmem1_RDATA FIFONUM 0 32 }  { m_axi_gmem1_RLAST LAST 0 1 }  { m_axi_gmem1_RID ID 0 1 }  { m_axi_gmem1_RUSER DATA 0 1 }  { m_axi_gmem1_RRESP RESP 0 2 }  { m_axi_gmem1_BVALID VALID 0 1 }  { m_axi_gmem1_BREADY READY 1 1 }  { m_axi_gmem1_BRESP RESP 0 2 }  { m_axi_gmem1_BID ID 0 1 }  { m_axi_gmem1_BUSER DATA 0 1 } } }
}

set maxi_interface_dict [dict create]
dict set maxi_interface_dict gmem0 {NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_ONLY}
dict set maxi_interface_dict gmem1 {NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE WRITE_ONLY}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
	{ gmem0 64 }
	{ gmem1 64 }
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
	{ gmem0 64 }
	{ gmem1 64 }
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
