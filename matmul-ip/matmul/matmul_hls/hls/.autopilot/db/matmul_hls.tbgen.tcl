set moduleName matmul_hls
set isTopModule 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set C_modelName {matmul_hls}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ stream_in_V_data_V int 32 regular {axi_s 0 volatile  { stream_in Data } }  }
	{ stream_in_V_keep_V int 4 regular {axi_s 0 volatile  { stream_in Keep } }  }
	{ stream_in_V_strb_V int 4 regular {axi_s 0 volatile  { stream_in Strb } }  }
	{ stream_in_V_last_V int 1 regular {axi_s 0 volatile  { stream_in Last } }  }
	{ stream_out_V_data_V int 32 regular {axi_s 1 volatile  { stream_out Data } }  }
	{ stream_out_V_keep_V int 4 regular {axi_s 1 volatile  { stream_out Keep } }  }
	{ stream_out_V_strb_V int 4 regular {axi_s 1 volatile  { stream_out Strb } }  }
	{ stream_out_V_last_V int 1 regular {axi_s 1 volatile  { stream_out Last } }  }
}
set hasAXIMCache 0
set hasAXIML2Cache 0
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "stream_in_V_data_V", "interface" : "axis", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "stream_in_V_keep_V", "interface" : "axis", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "stream_in_V_strb_V", "interface" : "axis", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "stream_in_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "stream_out_V_data_V", "interface" : "axis", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "stream_out_V_keep_V", "interface" : "axis", "bitwidth" : 4, "direction" : "WRITEONLY"} , 
 	{ "Name" : "stream_out_V_strb_V", "interface" : "axis", "bitwidth" : 4, "direction" : "WRITEONLY"} , 
 	{ "Name" : "stream_out_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 32
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ stream_in_TDATA sc_in sc_lv 32 signal 0 } 
	{ stream_in_TVALID sc_in sc_logic 1 invld 3 } 
	{ stream_in_TREADY sc_out sc_logic 1 inacc 3 } 
	{ stream_in_TKEEP sc_in sc_lv 4 signal 1 } 
	{ stream_in_TSTRB sc_in sc_lv 4 signal 2 } 
	{ stream_in_TLAST sc_in sc_lv 1 signal 3 } 
	{ stream_out_TDATA sc_out sc_lv 32 signal 4 } 
	{ stream_out_TVALID sc_out sc_logic 1 outvld 7 } 
	{ stream_out_TREADY sc_in sc_logic 1 outacc 7 } 
	{ stream_out_TKEEP sc_out sc_lv 4 signal 5 } 
	{ stream_out_TSTRB sc_out sc_lv 4 signal 6 } 
	{ stream_out_TLAST sc_out sc_lv 1 signal 7 } 
	{ s_axi_control_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_AWADDR sc_in sc_lv 4 signal -1 } 
	{ s_axi_control_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_control_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_control_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_ARADDR sc_in sc_lv 4 signal -1 } 
	{ s_axi_control_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_control_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_control_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_BRESP sc_out sc_lv 2 signal -1 } 
	{ interrupt sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "s_axi_control_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "control", "role": "AWADDR" },"address":[{"name":"matmul_hls","role":"start","value":"0","valid_bit":"0"},{"name":"matmul_hls","role":"continue","value":"0","valid_bit":"4"},{"name":"matmul_hls","role":"auto_start","value":"0","valid_bit":"7"}] },
	{ "name": "s_axi_control_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWVALID" } },
	{ "name": "s_axi_control_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWREADY" } },
	{ "name": "s_axi_control_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WVALID" } },
	{ "name": "s_axi_control_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WREADY" } },
	{ "name": "s_axi_control_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "WDATA" } },
	{ "name": "s_axi_control_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "control", "role": "WSTRB" } },
	{ "name": "s_axi_control_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "control", "role": "ARADDR" },"address":[{"name":"matmul_hls","role":"start","value":"0","valid_bit":"0"},{"name":"matmul_hls","role":"done","value":"0","valid_bit":"1"},{"name":"matmul_hls","role":"idle","value":"0","valid_bit":"2"},{"name":"matmul_hls","role":"ready","value":"0","valid_bit":"3"},{"name":"matmul_hls","role":"auto_start","value":"0","valid_bit":"7"}] },
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
 	{ "name": "stream_in_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "stream_in_V_data_V", "role": "default" }} , 
 	{ "name": "stream_in_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "stream_in_V_last_V", "role": "default" }} , 
 	{ "name": "stream_in_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "stream_in_V_last_V", "role": "default" }} , 
 	{ "name": "stream_in_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "stream_in_V_keep_V", "role": "default" }} , 
 	{ "name": "stream_in_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "stream_in_V_strb_V", "role": "default" }} , 
 	{ "name": "stream_in_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "stream_in_V_last_V", "role": "default" }} , 
 	{ "name": "stream_out_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "stream_out_V_data_V", "role": "default" }} , 
 	{ "name": "stream_out_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "stream_out_V_last_V", "role": "default" }} , 
 	{ "name": "stream_out_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "stream_out_V_last_V", "role": "default" }} , 
 	{ "name": "stream_out_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "stream_out_V_keep_V", "role": "default" }} , 
 	{ "name": "stream_out_TSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "stream_out_V_strb_V", "role": "default" }} , 
 	{ "name": "stream_out_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "stream_out_V_last_V", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "51", "53", "87", "90", "91", "92", "93", "94", "95", "96", "97", "98"],
		"CDFG" : "matmul_hls",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "114718", "EstimateLatencyMax" : "114718",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "stream_in_V_data_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "stream_in",
				"SubConnect" : [
					{"ID" : "51", "SubInstance" : "grp_matmul_hls_Pipeline_VITIS_LOOP_43_3_VITIS_LOOP_44_4_fu_288", "Port" : "stream_in_V_data_V", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "49", "SubInstance" : "grp_matmul_hls_Pipeline_VITIS_LOOP_35_1_VITIS_LOOP_36_2_fu_260", "Port" : "stream_in_V_data_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "stream_in_V_keep_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "stream_in",
				"SubConnect" : [
					{"ID" : "51", "SubInstance" : "grp_matmul_hls_Pipeline_VITIS_LOOP_43_3_VITIS_LOOP_44_4_fu_288", "Port" : "stream_in_V_keep_V", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "49", "SubInstance" : "grp_matmul_hls_Pipeline_VITIS_LOOP_35_1_VITIS_LOOP_36_2_fu_260", "Port" : "stream_in_V_keep_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "stream_in_V_strb_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "stream_in",
				"SubConnect" : [
					{"ID" : "51", "SubInstance" : "grp_matmul_hls_Pipeline_VITIS_LOOP_43_3_VITIS_LOOP_44_4_fu_288", "Port" : "stream_in_V_strb_V", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "49", "SubInstance" : "grp_matmul_hls_Pipeline_VITIS_LOOP_35_1_VITIS_LOOP_36_2_fu_260", "Port" : "stream_in_V_strb_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "stream_in_V_last_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "stream_in",
				"SubConnect" : [
					{"ID" : "51", "SubInstance" : "grp_matmul_hls_Pipeline_VITIS_LOOP_43_3_VITIS_LOOP_44_4_fu_288", "Port" : "stream_in_V_last_V", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "49", "SubInstance" : "grp_matmul_hls_Pipeline_VITIS_LOOP_35_1_VITIS_LOOP_36_2_fu_260", "Port" : "stream_in_V_last_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "stream_out_V_data_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "stream_out",
				"SubConnect" : [
					{"ID" : "87", "SubInstance" : "grp_matmul_hls_Pipeline_VITIS_LOOP_64_8_VITIS_LOOP_65_9_fu_368", "Port" : "stream_out_V_data_V", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "stream_out_V_keep_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "stream_out",
				"SubConnect" : [
					{"ID" : "87", "SubInstance" : "grp_matmul_hls_Pipeline_VITIS_LOOP_64_8_VITIS_LOOP_65_9_fu_368", "Port" : "stream_out_V_keep_V", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "stream_out_V_strb_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "stream_out",
				"SubConnect" : [
					{"ID" : "87", "SubInstance" : "grp_matmul_hls_Pipeline_VITIS_LOOP_64_8_VITIS_LOOP_65_9_fu_368", "Port" : "stream_out_V_strb_V", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "stream_out_V_last_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "stream_out",
				"SubConnect" : [
					{"ID" : "87", "SubInstance" : "grp_matmul_hls_Pipeline_VITIS_LOOP_64_8_VITIS_LOOP_65_9_fu_368", "Port" : "stream_out_V_last_V", "Inst_start_state" : "9", "Inst_end_state" : "10"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_1_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_2_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_3_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_4_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_5_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_6_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_7_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_8_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_9_U", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_10_U", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_11_U", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_12_U", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_13_U", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_14_U", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_15_U", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_U", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_1_U", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_2_U", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_3_U", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_4_U", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_5_U", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_6_U", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_7_U", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_8_U", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_9_U", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_10_U", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_11_U", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_12_U", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_13_U", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_14_U", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_15_U", "Parent" : "0"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_U", "Parent" : "0"},
	{"ID" : "34", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_1_U", "Parent" : "0"},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_2_U", "Parent" : "0"},
	{"ID" : "36", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_3_U", "Parent" : "0"},
	{"ID" : "37", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_4_U", "Parent" : "0"},
	{"ID" : "38", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_5_U", "Parent" : "0"},
	{"ID" : "39", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_6_U", "Parent" : "0"},
	{"ID" : "40", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_7_U", "Parent" : "0"},
	{"ID" : "41", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_8_U", "Parent" : "0"},
	{"ID" : "42", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_9_U", "Parent" : "0"},
	{"ID" : "43", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_10_U", "Parent" : "0"},
	{"ID" : "44", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_11_U", "Parent" : "0"},
	{"ID" : "45", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_12_U", "Parent" : "0"},
	{"ID" : "46", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_13_U", "Parent" : "0"},
	{"ID" : "47", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_14_U", "Parent" : "0"},
	{"ID" : "48", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_15_U", "Parent" : "0"},
	{"ID" : "49", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_matmul_hls_Pipeline_VITIS_LOOP_35_1_VITIS_LOOP_36_2_fu_260", "Parent" : "0", "Child" : ["50"],
		"CDFG" : "matmul_hls_Pipeline_VITIS_LOOP_35_1_VITIS_LOOP_36_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "16387", "EstimateLatencyMax" : "16387",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "A_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "A_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "A_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "A_4", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "A_5", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "A_6", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "A_7", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "A_8", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "A_9", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "A_10", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "A_11", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "A_12", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "A_13", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "A_14", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "A_15", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "stream_in_V_data_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "stream_in",
				"BlockSignal" : [
					{"Name" : "stream_in_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "stream_in_V_keep_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "stream_in"},
			{"Name" : "stream_in_V_strb_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "stream_in"},
			{"Name" : "stream_in_V_last_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "stream_in"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_35_1_VITIS_LOOP_36_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "50", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matmul_hls_Pipeline_VITIS_LOOP_35_1_VITIS_LOOP_36_2_fu_260.flow_control_loop_pipe_sequential_init_U", "Parent" : "49"},
	{"ID" : "51", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_matmul_hls_Pipeline_VITIS_LOOP_43_3_VITIS_LOOP_44_4_fu_288", "Parent" : "0", "Child" : ["52"],
		"CDFG" : "matmul_hls_Pipeline_VITIS_LOOP_43_3_VITIS_LOOP_44_4",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "16387", "EstimateLatencyMax" : "16387",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "B", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "B_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "B_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "B_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "B_4", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "B_5", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "B_6", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "B_7", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "B_8", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "B_9", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "B_10", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "B_11", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "B_12", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "B_13", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "B_14", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "B_15", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "stream_in_V_data_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "stream_in",
				"BlockSignal" : [
					{"Name" : "stream_in_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "stream_in_V_keep_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "stream_in"},
			{"Name" : "stream_in_V_strb_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "stream_in"},
			{"Name" : "stream_in_V_last_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "stream_in"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_43_3_VITIS_LOOP_44_4", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "52", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matmul_hls_Pipeline_VITIS_LOOP_43_3_VITIS_LOOP_44_4_fu_288.flow_control_loop_pipe_sequential_init_U", "Parent" : "51"},
	{"ID" : "53", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_matmul_hls_Pipeline_VITIS_LOOP_51_5_VITIS_LOOP_52_6_fu_316", "Parent" : "0", "Child" : ["54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67", "68", "69", "70", "71", "72", "73", "74", "75", "76", "77", "78", "79", "80", "81", "82", "83", "84", "85", "86"],
		"CDFG" : "matmul_hls_Pipeline_VITIS_LOOP_51_5_VITIS_LOOP_52_6",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "65547", "EstimateLatencyMax" : "65547",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "A_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "A_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "A_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "A_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "A_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "A_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "A_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "A_8", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "A_9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "A_10", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "A_11", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "A_12", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "A_13", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "A_14", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "A_15", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "B", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "B_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "B_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "B_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "B_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "B_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "B_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "B_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "B_8", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "B_9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "B_10", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "B_11", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "B_12", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "B_13", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "B_14", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "B_15", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "C", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "C_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "C_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "C_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "C_4", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "C_5", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "C_6", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "C_7", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "C_8", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "C_9", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "C_10", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "C_11", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "C_12", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "C_13", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "C_14", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "C_15", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_51_5_VITIS_LOOP_52_6", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "4", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage1", "LastStateIter" : "ap_enable_reg_pp0_iter3", "LastStateBlock" : "ap_block_pp0_stage1_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter3", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "54", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matmul_hls_Pipeline_VITIS_LOOP_51_5_VITIS_LOOP_52_6_fu_316.mul_32s_32s_32_2_1_U41", "Parent" : "53"},
	{"ID" : "55", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matmul_hls_Pipeline_VITIS_LOOP_51_5_VITIS_LOOP_52_6_fu_316.mul_32s_32s_32_2_1_U42", "Parent" : "53"},
	{"ID" : "56", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matmul_hls_Pipeline_VITIS_LOOP_51_5_VITIS_LOOP_52_6_fu_316.mul_32s_32s_32_2_1_U43", "Parent" : "53"},
	{"ID" : "57", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matmul_hls_Pipeline_VITIS_LOOP_51_5_VITIS_LOOP_52_6_fu_316.mul_32s_32s_32_2_1_U44", "Parent" : "53"},
	{"ID" : "58", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matmul_hls_Pipeline_VITIS_LOOP_51_5_VITIS_LOOP_52_6_fu_316.mul_32s_32s_32_2_1_U45", "Parent" : "53"},
	{"ID" : "59", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matmul_hls_Pipeline_VITIS_LOOP_51_5_VITIS_LOOP_52_6_fu_316.mul_32s_32s_32_2_1_U46", "Parent" : "53"},
	{"ID" : "60", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matmul_hls_Pipeline_VITIS_LOOP_51_5_VITIS_LOOP_52_6_fu_316.mul_32s_32s_32_2_1_U47", "Parent" : "53"},
	{"ID" : "61", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matmul_hls_Pipeline_VITIS_LOOP_51_5_VITIS_LOOP_52_6_fu_316.mul_32s_32s_32_2_1_U48", "Parent" : "53"},
	{"ID" : "62", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matmul_hls_Pipeline_VITIS_LOOP_51_5_VITIS_LOOP_52_6_fu_316.mul_32s_32s_32_2_1_U49", "Parent" : "53"},
	{"ID" : "63", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matmul_hls_Pipeline_VITIS_LOOP_51_5_VITIS_LOOP_52_6_fu_316.mul_32s_32s_32_2_1_U50", "Parent" : "53"},
	{"ID" : "64", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matmul_hls_Pipeline_VITIS_LOOP_51_5_VITIS_LOOP_52_6_fu_316.mul_32s_32s_32_2_1_U51", "Parent" : "53"},
	{"ID" : "65", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matmul_hls_Pipeline_VITIS_LOOP_51_5_VITIS_LOOP_52_6_fu_316.mul_32s_32s_32_2_1_U52", "Parent" : "53"},
	{"ID" : "66", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matmul_hls_Pipeline_VITIS_LOOP_51_5_VITIS_LOOP_52_6_fu_316.mul_32s_32s_32_2_1_U53", "Parent" : "53"},
	{"ID" : "67", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matmul_hls_Pipeline_VITIS_LOOP_51_5_VITIS_LOOP_52_6_fu_316.mul_32s_32s_32_2_1_U54", "Parent" : "53"},
	{"ID" : "68", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matmul_hls_Pipeline_VITIS_LOOP_51_5_VITIS_LOOP_52_6_fu_316.mul_32s_32s_32_2_1_U55", "Parent" : "53"},
	{"ID" : "69", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matmul_hls_Pipeline_VITIS_LOOP_51_5_VITIS_LOOP_52_6_fu_316.mul_32s_32s_32_2_1_U56", "Parent" : "53"},
	{"ID" : "70", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matmul_hls_Pipeline_VITIS_LOOP_51_5_VITIS_LOOP_52_6_fu_316.mul_32s_32s_32_2_1_U57", "Parent" : "53"},
	{"ID" : "71", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matmul_hls_Pipeline_VITIS_LOOP_51_5_VITIS_LOOP_52_6_fu_316.mul_32s_32s_32_2_1_U58", "Parent" : "53"},
	{"ID" : "72", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matmul_hls_Pipeline_VITIS_LOOP_51_5_VITIS_LOOP_52_6_fu_316.mul_32s_32s_32_2_1_U59", "Parent" : "53"},
	{"ID" : "73", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matmul_hls_Pipeline_VITIS_LOOP_51_5_VITIS_LOOP_52_6_fu_316.mul_32s_32s_32_2_1_U60", "Parent" : "53"},
	{"ID" : "74", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matmul_hls_Pipeline_VITIS_LOOP_51_5_VITIS_LOOP_52_6_fu_316.mul_32s_32s_32_2_1_U61", "Parent" : "53"},
	{"ID" : "75", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matmul_hls_Pipeline_VITIS_LOOP_51_5_VITIS_LOOP_52_6_fu_316.mul_32s_32s_32_2_1_U62", "Parent" : "53"},
	{"ID" : "76", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matmul_hls_Pipeline_VITIS_LOOP_51_5_VITIS_LOOP_52_6_fu_316.mul_32s_32s_32_2_1_U63", "Parent" : "53"},
	{"ID" : "77", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matmul_hls_Pipeline_VITIS_LOOP_51_5_VITIS_LOOP_52_6_fu_316.mul_32s_32s_32_2_1_U64", "Parent" : "53"},
	{"ID" : "78", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matmul_hls_Pipeline_VITIS_LOOP_51_5_VITIS_LOOP_52_6_fu_316.mul_32s_32s_32_2_1_U65", "Parent" : "53"},
	{"ID" : "79", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matmul_hls_Pipeline_VITIS_LOOP_51_5_VITIS_LOOP_52_6_fu_316.mul_32s_32s_32_2_1_U66", "Parent" : "53"},
	{"ID" : "80", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matmul_hls_Pipeline_VITIS_LOOP_51_5_VITIS_LOOP_52_6_fu_316.mul_32s_32s_32_2_1_U67", "Parent" : "53"},
	{"ID" : "81", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matmul_hls_Pipeline_VITIS_LOOP_51_5_VITIS_LOOP_52_6_fu_316.mul_32s_32s_32_2_1_U68", "Parent" : "53"},
	{"ID" : "82", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matmul_hls_Pipeline_VITIS_LOOP_51_5_VITIS_LOOP_52_6_fu_316.mul_32s_32s_32_2_1_U69", "Parent" : "53"},
	{"ID" : "83", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matmul_hls_Pipeline_VITIS_LOOP_51_5_VITIS_LOOP_52_6_fu_316.mul_32s_32s_32_2_1_U70", "Parent" : "53"},
	{"ID" : "84", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matmul_hls_Pipeline_VITIS_LOOP_51_5_VITIS_LOOP_52_6_fu_316.mul_32s_32s_32_2_1_U71", "Parent" : "53"},
	{"ID" : "85", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matmul_hls_Pipeline_VITIS_LOOP_51_5_VITIS_LOOP_52_6_fu_316.mul_32s_32s_32_2_1_U72", "Parent" : "53"},
	{"ID" : "86", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matmul_hls_Pipeline_VITIS_LOOP_51_5_VITIS_LOOP_52_6_fu_316.flow_control_loop_pipe_sequential_init_U", "Parent" : "53"},
	{"ID" : "87", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_matmul_hls_Pipeline_VITIS_LOOP_64_8_VITIS_LOOP_65_9_fu_368", "Parent" : "0", "Child" : ["88", "89"],
		"CDFG" : "matmul_hls_Pipeline_VITIS_LOOP_64_8_VITIS_LOOP_65_9",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "16387", "EstimateLatencyMax" : "16387",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "C", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "C_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "C_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "C_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "C_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "C_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "C_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "C_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "C_8", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "C_9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "C_10", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "C_11", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "C_12", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "C_13", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "C_14", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "C_15", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "stream_out_V_data_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "stream_out",
				"BlockSignal" : [
					{"Name" : "stream_out_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "stream_out_V_keep_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "stream_out"},
			{"Name" : "stream_out_V_strb_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "stream_out"},
			{"Name" : "stream_out_V_last_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "stream_out"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_64_8_VITIS_LOOP_65_9", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "88", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matmul_hls_Pipeline_VITIS_LOOP_64_8_VITIS_LOOP_65_9_fu_368.sparsemux_33_4_32_1_1_U122", "Parent" : "87"},
	{"ID" : "89", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matmul_hls_Pipeline_VITIS_LOOP_64_8_VITIS_LOOP_65_9_fu_368.flow_control_loop_pipe_sequential_init_U", "Parent" : "87"},
	{"ID" : "90", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.control_s_axi_U", "Parent" : "0"},
	{"ID" : "91", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_stream_in_V_data_V_U", "Parent" : "0"},
	{"ID" : "92", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_stream_in_V_keep_V_U", "Parent" : "0"},
	{"ID" : "93", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_stream_in_V_strb_V_U", "Parent" : "0"},
	{"ID" : "94", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_stream_in_V_last_V_U", "Parent" : "0"},
	{"ID" : "95", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_stream_out_V_data_V_U", "Parent" : "0"},
	{"ID" : "96", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_stream_out_V_keep_V_U", "Parent" : "0"},
	{"ID" : "97", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_stream_out_V_strb_V_U", "Parent" : "0"},
	{"ID" : "98", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_stream_out_V_last_V_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	matmul_hls {
		stream_in_V_data_V {Type I LastRead 0 FirstWrite -1}
		stream_in_V_keep_V {Type I LastRead 0 FirstWrite -1}
		stream_in_V_strb_V {Type I LastRead 0 FirstWrite -1}
		stream_in_V_last_V {Type I LastRead 0 FirstWrite -1}
		stream_out_V_data_V {Type O LastRead -1 FirstWrite 2}
		stream_out_V_keep_V {Type O LastRead -1 FirstWrite 2}
		stream_out_V_strb_V {Type O LastRead -1 FirstWrite 2}
		stream_out_V_last_V {Type O LastRead -1 FirstWrite 2}}
	matmul_hls_Pipeline_VITIS_LOOP_35_1_VITIS_LOOP_36_2 {
		A {Type O LastRead -1 FirstWrite 2}
		A_1 {Type O LastRead -1 FirstWrite 2}
		A_2 {Type O LastRead -1 FirstWrite 2}
		A_3 {Type O LastRead -1 FirstWrite 2}
		A_4 {Type O LastRead -1 FirstWrite 2}
		A_5 {Type O LastRead -1 FirstWrite 2}
		A_6 {Type O LastRead -1 FirstWrite 2}
		A_7 {Type O LastRead -1 FirstWrite 2}
		A_8 {Type O LastRead -1 FirstWrite 2}
		A_9 {Type O LastRead -1 FirstWrite 2}
		A_10 {Type O LastRead -1 FirstWrite 2}
		A_11 {Type O LastRead -1 FirstWrite 2}
		A_12 {Type O LastRead -1 FirstWrite 2}
		A_13 {Type O LastRead -1 FirstWrite 2}
		A_14 {Type O LastRead -1 FirstWrite 2}
		A_15 {Type O LastRead -1 FirstWrite 2}
		stream_in_V_data_V {Type I LastRead 0 FirstWrite -1}
		stream_in_V_keep_V {Type I LastRead 0 FirstWrite -1}
		stream_in_V_strb_V {Type I LastRead 0 FirstWrite -1}
		stream_in_V_last_V {Type I LastRead 0 FirstWrite -1}}
	matmul_hls_Pipeline_VITIS_LOOP_43_3_VITIS_LOOP_44_4 {
		B {Type O LastRead -1 FirstWrite 2}
		B_1 {Type O LastRead -1 FirstWrite 2}
		B_2 {Type O LastRead -1 FirstWrite 2}
		B_3 {Type O LastRead -1 FirstWrite 2}
		B_4 {Type O LastRead -1 FirstWrite 2}
		B_5 {Type O LastRead -1 FirstWrite 2}
		B_6 {Type O LastRead -1 FirstWrite 2}
		B_7 {Type O LastRead -1 FirstWrite 2}
		B_8 {Type O LastRead -1 FirstWrite 2}
		B_9 {Type O LastRead -1 FirstWrite 2}
		B_10 {Type O LastRead -1 FirstWrite 2}
		B_11 {Type O LastRead -1 FirstWrite 2}
		B_12 {Type O LastRead -1 FirstWrite 2}
		B_13 {Type O LastRead -1 FirstWrite 2}
		B_14 {Type O LastRead -1 FirstWrite 2}
		B_15 {Type O LastRead -1 FirstWrite 2}
		stream_in_V_data_V {Type I LastRead 0 FirstWrite -1}
		stream_in_V_keep_V {Type I LastRead 0 FirstWrite -1}
		stream_in_V_strb_V {Type I LastRead 0 FirstWrite -1}
		stream_in_V_last_V {Type I LastRead 0 FirstWrite -1}}
	matmul_hls_Pipeline_VITIS_LOOP_51_5_VITIS_LOOP_52_6 {
		A {Type I LastRead 5 FirstWrite -1}
		A_1 {Type I LastRead 5 FirstWrite -1}
		A_2 {Type I LastRead 5 FirstWrite -1}
		A_3 {Type I LastRead 5 FirstWrite -1}
		A_4 {Type I LastRead 5 FirstWrite -1}
		A_5 {Type I LastRead 5 FirstWrite -1}
		A_6 {Type I LastRead 5 FirstWrite -1}
		A_7 {Type I LastRead 5 FirstWrite -1}
		A_8 {Type I LastRead 5 FirstWrite -1}
		A_9 {Type I LastRead 5 FirstWrite -1}
		A_10 {Type I LastRead 5 FirstWrite -1}
		A_11 {Type I LastRead 5 FirstWrite -1}
		A_12 {Type I LastRead 5 FirstWrite -1}
		A_13 {Type I LastRead 5 FirstWrite -1}
		A_14 {Type I LastRead 5 FirstWrite -1}
		A_15 {Type I LastRead 5 FirstWrite -1}
		B {Type I LastRead 5 FirstWrite -1}
		B_1 {Type I LastRead 5 FirstWrite -1}
		B_2 {Type I LastRead 5 FirstWrite -1}
		B_3 {Type I LastRead 5 FirstWrite -1}
		B_4 {Type I LastRead 5 FirstWrite -1}
		B_5 {Type I LastRead 5 FirstWrite -1}
		B_6 {Type I LastRead 5 FirstWrite -1}
		B_7 {Type I LastRead 5 FirstWrite -1}
		B_8 {Type I LastRead 5 FirstWrite -1}
		B_9 {Type I LastRead 5 FirstWrite -1}
		B_10 {Type I LastRead 5 FirstWrite -1}
		B_11 {Type I LastRead 5 FirstWrite -1}
		B_12 {Type I LastRead 5 FirstWrite -1}
		B_13 {Type I LastRead 5 FirstWrite -1}
		B_14 {Type I LastRead 5 FirstWrite -1}
		B_15 {Type I LastRead 5 FirstWrite -1}
		C {Type O LastRead -1 FirstWrite 13}
		C_1 {Type O LastRead -1 FirstWrite 13}
		C_2 {Type O LastRead -1 FirstWrite 13}
		C_3 {Type O LastRead -1 FirstWrite 13}
		C_4 {Type O LastRead -1 FirstWrite 13}
		C_5 {Type O LastRead -1 FirstWrite 13}
		C_6 {Type O LastRead -1 FirstWrite 13}
		C_7 {Type O LastRead -1 FirstWrite 13}
		C_8 {Type O LastRead -1 FirstWrite 13}
		C_9 {Type O LastRead -1 FirstWrite 13}
		C_10 {Type O LastRead -1 FirstWrite 13}
		C_11 {Type O LastRead -1 FirstWrite 13}
		C_12 {Type O LastRead -1 FirstWrite 13}
		C_13 {Type O LastRead -1 FirstWrite 13}
		C_14 {Type O LastRead -1 FirstWrite 13}
		C_15 {Type O LastRead -1 FirstWrite 13}}
	matmul_hls_Pipeline_VITIS_LOOP_64_8_VITIS_LOOP_65_9 {
		C {Type I LastRead 1 FirstWrite -1}
		C_1 {Type I LastRead 1 FirstWrite -1}
		C_2 {Type I LastRead 1 FirstWrite -1}
		C_3 {Type I LastRead 1 FirstWrite -1}
		C_4 {Type I LastRead 1 FirstWrite -1}
		C_5 {Type I LastRead 1 FirstWrite -1}
		C_6 {Type I LastRead 1 FirstWrite -1}
		C_7 {Type I LastRead 1 FirstWrite -1}
		C_8 {Type I LastRead 1 FirstWrite -1}
		C_9 {Type I LastRead 1 FirstWrite -1}
		C_10 {Type I LastRead 1 FirstWrite -1}
		C_11 {Type I LastRead 1 FirstWrite -1}
		C_12 {Type I LastRead 1 FirstWrite -1}
		C_13 {Type I LastRead 1 FirstWrite -1}
		C_14 {Type I LastRead 1 FirstWrite -1}
		C_15 {Type I LastRead 1 FirstWrite -1}
		stream_out_V_data_V {Type O LastRead -1 FirstWrite 2}
		stream_out_V_keep_V {Type O LastRead -1 FirstWrite 2}
		stream_out_V_strb_V {Type O LastRead -1 FirstWrite 2}
		stream_out_V_last_V {Type O LastRead -1 FirstWrite 2}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "114718", "Max" : "114718"}
	, {"Name" : "Interval", "Min" : "114719", "Max" : "114719"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	stream_in_V_data_V { axis {  { stream_in_TDATA in_data 0 32 } } }
	stream_in_V_keep_V { axis {  { stream_in_TKEEP in_data 0 4 } } }
	stream_in_V_strb_V { axis {  { stream_in_TSTRB in_data 0 4 } } }
	stream_in_V_last_V { axis {  { stream_in_TVALID in_vld 0 1 }  { stream_in_TREADY in_acc 1 1 }  { stream_in_TLAST in_data 0 1 } } }
	stream_out_V_data_V { axis {  { stream_out_TDATA out_data 1 32 } } }
	stream_out_V_keep_V { axis {  { stream_out_TKEEP out_data 1 4 } } }
	stream_out_V_strb_V { axis {  { stream_out_TSTRB out_data 1 4 } } }
	stream_out_V_last_V { axis {  { stream_out_TVALID out_vld 1 1 }  { stream_out_TREADY out_acc 0 1 }  { stream_out_TLAST out_data 1 1 } } }
}

set maxi_interface_dict [dict create]

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
