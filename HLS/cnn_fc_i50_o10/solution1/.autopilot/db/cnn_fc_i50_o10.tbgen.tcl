set C_TypeInfoList {{ 
"cnn_fc_i50_o10" : [[], { "return": [[], "void"]} , [{"ExternC" : 0}], [ {"inStream": [[], {"reference": "0"}] }, {"outStream": [[], {"reference": "0"}] }, {"weight": [[], {"array": [ {"array": ["1", [10]]}, [50]]}] }, {"bias": [[], {"array": ["1", [10]]}] }, {"ctrl": [[],"1"] }],[],""], 
"1": [ "uint32_t", {"typedef": [[[], {"scalar": "unsigned int"}],""]}], 
"0": [ "stream<ap_axiu<32, 2, 5, 6> >", {"hls_type": {"stream": [[[[],"2"]],"3"]}}], 
"2": [ "ap_axiu<32, 2, 5, 6>", {"struct": [[],[{"D":[[], {"scalar": { "int": 32}}]},{"U":[[], {"scalar": { "int": 2}}]},{"TI":[[], {"scalar": { "int": 5}}]},{"TD":[[], {"scalar": { "int": 6}}]}],[{ "data": [[], "4"]},{ "keep": [[], "5"]},{ "strb": [[], "5"]},{ "user": [[], "6"]},{ "last": [[], "7"]},{ "id": [[], "8"]},{ "dest": [[], "9"]}],""]}], 
"9": [ "ap_uint<6>", {"hls_type": {"ap_uint": [[[[], {"scalar": { "int": 6}}]],""]}}], 
"4": [ "ap_uint<32>", {"hls_type": {"ap_uint": [[[[], {"scalar": { "int": 32}}]],""]}}], 
"7": [ "ap_uint<1>", {"hls_type": {"ap_uint": [[[[], {"scalar": { "int": 1}}]],""]}}], 
"5": [ "ap_uint<4>", {"hls_type": {"ap_uint": [[[[], {"scalar": { "int": 4}}]],""]}}], 
"6": [ "ap_uint<2>", {"hls_type": {"ap_uint": [[[[], {"scalar": { "int": 2}}]],""]}}], 
"8": [ "ap_uint<5>", {"hls_type": {"ap_uint": [[[[], {"scalar": { "int": 5}}]],""]}}],
"3": ["hls", ""]
}}
set moduleName cnn_fc_i50_o10
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set C_modelName {cnn_fc_i50_o10}
set C_modelType { void 0 }
set C_modelArgList {
	{ inStream_V_data_V int 32 regular {axi_s 0 volatile  { inStream Data } }  }
	{ inStream_V_keep_V int 4 regular {axi_s 0 volatile  { inStream Keep } }  }
	{ inStream_V_strb_V int 4 regular {axi_s 0 volatile  { inStream Strb } }  }
	{ inStream_V_user_V int 2 regular {axi_s 0 volatile  { inStream User } }  }
	{ inStream_V_last_V int 1 regular {axi_s 0 volatile  { inStream Last } }  }
	{ inStream_V_id_V int 5 regular {axi_s 0 volatile  { inStream ID } }  }
	{ inStream_V_dest_V int 6 regular {axi_s 0 volatile  { inStream Dest } }  }
	{ outStream_V_data_V int 32 regular {axi_s 1 volatile  { outStream Data } }  }
	{ outStream_V_keep_V int 4 regular {axi_s 1 volatile  { outStream Keep } }  }
	{ outStream_V_strb_V int 4 regular {axi_s 1 volatile  { outStream Strb } }  }
	{ outStream_V_user_V int 2 regular {axi_s 1 volatile  { outStream User } }  }
	{ outStream_V_last_V int 1 regular {axi_s 1 volatile  { outStream Last } }  }
	{ outStream_V_id_V int 5 regular {axi_s 1 volatile  { outStream ID } }  }
	{ outStream_V_dest_V int 6 regular {axi_s 1 volatile  { outStream Dest } }  }
	{ weight_0 int 32 regular {axi_slave 0}  }
	{ weight_1 int 32 regular {axi_slave 0}  }
	{ weight_2 int 32 regular {axi_slave 0}  }
	{ weight_3 int 32 regular {axi_slave 0}  }
	{ weight_4 int 32 regular {axi_slave 0}  }
	{ weight_5 int 32 regular {axi_slave 0}  }
	{ weight_6 int 32 regular {axi_slave 0}  }
	{ weight_7 int 32 regular {axi_slave 0}  }
	{ weight_8 int 32 regular {axi_slave 0}  }
	{ weight_9 int 32 regular {axi_slave 0}  }
	{ bias int 32 regular {axi_slave 0}  }
	{ ctrl int 32 regular {axi_slave 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "inStream_V_data_V", "interface" : "axis", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "inStream.V.data.V","cData": "uint32","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "inStream_V_keep_V", "interface" : "axis", "bitwidth" : 4, "direction" : "READONLY", "bitSlice":[{"low":0,"up":3,"cElement": [{"cName": "inStream.V.keep.V","cData": "uint4","bit_use": { "low": 0,"up": 3},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "inStream_V_strb_V", "interface" : "axis", "bitwidth" : 4, "direction" : "READONLY", "bitSlice":[{"low":0,"up":3,"cElement": [{"cName": "inStream.V.strb.V","cData": "uint4","bit_use": { "low": 0,"up": 3},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "inStream_V_user_V", "interface" : "axis", "bitwidth" : 2, "direction" : "READONLY", "bitSlice":[{"low":0,"up":1,"cElement": [{"cName": "inStream.V.user.V","cData": "uint2","bit_use": { "low": 0,"up": 1},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "inStream_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "inStream.V.last.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "inStream_V_id_V", "interface" : "axis", "bitwidth" : 5, "direction" : "READONLY", "bitSlice":[{"low":0,"up":4,"cElement": [{"cName": "inStream.V.id.V","cData": "uint5","bit_use": { "low": 0,"up": 4},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "inStream_V_dest_V", "interface" : "axis", "bitwidth" : 6, "direction" : "READONLY", "bitSlice":[{"low":0,"up":5,"cElement": [{"cName": "inStream.V.dest.V","cData": "uint6","bit_use": { "low": 0,"up": 5},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "outStream_V_data_V", "interface" : "axis", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "outStream.V.data.V","cData": "uint32","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "outStream_V_keep_V", "interface" : "axis", "bitwidth" : 4, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":3,"cElement": [{"cName": "outStream.V.keep.V","cData": "uint4","bit_use": { "low": 0,"up": 3},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "outStream_V_strb_V", "interface" : "axis", "bitwidth" : 4, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":3,"cElement": [{"cName": "outStream.V.strb.V","cData": "uint4","bit_use": { "low": 0,"up": 3},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "outStream_V_user_V", "interface" : "axis", "bitwidth" : 2, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":1,"cElement": [{"cName": "outStream.V.user.V","cData": "uint2","bit_use": { "low": 0,"up": 1},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "outStream_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "outStream.V.last.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "outStream_V_id_V", "interface" : "axis", "bitwidth" : 5, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":4,"cElement": [{"cName": "outStream.V.id.V","cData": "uint5","bit_use": { "low": 0,"up": 4},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "outStream_V_dest_V", "interface" : "axis", "bitwidth" : 6, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":5,"cElement": [{"cName": "outStream.V.dest.V","cData": "uint6","bit_use": { "low": 0,"up": 5},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "weight_0", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_memory","bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "weight","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 49,"step" : 1},{"low" : 0,"up" : 0,"step" : 2}]}]}], "offset" : {"in":256}, "offset_end" : {"in":511}} , 
 	{ "Name" : "weight_1", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_memory","bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "weight","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 49,"step" : 1},{"low" : 1,"up" : 1,"step" : 2}]}]}], "offset" : {"in":512}, "offset_end" : {"in":767}} , 
 	{ "Name" : "weight_2", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_memory","bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "weight","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 49,"step" : 1},{"low" : 2,"up" : 2,"step" : 2}]}]}], "offset" : {"in":768}, "offset_end" : {"in":1023}} , 
 	{ "Name" : "weight_3", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_memory","bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "weight","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 49,"step" : 1},{"low" : 3,"up" : 3,"step" : 2}]}]}], "offset" : {"in":1024}, "offset_end" : {"in":1279}} , 
 	{ "Name" : "weight_4", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_memory","bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "weight","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 49,"step" : 1},{"low" : 4,"up" : 4,"step" : 2}]}]}], "offset" : {"in":1280}, "offset_end" : {"in":1535}} , 
 	{ "Name" : "weight_5", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_memory","bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "weight","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 49,"step" : 1},{"low" : 5,"up" : 5,"step" : 2}]}]}], "offset" : {"in":1536}, "offset_end" : {"in":1791}} , 
 	{ "Name" : "weight_6", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_memory","bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "weight","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 49,"step" : 1},{"low" : 6,"up" : 6,"step" : 2}]}]}], "offset" : {"in":1792}, "offset_end" : {"in":2047}} , 
 	{ "Name" : "weight_7", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_memory","bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "weight","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 49,"step" : 1},{"low" : 7,"up" : 7,"step" : 2}]}]}], "offset" : {"in":2048}, "offset_end" : {"in":2303}} , 
 	{ "Name" : "weight_8", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_memory","bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "weight","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 49,"step" : 1},{"low" : 8,"up" : 8,"step" : 2}]}]}], "offset" : {"in":2304}, "offset_end" : {"in":2559}} , 
 	{ "Name" : "weight_9", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_memory","bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "weight","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 49,"step" : 1},{"low" : 9,"up" : 9,"step" : 2}]}]}], "offset" : {"in":2560}, "offset_end" : {"in":2815}} , 
 	{ "Name" : "bias", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_memory","bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "bias","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 9,"step" : 1}]}]}], "offset" : {"in":2816}, "offset_end" : {"in":2879}} , 
 	{ "Name" : "ctrl", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "ctrl","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}], "offset" : {"in":2880}, "offset_end" : {"in":2887}} ]}
# RTL Port declarations: 
set portNum 38
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ inStream_TDATA sc_in sc_lv 32 signal 0 } 
	{ inStream_TVALID sc_in sc_logic 1 invld 6 } 
	{ inStream_TREADY sc_out sc_logic 1 inacc 6 } 
	{ inStream_TKEEP sc_in sc_lv 4 signal 1 } 
	{ inStream_TSTRB sc_in sc_lv 4 signal 2 } 
	{ inStream_TUSER sc_in sc_lv 2 signal 3 } 
	{ inStream_TLAST sc_in sc_lv 1 signal 4 } 
	{ inStream_TID sc_in sc_lv 5 signal 5 } 
	{ inStream_TDEST sc_in sc_lv 6 signal 6 } 
	{ outStream_TDATA sc_out sc_lv 32 signal 7 } 
	{ outStream_TVALID sc_out sc_logic 1 outvld 13 } 
	{ outStream_TREADY sc_in sc_logic 1 outacc 13 } 
	{ outStream_TKEEP sc_out sc_lv 4 signal 8 } 
	{ outStream_TSTRB sc_out sc_lv 4 signal 9 } 
	{ outStream_TUSER sc_out sc_lv 2 signal 10 } 
	{ outStream_TLAST sc_out sc_lv 1 signal 11 } 
	{ outStream_TID sc_out sc_lv 5 signal 12 } 
	{ outStream_TDEST sc_out sc_lv 6 signal 13 } 
	{ s_axi_CTRL_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_CTRL_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_CTRL_AWADDR sc_in sc_lv 12 signal -1 } 
	{ s_axi_CTRL_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_CTRL_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_CTRL_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_CTRL_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_CTRL_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_CTRL_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_CTRL_ARADDR sc_in sc_lv 12 signal -1 } 
	{ s_axi_CTRL_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_CTRL_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_CTRL_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_CTRL_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_CTRL_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_CTRL_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_CTRL_BRESP sc_out sc_lv 2 signal -1 } 
	{ interrupt sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "s_axi_CTRL_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "CTRL", "role": "AWADDR" },"address":[{"name":"cnn_fc_i50_o10","role":"start","value":"0","valid_bit":"0"},{"name":"cnn_fc_i50_o10","role":"continue","value":"0","valid_bit":"4"},{"name":"cnn_fc_i50_o10","role":"auto_start","value":"0","valid_bit":"7"},{"name":"weight_0","role":"data","value":"256"},{"name":"weight_1","role":"data","value":"512"},{"name":"weight_2","role":"data","value":"768"},{"name":"weight_3","role":"data","value":"1024"},{"name":"weight_4","role":"data","value":"1280"},{"name":"weight_5","role":"data","value":"1536"},{"name":"weight_6","role":"data","value":"1792"},{"name":"weight_7","role":"data","value":"2048"},{"name":"weight_8","role":"data","value":"2304"},{"name":"weight_9","role":"data","value":"2560"},{"name":"bias","role":"data","value":"2816"},{"name":"ctrl","role":"data","value":"2880"}] },
	{ "name": "s_axi_CTRL_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "AWVALID" } },
	{ "name": "s_axi_CTRL_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "AWREADY" } },
	{ "name": "s_axi_CTRL_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "WVALID" } },
	{ "name": "s_axi_CTRL_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "WREADY" } },
	{ "name": "s_axi_CTRL_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "CTRL", "role": "WDATA" } },
	{ "name": "s_axi_CTRL_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "CTRL", "role": "WSTRB" } },
	{ "name": "s_axi_CTRL_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "CTRL", "role": "ARADDR" },"address":[{"name":"cnn_fc_i50_o10","role":"start","value":"0","valid_bit":"0"},{"name":"cnn_fc_i50_o10","role":"done","value":"0","valid_bit":"1"},{"name":"cnn_fc_i50_o10","role":"idle","value":"0","valid_bit":"2"},{"name":"cnn_fc_i50_o10","role":"ready","value":"0","valid_bit":"3"},{"name":"cnn_fc_i50_o10","role":"auto_start","value":"0","valid_bit":"7"}] },
	{ "name": "s_axi_CTRL_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "ARVALID" } },
	{ "name": "s_axi_CTRL_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "ARREADY" } },
	{ "name": "s_axi_CTRL_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "RVALID" } },
	{ "name": "s_axi_CTRL_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "RREADY" } },
	{ "name": "s_axi_CTRL_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "CTRL", "role": "RDATA" } },
	{ "name": "s_axi_CTRL_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "CTRL", "role": "RRESP" } },
	{ "name": "s_axi_CTRL_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "BVALID" } },
	{ "name": "s_axi_CTRL_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "BREADY" } },
	{ "name": "s_axi_CTRL_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "CTRL", "role": "BRESP" } },
	{ "name": "interrupt", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "interrupt" } }, 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "inStream_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "inStream_V_data_V", "role": "default" }} , 
 	{ "name": "inStream_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "inStream_V_dest_V", "role": "default" }} , 
 	{ "name": "inStream_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "inStream_V_dest_V", "role": "default" }} , 
 	{ "name": "inStream_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "inStream_V_keep_V", "role": "default" }} , 
 	{ "name": "inStream_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "inStream_V_strb_V", "role": "default" }} , 
 	{ "name": "inStream_TUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "inStream_V_user_V", "role": "default" }} , 
 	{ "name": "inStream_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "inStream_V_last_V", "role": "default" }} , 
 	{ "name": "inStream_TID", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "inStream_V_id_V", "role": "default" }} , 
 	{ "name": "inStream_TDEST", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "inStream_V_dest_V", "role": "default" }} , 
 	{ "name": "outStream_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "outStream_V_data_V", "role": "default" }} , 
 	{ "name": "outStream_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "outStream_V_dest_V", "role": "default" }} , 
 	{ "name": "outStream_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "outStream_V_dest_V", "role": "default" }} , 
 	{ "name": "outStream_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "outStream_V_keep_V", "role": "default" }} , 
 	{ "name": "outStream_TSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "outStream_V_strb_V", "role": "default" }} , 
 	{ "name": "outStream_TUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "outStream_V_user_V", "role": "default" }} , 
 	{ "name": "outStream_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "outStream_V_last_V", "role": "default" }} , 
 	{ "name": "outStream_TID", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "outStream_V_id_V", "role": "default" }} , 
 	{ "name": "outStream_TDEST", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "outStream_V_dest_V", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "4", "6", "8", "10", "12", "14", "16", "18", "20", "22", "23"],
		"CDFG" : "cnn_fc_i50_o10",
		"VariableLatency" : "1",
		"AlignedPipeline" : "0",
		"UnalignedPipeline" : "0",
		"ProcessNetwork" : "0",
		"Combinational" : "0",
		"ControlExist" : "1",
		"Port" : [
		{"Name" : "inStream_V_data_V", "Type" : "Axis", "Direction" : "I",
			"BlockSignal" : [
			{"Name" : "inStream_TDATA_blk_n", "Type" : "RtlSignal"}]},
		{"Name" : "inStream_V_keep_V", "Type" : "Axis", "Direction" : "I"},
		{"Name" : "inStream_V_strb_V", "Type" : "Axis", "Direction" : "I"},
		{"Name" : "inStream_V_user_V", "Type" : "Axis", "Direction" : "I"},
		{"Name" : "inStream_V_last_V", "Type" : "Axis", "Direction" : "I"},
		{"Name" : "inStream_V_id_V", "Type" : "Axis", "Direction" : "I"},
		{"Name" : "inStream_V_dest_V", "Type" : "Axis", "Direction" : "I"},
		{"Name" : "outStream_V_data_V", "Type" : "Axis", "Direction" : "O",
			"BlockSignal" : [
			{"Name" : "outStream_TDATA_blk_n", "Type" : "RtlSignal"}]},
		{"Name" : "outStream_V_keep_V", "Type" : "Axis", "Direction" : "O"},
		{"Name" : "outStream_V_strb_V", "Type" : "Axis", "Direction" : "O"},
		{"Name" : "outStream_V_user_V", "Type" : "Axis", "Direction" : "O"},
		{"Name" : "outStream_V_last_V", "Type" : "Axis", "Direction" : "O"},
		{"Name" : "outStream_V_id_V", "Type" : "Axis", "Direction" : "O"},
		{"Name" : "outStream_V_dest_V", "Type" : "Axis", "Direction" : "O"},
		{"Name" : "weight_0", "Type" : "Memory", "Direction" : "I"},
		{"Name" : "weight_1", "Type" : "Memory", "Direction" : "I"},
		{"Name" : "weight_2", "Type" : "Memory", "Direction" : "I"},
		{"Name" : "weight_3", "Type" : "Memory", "Direction" : "I"},
		{"Name" : "weight_4", "Type" : "Memory", "Direction" : "I"},
		{"Name" : "weight_5", "Type" : "Memory", "Direction" : "I"},
		{"Name" : "weight_6", "Type" : "Memory", "Direction" : "I"},
		{"Name" : "weight_7", "Type" : "Memory", "Direction" : "I"},
		{"Name" : "weight_8", "Type" : "Memory", "Direction" : "I"},
		{"Name" : "weight_9", "Type" : "Memory", "Direction" : "I"},
		{"Name" : "bias", "Type" : "Memory", "Direction" : "I"},
		{"Name" : "ctrl", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.cnn_fc_i50_o10_CTRL_s_axi_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fixed_point_mul_fu_746", "Parent" : "0", "Child" : ["3"],
		"CDFG" : "fixed_point_mul",
		"VariableLatency" : "0",
		"AlignedPipeline" : "1",
		"UnalignedPipeline" : "0",
		"ProcessNetwork" : "0",
		"Combinational" : "0",
		"ControlExist" : "0",
		"Port" : [
		{"Name" : "a", "Type" : "None", "Direction" : "I"},
		{"Name" : "b", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fixed_point_mul_fu_746.cnn_fc_i50_o10_mubkb_U0", "Parent" : "2"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fixed_point_mul_fu_753", "Parent" : "0", "Child" : ["5"],
		"CDFG" : "fixed_point_mul",
		"VariableLatency" : "0",
		"AlignedPipeline" : "1",
		"UnalignedPipeline" : "0",
		"ProcessNetwork" : "0",
		"Combinational" : "0",
		"ControlExist" : "0",
		"Port" : [
		{"Name" : "a", "Type" : "None", "Direction" : "I"},
		{"Name" : "b", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fixed_point_mul_fu_753.cnn_fc_i50_o10_mubkb_U0", "Parent" : "4"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fixed_point_mul_fu_760", "Parent" : "0", "Child" : ["7"],
		"CDFG" : "fixed_point_mul",
		"VariableLatency" : "0",
		"AlignedPipeline" : "1",
		"UnalignedPipeline" : "0",
		"ProcessNetwork" : "0",
		"Combinational" : "0",
		"ControlExist" : "0",
		"Port" : [
		{"Name" : "a", "Type" : "None", "Direction" : "I"},
		{"Name" : "b", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fixed_point_mul_fu_760.cnn_fc_i50_o10_mubkb_U0", "Parent" : "6"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fixed_point_mul_fu_767", "Parent" : "0", "Child" : ["9"],
		"CDFG" : "fixed_point_mul",
		"VariableLatency" : "0",
		"AlignedPipeline" : "1",
		"UnalignedPipeline" : "0",
		"ProcessNetwork" : "0",
		"Combinational" : "0",
		"ControlExist" : "0",
		"Port" : [
		{"Name" : "a", "Type" : "None", "Direction" : "I"},
		{"Name" : "b", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fixed_point_mul_fu_767.cnn_fc_i50_o10_mubkb_U0", "Parent" : "8"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fixed_point_mul_fu_774", "Parent" : "0", "Child" : ["11"],
		"CDFG" : "fixed_point_mul",
		"VariableLatency" : "0",
		"AlignedPipeline" : "1",
		"UnalignedPipeline" : "0",
		"ProcessNetwork" : "0",
		"Combinational" : "0",
		"ControlExist" : "0",
		"Port" : [
		{"Name" : "a", "Type" : "None", "Direction" : "I"},
		{"Name" : "b", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fixed_point_mul_fu_774.cnn_fc_i50_o10_mubkb_U0", "Parent" : "10"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fixed_point_mul_fu_781", "Parent" : "0", "Child" : ["13"],
		"CDFG" : "fixed_point_mul",
		"VariableLatency" : "0",
		"AlignedPipeline" : "1",
		"UnalignedPipeline" : "0",
		"ProcessNetwork" : "0",
		"Combinational" : "0",
		"ControlExist" : "0",
		"Port" : [
		{"Name" : "a", "Type" : "None", "Direction" : "I"},
		{"Name" : "b", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fixed_point_mul_fu_781.cnn_fc_i50_o10_mubkb_U0", "Parent" : "12"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fixed_point_mul_fu_788", "Parent" : "0", "Child" : ["15"],
		"CDFG" : "fixed_point_mul",
		"VariableLatency" : "0",
		"AlignedPipeline" : "1",
		"UnalignedPipeline" : "0",
		"ProcessNetwork" : "0",
		"Combinational" : "0",
		"ControlExist" : "0",
		"Port" : [
		{"Name" : "a", "Type" : "None", "Direction" : "I"},
		{"Name" : "b", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fixed_point_mul_fu_788.cnn_fc_i50_o10_mubkb_U0", "Parent" : "14"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fixed_point_mul_fu_795", "Parent" : "0", "Child" : ["17"],
		"CDFG" : "fixed_point_mul",
		"VariableLatency" : "0",
		"AlignedPipeline" : "1",
		"UnalignedPipeline" : "0",
		"ProcessNetwork" : "0",
		"Combinational" : "0",
		"ControlExist" : "0",
		"Port" : [
		{"Name" : "a", "Type" : "None", "Direction" : "I"},
		{"Name" : "b", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fixed_point_mul_fu_795.cnn_fc_i50_o10_mubkb_U0", "Parent" : "16"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fixed_point_mul_fu_802", "Parent" : "0", "Child" : ["19"],
		"CDFG" : "fixed_point_mul",
		"VariableLatency" : "0",
		"AlignedPipeline" : "1",
		"UnalignedPipeline" : "0",
		"ProcessNetwork" : "0",
		"Combinational" : "0",
		"ControlExist" : "0",
		"Port" : [
		{"Name" : "a", "Type" : "None", "Direction" : "I"},
		{"Name" : "b", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fixed_point_mul_fu_802.cnn_fc_i50_o10_mubkb_U0", "Parent" : "18"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fixed_point_mul_fu_809", "Parent" : "0", "Child" : ["21"],
		"CDFG" : "fixed_point_mul",
		"VariableLatency" : "0",
		"AlignedPipeline" : "1",
		"UnalignedPipeline" : "0",
		"ProcessNetwork" : "0",
		"Combinational" : "0",
		"ControlExist" : "0",
		"Port" : [
		{"Name" : "a", "Type" : "None", "Direction" : "I"},
		{"Name" : "b", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fixed_point_mul_fu_809.cnn_fc_i50_o10_mubkb_U0", "Parent" : "20"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.cnn_fc_i50_o10_mucud_U3", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.cnn_fc_i50_o10_mucud_U4", "Parent" : "0"}]}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "96", "Max" : "96"}
	, {"Name" : "Interval", "Min" : "97", "Max" : "97"}
]}

set Spec2ImplPortList { 
	inStream_V_data_V { axis {  { inStream_TDATA in_data 0 32 } } }
	inStream_V_keep_V { axis {  { inStream_TKEEP in_data 0 4 } } }
	inStream_V_strb_V { axis {  { inStream_TSTRB in_data 0 4 } } }
	inStream_V_user_V { axis {  { inStream_TUSER in_data 0 2 } } }
	inStream_V_last_V { axis {  { inStream_TLAST in_data 0 1 } } }
	inStream_V_id_V { axis {  { inStream_TID in_data 0 5 } } }
	inStream_V_dest_V { axis {  { inStream_TVALID in_vld 0 1 }  { inStream_TREADY in_acc 1 1 }  { inStream_TDEST in_data 0 6 } } }
	outStream_V_data_V { axis {  { outStream_TDATA out_data 1 32 } } }
	outStream_V_keep_V { axis {  { outStream_TKEEP out_data 1 4 } } }
	outStream_V_strb_V { axis {  { outStream_TSTRB out_data 1 4 } } }
	outStream_V_user_V { axis {  { outStream_TUSER out_data 1 2 } } }
	outStream_V_last_V { axis {  { outStream_TLAST out_data 1 1 } } }
	outStream_V_id_V { axis {  { outStream_TID out_data 1 5 } } }
	outStream_V_dest_V { axis {  { outStream_TVALID out_vld 1 1 }  { outStream_TREADY out_acc 0 1 }  { outStream_TDEST out_data 1 6 } } }
}

set busDeadlockParameterList { 
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
