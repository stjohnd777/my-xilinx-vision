set moduleName remap_accel
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
set C_modelName {remap_accel}
set C_modelType { void 0 }
set C_modelArgList {
	{ gmem0 int 8 regular {axi_master 0}  }
	{ gmem1 int 32 regular {axi_master 0}  }
	{ gmem2 int 32 regular {axi_master 0}  }
	{ gmem3 int 8 regular {axi_master 1}  }
	{ img_in int 64 regular {axi_slave 0}  }
	{ map_x int 64 regular {axi_slave 0}  }
	{ map_y int 64 regular {axi_slave 0}  }
	{ img_out int 64 regular {axi_slave 0}  }
	{ rows int 32 regular {axi_slave 0}  }
	{ cols int 32 regular {axi_slave 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "gmem0", "interface" : "axi_master", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "img_in","offset": { "type": "dynamic","port_name": "img_in","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "gmem1", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "map_x","offset": { "type": "dynamic","port_name": "map_x","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "gmem2", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "map_y","offset": { "type": "dynamic","port_name": "map_y","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "gmem3", "interface" : "axi_master", "bitwidth" : 8, "direction" : "WRITEONLY", "bitSlice":[ {"cElement": [{"cName": "img_out","offset": { "type": "dynamic","port_name": "img_out","bundle": "control"},"direction": "WRITEONLY"}]}]} , 
 	{ "Name" : "img_in", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":16}, "offset_end" : {"in":27}} , 
 	{ "Name" : "map_x", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":28}, "offset_end" : {"in":39}} , 
 	{ "Name" : "map_y", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":40}, "offset_end" : {"in":51}} , 
 	{ "Name" : "img_out", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":52}, "offset_end" : {"in":63}} , 
 	{ "Name" : "rows", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":64}, "offset_end" : {"in":71}} , 
 	{ "Name" : "cols", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":72}, "offset_end" : {"in":79}} ]}
# RTL Port declarations: 
set portNum 200
set portList { 
	{ s_axi_control_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_AWADDR sc_in sc_lv 7 signal -1 } 
	{ s_axi_control_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_control_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_control_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_ARADDR sc_in sc_lv 7 signal -1 } 
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
	{ m_axi_gmem2_AWVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_gmem2_AWREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_gmem2_AWADDR sc_out sc_lv 64 signal 2 } 
	{ m_axi_gmem2_AWID sc_out sc_lv 1 signal 2 } 
	{ m_axi_gmem2_AWLEN sc_out sc_lv 8 signal 2 } 
	{ m_axi_gmem2_AWSIZE sc_out sc_lv 3 signal 2 } 
	{ m_axi_gmem2_AWBURST sc_out sc_lv 2 signal 2 } 
	{ m_axi_gmem2_AWLOCK sc_out sc_lv 2 signal 2 } 
	{ m_axi_gmem2_AWCACHE sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem2_AWPROT sc_out sc_lv 3 signal 2 } 
	{ m_axi_gmem2_AWQOS sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem2_AWREGION sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem2_AWUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_gmem2_WVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_gmem2_WREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_gmem2_WDATA sc_out sc_lv 32 signal 2 } 
	{ m_axi_gmem2_WSTRB sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem2_WLAST sc_out sc_logic 1 signal 2 } 
	{ m_axi_gmem2_WID sc_out sc_lv 1 signal 2 } 
	{ m_axi_gmem2_WUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_gmem2_ARVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_gmem2_ARREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_gmem2_ARADDR sc_out sc_lv 64 signal 2 } 
	{ m_axi_gmem2_ARID sc_out sc_lv 1 signal 2 } 
	{ m_axi_gmem2_ARLEN sc_out sc_lv 8 signal 2 } 
	{ m_axi_gmem2_ARSIZE sc_out sc_lv 3 signal 2 } 
	{ m_axi_gmem2_ARBURST sc_out sc_lv 2 signal 2 } 
	{ m_axi_gmem2_ARLOCK sc_out sc_lv 2 signal 2 } 
	{ m_axi_gmem2_ARCACHE sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem2_ARPROT sc_out sc_lv 3 signal 2 } 
	{ m_axi_gmem2_ARQOS sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem2_ARREGION sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem2_ARUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_gmem2_RVALID sc_in sc_logic 1 signal 2 } 
	{ m_axi_gmem2_RREADY sc_out sc_logic 1 signal 2 } 
	{ m_axi_gmem2_RDATA sc_in sc_lv 32 signal 2 } 
	{ m_axi_gmem2_RLAST sc_in sc_logic 1 signal 2 } 
	{ m_axi_gmem2_RID sc_in sc_lv 1 signal 2 } 
	{ m_axi_gmem2_RUSER sc_in sc_lv 1 signal 2 } 
	{ m_axi_gmem2_RRESP sc_in sc_lv 2 signal 2 } 
	{ m_axi_gmem2_BVALID sc_in sc_logic 1 signal 2 } 
	{ m_axi_gmem2_BREADY sc_out sc_logic 1 signal 2 } 
	{ m_axi_gmem2_BRESP sc_in sc_lv 2 signal 2 } 
	{ m_axi_gmem2_BID sc_in sc_lv 1 signal 2 } 
	{ m_axi_gmem2_BUSER sc_in sc_lv 1 signal 2 } 
	{ m_axi_gmem3_AWVALID sc_out sc_logic 1 signal 3 } 
	{ m_axi_gmem3_AWREADY sc_in sc_logic 1 signal 3 } 
	{ m_axi_gmem3_AWADDR sc_out sc_lv 64 signal 3 } 
	{ m_axi_gmem3_AWID sc_out sc_lv 1 signal 3 } 
	{ m_axi_gmem3_AWLEN sc_out sc_lv 8 signal 3 } 
	{ m_axi_gmem3_AWSIZE sc_out sc_lv 3 signal 3 } 
	{ m_axi_gmem3_AWBURST sc_out sc_lv 2 signal 3 } 
	{ m_axi_gmem3_AWLOCK sc_out sc_lv 2 signal 3 } 
	{ m_axi_gmem3_AWCACHE sc_out sc_lv 4 signal 3 } 
	{ m_axi_gmem3_AWPROT sc_out sc_lv 3 signal 3 } 
	{ m_axi_gmem3_AWQOS sc_out sc_lv 4 signal 3 } 
	{ m_axi_gmem3_AWREGION sc_out sc_lv 4 signal 3 } 
	{ m_axi_gmem3_AWUSER sc_out sc_lv 1 signal 3 } 
	{ m_axi_gmem3_WVALID sc_out sc_logic 1 signal 3 } 
	{ m_axi_gmem3_WREADY sc_in sc_logic 1 signal 3 } 
	{ m_axi_gmem3_WDATA sc_out sc_lv 32 signal 3 } 
	{ m_axi_gmem3_WSTRB sc_out sc_lv 4 signal 3 } 
	{ m_axi_gmem3_WLAST sc_out sc_logic 1 signal 3 } 
	{ m_axi_gmem3_WID sc_out sc_lv 1 signal 3 } 
	{ m_axi_gmem3_WUSER sc_out sc_lv 1 signal 3 } 
	{ m_axi_gmem3_ARVALID sc_out sc_logic 1 signal 3 } 
	{ m_axi_gmem3_ARREADY sc_in sc_logic 1 signal 3 } 
	{ m_axi_gmem3_ARADDR sc_out sc_lv 64 signal 3 } 
	{ m_axi_gmem3_ARID sc_out sc_lv 1 signal 3 } 
	{ m_axi_gmem3_ARLEN sc_out sc_lv 8 signal 3 } 
	{ m_axi_gmem3_ARSIZE sc_out sc_lv 3 signal 3 } 
	{ m_axi_gmem3_ARBURST sc_out sc_lv 2 signal 3 } 
	{ m_axi_gmem3_ARLOCK sc_out sc_lv 2 signal 3 } 
	{ m_axi_gmem3_ARCACHE sc_out sc_lv 4 signal 3 } 
	{ m_axi_gmem3_ARPROT sc_out sc_lv 3 signal 3 } 
	{ m_axi_gmem3_ARQOS sc_out sc_lv 4 signal 3 } 
	{ m_axi_gmem3_ARREGION sc_out sc_lv 4 signal 3 } 
	{ m_axi_gmem3_ARUSER sc_out sc_lv 1 signal 3 } 
	{ m_axi_gmem3_RVALID sc_in sc_logic 1 signal 3 } 
	{ m_axi_gmem3_RREADY sc_out sc_logic 1 signal 3 } 
	{ m_axi_gmem3_RDATA sc_in sc_lv 32 signal 3 } 
	{ m_axi_gmem3_RLAST sc_in sc_logic 1 signal 3 } 
	{ m_axi_gmem3_RID sc_in sc_lv 1 signal 3 } 
	{ m_axi_gmem3_RUSER sc_in sc_lv 1 signal 3 } 
	{ m_axi_gmem3_RRESP sc_in sc_lv 2 signal 3 } 
	{ m_axi_gmem3_BVALID sc_in sc_logic 1 signal 3 } 
	{ m_axi_gmem3_BREADY sc_out sc_logic 1 signal 3 } 
	{ m_axi_gmem3_BRESP sc_in sc_lv 2 signal 3 } 
	{ m_axi_gmem3_BID sc_in sc_lv 1 signal 3 } 
	{ m_axi_gmem3_BUSER sc_in sc_lv 1 signal 3 } 
}
set NewPortList {[ 
	{ "name": "s_axi_control_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "control", "role": "AWADDR" },"address":[{"name":"remap_accel","role":"start","value":"0","valid_bit":"0"},{"name":"remap_accel","role":"continue","value":"0","valid_bit":"4"},{"name":"remap_accel","role":"auto_start","value":"0","valid_bit":"7"},{"name":"img_in","role":"data","value":"16"},{"name":"map_x","role":"data","value":"28"},{"name":"map_y","role":"data","value":"40"},{"name":"img_out","role":"data","value":"52"},{"name":"rows","role":"data","value":"64"},{"name":"cols","role":"data","value":"72"}] },
	{ "name": "s_axi_control_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWVALID" } },
	{ "name": "s_axi_control_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWREADY" } },
	{ "name": "s_axi_control_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WVALID" } },
	{ "name": "s_axi_control_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WREADY" } },
	{ "name": "s_axi_control_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "WDATA" } },
	{ "name": "s_axi_control_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "control", "role": "WSTRB" } },
	{ "name": "s_axi_control_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "control", "role": "ARADDR" },"address":[{"name":"remap_accel","role":"start","value":"0","valid_bit":"0"},{"name":"remap_accel","role":"done","value":"0","valid_bit":"1"},{"name":"remap_accel","role":"idle","value":"0","valid_bit":"2"},{"name":"remap_accel","role":"ready","value":"0","valid_bit":"3"},{"name":"remap_accel","role":"auto_start","value":"0","valid_bit":"7"}] },
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
 	{ "name": "m_axi_gmem1_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "BUSER" }} , 
 	{ "name": "m_axi_gmem2_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem2_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem2_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem2", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem2_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem2_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem2", "role": "AWLEN" }} , 
 	{ "name": "m_axi_gmem2_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem2", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_gmem2_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem2", "role": "AWBURST" }} , 
 	{ "name": "m_axi_gmem2_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem2", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_gmem2_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem2", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_gmem2_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem2", "role": "AWPROT" }} , 
 	{ "name": "m_axi_gmem2_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem2", "role": "AWQOS" }} , 
 	{ "name": "m_axi_gmem2_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem2", "role": "AWREGION" }} , 
 	{ "name": "m_axi_gmem2_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "AWUSER" }} , 
 	{ "name": "m_axi_gmem2_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "WVALID" }} , 
 	{ "name": "m_axi_gmem2_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "WREADY" }} , 
 	{ "name": "m_axi_gmem2_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem2", "role": "WDATA" }} , 
 	{ "name": "m_axi_gmem2_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem2", "role": "WSTRB" }} , 
 	{ "name": "m_axi_gmem2_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "WLAST" }} , 
 	{ "name": "m_axi_gmem2_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "WID" }} , 
 	{ "name": "m_axi_gmem2_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "WUSER" }} , 
 	{ "name": "m_axi_gmem2_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "ARVALID" }} , 
 	{ "name": "m_axi_gmem2_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "ARREADY" }} , 
 	{ "name": "m_axi_gmem2_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem2", "role": "ARADDR" }} , 
 	{ "name": "m_axi_gmem2_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "ARID" }} , 
 	{ "name": "m_axi_gmem2_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem2", "role": "ARLEN" }} , 
 	{ "name": "m_axi_gmem2_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem2", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_gmem2_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem2", "role": "ARBURST" }} , 
 	{ "name": "m_axi_gmem2_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem2", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_gmem2_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem2", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_gmem2_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem2", "role": "ARPROT" }} , 
 	{ "name": "m_axi_gmem2_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem2", "role": "ARQOS" }} , 
 	{ "name": "m_axi_gmem2_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem2", "role": "ARREGION" }} , 
 	{ "name": "m_axi_gmem2_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "ARUSER" }} , 
 	{ "name": "m_axi_gmem2_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "RVALID" }} , 
 	{ "name": "m_axi_gmem2_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "RREADY" }} , 
 	{ "name": "m_axi_gmem2_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem2", "role": "RDATA" }} , 
 	{ "name": "m_axi_gmem2_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "RLAST" }} , 
 	{ "name": "m_axi_gmem2_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "RID" }} , 
 	{ "name": "m_axi_gmem2_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "RUSER" }} , 
 	{ "name": "m_axi_gmem2_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem2", "role": "RRESP" }} , 
 	{ "name": "m_axi_gmem2_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "BVALID" }} , 
 	{ "name": "m_axi_gmem2_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "BREADY" }} , 
 	{ "name": "m_axi_gmem2_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem2", "role": "BRESP" }} , 
 	{ "name": "m_axi_gmem2_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "BID" }} , 
 	{ "name": "m_axi_gmem2_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "BUSER" }} , 
 	{ "name": "m_axi_gmem3_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem3_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem3_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem3", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem3_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem3_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem3", "role": "AWLEN" }} , 
 	{ "name": "m_axi_gmem3_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem3", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_gmem3_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem3", "role": "AWBURST" }} , 
 	{ "name": "m_axi_gmem3_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem3", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_gmem3_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem3", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_gmem3_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem3", "role": "AWPROT" }} , 
 	{ "name": "m_axi_gmem3_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem3", "role": "AWQOS" }} , 
 	{ "name": "m_axi_gmem3_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem3", "role": "AWREGION" }} , 
 	{ "name": "m_axi_gmem3_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "AWUSER" }} , 
 	{ "name": "m_axi_gmem3_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "WVALID" }} , 
 	{ "name": "m_axi_gmem3_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "WREADY" }} , 
 	{ "name": "m_axi_gmem3_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem3", "role": "WDATA" }} , 
 	{ "name": "m_axi_gmem3_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem3", "role": "WSTRB" }} , 
 	{ "name": "m_axi_gmem3_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "WLAST" }} , 
 	{ "name": "m_axi_gmem3_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "WID" }} , 
 	{ "name": "m_axi_gmem3_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "WUSER" }} , 
 	{ "name": "m_axi_gmem3_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "ARVALID" }} , 
 	{ "name": "m_axi_gmem3_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "ARREADY" }} , 
 	{ "name": "m_axi_gmem3_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem3", "role": "ARADDR" }} , 
 	{ "name": "m_axi_gmem3_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "ARID" }} , 
 	{ "name": "m_axi_gmem3_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem3", "role": "ARLEN" }} , 
 	{ "name": "m_axi_gmem3_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem3", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_gmem3_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem3", "role": "ARBURST" }} , 
 	{ "name": "m_axi_gmem3_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem3", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_gmem3_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem3", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_gmem3_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem3", "role": "ARPROT" }} , 
 	{ "name": "m_axi_gmem3_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem3", "role": "ARQOS" }} , 
 	{ "name": "m_axi_gmem3_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem3", "role": "ARREGION" }} , 
 	{ "name": "m_axi_gmem3_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "ARUSER" }} , 
 	{ "name": "m_axi_gmem3_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "RVALID" }} , 
 	{ "name": "m_axi_gmem3_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "RREADY" }} , 
 	{ "name": "m_axi_gmem3_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem3", "role": "RDATA" }} , 
 	{ "name": "m_axi_gmem3_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "RLAST" }} , 
 	{ "name": "m_axi_gmem3_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "RID" }} , 
 	{ "name": "m_axi_gmem3_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "RUSER" }} , 
 	{ "name": "m_axi_gmem3_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem3", "role": "RRESP" }} , 
 	{ "name": "m_axi_gmem3_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "BVALID" }} , 
 	{ "name": "m_axi_gmem3_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "BREADY" }} , 
 	{ "name": "m_axi_gmem3_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem3", "role": "BRESP" }} , 
 	{ "name": "m_axi_gmem3_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "BID" }} , 
 	{ "name": "m_axi_gmem3_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "BUSER" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "12", "33", "66", "89", "90", "91", "92", "93", "94", "95", "96", "97", "98", "99", "100"],
		"CDFG" : "remap_accel",
		"Protocol" : "ap_ctrl_chain",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "164", "EstimateLatencyMax" : "2109718",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"InputProcess" : [
			{"ID" : "6", "Name" : "entry_proc7_U0"},
			{"ID" : "7", "Name" : "Block_entry6_proc_U0"},
			{"ID" : "8", "Name" : "Loop_VITIS_LOOP_46_1_proc1_U0"},
			{"ID" : "12", "Name" : "Array2xfMat_8_0_1080_1920_1_2_U0"}],
		"OutputProcess" : [
			{"ID" : "66", "Name" : "xfMat2Array_8_0_1080_1920_1_2_1_U0"}],
		"Port" : [
			{"Name" : "gmem0", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "Array2xfMat_8_0_1080_1920_1_2_U0", "Port" : "gmem0"}]},
			{"Name" : "gmem1", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "Loop_VITIS_LOOP_46_1_proc1_U0", "Port" : "gmem1"}]},
			{"Name" : "gmem2", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "Loop_VITIS_LOOP_46_1_proc1_U0", "Port" : "gmem2"}]},
			{"Name" : "gmem3", "Type" : "MAXI", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "66", "SubInstance" : "xfMat2Array_8_0_1080_1920_1_2_1_U0", "Port" : "gmem3"}]},
			{"Name" : "img_in", "Type" : "None", "Direction" : "I"},
			{"Name" : "map_x", "Type" : "None", "Direction" : "I"},
			{"Name" : "map_y", "Type" : "None", "Direction" : "I"},
			{"Name" : "img_out", "Type" : "None", "Direction" : "I"},
			{"Name" : "rows", "Type" : "None", "Direction" : "I"},
			{"Name" : "cols", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.control_s_axi_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.gmem0_m_axi_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.gmem1_m_axi_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.gmem2_m_axi_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.gmem3_m_axi_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.entry_proc7_U0", "Parent" : "0",
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
			{"Name" : "img_out", "Type" : "None", "Direction" : "I"},
			{"Name" : "img_out_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["66"], "DependentChan" : "89", "DependentChanDepth" : "5", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "img_out_c_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Block_entry6_proc_U0", "Parent" : "0",
		"CDFG" : "Block_entry6_proc",
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
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Loop_VITIS_LOOP_46_1_proc1_U0", "Parent" : "0", "Child" : ["9", "11"],
		"CDFG" : "Loop_VITIS_LOOP_46_1_proc1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "79", "EstimateLatencyMax" : "2073678",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "cols", "Type" : "None", "Direction" : "I"},
			{"Name" : "rows", "Type" : "None", "Direction" : "I"},
			{"Name" : "map_x", "Type" : "None", "Direction" : "I"},
			{"Name" : "gmem1", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "gmem1_blk_n_AR", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_Loop_VITIS_LOOP_46_1_proc1_Pipeline_VITIS_LOOP_46_1_fu_90", "Port" : "gmem1", "Inst_start_state" : "75", "Inst_end_state" : "76"}]},
			{"Name" : "map_y", "Type" : "None", "Direction" : "I"},
			{"Name" : "gmem2", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "gmem2_blk_n_AR", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_Loop_VITIS_LOOP_46_1_proc1_Pipeline_VITIS_LOOP_46_1_fu_90", "Port" : "gmem2", "Inst_start_state" : "75", "Inst_end_state" : "76"}]},
			{"Name" : "mapX_data", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["33","35"], "DependentChan" : "94", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_Loop_VITIS_LOOP_46_1_proc1_Pipeline_VITIS_LOOP_46_1_fu_90", "Port" : "mapX_data", "Inst_start_state" : "75", "Inst_end_state" : "76"}]},
			{"Name" : "mapY_data", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["33","35"], "DependentChan" : "95", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_Loop_VITIS_LOOP_46_1_proc1_Pipeline_VITIS_LOOP_46_1_fu_90", "Port" : "mapY_data", "Inst_start_state" : "75", "Inst_end_state" : "76"}]}]},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Loop_VITIS_LOOP_46_1_proc1_U0.grp_Loop_VITIS_LOOP_46_1_proc1_Pipeline_VITIS_LOOP_46_1_fu_90", "Parent" : "8", "Child" : ["10"],
		"CDFG" : "Loop_VITIS_LOOP_46_1_proc1_Pipeline_VITIS_LOOP_46_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "2073603",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "gmem2", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "gmem2_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "sext_ln46_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "gmem1", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "gmem1_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "sext_ln46", "Type" : "None", "Direction" : "I"},
			{"Name" : "trunc_ln46_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "mapX_data", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "mapX_data_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mapY_data", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "mapY_data_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_46_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "10", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Loop_VITIS_LOOP_46_1_proc1_U0.grp_Loop_VITIS_LOOP_46_1_proc1_Pipeline_VITIS_LOOP_46_1_fu_90.flow_control_loop_pipe_sequential_init_U", "Parent" : "9"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Loop_VITIS_LOOP_46_1_proc1_U0.mul_mul_11ns_11ns_22_4_1_U12", "Parent" : "8"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Array2xfMat_8_0_1080_1920_1_2_U0", "Parent" : "0", "Child" : ["13"],
		"CDFG" : "Array2xfMat_8_0_1080_1920_1_2_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "82", "EstimateLatencyMax" : "2073681",
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
					{"ID" : "13", "SubInstance" : "grp_Axi2Mat_fu_84", "Port" : "gmem0", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "srcPtr", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : ["7"], "DependentChan" : "92", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I", "DependentProc" : ["7"], "DependentChan" : "93", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "imgInput_data1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["33","35"], "DependentChan" : "96", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "grp_Axi2Mat_fu_84", "Port" : "imgInput_data1", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "imgInput_rows_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["33","34"], "DependentChan" : "97", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "imgInput_rows_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "imgInput_cols_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["33","34"], "DependentChan" : "98", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "imgInput_cols_c_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Array2xfMat_8_0_1080_1920_1_2_U0.grp_Axi2Mat_fu_84", "Parent" : "12", "Child" : ["14", "19", "29", "30", "31", "32"],
		"CDFG" : "Axi2Mat",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "80", "EstimateLatencyMax" : "2073679",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"InputProcess" : [
			{"ID" : "14", "Name" : "Axi2AxiStream_U0"}],
		"OutputProcess" : [
			{"ID" : "19", "Name" : "AxiStream2Mat_U0"}],
		"Port" : [
			{"Name" : "gmem0", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "Axi2AxiStream_U0", "Port" : "gmem0"}]},
			{"Name" : "din", "Type" : "None", "Direction" : "I"},
			{"Name" : "imgInput_data1", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "AxiStream2Mat_U0", "Port" : "imgInput_data1"}]},
			{"Name" : "rows", "Type" : "None", "Direction" : "I"},
			{"Name" : "cols", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "14", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Array2xfMat_8_0_1080_1920_1_2_U0.grp_Axi2Mat_fu_84.Axi2AxiStream_U0", "Parent" : "13", "Child" : ["15", "17", "18"],
		"CDFG" : "Axi2AxiStream",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "78", "EstimateLatencyMax" : "1997",
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
					{"ID" : "15", "SubInstance" : "grp_Axi2AxiStream_Pipeline_VITIS_LOOP_1022_1_fu_108", "Port" : "gmem0", "Inst_start_state" : "74", "Inst_end_state" : "75"}]},
			{"Name" : "din", "Type" : "None", "Direction" : "I"},
			{"Name" : "ldata", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["19","22"], "DependentChan" : "29", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "grp_Axi2AxiStream_Pipeline_VITIS_LOOP_1022_1_fu_108", "Port" : "ldata", "Inst_start_state" : "74", "Inst_end_state" : "75"}]},
			{"Name" : "rows", "Type" : "None", "Direction" : "I"},
			{"Name" : "cols", "Type" : "None", "Direction" : "I"},
			{"Name" : "rows_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["19","20"], "DependentChan" : "30", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "rows_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cols_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["19","20"], "DependentChan" : "31", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "cols_c_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "15", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.Array2xfMat_8_0_1080_1920_1_2_U0.grp_Axi2Mat_fu_84.Axi2AxiStream_U0.grp_Axi2AxiStream_Pipeline_VITIS_LOOP_1022_1_fu_108", "Parent" : "14", "Child" : ["16"],
		"CDFG" : "Axi2AxiStream_Pipeline_VITIS_LOOP_1022_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "1923",
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
	{"ID" : "16", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.Array2xfMat_8_0_1080_1920_1_2_U0.grp_Axi2Mat_fu_84.Axi2AxiStream_U0.grp_Axi2AxiStream_Pipeline_VITIS_LOOP_1022_1_fu_108.flow_control_loop_pipe_sequential_init_U", "Parent" : "15"},
	{"ID" : "17", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.Array2xfMat_8_0_1080_1920_1_2_U0.grp_Axi2Mat_fu_84.Axi2AxiStream_U0.mul_mul_16ns_16ns_32_3_1_U26", "Parent" : "14"},
	{"ID" : "18", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.Array2xfMat_8_0_1080_1920_1_2_U0.grp_Axi2Mat_fu_84.Axi2AxiStream_U0.mul_mul_16ns_16ns_22_4_1_U27", "Parent" : "14"},
	{"ID" : "19", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Array2xfMat_8_0_1080_1920_1_2_U0.grp_Axi2Mat_fu_84.AxiStream2Mat_U0", "Parent" : "13", "Child" : ["20", "21", "22", "26", "27", "28"],
		"CDFG" : "AxiStream2Mat",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "7", "EstimateLatencyMax" : "2073606",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"StartSource" : "14",
		"StartFifo" : "start_for_AxiStream2Mat_U0_U",
		"InputProcess" : [
			{"ID" : "20", "Name" : "entry_proc5_U0"},
			{"ID" : "21", "Name" : "last_blk_pxl_width_U0"}],
		"OutputProcess" : [
			{"ID" : "22", "Name" : "AxiStream2MatStream_2_U0"}],
		"Port" : [
			{"Name" : "ldata1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["14"], "DependentChan" : "29", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "AxiStream2MatStream_2_U0", "Port" : "ldata1"}]},
			{"Name" : "imgInput_data1", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "AxiStream2MatStream_2_U0", "Port" : "imgInput_data1"}]},
			{"Name" : "rows", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["14"], "DependentChan" : "30", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "entry_proc5_U0", "Port" : "rows"}]},
			{"Name" : "cols", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["14"], "DependentChan" : "31", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "entry_proc5_U0", "Port" : "cols"}]}]},
	{"ID" : "20", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.Array2xfMat_8_0_1080_1920_1_2_U0.grp_Axi2Mat_fu_84.AxiStream2Mat_U0.entry_proc5_U0", "Parent" : "19",
		"CDFG" : "entry_proc5",
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
			{"Name" : "rows", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["14"], "DependentChan" : "30", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "rows_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "rows_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["22"], "DependentChan" : "26", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "rows_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cols", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["14"], "DependentChan" : "31", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "cols_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cols_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["22"], "DependentChan" : "27", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "cols_c_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "21", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.Array2xfMat_8_0_1080_1920_1_2_U0.grp_Axi2Mat_fu_84.AxiStream2Mat_U0.last_blk_pxl_width_U0", "Parent" : "19",
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
			{"Name" : "return_r", "Type" : "None", "Direction" : "O", "DependentProc" : ["22"], "DependentChan" : "28", "DependentChanDepth" : "2", "DependentChanType" : "1"}]},
	{"ID" : "22", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.Array2xfMat_8_0_1080_1920_1_2_U0.grp_Axi2Mat_fu_84.AxiStream2Mat_U0.AxiStream2MatStream_2_U0", "Parent" : "19", "Child" : ["23", "25"],
		"CDFG" : "AxiStream2MatStream_2_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "6", "EstimateLatencyMax" : "2073605",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "ldata1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["14"], "DependentChan" : "29", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_AxiStream2MatStream_2_Pipeline_MMIterInLoopRow_fu_62", "Port" : "ldata1", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "imgInput_data1", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_AxiStream2MatStream_2_Pipeline_MMIterInLoopRow_fu_62", "Port" : "imgInput_data1", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "rows", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["20"], "DependentChan" : "26", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "rows_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cols_bound_per_npc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["20"], "DependentChan" : "27", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "cols_bound_per_npc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "last_blk_width", "Type" : "None", "Direction" : "I", "DependentProc" : ["21"], "DependentChan" : "28", "DependentChanDepth" : "2", "DependentChanType" : "1"}]},
	{"ID" : "23", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.Array2xfMat_8_0_1080_1920_1_2_U0.grp_Axi2Mat_fu_84.AxiStream2Mat_U0.AxiStream2MatStream_2_U0.grp_AxiStream2MatStream_2_Pipeline_MMIterInLoopRow_fu_62", "Parent" : "22", "Child" : ["24"],
		"CDFG" : "AxiStream2MatStream_2_Pipeline_MMIterInLoopRow",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "2073603",
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
	{"ID" : "24", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.Array2xfMat_8_0_1080_1920_1_2_U0.grp_Axi2Mat_fu_84.AxiStream2Mat_U0.AxiStream2MatStream_2_U0.grp_AxiStream2MatStream_2_Pipeline_MMIterInLoopRow_fu_62.flow_control_loop_pipe_sequential_init_U", "Parent" : "23"},
	{"ID" : "25", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.Array2xfMat_8_0_1080_1920_1_2_U0.grp_Axi2Mat_fu_84.AxiStream2Mat_U0.AxiStream2MatStream_2_U0.mul_32s_32s_32_1_1_U51", "Parent" : "22"},
	{"ID" : "26", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.Array2xfMat_8_0_1080_1920_1_2_U0.grp_Axi2Mat_fu_84.AxiStream2Mat_U0.rows_c_U", "Parent" : "19"},
	{"ID" : "27", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.Array2xfMat_8_0_1080_1920_1_2_U0.grp_Axi2Mat_fu_84.AxiStream2Mat_U0.cols_c_U", "Parent" : "19"},
	{"ID" : "28", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.Array2xfMat_8_0_1080_1920_1_2_U0.grp_Axi2Mat_fu_84.AxiStream2Mat_U0.last_blk_width_channel_U", "Parent" : "19"},
	{"ID" : "29", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Array2xfMat_8_0_1080_1920_1_2_U0.grp_Axi2Mat_fu_84.ldata_U", "Parent" : "13"},
	{"ID" : "30", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Array2xfMat_8_0_1080_1920_1_2_U0.grp_Axi2Mat_fu_84.rows_c_U", "Parent" : "13"},
	{"ID" : "31", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Array2xfMat_8_0_1080_1920_1_2_U0.grp_Axi2Mat_fu_84.cols_c_U", "Parent" : "13"},
	{"ID" : "32", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Array2xfMat_8_0_1080_1920_1_2_U0.grp_Axi2Mat_fu_84.start_for_AxiStream2Mat_U0_U", "Parent" : "13"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.remap_8_1_0_4_0_1080_1920_1_false_2_2_2_2_U0", "Parent" : "0", "Child" : ["34", "35", "64", "65"],
		"CDFG" : "remap_8_1_0_4_0_1080_1920_1_false_2_2_2_2_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "90", "EstimateLatencyMax" : "2109650",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"StartSource" : "8",
		"StartFifo" : "start_for_remap_8_1_0_4_0_1080_1920_1_false_2_2_2_2_U0_U",
		"InputProcess" : [
			{"ID" : "34", "Name" : "remap_8_1_0_4_0_1080_1920_1_false_2_2_2_2_Block_entry1_proc_U0"}],
		"OutputProcess" : [
			{"ID" : "35", "Name" : "xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_U0"}],
		"Port" : [
			{"Name" : "p_src_mat_rows", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["12"], "DependentChan" : "97", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"SubConnect" : [
					{"ID" : "34", "SubInstance" : "remap_8_1_0_4_0_1080_1920_1_false_2_2_2_2_Block_entry1_proc_U0", "Port" : "p_src_mat_rows"}]},
			{"Name" : "p_src_mat_cols", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["12"], "DependentChan" : "98", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"SubConnect" : [
					{"ID" : "34", "SubInstance" : "remap_8_1_0_4_0_1080_1920_1_false_2_2_2_2_Block_entry1_proc_U0", "Port" : "p_src_mat_cols"}]},
			{"Name" : "imgInput_data1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["12"], "DependentChan" : "96", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "35", "SubInstance" : "xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_U0", "Port" : "imgInput_data1"}]},
			{"Name" : "imgOutput_data4", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["66"], "DependentChan" : "99", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "35", "SubInstance" : "xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_U0", "Port" : "imgOutput_data4"}]},
			{"Name" : "mapX_data2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["8"], "DependentChan" : "94", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "35", "SubInstance" : "xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_U0", "Port" : "mapX_data2"}]},
			{"Name" : "mapY_data3", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["8"], "DependentChan" : "95", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "35", "SubInstance" : "xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_U0", "Port" : "mapY_data3"}]}]},
	{"ID" : "34", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.remap_8_1_0_4_0_1080_1920_1_false_2_2_2_2_U0.remap_8_1_0_4_0_1080_1920_1_false_2_2_2_2_Block_entry1_proc_U0", "Parent" : "33",
		"CDFG" : "remap_8_1_0_4_0_1080_1920_1_false_2_2_2_2_Block_entry1_proc",
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
			{"Name" : "p_src_mat_rows", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["12"], "DependentChan" : "97", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "p_src_mat_rows_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_src_mat_cols", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["12"], "DependentChan" : "98", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "p_src_mat_cols_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "35", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.remap_8_1_0_4_0_1080_1920_1_false_2_2_2_2_U0.xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_U0", "Parent" : "33", "Child" : ["36", "37", "38", "40", "42", "61", "62", "63"],
		"CDFG" : "xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "89", "EstimateLatencyMax" : "2109649",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "imgInput_data1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["12"], "DependentChan" : "96", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "42", "SubInstance" : "grp_xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_Pipeline_loop_width_fu_106", "Port" : "imgInput_data1", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "imgOutput_data4", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["66"], "DependentChan" : "99", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "42", "SubInstance" : "grp_xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_Pipeline_loop_width_fu_106", "Port" : "imgOutput_data4", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "mapX_data2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["8"], "DependentChan" : "94", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "42", "SubInstance" : "grp_xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_Pipeline_loop_width_fu_106", "Port" : "mapX_data2", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "mapY_data3", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["8"], "DependentChan" : "95", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "42", "SubInstance" : "grp_xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_Pipeline_loop_width_fu_106", "Port" : "mapY_data3", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : ["34"], "DependentChan" : "64", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I", "DependentProc" : ["34"], "DependentChan" : "65", "DependentChanDepth" : "2", "DependentChanType" : "1"}],
		"Loop" : [
			{"Name" : "loop_height", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "10", "FirstState" : "ap_ST_fsm_state8", "LastState" : ["ap_ST_fsm_state10"], "QuitState" : ["ap_ST_fsm_state8"], "PreState" : ["ap_ST_fsm_state7"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "36", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.remap_8_1_0_4_0_1080_1920_1_false_2_2_2_2_U0.xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_U0.r1_U", "Parent" : "35"},
	{"ID" : "37", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.remap_8_1_0_4_0_1080_1920_1_false_2_2_2_2_U0.xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_U0.r2_U", "Parent" : "35"},
	{"ID" : "38", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.remap_8_1_0_4_0_1080_1920_1_false_2_2_2_2_U0.xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_U0.grp_xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_Pipeline_1_fu_94", "Parent" : "35", "Child" : ["39"],
		"CDFG" : "xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_Pipeline_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "r1", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "Loop 1", "PipelineType" : "NotSupport"}]},
	{"ID" : "39", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.remap_8_1_0_4_0_1080_1920_1_false_2_2_2_2_U0.xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_U0.grp_xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_Pipeline_1_fu_94.flow_control_loop_pipe_sequential_init_U", "Parent" : "38"},
	{"ID" : "40", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.remap_8_1_0_4_0_1080_1920_1_false_2_2_2_2_U0.xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_U0.grp_xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_Pipeline_2_fu_100", "Parent" : "35", "Child" : ["41"],
		"CDFG" : "xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_Pipeline_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "r2", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "Loop 1", "PipelineType" : "NotSupport"}]},
	{"ID" : "41", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.remap_8_1_0_4_0_1080_1920_1_false_2_2_2_2_U0.xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_U0.grp_xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_Pipeline_2_fu_100.flow_control_loop_pipe_sequential_init_U", "Parent" : "40"},
	{"ID" : "42", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.remap_8_1_0_4_0_1080_1920_1_false_2_2_2_2_U0.xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_U0.grp_xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_Pipeline_loop_width_fu_106", "Parent" : "35", "Child" : ["43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60"],
		"CDFG" : "xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_Pipeline_loop_width",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "15", "EstimateLatencyMax" : "1936",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"DependenceCheck" : [
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_65", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state1_pp0_iter0_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter0", "FromFinalOperation" : "ap_enable_operation_65", "FromFinalSV" : "0", "FromAddress" : "r1_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state13_pp0_iter12_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter12", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter13", "ToInitialOperation" : "ap_enable_operation_285", "ToInitialSV" : "12", "ToFinalState" : "ap_enable_state14_pp0_iter13_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter13", "ToFinalOperation" : "ap_enable_operation_302", "ToFinalSV" : "13", "ToAddress" : "r1_address1", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "3", "II" : "1", "Pragma" : "(/home/overman/dev/workspaces/vision/vision_kernels/src/remap/../imgproc/xf_remap.hpp:264:9)", "Type" : "RAW"},
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_66", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state1_pp0_iter0_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter0", "FromFinalOperation" : "ap_enable_operation_66", "FromFinalSV" : "0", "FromAddress" : "r2_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state13_pp0_iter12_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter12", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter13", "ToInitialOperation" : "ap_enable_operation_288", "ToInitialSV" : "12", "ToFinalState" : "ap_enable_state14_pp0_iter13_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter13", "ToFinalOperation" : "ap_enable_operation_305", "ToFinalSV" : "13", "ToAddress" : "r2_address1", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "3", "II" : "1", "Pragma" : "(/home/overman/dev/workspaces/vision/vision_kernels/src/remap/../imgproc/xf_remap.hpp:265:9)", "Type" : "RAW"},
			{"FromInitialState" : "ap_enable_state2_pp0_iter1_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter1", "FromInitialOperation" : "ap_enable_operation_83", "FromInitialSV" : "1", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_83", "FromFinalSV" : "1", "FromAddress" : "buf_V_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state9_pp0_iter8_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter8", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter9", "ToInitialOperation" : "ap_enable_operation_235", "ToInitialSV" : "8", "ToFinalState" : "ap_enable_state10_pp0_iter9_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter9", "ToFinalOperation" : "ap_enable_operation_251", "ToFinalSV" : "9", "ToAddress" : "buf_V_address1", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "13", "II" : "1", "Pragma" : "(/home/overman/dev/workspaces/vision/vision_kernels/src/remap/../imgproc/xf_remap.hpp:261:9)", "Type" : "RAW"},
			{"FromInitialState" : "ap_enable_state2_pp0_iter1_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter1", "FromInitialOperation" : "ap_enable_operation_85", "FromInitialSV" : "1", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_85", "FromFinalSV" : "1", "FromAddress" : "buf_V_1_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state9_pp0_iter8_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter8", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter9", "ToInitialOperation" : "ap_enable_operation_236", "ToInitialSV" : "8", "ToFinalState" : "ap_enable_state10_pp0_iter9_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter9", "ToFinalOperation" : "ap_enable_operation_252", "ToFinalSV" : "9", "ToAddress" : "buf_V_1_address1", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "13", "II" : "1", "Pragma" : "(/home/overman/dev/workspaces/vision/vision_kernels/src/remap/../imgproc/xf_remap.hpp:261:9)", "Type" : "RAW"},
			{"FromInitialState" : "ap_enable_state2_pp0_iter1_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter1", "FromInitialOperation" : "ap_enable_operation_87", "FromInitialSV" : "1", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_87", "FromFinalSV" : "1", "FromAddress" : "buf_V_2_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state9_pp0_iter8_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter8", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter9", "ToInitialOperation" : "ap_enable_operation_237", "ToInitialSV" : "8", "ToFinalState" : "ap_enable_state10_pp0_iter9_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter9", "ToFinalOperation" : "ap_enable_operation_253", "ToFinalSV" : "9", "ToAddress" : "buf_V_2_address1", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "13", "II" : "1", "Pragma" : "(/home/overman/dev/workspaces/vision/vision_kernels/src/remap/../imgproc/xf_remap.hpp:261:9)", "Type" : "RAW"},
			{"FromInitialState" : "ap_enable_state2_pp0_iter1_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter1", "FromInitialOperation" : "ap_enable_operation_89", "FromInitialSV" : "1", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_89", "FromFinalSV" : "1", "FromAddress" : "buf_V_3_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state9_pp0_iter8_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter8", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter9", "ToInitialOperation" : "ap_enable_operation_238", "ToInitialSV" : "8", "ToFinalState" : "ap_enable_state10_pp0_iter9_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter9", "ToFinalOperation" : "ap_enable_operation_254", "ToFinalSV" : "9", "ToAddress" : "buf_V_3_address1", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "13", "II" : "1", "Pragma" : "(/home/overman/dev/workspaces/vision/vision_kernels/src/remap/../imgproc/xf_remap.hpp:261:9)", "Type" : "RAW"},
			{"FromInitialState" : "ap_enable_state9_pp0_iter8_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter8", "FromInitialOperation" : "ap_enable_operation_235", "FromInitialSV" : "8", "FromFinalState" : "ap_enable_state10_pp0_iter9_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter9", "FromFinalOperation" : "ap_enable_operation_251", "FromFinalSV" : "9", "FromAddress" : "buf_V_address1", "FromType" : "R", "ToInitialState" : "ap_enable_state2_pp0_iter1_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter1", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter2", "ToInitialOperation" : "ap_enable_operation_83", "ToInitialSV" : "1", "ToFinalState" : "ap_enable_state2_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_83", "ToFinalSV" : "1", "ToAddress" : "buf_V_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "13", "II" : "1", "Pragma" : "(/home/overman/dev/workspaces/vision/vision_kernels/src/remap/../imgproc/xf_remap.hpp:261:9)", "Type" : "WAR", "StateEnableSignalListForFifoShift" : ["ap_enable_state2_pp0_iter1_stage0", "ap_enable_state9_pp0_iter8_stage0", "ap_enable_state10_pp0_iter9_stage0"]},
			{"FromInitialState" : "ap_enable_state9_pp0_iter8_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter8", "FromInitialOperation" : "ap_enable_operation_236", "FromInitialSV" : "8", "FromFinalState" : "ap_enable_state10_pp0_iter9_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter9", "FromFinalOperation" : "ap_enable_operation_252", "FromFinalSV" : "9", "FromAddress" : "buf_V_1_address1", "FromType" : "R", "ToInitialState" : "ap_enable_state2_pp0_iter1_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter1", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter2", "ToInitialOperation" : "ap_enable_operation_85", "ToInitialSV" : "1", "ToFinalState" : "ap_enable_state2_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_85", "ToFinalSV" : "1", "ToAddress" : "buf_V_1_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "13", "II" : "1", "Pragma" : "(/home/overman/dev/workspaces/vision/vision_kernels/src/remap/../imgproc/xf_remap.hpp:261:9)", "Type" : "WAR", "StateEnableSignalListForFifoShift" : ["ap_enable_state2_pp0_iter1_stage0", "ap_enable_state9_pp0_iter8_stage0", "ap_enable_state10_pp0_iter9_stage0"]},
			{"FromInitialState" : "ap_enable_state9_pp0_iter8_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter8", "FromInitialOperation" : "ap_enable_operation_237", "FromInitialSV" : "8", "FromFinalState" : "ap_enable_state10_pp0_iter9_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter9", "FromFinalOperation" : "ap_enable_operation_253", "FromFinalSV" : "9", "FromAddress" : "buf_V_2_address1", "FromType" : "R", "ToInitialState" : "ap_enable_state2_pp0_iter1_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter1", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter2", "ToInitialOperation" : "ap_enable_operation_87", "ToInitialSV" : "1", "ToFinalState" : "ap_enable_state2_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_87", "ToFinalSV" : "1", "ToAddress" : "buf_V_2_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "13", "II" : "1", "Pragma" : "(/home/overman/dev/workspaces/vision/vision_kernels/src/remap/../imgproc/xf_remap.hpp:261:9)", "Type" : "WAR", "StateEnableSignalListForFifoShift" : ["ap_enable_state2_pp0_iter1_stage0", "ap_enable_state9_pp0_iter8_stage0", "ap_enable_state10_pp0_iter9_stage0"]},
			{"FromInitialState" : "ap_enable_state9_pp0_iter8_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter8", "FromInitialOperation" : "ap_enable_operation_238", "FromInitialSV" : "8", "FromFinalState" : "ap_enable_state10_pp0_iter9_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter9", "FromFinalOperation" : "ap_enable_operation_254", "FromFinalSV" : "9", "FromAddress" : "buf_V_3_address1", "FromType" : "R", "ToInitialState" : "ap_enable_state2_pp0_iter1_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter1", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter2", "ToInitialOperation" : "ap_enable_operation_89", "ToInitialSV" : "1", "ToFinalState" : "ap_enable_state2_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_89", "ToFinalSV" : "1", "ToAddress" : "buf_V_3_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "13", "II" : "1", "Pragma" : "(/home/overman/dev/workspaces/vision/vision_kernels/src/remap/../imgproc/xf_remap.hpp:261:9)", "Type" : "WAR", "StateEnableSignalListForFifoShift" : ["ap_enable_state2_pp0_iter1_stage0", "ap_enable_state9_pp0_iter8_stage0", "ap_enable_state10_pp0_iter9_stage0"]},
			{"FromInitialState" : "ap_enable_state13_pp0_iter12_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter12", "FromInitialOperation" : "ap_enable_operation_285", "FromInitialSV" : "12", "FromFinalState" : "ap_enable_state14_pp0_iter13_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter13", "FromFinalOperation" : "ap_enable_operation_302", "FromFinalSV" : "13", "FromAddress" : "r1_address1", "FromType" : "R", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_65", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state1_pp0_iter0_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter0", "ToFinalOperation" : "ap_enable_operation_65", "ToFinalSV" : "0", "ToAddress" : "r1_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "3", "II" : "1", "Pragma" : "(/home/overman/dev/workspaces/vision/vision_kernels/src/remap/../imgproc/xf_remap.hpp:264:9)", "Type" : "WAR", "StateEnableSignalListForFifoShift" : ["ap_enable_state1_pp0_iter0_stage0", "ap_enable_state2_pp0_iter1_stage0", "ap_enable_state9_pp0_iter8_stage0", "ap_enable_state10_pp0_iter9_stage0", "ap_enable_state13_pp0_iter12_stage0", "ap_enable_state14_pp0_iter13_stage0"]},
			{"FromInitialState" : "ap_enable_state13_pp0_iter12_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter12", "FromInitialOperation" : "ap_enable_operation_288", "FromInitialSV" : "12", "FromFinalState" : "ap_enable_state14_pp0_iter13_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter13", "FromFinalOperation" : "ap_enable_operation_305", "FromFinalSV" : "13", "FromAddress" : "r2_address1", "FromType" : "R", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_66", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state1_pp0_iter0_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter0", "ToFinalOperation" : "ap_enable_operation_66", "ToFinalSV" : "0", "ToAddress" : "r2_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "3", "II" : "1", "Pragma" : "(/home/overman/dev/workspaces/vision/vision_kernels/src/remap/../imgproc/xf_remap.hpp:265:9)", "Type" : "WAR", "StateEnableSignalListForFifoShift" : ["ap_enable_state1_pp0_iter0_stage0", "ap_enable_state2_pp0_iter1_stage0", "ap_enable_state9_pp0_iter8_stage0", "ap_enable_state10_pp0_iter9_stage0", "ap_enable_state13_pp0_iter12_stage0", "ap_enable_state14_pp0_iter13_stage0"]}],
		"Port" : [
			{"Name" : "r2", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "idxprom2582_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "r1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "add106_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "i", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp263_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "mul_ln315", "Type" : "None", "Direction" : "I"},
			{"Name" : "i_cast9_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "cols_cast_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp111_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "imgInput_data1", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "imgInput_data1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mapX_data2", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "mapX_data2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mapY_data3", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "mapY_data3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bitcast_ln348", "Type" : "None", "Direction" : "I"},
			{"Name" : "icmp_ln348_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv1_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "bitcast_ln349", "Type" : "None", "Direction" : "I"},
			{"Name" : "icmp_ln349_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv2_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "imgOutput_data4", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "imgOutput_data4_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "loop_width", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter13", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter13", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "43", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.remap_8_1_0_4_0_1080_1920_1_false_2_2_2_2_U0.xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_U0.grp_xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_Pipeline_loop_width_fu_106.buf_V_U", "Parent" : "42"},
	{"ID" : "44", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.remap_8_1_0_4_0_1080_1920_1_false_2_2_2_2_U0.xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_U0.grp_xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_Pipeline_loop_width_fu_106.buf_V_1_U", "Parent" : "42"},
	{"ID" : "45", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.remap_8_1_0_4_0_1080_1920_1_false_2_2_2_2_U0.xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_U0.grp_xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_Pipeline_loop_width_fu_106.buf_V_2_U", "Parent" : "42"},
	{"ID" : "46", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.remap_8_1_0_4_0_1080_1920_1_false_2_2_2_2_U0.xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_U0.grp_xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_Pipeline_loop_width_fu_106.buf_V_3_U", "Parent" : "42"},
	{"ID" : "47", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.remap_8_1_0_4_0_1080_1920_1_false_2_2_2_2_U0.xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_U0.grp_xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_Pipeline_loop_width_fu_106.fmul_32ns_32ns_32_4_max_dsp_1_U85", "Parent" : "42"},
	{"ID" : "48", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.remap_8_1_0_4_0_1080_1920_1_false_2_2_2_2_U0.xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_U0.grp_xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_Pipeline_loop_width_fu_106.fmul_32ns_32ns_32_4_max_dsp_1_U86", "Parent" : "42"},
	{"ID" : "49", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.remap_8_1_0_4_0_1080_1920_1_false_2_2_2_2_U0.xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_U0.grp_xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_Pipeline_loop_width_fu_106.fcmp_32ns_32ns_1_2_no_dsp_1_U87", "Parent" : "42"},
	{"ID" : "50", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.remap_8_1_0_4_0_1080_1920_1_false_2_2_2_2_U0.xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_U0.grp_xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_Pipeline_loop_width_fu_106.fcmp_32ns_32ns_1_2_no_dsp_1_U88", "Parent" : "42"},
	{"ID" : "51", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.remap_8_1_0_4_0_1080_1920_1_false_2_2_2_2_U0.xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_U0.grp_xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_Pipeline_loop_width_fu_106.mul_4s_11ns_13_1_1_U89", "Parent" : "42"},
	{"ID" : "52", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.remap_8_1_0_4_0_1080_1920_1_false_2_2_2_2_U0.xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_U0.grp_xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_Pipeline_loop_width_fu_106.mul_4s_11ns_13_1_1_U90", "Parent" : "42"},
	{"ID" : "53", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.remap_8_1_0_4_0_1080_1920_1_false_2_2_2_2_U0.xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_U0.grp_xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_Pipeline_loop_width_fu_106.mul_6ns_5ns_11_1_1_U91", "Parent" : "42"},
	{"ID" : "54", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.remap_8_1_0_4_0_1080_1920_1_false_2_2_2_2_U0.xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_U0.grp_xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_Pipeline_loop_width_fu_106.mul_6ns_5ns_11_1_1_U92", "Parent" : "42"},
	{"ID" : "55", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.remap_8_1_0_4_0_1080_1920_1_false_2_2_2_2_U0.xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_U0.grp_xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_Pipeline_loop_width_fu_106.mul_5ns_5ns_10_1_1_U93", "Parent" : "42"},
	{"ID" : "56", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.remap_8_1_0_4_0_1080_1920_1_false_2_2_2_2_U0.xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_U0.grp_xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_Pipeline_loop_width_fu_106.mul_mul_11ns_8ns_18_4_1_U94", "Parent" : "42"},
	{"ID" : "57", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.remap_8_1_0_4_0_1080_1920_1_false_2_2_2_2_U0.xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_U0.grp_xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_Pipeline_loop_width_fu_106.mul_mul_11ns_8ns_18_4_1_U95", "Parent" : "42"},
	{"ID" : "58", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.remap_8_1_0_4_0_1080_1920_1_false_2_2_2_2_U0.xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_U0.grp_xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_Pipeline_loop_width_fu_106.ama_submuladd_11ns_11ns_8ns_18ns_18_4_1_U96", "Parent" : "42"},
	{"ID" : "59", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.remap_8_1_0_4_0_1080_1920_1_false_2_2_2_2_U0.xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_U0.grp_xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_Pipeline_loop_width_fu_106.mac_muladd_10ns_8ns_18ns_18_4_1_U97", "Parent" : "42"},
	{"ID" : "60", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.remap_8_1_0_4_0_1080_1920_1_false_2_2_2_2_U0.xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_U0.grp_xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_Pipeline_loop_width_fu_106.flow_control_loop_pipe_sequential_init_U", "Parent" : "42"},
	{"ID" : "61", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.remap_8_1_0_4_0_1080_1920_1_false_2_2_2_2_U0.xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_U0.sitofp_32s_32_5_no_dsp_1_U127", "Parent" : "35"},
	{"ID" : "62", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.remap_8_1_0_4_0_1080_1920_1_false_2_2_2_2_U0.xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_U0.sitofp_32s_32_5_no_dsp_1_U128", "Parent" : "35"},
	{"ID" : "63", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.remap_8_1_0_4_0_1080_1920_1_false_2_2_2_2_U0.xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_U0.mul_2ns_11ns_12_1_1_U129", "Parent" : "35"},
	{"ID" : "64", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.remap_8_1_0_4_0_1080_1920_1_false_2_2_2_2_U0.rows_loc_channel_U", "Parent" : "33"},
	{"ID" : "65", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.remap_8_1_0_4_0_1080_1920_1_false_2_2_2_2_U0.cols_loc_channel_U", "Parent" : "33"},
	{"ID" : "66", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.xfMat2Array_8_0_1080_1920_1_2_1_U0", "Parent" : "0", "Child" : ["67"],
		"CDFG" : "xfMat2Array_8_0_1080_1920_1_2_1_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "80", "EstimateLatencyMax" : "2073679",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : ["7"], "DependentChan" : "90", "DependentChanDepth" : "4", "DependentChanType" : "1"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I", "DependentProc" : ["7"], "DependentChan" : "91", "DependentChanDepth" : "4", "DependentChanType" : "1"},
			{"Name" : "imgOutput_data4", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["33","35"], "DependentChan" : "99", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "67", "SubInstance" : "grp_Mat2Axi_fu_62", "Port" : "imgOutput_data4", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "gmem3", "Type" : "MAXI", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "67", "SubInstance" : "grp_Mat2Axi_fu_62", "Port" : "gmem3", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "dstPtr", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["6"], "DependentChan" : "89", "DependentChanDepth" : "5", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "dstPtr_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "67", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.xfMat2Array_8_0_1080_1920_1_2_1_U0.grp_Mat2Axi_fu_62", "Parent" : "66", "Child" : ["68", "69", "71", "72", "82", "85", "86", "87", "88"],
		"CDFG" : "Mat2Axi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "78", "EstimateLatencyMax" : "2073677",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"InputProcess" : [
			{"ID" : "68", "Name" : "entry_proc6_U0"},
			{"ID" : "69", "Name" : "addrbound_U0"},
			{"ID" : "72", "Name" : "Mat2AxiStream_U0"}],
		"OutputProcess" : [
			{"ID" : "82", "Name" : "AxiStream2Axi_U0"}],
		"Port" : [
			{"Name" : "imgOutput_data4", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "72", "SubInstance" : "Mat2AxiStream_U0", "Port" : "imgOutput_data4"}]},
			{"Name" : "gmem3", "Type" : "MAXI", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "82", "SubInstance" : "AxiStream2Axi_U0", "Port" : "gmem3"}]},
			{"Name" : "dout", "Type" : "None", "Direction" : "I"},
			{"Name" : "rows", "Type" : "None", "Direction" : "I"},
			{"Name" : "cols", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "68", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.xfMat2Array_8_0_1080_1920_1_2_1_U0.grp_Mat2Axi_fu_62.entry_proc6_U0", "Parent" : "67",
		"CDFG" : "entry_proc6",
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
			{"Name" : "dout_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["82"], "DependentChan" : "85", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "dout_c_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "69", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.xfMat2Array_8_0_1080_1920_1_2_1_U0.grp_Mat2Axi_fu_62.addrbound_U0", "Parent" : "67", "Child" : ["70"],
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
			{"Name" : "p_channel", "Type" : "None", "Direction" : "O", "DependentProc" : ["71"], "DependentChan" : "86", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "rows", "Type" : "None", "Direction" : "I"},
			{"Name" : "cols", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "70", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.xfMat2Array_8_0_1080_1920_1_2_1_U0.grp_Mat2Axi_fu_62.addrbound_U0.mul_mul_16ns_16ns_32_3_1_U149", "Parent" : "69"},
	{"ID" : "71", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.xfMat2Array_8_0_1080_1920_1_2_1_U0.grp_Mat2Axi_fu_62.Mat2Axi_Block_entry24_proc_U0", "Parent" : "67",
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
			{"Name" : "axibound_V_1", "Type" : "None", "Direction" : "I", "DependentProc" : ["69"], "DependentChan" : "86", "DependentChanDepth" : "2", "DependentChanType" : "1"}]},
	{"ID" : "72", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.xfMat2Array_8_0_1080_1920_1_2_1_U0.grp_Mat2Axi_fu_62.Mat2AxiStream_U0", "Parent" : "67", "Child" : ["73", "74", "75", "79", "80", "81"],
		"CDFG" : "Mat2AxiStream",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "9", "EstimateLatencyMax" : "2073608",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"InputProcess" : [
			{"ID" : "73", "Name" : "entry_proc_U0"},
			{"ID" : "74", "Name" : "last_blk_pxl_width_1_U0"}],
		"OutputProcess" : [
			{"ID" : "75", "Name" : "MatStream2AxiStream_2_U0"}],
		"Port" : [
			{"Name" : "imgOutput_data4", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "75", "SubInstance" : "MatStream2AxiStream_2_U0", "Port" : "imgOutput_data4"}]},
			{"Name" : "ldata1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["82"], "DependentChan" : "88", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "75", "SubInstance" : "MatStream2AxiStream_2_U0", "Port" : "ldata1"}]},
			{"Name" : "rows", "Type" : "None", "Direction" : "I"},
			{"Name" : "cols", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "73", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.xfMat2Array_8_0_1080_1920_1_2_1_U0.grp_Mat2Axi_fu_62.Mat2AxiStream_U0.entry_proc_U0", "Parent" : "72",
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
			{"Name" : "rows_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["75"], "DependentChan" : "79", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "rows_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cols", "Type" : "None", "Direction" : "I"},
			{"Name" : "cols_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["75"], "DependentChan" : "80", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "cols_c_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "74", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.xfMat2Array_8_0_1080_1920_1_2_1_U0.grp_Mat2Axi_fu_62.Mat2AxiStream_U0.last_blk_pxl_width_1_U0", "Parent" : "72",
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
			{"Name" : "return_r", "Type" : "None", "Direction" : "O", "DependentProc" : ["75"], "DependentChan" : "81", "DependentChanDepth" : "2", "DependentChanType" : "1"}]},
	{"ID" : "75", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.xfMat2Array_8_0_1080_1920_1_2_1_U0.grp_Mat2Axi_fu_62.Mat2AxiStream_U0.MatStream2AxiStream_2_U0", "Parent" : "72", "Child" : ["76", "78"],
		"CDFG" : "MatStream2AxiStream_2_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "8", "EstimateLatencyMax" : "2073607",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "imgOutput_data4", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "76", "SubInstance" : "grp_MatStream2AxiStream_2_Pipeline_MMIterOutRow_MMIterOutCol_fu_79", "Port" : "imgOutput_data4", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "ldata1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["82"], "DependentChan" : "88", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "ldata1_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "76", "SubInstance" : "grp_MatStream2AxiStream_2_Pipeline_MMIterOutRow_MMIterOutCol_fu_79", "Port" : "ldata1", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "rows", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["73"], "DependentChan" : "79", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "rows_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cols_bound_per_npc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["73"], "DependentChan" : "80", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "cols_bound_per_npc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "last_blk_width", "Type" : "None", "Direction" : "I", "DependentProc" : ["74"], "DependentChan" : "81", "DependentChanDepth" : "2", "DependentChanType" : "1"}]},
	{"ID" : "76", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.xfMat2Array_8_0_1080_1920_1_2_1_U0.grp_Mat2Axi_fu_62.Mat2AxiStream_U0.MatStream2AxiStream_2_U0.grp_MatStream2AxiStream_2_Pipeline_MMIterOutRow_MMIterOutCol_fu_79", "Parent" : "75", "Child" : ["77"],
		"CDFG" : "MatStream2AxiStream_2_Pipeline_MMIterOutRow_MMIterOutCol",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3", "EstimateLatencyMax" : "2073602",
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
			{"Name" : "imgOutput_data4", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "imgOutput_data4_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ldata1", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "ldata1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "localbuffer_V_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "filled_V_1_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "MMIterOutRow_MMIterOutCol", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "77", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.xfMat2Array_8_0_1080_1920_1_2_1_U0.grp_Mat2Axi_fu_62.Mat2AxiStream_U0.MatStream2AxiStream_2_U0.grp_MatStream2AxiStream_2_Pipeline_MMIterOutRow_MMIterOutCol_fu_79.flow_control_loop_pipe_sequential_init_U", "Parent" : "76"},
	{"ID" : "78", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.xfMat2Array_8_0_1080_1920_1_2_1_U0.grp_Mat2Axi_fu_62.Mat2AxiStream_U0.MatStream2AxiStream_2_U0.mul_mul_16ns_16ns_32_4_1_U168", "Parent" : "75"},
	{"ID" : "79", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.xfMat2Array_8_0_1080_1920_1_2_1_U0.grp_Mat2Axi_fu_62.Mat2AxiStream_U0.rows_c_U", "Parent" : "72"},
	{"ID" : "80", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.xfMat2Array_8_0_1080_1920_1_2_1_U0.grp_Mat2Axi_fu_62.Mat2AxiStream_U0.cols_c_U", "Parent" : "72"},
	{"ID" : "81", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.xfMat2Array_8_0_1080_1920_1_2_1_U0.grp_Mat2Axi_fu_62.Mat2AxiStream_U0.last_blk_width_channel_U", "Parent" : "72"},
	{"ID" : "82", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.xfMat2Array_8_0_1080_1920_1_2_1_U0.grp_Mat2Axi_fu_62.AxiStream2Axi_U0", "Parent" : "67", "Child" : ["83"],
		"CDFG" : "AxiStream2Axi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "75", "EstimateLatencyMax" : "2073674",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "ldata1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["72","75"], "DependentChan" : "88", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "83", "SubInstance" : "grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_67", "Port" : "ldata1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "gmem3", "Type" : "MAXI", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "gmem3_blk_n_AW", "Type" : "RtlSignal"},
					{"Name" : "gmem3_blk_n_B", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "83", "SubInstance" : "grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_67", "Port" : "gmem3", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "dout", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["68"], "DependentChan" : "85", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "dout_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : ["71"], "DependentChan" : "87", "DependentChanDepth" : "2", "DependentChanType" : "1"}]},
	{"ID" : "83", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.xfMat2Array_8_0_1080_1920_1_2_1_U0.grp_Mat2Axi_fu_62.AxiStream2Axi_U0.grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_67", "Parent" : "82", "Child" : ["84"],
		"CDFG" : "AxiStream2Axi_Pipeline_MMIterOutLoop2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "2073603",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "gmem3", "Type" : "MAXI", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "gmem3_blk_n_W", "Type" : "RtlSignal"}]},
			{"Name" : "dout_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "ldata1", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "ldata1_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "MMIterOutLoop2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "84", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.xfMat2Array_8_0_1080_1920_1_2_1_U0.grp_Mat2Axi_fu_62.AxiStream2Axi_U0.grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_67.flow_control_loop_pipe_sequential_init_U", "Parent" : "83"},
	{"ID" : "85", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.xfMat2Array_8_0_1080_1920_1_2_1_U0.grp_Mat2Axi_fu_62.dout_c_U", "Parent" : "67"},
	{"ID" : "86", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.xfMat2Array_8_0_1080_1920_1_2_1_U0.grp_Mat2Axi_fu_62.p_channel_U", "Parent" : "67"},
	{"ID" : "87", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.xfMat2Array_8_0_1080_1920_1_2_1_U0.grp_Mat2Axi_fu_62.axibound_V_U", "Parent" : "67"},
	{"ID" : "88", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.xfMat2Array_8_0_1080_1920_1_2_1_U0.grp_Mat2Axi_fu_62.ldata_U", "Parent" : "67"},
	{"ID" : "89", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.img_out_c_U", "Parent" : "0"},
	{"ID" : "90", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.imgOutput_rows_U", "Parent" : "0"},
	{"ID" : "91", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.imgOutput_cols_U", "Parent" : "0"},
	{"ID" : "92", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.imgInput_rows_c13_channel_U", "Parent" : "0"},
	{"ID" : "93", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.imgInput_cols_c14_channel_U", "Parent" : "0"},
	{"ID" : "94", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mapX_data_U", "Parent" : "0"},
	{"ID" : "95", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mapY_data_U", "Parent" : "0"},
	{"ID" : "96", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.imgInput_data_U", "Parent" : "0"},
	{"ID" : "97", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.imgInput_rows_c_U", "Parent" : "0"},
	{"ID" : "98", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.imgInput_cols_c_U", "Parent" : "0"},
	{"ID" : "99", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.imgOutput_data_U", "Parent" : "0"},
	{"ID" : "100", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_remap_8_1_0_4_0_1080_1920_1_false_2_2_2_2_U0_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	remap_accel {
		gmem0 {Type I LastRead 3 FirstWrite -1}
		gmem1 {Type I LastRead 4 FirstWrite -1}
		gmem2 {Type I LastRead 4 FirstWrite -1}
		gmem3 {Type O LastRead 4 FirstWrite 2}
		img_in {Type I LastRead 0 FirstWrite -1}
		map_x {Type I LastRead 0 FirstWrite -1}
		map_y {Type I LastRead 0 FirstWrite -1}
		img_out {Type I LastRead 0 FirstWrite -1}
		rows {Type I LastRead 0 FirstWrite -1}
		cols {Type I LastRead 0 FirstWrite -1}}
	entry_proc7 {
		img_out {Type I LastRead 0 FirstWrite -1}
		img_out_c {Type O LastRead -1 FirstWrite 0}}
	Block_entry6_proc {
		rows {Type I LastRead 0 FirstWrite -1}
		cols {Type I LastRead 0 FirstWrite -1}}
	Loop_VITIS_LOOP_46_1_proc1 {
		cols {Type I LastRead 0 FirstWrite -1}
		rows {Type I LastRead 0 FirstWrite -1}
		map_x {Type I LastRead 4 FirstWrite -1}
		gmem1 {Type I LastRead 4 FirstWrite -1}
		map_y {Type I LastRead 4 FirstWrite -1}
		gmem2 {Type I LastRead 4 FirstWrite -1}
		mapX_data {Type O LastRead -1 FirstWrite 2}
		mapY_data {Type O LastRead -1 FirstWrite 2}}
	Loop_VITIS_LOOP_46_1_proc1_Pipeline_VITIS_LOOP_46_1 {
		gmem2 {Type I LastRead 1 FirstWrite -1}
		sext_ln46_1 {Type I LastRead 0 FirstWrite -1}
		gmem1 {Type I LastRead 1 FirstWrite -1}
		sext_ln46 {Type I LastRead 0 FirstWrite -1}
		trunc_ln46_2 {Type I LastRead 0 FirstWrite -1}
		mapX_data {Type O LastRead -1 FirstWrite 2}
		mapY_data {Type O LastRead -1 FirstWrite 2}}
	Array2xfMat_8_0_1080_1920_1_2_s {
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
	entry_proc5 {
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
	remap_8_1_0_4_0_1080_1920_1_false_2_2_2_2_s {
		p_src_mat_rows {Type I LastRead 0 FirstWrite -1}
		p_src_mat_cols {Type I LastRead 0 FirstWrite -1}
		imgInput_data1 {Type I LastRead 1 FirstWrite -1}
		imgOutput_data4 {Type O LastRead -1 FirstWrite 13}
		mapX_data2 {Type I LastRead 1 FirstWrite -1}
		mapY_data3 {Type I LastRead 1 FirstWrite -1}}
	remap_8_1_0_4_0_1080_1920_1_false_2_2_2_2_Block_entry1_proc {
		p_src_mat_rows {Type I LastRead 0 FirstWrite -1}
		p_src_mat_cols {Type I LastRead 0 FirstWrite -1}}
	xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_s {
		imgInput_data1 {Type I LastRead 1 FirstWrite -1}
		imgOutput_data4 {Type O LastRead -1 FirstWrite 13}
		mapX_data2 {Type I LastRead 1 FirstWrite -1}
		mapY_data3 {Type I LastRead 1 FirstWrite -1}
		p_read {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}}
	xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_Pipeline_1 {
		r1 {Type O LastRead -1 FirstWrite 0}}
	xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_Pipeline_2 {
		r2 {Type O LastRead -1 FirstWrite 0}}
	xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_Pipeline_loop_width {
		r2 {Type IO LastRead 12 FirstWrite 0}
		idxprom2582_i {Type I LastRead 0 FirstWrite -1}
		r1 {Type IO LastRead 12 FirstWrite 0}
		add106_i {Type I LastRead 0 FirstWrite -1}
		i {Type I LastRead 0 FirstWrite -1}
		cmp263_i {Type I LastRead 0 FirstWrite -1}
		mul_ln315 {Type I LastRead 0 FirstWrite -1}
		i_cast9_i {Type I LastRead 0 FirstWrite -1}
		cols_cast_i {Type I LastRead 0 FirstWrite -1}
		cmp111_i {Type I LastRead 0 FirstWrite -1}
		imgInput_data1 {Type I LastRead 1 FirstWrite -1}
		mapX_data2 {Type I LastRead 1 FirstWrite -1}
		mapY_data3 {Type I LastRead 1 FirstWrite -1}
		bitcast_ln348 {Type I LastRead 0 FirstWrite -1}
		icmp_ln348_6 {Type I LastRead 0 FirstWrite -1}
		conv1_i {Type I LastRead 0 FirstWrite -1}
		bitcast_ln349 {Type I LastRead 0 FirstWrite -1}
		icmp_ln349_4 {Type I LastRead 0 FirstWrite -1}
		conv2_i {Type I LastRead 0 FirstWrite -1}
		imgOutput_data4 {Type O LastRead -1 FirstWrite 13}}
	xfMat2Array_8_0_1080_1920_1_2_1_s {
		p_read {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}
		imgOutput_data4 {Type I LastRead 2 FirstWrite -1}
		gmem3 {Type O LastRead 4 FirstWrite 2}
		dstPtr {Type I LastRead 0 FirstWrite -1}}
	Mat2Axi {
		imgOutput_data4 {Type I LastRead 2 FirstWrite -1}
		gmem3 {Type O LastRead 4 FirstWrite 2}
		dout {Type I LastRead 1 FirstWrite -1}
		rows {Type I LastRead 0 FirstWrite -1}
		cols {Type I LastRead 0 FirstWrite -1}}
	entry_proc6 {
		dout {Type I LastRead 0 FirstWrite -1}
		dout_c {Type O LastRead -1 FirstWrite 0}}
	addrbound {
		p_channel {Type O LastRead -1 FirstWrite 2}
		rows {Type I LastRead 0 FirstWrite -1}
		cols {Type I LastRead 0 FirstWrite -1}}
	Mat2Axi_Block_entry24_proc {
		axibound_V_1 {Type I LastRead 0 FirstWrite -1}}
	Mat2AxiStream {
		imgOutput_data4 {Type I LastRead 2 FirstWrite -1}
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
		imgOutput_data4 {Type I LastRead 2 FirstWrite -1}
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
		imgOutput_data4 {Type I LastRead 2 FirstWrite -1}
		ldata1 {Type O LastRead -1 FirstWrite 2}
		localbuffer_V_3_out {Type O LastRead -1 FirstWrite 1}
		filled_V_1_out {Type O LastRead -1 FirstWrite 1}}
	AxiStream2Axi {
		ldata1 {Type I LastRead 1 FirstWrite -1}
		gmem3 {Type O LastRead 4 FirstWrite 2}
		dout {Type I LastRead 0 FirstWrite -1}
		p_read {Type I LastRead 0 FirstWrite -1}}
	AxiStream2Axi_Pipeline_MMIterOutLoop2 {
		gmem3 {Type O LastRead -1 FirstWrite 2}
		dout_load {Type I LastRead 0 FirstWrite -1}
		p_read {Type I LastRead 0 FirstWrite -1}
		ldata1 {Type I LastRead 1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "164", "Max" : "2109718"}
	, {"Name" : "Interval", "Min" : "90", "Max" : "2109650"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	gmem0 { m_axi {  { m_axi_gmem0_AWVALID VALID 1 1 }  { m_axi_gmem0_AWREADY READY 0 1 }  { m_axi_gmem0_AWADDR ADDR 1 64 }  { m_axi_gmem0_AWID ID 1 1 }  { m_axi_gmem0_AWLEN SIZE 1 8 }  { m_axi_gmem0_AWSIZE BURST 1 3 }  { m_axi_gmem0_AWBURST LOCK 1 2 }  { m_axi_gmem0_AWLOCK CACHE 1 2 }  { m_axi_gmem0_AWCACHE PROT 1 4 }  { m_axi_gmem0_AWPROT QOS 1 3 }  { m_axi_gmem0_AWQOS REGION 1 4 }  { m_axi_gmem0_AWREGION USER 1 4 }  { m_axi_gmem0_AWUSER DATA 1 1 }  { m_axi_gmem0_WVALID VALID 1 1 }  { m_axi_gmem0_WREADY READY 0 1 }  { m_axi_gmem0_WDATA FIFONUM 1 32 }  { m_axi_gmem0_WSTRB STRB 1 4 }  { m_axi_gmem0_WLAST LAST 1 1 }  { m_axi_gmem0_WID ID 1 1 }  { m_axi_gmem0_WUSER DATA 1 1 }  { m_axi_gmem0_ARVALID VALID 1 1 }  { m_axi_gmem0_ARREADY READY 0 1 }  { m_axi_gmem0_ARADDR ADDR 1 64 }  { m_axi_gmem0_ARID ID 1 1 }  { m_axi_gmem0_ARLEN SIZE 1 8 }  { m_axi_gmem0_ARSIZE BURST 1 3 }  { m_axi_gmem0_ARBURST LOCK 1 2 }  { m_axi_gmem0_ARLOCK CACHE 1 2 }  { m_axi_gmem0_ARCACHE PROT 1 4 }  { m_axi_gmem0_ARPROT QOS 1 3 }  { m_axi_gmem0_ARQOS REGION 1 4 }  { m_axi_gmem0_ARREGION USER 1 4 }  { m_axi_gmem0_ARUSER DATA 1 1 }  { m_axi_gmem0_RVALID VALID 0 1 }  { m_axi_gmem0_RREADY READY 1 1 }  { m_axi_gmem0_RDATA FIFONUM 0 32 }  { m_axi_gmem0_RLAST LAST 0 1 }  { m_axi_gmem0_RID ID 0 1 }  { m_axi_gmem0_RUSER DATA 0 1 }  { m_axi_gmem0_RRESP RESP 0 2 }  { m_axi_gmem0_BVALID VALID 0 1 }  { m_axi_gmem0_BREADY READY 1 1 }  { m_axi_gmem0_BRESP RESP 0 2 }  { m_axi_gmem0_BID ID 0 1 }  { m_axi_gmem0_BUSER DATA 0 1 } } }
	gmem1 { m_axi {  { m_axi_gmem1_AWVALID VALID 1 1 }  { m_axi_gmem1_AWREADY READY 0 1 }  { m_axi_gmem1_AWADDR ADDR 1 64 }  { m_axi_gmem1_AWID ID 1 1 }  { m_axi_gmem1_AWLEN SIZE 1 8 }  { m_axi_gmem1_AWSIZE BURST 1 3 }  { m_axi_gmem1_AWBURST LOCK 1 2 }  { m_axi_gmem1_AWLOCK CACHE 1 2 }  { m_axi_gmem1_AWCACHE PROT 1 4 }  { m_axi_gmem1_AWPROT QOS 1 3 }  { m_axi_gmem1_AWQOS REGION 1 4 }  { m_axi_gmem1_AWREGION USER 1 4 }  { m_axi_gmem1_AWUSER DATA 1 1 }  { m_axi_gmem1_WVALID VALID 1 1 }  { m_axi_gmem1_WREADY READY 0 1 }  { m_axi_gmem1_WDATA FIFONUM 1 32 }  { m_axi_gmem1_WSTRB STRB 1 4 }  { m_axi_gmem1_WLAST LAST 1 1 }  { m_axi_gmem1_WID ID 1 1 }  { m_axi_gmem1_WUSER DATA 1 1 }  { m_axi_gmem1_ARVALID VALID 1 1 }  { m_axi_gmem1_ARREADY READY 0 1 }  { m_axi_gmem1_ARADDR ADDR 1 64 }  { m_axi_gmem1_ARID ID 1 1 }  { m_axi_gmem1_ARLEN SIZE 1 8 }  { m_axi_gmem1_ARSIZE BURST 1 3 }  { m_axi_gmem1_ARBURST LOCK 1 2 }  { m_axi_gmem1_ARLOCK CACHE 1 2 }  { m_axi_gmem1_ARCACHE PROT 1 4 }  { m_axi_gmem1_ARPROT QOS 1 3 }  { m_axi_gmem1_ARQOS REGION 1 4 }  { m_axi_gmem1_ARREGION USER 1 4 }  { m_axi_gmem1_ARUSER DATA 1 1 }  { m_axi_gmem1_RVALID VALID 0 1 }  { m_axi_gmem1_RREADY READY 1 1 }  { m_axi_gmem1_RDATA FIFONUM 0 32 }  { m_axi_gmem1_RLAST LAST 0 1 }  { m_axi_gmem1_RID ID 0 1 }  { m_axi_gmem1_RUSER DATA 0 1 }  { m_axi_gmem1_RRESP RESP 0 2 }  { m_axi_gmem1_BVALID VALID 0 1 }  { m_axi_gmem1_BREADY READY 1 1 }  { m_axi_gmem1_BRESP RESP 0 2 }  { m_axi_gmem1_BID ID 0 1 }  { m_axi_gmem1_BUSER DATA 0 1 } } }
	gmem2 { m_axi {  { m_axi_gmem2_AWVALID VALID 1 1 }  { m_axi_gmem2_AWREADY READY 0 1 }  { m_axi_gmem2_AWADDR ADDR 1 64 }  { m_axi_gmem2_AWID ID 1 1 }  { m_axi_gmem2_AWLEN SIZE 1 8 }  { m_axi_gmem2_AWSIZE BURST 1 3 }  { m_axi_gmem2_AWBURST LOCK 1 2 }  { m_axi_gmem2_AWLOCK CACHE 1 2 }  { m_axi_gmem2_AWCACHE PROT 1 4 }  { m_axi_gmem2_AWPROT QOS 1 3 }  { m_axi_gmem2_AWQOS REGION 1 4 }  { m_axi_gmem2_AWREGION USER 1 4 }  { m_axi_gmem2_AWUSER DATA 1 1 }  { m_axi_gmem2_WVALID VALID 1 1 }  { m_axi_gmem2_WREADY READY 0 1 }  { m_axi_gmem2_WDATA FIFONUM 1 32 }  { m_axi_gmem2_WSTRB STRB 1 4 }  { m_axi_gmem2_WLAST LAST 1 1 }  { m_axi_gmem2_WID ID 1 1 }  { m_axi_gmem2_WUSER DATA 1 1 }  { m_axi_gmem2_ARVALID VALID 1 1 }  { m_axi_gmem2_ARREADY READY 0 1 }  { m_axi_gmem2_ARADDR ADDR 1 64 }  { m_axi_gmem2_ARID ID 1 1 }  { m_axi_gmem2_ARLEN SIZE 1 8 }  { m_axi_gmem2_ARSIZE BURST 1 3 }  { m_axi_gmem2_ARBURST LOCK 1 2 }  { m_axi_gmem2_ARLOCK CACHE 1 2 }  { m_axi_gmem2_ARCACHE PROT 1 4 }  { m_axi_gmem2_ARPROT QOS 1 3 }  { m_axi_gmem2_ARQOS REGION 1 4 }  { m_axi_gmem2_ARREGION USER 1 4 }  { m_axi_gmem2_ARUSER DATA 1 1 }  { m_axi_gmem2_RVALID VALID 0 1 }  { m_axi_gmem2_RREADY READY 1 1 }  { m_axi_gmem2_RDATA FIFONUM 0 32 }  { m_axi_gmem2_RLAST LAST 0 1 }  { m_axi_gmem2_RID ID 0 1 }  { m_axi_gmem2_RUSER DATA 0 1 }  { m_axi_gmem2_RRESP RESP 0 2 }  { m_axi_gmem2_BVALID VALID 0 1 }  { m_axi_gmem2_BREADY READY 1 1 }  { m_axi_gmem2_BRESP RESP 0 2 }  { m_axi_gmem2_BID ID 0 1 }  { m_axi_gmem2_BUSER DATA 0 1 } } }
	gmem3 { m_axi {  { m_axi_gmem3_AWVALID VALID 1 1 }  { m_axi_gmem3_AWREADY READY 0 1 }  { m_axi_gmem3_AWADDR ADDR 1 64 }  { m_axi_gmem3_AWID ID 1 1 }  { m_axi_gmem3_AWLEN SIZE 1 8 }  { m_axi_gmem3_AWSIZE BURST 1 3 }  { m_axi_gmem3_AWBURST LOCK 1 2 }  { m_axi_gmem3_AWLOCK CACHE 1 2 }  { m_axi_gmem3_AWCACHE PROT 1 4 }  { m_axi_gmem3_AWPROT QOS 1 3 }  { m_axi_gmem3_AWQOS REGION 1 4 }  { m_axi_gmem3_AWREGION USER 1 4 }  { m_axi_gmem3_AWUSER DATA 1 1 }  { m_axi_gmem3_WVALID VALID 1 1 }  { m_axi_gmem3_WREADY READY 0 1 }  { m_axi_gmem3_WDATA FIFONUM 1 32 }  { m_axi_gmem3_WSTRB STRB 1 4 }  { m_axi_gmem3_WLAST LAST 1 1 }  { m_axi_gmem3_WID ID 1 1 }  { m_axi_gmem3_WUSER DATA 1 1 }  { m_axi_gmem3_ARVALID VALID 1 1 }  { m_axi_gmem3_ARREADY READY 0 1 }  { m_axi_gmem3_ARADDR ADDR 1 64 }  { m_axi_gmem3_ARID ID 1 1 }  { m_axi_gmem3_ARLEN SIZE 1 8 }  { m_axi_gmem3_ARSIZE BURST 1 3 }  { m_axi_gmem3_ARBURST LOCK 1 2 }  { m_axi_gmem3_ARLOCK CACHE 1 2 }  { m_axi_gmem3_ARCACHE PROT 1 4 }  { m_axi_gmem3_ARPROT QOS 1 3 }  { m_axi_gmem3_ARQOS REGION 1 4 }  { m_axi_gmem3_ARREGION USER 1 4 }  { m_axi_gmem3_ARUSER DATA 1 1 }  { m_axi_gmem3_RVALID VALID 0 1 }  { m_axi_gmem3_RREADY READY 1 1 }  { m_axi_gmem3_RDATA FIFONUM 0 32 }  { m_axi_gmem3_RLAST LAST 0 1 }  { m_axi_gmem3_RID ID 0 1 }  { m_axi_gmem3_RUSER DATA 0 1 }  { m_axi_gmem3_RRESP RESP 0 2 }  { m_axi_gmem3_BVALID VALID 0 1 }  { m_axi_gmem3_BREADY READY 1 1 }  { m_axi_gmem3_BRESP RESP 0 2 }  { m_axi_gmem3_BID ID 0 1 }  { m_axi_gmem3_BUSER DATA 0 1 } } }
}

set maxi_interface_dict [dict create]
dict set maxi_interface_dict gmem0 {NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_ONLY}
dict set maxi_interface_dict gmem1 {NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_ONLY}
dict set maxi_interface_dict gmem2 {NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_ONLY}
dict set maxi_interface_dict gmem3 {NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE WRITE_ONLY}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
	{ gmem0 64 }
	{ gmem1 64 }
	{ gmem2 64 }
	{ gmem3 64 }
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
	{ gmem0 64 }
	{ gmem1 64 }
	{ gmem2 64 }
	{ gmem3 64 }
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
