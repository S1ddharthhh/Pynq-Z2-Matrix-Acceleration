set moduleName matmul_hls_Pipeline_VITIS_LOOP_35_1_VITIS_LOOP_36_2
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
set DLRegFirstOffset 0
set DLRegItemOffset 0
set C_modelName {matmul_hls_Pipeline_VITIS_LOOP_35_1_VITIS_LOOP_36_2}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict A { MEM_WIDTH 32 MEM_SIZE 4096 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict A_1 { MEM_WIDTH 32 MEM_SIZE 4096 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict A_2 { MEM_WIDTH 32 MEM_SIZE 4096 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict A_3 { MEM_WIDTH 32 MEM_SIZE 4096 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict A_4 { MEM_WIDTH 32 MEM_SIZE 4096 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict A_5 { MEM_WIDTH 32 MEM_SIZE 4096 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict A_6 { MEM_WIDTH 32 MEM_SIZE 4096 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict A_7 { MEM_WIDTH 32 MEM_SIZE 4096 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict A_8 { MEM_WIDTH 32 MEM_SIZE 4096 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict A_9 { MEM_WIDTH 32 MEM_SIZE 4096 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict A_10 { MEM_WIDTH 32 MEM_SIZE 4096 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict A_11 { MEM_WIDTH 32 MEM_SIZE 4096 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict A_12 { MEM_WIDTH 32 MEM_SIZE 4096 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict A_13 { MEM_WIDTH 32 MEM_SIZE 4096 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict A_14 { MEM_WIDTH 32 MEM_SIZE 4096 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict A_15 { MEM_WIDTH 32 MEM_SIZE 4096 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
set C_modelArgList {
	{ A int 32 regular {array 1024 { 3 0 } 0 1 }  }
	{ A_1 int 32 regular {array 1024 { 3 0 } 0 1 }  }
	{ A_2 int 32 regular {array 1024 { 3 0 } 0 1 }  }
	{ A_3 int 32 regular {array 1024 { 3 0 } 0 1 }  }
	{ A_4 int 32 regular {array 1024 { 3 0 } 0 1 }  }
	{ A_5 int 32 regular {array 1024 { 3 0 } 0 1 }  }
	{ A_6 int 32 regular {array 1024 { 3 0 } 0 1 }  }
	{ A_7 int 32 regular {array 1024 { 3 0 } 0 1 }  }
	{ A_8 int 32 regular {array 1024 { 3 0 } 0 1 }  }
	{ A_9 int 32 regular {array 1024 { 3 0 } 0 1 }  }
	{ A_10 int 32 regular {array 1024 { 3 0 } 0 1 }  }
	{ A_11 int 32 regular {array 1024 { 3 0 } 0 1 }  }
	{ A_12 int 32 regular {array 1024 { 3 0 } 0 1 }  }
	{ A_13 int 32 regular {array 1024 { 3 0 } 0 1 }  }
	{ A_14 int 32 regular {array 1024 { 3 0 } 0 1 }  }
	{ A_15 int 32 regular {array 1024 { 3 0 } 0 1 }  }
	{ stream_in_V_data_V int 32 regular {axi_s 0 volatile  { stream_in Data } }  }
	{ stream_in_V_keep_V int 4 regular {axi_s 0 volatile  { stream_in Keep } }  }
	{ stream_in_V_strb_V int 4 regular {axi_s 0 volatile  { stream_in Strb } }  }
	{ stream_in_V_last_V int 1 regular {axi_s 0 volatile  { stream_in Last } }  }
}
set hasAXIMCache 0
set hasAXIML2Cache 0
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "A", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "A_1", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "A_2", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "A_3", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "A_4", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "A_5", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "A_6", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "A_7", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "A_8", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "A_9", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "A_10", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "A_11", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "A_12", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "A_13", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "A_14", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "A_15", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "stream_in_V_data_V", "interface" : "axis", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "stream_in_V_keep_V", "interface" : "axis", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "stream_in_V_strb_V", "interface" : "axis", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "stream_in_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 76
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ stream_in_TVALID sc_in sc_logic 1 invld 16 } 
	{ A_address1 sc_out sc_lv 10 signal 0 } 
	{ A_ce1 sc_out sc_logic 1 signal 0 } 
	{ A_we1 sc_out sc_logic 1 signal 0 } 
	{ A_d1 sc_out sc_lv 32 signal 0 } 
	{ A_1_address1 sc_out sc_lv 10 signal 1 } 
	{ A_1_ce1 sc_out sc_logic 1 signal 1 } 
	{ A_1_we1 sc_out sc_logic 1 signal 1 } 
	{ A_1_d1 sc_out sc_lv 32 signal 1 } 
	{ A_2_address1 sc_out sc_lv 10 signal 2 } 
	{ A_2_ce1 sc_out sc_logic 1 signal 2 } 
	{ A_2_we1 sc_out sc_logic 1 signal 2 } 
	{ A_2_d1 sc_out sc_lv 32 signal 2 } 
	{ A_3_address1 sc_out sc_lv 10 signal 3 } 
	{ A_3_ce1 sc_out sc_logic 1 signal 3 } 
	{ A_3_we1 sc_out sc_logic 1 signal 3 } 
	{ A_3_d1 sc_out sc_lv 32 signal 3 } 
	{ A_4_address1 sc_out sc_lv 10 signal 4 } 
	{ A_4_ce1 sc_out sc_logic 1 signal 4 } 
	{ A_4_we1 sc_out sc_logic 1 signal 4 } 
	{ A_4_d1 sc_out sc_lv 32 signal 4 } 
	{ A_5_address1 sc_out sc_lv 10 signal 5 } 
	{ A_5_ce1 sc_out sc_logic 1 signal 5 } 
	{ A_5_we1 sc_out sc_logic 1 signal 5 } 
	{ A_5_d1 sc_out sc_lv 32 signal 5 } 
	{ A_6_address1 sc_out sc_lv 10 signal 6 } 
	{ A_6_ce1 sc_out sc_logic 1 signal 6 } 
	{ A_6_we1 sc_out sc_logic 1 signal 6 } 
	{ A_6_d1 sc_out sc_lv 32 signal 6 } 
	{ A_7_address1 sc_out sc_lv 10 signal 7 } 
	{ A_7_ce1 sc_out sc_logic 1 signal 7 } 
	{ A_7_we1 sc_out sc_logic 1 signal 7 } 
	{ A_7_d1 sc_out sc_lv 32 signal 7 } 
	{ A_8_address1 sc_out sc_lv 10 signal 8 } 
	{ A_8_ce1 sc_out sc_logic 1 signal 8 } 
	{ A_8_we1 sc_out sc_logic 1 signal 8 } 
	{ A_8_d1 sc_out sc_lv 32 signal 8 } 
	{ A_9_address1 sc_out sc_lv 10 signal 9 } 
	{ A_9_ce1 sc_out sc_logic 1 signal 9 } 
	{ A_9_we1 sc_out sc_logic 1 signal 9 } 
	{ A_9_d1 sc_out sc_lv 32 signal 9 } 
	{ A_10_address1 sc_out sc_lv 10 signal 10 } 
	{ A_10_ce1 sc_out sc_logic 1 signal 10 } 
	{ A_10_we1 sc_out sc_logic 1 signal 10 } 
	{ A_10_d1 sc_out sc_lv 32 signal 10 } 
	{ A_11_address1 sc_out sc_lv 10 signal 11 } 
	{ A_11_ce1 sc_out sc_logic 1 signal 11 } 
	{ A_11_we1 sc_out sc_logic 1 signal 11 } 
	{ A_11_d1 sc_out sc_lv 32 signal 11 } 
	{ A_12_address1 sc_out sc_lv 10 signal 12 } 
	{ A_12_ce1 sc_out sc_logic 1 signal 12 } 
	{ A_12_we1 sc_out sc_logic 1 signal 12 } 
	{ A_12_d1 sc_out sc_lv 32 signal 12 } 
	{ A_13_address1 sc_out sc_lv 10 signal 13 } 
	{ A_13_ce1 sc_out sc_logic 1 signal 13 } 
	{ A_13_we1 sc_out sc_logic 1 signal 13 } 
	{ A_13_d1 sc_out sc_lv 32 signal 13 } 
	{ A_14_address1 sc_out sc_lv 10 signal 14 } 
	{ A_14_ce1 sc_out sc_logic 1 signal 14 } 
	{ A_14_we1 sc_out sc_logic 1 signal 14 } 
	{ A_14_d1 sc_out sc_lv 32 signal 14 } 
	{ A_15_address1 sc_out sc_lv 10 signal 15 } 
	{ A_15_ce1 sc_out sc_logic 1 signal 15 } 
	{ A_15_we1 sc_out sc_logic 1 signal 15 } 
	{ A_15_d1 sc_out sc_lv 32 signal 15 } 
	{ stream_in_TDATA sc_in sc_lv 32 signal 16 } 
	{ stream_in_TREADY sc_out sc_logic 1 inacc 19 } 
	{ stream_in_TKEEP sc_in sc_lv 4 signal 17 } 
	{ stream_in_TSTRB sc_in sc_lv 4 signal 18 } 
	{ stream_in_TLAST sc_in sc_lv 1 signal 19 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "stream_in_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "stream_in_V_data_V", "role": "default" }} , 
 	{ "name": "A_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "A", "role": "address1" }} , 
 	{ "name": "A_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A", "role": "ce1" }} , 
 	{ "name": "A_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A", "role": "we1" }} , 
 	{ "name": "A_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A", "role": "d1" }} , 
 	{ "name": "A_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "A_1", "role": "address1" }} , 
 	{ "name": "A_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A_1", "role": "ce1" }} , 
 	{ "name": "A_1_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A_1", "role": "we1" }} , 
 	{ "name": "A_1_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_1", "role": "d1" }} , 
 	{ "name": "A_2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "A_2", "role": "address1" }} , 
 	{ "name": "A_2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A_2", "role": "ce1" }} , 
 	{ "name": "A_2_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A_2", "role": "we1" }} , 
 	{ "name": "A_2_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_2", "role": "d1" }} , 
 	{ "name": "A_3_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "A_3", "role": "address1" }} , 
 	{ "name": "A_3_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A_3", "role": "ce1" }} , 
 	{ "name": "A_3_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A_3", "role": "we1" }} , 
 	{ "name": "A_3_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_3", "role": "d1" }} , 
 	{ "name": "A_4_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "A_4", "role": "address1" }} , 
 	{ "name": "A_4_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A_4", "role": "ce1" }} , 
 	{ "name": "A_4_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A_4", "role": "we1" }} , 
 	{ "name": "A_4_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_4", "role": "d1" }} , 
 	{ "name": "A_5_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "A_5", "role": "address1" }} , 
 	{ "name": "A_5_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A_5", "role": "ce1" }} , 
 	{ "name": "A_5_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A_5", "role": "we1" }} , 
 	{ "name": "A_5_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_5", "role": "d1" }} , 
 	{ "name": "A_6_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "A_6", "role": "address1" }} , 
 	{ "name": "A_6_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A_6", "role": "ce1" }} , 
 	{ "name": "A_6_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A_6", "role": "we1" }} , 
 	{ "name": "A_6_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_6", "role": "d1" }} , 
 	{ "name": "A_7_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "A_7", "role": "address1" }} , 
 	{ "name": "A_7_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A_7", "role": "ce1" }} , 
 	{ "name": "A_7_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A_7", "role": "we1" }} , 
 	{ "name": "A_7_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_7", "role": "d1" }} , 
 	{ "name": "A_8_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "A_8", "role": "address1" }} , 
 	{ "name": "A_8_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A_8", "role": "ce1" }} , 
 	{ "name": "A_8_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A_8", "role": "we1" }} , 
 	{ "name": "A_8_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_8", "role": "d1" }} , 
 	{ "name": "A_9_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "A_9", "role": "address1" }} , 
 	{ "name": "A_9_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A_9", "role": "ce1" }} , 
 	{ "name": "A_9_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A_9", "role": "we1" }} , 
 	{ "name": "A_9_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_9", "role": "d1" }} , 
 	{ "name": "A_10_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "A_10", "role": "address1" }} , 
 	{ "name": "A_10_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A_10", "role": "ce1" }} , 
 	{ "name": "A_10_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A_10", "role": "we1" }} , 
 	{ "name": "A_10_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_10", "role": "d1" }} , 
 	{ "name": "A_11_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "A_11", "role": "address1" }} , 
 	{ "name": "A_11_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A_11", "role": "ce1" }} , 
 	{ "name": "A_11_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A_11", "role": "we1" }} , 
 	{ "name": "A_11_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_11", "role": "d1" }} , 
 	{ "name": "A_12_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "A_12", "role": "address1" }} , 
 	{ "name": "A_12_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A_12", "role": "ce1" }} , 
 	{ "name": "A_12_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A_12", "role": "we1" }} , 
 	{ "name": "A_12_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_12", "role": "d1" }} , 
 	{ "name": "A_13_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "A_13", "role": "address1" }} , 
 	{ "name": "A_13_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A_13", "role": "ce1" }} , 
 	{ "name": "A_13_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A_13", "role": "we1" }} , 
 	{ "name": "A_13_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_13", "role": "d1" }} , 
 	{ "name": "A_14_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "A_14", "role": "address1" }} , 
 	{ "name": "A_14_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A_14", "role": "ce1" }} , 
 	{ "name": "A_14_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A_14", "role": "we1" }} , 
 	{ "name": "A_14_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_14", "role": "d1" }} , 
 	{ "name": "A_15_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "A_15", "role": "address1" }} , 
 	{ "name": "A_15_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A_15", "role": "ce1" }} , 
 	{ "name": "A_15_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A_15", "role": "we1" }} , 
 	{ "name": "A_15_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_15", "role": "d1" }} , 
 	{ "name": "stream_in_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "stream_in_V_data_V", "role": "default" }} , 
 	{ "name": "stream_in_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "stream_in_V_last_V", "role": "default" }} , 
 	{ "name": "stream_in_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "stream_in_V_keep_V", "role": "default" }} , 
 	{ "name": "stream_in_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "stream_in_V_strb_V", "role": "default" }} , 
 	{ "name": "stream_in_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "stream_in_V_last_V", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
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
		stream_in_V_last_V {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "16387", "Max" : "16387"}
	, {"Name" : "Interval", "Min" : "16387", "Max" : "16387"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	A { ap_memory {  { A_address1 MemPortADDR2 1 10 }  { A_ce1 MemPortCE2 1 1 }  { A_we1 MemPortWE2 1 1 }  { A_d1 MemPortDIN2 1 32 } } }
	A_1 { ap_memory {  { A_1_address1 MemPortADDR2 1 10 }  { A_1_ce1 MemPortCE2 1 1 }  { A_1_we1 MemPortWE2 1 1 }  { A_1_d1 MemPortDIN2 1 32 } } }
	A_2 { ap_memory {  { A_2_address1 MemPortADDR2 1 10 }  { A_2_ce1 MemPortCE2 1 1 }  { A_2_we1 MemPortWE2 1 1 }  { A_2_d1 MemPortDIN2 1 32 } } }
	A_3 { ap_memory {  { A_3_address1 MemPortADDR2 1 10 }  { A_3_ce1 MemPortCE2 1 1 }  { A_3_we1 MemPortWE2 1 1 }  { A_3_d1 MemPortDIN2 1 32 } } }
	A_4 { ap_memory {  { A_4_address1 MemPortADDR2 1 10 }  { A_4_ce1 MemPortCE2 1 1 }  { A_4_we1 MemPortWE2 1 1 }  { A_4_d1 MemPortDIN2 1 32 } } }
	A_5 { ap_memory {  { A_5_address1 MemPortADDR2 1 10 }  { A_5_ce1 MemPortCE2 1 1 }  { A_5_we1 MemPortWE2 1 1 }  { A_5_d1 MemPortDIN2 1 32 } } }
	A_6 { ap_memory {  { A_6_address1 MemPortADDR2 1 10 }  { A_6_ce1 MemPortCE2 1 1 }  { A_6_we1 MemPortWE2 1 1 }  { A_6_d1 MemPortDIN2 1 32 } } }
	A_7 { ap_memory {  { A_7_address1 MemPortADDR2 1 10 }  { A_7_ce1 MemPortCE2 1 1 }  { A_7_we1 MemPortWE2 1 1 }  { A_7_d1 MemPortDIN2 1 32 } } }
	A_8 { ap_memory {  { A_8_address1 MemPortADDR2 1 10 }  { A_8_ce1 MemPortCE2 1 1 }  { A_8_we1 MemPortWE2 1 1 }  { A_8_d1 MemPortDIN2 1 32 } } }
	A_9 { ap_memory {  { A_9_address1 MemPortADDR2 1 10 }  { A_9_ce1 MemPortCE2 1 1 }  { A_9_we1 MemPortWE2 1 1 }  { A_9_d1 MemPortDIN2 1 32 } } }
	A_10 { ap_memory {  { A_10_address1 MemPortADDR2 1 10 }  { A_10_ce1 MemPortCE2 1 1 }  { A_10_we1 MemPortWE2 1 1 }  { A_10_d1 MemPortDIN2 1 32 } } }
	A_11 { ap_memory {  { A_11_address1 MemPortADDR2 1 10 }  { A_11_ce1 MemPortCE2 1 1 }  { A_11_we1 MemPortWE2 1 1 }  { A_11_d1 MemPortDIN2 1 32 } } }
	A_12 { ap_memory {  { A_12_address1 MemPortADDR2 1 10 }  { A_12_ce1 MemPortCE2 1 1 }  { A_12_we1 MemPortWE2 1 1 }  { A_12_d1 MemPortDIN2 1 32 } } }
	A_13 { ap_memory {  { A_13_address1 MemPortADDR2 1 10 }  { A_13_ce1 MemPortCE2 1 1 }  { A_13_we1 MemPortWE2 1 1 }  { A_13_d1 MemPortDIN2 1 32 } } }
	A_14 { ap_memory {  { A_14_address1 MemPortADDR2 1 10 }  { A_14_ce1 MemPortCE2 1 1 }  { A_14_we1 MemPortWE2 1 1 }  { A_14_d1 MemPortDIN2 1 32 } } }
	A_15 { ap_memory {  { A_15_address1 MemPortADDR2 1 10 }  { A_15_ce1 MemPortCE2 1 1 }  { A_15_we1 MemPortWE2 1 1 }  { A_15_d1 MemPortDIN2 1 32 } } }
	stream_in_V_data_V { axis {  { stream_in_TVALID in_vld 0 1 }  { stream_in_TDATA in_data 0 32 } } }
	stream_in_V_keep_V { axis {  { stream_in_TKEEP in_data 0 4 } } }
	stream_in_V_strb_V { axis {  { stream_in_TSTRB in_data 0 4 } } }
	stream_in_V_last_V { axis {  { stream_in_TREADY in_acc 1 1 }  { stream_in_TLAST in_data 0 1 } } }
}
