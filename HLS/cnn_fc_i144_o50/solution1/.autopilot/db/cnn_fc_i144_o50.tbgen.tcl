set C_TypeInfoList {{ 
"cnn_fc_i144_o50" : [[], { "return": [[], "void"]} , [{"ExternC" : 0}], [ {"inStream": [[], {"reference": "0"}] }, {"outStream": [[], {"reference": "0"}] }, {"weight": [[], {"array": [ {"array": ["1", [50]]}, [144]]}] }, {"bias": [[], {"array": ["1", [50]]}] }, {"ctrl": [[],"1"] }],[],""], 
"1": [ "uint32_t", {"typedef": [[[], {"scalar": "unsigned int"}],""]}], 
"0": [ "stream<ap_axiu<32, 2, 5, 6> >", {"hls_type": {"stream": [[[[],"2"]],"3"]}}], 
"2": [ "ap_axiu<32, 2, 5, 6>", {"struct": [[],[{"D":[[], {"scalar": { "int": 32}}]},{"U":[[], {"scalar": { "int": 2}}]},{"TI":[[], {"scalar": { "int": 5}}]},{"TD":[[], {"scalar": { "int": 6}}]}],[{ "data": [[], "4"]},{ "keep": [[], "5"]},{ "strb": [[], "5"]},{ "user": [[], "6"]},{ "last": [[], "7"]},{ "id": [[], "8"]},{ "dest": [[], "9"]}],""]}], 
"7": [ "ap_uint<1>", {"hls_type": {"ap_uint": [[[[], {"scalar": { "int": 1}}]],""]}}], 
"6": [ "ap_uint<2>", {"hls_type": {"ap_uint": [[[[], {"scalar": { "int": 2}}]],""]}}], 
"5": [ "ap_uint<4>", {"hls_type": {"ap_uint": [[[[], {"scalar": { "int": 4}}]],""]}}], 
"8": [ "ap_uint<5>", {"hls_type": {"ap_uint": [[[[], {"scalar": { "int": 5}}]],""]}}], 
"4": [ "ap_uint<32>", {"hls_type": {"ap_uint": [[[[], {"scalar": { "int": 32}}]],""]}}], 
"9": [ "ap_uint<6>", {"hls_type": {"ap_uint": [[[[], {"scalar": { "int": 6}}]],""]}}],
"3": ["hls", ""]
}}
set moduleName cnn_fc_i144_o50
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set C_modelName {cnn_fc_i144_o50}
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
	{ weight_10 int 32 regular {axi_slave 0}  }
	{ weight_11 int 32 regular {axi_slave 0}  }
	{ weight_12 int 32 regular {axi_slave 0}  }
	{ weight_13 int 32 regular {axi_slave 0}  }
	{ weight_14 int 32 regular {axi_slave 0}  }
	{ weight_15 int 32 regular {axi_slave 0}  }
	{ weight_16 int 32 regular {axi_slave 0}  }
	{ weight_17 int 32 regular {axi_slave 0}  }
	{ weight_18 int 32 regular {axi_slave 0}  }
	{ weight_19 int 32 regular {axi_slave 0}  }
	{ weight_20 int 32 regular {axi_slave 0}  }
	{ weight_21 int 32 regular {axi_slave 0}  }
	{ weight_22 int 32 regular {axi_slave 0}  }
	{ weight_23 int 32 regular {axi_slave 0}  }
	{ weight_24 int 32 regular {axi_slave 0}  }
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
 	{ "Name" : "weight_0", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_memory","bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "weight","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 143,"step" : 1},{"low" : 0,"up" : 1,"step" : 1}]}]}], "offset" : {"in":2048}, "offset_end" : {"in":4095}} , 
 	{ "Name" : "weight_1", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_memory","bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "weight","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 143,"step" : 1},{"low" : 2,"up" : 3,"step" : 1}]}]}], "offset" : {"in":4096}, "offset_end" : {"in":6143}} , 
 	{ "Name" : "weight_2", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_memory","bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "weight","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 143,"step" : 1},{"low" : 4,"up" : 5,"step" : 1}]}]}], "offset" : {"in":6144}, "offset_end" : {"in":8191}} , 
 	{ "Name" : "weight_3", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_memory","bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "weight","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 143,"step" : 1},{"low" : 6,"up" : 7,"step" : 1}]}]}], "offset" : {"in":8192}, "offset_end" : {"in":10239}} , 
 	{ "Name" : "weight_4", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_memory","bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "weight","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 143,"step" : 1},{"low" : 8,"up" : 9,"step" : 1}]}]}], "offset" : {"in":10240}, "offset_end" : {"in":12287}} , 
 	{ "Name" : "weight_5", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_memory","bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "weight","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 143,"step" : 1},{"low" : 10,"up" : 11,"step" : 1}]}]}], "offset" : {"in":12288}, "offset_end" : {"in":14335}} , 
 	{ "Name" : "weight_6", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_memory","bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "weight","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 143,"step" : 1},{"low" : 12,"up" : 13,"step" : 1}]}]}], "offset" : {"in":14336}, "offset_end" : {"in":16383}} , 
 	{ "Name" : "weight_7", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_memory","bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "weight","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 143,"step" : 1},{"low" : 14,"up" : 15,"step" : 1}]}]}], "offset" : {"in":16384}, "offset_end" : {"in":18431}} , 
 	{ "Name" : "weight_8", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_memory","bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "weight","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 143,"step" : 1},{"low" : 16,"up" : 17,"step" : 1}]}]}], "offset" : {"in":18432}, "offset_end" : {"in":20479}} , 
 	{ "Name" : "weight_9", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_memory","bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "weight","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 143,"step" : 1},{"low" : 18,"up" : 19,"step" : 1}]}]}], "offset" : {"in":20480}, "offset_end" : {"in":22527}} , 
 	{ "Name" : "weight_10", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_memory","bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "weight","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 143,"step" : 1},{"low" : 20,"up" : 21,"step" : 1}]}]}], "offset" : {"in":22528}, "offset_end" : {"in":24575}} , 
 	{ "Name" : "weight_11", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_memory","bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "weight","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 143,"step" : 1},{"low" : 22,"up" : 23,"step" : 1}]}]}], "offset" : {"in":24576}, "offset_end" : {"in":26623}} , 
 	{ "Name" : "weight_12", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_memory","bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "weight","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 143,"step" : 1},{"low" : 24,"up" : 25,"step" : 1}]}]}], "offset" : {"in":26624}, "offset_end" : {"in":28671}} , 
 	{ "Name" : "weight_13", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_memory","bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "weight","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 143,"step" : 1},{"low" : 26,"up" : 27,"step" : 1}]}]}], "offset" : {"in":28672}, "offset_end" : {"in":30719}} , 
 	{ "Name" : "weight_14", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_memory","bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "weight","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 143,"step" : 1},{"low" : 28,"up" : 29,"step" : 1}]}]}], "offset" : {"in":30720}, "offset_end" : {"in":32767}} , 
 	{ "Name" : "weight_15", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_memory","bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "weight","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 143,"step" : 1},{"low" : 30,"up" : 31,"step" : 1}]}]}], "offset" : {"in":32768}, "offset_end" : {"in":34815}} , 
 	{ "Name" : "weight_16", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_memory","bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "weight","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 143,"step" : 1},{"low" : 32,"up" : 33,"step" : 1}]}]}], "offset" : {"in":34816}, "offset_end" : {"in":36863}} , 
 	{ "Name" : "weight_17", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_memory","bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "weight","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 143,"step" : 1},{"low" : 34,"up" : 35,"step" : 1}]}]}], "offset" : {"in":36864}, "offset_end" : {"in":38911}} , 
 	{ "Name" : "weight_18", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_memory","bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "weight","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 143,"step" : 1},{"low" : 36,"up" : 37,"step" : 1}]}]}], "offset" : {"in":38912}, "offset_end" : {"in":40959}} , 
 	{ "Name" : "weight_19", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_memory","bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "weight","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 143,"step" : 1},{"low" : 38,"up" : 39,"step" : 1}]}]}], "offset" : {"in":40960}, "offset_end" : {"in":43007}} , 
 	{ "Name" : "weight_20", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_memory","bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "weight","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 143,"step" : 1},{"low" : 40,"up" : 41,"step" : 1}]}]}], "offset" : {"in":43008}, "offset_end" : {"in":45055}} , 
 	{ "Name" : "weight_21", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_memory","bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "weight","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 143,"step" : 1},{"low" : 42,"up" : 43,"step" : 1}]}]}], "offset" : {"in":45056}, "offset_end" : {"in":47103}} , 
 	{ "Name" : "weight_22", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_memory","bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "weight","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 143,"step" : 1},{"low" : 44,"up" : 45,"step" : 1}]}]}], "offset" : {"in":47104}, "offset_end" : {"in":49151}} , 
 	{ "Name" : "weight_23", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_memory","bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "weight","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 143,"step" : 1},{"low" : 46,"up" : 47,"step" : 1}]}]}], "offset" : {"in":49152}, "offset_end" : {"in":51199}} , 
 	{ "Name" : "weight_24", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_memory","bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "weight","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 143,"step" : 1},{"low" : 48,"up" : 49,"step" : 1}]}]}], "offset" : {"in":51200}, "offset_end" : {"in":53247}} , 
 	{ "Name" : "bias", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_memory","bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "bias","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 49,"step" : 1}]}]}], "offset" : {"in":53248}, "offset_end" : {"in":53503}} , 
 	{ "Name" : "ctrl", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "ctrl","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}], "offset" : {"in":53504}, "offset_end" : {"in":53511}} ]}
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
	{ s_axi_CTRL_AWADDR sc_in sc_lv 16 signal -1 } 
	{ s_axi_CTRL_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_CTRL_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_CTRL_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_CTRL_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_CTRL_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_CTRL_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_CTRL_ARADDR sc_in sc_lv 16 signal -1 } 
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
	{ "name": "s_axi_CTRL_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "CTRL", "role": "AWADDR" },"address":[{"name":"cnn_fc_i144_o50","role":"start","value":"0","valid_bit":"0"},{"name":"cnn_fc_i144_o50","role":"continue","value":"0","valid_bit":"4"},{"name":"cnn_fc_i144_o50","role":"auto_start","value":"0","valid_bit":"7"},{"name":"weight_0","role":"data","value":"2048"},{"name":"weight_1","role":"data","value":"4096"},{"name":"weight_2","role":"data","value":"6144"},{"name":"weight_3","role":"data","value":"8192"},{"name":"weight_4","role":"data","value":"10240"},{"name":"weight_5","role":"data","value":"12288"},{"name":"weight_6","role":"data","value":"14336"},{"name":"weight_7","role":"data","value":"16384"},{"name":"weight_8","role":"data","value":"18432"},{"name":"weight_9","role":"data","value":"20480"},{"name":"weight_10","role":"data","value":"22528"},{"name":"weight_11","role":"data","value":"24576"},{"name":"weight_12","role":"data","value":"26624"},{"name":"weight_13","role":"data","value":"28672"},{"name":"weight_14","role":"data","value":"30720"},{"name":"weight_15","role":"data","value":"32768"},{"name":"weight_16","role":"data","value":"34816"},{"name":"weight_17","role":"data","value":"36864"},{"name":"weight_18","role":"data","value":"38912"},{"name":"weight_19","role":"data","value":"40960"},{"name":"weight_20","role":"data","value":"43008"},{"name":"weight_21","role":"data","value":"45056"},{"name":"weight_22","role":"data","value":"47104"},{"name":"weight_23","role":"data","value":"49152"},{"name":"weight_24","role":"data","value":"51200"},{"name":"bias","role":"data","value":"53248"},{"name":"ctrl","role":"data","value":"53504"}] },
	{ "name": "s_axi_CTRL_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "AWVALID" } },
	{ "name": "s_axi_CTRL_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "AWREADY" } },
	{ "name": "s_axi_CTRL_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "WVALID" } },
	{ "name": "s_axi_CTRL_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "WREADY" } },
	{ "name": "s_axi_CTRL_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "CTRL", "role": "WDATA" } },
	{ "name": "s_axi_CTRL_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "CTRL", "role": "WSTRB" } },
	{ "name": "s_axi_CTRL_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "CTRL", "role": "ARADDR" },"address":[{"name":"cnn_fc_i144_o50","role":"start","value":"0","valid_bit":"0"},{"name":"cnn_fc_i144_o50","role":"done","value":"0","valid_bit":"1"},{"name":"cnn_fc_i144_o50","role":"idle","value":"0","valid_bit":"2"},{"name":"cnn_fc_i144_o50","role":"ready","value":"0","valid_bit":"3"},{"name":"cnn_fc_i144_o50","role":"auto_start","value":"0","valid_bit":"7"}] },
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
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "4", "6", "8", "10", "12", "14", "16", "18", "20", "22", "24", "26", "28", "30", "32", "34", "36", "38", "40", "42", "44", "46", "48", "50", "52", "53"],
		"CDFG" : "cnn_fc_i144_o50",
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
		{"Name" : "weight_10", "Type" : "Memory", "Direction" : "I"},
		{"Name" : "weight_11", "Type" : "Memory", "Direction" : "I"},
		{"Name" : "weight_12", "Type" : "Memory", "Direction" : "I"},
		{"Name" : "weight_13", "Type" : "Memory", "Direction" : "I"},
		{"Name" : "weight_14", "Type" : "Memory", "Direction" : "I"},
		{"Name" : "weight_15", "Type" : "Memory", "Direction" : "I"},
		{"Name" : "weight_16", "Type" : "Memory", "Direction" : "I"},
		{"Name" : "weight_17", "Type" : "Memory", "Direction" : "I"},
		{"Name" : "weight_18", "Type" : "Memory", "Direction" : "I"},
		{"Name" : "weight_19", "Type" : "Memory", "Direction" : "I"},
		{"Name" : "weight_20", "Type" : "Memory", "Direction" : "I"},
		{"Name" : "weight_21", "Type" : "Memory", "Direction" : "I"},
		{"Name" : "weight_22", "Type" : "Memory", "Direction" : "I"},
		{"Name" : "weight_23", "Type" : "Memory", "Direction" : "I"},
		{"Name" : "weight_24", "Type" : "Memory", "Direction" : "I"},
		{"Name" : "bias", "Type" : "Memory", "Direction" : "I"},
		{"Name" : "ctrl", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.cnn_fc_i144_o50_CTRL_s_axi_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fixed_point_mul_fu_1836", "Parent" : "0", "Child" : ["3"],
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
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fixed_point_mul_fu_1836.cnn_fc_i144_o50_mbkb_U0", "Parent" : "2"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fixed_point_mul_fu_1842", "Parent" : "0", "Child" : ["5"],
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
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fixed_point_mul_fu_1842.cnn_fc_i144_o50_mbkb_U0", "Parent" : "4"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fixed_point_mul_fu_1849", "Parent" : "0", "Child" : ["7"],
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
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fixed_point_mul_fu_1849.cnn_fc_i144_o50_mbkb_U0", "Parent" : "6"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fixed_point_mul_fu_1855", "Parent" : "0", "Child" : ["9"],
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
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fixed_point_mul_fu_1855.cnn_fc_i144_o50_mbkb_U0", "Parent" : "8"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fixed_point_mul_fu_1862", "Parent" : "0", "Child" : ["11"],
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
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fixed_point_mul_fu_1862.cnn_fc_i144_o50_mbkb_U0", "Parent" : "10"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fixed_point_mul_fu_1868", "Parent" : "0", "Child" : ["13"],
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
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fixed_point_mul_fu_1868.cnn_fc_i144_o50_mbkb_U0", "Parent" : "12"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fixed_point_mul_fu_1875", "Parent" : "0", "Child" : ["15"],
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
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fixed_point_mul_fu_1875.cnn_fc_i144_o50_mbkb_U0", "Parent" : "14"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fixed_point_mul_fu_1881", "Parent" : "0", "Child" : ["17"],
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
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fixed_point_mul_fu_1881.cnn_fc_i144_o50_mbkb_U0", "Parent" : "16"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fixed_point_mul_fu_1888", "Parent" : "0", "Child" : ["19"],
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
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fixed_point_mul_fu_1888.cnn_fc_i144_o50_mbkb_U0", "Parent" : "18"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fixed_point_mul_fu_1894", "Parent" : "0", "Child" : ["21"],
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
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fixed_point_mul_fu_1894.cnn_fc_i144_o50_mbkb_U0", "Parent" : "20"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fixed_point_mul_fu_1901", "Parent" : "0", "Child" : ["23"],
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
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fixed_point_mul_fu_1901.cnn_fc_i144_o50_mbkb_U0", "Parent" : "22"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fixed_point_mul_fu_1907", "Parent" : "0", "Child" : ["25"],
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
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fixed_point_mul_fu_1907.cnn_fc_i144_o50_mbkb_U0", "Parent" : "24"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fixed_point_mul_fu_1914", "Parent" : "0", "Child" : ["27"],
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
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fixed_point_mul_fu_1914.cnn_fc_i144_o50_mbkb_U0", "Parent" : "26"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fixed_point_mul_fu_1920", "Parent" : "0", "Child" : ["29"],
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
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fixed_point_mul_fu_1920.cnn_fc_i144_o50_mbkb_U0", "Parent" : "28"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fixed_point_mul_fu_1927", "Parent" : "0", "Child" : ["31"],
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
	{"ID" : "31", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fixed_point_mul_fu_1927.cnn_fc_i144_o50_mbkb_U0", "Parent" : "30"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fixed_point_mul_fu_1933", "Parent" : "0", "Child" : ["33"],
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
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fixed_point_mul_fu_1933.cnn_fc_i144_o50_mbkb_U0", "Parent" : "32"},
	{"ID" : "34", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fixed_point_mul_fu_1940", "Parent" : "0", "Child" : ["35"],
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
	{"ID" : "35", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fixed_point_mul_fu_1940.cnn_fc_i144_o50_mbkb_U0", "Parent" : "34"},
	{"ID" : "36", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fixed_point_mul_fu_1946", "Parent" : "0", "Child" : ["37"],
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
	{"ID" : "37", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fixed_point_mul_fu_1946.cnn_fc_i144_o50_mbkb_U0", "Parent" : "36"},
	{"ID" : "38", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fixed_point_mul_fu_1953", "Parent" : "0", "Child" : ["39"],
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
	{"ID" : "39", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fixed_point_mul_fu_1953.cnn_fc_i144_o50_mbkb_U0", "Parent" : "38"},
	{"ID" : "40", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fixed_point_mul_fu_1959", "Parent" : "0", "Child" : ["41"],
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
	{"ID" : "41", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fixed_point_mul_fu_1959.cnn_fc_i144_o50_mbkb_U0", "Parent" : "40"},
	{"ID" : "42", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fixed_point_mul_fu_1966", "Parent" : "0", "Child" : ["43"],
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
	{"ID" : "43", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fixed_point_mul_fu_1966.cnn_fc_i144_o50_mbkb_U0", "Parent" : "42"},
	{"ID" : "44", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fixed_point_mul_fu_1972", "Parent" : "0", "Child" : ["45"],
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
	{"ID" : "45", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fixed_point_mul_fu_1972.cnn_fc_i144_o50_mbkb_U0", "Parent" : "44"},
	{"ID" : "46", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fixed_point_mul_fu_1979", "Parent" : "0", "Child" : ["47"],
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
	{"ID" : "47", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fixed_point_mul_fu_1979.cnn_fc_i144_o50_mbkb_U0", "Parent" : "46"},
	{"ID" : "48", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fixed_point_mul_fu_1985", "Parent" : "0", "Child" : ["49"],
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
	{"ID" : "49", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fixed_point_mul_fu_1985.cnn_fc_i144_o50_mbkb_U0", "Parent" : "48"},
	{"ID" : "50", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fixed_point_mul_fu_1992", "Parent" : "0", "Child" : ["51"],
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
	{"ID" : "51", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fixed_point_mul_fu_1992.cnn_fc_i144_o50_mbkb_U0", "Parent" : "50"},
	{"ID" : "52", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.cnn_fc_i144_o50_mcud_U3", "Parent" : "0"},
	{"ID" : "53", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.cnn_fc_i144_o50_mcud_U4", "Parent" : "0"}]}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "456", "Max" : "456"}
	, {"Name" : "Interval", "Min" : "457", "Max" : "457"}
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
